-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 05, 2022 at 07:08 PM
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
-- Database: `banxe`
--

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

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`bll_id`, `bll_totalProductVal`, `bll_deliveryFee`, `bll_discountAmount`, `bll_numOfPrd`, `bll_status`, `ctc_id`, `bll_createdDate`, `bll_updatedDate`, `bll_managedBy`, `bll_depositAmount`) VALUES
('', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-19', NULL, NULL),
('bid001', 120000000, 300000, 0, 2, 'Chờ nhận hàng', 'CTC001', '2022-04-20', '2022-04-21', 'AD001', 2000000),
('bid002', 120000000, 300000, 300000, 2, 'Chờ nhận hàng', 'CTC002', '2022-04-19', '2022-04-22', 'AD001', 3000000),
('bid003', 120000000, 300000, 0, 2, 'Chờ nhận hàng', 'CTC001', '2022-04-20', '2022-04-21', 'AD001', 2000000),
('bid004', 120000000, 300000, 300000, 2, 'Chờ nhận hàng', 'CTC002', '2022-04-19', '2022-04-22', 'AD001', 3000000),
('bid005', 120000000, 300000, 300000, 2, 'Chờ nhận hàng', 'CTC001', '2022-04-19', '2022-04-22', 'AD001', 3000000),
('bid006', 120000000, 300000, 300000, 2, 'Chờ nhận hàng', 'CTC002', '2022-04-19', '2022-04-22', 'AD001', 3000000),
('bid007', 120000000, 300000, 0, 2, 'Chờ nhận hàng', 'CTC001', '2022-04-20', '2022-04-21', 'AD002', 2000000),
('bid008', 120000000, 300000, 300000, 2, 'Chờ nhận hàng', 'CTC002', '2022-04-19', '2022-04-22', 'AD002', 3000000),
('bid009', 120000000, 300000, 300000, 2, 'Chờ nhận hàng', 'CTC003', '2022-04-19', '2022-04-22', 'AD002', 3000000),
('bid010', 120000000, 300000, 300000, 2, 'Chờ nhận hàng', 'CTC003', '2022-04-19', '2022-04-22', 'AD002', 3000000);

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

--
-- Dumping data for table `bill_detail`
--

INSERT INTO `bill_detail` (`bll_id`, `prd_id`, `dtl_productDiscount`, `dtl_productAmount`) VALUES
('bid001', 'pr001', 2, 2),
('bid002', 'pr001', 2, 2),
('bid003', 'pr001', 2, 2),
('bid004', 'pr001', 2, 2),
('bid005', 'pr001', 2, 2),
('bid006', 'pr001', 2, 2),
('bid007', 'pr001', 2, 2),
('bid008', 'pr001', 2, 2),
('bid009', 'pr001', 2, 2),
('bid010', 'pr001', 2, 2);

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

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`ctc_id`, `ctm_id`, `ctc_receivingType`, `ctc_receivingAddress`, `ctc_note`, `ctc_receiverId`, `ctc_userManual`, `cpn_id`, `dsc_id`, `ctc_paymentMethod`, `dps_id`) VALUES
('CTC001', 'KH001', 'Nhận ở cửa hàng', 'TPHCM', 'TRƯỚC 12H', 'CTC001', 0, NULL, 'DSC001', 'cash', 'DSC001'),
('CTC002', 'KH002', 'Nhận ở cửa hàng', 'TPHCM', 'TRƯỚC 12H', 'CTC001', 0, NULL, 'DSC001', 'cash', 'DSC001'),
('CTC003', 'KH003', 'Nhận ở cửa hàng', 'TPHCM', 'TRƯỚC 12H', 'CTC001', 0, NULL, 'DSC001', 'cash', 'DSC001'),
('CTC004', 'KH004', 'Nhận ở cửa hàng', 'TPHCM', 'TRƯỚC 12H', 'CTC001', 0, NULL, 'DSC001', 'cash', 'DSC001'),
('CTC005', 'KH004', 'Nhận ở cửa hàng', 'TPHCM', 'TRƯỚC 12H', 'CTC001', 0, NULL, 'DSC001', 'cash', 'DSC001');

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

--
-- Dumping data for table `deposit_receipt`
--

INSERT INTO `deposit_receipt` (`dps_id`, `ctm_id`, `prd_id`, `dps_amount`, `dps_createdDate`, `dps_paymentDate`, `dps_status`, `dps_paymentMethod`, `dps_receivingAddress`) VALUES
('DSC001', 'CTM001', 'pr001', 5000000, '2022-04-22', '2022-04-25', 'Đợi nhận hàng', 'Cash', 'TPHCM'),
('DSC002', 'CTM001', 'pr001', 5000000, '2022-04-22', '2022-04-25', 'Đợi nhận hàng', 'Cash', 'TPHCM'),
('DSC003', 'CTM001', 'pr001', 5000000, '2022-04-22', '2022-04-25', 'Đợi nhận hàng', 'Cash', 'TPHCM'),
('DSC004', 'CTM001', 'pr001', 5000000, '2022-04-22', '2022-04-25', 'Đợi nhận hàng', 'Cash', 'TPHCM'),
('DSC005', 'CTM001', 'pr001', 5000000, '2022-04-22', '2022-04-25', 'Đợi nhận hàng', 'Cash', 'TPHCM');

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

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`prd_id`, `prd_name`, `prd_ava`, `brd_id`, `tpe_id`, `prd_price`, `prd_discountPercent`) VALUES
('pr001', 'Air Blade 125/160', 'https://cdn.honda.com.vn/motorbikes/May2022/yXVDCgQDZJcYqcCZPzyQ.png', 'br01', 'tpe01', 42090000, 5),
('pr002', 'Vision', 'https://cdn.honda.com.vn/motorbikes/December2020/Bf4EFMSz9Q70ZZj3BVm1.png', 'br01', 'tpe01', 30230182, 5),
('pr003', 'Vision (Phiên bản Cá tính)', 'https://cdn.honda.com.vn/motorbikes/December2020/tvsGv5RA4cWKldDPuiXj.png', 'br01', 'tpe01', 30230182, 5),
('pr004', 'Sh mode 125cc', 'https://cdn.honda.com.vn/motorbikes/December2021/Wd66MjGr9TIeXHOhz2Rj.png', 'br01', 'tpe01', 54090000, 5),
('pr005', 'Lead 125cc', 'https://cdn.honda.com.vn/motorbikes/December2021/PxbOtPG619Vte84CQHPg.png', 'br01', 'tpe01', 39090000, 5),
('pr006', 'Blade 110', 'https://cdn.honda.com.vn/motorbikes/November2020/WvWf9Ur0YzePFWfz4X6u.png', 'br01', 'tpe02', 18230182, 5),
('pr007', 'Future 125 Fi', 'https://cdn.honda.com.vn/motorbikes/October2021/q9ElGvGXqy8Kvz4v3eJp.jpg', 'br01', 'tpe02', 30230182, 5),
('pr008', 'Super Cub C125', 'https://cdn.honda.com.vn/motorbikes/October2021/qdGgJvma2sfdCVaSKhaQ.png', 'br01', 'tpe02', 85090000, 5),
('pr009', 'Wave RSX Fi 110', 'https://cdn.honda.com.vn/motorbikes/November2020/xwHcEQalBMGgVI2BujfN.jpg', 'br01', 'tpe02', 21090000, 5),
('pr010', 'Wave Alpha 110cc', 'https://cdn.honda.com.vn/motorbikes/September2020/yNDoA9HpE2BdzYjJF0LQ.jpg', 'br01', 'tpe02', 17090000, 5),
('pr011', 'JUPITER FINN', 'https://yamaha-motor.com.vn/wp/wp-content/uploads/2022/07/Jupiter-Finn-Urban-Blue-004-300x240.png', 'br02', 'tpe03', 18230182, 5),
('pr012', 'EXCITER', 'https://yamaha-motor.com.vn/wp/wp-content/uploads/2020/12/Exciter-155-GP-004-300x240.png', 'br02', 'tpe03', 44230182, 5),
('pr013', 'JUPITER FI', 'https://yamaha-motor.com.vn/wp/wp-content/uploads/2020/05/Jupiter-GP-300x240.png', 'br02', 'tpe03', 22090000, 5),
('pr014', 'SIRIUS FI', 'https://yamaha-motor.com.vn/wp/wp-content/uploads/2021/09/RC-Black-Metallic-Y-004-copy-300x240.png', 'br02', 'tpe03', 21090000, 5),
('pr015', 'SIRIUS', 'https://yamaha-motor.com.vn/wp/wp-content/uploads/2019/05/902cbf7c3925180d16ad89df59f9d225-300x240.png', 'br02', 'tpe03', 17090000, 5),
('pr016', 'GRANDE', 'https://yamaha-motor.com.vn/wp/wp-content/uploads/2018/12/New-Grande-Pearl-White-004-300x240.png', 'br02', 'tpe04', 18230182, 5),
('pr017', 'LATTE', 'https://yamaha-motor.com.vn/wp/wp-content/uploads/2020/05/Latte-Yamaha-300x240.png', 'br02', 'tpe04', 44230182, 5),
('pr018', 'JANUS', 'https://yamaha-motor.com.vn/wp/wp-content/uploads/2022/04/New-Janus-Light-Blue-Metallic-SMK-004-300x240.png', 'br02', 'tpe04', 22090000, 5),
('pr019', 'NVX', 'https://yamaha-motor.com.vn/wp/wp-content/uploads/2020/10/X30-Mat-Black-004-300x240.png', 'br02', 'tpe04', 21090000, 5),
('pr020', 'FREEGO', 'https://yamaha-motor.com.vn/wp/wp-content/uploads/2022/04/FreeGo-Mat-Red-SMK-004-300x240.png', 'br02', 'tpe04', 17090000, 5),
('pr021', 'Burgman Street', 'https://suzuki.com.vn/images/homepage/burgman-homepage-thumbnail.jpg', 'br03', 'tpe05', 48600000, 0),
('pr022', 'Impulse 125 FI', 'https://suzuki.com.vn/images/homepage/impulse-homepage-thumbnail.jpg', 'br03', 'tpe05', 31600000, 0),
('pr023', 'Bandit 150', 'https://suzuki.com.vn/images/homepage/bandit-150-homepage-thumbnail.jpg', 'br03', 'tpe06', 68600000, 0),
('pr024', 'GSX-R150', 'https://suzuki.com.vn/images/homepage/gsx-r150-homepage-thumbnail.jpg', 'br03', 'tpe06', 71600000, 0),
('pr025', 'Satria F150', 'https://suzuki.com.vn/images/homepage/gsx-r150-homepage-thumbnail.jpg', 'br03', 'tpe06', 52600000, 0),
('pr026', 'GSX-S150', 'https://suzuki.com.vn/images/2022/06/gsx-s150-homepage-thumbnail.png', 'br03', 'tpe06', 54600000, 0),
('pr027', 'Raider R150', 'https://suzuki.com.vn/images/Raider/2022/Xanh-Den-Moi.png', 'br03', 'tpe06', 50600000, 0),
('pr028', 'Intruder 150', 'https://suzuki.com.vn/images/homepage/intruder-homepage-thumbnail.jpg', 'br03', 'tpe06', 78600000, 0),
('pr029', 'GZ150-A', 'https://suzuki.com.vn/images/homepage/gz150-homepage-thumbnail.jpg', 'br03', 'tpe06', 71600000, 0),
('pr030', 'GD110HU', 'https://suzuki.com.vn/images/homepage/gd110hu-2022-thumbnail.pngg', 'br03', 'tpe06', 27600000, 0);

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

--
-- Dumping data for table `product_brand`
--

INSERT INTO `product_brand` (`brd_id`, `brd_name`, `brd_logo`, `brd_phoneNum`, `brd_address`, `brd_webAddress`) VALUES
('br01', 'Honda', 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7b/Honda_Logo.svg/299px-Honda_Logo.svg.png', '0123456789', 'TPHCM', 'https://www.honda.com.vn/'),
('br02', 'Yamaha', 'https://brademar.com/wp-content/uploads/2022/05/Yamaha-Logo-PNG-1998-%E2%80%93-Now.png', '0123456788', 'TPHCM', 'https://yamaha-motor.com.vn/'),
('br03', 'Suzuki', 'https://banner2.cleanpng.com/20180802/cxg/kisspng-icon-suzuki-logo-motorcycle-car-dx1-manufacturers-5b62ef512c4495.7498610815332104491813.jpg', '01234567777', 'TPHCM', 'https://suzuki.com.vn/');

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
('pr001', 'xanh', 'https://printgo.vn/uploads/media/792227/xcac-loai-mau-xanh-2_1624333127.jpg.pagespeed.ic.1wztESzF2g.webp');

-- --------------------------------------------------------

--
-- Table structure for table `product_detail`
--

CREATE TABLE `product_detail` (
  `prd_id` varchar(10) NOT NULL,
  `prd_content` longtext DEFAULT NULL,
  `prd_contentIsImage` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_detail`
--

INSERT INTO `product_detail` (`prd_id`, `prd_content`, `prd_contentIsImage`) VALUES
('pr001', 'Xứng danh mẫu xe tay ga thể thao tầm trung hàng đầu trong suốt hơn một thập kỷ qua, AIR BLADE hoàn toàn mới nay được nâng cấp động cơ eSP+ 4 van độc quyền, tiên tiến nhất giúp mang trong mình mãnh lực tiên phong.', NULL),
('pr002', 'Thuộc phân khúc xe tay ga giá thấp, Vision luôn là mẫu xe được ưa chuộng trong giới trẻ và có số lượng bán ra lớn nhất tại thị trường Việt Nam suốt nhiều năm qua nhờ kiểu dáng trẻ trung, thanh lịch và nhỏ gọn. Sau 6 năm kể từ lần thay đổi lớn gần nhất vào năm 2014, chiếc xe Vision 2020 đã được nâng cấp toàn diện cả về kiểu dáng thời trang cùng những tiện ích và công nghệ hiện đại, hứa hẹn mang đến những trải nghiệm vượt xa kỳ vọng cho những người trẻ năng động và luôn dẫn đầu xu hướng.', NULL),
('pr003', 'Thuộc phân khúc xe tay ga giá thấp, Vision luôn là mẫu xe được ưa chuộng trong giới trẻ và có số lượng bán ra lớn nhất tại thị trường Việt Nam suốt nhiều năm qua nhờ kiểu dáng trẻ trung, thanh lịch và nhỏ gọn. Tiếp tục kế thừa nét ưu việt từ những phiên bản trước, Vision 2020 nay đã được nâng cấp toàn diện cả về ngoại hình thời trang và mạnh mẽ, phong cách sang trọng cùng những tiện ích và công nghê hiện đại, mang đến thêm lựa chọn đa dạng, giúp khách hàng tự tin khẳng định cá tính.', NULL),
('pr004', 'Thuộc phân khúc xe ga cao cấp và thừa hưởng thiết kế sang trọng nổi tiếng của dòng xe SH, Sh mode luôn được đánh giá cao nhờ kiểu dáng sang trọng, tinh tế tới từng đường nét, động cơ tiên tiến và các tiện nghi cao cấp xứng tầm phong cách sống thời thượng, đẳng cấp.', NULL),
('pr005', 'Kế thừa ngôn ngữ thiết kế hiện đại cùng nhiều tiện ích vượt trội vốn có, xe LEAD 125cc mới nay được nâng tầm với động cơ thế hệ mới nhất của Honda eSP+ như trên các mẫu xe ga cao cấp, màu sắc mới hợp xu hướng, cổng sạc tiện lợi, thiết kế phía trước tinh tế, tem xe nổi bật giúp nâng tầm phong cách và tối đa trải nghiệm lái xe cho người sở hữu.', NULL),
('pr006', 'Với tem xe mới, Blade mang một diện mạo đầy mạnh mẽ, khỏe khoắn, tạo nên phong cách thể thao và năng động cho người lái.', NULL),
('pr007', 'Honda Future 125 FI với thiết kế trẻ trung, lịch lãm và hiện đại được bổ sung màu mới, tạo những điểm nhấn ấn tượng, thu hút mọi ánh nhìn. Cùng với vị thế là mẫu xe số cao cấp hàng đầu phân khúc tại Việt Nam, Future 125 FI cho bạn tự tin thể hiện phong cách, phẩm chất của mình trên mọi hành trình.', NULL),
('pr008', 'Thiết kế cổ điển, thanh lịch đậm chất Super CUB\r\nThiết kế hình chữ S tạo ấn tượng hài hòa mềm mại cho tổng thể xe, phối màu thanh lịch cùng các chi tiết tinh tế trong từng đường nét và chất liệu crôm mang đến cảm giác cao cấp về chất lượng.\r\n\r\n\r\nTư thế lái xe thoải mái\r\nTư thế lái thẳng lưng cùng khả năng điều khiển xe cân bằng, yên xe sử dụng lớp đệm Urethane có độ dày cao, tăng tối đa độ êm ái.\r\n\r\n\r\nĐộng cơ nâng cấp bền bỉ\r\nĐộng cơ dung tích 125cc, SOHC, trang bị PGM-FI mang lại khả năng vận hành mạnh mẽ, đạt công suất tối đa 6,79kW và mô men xoắn cực đại 9,98Nm với khả năng tiết kiệm nhiên liệu tối ưu.\r\n\r\n\r\nHệ thống khoá thông minh\r\nChìa khóa thông minh với điểm nhấn logo cánh chim 3D truyền thống được trang bị 3 chức năng: Cảnh báo chống trộm, xác định vị trí xe thông minh và khởi động hệ thống điện.\r\n\r\n\r\nTrang bị đèn LED toàn bộ\r\nHệ thống chiếu sáng trên xe toàn bộ sử dụng bóng LED mang lại hình ảnh hiện đại.\r\n\r\n\r\nPhanh đĩa phía trước\r\nVành xe nhôm đúc 17inch với phanh đĩa phía trước đem đến cảm giác vận hành êm ái cùng khả năng dừng xe hiệu quả.\r\n\r\n\r\nMặt đồng hồ hiện đại\r\nMặt đồng hồ được xếp theo dạng 2 hình tròn đồng tâm, đặt giữa là một vòng tròn crôm với bên trong là màn hình LCD thể hiện các thông số xe.\r\n\r\n', NULL),
('pr009', 'Wave RSX Fi 110 mang diện mạo hoàn toàn mới, với thiết kế thể thao đặc trưng vốn có, nay mạnh mẽ và khỏe khoắn hơn, phù hợp phong cách của các bạn trẻ.', NULL),
('pr010', 'Wave Alpha 110cc phiên bản 2020 trẻ trung và cá tính với thiết kế bộ tem mới, tạo những điểm nhấn ấn tượng, thu hút ánh nhìn, cho bạn tự tin ghi lại dấu ấn cùng bạn bè của mình trên mọi hành trình.', NULL),
('pr011', 'Dòng xe Jupiter Finn mới 2022 được phát triển dựa trên thông điệp truyền thông “Khởi đầu mới cho hành trình yêu thương” hướng tới đối tượng khách hàng là tất cả các gia đình mong muốn sở hữu một sản phẩm có mức giá hợp lý, đáp ứng được nhiều nhu cầu đi lại, dễ dàng di chuyển hằng ngày. Lần đầu tiên được trang bị trên xe Yamaha, hệ thống phanh xe kết hợp (UBS) giúp kiểm soát phanh tốt hơn, tạo sự yên tâm trong mọi hành trình, đặc biệt là các tình huống khẩn cấp. Với dòng xe mới này, Yamaha Motor Việt Nam hy vọng sẽ mang tới một người bạn đồng hành đáng tin cậy cho cả gia đình trên mọi cung đường.', NULL),
('pr012', 'Yamaha Exciter 2022 là mẫu xe côn tay được ưa chuộng nhất tại thị trường Việt Nam với thiết kế mang đậm dấu ấn đặc trưng DNA của Yamaha. Bên cạnh phiên bản Exciter 150 rất được yêu thích từ trước đó, Yamaha Motor Việt Nam vừa ra mắt phiên bản Exciter 155 VVA mới nhất được phát triển như một chiếc \"Tiểu YZF-R1\". Exciter 155 VVA được nâng cấp và thay đổi với nhiều chi tiết hoàn toàn mới dựa trên các công nghệ đang được áp dụng trên siêu xe thể thao YZF-R1, nhưng vẫn đảm bảo được tính ổn định và linh hoạt khi vận hành hằng ngày của 1 chiếc xe thể thao phân khối nhỏ.', NULL),
('pr013', 'Xe Jupiter FI bao gồm phiên bản RC và phiên bản GP, được đánh giá và công nhận là mẫu xe số tiết kiệm xăng nằm trong top đầu Việt Nam với mức tiêu thụ chỉ từ 1,55 lít/100km. Giá xe Jupiter 2022 chỉ từ 29,1 - 30,0 triệu VNĐ, phù hợp với nhiều đối tượng khách hàng khác nhau.', NULL),
('pr014', 'Nhờ trang bị hệ thống phun xăng điện tử FI, xe Sirius FI có mức tiêu thụ nhiên liệu cực kì tiết kiệm chỉ 1,57 lít/100km. Giá bán lẻ đề xuất xe Sirius FI 2022 chỉ từ 20,7 - 23,5 triệu VNĐ.', NULL),
('pr015', 'Yamaha Sirius là mẫu xe số bền bỉ đã có mặt tại thị trường Việt Nam từ hơn 20 năm trước. Cho đến nay, dòng xe này đã được cải tiến đáng kể về thiết kế và động cơ. Giá xe Sirius trong năm 2022 chỉ từ 18,7-21,4 triệu VNĐ cho các phiên bản phanh cơ, phanh đĩa và vành đúc.', NULL),
('pr016', 'Yamaha Grande là mẫu xe tay ga tiết kiệm xăng số 1 Việt Nam với mức tiêu thụ chỉ 1,69 lít/100km, theo số liệu thống kê và phân tích được Cục Đăng kiểm Việt Nam công bố, xác nhận bởi Báo Giao thông. Bên cạnh thiết kế thời trang và thanh lịch, phiên bản Grande Bluecore Hybrid mới còn sở hữu cốp xe siêu rộng 27 lít và được trang bị hàng loạt tính năng hiện đại như trợ lực Hybrid, Smart key, hệ thống Stop & Start System, phanh ABS,... Giá xe Grande 2022 mức giá rất hấp dẫn chỉ từ 45.200.000 đồng.', NULL),
('pr017', 'Yamaha Latte nổi bật với thiết kế sang trọng cùng động cơ Blue Core 125cc cho khả năng tiết kiệm nhiên liệu tối ưu với mức tiêu thụ chỉ 1,8 lít/100km - nằm trong Top đầu xe tay ga tiết kiệm xăng nhất Việt Nam. Đặc biệt, giá bán lẻ đề xuất xe Latte chỉ từ 37,3 triệu VNĐ với hàng loạt trang bị tuyệt vời như SmartKey, cốp xe có thể tích lên đến 37l, nắp bình xăng tiện lợi...', NULL),
('pr018', 'Xe máy Janus Yamaha có thiết kế trẻ trung cùng khả năng vận hành mượt mà với mức giá rất phải chăng. Sở hữu động cơ Blue Core, hệ thống Stop & Start và chức năng One push start, xe Janus có khả năng tiết kiệm nhiên liệu với mức tiêu thụ chỉ 1,87 lít/100km - nằm trong Top đầu xe tay ga tiết kiệm xăng nhất Việt Nam. Giá xe Janus 2022 với mức giá rất hấp dẫn chỉ từ 28.000.000 đồng.', NULL),
('pr019', 'Yamaha NVX là mẫu xe tay ga có thiết kế khỏe khoắn, mang đậm nét thể thao với hiệu suất vận hành mạnh mẽ. Phiên bản mới nhất NVX 155 VVA thế hệ II được trang bị hàng loạt các tính năng hiện đại như: ứng dụng Y-Connect - ứng dụng công nghệ tích hợp trên điện thoại lần đầu tiên được trang bị trên xe tay ga Yamaha tại Việt Nam, động cơ BlueCore 155cc VVA, phanh ABS, khóa thông minh SmartKey, hệ thống ngắt động cơ tạm thời Stop & Start System (SSS), cốp xe rộng lên tới 25 lít,..', NULL),
('pr020', 'Xe máy Freego Yamaha là mẫu xe tay ga thể thao đời mới có mức giá rất hợp lý, được trang bị toàn diện các tính năng như: khóa thông minh Smart Key, phanh ABS, cốp xe rộng 25 lít, tích hợp cộng sạc điện thoại tiện lợi... Giá xe máy Freego 2022 từ 29,4 triệu đồng.', NULL),
('pr021', '“Burgman Street”! - Sự kết hợp hoàn hảo giữa công nghệ tiên tiến và thiết kế kiểu dáng sang trọng sẽ mang đến cho khách hàng niềm vui thú vị khi lái xe. Với tất cả các tính năng cao cấp và hiện đại, Burgman Street tạo ra một loại xe tay ga mới tại Việt Nam. Burgman Street, xe tay ga phong cách châu Âu lịch lãm, sang trọng hoàn toàn mới!', NULL),
('pr022', 'IMPULSE 125 FI – TỐC LỰC DẪN ĐẦU, DÀNH RIÊNG CHO THỊ TRƯỜNG VIỆT NAM\r\nImpulse (im-bơ) là sáng tạo độc đáo của Suzuki, sau nhiều nghiên cứu chuyên sâu thị trường và điều kiện sử dụng xe máy của những người trẻ thành thị tại Việt Nam. Đây là chiếc xe tay ga thể thao cao cấp đầu tiên được Suzuki sản xuất dành riêng cho thị trường Việt Nam.\r\nNgay từ những đường nét thiết kế, cho đến các tính năng của xe, tất cả đều cho thấy những cải tiến vượt bậc của Suzuki, nhằm đưa Impulse 125 FI trở thành tốc lực đưa bạn dẫn đầu thành công.', NULL),
('pr023', 'GSX150 BANDIT - Tự tin cầm lái thoải mái đường dài\r\n\r\nGSX 150 Bandit phiên bản 2020 khoác bộ áo mới Xám mờ thời trang, cá tính và Đen đỏ mạnh mẽ nhưng vẫn giữ kiểu dáng thể thao cùng cảm giác tuyệt vời và tư thế ngồi thoải mái khi điều khiển. Tất cả nhằm đáp ứng nhu cầu đa dạng của khách hàng trẻ yêu thích thể thao, nhưng vẫn mong muốn chiếc xe có tư thế lái thoải mái cho cả người lái và người ngồi sau.\r\n\r\nBANDIT là dòng xe côn tay thể thao lý tưởng cho tất cả khách hàng sử dụng xe trong mọi điều kiện đường sá cũng như nhu cầu đi lại hàng ngày trong thành phố hoặc cho những chuyến đi du lịch đường dài.', NULL),
('pr024', 'GSX-R150 - SỰ LỰA CHỌN TUYỆT VỜI\r\n\r\nGSX-R150 là mẫu xe thể thao hoàn toàn mới và hấp dẫn, có sức mạnh động cơ và khả năng tăng tốc mạnh mẽ nhất trong phân khúc 150cc, nhờ kết hợp hài hòa giữa sức mạnh động cơ và trọng lượng thân xe, cùng với mức tiết kiệm tiêu hao nhiên liệu vượt bậc và khả năng điều khiển linh hoạt. Hơn tất cả, đây là dòng xe Suzuki GSX-R, một chiếc mô tô tuyệt vời mà bất cứ ai cũng có thể tự hào khi sở hữu. Hãy lựa chọn ngay hôm nay.', NULL),
('pr025', 'SATRIA F150 – NHẬP KHẨU CHÍNH HÃNG\r\n\r\nThể thao, mạnh mẽ với thiết kế thân xe khí động học, Satria F150 sẵn sàng cùng bạn chinh phục mọi thử thách trên đường. Tương tự Raider R150, Satria F150 được trang bị động cơ mạnh mẽ, thừa hưởng công nghệ tiên tiến của Suzuki chế tạo cho các dòng xe đua nổi tiếng.\r\n\r\nCông suất tối đa mạnh mẽ kết hợp cùng trọng lượng thân xe tối ưu giúp cho Satria có khả năng tăng tốc nhanh và mạnh mẽ nhất phân khúc xe 150cc.', NULL),
('pr026', '\r\nGSX-S150 - SỰ LỰA CHỌN TUYỆT VỜI\r\n\r\nGSX-S150 là một mẫu xe thể thao đường phố hoàn toàn mới lạ và hấp dẫn. Có khả năng tăng tốc mạnh mẽ và dẫn đầu trong phân khúc 150cc, nhờ kết hợp hài hòa giữa sức mạnh động cơ và trọng lượng thân xe, cùng với mức tiết kiệm tiêu hao nhiên liệu vượt bậc và khả năng điều khiển linh hoạt. Trên tất cả, đó là dòng xe Suzuki GSX-S, một chiếc xe mô tô tuyệt vời mà bất cứ ai cũng có thể tự hào khi sở hữu. Hãy lựa chọn ngay hôm nay!', NULL),
('pr027', 'RAIDER R150 - The KING OF SPEED\r\n\r\nĐược phát triển trên nền tảng công nghệ tiên tiến của Suzuki vốn đã được ứng dụng cho các dòng xe thể thao phân khối lớn, Raider R150 sở hữu công nghệ và tiện ích vượt trội với khối động cơ 150cc, DOHC, 4 thì, 4 van, 6 cấp số, 18,5 mã lực, và làm mát bằng dung dịch cho khả năng vận hành mạnh mẽ và hiệu suất vận hành tối ưu.\r\n\r\nKiểu dáng Hyper Underbone độc đáo kết hợp cùng tem màu nổi bật được lấy cảm hứng từ huyền thoại Suzuki Katana, chiếc xe đua sức bền GSX-R1000 và dòng xe đua MotoGP lừng danh GSX-RR, Raider R150 phiên bản thể thao đặc biệt mang đến hình ảnh năng động, đậm chất thể thao, sẵn sàng là bạn đồng hành cho các tín đồ yêu thích xe côn tay!', NULL),
('pr028', 'MẪU XE 150CC THỂ THAO ĐƯỜNG TRƯỜNG HOÀN TOÀN MỚI\r\n\r\nThiết kế kiểu dáng LỊCH LÃM, THỂ THAO VÀ CỔ ĐIỂN lấy cảm hứng từ dòng xe phân khối lớn INTRUDER M1800R huyền thoại. INTRUDER150 được trang bị động cơ 155cc mạnh mẽ cùng công nghệ tiên tiến SEP (Suzuki Eco Performance), hệ thống chống bó cứng phanh ABS cùng tư thế ngồi lái thoải mái, cảm giác lái thể thao đầy phấn khích là đặc điểm nổi bật của Intruder. Intruder150 hoàn toàn mới, sự lựa chọn tối ưu cho khách hàng.', NULL),
('pr029', 'GZ150-A KHẲNG ĐỊNH BẢN LĨNH\r\nKhó cưỡng với dáng vẽ cực kỳ mạnh mẽ, đậm chất nam tính. Tiết kiệm với hệ thống phun xăng điện tử tiên tiến bậc nhất. Trầm trồ với uy lực vượt bậc của động cơ 150cc thuộc dòng xe Touring đích thực, GZ150-A với thiết kế mạnh mẽ và sức mạnh động cơ vượt trội đã sẵn sàng giúp bạn làm chủ mọi cung đường.\r\nVới GZ150-A, ước mơ khám phá, trải nghiệm và chinh phục những vùng đất lạ của bạn trở nên đơn giản hơn bao giờ hết.', NULL),
('pr030', 'GD110HU - RẠNG NGỜI KHÍ CHẤT\r\n\r\nVới kiểu dáng backbone cổ điển, GD110HU chính là người bạn đồng hành rạng ngời khí chất dành cho bạn.Chiếc xe đáp ứng mọi nhu cầu di chuyển trong thành thị một cách hiệu quả và thân thiện với môi trường nhờ những cải tiến vượt trội bên trong ống xả. Hãy thỏa sức phóng khoáng trên các cung đường thành thị cùng GD110HU.', NULL);

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

--
-- Dumping data for table `product_type`
--

INSERT INTO `product_type` (`tpe_id`, `brd_id`, `tpe_name`, `tpe_parentId`) VALUES
('tpe01', 'br01', 'xe ga', 'tpe01'),
('tpe02', 'br01', 'xe số', 'tpe02'),
('tpe03', 'br02', 'xe ga', 'tpe03'),
('tpe04', 'br02', 'xe số', 'tpe04'),
('tpe05', 'br03', 'xe ga', 'tpe05'),
('tpe06', 'br03', 'xe côn tay', 'tpe06');

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
  `upl_managedBy` varchar(10) DEFAULT NULL,
  `upl_quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
