-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 17, 2021 lúc 03:19 PM
-- Phiên bản máy phục vụ: 10.4.16-MariaDB
-- Phiên bản PHP: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `qlplaystation`
--
CREATE DATABASE IF NOT EXISTS `qlplaystation` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `qlplaystation`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bai_viet`
--

CREATE TABLE `bai_viet` (
  `ma_bai_viet` int(11) NOT NULL,
  `ma_loai_bai` int(11) NOT NULL,
  `ten_bai_viet` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `noi_dung_tom_tat` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `noi_dung_chi_tiet` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ma_nguoi_dung` int(11) NOT NULL,
  `ngay_dang` date NOT NULL,
  `hinh` varchar(100) NOT NULL,
  `luot_xem` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `bai_viet`
--

INSERT INTO `bai_viet` (`ma_bai_viet`, `ma_loai_bai`, `ten_bai_viet`, `noi_dung_tom_tat`, `noi_dung_chi_tiet`, `ma_nguoi_dung`, `ngay_dang`, `hinh`, `luot_xem`) VALUES
(1, 1, 'Smartphone 2 màn hình, RAM 4GB - YotaPhone 3 chính thức trình làng', '<p>YotaPhone 3 đ&atilde; r&ograve; rỉ kh&aacute; nhiều th&ocirc;ng tin v&agrave; mới đ&acirc;y n&oacute; đ&atilde; ch&iacute;nh thức tr&igrave;nh l&agrave;ng. Smartphone n&agrave;y c&oacute; một thiết kế cực kỳ độc đ&aacute;o đ&oacute; l&agrave; 2 m&agrave;n h&igrave;nh trước v&agrave; sau, cả 2 đều rộng 5.5 inch. Theo gizchina, YotaPhone 3 được xem l&agrave; một sản phẩm lạ tr&ecirc;n thị trường smartphone hiện nay, smartphone n&agrave;y c&oacute; m&agrave;n h&igrave;nh ch&iacute;nh AMOLED 5.5 inch Full HD mặt trước, mặt sau l&agrave; m&agrave;n h&igrave;nh đen trắng 5.5 inch độ ph&acirc;n giải HD. Theo nh&agrave; sản xuất th&igrave; để ra đời YotaPhone 3, 100 chuy&ecirc;n gia từ Nga v&agrave; Trung Quốc đ&atilde; phải l&agrave;m việc trong 10 th&aacute;ng.</p>\r\n', '<p style=\"text-align:center\"><img src=\"images/news/yotaphone-3-1_680x425.jpg\" /></p>\n\n<p>YotaPhone 3 đ&atilde; r&ograve; rỉ kh&aacute; nhiều th&ocirc;ng tin v&agrave; mới đ&acirc;y n&oacute; đ&atilde; ch&iacute;nh thức tr&igrave;nh l&agrave;ng. Smartphone n&agrave;y c&oacute; một thiết kế cực kỳ độc đ&aacute;o đ&oacute; l&agrave; 2 m&agrave;n h&igrave;nh trước v&agrave; sau, cả 2 đều rộng 5.5 inch. Theo gizchina, YotaPhone 3 được xem l&agrave; một sản phẩm lạ tr&ecirc;n thị trường smartphone hiện nay, smartphone n&agrave;y c&oacute; m&agrave;n h&igrave;nh ch&iacute;nh AMOLED 5.5 inch Full HD mặt trước, mặt sau l&agrave; m&agrave;n h&igrave;nh đen trắng 5.5 inch độ ph&acirc;n giải HD. Theo nh&agrave; sản xuất th&igrave; để ra đời YotaPhone 3, 100 chuy&ecirc;n gia từ Nga v&agrave; Trung Quốc đ&atilde; phải l&agrave;m việc trong 10 th&aacute;ng.</p>\n\n<p style=\"text-align:center\"><img src=\"assets/images/news/yotaphone-3-2_924x464-800-resize.jpg\" /></p>\n\n<p>YotaPhone 3 d&ugrave;ng chip Snapdragon 625, c&oacute; m&aacute;y qu&eacute;t v&acirc;n tay dưới n&uacute;t Home, c&oacute; 2 phi&ecirc;n bản: RAM 4 GB + ROM 64 GB v&agrave; RAM 4 GB + RAM 128 GB. Sản phẩm n&agrave;y t&iacute;ch hợp camera trước sau 12/13 MP, c&oacute; pin 3.300 mAh v&agrave; chạy tr&ecirc;n nền tảng Android 7.1.1 Nougat.</p>\n\n<p style=\"text-align:center\"><img src=\"assets/images/news/yotaphone-3-press-renders.jpg\" /></p>\n\n<p>YotaPhone 3 64 GB c&oacute; gi&aacute; 360 USD (khoảng 8.1 triệu đồng), bản 128 GB c&oacute; gi&aacute; 465 USD (khoảng 10.5 triệu đồng).</p>\n', 1, '2017-08-02', 'yotaphone-3-1_680x425.jpg', 7),
(2, 1, 'Sony nâng cao chuẩn màn hình 4K trên smartphone', 'Xperia XZ Premium sử dụng màn hình 4K HDR với mật độ điểm ảnh lên đến 801ppi, thể hiện các nội dung độ phân giải cao sắc nét.Với Xperia XZ Premium, hình ảnh thể hiện qua màn hình rộng 5,5 inch trở nên sắc nét, sống động và lôi cuốn người xem nhờ mật độ điểm ảnh dày đặc lên đến 801ppi. Người dùng khó phát hiện ra điểm ảnh bằng mắt thường bởi tất cả những gì màn hình của Xperia XZ Premium thể hiện tựa như một bức tranh thống nhất, sống động. ', '<p style=\"text-align:center\">\n                    <img src=\"images/news/yotaphone-3-1_680x425.jpg\"/>\n                    </p>\n                    <p style=\"font-weight:bold; padding:15px 0\">Xperia XZ Premium sử dụng màn hình 4K HDR với mật độ điểm ảnh lên đến 801ppi, thể hiện các nội dung độ phân giải cao sắc nét.\n					</p>\n                    \n                    <p style=\"text-align:center\">\n                    <img src=\"assets/images/news/Image-ExtractWord.png\"/>\n                    </p>\n                    \n                    <p style=\"font-style:italic; padding:15px 0\">\n                    Màn hình 4K HDR của Xperia XZ Premium đem lại cho người xem trải nghiệm sống động, chân thực và sắc nét ngay trong lòng bàn tay.\n                    </p>\n                    \n                    <p>Với Xperia XZ Premium, hình ảnh thể hiện qua màn hình rộng 5,5 inch trở nên sắc nét, sống động và lôi cuốn người xem nhờ mật độ điểm ảnh dày đặc lên đến 801ppi. Người dùng khó phát hiện ra điểm ảnh bằng mắt thường bởi tất cả những gì màn hình của Xperia XZ Premium thể hiện tựa như một bức tranh thống nhất, sống động.\n<br/><br/>\nThừa hưởng những công nghệ từ dòng TV Bravia trứ danh, Xperia XZ Premium cho hình ảnh trong trẻo, chân thực nhờ công nghệ Triluminos, kết hợp với X-Reality và Dynamic Contrast Enhancer. Độ tương phản cao, màu đen sâu cũng được Sony thể hiện thông qua tính năng HDR tương tự các TV cao cấp.\n<br/><br/>\nNếu cách đây 2 năm, công nghệ Ultra HD còn mới mẻ với người dùng, ngay cả TV 4K cũng chưa phổ biến, thì hiện nay đây đã là xu thế của tất cả các hãng công nghệ. Một trong những tác nhân thúc đẩy sự phát triển này là nội dung 4K ngày càng phong phú. Tại Việt Nam, nhà đài VTC, VTV hay SCTV đều đang thử nghiệm phát sóng truyền hình 4K nên việc sở hữu chiếc điện thoại cao cấp nhất của Sony là một trong những cách để người dùng tiếp cận với công nghệ này.\n<br/><br/>\nBên cạnh đó, Xperia XZ Premium cho phép người dùng thưởng thức hàng loạt nội dung 4K HDR từ dịch vụ Amazon Prime Video, YouTube 4K. Tốc độ tải dữ liệu trên điện thoại lên đến 1Gbps giúp tải phim 4K chỉ trong vài giây.</p>\n                    <br/><br/>\n                    <p style=\"text-align:center\">\n                    <img src=\"assets/images/news/Image-ExtractWord-11499420194.png\"/>\n                    </p>\n                    <br/><br/>\n                    <p>\n                    Cùng với màn hình cao cấp, Xperia XZ Premium còn đem đến cho người dùng hệ thống âm thanh chuyên nghiệp. Mẫu điện thoại của Sony trang bị công nghệ High-Resolution Audio cho phép từng chi tiết, từng biểu cảm nhỏ nhất trong bản thu đều thể hiện rõ ràng, sắc nét. Công nghệ DSEE HX của Sony còn có thể nâng cấp các bản nhạc MP3 lên chất lượng gần nhất với âm thanh phòng thu.\n<br/><br/>\nKhi người dùng muốn kết nối với loa hoặc tai nghe không dây, sản phẩm vẫn đảm bảo chất lượng âm thanh trọn vẹn bằng công nghệ LDAC. Công nghệ này sẽ đảm bảo tín hiệu âm thanh không dây truyền đi không bị mất mát nhờ dữ liệu truyền tải gấp ba lần so với Bluetooth thông thường.\n<br/><br/>\nCamera cũng là tính năng không thể bỏ qua với Xperia XZ Premium. Lần đầu tiên, một chiếc smartphone có thể quay video siêu chậm Super Slow Motion 960 khung hình/giây thông qua công nghệ Motion Eye. Tính năng Chụp dự đoán sẽ giúp bạn không bỏ lỡ bất kỳ khoảnh khắc ấn tượng nào trong nhịp sống hiện đại.\n                    </p>\n                    <br/><br/>\n                    <p style=\"text-align:center\">\n                    <img src=\"assets/images/news/Image-ExtractWord-2-20194.png\"/>\n                    </p>\n                    <br/><br/>\n                    <p style=\"font-style:italic\">\n                    Tính năng quay Super Slow Motion 960 khung hình một giây là thế mạnh của Xperia XZ Premium.\n                    </p>\n                    \n                    <p>Xperia XZ Premium sử dụng bộ khung kim loại nguyên khối, mặt trước và sau bảo vệ bằng kính cường lực Corning Gorilla Glass 5 mang đến vẻ đẹp và độ bền cao. Sony thiết kế máy theo phong cách Alkaleido sang trọng, mặt sau sáng bóng có thể thay đổi màu sắc dưới những góc nhìn khác nhau.\n<br/><br/>\nMàn hình 4K HDR kết hợp cùng phần cứng mạnh mẽ của chip Snapdragon 835, RAM 4GB tăng cường trải nghiệm người dùng. Ngoài ra máy còn có khả năng độc đáo là quay video siêu chậm Super Slow Motion 960 khung hình một giây.</p>\n<p style=\"text-align:right; font-weight:bold\">Vnexpress</p>', 1, '2017-08-09', 'Image-ExtractWord.png', 4),
(3, 1, 'Xperia XZ Premium - smartphone đầu tiên có màn hình 4K HDR', 'Màn hình 4K HDR và camera quay slow motion 960 khung hình/giây là tính năng đặc biệt giúp Xperia XZ Premium cạnh tranh trong phân khúc smartphone cao cấp.XZ Premium vẫn sử dụng thiết kế Ommi Balance đặc trưng của Sony từ thời Xperia Z với kiểu dáng vuông vắn mạnh mẽ, khác biệt so với xu thế bo tròn mềm mại hiện nay. ', '<p style=\"font-weight:bold; padding:15px 0\">Màn hình 4K HDR và camera quay slow motion 960 khung hình/giây là tính năng đặc biệt giúp Xperia XZ Premium cạnh tranh trong phân khúc smartphone cao cấp.\n					</p>\n                    <p style=\"text-align:center\">\n                    <img src=\"assets/images/news/MG-9648-8984-1499141889.jpg\"/>\n                    </p>\n                    <br/>\n                    <p>XZ Premium vẫn sử dụng thiết kế Ommi Balance đặc trưng của Sony từ thời Xperia Z với kiểu dáng vuông vắn mạnh mẽ, khác biệt so với xu thế bo tròn mềm mại hiện nay.\n<br/><br/>\nCác chi tiết được hoàn thiện tốt. Phần khung sườn của máy được gắn từ các phần khác nhau nhưng chặt chẽ và liền mạch, không hề có khoảng hở. Phần hai bên cạnh khung sườn được làm tròn hơn so với XZ hay XZs giúp cầm dễ chịu cũng như chắc tay chắc tay hơn.</p>\n                    <br/>\n                    <p style=\"text-align:center\">\n                    <img src=\"assets/images/news/MG-9645-5792-1499141889.jpg\"/>\n                    </p><br/>\n                    \n                    <p>Sony không đi theo xu hướng chung - sử dụng màn hình viền siêu mỏng - trên model cao cấp nhất của mình nên sản phẩm của hãng có kích thước khá lớn nhưng vì thế khả năng chống va đập của máy lại tốt hơn. Hãng điện tử Nhật Bản cũng quay lại sử dụng hai mặt kính cho model cao cấp nhất của mình thay vì mặt lưng kim loại như trên XZs. Mặt lưng kính khiến thiết kế trông bóng bảy và đẹp mắt hơn, nhất là khi kết hợp với phần khung viền bóng loáng. Sony sử dụng kính Gorilla Glass 5 có khả năng chống va đập và trầy xước tốt nhất hiện nay trên thị trường cho sản phẩm của mình. Tuy nhiên, cũng giống các model cao cấp hiện nay sử dụng khung kim loại hai mặt kính, máy rất dễ bám vân tay. <br/><br/>\n\nMặt sau đơn giản với cụm camera, cụm cảm biến và đèn flash đặt song song ở góc trái. Camera không bị lồi lên như trên XZs. Mặt trước vẫn giữ thiết kế quen thuộc với cụm hai loa đặt ở hai phần trên dưới màn hình. Các nút điểu khiển của Android vẫn được đặt bên trong màn hình nên phần dưới máy tạo cảm giác dư thừa. Ba phím bấm cứng của máy được đặt ở cạnh phải là nút âm lượng, nguồn và nút kích hoạt nhanh máy ảnh. Nút nguồn tích hợp cảm biến vân tay được làm tiệp màu với vỏ máy đẹp mắt hơn thay vì màu bạc như trước kia. Hai phần đỉnh và đế được làm bằng kim loại và được vát phẳng.<br/><br/>\n\nSony sử dụng thiết kế hai khay sim riêng biệt với dạng mở nắp, trong đó, khay sim 2 cũng là khay cắm thẻ nhớ giúp người dùng tháo lắp nhanh chóng và dễ dàng mà không cần sử dụng cây chọc sim. Do máy có tính năng chống nước IP68 nên người dùng phải chú ý việc đậy kín khay sim khi sử dụng.</p>\n                    <br/><br/>\n                    <p style=\"text-align:center\">\n                    <img src=\"assets/images/news/MG-9655-8816-1499141889.jpg\"/>\n                    </p>\n                    <br/><br/>\n                    <p>\n                    Xperia XZ Premium là smartphone đầu tiên trên thế giới được tích hợp màn hình 4K HDR, công nghệ đang được sử dụng trên các mẫu TV cao cấp hiện nay. Với màn hình 5,5 inch, độ phân giải 4K là hơi dư thừa, nhưng Sony cho biết họ tích hợp màn hình độ phân giải 4K vào sản phẩm để đón đầu công nghệ thực tế ảo VR đang ngày càng phát triển trên thiết bị di động.\n<br/><br/>\nVới công nghệ HDR, màn hình của máy thể hiện độ trong trẻo của hình ảnh cũng như màu sắc, độ tương phản và góc nhìn vượt trội so với các mẫu cùng phân khúc. Kết hợp cùng độ sáng cao, màn hình của Xperia XZ Premium cho phép sử dụng ngoài nắng dễ dàng. Bên cạnh đó, Sony cho phép tuỳ chỉnh các thông số của màn hình theo ý thích như chỉnh White Balance, màu sắc và độ tương phản và tăng chất lượng video hiển thị.\n                    </p>\n                    <br/><br/>\n                    <p style=\"text-align:center\">\n                    <img src=\"assets/images/news/MG-9650-6639-1499141889.jpg\"/>\n                    </p>\n                    <br/><br/>\n\n                    <p>Tương tự các smartphone cao cấp hiện nay, XZ Premium chạy Android 7 mới nhất với giao diện tuỳ biến riêng của Sony. Giao diện này được làm đơn giản và trực quan, không có phần mềm rác, giúp máy hoạt động nhanh và mượt. Người dùng vẫn có thể tuỳ biến theo sở thích cá nhân nhờ kho theme phong phú và đa dạng.\n<br/><br/>\nÂm thanh cũng là điểm nổi trội của sản phẩm bởi chất lượng hi-res Audio, tích hợp các công nghệ âm thanh DSEE HX như các dòng máy chuyên chơi nhạc Walkman. Kết hợp với PlayStation 4, người dùng có thể chơi các game PlayStation mới nhất ngay trên Xperia XZ Premium. </p>\n\n				<br/><br/>\n                 <p style=\"text-align:center\">\n                 <img src=\"assets/images/news/MG-9658-3263-1499141889.jpg\"/>\n                 </p>\n                <br/><br/>\n                \n                <p>Xperia XZ Premium được trang bị camera chính 19 megapixel với khẩu độ f/2.0 hỗ trợ chống rung điện tử EIS nên camera không bị lồi như các model chống rung quang học hiện nay. Bên cạnh đó, máy còn hỗ trợ công nghệ lấy nét lai hỗ trợ tiên đoán chủ thể cùng cảm biến laser và cảm biến đo màu sắc RGBC-IR, giúp cân bằng trắng tốt hơn. Giao diện camera đơn giản, dễ sử dụng, chế độ chỉnh tay có thêm tính năng lấy nét tay và tuỳ chỉnh tốc độ cho phép phơi sáng một giây - dù vẫn thấp so với các smartphone khác nhưng đã giúp chụp đêm tốt hơn. Camera trước độ phân giải 13 megapixel cho hình ảnh trong trẻo, sắc nét, mặt người không bị bệt và giả tạo khi chụp selfie. Việc kích hoạt camera rất nhanh, chỉ mất 0,6 giây, bằng nút bấm riêng hoặc nhấn đúp nút nguồn.<br/><br/>\n\nSản phẩm cho khả năng lấy nét ấn tượng ngay cả khi chủ thể chuyển động nhanh, chống rung điện tử hoạt động hiệu quả không hề thua kém chống rung quang học. Chất lượng hình chụp ở chế độ tự động được cải tiến rất nhiều so với trước đây. Hình ảnh tự nhiên với độ chi tiết tốt và màu sắc trung thực, Sony không còn tăng sáng hình ảnh như trước ngay cả khi chụp đêm giúp hình ảnh không bị nhiễu và giữ chi tiết tốt hơn.\n<br/><br/>\nĐiểm nổi bật của sản phẩm là tính năng quay slow motion với tốc độ 960 khung hình/giây với độ phân giải HD. Để thực hiện tính năng này, Sony tích hợp bộ nhớ đệm riêng cho camera, tuy nhiên, hãng cũng crop khung hình và giảm khẩu độ ống kính khi kích hoạt tính năng, do đó, người dùng chỉ nên quay slow motion khi có ánh sáng tốt để video chất lượng.<br/><br/>\nMáy được trang bị cấu hình gồm chip xử lý Qualcomm Snapdragon 835, RAM 4 GB và bộ nhớ trong 64 GB. Đây là cấu hình thuộc hàng cao nhất hiện nay trên thị trường ngang với Galaxy S8 hay HTC U Ultra. Máy hoạt động mượt ở tất cả tác vụ, màn hình 4K có thể hoạt động liên tục, mượt, không xảy ra tình trạng giật hình. máy cũng không bị nóng quá khi chạy liên tục.</p>\n\n<p style=\"font-weight:bold\">Pin</p>\n<br/>\n<p>\nDung lượng pin 3.230 mAh không phải cao so với mức chung hiện nay nhưng Sony luôn nổi tiếng với khả năng tối ưu hoá pin. Sử dụng thực tế với 2 sim cùng kết nối mạng liên tục để push mail, tin nhắn cũng như giải trí, chụp hình, máy vẫn cho khả năng sử dụng hơn một ngày.\n<br/><br/>\nSony Xperia XZ Premium là sự lựa chọn đáng giá trong phân khúc smartphone cao cấp với những người dùng thích một model có thiết kế mạnh mẽ khác biệt cùng với các tính năng hữu dụng.</p>\n					<br/><br/>\n                 <p style=\"text-align:center\">\n                 <img src=\"assets/images/news/screen-Shot-2017-07-04-at.png\"/>\n                 </p>\n                <br/><br/>\n                <p style=\"font-style:italic; text-align:center\">Bảng so sánh nhanh giữa Sony Xperia XZ Premium với hai model cùng phân khúc là HTC U11 và Samsung Galaxy S8.</p><br/>\n<p style=\"text-align:right; font-weight:bold\">Vnexpress</p>', 18, '2017-08-15', 'MG-9650-6639-1499141889.jpg', 3),
(4, 1, 'Galaxy J7 Pro - smartphone giá tốt, nhiều tính năng cao cấp', 'Đây cũng là phiên bản nâng cấp từ Galaxy J7 Prime, smartphone bán chạy nhất ở Việt Nam nhiều tháng trở lại đây.Một tháng sau khi ra mắt, Galaxy J7 Pro bắt đầu được bán chính hãng ở Việt Nam với giá 6,99 triệu đồng. Với tầm tiền này và vị thế bản nâng cấp từ Galaxy J7 Prime năm ngoái, đây là một trong những smartphone đáng chú ý nhất trong nửa cuối năm nay ở Việt Nam.', '<p style=\"font-weight:bold; padding:15px 0\">Đây cũng là phiên bản nâng cấp từ Galaxy J7 Prime, smartphone bán chạy nhất ở Việt Nam nhiều tháng trở lại đây.\n					</p>\n                    <p style=\"text-align:center\">\n                    <img src=\"assets/images/news/20-Samsung-Galaxy-J7-Pro-VnE-2969.jpg\"/>\n                    </p>\n                    <br/>\n                    <p>Một tháng sau khi ra mắt, Galaxy J7 Pro bắt đầu được bán chính hãng ở Việt Nam với giá 6,99 triệu đồng. Với tầm tiền này và vị thế bản nâng cấp từ Galaxy J7 Prime năm ngoái, đây là một trong những smartphone đáng chú ý nhất trong nửa cuối năm nay ở Việt Nam.</p>\n                    <br/>\n                    <p style=\"text-align:center\">\n                    <img src=\"assets/images/news/20-Samsung-Galaxy-J7-Pro-VnE-2784.jpg\"/>\n                    </p><br/>\n                    \n                    <p>Kiểu dáng của sản phẩm gây chú ý với hai dải ăng-ten được làm kiểu chữ U, lần đầu xuất hiện trên smartphone Samsung. Vỏ kim loại nguyên khối toàn bộ với màu xanh ánh bạc Blue Silver lạ mắt. Mặt lưng có chất lượng hoàn thiện tốt hơn nhiều điện thoại tầm trung khác cũng như các mẫu Galaxy J đời trước. Cụm camera đã được làm chìm xuống, đỡ xước.</p>\n                    <br/><br/>\n                    <p style=\"text-align:center\">\n                    <img src=\"assets/images/news/20-Samsung-Galaxy-J7-Pro-VnE-2971.jpg\"/>\n                    </p>\n                    <br/><br/>\n                    <p>\n                    Phiên bản bán chính hãng ở Việt Nam hỗ trợ 2 sim với kết nối 4G LTE và có bộ nhớ trong 32GB. Khác với nhiều mẫu Android tầm trung đang có trên thị trường, J7 Pro có khay đựng thẻ nhớ microSD riêng biệt nên có thể sử dụng cùng lúc với 2 sim.\n                    </p>\n                    <br/><br/>\n                    <p style=\"text-align:center\">\n                    <img src=\"assets/images/news/20-Samsung-Galaxy-J7-Pro-VnE-2973.jpg\"/>\n                    </p>\n                    <br/><br/>\n\n                    <p>Cấu hình không phải là điểm mạnh của sản phẩm khi không thay đổi so với Galaxy J7 Prime dù giá cao hơn 1 triệu đồng, vì vẫn dùng chip Exynos 8 nhân tốc độ 1,6 GHz, RAM 3GB và bộ nhớ trong 32GB. Dù vậy, phần mềm được nâng cấp lên Android 7.0 cùng với giao diện mới giống hệt như Galaxy S8.</p>\n\n				<br/><br/>\n                 <p style=\"text-align:center\">\n                 <img src=\"assets/images/news/20-Samsung-Galaxy-J7-Pro-VnE-2979.jpg\"/>\n                 </p>\n                <br/><br/>\n                \n                <p>Máy còn kế thừa nhiều tính năng ở đàn anh cao cấp như màn hình Full HD 5,5 inch có tính năng luôn hiển thị Always-On Display. Thay vì tấm nền TFT PLS ở Prime, mẫu Pro cũng chuyển sang dùng màn hình SuperAMOLED cho màu sắc sống động và góc nhìn tốt hơn. </p>\n				<br/><br/>\n                 <p style=\"text-align:center\">\n                 <img src=\"assets/images/news/20-Samsung-Galaxy-J7-Pro-VnE-2996.jpg\"/>\n                 </p>\n                <br/><br/>\n\n<p>\nCảm biến vân tay nằm ở mặt trước hỗ trợ 1 chạm, cho tốc độ nhận diện nhanh. Pin được nâng từ dung lượng 3.300 mAh lên 3.600 mAh, nhiều hơn cả dòng Galaxy S và Note, nhưng vẫn chưa hỗ trợ công nghệ sạc nhanh.</p>\n					<br/><br/>\n                 <p style=\"text-align:center\">\n                 <img src=\"assets/images/news/20-Samsung-Galaxy-J7-Pro-VnE-2988.jpg\"/>\n                 </p>\n                <br/><br/>\n                \n                <p>Camera chính ở mặt lưng có ống kính khẩu độ lớn hơn f/1.7, cải thiện khả năng chụp trong điều kiện thiếu sáng. Hỗ trợ nhiều chế độ chụp hình, nhưng chế độ chụp chuyên nghiệp vẫn còn giới hạn không cho phép can thiệp vào nhiều thông số, không thể lấy nét tay hay thay đổi tốc độ chụp.</p>\n                <br/><br/>\n                 <p style=\"text-align:center\">\n                 <img src=\"assets/images/news/20-Samsung-Galaxy-J7-Pro-VnE-2976.jpg\"/>\n                 </p>\n                <br/><br/>\n                <p>Galaxy J7 Pro tập trung nhiều vào tính năng selfie khi camera trước có cùng độ phân giải 13 megapixel như camera phía sau, khẩu độ ống kính f/1.9 và có cả đèn flash để trợ sáng. Người dùng có thể ra lệnh chụp hình bằng cách vẫy tay.</p><br/>\n<p style=\"text-align:right; font-weight:bold\">Vnexpress</p>', 1, '2017-08-14', '20-Samsung-Galaxy-J7-Pro-VnE-2969.jpg', 23),
(5, 1, 'iPhone 8 có thể nhận biết khi mắt nhìn vào màn hình', 'Các chuyên gia tiếp tục phân tích firmware của Apple và phát hiện một số điểm mới sẽ có trên iPhone 8.Cuối tháng 7, hãng này chia sẻ một bản phần mềm hệ thống (firmware) sơ khai cho loa thông minh HomePod. Cộng đồng các nhà phát triển nhanh chóng \"lục lọi\" mã phần mềm để xem liệu có thông tin, manh mối nào liên quan tới các sản phẩm và dịch vụ sắp tới của Apple. ', '<p style=\"font-weight:bold; padding:15px 0\">Các chuyên gia tiếp tục phân tích firmware của Apple và phát hiện một số điểm mới sẽ có trên iPhone 8.\n					</p>\n                    <p>Cuối tháng 7, hãng này chia sẻ một bản phần mềm hệ thống (firmware) sơ khai cho loa thông minh HomePod. Cộng đồng các nhà phát triển nhanh chóng \"lục lọi\" mã phần mềm để xem liệu có thông tin, manh mối nào liên quan tới các sản phẩm và dịch vụ sắp tới của Apple.\n<br/><br/>\nChuyên gia Guilherme Rambo đã tìm thấy một đoạn mã thể hiện một tính năng mới: theo dõi liệu người dùng có đang nhìn vào thiết bị hay không.\n<br/><br/>\nTrước đó, chuyên gia Steve Troughton-Smith cũng cho hay có một dòng mã trong firmware của HomePod gợi ý về phần mềm nhận diện khuôn mặt mang tên BKFaceDetect (trong đó BK được đoán là Biometric Kit - bộ sinh trắc học).</p>\n                    <br/><br/>\n                    <p style=\"text-align:center\">\n                    <img src=\"assets/images/news/iPhone-3784-1502335070.jpg\"/>\n                    </p>\n                    <p style=\"font-style:italic;text-align:center\">Ảnh concept về iPhone 8.</p>\n                   \n                    <p>\n                    Một số nguồn tin cho biết, Apple đã rất nỗ lực để có thể tích hợp cảm biến vân tay xuống dưới màn hình nhưng thất bại. Trong khi đó, iPhone 8 lại có thiết kế màn hình tràn viền nên không còn nút Home vật lý, mà hãng này không muốn đưa Touch ID ra mặt sau máy. Do đó, nhiều khả năng Apple không sử dụng Touch ID trên sản phẩm của mình nữa kể từ iPhone 8. Thay vào đó, họ chuyển sang cảm biến nhận dạng khuôn mặt Face ID.\n<br/><br/>\niPhone 8 dự kiến được công bố đầu tháng 9, có thể có màn hình OLED 5,8 inch, pin chữ L dung lượng cao, camera kép đặt dọc hay cổng Lightning hỗ trợ sạc nhanh và có giá tới 1.100 USD cho bản 128 GB và lên đến 1.200 USD cho tùy chọn bộ nhớ 256 GB.\n                    </p>\n<br/>\n<p style=\"text-align:right; font-weight:bold\">Vnexpress</p>', 18, '2017-08-23', 'iPhone-3784-1502335070.jpg', 16),
(6, 2, 'About us', '<p>Hello</p>\r\n', '<div>\r\n<p>Seven years after PlayStation&rsquo;s previous console launch, Sony were ready to launch the business-critical PS5. Taking both Xbox and a global pandemic head-on, we created a disruptive and culturally relevant launch that made the PS5 the biggest ever console launch. Specializing in providing genuine 2ND handheld and game consoles with the motto: enthusiasm, prestige, work for passion, desire to use the Game to bring relaxing moments to customers.</p>\r\n\r\n<p>Commitment to software support for the life of the machine, a prestigious warranty to create absolute peace of mind for customers when using the product</p>\r\n</div>\r\n\r\n<h3 style=\"text-align:center\">Our home:</h3>\r\n\r\n<div style=\"width:90%; margin:auto; padding:15px 0\"><iframe frameborder=\"0\" height=\"450\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.6309560011296!2d106.68004926480064!3d10.762898942330699!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752f19554afa79%3A0x961af94a35c6f42!2zVHJ1bmcgdMOibSBUaW4gaOG7jWMgdHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBLaG9hIGjhu41jIFThu7Egbmhpw6puLCAyMjcgTmd1eeG7hW4gVsSDbiBD4burLCBwaMaw4budbmcgNCwgUXXhuq1uIDUsIEjhu5MgQ2jDrSBNaW5oLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1504488721142\" style=\"border:0\" width=\"100%\"></iframe></div>\r\n', 1, '2017-09-13', '1639494540logocover.png', 12),
(7, 1, 'Sony Xperia XA1 Plus ra mắt tại Việt Nam với giá 7,190,000 VND', '<p>H&ocirc;m nay trong khu&ocirc;n khổ sự kiện Sony Show 2017, Sony Electronics Việt Nam đ&atilde; ch&iacute;nh thức giới thiệu chiếc smartphone mới nhất trong ph&acirc;n tầm trung đ&oacute; ch&iacute;nh l&agrave;&nbsp;<a href=\"https://vienthonga.vn/sony-xperia-xa1-plus.html/\" title=\"Sony Xperia XA1 Plus\">Xperia XA1 Plus</a>. M&aacute;y c&oacute; độ ph&acirc;n giải 23MP, m&agrave;n h&igrave;nh 5.5inch Full HD cho trải nghiệm vượt trội v&agrave; sắc n&eacute;t, kết hợp c&ugrave;ng với ấm thanh sống động từ c&ocirc;ng nghệ trứ danh của Sony.&nbsp;</p>\r\n', '<h2>H&ocirc;m nay trong khu&ocirc;n khổ sự kiện Sony Show 2017, Sony Electronics Việt Nam đ&atilde; ch&iacute;nh thức giới thiệu chiếc smartphone mới nhất trong ph&acirc;n tầm trung đ&oacute; ch&iacute;nh l&agrave;&nbsp;<a href=\"https://vienthonga.vn/sony-xperia-xa1-plus.html/\" title=\"Sony Xperia XA1 Plus\">Xperia XA1 Plus</a>. M&aacute;y c&oacute; độ ph&acirc;n giải 23MP, m&agrave;n h&igrave;nh 5.5inch Full HD cho trải nghiệm vượt trội v&agrave; sắc n&eacute;t, kết hợp c&ugrave;ng với ấm thanh sống động từ c&ocirc;ng nghệ trứ danh của Sony.&nbsp;</h2>\n\n<p><strong>Đỉnh cao camera 23 MP, khởi động v&agrave; chụp nhanh trong 0,6 gi&acirc;y</strong></p>\n\n<p>&nbsp;</p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"assets/images/news/100000_img-7158.jpg\" style=\"height:492px; width:738px\" /></p>\n\n<p style=\"text-align:center\">&nbsp;</p>\n\n<p>Xperia XA1 Plus được trang bị camera 23 MP ti&ecirc;n tiến v&agrave; cảm biến Exmor RS k&iacute;ch thước 1/2.3 inches d&agrave;nh cho di động mang đến chất lượng h&igrave;nh ảnh đ&aacute;ng kinh ngạc. Kết hợp với ống k&iacute;nh F2.0 v&agrave; c&ocirc;ng nghệ Hybrid Autofocus tự động lấy n&eacute;t v&agrave; chụp nhanh chỉ trong 0,6 gi&acirc;y, Xperia XA1 Plus lu&ocirc;n đảm bảo tốc độ để kh&ocirc;ng bỏ lỡ bất kỳ khoảnh khắc với những bức ảnh sắc n&eacute;t, những video ấn tượng ngay cả khi chủ thể đang chuyển động hay trong điều kiện thiếu s&aacute;ng. Camera trước c&oacute; độ ph&acirc;n giải 8 MP, ống k&iacute;nh g&oacute;c rộng 24 mm đủ cho cả nh&oacute;m bạn selfie trong một khung h&igrave;nh trọn vẹn.</p>\n\n<p>&nbsp;</p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"assets/images/news/100000_img-7065.jpg\" style=\"height:492px; width:738px\" /></p>\n\n<p>Với m&agrave;n h&igrave;nh Full HD 5,5 inch, Xperia XA1 Plus cho ph&eacute;p người d&ugrave;ng thưởng thức những bộ phim chất lượng cao ngay trong l&ograve;ng b&agrave;n tay. B&ecirc;n cạnh đ&oacute;, nhờ c&ocirc;ng nghệ ClearAudio+ v&agrave; Smart Amplifier độc quyền của Sony, &acirc;m thanh tr&ecirc;n Xperia XA1 Plus trong trẻo, sống động v&agrave; c&oacute; thể t&ugrave;y chỉnh theo sở th&iacute;ch c&aacute; nh&acirc;n, gi&uacute;p trải nghiệm giải tr&iacute; tr&ecirc;n c&agrave;ng th&ecirc;m ấn tượng.</p>\n\n<p>&nbsp;</p>\n\n<p><strong>M&agrave;u sắc nổi bật thể hiện c&aacute; t&iacute;nh</strong></p>\n\n<p>&nbsp;</p>\n\n<p style=\"text-align:center\"><strong><img alt=\"\" src=\"assets/images/news/100000_img-7020.jpg\" style=\"height:492px; width:738px\" /></strong></p>\n\n<p>Sở hữu thiết kế vu&ocirc;ng vức quen thuộc của Sony, Xperia XA1 Plus c&oacute; bốn m&agrave;u nổi bật bao gồm: V&agrave;ng, Xanh dương, Đen, Hồng. Viền m&agrave;n h&igrave;nh mỏng được ho&agrave;n thiện bằng c&aacute;c đường cắt kim cương sắc sảo, kết hợp với khung nh&ocirc;m gia c&ocirc;ng dạng mờ, Xperia XA1 Plus cho cảm nhận thật mượt m&agrave; v&agrave; vừa vặn ho&agrave;n hảo, đặc biệt l&agrave; rất thời thượng trong tay người sử dụng. Cảm biến v&acirc;n tay ngay tr&ecirc;n n&uacute;t nguồn ở cạnh phải sẽ gi&uacute;p người d&ugrave;ng bảo vệ nội dung ri&ecirc;ng tư v&agrave; mở kh&oacute;a ngay lập tức với một lần chạm. Đ&acirc;y l&agrave; sản phẩm đầu ti&ecirc;n thuộc ph&acirc;n kh&uacute;c tầm trung được trang bị cảm biến v&acirc;n tay đặt tại n&uacute;t nguồn, vốn chỉ c&oacute; tr&ecirc;n c&aacute;c d&ograve;ng smartphone cao cấp của Sony.</p>\n\n<p><strong>&nbsp;</strong></p>\n\n<p><strong>Pin th&ocirc;ng minh, hiệu suất tối ưu</strong></p>\n\n<p>Dung lượng pin được n&acirc;ng l&ecirc;n mức 3430mAh kết hợp c&ugrave;ng chế độ tối ưu h&oacute;a pin Stamina, &nbsp;gi&uacute;p người d&ugrave;ng thỏa sức giải tr&iacute; hay thoải m&aacute;i l&agrave;m việc trong suốt một ng&agrave;y. Trong khi đ&oacute; c&ocirc;ng nghệ sạc th&iacute;ch ứng Qnovo Adaptive Charging sẽ kết hợp c&ugrave;ng Battery Care để duy tr&igrave; &ldquo;sức khỏe&rdquo; cho pin bằng c&aacute;ch theo d&otilde;i v&agrave; điều chỉnh d&ograve;ng điện ph&ugrave; hợp, tr&aacute;nh c&aacute;c t&aacute;c động ti&ecirc;u cực v&agrave; tối đa h&oacute;a tuổi thọ pin. T&iacute;nh năng sạc nhanh cũng c&oacute; tr&ecirc;n Xperia XA1 Plus gi&uacute;p bạn c&oacute; th&ecirc;m v&agrave;i giờ sử dụng m&aacute;y chỉ với v&agrave;i ph&uacute;t sạc.</p>\n\n<p style=\"text-align:center\">&nbsp;</p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"assets/images/news/100000_xperia-xa1-plus-life-style.jpg\" style=\"height:1067px; width:1600px\" /></p>\n\n<p style=\"text-align:center\">&nbsp;</p>\n\n<p>Đảm bảo hiệu suất xử l&yacute; trơn tru v&agrave; mượt m&agrave; cho Xperia XA1 Plus l&agrave; chip t&aacute;m nh&acirc;n MediaTek Helio P20. Nhờ bộ xử l&yacute; n&agrave;y, trải nghiệm tr&ecirc;n smartphone n&agrave;y của Sony lu&ocirc;n liền mạch v&agrave; nhanh ch&oacute;ng, cho d&ugrave; bạn lướt web, xem video hay đắm ch&igrave;m v&agrave;o c&aacute;c tựa game y&ecirc;u th&iacute;ch. Để kiểm so&aacute;t hiệu suất tối ưu, t&iacute;nh năng Smart Cleaner của Sony sẽ tự động &ldquo;đ&oacute;ng băng&rdquo; những ứng dụng kh&ocirc;ng d&ugrave;ng đến v&agrave; giải ph&oacute;ng bộ nhớ đệm nhằm duy tr&igrave; cho m&aacute;y lu&ocirc;n xử l&yacute; nhanh nhất, hiệu suất mạnh nhất.</p>\n\n<p>&nbsp;</p>\n\n<p>Xperia XA1 Plus được b&aacute;n tại thị trường Việt Nam từ ng&agrave;y 26/9/2017 với gi&aacute; b&aacute;n lẻ 7,190,000 VND với c&aacute;c m&agrave;u sắc: Đen, v&agrave;ng, hồng, xanh.</p>\n', 19, '2017-09-18', '1505722664100000_img-7158.jpg', 32),
(8, 1, 'Những smartphone Android giá rẻ nhất thị trường Việt', '<p>Nhiều mẫu smartphone gi&aacute; b&aacute;n chỉ hơn 1 triệu đồng, bằng gi&aacute; điện thoại t&iacute;nh năng cơ bản.</p>\r\n', '<h2>Nhiều mẫu smartphone gi&aacute; b&aacute;n chỉ hơn 1 triệu đồng, bằng gi&aacute; điện thoại t&iacute;nh năng cơ bản.</h2>\r\n\r\n<p style=\"text-align: center;\"><img alt=\"\" src=\"assets/images/news/1522999720Nokia-1-VnE-3766.jpg\" /></p>\r\n\r\n<p><strong>Nokia 1 (1,89 triệu đồng)&nbsp;</strong></p>\r\n\r\n<p>Đ&acirc;y l&agrave; smartphone c&oacute; gi&aacute; b&aacute;n rẻ nhất của thương hiệu Phần Lan. Điểm đ&aacute;ng ch&uacute; &yacute; ở Nokia 1 l&agrave; sử dụng hệ điều h&agrave;nh Android phi&ecirc;n bản mới nhất, 8.0 Oreo, cao hơn nhiều đối thủ phổ th&ocirc;ng. M&aacute;y c&oacute; cấu h&igrave;nh hạn chế với chip MediaTek tốc độ 1,1GHz, RAM 1GB v&agrave; m&agrave;n h&igrave;nh chỉ c&oacute; 4,5 inch với độ ph&acirc;n giải chưa đủ chuẩn HD 720p.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"assets/images/news/xiaomi-redmi-.jpg\" style=\"height:798px; width:1155px\" /></p>\r\n\r\n<p><strong>Xiaomi Redmi 5A (1,8 triệu đồng)&nbsp;</strong><br />\r\n<br />\r\nGi&aacute; tương đương với Nokia 1 nhưng Redmi 5A c&oacute; cấu h&igrave;nh cao hơn với chip Snapdragon 425, camera13 megapixel v&agrave; RAM 2GB. M&agrave;n h&igrave;nh cũng đạt chuẩn HD với k&iacute;ch cỡ 5 inch. Điểm đ&aacute;ng tiếc l&agrave; Redmi 5A đang chạy Android 7 c&ugrave;ng giao diện đ&atilde; được Xiaomi tuỳ biến rất nhiều, kh&aacute;c hẳn với phi&ecirc;n bản gốc của Google.</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#008080\"><strong>Ảnh thực tế Xiaomi Redmi 5A</strong></span></p>\r\n\r\n<p style=\"text-align:center\"><strong><img alt=\"\" src=\"assets/images/news/mobiistar-zumbo-power-2.jpg\" style=\"height:533px; width:800px\" /></strong></p>\r\n\r\n<p><strong>Mobiistar Zumbo Power (1,65 triệu đồng)</strong></p>\r\n\r\n<p>Vi xử l&yacute; v&agrave; độ ph&acirc;n giải m&agrave;n h&igrave;nh của Zumbo Power kh&ocirc;ng kh&aacute;c nhiều Nokia 1 khi d&ugrave;ng chip MediaTek tốc độ 1,3 GHz, RAM 1GB v&agrave; m&agrave;n h&igrave;nh 5,2 inch độ ph&acirc;n giải 480 x 854 pixel. Tuy nhi&ecirc;n, lợi thế ở mẫu Android thương hiệu Việt l&agrave; c&oacute; pin l&ecirc;n tới 4.000 mAh, cao gần gấp đ&ocirc;i sản phẩm của Nokia. Với gi&aacute; thấp hơn, Zumbo Power cũng sử dụng hệ điều h&agrave;nh Android phi&ecirc;n bản Android 6.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"assets/images/news/itel-it1516-plus.jpg\" style=\"height:680px; width:1020px\" /></p>\r\n\r\n<p><strong>Itel IT1516 Plus (1,55 triệu đồng)&nbsp;</strong><br />\r\n<br />\r\nC&oacute; gi&aacute; rẻ hơn Zumbo Power, nhưng IT1516 Plus c&oacute; pin l&ecirc;n tới 5.000 mAh, hứa hẹn thời gian sử dụng được 2 đến 3 ng&agrave;y. M&aacute;y c&oacute; cấu h&igrave;nh thấp với vi xử l&yacute; Spreadtrum SC7731, RAM 1GB. M&agrave;n h&igrave;nh c&ugrave;ng độ ph&acirc;n giải nhưng rộng hơn Nokia 1 khi đạt 5 inch. Điểm hạn chế nằm ở hệ điều h&agrave;nh Android đ&atilde; kh&aacute; cũ, 5.1 Lollipop.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"assets/images/news/12-Philips-S337-VnE.jpg\" /></p>\r\n\r\n<p><strong>Philips S337 (1,1 triệu đồng)</strong></p>\r\n\r\n<p>Sau nhiều lần giảm, gi&aacute; của mẫu Android S337 giờ c&ograve;n rẻ hơn một số mẫu điện thoại t&iacute;nh năng cơ bản (feature phone) như Nokia 230. Trong khi đ&oacute;, lợi thế của sản phẩm vẫn l&agrave; c&oacute; m&agrave;n h&igrave;nh cảm ứng 5 inch, vi xử l&yacute; 4 nh&acirc;n v&agrave; camera 5 megapixel. Gi&aacute; thấp, n&ecirc;n hạn chế ở smartphone của Philips cũng l&agrave; RAM 1 GB, dung lượng pin chỉ 2.000 mAh. Hệ điều h&agrave;nh cũng l&agrave; phi&ecirc;n bản Android cũ, 5.1 Lollipop.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"assets/images/news/mobell-s30-den-1-5.jpg\" /></p>\r\n\r\n<p><strong>Mobell S30 (990.000 đồng)</strong></p>\r\n\r\n<p>Đ&acirc;y l&agrave; smartphone Android c&oacute; gi&aacute; b&aacute;n thấp nhất tr&ecirc;n kệ h&agrave;ng ch&iacute;nh h&atilde;ng, nằm chung tầm tiền với điện thoại &quot;cục gạch&quot;. Tuy nhi&ecirc;n, trải nghiệm sản phẩm đem lại kh&ocirc;ng tốt v&igrave; cấu h&igrave;nh qu&aacute; thấp. M&aacute;y chỉ c&oacute; dung lượng RAM 512MB v&agrave; bộ nhớ trong 4GB khiến việc sử dụng đa nhiệm kh&oacute; khăn d&ugrave; đ&atilde; trang bị hệ điều h&agrave;nh Android 6.0 Marshmallow, cao hơn đối thủ từ Philips hay Itel.</p>\r\n\r\n<p style=\"text-align:right\"><strong>Nguồn:&nbsp;Vnexpress</strong></p>\r\n', 19, '2018-04-06', '1522999720Nokia-1-VnE-3766.jpg', 1),
(9, 1, '5 smartphone nổi bật được bán ra trong tháng 4', '<p>C&aacute;c mẫu điện thoại b&aacute;n ra trong th&aacute;ng n&agrave;y đều c&oacute; m&agrave;n h&igrave;nh tr&agrave;n viền v&agrave; t&iacute;nh năng nổi trội như t&iacute;ch hợp AI, chạy Android 8&hellip;</p>\r\n', '<h2>C&aacute;c mẫu điện thoại b&aacute;n ra trong th&aacute;ng n&agrave;y đều c&oacute; m&agrave;n h&igrave;nh tr&agrave;n viền v&agrave; t&iacute;nh năng nổi trội như t&iacute;ch hợp AI, chạy Android 8&hellip;</h2>\r\n\r\n<p style=\"text-align: center;\"><img alt=\"\" src=\"assets/images/news/152300066520180328-MG-3733.jpg\" /></p>\r\n\r\n<p><strong>Huawei Nova 3e</strong></p>\r\n\r\n<p>Đ&acirc;y l&agrave; một trong những model tầm trung đầu ti&ecirc;n c&oacute; &quot;tai thỏ&quot; giống iPhone X. Nova 3e sử dụng m&agrave;n h&igrave;nh 5,84 inch độ ph&acirc;n giải Full HD+. Mặt lưng kh&aacute; giống iPhone X với c&aacute;ch đặt camera k&eacute;p nằm dọc. M&aacute;y được trang bị chip Kirin 659, RAM 4 GB v&agrave; bộ nhớ trong 64 GB hoặc 128 GB. Camera k&eacute;p ph&iacute;a sau với độ ph&acirc;n giải lần lượt l&agrave; 16 megapixel v&agrave; 2 megapixel hỗ trợ nhiều t&iacute;nh năng chụp v&agrave; c&ocirc;ng nghệ do Leica ph&aacute;t triển, c&ograve;n camera trước c&oacute; độ ph&acirc;n giải 16 megapixel. M&aacute;y c&oacute; pin 3.000 mAh v&agrave; sạc nhanh l&agrave; trang bị đ&aacute;ng gi&aacute;. Nova 3e chạy Android 8 với giao diện EMUI 8, mở kho&aacute; bằng gương mặt. Sản phẩm được b&aacute;n ra v&agrave;o đầu th&aacute;ng 4 với gi&aacute; 6,99 triệu đồng.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"assets/images/news/20180328-MG-3766.jpg\" style=\"height:516px; width:680px\" /></p>\r\n\r\n<p><strong>Vivo V9</strong></p>\r\n\r\n<p>V9 trang bị m&agrave;n h&igrave;nh IPS k&iacute;ch thước 6,3 inch độ ph&acirc;n giải 2.160 x 1.080 pixel với k&iacute;nh cường lực Gorilla Glass 5. Đ&acirc;y l&agrave; model c&oacute; m&agrave;n h&igrave;nh tr&agrave;n viền lớn nhất tr&ecirc;n thị trường. Thiết kế tai thỏ đ&uacute;ng phong c&aacute;ch của iPhone X nhưng phần khuyết cho camera nhỏ hơn, tương tự Zenfone 5 của Asus.&nbsp;</p>\r\n\r\n<p>Vivo vẫn nhấn mạnh v&agrave;o camera trước tr&ecirc;n sản phẩm của m&igrave;nh với độ ph&acirc;n giải tới 24 megapixel. Camera k&eacute;p ph&iacute;a sau cũng được đặt dọc với độ ph&acirc;n giải 16 v&agrave; 5 megapixel. C&ocirc;ng nghệ AI được trang bị tr&ecirc;n camera trước. M&aacute;y chạy Android 8.0 với giao diện t&ugrave;y biến Funtouch OS 4.0.&nbsp;Sản phẩm được b&aacute;n ra với gi&aacute; 7,99 triệu đồng.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"assets/images/news/20180325-thumb-103133.jpg\" style=\"height:379px; width:660px\" /></p>\r\n\r\n<p><strong>Oppo F7</strong></p>\r\n\r\n<p>Ngo&agrave;i thiết kế tr&agrave;n viền tỷ lệ 18:9, điểm cải tiến tr&ecirc;n sản phẩm mới l&agrave; m&agrave;n h&igrave;nh khuyết một phần ph&iacute;a tr&ecirc;n, tạo ra kiểu &quot;tai thỏ&quot; như iPhone X. Oppo F7 c&oacute; m&agrave;n h&igrave;nh lớn hơn với k&iacute;ch thước 6,2 inch với độ ph&acirc;n giải Full HD+.&nbsp;Mẫu Android mới của Oppo cũng được cải tiến ở camera trước với độ ph&acirc;n giải đạt tới 25 megapixel. F7 c&ograve;n n&acirc;ng cấp chế độ l&agrave;m đẹp bằng AI, bổ sung hiệu ứng AR Sticker như ở Galaxy S9...</p>\r\n\r\n<p>Cấu h&igrave;nh v&agrave; thiết kế ph&iacute;a sau của Oppo F7 hiện vẫn chưa r&otilde;. Phi&ecirc;n bản F5 hiện vẫn sử dụng thiết kế vỏ nhựa giả kim loại với nhiều m&agrave;u sắc, camera dạng đơn thay v&igrave; dạng k&eacute;p như một số mẫu Android tầm trung kh&aacute;c. M&aacute;y c&oacute; hai tuỳ chọn RAM 4 GB hoặc 6 GB v&agrave; sẽ được b&aacute;n ra v&agrave;o cuối th&aacute;ng 4.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"assets/images/news/20-Sony-Xperia-XZ2-VnE.jpg\" /></p>\r\n\r\n<p><strong>Sony Xperia XZ2</strong></p>\r\n\r\n<p>Sony lần đầu ti&ecirc;n trang bị m&agrave;n h&igrave;nh 18:9 cho smartphone cao cấp của m&igrave;nh. Xperia XZ2 cũng sử dụng ng&ocirc;n ngữ thiết kế mới với t&ecirc;n Ambient Flow. M&aacute;y vẫn c&oacute; dạng khung kim loại hai mặt k&iacute;nh nhưng mặt lưng được l&agrave;m bo cong về c&aacute;c cạnh thay v&igrave; phẳng như trước đ&acirc;y, cảm biến v&acirc;n tay cũng được đưa ra mặt sau m&aacute;y. M&agrave;n h&igrave;nh của m&aacute;y c&oacute; k&iacute;ch thước 5,7 inch độ ph&acirc;n giải FullHD+ v&agrave; t&iacute;ch hợp t&iacute;nh năng&nbsp; Advanced X-Reality cho ph&eacute;p n&acirc;ng cấp nội dung thường th&agrave;nh nội dung HDR.</p>\r\n\r\n<p>Camera l&agrave; điểm nhấn của XZ2 khi sử dụng cảm biến 19 megapixel v&agrave; t&iacute;ch hợp chip xử l&yacute; ảnh BIONZ, cho ph&eacute;p quay video si&ecirc;u chậm Slow-motion tốc độ l&ecirc;n tới 960 h&igrave;nh/gi&acirc;y. M&aacute;y hỗ trợ loa stereo với c&ocirc;ng nghệ S-Force Surround để giả lập &acirc;m thanh v&ograve;m. Tuy nhi&ecirc;n, giắc tai nghe đ&atilde; bị loại bỏ như iPhone X. Ngo&agrave;i hệ điều h&agrave;nh Android 8.0, Xperia XZ2 c&oacute; cấu h&igrave;nh cao cấp với chip SnapDragon 845 đi k&egrave;m RAM 4 GB v&agrave; bộ nhớ trong 64 GB, pin 3180 mAh c&oacute; hỗ trợ sạc nhanh.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"assets/images/news/poster-for-5740343072001.jpg\" /></p>\r\n\r\n<p><strong>Nokia 7</strong></p>\r\n\r\n<p>Đ&acirc;y l&agrave; smartphone đầu ti&ecirc;n của Nokia c&oacute; m&agrave;n h&igrave;nh 18:9 với k&iacute;ch thước 6 inch. Nokia sử dụng tấm nền IPS độ ph&acirc;n giải Full HD cho smartphone của m&igrave;nh. M&agrave;n h&igrave;nh được bo cong bốn g&oacute;c v&agrave; được bảo vệ bởi k&iacute;nh cường lực cong 2,5D giống phần lớn smartphone hiện nay.<br />\r\nNokia 7 Plus sẽ thuộc ph&acirc;n kh&uacute;c tầm trung khi được trang bị chip xử l&yacute; Qualcomm Snapdragon 660, RAM 4 GB.</p>\r\n\r\n<p>Model n&agrave;y cũng được trang bị camera k&eacute;p độ ph&acirc;n giải 12 megapixel với một ống g&oacute;c rộng v&agrave; một ống tele ở mặt sau v&agrave; được đặt ở giữa m&aacute;y ngay ph&iacute;a tr&ecirc;n cụm cảm biến v&acirc;n tay. C&ograve;n camera trước của m&aacute;y c&oacute; độ ph&acirc;n giải 16 megapixel. Cả camera trước v&agrave; sau đều sử dụng ống k&iacute;nh do Zeiss sản xuất. M&aacute;y chạy Android 8 v&agrave; pin 3.800 mAh thuộc h&agrave;ng lớn nhất trong ph&acirc;n kh&uacute;c tầm trung.</p>\r\n\r\n<p style=\"text-align:right\"><strong>Nguồn: VNEXpress</strong></p>\r\n', 24, '2018-04-06', '152300066520180328-MG-3733.jpg', 1),
(10, 1, 'Nokia 9 có thể tích hợp ba camera phía sau', '<p>Ba camera của Nokia 9 đảm nhiệm chụp ảnh g&oacute;c rộng, tele v&agrave; đen trắng, đi k&egrave;m ống k&iacute;nh Zeiss v&agrave; đ&egrave;n flash Xenon.</p>\r\n', '<h2>Ba camera của Nokia 9 đảm nhiệm chụp ảnh g&oacute;c rộng, tele v&agrave; đen trắng, đi k&egrave;m ống k&iacute;nh Zeiss v&agrave; đ&egrave;n flash Xenon.</h2>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p>Theo&nbsp;<em>PocketNow</em>, mặt sau Nokia 9 sẽ được trang bị một ống g&oacute;c rộng độ ph&acirc;n giải l&ecirc;n tới 41 megapixel, c&oacute; thể thay đổi khẩu độ f/1.5 v&agrave; f/2.4 tương tự Galaxy S9. Ống k&iacute;nh thứ hai hỗ trợ chụp tele với độ ph&acirc;n giải 20 megapixel. Cả hai đều c&oacute; chống rung quang học (OIS).&nbsp;Ri&ecirc;ng ống thứ hai 9,7 megapixel đảm nhiệm việc chụp ảnh đen trắng.</p>\r\n\r\n<p>Ba camera đều d&ugrave;ng ống Zeiss, zoom quang học 4x v&agrave; đ&egrave;n flash Xenon thay v&igrave; flash LED như đa số c&aacute;c điện thoại kh&aacute;c tr&ecirc;n thị trường.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"assets/images/news/nokia-9-specs-3021-1522711502.png\" /></p>\r\n\r\n<p style=\"text-align:center\">Th&ocirc;ng tin về Nokia 9 bị r&ograve; rỉ.</p>\r\n\r\n<p>Ph&iacute;a trước m&aacute;y t&iacute;ch hợp camera 21 megapixel, khẩu độ f/1.8, c&oacute; đ&egrave;n flash hỗ trợ chụp selfie tốt hơn, đặc biệt trong m&ocirc;i trường thiếu s&aacute;ng.</p>\r\n\r\n<p>Nokia 9 dự kiến được trang bị m&agrave;n h&igrave;nh OLED tương tự Nokia 8 Sirocco, tỷ lệ hiển thị 18:9 độ ph&acirc;n giải QHD, bộ vi xử l&yacute; Snapdragon 845, RAM 8 GB v&agrave; bộ nhớ trong 256 GB, chạy Android O 8.1, chống bụi, nước chuẩn IP68, cảm biến v&acirc;n tay, pin 3.900 mAh v&agrave; hỗ trợ sạc nhanh.</p>\r\n\r\n<p>Trang c&ocirc;ng nghệ&nbsp;<em>Phonearena</em>&nbsp;nhận định, Nokia 9 c&oacute; thể sẽ l&agrave; một trong những thiết bị di động mạnh mẽ nhất thị trường cả về cấu h&igrave;nh lẫn khả năng chụp ảnh. Thậm ch&iacute;, m&aacute;y c&oacute; thể &quot;so&aacute;n ng&ocirc;i&quot; của Huawei P20 Pro - smartphone chụp ảnh đẹp nhất theo thang điểm của DxOMark. Tuy vậy, hiện vẫn chưa r&otilde; thời điểm ra mắt của smartphone n&agrave;y.</p>\r\n\r\n<p style=\"text-align:right\"><strong>Nguồn: VNEXpress</strong></p>\r\n', 24, '2018-04-06', '1523001072nokia02.jpg', 1);
INSERT INTO `bai_viet` (`ma_bai_viet`, `ma_loai_bai`, `ten_bai_viet`, `noi_dung_tom_tat`, `noi_dung_chi_tiet`, `ma_nguoi_dung`, `ngay_dang`, `hinh`, `luot_xem`) VALUES
(11, 1, 'Những lựa chọn smartphone có camera kép hấp dẫn', '<p>C&aacute;c mẫu di động từ Samsung, Apple, Huawei, Nokia hay Xiaomi đều c&oacute; camera k&eacute;p cho khả năng chụp x&oacute;a ph&ocirc;ng như m&aacute;y ảnh chuy&ecirc;n nghiệp.</p>\r\n', '<h2>C&aacute;c mẫu di động từ Samsung, Apple, Huawei, Nokia hay Xiaomi đều c&oacute; camera k&eacute;p cho khả năng chụp x&oacute;a ph&ocirc;ng như m&aacute;y ảnh chuy&ecirc;n nghiệp.</h2>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"assets/images/news/1523001760Galaxy-S9-and-S9-camera-review.jpg\" /></p>\r\n\r\n<p>Galaxy S9+ l&agrave; smartphone c&oacute; camera k&eacute;p được trang&nbsp;<em>DxOMark</em>&nbsp;chấm điểm h&agrave;ng đầu hiện nay (99 điểm). C&aacute;c th&ocirc;ng số về camera của m&aacute;y rất ấn tượng với độ mở lớn nhất tr&ecirc;n smartphone hiện nay l&agrave; f/1.5, ống k&iacute;nh c&oacute; thể thay đổi khẩu độ mở giữa f/1.5 hoặc f/2.4 ph&ugrave; hợp với từng ho&agrave;n cảnh chụp. Giao diện chụp h&igrave;nh của m&aacute;y c&ograve;n c&oacute; thể điều chỉnh độ x&oacute;a mờ trực tiếp tiện dụng. Khi chụp ở chế độ ch&acirc;n dung, m&aacute;y vẫn chụp th&ecirc;m cả ảnh g&oacute;c rộng. Ngo&agrave;i ra, m&aacute;y cũng c&oacute; chế độ quay video si&ecirc;u chậm với tốc độ 960 khung h&igrave;nh mỗi gi&acirc;y.&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"assets/images/news/Apple-iPhone-X-Review-007.jpg\" /></p>\r\n\r\n<p>Đối thủ của Galaxy S9+ ch&iacute;nh l&agrave; iPhone X với c&ugrave;ng cơ chế camera k&eacute;p gi&uacute;p chụp x&oacute;a ph&ocirc;ng như m&aacute;y ảnh DSLR. Từ năm 2017, camera tr&ecirc;n iPhone đ&atilde; c&oacute; điểm đ&aacute;nh gi&aacute; tiến bộ vượt bậc tr&ecirc;n bảng xếp hạng của DxOMark. Tuy c&oacute; m&agrave;u sắc kh&ocirc;ng rực rỡ như Galaxy S9+ nhưng iPhone X c&oacute; khả năng x&oacute;a mờ ph&ocirc;ng nền v&agrave; xử l&yacute; viền chủ thể tự nhi&ecirc;n.&nbsp;<br />\r\nC&ugrave;ng độ ph&acirc;n giải 12 megapixel nhưng một ống k&iacute;nh f/1.8 v&agrave; một c&oacute; độ mở l&agrave; f/2.4. M&aacute;y cũng c&oacute; thể quay video 4K, chống rung quang học, lấy n&eacute;t theo pha.&nbsp;</p>\r\n\r\n<p style=\"text-align: center;\"><img alt=\"\" src=\"assets/images/news/galaxy-note-8-116-1522685692_1200x0.jpg\" /></p>\r\n\r\n<p>Galaxy Note8 l&agrave; smartphone đầu ti&ecirc;n trang bị camera k&eacute;p của Samsung cho t&iacute;nh năng chụp x&oacute;a ph&ocirc;ng. Tuy nhi&ecirc;n, ngay ở sản phẩm đầu ti&ecirc;n, chất lượng ảnh chụp đ&atilde; được đ&aacute;nh gi&aacute; cao với khả năng chụp tối tốt, m&agrave;u sắc rực rỡ, khả năng x&oacute;a mờ ph&ocirc;ng nền tốt v&agrave; được n&acirc;ng cấp th&ecirc;m c&aacute;c thuật to&aacute;n giống chiếc Galaxy S9+ vừa ra mắt.&nbsp;<br />\r\nCả hai camera đều c&oacute; độ ph&acirc;n giải 12 megapixel, độ mở lần lượt l&agrave; f/1.7 v&agrave; f/2.4. M&aacute;y c&oacute; chống rung quang học, lấy n&eacute;t theo pha, chụp HDR.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"assets/images/news/huawei-p20-1522686126_1200x0.jpg\" /></p>\r\n\r\n<p>Bị lu mờ khi ra mắt c&ugrave;ng thời điểm P20 Pro với 3 camera được DxOMark đ&aacute;nh gi&aacute; tốt nhất nhưng P20 vẫn rất đ&aacute;ng ch&uacute; &yacute; với camera k&eacute;p, mức gi&aacute; tốt hơn. Một camera cũng c&oacute; độ ph&acirc;n giải như Galaxy S9+, iPhone X nhưng camera thứ hai l&ecirc;n tới 20 megapixel, tăng độ chi tiết h&igrave;nh ảnh. Độ mở ống k&iacute;nh cũng đồng đều hơn l&agrave; f/1.6 v&agrave; f/1.8. Huawei P20 sử dụng hệ thống quang học của Leica.&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"assets/images/news/a2-1522685627_1200x0.jpg\" /></p>\r\n\r\n<p>Nokia 8 Sirocco l&agrave; một trong những smartphone nổi bật nhất tại MWC 2018 diễn ra th&aacute;ng 2 vừa qua. M&aacute;y c&oacute; camera k&eacute;p ph&iacute;a sau độ ph&acirc;n giải 12 megapixel v&agrave; 13 megapixel, ống k&iacute;nh Carl Zeiss k&egrave;m phần mềm Pro Camera cho ph&eacute;p tự điều chỉnh c&aacute;c th&ocirc;ng số camera, như c&acirc;n bằng trắng, lấy n&eacute;t, ISO, phơi s&aacute;ng... bằng tay. Camera trước chỉ 5 megapixel, ống k&iacute;nh g&oacute;c rộng 84 độ cho chụp &quot;tự sướng&quot;.&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"assets/images/news/00100dportrait-00100-burst20180224071145183-cover-1522685699_1200x0.jpg\" /></p>\r\n\r\n<p>LG V30 ThinQ cũng sở hữu camera k&eacute;p nhưng t&iacute;nh năng đ&aacute;ng ch&uacute; &yacute; nhất về camera kh&ocirc;ng phải l&agrave; chụp x&oacute;a ph&ocirc;ng. Đ&acirc;y l&agrave; một trong những smartphone đầu ti&ecirc;n t&iacute;ch hợp tr&iacute; tuệ nh&acirc;n tạo (AI) của LG. Ba t&iacute;nh năng được h&atilde;ng trang bị cho sản phẩm bao gồm AI CAM, QLens v&agrave; Bright Mode. AI CAM c&oacute; nhiệm vụ ph&acirc;n t&iacute;ch đối tượng trong khung h&igrave;nh chụp v&agrave; đưa ra chế độ ph&ugrave; hợp nhất. C&oacute; t&aacute;m chế độ được hỗ trợ, gồm ch&acirc;n dung, thức ăn, th&uacute; cưng, phong cảnh, đ&ocirc; thị, hoa cỏ, b&igrave;nh minh v&agrave; ho&agrave;ng h&ocirc;n. Mỗi chế độ lại c&oacute; c&aacute;c t&ugrave;y chọn nhỏ hơn gi&uacute;p người d&ugrave;ng t&ugrave;y biến theo sở th&iacute;ch.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"assets/images/news/xiaomi-mi-mix-2s-hands-on-aa-4-of-25-840x473-1522685836_1200x0.jpg\" /></p>\r\n\r\n<p>Xiaomi Mi Mix 2s l&agrave; bản n&acirc;ng cấp thi&ecirc;n về camera của Mix 2 với camera k&eacute;p 12 megapixel (một ống k&iacute;nh g&oacute;c rộng v&agrave; một tele), cảm biến Sony IMX363 với điểm ảnh k&iacute;ch thước 1,4&mu;m, cho ph&eacute;p chụp ảnh thiếu s&aacute;ng tốt hơn so với Mix đời đầu v&agrave; thế hệ thứ hai. Camera m&aacute;y đ&atilde; được DxOMark đ&aacute;nh gi&aacute; 97 điểm, ri&ecirc;ng khả năng chụp ảnh l&ecirc;n tới 101 điểm, ngang bằng iPhone X, cao hơn Google Pixel 2 (99 điểm) nhưng thấp hơn Galaxy S9+ (104 điểm). Khả năng quay phim đạt 88 điểm, thấp hơn 89 điểm của iPhone X.&nbsp;</p>\r\n\r\n<p>Theo đ&aacute;nh gi&aacute; của&nbsp;<em>DxOMark</em>, ngo&agrave;i những ưu điểm về chế độ tự động nhanh v&agrave; ch&iacute;nh x&aacute;c, c&acirc;n bằng trắng hoạt động hiệu quả, ảnh &iacute;t nhiễu, ảnh zoom cận cảnh vẫn đủ chi tiết, m&aacute;y ảnh tr&ecirc;n Mi Mix 2S c&ograve;n hạn chế ở dải tương phản động, chụp thiếu s&aacute;ng chưa thuyết phục, m&agrave;u c&ograve;n nịnh mắt.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"assets/images/news/dsc07267final-100739351-large-1522688288_1200x0.jpg\" /></p>\r\n\r\n<p>iPhone 8 Plus ra mắt c&ugrave;ng thời điểm với iPhone X v&agrave; c&oacute; c&ugrave;ng trang bị camera k&eacute;p. D&ugrave; th&ocirc;ng số thấp hơn &quot;người anh em&quot; một ch&uacute;t nhưng chất lượng ảnh chụp x&oacute;a ph&ocirc;ng của m&aacute;y vẫn rất tốt.&nbsp;<br />\r\nCẩ hai camera c&ugrave;ng độ ph&acirc;n giải 12 megapixel nhưng một ống k&iacute;nh f/1.8 v&agrave; một c&oacute; độ mở l&agrave; f/2.8 (thấp hơn iPhone X l&agrave; f/2.4). C&aacute;c t&iacute;nh năng kh&aacute;c tương tự iPhone X l&agrave; quay video 4K, chụp HDR, lấy n&eacute;t theo pha.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"assets/images/news/oppo-r15-dream-mirror-edition6-1522686126_1200x0.jpg\" /></p>\r\n\r\n<p>Kh&ocirc;ng chỉ c&oacute; m&agrave;n h&igrave;nh tai thỏ, Oppo R15 cũng c&oacute; hệ thống camera k&eacute;p đ&aacute;ng ch&uacute;. M&aacute;y sử dụng hai cảm biến 16 megapixel Sony IMX519 với khẩu độ ống k&iacute;nh f/1/7. M&aacute;y ảnh ph&iacute;a trước c&oacute; độ ph&acirc;n giải chỉ 5 megapixel, kh&ocirc;ng cao như nhiều smartphone kh&aacute;c của Oppo d&ugrave; vẫn được &aacute;p dụng c&ocirc;ng nghệ AI để l&agrave;m đẹp ch&acirc;n dung tự nhi&ecirc;n.</p>\r\n\r\n<p style=\"text-align:right\"><strong>Nguồn: VNEXpress</strong></p>\r\n', 24, '2018-04-06', '1523001760Galaxy-S9-and-S9-camera-review.jpg', 1),
(12, 1, 'iPhone mới có thể dùng màn hình cong, nhiều tính năng độc', '<p>Th&ocirc;ng tin vừa được tờ tin kinh tế t&agrave;i ch&iacute;nh Bloomberg tiết lộ, theo đ&oacute; Apple đang ph&aacute;t triển mẫu iPhone mới v&ocirc; c&ugrave;ng đột ph&aacute;.</p>\r\n', '<h2>Th&ocirc;ng tin vừa được tờ tin kinh tế t&agrave;i ch&iacute;nh Bloomberg tiết lộ, theo đ&oacute; Apple đang ph&aacute;t triển mẫu iPhone mới v&ocirc; c&ugrave;ng đột ph&aacute;.</h2>\r\n\r\n<p>Mark Gurman của&nbsp;<em>Bloomberg</em>&nbsp;cho hay c&aacute;c t&iacute;nh năng &ldquo;kh&aacute;c người&rdquo; của&nbsp;<span style=\"color:#ADD8E6\">iPhone</span>&nbsp;mới sẽ gi&uacute;p ph&acirc;n biệt mẫu smartphone n&agrave;y với phần c&ograve;n lại của thế giới di động.</p>\r\n\r\n<p>Nhận định của&nbsp;<em>Bloomberg</em>&nbsp;đưa ra sau khi&nbsp;<span style=\"color:#ADD8E6\">Apple</span>&nbsp;được cho đ&atilde; đăng k&yacute; bản quyền &ldquo;cấu tr&uacute;c pin dẻo&rdquo; trong tuần trước. Từ cấu tr&uacute;c linh hoạt n&agrave;y, việc Apple ph&aacute;t triển iPhone m&agrave;n h&igrave;nh cong c&oacute; khả năng điều khiển kh&ocirc;ng chạm l&agrave; rất c&oacute; cơ sở.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"assets/images/news/Applepatentflexiblebattery.jpg\" /></p>\r\n\r\n<table align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Cấu tr&uacute;c pin dẻo được đăng k&yacute; bản quyền của Apple.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Ngo&agrave;i ra, c&oacute; khả năng Apple sẽ bỏ &ldquo;tai thỏ&rdquo; tr&ecirc;n iPhone mới do thiết kế n&agrave;y bị c&aacute;c d&ograve;ng Android cấp thấp nh&aacute;i qu&aacute; nhiều.</p>\r\n\r\n<p>Theo nguồn tin th&acirc;n cận với Apple, iPhone mới c&oacute; thể được trang bị hệ thống cử chỉ dạng liệng (hover) n&ecirc;n người d&ugrave;ng kh&ocirc;ng cần chạm v&agrave;o m&agrave;n h&igrave;nh điều khiển trong một số t&igrave;nh huống nhất định.</p>\r\n\r\n<p><em>Bloomberg</em>&nbsp;cho biết Apple sẽ đổi mới c&aacute;ch thức điều khiển iOS tr&ecirc;n iPhone mới, theo đ&oacute; người d&ugrave;ng chỉ cần di chuyển ng&oacute;n tay gần m&agrave;n h&igrave;nh m&agrave; kh&ocirc;ng cần chạm v&agrave;o.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"assets/images/news/microLED.jpeg\" /></p>\r\n\r\n<table align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td>C&ocirc;ng nghệ MicroLED cho ph&eacute;p Apple thiết kế m&agrave;n h&igrave;nh cong to&agrave;n phần.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Apple được cho đang ph&aacute;t triển m&agrave;n h&igrave;nh cong cho iPhone mới kh&aacute;c với thiết kế của Samsung. M&agrave;n h&igrave;nh iPhone sẽ cong dần từ trong ra thay v&igrave; bắt đầu cong từ cạnh m&eacute;p như m&agrave;n h&igrave;nh Samsung.</p>\r\n\r\n<p>Thực tế, m&agrave;n h&igrave;nh OLED của iPhone X được thiết hơi cong d&ugrave; bằng mắt thường rất kh&oacute; nhận ra. Apple muốn tiếp tục ph&aacute;t triển m&agrave;n h&igrave;nh ri&ecirc;ng cho iPhone, iPad v&agrave; Apple Watch mới d&ugrave;ng c&ocirc;ng nghệ MicroLED cho thiết kế cong to&agrave;n m&agrave;n h&igrave;nh m&agrave; kh&ocirc;ng cần tới &ldquo;tai thỏ&rdquo;.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"assets/images/news/1523002363iPhonex.jpg\" /></p>\r\n\r\n<p style=\"text-align:center\"><em>Sau iPhone X, Apple quyết t&acirc;m đổi mới iPhone để kh&aacute;c biệt với phần smartphone c&ograve;n lại. Ảnh:&nbsp;Bloomberg</em></p>\r\n\r\n<p><br />\r\nNhư thường lệ, Apple kh&ocirc;ng b&igrave;nh luận về nhận định v&agrave; tin đồn b&ecirc;n ngo&agrave;i. Người d&ugrave;ng phải chờ tới th&aacute;ng 9 tới để xem iPhone mới c&oacute; được trang bị c&aacute;c t&iacute;nh năng phỏng đo&aacute;n n&agrave;y hay kh&ocirc;ng.Mặc d&ugrave; phức tạp, c&ocirc;ng nghệ m&agrave;n h&igrave;nh MicroLED sẽ gi&uacute;p n&acirc;ng cao đ&aacute;ng kể thời lượng pin của c&aacute;c thiết bị Apple mới. Tuy nhi&ecirc;n, người d&ugrave;ng cũng đừng vội mừng v&igrave; MicroLED sẽ đẩy gi&aacute; sản phẩm Apple l&ecirc;n cao.</p>\r\n\r\n<p style=\"text-align:right\"><strong>Nguồn: Zing.vn</strong></p>\r\n', 24, '2018-04-06', '1523002363iPhonex.jpg', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chi_tiet_hoa_don`
--

CREATE TABLE `chi_tiet_hoa_don` (
  `ma_hoa_don` int(11) NOT NULL,
  `ma_san_pham` int(11) NOT NULL,
  `ten_san_pham` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `so_luong` int(11) NOT NULL,
  `don_gia` int(11) NOT NULL,
  `stt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `chi_tiet_hoa_don`
--

INSERT INTO `chi_tiet_hoa_don` (`ma_hoa_don`, `ma_san_pham`, `ten_san_pham`, `so_luong`, `don_gia`, `stt`) VALUES
(1, 11, 'iPhone 7 Plus 256GB Red', 1, 28190600, 1),
(2, 43, 'Apple iPad Air 2 32GB Wifi Cellular', 2, 12300000, 2),
(3, 3, 'iPhone 7 Plus 128GB Rose Gold', 3, 22167200, 3),
(3, 34, 'Apple iPad 2017 Wifi Cellular 128GB', 1, 13958400, 4),
(4, 22, 'Samsung Galaxy J2', 1, 2340300, 5),
(5, 31, 'Sony Xperia X (F5122)', 2, 6952000, 6),
(5, 28, 'Sony Xperia XZ', 1, 12900000, 7),
(5, 27, 'Sony Xperia XZs', 1, 14304000, 8),
(6, 33, 'Apple iPad 2017 Wifi 32GB', 1, 8850000, 9),
(7, 3, 'iPhone 7 Plus 128GB Rose Gold', 2, 22167200, 10),
(8, 5, 'iPhone 7 256GB', 1, 24490000, 11),
(9, 43, 'Apple iPad Air 2 32GB Wifi Cellular', 1, 12300000, 12),
(10, 21, 'Samsung Galaxy J7 Prime', 1, 5990000, 13),
(11, 34, 'Apple iPad 2017 Wifi Cellular 128GB', 4, 13958400, 14),
(12, 34, 'Apple iPad 2017 Wifi Cellular 128GB', 1, 13958400, 15),
(13, 25, 'Samsung Galaxy S6 edge 32GB', 2, 14900000, 16),
(14, 7, 'iPhone 7 32GB', 1, 18790000, 17);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danh_gia`
--

CREATE TABLE `danh_gia` (
  `ma_danh_gia` int(11) NOT NULL,
  `ma_san_pham` int(11) NOT NULL,
  `ma_nguoi_dung` int(11) NOT NULL,
  `diem` double NOT NULL,
  `ngay` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hinh_chi_tiet`
--

CREATE TABLE `hinh_chi_tiet` (
  `khoa_chinh` int(11) NOT NULL,
  `ma_san_pham` int(11) NOT NULL,
  `ten_hinh` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `hinh_chi_tiet`
--

INSERT INTO `hinh_chi_tiet` (`khoa_chinh`, `ma_san_pham`, `ten_hinh`) VALUES
(23, 45, '1639146719_PS5_Controller.jpg'),
(24, 46, '1639471333_PS4_controller1.jpg'),
(25, 51, '1639490242_Resident_Evil_8(PS5).jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoa_don`
--

CREATE TABLE `hoa_don` (
  `ma_hoa_don` int(11) NOT NULL,
  `ma_khach_hang` int(11) NOT NULL,
  `ngay_dat_hang` date NOT NULL,
  `tong_tien` double NOT NULL,
  `trang_thai` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `hoa_don`
--

INSERT INTO `hoa_don` (`ma_hoa_don`, `ma_khach_hang`, `ngay_dat_hang`, `tong_tien`, `trang_thai`) VALUES
(1, 1, '2016-03-11', 28190600, 2),
(2, 2, '2017-01-17', 24600000, 2),
(3, 3, '2017-03-21', 80460000, 2),
(4, 4, '2017-06-17', 2340300, 2),
(5, 5, '2017-07-17', 41108000, 2),
(6, 6, '2017-07-21', 8850000, 2),
(7, 7, '2017-08-01', 44334400, 2),
(8, 8, '2017-08-01', 24490000, 2),
(9, 9, '2017-09-15', 12300000, 1),
(10, 10, '2017-10-11', 5990000, 1),
(11, 11, '2017-10-11', 55833600, 1),
(12, 12, '2017-10-17', 13958400, 0),
(13, 13, '2017-12-17', 29800000, 0),
(14, 14, '2018-03-17', 18790000, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `home_slider`
--

CREATE TABLE `home_slider` (
  `id` int(11) NOT NULL,
  `hinh` varchar(100) NOT NULL,
  `vi_tri` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `home_slider`
--

INSERT INTO `home_slider` (`id`, `hinh`, `vi_tri`) VALUES
(1, '1.png', 1),
(2, '2.png', 2),
(3, '3.png', 3),
(4, '4.jpg', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khach_hang`
--

CREATE TABLE `khach_hang` (
  `ma_khach_hang` int(11) NOT NULL,
  `ten_khach_hang` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `gioi_tinh` int(11) NOT NULL,
  `dia_chi` varchar(200) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `dien_thoai` int(11) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `khach_hang`
--

INSERT INTO `khach_hang` (`ma_khach_hang`, `ten_khach_hang`, `gioi_tinh`, `dia_chi`, `dien_thoai`, `email`) VALUES
(1, 'Trần Sang', 1, '434. mngg', 45454, 'as7@gmail.com'),
(2, 'Huỳnh Ngọc Khải', 1, '66 mnggaaa', 436734, 'sd557@gmail.com'),
(3, 'lê minh ngọc', 0, '42 hff', 12744, '12@yahoo.com'),
(4, 'Lê Tuấn Anh', 1, '56 hong', 767676, '65@y.com'),
(5, 'Khải Long', 1, '66 kk', 65653, 'kk@gmail.com'),
(6, 'Đỗ Kim Hồng', 0, '51. mngg', 212121, 'ty@gmail.com'),
(7, 'Huỳnh Văn Minh', 1, '65 yyy', 43433232, 'as7@gmail.com'),
(8, 'Đỗ An Hải', 1, '88 xixi', 65565, 'tr11@yahoo.com'),
(9, 'Lê Dũng', 1, '32. mnggaaa', 434322, 'rg7@gmail.com'),
(10, 'Nguyễn Thư', 0, '66 tran', 66667, '77@gmail.com'),
(11, 'Lý Dũng Minh', 1, 'adsgfasdgas', 45454, '47@gmail.com'),
(12, 'Dương Hùng', 1, 're 42', 343466, '17@gmail.com'),
(13, 'Phùng Thiên', 1, '434 gg', 4343434, 'rr@t.com'),
(14, 'Đoàn Minh Thành', 1, '44 rt', 434311, 'as57@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lien_he`
--

CREATE TABLE `lien_he` (
  `ma_lien_he` int(11) NOT NULL,
  `ten_nguoi_gui` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dien_thoai` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `tieu_de` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `noi_dung` varchar(1600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ngay_gui` date NOT NULL,
  `trang_thai` int(11) NOT NULL DEFAULT 0,
  `tra_loi` varchar(5000) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `ma_nguoi_dung` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `lien_he`
--

INSERT INTO `lien_he` (`ma_lien_he`, `ten_nguoi_gui`, `dien_thoai`, `email`, `tieu_de`, `noi_dung`, `ngay_gui`, `trang_thai`, `tra_loi`, `ma_nguoi_dung`) VALUES
(1, 'Đỗ Minh Khanh', 5453243, 'as7@gmail.com', 'No mắt ngày hội trái cây', 'aaaaaaaaaaaaaaaaaaa\r\naaaaaaaafasdfasdf\r\nbbbbbbbbbbbbbbbb', '2017-09-11', 2, 'Cảm ơn bạn thông tin', 1),
(2, 'Le Hồng Ngọc', 65653, '33a7@gmail.com', 'Yêu cầu giao nhận', 'adfasdfasdfasdf\r\nnnnnnnnnnnnn', '2017-09-11', 2, 'aaaaaa\r\n.afafasdf', 1),
(3, 'Đỗ Minh Thai', 23234333, 'thai7@gmail.com', 'LG Gram - Laptop ', 'adsfadsfdasfa\r\nmmmmmmmmmmmmm\r\naaaaaaaaaaaaaaasd', '2017-09-11', 2, 'Đã có hàng', 1),
(4, 'Nguyễn Hưng', 45454, 'ee33@gmail.com', 'Tin nhanh', 'afdasfas aaa\r\nbbbbbbb', '2018-03-22', 2, 'ggggggg\r\nllllllll\r\nlllllllllll', 18),
(5, 'Đỗ Minh Khanh', 65653, 'sdfg7@gmail.com', 'Xem máy mới', 'Xem máy mới Xem máy mới Xem máy mới Xem máy mới', '2018-03-22', 2, 'Thank you', 18),
(6, 'Lê Tài', 1212121, 'taile7@gmail.com', 'dien thoai dep', 'Dien thoai rất đẹp', '2018-03-22', 2, 'Good luck!', 19),
(7, 'nguyễn minh nhật', 434353, 'nhat12@gmail.com', 'ipad mới', 'ipad mới ipad mới ipad mới ipad mới', '2018-03-22', 2, 'Nhanh mua ipad mới', 24),
(8, 'Lâm Tiến', 6565, 'ty7@gmail.com', 'Tim dien thoai tot', 'aaa afdds vnbnv ad', '2018-03-24', 1, '', 0),
(9, 'Đỗ Nhan', 1212121, 'sdfg7@gmail.com', 'LG Gram', 'adsfd adsfasdf gfasd', '2018-03-24', 0, '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loai_bai_viet`
--

CREATE TABLE `loai_bai_viet` (
  `ma_loai_bai` int(11) NOT NULL,
  `ten_loai_bai` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `loai_bai_viet`
--

INSERT INTO `loai_bai_viet` (`ma_loai_bai`, `ten_loai_bai`) VALUES
(1, 'Company Notification'),
(2, 'Technology Notification');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loai_nguoi_dung`
--

CREATE TABLE `loai_nguoi_dung` (
  `ma_loai_nguoi_dung` tinyint(3) NOT NULL,
  `ten_loai_nguoi_dung` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loai_nguoi_dung`
--

INSERT INTO `loai_nguoi_dung` (`ma_loai_nguoi_dung`, `ten_loai_nguoi_dung`) VALUES
(1, 'Quản trị'),
(2, 'Khách'),
(3, 'Kỹ thuật');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoi_dung`
--

CREATE TABLE `nguoi_dung` (
  `ma_nguoi_dung` int(11) NOT NULL,
  `ma_loai_nguoi_dung` tinyint(3) NOT NULL,
  `ho_ten` varchar(100) CHARACTER SET utf8 NOT NULL,
  `ten_dang_nhap` varchar(100) CHARACTER SET utf8 NOT NULL,
  `mat_khau` varchar(100) CHARACTER SET utf8 NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `ngay_dang_ky` date DEFAULT NULL,
  `ngay_dang_nhap_cuoi` date DEFAULT NULL,
  `active` tinyint(4) NOT NULL,
  `birthdate` date NOT NULL,
  `gioi_tinh` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nguoi_dung`
--

INSERT INTO `nguoi_dung` (`ma_nguoi_dung`, `ma_loai_nguoi_dung`, `ho_ten`, `ten_dang_nhap`, `mat_khau`, `email`, `ngay_dang_ky`, `ngay_dang_nhap_cuoi`, `active`, `birthdate`, `gioi_tinh`) VALUES
(1, 1, 'Dương Thanh Như', 'NhưCute', 'e10adc3949ba59abbe56e057f20f883e', 'dtn123@hotmail.com', '2007-11-01', '2021-12-14', 0, '1987-05-16', 0),
(2, 2, 'Đỗ Lâm Thiên', 'thiendo', 'e10adc3949ba59abbe56e057f20f883e', 'dlthien@hcmuns.edu.vn', '2007-11-02', NULL, 0, '1990-06-20', 1),
(3, 2, 'Trương Hữu Quý', 'quytruong', '123456', 'thquy@hcmuns.edu.vn', '2007-11-03', NULL, 0, '1997-07-11', 1),
(4, 2, 'Nguyễn Kiến Thy', 'thykienng', '123456', 'nkthy@hcmuns.edu.vn', '2007-11-04', NULL, 0, '1980-04-03', 0),
(5, 2, 'Phạm Thị Nhung', 'nhungpham', '123456', 'ptnhung@hcmuns.edu.vn', '2007-11-02', NULL, 0, '1989-02-25', 0),
(6, 2, 'Lâm Thị Thu Hồng', 'honglam', '123456', 'ltthong@hcmuns.edu.vn', '2007-11-06', NULL, 0, '1988-12-22', 0),
(7, 2, 'Nguyễn Tiến Dũng', 'dungnguyen', '123456', 'ntd@hcmuns.edu.vn', '2007-11-02', NULL, 0, '1994-05-03', 1),
(8, 2, 'Nguyễn Hữu Thiện', 'huuthien', '123456', 'nhthien@hcmuns.edu.vn', '2007-11-04', NULL, 0, '1999-01-01', 1),
(9, 2, 'Nguyễn Thị Minh Hằng', 'hangnguyen', '123456', 'ntmhang@hcmuns.edu.vn', '2007-11-05', NULL, 0, '1985-11-15', 0),
(10, 2, 'Nguyễn Thị Minh Trang', 'trangnguyen', '123456', 'ntmtrang@hcmuns.edu.vn', '2007-11-06', NULL, 0, '1985-06-06', 0),
(11, 2, 'Nguyễn Thị Phương Lan', 'lannguyen', '123456', 'ntplan@hcmuns.edu.vn', '2007-11-02', NULL, 0, '1995-04-02', 0),
(12, 2, 'Nguyễn Đăng Thái Bình', 'binhthai', '123456', 'ndtbinh@hcmuns.edu.vn', '2007-11-09', NULL, 0, '1991-01-22', 1),
(16, 2, 'quốc cường', 'quoccuong', '01514652cabb16dc2bbe38a631d56f32', 'cqcuong.php@gmail.com', '2011-01-07', '2018-04-06', 1, '1993-05-24', 1),
(18, 1, 'nguyễn long', 'longng', '432c53c04492fd9ae614a6c7c465fa61', 'longng@yahoo.com', '2015-07-07', '2018-04-06', 0, '1984-03-12', 1),
(19, 3, 'Hồng Nguyễn', 'hongng', '35f94b6f66af972a9af26bf2f3f3c6d7', 'hongng@yahoo.com', '2009-02-12', '2018-03-24', 0, '1990-11-23', 0),
(20, 2, 'minh long', 'minhlong', 'c41d2c9aa85cdb6f0027f1c27da1b093', 'minhlong@yahoo.com', '2017-07-13', '2017-07-13', 0, '1996-03-04', 1),
(21, 2, 'nguyentuan', 'nguyentuan', '125bc4f096bf56bd3b5a4fe26b8d8f82', 'nguyentuan@gmi.com', '2017-07-13', '2017-07-13', 0, '1992-10-20', 1),
(22, 2, 'tuan cuong', 'tuancuong', '6ffbe72a9382364c3cdb0005fb870b13', 'saohmai@yl.com', '2017-07-13', '2017-07-13', 0, '1999-09-18', 1),
(23, 2, ' minh l', ' longngll ', '980ac217c6b51e7dc41040bec1edfec8', ' longngf@yahoo.com ', '2017-07-13', '2017-07-13', 0, '2008-03-04', 1),
(24, 3, 'Đỗ An Hải', 'anhaido', '7e1a3a936c89e4fa364e779e7f552a92', 'anhaido@yahoo.com', '2017-07-13', '2018-04-06', 0, '1999-03-31', 1),
(25, 2, 'Lê Minh Quang', 'lequang', '9b855a5167ef71736d7610ec452a5b02', 'lequang@yahoo.com', '2017-07-13', '2017-07-13', 0, '1985-06-30', 1),
(26, 2, 'tuấn hưng', 'tuanhung', '9f3e394d4bcb30796507f9e6b0d78d8c', 'tuanhung@gmail.com', '2017-07-14', '2017-07-14', 0, '1988-08-08', 1),
(27, 2, 'Trần Văn Long', 'tranvanlong', '35db62bf720ffec20fd4e5b3eb417a07', 'chuil@yahoo.com', '2017-07-20', '2017-07-20', 0, '2002-04-19', 1),
(28, 2, 'huynh van định', 'huynhvdinh', '980ac217c6b51e7dc41040bec1edfec8', 'huynhvdinh@y.com', '2017-07-20', '2017-07-28', 0, '2004-04-04', 1),
(30, 2, 'le văn tuan', 'levtuan', '9625c7253eeccd6c5240a6e412b98f6e', 'levtuan@y.com', '2017-07-21', '2017-07-21', 0, '1987-11-16', 1),
(31, 2, 'Huỳnh Minh Khải', 'minhkhai', '06f5bcc1045d43a2bc143ec1ff6b93f3', 'minhkhai@y.com', '2017-07-25', '2017-07-25', 0, '1988-06-05', 1),
(33, 2, 'Huỳnh Ngọc Khải', 'huynhkhai', '24d6ed77b3d02bef8624ca02d36a61f7', 'huynhkhai@y.com', '2017-09-11', '2017-09-11', 0, '1980-12-17', 1),
(35, 2, 'Đo minh Tuấn', 'dotuan', '2c71b3de7e602c5f9327c7e8ce366744', 'dotuan@g.com', '2017-09-11', '2017-09-11', 0, '1987-04-17', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nha_san_xuat`
--

CREATE TABLE `nha_san_xuat` (
  `ma_nha_san_xuat` int(11) NOT NULL,
  `ten_nha_san_xuat` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ma_loai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nha_san_xuat`
--

INSERT INTO `nha_san_xuat` (`ma_nha_san_xuat`, `ten_nha_san_xuat`, `logo`, `ma_loai`) VALUES
(3, 'Sony', '1639145750ps4_logo.jpg', 19),
(19, 'PS4', '1639489351ps4_logo.jpg', 0),
(20, 'PS5', '1639489338ps5_logo.jpg', 0),
(21, 'Controller', '1639489298PS4_controller3.jpg', 0),
(25, 'Sony', '1639145671ps5_logo.jpg', 20),
(27, 'Sony', '1639145861PS5_Controller3.jpg', 21),
(28, 'Capcom', '1639469301Capcom.jpg', 19),
(29, 'Kojima', '1639469383Kojima.png', 19),
(30, 'Konami', '1639469410Konami.jpg', 19),
(31, 'Santa', '1639469423Santa.png', 19),
(32, 'Capcom', '1639470287Capcom.jpg', 20),
(33, 'Kojima', '1639470307Kojima.png', 20),
(34, 'Konami', '1639470323Konami.jpg', 20),
(35, 'Santa', '1639470348Santa.png', 20);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `san_pham`
--

CREATE TABLE `san_pham` (
  `ma_san_pham` int(11) NOT NULL,
  `ma_loai` int(11) NOT NULL,
  `ma_nha_san_xuat` int(11) NOT NULL,
  `ten_san_pham` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `mo_ta` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `tom_tat_thong_so` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `hinh` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `don_gia` float NOT NULL,
  `khuyen_mai` float DEFAULT 0,
  `so_luot_xem` int(11) DEFAULT 1,
  `so_luot_mua` int(11) DEFAULT NULL,
  `ngay_cap_nhat` date NOT NULL,
  `so_luong` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `san_pham`
--

INSERT INTO `san_pham` (`ma_san_pham`, `ma_loai`, `ma_nha_san_xuat`, `ten_san_pham`, `mo_ta`, `tom_tat_thong_so`, `hinh`, `don_gia`, `khuyen_mai`, `so_luot_xem`, `so_luot_mua`, `ngay_cap_nhat`, `so_luong`) VALUES
(45, 20, 25, 'PlayStation 5 / PS5 Standard Edition - US', '<div class=\"product-stats\">\r\n<ul>\r\n	<li><strong>Company name:</strong> <a href=\"http://game.haloshop.vn/sony-playstation-world\">Sony PlayStation</a></li>\r\n	<li><strong>Model:</strong> 14716.</li>\r\n	<li><strong>Warranty</strong>: 12 months</li>\r\n	<li><strong>Free Visa Master Card Payment<br />\r\n	Extra 2% Off When Paying Cash - Bank Transfer</strong></li>\r\n</ul>\r\n</div>\r\n', '<p>Detailed configuration<br />\r\nProduct code PS5 Standard Edition<br />\r\nDetails AMD Zen 2 CPU 8 cores 16 threads, clocked at 3.5GHz<br />\r\nAMD RDNA 2 Architecture GPU, 10.3 TFLOPS Power, 2.23GHz, Ray-Tracing Support<br />\r\n16GB GDDR6 RAM<br />\r\nInternal memory 825GB SSD speed reaches 5.5 GB / s<br />\r\nNew features Ray-Tracing support, 8K 120Hz gaming support, 3D audio surround sound, backward compatible with PS4 games<br />\r\nConnect<br />\r\nUltra HD Blu-ray (66G/100G) BD/DVD drive (66G/100G) ~10xCAV, BD-ROM (25G/50G) ~8xCAV, BD-R/RE (25G/50G) ~8xCAV, DVD ~3.2xCLV<br />\r\nWi-Fi 802.11 a/b/g/n/ac/ax<br />\r\nBluetooth 5.1<br />\r\nHDMI 2.1 connection port, 3 x USB-A, 1 x USB-C<br />\r\nHDMI 2.1 AV Output (4K@120Hz, 8K@60Hz)<br />\r\nEthernet network connection (10BASE-T, 100BASE-TX, 1000BASE-T)<br />\r\nPhysical parameters<br />\r\nProduct color White<br />\r\nDimensions 39 x 10.4 x 26 (cm)<br />\r\nWeight 4.5kg<br />\r\nPower supply 100-240V, 50/60Hz<br />\r\nPower Consumption 350W<br />\r\nWorking temperature 55 - 65 degrees Celsius<br />\r\nOther<br />\r\nFull Kit PS5 Standard Edition, DualSense Controller, USB-C Cord, HDMI Cable, Power Cord, Stand, Instruction Manual</p>\r\n', '1639146719PS5.jpg', 21800000, 0, 0, 0, '2021-10-12', 1000),
(46, 19, 3, 'PlayStation 4 Slim 1TB - Slim 1', '<ul>\r\n	<li><strong>Company name: </strong><a href=\"http://game.haloshop.vn/sony-playstation-world\" style=\"box-sizing: border-box; background-color: transparent; color: rgb(20, 102, 120); text-decoration: underline; touch-action: manipulation; display: inline-flex; -webkit-box-orient: vertical; -webkit-box-direction: normal; flex-direction: column; font-size: 13px;\">Sony PlayStation</a></li>\r\n	<li><strong>Model:</strong><span style=\"font-size:13px\"> 12498S1</span></li>\r\n</ul>\r\n\r\n<p style=\"margin-left: 40px;\"><strong>INSURANCE</strong>: Warranty 12 months<br />\r\n<strong>COMMITMENT &amp; POLICY ONLY</strong><br />\r\nFree delivery within Ho Chi Minh city (*)<br />\r\n<strong>PAYMENT</strong><br />\r\nCash payment, transfer.<br />\r\nFree ATM, Visa, Master card payments.<br />\r\n<strong>INSTALLMENT</strong><br />\r\nInstallment: 10% prepayment + ID card + Household registration / Driver&#39;s license (See details)<br />\r\nInstallment: Use a credit card with 0% interest rate (See details)</p>\r\n', '<p><strong>DETAILS CONFIGURATION</strong><br />\r\n<strong>Product code</strong>&nbsp;&nbsp; CUH-2218B series<br />\r\n<strong>AMD</strong>&nbsp;&nbsp; &quot;Jaguar&quot; x86-64 CPU details, 8 cores<br />\r\n<strong>GPU</strong>&nbsp;&nbsp; 1.84 TFLOPS, AMD Radeon Platform Graphics 8GB GDDR5 RAM<br />\r\n<strong>Internal Memory</strong> 1TB<br />\r\n<strong>CONNECT</strong><br />\r\n<strong>BD/DVD drive (read only)</strong> BD x 6 CAV, DVD x 8 CAV<br />\r\n<strong>I/O Line</strong> Hi-Speed USB Port (USB 3.1 Gen 1) x 2, AUX Port x 1<br />\r\n<strong>AV</strong> HDMI out port (supports 4K/HDR)<br />\r\n<strong>Network connection</strong> Ethernet network cable (10BASE-T, 100BASE-TX, 1000BASE-T)x1 Wi-Fi IEEE 802.11 a/b/g/n/ac, Bluetooth&reg;v4.0<br />\r\n<strong>PHYSICAL PARAMETERS</strong><br />\r\n<strong>Product color</strong> Jet Black<br />\r\n<strong>Dimensions</strong> 265 &times; 39 &times; 288 mm (width x length x height)<br />\r\n<strong>Weight </strong>2.1 kg<br />\r\n<strong>AC</strong> power supply, 100-240V, 50/60Hz<br />\r\n<strong>Power Consumption </strong>Maximum 165W<br />\r\n<strong>Working temperature</strong> 5&ordm;C - 35&ordm;C</p>\r\n', '1639471333PS4.jpg', 9180000, 0, 0, 0, '0000-00-00', 100),
(47, 19, 29, 'Death Stranding - EU', '<ul>\r\n	<li><strong>Company name:</strong><a href=\"http://game.haloshop.vn/sony-entertainment\" style=\"box-sizing: border-box; background-color: transparent; color: rgb(20, 102, 120); text-decoration: underline; touch-action: manipulation; display: inline-flex; -webkit-box-orient: vertical; -webkit-box-direction: normal; flex-direction: column; font-size: 13px;\"> Sony Entertainment</a></li>\r\n	<li><strong>Model:</strong><span style=\"font-size:13px\">P4G770E</span></li>\r\n</ul>\r\n', '<p>GAME INFORMATION<br />\r\nGenre Action Adventure<br />\r\nPS4 . system<br />\r\nESRB Mature 17+<br />\r\nBlood, Intense Violence, Partial Nudity, Strong Language<br />\r\nRelease date 11/8/2019<br />\r\nProducer &amp; Publisher Sony Computer Entertainment</p>\r\n', '1639471854DeathStranding(PS4).jpg', 730000, 0, 0, 0, '0000-00-00', 100),
(48, 19, 29, 'Death Stranding - US', '<p><strong>Model:</strong><span style=\"background-color:rgb(255, 255, 255); color:rgb(51, 51, 51); font-family:nunito sans; font-size:13px\">P4G770</span></p>\r\n', '<p>GAME INFORMATION<br />\r\nGenre Action Adventure<br />\r\nPS4 . system<br />\r\nESRB Mature 17+<br />\r\nBlood, Intense Violence, Partial Nudity, Strong Language<br />\r\nRelease date 11/8/2019<br />\r\nProducer &amp; Publisher Sony Computer Entertainment</p>\r\n', '1639472007DeathStranding(PS4).jpg', 1375000, 0, 0, 0, '0000-00-00', 50),
(49, 19, 29, 'Death Stranding Special Edition - US', '<p><strong>Model:</strong><span style=\"background-color:rgb(255, 255, 255); color:rgb(51, 51, 51); font-family:nunito sans; font-size:13px\">P4G770B</span></p>\r\n', '<p>GAME INFORMATION<br />\r\nGenre Action Adventure<br />\r\nPS4 . system<br />\r\nESRB Mature 17+<br />\r\nBlood, Intense Violence, Partial Nudity, Strong Language<br />\r\nRelease date 11/8/2019<br />\r\nProducer &amp; Publisher Sony Computer Entertainment<br />\r\nThe full set of products includes:<br />\r\nCustom Steelbook Case<br />\r\nSpecial Gold Version of &quot;Ludens Mask&quot; Sunglasses (must be earned in game)<br />\r\nDeath Stranding: Timefall (Original Music from the World of Death Stranding) Digital Album<br />\r\nBehind the Scenes Digital Video</p>\r\n', '1639472377DeathStranding(PS4).jpg', 1950000, 0, 0, 0, '0000-00-00', 50),
(50, 20, 33, 'Death Stranding: Director\'s Cut - US', '<p><strong>Model:</strong><span style=\"background-color:rgb(255, 255, 255); color:rgb(51, 51, 51); font-family:nunito sans; font-size:13px\">P5G081</span></p>\r\n', '<p><strong>GAME INFORMATION</strong><br />\r\nGenre Action Adventure<br />\r\nPS5, PS4, Xbox One<br />\r\nESRB Mature 17+<br />\r\nRelease date September 24, 2021<br />\r\nSony PlayStation Producer &amp; Publisher</p>\r\n', '1639489899DeathStranding(PS5).jpg', 1350000, 10, 0, 0, '0000-00-00', 50),
(51, 20, 32, 'Resident Evil Village Deluxe Edition - US', '<p><strong>Model:</strong><span style=\"background-color:rgb(255, 255, 255); color:rgb(51, 51, 51); font-family:nunito sans; font-size:13px\">P5G040D</span></p>\r\n\r\n<p><strong>FULL DLC:</strong></p>\r\n\r\n<ul>\r\n	<li>Resident Evil Village</li>\r\n	<li>Trauma Pack:<br />\r\n	- Samurai Edge - AW Model-01<br />\r\n	- Resident Evil 7 Found Footage Filter<br />\r\n	- Resident Evil 7 Tape Recorder Save Point<br />\r\n	- Saferoom Music &quot;Go Tell Aunt Rhody&quot;<br />\r\n	- Mr. Everywhere Weapon Charm<br />\r\n	- Unlock &quot;Village of Shadows&quot; Difficulty<br />\r\n	- The Tragedy of Ethan Winters Artwork<br />\r\n	- The Baker Incident Report</li>\r\n</ul>\r\n', '<p>GAME INFORMATION<br />\r\nGenre Action Adventure<br />\r\nPS4, PS5, Xbox One/Series<br />\r\nESRB Mature 17+<br />\r\nBlood and Gore, Intense Violence, Strong Language<br />\r\nRelease date 7/5/2021<br />\r\nProducer &amp; Publisher Capcom</p>\r\n', '1639490242Resident_Evil_8(PS5).jpg', 2080000, 5, 0, 0, '0000-00-00', 50),
(52, 21, 27, 'DualSense Midnight Black - PS5 Wireless Game Controller', '<p><strong>Model:</strong><span style=\"background-color:rgb(255, 255, 255); color:rgb(51, 51, 51); font-family:nunito sans; font-size:13px\">15496</span></p>\r\n', '<p>Different from every year, instead of taking the name DualShock like the previous 4 console generations, Sony chose the name DualSense to express special new technologies integrated on the PlayStation 5 controller - this year&#39;s next-gen machine.</p>\r\n', '1639490384PS5_Controller1.jpg', 1980000, 10, 0, 0, '0000-00-00', 50),
(53, 21, 27, 'Dualshock 4 Wireless Controller - Black Chính Hãng', '<p><strong>Model:</strong><span style=\"background-color:rgb(255, 255, 255); color:rgb(51, 51, 51); font-family:nunito sans; font-size:13px\">1931</span></p>\r\n', '<p>Company name: Sony Entertainment</p>\r\n', '1639490629PS4_controller1.jpg', 1390000, 0, 0, 0, '0000-00-00', 50),
(54, 20, 32, 'Devil May Cry 5 Special Edition - ASIA', '<p><strong>Model:</strong><span style=\"background-color:rgb(255, 255, 255); color:rgb(51, 51, 51); font-family:nunito sans; font-size:13px\">P5G014A</span></p>\r\n', '<p>GAME INFORMATION<br />\r\nGenre Action Adventure<br />\r\nXbox Series, Nintendo Switch, PS4, PS5<br />\r\nESRB Mature 17+<br />\r\nBlood, Partial Nudity, Strong Language, Violence<br />\r\nRelease date 11/12/2020<br />\r\nProducer &amp; Publisher Capcom</p>\r\n', '1639493073Devil-May-Cry(PS5).jpg', 1180000, 0, 0, 0, '0000-00-00', 50);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tag`
--

CREATE TABLE `tag` (
  `tag_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `stt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tag`
--

INSERT INTO `tag` (`tag_name`, `stt`) VALUES
('ps4', 2),
('ps5', 3),
('dvd', 5),
('controller', 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `ma_san_pham` int(11) NOT NULL,
  `ma_nguoi_dung` int(11) NOT NULL,
  `ngay` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bai_viet`
--
ALTER TABLE `bai_viet`
  ADD PRIMARY KEY (`ma_bai_viet`),
  ADD KEY `ma_loai_bai` (`ma_loai_bai`),
  ADD KEY `ma_loai_bai_2` (`ma_loai_bai`);

--
-- Chỉ mục cho bảng `chi_tiet_hoa_don`
--
ALTER TABLE `chi_tiet_hoa_don`
  ADD PRIMARY KEY (`stt`),
  ADD KEY `ma_hoa_don` (`ma_hoa_don`);

--
-- Chỉ mục cho bảng `danh_gia`
--
ALTER TABLE `danh_gia`
  ADD PRIMARY KEY (`ma_danh_gia`),
  ADD KEY `ma_nguoi_dung` (`ma_nguoi_dung`),
  ADD KEY `ma_san_pham` (`ma_san_pham`);

--
-- Chỉ mục cho bảng `hinh_chi_tiet`
--
ALTER TABLE `hinh_chi_tiet`
  ADD PRIMARY KEY (`khoa_chinh`),
  ADD KEY `ma_san_pham` (`ma_san_pham`);

--
-- Chỉ mục cho bảng `hoa_don`
--
ALTER TABLE `hoa_don`
  ADD PRIMARY KEY (`ma_hoa_don`);

--
-- Chỉ mục cho bảng `home_slider`
--
ALTER TABLE `home_slider`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `khach_hang`
--
ALTER TABLE `khach_hang`
  ADD PRIMARY KEY (`ma_khach_hang`);

--
-- Chỉ mục cho bảng `lien_he`
--
ALTER TABLE `lien_he`
  ADD PRIMARY KEY (`ma_lien_he`);

--
-- Chỉ mục cho bảng `loai_bai_viet`
--
ALTER TABLE `loai_bai_viet`
  ADD PRIMARY KEY (`ma_loai_bai`);

--
-- Chỉ mục cho bảng `loai_nguoi_dung`
--
ALTER TABLE `loai_nguoi_dung`
  ADD PRIMARY KEY (`ma_loai_nguoi_dung`);

--
-- Chỉ mục cho bảng `nguoi_dung`
--
ALTER TABLE `nguoi_dung`
  ADD PRIMARY KEY (`ma_nguoi_dung`),
  ADD KEY `ma_loai_nguoi_dung` (`ma_loai_nguoi_dung`);

--
-- Chỉ mục cho bảng `nha_san_xuat`
--
ALTER TABLE `nha_san_xuat`
  ADD PRIMARY KEY (`ma_nha_san_xuat`);

--
-- Chỉ mục cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  ADD PRIMARY KEY (`ma_san_pham`),
  ADD KEY `ma_nha_san_xuat` (`ma_nha_san_xuat`),
  ADD KEY `ma_loai` (`ma_loai`),
  ADD KEY `ma_loai_2` (`ma_loai`);

--
-- Chỉ mục cho bảng `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`stt`);

--
-- Chỉ mục cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ma_san_pham` (`ma_san_pham`,`ma_nguoi_dung`),
  ADD KEY `ma_nguoi_dung` (`ma_nguoi_dung`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bai_viet`
--
ALTER TABLE `bai_viet`
  MODIFY `ma_bai_viet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `chi_tiet_hoa_don`
--
ALTER TABLE `chi_tiet_hoa_don`
  MODIFY `stt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `danh_gia`
--
ALTER TABLE `danh_gia`
  MODIFY `ma_danh_gia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `hinh_chi_tiet`
--
ALTER TABLE `hinh_chi_tiet`
  MODIFY `khoa_chinh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `hoa_don`
--
ALTER TABLE `hoa_don`
  MODIFY `ma_hoa_don` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `home_slider`
--
ALTER TABLE `home_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `khach_hang`
--
ALTER TABLE `khach_hang`
  MODIFY `ma_khach_hang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `lien_he`
--
ALTER TABLE `lien_he`
  MODIFY `ma_lien_he` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `loai_bai_viet`
--
ALTER TABLE `loai_bai_viet`
  MODIFY `ma_loai_bai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `loai_nguoi_dung`
--
ALTER TABLE `loai_nguoi_dung`
  MODIFY `ma_loai_nguoi_dung` tinyint(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `nguoi_dung`
--
ALTER TABLE `nguoi_dung`
  MODIFY `ma_nguoi_dung` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `nha_san_xuat`
--
ALTER TABLE `nha_san_xuat`
  MODIFY `ma_nha_san_xuat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  MODIFY `ma_san_pham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT cho bảng `tag`
--
ALTER TABLE `tag`
  MODIFY `stt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `bai_viet`
--
ALTER TABLE `bai_viet`
  ADD CONSTRAINT `fk_bai_viet_loai_bai` FOREIGN KEY (`ma_loai_bai`) REFERENCES `loai_bai_viet` (`ma_loai_bai`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `chi_tiet_hoa_don`
--
ALTER TABLE `chi_tiet_hoa_don`
  ADD CONSTRAINT `fk_hd` FOREIGN KEY (`ma_hoa_don`) REFERENCES `hoa_don` (`ma_hoa_don`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `danh_gia`
--
ALTER TABLE `danh_gia`
  ADD CONSTRAINT `dg_sp` FOREIGN KEY (`ma_san_pham`) REFERENCES `san_pham` (`ma_san_pham`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `dg_user` FOREIGN KEY (`ma_nguoi_dung`) REFERENCES `nguoi_dung` (`ma_nguoi_dung`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `hinh_chi_tiet`
--
ALTER TABLE `hinh_chi_tiet`
  ADD CONSTRAINT `fk_so_hinh_ct` FOREIGN KEY (`ma_san_pham`) REFERENCES `san_pham` (`ma_san_pham`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `nguoi_dung`
--
ALTER TABLE `nguoi_dung`
  ADD CONSTRAINT `fk_user` FOREIGN KEY (`ma_loai_nguoi_dung`) REFERENCES `loai_nguoi_dung` (`ma_loai_nguoi_dung`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  ADD CONSTRAINT `fk_nsx_sp` FOREIGN KEY (`ma_nha_san_xuat`) REFERENCES `nha_san_xuat` (`ma_nha_san_xuat`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `user_w` FOREIGN KEY (`ma_nguoi_dung`) REFERENCES `nguoi_dung` (`ma_nguoi_dung`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `w_pr` FOREIGN KEY (`ma_san_pham`) REFERENCES `san_pham` (`ma_san_pham`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
