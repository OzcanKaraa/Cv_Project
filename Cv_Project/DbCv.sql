USE [master]
GO
/****** Object:  Database [DbCv]    Script Date: 6/27/2023 3:36:16 AM ******/
CREATE DATABASE [DbCv]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DbCv', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\DbCv.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DbCv_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\DbCv_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [DbCv] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DbCv].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DbCv] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DbCv] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DbCv] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DbCv] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DbCv] SET ARITHABORT OFF 
GO
ALTER DATABASE [DbCv] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DbCv] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DbCv] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DbCv] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DbCv] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DbCv] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DbCv] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DbCv] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DbCv] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DbCv] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DbCv] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DbCv] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DbCv] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DbCv] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DbCv] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DbCv] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DbCv] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DbCv] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DbCv] SET  MULTI_USER 
GO
ALTER DATABASE [DbCv] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DbCv] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DbCv] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DbCv] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DbCv] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DbCv] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [DbCv] SET QUERY_STORE = ON
GO
ALTER DATABASE [DbCv] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [DbCv]
GO
/****** Object:  Table [dbo].[TblAdmin]    Script Date: 6/27/2023 3:36:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblAdmin](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciAdi] [varchar](20) NULL,
	[Sifre] [varchar](20) NULL,
 CONSTRAINT [PK_TblAdmin] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblDeneyimlerim]    Script Date: 6/27/2023 3:36:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblDeneyimlerim](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Baslik] [varchar](100) NULL,
	[AltBaslik] [varchar](100) NULL,
	[Aciklama] [varchar](max) NULL,
	[Tarih] [varchar](100) NULL,
 CONSTRAINT [PK_TblDeneyimlerim] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblEgitimlerim]    Script Date: 6/27/2023 3:36:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblEgitimlerim](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Baslik] [varchar](100) NULL,
	[AltBaslik1] [varchar](100) NULL,
	[AltBaslik2] [varchar](100) NULL,
	[GNO] [varchar](10) NULL,
	[Tarih] [varchar](100) NULL,
 CONSTRAINT [PK_TblEgitimlerim] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblHakkimda]    Script Date: 6/27/2023 3:36:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblHakkimda](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [varchar](30) NULL,
	[Soyad] [varchar](30) NULL,
	[Adres] [varchar](50) NULL,
	[Telefon] [varchar](30) NULL,
	[Mail] [varchar](30) NULL,
	[Aciklama] [varchar](max) NULL,
	[Resim] [varchar](100) NULL,
 CONSTRAINT [PK_TblHakkimda] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblHobilerim]    Script Date: 6/27/2023 3:36:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblHobilerim](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Aciklama1] [varchar](500) NULL,
	[Aciklama2] [varchar](500) NULL,
 CONSTRAINT [PK_TblHobilerim] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbliletisim]    Script Date: 6/27/2023 3:36:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbliletisim](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AdSoyad] [varchar](100) NULL,
	[Mail] [varchar](50) NULL,
	[Konu] [varchar](100) NULL,
	[Mesaj] [varchar](1000) NULL,
	[Tarih] [date] NULL,
 CONSTRAINT [PK_Tbliletisim] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblSertifikalarim]    Script Date: 6/27/2023 3:36:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblSertifikalarim](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Aciklama] [varchar](250) NULL,
	[Tarih] [varchar](30) NULL,
 CONSTRAINT [PK_TblSertifikalarim] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblYeteneklerim]    Script Date: 6/27/2023 3:36:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblYeteneklerim](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Yetenek] [varchar](100) NULL,
	[Oran] [tinyint] NULL,
 CONSTRAINT [PK_TblYeteneklerim] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TblDeneyimlerim] ON 

INSERT [dbo].[TblDeneyimlerim] ([ID], [Baslik], [AltBaslik], [Aciklama], [Tarih]) VALUES (1, N'Youtube ', N'Icerik uretici ', N'Lorem Ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir. Lorem Ipsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak üzere bir yazı galerisini alarak karıştırdığı 1500''lerden beri endüstri standardı sahte metinler olarak kullanılmıştır. Beşyüz yıl boyunca varlığını sürdürmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sıçramıştır. 1960''larda Lorem Ipsum pasajları da içeren Letraset yapraklarının yayınlanması ile ve yakın zamanda Aldus PageMaker gibi Lorem Ipsum sürümleri içeren masaüstü yayıncılık yazılımları ile popüler olmuştur.', N'2022 -Halen devam ediyor')
INSERT [dbo].[TblDeneyimlerim] ([ID], [Baslik], [AltBaslik], [Aciklama], [Tarih]) VALUES (2, N'Udemy', N'Icerik uretici 2', N'loremm3', N'2023 Mayis')
SET IDENTITY_INSERT [dbo].[TblDeneyimlerim] OFF
GO
SET IDENTITY_INSERT [dbo].[TblEgitimlerim] ON 

INSERT [dbo].[TblEgitimlerim] ([ID], [Baslik], [AltBaslik1], [AltBaslik2], [GNO], [Tarih]) VALUES (5, N'Gaziantep Üniversitesi ', N'Teknoloji fakultesi', N'Bilgisayar Programcılık', N'3.36', N'2019 Eylül - 2021 Haziran')
INSERT [dbo].[TblEgitimlerim] ([ID], [Baslik], [AltBaslik1], [AltBaslik2], [GNO], [Tarih]) VALUES (6, N'Gaziantep Üniversitesi 3', N'Teknoloji fakultesi', N'Bilgisayar Programcılık', N'3.36', N'2019 Eylül - 2021 Haziran')
SET IDENTITY_INSERT [dbo].[TblEgitimlerim] OFF
GO
SET IDENTITY_INSERT [dbo].[TblHakkimda] ON 

INSERT [dbo].[TblHakkimda] ([ID], [Ad], [Soyad], [Adres], [Telefon], [Mail], [Aciklama], [Resim]) VALUES (1, N'Özcan', N'Kara', N'İstanbul/Ataşehir', N'0 (539) 516 1220', N'ozcankara810@gmail.com', N'Merhaba ,Ben Özcan Kara Hataylıyım.', NULL)
SET IDENTITY_INSERT [dbo].[TblHakkimda] OFF
GO
SET IDENTITY_INSERT [dbo].[TblHobilerim] ON 

INSERT [dbo].[TblHobilerim] ([ID], [Aciklama1], [Aciklama2]) VALUES (1, N'Spor yapmak', N'Spor yapmak')
SET IDENTITY_INSERT [dbo].[TblHobilerim] OFF
GO
SET IDENTITY_INSERT [dbo].[Tbliletisim] ON 

INSERT [dbo].[Tbliletisim] ([ID], [AdSoyad], [Mail], [Konu], [Mesaj], [Tarih]) VALUES (1, N'Ozcan Kara', N'ozcan23@gmail.com', N'Is ilani 6', N'bizimle calisin', CAST(N'2023-01-04' AS Date))
INSERT [dbo].[Tbliletisim] ([ID], [AdSoyad], [Mail], [Konu], [Mesaj], [Tarih]) VALUES (2, N'Ozcan 2', N'ozcan12@gmail.com', N'Is ilani99', N'bizimle calisin22', CAST(N'2023-12-19' AS Date))
INSERT [dbo].[Tbliletisim] ([ID], [AdSoyad], [Mail], [Konu], [Mesaj], [Tarih]) VALUES (3, N'Ozcan 2', N'ozcan3455@gmail.com', N'Is ilani7', N'bizimle calisin22333', CAST(N'2023-05-28' AS Date))
INSERT [dbo].[Tbliletisim] ([ID], [AdSoyad], [Mail], [Konu], [Mesaj], [Tarih]) VALUES (4, N'Ozcan 4', N'ozcan5444@gmail.com', N'loremm', N'loremmmm ıpsumm', CAST(N'2022-01-21' AS Date))
INSERT [dbo].[Tbliletisim] ([ID], [AdSoyad], [Mail], [Konu], [Mesaj], [Tarih]) VALUES (5, N'OZCAAANNNN', N'ozcanKRAA@gmail.com', N'is ilani 99', N'maas guzell', CAST(N'2023-06-17' AS Date))
SET IDENTITY_INSERT [dbo].[Tbliletisim] OFF
GO
SET IDENTITY_INSERT [dbo].[TblSertifikalarim] ON 

INSERT [dbo].[TblSertifikalarim] ([ID], [Aciklama], [Tarih]) VALUES (1, N'Udemy Laravel', N'Haziran 2022')
INSERT [dbo].[TblSertifikalarim] ([ID], [Aciklama], [Tarih]) VALUES (2, N'Btk Html', N'Haziran 2022')
INSERT [dbo].[TblSertifikalarim] ([ID], [Aciklama], [Tarih]) VALUES (3, N'btk php', N'haziran 2022')
INSERT [dbo].[TblSertifikalarim] ([ID], [Aciklama], [Tarih]) VALUES (4, N'btk seo', N'haziran 2022')
INSERT [dbo].[TblSertifikalarim] ([ID], [Aciklama], [Tarih]) VALUES (5, N'btk css', N'haziran 2022')
SET IDENTITY_INSERT [dbo].[TblSertifikalarim] OFF
GO
SET IDENTITY_INSERT [dbo].[TblYeteneklerim] ON 

INSERT [dbo].[TblYeteneklerim] ([ID], [Yetenek], [Oran]) VALUES (1, N'C# Programlama Dili', 95)
INSERT [dbo].[TblYeteneklerim] ([ID], [Yetenek], [Oran]) VALUES (2, N'Php  Programlama Dili', 100)
INSERT [dbo].[TblYeteneklerim] ([ID], [Yetenek], [Oran]) VALUES (3, N'Laravel Framework', 100)
INSERT [dbo].[TblYeteneklerim] ([ID], [Yetenek], [Oran]) VALUES (4, N'Asp.Net Mvc5', 20)
INSERT [dbo].[TblYeteneklerim] ([ID], [Yetenek], [Oran]) VALUES (5, N'Asp.Net Core Mvc', 20)
INSERT [dbo].[TblYeteneklerim] ([ID], [Yetenek], [Oran]) VALUES (6, N'Entity Framework 6', 20)
INSERT [dbo].[TblYeteneklerim] ([ID], [Yetenek], [Oran]) VALUES (7, N'MySql  Veri Tabanı', 26)
INSERT [dbo].[TblYeteneklerim] ([ID], [Yetenek], [Oran]) VALUES (8, N'PostreSql', 56)
INSERT [dbo].[TblYeteneklerim] ([ID], [Yetenek], [Oran]) VALUES (9, N'Node Js', 65)
INSERT [dbo].[TblYeteneklerim] ([ID], [Yetenek], [Oran]) VALUES (10, N'Javascript', 87)
INSERT [dbo].[TblYeteneklerim] ([ID], [Yetenek], [Oran]) VALUES (11, N'Go', 89)
INSERT [dbo].[TblYeteneklerim] ([ID], [Yetenek], [Oran]) VALUES (12, N'Angular', 78)
SET IDENTITY_INSERT [dbo].[TblYeteneklerim] OFF
GO
USE [master]
GO
ALTER DATABASE [DbCv] SET  READ_WRITE 
GO
