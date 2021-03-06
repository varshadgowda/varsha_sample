USE [Company]
GO
/****** Object:  Table [dbo].[time]    Script Date: 03/12/2017 06:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[time](
	[orderId] [int] IDENTITY(1,1) NOT NULL,
	[orderDate] [date] NOT NULL,
	[orderYear] [int] NOT NULL,
	[orderQuarter] [int] NOT NULL,
	[orderMonth] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[orderId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 03/12/2017 06:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[product](
	[productId] [int] IDENTITY(1,1) NOT NULL,
	[productName] [varchar](50) NOT NULL,
	[productDescription] [varchar](300) NOT NULL,
	[unitprice] [money] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[productId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[product] ON
INSERT [dbo].[product] ([productId], [productName], [productDescription], [unitprice]) VALUES (1, N'Raw materials', N'120g', 30.0000)
INSERT [dbo].[product] ([productId], [productName], [productDescription], [unitprice]) VALUES (2, N'Raw materials', N'120g', 30.0000)
INSERT [dbo].[product] ([productId], [productName], [productDescription], [unitprice]) VALUES (3, N'electrial equipments', N'750kg', 86000.0000)
INSERT [dbo].[product] ([productId], [productName], [productDescription], [unitprice]) VALUES (4, N'Dress Materials', N'flying machines', 4500.0000)
INSERT [dbo].[product] ([productId], [productName], [productDescription], [unitprice]) VALUES (5, N'food items', N'250kg', 1900.0000)
SET IDENTITY_INSERT [dbo].[product] OFF
/****** Object:  Table [dbo].[employee]    Script Date: 03/12/2017 06:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[employee](
	[empId] [int] IDENTITY(1,1) NOT NULL,
	[dateOfJoining] [datetime] NOT NULL,
	[dateOfBirth] [datetime] NOT NULL,
	[empAddress] [varchar](50) NOT NULL,
	[departmentId] [int] NOT NULL,
	[mobileNumber] [int] NOT NULL,
	[empImage] [image] NOT NULL,
	[empName] [varchar](50) NULL,
	[emailId] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[empId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Department]    Script Date: 03/12/2017 06:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Department](
	[DepartmentID] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentName] [varchar](50) NOT NULL,
	[lastUpdatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DepartmentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Department] ON
INSERT [dbo].[Department] ([DepartmentID], [DepartmentName], [lastUpdatedDate]) VALUES (1, N'sales', CAST(0x0000A72D00E760E8 AS DateTime))
INSERT [dbo].[Department] ([DepartmentID], [DepartmentName], [lastUpdatedDate]) VALUES (2, N'finance', CAST(0x0000A72D00E760E8 AS DateTime))
INSERT [dbo].[Department] ([DepartmentID], [DepartmentName], [lastUpdatedDate]) VALUES (3, N'HumanResource', CAST(0x0000A72D00E760E8 AS DateTime))
INSERT [dbo].[Department] ([DepartmentID], [DepartmentName], [lastUpdatedDate]) VALUES (4, N'production', CAST(0x0000A72D00E760E8 AS DateTime))
SET IDENTITY_INSERT [dbo].[Department] OFF
/****** Object:  Table [dbo].[customer]    Script Date: 03/12/2017 06:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[customer](
	[custId] [int] IDENTITY(1,1) NOT NULL,
	[custName] [varchar](50) NOT NULL,
	[custAddress] [varchar](300) NOT NULL,
	[custCity] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[custId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[customer] ON
INSERT [dbo].[customer] ([custId], [custName], [custAddress], [custCity]) VALUES (1, N'nihal', N'#10 M.G road Mysore', N'Mysore')
INSERT [dbo].[customer] ([custId], [custName], [custAddress], [custCity]) VALUES (4, N'naina', N'#16 J.P Nagar', N'Bangalore')
INSERT [dbo].[customer] ([custId], [custName], [custAddress], [custCity]) VALUES (5, N'Manasa', N'#06 B.K Layout', N'Hyderabad')
INSERT [dbo].[customer] ([custId], [custName], [custAddress], [custCity]) VALUES (6, N'Mishti', N'#10,Electronic city', N'Mumbai')
SET IDENTITY_INSERT [dbo].[customer] OFF
