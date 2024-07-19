USE [master]
GO
/****** Object:  Database [ProjectIdentityDB]    Script Date: 5/28/2024 6:43:57 PM ******/
CREATE DATABASE [ProjectIdentityDB]
 GO
ALTER DATABASE [ProjectIdentityDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ProjectIdentityDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ProjectIdentityDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ProjectIdentityDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ProjectIdentityDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ProjectIdentityDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ProjectIdentityDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [ProjectIdentityDB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [ProjectIdentityDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ProjectIdentityDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ProjectIdentityDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ProjectIdentityDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ProjectIdentityDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ProjectIdentityDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ProjectIdentityDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ProjectIdentityDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ProjectIdentityDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ProjectIdentityDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ProjectIdentityDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ProjectIdentityDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ProjectIdentityDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ProjectIdentityDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ProjectIdentityDB] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [ProjectIdentityDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ProjectIdentityDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ProjectIdentityDB] SET  MULTI_USER 
GO
ALTER DATABASE [ProjectIdentityDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ProjectIdentityDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ProjectIdentityDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ProjectIdentityDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ProjectIdentityDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ProjectIdentityDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ProjectIdentityDB] SET QUERY_STORE = OFF
GO
USE [ProjectIdentityDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 5/28/2024 6:43:57 PM ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 5/28/2024 6:43:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 5/28/2024 6:43:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 5/28/2024 6:43:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 5/28/2024 6:43:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 5/28/2024 6:43:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 5/28/2024 6:43:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
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
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 5/28/2024 6:43:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'364f68f4-15fc-47f9-85e0-b79118be7961', N'Manager', N'MANAGER', N'213ed448-9bcf-45ac-a1ba-5f0839f9b565')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'8b605e47-a244-46ca-bb86-c22202400d2f', N'Admin', N'ADMIN', N'82eacc43-3657-43a2-a6a8-3501a5ea29d6')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'9bec81c3-b4be-40fa-98b9-94ab8bead74f', N'User', N'USER', N'0ace121d-3559-428d-b421-6363e578fd02')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'af4ab30f-8fdd-4c09-ab75-91b74b354001', N'Technician', N'TECHNICIAN', N'cb572832-75d9-40a3-b441-cbb382dea3ea')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'23d7864a-a40c-40af-946a-311fac93881f', N'364f68f4-15fc-47f9-85e0-b79118be7961')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'b65ea52b-5ec3-48d2-964d-9d346b1a404f', N'364f68f4-15fc-47f9-85e0-b79118be7961')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'92db6bf7-50d5-4ef5-87ea-8cc8b1357563', N'8b605e47-a244-46ca-bb86-c22202400d2f')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'a1abe997-822f-418b-83c7-f465e7bd020a', N'8b605e47-a244-46ca-bb86-c22202400d2f')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'7db2a8a0-bf15-40e8-8260-8498cde1a5f2', N'9bec81c3-b4be-40fa-98b9-94ab8bead74f')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'abf42468-a358-4f7b-b897-cfdb90cd21df', N'9bec81c3-b4be-40fa-98b9-94ab8bead74f')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c2d81a9b-fcbf-45cc-963d-c124d76dd95d', N'9bec81c3-b4be-40fa-98b9-94ab8bead74f')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'd0af6483-5158-4152-aedd-7c4b025be804', N'9bec81c3-b4be-40fa-98b9-94ab8bead74f')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'00ae53a2-c4e4-4069-917c-bf6e65a1720a', N'af4ab30f-8fdd-4c09-ab75-91b74b354001')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'02f19d6e-8b18-4cfb-9863-49919d2f66cb', N'af4ab30f-8fdd-4c09-ab75-91b74b354001')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'5cdb4c96-c51d-4bea-bb9a-3700f77b2a55', N'af4ab30f-8fdd-4c09-ab75-91b74b354001')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'00ae53a2-c4e4-4069-917c-bf6e65a1720a', N'tech2@test.com', N'TECH2@TEST.COM', N'tech2@test.com', N'TECH2@TEST.COM', 1, N'AQAAAAEAACcQAAAAECbR+f0yYKNFhPf22qNSui+mS6g1BU5ll2EzXupK39ksmu1uBgdf/Z9mHVCelYUK/A==', N'T7NEJFMCJ2WC63WYPYPAUDNAJJIWXMXX', N'5c494815-c683-4ecb-8486-cbb86424fd93', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'02f19d6e-8b18-4cfb-9863-49919d2f66cb', N'Tech1@gmail.com', N'TECH1@GMAIL.COM', N'Tech1@gmail.com', N'TECH1@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEPGQ76xifFU2Eu5mXmeTI4vxO0bkjRCHNOMGpT7IH8rgaVCY+P11/e+z7v8eLdqRrA==', N'ZXKXOYROFVB5CO7ETCC4OV3SU774Z3II', N'242a2ba2-bbb0-4eff-885b-892104b6fcc7', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'23d7864a-a40c-40af-946a-311fac93881f', N'Manager1@gmail.com', N'MANAGER1@GMAIL.COM', N'Manager1@gmail.com', N'MANAGER1@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEGHbttsK5rt5ulENprWdyFsABDBh/vFbFVbLoKSLbfJ2u+faKb7Cs9gh+t9P+sQmJg==', N'HBZZ352N36Q6FIJGDTP4P4U5X3EDUE4J', N'0cbe0fe1-93ef-4a21-a551-7a83102e11b9', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'5cdb4c96-c51d-4bea-bb9a-3700f77b2a55', N'tech1@test.com', N'TECH1@TEST.COM', N'tech1@test.com', N'TECH1@TEST.COM', 1, N'AQAAAAEAACcQAAAAEDlf9HycR4eUKO9vOnB/MyVe/bsEt87jXJBSxiEJdbl3wfCMNDKJOK1mWRlbMX1mxg==', N'FN2WSSF2GUSI66C34TO3C6JXJMJN5BPL', N'70b8e67e-78ed-40c6-95e5-9ee2cfce0dce', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'7db2a8a0-bf15-40e8-8260-8498cde1a5f2', N'user2@test.com', N'USER2@TEST.COM', N'user2@test.com', N'USER2@TEST.COM', 1, N'AQAAAAEAACcQAAAAENDk0ErDcQ2ZUqJ+ckuy0ocg+2UtaYugrzmA0PariedbXsYinG6J6MvPp1bujJptjQ==', N'KT2TK654L3LLM4JVR42PHYL4NC4NDEJF', N'75f9df79-6c2a-44e8-a9b7-ee3810f27b5b', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'92db6bf7-50d5-4ef5-87ea-8cc8b1357563', N'Admin1@gmail.com', N'ADMIN1@GMAIL.COM', N'Admin1@gmail.com', N'ADMIN1@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEMLAqmJz3AXnoAF95fIFOQ/cJc+ODb6Hm9XZTE9lfLpdqHVhgryZvwvsfYV4B7UbPQ==', N'XTWFRWKBAIN4VBJHGQLS3DMH5KQOQW7T', N'128f50f9-fea4-44f7-8996-8bfae5d255f2', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'a1abe997-822f-418b-83c7-f465e7bd020a', N'admin@test.com', N'ADMIN@TEST.COM', N'admin@test.com', N'ADMIN@TEST.COM', 1, N'AQAAAAEAACcQAAAAEDXlzvKMQWJztnZ38dNW/+rg4A4Uw1IvVGtWn/+F4zUSwMcD5beS9nVfnGm9mlnI9Q==', N'QCFV3NGNKEOIOH2WU72H5BPG7REFDOC3', N'f9d6f17a-9a7a-42ef-83d0-0aa0add81ff9', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'abf42468-a358-4f7b-b897-cfdb90cd21df', N'ameena4almuhana@gmail.com', N'AMEENA4ALMUHANA@GMAIL.COM', N'ameena4almuhana@gmail.com', N'AMEENA4ALMUHANA@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEGC7raLvue1DHcsCV35SNZmXB8aBiCCCYAb7TBVfPLWLOg252TzxHhQjSp7uVMmFvg==', N'7HG6RQ4CXWVWWC7GVDIPGOFDFZQAHPK7', N'acaa8951-7561-4b6d-980b-10c9008738cb', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'b65ea52b-5ec3-48d2-964d-9d346b1a404f', N'manager@test.com', N'MANAGER@TEST.COM', N'manager@test.com', N'MANAGER@TEST.COM', 1, N'AQAAAAEAACcQAAAAEHtATcdLaf057XzsBRnh09Mxcsu5c/jOmbOajuYqR9Ox6QYkPh425O0joixJyj3Hsw==', N'2BTK2ULXPOCW4OUEPYI2E5N6SKBKHO37', N'670c1075-5313-4dcd-89e1-e2ff9daf58ba', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'c2d81a9b-fcbf-45cc-963d-c124d76dd95d', N'user1@test.com', N'USER1@TEST.COM', N'user1@test.com', N'USER1@TEST.COM', 1, N'AQAAAAEAACcQAAAAEHcQfb/b8Xg/WBD/D76lAVFadKMck5zq7B7+Z0DJFjkooSpEHqNL9KftJZ9mMcz1iA==', N'XJCMHVGGKLV7FU5OOIGGNCVUW5TKXG2R', N'77bbcc0e-bc99-4dd5-b641-00720a4f64ad', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'd0af6483-5158-4152-aedd-7c4b025be804', N's22albuainain@gmail.com', N'S22ALBUAINAIN@GMAIL.COM', N's22albuainain@gmail.com', N'S22ALBUAINAIN@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEFN0ahr6sdsjA0/CaUQJnteu7JlXOsbWpcBC/zJ03/L7Xm4MN35qcym7FWAyOWbV9A==', N'JHLGYIEDS3V2JG63OMMRD4FUAJSETM6H', N'd7557af3-ffed-4bd9-8858-2448377b3278', NULL, 0, 0, NULL, 1, 0)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 5/28/2024 6:43:58 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 5/28/2024 6:43:58 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 5/28/2024 6:43:58 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 5/28/2024 6:43:58 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 5/28/2024 6:43:58 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 5/28/2024 6:43:58 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 5/28/2024 6:43:58 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
USE [master]
GO
ALTER DATABASE [ProjectIdentityDB] SET  READ_WRITE 
GO
