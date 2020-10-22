SELECT 
	e.EmployeeID, e.LastName, e.FirstName, e.Title, e.TitleOfCourtesy,
	CONCAT(e.TitleOfCourtesy,' ', e.FirstName, ' ', e.LastName) AS EmployeeFullName, 
	e.BirthDate, e.HireDate, e.City, ISNULL(e.Region, 'N/A' ) AS Region, e.Country,
	CONCAT(e2.TitleOfCourtesy,' ', e2.FirstName, ' ', e2.LastName) AS ReportsToFullName, 
	'' AS [EstratificacionEdad],
	'' AS [EstratificacionAntiguedad]
FROM     Employees e
	INNER JOIN Employees e2
	ON e.ReportsTo = e2.EmployeeID