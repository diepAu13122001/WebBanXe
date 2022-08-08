-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 08, 2022 at 12:41 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webbanxe`
--

DELIMITER $$
--
-- Procedures
--

--product

CREATE DEFINER=`root`@`localhost` PROCEDURE `product_add` (`v1` VARCHAR(10), `v2` MEDIUMTEXT, `v3` TEXT, `v4` VARCHAR(10), `v5` VARCHAR(10), `v6` BIGINT(20), `v7` DOUBLE)   BEGIN
 INSERT INTO `product`(`prd_id`, `prd_name`, `prd_ava`, `brd_id `, `tpe_id `, `prd_price `, `prd_discountPercent `) VALUES (v1,v2,v3,v4,v5,v6,v7);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `product_update` (`v0` VARCHAR(10), `v1` MEDIUMTEXT, `v2` TEXT, `v3` VARCHAR(10), `v4` VARCHAR(10), `v5` BIGINT(20), `v6` DOUBLE)   BEGIN
UPDATE `product` SET `prd_id `=v1,`prd_name `=v2,`prd_ava`=v3,`brd_id `=v4,`tpe_id `=v5, `prd_price` = v6, `prd_discountPercent ` = v7  WHERE `prd_id `=v0;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `product_delete` (`v0` VARCHAR(10))   BEGIN
DELETE FROM `product` WHERE `prd_id`=v0 ;
END$$

--product_branch

CREATE DEFINER=`root`@`localhost` PROCEDURE `product_branch_add` (`v1` VARCHAR(10), `v2` TEXT, `v3` TEXT, `v4` CHAR(10), `v5` TEXT, `v6` TEXT)   BEGIN
 INSERT INTO `product_branch`(`brd_id`, `brd_name `, `brd_logo`, `brd_phoneNum`, `brd_address`, `brd_webAddress`) VALUES (v1,v2,v3,v4,v5,v6);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `product_branch_delete` (`v0` VARCHAR(10))   BEGIN
DELETE FROM `product_branch` WHERE `brd_id`=v0 ;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `product_branch_update` (`v0` VARCHAR(10), `v1` TEXT, `v2` TEXT, `v3` CHAR(10), `v4` TEXT, `v5` TEXT)   BEGIN
UPDATE `product_branch` SET `brd_id`=v1,`brd_name `=v2,`brd_logo`=v3,`brd_phoneNum `=v4,`brd_address`=v5, `brd_webAddress` = v6 WHERE `brd_id`=v0;
END$$

--product_color

CREATE DEFINER=`root`@`localhost` PROCEDURE `product_color_add` (`v1` VARCHAR(10), `v2` TEXT, `v3` TEXT)   BEGIN
 INSERT INTO ` product_color`(`prd_id `, `clr_name`, `clr_img`) VALUES (v1,v2,v3);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `product_color_delete` (`v0` VARCHAR(10))   BEGIN
DELETE FROM `product_color` WHERE `prd_id`=v0 ;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `product_color_update` (`v0` VARCHAR(10), `v1` TEXT, `v2` TEXT)   BEGIN
UPDATE `product_color` SET `prd_id   `=v1,`clr_name`=v2,`clr_img`=v3 WHERE `prd_id   `= v0;
END$$

--product_detail

CREATE DEFINER=`root`@`localhost` PROCEDURE `product_detail_add` (`v1` VARCHAR(10), `v2` LONGTEXT, `v3` BOOLEAN)   BEGIN
 INSERT INTO `product_detail`(`prd_id`, `prd_content`, `prd_contentIsImage`) VALUES (v1,v2,v3);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `product_detail_delete` (`v0` VARCHAR(10))   BEGIN
DELETE FROM `product_detail` WHERE `prd_id`=v0 ;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `product_detail_update` (`v0` VARCHAR(10), `v1` LONGTEXT, `v2` BOOLEAN)   BEGIN
UPDATE `product_detail` SET `prd_id`=v1,`prd_content`=v2,`prd_contentIsImage`=v3 WHERE `prd_id`=v0;
END$$

--product_type

CREATE DEFINER=`root`@`localhost` PROCEDURE `product_type_add` (`v1` VARCHAR(10), `v2` VARCHAR(10), `v3` TEXT, `v4` VARCHAR(10))   BEGIN
 INSERT INTO `product_type`(`tpe_id  `, `brd_id `, `tpe_name`, `tpe_parentId`) VALUES (v1,v2,v3,v4);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `product_type_delete` (`v0` VARCHAR(10))   BEGIN
DELETE FROM `product_type` WHERE `tpe_id`=v0 ;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `product_type_update` (`v0` VARCHAR(10), `v1` VARCHAR(10), `v2` TEXT, `v3` VARCHAR(10))   BEGIN
UPDATE `product_type` SET `tpe_id`=v1,`brd_id` =v2, `tpe_name`=v3,`tpe_parentId`=v4 WHERE `tpe_id   `=v0;
END$$

--product_upload

CREATE DEFINER=`root`@`localhost` PROCEDURE `product_upload_add` (`v1` VARCHAR(10), `v2` TINYTEXT, `v3` DATE, `v4` DATE, `v5` DATETIME, `v6` VARCHAR(10))   BEGIN
 INSERT INTO `product_upload`(`prd_id`, `upl_status`, `upl_uploadedDate`, `upl_createdDate`, `upl_lastEdit `, `upl_managedBy`) VALUES (v1,v2,v3,v4,v5,v6);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `product_upload_delete` (`v0` VARCHAR(10))   BEGIN
DELETE FROM `product_upload` WHERE `prd_id`=v0 ;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `product_upload_update` (`v0` VARCHAR(10), `v1` TINYTEXT, `v2` DATE, `v3` DATE, `v4` DATETIME, `v5` VARCHAR(10))   BEGIN
UPDATE `product_upload` SET `prd_id`=v1,`upl_status`=v2,`upl_uploadedDate`=v3,`upl_createdDate`=v4,`upl_lastEdit `=v5, `upl_managedBy` = v6 WHERE `prd_id`=v0;
END$$

--showroom

CREATE DEFINER=`root`@`localhost` PROCEDURE `showroom_add` (`v1` VARCHAR(10), `v2` TEXT, `v3` TEXT, `v4` CHAR(10), `v5` TIME, `v6` TIME)   BEGIN
 INSERT INTO `showroom`(`shr_id`, `shr_name`, `shr_address`, `shr_phoneNum`, `shr_openTime`, `shr_closeTime`) VALUES (v1,v2,v3,v4,v5,v6);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `showroom_delete` (`v0` VARCHAR(10))   BEGIN
DELETE FROM `showroom` WHERE `shr_id`=v0 ;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `showroom_update` (`v0` VARCHAR(10), `v1` TEXT, `v2` TEXT, `v3` CHAR(10), `v4` TIME, `v5` TIME)   BEGIN
UPDATE `showroom` SET `shr_id`=v1,`shr_name`=v2,`shr_address`=v3,`shr_phoneNum`=v4,`shr_openTime`=v5, `shr_closeTime` = v6 WHERE `shr_id`=v0;
END$$

--warranty_request

CREATE DEFINER=`root`@`localhost` PROCEDURE `warranty_request_add` (`v1` VARCHAR(10), `v2` VARCHAR(10), `v3` VARCHAR(10), `v4` VARCHAR(10), `v5` BIGINT(20), `v6` DATE, `v7` DATE, `v8` DATE, `v9` TEXT, `v10` TEXT, `v11` VARCHAR(10))   BEGIN
 INSERT INTO `warranty_request`(`wrt_id`, `ctm_id`, `prd_id`, `wrt_packageId`, `wrt_extraFee`, `wrt_createdDate`, `wrt_warrantyDate`, `wrt_receiptDate`, `wrt_status`, `wrt_loaction`, `wrt_approvedBy`) VALUES (v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `warranty_request_delete` (`v0` VARCHAR(10))   BEGIN
DELETE FROM `warranty_request` WHERE `wrt_id`=v0 ;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `warranty_request_update` (`v0` VARCHAR(10), `v1` VARCHAR(10), `v2` VARCHAR(10), `v3` VARCHAR(10), `v4` BIGINT(20), `v5` DATE, `v6` DATE, `v7` DATE, `v8` TEXT, `v9` TEXT, `v10` VARCHAR(10))   BEGIN
UPDATE `warranty_request` SET `wrt_id`=v1,`ctm_id`=v2,`prd_id`=v3,`wrt_packageId`=v4,`wrt_extraFee`=v5, `wrt_createdDate` = v6, `wrt_warrantyDate` = v7, `wrt_receiptDate` = v8, `wrt_status` = v9, `wrt_loaction` = v10, `wrt_approvedBy` = v11  WHERE `wrt_id`=v0;
END$$

--website_picture

CREATE DEFINER=`root`@`localhost` PROCEDURE `website_picture_add` (IN `v1` VARCHAR(10), IN `v2` TEXT, IN `v3` TEXT, IN `v4` TEXT, IN `v5` TEXT)   BEGIN
 INSERT INTO `website_picture`(`pic_id`, `pic_url`, `pic_alt`, `pic_linkToPage`, `pic_types`) VALUES (v1,v2,v3,v4,v5);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `website_picture_delete` (`v0` VARCHAR(10))   BEGIN
DELETE FROM `website_picture` WHERE `pic_id`=v0 ;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `website_picture_update` (`v0` VARCHAR(10), `v1` TEXT, `v2` TEXT, `v3` TEXT, `v4` TEXT, `v5` TEXT)   BEGIN
UPDATE `website_picture` SET `pic_id`=v1,`pic_url`=v2,`pic_alt`=v3,`pic_linkToPage`=v4,`pic_type`=v5 WHERE `pic_id`=v0;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adm_id` varchar(10) NOT NULL,
  `adm_name` text DEFAULT NULL,
  `adm_password` char(6) DEFAULT NULL,
  `adm_phoneNum` char(10) DEFAULT NULL,
  `adm_mailAddress` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adm_id`, `adm_name`, `adm_password`, `adm_phoneNum`, `adm_mailAddress`) VALUES
('AD001', 'admin1', '123456', '0123456789', 'admin1@gmail.com'),
('AD002', 'admin2', '123456', '0123456788', 'admin2@gmail.com'),
('AD003', 'admin3', '123456', '0869021888', 'admin3@gmail.com'),
('AD004', 'admin4', '123456', '0334567828', 'admin4@gmail.com'),
('AD005', 'admin5', '123456', '0986601790', 'admin5@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `bll_id` varchar(10) NOT NULL,
  `bll_totalProductVal` bigint(20) DEFAULT NULL,
  `bll_deliveryFee` bigint(20) DEFAULT NULL,
  `bll_discountAmount` bigint(20) DEFAULT NULL,
  `bll_numOfPrd` tinyint(4) DEFAULT NULL,
  `bll_status` tinytext DEFAULT NULL,
  `ctc_id` varchar(10) DEFAULT NULL,
  `bll_createdDate` date DEFAULT NULL,
  `bll_updatedDate` date DEFAULT NULL,
  `bll_managedBy` varchar(10) DEFAULT NULL,
  `bll_depositAmount` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bill_detail`
--

CREATE TABLE `bill_detail` (
  `bll_id` varchar(10) NOT NULL,
  `prd_id` varchar(10) NOT NULL,
  `dtl_productDiscount` double DEFAULT NULL,
  `dtl_productAmount` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `ctc_id` varchar(10) NOT NULL,
  `ctm_id` varchar(10) DEFAULT NULL,
  `ctc_receivingType` text DEFAULT NULL,
  `ctc_receivingAddress` text DEFAULT NULL,
  `ctc_note` mediumtext DEFAULT NULL,
  `ctc_receiverId` varchar(10) DEFAULT NULL COMMENT 'có thể giống với customer ',
  `ctc_userManual` tinyint(1) DEFAULT 0,
  `cpn_id` varchar(10) DEFAULT NULL,
  `dsc_id` varchar(10) DEFAULT NULL,
  `ctc_paymentMethod` text DEFAULT NULL,
  `dps_id` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `ctm_id` varchar(10) NOT NULL,
  `ctm_fullName` text DEFAULT NULL,
  `ctm_gender` tinytext DEFAULT NULL,
  `ctm_phoneNum` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`ctm_id`, `ctm_fullName`, `ctm_gender`, `ctm_phoneNum`) VALUES
('KH001', 'Nguyễn Văn An', 'Anh', '0334567899'),
('KH002', 'Lê Thị Trúc', 'Chị', '0332527725'),
('KH003', 'Nguyễn Đỗ Khánh Nam', 'Anh', '0986601777'),
('KH004', 'Trần Nhật Minh', 'Anh', '0389685644'),
('KH005', 'Võ Thu Ngân', 'Chị', '0336456725'),
('KH006', 'Trần Như Ngọc', 'Chị', '0223424356'),
('KH007', 'Nguyễn An Tâm', 'Anh', '0389991429'),
('KH008', 'Võ Khánh Ngọc', 'Chị', '0334562310'),
('KH009', 'Nguyễn Đức Nhân', 'Anh', '0869021789'),
('KH010', 'Trần Anh Ninh', 'Anh', '0335666000');

-- --------------------------------------------------------

--
-- Table structure for table `customer_company`
--

CREATE TABLE `customer_company` (
  `cpn_id` varchar(10) NOT NULL,
  `cpn_name` text DEFAULT NULL,
  `cpn_address` text DEFAULT NULL,
  `cpn_taxCode` varchar(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_company`
--

INSERT INTO `customer_company` (`cpn_id`, `cpn_name`, `cpn_address`, `cpn_taxCode`) VALUES
('CTX1', 'Công Ty TNHH TM & DV Phát Tiến', '16 Lữ Gia, Phường 15, Quận 11, Thành phố Hồ Chí Minh, Việt Nam', '0301049150'),
('CTX2', 'Công Ty TNHH TM & DV Visacoop', '478 - 480 - 482 Cộng Hòa, Phường 13, Quận Tân Bình, Thành phố Hồ Chí Minh, Việt Nam', '0300565201'),
('CTX3', 'Công Ty TNHH Xuất Nhập Khẩu Tân Long Vân', '167 Trần Quốc Thảo, Phường 09, Quận 3, Thành phố Hồ Chí Minh, Việt Nam', '0309907682'),
('CTX4', 'Công Ty TNHH Việt Thái Quân', '111 Nguyễn Duy Trinh, Phường Bình Trưng Tây, Quận 2, TP Hồ Chí Minh', '0305778228'),
('CTX5', 'Công Ty TNHH Kinh Doanh Xe Máy Kường Ngân', 'Số 18 Nguyễn Bỉnh Khiêm, Phường Nguyễn Du, Quận Hai Bà Trưng, Thành phố Hà Nội, Việt Nam', '0103049409');

-- --------------------------------------------------------

--
-- Table structure for table `deposit_receipt`
--

CREATE TABLE `deposit_receipt` (
  `dps_id` varchar(10) NOT NULL,
  `ctm_id` varchar(10) NOT NULL,
  `prd_id` varchar(10) NOT NULL,
  `dps_amount` bigint(20) DEFAULT 0,
  `dps_createdDate` date DEFAULT NULL,
  `dps_paymentDate` date DEFAULT NULL,
  `dps_status` text DEFAULT NULL,
  `dps_paymentMethod` text DEFAULT NULL,
  `dps_receivingAddress` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `discount`
--

CREATE TABLE `discount` (
  `dsc_id` varchar(10) NOT NULL,
  `dsc_name` text DEFAULT NULL,
  `dsc_startedDate` date DEFAULT NULL,
  `dsc_endedDate` date DEFAULT NULL,
  `dsc_maxDiscount` bigint(20) DEFAULT 0,
  `dsc_minBillVal` bigint(20) DEFAULT 0,
  `dsc_percentOff` double DEFAULT 0,
  `dsc_isShipDiscount` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `discount`
--

INSERT INTO `discount` (`dsc_id`, `dsc_name`, `dsc_startedDate`, `dsc_endedDate`, `dsc_maxDiscount`, `dsc_minBillVal`, `dsc_percentOff`, `dsc_isShipDiscount`) VALUES
('DSC001', 'Tài lộc tới, phơi phới Tết Honda', '2022-01-01', '2022-01-10', 500000, 50000000, 0.01, 1),
('DSC002', 'Tết rộn ràng, hổ vàng phát lộc', '2022-02-01', '2022-02-08', 1500000, 100000000, 0.15, 0),
('DSC003', 'Hè sôi động', '2022-06-25', '2022-07-02', 350000, 35000000, 0.01, 1);

-- --------------------------------------------------------

--
-- Table structure for table `experience_request`
--

CREATE TABLE `experience_request` (
  `req_id` varchar(10) NOT NULL,
  `ctm_id` varchar(10) DEFAULT NULL,
  `shr_id` varchar(10) DEFAULT NULL,
  `req_createdDate` date DEFAULT NULL,
  `req_appointmentTime` datetime DEFAULT NULL,
  `req_note` longtext DEFAULT NULL,
  `req_status` text DEFAULT NULL,
  `req_approvedBy` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `experience_request`
--

INSERT INTO `experience_request` (`req_id`, `ctm_id`, `shr_id`, `req_createdDate`, `req_appointmentTime`, `req_note`, `req_status`, `req_approvedBy`) VALUES
('DYC01', 'KH001', 'CH001', '2022-08-01', '2022-08-04 08:16:01', 'Phải cẩn thận nhé!', 'Đã hoàn thành', 'AD001'),
('DYC02', 'KH002', 'CH002', '2022-08-02', '2022-08-09 22:12:01', 'Chúng tôi mong bạn xác nhận nhanh', 'Đang chờ duyệt', 'AD002'),
('DYC03', 'KH003', 'CH003', '2022-08-05', '2022-08-09 20:12:01', 'Chúng tôi mong bạn xác nhận nhanh', 'Hủy', 'AD005'),
('DYC04', 'KH002', 'CH002', '2022-08-02', '2022-08-09 12:12:01', 'Chúng tôi mong bạn xác nhận nhanh', 'Đang chờ duyệt', 'AD002'),
('DYC05', 'KH003', 'CH003', '2022-08-04', '2022-08-10 21:12:01', 'haahahahaa', 'Đang chờ duyệt', 'AD003'),
('DYC06', 'KH001', 'CH001', '2022-08-01', '2022-08-04 08:16:01', 'Phải cẩn thận nhé!', 'Đã hoàn thành', 'AD001'),
('DYC07', 'KH002', 'CH002', '2022-08-02', '2022-08-09 22:12:01', 'Chúng tôi mong bạn xác nhận nhanh', 'Đang chờ duyệt', 'AD002');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `prd_id` varchar(10) NOT NULL,
  `prd_name` mediumtext DEFAULT NULL,
  `prd_ava` text DEFAULT NULL,
  `brd_id` varchar(10) NOT NULL,
  `tpe_id` varchar(10) NOT NULL,
  `prd_price` bigint(20) DEFAULT NULL,
  `prd_discountPercent` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product_brand`
--

CREATE TABLE `product_brand` (
  `brd_id` varchar(10) NOT NULL,
  `brd_name` text DEFAULT NULL,
  `brd_logo` text DEFAULT NULL,
  `brd_phoneNum` char(12) DEFAULT NULL,
  `brd_address` text DEFAULT NULL,
  `brd_webAddress` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product_color`
--

CREATE TABLE `product_color` (
  `prd_id` varchar(10) NOT NULL,
  `clr_name` text NOT NULL,
  `clr_img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_color`
--

INSERT INTO `product_color` (`prd_id`, `clr_name`, `clr_img`) VALUES
('pr001', 'Đen Vàng', 'https://cdn.honda.com.vn/motorbike-versions/May2022/UDvt2b8oUaEjVwt3fY1q.png'),
('pr001', 'Xanh Đen ', 'https://cdn.honda.com.vn/motorbike-versions/May2022/JlMhoGY3W3AJLe7BaYPo.png'),
('pr001', 'Đỏ Đen ', 'https://cdn.honda.com.vn/motorbike-versions/May2022/bckho9q1kDOnzCApjNpq.png'),
('pr001', 'Xanh Xám Đen ', 'https://cdn.honda.com.vn/motorbike-versions/May2022/dHnhsdsKKiOZk6dOzySu.png'),
('pr002', 'Đỏ Nâu Đen ', 'https://cdn.honda.com.vn/motorbike-versions/December2020/HjIbraojXjvocCEgoXiB.png'),
('pr002', 'Xanh Nâu Đen ', 'https://cdn.honda.com.vn/motorbike-versions/December2020/WvHau6gbK1JmmrzXn3Cc.png'),
('pr003', 'Đen Đỏ ', 'https://cdn.honda.com.vn/motorbike-versions/December2020/osAEdqYtGQdNqAyZp64i.png'),
('pr003', 'Xanh Đen Đỏ ', 'https://cdn.honda.com.vn/motorbike-versions/December2020/RKcLrQ12zdLsuJ8gKBgT.png'),
('pr004', 'Đen Bạc ', 'https://cdn.honda.com.vn/motorbike-versions/December2021/TKanPESRG2GkI9eapJ8X.png'),
('pr004', 'Đen ', 'https://cdn.honda.com.vn/motorbike-versions/December2021/pQXxqYJwgI8oXLuxAuH0.png'),
('pr005', 'Trắng ', 'https://cdn.honda.com.vn/motorbike-versions/December2021/7asMTwgZUhiX0FBRegRI.png'),
('pr005', 'Đỏ ', 'https://cdn.honda.com.vn/motorbike-versions/December2021/7asMTwgZUhiX0FBRegRI.png'),
('pr005', 'Xanh ', 'https://cdn.honda.com.vn/motorbike-versions/December2021/epNFnKrqwGBz8iJaWhpM.png'),
('pr005', 'Xám ', 'https://cdn.honda.com.vn/motorbike-versions/December2021/Y3snSvxkkakD9j92Cjjr.png'),
('pr006', 'Đen Xanh Xám ', 'https://cdn.honda.com.vn/motorbike-versions/November2020/1lRAv3RADxjMuwCqv0do.png'),
('pr006', 'Đen Đỏ Xám ', 'https://cdn.honda.com.vn/motorbike-versions/November2020/mCZniWS5zOHdJCZqGLxu.png'),
('pr006', 'Đen Xám ', 'https://cdn.honda.com.vn/motorbike-versions/November2020/PUZSFiH0RekpU9NxGxXn.png'),
('pr007', 'Đen ', 'https://cdn.honda.com.vn/motorbike-versions/October2021/gZon0FenCIeoMximU4n2.png'),
('pr007', 'Xanh Đen ', 'https://cdn.honda.com.vn/motorbike-versions/October2021/b277QhZo4zPVsaIhflT2.png'),
('pr008', 'Xanh Trắng ', 'https://cdn.honda.com.vn/motorbike-versions/October2021/nrsqcdiLirob142y4Qbf.png'),
('pr008', 'Đỏ Trắng ', 'https://cdn.honda.com.vn/motorbike-versions/October2021/rekvNMjwCvz3tiYHy27g.png'),
('pr009', 'Đỏ Đen ', 'https://cdn.honda.com.vn/motorbike-versions/November2020/q6utfyXhoL3WargJx4tZ.png'),
('pr009', 'Trắng Đen ', 'https://cdn.honda.com.vn/motorbike-versions/November2020/JAfUKZNaUkqic5n78OZR.png'),
('pr009', 'Xanh Đen ', 'https://cdn.honda.com.vn/motorbike-versions/November2020/eSdwKSWXeemTp4ASJhBz.png'),
('pr010 ', 'Trắng Đen Bạc ', 'https://cdn.honda.com.vn/motorbike-versions/September2020/QjbznsHNgAH3OumY51Ez.jpg'),
('pr010', 'Đỏ Đen Bạc', 'https://cdn.honda.com.vn/motorbike-versions/September2020/TFKNFL7pTZI00P4P6p1Q.png'),
('pr010', 'Xanh Đen Bạc ', 'https://cdn.honda.com.vn/motorbike-versions/September2020/WYZCwSFAdQxCfPlbFtYQ.png'),
('pr010', 'Đen Bạc ', 'https://cdn.honda.com.vn/motorbike-versions/September2020/i36fnWOxJ9JQkWro0ImW.png'),
('pr011', 'Vàng ', 'https://yamaha-motor.com.vn/wp/wp-content/uploads/2022/07/Jupiter-Finn-Gold-Metallic-004.png'),
('pr011', 'Xanh ', 'https://yamaha-motor.com.vn/wp/wp-content/uploads/2022/07/Jupiter-Finn-Urban-Blue-004.png'),
('pr011', 'Đen Xám ', 'https://yamaha-motor.com.vn/wp/wp-content/uploads/2022/07/Jupiter-Finn-Grey-Metallic-004-2.png'),
('pr012', 'Xanh GP', 'https://yamaha-motor.com.vn/wp/wp-content/webp-express/webp-images/doc-root/wp/wp-content/uploads/2021/12/Exciter-155-GP-Deep-Purple-004.png.webp'),
('pr013 ', 'Xanh ', 'https://yamaha-motor.com.vn/wp/wp-content/webp-express/webp-images/doc-root/wp/wp-content/uploads/2017/07/Jupiter-GP-004-2.png.webp'),
('pr014', 'Đen Cam ', 'https://yamaha-motor.com.vn/wp/wp-content/webp-express/webp-images/doc-root/wp/wp-content/uploads/2021/09/RC-Black-Metallic-Y-004-copy.png.webp'),
('pr014', 'Đen ', 'https://yamaha-motor.com.vn/wp/wp-content/uploads/2021/09/RC-Mat-Black-2-004-copy.png'),
('pr014', 'Đỏ Đen ', 'https://yamaha-motor.com.vn/wp/wp-content/uploads/2021/09/RC-Vivid-Red-Cocktail-004-copy.png'),
('pr014', 'Trắng Đen ', 'https://yamaha-motor.com.vn/wp/wp-content/uploads/2021/09/RC-White-Metallic-004-copy.png'),
('pr015', 'Đỏ Đen ', 'https://yamaha-motor.com.vn/wp/wp-content/uploads/2022/04/a5c4b8f155a58e62cb8f01f6d90c03f8.png'),
('pr015', 'Trắng Xanh ', 'https://yamaha-motor.com.vn/wp/wp-content/uploads/2022/04/73ffc462df4aaf94b8c4e8656a1638ed.png'),
('pr015', 'Xám Đen ', 'https://yamaha-motor.com.vn/wp/wp-content/uploads/2022/04/40ac77411dd0b112ab69b41d63546087.png'),
('pr015', 'Đen ', 'https://yamaha-motor.com.vn/wp/wp-content/uploads/2022/04/a5c4b8f155a58e62cb8f01f6d90c03f8.png'),
('pr016', 'Trắng ', 'https://yamaha-motor.com.vn/wp/wp-content/webp-express/webp-images/doc-root/wp/wp-content/uploads/2018/12/New-Grande-Pearl-White-004.png.webp'),
('pr016', 'Đỏ ', 'https://yamaha-motor.com.vn/wp/wp-content/uploads/2018/12/New-Grande-Mat-Red-004.png'),
('pr016', 'Xanh ', 'https://yamaha-motor.com.vn/wp/wp-content/uploads/2018/12/New-Grande-Mat-Blue-004.png'),
('pr017', 'Đỏ', 'https://yamaha-motor.com.vn/wp/wp-content/uploads/2019/05/den1.png'),
('pr017', 'Đen ', 'https://yamaha-motor.com.vn/wp/wp-content/uploads/2019/05/den1.png'),
('pr017', 'Trắng ', 'https://yamaha-motor.com.vn/wp/wp-content/uploads/2019/05/trang1.png'),
('pr018', 'Đen Hồng ', 'https://yamaha-motor.com.vn/wp/wp-content/webp-express/webp-images/doc-root/wp/wp-content/uploads/2022/04/New-Janus-Mat-Black-Pink-SMK-004.png.webp'),
('pr018', 'Xanh Đen ', 'https://yamaha-motor.com.vn/wp/wp-content/uploads/2022/04/New-Janus-Light-Blue-Metallic-SMK-004.png'),
('pr018', 'Trắng Xám ', 'https://yamaha-motor.com.vn/wp/wp-content/uploads/2022/04/New-Janus-White-Metallic-SMK-004.png'),
('pr018', 'Đỏ Đen ', 'https://yamaha-motor.com.vn/wp/wp-content/uploads/2022/04/New-Janus-Mat-Red-SMK-004.png'),
('pr019', 'Xanh Đen ', 'https://yamaha-motor.com.vn/wp/wp-content/uploads/2020/10/NVX-Pastel-Dark-Grey-004.png'),
('pr019', 'Đen Vàng ', 'https://yamaha-motor.com.vn/wp/wp-content/uploads/2020/10/NVX-Mat-Black-004.png'),
('pr019', 'Xám Đen ', 'https://yamaha-motor.com.vn/wp/wp-content/uploads/2020/10/NVX-Mat-Silver-004.png'),
('pr019', 'Trắng Xanh ', 'https://yamaha-motor.com.vn/wp/wp-content/uploads/2020/10/NVX-Mat-White-004.png'),
('pr020', ' Đỏ Đen ', 'https://yamaha-motor.com.vn/wp/wp-content/uploads/2022/04/FreeGo-Mat-Blue-SMK-004.png'),
('pr020', 'Xanh Đen ', 'https://yamaha-motor.com.vn/wp/wp-content/uploads/2022/04/FreeGo-Mat-Green-SMK-004.png'),
('pr020', 'Xám ', 'https://yamaha-motor.com.vn/wp/wp-content/uploads/2022/04/FreeGo-Mat-Grey-SMK-004.png'),
('pr020', 'Xanh Đen ', 'https://yamaha-motor.com.vn/wp/wp-content/uploads/2022/04/FreeGo-Mat-Blue-SMK-004.png'),
('pr021', 'Xám mờ Vàng đồng ', 'https://suzuki.com.vn/images/homepage/burgman-homepage-thumbnail.jpg'),
('pr022', 'Đen mờ ', 'https://suzuki.com.vn/images/Impulse/2018/color-line-up/impulse-den-mo.png'),
('pr022', 'Đen mờ Xám ', 'https://suzuki.com.vn/images/Impulse/2018/color-line-up/impulse-den-mo-xam.png'),
('pr022', 'Xanh Đỏ ', 'https://suzuki.com.vn/images/Impulse/2018/color-line-up/impulse-xanh.png'),
('pr022', 'Trắng Nâu Bạc', 'https://suzuki.com.vn/images/Impulse/2018/color-line-up/impulse-trang-nau-bac.png'),
('pr023', 'Đỏ Đen ', 'https://suzuki.com.vn/images/GSX150-Bandit/2020/xe-den-do.png'),
('pr023', 'Xám ', 'https://suzuki.com.vn/images/GSX150-Bandit/2020/xe-xam.png'),
('pr024', 'Đỏ Đen ', 'https://suzuki.com.vn/images/GSXR150/2021/do-den.png'),
('pr024', 'Xanh Đen ', 'https://suzuki.com.vn/images/GSXR150/2021/xanh.png'),
('pr024', 'Đen (Vành Đỏ)', 'https://suzuki.com.vn/images/GSXR150/2021/den-vanh-do.png'),
('pr025', 'Trắng Đỏ Đen ', 'https://suzuki.com.vn/images/Satria-F150/2022/trang-do-den-moi-2.jpg'),
('pr025', 'Đen Đỏ ', 'https://suzuki.com.vn/images/Satria-F150/2022/den-do-moi.jpg'),
('pr025 ', 'Xanh Đen ', 'https://suzuki.com.vn/images/Satria-F150/2021/xanh-den.png'),
('pr026', 'Đen ', 'https://suzuki.com.vn/images/GSXS150/2022/GSX-S150_YUV_Right.jpg'),
('pr026', 'Đen mờ ', 'https://suzuki.com.vn/images/GSXS150/NewColor/s150-den-mo.jpg'),
('pr026', 'Xanh Đen ', 'https://suzuki.com.vn/images/GSXS150/NewColor/s150-xanh-gp.jpg'),
('pr027', 'Đỏ Đen ', 'https://suzuki.com.vn/images/Raider/2022/color-slider/01-Do-Den-Moi-BG.jpg'),
('pr027', 'Xanh Đen ', 'https://suzuki.com.vn/images/Raider/2022/color-slider/02-Xanh-Den-Moi-BG.jpg'),
('pr027', 'Xanh Bạc Đen ', 'https://suzuki.com.vn/images/Raider/2022/color-slider/03-xanh-bac-den-BG.png'),
('pr028', 'Đen Bạc ', 'https://suzuki.com.vn/images/Intruder150/black.jpg'),
('pr028', 'Bạc ', 'https://suzuki.com.vn/images/Intruder150/silver.jpg'),
('pr029', 'Đỏ ', 'https://suzuki.com.vn/images/GZ150/gz150-do.png'),
('pr029', 'Đen ', 'https://suzuki.com.vn/images/GZ/gz150.jpg'),
('pr030', 'Đỏ Đen ', 'https://suzuki.com.vn/images/2022/03/gd110hu-do-den.jpg'),
('pr030', 'Đen ', 'https://suzuki.com.vn/images/2022/03/gd110hu-den-moi.jpg'),
('pr030', 'Xám Đen mờ ', 'https://suzuki.com.vn/images/2022/03/gd110hu-xam-den-mo.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `product_detail`
--

CREATE TABLE `product_detail` (
  `prd_id` varchar(10) NOT NULL,
  `prd_content` longtext DEFAULT NULL,
  `prd_contentIsImage` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product_type`
--

CREATE TABLE `product_type` (
  `tpe_id` varchar(10) NOT NULL,
  `brd_id` varchar(10) NOT NULL,
  `tpe_name` text DEFAULT NULL,
  `tpe_parentId` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product_upload`
--

CREATE TABLE `product_upload` (
  `prd_id` varchar(10) NOT NULL,
  `upl_status` tinytext NOT NULL,
  `upl_uploadedDate` date DEFAULT NULL,
  `upl_createdDate` date DEFAULT NULL,
  `upl_lastEdit` datetime DEFAULT NULL,
  `upl_managedBy` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_upload`
--

INSERT INTO `product_upload` (`prd_id`, `upl_status`, `upl_uploadedDate`, `upl_createdDate`, `upl_lastEdit`, `upl_managedBy`) VALUES
('pr001', 'Sắp mở (chỉ cho đặt cọc trước)', '2022-07-20', '2022-08-01', '2022-07-31 12:30:00', 'AD001'),
('pr002', 'Đang bán', '2022-07-20', '2022-08-01', '2022-07-31 12:35:00', 'AD001'),
('pr003', 'Sắp mở (chỉ cho đặt cọc trước)', '2022-07-20', '2022-08-01', '2022-07-31 12:30:00', 'AD002'),
('pr004', 'Đang bán', '2022-07-20', '2022-08-01', '2022-07-31 12:35:00', 'AD002'),
('pr005', 'Đã xóa', '2022-08-20', '2022-08-01', '2022-07-31 10:30:00', 'AD003'),
('pr006', 'Đang bán', '2022-07-20', '2022-08-01', '2022-07-31 12:35:00', 'AD004'),
('pr007', 'Nháp (chưa đăng bán)', '2022-08-04', '2022-08-06', '2022-08-05 05:00:00', 'AD001'),
('pr008', 'Đang bán', '2022-07-05', '2022-07-06', '2022-07-05 10:00:00', 'AD005'),
('pr009', 'Đang bán', '2022-07-01', '2022-07-04', '2022-07-02 10:00:00', 'AD002'),
('pr010', 'Hết hàng', '2022-08-06', '2022-08-04', '2022-08-05 13:00:07', 'AD002'),
('pr011', 'Đang bán', '2022-07-01', '2022-07-04', '2022-07-02 10:00:00', 'AD002'),
('pr012', 'Hết hàng', '2022-08-06', '2022-08-04', '2022-08-05 13:00:07', 'AD002'),
('pr013', 'Đang bán', '2022-07-01', '2022-07-04', '2022-07-02 10:00:00', 'AD002'),
('pr014', 'Hết hàng', '2022-08-06', '2022-08-04', '2022-08-05 13:00:07', 'AD002'),
('pr015', 'Đang bán', '2022-07-01', '2022-07-04', '2022-07-02 10:00:00', 'AD002'),
('pr016', 'Hết hàng', '2022-08-06', '2022-08-04', '2022-08-05 13:00:07', 'AD002'),
('pr017', 'Đang bán', '2022-07-01', '2022-07-04', '2022-07-02 10:00:00', 'AD002'),
('pr018', 'Hết hàng', '2022-08-06', '2022-08-04', '2022-08-05 13:00:07', 'AD002'),
('pr019', 'Đang bán', '2022-07-01', '2022-07-04', '2022-07-02 10:00:00', 'AD002'),
('pr020', 'Hết hàng', '2022-08-06', '2022-08-04', '2022-08-05 13:00:07', 'AD002'),
('pr021', 'Đang bán', '2022-07-01', '2022-07-04', '2022-07-02 10:00:00', 'AD002'),
('pr022', 'Hết hàng', '2022-08-06', '2022-08-04', '2022-08-05 13:00:07', 'AD002'),
('pr023', 'Đang bán', '2022-07-01', '2022-07-04', '2022-07-02 10:00:00', 'AD002'),
('pr024', 'Hết hàng', '2022-08-06', '2022-08-04', '2022-08-05 13:00:07', 'AD002'),
('pr025', 'Đang bán', '2022-07-01', '2022-07-04', '2022-07-02 10:00:00', 'AD002'),
('pr026', 'Hết hàng', '2022-08-06', '2022-08-04', '2022-08-05 13:00:07', 'AD002'),
('pr027', 'Đang bán', '2022-07-01', '2022-07-04', '2022-07-02 10:00:00', 'AD002'),
('pr028', 'Hết hàng', '2022-08-06', '2022-08-04', '2022-08-05 13:00:07', 'AD002'),
('pr029', 'Đang bán', '2022-07-01', '2022-07-04', '2022-07-02 10:00:00', 'AD002'),
('pr030', 'Hết hàng', '2022-08-06', '2022-08-04', '2022-08-05 13:00:07', 'AD002'),
('pr025', 'Sắp mở (Chỉ cho đặt cọc trước)', '2022-07-15', '2022-07-13', '2022-08-13 16:00:00', 'AD002'),
('pr027', 'Hết hàng', '2022-06-25', '2022-06-22', '2022-06-23 08:29:42', 'AD004'),
('pr028', 'Sắp mở (Chỉ cho đặt cọc trước)', '2022-07-15', '2022-07-13', '2022-08-13 16:00:00', 'AD002'),
('pr029', 'Hết hàng', '2022-06-25', '2022-06-22', '2022-06-23 08:29:42', 'AD004'),
('pr030', 'Sắp mở (Chỉ cho đặt cọc trước)', '2022-07-15', '2022-07-13', '2022-08-13 16:00:00', 'AD002'),
('pr031', 'Hết hàng', '2022-06-25', '2022-06-22', '2022-06-23 08:29:42', 'AD004'),
('pr032', 'Sắp mở (Chỉ cho đặt cọc trước)', '2022-07-15', '2022-07-13', '2022-08-13 16:00:00', 'AD002'),
('pr033', 'Hết hàng', '2022-06-25', '2022-06-22', '2022-06-23 08:29:42', 'AD004'),
('pr034', 'Sắp mở (Chỉ cho đặt cọc trước)', '2022-07-15', '2022-07-13', '2022-08-13 16:00:00', 'AD002'),
('pr035', 'Hết hàng', '2022-06-25', '2022-06-22', '2022-06-23 08:29:42', 'AD004'),
('pr036', 'Sắp mở (Chỉ cho đặt cọc trước)', '2022-07-15', '2022-07-13', '2022-08-13 16:00:00', 'AD002'),
('pr037', 'Hết hàng', '2022-06-25', '2022-06-22', '2022-06-23 08:29:42', 'AD004'),
('pr038', 'Sắp mở (Chỉ cho đặt cọc trước)', '2022-07-15', '2022-07-13', '2022-08-13 16:00:00', 'AD002'),
('pr039', 'Hết hàng', '2022-06-25', '2022-06-22', '2022-06-23 08:29:42', 'AD004'),
('pr040', 'Sắp mở (Chỉ cho đặt cọc trước)', '2022-07-15', '2022-07-13', '2022-08-13 16:00:00', 'AD002'),
('pr041', 'Hết hàng', '2022-06-25', '2022-06-22', '2022-06-23 08:29:42', 'AD004'),
('pr042', ' Sắp mở (chỉ cho đặt cọc trước)', '2022-08-04', '2022-08-02', '2022-08-02 23:05:02', 'AD004'),
('pr043', 'Đang bán', '2022-08-03', '2022-08-01', '2022-08-01 23:05:02', 'AD001'),
('pr050', ' Sắp mở (chỉ cho đặt cọc trước)', '2022-08-04', '2022-08-02', '2022-08-02 23:05:02', 'AD004'),
('pr044', ' Sắp mở (chỉ cho đặt cọc trước)', '2022-08-04', '2022-08-02', '2022-08-02 23:05:02', 'AD004'),
('pr045', 'Đang bán', '2022-08-03', '2022-08-01', '2022-08-01 23:05:02', 'AD001'),
('pr046', ' Sắp mở (chỉ cho đặt cọc trước)', '2022-08-04', '2022-08-02', '2022-08-02 23:05:02', 'AD004'),
('pr047', 'Đang bán', '2022-08-03', '2022-08-01', '2022-08-01 23:05:02', 'AD001'),
('pr048', ' Sắp mở (chỉ cho đặt cọc trước)', '2022-08-04', '2022-08-02', '2022-08-02 23:05:02', 'AD004'),
('pr049', 'Đang bán', '2022-08-03', '2022-08-01', '2022-08-01 23:05:02', 'AD001');

-- --------------------------------------------------------

--
-- Table structure for table `showroom`
--

CREATE TABLE `showroom` (
  `shr_id` varchar(10) NOT NULL,
  `shr_name` text DEFAULT NULL,
  `shr_address` text DEFAULT NULL,
  `shr_phoneNum` char(10) DEFAULT NULL,
  `shr_openTime` time DEFAULT NULL,
  `shr_closeTime` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `showroom`
--

INSERT INTO `showroom` (`shr_id`, `shr_name`, `shr_address`, `shr_phoneNum`, `shr_openTime`, `shr_closeTime`) VALUES
('CH001', 'HEAD Phát Tiến - Nơ Trang Long', '17 Nơ Trang Long, p.7, Q.Bình Thạnh', '0338030781', '00:00:08', '00:00:10'),
('CH002', 'HEAD Phát Tiến - Cách Mạng Tháng 8', '736 Cách Mạng Tháng 8, P.5, Q.Tân Bình', '0339907920', '00:00:08', '00:00:10'),
('CH003', 'Cửa hàng Visacoop 1', '478-480-482 Cộng Hòa, Phường 13, Quận Tân Bình, Thành phố Hồ Chí Minh', '0362549616', '00:00:08', '00:00:10'),
('CH004', 'Cửa hàng Visacoop 2', '27/6 ấp Hưng Lân, Xã Bà Điểm, Huyện Hóc Môn, Thành phố Hồ Chí Minh', '0362615555', '00:00:08', '00:00:10'),
('CH005', 'Hệ thống HEAD Tân Long Vân', '165 Đ. Ký Con, Phường Nguyễn Thái Bình, Quận 1, Thành phố Hồ Chí Minh', '1800577738', '00:00:08', '00:00:10'),
('CH006', 'Chi nhánh TNHH Việt Thái Quân', 'Số 1 Quang Trung, Phường 3, Quận Gò Vấp, Hồ Chí Minh', '0356789124', '00:00:08', '00:00:10'),
('CH007', 'Hệ thống công ty Kường Ngân', '50A Trần Nhân Tông Hai Bà Trưng - Hà Nội', '0394557891', '00:00:08', '00:00:10');

-- --------------------------------------------------------

--
-- Table structure for table `warranty_request`
--

CREATE TABLE `warranty_request` (
  `wrt_id` varchar(10) NOT NULL,
  `ctm_id` varchar(10) DEFAULT NULL,
  `prd_id` varchar(10) DEFAULT NULL,
  `wrt_packageId` varchar(10) DEFAULT NULL,
  `wrt_extraFee` bigint(20) NOT NULL DEFAULT 0,
  `wrt_createdDate` date DEFAULT NULL,
  `wrt_warrantyDate` date DEFAULT NULL,
  `wrt_receiptDate` date DEFAULT NULL,
  `wrt_status` text DEFAULT NULL,
  `wrt_location` text DEFAULT NULL COMMENT 'địa chỉ bảo hành (tại nhà thì thêm tiền)',
  `wrt_approvedBy` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `warranty_request`
--

INSERT INTO `warranty_request` (`wrt_id`, `ctm_id`, `prd_id`, `wrt_packageId`, `wrt_extraFee`, `wrt_createdDate`, `wrt_warrantyDate`, `wrt_receiptDate`, `wrt_status`, `wrt_location`, `wrt_approvedBy`) VALUES
('WRT001', 'KH001', 'pr001', 'pr001', 120000, '2022-08-01', '2022-08-01', '2023-08-01', 'Đang chờ duyệt', 'Tại cửa hàng đã mua', 'AD001'),
('WRT002', 'KH002', 'pr002', 'pr002', 120000, '2022-08-04', '2022-08-04', '2023-08-04', 'Đang đợi bảo hành', 'Tại cửa hàng đã mua', 'AD001'),
('WRT003', 'KH003', 'pr003', 'pr003', 120000, '2022-08-02', '2022-08-02', '2023-08-02', 'Đã hoàn thành', 'Tại cửa hàng đã mua', 'AD002'),
('WRT004', 'KH004', 'pr004', 'pr004', 120000, '2022-07-01', '2022-07-01', '2023-07-01', 'Đã hoàn thành', 'Tại cửa hàng đã mua', 'AD003');

-- --------------------------------------------------------

--
-- Table structure for table `website_picture`
--

CREATE TABLE `website_picture` (
  `pic_id` varchar(10) NOT NULL,
  `pic_url` text DEFAULT NULL,
  `pic_alt` text DEFAULT NULL,
  `pic_linkToPage` text DEFAULT NULL,
  `pic_type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `website_picture`
--

INSERT INTO `website_picture` (`pic_id`, `pic_url`, `pic_alt`, `pic_linkToPage`, `pic_type`) VALUES
('pic001', 'https://hondakhanhan.com/wp-content/uploads/2021/03/PQbbsLmkaRul8tpfLt16.jpg', 'Banner của hãng Honda ', 'https://hondakhanhan.com/banner/', 'Banner\r\n'),
('pic002', 'https://cdn.honda.com.vn/news-motorbike/March2022/pJ4QzzUmyDmDbmnjjcRW.png', 'Banner của hãng Honda', 'https://www.honda.com.vn/tin-tuc/xe-may', 'Banner'),
('pic003', 'https://file.hstatic.net/1000194483/file/banner_570x300px_b2e6c6dfa8d94bdc847e79c79111d97d_grande.jpg', 'Banner Honda', 'https://sonminh.vn/blogs/khuyen-mai/wave-alpha-va-vision', 'Banner'),
('pic004', 'https://theme.hstatic.net/200000281285/1000677821/14/ms_banner_img3.jpg?v=761', 'Banner Yamaha', 'https://hoangcau.com/', 'Banner'),
('pic005', 'https://theme.hstatic.net/200000281285/1000677821/14/ms_banner_img1.jpg?v=761', 'Banner Yamaha', 'https://hoangcau.com/', 'Banner'),
('pic006', 'https://theme.hstatic.net/200000281285/1000677821/14/ms_banner_img6.jpg?v=761', 'Banner Yamaha', 'https://hoangcau.com/', 'Banner'),
('pic007', 'https://image.thanhnien.vn/w2048/Uploaded/2022/puqgfdmzs-co/2022_01_10/suzuki-1-3691.jpg', 'Banner Suzuki', 'https://thanhnien.vn/sam-xe-may-suzuki-don-tet-manh-ho-nhan-li-xi-den-4-trieu-dong-post1419785.html', 'Banner\r\n'),
('pic008', 'https://suzuki.com.vn/images/Intruder150/intruder-1200x500.jpg', 'Banner Suzuki ', 'https://suzuki.com.vn/xe-may/xe-con-tay/intruder150', 'Banner '),
('pic009', 'https://suzuki.com.vn/images/GSXR150/2021/gsx-r150-2400-1000.jpg', 'Banner Suzuki ', 'https://suzuki.com.vn/xe-may/xe-con-tay/gsx-r150/31-tin-tuc-suzuki-vietnam-xe-may/523-cong-ty-tnhh-viet-nam-suzuki-ra-mat-gsx-r150-phien-ban-mau-moi-tem-moi', 'Banner ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adm_id`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`bll_id`),
  ADD KEY `ctc_foreignKey` (`ctc_id`),
  ADD KEY `adm_FK` (`bll_managedBy`);

--
-- Indexes for table `bill_detail`
--
ALTER TABLE `bill_detail`
  ADD KEY `bll_foreignKey` (`bll_id`),
  ADD KEY `prd_foreignKey` (`prd_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`ctc_id`),
  ADD UNIQUE KEY `ctc_id` (`ctc_id`),
  ADD UNIQUE KEY `ctc_id_2` (`ctc_id`),
  ADD KEY `ctm_foreignKey` (`ctm_id`),
  ADD KEY `dsc_foreignKey` (`dsc_id`),
  ADD KEY `cpn_foreignKey` (`cpn_id`),
  ADD KEY `dps_foreignKey` (`dps_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`ctm_id`),
  ADD UNIQUE KEY `ctm_id` (`ctm_id`);

--
-- Indexes for table `customer_company`
--
ALTER TABLE `customer_company`
  ADD PRIMARY KEY (`cpn_id`);

--
-- Indexes for table `deposit_receipt`
--
ALTER TABLE `deposit_receipt`
  ADD PRIMARY KEY (`dps_id`),
  ADD KEY `ctm_foreignKey2` (`ctm_id`),
  ADD KEY `prd_foreignKey1` (`prd_id`);

--
-- Indexes for table `discount`
--
ALTER TABLE `discount`
  ADD PRIMARY KEY (`dsc_id`);

--
-- Indexes for table `experience_request`
--
ALTER TABLE `experience_request`
  ADD PRIMARY KEY (`req_id`),
  ADD KEY `ctm_foreignKey1` (`ctm_id`),
  ADD KEY `shr_foreignKey` (`shr_id`),
  ADD KEY `adm_foreignKey2` (`req_approvedBy`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`prd_id`),
  ADD UNIQUE KEY `prd_id` (`prd_id`),
  ADD KEY `brd_foreignKey` (`brd_id`),
  ADD KEY `tpe_foreignKey` (`tpe_id`);

--
-- Indexes for table `product_brand`
--
ALTER TABLE `product_brand`
  ADD PRIMARY KEY (`brd_id`);

--
-- Indexes for table `product_color`
--
ALTER TABLE `product_color`
  ADD KEY `prd_foreignKey2` (`prd_id`);

--
-- Indexes for table `product_detail`
--
ALTER TABLE `product_detail`
  ADD KEY `prd_foreignKey3` (`prd_id`);

--
-- Indexes for table `product_type`
--
ALTER TABLE `product_type`
  ADD PRIMARY KEY (`tpe_id`),
  ADD KEY `brd_foreignKey1` (`brd_id`),
  ADD KEY `tpe_foreignKey1` (`tpe_parentId`);

--
-- Indexes for table `product_upload`
--
ALTER TABLE `product_upload`
  ADD KEY `prd_foreignKey4` (`prd_id`),
  ADD KEY `adm_foreignKey1` (`upl_managedBy`);

--
-- Indexes for table `showroom`
--
ALTER TABLE `showroom`
  ADD PRIMARY KEY (`shr_id`);

--
-- Indexes for table `warranty_request`
--
ALTER TABLE `warranty_request`
  ADD PRIMARY KEY (`wrt_id`),
  ADD KEY `ctm_foreignKey3` (`ctm_id`),
  ADD KEY `prd_foreignKey5` (`prd_id`),
  ADD KEY `adm_foreignKey3` (`wrt_approvedBy`);

--
-- Indexes for table `website_picture`
--
ALTER TABLE `website_picture`
  ADD PRIMARY KEY (`pic_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `adm_FK` FOREIGN KEY (`bll_managedBy`) REFERENCES `admin` (`adm_id`),
  ADD CONSTRAINT `ctc_foreignKey` FOREIGN KEY (`ctc_id`) REFERENCES `contact` (`ctc_id`);

--
-- Constraints for table `bill_detail`
--
ALTER TABLE `bill_detail`
  ADD CONSTRAINT `bll_foreignKey` FOREIGN KEY (`bll_id`) REFERENCES `bill` (`bll_id`),
  ADD CONSTRAINT `prd_foreignKey` FOREIGN KEY (`prd_id`) REFERENCES `product` (`prd_id`);

--
-- Constraints for table `contact`
--
ALTER TABLE `contact`
  ADD CONSTRAINT `cpn_foreignKey` FOREIGN KEY (`cpn_id`) REFERENCES `customer_company` (`cpn_id`),
  ADD CONSTRAINT `ctm_foreignKey` FOREIGN KEY (`ctm_id`) REFERENCES `customer` (`ctm_id`),
  ADD CONSTRAINT `dps_foreignKey` FOREIGN KEY (`dps_id`) REFERENCES `deposit_receipt` (`dps_id`),
  ADD CONSTRAINT `dsc_foreignKey` FOREIGN KEY (`dsc_id`) REFERENCES `discount` (`dsc_id`);

--
-- Constraints for table `deposit_receipt`
--
ALTER TABLE `deposit_receipt`
  ADD CONSTRAINT `ctm_foreignKey2` FOREIGN KEY (`ctm_id`) REFERENCES `customer` (`ctm_id`),
  ADD CONSTRAINT `prd_foreignKey1` FOREIGN KEY (`prd_id`) REFERENCES `product` (`prd_id`);

--
-- Constraints for table `experience_request`
--
ALTER TABLE `experience_request`
  ADD CONSTRAINT `adm_foreignKey2` FOREIGN KEY (`req_approvedBy`) REFERENCES `admin` (`adm_id`),
  ADD CONSTRAINT `ctm_foreignKey1` FOREIGN KEY (`ctm_id`) REFERENCES `customer` (`ctm_id`),
  ADD CONSTRAINT `shr_foreignKey` FOREIGN KEY (`shr_id`) REFERENCES `showroom` (`shr_id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `brd_foreignKey` FOREIGN KEY (`brd_id`) REFERENCES `product_brand` (`brd_id`),
  ADD CONSTRAINT `tpe_foreignKey` FOREIGN KEY (`tpe_id`) REFERENCES `product_type` (`tpe_id`);

--
-- Constraints for table `product_color`
--
ALTER TABLE `product_color`
  ADD CONSTRAINT `prd_foreignKey2` FOREIGN KEY (`prd_id`) REFERENCES `product` (`prd_id`);

--
-- Constraints for table `product_detail`
--
ALTER TABLE `product_detail`
  ADD CONSTRAINT `prd_foreignKey3` FOREIGN KEY (`prd_id`) REFERENCES `product` (`prd_id`);

--
-- Constraints for table `product_type`
--
ALTER TABLE `product_type`
  ADD CONSTRAINT `brd_foreignKey1` FOREIGN KEY (`brd_id`) REFERENCES `product_brand` (`brd_id`),
  ADD CONSTRAINT `tpe_foreignKey1` FOREIGN KEY (`tpe_parentId`) REFERENCES `product_type` (`tpe_id`);

--
-- Constraints for table `product_upload`
--
ALTER TABLE `product_upload`
  ADD CONSTRAINT `adm_foreignKey1` FOREIGN KEY (`upl_managedBy`) REFERENCES `admin` (`adm_id`),
  ADD CONSTRAINT `prd_foreignKey4` FOREIGN KEY (`prd_id`) REFERENCES `product` (`prd_id`);

--
-- Constraints for table `warranty_request`
--
ALTER TABLE `warranty_request`
  ADD CONSTRAINT `adm_foreignKey3` FOREIGN KEY (`wrt_approvedBy`) REFERENCES `admin` (`adm_id`),
  ADD CONSTRAINT `ctm_foreignKey3` FOREIGN KEY (`ctm_id`) REFERENCES `customer` (`ctm_id`),
  ADD CONSTRAINT `prd_foreignKey5` FOREIGN KEY (`prd_id`) REFERENCES `product` (`prd_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
