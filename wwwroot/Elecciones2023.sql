USE [Elecciones2023]
GO
/****** Object:  User [alumno]    Script Date: 12/7/2023 11:24:08 ******/
CREATE USER [alumno] FOR LOGIN [alumno] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Candidato]    Script Date: 12/7/2023 11:24:08 ******/
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
	[Foto] [varchar](50) NOT NULL,
	[Postulacion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Candidato] PRIMARY KEY CLUSTERED 
(
	[IdCandidato] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Partido]    Script Date: 12/7/2023 11:24:08 ******/
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
GO
