-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Jul 06, 2020 at 09:51 AM
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
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `email` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `nameProduct` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `code` varchar(30) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  KEY `emailCart` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`email`, `nameProduct`, `code`, `quantity`, `price`) VALUES
('tranhoa@gmail.com', 'HP Pavilion Gaming 15', '4_A01', 1, 19990000),
('tranhoa@gmail.com', 'Asus TUF Gaming FX505', '4_A03', 1, 18190000),
('tranhoa@gmail.com', 'Acer Nitro 5 AN515', '4_A02', 1, 17490000);

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
  `customer_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `phone` varchar(10) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `street` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `city` varchar(30) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `state` varchar(30) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `zip_code` varchar(10) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `total_price` int(11) NOT NULL,
  `promoCode` varchar(10) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `pay` varchar(50) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `order_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`order_id`),
  KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `customer_id`, `name`, `phone`, `email`, `street`, `city`, `state`, `zip_code`, `total_price`, `promoCode`, `pay`, `order_date`) VALUES
('10', NULL, 'Nguyễn Văn Trần', '1234567890', 'mmosuper25@gmail.com', 'TDP 4, T.T Quang Phu', 'Huyen Cu MGar', 'Dak Lak', '630000', 40004000, NULL, 'POD', '2020-06-25 15:20:20'),
('3', '4', 'Nguyễn Văn Trần', '123456789', 'mmosuper25@gmail.com', 'TDP 4, T.T Quang Phu', 'Huyen Cu MGar', 'Dak Lak', '630000', 79200000, 'newbie', 'POD', '2020-06-22 03:42:33'),
('4', NULL, 'Nguyễn Văn Trần', '1231231231', 'mmosuper25@gmail.com', 'TDP 4, T.T Quang Phu', 'Huyen Cu MGar', 'Dak Lak', '630000', 17514000, NULL, 'POD', '2020-06-22 03:59:20'),
('5ef4d651a5d0b', NULL, 'Trần Minh', '1231231231', 'mmosuper25@gmail.com', 'TDP 4, T.T Quang Phu', 'Huyen Cu MGar', 'Dak Lak', '630000', 17514000, NULL, 'POD', '2020-06-25 16:52:33'),
('5ef4d6791cd6f', NULL, 'Nguyễn Văn Trần', '1234567890', 'mmosuper25@gmail.com', 'TDP 4, T.T Quang Phu', 'Huyen Cu MGar', 'Dak Lak', '630000', 20014000, NULL, 'POD', '2020-06-25 16:53:13'),
('5ef4dbeca5c0e', NULL, 'Nguyễn Văn Trần', '1231231231', 'mmosuper25@gmail.com', 'TDP 4, T.T Quang Phu', 'Huyen Cu MGar', 'Dak Lak', '630000', 20014000, NULL, 'POD', '2020-06-25 17:16:28'),
('5efde363371ac', NULL, 'ABC', '1234567890', 'mmosuper25@gmail.com', 'TDP 4, T.T Quang Phu', 'Huyen Cu MGar', 'Dak Lak', '630000', 38204000, NULL, 'POD', '2020-07-02 13:38:43'),
('5f02048cd1bcc', NULL, 'Tráº§n HÃ²a', '0909132456', 'tranhoa@gmail.com', '580 CÃ¡ch Máº¡ng ThÃ¡ng 8', '', '', '', 26943000, NULL, NULL, '2020-07-05 16:49:16'),
('5f0205c92e633', NULL, 'Tráº§n HÃ²a', '0909132456', 'tranhoa@gmail.com', '580 CÃ¡ch Máº¡ng ThÃ¡ng 8', 'HCM', '', '630000', 26943000, NULL, NULL, '2020-07-05 16:54:33'),
('5f0206d3a67cd', NULL, 'Tráº§n HÃ²a', '0909132456', 'tranhoa@gmail.com', '580 CÃ¡ch Máº¡ng ThÃ¡ng 8', 'HCM', '', '630000', 26943000, 'saigon', NULL, '2020-07-05 16:58:59'),
('5f020a5974e0b', NULL, 'Tráº§n HÃ²a', '0909132456', 'tranhoa@gmail.com', '580 CÃ¡ch Máº¡ng ThÃ¡ng 8', 'HCM', '', '630000', 3498000, 'saigon', NULL, '2020-07-05 17:14:01');

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
  KEY `idProduct` (`idProduct`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

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
('5efde363371ac', 12, '4_A03', 1, 18190000, 'Asus TUF Gaming FX505'),
('5f02048cd1bcc', 13, '3_A01', 2, 4980000, 'Ryzen 3 3100'),
('5f02048cd1bcc', 14, '3_A12', 1, 1450000, 'CPU Pentium Gold 5400'),
('5f02048cd1bcc', 15, '4_A03', 1, 18190000, 'Asus TUF Gaming FX505'),
('5f02048cd1bcc', 16, '1_A05', 1, 5290000, 'GALAX GeForce GTX 1650 Super EX 4GB GDDR6'),
('5f0205c92e633', 17, '3_A01', 2, 4980000, 'Ryzen 3 3100'),
('5f0205c92e633', 18, '3_A12', 1, 1450000, 'CPU Pentium Gold 5400'),
('5f0205c92e633', 19, '4_A03', 1, 18190000, 'Asus TUF Gaming FX505'),
('5f0205c92e633', 20, '1_A05', 1, 5290000, 'GALAX GeForce GTX 1650 Super EX 4GB GDDR6'),
('5f0206d3a67cd', 21, '3_A01', 2, 4980000, 'Ryzen 3 3100'),
('5f0206d3a67cd', 22, '3_A12', 1, 1450000, 'CPU Pentium Gold 5400'),
('5f0206d3a67cd', 23, '4_A03', 1, 18190000, 'Asus TUF Gaming FX505'),
('5f0206d3a67cd', 24, '1_A05', 1, 5290000, 'GALAX GeForce GTX 1650 Super EX 4GB GDDR6'),
('5f020a5974e0b', 25, '3_A14', 1, 3860000, 'CPU I5-9400F');

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
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_articles`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbarticles`
--

INSERT INTO `tbarticles` (`id_articles`, `title`, `linkImage`, `post`, `author`, `date`) VALUES
(1, 'Laptop dùng Tiger Lake có thể chơi Battlefield V', 'image/Image_Product/News/new1.jpg', 'Intel đã cho chúng ta một cái nhìn thoáng qua về hiệu năng của  card đồ họa Xe tích hợp, bằng cách chơi thử Battlefield V trên đó.\r\n\r\nRyan Shrout, Giám đốc chiến lược hiệu suất tại Intel, đã chia sẻ một số cảnh quay video trên Twitter mà bạn sẽ muốn xem.\r\n\r\nNhư có thể thấy từ clip, Shrout đang chơi Battlefield V ở độ phân giải 1080p (Full HD) High Setting (DX11) và tạm gọi là mượt vì chỉ khoảng 30 khung hình mỗi giây (mức thấp nhất gọi là chơi được game).\r\n\r\nTất nhiên, chúng ta phải nhớ là đây là một chiếc laptop nguyên mẫu có chip Tiger Lake. Vì vậy, sản phẩm cuối cùng có thể tốt hơn, hiệu năng của card đồ họa Xe tích hợp sẽ được hưởng lợi từ việc điều chỉnh driver (Shrout cũng đề cập, đây là bản driver chưa hoàn thiện).\r\n\r\nSo với Ryzen thì sao ?\r\n\r\nThật thú vị, Matthew Connatser, biên tập viên của AdoredTV (nguồn của nhiều tin đồn về phần cứng) đã theo dõi bài Twitter này và nói rằng ông đã thử nghiệm Battlefield V với setting tương tự bằng AMD Ryzen 9 4900HS với đồ họa tích hợp Vega 8. Kết quả đạt khoảng 25 khung hình mỗi giây. Vì vậy, CPU Intel Tiger Lake nhanh hơn khoảng 20%, trước khi driver được tối ưu hóa.\r\n\r\nNói tóm lại, đây là một tương lai đầy hứa hẹn về sự tăng vọt về hiệu suất của các máy tính xách tay trong tương lai. Các máy tính xách tay sử dụng các bộ xử lý Tiger Lake dự kiến sẽ ra mắt vào cuối năm 2020.\r\n\r\nNguồn: Techradar', '', '0000-00-00 00:00:00'),
(2, 'ASUS Việt Nam khởi động dự án “TÔI LÀ TÂM ĐIỂM” dà', 'image/Image_Product/News/new1.jpg', 'Tại sự kiện online “Tôi là tâm điểm”, ASUS chính thức khởi động dự án cùng tên dành cho Gen Z với sự đồng hành của 3 đại diện thế hệ trẻ Lena, Seachains và Obito. Tại đây, mọi người đã cùng chia sẻ về thế hệ Gen Z, thế giới quan của các bạn và cách mà các bạn trẻ đã và đang tạo ảnh hưởng đến xu hướng hiện hành mà vẫn giữ được phong cách cá nhân.\r\n\r\nĐồng thời, ASUS giới thiệu VivoBook S13/S14/S15 được thiết kế riêng cho thế hệ Gen Z với 4 tùy chọn màu sắc độc đáo, phím Enter viền neon nổi bật và cấu hình mạnh mẽ. Bộ ba VivoBook S hứa hẹn mang đến cá tính và cảm hứng sáng tạo cho các bạn trẻ trong học tập, công việc.\r\n\r\nÔng Harrison Cheng – Giám đốc Ngành hàng Notebook tiêu dùng ASUS Việt Nam chia sẻ: “Với một thế hệ tâm điểm, hội tụ đủ những yếu tố phong cách – cá tính – tài năng, các bạn Gen Z cần một sân chơi để thỏa sức sáng tạo, cùng chia sẻ và khích lệ để bộc lộ cá tính và sẵn sàng Wow The World. Hiểu được điều đó, ASUS mang đến VivoBook S13/S14/S15 và hơn hết là dự án ‘Tôi là tâm điểm’ với mong muốn được đồng hành cùng Gen Z trên chặng đường tìm kiếm những điều phi thường để trở thành xu hướng, trở thành tâm điểm cuộc sống.”\r\n\r\nDự án “Tôi là tâm điểm”\r\nGen Z, những bạn trẻ trong độ tuổi từ 16-24, hiện đang chiếm 15% dân số Việt Nam. Dù vẫn trong độ tuổi học sinh – sinh viên, cá tính và dấu ấn của các bạn đã và đang trở thành tâm điểm xu hướng. Các bài hát đứng đầu bảng xếp hạng, các Youtuber với hàng trăm ngàn lượt theo dõi, những fashionista và Tiktoker dẫn đầu trào lưu… đa số đều đến từ thế hệ Gen Z.\r\n\r\nTại buổi livestream sự kiện “Tôi là tâm điểm”, đại diện ASUS và 3 đại diện của Gen Z đã trao đổi và nhận thấy rằng đây là thế hệ mang đến nhiều sự thay đổi, đa dạng màu sắc, lối sống, xu hướng cho thế giới nhờ vào chính tài năng của mình.\r\n\r\nLena, Youtuber kiêm ca sĩ – diễn viên Gen Z, đại diện cho Tâm Điểm Phong Cách với sự đa dạng trong phong cách của mình. Dù là phong cách gì – nữ tính, thể thao, phóng khoáng, năng động, sắc màu', 'Huyen', '2020-06-02 17:00:00'),
(5, 'Chương trình Khuyến mãi “Flash Sale – Giảm Ngay 1 ', 'image/Image_Product/News/new1.jpg', '1. Thời gian khuyến mãi\r\nTừ 26/06/2020 đến 15/07/2020\r\n\r\n2. Địa điểm khuyến mãi\r\nChương trình khuyến mãi áp dụng tại TechMedia\r\n\r\n3. Nội dung khuyến mãi\r\nGiảm thêm 1 triệu đồng cho khách hàng mua Laptop Acer Gaming Nitro 5 AN515-55-70AX (NH.Q7NSV.001) và Laptop Acer Gaming Nitro 5 AN515-55-73VQ (NH.Q7RSV.001) tại TechMedia.\r\n\r\n4. Chú ý\r\n– Chương trình áp dụng cho cả khách hàng online và offline\r\n\r\n– Voucher 1 triệu đồng đã trừ vào giá bán sản phẩm.', 'Hoa', '2020-06-09 17:00:00'),
(3, 'Chương trình Khuyến mãi “Nhận quà cực chất khi mua', 'image/Image_Product/News/new1.jpg', '1. Thời gian khuyến mãi\r\nChương trình khuyến mãi diễn ra từ 16/06/2020 đến 16/07/2020 hoặc cho đến khi hết quà.\r\nHạn chót đăng ký nhận quà 17/07/2020.\r\n2. Địa điểm khuyến mãi\r\nChương trình khuyến mãi áp dụng cho khách hàng là thành viên.\r\n3. Sản phẩm khuyến mãi\r\nTất cả các mã bo mạch chủ ASUS ROG B550\r\n4. Nội dung khuyến mãi\r\nKhách hàng được nhận 01 áo khoác ROG phiên bản giới hạn khi mua bo mạch chủ ASUS ROG B550 các dòng Strix\r\nKhách hàng được nhận 01 áo thun ROG phiên bản giới hạn khi mua bo mạch chủ ASUS ROG B550 các dòng Prime, TUF.\r\n5. Cách thức nhận quà\r\nClick vào nút “Đăng Ký” trên website chính thức của TechMedia\r\n6. Lưu ý\r\nTrong trường hợp không thể đăng ký trên hệ thống, quý khách hàng vui lòng gửi thông tin nhận quà như bên dưới về địa chỉ Email: dangkyasus@gmail.com với tiêu đề: “[Khuyen mai B550] Thông tin nhận quà bo mạch chủ B550”\r\n– Đính kèm hình ảnh hóa đơn mua hàng, phiếu thu, phiếu xuất kho có dấu xác nhận của TechMedia, thể hiện rõ tên sản phẩm và ngày mua hàng trong thời gian chương trình diễn ra.\r\n– Đính kèm ảnh chụp số S/N của sản phẩm\r\n– Điền “S/N của sản phẩm” vào nội dung Email\r\n– Điền Họ và tên người nhận quà\r\n– Điền Địa chỉ nhận quà\r\n– Điền Số điện thoại liên hệ\r\n– Size áo bạn muốn nhận\r\n– Màu áo muốn nhận', 'Hoa Hạ', '2020-06-14 17:00:00'),
(4, 'EK-AIO 360 – Đánh giá nhanh dưới góc nhìn của chuy', 'image/Image_Product/News/EK-AIO-360-3.jpg', 'Đây là một bài viết được soạn lại dựa trên bài Test nhanh của anh Lê Duy Thanh – một trong những chuyên gia hàng đầu về ép xung và thử nghiệm các sản phẩm phần cứng tại Việt Nam.\r\n\r\nTrân trọng cảm ơn anh đã dành thời gian đem đến cho bạn đọc một kết quả chính xác và hiệu năng của mẫu tản nhiệt All in one đang được nhiều người quan tâm này.\r\n\r\nGiới thiệu chung\r\n\r\nVới tên gọi EK-AIO 360, đa phần mọi người đều có thể đoán được đây là sản phẩm tản nhiệt nước all in one với radiator 360mm\r\n\r\nMột chút hình ảnh setup nhanh. Thông tin cụ thể, anh em có thể theo dõi trực tiếp tại website của EKWB hoặc tại website của TechMedia.\r\n\r\nĐể test hiệu năng thì anh Thanh test EK-AIO 360 với Intel Core I9-10900K là 1 con CPU có 10 cores 20 luồng xung turbo boost 5.3GHz và ở default all core là 4.9Ghz . Tùy theo cách thiết lập Power limits của từng main và tùy vào từng con CPU cụ thể thì mức tiêu điện ở mặc định khi stress bằng Prime95 ở chế độ FFTs rơi vào khoảng 280W đến 310W, do đó giải quyết vấn đề nhiệt cho I9-10900k thực sự là một vấn đề khó khăn (nói thêm rằng khó khăn ở đây là tùy vào việc dùng 10900k ở công việc và mức độ nào? nếu như chỉ gaming thì không quá lo lắng, nhưng nếu dùng nó để Render và muốn đảm bảo đủ xung nhịp không bị tụt thì nó lại là 1 câu chuyện khác)\r\nKhông tùy chỉnh bất cứ gì, chỉ ráp lên và để chạy đúng kiểu plug and play, bài test ở đây là stress Prime95 small ffts 20 phút và có quay 1 clip ngắn để anh em có cái nhìn cụ thể trực quan.', 'Hoa', '2020-06-15 17:00:00'),
(6, '5 tựa game đáng cân nhắc trong đợt Steam Summer Sa', 'image/Image_Product/News/top-10-game-xao-xao-lich-su-anh-bia.jpg', 'Steam sale đang diễn ra và sẽ kéo dài đến hết 9/7. Nếu có thể, ai cũng muốn rinh cả núi game về mà chơi dần. Tuy nhiên vì tiền bạc là hữu hạn nên chi tiêu cần hợp lí. Do đó, chúng tôi tổng hợp 5 tựa game hấp dẫn trong danh sách sale của Steam để các bạn lựa chọn dễ hơn.\r\n\r\nSCUM – GIÁ SAU KHI SALE 150.000VND\r\n\r\nĐây là một tựa game sinh tồn, đúng nghĩa là sinh tồn bởi bạn có các chỉ số cần phải theo dõi như đói khát bệnh tật, phải đảm bảo nhân vật của bạn sống sót tốt sau đó mới có thể nhặt vũ khí và chiến đấu. Đúng thế, bạn sẽ phải chiến đấu với các thể loại quái vật và người chơi khác. Nếu bạn là người theo chủ nghĩa hòa bình, bạn có lựa chọn là xây nhà và cố thủ trong đó. Nhưng chạy loanh quanh và khám phá vui hơn nhiều vì trong quá trình đó bạn có thể gặp “zombie”, robot khổng lồ, club disco,…\r\n\r\nTHE HUNTER: CALL OF THE WILD – GIÁ SAU KHI SALE 45.000VND\r\n\r\nNếu bạn chán bị dí loanh quanh trong các tựa game sinh tồn và muốn làm kẻ đi săn để đổi gió thì đây là tựa game cho bạn. Trong game bạn là một thợ săn đúng nghĩa. Theo dõi, lần theo dấu vết và kết thúc con mồi nhanh gọn là những gì cần làm. Môi trường trong game cũng sẽ thay đổi và ảnh hưởng đáng kể đến cuộc đi săn của bạn.\r\n\r\nRED DEAD REDEMPTION II – GIÁ SAU KHI SALE 800.000VND\r\n\r\nTôi hiểu, bỏ ra nhiều tiền như vậy để mua game nghe có vẻ hơi bất hợp lí. Nhưng người xưa có câu “tiền nào của nấy” và trường hợp này câu nói đó rất đúng. Với 800.000 bạn có một màn chơi đơn với thời lượng chơi chỉ tính riêng cốt truyện đã là 35 tiếng. Nếu làm hết các nhiệm vụ và khám phá, bạn có thể mất tới hơn 160 giờ chơi.\r\n\r\nVà ngay khi khám phá mọi thứ, tự tin rằng mình bất khả chiến bại thì bạn có thể tiếp tục phần chơi online và ăn hành thêm vài chục giờ nữa, trước khi có thể bán hành lại cho người chơi khác.\r\n\r\nSNIPER ELITE 4 – GIÁ SAU KHI SALE 96.000VND\r\nNếu game thủ nào thích chơi dòng súng ngắm chắc cũng từng nghe qua tựa game này rồi. Series game bắn tỉa nổi tiếng không chỉ bởi độ chân thật cao khi thực hiện bắn súng ngắm (trọng lực, hướng gió, vị trí bắn, đường rút lui, nhịp tim, hơi thở đều ảnh hưởng đến phát bắn) mà còn bởi những pha slow motion cho biết viên đạn đã xuyên qua cơ thể “nạn nhân” như thế nào.\r\n\r\nDám cá rằng 90% game thủ tải về sẽ chinh phục phát bắn “xuyên 2 bi” trước khi để ý đến bất cứ thứ gì khác. Riêng mảng đó tôi nghĩ đã đáng bỏ ra 100K mua game rồi.', 'Tan', '2020-06-19 17:00:00'),
(7, 'Chương trình Khuyến mãi Đặt hàng trước Màn hình “K', 'image/image_Product/News/new7.jpg', '1. Thời gian khuyến mãi\r\nTừ 20/06/2020 đến 31/07/2020\r\n\r\n2. Địa điểm khuyến mãi\r\nChương trình khuyến mãi áp dụng trên website TechMedia và tại cửa hàng\r\n\r\n3. Nội dung khuyến mãi\r\nKhách hàng đặt hàng trước sản phẩm Màn hình LG 38GN950-B trong thời gian khuyến mãi sẽ nhận Loa Karaoke LG OL55D trị giá 8.890.000đ\r\n\r\n4. Lưu ý\r\nSản phẩm có thể giao trong thời gian khuyến mãi nếu có hàng hoặc sẽ giao sau khi kết thúc thời gian đặt hàng\r\n\r\nChương trình áp dụng cho cả khách hàng online và offline', 'Nhan', '2020-06-17 17:00:00'),
(8, '6 cách phá hoại cuộc gọi Zoom mà bạn không biết mì', 'image/image_Product/News/new8.jpg', 'Các quy ước này có thể áp dụng cho cả Google Meet, Microsoft Team, Facebook Messenger Room,… nói chung là mọi ứng dụng video call nhóm.\r\n\r\nCách li và phong toả vì virus corona có thể đã được dỡ bỏ ở Việt Nam, nhưng nhiều người vẫn đang sử dụng video call như một cách chính để giữ liên lạc với đồng nghiệp, gia đình và bạn bè. Cho dù bạn đang sử dụng Zoom, Skype, FaceTime, Google Meet hay Hangouts, Microsoft Teams, Facebook Messenger Rooms hoặc một trong những dịch vụ video call khác, bạn hoặc người bạn biết có thể mắc phải một số hành vi phá hoại cuộc gọi video call mà bạn không hay biết.\r\n\r\nDưới đây là sáu cách bạn có thể vô tình làm hỏng cuộc trò chuyện và cuộc họp qua video call của mình và cách tránh chúng.\r\n\r\nGõ phím hoặc làm ồn khi không mute\r\nTheo kinh nghiệm của tôi, đây là vấn đề xuất hiện nhiều nhất – đặc biệt là các cuộc gọi nhóm lớn.\r\n\r\nLuôn có một người quên mute (tắt tiếng), và đột nhiên cả nhóm bị ‘dội bom’ bởi những âm thanh gõ phím, lò vi sóng đang chạy, tiếng chó sủa hoặc tiếng trẻ con la hét. Tất nhiên, tất cả đều là sản phẩm phụ khi làm việc tại nhà. Nhưng có nhiều lý do để giữ im lặng trừ khi bạn cần nói chuyện.\r\n\r\nNói chung, không tắt tiếng, khoá micro không chỉ gây mất tập trung mà còn thiếu tôn trọng người đang cố gắng nói. May mắn thay, Zoom có một mẹo hữu ích để giúp bạn tránh trở thành ‘Người ấy’: Tự động tắt âm thanh của bạn bằng cách đi tới Cài đặt> Âm thanh> Tắt tiếng micrô. Để nhanh chóng bật tiếng khi cần, chỉ cần nhấn và giữ thanh dấu cách.\r\n\r\nĂn, uống hoặc hút thuốc\r\nĐặc biệt là trong các cuộc gọi nhóm nhỏ hơn, ăn, uống hoặc hút thuốc trong một cuộc họp video là một sự phân tâm lớn – thậm chí  hơn cả khi bạn làm điều đó trong văn phòng, bởi vì mọi thứ đều tập trung vào khuôn mặt của bạn. Cố gắng tuân theo các quy tắc giống như bạn đang họp trực tiếp.\r\n\r\nLưu ý nhỏ: Một số người có thể phải video call cả ngày, không có thời gian để ăn hoặc uống cà phê. Trong trường hợp đó, nếu đó là một cuộc họp bình thường hơn, thì hoàn toàn ổn để tạo một ngoại lệ. Trong các cuộc họp nhỏ, bạn nên hỏi liệu nhóm có để tâm không, hoặc giải thích rằng bạn đã không uống một ngụm nước nào trong nhiều giờ rồi.\r\n\r\nNhìn vào điện thoại hoặc laptop\r\nChỉ vì bạn đang ở nhà không có nghĩa là mọi người không thể thấy bạn nhìn chằm chằm vào điện thoại của bạn thay vì chú ý đến cuộc họp video. Để điện thoại của bạn sang một bên và lật úp lại để bạn không liếc nhìn nó. Không nhìn camera mà nhìn vào nội dung khác trên laptop hoặc màn hình của bạn cũng khá rõ ràng và không phải là điều tốt. Giảm thiểu các thứ khác và tập trung vào cuộc họp.\r\n\r\nTrong một cuộc họp nhỏ hơn, bạn có thể giải thích lý do tại sao không nhìn vào camera. Trong một cuộc họp lớn hơn, hãy cân nhắc tắt video nếu bạn không thể tập trung vào người đang nói.\r\n\r\nRời khỏi khung hình mà không giải thích lý do\r\nNếu bạn cần phải đi đâu đó vì bất kỳ lý do nào — đi vệ sinh, uống nước, bế con hoặc thú cưng – bạn nên nói trước cho mọi người nếu có thể, bằng lời nói hoặc chat. Nhờ đó, có vẻ như bạn không biến mất mà không có lý do. Mặt khác, tốt hơn là giữ một ngón tay để chỉ “1 phút” và tắt video cho đến khi bạn quay lại cuộc gọi đang diễn ra.\r\n\r\nGiữ camera ở một góc lạ\r\nCác webcam có thể hơi khó sử dụng – bạn có thể nghĩ rằng laptop đang ở vị trí tốt trên bàn, nhưng thực ra mọi người đang chỉ nhìn thấy lỗ mũi của bạn. Tránh tình huống này này bằng cách đặt máy tính xách tay của bạn lên một số cuốn sách hoặc mua một giá đỡ nhỏ, để máy ảnh của bạn ở ngang tầm mắt hoặc thậm chí chếch từ trên xuống. Bằng cách đó, góc camera sẽ không trở nên kì dị.\r\n\r\nTìm hiểu công nghệ trong khi gọi\r\nChắc chắn có nhiều hướng dẫn sử dụng họp trực tuyến. Nhưng nếu bạn định làm điều gì đó mà bạn chưa từng làm trước đây – như chia sẻ màn hình hoặc phát một số âm thanh – trước tiên hãy chạy thử với đồng nghiệp hoặc thành viên gia đình, vì vậy bạn sẽ không dò dẫm và lãng phí thời gian trong khi họp. Điều này sẽ giúp bạn trông chuyên nghiệp hơn và giữ mọi thứ hoạt động trơn tru.\r\n\r\nLàm thế nào để có cuộc trò chuyện video tốt hơn\r\nĐó chưa phải là tất cả: Có rất nhiều chiến thuật bạn có thể sử dụng để đảm bảo rằng bạn đang đóng góp cho các cuộc trò chuyện video và hội nghị trực tuyến của mình những thứ tốt đẹp. Dưới đây là ba điều cần thử:\r\n\r\nNgoại hình và âm thanh sắc nét khi online bằng cách làm theo một số mẹo và thủ thuật webcam đơn giản, bao gồm sử dụng tai nghe và micrô khi có thể và chú ý đến ánh sáng.\r\nBiểu lộ sự chú ý: Trò chuyện video có nghĩa là chúng ta mất rất nhiều tín hiệu giao tiếp của các cuộc trò chuyện trực tiếp, ví dụ nghiêng về phía trước khi bạn muốn lắng nghe. Hãy gật đầu và mỉm cười khi có ai đó đang nói chuyện để tỏ ra bạn đang lắng nghe họ.\r\nThực hành nghe chủ động: Đối với các cuộc trò chuyện nhóm nhỏ (và khi bạn không gõ phím, ăn hoặc gây ra nhiều tiếng ồn), hãy unmute (bỏ tắt tiếng) để cung cấp một số phản hồi bằng lời nói (như “mmhmm” và “OK”) để biểu lộ việc nghe chủ động. Trong các cuộc họp lớn hơn, bạn có thể thử nói chậm hơn để tránh những gián đoạn ngoài ý muốn và cho mọi người thời gian để xen vào nếu cần.\r\n', 'Nguồn: Cnet.com', '2020-06-21 17:00:00'),
(9, 'Học sinh cấp 3, liệu đã thích hợp khi cho các em d', 'image/image_Product/News/new9.jpg', 'Trong đời sống hiện đại ngày nay, laptop đang dần trở thành công cụ gắn bó mật thiết với con người, đặc biệt trong công việc, học tập và giải trí. Học sinh THPT cũng vậy, nếu biết cách quản lý laptop hiệu quả thì sẽ hỗ trợ rất tốt trong quá trình học tập. Tuy vậy vẫn có những ý kiến trái chiều giữa việc mua hay không nên mua laptop cho học sinh cấp 3. Do đó, chúng ta cùng tìm hiểu xem có nên mua laptop dành cho học sinh ở lứa tuổi này không nhé!\r\n\r\nHọc sinh phổ thông có nên mua laptop hay không?\r\n\r\n1. Thực trạng và nhu cầu\r\nKhi bước vào cấp 3, sự trải nghiệm công nghệ của các em không chỉ gói gọn trong 1 chiếc điện thoại nhỏ nhắn, mà giờ đây các em sẽ muốn sở hữu 1 thiết bị to hơn, mạnh mẽ hơn để hỗ trợ cho việc học tập cũng như giải trí của mình.\r\n\r\nCòn đối với phụ huynh, việc chọn một chiếc laptop cho con em mình hiện nay phải nói là không khó. Nhiều nhà sản xuất đã đi sâu vào tâm tư của các bậc cha mẹ để sản xuất ra nhiều sản phẩm, trải dài trên nhiều phân khúc giá với đa dạng các loại mẫu mã và cấu hình. Nếu suy nghĩ tích cực là laptop sẽ giúp các em mình có thêm nhiều kiến thức từ trên mạng thì đó là lý do chính đáng nhất để mua 1 chiếc laptop mới.\r\n\r\n2. Mục đích\r\nVới các em học sinh lớp 10 thì mục đích chính của các em khi muốn sở hữu 1 chiếc laptop không lý do nào khác ngoài việc học tập, tìm tài liệu, soạn thảo 1 số văn bản, dịch tiếng Anh…\r\n\r\nVới những em học lớp 11, lớp 12 chương trình học nặng hơn, số lượng bài vở tăng lên gấp đôi thì việc trang bị máy tính cho mình trở nên cần thiết. Nhất là thời buổi bây giờ, phương thức dạy cũng “công nghệ” hơn nên việc học cũng trở nên hiện đại hơn. Các bài tập nhóm hay bài thuyết trình sẽ theo dạng trình bày bằng Powerpoint hoặc bằng video. Mặt khác, bên cạnh giờ học chính thức trên lớp thì các em cũng có thể học trực tuyến qua laptop dễ dàng hơn thay vì học thêm bên ngoài. Vì thế việc có laptop là điều cần thiết cho các em học sinh cấp 3 để việc học diễn ra thuận lợi hơn. Hơn nữa trong các buổi học nhóm hay sinh hoạt ở bên ngoài như ở quán cà phê, laptop là công cụ tiện lợi để mang theo bên mình.\r\n\r\nNgoài ra còn có khá nhiều lý do khiến các em muốn có thêm 1 chiếc laptop mới như việc không muốn thua kém bạn bè, muốn làm quen với laptop khi lên đến đại học khỏi phải bỡ ngỡ cũng như nếu bạn dự định theo ngành công nghệ thông tin thì có thể học hỏi trước.\r\n\r\nMột lý do khác không kém phần quan trọng chính là tính giải trí. Sau những giờ học căng thẳng khi trang bị màn hình rộng, độ phân giải cao, cấu hình mạnh và nhanh hơn điện thoại thông thường.\r\n\r\nVà điều quan trọng là các bậc phụ huynh nên trang bị cho con cách quản lý thời gian và nâng cao nhận thức khi làm việc trên laptop để việc sử dụng máy trở nên hiệu quả và tối ưu nhất có thể', 'Nguồn: dịch và tổng hợp trên internet', '2020-06-21 17:00:00'),
(10, 'Aston Martin AMB 001 xuất hiện trên đường thử, chu', 'image/image_Product/News/new10.jpg', '“Rolls Royce của làng moto” Aston Martin AMB 001 mới đây đã được bắt gặp trên đường thử. Dự kiến, chếc siêu moto này sẽ xuất hiện trong thời gian tới.\r\n\r\nAston Martin AMB 001 đang thử nghiệm, chuẩn bị ra mắt.\r\nTổng quan\r\nAMB 001 là sản phẩm hợp tác giữa hãng ô tô Anh Quốc với hãng moto Brough Superior. Mới được ra mắt tại triển lãm EICMA năm ngoái, giờ đây, siêu moto này chính thức bước vào giai đoạn thử nghiệm. Xe sẽ được lắp ráp thủ công tại nhà máy của Brough Superior ở Toulouse (Pháp). Khách hàng sẽ có thể nhận bàn giao xe vào mua thu năm nay.\r\n\r\nThông số kỹ thuật\r\nAston Martin AMB 001 sẽ được sản xuất dựa trên một bộ khung làm hoàn toàn bằng sợi carbon. Trái tim của siêu moto này sẽ là một khối động cơ V-Twin, sử dụng tăng áp VGT, cho ra công suất 180hp. Thông số về mô-men xoắn chưa được tiết lộ. Nhưng hãng cho rằng, AMB 001 sẽ có mô-men xoắn ở dải tua thấp cao hơn các mẫu xe không tăng áp. Đi kèm với nó là hộp số 6 cấp.\r\n\r\nHệ thống truyền động cho siêu moto này sử dụng xích tải. Trong khối động cơ cũng được trang bị bộ nồi chống trượt APTC. Hệ thống treo trước của chiếc xe này có dạng xương đòn kép.\r\n\r\nMột điều kỳ lạ nữa là chiếc xe này không có công-tơ-mét tích hợp sẵn. Theo đó, bạn có thể sử dụng chính Smartphone của mình để làm công-tơ-mét cho xe. Quả là kỳ lạ phải không nào?\r\n\r\nGiá bán và số lượng sản xuất Aston Martin AMB 001\r\nHãng xe Anh Quốc sẽ chỉ sản xuất 100 chiếc siêu moto này cho toàn thế giới. Và với một chiếc xe giới hạn như thế, chắc chắn giá thành sẽ không hề rẻ. Và đúng là như vậy. Giá bán dự kiến của nó sẽ là 120.000 USD (khoảng 2,79 tỉ đồng), chưa kèm theo thuế cùng các tùy chọn kèm theo. Nếu chơi full option thì chắc chắn, mức giá sẽ không dừng lại ở mức 120.000 USD đâu.\r\n\r\nVà nếu bạn có đủ tiền và bạn muốn mua nó về dạo phố, thì xin chia buồn với bạn. Chiếc AMB 001 này không hợp pháp để chạy trên đường phố. Nó chỉ phù hợp để sử dụng trên đường đua mà thôi. Tuy nhiên, điều đó vẫn không thể ngăn cản các tay chơi moto rước em nó về.', 'Nguồn tin: Dân Trí', '2020-06-21 17:00:00'),
(11, 'Bill Gates: “COVID-19 lây lan nhanh là do Facebook', 'image/image_Product/News/new11.jpg', 'Đừng \"mất bò mới lo làm chuồng\"\r\n\r\nKhi COVID-19 hoành hành, Bill Gates nhanh chóng trở thành nhân vật có tiếng nói quan trọng nhất. Phát biểu của ông luôn được công chúng chú ý lắng nghe. Mới đây, ông đã có một phát ngôn nhắm tới MXH lớn nhất thế giới và sự lây lan của COVID.\r\n\r\nNội dung phát biểu của Bill Gates\r\nCụ thể, nhà sáng lập Microsoft đã có bài phát biểu tại Hội nghị Fast Company Impact Council. Trong đó, ông đã đưa ra 1 số chiến lược nhằm đối phó với COVID-19.\r\n\r\nBill Gates cho rằng, việc lây lan COVID-19 1 phần là do sự quản lý yếu kém của các MXH lớn, đặc biệt là Facebook. Cụ thể, ông nói:\r\n\"Liệu các công ty truyền thông xã hội có thể trở nên hữu ích trong phòng chống dịch bệnh hay không? Sự sáng tạo mà chúng ta có là gì? Thật đáng buồn là các công cụ kỹ thuật số thường chỉ tiếp tay cho việc truyền bá những ý tưởng theo tôi là điên rồ.\"\r\n\r\nThêm nữa, tỉ phú giàu nhất thế giới cũng chỉ trích các MXH vì để lan truyền các thông tin sai lệch. Điển hình là thông tin “đeo khẩu trang không có tác dụng”. Ông bức xúc nói: \r\n\"Việc không đeo khẩu trang theo tôi thật là khó hiểu. Vì sự thật, nó không khó chịu đến mức đó. Khẩu trang cũng không hề đắt tiền. Nhưng nhiều người cứ nghĩ phải đeo khẩu trang là mất tự do hay các vấn đề gì đó liên quan tới nhân quyền. Trong khi đó, không đeo khẩu trang là tăng nguy cơ lây nhiễm cho cộng đồng.\"\r\n\r\nBill Gates cũng dự đoán, làn sóng COVID-19 thứ 2 sẽ tấn công Mỹ và thế giới vào mùa thu. Qua đó, ông kêu gọi các nước và người dân cần chuẩn bị sẵn hành trang. Đặc biệt, cần chuẩn bị hành trang chống lại thông tin sai lệch.\r\n\r\nChúng ta có nên nghe theo?\r\nTheo mình, chúng ta hoàn toàn nên nghe theo nhà sáng lập Microsoft. Vì trước đây, ông đã có dự đoán về một đại dịch mới sẽ tấn công toàn cầu. Và đại dịch đó chính là COVID-19 ngày nay. Cụ thể, trong 1 buổi TED Talk năm 2015, ông đã đưa ra minh chứng thuyết phục về sự xuất hiện một đại dịch có khả năng đe dọa tồn vong nhân loại lớn hơn nhiều so với chiến tranh hạt nhân.\r\nBan đầu, không ai tin ông. Một số người còn cho rằng Bill Gates đang “lo bò trắng răng”. Phải cho đến khi tất cả đã quá muộn, người ta mới nghe theo dự đoán của ông.\r\n\r\nThêm nữa, chính nhà sáng lập Microsoft và vợ đang đóng góp tích cực cho cuộc chiến chống COVID-19 trên toàn thế giới.  Cho nên, những lời cảnh báo của ông cũng rất có trọng lượng. Và từ đó, mình tin rằng, chúng ta nên nghe theo Bill Gates để tránh điều xấu nhất xảy ra.', 'Nguồn: Dân Trí', '2020-06-24 17:00:00'),
(12, 'Chúng ta đã từng có các vỏ hộp card đồ họa thế này', 'image/image_Product/News/new12.jpg', 'Chắc là sau một thời gian dài thảo luận, bàn bạc việc in gì lên vỏ hộp, những người chịu trách nhiệm thiết kế đã kết luận in hình ‘ếch trong bộ đồ mech’.\r\n\r\nAsus GeForce 256 (2000)\r\n\r\nBạn phải tôn trọng Asus vì đã thử một cái gì đó khác biệt. Rô bốt? Yêu tinh? Quên đi. Họ quyết định sẽ sử dụng hình ảnh đứa trẻ từ phim Problem Child để bán GPU.\r\n\r\nHercules 3D Prophet 9500 Pro (2003)\r\n\r\nCó một sự thật ít người biết rằng Jared Leto lấy hình mẫu cho vai diễn Joker trong Suicide Squad dựa trên bức hình này.\r\n\r\nSapphire ATI Radeon X550 (2005)', ' Admin ', '2020-06-24 17:00:00'),
(13, 'Soi cấu hình đề nghị và tối thiểu chơi Valorant: N', 'Image/Image_Product/News/new13.jpg', 'Dù chưa được phát hành chính thức ở Việt Nam nhưng những ngày gần đây, cái tên Valorant đang liên tục được nhắc đến trong các cộng đồng game thủ e-sport. Vậy trò chơi này sẽ yêu cầu cấu hình như thế nào và có gì hấp dẫn mà lại được quan tâm đến vậy?\r\n\r\nĐiều cần nhắc đến đầu tiên, cha đẻ của Valorant chính là Riot Games, đội ngũ đứng sau thành công của League of Legends trong suốt một thập kỷ qua. Luôn sáng tạo, tràn đầy nhiệt huyết và được chống lưng bởi Tập đoàn giải trí lớn nhất thế giới thời điểm hiện tại Tencent. Người chơi hoàn toàn có thể tin tưởng vào tương lai tươi sáng của tựa game này.\r\n\r\nGameplay lạ mà quen\r\nMỗi lớp nhân vật trong Valorant đều có bộ skill riêng biệt, có thể được dùng để tấn công đối thủ, hòa lẫn vào môi trường hay hỗ trợ đồng đội một cách hiệu quả …vv… người chơi tùy ý lựa chọn nhân vật phù hợp với sở thích và tính cách của mình. Nghe qua thì rất giống người anh em đã quá thành công League of Legends nhưng điểm khác biệt lớn nhất chính là Valorant sẽ khai thác góc nhìn thứ nhất chứ không phải từ trên xuống. Đây là điểm mấu chốt mà Riot Games đã liên tục nhắc đến trong những lần giới thiệu dự án trước đây.\r\n\r\nVẫn là 5 đấu 5, tuy nhiên Valorant sẽ có chế độ chính đầu tiên là tấn công – phòng thủ mục tiêu với các kĩ năng riêng của từng nhân vật, những kỹ năng này có thể hoán đổi, thay thế tùy thích bằng cách mua-bán tại cửa hàng (dùng tiền mỗi vòng để mua kĩ năng và súng), từ đó yêu cầu các game thủ phải giao tiếp với nhau để mua đúng kĩ năng để tạo ra các combo hoàn hảo cho mỗi vòng đấu, tránh tình trạng trên bảo dưới không nghe phổ biến trong những tựa game bắn súng trước đây.\r\n\r\nThiết kế nhân vật phong cách Anime\r\nVăn hóa Nhật Bản, Nam Triều Tiên (Hàn Quốc) vẫn đang có những tác động mạnh mẽ đến cuộc sống của giới trẻ Việt Nam nói riêng và Á Đông nói chung, nên không có gì khó hiểu khi Riot Games đã lựa chọn phương án xây dựng nhân vật theo hướng này. Trong Valorant, người chơi sẽ dễ dàng nhận ra những đường nét quen thuộc vẫn thường thấy trong các bộ phim hoạt hình Nhật Bản vài năm trở lại đây, đi kèm với đó là các bộ trang phục chất lừ, phá cách của các nhân vật. Một yếu tố nữa ảnh hưởng đến điều này chính là giới trẻ Nam Triều Tiên nổi tiếng thích chơi các tựa game bắn súng góc nhìn thứ nhất, bạn dự đoán sẽ mất bao lâu để chúng ta có một team Valorant hardcore, chuyên nghiệp đến từ xứ sở Cao Ly?\r\n\r\nMiễn phí và yêu cầu phần cứng cực nhẹ\r\nDù hay đến mấy nhưng nếu tính phí đồng thời yêu cầu cấu hình quá khó nhằn thì tựa game của bạn sớm muộn rồi cũng trở thành dead game, hai sai lầm trên chính là những gì mà PUBG phiên bản PC đã trải qua và đến hiện tại thì tựa game trên đã rơi vào cảnh vô phương cứu chữa, mặc cho ban đầu nó là cái tên đầy tiềm năng trong làng e-sport thế giới.\r\n\r\nTất nhiên, Valorant dưới tay Riot Games sẽ không thể đi vào vết xe đổ đó, bằng chứng là ngay từ đầu, Riot đã tuyên bố đây sẽ là một tựa game miễn phí, đồng thời cũng cho ra cấu hình yêu cầu ở mức không tưởng – đến một chiếc laptop từ thời 2011 cũng có thể chơi được.\r\n\r\nCụ thể, cấu hình tối thiểu chơi Valorant mức 30 khung hình/giây sẽ bao gồm:\r\n\r\n– CPU: Intel Core i3-370M\r\n\r\n– Card đồ họa: Intel HD 3000\r\n\r\n– RAM: 2GB\r\n\r\n– Hệ điều hành: Windows 7 32-bit\r\n\r\nCấu hình lý tưởng trong năm 2020 để chơi Valorant\r\nNhờ sự dễ tính đã thành truyền thống của Riot, không khó cho các game thủ khi tìm mua những linh kiện để bắt đầu hành trình go pro với Valorant, một chiếc máy đủ khả năng kéo số khung hình trên giây của tựa game này lên hơn 144 trong năm 2020 thực chất nằm trong tầm với của tất cả mọi người.', 'Admin', '2020-06-26 17:00:00'),
(14, 'Ác mộng với tản nhiệt của AMD Ryzen sắp kết thúc ?', 'image/Image_Product/News/tan_nhiet_cua_AMD_sap_ket_thuc.jpg', 'Nếu gần đây bạn từng build máy sử dụng CPU Ryzen hoặc là nâng cấp tản nhiệt, bạn sẽ gặp phải vấn đề chỉ gặp phải ở socket AM4: CPU có thể sẽ bị dính vào tản nhiệt và bị kéo ra khỏi socket, kể cả khi chốt giữ không bị lỏng/hỏng.\r\n\r\nMột giải pháp mới cho vấn đề này đã xuất hiện trên diễn đàn Chiphell, cụ thể là tản nhiệt ProArtist Desserts2. Tản này đi kèm một bracket giúp giữ lại CPU khi bạn lôi tản nhiệt ra. Nó không tiếp xúc hay cản trở nên hiệu năng tản nhiệt không bị ảnh hưởng.\r\n\r\nGiải pháp này chưa trở nên phổ biến toàn cầu bởi hiện tại nó chỉ có tại Trung Quốc nhưng hi vọng là các nhà sản xuất tản nhiệt hoặc chính AMD quan tâm sản xuất và đóng gói kèm các tản nhiệt của họ.\r\n\r\nTại sao tôi phải mong các nhà sản xuất tản nhiệt quan tâm bởi vì đây không phải một vấn đề lớn. Đầu tiên phải nói, không phải ai cũng thay tản nhiệt CPU và cho dù có, điều đó cũng không diễn ra thường xuyên. Thứ hai là vấn đề này có thể được giải quyết bằng cách xoay tản nhiệt trong khi tháo ra hoặc bật máy 1 lúc để keo tản nóng lên và rời ra dễ dàng. Nhưng nói qua cũng phải nói lại, với các tester như chúng tôi thì bracket này thật sự rất quý giá.\r\n\r\nTrong quá trình thử nghiệm các chip Ryzen 3000 XT mới và chưa rút CPU ra khỏi socket lần nào. Tuy nhiên trong quá khứ việc này đã từng xảy ra và điều đó không vui vẻ gì, nếu không muốn nói là tương đối đau tim. Nếu điều đó xảy ra với bạn, hãy cố gắng đừng làm cong chân CPU khi tách chúng ra khỏi tản nhiệt, việc bẻ thằng các chân không dễ dàng chút nào đâu.\r\n\r\nMột điều cần lưu ý là AMD có thể sẽ thay socket vào năm sau để mở đường cho Zen 4 (CPU ra mắt năm sau mới là Zen 3). Hi vọng là miếng bracket này không cần thiết trên socket AM5 (hay bất cứ tên gì mà AMD đặt cho nó).', 'Tham khảo: PCGamer', '2020-06-30 17:00:00'),
(15, 'Giảm giá, nhân đôi XP&RP mừng ngày 4/7 trong GTA O', 'image/Image_Product/News/Giam_gia_nha_doi_XP.png', 'Dành cho anh em chưa biết, ngày 4/7 là ngày Quốc Khánh của nước Mỹ. Do đó, các sự kiện trong game nhân dịp này cũng sẽ rất tưng bừng, nhất là với các tựa game đặt máy chủ tại nước này.\r\n\r\nGTA Online về cơ bản không chỉ có máy chủ đặt tại Hoa Kì nhưng nhìn chung các sự kiện giảm giá và nhân đôi, nhân ba XP, RP đều theo múi giờ và văn hóa Mỹ.\r\n\r\nBởi vậy, để kỉ niệm ngày 4/7 năm nay, GTA Online có các ưu đãi trong game như sau:\r\n\r\nCác ưu đãi nổi bật\r\n- Nhân đôi XP, RP với các nhiệm vụ Missile Base\r\n\r\n- Phần thưởng Western Sovereign khi quay Lucky Wheel trong Diamond Casino (cái này bị chặn tại Việt Nam, anh em cần fake dip mới có thể quay được)\r\n\r\n- Giảm giá Mammoth Avengers and Customizations 60%: Chiếc máy bay này hữu dụng nhất (bên cạnh vũ khí) là trong các nhiệm vụ Warehouse – giúp ae thu hồi 3 Crate chỉ trong 1 lượt duy nhất.\r\n\r\n- Giảm giá Yachts 50%: Sau khi nâng cấp Air Defense thì anh em có thể yên tâm AFK khi bị treo bounty trên đầu cho đến khi hết bounty bởi khi người chơi khác lên tàu, họ sẽ không thể sử dụng vũ khí, cách duy nhất là sử dụng máy bay bắn hạ bạn thì đã có Air Defense lo liệu rồi.\r\n\r\n- Giảm giá 50% Arcade: mua cái này anh em sẽ không bị Lester gọi mỗi khi vào trong game nữa. Ngoài ra thì ae có thể kiếm tiền từ nó nhưng không nhiều.', 'Hữu Nhân', '2020-07-01 17:00:00'),
(16, 'Tổng hợp mã giảm giá khuyến mãi', 'image/Image_Product/News/magiamgia.png', 'Mã giảm giá cho thành viên\r\n\r\n- Mã giảm giá 20% đơn hàng đầu tiên đối với mỗi tài khoản: newbie \r\n      (Mã giảm giá chỉ có hiệu lực sử dụng 1 lần cho mỗi tài khoản)\r\n\r\n\r\n- Mã giảm giá 10% đơn hàng : saigon\r\n  (Mã giảm giá có hiệu lực sử dụng 2 lần cho mỗi tài khoản)', 'Eric', '2020-07-03 17:00:00');

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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `tbbanner`
--

INSERT INTO `tbbanner` (`id`, `url`, `timeUpload`) VALUES
(1, 'image/Image_Product/Banner/banner5.jpg', '2020-07-03 17:00:00'),
(2, 'image/Image_Product/Banner/banner1.jpg', '2020-07-02 17:00:00'),
(3, 'image/Image_Product/Banner/banner4.jpg', '2020-07-03 17:00:00'),
(4, 'image/Image_Product/Banner/banner6.png', '2020-07-04 15:21:49'),
(5, 'image/Image_Product/Banner/banner7.jpg', '2020-07-05 14:15:24');

-- --------------------------------------------------------

--
-- Table structure for table `tbcpulist`
--

DROP TABLE IF EXISTS `tbcpulist`;
CREATE TABLE IF NOT EXISTS `tbcpulist` (
  `idProduct` varchar(30) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `idClass` int(100) NOT NULL,
  `nameProduct` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `rate` int(11) NOT NULL,
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
(2, 'Tản nhiệt'),
(7, 'Thùng PC');

-- --------------------------------------------------------

--
-- Table structure for table `tbmainboard`
--

DROP TABLE IF EXISTS `tbmainboard`;
CREATE TABLE IF NOT EXISTS `tbmainboard` (
  `idProduct` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `idClass` int(100) NOT NULL,
  `nameProduct` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `rate` int(100) NOT NULL,
  `Tong quan` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `photo1` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `photo2` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `photo3` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `photo4` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `photo5` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dateIn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idProduct`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbmainboard`
--

INSERT INTO `tbmainboard` (`idProduct`, `idClass`, `nameProduct`, `rate`, `Tong quan`, `photo1`, `photo2`, `photo3`, `photo4`, `photo5`, `dateIn`) VALUES
('6_A01', 6, 'Gigabyte H310M H', 1699000, 'Socket	LGA1151\r\nChipset	Intel® H310 Express Chipset\r\nCPU (hỗ trợ tối đa)	Support for 9th and 8th Generation Intel® Core™ i9 processors/Intel® Core™ i7 processors/Intel® Core™ i5 processors/Intel® Core™ i3 processors/Intel® Pentium® processors/Intel® Celeron® processors\r\nBIOS	\r\n1 x 128 Mbit flash\r\nUse of licensed AMI UEFI BIOS\r\nPnP 1.0a, DMI 2.7, WfM 2.0, SM BIOS 2.7, ACPI 5.0\r\nOS hỗ trợ	Support for Windows 10 64-bit\r\n\r\nBộ Nhớ\r\nBộ nhớ RAM tối đa	32 GB\r\n\r\nSố khe cắm	2\r\nKênh bộ nhớ	Dual\r\nRAM	Support for DDR4 2666/2400/2133 MHz memory modules\r\n\r\nNguồn\r\nKích thước nguồn hỗ trợ	\r\nMicro ATX Form Factor\r\n22.6cm x 17.4cm\r\nĐồ Họa và Âm Thanh\r\nAudio	\r\nRealtek® ALC887 codec\r\nHigh Definition Audio\r\n2/4/5.1/7.1-channel\r\n* To configure 7.1-channel audio, you have to use an HD front panel audio module and enable the multi-channel audio feature through the audio driver.\r\n\r\nKết Nối Mạng\r\nLAN	Realtek® GbE LAN chip (10/100/1000 Mbit)\r\nCổng Kết Nối\r\nPS/2 keyboard/ mouse combo port	\r\nRJ45	\r\nUSB 2.0	4\r\nUSB 3.1	2 x USB 3.1 Gen 1 ports\r\nCổng Audio	3 x audio jacks\r\nVGA	1 x D-Sub port\r\nHDMI	\r\nKết Nối I/O Bên Trong\r\nSATA III 6Gb/s	4\r\nPCI-EX1	2\r\nPCI-EX16\r\n', 'image/Image_Product/Mainboard_image/Gigabyte%20Z390%20AORUS%20Xtreme%20(2).jpg', 'image/Image_Product/Mainboard_image/Gigabyte%20Z390%20AORUS%20Xtreme%20(3).jpg', 'image/Image_Product/Mainboard_image/Gigabyte%20Z390%20AORUS%20Xtreme%20(4).jpg', 'image/Image_Product/Mainboard_image/Gigabyte%20Z390%20AORUS%20Xtreme%20(5).jpg', '', '2020-07-06 06:14:04'),
('6_A02', 6, 'ASRock H310M-HDV', 1670000, 'Socket	Socket 1151\r\nChipset	Intel® H310\r\nCPU (hỗ trợ tối đa)	Supports 8th Generation Intel® Core™ Processors\r\nBIOS	\r\n128Mb AMI UEFI Legal BIOS with multilingual GUI support\r\nACPI 6.0 Compliant wake up events\r\nSMBIOS 2.7 Support\r\nDRAM, PCH 1.05V Voltage Multi-adjustment\r\nOS hỗ trợ	Microsoft® Windows® 10 64-bit\r\nBộ Nhớ\r\nBộ nhớ RAM tối đa	32 GB\r\nSố khe cắm	2\r\nKênh bộ nhớ	Dual\r\nRAM	DDR4 2666 / 2400 / 2133\r\nNguồn\r\nKích thước nguồn hỗ trợ	\r\nMicro ATX Form Factor\r\n7.5-in x 7.4-in, 19.1 cm x 18.8 cm\r\nSolid Capacitor design\r\nĐồ Họa và Âm Thanh\r\nAudio	7.1 CH HD Audio (Realtek ALC887 Audio Codec)\r\nKết Nối Mạng\r\nLAN	\r\nPCIE x1 Gigabit LAN 10/100/1000 Mb/s\r\n1 x Realtek RTL8111H\r\nSupports Wake-On-LAN\r\nSupports Lightning/ESD Protection\r\nSupports Energy Efficient Ethernet 802.3az\r\nSupports PXE\r\nCổng Kết Nối\r\nPS/2 keyboard/ mouse combo port	\r\nRJ45	\r\nUSB 2.0	\r\nMặt trước: đang cập nhật\r\nMặt sau: 4\r\nUSB 3.1	\r\nMặt trước: đang cập nhật\r\nMặt sau: 2 x Gen1\r\nCổng Audio	HD Audio Jacks: Line in / Front Speaker / Microphone\r\nVGA	\r\nDVI-D	\r\nHDMI	\r\nKết Nối I/O Bên Trong\r\nSATA III 6Gb/s	4\r\nPCI-EX1	\r\nPCI-EX16\r\n', 'image/Image_Product/Mainboard_image/Mainboard_ASRock%20H310M-HDV%20.jpg', 'image/Image_Product/Mainboard_image/Mainboard_ASRock%20H310M-HDV%20(2).jpg', 'image/Image_Product/Mainboard_image/Mainboard_ASRock%20H310M-HDV%20(3).jpg', 'image/Image_Product/Mainboard_image/Mainboard_ASRock%20H310M-HDV%20(3).jpg', 'image/Image_Product/Mainboard_image/Mainboard_ASRock%20H310M-HDV%20(4).jpg', '2020-07-06 06:46:45'),
('6_A03', 6, 'Asus Prime H310M-F R2.0', 1390000, 'Socket	Socket 1151\r\nChipset	Intel® H310\r\nCPU (hỗ trợ tối đa)	9th / 8th Gen Intel® Core™, Pentium® Gold and Celeron® Processors\r\nBIOS	64 Mb Flash ROM, UEFI AMI BIOS, PnP, SM BIOS 3.1, ACPI 6.1, Multi-languageBIOS, ASUS EZ Flash 3, CrashFree BIOS 3, F6 Qfan Control, F3 MyFavorites, Last Modified log, F12 PrintScreen, and ASUS DRAM SPD (SerialPresence Detect) memory information\r\nOS hỗ trợ	Windows® 10 64-bit\r\nBộ Nhớ\r\nBộ nhớ RAM tối đa	32GB\r\nSố khe cắm	2 x DIMM\r\nKênh bộ nhớ	Dual\r\nRAM	DDR4 2666/2400/2133 MHz Non-ECC, Un-buffered Memory\r\nNguồn\r\nKích thước nguồn hỗ trợ	\r\nuATX Form Factor\r\n21.34 cm x 17.78 cm\r\nĐồ Họa và Âm Thanh\r\nAudio	Realtek® ALC887 8-Channel High Definition Audio CODEC\r\nCard đồ họa tích hợp	Integrated Graphics Processor- Intel® HD Graphics support\r\nKết Nối Mạng\r\nLAN	Realtek® RTL8111H, 1 x Gigabit LAN Controller(s)\r\nCổng Kết Nối\r\nPS/2 keyboard/ mouse combo port	\r\n1 x PS/2 keyboard (purple)\r\n1 x PS/2 mouse (green)\r\nRJ45	\r\nUSB 2.0	6 x USB 2.0\r\nUSB 3.1	4 x USB 3.1 Gen 1\r\nCổng Audio	3 x Audio jack(s)\r\nDVI-D	\r\nKết Nối I/O Bên Trong\r\nSATA III 6Gb/s	4\r\nPCI-EX1	1 x PCIe 2.0 x1\r\nPCI-EX16	1 x PCIe 3.0/2.0 x16\r\n', 'image/Image_Product/Mainboard_image/Mainboard_ASUS%20Prime%20B460M-A%20(2).jpg', 'image/Image_Product/Mainboard_image/Mainboard_ASUS%20Prime%20B460M-A%20(3).jpg', 'image/Image_Product/Mainboard_image/Mainboard_ASUS%20Prime%20B460M-A%20(4).jpg', 'image/Image_Product/Mainboard_image/Mainboard_ASUS%20Prime%20B460M-A%20(5).jpg', '', '2020-07-06 06:51:54'),
('6_A04', 6, 'ASRock B360 Gaming K4', 2789000, 'Socket	LGA 1151-v2\r\nChipset	Intel® B360\r\nCPU (hỗ trợ tối đa)	Supports 8th Generation Intel® Core™ Processors\r\nBIOS	\r\n128Mb AMI UEFI Legal BIOS with multilingual GUI support\r\nACPI 6.0 Compliant wake up events\r\nSMBIOS 2.7 Support\r\nCPU Core/Cache, GT Core/Cache, DRAM, PCH 1.0V, VCCIO, VCCST, VCCSA, VCCPLL, CPU Internal PLL, GT PLL, Ring PLL, System Agent PLL, Memory Controller PLL Voltage Multi-adjustment\r\nOS hỗ trợ	Microsoft® Windows® 10 64-bit\r\nBộ Nhớ\r\nBộ nhớ RAM tối đa	64 GB\r\nSố khe cắm	4\r\nKênh bộ nhớ	Dual\r\nRAM	DDR4 2666 / 2400 / 2133\r\nNguồn\r\nKích thước nguồn hỗ trợ	\r\nATX Form Factor\r\n12.0-in x 9.6-in, 30.5 cm x 24.4 cm\r\nĐồ Họa và Âm Thanh\r\nAudio	7.1 CH HD Audio with Content Protection (Realtek ALC1220 Audio Codec)\r\nCông nghệ đa card đồ họa	Supports AMD Quad CrossFireX™ and CrossFireX™\r\nKết Nối Mạng\r\nLAN	\r\nGigabit LAN 10/100/1000 Mb/s\r\nGiga PHY Intel® I219V\r\nSupports Wake-On-LAN\r\nSupports Lightning/ESD Protection\r\nSupports Energy Efficient Ethernet 802.3az\r\nSupports PXE\r\nCổng Kết Nối\r\nPS/2 keyboard/ mouse combo port	\r\nRJ45	\r\nUSB 2.0	\r\nMặt trước: đang cập nhật\r\nMặt sau: 2\r\nUSB 3.1	\r\nMặt trước: đang cập nhật\r\nMặt sau: 1 x Gen2 Type-A, 2 x Gen1\r\nUSB-C	\r\nMặt trước: đang cập nhật\r\nMặt sau: 1 x Gen2 Type-C\r\nCổng Audio	\r\nHD Audio Jacks: Rear Speaker / Central / Bass / Line in / Front Speaker / Microphone (Gold Audio Jacks)\r\n1 x Optical SPDIF Out Port\r\nVGA	\r\nHDMI	\r\nDisplay Port	\r\nKết Nối I/O Bên Trong\r\nSATA III 6Gb/s	6\r\nM.2 SLOT	2\r\nPCI-EX1	4\r\nPCI-EX16	2\r\n', 'image/Image_Product/Mainboard_image/Mainboard_ASRock%20B360%20Gaming%20K4%20.jpg', 'image/Image_Product/Mainboard_image/Mainboard_ASRock%20B360%20Gaming%20K4%20(3).jpg', 'image/Image_Product/Mainboard_image/Mainboard_ASRock%20B360%20Gaming%20K4%20(4).jpg', 'image/Image_Product/Mainboard_image/Mainboard_ASRock%20B360%20Gaming%20K4%20(5).jpg', 'image/Image_Product/Mainboard_image/Mainboard_ASRock%20B360%20Gaming%20K4%20(2).jpg', '2020-07-06 06:51:54'),
('6_A05', 6, 'ASUS ROG STRIX B360-F GAMING', 3199000, 'Socket	1151\r\nChipset	Intel® B360\r\nBIOS	1 x 128 Mb Flash ROM, UEFI AMI BIOS, PnP, SM BIOS 3.1, ACPI 6.1, Multi-language BIOS, ASUS EZ Flash 3, CrashFree BIOS 3, Secure Erase, User Profile, F6 Qfan Control, F3 My Favorites, Last Modified log, F12 PrintScreen, , F4 AURA ON/OFF and F9 Search\r\nOS hỗ trợ	Windows® 10 64-bit\r\nBộ Nhớ\r\nBộ nhớ RAM tối đa	64 GB\r\nSố khe cắm	4\r\nKênh bộ nhớ	Dual\r\nRAM	2666/2400/2133 MHz Không ECC, Không Đệm Bộ nhớ\r\nNguồn\r\nKích thước nguồn hỗ trợ	\r\nATX Form Factor\r\n30.5 cm x 24.4 cm\r\nĐồ Họa và Âm Thanh\r\nAudio	ROG SupremeFX 8-Channel High Definition Audio CODEC S1220A\r\nCông nghệ đa card đồ họa	Supports AMD 2-Way CrossFireX Technology\r\nKết Nối Mạng\r\nLAN	\r\nIntel® I219V, 1 x Gigabit LAN Controller\r\nAnti-surge LANGuard\r\nROG GameFirst Technology\r\nCổng Kết Nối\r\nPS/2 keyboard/ mouse combo port	\r\nRJ45	\r\nUSB 2.0	6 x USB 2.0 port(s) (4 at back panel, black, 2 at mid-board)\r\nUSB 3.1	\r\n2 x USB 3.1 Gen 2 port(s) (2 at back panel, red, Type-A, Support 3A power output)\r\n2 x USB 3.1 Gen 1 port(s) (2 at mid-board)\r\nUSB-C	1 x USB 3.1 Gen 2 port(s) (1 at back panel, black, USB Type-CTM, Support 3A power output)\r\nCổng Audio	\r\n1 x Optical S/PDIF out\r\n5 x Audio jack(s)\r\nDVI-D	\r\nHDMI	\r\nDisplay Port	\r\nKết Nối I/O Bên Trong\r\nSATA III 6Gb/s	6\r\nM.2 SLOT	2\r\nPCI-EX1	4\r\nPCI-EX4	\r\nPCI-EX16\r\n', 'image\\Image_Product\\Mainboard_image\\Mainboard_ASRock B360 Gaming K4.jpg', 'image\\Image_Product\\Mainboard_image\\Mainboard_ASRock B360 Gaming K4 (2).jpg', 'image\\Image_Product\\Mainboard_image\\Mainboard_ASRock B360 Gaming K4 (3).jpg', 'image\\Image_Product\\Mainboard_image\\Mainboard_ASRock B360 Gaming K4 (4).jpg', 'image\\Image_Product\\Mainboard_image\\Mainboard_ASRock B360 Gaming K4 (5).jpg', '2020-07-06 06:54:40');

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
-- Table structure for table `tbpcmonitor`
--

DROP TABLE IF EXISTS `tbpcmonitor`;
CREATE TABLE IF NOT EXISTS `tbpcmonitor` (
  `idProduct` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `idClass` int(100) NOT NULL,
  `nameProduct` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` int(100) NOT NULL,
  `Tong quan` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Cong ket noi` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo1` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo2` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo3` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo4` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo5` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `DateIn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idProduct`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbpcmonitor`
--

INSERT INTO `tbpcmonitor` (`idProduct`, `idClass`, `nameProduct`, `rate`, `Tong quan`, `Cong ket noi`, `photo1`, `photo2`, `photo3`, `photo4`, `photo5`, `DateIn`) VALUES
('8_A01', 8, 'Acer Predator X35 - 35in cong VA 180Hz', 90990000, '-Kích thước màn hình :35-inch\r\n-Độ phân giải :UW-QHD 3440 x 1440\r\n-Tỉ lệ màn hình :21:9\r\n-Góc nhìn :178° / 178°\r\n-Độ sáng:\r\n    1000 Nit - Peak (HDR Mode)\r\n    600 Nit - Native\r\n\r\n-Tấm nền :Vertical A', '-HDMI 	\r\n-USB 3.0 	\r\n-Displayport ver 1.4\r\n', 'image/Image_Product/Monitor-image/PCMonitor_Acer_1a.png', 'image/Image_Product/Monitor-image/PCMonitor_Acer_1b.png', 'Image/Image_Product/Monitor-image/PCMonitor_Acer_1c.png', 'Image/Image_Product/Monitor-image/PCMonitor_Acer_1d.png', 'Image/Image_Product/Monitor-image/PCMonitor_Acer_1e.png', '0000-00-00 00:00:00'),
('8_A02', 8, 'Acer HA270B - 27in IPS FHD', 4590000, 'Kích thước màn hình :27-inch\r\n-Độ phân giải :FHD 1920 x 1080\r\n-Tỉ lệ màn hình :16:9\r\n-Góc nhìn :178° / 178°\r\n-Mật độ điểm ảnh ( PPI ) :81 ppi\r\n-Độ sáng \"250 nits\r\n-Tấm nền :IPS\r\n-Kích cỡ điểm ảnh :0.3', '-HDMI 	1 x HDMI 1.4\r\n-3.5mm 	\r\n-D-Sub 	\r\n', 'Image/Image_Product/Monitor-image/PCMonitor_Acer_2a.png', 'Image/Image_Product/Monitor-image/PCMonitor_Acer_2b.png', 'Image/Image_Product/Monitor-image/PCMonitor_Acer_2c.png', 'Image/Image_Product/Monitor-image/PCMonitor_Acer_2d.png', 'Image/Image_Product/Monitor-image/PCMonitor_Acer_2e.png', '0000-00-00 00:00:00'),
('8_A03', 8, 'ASUS ROG Swift PG65UQ - 65in 4K UHD 144Hz', 169990000, '-Kích thước màn hình :64.5“\r\n-Độ phân giải :UHD 3840x2160\r\n-Tỉ lệ màn hình :16:9\r\n-Góc nhìn :178°(H)/178°(V)\r\n-Mật độ điểm ảnh ( PPI ) :68 ppi\r\n-Độ sáng :1000 cd/㎡ (Peak)\r\n-Tấm nền :VA\r\n-Kích cỡ điểm ', '-HDMI :4 x HDMI 2.0\r\n-USB 3.0 :2\r\n-Displayport ver 1.4 	\r\n', 'Image/Image_Product/Monitor-image/PCMonitor_Asus_1a.png', 'Image/Image_Product/Monitor-image/PCMonitor_Asus_1b.png', 'Image/Image_Product/Monitor-image/PCMonitor_Asus_1c.png', 'Image/Image_Product/Monitor-image/PCMonitor_Asus_1d.png', 'Image/Image_Product/Monitor-image/PCMonitor_Asus_1e.png', '0000-00-00 00:00:00'),
('8_A04', 8, 'ASUS ROG Strix XG49VQ - 49in DFHD 144Hz', 26490000, '-Kích thước màn hình :Super ultra-wide 49-inch (124.46cm) cong 1800R\r\n-Độ phân giải :	DFHD 3840x1080\r\n-Tỉ lệ màn hình :32:9\r\n-Góc nhìn :178°(H)/178°(V)\r\n-Độ sáng :450 cd/㎡ (Typical)\r\n-Tấm nền :VA\r\n-Kí', 'Displayport ver 1.2 	\r\nHDMI :\r\n    HDMI(v2.0) x 1\r\n    HDMI 1.4 x 2\r\nUSB 3.0 :2\r\n', 'Image/Image_Product/Monitor-image/PCMonitor_Asus_2a.png', 'Image/Image_Product/Monitor-image/PCMonitor_Asus_2b.png', 'Image/Image_Product/Monitor-image/PCMonitor_Asus_2c.png', 'Image/Image_Product/Monitor-image/PCMonitor_Asus_2d.png', 'Image/Image_Product/Monitor-image/PCMonitor_Asus_2e.png', '0000-00-00 00:00:00'),
('8_A05', 8, 'Dell UltraSharp 27 4K HDR Monitor UP2718Q', 38020000, '-Kích thước màn hình :\"27\"\r\n-Độ phân giải :3840 x 2160\r\n-Tỉ lệ màn hình	16:9\r\n-Độ sáng :400 cd/m² (typical), 1,000 cd/m² (peak)\r\n-Kích cỡ điểm ảnh :0.1554 mm x 0.1554 mm\r\n-Độ phản hồi :6ms (gray to gr', '-Displayport ver 1.2 	\r\n-Mini Displayport Ver 1.2 	\r\n-HDMI : 2 cổng', 'Image_Product/Monitor-image/PCMonitor_Dell_1a.png', 'Image_Product/Monitor-image/PCMonitor_Dell_1b.png', 'Image_Product/Monitor-image/PCMonitor_Dell_1c.png', 'Image_Product/Monitor-image/PCMonitor_Dell_1d.png', 'Image_Product/Monitor-image/PCMonitor_Dell_1e.png', '0000-00-00 00:00:00'),
('8_A06', 8, 'Dell Ultrasharp U2419HC', 6230000, '-Thương hiệu :Dell\r\n-Sản xuất tại :Trung Quốc\r\n-Kích thước :	\r\n    With stand (H x W x D): 34.84 - 47.84 x 53.85 x 16.5 cm\r\n    Without stand (H x W x D): 31.37 x 53.85 x 3.9 cm\r\n-Model: U2419HC\r\n-Màn', '-HDMI, Displayport, USB 3.0, USB C', 'Image/Image_Product/Monitor-image/PCMonitor_Dell_2a.png', 'Image/Image_Product/Monitor-image/PCMonitor_Dell_2b.png', 'Image/Image_Product/Monitor-image/PCMonitor_Dell_2c.png', 'Image/Image_Product/Monitor-image/PCMonitor_Dell_2d.png', 'Image/Image_Product/Monitor-image/PCMonitor_Dell_2e.png', '0000-00-00 00:00:00'),
('8_A07', 8, 'SamSung LC49RG90SSE - 49in cong 2K 120Hz', 42989000, '-Kích Thước Màn Hình : 48.8\"\r\n-Dạng Màn Hình : Cong ( Curved ) 1800R\r\n-Độ Phân Giải : 5120 x 1440\r\n-Tỷ Lệ Khung Hình : 32 : 9\r\n-Tấm Nền : VA\r\n-Thời Gian Đáp Ứng : 4 (GTG)\r\n-Tần Số Quét : 120Hz\r\n-Độ Sá', '-Cổng mở rộng: 4 x USB 2.0\r\n-Cổng xuất hình: 1 x HDMI 2.0 , 2 x DisplayPort 1.4  ', 'Image_Product/Monitor-image/PCMonitor_Samsung_1a.png', 'Image_Product/Monitor-image/PCMonitor_Samsung_1b.png', 'Image_Product/Monitor-image/PCMonitor_Samsung_1c.png', 'Image_Product/Monitor-image/PCMonitor_Samsung_1d.png', 'Image_Product/Monitor-image/PCMonitor_Samsung_1e.png', '0000-00-00 00:00:00'),
('8_A08', 8, 'SamSung LS34J550 - 34in 2k', 14989000, '-Screen Size (Inch):34.1\r\n-Flat / Curved	Flat\r\n-Active Display Size (HxV) (mm)	799.8 x 334.8 mm\r\n-Tỷ lệ khung hình:21:9\r\n-Tấm nền:VA\r\n-Độ sáng:300cd/m2\r\n-Độ sáng (Tối thiểu):250cd/m2\r\n-Contrast Ratio ', '-Display Port: 1 x DP 1.2\r\n-HDMI: 1 x HDMI 2.0; 1 x HDMI 1.4\r\n', 'Image/Image_Product/Monitor-image/PCMonitor_Samsung_2a.png', 'Image/Image_Product/Monitor-image/PCMonitor_Samsung_2b.png', 'Image/Image_Product/Monitor-image/PCMonitor_Samsung_2c.png', 'Image/Image_Product/Monitor-image/PCMonitor_Samsung_2d.png', 'Image/Image_Product/Monitor-image/PCMonitor_Samsung_2e.png', '0000-00-00 00:00:00'),
('8_A09', 8, 'LG UltraGear 27GL850 Nano IPS 144Hz', 16000000, '-Kích thước màn hình :	27-inch\r\n-Độ phân giải :	QHD 2560 x 1440\r\n-Tỉ lệ màn hình :16:9\r\n-Góc nhìn :178˚(R/L), 178˚(U/D)\r\n-Mật độ điểm ảnh ( PPI ) :109 ppi\r\n-Độ sáng :350cd (Điển hình)/280cd (Tối thiểu', '-HDMI: 	2 x HDMI 2.0\r\n-USB 3.0 :	\r\n    2 x USB 3.0 (downstream)\r\n    1 x USB 3.0 (upstream)\r\n', 'Image/Image_Product/Monitor-image/PCMonitor_LG_1a.png', 'Image/Image_Product/Monitor-image/PCMonitor_LG_1b.png', 'Image/Image_Product/Monitor-image/PCMonitor_LG_1c.png', 'Image/Image_Product/Monitor-image/PCMonitor_LG_1d.png', 'Image/Image_Product/Monitor-image/PCMonitor_LG_1e.png', '0000-00-00 00:00:00'),
('8_A010', 8, 'LG 34GL750 34inch IPS 144Hz cong', 14990000, '-Kích thước màn hình :	34-inch cong\r\n-Độ phân giải :	UWFHD 2560 x 1080\r\n-Tỉ lệ màn hình :21:9\r\n-Góc nhìn :178º (R/L), 178º (U/D)\r\n-Độ sáng :300cd (typ) / 240cd (Min)\r\n-Tấm nền :IPS Haze 1%, 3H\r\n-Kích ', '-Displayport ver 1.2 	\r\n-HDMI :2 x HDMI 2.0\r\n-3.5mm 	', 'Image/Image_Product/Monitor-image/PCMonitor_LG_2a.png', 'Image/Image_Product/Monitor-image/PCMonitor_LG_2b.png', 'Image/Image_Product/Monitor-image/PCMonitor_LG_2c.png', 'Image/Image_Product/Monitor-image/PCMonitor_LG_2d.png', 'Image/Image_Product/Monitor-image/PCMonitor_LG_2e.png', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbradiatorslist`
--

DROP TABLE IF EXISTS `tbradiatorslist`;
CREATE TABLE IF NOT EXISTS `tbradiatorslist` (
  `idProduct` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
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
  `DateIn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idProduct`),
  KEY `tblistclass` (`idClass`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `tbradiatorslist`
--

INSERT INTO `tbradiatorslist` (`idProduct`, `idClass`, `nameProduct`, `rate`, `CPU Socket`, `Kích thước`, `Tốc độ`, `Số lượng`, `Kích thước vật lý`, `Nguồn vào`, `Áp suất không khí`, `Dòng không khí`, `Độ ồn`, `Đầu cắm`, `Độ bền`, `Phân loại tản nhiệt`, `photo1`, `photo2`, `photo3`, `photo4`, `photo5`, `DateIn`) VALUES
('2_A01', 2, 'Cooler Master Wraith Ripper AMD TR4', 3740000, 'TR4', '150 x 132.3 x 160.5 mm', '0-2750 RPM (PWM) ± 10%', NULL, '120 x 120 x 25 mm', '12V DC 0.45 A', NULL, '76.4 CFM (Max)', '', '4-Pin (PWM)', '0 - 38 dBA', 'Tản nhiệt khí', 'image\\Image_Product\\Radiator_image\\Air_Cooler Master Wraith Ripper AMD TR4.png', 'image\\Image_Product\\Radiator_image\\Air_Cooler Master Wraith Ripper AMD TR4 (2).png', 'image\\Image_Product\\Radiator_image\\Air_Cooler Master Wraith Ripper AMD TR4 (3).png', 'image\\Image_Product\\Radiator_image\\Air_Cooler Master Wraith Ripper AMD TR4 (4).png', 'image\\Image_Product\\Radiator_image\\Air_Cooler Master Wraith Ripper AMD TR4 (5).png', '0000-00-00 00:00:00'),
('2_A02', 2, 'Corsair A500 Dual Fan CPU Cooler', 2900000, 'Socket', '144mm x 169mm x 171mm', '2400 RPM', '2', '120mm x 120mm x 25mm', NULL, '4.2 mm-H2O', NULL, '36 dBA', NULL, NULL, 'Tản nhiệt khí', 'image\\Image_Product\\Radiator_image\\Air_Corsair A500 Dual Fan CPU Cooler.png', 'image\\Image_Product\\Radiator_image\\Air_Corsair A500 Dual Fan CPU Cooler (2).png', 'image\\Image_Product\\Radiator_image\\Air_Corsair A500 Dual Fan CPU Cooler (3).png', 'image\\Image_Product\\Radiator_image\\Air_Corsair A500 Dual Fan CPU Cooler (4).png', 'image\\Image_Product\\Radiator_image\\Air_Corsair A500 Dual Fan CPU Cooler (5).png', '0000-00-00 00:00:00'),
('2_A03', 2, 'DeepCool Assassin V3', 2250000, 'Socket', '161 x 140 x 165 mm', '400~1400 RPM', NULL, '140 x 140 x 25 mm', NULL, '1.79 mmAq', '90.37 CFM', '≤34.2 dB(A)', '4-pin PWM', '', 'Tản nhiệt khí', 'image\\Image_Product\\Radiator_image\\Air_DeepCool Assassin V3.jpg', 'image\\Image_Product\\Radiator_image\\Air_DeepCool Assassin V3 (2).jpg', 'image\\Image_Product\\Radiator_image\\Air_DeepCool Assassin V3 (3).jpg', 'image\\Image_Product\\Radiator_image\\Air_DeepCool Assassin V3 (4).jpg', 'image\\Image_Product\\Radiator_image\\Air_DeepCool Assassin V3 (5).jpg', '0000-00-00 00:00:00'),
('2_A04', 2, 'ASUS ROG Ryujin 240 RGB AIO Liquid CPU Cooler', 5990000, NULL, '120 x 120 x 25 mm', NULL, NULL, NULL, NULL, '3.94 mmH2O', NULL, '29.7 dB(A) ', NULL, NULL, 'Tản nhiệt nước', 'image\\Image_Product\\Radiator_image\\Liquid_ASUS ROG Ryujin 240 RGB AIO Liquid CPU Cooler.jpg', 'image\\Image_Product\\Radiator_image\\Liquid_ASUS ROG Ryujin 240 RGB AIO Liquid CPU Cooler (4).jpg', NULL, NULL, NULL, '2020-07-06 08:23:53');

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
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
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
  UNIQUE KEY `EMAIL_2` (`email`),
  KEY `ADDRESS` (`Address`),
  KEY `IDUser` (`IDUser`),
  KEY `IDUser_3` (`IDUser`),
  KEY `EMAIL` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `tbusers`
--

INSERT INTO `tbusers` (`IDUser`, `email`, `PASSWORD`, `ROLE`, `FULLNAME`, `Address`, `PHONE`, `GENDER`, `DOB`, `PROVINCE`, `JOIN-DATE`) VALUES
(2, 'thanhtan.scout@gmail.com', '12345678', 1, 'Trần Thanh Tân', '1234567890', '0987654321', 1, NULL, 'HCM', '0000-00-00 00:00:00'),
(3, 'tbtram206@gmail.com', 'tranthanhtanyeu', 0, 'TrÆ°Æ¡ng Báº£o TrÃ¢m', '75 ThÃ nh ThÃ¡i', '0917182943', 0, NULL, 'HCM', '0000-00-00 00:00:00'),
(4, 'tranhoa@gmail.com', '12345678', 0, 'Trần Hòa', '580 CÃ¡ch Máº¡ng ThÃ¡ng 8', '0909132456', 1, NULL, 'HCM', '0000-00-00 00:00:00'),
(5, 'nguyenthiphuonghuyen5755@gmail.com', '12345678', 0, 'Nguyễn Thị Phương Huyền', '580 CMT 8', '0908123456', NULL, NULL, '', '0000-00-00 00:00:00');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `order_id_item` FOREIGN KEY (`order_id`) REFERENCES `orders_item` (`order_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

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
