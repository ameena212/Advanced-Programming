USE [master]
GO
/****** Object:  Database [DBHomeService]    Script Date: 5/28/2024 6:42:27 PM ******/
CREATE DATABASE [DBHomeService]
 GO
ALTER DATABASE [DBHomeService] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DBHomeService].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DBHomeService] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DBHomeService] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DBHomeService] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DBHomeService] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DBHomeService] SET ARITHABORT OFF 
GO
ALTER DATABASE [DBHomeService] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [DBHomeService] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DBHomeService] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DBHomeService] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DBHomeService] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DBHomeService] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DBHomeService] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DBHomeService] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DBHomeService] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DBHomeService] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DBHomeService] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DBHomeService] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DBHomeService] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DBHomeService] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DBHomeService] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DBHomeService] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [DBHomeService] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DBHomeService] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DBHomeService] SET  MULTI_USER 
GO
ALTER DATABASE [DBHomeService] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DBHomeService] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DBHomeService] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DBHomeService] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DBHomeService] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DBHomeService] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [DBHomeService] SET QUERY_STORE = OFF
GO
USE [DBHomeService]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 5/28/2024 6:42:28 PM ******/
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
/****** Object:  Table [dbo].[AppCategories]    Script Date: 5/28/2024 6:42:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppCategories](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](max) NULL,
	[CategoryDescription] [nvarchar](max) NULL,
	[ManagerId] [int] NOT NULL,
 CONSTRAINT [PK_AppCategories] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppCategoryAppUser]    Script Date: 5/28/2024 6:42:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppCategoryAppUser](
	[AppCategoriesCategoryId] [int] NOT NULL,
	[TechniciansUserID] [int] NOT NULL,
 CONSTRAINT [PK_AppCategoryAppUser] PRIMARY KEY CLUSTERED 
(
	[AppCategoriesCategoryId] ASC,
	[TechniciansUserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppLogs]    Script Date: 5/28/2024 6:42:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppLogs](
	[LogId] [int] IDENTITY(1,1) NOT NULL,
	[LogSource] [nvarchar](max) NULL,
	[LogType] [nvarchar](max) NULL,
	[UserId] [int] NOT NULL,
	[LogDateTime] [datetime2](7) NOT NULL,
	[LogMessage] [nvarchar](max) NULL,
	[OriginalValue] [nvarchar](max) NULL,
	[CurrentValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AppLogs] PRIMARY KEY CLUSTERED 
(
	[LogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppServices]    Script Date: 5/28/2024 6:42:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppServices](
	[ServiceId] [int] IDENTITY(1,1) NOT NULL,
	[ServiceName] [nvarchar](max) NULL,
	[ServiceType] [nvarchar](max) NULL,
	[ServiceDescription] [nvarchar](max) NULL,
	[CategoryId] [int] NOT NULL,
	[ServiceDuration] [nvarchar](max) NULL,
	[Price] [float] NOT NULL,
 CONSTRAINT [PK_AppServices] PRIMARY KEY CLUSTERED 
(
	[ServiceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppUsers]    Script Date: 5/28/2024 6:42:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppUsers](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserRoleId] [int] NOT NULL,
	[Fname] [nvarchar](max) NULL,
	[Lname] [nvarchar](max) NULL,
	[Dob] [datetime2](7) NOT NULL,
	[Email] [nvarchar](max) NULL,
	[Phone] [int] NOT NULL,
 CONSTRAINT [PK_AppUsers] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comments]    Script Date: 5/28/2024 6:42:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[CommentId] [int] IDENTITY(1,1) NOT NULL,
	[CommentDateTime] [datetime2](7) NOT NULL,
	[UserId] [int] NOT NULL,
	[CommentTitle] [nvarchar](max) NULL,
	[CommentText] [nvarchar](max) NULL,
	[ServiceRequestId] [int] NOT NULL,
 CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED 
(
	[CommentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Documents]    Script Date: 5/28/2024 6:42:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Documents](
	[DocumentId] [int] IDENTITY(1,1) NOT NULL,
	[DocumentName] [nvarchar](max) NULL,
	[UserId] [int] NOT NULL,
	[UploadDate] [datetime2](7) NOT NULL,
	[DocumentType] [nvarchar](max) NULL,
	[DocumentDescription] [nvarchar](max) NULL,
	[DocumentPath] [nvarchar](max) NULL,
	[ServiceRequestId] [int] NOT NULL,
 CONSTRAINT [PK_Documents] PRIMARY KEY CLUSTERED 
(
	[DocumentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notifications]    Script Date: 5/28/2024 6:42:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notifications](
	[NotificationId] [int] IDENTITY(1,1) NOT NULL,
	[NotificationMessage] [nvarchar](max) NULL,
	[NotificationType] [nvarchar](max) NULL,
	[NotificationDateTime] [datetime2](7) NOT NULL,
	[NotificationStatusId] [int] NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_Notifications] PRIMARY KEY CLUSTERED 
(
	[NotificationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NotificationStatuses]    Script Date: 5/28/2024 6:42:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NotificationStatuses](
	[NotificationStatusId] [int] IDENTITY(1,1) NOT NULL,
	[NotificationStatus1] [nvarchar](max) NULL,
 CONSTRAINT [PK_NotificationStatuses] PRIMARY KEY CLUSTERED 
(
	[NotificationStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payments]    Script Date: 5/28/2024 6:42:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payments](
	[PaymentId] [int] IDENTITY(1,1) NOT NULL,
	[Total] [float] NOT NULL,
	[PayType] [nvarchar](max) NULL,
	[ServiceRequestId] [int] NULL,
	[Address] [nvarchar](max) NULL,
	[PaymentStatusId] [int] NOT NULL,
	[PayDateTime] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Payments] PRIMARY KEY CLUSTERED 
(
	[PaymentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentStatuses]    Script Date: 5/28/2024 6:42:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentStatuses](
	[PaymentStatusId] [int] IDENTITY(1,1) NOT NULL,
	[PaymentStatus1] [bit] NOT NULL,
 CONSTRAINT [PK_PaymentStatuses] PRIMARY KEY CLUSTERED 
(
	[PaymentStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServiceRequests]    Script Date: 5/28/2024 6:42:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiceRequests](
	[ServiceRequestId] [int] IDENTITY(1,1) NOT NULL,
	[ServiceId] [int] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[DateNeeded] [datetime2](7) NOT NULL,
	[Price] [float] NOT NULL,
	[ServiceStatusId] [int] NULL,
	[DocumentId] [int] NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_ServiceRequests] PRIMARY KEY CLUSTERED 
(
	[ServiceRequestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServiceStatuses]    Script Date: 5/28/2024 6:42:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiceStatuses](
	[ServiceStatusId] [int] IDENTITY(1,1) NOT NULL,
	[ServiceState] [nvarchar](max) NULL,
 CONSTRAINT [PK_ServiceStatuses] PRIMARY KEY CLUSTERED 
(
	[ServiceStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRoles]    Script Date: 5/28/2024 6:42:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRoles](
	[UserRoleId] [int] IDENTITY(1,1) NOT NULL,
	[UserType] [nvarchar](max) NULL,
 CONSTRAINT [PK_UserRoles] PRIMARY KEY CLUSTERED 
(
	[UserRoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AppCategories] ON 

INSERT [dbo].[AppCategories] ([CategoryId], [CategoryName], [CategoryDescription], [ManagerId]) VALUES (4, N'Plumbing', N'Perform preventive maintenance to gas outlets, fire suppression sprinkler systems, lawn sprinklers, plumbing fixtures, etc.', 1)
INSERT [dbo].[AppCategories] ([CategoryId], [CategoryName], [CategoryDescription], [ManagerId]) VALUES (5, N'Cleaning', N'Dusting and cleaning ceiling vents, surface areas, and counter surfaces', 1)
INSERT [dbo].[AppCategories] ([CategoryId], [CategoryName], [CategoryDescription], [ManagerId]) VALUES (6, N'Electrical', N'Installs all of the wiring, circuits, and outlets needed to power lights, appliances, and equipment within a building', 1)
INSERT [dbo].[AppCategories] ([CategoryId], [CategoryName], [CategoryDescription], [ManagerId]) VALUES (9, N'Painting', N'Our Paint Technician is responsible for preparing and painting surfaces, applying coatings to automobiles, furniture, and appliances, and ensuring that paint jobs', 2)
INSERT [dbo].[AppCategories] ([CategoryId], [CategoryName], [CategoryDescription], [ManagerId]) VALUES (10, N'Carpentry', N'Builds or repairs cabinets, doors, frameworks, floors, or other wooden fixtures used in buildings, using woodworking machines, hand tools, or power tools.', 2)
INSERT [dbo].[AppCategories] ([CategoryId], [CategoryName], [CategoryDescription], [ManagerId]) VALUES (11, N'Gardening', N'monitoring the health of all plants and greenscapes, watering and feeding plants, trimming trees and shrubs', 2)
SET IDENTITY_INSERT [dbo].[AppCategories] OFF
GO
SET IDENTITY_INSERT [dbo].[AppLogs] ON 

INSERT [dbo].[AppLogs] ([LogId], [LogSource], [LogType], [UserId], [LogDateTime], [LogMessage], [OriginalValue], [CurrentValue]) VALUES (1, N'Login Page', N'Action', 8, CAST(N'2024-05-27T17:16:00.0000000' AS DateTime2), N'User successfully logged in', N'None', N'salem, User')
INSERT [dbo].[AppLogs] ([LogId], [LogSource], [LogType], [UserId], [LogDateTime], [LogMessage], [OriginalValue], [CurrentValue]) VALUES (2, N'Checkout', N'Excpetion', 7, CAST(N'2024-05-28T12:13:00.0000000' AS DateTime2), N'Error in payment', N'9 AM', N'10 AM')
INSERT [dbo].[AppLogs] ([LogId], [LogSource], [LogType], [UserId], [LogDateTime], [LogMessage], [OriginalValue], [CurrentValue]) VALUES (3, N'Billing', N'Error', 8, CAST(N'2024-05-27T17:03:00.0000000' AS DateTime2), N'Payment failed', N'100', N'50')
INSERT [dbo].[AppLogs] ([LogId], [LogSource], [LogType], [UserId], [LogDateTime], [LogMessage], [OriginalValue], [CurrentValue]) VALUES (4, N'Payment ', N'Information', 8, CAST(N'2024-06-17T13:55:00.0000000' AS DateTime2), N'billing information', N'available service', N'In progress service')
SET IDENTITY_INSERT [dbo].[AppLogs] OFF
GO
SET IDENTITY_INSERT [dbo].[AppServices] ON 

INSERT [dbo].[AppServices] ([ServiceId], [ServiceName], [ServiceType], [ServiceDescription], [CategoryId], [ServiceDuration], [Price]) VALUES (6, N'gardening outdoor', N'Full House Service', N'monitoring the health of all plants and greenscapes, watering and feeding plants, ', 11, N'1 hour', 80)
INSERT [dbo].[AppServices] ([ServiceId], [ServiceName], [ServiceType], [ServiceDescription], [CategoryId], [ServiceDuration], [Price]) VALUES (7, N'gardening indoor', N'Half House Service', N'monitoring the health of all plants and greenscapes, watering and feeding plants, trimming trees and shrubs', 11, N'2 hours', 60)
INSERT [dbo].[AppServices] ([ServiceId], [ServiceName], [ServiceType], [ServiceDescription], [CategoryId], [ServiceDuration], [Price]) VALUES (8, N'Emergency Pipe Repair', N'Full House Service', N'This service is designed to address urgent plumbing issues such as burst pipes, major leaks, or sewer backups.', 4, N'4 hours', 130)
INSERT [dbo].[AppServices] ([ServiceId], [ServiceName], [ServiceType], [ServiceDescription], [CategoryId], [ServiceDuration], [Price]) VALUES (9, N'Plumbing Maintenance', N'Half House Service', N'This service focuses on preventive maintenance to identify and address potential plumbing issues before they escalate into emergencies. ', 4, N'2 hours', 120)
INSERT [dbo].[AppServices] ([ServiceId], [ServiceName], [ServiceType], [ServiceDescription], [CategoryId], [ServiceDuration], [Price]) VALUES (11, N'Safety Inspection and Testing', N'Full House Service', N'This service is focused on ensuring the safety and functionality of your home''s electrical system. ', 6, N'2 hours', 230)
INSERT [dbo].[AppServices] ([ServiceId], [ServiceName], [ServiceType], [ServiceDescription], [CategoryId], [ServiceDuration], [Price]) VALUES (12, N'Electrical Installation', N'Half House Service', N'Whether you''re looking to install new light fixtures, ceiling fans, outlets, or switches, our skilled electricians are here to help.', 6, N'1 hour', 170)
INSERT [dbo].[AppServices] ([ServiceId], [ServiceName], [ServiceType], [ServiceDescription], [CategoryId], [ServiceDuration], [Price]) VALUES (13, N'Interior Painting', N'Full House Service', N'This service is perfect for refreshing the interior of your home with a new coat of paint. ', 9, N'7 hour', 400)
INSERT [dbo].[AppServices] ([ServiceId], [ServiceName], [ServiceType], [ServiceDescription], [CategoryId], [ServiceDuration], [Price]) VALUES (14, N'Exterior Painting', N'Half House Service', N'Transform the exterior of your home and boost curb appeal with our professional exterior painting service. ', 9, N'5 hours', 80)
INSERT [dbo].[AppServices] ([ServiceId], [ServiceName], [ServiceType], [ServiceDescription], [CategoryId], [ServiceDuration], [Price]) VALUES (15, N'Carpentry Installation', N'Full House Service', N'This service is perfect for homeowners looking to maximize storage space and enhance the organization of their living areas. ', 10, N'3 hours', 500)
INSERT [dbo].[AppServices] ([ServiceId], [ServiceName], [ServiceType], [ServiceDescription], [CategoryId], [ServiceDuration], [Price]) VALUES (17, N'Residential Cleaning', N'Full House Service', N'This comprehensive service is designed to give your home a thorough and deep clean from top to bottom. Our professional cleaning team will meticulously clean and sanitize every room, paying special attention to high-touch surfaces, floors, and hard-to-reach areas.', 5, N'8 hours', 400)
SET IDENTITY_INSERT [dbo].[AppServices] OFF
GO
SET IDENTITY_INSERT [dbo].[AppUsers] ON 

INSERT [dbo].[AppUsers] ([UserID], [UserRoleId], [Fname], [Lname], [Dob], [Email], [Phone]) VALUES (1, 2, N'ameena', N'almuhana', CAST(N'1998-10-31T13:00:00.0000000' AS DateTime2), N'202000270@student.polytechnic.bh', 33822057)
INSERT [dbo].[AppUsers] ([UserID], [UserRoleId], [Fname], [Lname], [Dob], [Email], [Phone]) VALUES (2, 2, N'sara', N'mohammed', CAST(N'1986-06-26T01:01:00.0000000' AS DateTime2), N'sara123@gmail.com', 32844094)
INSERT [dbo].[AppUsers] ([UserID], [UserRoleId], [Fname], [Lname], [Dob], [Email], [Phone]) VALUES (5, 3, N'fedda', N'ahmed', CAST(N'1995-07-26T12:05:00.0000000' AS DateTime2), N'fe123da@gmail.com', 34567891)
INSERT [dbo].[AppUsers] ([UserID], [UserRoleId], [Fname], [Lname], [Dob], [Email], [Phone]) VALUES (6, 3, N'maryam', N'khaled', CAST(N'1992-10-26T01:07:00.0000000' AS DateTime2), N'm1234a@gmail.com', 37582562)
INSERT [dbo].[AppUsers] ([UserID], [UserRoleId], [Fname], [Lname], [Dob], [Email], [Phone]) VALUES (7, 4, N'ameena', N'adell', CAST(N'1999-06-26T22:36:00.0000000' AS DateTime2), N'ameena4almuhana@gmail.com', 33822057)
INSERT [dbo].[AppUsers] ([UserID], [UserRoleId], [Fname], [Lname], [Dob], [Email], [Phone]) VALUES (8, 4, N'salem', N'ali', CAST(N'1989-05-27T02:11:00.0000000' AS DateTime2), N's22albuainain@gmail.com', 339295252)
INSERT [dbo].[AppUsers] ([UserID], [UserRoleId], [Fname], [Lname], [Dob], [Email], [Phone]) VALUES (9, 1, N'Nasser', N'Rashed', CAST(N'1975-10-28T16:30:00.0000000' AS DateTime2), N'Nasser11admin@gmail.com', 34447567)
SET IDENTITY_INSERT [dbo].[AppUsers] OFF
GO
SET IDENTITY_INSERT [dbo].[Comments] ON 

INSERT [dbo].[Comments] ([CommentId], [CommentDateTime], [UserId], [CommentTitle], [CommentText], [ServiceRequestId]) VALUES (1, CAST(N'2024-05-27T12:08:00.0000000' AS DateTime2), 5, N'Good job', N'excellent work', 9)
INSERT [dbo].[Comments] ([CommentId], [CommentDateTime], [UserId], [CommentTitle], [CommentText], [ServiceRequestId]) VALUES (2, CAST(N'2024-05-27T12:11:00.0000000' AS DateTime2), 6, N'Work performance', N'do better job next time', 11)
INSERT [dbo].[Comments] ([CommentId], [CommentDateTime], [UserId], [CommentTitle], [CommentText], [ServiceRequestId]) VALUES (3, CAST(N'2024-05-29T06:12:00.0000000' AS DateTime2), 5, N'not completed work', N'You did not clean the kitchen', 19)
SET IDENTITY_INSERT [dbo].[Comments] OFF
GO
SET IDENTITY_INSERT [dbo].[Documents] ON 

INSERT [dbo].[Documents] ([DocumentId], [DocumentName], [UserId], [UploadDate], [DocumentType], [DocumentDescription], [DocumentPath], [ServiceRequestId]) VALUES (3, N'planting002', 7, CAST(N'2024-05-27T12:02:00.0000000' AS DateTime2), N'Invoice', N'Plant my garden', N'/document/planting002', 1)
INSERT [dbo].[Documents] ([DocumentId], [DocumentName], [UserId], [UploadDate], [DocumentType], [DocumentDescription], [DocumentPath], [ServiceRequestId]) VALUES (4, N'cleaning11', 8, CAST(N'2024-05-08T14:03:00.0000000' AS DateTime2), N'PDF', N'Clean my house', N'/document/cleaning11.pdf', 2)
INSERT [dbo].[Documents] ([DocumentId], [DocumentName], [UserId], [UploadDate], [DocumentType], [DocumentDescription], [DocumentPath], [ServiceRequestId]) VALUES (6, N'garden221', 8, CAST(N'2024-03-10T00:56:00.0000000' AS DateTime2), N'JPEG', N'trim our trees', N'/document/garden221.jpeg', 3)
INSERT [dbo].[Documents] ([DocumentId], [DocumentName], [UserId], [UploadDate], [DocumentType], [DocumentDescription], [DocumentPath], [ServiceRequestId]) VALUES (8, N'fixTV993', 7, CAST(N'2024-04-18T09:04:00.0000000' AS DateTime2), N'DOCX', N'fix our TV', N'/document/fixTV993.docx	', 4)
INSERT [dbo].[Documents] ([DocumentId], [DocumentName], [UserId], [UploadDate], [DocumentType], [DocumentDescription], [DocumentPath], [ServiceRequestId]) VALUES (9, N'Paint_12353.pdf', 7, CAST(N'2024-03-20T17:14:00.0000000' AS DateTime2), N'PDF', N'Request for painting house', N'/document/Paint_12353.pdf', 5)
SET IDENTITY_INSERT [dbo].[Documents] OFF
GO
SET IDENTITY_INSERT [dbo].[Notifications] ON 

INSERT [dbo].[Notifications] ([NotificationId], [NotificationMessage], [NotificationType], [NotificationDateTime], [NotificationStatusId], [UserId]) VALUES (1, N'You have received a new message of salem', N'message', CAST(N'2024-05-27T12:19:00.0000000' AS DateTime2), 2, 8)
INSERT [dbo].[Notifications] ([NotificationId], [NotificationMessage], [NotificationType], [NotificationDateTime], [NotificationStatusId], [UserId]) VALUES (2, N'Account upgrade', N'Account upgrade', CAST(N'2024-05-31T12:19:00.0000000' AS DateTime2), 1, 7)
INSERT [dbo].[Notifications] ([NotificationId], [NotificationMessage], [NotificationType], [NotificationDateTime], [NotificationStatusId], [UserId]) VALUES (3, N'You have a new work!', N'Invoice', CAST(N'2024-07-17T15:52:00.0000000' AS DateTime2), 3, 5)
INSERT [dbo].[Notifications] ([NotificationId], [NotificationMessage], [NotificationType], [NotificationDateTime], [NotificationStatusId], [UserId]) VALUES (4, N'status changed!', N'Text', CAST(N'2024-05-29T15:52:00.0000000' AS DateTime2), 4, 6)
INSERT [dbo].[Notifications] ([NotificationId], [NotificationMessage], [NotificationType], [NotificationDateTime], [NotificationStatusId], [UserId]) VALUES (5, N'successfully payed', N'Text', CAST(N'2024-05-28T01:55:00.0000000' AS DateTime2), 7, 8)
SET IDENTITY_INSERT [dbo].[Notifications] OFF
GO
SET IDENTITY_INSERT [dbo].[NotificationStatuses] ON 

INSERT [dbo].[NotificationStatuses] ([NotificationStatusId], [NotificationStatus1]) VALUES (1, N'Read')
INSERT [dbo].[NotificationStatuses] ([NotificationStatusId], [NotificationStatus1]) VALUES (2, N'Unread')
INSERT [dbo].[NotificationStatuses] ([NotificationStatusId], [NotificationStatus1]) VALUES (3, N'You have a new request')
INSERT [dbo].[NotificationStatuses] ([NotificationStatusId], [NotificationStatus1]) VALUES (4, N'Your ServiceStatus is changed to Active')
INSERT [dbo].[NotificationStatuses] ([NotificationStatusId], [NotificationStatus1]) VALUES (5, N'Your ServiceStatus is changed to Deleted')
INSERT [dbo].[NotificationStatuses] ([NotificationStatusId], [NotificationStatus1]) VALUES (6, N'Your ServiceStatus is changed to Achieved')
INSERT [dbo].[NotificationStatuses] ([NotificationStatusId], [NotificationStatus1]) VALUES (7, N'Your Payment is done')
SET IDENTITY_INSERT [dbo].[NotificationStatuses] OFF
GO
SET IDENTITY_INSERT [dbo].[Payments] ON 

INSERT [dbo].[Payments] ([PaymentId], [Total], [PayType], [ServiceRequestId], [Address], [PaymentStatusId], [PayDateTime]) VALUES (1, 50, N'Visa Card', 9, N'Bahrain, Arad 2445', 1, CAST(N'2024-05-27T12:16:00.0000000' AS DateTime2))
INSERT [dbo].[Payments] ([PaymentId], [Total], [PayType], [ServiceRequestId], [Address], [PaymentStatusId], [PayDateTime]) VALUES (2, 100, N'Cash', 12, N'Bahrain, Arad 754', 1, CAST(N'2024-05-28T12:16:00.0000000' AS DateTime2))
INSERT [dbo].[Payments] ([PaymentId], [Total], [PayType], [ServiceRequestId], [Address], [PaymentStatusId], [PayDateTime]) VALUES (3, 10, N'Paypal', 11, N'Bahrain, Arad 3756', 1, CAST(N'2024-05-28T13:54:00.0000000' AS DateTime2))
INSERT [dbo].[Payments] ([PaymentId], [Total], [PayType], [ServiceRequestId], [Address], [PaymentStatusId], [PayDateTime]) VALUES (4, 60, N'Visa Card', 19, N'Bahrain, 865', 2, CAST(N'2024-05-31T17:57:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Payments] OFF
GO
SET IDENTITY_INSERT [dbo].[PaymentStatuses] ON 

INSERT [dbo].[PaymentStatuses] ([PaymentStatusId], [PaymentStatus1]) VALUES (1, 1)
INSERT [dbo].[PaymentStatuses] ([PaymentStatusId], [PaymentStatus1]) VALUES (2, 0)
SET IDENTITY_INSERT [dbo].[PaymentStatuses] OFF
GO
SET IDENTITY_INSERT [dbo].[ServiceRequests] ON 

INSERT [dbo].[ServiceRequests] ([ServiceRequestId], [ServiceId], [Description], [DateNeeded], [Price], [ServiceStatusId], [DocumentId], [UserId]) VALUES (9, 6, N'Full house Service', CAST(N'2024-05-29T11:56:00.0000000' AS DateTime2), 100, 1, 3, 8)
INSERT [dbo].[ServiceRequests] ([ServiceRequestId], [ServiceId], [Description], [DateNeeded], [Price], [ServiceStatusId], [DocumentId], [UserId]) VALUES (10, 6, N'Full house Service', CAST(N'2024-05-29T11:56:00.0000000' AS DateTime2), 100, 1, NULL, 7)
INSERT [dbo].[ServiceRequests] ([ServiceRequestId], [ServiceId], [Description], [DateNeeded], [Price], [ServiceStatusId], [DocumentId], [UserId]) VALUES (11, 7, N'Half house Service', CAST(N'2024-05-31T15:55:00.0000000' AS DateTime2), 100, 1, NULL, 6)
INSERT [dbo].[ServiceRequests] ([ServiceRequestId], [ServiceId], [Description], [DateNeeded], [Price], [ServiceStatusId], [DocumentId], [UserId]) VALUES (12, 11, N'Half house Service', CAST(N'2024-05-27T16:57:00.0000000' AS DateTime2), 50, 4, 6, 2)
INSERT [dbo].[ServiceRequests] ([ServiceRequestId], [ServiceId], [Description], [DateNeeded], [Price], [ServiceStatusId], [DocumentId], [UserId]) VALUES (14, 15, N'Full house Service', CAST(N'2024-05-31T11:58:00.0000000' AS DateTime2), 10, 1, NULL, 2)
INSERT [dbo].[ServiceRequests] ([ServiceRequestId], [ServiceId], [Description], [DateNeeded], [Price], [ServiceStatusId], [DocumentId], [UserId]) VALUES (17, 11, N'Full house Service', CAST(N'2024-07-23T17:12:00.0000000' AS DateTime2), 10, 1, 3, 8)
INSERT [dbo].[ServiceRequests] ([ServiceRequestId], [ServiceId], [Description], [DateNeeded], [Price], [ServiceStatusId], [DocumentId], [UserId]) VALUES (18, 8, N'Full house Service', CAST(N'2024-05-29T15:33:00.0000000' AS DateTime2), 50, 1, 9, 9)
INSERT [dbo].[ServiceRequests] ([ServiceRequestId], [ServiceId], [Description], [DateNeeded], [Price], [ServiceStatusId], [DocumentId], [UserId]) VALUES (19, 14, N'Half house Service', CAST(N'2024-07-30T18:37:00.0000000' AS DateTime2), 10, 1, 6, 8)
INSERT [dbo].[ServiceRequests] ([ServiceRequestId], [ServiceId], [Description], [DateNeeded], [Price], [ServiceStatusId], [DocumentId], [UserId]) VALUES (20, 12, N'Full house Service', CAST(N'2024-05-28T14:37:00.0000000' AS DateTime2), 100, 2, 4, 9)
INSERT [dbo].[ServiceRequests] ([ServiceRequestId], [ServiceId], [Description], [DateNeeded], [Price], [ServiceStatusId], [DocumentId], [UserId]) VALUES (21, 6, N'Full house Service', CAST(N'2024-05-28T16:40:00.0000000' AS DateTime2), 100, 2, 6, 5)
INSERT [dbo].[ServiceRequests] ([ServiceRequestId], [ServiceId], [Description], [DateNeeded], [Price], [ServiceStatusId], [DocumentId], [UserId]) VALUES (22, 8, N'Half house Service', CAST(N'2024-07-17T01:38:00.0000000' AS DateTime2), 100, 1, 8, 5)
INSERT [dbo].[ServiceRequests] ([ServiceRequestId], [ServiceId], [Description], [DateNeeded], [Price], [ServiceStatusId], [DocumentId], [UserId]) VALUES (23, 15, N'Half house Service', CAST(N'2024-05-31T16:44:00.0000000' AS DateTime2), 50, 1, 8, 1)
INSERT [dbo].[ServiceRequests] ([ServiceRequestId], [ServiceId], [Description], [DateNeeded], [Price], [ServiceStatusId], [DocumentId], [UserId]) VALUES (24, 15, N'Full house Service', CAST(N'2024-05-28T01:55:00.0000000' AS DateTime2), 100, 1, 4, 9)
SET IDENTITY_INSERT [dbo].[ServiceRequests] OFF
GO
SET IDENTITY_INSERT [dbo].[ServiceStatuses] ON 

INSERT [dbo].[ServiceStatuses] ([ServiceStatusId], [ServiceState]) VALUES (1, N'available')
INSERT [dbo].[ServiceStatuses] ([ServiceStatusId], [ServiceState]) VALUES (2, N'not available')
INSERT [dbo].[ServiceStatuses] ([ServiceStatusId], [ServiceState]) VALUES (4, N'In progress')
SET IDENTITY_INSERT [dbo].[ServiceStatuses] OFF
GO
SET IDENTITY_INSERT [dbo].[UserRoles] ON 

INSERT [dbo].[UserRoles] ([UserRoleId], [UserType]) VALUES (1, N'Admin')
INSERT [dbo].[UserRoles] ([UserRoleId], [UserType]) VALUES (2, N'Manager')
INSERT [dbo].[UserRoles] ([UserRoleId], [UserType]) VALUES (3, N'Technician')
INSERT [dbo].[UserRoles] ([UserRoleId], [UserType]) VALUES (4, N'User')
SET IDENTITY_INSERT [dbo].[UserRoles] OFF
GO
/****** Object:  Index [IX_AppCategories_ManagerId]    Script Date: 5/28/2024 6:42:28 PM ******/
CREATE NONCLUSTERED INDEX [IX_AppCategories_ManagerId] ON [dbo].[AppCategories]
(
	[ManagerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AppCategoryAppUser_TechniciansUserID]    Script Date: 5/28/2024 6:42:28 PM ******/
CREATE NONCLUSTERED INDEX [IX_AppCategoryAppUser_TechniciansUserID] ON [dbo].[AppCategoryAppUser]
(
	[TechniciansUserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AppLogs_UserId]    Script Date: 5/28/2024 6:42:28 PM ******/
CREATE NONCLUSTERED INDEX [IX_AppLogs_UserId] ON [dbo].[AppLogs]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AppServices_CategoryId]    Script Date: 5/28/2024 6:42:28 PM ******/
CREATE NONCLUSTERED INDEX [IX_AppServices_CategoryId] ON [dbo].[AppServices]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AppUsers_UserRoleId]    Script Date: 5/28/2024 6:42:28 PM ******/
CREATE NONCLUSTERED INDEX [IX_AppUsers_UserRoleId] ON [dbo].[AppUsers]
(
	[UserRoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Comments_ServiceRequestId]    Script Date: 5/28/2024 6:42:28 PM ******/
CREATE NONCLUSTERED INDEX [IX_Comments_ServiceRequestId] ON [dbo].[Comments]
(
	[ServiceRequestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Comments_UserId]    Script Date: 5/28/2024 6:42:28 PM ******/
CREATE NONCLUSTERED INDEX [IX_Comments_UserId] ON [dbo].[Comments]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Documents_UserId]    Script Date: 5/28/2024 6:42:28 PM ******/
CREATE NONCLUSTERED INDEX [IX_Documents_UserId] ON [dbo].[Documents]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Notifications_NotificationStatusId]    Script Date: 5/28/2024 6:42:28 PM ******/
CREATE NONCLUSTERED INDEX [IX_Notifications_NotificationStatusId] ON [dbo].[Notifications]
(
	[NotificationStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Notifications_UserId]    Script Date: 5/28/2024 6:42:28 PM ******/
CREATE NONCLUSTERED INDEX [IX_Notifications_UserId] ON [dbo].[Notifications]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Payments_PaymentStatusId]    Script Date: 5/28/2024 6:42:28 PM ******/
CREATE NONCLUSTERED INDEX [IX_Payments_PaymentStatusId] ON [dbo].[Payments]
(
	[PaymentStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Payments_ServiceRequestId]    Script Date: 5/28/2024 6:42:28 PM ******/
CREATE NONCLUSTERED INDEX [IX_Payments_ServiceRequestId] ON [dbo].[Payments]
(
	[ServiceRequestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ServiceRequests_DocumentId]    Script Date: 5/28/2024 6:42:28 PM ******/
CREATE NONCLUSTERED INDEX [IX_ServiceRequests_DocumentId] ON [dbo].[ServiceRequests]
(
	[DocumentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ServiceRequests_ServiceId]    Script Date: 5/28/2024 6:42:28 PM ******/
CREATE NONCLUSTERED INDEX [IX_ServiceRequests_ServiceId] ON [dbo].[ServiceRequests]
(
	[ServiceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ServiceRequests_ServiceStatusId]    Script Date: 5/28/2024 6:42:28 PM ******/
CREATE NONCLUSTERED INDEX [IX_ServiceRequests_ServiceStatusId] ON [dbo].[ServiceRequests]
(
	[ServiceStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ServiceRequests_UserId]    Script Date: 5/28/2024 6:42:28 PM ******/
CREATE NONCLUSTERED INDEX [IX_ServiceRequests_UserId] ON [dbo].[ServiceRequests]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AppCategories]  WITH CHECK ADD  CONSTRAINT [FK_AppCategories_AppUsers_ManagerId] FOREIGN KEY([ManagerId])
REFERENCES [dbo].[AppUsers] ([UserID])
GO
ALTER TABLE [dbo].[AppCategories] CHECK CONSTRAINT [FK_AppCategories_AppUsers_ManagerId]
GO
ALTER TABLE [dbo].[AppCategoryAppUser]  WITH CHECK ADD  CONSTRAINT [FK_AppCategoryAppUser_AppCategories_AppCategoriesCategoryId] FOREIGN KEY([AppCategoriesCategoryId])
REFERENCES [dbo].[AppCategories] ([CategoryId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AppCategoryAppUser] CHECK CONSTRAINT [FK_AppCategoryAppUser_AppCategories_AppCategoriesCategoryId]
GO
ALTER TABLE [dbo].[AppCategoryAppUser]  WITH CHECK ADD  CONSTRAINT [FK_AppCategoryAppUser_AppUsers_TechniciansUserID] FOREIGN KEY([TechniciansUserID])
REFERENCES [dbo].[AppUsers] ([UserID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AppCategoryAppUser] CHECK CONSTRAINT [FK_AppCategoryAppUser_AppUsers_TechniciansUserID]
GO
ALTER TABLE [dbo].[AppLogs]  WITH CHECK ADD  CONSTRAINT [FK_AppLogs_AppUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AppUsers] ([UserID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AppLogs] CHECK CONSTRAINT [FK_AppLogs_AppUsers_UserId]
GO
ALTER TABLE [dbo].[AppServices]  WITH CHECK ADD  CONSTRAINT [FK_AppServices_AppCategories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[AppCategories] ([CategoryId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AppServices] CHECK CONSTRAINT [FK_AppServices_AppCategories_CategoryId]
GO
ALTER TABLE [dbo].[AppUsers]  WITH CHECK ADD  CONSTRAINT [FK_AppUsers_UserRoles_UserRoleId] FOREIGN KEY([UserRoleId])
REFERENCES [dbo].[UserRoles] ([UserRoleId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AppUsers] CHECK CONSTRAINT [FK_AppUsers_UserRoles_UserRoleId]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_AppUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AppUsers] ([UserID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_AppUsers_UserId]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_ServiceRequests_ServiceRequestId] FOREIGN KEY([ServiceRequestId])
REFERENCES [dbo].[ServiceRequests] ([ServiceRequestId])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_ServiceRequests_ServiceRequestId]
GO
ALTER TABLE [dbo].[Documents]  WITH CHECK ADD  CONSTRAINT [FK_Documents_AppUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AppUsers] ([UserID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Documents] CHECK CONSTRAINT [FK_Documents_AppUsers_UserId]
GO
ALTER TABLE [dbo].[Notifications]  WITH CHECK ADD  CONSTRAINT [FK_Notifications_AppUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AppUsers] ([UserID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Notifications] CHECK CONSTRAINT [FK_Notifications_AppUsers_UserId]
GO
ALTER TABLE [dbo].[Notifications]  WITH CHECK ADD  CONSTRAINT [FK_Notifications_NotificationStatuses_NotificationStatusId] FOREIGN KEY([NotificationStatusId])
REFERENCES [dbo].[NotificationStatuses] ([NotificationStatusId])
GO
ALTER TABLE [dbo].[Notifications] CHECK CONSTRAINT [FK_Notifications_NotificationStatuses_NotificationStatusId]
GO
ALTER TABLE [dbo].[Payments]  WITH CHECK ADD  CONSTRAINT [FK_Payments_PaymentStatuses_PaymentStatusId] FOREIGN KEY([PaymentStatusId])
REFERENCES [dbo].[PaymentStatuses] ([PaymentStatusId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Payments] CHECK CONSTRAINT [FK_Payments_PaymentStatuses_PaymentStatusId]
GO
ALTER TABLE [dbo].[Payments]  WITH CHECK ADD  CONSTRAINT [FK_Payments_ServiceRequests_ServiceRequestId] FOREIGN KEY([ServiceRequestId])
REFERENCES [dbo].[ServiceRequests] ([ServiceRequestId])
GO
ALTER TABLE [dbo].[Payments] CHECK CONSTRAINT [FK_Payments_ServiceRequests_ServiceRequestId]
GO
ALTER TABLE [dbo].[ServiceRequests]  WITH CHECK ADD  CONSTRAINT [FK_ServiceRequests_AppServices_ServiceId] FOREIGN KEY([ServiceId])
REFERENCES [dbo].[AppServices] ([ServiceId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ServiceRequests] CHECK CONSTRAINT [FK_ServiceRequests_AppServices_ServiceId]
GO
ALTER TABLE [dbo].[ServiceRequests]  WITH CHECK ADD  CONSTRAINT [FK_ServiceRequests_AppUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AppUsers] ([UserID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ServiceRequests] CHECK CONSTRAINT [FK_ServiceRequests_AppUsers_UserId]
GO
ALTER TABLE [dbo].[ServiceRequests]  WITH CHECK ADD  CONSTRAINT [FK_ServiceRequests_Documents_DocumentId] FOREIGN KEY([DocumentId])
REFERENCES [dbo].[Documents] ([DocumentId])
GO
ALTER TABLE [dbo].[ServiceRequests] CHECK CONSTRAINT [FK_ServiceRequests_Documents_DocumentId]
GO
ALTER TABLE [dbo].[ServiceRequests]  WITH CHECK ADD  CONSTRAINT [FK_ServiceRequests_ServiceStatuses_ServiceStatusId] FOREIGN KEY([ServiceStatusId])
REFERENCES [dbo].[ServiceStatuses] ([ServiceStatusId])
GO
ALTER TABLE [dbo].[ServiceRequests] CHECK CONSTRAINT [FK_ServiceRequests_ServiceStatuses_ServiceStatusId]
GO
USE [master]
GO
ALTER DATABASE [DBHomeService] SET  READ_WRITE 
GO
