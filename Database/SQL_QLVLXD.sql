USE [master]
GO
/****** Object:  Database [QL_Vat_Lieu_Xay_Dung]    Script Date: 7/20/2020 7:27:23 PM ******/
CREATE DATABASE [QL_Vat_Lieu_Xay_Dung]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QL_Vat_Lieu_Xay_Dung', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\QL_Vat_Lieu_Xay_Dung.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QL_Vat_Lieu_Xay_Dung_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\QL_Vat_Lieu_Xay_Dung_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QL_Vat_Lieu_Xay_Dung] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QL_Vat_Lieu_Xay_Dung].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QL_Vat_Lieu_Xay_Dung] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QL_Vat_Lieu_Xay_Dung] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QL_Vat_Lieu_Xay_Dung] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QL_Vat_Lieu_Xay_Dung] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QL_Vat_Lieu_Xay_Dung] SET ARITHABORT OFF 
GO
ALTER DATABASE [QL_Vat_Lieu_Xay_Dung] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QL_Vat_Lieu_Xay_Dung] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QL_Vat_Lieu_Xay_Dung] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QL_Vat_Lieu_Xay_Dung] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QL_Vat_Lieu_Xay_Dung] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QL_Vat_Lieu_Xay_Dung] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QL_Vat_Lieu_Xay_Dung] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QL_Vat_Lieu_Xay_Dung] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QL_Vat_Lieu_Xay_Dung] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QL_Vat_Lieu_Xay_Dung] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QL_Vat_Lieu_Xay_Dung] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QL_Vat_Lieu_Xay_Dung] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QL_Vat_Lieu_Xay_Dung] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QL_Vat_Lieu_Xay_Dung] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QL_Vat_Lieu_Xay_Dung] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QL_Vat_Lieu_Xay_Dung] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [QL_Vat_Lieu_Xay_Dung] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QL_Vat_Lieu_Xay_Dung] SET RECOVERY FULL 
GO
ALTER DATABASE [QL_Vat_Lieu_Xay_Dung] SET  MULTI_USER 
GO
ALTER DATABASE [QL_Vat_Lieu_Xay_Dung] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QL_Vat_Lieu_Xay_Dung] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QL_Vat_Lieu_Xay_Dung] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QL_Vat_Lieu_Xay_Dung] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QL_Vat_Lieu_Xay_Dung] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'QL_Vat_Lieu_Xay_Dung', N'ON'
GO
ALTER DATABASE [QL_Vat_Lieu_Xay_Dung] SET QUERY_STORE = OFF
GO
USE [QL_Vat_Lieu_Xay_Dung]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 7/20/2020 7:27:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Announcements]    Script Date: 7/20/2020 7:27:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Announcements](
	[Id] [nvarchar](450) NOT NULL,
	[Title] [nvarchar](250) NOT NULL,
	[Content] [nvarchar](250) NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[DateCreated] [datetime2](7) NOT NULL,
	[DateModified] [datetime2](7) NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_Announcements] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AnnouncementUsers]    Script Date: 7/20/2020 7:27:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnnouncementUsers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[HasRead] [bit] NULL,
	[AnnouncementId] [nvarchar](450) NULL,
 CONSTRAINT [PK_AnnouncementUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppRoleClaims]    Script Date: 7/20/2020 7:27:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AppRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppRoles]    Script Date: 7/20/2020 7:27:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppRoles](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[NormalizedName] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Description] [nvarchar](250) NULL,
 CONSTRAINT [PK_AppRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppUserClaims]    Script Date: 7/20/2020 7:27:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AppUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppUserLogins]    Script Date: 7/20/2020 7:27:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppUserLogins](
	[UserId] [uniqueidentifier] NOT NULL,
	[LoginProvider] [nvarchar](max) NULL,
	[ProviderKey] [nvarchar](max) NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
 CONSTRAINT [PK_AppUserLogins] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppUserRoles]    Script Date: 7/20/2020 7:27:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppUserRoles](
	[UserId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_AppUserRoles] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppUsers]    Script Date: 7/20/2020 7:27:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppUsers](
	[Id] [uniqueidentifier] NOT NULL,
	[UserName] [nvarchar](max) NULL,
	[NormalizedUserName] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[NormalizedEmail] [nvarchar](max) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[FullName] [nvarchar](max) NULL,
	[BirthDay] [datetime2](7) NULL,
	[Avatar] [nvarchar](max) NULL,
	[DateCreated] [datetime2](7) NOT NULL,
	[DateModified] [datetime2](7) NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_AppUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppUserTokens]    Script Date: 7/20/2020 7:27:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppUserTokens](
	[UserId] [uniqueidentifier] NOT NULL,
	[LoginProvider] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AppUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BillDetails]    Script Date: 7/20/2020 7:27:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BillDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BillId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[SizeId] [int] NOT NULL,
 CONSTRAINT [PK_BillDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bills]    Script Date: 7/20/2020 7:27:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bills](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [nvarchar](256) NOT NULL,
	[CustomerAddress] [nvarchar](256) NOT NULL,
	[CustomerMobile] [nvarchar](256) NOT NULL,
	[CustomerMessage] [nvarchar](256) NOT NULL,
	[PaymentMethod] [int] NOT NULL,
	[BillStatus] [int] NOT NULL,
	[CustomerId] [uniqueidentifier] NULL,
	[Status] [int] NOT NULL,
	[DateCreated] [datetime2](7) NOT NULL,
	[DateModified] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Bills] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContactDetails]    Script Date: 7/20/2020 7:27:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactDetails](
	[Id] [nvarchar](255) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Phone] [nvarchar](50) NULL,
	[Email] [nvarchar](250) NULL,
	[Website] [nvarchar](250) NULL,
	[Address] [nvarchar](250) NULL,
	[Other] [nvarchar](max) NULL,
	[Lat] [float] NULL,
	[Lng] [float] NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_ContactDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedbacks]    Script Date: 7/20/2020 7:27:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedbacks](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Email] [nvarchar](250) NULL,
	[Message] [nvarchar](500) NULL,
	[Status] [int] NOT NULL,
	[DateCreated] [datetime2](7) NOT NULL,
	[DateModified] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Feedbacks] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Footers]    Script Date: 7/20/2020 7:27:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Footers](
	[Id] [varchar](255) NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Footers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Functions]    Script Date: 7/20/2020 7:27:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Functions](
	[Id] [varchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[URL] [nvarchar](250) NOT NULL,
	[ParentId] [nvarchar](128) NULL,
	[IconCss] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
	[SortOrder] [int] NOT NULL,
 CONSTRAINT [PK_Functions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Permissions]    Script Date: 7/20/2020 7:27:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permissions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[FunctionId] [varchar](128) NOT NULL,
	[CanCreate] [bit] NOT NULL,
	[CanRead] [bit] NOT NULL,
	[CanUpdate] [bit] NOT NULL,
	[CanDelete] [bit] NOT NULL,
 CONSTRAINT [PK_Permissions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCategories]    Script Date: 7/20/2020 7:27:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[ParentId] [int] NULL,
	[HomeOrder] [int] NULL,
	[Image] [nvarchar](max) NULL,
	[HomeFlag] [bit] NULL,
	[Status] [int] NOT NULL,
	[DateCreated] [datetime2](7) NOT NULL,
	[DateModified] [datetime2](7) NOT NULL,
	[SeoPageTitle] [nvarchar](max) NULL,
	[SeoAlias] [varchar](255) NULL,
	[SeoKeywords] [nvarchar](255) NULL,
	[SeoDescription] [nvarchar](255) NULL,
	[SortOrder] [int] NOT NULL,
 CONSTRAINT [PK_ProductCategories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductImages]    Script Date: 7/20/2020 7:27:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductImages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[Path] [nvarchar](250) NULL,
	[Caption] [nvarchar](250) NULL,
 CONSTRAINT [PK_ProductImages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductQuantities]    Script Date: 7/20/2020 7:27:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductQuantities](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[SizeId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_ProductQuantities] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 7/20/2020 7:27:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[Image] [nvarchar](255) NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[PromotionPrice] [decimal](18, 2) NULL,
	[OriginalPrice] [decimal](18, 2) NOT NULL,
	[Description] [nvarchar](255) NULL,
	[Content] [nvarchar](max) NULL,
	[HomeFlag] [bit] NULL,
	[HotFlag] [bit] NULL,
	[ViewCount] [int] NULL,
	[Tags] [nvarchar](255) NULL,
	[Unit] [nvarchar](255) NULL,
	[Status] [int] NOT NULL,
	[DateCreated] [datetime2](7) NOT NULL,
	[DateModified] [datetime2](7) NOT NULL,
	[SeoPageTitle] [nvarchar](max) NULL,
	[SeoAlias] [varchar](255) NULL,
	[SeoKeywords] [nvarchar](255) NULL,
	[SeoDescription] [nvarchar](255) NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductTags]    Script Date: 7/20/2020 7:27:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductTags](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[TagId] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ProductTags] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sizes]    Script Date: 7/20/2020 7:27:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sizes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
 CONSTRAINT [PK_Sizes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slides]    Script Date: 7/20/2020 7:27:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slides](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Description] [nvarchar](250) NULL,
	[Image] [nvarchar](250) NOT NULL,
	[Url] [nvarchar](250) NULL,
	[DisplayOrder] [int] NULL,
	[Status] [int] NOT NULL,
	[Content] [nvarchar](max) NULL,
	[GroupAlias] [nvarchar](25) NOT NULL,
 CONSTRAINT [PK_Slides] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SystemConfigs]    Script Date: 7/20/2020 7:27:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemConfigs](
	[Id] [nvarchar](255) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value1] [nvarchar](max) NULL,
	[Value2] [int] NULL,
	[Value3] [bit] NULL,
	[Value4] [datetime2](7) NULL,
	[Value5] [decimal](18, 2) NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_SystemConfigs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tags]    Script Date: 7/20/2020 7:27:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tags](
	[Id] [varchar](50) NOT NULL,
	[ProductId] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Tags] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200719061341_initial', N'3.0.3')
GO
INSERT [dbo].[AppRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp], [Description]) VALUES (N'61600fb3-e720-48de-60b6-08d82bab319b', N'Admin', N'ADMIN', N'5b09301d-f57d-4a18-995c-6d11710b1bc2', N'Top manager')
INSERT [dbo].[AppRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp], [Description]) VALUES (N'4810981a-aa44-4f31-60b7-08d82bab319b', N'Staff', N'STAFF', N'1526c514-7a87-41b5-a6b6-7fe9f0d086ef', N'Staff')
INSERT [dbo].[AppRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp], [Description]) VALUES (N'23b95115-880e-4efc-60b8-08d82bab319b', N'Customer', N'CUSTOMER', N'b207b75f-cdd2-4fa4-90a1-77265322a62a', N'Customer')
GO
INSERT [dbo].[AppUserRoles] ([UserId], [RoleId]) VALUES (N'82d41d87-7573-4ed9-aad8-08d82bab31c2', N'61600fb3-e720-48de-60b6-08d82bab319b')
INSERT [dbo].[AppUserRoles] ([UserId], [RoleId]) VALUES (N'ff6555c1-d309-4a3d-3bd0-08d82bb547eb', N'23b95115-880e-4efc-60b8-08d82bab319b')
GO
INSERT [dbo].[AppUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FullName], [BirthDay], [Avatar], [DateCreated], [DateModified], [Status]) VALUES (N'82d41d87-7573-4ed9-aad8-08d82bab31c2', N'admin', N'ADMIN', N'admin@gmail.com', N'ADMIN@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEM0GlFaVYNcK63OvjpH+bvbcEbxcRv8eFqZqquWXhMa6S9icxnSKnhQuMfYdW9DPfA==', N'3IKA26OWLDQFOXV4OKWFFOQUSHEDXQLF', N'bbc7f7b1-c518-4e56-9513-d8a040c38f27', NULL, 0, 0, NULL, 1, 0, N'Administrator', NULL, NULL, CAST(N'2020-07-19T13:15:54.6542950' AS DateTime2), CAST(N'2020-07-19T13:15:54.6555282' AS DateTime2), 1)
INSERT [dbo].[AppUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FullName], [BirthDay], [Avatar], [DateCreated], [DateModified], [Status]) VALUES (N'ff6555c1-d309-4a3d-3bd0-08d82bb547eb', N'adminTest', N'ADMINTEST', N'test@gmail.com', N'TEST@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEM1O2Uc8+oWzF1LCqcc4zEykfWU5KKsNWAQWrKmiGoe2gVOhovLMmN/MDoh/d8SkZw==', N'K4WY2CSSDJT77ZQGNMMEJJTIQMJ45JHN', N'd6fb2cfe-abc0-43c7-9403-200d638aebb6', N'0111222333', 0, 0, NULL, 1, 0, N'Tran Bao Long', NULL, NULL, CAST(N'2020-07-19T14:28:06.7976578' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1)
GO
SET IDENTITY_INSERT [dbo].[BillDetails] ON 

INSERT [dbo].[BillDetails] ([Id], [BillId], [ProductId], [Quantity], [Price], [SizeId]) VALUES (1, 1, 1, 3, CAST(350000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[BillDetails] ([Id], [BillId], [ProductId], [Quantity], [Price], [SizeId]) VALUES (2, 1, 12, 4, CAST(420000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[BillDetails] ([Id], [BillId], [ProductId], [Quantity], [Price], [SizeId]) VALUES (3, 1, 14, 4, CAST(500000.00 AS Decimal(18, 2)), 1)
SET IDENTITY_INSERT [dbo].[BillDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[Bills] ON 

INSERT [dbo].[Bills] ([Id], [CustomerName], [CustomerAddress], [CustomerMobile], [CustomerMessage], [PaymentMethod], [BillStatus], [CustomerId], [Status], [DateCreated], [DateModified]) VALUES (1, N'test', N'2', N'0111222333', N'2', 0, 0, NULL, 1, CAST(N'2020-07-19T14:44:38.8765902' AS DateTime2), CAST(N'2020-07-19T14:45:00.7029553' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Bills] OFF
GO
INSERT [dbo].[Footers] ([Id], [Content]) VALUES (N'DefaultFooterId', N'Footer')
GO
INSERT [dbo].[Functions] ([Id], [Name], [URL], [ParentId], [IconCss], [Status], [SortOrder]) VALUES (N'ACCESS', N'Báo cáo truy cập', N'/admin/report/visitor', N'REPORT', N'fa-bar-chart-o', 1, 2)
INSERT [dbo].[Functions] ([Id], [Name], [URL], [ParentId], [IconCss], [Status], [SortOrder]) VALUES (N'ACTIVITY', N'Nhật ký', N'/admin/activity/index', N'SYSTEM', N'fa-home', 1, 4)
INSERT [dbo].[Functions] ([Id], [Name], [URL], [ParentId], [IconCss], [Status], [SortOrder]) VALUES (N'ANNOUNCEMENT', N'Thông báo', N'/admin/announcement/index', N'UTILITY', N'fa-clone', 1, 3)
INSERT [dbo].[Functions] ([Id], [Name], [URL], [ParentId], [IconCss], [Status], [SortOrder]) VALUES (N'BILL', N'Hóa đơn', N'/admin/bill/index', N'PRODUCT', N'fa-chevron-down', 1, 3)
INSERT [dbo].[Functions] ([Id], [Name], [URL], [ParentId], [IconCss], [Status], [SortOrder]) VALUES (N'CONTACT', N'Liên hệ', N'/admin/contact/index', N'UTILITY', N'fa-clone', 1, 4)
INSERT [dbo].[Functions] ([Id], [Name], [URL], [ParentId], [IconCss], [Status], [SortOrder]) VALUES (N'CONTENT', N'Nội dung', N'/', NULL, N'fa-table', 1, 3)
INSERT [dbo].[Functions] ([Id], [Name], [URL], [ParentId], [IconCss], [Status], [SortOrder]) VALUES (N'ERROR', N'Lỗi', N'/admin/error/index', N'SYSTEM', N'fa-home', 1, 5)
INSERT [dbo].[Functions] ([Id], [Name], [URL], [ParentId], [IconCss], [Status], [SortOrder]) VALUES (N'FEEDBACK', N'Phản hồi', N'/admin/feedback/index', N'UTILITY', N'fa-clone', 1, 2)
INSERT [dbo].[Functions] ([Id], [Name], [URL], [ParentId], [IconCss], [Status], [SortOrder]) VALUES (N'FOOTER', N'Footer', N'/admin/footer/index', N'UTILITY', N'fa-clone', 1, 1)
INSERT [dbo].[Functions] ([Id], [Name], [URL], [ParentId], [IconCss], [Status], [SortOrder]) VALUES (N'FUNCTION', N'Chức năng', N'/admin/function/index', N'SYSTEM', N'fa-home', 1, 2)
INSERT [dbo].[Functions] ([Id], [Name], [URL], [ParentId], [IconCss], [Status], [SortOrder]) VALUES (N'PRODUCT', N'Sản phẩm', N'/', NULL, N'fa-chevron-down', 1, 2)
INSERT [dbo].[Functions] ([Id], [Name], [URL], [ParentId], [IconCss], [Status], [SortOrder]) VALUES (N'PRODUCT_CATEGORY', N'Danh mục', N'/admin/productcategory/index', N'PRODUCT', N'fa-chevron-down', 1, 1)
INSERT [dbo].[Functions] ([Id], [Name], [URL], [ParentId], [IconCss], [Status], [SortOrder]) VALUES (N'PRODUCT_LIST', N'Sản phẩm', N'/admin/product/index', N'PRODUCT', N'fa-chevron-down', 1, 2)
INSERT [dbo].[Functions] ([Id], [Name], [URL], [ParentId], [IconCss], [Status], [SortOrder]) VALUES (N'READER', N'Reader Report', N'/admin/report/reader', N'REPORT', N'fa-bar-chart-o', 1, 3)
INSERT [dbo].[Functions] ([Id], [Name], [URL], [ParentId], [IconCss], [Status], [SortOrder]) VALUES (N'REPORT', N'Báo cáo', N'/', NULL, N'fa-bar-chart-o', 1, 5)
INSERT [dbo].[Functions] ([Id], [Name], [URL], [ParentId], [IconCss], [Status], [SortOrder]) VALUES (N'REVENUES', N'Báo cáo doanh thu', N'/admin/report/revenues', N'REPORT', N'fa-bar-chart-o', 1, 1)
INSERT [dbo].[Functions] ([Id], [Name], [URL], [ParentId], [IconCss], [Status], [SortOrder]) VALUES (N'ROLE', N'Nhóm', N'/admin/role/index', N'SYSTEM', N'fa-home', 1, 1)
INSERT [dbo].[Functions] ([Id], [Name], [URL], [ParentId], [IconCss], [Status], [SortOrder]) VALUES (N'SETTING', N'Cấu hình', N'/admin/setting/index', N'SYSTEM', N'fa-home', 1, 6)
INSERT [dbo].[Functions] ([Id], [Name], [URL], [ParentId], [IconCss], [Status], [SortOrder]) VALUES (N'SLIDE', N'Slide', N'/admin/slide/index', N'UTILITY', N'fa-clone', 1, 5)
INSERT [dbo].[Functions] ([Id], [Name], [URL], [ParentId], [IconCss], [Status], [SortOrder]) VALUES (N'SYSTEM', N'Hệ thống', N'/', NULL, N'fa-desktop', 1, 1)
INSERT [dbo].[Functions] ([Id], [Name], [URL], [ParentId], [IconCss], [Status], [SortOrder]) VALUES (N'USER', N'Người dùng', N'/admin/user/index', N'SYSTEM', N'fa-home', 1, 3)
INSERT [dbo].[Functions] ([Id], [Name], [URL], [ParentId], [IconCss], [Status], [SortOrder]) VALUES (N'UTILITY', N'Tiện ích', N'/', NULL, N'fa-clone', 1, 4)
GO
SET IDENTITY_INSERT [dbo].[Permissions] ON 

INSERT [dbo].[Permissions] ([Id], [RoleId], [FunctionId], [CanCreate], [CanRead], [CanUpdate], [CanDelete]) VALUES (1, N'61600fb3-e720-48de-60b6-08d82bab319b', N'SYSTEM', 1, 1, 1, 1)
INSERT [dbo].[Permissions] ([Id], [RoleId], [FunctionId], [CanCreate], [CanRead], [CanUpdate], [CanDelete]) VALUES (2, N'61600fb3-e720-48de-60b6-08d82bab319b', N'REVENUES', 1, 1, 1, 1)
INSERT [dbo].[Permissions] ([Id], [RoleId], [FunctionId], [CanCreate], [CanRead], [CanUpdate], [CanDelete]) VALUES (3, N'61600fb3-e720-48de-60b6-08d82bab319b', N'REPORT', 1, 1, 1, 1)
INSERT [dbo].[Permissions] ([Id], [RoleId], [FunctionId], [CanCreate], [CanRead], [CanUpdate], [CanDelete]) VALUES (4, N'61600fb3-e720-48de-60b6-08d82bab319b', N'SLIDE', 1, 1, 1, 1)
INSERT [dbo].[Permissions] ([Id], [RoleId], [FunctionId], [CanCreate], [CanRead], [CanUpdate], [CanDelete]) VALUES (5, N'61600fb3-e720-48de-60b6-08d82bab319b', N'CONTACT', 1, 1, 1, 1)
INSERT [dbo].[Permissions] ([Id], [RoleId], [FunctionId], [CanCreate], [CanRead], [CanUpdate], [CanDelete]) VALUES (6, N'61600fb3-e720-48de-60b6-08d82bab319b', N'ANNOUNCEMENT', 1, 1, 1, 1)
INSERT [dbo].[Permissions] ([Id], [RoleId], [FunctionId], [CanCreate], [CanRead], [CanUpdate], [CanDelete]) VALUES (7, N'61600fb3-e720-48de-60b6-08d82bab319b', N'FEEDBACK', 1, 1, 1, 1)
INSERT [dbo].[Permissions] ([Id], [RoleId], [FunctionId], [CanCreate], [CanRead], [CanUpdate], [CanDelete]) VALUES (8, N'61600fb3-e720-48de-60b6-08d82bab319b', N'FOOTER', 1, 1, 1, 1)
INSERT [dbo].[Permissions] ([Id], [RoleId], [FunctionId], [CanCreate], [CanRead], [CanUpdate], [CanDelete]) VALUES (9, N'61600fb3-e720-48de-60b6-08d82bab319b', N'UTILITY', 1, 1, 1, 1)
INSERT [dbo].[Permissions] ([Id], [RoleId], [FunctionId], [CanCreate], [CanRead], [CanUpdate], [CanDelete]) VALUES (10, N'61600fb3-e720-48de-60b6-08d82bab319b', N'CONTENT', 1, 1, 1, 1)
INSERT [dbo].[Permissions] ([Id], [RoleId], [FunctionId], [CanCreate], [CanRead], [CanUpdate], [CanDelete]) VALUES (11, N'61600fb3-e720-48de-60b6-08d82bab319b', N'BILL', 1, 1, 1, 1)
INSERT [dbo].[Permissions] ([Id], [RoleId], [FunctionId], [CanCreate], [CanRead], [CanUpdate], [CanDelete]) VALUES (12, N'61600fb3-e720-48de-60b6-08d82bab319b', N'PRODUCT_LIST', 1, 1, 1, 1)
INSERT [dbo].[Permissions] ([Id], [RoleId], [FunctionId], [CanCreate], [CanRead], [CanUpdate], [CanDelete]) VALUES (13, N'61600fb3-e720-48de-60b6-08d82bab319b', N'PRODUCT_CATEGORY', 1, 1, 1, 1)
INSERT [dbo].[Permissions] ([Id], [RoleId], [FunctionId], [CanCreate], [CanRead], [CanUpdate], [CanDelete]) VALUES (14, N'61600fb3-e720-48de-60b6-08d82bab319b', N'PRODUCT', 1, 1, 1, 1)
INSERT [dbo].[Permissions] ([Id], [RoleId], [FunctionId], [CanCreate], [CanRead], [CanUpdate], [CanDelete]) VALUES (15, N'61600fb3-e720-48de-60b6-08d82bab319b', N'SETTING', 1, 1, 1, 1)
INSERT [dbo].[Permissions] ([Id], [RoleId], [FunctionId], [CanCreate], [CanRead], [CanUpdate], [CanDelete]) VALUES (16, N'61600fb3-e720-48de-60b6-08d82bab319b', N'ERROR', 1, 1, 1, 1)
INSERT [dbo].[Permissions] ([Id], [RoleId], [FunctionId], [CanCreate], [CanRead], [CanUpdate], [CanDelete]) VALUES (17, N'61600fb3-e720-48de-60b6-08d82bab319b', N'ACTIVITY', 1, 1, 1, 1)
INSERT [dbo].[Permissions] ([Id], [RoleId], [FunctionId], [CanCreate], [CanRead], [CanUpdate], [CanDelete]) VALUES (18, N'61600fb3-e720-48de-60b6-08d82bab319b', N'USER', 1, 1, 1, 1)
INSERT [dbo].[Permissions] ([Id], [RoleId], [FunctionId], [CanCreate], [CanRead], [CanUpdate], [CanDelete]) VALUES (19, N'61600fb3-e720-48de-60b6-08d82bab319b', N'FUNCTION', 1, 1, 1, 1)
INSERT [dbo].[Permissions] ([Id], [RoleId], [FunctionId], [CanCreate], [CanRead], [CanUpdate], [CanDelete]) VALUES (20, N'61600fb3-e720-48de-60b6-08d82bab319b', N'ROLE', 1, 1, 1, 1)
INSERT [dbo].[Permissions] ([Id], [RoleId], [FunctionId], [CanCreate], [CanRead], [CanUpdate], [CanDelete]) VALUES (21, N'61600fb3-e720-48de-60b6-08d82bab319b', N'ACCESS', 1, 1, 1, 1)
INSERT [dbo].[Permissions] ([Id], [RoleId], [FunctionId], [CanCreate], [CanRead], [CanUpdate], [CanDelete]) VALUES (22, N'61600fb3-e720-48de-60b6-08d82bab319b', N'READER', 1, 1, 1, 1)
INSERT [dbo].[Permissions] ([Id], [RoleId], [FunctionId], [CanCreate], [CanRead], [CanUpdate], [CanDelete]) VALUES (23, N'23b95115-880e-4efc-60b8-08d82bab319b', N'SYSTEM', 0, 0, 0, 0)
INSERT [dbo].[Permissions] ([Id], [RoleId], [FunctionId], [CanCreate], [CanRead], [CanUpdate], [CanDelete]) VALUES (24, N'23b95115-880e-4efc-60b8-08d82bab319b', N'REVENUES', 0, 0, 0, 0)
INSERT [dbo].[Permissions] ([Id], [RoleId], [FunctionId], [CanCreate], [CanRead], [CanUpdate], [CanDelete]) VALUES (25, N'23b95115-880e-4efc-60b8-08d82bab319b', N'REPORT', 0, 0, 0, 0)
INSERT [dbo].[Permissions] ([Id], [RoleId], [FunctionId], [CanCreate], [CanRead], [CanUpdate], [CanDelete]) VALUES (26, N'23b95115-880e-4efc-60b8-08d82bab319b', N'SLIDE', 0, 0, 0, 0)
INSERT [dbo].[Permissions] ([Id], [RoleId], [FunctionId], [CanCreate], [CanRead], [CanUpdate], [CanDelete]) VALUES (27, N'23b95115-880e-4efc-60b8-08d82bab319b', N'CONTACT', 0, 0, 0, 0)
INSERT [dbo].[Permissions] ([Id], [RoleId], [FunctionId], [CanCreate], [CanRead], [CanUpdate], [CanDelete]) VALUES (28, N'23b95115-880e-4efc-60b8-08d82bab319b', N'ANNOUNCEMENT', 0, 0, 0, 0)
INSERT [dbo].[Permissions] ([Id], [RoleId], [FunctionId], [CanCreate], [CanRead], [CanUpdate], [CanDelete]) VALUES (29, N'23b95115-880e-4efc-60b8-08d82bab319b', N'FEEDBACK', 0, 0, 0, 0)
INSERT [dbo].[Permissions] ([Id], [RoleId], [FunctionId], [CanCreate], [CanRead], [CanUpdate], [CanDelete]) VALUES (30, N'23b95115-880e-4efc-60b8-08d82bab319b', N'FOOTER', 0, 0, 0, 0)
INSERT [dbo].[Permissions] ([Id], [RoleId], [FunctionId], [CanCreate], [CanRead], [CanUpdate], [CanDelete]) VALUES (31, N'23b95115-880e-4efc-60b8-08d82bab319b', N'UTILITY', 0, 0, 0, 0)
INSERT [dbo].[Permissions] ([Id], [RoleId], [FunctionId], [CanCreate], [CanRead], [CanUpdate], [CanDelete]) VALUES (32, N'23b95115-880e-4efc-60b8-08d82bab319b', N'CONTENT', 0, 1, 0, 0)
INSERT [dbo].[Permissions] ([Id], [RoleId], [FunctionId], [CanCreate], [CanRead], [CanUpdate], [CanDelete]) VALUES (33, N'23b95115-880e-4efc-60b8-08d82bab319b', N'BILL', 0, 1, 0, 0)
INSERT [dbo].[Permissions] ([Id], [RoleId], [FunctionId], [CanCreate], [CanRead], [CanUpdate], [CanDelete]) VALUES (34, N'23b95115-880e-4efc-60b8-08d82bab319b', N'PRODUCT_LIST', 0, 1, 0, 0)
INSERT [dbo].[Permissions] ([Id], [RoleId], [FunctionId], [CanCreate], [CanRead], [CanUpdate], [CanDelete]) VALUES (35, N'23b95115-880e-4efc-60b8-08d82bab319b', N'PRODUCT_CATEGORY', 0, 1, 0, 0)
INSERT [dbo].[Permissions] ([Id], [RoleId], [FunctionId], [CanCreate], [CanRead], [CanUpdate], [CanDelete]) VALUES (36, N'23b95115-880e-4efc-60b8-08d82bab319b', N'PRODUCT', 0, 1, 0, 0)
INSERT [dbo].[Permissions] ([Id], [RoleId], [FunctionId], [CanCreate], [CanRead], [CanUpdate], [CanDelete]) VALUES (37, N'23b95115-880e-4efc-60b8-08d82bab319b', N'SETTING', 0, 0, 0, 0)
INSERT [dbo].[Permissions] ([Id], [RoleId], [FunctionId], [CanCreate], [CanRead], [CanUpdate], [CanDelete]) VALUES (38, N'23b95115-880e-4efc-60b8-08d82bab319b', N'ERROR', 0, 0, 0, 0)
INSERT [dbo].[Permissions] ([Id], [RoleId], [FunctionId], [CanCreate], [CanRead], [CanUpdate], [CanDelete]) VALUES (39, N'23b95115-880e-4efc-60b8-08d82bab319b', N'ACTIVITY', 0, 0, 0, 0)
INSERT [dbo].[Permissions] ([Id], [RoleId], [FunctionId], [CanCreate], [CanRead], [CanUpdate], [CanDelete]) VALUES (40, N'23b95115-880e-4efc-60b8-08d82bab319b', N'USER', 1, 1, 1, 0)
INSERT [dbo].[Permissions] ([Id], [RoleId], [FunctionId], [CanCreate], [CanRead], [CanUpdate], [CanDelete]) VALUES (41, N'23b95115-880e-4efc-60b8-08d82bab319b', N'FUNCTION', 0, 0, 0, 0)
INSERT [dbo].[Permissions] ([Id], [RoleId], [FunctionId], [CanCreate], [CanRead], [CanUpdate], [CanDelete]) VALUES (42, N'23b95115-880e-4efc-60b8-08d82bab319b', N'ROLE', 0, 1, 0, 0)
INSERT [dbo].[Permissions] ([Id], [RoleId], [FunctionId], [CanCreate], [CanRead], [CanUpdate], [CanDelete]) VALUES (43, N'23b95115-880e-4efc-60b8-08d82bab319b', N'ACCESS', 0, 0, 0, 0)
INSERT [dbo].[Permissions] ([Id], [RoleId], [FunctionId], [CanCreate], [CanRead], [CanUpdate], [CanDelete]) VALUES (44, N'23b95115-880e-4efc-60b8-08d82bab319b', N'READER', 0, 0, 0, 0)
SET IDENTITY_INSERT [dbo].[Permissions] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductCategories] ON 

INSERT [dbo].[ProductCategories] ([Id], [Name], [ParentId], [HomeOrder], [Image], [HomeFlag], [Status], [DateCreated], [DateModified], [SeoPageTitle], [SeoAlias], [SeoKeywords], [SeoDescription], [SortOrder]) VALUES (1, N'Gạch Ốp Lát', NULL, NULL, NULL, NULL, 1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, N'gach-op-lat', NULL, NULL, 1)
INSERT [dbo].[ProductCategories] ([Id], [Name], [ParentId], [HomeOrder], [Image], [HomeFlag], [Status], [DateCreated], [DateModified], [SeoPageTitle], [SeoAlias], [SeoKeywords], [SeoDescription], [SortOrder]) VALUES (2, N'Xi Măng', NULL, NULL, NULL, NULL, 1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, N'xi-mang', NULL, NULL, 2)
INSERT [dbo].[ProductCategories] ([Id], [Name], [ParentId], [HomeOrder], [Image], [HomeFlag], [Status], [DateCreated], [DateModified], [SeoPageTitle], [SeoAlias], [SeoKeywords], [SeoDescription], [SortOrder]) VALUES (3, N'Sàn gỗ', NULL, NULL, NULL, NULL, 1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, N'gian-giao', NULL, NULL, 3)
INSERT [dbo].[ProductCategories] ([Id], [Name], [ParentId], [HomeOrder], [Image], [HomeFlag], [Status], [DateCreated], [DateModified], [SeoPageTitle], [SeoAlias], [SeoKeywords], [SeoDescription], [SortOrder]) VALUES (4, N'Keo dán gạch đá', NULL, NULL, NULL, NULL, 1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, N'keo-dan-gach-da', NULL, NULL, 7)
INSERT [dbo].[ProductCategories] ([Id], [Name], [ParentId], [HomeOrder], [Image], [HomeFlag], [Status], [DateCreated], [DateModified], [SeoPageTitle], [SeoAlias], [SeoKeywords], [SeoDescription], [SortOrder]) VALUES (5, N'Đá Bazan', NULL, NULL, NULL, NULL, 1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, N'da-bazan', NULL, NULL, 5)
INSERT [dbo].[ProductCategories] ([Id], [Name], [ParentId], [HomeOrder], [Image], [HomeFlag], [Status], [DateCreated], [DateModified], [SeoPageTitle], [SeoAlias], [SeoKeywords], [SeoDescription], [SortOrder]) VALUES (6, N'Cát Sỏi Xây Dựng', NULL, NULL, NULL, NULL, 1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, N'cat-soi-xay-dung', NULL, NULL, 6)
INSERT [dbo].[ProductCategories] ([Id], [Name], [ParentId], [HomeOrder], [Image], [HomeFlag], [Status], [DateCreated], [DateModified], [SeoPageTitle], [SeoAlias], [SeoKeywords], [SeoDescription], [SortOrder]) VALUES (7, N'Gạch Block', NULL, NULL, NULL, NULL, 1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, N'gach-block', NULL, NULL, 4)
SET IDENTITY_INSERT [dbo].[ProductCategories] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductImages] ON 

INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (1, 1, N'/img_ds/product-6.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (2, 31, N'/img_ds/product-5.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (3, 31, N'/img_ds/product-7.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (4, 31, N'/img_ds/product-8.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (5, 32, N'/img_ds/product-34.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (6, 32, N'/img_ds/product-35.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (7, 32, N'/img_ds/product-26.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (8, 33, N'/img_ds/product-17.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (9, 33, N'/img_ds/product-36.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (10, 33, N'/img_ds/product-27.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (11, 34, N'/img_ds/product-28.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (12, 34, N'/img_ds/product-31.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (13, 34, N'/img_ds/product-40.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (14, 35, N'/img_ds/product-34.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (15, 35, N'/img_ds/product-32.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (16, 35, N'/img_ds/product-31.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (17, 35, N'/img_ds/product-38.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (18, 35, N'/img_ds/product-39.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (19, 31, N'/img_ds/product-12.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (20, 36, N'/img_ds/product-1.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (21, 30, N'/img_ds/product-28.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (22, 30, N'/img_ds/product-26.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (23, 25, N'/img_ds/product-31.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (24, 25, N'/img_ds/product-38.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (25, 25, N'/img_ds/product-39.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (26, 26, N'/img_ds/product-1.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (27, 26, N'/img_ds/product-9.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (28, 26, N'/img_ds/product-10.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (29, 27, N'/img_ds/product-12.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (30, 27, N'/img_ds/product-13.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (31, 27, N'/img_ds/product-15.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (32, 28, N'/img_ds/product-14.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (33, 28, N'/img_ds/product-18.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (34, 28, N'/img_ds/product-20.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (35, 29, N'/img_ds/product-19.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (36, 29, N'/img_ds/product-21.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (37, 29, N'/img_ds/product-22.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (38, 29, N'/img_ds/product-23.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (39, 30, N'/img_ds/product-25.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (40, 30, N'/img_ds/product-27.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (41, 25, N'/img_ds/product-32.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (42, 36, N'/img_ds/product-9.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (43, 37, N'/img_ds/product-12.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (44, 43, N'/img_ds/product-45.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (45, 43, N'/img_ds/product-47.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (46, 44, N'/img_ds/product-48.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (47, 44, N'/img_ds/product-43.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (48, 44, N'/img_ds/product-45.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (49, 45, N'/img_ds/product-44.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (50, 45, N'/img_ds/product-46.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (51, 45, N'/img_ds/product-47.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (52, 45, N'/img_ds/product-48.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (53, 45, N'/img_ds/product-40.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (54, 46, N'/img_ds/product-41.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (55, 46, N'/img_ds/product-48.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (56, 46, N'/img_ds/product-40.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (57, 47, N'/img_ds/product-42.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (58, 47, N'/img_ds/product-43.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (59, 47, N'/img_ds/product-45.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (60, 48, N'/img_ds/product-44.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (61, 43, N'/img_ds/product-42.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (62, 36, N'/img_ds/product-10.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (63, 42, N'/img_ds/product-41.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (64, 42, N'/img_ds/product-44.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (65, 37, N'/img_ds/product-13.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (66, 37, N'/img_ds/product-15.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (67, 38, N'/img_ds/product-14.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (68, 38, N'/img_ds/product-19.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (69, 38, N'/img_ds/product-20.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (70, 39, N'/img_ds/product-29.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (71, 39, N'/img_ds/product-21.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (72, 39, N'/img_ds/product-22.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (73, 39, N'/img_ds/product-23.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (74, 40, N'/img_ds/product-25.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (75, 40, N'/img_ds/product-26.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (76, 40, N'/img_ds/product-27.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (77, 40, N'/img_ds/product-28.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (78, 41, N'/img_ds/product-42.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (79, 41, N'/img_ds/product-45.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (80, 41, N'/img_ds/product-47.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (81, 41, N'/img_ds/product-48.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (82, 42, N'/img_ds/product-40.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (83, 48, N'/img_ds/product-45.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (84, 25, N'/img_ds/product-34.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (85, 24, N'/img_ds/product-3.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (86, 7, N'/img_ds/product-13.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (87, 7, N'/img_ds/product-15.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (88, 8, N'/img_ds/product-14.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (89, 8, N'/img_ds/product-18.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (90, 8, N'/img_ds/product-20.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (91, 9, N'/img_ds/product-19.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (92, 9, N'/img_ds/product-21.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (93, 9, N'/img_ds/product-22.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (94, 9, N'/img_ds/product-23.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (95, 10, N'/img_ds/product-25.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (96, 10, N'/img_ds/product-26.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (97, 10, N'/img_ds/product-27.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (98, 10, N'/img_ds/product-28.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (99, 11, N'/img_ds/product-12.jpg', N'ProductImages')
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (100, 11, N'/img_ds/product-5.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (101, 11, N'/img_ds/product-7.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (102, 11, N'/img_ds/product-8.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (103, 7, N'/img_ds/product-12.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (104, 12, N'/img_ds/product-34.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (105, 6, N'/img_ds/product-10.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (106, 6, N'/img_ds/product-1.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (107, 1, N'/img_ds/product-7.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (108, 1, N'/img_ds/product-9.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (109, 1, N'/img_ds/product-27.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (110, 2, N'/img_ds/product-17.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (111, 2, N'/img_ds/product-37.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (112, 2, N'/img_ds/product-27.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (113, 3, N'/img_ds/product-1.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (114, 3, N'/img_ds/product-6.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (115, 3, N'/img_ds/product-7.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (116, 4, N'/img_ds/product-2.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (117, 4, N'/img_ds/product-3.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (118, 4, N'/img_ds/product-4.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (119, 5, N'/img_ds/product-34.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (120, 5, N'/img_ds/product-32.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (121, 5, N'/img_ds/product-31.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (122, 5, N'/img_ds/product-38.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (123, 5, N'/img_ds/product-39.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (124, 6, N'/img_ds/product-9.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (125, 24, N'/img_ds/product-4.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (126, 12, N'/img_ds/product-35.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (127, 13, N'/img_ds/product-17.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (128, 19, N'/img_ds/product-22.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (129, 19, N'/img_ds/product-23.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (130, 20, N'/img_ds/product-25.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (131, 20, N'/img_ds/product-26.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (132, 20, N'/img_ds/product-27.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (133, 20, N'/img_ds/product-28.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (134, 21, N'/img_ds/product-6.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (135, 21, N'/img_ds/product-7.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (136, 21, N'/img_ds/product-9.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (137, 21, N'/img_ds/product-27.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (138, 22, N'/img_ds/product-17.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (139, 22, N'/img_ds/product-37.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (140, 22, N'/img_ds/product-27.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (141, 23, N'/img_ds/product-1.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (142, 23, N'/img_ds/product-6.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (143, 23, N'/img_ds/product-7.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (144, 24, N'/img_ds/product-2.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (145, 19, N'/img_ds/product-21.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (146, 12, N'/img_ds/product-26.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (147, 19, N'/img_ds/product-29.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (148, 18, N'/img_ds/product-19.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (149, 13, N'/img_ds/product-36.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (150, 13, N'/img_ds/product-27.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (151, 14, N'/img_ds/product-28.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (152, 14, N'/img_ds/product-31.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (153, 14, N'/img_ds/product-40.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (154, 15, N'/img_ds/product-34.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (155, 15, N'/img_ds/product-32.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (156, 15, N'/img_ds/product-31.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (157, 15, N'/img_ds/product-38.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (158, 15, N'/img_ds/product-39.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (159, 16, N'/img_ds/product-1.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (160, 16, N'/img_ds/product-9.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (161, 16, N'/img_ds/product-10.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (162, 17, N'/img_ds/product-12.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (163, 17, N'/img_ds/product-13.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (164, 17, N'/img_ds/product-15.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (165, 18, N'/img_ds/product-14.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (166, 18, N'/img_ds/product-20.jpg', N'ProductImages')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Path], [Caption]) VALUES (167, 48, N'/img_ds/product-47.jpg', N'ProductImages')
SET IDENTITY_INSERT [dbo].[ProductImages] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductQuantities] ON 

INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (1, 9, 6, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (2, 35, 4, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (3, 34, 4, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (4, 33, 4, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (5, 32, 4, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (6, 31, 4, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (7, 30, 4, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (8, 28, 4, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (9, 27, 4, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (10, 26, 4, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (11, 25, 4, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (12, 1, 3, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (13, 24, 4, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (14, 22, 4, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (15, 21, 4, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (16, 20, 4, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (17, 19, 4, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (18, 18, 4, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (19, 17, 4, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (20, 16, 4, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (21, 15, 4, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (22, 8, 4, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (23, 7, 4, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (24, 23, 4, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (25, 6, 4, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (26, 2, 3, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (27, 4, 3, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (28, 33, 3, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (29, 32, 3, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (30, 31, 3, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (31, 30, 3, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (32, 28, 3, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (33, 27, 3, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (34, 26, 3, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (35, 25, 3, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (36, 24, 3, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (37, 23, 3, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (38, 3, 3, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (39, 22, 3, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (40, 20, 3, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (41, 19, 3, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (42, 18, 3, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (43, 17, 3, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (44, 16, 3, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (45, 15, 3, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (46, 8, 3, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (47, 7, 3, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (48, 6, 3, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (49, 5, 3, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (50, 21, 3, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (51, 5, 4, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (52, 4, 4, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (53, 3, 4, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (54, 3, 5, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (55, 2, 5, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (56, 1, 5, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (57, 29, 1, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (58, 40, 2, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (59, 39, 2, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (60, 38, 2, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (61, 37, 2, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (62, 36, 2, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (63, 48, 6, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (64, 4, 5, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (65, 47, 6, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (66, 45, 6, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (67, 44, 6, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (68, 43, 6, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (69, 42, 6, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (70, 41, 6, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (71, 14, 6, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (72, 13, 6, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (73, 12, 6, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (74, 11, 6, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (75, 10, 6, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (76, 46, 6, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (77, 5, 5, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (78, 6, 5, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (79, 7, 5, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (80, 2, 4, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (81, 1, 4, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (82, 35, 5, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (83, 34, 5, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (84, 33, 5, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (85, 32, 5, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (86, 31, 5, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (87, 30, 5, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (88, 28, 5, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (89, 27, 5, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (90, 26, 5, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (91, 25, 5, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (92, 24, 5, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (93, 23, 5, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (94, 22, 5, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (95, 21, 5, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (96, 20, 5, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (97, 19, 5, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (98, 18, 5, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (99, 17, 5, 100)
GO
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (100, 16, 5, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (101, 15, 5, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (102, 8, 5, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (103, 34, 3, 100)
INSERT [dbo].[ProductQuantities] ([Id], [ProductId], [SizeId], [Quantity]) VALUES (104, 35, 3, 100)
SET IDENTITY_INSERT [dbo].[ProductQuantities] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Image], [Price], [PromotionPrice], [OriginalPrice], [Description], [Content], [HomeFlag], [HotFlag], [ViewCount], [Tags], [Unit], [Status], [DateCreated], [DateModified], [SeoPageTitle], [SeoAlias], [SeoKeywords], [SeoDescription]) VALUES (1, N'Gạch INAX-155F', 1, N'/img_ds/product-1.jpg', CAST(350000.00 AS Decimal(18, 2)), NULL, CAST(200000.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, N'Viên', 1, CAST(N'2020-07-19T13:15:54.9420298' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, N'gach-inax-155f', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Image], [Price], [PromotionPrice], [OriginalPrice], [Description], [Content], [HomeFlag], [HotFlag], [ViewCount], [Tags], [Unit], [Status], [DateCreated], [DateModified], [SeoPageTitle], [SeoAlias], [SeoKeywords], [SeoDescription]) VALUES (2, N'Đá Bóc Bazan Đen', 5, N'/img_ds/product-27.jpg', CAST(420000.00 AS Decimal(18, 2)), NULL, CAST(300000.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, N'Cái', 1, CAST(N'2020-07-19T13:15:54.9426494' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, N'da-boc-bazan-den', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Image], [Price], [PromotionPrice], [OriginalPrice], [Description], [Content], [HomeFlag], [HotFlag], [ViewCount], [Tags], [Unit], [Status], [DateCreated], [DateModified], [SeoPageTitle], [SeoAlias], [SeoKeywords], [SeoDescription]) VALUES (3, N'Đá Bazan Cubic Băm Mặt', 5, N'/img_ds/product-28.jpg', CAST(420000.00 AS Decimal(18, 2)), NULL, CAST(300000.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, N'Cái', 1, CAST(N'2020-07-19T13:15:54.9426497' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, N'da-bazan-cubic-bam-mat', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Image], [Price], [PromotionPrice], [OriginalPrice], [Description], [Content], [HomeFlag], [HotFlag], [ViewCount], [Tags], [Unit], [Status], [DateCreated], [DateModified], [SeoPageTitle], [SeoAlias], [SeoKeywords], [SeoDescription]) VALUES (4, N'Đá Cây Bazan Bo Bồn Hoa', 5, N'/img_ds/product-29.jpg', CAST(500000.00 AS Decimal(18, 2)), NULL, CAST(300000.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, N'Cây', 1, CAST(N'2020-07-19T13:15:54.9426499' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, N'da-cay-bazan-bo-bon-hoa', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Image], [Price], [PromotionPrice], [OriginalPrice], [Description], [Content], [HomeFlag], [HotFlag], [ViewCount], [Tags], [Unit], [Status], [DateCreated], [DateModified], [SeoPageTitle], [SeoAlias], [SeoKeywords], [SeoDescription]) VALUES (5, N'Đá Bazan Khò Lửa', 5, N'/img_ds/product-30.jpg', CAST(500000.00 AS Decimal(18, 2)), NULL, CAST(300000.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, N'Cái', 1, CAST(N'2020-07-19T13:15:54.9426502' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, N'da-bazan-kho-lua', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Image], [Price], [PromotionPrice], [OriginalPrice], [Description], [Content], [HomeFlag], [HotFlag], [ViewCount], [Tags], [Unit], [Status], [DateCreated], [DateModified], [SeoPageTitle], [SeoAlias], [SeoKeywords], [SeoDescription]) VALUES (6, N'Đá Bazan Đen Băm Mặt', 5, N'/img_ds/product-31.jpg', CAST(500000.00 AS Decimal(18, 2)), NULL, CAST(300000.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, N'Cái', 1, CAST(N'2020-07-19T13:15:54.9426506' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, N'da-bazan-bam-mat', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Image], [Price], [PromotionPrice], [OriginalPrice], [Description], [Content], [HomeFlag], [HotFlag], [ViewCount], [Tags], [Unit], [Status], [DateCreated], [DateModified], [SeoPageTitle], [SeoAlias], [SeoKeywords], [SeoDescription]) VALUES (7, N'Đá Bazan Bánh Dầu', 5, N'/img_ds/product-32.jpg', CAST(500000.00 AS Decimal(18, 2)), NULL, CAST(300000.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, N'Cái', 1, CAST(N'2020-07-19T13:15:54.9426511' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, N'gach-tranh-mosaic-nghe-thuat-gt020', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Image], [Price], [PromotionPrice], [OriginalPrice], [Description], [Content], [HomeFlag], [HotFlag], [ViewCount], [Tags], [Unit], [Status], [DateCreated], [DateModified], [SeoPageTitle], [SeoAlias], [SeoKeywords], [SeoDescription]) VALUES (8, N'Cát san lấp nền loại 1 CSL', 6, N'/img_ds/product-33.jpg', CAST(350000.00 AS Decimal(18, 2)), NULL, CAST(200000.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, N'Tấn', 1, CAST(N'2020-07-19T13:15:54.9426519' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, N'cat-san-lap-nen-loai-1-csl', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Image], [Price], [PromotionPrice], [OriginalPrice], [Description], [Content], [HomeFlag], [HotFlag], [ViewCount], [Tags], [Unit], [Status], [DateCreated], [DateModified], [SeoPageTitle], [SeoAlias], [SeoKeywords], [SeoDescription]) VALUES (9, N'Cát Vàng CII E&C', 6, N'/img_ds/product-34.jpg', CAST(350000.00 AS Decimal(18, 2)), NULL, CAST(200000.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, N'Tấn', 1, CAST(N'2020-07-19T13:15:54.9426522' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, N'cat-vang-cii-e&c', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Image], [Price], [PromotionPrice], [OriginalPrice], [Description], [Content], [HomeFlag], [HotFlag], [ViewCount], [Tags], [Unit], [Status], [DateCreated], [DateModified], [SeoPageTitle], [SeoAlias], [SeoKeywords], [SeoDescription]) VALUES (10, N'Cát Bê Tông CII E&C Loại 2', 6, N'/img_ds/product-35.jpg', CAST(420000.00 AS Decimal(18, 2)), NULL, CAST(300000.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, N'Tấn', 1, CAST(N'2020-07-19T13:15:54.9426526' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, N'cat-be-tong-cii-e&c--loai-2', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Image], [Price], [PromotionPrice], [OriginalPrice], [Description], [Content], [HomeFlag], [HotFlag], [ViewCount], [Tags], [Unit], [Status], [DateCreated], [DateModified], [SeoPageTitle], [SeoAlias], [SeoKeywords], [SeoDescription]) VALUES (11, N'Đá Đen Bazan Quy Cách Rối', 5, N'/img_ds/product-26.jpg', CAST(350000.00 AS Decimal(18, 2)), NULL, CAST(200000.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, N'Cái', 1, CAST(N'2020-07-19T13:15:54.9426491' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, N'da-den-bazan-quy-cach-roi', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Image], [Price], [PromotionPrice], [OriginalPrice], [Description], [Content], [HomeFlag], [HotFlag], [ViewCount], [Tags], [Unit], [Status], [DateCreated], [DateModified], [SeoPageTitle], [SeoAlias], [SeoKeywords], [SeoDescription]) VALUES (12, N'Sỏi Hồng tự nhiên (Sỏi sông Hà Nội) MiA-STN-002', 6, N'/img_ds/product-36.jpg', CAST(420000.00 AS Decimal(18, 2)), NULL, CAST(300000.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, N'Bao', 1, CAST(N'2020-07-19T13:15:54.9426528' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, N'soi-hong-tu-nhien-soi-song-ha-noi-mia-stn-002', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Image], [Price], [PromotionPrice], [OriginalPrice], [Description], [Content], [HomeFlag], [HotFlag], [ViewCount], [Tags], [Unit], [Status], [DateCreated], [DateModified], [SeoPageTitle], [SeoAlias], [SeoKeywords], [SeoDescription]) VALUES (13, N'Sỏi cuội tự nhiên xanh đen', 6, N'/img_ds/product-38.jpg', CAST(500000.00 AS Decimal(18, 2)), NULL, CAST(300000.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, N'Bao', 1, CAST(N'2020-07-19T13:15:54.9426538' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, N'soi-cuoi-tu-nhien-xanh-den', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Image], [Price], [PromotionPrice], [OriginalPrice], [Description], [Content], [HomeFlag], [HotFlag], [ViewCount], [Tags], [Unit], [Status], [DateCreated], [DateModified], [SeoPageTitle], [SeoAlias], [SeoKeywords], [SeoDescription]) VALUES (14, N'Sỏi vàng quay', 6, N'/img_ds/product-39.jpg', CAST(500000.00 AS Decimal(18, 2)), NULL, CAST(300000.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, N'Bao', 1, CAST(N'2020-07-19T13:15:54.9426540' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, N'soi-vang-quay', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Image], [Price], [PromotionPrice], [OriginalPrice], [Description], [Content], [HomeFlag], [HotFlag], [ViewCount], [Tags], [Unit], [Status], [DateCreated], [DateModified], [SeoPageTitle], [SeoAlias], [SeoKeywords], [SeoDescription]) VALUES (15, N'Sỏi quay màu vàng MiA-STN-005', 6, N'/img_ds/product-40.jpg', CAST(500000.00 AS Decimal(18, 2)), NULL, CAST(300000.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, N'Bao', 1, CAST(N'2020-07-19T13:15:54.9426543' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, N'soi-quay-mau-vang-mia-stn-005', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Image], [Price], [PromotionPrice], [OriginalPrice], [Description], [Content], [HomeFlag], [HotFlag], [ViewCount], [Tags], [Unit], [Status], [DateCreated], [DateModified], [SeoPageTitle], [SeoAlias], [SeoKeywords], [SeoDescription]) VALUES (16, N'Keo Ốp Lát CiMax', 4, N'/img_ds/product-41.jpg', CAST(350000.00 AS Decimal(18, 2)), CAST(15000.00 AS Decimal(18, 2)), CAST(200000.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, N'Bao', 1, CAST(N'2020-07-19T13:15:54.9426546' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, N'keo-op-lat-cimax', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Image], [Price], [PromotionPrice], [OriginalPrice], [Description], [Content], [HomeFlag], [HotFlag], [ViewCount], [Tags], [Unit], [Status], [DateCreated], [DateModified], [SeoPageTitle], [SeoAlias], [SeoKeywords], [SeoDescription]) VALUES (17, N'Keo Shilkaler Pro', 4, N'/img_ds/product-42.jpg', CAST(350000.00 AS Decimal(18, 2)), CAST(15000.00 AS Decimal(18, 2)), CAST(200000.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, N'Bao', 1, CAST(N'2020-07-19T13:15:54.9426551' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, N'keo-shilkaler-pro', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Image], [Price], [PromotionPrice], [OriginalPrice], [Description], [Content], [HomeFlag], [HotFlag], [ViewCount], [Tags], [Unit], [Status], [DateCreated], [DateModified], [SeoPageTitle], [SeoAlias], [SeoKeywords], [SeoDescription]) VALUES (18, N'Keo dán đá K-Epoxy', 4, N'/img_ds/product-43.jpg', CAST(420000.00 AS Decimal(18, 2)), NULL, CAST(300000.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, N'Bao', 1, CAST(N'2020-07-19T13:15:54.9426554' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, N'keo-dan-da-k-epoxy', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Image], [Price], [PromotionPrice], [OriginalPrice], [Description], [Content], [HomeFlag], [HotFlag], [ViewCount], [Tags], [Unit], [Status], [DateCreated], [DateModified], [SeoPageTitle], [SeoAlias], [SeoKeywords], [SeoDescription]) VALUES (19, N'Keo dán gạch TAG.TILE A9', 4, N'/img_ds/product-44.jpg', CAST(420000.00 AS Decimal(18, 2)), NULL, CAST(300000.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, N'Bao', 1, CAST(N'2020-07-19T13:15:54.9426561' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, N'keo-dan-gach-tag.tile-a9', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Image], [Price], [PromotionPrice], [OriginalPrice], [Description], [Content], [HomeFlag], [HotFlag], [ViewCount], [Tags], [Unit], [Status], [DateCreated], [DateModified], [SeoPageTitle], [SeoAlias], [SeoKeywords], [SeoDescription]) VALUES (20, N'KEO Chà RON WEBER', 4, N'/img_ds/product-45.jpg', CAST(500000.00 AS Decimal(18, 2)), NULL, CAST(300000.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, N'Bao', 1, CAST(N'2020-07-19T13:15:54.9426564' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, N'keo-cha-ron-weber-2', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Image], [Price], [PromotionPrice], [OriginalPrice], [Description], [Content], [HomeFlag], [HotFlag], [ViewCount], [Tags], [Unit], [Status], [DateCreated], [DateModified], [SeoPageTitle], [SeoAlias], [SeoKeywords], [SeoDescription]) VALUES (21, N'Keo dán đá Epoxy Eco Stone Orion RO-9000', 4, N'/img_ds/product-46.jpg', CAST(500000.00 AS Decimal(18, 2)), NULL, CAST(300000.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, N'Bao', 1, CAST(N'2020-07-19T13:15:54.9426567' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, N'keo-dan-da-epoxy-eco-stone-orion-ro-9000', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Image], [Price], [PromotionPrice], [OriginalPrice], [Description], [Content], [HomeFlag], [HotFlag], [ViewCount], [Tags], [Unit], [Status], [DateCreated], [DateModified], [SeoPageTitle], [SeoAlias], [SeoKeywords], [SeoDescription]) VALUES (22, N'Sỏi quay', 6, N'/img_ds/product-37.jpg', CAST(500000.00 AS Decimal(18, 2)), NULL, CAST(300000.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, N'Bao', 1, CAST(N'2020-07-19T13:15:54.9426533' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, N'soi-quay', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Image], [Price], [PromotionPrice], [OriginalPrice], [Description], [Content], [HomeFlag], [HotFlag], [ViewCount], [Tags], [Unit], [Status], [DateCreated], [DateModified], [SeoPageTitle], [SeoAlias], [SeoKeywords], [SeoDescription]) VALUES (23, N'Đá Bazan Khò Mặt', 5, N'/img_ds/product-25.jpg', CAST(350000.00 AS Decimal(18, 2)), NULL, CAST(200000.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, N'Cái', 1, CAST(N'2020-07-19T13:15:54.9426488' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, N'da-bazan-kho-mat', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Image], [Price], [PromotionPrice], [OriginalPrice], [Description], [Content], [HomeFlag], [HotFlag], [ViewCount], [Tags], [Unit], [Status], [DateCreated], [DateModified], [SeoPageTitle], [SeoAlias], [SeoKeywords], [SeoDescription]) VALUES (24, N'Gạch bánh ú bê tông xi măng', 7, N'/img_ds/product-24.jpg', CAST(22000.00 AS Decimal(18, 2)), NULL, CAST(12000.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, N'Viên', 1, CAST(N'2020-07-19T13:15:54.9426482' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, N'gach-banh-u-be-tong-xi-mang', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Image], [Price], [PromotionPrice], [OriginalPrice], [Description], [Content], [HomeFlag], [HotFlag], [ViewCount], [Tags], [Unit], [Status], [DateCreated], [DateModified], [SeoPageTitle], [SeoAlias], [SeoKeywords], [SeoDescription]) VALUES (25, N'Gạch Block khuôn bông trang trí V403', 7, N'/img_ds/product-23.jpg', CAST(169000.00 AS Decimal(18, 2)), NULL, CAST(150000.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, N'Viên', 1, CAST(N'2020-07-19T13:15:54.9426480' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, N'gach-block-khuon-bong-trang-tri-v403', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Image], [Price], [PromotionPrice], [OriginalPrice], [Description], [Content], [HomeFlag], [HotFlag], [ViewCount], [Tags], [Unit], [Status], [DateCreated], [DateModified], [SeoPageTitle], [SeoAlias], [SeoKeywords], [SeoDescription]) VALUES (26, N'Gạch INAX HAL-25B', 1, N'/img_ds/product-2.jpg', CAST(350000.00 AS Decimal(18, 2)), NULL, CAST(200000.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, N'Viên', 1, CAST(N'2020-07-19T13:15:54.9424987' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, N'gach-inax-25b', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Image], [Price], [PromotionPrice], [OriginalPrice], [Description], [Content], [HomeFlag], [HotFlag], [ViewCount], [Tags], [Unit], [Status], [DateCreated], [DateModified], [SeoPageTitle], [SeoAlias], [SeoKeywords], [SeoDescription]) VALUES (27, N'Gạch tranh mosaic nghệ thuật GT009', 1, N'/img_ds/product-3.jpg', CAST(420000.00 AS Decimal(18, 2)), CAST(15000.00 AS Decimal(18, 2)), CAST(300000.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, N'Viên', 1, CAST(N'2020-07-19T13:15:54.9425000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, N'gach-tranh-mosaic-nghe-thuat-gt009', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Image], [Price], [PromotionPrice], [OriginalPrice], [Description], [Content], [HomeFlag], [HotFlag], [ViewCount], [Tags], [Unit], [Status], [DateCreated], [DateModified], [SeoPageTitle], [SeoAlias], [SeoKeywords], [SeoDescription]) VALUES (28, N'Gạch tranh mosaic nghệ thuật GT010', 1, N'/img_ds/product-4.jpg', CAST(420000.00 AS Decimal(18, 2)), CAST(15000.00 AS Decimal(18, 2)), CAST(300000.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, N'Viên', 1, CAST(N'2020-07-19T13:15:54.9426354' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, N'gach-tranh-mosaic-nghe-thuat-gt010', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Image], [Price], [PromotionPrice], [OriginalPrice], [Description], [Content], [HomeFlag], [HotFlag], [ViewCount], [Tags], [Unit], [Status], [DateCreated], [DateModified], [SeoPageTitle], [SeoAlias], [SeoKeywords], [SeoDescription]) VALUES (29, N'Gạch tranh mosaic nghệ thuật GT011', 1, N'/img_ds/product-5.jpg', CAST(500000.00 AS Decimal(18, 2)), CAST(15000.00 AS Decimal(18, 2)), CAST(300000.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, N'Viên', 1, CAST(N'2020-07-19T13:15:54.9426362' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, N'gach-tranh-mosaic-nghe-thuat-gt011', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Image], [Price], [PromotionPrice], [OriginalPrice], [Description], [Content], [HomeFlag], [HotFlag], [ViewCount], [Tags], [Unit], [Status], [DateCreated], [DateModified], [SeoPageTitle], [SeoAlias], [SeoKeywords], [SeoDescription]) VALUES (30, N'Gạch tranh mosaic nghệ thuật GT016', 1, N'/img_ds/product-6.jpg', CAST(500000.00 AS Decimal(18, 2)), CAST(15000.00 AS Decimal(18, 2)), CAST(300000.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, N'Viên', 1, CAST(N'2020-07-19T13:15:54.9426378' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, N'gach-tranh-mosaic-nghe-thuat-gt016', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Image], [Price], [PromotionPrice], [OriginalPrice], [Description], [Content], [HomeFlag], [HotFlag], [ViewCount], [Tags], [Unit], [Status], [DateCreated], [DateModified], [SeoPageTitle], [SeoAlias], [SeoKeywords], [SeoDescription]) VALUES (31, N'Gạch tranh mosaic nghệ thuật GT018', 1, N'/img_ds/product-7.jpg', CAST(500000.00 AS Decimal(18, 2)), CAST(15000.00 AS Decimal(18, 2)), CAST(300000.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, N'Viên', 1, CAST(N'2020-07-19T13:15:54.9426381' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, N'gach-tranh-mosaic-nghe-thuat-gt018', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Image], [Price], [PromotionPrice], [OriginalPrice], [Description], [Content], [HomeFlag], [HotFlag], [ViewCount], [Tags], [Unit], [Status], [DateCreated], [DateModified], [SeoPageTitle], [SeoAlias], [SeoKeywords], [SeoDescription]) VALUES (32, N'Gạch tranh mosaic nghệ thuật GT020', 1, N'/img_ds/product-8.jpg', CAST(500000.00 AS Decimal(18, 2)), CAST(15000.00 AS Decimal(18, 2)), CAST(300000.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, N'Viên', 1, CAST(N'2020-07-19T13:15:54.9426384' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, N'gach-tranh-mosaic-nghe-thuat-gt020', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Image], [Price], [PromotionPrice], [OriginalPrice], [Description], [Content], [HomeFlag], [HotFlag], [ViewCount], [Tags], [Unit], [Status], [DateCreated], [DateModified], [SeoPageTitle], [SeoAlias], [SeoKeywords], [SeoDescription]) VALUES (33, N'Xi Măng Vicem Hà Tiên Đa Dụng', 2, N'/img_ds/product-9.jpg', CAST(85000.00 AS Decimal(18, 2)), NULL, CAST(50000.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, N'Bao', 1, CAST(N'2020-07-19T13:15:54.9426415' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, N'xi-mang-vicem-ha-tien-da-dung', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Image], [Price], [PromotionPrice], [OriginalPrice], [Description], [Content], [HomeFlag], [HotFlag], [ViewCount], [Tags], [Unit], [Status], [DateCreated], [DateModified], [SeoPageTitle], [SeoAlias], [SeoKeywords], [SeoDescription]) VALUES (34, N'Xi Măng Hà Tiên 2 Đa Dụng', 2, N'/img_ds/product-10.jpg', CAST(85000.00 AS Decimal(18, 2)), NULL, CAST(50000.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, N'Bao', 1, CAST(N'2020-07-19T13:15:54.9426418' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, N'xi-mang-ha-tien-2-da-dung', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Image], [Price], [PromotionPrice], [OriginalPrice], [Description], [Content], [HomeFlag], [HotFlag], [ViewCount], [Tags], [Unit], [Status], [DateCreated], [DateModified], [SeoPageTitle], [SeoAlias], [SeoKeywords], [SeoDescription]) VALUES (35, N'Xi Măng Hoàng Mai Đa Dụng', 2, N'/img_ds/product-11.jpg', CAST(85000.00 AS Decimal(18, 2)), NULL, CAST(50000.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, N'Bao', 1, CAST(N'2020-07-19T13:15:54.9426421' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, N'xi-mang-hoang-long-da-dung', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Image], [Price], [PromotionPrice], [OriginalPrice], [Description], [Content], [HomeFlag], [HotFlag], [ViewCount], [Tags], [Unit], [Status], [DateCreated], [DateModified], [SeoPageTitle], [SeoAlias], [SeoKeywords], [SeoDescription]) VALUES (36, N'Xi Măng Hoàng Long Đa Dụng', 2, N'/img_ds/product-12.jpg', CAST(105000.00 AS Decimal(18, 2)), NULL, CAST(50000.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, N'Bao', 1, CAST(N'2020-07-19T13:15:54.9426424' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, N'xi-mang-hoang-mai-da-dung', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Image], [Price], [PromotionPrice], [OriginalPrice], [Description], [Content], [HomeFlag], [HotFlag], [ViewCount], [Tags], [Unit], [Status], [DateCreated], [DateModified], [SeoPageTitle], [SeoAlias], [SeoKeywords], [SeoDescription]) VALUES (37, N'Xi Măng Hoàng Thạch Đa Dụng', 2, N'/img_ds//product-13.jpg', CAST(95000.00 AS Decimal(18, 2)), NULL, CAST(50000.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, N'Bao', 1, CAST(N'2020-07-19T13:15:54.9426428' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, N'xi-mang-hoang-thach-da-dung', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Image], [Price], [PromotionPrice], [OriginalPrice], [Description], [Content], [HomeFlag], [HotFlag], [ViewCount], [Tags], [Unit], [Status], [DateCreated], [DateModified], [SeoPageTitle], [SeoAlias], [SeoKeywords], [SeoDescription]) VALUES (38, N'Xi Măng Holcim Đa Dụng', 2, N'/img_ds/product-14.jpg', CAST(95000.00 AS Decimal(18, 2)), NULL, CAST(50000.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, N'Bao', 1, CAST(N'2020-07-19T13:15:54.9426432' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, N'xi-mang-holcim-da-dung', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Image], [Price], [PromotionPrice], [OriginalPrice], [Description], [Content], [HomeFlag], [HotFlag], [ViewCount], [Tags], [Unit], [Status], [DateCreated], [DateModified], [SeoPageTitle], [SeoAlias], [SeoKeywords], [SeoDescription]) VALUES (39, N'Sàn gỗ Eurohome D893', 3, N'/img_ds/product-15.jpg', CAST(650000.00 AS Decimal(18, 2)), NULL, CAST(500000.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, N'M2', 1, CAST(N'2020-07-19T13:15:54.9426436' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, N'san-go-eurohome-d893', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Image], [Price], [PromotionPrice], [OriginalPrice], [Description], [Content], [HomeFlag], [HotFlag], [ViewCount], [Tags], [Unit], [Status], [DateCreated], [DateModified], [SeoPageTitle], [SeoAlias], [SeoKeywords], [SeoDescription]) VALUES (40, N'Sàn gỗ óc chó DongSung', 3, N'/img_ds/product-16.jpg', CAST(750000.00 AS Decimal(18, 2)), NULL, CAST(500000.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, N'M2', 1, CAST(N'2020-07-19T13:15:54.9426441' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, N'san-go-oc-cho-dongsung', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Image], [Price], [PromotionPrice], [OriginalPrice], [Description], [Content], [HomeFlag], [HotFlag], [ViewCount], [Tags], [Unit], [Status], [DateCreated], [DateModified], [SeoPageTitle], [SeoAlias], [SeoKeywords], [SeoDescription]) VALUES (41, N'Sàn gỗ tự nhiên Woodtec', 3, N'/img_ds/product-17.jpg', CAST(850000.00 AS Decimal(18, 2)), NULL, CAST(500000.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, N'M2', 1, CAST(N'2020-07-19T13:15:54.9426443' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, N'san-go-tu-nhien-woodtec', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Image], [Price], [PromotionPrice], [OriginalPrice], [Description], [Content], [HomeFlag], [HotFlag], [ViewCount], [Tags], [Unit], [Status], [DateCreated], [DateModified], [SeoPageTitle], [SeoAlias], [SeoKeywords], [SeoDescription]) VALUES (42, N'Sàn gỗ Kingfloor 8769', 3, N'/img_ds/product-18.jpg', CAST(950000.00 AS Decimal(18, 2)), NULL, CAST(500000.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, N'M2', 1, CAST(N'2020-07-19T13:15:54.9426463' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, N'san-go-kingfloor-8769', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Image], [Price], [PromotionPrice], [OriginalPrice], [Description], [Content], [HomeFlag], [HotFlag], [ViewCount], [Tags], [Unit], [Status], [DateCreated], [DateModified], [SeoPageTitle], [SeoAlias], [SeoKeywords], [SeoDescription]) VALUES (43, N'Sàn gỗ Meister PS300-8044', 3, N'/img_ds/product-19.jpg', CAST(650000.00 AS Decimal(18, 2)), NULL, CAST(500000.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, N'M2', 1, CAST(N'2020-07-19T13:15:54.9426465' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, N'san-go-meister-ps300-8044', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Image], [Price], [PromotionPrice], [OriginalPrice], [Description], [Content], [HomeFlag], [HotFlag], [ViewCount], [Tags], [Unit], [Status], [DateCreated], [DateModified], [SeoPageTitle], [SeoAlias], [SeoKeywords], [SeoDescription]) VALUES (44, N'Gạch cổ xây AB09', 7, N'/img_ds/product-20.jpg', CAST(8500.00 AS Decimal(18, 2)), NULL, CAST(5000.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, N'Viên', 1, CAST(N'2020-07-19T13:15:54.9426471' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, N'gach-co-xay-ab09', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Image], [Price], [PromotionPrice], [OriginalPrice], [Description], [Content], [HomeFlag], [HotFlag], [ViewCount], [Tags], [Unit], [Status], [DateCreated], [DateModified], [SeoPageTitle], [SeoAlias], [SeoKeywords], [SeoDescription]) VALUES (45, N'Gạch cổ xây AB01', 7, N'/img_ds/product-21.jpg', CAST(8500.00 AS Decimal(18, 2)), NULL, CAST(5000.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, N'Viên', 1, CAST(N'2020-07-19T13:15:54.9426474' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, N'gach-co-xay-ab01', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Image], [Price], [PromotionPrice], [OriginalPrice], [Description], [Content], [HomeFlag], [HotFlag], [ViewCount], [Tags], [Unit], [Status], [DateCreated], [DateModified], [SeoPageTitle], [SeoAlias], [SeoKeywords], [SeoDescription]) VALUES (46, N'Gạch cổ xây AB02', 7, N'/img_ds/product-22.jpg', CAST(8500.00 AS Decimal(18, 2)), NULL, CAST(5000.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, N'Viên', 1, CAST(N'2020-07-19T13:15:54.9426476' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, N'gach-co-xay-ab02', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Image], [Price], [PromotionPrice], [OriginalPrice], [Description], [Content], [HomeFlag], [HotFlag], [ViewCount], [Tags], [Unit], [Status], [DateCreated], [DateModified], [SeoPageTitle], [SeoAlias], [SeoKeywords], [SeoDescription]) VALUES (47, N'Keo dán gạch ít gây bụi Weber.tai MAXX', 4, N'/img_ds/product-47.jpg', CAST(500000.00 AS Decimal(18, 2)), NULL, CAST(300000.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, N'Bao', 1, CAST(N'2020-07-19T13:15:54.9426570' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, N'keo-dan-gach-it-gay-bui-weber.tai-maXX', NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [CategoryId], [Image], [Price], [PromotionPrice], [OriginalPrice], [Description], [Content], [HomeFlag], [HotFlag], [ViewCount], [Tags], [Unit], [Status], [DateCreated], [DateModified], [SeoPageTitle], [SeoAlias], [SeoKeywords], [SeoDescription]) VALUES (48, N'Keo dán gạch Weber.tai GRES', 4, N'/img_ds/product-48.jpg', CAST(500000.00 AS Decimal(18, 2)), CAST(15000.00 AS Decimal(18, 2)), CAST(300000.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, N'Bao', 1, CAST(N'2020-07-19T13:15:54.9426572' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, N'keo-dan-gach-weber.tai-gres', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Sizes] ON 

INSERT [dbo].[Sizes] ([Id], [Name]) VALUES (1, N'15cm x 30cm x 100cm')
INSERT [dbo].[Sizes] ([Id], [Name]) VALUES (2, N'6cm × 22,5cm')
INSERT [dbo].[Sizes] ([Id], [Name]) VALUES (3, N'30cm x 60cm')
INSERT [dbo].[Sizes] ([Id], [Name]) VALUES (4, N'40cm x 40cm')
INSERT [dbo].[Sizes] ([Id], [Name]) VALUES (5, N'60cm x 60cm')
INSERT [dbo].[Sizes] ([Id], [Name]) VALUES (6, N'25kg')
SET IDENTITY_INSERT [dbo].[Sizes] OFF
GO
SET IDENTITY_INSERT [dbo].[Slides] ON 

INSERT [dbo].[Slides] ([Id], [Name], [Description], [Image], [Url], [DisplayOrder], [Status], [Content], [GroupAlias]) VALUES (1, N'Linax', NULL, N'/img_ds/brand1.png', N'#', 1, 1, NULL, N'brand')
INSERT [dbo].[Slides] ([Id], [Name], [Description], [Image], [Url], [DisplayOrder], [Status], [Content], [GroupAlias]) VALUES (2, N'Gỗ Lưu Hoàng', NULL, N'/img_ds/brand9.png', N'#', 9, 1, NULL, N'brand')
INSERT [dbo].[Slides] ([Id], [Name], [Description], [Image], [Url], [DisplayOrder], [Status], [Content], [GroupAlias]) VALUES (3, N'Blue Bird', NULL, N'/img_ds/brand8.png', N'#', 8, 1, NULL, N'brand')
INSERT [dbo].[Slides] ([Id], [Name], [Description], [Image], [Url], [DisplayOrder], [Status], [Content], [GroupAlias]) VALUES (4, N'Mosaic', NULL, N'/img_ds/brand7.png', N'#', 7, 1, NULL, N'brand')
INSERT [dbo].[Slides] ([Id], [Name], [Description], [Image], [Url], [DisplayOrder], [Status], [Content], [GroupAlias]) VALUES (5, N'VITTO', NULL, N'/img_ds/brand6.png', N'#', 6, 1, NULL, N'brand')
INSERT [dbo].[Slides] ([Id], [Name], [Description], [Image], [Url], [DisplayOrder], [Status], [Content], [GroupAlias]) VALUES (6, N'BOSCH', NULL, N'/img_ds/brand5.png', N'#', 5, 1, NULL, N'brand')
INSERT [dbo].[Slides] ([Id], [Name], [Description], [Image], [Url], [DisplayOrder], [Status], [Content], [GroupAlias]) VALUES (7, N'Rubivina', NULL, N'/img_ds/brand4.png', N'#', 4, 1, NULL, N'brand')
INSERT [dbo].[Slides] ([Id], [Name], [Description], [Image], [Url], [DisplayOrder], [Status], [Content], [GroupAlias]) VALUES (8, N'Việt Thái', NULL, N'/img_ds/brand3.png', N'#', 3, 1, NULL, N'brand')
INSERT [dbo].[Slides] ([Id], [Name], [Description], [Image], [Url], [DisplayOrder], [Status], [Content], [GroupAlias]) VALUES (9, N'Lavender', NULL, N'/img_ds/brand2.png', N'#', 2, 1, NULL, N'brand')
INSERT [dbo].[Slides] ([Id], [Name], [Description], [Image], [Url], [DisplayOrder], [Status], [Content], [GroupAlias]) VALUES (10, N'Slide 3', NULL, N'/img_ds/slide-3.jpg', N'#', 3, 1, NULL, N'top')
INSERT [dbo].[Slides] ([Id], [Name], [Description], [Image], [Url], [DisplayOrder], [Status], [Content], [GroupAlias]) VALUES (11, N'Slide 2', NULL, N'/img_ds/slide-2.jpg', N'#', 2, 1, NULL, N'top')
INSERT [dbo].[Slides] ([Id], [Name], [Description], [Image], [Url], [DisplayOrder], [Status], [Content], [GroupAlias]) VALUES (12, N'Slide 1', NULL, N'/img_ds/slide-1.jpg', N'#', 1, 1, NULL, N'top')
INSERT [dbo].[Slides] ([Id], [Name], [Description], [Image], [Url], [DisplayOrder], [Status], [Content], [GroupAlias]) VALUES (13, N'Đại Gia Long', NULL, N'/img_ds/brand10.png', N'#', 10, 1, NULL, N'brand')
SET IDENTITY_INSERT [dbo].[Slides] OFF
GO
INSERT [dbo].[SystemConfigs] ([Id], [Name], [Value1], [Value2], [Value3], [Value4], [Value5], [Status]) VALUES (N'HomeMetaDescription', N'Mô tả trang chủ', N'Trang chủ', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[SystemConfigs] ([Id], [Name], [Value1], [Value2], [Value3], [Value4], [Value5], [Status]) VALUES (N'HomeMetaKeyword', N'Từ khoá trang chủ', N'Trang chủ', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[SystemConfigs] ([Id], [Name], [Value1], [Value2], [Value3], [Value4], [Value5], [Status]) VALUES (N'HomeTitle', N'Tiêu đề trang chủ', N'Trang chủ', NULL, NULL, NULL, NULL, 1)
GO
/****** Object:  Index [IX_Announcements_UserId]    Script Date: 7/20/2020 7:27:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_Announcements_UserId] ON [dbo].[Announcements]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AnnouncementUsers_AnnouncementId]    Script Date: 7/20/2020 7:27:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_AnnouncementUsers_AnnouncementId] ON [dbo].[AnnouncementUsers]
(
	[AnnouncementId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_BillDetails_BillId]    Script Date: 7/20/2020 7:27:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_BillDetails_BillId] ON [dbo].[BillDetails]
(
	[BillId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_BillDetails_ProductId]    Script Date: 7/20/2020 7:27:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_BillDetails_ProductId] ON [dbo].[BillDetails]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_BillDetails_SizeId]    Script Date: 7/20/2020 7:27:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_BillDetails_SizeId] ON [dbo].[BillDetails]
(
	[SizeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Bills_CustomerId]    Script Date: 7/20/2020 7:27:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_Bills_CustomerId] ON [dbo].[Bills]
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Permissions_FunctionId]    Script Date: 7/20/2020 7:27:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_Permissions_FunctionId] ON [dbo].[Permissions]
(
	[FunctionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Permissions_RoleId]    Script Date: 7/20/2020 7:27:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_Permissions_RoleId] ON [dbo].[Permissions]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductImages_ProductId]    Script Date: 7/20/2020 7:27:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_ProductImages_ProductId] ON [dbo].[ProductImages]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductQuantities_ProductId]    Script Date: 7/20/2020 7:27:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_ProductQuantities_ProductId] ON [dbo].[ProductQuantities]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductQuantities_SizeId]    Script Date: 7/20/2020 7:27:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_ProductQuantities_SizeId] ON [dbo].[ProductQuantities]
(
	[SizeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_CategoryId]    Script Date: 7/20/2020 7:27:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_Products_CategoryId] ON [dbo].[Products]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductTags_ProductId]    Script Date: 7/20/2020 7:27:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_ProductTags_ProductId] ON [dbo].[ProductTags]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ProductTags_TagId]    Script Date: 7/20/2020 7:27:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_ProductTags_TagId] ON [dbo].[ProductTags]
(
	[TagId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Announcements]  WITH CHECK ADD  CONSTRAINT [FK_Announcements_AppUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AppUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Announcements] CHECK CONSTRAINT [FK_Announcements_AppUsers_UserId]
GO
ALTER TABLE [dbo].[AnnouncementUsers]  WITH CHECK ADD  CONSTRAINT [FK_AnnouncementUsers_Announcements_AnnouncementId] FOREIGN KEY([AnnouncementId])
REFERENCES [dbo].[Announcements] ([Id])
GO
ALTER TABLE [dbo].[AnnouncementUsers] CHECK CONSTRAINT [FK_AnnouncementUsers_Announcements_AnnouncementId]
GO
ALTER TABLE [dbo].[BillDetails]  WITH CHECK ADD  CONSTRAINT [FK_BillDetails_Bills_BillId] FOREIGN KEY([BillId])
REFERENCES [dbo].[Bills] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BillDetails] CHECK CONSTRAINT [FK_BillDetails_Bills_BillId]
GO
ALTER TABLE [dbo].[BillDetails]  WITH CHECK ADD  CONSTRAINT [FK_BillDetails_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BillDetails] CHECK CONSTRAINT [FK_BillDetails_Products_ProductId]
GO
ALTER TABLE [dbo].[BillDetails]  WITH CHECK ADD  CONSTRAINT [FK_BillDetails_Sizes_SizeId] FOREIGN KEY([SizeId])
REFERENCES [dbo].[Sizes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BillDetails] CHECK CONSTRAINT [FK_BillDetails_Sizes_SizeId]
GO
ALTER TABLE [dbo].[Bills]  WITH CHECK ADD  CONSTRAINT [FK_Bills_AppUsers_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[AppUsers] ([Id])
GO
ALTER TABLE [dbo].[Bills] CHECK CONSTRAINT [FK_Bills_AppUsers_CustomerId]
GO
ALTER TABLE [dbo].[Permissions]  WITH CHECK ADD  CONSTRAINT [FK_Permissions_AppRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AppRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Permissions] CHECK CONSTRAINT [FK_Permissions_AppRoles_RoleId]
GO
ALTER TABLE [dbo].[Permissions]  WITH CHECK ADD  CONSTRAINT [FK_Permissions_Functions_FunctionId] FOREIGN KEY([FunctionId])
REFERENCES [dbo].[Functions] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Permissions] CHECK CONSTRAINT [FK_Permissions_Functions_FunctionId]
GO
ALTER TABLE [dbo].[ProductImages]  WITH CHECK ADD  CONSTRAINT [FK_ProductImages_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductImages] CHECK CONSTRAINT [FK_ProductImages_Products_ProductId]
GO
ALTER TABLE [dbo].[ProductQuantities]  WITH CHECK ADD  CONSTRAINT [FK_ProductQuantities_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductQuantities] CHECK CONSTRAINT [FK_ProductQuantities_Products_ProductId]
GO
ALTER TABLE [dbo].[ProductQuantities]  WITH CHECK ADD  CONSTRAINT [FK_ProductQuantities_Sizes_SizeId] FOREIGN KEY([SizeId])
REFERENCES [dbo].[Sizes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductQuantities] CHECK CONSTRAINT [FK_ProductQuantities_Sizes_SizeId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_ProductCategories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[ProductCategories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_ProductCategories_CategoryId]
GO
ALTER TABLE [dbo].[ProductTags]  WITH CHECK ADD  CONSTRAINT [FK_ProductTags_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductTags] CHECK CONSTRAINT [FK_ProductTags_Products_ProductId]
GO
ALTER TABLE [dbo].[ProductTags]  WITH CHECK ADD  CONSTRAINT [FK_ProductTags_Tags_TagId] FOREIGN KEY([TagId])
REFERENCES [dbo].[Tags] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductTags] CHECK CONSTRAINT [FK_ProductTags_Tags_TagId]
GO
USE [master]
GO
ALTER DATABASE [QL_Vat_Lieu_Xay_Dung] SET  READ_WRITE 
GO
