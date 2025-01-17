USE [QLGT]
GO
/****** Object:  Table [dbo].[BienBans]    Script Date: 1/16/2021 1:31:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BienBans](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[CanCu] [nvarchar](max) NULL,
	[NgayViPham] [datetime] NULL,
	[DonVi] [nvarchar](max) NULL,
	[DiaDiem] [nvarchar](max) NULL,
	[Hoten1] [nvarchar](max) NULL,
	[CapBac1] [nvarchar](max) NULL,
	[ChucVu1] [nvarchar](max) NULL,
	[HoTen2] [nvarchar](max) NULL,
	[CapBac2] [nvarchar](max) NULL,
	[ChucVu2] [nvarchar](max) NULL,
	[HoTenVP] [nvarchar](max) NULL,
	[NgaySinh] [datetime] NULL,
	[NgheNghiep] [nvarchar](max) NULL,
	[DiaChi] [nvarchar](max) NULL,
	[CMND] [nvarchar](max) NULL,
	[NgayCap] [datetime] NULL,
	[NoiCap] [nvarchar](max) NULL,
	[DiaDiemVP] [nvarchar](max) NULL,
	[HanhViVP] [nvarchar](max) NULL,
	[LoiKhaiVP] [nvarchar](max) NULL,
	[LoiKhaiCK] [nvarchar](max) NULL,
	[BienPhap] [nvarchar](max) NULL,
	[TangVat] [nvarchar](max) NULL,
	[NgayRaQDXP] [datetime] NULL,
 CONSTRAINT [PK_dbo.BienBans] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BienBans] ON 

INSERT [dbo].[BienBans] ([id], [CanCu], [NgayViPham], [DonVi], [DiaDiem], [Hoten1], [CapBac1], [ChucVu1], [HoTen2], [CapBac2], [ChucVu2], [HoTenVP], [NgaySinh], [NgheNghiep], [DiaChi], [CMND], [NgayCap], [NoiCap], [DiaDiemVP], [HanhViVP], [LoiKhaiVP], [LoiKhaiCK], [BienPhap], [TangVat], [NgayRaQDXP]) VALUES (1, N'camera hanh trinh', CAST(N'2021-01-16T12:04:00.000' AS DateTime), N'tp.hcm', N'NVC', N'Tan', N'ha si', N'ha si', N'Tam', N'thuong ta', N'thuong ta', N'Tann', CAST(N'2007-02-07T12:05:00.000' AS DateTime), N'sv', N'NVD', N'01234567', CAST(N'2021-01-05T12:05:00.000' AS DateTime), N'TP.HCM', N'NVC', N'vuot den do', N'lo tay', NULL, N'thu giu giay to', NULL, CAST(N'2021-01-20T12:05:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[BienBans] OFF
