USE [master]
GO
/****** Object:  Database [fShopDB]    Script Date: 14/07/2021 3:06:30 pm ******/
CREATE DATABASE [fShopDB] 
GO
USE [fShopDB]
GO
/****** Object:  Table [dbo].[Hang]    Script Date: 14/07/2021 3:06:30 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Hang](
	[MaHang] [char](10) NOT NULL,
	[MaNCC] [char](10) NOT NULL,
	[TenHang] [nvarchar](255) NOT NULL,
	[Gia] [decimal](8, 2) NULL,
	[LuongCo] [decimal](8, 2) NOT NULL,
	[MoTa] [nvarchar](1000) NULL,
	[ChietKhau] [decimal](8, 2) NULL,
	[HinhAnh] [nvarchar](100) NULL,
 CONSTRAINT [PKh_Hang] PRIMARY KEY CLUSTERED 
(
	[MaHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[nguoidung]    Script Date: 14/07/2021 3:06:30 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nguoidung](
	[manguoidung] [int] IDENTITY(1,1) NOT NULL,
	[hoten] [nvarchar](30) NOT NULL,
	[matkhau] [nvarchar](50) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[manguoidung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Nha_CC]    Script Date: 14/07/2021 3:06:30 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Nha_CC](
	[MaNCC] [char](10) NOT NULL,
	[TenNCC] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](50) NULL,
	[DienThoai] [char](15) NULL,
	[Email] [nvarchar](50) NULL,
 CONSTRAINT [PK_Nha_CC] PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Hang] ([MaHang], [MaNCC], [TenHang], [Gia], [LuongCo], [MoTa], [ChietKhau], [HinhAnh]) VALUES (N'BNBG00    ', N'DLL01     ', N'Họ tên bạn', CAST(100.00 AS Decimal(8, 2)), CAST(1.00 AS Decimal(8, 2)), N'Họ tên và mã sinh viên của bạn', NULL, N'anhcuaban.jpg')
INSERT [dbo].[Hang] ([MaHang], [MaNCC], [TenHang], [Gia], [LuongCo], [MoTa], [ChietKhau], [HinhAnh]) VALUES (N'BNBG01    ', N'DLL01     ', N'Dâu Tây Đà Lạt', CAST(100000.00 AS Decimal(8, 2)), CAST(54.49 AS Decimal(8, 2)), N'Dâu tây Đà Lạt nổi tiếng thơm mát,tươi sạch là đặc sản của vùng cao nguyên này.', CAST(20.00 AS Decimal(8, 2)), N'dau_tay_nhat.jpg')
INSERT [dbo].[Hang] ([MaHang], [MaNCC], [TenHang], [Gia], [LuongCo], [MoTa], [ChietKhau], [HinhAnh]) VALUES (N'BNBG02    ', N'DLL01     ', N'Mãng Cầu Xiêm', CAST(200000.00 AS Decimal(8, 2)), CAST(14.49 AS Decimal(8, 2)), N'Mãng cầu xiêm không chỉ thơm ngon về khẩu vị mà còn chứa nhiều dưỡng chất có lợi cho cơ thể.', NULL, N'mang_cau_xiem.jpg')
INSERT [dbo].[Hang] ([MaHang], [MaNCC], [TenHang], [Gia], [LuongCo], [MoTa], [ChietKhau], [HinhAnh]) VALUES (N'BNBG03    ', N'DLL01     ', N'Xoài Cát Hòa Lộc', CAST(110000.00 AS Decimal(8, 2)), CAST(31.49 AS Decimal(8, 2)), N'Hương vị ngọt ngào, hậu vị sâu lắng, hương thơm nồng nàn tuyệt hảo là những mỹ từ không hề quá về những trái xoài cát Hòa Lộc thuần chủng', NULL, N'img_4905.jpg')
INSERT [dbo].[Hang] ([MaHang], [MaNCC], [TenHang], [Gia], [LuongCo], [MoTa], [ChietKhau], [HinhAnh]) VALUES (N'BNBG07    ', N'BRE02     ', N'Cam Xoàn Lai Vung', CAST(89000.00 AS Decimal(8, 2)), CAST(10.00 AS Decimal(8, 2)), N'Cam xoàn ăn rất ngon, cắt múi ăn thơm, ruột vàng, ngọt mát, vắt nước thì cực kỳ chất lượng. Thích hợp cho trẻ ăn vì rất dễ ăn.', CAST(5.00 AS Decimal(8, 2)), N'cam_xoan.JPG')
INSERT [dbo].[Hang] ([MaHang], [MaNCC], [TenHang], [Gia], [LuongCo], [MoTa], [ChietKhau], [HinhAnh]) VALUES (N'BNBG08    ', N'BRE02     ', N'Quả Thanh Mai', CAST(15000.00 AS Decimal(8, 2)), CAST(30.18 AS Decimal(8, 2)), N'Quả thanh mai có tên khác là quả dương mai, hay quả dâu rừng,có nhiều tác dụng trong giải nhiệt ,sức khỏe', NULL, N'qua_thanh_mai1.jpg')
INSERT [dbo].[Hang] ([MaHang], [MaNCC], [TenHang], [Gia], [LuongCo], [MoTa], [ChietKhau], [HinhAnh]) VALUES (N'BR01      ', N'BRS01     ', N'Ổi Lê ', CAST(39000.00 AS Decimal(8, 2)), CAST(10.99 AS Decimal(8, 2)), N'Ổi lê là giống ổi ngon, giống ổi này có vị ngọt mát mát, giòn, mùi thơm nhẹ, rất kích thích người ăn.', NULL, N'oi_le_nong_nghiep1.JPG')
INSERT [dbo].[Hang] ([MaHang], [MaNCC], [TenHang], [Gia], [LuongCo], [MoTa], [ChietKhau], [HinhAnh]) VALUES (N'BR02      ', N'BRS01     ', N'Chuối Ngự Đại Hoàng', CAST(45000.00 AS Decimal(8, 2)), CAST(12.00 AS Decimal(8, 2)), N'Chuối ngự Đại Hoàng là đặc sản tiến vua nổi tiếng của vùng chiêm Trũng Hà Nam', CAST(10.00 AS Decimal(8, 2)), N'chuoi_ngu.jpg')
INSERT [dbo].[Hang] ([MaHang], [MaNCC], [TenHang], [Gia], [LuongCo], [MoTa], [ChietKhau], [HinhAnh]) VALUES (N'BR03      ', N'BRS01     ', N'Nho Xanh Ninh Thuận', CAST(95000.00 AS Decimal(8, 2)), CAST(30.99 AS Decimal(8, 2)), N'Nho xanh Ninh Thuận có dạng hình Oval, vỏ quả có màu xanh vàng nhạt, thịt quả trong, hơi mềm, có vị ngọt đậm đà, chua rất nhẹ, ít chát.', NULL, N'nho_xanh_ninh_thuan.jpg')
INSERT [dbo].[Hang] ([MaHang], [MaNCC], [TenHang], [Gia], [LuongCo], [MoTa], [ChietKhau], [HinhAnh]) VALUES (N'BR05      ', N'BRE02     ', N'Chuối cao', CAST(30000.00 AS Decimal(8, 2)), CAST(34.00 AS Decimal(8, 2)), N'Chuối cao ăn rất ngọt, đặc ruột, cảm giác ăn đầy mồm, chín vàng ruột vẫn chắc, ko bị nát, vị ngọt vượt trội hơn chuối Ngự ngoài Bắc', NULL, N'chuoi-cao.jpg')
INSERT [dbo].[Hang] ([MaHang], [MaNCC], [TenHang], [Gia], [LuongCo], [MoTa], [ChietKhau], [HinhAnh]) VALUES (N'BR09      ', N'BRE02     ', N'Cam Canh Đà Lạt', CAST(95000.00 AS Decimal(8, 2)), CAST(20.00 AS Decimal(8, 2)), N'Cam canh chuẩn làng Canh.', NULL, N'cam_canh_xin.JPG')
INSERT [dbo].[Hang] ([MaHang], [MaNCC], [TenHang], [Gia], [LuongCo], [MoTa], [ChietKhau], [HinhAnh]) VALUES (N'BR11      ', N'BRE02     ', N'Bưởi Diễn Loại 1', CAST(79000.00 AS Decimal(8, 2)), CAST(50.00 AS Decimal(8, 2)), N'Bưởi Diễn chính gốc, trồng trên đất diễn, là loại bưởi cỗi được 24 năm, ngọt lịm', NULL, N'buoi_dien.jpg')
INSERT [dbo].[Hang] ([MaHang], [MaNCC], [TenHang], [Gia], [LuongCo], [MoTa], [ChietKhau], [HinhAnh]) VALUES (N'BR14      ', N'BRE02     ', N'Dưa Hấu Vàng Sài Gòn', CAST(25000.00 AS Decimal(8, 2)), CAST(45.98 AS Decimal(8, 2)), N'Dưa hấu vàng (còn gọi là dưa vàng, dưa lưới) là loại thực phẩm rất giàu vitamin A, E và C, cùng các khoáng chất như beta carotene, kali và mangan. Với chỉ số đường huyết thấp, dưa hấu vàng có lợi cho', NULL, N'dua_hau_ruot_vang.jpg')
INSERT [dbo].[Hang] ([MaHang], [MaNCC], [TenHang], [Gia], [LuongCo], [MoTa], [ChietKhau], [HinhAnh]) VALUES (N'RGAN01    ', N'DLL01     ', N'Bưởi năm roi', CAST(58000.00 AS Decimal(8, 2)), CAST(25.99 AS Decimal(8, 2)), N'Cây trên 10 năm', NULL, N'buoi-nam-roi.jpg')
INSERT [dbo].[Hang] ([MaHang], [MaNCC], [TenHang], [Gia], [LuongCo], [MoTa], [ChietKhau], [HinhAnh]) VALUES (N'RYL01     ', N'FNG01     ', N'Bơ Sáp Đắc Lắc', CAST(75000.00 AS Decimal(8, 2)), CAST(39.49 AS Decimal(8, 2)), N'Bơ sáp đắc lắc già đinh, dày sáp ngọt thơm tuyệt hảo', CAST(3.00 AS Decimal(8, 2)), N'bo_sap.jpg')
INSERT [dbo].[Hang] ([MaHang], [MaNCC], [TenHang], [Gia], [LuongCo], [MoTa], [ChietKhau], [HinhAnh]) VALUES (N'RYL02     ', N'FNG01     ', N'Bưởi da xanh', CAST(98000.00 AS Decimal(8, 2)), CAST(59.49 AS Decimal(8, 2)), N'Bưởi da xanh xuất khẩu quả nặng từ 1,5-2kg căng mọng nhiều nước,quá đẹp', NULL, N'buoi_da_xanh_2.jpg')
INSERT [dbo].[Hang] ([MaHang], [MaNCC], [TenHang], [Gia], [LuongCo], [MoTa], [ChietKhau], [HinhAnh]) VALUES (N'RYL05     ', N'BRE02     ', N'Bưởi Tân Triều', CAST(45000.00 AS Decimal(8, 2)), CAST(30.00 AS Decimal(8, 2)), N'Bưởi Tân Triều là đặc sản sông nước Nam Bộ', NULL, N'bduong_la_cam.jpg')
SET IDENTITY_INSERT [dbo].[nguoidung] ON 

INSERT [dbo].[nguoidung] ([manguoidung], [hoten], [matkhau], [email]) VALUES (1, N'Nguyễn Văn Nam', N'123123', N'nam@gmail.com')
INSERT [dbo].[nguoidung] ([manguoidung], [hoten], [matkhau], [email]) VALUES (2, N'Bùi Thị Lan', N'123456', N'lan@yahoo.com')
INSERT [dbo].[nguoidung] ([manguoidung], [hoten], [matkhau], [email]) VALUES (3, N'Nguyễn Thị Hoa', N'123', N'abc@gmail.com')
SET IDENTITY_INSERT [dbo].[nguoidung] OFF
INSERT [dbo].[Nha_CC] ([MaNCC], [TenNCC], [DiaChi], [DienThoai], [Email]) VALUES (N'BRE02     ', N'Nguyễn Văn Bé', N'Vĩnh Tuy', N'098733433      ', N'benv@yahoo.com')
INSERT [dbo].[Nha_CC] ([MaNCC], [TenNCC], [DiaChi], [DienThoai], [Email]) VALUES (N'BRE08     ', N'Vũ Văn Bình', N'Hà Đông', N'09856789       ', N'binhvan@yahoo.com')
INSERT [dbo].[Nha_CC] ([MaNCC], [TenNCC], [DiaChi], [DienThoai], [Email]) VALUES (N'BRS01     ', N'Công ty Hoàng Phát', N'Số 10 Đường Thành', N'048191911      ', N'hoangphat@gmail.com')
INSERT [dbo].[Nha_CC] ([MaNCC], [TenNCC], [DiaChi], [DienThoai], [Email]) VALUES (N'DLL01     ', N'Hoàng Thị Ba', N'La Khê - Hà Đông', N'0477778888     ', N'')
INSERT [dbo].[Nha_CC] ([MaNCC], [TenNCC], [DiaChi], [DienThoai], [Email]) VALUES (N'FNG01     ', N'Nông trường Sông Hậu', N'Cần Thơ', N'084380999      ', N'songhau_nt@gmail.com')
INSERT [dbo].[Nha_CC] ([MaNCC], [TenNCC], [DiaChi], [DienThoai], [Email]) VALUES (N'FRB01     ', N'Công ty Mai Hồng', N'TP Hồ Chí Minh', N'666666666      ', N'maihongct@hotmail.com')
ALTER TABLE [dbo].[Hang]  WITH CHECK ADD  CONSTRAINT [FKh_Hang_Nha_CC] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[Nha_CC] ([MaNCC])
GO
ALTER TABLE [dbo].[Hang] CHECK CONSTRAINT [FKh_Hang_Nha_CC]
GO
USE [master]
GO
ALTER DATABASE [fShopDB] SET  READ_WRITE 
GO
