-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: localhost    Database: banoto
-- ------------------------------------------------------
-- Server version	5.7.22-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(65) DEFAULT NULL,
  `isAdmin` tinyint(1) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (5,'thanh3','f4bf9f7fcbedaba0392f108c59d8f4a38b3838efb6487',0,'asdsad'),(6,'thanh4','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92',1,'123456'),(7,'thanh5','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92',0,'1'),(8,'thanh6','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92',0,'1'),(11,'thanh7','6b51d431df5d7f141cbececcf79edf3dd861c3b4069f0b11661a3eefacbba918',0,'12452123'),(12,'thanh8','481f6cc0511143ccdd7e2d1b1b94faf0a700a8b49cd13922a70b5ae28acaa8c5',0,'147'),(13,'thanh','ca978112ca1bbdcafac231b39a23dc4da786eff8147c4e72b9807785afee48bb',1,'d');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chitiethoadon`
--

DROP TABLE IF EXISTS `chitiethoadon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chitiethoadon` (
  `MaHoaDon` int(11) NOT NULL,
  `IdKH` int(11) NOT NULL,
  `TongTien` int(11) NOT NULL,
  `TinhTrang` text NOT NULL,
  `NgayMua` date NOT NULL,
  PRIMARY KEY (`MaHoaDon`),
  KEY `IdKH` (`IdKH`),
  CONSTRAINT `chitiethoadon_ibfk_1` FOREIGN KEY (`MaHoaDon`) REFERENCES `hoadon` (`MaHoaDon`),
  CONSTRAINT `chitiethoadon_ibfk_2` FOREIGN KEY (`IdKH`) REFERENCES `khachhang` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chitiethoadon`
--

LOCK TABLES `chitiethoadon` WRITE;
/*!40000 ALTER TABLE `chitiethoadon` DISABLE KEYS */;
INSERT INTO `chitiethoadon` VALUES (1,7,1000,'?ang giao','2018-06-18');
/*!40000 ALTER TABLE `chitiethoadon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hangxe`
--

DROP TABLE IF EXISTS `hangxe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hangxe` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `TenHang` text NOT NULL,
  `Pic` text NOT NULL,
  `isHide` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hangxe`
--

LOCK TABLES `hangxe` WRITE;
/*!40000 ALTER TABLE `hangxe` DISABLE KEYS */;
INSERT INTO `hangxe` VALUES (1,'BMW','1.png',1),(2,'FERRARI','2.png',1),(3,'VOLVO','3.png',0),(4,'MERCEDES BENZ','4.png',0),(5,'AUDI','5.png',0),(6,'HYUNDAI','6.png',0),(7,'PEUGEOT','7.png',0);
/*!40000 ALTER TABLE `hangxe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hoadon`
--

DROP TABLE IF EXISTS `hoadon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hoadon` (
  `MaHoaDon` int(11) NOT NULL,
  `IdSP` int(11) NOT NULL,
  `SL` int(11) NOT NULL,
  `DonGia` int(11) NOT NULL,
  PRIMARY KEY (`MaHoaDon`,`IdSP`),
  KEY `IdSP` (`IdSP`),
  CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`IdSP`) REFERENCES `sanpham` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hoadon`
--

LOCK TABLES `hoadon` WRITE;
/*!40000 ALTER TABLE `hoadon` DISABLE KEYS */;
INSERT INTO `hoadon` VALUES (1,1,1,10),(1,3,1,10);
/*!40000 ALTER TABLE `hoadon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `khachhang`
--

DROP TABLE IF EXISTS `khachhang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `khachhang` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Ten` text NOT NULL,
  `Email` text NOT NULL,
  `SDT` text NOT NULL,
  `NgaySinh` date NOT NULL,
  `DiaChi` text NOT NULL,
  `Username` text NOT NULL,
  `Pass` text NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `khachhang`
--

LOCK TABLES `khachhang` WRITE;
/*!40000 ALTER TABLE `khachhang` DISABLE KEYS */;
INSERT INTO `khachhang` VALUES (7,'t?uhjka','skjds','de23e1','2018-06-04','édqw','?qdq','qdsqw');
/*!40000 ALTER TABLE `khachhang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loaixe`
--

DROP TABLE IF EXISTS `loaixe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loaixe` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `TenLoai` text NOT NULL,
  `isHide` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loaixe`
--

LOCK TABLES `loaixe` WRITE;
/*!40000 ALTER TABLE `loaixe` DISABLE KEYS */;
INSERT INTO `loaixe` VALUES (1,'SEDAN',0),(2,'HATCHBACK',0),(3,'MPV',0),(4,'COUPE',1);
/*!40000 ALTER TABLE `loaixe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `picture`
--

DROP TABLE IF EXISTS `picture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `picture` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `MaXe` int(11) DEFAULT NULL,
  `picture` tinytext,
  PRIMARY KEY (`Id`),
  KEY `MaXe` (`MaXe`),
  CONSTRAINT `picture_ibfk_1` FOREIGN KEY (`MaXe`) REFERENCES `sanpham` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `picture`
--

LOCK TABLES `picture` WRITE;
/*!40000 ALTER TABLE `picture` DISABLE KEYS */;
INSERT INTO `picture` VALUES (5,1,'1529991720629_img002.gif'),(6,1,'1529991720638_img278.gif'),(7,1,'1529991720623_img001.gif');
/*!40000 ALTER TABLE `picture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sanpham`
--

DROP TABLE IF EXISTS `sanpham`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sanpham` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
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
  `isHide` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`Id`),
  KEY `HangXe` (`HangXe`),
  KEY `LoaiXe` (`LoaiXe`),
  CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`HangXe`) REFERENCES `hangxe` (`Id`),
  CONSTRAINT `sanpham_ibfk_2` FOREIGN KEY (`LoaiXe`) REFERENCES `loaixe` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sanpham`
--

LOCK TABLES `sanpham` WRITE;
/*!40000 ALTER TABLE `sanpham` DISABLE KEYS */;
INSERT INTO `sanpham` VALUES (1,'BMW 116I 2016 1.6',1,1,'<p>&quot;BMW serie 1 l&agrave; mẫu xe duy nhất được trang bị hệ truyền động cầu sau so với c&aacute;c đối thủ c&ugrave;ng ph&acirc;n hạng. Thiết kế ph&iacute;a trước với cụm đ&egrave;n pha vuốt nhọn, hướng v&agrave;o lưới tản nhiệt, đường g&acirc;n tr&ecirc;n nắp cap&ocirc; dạng chữ V, &ocirc;m lấy logo v&agrave; lưới tản nhiệt dốc đứng tăng ấn tượng cho phần đầu xe. Đ&egrave;n sương m&ugrave; được t&iacute;ch hợp v&agrave;o trong hốc gi&oacute;.Nội thất của với m&agrave;n h&igrave;nh trung t&acirc;m được bố tr&iacute; hướng về ph&iacute;a người l&aacute;i gi&uacute;p dễ d&agrave;ng quan s&aacute;t. Bảng đồng hồ điều khiển hiển thị số km, dễ quan s&aacute;t với m&agrave;u cam. Khoang l&aacute;i với ghế ngồi bọc da t&iacute;ch hợp chế độ nhớ vị tr&iacute;. Khoang h&agrave;nh l&yacute; với sức chứa 360 l&iacute;t, v&agrave; c&oacute; thể mở rộng l&ecirc;n 1.200 l&iacute;t khi h&agrave;ng ghế sau được gập xuống. Điều h&ograve;a tự động.Phi&ecirc;n bản 116i được Euro Auto đưa về Việt Nam trang bị động cơ TwinPower Turbo 4 xi-lanh thẳng h&agrave;ng dung t&iacute;ch 1,6 l&iacute;t, c&ocirc;ng suất 136 m&atilde; lực, m&ocirc;-men xoắn cực đại 220 Nm tại v&ograve;ng tua m&aacute;y 1.350 v&ograve;ng/ph&uacute;t. Tốc độ tối đa 210 km/h với mức ti&ecirc;u hao nhi&ecirc;n liệu 5,3 l&iacute;t/100 km. Hộp số tự động 8-cấp.&quot;</p>\r\n','<p>Kiểu d&aacute;ng: Hatchback Năm sản xuất: 2016 K&iacute;ch thước tổng thể: 4.324mm x 1.765mm x 1.421mm Trọng lượnng kh&ocirc;ng tải: 1.395kg Số chỗ: 5</p>\r\n','1529991313377_bmw.jpeg',1248000000,14,2,0,'Việt Nam','2018-06-03',0),(2,'BMW 116I 2016 1.6',1,2,'<p>&quot;BMW serie 1 l&agrave; mẫu xe duy nhất được trang bị hệ truyền động cầu sau so với c&aacute;c đối thủ c&ugrave;ng ph&acirc;n hạng. Thiết kế ph&iacute;a trước với cụm đ&egrave;n pha vuốt nhọn, hướng v&agrave;o lưới tản nhiệt, đường g&acirc;n tr&ecirc;n nắp cap&ocirc; dạng chữ V, &ocirc;m lấy logo v&agrave; lưới tản nhiệt dốc đứng tăng ấn tượng cho phần đầu xe. Đ&egrave;n sương m&ugrave; được t&iacute;ch hợp v&agrave;o trong hốc gi&oacute;.Nội thất của với m&agrave;n h&igrave;nh trung t&acirc;m được bố tr&iacute; hướng về ph&iacute;a người l&aacute;i gi&uacute;p dễ d&agrave;ng quan s&aacute;t. Bảng đồng hồ điều khiển hiển thị số km, dễ quan s&aacute;t với m&agrave;u cam. Khoang l&aacute;i với ghế ngồi bọc da t&iacute;ch hợp chế độ nhớ vị tr&iacute;. Khoang h&agrave;nh l&yacute; với sức chứa 360 l&iacute;t, v&agrave; c&oacute; thể mở rộng l&ecirc;n 1.200 l&iacute;t khi h&agrave;ng ghế sau được gập xuống. Điều h&ograve;a tự động.Phi&ecirc;n bản 116i được Euro Auto đưa về Việt Nam trang bị động cơ TwinPower Turbo 4 xi-lanh thẳng h&agrave;ng dung t&iacute;ch 1,6 l&iacute;t, c&ocirc;ng suất 136 m&atilde; lực, m&ocirc;-men xoắn cực đại 220 Nm tại v&ograve;ng tua m&aacute;y 1.350 v&ograve;ng/ph&uacute;t. Tốc độ tối đa 210 km/h với mức ti&ecirc;u hao nhi&ecirc;n liệu 5,3 l&iacute;t/100 km. Hộp số tự động 8-cấp.&quot;</p>\r\n','<p>Kiểu d&aacute;ng: Hatchback Năm sản xuất: 2016 K&iacute;ch thước tổng thể: 4.324mm x 1.765mm x 1.421mm Trọng lượnng kh&ocirc;ng tải: 1.395kg Số chỗ: 5</p>\r\n','1529991450410_bmw.jpeg',1248000000,19,2,0,'Việt Nam','2018-06-01',0),(3,'BMW 116I 2016 1.6',1,2,'<p>&quot;BMW serie 1 l&agrave; mẫu xe duy nhất được trang bị hệ truyền động cầu sau so với c&aacute;c đối thủ c&ugrave;ng ph&acirc;n hạng. Thiết kế ph&iacute;a trước với cụm đ&egrave;n pha vuốt nhọn, hướng v&agrave;o lưới tản nhiệt, đường g&acirc;n tr&ecirc;n nắp cap&ocirc; dạng chữ V, &ocirc;m lấy logo v&agrave; lưới tản nhiệt dốc đứng tăng ấn tượng cho phần đầu xe. Đ&egrave;n sương m&ugrave; được t&iacute;ch hợp v&agrave;o trong hốc gi&oacute;.Nội thất của với m&agrave;n h&igrave;nh trung t&acirc;m được bố tr&iacute; hướng về ph&iacute;a người l&aacute;i gi&uacute;p dễ d&agrave;ng quan s&aacute;t. Bảng đồng hồ điều khiển hiển thị số km, dễ quan s&aacute;t với m&agrave;u cam. Khoang l&aacute;i với ghế ngồi bọc da t&iacute;ch hợp chế độ nhớ vị tr&iacute;. Khoang h&agrave;nh l&yacute; với sức chứa 360 l&iacute;t, v&agrave; c&oacute; thể mở rộng l&ecirc;n 1.200 l&iacute;t khi h&agrave;ng ghế sau được gập xuống. Điều h&ograve;a tự động.Phi&ecirc;n bản 116i được Euro Auto đưa về Việt Nam trang bị động cơ TwinPower Turbo 4 xi-lanh thẳng h&agrave;ng dung t&iacute;ch 1,6 l&iacute;t, c&ocirc;ng suất 136 m&atilde; lực, m&ocirc;-men xoắn cực đại 220 Nm tại v&ograve;ng tua m&aacute;y 1.350 v&ograve;ng/ph&uacute;t. Tốc độ tối đa 210 km/h với mức ti&ecirc;u hao nhi&ecirc;n liệu 5,3 l&iacute;t/100 km. Hộp số tự động 8-cấp.&quot;</p>\r\n','<p>Kiểu d&aacute;ng: Hatchback Năm sản xuất: 2016 K&iacute;ch thước tổng thể: 4.324mm x 1.765mm x 1.421mm Trọng lượnng kh&ocirc;ng tải: 1.395kg Số chỗ: 5</p>\r\n','1529991479987_bmw.jpeg',1248000000,6,2,0,'Việt Nam','2018-06-03',0),(4,'BMW 116I 2016 1.6',1,2,'\"BMW serie 1 là mẫu xe duy nhất được trang bị hệ truyền động cầu sau so với các đối thủ cùng phân hạng. Thiết kế phía trước với cụm đèn pha vuốt nhọn, hướng vào lưới tản nhiệt, đường gân trên nắp capô dạng chữ V, ôm lấy logo và lưới tản nhiệt dốc đứng tăng ấn tượng cho phần đầu xe. Đèn sương mù được tích hợp vào trong hốc gió.Nội thất của với màn hình trung tâm được bố trí hướng về phía người lái giúp dễ dàng quan sát. Bảng đồng hồ điều khiển hiển thị số km, dễ quan sát với màu cam. Khoang lái với ghế ngồi bọc da tích hợp chế độ nhớ vị trí. Khoang hành lý với sức chứa 360 lít, và có thể mở rộng lên 1.200 lít khi hàng ghế sau được gập xuống. Điều hòa tự động.Phiên bản 116i được Euro Auto đưa về Việt Nam trang bị động cơ TwinPower Turbo 4 xi-lanh thẳng hàng dung tích 1,6 lít, công suất 136 mã lực, mô-men xoắn cực đại 220 Nm tại vòng tua máy 1.350 vòng/phút. Tốc độ tối đa 210 km/h với mức tiêu hao nhiên liệu 5,3 lít/100 km. Hộp số tự động 8-cấp.\"','Kiểu dáng:	Hatchback\r\nNăm sản xuất:	2016\r\nKích thước tổng thể:	4.324mm x 1.765mm x 1.421mm\r\nTrọng lượnng không tải:	1.395kg\r\nSố chỗ:	5','1.jpg',1248000000,11,2,0,'Việt Nam','2018-06-03',0),(5,'BMW 116I 2016 1.6',1,2,'\"BMW serie 1 là mẫu xe duy nhất được trang bị hệ truyền động cầu sau so với các đối thủ cùng phân hạng. Thiết kế phía trước với cụm đèn pha vuốt nhọn, hướng vào lưới tản nhiệt, đường gân trên nắp capô dạng chữ V, ôm lấy logo và lưới tản nhiệt dốc đứng tăng ấn tượng cho phần đầu xe. Đèn sương mù được tích hợp vào trong hốc gió.Nội thất của với màn hình trung tâm được bố trí hướng về phía người lái giúp dễ dàng quan sát. Bảng đồng hồ điều khiển hiển thị số km, dễ quan sát với màu cam. Khoang lái với ghế ngồi bọc da tích hợp chế độ nhớ vị trí. Khoang hành lý với sức chứa 360 lít, và có thể mở rộng lên 1.200 lít khi hàng ghế sau được gập xuống. Điều hòa tự động.Phiên bản 116i được Euro Auto đưa về Việt Nam trang bị động cơ TwinPower Turbo 4 xi-lanh thẳng hàng dung tích 1,6 lít, công suất 136 mã lực, mô-men xoắn cực đại 220 Nm tại vòng tua máy 1.350 vòng/phút. Tốc độ tối đa 210 km/h với mức tiêu hao nhiên liệu 5,3 lít/100 km. Hộp số tự động 8-cấp.\"','Kiểu dáng:	Hatchback\r\nNăm sản xuất:	2016\r\nKích thước tổng thể:	4.324mm x 1.765mm x 1.421mm\r\nTrọng lượnng không tải:	1.395kg\r\nSố chỗ:	5','1.jpg',1248000000,3,2,0,'Việt Nam','2018-06-03',0),(6,'BMW 116I 2016 1.6',1,2,'\"BMW serie 1 là mẫu xe duy nhất được trang bị hệ truyền động cầu sau so với các đối thủ cùng phân hạng. Thiết kế phía trước với cụm đèn pha vuốt nhọn, hướng vào lưới tản nhiệt, đường gân trên nắp capô dạng chữ V, ôm lấy logo và lưới tản nhiệt dốc đứng tăng ấn tượng cho phần đầu xe. Đèn sương mù được tích hợp vào trong hốc gió.Nội thất của với màn hình trung tâm được bố trí hướng về phía người lái giúp dễ dàng quan sát. Bảng đồng hồ điều khiển hiển thị số km, dễ quan sát với màu cam. Khoang lái với ghế ngồi bọc da tích hợp chế độ nhớ vị trí. Khoang hành lý với sức chứa 360 lít, và có thể mở rộng lên 1.200 lít khi hàng ghế sau được gập xuống. Điều hòa tự động.Phiên bản 116i được Euro Auto đưa về Việt Nam trang bị động cơ TwinPower Turbo 4 xi-lanh thẳng hàng dung tích 1,6 lít, công suất 136 mã lực, mô-men xoắn cực đại 220 Nm tại vòng tua máy 1.350 vòng/phút. Tốc độ tối đa 210 km/h với mức tiêu hao nhiên liệu 5,3 lít/100 km. Hộp số tự động 8-cấp.\"','Kiểu dáng:	Hatchback\r\nNăm sản xuất:	2016\r\nKích thước tổng thể:	4.324mm x 1.765mm x 1.421mm\r\nTrọng lượnng không tải:	1.395kg\r\nSố chỗ:	5','1.jpg',1248000000,2,2,0,'Việt Nam','2018-06-03',0),(7,'BMW 116I 2016 1.6',1,1,'\"BMW serie 1 là mẫu xe duy nhất được trang bị hệ truyền động cầu sau so với các đối thủ cùng phân hạng. Thiết kế phía trước với cụm đèn pha vuốt nhọn, hướng vào lưới tản nhiệt, đường gân trên nắp capô dạng chữ V, ôm lấy logo và lưới tản nhiệt dốc đứng tăng ấn tượng cho phần đầu xe. Đèn sương mù được tích hợp vào trong hốc gió.Nội thất của với màn hình trung tâm được bố trí hướng về phía người lái giúp dễ dàng quan sát. Bảng đồng hồ điều khiển hiển thị số km, dễ quan sát với màu cam. Khoang lái với ghế ngồi bọc da tích hợp chế độ nhớ vị trí. Khoang hành lý với sức chứa 360 lít, và có thể mở rộng lên 1.200 lít khi hàng ghế sau được gập xuống. Điều hòa tự động.Phiên bản 116i được Euro Auto đưa về Việt Nam trang bị động cơ TwinPower Turbo 4 xi-lanh thẳng hàng dung tích 1,6 lít, công suất 136 mã lực, mô-men xoắn cực đại 220 Nm tại vòng tua máy 1.350 vòng/phút. Tốc độ tối đa 210 km/h với mức tiêu hao nhiên liệu 5,3 lít/100 km. Hộp số tự động 8-cấp.\"','Kiểu dáng:	Hatchback\r\nNăm sản xuất:	2016\r\nKích thước tổng thể:	4.324mm x 1.765mm x 1.421mm\r\nTrọng lượnng không tải:	1.395kg\r\nSố chỗ:	5','1.jpg',1248000000,2,2,0,'Việt Nam','2018-06-03',0),(8,'BMW 116I 2016 1.6',1,2,'\"BMW serie 1 là mẫu xe duy nhất được trang bị hệ truyền động cầu sau so với các đối thủ cùng phân hạng. Thiết kế phía trước với cụm đèn pha vuốt nhọn, hướng vào lưới tản nhiệt, đường gân trên nắp capô dạng chữ V, ôm lấy logo và lưới tản nhiệt dốc đứng tăng ấn tượng cho phần đầu xe. Đèn sương mù được tích hợp vào trong hốc gió.Nội thất của với màn hình trung tâm được bố trí hướng về phía người lái giúp dễ dàng quan sát. Bảng đồng hồ điều khiển hiển thị số km, dễ quan sát với màu cam. Khoang lái với ghế ngồi bọc da tích hợp chế độ nhớ vị trí. Khoang hành lý với sức chứa 360 lít, và có thể mở rộng lên 1.200 lít khi hàng ghế sau được gập xuống. Điều hòa tự động.Phiên bản 116i được Euro Auto đưa về Việt Nam trang bị động cơ TwinPower Turbo 4 xi-lanh thẳng hàng dung tích 1,6 lít, công suất 136 mã lực, mô-men xoắn cực đại 220 Nm tại vòng tua máy 1.350 vòng/phút. Tốc độ tối đa 210 km/h với mức tiêu hao nhiên liệu 5,3 lít/100 km. Hộp số tự động 8-cấp.\"','Kiểu dáng:	Hatchback\r\nNăm sản xuất:	2016\r\nKích thước tổng thể:	4.324mm x 1.765mm x 1.421mm\r\nTrọng lượnng không tải:	1.395kg\r\nSố chỗ:	5','1.jpg',1248000000,3,2,0,'Việt Nam','2018-06-03',0),(9,'BMW 116I 2016 1.6',1,2,'\"BMW serie 1 là mẫu xe duy nhất được trang bị hệ truyền động cầu sau so với các đối thủ cùng phân hạng. Thiết kế phía trước với cụm đèn pha vuốt nhọn, hướng vào lưới tản nhiệt, đường gân trên nắp capô dạng chữ V, ôm lấy logo và lưới tản nhiệt dốc đứng tăng ấn tượng cho phần đầu xe. Đèn sương mù được tích hợp vào trong hốc gió.Nội thất của với màn hình trung tâm được bố trí hướng về phía người lái giúp dễ dàng quan sát. Bảng đồng hồ điều khiển hiển thị số km, dễ quan sát với màu cam. Khoang lái với ghế ngồi bọc da tích hợp chế độ nhớ vị trí. Khoang hành lý với sức chứa 360 lít, và có thể mở rộng lên 1.200 lít khi hàng ghế sau được gập xuống. Điều hòa tự động.Phiên bản 116i được Euro Auto đưa về Việt Nam trang bị động cơ TwinPower Turbo 4 xi-lanh thẳng hàng dung tích 1,6 lít, công suất 136 mã lực, mô-men xoắn cực đại 220 Nm tại vòng tua máy 1.350 vòng/phút. Tốc độ tối đa 210 km/h với mức tiêu hao nhiên liệu 5,3 lít/100 km. Hộp số tự động 8-cấp.\"','Kiểu dáng:	Hatchback\r\nNăm sản xuất:	2016\r\nKích thước tổng thể:	4.324mm x 1.765mm x 1.421mm\r\nTrọng lượnng không tải:	1.395kg\r\nSố chỗ:	5','1.jpg',1248000000,5,2,0,'Việt Nam','2018-06-03',0),(10,'BMW 116I 2016 1.6',1,2,'\"BMW serie 1 là mẫu xe duy nhất được trang bị hệ truyền động cầu sau so với các đối thủ cùng phân hạng. Thiết kế phía trước với cụm đèn pha vuốt nhọn, hướng vào lưới tản nhiệt, đường gân trên nắp capô dạng chữ V, ôm lấy logo và lưới tản nhiệt dốc đứng tăng ấn tượng cho phần đầu xe. Đèn sương mù được tích hợp vào trong hốc gió.Nội thất của với màn hình trung tâm được bố trí hướng về phía người lái giúp dễ dàng quan sát. Bảng đồng hồ điều khiển hiển thị số km, dễ quan sát với màu cam. Khoang lái với ghế ngồi bọc da tích hợp chế độ nhớ vị trí. Khoang hành lý với sức chứa 360 lít, và có thể mở rộng lên 1.200 lít khi hàng ghế sau được gập xuống. Điều hòa tự động.Phiên bản 116i được Euro Auto đưa về Việt Nam trang bị động cơ TwinPower Turbo 4 xi-lanh thẳng hàng dung tích 1,6 lít, công suất 136 mã lực, mô-men xoắn cực đại 220 Nm tại vòng tua máy 1.350 vòng/phút. Tốc độ tối đa 210 km/h với mức tiêu hao nhiên liệu 5,3 lít/100 km. Hộp số tự động 8-cấp.\"','Kiểu dáng:	Hatchback\r\nNăm sản xuất:	2016\r\nKích thước tổng thể:	4.324mm x 1.765mm x 1.421mm\r\nTrọng lượnng không tải:	1.395kg\r\nSố chỗ:	5','1.jpg',1248000000,3,2,0,'Việt Nam','2018-06-03',0),(11,'BMW 116I 2016 1.6',1,2,'\"BMW serie 1 là mẫu xe duy nhất được trang bị hệ truyền động cầu sau so với các đối thủ cùng phân hạng. Thiết kế phía trước với cụm đèn pha vuốt nhọn, hướng vào lưới tản nhiệt, đường gân trên nắp capô dạng chữ V, ôm lấy logo và lưới tản nhiệt dốc đứng tăng ấn tượng cho phần đầu xe. Đèn sương mù được tích hợp vào trong hốc gió.Nội thất của với màn hình trung tâm được bố trí hướng về phía người lái giúp dễ dàng quan sát. Bảng đồng hồ điều khiển hiển thị số km, dễ quan sát với màu cam. Khoang lái với ghế ngồi bọc da tích hợp chế độ nhớ vị trí. Khoang hành lý với sức chứa 360 lít, và có thể mở rộng lên 1.200 lít khi hàng ghế sau được gập xuống. Điều hòa tự động.Phiên bản 116i được Euro Auto đưa về Việt Nam trang bị động cơ TwinPower Turbo 4 xi-lanh thẳng hàng dung tích 1,6 lít, công suất 136 mã lực, mô-men xoắn cực đại 220 Nm tại vòng tua máy 1.350 vòng/phút. Tốc độ tối đa 210 km/h với mức tiêu hao nhiên liệu 5,3 lít/100 km. Hộp số tự động 8-cấp.\"','Kiểu dáng:	Hatchback\r\nNăm sản xuất:	2016\r\nKích thước tổng thể:	4.324mm x 1.765mm x 1.421mm\r\nTrọng lượnng không tải:	1.395kg\r\nSố chỗ:	5','1.jpg',1248000000,2,2,0,'Việt Nam','2018-06-03',0),(12,'BMW 116I 2016 1.6',1,2,'\"BMW serie 1 là mẫu xe duy nhất được trang bị hệ truyền động cầu sau so với các đối thủ cùng phân hạng. Thiết kế phía trước với cụm đèn pha vuốt nhọn, hướng vào lưới tản nhiệt, đường gân trên nắp capô dạng chữ V, ôm lấy logo và lưới tản nhiệt dốc đứng tăng ấn tượng cho phần đầu xe. Đèn sương mù được tích hợp vào trong hốc gió.Nội thất của với màn hình trung tâm được bố trí hướng về phía người lái giúp dễ dàng quan sát. Bảng đồng hồ điều khiển hiển thị số km, dễ quan sát với màu cam. Khoang lái với ghế ngồi bọc da tích hợp chế độ nhớ vị trí. Khoang hành lý với sức chứa 360 lít, và có thể mở rộng lên 1.200 lít khi hàng ghế sau được gập xuống. Điều hòa tự động.Phiên bản 116i được Euro Auto đưa về Việt Nam trang bị động cơ TwinPower Turbo 4 xi-lanh thẳng hàng dung tích 1,6 lít, công suất 136 mã lực, mô-men xoắn cực đại 220 Nm tại vòng tua máy 1.350 vòng/phút. Tốc độ tối đa 210 km/h với mức tiêu hao nhiên liệu 5,3 lít/100 km. Hộp số tự động 8-cấp.\"','Kiểu dáng:	Hatchback\r\nNăm sản xuất:	2016\r\nKích thước tổng thể:	4.324mm x 1.765mm x 1.421mm\r\nTrọng lượnng không tải:	1.395kg\r\nSố chỗ:	5','1.jpg',1248000000,6,2,0,'Việt Nam','2018-06-03',0),(13,'BMW 116I 2016 1.6',1,2,'\"BMW serie 1 là mẫu xe duy nhất được trang bị hệ truyền động cầu sau so với các đối thủ cùng phân hạng. Thiết kế phía trước với cụm đèn pha vuốt nhọn, hướng vào lưới tản nhiệt, đường gân trên nắp capô dạng chữ V, ôm lấy logo và lưới tản nhiệt dốc đứng tăng ấn tượng cho phần đầu xe. Đèn sương mù được tích hợp vào trong hốc gió.Nội thất của với màn hình trung tâm được bố trí hướng về phía người lái giúp dễ dàng quan sát. Bảng đồng hồ điều khiển hiển thị số km, dễ quan sát với màu cam. Khoang lái với ghế ngồi bọc da tích hợp chế độ nhớ vị trí. Khoang hành lý với sức chứa 360 lít, và có thể mở rộng lên 1.200 lít khi hàng ghế sau được gập xuống. Điều hòa tự động.Phiên bản 116i được Euro Auto đưa về Việt Nam trang bị động cơ TwinPower Turbo 4 xi-lanh thẳng hàng dung tích 1,6 lít, công suất 136 mã lực, mô-men xoắn cực đại 220 Nm tại vòng tua máy 1.350 vòng/phút. Tốc độ tối đa 210 km/h với mức tiêu hao nhiên liệu 5,3 lít/100 km. Hộp số tự động 8-cấp.\"','Kiểu dáng:	Hatchback\r\nNăm sản xuất:	2016\r\nKích thước tổng thể:	4.324mm x 1.765mm x 1.421mm\r\nTrọng lượnng không tải:	1.395kg\r\nSố chỗ:	5','1.jpg',1248000000,2,2,0,'Việt Nam','2018-06-03',0),(14,'BMW 116I 2016 1.6',1,2,'\"BMW serie 1 là mẫu xe duy nhất được trang bị hệ truyền động cầu sau so với các đối thủ cùng phân hạng. Thiết kế phía trước với cụm đèn pha vuốt nhọn, hướng vào lưới tản nhiệt, đường gân trên nắp capô dạng chữ V, ôm lấy logo và lưới tản nhiệt dốc đứng tăng ấn tượng cho phần đầu xe. Đèn sương mù được tích hợp vào trong hốc gió.Nội thất của với màn hình trung tâm được bố trí hướng về phía người lái giúp dễ dàng quan sát. Bảng đồng hồ điều khiển hiển thị số km, dễ quan sát với màu cam. Khoang lái với ghế ngồi bọc da tích hợp chế độ nhớ vị trí. Khoang hành lý với sức chứa 360 lít, và có thể mở rộng lên 1.200 lít khi hàng ghế sau được gập xuống. Điều hòa tự động.Phiên bản 116i được Euro Auto đưa về Việt Nam trang bị động cơ TwinPower Turbo 4 xi-lanh thẳng hàng dung tích 1,6 lít, công suất 136 mã lực, mô-men xoắn cực đại 220 Nm tại vòng tua máy 1.350 vòng/phút. Tốc độ tối đa 210 km/h với mức tiêu hao nhiên liệu 5,3 lít/100 km. Hộp số tự động 8-cấp.\"','Kiểu dáng:	Hatchback\r\nNăm sản xuất:	2016\r\nKích thước tổng thể:	4.324mm x 1.765mm x 1.421mm\r\nTrọng lượnng không tải:	1.395kg\r\nSố chỗ:	5','1.jpg',1248000000,2,2,0,'Việt Nam','2018-06-03',0),(15,'BMW 116I 2016 1.6',1,2,'\"BMW serie 1 là mẫu xe duy nhất được trang bị hệ truyền động cầu sau so với các đối thủ cùng phân hạng. Thiết kế phía trước với cụm đèn pha vuốt nhọn, hướng vào lưới tản nhiệt, đường gân trên nắp capô dạng chữ V, ôm lấy logo và lưới tản nhiệt dốc đứng tăng ấn tượng cho phần đầu xe. Đèn sương mù được tích hợp vào trong hốc gió.Nội thất của với màn hình trung tâm được bố trí hướng về phía người lái giúp dễ dàng quan sát. Bảng đồng hồ điều khiển hiển thị số km, dễ quan sát với màu cam. Khoang lái với ghế ngồi bọc da tích hợp chế độ nhớ vị trí. Khoang hành lý với sức chứa 360 lít, và có thể mở rộng lên 1.200 lít khi hàng ghế sau được gập xuống. Điều hòa tự động.Phiên bản 116i được Euro Auto đưa về Việt Nam trang bị động cơ TwinPower Turbo 4 xi-lanh thẳng hàng dung tích 1,6 lít, công suất 136 mã lực, mô-men xoắn cực đại 220 Nm tại vòng tua máy 1.350 vòng/phút. Tốc độ tối đa 210 km/h với mức tiêu hao nhiên liệu 5,3 lít/100 km. Hộp số tự động 8-cấp.\"','Kiểu dáng:	Hatchback\r\nNăm sản xuất:	2016\r\nKích thước tổng thể:	4.324mm x 1.765mm x 1.421mm\r\nTrọng lượnng không tải:	1.395kg\r\nSố chỗ:	5','1.jpg',1248000000,2,2,0,'Việt Nam','2018-06-03',0),(16,'BMW 116I 2016 1.6',1,2,'\"BMW serie 1 là mẫu xe duy nhất được trang bị hệ truyền động cầu sau so với các đối thủ cùng phân hạng. Thiết kế phía trước với cụm đèn pha vuốt nhọn, hướng vào lưới tản nhiệt, đường gân trên nắp capô dạng chữ V, ôm lấy logo và lưới tản nhiệt dốc đứng tăng ấn tượng cho phần đầu xe. Đèn sương mù được tích hợp vào trong hốc gió.Nội thất của với màn hình trung tâm được bố trí hướng về phía người lái giúp dễ dàng quan sát. Bảng đồng hồ điều khiển hiển thị số km, dễ quan sát với màu cam. Khoang lái với ghế ngồi bọc da tích hợp chế độ nhớ vị trí. Khoang hành lý với sức chứa 360 lít, và có thể mở rộng lên 1.200 lít khi hàng ghế sau được gập xuống. Điều hòa tự động.Phiên bản 116i được Euro Auto đưa về Việt Nam trang bị động cơ TwinPower Turbo 4 xi-lanh thẳng hàng dung tích 1,6 lít, công suất 136 mã lực, mô-men xoắn cực đại 220 Nm tại vòng tua máy 1.350 vòng/phút. Tốc độ tối đa 210 km/h với mức tiêu hao nhiên liệu 5,3 lít/100 km. Hộp số tự động 8-cấp.\"','Kiểu dáng:	Hatchback\r\nNăm sản xuất:	2016\r\nKích thước tổng thể:	4.324mm x 1.765mm x 1.421mm\r\nTrọng lượnng không tải:	1.395kg\r\nSố chỗ:	5','1.jpg',1248000000,3,2,0,'Việt Nam','2018-06-03',0);
/*!40000 ALTER TABLE `sanpham` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-26 12:50:31
