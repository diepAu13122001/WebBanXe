-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 15, 2022 lúc 03:48 PM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webbanxe`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `adm_id` int(11) NOT NULL,
  `adm_name` text DEFAULT NULL,
  `adm_password` char(6) DEFAULT NULL,
  `adm_phoneNum` char(10) DEFAULT NULL,
  `adm_mailAddress` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`adm_id`, `adm_name`, `adm_password`, `adm_phoneNum`, `adm_mailAddress`) VALUES
(1, 'âu ngọc diệp', '123456', '0764699015', 'angocdiep1312@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill`
--

CREATE TABLE `bill` (
  `bll_id` int(11) NOT NULL,
  `bll_totalProductVal` bigint(20) DEFAULT NULL,
  `bll_deliveryFee` bigint(20) DEFAULT NULL,
  `bll_discountAmount` bigint(20) DEFAULT NULL,
  `bll_numOfPrd` tinyint(4) DEFAULT NULL,
  `bll_status` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `bll_createdDate` date DEFAULT NULL,
  `bll_updatedDate` date DEFAULT NULL,
  `bll_paidDate` timestamp NULL DEFAULT NULL,
  `adm_id` int(10) DEFAULT NULL,
  `bll_depositAmount` bigint(20) DEFAULT NULL,
  `ctc_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill_detail`
--

CREATE TABLE `bill_detail` (
  `bll_id` int(10) NOT NULL,
  `dtl_productDiscount` double DEFAULT NULL,
  `dtl_productAmount` tinyint(4) DEFAULT NULL,
  `prd_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact`
--

CREATE TABLE `contact` (
  `ctc_id` int(11) NOT NULL,
  `ctm_id` int(11) NOT NULL,
  `ctc_receivingType` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ctc_receivingAddress` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ctc_note` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ctc_consigneeId` int(10) DEFAULT NULL COMMENT 'có thể giống với customer ',
  `ctc_userManual` tinyint(1) DEFAULT 0,
  `cpn_id` int(11) NOT NULL,
  `dsc_id` int(11) NOT NULL,
  `ctc_paymentMethod` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dps_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `ctm_id` int(11) NOT NULL,
  `ctm_fullName` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ctm_gender` tinytext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ctm_phoneNum` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`ctm_id`, `ctm_fullName`, `ctm_gender`, `ctm_phoneNum`) VALUES
(1, 'name', 'nam', '764699015');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer_company`
--

CREATE TABLE `customer_company` (
  `cpn_id` int(10) NOT NULL,
  `cpn_name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `cpn_address` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `cpn_taxCode` char(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `deposit_receipt`
--

CREATE TABLE `deposit_receipt` (
  `dps_id` int(10) NOT NULL,
  `ctm_id` int(10) NOT NULL,
  `prd_id` int(10) NOT NULL,
  `dps_amount` bigint(20) DEFAULT 0,
  `dps_createdDate` date DEFAULT NULL,
  `dps_paymentDate` timestamp NULL DEFAULT NULL,
  `dps_status` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `dps_paymentMethod` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `dps_receivingAddress` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `discount`
--

CREATE TABLE `discount` (
  `dsc_id` int(10) NOT NULL,
  `dsc_name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `dsc_startedDate` date DEFAULT NULL,
  `dsc_endedDate` date DEFAULT NULL,
  `dsc_maxDiscount` bigint(20) DEFAULT 0,
  `dsc_minBillVal` bigint(20) DEFAULT 0,
  `dsc_percentOff` double DEFAULT 0,
  `dsc_isShipDiscount` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `experience_request`
--

CREATE TABLE `experience_request` (
  `req_id` int(11) NOT NULL,
  `req_createdDate` date DEFAULT NULL,
  `req_appointmentTime` datetime DEFAULT NULL,
  `req_note` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `req_status` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `adm_id` int(10) DEFAULT NULL,
  `ctm_id` int(11) NOT NULL,
  `shr_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `prd_id` int(11) NOT NULL,
  `prd_name` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `prd_ava` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `brd_id` int(10) NOT NULL,
  `tpe_id` int(10) NOT NULL,
  `prd_price` bigint(20) DEFAULT NULL,
  `prd_discountPercent` double DEFAULT NULL,
  `prd_createdDate` date DEFAULT NULL,
  `prd_lastEdit` timestamp NULL DEFAULT NULL,
  `prd_status` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `adm_id` int(11) DEFAULT NULL,
  `prd_quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_brand`
--

CREATE TABLE `product_brand` (
  `brd_id` int(10) NOT NULL,
  `brd_name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `brd_logo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `brd_phoneNum` char(12) DEFAULT NULL,
  `brd_address` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `brd_webAddress` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `product_brand`
--

INSERT INTO `product_brand` (`brd_id`, `brd_name`, `brd_logo`, `brd_phoneNum`, `brd_address`, `brd_webAddress`) VALUES
(1, 'Honda', 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7b/Honda_Logo.svg/299px-Honda_Logo.svg.png', '0123456789', 'TPHCM', 'https://www.honda.com.vn/'),
(2, 'Yamaha', 'https://brademar.com/wp-content/uploads/2022/05/Yamaha-Logo-PNG-1998-%E2%80%93-Now.png', '0123456788', 'TPHCM', 'https://yamaha-motor.com.vn/'),
(3, 'Suzuki', 'https://banner2.cleanpng.com/20180802/cxg/kisspng-icon-suzuki-logo-motorcycle-car-dx1-manufacturers-5b62ef512c4495.7498610815332104491813.jpg', '01234567777', 'TPHCM', 'https://suzuki.com.vn/'),
(4, 'Honda', 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7b/Honda_Logo.svg/299px-Honda_Logo.svg.png', '0123456789', 'TPHCM', 'https://www.honda.com.vn/'),
(5, 'Yamaha', 'https://brademar.com/wp-content/uploads/2022/05/Yamaha-Logo-PNG-1998-%E2%80%93-Now.png', '0123456788', 'TPHCM', 'https://yamaha-motor.com.vn/'),
(6, 'Suzuki', 'https://banner2.cleanpng.com/20180802/cxg/kisspng-icon-suzuki-logo-motorcycle-car-dx1-manufacturers-5b62ef512c4495.7498610815332104491813.jpg', '01234567777', 'TPHCM', 'https://suzuki.com.vn/'),
(7, 'Honda', 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7b/Honda_Logo.svg/299px-Honda_Logo.svg.png', '0123456789', 'TPHCM', 'https://www.honda.com.vn/'),
(8, 'Yamaha', 'https://brademar.com/wp-content/uploads/2022/05/Yamaha-Logo-PNG-1998-%E2%80%93-Now.png', '0123456788', 'TPHCM', 'https://yamaha-motor.com.vn/'),
(9, 'Suzuki', 'https://banner2.cleanpng.com/20180802/cxg/kisspng-icon-suzuki-logo-motorcycle-car-dx1-manufacturers-5b62ef512c4495.7498610815332104491813.jpg', '01234567777', 'TPHCM', 'https://suzuki.com.vn/'),
(10, 'Honda', 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7b/Honda_Logo.svg/299px-Honda_Logo.svg.png', '0123456789', 'TPHCM', 'https://www.honda.com.vn/'),
(11, 'Yamaha', 'https://brademar.com/wp-content/uploads/2022/05/Yamaha-Logo-PNG-1998-%E2%80%93-Now.png', '0123456788', 'TPHCM', 'https://yamaha-motor.com.vn/'),
(12, 'Suzuki', 'https://banner2.cleanpng.com/20180802/cxg/kisspng-icon-suzuki-logo-motorcycle-car-dx1-manufacturers-5b62ef512c4495.7498610815332104491813.jpg', '01234567777', 'TPHCM', 'https://suzuki.com.vn/'),
(13, 'Honda', 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7b/Honda_Logo.svg/299px-Honda_Logo.svg.png', '0123456789', 'TPHCM', 'https://www.honda.com.vn/'),
(14, 'Yamaha', 'https://brademar.com/wp-content/uploads/2022/05/Yamaha-Logo-PNG-1998-%E2%80%93-Now.png', '0123456788', 'TPHCM', 'https://yamaha-motor.com.vn/'),
(15, 'Suzuki', 'https://banner2.cleanpng.com/20180802/cxg/kisspng-icon-suzuki-logo-motorcycle-car-dx1-manufacturers-5b62ef512c4495.7498610815332104491813.jpg', '01234567777', 'TPHCM', 'https://suzuki.com.vn/');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_color`
--

CREATE TABLE `product_color` (
  `prd_id` int(10) NOT NULL,
  `clr_name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `clr_img` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_detail`
--

CREATE TABLE `product_detail` (
  `prd_id` int(10) NOT NULL,
  `prd_content` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `prd_contentIsImage` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_type`
--

CREATE TABLE `product_type` (
  `tpe_id` int(10) NOT NULL,
  `brd_id` int(10) NOT NULL,
  `tpe_name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `tpe_parentId` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `product_type`
--

INSERT INTO `product_type` (`tpe_id`, `brd_id`, `tpe_name`, `tpe_parentId`) VALUES
(7, 1, 'xe ga', NULL),
(8, 1, 'xe số', 1),
(9, 2, 'xe ga', 2),
(10, 2, 'xe số', 1),
(11, 3, 'xe ga', 3),
(12, 3, 'xe côn tay', 4),
(13, 1, 'xe ga', NULL),
(14, 1, 'xe số', 1),
(15, 2, 'xe ga', 2),
(16, 2, 'xe số', 1),
(17, 3, 'xe ga', 3),
(18, 3, 'xe côn tay', 4),
(19, 1, 'xe ga', NULL),
(20, 1, 'xe số', 1),
(21, 2, 'xe ga', 2),
(22, 2, 'xe số', 1),
(23, 3, 'xe ga', 3),
(24, 3, 'xe côn tay', 4),
(25, 1, 'xe ga', NULL),
(26, 1, 'xe số', 1),
(27, 2, 'xe ga', 2),
(28, 2, 'xe số', 1),
(29, 3, 'xe ga', 3),
(30, 3, 'xe côn tay', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `showroom`
--

CREATE TABLE `showroom` (
  `shr_id` int(11) NOT NULL,
  `shr_name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shr_address` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shr_phoneNum` char(10) DEFAULT NULL,
  `shr_openTime` time DEFAULT NULL,
  `shr_closeTime` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `warranty_request`
--

CREATE TABLE `warranty_request` (
  `wrt_id` int(11) NOT NULL,
  `ctm_id` int(11) NOT NULL,
  `prd_id` int(11) NOT NULL,
  `wrt_packageId` int(11) DEFAULT NULL,
  `wrt_extraFee` bigint(20) NOT NULL DEFAULT 0,
  `wrt_createdDate` date DEFAULT NULL,
  `wrt_warrantyDate` date DEFAULT NULL,
  `wrt_receiptDate` date DEFAULT NULL,
  `wrt_status` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `wrt_location` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'địa chỉ bảo hành (tại nhà thì thêm tiền)',
  `adm_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `website_picture`
--

CREATE TABLE `website_picture` (
  `pic_id` int(10) NOT NULL,
  `pic_url` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `pic_alt` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `pic_linkToPage` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `pic_type` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adm_id`);

--
-- Chỉ mục cho bảng `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`bll_id`),
  ADD KEY `bll_fk1` (`ctc_id`),
  ADD KEY `bll_fk2` (`adm_id`);

--
-- Chỉ mục cho bảng `bill_detail`
--
ALTER TABLE `bill_detail`
  ADD KEY `dtl_fk1` (`bll_id`),
  ADD KEY `dtl_fk2` (`prd_id`);

--
-- Chỉ mục cho bảng `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`ctc_id`),
  ADD KEY `ctc_fk1` (`cpn_id`),
  ADD KEY `ctc_fk2` (`ctm_id`),
  ADD KEY `ctc_fk3` (`dps_id`),
  ADD KEY `ctc_fk4` (`dsc_id`),
  ADD KEY `ctc_fk5` (`ctc_consigneeId`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`ctm_id`);

--
-- Chỉ mục cho bảng `customer_company`
--
ALTER TABLE `customer_company`
  ADD PRIMARY KEY (`cpn_id`);

--
-- Chỉ mục cho bảng `deposit_receipt`
--
ALTER TABLE `deposit_receipt`
  ADD PRIMARY KEY (`dps_id`),
  ADD KEY `dps_fk1` (`ctm_id`),
  ADD KEY `dps_fk2` (`prd_id`);

--
-- Chỉ mục cho bảng `discount`
--
ALTER TABLE `discount`
  ADD PRIMARY KEY (`dsc_id`);

--
-- Chỉ mục cho bảng `experience_request`
--
ALTER TABLE `experience_request`
  ADD PRIMARY KEY (`req_id`),
  ADD KEY `req_fk1` (`ctm_id`),
  ADD KEY `req_fk2` (`shr_id`),
  ADD KEY `req_fk3` (`adm_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`prd_id`),
  ADD KEY `prd_fk1` (`brd_id`),
  ADD KEY `prd_fk2` (`tpe_id`),
  ADD KEY `prd_fk3` (`adm_id`);

--
-- Chỉ mục cho bảng `product_brand`
--
ALTER TABLE `product_brand`
  ADD PRIMARY KEY (`brd_id`);

--
-- Chỉ mục cho bảng `product_color`
--
ALTER TABLE `product_color`
  ADD KEY `clr_fk1` (`prd_id`);

--
-- Chỉ mục cho bảng `product_detail`
--
ALTER TABLE `product_detail`
  ADD KEY `dlt_fk1` (`prd_id`);

--
-- Chỉ mục cho bảng `product_type`
--
ALTER TABLE `product_type`
  ADD PRIMARY KEY (`tpe_id`),
  ADD KEY `tpe_fk1` (`brd_id`);

--
-- Chỉ mục cho bảng `showroom`
--
ALTER TABLE `showroom`
  ADD PRIMARY KEY (`shr_id`);

--
-- Chỉ mục cho bảng `warranty_request`
--
ALTER TABLE `warranty_request`
  ADD PRIMARY KEY (`wrt_id`),
  ADD KEY `wrt_fk1` (`adm_id`),
  ADD KEY `wrt_fk2` (`ctm_id`),
  ADD KEY `wrt_fk3` (`prd_id`);

--
-- Chỉ mục cho bảng `website_picture`
--
ALTER TABLE `website_picture`
  ADD PRIMARY KEY (`pic_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `adm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `bill`
--
ALTER TABLE `bill`
  MODIFY `bll_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `contact`
--
ALTER TABLE `contact`
  MODIFY `ctc_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `ctm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `customer_company`
--
ALTER TABLE `customer_company`
  MODIFY `cpn_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `deposit_receipt`
--
ALTER TABLE `deposit_receipt`
  MODIFY `dps_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `discount`
--
ALTER TABLE `discount`
  MODIFY `dsc_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `experience_request`
--
ALTER TABLE `experience_request`
  MODIFY `req_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `prd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT cho bảng `product_brand`
--
ALTER TABLE `product_brand`
  MODIFY `brd_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `product_type`
--
ALTER TABLE `product_type`
  MODIFY `tpe_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `showroom`
--
ALTER TABLE `showroom`
  MODIFY `shr_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `warranty_request`
--
ALTER TABLE `warranty_request`
  MODIFY `wrt_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `website_picture`
--
ALTER TABLE `website_picture`
  MODIFY `pic_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `bll_fk1` FOREIGN KEY (`ctc_id`) REFERENCES `contact` (`ctc_id`),
  ADD CONSTRAINT `bll_fk2` FOREIGN KEY (`adm_id`) REFERENCES `admin` (`adm_id`);

--
-- Các ràng buộc cho bảng `bill_detail`
--
ALTER TABLE `bill_detail`
  ADD CONSTRAINT `dtl_fk1` FOREIGN KEY (`bll_id`) REFERENCES `bill` (`bll_id`),
  ADD CONSTRAINT `dtl_fk2` FOREIGN KEY (`prd_id`) REFERENCES `product` (`prd_id`);

--
-- Các ràng buộc cho bảng `contact`
--
ALTER TABLE `contact`
  ADD CONSTRAINT `ctc_fk1` FOREIGN KEY (`cpn_id`) REFERENCES `customer_company` (`cpn_id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `ctc_fk2` FOREIGN KEY (`ctm_id`) REFERENCES `customer` (`ctm_id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `ctc_fk3` FOREIGN KEY (`dps_id`) REFERENCES `deposit_receipt` (`dps_id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `ctc_fk4` FOREIGN KEY (`dsc_id`) REFERENCES `discount` (`dsc_id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `ctc_fk5` FOREIGN KEY (`ctc_consigneeId`) REFERENCES `customer` (`ctm_id`);

--
-- Các ràng buộc cho bảng `deposit_receipt`
--
ALTER TABLE `deposit_receipt`
  ADD CONSTRAINT `dps_fk1` FOREIGN KEY (`ctm_id`) REFERENCES `customer` (`ctm_id`),
  ADD CONSTRAINT `dps_fk2` FOREIGN KEY (`prd_id`) REFERENCES `product` (`prd_id`);

--
-- Các ràng buộc cho bảng `experience_request`
--
ALTER TABLE `experience_request`
  ADD CONSTRAINT `req_fk1` FOREIGN KEY (`ctm_id`) REFERENCES `customer` (`ctm_id`),
  ADD CONSTRAINT `req_fk2` FOREIGN KEY (`shr_id`) REFERENCES `showroom` (`shr_id`),
  ADD CONSTRAINT `req_fk3` FOREIGN KEY (`adm_id`) REFERENCES `admin` (`adm_id`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `prd_fk1` FOREIGN KEY (`brd_id`) REFERENCES `product_brand` (`brd_id`),
  ADD CONSTRAINT `prd_fk2` FOREIGN KEY (`tpe_id`) REFERENCES `product_type` (`tpe_id`),
  ADD CONSTRAINT `prd_fk3` FOREIGN KEY (`adm_id`) REFERENCES `admin` (`adm_id`);

--
-- Các ràng buộc cho bảng `product_color`
--
ALTER TABLE `product_color`
  ADD CONSTRAINT `clr_fk1` FOREIGN KEY (`prd_id`) REFERENCES `product` (`prd_id`);

--
-- Các ràng buộc cho bảng `product_detail`
--
ALTER TABLE `product_detail`
  ADD CONSTRAINT `dlt_fk1` FOREIGN KEY (`prd_id`) REFERENCES `product` (`prd_id`);

--
-- Các ràng buộc cho bảng `product_type`
--
ALTER TABLE `product_type`
  ADD CONSTRAINT `tpe_fk1` FOREIGN KEY (`brd_id`) REFERENCES `product_brand` (`brd_id`);

--
-- Các ràng buộc cho bảng `warranty_request`
--
ALTER TABLE `warranty_request`
  ADD CONSTRAINT `wrt_fk1` FOREIGN KEY (`adm_id`) REFERENCES `admin` (`adm_id`),
  ADD CONSTRAINT `wrt_fk2` FOREIGN KEY (`ctm_id`) REFERENCES `customer` (`ctm_id`),
  ADD CONSTRAINT `wrt_fk3` FOREIGN KEY (`prd_id`) REFERENCES `product` (`prd_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
