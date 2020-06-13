USE [datanthing]
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPaneCount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_nthing_UsrProducts'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_nthing_UsrProducts'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPaneCount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_nthing_Crossell'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_nthing_Crossell'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPaneCount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_nthing_CatProducts'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_nthing_CatProducts'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_nthing_CatProducts'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPaneCount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_nthing_CartProducts'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_nthing_CartProducts'
GO
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserLogins] DROP CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserClaims] DROP CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[nthing_Store_userRating] DROP CONSTRAINT [DF_nthing_Store_Rating_createdOn]
GO
ALTER TABLE [dbo].[nthing_Store_Product_Category_Map] DROP CONSTRAINT [DF_nthing_Store_Product_Category_Map_modifiedOn]
GO
ALTER TABLE [dbo].[nthing_Store_Product_Category_Map] DROP CONSTRAINT [DF_nthing_Store_Product_Category_Map_createdOn]
GO
ALTER TABLE [dbo].[nthing_Store_Product] DROP CONSTRAINT [DF_nthing_Products_isDeleted]
GO
ALTER TABLE [dbo].[nthing_Store_Product] DROP CONSTRAINT [DF_nthing_Store_Product_modifiedOn]
GO
ALTER TABLE [dbo].[nthing_Store_Product] DROP CONSTRAINT [DF_nthing_Store_Product_createdOn]
GO
ALTER TABLE [dbo].[nthing_Store_Product] DROP CONSTRAINT [DF_nthing_Store_Product_IsLocked]
GO
ALTER TABLE [dbo].[nthing_Store_Product] DROP CONSTRAINT [DF_nthing_Store_Product_productGUID]
GO
ALTER TABLE [dbo].[nthing_Store_Product] DROP CONSTRAINT [DF_nthing_Products_productTypeID]
GO
ALTER TABLE [dbo].[nthing_Store_Product] DROP CONSTRAINT [DF_nthing_Products_statusID]
GO
ALTER TABLE [dbo].[nthing_Store_Order] DROP CONSTRAINT [DF_nthing_Store_Order_OrderQuant]
GO
ALTER TABLE [dbo].[nthing_Store_Order] DROP CONSTRAINT [DF_nthing_Store_Order_modifiedOn]
GO
ALTER TABLE [dbo].[nthing_Store_Category] DROP CONSTRAINT [DF_nthing_Store_Category_modifiedOn]
GO
ALTER TABLE [dbo].[nthing_Store_Category] DROP CONSTRAINT [DF_nthing_Store_Category_createdOn]
GO
ALTER TABLE [dbo].[nthing_Store_Category] DROP CONSTRAINT [DF_nthing_ProductCategories_parentID]
GO
ALTER TABLE [dbo].[nthing_Store_Category] DROP CONSTRAINT [DF_nthing_Store_Category_categoryGUID]
GO
ALTER TABLE [dbo].[nthing_Auction_Trans] DROP CONSTRAINT [DF_nthing_Auction_Trans_bidTime]
GO
ALTER TABLE [dbo].[AspNetUsers] DROP CONSTRAINT [DF_AspNetUsers_UserRating]
GO
/****** Object:  Table [dbo].[nthing_Store_userRating]    Script Date: 13/6/2020 10:08:28 μμ ******/
DROP TABLE [dbo].[nthing_Store_userRating]
GO
/****** Object:  Table [dbo].[nthing_Auction_Trans]    Script Date: 13/6/2020 10:08:28 μμ ******/
DROP TABLE [dbo].[nthing_Auction_Trans]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 13/6/2020 10:08:28 μμ ******/
DROP TABLE [dbo].[AspNetUserRoles]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 13/6/2020 10:08:28 μμ ******/
DROP TABLE [dbo].[AspNetUserLogins]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 13/6/2020 10:08:28 μμ ******/
DROP TABLE [dbo].[AspNetUserClaims]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 13/6/2020 10:08:28 μμ ******/
DROP TABLE [dbo].[AspNetRoles]
GO
/****** Object:  View [dbo].[vw_nthing_Crossell]    Script Date: 13/6/2020 10:08:28 μμ ******/
DROP VIEW [dbo].[vw_nthing_Crossell]
GO
/****** Object:  Table [dbo].[nthing_Store_CrossSell]    Script Date: 13/6/2020 10:08:28 μμ ******/
DROP TABLE [dbo].[nthing_Store_CrossSell]
GO
/****** Object:  View [dbo].[vw_nthing_CartProducts]    Script Date: 13/6/2020 10:08:28 μμ ******/
DROP VIEW [dbo].[vw_nthing_CartProducts]
GO
/****** Object:  Table [dbo].[nthing_Store_Order]    Script Date: 13/6/2020 10:08:28 μμ ******/
DROP TABLE [dbo].[nthing_Store_Order]
GO
/****** Object:  View [dbo].[vw_nthing_UsrProducts]    Script Date: 13/6/2020 10:08:28 μμ ******/
DROP VIEW [dbo].[vw_nthing_UsrProducts]
GO
/****** Object:  View [dbo].[vw_nthing_CatProducts]    Script Date: 13/6/2020 10:08:28 μμ ******/
DROP VIEW [dbo].[vw_nthing_CatProducts]
GO
/****** Object:  Table [dbo].[nthing_Store_Product_Category_Map]    Script Date: 13/6/2020 10:08:28 μμ ******/
DROP TABLE [dbo].[nthing_Store_Product_Category_Map]
GO
/****** Object:  Table [dbo].[nthing_Store_Category]    Script Date: 13/6/2020 10:08:28 μμ ******/
DROP TABLE [dbo].[nthing_Store_Category]
GO
/****** Object:  Table [dbo].[nthing_Store_Product]    Script Date: 13/6/2020 10:08:28 μμ ******/
DROP TABLE [dbo].[nthing_Store_Product]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 13/6/2020 10:08:28 μμ ******/
DROP TABLE [dbo].[AspNetUsers]
GO
/****** Object:  User [nthinguser]    Script Date: 13/6/2020 10:08:28 μμ ******/
DROP USER [nthinguser]
GO
/****** Object:  User [nthinguser]    Script Date: 13/6/2020 10:08:28 μμ ******/
CREATE USER [nthinguser] FOR LOGIN [nthinguser] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 13/6/2020 10:08:28 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) COLLATE Greek_CI_AS NOT NULL,
	[FullName] [nvarchar](max) COLLATE Greek_CI_AS NULL,
	[RegionID] [int] NULL,
	[Email] [nvarchar](256) COLLATE Greek_CI_AS NULL,
	[EmailConfirmed] [bit] NULL,
	[PasswordHash] [nvarchar](max) COLLATE Greek_CI_AS NULL,
	[SecurityStamp] [nvarchar](max) COLLATE Greek_CI_AS NULL,
	[PhoneNumber] [nvarchar](max) COLLATE Greek_CI_AS NULL,
	[PhoneNumberConfirmed] [bit] NULL,
	[TwoFactorEnabled] [bit] NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) COLLATE Greek_CI_AS NOT NULL,
	[UserRating] [int] NULL,
	[UserReviews] [int] NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nthing_Store_Product]    Script Date: 13/6/2020 10:08:29 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nthing_Store_Product](
	[ProductId] [int] IDENTITY(5000,1) NOT NULL,
	[ProductStatusDescriptorId] [int] NOT NULL,
	[ProductTypeId] [int] NULL,
	[BaseSku] [nvarchar](50) COLLATE Greek_CI_AS NULL,
	[ProductGuid] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](150) COLLATE Greek_CI_AS NOT NULL,
	[ShortDescription] [nvarchar](max) COLLATE Greek_CI_AS NOT NULL,
	[Price]  AS ([Price_f]/(100)),
	[Price_f] [int] NOT NULL,
	[MinPrice]  AS ([MinPrice_f]/(100)),
	[MinPrice_f] [int] NULL,
	[IsEnabled] [bit] NULL,
	[CreatedBy] [nvarchar](50) COLLATE Greek_CI_AS NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](50) COLLATE Greek_CI_AS NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[IsDeleted] [bit] NULL,
	[prodPhoto] [nvarchar](200) COLLATE Greek_CI_AS NULL,
	[UserId] [nvarchar](128) COLLATE Greek_CI_AS NULL,
	[AuctEndTime] [smalldatetime] NULL,
 CONSTRAINT [PK_nthing_Products] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nthing_Store_Category]    Script Date: 13/6/2020 10:08:29 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nthing_Store_Category](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryGuid] [uniqueidentifier] NOT NULL,
	[ParentId] [int] NOT NULL,
	[Name] [nvarchar](100) COLLATE Greek_CI_AS NOT NULL,
	[ImageFile] [nvarchar](255) COLLATE Greek_CI_AS NULL,
	[Description] [nvarchar](500) COLLATE Greek_CI_AS NULL,
	[SortOrder] [int] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Greek_CI_AS NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](50) COLLATE Greek_CI_AS NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_nthing_ProductCategories] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nthing_Store_Product_Category_Map]    Script Date: 13/6/2020 10:08:29 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nthing_Store_Product_Category_Map](
	[ProductId] [int] NOT NULL,
	[CategoryId] [int] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Greek_CI_AS NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](50) COLLATE Greek_CI_AS NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_nthing_Products_Categories] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC,
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_nthing_CatProducts]    Script Date: 13/6/2020 10:08:29 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_nthing_CatProducts]
AS
SELECT        dbo.nthing_Store_Product.ProductId, dbo.nthing_Store_Product.ProductStatusDescriptorId, CASE ProductTypeId WHEN 1 THEN 'BUY NOW' WHEN 2 THEN 'AUCTION' END AS Ptype, dbo.nthing_Store_Product.BaseSku, 
                         dbo.nthing_Store_Product.ProductGuid, dbo.nthing_Store_Product.Name, dbo.nthing_Store_Product.ShortDescription, dbo.nthing_Store_Product.Price, dbo.nthing_Store_Product.Price_f, dbo.nthing_Store_Product.MinPrice, 
                         dbo.nthing_Store_Product.MinPrice_f, dbo.nthing_Store_Product.IsEnabled, dbo.nthing_Store_Product.CreatedBy, dbo.nthing_Store_Product.CreatedOn, dbo.nthing_Store_Product.ModifiedBy, 
                         dbo.nthing_Store_Product.ModifiedOn, dbo.nthing_Store_Product.IsDeleted, dbo.nthing_Store_Product.prodPhoto, dbo.nthing_Store_Product.UserId, dbo.nthing_Store_Category.CategoryId, 
                         dbo.nthing_Store_Category.CategoryGuid, dbo.nthing_Store_Category.Name AS Expr1, dbo.AspNetUsers.UserName, dbo.nthing_Store_Product.ProductTypeId
FROM            dbo.nthing_Store_Product LEFT OUTER JOIN
                         dbo.AspNetUsers ON dbo.nthing_Store_Product.UserId = dbo.AspNetUsers.Id LEFT OUTER JOIN
                         dbo.nthing_Store_Product_Category_Map ON dbo.nthing_Store_Product.ProductId = dbo.nthing_Store_Product_Category_Map.ProductId LEFT OUTER JOIN
                         dbo.nthing_Store_Category ON dbo.nthing_Store_Product_Category_Map.CategoryId = dbo.nthing_Store_Category.CategoryId
GO
/****** Object:  View [dbo].[vw_nthing_UsrProducts]    Script Date: 13/6/2020 10:08:29 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_nthing_UsrProducts]
AS
SELECT        dbo.nthing_Store_Product.UserId, dbo.nthing_Store_Product.ProductId, dbo.nthing_Store_Product.ProductStatusDescriptorId, dbo.nthing_Store_Product.ProductTypeId, dbo.nthing_Store_Product.BaseSku, 
                         dbo.nthing_Store_Product.ProductGuid, dbo.nthing_Store_Product.Name, dbo.nthing_Store_Product.ShortDescription, dbo.nthing_Store_Product.Price, dbo.nthing_Store_Product.Price_f, dbo.nthing_Store_Product.MinPrice, 
                         dbo.nthing_Store_Product.MinPrice_f, dbo.nthing_Store_Product.IsEnabled, dbo.nthing_Store_Product.CreatedBy, dbo.nthing_Store_Product.CreatedOn, dbo.nthing_Store_Product.ModifiedBy, 
                         dbo.nthing_Store_Product.ModifiedOn, dbo.nthing_Store_Product.IsDeleted, dbo.nthing_Store_Product.prodPhoto, dbo.AspNetUsers.UserName, dbo.AspNetUsers.UserRating, dbo.AspNetUsers.UserReviews
FROM            dbo.nthing_Store_Product LEFT OUTER JOIN
                         dbo.AspNetUsers ON dbo.nthing_Store_Product.UserId = dbo.AspNetUsers.Id
GO
/****** Object:  Table [dbo].[nthing_Store_Order]    Script Date: 13/6/2020 10:08:29 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nthing_Store_Order](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](100) COLLATE Greek_CI_AS NOT NULL,
	[UserGui] [nvarchar](128) COLLATE Greek_CI_AS NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[ProductGui] [nvarchar](128) COLLATE Greek_CI_AS NULL,
	[OrderQuant] [int] NULL,
	[ProductAmount]  AS ([ProductAmount_F]/(100)),
	[ProductAmount_F] [int] NULL,
 CONSTRAINT [PK_nthing_Store_Order] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_nthing_CartProducts]    Script Date: 13/6/2020 10:08:29 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_nthing_CartProducts]
AS
SELECT        dbo.nthing_Store_Order.OrderId, dbo.nthing_Store_Order.UserName, dbo.nthing_Store_Order.UserGui, dbo.nthing_Store_Order.ModifiedOn, dbo.nthing_Store_Order.ProductGui, dbo.nthing_Store_Order.OrderQuant, 
                         dbo.nthing_Store_Order.ProductAmount, dbo.nthing_Store_Order.ProductAmount_F, dbo.nthing_Store_Product.Name AS ProductName, dbo.nthing_Store_Product.Price
FROM            dbo.nthing_Store_Product RIGHT OUTER JOIN
                         dbo.nthing_Store_Order ON dbo.nthing_Store_Product.ProductGuid = dbo.nthing_Store_Order.ProductGui
GO
/****** Object:  Table [dbo].[nthing_Store_CrossSell]    Script Date: 13/6/2020 10:08:29 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nthing_Store_CrossSell](
	[ProductId] [int] NOT NULL,
	[CrossProductId] [int] NOT NULL,
 CONSTRAINT [PK_nthing_Promo_Product_CrossSell_Map] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC,
	[CrossProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_nthing_Crossell]    Script Date: 13/6/2020 10:08:29 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_nthing_Crossell]
AS
SELECT        dbo.nthing_Store_CrossSell.ProductId, dbo.nthing_Store_CrossSell.CrossProductId, dbo.nthing_Store_Product.ProductTypeId, dbo.nthing_Store_Product.ProductGuid, dbo.nthing_Store_Product.Name, 
                         dbo.nthing_Store_Product.ShortDescription, dbo.nthing_Store_Product.Price, dbo.nthing_Store_Product.prodPhoto
FROM            dbo.nthing_Store_Product RIGHT OUTER JOIN
                         dbo.nthing_Store_CrossSell ON dbo.nthing_Store_Product.ProductId = dbo.nthing_Store_CrossSell.CrossProductId
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 13/6/2020 10:08:29 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) COLLATE Greek_CI_AS NOT NULL,
	[Name] [nvarchar](256) COLLATE Greek_CI_AS NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 13/6/2020 10:08:29 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) COLLATE Greek_CI_AS NOT NULL,
	[ClaimType] [nvarchar](max) COLLATE Greek_CI_AS NULL,
	[ClaimValue] [nvarchar](max) COLLATE Greek_CI_AS NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 13/6/2020 10:08:29 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) COLLATE Greek_CI_AS NOT NULL,
	[ProviderKey] [nvarchar](128) COLLATE Greek_CI_AS NOT NULL,
	[UserId] [nvarchar](128) COLLATE Greek_CI_AS NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 13/6/2020 10:08:29 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) COLLATE Greek_CI_AS NOT NULL,
	[RoleId] [nvarchar](128) COLLATE Greek_CI_AS NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nthing_Auction_Trans]    Script Date: 13/6/2020 10:08:29 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nthing_Auction_Trans](
	[id] [int] IDENTITY(1000,1) NOT NULL,
	[productGuid] [nvarchar](250) COLLATE Greek_CI_AS NULL,
	[usrid] [nvarchar](128) COLLATE Greek_CI_AS NULL,
	[bid]  AS ([bidF]/(100)),
	[bidF] [numeric](18, 2) NULL,
	[bidTime] [datetime] NULL,
 CONSTRAINT [PK_nthing_Auction_Trans] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nthing_Store_userRating]    Script Date: 13/6/2020 10:08:29 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nthing_Store_userRating](
	[userRatingId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](256) COLLATE Greek_CI_AS NOT NULL,
	[Rating] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UserReview] [nvarchar](255) COLLATE Greek_CI_AS NULL,
 CONSTRAINT [PK_nthing_userRating] PRIMARY KEY CLUSTERED 
(
	[userRatingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'1000', N'Admins')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'1001', N'Operator')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'1002', N'Member')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'221962bf-b45b-41a6-96be-2146076aad12', N'1002')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'4c9c9fcb-a7bc-4ee0-b850-2e837d107cfb', N'1002')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'9539a40d-6f02-4d68-adc0-21970f08928f', N'1002')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'fbdc6445-83a0-4c7a-beed-3650ac8ee9c5', N'1002')
INSERT [dbo].[AspNetUsers] ([Id], [FullName], [RegionID], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [UserRating], [UserReviews]) VALUES (N'221962bf-b45b-41a6-96be-2146076aad12', NULL, NULL, N'giannismarioulas18@hotmail.com', 0, N'ACH3KiDoRTgMa78XbwxVcvHmGrdImc+I63JSWAzXGpjLKYLK5hXoI0BD3OXAL5hWeQ==', N'fc874519-8352-4659-b82d-008ec367a160', NULL, 0, 0, NULL, 1, 0, N'Member D', 3, 4)
INSERT [dbo].[AspNetUsers] ([Id], [FullName], [RegionID], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [UserRating], [UserReviews]) VALUES (N'4c9c9fcb-a7bc-4ee0-b850-2e837d107cfb', NULL, NULL, N'giannismarioulas@hotmail.com', 0, N'AL85/uPqpk/s0riNKwPkFjHtn3F/sqhli7RIG255VMGybYBsYA81y13GhgYgqF7cEA==', N'825bb937-18eb-4dac-b4b2-29d9a82a6ac9', NULL, 0, 0, NULL, 1, 0, N'Member A', 3, 1)
INSERT [dbo].[AspNetUsers] ([Id], [FullName], [RegionID], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [UserRating], [UserReviews]) VALUES (N'9539a40d-6f02-4d68-adc0-21970f08928f', NULL, NULL, N'giannismarioulas10@hotmail.com', 0, N'AIM6BqxkvfDNIdy/rFQV7CPvKRyucJP1aLcg1zfHNEX7SdTtSDfCb5IlhIOY+jY+GQ==', N'11d8c2da-93ab-4d6c-a846-46be09536312', NULL, 0, 0, NULL, 1, 0, N'Member C', 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FullName], [RegionID], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [UserRating], [UserReviews]) VALUES (N'fbdc6445-83a0-4c7a-beed-3650ac8ee9c5', NULL, NULL, N'giannismarioulas1@hotmail.com', 0, N'AKCixF8SwxQ5CrLvybdng22OPJ9GZiI7wL+KutIM1oO9TsmcDpBuSDw+VCWcjXskkQ==', N'2585fe8d-ad78-413b-95e3-1a823ac11607', NULL, 0, 0, NULL, 1, 0, N'Member B', 0, 0)
SET IDENTITY_INSERT [dbo].[nthing_Auction_Trans] ON 

INSERT [dbo].[nthing_Auction_Trans] ([id], [productGuid], [usrid], [bidF], [bidTime]) VALUES (1003, N'E26CB893-E75F-4CBF-9076-2D8F56F354CC', N'sdsdf', CAST(3200.00 AS Numeric(18, 2)), CAST(N'2020-06-10T23:43:28.027' AS DateTime))
INSERT [dbo].[nthing_Auction_Trans] ([id], [productGuid], [usrid], [bidF], [bidTime]) VALUES (1004, N'E26CB893-E75F-4CBF-9076-2D8F56F354CC', N'afa', CAST(4200.00 AS Numeric(18, 2)), CAST(N'2020-06-10T23:45:04.290' AS DateTime))
INSERT [dbo].[nthing_Auction_Trans] ([id], [productGuid], [usrid], [bidF], [bidTime]) VALUES (1006, N'E26CB893-E75F-4CBF-9076-2D8F56F354CC', N'dsfs', CAST(4300.00 AS Numeric(18, 2)), CAST(N'2020-06-11T00:00:43.763' AS DateTime))
INSERT [dbo].[nthing_Auction_Trans] ([id], [productGuid], [usrid], [bidF], [bidTime]) VALUES (1007, N'E26CB893-E75F-4CBF-9076-2D8F56F354CC', N'asfasf', CAST(4400.00 AS Numeric(18, 2)), CAST(N'2020-06-11T00:04:17.033' AS DateTime))
INSERT [dbo].[nthing_Auction_Trans] ([id], [productGuid], [usrid], [bidF], [bidTime]) VALUES (1009, N'E26CB893-E75F-4CBF-9076-2D8F56F354CC', N'σδφσδφ', CAST(4600.00 AS Numeric(18, 2)), CAST(N'2020-06-11T00:13:01.463' AS DateTime))
INSERT [dbo].[nthing_Auction_Trans] ([id], [productGuid], [usrid], [bidF], [bidTime]) VALUES (1011, N'E26CB893-E75F-4CBF-9076-2D8F56F354CC', N'cxvx', CAST(4700.00 AS Numeric(18, 2)), CAST(N'2020-06-11T00:17:38.530' AS DateTime))
INSERT [dbo].[nthing_Auction_Trans] ([id], [productGuid], [usrid], [bidF], [bidTime]) VALUES (1012, N'715ef78a-7b3c-4d90-9b9a-d051bcffbb6d', N'Member D', CAST(3500.00 AS Numeric(18, 2)), CAST(N'2020-06-12T01:31:31.280' AS DateTime))
INSERT [dbo].[nthing_Auction_Trans] ([id], [productGuid], [usrid], [bidF], [bidTime]) VALUES (1013, N'715ef78a-7b3c-4d90-9b9a-d051bcffbb6d', N'Member D', CAST(4900.00 AS Numeric(18, 2)), CAST(N'2020-06-12T01:31:39.420' AS DateTime))
INSERT [dbo].[nthing_Auction_Trans] ([id], [productGuid], [usrid], [bidF], [bidTime]) VALUES (1014, N'715ef78a-7b3c-4d90-9b9a-d051bcffbb6d', N'Member D', CAST(4900.00 AS Numeric(18, 2)), CAST(N'2020-06-12T01:35:34.613' AS DateTime))
INSERT [dbo].[nthing_Auction_Trans] ([id], [productGuid], [usrid], [bidF], [bidTime]) VALUES (1015, N'715ef78a-7b3c-4d90-9b9a-d051bcffbb6d', N'Member D', CAST(5569.00 AS Numeric(18, 2)), CAST(N'2020-06-12T01:35:48.263' AS DateTime))
INSERT [dbo].[nthing_Auction_Trans] ([id], [productGuid], [usrid], [bidF], [bidTime]) VALUES (1016, N'715ef78a-7b3c-4d90-9b9a-d051bcffbb6d', N'Member D', CAST(5569.00 AS Numeric(18, 2)), CAST(N'2020-06-12T01:37:15.527' AS DateTime))
INSERT [dbo].[nthing_Auction_Trans] ([id], [productGuid], [usrid], [bidF], [bidTime]) VALUES (1017, N'715ef78a-7b3c-4d90-9b9a-d051bcffbb6d', N'Member D', CAST(6732.00 AS Numeric(18, 2)), CAST(N'2020-06-12T01:37:26.247' AS DateTime))
INSERT [dbo].[nthing_Auction_Trans] ([id], [productGuid], [usrid], [bidF], [bidTime]) VALUES (1018, N'715ef78a-7b3c-4d90-9b9a-d051bcffbb6d', N'Member D', CAST(6863.00 AS Numeric(18, 2)), CAST(N'2020-06-12T01:37:34.607' AS DateTime))
INSERT [dbo].[nthing_Auction_Trans] ([id], [productGuid], [usrid], [bidF], [bidTime]) VALUES (1019, N'9b6c4d9a-c3ed-44a7-b291-de20e901a69b', N'Member D', CAST(5500.00 AS Numeric(18, 2)), CAST(N'2020-06-12T14:01:47.197' AS DateTime))
INSERT [dbo].[nthing_Auction_Trans] ([id], [productGuid], [usrid], [bidF], [bidTime]) VALUES (1020, N'9b6c4d9a-c3ed-44a7-b291-de20e901a69b', N'Member D', CAST(9000.00 AS Numeric(18, 2)), CAST(N'2020-06-12T14:02:17.597' AS DateTime))
INSERT [dbo].[nthing_Auction_Trans] ([id], [productGuid], [usrid], [bidF], [bidTime]) VALUES (1021, N'ab3415d2-46ba-4820-9f97-13c0bc608a38', N'Member A', CAST(1500.00 AS Numeric(18, 2)), CAST(N'2020-06-12T18:36:25.867' AS DateTime))
INSERT [dbo].[nthing_Auction_Trans] ([id], [productGuid], [usrid], [bidF], [bidTime]) VALUES (1022, N'ab3415d2-46ba-4820-9f97-13c0bc608a38', N'Member D', CAST(3500.00 AS Numeric(18, 2)), CAST(N'2020-06-12T18:36:31.350' AS DateTime))
INSERT [dbo].[nthing_Auction_Trans] ([id], [productGuid], [usrid], [bidF], [bidTime]) VALUES (1023, N'ab3415d2-46ba-4820-9f97-13c0bc608a38', N'Member A', CAST(3600.00 AS Numeric(18, 2)), CAST(N'2020-06-12T18:36:36.120' AS DateTime))
INSERT [dbo].[nthing_Auction_Trans] ([id], [productGuid], [usrid], [bidF], [bidTime]) VALUES (1024, N'ab3415d2-46ba-4820-9f97-13c0bc608a38', N'Member A', CAST(3700.00 AS Numeric(18, 2)), CAST(N'2020-06-12T18:36:41.450' AS DateTime))
INSERT [dbo].[nthing_Auction_Trans] ([id], [productGuid], [usrid], [bidF], [bidTime]) VALUES (1026, N'ab3415d2-46ba-4820-9f97-13c0bc608a38', N'Member A', CAST(3800.00 AS Numeric(18, 2)), CAST(N'2020-06-12T23:15:17.770' AS DateTime))
INSERT [dbo].[nthing_Auction_Trans] ([id], [productGuid], [usrid], [bidF], [bidTime]) VALUES (1027, N'ab3415d2-46ba-4820-9f97-13c0bc608a38', N'Member D', CAST(3900.00 AS Numeric(18, 2)), CAST(N'2020-06-12T23:16:27.610' AS DateTime))
SET IDENTITY_INSERT [dbo].[nthing_Auction_Trans] OFF
SET IDENTITY_INSERT [dbo].[nthing_Store_Category] ON 

INSERT [dbo].[nthing_Store_Category] ([CategoryId], [CategoryGuid], [ParentId], [Name], [ImageFile], [Description], [SortOrder], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (2, N'5ef5d9fb-2798-49ae-9ec8-84a68b807df0', 0, N'TECHNOLOGY', NULL, NULL, 1, NULL, CAST(N'2020-06-09T18:50:06.123' AS DateTime), NULL, CAST(N'2020-06-09T18:50:06.123' AS DateTime))
INSERT [dbo].[nthing_Store_Category] ([CategoryId], [CategoryGuid], [ParentId], [Name], [ImageFile], [Description], [SortOrder], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (3, N'8b60a498-2552-4069-a528-6f372b255de7', 0, N'SPORTS', NULL, NULL, 2, NULL, CAST(N'2020-06-09T18:50:13.143' AS DateTime), NULL, CAST(N'2020-06-09T18:50:13.143' AS DateTime))
INSERT [dbo].[nthing_Store_Category] ([CategoryId], [CategoryGuid], [ParentId], [Name], [ImageFile], [Description], [SortOrder], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (4, N'876f4f2b-5cb4-4963-9daa-00a5cb72ff3e', 0, N'HEALTH', NULL, NULL, 3, NULL, CAST(N'2020-06-09T18:50:19.843' AS DateTime), NULL, CAST(N'2020-06-09T18:50:19.843' AS DateTime))
INSERT [dbo].[nthing_Store_Category] ([CategoryId], [CategoryGuid], [ParentId], [Name], [ImageFile], [Description], [SortOrder], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (5, N'3d519945-f68e-4e2d-ab6b-95bd2c9f7954', 0, N'AUTO-MOTO', NULL, NULL, 4, NULL, CAST(N'2020-06-09T18:50:33.887' AS DateTime), NULL, CAST(N'2020-06-09T18:50:33.887' AS DateTime))
INSERT [dbo].[nthing_Store_Category] ([CategoryId], [CategoryGuid], [ParentId], [Name], [ImageFile], [Description], [SortOrder], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (7, N'33910639-b201-4076-b407-5cd1bfc1bbe0', 0, N'HOUSE-GARDEN', NULL, NULL, 5, NULL, CAST(N'2020-06-09T18:52:34.287' AS DateTime), NULL, CAST(N'2020-06-09T18:52:34.287' AS DateTime))
INSERT [dbo].[nthing_Store_Category] ([CategoryId], [CategoryGuid], [ParentId], [Name], [ImageFile], [Description], [SortOrder], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (8, N'56dae770-6be3-45dd-b81a-8e520a6a4e00', 0, N'FASHION', NULL, NULL, 6, NULL, CAST(N'2020-06-09T18:53:40.883' AS DateTime), NULL, CAST(N'2020-06-09T18:53:40.883' AS DateTime))
SET IDENTITY_INSERT [dbo].[nthing_Store_Category] OFF
INSERT [dbo].[nthing_Store_CrossSell] ([ProductId], [CrossProductId]) VALUES (5001, 5010)
INSERT [dbo].[nthing_Store_CrossSell] ([ProductId], [CrossProductId]) VALUES (5004, 5009)
INSERT [dbo].[nthing_Store_CrossSell] ([ProductId], [CrossProductId]) VALUES (5006, 5001)
INSERT [dbo].[nthing_Store_CrossSell] ([ProductId], [CrossProductId]) VALUES (5006, 5010)
INSERT [dbo].[nthing_Store_CrossSell] ([ProductId], [CrossProductId]) VALUES (5007, 5008)
INSERT [dbo].[nthing_Store_CrossSell] ([ProductId], [CrossProductId]) VALUES (5007, 5009)
INSERT [dbo].[nthing_Store_CrossSell] ([ProductId], [CrossProductId]) VALUES (5008, 5009)
INSERT [dbo].[nthing_Store_CrossSell] ([ProductId], [CrossProductId]) VALUES (5011, 5003)
INSERT [dbo].[nthing_Store_CrossSell] ([ProductId], [CrossProductId]) VALUES (5011, 5012)
INSERT [dbo].[nthing_Store_CrossSell] ([ProductId], [CrossProductId]) VALUES (5012, 5003)
INSERT [dbo].[nthing_Store_CrossSell] ([ProductId], [CrossProductId]) VALUES (5013, 5014)
INSERT [dbo].[nthing_Store_CrossSell] ([ProductId], [CrossProductId]) VALUES (5013, 5015)
INSERT [dbo].[nthing_Store_CrossSell] ([ProductId], [CrossProductId]) VALUES (5014, 5015)
INSERT [dbo].[nthing_Store_CrossSell] ([ProductId], [CrossProductId]) VALUES (5016, 5017)
INSERT [dbo].[nthing_Store_CrossSell] ([ProductId], [CrossProductId]) VALUES (5016, 5018)
INSERT [dbo].[nthing_Store_CrossSell] ([ProductId], [CrossProductId]) VALUES (5016, 5022)
INSERT [dbo].[nthing_Store_CrossSell] ([ProductId], [CrossProductId]) VALUES (5017, 5018)
INSERT [dbo].[nthing_Store_CrossSell] ([ProductId], [CrossProductId]) VALUES (5017, 5022)
INSERT [dbo].[nthing_Store_CrossSell] ([ProductId], [CrossProductId]) VALUES (5018, 5022)
INSERT [dbo].[nthing_Store_CrossSell] ([ProductId], [CrossProductId]) VALUES (5019, 5028)
INSERT [dbo].[nthing_Store_CrossSell] ([ProductId], [CrossProductId]) VALUES (5020, 5021)
INSERT [dbo].[nthing_Store_CrossSell] ([ProductId], [CrossProductId]) VALUES (5022, 5023)
INSERT [dbo].[nthing_Store_CrossSell] ([ProductId], [CrossProductId]) VALUES (5024, 5025)
SET IDENTITY_INSERT [dbo].[nthing_Store_Order] ON 

INSERT [dbo].[nthing_Store_Order] ([OrderId], [UserName], [UserGui], [ModifiedOn], [ProductGui], [OrderQuant], [ProductAmount_F]) VALUES (45, N'Member D', NULL, CAST(N'2020-06-13T21:45:48.487' AS DateTime), N'b499220a-5ef3-4878-8253-3e978fb9e663', 1, 42000)
SET IDENTITY_INSERT [dbo].[nthing_Store_Order] OFF
SET IDENTITY_INSERT [dbo].[nthing_Store_Product] ON 

INSERT [dbo].[nthing_Store_Product] ([ProductId], [ProductStatusDescriptorId], [ProductTypeId], [BaseSku], [ProductGuid], [Name], [ShortDescription], [Price_f], [MinPrice_f], [IsEnabled], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [prodPhoto], [UserId], [AuctEndTime]) VALUES (5001, 1, 1, NULL, N'9b6c4d9a-c3ed-44a7-b291-de20e901a69b', N'Apple IPhone 11', N'Apple Smartphone 128GB Black', 80000, NULL, 1, NULL, CAST(N'2020-06-09T19:09:30.317' AS DateTime), NULL, CAST(N'2020-06-09T19:09:30.317' AS DateTime), 0, N'images/pictures/iphone 11.jpg', N'fbdc6445-83a0-4c7a-beed-3650ac8ee9c5', NULL)
INSERT [dbo].[nthing_Store_Product] ([ProductId], [ProductStatusDescriptorId], [ProductTypeId], [BaseSku], [ProductGuid], [Name], [ShortDescription], [Price_f], [MinPrice_f], [IsEnabled], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [prodPhoto], [UserId], [AuctEndTime]) VALUES (5003, 1, 1, NULL, N'e26cb893-e75f-4cbf-9076-2d8f56f354cc', N'Nike Ζακέτα', N'Αθλητικη ζακετα ανδρική, φουτερ Black', 8000, NULL, 1, NULL, CAST(N'2020-06-09T19:12:53.710' AS DateTime), NULL, CAST(N'2020-06-09T19:12:53.710' AS DateTime), 0, N'images/pictures/zaketa.jpg', N'221962bf-b45b-41a6-96be-2146076aad12', NULL)
INSERT [dbo].[nthing_Store_Product] ([ProductId], [ProductStatusDescriptorId], [ProductTypeId], [BaseSku], [ProductGuid], [Name], [ShortDescription], [Price_f], [MinPrice_f], [IsEnabled], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [prodPhoto], [UserId], [AuctEndTime]) VALUES (5004, 1, 1, NULL, N'd0ff594c-c12d-4bd3-bebd-a8361c13cd5e', N'Samsung Galaxy Tab A(2019)', N'10.1" 32GB Black RAM:2GB', 18500, NULL, 1, NULL, CAST(N'2020-06-11T14:46:14.303' AS DateTime), NULL, CAST(N'2020-06-11T14:46:14.303' AS DateTime), 0, N'images/pictures/tablet.jpg', N'4c9c9fcb-a7bc-4ee0-b850-2e837d107cfb', NULL)
INSERT [dbo].[nthing_Store_Product] ([ProductId], [ProductStatusDescriptorId], [ProductTypeId], [BaseSku], [ProductGuid], [Name], [ShortDescription], [Price_f], [MinPrice_f], [IsEnabled], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [prodPhoto], [UserId], [AuctEndTime]) VALUES (5006, 1, 1, NULL, N'94ffbda5-c138-4f6e-a02b-321744b9a856', N'IPhone 11 Θήκη', N'Silicon Case Black colour IPhone 11', 3400, NULL, 1, NULL, CAST(N'2020-06-11T14:49:20.600' AS DateTime), NULL, CAST(N'2020-06-11T14:49:20.600' AS DateTime), 0, N'images/pictures/thiki i phone.jpg', N'221962bf-b45b-41a6-96be-2146076aad12', NULL)
INSERT [dbo].[nthing_Store_Product] ([ProductId], [ProductStatusDescriptorId], [ProductTypeId], [BaseSku], [ProductGuid], [Name], [ShortDescription], [Price_f], [MinPrice_f], [IsEnabled], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [prodPhoto], [UserId], [AuctEndTime]) VALUES (5007, 1, 1, NULL, N'b499220a-5ef3-4878-8253-3e978fb9e663', N'Laptop HP 255 G7', N'RAM:8GB SSD:256GB AMD Radeon Vega Graphics CPU:AMD Ryzen 3 15.6"', 42000, NULL, 1, NULL, CAST(N'2020-06-11T14:51:36.947' AS DateTime), NULL, CAST(N'2020-06-11T14:51:36.947' AS DateTime), 0, N'images/pictures/laptop.jpg', N'4c9c9fcb-a7bc-4ee0-b850-2e837d107cfb', NULL)
INSERT [dbo].[nthing_Store_Product] ([ProductId], [ProductStatusDescriptorId], [ProductTypeId], [BaseSku], [ProductGuid], [Name], [ShortDescription], [Price_f], [MinPrice_f], [IsEnabled], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [prodPhoto], [UserId], [AuctEndTime]) VALUES (5008, 1, 1, NULL, N'ab3415d2-46ba-4820-9f97-13c0bc608a38', N'Laptop Bag HP Value BackPack', N'Grey colour 15.6"', 1300, NULL, 1, NULL, CAST(N'2020-06-11T14:54:40.860' AS DateTime), NULL, CAST(N'2020-06-11T14:54:40.860' AS DateTime), 0, N'images/pictures/tsanta.jpeg', N'221962bf-b45b-41a6-96be-2146076aad12', CAST(N'2020-06-12T23:24:00' AS SmallDateTime))
INSERT [dbo].[nthing_Store_Product] ([ProductId], [ProductStatusDescriptorId], [ProductTypeId], [BaseSku], [ProductGuid], [Name], [ShortDescription], [Price_f], [MinPrice_f], [IsEnabled], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [prodPhoto], [UserId], [AuctEndTime]) VALUES (5009, 1, 1, NULL, N'7bc3d00e-d7d2-4de6-8e43-cecb50637947', N'Sandisc USB 3.0', N'32GB USB-A connection', 700, NULL, 1, NULL, CAST(N'2020-06-11T14:58:05.707' AS DateTime), NULL, CAST(N'2020-06-11T14:58:05.707' AS DateTime), 0, N'images/pictures/usb.jpg', N'221962bf-b45b-41a6-96be-2146076aad12', NULL)
INSERT [dbo].[nthing_Store_Product] ([ProductId], [ProductStatusDescriptorId], [ProductTypeId], [BaseSku], [ProductGuid], [Name], [ShortDescription], [Price_f], [MinPrice_f], [IsEnabled], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [prodPhoto], [UserId], [AuctEndTime]) VALUES (5010, 1, 1, NULL, N'de0fdebe-c23d-4b95-b8ad-3a96caa3e1d5', N'Apple Air Pods 2019 ', N'IPhone Bluetooth  Hands Free ', 11500, NULL, 1, NULL, CAST(N'2020-06-11T15:00:07.723' AS DateTime), NULL, CAST(N'2020-06-11T15:00:07.723' AS DateTime), 0, N'images/pictures/airpods.jpg', N'221962bf-b45b-41a6-96be-2146076aad12', NULL)
INSERT [dbo].[nthing_Store_Product] ([ProductId], [ProductStatusDescriptorId], [ProductTypeId], [BaseSku], [ProductGuid], [Name], [ShortDescription], [Price_f], [MinPrice_f], [IsEnabled], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [prodPhoto], [UserId], [AuctEndTime]) VALUES (5011, 1, 1, NULL, N'64de6e21-bc39-46fd-9813-657b352e2c63', N'Nike Sportswear ', N'Μαύρη βερμούδα μακό αντρική', 3400, NULL, 1, NULL, CAST(N'2020-06-11T15:03:50.150' AS DateTime), NULL, CAST(N'2020-06-11T15:03:50.150' AS DateTime), 0, N'images/pictures/bermoyda.jpg', N'4c9c9fcb-a7bc-4ee0-b850-2e837d107cfb', NULL)
INSERT [dbo].[nthing_Store_Product] ([ProductId], [ProductStatusDescriptorId], [ProductTypeId], [BaseSku], [ProductGuid], [Name], [ShortDescription], [Price_f], [MinPrice_f], [IsEnabled], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [prodPhoto], [UserId], [AuctEndTime]) VALUES (5012, 1, 1, NULL, N'd98dc91d-8dd3-4f75-80de-75726c174790', N'Nike Air Force 1''07', N'Colour White Size 40', 9000, NULL, 1, NULL, CAST(N'2020-06-11T15:06:12.293' AS DateTime), NULL, CAST(N'2020-06-11T15:06:12.293' AS DateTime), 0, N'images/pictures/airforce.jpg', N'9539a40d-6f02-4d68-adc0-21970f08928f', NULL)
INSERT [dbo].[nthing_Store_Product] ([ProductId], [ProductStatusDescriptorId], [ProductTypeId], [BaseSku], [ProductGuid], [Name], [ShortDescription], [Price_f], [MinPrice_f], [IsEnabled], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [prodPhoto], [UserId], [AuctEndTime]) VALUES (5013, 1, 1, NULL, N'a202aa0b-5242-44c0-9866-8fa0783bbd2b', N'Vans Old Skool Women', N'Colour Blaack and White Size 38', 7500, NULL, 1, NULL, CAST(N'2020-06-11T15:08:23.937' AS DateTime), NULL, CAST(N'2020-06-11T15:08:23.937' AS DateTime), 0, N'images/pictures/vans.jpg', N'221962bf-b45b-41a6-96be-2146076aad12', NULL)
INSERT [dbo].[nthing_Store_Product] ([ProductId], [ProductStatusDescriptorId], [ProductTypeId], [BaseSku], [ProductGuid], [Name], [ShortDescription], [Price_f], [MinPrice_f], [IsEnabled], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [prodPhoto], [UserId], [AuctEndTime]) VALUES (5014, 1, 1, NULL, N'ede88649-1e3b-4db2-9183-d3f051bb3fc4', N'Levi''s Woman Jean Jacket', N'Size Medium ', 5000, NULL, 1, NULL, CAST(N'2020-06-11T15:13:58.470' AS DateTime), NULL, CAST(N'2020-06-11T15:13:58.470' AS DateTime), 0, N'images/pictures/jean jacket.jpg', N'221962bf-b45b-41a6-96be-2146076aad12', NULL)
INSERT [dbo].[nthing_Store_Product] ([ProductId], [ProductStatusDescriptorId], [ProductTypeId], [BaseSku], [ProductGuid], [Name], [ShortDescription], [Price_f], [MinPrice_f], [IsEnabled], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [prodPhoto], [UserId], [AuctEndTime]) VALUES (5015, 1, 1, NULL, N'9c546ed2-f824-40ca-b2b4-ff848f244113', N'BSB Jean Woman', N'Size 38 Slim Fit', 4500, NULL, 1, NULL, CAST(N'2020-06-11T15:14:57.040' AS DateTime), NULL, CAST(N'2020-06-11T15:14:57.040' AS DateTime), 0, N'images/pictures/bab jeans.jpg', N'9539a40d-6f02-4d68-adc0-21970f08928f', NULL)
INSERT [dbo].[nthing_Store_Product] ([ProductId], [ProductStatusDescriptorId], [ProductTypeId], [BaseSku], [ProductGuid], [Name], [ShortDescription], [Price_f], [MinPrice_f], [IsEnabled], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [prodPhoto], [UserId], [AuctEndTime]) VALUES (5016, 1, 1, NULL, N'bf330841-73a0-46ac-9a9e-540e04c7d1f8', N'Σετ 4 λαστιχα', N'160/65/R14 ', 15000, NULL, 1, NULL, CAST(N'2020-06-11T15:26:36.977' AS DateTime), NULL, CAST(N'2020-06-11T15:26:36.977' AS DateTime), 0, N'images/pictures/lastixa.jpg', N'9539a40d-6f02-4d68-adc0-21970f08928f', NULL)
INSERT [dbo].[nthing_Store_Product] ([ProductId], [ProductStatusDescriptorId], [ProductTypeId], [BaseSku], [ProductGuid], [Name], [ShortDescription], [Price_f], [MinPrice_f], [IsEnabled], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [prodPhoto], [UserId], [AuctEndTime]) VALUES (5017, 1, 1, NULL, N'dc336b83-af8d-4f03-a07c-da5df4022293', N'CD Radio ', N'1 DIN USB Bluetooth AUX ', 3000, NULL, 1, NULL, CAST(N'2020-06-11T15:28:13.727' AS DateTime), NULL, CAST(N'2020-06-11T15:28:13.727' AS DateTime), 0, N'images/pictures/cd radio.jpg', N'221962bf-b45b-41a6-96be-2146076aad12', NULL)
INSERT [dbo].[nthing_Store_Product] ([ProductId], [ProductStatusDescriptorId], [ProductTypeId], [BaseSku], [ProductGuid], [Name], [ShortDescription], [Price_f], [MinPrice_f], [IsEnabled], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [prodPhoto], [UserId], [AuctEndTime]) VALUES (5018, 1, 1, NULL, N'91a94d3e-d565-4db2-9891-6904a5fcd739', N'Τρομπα Λαστιχων Αυτοκινητου', N'Power 12V', 2000, NULL, 1, NULL, CAST(N'2020-06-11T15:29:57.963' AS DateTime), NULL, CAST(N'2020-06-11T15:29:57.963' AS DateTime), 0, N'images/pictures/trompa.jpg', N'fbdc6445-83a0-4c7a-beed-3650ac8ee9c5', NULL)
INSERT [dbo].[nthing_Store_Product] ([ProductId], [ProductStatusDescriptorId], [ProductTypeId], [BaseSku], [ProductGuid], [Name], [ShortDescription], [Price_f], [MinPrice_f], [IsEnabled], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [prodPhoto], [UserId], [AuctEndTime]) VALUES (5019, 1, 1, NULL, N'c067bed2-f152-4660-8ab2-01cadf833e72', N'Φανέλα Liverpool FC Home 2019-2020', N'Colour Red Brand New Balance ', 4500, NULL, 1, NULL, CAST(N'2020-06-11T15:50:04.670' AS DateTime), NULL, CAST(N'2020-06-11T15:50:04.670' AS DateTime), 0, N'images/pictures/liverpoll.jpg', N'221962bf-b45b-41a6-96be-2146076aad12', NULL)
INSERT [dbo].[nthing_Store_Product] ([ProductId], [ProductStatusDescriptorId], [ProductTypeId], [BaseSku], [ProductGuid], [Name], [ShortDescription], [Price_f], [MinPrice_f], [IsEnabled], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [prodPhoto], [UserId], [AuctEndTime]) VALUES (5020, 1, 1, NULL, N'f5dedc3a-9b72-4b31-9777-5e72997913e5', N'Σακος του Box EverLast', N'Υψος 160cm Κρεμαστός', 5000, NULL, 1, NULL, CAST(N'2020-06-11T15:50:50.107' AS DateTime), NULL, CAST(N'2020-06-11T15:50:50.107' AS DateTime), 0, N'images/pictures/sakos.jpg', N'fbdc6445-83a0-4c7a-beed-3650ac8ee9c5', NULL)
INSERT [dbo].[nthing_Store_Product] ([ProductId], [ProductStatusDescriptorId], [ProductTypeId], [BaseSku], [ProductGuid], [Name], [ShortDescription], [Price_f], [MinPrice_f], [IsEnabled], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [prodPhoto], [UserId], [AuctEndTime]) VALUES (5021, 1, 1, NULL, N'17452f8f-7544-4e7c-be2a-a8976c6cf019', N'Γάντια Box EverLast', N'Μεγεθος Large Χρώμα Red/Whte', 2500, NULL, 1, NULL, CAST(N'2020-06-11T15:53:02.790' AS DateTime), NULL, CAST(N'2020-06-11T15:53:02.790' AS DateTime), 0, N'images/pictures/gantia.jpg', N'fbdc6445-83a0-4c7a-beed-3650ac8ee9c5', NULL)
INSERT [dbo].[nthing_Store_Product] ([ProductId], [ProductStatusDescriptorId], [ProductTypeId], [BaseSku], [ProductGuid], [Name], [ShortDescription], [Price_f], [MinPrice_f], [IsEnabled], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [prodPhoto], [UserId], [AuctEndTime]) VALUES (5022, 1, 1, NULL, N'cc2151e8-7fef-4127-8023-f9d5a32fe406', N'Λάστιχο Ποτίσματος', N'20 μέτρα ', 1200, NULL, 1, NULL, CAST(N'2020-06-11T15:54:50.393' AS DateTime), NULL, CAST(N'2020-06-11T15:54:50.393' AS DateTime), 0, N'images/pictures/lastixo pot.jpg', N'221962bf-b45b-41a6-96be-2146076aad12', NULL)
INSERT [dbo].[nthing_Store_Product] ([ProductId], [ProductStatusDescriptorId], [ProductTypeId], [BaseSku], [ProductGuid], [Name], [ShortDescription], [Price_f], [MinPrice_f], [IsEnabled], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [prodPhoto], [UserId], [AuctEndTime]) VALUES (5023, 1, 1, NULL, N'00daf9b5-4033-4122-a433-6a22c3e608cc', N'Πιστολι Εκτόξευσης Νερού', N'Με 8 διαφορετικούς ψεκαστήρες', 2000, NULL, 1, NULL, CAST(N'2020-06-11T15:58:07.427' AS DateTime), NULL, CAST(N'2020-06-11T15:58:07.427' AS DateTime), 0, N'images/pictures/pistoli.jpg', N'221962bf-b45b-41a6-96be-2146076aad12', NULL)
INSERT [dbo].[nthing_Store_Product] ([ProductId], [ProductStatusDescriptorId], [ProductTypeId], [BaseSku], [ProductGuid], [Name], [ShortDescription], [Price_f], [MinPrice_f], [IsEnabled], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [prodPhoto], [UserId], [AuctEndTime]) VALUES (5024, 1, 1, NULL, N'afb3cfda-ac37-40ca-bb1a-6bfe73fbbda4', N'Gel βαθυ καθαρισμου προσωπου', N'Ιδανικο για ολους τους τυπους δερματος', 1000, NULL, 1, NULL, CAST(N'2020-06-11T15:59:20.647' AS DateTime), NULL, CAST(N'2020-06-11T15:59:20.647' AS DateTime), 0, N'images/pictures/gel.jpg', N'fbdc6445-83a0-4c7a-beed-3650ac8ee9c5', NULL)
INSERT [dbo].[nthing_Store_Product] ([ProductId], [ProductStatusDescriptorId], [ProductTypeId], [BaseSku], [ProductGuid], [Name], [ShortDescription], [Price_f], [MinPrice_f], [IsEnabled], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [prodPhoto], [UserId], [AuctEndTime]) VALUES (5025, 1, 1, NULL, N'3b20c568-51d1-4363-94f2-c810c08289b5', N'Σφουγγαρι απολεπισης', N'Ιδανικό για ολες τις επιδερμιδες', 500, NULL, 1, NULL, CAST(N'2020-06-11T16:00:29.820' AS DateTime), NULL, CAST(N'2020-06-11T16:00:29.820' AS DateTime), 0, N'images/pictures/sfoygg.jpg', N'fbdc6445-83a0-4c7a-beed-3650ac8ee9c5', NULL)
INSERT [dbo].[nthing_Store_Product] ([ProductId], [ProductStatusDescriptorId], [ProductTypeId], [BaseSku], [ProductGuid], [Name], [ShortDescription], [Price_f], [MinPrice_f], [IsEnabled], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [prodPhoto], [UserId], [AuctEndTime]) VALUES (5028, 1, 1, NULL, N'715ef78a-7b3c-4d90-9b9a-d051bcffbb6d', N'Nike Phantom Vision', N'Size 44 colour Pink/Black', 6000, NULL, 1, NULL, CAST(N'2020-06-11T16:04:03.440' AS DateTime), NULL, CAST(N'2020-06-11T16:04:03.440' AS DateTime), 0, N'images/pictures/fantom.jpg', N'fbdc6445-83a0-4c7a-beed-3650ac8ee9c5', NULL)
SET IDENTITY_INSERT [dbo].[nthing_Store_Product] OFF
INSERT [dbo].[nthing_Store_Product_Category_Map] ([ProductId], [CategoryId], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (5001, 2, NULL, CAST(N'2020-06-09T19:14:09.037' AS DateTime), NULL, CAST(N'2020-06-09T19:14:09.037' AS DateTime))
INSERT [dbo].[nthing_Store_Product_Category_Map] ([ProductId], [CategoryId], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (5003, 8, NULL, CAST(N'2020-06-09T19:13:46.560' AS DateTime), NULL, CAST(N'2020-06-09T19:13:46.560' AS DateTime))
INSERT [dbo].[nthing_Store_Product_Category_Map] ([ProductId], [CategoryId], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (5004, 2, NULL, CAST(N'2020-06-11T16:10:01.257' AS DateTime), NULL, CAST(N'2020-06-11T16:10:01.257' AS DateTime))
INSERT [dbo].[nthing_Store_Product_Category_Map] ([ProductId], [CategoryId], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (5006, 2, NULL, CAST(N'2020-06-11T16:10:05.653' AS DateTime), NULL, CAST(N'2020-06-11T16:10:05.653' AS DateTime))
INSERT [dbo].[nthing_Store_Product_Category_Map] ([ProductId], [CategoryId], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (5007, 2, NULL, CAST(N'2020-06-11T16:10:09.963' AS DateTime), NULL, CAST(N'2020-06-11T16:10:09.963' AS DateTime))
INSERT [dbo].[nthing_Store_Product_Category_Map] ([ProductId], [CategoryId], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (5008, 2, NULL, CAST(N'2020-06-11T16:10:13.900' AS DateTime), NULL, CAST(N'2020-06-11T16:10:13.900' AS DateTime))
INSERT [dbo].[nthing_Store_Product_Category_Map] ([ProductId], [CategoryId], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (5009, 2, NULL, CAST(N'2020-06-11T16:10:17.523' AS DateTime), NULL, CAST(N'2020-06-11T16:10:17.523' AS DateTime))
INSERT [dbo].[nthing_Store_Product_Category_Map] ([ProductId], [CategoryId], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (5010, 2, NULL, CAST(N'2020-06-11T16:10:27.343' AS DateTime), NULL, CAST(N'2020-06-11T16:10:27.343' AS DateTime))
INSERT [dbo].[nthing_Store_Product_Category_Map] ([ProductId], [CategoryId], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (5011, 8, NULL, CAST(N'2020-06-11T16:10:31.430' AS DateTime), NULL, CAST(N'2020-06-11T16:10:31.430' AS DateTime))
INSERT [dbo].[nthing_Store_Product_Category_Map] ([ProductId], [CategoryId], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (5012, 8, NULL, CAST(N'2020-06-11T16:10:34.867' AS DateTime), NULL, CAST(N'2020-06-11T16:10:34.867' AS DateTime))
INSERT [dbo].[nthing_Store_Product_Category_Map] ([ProductId], [CategoryId], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (5013, 8, NULL, CAST(N'2020-06-11T16:10:39.050' AS DateTime), NULL, CAST(N'2020-06-11T16:10:39.050' AS DateTime))
INSERT [dbo].[nthing_Store_Product_Category_Map] ([ProductId], [CategoryId], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (5014, 8, NULL, CAST(N'2020-06-11T16:10:43.247' AS DateTime), NULL, CAST(N'2020-06-11T16:10:43.247' AS DateTime))
INSERT [dbo].[nthing_Store_Product_Category_Map] ([ProductId], [CategoryId], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (5015, 8, NULL, CAST(N'2020-06-11T16:10:47.960' AS DateTime), NULL, CAST(N'2020-06-11T16:10:47.960' AS DateTime))
INSERT [dbo].[nthing_Store_Product_Category_Map] ([ProductId], [CategoryId], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (5016, 5, NULL, CAST(N'2020-06-11T16:10:59.167' AS DateTime), NULL, CAST(N'2020-06-11T16:10:59.167' AS DateTime))
INSERT [dbo].[nthing_Store_Product_Category_Map] ([ProductId], [CategoryId], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (5017, 5, NULL, CAST(N'2020-06-11T16:11:02.083' AS DateTime), NULL, CAST(N'2020-06-11T16:11:02.083' AS DateTime))
INSERT [dbo].[nthing_Store_Product_Category_Map] ([ProductId], [CategoryId], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (5018, 5, NULL, CAST(N'2020-06-11T16:11:05.520' AS DateTime), NULL, CAST(N'2020-06-11T16:11:05.520' AS DateTime))
INSERT [dbo].[nthing_Store_Product_Category_Map] ([ProductId], [CategoryId], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (5019, 3, NULL, CAST(N'2020-06-11T16:11:17.497' AS DateTime), NULL, CAST(N'2020-06-11T16:11:17.497' AS DateTime))
INSERT [dbo].[nthing_Store_Product_Category_Map] ([ProductId], [CategoryId], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (5020, 3, NULL, CAST(N'2020-06-11T16:11:22.177' AS DateTime), NULL, CAST(N'2020-06-11T16:11:22.177' AS DateTime))
INSERT [dbo].[nthing_Store_Product_Category_Map] ([ProductId], [CategoryId], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (5021, 3, NULL, CAST(N'2020-06-11T16:11:25.933' AS DateTime), NULL, CAST(N'2020-06-11T16:11:25.933' AS DateTime))
INSERT [dbo].[nthing_Store_Product_Category_Map] ([ProductId], [CategoryId], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (5022, 7, NULL, CAST(N'2020-06-11T16:11:39.363' AS DateTime), NULL, CAST(N'2020-06-11T16:11:39.363' AS DateTime))
INSERT [dbo].[nthing_Store_Product_Category_Map] ([ProductId], [CategoryId], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (5023, 7, NULL, CAST(N'2020-06-11T16:11:42.777' AS DateTime), NULL, CAST(N'2020-06-11T16:11:42.777' AS DateTime))
INSERT [dbo].[nthing_Store_Product_Category_Map] ([ProductId], [CategoryId], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (5024, 4, NULL, CAST(N'2020-06-11T16:11:48.270' AS DateTime), NULL, CAST(N'2020-06-11T16:11:48.270' AS DateTime))
INSERT [dbo].[nthing_Store_Product_Category_Map] ([ProductId], [CategoryId], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (5025, 4, NULL, CAST(N'2020-06-11T16:12:05.067' AS DateTime), NULL, CAST(N'2020-06-11T16:12:05.067' AS DateTime))
INSERT [dbo].[nthing_Store_Product_Category_Map] ([ProductId], [CategoryId], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (5028, 3, NULL, CAST(N'2020-06-11T16:11:31.237' AS DateTime), NULL, CAST(N'2020-06-11T16:11:31.237' AS DateTime))
ALTER TABLE [dbo].[AspNetUsers] ADD  CONSTRAINT [DF_AspNetUsers_UserRating]  DEFAULT ((0)) FOR [UserRating]
GO
ALTER TABLE [dbo].[nthing_Auction_Trans] ADD  CONSTRAINT [DF_nthing_Auction_Trans_bidTime]  DEFAULT (getdate()) FOR [bidTime]
GO
ALTER TABLE [dbo].[nthing_Store_Category] ADD  CONSTRAINT [DF_nthing_Store_Category_categoryGUID]  DEFAULT (newid()) FOR [CategoryGuid]
GO
ALTER TABLE [dbo].[nthing_Store_Category] ADD  CONSTRAINT [DF_nthing_ProductCategories_parentID]  DEFAULT ((0)) FOR [ParentId]
GO
ALTER TABLE [dbo].[nthing_Store_Category] ADD  CONSTRAINT [DF_nthing_Store_Category_createdOn]  DEFAULT (getutcdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[nthing_Store_Category] ADD  CONSTRAINT [DF_nthing_Store_Category_modifiedOn]  DEFAULT (getutcdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[nthing_Store_Order] ADD  CONSTRAINT [DF_nthing_Store_Order_modifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[nthing_Store_Order] ADD  CONSTRAINT [DF_nthing_Store_Order_OrderQuant]  DEFAULT ((1)) FOR [OrderQuant]
GO
ALTER TABLE [dbo].[nthing_Store_Product] ADD  CONSTRAINT [DF_nthing_Products_statusID]  DEFAULT ((1)) FOR [ProductStatusDescriptorId]
GO
ALTER TABLE [dbo].[nthing_Store_Product] ADD  CONSTRAINT [DF_nthing_Products_productTypeID]  DEFAULT ((1)) FOR [ProductTypeId]
GO
ALTER TABLE [dbo].[nthing_Store_Product] ADD  CONSTRAINT [DF_nthing_Store_Product_productGUID]  DEFAULT (newid()) FOR [ProductGuid]
GO
ALTER TABLE [dbo].[nthing_Store_Product] ADD  CONSTRAINT [DF_nthing_Store_Product_IsLocked]  DEFAULT ((0)) FOR [IsEnabled]
GO
ALTER TABLE [dbo].[nthing_Store_Product] ADD  CONSTRAINT [DF_nthing_Store_Product_createdOn]  DEFAULT (getutcdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[nthing_Store_Product] ADD  CONSTRAINT [DF_nthing_Store_Product_modifiedOn]  DEFAULT (getutcdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[nthing_Store_Product] ADD  CONSTRAINT [DF_nthing_Products_isDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[nthing_Store_Product_Category_Map] ADD  CONSTRAINT [DF_nthing_Store_Product_Category_Map_createdOn]  DEFAULT (getutcdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[nthing_Store_Product_Category_Map] ADD  CONSTRAINT [DF_nthing_Store_Product_Category_Map_modifiedOn]  DEFAULT (getutcdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[nthing_Store_userRating] ADD  CONSTRAINT [DF_nthing_Store_Rating_createdOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "nthing_Store_Product"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 203
               Right = 265
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "nthing_Store_Order"
            Begin Extent = 
               Top = 6
               Left = 303
               Bottom = 194
               Right = 489
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_nthing_CartProducts'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_nthing_CartProducts'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[24] 2[26] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "nthing_Store_Product"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 208
               Right = 265
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "AspNetUsers"
            Begin Extent = 
               Top = 144
               Left = 579
               Bottom = 274
               Right = 803
            End
            DisplayFlags = 280
            TopColumn = 10
         End
         Begin Table = "nthing_Store_Product_Category_Map"
            Begin Extent = 
               Top = 18
               Left = 303
               Bottom = 186
               Right = 541
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "nthing_Store_Category"
            Begin Extent = 
               Top = 13
               Left = 622
               Bottom = 143
               Right = 792
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 24
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Wi' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_nthing_CatProducts'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'dth = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 8490
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_nthing_CatProducts'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_nthing_CatProducts'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "nthing_Store_Product"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 212
               Right = 265
            End
            DisplayFlags = 280
            TopColumn = 10
         End
         Begin Table = "nthing_Store_CrossSell"
            Begin Extent = 
               Top = 6
               Left = 303
               Bottom = 151
               Right = 473
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_nthing_Crossell'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_nthing_Crossell'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "nthing_Store_Product"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 216
               Right = 265
            End
            DisplayFlags = 280
            TopColumn = 11
         End
         Begin Table = "AspNetUsers"
            Begin Extent = 
               Top = 19
               Left = 389
               Bottom = 149
               Right = 614
            End
            DisplayFlags = 280
            TopColumn = 12
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 22
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_nthing_UsrProducts'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_nthing_UsrProducts'
GO
