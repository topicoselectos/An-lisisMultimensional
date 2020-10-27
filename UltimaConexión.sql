use DWNorthWind
begin tran
	update DimProducts
		set EstratificacionUnitPrice = (
		select b.[Desc] from Estratos b
		where b.Tipo = 'ProductUnitPrice'
		AND b.Desde <= DimProducts.UnitPrice
		AND DimProducts.UnitPrice < b.Hasta);
	update FactOrderDetails
		set EstratoQuantity = (
		select b.[Desc] from Estratos b
		where b.Tipo = 'OrderDetailsQuantity'
		AND b.Desde <= FactOrderDetails.Quantity
		AND FactOrderDetails.Quantity < b.Hasta);
commit