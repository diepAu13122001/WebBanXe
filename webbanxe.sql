-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2022 at 08:13 AM
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

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `bll_id` varchar(10) NOT NULL,
  `bll_productVal` bigint(20) DEFAULT NULL,
  `bll_deliveryFee` bigint(20) DEFAULT NULL,
  `bll_discountAmount` bigint(20) DEFAULT NULL,
  `bll_numOfPrd` tinyint(10) DEFAULT NULL,
  `bll_status` tinytext DEFAULT NULL,
  `ctc_id` varchar(10) DEFAULT NULL,
  `bll_createdDate` date DEFAULT NULL,
  `bll_updatedDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bill_detail`
--

CREATE TABLE `bill_detail` (
  `bll_id` varchar(10) NOT NULL,
  `prd_id` varchar(10) NOT NULL,
  `prd_unitPrice` bigint(20) NOT NULL DEFAULT 0,
  `prd_amount` tinyint(10) NOT NULL DEFAULT 0,
  `prd_discountPercent` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `ctc_id` varchar(10) NOT NULL,
  `ctm_id` varchar(10) DEFAULT NULL,
  `ctc_receivingType` tinytext DEFAULT NULL,
  `ctc_receivingAddress` text DEFAULT NULL,
  `ctc_note` mediumtext DEFAULT NULL,
  `ctc_receiverId` varchar(10) DEFAULT NULL COMMENT 'có thể giống với customer ',
  `ctc_UserManual` tinyint(1) DEFAULT 0,
  `cpn_id` varchar(10) DEFAULT NULL,
  `dsc_id` varchar(10) DEFAULT NULL,
  `ctc_paymentMethod` tinytext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `ctm_id` varchar(10) NOT NULL,
  `ctm_fullName` text DEFAULT NULL,
  `ctm_gender` tinytext DEFAULT NULL,
  `ctm_phoneNum` tinytext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `customer_company`
--

CREATE TABLE `customer_company` (
  `cpn_id` varchar(10) NOT NULL,
  `cpn_name` text DEFAULT NULL,
  `cpn_address` text DEFAULT NULL,
  `cpn_taxCode` tinytext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `customer_request`
--

CREATE TABLE `customer_request` (
  `req_id` varchar(10) NOT NULL,
  `ctm_id` varchar(10) DEFAULT NULL,
  `shr_id` varchar(10) DEFAULT NULL,
  `req_createdDate` date DEFAULT NULL,
  `req_appointmentTime` datetime DEFAULT NULL,
  `req_note` longtext DEFAULT NULL,
  `req_status` tinytext NOT NULL DEFAULT '\'waiting for vertify\''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `dps_status` tinytext NOT NULL DEFAULT '\'waiting for payment\'',
  `dps_paymentMeethod` tinytext DEFAULT NULL,
  `dps_transAddress` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `discount`
--

CREATE TABLE `discount` (
  `dsc_id` varchar(10) NOT NULL,
  `dsc_name` text DEFAULT NULL,
  `dsc_startedDate` date DEFAULT NULL,
  `dsc_endedDate` int(11) DEFAULT NULL,
  `dsc_maxDiscount` bigint(20) DEFAULT 0,
  `dsc_minBillVal` bigint(20) DEFAULT 0,
  `dsc_percentOff` double DEFAULT 0,
  `dsc_isShipDiscount` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `brd_name` tinytext DEFAULT NULL,
  `brd_logo` text DEFAULT NULL,
  `brd_phoneNum` tinytext DEFAULT NULL,
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

-- --------------------------------------------------------

--
-- Table structure for table `product_detail`
--

CREATE TABLE `product_detail` (
  `img_id` varchar(10) NOT NULL,
  `prd_id` varchar(10) NOT NULL,
  `img_content` text DEFAULT NULL,
  `img_isImage` tinyint(1) DEFAULT NULL,
  `imi_alt` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product_type`
--

CREATE TABLE `product_type` (
  `tpe_id` varchar(10) NOT NULL,
  `brd_id` varchar(10) NOT NULL,
  `tpe_name` tinytext DEFAULT NULL,
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
  `upl_lastEdit` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `showroom`
--

CREATE TABLE `showroom` (
  `shr_id` varchar(10) NOT NULL,
  `shr_name` text DEFAULT NULL,
  `shr_address` text DEFAULT NULL,
  `shr_phoneNum` tinytext DEFAULT NULL,
  `shr_openTime` time DEFAULT NULL,
  `shr_closeTime` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `wrt_status` tinytext NOT NULL DEFAULT '\'waiting for verify\'',
  `wrt_location` text DEFAULT NULL COMMENT 'địa chỉ bảo hành (tại nhà thì thêm tiền)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `website_picture`
--

CREATE TABLE `website_picture` (
  `pic_id` varchar(10) NOT NULL,
  `pic_url` text DEFAULT NULL,
  `pic_alt` text DEFAULT NULL,
  `pic_linkToPage` text DEFAULT NULL,
  `pic_type` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`bll_id`),
  ADD KEY `ctc_foreignKey` (`ctc_id`);

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
  ADD KEY `cpn_foreignKey` (`cpn_id`);

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
-- Indexes for table `customer_request`
--
ALTER TABLE `customer_request`
  ADD PRIMARY KEY (`req_id`),
  ADD KEY `ctm_foreignKey1` (`ctm_id`),
  ADD KEY `shr_foreignKey` (`shr_id`);

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
  ADD PRIMARY KEY (`img_id`),
  ADD UNIQUE KEY `img_id` (`img_id`),
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
  ADD KEY `prd_foreignKey4` (`prd_id`);

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
  ADD KEY `prd_foreignKey5` (`prd_id`);

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
  ADD CONSTRAINT `dsc_foreignKey` FOREIGN KEY (`dsc_id`) REFERENCES `discount` (`dsc_id`);

--
-- Constraints for table `customer_request`
--
ALTER TABLE `customer_request`
  ADD CONSTRAINT `ctm_foreignKey1` FOREIGN KEY (`ctm_id`) REFERENCES `customer` (`ctm_id`),
  ADD CONSTRAINT `shr_foreignKey` FOREIGN KEY (`shr_id`) REFERENCES `showroom` (`shr_id`);

--
-- Constraints for table `deposit_receipt`
--
ALTER TABLE `deposit_receipt`
  ADD CONSTRAINT `ctm_foreignKey2` FOREIGN KEY (`ctm_id`) REFERENCES `customer` (`ctm_id`),
  ADD CONSTRAINT `prd_foreignKey1` FOREIGN KEY (`prd_id`) REFERENCES `product` (`prd_id`);

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
  ADD CONSTRAINT `prd_foreignKey4` FOREIGN KEY (`prd_id`) REFERENCES `product` (`prd_id`);

--
-- Constraints for table `warranty_request`
--
ALTER TABLE `warranty_request`
  ADD CONSTRAINT `ctm_foreignKey3` FOREIGN KEY (`ctm_id`) REFERENCES `customer` (`ctm_id`),
  ADD CONSTRAINT `prd_foreignKey5` FOREIGN KEY (`prd_id`) REFERENCES `product` (`prd_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
