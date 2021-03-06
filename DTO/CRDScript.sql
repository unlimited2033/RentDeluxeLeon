USE [CarRentDeluxeDB]
GO
/****** Object:  Schema [Branch]    Script Date: 04-Aug-19 23:15:05 ******/
CREATE SCHEMA [Branch]
GO
/****** Object:  Schema [Location]    Script Date: 04-Aug-19 23:15:05 ******/
CREATE SCHEMA [Location]
GO
/****** Object:  Schema [Order]    Script Date: 04-Aug-19 23:15:05 ******/
CREATE SCHEMA [Order]
GO
/****** Object:  Schema [Person]    Script Date: 04-Aug-19 23:15:05 ******/
CREATE SCHEMA [Person]
GO
/****** Object:  Schema [User]    Script Date: 04-Aug-19 23:15:05 ******/
CREATE SCHEMA [User]
GO
/****** Object:  Schema [Validation]    Script Date: 04-Aug-19 23:15:05 ******/
CREATE SCHEMA [Validation]
GO
/****** Object:  Schema [Vehicle]    Script Date: 04-Aug-19 23:15:05 ******/
CREATE SCHEMA [Vehicle]
GO
/****** Object:  Table [Branch].[Branches]    Script Date: 04-Aug-19 23:15:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Branch].[Branches](
	[BranchID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](32) NOT NULL,
	[AddressID] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[RowGUID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Branches] PRIMARY KEY CLUSTERED 
(
	[BranchID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Location].[Addresses]    Script Date: 04-Aug-19 23:15:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Location].[Addresses](
	[AddressID] [int] IDENTITY(1,1) NOT NULL,
	[State] [nvarchar](32) NOT NULL,
	[City] [nvarchar](32) NOT NULL,
	[Street] [nvarchar](32) NULL,
	[HomeNumber] [int] NULL,
	[ApartmentNumber] [int] NULL,
	[Entrance] [nchar](1) NULL,
	[ZipCode] [int] NULL,
	[GpsCoordinatesID] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[RowGUID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Addresses] PRIMARY KEY CLUSTERED 
(
	[AddressID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Location].[GpsCoordinates]    Script Date: 04-Aug-19 23:15:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Location].[GpsCoordinates](
	[GpsCoordinatesID] [int] IDENTITY(1,1) NOT NULL,
	[Latitude] [decimal](9, 6) NOT NULL,
	[Longitude] [decimal](9, 6) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[RowGUID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Locations] PRIMARY KEY CLUSTERED 
(
	[GpsCoordinatesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Order].[Orders]    Script Date: 04-Aug-19 23:15:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Order].[Orders](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NOT NULL,
	[ActualEndDate] [date] NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[TotalPrice] [decimal](18, 2) NULL,
	[UserID] [int] NOT NULL,
	[VehicleID] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[RowGUID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Person].[Persons]    Script Date: 04-Aug-19 23:15:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Person].[Persons](
	[PersonID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](64) NOT NULL,
	[LastName] [nvarchar](64) NOT NULL,
	[Gender] [char](1) NOT NULL,
	[Birthday] [date] NULL,
	[IdCardNum] [nvarchar](16) NOT NULL,
	[Email] [nvarchar](256) NOT NULL,
	[PicturePath] [nvarchar](256) NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[RowGUID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Persons] PRIMARY KEY CLUSTERED 
(
	[PersonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [User].[UserRoles]    Script Date: 04-Aug-19 23:15:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [User].[UserRoles](
	[UserRoleID] [int] IDENTITY(1,1) NOT NULL,
	[SystemName] [varchar](16) NOT NULL,
	[Name] [nvarchar](32) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[RowGUID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_UserRoles] PRIMARY KEY CLUSTERED 
(
	[UserRoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [User].[Users]    Script Date: 04-Aug-19 23:15:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [User].[Users](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](32) NOT NULL,
	[Password] [char](64) NOT NULL,
	[UserRoleID] [int] NOT NULL,
	[PersonID] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[RowGUID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Vehicle].[CarClasses]    Script Date: 04-Aug-19 23:15:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Vehicle].[CarClasses](
	[CarClassID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](32) NOT NULL,
	[DailyPrice] [int] NOT NULL,
	[DelayDailyPrice] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[RowGUID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_CarClasses] PRIMARY KEY CLUSTERED 
(
	[CarClassID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Vehicle].[GearTypes]    Script Date: 04-Aug-19 23:15:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Vehicle].[GearTypes](
	[GearTypeID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](32) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[RowGUID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_GearTypes] PRIMARY KEY CLUSTERED 
(
	[GearTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Vehicle].[VehicleManufacturers]    Script Date: 04-Aug-19 23:15:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Vehicle].[VehicleManufacturers](
	[VehicleManufacturerID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](32) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[RowGUID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Manufacturers] PRIMARY KEY CLUSTERED 
(
	[VehicleManufacturerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Vehicle].[VehicleModels]    Script Date: 04-Aug-19 23:15:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Vehicle].[VehicleModels](
	[VehicleModelID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](32) NOT NULL,
	[ManufacturerID] [int] NOT NULL,
	[VehicleTypeID] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[RowGUID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Models] PRIMARY KEY CLUSTERED 
(
	[VehicleModelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Vehicle].[Vehicles]    Script Date: 04-Aug-19 23:15:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Vehicle].[Vehicles](
	[VehicleID] [int] IDENTITY(1,1) NOT NULL,
	[VehicleNumber] [nvarchar](16) NOT NULL,
	[ManufactureDate] [date] NOT NULL,
	[Mileage] [int] NOT NULL,
	[IsProper] [bit] NOT NULL,
	[IsAvailable] [bit] NOT NULL,
	[AtBranchID] [int] NULL,
	[CarClassID] [int] NOT NULL,
	[GearTypeID] [int] NOT NULL,
	[ModelID] [int] NOT NULL,
	[PicturePath] [nvarchar](256) NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[RowGUID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Vehicles] PRIMARY KEY CLUSTERED 
(
	[VehicleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Vehicle].[VehicleTypes]    Script Date: 04-Aug-19 23:15:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Vehicle].[VehicleTypes](
	[VehicleTypeID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](32) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[RowGUID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_VehicleTypes] PRIMARY KEY CLUSTERED 
(
	[VehicleTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [Branch].[Branches] ON 

INSERT [Branch].[Branches] ([BranchID], [Name], [AddressID], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (1, N'רחובות', 1, 1, CAST(N'2019-05-12T23:34:51.090' AS DateTime), CAST(N'2019-05-12T23:34:51.090' AS DateTime), N'fb2e344a-3337-4a40-a3e7-a38c7f8982bd')
INSERT [Branch].[Branches] ([BranchID], [Name], [AddressID], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (2, N'קרית שמונה', 2, 1, CAST(N'2019-05-12T23:34:51.090' AS DateTime), CAST(N'2019-05-12T23:34:51.090' AS DateTime), N'0b3aab0d-6389-4f41-bcc5-f4fa34dfc462')
INSERT [Branch].[Branches] ([BranchID], [Name], [AddressID], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (5, N'מצפה רמון', 5, 1, CAST(N'2019-05-12T23:34:51.090' AS DateTime), CAST(N'2019-05-12T23:34:51.090' AS DateTime), N'4e103560-eb6b-4c41-9bef-9691f07327dc')
SET IDENTITY_INSERT [Branch].[Branches] OFF
SET IDENTITY_INSERT [Location].[Addresses] ON 

INSERT [Location].[Addresses] ([AddressID], [State], [City], [Street], [HomeNumber], [ApartmentNumber], [Entrance], [ZipCode], [GpsCoordinatesID], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (1, N'ישראל', N'רחובות', N'הלל יעקב', 6, 5, N'א', 7640217, 1, 1, CAST(N'2019-05-12T23:37:35.173' AS DateTime), CAST(N'2019-05-12T23:37:35.173' AS DateTime), N'd966da20-2492-4c03-8478-dc38a452374d')
INSERT [Location].[Addresses] ([AddressID], [State], [City], [Street], [HomeNumber], [ApartmentNumber], [Entrance], [ZipCode], [GpsCoordinatesID], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (2, N'ישראל', N'קריית שמונה', N'מלחמת ששת הימים', 66, NULL, NULL, 1160166, 2, 1, CAST(N'2019-05-12T23:37:35.173' AS DateTime), CAST(N'2019-05-12T23:37:35.173' AS DateTime), N'c9123afd-e3f1-4d37-adee-c4aef48ac0aa')
INSERT [Location].[Addresses] ([AddressID], [State], [City], [Street], [HomeNumber], [ApartmentNumber], [Entrance], [ZipCode], [GpsCoordinatesID], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (5, N'ישראל', N'מצפה רמון', N'נחל ניצנה', 33, NULL, NULL, 8060000, 3, 1, CAST(N'2019-05-12T23:37:35.173' AS DateTime), CAST(N'2019-05-12T23:37:35.173' AS DateTime), N'00a8e178-74df-494d-8548-e66c38934eba')
SET IDENTITY_INSERT [Location].[Addresses] OFF
SET IDENTITY_INSERT [Location].[GpsCoordinates] ON 

INSERT [Location].[GpsCoordinates] ([GpsCoordinatesID], [Latitude], [Longitude], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (1, CAST(31.891502 AS Decimal(9, 6)), CAST(34.795036 AS Decimal(9, 6)), 1, CAST(N'2019-05-12T23:39:16.653' AS DateTime), CAST(N'2019-05-12T23:39:16.653' AS DateTime), N'336a5ec6-487f-4514-9b3f-568c547bf516')
INSERT [Location].[GpsCoordinates] ([GpsCoordinatesID], [Latitude], [Longitude], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (2, CAST(33.206641 AS Decimal(9, 6)), CAST(35.564993 AS Decimal(9, 6)), 1, CAST(N'2019-05-12T23:39:16.653' AS DateTime), CAST(N'2019-05-12T23:39:16.653' AS DateTime), N'd33352e4-2298-4320-aa7c-4da77c1e0237')
INSERT [Location].[GpsCoordinates] ([GpsCoordinatesID], [Latitude], [Longitude], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (3, CAST(30.616853 AS Decimal(9, 6)), CAST(34.797759 AS Decimal(9, 6)), 1, CAST(N'2019-05-12T23:39:16.653' AS DateTime), CAST(N'2019-05-12T23:39:16.653' AS DateTime), N'2aa2dedc-a3ab-4d04-8b66-d98e51340c69')
SET IDENTITY_INSERT [Location].[GpsCoordinates] OFF
SET IDENTITY_INSERT [Order].[Orders] ON 

INSERT [Order].[Orders] ([OrderID], [StartDate], [EndDate], [ActualEndDate], [Price], [TotalPrice], [UserID], [VehicleID], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (2, CAST(N'2019-08-04' AS Date), CAST(N'2019-08-06' AS Date), CAST(N'2019-08-03' AS Date), CAST(4000.00 AS Decimal(18, 2)), NULL, 1002, 1, 0, CAST(N'2019-08-02T22:23:11.093' AS DateTime), CAST(N'2019-08-03T17:22:01.897' AS DateTime), N'585f8962-b27e-459f-a48a-752d3bbcecaf')
INSERT [Order].[Orders] ([OrderID], [StartDate], [EndDate], [ActualEndDate], [Price], [TotalPrice], [UserID], [VehicleID], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (9, CAST(N'2019-08-04' AS Date), CAST(N'2019-08-10' AS Date), CAST(N'2019-08-03' AS Date), CAST(60000.00 AS Decimal(18, 2)), NULL, 5, 2, 0, CAST(N'2019-08-02T23:09:34.550' AS DateTime), CAST(N'2019-08-03T19:04:59.200' AS DateTime), N'fb39ebdd-0d28-497f-aefc-5493155da5ab')
INSERT [Order].[Orders] ([OrderID], [StartDate], [EndDate], [ActualEndDate], [Price], [TotalPrice], [UserID], [VehicleID], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (10, CAST(N'2019-08-02' AS Date), CAST(N'2019-08-03' AS Date), CAST(N'2019-08-03' AS Date), CAST(2000.00 AS Decimal(18, 2)), NULL, 1002, 1, 0, CAST(N'2019-08-03T16:01:48.710' AS DateTime), CAST(N'2019-08-03T17:22:00.853' AS DateTime), N'14dbd715-8cb4-4486-9c5f-6cbccabad2f9')
INSERT [Order].[Orders] ([OrderID], [StartDate], [EndDate], [ActualEndDate], [Price], [TotalPrice], [UserID], [VehicleID], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (11, CAST(N'2019-08-03' AS Date), CAST(N'2019-08-04' AS Date), CAST(N'2019-08-03' AS Date), CAST(2000.00 AS Decimal(18, 2)), NULL, 1002, 1, 0, CAST(N'2019-08-03T16:20:24.980' AS DateTime), CAST(N'2019-08-03T19:04:58.567' AS DateTime), N'83a5a7c1-16d8-4951-b8ce-d8366474ac14')
INSERT [Order].[Orders] ([OrderID], [StartDate], [EndDate], [ActualEndDate], [Price], [TotalPrice], [UserID], [VehicleID], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (12, CAST(N'2019-08-03' AS Date), CAST(N'2019-08-04' AS Date), CAST(N'2019-08-04' AS Date), CAST(2000.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), 1002, 1, 1, CAST(N'2019-08-03T16:32:14.523' AS DateTime), CAST(N'2019-08-04T19:42:42.630' AS DateTime), N'2b4c0ef4-19b1-450b-a9bc-5d5182489c25')
INSERT [Order].[Orders] ([OrderID], [StartDate], [EndDate], [ActualEndDate], [Price], [TotalPrice], [UserID], [VehicleID], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (13, CAST(N'2019-08-03' AS Date), CAST(N'2019-08-04' AS Date), CAST(N'2019-08-03' AS Date), CAST(2000.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), 1002, 1, 1, CAST(N'2019-08-03T19:05:30.470' AS DateTime), CAST(N'2019-08-04T19:42:28.183' AS DateTime), N'f0897c2a-cda9-4fc6-b592-2f9f0391d922')
INSERT [Order].[Orders] ([OrderID], [StartDate], [EndDate], [ActualEndDate], [Price], [TotalPrice], [UserID], [VehicleID], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (14, CAST(N'2019-07-15' AS Date), CAST(N'2019-07-20' AS Date), CAST(N'2019-08-04' AS Date), CAST(50000.00 AS Decimal(18, 2)), CAST(275000.00 AS Decimal(18, 2)), 1002, 2, 1, CAST(N'2019-08-03T19:06:32.563' AS DateTime), CAST(N'2019-08-04T19:51:49.343' AS DateTime), N'f4b10b2d-c005-4572-91eb-36d5aaea6f16')
INSERT [Order].[Orders] ([OrderID], [StartDate], [EndDate], [ActualEndDate], [Price], [TotalPrice], [UserID], [VehicleID], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (15, CAST(N'2019-08-03' AS Date), CAST(N'2019-08-04' AS Date), CAST(N'2019-08-04' AS Date), CAST(2000.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), 1002, 1, 1, CAST(N'2019-08-03T19:16:16.097' AS DateTime), CAST(N'2019-08-04T19:52:13.720' AS DateTime), N'9ccb246c-2eb6-41c4-ab2b-951ae73a1cae')
INSERT [Order].[Orders] ([OrderID], [StartDate], [EndDate], [ActualEndDate], [Price], [TotalPrice], [UserID], [VehicleID], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (16, CAST(N'2019-08-01' AS Date), CAST(N'2019-08-04' AS Date), CAST(N'2019-08-04' AS Date), CAST(30000.00 AS Decimal(18, 2)), CAST(30000.00 AS Decimal(18, 2)), 1009, 2, 1, CAST(N'2019-08-04T22:37:05.817' AS DateTime), CAST(N'2019-08-04T22:45:47.363' AS DateTime), N'02bfd6ad-9257-41a8-b014-5402d3ed39a4')
INSERT [Order].[Orders] ([OrderID], [StartDate], [EndDate], [ActualEndDate], [Price], [TotalPrice], [UserID], [VehicleID], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (17, CAST(N'2019-08-01' AS Date), CAST(N'2019-08-02' AS Date), CAST(N'2019-08-04' AS Date), CAST(2000.00 AS Decimal(18, 2)), CAST(7000.00 AS Decimal(18, 2)), 3, 6, 1, CAST(N'2019-08-04T22:38:57.383' AS DateTime), CAST(N'2019-08-04T22:45:40.247' AS DateTime), N'c39ce191-7de3-4933-8eaf-c48d5531d55f')
INSERT [Order].[Orders] ([OrderID], [StartDate], [EndDate], [ActualEndDate], [Price], [TotalPrice], [UserID], [VehicleID], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (18, CAST(N'2019-08-02' AS Date), CAST(N'2019-08-04' AS Date), CAST(N'2019-08-04' AS Date), CAST(10000.00 AS Decimal(18, 2)), CAST(10000.00 AS Decimal(18, 2)), 5, 3, 1, CAST(N'2019-08-04T22:39:51.140' AS DateTime), CAST(N'2019-08-04T22:45:45.443' AS DateTime), N'c8592e1e-28d1-463c-b75e-e412a062e5b7')
INSERT [Order].[Orders] ([OrderID], [StartDate], [EndDate], [ActualEndDate], [Price], [TotalPrice], [UserID], [VehicleID], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (19, CAST(N'2019-08-02' AS Date), CAST(N'2019-08-04' AS Date), CAST(N'2019-08-04' AS Date), CAST(20000.00 AS Decimal(18, 2)), CAST(20000.00 AS Decimal(18, 2)), 1002, 5, 1, CAST(N'2019-08-04T22:40:39.670' AS DateTime), CAST(N'2019-08-04T22:45:43.767' AS DateTime), N'437e28ee-0b6d-45e2-99d3-90639b38f7ef')
INSERT [Order].[Orders] ([OrderID], [StartDate], [EndDate], [ActualEndDate], [Price], [TotalPrice], [UserID], [VehicleID], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (20, CAST(N'2019-08-02' AS Date), CAST(N'2019-08-04' AS Date), CAST(N'2019-08-04' AS Date), CAST(20000.00 AS Decimal(18, 2)), CAST(20000.00 AS Decimal(18, 2)), 1010, 7, 1, CAST(N'2019-08-04T22:41:16.043' AS DateTime), CAST(N'2019-08-04T22:45:42.163' AS DateTime), N'50511d50-02ad-48d5-9ac3-e4773018f672')
INSERT [Order].[Orders] ([OrderID], [StartDate], [EndDate], [ActualEndDate], [Price], [TotalPrice], [UserID], [VehicleID], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (21, CAST(N'2019-08-04' AS Date), CAST(N'2019-08-09' AS Date), NULL, CAST(50000.00 AS Decimal(18, 2)), NULL, 1009, 5, 1, CAST(N'2019-08-04T22:46:46.847' AS DateTime), CAST(N'2019-08-04T22:46:46.847' AS DateTime), N'8b42ee76-7cba-4479-b86d-293aefc40c2b')
INSERT [Order].[Orders] ([OrderID], [StartDate], [EndDate], [ActualEndDate], [Price], [TotalPrice], [UserID], [VehicleID], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (22, CAST(N'2019-08-04' AS Date), CAST(N'2019-09-03' AS Date), NULL, CAST(60000.00 AS Decimal(18, 2)), NULL, 3, 6, 1, CAST(N'2019-08-04T22:47:18.153' AS DateTime), CAST(N'2019-08-04T22:47:18.153' AS DateTime), N'cfcacf12-9dc5-436f-a273-051deb2486e5')
INSERT [Order].[Orders] ([OrderID], [StartDate], [EndDate], [ActualEndDate], [Price], [TotalPrice], [UserID], [VehicleID], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (23, CAST(N'2019-08-04' AS Date), CAST(N'2019-08-05' AS Date), NULL, CAST(10000.00 AS Decimal(18, 2)), NULL, 5, 7, 1, CAST(N'2019-08-04T22:47:37.563' AS DateTime), CAST(N'2019-08-04T22:47:37.563' AS DateTime), N'054d99b9-af73-4cca-aff0-9b9af18c8962')
INSERT [Order].[Orders] ([OrderID], [StartDate], [EndDate], [ActualEndDate], [Price], [TotalPrice], [UserID], [VehicleID], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (24, CAST(N'2019-08-04' AS Date), CAST(N'2019-08-24' AS Date), NULL, CAST(40000.00 AS Decimal(18, 2)), NULL, 1010, 8, 1, CAST(N'2019-08-04T22:48:28.783' AS DateTime), CAST(N'2019-08-04T22:48:28.783' AS DateTime), N'da301897-5c71-4e74-81a1-dd146909d53c')
INSERT [Order].[Orders] ([OrderID], [StartDate], [EndDate], [ActualEndDate], [Price], [TotalPrice], [UserID], [VehicleID], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (25, CAST(N'2019-08-04' AS Date), CAST(N'2019-08-09' AS Date), NULL, CAST(10000.00 AS Decimal(18, 2)), NULL, 1002, 1, 1, CAST(N'2019-08-04T22:49:13.137' AS DateTime), CAST(N'2019-08-04T22:49:13.137' AS DateTime), N'9741d88a-0615-49ea-bc18-55df32143d67')
SET IDENTITY_INSERT [Order].[Orders] OFF
SET IDENTITY_INSERT [Person].[Persons] ON 

INSERT [Person].[Persons] ([PersonID], [FirstName], [LastName], [Gender], [Birthday], [IdCardNum], [Email], [PicturePath], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (1, N'דונלד', N'טראמפ', N'm', CAST(N'1946-06-14' AS Date), N'777777777', N'donald@trump.com', N'/Bucket/Images/Avatars/Donald_Trump.png', 1, CAST(N'2019-05-12T23:41:16.643' AS DateTime), CAST(N'2019-05-12T23:41:16.643' AS DateTime), N'7b3a3f19-69aa-417e-8caa-f79257281768')
INSERT [Person].[Persons] ([PersonID], [FirstName], [LastName], [Gender], [Birthday], [IdCardNum], [Email], [PicturePath], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (2, N'לאון', N'ברנשטיין', N'm', CAST(N'1986-10-12' AS Date), N'306776063', N'unlimited.2013@gmail.com', N'/Bucket/Images/Avatars/42465c47-51cf-4fa2-9a41-77aa6f750353.jpeg', 1, CAST(N'2019-06-22T14:40:37.903' AS DateTime), CAST(N'2019-08-04T20:08:25.347' AS DateTime), N'cd77989e-4b3d-404d-a971-d1449abe3f61')
INSERT [Person].[Persons] ([PersonID], [FirstName], [LastName], [Gender], [Birthday], [IdCardNum], [Email], [PicturePath], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (3, N'ביבי', N'המלך', N'm', CAST(N'1949-10-21' AS Date), N'111222333', N'bibi@bibi.net.il', N'/Bucket/Images/Avatars/15c3e90e-b70b-4da7-aa07-3b39197476f3.jpeg', 1, CAST(N'2019-06-22T14:47:00.150' AS DateTime), CAST(N'2019-08-04T19:18:45.047' AS DateTime), N'8969b917-31df-42e3-b314-0093a6df7098')
INSERT [Person].[Persons] ([PersonID], [FirstName], [LastName], [Gender], [Birthday], [IdCardNum], [Email], [PicturePath], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (4, N'אלכסנדרה', N'זכרובה', N'f', CAST(N'1986-11-12' AS Date), N'123456789', N'alexandra@sasha.ru', NULL, 1, CAST(N'2019-06-22T15:08:00.080' AS DateTime), CAST(N'2019-06-22T15:08:00.080' AS DateTime), N'384de4ba-dbcb-4151-b917-dbacab25fbaf')
INSERT [Person].[Persons] ([PersonID], [FirstName], [LastName], [Gender], [Birthday], [IdCardNum], [Email], [PicturePath], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (5, N'ולדימיר', N'פוטין', N'm', CAST(N'1952-10-07' AS Date), N'123456789', N'putin@putin.ru', N'/Bucket/Images/Avatars/a76e8c9d-2288-49a6-bc51-a029c4704966.jpeg', 1, CAST(N'2019-06-22T15:12:10.270' AS DateTime), CAST(N'2019-08-04T19:20:15.727' AS DateTime), N'ba233c12-6c7d-4b17-b4a8-bfd15a51a9c8')
INSERT [Person].[Persons] ([PersonID], [FirstName], [LastName], [Gender], [Birthday], [IdCardNum], [Email], [PicturePath], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (6, N'בדיקה', N'בדיקה', N'm', CAST(N'1986-10-12' AS Date), N'123456789', N'test@test.co.il', NULL, 1, CAST(N'2019-06-22T15:24:56.483' AS DateTime), CAST(N'2019-07-07T21:19:25.240' AS DateTime), N'5cc161ae-0dca-4865-bdbf-f5a60b1a1a9a')
INSERT [Person].[Persons] ([PersonID], [FirstName], [LastName], [Gender], [Birthday], [IdCardNum], [Email], [PicturePath], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (7, N'בדיקה', N'בדיקה', N'm', CAST(N'1986-10-12' AS Date), N'123456789', N'test1@test.co.il', NULL, 1, CAST(N'2019-06-22T15:30:45.870' AS DateTime), CAST(N'2019-06-22T15:30:45.870' AS DateTime), N'efdaec89-31f9-46dc-a1a5-fc0b1c2e929c')
INSERT [Person].[Persons] ([PersonID], [FirstName], [LastName], [Gender], [Birthday], [IdCardNum], [Email], [PicturePath], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (8, N'בדיקה', N'בדיקה', N'm', CAST(N'1900-01-01' AS Date), N'123456789', N'test3@test.net', NULL, 1, CAST(N'2019-06-23T02:06:34.137' AS DateTime), CAST(N'2019-06-23T02:06:34.137' AS DateTime), N'3e5dec19-d805-4984-a33d-ab408043ef51')
INSERT [Person].[Persons] ([PersonID], [FirstName], [LastName], [Gender], [Birthday], [IdCardNum], [Email], [PicturePath], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (1002, N'גורדון', N'פרימאן', N'o', CAST(N'1976-05-05' AS Date), N'123456789', N'half@life.com', N'/Bucket/Images/Avatars/a3640fc2-8a6d-4639-a974-7dfcfd3f71ad.jpeg', 1, CAST(N'2019-07-05T23:22:06.013' AS DateTime), CAST(N'2019-08-04T19:10:33.283' AS DateTime), N'8e3a204f-831b-4ff6-b904-0f1ec14539d0')
INSERT [Person].[Persons] ([PersonID], [FirstName], [LastName], [Gender], [Birthday], [IdCardNum], [Email], [PicturePath], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (1003, N'test4', N'test4', N'o', CAST(N'1910-01-01' AS Date), N'123456789', N'test4@test4.co.il', NULL, 1, CAST(N'2019-07-06T17:32:36.067' AS DateTime), CAST(N'2019-07-06T17:32:36.067' AS DateTime), N'8a1a71b2-3f58-4dbe-b2df-ce39dcd3df5d')
INSERT [Person].[Persons] ([PersonID], [FirstName], [LastName], [Gender], [Birthday], [IdCardNum], [Email], [PicturePath], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (1004, N'test', N'test', N'o', CAST(N'1996-06-12' AS Date), N'123456789', N'test5@test.co.il', NULL, 1, CAST(N'2019-07-14T00:37:25.203' AS DateTime), CAST(N'2019-07-14T00:37:37.153' AS DateTime), N'a4952bb4-f5c3-4c80-ab7c-a6f786c81a72')
INSERT [Person].[Persons] ([PersonID], [FirstName], [LastName], [Gender], [Birthday], [IdCardNum], [Email], [PicturePath], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (1005, N'asd', N'asd', N'o', NULL, N'123456789', N'asd@asd.co.il', NULL, 1, CAST(N'2019-07-19T19:25:16.593' AS DateTime), CAST(N'2019-07-19T19:25:16.593' AS DateTime), N'cc9f9c84-900a-4427-b7f1-1fefad7e84be')
INSERT [Person].[Persons] ([PersonID], [FirstName], [LastName], [Gender], [Birthday], [IdCardNum], [Email], [PicturePath], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (1006, N'asd123', N'asd123', N'm', NULL, N'123123123', N'asd123@asd.co.il', NULL, 1, CAST(N'2019-07-19T19:37:58.527' AS DateTime), CAST(N'2019-08-04T19:09:08.113' AS DateTime), N'0c3d4127-f765-47ac-b6d7-4e2919a4fb5c')
INSERT [Person].[Persons] ([PersonID], [FirstName], [LastName], [Gender], [Birthday], [IdCardNum], [Email], [PicturePath], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (1007, N'asd1', N'1asd', N'f', CAST(N'1986-10-12' AS Date), N'123456878', N'asdqwe@asd.co.il', NULL, 1, CAST(N'2019-07-19T19:44:43.850' AS DateTime), CAST(N'2019-07-20T07:43:22.623' AS DateTime), N'5f16e73b-fecd-4e56-88c1-a04d126ecb2e')
INSERT [Person].[Persons] ([PersonID], [FirstName], [LastName], [Gender], [Birthday], [IdCardNum], [Email], [PicturePath], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (1008, N'ertert', N'ertert', N'o', CAST(N'1986-10-12' AS Date), N'789789789', N'test123@test12333.co.il', NULL, 1, CAST(N'2019-07-27T19:02:49.990' AS DateTime), CAST(N'2019-07-27T19:02:49.990' AS DateTime), N'9bc392f6-801e-419c-808b-df11a8656a39')
INSERT [Person].[Persons] ([PersonID], [FirstName], [LastName], [Gender], [Birthday], [IdCardNum], [Email], [PicturePath], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (1009, N'Michael', N'Schumacher', N'm', CAST(N'1969-01-03' AS Date), N'100100100', N'michael@schumacher.it', N'/Bucket/Images/Avatars/cef3dfc0-2835-4923-88b5-1d220126e9cd.jpeg', 1, CAST(N'2019-08-04T18:16:23.707' AS DateTime), CAST(N'2019-08-04T18:17:51.510' AS DateTime), N'fbaa9ed1-612a-498c-b02a-b017cf35c017')
INSERT [Person].[Persons] ([PersonID], [FirstName], [LastName], [Gender], [Birthday], [IdCardNum], [Email], [PicturePath], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (1010, N'Dragon', N'Queen', N'f', CAST(N'1909-09-04' AS Date), N'22222222', N'dragon@queen.drag', N'/Bucket/Images/Avatars/f2e8b8b3-50d2-4a2b-8dbe-b0c3bc225799.jpeg', 1, CAST(N'2019-08-04T18:54:47.290' AS DateTime), CAST(N'2019-08-04T19:07:08.997' AS DateTime), N'd49c3d16-9c4d-4a62-854e-f928e3990456')
SET IDENTITY_INSERT [Person].[Persons] OFF
SET IDENTITY_INSERT [User].[UserRoles] ON 

INSERT [User].[UserRoles] ([UserRoleID], [SystemName], [Name], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (1, N'nonUser', N'משתמש לא רשום', 1, CAST(N'2019-05-12T23:43:03.147' AS DateTime), CAST(N'2019-05-12T23:43:03.147' AS DateTime), N'5d971f79-2f66-4c14-955f-48746b079015')
INSERT [User].[UserRoles] ([UserRoleID], [SystemName], [Name], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (2, N'user', N'משתמש רשום', 1, CAST(N'2019-05-12T23:43:03.147' AS DateTime), CAST(N'2019-05-12T23:43:03.147' AS DateTime), N'936ad675-9f59-4d09-aa91-2d4ee187b6d0')
INSERT [User].[UserRoles] ([UserRoleID], [SystemName], [Name], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (3, N'employee', N'עובד', 1, CAST(N'2019-05-12T23:43:03.147' AS DateTime), CAST(N'2019-05-12T23:43:03.147' AS DateTime), N'66943d00-6dd7-4409-b4c0-48c8fdbae51f')
INSERT [User].[UserRoles] ([UserRoleID], [SystemName], [Name], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (4, N'manager', N'מנהל', 1, CAST(N'2019-05-12T23:43:03.147' AS DateTime), CAST(N'2019-05-12T23:43:03.147' AS DateTime), N'023a2e2b-ebb0-4d7a-8323-16b9bcc90f99')
SET IDENTITY_INSERT [User].[UserRoles] OFF
SET IDENTITY_INSERT [User].[Users] ON 

INSERT [User].[Users] ([UserID], [UserName], [Password], [UserRoleID], [PersonID], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (1, N'donald@trump.com', N'0beeedc7059f28fd951b1dd27280473f9cf6b115fcc05e594058b1200030a3ee', 4, 1, 1, CAST(N'2019-05-12T23:23:35.453' AS DateTime), CAST(N'2019-05-12T23:23:35.453' AS DateTime), N'2bd292ee-7514-4ec7-b0c9-7606b3b246b2')
INSERT [User].[Users] ([UserID], [UserName], [Password], [UserRoleID], [PersonID], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (2, N'unlimited.2013@gmail.com', N'54d5cb2d332dbdb4850293caae4559ce88b65163f1ea5d4e4b3ac49d772ded14', 3, 2, 1, CAST(N'2019-06-22T14:40:37.920' AS DateTime), CAST(N'2019-07-27T12:39:10.700' AS DateTime), N'b2c5bc18-2d83-46b5-b8d5-bc206898c945')
INSERT [User].[Users] ([UserID], [UserName], [Password], [UserRoleID], [PersonID], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (3, N'bibi@bibi.net.il', N'7bffe2b8ee82b03f4917fc4e9b4d84329b06aa5bd39ead28218aa6ed1f0b7c1b', 2, 3, 1, CAST(N'2019-06-22T14:47:00.160' AS DateTime), CAST(N'2019-08-04T18:11:31.273' AS DateTime), N'91bba024-0b91-4d00-9d52-c76c43722f86')
INSERT [User].[Users] ([UserID], [UserName], [Password], [UserRoleID], [PersonID], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (4, N'alexandra@sasha.ru', N'54d5cb2d332dbdb4850293caae4559ce88b65163f1ea5d4e4b3ac49d772ded14', 3, 4, 1, CAST(N'2019-06-22T15:08:00.090' AS DateTime), CAST(N'2019-06-22T15:08:00.090' AS DateTime), N'b5a2cf30-c211-469b-9576-259393dcd997')
INSERT [User].[Users] ([UserID], [UserName], [Password], [UserRoleID], [PersonID], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (5, N'putin@putin.ru', N'66555924d01202f77d324bffd67d27f295fd8180dc749b870f5bf25a79d1a30c', 2, 5, 1, CAST(N'2019-06-22T15:12:10.283' AS DateTime), CAST(N'2019-06-22T15:12:10.283' AS DateTime), N'b78c3088-450d-481e-b582-34ff63bdc171')
INSERT [User].[Users] ([UserID], [UserName], [Password], [UserRoleID], [PersonID], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (1002, N'half@life.com', N'a1564f1b0fde787f23d7a3404e42668e4219e78b834465a72dc1df1b7611b0c0', 2, 1002, 1, CAST(N'2019-07-05T23:22:06.033' AS DateTime), CAST(N'2019-08-04T19:10:33.283' AS DateTime), N'c4051231-9ec7-4a00-a1cf-ec300a5c999e')
INSERT [User].[Users] ([UserID], [UserName], [Password], [UserRoleID], [PersonID], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (1009, N'michael@schumacher.it', N'ee320d4bc68fbe3f0e7c928622191e61b471a25899a05aca65961640410b8e1c', 2, 1009, 1, CAST(N'2019-08-04T18:16:23.717' AS DateTime), CAST(N'2019-08-04T18:16:23.717' AS DateTime), N'663915a2-78f3-4d73-9064-28d91c6426e8')
INSERT [User].[Users] ([UserID], [UserName], [Password], [UserRoleID], [PersonID], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (1010, N'dragon@queen.drag', N'816c5c50d55152ed4c762f78548401ca590bcd792a811b3e8136ab2f804aeb52', 2, 1010, 1, CAST(N'2019-08-04T18:54:47.290' AS DateTime), CAST(N'2019-08-04T19:07:59.233' AS DateTime), N'09bf2e19-9cda-4a63-b2c6-b8615963a0a7')
SET IDENTITY_INSERT [User].[Users] OFF
SET IDENTITY_INSERT [Vehicle].[CarClasses] ON 

INSERT [Vehicle].[CarClasses] ([CarClassID], [Name], [DailyPrice], [DelayDailyPrice], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (1, N'A', 5000, 7000, 1, CAST(N'2019-07-23T22:02:24.470' AS DateTime), CAST(N'2019-07-23T22:23:37.673' AS DateTime), N'060fffe3-5358-4689-b598-fecf00308e84')
INSERT [Vehicle].[CarClasses] ([CarClassID], [Name], [DailyPrice], [DelayDailyPrice], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (2, N'S', 10000, 15000, 1, CAST(N'2019-07-23T22:20:35.590' AS DateTime), CAST(N'2019-07-23T22:24:36.263' AS DateTime), N'12155ed3-d5ba-42a9-b5af-35d13f17a7bf')
INSERT [Vehicle].[CarClasses] ([CarClassID], [Name], [DailyPrice], [DelayDailyPrice], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (3, N'B', 3000, 4500, 1, CAST(N'2019-07-23T22:27:52.950' AS DateTime), CAST(N'2019-07-23T22:27:52.950' AS DateTime), N'a7dd9cce-9f92-4101-8805-ec45e8916228')
INSERT [Vehicle].[CarClasses] ([CarClassID], [Name], [DailyPrice], [DelayDailyPrice], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (4, N'C', 2000, 2500, 1, CAST(N'2019-07-23T22:33:21.127' AS DateTime), CAST(N'2019-08-04T19:37:20.713' AS DateTime), N'6374396b-a028-4055-ad11-67169b9f73d6')
INSERT [Vehicle].[CarClasses] ([CarClassID], [Name], [DailyPrice], [DelayDailyPrice], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (5, N'D', 1500, 1750, 1, CAST(N'2019-07-23T22:33:56.010' AS DateTime), CAST(N'2019-07-23T22:33:56.010' AS DateTime), N'5ddfc92d-fb96-4fe5-b5fc-d6389544789a')
INSERT [Vehicle].[CarClasses] ([CarClassID], [Name], [DailyPrice], [DelayDailyPrice], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (6, N'X', 666, 666, 0, CAST(N'2019-08-04T20:38:41.490' AS DateTime), CAST(N'2019-08-04T20:41:27.237' AS DateTime), N'4fab4601-29f4-4c69-9f06-facc3c009241')
SET IDENTITY_INSERT [Vehicle].[CarClasses] OFF
SET IDENTITY_INSERT [Vehicle].[GearTypes] ON 

INSERT [Vehicle].[GearTypes] ([GearTypeID], [Name], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (1, N'ידני', 1, CAST(N'2019-07-21T21:24:17.003' AS DateTime), CAST(N'2019-07-23T20:42:15.563' AS DateTime), N'88127dfe-06f6-4cd7-a2e5-ff484ff38961')
INSERT [Vehicle].[GearTypes] ([GearTypeID], [Name], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (2, N'אוטומט', 1, CAST(N'2019-07-21T21:49:57.707' AS DateTime), CAST(N'2019-07-23T20:46:14.153' AS DateTime), N'f3ddff60-2f73-4f2c-a251-2e7ac56a2d3d')
INSERT [Vehicle].[GearTypes] ([GearTypeID], [Name], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (3, N'רציף', 1, CAST(N'2019-07-21T22:00:09.173' AS DateTime), CAST(N'2019-07-23T20:46:27.143' AS DateTime), N'81627735-7cb6-4dc8-9873-b1403412a335')
INSERT [Vehicle].[GearTypes] ([GearTypeID], [Name], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (4, N'רובוטי', 1, CAST(N'2019-07-21T22:04:43.170' AS DateTime), CAST(N'2019-07-23T20:55:48.110' AS DateTime), N'ad6f3f6e-a9df-43d5-97c8-1a7a06b3ba46')
INSERT [Vehicle].[GearTypes] ([GearTypeID], [Name], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (5, N'מצמד כפול', 1, CAST(N'2019-07-21T22:07:46.533' AS DateTime), CAST(N'2019-07-23T20:56:08.470' AS DateTime), N'e60c0f40-2f95-4eba-beaa-b9dbd2657cee')
SET IDENTITY_INSERT [Vehicle].[GearTypes] OFF
SET IDENTITY_INSERT [Vehicle].[VehicleManufacturers] ON 

INSERT [Vehicle].[VehicleManufacturers] ([VehicleManufacturerID], [Name], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (1, N'פרארי', 1, CAST(N'2019-07-26T19:18:21.000' AS DateTime), CAST(N'2019-07-27T01:58:25.607' AS DateTime), N'a5529f8c-4762-43ae-86fc-551c92e5cc78')
INSERT [Vehicle].[VehicleManufacturers] ([VehicleManufacturerID], [Name], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (2, N'סובארו', 1, CAST(N'2019-07-27T01:04:26.533' AS DateTime), CAST(N'2019-08-04T20:29:29.887' AS DateTime), N'cb45291c-09f4-4650-bb07-3047507c8afe')
INSERT [Vehicle].[VehicleManufacturers] ([VehicleManufacturerID], [Name], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (3, N'בוגאטי', 1, CAST(N'2019-08-04T20:30:23.347' AS DateTime), CAST(N'2019-08-04T20:30:23.347' AS DateTime), N'a7cc0df8-14a7-4c14-857b-aa291eff637b')
INSERT [Vehicle].[VehicleManufacturers] ([VehicleManufacturerID], [Name], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (4, N'ב.מ.וו', 1, CAST(N'2019-08-04T20:31:00.560' AS DateTime), CAST(N'2019-08-04T20:31:16.197' AS DateTime), N'f825cdb1-cd81-4100-9308-4aa8a264ba21')
INSERT [Vehicle].[VehicleManufacturers] ([VehicleManufacturerID], [Name], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (5, N'ניסאן', 1, CAST(N'2019-08-04T20:31:36.860' AS DateTime), CAST(N'2019-08-04T20:31:36.860' AS DateTime), N'7ccb44fa-132c-4df3-9350-e5c8e682afb3')
INSERT [Vehicle].[VehicleManufacturers] ([VehicleManufacturerID], [Name], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (6, N'אאודי', 1, CAST(N'2019-08-04T20:31:59.963' AS DateTime), CAST(N'2019-08-04T20:31:59.963' AS DateTime), N'4d174957-ae8d-459b-b69d-d470b76b3df0')
INSERT [Vehicle].[VehicleManufacturers] ([VehicleManufacturerID], [Name], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (7, N'למבורגיני', 1, CAST(N'2019-08-04T20:32:15.880' AS DateTime), CAST(N'2019-08-04T20:32:15.880' AS DateTime), N'dee1b390-bc99-4e7a-a2e7-53f213c1aa9a')
INSERT [Vehicle].[VehicleManufacturers] ([VehicleManufacturerID], [Name], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (8, N'דודג''', 1, CAST(N'2019-08-04T20:32:45.430' AS DateTime), CAST(N'2019-08-04T20:32:45.430' AS DateTime), N'fe8f7f9a-5f71-440e-a16a-5c13df626002')
SET IDENTITY_INSERT [Vehicle].[VehicleManufacturers] OFF
SET IDENTITY_INSERT [Vehicle].[VehicleModels] ON 

INSERT [Vehicle].[VehicleModels] ([VehicleModelID], [Name], [ManufacturerID], [VehicleTypeID], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (1, N'לה פרארי', 1, 4, 1, CAST(N'2019-07-26T20:53:03.390' AS DateTime), CAST(N'2019-08-04T20:37:35.180' AS DateTime), N'3998fff2-7d13-44fa-b7b7-48062a9fa896')
INSERT [Vehicle].[VehicleModels] ([VehicleModelID], [Name], [ManufacturerID], [VehicleTypeID], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (2, N'אימפרזה STI', 2, 1, 1, CAST(N'2019-07-27T01:06:04.390' AS DateTime), CAST(N'2019-07-27T01:06:04.390' AS DateTime), N'fb6c63cb-b5ea-4ca8-a297-59456f1bb170')
INSERT [Vehicle].[VehicleModels] ([VehicleModelID], [Name], [ManufacturerID], [VehicleTypeID], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (3, N'448', 1, 3, 1, CAST(N'2019-08-04T21:38:54.413' AS DateTime), CAST(N'2019-08-04T21:38:54.413' AS DateTime), N'2a0120e7-bad8-44b9-a95b-074e37dce1ce')
INSERT [Vehicle].[VehicleModels] ([VehicleModelID], [Name], [ManufacturerID], [VehicleTypeID], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (4, N'צ''ארג''ר SRT', 8, 2, 1, CAST(N'2019-08-04T21:40:02.020' AS DateTime), CAST(N'2019-08-04T21:41:04.360' AS DateTime), N'1f230a51-1448-450d-ad3b-dc037818daf5')
INSERT [Vehicle].[VehicleModels] ([VehicleModelID], [Name], [ManufacturerID], [VehicleTypeID], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (5, N'GTR', 5, 2, 1, CAST(N'2019-08-04T21:41:33.187' AS DateTime), CAST(N'2019-08-04T21:41:33.187' AS DateTime), N'48410879-e6a1-4768-b4a4-45da28869697')
INSERT [Vehicle].[VehicleModels] ([VehicleModelID], [Name], [ManufacturerID], [VehicleTypeID], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (6, N'I8', 4, 2, 1, CAST(N'2019-08-04T21:41:52.737' AS DateTime), CAST(N'2019-08-04T21:41:52.737' AS DateTime), N'8c35259c-0ca8-47be-b41e-d48b254694f1')
INSERT [Vehicle].[VehicleModels] ([VehicleModelID], [Name], [ManufacturerID], [VehicleTypeID], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (7, N'R8', 6, 3, 1, CAST(N'2019-08-04T21:42:17.973' AS DateTime), CAST(N'2019-08-04T21:42:17.973' AS DateTime), N'bdfb9cac-1aa6-4fb6-8986-2215d94e8d07')
INSERT [Vehicle].[VehicleModels] ([VehicleModelID], [Name], [ManufacturerID], [VehicleTypeID], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (8, N'אבנטדור', 7, 4, 1, CAST(N'2019-08-04T21:42:43.153' AS DateTime), CAST(N'2019-08-04T21:42:43.153' AS DateTime), N'3be36c4c-5ef3-4d8a-947b-b20861dc3376')
INSERT [Vehicle].[VehicleModels] ([VehicleModelID], [Name], [ManufacturerID], [VehicleTypeID], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (9, N'שירון', 3, 4, 1, CAST(N'2019-08-04T21:43:11.313' AS DateTime), CAST(N'2019-08-04T21:43:36.013' AS DateTime), N'517b22ea-9201-4719-8b6b-8a1d61337279')
SET IDENTITY_INSERT [Vehicle].[VehicleModels] OFF
SET IDENTITY_INSERT [Vehicle].[Vehicles] ON 

INSERT [Vehicle].[Vehicles] ([VehicleID], [VehicleNumber], [ManufactureDate], [Mileage], [IsProper], [IsAvailable], [AtBranchID], [CarClassID], [GearTypeID], [ModelID], [PicturePath], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (1, N'5869367', CAST(N'2009-11-10' AS Date), 140000, 1, 0, 1, 4, 1, 2, N'/Bucket/Images/Vehicles/ada0398b-4a81-4c2e-aeae-b4932d2a57c2.jpeg', 1, CAST(N'2019-07-27T01:52:55.493' AS DateTime), CAST(N'2019-08-04T22:49:13.160' AS DateTime), N'41acdb10-204f-43f5-85a2-bce948b94f09')
INSERT [Vehicle].[Vehicles] ([VehicleID], [VehicleNumber], [ManufactureDate], [Mileage], [IsProper], [IsAvailable], [AtBranchID], [CarClassID], [GearTypeID], [ModelID], [PicturePath], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (2, N'9999999', CAST(N'2019-05-04' AS Date), 11111, 1, 1, 2, 2, 5, 1, N'/Bucket/Images/Vehicles/5c8aafd3-fa17-439e-958a-120fcdbf2d6d.jpeg', 1, CAST(N'2019-07-27T18:55:35.577' AS DateTime), CAST(N'2019-08-04T22:45:47.363' AS DateTime), N'3e61682a-74c7-43ec-8618-ec2013b3b27a')
INSERT [Vehicle].[Vehicles] ([VehicleID], [VehicleNumber], [ManufactureDate], [Mileage], [IsProper], [IsAvailable], [AtBranchID], [CarClassID], [GearTypeID], [ModelID], [PicturePath], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (3, N'7777777', CAST(N'2015-05-05' AS Date), 1230, 1, 1, 1, 1, 5, 7, N'/Bucket/Images/Vehicles/cd99892f-9832-4172-b079-516fb590d8f2.png', 1, CAST(N'2019-08-04T21:45:03.790' AS DateTime), CAST(N'2019-08-04T22:45:45.440' AS DateTime), N'4502cc4d-ef4c-4cac-b9a3-ef961ae317ac')
INSERT [Vehicle].[Vehicles] ([VehicleID], [VehicleNumber], [ManufactureDate], [Mileage], [IsProper], [IsAvailable], [AtBranchID], [CarClassID], [GearTypeID], [ModelID], [PicturePath], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (4, N'88888888', CAST(N'2016-06-06' AS Date), 6600, 1, 1, 2, 3, 3, 6, N'/Bucket/Images/Vehicles/dedde311-0275-48a8-bad9-fbabee952cd1.png', 1, CAST(N'2019-08-04T21:48:21.037' AS DateTime), CAST(N'2019-08-04T22:00:33.550' AS DateTime), N'18facfc4-e1ab-4870-a0b9-83b0d2879d9f')
INSERT [Vehicle].[Vehicles] ([VehicleID], [VehicleNumber], [ManufactureDate], [Mileage], [IsProper], [IsAvailable], [AtBranchID], [CarClassID], [GearTypeID], [ModelID], [PicturePath], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (5, N'11111111', CAST(N'2019-01-01' AS Date), 111, 1, 0, 5, 2, 5, 9, N'/Bucket/Images/Vehicles/99c66491-bb3b-44d2-8dd1-3b7d8c411755.png', 1, CAST(N'2019-08-04T22:01:24.040' AS DateTime), CAST(N'2019-08-04T22:46:46.880' AS DateTime), N'b9a148d4-205a-4a3d-8fbe-66326d23cd25')
INSERT [Vehicle].[Vehicles] ([VehicleID], [VehicleNumber], [ManufactureDate], [Mileage], [IsProper], [IsAvailable], [AtBranchID], [CarClassID], [GearTypeID], [ModelID], [PicturePath], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (6, N'4444444', CAST(N'2014-09-09' AS Date), 444, 1, 0, 2, 4, 2, 4, N'/Bucket/Images/Vehicles/2b755eb2-316d-4f43-9940-2f8431e9ac1e.png', 1, CAST(N'2019-08-04T22:03:13.327' AS DateTime), CAST(N'2019-08-04T22:52:36.480' AS DateTime), N'e0dec61a-9334-4906-930c-fe6138444823')
INSERT [Vehicle].[Vehicles] ([VehicleID], [VehicleNumber], [ManufactureDate], [Mileage], [IsProper], [IsAvailable], [AtBranchID], [CarClassID], [GearTypeID], [ModelID], [PicturePath], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (7, N'71717171', CAST(N'2014-11-11' AS Date), 717, 1, 0, 1, 2, 5, 8, N'/Bucket/Images/Vehicles/373aa416-d169-4b71-898d-2f4dfbd4a6f8.png', 1, CAST(N'2019-08-04T22:26:58.983' AS DateTime), CAST(N'2019-08-04T22:52:30.460' AS DateTime), N'504c7998-b47d-43fd-973c-763cff7f4c1a')
INSERT [Vehicle].[Vehicles] ([VehicleID], [VehicleNumber], [ManufactureDate], [Mileage], [IsProper], [IsAvailable], [AtBranchID], [CarClassID], [GearTypeID], [ModelID], [PicturePath], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (8, N'12332112', CAST(N'2018-08-08' AS Date), 888, 1, 0, 2, 4, 5, 5, N'/Bucket/Images/Vehicles/f7f1e3b6-509a-4af0-843f-0da8a03f0c0b.png', 1, CAST(N'2019-08-04T22:28:09.713' AS DateTime), CAST(N'2019-08-04T22:52:23.463' AS DateTime), N'6e1bdb90-0dc1-4418-b98d-812f76ceea0e')
INSERT [Vehicle].[Vehicles] ([VehicleID], [VehicleNumber], [ManufactureDate], [Mileage], [IsProper], [IsAvailable], [AtBranchID], [CarClassID], [GearTypeID], [ModelID], [PicturePath], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (9, N'44844844', CAST(N'2017-03-03' AS Date), 448, 1, 1, 5, 1, 5, 3, N'/Bucket/Images/Vehicles/a304005d-d7d7-46cf-a314-7ae4f422481f.png', 1, CAST(N'2019-08-04T22:29:43.637' AS DateTime), CAST(N'2019-08-04T22:53:55.277' AS DateTime), N'89d1428b-bf21-495c-a62e-80af2406c600')
SET IDENTITY_INSERT [Vehicle].[Vehicles] OFF
SET IDENTITY_INSERT [Vehicle].[VehicleTypes] ON 

INSERT [Vehicle].[VehicleTypes] ([VehicleTypeID], [Name], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (1, N'משפחתי', 1, CAST(N'2019-07-26T20:11:25.550' AS DateTime), CAST(N'2019-08-04T20:38:05.643' AS DateTime), N'02e2184e-0242-4912-80ea-7951f516b115')
INSERT [Vehicle].[VehicleTypes] ([VehicleTypeID], [Name], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (2, N'ספורט', 1, CAST(N'2019-07-26T20:12:06.323' AS DateTime), CAST(N'2019-07-26T20:12:06.323' AS DateTime), N'dbe77b8a-7963-4f83-bc92-289c60c4b08b')
INSERT [Vehicle].[VehicleTypes] ([VehicleTypeID], [Name], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (3, N'סופר ספורט', 1, CAST(N'2019-07-26T20:12:21.587' AS DateTime), CAST(N'2019-07-26T20:12:21.587' AS DateTime), N'b6d9b93c-b152-4269-b8d9-d4c677b4230a')
INSERT [Vehicle].[VehicleTypes] ([VehicleTypeID], [Name], [IsActive], [CreatedDate], [ModifiedDate], [RowGUID]) VALUES (4, N'סופר ספורט דלוקס', 1, CAST(N'2019-07-27T02:03:15.673' AS DateTime), CAST(N'2019-07-27T02:03:15.673' AS DateTime), N'9ae099fb-26a8-4827-8a6d-c89e5fe87759')
SET IDENTITY_INSERT [Vehicle].[VehicleTypes] OFF
ALTER TABLE [Branch].[Branches] ADD  CONSTRAINT [DF_Branches_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [Branch].[Branches] ADD  CONSTRAINT [DF__Branches__Create__4F47C5E3]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [Branch].[Branches] ADD  CONSTRAINT [DF__Branches__Modifi__503BEA1C]  DEFAULT (getdate()) FOR [ModifiedDate]
GO
ALTER TABLE [Branch].[Branches] ADD  CONSTRAINT [DF__Branches__RowGUI__51300E55]  DEFAULT (newid()) FOR [RowGUID]
GO
ALTER TABLE [Location].[Addresses] ADD  CONSTRAINT [DF_Addresses_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [Location].[Addresses] ADD  CONSTRAINT [DF__Addresses__Creat__59C55456]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [Location].[Addresses] ADD  CONSTRAINT [DF__Addresses__Modif__5AB9788F]  DEFAULT (getdate()) FOR [ModifiedDate]
GO
ALTER TABLE [Location].[Addresses] ADD  CONSTRAINT [DF__Addresses__RowGU__5BAD9CC8]  DEFAULT (newid()) FOR [RowGUID]
GO
ALTER TABLE [Location].[GpsCoordinates] ADD  CONSTRAINT [DF_GpsCoordinates_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [Location].[GpsCoordinates] ADD  CONSTRAINT [DF__GpsCoordi__Creat__6442E2C9]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [Location].[GpsCoordinates] ADD  CONSTRAINT [DF__GpsCoordi__Modif__65370702]  DEFAULT (getdate()) FOR [ModifiedDate]
GO
ALTER TABLE [Location].[GpsCoordinates] ADD  CONSTRAINT [DF__GpsCoordi__RowGU__662B2B3B]  DEFAULT (newid()) FOR [RowGUID]
GO
ALTER TABLE [Order].[Orders] ADD  CONSTRAINT [DF_Orders_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [Order].[Orders] ADD  CONSTRAINT [DF__Orders__CreatedD__6DCC4D03]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [Order].[Orders] ADD  CONSTRAINT [DF__Orders__Modified__6EC0713C]  DEFAULT (getdate()) FOR [ModifiedDate]
GO
ALTER TABLE [Order].[Orders] ADD  CONSTRAINT [DF__Orders__RowGUID__6FB49575]  DEFAULT (newid()) FOR [RowGUID]
GO
ALTER TABLE [Person].[Persons] ADD  CONSTRAINT [DF_Persons_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [Person].[Persons] ADD  CONSTRAINT [DF__Persons__Created__7849DB76]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [Person].[Persons] ADD  CONSTRAINT [DF__Persons__Modifie__793DFFAF]  DEFAULT (getdate()) FOR [ModifiedDate]
GO
ALTER TABLE [Person].[Persons] ADD  CONSTRAINT [DF__Persons__RowGUID__7A3223E8]  DEFAULT (newid()) FOR [RowGUID]
GO
ALTER TABLE [User].[UserRoles] ADD  CONSTRAINT [DF_UserRoles_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [User].[UserRoles] ADD  CONSTRAINT [DF__UserRoles__Creat__01D345B0]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [User].[UserRoles] ADD  CONSTRAINT [DF__UserRoles__Modif__02C769E9]  DEFAULT (getdate()) FOR [ModifiedDate]
GO
ALTER TABLE [User].[UserRoles] ADD  CONSTRAINT [DF__UserRoles__RowGU__03BB8E22]  DEFAULT (newid()) FOR [RowGUID]
GO
ALTER TABLE [User].[Users] ADD  CONSTRAINT [DF_Users_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [User].[Users] ADD  CONSTRAINT [DF_Users_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [User].[Users] ADD  CONSTRAINT [DF_Users_ModifiedDate]  DEFAULT (getdate()) FOR [ModifiedDate]
GO
ALTER TABLE [User].[Users] ADD  CONSTRAINT [DF_Users_RowGUID]  DEFAULT (newid()) FOR [RowGUID]
GO
ALTER TABLE [Vehicle].[CarClasses] ADD  CONSTRAINT [DF_CarClasses_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [Vehicle].[CarClasses] ADD  CONSTRAINT [DF__CarClasse__Creat__0B5CAFEA]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [Vehicle].[CarClasses] ADD  CONSTRAINT [DF__CarClasse__Modif__0C50D423]  DEFAULT (getdate()) FOR [ModifiedDate]
GO
ALTER TABLE [Vehicle].[CarClasses] ADD  CONSTRAINT [DF__CarClasse__RowGU__0D44F85C]  DEFAULT (newid()) FOR [RowGUID]
GO
ALTER TABLE [Vehicle].[GearTypes] ADD  CONSTRAINT [DF_GearTypes_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [Vehicle].[GearTypes] ADD  CONSTRAINT [DF__GearTypes__Creat__14E61A24]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [Vehicle].[GearTypes] ADD  CONSTRAINT [DF__GearTypes__Modif__15DA3E5D]  DEFAULT (getdate()) FOR [ModifiedDate]
GO
ALTER TABLE [Vehicle].[GearTypes] ADD  CONSTRAINT [DF__GearTypes__RowGU__16CE6296]  DEFAULT (newid()) FOR [RowGUID]
GO
ALTER TABLE [Vehicle].[VehicleManufacturers] ADD  CONSTRAINT [DF_VehicleManufacturers_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [Vehicle].[VehicleManufacturers] ADD  CONSTRAINT [DF__VehicleMa__Creat__1E6F845E]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [Vehicle].[VehicleManufacturers] ADD  CONSTRAINT [DF__VehicleMa__Modif__1F63A897]  DEFAULT (getdate()) FOR [ModifiedDate]
GO
ALTER TABLE [Vehicle].[VehicleManufacturers] ADD  CONSTRAINT [DF__VehicleMa__RowGU__2057CCD0]  DEFAULT (newid()) FOR [RowGUID]
GO
ALTER TABLE [Vehicle].[VehicleModels] ADD  CONSTRAINT [DF_VehicleModels_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [Vehicle].[VehicleModels] ADD  CONSTRAINT [DF__VehicleMo__Creat__27F8EE98]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [Vehicle].[VehicleModels] ADD  CONSTRAINT [DF__VehicleMo__Modif__28ED12D1]  DEFAULT (getdate()) FOR [ModifiedDate]
GO
ALTER TABLE [Vehicle].[VehicleModels] ADD  CONSTRAINT [DF__VehicleMo__RowGU__29E1370A]  DEFAULT (newid()) FOR [RowGUID]
GO
ALTER TABLE [Vehicle].[Vehicles] ADD  CONSTRAINT [DF_Vehicles_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [Vehicle].[Vehicles] ADD  CONSTRAINT [DF__Vehicles__Create__336AA144]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [Vehicle].[Vehicles] ADD  CONSTRAINT [DF__Vehicles__Modifi__345EC57D]  DEFAULT (getdate()) FOR [ModifiedDate]
GO
ALTER TABLE [Vehicle].[Vehicles] ADD  CONSTRAINT [DF__Vehicles__RowGUI__3552E9B6]  DEFAULT (newid()) FOR [RowGUID]
GO
ALTER TABLE [Vehicle].[VehicleTypes] ADD  CONSTRAINT [DF_VehicleTypes_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [Vehicle].[VehicleTypes] ADD  CONSTRAINT [DF__VehicleTy__Creat__40C49C62]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [Vehicle].[VehicleTypes] ADD  CONSTRAINT [DF__VehicleTy__Modif__41B8C09B]  DEFAULT (getdate()) FOR [ModifiedDate]
GO
ALTER TABLE [Vehicle].[VehicleTypes] ADD  CONSTRAINT [DF__VehicleTy__RowGU__42ACE4D4]  DEFAULT (newid()) FOR [RowGUID]
GO
ALTER TABLE [Branch].[Branches]  WITH CHECK ADD  CONSTRAINT [FK_Branches_Addresses] FOREIGN KEY([AddressID])
REFERENCES [Location].[Addresses] ([AddressID])
GO
ALTER TABLE [Branch].[Branches] CHECK CONSTRAINT [FK_Branches_Addresses]
GO
ALTER TABLE [Location].[Addresses]  WITH CHECK ADD  CONSTRAINT [FK_Addresses_Addresses] FOREIGN KEY([GpsCoordinatesID])
REFERENCES [Location].[GpsCoordinates] ([GpsCoordinatesID])
GO
ALTER TABLE [Location].[Addresses] CHECK CONSTRAINT [FK_Addresses_Addresses]
GO
ALTER TABLE [Order].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Users] FOREIGN KEY([UserID])
REFERENCES [User].[Users] ([UserID])
GO
ALTER TABLE [Order].[Orders] CHECK CONSTRAINT [FK_Orders_Users]
GO
ALTER TABLE [Order].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Vehicles] FOREIGN KEY([VehicleID])
REFERENCES [Vehicle].[Vehicles] ([VehicleID])
GO
ALTER TABLE [Order].[Orders] CHECK CONSTRAINT [FK_Orders_Vehicles]
GO
ALTER TABLE [User].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Persons] FOREIGN KEY([PersonID])
REFERENCES [Person].[Persons] ([PersonID])
GO
ALTER TABLE [User].[Users] CHECK CONSTRAINT [FK_Users_Persons]
GO
ALTER TABLE [User].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_UserRoles] FOREIGN KEY([UserRoleID])
REFERENCES [User].[UserRoles] ([UserRoleID])
GO
ALTER TABLE [User].[Users] CHECK CONSTRAINT [FK_Users_UserRoles]
GO
ALTER TABLE [Vehicle].[VehicleModels]  WITH CHECK ADD  CONSTRAINT [FK_Models_VehicleManufacturers] FOREIGN KEY([ManufacturerID])
REFERENCES [Vehicle].[VehicleManufacturers] ([VehicleManufacturerID])
GO
ALTER TABLE [Vehicle].[VehicleModels] CHECK CONSTRAINT [FK_Models_VehicleManufacturers]
GO
ALTER TABLE [Vehicle].[VehicleModels]  WITH CHECK ADD  CONSTRAINT [FK_Models_VehicleTypes] FOREIGN KEY([VehicleTypeID])
REFERENCES [Vehicle].[VehicleTypes] ([VehicleTypeID])
GO
ALTER TABLE [Vehicle].[VehicleModels] CHECK CONSTRAINT [FK_Models_VehicleTypes]
GO
ALTER TABLE [Vehicle].[Vehicles]  WITH CHECK ADD  CONSTRAINT [FK_Vehicles_Branches] FOREIGN KEY([AtBranchID])
REFERENCES [Branch].[Branches] ([BranchID])
GO
ALTER TABLE [Vehicle].[Vehicles] CHECK CONSTRAINT [FK_Vehicles_Branches]
GO
ALTER TABLE [Vehicle].[Vehicles]  WITH CHECK ADD  CONSTRAINT [FK_Vehicles_CarClasses] FOREIGN KEY([CarClassID])
REFERENCES [Vehicle].[CarClasses] ([CarClassID])
GO
ALTER TABLE [Vehicle].[Vehicles] CHECK CONSTRAINT [FK_Vehicles_CarClasses]
GO
ALTER TABLE [Vehicle].[Vehicles]  WITH CHECK ADD  CONSTRAINT [FK_Vehicles_GearTypes] FOREIGN KEY([GearTypeID])
REFERENCES [Vehicle].[GearTypes] ([GearTypeID])
GO
ALTER TABLE [Vehicle].[Vehicles] CHECK CONSTRAINT [FK_Vehicles_GearTypes]
GO
ALTER TABLE [Vehicle].[Vehicles]  WITH CHECK ADD  CONSTRAINT [FK_Vehicles_Models] FOREIGN KEY([ModelID])
REFERENCES [Vehicle].[VehicleModels] ([VehicleModelID])
GO
ALTER TABLE [Vehicle].[Vehicles] CHECK CONSTRAINT [FK_Vehicles_Models]
GO
