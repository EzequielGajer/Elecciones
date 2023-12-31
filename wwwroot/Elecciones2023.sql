USE [Elecciones2023]
GO
/****** Object:  User [alumno]    Script Date: 14/7/2023 14:18:43 ******/
CREATE USER [alumno] FOR LOGIN [alumno] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Candidato]    Script Date: 14/7/2023 14:18:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Candidato](
	[IdCandidato] [int] NOT NULL,
	[IdPartido] [int] NOT NULL,
	[Apellido] [varchar](50) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[FechaNacimiento] [date] NOT NULL,
	[Foto] [varchar](500) NOT NULL,
	[Postulacion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Candidato] PRIMARY KEY CLUSTERED 
(
	[IdCandidato] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Partido]    Script Date: 14/7/2023 14:18:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partido](
	[IdPartido] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Logo] [varchar](150) NOT NULL,
	[SitioWeb] [varchar](100) NOT NULL,
	[FechaFundacion] [datetime] NOT NULL,
	[CantidadDiputados] [int] NOT NULL,
	[CantidadSenadores] [int] NOT NULL,
 CONSTRAINT [PK_Partido] PRIMARY KEY CLUSTERED 
(
	[IdPartido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Candidato] ([IdCandidato], [IdPartido], [Apellido], [Nombre], [FechaNacimiento], [Foto], [Postulacion]) VALUES (1, 1, N'Massa', N'Sergio ', CAST(N'1972-04-28' AS Date), N'https://upload.wikimedia.org/wikipedia/commons/thumb/c/ca/Sergio_Massa_%2849619602321%29_%28cropped%29.jpg/220px-Sergio_Massa_%2849619602321%29_%28cropped%29.jpg', N'Presidente')
INSERT [dbo].[Candidato] ([IdCandidato], [IdPartido], [Apellido], [Nombre], [FechaNacimiento], [Foto], [Postulacion]) VALUES (2, 1, N'Rossi', N'Agustín ', CAST(N'1959-10-18' AS Date), N'https://fotos.perfil.com/2022/11/09/trim/900/900/agustin-rossi-1450451.jpg', N'Vicepresidente')
INSERT [dbo].[Candidato] ([IdCandidato], [IdPartido], [Apellido], [Nombre], [FechaNacimiento], [Foto], [Postulacion]) VALUES (3, 1, N'Santoro', N'Leandro ', CAST(N'1976-01-11' AS Date), N'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b3/Santoro54372.jpg/220px-Santoro54372.jpg', N'Jefe de Gobierno')
INSERT [dbo].[Candidato] ([IdCandidato], [IdPartido], [Apellido], [Nombre], [FechaNacimiento], [Foto], [Postulacion]) VALUES (4, 2, N'Bullrich', N'Patricia', CAST(N'1956-06-11' AS Date), N'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4d/Seguridad_patricia_bullrich.jpg/220px-Seguridad_patricia_bullrich.jpg', N'Presidente')
INSERT [dbo].[Candidato] ([IdCandidato], [IdPartido], [Apellido], [Nombre], [FechaNacimiento], [Foto], [Postulacion]) VALUES (5, 2, N'Petri', N'Luis ', CAST(N'1977-04-01' AS Date), N'https://www.cronista.com/files/image/638/638872/64936760016f4_360_480!.webp?s=9ea8d3f7fa2f42fd14632bf3d3ff9cf1&d=1687396158&oe=jpg', N'Vicepresidente')
INSERT [dbo].[Candidato] ([IdCandidato], [IdPartido], [Apellido], [Nombre], [FechaNacimiento], [Foto], [Postulacion]) VALUES (6, 2, N'Macri', N'Jorge', CAST(N'1965-03-05' AS Date), N'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ad/Macri_recibe_a_Jorge_Macri_%28cropped%29.jpg/220px-Macri_recibe_a_Jorge_Macri_%28cropped%29.jpg', N'Jefe de Gobierno')
INSERT [dbo].[Candidato] ([IdCandidato], [IdPartido], [Apellido], [Nombre], [FechaNacimiento], [Foto], [Postulacion]) VALUES (7, 3, N'Milei', N'Javier ', CAST(N'1970-10-22' AS Date), N'https://upload.wikimedia.org/wikipedia/commons/thumb/0/04/Milei_spot_2021.png/250px-Milei_spot_2021.png', N'Presidente')
INSERT [dbo].[Candidato] ([IdCandidato], [IdPartido], [Apellido], [Nombre], [FechaNacimiento], [Foto], [Postulacion]) VALUES (8, 3, N'Villarruel', N'Victoria ', CAST(N'1975-04-13' AS Date), N'https://upload.wikimedia.org/wikipedia/commons/8/8a/Victoria_Villarruel.png', N'Vicepresidente')
INSERT [dbo].[Candidato] ([IdCandidato], [IdPartido], [Apellido], [Nombre], [FechaNacimiento], [Foto], [Postulacion]) VALUES (9, 3, N'Marra', N'Ramiro ', CAST(N'1982-11-20' AS Date), N'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Ramiro_Marra.jpg/220px-Ramiro_Marra.jpg', N'Jefe de Gobierno')
INSERT [dbo].[Candidato] ([IdCandidato], [IdPartido], [Apellido], [Nombre], [FechaNacimiento], [Foto], [Postulacion]) VALUES (10, 4, N'Castañeira', N'Manuela', CAST(N'1984-11-22' AS Date), N'https://upload.wikimedia.org/wikipedia/commons/thumb/0/04/Manuela_Casta%C3%B1eira_%28cropped%29.jpg/220px-Manuela_Casta%C3%B1eira_%28cropped%29.jpg', N'Presidente')
INSERT [dbo].[Candidato] ([IdCandidato], [IdPartido], [Apellido], [Nombre], [FechaNacimiento], [Foto], [Postulacion]) VALUES (11, 4, N'Ruiz', N'Lucas', CAST(N'1973-05-28' AS Date), N'https://izquierdaweb.com/wp-content/uploads/2021/07/Lucas-Ruiz-Neuquen.jpeg', N'Vicepresidente')
INSERT [dbo].[Candidato] ([IdCandidato], [IdPartido], [Apellido], [Nombre], [FechaNacimiento], [Foto], [Postulacion]) VALUES (12, 4, N'Chiesa', N'Juan Pablo', CAST(N'1972-08-06' AS Date), N'https://pbs.twimg.com/profile_images/1640834250629951491/99r7tgrY_400x400.jpg', N'Jefe de Gobierno')
INSERT [dbo].[Candidato] ([IdCandidato], [IdPartido], [Apellido], [Nombre], [FechaNacimiento], [Foto], [Postulacion]) VALUES (13, 5, N'Escobar', N'Jesús Arnaldo', CAST(N'1971-02-10' AS Date), N'https://economis.com.ar/wp-content/uploads/2022/11/63878_3.jpg', N'Presidente')
INSERT [dbo].[Candidato] ([IdCandidato], [IdPartido], [Apellido], [Nombre], [FechaNacimiento], [Foto], [Postulacion]) VALUES (14, 5, N'Lezama Hid', N'Marianella', CAST(N'1989-07-25' AS Date), N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVs7jA9dPpbpUwbUig9UO75PZaZ5SeFmKaoA&usqp=CAU', N'Vicepresidente')
INSERT [dbo].[Candidato] ([IdCandidato], [IdPartido], [Apellido], [Nombre], [FechaNacimiento], [Foto], [Postulacion]) VALUES (15, 5, N'Buzzo Pipet', N'Adolfo', CAST(N'1987-11-05' AS Date), N'https://scontent.faep9-1.fna.fbcdn.net/v/t39.30808-6/272630642_352962703498188_8245958977427514868_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=wCh_1mvWnkIAX9L68AB&_nc_ht=scontent.faep9-1.fna&oh=00_AfDRtwcbGXdx-pf1EqqsiAdmlzuQfIU3nL2Xbit7U3A7pw&oe=64B65B0E', N'Jefe de Gobierno')
INSERT [dbo].[Candidato] ([IdCandidato], [IdPartido], [Apellido], [Nombre], [FechaNacimiento], [Foto], [Postulacion]) VALUES (16, 6, N'Schiaretti', N'Juan', CAST(N'1949-06-19' AS Date), N'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b1/XV_Reuni%C3%B3n_Institucional_de_la_Regi%C3%B3n_Centro_-_02_%28cropped%29.jpg/220px-XV_Reuni%C3%B3n_Institucional_de_la_Regi%C3%B3n_Centro_-_02_%28cropped%29.jpg', N'Presidente')
INSERT [dbo].[Candidato] ([IdCandidato], [IdPartido], [Apellido], [Nombre], [FechaNacimiento], [Foto], [Postulacion]) VALUES (17, 6, N'Randazzo', N'Florencio', CAST(N'1964-03-01' AS Date), N'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2e/Randazzo2.jpg/425px-Randazzo2.jpg', N'Vicepresidente')
INSERT [dbo].[Candidato] ([IdCandidato], [IdPartido], [Apellido], [Nombre], [FechaNacimiento], [Foto], [Postulacion]) VALUES (18, 6, N'García Moritán', N'Roberto', CAST(N'1975-01-18' AS Date), N'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f8/Roberto_Garc%C3%ADa_Morit%C3%A1n.jpg/220px-Roberto_Garc%C3%ADa_Morit%C3%A1n.jpg', N'Jefe de Gobierno')
INSERT [dbo].[Candidato] ([IdCandidato], [IdPartido], [Apellido], [Nombre], [FechaNacimiento], [Foto], [Postulacion]) VALUES (19, 7, N'Bregman', N'Myriam', CAST(N'1972-02-25' AS Date), N'https://upload.wikimedia.org/wikipedia/commons/4/46/Myriam_Bregman.png', N'Presidente')
INSERT [dbo].[Candidato] ([IdCandidato], [IdPartido], [Apellido], [Nombre], [FechaNacimiento], [Foto], [Postulacion]) VALUES (20, 7, N'Del Caño', N'Nicolás', CAST(N'1980-02-06' AS Date), N'https://upload.wikimedia.org/wikipedia/commons/9/93/Nicol%C3%A1s_del_Ca%C3%B1o_2021.png', N'Vicepresidente')
INSERT [dbo].[Candidato] ([IdCandidato], [IdPartido], [Apellido], [Nombre], [FechaNacimiento], [Foto], [Postulacion]) VALUES (21, 7, N'Adaro', N'Jorge', CAST(N'1964-06-02' AS Date), N'https://am530somosradio.com/wp-content/uploads/2023/05/Jorge-Adaro.png', N'Jefe de Gobierno')
INSERT [dbo].[Candidato] ([IdCandidato], [IdPartido], [Apellido], [Nombre], [FechaNacimiento], [Foto], [Postulacion]) VALUES (22, 8, N'Moreno', N'Guillermo', CAST(N'1955-10-15' AS Date), N'https://pbs.twimg.com/profile_images/1560571320655499272/EaLLWrkH_400x400.jpg', N'Presidente')
INSERT [dbo].[Candidato] ([IdCandidato], [IdPartido], [Apellido], [Nombre], [FechaNacimiento], [Foto], [Postulacion]) VALUES (23, 8, N'Fabre', N'Leonardo', CAST(N'1951-05-16' AS Date), N'https://pbs.twimg.com/profile_images/1609923079072792578/srGmntSe_400x400.jpg', N'Vicepresidente')
INSERT [dbo].[Candidato] ([IdCandidato], [IdPartido], [Apellido], [Nombre], [FechaNacimiento], [Foto], [Postulacion]) VALUES (24, 8, N'Graham', N'Eduardo', CAST(N'1960-04-09' AS Date), N'https://interzonaeditora.com/admin/files/autores/164/1.jpg', N'Jefe de Gobierno')
INSERT [dbo].[Candidato] ([IdCandidato], [IdPartido], [Apellido], [Nombre], [FechaNacimiento], [Foto], [Postulacion]) VALUES (25, 9, N'Solano', N'Gabriel', CAST(N'1974-06-04' AS Date), N'https://po.org.ar/wp-content/uploads/2023/05/Gabriel-Solano-2-1-e1683724365136.jpg', N'Presidente')
INSERT [dbo].[Candidato] ([IdCandidato], [IdPartido], [Apellido], [Nombre], [FechaNacimiento], [Foto], [Postulacion]) VALUES (26, 9, N'Ripoll', N'Vilma', CAST(N'1954-04-12' AS Date), N'https://pbs.twimg.com/profile_images/1512158838190977026/bCaPKDJF_400x400.jpg', N'Vicepresidente')
INSERT [dbo].[Candidato] ([IdCandidato], [IdPartido], [Apellido], [Nombre], [FechaNacimiento], [Foto], [Postulacion]) VALUES (27, 9, N'Biasi', N'Vanina', CAST(N'1974-09-03' AS Date), N'https://po.org.ar/wp-content/uploads/2023/07/WhatsApp-Image-2023-07-07-at-17.05.02.jpeg', N'Jefe de Gobierno')
GO
INSERT [dbo].[Partido] ([IdPartido], [Nombre], [Logo], [SitioWeb], [FechaFundacion], [CantidadDiputados], [CantidadSenadores]) VALUES (1, N'Union por la Patria', N'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5a/Uni%C3%B3n_por_la_Patria_logo_completo.png/250px-Uni%C3%B3n_por_la_Patria_logo_completo.png', N'https://es.wikipedia.org/wiki/Uni%C3%B3n_por_la_Patria', CAST(N'2023-06-14T00:00:00.000' AS DateTime), 118, 35)
INSERT [dbo].[Partido] ([IdPartido], [Nombre], [Logo], [SitioWeb], [FechaFundacion], [CantidadDiputados], [CantidadSenadores]) VALUES (2, N'Juntos por el Cambio', N'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f1/Juntos-Por-El-Cambio-Logo.svg/220px-Juntos-Por-El-Cambio-Logo.svg.png', N'https://jxc.com.ar/', CAST(N'2019-06-12T00:00:00.000' AS DateTime), 116, 33)
INSERT [dbo].[Partido] ([IdPartido], [Nombre], [Logo], [SitioWeb], [FechaFundacion], [CantidadDiputados], [CantidadSenadores]) VALUES (3, N'La Libertad Avanza', N'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6a/Logo_La_Libertad_Avanza.png/300px-Logo_La_Libertad_Avanza.png', N'https://lalibertadavanza.com.ar/', CAST(N'2021-07-14T00:00:00.000' AS DateTime), 3, 0)
INSERT [dbo].[Partido] ([IdPartido], [Nombre], [Logo], [SitioWeb], [FechaFundacion], [CantidadDiputados], [CantidadSenadores]) VALUES (4, N'Nuevo Movimiento al Socialismo', N'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f9/Nuevo_mas_logo.svg/200px-Nuevo_mas_logo.svg.png', N'http://www.mas.org.ar/', CAST(N'2003-06-14T00:00:00.000' AS DateTime), 0, 0)
INSERT [dbo].[Partido] ([IdPartido], [Nombre], [Logo], [SitioWeb], [FechaFundacion], [CantidadDiputados], [CantidadSenadores]) VALUES (5, N'Libres del Sur', N'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fc/Libresdelsur_logo.svg/180px-Libresdelsur_logo.svg.png', N'http://libresdelsur.org.ar/', CAST(N'2006-04-27T00:00:00.000' AS DateTime), 0, 0)
INSERT [dbo].[Partido] ([IdPartido], [Nombre], [Logo], [SitioWeb], [FechaFundacion], [CantidadDiputados], [CantidadSenadores]) VALUES (6, N'Hacemos por Nuestro Pais', N'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b9/Hacemos-por-nuesro-pa%C3%ADs-logo.png/250px-Hacemos-por-nuesro-pa%C3%ADs-logo.png', N'https://es.wikipedia.org/wiki/Hacemos_por_Nuestro_Pa%C3%ADs', CAST(N'2023-06-14T00:00:00.000' AS DateTime), 0, 0)
INSERT [dbo].[Partido] ([IdPartido], [Nombre], [Logo], [SitioWeb], [FechaFundacion], [CantidadDiputados], [CantidadSenadores]) VALUES (7, N'Frente de Izquierda ', N'https://pbs.twimg.com/profile_images/1138839913984663552/N4Tie69o_400x400.jpg', N'https://www.frentedeizquierda.org/', CAST(N'2011-04-14T00:00:00.000' AS DateTime), 4, 0)
INSERT [dbo].[Partido] ([IdPartido], [Nombre], [Logo], [SitioWeb], [FechaFundacion], [CantidadDiputados], [CantidadSenadores]) VALUES (8, N'Principios y Valores', N'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4d/Logo_partido_Principios_y_Valores.jpg/203px-Logo_partido_Principios_y_Valores.jpg', N'https://es.wikipedia.org/wiki/Principios_y_Valores', CAST(N'2020-10-17T00:00:00.000' AS DateTime), 0, 0)
INSERT [dbo].[Partido] ([IdPartido], [Nombre], [Logo], [SitioWeb], [FechaFundacion], [CantidadDiputados], [CantidadSenadores]) VALUES (9, N'Partido Obrero', N'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d1/Partido_Obrero_Logo.svg/250px-Partido_Obrero_Logo.svg.png', N'http://www.po.org.ar/', CAST(N'1995-03-14T00:00:00.000' AS DateTime), 1, 0)
GO
ALTER TABLE [dbo].[Candidato]  WITH CHECK ADD  CONSTRAINT [FK_Candidato_Partido] FOREIGN KEY([IdPartido])
REFERENCES [dbo].[Partido] ([IdPartido])
GO
ALTER TABLE [dbo].[Candidato] CHECK CONSTRAINT [FK_Candidato_Partido]
ALTER TABLE [dbo].[Candidato] ALTER COLUMN [IdCandidato] INT IDENTITY(1,1) NOT NULL;
GO
