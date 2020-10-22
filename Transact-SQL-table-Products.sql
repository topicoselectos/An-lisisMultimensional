USE [DWNorthWind]
GO

if isnull(OBJECT_ID('DimProducts', 'U'), 0) > 0
	drop table dbo.DimProducts;
use NorthWind
/****** Object:  Table [dbo].[DimProducts]    Script Date: 10/22/2020 5:28:04 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimProducts](
	[ProductID] [int] NOT NULL,
	[ProductName] [nvarchar](40) NOT NULL,
	[CompanyName] [nvarchar](40) NOT NULL,
	[City] [nvarchar](15) NULL,
	[Region] [nvarchar](15) NOT NULL,
	[Country] [nvarchar](15) NULL,
	[CategoryName] [nvarchar](15) NOT NULL,
	[QuantityPerUnit] [nvarchar](20) NULL,
	[UnitPrice] [money] NULL,
	[UnitsInStock] [smallint] NULL,
	[UnitsOnOrder] [smallint] NULL,
	[ReorderLevel] [smallint] NULL,
	[Discontinued] [bit] NOT NULL,
	[EstratificacionUnitPrice] [varchar](50) NOT NULL,
	[EstratificacionUnitsInStock] [varchar](50) NOT NULL,
	[EstratificacionUnitsOnOrder] [varchar](50) NOT NULL,
	[EstratificacionReorderLevel] [varchar](50) NOT NULL
) ON [PRIMARY]
GO


