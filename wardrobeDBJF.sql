USE [master]
GO
/****** Object:  Database [WardrobeDB]    Script Date: 3/26/2018 9:06:13 AM ******/
CREATE DATABASE [WardrobeDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WardrobeDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\WardrobeDB.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'WardrobeDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\WardrobeDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [WardrobeDB] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WardrobeDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WardrobeDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WardrobeDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WardrobeDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WardrobeDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WardrobeDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [WardrobeDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WardrobeDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WardrobeDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WardrobeDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WardrobeDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WardrobeDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WardrobeDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WardrobeDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WardrobeDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WardrobeDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WardrobeDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WardrobeDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WardrobeDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WardrobeDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WardrobeDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WardrobeDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WardrobeDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WardrobeDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [WardrobeDB] SET  MULTI_USER 
GO
ALTER DATABASE [WardrobeDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WardrobeDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WardrobeDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WardrobeDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [WardrobeDB] SET DELAYED_DURABILITY = DISABLED 
GO
USE [WardrobeDB]
GO
/****** Object:  Table [dbo].[Accessories]    Script Date: 3/26/2018 9:06:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accessories](
	[AccessoryID] [int] IDENTITY(1,1) NOT NULL,
	[AccessoryName] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](200) NOT NULL,
	[AccessoryType] [nvarchar](50) NOT NULL,
	[Color] [nvarchar](50) NOT NULL,
	[Season] [nvarchar](50) NOT NULL,
	[Occasion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Accessories] PRIMARY KEY CLUSTERED 
(
	[AccessoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Bottoms]    Script Date: 3/26/2018 9:06:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bottoms](
	[BottomID] [int] IDENTITY(1,1) NOT NULL,
	[BottomName] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](200) NOT NULL,
	[BottomType] [nvarchar](50) NOT NULL,
	[Color] [nvarchar](50) NOT NULL,
	[Season] [nvarchar](50) NOT NULL,
	[Occasion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Bottoms] PRIMARY KEY CLUSTERED 
(
	[BottomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Outfits]    Script Date: 3/26/2018 9:06:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Outfits](
	[OutfitID] [int] IDENTITY(1,1) NOT NULL,
	[OutfitName] [nchar](10) NULL,
	[TopID] [int] NOT NULL,
	[BottomID] [int] NOT NULL,
	[ShoesID] [int] NOT NULL,
	[AccessoryID] [int] NOT NULL,
 CONSTRAINT [PK_Outfits] PRIMARY KEY CLUSTERED 
(
	[OutfitID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Shoes]    Script Date: 3/26/2018 9:06:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shoes](
	[ShoesID] [int] IDENTITY(1,1) NOT NULL,
	[ShoesName] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](200) NOT NULL,
	[ShoeType] [nvarchar](50) NOT NULL,
	[Color] [nvarchar](50) NOT NULL,
	[Season] [nvarchar](50) NOT NULL,
	[Occasion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Shoes] PRIMARY KEY CLUSTERED 
(
	[ShoesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tops]    Script Date: 3/26/2018 9:06:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tops](
	[TopID] [int] IDENTITY(1,1) NOT NULL,
	[TopName] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](200) NOT NULL,
	[TopType] [nvarchar](50) NOT NULL,
	[Color] [nvarchar](50) NOT NULL,
	[Season] [nvarchar](50) NOT NULL,
	[Occasion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Tops] PRIMARY KEY CLUSTERED 
(
	[TopID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Accessories] ON 

INSERT [dbo].[Accessories] ([AccessoryID], [AccessoryName], [Photo], [AccessoryType], [Color], [Season], [Occasion]) VALUES (1, N'Dress Ties', N'\content\ImgFolder\AccTie6.gif', N'Tie', N'Stripe', N'All', N'Formal')
INSERT [dbo].[Accessories] ([AccessoryID], [AccessoryName], [Photo], [AccessoryType], [Color], [Season], [Occasion]) VALUES (2, N'Tie', N'\content\ImgFolder\AccTie3.gif', N'tie', N'Multiple', N'All', N'Most Occasions')
INSERT [dbo].[Accessories] ([AccessoryID], [AccessoryName], [Photo], [AccessoryType], [Color], [Season], [Occasion]) VALUES (3, N'Tie', N'\content\ImgFolder\AccTie4.gif', N'Tie', N'Multiple', N'All', N'musical')
INSERT [dbo].[Accessories] ([AccessoryID], [AccessoryName], [Photo], [AccessoryType], [Color], [Season], [Occasion]) VALUES (5, N'Hat', N'\content\ImgFolder\Hats.gif', N'Hat', N'white', N'All', N'Most Occasions')
INSERT [dbo].[Accessories] ([AccessoryID], [AccessoryName], [Photo], [AccessoryType], [Color], [Season], [Occasion]) VALUES (6, N'Service Hats', N'\content\ImgFolder\Hats2.gif', N'Hat', N'A few', N'All', N'Most Occasions')
INSERT [dbo].[Accessories] ([AccessoryID], [AccessoryName], [Photo], [AccessoryType], [Color], [Season], [Occasion]) VALUES (7, N'Athletic Hats', N'\content\ImgFolder\Hat3.gif', N'Hat', N'Multiple', N'All', N'sporting')
SET IDENTITY_INSERT [dbo].[Accessories] OFF
SET IDENTITY_INSERT [dbo].[Bottoms] ON 

INSERT [dbo].[Bottoms] ([BottomID], [BottomName], [Photo], [BottomType], [Color], [Season], [Occasion]) VALUES (1, N'Boxer Shorts', N'\content\ImgFolder\PantsNo.gif', N'Boxer', N'Various', N'All', N'Good for Most Occasions')
SET IDENTITY_INSERT [dbo].[Bottoms] OFF
SET IDENTITY_INSERT [dbo].[Shoes] ON 

INSERT [dbo].[Shoes] ([ShoesID], [ShoesName], [Photo], [ShoeType], [Color], [Season], [Occasion]) VALUES (1, N'KIMMYS', N'\content\ImgFolder\ShoeJordans.gif', N'Sneakers', N'A bunch of color', N'All', N'Most Occasions')
INSERT [dbo].[Shoes] ([ShoesID], [ShoesName], [Photo], [ShoeType], [Color], [Season], [Occasion]) VALUES (2, N'Dress Shoes', N'\content\ImgFolder\Shoe3.gif', N'dress', N'Various', N'All', N'Formal')
INSERT [dbo].[Shoes] ([ShoesID], [ShoesName], [Photo], [ShoeType], [Color], [Season], [Occasion]) VALUES (3, N'These Shoes', N'\content\ImgFolder\Shoes7.gif', N'Various', N'A few', N'All', N'Most Occasions')
INSERT [dbo].[Shoes] ([ShoesID], [ShoesName], [Photo], [ShoeType], [Color], [Season], [Occasion]) VALUES (4, N'Other Shoes', N'\content\ImgFolder\ShoesGif.gif', N'dress', N'brown', N'All', N'Most Occasions')
INSERT [dbo].[Shoes] ([ShoesID], [ShoesName], [Photo], [ShoeType], [Color], [Season], [Occasion]) VALUES (5, N'Walking Shoes', N'\content\ImgFolder\Shoe4.gif', N'Sneakers', N'red', N'All', N'Not all Occasions')
SET IDENTITY_INSERT [dbo].[Shoes] OFF
SET IDENTITY_INSERT [dbo].[Tops] ON 

INSERT [dbo].[Tops] ([TopID], [TopName], [Photo], [TopType], [Color], [Season], [Occasion]) VALUES (1, N'Three Piece Suits', N'\content\ImgFolder\men_suits_promotion-01.gif', N'Jacket', N'Black', N'All', N' One Day Only $2,589.79 While Supplies Last')
INSERT [dbo].[Tops] ([TopID], [TopName], [Photo], [TopType], [Color], [Season], [Occasion]) VALUES (2, N'Dress Shirts', N'\content\ImgFolder\Shirt-Model-GIF.gif', N'Shirt', N'Multiple', N'All', N'Starting as low as $269.99')
INSERT [dbo].[Tops] ([TopID], [TopName], [Photo], [TopType], [Color], [Season], [Occasion]) VALUES (3, N'Men''s Suits', N'\content\ImgFolder\MensSuit.gif', N'Suits', N'Various', N'All', N'March Madness 25% OFF $1,289.99')
INSERT [dbo].[Tops] ([TopID], [TopName], [Photo], [TopType], [Color], [Season], [Occasion]) VALUES (4, N'Tuxedo Style', N'\content\ImgFolder\OutfitSuit.jpg', N'Tuxs', N'A few', N'All', N'Check Availability $1,899.99')
SET IDENTITY_INSERT [dbo].[Tops] OFF
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Accessories] FOREIGN KEY([AccessoryID])
REFERENCES [dbo].[Accessories] ([AccessoryID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Accessories]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Bottoms] FOREIGN KEY([BottomID])
REFERENCES [dbo].[Bottoms] ([BottomID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Bottoms]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Shoes] FOREIGN KEY([ShoesID])
REFERENCES [dbo].[Shoes] ([ShoesID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Shoes]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Tops] FOREIGN KEY([TopID])
REFERENCES [dbo].[Tops] ([TopID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Tops]
GO
USE [master]
GO
ALTER DATABASE [WardrobeDB] SET  READ_WRITE 
GO
