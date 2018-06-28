-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2018 at 08:24 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` int(11) NOT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(65) DEFAULT NULL,
  `isAdmin` tinyint(1) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `username`, `password`, `isAdmin`, `email`) VALUES
(5, 'thanh3', 'f4bf9f7fcbedaba0392f108c59d8f4a38b3838efb6487', 0, 'asdsad'),
(6, 'thanh4', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 1, '123456'),
(7, 'thanh5', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 0, '1'),
(8, 'thanh6', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 0, '1'),
(11, 'thanh7', '6b51d431df5d7f141cbececcf79edf3dd861c3b4069f0b11661a3eefacbba918', 0, '12452123'),
(12, 'thanh8', '481f6cc0511143ccdd7e2d1b1b94faf0a700a8b49cd13922a70b5ae28acaa8c5', 0, '147'),
(13, 'thanh', 'ca978112ca1bbdcafac231b39a23dc4da786eff8147c4e72b9807785afee48bb', 1, 'd');

-- --------------------------------------------------------

--
-- Table structure for table `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `MaHoaDon` int(11) NOT NULL,
  `IdKH` int(11) NOT NULL,
  `TongTien` int(11) NOT NULL,
  `TinhTrang` int(11) NOT NULL,
  `NgayMua` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hangxe`
--

CREATE TABLE `hangxe` (
  `Id` int(11) NOT NULL,
  `TenHang` text NOT NULL,
  `Pic` text NOT NULL,
  `isHide` tinyint(4) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hangxe`
--

INSERT INTO `hangxe` (`Id`, `TenHang`, `Pic`, `isHide`) VALUES
(8, 'BMW', '1530158866829_1.png', 0),
(9, 'Mercedes-Benz', '1530158917758_1530155508275_4.png', 0),
(10, 'ferrari', '1530159019669_1530155442902_2.png', 0),
(11, 'Volvo', '1530159032867_1530155458973_3.png', 0),
(12, 'Audi', '1530159052885_1530155521554_5.png', 0),
(13, 'Huyndai', '1530159085356_1530155536383_6.png', 0),
(14, 'Peugeot', '1530159112212_1530155562962_7.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `hoadon`
--

CREATE TABLE `hoadon` (
  `MaHoaDon` int(11) NOT NULL,
  `IdSP` int(11) NOT NULL,
  `SL` int(11) NOT NULL,
  `DonGia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `Id` int(11) NOT NULL,
  `Ten` text NOT NULL,
  `Email` text NOT NULL,
  `SDT` text NOT NULL,
  `NgaySinh` date NOT NULL,
  `DiaChi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `loaixe`
--

CREATE TABLE `loaixe` (
  `Id` int(11) NOT NULL,
  `TenLoai` text NOT NULL,
  `isHide` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loaixe`
--

INSERT INTO `loaixe` (`Id`, `TenLoai`, `isHide`) VALUES
(1, 'SEDAN', 0),
(2, 'HATCHBACK', 0),
(3, 'MPV', 0),
(4, 'COUPE', 0);

-- --------------------------------------------------------

--
-- Table structure for table `picture`
--

CREATE TABLE `picture` (
  `Id` int(11) NOT NULL,
  `MaXe` int(11) DEFAULT NULL,
  `picture` tinytext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `picture`
--

INSERT INTO `picture` (`Id`, `MaXe`, `picture`) VALUES
(18, 20, '1530159335738_mercedes-gla-class-gla-200-tai-tphcm-1483722415-586fceaf9dd07.jpg'),
(19, 20, '1530159335741_mercedes-gla-class-gla-200-tai-tphcm-1483722415-586fceaf45c52.jpg'),
(20, 20, '1530159335740_mercedes-gla-class-gla-200-tai-tphcm-1483722415-586fceaf45c52(1).jpg'),
(21, 20, '1530159335741_mercedes-gla-class-gla-200-tai-tphcm-1483722415-586fceaf85f83.jpg'),
(22, 21, '1530160122274_mercedes-glc-300-4matic-tai-tphcm-1483721120-586fc9a05ce0b.jpg'),
(23, 21, '1530160122278_mercedes-glc-300-4matic-tai-tphcm-1483721120-586fc9a053d27.jpg'),
(24, 21, '1530160122280_mercedes-glc-300-4matic-tai-tphcm-1483721120-586fc9a055ba0.jpg'),
(25, 22, '1530160413328_mercedes-gle-class-450-amg-coupe-4matic-tai-haxaco-vo-van-kiet-1483805055-5871117fc4b94.jpg'),
(26, 22, '1530160413329_mercedes-gle-class-450-amg-coupe-4matic-tai-haxaco-vo-van-kiet-1483805056-587111806c784.jpg'),
(27, 22, '1530160413331_mercedes-gle-class-450-amg-coupe-4matic-tai-haxaco-vo-van-kiet-1483805056-587111806cb1a.jpg'),
(28, 23, '1530160597109_mercedes-c-class-c200-1483459645-586bcc3da9ae8.jpg'),
(29, 23, '1530160597110_mercedes-c-class-c200-1483459657-586bcc493ef6b.jpg'),
(30, 23, '1530160597112_mercedes-c-class-c200-1483459657-586bcc4937259.jpg'),
(31, 24, '1530161196293_mercedes-gle-class-400-coupe-4matic-tai-tphcm.jpg'),
(32, 24, '1530161196294_mercedes-gle-class-400-coupe-4matic-tai-tphcm-1483803938-58710d223e580.jpg'),
(33, 24, '1530161196296_mercedes-gle-class-400-coupe-4matic-tai-tphcm-1483803938-58710d224fe94.jpg'),
(34, 24, '1530161196299_mercedes-gle-class-400-coupe-4matic-tai-tphcm-1483803938-58710d2245e1c.jpg'),
(35, 25, '1530161420647_audi-a4-2-0l-tfsi-7at-1514393024-5a43cdc0ef11e.jpg'),
(36, 25, '1530161420650_audi-a4-2-0l-tfsi-7at-1514393025-5a43cdc1110e1.jpg'),
(37, 25, '1530161420649_audi-a4-2-0l-tfsi-7at-1514393024-5a43cdc0ef123.jpg'),
(38, 25, '1530161420652_audi-a4-2-0l-tfsi-7at-1514393025-5a43cdc108804.jpg'),
(39, 26, '1530161700621_audi-tt-coupe-2-0l-tfsi-6at.jpg'),
(40, 26, '1530161700623_audi-tt-coupe-2-0l-tfsi-6at-1481301713-584aded1baf64.jpg'),
(41, 26, '1530161700622_audi-tt-coupe-2-0l-tfsi-6at-1481301713-584aded1b6ed8.jpg'),
(42, 27, '1530161910477_audi-q3-2-0l-tfsi-7at-1481300231-584ad907369d1.jpg'),
(43, 27, '1530161910478_audi-q3-2-0l-tfsi-7at-1481300231-584ad907984b8.jpg'),
(44, 27, '1530161910477_audi-q3-2-0l-tfsi-7at-1481300231-584ad907804a4.jpg'),
(45, 28, '1530162095576_audi-q2-1481299326-584ad57e19d32(1).jpg'),
(46, 28, '1530162095575_audi-q2-1481299326-584ad57e5f1c0.jpg'),
(47, 28, '1530162095578_audi-q2-1481299326-584ad57e19d32.jpg'),
(48, 28, '1530162095579_audi-q2-1481299326-584ad57e10738.jpg'),
(49, 29, '1530162325246_audi-a8-l-4-0l-tfsi-quattro-8at-1481298648-584ad2d8a5f30.jpg'),
(50, 29, '1530162325247_audi-a8-l-4-0l-tfsi-quattro-8at-1481298648-584ad2d8afbc5.jpg'),
(51, 29, '1530162325248_audi-a8-l-4-0l-tfsi-quattro-8at-1481298648-584ad2d8b773b.jpg'),
(52, 30, '1530162547873_audi-q7-2-0l-tfsi-quattro-8at-1481301415-584adda72bdf8.jpg'),
(53, 30, '1530162547875_audi-q7-2-0l-tfsi-quattro-8at-1481301415-584adda74ca71.jpg'),
(54, 30, '1530162547875_audi-q7-2-0l-tfsi-quattro-8at-1481301415-584adda762f12.jpg'),
(55, 31, '1530162894444_hyundai-accent-2018.jpg'),
(56, 31, '1530162894445_hyundai-accent-2018-1524274749-5ada963d182ff.jpg'),
(57, 31, '1530162894448_hyundai-accent-2018-1524274751-5ada963f4a1a8.jpg'),
(58, 32, '1530163166143_bmw-3-series-330i-1489040458-58c0f44a10247.jpg'),
(59, 32, '1530163166142_bmw-3-series-330i-1489040453-58c0f44598c81.jpg'),
(60, 32, '1530163166144_bmw-3-series-330i-1489040462-58c0f44ee5251.jpg'),
(61, 33, '1530163561920_bmw-3-series-320i-lci-phien-ban-100-nam-1489040262-58c0f3862ba0b.jpg'),
(62, 33, '1530163561925_bmw-3-series-320i-lci-phien-ban-100-nam-1489040263-58c0f387925c3.jpg'),
(63, 33, '1530163561929_bmw-3-series-320i-lci-phien-ban-100-nam-1489040264-58c0f3884bbc7.jpg'),
(64, 33, '1530163561931_bmw-3-series-320i-lci-phien-ban-100-nam-1489040265-58c0f3891c591.jpg'),
(65, 34, '1530163743669_bmw-1-series-118i-hatchback-2017-hoan-toan-moi-1489039999-58c0f27fc0b8c.jpg'),
(66, 34, '1530163743671_bmw-1-series-118i-hatchback-2017-hoan-toan-moi-1489040009-58c0f2892ab74.jpg'),
(67, 34, '1530163743672_bmw-1-series-118i-hatchback-2017-hoan-toan-moi-1489040016-58c0f2908d590.jpg'),
(68, 34, '1530163743673_bmw-1-series-118i-hatchback-2017-hoan-toan-moi-1489040039-58c0f2a7388da.jpg'),
(69, 35, '1530164028903_bmw-1-series-118i-hatchback-1480931896-58453a38b8498.jpg'),
(70, 35, '1530164028902_bmw-1-series-118i-hatchback-1480931896-58453a38b0d3d.jpg'),
(71, 35, '1530164028904_bmw-1-series-118i-hatchback-1480931896-58453a38514d9.jpg'),
(72, 36, '1530164206636_bmw-x1-sdrive18i-1480951407-5845866f137d1.jpg'),
(73, 36, '1530164206638_bmw-x1-sdrive18i-1480951415-584586772a583.jpg'),
(74, 36, '1530164206639_bmw-x1-sdrive18i-1480951415-5845867725d46.jpg'),
(75, 36, '1530164206640_bmw-x1-sdrive18i-1480951415-5845867730e2f.jpg'),
(76, 37, '1530164388137_bmw-7-series-730li-1480950775-584583f75a1c7.jpg'),
(77, 37, '1530164388139_bmw-7-series-730li-1480950775-584583f76d397.jpg'),
(78, 37, '1530164388140_bmw-7-series-730li-1480950775-584583f703a8f.jpg'),
(79, 38, '1530164630909_ban-xe-volvo-v90.jpg'),
(80, 38, '1530164630912_ban-xe-volvo-v90-1514618760-5a473f884e608.jpg'),
(81, 38, '1530164630913_ban-xe-volvo-v90-1514618760-5a473f8864616.jpg'),
(82, 39, '1530164799492_volvo-xc60-momentum-mau-trang-ngoc-1497199731-593d7473d2f5a.jpg'),
(83, 39, '1530164799496_volvo-xc60-momentum-mau-trang-ngoc-1497199731-593d7473e7963.jpg'),
(84, 39, '1530164799500_volvo-xc60-momentum-mau-trang-ngoc-1497199731-593d7473f07cc.jpg'),
(85, 40, '1530165014342_volvo-xc60-mau-xanh-ngoc.jpg'),
(86, 40, '1530165014352_volvo-xc60-mau-xanh-ngoc-1497890420-5947fe743e67b.jpg'),
(87, 40, '1530165014343_volvo-xc60-mau-xanh-ngoc-1497890419-5947fe73a3c54.jpg'),
(88, 41, '1530165344112_volvo-xc60-momentum-mau-den-tuyen.png'),
(89, 41, '1530165344113_volvo-xc60-momentum-mau-den-tuyen-1497199000-593d719891cc3.jpg'),
(90, 41, '1530165344115_volvo-xc60-momentum-mau-den-tuyen-1497199000-593d7198805d9.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `Id` int(11) NOT NULL,
  `TenSP` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `HangXe` int(11) NOT NULL,
  `LoaiXe` int(11) NOT NULL,
  `MoTa` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ChiTiet` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `HinhAnh` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `GiaBan` int(11) NOT NULL,
  `LuotXem` int(11) NOT NULL DEFAULT '0',
  `SoLuong` int(11) NOT NULL,
  `SLBan` int(11) NOT NULL DEFAULT '0',
  `XuatXu` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `NgayNhap` date NOT NULL,
  `isHide` tinyint(4) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`Id`, `TenSP`, `HangXe`, `LoaiXe`, `MoTa`, `ChiTiet`, `HinhAnh`, `GiaBan`, `LuotXem`, `SoLuong`, `SLBan`, `XuatXu`, `NgayNhap`, `isHide`) VALUES
(20, 'Mercedes GLA', 9, 3, '<p>Cụm đ&egrave;n trước Bi-xenon t&iacute;ch hợp đ&egrave;n LED chiếu s&aacute;ng ban ng&agrave;y Đ&egrave;n b&aacute;o rẽ tr&ecirc;n gương chiếu hậu, cụm đ&egrave;n sau &amp; đ&egrave;n phanh thứ ba c&ocirc;ng nghệ LED Gương chiếu hậu chống ch&oacute;i tự động; gương chiếu hậu b&ecirc;n ngo&agrave;i chỉnh &amp; gập điện Chức năng ECO start/stop tự động ngắt động cơ khi xe tạm dừng; gi&uacute;p giảm thiểu ti&ecirc;u hao nhi&ecirc;u liệu &amp; kh&iacute; xả Hệ thống hỗ trợ đỗ xe chủ động Active parking assist t&iacute;ch hợp PARKTRONIC d&ograve; t&igrave;m kh&ocirc;ng gian đỗ xe ph&ugrave; hợp; tự động điều khiển tay l&aacute;i v&agrave; phanh để đưa xe v&agrave;o chỗ đỗ (cả trong trường hợp đỗ xe song song &amp; đỗ xe vu&ocirc;ng g&oacute;c)</p>\r\n', '<p>M&agrave;u ngoại thất: N&acirc;u</p>\r\n\r\n<p>M&agrave;u nội thất: X&aacute;m</p>\r\n\r\n<p>Số cửa: 5</p>\r\n\r\n<p>Số chỗ ngồi: 5</p>\r\n', '1530159219329_mercedes-gla-class-gla-200-tai-tphcm.jpg', 1520000000, 19, 10, 0, 'Mỹ', '2018-06-28', 0),
(21, 'Mercedes GLC', 9, 2, '<p>B&aacute;n xe MERCEDES-BENZ GLC 300 4MATIC Hệ thống hỗ trợ ph&ograve;ng ngừa va chạm COLLISION PREVENTION ASSIST PLUS với chức năng hỗ trợ tự động giảm tốc Hệ thống hỗ trợ đỗ xe chủ động Active parking assist t&iacute;ch hợp PARKTRONIC d&ograve; t&igrave;m kh&ocirc;ng gian đỗ xe ph&ugrave; hợp; tự động điều khiển tay l&aacute;i v&agrave; phanh để đưa xe v&agrave;o chỗ đỗ (cả trong trường hợp đỗ xe song song &amp; đỗ xe vu&ocirc;ng g&oacute;c)</p>\r\n', '<p>M&agrave;u ngoại thất: X&aacute;m</p>\r\n\r\n<p>M&agrave;u nội thất: x&aacute;m</p>\r\n\r\n<p>Số cửa: 5</p>\r\n\r\n<p>Số chỗ ngồi:5</p>\r\n\r\n<p>Hộp số: Số tự động</p>\r\n\r\n<p>Dẫn động: 4 B&aacute;nh</p>\r\n', '1530159891897_mercedes-glc-300-4matic-tai-tphcm-1483721120-586fc9a05e447.jpg', 2000000000, 3, 12, 0, 'Mỹ', '2018-06-28', 0),
(22, 'Mercedes GLE', 9, 3, '<p>Mercedes GLE Class 450 AMG Coup&eacute; 4Matic tại Haxaco V&otilde; Văn Kiệt giao xe ngay, nhiều m&agrave;u sắc, hỗ trợ vay ng&acirc;n h&agrave;ng</p>\r\n', '<p>M&agrave;u ngoại thất:Đỏ</p>\r\n\r\n<p>M&agrave;u nội thất: Bạc</p>\r\n\r\n<p>Số cửa: 5</p>\r\n\r\n<p>Số chỗ ngồi: 4</p>\r\n\r\n<p>Hộp số: Số tự động</p>\r\n\r\n<p>Dẫn động: RFD-Cầu sau</p>\r\n', '1530160349901_mercedes-gle-class-450-amg-coupe-4matic-tai-haxaco-vo-van-kiet-1483805056-587111806f20d.jpg', 2147483647, 4, 10, 0, 'Mỹ', '2018-06-28', 0),
(23, 'Mercedes C200', 9, 1, '<p>Mercedes GLE Class 450 AMG Coup&amp;eacute; 4Matic tại Haxaco V&amp;otilde; Văn Kiệt giao xe ngay, nhiều m&amp;agrave;u sắc, hỗ trợ vay ng&amp;acirc;n h&amp;agrave;ng<br />\r\n&nbsp;</p>\r\n', '<p>M&agrave;u ngoại thất:Trắng</p>\r\n\r\n<p>M&agrave;u nội thất: Đen</p>\r\n\r\n<p>Số cửa: 4</p>\r\n\r\n<p>Số chỗ ngồi: 5</p>\r\n\r\n<p>Hộp số: Số tay</p>\r\n\r\n<p>Dẫn động: FWD-Cầu trước</p>\r\n', '1530160575297_mercedes-c-class-c200-1483459657-586bcc4934bc1.jpg', 1479000000, 1, 12, 0, 'Mỹ', '2018-06-28', 0),
(24, 'Mercedes GLE 400', 9, 4, '<p>Mercedes GLE Class 400 Coup&eacute; 4Matic tại TpHCM gi&aacute; tốt tại TpHCM. Mercedes Haxaco tư vấn mua xe vay ng&acirc;n h&agrave;ng với l&atilde;i suất thấp</p>\r\n', '<p>M&agrave;u ngoại thất:Trắng</p>\r\n\r\n<p>M&agrave;u nội thất: Đen</p>\r\n\r\n<p>Số cửa: 5</p>\r\n\r\n<p>Số chỗ ngồi:5</p>\r\n', '1530161133119_mercedes-gle-class-400-coupe-4matic-tai-tphcm-1483803938-58710d2266988.jpg', 2147483647, 2, 12, 0, 'Mỹ', '2018-06-28', 0),
(25, 'Audi A4 2.0L TFSI', 12, 1, '<p>Sử dụng cơ sở gầm bệ MLB Evo của Audi giống như Q7 thế hệ mới, xe A4 2017 d&agrave;i hơn trước một ch&uacute;t - tăng từ 4.694mm l&ecirc;n 4.724mm. Với việc tăng k&iacute;ch thước cho xe, kh&ocirc;ng gian nội thất của chiếc sedan hạng sang cũng đ&atilde; được cải thiện kh&aacute; nhiều. Phần để ch&acirc;n cho h&agrave;ng ghế ph&iacute;a sau được tăng th&ecirc;m, tạo cảm gi&aacute;c thoải m&aacute;i cho h&agrave;nh kh&aacute;ch. Audi cho biết trọng lượng xe lại giảm tới 120kg, nhờ sử dụng nhiều th&eacute;p gia cường v&agrave; nh&ocirc;m trong kết cấu. Về thiết kế b&ecirc;n ngo&agrave;i của chiếc A4 ho&agrave;n to&agrave;n mới sở hữu đường n&eacute;t g&oacute;c cạnh mạnh mẽ, cụm đ&egrave;n pha dạng LED hoặc t&ugrave;y chọn LED ma trận. Cụm đ&egrave;n hậu dạng LED được thiết kế mỏng hơn v&agrave; ăn s&acirc;u v&agrave;o nắp khoang h&agrave;nh l&yacute; ph&iacute;a sau.<br />\r\nỞ b&ecirc;n trong, Audi A4 2017 được trang bị nhiều c&ocirc;ng nghệ cao hơn, như tuỳ chọn m&agrave;n h&igrave;nh LCD 12.3 inch thay cho cụm đồng hồ ti&ecirc;u chuẩn, cung cấp nhiều th&ocirc;ng tin hơn cho người l&aacute;i, từ tốc độ xe đến chức năng dẫn đường. Ngo&agrave;i ra, tr&ecirc;n cụm điều khiển trung t&acirc;m c&oacute; một m&agrave;n h&igrave;nh 8.3 inch hỗ trợ.<br />\r\nKhả năng kết nối của A4 thế hệ mới cũng kh&aacute; tốt, với hệ thống kết nối internet LTE tốc độ cao, kh&ocirc;ng chỉ l&agrave; cổng ph&aacute;t wifi cho tới 8 thiết bị, m&agrave; c&ograve;n tạo kết nối giữa t&agrave;i xế với xe th&ocirc;ng qua ứng dụng kết nối smartphone MMI của Audi. Về trang bị an to&agrave;n v&agrave; tiện nghi, xe A4 thế hệ mới sẽ c&oacute; hệ thống kiểm so&aacute;t h&agrave;nh tr&igrave;nh chủ động Stop&amp;Go với chức năng hỗ trợ tắc đường.<br />\r\n<br />\r\nAudi A4 2017 được trang bị hệ thống động cơ 2.0L TFSI, sản sinh c&ocirc;ng suất 190 m&atilde; lực, m&ocirc;-men xoắn cực đại 320 Nm, đi k&egrave;m hộp số 7 cấp S-Tronic v&agrave; hệ dẫn động 4 b&aacute;nh.<br />\r\n<br />\r\nAudi Việt Nam cho biết, tại thời điểm n&agrave;y A4 2017 đ&atilde; sẵn s&agrave;ng để b&agrave;n giao tới tay kh&aacute;ch h&agrave;ng. Audi A4 2017 sẽ tham gia ph&acirc;n kh&uacute;c c&oacute; sự cạnh tranh của c&aacute;c đối thủ như: BMW 3 Series hay Mercedes-Benz C-Class... &nbsp; ​<strong>Chịu tr&aacute;ch nhiệm c&aacute;c th&ocirc;ng tin từ tư vấn th&ocirc;ng tin của h&atilde;ng xe đến kh&aacute;ch h&agrave;ng theo quy tr&igrave;nh kh&eacute;p k&iacute;n nhằm đảm bảo quyền lợi kh&aacute;ch h&agrave;ng xem th&ocirc;ng tin từ k&ecirc;nh an to&agrave;n nhất.&nbsp;</strong>1. Cam kết: Kh&ocirc;ng đưa kh&aacute;ch h&agrave;ng gặp m&ocirc;i giới, c&ograve; l&aacute;i kh&ocirc;ng phải l&agrave; nh&acirc;n vi&ecirc;n h&atilde;ng xe.<br />\r\n2. Cam kết: Kh&ocirc;ng để t&igrave;nh trạng kh&aacute;ch h&agrave;ng bị nh&acirc;n vi&ecirc;n k&ecirc; gi&aacute; xe ảo kh&ocirc;ng đ&uacute;ng thực tế.<br />\r\n3. Cam kết: Cung cấp xe ch&iacute;nh h&atilde;ng từ h&atilde;ng xe giấy tờ xuất xứ l&aacute;p r&aacute;p hoặc nhập khẩu.<br />\r\n4. Cam kết: Th&ocirc;ng tin bảo mật của người mua xe - b&aacute;n xe th&ocirc;ng qua th&ocirc;ng tin n&agrave;y.<br />\r\n5. Cam kết: Th&ocirc;ng tin của qu&yacute; kh&aacute;ch đ&agrave;m ph&aacute;n sẽ được tr&iacute;ch lục nhằm n&acirc;ng cao chất lượng.<br />\r\n<strong>Quản l&yacute; th&ocirc;ng tin bởi: AutoZoom.vn | C&ocirc;ng ty TNHH Truyền Th&ocirc;ng Quảng C&aacute;o NQC</strong></p>\r\n', '<p>M&agrave;u ngoại thất:Xanh</p>\r\n\r\n<p>M&agrave;u nội thất: Đen</p>\r\n\r\n<p>Số cửa: 4</p>\r\n\r\n<p>Số chỗ ngồi: 4</p>\r\n', '1530161376445_audi-a4-2-0l-tfsi-7at.jpg', 1600000000, 3, 10, 0, 'Mỹ', '2018-06-28', 0),
(26, 'Audi TT Coupe 2.0L', 12, 4, '<p>Cụm đ&egrave;n trước Bi-xenon t&iacute;ch hợp đ&egrave;n LED chiếu s&aacute;ng ban ng&agrave;y Đ&egrave;n b&aacute;o rẽ tr&ecirc;n gương chiếu hậu, cụm đ&egrave;n sau &amp; đ&egrave;n phanh thứ ba c&ocirc;ng nghệ LED Gương chiếu hậu chống ch&oacute;i tự động; gương chiếu hậu b&ecirc;n ngo&agrave;i chỉnh &amp; gập điện Chức năng ECO start/stop tự động ngắt động cơ khi xe tạm dừng; gi&uacute;p giảm thiểu ti&ecirc;u hao nhi&ecirc;u liệu &amp; kh&iacute; xả Hệ thống hỗ trợ đỗ xe chủ động Active parking assist t&iacute;ch hợp PARKTRONIC d&ograve; t&igrave;m kh&ocirc;ng gian đỗ xe ph&ugrave; hợp; tự động điều khiển tay l&aacute;i v&agrave; phanh để đưa xe v&agrave;o chỗ đỗ (cả trong trường hợp đỗ xe song song &amp; đỗ xe vu&ocirc;ng g&oacute;c)</p>\r\n', '<p>M&agrave;u ngoại thất: Trắng</p>\r\n\r\n<p>M&agrave;u nội thất: Đen</p>\r\n\r\n<p>Số cửa: 2</p>\r\n\r\n<p>Số chỗ ngồi: 2</p>\r\n\r\n<p>Hộp số: Số tự động</p>\r\n\r\n<p>Dẫn động: FWD-Cầu trước</p>\r\n', '1530161584324_audi-tt-coupe-2-0l-tfsi-6at-1481301713-584aded1bf5be.jpg', 2147483647, 2, 12, 0, 'Mỹ', '2018-06-28', 0),
(27, 'Audi Q3 2.0L', 12, 3, '<p>Cụm đ&egrave;n trước Bi-xenon t&iacute;ch hợp đ&egrave;n LED chiếu s&aacute;ng ban ng&agrave;y Đ&egrave;n b&aacute;o rẽ tr&ecirc;n gương chiếu hậu, cụm đ&egrave;n sau &amp; đ&egrave;n phanh thứ ba c&ocirc;ng nghệ LED Gương chiếu hậu chống ch&oacute;i tự động; gương chiếu hậu b&ecirc;n ngo&agrave;i chỉnh &amp; gập điện Chức năng ECO start/stop tự động ngắt động cơ khi xe tạm dừng; gi&uacute;p giảm thiểu ti&ecirc;u hao nhi&ecirc;u liệu &amp; kh&iacute; xả Hệ thống hỗ trợ đỗ xe chủ động Active parking assist t&iacute;ch hợp PARKTRONIC d&ograve; t&igrave;m kh&ocirc;ng gian đỗ xe ph&ugrave; hợp; tự động điều khiển tay l&aacute;i v&agrave; phanh để đưa xe v&agrave;o chỗ đỗ (cả trong trường hợp đỗ xe song song &amp; đỗ xe vu&ocirc;ng g&oacute;c)</p>\r\n', '<p>M&agrave;u ngoại thất: V&agrave;ng</p>\r\n\r\n<p>M&agrave;u nội thất: Đen</p>\r\n\r\n<p>Số cửa: 5</p>\r\n\r\n<p>Số chỗ ngồi: 5</p>\r\n\r\n<p>Hộp số: Số tay</p>\r\n\r\n<p>&nbsp;Dẫn động: Cụm đ&egrave;n trước Bi-xenon t&iacute;ch hợp đ&egrave;n LED chiếu s&aacute;ng ban ng&agrave;y Đ&egrave;n b&aacute;o rẽ tr&ecirc;n gương chiếu hậu, cụm đ&egrave;n sau &amp; đ&egrave;n phanh thứ ba c&ocirc;ng nghệ LED Gương chiếu hậu chống ch&oacute;i tự động; gương chiếu hậu b&ecirc;n ngo&agrave;i chỉnh &amp; gập điện Chức năng ECO start/stop tự động ngắt động cơ khi xe tạm dừng; gi&uacute;p giảm thiểu ti&ecirc;u hao nhi&ecirc;u liệu &amp; kh&iacute; xả Hệ thống hỗ trợ đỗ xe chủ động Active parking assist t&iacute;ch hợp PARKTRONIC d&ograve; t&igrave;m kh&ocirc;ng gian đỗ xe ph&ugrave; hợp; tự động điều khiển tay l&aacute;i v&agrave; phanh để đưa xe v&agrave;o chỗ đỗ (cả trong trường hợp đỗ xe song song &amp; đỗ xe vu&ocirc;ng g&oacute;c)<br />\r\nRFD-Cầu sau</p>\r\n', '1530161844166_audi-q3-2-0l-tfsi-7at-1481300231-584ad90744196.jpg', 1900000000, 0, 12, 0, 'Mỹ', '2018-06-28', 0),
(28, 'Audi Q2 1.4 TFSi', 12, 3, '<p>Cụm đ&egrave;n trước Bi-xenon t&iacute;ch hợp đ&egrave;n LED chiếu s&aacute;ng ban ng&agrave;y Đ&egrave;n b&aacute;o rẽ tr&ecirc;n gương chiếu hậu, cụm đ&egrave;n sau &amp; đ&egrave;n phanh thứ ba c&ocirc;ng nghệ LED Gương chiếu hậu chống ch&oacute;i tự động; gương chiếu hậu b&ecirc;n ngo&agrave;i chỉnh &amp; gập điện Chức năng ECO start/stop tự động ngắt động cơ khi xe tạm dừng; gi&uacute;p giảm thiểu ti&ecirc;u hao nhi&ecirc;u liệu &amp; kh&iacute; xả Hệ thống hỗ trợ đỗ xe chủ động Active parking assist t&iacute;ch hợp PARKTRONIC d&ograve; t&igrave;m kh&ocirc;ng gian đỗ xe ph&ugrave; hợp; tự động điều khiển tay l&aacute;i v&agrave; phanh để đưa xe v&agrave;o chỗ đỗ (cả trong trường hợp đỗ xe song song &amp; đỗ xe vu&ocirc;ng g&oacute;c)</p>\r\n', '<p>M&agrave;u ngoại thất: Đỏ</p>\r\n\r\n<p>M&agrave;u nội thất: Đen</p>\r\n\r\n<p>Số cửa: 4</p>\r\n\r\n<p>Số chỗ ngồi: 5</p>\r\n', '1530162031299_audi-q2-1481299326-584ad57e67ed6.jpg', 1500000000, 0, 12, 0, 'Mỹ', '2018-06-28', 0),
(29, 'Audi A8 L 4.0L ', 12, 1, '<p>Cụm đ&egrave;n trước Bi-xenon t&iacute;ch hợp đ&egrave;n LED chiếu s&aacute;ng ban ng&agrave;y Đ&egrave;n b&aacute;o rẽ tr&ecirc;n gương chiếu hậu, cụm đ&egrave;n sau &amp; đ&egrave;n phanh thứ ba c&ocirc;ng nghệ LED Gương chiếu hậu chống ch&oacute;i tự động; gương chiếu hậu b&ecirc;n ngo&agrave;i chỉnh &amp; gập điện Chức năng ECO start/stop tự động ngắt động cơ khi xe tạm dừng; gi&uacute;p giảm thiểu ti&ecirc;u hao nhi&ecirc;u liệu &amp; kh&iacute; xả Hệ thống hỗ trợ đỗ xe chủ động Active parking assist t&iacute;ch hợp PARKTRONIC d&ograve; t&igrave;m kh&ocirc;ng gian đỗ xe ph&ugrave; hợp; tự động điều khiển tay l&aacute;i v&agrave; phanh để đưa xe v&agrave;o chỗ đỗ (cả trong trường hợp đỗ xe song song &amp; đỗ xe vu&ocirc;ng g&oacute;c)<br />\r\n&nbsp;</p>\r\n', '<p>M&agrave;u ngoại thất: Đen</p>\r\n\r\n<p>M&agrave;u nội thất: Đen</p>\r\n\r\n<p>Số cửa: 4</p>\r\n\r\n<p>Số chỗ ngồi: 4</p>\r\n\r\n<p>Hộp số: Số tay</p>\r\n\r\n<p>Dẫn động: FWD-Cầu trước</p>\r\n', '1530162282336_audi-a8-l-4-0l-tfsi-quattro-8at-1481298653-584ad2dd1a751.jpg', 5700000, 1, 10, 0, 'Mỹ', '2018-06-28', 0),
(30, 'Audi Q7 2.0L TFSI', 12, 3, '<p>Cụm đ&egrave;n trước Bi-xenon t&iacute;ch hợp đ&egrave;n LED chiếu s&aacute;ng ban ng&agrave;y Đ&egrave;n b&aacute;o rẽ tr&ecirc;n gương chiếu hậu, cụm đ&egrave;n sau &amp; đ&egrave;n phanh thứ ba c&ocirc;ng nghệ LED Gương chiếu hậu chống ch&oacute;i tự động; gương chiếu hậu b&ecirc;n ngo&agrave;i chỉnh &amp; gập điện Chức năng ECO start/stop tự động ngắt động cơ khi xe tạm dừng; gi&uacute;p giảm thiểu ti&ecirc;u hao nhi&ecirc;u liệu &amp; kh&iacute; xả Hệ thống hỗ trợ đỗ xe chủ động Active parking assist t&iacute;ch hợp PARKTRONIC d&ograve; t&igrave;m kh&ocirc;ng gian đỗ xe ph&ugrave; hợp; tự động điều khiển tay l&aacute;i v&agrave; phanh để đưa xe v&agrave;o chỗ đỗ (cả trong trường hợp đỗ xe song song &amp; đỗ xe vu&ocirc;ng g&oacute;c)<br />\r\n&nbsp;</p>\r\n', '<p>M&agrave;u ngoại thất: Bạc</p>\r\n\r\n<p>M&agrave;u nội thất: Đen</p>\r\n\r\n<p>Số cửa: 4</p>\r\n\r\n<p>Số chỗ ngồi: 5</p>\r\n', '1530162487438_audi-q7-2-0l-tfsi-quattro-8at-1481301415-584adda705199.jpg', 2147483647, 0, 10, 0, 'Mỹ', '2018-06-28', 0),
(31, 'Hyundai Accent 2018', 13, 1, '<p><strong>Hyundai Th&agrave;nh C&ocirc;ng vừa mới ra mắt mẫu xe Hyundai Accent 2018 tại Việt Nam. V&agrave; mẫu xe n&agrave;y được đ&aacute;nh gi&aacute; l&agrave; đầy đủ c&aacute;c tiện &iacute;ch an to&agrave;n cũng như t&iacute;nh năng tr&ecirc;n xe so với c&aacute;c mẫu xe c&ugrave;ng ph&acirc;n kh&uacute;c. Kiểu d&aacute;ng th&igrave; rất đẹp, theo như đ&aacute;nh gi&aacute; cảm nhận của THU&Yacute; NGA th&igrave; mẫu xe Hyundai Accent 2018 sẽ hấp dẫn với anh chị đang c&oacute; nhu cầu t&igrave;m hiểu chiếc xe n&agrave;y.&nbsp;</strong><br />\r\n<strong>1 - TH&Ocirc;NG TIN ĐẶT MUA&nbsp;</strong><br />\r\n<strong># Gi&aacute; b&aacute;n ch&iacute;nh thức:</strong>&nbsp;<strong>425000000 VNĐ</strong>&nbsp;(Đ&atilde; bao gồm VAT)<br />\r\n<strong># Khuyến m&atilde;i - Qu&agrave; tặng:&nbsp;</strong>Giảm 20 triệu,...<br />\r\n=&gt; Anh Chị vui l&ograve;ng li&ecirc;n hệ để được b&aacute;o gi&aacute; ch&iacute;nh x&aacute;c v&igrave; chương tr&igrave;nh b&aacute;n h&agrave;ng mỗi th&aacute;ng mỗi kh&aacute;c nhau. THU&Yacute; NGA sẽ b&aacute;o ch&iacute;nh x&aacute;c tuỳ theo từng thời điểm để anh chị dễ d&agrave;ng đặt mua.<br />\r\n<strong># Anh Chị cần mua xe th&ocirc;ng qua đ&ograve;n bẩy t&agrave;i ch&iacute;nh ng&acirc;n h&agrave;ng chuẩn bị hồ sơ sau:</strong></p>\r\n\r\n<ul>\r\n	<li>Chứng minh nh&acirc;n d&acirc;n</li>\r\n	<li>Sổ hộ khẩu</li>\r\n	<li>...</li>\r\n</ul>\r\n', '<p><strong>M&agrave;u sắc đang b&aacute;n:&nbsp;</strong>Đen, đỏ, trắng, bạc, v&agrave;ng c&aacute;t, v&agrave;ng be<br />\r\n<strong># Th&ocirc;ng số cơ bản: &nbsp;</strong></p>\r\n\r\n<ul>\r\n	<li>D x R x C (mm): &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4,440 x 1,729 x 1,460</li>\r\n	<li>Chiều d&agrave;i cơ sở: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2,600</li>\r\n	<li>Hệ thống phanh trước/sau: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Đĩa/ Đĩa</li>\r\n	<li>Dung t&iacute;ch b&igrave;nh nhi&ecirc;n liệu: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;45 Lit</li>\r\n	<li>Dung t&iacute;ch xi lanh: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.353 cc</li>\r\n</ul>\r\n', '1530162797803_hyundai-accent-2018-1524274749-5ada963d32b96.jpg', 470000000, 3, 12, 0, 'Mỹ', '2018-06-28', 0),
(32, 'BMW 3 Series 330i', 8, 1, '<p>BMW 330i 2017 ho&agrave;n to&agrave;n mới. Gi&aacute; BMW 330i khuyến m&atilde;i v&agrave; nhiều qu&agrave; tặng gi&aacute; trị d&agrave;nh cho kh&aacute;ch h&agrave;ng mua xe đang chờ bạn. BMW 330i l&agrave; chiếc sedan hạng sang đứng đầu trong ph&acirc;n kh&uacute;c của n&oacute; nhiều năm liền tr&ecirc;n to&agrave;n thế giới. V&agrave; ở Việt Nam cũng kh&ocirc;ng phải ngoại lệ, sở hữu kiểu d&aacute;ng mạnh mẽ đầy c&aacute; t&iacute;nh với kiểu d&aacute;ng thể thao đậm chất BMW, BMW 330i lu&ocirc;n l&agrave; sự lựa chọn h&agrave;ng đầu mỗi khi kh&aacute;ch h&agrave;ng quan t&acirc;m đến chiếc sedan hạng sang d&agrave;nh cho gia đ&igrave;nh. Li&ecirc;n hệ: 0901.124.188. - ----------------------------------------------------. C&aacute;c trang bị c&oacute; tr&ecirc;n BMW 330i mới. - M&agrave;u sơn c&oacute; &aacute;nh kim. - Hệ thống &acirc;m thanh Hifi. - Camera chiếu hậu. - R&egrave;m che nắng ph&iacute;a sau. - G&oacute;i trang bị tiện &iacute;ch. - Chức năng runflat. - M&acirc;m hợp kim nan h&igrave;nh c&aacute;nh ng&ocirc;i sao kiểu 396 17&quot;. - Bọc nệm da. - Ốp nh&ocirc;m &aacute;nh bạc. - Hệ thống trợ lực l&aacute;i. - Hộp số tự động 8 cấp. - Hệ thống kiểm so&aacute;t cự ly đỗ xe (PDC) cảm biến sau (incl. In 9A2). - Viền cửa sổ ốp Aluminium b&oacute;ng. - Gương trong v&agrave; ngo&agrave;i xe tự điều chỉnh chống ch&oacute;i (incl. In 9A2). - Gương chiếu hậu trong xe tự điều chỉnh chống ch&oacute;i (incl. In 9A2). - Đ&egrave;n sương m&ugrave;. - Chức năng cảm biến mưa (incl. In 9A2). - Đ&egrave;n x&ecirc;-non. - Hệ thống đ&egrave;n nội &amp; ngoại thất. - Ghế trước chỉnh điện với chế độ nhớ. - Tựa tay giữa ở h&agrave;ng ghế ph&iacute;a sau. - Tay l&aacute;i t&iacute;ch hợp c&aacute;c chức năng phổ biến. - Tay l&aacute;i bọc da. - Hệ thống điều h&ograve;a điều chỉnh điện (incl. In 9A2). - Trang bị gạt t&agrave;n thuốc v&agrave; mồi lửa. - Bộ trang bị khoang h&agrave;nh l&yacute; (incl. In 9A2). - Tựa tay ph&iacute;a trước trượt được (incl. In 9A2). - Lỗ cắm điện c&ocirc;ng suất 12-volt (incl. In 9A2). - Đồng hồ hiển thị số km. - Chức năng kết nối điện thoại rảnh tay kết hợp cổng usb. - Chức năng đọc đĩa d&agrave;nh cho khu vực Ch&acirc;u &Aacute;. - Điều khiển s&oacute;ng &acirc;m thanh. - Chức năng tự động lock cửa khi xe vận h&agrave;nh. - --------------------------------------------------. Gi&aacute; &aacute;p dụng cho xe c&oacute; trang bị ti&ecirc;u chuẩn v&agrave; sẽ thay đổi nếu kh&aacute;ch h&agrave;ng chọn th&ecirc;m option. Vui l&ograve;ng gọi cho ch&uacute;ng t&ocirc;i để l&aacute;i thử ngay chiếc xe BMW 330i tuyệt vời n&agrave;y, nhận catalogue, b&aacute;o gi&aacute;, c&aacute;c chương tr&igrave;nh hỗ trợ gi&aacute;, khuyến m&atilde;i hấp dẫn. Rất mong nhận được phản hồi từ qu&yacute; kh&aacute;ch h&agrave;ng. Qu&yacute; kh&aacute;ch vui l&ograve;ng li&ecirc;n hệ với ch&uacute;ng t&ocirc;i để nghe c&aacute;c th&ocirc;ng tin tư vấn hữu &iacute;ch nhất. Ph&ograve;ng b&aacute;n h&agrave;ng v&agrave; tiếp thị sản phẩm: 0901.124.188 (Hotline trực 24/7). Tr&acirc;n trọng cảm ơn!</p>\r\n', '<p>M&agrave;u ngoại thất: N&acirc;u</p>\r\n\r\n<p>M&agrave;u nội thất: X&aacute;m</p>\r\n\r\n<p>Số cửa: 5&nbsp;</p>\r\n\r\n<p>Số chỗ ngồi: 5</p>\r\n\r\n<p>&nbsp;</p>\r\n', '1530163124152_bmw-3-series-330i-1489040431-58c0f42f49dae.jpg', 1700000000, 4, 10, 0, 'Mỹ', '2018-06-28', 0),
(33, 'BMW 3 Series 320i', 8, 1, '<p>BMW 320i LCI 2017 ho&agrave;n to&agrave;n mới - Gi&aacute; tốt nhất - Giao xe nhanh - Nhiều m&agrave;u lựa chọn - Hỗ trợ trả g&oacute;p. M&agrave;u sắc: M&agrave;u Trắng (V&agrave; c&ograve;n nhiều m&agrave;u lựa chọn kh&aacute;c nữa). Li&ecirc;n hệ: Đỗ Văn Quyết - 0901.124188. - ----------------------------------------------------. Th&ocirc;ng số kỹ thuật: - Động cơ/ Dung t&iacute;ch: I4/ 1.998 cc. - C&ocirc;ng suất cực đại: 135(184)/5.000 Kw(Hp)/rpm. - Momen xoắn cực đại: 270/1.250-4.500 Nm/rpm. - Hộp số: Tự động 8 cấp. - Thời gian tăng tốc từ 0-100 km/h: 7,3 gi&acirc;y. - K&iacute;ch thước D&agrave;i x Rộng x Cao: 4.633 x 2.031 x 1.429 mm. - Chiều d&agrave;i cơ sở: 2.810 mm. - Ph&acirc;n bố trọng lượng tối ưu 50: 50. C&aacute;c trang bị c&ocirc;ng nghệ: - Hệ thống c&aacute;c trang bị an to&agrave;n điện tử. - Nội thất bọc da cao cấp Sensatec. - Ch&igrave;a kh&oacute;a v&agrave; n&uacute;t khởi động th&ocirc;ng minh. - Hệ thống đ&egrave;n nội v&agrave; ngoại thất (563). - Bộ trang bị khoang h&agrave;nh l&yacute; (493). - Camera l&ugrave;i (3AG). - Hệ thống điều h&ograve;a tự động điều chỉnh điện (534). - Vỏ xe an to&agrave;n Run-Flat với chức năng cảnh b&aacute;o (258). - -----------------------------------------------. Trong qu&aacute; tr&igrave;nh t&igrave;m hiểu xe, nếu gặp bất cứ thắc mắc n&agrave;o li&ecirc;n quan đến th&ocirc;ng số kỹ thuật, gi&aacute; ch&iacute;nh thức, c&aacute;c chương tr&igrave;nh khuyến m&atilde;i, phương thức đặt xe, thanh to&aacute;n, trả g&oacute;p hay dịch vụ sau b&aacute;n xe... Vui l&ograve;ng li&ecirc;n hệ với ch&uacute;ng t&ocirc;i để được giải đ&aacute;p nhiệt t&igrave;nh v&agrave; chu đ&aacute;o. Đỗ Văn Quyết - 0901.124188 - Đại diện b&aacute;n h&agrave;ng BMW. Tr&acirc;n trọng cảm ơn!</p>\r\n', '<p>M&agrave;u ngoại thất: N&acirc;u</p>\r\n\r\n<p>M&agrave;u nội thất: X&aacute;m</p>\r\n\r\n<p>Số cửa: 5</p>\r\n\r\n<p>Số chỗ ngồi: 5</p>\r\n', '1530163481289_bmw-3-series-320i-lci-phien-ban-100-nam-1489040262-58c0f3863c67a.jpg', 1500000000, 3, 12, 0, 'Mỹ', '2018-06-28', 0),
(34, 'BMW 1 Series 118i', 8, 2, '<p>BMW 1 Series 118i 2017 ho&agrave;n to&agrave;n mới - Gi&aacute; tốt nhất - Giao xe nhanh - Nhiều m&agrave;u lựa chọn - Hỗ trợ trả g&oacute;p. M&agrave;u sắc: M&agrave;u Đỏ (V&agrave; c&ograve;n nhiều m&agrave;u lựa chọn kh&aacute;c nữa). Li&ecirc;n hệ: Đỗ Văn Quyết - 0901.124188.<br />\r\n- ----------------------------------------------------.<br />\r\nMW Series 1 5 cửa - vượt xa những giới hạn th&ocirc;ng thường. Cảm gi&aacute;c l&aacute;i linh hoạt v&agrave; dễ điều khiển với kiểu d&aacute;ng thể thao, hiện đại. Mặt trước của xe được thiết kế lại, lưới tản nhiệt đặc trưng kiểu BMW c&ugrave;ng với đ&egrave;n pha LED c&agrave;ng l&agrave;m nổi bật những n&eacute;t mạnh mẽ của chiếc BMW Series 1. Ở phần đu&ocirc;i xe, điểm thu h&uacute;t sự ch&uacute; &yacute; ch&iacute;nh l&agrave; dải đ&egrave;n LED h&igrave;nh chữ L hai phần. Nội thất được thiết kế theo nh&acirc;n trắc học, mang đến kh&ocirc;ng gian rộng r&atilde;i cho cả người l&aacute;i v&agrave; h&agrave;nh kh&aacute;ch. Cảm gi&aacute;c l&aacute;i c&agrave;ng được tối ưu hơn nữa với động cơ BMW TwinPower Turbo, gi&uacute;p động cơ vận h&agrave;nh hiệu quả song vẫn cực kỳ phấn kh&iacute;ch.</p>\r\n', '<p>&nbsp;Động cơ/ Dung t&iacute;ch: I3/ 1.499 cc.<br />\r\n- C&ocirc;ng suất cực đại: 100(136)/4.500-6.000 Kw(Hp)/rpm.<br />\r\n- Momen xoắn cực đại: 220/1.250-4.300 Nm/rpm.<br />\r\n- Hộp số: Tự động 8 cấp.<br />\r\n- Thời gian tăng tốc từ 0-100 km/h: 8,5 gi&acirc;y.<br />\r\n- K&iacute;ch thước D&agrave;i x Rộng x Cao: 4.329 x 1.984 x 1.440 mm.<br />\r\n- Chiều d&agrave;i cơ sở: 2.690 mm.</p>\r\n', '1530163703290_bmw-1-series-118i-hatchback-2017-hoan-toan-moi.jpg', 1300000000, 1, 10, 0, 'Mỹ', '2018-06-28', 0),
(35, 'BMW 1 Series 118i', 8, 2, '<p>Cụm đ&egrave;n trước Bi-xenon t&iacute;ch hợp đ&egrave;n LED chiếu s&aacute;ng ban ng&agrave;y Đ&egrave;n b&aacute;o rẽ tr&ecirc;n gương chiếu hậu, cụm đ&egrave;n sau &amp; đ&egrave;n phanh thứ ba c&ocirc;ng nghệ LED Gương chiếu hậu chống ch&oacute;i tự động; gương chiếu hậu b&ecirc;n ngo&agrave;i chỉnh &amp; gập điện Chức năng ECO start/stop tự động ngắt động cơ khi xe tạm dừng; gi&uacute;p giảm thiểu ti&ecirc;u hao nhi&ecirc;u liệu &amp; kh&iacute; xả Hệ thống hỗ trợ đỗ xe chủ động Active parking assist t&iacute;ch hợp PARKTRONIC d&ograve; t&igrave;m kh&ocirc;ng gian đỗ xe ph&ugrave; hợp; tự động điều khiển tay l&aacute;i v&agrave; phanh để đưa xe v&agrave;o chỗ đỗ (cả trong trường hợp đỗ xe song song &amp; đỗ xe vu&ocirc;ng g&oacute;c)</p>\r\n', '<p>M&agrave;u ngoại thất: N&acirc;u</p>\r\n\r\n<p>M&agrave;u nội thất: X&aacute;m</p>\r\n\r\n<p>Số cửa: 5</p>\r\n\r\n<p>Số chỗ ngồi: 5</p>\r\n', '1530163967764_bmw-1-series-118i-hatchback.jpg', 1300000000, 0, 12, 0, 'Mỹ', '2018-06-28', 0),
(36, 'BMW X1 sDrive18i', 8, 3, '<p>Cụm đ&egrave;n trước Bi-xenon t&iacute;ch hợp đ&egrave;n LED chiếu s&aacute;ng ban ng&agrave;y Đ&egrave;n b&aacute;o rẽ tr&ecirc;n gương chiếu hậu, cụm đ&egrave;n sau &amp; đ&egrave;n phanh thứ ba c&ocirc;ng nghệ LED Gương chiếu hậu chống ch&oacute;i tự động; gương chiếu hậu b&ecirc;n ngo&agrave;i chỉnh &amp; gập điện Chức năng ECO start/stop tự động ngắt động cơ khi xe tạm dừng; gi&uacute;p giảm thiểu ti&ecirc;u hao nhi&ecirc;u liệu &amp; kh&iacute; xả Hệ thống hỗ trợ đỗ xe chủ động Active parking assist t&iacute;ch hợp PARKTRONIC d&ograve; t&igrave;m kh&ocirc;ng gian đỗ xe ph&ugrave; hợp; tự động điều khiển tay l&aacute;i v&agrave; phanh để đưa xe v&agrave;o chỗ đỗ (cả trong trường hợp đỗ xe song song &amp; đỗ xe vu&ocirc;ng g&oacute;c)</p>\r\n', '<p>M&agrave;u ngoại thất: N&acirc;u</p>\r\n\r\n<p>M&agrave;u nội thất: X&aacute;m</p>\r\n\r\n<p>Số cửa: 5</p>\r\n\r\n<p>Số chỗ ngồi: 5</p>\r\n', '1530164149643_bmw-x1-sdrive18i.jpg', 1700000000, 2, 12, 0, 'Mỹ', '2018-06-28', 0),
(37, 'BMW 7 Series 730Li', 8, 1, '<p>Cụm đ&egrave;n trước Bi-xenon t&iacute;ch hợp đ&egrave;n LED chiếu s&aacute;ng ban ng&agrave;y Đ&egrave;n b&aacute;o rẽ tr&ecirc;n gương chiếu hậu, cụm đ&egrave;n sau &amp; đ&egrave;n phanh thứ ba c&ocirc;ng nghệ LED Gương chiếu hậu chống ch&oacute;i tự động; gương chiếu hậu b&ecirc;n ngo&agrave;i chỉnh &amp; gập điện Chức năng ECO start/stop tự động ngắt động cơ khi xe tạm dừng; gi&uacute;p giảm thiểu ti&ecirc;u hao nhi&ecirc;u liệu &amp; kh&iacute; xả Hệ thống hỗ trợ đỗ xe chủ động Active parking assist t&iacute;ch hợp PARKTRONIC d&ograve; t&igrave;m kh&ocirc;ng gian đỗ xe ph&ugrave; hợp; tự động điều khiển tay l&aacute;i v&agrave; phanh để đưa xe v&agrave;o chỗ đỗ (cả trong trường hợp đỗ xe song song &amp; đỗ xe vu&ocirc;ng g&oacute;c)</p>\r\n', '<p>M&agrave;u ngoại thất: N&acirc;u</p>\r\n\r\n<p>M&agrave;u nội thất: X&aacute;m</p>\r\n\r\n<p>Số cửa: 5</p>\r\n\r\n<p>Số chỗ ngồi: 5</p>\r\n', '1530164333736_bmw-7-series-730li-1480950774-584583f676a0c.jpg', 2147483647, 1, 10, 0, 'Mỹ', '2018-06-28', 0),
(38, 'Volvo V90', 11, 4, '<p>Volvo V90 Cross Country 2018 l&agrave; sự kết hợp của sự sang trọng, an to&agrave;n v&agrave; thực dụng. Xe sở hữu phong c&aacute;ch thiết kế đặc trưng của một chiếc Wagon vốn đang được đ&ocirc;ng đảo kh&aacute;ch h&agrave;ng tại ch&acirc;u &Acirc;u y&ecirc;u th&iacute;ch. Với V90 Volvo đ&atilde; hiện đ&atilde; c&oacute; 03 d&ograve;ng sản phẩm thuộc 90 Series ở c&aacute;c ph&acirc;n kh&uacute;c kh&aacute;c nhau gồm: XC90 &ndash; SUV, S90 &ndash; sedan v&agrave; V90 &ndash; wagon.<br />\r\nVề thiết kế b&ecirc;n ngo&agrave;i, Volvo V90 Cross Country c&oacute; những n&eacute;t tương đồng cơ bản với mẫu sedan S90 hiện đang được ph&acirc;n phối ch&iacute;nh h&atilde;ng tại thị trường Việt Nam. Điểm kh&aacute;c biết r&otilde; n&eacute;t nhất giữa S90 v&agrave; V90 c&oacute; lẽ l&agrave; ở thiết kế đu&ocirc;i xe mở rộng. Ph&aacute;t triển tr&ecirc;n nền tảng Scalable Platform Architecture (SPA) chung với d&ograve;ng SUV XC90 của Volvo, V90 Cross Country mang thiết kế trẻ trung. Về thiết kế b&ecirc;n ngo&agrave;i, Volvo V90 tạo điểm nhấn với lưới tản nhiệt l&otilde;m v&agrave; cụm đ&egrave;n pha LED Thor&rsquo;s Hammer h&igrave;nh chữ T tương tự mẫu S90<br />\r\nVolvo V90 Cross Country c&oacute; chiều d&agrave;i 4.939mm, rộng 1.503mm, cao 1.543mm v&agrave; chiều d&agrave;i cơ sở đạt 2.941mm. Do c&oacute; thiết kế Wagon n&ecirc;n V90 sở hữu khoảng duỗi ch&acirc;n ở h&agrave;ng 2 rất rộng. C&ugrave;ng với đ&oacute; l&agrave; kh&ocirc;ng gian chứa đồ ph&iacute;a sau lớn hơn những mẫu xe kh&aacute;c, đặc biệt l&agrave; khi gập phẳng h&agrave;ng ghế thứ 2 xuống. Kh&ocirc;ng chỉ c&oacute; vậy, khoảng s&aacute;ng gầm của V90 cũng cao hơn S90 khiến cho &ldquo;v&oacute;c d&aacute;ng&rdquo; b&ecirc;n ngo&agrave;i của V90 thanh tho&aacute;t hơn rất nhiều.<br />\r\nB&ecirc;n trong, Volvo V90 Cross Country 2018 được trang bị m&agrave;n h&igrave;nh hiển thị HUD, kiểm so&aacute;t h&agrave;nh tr&igrave;nh, m&agrave;n h&igrave;nh trung t&acirc;m giải tr&iacute; cảm ứng SENSUS 9 inch (c&oacute; thể điều khiển được gần như to&agrave;n bộ c&aacute;c t&iacute;nh năng tr&ecirc;n xe) t&iacute;ch hợp Apple CarPlay, ch&igrave;a kh&oacute;a th&ocirc;ng minh, ghế ch&iacute;nh điện, bảng điều khiển trung t&acirc;m v&agrave; ốp cửa bọc da, ghế bọc da Nappa, Hệ thống &acirc;m thanh tr&ecirc;n chiếc V90 Cross Country mới về Việt Nam l&agrave; loại Bowers &amp; Wilkins với 19 loa c&ocirc;ng suất l&ecirc;n đến 1400 Watt, thương hiệu loa nổi tiếng h&agrave;ng đầu đến từ Anh Quốc.<br />\r\nVovlo V90 Cross Country 2018 đầu ti&ecirc;n c&oacute; mặt tại Việt Nam được trang bị hệ thống động cơ 4 kỳ tăng &aacute;p, 4 xy-lanh thẳng h&agrave;ng, dung t&iacute;ch 2.0L, sản sinh c&ocirc;ng suất 320 m&atilde; lực tại 5.700 v&ograve;ng/ph&uacute;t, m&ocirc;-men xoắn cực đại 400 Nm tại 2.200 đến 5.400 v&ograve;ng/ph&uacute;t. Hệ thống động cơ n&agrave;y đi k&egrave;m hộp số cấp v&agrave; hệ dẫn động 4 b&aacute;nh to&agrave;n thời gian.<br />\r\nXe c&oacute; khả năng tăng tốc từ 0 đến 100 km/h trong v&ograve;ng 6,3 gi&acirc;y v&agrave; tốc độ tối đa đạt 230 km/h. Mức ti&ecirc;u hao nhi&ecirc;n liệu của V90 Cross Country do nh&agrave; sản xuất c&ocirc;ng bố l&agrave; 8.1L/100 km.<br />\r\nMột số t&igrave;nh năng an to&agrave;n được trang bị cho Volvo V90 Cross Country 2018 gồm: cảnh b&aacute;o va chạm, hộ trợ giữ l&agrave;n, cảnh b&aacute;o lệch l&agrave;n, 4 chế độ l&aacute;i, hỗ trợ l&ecirc;n/xuống dốc, camera l&ugrave;i, hỗ trợ đỗ xe tự động&hellip;</p>\r\n', '<p>M&agrave;u ngoại thất: N&acirc;u</p>\r\n\r\n<p>M&agrave;u nội thất: X&aacute;m</p>\r\n\r\n<p>Số cửa: 5</p>\r\n\r\n<p>Số chỗ ngồi: 5</p>\r\n', '1530164582853_ban-xe-volvo-v90-1514618760-5a473f885abb5.jpg', 2147483647, 2, 12, 0, 'Mỹ', '2018-06-28', 0),
(39, 'Volvo XC60 Momentum', 11, 3, '<p><strong>Volvo XC60 d&ograve;ng SUV</strong>&nbsp;5 chỗ nhỏ gọn to&aacute;t l&ecirc;n sự đơn giản trong thiết kế, tinh tế trong cảm nhận v&agrave; tiện nghi khi sử dụng. Trong ph&acirc;n kh&uacute;c d&ograve;ng SUV kh&ocirc;ng thể kh&ocirc;ng n&oacute;i đến c&aacute;c thương hiệu xe đ&atilde; quen thuộc tại Việt Nam như: &nbsp;BMW X3, Lexus NX 200T, Audi Q5, Mercedes GLC Class, th&igrave; Volvo XC60 nhẹ nh&agrave;ng lăn b&aacute;nh đứng cạnh v&agrave; đọ sức với c&aacute;c d&ograve;ng xe trong c&ugrave;ng ph&acirc;n kh&uacute;c.<br />\r\nVolvo XC60 tại Việt Nam (gi&aacute; b&aacute;n 1.960.000.000đ) đ&atilde; nhanh ch&oacute;ng trở th&agrave;nh qu&acirc;n b&agrave;i hạng mạnh với c&ocirc;ng nghệ. an to&agrave;n cao v&agrave; xuất sắc trong từng tiểu tiết.<br />\r\nĐối với c&aacute;c tay y&ecirc;u xe th&igrave; việc sở hữu một chiếc SUV hạng sang l&agrave; cả một niềm mơ ước, lại c&agrave;ng tuyệt vời hơn khi t&igrave;m hiểu cặn kẽ về t&iacute;nh năng đặc biệt của h&atilde;ng xe Volvo ti&ecirc;u biểu l&agrave; chiến binh Volvo XC60. Vậy chiến binh n&agrave;y đ&atilde; tạo n&ecirc;n điều thần th&aacute;nh g&igrave; m&agrave; khiến c&aacute;c h&atilde;ng xe kh&aacute;c phải tức tốc cạnh tranh để s&aacute;nh vai c&ugrave;ng anh ta?</p>\r\n', '<p>M&agrave;u ngoại thất: N&acirc;u</p>\r\n\r\n<p>M&agrave;u nội thất: X&aacute;m</p>\r\n\r\n<p>Số cửa: 5</p>\r\n\r\n<p>Số chỗ ngồi: 5</p>\r\n', '1530164754853_volvo-xc60-momentum-mau-trang-ngoc-1497199731-593d7473b41e1.jpg', 2000000000, 1, 12, 0, 'Mỹ', '2018-06-28', 0),
(40, 'Volvo XC60', 11, 3, '<p><strong>Volvo XC60 d&ograve;ng SUV</strong>&nbsp;5 chỗ nhỏ gọn to&aacute;t l&ecirc;n sự đơn giản trong thiết kế, tinh tế trong cảm nhận v&agrave; tiện nghi khi sử dụng. Trong ph&acirc;n kh&uacute;c d&ograve;ng SUV kh&ocirc;ng thể kh&ocirc;ng n&oacute;i đến c&aacute;c thương hiệu xe đ&atilde; quen thuộc tại Việt Nam như: &nbsp;BMW X3, Lexus NX 200T, Audi Q5, Mercedes GLC Class, th&igrave; Volvo XC60 nhẹ nh&agrave;ng lăn b&aacute;nh đứng cạnh v&agrave; đọ sức với c&aacute;c d&ograve;ng xe trong c&ugrave;ng ph&acirc;n kh&uacute;c.<br />\r\nVolvo XC60 tại Việt Nam (gi&aacute; b&aacute;n 1.960.000.000đ) đ&atilde; nhanh ch&oacute;ng trở th&agrave;nh qu&acirc;n b&agrave;i hạng mạnh với c&ocirc;ng nghệ. an to&agrave;n cao v&agrave; xuất sắc trong từng tiểu tiết.<br />\r\nĐối với c&aacute;c tay y&ecirc;u xe th&igrave; việc sở hữu một chiếc SUV hạng sang l&agrave; cả một niềm mơ ước, lại c&agrave;ng tuyệt vời hơn khi t&igrave;m hiểu cặn kẽ về t&iacute;nh năng đặc biệt của h&atilde;ng xe Volvo ti&ecirc;u biểu l&agrave; chiến binh Volvo XC60. Vậy chiến binh n&agrave;y đ&atilde; tạo n&ecirc;n điều thần th&aacute;nh g&igrave; m&agrave; khiến c&aacute;c h&atilde;ng xe kh&aacute;c phải tức tốc cạnh tranh để s&aacute;nh vai c&ugrave;ng anh ta?</p>\r\n', '<ul>\r\n	<li>Volvo XC60 c&oacute; k&iacute;ch thước 4.643 x 1.890 x 1.712 mm, v&agrave; chiều d&agrave;i cơ sở l&agrave; 2.774mm</li>\r\n	<li>Volvo XC60 T6 v&agrave; phi&ecirc;n bản Volvo XC60 R-Design sở hữu bộ tăng &aacute;p 320 m&atilde; lực, momen xoắn 400Nm, sức k&eacute;o l&ecirc;n tới 1990kg.</li>\r\n	<li>Volvo XC60 T5 động cơ tăng &aacute;p 4 xi lanh, dung t&iacute;ch 2.0lit, c&ocirc;ng suất 240 m&atilde; lực, momen xoắn 350Nm, nếu được trang bị đầy đủ sức k&eacute;o l&agrave; 1588kg.</li>\r\n	<li>Khả năng tăng tốc của volvo XC60 T5 từ 0-97km/h trong 6.8 gi&acirc;y, XC60 T6 l&agrave; 6.4 gi&acirc;y v&agrave; XC60 R-Design l&agrave; 6.2 gi&acirc;y.</li>\r\n</ul>\r\n', '1530164962236_volvo-xc60-mau-xanh-ngoc-1497890419-5947fe73a079b.jpg', 2000000000, 1, 12, 0, 'Mỹ', '2018-06-28', 0),
(41, 'Volvo XC60 Momentum', 11, 4, '<p><strong>Volvo XC60 d&ograve;ng SUV</strong>&nbsp;5 chỗ nhỏ gọn to&aacute;t l&ecirc;n sự đơn giản trong thiết kế, tinh tế trong cảm nhận v&agrave; tiện nghi khi sử dụng. Trong ph&acirc;n kh&uacute;c d&ograve;ng SUV kh&ocirc;ng thể kh&ocirc;ng n&oacute;i đến c&aacute;c thương hiệu xe đ&atilde; quen thuộc tại Việt Nam như: &nbsp;BMW X3, Lexus NX 200T, Audi Q5, Mercedes GLC Class, th&igrave; Volvo XC60 nhẹ nh&agrave;ng lăn b&aacute;nh đứng cạnh v&agrave; đọ sức với c&aacute;c d&ograve;ng xe trong c&ugrave;ng ph&acirc;n kh&uacute;c.<br />\r\nVolvo XC60 tại Việt Nam (gi&aacute; b&aacute;n 1.960.000.000đ) đ&atilde; nhanh ch&oacute;ng trở th&agrave;nh qu&acirc;n b&agrave;i hạng mạnh với c&ocirc;ng nghệ. an to&agrave;n cao v&agrave; xuất sắc trong từng tiểu tiết.<br />\r\nĐối với c&aacute;c tay y&ecirc;u xe th&igrave; việc sở hữu một chiếc SUV hạng sang l&agrave; cả một niềm mơ ước, lại c&agrave;ng tuyệt vời hơn khi t&igrave;m hiểu cặn kẽ về t&iacute;nh năng đặc biệt của h&atilde;ng xe Volvo ti&ecirc;u biểu l&agrave; chiến binh Volvo XC60. Vậy chiến binh n&agrave;y đ&atilde; tạo n&ecirc;n điều thần th&aacute;nh g&igrave; m&agrave; khiến c&aacute;c h&atilde;ng xe kh&aacute;c phải tức tốc cạnh tranh để s&aacute;nh vai c&ugrave;ng anh ta?</p>\r\n', '<p>M&agrave;u ngoại thất: N&acirc;u</p>\r\n\r\n<p>M&agrave;u nội thất: X&aacute;m</p>\r\n\r\n<p>Số cửa: 5</p>\r\n\r\n<p>Số chỗ ngồi: 5</p>\r\n', '1530165259639_volvo-xc60-momentum-mau-den-tuyen.jpg', 2000000000, 0, 12, 0, 'Mỹ', '2018-06-28', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD PRIMARY KEY (`MaHoaDon`),
  ADD KEY `IdKH` (`IdKH`);

--
-- Indexes for table `hangxe`
--
ALTER TABLE `hangxe`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`MaHoaDon`,`IdSP`),
  ADD KEY `IdSP` (`IdSP`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `loaixe`
--
ALTER TABLE `loaixe`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `picture`
--
ALTER TABLE `picture`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `MaXe` (`MaXe`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `HangXe` (`HangXe`),
  ADD KEY `LoaiXe` (`LoaiXe`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `hangxe`
--
ALTER TABLE `hangxe`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `loaixe`
--
ALTER TABLE `loaixe`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `picture`
--
ALTER TABLE `picture`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `chitiethoadon_ibfk_1` FOREIGN KEY (`MaHoaDon`) REFERENCES `hoadon` (`MaHoaDon`),
  ADD CONSTRAINT `chitiethoadon_ibfk_2` FOREIGN KEY (`IdKH`) REFERENCES `khachhang` (`Id`);

--
-- Constraints for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`IdSP`) REFERENCES `sanpham` (`Id`);

--
-- Constraints for table `picture`
--
ALTER TABLE `picture`
  ADD CONSTRAINT `picture_ibfk_1` FOREIGN KEY (`MaXe`) REFERENCES `sanpham` (`Id`);

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`HangXe`) REFERENCES `hangxe` (`Id`),
  ADD CONSTRAINT `sanpham_ibfk_2` FOREIGN KEY (`LoaiXe`) REFERENCES `loaixe` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
