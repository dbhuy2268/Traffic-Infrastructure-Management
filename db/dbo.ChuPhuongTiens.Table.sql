USE [QLGT]
GO
/****** Object:  Table [dbo].[ChuPhuongTiens]    Script Date: 1/16/2021 1:32:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuPhuongTiens](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[hoTen] [nvarchar](max) NULL,
	[thongBao] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.ChuPhuongTiens] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ChuPhuongTiens] ON 

INSERT [dbo].[ChuPhuongTiens] ([id], [hoTen], [thongBao]) VALUES (1, N'HUY', N'Nop tien phạt 50000000 tại cơ quan gần nhất')
INSERT [dbo].[ChuPhuongTiens] ([id], [hoTen], [thongBao]) VALUES (2, N'LINH', N'Len phuong')
INSERT [dbo].[ChuPhuongTiens] ([id], [hoTen], [thongBao]) VALUES (3, N'TAN', NULL)
INSERT [dbo].[ChuPhuongTiens] ([id], [hoTen], [thongBao]) VALUES (4, N'NAM', NULL)
INSERT [dbo].[ChuPhuongTiens] ([id], [hoTen], [thongBao]) VALUES (5, N'LONG', NULL)
INSERT [dbo].[ChuPhuongTiens] ([id], [hoTen], [thongBao]) VALUES (6, N'NGAN', NULL)
INSERT [dbo].[ChuPhuongTiens] ([id], [hoTen], [thongBao]) VALUES (7, N'MINH', NULL)
INSERT [dbo].[ChuPhuongTiens] ([id], [hoTen], [thongBao]) VALUES (8, N'LAM', NULL)
INSERT [dbo].[ChuPhuongTiens] ([id], [hoTen], [thongBao]) VALUES (9, N'TIN', NULL)
INSERT [dbo].[ChuPhuongTiens] ([id], [hoTen], [thongBao]) VALUES (10, N'QUANG', NULL)
INSERT [dbo].[ChuPhuongTiens] ([id], [hoTen], [thongBao]) VALUES (11, N'ANH', NULL)
INSERT [dbo].[ChuPhuongTiens] ([id], [hoTen], [thongBao]) VALUES (12, N'TUYEN', NULL)
SET IDENTITY_INSERT [dbo].[ChuPhuongTiens] OFF
GO
