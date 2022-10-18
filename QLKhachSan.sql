USE [QLKhachSan]
GO
/****** Object:  Table [dbo].[CTPhieuDatPhong_LoaiPhong]    Script Date: 10/10/2022 9:05:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTPhieuDatPhong_LoaiPhong](
	[MaPhieuDatPhong] [varchar](50) NOT NULL,
	[MaCTPhieuDatPhong_LoaiPhong] [varchar](50) NOT NULL,
	[MaLoaiPhong] [varchar](50) NULL,
	[SLPhong] [int] NULL,
 CONSTRAINT [PK_CTPhieuDatPhong] PRIMARY KEY CLUSTERED 
(
	[MaPhieuDatPhong] ASC,
	[MaCTPhieuDatPhong_LoaiPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTPhieuDatPhong_Phong]    Script Date: 10/10/2022 9:05:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTPhieuDatPhong_Phong](
	[MaCTPhieuDatPhong_Phong] [varchar](50) NOT NULL,
	[MaPhieuDatPhong] [varchar](50) NOT NULL,
	[MaPhong] [varchar](50) NOT NULL,
 CONSTRAINT [PK_CTPhieuDatPhong_Phong] PRIMARY KEY CLUSTERED 
(
	[MaCTPhieuDatPhong_Phong] ASC,
	[MaPhieuDatPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiPhong]    Script Date: 10/10/2022 9:05:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiPhong](
	[MaLoaiPhong] [varchar](50) NOT NULL,
	[TenLoaiPhong] [nvarchar](50) NULL,
	[UuTienHienThi] [int] NULL,
 CONSTRAINT [PK_LoaiPhong] PRIMARY KEY CLUSTERED 
(
	[MaLoaiPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuDatPhong]    Script Date: 10/10/2022 9:05:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuDatPhong](
	[MaPhieuDatPhong] [varchar](50) NOT NULL,
	[HoTenKhachHang] [nvarchar](50) NULL,
	[SoDienThoai] [varchar](50) NULL,
	[NgayNhanPhong] [date] NULL,
	[NgayTraPhong] [date] NULL,
	[TienTraTruoc] [varchar](50) NULL,
	[GhiChu] [nvarchar](50) NULL,
	[TrangThai] [nvarchar](50) NULL,
 CONSTRAINT [PK_PhieuDatPhong] PRIMARY KEY CLUSTERED 
(
	[MaPhieuDatPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phong]    Script Date: 10/10/2022 9:05:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phong](
	[MaPhong] [varchar](50) NOT NULL,
	[MaLoaiPhong] [varchar](50) NULL,
	[TinhTrang] [nvarchar](50) NULL,
	[SoKhachToiDa] [int] NULL,
	[UuTienHienThi] [int] NULL,
 CONSTRAINT [PK_Phong] PRIMARY KEY CLUSTERED 
(
	[MaPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CTPhieuDatPhong_LoaiPhong] ([MaPhieuDatPhong], [MaCTPhieuDatPhong_LoaiPhong], [MaLoaiPhong], [SLPhong]) VALUES (N'PDP001', N'CTPD001', N'LP001', 1)
GO
INSERT [dbo].[LoaiPhong] ([MaLoaiPhong], [TenLoaiPhong], [UuTienHienThi]) VALUES (N'LP001', N'Phòng đơn', 1)
INSERT [dbo].[LoaiPhong] ([MaLoaiPhong], [TenLoaiPhong], [UuTienHienThi]) VALUES (N'LP002', N'Phòng đôi', 2)
INSERT [dbo].[LoaiPhong] ([MaLoaiPhong], [TenLoaiPhong], [UuTienHienThi]) VALUES (N'LP003', N'a', 1)
INSERT [dbo].[LoaiPhong] ([MaLoaiPhong], [TenLoaiPhong], [UuTienHienThi]) VALUES (N'LP004', N'Thủy', 1)
GO
INSERT [dbo].[PhieuDatPhong] ([MaPhieuDatPhong], [HoTenKhachHang], [SoDienThoai], [NgayNhanPhong], [NgayTraPhong], [TienTraTruoc], [GhiChu], [TrangThai]) VALUES (N'PDP001', N'tnmt', N'0900900900', CAST(N'2022-09-10' AS Date), CAST(N'2022-10-10' AS Date), N'1000000', NULL, NULL)
GO
INSERT [dbo].[Phong] ([MaPhong], [MaLoaiPhong], [TinhTrang], [SoKhachToiDa], [UuTienHienThi]) VALUES (N'P001', N'LP001', NULL, 2, 1)
INSERT [dbo].[Phong] ([MaPhong], [MaLoaiPhong], [TinhTrang], [SoKhachToiDa], [UuTienHienThi]) VALUES (N'P002', N'LP002', NULL, 4, 2)
GO
ALTER TABLE [dbo].[CTPhieuDatPhong_LoaiPhong]  WITH CHECK ADD  CONSTRAINT [FK_CTPhieuDatPhong_LoaiPhong] FOREIGN KEY([MaLoaiPhong])
REFERENCES [dbo].[LoaiPhong] ([MaLoaiPhong])
GO
ALTER TABLE [dbo].[CTPhieuDatPhong_LoaiPhong] CHECK CONSTRAINT [FK_CTPhieuDatPhong_LoaiPhong]
GO
ALTER TABLE [dbo].[CTPhieuDatPhong_LoaiPhong]  WITH CHECK ADD  CONSTRAINT [FK_CTPhieuDatPhong_PhieuDatPhong] FOREIGN KEY([MaPhieuDatPhong])
REFERENCES [dbo].[PhieuDatPhong] ([MaPhieuDatPhong])
GO
ALTER TABLE [dbo].[CTPhieuDatPhong_LoaiPhong] CHECK CONSTRAINT [FK_CTPhieuDatPhong_PhieuDatPhong]
GO
ALTER TABLE [dbo].[CTPhieuDatPhong_Phong]  WITH CHECK ADD  CONSTRAINT [FK_CTPhieuDatPhong_Phong_PhieuDatPhong] FOREIGN KEY([MaPhieuDatPhong])
REFERENCES [dbo].[PhieuDatPhong] ([MaPhieuDatPhong])
GO
ALTER TABLE [dbo].[CTPhieuDatPhong_Phong] CHECK CONSTRAINT [FK_CTPhieuDatPhong_Phong_PhieuDatPhong]
GO
ALTER TABLE [dbo].[CTPhieuDatPhong_Phong]  WITH CHECK ADD  CONSTRAINT [FK_CTPhieuDatPhong_Phong_Phong] FOREIGN KEY([MaPhong])
REFERENCES [dbo].[Phong] ([MaPhong])
GO
ALTER TABLE [dbo].[CTPhieuDatPhong_Phong] CHECK CONSTRAINT [FK_CTPhieuDatPhong_Phong_Phong]
GO
ALTER TABLE [dbo].[LoaiPhong]  WITH CHECK ADD  CONSTRAINT [FK_LoaiPhong_LoaiPhong] FOREIGN KEY([MaLoaiPhong])
REFERENCES [dbo].[LoaiPhong] ([MaLoaiPhong])
GO
ALTER TABLE [dbo].[LoaiPhong] CHECK CONSTRAINT [FK_LoaiPhong_LoaiPhong]
GO
ALTER TABLE [dbo].[Phong]  WITH CHECK ADD  CONSTRAINT [FK_Phong_LoaiPhong] FOREIGN KEY([MaLoaiPhong])
REFERENCES [dbo].[LoaiPhong] ([MaLoaiPhong])
GO
ALTER TABLE [dbo].[Phong] CHECK CONSTRAINT [FK_Phong_LoaiPhong]
GO
ALTER TABLE [dbo].[Phong]  WITH CHECK ADD  CONSTRAINT [FK_Phong_Phong] FOREIGN KEY([MaPhong])
REFERENCES [dbo].[Phong] ([MaPhong])
GO
ALTER TABLE [dbo].[Phong] CHECK CONSTRAINT [FK_Phong_Phong]
GO
