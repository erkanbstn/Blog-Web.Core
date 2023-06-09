USE [master]
GO
/****** Object:  Database [CoreBlogDB]    Script Date: 15.07.2022 23:12:38 ******/
CREATE DATABASE [CoreBlogDB]
GO
USE [CoreBlogDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 15.07.2022 23:12:38 ******/
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
/****** Object:  Table [dbo].[Abouts]    Script Date: 15.07.2022 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Abouts](
	[AboutID] [int] IDENTITY(1,1) NOT NULL,
	[AboutDetails] [nvarchar](max) NULL,
	[AboutImage] [nvarchar](max) NULL,
	[AboutTitle] [nvarchar](max) NULL,
	[AboutStatus] [bit] NOT NULL,
 CONSTRAINT [PK_Abouts] PRIMARY KEY CLUSTERED 
(
	[AboutID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Admins]    Script Date: 15.07.2022 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admins](
	[AdminID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[Role] [nvarchar](max) NULL,
 CONSTRAINT [PK_Admins] PRIMARY KEY CLUSTERED 
(
	[AdminID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Blogs]    Script Date: 15.07.2022 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blogs](
	[BlogID] [int] IDENTITY(1,1) NOT NULL,
	[BlogTitle] [nvarchar](max) NULL,
	[BlogContent] [nvarchar](max) NULL,
	[BlogThumbnailImage] [nvarchar](max) NULL,
	[BlogImage] [nvarchar](max) NULL,
	[CreateDate] [datetime2](7) NOT NULL,
	[BlogStatus] [bit] NOT NULL,
	[CategoryID] [int] NOT NULL,
	[WriterID] [int] NOT NULL,
 CONSTRAINT [PK_Blogs] PRIMARY KEY CLUSTERED 
(
	[BlogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 15.07.2022 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](max) NULL,
	[CategoryDescription] [nvarchar](max) NULL,
	[CategoryStatus] [bit] NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comments]    Script Date: 15.07.2022 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[CommentID] [int] IDENTITY(1,1) NOT NULL,
	[CommentUserName] [nvarchar](max) NULL,
	[CommentContent] [nvarchar](max) NULL,
	[CommentTitle] [nvarchar](max) NULL,
	[CommentDate] [datetime2](7) NOT NULL,
	[CommentStatus] [bit] NOT NULL,
	[BlogID] [int] NOT NULL,
 CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED 
(
	[CommentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contacts]    Script Date: 15.07.2022 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacts](
	[ContactID] [int] IDENTITY(1,1) NOT NULL,
	[ContactUserName] [nvarchar](max) NULL,
	[ContactMail] [nvarchar](max) NULL,
	[ContactSubject] [nvarchar](max) NULL,
	[ContactMessage] [nvarchar](max) NULL,
	[ContactDate] [datetime2](7) NOT NULL,
	[ContactStatus] [bit] NOT NULL,
 CONSTRAINT [PK_Contacts] PRIMARY KEY CLUSTERED 
(
	[ContactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NewsLetters]    Script Date: 15.07.2022 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewsLetters](
	[MailID] [int] IDENTITY(1,1) NOT NULL,
	[Mail] [nvarchar](max) NULL,
	[MailStatus] [bit] NOT NULL,
 CONSTRAINT [PK_NewsLetters] PRIMARY KEY CLUSTERED 
(
	[MailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notifications]    Script Date: 15.07.2022 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notifications](
	[NotificationID] [int] IDENTITY(1,1) NOT NULL,
	[NotificationTitle] [nvarchar](max) NULL,
	[NotificationDetails] [nvarchar](max) NULL,
	[NotificationDate] [datetime2](7) NOT NULL,
	[NotificationStatus] [bit] NOT NULL,
 CONSTRAINT [PK_Notifications] PRIMARY KEY CLUSTERED 
(
	[NotificationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Writers]    Script Date: 15.07.2022 23:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Writers](
	[WriterID] [int] IDENTITY(1,1) NOT NULL,
	[WriterName] [nvarchar](max) NULL,
	[WriterAbout] [nvarchar](max) NULL,
	[WriterImage] [nvarchar](max) NULL,
	[WriterMail] [nvarchar](max) NULL,
	[WriterPassword] [nvarchar](max) NULL,
	[WriterStatus] [bit] NOT NULL,
 CONSTRAINT [PK_Writers] PRIMARY KEY CLUSTERED 
(
	[WriterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220325223646_mig1', N'5.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220325232040_newslettereklendi', N'5.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220329234352_aboutgunc', N'5.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220428222216_Notificationeklendi', N'5.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220428224608_notificationdegisti', N'5.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220509162153_admineklendi', N'5.0.9')
GO
SET IDENTITY_INSERT [dbo].[Abouts] ON 

INSERT [dbo].[Abouts] ([AboutID], [AboutDetails], [AboutImage], [AboutTitle], [AboutStatus]) VALUES (1, N'Bu Projeyi .Net Core Teknolojisini Kullanarak SOLID Prensiplerine Uygun Şekilde 30 Mart 2022 Tarihinde Yazdım. Projenin Amacı Blog Sitesidir.', N'b5.jpg', N'.Net Core MVC Blog Project', 1)
SET IDENTITY_INSERT [dbo].[Abouts] OFF
GO
SET IDENTITY_INSERT [dbo].[Admins] ON 

INSERT [dbo].[Admins] ([AdminID], [UserName], [Password], [Role]) VALUES (1, N'erkanbstn', N'123', N'Yonetici')
INSERT [dbo].[Admins] ([AdminID], [UserName], [Password], [Role]) VALUES (4, N'oykubstn', N'123', N'Rol')
SET IDENTITY_INSERT [dbo].[Admins] OFF
GO
SET IDENTITY_INSERT [dbo].[Blogs] ON 

INSERT [dbo].[Blogs] ([BlogID], [BlogTitle], [BlogContent], [BlogThumbnailImage], [BlogImage], [CreateDate], [BlogStatus], [CategoryID], [WriterID]) VALUES (1, N'C# ADO.Net Bağlantısı', N'Ado.Net Komutları C# Programlama Dilinde VeriTabanı Bağlantılarını Sağlamak İçin Kullanılır', NULL, N'1.jpg', CAST(N'2022-02-23T00:00:00.0000000' AS DateTime2), 1, 1, 1)
INSERT [dbo].[Blogs] ([BlogID], [BlogTitle], [BlogContent], [BlogThumbnailImage], [BlogImage], [CreateDate], [BlogStatus], [CategoryID], [WriterID]) VALUES (3, N'C# MVC Authorize İşlemi', N'Authorize Yetkilendirme İşlemleri İçin Kullanılır', NULL, N'2.jpg', CAST(N'2022-02-24T00:00:00.0000000' AS DateTime2), 1, 1, 2)
INSERT [dbo].[Blogs] ([BlogID], [BlogTitle], [BlogContent], [BlogThumbnailImage], [BlogImage], [CreateDate], [BlogStatus], [CategoryID], [WriterID]) VALUES (5, N'C# Ram Kontrolü Nedir', N'Ram Kontrolü İsrafı Önler', NULL, N'3.jpg', CAST(N'2022-02-25T00:00:00.0000000' AS DateTime2), 1, 1, 3)
INSERT [dbo].[Blogs] ([BlogID], [BlogTitle], [BlogContent], [BlogThumbnailImage], [BlogImage], [CreateDate], [BlogStatus], [CategoryID], [WriterID]) VALUES (6, N'C# Asenkron Method Kullanımı', N'Asenkron Methodlar Aynı Anda Birden Fazla İşlemi Yerine Getirebilir', NULL, N'5.jpg', CAST(N'2022-02-26T00:00:00.0000000' AS DateTime2), 1, 1, 1)
SET IDENTITY_INSERT [dbo].[Blogs] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [CategoryDescription], [CategoryStatus]) VALUES (1, N'Yazılım', NULL, 1)
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [CategoryDescription], [CategoryStatus]) VALUES (2, N'Teknoloji', NULL, 1)
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [CategoryDescription], [CategoryStatus]) VALUES (3, N'Tiyatro', NULL, 1)
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [CategoryDescription], [CategoryStatus]) VALUES (4, N'Sinema', NULL, 1)
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [CategoryDescription], [CategoryStatus]) VALUES (5, N'Oyun', NULL, 1)
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Comments] ON 

INSERT [dbo].[Comments] ([CommentID], [CommentUserName], [CommentContent], [CommentTitle], [CommentDate], [CommentStatus], [BlogID]) VALUES (1, N'Erkan Bostan', N'Ado.Net Veritabanı işlemlerimizi kolaylıkla çözmemizi sağlayan bir yapıdır !', N'Ado.Net Hakkında', CAST(N'2022-03-26T00:00:00.0000000' AS DateTime2), 1, 1)
SET IDENTITY_INSERT [dbo].[Comments] OFF
GO
SET IDENTITY_INSERT [dbo].[Contacts] ON 

INSERT [dbo].[Contacts] ([ContactID], [ContactUserName], [ContactMail], [ContactSubject], [ContactMessage], [ContactDate], [ContactStatus]) VALUES (1, N'Deme', N'dene@gmail.com', N'demde', N'dem', CAST(N'2022-03-30T00:00:00.0000000' AS DateTime2), 1)
INSERT [dbo].[Contacts] ([ContactID], [ContactUserName], [ContactMail], [ContactSubject], [ContactMessage], [ContactDate], [ContactStatus]) VALUES (2, N'Deneme', N'Deneme@gmail.com', N'Deneme', N'Deneme', CAST(N'2022-06-15T00:00:00.0000000' AS DateTime2), 1)
INSERT [dbo].[Contacts] ([ContactID], [ContactUserName], [ContactMail], [ContactSubject], [ContactMessage], [ContactDate], [ContactStatus]) VALUES (3, N'Faik Şenergin', N'faiksenergin@gmail.com', N'Faik Şenergin', N'Faik Şenergin', CAST(N'2022-06-15T00:00:00.0000000' AS DateTime2), 1)
SET IDENTITY_INSERT [dbo].[Contacts] OFF
GO
SET IDENTITY_INSERT [dbo].[NewsLetters] ON 

INSERT [dbo].[NewsLetters] ([MailID], [Mail], [MailStatus]) VALUES (1, N'berkayakbay@gmail.com', 1)
INSERT [dbo].[NewsLetters] ([MailID], [Mail], [MailStatus]) VALUES (2, N'dogueremili@gmail.com', 1)
INSERT [dbo].[NewsLetters] ([MailID], [Mail], [MailStatus]) VALUES (3, N'erkanbstn27@gmail.com', 1)
INSERT [dbo].[NewsLetters] ([MailID], [Mail], [MailStatus]) VALUES (4, N'deneme@gmail.com', 1)
INSERT [dbo].[NewsLetters] ([MailID], [Mail], [MailStatus]) VALUES (5, N'birisi@gmail.com', 1)
SET IDENTITY_INSERT [dbo].[NewsLetters] OFF
GO
SET IDENTITY_INSERT [dbo].[Notifications] ON 

INSERT [dbo].[Notifications] ([NotificationID], [NotificationTitle], [NotificationDetails], [NotificationDate], [NotificationStatus]) VALUES (2, N'Günlük Toplantı', N'Merhabalar Saat 15:00''da Toplantı Vardır', CAST(N'2022-04-29T00:00:00.0000000' AS DateTime2), 1)
SET IDENTITY_INSERT [dbo].[Notifications] OFF
GO
SET IDENTITY_INSERT [dbo].[Writers] ON 

INSERT [dbo].[Writers] ([WriterID], [WriterName], [WriterAbout], [WriterImage], [WriterMail], [WriterPassword], [WriterStatus]) VALUES (1, N'Erkan Bostan', N'Yazılım Mühendisiyim', N'ogrenci.jpg', N'erkanbstn@gmail.com', N'1234', 1)
INSERT [dbo].[Writers] ([WriterID], [WriterName], [WriterAbout], [WriterImage], [WriterMail], [WriterPassword], [WriterStatus]) VALUES (2, N'Burak Yıldız', NULL, N'person.jpg', N'burakyildiz@gmail.com', N'123', 1)
INSERT [dbo].[Writers] ([WriterID], [WriterName], [WriterAbout], [WriterImage], [WriterMail], [WriterPassword], [WriterStatus]) VALUES (3, N'Ayşe Şahin', NULL, N'p2.jpg', N'aysesahin@gmail.com', N'123', 1)
INSERT [dbo].[Writers] ([WriterID], [WriterName], [WriterAbout], [WriterImage], [WriterMail], [WriterPassword], [WriterStatus]) VALUES (6, N'İpek Kalın', NULL, N'ogretmen.jpg', N'ipekkalin@gmail.com', N'123', 1)
INSERT [dbo].[Writers] ([WriterID], [WriterName], [WriterAbout], [WriterImage], [WriterMail], [WriterPassword], [WriterStatus]) VALUES (7, N'Test AdSoyad', NULL, N'Cat.jpg', N'test@gmail.com', N'123', 0)
SET IDENTITY_INSERT [dbo].[Writers] OFF
GO
/****** Object:  Index [IX_Blogs_CategoryID]    Script Date: 15.07.2022 23:12:38 ******/
CREATE NONCLUSTERED INDEX [IX_Blogs_CategoryID] ON [dbo].[Blogs]
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Blogs_WriterID]    Script Date: 15.07.2022 23:12:38 ******/
CREATE NONCLUSTERED INDEX [IX_Blogs_WriterID] ON [dbo].[Blogs]
(
	[WriterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Comments_BlogID]    Script Date: 15.07.2022 23:12:38 ******/
CREATE NONCLUSTERED INDEX [IX_Comments_BlogID] ON [dbo].[Comments]
(
	[BlogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Blogs]  WITH CHECK ADD  CONSTRAINT [FK_Blogs_Categories_CategoryID] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([CategoryID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Blogs] CHECK CONSTRAINT [FK_Blogs_Categories_CategoryID]
GO
ALTER TABLE [dbo].[Blogs]  WITH CHECK ADD  CONSTRAINT [FK_Blogs_Writers_WriterID] FOREIGN KEY([WriterID])
REFERENCES [dbo].[Writers] ([WriterID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Blogs] CHECK CONSTRAINT [FK_Blogs_Writers_WriterID]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Blogs_BlogID] FOREIGN KEY([BlogID])
REFERENCES [dbo].[Blogs] ([BlogID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Blogs_BlogID]
GO
USE [master]
GO
ALTER DATABASE [CoreBlogDB] SET  READ_WRITE 
GO
