USE [master]
GO
/****** Object:  Database [FacturasDb]    Script Date: 01/07/2022 09:40:58 p. m. ******/
CREATE DATABASE [FacturasDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FacturasDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\FacturasDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'FacturasDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\FacturasDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [FacturasDb] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FacturasDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FacturasDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FacturasDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FacturasDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FacturasDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FacturasDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [FacturasDb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [FacturasDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FacturasDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FacturasDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FacturasDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FacturasDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FacturasDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FacturasDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FacturasDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FacturasDb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [FacturasDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FacturasDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FacturasDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FacturasDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FacturasDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FacturasDb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FacturasDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FacturasDb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [FacturasDb] SET  MULTI_USER 
GO
ALTER DATABASE [FacturasDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FacturasDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FacturasDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FacturasDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [FacturasDb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [FacturasDb] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [FacturasDb] SET QUERY_STORE = OFF
GO
USE [FacturasDb]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 01/07/2022 09:40:59 p. m. ******/
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
/****** Object:  Table [dbo].[Cliente]    Script Date: 01/07/2022 09:40:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[Id] [uniqueidentifier] NOT NULL,
	[nombreCompleto] [nvarchar](500) NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Factura]    Script Date: 01/07/2022 09:40:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Factura](
	[Id] [uniqueidentifier] NOT NULL,
	[monto] [decimal](12, 2) NOT NULL,
	[importe] [decimal](12, 2) NOT NULL,
	[fecha] [datetime] NOT NULL,
	[nroFactura] [nvarchar](25) NULL,
	[lugar] [nvarchar](25) NULL,
	[nitProveedor] [nvarchar](25) NULL,
	[razonSocialProveedor] [nvarchar](25) NULL,
	[nitBeneficiario] [nvarchar](25) NULL,
	[razonSocialBeneficiario] [nvarchar](25) NULL,
	[nroAutorizacion] [nvarchar](25) NULL,
	[ReservaId] [uniqueidentifier] NULL,
	[ClienteId] [uniqueidentifier] NULL,
	[VueloId] [uniqueidentifier] NULL,
	[estado] [nchar](10) NULL,
 CONSTRAINT [PK_Factura] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pago]    Script Date: 01/07/2022 09:40:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pago](
	[Id] [uniqueidentifier] NOT NULL,
	[monto] [decimal](12, 2) NOT NULL,
	[fecha] [datetime] NOT NULL,
	[codComprobante] [nvarchar](25) NULL,
	[ReservaId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Pago] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reserva]    Script Date: 01/07/2022 09:40:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reserva](
	[Id] [uniqueidentifier] NOT NULL,
	[codReserva] [nvarchar](25) NULL,
	[estadoReserva] [nvarchar](6) NULL,
	[monto] [decimal](12, 2) NOT NULL,
	[deuda] [decimal](12, 2) NOT NULL,
	[fecha] [datetime] NOT NULL,
	[tipoReserva] [nvarchar](6) NULL,
	[ClienteId] [uniqueidentifier] NULL,
	[VueloId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Reserva] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vuelo]    Script Date: 01/07/2022 09:40:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vuelo](
	[Id] [uniqueidentifier] NOT NULL,
	[cantidad] [int] NOT NULL,
	[detalle] [nvarchar](25) NULL,
	[precioPasaje] [decimal](12, 2) NOT NULL,
 CONSTRAINT [PK_Vuelo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IX_Factura_ClienteId]    Script Date: 01/07/2022 09:40:59 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_Factura_ClienteId] ON [dbo].[Factura]
(
	[ClienteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Factura_ReservaId]    Script Date: 01/07/2022 09:40:59 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_Factura_ReservaId] ON [dbo].[Factura]
(
	[ReservaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Factura_VueloId]    Script Date: 01/07/2022 09:40:59 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_Factura_VueloId] ON [dbo].[Factura]
(
	[VueloId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Pago_ReservaId]    Script Date: 01/07/2022 09:40:59 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_Pago_ReservaId] ON [dbo].[Pago]
(
	[ReservaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Reserva_ClienteId]    Script Date: 01/07/2022 09:40:59 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_Reserva_ClienteId] ON [dbo].[Reserva]
(
	[ClienteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Reserva_VueloId]    Script Date: 01/07/2022 09:40:59 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_Reserva_VueloId] ON [dbo].[Reserva]
(
	[VueloId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Factura]  WITH CHECK ADD  CONSTRAINT [FK_Factura_Cliente_ClienteId] FOREIGN KEY([ClienteId])
REFERENCES [dbo].[Cliente] ([Id])
GO
ALTER TABLE [dbo].[Factura] CHECK CONSTRAINT [FK_Factura_Cliente_ClienteId]
GO
ALTER TABLE [dbo].[Factura]  WITH CHECK ADD  CONSTRAINT [FK_Factura_Reserva_ReservaId] FOREIGN KEY([ReservaId])
REFERENCES [dbo].[Reserva] ([Id])
GO
ALTER TABLE [dbo].[Factura] CHECK CONSTRAINT [FK_Factura_Reserva_ReservaId]
GO
ALTER TABLE [dbo].[Factura]  WITH CHECK ADD  CONSTRAINT [FK_Factura_Vuelo_VueloId] FOREIGN KEY([VueloId])
REFERENCES [dbo].[Vuelo] ([Id])
GO
ALTER TABLE [dbo].[Factura] CHECK CONSTRAINT [FK_Factura_Vuelo_VueloId]
GO
ALTER TABLE [dbo].[Pago]  WITH CHECK ADD  CONSTRAINT [FK_Pago_Reserva_ReservaId] FOREIGN KEY([ReservaId])
REFERENCES [dbo].[Reserva] ([Id])
GO
ALTER TABLE [dbo].[Pago] CHECK CONSTRAINT [FK_Pago_Reserva_ReservaId]
GO
ALTER TABLE [dbo].[Reserva]  WITH CHECK ADD  CONSTRAINT [FK_Reserva_Cliente_ClienteId] FOREIGN KEY([ClienteId])
REFERENCES [dbo].[Cliente] ([Id])
GO
ALTER TABLE [dbo].[Reserva] CHECK CONSTRAINT [FK_Reserva_Cliente_ClienteId]
GO
ALTER TABLE [dbo].[Reserva]  WITH CHECK ADD  CONSTRAINT [FK_Reserva_Vuelo_VueloId] FOREIGN KEY([VueloId])
REFERENCES [dbo].[Vuelo] ([Id])
GO
ALTER TABLE [dbo].[Reserva] CHECK CONSTRAINT [FK_Reserva_Vuelo_VueloId]
GO
USE [master]
GO
ALTER DATABASE [FacturasDb] SET  READ_WRITE 
GO
