USE [QLGT]
GO
/****** Object:  Table [dbo].[ThongTinDangKiems]    Script Date: 1/16/2021 1:32:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongTinDangKiems](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[phuongTien_id] [int] NULL,
	[trangThaiDangKiem] [nvarchar](max) NULL,
	[ngayDangKiem] [datetime] NOT NULL,
	[GCN] [nvarchar](max) NULL,
	[ngayHetHanGCN] [datetime] NOT NULL,
	[donViKiemDinh] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.ThongTinDangKiems] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ThongTinDangKiems] ON 

INSERT [dbo].[ThongTinDangKiems] ([id], [phuongTien_id], [trangThaiDangKiem], [ngayDangKiem], [GCN], [ngayHetHanGCN], [donViKiemDinh]) VALUES (1, 1, N'HET HAN', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'2511743GG42', CAST(N'1907-01-01T00:00:00.000' AS DateTime), N'21S60')
INSERT [dbo].[ThongTinDangKiems] ([id], [phuongTien_id], [trangThaiDangKiem], [ngayDangKiem], [GCN], [ngayHetHanGCN], [donViKiemDinh]) VALUES (2, 2, N'HOP LE', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'542211GG123', CAST(N'2100-01-01T00:00:00.000' AS DateTime), N'20S60')
INSERT [dbo].[ThongTinDangKiems] ([id], [phuongTien_id], [trangThaiDangKiem], [ngayDangKiem], [GCN], [ngayHetHanGCN], [donViKiemDinh]) VALUES (3, 1, N'HOP LE', CAST(N'1907-01-01T00:00:00.000' AS DateTime), N'2994211211F1', CAST(N'2100-01-01T00:00:00.000' AS DateTime), N'21S60')
SET IDENTITY_INSERT [dbo].[ThongTinDangKiems] OFF
GO
ALTER TABLE [dbo].[ThongTinDangKiems] ADD  DEFAULT ('1900-01-01T00:00:00.000') FOR [ngayDangKiem]
GO
ALTER TABLE [dbo].[ThongTinDangKiems] ADD  DEFAULT ('1900-01-01T00:00:00.000') FOR [ngayHetHanGCN]
GO
ALTER TABLE [dbo].[ThongTinDangKiems]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ThongTinDangKiems_dbo.PhuongTiens_pt_id] FOREIGN KEY([phuongTien_id])
REFERENCES [dbo].[PhuongTiens] ([id])
GO
ALTER TABLE [dbo].[ThongTinDangKiems] CHECK CONSTRAINT [FK_dbo.ThongTinDangKiems_dbo.PhuongTiens_pt_id]
GO
