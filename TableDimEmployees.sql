--HAGAMOS MAS JOVVEN A LA GENTE Y REDUZCAMOS LA ANTIGUEDAD DE LABORAR EN LA EMPRESA


--BEGIN TRAN 
	--UPDATE Employees SET
	--BirthDate = DATEADD (year, 30, BirthDate), 
	--HireDate = DATEADD (year, 20, HireDate);
	--ROLLBACK;
--COMMIT;

USE DWNorthWind
IF ISNULL(OBJECT_ID ('DimEmployees', 'U'), 0) >0
	DROP TABLE dbo.DimEmployees;
USE NorthWind

SELECT 
	e.EmployeeID, e.LastName, e.FirstName, e.Title, e.TitleOfCourtesy,
	CONCAT(e.TitleOfCourtesy,' ', e.FirstName, ' ', e.LastName) AS EmployeeFullName, 
	e.BirthDate, 
	DATEDIFF(MONTH, e.BirthDate, GETDATE()) / 12 AS Edad,
	e.HireDate,
	DATEDIFF(MONTH, e.HireDate, GETDATE()) / 12 AS Antig‹edad,
	e.City, ISNULL(e.Region, 'N/A' ) AS Region, e.Country,
	CASE ISNULL (e.ReportsTo, -1)
		WHEN -1 THEN 'N/A'
	else
	CONCAT(e2.TitleOfCourtesy,' ', e2.FirstName, ' ', e2.LastName) 
	end AS ReportsToFullName, 
	'' AS [EstratificacionEdad],
	'' AS [EstratificacionAntiguedad]
	INTO DWNorthWind.dbo.DimEmployees
FROM     Employees e
	LEFT OUTER JOIN Employees e2
	ON e.ReportsTo = e2.EmployeeID;