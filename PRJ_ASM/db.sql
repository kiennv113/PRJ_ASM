USE [SE1435_PRJ321]
GO
/****** Object:  Table [dbo].[he140687_kiennv_user]    Script Date: 07/08/2021 10:26:04 AM ******/
DROP TABLE [dbo].[he140687_kiennv_user]
GO
/****** Object:  Table [dbo].[he140687_kiennv_transaction]    Script Date: 07/08/2021 10:26:04 AM ******/
DROP TABLE [dbo].[he140687_kiennv_transaction]
GO
/****** Object:  Table [dbo].[he140687_kiennv_products]    Script Date: 07/08/2021 10:26:04 AM ******/
DROP TABLE [dbo].[he140687_kiennv_products]
GO
/****** Object:  Table [dbo].[he140687_kiennv_order]    Script Date: 07/08/2021 10:26:04 AM ******/
DROP TABLE [dbo].[he140687_kiennv_order]
GO
/****** Object:  Table [dbo].[he140687_kiennv_contact]    Script Date: 07/08/2021 10:26:04 AM ******/
DROP TABLE [dbo].[he140687_kiennv_contact]
GO
/****** Object:  Table [dbo].[he140687_kiennv_category]    Script Date: 07/08/2021 10:26:04 AM ******/
DROP TABLE [dbo].[he140687_kiennv_category]
GO
/****** Object:  Table [dbo].[he140687_kiennv_category]    Script Date: 07/08/2021 10:26:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[he140687_kiennv_category](
	[category_id] [int] IDENTITY(1,1) NOT NULL,
	[category_name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_he140687_kiennv_catalog] PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[he140687_kiennv_contact]    Script Date: 07/08/2021 10:26:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[he140687_kiennv_contact](
	[contact_id] [int] IDENTITY(1,1) NOT NULL,
	[contact_topic] [nchar](100) NOT NULL,
	[user_id] [nvarchar](50) NOT NULL,
	[content] [ntext] NOT NULL,
	[date] [datetime] NOT NULL,
	[status] [bit] NULL,
	[respond] [ntext] NULL,
	[admin_id] [int] NULL,
 CONSTRAINT [PK_he140687_kiennv_contact] PRIMARY KEY CLUSTERED 
(
	[contact_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[he140687_kiennv_order]    Script Date: 07/08/2021 10:26:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[he140687_kiennv_order](
	[order_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
	[quantity] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[he140687_kiennv_products]    Script Date: 07/08/2021 10:26:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[he140687_kiennv_products](
	[product_id] [int] IDENTITY(1,1) NOT NULL,
	[catalog_id] [int] NOT NULL,
	[product_name] [nvarchar](100) NOT NULL,
	[manufacturer] [nchar](10) NOT NULL,
	[size] [int] NOT NULL,
	[frequency] [int] NOT NULL,
	[product_price] [float] NOT NULL,
	[discount] [float] NULL,
	[img_url] [nchar](50) NOT NULL,
	[description] [nvarchar](max) NULL,
	[amount] [int] NULL,
 CONSTRAINT [PK_he140687_kiennv_products] PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[he140687_kiennv_transaction]    Script Date: 07/08/2021 10:26:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[he140687_kiennv_transaction](
	[transaction_id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [nvarchar](50) NOT NULL,
	[user_id] [int] NOT NULL,
	[date] [date] NULL,
	[address] [nvarchar](50) NOT NULL,
	[phone] [varchar](20) NOT NULL,
	[amount] [nvarchar](20) NOT NULL,
	[payment] [nvarchar](50) NOT NULL,
	[status] [bit] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[he140687_kiennv_user]    Script Date: 07/08/2021 10:26:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[he140687_kiennv_user](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[power] [int] NOT NULL,
 CONSTRAINT [PK_he140687_kiennv_user] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[he140687_kiennv_category] ON 

INSERT [dbo].[he140687_kiennv_category] ([category_id], [category_name]) VALUES (1, N'Màn hình Gaming')
INSERT [dbo].[he140687_kiennv_category] ([category_id], [category_name]) VALUES (2, N'Màn hình Đồ Họa')
INSERT [dbo].[he140687_kiennv_category] ([category_id], [category_name]) VALUES (3, N'Màn hình Văn Phòng')
SET IDENTITY_INSERT [dbo].[he140687_kiennv_category] OFF
SET IDENTITY_INSERT [dbo].[he140687_kiennv_contact] ON 

INSERT [dbo].[he140687_kiennv_contact] ([contact_id], [contact_topic], [user_id], [content], [date], [status], [respond], [admin_id]) VALUES (1, N'Chinh sach giao hang                                                                                ', N'5', N'Chinh sach nhu the nao', CAST(N'2021-11-03 00:00:00.000' AS DateTime), 1, N'giao hàng nhanh', 1)
INSERT [dbo].[he140687_kiennv_contact] ([contact_id], [contact_topic], [user_id], [content], [date], [status], [respond], [admin_id]) VALUES (2, N'Chính sách thanh toán                                                                               ', N'20', N'Các phương thức thanh toán là gì?', CAST(N'2021-03-17 00:00:00.000' AS DateTime), 1, N'abcabc', 1)
INSERT [dbo].[he140687_kiennv_contact] ([contact_id], [contact_topic], [user_id], [content], [date], [status], [respond], [admin_id]) VALUES (3, N'Khuyến mãi                                                                                          ', N'3', N'Có các chương trình khuyến mãi nào?', CAST(N'2021-03-17 10:34:46.507' AS DateTime), 0, N'', 0)
INSERT [dbo].[he140687_kiennv_contact] ([contact_id], [contact_topic], [user_id], [content], [date], [status], [respond], [admin_id]) VALUES (4, N'abcabc                                                                                              ', N'3', N'123123', CAST(N'2021-03-18 09:50:47.117' AS DateTime), 0, N'', 0)
INSERT [dbo].[he140687_kiennv_contact] ([contact_id], [contact_topic], [user_id], [content], [date], [status], [respond], [admin_id]) VALUES (5, N'Về việc giao hàng chậm                                                                              ', N'20', N'abcabc', CAST(N'2021-03-18 11:44:51.670' AS DateTime), 1, N'ko biet dc', 1)
INSERT [dbo].[he140687_kiennv_contact] ([contact_id], [contact_topic], [user_id], [content], [date], [status], [respond], [admin_id]) VALUES (6, N'123456                                                                                              ', N'3', N'abcabc', CAST(N'2021-03-18 12:10:39.867' AS DateTime), 1, N'2222', 1)
INSERT [dbo].[he140687_kiennv_contact] ([contact_id], [contact_topic], [user_id], [content], [date], [status], [respond], [admin_id]) VALUES (7, N'abcd                                                                                                ', N'3', N'123456', CAST(N'2021-03-18 13:04:17.410' AS DateTime), 1, N'1234566789', 1)
SET IDENTITY_INSERT [dbo].[he140687_kiennv_contact] OFF
SET IDENTITY_INSERT [dbo].[he140687_kiennv_products] ON 

INSERT [dbo].[he140687_kiennv_products] ([product_id], [catalog_id], [product_name], [manufacturer], [size], [frequency], [product_price], [discount], [img_url], [description], [amount]) VALUES (2, 1, N'Màn hình AOC 27B1H 27" IPS Ultraslim chuyên game', N'AOC       ', 27, 60, 4040000, 18, N'images/a002.png                                   ', N'Kiểu dáng đẹp và màu sắc phong phú từ mọi góc độ
27B1H có thiết kế không viền 3 cạnh thanh lịch, cấu hình siêu mỏng với độ dày 13 mm và độ phân giải Full HD trên tấm nền IPS 27 ". Thưởng thức video, năng suất ở quy mô lớn hơn với 27B1H. Nó cũng bảo vệ mắt bạn bằng Flicker -Công nghệ miễn phí và ánh sáng xanh thấp.

Thiết kế không viền
Bên cạnh vẻ hiện đại và hấp dẫn, các thiết kế không khung cho phép thiết lập nhiều màn hình liền mạch. Con trỏ / cửa sổ của bạn sẽ không bị mất nữa trong vùng tối của bezels, khi nhiều màn hình được đặt cạnh nhau.', 10)
INSERT [dbo].[he140687_kiennv_products] ([product_id], [catalog_id], [product_name], [manufacturer], [size], [frequency], [product_price], [discount], [img_url], [description], [amount]) VALUES (3, 1, N'Màn hình ASUS VP249HE', N'ASUS      ', 24, 75, 3500000, 5, N'images/as001.png                                  ', N' Màn hình ASUS VP249HE sở hữu màn hình Full-HD kèm theo tỷ lệ tương phản cao 100.000.000:1, các công nghệ ánh sáng và ViviPixel độc quyền của ASUS được tối ưu hóa cho chất lượng hình ảnh và màu sắc tốt nhất.

Trò chơi mượt mà
Asus VP249HE có độ làm mới màn hình 75Hz, giúp cho màn hình không bị mờ chuyển cạnh, mang đến sự khác biệt rõ ràng khi sử dụng. Trải nghiệm chơi game sẽ trở nên tuyệt vời hơn. ', 10)
INSERT [dbo].[he140687_kiennv_products] ([product_id], [catalog_id], [product_name], [manufacturer], [size], [frequency], [product_price], [discount], [img_url], [description], [amount]) VALUES (4, 1, N'Màn hình Asus VG248QE', N'ASUS      ', 24, 144, 6300000, 8, N'images/as002.png                                  ', N'Các cảnh hành động siêu mượt với tốc độ làm mới nhanh 144Hz và thời gian hồi đáp 1ms (GTG)
Full HD 1920x1080, ASUS Tỷ lệ Tương phản Thông minh 80.000.000:1 và độ sáng 350cd/m² cho hiệu ứng thị giác như ngoài đời
Trải nghiệm xem thoải mái với khả năng điều chỉnh góc nghiêng, khớp xoay, trục đứng và chiều cao chú trọng đến người sử dụng
Trải nghiệm xem thoải mái với khả năng điều chỉnh góc nghiêng, khớp xoay, trục đứng và chiều cao chú trọng đến người sử dụng
Loa stereo 2W lắp trong cho trải nghiệm giải trí tại nhà đắm chìm', 10)
INSERT [dbo].[he140687_kiennv_products] ([product_id], [catalog_id], [product_name], [manufacturer], [size], [frequency], [product_price], [discount], [img_url], [description], [amount]) VALUES (5, 2, N'Màn hình Asus ProArt PA278QV', N'ASUS      ', 27, 75, 9000000, 5, N'images/as003.png                                  ', N'Thiết kế
Là chiếc màn hình phẳng mới đến từ ASUS với thiết kế hiện đại, được thiết kế để đáp ứng nhu cầu của các chuyên gia sáng tạo, từ chỉnh sửa ảnh và video cho đến thiết kế đồ họa.

Thiết kế khớp xoay tiện lợi với khả năng điều chỉnh chiều cao, trục xoay, độ nghiêng giúp bạn làm việc sáng tạo và dễ dàng hơn.

', 10)
INSERT [dbo].[he140687_kiennv_products] ([product_id], [catalog_id], [product_name], [manufacturer], [size], [frequency], [product_price], [discount], [img_url], [description], [amount]) VALUES (6, 2, N'Màn hình Dell U2419H', N'Dell      ', 24, 60, 5890000, 12, N'images/d001.png                                   ', N'Màn hình Dell U2419H là màn hình IPS Ultrasharp màn hình tràn viền, 23.8 Inch. Màn hình full HD, thiết kế đẹp mắt sang trọng. Dòng sản phẩm màn hình này hướng tới giới văn phong và những doanh nghiệp với rất nhiều cải tiến về công nghệ và thiết kế sẽ đáp ứng được hầu hết mọi nhu cầu của người sử dụng.', 10)
INSERT [dbo].[he140687_kiennv_products] ([product_id], [catalog_id], [product_name], [manufacturer], [size], [frequency], [product_price], [discount], [img_url], [description], [amount]) VALUES (7, 2, N'Màn hình Delll U2417', N'Dell      ', 24, 60, 3800000, 3, N'images/d002.png                                   ', N'Dell U2417H Có Gì Mới?
Dòng màn hình Dell Ultrasharp từ lâu đã nổi danh vì là sự lựa chọn thiết thực dành cho những người sử dụng có nhu cầu chất lượng hình ảnh cao. và với Ultrasharp U2417H, Dell sẽ chứng tỏ vì sao dòng màn hình này được sự tôn vinh của người dùng như vậy

Vẫn thừa hưởng những nét đặc trưng về ngoại hình tràn viền như các đàn anh U2414 trở lên,trọng lượng vừa phải. Trang bị bàn hình IPS với 99% tùy chỉnh sRGB , đầy đủ các chức năng tinh chỉnh độ cao và xoay dọc hoặc ngang khi sử dụng.Thích hợp dành cho những người dùng muốn nâng chất lượng hình ảnh hoặc bước từ môi trường performance sang pro  territory', 10)
INSERT [dbo].[he140687_kiennv_products] ([product_id], [catalog_id], [product_name], [manufacturer], [size], [frequency], [product_price], [discount], [img_url], [description], [amount]) VALUES (8, 3, N'Màn hình Dell E2420H', N'Dell      ', 24, 60, 3200000, 5, N'images/d004.png                                   ', N'Dell E2420H được thiết kế với kiểu dáng mỏng để tối đa hóa không gian máy tính để bàn. Tấm nền IPS (In-Plane Switching) hỗ trợ độ phân giải Full HD (1920 x 1080) với tần số quét 60 Hz với tối đa 16,7 triệu màu và có thời gian phản hồi 5 ms (GtG), độ sáng 250 cd/ m² và tỷ lệ tương phản tĩnh 1000:1 để hiển thị tài liệu, ảnh và video với độ trung thực rõ ràng như pha lê.', 10)
INSERT [dbo].[he140687_kiennv_products] ([product_id], [catalog_id], [product_name], [manufacturer], [size], [frequency], [product_price], [discount], [img_url], [description], [amount]) VALUES (9, 2, N'Dell Ultrasharp U2417H', N'Dell      ', 24, 60, 5100000, 7, N'images/d005.png                                   ', N'Dòng mã UltraSharp của màn hình Dell đã dành được nhiều giải thưởng Editor’s Choice của nhiều năm nhờ vào sự thể hiện quá xuất sác trong nhiều mặt và những tính năng mới và hiệu quả, và chiếc màn hình Dell UltraSharp U2417H với giá không quá cao ( hơn 5 triệu) đã tiếp tục nối bước sự thành công này. Chiếc màn hình 24 inch này sử dụng công nghệ tấm nền IPS ( In-plane Switching ) để mang đến 1 bộ màu sắc cực chân thực, thể hiện grayscale ( Đa mức xám ) cực kì tuyệt vời với góc nhìn rộng. Chiếc màn hình này có chân đứng có thể hoàn toàn điều chỉnh đa dạng, 1 bộ chia 4 cổng USB 3.0, 3 đầu cắm vào khác nhau, và 1 cổng ra DisplayPort chuyên dành cho việc sử dụng nhiều màn hình cùng lúc. Tuy là nó thuộc hàng khá đắt so với các màn hình độ phân giải Full Hd 1920 x 1080, nhưng chiếc màn hình này vẫn là sự lựa chọn hàng đầu cho màn hình cỡ vừa và được ưa thích bậc nhất bởi người dùng.', 10)
INSERT [dbo].[he140687_kiennv_products] ([product_id], [catalog_id], [product_name], [manufacturer], [size], [frequency], [product_price], [discount], [img_url], [description], [amount]) VALUES (10, 3, N'Màn hình Dell E2220H', N'Dell      ', 22, 60, 5900000, 11, N'images/d001.png                                   ', N'Thiết kế sang trọng
Thừa hưởng kiểu dáng khỏe khoắn, lịch lãm, sang trọng trên các dòng màn hình của Dell, Dell E2220H rất phù hợp khi đặt trong bất kì không gian làm việc nào tại các văn phòng hoặc nhà riêng. Mặt chân đế được thiết kế vuông vức, chắc chắn khi đặt màn hình trên bàn làm việc và phần thân đỡ có khoảng trống để bạn có thể đi dây lên màn hình gọn gàng hơn.', 10)
INSERT [dbo].[he140687_kiennv_products] ([product_id], [catalog_id], [product_name], [manufacturer], [size], [frequency], [product_price], [discount], [img_url], [description], [amount]) VALUES (11, 3, N'Màn hình LG 22MN430M-B 22" IPS 75Hz FreeSync', N'LG        ', 22, 75, 2790000, 4, N'images/lg001.png                                  ', N'Hiển thị IPS Full HD
Màu sắc trung thực ở mọi góc nhìn
Công nghệ IPS làm nổi bật chất lượng hiển thị của màn hình tinh thể lỏng. Thời gian phản hồi hình ảnh ngắn hơn, khả năng tái tạo màu được cải thiện và người dùng có thể trải nghiệm hoàn hảo nhất từ mọi góc nhìn.', 10)
INSERT [dbo].[he140687_kiennv_products] ([product_id], [catalog_id], [product_name], [manufacturer], [size], [frequency], [product_price], [discount], [img_url], [description], [amount]) VALUES (12, 1, N'Màn hình LG 24MP59G-P 24" IPS 75Hz ', N'LG        ', 24, 75, 3500000, 9, N'images/lg002.png                                  ', N'Màn hình LG 24MP59G-P 24 inch IPS FullHD được thiết kế nhằm mang đến cho người dùng những trải nghiệm thú vị với thế giới trò chơi sống động như thật. Màn hình không chỉ chắc chắn mà còn được thiết kế chân đế chữ V độc đáo, tạo nên điểm nhấn cuốn hút cho không gian làm việc và giải trí của người dùng.', 10)
INSERT [dbo].[he140687_kiennv_products] ([product_id], [catalog_id], [product_name], [manufacturer], [size], [frequency], [product_price], [discount], [img_url], [description], [amount]) VALUES (13, 2, N'Màn hình LG 24MK600M-B 24" IPS 75Hz FreeSync ', N'LG        ', 24, 75, 3800000, 12, N'images/lg003.png                                  ', N'Màn hình IPS Full HD – Độ nét cao và màu sắc trung thực
Công nghệ IPS làm nổi bật hiệu suất của màn hình tinh thể lỏng. Thời gian phản hồi ngắn hơn, khả năng tái tạo màu được cải thiện và người dùng có thể xem màn hình từ hầu hết mọi góc nhìn

Màn hình không viền 3 cạnh – Trải nghiệm hoàn hảo
Màn hình 24MK600 có đường viền mảnh trên ba cạnh, mang đến trải nghiệm xem hoàn hảo nhờ hình ảnh đẹp lộng lẫy, chính xác và thật như cuộc sống.

Radeon FreeSync™ – Hình ảnh rõ ràng hơn và mượt mà hơn
Với Radeon FreeSync™, người chơi trò chơi có thể trải nghiệm chuyển động liền mạch và mượt mà trong những trò chơi có độ phân giải cao và tốc độ nhanh. Radeon FreeSync™ hầu như loại bỏ được hiện tượng trộn hình và giật hình.

Đồng bộ hành động kép – Phản ứng nhanh hơn với hành động
Giảm thiểu độ trễ của thao tác đầu vào với công nghệ
Đồng bộ hành động kép và bạn có thể nắm bắt được mọi khoảnh khắc theo thời gian thực.

Cân bằng tối – Kẻ địch sẽ không còn chỗ ẩn náu
Bạn có thể tránh được những tay bắn tỉa ẩn nấp ở những vị trí tốt nhất và nhanh chóng thoát khỏi tình huống khi có bom nổ.

Điểm ngắm – Ngắm bắn tốt hơn
Điểm ngắm cố định ở chính giữa để nâng cao độ chính xác khi ngắm bắn.', 10)
INSERT [dbo].[he140687_kiennv_products] ([product_id], [catalog_id], [product_name], [manufacturer], [size], [frequency], [product_price], [discount], [img_url], [description], [amount]) VALUES (14, 1, N'Màn hình LG 24GL600F-B 24" 144Hz Gaming', N'LG        ', 24, 144, 6090000, 34, N'images/lg004.png                                  ', N'Trải nghiệm game mượt mà

Trải nghiệm chơi game mượt mà với  tốc độ làm mới 144Hz và 1ms tốc độ trễ, các đối tượng được hiển thị rõ ràng mang lại lợi thế cạnh tranh cho người chơi.   ', 10)
INSERT [dbo].[he140687_kiennv_products] ([product_id], [catalog_id], [product_name], [manufacturer], [size], [frequency], [product_price], [discount], [img_url], [description], [amount]) VALUES (15, 1, N'Màn hình LG 27MP59G-P 27" IPS 75Hz FreeSync ', N'LG        ', 27, 75, 4490000, 11, N'images/lg005.png                                  ', N'Công nghệ AMD FreeSync™
Không còn hiện tượng mất khung hình khi chơi game với AMD FreeSync™, công nghệ này loại bỏ hiện tượng giật, xé hình xảy ra do sự khác biệt giữa tốc độ xử lý khung hình của card đồ họa và tần số làm tươi của màn hình. Chuyển động nhân vật trong game và trên màn hình sẽ mượt mà hơn khi bạn chọn chế độ cài đặt hình ảnh cao nhất.', 10)
INSERT [dbo].[he140687_kiennv_products] ([product_id], [catalog_id], [product_name], [manufacturer], [size], [frequency], [product_price], [discount], [img_url], [description], [amount]) VALUES (16, 1, N'Màn hình LG 24MP88HV-S 24" IPS không viền', N'LG        ', 24, 60, 4800000, 6, N'images/lg006.png                                  ', N'Đánh giá màn hình máy tính IPS LG 24'''' 24MP88HV-S
Sơ lược

Trong những năm gần đây, các hãng sản xuất màn hình đều tung ra thị trường các dòng sản phẩm hàng trung-cao cấp nổi bật với thiết kế không viền 3 cạnh rất được công đồng gamer và render chào đón bởi cảm quan hiển thị cực “chất”.

Dòng màn hình IPS là dòng màn hình giá rẻ nhưng vẫn có được chất lượng tốt dành cho người dùng. Sau đây, Phong Vũ xin được giới thiệu đến các bạn chiếc màn hình là IPS LG 24'''' 24MP88HV-S, một sản phẩm đến từ thương hiệu nổi tiếng - LG Electronics. Màn hình mỏng cùng với thiết kế vuông vắn, IPS LG 24'''' 24MP88HV-S mang lại một không gian rộng và đem đến cảm giác “tràn ngập” khi nhìn vào chiếc màn hình này.', 10)
INSERT [dbo].[he140687_kiennv_products] ([product_id], [catalog_id], [product_name], [manufacturer], [size], [frequency], [product_price], [discount], [img_url], [description], [amount]) VALUES (17, 2, N'Màn hình LG 29WN600-W 29" IPS 75Hz ', N'LG        ', 29, 75, 6600000, 15, N'images/lg007.png                                  ', N'LG UltraWide Monitor
Xem nhiều hơn, sáng tạo hơn
Màn hình tỷ lệ 21:9 giúp người dùng trải nghiệm không gian hình ảnh rộng hơn, tăng cường hiệu quả sáng tạo cho công việ', 10)
INSERT [dbo].[he140687_kiennv_products] ([product_id], [catalog_id], [product_name], [manufacturer], [size], [frequency], [product_price], [discount], [img_url], [description], [amount]) VALUES (18, 1, N'Màn hình LG 32GN500-B UltraGear 32" 165Hz Gsync compatible HDR10', N'LG        ', 32, 165, 7990000, 13, N'images/lg008.png                                  ', N'Trải nghiệm chơi game mượt mà với tốc độ làm mới 165Hz

Tốc độ làm mới siêu nhanh 165Hz cho phép người chơi tiếp cận với khung hình tiếp theo nhanh hơn và mọi chuyển động hình ảnh hiển thị được mượt mà hơn. Các game thủ có thể phán ứng với các đối thủ nhanh hơn và nhắm trúng các mục tiêu một cách dễ dàng. ', 10)
INSERT [dbo].[he140687_kiennv_products] ([product_id], [catalog_id], [product_name], [manufacturer], [size], [frequency], [product_price], [discount], [img_url], [description], [amount]) VALUES (19, 3, N'Màn Hình Samsung LF22T350 22" IPS 75Hz tràn viền', N'Samsung   ', 24, 60, 2740000, 3, N'images/s001.png                                   ', N'Màn hình phẳng 22 inch, thiết kế tràn viền
LCD Samsung LF22T350 được thiết kế màn hình phẳng 22 inch với độ phân giải 1920 x 1080 pixel. Viền 3 cạnh màn hình được tiết chế các chi tiết, siêu mảnh nhằm mở rộng góc nhìn và để người dùng tập trung vào màn hình chính khi học tập và làm việc, không bị xao nhãng bởi các chi tiết xung quanh', 10)
INSERT [dbo].[he140687_kiennv_products] ([product_id], [catalog_id], [product_name], [manufacturer], [size], [frequency], [product_price], [discount], [img_url], [description], [amount]) VALUES (20, 1, N'Màn Hình Samsung LS22R350FHEXXV 22" IPS 75Hz FreeSync chuyên game', N'Samsung   ', 24, 75, 2900000, 7, N'images/s002.png                                   ', N'Màn hình Samsung LS22R350FHEXXV 22″ IPS 75Hz Full viền
Mở Rộng Không Gian Trải Nghiệm
Nét đẹp đến từ sự tinh giản. Từng chi tiết được kiến tạo một cách tinh tế, màn hình phẳng Samsung mang đến phong cách thật sự khác biệt đầy tinh tế. Thiết kế tối giản với ba cạnh không viền kết hợp cùng chân đế chữ Y cho trải nghiệm hình ảnh liền mạch không gián đoạn ngay cả khi sử dụng 2 màn hình cùng lúc.', 10)
INSERT [dbo].[he140687_kiennv_products] ([product_id], [catalog_id], [product_name], [manufacturer], [size], [frequency], [product_price], [discount], [img_url], [description], [amount]) VALUES (21, 1, N'Màn hình cong Samsung LC27JG54QQEXXV 27" VA 2K 144Hz WQHD', N'Samsung   ', 27, 144, 8990000, 22, N'images/s003.png                                   ', N'Độ Cong Hoàn Hảo
Tuyệt tác màn hình cong 1800R CJG5 xóa bỏ mọi giới hạn khung hình, khiến từng chuyển động như đang diễn ra ngay trước mắt. Cuốn bạn vào trong những màn game kịch tính và sống động hơn bao giờ hết.', 10)
INSERT [dbo].[he140687_kiennv_products] ([product_id], [catalog_id], [product_name], [manufacturer], [size], [frequency], [product_price], [discount], [img_url], [description], [amount]) VALUES (22, 2, N'Màn hình Viewsonic VP2458', N'ViewSonic ', 24, 75, 5300000, 6, N'images/vs001.png                                  ', N'Gam màu phù hợp với tiêu chuẩn ngành in
Độ che phủ màu 100%* sRGB tạo ra màu sắc phong phú và sống động, đảm bảo rằng hình ảnh luôn phù hợp hoàn hảo với các tiêu chuẩn ngành in

100% sRGB
*Tỷ lệ phần trăm đã được làm tròn đến số nguyên gần nhất và được tính bằng cách sử dụng các thông số kỹ thuật do các nhà sản xuất bảng điều khiển cung cấp.', 10)
INSERT [dbo].[he140687_kiennv_products] ([product_id], [catalog_id], [product_name], [manufacturer], [size], [frequency], [product_price], [discount], [img_url], [description], [amount]) VALUES (31, 2, N'moithem', N'lg        ', 24, 24, 5000000, 6, N'images/lg001.png                                  ', N'man hinh dep', 10)
INSERT [dbo].[he140687_kiennv_products] ([product_id], [catalog_id], [product_name], [manufacturer], [size], [frequency], [product_price], [discount], [img_url], [description], [amount]) VALUES (32, 1, N'LG pro max ', N'LG        ', 27, 27, 600000, 2, N'images/lg003.png                                  ', N'man hinh sieu dep', 10)
INSERT [dbo].[he140687_kiennv_products] ([product_id], [catalog_id], [product_name], [manufacturer], [size], [frequency], [product_price], [discount], [img_url], [description], [amount]) VALUES (38, 2, N'LG siêu đẹp', N'LG        ', 24, 75, 5000000, 2, N'images/lg001.png                                  ', N'đẹp', 10)
INSERT [dbo].[he140687_kiennv_products] ([product_id], [catalog_id], [product_name], [manufacturer], [size], [frequency], [product_price], [discount], [img_url], [description], [amount]) VALUES (39, 1, N'ASUS vivo pro art 2021', N'ASUS      ', 27, 144, 64000000, 2, N'images/as002.png                                  ', N'đẹp', 10)
INSERT [dbo].[he140687_kiennv_products] ([product_id], [catalog_id], [product_name], [manufacturer], [size], [frequency], [product_price], [discount], [img_url], [description], [amount]) VALUES (40, 2, N'Màn hình Asus VG2482 new 100%', N'ASUS      ', 27, 75, 2000000, 5, N'images/a002.png                                   ', N'Màn hình đáng mua nhất 2021 và 2022  ', 10)
SET IDENTITY_INSERT [dbo].[he140687_kiennv_products] OFF
SET IDENTITY_INSERT [dbo].[he140687_kiennv_transaction] ON 

INSERT [dbo].[he140687_kiennv_transaction] ([transaction_id], [order_id], [user_id], [date], [address], [phone], [amount], [payment], [status]) VALUES (1, N'1803', 13, CAST(N'2021-03-18' AS Date), N'FPT HL', N'123456789', N'8200000', N'0', 1)
INSERT [dbo].[he140687_kiennv_transaction] ([transaction_id], [order_id], [user_id], [date], [address], [phone], [amount], [payment], [status]) VALUES (2, N'1103', 11, CAST(N'2021-03-15' AS Date), N'FPT HCM', N'0123456789', N'9200000', N'0', 0)
INSERT [dbo].[he140687_kiennv_transaction] ([transaction_id], [order_id], [user_id], [date], [address], [phone], [amount], [payment], [status]) VALUES (4, N'1104', 23, CAST(N'2021-03-13' AS Date), N'FPTU ', N'0133456789', N'3239000', N'0', 1)
INSERT [dbo].[he140687_kiennv_transaction] ([transaction_id], [order_id], [user_id], [date], [address], [phone], [amount], [payment], [status]) VALUES (5, N'2021-03-18 11:17:00.137', 20, CAST(N'2021-03-18' AS Date), N'Secret', N'012345987', N'12.446.000', N'Live', 0)
INSERT [dbo].[he140687_kiennv_transaction] ([transaction_id], [order_id], [user_id], [date], [address], [phone], [amount], [payment], [status]) VALUES (6, N'2021-03-18 13:04:26.67', 3, CAST(N'2021-03-18' AS Date), N'HÃ²a Láº¡c', N'123456', N'50.638.000', N'Live', 0)
SET IDENTITY_INSERT [dbo].[he140687_kiennv_transaction] OFF
SET IDENTITY_INSERT [dbo].[he140687_kiennv_user] ON 

INSERT [dbo].[he140687_kiennv_user] ([user_id], [username], [password], [power]) VALUES (1, N'admin', N'123456', 0)
INSERT [dbo].[he140687_kiennv_user] ([user_id], [username], [password], [power]) VALUES (2, N'admin1', N'123abc', 0)
INSERT [dbo].[he140687_kiennv_user] ([user_id], [username], [password], [power]) VALUES (3, N'user', N'123123', 1)
INSERT [dbo].[he140687_kiennv_user] ([user_id], [username], [password], [power]) VALUES (4, N'messi', N'111111', 1)
INSERT [dbo].[he140687_kiennv_user] ([user_id], [username], [password], [power]) VALUES (5, N'kien1', N'123cba', 1)
INSERT [dbo].[he140687_kiennv_user] ([user_id], [username], [password], [power]) VALUES (6, N'user1', N'1234', 1)
INSERT [dbo].[he140687_kiennv_user] ([user_id], [username], [password], [power]) VALUES (7, N'kiendz ', N'1132k', 0)
INSERT [dbo].[he140687_kiennv_user] ([user_id], [username], [password], [power]) VALUES (9, N'sieunhan', N'1234321', 0)
INSERT [dbo].[he140687_kiennv_user] ([user_id], [username], [password], [power]) VALUES (10, N'mra', N'12340', 1)
INSERT [dbo].[he140687_kiennv_user] ([user_id], [username], [password], [power]) VALUES (14, N'mrb', N'abababa', 1)
INSERT [dbo].[he140687_kiennv_user] ([user_id], [username], [password], [power]) VALUES (19, N'mrc', N'qwerty', 0)
INSERT [dbo].[he140687_kiennv_user] ([user_id], [username], [password], [power]) VALUES (20, N'mrd', N'123456', 1)
INSERT [dbo].[he140687_kiennv_user] ([user_id], [username], [password], [power]) VALUES (21, N'lukeshaw', N'shaw1123', 0)
INSERT [dbo].[he140687_kiennv_user] ([user_id], [username], [password], [power]) VALUES (22, N'nani112', N'112233', 0)
INSERT [dbo].[he140687_kiennv_user] ([user_id], [username], [password], [power]) VALUES (23, N'ronaldo', N'cr7654', 0)
SET IDENTITY_INSERT [dbo].[he140687_kiennv_user] OFF
