USE [DB_Scotland]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 1/6/2022 14:54:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[IdCourse] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](32) NOT NULL,
	[Credits] [int] NOT NULL,
	[StartTime] [time](0) NOT NULL,
	[EndTime] [time](0) NOT NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[IdCourse] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group]    Script Date: 1/6/2022 14:54:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group](
	[IdGroup] [int] IDENTITY(1,1) NOT NULL,
	[IdCourse] [int] NOT NULL,
	[StudentsQty] [int] NOT NULL,
 CONSTRAINT [PK_Group] PRIMARY KEY CLUSTERED 
(
	[IdGroup] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InventoryA]    Script Date: 1/6/2022 14:54:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InventoryA](
	[idIventory] [int] IDENTITY(1,1) NOT NULL,
	[idWhisky] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[price] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idIventory] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InventoryB]    Script Date: 1/6/2022 14:54:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InventoryB](
	[idIventory] [int] IDENTITY(1,1) NOT NULL,
	[idWhisky] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[price] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idIventory] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InventoryC]    Script Date: 1/6/2022 14:54:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InventoryC](
	[idIventory] [int] IDENTITY(1,1) NOT NULL,
	[idWhisky] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[price] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idIventory] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Professors]    Script Date: 1/6/2022 14:54:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Professors](
	[IdProfessor] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](16) NOT NULL,
	[LastName] [varchar](16) NOT NULL,
	[License] [varchar](32) NOT NULL,
	[Age] [int] NOT NULL,
	[Active] [int] NOT NULL,
 CONSTRAINT [PK_Professors] PRIMARY KEY CLUSTERED 
(
	[IdProfessor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProfXGroup]    Script Date: 1/6/2022 14:54:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProfXGroup](
	[IdProfXGroup] [int] IDENTITY(1,1) NOT NULL,
	[IdProfessor] [int] NOT NULL,
	[IdGroup] [int] NOT NULL,
 CONSTRAINT [PK_ProfXGroup] PRIMARY KEY CLUSTERED 
(
	[IdProfXGroup] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Review]    Script Date: 1/6/2022 14:54:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Review](
	[idReview] [int] IDENTITY(1,1) NOT NULL,
	[idWhisky] [int] NOT NULL,
	[idUser] [int] NOT NULL,
	[description] [varchar](64) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idReview] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sale]    Script Date: 1/6/2022 14:54:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sale](
	[idSale] [int] IDENTITY(1,1) NOT NULL,
	[idStore] [int] NOT NULL,
	[idUser] [int] NOT NULL,
	[idShipping] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idSale] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shipping]    Script Date: 1/6/2022 14:54:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shipping](
	[idShipping] [int] IDENTITY(1,1) NOT NULL,
	[priceXKm] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idShipping] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Store]    Script Date: 1/6/2022 14:54:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Store](
	[idStore] [int] IDENTITY(1,1) NOT NULL,
	[location] [int] NOT NULL,
	[dimensions] [geography] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idStore] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subscription]    Script Date: 1/6/2022 14:54:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subscription](
	[idSubscription] [int] IDENTITY(1,1) NOT NULL,
	[idWhisky] [int] NOT NULL,
	[idUser] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idSubscription] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 1/6/2022 14:54:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[idSupplier] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](16) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idSupplier] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 1/6/2022 14:54:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[idUser] [int] IDENTITY(1,1) NOT NULL,
	[administrator] [int] NOT NULL,
	[name] [varchar](16) NOT NULL,
	[lastName] [varchar](16) NOT NULL,
	[username] [varchar](32) NOT NULL,
	[password] [varchar](32) NOT NULL,
	[email] [varchar](32) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Whisky]    Script Date: 1/6/2022 14:54:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Whisky](
	[idWhisky] [int] IDENTITY(1,1) NOT NULL,
	[idWhiskyType] [int] NOT NULL,
	[idSupplier] [int] NOT NULL,
	[name] [varchar](16) NOT NULL,
	[aged] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idWhisky] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WhiskyType]    Script Date: 1/6/2022 14:54:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WhiskyType](
	[idWhiskyType] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](16) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idWhiskyType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WhiskyXSale]    Script Date: 1/6/2022 14:54:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WhiskyXSale](
	[idWhiskyXSale] [int] IDENTITY(1,1) NOT NULL,
	[idWhisky] [int] NOT NULL,
	[idSale] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idWhiskyXSale] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Group]  WITH CHECK ADD  CONSTRAINT [FK_Group_Course] FOREIGN KEY([IdCourse])
REFERENCES [dbo].[Course] ([IdCourse])
GO
ALTER TABLE [dbo].[Group] CHECK CONSTRAINT [FK_Group_Course]
GO
ALTER TABLE [dbo].[InventoryA]  WITH CHECK ADD FOREIGN KEY([idWhisky])
REFERENCES [dbo].[Whisky] ([idWhisky])
GO
ALTER TABLE [dbo].[InventoryA]  WITH CHECK ADD FOREIGN KEY([idWhisky])
REFERENCES [dbo].[Whisky] ([idWhisky])
GO
ALTER TABLE [dbo].[InventoryB]  WITH CHECK ADD FOREIGN KEY([idWhisky])
REFERENCES [dbo].[Whisky] ([idWhisky])
GO
ALTER TABLE [dbo].[InventoryB]  WITH CHECK ADD FOREIGN KEY([idWhisky])
REFERENCES [dbo].[Whisky] ([idWhisky])
GO
ALTER TABLE [dbo].[InventoryC]  WITH CHECK ADD FOREIGN KEY([idWhisky])
REFERENCES [dbo].[Whisky] ([idWhisky])
GO
ALTER TABLE [dbo].[InventoryC]  WITH CHECK ADD FOREIGN KEY([idWhisky])
REFERENCES [dbo].[Whisky] ([idWhisky])
GO
ALTER TABLE [dbo].[ProfXGroup]  WITH CHECK ADD  CONSTRAINT [FK_ProfXGroup_Group] FOREIGN KEY([IdGroup])
REFERENCES [dbo].[Group] ([IdGroup])
GO
ALTER TABLE [dbo].[ProfXGroup] CHECK CONSTRAINT [FK_ProfXGroup_Group]
GO
ALTER TABLE [dbo].[ProfXGroup]  WITH CHECK ADD  CONSTRAINT [FK_ProfXGroup_Professors] FOREIGN KEY([IdProfessor])
REFERENCES [dbo].[Professors] ([IdProfessor])
GO
ALTER TABLE [dbo].[ProfXGroup] CHECK CONSTRAINT [FK_ProfXGroup_Professors]
GO
ALTER TABLE [dbo].[Review]  WITH CHECK ADD FOREIGN KEY([idUser])
REFERENCES [dbo].[Users] ([idUser])
GO
ALTER TABLE [dbo].[Review]  WITH CHECK ADD FOREIGN KEY([idUser])
REFERENCES [dbo].[Users] ([idUser])
GO
ALTER TABLE [dbo].[Review]  WITH CHECK ADD FOREIGN KEY([idWhisky])
REFERENCES [dbo].[Whisky] ([idWhisky])
GO
ALTER TABLE [dbo].[Review]  WITH CHECK ADD FOREIGN KEY([idWhisky])
REFERENCES [dbo].[Whisky] ([idWhisky])
GO
ALTER TABLE [dbo].[Sale]  WITH CHECK ADD FOREIGN KEY([idShipping])
REFERENCES [dbo].[Shipping] ([idShipping])
GO
ALTER TABLE [dbo].[Sale]  WITH CHECK ADD FOREIGN KEY([idShipping])
REFERENCES [dbo].[Shipping] ([idShipping])
GO
ALTER TABLE [dbo].[Sale]  WITH CHECK ADD FOREIGN KEY([idStore])
REFERENCES [dbo].[Store] ([idStore])
GO
ALTER TABLE [dbo].[Sale]  WITH CHECK ADD FOREIGN KEY([idStore])
REFERENCES [dbo].[Store] ([idStore])
GO
ALTER TABLE [dbo].[Sale]  WITH CHECK ADD FOREIGN KEY([idUser])
REFERENCES [dbo].[Users] ([idUser])
GO
ALTER TABLE [dbo].[Sale]  WITH CHECK ADD FOREIGN KEY([idUser])
REFERENCES [dbo].[Users] ([idUser])
GO
ALTER TABLE [dbo].[Subscription]  WITH CHECK ADD FOREIGN KEY([idUser])
REFERENCES [dbo].[Users] ([idUser])
GO
ALTER TABLE [dbo].[Subscription]  WITH CHECK ADD FOREIGN KEY([idUser])
REFERENCES [dbo].[Users] ([idUser])
GO
ALTER TABLE [dbo].[Subscription]  WITH CHECK ADD FOREIGN KEY([idWhisky])
REFERENCES [dbo].[Whisky] ([idWhisky])
GO
ALTER TABLE [dbo].[Subscription]  WITH CHECK ADD FOREIGN KEY([idWhisky])
REFERENCES [dbo].[Whisky] ([idWhisky])
GO
ALTER TABLE [dbo].[Whisky]  WITH CHECK ADD FOREIGN KEY([idSupplier])
REFERENCES [dbo].[Supplier] ([idSupplier])
GO
ALTER TABLE [dbo].[Whisky]  WITH CHECK ADD FOREIGN KEY([idSupplier])
REFERENCES [dbo].[Supplier] ([idSupplier])
GO
ALTER TABLE [dbo].[Whisky]  WITH CHECK ADD FOREIGN KEY([idWhiskyType])
REFERENCES [dbo].[WhiskyType] ([idWhiskyType])
GO
ALTER TABLE [dbo].[Whisky]  WITH CHECK ADD FOREIGN KEY([idWhiskyType])
REFERENCES [dbo].[WhiskyType] ([idWhiskyType])
GO
ALTER TABLE [dbo].[WhiskyXSale]  WITH CHECK ADD FOREIGN KEY([idSale])
REFERENCES [dbo].[Sale] ([idSale])
GO
ALTER TABLE [dbo].[WhiskyXSale]  WITH CHECK ADD FOREIGN KEY([idSale])
REFERENCES [dbo].[Sale] ([idSale])
GO
ALTER TABLE [dbo].[WhiskyXSale]  WITH CHECK ADD FOREIGN KEY([idWhisky])
REFERENCES [dbo].[Whisky] ([idWhisky])
GO
ALTER TABLE [dbo].[WhiskyXSale]  WITH CHECK ADD FOREIGN KEY([idWhisky])
REFERENCES [dbo].[Whisky] ([idWhisky])
GO
