USE [master]
GO
/****** Object:  Database [MemberDB]    Script Date: 07/12/21 9:27:36 AM ******/
CREATE DATABASE [MemberDB] 
GO
USE [MemberDB]
GO
/****** Object:  Table [dbo].[Quyen]    Script Date: 07/12/21 9:27:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quyen](
	[MaQuyen] [int] IDENTITY(1,1) NOT NULL,
	[TenQuyen] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 07/12/21 9:27:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[MaTK] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[MatKhau] [nvarchar](50) NOT NULL,
	[HoTen] [nvarchar](50) NOT NULL,
	[DiaChi] [ntext] NULL,
	[DienThoai] [nchar](10) NULL,
	[Anh] [nvarchar](50) NULL,
	[TinhTrang] [bit] NOT NULL,
	[MaQuyen] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Quyen] ON 

INSERT [dbo].[Quyen] ([MaQuyen], [TenQuyen]) VALUES (1, N'Admin')
INSERT [dbo].[Quyen] ([MaQuyen], [TenQuyen]) VALUES (2, N'NhanVien')
INSERT [dbo].[Quyen] ([MaQuyen], [TenQuyen]) VALUES (3, N'KhachHang')
SET IDENTITY_INSERT [dbo].[Quyen] OFF
GO
SET IDENTITY_INSERT [dbo].[TaiKhoan] ON 

INSERT [dbo].[TaiKhoan] ([MaTK], [Email], [MatKhau], [HoTen], [DiaChi], [DienThoai], [Anh], [TinhTrang], [MaQuyen]) VALUES (2, N'namdoan@gmail.com', N'123456', N'Đoàn Duy Nam', N'Vĩnh Bảo - Hải Phòng', N'0397482016', N'sv1.jpg', 1, 1)
INSERT [dbo].[TaiKhoan] ([MaTK], [Email], [MatKhau], [HoTen], [DiaChi], [DienThoai], [Anh], [TinhTrang], [MaQuyen]) VALUES (3, N'hadv@gmail.com', N'123456', N'Vinh Hà Đỗ', N'Hà Nội', N'0123456789', N'sv2.jpg', 1, 3)
INSERT [dbo].[TaiKhoan] ([MaTK], [Email], [MatKhau], [HoTen], [DiaChi], [DienThoai], [Anh], [TinhTrang], [MaQuyen]) VALUES (4, N'linhloc27092000@gmail.com', N'123456', N'Nguyễn Anh Linh', N'Ứng Hòa - Hà Nội', N'0815619200', N'sv4.jpg', 1, 3)
INSERT [dbo].[TaiKhoan] ([MaTK], [Email], [MatKhau], [HoTen], [DiaChi], [DienThoai], [Anh], [TinhTrang], [MaQuyen]) VALUES (5, N'duykhanh@gmail.com', N'123456', N'Hoàng Duy Khánh', N'Hải Phòng', N'075645676 ', N'sv5.jpg', 1, 3)
INSERT [dbo].[TaiKhoan] ([MaTK], [Email], [MatKhau], [HoTen], [DiaChi], [DienThoai], [Anh], [TinhTrang], [MaQuyen]) VALUES (6, N'doanvu@gmail.com', N'123456', N'Vũ Văn Doan', N'Nam Định', N'086743456 ', N'sv6.jpg', 1, 3)
INSERT [dbo].[TaiKhoan] ([MaTK], [Email], [MatKhau], [HoTen], [DiaChi], [DienThoai], [Anh], [TinhTrang], [MaQuyen]) VALUES (7, N'ducdiep@gmail.com', N'123456', N'Nguyễn Đức Điệp', N'Hà Nội', N'098765432 ', N'sv7.jpg', 1, 3)
INSERT [dbo].[TaiKhoan] ([MaTK], [Email], [MatKhau], [HoTen], [DiaChi], [DienThoai], [Anh], [TinhTrang], [MaQuyen]) VALUES (10, N'lehongphong@gmail.com', N'123456', N'Lê Hồng Phong', N'Đại Học Công Nghiệp Hà Nội', N'0815619222', N'sv3.jpg', 1, 2)
INSERT [dbo].[TaiKhoan] ([MaTK], [Email], [MatKhau], [HoTen], [DiaChi], [DienThoai], [Anh], [TinhTrang], [MaQuyen]) VALUES (11, N'xuanlinh@gmail.com', N'123456', N'Nguyễn Xuân Linh', N'Ứng Hòa - Hà Nội', N'0815619255', N'sv8.jpg', 1, 3)
SET IDENTITY_INSERT [dbo].[TaiKhoan] OFF
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD FOREIGN KEY([MaQuyen])
REFERENCES [dbo].[Quyen] ([MaQuyen])
GO
USE [master]
GO
ALTER DATABASE [MemberDB] SET  READ_WRITE 
GO
