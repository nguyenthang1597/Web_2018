-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2018 at 05:35 AM
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

--
-- Dumping data for table `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`MaHoaDon`, `IdKH`, `TongTien`, `TinhTrang`, `NgayMua`) VALUES
(1, 7, 1000, 2, '2018-06-18');

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
(1, 'BMW', '1.png', 0),
(2, 'kskjs', '2.png', 0),
(3, 'df', '3.png', 0),
(4, 'fg', '4.png', 0),
(5, 'dfsf', '5.png', 0),
(6, 'd', '6.png', 0),
(7, 'd', '7.png', 0);

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

--
-- Dumping data for table `hoadon`
--

INSERT INTO `hoadon` (`MaHoaDon`, `IdSP`, `SL`, `DonGia`) VALUES
(1, 1, 1, 10),
(1, 3, 1, 10);

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
  `DiaChi` text NOT NULL,
  `Username` text NOT NULL,
  `Pass` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`Id`, `Ten`, `Email`, `SDT`, `NgaySinh`, `DiaChi`, `Username`, `Pass`) VALUES
(7, 't?uhjka', 'skjds', 'de23e1', '2018-06-04', 'édqw', '?qdq', 'qdsqw');

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
(4, 'COUPE', 1);

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
(5, 1, '1529991720629_img002.gif'),
(6, 1, '1529991720638_img278.gif'),
(7, 1, '1529991720623_img001.gif');

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
(1, 'BMW 116I 2016 1.6', 1, 1, '<p>&quot;BMW serie 1 l&agrave; mẫu xe duy nhất được trang bị hệ truyền động cầu sau so với c&aacute;c đối thủ c&ugrave;ng ph&acirc;n hạng. Thiết kế ph&iacute;a trước với cụm đ&egrave;n pha vuốt nhọn, hướng v&agrave;o lưới tản nhiệt, đường g&acirc;n tr&ecirc;n nắp cap&ocirc; dạng chữ V, &ocirc;m lấy logo v&agrave; lưới tản nhiệt dốc đứng tăng ấn tượng cho phần đầu xe. Đ&egrave;n sương m&ugrave; được t&iacute;ch hợp v&agrave;o trong hốc gi&oacute;.Nội thất của với m&agrave;n h&igrave;nh trung t&acirc;m được bố tr&iacute; hướng về ph&iacute;a người l&aacute;i gi&uacute;p dễ d&agrave;ng quan s&aacute;t. Bảng đồng hồ điều khiển hiển thị số km, dễ quan s&aacute;t với m&agrave;u cam. Khoang l&aacute;i với ghế ngồi bọc da t&iacute;ch hợp chế độ nhớ vị tr&iacute;. Khoang h&agrave;nh l&yacute; với sức chứa 360 l&iacute;t, v&agrave; c&oacute; thể mở rộng l&ecirc;n 1.200 l&iacute;t khi h&agrave;ng ghế sau được gập xuống. Điều h&ograve;a tự động.Phi&ecirc;n bản 116i được Euro Auto đưa về Việt Nam trang bị động cơ TwinPower Turbo 4 xi-lanh thẳng h&agrave;ng dung t&iacute;ch 1,6 l&iacute;t, c&ocirc;ng suất 136 m&atilde; lực, m&ocirc;-men xoắn cực đại 220 Nm tại v&ograve;ng tua m&aacute;y 1.350 v&ograve;ng/ph&uacute;t. Tốc độ tối đa 210 km/h với mức ti&ecirc;u hao nhi&ecirc;n liệu 5,3 l&iacute;t/100 km. Hộp số tự động 8-cấp.&quot;</p>\r\n', '<p>Kiểu d&aacute;ng: Hatchback Năm sản xuất: 2016 K&iacute;ch thước tổng thể: 4.324mm x 1.765mm x 1.421mm Trọng lượnng kh&ocirc;ng tải: 1.395kg Số chỗ: 5</p>\r\n', '2.jpg', 1248000000, 22, 2, 0, 'Việt Nam', '2018-06-03', 0),
(2, 'BMW 116I 2016 1.6', 1, 2, '<p>&quot;BMW serie 1 l&agrave; mẫu xe duy nhất được trang bị hệ truyền động cầu sau so với c&aacute;c đối thủ c&ugrave;ng ph&acirc;n hạng. Thiết kế ph&iacute;a trước với cụm đ&egrave;n pha vuốt nhọn, hướng v&agrave;o lưới tản nhiệt, đường g&acirc;n tr&ecirc;n nắp cap&ocirc; dạng chữ V, &ocirc;m lấy logo v&agrave; lưới tản nhiệt dốc đứng tăng ấn tượng cho phần đầu xe. Đ&egrave;n sương m&ugrave; được t&iacute;ch hợp v&agrave;o trong hốc gi&oacute;.Nội thất của với m&agrave;n h&igrave;nh trung t&acirc;m được bố tr&iacute; hướng về ph&iacute;a người l&aacute;i gi&uacute;p dễ d&agrave;ng quan s&aacute;t. Bảng đồng hồ điều khiển hiển thị số km, dễ quan s&aacute;t với m&agrave;u cam. Khoang l&aacute;i với ghế ngồi bọc da t&iacute;ch hợp chế độ nhớ vị tr&iacute;. Khoang h&agrave;nh l&yacute; với sức chứa 360 l&iacute;t, v&agrave; c&oacute; thể mở rộng l&ecirc;n 1.200 l&iacute;t khi h&agrave;ng ghế sau được gập xuống. Điều h&ograve;a tự động.Phi&ecirc;n bản 116i được Euro Auto đưa về Việt Nam trang bị động cơ TwinPower Turbo 4 xi-lanh thẳng h&agrave;ng dung t&iacute;ch 1,6 l&iacute;t, c&ocirc;ng suất 136 m&atilde; lực, m&ocirc;-men xoắn cực đại 220 Nm tại v&ograve;ng tua m&aacute;y 1.350 v&ograve;ng/ph&uacute;t. Tốc độ tối đa 210 km/h với mức ti&ecirc;u hao nhi&ecirc;n liệu 5,3 l&iacute;t/100 km. Hộp số tự động 8-cấp.&quot;</p>\r\n', '<p>Kiểu d&aacute;ng: Hatchback Năm sản xuất: 2016 K&iacute;ch thước tổng thể: 4.324mm x 1.765mm x 1.421mm Trọng lượnng kh&ocirc;ng tải: 1.395kg Số chỗ: 5</p>\r\n', '2.jpg', 1248000000, 23, 2, 0, 'Việt Nam', '2018-06-01', 0),
(3, 'BMW 116I 2016 1.6', 1, 2, '<p>&quot;BMW serie 1 l&agrave; mẫu xe duy nhất được trang bị hệ truyền động cầu sau so với c&aacute;c đối thủ c&ugrave;ng ph&acirc;n hạng. Thiết kế ph&iacute;a trước với cụm đ&egrave;n pha vuốt nhọn, hướng v&agrave;o lưới tản nhiệt, đường g&acirc;n tr&ecirc;n nắp cap&ocirc; dạng chữ V, &ocirc;m lấy logo v&agrave; lưới tản nhiệt dốc đứng tăng ấn tượng cho phần đầu xe. Đ&egrave;n sương m&ugrave; được t&iacute;ch hợp v&agrave;o trong hốc gi&oacute;.Nội thất của với m&agrave;n h&igrave;nh trung t&acirc;m được bố tr&iacute; hướng về ph&iacute;a người l&aacute;i gi&uacute;p dễ d&agrave;ng quan s&aacute;t. Bảng đồng hồ điều khiển hiển thị số km, dễ quan s&aacute;t với m&agrave;u cam. Khoang l&aacute;i với ghế ngồi bọc da t&iacute;ch hợp chế độ nhớ vị tr&iacute;. Khoang h&agrave;nh l&yacute; với sức chứa 360 l&iacute;t, v&agrave; c&oacute; thể mở rộng l&ecirc;n 1.200 l&iacute;t khi h&agrave;ng ghế sau được gập xuống. Điều h&ograve;a tự động.Phi&ecirc;n bản 116i được Euro Auto đưa về Việt Nam trang bị động cơ TwinPower Turbo 4 xi-lanh thẳng h&agrave;ng dung t&iacute;ch 1,6 l&iacute;t, c&ocirc;ng suất 136 m&atilde; lực, m&ocirc;-men xoắn cực đại 220 Nm tại v&ograve;ng tua m&aacute;y 1.350 v&ograve;ng/ph&uacute;t. Tốc độ tối đa 210 km/h với mức ti&ecirc;u hao nhi&ecirc;n liệu 5,3 l&iacute;t/100 km. Hộp số tự động 8-cấp.&quot;</p>\r\n', '<p>Kiểu d&aacute;ng: Hatchback Năm sản xuất: 2016 K&iacute;ch thước tổng thể: 4.324mm x 1.765mm x 1.421mm Trọng lượnng kh&ocirc;ng tải: 1.395kg Số chỗ: 5</p>\r\n', '2.jpg', 1248000000, 6, 2, 0, 'Việt Nam', '2018-06-03', 0),
(4, 'BMW 116I 2016 1.6', 1, 2, '\"BMW serie 1 là mẫu xe duy nhất được trang bị hệ truyền động cầu sau so với các đối thủ cùng phân hạng. Thiết kế phía trước với cụm đèn pha vuốt nhọn, hướng vào lưới tản nhiệt, đường gân trên nắp capô dạng chữ V, ôm lấy logo và lưới tản nhiệt dốc đứng tăng ấn tượng cho phần đầu xe. Đèn sương mù được tích hợp vào trong hốc gió.Nội thất của với màn hình trung tâm được bố trí hướng về phía người lái giúp dễ dàng quan sát. Bảng đồng hồ điều khiển hiển thị số km, dễ quan sát với màu cam. Khoang lái với ghế ngồi bọc da tích hợp chế độ nhớ vị trí. Khoang hành lý với sức chứa 360 lít, và có thể mở rộng lên 1.200 lít khi hàng ghế sau được gập xuống. Điều hòa tự động.Phiên bản 116i được Euro Auto đưa về Việt Nam trang bị động cơ TwinPower Turbo 4 xi-lanh thẳng hàng dung tích 1,6 lít, công suất 136 mã lực, mô-men xoắn cực đại 220 Nm tại vòng tua máy 1.350 vòng/phút. Tốc độ tối đa 210 km/h với mức tiêu hao nhiên liệu 5,3 lít/100 km. Hộp số tự động 8-cấp.\"', 'Kiểu dáng:	Hatchback\r\nNăm sản xuất:	2016\r\nKích thước tổng thể:	4.324mm x 1.765mm x 1.421mm\r\nTrọng lượnng không tải:	1.395kg\r\nSố chỗ:	5', '1.jpg', 1248000000, 11, 2, 0, 'Việt Nam', '2018-06-03', 0),
(5, 'BMW 116I 2016 1.6', 1, 2, '\"BMW serie 1 là mẫu xe duy nhất được trang bị hệ truyền động cầu sau so với các đối thủ cùng phân hạng. Thiết kế phía trước với cụm đèn pha vuốt nhọn, hướng vào lưới tản nhiệt, đường gân trên nắp capô dạng chữ V, ôm lấy logo và lưới tản nhiệt dốc đứng tăng ấn tượng cho phần đầu xe. Đèn sương mù được tích hợp vào trong hốc gió.Nội thất của với màn hình trung tâm được bố trí hướng về phía người lái giúp dễ dàng quan sát. Bảng đồng hồ điều khiển hiển thị số km, dễ quan sát với màu cam. Khoang lái với ghế ngồi bọc da tích hợp chế độ nhớ vị trí. Khoang hành lý với sức chứa 360 lít, và có thể mở rộng lên 1.200 lít khi hàng ghế sau được gập xuống. Điều hòa tự động.Phiên bản 116i được Euro Auto đưa về Việt Nam trang bị động cơ TwinPower Turbo 4 xi-lanh thẳng hàng dung tích 1,6 lít, công suất 136 mã lực, mô-men xoắn cực đại 220 Nm tại vòng tua máy 1.350 vòng/phút. Tốc độ tối đa 210 km/h với mức tiêu hao nhiên liệu 5,3 lít/100 km. Hộp số tự động 8-cấp.\"', 'Kiểu dáng:	Hatchback\r\nNăm sản xuất:	2016\r\nKích thước tổng thể:	4.324mm x 1.765mm x 1.421mm\r\nTrọng lượnng không tải:	1.395kg\r\nSố chỗ:	5', '1.jpg', 1248000000, 5, 2, 0, 'Việt Nam', '2018-06-03', 0),
(6, 'BMW 116I 2016 1.6', 1, 2, '\"BMW serie 1 là mẫu xe duy nhất được trang bị hệ truyền động cầu sau so với các đối thủ cùng phân hạng. Thiết kế phía trước với cụm đèn pha vuốt nhọn, hướng vào lưới tản nhiệt, đường gân trên nắp capô dạng chữ V, ôm lấy logo và lưới tản nhiệt dốc đứng tăng ấn tượng cho phần đầu xe. Đèn sương mù được tích hợp vào trong hốc gió.Nội thất của với màn hình trung tâm được bố trí hướng về phía người lái giúp dễ dàng quan sát. Bảng đồng hồ điều khiển hiển thị số km, dễ quan sát với màu cam. Khoang lái với ghế ngồi bọc da tích hợp chế độ nhớ vị trí. Khoang hành lý với sức chứa 360 lít, và có thể mở rộng lên 1.200 lít khi hàng ghế sau được gập xuống. Điều hòa tự động.Phiên bản 116i được Euro Auto đưa về Việt Nam trang bị động cơ TwinPower Turbo 4 xi-lanh thẳng hàng dung tích 1,6 lít, công suất 136 mã lực, mô-men xoắn cực đại 220 Nm tại vòng tua máy 1.350 vòng/phút. Tốc độ tối đa 210 km/h với mức tiêu hao nhiên liệu 5,3 lít/100 km. Hộp số tự động 8-cấp.\"', 'Kiểu dáng:	Hatchback\r\nNăm sản xuất:	2016\r\nKích thước tổng thể:	4.324mm x 1.765mm x 1.421mm\r\nTrọng lượnng không tải:	1.395kg\r\nSố chỗ:	5', '1.jpg', 1248000000, 2, 2, 0, 'Việt Nam', '2018-06-03', 0),
(7, 'BMW 116I 2016 1.6', 1, 1, '\"BMW serie 1 là mẫu xe duy nhất được trang bị hệ truyền động cầu sau so với các đối thủ cùng phân hạng. Thiết kế phía trước với cụm đèn pha vuốt nhọn, hướng vào lưới tản nhiệt, đường gân trên nắp capô dạng chữ V, ôm lấy logo và lưới tản nhiệt dốc đứng tăng ấn tượng cho phần đầu xe. Đèn sương mù được tích hợp vào trong hốc gió.Nội thất của với màn hình trung tâm được bố trí hướng về phía người lái giúp dễ dàng quan sát. Bảng đồng hồ điều khiển hiển thị số km, dễ quan sát với màu cam. Khoang lái với ghế ngồi bọc da tích hợp chế độ nhớ vị trí. Khoang hành lý với sức chứa 360 lít, và có thể mở rộng lên 1.200 lít khi hàng ghế sau được gập xuống. Điều hòa tự động.Phiên bản 116i được Euro Auto đưa về Việt Nam trang bị động cơ TwinPower Turbo 4 xi-lanh thẳng hàng dung tích 1,6 lít, công suất 136 mã lực, mô-men xoắn cực đại 220 Nm tại vòng tua máy 1.350 vòng/phút. Tốc độ tối đa 210 km/h với mức tiêu hao nhiên liệu 5,3 lít/100 km. Hộp số tự động 8-cấp.\"', 'Kiểu dáng:	Hatchback\r\nNăm sản xuất:	2016\r\nKích thước tổng thể:	4.324mm x 1.765mm x 1.421mm\r\nTrọng lượnng không tải:	1.395kg\r\nSố chỗ:	5', '1.jpg', 1248000000, 2, 2, 0, 'Việt Nam', '2018-06-03', 0),
(8, 'BMW 116I 2016 1.6', 1, 2, '\"BMW serie 1 là mẫu xe duy nhất được trang bị hệ truyền động cầu sau so với các đối thủ cùng phân hạng. Thiết kế phía trước với cụm đèn pha vuốt nhọn, hướng vào lưới tản nhiệt, đường gân trên nắp capô dạng chữ V, ôm lấy logo và lưới tản nhiệt dốc đứng tăng ấn tượng cho phần đầu xe. Đèn sương mù được tích hợp vào trong hốc gió.Nội thất của với màn hình trung tâm được bố trí hướng về phía người lái giúp dễ dàng quan sát. Bảng đồng hồ điều khiển hiển thị số km, dễ quan sát với màu cam. Khoang lái với ghế ngồi bọc da tích hợp chế độ nhớ vị trí. Khoang hành lý với sức chứa 360 lít, và có thể mở rộng lên 1.200 lít khi hàng ghế sau được gập xuống. Điều hòa tự động.Phiên bản 116i được Euro Auto đưa về Việt Nam trang bị động cơ TwinPower Turbo 4 xi-lanh thẳng hàng dung tích 1,6 lít, công suất 136 mã lực, mô-men xoắn cực đại 220 Nm tại vòng tua máy 1.350 vòng/phút. Tốc độ tối đa 210 km/h với mức tiêu hao nhiên liệu 5,3 lít/100 km. Hộp số tự động 8-cấp.\"', 'Kiểu dáng:	Hatchback\r\nNăm sản xuất:	2016\r\nKích thước tổng thể:	4.324mm x 1.765mm x 1.421mm\r\nTrọng lượnng không tải:	1.395kg\r\nSố chỗ:	5', '1.jpg', 1248000000, 3, 2, 0, 'Việt Nam', '2018-06-03', 0),
(9, 'BMW 116I 2016 1.6', 1, 2, '\"BMW serie 1 là mẫu xe duy nhất được trang bị hệ truyền động cầu sau so với các đối thủ cùng phân hạng. Thiết kế phía trước với cụm đèn pha vuốt nhọn, hướng vào lưới tản nhiệt, đường gân trên nắp capô dạng chữ V, ôm lấy logo và lưới tản nhiệt dốc đứng tăng ấn tượng cho phần đầu xe. Đèn sương mù được tích hợp vào trong hốc gió.Nội thất của với màn hình trung tâm được bố trí hướng về phía người lái giúp dễ dàng quan sát. Bảng đồng hồ điều khiển hiển thị số km, dễ quan sát với màu cam. Khoang lái với ghế ngồi bọc da tích hợp chế độ nhớ vị trí. Khoang hành lý với sức chứa 360 lít, và có thể mở rộng lên 1.200 lít khi hàng ghế sau được gập xuống. Điều hòa tự động.Phiên bản 116i được Euro Auto đưa về Việt Nam trang bị động cơ TwinPower Turbo 4 xi-lanh thẳng hàng dung tích 1,6 lít, công suất 136 mã lực, mô-men xoắn cực đại 220 Nm tại vòng tua máy 1.350 vòng/phút. Tốc độ tối đa 210 km/h với mức tiêu hao nhiên liệu 5,3 lít/100 km. Hộp số tự động 8-cấp.\"', 'Kiểu dáng:	Hatchback\r\nNăm sản xuất:	2016\r\nKích thước tổng thể:	4.324mm x 1.765mm x 1.421mm\r\nTrọng lượnng không tải:	1.395kg\r\nSố chỗ:	5', '1.jpg', 1248000000, 5, 2, 0, 'Việt Nam', '2018-06-03', 0),
(10, 'BMW 116I 2016 1.6', 1, 2, '\"BMW serie 1 là mẫu xe duy nhất được trang bị hệ truyền động cầu sau so với các đối thủ cùng phân hạng. Thiết kế phía trước với cụm đèn pha vuốt nhọn, hướng vào lưới tản nhiệt, đường gân trên nắp capô dạng chữ V, ôm lấy logo và lưới tản nhiệt dốc đứng tăng ấn tượng cho phần đầu xe. Đèn sương mù được tích hợp vào trong hốc gió.Nội thất của với màn hình trung tâm được bố trí hướng về phía người lái giúp dễ dàng quan sát. Bảng đồng hồ điều khiển hiển thị số km, dễ quan sát với màu cam. Khoang lái với ghế ngồi bọc da tích hợp chế độ nhớ vị trí. Khoang hành lý với sức chứa 360 lít, và có thể mở rộng lên 1.200 lít khi hàng ghế sau được gập xuống. Điều hòa tự động.Phiên bản 116i được Euro Auto đưa về Việt Nam trang bị động cơ TwinPower Turbo 4 xi-lanh thẳng hàng dung tích 1,6 lít, công suất 136 mã lực, mô-men xoắn cực đại 220 Nm tại vòng tua máy 1.350 vòng/phút. Tốc độ tối đa 210 km/h với mức tiêu hao nhiên liệu 5,3 lít/100 km. Hộp số tự động 8-cấp.\"', 'Kiểu dáng:	Hatchback\r\nNăm sản xuất:	2016\r\nKích thước tổng thể:	4.324mm x 1.765mm x 1.421mm\r\nTrọng lượnng không tải:	1.395kg\r\nSố chỗ:	5', '1.jpg', 1248000000, 3, 2, 0, 'Việt Nam', '2018-06-03', 0),
(11, 'BMW 116I 2016 1.6', 1, 2, '\"BMW serie 1 là mẫu xe duy nhất được trang bị hệ truyền động cầu sau so với các đối thủ cùng phân hạng. Thiết kế phía trước với cụm đèn pha vuốt nhọn, hướng vào lưới tản nhiệt, đường gân trên nắp capô dạng chữ V, ôm lấy logo và lưới tản nhiệt dốc đứng tăng ấn tượng cho phần đầu xe. Đèn sương mù được tích hợp vào trong hốc gió.Nội thất của với màn hình trung tâm được bố trí hướng về phía người lái giúp dễ dàng quan sát. Bảng đồng hồ điều khiển hiển thị số km, dễ quan sát với màu cam. Khoang lái với ghế ngồi bọc da tích hợp chế độ nhớ vị trí. Khoang hành lý với sức chứa 360 lít, và có thể mở rộng lên 1.200 lít khi hàng ghế sau được gập xuống. Điều hòa tự động.Phiên bản 116i được Euro Auto đưa về Việt Nam trang bị động cơ TwinPower Turbo 4 xi-lanh thẳng hàng dung tích 1,6 lít, công suất 136 mã lực, mô-men xoắn cực đại 220 Nm tại vòng tua máy 1.350 vòng/phút. Tốc độ tối đa 210 km/h với mức tiêu hao nhiên liệu 5,3 lít/100 km. Hộp số tự động 8-cấp.\"', 'Kiểu dáng:	Hatchback\r\nNăm sản xuất:	2016\r\nKích thước tổng thể:	4.324mm x 1.765mm x 1.421mm\r\nTrọng lượnng không tải:	1.395kg\r\nSố chỗ:	5', '1.jpg', 1248000000, 2, 2, 0, 'Việt Nam', '2018-06-03', 0),
(12, 'BMW 116I 2016 1.6', 1, 2, '\"BMW serie 1 là mẫu xe duy nhất được trang bị hệ truyền động cầu sau so với các đối thủ cùng phân hạng. Thiết kế phía trước với cụm đèn pha vuốt nhọn, hướng vào lưới tản nhiệt, đường gân trên nắp capô dạng chữ V, ôm lấy logo và lưới tản nhiệt dốc đứng tăng ấn tượng cho phần đầu xe. Đèn sương mù được tích hợp vào trong hốc gió.Nội thất của với màn hình trung tâm được bố trí hướng về phía người lái giúp dễ dàng quan sát. Bảng đồng hồ điều khiển hiển thị số km, dễ quan sát với màu cam. Khoang lái với ghế ngồi bọc da tích hợp chế độ nhớ vị trí. Khoang hành lý với sức chứa 360 lít, và có thể mở rộng lên 1.200 lít khi hàng ghế sau được gập xuống. Điều hòa tự động.Phiên bản 116i được Euro Auto đưa về Việt Nam trang bị động cơ TwinPower Turbo 4 xi-lanh thẳng hàng dung tích 1,6 lít, công suất 136 mã lực, mô-men xoắn cực đại 220 Nm tại vòng tua máy 1.350 vòng/phút. Tốc độ tối đa 210 km/h với mức tiêu hao nhiên liệu 5,3 lít/100 km. Hộp số tự động 8-cấp.\"', 'Kiểu dáng:	Hatchback\r\nNăm sản xuất:	2016\r\nKích thước tổng thể:	4.324mm x 1.765mm x 1.421mm\r\nTrọng lượnng không tải:	1.395kg\r\nSố chỗ:	5', '1.jpg', 1248000000, 6, 2, 0, 'Việt Nam', '2018-06-03', 0),
(13, 'BMW 116I 2016 1.6', 1, 2, '\"BMW serie 1 là mẫu xe duy nhất được trang bị hệ truyền động cầu sau so với các đối thủ cùng phân hạng. Thiết kế phía trước với cụm đèn pha vuốt nhọn, hướng vào lưới tản nhiệt, đường gân trên nắp capô dạng chữ V, ôm lấy logo và lưới tản nhiệt dốc đứng tăng ấn tượng cho phần đầu xe. Đèn sương mù được tích hợp vào trong hốc gió.Nội thất của với màn hình trung tâm được bố trí hướng về phía người lái giúp dễ dàng quan sát. Bảng đồng hồ điều khiển hiển thị số km, dễ quan sát với màu cam. Khoang lái với ghế ngồi bọc da tích hợp chế độ nhớ vị trí. Khoang hành lý với sức chứa 360 lít, và có thể mở rộng lên 1.200 lít khi hàng ghế sau được gập xuống. Điều hòa tự động.Phiên bản 116i được Euro Auto đưa về Việt Nam trang bị động cơ TwinPower Turbo 4 xi-lanh thẳng hàng dung tích 1,6 lít, công suất 136 mã lực, mô-men xoắn cực đại 220 Nm tại vòng tua máy 1.350 vòng/phút. Tốc độ tối đa 210 km/h với mức tiêu hao nhiên liệu 5,3 lít/100 km. Hộp số tự động 8-cấp.\"', 'Kiểu dáng:	Hatchback\r\nNăm sản xuất:	2016\r\nKích thước tổng thể:	4.324mm x 1.765mm x 1.421mm\r\nTrọng lượnng không tải:	1.395kg\r\nSố chỗ:	5', '1.jpg', 1248000000, 2, 2, 0, 'Việt Nam', '2018-06-03', 0),
(14, 'BMW 116I 2016 1.6', 1, 2, '\"BMW serie 1 là mẫu xe duy nhất được trang bị hệ truyền động cầu sau so với các đối thủ cùng phân hạng. Thiết kế phía trước với cụm đèn pha vuốt nhọn, hướng vào lưới tản nhiệt, đường gân trên nắp capô dạng chữ V, ôm lấy logo và lưới tản nhiệt dốc đứng tăng ấn tượng cho phần đầu xe. Đèn sương mù được tích hợp vào trong hốc gió.Nội thất của với màn hình trung tâm được bố trí hướng về phía người lái giúp dễ dàng quan sát. Bảng đồng hồ điều khiển hiển thị số km, dễ quan sát với màu cam. Khoang lái với ghế ngồi bọc da tích hợp chế độ nhớ vị trí. Khoang hành lý với sức chứa 360 lít, và có thể mở rộng lên 1.200 lít khi hàng ghế sau được gập xuống. Điều hòa tự động.Phiên bản 116i được Euro Auto đưa về Việt Nam trang bị động cơ TwinPower Turbo 4 xi-lanh thẳng hàng dung tích 1,6 lít, công suất 136 mã lực, mô-men xoắn cực đại 220 Nm tại vòng tua máy 1.350 vòng/phút. Tốc độ tối đa 210 km/h với mức tiêu hao nhiên liệu 5,3 lít/100 km. Hộp số tự động 8-cấp.\"', 'Kiểu dáng:	Hatchback\r\nNăm sản xuất:	2016\r\nKích thước tổng thể:	4.324mm x 1.765mm x 1.421mm\r\nTrọng lượnng không tải:	1.395kg\r\nSố chỗ:	5', '1.jpg', 1248000000, 2, 2, 0, 'Việt Nam', '2018-06-03', 0),
(15, 'BMW 116I 2016 1.6', 1, 2, '\"BMW serie 1 là mẫu xe duy nhất được trang bị hệ truyền động cầu sau so với các đối thủ cùng phân hạng. Thiết kế phía trước với cụm đèn pha vuốt nhọn, hướng vào lưới tản nhiệt, đường gân trên nắp capô dạng chữ V, ôm lấy logo và lưới tản nhiệt dốc đứng tăng ấn tượng cho phần đầu xe. Đèn sương mù được tích hợp vào trong hốc gió.Nội thất của với màn hình trung tâm được bố trí hướng về phía người lái giúp dễ dàng quan sát. Bảng đồng hồ điều khiển hiển thị số km, dễ quan sát với màu cam. Khoang lái với ghế ngồi bọc da tích hợp chế độ nhớ vị trí. Khoang hành lý với sức chứa 360 lít, và có thể mở rộng lên 1.200 lít khi hàng ghế sau được gập xuống. Điều hòa tự động.Phiên bản 116i được Euro Auto đưa về Việt Nam trang bị động cơ TwinPower Turbo 4 xi-lanh thẳng hàng dung tích 1,6 lít, công suất 136 mã lực, mô-men xoắn cực đại 220 Nm tại vòng tua máy 1.350 vòng/phút. Tốc độ tối đa 210 km/h với mức tiêu hao nhiên liệu 5,3 lít/100 km. Hộp số tự động 8-cấp.\"', 'Kiểu dáng:	Hatchback\r\nNăm sản xuất:	2016\r\nKích thước tổng thể:	4.324mm x 1.765mm x 1.421mm\r\nTrọng lượnng không tải:	1.395kg\r\nSố chỗ:	5', '1.jpg', 1248000000, 2, 2, 0, 'Việt Nam', '2018-06-03', 0),
(16, 'BMW 116I 2016 1.6', 1, 2, '\"BMW serie 1 là mẫu xe duy nhất được trang bị hệ truyền động cầu sau so với các đối thủ cùng phân hạng. Thiết kế phía trước với cụm đèn pha vuốt nhọn, hướng vào lưới tản nhiệt, đường gân trên nắp capô dạng chữ V, ôm lấy logo và lưới tản nhiệt dốc đứng tăng ấn tượng cho phần đầu xe. Đèn sương mù được tích hợp vào trong hốc gió.Nội thất của với màn hình trung tâm được bố trí hướng về phía người lái giúp dễ dàng quan sát. Bảng đồng hồ điều khiển hiển thị số km, dễ quan sát với màu cam. Khoang lái với ghế ngồi bọc da tích hợp chế độ nhớ vị trí. Khoang hành lý với sức chứa 360 lít, và có thể mở rộng lên 1.200 lít khi hàng ghế sau được gập xuống. Điều hòa tự động.Phiên bản 116i được Euro Auto đưa về Việt Nam trang bị động cơ TwinPower Turbo 4 xi-lanh thẳng hàng dung tích 1,6 lít, công suất 136 mã lực, mô-men xoắn cực đại 220 Nm tại vòng tua máy 1.350 vòng/phút. Tốc độ tối đa 210 km/h với mức tiêu hao nhiên liệu 5,3 lít/100 km. Hộp số tự động 8-cấp.\"', 'Kiểu dáng:	Hatchback\r\nNăm sản xuất:	2016\r\nKích thước tổng thể:	4.324mm x 1.765mm x 1.421mm\r\nTrọng lượnng không tải:	1.395kg\r\nSố chỗ:	5', '1.jpg', 1248000000, 4, 2, 0, 'Việt Nam', '2018-06-03', 0),
(17, 'ssd', 1, 1, '<p>ksjk</p>\r\n\r\n<p>sakjs</p>\r\n', '<p>sưlkswqs</p>\r\n\r\n<p>ư;klksw</p>\r\n', '2.jpg', 12, 2, 12, 0, '22sdx', '2018-06-26', 0);

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
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

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
