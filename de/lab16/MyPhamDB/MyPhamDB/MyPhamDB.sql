USE [master]
GO
/****** Object:  Database [MyPham]    Script Date: 08/12/21 1:02:05 PM ******/
CREATE DATABASE [MyPham]
GO
USE [MyPham]
GO
/****** Object:  Table [dbo].[DanhMucSP]    Script Date: 08/12/21 1:02:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMucSP](
	[MaDM] [int] IDENTITY(1,1) NOT NULL,
	[TenDM] [nvarchar](80) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhanQuyen]    Script Date: 08/12/21 1:02:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanQuyen](
	[MaQuyen] [int] IDENTITY(1,1) NOT NULL,
	[TenQuyen] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 08/12/21 1:02:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](80) NOT NULL,
	[Gia] [money] NOT NULL,
	[ThuongHieu] [nvarchar](80) NULL,
	[SoLuongTon] [int] NOT NULL,
	[XuatXu] [nvarchar](80) NULL,
	[DungTich] [int] NULL,
	[HangSX] [nvarchar](80) NULL,
	[TrongLuong] [int] NULL,
	[ChatLieu] [nvarchar](60) NULL,
	[CongDung] [ntext] NULL,
	[ThanhPhan] [ntext] NULL,
	[HuongDanSD] [ntext] NULL,
	[QuyCachDongGoi] [ntext] NULL,
	[GiamGia] [float] NULL,
	[MaDM] [int] NOT NULL,
	[AnhSP] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 08/12/21 1:02:05 PM ******/
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
	[SoDienThoai] [nchar](10) NULL,
	[Anh] [nvarchar](50) NULL,
	[TinhTrang] [bit] NOT NULL,
	[MaQuyen] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DanhMucSP] ON 

INSERT [dbo].[DanhMucSP] ([MaDM], [TenDM]) VALUES (1, N'Mỹ phẩm dưỡng da')
INSERT [dbo].[DanhMucSP] ([MaDM], [TenDM]) VALUES (2, N'Mỹ phẩm trang điểm')
INSERT [dbo].[DanhMucSP] ([MaDM], [TenDM]) VALUES (3, N'Mỹ phẩm làm sạch')
INSERT [dbo].[DanhMucSP] ([MaDM], [TenDM]) VALUES (4, N'Mỹ phẩm son môi')
INSERT [dbo].[DanhMucSP] ([MaDM], [TenDM]) VALUES (5, N'Mỹ phẩm tóc')
SET IDENTITY_INSERT [dbo].[DanhMucSP] OFF
GO
SET IDENTITY_INSERT [dbo].[PhanQuyen] ON 

INSERT [dbo].[PhanQuyen] ([MaQuyen], [TenQuyen]) VALUES (1, N'Admin')
INSERT [dbo].[PhanQuyen] ([MaQuyen], [TenQuyen]) VALUES (2, N'NhanVien')
INSERT [dbo].[PhanQuyen] ([MaQuyen], [TenQuyen]) VALUES (3, N'KhachHang')
SET IDENTITY_INSERT [dbo].[PhanQuyen] OFF
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (8, N'Bán lẻ Ống serum tế bào gốc Eldas Giúp tái tạo da, Chống lão hóa', 100000.0000, NULL, 50, N'Hàn Quốc', 2, N'Coreana', NULL, NULL, N'Serum Chống Lão Hóa Eldas Eg Tox Program khắc phục được vấn đề lão hóa da, se khít mọi lỗ chân lông, ngăn ngừa tình trạng nám da, làm mờ các vết tàn nhang, tăng cường khả năng đàn hồi, thấm nhanh vào bên trong các nang chân lông, dưỡng cho vùng da sáng đều và căng mịn.', N' Thành phần EGF kết hợp với Collagen tạo nên Elastin giúp nhanh chóng giải quyết vấn đề xấu trên da.', N'Rửa mặt sạch
– Mở nắp và bơm tinh chất ra tay.
– Thoa tinh chất đều lên mặt và cổ hoặc những vùng da cần chăm sóc khác.
– Vỗ nhẹ để tinh chất thẩm thấu vào da nhanh chóng nhất.
– ELDAS lấy 1 lượng vừa đủ thoa đều lên mặt rồi vỗ vỗ nhẹ 1-2 phút cho tinh chất thấm hiệu quả cao vào da.
Nếu dùng máy Yaman , … Thì chị em mở chế độ RF MOISTURE giúp đẩy mạnh lượng tế bào gốc vào tận sâu trong da như vậy sẽ đạt được kết quả gần như hiệu quả cao nhé', NULL, 0.3, 1, N'su-dung-serum-eldas-eg-tox-program-han-quoc1111.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (9, N'Bảng Màu Mắt SIVANNA COLORS Luxury Velvet Eyesh', 170000.0000, N'Sivanna', 70, N'Thái Lan', NULL, NULL, 12, NULL, N'Bảng màu mắt Luxury Velvet Eyeshadow của hãng mỹ phẩm nổi tiếng Thái Lan SIVANNA COLORS có thiết kế nhỏ gọn với 10 màu sắc hot trend đi kèm là khả năng bám lâu và chống trôi nước cho bạn thoải mái vi vu lượn phố. Tha hồ selfie mà ko lo mồ hôi làm trôi đi lớp phấn mắt.– Màu mắt trẻ trung cùng ánh nhũ giúp đôi mắt của bạn được trang điểm nổi bật hơn bao giờ hết. Bảng phấn mắt 10 ô Sivanna Colors Luxury Velvet Eyeshadow có công thức nền kết hợp với silicon giúp màu mắt giữ được lâu hơn, không hề bị trôi bởi nước hay mồ hôi.-️ Màu lên rất chuẩn, bám màu cực tốt và lâu phai. Chỉ cần một lượng nhỏ, và apply một lần là đã lên đúng màu, sử dụng cực kì tiết kiệm.', NULL, N'Dùng cọ tán phấn nhẹ nhàng và đều khắp bầu mắt. Lựa chọn và phối màu dựa trên xu hướng, phong cách và mục đích riêng của bạn.', NULL, 0.24, 2, N'Bang-Mau-Mat-SIVANNA-COLORS-Luxury-Velvet-Eyesh-3-510x510.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (10, N'Bộ sữa tắm happy bath hàn quốc – happy bath natural real mild', 280000.0000, NULL, 80, N'Hàn Quốc', 500, N'Happy Bath', NULL, NULL, N'Sữa tắm Happy Bath Natural là sữa tắm được ưu chuộng số 1 tại Hàn Quốc.
– Sữa tắm mang mùi thơm nhẹ nhàng của hoa thục quỳ, hoa hồng, oải hương, gạo… Trong thành phần của sữa tắm có chứa nhiều chất khoáng, nước khoáng. Sữa tắm Happy Bath có chứa chiết xuất từ cá loại hoa tươi và tảo biển.Với các thành phần tinh chất được chiết xuất từ thiên nhiên sữa tắm Happy Bath luôn mang lại cảm giác thoải mái, sảng khoái, lưu lại mùi hương quyến rũ sau khi tắm.
– Đây là dòng sữa tắm được ưu chuộng số 1 tại Hàn Quốc, thuộc loại sản phẩm Home Spa – Spa tại nhà:
– Làm cho da đủ độ ẩm, sống động.', NULL, N'Nếu sử dụng vòi sen: Cho một lượng sữa tắm nhỏ vào bông tắm. Nhẹ nhàng bóp nhẹ để tạo bọt (bọt rất nhỏ, mịn và nhiều). Sau đó nhẹ nhàng xoa đều, mát-xa da rồi tráng lại người bằng nước sạch.
– Nếu sử dụng bồn tắm: Cho nước nóng 37-38 độ vào bồn, nhỏ sữa tắm vào bồn (7-10 lần bấm) và dùng vòi sen phun cho bọt lên nhiều. Sau đó tắm trong khoảng 10-15 phút. (Sau 10-15 phút, nước bẩn không còn bọt nữa).', NULL, 0.18, 3, N'B-sa-tm-happy-bath-han-quc-6-1.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (12, N'Bộ 3 dưỡng da IncellDerm Hàn Quốc – dưỡng trắng căng bóng da', 2000000.0000, N' Incellderma', 40, N'Hàn Quốc', 245, NULL, NULL, NULL, N'Bộ 3 sản phẩm dưỡng da toàn diện hứa hẹn mang lại hiệu quả dưỡng trắng từ sâu bên trong, căng bóng chống lão hóa và làm căng da', N'Thành phần chính là hàng loạt các loại thảo mộc, vitamin và các chất dinh dưỡng giúp da căng mịn, đủ ẩm', NULL, NULL, 0.23, 1, N'cover-bo-3-duong-da-incellderm-e1571940654684.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (13, N'Bộ Dầu Gội Xả Bưởi Grapefruit 850ml – Đặc Trị Rụng Tóc Kích Thích Mọc Tóc', 450000.0000, N'Grapefruit', 48, N'Anh', 850, NULL, NULL, NULL, N'Ngăn ngừa tóc gẫy dụng
– Kích thích mọc tóc
– Cung cấp dưỡng chất phục hồi từ sâu bên trong sợi tóc
– Cung cấp độ ẩm giúp sợi tóc chắc khỏe , sáng bóng mềm mượt
– Công dụng của dầu gội bưởi với khả năng điều trị rụng tóc, phục hồi tóc hư tổn, giúp duy trì được độ chắc khỏe, độ dài của mái tóc, giúp tóc bóng mượt chỉ sau 14 ngày sử dụng.', N' Sản phẩm gồm 2 thành phần chính: tinh dầu vỏ bưởi và tinh dầu hoa bưởi.
– Tinh dầu từ vỏ bưởi: Trong vỏ bưởi hàm lượng vitamin C rất cao đồng thời khả năng chống lại 0xy hoá mạnh.
– Tinh dầu vỏ bưởi hỗ trợ việc tóc kháng lại bụi bẩn, ánh nắng, các mỹ phẩm làm đẹp, hoá chất làm tóc và tác động môi trường khác.
-Từ đó giúp tóc được bảo vệ và chống rụng tóc hiểu quả.
-Tinh dầu từ hoa bưởi: Tăng kích kích thích mọc tóc, bổ sung dưỡng chất cần thiết ngăn ngừa nấm và gàu hiệu quả.', NULL, NULL, 0.29, 1, N'bo-dau-goi-xa-buoi-grapefruit-850ml-dac-tri-rung-toc-kich-thich-moc-toc-4-510x510.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (14, N'Bộ dưỡng da 3in1 collagen 3w clinic Hàn Quốc', 600000.0000, NULL, 60, N'Hàn Quốc', 360, N'3W Cilic', NULL, NULL, N'Nuôi dưỡng làn da tươi trẻ mỗi ngày với Nước hoa hồng 3W clinic collagen: Nước hoa hồng sẽ giúp giữ ẩm cho mắt và môi, làm thu nhỏ lỗ chân lông, cân bằng độ PH trên da và ngăn ngừa sự xuất hiện của các nếp nhăn.
– Dưỡng trắng đẹp da, bổ sung collagen và dưỡng chất giúp ngăn ngừa lão hóa và cải thiện nếp nhăn
– Chống oxy hóa mạnh, bảo vệ da khỏi bức xạ cực tím, ngăn chặn sự lão hóa do khói bụi và các tác nhân từ môi trường, trợ giúp chữa lành vết thương da, giúp da mượt mà hơn.', NULL, N'Rửa mặt thật sạch.
– Dùng bông gòn thấm 1 lượng vừa đủ Nước hoa hồng 3W clinic collagen, xoa đều lên mặt. Bạn có thể thoa lên cổ để dưỡng ẩm cho làn da ở cổ.', NULL, 0.23, 1, N'Bo-duong-da-collagen-3w-clinic-Han-Quoc-1.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (15, N'Bộ cọ trang điểm Zoeva 8 cây rose golden luxury set', 550000.0000, NULL, 100, N'Đức', NULL, N'Zoeva', NULL, NULL, N'Bộ cọ trang điểm Zoeva 8 cây rose golden luxury set Gồm 8 cây cọ cao cấp chuyên dụng đầy đủ cho các bước trang điểm cơ bản
– Sợi cọ nhỏ có độ bền cao, siêu mềm mịn, giúp tán đều các sản phẩm trang điểm trên da
– Thân cọ bọc nhôm được mài nhẵn trơn, không hoen gỉ và gây trầy xước khi sử dụng
– Thiết kế cọ sang trọng, bền và dễ sử dụng,
– Đi kèm túi đựng chuyên nghiệp, sang trọng, tiện lợi', NULL, NULL, NULL, 0.42, 2, N'Bo-co-trang-diem-Zoeva-8-cay-rose-golden-luxury-set-2-510x510.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (17, N'BB Cream Power perfection 40g – The Face Shop', 420000.0000, N'', 39, N'Hàn Quốc', 20, N'The Face Shop', NULL, NULL, N'Sản phẩm kem nền Power Perfection BB Cream mang đến cho bạn sự hoàn hảo đáng kinh ngạc .
– Đây là dòng BB Cream mới nhất của hãng Thefaceshop đang khuấy đảo thị trường Hàn Quốc, được chiết xuất từ Omega 3 và phức hợp Vita Skin giúp phục hồi da và thúc đẩy sự sản sinh Collagen, chống lão hóa, bảo vệ da chống nắng với độ che phủ hoàn hảo, mang lại một làn da sáng khỏe và tràn đầy sức sống.
', NULL, NULL, NULL, 0.3, 2, N'BB-Cream-Power-Perfection-40g-2015-The-Face-Shop-2.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (20, N'Bộ Gold Collagen 3in1 The Face Shop', 1280000.0000, NULL, 49, N'Hàn Quốc', NULL, N'The Face Shop', NULL, NULL, N'Bộ sản phẩm này được chiết xuất từ collagen nên rất an toàn và tốt cho da, bộ 3 sản phâm rất tiện lợi và dễ sử dụng', NULL, NULL, NULL, 0.25, 2, N'Bo-Gold-Collagen-3in1-The-Face-Shop11-1.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (21, N'Bộ dầu gội và xả ES Elastine – Hàn Quốc', 450000.0000, NULL, 40, N'Hàn Quốc', 600, N'ES E Lastine', NULL, NULL, N'Dầu gội Elastine – sản phẩm Hàn Quốc có kiểu dáng, màu sắc nổi bật, hương thơm đặc trưng và quyến rũ với 3 loại:
– Elastine – Damage Control: phục hồi tóc hư tổn nhờ tinh chất bơ từ Châu Phi.
– Elastine – Moisture Control: cân bằng độ ẩm cho tóc nhờ tinh chất bơ giàu đô%3ḅ ẩm – Bí quyết làm đẹp cho tóc của người Maya từ thời Inca.
– Elastine – Volume Control: làm dày tóc nhờ tinh chất hoa Lavender điều tiết lượng chất nhờn trên da đầu và tóc.', N'Thành phần Vitamin E, Polyphenolbảo vệ tóc khỏi quá trình Oxy hoá và cân bằng độ ẩm.', N'Gội hàng ngày, Sử dụng dầu gội Elastine, da đầu bạn sẽ khỏe mạnh nhờ dưỡng chất HGH, bên ngoài sợi tóc được bảo vệ bởi chiết xuất từ hoa Tiare, bên trong sợi tóc được chăm sóc với dưỡng chất α-Cystine và chân tóc chắc khỏe nhờ chiết xuất từ hoa cây Kosam.
– Mái tóc suôn mượt, dày, óng ả, chắc khỏe là mơ ước của hầu hết phụ nữ Elast.ine sẽ giúp bạn biến ước mơ thành hiện thực..', NULL, 0.18, 3, N'Bo-dau-goi-xa-ES-Elastine-Han-Quoc-2-1.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (22, N'Bộ Yiyimei bán lẻ Sữa rửa mặt sạch sâu', 230000.0000, N' Yiyimei', 70, N'HongKong', 100, NULL, NULL, NULL, N'Bộ yiyimei trị nám, tàn nhang, dưỡng trắng da, phái đẹp sẽ có ngay trong tay giải pháp giảm nám từ bên trong và bên ngoài, giúp loại bỏ, làm mờ vết nám, ngăn ngừa nám da tái phát đồng thời cung cấp dưỡng chất nuôi dưỡng làn da từ bên trong, cho da mịn màng, săn chắc hoàn hảo.
– Chứa các thành phần Arbutin, ellastin hòa tan, acid nucleic, cam thảo, rong biển, dầu oliu,… giúp đánh bay bụi bẩn, làm sạch sâu từ bên trong da, cung cấp độ ẩm, dinh dưỡng cần thiết cho da.', NULL, N'Dùng để làm sạch buổi sáng và buổi tối', NULL, 0.22, 3, N'bo-yiyimei-ban-le-sua-rua-mat-sach-sau-1-510x510.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (23, N'Bông tẩy trang Miniso 150 miếng – Nhật bản', 100000.0000, N'Miniso', 100, N'Nhật Bản', NULL, NULL, NULL, NULL, N' Hộp bông tẩy trang Miniso 150 miếng, là sản phẩm tiện ích trên bàn trang điểm và trong túi xách của mọi cô gái.
– Bề mặt sản phẩm bằng chất liệu 100% cotton nhập khẩu từ Nhật Bản, có đặc tính mềm mại, đặc biệt không gây kích ứng da.
– Thấm hút tốt nước tẩy trang, nước hoa hồng dưỡng ẩm, hoặc dung dịch chùi sơn móng tay, móng chân…
– Nhẹ nhàng làm sạch sâu phấn, kem, màu mắt… trang điểm, giữ bề mặt da luôn sạch, thoáng, ngăn ngừa mụn.
', NULL, NULL, NULL, 0.35, 3, N'Bong-tay-trang-Miniso-150-mieng-–-Nhat-ban-1-1.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (24, N'Bông tẩy trang Jomi Cotton Pads 120 miếng – Nhật bản', 45000.0000, NULL, 50, N'Nhật Bản', NULL, N'Jomi', NULL, NULL, N'Hỗ trợ làm sạch tế bào chết, thông thoáng lỗ chân lông giúp da sáng mịn màng tự nhiên. Làm sạch nhẹ nhàng da mặt.
– Thiết kế hai mặt giúp tẩy trang hiệu quả, lau sạch phấn trang điểm, bụi bẩn trên da. Có thể thay thế giấy thấm dầu.
– Thấm hút dầu thừa và dịch nhờn trên da, làm thông thoáng, giảm viêm nhiễm, ngừa mụn và bảo vệ lớp trang điểm.', NULL, NULL, NULL, 0.22, 3, N'Bong-tay-trang-Jomi-Cotton-Pads-120-mieng-3.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (25, N'Kem khử thâm làm hồng môi Mibiti Prudente NuWhite L1A 5ml', 950000.0000, N' NuWhite', 60, N'Mỹ', 5, NULL, NULL, NULL, N' Khử đi các vết thâm, mang lại sự hồng hào, tươi trẻ cho đôi môi.
– Kem dưỡng có tác dụng ngăn chặn sự hình thành các sắc tố mới, tăng cường tưới máu cho vùng môi, mang lại màu sắc tươi hồng tự nhiên.
– Duy trì ổn định độ ẩm cho làn da.
– Thúc đẩy quá trình thay mới vùng da, loại bỏ các sắc tố sẵn có trên da đồng thời ức chế một cách hoàn toàn sự sản sinh các sắc tố mới.
– Giúp bảo vệ đôi môi sau trị liệu tốt nhất.', NULL, N'Thoa một lượng vừa đủ kem NuWhite L1A lên vùng da môi cần điều trị 2-3 lần/ngày.', NULL, 0.12, 3, N'Kem-khu-tham-lam-hong-moi-Mibiti-Prudente-NuWhite-L1A-5ml1.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (32, N'Mặt nạ môi lovely ME:EX bebe lip mask – the face shop', 60000.0000, NULL, 99, N'Hàn Quốc', NULL, N'the face shop', NULL, NULL, N'Việc chăm sóc làn môi bây giờ quan trọng và cần thiết hơn hẳn bởi như cầu làm đẹp của chị em ngày nay ngày càng tăng và thời tiết trở nên thất thường khiến cho đôi môi dễ bị lão hóa và mau khô. Vì vậy, cần phải chăm sóc và bảo vệ làn môi để chị em ngày càng quyến rũ.
Đây là sản phẩm mặt nạ cho môi giúp cung cấp độ ẩm và collagen chống lão hóa môi. và làm hồng môi. Chỉ cần đắp mặt nạ lên đôi môi trong vòng 10 phút, đôi môi sẽ trở nên mềm mịn và căng mượt!', NULL, NULL, NULL, 0.25, 4, N'mat-na-moi-lovely-meex-bebe-lip-mask-thefaceshop.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (35, N'Set MAC đen 12 cây Matte 1984 Mermaid của nước Mỹ', 200000.0000, NULL, 28, N'Hàn Quốc', NULL, NULL, NULL, NULL, N'Là loại son chuyên nghiệp với nhiều màu sắc trung thực, ấn tượng thích hợp cho mọi lứa tuổi, với MAC Lipstick bạn sẽ có một đôi môi gợi cảm, quyến rũ say đắm lòng người
– Son môi Mac với màu sắc trẻ trung và lâu trôi nổi tiếng toàn thế giới.', NULL, NULL, NULL, 0.2, 4, N'set-mac-den-12-cay-matte-1984-mermaid-5-510x510.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (37, N'Son 3 lớp VDL Tint Bar Triple Shot 3X – Hàn quốc', 350000.0000, NULL, 50, N'Nhật Bản', NULL, NULL, NULL, NULL, N' Lớp màu chính: Chứa chiết xuất từ sữa ong chúa, giúp bạn có một đôi môi sáng đẹp, cùng với công dụng dưỡng ẩm giúp đôi môi mềm mịn, cho dù môi bạn có khô hay nứt nẻ.', NULL, NULL, NULL, 0.07, 4, N'Son-3-lp-VDL-Tint-Bar-Triple-Shot-3X-–-Han-quc1.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (41, N'Bộ đôi dưỡng mini gold gift set', 65000.0000, NULL, 100, N'Hàn Quốc', NULL, NULL, 5, NULL, N'– Chiết xuất từ trứng cá tằm quý hiếm và ngọc trai, giúp cân bằng độ ẩm, cung cấp chất dinh dưỡng, làm săn chắc và tăng cường độ đàn hồi cho da, chống lão hóa và chảy sệ, cho bạn làn da tươi trẻ rạng rỡ.
– Nước cân bằng (Toner): giúp se khít lỗ chân lông, cân bằng lại độ ẩm và độ pH cần thiết, đồng thời còn giúp tạo bước đệm giúp các sản phẩm dưỡng tiếp theo thẩm thấu vào da một cách hiệu quả nhất.
bo-doi-duong-mini-gold-gift-set-2
– Tinh chất (Essence/Serum): là sản phẩm thực hiện chức năng chính của dòng, giúp cải thiện các vấn đề trên da như lỗ chân lông to, da mụn, da lão hóa, nhiều nếp nhăn, da nám, tàn nhang…một cách hiệu quả nhất.
– Sữa dưỡng (Emulsion/Lotion): có tác dụng ngăn không cho các dưỡng chất của Serum nhanh chóng bốc hơi qua bề mặt da, giúp cân bằng lượng dầu và nước hoàn hảo bên trong da, đồng thời tăng cường bổ sung các chất dinh dưỡng và vitamin thiết yếu để nuôi dưỡng cho làn da khỏe mạnh từ bên trong.
– Kem dưỡng (Cream): tạo lớp màng chắn giúp ngăn chặn sự thoát hơi nước và thất thoát các chất dinh dưỡng ở các bước dưỡng trước đó, đồng thời cung cấp đầy đủ độ ẩm, giúp duy trì sự ẩm mượt, mịn màng cho làn da suốt cả ngày và ngăn ngừa quá trình hình thành các nếp nhăn.', NULL, NULL, NULL, 0.46, 1, N'Bo-doi-duong-mini-gold-gift-set-411-510x510.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (42, N'Bút che khuyết điểm Eveline Art Professional make up 2in1', 220000.0000, NULL, 25, N'Ba Lan', NULL, N'Eveline', NULL, NULL, N'– Bút che khuyết điểm Eveline Art Professional make up có 2 tác dụng trên 1 sản phẩm.
– Giúp làm trắng sáng da.
– Giúp che phủ hoàn hảo mọi khiếm khuyết trên da mặt.
– Eveline Art Professional Cream che phủ khiếm khuyết trên da như: vết thâm, nám, mần đỏ, nếp nhăn…', N'– Thành phần tạo màu khoáng chất cho bạn lớp trang điểm hoàn hảo suốt 24 tiếng.
– Cyclopentasiloxane, Dycaprylyl Ether, Lanolin, Beeswax, Squalane giúp điều tiết lượng nước, cho da đàn hồi và săn chắc và bảo vệ da hoàn
hảo.', N'– Chấm nhẹ lên vùng da cần che khuyết, chú ý vùng da quanh mắt và môi. Dùng ngón tay vỗ nhẹ cho tinh chất lan đều, sau đó thoa kem nền hoặc phấn.', NULL, 0.32, 2, N'but-che-khuyet-lam-sang-da-2-trong-1-art-scenic-228_6xd2-ts-510x510.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (45, N'Bộ Cien Q10 Dưỡng Ẩm Chống Lão Hóa Ngày, Đêm – pháp', 350000.0000, NULL, 20, N'Pháp', 50, NULL, NULL, NULL, N'Anti-Wrinkle Complex: Liftan Chuyên sâu với Q10 và acid hyaluronic giúp bảo vệ tế bào da và giảm nếp nhăn. Sử dụng thường xuyên kem ngày cũng có thể giúp ngăn chặn sự hình thành các nếp nhăn mới.', N'– Coenzyme Q10: đóng vai trò quan trọng xúc tác các phản ứng sinh năng lượng, cần thiết cho tế bào duy trì và phát triển.

– Hyaluronic axit.

– Thành phần khác.

– Bao bì và hũ đựng Bộ Dưỡng Ẩm Chống Lão Hóa Ngày Đêm Cien Q10 thì cá nhân mình thấy không có gì đặc biệt, với cả mình chỉ thích hiệu quả thôi, hũ nhựa hay kim cương cơ bản mình không quan tâm mấy, miễn là kín đáo và chắc chắn để đảm bảo vệ sinh.', N'– Kem màu trắng dùng ban ngày,  Kem màu ngà vàng dùng ban đêm', NULL, 0.22, 1, N'Bo-Duong-Am-Chong-Lao-Hoa-Ngay-Dem-Cien-Q10-2.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (48, N'Bộ dưỡng da Innisfree trà xanh green tea fresh 3 in 1', 900000.0000, NULL, 50, N'Hàn Quốc', 500, N'Innisfree', NULL, NULL, N'– Bộ dưỡng da Green Tea Fresh được sản xuất ngay tại cánh đồng trà xanh trên đảo Jeju, nơi khí hậu lý tưởng quanh năm, trà xanh được trồng, thu hoạch và thực hiện quy trình chiết xuất ngay tại trụ sở sản xuất của Innisfree trên đảo. Chính trà xanh đã làm nên thương hiệu của Innisfree', N'– Chiết xuất từ chà xanh nguyên chất.', N'– Dùng theo thứ tự sau Green Tea Fresh Skin —> Green Tea Fresh Essence—> Green Tea Fresh', NULL, 0.34, 1, N'Bo-duong-da-Innisfree-tra-xanh-green-tea-fresh-21.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (49, N'Bộ dưỡng da tinh chất vàng OHUI The First Special GWP (5 sp)', 540000.0000, N'O HUI', 40, N'Hàn Quốc', 650, NULL, NULL, NULL, NULL, N'Thành phần chính của bộ sản phẩm gồm: Tế bào gốc tái tổ hợp tăng khả năng thẩm thấu vào da gấp 5 lần, tái tạo và chữa lành những tổn thương cho da. Kết hợp với tinh chất từ Hoa Mẫu Đơn trắng giúp tăng khả năng làm dịu và dưỡng trắng da, chống lão hóa rất tốt', N'Làm sạch da bằng sửa rửa mặt, sau đó thực hiện dưỡng da theo các bước sau

Bước 1: Nước Hoa Hồng Ohui The First Skin Softener

Bước 2: Tinh Chất Ohui The First Essence

Bước 3: Sữa Dưỡng Ohui The First Emulsion

Bước 4: Kem Dưỡng Mắt Ohui The First Eye Cream

Bước 5: Kem Dưỡng Cô Đặc Ohui The First Cream Intensive', NULL, 0.36, 1, N'cover-bo-duong-da-Ohui-the-first-Han-Quoc-1.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (55, N'Bộ dưỡng trắng da Laneige White Plus Renew Trial Kit (4Items)', 140000.0000, NULL, 50, N'Hàn Quốc', 300, NULL, NULL, NULL, N'– Bộ dưỡng trắng da Laneige – White Plus Renew Kit với công nghệ Melacrusher đặc biệt , được cấp 3 bằng sáng chế tại Korea cho hiệu quả giúp kích hoạt cơ chế tự phân hủy hắc sắc tố gây sạm da.', N'– Công thức mềm mại, thành phần chiết xuất từ nấm Truffle và Trà Xanh với công thức dịu nhẹ không chứa 4 yếu tố bất lợi nhằm chăm sóc cho ngay cả làn da nhạy cảm nhất – không paraben, không thành phần từ động vật, không chất tạo màu và không thành phần từ dầu hóa học.', N'– Sáng & tối: toner + tinh chất dưỡng + sữa dưỡng + kem dưỡng.

– Mask: tuần dùng 2 lần, ko dùng thêm tinh chất hay kem dưỡng.', NULL, 0.26, 1, N'Bo-duong-trang-da-Laneige-White-Plus-Renew-Trial-Kit-4Items-1.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (61, N'Bộ kem và serum dưỡng da ban ngày Blanc Doux Pinot Noir', 700000.0000, N'', 60, N'Hàn Quốc', 150, N'Memebox', NULL, NULL, N'– Dưỡng da chính là quá trình làm đẹp mà bất cứ chị em phụ nữ nào cũng không thể bỏ qua. Dưỡng da thường xuyên bằng các sản phẩm chăm sóc da sẽ giúp làn da của bạn được cung cấp đủ các dưỡng chất, vitamin, độ ẩm giúp da luôn căng mịn, ngăn ngừa quá trình lão hóa, hình thành nếp', NULL, N'– Đối với kem dưỡng: 1 tuýp sử dụng khoảng 2-3 tháng , sử dụng vào buổi sáng là tốt nhất

– Đối với serum: Lắc chai trước khi áp dụng, sau đó phun nó đối mặt tại một 15cm đến 20cm khoảng cách.', NULL, 0.22, 1, N'Bo-kem-va-serum-duong-da-ban-ngay-Blanc-Doux-Pinot-Noir-11-1.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (63, N'Bộ mỹ phẩm cao cấp hoàng cung Danxuenilan 5D silk protein', 1300000.0000, NULL, 35, N'Hồng Kông', NULL, N'Danxuenilan', NULL, NULL, N'– Giúp tế bào da sinh trưởng, loại bỏ sắc tố đen, nám, tàn nhang, đồi mồi, nhanh lành vết thương do mụn;

– Giảm sự tổng hợp của sắc tố gây nám, phục hồi da nhợt nhạt;

– Tăng sinh và tái tạo tế bào;

– Tạo collagen;

– Hỗ trợ quá trình tạo collagen, thành phần quyết định độ đàn hồi của da;

– Thúc đẩy tuần hoàn máu, giúp da khoẻ đẹp;

– Ức chế phản ứng viêm do mụn nhọt, tấy đỏ hoặc ngứa;

– Chống dị ứng;

– Điều hòa và khôi phục hệ miễn dịch;

– Tăng cường hệ miễn dịch, giúp da trở nên khỏe đẹp; – Bổ sung acid amin;

– Tăng quá trình chuyển hóa năng lượng của tế bào da, cung cấp nguyên liệu chính cho quá trình tái tạo tế bào;

– Bổ sung độ ẩm cho da, điều chỉnh độ mịn của da, điều chỉnh tốc độ thay da và duy trì một làn da trắng hồng khỏe mạnh;

– Củng cố biểu bì, tăng khả năng kháng thể tại chỗ của da;

– Thúc đẩy quá trình tái tạo da, nuôi dưỡng và giữ ẩm cho da;

– Phân giải những hắc tố đen trên làn da do tia tử ngoại hoặc do tác dụng phụ của mỹ phẩm;

– Xóa đi các vết nhăn và tăng cường sự đàn hồi cho da;

– Các thành phần chống tia UV sẽ giúp da chống lại những vấn đề nám do tia UVA và UVB gây ra;

– Ngăn ngừa lão hóa;

– Ngăn chặn sự oxy hóa từ tyrosine làm ức chế quá trình sản sinh thể melanin, mang lại làn da mềm mại, trắng hồng tự nhiên.', NULL, N'Sáng: (1) Sữa rửa mặt — (2) Tinh chất hoa hồng — (3) Kem trắng da ban ngày — (4) Kem make-up, chống nắng.

Tối: (1) Sữa rửa mặt — (2) Tinh chất hoa hồng — (3) Kem ngọc trai trắng da ban đêm.

Sản phẩm được nghiên cứu và chuyển giao công nghệ, cũng như nguyên liệu của Hongkong. Sản phẩm đã được kiểm an toàn và là một trong những dòng sản phẩm được các chị em bên đó yêu thích và sử dụng rất nhiều.', NULL, 0.24, 1, N'Bo-my-pham-cao-cap-hoang-cung-Danxuenilan-5D-silk-protein-4.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (65, N'Bộ mỹ phẩm dưỡng da lô hội Foodaholic – Aloe Aqua Skin Care', 750000.0000, NULL, 40, N'Hàn Quốc', 150, N'Foodaholic', NULL, NULL, NULL, N'Water,Butylene Glycol,Potydcrylamide,Centella Asiatica ExtractC13-14 soparaffin,Ethy1hexy^ycem. Disodium EDTA,Laureth-7,Chanxmaa Recutita (Matricaria) FJowk Water.Glycyrrtiiza Giabra (Licorice) Root Extract,Camefea Sinensis Leaf Extraa,Pofygonum Cuspidatum Root Extract,Rosmannus Officinalis (Rosemary) Leaf Extract,Scuteiaria Baicalens*s Root Extract,AJcobol,Sodiifn PCA.C119140,Cl 42090.', N'Bước 1: Sử dụng hàng ngày,sau khi dùng sữa rửa mặt lấy 1 lượng nước hoa hồng Aloe Aqua Skin vừa đủ xoa đều lên mặt. Vỗ nhẹ cho kem thẩm thấu.
Bước 2: Lấy 1 lượng vừa đủ sữa dưỡng Aloe Aqua Emulsion massage lên các vùng da trên mặt và vỗ nhẹ cho sữa dưỡng thẩm thấu vào da.
Bước 3: Riêng kem dưỡng Aloe Aqua Gel Cream dùng vào buổi tối(kem đêm) để đạt được hiệu quả dưỡng và đặc trị tối ưu nhất', NULL, 0.28, 1, N'boduongdalohoi.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (66, N'Bộ mỹ phẩm Kayoko 6 in 1 trị nám da, tàn nhang – Nhật Bản', 2500000.0000, NULL, 34, N'Nhật Bản', NULL, N'Kayoko', NULL, NULL, N'– Kayoko Day Cream gồm các tinh chất là dâu tằm, tinh chất oải hương giúp chống viêm và bổ sung nhiều loại vitamin.

– Arbutin, arnica giúp kiểm soát sự gia tăng sắc tố bất thường ở lớp biểu bì da, loại trừ các điểm đen, tàn nhang . Phân dải các sắc tố đen, vùng da sạm màu để đạt hiệu quả làm trắng hoàn hảo.

– Glycerin monostearate, lô hội, yến mạch, prtrola-tum, lanolin, propylene glycol giúp chống lại các tác nhân oxi hoá, dưỡng ẩm và làm sáng mịn da.

– Titanium dioxide, vitamin E giúp chống nắng, có khả năng chống các tia tử ngoại có hại như UVA và UVB, giúp làn da trắng và khỏe mạnh hơn.', N'– Titanium dioxide, glycerin monostearate, lô hội, yến mạch, tinh chất lá dâu tằm, propylene glycol, isopropyl myristate, prtrola-tum, lanolin, arbutin, arnica, vitaminE, tính chất Oải hương.', N'Sau khi lau mặt sạch bằng nước hoa hồng, lấy 1 lượng vừa đủ kem ban ngày Day Cream massage nhẹ nhàng lên da sau đó vỗ đều cho kem thẩm thấu.

Sử dụng vào buổi sáng.', NULL, 0.6, 1, N'B-m-phm-Kayoko-tr-nom-da-tan-nhang-6-in-1-Nht-Bn-112.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (68, N'Bộ sản phẩm trắng da body Ultra Body Whitening 21Days', 1800000.0000, NULL, 20, N'Hàn Quốc', 250, NULL, NULL, NULL, N'– Làm trắng da toàn thân, hiệu quả trắng sáng ngay lần đầu sử dụng, dưỡng ẩm sâu, xóa đồi mồi, tàn nhang, những vùng da kín sậm màu, chống nắng, hiệu quả cao.

– Các hoa hậu, người đẹp, siêu mẫu, ca sỹ, MC, các quý bà, thâm chị các nàng bầu bí đã tin dùng bộ sản phẩm tắm trắng da ULTRA BODY WHITENING', N'1. Enzym đu đủ:

– Đóng vai trò là 1 sản phẩm tự nhiên giúp tẩy tế bào da chết, thay thế cho các sản phẩm hóa học, phụ hồi sự tươi trẻ cho làn da, giúp làm sáng da.

– Cải thiện về sắc tố da, đặc biệt đối với những làn da sạm đen do ánh nắng mặt trời.

2. Lá diếp cá: Dưỡng trắng và săn chắc da, dưỡng da mềm mịn.

3. Nấm men: Giúp da trắng sáng và mịn màng.

4. Rễ cam thảo: Giúp tẩy tế bào da chết, giúp phân tán sắc tố melanin và làm trắng da.', N'Bước 1: Xịt sản phẩm số 1 lên các vùng da cần làm trắng, massage nhẹ nhàng để tế bào chết bong hết – Lau sạch hoặc tắm bằng nước ấm, lau khô.

Bước 2: Xịt sản phẩm số 2 một lượng vừa đủ, thoa nhẹ để sản phẩm có độ mịn & sáng đều

* Nếu dùng tại Spa thì thêm bước đặp mặt nạ

* Đi du lịch có thể sử dụng bộ sản phẩm Kit travel', NULL, 0.31, 1, N'Bo-doi-san-pham-lam-trang-da-Ultra-Body-Whitening-21Days-Han-quoc-5.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (69, N'bộ set tinh chất và kem dưỡng White Seed Real Whitening Essence & Cream Set', 500000.0000, NULL, 50, N'Hàn Quốc', 75, NULL, NULL, NULL, N'Bộ sản phẩm dưỡng trắng da White Seed Real Whitening Essence & Tone-up Cream The Face Shop chiết xuất từ hạt đậu và hoa daisy dưỡng trắng từ sâu bên trong da giúp da sáng tự nhiên theo cách tự nhiên nhất, loại bỏ những đốm nâu, vết thâm do mụn.

Sản phẩm có GMO – free (không chứa thành phần biến đổi gen) thích hợp với cả làn da nhạy cảm nhất vì chiết xuất hoàn toàn thiên nhiên.', N'Đồng thời, White Seed Real Whitening Essence dạng gel được so sánh như hồ thủy điện cho da chứa tối đa các thành phần dưỡng ẩm và thành phần hoạt động cho làn da ẩm mượt và sáng lên trông thấy.

White Seed Tone-up Cream cải thiện làn da ngay lập tức với công thức hiệu chỉnh màu sắc da, chất kem màu trắng sữa thấm đều vào da cho da đều màu và sáng lên 2 tone.', NULL, NULL, 0.14, 1, N'971b26985.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (70, N'Bộ tinh chất trị mụn Bergamo Luxury Gold Collagen And Caviar 13ml/chai x 20 chai', 1800000.0000, NULL, 49, N'Hàn Quốc', 10, N'Bergamo', NULL, NULL, N'– Ngăn ngừa lão hóa có tác dụng trị mụn cám , mụn đầu đen , se khít lỗ chân lông , dưỡng mịn da , làm da căng bóng.

– Khi thoa tinh chất lên da, các tinh chất này sẽ cơ cấu và cung cấp chất dưỡng ẩm cho da làm cho da mềm mịn , nuôi dưỡng và tái tạo lại làn da lão hóa.

– Ngoài tác dụng dưỡng ẩm và tăng độ đàn hồi cho da, tinh chất vitamin còn tái tạo làn da già nua do tuổi tác, làm trẻ hoá làn da. Sau một thời gian sử dụng, các nàng sẽ thấy 1 làn da căng, mịn màng và các nếp nhăn mờ đi trông thấy.

– Bộ tinh chất trị mụn Bergamo Luxury Gold Collagen And Caviar 13ml/chai x 20 chai Serum bergamo caviar ( chai vàng đậm ) : có tác dụng trị mụn cám , mụn đầu đen , se khít lỗ chân lông , dưỡng mịn da , làm da căng bóng .', NULL, N'– Sau khi rửa mặt cho 1-2 giọt thoa đều trên mặt và cổ của bạn, sau đó mát xa nhẹ nhàng để tinh chất hấp thu vào sâu bên trong da sau khi làm sạch mặt.

– Để có kết quả tốt nhất, sử dụng vào buổi sáng và buổi tối, có thể dùng kết hợp với kem dưỡng da để giúp đạt hiệu quả nhanh hơn, giúp bạn nhanh chóng lấy lại được làn da tươi trẻ, trắng sáng mịn màng chỉ sau một thời gian sử dụng.

– Bảo quản sản phẩm nơi thoáng mát, tránh lưu trữ ở nhiệt độ cao.

', NULL, 0.36, 1, N'B-tinh-cht-tr-mn-Bergamo-Luxury-Gold-Collagen-And-Caviar-13mlchai-x-20-chai-11.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (71, N'﻿Bùn ủ trắng da tinh chất hoa hồng, tinh chất rong biển – hàn quốc', 320000.0000, NULL, 50, N'Hàn Quốc', 300, NULL, NULL, NULL, N'– Bùn khoáng còn giúp tẩy sạch tế bào chết , kích thích tái tạo da , điều chỉnh rối loạn nội tiết tố , làm đẹp da , giúp da mịn màng , tươi trẻ .

– Hạn chế việc bắt bụi gây mụn , loại bỏ các tế bào chết trên da , cung cấp độ ẩm cho da , cung cấp collagen , phục hồi tính năng đàn hồi của da , nuôi dưỡng da nhăn nheo chảy xệ , cho làn da trắng hồng , mịn màng . Ngoài các tác dụng trên , bùn khoáng còn có công dụng giúp thư giãn , giảm stress .', N'bùn thiên nhiên , rong biển , Cacbonat Natri Solic , Ca2+, carbamate vitamin', N'– Rửa mặt thật kỹ trước khi đắp mặt nạ bùn non . Rửa mặt sạch giúp lấy đi các bụi bẩn và dầu bám trên bề mặt da . Bên cạnh đó làn da sạch sẽ hấp thu cao nhất lượng chất dinh dưỡng từ mặt nạ .

– Lấy 1 lượng vừa đủ bôi lên đầu ngón tay và thoa đều khắp mặt , massage đều đặn lên khắp mặt . Cho nhiều bùn hơn ở chỗ các vết thâm , nám và những chỗ da có mụn , sần sùi

– Để nguyên khoảng 20 – 25 phút cho mặt nạ tự khô đi . Trong thời gian đợi nằm yên thư giãn , nhắm mắt và để trên mắt 2 lát dưa chuột xắt mỏng .

– Rửa mặt sạch với nước ấm , thoa đều trên mặt theo hướng đi lên để bùn ngấm kỹ vào da mặt một lần nữa . Sau đó dùng khăn nhúng nước ấm và nhẹ nhàng lau lên mặt . Sau cùng rửa mặt lại với nước lạnh để thu nhỏ lỗ chân lông .', NULL, 0.22, 1, N'Bun-u-trang-da-tinh-chat-hoa-hong-tinh-chat-rong-bien-tinh-chat-sua-han-quoc-1.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (76, N'Dung dịch vệ sinh phụ nữ Scion Nuskin Mỹ (200ml)', 250000.0000, N'Scion Nuskin', 189, N'Hàn Quốc', 100, NULL, NULL, NULL, N'– Làm sạch vùng kín hiệu quả, sát khuẩn cao.

– Ngăn ngừa tình trạng ngứa, viêm nhiễm khó chịu.

– Tạo cảm giác sách thoáng, thoải mái cho phụ nữ.

– Dưỡng ẩm, hỗ trợ làm săn chắc độ đàn hồi cô bé.

– Tự cân bằng độ pH.

– Khử mùi hôi với hương dịu nhẹ thanh khiết, trị tận gốc hôi vùng kín.

– Dứt điểm huyết trắng.

– Làm hồng cô bé.

', N'– chiết xuất từ lá tràm trà, cúc la mã, curcumin, acid lactic giúp cân bằng pH vùng kín, làm sạch dịu nhẹ và phòng ngừa viêm nhiễm nấm ngứa, khí hư huyết trắng, bệnh phụ khoa.

– Tinh chất lá tràm trà thiên nhiên.

– Acid lactic.

– Curcumin.

– Nước tinh khiết.

– Hoa cúc La Mã.', N'– Sản phẩm có tính tẩy rửa nhẹ nhàng nên chị em có thể sử dụng 1 ngày 1 lần tương đương với 2-4ml.

– Bước 1: Làm ướt vùng kín và khu vực xung quanh.

– Bước 2: Cho dung dịch vào lòng bàn tay và thoa rửa nhẹ vùng kín trong 1 phút.

– Bước 3: Sau đó sang các vùng lân cận và cuối cùng là khu vực hậu môn.

– Bước 4: Cuối cùng rửa lại bằng nước sạch.', NULL, 0.22, 1, N'dung-dich-ve-sinh-phu-nu-cao-cap-scion-feminine-wash-nuskin-200ml-1.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (78, N'Bộ dưỡng da 3W Clinic chiết xuất từ hoa hồng – Hàn Quốc', 650000.0000, N'3W clinic', 100, N'Hàn Quốc', NULL, NULL, NULL, NULL, N'– Giữ ẩm cho da: Tinh chất nước hoa hồng có tác dụng thấm sâu vào da, duy trì độ ẩm, ngăn ngừa tình trạng da khô sần và làm săn chắc da.

– Hạn chế tiết dầu: Sử dụng đều đặn nước hồng, sẽ khiến làn da của bạn trở nên khô thoáng hơn, ức chế sự hình thành bã dầu, ngăn ngừa mụn một cách đáng kể.

– Dưỡng trắng da: Các vitamin C và nhiều hoạt chất khác có trong nước hoa hồng sẽ cải thiện được tình trạng da không đều màu, nhanh chóng loại bỏ các sắc tố, mang đến cho bạn một làn da trắng sáng, rạng ngời.', N'– Chứa Arbutin, Collagen Hydrorized, Acid Hyaluronic, Tocopherol, chiết xuất từ các loài hoa,…đây đều là các thành phần lành tính cho da. Bộ sản phẩm giúp làm trắng và giảm thâm nám, Hyaluronic acid – giữ ẩm và ngăn ngừa nếp nhăn, Collagen – cho làn da có năng lượng tràn sức sống, ngăn ngừa kích ứng da.', N'– B1: Rửa sạch mặt

– B2: Dùng nước hoa hồng Moisture Skin Softener làm sạch dạ, se khít lỗ chân lông và giúp thẩm thấu kem dưỡng tốt hơn.

– B3: Lấy một lượng vừa đủ ra lòng bàn tay xoa nhẹ nhàng hoa đều khắp khuôn mặt, vỗ nhẹ khắp mặt để sữa dưỡng dễ dàng thấm sâu vào da.

– B4: Lấy một lượng kem vừa đủ ra lòng bàn tay, nhẹ nhàng xoa đều hết khuôn mặt, vỗ nhẹ giúp kem thẩm thấu tốt hơn.', NULL, 0.23, 1, N'bo-duong-da-3w-clinic-chiet-xuat-tu-hoa-hong-4.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (80, N'Bộ dưỡng da trà xanh mini Innisfree Green Tea Special Kit 4 in 1', 190000.0000, N'Innisfree', 30, N'Hàn Quốc', NULL, NULL, NULL, NULL, N'– Innisfree Green Tea Balancing Lotion ( 25ml) : đây là sản phẩm thuộc dòng balancing skin (cân bằng da) phù hợp với mọi loại da. Với chất kem siêu mềm mịn, sản phẩm dễ dàng thẩm thấu vào da, bổ sung chất dưỡng ẩm và góp phần se khít lỗ chân lông, kiến tạo làn da mềm mượt như mong ước.

– Innisfree The Green Tea Seed Serum ( 15ml ): tinh chất dưỡng chiết xuất từ 100% nước trà xanh nguyên chất, ngăn ngừa dấu hiệu lão háo và làm trắng da nhờ các acidamin.', N'– Với thành chính là các hoạt chất lợi ích từ trà xanh, bộ dưỡng da trà xanh mini Innisfree Green Tea Special Kit còn bổ sung một số chất dinh dưỡng giúp chăm sóc da hiệu quả.

– Được chiết xuất từ thành phần chính là tinh chất trà xanh, mỗi loại sản phẩm trong bộ chăm sóc da mini đều mang lại những công dụng khác nhau giúp da khỏe đẹp', N'– Đối với kem dưỡng da: Lấy một lượng vừa đủ bôi lên mặt, massage nhẹ nhàng theo hình xoắn ốc. Dùng 2 lần sáng/ tối.

– Đối với nước hoa hồng: Sau khi rửa mặt sạch, lấy 2-3 giọt nước hoa hồng thấm vào miếng bông và thoa đều lên mặt. Với da khô bạn nên thấm 1-2 giọt nước để tinh
chất thẩm thấu tốt hơn. Dùng 1-2 lần/ ngày.', NULL, 0.18, 1, N'Bo-duong-da-tra-xanh-mini-Innisfree-Green-Tea-Special-Kit-4-in-1-31.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (83, N'Bộ dưỡng trà xanh Innisfree Green Tea Balancing Special Skin Care Set 5 in 1
', 750000.0000, N'Innisfree', 50, N'Hàn Quốc', 200, NULL, NULL, NULL, N'– Dưỡng ẩm tốt. Ngừa mụn tốt.

– Chứa chiết xuất từ hạt trà xanh hữu cơ được trồng tại một trang trại tại đảo Jeju và là một sản phẩm cung cấp độ ẩm cho da và làm sáng từ bên trong da.

– Sản phẩm luôn nằm trong top best seller của hãng, cung cấp đầy đủ dưỡng chất , nước, độ ẩm và giảm đáng kể các tổn thương do môi trường, ánh nắng mặt trời mà bạn phải tiếp xúc hàng ngày.

– Dòng sản phẩm cung cấp đủ nước giúp da hạn chế dầu, tiết nhờn. Dưỡng xong thẩm thấu nhanh và rất mềm mịn, da đang bị viêm nhiễm, điều trị vẫn có thể sử dụng. Sản phẩm là bước đầu tiên trong các bước chăm sóc da.', NULL, N'1. Nước hoa hồng: lấy một lượng vừa đủ ra bông tẩy trang, sau đó thoa theo chiều từ dưới lên trên, từ trong ra ngoài, sau khi thoa dùng bàn tay vỗ nhẹ lên mặt giúp sản phẩm thấm sâu.

2. Sữa dưỡng: cung cấp chất dinh dưỡng, cân bằng lượng dầu và nước trên da. Dùng 2 lần /ngày. Sau khi sử dụng tinh dầu dưỡng da, lấy một lượng vừa đủ thoa đều, dùng lòng bàn tay ôm, ấn nhẹ giúp sản phẩm thẩm thấu tốt hơn, kết hợp cùng các động tác nhấn huyệt sẽ giúp đem lại hiệu quả tốt hơn.

3. Kem dưỡng: bôi kem dưỡng đều khắp mặt, xoa nhẹ nhàng để cho các dưỡng chất thẩm thấu vào da.', NULL, 0.2, 1, N'Bo-duong-tra-xanh-Innisfree-Green-Tea-Balancing-Special-Skin-Care-Set-5in1-Han-quoc-1.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (84, N'Bộ dưỡng trắng da Cà Chua Foodaholic Tomato Fresh Skin Care Set', 460000.0000, N'Foodaholic', 70, N'Hàn Quốc', 150, NULL, NULL, NULL, N'– Đây là sản phẩm sữa dưỡng da chiết xuất từ Arbutin và cà chua giàu lycopene, vitamin và khoáng chất, thấm sâu cải thiện làn da xỉn màu, hạn chế tối đa sự hình thành các melamin hắc tố của da.

– Sử dụng Tomato Fresh Emulsion giúp mang lại sức sống cho da, làm da bạn sáng căng mịn, mềm mượt!', NULL, N'– Sử dụng hàng ngày, sau khi dùng sữa rửa mặt lấy một lượng nước hoa hồng (Tomato Fresh Skin ) vừa đủ xoa đều lên mặt. Vỗ nhẹ cho nước hoa hồng thẩm thấu.

– Lấy một lượng vừa đủ thoa sữa dưỡng Tomato Fresh Emulsion massage lên các vùng da trên mặt và vỗ nhẹ cho sữa dưỡng thẩm thấu vào da.

– Riêng kem dưỡng Tomato Fresh Cream dùng vào buổi tối (kem đêm) để đạt được hiệu quả dưỡng và đặc trị tối ưu nhất .

Hãy sử dụng vào ban đêm để sản phẩm phát huy hết tác dụng.', NULL, 0.29, 1, N'Bo-duong-trang-da-Ca-Chua-Foodaholic-Tomato-Fresh-Skin-Care-Set-711.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (86, N'Bộ Kem Dưỡng Ẩm Chống Lão Hóa Reborn – Mỹ', 1000000.0000, N' Reborn Cosmetic', 100, N'Mỹ', NULL, NULL, NULL, NULL, N'– Ban ngày và ban đêm là hai khoảng thời gian khác nhau và tác động đến làn da mặt khác nhau do vậy mà hãng Mỹ Phẩm nào cũng có kem dưỡng chuyên dụng cho ngày và đêm với thành phần điều chỉnh khác nhau. Sử dụng kết hợp cả hai bao giờ cũng đạt được hiệu quả dưỡng da tốt hơn là chỉ sử dụng một loại.

– Bộ combo đi liền 2 sản phẩm là “Kem dưỡng ngày và kem dưỡng đêm” bổ sung, hỗ trợ việc dưỡng ẩm trên da – phiên bản 2018, cho da căng mịn, sáng bóng. Sử dụng sản phẩm thường xuyên để tránh bị khô ráp, sần sùi.', NULL, N'– Làm sạch da mặt trước khi sử dụng

– Lấy 1 lượng vừa đủ và thoa đều trên da mặt, sau đó vỗ nhẹ hoặc massage cho các tinh chất thấm thấu đều vào da.

– Có thể dùng để make up hiệu quả, không gây bí da và khô da.

– Bảo quản: Nơi thoáng mát, tránh ánh nắng trực tiếp .

– Lưu ý: Sản phẩm chỉ dùng ngoài da và tránh tiếp xúc với các vùng nhạy cảm như mắt, vết thương hở', NULL, 0.2, 1, N'Bo-Kem-Duong-Am-Chong-Lao-Hoa-Reborn-My-5.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (88, N'Kem ngọc trai trang điểm trắng da toàn thân Emma Pearl Whitening Body Cream', 550000.0000, NULL, 160, NULL, NULL, NULL, NULL, NULL, NULL, N'– Thành phần chính: bột ngọc trai , nước , nguyệt quế sulphate sunfat , glicol propylen, SD ethanol40- B, trimethylamine, axit benzoic, Axetat tocopherol, tảo biển , Helianthus Annuus (Sunflower) Dầu hạt giống , hydro hóa , tinh bột Hydrolysate , Hyaluronic Acid, hương thơm , vitamin B3 , E…

– Đối với nhiều người bận rộn không có nhiều thời gian chăm sóc dưỡng trắng da thì luôn cần những sản phẩm hữu hiệu, tiết kiệm cả thời gian và chi phí .

– Vì vậy, lựa chọn sản phẩm chăm sóc da phù hợp là mối quan tâm của không ít chị em.', N'– Sau khi tắm sạch ,bạn lau khô , lúc này da bạn còn độ ẩm nhất định bạn hãy lấy một ít kem chấm đều toàn thân nhẹ nhàng thoa sản phẩm vừa đủ lên vùng da cần làm trắng theo hình vòng tròn xoắn ốc để tận hưởng cảm giác mịn màng dễ chịu .

– Và hiệu quả nhanh nhất là vào ban đêm trước khi ngủ thời điểm đó là thời điểm kem phát huy hiệu quả nhanh nhất .

– Dùng mỗi ngày để đạt kết quả nhanh nhất .

– Sản phẩm chỉ sử dụng ngoài da, hiệu quả nhanh chóng sau lần đầu tiên sử dụng làn da của bạn lập tức cải thiện, trắng mịn và mềm mại hơn.', NULL, 0.45, 1, N'Kem-ngc-trai-trang-dim-trng-da-toan-thon-Emma-Pearl-Whitening-Body-Cream1.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (95, N'gel lô hội đa năng aloe vera nature republic 92 – Hàn quốc', 100000.0000, NULL, 500, NULL, NULL, NULL, NULL, NULL, NULL, N'Nước chiết xuất cà chua, Chiết xuất chanh, bạch trà, Vitamin C, bột ngọc trai

Tổng hợp thành phần nước cà chua và bột ngọc trai hiệu quả điều trị các vấn đề về da, massage giúp hoạt hóa cho da, loại bỏ chất bẩn từ sâu bên trong.
Là sản phẩm đặc trị với nhiều chức năng hiệu quả làm trắng trong tức thì và những khoáng chất tự nhiên có trong mặt nạ giúp đem lại sự thư giãn cho làn da.
Loại bỏ lớp sừng chết bằng khả năng ngăn ngừa oxy hóa và hồi phục làn da, cho làn da tươi sáng, trẻ trung.

Hàm chứa thành phần làm trắng da và thành phần đặc trị làm trắng đã được chứng nhận hiệu quả làm trắng tích cực.
Đem lại làn da trắng sáng với hiệu quả làm trắng thông qua việc tạo lớp màng bảo vệ làm trắng đặc thù.', N'Sau khi rửa mặt xong , thoa lên mặt một lượng vừa đủ lưu ý tránh vùng miệng và mắt, môi sau đó dùng tay massage từ 3-5 phút. Sau khi massage để dưới dạng mặt nạ trong khoảng 5-10 phút. sau đó rửa sạch với nước ấm làm cho da hấp thụ hiệu quả và tốt nhất.', NULL, 0.22, 1, N'gel-lu-hi-da-nang-aloe-vera-nature-republic-92-–-Han-quc.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (96, N'Xịt Khoáng Avene Eau Thermale 150ml Của Pháp', 300000.0000, NULL, 200, N'Pháp', 150, NULL, NULL, NULL, N'– Giàu silicat, làm dịu và cân bằng độ ẩm cho da, làm mềm da.

– Bảo vệ và thanh lọc da.

– Hàm lượng muối khoáng sản thấp (NoCl, 266mg/l) phù hợp với làn da nhạy cảm, không làm khô da.

– Nồng độ pH 7.5 không gây kích ứng hoặc đốt cháy da. Có thể phun lên vết thương hở.

– Kháng khuẩn.

– Nước xịt khoáng Avène xịt mặt dạng phun sương giúp bổ sung nước, tăng cường độ ẩm và giúp cân bằng khoáng chất cho làn da.

– Nước xịt khoáng Avène có đặc tính làm dịu da, chống kích ứng, kháng viêm, không tạo nên lớp dầu (da mụn,da dầu cũng hoàn toàn yên tâm sử dụng.

– Nước xịt khoáng Avène mang lại cảm giác dễ chịu thư thái kể cả cho làn da nhạy cảm, da đang bị kích ứng, dị ứng, ngứa ,chàm, viêm da, cháy nắng…', N'Nước khoáng Avene

Khí Nitơ

Không chứa chất bảo quản

Nước khoáng dưới dạng khí dung tinh khiết, vô trùng được đẩy ra nhờ nitơ (loại khí nitơ không gây cháy và không gây tổn hại tầng ozon) không chứa chất bảo quản paraben.', N'Phun một lớp sương mỏng lên da. Để yên một lát và sau đó lau khô nhẹ nhàng.
Xịt khoáng avene có 2 dung tích chai nhỏ 50ml tiện gọn, tiện dụng để đem đi khắp mọi nơi, chai lớn 300ml tha hồ xịt nhé.', NULL, 0.17, 1, N'Xt-Khoong-Avene-Eau-Thermale-300ml-Ca-Phop.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (97, N'Xịt khoáng dưỡng ẩm green tea water The Face SHop', 200000.0000, NULL, 100, N'Hàn Quốc', 60, N'THE FACE SHOP', NULL, NULL, N'– Là xịt khoáng được chiết xuất từ tinh chất trà xanh , dạng mist dưỡng da dịu nhẹ dùng.

– Là sản phẩm không thể thiếu để bảo vệ da cho thời tiết hanh khô, đặc biệt với những người làm việc trong môi trường văn phòng điều hòa và những người trang điểm thường xuyên.

– Vừa là xịt khoáng để làm sạch và dưỡng ẩm tức thời cho da (trong thời tiết hanh khô, đặc biệt với những người làm việc trong môi trường văn phòng/ điều hòa).

– Vừa là xịt khoáng hoàn tất cho lớp make up (làm cho lớp phấn bám hơn và ko bị mốc).

– Sản phẩm dùng được cả cho Nam và Nữ.

', N'– Được chiết xuất từ tinh trà xanh từ đảo Jeju Hàn Quốc cung cấp khoáng chất và độ ẩm cho da.', N'– Để sản phẩm cách xa mặt khoảng 30~ 40 cm và xịt nhẹ khắp vùng mặt', NULL, 0.2, 1, N'Xt-khoong-dung-m-green-tea-water-The-Face-SHop1.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (98, N'Xịt chống nắng JM Solution Marine Luminous Pearl Sun Spray SPF50+ Hàn Quốc', 350000.0000, NULL, 249, N'Hàn Quốc', 180, NULL, NULL, NULL, N'– Sản phẩm có chỉ số chống nắng cao SPF 50+/PA +++ giúp cho da chống lại các tác hại của tia UV từ ánh nắng mặt trời gây thâm sạm, lão hóa da và ngăn chặn các bệnh về da do nắng gây ra.

– Với chiết xuất từ bột ngọc trai thiên nhiên cao cấp của Hàn Quốc với hàm lượng khoáng chất cao mang lại công dụng dưỡng ẩm hoàn hảo và chăm sóc da luôn sáng mịn và đều màu.', N'– Xịt Chống Nắng Chiết Xuất Ngọc Trai Jm Solution Marine Luminous Pearl Sun Spray với chỉ số SPF 50+/PA+++ kem chống nắng hiệu quả cao bảo vệ làn da khỏi tia UV cường độ cao, thích hợp cho các hoạt động hàng ngày và ngoài trời.

– Xịt chống nắng chứa axit hyaluronic và chất chiết xuất từ ngọc trai để dưỡng ẩm cho da hàng ngàn lần, giữ cho da ẩm mượt và mịn màng.', N'– Lắc đều sản phẩm trước khi sử dụng.

– Cằm bình thẳng đứng và xịt cách da 20cm.

– Sử dụng sản phẩm trước khi ra nắng 15 – 20 phút để phát huy tác dụng một cách tốt nhất.

– Chú ý không để sản phẩm rơi vào mắt,không sử dụng cho vùng da bị sẹo và eczema.', NULL, 0.4, 1, N'xit-chong-nang-jm-solution-marine-luminous-pearl-sun-spray-spf50-han-quoc-11.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (100, N'Bộ Innisfree Jeju Cherry Blossom 4in1 dưỡng ẩm và nâng tông sáng da', 990000.0000, NULL, 70, NULL, NULL, NULL, NULL, NULL, N'Kem dưỡng giúp nâng tone da và hỗ trợ dưỡng da trở nên đều màu.

– Ngoài ra, sản phẩm giàu bbetaine tự nhiên có tác phục hồi sự tổn thương, giảm quá trình oxy hóa, cấp ẩm duy trì sự mịn màng và giúp ngăn ngừa sự mất nước khô da nhờ chiết xuất từ củ cải đường.

– Để tăng cường dưỡng ẩm và dưỡng sáng da cao 200% bạn nên kết hợp 2 loại kem dưỡng Cherry Blossom Jelly Cream và Cherry Blossom Tone Up Cream theo tỷ lệ nhiều hay ít tùy thuộc vào mong muốn và tình trạng của da bạn.', N'Bộ dưỡng Innisfree Jeju Cherry Blossom được chiết xuất chính từ lá hoa anh đào hoàng gia kết hợp với thành phần niacinamide, betaine (chiết xuất củ cải đường) và bơ hạt mỡ.', N'Bước 1: Làm sạch da với nước.

Bước 2: Dùng nước hoa hồng thấm đều lên da mặt rồi massage nhẹ nhàng.

Bước 3: Lấy 1 ít sữa dưỡng thoa đều và massage nhẹ 3-5 phút.

Bước 4: Bôi lượng vừa đủ rồi massage da mặt cho kem thẩm thấu.

Lưu ý TONE UP CREAM bôi vào buổi sáng JELLY CREAM bôi vào buổi tối.', NULL, 0.34, 1, N'bo-duong-duong-am-va-nang-tong-da-sang-innisfree-jeju-cherry-blossom-6.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (101, N'Bộ kem hoa cúc Pau Jen Pai trị nám, tàn nhang ngày và đêm', 520000.0000, N'Paujenpai', 60, N'Công nghệ Thụy Sĩ & Nhà máy sản xuất tại Đài Loan', NULL, NULL, NULL, NULL, N'– Sản phẩm có chứa thành phần làm trắng tự nhiên và nhiều chất dinh dưỡng chiết xuất từ hoa cúc và nhân sâm, phối hợp với thành phần chống vi khuẩn, nấm men chống viêm.

– Cùng kết hợp của nhiều loại Vitamin xóa sạch những vết thâm đen, mảng nám, tàn nhang và mụn trứng cá hình thành do nhiễm khuẩn.

– Kem PD-208 có thể ngấm sâu vào mô dưới da để giải thể melamin, làm biến mất các vết tàn nhang, mang lại làn da trắng hồng hoàn hảo.', N'– Glyceryl, Monostearate, Yoyumin, Cress, Elder, Wild camomile, Vitamin A,D,E, Aloe And Yeast.', N'– Rửa mặt sạch rồi lau khô

– Lấy một lượng kem vừa đủ thoa đều lên da mặt

– Massage 3-5 phút để kem thẩm thấu vào da

– Tham khảo kem lẻ hoa cúc TẠI ĐÂY

– Để đạt được hiệu quả cao nhất bạn có thểm dùng thêm mặt nạ dưỡng da', NULL, 0.13, 1, N'bo-kem-hoa-cuc-pau-jen-pai-ngay-va-dem-8.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (102, N'Kem dưỡng da tinh chất ốc sên ye dam yun bit complete hàn quốc', 270000.0000, NULL, 100, N'Hàn Quốc', 50, NULL, NULL, NULL, N'– Không chỉ chăm sóc da trên gương mặt mà còn chăm sóc da toàn thân . Chất allantion được chiết xuất từ chất nhầy của Ốc Sên rất giàu Vitamin, Protein và Canxi , có tác dụng tái tạo da, làm trắng da, nhẵn mịn và căng da.

Hiệu quả tuyệt vời cho các vết tàn nhang , vết thâm , nám, vết nhăn trên gương mặt, hay thậm chí làm bíên mất các vết nứt da của phụ nữ hậu thời kỳ mang thai, vết rạn da do tăng kg đột ngột, hay vết đồi mồi trên khắp cơ thể.. kem không chỉ dung để điều trị các khiếm khuyết trên da mà còn là loại kem thay thế làm đẹp da hàng ngày..', N'Với chiết xuất chủ yếu từ nhớt ốc sên Chilê kết hợp với công nghệ tế bào gốc Phyto, thành phần hóa học của kem dưỡng da ốc sên được ghi trên vỏ hộp.

', N'Ở bước cuối của lớp trang điểm cơ bản, hãy thoa đều kem làm săn chắc da lên mặt và cổ, thoa từ dưới lên trên. Sau đó hãy dùng 2 tay nhấn nhẹ nhàng rồi kết thúc bằng cách đẩy da lên.', NULL, 0.33, 1, N'Kem-dung-da-tinh-cht-c-son-ye-dam-yun-bit-complete-han-quc1.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (103, N'Kem dưỡng trắng và sữa tắm trắng da Armame AB – Hàn quốc', 250000.0000, NULL, 100, N'Hàn Quốc', NULL, NULL, NULL, NULL, N'Kem dưỡng trắng Armane có tác dụng: đẩy nhanh việc chuyển dịch bề mặt giúp da sáng trắng mịn màng tự nhiên. Làm mờ vết thâm, hạn chế đốm nâu gây sạm da, tẩy tế bào chết, chống nắng Chống lại sự lão hóa da do các tác động từ môi trường, khói bụi, hóa chất. với công thức đẩy lùi tế bào chết', NULL, N'– Buổi sáng bôi kem lên mặt và toàn thân trước khi ra ngoài. Để giữ được độ trơn lâu trong khi mát xa, cho một lượng nhỏ vào lòng bàn tay, sau đó mát xa trên cơ thể.', NULL, 0.28, 1, N'Kem-dung-trng-va-sa-tm-trng-da-Armame-AB-–-Han-quc.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (105, N'Kem sâm dưỡng ngày My Jin Gold 50ml', 320000.0000, NULL, 100, N'Tập đoàn NEXXEN Hàn Quốc', NULL, NULL, NULL, NULL, N'– Giúp sự cân bằng thể chất và độ ẩm của da.
– Cải tiến sự lưu thông máu, tăng cường dưỡng chất làm cho làn da sáng mịn hoàn hảo.
– Giúp loại bỏ tàn nhang, các đốm nâu, ngăn ngừa sự hình thành sắc tố da, có tác dụng làm trắng da và chống nhăn hiệu quả.
– Với chiết xuất Hồng sâm, dâu tằm, trà xanh, vitamin… giúp loại bỏ các thành phần oxy hoá có hại cho da, làm sạch và dưỡng ẩm da một cách hiệu quả, tạo lớp màng bảo vệ da trước các biến đổi của môi trường.

– Dùng Kem sâm dưỡng Ngày My Jin Gold, bạn sẽ không còn lo lắng nhiều vì sợ sự xâm hại từ các tác hại xấu của môi trường như tia cực tím, khói bụi,…
– Sử dụng sản phẩm này sẽ mang lại cho bạn làn da trắng hồng rạng ngời.
Hướng dẫn sử dụng kem trắng da mặt hồng sâm:
Bôi một lượng kem thích hợp vào trán, mũi, má và cằm. Xoa đều và vỗ nhẹ cho đến khi hấp thu hoàn toàn.', N'1 – My Gold Korea Red Ginseng White Cream – kem dưỡng trắng da ban ngày
2 – My Gold Korea Red Ginseng Sleeping Pack – kem dưỡng da dành cho ban đêm', NULL, NULL, 0.28, 1, N'Kem-som-dung-ngay-My-Jin-Gold-50ml-1.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (106, N'Kem dưỡng thể cream Alpi fresh 200ml – Đức', 190000.0000, NULL, 150, N'Đức', NULL, NULL, NULL, NULL, N'Sản phẩm chăm sóc da của Alpifresh được dựa trên các chiết xuất từ sản phẩm thiên nhiên tại những vùng sinh thái sạch. Chiết xuất có khả năng điều trị và giải quyết các vấn đề về da do tác động của thời tiết.

Chăm sóc gia chuyên sâu, giúp da tránh khỏi tác động của môi trường, làm mềm, dưỡng ẩm cho da, nhẹ nhàng thấm sâu vào bên trong bề mặt da giúp da trở nên mịn màng, đàn hồi. Đặc biệt dưỡng ẩm giúp da không bị khô, nẻ trong điều kiện thời tiết hanh khô.', NULL, N'– Trước khi đi ngủ rửa sạch mặt bằng sữa rửa mặt.

– Để da mặt khô thì thoa một lớp kem dưỡng Alpi Fresh

– Sáng dậy bạn có thể cảm nhận ngay hiệu quả của kem.

– Để tăng hiệu quả, trước khi rửa mặt bằng sữa rửa mặt bạn nên đắp mặt nạ sữa chua mật ong,hoặc loại khác phù hợp với từng loại da.', NULL, 0.29, 1, N'Kem-dung-th-cream-Alpi-fresh-200ml-–-ec1.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (107, N'Kem dưỡng da tay Calliderm', 110000.0000, NULL, 299, N'Pháp', 150, NULL, NULL, NULL, N'– Dưỡng da tay Calliderm creme mains & ongles giàu dưỡng chất glycerin và keratin nuôi dưỡng và bảo vệ giúp da tay bạn luôn trắng và mịn màng
Cách sử dụng: Áp dụng lên vùng tay, bạn có thể áp dụng bất kỳ thời gian nào trong một ngày, massage lên từng ngón tay và cổ tay', NULL, NULL, N'', 0.14, 1, N'Kem-dung-da-tay-Calliderm-111.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (108, N'Xịt khoáng peru muối biển – The Face Shop', 160000.0000, NULL, 200, N'Hàn Quốc', NULL, N'The face shop', NULL, NULL, N'Dưỡng ẩm, bổ sung khoáng chất, rất tốt cho da nhờn…', NULL, NULL, NULL, 0.38, 1, N'xit-khoang-muoi-bien-the-face-shop-pure-water-facial-mist.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (109, N'Snow white cream – Kem dưỡng trắng da', 290000.0000, NULL, 120, N'Hàn Quốc', NULL, NULL, 50, NULL, N' – Là kem dưỡng với chức năng chính là làm trắng ,đều màu da, giảm tàn nhang, vết thâm, nám và giữ ẩm cho da căng mịn đây là một kem dưỡng trắng thực sự tốt để có 1 làn da trắng mịn , Không như những loại kem làm trắng thông thường khác Snow white cream có chứa Niacinamide (chất làm trắng an toàn ) nên các bạn yên tâm khi dùng sản phẩm này , sản phẩm đang rất Hot tại Hàn.', NULL, N'– Lấy 1 lượng vừa đủ —> Xoa đều lên vùng cần làm trắng —> Nhẹ nhàng thoa đều lên mặt cho đến khi lớp cream được thẩm thấu sâu vào trong da', NULL, 0.33, 1, N'Snow-white-cream-–-Kem-dung-trng-da1.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (111, N'Bộ Phấn Nước Ohui Ultimate Cover Cushion Moisture Special Set 4pcs', 950000.0000, N'OHUI', 100, N'Hàn Quốc', NULL, N'', NULL, NULL, N'– Chiffon- Ceramide TM: Dưỡng ẩm sâu và toàn diện

– Hoa mẫu đơn: Bổ xung ẩm cho da tức thì, giúp sạch sâu

– Dưỡng ẩm tối ưu và không gây kích ứng

– Duy trì độ ẩm cho da suốt ngày dài

-Da căng bóng mà không nhờn rít', N'– Thành phần độc đáo đến từ Hoa mẫu đơn, Hoa cúc dại, và Lavender

– Giúp giải tỏa căng thẳng mệt mỏi cho làn da, làm sạch da tận sâu trong lỗ chân lông nhưng vẫn êm dịu

– Công dụng cấp nước dạng phân tử làm mát da, làm dịu làn da mẫn cảm, và giảm mụn trên da', NULL, NULL, 0.26, 2, N'bo-phan-nuoc-ohui-ultimate-cover-cushion-moisture-special-set-4pcs-6.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (112, N'Kem nền BB Cream Face It Magic Cover 45ml The Face Shop', 350000.0000, N'The Face Shop', 150, N'Hàn Quốc', 45, NULL, NULL, NULL, N'– Ban đầu nó được sử dụng để giúp chữa lành các vùng da nhạy cảm sau thời kỳ trị mụn trứng cá.

– Sản phẩm này sau đó được giới thiệu tới châu Á, đặc biệt là Hàn Quốc, nơi các ngôi sao rất quan tâm tới việc trang điểm cho làn da trong suốt tự nhiên.

– Hiện BB cream đã trở thành sản phẩm làm đẹp không thể thiếu của mọi phụ nữ Hàn Quốc. Với Việt Nam, sản phẩm này cũng được chị em đánh giá cao, đặc biệt trong tiết trời mùa hè oi bức.

– Face It Magic Cover là sản phẩm BB cream với công thức thông minh và đa chức năng chứa những hạt dưỡng chất DNA được che chở bởi lớp màng bảo vệ sẽ tự động kích hoạt và thẩm thấu chất chống oxy hóa (Vitamin C, E) vào da khi da tiếp xúc với ánh nắng mặt trời.', NULL, N'– Rất đơn giản, bạn chỉ cần lấy một lượng vừa đủ B.B Cream chấm đều vùng trán, má, cằm, mũi, sau đó dùng bông mút tán đều khắp toàn mặt.

– Để che các khuyết điểm, lấy thêm một lượng BB Cream chấm lên vùng da có khuyết điểm, dùng bông mút dậm nhẹ.

– Sau khi dùng kem nền phủ qua một lớp phấn phủ để tạo lớp nền khô thoáng mịn màng và rạng rỡ suốt cả ngày.', NULL, 0.11, 2, N'Kem-nen-BB-Cream-Face-It-Magic-Cover-45ml-The-Face-Shop-11.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (113, N'Phấn nén cao cấp the face shop Myeonghan Miindo Two-way Cake', 420000.0000, N'The face shop', 99, N'Hàn Quốc', NULL, NULL, NULL, NULL, N'–  Che phủ những nếp nhăn và khéo léo lầm ẩn đi các dấu hiệu lão hóa trên da

–  Dùng được như phấn ướt cũng như phấn khô

–  Chỉ số chống nắng cao: SPF35 PA++

–  Giúp da sáng rạng ngời ngời, đều màu và mềm mượt hoàn thiện', NULL, NULL, NULL, 0.2, 2, N'Phn-non-cao-cp-the-face-shop-Myeonghan-Miindo-Two-way-Cake2.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (115, N'Chuốt mi Mascara collagen the face shop', 290000.0000, NULL, 100, N'Hàn Quốc', NULL, NULL, NULL, NULL, NULL, NULL, N'Dưới đây là những lời khuyên giúp bạn gái bảo quản và chải mascara sao cho đúng cách:

Làm sạch chổi đánh mascara

Trước khi chuốt mascara lên lông mi, bạn nên làm sạch chổi bằng nước tẩy trang và vải bông để loại bỏ hết những lớp mascara khô cứng còn dính lại trên đó.', NULL, 0.16, 2, N'chuot-mi-mascara-collagen-the-face-shop11.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (116, N'Chì kẻ lông mày 2 đầu lovely me:ex Design My EyeBrow', 105000.0000, NULL, 107, N'Hàn Quốc', NULL, NULL, NULL, NULL, N'– Designing Eyebrow Pencil #01 Light Brown – Màu Nâu sáng

– Designing Eyebrow Pencil #02 Gray Brown – Màu nâu xám

– Designing Eyebrow Pencil #03 Brown – Màu nâu ( Bán chạy )

– Designing Eyebrow Pencil #04 Black Brown – Màu nâu đen

– Designing Eyebrow Pencil #05 Dark Brown – Màu nâu tối

– Designing Eyebrow Pencil #06 Dark Gray – Màu xám tối', N'– Designing Eyebrow Pencil #01 Light Brown – Màu Nâu sáng

– Designing Eyebrow Pencil #02 Gray Brown – Màu nâu xám

– Designing Eyebrow Pencil #03 Brown – Màu nâu ( Bán chạy )

– Designing Eyebrow Pencil #04 Black Brown – Màu nâu đen

– Designing Eyebrow Pencil #05 Dark Brown – Màu nâu tối

– Designing Eyebrow Pencil #06 Dark Gray – Màu xám tối', N'Vặn chì lên khoảng 3mm rồi vẽ theo khuôn chân mày, sử dụng đầu chải để điều chỉnh lại cho chân mày gọn và bám đều màu.', NULL, 0.48, 2, N'Chi-ke-mat-va-chan-may-TheFaceShop-Designing-Eyebrow-Pencil-5-1.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (118, N'Kem trang điểm The Face Shop Power Perfection BB Cream (20ml)', 320000.0000, NULL, 38, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Làm sạch da mặt, thoa một lượng vừa đủ lên các vùng trên khuôn mặt và vỗ nhẹ cho dưỡng chất thẩm thấu vào da và giúp che đi khuyết điểm trên da, mang lại một làn da tự nhiên và mịn màng.

Có thể sử dụng thêm phấn phủ để lớp che phủ hoàn hảo và mịn đẹp nhất khi trang điểm đi làm hay đi tiệc.

', NULL, 0.3, 2, N'kem-nen-BB-Cream-Power-Perfection-20ml-Moi-The-Face-Shop-3-1.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (120, N'Kem Che Khuyết Điểm Face It Radiance Concealer Dual Veil The Face Shop
', 250000.0000, NULL, 89, NULL, NULL, N'The faceshop.', NULL, NULL, NULL, NULL, N'Dùng một lượng kem che khuyết điểm thích hợp lên vùng da có khuyết điểm, dùng ngón tay miết nhẹ, tản đều kem lan rộng thành lớp mỏng sao cho thật tự nhiên. Kết thúc bằng phấn bột để hoàn tất việc trang điểm', NULL, 0.22, 2, N'Kem-Che-Khuyet-Diem-Face-It-Radiance-Concealer-Dual-Veil-The-Face-Shop111-3-1.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (121, N'Phấn phủ FENNEL Romance chính hãng Nga', 150000.0000, NULL, 100, N'Nga', NULL, N'FENNEL', NULL, NULL, NULL, N'Phấn phủ chiết xuất từ gạo Fennel Romance- an toàn, dịu nhẹ với làn da

– Phấn phủ là một trong những yếu tố quan trọng quyết định đến 80% thanh côn trong việc trang điểm của bạn

– Ngoài ra còn có tác dụng che boát những khuyết điểm trên làn da bạn,Dưỡng chất vitamin có lợi cho da sẽ giúp bạn có một làn da đẹp và mịn màng tự nhiên.', N'Phủ cuối cùng trong bước trang điểm nền.', NULL, 0.2, 2, N'Phn-ph-FENNEL-Romance-chonh-hong-Nga1.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (123, N'Phấn má lovely me:ex pastel cushion blusher', 190000.0000, NULL, 100, N'Hàn Quốc', NULL, N'The Face Shop', NULL, NULL, N'Lovely Meex Cushion Blusher

– Với mỗi tông màu trang điểm, tươi tắn tự nhiên hay trầm mặc sắc nét, bạn lại có một cách đánh má hồng khác nhau.

– Tuy theo gương mặt góc cạnh hay tròn trịa, bạn cũng có thể lựa kiểu đánh má hồng phù hợp với mình.

-Hãy cùng Lovely Me:ex Pastel Cushion Blusher khám phá những cách đánh má hồng thông dụng nhất, mang đến gương mặt tươi tắn tự nhiên cho phái đẹp mỗi ngày.', NULL, NULL, NULL, 0.29, 2, N'Phn-mo-lovely-meex-pastel-cushion-blusher-22.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (124, N'Phấn má Dear Me Petite Blusher – Tonymoly', 190000.0000, NULL, 100, N'Hàn Quốc', NULL, N'Tonymoly', NULL, NULL, N'– Phấn má hồng chứ lượng bột mềm mại, màu sắc nhẹ nhàng tinh tế và khả năng bám dính cao, đem lại vẻ đẹp tự nhiên khi sử dụng.

– Với 3 màu tự nhiên và trẻ trung, thiết kế đẹp mắt và đính nơ xinh xắn, cho bạn dễ dàng lựa chọn theo sở thích.

#01 : Hồng tự nhiên và đáng yêu

#02 : Hồng đào duyên dáng

#03 : Cam trẻ trung

', NULL, NULL, NULL, 0.26, 2, N'dearme-blusher03.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (125, N'Phấn phủ nén Face It Collagen Ex Two Way Cake SPF30 PA+++ The Face Shop', 380000.0000, NULL, 120, NULL, NULL, NULL, NULL, NULL, N'– Đây là sản phẩm phấn nén cao cấp 2 trong 1 vừa là nền, vừa là phủ với thành phần collagen, có tác dụng làm da săn chắc, căng mịn, kết hợp với thành phần chống nắng SPF30 PA+++ tạo nên một lớp che phủ tối ưu, cho bạn một gương mặt hoàn hảo và rạng rỡ.

– Với thành phần Collagen, có tác dụng làm da săn chắc, căng mịn, kết hợp với thành phần chống nắng tạo nên một lớp che phủ tối ưu, cho bạn một gương mặt hoàn hảo và rạng rỡ. Tuy không che khuyết điểm tối ưu như những sản phẩm chuyên che khuyết điểm khác nhưng nó sẽ chúng giúp bạn kiềm dầu và giảm nhờn trên các vùng da nhạy cảm.', NULL, N'Dùng sản phẩm này sau khi đã hoàn tất lớp trang điểm kem lót, nếu tốt hơn thì có lớp kem nên sẽ giúp đều màu tone hơn.', NULL, 0.2, 2, N'Phn-ph-non-Face-It-Collagen-Ex-Two-Way-Cake-SPF30-PA-The-Face-Shop11.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (126, N'Bút che khuyết điểm Like A Movie Star Karadium', 240000.0000, NULL, 100, N'Hàn Quốc', NULL, N'Karadium', NULL, NULL, N'– Karadium có thêm dòng này rất hay. Che khuyết điểm và highlight trong cùng 1 cây bút

– Like A Movie Star Main Actress Cover Concealer là che khuyết điểm dạng bút lông (brush type). – Điểm khác biệt là bạn có thể nhân tiện sử dụng highlight, tạo khối cho gương mặt luôn 1 thể!

– Thiết kế độc đáo, chỉ cần ấn đầu trên (như xài bút chì thay ngòi ý) là có được lượng kem vừa đủ, dễ dàng điều chỉnh tùy theo mục đích makeup

– Chất kem siêu mịn, khi apply cho cảm giác mượt mà, dễ tán đều, không còn cục

– Cực lâu trôi và ko thấm nước nữa

', N'Thành phần tự nhiên có chứa bột khoáng thiên nhiên an toàn, lành tính, phù hợp với mọi loại da.', N'– Sau khi đánh kem nền hoặc BB cream, dùng bút Highlight chấm lên các vùng xương mặt dễ bắt sáng như trán, sống mũi, gò má, chóp cằm,… rồi tán mỏng kem ra để có sự đều màu tự nhiên.

– Có thể dùng ở rìa môi, bọng mắt và viền chân mày để làm sáng vùng da sẫm màu ở các khu vực đó.', NULL, 0.42, 2, N'Byt-che-khuyt-dim-Like-A-Movie-Star-Karadium.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (127, N'Bút dạ kẻ mắt A’pieu maker pen liner', 180000.0000, NULL, 120, N'Hàn Quốc', NULL, N'A’pieu', NULL, NULL, N'– Eye Define Pen Liner A’Pieu là kẻ mắt nước dạng cọ, mảnh và dễ vẽ, không trôi, không lem, không gây kích ứng vùng da quanh mắt, dễ dàng lau sạch bằng dung dịch tẩy trang chuyên cho mắt môi.', N'– Bút kẻ mắt A’pieu Marker Pen Liner có 2 tone màu : Đen hoặc nâu. Các bạn đặt hàng Shop lamdepz.com hãy xác nhận màu các bạn muốn mua nhé!', N'– Bước 1: Các bước trang điểm cho toàn khuôn mặt, với các lớp phấn (phần lót, nền, che khuyết điểm…) phủ cả lên phần trên mi mắt.But da ke mat A’pieu maker pen liner (3)

– Bước 2: Kẻ đường viền sát chân mi trên, nếu vẽ đuôi mắt, bạn kẻ đường viền đó kéo dài và hướng lên trên khi đến đuôi mắt.But da ke mat A’pieu maker pen liner (5)

– Bước 3: Kẻ đường khác tạo viền ngoài phần mắt vẽ. Đường viền này kéo từ đầu mắt nối với đường hướng lên cuối đuôi mắt.

– Bước 4: Tô kín phần bên trong hai đường viền bạn vừa vẽ.', NULL, 0.25, 2, N'kemat1.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (128, N'Chải mi Freshian Big Mascara The Face Shop', 150000.0000, N'The Face Shop', 100, N'Hàn Quốc', NULL, NULL, NULL, NULL, NULL, NULL, N'Bước 1: Dùng đồ bấm mi để có làn mi cong như ý

Bước 2: chải mascara từ trên xuống để lấy đi các hạt màu phấn mắt và mực dàn trải đều, giúp sợi dày và chắc hơn.

Bước 3: từ từ chuốt mascara theo đường zíc – zắc từ dưới lên để mascara bám đều trên mi và cho bạn đôi mi cong tự nhiên, đồng thời giữ độ cong lâu hơn.', NULL, 0.34, 2, N'Freshan-big-mascara-volume-review-111-510x511.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (130, N'Chì kẻ lông mày phẩy sợ 4D music flower 68', 120000.0000, N'Music Flower', 44, N'Hong Kong', NULL, NULL, NULL, NULL, N'– Bút chì mày kiểu 4D phẩy sợi điêu khắc cho đôi mày,chỉ với 1 nét bút tạo lên 4 sợi mày,không cần đến tiệm mỹ phẩm vẫn sở hữu 1 đôi chân mày đẹp tự nhiên như phun thêu ở tiệm.

– Chì kẻ lông mày phẩy sợ 4D music flower 68 thiết kế đặc biệt với đầu chải 4 nhánh,cho hàng lông mày trông thật tự nhiên,các sợ lông mày như hòa lẫn vơi sợ lông mày thật

– Đơn giản rất dễ sử dụng , chỉ cần 1 bước tô vẽ là có ngay đôi chân mày tự nhiên nhất,mà ko tốn nhiều thời gian.', N'– Sản phẩm chứa các thành phần từ thực vật tốt cho da, không gây kích ứng da', N'– Dùng Chì kẻ lông mày phẩy sợ 4D music flower 68 như các chì mày bình thường các bạn nhé', NULL, 0.33, 2, N'Chi-ke-long-may-phay-so-4D-music-flower-68-9.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (134, N'Chì Kẻ Mắt Chống Thấm Karadium Waterproof Eyeliner Pencil Black', 170000.0000, NULL, 111, N'Hàn Quốc', NULL, N'Karadium', NULL, NULL, N'– Trong quá trình Make up, đôi mắt chính là bộ phận dành nhiều sự quan tâm nhất của các bạn gái, từ việc chọn mua một sản phẩm chuyên dụng trong make up cho mắt đảm bảo an toàn, không gây hại tới vùng da mỏng manh này cho tới làm thế nào để khi make up, đôi mắt hiện lên thật ấn tượng, cuốn hút và đẹp nhất.

– Với uy tín của một thương hiệu đã tồn tại lâu năm trên thị trường làm đẹp không chỉ ở Hàn Quốc mà còn trên toàn thế giới, Karadium cho ra đời dòng sản phẩm dùng trong make up mắt, Chì Kẻ Mắt Chống Thấm Nước Karadium Waterproof Eyeliner Pencil Black.', N'– Cyclopentasiloxane, Cyclomethicone, Polyethylene, Trimethysiloxysilicate, Dimethicone/vinyl Dimethicone Crosspolymer, Ceresin, Sorbitan Olivate, Microcrystalline Wax, Beewax, Hydrogenerated Coco-Glycerides, BHT, Mica, Cl 77499, Carbon Black.

', N'– Kẻ một đường chì mảnh dọc theo mi mắt trên, kẻ nét mảnh ở phía hốc mắt, hơi cong và đậm dần về phía đuôi mắt để tạo vẻ mềm mại.', NULL, 0.2, 2, N'Chi-ke-vien-mat-MISSHA-super-extreme-waterproof-soft-pencil-eyeliner-auto-7-1.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (136, N'Dạ kẻ mắt Ink Graffi Brush Pen Liner The Face Shop', 190000.0000, NULL, 222, N'Hàn Quốc', NULL, N' The Face Shop', NULL, NULL, NULL, NULL, N'Mẫu thiết kế mới thay thế cho Dạ kẻ mắt Ink Graffi Brush Pen Liner The Face Shop.

Bút lông kẻ viền mắt với công thức không lem và không trôi giúp việc tạo những đường viền mắt sắc sảo và gợi cảm thật dễ dàng, cho đôi mắt vẻ đẹp cuốn hút, và sắc nét hơn. Đầu bút lông mềm rất dễ kẻ!', NULL, 0.16, 2, N'da-ke-mat-ink-graffi-brush-pen-liner-the-face-shop-1__46125_std.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (138, N'Dạ Kẻ Mắt Không Thấm Nước Catrice Eye Matic Dip Liner', 150000.0000, NULL, 200, NULL, NULL, NULL, NULL, NULL, N'– Catrice là hãng mỹ phẩm đến từ Đức dòng sản phẩm được đề cao về chất lượng và giá cả vô cùng nhẹ nhàng. Vừa cho ra đời dòng sản phẩmKẻ Mắt Catrice Eye Matic Dip Liner mang trong mình chất lượng vượt trội.

– Lên màu đen sắc xảo giúp đôi mắt xinh đẹp và to tròn long lanh như bạn mong muốn, tăng thêm phần sắc sảo, tinh tế, chính xác và sắc nét

– Thiết kế đầu cọ siêu mảnh – chỉ 0.1mm, cho đường kẻ siêu nét.', NULL, N'– Dạ Kẻ Mắt Không Thấm Nước Catrice Eye Matic Dip Liner

– Sau khi đánh màu mắt, dùng bút kẻ theo đường mi mắt, kẻ mỏng hay dày, kẻ đuôi mắt dài hay ngắn là tùy theo ý thích, phong cách của bạn.', NULL, 0.14, 2, N'Da-Ke-Mat-Khong-Tham-Nuoc-Catrice-Eye-Matic-Dip-Liner-9.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (139, N'Gel dưỡng làm dài mi Ấn Độ Careprost', 350000.0000, NULL, 200, N'Ấn Độ', NULL, N' Công ty dược Sun Pharmacueticals Industries Ltd (India)', NULL, NULL, NULL, NULL, N'1- Rửa mặt sạch và loại bỏ các lớp tẩy trang ở vùng mắt, dùng khăn giấy thấm khô vùng mắt và lông mi.

2- Dùng 1 cọ đầu nhỏ (cọ môi hoặc cọ eyeliner) nhỏ 1 giọt vào đầu cọ, sau đó bôi lên mí mắt phần sát gốc lông mi (cả trên và dưới). Ngày bôi 1 lần vào sáng hoặc tối.

-Lưu ý, sau khi bôi sản phẩm lên lông mi giữ cố định mí mắt trong vài giây và không nên chớp mắt ngay. Hạn chế gel vào trong mắt vì có thể gây kích ứng với 1 số người.', NULL, 0.29, 2, N'j8Nl2a_simg_ab1f47_350x350_maxb.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (140, N'Gel vá da che mụn, sẹo thần thánh Not4U Real Skin Patch – Hàn quốc', 250000.0000, NULL, 111, N'Hàn Quốc', NULL, NULL, NULL, NULL, N'– Đúng như tên gọi, Real Skin Patch giúp người dùng tạo ra một lớp da thứ 2, che phủ hoàn hảo những phần da có vấn đề như mụn, thâm, lỗ chân lông to và bảo vệ làn da khỏi những tác động bên ngoài (đặc biệt là ngăn ngừa vi khuẩn xâm nhập vết mụn gây bội nhiễm khi trang điểm, giúp tình trạng mụn không bị nặng hơn). Có thể nói dòng sản phẩm này sẽ “vá” lại làn da chưa được đẹp của bạn.

– Real Skin Patch là một sản phẩm đến từ xứ sở Kim Chi, nơi nổi tiếng với hàng loạt những sản phẩm trang điểm độc lạ. Vừa mới được hãng NOT4U ra mắt gần đây, loại gel che khuyết điểm này đã thực sự gây sốt cho các tín đồ yêu thích làm đẹp

– Không hề giống với bất kì một loại che khuyết điểm nào bạn từng thấy trước đây, Real Skin Patch có cấu trúc dạng gel trong suốt, tương tự như các loại hồ dán giấy mà bạn thường dùng

– Real Skin Patch có kết cấu ở dạng lỏng trong suốt và kết dính như keo. Với độ trong suốt và kết dính này, gel sẽ không gây lộ, kết dính tốt với sản phẩm che phủ bước kế tiếp và lâu trôi suốt ngày dài.', NULL, N'– Gel vá da che mụn, sẹo thần thánh Not4U Real Skin Patch – Hàn quốc

– Bôi gel lên vùng da có khuyết điểm, đợi khoảng 3~5 phút để gel khô lại hoàn toàn. Lúc này phần da có khuyết điểm của bạn sẽ biến mất vì đã được che đi bởi một lớp màng mỏng, chỉ khi lấy tay cạy thì mới tróc ra được.

–  Sau đó sử dụng các loại kem lót, kem nền dễ dàng, vì lớp bề mặt lúc này đã mịn màng và đều màu hơn nhờ Real Skin Patch. Các loại kem phấn sau đó sẽ bám lên trên bề mặt lớp gel tạo ra vẻ láng mịn không ngờ; những nốt mụn, sẹo rỗ đều được che đi một cách cực kì tự nhiên.

– Khi muốn tẩy trang bạn chỉ cần cạy cho lớp màng bong ra là được, tuy nhiên cũng đừng quên làm sạch da thật kĩ vì lớp màng này nếu để lâu cũng có thể gây bí da đấy.', NULL, 0.24, 2, N'Gel-va-da-che-mun-seo-than-thanh-Not4U-Real-Skin-Patch-Han-quoc-5.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (142, N'Gel kích mí Pro Eyelashes Eyelash Glue The Face Shop', 120000.0000, NULL, 200, N'Hàn Quốc', NULL, N'The face shop', NULL, NULL, NULL, NULL, NULL, NULL, 0.29, 2, N'Gel-kich-mi-Pro-Eyelashes-Eyelash-Glue-The-Face-Shop-1.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (144, N'Huyết thanh 8in1 Eveline dưỡng dài và dày mi', 200000.0000, NULL, 110, N'Nga', 10, NULL, NULL, NULL, NULL, NULL, N'– Dùng như tinh chất dưỡng mi: chuốt mi từ gốc đến ngọn mi đã sạch và khô hàng ngày trước khi đi ngủ.', NULL, 0.5, 2, N'Huyet-thanh-8in1-Eveline-duong-dai-va-day-mi-5.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (146, N'Kẻ Dạ Mắt Không Trôi Cellio Miracle Waterproof', 150000.0000, NULL, 200, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Trong quá trình sử dụng, có thể khả năng bảo quản sản phẩm kém mà bạn có thể gặp phải trường hợp kẻ dja mắt bị khô và vón cục.

– Bạn có thể sử dụng xịt khoáng, xịt trực tiếp vào đầu cọ kẻ mắt, chờ một ít phút các sợi tơ mảnh của chúng sẽ mềm mượt trở lại và hết bị khô.', NULL, 0.23, 2, N'Ke-Da-Mat-Khong-Troi-Cellio-Miracle-Waterproof-22.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (147, N'Jelly Pact – The Face Shop – Phấn phủ dạng thạch', 400000.0000, NULL, 60, N'Hàn Quốc', NULL, N'The Face Shop', NULL, NULL, N'– JELLY PACT SPF50 PA+++ là phấn phủ dạng thạch mới nhất của The Face Shop với chức năng ba trong một, dưỡng da + kem nền + phấn phủ, chứa nhiều thành phần dưỡng ẩm, che phủ lỗ chân lông, làm sạch chất nhờn, giúp da sạch và mịn màng.

– Phấn phủ Jelly Pact The Face Shop với cấu trúc dạng kem phấn siêu mịn, được xem là tổng hợp ưu điểm của phấn nén và kem nền siêu mịn, cấu trúc tự khô, mang lại làn da căng bóng hoàn hảo không tì vết chỉ với một bước trang điểm duy nhất', NULL, NULL, NULL, 0.16, 2, N'Jelly-Pact-–-The-Face-Shop-–-Phn-ph-dng-thch1.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (148, N'Kẻ mắt Face It Extreme Brush Pen Eyeliner', 220000.0000, NULL, 50, N'Hàn Quốc', NULL, NULL, NULL, NULL, N'– Tạo đường viền sắc nét chỉ với một lần sử dụng, Viền mắt dạng bút chống trôi trong nước và chống lem trong dầu

– Bút lông kẻ viền mí Extreme mang đến cho bạn một nét vẽ tinh tế, các hoạt chất mềm mại và linh hoạt, dễ dàng tạo một đường viền rõ nét, thật dễ dàng cho người mới bắt đầu sử dụng.

– Face It Extreme Brush Pen Eyeliner không trôi có độ bền màu lâu suốt ngày dài, cho đường viền đôi mắt bạn luôn đen nhánh, quyến rũ!

– Bút dạ kẻ mắt nước thường được các chuyên gia trang điểm khuyên dùng để có được một đôi sắc sảo và ấn tượng hơn.

– Tuy nhiên, việc kẻ viền mắt bằng bút dạ rất khó khăn trong những lần đầu tiên khiến bạn muốn từ bỏ.', NULL, N'– Với bút chì kẻ mắt, bạn nên bắt đầu đường kẻ từ giữa mắt ra đến đuôi, sau đó mới vẽ thật nhẹ và mảnh ở phần đầu mắt, nối với đường kẻ ban đầu. Tiếp theo, nhấn đậm một chút ở đuôi. Cuối cùng là dùng tăm bông sửa lại những phần viền chưa đều.', NULL, 0.25, 2, N'K-mt-Face-It-Extreme-Brush-Pen-Eyeliner-2-1.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (150, N'Kem dưỡng da trị thâm và vùng mắt secret key starting treatment eye cream', 320000.0000, NULL, 100, N'Hàn Quốc', NULL, NULL, 50, NULL, N'– Bạn có biết người phụ nữ Nhật làm rượu Sake , dù tuổi tác đã cao, đôi bàn tay của họ vẫn tươi trẻ .

– Người ta tìm hiểu và biết đươc là do trong quá trình làm rượu, bàn tay tiếp xúc với các loại men, trong đó Galactomyces – loại men có chứa nhiều vitamin, khoáng chất và các loại axit amino, rất tốt cho kết cấu da giúp da tươi trẻ hơn rất nhìu và thời chất này còn giúp da sáng lên nhanh chóng ^^

– Em kem dưỡng mắt nì chứa trên 80% Galactomyces từ bộ lọc đã lên men giảm thiểu các thành phần gây hại cho mắt và tăng cường tối đa tác động tích cực cho vùng da mắt, dưỡng vùng da quanh mắt hoàn hảo, tạo độ da căng mịn, xóa mờ các nếp nhăn, vết thâm quầng <3', N'– Ceramide, Fermented Galactomyces Filtrates, Bifida, Rose Extracted, Niacinamide, Adenocine Contained', N'– Sử dụng vào buổi tối trước khi ngủ là hiệu quả nhất. Lấy 1 lượng nhỏ lên ngón tay áp út và thoa lên vùng da quanh mắt, vùng da bị nếp nhăn, thâm quầng mắt. Sau đó, cũng dùng ngón áp út vỗ nhẹ nhàng để giúp kem thẩm thấu sâu.
Bạn nhớ dùng kem dưỡng mắt trước khi dùng kem dưỡng cho toàn vùng da mặt nhé!!', NULL, 0.19, 2, N'Kem-duong-da-tri-tham-va-vung-mat-secret-key-starting-treatment-eye-cream-81.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (151, N'Che khuyết điểm 5 ô catrice allround concealer palette', 180000.0000, N'CATRICE COMESTIC', 100, N'USA', NULL, NULL, NULL, NULL, N'– Kem che khuyết điểm Catrice Comestic – che phủ các khuyết điểm trên khuôn mặt một cách hoàn hảo nhất, đặc biệt là đối với những làn da mụn, thâm, không đều màu.

– Make up được xem là một trong những cách cơ bản để bạn thay đổi diện mạo của mình. Hình ảnh của bạn sẽ được thay đổi sau khi make up, bạn sẽ trở nên xinh đẹp hơn trong mắt mọi người nếu như không make up.

– Một trong những bước quan trọng của make up là che khuyết điểm vì trên khuôn mặt đôi khi sẽ có những khuyết điểm nhỏ như mụn, tàn nhang, thâm mắt…Cũng giống như kem nền cả hai đều giúp làm đều sắc tố da và đem lại cho chúng ta một lớp nền hoàn hảo.', NULL, NULL, NULL, 0.22, 2, N'Che-khuyet-diem-5-o-catrice-allround-concealer-palette-4.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (152, N'Che khuyết điểm Easy Cover Stick Concealer The Face Shop', 130000.0000, N'The Faceshop', 100, N'Hàn Quốc', NULL, NULL, NULL, NULL, N'Easy Cover Stick Concealer là sản phẩm kem che khuyết điểm dạng thỏi giúp làm mờ các quầng thâm, đốm mụn, vùng da không đều màu.

Thiết kế dạng bút vặn thông minh của Easy Cover Stick Concealer sẽ khiến bạn cảm thấy cực kì tiện lợi và nhỏ xinh khi mang theo

Những vết thâm trên mặt của teens đa phần đều do mụn trứng cá gây ra. Đó có thể là hậu quả của việc chữa trị mụn không đúng cách, thói quen xấu nặn mụn ..vv..', NULL, N'Dùng một lượng kem che khuyết điểm thích hợp lên vùng da có khuyết điểm, dùng ngón tay miết nhẹ, tản đều kem lan rộng thành lớp mỏng sao cho thật tự nhiên. Kết thúc bằng phấn bột để hoàn tất việc trang điểm.', NULL, 0.15, 2, N'Che-khuyt-dim-Easy-Cover-Stick-Concealer-The-Face-Shop1.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (154, N'Che khuyết điểm Etude House Surprise Stick Concealer – Hàn quốc', 180000.0000, NULL, 100, N'Hàn Quốc', NULL, N'Etude house', NULL, NULL, N'– Tinh chất che khuyết điểm Etude House Surprise Stick Conceale giúp che giấu sự mệt mỏi và khuyết điểm trên gương mặt, cho bạn một lớp nền hoàn hảo và cải thiện sắc da hiệu quả.

– Tinh chất mật ong giúp che phủ khuyết điểm hiệu quả, đặc biệt là những khuyết điểm ở vùng mắt.

– Ngăn dầu và mồ hôi trong thời gian dài, bảo vệ lớp trang điểm suốt cả ngày.', NULL, N'– Chấm trực tiếp sản phẩm lên vùng da cần che khuyết điểm. Dùng ngón tay hoặc cọ tán đều để sản phẩm tiệp với màu da.', NULL, 0.3, 2, N'Che-khuyo´t-diom-Etude-House-Surprise-Stick-Concealer-–-Han-quc-1.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (155, N'Che khuyết điểm môi Kissful lip care concealer', 140000.0000, NULL, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'– Dùng để lót môi trước khi đánh son trang điểm
– Dùng tăm bông thoa một lượng trực tiếp cho phía mép ngoài của môi, lấy tay điều chỉnh và tan đều vào vùng giữa môi, giúp tán đều kem và tránh vón cục.', NULL, 0.21, 2, N'Che-khuyt-dim-mui-Kissful-lip-care-concealer1.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (156, N'Chì Kẻ Mày Innisfree Auto Eyebrow Pencil – Hàn quốc', 100000.0000, NULL, 100, N'Hàn Quốc', NULL, N'innisfree', NULL, NULL, N'– Đây là sản phẩm khi ra mắt đã nhận được rất nhiều sự khen ngợi từ khách hàng, cho dù bạn là người trang điểm chuyên nghiệp hay mới tập đều có thể sử dụng sản phầm Innisfree Eco Eyebrow Pencil một cách dễ dàng. Sản phẩm có 2 đầu: một đầu kẻ chân mày và một đầu chổi.

– Ở đầu kẻ chân mày được thiết kế dạng ovan (bầu dục), chất bột mềm mịn rất dễ dàng trang điểm, tạo độ nét cao nhưng trông vẫn tự nhiên cho người sử dụng. Đầu chổi thiết kế hình xoắn ốc giúp lông mày được định hình lại và cho cái nhìn tự nhiên hơn.

– Đây là sản phẩm khi ra mắt đã nhận được rất nhiều sự khen ngợi từ khách hàng, cho dù bạn là người trang điểm chuyên nghiệp hay mới tập đều có thể sử dụng sản phầm Innisfree Eco Eyebrow Pencil một cách dễ dàng. Sản phẩm có 2 đầu: một đầu kẻ chân mày và một đầu chổi.', NULL, N'– Dùng đầu kẻ chân mày vẽ lên những vùng chân mày bị trống hoặc trông nhợt nhạt.

– Dùng đầu chổi chải lông mày từ đầu đến cuối đuôi để tạo một cái nhìn tự nhiên.', NULL, 0.2, 2, N'Chi-Ke-May-Innisfree-Auto-Eyebrow-Pencil-Han-quoc-2.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (157, N'Cọ đánh kem nền Thefaceshop – Daily Beauty Tools Foundation Brush', 180000.0000, NULL, 120, N'Hàn Quốc', NULL, N'Thefaceshop', NULL, NULL, N'– Được làm từ những sợi lông cao cấp, mềm mại cho làn da, rất bền và tạo hiệu ứng đẹp nhất khi bạn đánh nền trang điểm.

– Daily Beauty Tools Foundation Brush là cọ đánh kem nền của thương hiệu Thefaceshop, giúp bạn có lớp nền mềm mỏng mịn, hoàn hảo nhất

– Thiết kế của cọ đánh kem nền Daily Beauty Tools Foundation Brush được làm từ những sợi lông cao cấp, mềm mại cho làn da, rất bền và tạo hiệu ứng đẹp nhất khi bạn đánh nền trang điểm

– Các chuyên gia thường khuyên phái đẹp chúng mền nên làm quen với việc sử dụng cọ mỗi khi đánh nền, chúng sẽ tán đều kem mỏng mịn ra khắp mặt, che giấu lỗ chân lông hiệu quả và tiết kiệm kem nền hơn rất nhiều', NULL, NULL, NULL, 0.17, 2, N'C-donh-kem-nn-Thefaceshop-–-1-1.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (158, N'Bàn chải đánh răng Xyldent Black Crystal Feeling', 35000.0000, NULL, 300, N'Hàn Quốc', NULL, N'Xyldent', NULL, NULL, N'– Xyldent là thương hiệu mỹ phẩm đến từ Hàn Quốc, chuyên cung cấp các sản phẩm chăm sóc cơ thể, làm đẹp hiệu quả cho người tiêu dùng. Với các thành phần từ tự nhiên an toàn với sức khỏe, Xyldent nhận được sự tin dùng của đông đảo người tiêu dùng trong nước và quốc tế.

– Các thương hiệu mỹ phẩm Hàn Quốc luôn được phái đẹp tin dùng, vì bất kỳ người phụ nữ nào cũng mơ ước có được làn da trắng sáng, mịn màng như các ngôi sao thần tượng Hàn Quốc. Hiểu được mong ước đó, chúng tôi giới thiệu các bước chăm sóc hiệu quả từ da đến tóc với nhiều sản phẩm làm đẹp, dưỡng da, nhuộm tóc, trắng răng… để bạn tự tin làm đẹp cùng bí quyết của các ngôi sao, mang đến cho bạn sự tự tin tuyệt đối về ngoại hình vì được chăm sóc trọn vẹn và đúng cách.

– Bàn chải đánh răng Xydent Black Crystal với sợi lông siêu mảnh nhỏ 0.01mm và cấu trúc thiết kế thông minh, giúp loại bỏ vết ố, vôi răng và những vết ngoại lai bám trên bề mặt răng, cho bạn một hàm răng chắc khỏe và hơi thở thơm mát', NULL, N'– Đặt bàn chải 45 độ so với trục của răng, hướng bàn chải theo hướng từ ngoài vào trong theo kiểu xoay tròn', NULL, 0.23, 3, N'Ban-chai-danh-rang-Xyldent-Black-Crystal-Feeling-3.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (161, N'Bông Tẩy Trang Miniso 180 Miếng nhật bản – Only The Purest', 80000.0000, NULL, 200, N'Nhật Bản', NULL, NULL, NULL, NULL, N'– Miniso là thương hiệu tiêu dùng bán lẻ, có trụ sở đặt tại Tokyo Nhật Bản. Được thành lập bởi nhà thiết kế tài năng Miyake Jyunya và thương nhân người Trung Quốc – ông Ye Guofu. Hoạt động từ năm 2013, đến nay Miniso đã và đang đầu trong lĩnh vực hàng tiêu dùng ứng dụng hàng đầu trên thế giới.

– Tẩy trang luôn là một bước quan trọng bậc trong makeup. Cho dù các gái có đầu tư mĩ phẩm đắt tiền hot hit dạng khủng như ski II, son CL, hoặc dùng mĩ phẩm handmade mà mỗi tối trước khi đi ngủ không tẩy trang sạch thật sự thì làn da của các gái vẫn bị bạn mụn đến thăm thường xuyên đấy nhé. Vì thế, đầu tư một khoản xứng đáng cho bông tẩy trang là không bao giờ thừa đâu ạ. Bông tẩy trang Miniso được làm từ chất liệu Cotton tinh khiết có bề mặt mềm mại, mịn màng, không gây tổn thương, trầy xước khi tiếp xúc với da. Miếng bông thấm hút dung dịch tốt hơn, làm sạch da hiệu quả hơn, giúp da luôn láng sạch, mịn màng.', NULL, N'– Thấm miếng bông với dung dịch tẩy trang và nhẹ nhàng thoa đều lên mặt

– Bảo quản nơi khô ráo, thoáng mát, tránh ánh nắng trực tiếp và nhiệt độ cao', NULL, 0.3, 3, N'Bong-Tay-Trang-Miniso-180-Mieng-nhat-ban-Only-The-Purest-5.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (162, N'Dầu gội xả Haneda collagen siêu phục hồi tóc yếu và hư tổn nặng', 550000.0000, NULL, 10, NULL, NULL, N'HANEDA', NULL, NULL, N'– Dầu gội Haneda giúp làm sạch nhẹ nhàng,lý tưởng cho tóc đã qua hóa chất.

– Dầu xả Haneda giúp cân bằng độ PH,cung cấp dưỡng chất, giảm tóc gãy rụng, xơ rối.

– Gội-Xả Haneda sẽ làm cho tóc bạn siêu mềm và bóng mượt ngay từ lần sử dụng đầu tiên cùng với mùi thơm cực kì quyến rũ lưu lại cực lâu trên tóc tới 36 tiếng.', N'– Sản phẩm chứa collagen và một loại các chất chiết xuất từ thực vật , vitamin, acid amin,…, làm cho người dùng được cải thiện từ sâu bên trong cấu trúc sợi tóc, thêm độ ẩm và chất dinh dưỡng cần thiết, độ ẩm và tái taho kỹ lưỡng của tóc bị hư hỏng, nhanh chóng khôi phục sức khoẻ mái tóc làm cho mái tóc mềm mại, sáng bóng,dễ bảo trì

– Cho kết cấu mái tóc của bạn và độ đàn hồi, cung cấp dưỡng chất cân bằng P/H trả lại sự mềm mượt bồng bềnh tự nhiên của mái tóc, chống xơ rối giảm thiểu tóc gãy rụng.

– Dầu xả Haneda giúp cân bằng độ PH,cung cấp dưỡng chất, giảm tóc gãy rụng, xơ rối.', N'– Đây là cặp dầu gội cân bằng cho mái tóc của bạn, đã dùng dầu gội thì phải dùng dầu xả, dầu gội có tác dụng tẩy bụi bẩn cho mái tóc bạn và làm mở các biểu bì tóc, chính vì vậy khi gội

– Đầu xong bạn phải dùng dầu xả để khép biểu bì làm cho biểu bì xếp nếp lại với nhau một cách tuần tự để giữ lại độ ẩm cho sợi tóc và dưỡng tóc làm cho tóc bạn chắc khỏe đàn hồi mạnh.

– Dầu gội haneda COLLAGEN sẽ làm cho tóc bạn siêu mềm mượt ngay từ lần đầu tiên.

– Những mái tóc khô sơ, nát, yếu, chẻ ngọn gội vài 3 lần mái tóc của bạn sẽ cực kỳ chắc khỏe hoàn toàn trở lại như lúc đầu.', NULL, 0.22, 3, N'dau-goi-xa-haneda-collagen-cuu-tinh-cho-mai-toc-xo-roi-yeu-va-rung-nhieu0-20012016152937.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (163, N'Dầu gội xả L’ORÉAL ELSEVE 200ml cho tóc xơ – Pháp', 280000.0000, NULL, 20, N'Pháp', 200, NULL, NULL, NULL, N'– Trong thế giới tẩy trang , có lẽ tẩy trang dạng dầu được nhiều chị em , đặc biệt là các cô nàng châu Á tin dùng nhất . Bạn không cần lách cách bông băng lau lau quệt quệt như dạng nước , cũng không cần thoa chán chê mới sạch lớp trang điểm như dạng kem .

– Với dạng oil , bạn chỉ mất chưa đến 5 phút , mọi thứ phấn son trên khuôn mặt bạn đều tan chảy . Hôm nay Sagi shop giới thiệu đến các bạn loại tẩy trang dạng oil đến từ thương hiệu bình dân của Hàn Quốc – Rice Water Cleansing light oil The Face Shop.

– Dễ dàng làm sạch lớp makeup trên da, kể cả những lớp trang điểm lâu trôi, waterproof, Rice Water Cleansing light oil nhẹ nhàng làm sạch bụi bẩn từ sâu trong da, kể cả lớp tế bào chết, loại bỏ luợng bã nhờn sót lại.', N'– ISOPROPYL MYRISTATE . CAPRYLIC/CAPRIC TRGLYCERIDE . SORBETH-30 TETRAOLEATE . POLYGLYCERYL-10 DIISOSTEARATE . ORYZA SATIVA (RICE) BRAN OIL . SIMMONDSIA CHINENSIS (JOJOBA) SEED OIL . WATER . GLYCERIN . BUTYLENE GLYCOL . ORYZA SATIVA (RICE) EXTRACT (15mg) . SAPONARIA OFFICINALIS LEAF EXTRACT . FRAGRANCE . BUTYLPHENYL METHYLPROPIONAL . HYDROXYCITRONELLAL . LIMONENE . LINALOOL', N'– Dùng vào buổi tối, sau một ngày làm việc, tiếp xúc với môi trường bên ngoài, sản phẩm tẩy trang dầu sẽ lấy đi những bụi bẩn cũng như các lớp trang điểm trên bề mặt da.

=> Lấy 1 lượng sản phẩm vừa đủ, mát xa nhẹ nhàng theo chiều xoắn ốc và rửa lại với sữa rửa mặt. Hoặc dùng bằng bông tẩy trang để lau sạch hết mặt. Sau đó vỗ thêm nước lên da rồi tiếp tục massage thì lớp dầu tẩy trang vừa dùng sẽ chuyển sang màu trắng đục. Cuối cùng dùng sữa rửa mặt để làm sạch lại.

– Tuy nhiên đối với những người tuyến bã nhờn hoạt động mạnh, ngay cả khi không trang điểm cũng nên làm sạch da bằng sản phẩm tẩy trang dầu vào buổi sáng.', NULL, 0.29, 3, N'Dau-goi-xa-LOREAL-ELSEVE-200ml-cho-toc-xo-Phap-21.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (166, N'Dầu tẩy trang gạo The Face Shop', 280000.0000, NULL, 40, N'Hàn Quốc', NULL, N' l’oreal', NULL, NULL, N'– Bộ dầu gội và xả L’oreal Elsave là sản phẩm hàng đầu về chăm sóc tóc chuyên nghiệp. Có chứa chất chống tia UV, bảo vệ cho mái tóc của bạn luôn mềm mại và suôn mượt, giúp phục hồi hư tổn cho tóc hiệu quả.', N'– Thành phần dầu Argan dựa trên những chất xơ để nuôi dưỡng, làm mềm và chế ngự các loại tóc ngang bướng, khó mịn, làm cho mái tóc trở nên mịn màng, chống xoăn cứng, rối trong vòng 48 giờ ngay cả trong điều kiện thời tiết ẩm ướt.

– Bộ sản phẩm này chuyên dùng để duỗi tóc thẳng, dùng co những người có tóc xơ, khô…', N'– Gội xả phục hồi tổng thể 5 tác động, sử dụng cho những người có mái tóc bị hư hại tổn thương nhiều.', NULL, 0.3, 3, N'Dau-tay-trang-gao-Rice-water-bright-The-Face-Shop-21.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (167, N'Dầu tẩy Trang Innisfree Green Tea Balancing cho da hỗn hợp', 350000.0000, NULL, 23, N'Hàn Quốc', 150, N'Innisfree', NULL, NULL, N'– Là sản phẩm của hãng mỹ phẩm nổi tiếng Innisfree, với thành phần chính được chiết xuất từ những lá trà xanh tươi mát, được trồng, chăm sóc và thu hoạch trên hòn đảo Jeju xinh đẹp.

– Dầu tẩy trang Innisfree Green Tea Balancing Cleansing Oil được cải tiến và chuyên dùng cho bạn gái da hỗn hợp thiên dầu và thiên khô.

– Dùng dầu tẩy trang trà xanh mỗi ngày sẽ nhanh chóng lấy đi lớp trang điểm, bụi bẩn, làm sạch dịu nhẹ mà không gây kích ứng khó chịu nào cho da.

', N'– Được chiết xuất từ 100% trà xanh nguyên chất được nuôi dưỡng từ trong lòng đất có chứa các chất Linoleic Acid, Catechin, Vitamin E và các chất khoáng có tác dụng phục hồi độ đàn hồi và trả lại sự tươi trẻ cho da.', N'– Lấy một lượng dầu vừa phải cho lên tay (tay khô), dùng hai tay mát xa mặt cho đến khi lớp trang điểm tan ra.

– Cho một ít nước ẩm lên tay, mát xa mặt cho đến khi lớp trang điểm tan đi hoàn toàn.

– Dùng nước rửa sạch mặt, sau đó dùng sữa rửa mặt để giúp giữ làn da sạch sẽ nhất.', NULL, 0.14, 3, N'Dau-tay-Trang-Innisfree-Green-Tea-Balancing-cho-da-hon-hop-300x300.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (169, N'Dr CLEAN 3X Power – Sạch bong Nhà bếp, nhà tắm', 150000.0000, NULL, 22, N'Mỹ', NULL, NULL, NULL, NULL, N'– Đánh bật các vết bẩn trên xoong nồi, vật dụng nhà bếp bằng kim loại.

– Dễ dàng làu chùi các thiết bị như: Tủ lạnh, Lò vi sóng, máy hút mùi

– Các loại gạch men, gốm sứ, thiết bị vệ sinh sẽ sáng bóng nếu được xử lý bằng DrCLEAN 3X Power', NULL, N'– Dùng miếng lau chùi thắm kem tẩy rửa Dr Clean lên bề mặt các vật dụng bám bẩn cần vệ sinh,
chà đi chà lại cho vết bẩn được tẩy sạch, sau đó rửa lại bằng nước.

– Bảo quản nơi thoáng mát tránh ánh nắng.Cần đậy kín nắp sau mỗi lần sử dụng để tránh các thành phần bị đông đặc và bay hơi.

– DrClean 3X Power được sản xuất theo tiêu chuẩn đảm bảo chất lượng an toàn cho người sử dụng và thân thiện với môi trường.', NULL, 0.2, 3, N'Dr-CLEAN-3X-Power-Sch-bong-Nha-bp-nha-tm-1.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (171, N'Kem tẩy lông VEET của pháp 100ml – Cream Depilatoire
', 190000.0000, NULL, 33, N'Pháp', 100, NULL, NULL, NULL, N'– Kem tẩy lông Veet được sản xuất tại Pháp. Sản phẩm rất được ưa chuộng tại Việt Nam nói chung và người dân hà nội nói riêng.

– Sản phẩm giúp làn da mềm mại, giàu độ ẩm và trơn láng hơn sau khi tẩy lông với hệ dưỡng ẩm, làm việc chỉ trong 3 phút. Bạn sẽ nhận thấy làn da trơn láng,ít gai hơn hẳn.', NULL, N'1. Dùng thìa-gạt thoa kem đều đủ để che lông.

2. Sau 5 phút, lấy thìa-gạt kiểm tra một khu vực nhỏ. Nếu lông đi dễ dàng, loại bỏ
phần con lại của kem. Nếu không, để kem lâu hơn một chút mà không vượt quá 10 phút trong tổng số.

3. Rửa kỹ da với nưỡc sau khi sử dụng và lau khô.', NULL, 0.2, 3, N'Kem-ty-lung-VEET-ca-phop-100ml-–-Cream-Depilatoire1.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (173, N'Tẩy da chết thảo dược Arrahan – Hàn quốc', 160000.0000, NULL, 50, N'Hàn Quốc', NULL, NULL, NULL, NULL, N'Lột nhẹ nhàng da chết và các cặn bẩn. làn da trở nên sạch sẽ, mềm mại và tươi mới.', N' Chiết xuất từ các loại rau quả', NULL, NULL, 0.3, 3, N'Ty-da-cht-tho-duc-Arrahan-–-Han-quc11.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (174, N'Sữa rửa mặt trắng da White Tree Snow – The Face Shop', 240000.0000, NULL, 55, N'Hàn Quốc', NULL, NULL, NULL, NULL, N'Sữa rửa mặt làm trắng da với những hạt nhỏ li ti giúp tẩy sạch tế bào chết, và các lớp bụi bẩn trên da, mang lại một làn da sạch mịn màng và trắng sáng

The Face Shop là thương hiệu nổi tiếng số 1 của Hàn Quốc về mỹ phẩm chăm sóc sắc đẹp. The Face Shop đã chính thức đứng đầu trong danh danh các thương hiệu lớn của Hàn Quốc vào năm 2009', NULL, N'Bước 1: Rửa tay sạch bằng xà bông kháng khuẩn nhẹ nhàng, bởi nếu tay bạn bị bẩn, bạn có thể chà thêm vi khuẩn và bụi bẩn lên mặt trong quá trình rửa.

Bước 2: Loại bỏ lớp trang điểm (nếu có) trước khi rửa mặt

Bước 3: Làm ướt da mặt với nước ấm để các lỗ chân lông mở rộng, nhờ thế bạn có thể làm sạch sâu hơn và tránh được mụn

Bước 4: Cho sữa rửa mặt vào lòng bàn tay, đánh đều và dùng ngón tay thoa lên khuôn mặt. Massage mặt với chuyển động tròn khoảng 1-2 phút để dưỡng chất thấm sâu vào da

Bước 5: Rửa mặt với nước sạch (Nước ấm càng tốt), sau đó rửa qua nước lạnh một lần nữa để đóng mở các lỗ chân lông và cải thiện lưu thông máu

Bước 6: Thấm khuôn mặt thấm khô khuôn mặt bằng khăn sạch nhé hoặc bạn có thể để mặt tự khô một cách tự nhiên

Bước 7: Dùng kem dưỡng ẩm dùng kem dưỡng ẩm để làm ẩm da mặt sau khi rửa mặt là thích hợp nhất đấy. Đừng bỏ qua khâu này nhé.', NULL, 0.15, 3, N'Sa-ra-mt-trng-da-White-Tree-Snow-–-The-Face-Shop-1.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (175, N'Sữa tắm Cottage Pháp 750ml', 220000.0000, NULL, 55, N'Pháp', NULL, NULL, NULL, NULL, N'– Sữa tắm Cottage và lớp bọt giàu dưỡng chất sẽ bao bọc cơ thể bạn trong một lớp màng bảo vệ mượt mà như lụa.

– Công thức độc đáo của sữa tắm, chứa nhiều thành phần làm ẩm và làm mềm để lại trên làn da sự mềm mượt dẻo dai.

– Cottage đã kết hợp các thành phần tự nhiên với sữa tắm, tất cả đều được chọn lọc cẩn thận để chúng phát huy lợi ích vốn có (mùi hương) của chúng.

– Hương thơm tự nhiên đầy gợi cảm, chân thực vào táo bạo, sẽ mang đến cho bạn những giây phút trong phòng tắm tuyệt vời và độc đáo.', NULL, NULL, NULL, 0.1, 3, N'Sua-tam-Cottage-Phap-750ml-11.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (176, N'Kem tẩy trang Gạo Rice Water Bright Cleansing Cream – The Face Shop', 180000.0000, NULL, 22, N'Hàn Quốc', NULL, NULL, NULL, NULL, N'Sản phẩm Tẩy trang dạng hũ chiết xuất Gạo – Rice Water Bright Cleansing Cream của hãng The Faceshop giúp làm sạch bụi bẩn, bã nhờn, nhẹ nhàng làm tan và lấy đi các lớp trang điểm có độ bám dính cao như kem nền, kem lót, kem che khuyết điểm, phấn nền, BB Cream, phấn mắt… giúp bạn ngăn ngừa những tổn thương đối với da do việc không tẩy trang hoặc tẩy trang không sạch gây ra.', NULL, N'Lấy 1 lượng nhỏ kem tẩy trang vào lòng bàn tay, massage nhẹ nhàng lên da sao cho lớp trang điểm bong ra hoàn toàn. Dùng khăn giấy (hoặc giấy ướt) lau sạch. Sau đó rửa mặt thật sạch với sữa rửa mặt và nước ấm.', NULL, 0.2, 3, N'Kem-ty-trang-Go-Rice-Water-Bright-Cleansing-Cream-–-The-Face-Shop1.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (177, N'Kem tẩy lông Hug Me Tony Moly', 190000.0000, NULL, 44, N'Hàn Quốc', NULL, NULL, 80, NULL, N'Kem tẩy lông Hug Me nhanh và tiện lợi, tẩy sạch lông tại những vị trí bất tiện, sản phẩm chứa nhiều độ ẩm, nên hiệu quả làm sạch mà không gây đau hay kích ứng cho da.

Đây là sản phẩm kem tẩy lông, giúp cho vùng da trở nên thật mịn màng, trắng sáng với mùi hương dễ chịu.

Sử dụng kem tẩy lông Hug Me Hair Removal Cream giúp làn da trơn láng, mịn màng mà không bị đau, trầy xước bề mặt da như wax và cạo… phương pháp làm đẹp cực kì đơn giản và nhẹ nhàng nhé!', NULL, N'Lưu ý: Nếu da mẫn cảm hoặc mới sử dụng lần đầu thì nên thử trước ở một vùng nhỏ trước khi sử dụng trên toàn bộ vùng da.

Bước 1: Sử dụng nước, tốt nhất là nước ấm làm sạch da để da mềm và dãn nở lỗ chân lông sẽ giúp việc tẩy lông dễ dàng hơn sau đó lau khô.

Bước 2: Lấy lượng kem vừa đủ thoa lên vùng da cần tẩy lông. Nếu vùng có sợi lông hơi dày thì thoa lớp kem dày hơn so với vùng sợi lông mảnh, mỏng rồi để khoảng 5 phút. Lấy khăn ẩm lau ngược chiều lông mọc, nếu sợi lông chưa đi thì để tiếp thêm 3 phút, nếu lông đi dễ dàng, dùng khăn ẩm tiếp tục lau các vùng còn lại.', NULL, 0.11, 3, N'Kem-ty-lung-Hug-Me-Tony-Moly.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (178, N'Sữa rửa mặt trị mụn acne solution foam cleansing – the face shop', 250000.0000, NULL, 50, N'Hàn Quốc', 150, N'The Face Shop', NULL, NULL, N'– Sữa rửa mặt clean face acne solution foam cleanser – Sữa rửa mặt dành cho da dầu có mụn

– Chăm sóc da đúng cách trong quá trình điều trị mụn đóng một vai trò hết sức quan trọng, vừa giúp quá trình điều trị đạt kết quả cao, vừa giúp bệnh thuyên giảm nhanh. Đồng thời giúp hạn chế những hậu quả, biến chứng do mụn để lại.

– Làm sạch da rất quan trọng, giúp lấy đi những chất bụi bẩn, vi trùng, đồng thời nó còn giúp làm sạch tế bào chết trên mặt da, giúp cho các kem bôi được hấp thu tốt hơn.', NULL, N'– hãy dùng các ngón tay để bắt đầu thoa sữa rửa mặt lên mặt và cổ, sau đó massage nhẹ nhàng theo những đường tròn hướng ra phía ngoài trong vài giây. Kế tiếp, dùng một miếng bông gòn ướt để lau mặt hoặc vỗ nước lên da mặt.

– Cuối cùng, dùng khăn ấm để lau khô da.

– Tránh kéo căng hoặc chà xát da mặt khi rửa mặt.

– Tốt nhất, bạn hãy dùng ngón trỏ để massage quanh mắt từ góc mắt phía trong hướng ra phía ngoài, dưới xương chân mày kèm động tác vỗ ngón tay thật nhẹ lên vị trí này.

– Hàng ngày, nên rửa mặt ít nhất 1 hoặc 2 lần để tẩy sạch bụi bẩn, bã nhờn tích tụ suốt trong ngày.

– Tuy nhiên, bạn không nên rửa mặt quá nhiều lần trong ngày vì sẽ làm làn da mau lão hóa và khô.', NULL, 0.3, 3, N'Sa-ra-mt-tr-mn-acne-solution-foam-cleansing-–-the-face-shop2.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (180, N'Sữa Tắm trắng White Secret Bright Capsule Body Wash – The Face Shop', 220000.0000, NULL, 60, N'Hàn Quốc', 300, N'The Face Shop', NULL, NULL, N'Với các thành phần tinh chất được chiết xuất từ thiên nhiên sữa tắm Bright capsule body wash luôn mang lại cảm giác thoải mái, sảng khoái, lưu lại mùi hương quyến rũ sau khi tắm', N'Aqua, Sodium laureth sulfat, Glycerin, Cocamidopropyl betaine, Sodium chloride, Parfum…', N' Lấy một lượng nhỏ sữa tắm, cho vào bông tắm hoặc tay, tạo bọt, nhẹ nhàng massage đều lên toàn thân rồi tắm lại bằng nước sạch', NULL, 0.2, 3, N'Sa-Tm-trng-White-Secret-Bright-Capsule-Body-2.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (181, N'Kem tẩy lông In Shower Hair Removal Cream The Face Shop', 200000.0000, NULL, 50, N'Hàn Quốc', NULL, N'The Face Shop', NULL, NULL, NULL, NULL, N'Bước 1: Sử dụng nước, tốt nhất là nước ấm làm sạch da để da mềm và dãn nở lỗ chân lông sẽ giúp việc tẩy lông dễ dàng hơn sau đó lau khô.

Bước 2: Lấy lượng kem vừa đủ thoa lên vùng da cần tẩy lông. Nếu vùng có sợi lông hơi dày thì thoa lớp kem dày hơn so với vùng sợi lông mảnh, mỏng rồi để khoảng 5 phút.Lấy miếng bông mút thử lau ngược chiều lông mọc, nếu sợi lông chưa đi thì để tiếp thêm 3 phút (không để quá lâu), nếu lông đi dễ dàng, dùng bông mút tiếp tục lau các vùng còn lại.

Bước 3: Lấy khăn ẩm lau sạch và rửa lại bằng nước rồi lau khô.

Bước 4: Sử dụng dưỡng thể để dưỡng cho da mềm mịn và se lỗ chân lông (nếu có).', NULL, 0.2, 3, N'silk_smooth_hair_removal_cream.jpg')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (182, N'Muối Tắm Tẩy Tế Bào Chết Marion', 105000.0000, NULL, 50, N'Úc', NULL, NULL, NULL, NULL, NULL, NULL, N'Bước 1: Làm ướt da.
Bước 2: Lấy một lượng vừa đủ muối tắm ra tay, thoa đều và massage nhẹ nhàng các phần trên cơ thể.
Bước 3: Tắm lại bằng nước sạch.', NULL, 0.2, 3, N'Mui-Tm-Ty-T-Bao-Cht-Marion.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (183, N'Sữa rửa mặt Shiseido senka Whip 120g – Nhật bản', 190000.0000, NULL, 40, N'Nhật Bản', NULL, NULL, 60, NULL, N'– Sữa rửa mặt senka Whip là sản phẩm của hang mỹ phẩm nổi tiếng Shiseido và được bình chọn là sữa rửa mặt hàng đầu Nhật Bản, sữa rửa mặt Perfect Whip Foam được ưa chuộng tại Nhật Bản bởi công dụng tuyệt vời như tên gọi của dòng sản phẩm “Shiseido Perfect Whip Foam”.

– Nếu bạn đang muốn tìm một loại sữa rửa mặt tạo bọt vừa có thể tẩy trang vừa làm sạch mặt mà không gây khô da thì sữa rửa mặt senka Whip (Shiseido Perfect Whip Foam) chính là sản phẩm mà bạn nên chọn.

– Shiseido senka Whip là loại sữa rửa mặt tạo bọt có chứa Sericin giúp loại bỏ các tạp chất như bụi bẩn và bã nhờn mà không loại bỏ độ ẩm của da, sữa rữa mặt này còn chứa captive amino acid moisture giữ cho làn da mềm mại, chống khô, ráp da, duy trì độ ẩm tự nhiên cho làn da, giúp da mặt bạn luôn sach sẽ và không bóng nhờn suốt cả ngày.

– Bọt kem đậm đặc trong sữa rửa mặt senka Whip có tính đàn hồi đưa dưỡng chất vào sâu bên trong da giúp tẩy đi những lớp trang điểm cũng như bụi bẩn từ lỗ chân lông. Sản phẩm được đóng trong tuýp với trọng lượng 120g và thích hợp với mọi loại da.', N'Laurate, Betain lauryl, Sericin, Hydroxit K, Cocamit DEA, Myristate, Polyglyceryl-4 lauryl ether, Acid palmitic, EDTA-3NA, Methyl taurine Na, Axit citric, Axit sorbic K, Phenoxyethanol, Axit benzoic Na, Hương liệu', N'– Rửa và làm ẩm da mặt với nước sạch

– Lấy một lượng vừa đủ sữa rửa mặt Shiseido senka Whip ra lòng bàn tay, nhỏ vào một vài giọt nước.

– Đánh nhẹ một lượng vừa đủ sữa rửa mặt ra lòng bàn tay, nhỏ vào một vài giọt nước.

– Đánh nhẹ giúp tạo bọt cho hỗn hợp đó, thêm vào ít nước nếu cần thiết

– Nhẹ nhàng Mát-xa vùng da mặt theo những chuyển động vòng tròn với hỗn hợp đó, rửa lại với nước ấm.', NULL, 0.3, 3, N'Sua-rua-mat-Shiseido-senka-Whip-120g-Nhat-ban-2-1.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (184, N'Sữa rửa mặt herb day 365 cleasing foam – The Face Shop', 100000.0000, NULL, 50, N'Hàn Quốc', NULL, N'The Face Shop', NULL, NULL, N'– Sữa rửa mặt herb day 365 cleasing foam – The Face Shop đang rất được ưa chuộng tại Hàn Quốc bởi thành phần chiết xuất 100% từ thiên nhiên như lô hội, đậu xanh, chanh leo, quả sơri, đào…

– mùi thơm rất đặc trưng, giúp làm sạch da, se lỗ chân lông, cho làn da mịn màng, sáng, chống mụn. Sản phẩm dành cho mọi loại da.', NULL, N'Bạn vẫn thường lấy một lượng bất kỳ và thoa lên mặt, sau đó rửa sạch lại với nước? Đó là cách làm chưa đúng! Hãy tham khảo các bước sau để tối ưu tác dụng của sữa rửa mặt:

Bước 1: Làm ướt da mặt.

Bước 2: Lấy một lượng sữa rửa mặt vừa phải , cho vào tay hoặc miếng tạo bọt đánh bông.

Bước 3: Lấy phần bọt thoa đều nhẹ nhàng lên khuôn mặt

Lưu ý: Thoa xuôi theo chiều lỗ chân lông để chất bẩn dễ dàng theo đà bị quấn ra ngoài. Thời gian khoảng 20-30 giây, bạn không nên để sữa quá lâu trên da mặt.

Bước 4: Rửa sạch với nước và thấm khô da bằng khăn mềm.', NULL, 0.2, 3, N'Sa-ra-mt-herb-day-365-cleasing-foam-1.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (185, N'Miếng dán tẩy lông CK Absolute hair remover waxed paper', 150000.0000, NULL, 111, N'Mỹ', NULL, NULL, NULL, NULL, NULL, NULL, N'• Rửa sạch và lau khô vùng cần wax (lưu ý: vùng da cần wax phải sạch và ko thoa bất kì sản phẩm dưỡng da hay lotion nào trên da)

• Lấy miếng wax đặt giữa 2 lòng bàn tay, chà từ 1-2 phút để làm ấm phần sáp bên trong miếng wax.

• Tách đôi miếng wax thành 2 miếng và dùng 1 miếng để dán lên vùng cần wax, dùng tay chà nhẹ khoảng 1-2 phút để làm ấm miếng wax và dính sát hết vào da

• Dùng tay giữ 1 đầu miếng wax và giật mạnh NGƯỢC HƯỚNG chiều lông mọc.

• Và tiếp tục sử dụng miếng wax đó để wax vùng da tiếp theo cho đến khi cảm thấy phần sáp đó không còn đủ độ dính nữa thì sử dụng miếng wax mới để tiếp tục wax (lưu ý: ko wax cùng 1 vùng da quá 2 lần).

• Sau khi wax xong, da sẽ có cảm giác rít do sáp wax lông còn dính trên da và do lực kéo mà vùng da vừa wax sẽ bị ửng đỏ hồng lên, bạn dùng lotion hoặc kem dưỡng ẩm thoa 1 lớp mỏng lên để làm dịu lại và hiện tượng ẩn đỏ này sẽ biến mất sau vài tiếng đồng hồ.', NULL, 0.3, 3, N'Ming-don-ty-lung-CK-Absolute-hair-remover-waxed-paper1.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (189, N'Tẩy Da Chết Táo Xanh 50g – Appletox Smooth', 170000.0000, NULL, 25, N'Hàn Quốc', NULL, NULL, NULL, NULL, N'Arrahan Whitening Peeling Gel – Kem tẩy da chết arrahan apple peeling gel

– Có thể nói, tẩy tế bào chết là công đoạn đầu tiên và quan trọng nhất trong việc chăm sóc da, bởi hơn 80% chất bụi bẩn bám lại trên da tạo nên lớp tế bào chết này. Một làn da trắng đẹp trước hết phải là một làn da sạch và khỏe mạnh. Tẩy tế bào chết không chỉ giúp da tươi sáng, rạng rỡ hơn mà còn kích thích quá trình tuần hoàn tái tạo da, xóa mờ các vết thâm, xỉn màu, làm tăng hiệu quả của quá trình dưỡng da, giúp các dưỡng chất thấm sâu vào da, nuôi dưỡng da từ bên trong một cách tối ưu.

– GEL tẩy da chết mặt chiết xuất từ các loại trái cây nhanh chóng loại bỏ lớp tế bào chết, đen sạm cùng bụi bẩn trên da đồng thời cung cấp và bổ sung dưỡng chất cho da giúp làn da luôn tươi mát trắng mịn màng.', N'Chiết xuất từ hoa quả như: Táo, Chanh, Hoa Đinh hương, cung cấp vitamin, dưỡng chất, nhẹ nhàng loại bỏ các tế bào chết trên da, làm trắng da. Mang lại làn da trắng sáng rạng ngời cho bạn.', N'Sản phẩm dùng cho mặt (tránh vùng mắt và môi). Lấy 1 lượng nhỏ kem bôi lên da sau đó mát xa khoảng 2 đến 5 phút rồi rửa sạch bằng nước ấm.
Sử dụng tuần một đến hai lần.

Các bạn có thể tham khảo một số loại tẩy da chết sau:

– Tẩy da chết thảo dược Arrahan nâu – Hàn quốc

– 1 số loại tẩy da chết

– Tẩy da chết của the face shop', NULL, 0.2, 3, N'65287_566641750014572_1822548939_n1.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (191, N'Ủ trắng da Cafe chính hãng 100% từ thiên nhiên
', 250000.0000, N'Ủ trắng cafe', 30, N'Việt Nam', NULL, NULL, 300, NULL, N'– Loại bỏ các tế bào chết trên da, trị thâm sạm, nám, làm mờ các vết thâm hiệu quả.

– Tái tạo và định hình lại cấu trúc tế bào da, giúp da trắng sáng, mềm mịn, chắc khỏe và tăng độ đàn hồi cho da.

– Giúp các dưỡng chất thẩm thấu vào sâu bên trong da, nuôi dưỡng làn da trắng sáng.

– Hỗ trợ điều trị viêm lỗ chân lông, ngăn ngừa nguy cơ quay lại của các loại mụn. Bảo vệ làn da từ các tác nhân có hại từ môi trường.

– Sản phẩm sử dụng cho mọi loại da. ĐẶC BIỆT: Ngay cả mẹ bầu cũng có thể sử dụng vì rất an toàn.', NULL, N'– Làm ướt da.

– Trộn 1/2 bát con bột ủ với 1/2 bát con sữa tươi không đường ( hoặc nước cam , sữa chua không đường , nước tinh khiết … )

– Trộn thật đều, có thể trộn trước khi tắm và để 10phut để các thành phần ủ được hoà quyện vào nhau và tan ra.

– Xoa bột ủ toàn thân , massage 5-10p sau đó để bột ủ tự ngấm dần vào da 5-10p

– Tắm thật sạch lại bằng nước.

– Lau qua cơ thể bạn, để da còn ẩm bôi 1 lớp mỏng kem nuôi da , vuốt ngược từ dưới lên , vỗ nhẹ', NULL, 0.3, 3, N'u-trang-cafe.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (192, N'Ủ trắng White Collagen Body Mask chanh siêu trắng nhanh', 250000.0000, N' Ladies fresh', 40, N'Việt Nam', NULL, NULL, NULL, NULL, N'– Các Lactic Acid làm trắng sáng da, giúp sản sinh Collagen cho da

– Công dụng của Ủ Trắng Chanh trắng siêu nhanh

– Ủ trắng chanh là quá trinh đưa dưỡng chất vào da qua việc macssage nhe. Lấy đi lớp tế bào chết trên bề mặt da .

– Ủ trắng chanh là một hình thức tắm dưỡng đem lại làn da trắng hồng tự nhiên sau 3-6 lần sử dụng.

– Ủ trắng chanh an toàn, hiệu quả

– Giúp lấy đi lớp tết bào chết lâu ngày đem lại làn da trắng hồng tự nhiên

– Không gây châm chit, không vàng lông, không tẩy da, không gây ngứa.

– Không mất thời gian pha trộn.

– Da trắng sáng đồng màu. Các vết thâm do sẹo gây ra cũng mờ hẵn đi, hiệu quả dài lâu.', N'– Ủ trắng chanh với tính chất collogen và chiết xuất 100% từ chanh tươi organic đem lại cho bạn làn da trắng hồng đều màu.

– Ủ trắng chanh không phải là tắm tẩy mà là tắm dưỡng chứa nhiều tinh chất Aloe Vera Cucumber làm mềm và mịn da.

– Ủ trắng chanh với các thành phần thiên nhiên an toàn không bị nóng rát, không vàng lông.', N'– Chỉ việc làm ướt body, mở gói ủ trắng chanh ra , thoa đều lên toàn cơ thể ủ trong vòng 15-30 phút.

– Dùng tay massage toàn thân thật nhẹ nhàng sau đó tắm sạch với nước là xong.

– Bạn đừng quên thoa kem chống nằng và che chắn kỹ khi ra ngoài nhé!', NULL, 0.2, 3, N'u-trang-chanh-trang-sieu-nhanh-8.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (193, N'Viên kích trắng Alpha Arbutin 3 plus thái lan mẫu mới', 150000.0000, N'Alpha Arbutin', 44, N'Thái Lan', NULL, NULL, NULL, NULL, N'– Giúp tăng sắc tố, làm giảm mức độ sạm da, đặc biệt là ở những vùng da tiếp xúc với ánh mặt trời bởi sự hoạt động mạnh của Melanocytes.

– Làm đều màu da, loại bỏ nhanh chóng các đốm nâu tích tụ lâu ngày trên da.

– Chống lão hóa, ngăn chặn các gốc tự do, làm trẻ hóa làn da.', N'– Arbutin tồn tại ở hai dạng, alpha và beta. Dạng alpha cho mức độ ổn định cao hơn và có tác dụng ức chế mạnh hơn so với dạng beta. Trong tự nhiên, Alpha-Ar

– Butin được chiết xuất từ cây Bearberry , một loại cây mọc tại các vùng phía Bắc phía nam nước Mỹ.

– Ngoài ra, Alpha-Arbutin cũng được tìm thấy trong mầm lúa mì, da lê và lá của quả việt quất và nam việt quất. Tuy nhiên, việc chiết xuất Arbutin từ tự nhiên rất khó khăn nên hiện tại có khá nhiều Arbutin tổng hợp từ phòng thí nghiệm. Tuy nhiên các thương hiệu uy tín và chất lượng đều không tiếc để đầu tư chiết xuất Alpha-Arbutin từ tự nhiên bởi Alpha-Arbutin có hiệu quả gấp 10 lần so với các hình thức khác của Arbutin.', N'– Trộn 1 Viên Kích Trắng với lượng kem vừa đủ dùng cho toàn thân cho 1 lần sử dụng

– Bạn có thể dùng ngay chính loại body lotion đang sử dụng hàng ngày.

– Để có kết quả tốt nhất nên dùng ngày 2 lần sáng/tối.', NULL, 0.2, 3, N'vien-kich-trang-alpha-arbutin-3-plus-thai-lan-8.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (194, N'Tẩy Da Chết Mặt Reborn Nhập Khẩu Mỹ', 250000.0000, N'Reborn', 50, N'Mỹ', 120, NULL, NULL, NULL, N'– Tẩy Da Chết Mặt Reborn Loại bỏ các tế bào da chết và các vùng da thô ráp sần bì.

– Tẩy Da Chết Mặt Reborn có Hương thơm tự nhiên, mát lạnh giúp da có cảm giác sảng khoái sau khi sử dụng.

– Giải phóng bít lỗ chân lông giúp điều hòa sự hô hấp của làn da, da mềm mại, mịn màng sau khi sử dụng.

– Tế bào trên cơ thể chúng ta sản sinh và thay đổi hàng ngày, nếu không được lấy đi sẽ tạo lớp sần khiến cho da mặt thô ráp, da không đều màu và khả năng thẩm thấu các dưỡng chất khác rất yếu.', N'– Nước, glycerin, chiết xuất hạt giống Prinsepia Utilis, Papain, chiết xuất Hamamelis Virginiana, dầu lá lác, hoa Lavandula Angustifolia, dầu lá hương thảo, allantoin, este hydroxybenzyl, menthol PCA este, bis (hydroxymethyl) imidazolidinyl urea, iodopropanrin butyl carbamate…

Cách sử dựng Tẩy Da Chết Mặt Reborn Nhập Khẩu Mỹ:', N'– Rửa sạch mặt, lấy một lượng vừa đủ thoa đều rồi massage nhẹ nhàng trên da mặt. Sau đó rửa đi bằng nước sạch.

Sử dụng 1~2 lần/ tuần.', NULL, 0.28, 3, N'Tay-Da-Chet-Mat-Reborn-Nhap-Khau-My-3.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (195, N'Tẩy da chết Quế Hồi Cà Phê Bilena nga 250g', 200000.0000, NULL, 22, N'Nga', NULL, NULL, NULL, NULL, N'– Có khả năng làm mờ các vùng da thâm sần, thâm sẹo hay thâm rạn hiệu quả. Đồng thời loại bỏ mụn trên cơ thể, các khuyết điểm da chảy sệ, thiếu săn chắc, đồng thời bổ sung dưỡng chất cho da thêm khỏe mạnh từ bên trong, làm mịn và chống oxy hóa da.

– Thành phần tự nhiên không chỉ giúp làm sạch da cơ thể bạn mà còn giúp cải thiện lưu thông máu, giảm mỡ thừa và bổ sung độ ẩm cho da. Hương thơm quế hồi có tác dụng như thư giãn giảm stress, căng thẳng mệt mỏi.

– Chiết xuất từ cà phê có vai trò kích hoạt quá trình trao đổi chất, tăng cường độ đàn hồi, mịn màng và giúp cho làn da luôn được khỏe mạnh.

–  Hỗ trợ loại bỏ mụn trên cơ thể, các khuyết điểm da chảy sệ, thiếu săn chắc, đồng thời bổ sung dưỡng chất cho da thêm khỏe mạnh từ bên trong, làm mịn và chống oxy hóa da.', N'– Có thành phần tự nhiên với các hạt scrub massage li ti, chiết xuất từ cà phê, quế hồi và các loại thảo mộc của Nga giúp loại bỏ các tế bào chết, làm da tươi mới, mịn màng, cải thiện sự lưu thông máu, thúc đẩy và cung cấp các dưỡng chất bổ sung cho da, thải độc và mang lại làn da láng mịn.', N'– Làm ướt toàn bộ cơ thể.
– Thoa sản phẩm lên khắp người, massage nhẹ nhàng theo vòng tròn khắp cơ thể (chú ý những vùng da thô ráp như khủy tay, đầu gối, mắt cá chân,…).
– Tắm sạch lại với nước.
– Sau mỗi lần tẩy tế bào chết, các bạn nên dưỡng ẩm da ngay lập tức để tránh tình trạng khô da.', NULL, 0.22, 3, N'ty-da-cht-qu-hi-ca-pho-bilena-nga-250g-2.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (197, N'Tẩy da chết sinh học Lamer care', 280000.0000, NULL, 33, N'Việt Nam', NULL, N'Lamer care', NULL, NULL, N'– Các dòng tẩy da chết dạn tel kết tủa luôn cho ra da chết ảo và lam tổn thương da, nhưng lại không lấy được bụi bẩn, độc tố dưới lỗ chân lông còn làm mất đi lớp amino axit của lớp tế bào sừng,khiến da mất đi độ bảo vệ tự nhiên.

– TINH THỂ SẠCH SÂU ĐƯỜNG ĐEN, DẦU JOJOBA:Thúc đẩy lưu thông máu, trị sạch mụn đầu đen, mụn trứng cá, mụn ẩn do bít TẮC lấy đi độc tố TOXIN giúp da trở lên tươi sáng, cân bằng dầu, lỗ chân lông đều, mịn, se khất mềm mại, săn chắc và nhiều hiệu quả khác.

– Nó giúp lộ ra làn da mới, tạo sự thông thoáng để các tế bào phát triển, hấp thu tốt hơn dưỡng chất từ các loại kem.

– Vì vậy mọi người chịu khó đừng lười tẩy da chết nhé', N'– Đường đen, dầu đinh hương, tinh dầu bạch đàn, mỡ ca cao, dầu chanh, dầu jojoba, dầu hoa cúc.', N'– Dùng 1 lượng nhỏ chấm đều 5 điểm trên khuôn mặt, sau đó massage nhẹ nhàng trong vòng 2p.

– Tuần 1 lần đối với da khô, 2 lần đối với da thường, 3 lần đối với da dầu da hỗn hợp.', NULL, 0.3, 3, N'tay-da-chet-sinh-hoc-lamer-care-11.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (198, N'Set son Secret Key Sweet Glam Tint Glow Mini Kit', 300000.0000, NULL, 47, N'Hàn Quốc', NULL, N' Secret Key', NULL, NULL, N'– Dưỡng môi mềm mịn. Phiên bản Dupe hoàn hảo của Dior Lip Glow: Đánh 1 lớp thì có một lớp mềm, mịn, có chút bóng nhé. Đánh 2 lớp thì sẽ lên màu đậm hơn và lâu trôi.

– Son Dưỡng Có Màu Secret Key Sweet Glam Tint Glow luôn là thỏi son ngon-bổ-rẻ và là “must have item” xuất hiện nhiều nhất trong túi xách của các cô nàng xứ kim chi không hề thua kém công chúa nhà Dior tí nào đâu nhé!

– Phần gây chú ý đầu tiên chính là chất son mềm mượt, đánh đến đâu môi mềm mịn đến đấy, chỉ cần thoa 1 lớp là môi như được “ủ nước” vậy.', NULL, N'– Thoa một lượng son dưỡng vừa đủ lên môi bất cứ khi nào cảm thấy môi khô.

– Các nàng có thể sử dụng em ấy riêng lẻ hoặc trước khi tô son màu để đôi môi căng mọng hơn nhé!', NULL, 0.2, 4, N'Set-son-Secret-Key-Sweet-Glam-Tint-Glow-Mini-Kit-3.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (199, N'Creamy Tint Lipstick – Son thỏi Innisfree', 340000.0000, NULL, 50, N'Hàn Quốc', NULL, N'Innisfree', NULL, NULL, N'– Son kem lâu phai INNISFREE Creamy Tint Lipstick với đặc tính là rất lâu trôi và lên màu chuẩn mà không cần dùng kem nền hay kem che khuyết điểm môi.

Năm nay dường như đang là thời của những loại son tint màu đậm và đây là 1 trong những dòng son chuẩn lì của Innisfree khiến dân mạng phát cuồng “rần rần”^^

Hơn nữa, INNISFREE Creamy Tint Lipstick không gây khô môi, đặc tính  kết hợp với son thỏi giữ màu sắc tươi tắn, trẻ trung, sexy, không nhũ bóng và có dưỡng làm mềm môi.', NULL, NULL, NULL, 0.25, 4, N'Creamy-Tint-Lipstick-–-Son-thoi-Innisfree.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (201, N'Kem khử thâm làm hồng môi Mibiti Prudente NuWhite L1A 5ml', 950000.0000, N'NuWhite', 50, N'Mỹ', NULL, NULL, NULL, NULL, N'– Khử đi các vết thâm, mang lại sự hồng hào, tươi trẻ cho đôi môi.

– Kem dưỡng có tác dụng ngăn chặn sự hình thành các sắc tố mới, tăng cường tưới máu cho vùng môi, mang lại màu sắc tươi hồng tự nhiên.', N'– Niacinamide: có khả năng làm giảm các túi melanosome chuyên chở sắc tố da từ nơi sản xuất đến các tế bào da bên ngoài, ngăn chặn sự hình thành melanin ở cả giai đoạn tổng hợp lẫn vận chuyển từ đó thúc đẩy hiệu quả làm trắng da. Không những vậy, Niacinamide còn hỗ trợ tăng cường “tưới máu” nên vùng da cần điều trị, giúp da trở nên tươi mới, rạng rỡ tự nhiên.

– Axit Kojic: đây là loại axit có khả năng loại bỏ các vết sắc tố nhờ khả năng ngăn chặn enzyme sản xuất hắc tố melanin khiến môi bị xỉn màu, thâm đen. Kojic cũng có tác dụng làm tăng thực bào bạch cầu đa nhân trung tính, thúc đẩy hiệu quả loại bỏ sắc tố gây xỉn màu da.

– Arbutin: là một trong những hoạt chất làm trắng da an toàn và hiệu quả nhất đã được chứng nhận. Arbutin thực hiện vai trò của mình thông qua cơ chế ngăn chặn tyrosinase tổng hợp sắc tố melanin.

– Provitamin B5: đây là tiền chất của vitamin B5. Nó có khả năng thấm qua da cực tốt nên dễ dàng lôi kéo các phần tử hoạt chất khác vào sâu bên trong da. Provitamin B5 còn có thể cải thiện và giữ ẩm cho da, giúp da phục hồi các mô, kháng viêm, kích thích tái tạo da, hình thành và tăng cường chức năng của tế bào khỏe mạnh.', N'– Thoa một lượng vừa đủ kem NuWhite L1A lên vùng da môi cần điều trị 2-3 lần/ngày.', NULL, 0.12, 4, N'Kem-khu-tham-lam-hong-moi-Mibiti-Prudente-NuWhite-L1A-5ml1.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (203, N'Kissful lip care scrub – Tẩy da chết môi Etude House', 150000.0000, NULL, 111, N'Hàn Quốc', NULL, N'Etude House', NULL, NULL, N'– Đây là sản phẩm tẩy tế bào chết cho môi chiết xuất thiên nhiên từ tinh chất trái cây, đường đen với những hạt sần giúp,  tẩy da chết trên môi rất hiệu quả với mùi hương cực quyến rũ (mùi kẹo, trái cây và vị ngọt nhẹ nhàng để lại sau khi sử dụng đã làm mê mệt các bạn gái Hàn đấy ạ 🙂

– Đặc biệt Kissful Lip Care Lip Scrub có tinh chất dưỡng sáng da môi rất thích hợp sử dụng cho các bạn gái có màu da môi sẫm, bị thâm do sử dụng son nhiều và môi bị bong tróc, khô nẻ…', NULL, N'Kissful lip care scrub – Tẩy da chết môi Etude House

Lấy 1 lượng vừa đủ thoa lên môi, nhẹ nhàng massage trong 1-2 phút rồi rửa lại bằng nước hoặc lau sạch bằng khăn. Sau đó thoa Lip Balm hoặc Lip Essence để dưỡng môi.', NULL, 0.3, 4, N'Kissful-lip-care-scrub-–-Ty-da-cht-mui-Etude-House11.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (204, N'Mặt nạ môi lovely ME:EX bebe lip mask – the face shop', 60000.0000, NULL, 200, N'Hàn Quốc', NULL, N'the face shop', NULL, NULL, N'Đây là sản phẩm mặt nạ cho môi giúp cung cấp độ ẩm và collagen chống lão hóa môi. và làm hồng môi. Chỉ cần đắp mặt nạ lên đôi môi trong vòng 10 phút, đôi môi sẽ trở nên mềm mịn và căng mượt!

Việc chăm sóc làn môi bây giờ quan trọng và cần thiết hơn hẳn bởi như cầu làm đẹp của chị em ngày nay ngày càng tăng và thời tiết trở nên thất thường khiến cho đôi môi dễ bị lão hóa và mau khô. Vì vậy, cần phải chăm sóc và bảo vệ làn môi để chị em ngày càng quyến rũ.', NULL, N'Bóc ra và đắp lên môi khoảng 10 phút', NULL, 0.25, 4, N'mat-na-moi-lovely-meex-bebe-lip-mask-thefaceshop.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (205, N'Set MAC đen 12 cây Matte 1984 Mermaid của nước Mỹ', 1200000.0000, N'MAC', 100, N'Mỹ', NULL, NULL, NULL, NULL, N'– Là loại son chuyên nghiệp với nhiều màu sắc trung thực, ấn tượng thích hợp cho mọi lứa tuổi, với MAC Lipstick bạn sẽ có một đôi môi gợi cảm, quyến rũ say đắm lòng người

– Son môi Mac với màu sắc trẻ trung và lâu trôi nổi tiếng toàn thế giới.

– Các nhà khoa học đã có cuộc kiểm tra gắt gao các sản phẩm của dòng son môi Mac và kết quả cho thấy hàm lượng chì trong mỹ phẩm Mac vẫn ở mức độ cho phép và không gây hại tới người sử dụng.

– Chính vì vậy, trên các sàn diễn quốc tế, người ta vẫn chỉ thấy xuất hiện nhiều nhất thương hiệu Mac

–  Siêu bền màu, mình ăn uống + đi bơi mà màu son trên môi vẫn còn khoảng hơn 90%, giữ màu khoảng hơn 10 tiếng', NULL, N'1.Trước khi đánh son, các bạn nên dùng son dưỡng để làm mềm môi , đánh lên môi trước 10 hay 15 phút trước khi đánh son.

2.Đối với những môi hơi tối màu, các bạn có thể dậm lên môi rồi mới đánh son lên.

3.Son MAC có khả năng lên màu cực tốt, đánh xong 1 lớp các bạn nên dừng lại một chút, rồi vài giây sau sẽ lên màu chuẩn, đừng thấy nhạt quá mà đánh nhiều lớp Đối với các dòng son nhạt có thể đánh 2,3 lần sẽ lên đúng màu, vì các màu này là tone nude, tự nhiên.', NULL, 0.2, 4, N'set-mac-den-12-cay-matte-1984-mermaid-5.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (206, N'Son 2 đầu Karadium smudging tint stick', 200000.0000, NULL, 100, N'Hàn Quốc', NULL, N'KARADIUM', NULL, NULL, N'– Dạng son tint xinh đẹp từ Karadium thoa lòng môi hay full môi đều đẹp, thiết kế bút chì vặn cực tiện lợi khi sử dụng, dễ sử dụng và dễ blend.

– Son có độ mềm, bóng dưỡng nhẹ,ko có bóng nhiều đâu nha.

– Son lên môi có màu đẹp và tự nhiên hợp cho bạn nào thích nhẹ nhàng dễ thương nhé !!

– Ko gây khô môi

– Giữ màu tốt ( son tint mờ )', N'– Thành phần chiết xuất từ bơ, hoa hồng giúp môi luôn được mịn màng và giữ ẩm thật tốt. Để lại trên môi một kết thúc semi matte hoàn hảo và tự nhiên.

– Có 6 mầu tha hồ cho bạn lựa chọn.

', N'– Gồm 2 đầu: 1 đầu son, 1 đầu có mút dùng để tán đều son sau khi đánh hoặc làm nhạt đi viền môi khi đánh son lòng môi.', NULL, 0.28, 4, N'SON-2-DAU-KARADIUM-SMUDGING-TINT-STICK-sl1.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (208, N'son 3ce – 3 concept eyes – creamy lip color', 320000.0000, NULL, 100, N'Hàn Quốc', NULL, NULL, NULL, NULL, N'Mỗi mẫu son của 3CE đều nhanh chóng trở thành những trào lưu mới của giới trẻ Hàn và khắp Châu Á. Màu son lên cực chuẩn, mềm, không bị khô môi. Đến với dòng son 3CE chắc chắn bạn sẽ hài lòng, các bạn gái sẽ trở nên xinh đẹp, quyến rũ và cá tính hơn bao giờ hết.', NULL, NULL, NULL, 0.09, 4, N'0001471171_a1.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (209, N'Son 3CE Lip Color #707 Keen', 320000.0000, NULL, 100, N'Hàn Quốc', NULL, N'Style Nanda – 3CE', NULL, NULL, N'Một trong những màu son mới nhất và hot nhất thuộc dòng son lì vừa được Style Nanda tung ra vào đầu tháng 9/2014.

Bổ sung hàng loạt màu mới cực đẹp, các tin đồ son 3CE không thể bỏ qua. Toàn bộ đều là son lì, nhiều dưỡng lâu trôi', NULL, NULL, NULL, 0.14, 4, N'Son-3CE-Lip-Color-707-Keen1.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (210, N'Son 3CE Red Recipe Lip Color – Hàn quốc', 350000.0000, NULL, 200, N'Hàn Quốc', NULL, NULL, 5, NULL, N'– 3CE RED RECIPE MATTE LIP COLOR là dòng son thỏi mới nhất từ hãng mỹ phẩm Hàn Quốc 3CE mùa Valentine, với thiết kế vỏ đỏ cực nổi bật và cực thu hút.

– SON THỎI 3CE RED RECIPE MATTE LIP COLOR mang thiết kế của một thỏi son vuông truyền thống, 3CE Red Recipe gây ấn tượng với người dùng bởi lớp vỏ đỏ nổi bật, phản ánh đúng với màu son thật phía trong là một ưu điểm của 3CE. Vỏ son được làm bằng chất liệu nhựa lì (không bóng). Nắp đạy chắc chắn, cầm chắc tay là những cảm nhận đầu tiên bạn thấy khi sở hữu 3CE Red Recipe.', NULL, NULL, NULL, 0.23, 4, N'Son-3CE-Red-Recipe-Lip-Color-Han-quc-21.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (211, N'Son Agapan Pit a Pat Matte Lipstick – Hàn quốc', 290000.0000, N'Agapan', 99, N'Hàn Quốc', NULL, NULL, NULL, NULL, N'– Son thỏi Agapan mẫu mới 2017 với thiết kế siêu sang chảnh, son vuông.

– Agapan rất biết theo xu hướng khi bảng màu son hoàn hảo với những gam màu siêu đẹp tôn da và đang rất thời thượng, từ tông hồng , đỏ đến gam nude đều rất chuẩn.

– Chất son Agapan thỏi lì nhưng lên môi trơn tru mềm mịn, không hề bị bột hay vón cục.', NULL, N' thoa son dưỡng cho môi khô bị khô, dùng cọ đánh son lên môi. Đánh 1,2,3 lớp tùy thích.', NULL, 0.13, 4, N'Son-Agapan-Pit-a-Pat-Matte-Lipstick-Han-quoc-6.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (212, N'Son Bbia Last Lipstick vỏ đỏ Hàn Quốc Chính Hãng', 250000.0000, NULL, 20, N'Hàn Quốc', NULL, N'BBia', 3, NULL, N'– Son BBia ‪ là dòng son lì mang thương hiệu BBia Hàn Quốc, chất son mềm mịn, lại bám màu rất lâu. Thiết kế sang trọng quý phái với màu đỏ đậm quyến rũ. Lên môi cực chuẩn và lung linh với sắc đỏ quyến rũ nổi bật', NULL, NULL, NULL, 0.28, 4, N'cjo1459137977.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (213, N'Son bbia mầu xanh Hàn Quốc', 240000.0000, NULL, 40, N'Hàn Quốc', NULL, N'BBia', 3, NULL, N'– Son BBia ‪ là dòng son lì mang thương hiệu BBia Hàn Quốc, chất son mềm mịn, lại bám màu rất lâu. Thiết kế sang trọng quý phái với màu đỏ đậm quyến rũ. Lên môi cực chuẩn và lung linh với sắc đỏ quyến rũ nổi bật

– BbiA Last Lipstick Red Series sẽ làm bạn yêu ngay từ cái nhìn đầu tiên với màu sắc và thiết kế vỏ hộp đến thiết kế của thỏi son, với màu đỏ đậm là biểu tượng sự quyến rũ của phái đẹp.

– Với chất liệu nhám-một thiết kế đột phá tạo cảm giác mềm mại khi cầm. Last Lipstick red series có thể được đánh 1,2,3 lần bằng cách đánh khác nhau, sẽ tạo ra những màu môi đậm nhạt khác nhau tùy sở thích của từng nàng nhé! màu sắc son dễ dàng sử dụng hằng ngày hoặc party.', N'– Chiết xuất từ các thành phần tự nhiên, hàm lượng chì ít.', NULL, NULL, 0.25, 4, N'Son-bbia-mau-xanh-han-quoc1.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (214, N'Son Bourjois Rouge Edition Velvet màu 19 đỏ mận', 280000.0000, NULL, 50, N'Pháp', 7, N'Bourjois', NULL, NULL, N'– Son Bourjois hay còn gọi là Son Velvet, tên đầy đủ là Son Bourjois Rouge Edition Velvet là dòng son của thương hiệu mỹ phẩm nổi tiếng ra đời tại kinh đô thời trang Paris của Pháp được sáng lập bởi nam diễn viên Joseph Albert Posin. Mặc dù chỉ là thương hiệu thuộc phân khúc drug store, nhưng các sản phẩm của Bourjois vẫn rất được ưa chuộng bởi vẻ đẹp đơn giản mà tinh tế, nhẹ nhàng nữ tính; công dụng tốt sử dụng đơn giản; thành phần thân thiện an toàn đã chiếm được cảm tình của không ít phái đẹp trên thế giới.

– Son Bourjois Rouge Edition Velvet màu 19 là dòng son che khuyết điểm hoàn hảo được các phái đẹp tin dùng và sử dụng. Son dạng kem lì bám màu lên màu chuẩn, sắc nét chân thực và sống động; đồng thời chăm sóc đôi môi mềm mại, bóng mượt như lụa.

– Màu đỏ mận trầm ấm quyến rũ của son Bourjois 19 là sự lựa chọn tuyệt vời cho những ngày đầu đông.

', NULL, N'– Son Bourjois 19 dùng đánh trực tiếp lên môi bằng cọ hoặc chấm son lên môi sau đó tán đều ra thành môi.

– Phù hợp với cách đánh full môi rực rỡ nổi bật hay đánh lòng môi ngọt ngào đáng yêu.

– Bảo quản son nơi khô ráo thoáng mát.', NULL, 0.25, 4, N'Son-Bourjois-Rouge-Edition-Velvet-mau-19-do-man-6.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (215, N'Son bút chì Ashley Thái Lan – premium cosmetic lip liner', 50000.0000, N'Ashley', 59, N'Thái Lan', NULL, NULL, NULL, NULL, N'– Son bút chì ashley thế hệ mới chính hãng Thái Lan

– Son Bút chì Ashley của Thái , thiết kiểu bút, dễ sử dụng , đặc biệt chất son cực mượt và lì . Độ bám trên 6-8h , màu sắc trung thực . Son có dưỡng nên không làm khô môi . Đa dạng màu sắc , giá cực tốt .

– Dòng son chì đang hot nhất hiện nay với độ bám màu ko son nào sánh bằng… về bao nhiêu khách hốt hết????', NULL, NULL, NULL, 0.4, 4, N'Son-but-chi-Ashley-Thai-Lan-premium-cosmetic-lip-liner-1111.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (216, N'Son Bút Chì Siêu Lì Mamonde creamy tint color balm intense', 250000.0000, N'Mamonde', 60, N'Hàn Quốc', NULL, NULL, NULL, NULL, N'– Mamonde là một thương hiệu mỹ phẩm và chăm sóc da của Hàn Quốc thuộc Tập đoàn mỹ phẩm MorePacific. Mamonde đa dạng về các sản phẩm chăm sóc da và trang điểm.

– Son Mamonde Creamy Tint Color Balm Intense New 2017 siêu phẩm tái xuất được ca ngợi bởi sự mềm mượt, lên màu tươi tắn trẻ trung.

– Mamonde Creamy Tint Color Balm Intense với nhiều cải tiến nổi bật từ thiết kế đến chất son cực mịn, khả năng lên màu siêu chuẩn.

– Thành phần chính chiết xuất từ tinh dầu hoa tầm xuân, tinh dầu hoa jojoba, sáp ong và nhiều dưỡng chất có lợi khác.', NULL, N'– Son môi bút chì sử dụng dễ dàng chỉ với những mẹo đơn giản sau:

– Tán son lên môi và có thể dùng son để tô lòng môi hay full môi tùy sở thích.

– Lưu ý, để son lên màu đẹp nên dùng trước một lớp son dưỡng và kem che khuyết điểm để làm nền.', NULL, 0.28, 4, N'Son-But-Chi-Sieu-Li-Mamonde-creamy-tint-color-balm-intense-6.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (217, N'Son Chou Chou Signature Premier Matt Rouge – Hàn quốc', 250000.0000, NULL, 50, N'Hàn Quốc', NULL, N'Chou Chou', NULL, NULL, N'– Chou Chou Signature Premire Matt Rouge là dòng son lì mới ra mắt của hãng mỹ phẩm Hàn Quốc Chou Chou, với thiết kế sang trọng, chất son và bảng màu tuyệt hảo cộng thêm giá thành cực kì phải chăng. Chou Chou chính là người hùng mới của các cô nàng mê son.

– Son thỏi Chou Chou Signature Premire Matt Rouge có vỏ ngoài màu đen mờ tạo nên vẻ huyền bí với phần đầu nắp mạ vàng nổi bật. Cây son bên trong mang thiết kế như một món trang sức lộng lẫy, kiêu sa, tạo nên một đẳng cấp mới cho người sử dụng.

– Son thỏi Chou Chou Signature Premire Matt Rouge cho lớp finish lì hoàn toàn nhưng cũng đồng thời mang lại hiệu ứng “3D Glowing Pigment” cho đôi môi căng mọng quyến rũ và đặc biệt là hoàn toàn không để lộ vân môi.

– Son thỏi Chou Chou Signature Premire Matt Rouge gồm 7 màu son đặc sắc và lạ mắt nhất. Từ những sắc đỏ hút mắt đến những gam màu dịu mắt và nhẹ nhàng hơn như màu hồng đào và màu đất.', NULL, NULL, NULL, 0.28, 4, N'Son-Chou-Chou-Signature-Premier-Matt-Rouge-Han-quoc-1.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (219, N'Son Color Lips Fit – Etude House', 250000.0000, NULL, 60, N'Hàn Quốc', NULL, N'Etude House', NULL, NULL, N'– Dòng son hot nhất 2014 với bộ sưu tập 7 màu sắc sinh động kèm son bóng đem lại cho đôi môi vẻ đẹp tự nhiên.

– Color Lips-Fit cho độ bám dính cao và bền màu, với hiệu ứng đặc biệt “Weightless-fit giúp son tỏa đều và nhanh chóng thấm vào môi tạo thành dạng son lì, cho bạn màu son tự nhiên và đáng yêu như chính sắc da của bạn.', NULL, NULL, NULL, 0.2, 4, N'Son-Color-Lips-Fit-–-Etude-House1.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (220, N'Son colourpop ultra matte lip', 250000.0000, NULL, 50, N'USA', NULL, N'Coloupop', NULL, NULL, N'– Hãng mỹ phẩm vừa ra mắt đã làm mưa làm gió trên đất Mỹ với dòng son Colourpop Lippie Stixkhông hề thua kém MAC, mà giá thành rẻ hơn MAC. Tiếp nối thành công vào cuối tháng 6, hãng tiếp tục cho ra thêm dòng son kem Colourpop Ultra Matte Lip và được đánh giá ngang với dòng son kem của Nyx.', N'-Chiết xuất từ các thành phần tự nhiên, rất an toàn cho môi của bạn, hàm lượng chì cực thấp.', N'– Đối với dòng son Matte Liquid thì chắc chắn nó sẽ làm môi khô. Khi dùng Ultra matte liquid lip, sau một vài phút thấy mỏng nhẹ bạn sẽ thấy môi khô dù trước đó đã dùng son dưỡng. Với dòng son này bạn tuyệt đối không nên bặm môi vì nó sẽ khiến cho màu son bị loang lổ, trông rất xấu.', NULL, 0.3, 4, N'Son-colourpop-ultra-matte-lip-31.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (221, N'Son dạ Ver22 Ink Jet Lip Tatt', 250000.0000, NULL, 69, N'Hàn Quốc', NULL, N'Chosung Ah', NULL, NULL, N'– Son môi thường là vật phẩm không thể thiếu trông túi xách phụ nữ, hơn hẳn thế các phái đẹp rấ yêu thích những thỏi son với màu sắc tươi sáng, lâu trôi giúp gương mặt bạn rạng rỡ cả ngày. Son dạ Ver22 Ink Jet Lip Tatt là thỏi son bạn mong muốn!

– Công nghệ son dạ mới làm dậy sóng thị trường mỹ phẩm năm nay với chức năng bám tốt, cho màu sắc trung thực. Son dạ Ver22 Ink Jet Lip Tatt được mọi người yêu thích cũng vì thế, son có thiết kế nhỏ gọn như cây bút, với đầu nhọn và nhỏ dễ dàng thoa son môi, giúp son môi ít lem và dễ kẻ viền môi, thoai son môi hơn đối với những bạn mới tập trang điểm.', N'– Son có 3 màu cho bạn lựa chọn: #1 đỏ, #2 hồng, #3 cam', NULL, NULL, 0.4, 4, N'son-da-ver22-ink-jet-lip-tatt-5-1.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (222, N'Son dưỡng có màu DHC Color Lip Cream của Nhật Bản', 250000.0000, NULL, 80, N'Nhật Bản', NULL, N'DHC', 2, NULL, N'– Son dưỡng có màu DHC Nhật Bản chứa thành phần dưỡng chất chính từ nhau thai cừu, chiết xuất dầu Olive và Squalene giúp bổ sung ẩm tức thì, đôi môi trở nên căng mượt, quyến rũ.

– Cải thiện và xóa tan tình trạng khô môi do thời tiết, làm dịu làn môi nứt nẻ một cách nhẹ nhàng mà hiệu quả.

– Cấp thêm dưỡng chất cho làn môi mịn mượt, giảm bớt sự nhăn nheo, lão hóa môi, đồng thời còn giúp cải thiện làn môi thâm xỉn màu.', N'– Son dưỡng có màu DHC từ thành phần thiên nhiên, dầu Olive, vitamin E, dầu dừa, chiết xuất nhau thai, collagen,…

– Không chứa hương liệu, paraben.', N'– Bạn có thể chỉ sử dụng son dưỡng có màu hoặc dùng thêm son trang điểm tùy ý, son dưỡng DHC sẽ trở thành một lớp màu nhẹ tự nhiên nếu để mặt mộc, còn sẽ là một lớp đệm màu đẹp, mịn nếu sử dụng thêm son màu.

– Vặn thỏi son lên và thoa lên môi 3 – 4 lớp chồng lên nhau.

– Có thể sử dụng nhiều lần trong ngày tùy theo nhu cầu.

– Vì son dưỡng môi DHC Color Lip Cream có thành phần dưỡng tốt nên không cần sử dụng son lót bên dưới. Có thể thoa trực tiếp son màu trang điểm lên trên DHC Color Lip Cream nếu bạn muốn make up đậm.', NULL, 0.26, 4, N'Son-duong-co-mau-DHC-Color-Lip-Cream-cua-Nhat-Ban-6.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (224, N'Son dưỡng có màu Sweet Glam Tint Glow của Secret Key', 190000.0000, NULL, 100, N'Hàn Quốc', NULL, NULL, 3, NULL, N'– Các Blogger nước ngoài vẫn phong cho em này là “bản dupe hoàn hảo của Dior Lip Glow” khi mà Sweet Glam Tint Glow có vẻ ngoài cũng như chất son bên trong không khác gì son dưỡng Dior – loại son dưỡng đứng đầu các bảng xếp hạng.

– Nhưng shop lại thích gọi son dưỡng Sweet Glam Tint Glow này là “kỳ phùng địch thủ” với son dưỡng Dior. Không những có thiết kế vỏ ngoài sang trọng & bắt mắt chẳng kém gì Dior, em này lại “nhỉnh” hơn ở vài yếu tố:', NULL, NULL, NULL, 0.24, 4, N'Son-duong-co-mau-Sweet-Glam-Tint-Glow-cua-Secret-Key-112.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (225, N'Son Dưỡng Etude House – Kissful Lip Care', 170000.0000, N'Etude House', 120, N'Hàn Quốc', NULL, NULL, NULL, NULL, N'– Kissful Lip Care Etude House là Dòng son dưỡng được ưa chuộng của Etude House, đặt biệt mùa hanh khô mỗi bạn lên sỏe hữu cho mình 1 thỏi

', NULL, N'– Sau khi làm sạch môi, đánh trực tiếp lên môi , đánh đều cả môi trên và dưới. Có thể cùng để làm kem nền khi trang điểm môi.', NULL, 0.24, 4, N'Etude-House-Kissful-Lip-Care-Lip-Concealer-BIA.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (231, N'Son Dưỡng Mỡ Hươu Astrid – tái tạo môi từ mỡ hươu vitamin E', 95000.0000, NULL, 50, N'Made in Czech (Cộng hòa Séc)', NULL, N'Astrid (www.Astrid.Cz)', NULL, NULL, N'– Son cung cấp vitamin, dưỡng chất chăm sóc môi, tăng cường độ đàn hồi và săn chắc môi

– Tái tạo môi, khắc phục tình trạng lão hóa, thâm môi và bong tróc do ảnh hưởng của hóa chất trong mỹ phẩm và môi trường

– Son bảo vệ môi trước tác động của môi trường, cân bằng độ ẩm, chống nứt nẻ môi và chống viêm, cải thiện tình trạng khô môi trong mùa đông.

– Son có tác dụng nuôi dưỡng môi, đẩy nhanh quá trình chữa lành các vết nứt nhỏ trên môi và chống viêm, cân bằng độ ẩm, làm giảm khô môi trong mùa đông.

', NULL, N'– Trước khi Đi ngủ bạn thoa 1 lớp như thoa son

Quan trọng là Sáng hôm sau khi đánh răng hoặc rửa mặt bạn trà cọ rửa mặt hay bàn chải đánh răng vào môi--> lúc này da môi bạn khô từ hôm qua sẽ bong sạch mà ko ảnh hưởng tới da môi
Sau đó bạn thoa 1 lớp dưỡng mỡ hươu lên môi…cả ngày ăn uống xong bạn lại thoa son sau khi làm sạch môi cứ như vậy cả mùa đông môi bạn sẽ Căng Mọng Bóng', NULL, 0.47, 4, N'a21.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (232, N'Son dưỡng môi chiết xuất bơ hạt xoài', 120000.0000, NULL, 50, N'Hàn Quốc', NULL, N'The Face Shop.', NULL, NULL, N'– Son dưỡng môi bơ hạt xoài I’m Shea Butter mang lại đôi môi tự nhiên, mượt mà cho bạn gái.

– Son kết cấu dạng kem, mượt và không màu.

', NULL, NULL, NULL, 0.3, 4, N'Son-duong-moi-chiet-xuat-bo-hat-xoai-5.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (234, N'Son dưỡng môi chiết xuất hoa cúc trắng – Nga', 110000.0000, NULL, 60, N'Nga', NULL, N'Pure Line', NULL, NULL, N'– Son môi dưỡng, tác dụng chống nứt DÒNG PURE LINE 3 tác dụng có nguồn gốc từ hoa cúc

– Môi trường nuôi dưỡng, thúc đẩy chữa bệnh của các vết nứt nhỏ

– Cung cấp độ ẩm cho da, giảm khô da, duy trì độ săn chắc và đàn hồi

– làm mềm và làm dịu da, cung cấp sự mềm mại và dịu dàng

– Dòng son dưỡng môi tinh khiết chiết xuất từ hoa cúc để giúp bạn có được đôi môi mềm mại trước khi sử dụng son môi và son giúp giữ màu.

– Chamomile dòng thảo dược có tác dụng rất tốt trong việc điều trị viêm và bảo trì da.O chuyên gia sắc đẹp của Nga và các dược sĩ sử dụng luôn luôn tập trung vào các thành phần của nó để nuôi dưỡng môi và chăm sóc da mặt.', NULL, NULL, NULL, 0.3, 4, N'Son-duong-moi-chiet-xuat-hoa-cuc-trang-Nga-11.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (236, N'Son dưỡng môi CMO 7 loại tinh dầu tự nhiên – Nga', 95000.0000, NULL, 100, N'Nga', NULL, N'Cmo', NULL, NULL, N'– Son chống lão hóa chăm sóc môi Cmo được chiết xuất từ 7 loại tinh dầu quý giá của nước Nga, có tác dụng nổi bật trong việc ngăn chặn quá trình lão hóa của da môi khi chị em bắt đầu bước vào lứa tuổi 25-30. Ngoài ra, son giúp cân bằng độ ẩm, thúc đẩy quá trình tái tạo tế bào, ngăn ngừa tình trạng khô môi và nứt nẻ.

– Son cung cấp vitamin, dưỡng chất chăm sóc môi, tăng cường độ đàn hồi và săn chắc môi

– Son bảo vệ môi trước tác động của môi trường, cân bằng độ ẩm, chống nứt nẻ môi và chống viêm, cải thiện tình trạng khô môi trong mùa đông.', NULL, NULL, NULL, 0.42, 4, N'Son-duong-moi-CMO-7-loai-tinh-dau-tu-nhien-Nga-42.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (237, N'Son dưỡng môi DHC Nhật Bản Môi hồng quyến rũ', 210000.0000, NULL, 120, N'Nhật Bản', NULL, N'DHC', NULL, NULL, N'– Son dưỡng trị thâm môi DHC Lip Cream Nhật Bản là một trong những dòng sản phẩm được yêu thích nhất, bạn chạy nhất của hãng mỹ phẩm nổi tiếng DHC Nhật Bản.

– Những dòng sản phẩm của hãng mỹ phẩm này đều có nguồn gốc tự nhiên nên rất an toàn khi sử dụng.

– Son dưỡng môi DHC được chiết xuất từ: Collagen, vitamin E, dầu oliu nguyên chất, cam thảo … có tác dụng làm hết thâm môi, dưỡng ẩm, phòng tránh hiện tượng môi nứt nẻ cho đôi môi mềm mại, căng mịn và quyến rũ.', NULL, N'– Sử dụng son dưỡng môi này như một lớp son lót để bảo vệ môi trước khi sử dụng son màu.

– Thoa đều son dưỡng môi DHC Nhật để giữ ẩm làm mềm, phòng tránh hoặc trị môi khô, môi nứt nẻ.', NULL, 0.29, 4, N'Son-duong-moi-DHC-Nhat-Ban-Moi-hong-quyen-ru-4.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (238, N'Son dưỡng môi giữ ẩm không màu bioderma – Pháp', 120000.0000, NULL, 200, N'Pháp', NULL, N'Bioderma', NULL, NULL, N'– Có tác dụng giữ ẩm và chăm sóc nhẹ nhàng cho đôi môi khô và nhạy cảm

– Son ăn vào môi giúp môi mềm ngay tức khắc, không nhờn nhớp và dính như các loại son dưỡng khác

– Thành phần 100% từ tự nhiên, được làm dưới nền sáp màu trắng tự nhiên, mùi thơm nhẹ nhàng', N'– Mineral Oil ( Paraffinumliquidum), Paraffin, Microcrystalline Wax ( Cera Microcristallina), Sythetic Wax, Butyrospermum Parkii ( Shea) Butter, Laurylpca, Beeswax ( Cera Alba), Tocopherol, Lecithin, Arachidyl Propionate, Tocopheryl Acetatte, Retinyl Palmitate, Ethyllinolenate, BHT, Ethyl Linoleate, Ethyl Oleate, Laminnaria Ochroleuca Extract, Octyldodecanol, Carprylic/ Caprylic Triglyceride, Fragrance( Parfum). [ BI 577]', N'– Thoa lượng vừa đủ lên môi , dùng ngón tay massage nhẹ nhàng

– Thoa trước khi tô son màu

– Sử dụng thường xuyên cho môi nứt nẻ nhưn không nên sử dụng quá 3 lần / ngày', NULL, 0.38, 4, N'Son-duong-moi-giu-am-khong-mau-bioderma-Phap-11.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (240, N'Son dưỡng môi MOROZKO chống nẻ trẻ em Ông Già Tuyết', 80000.0000, NULL, 200, N'Nga', NULL, N'Ông già Tuyết', 20, NULL, NULL, N'– Một phức hợp của các loại dầu chữa bệnh, sáp parafin, sáp carnauba, bơ ca cao, Ceresin, dầu thầu dầu, hoa cúc và castor hạt fitokontsetrat, hương vị

– Vitamin A, E và chiết xuất hoa cúc

– Ít gây dị ứng. Được thử nghiệm lâm sàng và khuyến cáo của Viện Nghiên cứu Nhi khoa và Phẫu thuật Nhi.

– Nhận Giấy chứng nhận: PCT ( xác nhận sự phù hợp của son dưỡng môi Ong Gìa Tuyết với các quy chuẩn kỹ thuật, tiêu chuẩn Y tế an toàn sức khỏe cho trẻ em)', N'– Thoa đều son dưỡng môi lên môi bé hàng ngày. Không nên vặn son cao quá 1cm để tránh làm gãy son', NULL, 0.38, 4, N'Son-dung-mui-MOROZKO-chng-n-tr-em-eng-Gia-Tuyt-11.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (241, N'Son dưỡng Secret key ice cream tint glow', 200000.0000, NULL, 100, N'Hàn Quốc', NULL, N'Secret Key', 3, NULL, N'– Được biết đến như là phiên bản Dupe của Dior giống đến 99% và chất lượng cũng không thua kém, trong khi giá thành lại rẻ hơn rất nhiều. Các bạn yêu son chắc hẳn đều biết Sweet Glam Tint Glow đã làm mưa làm gió và rất được yêu thích.

– Chất son mềm mướt lướt nhẹ trên môi.

– Màu siêu yêu, bám rất lâu và lên màu rõ, chuẩn màu.

– Dưỡng môi không bị khô suốt cả ngày và có độ bóng nhẹ nhàng, xinh xắn. Thời tiết đang dần chuyển sang hanh khô thì em này là một sự lựa chọn tuyệt vời.', N'– Thành phần được chiết xuất tự nhiên không gây hại, không khô môi suốt cả ngày và có độ bóng tự nhiên.', N'– Bôi son dưỡng khi cảm thấy khô.

– Sử dụng hàng ngày.', NULL, 0.25, 4, N's-l1600.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (242, N'Son Dưỡng Tẩy Da Chết Mỡ Hươu Astrid', 70000.0000, NULL, 200, N'Made in Czech (Cộng hòa Séc)', NULL, N'Astrid', 3, NULL, N'– SIÊU VŨ KHÍ CHỐNG LẠI MÙA ĐÔNG HANH KHÔ – LOẠI BỎ TÌNH TRẠNG KHÔ NỨT, BONG TRÓC, CHẢY MÁU, THÂM MÔI CHỈ SAU 2 NGÀY SỬ DỤNG !!!

– Chiết xuất từ #mỡhươu và #vitaminE tự nhiên giúp dưỡng ẩm, làm mềm môi cực hiệu quả

– ️Hiệu quả ngay tức thì, giúp môi thoát khỏi tình trạng khô nứt, ngăn chặn sự lão hóa, làm #mờnếpnhăn môi

– Dùng lâu dài có tác dụng #trịthâm môi do chì trong son màu', NULL, N'– Trước khi Đi ngủ bạn thoa 1 lớp như thoa son

– Quan trọng là Sáng hôm sau khi đánh răng hoặc rửa mặt bạn trà cọ rửa mặt hay bàn chải đánh răng vào môi–> lúc này da môi bạn khô từ hôm qua sẽ bong sạch mà ko ảnh hưởng tới da môi

– Sau đó bạn thoa 1 lớp dưỡng mỡ hươu lên môi…cả ngày ăn uống xong bạn lại thoa son sau khi làm sạch môi cứ như vậy cả mùa đông môi bạn sẽ Căng Mọng Bóng', NULL, 0.36, 4, N'Son-Duong-Tay-Da-Chet-Mo-Huou-Astrid-111.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (243, N'Son dưỡng trị thâm môi Laila Crystal Pink Lip', 210000.0000, NULL, 100, N'Thái Lan', NULL, N'Laila Spa', 10, NULL, N'– Chỉ có bạn son dưỡng Crystal Pink Lip mới có thể cải thiện rõ rệt vấn đề môi thâm tối màu 1 cách hiệu quả nhất.

– Thiết kế sang chảnh đẹp lung linh, son mùi thơm nhẹ và dễ chịu.

– Sản phẩm mới L’aila Spa Cystal Pink Lip – son dưỡng môi với công thức thảo mộc đặc biệt giúp cung cấp độ ẩm cần thiết cho môi, giúp môi luôn căng mọng hồng trong suốt đầy sức sống, gợi cảm, sexy.', N'– Với chiết xuất 100% thảo mộc thiên nhiên không gây hại nên các mẹ bầu cũng có thể sử dụng, ngoài ra có thể dùng cho các bé như son dưỡng, chống thâm môi, cải thiện sắc màu môi nữa đấy.', N'– Bạn thoa một lớp mỏng son Laila Crystal Pink Lip trước khi thoa son màu để ngăn ngừa thâm môi hiệu quả, và màu son sẽ chuẩn hơn.

– Môi hồng xinh cải thiện rõ rệt sau 3 tuần với Son dưỡng trị thâm làm hồng môi Laila Crystal Pink Lip một sản phẩm có xuất xứ từ mỹ phẩm Thái Lan.', NULL, 0.24, 4, N'Son-duong-tri-tham-moi-Laila-Crystal-Pink-Lip-11.jpg')
SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[TaiKhoan] ON 

INSERT [dbo].[TaiKhoan] ([MaTK], [Email], [MatKhau], [HoTen], [DiaChi], [SoDienThoai], [Anh], [TinhTrang], [MaQuyen]) VALUES (2, N'namdoan@gmail.com', N'123456', N'Đoàn Duy Nam', N'Vĩnh Bảo - Hải Phòng', N'0397482016', N'th.jpg', 1, 1)
INSERT [dbo].[TaiKhoan] ([MaTK], [Email], [MatKhau], [HoTen], [DiaChi], [SoDienThoai], [Anh], [TinhTrang], [MaQuyen]) VALUES (3, N'hadv@gmail.com', N'123456', N'Vinh Hà Đỗ', N'Hà Nội', N'0123456789', N'anh-gai-xinh-2000-de-thuong.jpg', 1, 3)
INSERT [dbo].[TaiKhoan] ([MaTK], [Email], [MatKhau], [HoTen], [DiaChi], [SoDienThoai], [Anh], [TinhTrang], [MaQuyen]) VALUES (4, N'linhloc27092000@gmail.com', N'123456', N'Nguyễn Anh Linh', N'Ứng Hòa - Hà Nội', N'0815619200', NULL, 1, 3)
INSERT [dbo].[TaiKhoan] ([MaTK], [Email], [MatKhau], [HoTen], [DiaChi], [SoDienThoai], [Anh], [TinhTrang], [MaQuyen]) VALUES (5, N'duykhanh@gmail.com', N'123456', N'Hoàng Duy Khánh', N'Hải Phòng', N'075645676 ', NULL, 1, 3)
INSERT [dbo].[TaiKhoan] ([MaTK], [Email], [MatKhau], [HoTen], [DiaChi], [SoDienThoai], [Anh], [TinhTrang], [MaQuyen]) VALUES (6, N'doanvu@gmail.com', N'123456', N'Vũ Văn Doan', N'Nam Định', N'086743456 ', N'IMG_20190922_215443.jpg', 1, 3)
INSERT [dbo].[TaiKhoan] ([MaTK], [Email], [MatKhau], [HoTen], [DiaChi], [SoDienThoai], [Anh], [TinhTrang], [MaQuyen]) VALUES (7, N'ducdiep@gmail.com', N'123456', N'Nguyễn Đức Điệp', N'Hà Nội', N'098765432 ', NULL, 1, 3)
INSERT [dbo].[TaiKhoan] ([MaTK], [Email], [MatKhau], [HoTen], [DiaChi], [SoDienThoai], [Anh], [TinhTrang], [MaQuyen]) VALUES (10, N'lehongphong@gmail.com', N'123456', N'Lê Hồng Phong', N'Đại Học Công Nghiệp Hà Nội', N'0815619222', N'89509247_p0_master1200.jpg', 1, 2)
INSERT [dbo].[TaiKhoan] ([MaTK], [Email], [MatKhau], [HoTen], [DiaChi], [SoDienThoai], [Anh], [TinhTrang], [MaQuyen]) VALUES (11, N'xuanlinh@gmail.com', N'123456', N'Nguyễn Xuân Linh', N'Ứng Hòa - Hà Nội', N'0815619255', NULL, 1, 3)
SET IDENTITY_INSERT [dbo].[TaiKhoan] OFF
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([MaDM])
REFERENCES [dbo].[DanhMucSP] ([MaDM])
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD FOREIGN KEY([MaQuyen])
REFERENCES [dbo].[PhanQuyen] ([MaQuyen])
GO
USE [master]
GO
ALTER DATABASE [MyPham] SET  READ_WRITE 
GO
