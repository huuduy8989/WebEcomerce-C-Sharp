USE [ShopBanGiay]
GO
/****** Object:  Table [dbo].[CHITIETDONHANG]    Script Date: 5/12/2021 7:57:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETDONHANG](
	[MaDonHang] [int] NOT NULL,
	[Magiay] [int] NOT NULL,
	[Soluong] [int] NULL,
	[Dongia] [decimal](18, 0) NULL,
 CONSTRAINT [PK_CHITIETDONHANG] PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC,
	[Magiay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHUDE]    Script Date: 5/12/2021 7:57:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHUDE](
	[MaCD] [int] IDENTITY(1,1) NOT NULL,
	[TenChuDe] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_CHUDE] PRIMARY KEY CLUSTERED 
(
	[MaCD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DONDATHANG]    Script Date: 5/12/2021 7:57:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DONDATHANG](
	[MaDonHang] [int] IDENTITY(1,1) NOT NULL,
	[Dathanhtoan] [bit] NULL,
	[Tinhtranggiaohang] [bit] NULL,
	[Ngaydat] [datetime] NULL,
	[Ngaygiao] [datetime] NULL,
	[MaKH] [int] NULL,
 CONSTRAINT [PK_DONDATHANG] PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GIAY]    Script Date: 5/12/2021 7:57:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GIAY](
	[Magiay] [int] IDENTITY(1,1) NOT NULL,
	[Tengiay] [nvarchar](100) NOT NULL,
	[Giaban] [decimal](18, 0) NULL,
	[Mota] [nvarchar](max) NULL,
	[Anhbia] [varchar](50) NULL,
	[Ngaycapnhat] [datetime] NULL,
	[Soluongton] [int] NULL,
	[MaCD] [int] NULL,
	[MaNSX] [int] NULL,
 CONSTRAINT [PK_GIAY] PRIMARY KEY CLUSTERED 
(
	[Magiay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 5/12/2021 7:57:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](100) NOT NULL,
	[Taikhoan] [varchar](50) NULL,
	[Matkhau] [varchar](50) NOT NULL,
	[Email] [varchar](100) NULL,
	[DiachiKH] [nvarchar](100) NULL,
	[DienthoaiKH] [varchar](50) NULL,
	[Ngaysinh] [datetime] NULL,
 CONSTRAINT [PK_KHACHHANG] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHASANXUAT]    Script Date: 5/12/2021 7:57:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHASANXUAT](
	[MaNSX] [int] IDENTITY(1,1) NOT NULL,
	[TenNSX] [nchar](100) NOT NULL,
	[DenTu] [nchar](100) NOT NULL,
 CONSTRAINT [PK_NHASANXUAT] PRIMARY KEY CLUSTERED 
(
	[MaNSX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CHUDE] ON 

INSERT [dbo].[CHUDE] ([MaCD], [TenChuDe]) VALUES (1, N'GIÀY THỂ THAO')
INSERT [dbo].[CHUDE] ([MaCD], [TenChuDe]) VALUES (2, N'GIÀY CÔNG SỞ')
INSERT [dbo].[CHUDE] ([MaCD], [TenChuDe]) VALUES (3, N'GIÀY SNEACKER')
INSERT [dbo].[CHUDE] ([MaCD], [TenChuDe]) VALUES (4, N'DÉP HOT')
INSERT [dbo].[CHUDE] ([MaCD], [TenChuDe]) VALUES (5, N'GIÀY TRENDING')
SET IDENTITY_INSERT [dbo].[CHUDE] OFF
GO
SET IDENTITY_INSERT [dbo].[GIAY] ON 

INSERT [dbo].[GIAY] ([Magiay], [Tengiay], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [MaNSX]) VALUES (1, N'Addidas Stan simth Fairway', CAST(1000000 AS Decimal(18, 0)), N'Giày thể thao nam ADIDAS có thiết kế năng động, hiện đại, khỏe khoắn, hợp thời trang, dễ phối đồĐôi giày kinh điển này có phong cách đa năng và thiết kế tối giản luôn nổi bật một cách tự nhiên..', N'1.jpg', CAST(N'2021-04-30T00:00:00.000' AS DateTime), 100, 1, 2)
INSERT [dbo].[GIAY] ([Magiay], [Tengiay], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [MaNSX]) VALUES (2, N'Addidas SupperStar Running', CAST(1500000 AS Decimal(18, 0)), N'Giày Hiệu Adidas Supper Star Trắng
Adidas Super Star full Trắng
Thiết kế ban đầu dành cho sân bóng rổ vào thập niên 70, đôi giày adidas Superstar đã trở thành biểu tượng của các tín đồ thời trang đường phố. Thiết kế mũi giày vỏ sò mang đến phong cách chất lừ và khả năng bảo vệ. Bạn có thể tự tin tham gia lễ hội âm nhạc hay dạo phố mà không sợ bị dẫm lên chân. Chi tiết 3 Sọc viền răng cưa và logo adidas Superstar đóng khung mang đậm phong cách nguyên bản chính hiệu.', N'2.jpg', CAST(N'2021-04-30T00:00:00.000' AS DateTime), 120, 1, 2)
INSERT [dbo].[GIAY] ([Magiay], [Tengiay], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [MaNSX]) VALUES (3, N'Adidas Alphabounce Beyond Cloud White', CAST(1000000 AS Decimal(18, 0)), N'Thiết kế dành cho những vận động viên thể thao giỏi nhất, Đôi giày này hỗ trợ các chuyển động đa chiều với đệm linh hoạt và nền tảng rộng, ổn định ở ngón chân và gót chân. Thân trên thiết kế liền mạch dạng lưới co giãn và phù hợp với dáng chân. Đế giữa Bounce mang đến sự thoải mái và linh hoạt. Đế ngoài cao su continental™ đặc biệt chống chịu điều kiện ẩm ướt và khô', N'3.jpg', CAST(N'2021-04-30T00:00:00.000' AS DateTime), 200, 1, 2)
INSERT [dbo].[GIAY] ([Magiay], [Tengiay], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [MaNSX]) VALUES (4, N'Adidas Alphabounce Beyond Grey', CAST(3000000 AS Decimal(18, 0)), N'Giày Adidas AlphaBounce Beyond Running Grey 2018 là một bản phối vô cùng ấn tượng với tông màu xám full chúng ta có thể thấy một thiết kế tuy đơn giản nhưng lại vô cùng cá tính của Adidas Alphabounce một trong những mẫu giày thành công của Adidas không dựa và nền tản Boost mà Adidas thường đưa vào các sản phẩm của mình trong những năm gần đây. Adidas AlphaBounce Beyond Running Grey vẫn chưa hết hot ở thị trường hiện nay và được xem là một trong những mẫu giày chạy bộ và tập gym yêu thích của những người yêu thể thao.

', N'4.jpg', CAST(N'2021-04-30T00:00:00.000' AS DateTime), 100, 1, 2)
INSERT [dbo].[GIAY] ([Magiay], [Tengiay], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [MaNSX]) VALUES (5, N'Adidas Alphabounce Instinct Core Black Silver Metallic', CAST(2900000 AS Decimal(18, 0)), N'Giày Alphabounce Beyond Grey với chất liệu cao cấp đảm bảo độ bền và thoải mái chân khi mang. Kiểu dáng đơn giản nhưng không kém phầm sang trọng. Giúp bảo vệ đôi chân của bạn trong suốt quá trính vận động. Với cảm hứng đầy tự hào từ những phiên bản đi trước sẽ là người bạn đồng hành siêu bền bỉ cho bạn trong các trải nghiệm đường phố mỗi ngày.

Nguồn : https://1sneaker.vn/mua/giay-alphabounce-instinct-core-black-silver-metallic-nam-nu/', N'5.jpg', CAST(N'2021-04-30T00:00:00.000' AS DateTime), 150, 1, 2)
INSERT [dbo].[GIAY] ([Magiay], [Tengiay], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [MaNSX]) VALUES (6, N'Adidas Alphabounce Instinct Core Heather', CAST(2500000 AS Decimal(18, 0)), N'Chất liệu cao cấp rất mềm mại và êm ái, tạo cảm giác thoải mái cho từng bước đi. Phần đế làm bằng cao su tổng hợp với phần rãnh chống trơn trượt, đảm bảo sự an toàn cho người mang.
Kiểu dáng tinh tế, hợp xu hướng được thiết kế trẻ trung, là một thiết kế dành bạn, giày chú trọng phom dáng với từng đừơng, làm toát lên vẻ trẻ trung, thanh lịch. Đương may tỉ mỉ và đường keo dán chắc chắn và bền bỉ trong thời gian dài.
Sự kết hợp hoàn hảo với những bộ trang phục đủ mọi phong cách, Từ đồ dạo phố như jeans, quần lửng tới những bộ trang phục lịch sự như quần kaki và sơ mi thì đôi giày thể thao này đều “chiều chuộng” được hết.', N'6.jpg', CAST(N'2021-04-30T00:00:00.000' AS DateTime), 189, 1, 2)
INSERT [dbo].[GIAY] ([Magiay], [Tengiay], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [MaNSX]) VALUES (7, N'Adidas Alphabounce Instinct Linen', CAST(1700000 AS Decimal(18, 0)), N'Giày Adidas Alphabounce Instinct Linen B76039 với chất liệu cao cấp đảm bảo độ bền và thoải mái chân khi mang. Kiểu dáng đơn giản nhưng không kém phầm sang trọng. Giúp bảo vệ đôi chân của bạn trong suốt quá trính vận động. Với cảm hứng đầy tự hào từ những phiên bản đi trước sẽ là người bạn đồng hành siêu bền bỉ cho bạn trong các trải nghiệm đường phố mỗi ngày. Adidas Alphabounce Instinct Linen B76039. 2 ver Xám / Đen. Phù hợp: nam nữ, đi học, đi làm, tập gym. Size: 36-44. Êm chân, thoáng khí. Giao hàng toàn quốc. Bảo hành 3 tháng. Đổi trả dễ dàng. Streetwear, trẻ trung năng động.

Nguồn : https://1sneaker.vn/mua/adidas-alphabounce-instinct-linen-b76039/', N'7.jpg', CAST(N'2021-04-30T00:00:00.000' AS DateTime), 250, 1, 2)
INSERT [dbo].[GIAY] ([Magiay], [Tengiay], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [MaNSX]) VALUES (8, N'Adidas Falcon Crystal White Navy', CAST(1999999 AS Decimal(18, 0)), N'Adidas không khiến fans của hãng giày 3 sọc này thất vọng khi liên tiếp cho release những mẫu giày độc đáo đậm tính thời trang và luôn cháy hàng trên mọi mặt trận. Falcon là ví dụ điển hình cho xu hướng sáng tạo và học hỏi không ngừng của hãng giày đạt doanh thu số 1 toàn cầu năm 2019. Kyile Jenner đã trở thàng người quảng bá hình ảnh cho dòng giày ra mắt vào mùa Hè năm nay. Phủ sóng trên mọi mặt trận thời trang và là item không thể thiếu trong tủ giày. Có thể nói Adidas Falcon là mẫu giày bạn không thể bỏ lỡ.', N'8.jpg', CAST(N'2021-04-30T00:00:00.000' AS DateTime), 245, 1, 2)
INSERT [dbo].[GIAY] ([Magiay], [Tengiay], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [MaNSX]) VALUES (9, N'Adidas Ultra Boost 4.0 Grey Three', CAST(3000000 AS Decimal(18, 0)), N'Cho khả năng chạy bộ tốt êm ái Màu sắc nổi bật cá tính cũng như sang trọng trong tầm giá Phần trên của giày thoáng khí, giúp đôi chân luôn dược thoáng và thoải mái Bộ đệm chân giúp bạn chạy nhanh và êm khi tiếp xúc nhiều với mặt đất Đế ngoài của Stretchweb uốn cong một cách tự nhiên cho một chuyến đi tràn đầy năng lượng, trong khi Cao su Continental ™ mang đến cho bạn lực kéo vượt trội

Nguồn : https://1sneaker.vn/mua/giay-the-thao-ultra-boost-4-0-grey-three/', N'9.jpg', CAST(N'2021-04-30T00:00:00.000' AS DateTime), 265, 1, 2)
INSERT [dbo].[GIAY] ([Magiay], [Tengiay], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [MaNSX]) VALUES (10, N'Air Force 1 Shadow Macaron Candy.', CAST(2700000 AS Decimal(18, 0)), N'Nike Air Force 1 được thiết kế hướng tới sự đơn giản nhưng vô cùng tinh tế. Đây là sự lựa chọn hoàn hảo cho các tín đồ yêu thể thao khi có thể dễ dàng phối hợp trang phục hằng ngày để khẳng định phong cách thời trang.', N'10.jpg', CAST(N'2021-04-30T00:00:00.000' AS DateTime), 275, 1, 1)
INSERT [dbo].[GIAY] ([Magiay], [Tengiay], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [MaNSX]) VALUES (11, N'New Balance CRT 300 Beige Navy', CAST(900000 AS Decimal(18, 0)), N'New Balance CRT 300 Beige Navy với chất liệu cao cấp đảm bảo độ bền và thoải mái chân khi mang. Kiểu dáng đơn giản nhưng không kém phầm sang trọng. Giúp bảo vệ đôi chân của bạn trong suốt quá trính vận động. Với cảm hứng đầy tự hào từ những phiên bản đi trước sẽ là người bạn đồng hành siêu bền bỉ cho bạn trong các trải nghiệm đường phố mỗi ngày.', N'11.jpg', CAST(N'2021-04-30T00:00:00.000' AS DateTime), 50, 1, 1)
INSERT [dbo].[GIAY] ([Magiay], [Tengiay], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [MaNSX]) VALUES (12, N'MLB Bigball Chunky Monogram LT New York Yankees,', CAST(2500000 AS Decimal(18, 0)), N'MLB Bigball Chunky Monogram LT New York Yankees chính hãng Hàn Quốc được làm bởi chất liệu da cao cấp mang lại giác thoải mái, êm chân khi đi. Đôi MLB Big Ball Chunky sở hữu thiết kế độc đáo, phá cách, tạo nên sự trẻ trung, năng động cho người dùng.

Form giày với các đường nét vô cùng tinh tế và sắc sảo. Thân giày được in logo thương hiệu MLB NY càng làm cho đôi giày trở nên nổi bật. Đế giày được thiết kế với độ ma sát cao, hạn chế trơn trượt cho người sử dụng.', N'12.jpg', CAST(N'2021-04-30T00:00:00.000' AS DateTime), 208, 1, 1)
INSERT [dbo].[GIAY] ([Magiay], [Tengiay], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [MaNSX]) VALUES (13, N'Nike Air Force 1 ’07 LV8 Overbranding.', CAST(3100000 AS Decimal(18, 0)), N' Air Force 1’07 LV8 Utility được coi là một trong những đứa con cưng của nhãn hàng, góp phần đưa khách hàng đến gần hơn với nhà sản xuất. Thương hiệu và uy tín của hãng giày vì thế mà cũng ngày càng được đánh giá cao hơn sau sự kiện ra mắt của dòng sản phẩm đẳng cấp này.

Dòng giày này không phải là quá mới mẻ với các tín đồ giày nhưng sức hút của nó thì chưa bao giờ mất đi. Bạn có thể sử dụng giày để đi hàng ngày và đặc biệt có thể trưng diện vào những dịp đặc biệt, lễ hội, tiệc tùng một cách ấn tượng, không cầu kỳ nhưng vẫn luôn thể hiện được đẳng cấp riêng của mình.

Chất liệu da mềm.
Các chi tiết thiết kế nổi bật, mới lạ.
Cảm giác mang êm ái.
Hỗ trợ tăng chiều cao.
Dễ dàng phối nhiều loại trang phụ', N'13.jpg', CAST(N'2021-04-30T00:00:00.000' AS DateTime), 350, 1, 1)
INSERT [dbo].[GIAY] ([Magiay], [Tengiay], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [MaNSX]) VALUES (14, N'Nike Air Force 1 Low ‘Just Do It’', CAST(2785000 AS Decimal(18, 0)), N'Air Force 1 “JUST DO IT” được coi là một trong những đứa con cưng của N.ike, góp phần đưa khách hàng đến gần hơn với nhà sản xuất. Thương hiệu và uy tín của hãng vì thế mà cũng ngày càng được đánh giá cao hơn sau sự kiện ra mắt của dòng sản phẩm đẳng cấp này.
Dòng giày này không phải là quá mới mẻ với các tín đồ giày nhưng sức hút của nó thì chưa bao giờ mất đi. Bạn có thể sử dụng giày để đi hàng ngày và đặc biệt có thể trưng diện vào những dịp đặc biệt, lễ hội, tiệc tùng một cách ấn tượng, không cầu kỳ nhưng vẫn luôn thể hiện được đẳng cấp riêng của mình.

Chất liệu da mềm.
Các chi tiết thiết kế nổi bật, mới lạ.
Gót giày thêu slogan nổi tiếng của “Just do it”.
Dây giày được in kèm slogan.
Họa tiết móc mang hiệu ứng 3D độc đáo.
Cảm giác mang êm ái.
Hỗ trợ tăng chiều cao.
Dễ dàng phối nhiều loại trang phục.', N'14.jpg', CAST(N'2021-04-30T00:00:00.000' AS DateTime), 125, 1, 1)
INSERT [dbo].[GIAY] ([Magiay], [Tengiay], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [MaNSX]) VALUES (15, N'Nike Air Force 1 Low G-Dragon Peaceminusone Para-Noise Red Swoosh (Korea Exclusive)', CAST(1800000 AS Decimal(18, 0)), N'Air Force 1 Low G-Dragon Peaceminusone Para-Noise Red Swoosh (Korea exclusive) với chất liệu cao cấp đảm bảo độ bền và thoải mái chân khi mang. Kiểu dáng đơn giản nhưng không kém phầm sang trọng. Giúp bảo vệ đôi chân của bạn trong suốt quá trính vận động. Với cảm hứng đầy tự hào từ những phiên bản đi trước sẽ là người bạn đồng hành siêu bền bỉ cho bạn trong các trải nghiệm đường phố mỗi ngày.', N'15.jpg', CAST(N'2021-04-30T00:00:00.000' AS DateTime), 134, 1, 1)
INSERT [dbo].[GIAY] ([Magiay], [Tengiay], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [MaNSX]) VALUES (16, N'Nike Air Force 1 Low GS Triple White. Giày Sneaker', CAST(800000 AS Decimal(18, 0)), N'Air Force 1 (AF1) là một trong những mẫu sneaker kinh điển mọi thời đại của thương hiệu này. Là một trong những item được cả những người sành giày và các bạn trẻ yêu thích phong cách thời trang đường phố trên khắp thế giới yêu thích. Thiết kế trẻ trung với duy nhất một màu trắng chính là điểm nhấn đặc biệt. Mọi thứ bạn trải qua trên đôi chân sẽ được lưu lại vĩnh viễn.
Must-have-item.
Chất liệu da tổng hợp.
Logo thương hiệu thêu trên lưỡi gà, gót giày sắc nét.
Họa tiết sao dưới đế giày.
Màu trắng nguyên khối nổi bật.
Đế giày tăng chiều cao 2-3cm.
Dễ dàng vệ sinh, bảo quản.
Kiểu dáng unisex phù hợp mọi giới tính, độ tuổi, trang phục.', N'16.jpg', CAST(N'2021-04-30T00:00:00.000' AS DateTime), 155, 3, 1)
INSERT [dbo].[GIAY] ([Magiay], [Tengiay], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [MaNSX]) VALUES (17, N'Nike Air Force 1 Shadow Pale Ivory', CAST(754000 AS Decimal(18, 0)), N'Là một trong những sản phẩm mang thương hiệu Nike nên chắc chắn không thể thiếu đi biểu tượng dấu Swoosh huyền thoại. Đây chính là điểm nhấn đặc biệt của tất cả các mẫu giày, trong đó có cả Nike Air Force 1. Bên cạnh đó, mẫu giày này còn được phối màu gam màu tím huyền bí vô cùng tinh tế. Mang lại sang trọng, quyền quý cho phái yếu. Đồng thời, tím cũng là màu sắc gắn liền với những câu chuyện bí ẩn, ma thuật đầy quyền lực.

Đây có lẽ sẽ là một điểm nhấn mạnh mẽ trong lòng cộng đồng người yêu giày và là một sự lựa chọn thích hợp với mọi lứa tuổi trong mọi hoàn cảnh : Đi chơi, dã ngoại, đi học, đi làm,…', N'17.jpg', CAST(N'2021-04-30T00:00:00.000' AS DateTime), 254, 1, 1)
INSERT [dbo].[GIAY] ([Magiay], [Tengiay], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [MaNSX]) VALUES (18, N'Converse Chuck 70 Low Top Black (1970s)', CAST(1200000 AS Decimal(18, 0)), N'Đơn giản & Cá tính – Hai tính từ miêu tả chính xác nhất cho đôi giày này

Những đôi giày Converse 1970s Low Top Black có thiết kế tinh tế của những năm thập niên 70, cùng hai ưu điểm đó chính là sự thoải mái và độ bền cao nhất.

Trong đó, không thể không nhắc tới công nghệ đệm dày cùng lớp vải canvas cứng cáp, “nâng đỡ” bạn trong một ngày dài năng động, không mệt mỏi.

Lớp đế lót êm ái để hỗ trợ và ổn định vòm chân của người sử dụng. Vải Canvas 12oz (65% cotton, 35% polyester) được sử dụng làm phần lưỡi gà giúp sản phẩm có độ bền cao

Hoàn thiện dần từ những thiết kế đầu tiên của Chuck Taylor 1970s, Converse 1970s Black cổ thấp với sự tỉ mỉ đặc biệt đến từng chi tiết đã trở thành 1 item không thể thiếu cho giới trẻ, hoặc thậm chí cộng đồng sneaker.', N'18.jpg', CAST(N'2021-04-30T00:00:00.000' AS DateTime), 78, 3, 3)
INSERT [dbo].[GIAY] ([Magiay], [Tengiay], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [MaNSX]) VALUES (19, N'Converse Chuck 70 Low Top White (1970s)', CAST(1250000 AS Decimal(18, 0)), N'Đơn giản & Cá tính – Hai tính từ miêu tả chính xác nhất cho đôi giày này

Những đôi giày Converse 1970s Low Top Black có thiết kế tinh tế của những năm thập niên 70, cùng hai ưu điểm đó chính là sự thoải mái và độ bền cao nhất.

Trong đó, không thể không nhắc tới công nghệ đệm dày cùng lớp vải canvas cứng cáp, “nâng đỡ” bạn trong một ngày dài năng động, không mệt mỏi.

Lớp đế lót êm ái để hỗ trợ và ổn định vòm chân của người sử dụng. Vải Canvas 12oz (65% cotton, 35% polyester) được sử dụng làm phần lưỡi gà giúp sản phẩm có độ bền cao

Hoàn thiện dần từ những thiết kế đầu tiên của Chuck Taylor 1970s, Converse 1970s Black cổ thấp với sự tỉ mỉ đặc biệt đến từng chi tiết đã trở thành 1 item không thể thiếu cho giới trẻ, hoặc thậm chí cộng đồng sneaker.', N'19.jpg', CAST(N'2021-04-30T00:00:00.000' AS DateTime), 120, 3, 3)
INSERT [dbo].[GIAY] ([Magiay], [Tengiay], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [MaNSX]) VALUES (20, N'Converse Chuck 70 X PEACEMINUSONE (1970s)', CAST(1950000 AS Decimal(18, 0)), N'Đơn giản & Cá tính – Hai tính từ miêu tả chính xác nhất cho đôi giày này

Những đôi giày Converse 1970s Low Top Black có thiết kế tinh tế của những năm thập niên 70, cùng hai ưu điểm đó chính là sự thoải mái và độ bền cao nhất.

Trong đó, không thể không nhắc tới công nghệ đệm dày cùng lớp vải canvas cứng cáp, “nâng đỡ” bạn trong một ngày dài năng động, không mệt mỏi.

Lớp đế lót êm ái để hỗ trợ và ổn định vòm chân của người sử dụng. Vải Canvas 12oz (65% cotton, 35% polyester) được sử dụng làm phần lưỡi gà giúp sản phẩm có độ bền cao

Hoàn thiện dần từ những thiết kế đầu tiên của Chuck Taylor 1970s, Converse 1970s Black cổ thấp với sự tỉ mỉ đặc biệt đến từng chi tiết đã trở thành 1 item không thể thiếu cho giới trẻ, hoặc thậm chí cộng đồng sneaker.', N'20.jpg', CAST(N'2021-04-30T00:00:00.000' AS DateTime), 250, 3, 3)
INSERT [dbo].[GIAY] ([Magiay], [Tengiay], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [MaNSX]) VALUES (21, N'Vans Old Skool Classic Black', CAST(1100000 AS Decimal(18, 0)), N'Vans Old Skool phối màu Đen Trắng là một trong những màu sắc được giới trẻ ưu chuộng nhất hiện nay. Phối màu nổi bật, cùng với thiết kế đơn giản, gọn nhẹ, mang phong cách Vintage. Vans Old Skool là đôi giày đáng sở hữu nhất, và là một trong những mẫu giày đồng hành với thời học sinh, sinh viên.', N'21.jpg', CAST(N'2021-04-30T00:00:00.000' AS DateTime), 299, 3, 4)
INSERT [dbo].[GIAY] ([Magiay], [Tengiay], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [MaNSX]) VALUES (22, N'Vans Slip-On Checkerboard', CAST(1250000 AS Decimal(18, 0)), N'Vans Slip-on bản phối Checkerboard là một trong những bản phối được giới trẻ ưu chuộng nhất hiện nay. Hoạ tiết những ô caro đen trắng nổi bật, cùng với thiết kế đơn giản, gọn nhẹ, mang phong cách Vintage. Vans Slip-on Caro là đôi giày đáng sở hữu nhất, và là một trong những mẫu giày đồng hành với thời học sinh, sinh viên.', N'22.jpg', CAST(N'2021-04-30T00:00:00.000' AS DateTime), 255, 3, 4)
INSERT [dbo].[GIAY] ([Magiay], [Tengiay], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [MaNSX]) VALUES (23, N'Vans Style 36 Retro Sport Gibraltar Sea', CAST(1120000 AS Decimal(18, 0)), N'Giày Sneaker Vans Style 36 Retro Sport Gibraltar Sea

Mỗi đôi Vans mang đến sự cảm nhận ban đầu về sức trẻ, sự đơn giản tinh gọn.

Thương hiệu giày Vans từ xa xưa gắn liền với thể thao cũng mạnh mẽ và tinh nhạy như trượt ván, trượt tuyết...

Người ta dễ dàng bắt gặp những vận động viên, những người chơi Skateboard sử dụng những đôi giày sneaker Vans với phần đế cứng cáp và Form khỏe để giữ thăng bằng.

Nếu như bạn là một người mạnh mẽ, đầy năng lượng, thích sự giản đơn và nhẹ nhàng thì Vans sẽ thích hợp.', N'23.jpg', CAST(N'2021-04-30T00:00:00.000' AS DateTime), 125, 3, 4)
INSERT [dbo].[GIAY] ([Magiay], [Tengiay], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [MaNSX]) VALUES (24, N'GIÀY TÂY ĐEN DA BÒ', CAST(2500000 AS Decimal(18, 0)), N'Điểm nổi bật: Giày tây mã sp024737 công sở được gia công hoàn toàn từ 100% da bò thật và được làm tại Việt Nam, thiết kế đường nét năng động cùng viền chỉ dập nổi trên thân giày mang lại sự đơn giản trẻ trung và lịch lãm. Chúng tôi luôn mong muốn đem lại nhưng sản phẩm tốt nhất và sự hài lòng khi sử dụng từ khách hàng.

', N'24.jpg', CAST(N'2021-04-30T00:00:00.000' AS DateTime), 561, 2, 5)
INSERT [dbo].[GIAY] ([Magiay], [Tengiay], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [MaNSX]) VALUES (25, N'GIÀY TÂY NÂU DA BÒ', CAST(2700000 AS Decimal(18, 0)), N'Điểm nổi bật: Giày tây mã sp024737 công sở được gia công hoàn toàn từ 100% da bò thật và được làm tại Việt Nam, thiết kế đường nét năng động cùng viền chỉ dập nổi trên thân giày mang lại sự đơn giản trẻ trung và lịch lãm. Chúng tôi luôn mong muốn đem lại nhưng sản phẩm tốt nhất và sự hài lòng khi sử dụng từ khách hàng.

', N'25.jpg', CAST(N'2021-04-30T00:00:00.000' AS DateTime), 125, 2, 5)
INSERT [dbo].[GIAY] ([Magiay], [Tengiay], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [MaNSX]) VALUES (26, N'GIÀY DOCTER NÂU', CAST(3200000 AS Decimal(18, 0)), N'Giầy docter nam da bò may đế đen sần da mềm đế êmGIÀY TỰ SẢN XUẤT MIỄN TRUNG GIAN GIÁ RẺ VÔ ĐỊCH Chất liệu Da bò 100 không nổ da DA CỰC MỀM không đau chân Đế cao su đúc khâu chắc chắn Size 38 39 40 41 42 43 Form dáng trẻ trung năng động Bảo hành 6 tháng da và keo đế Cam kết ảnh thật 100 Hàng lỗi hoặc không đúng mô tả sản phẩm hoàn tiền 100 trong 3 ngày theo quy định Hỗ trợ đổi size nếu không vừa Các bước lấy mã giảm giá B1 Vào trang chủ của lấy mã giảm giá ở mục mã giảm giá B2 Cho sản phẩm…', N'26.jpg', CAST(N'2021-04-30T00:00:00.000' AS DateTime), 200, 2, 5)
INSERT [dbo].[GIAY] ([Magiay], [Tengiay], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [MaNSX]) VALUES (27, N'Dép Nike Benassi ‘Just Do It’ Slides In Black ', CAST(700000 AS Decimal(18, 0)), N'Dép Nike Benassi Just Do It “White/Black” – Nike cùng dòng sản phẩm Benassi danh tiếng gắn liền với những phiên bản Slide (dép bánh mì) đã lại “tái xuất giang hồ” tại Fandy. Ngoài giày thể thao, các mẫu thiết Footwear cộp mác “the Swoosh” như dép, sandal vẫn luôn được đón nhận một cách tích cực từ giới chuyên môn lẫn người hâm mộ.

Với đặc trưng thiết kế đơn giản, bạn sẽ dễ dàng Mix/ Match chúng vào nhiều nhu cầu và phong cách khác nhau. Ngoài các mẫu thuần thể thao, những phiên bản thiên về thời trang vẫn đều đặn cập bến Fandy, cho bạn thêm nhiều lựa chọn mua sắm hơn. Nike Benassi Staff X Off-White là một ví dụ điển hình như thế', N'27.jpg', CAST(N'2021-04-30T00:00:00.000' AS DateTime), 254, 4, 1)
INSERT [dbo].[GIAY] ([Magiay], [Tengiay], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [MaNSX]) VALUES (28, N'Dép Nike Benassi ‘Just Do It’ Slides In Black', CAST(500000 AS Decimal(18, 0)), N'Với thiết kế nhẹ nhàng nhưng đầy tinh tế và cá tính, Nike Benassi Just Do It Slide luôn là mẫu dép bán chạy bậc nhất tại Nike. Ngoài ra, sự hài lòng của khách hàng còn đến từ độ êm ái của bộ đệm foam mềm tại midsole cùng miếng lót.', N'28.jpg', CAST(N'2021-04-30T00:00:00.000' AS DateTime), 123, 4, 1)
INSERT [dbo].[GIAY] ([Magiay], [Tengiay], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [MaNSX]) VALUES (29, N'Dép Nike Benassi ‘Just Do It’ Slides In White', CAST(650000 AS Decimal(18, 0)), N'Dép Nike Benassi Just Do It “White/Black” – Nike cùng dòng sản phẩm Benassi danh tiếng gắn liền với những phiên bản Slide (dép bánh mì) đã lại “tái xuất giang hồ” tại Fandy. Ngoài giày thể thao, các mẫu thiết Footwear cộp mác “the Swoosh” như dép, sandal vẫn luôn được đón nhận một cách tích cực từ giới chuyên môn lẫn người hâm mộ.

Với đặc trưng thiết kế đơn giản, bạn sẽ dễ dàng Mix/ Match chúng vào nhiều nhu cầu và phong cách khác nhau. Ngoài các mẫu thuần thể thao, những phiên bản thiên về thời trang vẫn đều đặn cập bến Fandy, cho bạn thêm nhiều lựa chọn mua sắm hơn. Nike Benassi Staff X Off-White là một ví dụ điển hình như thế', N'29.jpg', CAST(N'2021-04-30T00:00:00.000' AS DateTime), 245, 4, 1)
SET IDENTITY_INSERT [dbo].[GIAY] OFF
GO
SET IDENTITY_INSERT [dbo].[KHACHHANG] ON 

INSERT [dbo].[KHACHHANG] ([MaKH], [HoTen], [Taikhoan], [Matkhau], [Email], [DiachiKH], [DienthoaiKH], [Ngaysinh]) VALUES (10, N'nhật tinh ngao', N'ngaohap', N'123', N'duongvu080320@gmail.com', N'47/24/38 bùi đình tuý', N'0933956930', CAST(N'2000-03-08T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[KHACHHANG] OFF
GO
SET IDENTITY_INSERT [dbo].[NHASANXUAT] ON 

INSERT [dbo].[NHASANXUAT] ([MaNSX], [TenNSX], [DenTu]) VALUES (1, N'NIKE                                                                                                ', N'MỸ                                                                                                  ')
INSERT [dbo].[NHASANXUAT] ([MaNSX], [TenNSX], [DenTu]) VALUES (2, N'ADIDAS                                                                                              ', N'PHÁP                                                                                                ')
INSERT [dbo].[NHASANXUAT] ([MaNSX], [TenNSX], [DenTu]) VALUES (3, N'CONVERSE                                                                                            ', N'ANH                                                                                                 ')
INSERT [dbo].[NHASANXUAT] ([MaNSX], [TenNSX], [DenTu]) VALUES (4, N'VANS                                                                                                ', N'ANH                                                                                                 ')
INSERT [dbo].[NHASANXUAT] ([MaNSX], [TenNSX], [DenTu]) VALUES (5, N'EDWARD                                                                                              ', N'ANH                                                                                                 ')
SET IDENTITY_INSERT [dbo].[NHASANXUAT] OFF
GO
ALTER TABLE [dbo].[DONDATHANG]  WITH CHECK ADD  CONSTRAINT [FK_DONDATHANG_KHACHHANG] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KHACHHANG] ([MaKH])
GO
ALTER TABLE [dbo].[DONDATHANG] CHECK CONSTRAINT [FK_DONDATHANG_KHACHHANG]
GO
ALTER TABLE [dbo].[GIAY]  WITH CHECK ADD  CONSTRAINT [FK_GIAY_CHUDE] FOREIGN KEY([MaCD])
REFERENCES [dbo].[CHUDE] ([MaCD])
GO
ALTER TABLE [dbo].[GIAY] CHECK CONSTRAINT [FK_GIAY_CHUDE]
GO
ALTER TABLE [dbo].[GIAY]  WITH CHECK ADD  CONSTRAINT [FK_GIAY_NHASANXUAT] FOREIGN KEY([MaNSX])
REFERENCES [dbo].[NHASANXUAT] ([MaNSX])
GO
ALTER TABLE [dbo].[GIAY] CHECK CONSTRAINT [FK_GIAY_NHASANXUAT]
GO
