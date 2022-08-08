-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 08, 2022 at 11:06 AM
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
-- Indexes for table `website_picture`
--
ALTER TABLE `website_picture`
  ADD PRIMARY KEY (`pic_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
