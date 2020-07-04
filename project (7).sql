-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Jul 04, 2020 at 06:02 PM
-- Server version: 8.0.18
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `customer_id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `phone` varchar(10) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `street` varchar(100) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `city` varchar(30) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `state` varchar(30) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `zip_code` int(10) DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `order_id` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `phone` varchar(10) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `street` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `city` varchar(30) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `state` varchar(30) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `zip_code` varchar(10) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `total_price` int(11) NOT NULL,
  `promoCode` varchar(10) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `pay` varchar(50) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `order_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `customer_id`, `name`, `phone`, `email`, `street`, `city`, `state`, `zip_code`, `total_price`, `promoCode`, `pay`, `order_date`) VALUES
('10', NULL, 'Nguyễn Văn Trần', '1234567890', 'mmosuper25@gmail.com', 'TDP 4, T.T Quang Phu', 'Huyen Cu MGar', 'Dak Lak', '630000', 40004000, NULL, 'POD', '2020-06-25 15:20:20'),
('3', 4, 'Nguyễn Văn Trần', '123456789', 'mmosuper25@gmail.com', 'TDP 4, T.T Quang Phu', 'Huyen Cu MGar', 'Dak Lak', '630000', 79200000, 'newbie', 'POD', '2020-06-22 03:42:33'),
('4', NULL, 'Nguyễn Văn Trần', '1231231231', 'mmosuper25@gmail.com', 'TDP 4, T.T Quang Phu', 'Huyen Cu MGar', 'Dak Lak', '630000', 17514000, NULL, 'POD', '2020-06-22 03:59:20'),
('5ef4d651a5d0b', NULL, 'Trần Minh', '1231231231', 'mmosuper25@gmail.com', 'TDP 4, T.T Quang Phu', 'Huyen Cu MGar', 'Dak Lak', '630000', 17514000, NULL, 'POD', '2020-06-25 16:52:33'),
('5ef4d6791cd6f', NULL, 'Nguyễn Văn Trần', '1234567890', 'mmosuper25@gmail.com', 'TDP 4, T.T Quang Phu', 'Huyen Cu MGar', 'Dak Lak', '630000', 20014000, NULL, 'POD', '2020-06-25 16:53:13'),
('5ef4dbeca5c0e', NULL, 'Nguyễn Văn Trần', '1231231231', 'mmosuper25@gmail.com', 'TDP 4, T.T Quang Phu', 'Huyen Cu MGar', 'Dak Lak', '630000', 20014000, NULL, 'POD', '2020-06-25 17:16:28'),
('5efde363371ac', NULL, 'ABC', '1234567890', 'mmosuper25@gmail.com', 'TDP 4, T.T Quang Phu', 'Huyen Cu MGar', 'Dak Lak', '630000', 38204000, NULL, 'POD', '2020-07-02 13:38:43');

-- --------------------------------------------------------

--
-- Table structure for table `orders_item`
--

DROP TABLE IF EXISTS `orders_item`;
CREATE TABLE IF NOT EXISTS `orders_item` (
  `order_id` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `idProduct` varchar(30) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `list_price` int(11) NOT NULL,
  `nameProduct` varchar(100) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  PRIMARY KEY (`item_id`),
  KEY `idProduct` (`idProduct`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `orders_item`
--

INSERT INTO `orders_item` (`order_id`, `item_id`, `idProduct`, `quantity`, `list_price`, `nameProduct`) VALUES
('3', 1, '4_A01', 1, 19800000, 'Asus laptop'),
('3', 2, '4_A01', 1, 19800000, 'Asus laptop'),
('4', 3, '4_A02', 1, 19800000, 'Asus laptop1'),
('3', 4, '4_A04', 1, 19800000, 'Asus laptop23'),
('4', 5, '4_A03', 1, 19800000, 'Asus laptop3'),
('3', 6, '4_A06', 1, 19800000, 'Asus laptop5'),
('10', 7, '4_A01', 2, 39980000, 'HP Pavilion Gaming 15'),
('5ef4d651a5d0b', 8, '4_A02', 1, 17490000, 'Acer Nitro 5 AN515'),
('5ef4d6791cd6f', 9, '4_A01', 1, 19990000, 'HP Pavilion Gaming 15'),
('5ef4dbeca5c0e', 10, '4_A01', 1, 19990000, 'HP Pavilion Gaming 15'),
('5efde363371ac', 11, '4_A01', 1, 19990000, 'HP Pavilion Gaming 15'),
('5efde363371ac', 12, '4_A03', 1, 18190000, 'Asus TUF Gaming FX505');

-- --------------------------------------------------------

--
-- Table structure for table `promo_code`
--

DROP TABLE IF EXISTS `promo_code`;
CREATE TABLE IF NOT EXISTS `promo_code` (
  `idPromo` int(11) NOT NULL AUTO_INCREMENT,
  `promoCode` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `promoValue` float(2,1) NOT NULL,
  `totalUse` int(11) DEFAULT NULL,
  `detail` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  PRIMARY KEY (`idPromo`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `promo_code`
--

INSERT INTO `promo_code` (`idPromo`, `promoCode`, `promoValue`, `totalUse`, `detail`) VALUES
(1, 'newbie', 0.2, 1, 'Mã giảm giá 20% cho thành viên mới (Áp dụng 1 lần)'),
(2, 'saigon', 0.1, 2, 'Mã giảm giá 10% (áp dụng 2 lần)');

-- --------------------------------------------------------

--
-- Table structure for table `tbarticles`
--

DROP TABLE IF EXISTS `tbarticles`;
CREATE TABLE IF NOT EXISTS `tbarticles` (
  `id_articles` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `linkImage` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `post` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `author` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id_articles`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbarticles`
--

INSERT INTO `tbarticles` (`id_articles`, `title`, `linkImage`, `post`, `author`, `date`) VALUES
(1, 'Laptop dùng Tiger Lake có thể chơi Battlefield V k', 'image/Image_Product/News/new1.jpg', 'Intel đã cho chúng ta một cái nhìn thoáng qua về hiệu năng của  card đồ họa Xe tích hợp, bằng cách chơi thử Battlefield V trên đó.\r\n\r\nRyan Shrout, Giám đốc chiến lược hiệu suất tại Intel, đã chia sẻ một số cảnh quay video trên Twitter mà bạn sẽ muốn xem.\r\n\r\nNhư có thể thấy từ clip, Shrout đang chơi Battlefield V ở độ phân giải 1080p (Full HD) High Setting (DX11) và tạm gọi là mượt vì chỉ khoảng 30 khung hình mỗi giây (mức thấp nhất gọi là chơi được game).\r\n\r\nTất nhiên, chúng ta phải nhớ là đây là một chiếc laptop nguyên mẫu có chip Tiger Lake. Vì vậy, sản phẩm cuối cùng có thể tốt hơn, hiệu năng của card đồ họa Xe tích hợp sẽ được hưởng lợi từ việc điều chỉnh driver (Shrout cũng đề cập, đây là bản driver chưa hoàn thiện).\r\n\r\nSo với Ryzen thì sao ?\r\n\r\nThật thú vị, Matthew Connatser, biên tập viên của AdoredTV (nguồn của nhiều tin đồn về phần cứng) đã theo dõi bài Twitter này và nói rằng ông đã thử nghiệm Battlefield V với setting tương tự bằng AMD Ryzen 9 4900HS với đồ họa tích hợp Vega 8. Kết quả đạt khoảng 25 khung hình mỗi giây. Vì vậy, CPU Intel Tiger Lake nhanh hơn khoảng 20%, trước khi driver được tối ưu hóa.\r\n\r\nNói tóm lại, đây là một tương lai đầy hứa hẹn về sự tăng vọt về hiệu suất của các máy tính xách tay trong tương lai. Các máy tính xách tay sử dụng các bộ xử lý Tiger Lake dự kiến sẽ ra mắt vào cuối năm 2020.\r\n\r\nNguồn: Techradar', 'amin', '2020-05-29'),
(2, 'ASUS Việt Nam khởi động dự án “TÔI LÀ TÂM ĐIỂM” dà', 'image/Image_Product/News/new1.jpg', 'Tại sự kiện online “Tôi là tâm điểm”, ASUS chính thức khởi động dự án cùng tên dành cho Gen Z với sự đồng hành của 3 đại diện thế hệ trẻ Lena, Seachains và Obito. Tại đây, mọi người đã cùng chia sẻ về thế hệ Gen Z, thế giới quan của các bạn và cách mà các bạn trẻ đã và đang tạo ảnh hưởng đến xu hướng hiện hành mà vẫn giữ được phong cách cá nhân.\r\n\r\nĐồng thời, ASUS giới thiệu VivoBook S13/S14/S15 được thiết kế riêng cho thế hệ Gen Z với 4 tùy chọn màu sắc độc đáo, phím Enter viền neon nổi bật và cấu hình mạnh mẽ. Bộ ba VivoBook S hứa hẹn mang đến cá tính và cảm hứng sáng tạo cho các bạn trẻ trong học tập, công việc.\r\n\r\nÔng Harrison Cheng – Giám đốc Ngành hàng Notebook tiêu dùng ASUS Việt Nam chia sẻ: “Với một thế hệ tâm điểm, hội tụ đủ những yếu tố phong cách – cá tính – tài năng, các bạn Gen Z cần một sân chơi để thỏa sức sáng tạo, cùng chia sẻ và khích lệ để bộc lộ cá tính và sẵn sàng Wow The World. Hiểu được điều đó, ASUS mang đến VivoBook S13/S14/S15 và hơn hết là dự án ‘Tôi là tâm điểm’ với mong muốn được đồng hành cùng Gen Z trên chặng đường tìm kiếm những điều phi thường để trở thành xu hướng, trở thành tâm điểm cuộc sống.”\r\n\r\nDự án “Tôi là tâm điểm”\r\nGen Z, những bạn trẻ trong độ tuổi từ 16-24, hiện đang chiếm 15% dân số Việt Nam. Dù vẫn trong độ tuổi học sinh – sinh viên, cá tính và dấu ấn của các bạn đã và đang trở thành tâm điểm xu hướng. Các bài hát đứng đầu bảng xếp hạng, các Youtuber với hàng trăm ngàn lượt theo dõi, những fashionista và Tiktoker dẫn đầu trào lưu… đa số đều đến từ thế hệ Gen Z.\r\n\r\nTại buổi livestream sự kiện “Tôi là tâm điểm”, đại diện ASUS và 3 đại diện của Gen Z đã trao đổi và nhận thấy rằng đây là thế hệ mang đến nhiều sự thay đổi, đa dạng màu sắc, lối sống, xu hướng cho thế giới nhờ vào chính tài năng của mình.\r\n\r\nLena, Youtuber kiêm ca sĩ – diễn viên Gen Z, đại diện cho Tâm Điểm Phong Cách với sự đa dạng trong phong cách của mình. Dù là phong cách gì – nữ tính, thể thao, phóng khoáng, năng động, sắc màu', 'Huyen', '2020-06-03'),
(5, '', 'image/Image_Product/News/new1.jpg', '', 'Hoa', '0000-00-00'),
(3, 'Chương trình Khuyến mãi “Nhận quà cực chất khi mua', 'image/Image_Product/News/new1.jpg', '1. Thời gian khuyến mãi\r\nChương trình khuyến mãi diễn ra từ 16/06/2020 đến 16/07/2020 hoặc cho đến khi hết quà.\r\nHạn chót đăng ký nhận quà 17/07/2020.\r\n2. Địa điểm khuyến mãi\r\nChương trình khuyến mãi áp dụng cho khách hàng là thành viên.\r\n3. Sản phẩm khuyến mãi\r\nTất cả các mã bo mạch chủ ASUS ROG B550\r\n4. Nội dung khuyến mãi\r\nKhách hàng được nhận 01 áo khoác ROG phiên bản giới hạn khi mua bo mạch chủ ASUS ROG B550 các dòng Strix\r\nKhách hàng được nhận 01 áo thun ROG phiên bản giới hạn khi mua bo mạch chủ ASUS ROG B550 các dòng Prime, TUF.\r\n5. Cách thức nhận quà\r\nClick vào nút “Đăng Ký” trên website chính thức của TechMedia\r\n6. Lưu ý\r\nTrong trường hợp không thể đăng ký trên hệ thống, quý khách hàng vui lòng gửi thông tin nhận quà như bên dưới về địa chỉ Email: dangkyasus@gmail.com với tiêu đề: “[Khuyen mai B550] Thông tin nhận quà bo mạch chủ B550”\r\n– Đính kèm hình ảnh hóa đơn mua hàng, phiếu thu, phiếu xuất kho có dấu xác nhận của TechMedia, thể hiện rõ tên sản phẩm và ngày mua hàng trong thời gian chương trình diễn ra.\r\n– Đính kèm ảnh chụp số S/N của sản phẩm\r\n– Điền “S/N của sản phẩm” vào nội dung Email\r\n– Điền Họ và tên người nhận quà\r\n– Điền Địa chỉ nhận quà\r\n– Điền Số điện thoại liên hệ\r\n– Size áo bạn muốn nhận\r\n– Màu áo muốn nhận', NULL, '2020-06-05'),
(4, '', '', '', 'Hoa', '0000-00-00'),
(6, '', '', '', 'Tan', '0000-00-00'),
(7, '', '', '', 'Nhan', '0000-00-00'),
(8, '', '', '', 'bla bla', '0000-00-00'),
(9, '', '', '', 'bla1', '0000-00-00'),
(10, '', '', '', 'bla2', '0000-00-00'),
(11, '$title', '$linkImage', '$post', '$tacgia', '0000-00-00'),
(12, 'ad', 'TechMediasrculadminlogsimages', 'sad ', ' Admin ', '0000-00-00'),
(13, '12321', 'TechMediasrculadminlogsimages', 'test', 'Admin', '0000-00-00'),
(14, 'Test2', 'TechMediasrculadminlogsimages', '123aa', 'Admin', '0000-00-00'),
(15, '123đSGFD-test', 'TechMediasrculadminlogsimages', 'kgaldjhfgvc', 'Admin', '0000-00-00'),
(16, 'Tổng hợp mã giảm giá khuyến mãi', 'image/Image_Product/News/magiamgia.png', 'Mã giảm giá cho thành viên\r\n\r\n- Mã giảm giá 20% đơn hàng đầu tiên đối với mỗi tài khoản: newbie \r\n      (Mã giảm giá chỉ có hiệu lực sử dụng 1 lần cho mỗi tài khoản)\r\n\r\n\r\n- Mã giảm giá 10% đơn hàng : saigon\r\n  (Mã giảm giá có hiệu lực sử dụng 2 lần cho mỗi tài khoản)', 'Eric', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `tbbanner`
--

DROP TABLE IF EXISTS `tbbanner`;
CREATE TABLE IF NOT EXISTS `tbbanner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `timeUpload` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `tbbanner`
--

INSERT INTO `tbbanner` (`id`, `url`, `timeUpload`) VALUES
(1, 'image/Image_Product/Banner/banner5.jpg', '2020-07-03 17:00:00'),
(2, 'image/Image_Product/Banner/banner1.jpg', '2020-07-02 17:00:00'),
(3, 'image/Image_Product/Banner/banner4.jpg', '2020-07-03 17:00:00'),
(4, 'image/Image_Product/Banner/banner6.png', '2020-07-04 15:21:49');

-- --------------------------------------------------------

--
-- Table structure for table `tbcpulist`
--

DROP TABLE IF EXISTS `tbcpulist`;
CREATE TABLE IF NOT EXISTS `tbcpulist` (
  `idProduct` varchar(30) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `idClass` int(100) NOT NULL,
  `nameProduct` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `rate` float NOT NULL,
  `Manufacturer` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Processor number` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Lithography` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Efficiency` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Number of cores` int(100) DEFAULT NULL,
  `Number of threads` int(100) DEFAULT NULL,
  `Processor base frequency` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Maximum turbo frequency` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Caching` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Power consumption (TDP)` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Memory parameters` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Memory types` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Extended options` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `PCI Express version` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Package specifications` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Socket support` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Thermal solution specification` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `DateIn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `photo1` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `photo2` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `photo3` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `photo4` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `photo5` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  PRIMARY KEY (`idProduct`),
  KEY `tblistclass` (`idClass`),
  KEY `idClass` (`idClass`),
  KEY `idClass_2` (`idClass`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `tbcpulist`
--

INSERT INTO `tbcpulist` (`idProduct`, `idClass`, `nameProduct`, `rate`, `Manufacturer`, `Processor number`, `Lithography`, `Efficiency`, `Number of cores`, `Number of threads`, `Processor base frequency`, `Maximum turbo frequency`, `Caching`, `Power consumption (TDP)`, `Memory parameters`, `Memory types`, `Extended options`, `PCI Express version`, `Package specifications`, `Socket support`, `Thermal solution specification`, `DateIn`, `photo1`, `photo2`, `photo3`, `photo4`, `photo5`) VALUES
('3_A01', 3, 'Ryzen 3 3100', 2490000, 'AMD', 'Ryzen ™ 3 3100', 'TSMC 7nm FinFET', NULL, 4, 8, '3.6 GHz', '3.9 GHz', '16 MB', '65 W', NULL, 'DDR4-3200 MHz', NULL, 'PCIe 4.0', NULL, 'AM4', 'Wraith Stealth', '0000-00-00 00:00:00', 'image/Image_Product/CPU_Image/CPU_Ryzen%203%203100.jpg', 'image/Image_Product/CPU_Image/CPU_Ryzen%203%203100%20(2).jpg', '', '', ''),
('3_A02', 3, 'Athlon 3000G CPU', 1360000, 'AMD', 'AMD Athlon ™ 3000G', '14nm', NULL, 2, 4, '3.5 GHz', NULL, '4MB', '35 W', NULL, NULL, NULL, NULL, NULL, 'AM4', NULL, '0000-00-00 00:00:00', 'image/Image_Product/CPU_Image/CPU_Athlon%203000G.jpg', '', '', '', ''),
('3_A03', 3, 'Ryzen 5 3500 CPU', 3100000, 'AMD', 'AMD Ryzen ™ 5 3500', '7nm', '', 6, 6, '3.6 GHz', '4.1 GHz', '16 MB', '65W', NULL, NULL, NULL, NULL, NULL, 'AM4', NULL, '0000-00-00 00:00:00', 'image/Image_Product/CPU_Image/CPU_Ryzen%205%203500%20(2).jpg', 'image/Image_Product/CPU_Image/CPU_Ryzen%205%203500%20(3).jpg', 'image/Image_Product/CPU_Image/CPU_Ryzen%205%203500.jpg', '', ''),
('3_A04', 3, 'Ryzen 3 3300X', 3060000, 'AMD', 'AMD Ryzen ™ 3 3300X', 'TSMC 7nm FinFET', '', 4, 8, '3.8 GHz', '4.3 GHz', '16 MB', '65 W', NULL, 'DDR4-3200 MHz', NULL, 'PCIe® 4.0', NULL, 'AM4', NULL, '0000-00-00 00:00:00', 'image/Image_Product/CPU_Image/CPU_Ryzen%203%203300X%20(2).jpg', 'image/Image_Product/CPU_Image/CPU_Ryzen%203%203300X.jpg', '', '', ''),
('3_A05', 3, 'Ryzen 5 3500X', 3790000, 'AMD', 'AMD Ryzen ™ 5 3500X', 'TSMC 7nm FinFET', NULL, 6, 6, '3.6 GHz', '4.1 GHz', '32 MB', '65 W', NULL, 'DDR4 3200MHz', NULL, NULL, NULL, 'AM4', NULL, '0000-00-00 00:00:00', 'image/Image_Product/CPU_Image/CPU_Ryzen%205%203500X%20(2).jpg', 'image/Image_Product/CPU_Image/CPU_Ryzen%205%203500X%20(3).jpg', 'image/Image_Product/CPU_Image/CPU_Ryzen%205%203500X.jpg', '', ''),
('3_A06', 3, 'Ryzen 7 3700X', 7500000, 'AMD', 'AMD Ryzen ™ 7 3700X', 'TSMC 7nm FinFET', NULL, 8, 16, '3.6GHz', '4.4GHz', 'L2 Cache 4MB, L3 Cache 32MB', '65W', NULL, 'DDR4 3200MHz', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 'image/Image_Product/CPU_Image/CPU_Ryzen%207%203700X%20(3).jpg', 'image/Image_Product/CPU_Image/CPU_Ryzen%207%203700X%20(2).jpg', 'image/Image_Product/CPU_Image/CPU_Ryzen%207%203700X.jpg', '', ''),
('3_A07', 3, 'Ryzen 9 3900X', 12400000, 'AMD', 'AMD Ryzen 9 3900X', 'TSMC 7nm FinFET', NULL, 12, 24, ' 3.8GHz', NULL, NULL, '105W', NULL, 'DDR4 3200MHz', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 'image/Image_Product/CPU_Image/CPU_Ryzen%209%203900X%20(2).jpg', 'image/Image_Product/CPU_Image/CPU_Ryzen%209%203900X%20(3).jpg', 'image/Image_Product/CPU_Image/CPU_Ryzen%209%203900X.jpg', '', ''),
('3_A08', 3, 'Ryzen 9 3950X', 18900000, 'AMD', 'AMD Ryzen ™ 9 3950X', 'TSMC 7nm FinFET', NULL, 16, 32, '3.5GHz', '4.7GHz', '64MB', '105W', NULL, 'DDR4 3200MHz', NULL, NULL, NULL, 'AM4', NULL, '0000-00-00 00:00:00', 'image/Image_Product/CPU_Image/CPU_Ryzen%209%203950X%20(2).jpg', 'image/Image_Product/CPU_Image/CPU_Ryzen%209%203950X%20(3).jpg', 'image/Image_Product/CPU_Image/CPU_Ryzen%209%203950X.jpg', '', ''),
('3_A09', 3, 'CPU i3-9100F', 1715000, 'Intel', 'Intel®i3-9100F', '14nm', NULL, 4, 4, '3.60Ghz', '4.20Ghz', '6Mb', '65W', NULL, NULL, NULL, '3.0', NULL, 'LGA1151', NULL, '0000-00-00 00:00:00', 'image/Image_Product/CPU_Image/CPU_i3-9100F.jpg', '', '', '', ''),
('3_A10', 3, 'CPU i3-9100', 1745000, 'Intel', 'Intel®i3-9100', '14 nm', NULL, 4, 4, '3.60 GHz', '4.20 GHz', '6 MB Intel® Smart', '65 W', NULL, 'DDR4-2400', NULL, '3.0', NULL, 'FCLGA1151', NULL, '0000-00-00 00:00:00', 'image/Image_Product/CPU_Image/CPU_i3-9100.jpg', '', '', '', ''),
('3_A11', 3, 'CPU Pentium Gold 5500', 1450000, 'Intel', 'Intel®Gold 5500', '14 nm', NULL, 2, 4, '3.70 GHz', NULL, '4 MB SmartCache', '58 W', NULL, 'DDR4-2400', NULL, '3.0', NULL, 'FCLGA1151', 'PCG 2015C (65W)', '0000-00-00 00:00:00', 'image/Image_Product/CPU_Image/CPU_Pentium%20Gold%20G5500.jpg', '', '', '', ''),
('3_A12', 3, 'CPU Pentium Gold 5400', 1450000, 'Intel', 'Intel® Pentium® Series Gold ', '14 nm', NULL, 2, 4, '3.70 GHz', NULL, '4 MB SmartCache', '58 W', NULL, 'DDR4-2400', NULL, '3.0', NULL, 'FCLGA1151', 'PCG 2015C (65W)', '0000-00-00 00:00:00', 'image/Image_Product/CPU_Image/CPU_Pentium%20Gold%20G5400.jpg', '', '', '', ''),
('3_A13', 3, 'CPU i5-9600K', 5050000, 'Intel', 'Intel® Core ™ i5-9600K', '14 nm', NULL, 6, 6, '3.10 GHz', '4.60 GHz', '9 MB Intel® Smart Cache', '65 W', NULL, 'DDR4-2666', NULL, '3.0', NULL, 'FCLGA1151 ', ' PCG 2015C (65W)', '0000-00-00 00:00:00', 'image/Image_Product/CPU_Image/CPU_i5-9600.jpg', 'image/Image_Product/CPU_Image/CPU_i5-9600K.jpg', '', '', ''),
('3_A14', 3, 'CPU I5-9400F', 3860000, 'Intel', 'Intel® Core ™ i5-9400F', '14 nm', NULL, 6, 6, '2.90 GHz', '4.10 GHz', '9 MB Intel® Smart Cache', '65 W', NULL, 'DDR4-2666', NULL, '3.0', NULL, 'FCLGA1151', 'PCG 2015C (65W)', '0000-00-00 00:00:00', 'image/Image_Product/CPU_Image/CPU_i5_9400F.jpg', '', '', '', ''),
('3_A15', 3, 'CPU i5-9600KF', 4600000, 'Intel', 'Intel® Core ™ i5-9600KF', '14 nm', NULL, 6, 6, '3.70 GHz', '4.60 GHz', '9 MB Intel® Smart Cache', '95 W', NULL, 'DDR4-2666', NULL, '3.0', NULL, 'FCLGA1151 ', 'PCG 2015D (130W)', '0000-00-00 00:00:00', 'image/Image_Product/CPU_Image/CPU_i5-9600KF.jpg', '', '', '', ''),
('3_A16', 3, 'CPU i7-9700', 8799000, 'Intel', 'Intel® Core ™ i7-9700', '14 nm', NULL, 8, 8, '3.00 GHz', '4.70 GHz', '12 MB SmartCache', '65 W', NULL, 'DDR4-2666', NULL, '3.0', NULL, 'FCLGA1151 ', 'PCG 2015C (65W)', '0000-00-00 00:00:00', 'image/Image_Product/CPU_Image/CPU_i7_9700.jpg', '', '', '', ''),
('3_A17', 3, 'CPU i7-9700F', 7999000, 'Intel', 'Intel® Core ™i7-9700F', '14 nm', NULL, 8, 8, '3.00 GHz', '4.70 GHz', '12 MB SmartCache', '65 W', NULL, 'DDR4-2666', NULL, '3.0 ', NULL, 'FCLGA1151 ', 'PCG 2015C (65W)', '0000-00-00 00:00:00', 'image/Image_Product/CPU_Image/CPU_i7_9700F.jpg', '', '', '', ''),
('3_A18', 3, 'CPU I7-9700KF ', 9690000, 'Intel', 'Intel® Core ™ i7-9700KF ', '14 nm', NULL, 8, 8, '3.60 GHz', '4.90 GHz', ' 12 MB Smart Cache', '95 W', NULL, 'DDR4-2666', NULL, '3.0', NULL, 'FCLGA1151 ', 'PCG 2015D (130W)', '0000-00-00 00:00:00', 'image/Image_Product/CPU_Image/CPU_i7_9700KF.jpg', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbgraphicslist`
--

DROP TABLE IF EXISTS `tbgraphicslist`;
CREATE TABLE IF NOT EXISTS `tbgraphicslist` (
  `idProduct` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `idClass` int(100) NOT NULL,
  `nameProduct` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `rate` int(100) NOT NULL,
  `Graphic processor` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Memory (GB)` int(100) DEFAULT NULL,
  `Bus memory` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Number of source pins` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Memory clock (MHz)` int(100) DEFAULT NULL,
  `Base GPU clock(MHz)` int(100) DEFAULT NULL,
  `GPU Boost Clock(MHz)` int(100) DEFAULT NULL,
  `Gaming Mode (Default) (MHz)` int(100) DEFAULT NULL,
  `Standard communication` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Number of cooling fans` int(100) DEFAULT NULL,
  `Cuda Core` int(100) DEFAULT NULL,
  `The maximum number of screens` int(100) DEFAULT NULL,
  `Maximum export resolution` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Recommended power source` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Supports OpenGL version` float DEFAULT NULL,
  `DVI` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `HDMI` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Displayport` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Support HDCP` float DEFAULT NULL,
  `Card size` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `photo1` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `photo2` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `photo3` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `photo4` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `photo5` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `DateIn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idProduct`),
  KEY `tblistclass` (`idClass`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `tbgraphicslist`
--

INSERT INTO `tbgraphicslist` (`idProduct`, `idClass`, `nameProduct`, `rate`, `Graphic processor`, `Memory (GB)`, `Bus memory`, `Number of source pins`, `Memory clock (MHz)`, `Base GPU clock(MHz)`, `GPU Boost Clock(MHz)`, `Gaming Mode (Default) (MHz)`, `Standard communication`, `Number of cooling fans`, `Cuda Core`, `The maximum number of screens`, `Maximum export resolution`, `Recommended power source`, `Supports OpenGL version`, `DVI`, `HDMI`, `Displayport`, `Support HDCP`, `Card size`, `photo1`, `photo2`, `photo3`, `photo4`, `photo5`, `DateIn`) VALUES
('1_A01', 1, 'card-ASUS-Dual-GeForce-RTX-2060-SUPER-EVO-V2-8GB', 11780000, 'NVIDIA® GeForce RTX 2060 SOPER™', 8, '256-bit', '1x8-pin', 14000, 1470, 1680, 1650, 'PCI Express 3.0', 2, 2176, 4, '7680x4320', '550W', 4.6, '1xDVI-D', '1xHDMI-2.0b', '', 2.2, '24.2x13x5.3cm-2.5 slot', 'image/Image_Product/Graphics_image/card_ASUS_Dual_GeForce_RTX_2060_SUPER_EVO_V2_8GB_1.png', 'image/Image_Product/Graphics_image/card_ASUS_Dual_GeForce_RTX_2060_SUPER_EVO_V2_8GB_2.png', 'image/Image_Product/Graphics_image/card_ASUS_Dual_GeForce_RTX_2060_SUPER_EVO_V2_8GB_3.png', 'image/Image_Product/Graphics_image/card_ASUS_Dual_GeForce_RTX_2060_SUPER_EVO_V2_8GB_4.png', 'image/Image_Product/Graphics_image/card_ASUS_Dual_GeForce_RTX_2060_SUPER_EVO_V2_8GB_5.png', '0000-00-00 00:00:00'),
('1_A02', 1, 'ASUS Phoenix', 4220000, 'NVIDIA® GeForce GTX 1650', 4, '128-bit', '', 8002, 1515, 1695, 1665, 'PCI Express 3.0', 2, 896, 3, '7680x4320', '300W', 4.6, '1 x DVI-D', '1 x HDMI 2.0b', 'v1.4', 2.2, '19 x 11 x 3.8 cm, 2 slot', 'image/Image_Product/Graphics_image/card_ASUS_Phoenix_4gb_1.png', 'image/Image_Product/Graphics_image/card_ASUS_Phoenix_4gb_2.png', 'image/Image_Product/Graphics_image/card_ASUS_Phoenix_4gb_3.png', 'image/Image_Product/Graphics_image/card_ASUS_Phoenix_4gb_4.png', NULL, '0000-00-00 00:00:00'),
('1_A03', 1, 'ASUS ROG Strix GeForce RTX 2080', 47880000, 'NVIDIA® GeForce RTX™ 2080 Ti', 11, '352-bit', '2 x 8-pin', 14800, 1350, 1770, 1740, 'PCI Express 3.0', 3, 4352, 4, '7680x4320', '650W', 4.6, NULL, '2 x HDMI 2.0b', '2 x v1.4', 2.2, '30.5 x 13 x 5.4 cm, 2.7 slot', 'image/Image_Product/Graphics_image/card_ASUS_ROG_Strix_GeForce_RTX_2080_1.png', 'image/Image_Product/Graphics_image/card_ASUS_ROG_Strix_GeForce_RTX_2080_2.png', 'image/Image_Product/Graphics_image/card_ASUS_ROG_Strix_GeForce_RTX_2080_3.png', 'image/Image_Product/Graphics_image/card_ASUS_ROG_Strix_GeForce_RTX_2080_4.png', 'image/Image_Product/Graphics_image/card_ASUS_ROG_Strix_GeForce_RTX_2080_5.png', '0000-00-00 00:00:00'),
('1_A04', 1, 'GALAX GeForce GTX 1650 EX 4GB GDDR5', 4490000, 'GeForce® GTX 1650', 4, '128-bit', '', 8000, 1485, 1680, 1695, 'PCIe 3.0 x16', 2, 896, 3, '7680 x 4320', '300W', 4.6, '1 x DVI-D', '1 x HDMI 2.0b', NULL, 2.2, '181 x 97 x 33 mm', 'image/Image_Product/Graphics_image/card_GALAX_GeForce_GTX_1650_EX_4GB_GDDR5_1.png', 'image/Image_Product/Graphics_image/card_GALAX_GeForce_GTX_1650_EX_4GB_GDDR5_2.png', 'image/Image_Product/Graphics_image/card_GALAX_GeForce_GTX_1650_EX_4GB_GDDR5_3.png', 'image/Image_Product/Graphics_image/card_GALAX_GeForce_GTX_1650_EX_4GB_GDDR5_4.png', 'image/Image_Product/Graphics_image/card_GALAX_GeForce_GTX_1650_EX_4GB_GDDR5_6.png', '0000-00-00 00:00:00'),
('1_A05', 1, 'GALAX GeForce GTX 1650 Super EX 4GB GDDR6', 5290000, 'GeForce® GTX 1650 Super', 4, '128-bit', '', 12000, 1530, 1740, 1755, 'PCIE 3.0', 2, 1280, 3, NULL, '350W', 4.6, '1 x DVI-D', '1 x HDMI 2.0b', NULL, 2.2, '212 x 126 x 41 mm', 'image/Image_Product/Graphics_image/card_GALAX_GeForce_GTX_1650_Super_EX_4GB_GDDR6_1.png', 'image/Image_Product/Graphics_image/card_GALAX_GeForce_GTX_1650_Super_EX_4GB_GDDR6_2.png', 'image/Image_Product/Graphics_image/card_GALAX_GeForce_GTX_1650_Super_EX_4GB_GDDR6_3.png', 'image/Image_Product/Graphics_image/card_GALAX_GeForce_GTX_1650_Super_EX_4GB_GDDR6_4.png', 'image/Image_Product/Graphics_image/card_GALAX_GeForce_GTX_1650_Super_EX_4GB_GDDR6_5.png', '0000-00-00 00:00:00'),
('1_A06', 1, 'Gigabyte GeForce GTX 1650 OC', 4150000, 'GeForce® GTX 1650', 4, '128-Bit', NULL, 8002, NULL, 1710, 1665, 'PCI-E 3.0 x 16', 2, 896, 3, '7680x4320', '300W', NULL, NULL, '2.0b *2', '1.4 *1', NULL, 'L=191 W=112 H=36 mm', 'image/Image_Product/Graphics_image/card_Gigabyte_GeForce_GTX_1650_OC_4GB_1.png', 'image/Image_Product/Graphics_image/card_Gigabyte_GeForce_GTX_1650_OC_4GB_2.png', 'image/Image_Product/Graphics_image/card_Gigabyte_GeForce_GTX_1650_OC_4GB_3.png', 'image/Image_Product/Graphics_image/card_Gigabyte_GeForce_GTX_1650_OC_4GB_4.png', 'image/Image_Product/Graphics_image/card_Gigabyte_GeForce_GTX_1650_OC_4GB_5.png', '0000-00-00 00:00:00'),
('1_A07', 1, 'Gigabyte Radeon RX 570 Gaming', 3290000, 'Radeon RX570', 4, '256-bit', '1 x 8-pin', 7000, 1255, 1255, 1244, 'PCI Express 3.0', 2, NULL, 5, '7680x4320', '450W', 4.5, NULL, 'HDMI 2.0*1', 'v1.4	*3', NULL, 'H=40 L=232 W=116 mm', 'image/Image_Product/Graphics_image/card_Gigabyte_Radeon_RX_570_Gaming_4G_1.png', 'image/Image_Product/Graphics_image/card_Gigabyte_Radeon_RX_570_Gaming_4G_2.png', 'image/Image_Product/Graphics_image/card_Gigabyte_Radeon_RX_570_Gaming_4G_3.png', 'image/Image_Product/Graphics_image/card_Gigabyte_Radeon_RX_570_Gaming_4G_4.png', 'image/Image_Product/Graphics_image/card_Gigabyte_Radeon_RX_570_Gaming_4G_5.png', '0000-00-00 00:00:00'),
('1_A08', 1, 'MSI Geforce GTX 1050Ti 4GT OCV1', 3799000, 'NVIDIA® GeForce® GTX 1050 Ti', 4, '128-bit', NULL, 7008, 1341, 1455, NULL, 'PCI Express 3.0x16', 2, NULL, 3, '2560x1600', '300W', NULL, 'DL-DVI-D', NULL, NULL, NULL, '215 x 112 x 38 mm', 'image/Image_Product/Graphics_image/card_MSI_Geforce_GTX_1050Ti_4GT_OCV1_1.png', 'image/Image_Product/Graphics_image/card_MSI_Geforce_GTX_1050Ti_4GT_OCV1_2.png', 'image/Image_Product/Graphics_image/card_MSI_Geforce_GTX_1050Ti_4GT_OCV1_3.png', 'image/Image_Product/Graphics_image/card_MSI_Geforce_GTX_1050Ti_4GT_OCV1_4.png', 'image/Image_Product/Graphics_image/card_MSI_Geforce_GTX_1050Ti_4GT_OCV1_5.png', '0000-00-00 00:00:00'),
('1_A09', 1, 'Palit GeForce GT 1030 2GB GDDR5', 2060000, 'GeForce® GT 1030', 2, '64-bit', NULL, 6000, 1227, 1468, NULL, 'PCI-E 3.0x4', 2, 384, NULL, '4096x2160@60Hz', '300W', 4.5, 'Single-Link DVI-D', 'HDMI 2.0', NULL, NULL, '145 x 112 x 20mm', 'image/Image_Product/Graphics_image/card_Palit_GeForce_GT_1030_2GB_GDDR5_1.png', 'image/Image_Product/Graphics_image/card_Palit_GeForce_GT_1030_2GB_GDDR5_2.png', 'image/Image_Product/Graphics_image/card_Palit_GeForce_GT_1030_2GB_GDDR5_3.png', 'image/Image_Product/Graphics_image/card_Palit_GeForce_GT_1030_2GB_GDDR5_4.png', 'image/Image_Product/Graphics_image/card_Palit_GeForce_GT_1030_2GB_GDDR5_5.png', '0000-00-00 00:00:00'),
('1_A10', 1, 'Palit GeForce RTX 2060 GamingPro OC 6GB GDDR6', 9490000, 'GeForce® GTX 2060', 6, '192bit', '8-pin x 1', 14000, 1365, 1830, NULL, 'PCI-E 3.0 x 16', 2, 1920, 3, '7680x4320@60Hz', '500W', 4.5, '', 'HDMI 2.0b', NULL, NULL, '235 x 112 x 40 mm', 'image/Image_Product/Graphics_image/card_Palit_GeForce_RTX_2060_GamingPro_OC_6GB_GDDR6_1.png', 'image/Image_Product/Graphics_image/card_Palit_GeForce_RTX_2060_GamingPro_OC_6GB_GDDR6_2.png', 'image/Image_Product/Graphics_image/card_Palit_GeForce_RTX_2060_GamingPro_OC_6GB_GDDR6_3.png', 'image/Image_Product/Graphics_image/card_Palit_GeForce_RTX_2060_GamingPro_OC_6GB_GDDR6_4.png', 'image/Image_Product/Graphics_image/card_Palit_GeForce_RTX_2060_GamingPro_OC_6GB_GDDR6_5.png', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblaptoplist`
--

DROP TABLE IF EXISTS `tblaptoplist`;
CREATE TABLE IF NOT EXISTS `tblaptoplist` (
  `idProduct` varchar(30) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `idClass` int(100) NOT NULL,
  `nameProduct` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `rate` int(100) NOT NULL,
  `CPU technology` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `CPU type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Multiplication / thread` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `L3 Cache` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `CPU speed` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Maximum speed (Turbo)` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Screen size` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Resolution` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Display technology` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `SSD` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `RAM` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Type of RAM` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Number of RAM slots` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `RAM Bus speed` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Maximum RAM support` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Scalable hard drive` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `photo1` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `photo2` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `photo3` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `photo4` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `photo5` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `DateIn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `manufacturer` varchar(50) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  PRIMARY KEY (`idProduct`),
  KEY `tblistclass` (`idClass`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `tblaptoplist`
--

INSERT INTO `tblaptoplist` (`idProduct`, `idClass`, `nameProduct`, `rate`, `CPU technology`, `CPU type`, `Multiplication / thread`, `L3 Cache`, `CPU speed`, `Maximum speed (Turbo)`, `Screen size`, `Resolution`, `Display technology`, `SSD`, `RAM`, `Type of RAM`, `Number of RAM slots`, `RAM Bus speed`, `Maximum RAM support`, `Scalable hard drive`, `photo1`, `photo2`, `photo3`, `photo4`, `photo5`, `DateIn`, `manufacturer`) VALUES
('4_A01', 4, 'HP Pavilion Gaming 15', 19990000, 'AMD Ryzen ™ Processors', 'AMD Ryzen 5 3550H', '4 times 8 threads', '4 MB', '2.10 GHz', '3.70 GHz', '15.6-inch', 'FHD (1920 x 1080) 144Hz', 'IPS anti-glare micro-edge WLED-backlit', '128 GB NVme Pcie 3x4', '8 GB', 'DDR4', '2 slots', '2666 MHz', '32 GB', 'Yes', 'image/Image_Product/GamingLaptop_Image/4_A01_a.png', 'image/Image_Product/GamingLaptop_Image/4_A01_b.png', 'image/Image_Product/GamingLaptop_Image/4_A01_c.png', 'image/Image_Product/GamingLaptop_Image/4_A01_d.png', 'image/Image_Product/GamingLaptop_Image/4_A01_e.png', '0000-00-00 00:00:00', 'HP'),
('4_A02', 4, 'Acer Nitro 5 AN515', 17490000, 'AMD', 'AMD Ryzen 5 - 3550H', '4 times 8 threads', ' 4 MB SmartCache', '2.1 GHz', '3.7 GHz', '15.6-inch', 'Full HD (1920 x 1080)', 'Acer ComfyView IPS LED LCD', '256 GB PCIe NVMe', '8 GB', 'DDR4', ' 2 slots', '2400 MHz', '32 GB', 'Yes', 'image/Image_Product/GamingLaptop_Image/4_A02_a.png', 'image/Image_Product/GamingLaptop_Image/4_A02_b.png', 'image/Image_Product/GamingLaptop_Image/4_A02_c.png', 'image/Image_Product/GamingLaptop_Image/4_A02_d.png', 'image/Image_Product/GamingLaptop_Image/4_A02_e.png', '0000-00-00 00:00:00', 'Acer'),
('4_A03', 4, 'Asus TUF Gaming FX505', 18190000, 'AMD', 'AMD Ryzen 7', '4 times 8 threads', '4 MB SmartCache', '2.1GHz', '3.70 GHz', '15.6-inch', 'FHD (1920 x 1080)', 'IPS 120Hz Non-Glare, Wide View, Narrow Bezel', '512 GB', '8 GB', 'DDR4', '2 slots', '2666 MHz', '32 GB', 'Yes', 'image/Image_Product/GamingLaptop_Image/4_A03_a.png', 'image/Image_Product/GamingLaptop_Image/4_A03_b.png', 'image/Image_Product/GamingLaptop_Image/4_A03_c.png', 'image/Image_Product/GamingLaptop_Image/4_A03_d.png', 'image/Image_Product/GamingLaptop_Image/4_A03_e.png', '0000-00-00 00:00:00', 'Asus'),
('4_A04', 4, 'Asus TUF Gaming A15 FA506II AL012T', 21990000, 'AMD', 'AMD Ryzen 5 - 4600H', '6 times 12 threads', '8 MB', '3.0 GHz', '4.0 GHz', '15.6-inch', 'FHD (1920 x 1080) 16: 9', 'Value IPS-level, 250nits, 1000: 1, 144Hz, 45% NTSC, 65.5% sRGB, anti-glare display', '512GB M.2 NVMe ™ PCIe® 3.0', '8 GB', 'DDR4', '2 slots', '3200 MHz', '32 GB', 'Yes', 'image/Image_Product/GamingLaptop_Image/4_A04_a.png', 'image/Image_Product/GamingLaptop_Image/4_A04_b.png', 'image/Image_Product/GamingLaptop_Image/4_A04_c.png', 'image/Image_Product/GamingLaptop_Image/4_A04_d.png', 'image/Image_Product/GamingLaptop_Image/4_A04_e.png', '0000-00-00 00:00:00', 'Asus'),
('4_A05', 4, 'Acer Predator Triton 500', 49990000, 'Comet Lake - 10th generation', 'Intel® Core ™ i7-10875H', '8 times 16 threads', '16 MB Intel® Smart Cache', '2.30 GHz', '5.10 GHz', '15.6-inch', 'Full HD 1920 x 1080', 'IPS technology.Acer ComfyViewTM LED-backlit TFT LCD,supporting 144Hz,3 ms Overdrive', '512GB PCIe NVMe SSD RAID0', '32 GB', 'DDR4', '2 slots', '2933 MHz', '64 GB', '2 SSD slots to upgrade up to 1TB SSD / 1 slot', 'image/Image_Product/GamingLaptop_Image/4_A05_a.png', 'image/Image_Product/GamingLaptop_Image/4_A05_b.png', 'image/Image_Product/GamingLaptop_Image/4_A05_c.png', 'image/Image_Product/GamingLaptop_Image/4_A05_d.png', 'image/Image_Product/GamingLaptop_Image/4_A05_e.png', '0000-00-00 00:00:00', 'Acer'),
('4_A06', 4, 'Lenovo Ideapad L340', 15800000, 'Coffee Lake - 9th generation', 'Intel® Core ™ i5-9300H', '4 times 8 threads', '8 MB SmartCache', '2.40 GHz', '4.10 GHz', '15.6-inch', 'FHD (1920 x 1080)', 'IPS, antiglare, 250 nits, 45% color gamut', '256GB NVME', '8 GB', 'DDR4', '1 slot', '2666MHz', '16 GB', NULL, 'image/Image_Product/GamingLaptop_Image/4_A06_a.png', 'image/Image_Product/GamingLaptop_Image/4_A06_b.png', 'image/Image_Product/GamingLaptop_Image/4_A06_c.png', 'image/Image_Product/GamingLaptop_Image/4_A06_d.png', 'image/Image_Product/GamingLaptop_Image/4_A06_e.png', '0000-00-00 00:00:00', 'Lenovo'),
('4_A07', 4, 'Lenovo Legion Y730-15ICH', 38000000, 'Coffee Lake - 8th generation', 'Intel® Core ™ \r\n i7 -8750H', '6 times 12 threads', '9 MB SmartCache', '2.20 GHz', '4.10 GHz', '15.6-inch', 'FHD (1920 x 1080)', 'IPS anti-glare, 60 Hz refresh', '256 GB', '16 GB', 'DDR4', '2 slots', '2666MHz', '32 GB', 'Yes', 'image/Image_Product/GamingLaptop_Image/4_A07_a.png', 'image/Image_Product/GamingLaptop_Image/4_A07_b.png', 'image/Image_Product/GamingLaptop_Image/4_A07_c.png', 'image/Image_Product/GamingLaptop_Image/4_A07_d.png', 'image/Image_Product/GamingLaptop_Image/4_A07_e.png', '0000-00-00 00:00:00', 'Lenovo'),
('4_A08', 4, 'Dell G3 15 3590', 28990000, 'Coffee Lake - 9th generation', 'Intel® Core ™ i7-9750H', '6 times 12 threads', '12 MB SmartCache', '2.60 GHz', '4.50 GHz', '15.6-inch', 'FHD (1920 x 1080)', 'Anti-glare LED Backlit Non-touch Narrow Border WVA Display', '512 GB', '2 x 4 GB', 'DDR4', '2 slots', '2666 MHz', '32 GB', 'Yes', 'image/Image_Product/GamingLaptop_Image/4_A08_a.png', 'image/Image_Product/GamingLaptop_Image/4_A08_b.png', 'image/Image_Product/GamingLaptop_Image/4_A08_c.png', 'image/Image_Product/GamingLaptop_Image/4_A08_d.png', 'image/Image_Product/GamingLaptop_Image/4_A08_e.png', '0000-00-00 00:00:00', 'Dell'),
('4_A09', 4, 'Dell Vostro 7570', 30190000, 'Kaby Lake, 7th generation', 'Intel Core i7 -7700HQ', '6 times 12 threads', '12 MB SmartCache', '2.8GHz', 'upto 3.8GHz', '15.6-inch', 'FHD 1920 x 1080', 'IPS Anti-Glare LED Backlit Display', NULL, '8GB', 'DDR4', NULL, '2400MHz', '32GB', 'No', 'image/Image_Product/GamingLaptop_Image/4_A09_a.png', 'image/Image_Product/GamingLaptop_Image/4_A09_b.png', 'image/Image_Product/GamingLaptop_Image/4_A09_c.png', 'image/Image_Product/GamingLaptop_Image/4_A09_d.png', 'image/Image_Product/GamingLaptop_Image/4_A09_e.png', '0000-00-00 00:00:00', 'Dell'),
('4_A10', 4, 'HP Omen', 44990000, 'Coffee Lake - 9th generation', 'Intel® Core ™ i7-9750H', '6 times 12 thread', ' 12 MB Intel® Smart Cache', '2.60 GHz', '4.50 GHz', '15.6-inch', 'FHD (1920 x 1080)', '240 Hz IPS anti-glare micro-edge WLED-backlit', '512 GB PCIe® NVMe ™ M.2', '1 x 16 GB', 'DDR4', '2 slots', '2666 MHz', '32 GB', 'No', 'image/Image_Product/GamingLaptop_Image/4_A10_a.png', 'image/Image_Product/GamingLaptop_Image/4_A10_b.png', 'image/Image_Product/GamingLaptop_Image/4_A10_c.png', 'image/Image_Product/GamingLaptop_Image/4_A10_d.png', 'image/Image_Product/GamingLaptop_Image/4_A10_e.png', '0000-00-00 00:00:00', 'HP');

-- --------------------------------------------------------

--
-- Table structure for table `tblistclass`
--

DROP TABLE IF EXISTS `tblistclass`;
CREATE TABLE IF NOT EXISTS `tblistclass` (
  `idClass` int(100) NOT NULL AUTO_INCREMENT,
  `Class` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  PRIMARY KEY (`idClass`),
  KEY `tbRamList` (`Class`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `tblistclass`
--

INSERT INTO `tblistclass` (`idClass`, `Class`) VALUES
(1, 'Card đồ họa'),
(3, 'CPU'),
(4, 'Laptop'),
(5, 'Loa'),
(6, 'Mainboard'),
(8, 'Màn hình PC'),
(9, 'Ram'),
(10, 'Tai nghe'),
(2, 'Tản nhiệt'),
(7, 'Thùng PC');

-- --------------------------------------------------------

--
-- Table structure for table `tborderlist`
--

DROP TABLE IF EXISTS `tborderlist`;
CREATE TABLE IF NOT EXISTS `tborderlist` (
  `idOrder` int(11) NOT NULL AUTO_INCREMENT,
  `IDUser` int(100) DEFAULT NULL,
  `idProduct` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nameProduct` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Quantity` int(11) NOT NULL,
  `Address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Status` tinyint(1) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `shipfee` int(11) NOT NULL,
  `total` int(11) DEFAULT NULL,
  PRIMARY KEY (`idOrder`),
  UNIQUE KEY `tbusers` (`IDUser`),
  KEY `idProduct` (`idProduct`),
  KEY `nameProduct` (`nameProduct`),
  KEY `Address` (`Address`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tborderlist`
--

INSERT INTO `tborderlist` (`idOrder`, `IDUser`, `idProduct`, `nameProduct`, `Quantity`, `Address`, `Status`, `Date`, `shipfee`, `total`) VALUES
(1, NULL, '4_A01', 'HP Pavilion Gaming 15', 1, '590 CMT8', 0, '2020-06-16 16:06:01', 38000, 20020000);

-- --------------------------------------------------------

--
-- Table structure for table `tbpccaselist`
--

DROP TABLE IF EXISTS `tbpccaselist`;
CREATE TABLE IF NOT EXISTS `tbpccaselist` (
  `idProduct` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `idClass` int(100) NOT NULL,
  `nameProduct` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `rate` int(100) NOT NULL,
  `Hỗ trợ quạt` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Khe tản nhiệt hỗ trợ` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `photo1` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `photo2` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `photo3` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `photo4` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `photo5` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `DateIn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idProduct`),
  KEY `tblistclass` (`idClass`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `tbpccaselist`
--

INSERT INTO `tbpccaselist` (`idProduct`, `idClass`, `nameProduct`, `rate`, `Hỗ trợ quạt`, `Khe tản nhiệt hỗ trợ`, `photo1`, `photo2`, `photo3`, `photo4`, `photo5`, `DateIn`) VALUES
('7_A01', 7, 'Corsair iCUE 465X RGB Smart Case', 3400000, '-Trước :3 x 120mm / 2 x 140mm\r\n-Trên đỉnh :2 x 120mm / 1 x 140mm\r\n-Sau : 1 x 120mm', '-Mặt trước :1 x 280mm / 1 x 360mm\r\n-Mặt trên :1 x 240mm\r\n-Mặt sau :1 x 120mm', 'image/Image_Product/CPU_Case_Image/PCCase_Corsair_1a.png', 'image/Image_Product/CPU_Case_Image/PCCase_Corsair_1b.png', 'image/Image_Product/CPU_Case_Image/PCCase_Corsair_1c.png', 'image/Image_Product/CPU_Case_Image/PCCase_Corsair_1e.png', 'image/Image_Product/CPU_Case_Image/PCCase_Corsair_1d.png', '0000-00-00 00:00:00'),
('7_A02', 7, 'Corsair iCUE 220T RGB Airflow Tempered Glass', 2550000, '-Trước: 3 x 120mm / 2 x 140mm\r\n-Trên đỉnh :2 x 120mm / 2 x 140mm\r\n-Sau :1 x 120mm', NULL, 'image/Image_Product/CPU_Case_Image/PCCase_Corsair_2a.png', 'image/Image_Product/CPU_Case_Image/PCCase_Corsair_2b.png', 'image/Image_Product/CPU_Case_Image/PCCase_Corsair_2c.png', 'image/Image_Product/CPU_Case_Image/PCCase_Corsair_2d.png', 'image/Image_Product/CPU_Case_Image/PCCase_Corsair_2e.png', '0000-00-00 00:00:00'),
('7_A03', 7, 'Cooler Master MasterBox TD500 Mesh White ARGB with controller', 2220000, '-Trước :3x 120mm, 2x 140mm\r\n-Trên đỉnh :3x 120mm, 2x 140mm\r\n-Sau :1x 120mm', '-Mặt trước :120mm, 140mm, 240mm, 280mm, 360mm\r\n-Mặt trên :120mm, 240mm, 360mm, (44mm max motherboard component height)\r\n-Mặt sau :120mm', 'image/Image_Product/CPU_Case_Image/PCCase_CoolerMaster_1a.png', 'image/Image_Product/CPU_Case_Image/PCCase_CoolerMaster_1b.png', 'image/Image_Product/CPU_Case_Image/PCCase_CoolerMaster_1c.png', 'image/Image_Product/CPU_Case_Image/PCCase_CoolerMaster_1d.png', 'image/Image_Product/CPU_Case_Image/PCCase_CoolerMaster_1e.png', '0000-00-00 00:00:00'),
('7_A04', 7, 'Cooler Master MasterBox TD500 Mesh ARGB with controller', 2220000, '-Trước :3x 120mm, 2x 140mm\r\n-Trên đỉnh :3x 120mm, 2x 140mm\r\n-Sau :1x 120mm', '-Mặt trước :120mm, 140mm, 240mm, 280mm, 360mm\r\n-Mặt trên :120mm, 240mm, 360mm, (44mm max motherboard component height)\r\n-Mặt sau :120mm', 'image/Image_Product/CPU_Case_Image/PCCase_CoolerMaster_2a.png', 'image/Image_Product/CPU_Case_Image/PCCase_CoolerMaster_2b.png', 'image/Image_Product/CPU_Case_Image/PCCase_CoolerMaster_2c.png', 'image/Image_Product/CPU_Case_Image/PCCase_CoolerMaster_2d.png', 'image/Image_Product/CPU_Case_Image/PCCase_CoolerMaster_2e.png', '0000-00-00 00:00:00'),
('7_A05', 7, 'Thermaltake H200 TG Snow RGB', 1980000, '-Trước : 3 x 120mm , 2 x 140mm\r\n-Trên đỉnh : 2 x 120mm , 2x 140mm\r\n-Sau :1 x 120mm , 1 x 140mm', '-Mặt trước :1 x 240mm , 1 x 280mm\r\n-Mặt trên :1 x 240mm', 'image/Image_Product/CPU_Case_Image/PCCase_Themaltake_1a.png', 'image/Image_Product/CPU_Case_Image/PCCase_Themaltake_1b.png', 'image/Image_Product/CPU_Case_Image/PCCase_Themaltake_1c.png', 'image/Image_Product/CPU_Case_Image/PCCase_Themaltake_1d.png', 'image/Image_Product/CPU_Case_Image/PCCase_Themaltake_1e.png', '0000-00-00 00:00:00'),
('7_A06', 7, 'Thermaltake H200 TG RGB', 1820000, '-Trước :3 x 120mm , 2 x 140mm\r\n-Trên đỉnh :2 x 120mm , 2x 140mm\r\n-Sau \"1 x 120mm , 1 x 140mm', '-Mặt trước :1 x 240mm , 1 x 280mm\r\n-Mặt trên :1 x 240mm', 'image/Image_Product/CPU_Case_Image/PCCase_Themaltake_2a.png', 'image/Image_Product/CPU_Case_Image/PCCase_Themaltake_2b.png', 'image/Image_Product/CPU_Case_Image/PCCase_Themaltake_2c.png', 'image/Image_Product/CPU_Case_Image/PCCase_Themaltake_2d.png', 'image/Image_Product/CPU_Case_Image/PCCase_Themaltake_2e.png', '0000-00-00 00:00:00'),
('7_A07', 7, 'Xigmatek Aquarius Plus', 1999000, '-Bên hông :Mainboard side: 3 x 120 mm\r\n-Trên đỉnh :3 x 120 mm\r\n-Ở dưới đáy :3 x 120 mm\r\n-Sau :1 x 120 mm', NULL, 'image/Image_Product/CPU_Case_Image/PCCase_Xigmatek_1a.png', 'image/Image_Product/CPU_Case_Image/PCCase_Xigmatek_1b.png', 'image/Image_Product/CPU_Case_Image/PCCase_Xigmatek_1c.png', 'image/Image_Product/CPU_Case_Image/PCCase_Xigmatek_1d.png', 'image/Image_Product/CPU_Case_Image/PCCase_Xigmatek_1e.png', '0000-00-00 00:00:00'),
('7_A08', 7, 'Xigmatek Sirocon III', 888000, '-Trước :3 x 120 mm / 2 x 140mm\r\n-Trên đỉnh :2 x 120 mm / 2 x 140 mm\r\n-Sau :1 x 120 mm', '-Mặt trước :240 mm\r\n-Mặt trên :240 mm\r\n-Mặt sau :120 mm', 'image/Image_Product/CPU_Case_Image/PCCase_Xigmatek_2a.png', 'image/Image_Product/CPU_Case_Image/PCCase_Xigmatek_2b.png', 'image/Image_Product/CPU_Case_Image/PCCase_Xigmatek_2c.png', 'image/Image_Product/CPU_Case_Image/PCCase_Xigmatek_2d.png', 'image/Image_Product/CPU_Case_Image/PCCase_Xigmatek_2e.png', '0000-00-00 00:00:00'),
('7_A09', 7, 'NZXT H510 Elite', 3900000, '-Trước :2x 120 mm / 2x 140 mm\r\n-Trên đỉnh :1x 120 mm / 1x 140 mm\r\n-Sau : 1x 120 mm', '-Trươc: 2x 140 or 2x 120mm with Pull\r\n-Sau: 1x 120mm', 'image/Image_Product/CPU_Case_Image/PCCase_NZXT_1a.png', 'image/Image_Product/CPU_Case_Image/PCCase_NZXT_1b.png', 'image/Image_Product/CPU_Case_Image/PCCase_NZXT_1c.png', 'image/Image_Product/CPU_Case_Image/PCCase_NZXT_1d.png', 'image/Image_Product/CPU_Case_Image/PCCase_NZXT_1e.png', '0000-00-00 00:00:00'),
('7_A10', 7, 'NZXT H510 Matte White', 1890000, '-Trước :2 x 120/ 2 x 140mm\r\n-Trên đỉnh :1x 120mm/ 1x 140mm (1 Aer F120 Case Version included)\r\n-Sau :1x 120mm (1 Aer F120 Case Version included)', '-Mặt trước :2x 140 or 2x 120mm with Pull\r\n-Mặt sau :1x 120mm', 'image/Image_Product/CPU_Case_Image/PCCase_NZXT_2a.png', 'image/Image_Product/CPU_Case_Image/PCCase_NZXT_2b.png', 'image/Image_Product/CPU_Case_Image/PCCase_NZXT_2c.png', 'image/Image_Product/CPU_Case_Image/PCCase_NZXT_2c.png', 'image/Image_Product/CPU_Case_Image/PCCase_NZXT_2e.png', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbradiatorslist`
--

DROP TABLE IF EXISTS `tbradiatorslist`;
CREATE TABLE IF NOT EXISTS `tbradiatorslist` (
  `idProduct` varchar(30) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `idClass` int(100) NOT NULL,
  `nameProduct` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `rate` int(100) NOT NULL,
  `CPU Socket` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Kích thước` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Tốc độ` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Số lượng` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Kích thước vật lý` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Nguồn vào` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Áp suất không khí` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Dòng không khí` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Độ ồn` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Đầu cắm` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Độ bền` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Phân loại tản nhiệt` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `photo1` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `photo2` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `photo3` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `photo4` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `photo5` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `DateIn` timestamp NOT NULL,
  PRIMARY KEY (`idProduct`),
  KEY `tblistclass` (`idClass`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbramlist`
--

DROP TABLE IF EXISTS `tbramlist`;
CREATE TABLE IF NOT EXISTS `tbramlist` (
  `idProduct` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `idClass` int(100) NOT NULL,
  `nameProduct` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `rate` int(11) NOT NULL,
  `Type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Bus (MHz)` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Low` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Standard Ram` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Capacity (GB)` int(11) DEFAULT NULL,
  `Authentication speed (MHz)` int(11) DEFAULT NULL,
  `Certification delay` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `SPD Speed (MHz)` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `SPD Voltage` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Adding fan` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `photo1` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `photo2` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `photo3` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `photo4` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `photo5` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `DateIn` timestamp NOT NULL,
  PRIMARY KEY (`idProduct`),
  KEY `tblistclass` (`idClass`),
  KEY `idClass` (`idClass`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `tbramlist`
--

INSERT INTO `tbramlist` (`idProduct`, `idClass`, `nameProduct`, `rate`, `Type`, `Bus (MHz)`, `Low`, `Standard Ram`, `Capacity (GB)`, `Authentication speed (MHz)`, `Certification delay`, `SPD Speed (MHz)`, `SPD Voltage`, `Adding fan`, `photo1`, `photo2`, `photo3`, `photo4`, `photo5`, `DateIn`) VALUES
('9_A01', 9, 'Corsair Dominator', 3300000, 'Kit', '3000/3200', '15/16', 'DDR4', 16, 3000, '15-17-17-35', '2133', '1.2V', 'no', 'image/Image_Product/Ram_image/ram_Corsair_Dominator_16gb_1.png', 'image/Image_Product/Ram_image/ram_Corsair_Dominator_16gb_2.png', 'image/Image_Product/Ram_image/ram_Corsair_Dominator_16gb_4.png', 'image/Image_Product/Ram_image/ram_Corsair_Dominator_16gb_3.png', 'image/Image_Product/Ram_image/ram_Corsair_Dominator_16gb_5.png', '0000-00-00 00:00:00'),
('9_A02', 9, 'Patriot-Viper-16gb', 3000000, 'Kit', '3000/3200/3600', '15/16/17', 'DDR4', 16, 3000, '16-18-18-38', NULL, '1.20V', NULL, 'image/Image_Product/Ram_image/ram_Patriot_Viper_16gb_1.png', 'image/Image_Product/Ram_image/ram_Patriot_Viper_16gb_2.png', 'image/Image_Product/Ram_image/ram_Patriot_Viper_16gb_3.png', NULL, NULL, '0000-00-00 00:00:00'),
('9_A03', 9, 'TeamGroup-T-Force', 2290000, 'Kit', '3000', '16', 'DDR4', 16, 3000, '16-18-18-38', NULL, '1.20V', NULL, 'image/Image_Product/Ram_image/ram_TeamGroup_T_Force_8gb_1.png', 'image/Image_Product/Ram_image/ram_TeamGroup_T_Force_8gb_2.png', 'image/Image_Product/Ram_image/ram_TeamGroup_T_Force_8gb_4.png', 'image/Image_Product/Ram_image/ram_TeamGroup_T_Force_8gb_3.png', 'image/Image_Product/Ram_image/ram_TeamGroup_T_Force_8gb_5.png', '0000-00-00 00:00:00'),
('9_A04', 9, 'Corsair Vangeance', 1080000, 'Kit', '2400/2666', NULL, 'DDR4', 8, 2666, '18-19-19-39', '2400', '1.2V', NULL, 'image/Image_Product/Ram_image/ram_Corsair_Vengeance_8gb_1.png', 'image/Image_Product/Ram_image/ram_Corsair_Vengeance_8gb_2.png', 'image/Image_Product/Ram_image/ram_Corsair_Vengeance_8gb_3.png', NULL, NULL, '0000-00-00 00:00:00'),
('9_A05', 9, 'GSkill Trident', 3505000, 'Kit', '3000/3200/3600/4266/4600', '16/18/19', 'DDR4', 16, 3000, '16-18-18-38', '2133', '1.20V', NULL, 'image/Image_Product/Ram_image/ram_G.Skill_Trident_16gb_1.png', 'image/Image_Product/Ram_image/ram_G.Skill_Trident_16gb_2.png', 'image/Image_Product/Ram_image/ram_G.Skill_Trident_16gb_3.png', NULL, NULL, '0000-00-00 00:00:00'),
('9_A06', 9, 'Galax', 1850000, 'Single', '2400', '16', 'DDR4', 8, 2400, '16-16-16-36', '2400', '1.2V', NULL, 'image/Image_Product/Ram_image/ram_Galax_Gamer_8gb_1.png', 'image/Image_Product/Ram_image/ram_Galax_Gamer_8gb_2.png', 'image/Image_Product/Ram_image/ram_Galax_Gamer_8gb_3.png', 'image/Image_Product/Ram_image/ram_Galax_Gamer_8gb_5.png', '', '0000-00-00 00:00:00'),
('9_A07', 9, 'Galax HOF', 6190000, 'Kit', '3666/4000', NULL, 'DDR4', 16, 3000, NULL, NULL, '1.20V', NULL, 'image/Image_Product/Ram_image/ram_Galax_Gamer_8gb_6.png', 'image/Image_Product/Ram_image/ram_Galax_Gamer_8gb_7.png', '', 'TechMedia\\image\\Image_Product\\Ram_image\\ ram_gala', 'TechMedia\\image\\Image_Product\\Ram_image\\ ram_galax', '0000-00-00 00:00:00'),
('9_A08', 9, 'GSkill-Aegis', 945000, 'Single', '2666', '19', 'DDR4', 8, 2666, '19-19-19-43', '2666', '1.20V', NULL, 'image/Image_Product/Ram_image/ram_G.Skill_Aegis_8gb_1.png', 'image/Image_Product/Ram_image/ram_G.Skill_Aegis_8gb_2.png', '', '', '', '0000-00-00 00:00:00'),
('9_A09', 9, 'KingMax', 725000, 'Single', '2400/2666/3000', NULL, 'DDR4', 4, 2400, NULL, NULL, '1.20V', NULL, 'image/Image_Product/Ram_image/ram_kingmax_4gb.png', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00'),
('9_A10', 9, 'Patriot-Viper-8gb', 1200000, 'Single', '3000', '16', 'DDR4', 8, 3000, '16-18-18-38', NULL, '1.20V', NULL, 'image/Image_Product/Ram_image/ram_Patriot_Viper_8gb_1.png', 'image/Image_Product/Ram_image/ram_Patriot_Viper_8gb_2.png', 'image/Image_Product/Ram_image/ram_Patriot_Viper_8gb_3.png', 'image/Image_Product/Ram_image/ram_Patriot_Viper_8gb_4.png', 'image/Image_Product/Ram_image/ram_Patriot_Viper_8gb_5.png', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbspeaklist`
--

DROP TABLE IF EXISTS `tbspeaklist`;
CREATE TABLE IF NOT EXISTS `tbspeaklist` (
  `idProduct` varchar(30) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `idClass` int(100) NOT NULL,
  `nameProduct` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `rate` int(100) NOT NULL,
  `Size` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Weight` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Input power` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Driver type` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Frequency response` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Amplifier output power` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Noise signal ratio` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Bluetooth` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Amplifier type` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `RCA Analog` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `photo1` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `photo2` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `photo3` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `photo4` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `photo5` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Usb Type B` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `3.5mm Analog` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `DateIn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idProduct`),
  KEY `tblistclass` (`idClass`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `tbspeaklist`
--

INSERT INTO `tbspeaklist` (`idProduct`, `idClass`, `nameProduct`, `rate`, `Size`, `Weight`, `Input power`, `Driver type`, `Frequency response`, `Amplifier output power`, `Noise signal ratio`, `Bluetooth`, `Amplifier type`, `RCA Analog`, `photo1`, `photo2`, `photo3`, `photo4`, `photo5`, `Usb Type B`, `3.5mm Analog`, `DateIn`) VALUES
('5_A01', 5, 'Audioengine A5', 10000000, 'Left speaker - 10.75 ″ (27cm) x 7 ″ (18cm) x 9 ″ (23cm)\r\nRight speaker - 10.75 ″ (27cm) x 7 ″ (18cm) x 7.75 ″ (20cm)', 'Left speaker: 7kg\r\nRight speaker: 4.4kg', '115 / 240V, 50 / 60Hz automatically adjustable', '5 ″ Kevlar woofers, 3/4 ″ silk dome tweeters', '50Hz-22kHz ± 1.5dB', '150W peak power total (50W RMS / 75W peak per channel), AES', '> 95dB (typical A-weighted)', 'No', 'Dual Class AB monolithic', 'L-R', 'image/Image_Product/Speak_image/loa-audioengineA5-1.jpg', 'image/Image_Product/Speak_image/loa-audioengineA5-2.jpg', NULL, NULL, NULL, 'Yes', 'Yes', '0000-00-00 00:00:00'),
('5_A02', 5, 'Creative Inspire T6300', 2190000, 'Subwoofer: 175.0 x 227.0 x 263 mm (6.89 x 8.94 x 10.35 inches)\r\n     Front Satellite: 86.0 x 177.0 x 93.0 mm (3.39 x 6.97 x 3.66 inches)\r\n     Center & Rear Satellite: 72.0 x 147.0 x 79.0 mm (2.83 x 5.79 x 3.11 inches)', 'Front Satellite: 2 x 274g (2 x 9.7oz)\r\n     Center Satellite: 258g (9.1oz)\r\n     Rear Satellite: 2 x 319g (2 x 11.3oz)\r\n     Subwoofer: 2.4kg (5.3lbs)', NULL, NULL, '50 Hz ~ 20 kHz', NULL, NULL, 'No', NULL, NULL, 'image/Image_Product/Speak_image/loa-inspireT6300-1.jpg', 'image/Image_Product/Speak_image/loa-inspireT6300-2.jpg', 'image/Image_Product/Speak_image/loa-inspireT6300-3.jpg', NULL, NULL, 'Yes', 'Yes', '0000-00-00 00:00:00'),
('5_A03', 5, 'Creative Stage Air', 1290000, '70 x 410 x 78 mm\r\nUSB Cord Length: Approximately 0.5 m, 3.5 mm\r\nCable Cord Length: Approximately 0.5 m', '3.5mm Stereo Cable: 10 g\r\nmicro USB Cable: 10 g, 910 g', NULL, ' 2 x 2.25 ″', '80 Hz ~ 20 kHz', '2 x 5W', '≥ 72 dB', 'Yes', NULL, NULL, 'image/Image_Product/Speak_image/loa-stageAir-1.jpg', 'image/Image_Product/Speak_image/loa-stageAir-2.jpg', 'image/Image_Product/Speak_image/loa-stageAir-3.jpg', 'image/Image_Product/Speak_image/loa-stageAir-4.jpg', 'image/Image_Product/Speak_image/loa-stageAir-5.jpg', 'Yes', 'Yes', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbusers`
--

DROP TABLE IF EXISTS `tbusers`;
CREATE TABLE IF NOT EXISTS `tbusers` (
  `IDUser` int(11) NOT NULL AUTO_INCREMENT,
  `EMAIL` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `PASSWORD` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `ROLE` tinyint(1) NOT NULL,
  `FULLNAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `Address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `PHONE` varchar(10) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `GENDER` tinyint(1) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `PROVINCE` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `JOIN-DATE` timestamp NOT NULL,
  PRIMARY KEY (`IDUser`),
  UNIQUE KEY `IDUser_2` (`IDUser`),
  KEY `ADDRESS` (`Address`),
  KEY `IDUser` (`IDUser`),
  KEY `IDUser_3` (`IDUser`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `tbusers`
--

INSERT INTO `tbusers` (`IDUser`, `EMAIL`, `PASSWORD`, `ROLE`, `FULLNAME`, `Address`, `PHONE`, `GENDER`, `DOB`, `PROVINCE`, `JOIN-DATE`) VALUES
(2, 'thanhtan.scout@gmail.com', '12345678', 1, 'Tráº§n Thanh TÃ¢n', '1234567890', '0987654321', 1, NULL, '', '0000-00-00 00:00:00'),
(3, 'tbtram206@gmail.com', 'tranthanhtanyeu', 0, 'TrÆ°Æ¡ng Báº£o TrÃ¢m', '75 ThÃ nh ThÃ¡i', '0917182943', 0, NULL, '', '0000-00-00 00:00:00'),
(4, 'tranhoa@gmail.com', '12345678', 0, 'Tráº§n HÃ²a', '580 CÃ¡ch Máº¡ng ThÃ¡ng 8', '0909132456', 1, NULL, '', '0000-00-00 00:00:00'),
(5, 'nguyenthiphuonghuyen5755@gmail.com', '12345678', 0, 'Nguyá»…n Thá»‹ PhÆ°Æ¡ng Huyá»n', '580 CMT 8', '0908123456', NULL, NULL, '', '0000-00-00 00:00:00');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbcpulist`
--
ALTER TABLE `tbcpulist`
  ADD CONSTRAINT `class_frk_cpu` FOREIGN KEY (`idClass`) REFERENCES `tblistclass` (`idClass`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `tbgraphicslist`
--
ALTER TABLE `tbgraphicslist`
  ADD CONSTRAINT `class_frk_tbgrapphic` FOREIGN KEY (`idClass`) REFERENCES `tblistclass` (`idClass`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `tblaptoplist`
--
ALTER TABLE `tblaptoplist`
  ADD CONSTRAINT `class_frk_tblaptop` FOREIGN KEY (`idClass`) REFERENCES `tblistclass` (`idClass`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `tbpccaselist`
--
ALTER TABLE `tbpccaselist`
  ADD CONSTRAINT `class_frk_pc_case` FOREIGN KEY (`idClass`) REFERENCES `tblistclass` (`idClass`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `tbradiatorslist`
--
ALTER TABLE `tbradiatorslist`
  ADD CONSTRAINT `class_frk_radiators` FOREIGN KEY (`idClass`) REFERENCES `tblistclass` (`idClass`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `tbramlist`
--
ALTER TABLE `tbramlist`
  ADD CONSTRAINT `class_frk_ram` FOREIGN KEY (`idClass`) REFERENCES `tblistclass` (`idClass`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `tbspeaklist`
--
ALTER TABLE `tbspeaklist`
  ADD CONSTRAINT `class_frk_speak` FOREIGN KEY (`idClass`) REFERENCES `tblistclass` (`idClass`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
