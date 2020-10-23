USE [DWNorthWind]
GO

IF ISNULL(OBJECT_ID('DimEmployees', 'U'), 0 ) >0
	DROP TABLE dbo.DimEmployees;

/****** Object:  Table [dbo].[DimEmployees]    Script Date: 10/23/2020 6:00:22 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimEmployees](
	[EmployeeID] [int] NOT NULL,
	[LastName] [nvarchar](20) NOT NULL,
	[FirstName] [nvarchar](10) NOT NULL,
	[Title] [nvarchar](30) NULL,
	[TitleOfCourtesy] [nvarchar](25) NULL,
	[EmployeeFullName] [nvarchar](57) NOT NULL,
	[BirthDate] [datetime] NULL,
	[Edad] [int] NULL,
	[HireDate] [datetime] NULL,
	[Antig‹edad] [int] NULL,
	[City] [nvarchar](15) NULL,
	[Region] [nvarchar](15) NOT NULL,
	[Country] [nvarchar](15) NULL,
	[ReportsToFullName] [nvarchar](60) NOT NULL,
	[EstratificacionEdad] [varchar](50) NOT NULL,
	[EstratificacionAntiguedad] [varchar](50) NOT NULL
) ON [PRIMARY]
GO


