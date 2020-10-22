use DWNorthWind
if isnull(OBJECT_ID('DimProducts', 'U'), 0) > 0
	drop table dbo.DimProducts;
use NorthWind
SELECT Products.ProductID, Products.ProductName, Suppliers.CompanyName, 
	Suppliers.City, ISNULL(Suppliers.Region, N'N/A') AS Region, 
	Suppliers.Country, Categories.CategoryName, Products.QuantityPerUnit,
	Products.UnitPrice, Products.UnitsInStock, Products.UnitsOnOrder, 
	Products.ReorderLevel, Products.Discontinued,
	'' EstratificacionUnitPrice,
	'' EstratificacionUnitsInStock,
	'' EstratificacionUnitsOnOrder,
	'' EstratificacionReorderLevel
INTO DWNorthWind.dbo.DimProducts
FROM Products 
	INNER JOIN
     Categories ON Products.CategoryID = Categories.CategoryID 
	 INNER JOIN
     Suppliers ON Products.SupplierID = Suppliers.SupplierID