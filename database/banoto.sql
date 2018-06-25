-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2018 at 11:19 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `banoto`
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
  `ten` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sdt` int(11) NOT NULL,
  `diaChi` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `cmnd` int(9) NOT NULL,
  `gioiTinh` tinyint(1) NOT NULL,
  `ngaySinh` date NOT NULL,
  `email` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `username`, `password`, `isAdmin`, `ten`, `sdt`, `diaChi`, `cmnd`, `gioiTinh`, `ngaySinh`, `email`) VALUES
(1, 'admin', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 1, 'Admin', 902467813, '12, phường 1, quận 3, TP HCM', 301648567, 1, '1994-06-20', 'admin@gmail.com'),
(2, 'tham', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 0, '', 0, '', 0, 0, '0000-00-00', 'tham@gmail.com'),
(5, 'thanh3', 'f4bf9f7fcbedaba0392f108c59d8f4a38b3838efb6487', 0, '', 0, '', 0, 0, '0000-00-00', 'asdsad'),
(6, 'thanh4', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 1, '', 0, '', 0, 0, '0000-00-00', '123456'),
(7, 'thanh5', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 0, '', 0, '', 0, 0, '0000-00-00', '1'),
(8, 'thanh6', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 0, '', 0, '', 0, 0, '0000-00-00', '1'),
(11, 'thanh7', '6b51d431df5d7f141cbececcf79edf3dd861c3b4069f0b11661a3eefacbba918', 0, '', 0, '', 0, 0, '0000-00-00', '12452123'),
(12, 'thanh8', '481f6cc0511143ccdd7e2d1b1b94faf0a700a8b49cd13922a70b5ae28acaa8c5', 0, '', 0, '', 0, 0, '0000-00-00', '147'),
(13, 'thanh', 'ca978112ca1bbdcafac231b39a23dc4da786eff8147c4e72b9807785afee48bb', 1, '', 0, '', 0, 0, '0000-00-00', 'd');

-- --------------------------------------------------------

--
-- Table structure for table `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `MaHoaDon` int(11) NOT NULL,
  `IdKH` int(11) NOT NULL,
  `TongTien` int(11) NOT NULL,
  `TinhTrang` text NOT NULL,
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
  `isHide` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hangxe`
--

INSERT INTO `hangxe` (`Id`, `TenHang`, `Pic`, `isHide`) VALUES
(1, 'BMW', '1.png', NULL),
(2, 'FERRARI', '2.png', NULL),
(3, 'VOLVO', '3.png', NULL),
(4, 'MERCEDES BENZ', '4.png', NULL),
(5, 'AUDI', '5.png', NULL),
(6, 'HYUNDAI', '6.png', NULL),
(7, 'PEUGEOT', '7.png', NULL);

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
  `TenLoai` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loaixe`
--

INSERT INTO `loaixe` (`Id`, `TenLoai`) VALUES
(1, 'SEDAN'),
(2, 'HATCHBACK'),
(3, 'MPV'),
(4, 'COUPE');

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
  `LuotXem` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `SLBan` int(11) NOT NULL,
  `XuatXu` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `NgayNhap` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`Id`, `TenSP`, `HangXe`, `LoaiXe`, `MoTa`, `ChiTiet`, `HinhAnh`, `GiaBan`, `LuotXem`, `SoLuong`, `SLBan`, `XuatXu`, `NgayNhap`) VALUES
(1, 'BMW 116I 2016 1.6', 1, 1, '\"BMW serie 1 là mẫu xe duy nhất được trang bị hệ truyền động cầu sau so với các đối thủ cùng phân hạng. Thiết kế phía trước với cụm đèn pha vuốt nhọn, hướng vào lưới tản nhiệt, đường gân trên nắp capô dạng chữ V, ôm lấy logo và lưới tản nhiệt dốc đứng tăng ấn tượng cho phần đầu xe. Đèn sương mù được tích hợp vào trong hốc gió.Nội thất của với màn hình trung tâm được bố trí hướng về phía người lái giúp dễ dàng quan sát. Bảng đồng hồ điều khiển hiển thị số km, dễ quan sát với màu cam. Khoang lái với ghế ngồi bọc da tích hợp chế độ nhớ vị trí. Khoang hành lý với sức chứa 360 lít, và có thể mở rộng lên 1.200 lít khi hàng ghế sau được gập xuống. Điều hòa tự động.Phiên bản 116i được Euro Auto đưa về Việt Nam trang bị động cơ TwinPower Turbo 4 xi-lanh thẳng hàng dung tích 1,6 lít, công suất 136 mã lực, mô-men xoắn cực đại 220 Nm tại vòng tua máy 1.350 vòng/phút. Tốc độ tối đa 210 km/h với mức tiêu hao nhiên liệu 5,3 lít/100 km. Hộp số tự động 8-cấp.\"', 'Kiểu dáng:	Hatchback\r\nNăm sản xuất:	2016\r\nKích thước tổng thể:	4.324mm x 1.765mm x 1.421mm\r\nTrọng lượnng không tải:	1.395kg\r\nSố chỗ:	5', '1.jpg', 1248000000, 9, 2, 0, 'Việt Nam', '2018-06-03'),
(2, 'BMW 116I 2016 1.6', 1, 2, '\"BMW serie 1 là mẫu xe duy nhất được trang bị hệ truyền động cầu sau so với các đối thủ cùng phân hạng. Thiết kế phía trước với cụm đèn pha vuốt nhọn, hướng vào lưới tản nhiệt, đường gân trên nắp capô dạng chữ V, ôm lấy logo và lưới tản nhiệt dốc đứng tăng ấn tượng cho phần đầu xe. Đèn sương mù được tích hợp vào trong hốc gió.Nội thất của với màn hình trung tâm được bố trí hướng về phía người lái giúp dễ dàng quan sát. Bảng đồng hồ điều khiển hiển thị số km, dễ quan sát với màu cam. Khoang lái với ghế ngồi bọc da tích hợp chế độ nhớ vị trí. Khoang hành lý với sức chứa 360 lít, và có thể mở rộng lên 1.200 lít khi hàng ghế sau được gập xuống. Điều hòa tự động.Phiên bản 116i được Euro Auto đưa về Việt Nam trang bị động cơ TwinPower Turbo 4 xi-lanh thẳng hàng dung tích 1,6 lít, công suất 136 mã lực, mô-men xoắn cực đại 220 Nm tại vòng tua máy 1.350 vòng/phút. Tốc độ tối đa 210 km/h với mức tiêu hao nhiên liệu 5,3 lít/100 km. Hộp số tự động 8-cấp.\"', 'Kiểu dáng:	Hatchback\r\nNăm sản xuất:	2016\r\nKích thước tổng thể:	4.324mm x 1.765mm x 1.421mm\r\nTrọng lượnng không tải:	1.395kg\r\nSố chỗ:	5', '1-Bentley-Mulsanne.jpg', 1248000000, 8, 2, 0, 'Việt Nam', '2018-06-01'),
(3, 'BMW 116I 2016 1.6', 1, 2, '\"BMW serie 1 là mẫu xe duy nhất được trang bị hệ truyền động cầu sau so với các đối thủ cùng phân hạng. Thiết kế phía trước với cụm đèn pha vuốt nhọn, hướng vào lưới tản nhiệt, đường gân trên nắp capô dạng chữ V, ôm lấy logo và lưới tản nhiệt dốc đứng tăng ấn tượng cho phần đầu xe. Đèn sương mù được tích hợp vào trong hốc gió.Nội thất của với màn hình trung tâm được bố trí hướng về phía người lái giúp dễ dàng quan sát. Bảng đồng hồ điều khiển hiển thị số km, dễ quan sát với màu cam. Khoang lái với ghế ngồi bọc da tích hợp chế độ nhớ vị trí. Khoang hành lý với sức chứa 360 lít, và có thể mở rộng lên 1.200 lít khi hàng ghế sau được gập xuống. Điều hòa tự động.Phiên bản 116i được Euro Auto đưa về Việt Nam trang bị động cơ TwinPower Turbo 4 xi-lanh thẳng hàng dung tích 1,6 lít, công suất 136 mã lực, mô-men xoắn cực đại 220 Nm tại vòng tua máy 1.350 vòng/phút. Tốc độ tối đa 210 km/h với mức tiêu hao nhiên liệu 5,3 lít/100 km. Hộp số tự động 8-cấp.\"', 'Kiểu dáng:	Hatchback\r\nNăm sản xuất:	2016\r\nKích thước tổng thể:	4.324mm x 1.765mm x 1.421mm\r\nTrọng lượnng không tải:	1.395kg\r\nSố chỗ:	5', '1511072556-808-151023057722044-01.jpg', 1248000000, 3, 2, 0, 'Việt Nam', '2018-06-03'),
(4, 'BMW 116I 2016 1.6', 1, 2, '\"BMW serie 1 là mẫu xe duy nhất được trang bị hệ truyền động cầu sau so với các đối thủ cùng phân hạng. Thiết kế phía trước với cụm đèn pha vuốt nhọn, hướng vào lưới tản nhiệt, đường gân trên nắp capô dạng chữ V, ôm lấy logo và lưới tản nhiệt dốc đứng tăng ấn tượng cho phần đầu xe. Đèn sương mù được tích hợp vào trong hốc gió.Nội thất của với màn hình trung tâm được bố trí hướng về phía người lái giúp dễ dàng quan sát. Bảng đồng hồ điều khiển hiển thị số km, dễ quan sát với màu cam. Khoang lái với ghế ngồi bọc da tích hợp chế độ nhớ vị trí. Khoang hành lý với sức chứa 360 lít, và có thể mở rộng lên 1.200 lít khi hàng ghế sau được gập xuống. Điều hòa tự động.Phiên bản 116i được Euro Auto đưa về Việt Nam trang bị động cơ TwinPower Turbo 4 xi-lanh thẳng hàng dung tích 1,6 lít, công suất 136 mã lực, mô-men xoắn cực đại 220 Nm tại vòng tua máy 1.350 vòng/phút. Tốc độ tối đa 210 km/h với mức tiêu hao nhiên liệu 5,3 lít/100 km. Hộp số tự động 8-cấp.\"', 'Kiểu dáng:	Hatchback\r\nNăm sản xuất:	2016\r\nKích thước tổng thể:	4.324mm x 1.765mm x 1.421mm\r\nTrọng lượnng không tải:	1.395kg\r\nSố chỗ:	5', '1.jpg', 1248000000, 2, 2, 0, 'Việt Nam', '2018-06-03'),
(5, 'BMW 116I 2016 1.6', 1, 2, '\"BMW serie 1 là mẫu xe duy nhất được trang bị hệ truyền động cầu sau so với các đối thủ cùng phân hạng. Thiết kế phía trước với cụm đèn pha vuốt nhọn, hướng vào lưới tản nhiệt, đường gân trên nắp capô dạng chữ V, ôm lấy logo và lưới tản nhiệt dốc đứng tăng ấn tượng cho phần đầu xe. Đèn sương mù được tích hợp vào trong hốc gió.Nội thất của với màn hình trung tâm được bố trí hướng về phía người lái giúp dễ dàng quan sát. Bảng đồng hồ điều khiển hiển thị số km, dễ quan sát với màu cam. Khoang lái với ghế ngồi bọc da tích hợp chế độ nhớ vị trí. Khoang hành lý với sức chứa 360 lít, và có thể mở rộng lên 1.200 lít khi hàng ghế sau được gập xuống. Điều hòa tự động.Phiên bản 116i được Euro Auto đưa về Việt Nam trang bị động cơ TwinPower Turbo 4 xi-lanh thẳng hàng dung tích 1,6 lít, công suất 136 mã lực, mô-men xoắn cực đại 220 Nm tại vòng tua máy 1.350 vòng/phút. Tốc độ tối đa 210 km/h với mức tiêu hao nhiên liệu 5,3 lít/100 km. Hộp số tự động 8-cấp.\"', 'Kiểu dáng:	Hatchback\r\nNăm sản xuất:	2016\r\nKích thước tổng thể:	4.324mm x 1.765mm x 1.421mm\r\nTrọng lượnng không tải:	1.395kg\r\nSố chỗ:	5', '1.jpg', 1248000000, 3, 2, 0, 'Việt Nam', '2018-06-03'),
(6, 'BMW 116I 2016 1.6', 1, 2, '\"BMW serie 1 là mẫu xe duy nhất được trang bị hệ truyền động cầu sau so với các đối thủ cùng phân hạng. Thiết kế phía trước với cụm đèn pha vuốt nhọn, hướng vào lưới tản nhiệt, đường gân trên nắp capô dạng chữ V, ôm lấy logo và lưới tản nhiệt dốc đứng tăng ấn tượng cho phần đầu xe. Đèn sương mù được tích hợp vào trong hốc gió.Nội thất của với màn hình trung tâm được bố trí hướng về phía người lái giúp dễ dàng quan sát. Bảng đồng hồ điều khiển hiển thị số km, dễ quan sát với màu cam. Khoang lái với ghế ngồi bọc da tích hợp chế độ nhớ vị trí. Khoang hành lý với sức chứa 360 lít, và có thể mở rộng lên 1.200 lít khi hàng ghế sau được gập xuống. Điều hòa tự động.Phiên bản 116i được Euro Auto đưa về Việt Nam trang bị động cơ TwinPower Turbo 4 xi-lanh thẳng hàng dung tích 1,6 lít, công suất 136 mã lực, mô-men xoắn cực đại 220 Nm tại vòng tua máy 1.350 vòng/phút. Tốc độ tối đa 210 km/h với mức tiêu hao nhiên liệu 5,3 lít/100 km. Hộp số tự động 8-cấp.\"', 'Kiểu dáng:	Hatchback\r\nNăm sản xuất:	2016\r\nKích thước tổng thể:	4.324mm x 1.765mm x 1.421mm\r\nTrọng lượnng không tải:	1.395kg\r\nSố chỗ:	5', '1.jpg', 1248000000, 2, 2, 0, 'Việt Nam', '2018-06-03'),
(7, 'BMW 116I 2016 1.6', 1, 1, '\"BMW serie 1 là mẫu xe duy nhất được trang bị hệ truyền động cầu sau so với các đối thủ cùng phân hạng. Thiết kế phía trước với cụm đèn pha vuốt nhọn, hướng vào lưới tản nhiệt, đường gân trên nắp capô dạng chữ V, ôm lấy logo và lưới tản nhiệt dốc đứng tăng ấn tượng cho phần đầu xe. Đèn sương mù được tích hợp vào trong hốc gió.Nội thất của với màn hình trung tâm được bố trí hướng về phía người lái giúp dễ dàng quan sát. Bảng đồng hồ điều khiển hiển thị số km, dễ quan sát với màu cam. Khoang lái với ghế ngồi bọc da tích hợp chế độ nhớ vị trí. Khoang hành lý với sức chứa 360 lít, và có thể mở rộng lên 1.200 lít khi hàng ghế sau được gập xuống. Điều hòa tự động.Phiên bản 116i được Euro Auto đưa về Việt Nam trang bị động cơ TwinPower Turbo 4 xi-lanh thẳng hàng dung tích 1,6 lít, công suất 136 mã lực, mô-men xoắn cực đại 220 Nm tại vòng tua máy 1.350 vòng/phút. Tốc độ tối đa 210 km/h với mức tiêu hao nhiên liệu 5,3 lít/100 km. Hộp số tự động 8-cấp.\"', 'Kiểu dáng:	Hatchback\r\nNăm sản xuất:	2016\r\nKích thước tổng thể:	4.324mm x 1.765mm x 1.421mm\r\nTrọng lượnng không tải:	1.395kg\r\nSố chỗ:	5', '1.jpg', 1248000000, 2, 2, 0, 'Việt Nam', '2018-06-03'),
(8, 'BMW 116I 2016 1.6', 1, 2, '\"BMW serie 1 là mẫu xe duy nhất được trang bị hệ truyền động cầu sau so với các đối thủ cùng phân hạng. Thiết kế phía trước với cụm đèn pha vuốt nhọn, hướng vào lưới tản nhiệt, đường gân trên nắp capô dạng chữ V, ôm lấy logo và lưới tản nhiệt dốc đứng tăng ấn tượng cho phần đầu xe. Đèn sương mù được tích hợp vào trong hốc gió.Nội thất của với màn hình trung tâm được bố trí hướng về phía người lái giúp dễ dàng quan sát. Bảng đồng hồ điều khiển hiển thị số km, dễ quan sát với màu cam. Khoang lái với ghế ngồi bọc da tích hợp chế độ nhớ vị trí. Khoang hành lý với sức chứa 360 lít, và có thể mở rộng lên 1.200 lít khi hàng ghế sau được gập xuống. Điều hòa tự động.Phiên bản 116i được Euro Auto đưa về Việt Nam trang bị động cơ TwinPower Turbo 4 xi-lanh thẳng hàng dung tích 1,6 lít, công suất 136 mã lực, mô-men xoắn cực đại 220 Nm tại vòng tua máy 1.350 vòng/phút. Tốc độ tối đa 210 km/h với mức tiêu hao nhiên liệu 5,3 lít/100 km. Hộp số tự động 8-cấp.\"', 'Kiểu dáng:	Hatchback\r\nNăm sản xuất:	2016\r\nKích thước tổng thể:	4.324mm x 1.765mm x 1.421mm\r\nTrọng lượnng không tải:	1.395kg\r\nSố chỗ:	5', '1.jpg', 1248000000, 3, 2, 0, 'Việt Nam', '2018-06-03'),
(9, 'BMW 116I 2016 1.6', 1, 2, '\"BMW serie 1 là mẫu xe duy nhất được trang bị hệ truyền động cầu sau so với các đối thủ cùng phân hạng. Thiết kế phía trước với cụm đèn pha vuốt nhọn, hướng vào lưới tản nhiệt, đường gân trên nắp capô dạng chữ V, ôm lấy logo và lưới tản nhiệt dốc đứng tăng ấn tượng cho phần đầu xe. Đèn sương mù được tích hợp vào trong hốc gió.Nội thất của với màn hình trung tâm được bố trí hướng về phía người lái giúp dễ dàng quan sát. Bảng đồng hồ điều khiển hiển thị số km, dễ quan sát với màu cam. Khoang lái với ghế ngồi bọc da tích hợp chế độ nhớ vị trí. Khoang hành lý với sức chứa 360 lít, và có thể mở rộng lên 1.200 lít khi hàng ghế sau được gập xuống. Điều hòa tự động.Phiên bản 116i được Euro Auto đưa về Việt Nam trang bị động cơ TwinPower Turbo 4 xi-lanh thẳng hàng dung tích 1,6 lít, công suất 136 mã lực, mô-men xoắn cực đại 220 Nm tại vòng tua máy 1.350 vòng/phút. Tốc độ tối đa 210 km/h với mức tiêu hao nhiên liệu 5,3 lít/100 km. Hộp số tự động 8-cấp.\"', 'Kiểu dáng:	Hatchback\r\nNăm sản xuất:	2016\r\nKích thước tổng thể:	4.324mm x 1.765mm x 1.421mm\r\nTrọng lượnng không tải:	1.395kg\r\nSố chỗ:	5', '1.jpg', 1248000000, 5, 2, 0, 'Việt Nam', '2018-06-03'),
(10, 'BMW 116I 2016 1.6', 1, 2, '\"BMW serie 1 là mẫu xe duy nhất được trang bị hệ truyền động cầu sau so với các đối thủ cùng phân hạng. Thiết kế phía trước với cụm đèn pha vuốt nhọn, hướng vào lưới tản nhiệt, đường gân trên nắp capô dạng chữ V, ôm lấy logo và lưới tản nhiệt dốc đứng tăng ấn tượng cho phần đầu xe. Đèn sương mù được tích hợp vào trong hốc gió.Nội thất của với màn hình trung tâm được bố trí hướng về phía người lái giúp dễ dàng quan sát. Bảng đồng hồ điều khiển hiển thị số km, dễ quan sát với màu cam. Khoang lái với ghế ngồi bọc da tích hợp chế độ nhớ vị trí. Khoang hành lý với sức chứa 360 lít, và có thể mở rộng lên 1.200 lít khi hàng ghế sau được gập xuống. Điều hòa tự động.Phiên bản 116i được Euro Auto đưa về Việt Nam trang bị động cơ TwinPower Turbo 4 xi-lanh thẳng hàng dung tích 1,6 lít, công suất 136 mã lực, mô-men xoắn cực đại 220 Nm tại vòng tua máy 1.350 vòng/phút. Tốc độ tối đa 210 km/h với mức tiêu hao nhiên liệu 5,3 lít/100 km. Hộp số tự động 8-cấp.\"', 'Kiểu dáng:	Hatchback\r\nNăm sản xuất:	2016\r\nKích thước tổng thể:	4.324mm x 1.765mm x 1.421mm\r\nTrọng lượnng không tải:	1.395kg\r\nSố chỗ:	5', '1.jpg', 1248000000, 3, 2, 0, 'Việt Nam', '2018-06-03'),
(11, 'BMW 116I 2016 1.6', 1, 2, '\"BMW serie 1 là mẫu xe duy nhất được trang bị hệ truyền động cầu sau so với các đối thủ cùng phân hạng. Thiết kế phía trước với cụm đèn pha vuốt nhọn, hướng vào lưới tản nhiệt, đường gân trên nắp capô dạng chữ V, ôm lấy logo và lưới tản nhiệt dốc đứng tăng ấn tượng cho phần đầu xe. Đèn sương mù được tích hợp vào trong hốc gió.Nội thất của với màn hình trung tâm được bố trí hướng về phía người lái giúp dễ dàng quan sát. Bảng đồng hồ điều khiển hiển thị số km, dễ quan sát với màu cam. Khoang lái với ghế ngồi bọc da tích hợp chế độ nhớ vị trí. Khoang hành lý với sức chứa 360 lít, và có thể mở rộng lên 1.200 lít khi hàng ghế sau được gập xuống. Điều hòa tự động.Phiên bản 116i được Euro Auto đưa về Việt Nam trang bị động cơ TwinPower Turbo 4 xi-lanh thẳng hàng dung tích 1,6 lít, công suất 136 mã lực, mô-men xoắn cực đại 220 Nm tại vòng tua máy 1.350 vòng/phút. Tốc độ tối đa 210 km/h với mức tiêu hao nhiên liệu 5,3 lít/100 km. Hộp số tự động 8-cấp.\"', 'Kiểu dáng:	Hatchback\r\nNăm sản xuất:	2016\r\nKích thước tổng thể:	4.324mm x 1.765mm x 1.421mm\r\nTrọng lượnng không tải:	1.395kg\r\nSố chỗ:	5', '1.jpg', 1248000000, 2, 2, 0, 'Việt Nam', '2018-06-03'),
(12, 'BMW 116I 2016 1.6', 1, 2, '\"BMW serie 1 là mẫu xe duy nhất được trang bị hệ truyền động cầu sau so với các đối thủ cùng phân hạng. Thiết kế phía trước với cụm đèn pha vuốt nhọn, hướng vào lưới tản nhiệt, đường gân trên nắp capô dạng chữ V, ôm lấy logo và lưới tản nhiệt dốc đứng tăng ấn tượng cho phần đầu xe. Đèn sương mù được tích hợp vào trong hốc gió.Nội thất của với màn hình trung tâm được bố trí hướng về phía người lái giúp dễ dàng quan sát. Bảng đồng hồ điều khiển hiển thị số km, dễ quan sát với màu cam. Khoang lái với ghế ngồi bọc da tích hợp chế độ nhớ vị trí. Khoang hành lý với sức chứa 360 lít, và có thể mở rộng lên 1.200 lít khi hàng ghế sau được gập xuống. Điều hòa tự động.Phiên bản 116i được Euro Auto đưa về Việt Nam trang bị động cơ TwinPower Turbo 4 xi-lanh thẳng hàng dung tích 1,6 lít, công suất 136 mã lực, mô-men xoắn cực đại 220 Nm tại vòng tua máy 1.350 vòng/phút. Tốc độ tối đa 210 km/h với mức tiêu hao nhiên liệu 5,3 lít/100 km. Hộp số tự động 8-cấp.\"', 'Kiểu dáng:	Hatchback\r\nNăm sản xuất:	2016\r\nKích thước tổng thể:	4.324mm x 1.765mm x 1.421mm\r\nTrọng lượnng không tải:	1.395kg\r\nSố chỗ:	5', '1.jpg', 1248000000, 2, 2, 0, 'Việt Nam', '2018-06-03'),
(13, 'BMW 116I 2016 1.6', 1, 2, '\"BMW serie 1 là mẫu xe duy nhất được trang bị hệ truyền động cầu sau so với các đối thủ cùng phân hạng. Thiết kế phía trước với cụm đèn pha vuốt nhọn, hướng vào lưới tản nhiệt, đường gân trên nắp capô dạng chữ V, ôm lấy logo và lưới tản nhiệt dốc đứng tăng ấn tượng cho phần đầu xe. Đèn sương mù được tích hợp vào trong hốc gió.Nội thất của với màn hình trung tâm được bố trí hướng về phía người lái giúp dễ dàng quan sát. Bảng đồng hồ điều khiển hiển thị số km, dễ quan sát với màu cam. Khoang lái với ghế ngồi bọc da tích hợp chế độ nhớ vị trí. Khoang hành lý với sức chứa 360 lít, và có thể mở rộng lên 1.200 lít khi hàng ghế sau được gập xuống. Điều hòa tự động.Phiên bản 116i được Euro Auto đưa về Việt Nam trang bị động cơ TwinPower Turbo 4 xi-lanh thẳng hàng dung tích 1,6 lít, công suất 136 mã lực, mô-men xoắn cực đại 220 Nm tại vòng tua máy 1.350 vòng/phút. Tốc độ tối đa 210 km/h với mức tiêu hao nhiên liệu 5,3 lít/100 km. Hộp số tự động 8-cấp.\"', 'Kiểu dáng:	Hatchback\r\nNăm sản xuất:	2016\r\nKích thước tổng thể:	4.324mm x 1.765mm x 1.421mm\r\nTrọng lượnng không tải:	1.395kg\r\nSố chỗ:	5', '1.jpg', 1248000000, 2, 2, 0, 'Việt Nam', '2018-06-03'),
(14, 'BMW 116I 2016 1.6', 1, 2, '\"BMW serie 1 là mẫu xe duy nhất được trang bị hệ truyền động cầu sau so với các đối thủ cùng phân hạng. Thiết kế phía trước với cụm đèn pha vuốt nhọn, hướng vào lưới tản nhiệt, đường gân trên nắp capô dạng chữ V, ôm lấy logo và lưới tản nhiệt dốc đứng tăng ấn tượng cho phần đầu xe. Đèn sương mù được tích hợp vào trong hốc gió.Nội thất của với màn hình trung tâm được bố trí hướng về phía người lái giúp dễ dàng quan sát. Bảng đồng hồ điều khiển hiển thị số km, dễ quan sát với màu cam. Khoang lái với ghế ngồi bọc da tích hợp chế độ nhớ vị trí. Khoang hành lý với sức chứa 360 lít, và có thể mở rộng lên 1.200 lít khi hàng ghế sau được gập xuống. Điều hòa tự động.Phiên bản 116i được Euro Auto đưa về Việt Nam trang bị động cơ TwinPower Turbo 4 xi-lanh thẳng hàng dung tích 1,6 lít, công suất 136 mã lực, mô-men xoắn cực đại 220 Nm tại vòng tua máy 1.350 vòng/phút. Tốc độ tối đa 210 km/h với mức tiêu hao nhiên liệu 5,3 lít/100 km. Hộp số tự động 8-cấp.\"', 'Kiểu dáng:	Hatchback\r\nNăm sản xuất:	2016\r\nKích thước tổng thể:	4.324mm x 1.765mm x 1.421mm\r\nTrọng lượnng không tải:	1.395kg\r\nSố chỗ:	5', '1.jpg', 1248000000, 2, 2, 0, 'Việt Nam', '2018-06-03'),
(15, 'BMW 116I 2016 1.6', 1, 2, '\"BMW serie 1 là mẫu xe duy nhất được trang bị hệ truyền động cầu sau so với các đối thủ cùng phân hạng. Thiết kế phía trước với cụm đèn pha vuốt nhọn, hướng vào lưới tản nhiệt, đường gân trên nắp capô dạng chữ V, ôm lấy logo và lưới tản nhiệt dốc đứng tăng ấn tượng cho phần đầu xe. Đèn sương mù được tích hợp vào trong hốc gió.Nội thất của với màn hình trung tâm được bố trí hướng về phía người lái giúp dễ dàng quan sát. Bảng đồng hồ điều khiển hiển thị số km, dễ quan sát với màu cam. Khoang lái với ghế ngồi bọc da tích hợp chế độ nhớ vị trí. Khoang hành lý với sức chứa 360 lít, và có thể mở rộng lên 1.200 lít khi hàng ghế sau được gập xuống. Điều hòa tự động.Phiên bản 116i được Euro Auto đưa về Việt Nam trang bị động cơ TwinPower Turbo 4 xi-lanh thẳng hàng dung tích 1,6 lít, công suất 136 mã lực, mô-men xoắn cực đại 220 Nm tại vòng tua máy 1.350 vòng/phút. Tốc độ tối đa 210 km/h với mức tiêu hao nhiên liệu 5,3 lít/100 km. Hộp số tự động 8-cấp.\"', 'Kiểu dáng:	Hatchback\r\nNăm sản xuất:	2016\r\nKích thước tổng thể:	4.324mm x 1.765mm x 1.421mm\r\nTrọng lượnng không tải:	1.395kg\r\nSố chỗ:	5', '1.jpg', 1248000000, 2, 2, 0, 'Việt Nam', '2018-06-03'),
(16, 'BMW 116I 2016 1.6', 1, 2, '\"BMW serie 1 là mẫu xe duy nhất được trang bị hệ truyền động cầu sau so với các đối thủ cùng phân hạng. Thiết kế phía trước với cụm đèn pha vuốt nhọn, hướng vào lưới tản nhiệt, đường gân trên nắp capô dạng chữ V, ôm lấy logo và lưới tản nhiệt dốc đứng tăng ấn tượng cho phần đầu xe. Đèn sương mù được tích hợp vào trong hốc gió.Nội thất của với màn hình trung tâm được bố trí hướng về phía người lái giúp dễ dàng quan sát. Bảng đồng hồ điều khiển hiển thị số km, dễ quan sát với màu cam. Khoang lái với ghế ngồi bọc da tích hợp chế độ nhớ vị trí. Khoang hành lý với sức chứa 360 lít, và có thể mở rộng lên 1.200 lít khi hàng ghế sau được gập xuống. Điều hòa tự động.Phiên bản 116i được Euro Auto đưa về Việt Nam trang bị động cơ TwinPower Turbo 4 xi-lanh thẳng hàng dung tích 1,6 lít, công suất 136 mã lực, mô-men xoắn cực đại 220 Nm tại vòng tua máy 1.350 vòng/phút. Tốc độ tối đa 210 km/h với mức tiêu hao nhiên liệu 5,3 lít/100 km. Hộp số tự động 8-cấp.\"', 'Kiểu dáng:	Hatchback\r\nNăm sản xuất:	2016\r\nKích thước tổng thể:	4.324mm x 1.765mm x 1.421mm\r\nTrọng lượnng không tải:	1.395kg\r\nSố chỗ:	5', '1.jpg', 1248000000, 3, 2, 0, 'Việt Nam', '2018-06-03');

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
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

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
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`HangXe`) REFERENCES `hangxe` (`Id`),
  ADD CONSTRAINT `sanpham_ibfk_2` FOREIGN KEY (`LoaiXe`) REFERENCES `loaixe` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
