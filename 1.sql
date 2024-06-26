USE [BarberShop]
GO
/****** Object:  Table [dbo].[Barber]    Script Date: 14.06.2024 21:48:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Barber](
	[IDBaber] [int] NOT NULL,
	[NameBarber] [nvarchar](50) NOT NULL,
	[AdressBarberShopa] [nvarchar](50) NOT NULL,
	[IDZapisi] [int] NOT NULL,
 CONSTRAINT [PK_Barber] PRIMARY KEY CLUSTERED 
(
	[IDBaber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Klient]    Script Date: 14.06.2024 21:48:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Klient](
	[IDKlient] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Familia] [nvarchar](50) NOT NULL,
	[Login] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[NumderPhone] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Klient] PRIMARY KEY CLUSTERED 
(
	[IDKlient] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Market]    Script Date: 14.06.2024 21:48:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Market](
	[IDMarket] [int] NOT NULL,
	[NazvanieTovara] [nvarchar](50) NOT NULL,
	[OpisanieTovara] [nvarchar](50) NOT NULL,
	[StoimostTovara] [nvarchar](50) NOT NULL,
	[IDServise] [int] NOT NULL,
 CONSTRAINT [PK_Market] PRIMARY KEY CLUSTERED 
(
	[IDMarket] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Servise]    Script Date: 14.06.2024 21:48:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Servise](
	[IDServise] [int] NOT NULL,
	[NazvanieYslygi] [nvarchar](50) NOT NULL,
	[StoimostYslygi] [money] NOT NULL,
 CONSTRAINT [PK_Servise] PRIMARY KEY CLUSTERED 
(
	[IDServise] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Zapisi]    Script Date: 14.06.2024 21:48:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Zapisi](
	[IDZapisi] [int] NOT NULL,
	[NazvanieYslygi] [nvarchar](50) NOT NULL,
	[StoimostYslygi] [nvarchar](50) NOT NULL,
	[DataZapisi] [date] NOT NULL,
	[IDMarket] [int] NOT NULL,
	[IDklient] [int] NOT NULL,
 CONSTRAINT [PK_Zapisi] PRIMARY KEY CLUSTERED 
(
	[IDZapisi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Barber] ([IDBaber], [NameBarber], [AdressBarberShopa], [IDZapisi]) VALUES (1, N'Макисм', N'
×
Проспект Вернадского, 11/19', 1)
INSERT [dbo].[Barber] ([IDBaber], [NameBarber], [AdressBarberShopa], [IDZapisi]) VALUES (2, N'Андрей', N'
×
Проспект Вернадского, 11/19', 1)
GO
INSERT [dbo].[Klient] ([IDKlient], [Name], [Familia], [Login], [Password], [NumderPhone]) VALUES (1, N'Лева', N'Троцки', N'qwe', N'123', N'89999999999')
INSERT [dbo].[Klient] ([IDKlient], [Name], [Familia], [Login], [Password], [NumderPhone]) VALUES (2, N'Максим', N'Баженов', N'qwer', N'1234', N'89997777777')
INSERT [dbo].[Klient] ([IDKlient], [Name], [Familia], [Login], [Password], [NumderPhone]) VALUES (3, N'Максим', N'Гордеев', N'qwert', N'12345', N'89996666666')
INSERT [dbo].[Klient] ([IDKlient], [Name], [Familia], [Login], [Password], [NumderPhone]) VALUES (4, N'Ульяна', N'Томилко', N'qwerty', N'123456', N'89991443322')
GO
INSERT [dbo].[Market] ([IDMarket], [NazvanieTovara], [OpisanieTovara], [StoimostTovara], [IDServise]) VALUES (1, N'AC 2 IN 1 SKIN MOISTURURIZER&BEARD CONDITIONER 2в1', N'Кондиционер для бороды и средство для кожи, 100мл', N'900', 1)
INSERT [dbo].[Market] ([IDMarket], [NazvanieTovara], [OpisanieTovara], [StoimostTovara], [IDServise]) VALUES (2, N' Сыворотка для бороды и волос с кокосовым маслом ', N'Сыворотка для бороды и волос с кокосовым маслом ', N'1200', 2)
INSERT [dbo].[Market] ([IDMarket], [NazvanieTovara], [OpisanieTovara], [StoimostTovara], [IDServise]) VALUES (3, N'Бальзам для бороды и усов ', N'Бальзам для бороды и усов 250мл', N'1500', 3)
INSERT [dbo].[Market] ([IDMarket], [NazvanieTovara], [OpisanieTovara], [StoimostTovara], [IDServise]) VALUES (4, N'Бальзам для бороды и усов ', N'Бальзам для бороды и усов ', N'1500', 4)
GO
INSERT [dbo].[Servise] ([IDServise], [NazvanieYslygi], [StoimostYslygi]) VALUES (1, N'СТРИЖКА МУЖСКАЯ', 1500.0000)
INSERT [dbo].[Servise] ([IDServise], [NazvanieYslygi], [StoimostYslygi]) VALUES (2, N'СТРИЖКА ПОД МАШИНКУ С ОДНОЙ НАСАДКОЙ', 700.0000)
INSERT [dbo].[Servise] ([IDServise], [NazvanieYslygi], [StoimostYslygi]) VALUES (3, N'СТРИЖКА МАШИНКОЙ НЕСКОЛЬКО НАСАДОК', 700.0000)
INSERT [dbo].[Servise] ([IDServise], [NazvanieYslygi], [StoimostYslygi]) VALUES (4, N'ДЕТСКАЯ СТРИЖКА (ДО 12 ЛЕТ)', 600.0000)
INSERT [dbo].[Servise] ([IDServise], [NazvanieYslygi], [StoimostYslygi]) VALUES (5, N'СТРИЖКА ОТЦА И СЫНА', 1500.0000)
INSERT [dbo].[Servise] ([IDServise], [NazvanieYslygi], [StoimostYslygi]) VALUES (6, N'МУЖСКАЯ СТРИЖКА+КАМУФЛЯЖ
', 2000.0000)
INSERT [dbo].[Servise] ([IDServise], [NazvanieYslygi], [StoimostYslygi]) VALUES (7, N'СТРИЖКА МУЖСКАЯ+СТРИЖКА УСОВ И БОРОДЫ
', 3500.0000)
INSERT [dbo].[Servise] ([IDServise], [NazvanieYslygi], [StoimostYslygi]) VALUES (8, N'СТРИЖКА ДРУГ+ДРУГ У ОДНОГО МАСТЕРА
', 2500.0000)
INSERT [dbo].[Servise] ([IDServise], [NazvanieYslygi], [StoimostYslygi]) VALUES (9, N'СТРИЖКА И КОРОЛЕВСКОЕ БРИТЬЕ
', 3000.0000)
INSERT [dbo].[Servise] ([IDServise], [NazvanieYslygi], [StoimostYslygi]) VALUES (10, N'ХАИР ТАТУ
', 2000.0000)
GO
INSERT [dbo].[Zapisi] ([IDZapisi], [NazvanieYslygi], [StoimostYslygi], [DataZapisi], [IDMarket], [IDklient]) VALUES (1, N'1', N'1500', CAST(N'2024-02-26' AS Date), 1, 1)
INSERT [dbo].[Zapisi] ([IDZapisi], [NazvanieYslygi], [StoimostYslygi], [DataZapisi], [IDMarket], [IDklient]) VALUES (2, N'2', N'2500', CAST(N'2024-03-14' AS Date), 2, 2)
INSERT [dbo].[Zapisi] ([IDZapisi], [NazvanieYslygi], [StoimostYslygi], [DataZapisi], [IDMarket], [IDklient]) VALUES (3, N'4', N'4000', CAST(N'2024-05-17' AS Date), 4, 3)
GO
ALTER TABLE [dbo].[Barber]  WITH CHECK ADD  CONSTRAINT [FK_Barber_Zapisi] FOREIGN KEY([IDZapisi])
REFERENCES [dbo].[Zapisi] ([IDZapisi])
GO
ALTER TABLE [dbo].[Barber] CHECK CONSTRAINT [FK_Barber_Zapisi]
GO
ALTER TABLE [dbo].[Market]  WITH CHECK ADD  CONSTRAINT [FK_Market_Servise] FOREIGN KEY([IDServise])
REFERENCES [dbo].[Servise] ([IDServise])
GO
ALTER TABLE [dbo].[Market] CHECK CONSTRAINT [FK_Market_Servise]
GO
ALTER TABLE [dbo].[Zapisi]  WITH CHECK ADD  CONSTRAINT [FK_Zapisi_Klient] FOREIGN KEY([IDklient])
REFERENCES [dbo].[Klient] ([IDKlient])
GO
ALTER TABLE [dbo].[Zapisi] CHECK CONSTRAINT [FK_Zapisi_Klient]
GO
ALTER TABLE [dbo].[Zapisi]  WITH CHECK ADD  CONSTRAINT [FK_Zapisi_Market] FOREIGN KEY([IDMarket])
REFERENCES [dbo].[Market] ([IDMarket])
GO
ALTER TABLE [dbo].[Zapisi] CHECK CONSTRAINT [FK_Zapisi_Market]
GO
