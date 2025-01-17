USE [QLGT]
GO
/****** Object:  Table [dbo].[PhuongTiens]    Script Date: 1/16/2021 1:32:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhuongTiens](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ChuPhuongTien_id] [int] NULL,
	[nhanHieu] [nvarchar](max) NULL,
	[loaiPhuongTien] [nvarchar](max) NULL,
	[soKhung] [nvarchar](max) NULL,
	[soMay] [nvarchar](max) NULL,
	[kichThuocBao] [nvarchar](max) NULL,
	[khoiLuongBanThan] [nvarchar](max) NULL,
	[soNguoiChoPhepCho] [nvarchar](max) NULL,
	[soTruc_ChieuDaiCoSo] [nvarchar](max) NULL,
	[kichThuocThungHang] [nvarchar](max) NULL,
	[khoiLuongHangChoPhep] [nvarchar](max) NULL,
	[khoiLuongTongChoPhep] [nvarchar](max) NULL,
	[khoiLuongRomooc] [nvarchar](max) NULL,
	[thongBaoDanhChoPhuongTien] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.PhuongTiens] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[PhuongTiens] ON 

INSERT [dbo].[PhuongTiens] ([id], [ChuPhuongTien_id], [nhanHieu], [loaiPhuongTien], [soKhung], [soMay], [kichThuocBao], [khoiLuongBanThan], [soNguoiChoPhepCho], [soTruc_ChieuDaiCoSo], [kichThuocThungHang], [khoiLuongHangChoPhep], [khoiLuongTongChoPhep], [khoiLuongRomooc], [thongBaoDanhChoPhuongTien]) VALUES (1, 1, N'MERCEDES', N'O TO 4 CHO', N'2XX4PSJJPMA', N'5117389009', N'60 X 60 X 60', N'5000 KG', N'4', N'255', N'60 X 60 X 60', N'500 KG', N'5500 KG', N'6000 KG', N'KHONG CHO DAG KIEM, CHUA NOP PHAT')
INSERT [dbo].[PhuongTiens] ([id], [ChuPhuongTien_id], [nhanHieu], [loaiPhuongTien], [soKhung], [soMay], [kichThuocBao], [khoiLuongBanThan], [soNguoiChoPhepCho], [soTruc_ChieuDaiCoSo], [kichThuocThungHang], [khoiLuongHangChoPhep], [khoiLuongTongChoPhep], [khoiLuongRomooc], [thongBaoDanhChoPhuongTien]) VALUES (2, 2, N'AUDI', N'O TO 4 CHO', N'2XXP35599JJA', N'1882990499', N'60 X 60 X 60', N'1000 KG', N'5', N'655', N'60 X 60 X 60', N'500 KG', N'1500 KG', N'7000 KG', N'OKKK')
INSERT [dbo].[PhuongTiens] ([id], [ChuPhuongTien_id], [nhanHieu], [loaiPhuongTien], [soKhung], [soMay], [kichThuocBao], [khoiLuongBanThan], [soNguoiChoPhepCho], [soTruc_ChieuDaiCoSo], [kichThuocThungHang], [khoiLuongHangChoPhep], [khoiLuongTongChoPhep], [khoiLuongRomooc], [thongBaoDanhChoPhuongTien]) VALUES (3, 1, N'ROLLSROYCE', N'O TO 4 CHO', N'2XXP35599JJV', N'51173890093', N'60 X 60 X 60', N'5000 KG', N'4', N'655', N'60 X 60 X 60', N'500 KG', N'5500 KG', N'7000 KG', N'NOP PHAT TRUOC KHI DANG KIEM')
INSERT [dbo].[PhuongTiens] ([id], [ChuPhuongTien_id], [nhanHieu], [loaiPhuongTien], [soKhung], [soMay], [kichThuocBao], [khoiLuongBanThan], [soNguoiChoPhepCho], [soTruc_ChieuDaiCoSo], [kichThuocThungHang], [khoiLuongHangChoPhep], [khoiLuongTongChoPhep], [khoiLuongRomooc], [thongBaoDanhChoPhuongTien]) VALUES (4, 1, N'MERCEDES', N'O TO 4 CHO', N'2XXP35AA599JJA', N'51173890092', N'60 X 60 X 60', N'5000 KG', N'4', N'655', N'60 X 60 X 60', N'500 KG', N'1500 KG', N'7000 KG', N'NOP PHAT TRUOC KHI DANG KIEM')
INSERT [dbo].[PhuongTiens] ([id], [ChuPhuongTien_id], [nhanHieu], [loaiPhuongTien], [soKhung], [soMay], [kichThuocBao], [khoiLuongBanThan], [soNguoiChoPhepCho], [soTruc_ChieuDaiCoSo], [kichThuocThungHang], [khoiLuongHangChoPhep], [khoiLuongTongChoPhep], [khoiLuongRomooc], [thongBaoDanhChoPhuongTien]) VALUES (5, 3, N'ASTON MARTINS', N'O TO 4 CHO', N'2XXP35299JJA', N'511738900932', N'60 X 60 X 60', N'5000 KG', N'4', N'655', N'60 X 60 X 60', N'500 KG', N'1500 KG', N'6000 KG', N'NOP PHAT TRUOC KHI DANG KIEM')
INSERT [dbo].[PhuongTiens] ([id], [ChuPhuongTien_id], [nhanHieu], [loaiPhuongTien], [soKhung], [soMay], [kichThuocBao], [khoiLuongBanThan], [soNguoiChoPhepCho], [soTruc_ChieuDaiCoSo], [kichThuocThungHang], [khoiLuongHangChoPhep], [khoiLuongTongChoPhep], [khoiLuongRomooc], [thongBaoDanhChoPhuongTien]) VALUES (6, 4, N'BENTLEY', N'O TO 4 CHO', N'2XXP355ASD99JJA', N'5117389009222', N'60 X 60 X 60', N'5000 KG', N'4', N'655', N'60 X 60 X 60', N'103 KG', N'5500 KG', N'7000 KG', N'NOP PHAT TRUOC KHI DANG KIEM')
INSERT [dbo].[PhuongTiens] ([id], [ChuPhuongTien_id], [nhanHieu], [loaiPhuongTien], [soKhung], [soMay], [kichThuocBao], [khoiLuongBanThan], [soNguoiChoPhepCho], [soTruc_ChieuDaiCoSo], [kichThuocThungHang], [khoiLuongHangChoPhep], [khoiLuongTongChoPhep], [khoiLuongRomooc], [thongBaoDanhChoPhuongTien]) VALUES (7, 5, N'ROLLSROYCE', N'O TO 4 CHO', N'2XXP35599JJA33', N'5117389009211', N'60 X 60 X 60', N'5000 KG', N'4', N'655', N'60 X 60 X 60', N'333 KG', NULL, N'6000 KG', N'NOP PHAT TRUOC KHI DANG KIEM')
INSERT [dbo].[PhuongTiens] ([id], [ChuPhuongTien_id], [nhanHieu], [loaiPhuongTien], [soKhung], [soMay], [kichThuocBao], [khoiLuongBanThan], [soNguoiChoPhepCho], [soTruc_ChieuDaiCoSo], [kichThuocThungHang], [khoiLuongHangChoPhep], [khoiLuongTongChoPhep], [khoiLuongRomooc], [thongBaoDanhChoPhuongTien]) VALUES (8, 6, N'RENAULT', N'O TO 4 CHO', N'2XXP3559ASDAS9JJA', N'51173890092123', N'60 X 60 X 60', N'5000 KG', N'4', N'655', N'60 X 60 X 60', N'251 KG', NULL, NULL, N'NOP PHAT TRUOC KHI DANG KIEM')
INSERT [dbo].[PhuongTiens] ([id], [ChuPhuongTien_id], [nhanHieu], [loaiPhuongTien], [soKhung], [soMay], [kichThuocBao], [khoiLuongBanThan], [soNguoiChoPhepCho], [soTruc_ChieuDaiCoSo], [kichThuocThungHang], [khoiLuongHangChoPhep], [khoiLuongTongChoPhep], [khoiLuongRomooc], [thongBaoDanhChoPhuongTien]) VALUES (9, 7, N'POLARIS', N'O TO 4 CHO', N'2XXP35599JJA444', N'511738900944', N'60 X 60 X 60', N'5000 KG', N'4', N'655', N'60 X 60 X 60', N'500 KG', N'1500 KG', N'7000 KG', N'NOP PHAT TRUOC KHI DANG KIEM')
INSERT [dbo].[PhuongTiens] ([id], [ChuPhuongTien_id], [nhanHieu], [loaiPhuongTien], [soKhung], [soMay], [kichThuocBao], [khoiLuongBanThan], [soNguoiChoPhepCho], [soTruc_ChieuDaiCoSo], [kichThuocThungHang], [khoiLuongHangChoPhep], [khoiLuongTongChoPhep], [khoiLuongRomooc], [thongBaoDanhChoPhuongTien]) VALUES (10, 2, N'HOTWHEELS', N'O TO 4 CHO', N'2XXP35599JJA94', N'5117389009SS', N'60 X 60 X 60', N'5000 KG', N'4', N'655', N'60 X 60 X 60', N'333 KG', NULL, NULL, N'NOP PHAT TRUOC KHI DANG KIEM')
INSERT [dbo].[PhuongTiens] ([id], [ChuPhuongTien_id], [nhanHieu], [loaiPhuongTien], [soKhung], [soMay], [kichThuocBao], [khoiLuongBanThan], [soNguoiChoPhepCho], [soTruc_ChieuDaiCoSo], [kichThuocThungHang], [khoiLuongHangChoPhep], [khoiLuongTongChoPhep], [khoiLuongRomooc], [thongBaoDanhChoPhuongTien]) VALUES (11, 10, N'HOTWHEELS', N'O TO 4 CHO', N'2XXP35599JJA88', N'511738900931X', N'60 X 60 X 60', N'5000 KG', N'4', N'655', N'60 X 60 X 60', N'60 KG', N'5500 KG', N'7000 KG', N'NOP PHAT TRUOC KHI DANG KIEM')
INSERT [dbo].[PhuongTiens] ([id], [ChuPhuongTien_id], [nhanHieu], [loaiPhuongTien], [soKhung], [soMay], [kichThuocBao], [khoiLuongBanThan], [soNguoiChoPhepCho], [soTruc_ChieuDaiCoSo], [kichThuocThungHang], [khoiLuongHangChoPhep], [khoiLuongTongChoPhep], [khoiLuongRomooc], [thongBaoDanhChoPhuongTien]) VALUES (12, 9, N'HOTWHEELS', N'O TO 4 CHO', N'2XXP35599JJA53', N'5117389009WS', N'60 X 60 X 60', N'5000 KG', N'4', N'655', N'60 X 60 X 60', N'333 KG', NULL, N'6000 KG', NULL)
INSERT [dbo].[PhuongTiens] ([id], [ChuPhuongTien_id], [nhanHieu], [loaiPhuongTien], [soKhung], [soMay], [kichThuocBao], [khoiLuongBanThan], [soNguoiChoPhepCho], [soTruc_ChieuDaiCoSo], [kichThuocThungHang], [khoiLuongHangChoPhep], [khoiLuongTongChoPhep], [khoiLuongRomooc], [thongBaoDanhChoPhuongTien]) VALUES (13, 8, N'HOTWHEELS', N'O TO 4 CHO', N'2XXP35599JJA11', N'511738900922', N'60 X 60 X 60', N'5000 KG', N'4', N'655', N'60 X 60 X 60', N'333 KG', N'1500 KG', N'6000 KG', N'NOP PHAT TRUOC KHI DANG KIEM')
INSERT [dbo].[PhuongTiens] ([id], [ChuPhuongTien_id], [nhanHieu], [loaiPhuongTien], [soKhung], [soMay], [kichThuocBao], [khoiLuongBanThan], [soNguoiChoPhepCho], [soTruc_ChieuDaiCoSo], [kichThuocThungHang], [khoiLuongHangChoPhep], [khoiLuongTongChoPhep], [khoiLuongRomooc], [thongBaoDanhChoPhuongTien]) VALUES (14, 2, N'MERCEDES', N'O TO 4 CHO', N'2XXP35599JJA21', N'5117389009ED', N'60 X 60 X 60', N'5000 KG', N'4', N'6552', N'60 X 60 X 60', N'60 KG', N'1500 KG', NULL, NULL)
INSERT [dbo].[PhuongTiens] ([id], [ChuPhuongTien_id], [nhanHieu], [loaiPhuongTien], [soKhung], [soMay], [kichThuocBao], [khoiLuongBanThan], [soNguoiChoPhepCho], [soTruc_ChieuDaiCoSo], [kichThuocThungHang], [khoiLuongHangChoPhep], [khoiLuongTongChoPhep], [khoiLuongRomooc], [thongBaoDanhChoPhuongTien]) VALUES (15, 2, N'MERCEDES', N'O TO 4 CHO', N'2XXP35599JJA51', N'5117389009WQ', N'60 X 60 X 60', N'5000 KG', N'4', N'651', N'60 X 60 X 60', N'333 KG', NULL, N'6000 KG', N'NOP PHAT TRUOC KHI DANG KIEM')
INSERT [dbo].[PhuongTiens] ([id], [ChuPhuongTien_id], [nhanHieu], [loaiPhuongTien], [soKhung], [soMay], [kichThuocBao], [khoiLuongBanThan], [soNguoiChoPhepCho], [soTruc_ChieuDaiCoSo], [kichThuocThungHang], [khoiLuongHangChoPhep], [khoiLuongTongChoPhep], [khoiLuongRomooc], [thongBaoDanhChoPhuongTien]) VALUES (16, 5, N'MERCEDES', N'O TO 4 CHO', N'2XXP35599JJA912', N'5117389009211CCZ', N'60 X 60 X 60', N'5000 KG', N'4', N'655', N'60 X 60 X 60', N'251 KG', N'5500 KG', N'6000 KG', NULL)
INSERT [dbo].[PhuongTiens] ([id], [ChuPhuongTien_id], [nhanHieu], [loaiPhuongTien], [soKhung], [soMay], [kichThuocBao], [khoiLuongBanThan], [soNguoiChoPhepCho], [soTruc_ChieuDaiCoSo], [kichThuocThungHang], [khoiLuongHangChoPhep], [khoiLuongTongChoPhep], [khoiLuongRomooc], [thongBaoDanhChoPhuongTien]) VALUES (17, 6, N'MERCEDES', N'O TO 4 CHO', N'2XXP35599JJA323', N'5117389009SSXZ', N'60 X 60 X 60', N'5000 KG', N'4', N'655', N'60 X 60 X 60', N'60 KG', NULL, N'7000 KG', N'NOP PHAT TRUOC KHI DANG KIEM')
INSERT [dbo].[PhuongTiens] ([id], [ChuPhuongTien_id], [nhanHieu], [loaiPhuongTien], [soKhung], [soMay], [kichThuocBao], [khoiLuongBanThan], [soNguoiChoPhepCho], [soTruc_ChieuDaiCoSo], [kichThuocThungHang], [khoiLuongHangChoPhep], [khoiLuongTongChoPhep], [khoiLuongRomooc], [thongBaoDanhChoPhuongTien]) VALUES (18, 2, N'MERCEDES', N'O TO 4 CHO', N'2XXP35599JJA331A', N'5117389009GJ', N'60 X 60 X 60', N'5000 KG', N'4', N'655', N'60 X 60 X 60', N'333 KG', NULL, N'6000 KG', NULL)
INSERT [dbo].[PhuongTiens] ([id], [ChuPhuongTien_id], [nhanHieu], [loaiPhuongTien], [soKhung], [soMay], [kichThuocBao], [khoiLuongBanThan], [soNguoiChoPhepCho], [soTruc_ChieuDaiCoSo], [kichThuocThungHang], [khoiLuongHangChoPhep], [khoiLuongTongChoPhep], [khoiLuongRomooc], [thongBaoDanhChoPhuongTien]) VALUES (19, 3, N'RENAULT', N'O TO 4 CHO', N'2XXP35599JJA331A22Z', N'5117389009LL', N'60 X 60 X 60', N'1032KG', N'4', N'655', N'60 X 60 X 60', N'60 KG', N'5500 KG', N'7000 KG', N'NOP PHAT TRUOC KHI DANG KIEM')
SET IDENTITY_INSERT [dbo].[PhuongTiens] OFF
GO
ALTER TABLE [dbo].[PhuongTiens]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PhuongTiens_dbo.ChuPhuongTiens_ChuPhuongTien_id] FOREIGN KEY([ChuPhuongTien_id])
REFERENCES [dbo].[ChuPhuongTiens] ([id])
GO
ALTER TABLE [dbo].[PhuongTiens] CHECK CONSTRAINT [FK_dbo.PhuongTiens_dbo.ChuPhuongTiens_ChuPhuongTien_id]
GO
