USE [master]
GO
/****** Object:  Database [db_ecomartvietnam]    Script Date: 9/24/2021 1:58:45 PM ******/
CREATE DATABASE [db_ecomartvietnam]
 CONTAINMENT = NONE

ALTER DATABASE [db_ecomartvietnam] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [db_ecomartvietnam].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [db_ecomartvietnam] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [db_ecomartvietnam] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [db_ecomartvietnam] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [db_ecomartvietnam] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [db_ecomartvietnam] SET ARITHABORT OFF 
GO
ALTER DATABASE [db_ecomartvietnam] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [db_ecomartvietnam] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [db_ecomartvietnam] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [db_ecomartvietnam] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [db_ecomartvietnam] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [db_ecomartvietnam] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [db_ecomartvietnam] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [db_ecomartvietnam] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [db_ecomartvietnam] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [db_ecomartvietnam] SET  ENABLE_BROKER 
GO
ALTER DATABASE [db_ecomartvietnam] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [db_ecomartvietnam] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [db_ecomartvietnam] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [db_ecomartvietnam] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [db_ecomartvietnam] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [db_ecomartvietnam] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [db_ecomartvietnam] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [db_ecomartvietnam] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [db_ecomartvietnam] SET  MULTI_USER 
GO
ALTER DATABASE [db_ecomartvietnam] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [db_ecomartvietnam] SET DB_CHAINING OFF 
GO
ALTER DATABASE [db_ecomartvietnam] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [db_ecomartvietnam] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [db_ecomartvietnam] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [db_ecomartvietnam] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [db_ecomartvietnam] SET QUERY_STORE = OFF
GO
USE [db_ecomartvietnam]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 9/24/2021 1:58:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[category_id] [int] IDENTITY(1,1) NOT NULL,
	[category_name] [nvarchar](100) NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_detail]    Script Date: 9/24/2021 1:58:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_detail](
	[order_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
	[price] [decimal](18, 0) NULL,
	[quantity] [int] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[order_id] ASC,
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 9/24/2021 1:58:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[order_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[status] [int] NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 9/24/2021 1:58:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[product_id] [int] IDENTITY(1,1) NOT NULL,
	[category_id] [int] NOT NULL,
	[product_name] [nvarchar](100) NOT NULL,
	[product_source] [nvarchar](100) NULL,
	[product_weight] [nvarchar](100) NULL,
	[product_description] [ntext] NOT NULL,
	[product_price] [decimal](18, 0) NOT NULL,
	[product_image] [varchar](50) NULL,
	[product_amount] [int] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 9/24/2021 1:58:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[email] [nvarchar](100) NOT NULL,
	[phone_number] [nvarchar](11) NULL,
	[password] [nvarchar](200) NOT NULL,
	[full_name] [nvarchar](50) NULL,
	[address] [nvarchar](100) NULL,
	[role] [int] NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[is_active] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Order_detail]  WITH CHECK ADD FOREIGN KEY([order_id])
REFERENCES [dbo].[Orders] ([order_id])
GO
ALTER TABLE [dbo].[Order_detail]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[Products] ([product_id])
GO
ALTER TABLE [dbo].[Order_detail]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[Products] ([product_id])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([user_id])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([user_id])
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD FOREIGN KEY([category_id])
REFERENCES [dbo].[Categories] ([category_id])
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD FOREIGN KEY([category_id])
REFERENCES [dbo].[Categories] ([category_id])
GO
USE [master]
GO
ALTER DATABASE [db_ecomartvietnam] SET  READ_WRITE 
GO
select * from Users
