USE [QLGT]
GO
SET IDENTITY_INSERT [dbo].[YeuCauXins] ON 

INSERT [dbo].[YeuCauXins] ([id], [TenChuSoHuu], [CMND_HoChieu], [NgayCap_CMND_HoChieu], [DiaChiThuongTru], [SDT], [LoaiTaiSan], [SoLoai], [LoaiXe], [NhanHieu], [MauSon], [NamSanXuat], [XiLanh], [SoKhung], [SoMay], [DaXetDuyet]) VALUES (1, N'asdad', N'asdasd', CAST(N'2021-01-04T06:34:00.000' AS DateTime), N'asd', N'asd', N'asdasd', N'asdasd', N'asdasd', N'asdads', N'asdasd', N'asasd', N'asdads', N'asdasd', N'asdasd', 0)
INSERT [dbo].[YeuCauXins] ([id], [TenChuSoHuu], [CMND_HoChieu], [NgayCap_CMND_HoChieu], [DiaChiThuongTru], [SDT], [LoaiTaiSan], [SoLoai], [LoaiXe], [NhanHieu], [MauSon], [NamSanXuat], [XiLanh], [SoKhung], [SoMay], [DaXetDuyet]) VALUES (2, N'nasndlkn', N'asoinin', CAST(N'2021-01-26T06:34:00.000' AS DateTime), N'askd ', N'kn as;da;lsd ', N'a;lnfqpnf', N'a;fna;lsfn', N'as;ldma;ldm', N'as;ma;slfm', N'asdlma;dlm', N'a;slfma;lv', N'adlmas;ml', N'aslma', N'dvnwfb', 0)
INSERT [dbo].[YeuCauXins] ([id], [TenChuSoHuu], [CMND_HoChieu], [NgayCap_CMND_HoChieu], [DiaChiThuongTru], [SDT], [LoaiTaiSan], [SoLoai], [LoaiXe], [NhanHieu], [MauSon], [NamSanXuat], [XiLanh], [SoKhung], [SoMay], [DaXetDuyet]) VALUES (3, N'aslkdalsd ', N'asdlaksdn', CAST(N'2021-01-10T06:35:00.000' AS DateTime), N'als dlaks d', N'asdaksdjlk', N'askdnlaksdn', N'alskdnalsdkn', N'alsdnalksdn', N'alsdknalskdn', N'lkansldn', N'lnalsdnl', N'nalsdnl', N'knlaskdnl', N'knalsdkn', 0)
INSERT [dbo].[YeuCauXins] ([id], [TenChuSoHuu], [CMND_HoChieu], [NgayCap_CMND_HoChieu], [DiaChiThuongTru], [SDT], [LoaiTaiSan], [SoLoai], [LoaiXe], [NhanHieu], [MauSon], [NamSanXuat], [XiLanh], [SoKhung], [SoMay], [DaXetDuyet]) VALUES (4, N'asdnaskdn', N'lnasldnasld', CAST(N'2021-01-12T06:35:00.000' AS DateTime), N'aslkd', N'asdkl', N'asldnl', N'knlasndlk', N'nlkasndlk', N'nlaksndlk', N'nlasndlk', N'nlkansdlk', N'nlkasndlk', N'nlaskndl', N'knlasknd', 0)
SET IDENTITY_INSERT [dbo].[YeuCauXins] OFF
GO
SET IDENTITY_INSERT [dbo].[HoSoes] ON 

INSERT [dbo].[HoSoes] ([id], [MaHoSo], [LoaiHoSo], [MoTaChiTiet], [NoiCap], [DiaChiLuu], [ChuPhuongTien_id], [YeuCauXin_id]) VALUES (1, N'asad', N'asdasd', N'asdasd', N'asdad', NULL, NULL, 1)
INSERT [dbo].[HoSoes] ([id], [MaHoSo], [LoaiHoSo], [MoTaChiTiet], [NoiCap], [DiaChiLuu], [ChuPhuongTien_id], [YeuCauXin_id]) VALUES (2, N'asdasd', N'asdasd', N'asasd', N'asdads', NULL, NULL, 2)
INSERT [dbo].[HoSoes] ([id], [MaHoSo], [LoaiHoSo], [MoTaChiTiet], [NoiCap], [DiaChiLuu], [ChuPhuongTien_id], [YeuCauXin_id]) VALUES (3, N'asdasd', N'asasd', N'asdasd', N'asdads', NULL, NULL, 2)
INSERT [dbo].[HoSoes] ([id], [MaHoSo], [LoaiHoSo], [MoTaChiTiet], [NoiCap], [DiaChiLuu], [ChuPhuongTien_id], [YeuCauXin_id]) VALUES (4, N'asldk', N'asdknln', N'alskdnl', N'aslkdn', NULL, NULL, 3)
INSERT [dbo].[HoSoes] ([id], [MaHoSo], [LoaiHoSo], [MoTaChiTiet], [NoiCap], [DiaChiLuu], [ChuPhuongTien_id], [YeuCauXin_id]) VALUES (5, N'asdn', N'lkansdlk', N'nlasknd', N'nlkasndl', NULL, NULL, 4)
SET IDENTITY_INSERT [dbo].[HoSoes] OFF
GO
