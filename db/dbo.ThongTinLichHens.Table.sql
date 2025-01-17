USE [QLGT]
GO
/****** Object:  Table [dbo].[ThongTinLichHens]    Script Date: 1/16/2021 1:32:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongTinLichHens](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[bienSoXe] [nvarchar](max) NULL,
	[soKhung] [nvarchar](max) NULL,
	[soMay] [nvarchar](max) NULL,
	[ngayDangKy] [datetime] NOT NULL,
	[tenNguoiDangKy] [nvarchar](max) NULL,
	[soDienThoai] [nvarchar](max) NULL,
	[CMND] [nvarchar](max) NULL,
	[khungGio] [datetime] NOT NULL,
	[trangThaiXetDuyet] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.ThongTinLichHens] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ThongTinLichHens] ON 

INSERT [dbo].[ThongTinLichHens] ([id], [bienSoXe], [soKhung], [soMay], [ngayDangKy], [tenNguoiDangKy], [soDienThoai], [CMND], [khungGio], [trangThaiXetDuyet]) VALUES (1, N'59X22519', N'JJ2188OPA0', N'PK11NBD22A', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Huy', N'0915896666', N'088988990098', CAST(N'1900-01-01T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[ThongTinLichHens] ([id], [bienSoXe], [soKhung], [soMay], [ngayDangKy], [tenNguoiDangKy], [soDienThoai], [CMND], [khungGio], [trangThaiXetDuyet]) VALUES (2, N'56X22212', N'JJO922PAA9', N'KK11bbJ209A', CAST(N'2001-01-01T00:00:00.000' AS DateTime), N'Khoi', N'09991929934', N'099211226437', CAST(N'2001-01-01T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[ThongTinLichHens] ([id], [bienSoXe], [soKhung], [soMay], [ngayDangKy], [tenNguoiDangKy], [soDienThoai], [CMND], [khungGio], [trangThaiXetDuyet]) VALUES (7, N'59X22519', N'JJ2188OPA0', N'PK11NBD22A', CAST(N'2001-01-01T00:00:00.000' AS DateTime), N'Khanh', N'0915896666', N'088988990098', CAST(N'2001-01-01T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[ThongTinLichHens] ([id], [bienSoXe], [soKhung], [soMay], [ngayDangKy], [tenNguoiDangKy], [soDienThoai], [CMND], [khungGio], [trangThaiXetDuyet]) VALUES (8, N'1999A2', N'3241232JJKK', N'123LL111223', CAST(N'2021-01-16T02:54:01.407' AS DateTime), N'HUY', N'09211111123123', N'123125123', CAST(N'2021-01-30T02:57:00.000' AS DateTime), 1)
INSERT [dbo].[ThongTinLichHens] ([id], [bienSoXe], [soKhung], [soMay], [ngayDangKy], [tenNguoiDangKy], [soDienThoai], [CMND], [khungGio], [trangThaiXetDuyet]) VALUES (16, N'1999A2A', N'AS111', N'CKK2455', CAST(N'2001-01-01T00:00:00.000' AS DateTime), N'NAM', N'0234441223', N'099822385748', CAST(N'2001-01-01T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[ThongTinLichHens] ([id], [bienSoXe], [soKhung], [soMay], [ngayDangKy], [tenNguoiDangKy], [soDienThoai], [CMND], [khungGio], [trangThaiXetDuyet]) VALUES (17, N'1999A2', N'NONNONO', N'123LL111223', CAST(N'2021-01-16T05:17:34.873' AS DateTime), N'HJY12', N'092224555', N'335O9392O1O', CAST(N'2021-01-22T05:21:00.000' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[ThongTinLichHens] OFF
GO
ALTER TABLE [dbo].[ThongTinLichHens] ADD  DEFAULT ('1900-01-01T00:00:00.000') FOR [ngayDangKy]
GO
ALTER TABLE [dbo].[ThongTinLichHens] ADD  DEFAULT ((0)) FOR [trangThaiXetDuyet]
GO
