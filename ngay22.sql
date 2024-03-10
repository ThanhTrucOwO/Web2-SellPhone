-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 10, 2024 at 06:27 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ngay22`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(11) NOT NULL,
  `vaitro_id` int(11) NOT NULL,
  `chinhanh_id` int(11) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created` date NOT NULL,
  `modified` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `vaitro_id`, `chinhanh_id`, `username`, `password`, `fullname`, `email`, `status`, `created`, `modified`) VALUES
(1, 3, 1, 'thongtran', 'e10adc3949ba59abbe56e057f20f883e', 'Trần Văn Thông', 'thongtranr27@gmail.com', 1, '2022-05-02', '2022-05-02'),
(2, 2, 1, 'thanhngan', 'e10adc3949ba59abbe56e057f20f883e', 'Nguyễn Thị Thanh Ngân', 'thanhngan1406@gmail.com', 1, '2022-05-02', '2022-05-15'),
(3, 1, 1, 'phuonguyen', 'e10adc3949ba59abbe56e057f20f883e', 'Nguyễn Phương Uyên', 'phuonguyen1506@gmail.com', 1, '2022-05-13', '2022-05-13'),
(4, 1, 2, 'diemquynh', 'e10adc3949ba59abbe56e057f20f883e', 'Huỳnh Thị Diễm Quỳnh', 'diemquyn0401@gmail.com', 1, '2022-05-13', '2022-05-13'),
(5, 2, 2, 'luanhuynh', 'e10adc3949ba59abbe56e057f20f883e', 'Huỳnh Trần Vũ Luân', 'luanvu@gmail.com', 1, '2022-05-13', '2022-05-13'),
(6, 3, 2, 'lanvy', 'e10adc3949ba59abbe56e057f20f883e', 'Trần Thị Lan Vy', 'lanvy@gmail.com', 1, '2022-05-13', '2022-05-13'),
(7, 2, 3, 'minhkhue', 'e10adc3949ba59abbe56e057f20f883e', 'Trần Thị Minh Khuê', 'minhkhue@gmail.com', 1, '2022-05-13', '2022-05-13'),
(8, 1, 3, 'huongtrang', 'e10adc3949ba59abbe56e057f20f883e', 'Nguyễn Hoàng Hương Trang', 'huongtrang@gmail.com', 1, '2022-05-13', '2022-05-13'),
(9, 3, 3, 'thuydung', 'e10adc3949ba59abbe56e057f20f883e', 'Phạm Thùy Dung', 'thuydung@gmail.com', 1, '2022-05-13', '2022-05-13'),
(10, 1, 1, 'myhanh', 'c56d0e9a7ccec67b4ea131655038d604', 'Nguyễn Thị Mỹ Hạnh', 'myhanh@gmail.com', 1, '2022-05-13', '2022-05-13'),
(11, 4, 1, 'phuongchi', 'e10adc3949ba59abbe56e057f20f883e', 'Nguyễn Phương Chi', 'phuongchi@gmail.com', 1, '2022-05-15', '2022-05-15'),
(12, 5, 1, 'xuantuyet', 'e10adc3949ba59abbe56e057f20f883e', 'Trần Thị Xuân Tuyết', 'xuantuyet@gmail.com', 1, '2022-05-15', '2022-05-15'),
(13, 1, 1, 'mytram', 'e10adc3949ba59abbe56e057f20f883e', 'Đinh Thị Mỹ Trâm', 'mytram123@gmail.com', 1, '2022-05-16', '2022-05-18');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bill`
--

CREATE TABLE `tbl_bill` (
  `bill_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `chinhanh_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_cart`
--

INSERT INTO `tbl_cart` (`cart_id`, `user_id`, `chinhanh_id`, `quantity`) VALUES
(8, 1, 1, 1),
(9, 1, 2, 0),
(10, 1, 3, 0),
(11, 2, 1, 0),
(12, 2, 3, 0),
(13, 2, 2, 0),
(14, 3, 3, 0),
(15, 3, 2, 0),
(16, 3, 1, 0),
(17, 4, 3, 0),
(18, 4, 2, 0),
(19, 4, 1, 7),
(20, 5, 3, 0),
(22, 5, 1, 1),
(23, 5, 2, 0),
(24, 7, 1, 0),
(25, 7, 2, 0),
(26, 7, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart_detail`
--

CREATE TABLE `tbl_cart_detail` (
  `cart_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity` int(255) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_cart_detail`
--

INSERT INTO `tbl_cart_detail` (`cart_id`, `product_id`, `name`, `price`, `quantity`, `total`, `image`) VALUES
(8, 1, 'Samsung Galaxy Z Fold 3', '35880300.00', 1, '35880300.00', 'dt1.jpg'),
(19, 65, 'AirPods 2 Wireless charge Apple MRXJ2', '3385300.00', 7, '23697100.00', 'tn6.jpg'),
(22, 1, 'Samsung Galaxy Z Fold 3', '36990000.00', 1, '36990000.00', 'dt1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created` date NOT NULL,
  `modified` date NOT NULL,
  `class_icon` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `name`, `status`, `created`, `modified`, `class_icon`) VALUES
(1, 'Điện thoại', 1, '2022-05-02', '2022-05-17', 'fa fa-mobile'),
(2, 'Laptop', 1, '2022-05-02', '2022-05-17', 'fa fa-laptop'),
(3, 'Tablet', 1, '2022-05-02', '2022-05-17', 'fa fa-tablet'),
(4, 'Tai nghe', 1, '2022-05-05', '2022-05-17', 'fa fa-headphones'),
(5, 'Đồng hồ', 0, '2022-05-17', '2022-05-18', 'fa fa-tablet');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_chinhanh`
--

CREATE TABLE `tbl_chinhanh` (
  `chinhanh_id` int(11) NOT NULL,
  `tenchinhanh` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_chinhanh`
--

INSERT INTO `tbl_chinhanh` (`chinhanh_id`, `tenchinhanh`) VALUES
(1, 'Chi nhánh Quận Tân Phú'),
(2, 'Chi nhánh Quận 5'),
(3, 'Chi nhánh Quận 12');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_chitietphanquyen`
--

CREATE TABLE `tbl_chitietphanquyen` (
  `vaitro_id` int(11) NOT NULL,
  `phanquyen_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_chitietphanquyen`
--

INSERT INTO `tbl_chitietphanquyen` (`vaitro_id`, `phanquyen_id`) VALUES
(1, 3),
(2, 11),
(2, 12),
(2, 13),
(2, 18),
(3, 3),
(3, 7),
(3, 11),
(3, 12),
(3, 13),
(3, 14),
(3, 15),
(3, 16),
(3, 17),
(3, 18),
(3, 20),
(4, 1),
(4, 2),
(4, 4),
(4, 5),
(4, 6),
(4, 19),
(5, 7),
(5, 8),
(5, 9),
(5, 10);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_chitietsanpham`
--

CREATE TABLE `tbl_chitietsanpham` (
  `product_id` int(11) NOT NULL,
  `chinhanh_id` int(11) NOT NULL,
  `quantity` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_chitietsanpham`
--

INSERT INTO `tbl_chitietsanpham` (`product_id`, `chinhanh_id`, `quantity`) VALUES
(1, 1, 27),
(1, 2, 79),
(1, 3, 17),
(2, 1, 174),
(2, 2, 190),
(2, 3, 130),
(3, 1, 130),
(3, 2, 134),
(3, 3, 73),
(4, 1, 134),
(4, 2, 29),
(4, 3, 70),
(5, 1, 172),
(5, 2, 142),
(5, 3, 99),
(6, 1, 187),
(6, 2, 64),
(6, 3, 131),
(7, 1, 188),
(7, 2, 27),
(7, 3, 10),
(8, 1, 71),
(8, 2, 123),
(8, 3, 87),
(9, 1, 166),
(9, 2, 159),
(9, 3, 100),
(10, 1, 106),
(10, 2, 191),
(10, 3, 53),
(11, 1, 140),
(11, 2, 92),
(11, 3, 1),
(12, 1, 86),
(12, 2, 178),
(12, 3, 79),
(13, 1, 176),
(13, 2, 40),
(13, 3, 51),
(14, 1, 6),
(14, 2, 9),
(14, 3, 93),
(15, 1, 187),
(15, 2, 44),
(15, 3, 101),
(16, 1, 119),
(16, 2, 73),
(16, 3, 91),
(17, 1, 38),
(17, 2, 99),
(17, 3, 149),
(18, 1, 27),
(18, 2, 3),
(18, 3, 48),
(19, 1, 92),
(19, 2, 47),
(19, 3, 109),
(20, 1, 163),
(20, 2, 96),
(20, 3, 84),
(21, 1, 82),
(21, 2, 152),
(21, 3, 115),
(22, 1, 108),
(22, 2, 37),
(22, 3, 168),
(23, 1, 32),
(23, 2, 199),
(23, 3, 24),
(24, 1, 135),
(24, 2, 2),
(24, 3, 55),
(25, 1, 192),
(25, 2, 199),
(25, 3, 93),
(26, 1, 6),
(26, 2, 180),
(26, 3, 170),
(27, 1, 151),
(27, 2, 170),
(27, 3, 166),
(28, 1, 58),
(28, 2, 98),
(28, 3, 139),
(29, 1, 21),
(29, 2, 86),
(29, 3, 52),
(30, 1, 31),
(30, 2, 8),
(30, 3, 118),
(31, 1, 14),
(31, 2, 66),
(31, 3, 99),
(32, 1, 13),
(32, 2, 116),
(32, 3, 193),
(33, 1, 144),
(33, 2, 98),
(33, 3, 46),
(34, 1, 65),
(34, 2, 173),
(34, 3, 97),
(35, 1, 156),
(35, 2, 164),
(35, 3, 130),
(36, 1, 173),
(36, 2, 94),
(36, 3, 39),
(37, 1, 14),
(37, 2, 151),
(37, 3, 141),
(38, 1, 121),
(38, 2, 8),
(38, 3, 116),
(39, 1, 20),
(39, 2, 47),
(39, 3, 126),
(40, 1, 124),
(40, 2, 15),
(40, 3, 61),
(41, 1, 46),
(41, 2, 144),
(41, 3, 27),
(42, 1, 83),
(42, 2, 49),
(42, 3, 198),
(43, 1, 124),
(43, 2, 52),
(43, 3, 17),
(44, 1, 176),
(44, 2, 59),
(44, 3, 188),
(45, 1, 171),
(45, 2, 150),
(45, 3, 153),
(46, 1, 96),
(46, 2, 108),
(46, 3, 180),
(47, 1, 132),
(47, 2, 198),
(47, 3, 172),
(48, 1, 41),
(48, 2, 82),
(48, 3, 55),
(49, 1, 95),
(49, 2, 165),
(49, 3, 18),
(50, 1, 0),
(50, 2, 3),
(50, 3, 53),
(51, 1, 107),
(51, 2, 177),
(51, 3, 198),
(52, 1, 18),
(52, 2, 107),
(52, 3, 148),
(53, 1, 135),
(53, 2, 59),
(53, 3, 123),
(54, 1, 78),
(54, 2, 134),
(54, 3, 4),
(55, 1, 189),
(55, 2, 93),
(55, 3, 109),
(56, 1, 54),
(56, 2, 196),
(56, 3, 167),
(57, 1, 49),
(57, 2, 183),
(57, 3, 169),
(58, 1, 56),
(58, 2, 76),
(58, 3, 29),
(59, 1, 137),
(59, 2, 24),
(59, 3, 80),
(60, 1, 127),
(60, 2, 34),
(60, 3, 18),
(61, 1, 28),
(61, 2, 107),
(61, 3, 86),
(62, 1, 36),
(62, 2, 93),
(62, 3, 1),
(63, 1, 104),
(63, 2, 77),
(63, 3, 18),
(64, 1, 10),
(64, 2, 121),
(64, 3, 166),
(65, 1, 88),
(65, 2, 80),
(65, 3, 150),
(66, 1, 147),
(66, 2, 89),
(66, 3, 126),
(67, 1, 117),
(67, 2, 21),
(67, 3, 103),
(68, 1, 171),
(68, 2, 117),
(68, 3, 84),
(69, 1, 141),
(69, 2, 181),
(69, 3, 30),
(70, 1, 186),
(70, 2, 155),
(70, 3, 58),
(71, 1, 191),
(71, 2, 15),
(71, 3, 47),
(72, 1, 175),
(72, 2, 146),
(72, 3, 116),
(73, 1, 131),
(73, 2, 27),
(73, 3, 32),
(74, 1, 10),
(74, 2, 133),
(74, 3, 64),
(75, 1, 170),
(75, 2, 166),
(75, 3, 83),
(76, 1, 96),
(76, 2, 29),
(76, 3, 192),
(77, 1, 32),
(77, 2, 89),
(77, 3, 111),
(78, 1, 10),
(78, 2, 83),
(78, 3, 27),
(79, 1, 154),
(79, 2, 133),
(79, 3, 105),
(80, 1, 57),
(80, 2, 143),
(80, 3, 135),
(81, 1, 72),
(81, 2, 111),
(81, 3, 34),
(82, 1, 15),
(82, 2, 19),
(82, 3, 27),
(83, 1, 29),
(83, 2, 24),
(83, 3, 25);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_detail`
--

CREATE TABLE `tbl_detail` (
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity` int(255) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_detail`
--

INSERT INTO `tbl_detail` (`order_id`, `product_id`, `name`, `price`, `quantity`, `total`, `image`) VALUES
(35, 1, 'Samsung Galaxy Z Fold 3', '36990000.00', 1, '36990000.00', 'dt1.jpg'),
(42, 33, 'MSI Prestige 15', '28990000.00', 2, '57980000.00', 'lt10.jpg'),
(43, 4, 'iPhone 13 Pro', '28290000.00', 1, '28290000.00', 'dt4.jpg'),
(43, 5, 'Samsung Galaxy S22 5G', '21990000.00', 1, '21990000.00', 'dt5.jpg'),
(43, 14, 'iPhone 13 Pro Max', '31290000.00', 1, '31290000.00', 'dt14.jpg'),
(44, 4, 'iPhone 13 Pro', '28290000.00', 1, '28290000.00', 'dt4.jpg'),
(44, 27, 'HP Envy X360 13', '24990000.00', 1, '24990000.00', 'lt4.jpg'),
(45, 1, 'Samsung Galaxy Z Fold 3', '36990000.00', 1, '36990000.00', 'dt1.jpg'),
(45, 26, 'Lenovo Gaming Legion 5', '36990000.00', 2, '73980000.00', 'lt3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_khuyenmai`
--

CREATE TABLE `tbl_khuyenmai` (
  `khuyenmai_id` int(11) NOT NULL,
  `chinhanh_id` int(11) NOT NULL,
  `tenkhuyenmai` varchar(255) NOT NULL,
  `giatri` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_khuyenmai`
--

INSERT INTO `tbl_khuyenmai` (`khuyenmai_id`, `chinhanh_id`, `tenkhuyenmai`, `giatri`, `status`) VALUES
(1, 1, 'Khuyến mãi nhân dịp giỗ Tổ', 3, 1),
(2, 2, 'Khuyến mãi nhân dịp 30 tháng 4', 20, 1),
(3, 3, 'Khuyến mãi nhân dịp sắp nghỉ hè', 25, 0),
(5, 3, 'Khuyến mãi nhân dịp sắp được về quê', 35, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `chinhanh_id` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `user_id`, `state_id`, `chinhanh_id`, `address`, `total`, `created`) VALUES
(35, 1, 1, 3, '243 An Dương Vương, quận 5', '36990000.00', '2022-05-17'),
(42, 1, 3, 1, '14 tô hiệu tân phú', '57980000.00', '2022-05-18'),
(43, 1, 1, 1, 'Tân Phú', '81570000.00', '2022-05-18'),
(44, 7, 1, 1, 'Thủ đức', '53280000.00', '2022-05-18'),
(45, 2, 1, 3, '23 Mai Xuân Thưởng', '99999999.99', '2024-03-10');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_phanquyen`
--

CREATE TABLE `tbl_phanquyen` (
  `phanquyen_id` int(11) NOT NULL,
  `tenphanquyen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_phanquyen`
--

INSERT INTO `tbl_phanquyen` (`phanquyen_id`, `tenphanquyen`) VALUES
(1, 'Thêm sản phẩm'),
(2, 'Xóa sản phẩm'),
(3, 'Sửa số lượng sản phẩm'),
(4, 'Thêm danh mục sản phẩm'),
(5, 'Sửa danh mục sản phẩm'),
(6, 'Xóa danh mục sản phẩm'),
(7, 'Xem danh sách người dùng'),
(8, 'Thêm người dùng'),
(9, 'Xóa người dùng'),
(10, 'Sửa người dùng'),
(11, 'Xem danh sách đơn hàng'),
(12, 'Xóa đơn hàng'),
(13, 'Sửa đơn hàng'),
(14, 'Xem danh sách nhân viên'),
(15, 'Thêm nhân viên'),
(16, 'Xóa nhân viên'),
(17, 'Sửa nhân viên'),
(18, 'Thống kê đơn hàng'),
(19, 'Sửa thông tin sản phẩm'),
(20, 'Quản lý khuyến mãi');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `detail` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created` date NOT NULL,
  `modified` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `category_id`, `name`, `price`, `detail`, `image`, `status`, `created`, `modified`) VALUES
(1, 1, 'Samsung Galaxy Z Fold 3', '36990000.00', 'Nếu như Galaxy Z Fold2 5G chưa đủ làm bạn thích thú, chắc chắn Galaxy Z Fold3 5G sẽ làm bạn hài lòng. Sản phẩm sẽ là một “cú hit” của Samsung góp phần mang đến những trải nghiệm mới cho người dùng, đặc biệt là hội doanh nhân thích sở hữu một thiết bị sang – xịn – mịn.\r\nKhi chưa mở ra, Galaxy Z Fold3 5G tương tự như một chiếc smartphone nhỏ xinh. Nhưng khi vừa mở ra, thiết bị sẽ trở thành một chiếc tablet với kiểu thiết kế như quyển sách, giúp mở ra và gập lại một cách dễ dàng. Chiếc flagship này không đơn thuần là một công cụ giải trí, mà còn giải quyết được mọi công việc một cách nhanh chóng.\r\nNgoài ngoại hình sang chảnh được hoàn thiện từ hợp kim nhôm Armor Aluminum, đây cũng là thiết bị màn hình gập đầu tiên trên thế giới sở hữu công nghệ kháng nước chuẩn IPX8 ở mức cao nhất. Nên bạn hoàn toàn có thể an tâm sử dụng mà không phải lo ngại về tình trạng hư hỏng đâu nhé!', 'dt1.jpg', 1, '2022-05-02', '2022-05-17'),
(2, 1, 'Xiaomi 12', '19990000.00', 'Xiaomi đang dần khẳng định chỗ đứng của mình trong phân khúc điện thoại flagship bằng việc ra mắt Xiaomi 12 với bộ thông số ấn tượng, máy có một thiết kế gọn gàng, hiệu năng mạnh mẽ, màn hình hiển thị chi tiết cùng khả năng chụp ảnh sắc nét nhờ trang bị ống kính đến từ Sony.\r\nCầm nắm cực kỳ thoải mái\r\nẤn tượng đầu tiên khi mình nhìn Xiaomi 12 là nó quá đẹp, các chi tiết được hoàn thiện một cách tỉ mỉ, cạnh viền được bo cong mềm mại và không thấy xuất hiện chi tiết thừa.', 'dt2.jpg', 1, '2022-05-02', '2022-05-16'),
(3, 1, 'OPPO Find X5 Pro 5G', '32990000.00', 'Dòng Find X đến từ OPPO luôn mang trên mình những công nghệ hàng đầu trong ngành công nghiệp điện thoại. OPPO Find X5 Pro cũng sở hữu những thông số kỹ thuật chuẩn flagship năm 2022, có thể kể đến như vi xử lý Snapdragon 8 Gen 1, màn hình 2K+ sắc nét, camera Sony và sạc nhanh 80 W.\r\nMàn hình chất lượng cao\r\nOPPO trang bị cho Find X5 Pro màn hình AMOLED kích thước 6.7 inch, độ phân giải 2K+ (1440 x 3216 pixel) cho khả năng hiển thị sắc nét từng chi tiết của một bức ảnh. Màn hình còn có khả năng hiển thị ở độ sáng cao lên đến 800 nits, đảm bảo mắt có thể đọc tốt nội dung kể cả khi sử dụng dưới ánh nắng mặt trời.', 'dt3.jpg', 1, '2022-05-02', '2022-05-16'),
(4, 1, 'iPhone 13 Pro', '28290000.00', 'Mỗi lần ra mắt phiên bản mới là mỗi lần iPhone chi...', 'dt4.jpg', 1, '2022-05-02', '2022-05-16'),
(5, 1, 'Samsung Galaxy S22 5G', '21990000.00', 'Samsung Galaxy S22 ra mắt với diện mạo vô cùng tinh tế và trẻ trung, mang trong mình thiết kế phẳng theo xu hướng thịnh hành, màn hình 120 Hz mượt mà, cụm camera AI 50 MP và bộ xử lý đến từ Qualcomm.\r\nThiết kế thu hút mọi ánh nhìn \r\nCảm giác đầu tiên Samsung Galaxy S22 mang lại cho mình khi sử dụng là máy cho cảm giác cầm nắm cực kỳ chắc chắn và đằm tay với thiết kế nhỏ gọn của mình.\r\n\r\nĐây là một chiếc điện thoại vô cùng bền bỉ khi khung viền được cấu thành từ Armor Aluminum cứng cáp, được trang bị kính cường lực Corning Gorilla Glass Victus+ đầu tiên trên thị trường.', 'dt5.jpg', 1, '2022-05-02', '2022-05-16'),
(6, 1, 'Xiaomi 12 Pro', '27990000.00', 'Xiaomi 12 Pro - chiếc điện thoại đến từ nhà Xiaomi sở hữu một thiết kế thanh lịch và vô cùng đẳng cấp, mang trong mình một hiệu năng \"khủng long\" cùng cụm 3 camera 50 MP mang lại khả năng chụp ảnh, quay phim chất lượng hàng đầu phân khúc.\r\nThiết kế tràn viền hiện đại\r\nẤn tượng đầu tiên khi nhìn thấy Xiaomi 12 là vẻ ngoài máy không đi theo xu hướng thiết kế vuông vức hiện nay, được bo cong các viền cạnh ở cả phần mặt lưng và màn hình tạo cảm giác cầm nắm thoải mái, thao tác vuốt từ các cạnh vào rất trơn tru và không cấn tay.', 'dt6.jpg', 1, '2022-05-02', '2022-05-16'),
(7, 1, 'Xiaomi 11 Lite 5G NE', '9490000.00', 'Xiaomi 11 Lite 5G NE một phiên bản có ngoại hình rất giống với Mi 11 Lite được ra mắt trước đây. Chiếc smartphone này của Xiaomi mang trong mình một hiệu năng ổn định, thiết kế sang trọng và màn hình lớn đáp ứng tốt các tác vụ hằng ngày của bạn một cách dễ dàng.\r\nThiết kế mỏng nhẹ, mang đến sự nổi bật cho người dùng\r\nMáy được chế tác nguyên khối, sở hữu một thân hình siêu mỏng nhẹ chỉ có trọng lượng 158 g và mỏng 6.8 mm, tạo cảm giác cầm nắm thoải mái, để vào túi quần hay túi áo cũng không quá nặng nề. ', 'dt7.jpg', 1, '2022-05-02', '2022-05-16'),
(8, 1, 'Xiaomi 11T 5G', '10990000.00', 'Xiaomi 11T đầy nổi bật với thiết kế vô cùng trẻ trung, màn hình AMOLED, bộ 3 camera sắc nét và viên pin lớn đây sẽ là mẫu smartphone của Xiaomi thỏa mãn mọi nhu cầu giải trí, làm việc và là niềm đam mê sáng tạo của bạn. \r\nCamera 108 MP siêu sắc nét, làm chủ mọi khung hình\r\nXiaomi trang bị cho 11T 3 camera sau gồm camera chính độ phân giải 108 MP, camera góc rộng 8 MP 120 độ và camera telemacro 5 MP cùng hệ thống phần cứng tối tân được trang bị bên trong cực kỳ ấn tượng. Chỉ cần giơ máy lên chụp là bạn đã có những bức ảnh sắc nét đáng kinh ngạc, khả năng thu phóng cũng cực tốt, cho bạn chụp được rõ từng chi tiết dù đối tượng ở khá xa.', 'dt8.jpg', 1, '2022-05-02', '2022-05-16'),
(9, 1, 'Xiaomi 11T Pro 5G', '13990000.00', 'Xiaomi 11T Pro 5G 8GB sử dụng con chip Snapdragon 888 mạnh mẽ, camera chính 108 MP, hỗ trợ sạc nhanh 120 W, màn hình rộng với tốc độ làm tươi lên đến 120 Hz, tận hưởng trải nghiệm tuyệt vời trong từng khoảnh khắc.\r\nCấu hình mạnh với chip Snapdragon 888 8 nhân\r\nXiaomi 11T Pro 5G được trang bị bộ vi xử lý Snapdragon 888 được sản xuất trên tiến trình 5 nm, sở hữu hiệu năng đáng gờm khi cải thiện 25% hiệu suất CPU, 35% hiệu suất GPU so với thế hệ trước, điều này cho smartphone khả năng xử lý tác vụ vượt trội, tiêu thụ năng lượng hiệu quả, chơi mượt các game Liên Quân Mobile, PUBG Mobile, Tốc Chiến,... thích hợp để livestream, quay video 4K.', 'dt9.jpg', 1, '2022-05-02', '2022-05-16'),
(10, 1, 'OPPO Reno7 Pro 5G', '18990000.00', 'Ống kính chân dung hàng đầu phía trước và phía sau\r\nMặt sau của Reno7 Pro được trang bị camera chính hàng đầu Sony IMX766 bao gồm camera chính 50 MP, camera góc rộng 8 MP và camera macro 2 MP mang đến chất lượng hình ảnh sáng và rõ nét hơn với vùng cảm quang và kích thước điểm ảnh lớn hơn. Không sợ ánh sáng và bóng râm, dễ dàng chụp những bức ảnh đẹp.\r\n\r\nOPPO Reno7 Pro - Ống kính chân dung hàng đầu phía trước và phía sau\r\n\r\nĐiện thoại có thấu kính mắt mèo siêu nhạy cũng có hiệu suất dải động tuyệt vời. Ngay cả trong những cảnh ngược sáng, nó có thể chụp những bức chân dung sáng, trong suốt mà không cần phơi sáng, đồng thời ghi lại rõ nét vẻ đẹp của bạn và môi trường.\r\n\r\nThiết kế mạnh mẽ, ngoại hình nổi bật\r\nKhung giữa được làm bằng chất liệu hợp kim, có kết cấu chất lượng cao, chắc chắn và có khả năng hạn chế nứt, vỡ. Mặt lưng nhám, không bám dấu vân tay, chống trượt tay cầm giúp bạn sử dụng thoải mái.', 'dt10.jpg', 1, '2022-05-02', '2022-05-16'),
(11, 1, 'OPPO Reno6 5G', '10990000.00', 'Sau khi ra mắt OPPO Reno5 chưa lâu thì OPPO lại cho ra mẫu smartphone mới mang tên OPPO Reno6 với hàng loạt cải tiến mới về ngoại hình bên ngoài lẫn hiệu năng bên trong, mang đến trải nghiệm vượt bật cho người dùng.\r\nChip Dimensity 900 5G hiệu năng ổn định\r\nOPPO Reno6 được trang bị vi xử lý MediaTek Dimensity 900 đáp ứng mọi nhu cầu giải trí hàng ngày, có thể chơi tất cả các game phổ biến hiện nay, tạo ấn tượng rất mạnh mẽ cho người dùng trải nghiệm mượt mà với cấu hình ổn định.\r\n\r\nTrang bị vi xử lý MediaTek Dimensity 900 - OPPO Reno6\r\n\r\nMáy hỗ trợ hệ điều hành Android 11 được cải tiến với nhiều tính năng vượt trội. Đi kèm đó là điện thoại RAM 8 GB cho đa nhiệm thoải mái nhiều ứng dụng cùng một lúc. Bộ nhớ trong 128 GB cho bạn thoải mái tải những tệp nặng và những tựa game yêu thích dễ dàng hơn.', 'dt11.jpg', 1, '2022-05-02', '2022-05-16'),
(12, 1, 'OPPO Reno7 Z 5G ', '10490000.00', 'OPPO đã trình làng mẫu Reno7 Z 5G với thiết kế OPPO Glow độc quyền, camera mang hiệu ứng như máy DSLR chuyên nghiệp cùng viền sáng kép, máy có một cấu hình mạnh mẽ và đạt chứng nhận xếp hạng A về độ mượt.\r\nDễ dàng nổi bật giữa đám đông\r\nĐiện thoại OPPO Reno7 Z 5G có khung viền vát phẳng, vuông vức trendy làm cho máy toát lên nét hiện đại và năng động. Bốn góc được bo cong mềm mại tạo cảm giác thoải mái và nhẹ nhàng (chỉ 173 g). Với thiết kế nguyên khối làm tổng thể máy trở nên cực kỳ chắc chắn, không chỉ đẹp mà còn tăng độ bền.\r\n\r\nThiết kế khung viền phẳng - OPPO Reno7 Z 5G\r\n\r\nĐiểm ấn tượng nhất trên Reno7 Z là dùng thiết kế OPPO Glow độc quyền, mang đến một mặt lưng tinh tế, có thể chuyển màu sắc khi thay đổi góc nhìn. Máy có 2 phiên bản màu: Đen Vô Cực sang trọng, tinh tế và Bạc Đa Sắc nổi bật. Dù lựa chọn phiên bản màu nào thì mặt lưng máy cũng được phủ nhám giúp hạn chế tình trạng bám vân tay và mồ hôi, cho điện thoại sẽ luôn giữ được vẻ “sang chảnh” mọi lúc.', 'dt12.jpg', 1, '2022-05-02', '2022-05-16'),
(13, 1, 'OPPO Reno5 5G', '8490000.00', 'OPPO đã trình làng OPPO Reno5 5G phiên bản kết nối 5G internet siêu nhanh ra thị trường. Chiếc điện thoại với hàng loạt các tính năng nổi bật cùng vẻ ngoài thời thượng giúp tôn lên vẻ sang trọng cho người sở hữu.\r\nTừng đường nét lấp lánh, tỏa sáng\r\nOPPO Reno5 5G có cấu tạo các khung viền xung quanh hoàn toàn bằng kim loại cao cấp, mặt lưng làm từ nhựa. Chiếc điện thoại được thiết kế tổng thể nguyên khối vô cùng rắn chắc và bo cong mềm mại ở 4 góc, mang đến người dùng cảm giác cầm nắm thoải mái nhất.\r\n\r\nOPPO Reno5 5G | Thiết kế nguyên khối, khung viền kim loại cao cấp\r\n\r\nReno5 5G chỉ sở hữu 2 phiên bản màu sắc một cách tối giản cho người dùng lựa chọn là: Màu bạc và đen. Trong đó, lớp vỏ của màu bạc được phủ kết hợp giữa lớp kính Reno Glow và lớp nano Picasus cho sắc ánh kim cương trên thân máy, màu đen thì thanh lịch và đơn giản.', 'dt13.jpg', 1, '2022-05-02', '2022-05-16'),
(14, 1, 'iPhone 13 Pro Max', '31290000.00', 'Điện thoại iPhone 13 Pro Max 128 GB - siêu phẩm được mong chờ nhất ở nửa cuối năm 2021 đến từ Apple. Máy có thiết kế không mấy đột phá khi so với người tiền nhiệm, bên trong đây vẫn là một sản phẩm có màn hình siêu đẹp, tần số quét được nâng cấp lên 120 Hz mượt mà, cảm biến camera có kích thước lớn hơn, cùng hiệu năng mạnh mẽ với sức mạnh đến từ Apple A15 Bionic, sẵn sàng cùng bạn chinh phục mọi thử thách.\r\nThiết kế đẳng cấp hàng đầu\r\niPhone mới kế thừa thiết kế đặc trưng từ iPhone 12 Pro Max khi sở hữu khung viền vuông vức, mặt lưng kính cùng màn hình tai thỏ tràn viền nằm ở phía trước.\r\n\r\nThiết kế vuông vức đặc trưng - iPhone 13 Pro Max 128GB\r\n\r\nVới iPhone 13 Pro Max phần tai thỏ đã được thu gọn lại 20% so với thế hệ trước, không chỉ giải phóng nhiều không gian hiển thị hơn mà còn giúp mặt trước chiếc điện thoại trở nên hấp dẫn hơn mà vẫn đảm bảo được hoạt động của các cảm biến.', 'dt14.jpg', 1, '2022-05-02', '2022-05-16'),
(15, 1, 'iPhone 13 mini', '19290000.00', 'iPhone 13 mini được Apple ra mắt với hàng loạt nâng cấp về cấu hình và các tính năng hữu ích, lại có thiết kế vừa vặn. Chiếc điện thoại này hứa hẹn là một thiết bị hoàn hảo hướng tới những khách hàng thích sự nhỏ gọn nhưng vẫn giữ được sự mạnh mẽ bên trong. \r\nHiệu năng mạnh mẽ hàng đầu\r\niPhone 13 mini được trang bị bộ vi xử lý A15 Bionic sản xuất trên tiến trình 5 nm giúp cải thiện hiệu suất và giảm điện năng tiêu thụ đến 15% so với phiên bản A14 Bionic trước đó, đáp ứng hoàn hảo trong công việc cũng như trong giải trí của người dùng tốt hơn.\r\n\r\nTrang bị bộ vi xử lý A15 Bionic - iPhone 13 mini 128GB\r\n\r\nCPU 6 lõi cho hiệu suất hoạt động tăng 40% cùng với đó là GPU cũng có mức hiệu năng tăng mạnh lên đến 80% so với chipset thế hệ trước. Bạn hoàn toàn có thể chơi game mượt mà, các thao tác chỉnh sửa hình ảnh, cắt ghép video đều vô cùng trơn tru. \r\n\r\nHiệu suất đồ họa ấn tượng - iPhone 13 mini 128GB\r\n\r\nMáy được đi kèm bộ nhớ trong 128 GB khoảng dung lượng lý tưởng cho bạn có thể lưu trữ một cách thoải mái, đảm bảo đủ không gian để có thể sử dụng lâu dài.', 'dt15.jpg', 1, '2022-05-02', '2022-05-16'),
(16, 1, 'iPhone 12 Pro', '26290000.00', 'Điện thoại iPhone 12 Pro 256 GB khi được ra mắt đã có sự thay đổi lớn về thiết kế bên ngoài và chứa đựng một hiệu năng cực khủng bên trong, kèm theo đó là một loạt các công nghệ ấn tượng về camera, kết nối 5G lần đầu được xuất hiện.\r\nGiống iPhone 5 nhưng phóng to với màn hình tràn viền\r\nKhông nằm ngoài dự đoán, iPhone 12 Pro quay lại thiết kế dạng hộp với phần khung viền vuông vức, mạnh mẽ đã từng xuất hiện trên iPhone 5, đồng thời kết thúc kỷ nguyên “bo cong” từ thế hệ iPhone 6.\r\n\r\nThiết kế vuông vức, mạnh mẽ | iPhone 12 Pro\r\n\r\nĐúng như tên gọi Pro, Apple sử dụng chất liệu thép cao cấp cho phần khung viền thay vì nhôm như trên điện thoại iPhone 12 và iPhone 12 Mini, mang đến độ bền vượt trội và diện mạo bóng bẩy sang trọng hơn.\r\n\r\nKhung viền sử dụng thép không gỉ cao cấp | iPhone 12 Pro\r\n\r\nMàn hình OLED sắc nét, bền bỉ với vật liệu gốm Ceramic cao cấp\r\nMáy trang bị tấm nền Super Retina XDR OLED cho hiển thị màu sắc vô cùng chuẩn xác với không gian màu P3, hỗ trợ HDR, True Tone, màu đen sâu tiết kiệm pin hơn, độ sáng cao 800 nits ấn tượng ở mọi góc nhìn.\r\n\r\n', 'dt16.jpg', 1, '2022-05-02', '2022-05-16'),
(17, 1, 'iPhone 12', '18790000.00', 'Apple đã trình diện đến người dùng mẫu điện thoại iPhone 12 128GB với sự tuyên bố về một kỷ nguyên mới của iPhone: iPhone 5G siêu nhanh, nâng cấp về màn hình và hiệu năng hứa hẹn đây sẽ là smartphone cao cấp đáng để mọi người đầu tư sở hữu. \r\nHiệu năng vượt trội, thách thức mọi giới hạn\r\niPhone 12 được trang bị chipset A14 Bionic - bộ xử lý được trang bị lần đầu trên iPad Air 4 vừa được ra mắt cách đây không lâu, mở đầu xu thế chip 5 nm thương mại trên toàn thế giới.\r\n\r\nTrang bị vi xử lý A14 Bionic | iPhone 12\r\n\r\nApple cho biết A14 Bionic sẽ mạnh hơn gần 40% chipset A13 Bionic, trong đó khả năng xử lý đồ họa nhanh hơn 50% cũng như các tác vụ học máy mượt mà hơn 80% khi so sánh với bộ xử lý tiền nhiệm.\r\n\r\nApple cũng đã hỗ trợ kết nối mạng 5G tốc độ load cực nhanh cho mọi trải nghiệm lướt web, xem phim luôn được ổn định và mượt mà hơn.\r\n\r\nHỗ trợ 5G cho tốc độ load cực nhanh | iPhone 12\r\n\r\niPhone 12 cũng được tích hợp thêm chế độ “Smart Data Mode” cho phép máy tự động phát hiện ứng dụng, các thao tác nào cần nhiều băng thông để kích hoạt 5G. Nếu sử dụng các tác vụ thông thường máy sẽ chuyển sang chế độ 4G LTE phù hợp với từng điều kiện sử dụng, giúp tiết kiệm dữ liệu, hạn chế nóng máy và duy trì thời lượng pin sử dụng cho người dùng.', 'dt17.jpg', 1, '2022-05-02', '2022-05-16'),
(18, 1, 'Samsung Galaxy Z Flip3 5G', '18990000.00', 'Trong sự kiện Galaxy Unpacked hồi 11/8, Samsung đã chính thức trình làng mẫu điện thoại màn hình gập thế hệ mới mang tên Galaxy Z Flip3 5G 128GB. Đây là một siêu phẩm với màn hình gập dạng vỏ sò cùng nhiều điểm cải tiến và thông số ấn tượng, sản phẩm chắc chắn sẽ thu hút được rất nhiều sự quan tâm của người dùng, đặc biệt là phái nữ.\r\nThiết kế hiện đại cùng màu sắc thời trang\r\nGalaxy Z Flip 3 sở hữu cơ cấu gập theo chiều dọc xịn sò, tạo ra chiếc smartphone khác biệt so với phần còn lại, có thể đóng lại gọn gàng khi không sử dụng để bạn thuận tiện mang theo bên mình.\r\n\r\nĐiện thoại Samsung Galaxy Z Flip3 5G 128GB | Thiết kế hiện đại cùng nhiều màu sắc thời trang\r\n\r\nKết hợp cùng khung nhôm bo tròn nhẹ nhàng tạo cảm giác cao cấp và tinh tế khi chạm vào, đồng thời bạn không còn phải lo lắng về việc để lại dấu vân tay khi Samsung đã phủ một lớp nhám nhẹ để hoàn thiện cho phần kính này.', 'dt18.jpg', 1, '2022-05-02', '2022-05-16'),
(19, 1, 'Samsung Galaxy S22 Ultra 5G', '30990000.00', 'Galaxy S22 Ultra 5G chiếc smartphone cao cấp nhất trong bộ 3 Galaxy S22 series mà Samsung đã cho ra mắt. Tích hợp bút S Pen hoàn hảo trong thân máy, trang bị vi xử lý mạnh mẽ cho các tác vụ sử dụng vô cùng mượt mà và nổi bật hơn với cụm camera không viền độc đáo mang đậm dấu ấn riêng.\r\nSở hữu một diện mạo đầy nổi bật\r\nGalaxy S22 Ultra 5G được kế thừa form thiết kế từ những dòng Note trước đây của hãng đem đến cho bạn có cảm giác vừa mới lạ vừa hoài niệm. Trọng lượng của máy khoảng 228 g cho cảm giác cầm nắm đầm tay, khi cầm máy trần thì hơi có cảm giác dễ trượt.\r\n\r\nGalaxy S22 Ultra 5G - Thiết kế\r\n\r\nPhần mặt lưng được làm nhám nên hạn chế tốt việc bám dấu vân tay, có thiết kế cũng khá đơn giản nhưng vẫn toát lên vẻ sang trọng và cao cấp của chiếc máy. Cụm camera sau trên Galaxy S22 Ultra 5G được thiết kế trần tạo cảm giác gọn gàng và cũng tạo nên một điểm nhấn độc đáo cho chiếc máy.\r\n\r\nGalaxy S22 Ultra 5G - Mặt lưng\r\n\r\nCó thể nói Galaxy S22 Ultra 5G chính là chiếc máy đầu tiên được tích hợp bút S Pen hoàn hảo trong một thân máy của dòng Galaxy S. Giờ đây, bạn có thể dễ dàng phác thảo, ghi chú lại những ý tưởng vô cùng nhanh chóng với độ trễ đã được cải thiện cho cảm giác viết vẽ vô cùng chân thật.', 'dt19.jpg', 1, '2022-05-02', '2022-05-16'),
(20, 1, 'Samsung Galaxy S21 FE 5G', '13490000.00', 'Điện thoại Samsung Galaxy S21 FE 5G xuất hiện với 1 ngoại hình tinh tế, cụm camera thông minh hoạt động đầy ấn tượng và cấu hình mạnh mẽ từ chip Exynos 2100 nhà Samsung, chắc chắn sẽ thu phục cảm tình của bạn trên từng trải nghiệm.\nThiết kế cao cấp, tinh tế và thời trang\nSamsung Galaxy S21 FE 5G sở hữu khung viền nhôm bóng bẩy, mặt lưng bằng nhựa có độ nhám nhẹ chống bám vân tay và chống trượt tốt, các cạnh viền hoàn thiện bo cong nhẹ tạo nét mềm mại và tinh tế cho tổng thể thiết kế, đồng thời tạo cảm giác cầm nắm chắc tay.\n\nMáy mỏng 7.9 mm và nhẹ chỉ 177 g, dễ dàng sử dụng bằng 1 tay kể cả với các bạn nữ với lòng bàn tay nhỏ, cho thao tác sử dụng thuận tiện, linh hoạt, cũng tiện bảo quản và mang theo.\n\nSang đẹp - Samsung Galaxy S21 FE\n\nHãng điện thoại Samsung mang đến nhiều lựa chọn màu sắc thời trang cho phiên bản smartphone này, từ xanh Olive, tím Pastel nhẹ nhàng đến trắng Flora và đen Graphite tinh tế dễ lựa chọn cho mọi đối tượng, tự tin mix trong mọi phong cách và trang phục.\n\nSang đẹp, nổi bật - Samsung Galaxy S21 FE\n\nMàn hình 6.4 inch cho trải nghiệm đã mắt nhờ các cạnh viền siêu mỏng và camera dạng đục lỗ, tối ưu không gian hiển thị, đặc biệt khi xem video hay chơi game giải trí.', 'dt20.jpg', 1, '2022-05-02', '2022-05-16'),
(23, 2, 'Lenovo Yoga Duet 7 ', '25788000.00', 'Lenovo Yoga Duet 7 13ITL6 i5 (82MA000PVN) là phiên bản laptop với thiết kế 2 trong 1 tiện lợi, cùng màn hình cảm ứng, hiệu năng được tối ưu nhờ CPU Intel thế hệ 11, giúp bạn xử lý nhanh gọn và chính xác mọi tác vụ.\r\nThiết kế mỏng nhẹ, sang chảnh, đậm tính linh hoạt\r\nLaptop Lenovo Yoga Duet 7 được gia công tinh xảo với lớp vỏ kim loại chắc chắn, phủ một lớp màu xám tôn lên vẻ sang trọng. Máy chỉ mỏng 9.19 mm và nhẹ 1.1683 kg giúp bạn có thể linh hoạt để sử dụng ở mọi nơi, dễ dàng mang theo trong hành trang cá nhân thường nhật.\r\n\r\nLenovo Yoga Duet 7 13ITL6 i5 1135G7 (82MA000PVN) - Thiết kế\r\n\r\nLaptop Lenovo Yoga vừa có thể được coi là một chiếc laptop hay một chiếc máy tính bảng do có bàn phím Bluetooth có thể tháo rời. Phần giá đỡ cũng có thể điều chỉnh lên xuống giúp bạn làm việc, phác thảo hoặc ghi chú thoải mái và hiệu quả hơn, ở chế độ máy tính xách tay hoặc ở các góc sử dụng khác nhau.\r\n\r\nLenovo Yoga Duet 7 13ITL6 i5 1135G7 (82MA000PVN) - Bàn phím\r\n\r\nBàn phím có khoảng cách phù hợp cùng độ nảy tốt, hành trình phím sâu, đem lại cảm giác gõ thoải mái. Máy trang bị đèn nền thuận tiện, hỗ trợ bạn làm việc ở cả điều kiện ánh sáng kém mà không lo nhầm lẫn.', 'lt1.jpg', 1, '2022-05-06', '2022-05-16'),
(25, 2, 'MSI Prestige 14', '25090000.00', 'MSI Prestige 14 A11SC i7 (202VN) là phiên bản laptop cao cấp - sang trọng khi được ưu ái trang bị đầy đủ những tính năng ưu việt cùng phong cách thiết kế độc đáo, đáp ứng đầy đủ đa dạng mọi tác vụ từ cơ bản đến nâng cao cho người dùng.\r\n• Giải quyết tốt đa dạng mọi tác vụ từ học tập, văn phòng nhẹ nhàng trên Word, Excel, PowerPoint,... đến thiết kế đồ họa - kỹ thuật chuyên sâu nhờ bộ vi xử lý Intel Core i7 Tiger Lake 1195G7 cùng card đồ họa rời GeForce GTX 1650 Max-Q Design, 4 GB mạnh mẽ.\r\n\r\n• Đa nhiệm ấn tượng hơn bao giờ hết với bộ nhớ RAM 16 GB, cho các thao tác chuyển động layer đồ họa được suôn sẻ hơn mà không bị giật lag. Bên cạnh đó, ổ cứng SSD 512 GB cung cấp dung lượng đủ để người dùng lưu trữ mọi dữ liệu cần thiết với tốc độ đọc ghi nhanh và phản hồi cực sớm.\r\n\r\n• Chiêm ngưỡng vẻ ngoài đẳng cấp với chiếc áo kim loại màu trắng tinh khôi, đường nét vuông vức bắt mắt toát lên sự sang chảnh cho chủ nhân sở hữu nó. Prestige 14 còn sở hữu trọng lượng chỉ vỏn vẹn 1.29 kg tạo nên độ mỏng nhẹ đáng kể, luôn sẵn sàng đồng hành cùng người dùng trên mọi nẻo đường. \r\n\r\n• Nâng tầm trải nghiệm với tính năng bảo mật vân tay cùng mở khóa bằng khuôn mặt, cho phép bạn mở máy hay truy cập các ứng dụng một cách dễ dàng với đa dạng phương thức khác nhau, đồng thời tối ưu độ an toàn cho dữ liệu nhân một cách triệt để nhờ Camera IR hồng ngoại tiên tiến.  \r\n\r\n• Laptop MSI Prestige đạt chứng nhận độ bền chuẩn quân đội MIL STD 810G khi trải qua hàng loạt bài kiểm tra khắt khe từ thời tiết, độ ẩm mốc, bụi bẩn,... đến địa hình rung sốc, những va đập không mong muốn hằng ngày, cho người dùng yên tâm hơn về độ bền khi sử dụng nó.\r\n\r\n• Việc truyền tải dữ liệu đến các thiết bị khác trở nên dễ dàng và nhanh chóng hơn nhờ 1 cổng USB 3.2, 2 cổng Thunderbolt 4 USB-C, Jack tai nghe 3.5 mm và khe đọc thẻ nhớ micro SD được trang bị trên laptop. Bên cạnh đó, máy còn sở hữu đèn nền bàn phím nổi bật hỗ trợ tối đa công việc của bạn ngay cả khi trong môi trường thiếu sáng.', 'lt2.jpg', 1, '2022-05-15', '2022-05-16'),
(26, 2, 'Lenovo Gaming Legion 5', '36990000.00', 'Phong cách thiết kế độc đáo, trẻ trung cùng hiệu năng mạnh mẽ vượt trội của card màn hình NVIDIA RTX hội tụ trong chiếc laptop Lenovo Gaming Legion 5 15ITH6 i7 (82JK00FNVN) hứa hẹn sẽ cân mọi tựa game đình đám cũng như sẵn sàng hỗ trợ bạn xử lý các tác vụ nặng.\r\nHiệu năng mạnh mẽ vượt trội cân mọi tác vụ \r\nĐầu tiên là đến với con game bắn súng quốc dân Battlefield 1, máy vận hành mượt mà với trung bình 75 FPS. Ở đây chúng ta sẽ thấy CPU Intel Core i7 11800H hiệu năng cao chỉ phải hoạt động tầm 42% công suất, card màn hình NVIDIA RTX 3050Ti cũng chỉ hơi mạnh hơn CPU một xíu với 69% công suất.\r\n\r\nLenovo Gaming Legion 5 15ITH6 i7 11800H (82JK00FNVN) - Bắn súng\r\n\r\nChuyển sang tựa game đua xe mô phỏng Forza Horizon đã mang đến cho mình từng khung hình sắc nét, cảnh vật xung quanh trong thế giới game chân thật, chi tiết. Nếu bạn là fan của tựa game thế giới mở, chiếc máy sẽ làm hài lòng bạn với trung bình 90 FPS. Trong đó công suất CPU chạy ở mức 60% và GPU là 96%. Ở tựa game này theo trải nghiệm bản thân, máy cũng không quá nóng, nhiệt độ tản ra đều và không gây khó chịu. Đối với tựa game có mức đồ hoạ cao hơn thì máy vẫn cho ra một mức FPS ổn định và trơn tru.', 'lt3.jpg', 1, '2022-05-16', '2022-05-16'),
(27, 2, 'HP Envy X360 13', '24990000.00', 'là phiên bản laptop cao cấp - sang trọng khi sở hữu nhiều tính năng ưu việt cùng phong cách thiết kế thời trang, thanh lịch, luôn trong tư thế sẵn sàng phục vụ người dùng mọi lúc mọi nơi.\r\n• Ghi điểm trong mắt người dùng với lớp vỏ kim loại màu vàng thời thượng cùng trọng lượng máy mỏng nhẹ chỉ vỏn vẹn 1.33 kg sẵn sàng đồng hành cùng bạn trên mọi chuyến công tác xa.\r\n\r\n• Các công nghệ tiên tiến như 100% sRGB, độ sáng 400 nits, tần số quét 60 Hz được tích hợp trên màn hình 13.3 inch mang đến cho laptop HP những khung hình chất lượng sắc nét, tái tạo màu chuẩn xác.\r\n\r\n• Thao tác máy với đa dạng phương thức và tư thế khác nhau mà không cần sử dụng đến chuột hay bàn phím nhờ bản lệ gập 360 độ cùng màn hình cảm ứng đa điểm.\r\n\r\n• Bộ vi xử lý Intel Core i5 Tiger Lake 1135G7 vận hành tốt đa tác vụ từ nhẹ nhàng đến nâng cao trên Word, Excel, PowerPoint,... kết hợp với card đồ họa Intel Iris Xe Graphics thỏa mãn đam mê sáng tạo của người dùng với các thao tác chỉnh sửa hình ảnh cơ bản trên các phần mềm của nhà Adobe.\r\n\r\n• Đa nhiệm mượt mà nhờ bộ nhớ RAM 8 GB, rút ngắn thời gian khởi động máy và ứng dụng với ổ cứng SSD 512 GB.\r\n\r\n• Đăng nhập nhanh chóng, thanh toán online dễ dàng hơn bao giờ hết nhờ tính năng bảo mật vân tay được tích hợp trên laptop HP Envy. Máy còn trang bị đèn nền phím nổi bật hỗ trợ người dùng làm việc trong môi trường thiếu sáng.\r\n\r\n• Hai bên laptop là các cổng kết nối hiện đại như 2 x USB 3.1, Jack tai nghe 3.5 mm và Thunderbolt 4 USB-C với khả năng vừa sạc nhanh vừa truyền dữ liệu đến các thiết bị ngoại vi.\r\n\r\n• Đáp ứng tối ưu nhu cầu học tập - văn phòng với nhiều tính năng mới mẻ cùng các ứng ứng dụng của nhà Office được cài đặt miễn phí trên máy nhờ hệ điều hành Windows 11.', 'lt4.jpg', 1, '2022-05-16', '2022-05-16'),
(28, 2, 'Asus ZenBook UX325EA', '23490000.00', 'là chiếc laptop có ngoại hình cao cấp với hiệu năng mạnh mẽ đến từ chip Intel thế hệ thứ 11, sẵn sàng đồng hành và đáp ứng hoàn hảo các tác vụ học tập, văn phòng tới nhu cầu giải trí cho bạn.\r\nBắt mắt trong từng đường nét được chế tác tinh tế\r\nLaptop Asus được thiết kế tinh tế đến từng chi tiết với lớp vỏ làm từ kim loại nguyên khối cao cấp, sở hữu trọng lượng 1.14 kg và dày 13.9 mm, dễ dàng nằm gọn trong balo, đồng hành cùng bạn đến bất kỳ đâu, phục vụ bạn trong suốt chuyến đi.\r\n\r\nAsus ZenBook UX325EA i5 1135G7 (KG656W) - Thiết kế\r\n\r\nTrải qua hàng loạt bài kiểm tra về áp suất, độ bền,... Zenbook UX325EA đạt độ bền chuẩn quân đội MIL STD 810G mang lại khả năng bảo vệ thiết bị của bạn trước những va chạm không mong muốn, giúp bạn thoải mái hơn trong những trải nghiệm với chiếc laptop của mình.\r\n\r\nAsus ZenBook UX325EA i5 1135G7 (KG656W) - Độ bền\r\n\r\nLaptop Asus Zenbook còn được thiết kế đèn nền ở bàn phím cùng các phím chức năng ở hàng trên và bên phải hỗ trợ bạn dễ dàng thao tác nhanh như chụp màn hình, truy cập ứng dụng MyAsus,... cho phép bạn làm việc hay giải trí tiện lợi hơn bao giờ hết.', 'lt5.jpg', 1, '2022-05-16', '2022-05-16'),
(29, 2, 'Lenovo IdeaPad Gaming 3', '20990000.00', 'Gam màu đen huyền bí cùng những chi tiết góc cạnh hầm hố làm nên chiếc laptop Lenovo IdeaPad Gaming 3 15IHU6 i5 (82K10178VN) chuẩn laptop gaming với cấu hình mạnh mẽ của chip Intel Gen 11 và card NVIDIA GTX sẽ làm hài lòng nhu cầu chơi game giải trí cho bạn.\r\n• Laptop Lenovo mang trong mình CPU Intel Core i5 11300H mạnh mẽ cùng card màn hình rời NVIDIA GTX 1650 4 GB sẵn sàng cân các tựa game hiện hành: GTA V, CS:GO, LOL,... mượt mà cũng như tác vụ Office, chỉnh sửa thiết kế ảnh Adobe với hiệu suất ổn định.\r\n\r\n• Laptop sở hữu RAM 8 GB mang lại khả năng đa nhiệm tốt các tác vụ nhẹ, chơi game ổn định, khuyến khích bạn nên nâng cấp RAM để máy chạy hết công suất. SSD 512 GB cho không gian lưu trữ vừa đủ, khởi động ứng dụng, máy tính nhanh.\r\n\r\n• Màn hình laptop Lenovo IdeaPad Gaming có kích thước 15.6 inch cùng tần số quét 120 Hz bổ trợ cho trải nghiệm hình ảnh chơi game, hạn chế tình trạng xé hình.\r\n\r\n• Tiện ích tích hợp theo máy gồm TPM 2.0 giúp bảo vệ dữ liệu thông qua mã hoá ổ cứng, công tắc khoá camera để bảo vệ camera khỏi bụi bẩn. Đèn nền bàn phím chyển màu RGB cho phép người dùng cá nhân hoá màu sắc theo sở thích.\r\n\r\n• Đa dạng cổng giao tiếp: USB 3.2, LAN (RJ45), HDMI, USB Type-C,...\r\n\r\n• Công nghệ Nahimic Audio cho chất âm tốt, cảm nhận chơi game đã tai, hoà mình vào thế giới ảo đầy màu sắc.', 'lt6.jpg', 1, '2022-05-16', '2022-05-16'),
(30, 2, 'Lenovo Yoga Duet 7', '35990000.00', 'sở hữu khối lượng cực kỳ mỏng nhẹ chỉ vỏn vẹn 0.799 kg cùng khả năng linh hoạt 2 trong 1 giữa máy tính bảng và máy tính xách tay, hứa hẹn mang đến những trải nghiệm mới mẻ đến hoàn hảo.\r\n• Thiết kế 2 trong 1 linh hoạt, độc đáo với lớp vỏ kim loại màu xám sang trọng cùng trọng lượng chỉ 0.799 kg, luôn sẵn sàng đồng hành cùng những doanh nhân trên mọi chuyến công tác xa. \r\n\r\n• Chiếc laptop cao cấp - sang trọng này được trang bị màn hình cảm ứng giúp các thao tác sử dụng được tiện lợi hơn mà không cần sự trợ giúp của bàn phím hay chuột.\r\n\r\n• Mở máy hay thanh toán online nhanh chóng bằng chính gương mặt của mình nhờ tính năng mở khóa khuôn mặt hiện đại. Chip TPM 2.0 cùng công tắc khóa camera bảo đảm cho dữ liệu cá nhân luôn được an toàn.\r\n\r\n• Laptop cân mọi tác vụ học tập, làm việc từ nhẹ nhàng trên các phần mềm của Office đến chỉnh sửa hình ảnh, đồ họa hay chơi các tựa game đình đám nhờ bộ vi xử lý Intel Core i7 1165G7 kết hợp cùng card đồ họa Intel Iris Xe Graphics.  \r\n\r\n• Laptop Lenovo mang đến khả năng đa nhiệm đáng kinh ngạc khi sở hữu bộ nhớ RAM 16 GB đồng thời gia tăng tốc độ đọc ghi vượt bậc với ổ cứng SSD 1 TB.   \r\n\r\n• Kích thước màn hình 13 inch có độ phân giải WQHD (2160 x 1350) cùng công nghệ màn hình Gorilla 3 cho khả năng chống trầy xước và gia tăng độ bền lên đến 50%.\r\n\r\n• Sự kết hợp đình đám giữa công nghệ Smart AMP và hệ thống vòm Dolby Audio giúp laptop Lenovo Yoga tạo nên một không gian giải trí cực chất với chất lượng âm thanh hoàn mỹ, sống động.', 'lt7.jpg', 1, '2022-05-16', '2022-05-16'),
(31, 2, 'Lenovo Ideapad 5 Pro', '28490000.00', 'Lenovo mang đến một luồng gió mới với phiên bản laptop cao cấp - sang trọng đến từ Ideapad 5 Pro 14ITL6 i7 (82L30093VN) khi sở hữu phong cách thiết kế tao nhã, thời thượng cùng những thông số kỹ thuật đáng gờm, đáp ứng đầy đủ mọi nhu cầu thiết yếu của người dùng từ cơ bản đến nâng cao.\r\nTrẻ trung, năng động cùng tính linh hoạt cao\r\nXuất hiện đầy lịch lãm với lớp vỏ kim loại bền chắc và gam màu thời thượng, Lenovo Ideapad phù hợp với mọi đối tượng người dùng và làm cho chủ nhân nó trở nên nổi bật hơn giữa chốn đông người với những đường nét máy được bo tròn một cách tinh tế, sắc sảo. Với xu hướng di động cao, Ideapad sở hữu trọng lượng chỉ vỏn vẹn 1.41 kg luôn sẵn sàng đồng hành cùng người dùng trên mọi chuyến công tác xa. \r\n\r\nTiết diện phím được thiết kế rộng rãi giúp người dùng nhập liệu chính xác từng vị trí mà không bị nhầm lẫn giữa những phím khác, kết hợp với hành trình sâu và độ nảy ổn định mang đến trải nghiệm gõ máy êm tay với tốc độ nhanh chóng mà không sợ ảnh hưởng đến những người xung quanh. Máy còn được trang bị đèn nền tối ưu năng suất làm việc cho người dùng khi ở môi trường thiếu sáng. \r\n\r\nTính năng nhận diện gương mặt được trang bị trên laptop Lenovo tích hợp với Camera IR hồng ngoại cho phép bạn mở khóa máy và các ứng dụng dễ dàng hơn bao giờ hết bằng chính khuôn mặt của mình ngay cả khi đang ở trong những nơi tối tăm, đồng thời bảo vệ cho dữ liệu cá nhân luôn được an toàn tuyệt đối, hạn chế sự xâm nhập từ các tin tặc muốn lấy thông tin thông qua camera. \r\n\r\nHệ thống bảo mật được gia tăng một cách tối ưu để ngăn chặn các virus hay hacker xâm hại nhờ con chip TPM 2.0 tiên tiến, giúp bạn bảo vệ nguồn thông tin cá nhân một cách triệt để dù đối phương có thể dò được mật khẩu của bạn. Bên cạnh đó còn hỗ trợ nâng cấp lên Windows 11 cho phép bạn thoải mái sử dụng thêm nhiều tiện ích khác nhau với giao diện được thiết kế hiện đại hơn.  ', 'lt8.jpg', 1, '2022-05-16', '2022-05-16'),
(32, 2, 'MSI Katana GF76', '33490000.00', 'Mang vẻ ngoài cơ động cùng cấu hình mạnh mẽ, laptop MSI Katana GF76 11UE i7 11800H (450VN) đẩy nhanh quá trình xử lý mọi tác vụ đồ hoạ - kỹ thuật hay sẵn sàng đồng hành cùng bạn chiến mọi thể loại game đầy kịch tính.\r\n• Laptop MSI phát huy hiệu suất tối ưu trong xử lý công việc hay thoải mái chơi mọi tựa game nhờ CPU Intel Core i7 11800H và card rời GeForce RTX 3060 6 GB.\r\n\r\n• RAM 16 GB đáp ứng hoàn hảo mọi tác vụ đa nhiệm. SSD 512 GB cung cấp bộ nhớ lưu trữ đủ dùng, rút ngắn thời gian phản hồi, khởi động máy.\r\n\r\n• Màn hình 17.3 inch trên laptop MSI Katana cho không gian hiển thị rộng rãi, độ phủ màu 100% sRGB mang lại màu sắc sống động, chuẩn xác.\r\n\r\n• Chiếc laptop đồ họa - kỹ thuật này sở hữu tần số quét 144 Hz tái hiện mượt mà mọi pha hành động kịch tính, hạn chế giật, xé hình.\r\n\r\n• Laptop trang bị chuẩn Wi-Fi 6 (802.11ax) tân tiến nhất hỗ trợ xem mượt mà cả video 4K.\r\n\r\n• Đa dạng các cổng kết nối như USB 3.2, HDMI, LAN, USB Type-C,...', 'lt9.jpg', 1, '2022-05-16', '2022-05-16'),
(33, 2, 'MSI Prestige 15', '28990000.00', 'Trải nghiệm sự đẳng cấp đến từ MSI Prestige 15 A11SC i7 (052VN), một phiên bản laptop cao cấp - sang trọng của nhà MSI khi sở hữu lối thiết kế phong cách, thời thượng, mang đậm tính thời trang cùng sức mạnh bộc phá đáng kinh ngạc, sẽ là một cộng sự lý tưởng trên mọi chiến trường.\r\nSẵn sàng tác chiến mọi mặt trận với hiệu năng tối ưu\r\nLuôn trong tư thế sẵn sàng cùng người dùng chinh phục mọi thử thách trước các con game đầy kịch tính thịnh hành hiện nay như LOL, Fifa Online 4, Cyberpunk 2077, CS:GO,... nhờ cấu hình vượt trội đến từ con chip Intel Core i7 Tiger Lake 1185G7 với 4 nhân 8 luồng mạnh mẽ, cùng độ ép xung lên đến 4.8 GHz Turbo Boost, giải quyết nhanh gọn mọi công việc từ cơ bản như Word, Excel, PowerPoint,... đến các tác vụ nặng như thiết kế đồ họa, dựng video,...\r\n\r\nNâng tầm đa nhiệm mượt mà hơn bao giờ hết với bộ nhớ RAM 16 GB chuẩn DDR4 2 khe (1 khe 8 GB + 1 khe 8 GB) với tốc độ Bus RAM 3200 MHz cùng khả năng nâng cấp tối đa 64 GB cho phép người dùng tải hàng loạt ứng dụng bổ ích về máy mà không sợ “ngốn RAM” với chuyển động trơn tru giữa các cửa sổ trình duyệt được mở cùng lúc, hạn chế tối đa tình trạng lag giật, tối ưu năng suất làm việc cho người dùng.\r\n\r\nMSI Prestige 15 A11SC i7 1185G7 (052VN) - Cấu hình\r\n\r\nCháy bỏng đam mê sáng tạo hơn bao giờ hết với card đồ họa rời NVIDIA GeForce GTX 1650 Max-Q 4 GB, hỗ trợ triệt để mọi thao tác của người dùng từ các hành động trong game đến khả năng thiết kế đồ họa - kỹ thuật, chỉnh sửa hình ảnh kết xuất 2D 3D chất lượng cao, render video,... trên các ứng dụng của nhà Adobe như Photoshop, Illustrator, Premiere,... một cách chuyên nghiệp. ', 'lt10.jpg', 1, '2022-05-16', '2022-05-16'),
(34, 2, 'MSI Modern 14', '20990000.00', 'MSI Modern 14 B11MOU i7 (847VN) là một chiếc laptop học tập - văn phòng ở mức giá tầm trung nhưng sở hữu sức mạnh hiệu năng vượt trội đến từ con chip Intel thế hệ 11 hiện đại cùng vẻ ngoài sang trọng, cao cấp, hứa hẹn đáp ứng tốt cho công việc cũng như giải trí hoàn hảo.\r\nCấu hình mạnh mẽ, đa nhiệm mượt mà mọi tác vụ\r\nBộ CPU Intel Core i7 Tiger Lake 1195G7 cấu trúc 4 nhân 8 luồng mang lại tốc độ xung nhịp trung bình 2.90 GHz và đạt tối đa 5.0 GHz nhờ công nghệ Turbo Boost, kết hợp cùng bộ nhớ đệm 12 MB cho khả năng giải quyết tốt mọi tác vụ học tập, văn phòng từ cơ bản đến phức tạp trên các công cụ Word, Excel, PowerPoint, Note,... và khả năng thiết kế đồ hoạ, sáng tạo nội dung cũng ấn tượng không kém.\r\n\r\nBên cạnh đó, card đồ họa tích hợp Intel Iris Xe Graphics​ thỏa mãn đam mê sáng tạo của bạn với các phần mềm chỉnh sửa hình ảnh 2D, 3D, render video,... như Photoshop, AI, Figma, Pr,... đồng thời hỗ trợ chuyển động hình ảnh hiển thị mượt mà hơn, hạn chế tối đa việc bị nhòe hình.\r\n\r\nBộ nhớ RAM 8 GB chuẩn DDR4 2 khe (1 khe 8 GB + 1 khe rời) tốc độ Bus RAM 3200 MHz đa nhiệm mượt mà, nâng cao năng suất xử lý công việc, bạn hoàn toàn có thể vừa mở các ứng dụng làm việc vừa lướt web cùng lúc nghe nhạc thư giãn mà vẫn không lo bị giật lag, đơ máy. Bên cạnh đó còn hỗ trợ nâng cấp tối đa 64 GB đáp ứng tối ưu nhu cầu trải nghiệm của bạn.\r\n\r\nMSI Modern 14 B11MOU i7 1195G7 (847VN) - Cấu hình\r\n\r\nỔ cứng SSD 512 GB NVMe PCIe có thể tháo ra, lắp thanh khác tối đa 2 TB, mang đến dung lượng vừa đủ để bạn tải các tệp tài liệu hữu ích về máy với tốc độ phản hồi nhanh, rút ngắn thời gian khởi động máy và ứng dụng đồng thời tiết kiệm điện năng hơn các thế hệ tiền nhiệm.', 'lt11.jpg', 1, '2022-05-16', '2022-05-16'),
(35, 2, 'MSI Gaming GF65', '32490000.00', 'Laptop MSI GF65 10UE i7 (228VN) sở hữu thiết kế đẳng cấp cùng hiệu năng mạnh mẽ, đặc biệt hiệu suất chơi game được nâng cấp đáng kể mang đến cho bạn những giờ phút giải trí bất tận.\r\nSức mạnh nổi bật nhờ công nghệ tiên tiến\r\nLaptop được trang bị bộ vi xử lý Intel Core i7 Comet Lake với 6 nhân 12 luồng có tốc độ đạt tối đa đến 5.0 GHz nhờ Turbo Boost cho hiệu suất tăng 15% so với các thế hệ tiền nhiệm, đem đến cho bạn không gian giải trí vô cùng độc đáo với mọi thể loại game đầy kịch tính như PUBG, LOL,... hay xử lý mượt mà mọi tác vụ đồ họa.\r\n\r\nĐa nhiệm hơn cùng RAM 16 GB loại DDR4 với tốc độ bus RAM là 3200 MHz cho phép sử dụng tốt nhiều ứng dụng cùng lúc, vừa soạn thảo văn bản, vừa chỉnh sửa hình ảnh, video một cách chuyên nghiệp, trơn tru, nâng cao năng suất công việc cho người dùng. Đặc biệt, máy còn được hỗ trợ nâng cấp RAM đến 64 GB, đáp ứng tối đa mọi nhu cầu của bạn.\r\n\r\nMSI GF65 10UE i7 10750H (228VN) - Cấu hình\r\n\r\nNhờ sở hữu card rời NVIDIA GeForce RTX 3060 Max-Q, 6 GB, máy mang một hiệu năng vượt trội thoả sức sáng tạo với niềm đam mê thiết kế, render video, thiết kế 2D hiệu quả trên các ứng dụng nhà Adobe như Photoshop, AI,... Không chỉ vậy, máy còn mang đến cho bạn một hiệu suất nhanh, giảm độ trễ khi chiến các tựa game hấp dẫn Cyberpunk 2077, Valorant, CS:GO,...', 'lt12.jpg', 1, '2022-05-16', '2022-05-16'),
(36, 2, 'HP Gaming VICTUS 16', '27990000.00', 'Dòng Gaming Victus là một phiên bản lột xác hoàn toàn từ thiết kế đến hiệu năng của nhà HP. Chỉ với một mức giá tầm trung là bạn có thể sở hữu ngay chiếc laptop HP Gaming VICTUS 16 e0170AX R7 (4R0U7PA) chinh phục mọi tác vụ.\r\nDiện mạo ấn tượng, mang đậm chất thể thao\r\nPhiên bản HP Victus mang một thiết kế mà bạn tối giản nhưng cũng khi kém phần mạnh mẽ nhờ kết hợp với những đường nét góc cạnh tạo nên một tổng thể hiện đại, bắt mắt mà bạn không thể tìm thấy hay nhầm lẫn với bất kỳ dòng laptop gaming nào.\r\n\r\nĐiểm nhấn của chiếc laptop này là logo Victus sáng bóng cùng chữ “Victus” được khắc song song khiến cho máy trở nên tinh tế, thu hút người dùng. Bởi vì là chiếc laptop gaming nên máy có trọng lượng khá nặng khoảng 2.46 kg, độ dày 23.5 mm, tuy nhiên bạn vẫn có thể bỏ vào balo và chiến game ở khắp mọi nơi.\r\n\r\nHP Gaming VICTUS 16 e0170AX R7 5800H (4R0U7PA) - Thiết kế\r\n\r\nThật ấn tượng với khe thoát nhiệt dài và rộng được đặt ngay cạnh trước mặt lưng của máy giúp máy luôn mát mẻ, hoạt động ổn định khi sử dụng với các tác vụ nặng nhờ khe tản nhiệt lớn, lượng nhiệt thoát ra nhiều hơn, nhanh hơn, ngăn chặn tình trạng nóng bàn phím hay chỗ kê tay khi làm việc.', 'lt13.jpg', 1, '2022-05-16', '2022-05-16'),
(37, 2, 'HP Pavilion 15', '22990000.00', 'Mang trên mình phong cách hiện đại, thanh lịch cùng hiệu năng vượt trội đến từ con chip Intel Gen 11 tân tiến, HP Pavilion 15 eg0504TU i7 (46M00PA) sẽ đáp ứng tốt các tác vụ học tập, làm việc từ cơ bản đến đồ họa phức tạp cũng như xem phim, chơi game giải trí nhẹ nhàng.\r\nCấu hình mạnh mẽ, cân mọi tác vụ văn phòng\r\nHiệu năng vượt trội với xung nhịp trung bình 2.80 GHz, đạt cao nhất lên đến Turbo Boost 4.7 GHz đến từ con chip Intel Core i7 Tiger Lake 1165G7 có cấu trúc 4 nhân 8 luồng, sản xuất trên tiến trình 10 nm SuperFin kết hợp cùng bộ nhớ đệm 12 MB giúp xử lý trơn tru từ các công việc văn phòng trên Word, Excel, PowerPoint,... đến các ứng dụng thiết kế đồ họa như Photoshop, Ai, Figma, Pr,... đồng thời tiết kiệm điện năng hơn so với thế hệ trước.\r\n\r\nĐi đôi với bộ vi xử lý hiện đại trên là card đồ họa Intel Iris Xe Graphics tích hợp dựa trên kiến trúc Gen 12, năng suất đồ họa được tối ưu hơn, giúp dễ dàng thiết kế, chỉnh sửa hình ảnh 2D, 3D đơn giản đến xây dựng những tệp phức tạp cùng với khả năng xuất tệp 4K nhanh chóng.\r\n\r\nBộ nhớ RAM 8 GB loại DDR4 2 khe (1 khe 4 GB + 1 khe 4 GB) đa nhiệm mượt mà cùng lúc nhiều tác vụ, vừa học tập, làm việc trên phần mềm Office 365 vừa lướt web tìm kiếm thông tin, xem tin tức và nghe nhạc giải trí mà không lo đơ, đứng máy với tốc độ Bus RAM lên đến 3200 MHz. Để trải nghiệm tối ưu hơn, sử dụng máy mượt hơn nữa bạn có thể nâng cấp RAM đến 32 GB.', 'lt14.jpg', 1, '2022-05-16', '2022-05-16'),
(38, 2, 'HP Pavilion x360', '23690000.00', 'Một sản phẩm đến từ nhà HP mang trong mình dòng chip thế hệ 11 mạnh mẽ, thiết kế độc đáo, sang trọng - cao cấp với màn hình gập 360 độ tích hợp cảm ứng. Laptop HP Pavilion x360 14 dy0075TU i7 1165G7 (46L93PA) sẽ đem đến sự hài lòng cho người dùng có nhu cầu học tập - văn phòng, thiết kế đồ họa,...\r\n• Được trang bị CPU Intel Core i7 1165G7 cùng card tích hợp Intel Iris Xe Graphics cung cấp hiệu năng vượt trội xử lý nhanh chóng các tác vụ hằng ngày như Word, Excel, PowerPoint,... hay thiết kế, chỉnh sửa ảnh trên các phần mềm Adobe.\r\n\r\n• RAM 8 GB đa nhiệm mượt mà nhiều tác vụ cùng lúc, hạn chế tình trạng giật lag. Kèm với đó là bộ nhớ trong SSD 512 GB cho không gian lưu trữ đủ dùng, hỗ trợ truy xuất ứng dụng nhanh chóng.\r\n\r\n• Bản lề gập 360 độ cho phép sử dụng laptop như một chiếc máy tính bảng cỡ lớn, tích hợp cảm ứng đa điểm trên màn hình giúp bạn thoải mái sáng tạo, giải trí linh hoạt trong mọi tư thế.\r\n\r\n• Màn hình 14 inch viền mỏng, độ phân giải Full HD (1920 x 1080) được trang bị tấm nền IPS mang lại cho bạn góc nhìn rộng lên đến 178 độ mà không bị giảm chất lượng hình ảnh.\r\n\r\n• Được chế tác từ vỏ nhựa cứng cáp cùng chiếu nghỉ tay kim loại cho trọng lượng 1.525 kg, dễ dàng cất gọn trong balo mang theo bên mình.\r\n\r\n• Laptop HP Pavilion được tích hợp công nghệ âm thanh Bang & Olufsen, HP Audio Boost đem đến trải nghiệm nghe nhạc đã hơn, lọc tiếng ồn tốt hơn.\r\n\r\n• Các cổng kết nối trên laptop HP đáp ứng nhu cầu kết nối với thiết bị ngoại vi tiện lợi như: 2 x SuperSpeed USB A, HDMI, USB Type-C (Power Delivery and DisplayPort). Tính năng bảo mật vân tay giúp dữ liệu trên máy được bảo vệ an toàn hơn.', 'lt15.jpg', 1, '2022-05-16', '2022-05-16'),
(39, 2, 'HP EliteBook X360', '46090000.00', 'Đẳng cấp và ấn tượng hơn bao giờ hết cùng laptop HP EliteBook X360 1040 G8 i7 (3G1H4PA) với thiết kế sang trọng, bản lề gập xoay 360 độ cùng khả năng vận hành và xử lý mọi tác vụ mạnh mẽ mang đến những trải nghiệm trọn vẹn, khó quên cho người dùng.\r\nTính năng đặc biệt tạo nên nét riêng độc đáo\r\nHP EliteBook sở hữu các cạnh bo viền mềm mại cùng bản lề gập xoay linh hoạt 360 độ cho phép bạn sử dụng laptop thuận tiện trong việc chia sẻ thông tin với người đối diện mà không phải xoay chuyển hướng rườm rà.\r\n\r\nHP EliteBook X360 1040 G8 i7 1165G7 (3G1H4PA) - Bản lề 360 độ\r\n\r\nBiến đổi thành chiếc máy tính bảng nhanh chóng cùng màn hình cảm ứng và bút đi kèm, cho người dùng thoải mái sử dụng trong mọi tư thế, thỏa sức sáng tạo trong công việc.\r\n\r\nHP EliteBook X360 1040 G8 i7 1165G7 (3G1H4PA) - Màn hình ảm ứng\r\n\r\nĐặc biệt, HP EliteBook X360 sở hữu màn hình chống nhìn trộm nhờ công nghệ HP Sure View đảm bảo an toàn cho thông tin của bạn khi làm việc nơi công cộng như trường học, trên máy bay,...', 'lt16.jpg', 1, '2022-05-16', '2022-05-16'),
(40, 2, 'Asus ROG Strix Gaming ', '22990000.00', 'là một trợ thủ đắc lực cho mọi game thủ chuyên nghiệp với phong cách thiết kế vô cùng độc đáo, ấn tượng chuẩn gaming cùng bộ cấu hình đầy mạnh mẽ.\r\n• Bộ vi xử lý AMD Ryzen 7 4800H cùng card rời NVIDIA GeForce GTX 1650 4 GB đáp ứng mọi nhu cầu của người dùng từ học tập, game giải trí đến thiết kế đồ hoạ, render video,...\r\n\r\n• Chuyển động mượt mà, giảm độ trễ hình ảnh nhờ tần số quét 144 Hz. Màn hình chống chói Anti Glare bảo vệ mắt cho người dùng trước những nơi có cường độ ánh sáng mạnh.\r\n\r\n• Kích thước màn hình 15.6 inch trên laptop Asus cùng tấm nền IPS hiện đại, cung cấp góc nhìn rộng lên đến 178 độ.\r\n\r\n• Laptop gaming có trọng lượng 2.1 kg từ lớp vỏ nhựa cứng cáp cho khả năng tản nhiệt tốt cùng nắp lưng kim loại bền bỉ.\r\n\r\n• Ổ cứng SSD 512 GB trang bị trên laptop Asus ROG cho khả năng lưu trữ đủ dùng, truy xuất dữ liệu nhanh. RAM 8 GB hỗ trợ đa nhiệm mượt mà.\r\n\r\n• Bàn phím được chế tác đặc sắc với cụm phím WASD cách điệu cùng đèn chuyển màu RGB nổi bật.\r\n\r\n• Công nghệ Dolby Atmos cho âm thanh sống động từ mọi hướng, lấp đầy không gian.\r\n\r\n• Laptop được trang bị đa dạng các cổng kết nối như 3 x Type-A USB 3.2 Gen 1, HDMI, LAN (RJ45) và USB Type-C hỗ trợ truyền tải và liên kết đến các thiết bị ngoại vi khác.', 'lt17.jpg', 1, '2022-05-16', '2022-05-16'),
(41, 2, 'Asus ZenBook UX482EA', '32990000.00', 'sở hữu thiết kế thời thượng cùng hiệu năng mạnh mẽ, xứng danh bạn đồng hành lý tưởng trên chặng đường sáng tạo của người dùng.\r\n• Laptop Asus sở hữu trọng lượng 1.62 kg và dày 17.3 mm, đạt độ bền chuẩn quân đội MIL STD 810H, được thiết kế tinh tế với lớp vỏ kim loại nguyên khối cao cấp, dễ dàng nằm gọn trong balo phục vụ bạn trong suốt chuyến đi.\r\n\r\n• Laptop Asus Zenbook còn được thiết kế đèn nền đơn sắc ở bàn phím cùng ScreenPad Plus 12.65 inch tân tiến, mang đến sự thuận tiện hơn bao giờ hết.\r\n\r\n• Truy cập vào thiết bị nhanh chóng nhờ Camera IR sở hữu tính năng mở khóa khuôn mặt, vừa đảm bảo an toàn cho dữ liệu cá nhân, vừa tiết kiệm tối đa thời gian mở máy.\r\n\r\n• Laptop được trang bị các cổng kết nối USB 3.2, 2 x Thunderbolt 4 USB-C, HDMI và khe cắm Micro SD cho phép truyền xuất dữ liệu dễ dàng hơn.\r\n\r\n• Bộ vi xử lý Intel Core i5 Tiger Lake 1135G7 với card đồ họa tích hợp Intel Iris Xe Graphics, vừa hỗ trợ bạn xử lý tốt các công việc văn phòng, vừa cho bạn thỏa sức sáng tạo cùng các phần mềm thiết kế đồ họa. \r\n\r\n• Phiên bản laptop mỏng nhẹ được trang bị RAM 8 GB cùng ổ cứng SSD 512 GB hỗ trợ nâng cao năng suất của người dùng.\r\n\r\n• Hệ điều hành Windows 11 Home SL mang đến giao diện dễ sử dụng cùng kho ứng dụng rộng lớn.\r\n\r\n• Màn hình 14 inch viền mỏng sở hữu các công nghệ tiên tiến như 100% sRGB, chống chói Anti Glare, LED Backlit và tấm nền IPS cho trải nghiệm hình ảnh trọn vẹn hơn ngay cả trong điều kiện ánh sáng cao nhờ độ sáng 400 nits.\r\n\r\n• Màn hình cảm ứng hỗ trợ tối ưu hơn cho mọi nhu cầu từ người dùng, thao tác mọi công việc đơn giản hơn.\r\n\r\n• Âm thanh to rõ, chất lượng được chứng nhận bởi Audio by Harman/Kardon.', 'lt18.jpg', 1, '2022-05-16', '2022-05-16'),
(42, 2, 'Asus VivoBook Pro 15', '27590000.00', 'Là chiếc laptop mang diện mạo hiện đại, năng động với cấu hình mạnh mẽ, laptop Asus VivoBook Pro 15 OLED M3500QC R5 5600H (L1388W) sẵn sàng đồng hành cùng bạn trong mọi hành trình.\r\n• Laptop Asus được trang bị CPU AMD Ryzen 5 5600H kết hợp card rời NVIDIA RTX 3050 4 GB cho hiệu năng mạnh mẽ xử lý nhanh chóng mọi công việc từ đồ hoạ, kỹ thuật đến giải trí với những trận game đỉnh cao.\r\n\r\n• RAM 16 GB đa nhiệm siêu mượt mà mọi tác vụ. SSD 512 GB cho không gian lưu trữ đủ dùng, rút ngắn thời gian phản hồi, truy xuất dữ liệu.\r\n\r\n• Màn hình OLED 15.6 inch với độ sáng 600 nits mang lại chất lượng hình ảnh sắc nét, độ tương phản cao và màu đen cực sâu. Công nghệ 100% DCI-P3 cùng 1.07 tỷ màu cung cấp độ bao phủ màu chuẩn xác, rực rỡ.\r\n\r\n• Đạt chuẩn VESA CERTIFIED Display HDR True Black 600, màn hình laptop Asus VivoBook còn cho độ trễ chỉ 0.2 ms giúp thời gian phản hồi cực nhanh chóng. Công nghệ SGS Eye Care Display bảo vệ thị giác người dùng trước tác hại của ánh sáng xanh.\r\n\r\n• Sở hữu thiết kế thời thượng, độ hoàn thiện tinh tế với lớp vỏ nhựa và mặt lưng kim loại. Trọng lượng 1.65 kg giúp bạn dễ dàng mang theo bên mình phục vụ mọi nhu cầu làm việc, giải trí mọi lúc.\r\n\r\n• Công tắc khoá camera giúp chiếc laptop đồ họa - kỹ thuật này hạn chế tình trạng đánh cắp hình ảnh trái phép. Đèn nền bàn phím giúp người dùng dễ dàng thao tác trong môi trường thiếu sáng. Bảo mật vân tay hỗ trợ đăng nhập nhanh chóng.\r\n\r\n• Công nghệ Audio by Harman/Kardon trên laptop có khả năng tái tạo âm vòm, cân bằng dải âm cao và âm trầm mang lại không gian giải trí sống động, thư giãn cho người dùng.\r\n\r\n• Đa dạng cổng giao tiếp gồm USB 3.2, 2 x USB 2.0, HDMI, USB Type-C, khe đọc thẻ nhớ Micro SD giúp kết nối nhanh chóng với các thiết bị ngoại vi.', 'lt19.jpg', 1, '2022-05-16', '2022-05-16'),
(43, 2, 'Asus TUF Gaming', '25990000.00', 'Với laptop Asus TUF Gaming FX506HCB i5 (HN139T) bạn có thể thỏa sức sáng tạo, chiến game cực đỉnh với cấu hình mạnh mẽ từ chip Intel cùng thiết kế hầm hố chuẩn gaming hứa hẹn sẽ mang lại những phút giây học tập, giải trí tuyệt vời.\r\nThỏa sức chiến game với chip Intel thế hệ 11\r\nLaptop Asus được trang bị bộ vi xử lý Intel Core i5 Tiger Lake giúp phát huy tối ưu hiệu suất làm việc với 6 nhân 12 luồng, mang lại tốc độ cơ bản 2.7 GHz và tối đa 4.5 GHz ở chế độ Turbo Boost. Các tác vụ văn phòng trên Word, Excel, PowerPoint,... sẽ khó có thể làm khó được nó.\r\n\r\nRAM 8 GB chuẩn DDR4 2 khe (1 khe 8 GB + 1 khe rời) đem lại cho máy khả năng đa nhiệm mượt với tốc độ Bus RAM 3200 MHz cùng hỗ trợ nâng cấp tối đa lên đến 32 GB giúp đáp ứng tốt các nhu cầu cao cấp hơn của người dùng.\r\n\r\nAsus TUF Gaming FX506HCB i5 11400H (HN139T) - Cấu hình\r\n\r\nKhả năng đồ họa được đẩy mạnh nhờ card đồ họa rời NVIDIA GeForce RTX 3050 4 GB, xây dựng dựa trên kiến trúc Ampere giúp Asus TUF Gaming đáp ứng tốt tốc độ phản hồi nhanh chóng trên các tựa game chiến đấu như Far Cry 5, LOL, FIFA, Apex Legends... ở mức cài đặt cao, đồng thời thao tác mượt mà các tác vụ đồ họa 2D và render video, chỉnh sửa hình ảnh trên Photoshop, Illustrator, Premiere,... với chất lượng hình tốt, độ phân giải cao, khung hình chuyển động mượt mà.', 'lt20.jpg', 1, '2022-05-16', '2022-05-16');
INSERT INTO `tbl_product` (`product_id`, `category_id`, `name`, `price`, `detail`, `image`, `status`, `created`, `modified`) VALUES
(44, 3, 'iPad mini 6', '23990000.00', 'Sau thời gian dài chờ đợi thì tháng 09/2021 iPad mini 6 WiFi 64GB cũng đã được Apple trình làng với thiết kế vừa quen thuộc vừa mới lạ, máy có nhiều cải tiến trong cấu hình lẫn phần mềm nhằm gia tăng lợi ích sử dụng, mang lại sự hài lòng cao hơn cho người dùng khi lựa chọn.\r\nCấu hình mạnh mẽ hơn, đa nhiệm tốt hơn\r\niPad mini 6 có sức mạnh vượt trội khi so với thế hệ tiền nhiệm, sử dụng chip xử lý Apple A15 Bionic 6 nhân, có 15 nghìn tỷ bóng dẫn bên trong giúp hiệu năng mạnh mẽ hơn và tiết kiệm khoảng 15% năng lượng so với A14 Bionic.\r\n\r\nChip xử lý Apple A15 Bionic - iPad mini 6 WiFi 64GB\r\n\r\nHiện tại dung lượng RAM vẫn chưa được Apple tiết lộ, theo một số tin đồn thì máy sẽ có dung lượng RAM 4 GB giúp khả năng đa nhiệm tốt hơn, điều hành đa tác vụ trên iPad mini 6 sẽ luôn được trơn tru, cho bạn mở nhiều cửa sổ ứng dụng, chạy các phần mềm thiết kế đồ họa hay thử sức chỉnh sửa video chất lượng cao một cách dễ dàng.\r\n\r\nBộ nhớ trong dung lượng 64 GB thoải mái cho nhu cầu cơ bản, lưu trữ các dữ liệu cá nhân với danh sách nhạc yêu thích, hình ảnh và video các khoảnh khắc đáng nhớ của bạn cùng người thân.\r\n\r\nDung lượng bộ nhớ - iPad mini 6 WiFi 64GB\r\n\r\nVới khả năng xử lý đồ họa nhanh hơn tới 80%, iPad mini 6 giúp bạn đắm mình vào bất cứ điều gì bạn làm. Trải nghiệm AR, chơi các trò chơi đồ họa cao hay các tác vụ 3D đều sẽ được xử lý mượt mà.', 'tl2.jpg', 1, '2022-05-16', '2022-05-16'),
(45, 3, 'iPad Air 4', '20990000.00', 'Chấn động giới công nghệ toàn cầu, khi một tablet lần đầu được tích hợp một trong những chipset hàng đầu 2020, iPad Air 4 Wifi Cellular 256GB 2020 sở hữu con chip A14 Bionic với hiệu năng vô cùng mạnh mẽ, kết nối 4G tiện dụng cùng bộ nhớ cực khủng lên đến 256 GB.\r\nMàu sắc cá tính, nhẹ như Air\r\nXứng danh dòng Air của Apple, iPad Air 4 được chế tác từ nhôm tái chế 100%, một chất liệu vô cùng nổi bật trên các mẫu iPad của Apple nửa cuối 2020, bên cạnh khối lượng chỉ 460 g, đem đến những trải nghiệm tuyệt hảo cả về phần nhìn lẫn cảm nhận khi sử dụng.\r\n\r\niPad Air 4 Wifi Cellular 256GB (2020)\r\nMở đầu xu hướng đa sắc trên các dòng iPad hiện nay, đánh dấu chất riêng, thể hiện cá tính với bộ sưu tập những màu sắc vô cùng nổi bật trên mẫu iPad Air 2020 thế hệ mới.\r\n\r\niPad Air 4 Wifi Cellular 256GB (2020) | Đa này sắc giúp bạn dễ dàng sáng tạo chất riêng\r\n\r\nMàn hình Liquid Retina được trang bị trên iPad Air gen 4 thể hiện xuất sắc từng khung hình bên cạnh một kích thước màn hình đã được mở rộng lên đến 10.9 inch, đem tới cho người dùng những trải nghiệm tuyệt hảo với những thước phim ấn tượng.', 'tl3.jpg', 1, '2022-05-16', '2022-05-16'),
(46, 3, 'iPad Pro M1', '30990000.00', 'mang một hiệu năng đỉnh cao đến từ vi xử lý Apple M1 và màn hình Liquid Retina XDR tiên tiến cho chất lượng hiển thị đột phá. Apple một lần nữa đưa iPad Pro vượt khỏi giới hạn của một chiếc máy tính bảng.\r\niPad với hiệu năng của một chiếc MacBook \r\nBằng việc trang bị vi xử lý M1 siêu khủng của các dòng máy tính MacBook, giúp cho iPad Pro M1 2021 trở thành chiếc máy tính bảng mạnh mẽ nhất hiện nay (05/2021).\r\n\r\niPad Pro M1 12.9 inch WiFi 128GB (2021) | Trang bị vi xử lý M1 siêu khủng của các dòng máy tính MacBook\r\n\r\nThiết kế CPU 8 lõi giúp hiệu suất tăng đến 50% và GPU 8 lõi xử lý đồ họa nhanh hơn 40% so với A12Z Bionic đang được trang bị trên thế hệ iPad Pro 2020. Cùng dung lượng RAM 8 GB hỗ trợ cho tác vụ xử lý chuyên nghiệp, đa nhiệm nhiều cửa sổ mà không bị giật lag, trải nghiệm thật sự mượt mà.\r\n\r\niPad Pro M1 12.9 inch WiFi 128GB (2021) | RAM 8 GB hỗ trợ cho tác vụ xử lý chuyên nghiệp\r\n\r\nVi xử lý M1 và vi xử lý dòng A-series cùng chia sẻ kiến trúc ARM, giúp cho iPadOS 15 (12/2021) và các ứng dụng trên iPad tương thích tốt, điều này có nghĩa chip M1 vẫn hoạt động các ứng dụng bình thường như chip A-series mà không gặp bất kỳ trở ngại nào.', 'tl6.jpg', 1, '2022-05-16', '2022-05-16'),
(47, 3, 'iPad Air 5 M1 Wifi Cellular', '20990000.00', 'So với chiếc iPad Air 5 M1 Wifi 64GB thì chiếc iPad Air 5 M1 Wifi Cellular 64GB đã có một điểm khác biệt đáng kể đó là phương thức kết nối khi bạn vừa có thể sử dụng Wifi và vừa sử dụng mạng di động một cách bình thường nhưng vẫn cho một trải nghiệm rất tuyệt vời.\r\nMàn hình to, xem phim, làm việc đã hơn\r\nĐược trang bị một màn hình lớn lên đến 10.9 inch vừa đủ không quá to những cũng không nhỏ cho bạn dễ dàng trải nghiệm, sử dụng. Đi kèm với đó chiếc màn hình Retina IPS LCD này sẽ mang lại cho bạn những trải nghiệm về màu sắc tốt hơn.\r\n\r\nTrải nghiệm siêu đã với màn hình lớn - iPad Air 5 M1 Wifi Cellular 64\r\n\r\nThiết kế thời thượng\r\nThiết kế gọn nhẹ và được làm vuông vức ở các cạnh mang lại cảm giác sang trọng, đẳng cấp, nhiều người dùng rất thích điều này. Màu sắc đa dạng cũng sẽ giúp bạn có nhiều sự lựa chọn phù hợp để sử dụng hơn.\r\n\r\nThiết kế thời thượng - iPad Air 5 M1 Wifi Cellular 64GB\r\n\r\nHiệu năng mạnh mẽ\r\nĐược cung cấp sức mạnh từ con chip Apple M1 nên chiếc iPad Air 5 M1 Wifi Cellular này sẽ có một sức mạnh vô cùng kinh khủng. Nó mạnh hơn thế hệ tiền nhiệm lên đến 60% hứa hẹn sẽ cho bạn một khả năng xử lý, làm việc siêu tốc.', 'tl7.jpg', 1, '2022-05-16', '2022-05-16'),
(48, 3, 'iPad 9 WiFi Cellular', '13990000.00', 'Sau thành công của iPad 8 thì Apple đã tung ra chiếc iPad 9 WiFi Cellular 64GB với những trang bị ngày càng vượt trội và phong cách thiết kế đậm chất iPad 10.2 Series, đây sẽ là mẫu máy tính bảng đáng cân nhắc trong phân khúc giá.\r\nPhong cách thiết kế quen thuộc của dòng iPad \r\nChiếc iPad 9 này có khung máy hình chữ nhật kèm với 2 cạnh viền trên dưới quen thuộc. Ở phiên bản này có 2 màu sắc là màu Bạc và màu Xám vô cùng quen thuộc mà vẫn vô cùng thanh lịch mà không kén người dùng. Bạn có thể lựa chọn màu sắc cho phù hợp với phong cách của mình.\r\n\r\nCó 2 phiên bản màu sắc - iPad 9 WiFi Cellular 64GB\r\n\r\nVỏ ngoài bằng aluminum có khả năng tản nhiệt tốt và cứng cáp bảo vệ toàn diện các linh kiện ở bên trong máy. Mặt lưng hơi nhám hạn chế bám vân tay, cho cảm giác cầm nắm tốt. iPad có trọng lượng là 498 g và mỏng 7.5 mm dễ dàng cầm nắm và thực hiện các thao tác trên màn hình.\r\n\r\nThiết kế nhỏ gọn - iPad 9 WiFi Cellular 64GB\r\n\r\nNút Home vẫn được giữ lại đặt ở giữa của cạnh viền dưới của màn hình hỗ trợ bạn thao tác nhanh chóng khi cần. Touch ID cũng được tích hợp ngay trên phím Home này giúp bạn mở khóa màn hình nhanh chóng, đăng nhập ứng dụng hay thanh toán online đều vô cùng tiện lợi.', 'tl8.jpg', 1, '2022-05-16', '2022-05-16'),
(49, 3, 'Samsung Galaxy Tab S7', '17690000.00', 'Samsung Galaxy Tab S7 chiếc máy tính bảng có thiết kế tuyệt đẹp, màn hình 120 Hz siêu mượt, camera kép ấn tượng, bút S Pen cùng một hiệu năng mạnh mẽ thuộc top đầu thị trường máy tính bảng Android.\r\nThiết kế tràn viền cao cấp, thời thượng\r\nGalaxy Tab S7 vẫn giữ nguyên thiết kế kim loại nguyên khối, góc cạnh như người tiền nhiệm Samsung Galaxy Tab S6 trước đó, cho cảm giác sang trọng và cao cấp, cầm vào tay rất vừa vặn và thoải mái.\r\n\r\nThiết kế cao cấp tràn viền thời thượng | Galaxy Tab S7\r\n\r\nCác cạnh bên được vát thẳng, bo tròn ở các góc, hoàn thiện bằng lớp vỏ kim loại cứng cáp ít bám mồ hôi và dấu vân tay, khả năng hoàn thiện cực kỳ cao và chắc chắn.\r\n\r\nThiết kế mặt lưng | Galaxy Tab S7\r\n\r\nNút nguồn và nút tăng giảm âm lượng được bố trí ở cạnh trái, trong khi hệ thống 4 loa ngoài được tinh chỉnh bởi AKG của thiết bị được đặt ở cạnh trên và dưới, cho chất lượng âm thanh tốt, phục vụ nhu cầu giải trí di động.', 'tl4.jpg', 1, '2022-05-16', '2022-05-16'),
(50, 3, 'Samsung Galaxy Tab S8+', '25990000.00', 'Trong sự kiện Galaxy Unpacked 2022 Samsung đã chính thức cho ra mắt Samsung Galaxy Tab S8+ mẫu máy tính bảng được giới công nghệ chú ý đến với những nâng cấp sáng giá với thế hệ tiền nhiệm. Vậy chiếc máy này có gì đặc biệt, cùng mình vào bài đánh giá chi tiết sau nhé!\r\nThiết kế đặc trưng nhà Samsung\r\nThế hệ Galaxy Tab S mới vẫn giữ được những thiết kế đặc trưng của mình, Galaxy Tab S8+ được nhà Samsung chăm chút từ những đường nét, chi tiết nhỏ nhất nhằm đem đến sự sang trọng, tinh tế cho chúng ta.\r\n\r\nThiết kế đặc trưng - Samsung Galaxy Tab S8+\r\n\r\nĐược hoàn thiện từ Armor Aluminum nguyên khối, vuông vức theo xu hướng hiện nay. Cảm giác cầm chiếc máy tính bảng này trên tay thì mình thấy máy có trọng lượng khá vừa đủ không quá nặng, cụ thể là máy có trọng lượng 572 g.\r\n\r\nMặt lưng của Tab S8+ thiết kế với một độ nhám nhất định làm cho chúng ta sử dụng được thoải mái hơn, không bị trượt trong lúc sử dụng, tuy nhiên điểm trừ ở mặt lưng này là nó vẫn còn lưu lại mồ hôi và dấu vân tay.', 'tl1.jpg', 1, '2022-05-16', '2022-05-16'),
(51, 3, 'Samsung Galaxy Tab S7 FE 4G', '13990000.00', 'Samsung chính thức trình làng mẫu máy tính bảng có tên Galaxy Tab S7 FE, máy trang bị cấu hình mạnh mẽ, màn hình giải trí siêu lớn và điểm ấn tượng nhất là viên pin siêu khủng được tích hợp bên trong, giúp tăng hiệu suất làm việc nhưng vẫn có tính di động cực cao.\r\nViên pin “khủng long” vượt mốc 10000 mAh\r\nGalaxy Tab S7 FE sẽ khiến bạn choáng ngợp với dụng lượng pin cực khủng 10090 mAh đảm bảo cho cường độ làm việc, giải trí liên tục trong nhiều giờ liền.\r\n\r\nGalaxy Tab S7 FE | Dung lượng pin lớn 10.090 mAh\r\n\r\nTheo công bố từ Samsung, với dung lượng lớn này giúp cho Galaxy Tab S7 FE có thể dùng lên tới 12 giờ lướt web với mạng LTE và 13 giờ xem video trực tuyến qua wifi.\r\n\r\nBên cạnh đó, thời gian sạc cũng được rút ngắn đáng kể khi máy hỗ trợ sạc nhanh công suất tối đa lên đến 45 W, tuy nhiên để sạc với tốc độ này bạn cần mua củ sạc phù hợp vì sạc kèm theo máy chỉ 15 W.\r\n\r\nChơi hết sức, làm việc hết mình với màn hình siêu lớn\r\nGalaxy Tab S7 FE có một phiên bản màn hình duy nhất với kích thước lớn 12.4 inch, phần viền bao quanh được thu nhỏ, tạo nên không gian rộng rãi, thoải mái cho bạn làm việc hay giải trí.', 'tl19.jpg', 1, '2022-05-16', '2022-05-16'),
(52, 3, 'Samsung Galaxy Tab A8', '8490000.00', 'Nghe nhìn mãn nhãn với màn hình lớn và âm thanh chân thật \r\nSamsung Galaxy Tab A8 (2022) có kích thước màn hình 10.5 inch, tỉ lệ 16:10 cho không gian hiển thị rộng hơn, rất lý tưởng cho người dùng trải nghiệm xem phim, livestream, chơi game. \r\n\r\nMàn hình TFT LCD có độ phân giải 1200 x 1920 Pixels tái hiện hình ảnh khá chi tiết, màu sắc trung thực, phong phú. Tận hưởng âm thanh sống động đến từ hệ thống 4 loa hỗ trợ công nghệ Dolby Atmos cung cấp âm thanh vòm bùng nổ, nghe nhạc rất đã tai. \r\n\r\nMáy tính bảng Samsung Galaxy Tab A8 (2022) - Nghe nhìn mãn nhãn với màn hình lớn và âm thanh chân thật\r\n\r\nThiết kế mỏng gọn với độ dày chỉ 6.9 mm, khung và mặt lưng bằng kim loại tạo cho máy tính bảng vẻ ngoài đẳng cấp, sang trọng, cầm đầm tay nhưng thoải mái.\r\n\r\nHiệu năng mạnh mẽ\r\nSử dụng vi xử lý UniSOC T618 cho hiệu suất CPU và GPU nhanh hơn 10% so với dòng Tab A7, hỗ trợ RAM 4 GB giúp trải nghiệm các tác vụ văn phòng, giải trí mượt mà. Ngoài ra, máy tính bảng Samsung cho khả năng lưu trữ cực ấn tượng với bộ nhớ trong 64 GB, dùng được với thẻ nhớ ngoài hỗ trợ dung lượng lên đến 1 TB.\r\n\r\nMáy tính bảng Samsung Galaxy Tab A8 (2022) - Hiệu năng mạnh mẽ\r\n\r\nChụp hình đẹp với camera trước và sau\r\nTrong khi camera sau có độ phân giải 8 MP có khả năng tự động lấy nét, quay được video chuẩn Full HD với tốc độ khung hình 30 fps thì camera trước cảm biến 5 MP cho bạn gọi video, chụp hình chân dung với chất lượng tốt, ảnh chụp nét đẹp.\r\n\r\nMáy tính bảng Samsung Galaxy Tab A8 (2022) - Học tập và giảng dạy trực tuyến tiện lợi với camera trước và sau\r\n\r\nGiải trí thoải mái cả ngày \r\nThỏi pin Li-Po cho dung lượng lớn 7040 mAh, cung cấp năng lượng đủ để bạn lướt web, chơi game, xem phim hàng giờ liền mà không sợ hết pin, dễ dàng tận hưởng bất kỳ sở thích nào của bạn. Hỗ trợ công nghệ sạc nhanh 15 W giúp máy tính bảng nạp pin nhanh chóng, giảm thời gian chờ đợi.', 'tl10.jpg', 1, '2022-05-16', '2022-05-16'),
(53, 3, 'Lenovo Yoga Tab 11', '9990000.00', 'Lenovo mang đến cho người dùng mẫu máy tính bảng mới với tên gọi Yoga Tab 11 cùng nhiều ưu điểm vượt trội như bộ vi xử lý chuyên game của MediaTek, màn hình kích thước lớn, âm thanh nổi sống động và các chế độ tiện ích đa dạng khác mà không thua kém gì các tablet cao cấp khác.\r\nHiệu năng cực đỉnh tối ưu trải nghiệm\r\nMediaTek Helio G90T là con chip mạnh mẽ được xây dựng trên tiến trình 12 nm giúp máy có thể chạy tốt mọi tác vụ từ cơ bản như lướt mạng xã hội, đọc báo cho đến những tựa game hot hiện nay tất cả đều hoạt động khá tốt và ổn định mà không gặp bất kỳ trở ngại nào.\r\n\r\nChip MediaTek Helio G90T mạnh mẽ - Lenovo Yoga Tab 11\r\n\r\nBên cạnh đó, GPU Mali-G76 đáp ứng tốt các tác vụ đồ họa, gaming phức tạp mang đến chất lượng hình ảnh sắc nét và chân thật, nâng tầm trải nghiệm nhưng vẫn tiết kiệm điện năng.\r\n\r\nMượt mà các tác vụ đồ họa, gaming - Lenovo Yoga Tab 11\r\n\r\nCàng làm tăng hiệu năng mạnh mẽ khi được cung cấp 4 GB RAM cho khả năng xử lí các tác vụ đa nhiệm mượt mà có thể cùng lúc mở nhiều ứng dụng mà không bị đứng.\r\n\r\nĐa nhiệm mượt mà - Lenovo Yoga Tab 11\r\n\r\nBộ nhớ trong 128 GB mang lại không gian lưu trữ lớn, tha hồ cài đặt các tựa game yêu thích. hỗ trợ mở rộng không gian lưu trữ qua thẻ nhớ microSD cho người dùng dễ dàng nâng cấp khi có nhu cầu.\r\n\r\nNgoại hình tối giản, thanh lịch\r\nLenovo Yoga Tab 11 mang đến vẻ ngoài hoàn hảo nhờ thiết kế nhôm nguyên khối cùng bốn cạnh được bo cong nhẹ nhàng tạo cảm giác mềm mại hơn cho tổng thể.', 'tl11.jpg', 1, '2022-05-16', '2022-05-16'),
(54, 3, 'Lenovo Tab P11 Plus', '8190000.00', 'Lenovo Tab P11 Plus sẽ là một lựa chọn để làm việc thay thế laptop khi nhu cầu sử dụng không quá cao, máy được trang bị cấu hình mạnh mẽ, màn hình lớn cùng các chế độ tiện ích đa dạng, đáp ứng được hầu hết nhu cầu của một người sáng tạo với mức giá phải chăng đến từ Lenovo.\r\nHiệu năng tốt, chiến game mượt mà\r\nMáy tính bảng Lenovo Tab P11 Plus mang đến hiệu suất hoạt động khá ấn tượng nhờ vi xử lý MediaTek Helio G90T sản xuất trên tiến trình 12 nm với xung nhịp cao nhất có thể lên đến 2.05 GHz đem lại khả năng xử lý những tác vụ từ cơ bản đến nâng cao đều mượt mà.\r\n\r\nSức mạnh đến từ con chip MediaTek Helio G90T - Lenovo Tab P11 Plus\r\n\r\nĐảm nhiệm vai trò xử lý đồ họa là GPU Mali-G76 MC4 mang lại trải nghiệm có độ trung thực cao trên những tựa game hot nhất, đem đến tốc độ xử lý nhanh chóng đồng thời tiết kiệm điện năng hơn. \r\n\r\nMang đến trải nghiệm đồ họa tuyệt vời - Lenovo Tab P11 Plus \r\n\r\nBộ nhớ trong 64 GB hoàn toàn đủ khả năng lưu trữ hình ảnh, video và ứng dụng ở mức độ cơ bản. Ngoài ra, người dùng còn có thể mở rộng bộ nhớ qua thẻ nhớ MicroSD để thêm không gian lưu trữ.\r\n\r\nMáy trang bị RAM 4 GB tăng khả năng đa nhiệm, giúp máy xử lý tốt mọi tác vụ dễ dàng mà không phải chờ đợi lâu.', 'tl12.jpg', 1, '2022-05-16', '2022-05-16'),
(55, 3, 'Lenovo Tab M10 - FHD Plus', '6490000.00', 'Từ việc sử dụng các thiết bị điện tử đa dạng của các gia đình hiện nay, Lenovo đã nắm bắt được nhu cầu thiết yếu này và cho ra mắt chiếc máy tính bảng Lenovo Tab M10 - FHD Plus với những tính năng tiện ích ấn tượng, “khoác chiếc áo” của thời đại và có mức giá siêu ưu đãi.\r\nMáy tính bảng tiện dụng, gọn nhẹ và linh hoạt\r\nLenovo Tab M10 - FHD Plus được bảo vệ hoàn toàn bởi khung kim loại rắn chắc, các cạnh viền hơi vuông, cong uyển chuyển, sáng bóng. Chiếc máy tính bảng sở hữu vẻ ngoài toát lên vẻ hiện đại thời thượng trong thiết kế đơn giản mà đầy thu hút.\r\n\r\nLenovo Tab M10 - FHD Plus | Thiết kế thời thượng, chắc chắn\r\n\r\nCấu tạo của Tab M10 - FHD Plus hướng đến mọi đối tượng trong gia đình nên vô cùng gọn nhẹ, chỉ dày 8.15 mm và sở hữu trọng lượng chỉ 460 g. Từ trẻ nhỏ đến người cao tuổi đều dễ dàng cầm nắm sử dụng và mang theo đến bất cứ đâu ngay trong balo nhỏ của bạn.\r\n\r\nLenovo Tab M10 - FHD Plus | Cấu tạo mỏng nhẹ chỉ dày 8.15 mm và sở hữu trọng lượng chỉ 460 g\r\n\r\nAn toàn hơn và nhanh chóng mở khóa máy tính bảng bất cứ khi nào bạn cần bằng công nghệ nhận diện khuôn mặt, chỉ một thao tác vô cùng đơn giản, Tab M10 - FHD Plus đã sẵn sàng hoạt động.', 'tl13.jpg', 1, '2022-05-16', '2022-05-16'),
(56, 3, 'Lenovo Tab M8', '3990000.00', 'Lenovo Tab M8 chiếc máy tính bảng giá rẻ, cấu hình ổn, thiết kế cao cấp trong tầm giá, hoàn toàn phù hợp với các nhu cầu cơ bản như đọc báo, xem phim, lướt web hằng ngày.\r\nThiết kế đơn giản, tinh tế\r\nLenovo Tab M8 có thiết kế cao cấp nhờ mặt lưng được làm bằng chất liệu nhựa nguyên khối, chắc chắn cho cảm giác cầm nắm vô cùng thích.\r\n\r\nMáy tính bảng Lenovo Tab A22 | Thiết kế vỏ nhựa nguyên khối\r\n\r\nMàn hình kích thước 8 inch nhỏ gọn, với tỉ lệ hiển thị đến 83% nhờ các cạnh viền được làm khá mỏng cho không gian hiển thị được nhiều thông tin mà nhưng vẫn cho trải nghiệm cầm nắm nhẹ nhàng, dễ dàng thao tác.\r\n\r\nMáy sở hữu màn hình IPS LCD với độ phân giải 1280 x 800 Pixels , cho chất lượng hiển thị tốt, mặc dù không quá xuất sắc nhưng đủ dùng cho các nhu cầu cơ bản.Máy tính bảng Lenovo Tab A22 | Hiển thị rõ ràng ở mọi góc nhìn\r\n\r\nBằng việc tích hợp 2 loa ngoài cùng với công nghệ âm thanh Dolby Audio, giúp trải nghiệm xem phim, nghe nhạc trên chiếc máy tính bảng Lenovo này thêm sống động, tuyệt vời.', 'tl15.jpg', 1, '2022-05-16', '2022-05-16'),
(57, 3, 'Xiaomi Pad 5', '10490000.00', 'Xiaomi cho ra mắt Xiaomi Pad 5 256GB, chiếc máy tính bảng có thiết kế mỏng nhẹ, thời trang cùng cấu hình hàng đầu đáp ứng hết các nhu cầu của bạn, dù là học tập, giải trí hay làm việc đều trở nên vô cùng trơn tru.\r\nGiải trí cực đã với màn hình siêu nét\r\nMáy tính bảng Xiaomi Pad 5 được trang bị một màn hình siêu ấn tượng với tấm nền IPS LCD kích thước lớn lên đến 11 inch, hỗ trợ độ phân giải WQHD+ cực nét, mang đến khả năng hiển thị sống động, cho bạn đắm chìm trong các không gian giải trí.\r\n\r\nTrang bị tấm nền IPS LCD - Xiaomi Pad 5\r\n\r\nPhần viền màn hình được làm mỏng đều cả 4 cạnh không chỉ nâng cao trải nghiệm xem, mà còn góp phần giúp máy tính bảng trở nên sang trọng và đẳng cấp hơn rất nhiều.\r\n\r\nĐặc biệt màn hình này còn có thể hiển thị hơn 1 tỷ màu sắc khác nhau. Hỗ trợ công nghệ hình ảnh Dolby Vision cùng tần số quét 120 Hz cho trải nghiệm hình ảnh mượt mà, đã mắt nhất là khi sử dụng để xem phim hay là chiến game.\r\n\r\nĐộ phủ màu tốt - Xiaomi Pad 5\r\n\r\nCùng với trải nghiệm hình ảnh đáng kinh ngạc thì Xiaomi Pad 5 được trang bị tới 4 loa ngoài hỗ trợ công nghệ âm thanh Dolby Atmos, chuẩn âm thanh Hi-Res nhờ đó mang lại chất lượng âm thanh chân thực hơn bao giờ hết.', 'tl5.jpg', 1, '2022-05-16', '2022-05-16'),
(58, 3, 'Lenovo Tab M10 - Gen 2 ', '5190000.00', 'Lenovo Tab M10 Gen 2 từ nhà Lenovo nổi bật trong phân khúc tầm trung khi sở hữu thiết kế gọn nhẹ, hiện đại cùng khả năng kết nối mạnh mẽ, viên pin ấn tượng và cấu hình ổn định trong tầm giá.\r\nThiết kế hiện đại, thân thiện với người dùng\r\nLenovo Tab M10 Gen 2 được làm từ khung kim loại, nổi bật với những đường nét cứng cáp, vuông vức kết hợp với các góc được bo tròn tinh tế mang lại vẻ sang trọng cho thiết bị.\r\n\r\nLenovo Tab M10 - Gen 2 | Thiết kế tinh tế, sang trọng\r\n\r\nMáy có kích thước 241.54 x 149.38 x 8.25 mm tương đối nhỏ gọn để có thể thoải mái cầm nắm bằng một tay. Đặc biệt, với trọng chỉ nặng 420 g nên người dùng hoàn toàn có thể yên tâm mang theo bên mình mỗi khi ra ngoài làm việc hoặc đi công tác.\r\n\r\nLenovo Tab M10 - Gen 2 | Thiết kế cạnh viền\r\n\r\nĐáng chú ý là hệ thống loa hai bên của Lenovo Tab M10 Gen 2 được tích hợp công nghệ âm thanh vòm Dolby Atmos, giúp bạn đắm chìm vào không gian bao quanh nhờ chất lượng âm thanh sống động hơn bao giờ hết.\r\n\r\nLenovo Tab M10 - Gen 2 | Âm thanh vòm sống động\r\n\r\nTrải nghiệm thú vị hơn với màn hình lớn\r\nLenovo Tab M10 Gen 2 sở hữu màn hình kích thước lớn lên tới 10 inch với phần viền bezel được làm mỏng tối ưu giúp người dùng có thể tận hưởng những khung hình ảnh bắt mắt hơn thông qua trải nghiệm giải trí hàng ngày.', 'tl14.jpg', 1, '2022-05-16', '2022-05-16'),
(59, 3, 'Samsung Galaxy Tab S6 Lite', '9990000.00', 'Sau thành công của Galaxy Tab S6, Samsung tiếp tục chinh phục người dùng với Galaxy Tab S6 Lite có phân khúc giá rẻ hơn. Thiết bị vẫn hỗ trợ bút S Pen thần thánh, thiết kế kim loại cao cấp và màn hình, âm thanh giải trí đỉnh cao.\r\nThiết kế thời thượng và cao cấp\r\nMáy tính bảng Galaxy Tab S6 Lite sở hữu thiết ấn tượng với độ dày chỉ 7mm và trọng lượng siêu nhẹ 467g, giúp người dùng dễ dàng bỏ vào túi xách hay mang theo bất kì đâu.\r\n\r\nGalaxy Tab S6 Lite | Thiết kế đẹp mắt\r\n\r\nToàn thân của máy được chế tác từ kim loại nguyên khối cao cấp, đảm bảo độ bền và cho vẻ đẹp sang trọng, thanh thoát.\r\n\r\nMặt sau của Tab S6 Lite được thiết kế tổng thể được làm tối giản giúp chiếc máy trông hiện đại hơn. Dải anten lớn phân tách các thành phần kim loại giúp thiết bị bắt sóng tốt và ổn định hơn.\r\n\r\nBút S Pen mới tối ưu hiệu suất sử dụng\r\nTương tự như trên Tab S6, phiên bản S6 Lite cũng được trang bị bút S Pen làm trợ thủ đắc lực trong các công việc hàng ngày.\r\n\r\nBút S Pen mới trên Tab S6 Lite được thiết kế lớn hơn với kích thước tương tự như cây bút thông thường cho cảm giác cầm tự nhiên và thoải mái. Tối ưu năng suất viết, vẽ trên máy.\r\n\r\nGalaxy Tab S6 Lite | Bút S Pen tiện lợi\r\n\r\nTrải nghiệm viết tay tiếng Việt trên Tab S6 Lite cho thấy máy nhận diện chữ viết rất tốt và chính xác, tốc độ viết khoảng 30 từ/phút, tuy không nhanh như khi gõ phím nhưng là rất ấn tượng so với thao tác nhập liệu trên màn hình cảm ứng. Bút cũng ít gây mỏi khi sử dụng lâu.', 'tl16.jpg', 1, '2022-05-16', '2022-05-16'),
(60, 3, 'Huawei MatePad 11', '13990000.00', 'MatePad 11 - chiếc máy tính bảng đến từ nhà Huawei với lối thiết kế tối giản nhưng vẫn toát lên vẻ sang trọng, sở hữu trong mình cấu hình mạnh mẽ, màn hình lớn cùng một viên pin trâu có thể đáp ứng được hầu hết các tác vụ làm việc, học tập hay giải trí. \r\nThiết kế tối giản, màu sắc thanh lịch\r\nMatePad 11 mang cho mình điểm ấn tượng đầu tiên là về trọng lượng vì máy chỉ mỏng khoảng 7.25 mm và trọng lượng 485 gam nên khi cầm trên tay, nó mang lại một cảm giác thoải mái, không quá nặng. Đây là một con số cực kỳ lý tưởng cho một chiếc máy tính bảng để mình có thể mang nó theo bất kì đâu một cách dễ dàng.\r\n\r\nMáy tính bảng Huawei MatePad 11 - Thiết kế tối giản, dễ cầm nắm\r\n\r\nMatePad 11 vẫn mang lối thiết kế cổ điển phủ một lớp màu xám, nó thu hút mọi người bởi kiểu dáng mỏng, các góc cạnh được bo tròn đều nhau giúp cho tổng thể hài hòa hơn, tạo cảm giác mềm mại, nhẹ nhàng và sang trọng.\r\n\r\nMáy tính bảng Huawei MatePad 11 - Thiết kế cổ điển, sang trọng\r\n\r\nMáy tính bảng không sử dụng jack tai nghe 3.5 mm, mà nó tích hợp chung với khe cắm sạc Type-C với nhau được đặt ở dưới thân máy, còn các phím nguồn và tăng giảm âm lượng thì đặt ở 2 bên cạnh viền máy như các chiếc máy khác.\r\n\r\nMàn hình IPS LCD cho chất lượng hiển thị tốt\r\nMatePad 11 sở hữu màn hình 10.9 inch tỷ lệ 16:9 có độ phân giải là 2K, sử dụng tấm nền IPS LCD, hỗ trợ công nghệ HDR. MatePad có xu hướng hơi đẩy tone màu lên một chút, mang lại cảm giác màu sắc tươi và nịnh mắt hơn. Mình nghĩ chiếc máy này sẽ rất phù hợp cho các bạn với nhu cầu là giải trí, xem phim.', 'tl17.jpg', 1, '2022-05-16', '2022-05-16'),
(61, 3, 'Huawei MatePad', '7790000.00', 'Sở hữu thiết kế cao cấp, giải trí bùng nổ với màn hình siêu lớn và dàn âm thanh vòm 4 loa cực kỳ sống động, được tùy chọn bộ nhớ trong siêu khủng 128 GB, máy tính bảng Huawei MatePad sẽ là một lựa chọn hoàn hảo cho mọi nhu cầu của bạn dù công việc hay vui chơi.\r\nSản phẩm chạy hệ điều hành Android trên nền tảng Huawei Mobile Service (HMS):\r\n- Tải ứng dụng trên cửa hàng Huawei AppGallery thay cho CH Play.\r\n- Ngoài ra, khách hàng có thể tìm ứng dụng bằng Petal Search nếu các ứng dụng không có sẵn trên Huawei AppGallery.\r\n- Không cài đặt sẵn các ứng dụng / game sử dụng dịch vụ, tài khoản Google như: Google Maps, Google Drive, Gmail,...\r\n- Hướng dẫn cài đặt ứng dụng cho thiết bị Huawei.\r\n\r\nMáy tính bảng có thiết kế cao cấp\r\nHuawei MatePad khiến bất cứ ai ngay từ lần đầu nhìn vào đều sẽ bị thu hút bởi kiểu dáng mỏng, thiết kế tối giản với mặt lưng được phủ mờ tinh tế tạo nên phong cách sành điệu cho người sở hữu.\r\n\r\nHuawei MatePad | Thiết kế mặt lưng\r\n\r\nĐộ hoàn thiện cao đến từ phần khung kim loại cứng cáp cùng những đường cong mềm mại, trọng lượng chỉ khoảng 460 g, đem lại sự nhẹ nhàng khi cầm trên tay trong thời gian dài cũng như rất gọn nhẹ để bạn có thể dễ dàng mang theo bên mình.', 'tl18.jpg', 1, '2022-05-16', '2022-05-16'),
(62, 3, 'Huawei MatePad T10s', '5990000.00', 'Chiếc máy tính bảng của Huawei, Huawei MatePad T10s được nhiều người ưa chuộng khi sở hữu thiết kế tinh tế với màn hình lớn cùng bộ vi xử lý 8 nhân mở ra một thế giới giải trí mượt mà, sống động qua từng khung hình, là một sự lựa chọn lý tưởng trong tầm giá mà bất kỳ ai cũng không nên bỏ lỡ.\r\nSản phẩm chạy hệ điều hành Android trên nền tảng Huawei Mobile Service (HMS):\r\n- Tải ứng dụng trên cửa hàng Huawei AppGallery thay cho CH Play.\r\n- Ngoài ra, khách hàng có thể tìm ứng dụng bằng Petal Search nếu các ứng dụng không có sẵn trên Huawei AppGallery.\r\n- Không cài đặt sẵn các ứng dụng / game sử dụng dịch vụ, tài khoản Google như: Google Maps, Google Drive, Gmail,...\r\n- Hướng dẫn cài đặt ứng dụng cho thiết bị Huawei.\r\n\r\nGiải trí tuyệt vời với không gian hiển thị lớn\r\nMatePad T10s với thiết kế gọn, nhẹ và mỏng hơn khi sở hữu màn hình 10.1 inch tràn đều cân xứng hoàn hảo ở cả 4 cạnh viền, đem đến cho bạn từng giờ phút trải nghiệm thoải mái.\r\n\r\nMàn hình mỏng, cầm nhẹ trên tay | Huawei MatePad T10s\r\n\r\nTrang bị tấm nền IPS LCD có độ phân giải 1200 x 1920 pixels mang đến khung hình hiển thị sắc nét, rõ ràng với màu sắc chân thật, cho bạn tận hưởng các nội dung giải trí tuyệt vời, nội dung sẽ linh hoạt thay đổi mượt mà theo chiều cầm ngang hay dọc.', 'tl19.jpg', 1, '2022-05-16', '2022-05-16'),
(63, 3, 'Huawei MatePad T10', '4990000.00', 'Huawei MatePad T10 là một chiếc máy tính bảng có hiệu năng mạnh mẽ, màn hình lớn, đa năng với các tính năng bảo vệ người dùng, một lựa chọn thú vị với những người muốn tìm kiếm một chiếc máy tính bảng giá mềm dành cho gia đình.\r\nSản phẩm chạy hệ điều hành Android trên nền tảng Huawei Mobile Service (HMS):\r\n- Tải ứng dụng trên cửa hàng Huawei AppGallery thay cho CH Play.\r\n- Ngoài ra, khách hàng có thể tìm ứng dụng bằng Petal Search nếu các ứng dụng không có sẵn trên Huawei AppGallery.\r\n- Không cài đặt sẵn các ứng dụng / game sử dụng dịch vụ, tài khoản Google như: Google Maps, Google Drive, Gmail,...\r\n- Hướng dẫn cài đặt ứng dụng cho thiết bị Huawei.\r\n\r\nThiết kế nguyên khối, mức độ hoàn thiện cao\r\nMáy tính bảng mới của Huawei có thiết kế nguyên khối với mặt lưng có màu đơn sắc giúp máy có phần đơn giản nhưng vẫn toát lên vẻ sang trọng và lịch lãm. \r\n\r\nMáy tính bảng Huawei MatePad T10 | Thiết kế nguyên khối, mức độ hoàn thiện cao\r\n\r\nMức độ hoàn thiện máy khá tốt, cho cảm nhận cứng cáp, các chi tiết ghép nối được gắn kết với nhau một cách chính xác, dường như không có khe hở gây mất thẩm mỹ cho máy.', 'tl20.jpg', 1, '2022-05-16', '2022-05-16'),
(64, 4, 'AirPods Pro MagSafe Charge Apple MLWK3 Trắng', '5190000.00', 'Thiết kế cao cấp, đeo vừa vặn với nút tai silicone\r\nTai nghe Bluetooth AirPods Pro MagSafe Charge Apple MLWK3 trắng được chế tác với vẻ ngoài tinh giản, gam màu trắng trẻ trung, sáng đẹp, phối hợp tuyệt vời với mọi trang phục từ đời thường đến công sở, dự tiệc của bạn. \r\n\r\nTai nghe Bluetooth AirPods Pro MagSafe Charge Apple MLWK3 trắng - Thiết kế cao cấp, đeo vừa vặn với nút tai silicone\r\n\r\nKích thước housing nhỏ nhắn đi kèm 3 kích cỡ nút tai mềm mại khác nhau cho bạn dễ dàng lựa chọn để đảm bảo đeo tai nghe dạng in-ear thoải mái, bám chặt vào khổ tai và hỗ trợ loại bỏ tiếng ồn tối ưu. Mặt khác, hộp sạc có dạng hình chữ nhật đặt tai nghe kiểu đứng gọn gàng, an toàn với bản lề thiết kế vừa khít.\r\n\r\nTai nghe Bluetooth AirPods Pro MagSafe Charge Apple MLWK3 trắng - Kích thước housing nhỏ nhắn đi kèm 3 kích cỡ nút tai\r\n\r\nTận hưởng chất âm cuốn hút, được điều chỉnh hoàn hảo cho đôi tai bạn với chip H1 hiện đại cùng công nghệ Adaptive EQ\r\nChip H1 do Apple thiết kế giảm độ trễ âm thanh xuống thấp, xử lý âm thanh kỹ thuật số tinh vi cho các dải âm tinh khiết, âm trầm mạnh mẽ. Adaptive EQ tự động điều chỉnh dải tần số thấp và trung để bài hát bạn đang thưởng thức tương thích cho cấu tạo tai của bạn, mang đến trải nghiệm nhất quán, phong phú hơn.\r\n\r\nTai nghe Bluetooth AirPods Pro MagSafe Charge Apple MLWK3 trắng - Tận hưởng chất âm cuốn hút, được điều chỉnh hoàn hảo cho đôi tai bạn với chip H1 hiện đại cùng công nghệ Adaptive EQ\r\n\r\nChất lượng tín hiệu kết nối không dây vượt trội với công nghệ Bluetooth 5.0\r\nTai nghe Bluetooth Apple có khả năng tương thích cao với các thiết bị hoạt động trên hệ điều hành iOS (iPhone), iPadOS (iPad), MacOS (Macbook, iMac), với sức mạnh của con chip H1 kết hợp chuẩn Bluetooth 5.0 cung cấp kết nối cực mượt trong phạm vi đến 10 m đồng thời giúp giảm tiêu thụ năng lượng đáng kể.', 'tn1.jpg', 1, '2022-05-16', '2022-05-16'),
(65, 4, 'AirPods 2 Wireless charge Apple MRXJ2', '3490000.00', 'AirPods 2 - một sản phẩm đã từng làm mưa làm gió trước khi người “anh em” AirPods Pro ra mắt. Đến thời điểm hiện tại, mặc dù không còn hot như Airpods Pro, nhưng Tai nghe Bluetooth AirPods 2 Wireless charge Apple MRXJ2 vẫn còn nhiều đặc điểm khiến sản phẩm này trở nên hấp dẫn và vẫn giữ được vị trí của mình với một lượng fan nhất định.\r\nVẫn là mẫu thiết kế bắt mắt, quen thuộc dễ nhận biết của nhà Táo\r\nVề hình thức, không khác gì mấy so với bản Tai nghe Bluetooth AirPods 2 Apple MV7N2 sạc có dây, điểm nhấn để phân biệt ở bản sạc không dây là ở thiết kế vỏ hộp: vị trí nút bấm ở sau lưng hộp của bản không dây sẽ nằm cao hơn một chút so với bản có dây và chi tiết đèn LED của AirPods 2 Wireless cũng đã được đưa ra ngoài mặt trước hộp thay vì đèn nằm trong hộp như bản sạc có dây.\r\n\r\nTai nghe Bluetooth AirPods 2 Wireless charge Apple MRXJ2 - Thiết kế \r\n\r\nVới sự thay đổi này, đây cũng là một sự tiện lợi cho những bạn thường xuyên theo dõi tình trạng pin của hộp sạc một cách nhanh chóng, chỉ cần nhìn ngay vào mặt trước vỏ hộp là có thể thấy mà không cần phải tốn thêm một thao tác mở nắp hộp để xem. Khi bấm nút nhận diện kết nối thì đèn có màu trắng. Ở tình trạng gần hết pin, đèn sẽ chuyển báo hiệu cho bạn thấy màu cam và khi được sạc đầy thì đèn chuyển về màu xanh.\r\n\r\nTai nghe Bluetooth AirPods 2 Wireless charge Apple MRXJ2 - Đèn LED\r\n\r\nVề thiết kế vỏ hộp, vẫn là kiểu dáng vỏ hộp bo tròn có chất liệu nhựa bóng trơn nhìn tối giản và trông vẫn sang chảnh, là kiểu thiết kế vẫn còn rất hợp thời dù đã được ra mắt một thời gian rồi. Hộp đựng cứng cáp và rất chắc chắn, kích thước vỏ hộp khá nhỏ gọn, khi đóng mở tạo tiếng “tách” khá vui tai. ', 'tn6.jpg', 1, '2022-05-16', '2022-05-16'),
(66, 4, 'AirPods 3 Apple MME73 Trắng', '5490000.00', 'Thiết kế gọn nhẹ, kiểu dáng hướng âm thanh vào tai bạn\r\nAirpods 3 có thiết kế tương tự như AirPods Pro nhưng không còn phần eartips, đường viền và thân ngắn hơn cho âm thanh truyền tải đến tai tối ưu. Bề mặt tai nghe Bluetooth Apple phủ sắc trắng thời thượng, được làm từ các vật liệu tái chế với độ bền cao, bảo vệ môi trường sống của con người. \r\n\r\nHousing có độ bám tốt, đeo vừa vặn, hộp sạc có kích cỡ nhỏ gọn, đóng mở nhẹ nhàng, thiết kế chuyên dụng để đựng housing Airpods 3, đảm bảo an toàn khi di chuyển, hạn chế thất lạc và sạc pin thuận tiện. \r\n\r\nTai nghe Bluetooth AirPods 3 Apple MME73 Trắng - Tai nghe Bluetooth vẻ ngoài tinh giản, sang trọng\r\n\r\nChất âm mạnh mẽ bùng nổ quanh bạn nhờ Spatial audio và chip H1\r\nÂm thanh 3 chiều phủ khắp đôi tai bạn cho cảm giác như đang ngồi trong rạp hát, hơn nữa, Apple còn tích hợp cho tai nghe trình điều khiển động được hỗ trợ bởi bộ khuếch đại tùy chỉnh, mang đến âm thanh chi tiết từ âm trầm đến âm cao.\r\n\r\nĐặc biệt, chất lượng thoại HD sắc nét, chân thật khi gọi FaceTime nhờ hỗ trợ codec thoại AAC-ELD, âm thanh Spatial audio sinh động. Giọng thoại thể hiện to và rõ hơn khi bên trong housing phủ lớp lưới âm thanh đặc biệt, micro gắn phía trong giảm thiểu tiếng ồn của gió hiệu quả.\r\n\r\nTai nghe Bluetooth AirPods 3 Apple MME73 Trắng - Chìm đắm trong âm thanh vòm sinh động, mạnh mẽ nhờ hỗ trợ con chip H1 và Spatial audio\r\n\r\nTín hiệu mượt mà, độ trễ gần như bằng không qua kết nối không dây Bluetooth 5.0\r\nCon chip H1 xử lý dữ liệu tối ưu không chỉ mang đến chất âm tinh tế còn duy trì kết nối mượt mà trong khoảng cách xa đến 10 m, khả năng tương thích đa thiết bị, nền tảng iOS (iPhone), iPadOS (iPad), MacOS (Macbook, iMac),...\r\n\r\nKết nối cực nhanh khi đặt tai nghe gần iPhone hoặc iPad và chọn ghép nối với các thiết bị trong tài khoản iCloud của bạn, sau đó nếu đang phát nhạc trên máy Mac, bạn sẽ có thể trả lời cuộc gọi trên iPhone dễ dàng mà không cần phải thực hiện thao tác chuyển đổi thiết bị.', 'tn7.jpg', 1, '2022-05-16', '2022-05-16'),
(67, 4, 'AirPods Max Apple MGYH3', '13990000.00', 'Sang trọng với lớp vỏ kim loại sáng bóng, bền bỉ, lựa chọn dễ dàng theo sở thích cho 3 phiên bản màu xanh dương, bạc và xám \r\nTai Bluetooth AirPods Max Apple MGYH3/ MGYJ3/ MGYL3 dễ dàng cuốn hút bạn ngay từ cái nhìn đầu tiên, với nét sang trọng và cực kỳ tinh tế đến từ sự tối giản trong thiết kế và màu sắc, tạo sự khác biệt ấn tượng với các sản phẩm tai nghe hiện có trên thị trường.\r\n\r\nSang trọng - Tai nghe chụp tai Bluetooth AirPods Max Apple MGYH3/ MGYJ3/ MGYL3\r\n\r\nPhần chụp tai bọc vải êm ái đính hút nam châm với củ tai dễ tháo rời vệ sinh. Bạn sẽ bất ngờ vì sự êm ái và rất nhẹ nhàng, thoải mái khi mang chiếc tai nghe trên đầu, trái với cảm nhận độ nặng ban đầu khi cầm trên tay.\r\n\r\nĐệm tai êm ái - Tai nghe chụp tai Bluetooth AirPods Max Apple MGYH3/ MGYJ3/ MGYL3\r\n\r\nĐối xứng theo đó là nút chuyển đổi giữa ANC và Transperency Mode, nhấn để chuyển đổi đơn giản.\r\n\r\nChuyển đổi chế độ chống ồn - Tai nghe chụp tai Bluetooth AirPods Max Apple MGYH3/ MGYJ3/ MGYL3\r\n\r\nKết nối không dây Bluetooth 5.0 nhanh nhạy, đường truyền ổn định ở khoảng cách xa đến 10 m\r\nKết nối không dây linh hoạt liên kết tai nghe Bluetooth với điện thoại, laptop, máy tính bảng… để bắt đầu thưởng thức những bản nhạc yêu thích nhất trong kho âm nhạc của bạn', 'tn8.jpg', 1, '2022-05-16', '2022-05-16'),
(68, 4, 'AirPods Pro Wireless Charge Apple MWP22', '4990000.00', 'Thiết kế nhỏ gọn, dễ dàng đem theo bất cứ đâu\r\nAirPods Pro với thiết kế gọn gàng, đẹp và tinh tế, tai nghe được thiết kế theo dạng In-ear thay vì Earbuds như AirPods 2, cho phép chống ồn tốt hơn, khó rớt khi đeo và đặc biệt là êm tai hơn.\r\n\r\nThiết kế nhỏ gọn, tinh tế - Tai nghe Bluetooth Airpods Pro Apple\r\n\r\nKết nối nhanh và ổn định với công nghệ Bluetooth 5.0\r\nTai nghe Bluetooth AirPods Pro vẫn cho tốc độ kết nối ấn tượng, chỉ khoảng 1 - 2 giây sau khi mở nắp (với các thiết bị của Apple như iPhone, iPad, MacBook,...) và chỉ khoảng 3 - 4 giây đối với Android (sau lần kết nối đầu tiên).\r\n\r\nKết nối nhanh chóng - Tai nghe Bluetooth Airpods Pro Apple\r\n\r\nLinh hoạt lựa chọn với 3 kích cỡ đệm tai kèm theo\r\nDo chuyển sang dạng In-ear, nên AirPods Pro được kèm theo đệm tai cao su với 3 kích cỡ khác nhau, giúp người dùng có nhiều lựa chọn phù hợp với cỡ tai của mình, đem lại trải nghiệm thoải mái nhất.\r\n\r\nĐi kèm theo 3 cặp đệm tai - Tai nghe Bluetooth Airpods Pro Apple\r\n\r\nÂm thanh chất lượng, sống động cùng công nghệ Adaptive EQ tự điều chỉnh âm thanh thông minh\r\nAirPods Pro được nâng cấp mạnh mẽ ở chất lượng âm thanh, cho âm bass mạnh mẽ hơn, chân thực hơn, độ chi tiết cao hơn, nhất là công nghệ Adaptive EQ, cho phép tự động điều chỉnh tần số âm thanh của bản nhạc theo hình dạng tai người dùng, mang lại trải nghiệm âm thanh tốt nhất.\r\n\r\nCó chip H1 chất lượng cao, xử lý âm thanh kỹ thuật số, tốc độ kết nối cực kì nhanh, cho độ trễ gần như bằng không.', 'tn9.jpg', 1, '2022-05-16', '2022-05-16'),
(69, 4, 'Huawei FreeBuds 3', '4290000.00', 'Tai nghe Bluetooth TWS Huawei FreeBuds 3 Trắng là mẫu tai nghe được thiết kế dạng tròn, nhỏ gọn, trẻ trung với chất liệu nhựa bóng, hợp thời trang tiện đem theo bất cứ đâu. Sử dụng cơ chế nam châm đảm bảo chắc chắn khi đóng mở.\r\n\r\nVỏ hộp thiết kế dạng tròn, nhỏ gọn tiện đem theo bất cứ đâu - Tai nghe Bluetooth TWS Huawei FreeBuds 3 Trắng\r\n\r\nVới kích thước tương đối nhỏ, mỗi chiếc tai nghe chỉ 5g cùng thiết kế theo kiểu Earbuds, không có miếng silicon kèm theo nhằm giúp người dùng cảm thấy thoải mái hơn khi sử dụng trong thời gian dài.\r\n\r\nXem thêm: Tai nghe Earbuds, tai nghe Inear là gì? Khác nhau như thế nào?\r\n\r\nThiết kế nhỏ gọn, êm ái, đảm bảo thoải mái khi sử dụng - Tai nghe Bluetooth True Wireless Huawei FreeBuds 3\r\n\r\nChất lượng âm thanh hoàn hảo, bass chân thực sống động mang lại cảm giác như đang thưởng thức âm nhạc trong phòng thu.\r\n\r\nChất lượng âm thanh sống động - Tai nghe Bluetooth TWS Huawei FreeBuds 3 Trắng \r\n\r\nSử dụng chip Kirin A1, kết nối Bluetooth nhanh, luôn ổn định và khả năng chống nhiễu tốt ngay cả trong những môi trường phức tạp như sân bay và trung tâm mua sắm.\r\n\r\nSử dụng chip Kirin A1 với tốc độ truyền tải dữ liệu cao - Tai nghe Bluetooth TWS Huawei FreeBuds 3 Trắng \r\n\r\nTai nghe nhét trong Bluetooth TWS Huawei FreeBuds 3 sử dụng kết nối bluetooth chuẩn 5.1 hiện đại nhất hiện nay (12/2019) cùng với bộ xử lý âm thanh 356 MHz, cho âm thanh rõ nét, mượt mà.', 'tn5.jpg', 1, '2022-05-16', '2022-05-16'),
(70, 4, 'Beats Powerbeats Pro', '4792000.00', 'Cá tính, chắc chắn, tai nghe thiết kế đặc biệt cho người chơi thể thao\r\nNếu AirPods của Apple thường mang thiết kế với 2 củ tai nhỏ gọn thì phiên bản tai nghe True Wireless Powerbeats này lại tạo sự khác biệt với vành đeo tai tích hợp. Cũng dễ hiểu, vì bản chất hãng nhắm tới sử dụng cho nhu cầu nghe khi chơi thể thao, vận động mạnh. Chính nhờ vành đeo tai này mà tai nghe cố định rất chắc chắn trên tai bạn, không rơi rớt bất ngờ ở mọi tư thế vận động.\r\n\r\nDù không nhỏ gọn bằng các mẫu AirPods nhưng Powerbeats Pro vẫn mang 1 vẻ ngoài rất tinh tế, phong cách chứ không thô kệch, lộ liễu, đảm bảo thẩm mỹ để bạn sử dụng nó ở mọi nơi.\r\n\r\nTinh tế - Tai nghe Bluetooth True Wireless Beats Powerbeats Pro\r\n\r\nSo về kích thước, thật sự Powerbeats Pro cũng đã được cải tiến đáng ghi nhận so với bản Powerbeats3, phần dây kết nối được loại bỏ hoàn toàn, trọng lượng giảm 17% và khối lượng bên trong giảm đến 23%, đồng thời được Apple nghiên cứu kỹ lưỡng về cấu tạo để củ loa vừa vặn hoàn hảo với hốc tai người dùng, bên trong còn có nút nhét tai silicon mềm mại, tăng hiệu quả chống ồn.\r\n\r\nĐương nhiên, vì hướng tới cho người chơi thể thao nên có 1 số trường hợp tai nghe có thể hơi bất tiện, như khi bạn đeo cùng gọng kính chẳng hạn.\r\n\r\nHộp sạc Powerbeats Pro cũng rất tinh tế, sang trọng, các góc cạnh bo cong mềm mại, nắp bật êm nhẹ. Tuy nhiên, vì kích thước và kiểu dáng của tai nghe nên để phù hợp, kích cỡ của hộp sạc cũng không được gọn gàng như AirPods, sẽ thoải mái khi bạn mang nó theo trong balo, giỏ xách.\r\n\r\nHộp sạc - Tai nghe Bluetooth True Wireless Beats Powerbeats Pro\r\n\r\nÂm thanh chất lượng, đặc biệt cho những bản nhạc sôi động\r\nÂm Bass là điểm mạnh cho những sản phẩm tai nghe của Beats, Powerbeats Pro vì thế cũng mang tới cho người dùng cảm nhận chất âm mạnh mẽ thiên về âm trầm với lực Bass táo bạo, nhưng dải mid vẫn thật ngọt ngào, nổi bật.\r\n\r\nKhi chơi thể thao, các bản nhạc EDM, R&B, Rap hay cả Epic thưởng thức qua Powerbeats Pro sẽ cực kỳ đã tai. Và thi thoảng nếu muốn thả lỏng với những bản nhạc nhẹ thì âm thanh vẫn thật hoàn chỉnh với dải bass và treble tách biệt, rõ ràng, uyển chuyển.', 'tn10.jpg', 1, '2022-05-16', '2022-05-16'),
(71, 4, 'Beats Studio Buds', '3192000.00', 'Thiết kế độc đáo, 3 phiên bản đen - trắng - đỏ đẹp mắt\r\nHousing được thiết kế không có chuôi dài mà có kiểu tròn nhỏ xinh với nút bấm dạng chữ nhật nổi lên trên mặt ngoài của tai nghe vừa cho bạn cầm nắm dễ dàng vừa tạo xúc cảm chân thật khi điều khiển. Phần bề mặt housing phủ nhựa nhám, nút bấm nhựa bóng khi gặp ánh sáng cho thiết kế nổi bật hơn.\r\n\r\nMặt khác, housing có kiểu dáng earbud - inear kết hợp đệm tai 3 kích cỡ S/M/L với chất liệu mềm nhẹ cho bạn đeo vừa khít với hốc tai, không gây đau, cộm khi đeo lâu. Housing có nam châm giúp đặt vào hộp sạc cố định, nam châm này còn có thể hít được nhiều bề mặt kim loại, khi không dùng gắn lên viền kim loại laptop cực chắc chắn. \r\n\r\nHộp sạc cũng làm từ nhựa nhám, hạn chế trầy xước, bảo quản gọn gàng housing.  \r\n\r\nTai nghe Bluetooth True Wireless Beats Studio Buds MJ4X3 - Thiết kế độc đáo, 2 phiên bản đen - trắng đẹp mắt\r\n\r\nCác dải âm cân bằng, tái tạo sống động\r\nDriver kép trên 2 housing cho âm thanh phát ra trong hơn, phát nhạc stereo sinh động, hơn nữa với bộ xử lý được cải tiến cho âm thanh được to, rõ, không bị vỡ tiếng, cho bạn trải nghiệm nghe tuyệt vời trong từng phút giây.  \r\n\r\nTai nghe True Wireless có mic thoại tạo chùm tia kép có tính năng lọc gió tối ưu cho âm thanh đàm thoại chi tiết ngay cả khi bạn đang ở những nơi công cộng đầy tiếng ồn. \r\n\r\nTai nghe Bluetooth True Wireless Beats Studio Buds MJ4X3 - Các dải âm cân bằng, tái tạo sống động\r\n\r\nCài đặt tai nghe phù hợp từng hoàn cảnh khác nhau nhờ công nghệ Chống ồn chủ động ANC và Transparency mode (Xuyên âm)\r\nBật ANC, những âm thanh ồn ào trong quán cà phê sẽ không còn làm phiền tâm trí của bạn và khi lưu thông trên đường cần nghe rõ được tiếng còi xe, tiếng mọi người trò chuyện thì bạn chỉ cần kích hoạt Transparency mode. Với 2 công nghệ này, bạn chẳng cần tháo tai nghe Bluetooth ra mà vẫn dễ dàng bắt nhịp cuộc sống đang diễn ra xung quanh mình. ', 'tn11.jpg', 1, '2022-05-16', '2022-05-16'),
(72, 4, 'Beats Solo3 Wireless MX432/ MX472', '4392000.00', 'Kiểu dáng thanh mảnh, sáng bóng, tai nghe mang phong cách trẻ trung, cuốn hút\r\nTai nghe chụp tai Beats Solo3 Wireless MX432/ MV8T2/ MX472 dễ dàng chinh phục các bạn trẻ, với 2 lựa chọn màu đen hoặc đỏ đẹp mắt.\r\n\r\nChụp tai vừa vặn, bọc nệm êm ái toàn bộ mặt trong, cách âm tốt, mang đến cảm giác thoải mái khi đeo ngay cả khi sử dụng thiết bị trong suốt ngày dài. Thiết kế đặc biệt với khớp gấp gọn dễ dàng bảo quản siêu gọn gàng trong hành trang của bạn, tiện lợi mang theo thiết bị đến mọi nơi mà bạn muốn.\r\n\r\nGấp gọn tiện dụng - Tai nghe chụp tai Beats Solo3 Wireless MX432/ MV8T2\r\n\r\nDùng chip Apple W1 với công nghệ giải mã âm thanh, tai nghe mang đến chất lượng âm thanh cải tiến ưu tú\r\nÂm bass dễ nghe, chắc gọn, có chiều sâu. Chất lượng âm chân thực hơn, sống động hơn, được xử lý tinh tế theo từng thể loại nhạc, để trải nghiệm của bạn trở nên hoàn hảo nhất.\r\n\r\nÂm thanh chất lượng cao - Tai nghe chụp tai Beats Solo3 Wireless MX432/ MV8T2\r\n\r\nTai nghe Beats kết nối không dây hiện đại với thiết bị phát nhạc của bạn qua Bluetooth 4.0\r\nKhoảng cách kết nối đến 10 m, tương thích với các dòng iPhone, iPod, iPad, Mac Apple Watch và cả hầu hết các dòng smartphone hỗ trợ bluetooth hiện nay.\r\n\r\nKết nối không dây - Tai nghe chụp tai Beats Solo3 Wireless MX432/ MV8T2\r\n\r\nDung lượng pin ấn tượng với 40 giờ dùng, tích hợp sạc nhanh Fast Fuel cho 3 giờ sử dụng thêm chỉ với 5 phút sạc\r\nBạn sẽ thoải mái sử dụng tai nghe Bluetooth suốt ngày dài mà không lo việc cạn năng lượng.', 'tn12.jpg', 1, '2022-05-16', '2022-05-16'),
(73, 4, 'Beats Studio3 Wireless MX422/ MX432 ', '5992000.00', 'Thiết kế sành điệu, có 2 phiên bản màu đen và màu đen đỏ hiện đại nổi bật, hợp với mọi người dùng\r\nTai nghe chụp tai Beats Studio3 Wireless MX422/ MX432 mặt ngoài bằng nhựa cao cấp bền tốt, mới lâu, đệm tai dày và êm ái, chuẩn tốt cho nhu cầu sử dụng lâu như dùng trong phòng thu…\r\n\r\nThiết kế đẹp - Tai nghe chụp tai Beats Studio3 Wireless MX422/ MX432\r\n\r\nThiết kế đặc biệt với khớp gấp gọn và hộp bảo quản, bạn dễ dàng mang theo thiết bị không dây này đến mọi nơi mà bạn muốn.\r\n\r\nDễ bảo quản - Tai nghe chụp tai Beats Studio3 Wireless MX422/ MX432\r\n\r\nChip Apple W1 được tích hợp trong tai nghe mang đến chất lượng âm thanh cải tiến ưu tú\r\nDải bass tốt hơn các phiên bản cũ, chất âm mạnh mẽ, giàu năng lượng, phù hợp với nhiều dòng nhạc pop, dance, hiphop,...\r\n\r\nÂm thanh chất lượng - Tai nghe chụp tai Beats Studio3 Wireless MX422/ MX432\r\n\r\nTai nghe chụp tai với công nghệ chống ồn chủ động Pure Active Noise Cancelling\r\nChống ồn hiệu quả, mang đến không gian thưởng thức âm nhạc đầy riêng tư, trọn vẹn.', 'tn13.jpg', 1, '2022-05-16', '2022-05-16'),
(74, 4, 'Galaxy Buds Pro Bạc', '4990000.00', 'Thiết kế sang trọng, thời thượng cùng hộp sạc đồng nhất màu sắc đi kèm\r\nTai nghe Bluetooth True Wireless Samsung Buds Pro sở hữu vẻ ngoài đẹp mắt thời thượng với hai màu đen và trắng. Thiết kế mới trên hình dạng tai nghe cổ điển, có khả năng làm giảm bớt sự khó chịu khi sử dụng tai nghe trong nhiều giờ và tai nghe cũng nằm chắc chắn phía trong tai khi bạn tập luyện hay vận động. Đồng thời, các lỗ thoát khí giúp cân bằng áp suất trong tai và tăng lưu lượng không khí, tạo cảm giác mềm mại dễ chịu khi sử dụng.\r\n\r\nTai nghe có thiết kế nhỏ gọn nên bạn dễ dàng bỏ vào túi xách, balo và mang theo bên mình di chuyển mọi nơi. Ngoài ra, có kèm theo núm tai nghe với ba kích thước cho người dùng dễ thay đổi sao cho phù hợp.\r\n\r\nTai nghe Bluetooth True Wireless Galaxy Buds Pro Bạc - Thiết kế\r\n\r\nHộp sạc gọn đẹp, phía bên trong tích hợp nam châm giữ củ tai an toàn, hạn chế thất lạc.\r\n\r\nTai nghe Bluetooth True Wireless Galaxy Buds Pro Bạc - Hộp sạc\r\n\r\nNghe rõ bất kỳ đâu cùng công nghệ chống ồn chủ động (ANC)\r\nTai nghe Samsung cho bạn thoải mái gọi điện và trò chuyện với đối tác, bạn bè mà không lo ngại tiếng ồn với công nghệ Active Noise Canceling lọc ấn tượng đến 99% tiếng ồn xung quanh. Bên cạnh đó, bạn có thể chọn các mức ANC để tăng hoặc giảm âm thanh phù hợp theo từng không gian tùy theo mức độ khác nhau. Nhờ đó, mang đến chất lượng cuộc gọi hoàn hảo nhất trên tai nghe không dây và truyền tải rõ ràng giọng nói, ngay cả khi bạn gọi điện ở nhà hay ở bên ngoài. \r\n\r\nTai nghe Bluetooth True Wireless Galaxy Buds Pro Bạc - Chống ồn Active Noise Cancelling\r\n\r\nHơn nữa, tai nghe còn có hệ thống 3 mic tích hợp và bộ phận thu nhận giọng nói (Voice Pickup Unit), giúp mọi từ ngữ đều được truyền tải một cách trọn vẹn nhất. Hơn nữa, trên tai nghe có giải pháp chắn gió hiện đại và tiên tiến giúp ngăn chặn âm thanh của gió khi đang gọi điện, cho bạn tận hưởng chất âm hoàn hảo hơn.', 'tn14.jpg', 1, '2022-05-16', '2022-05-16'),
(75, 4, 'Galaxy Buds Live R180 Gold', '1990000.00', 'Ngoại hình hoàn toàn mới, độc đáo riêng biệt\r\nSamsung Galaxy Buds Live R180 Gold có một tone màu đồng khá sang trọng, quyến rũ ở cả trong và ngoài, rất phù hợp cho phái nữ. Hộp sạc của tai nghe Samsung Galaxy Buds Live dạng mở nắp vỏ sò, trọng lượng 42.2 gram nhỏ gọn, người dùng có thể đóng mở bằng một tay khá dễ dàng.\r\n\r\nThiết kế độc đáo 252124\r\n\r\nPhần tai nghe có trọng lượng 5,6 gram, thiết kế công thái học khá vừa vặn giúp người sử dụng thoải mái khi đeo trong thời gian dài mà không bị đau tai. Bạn có thể vừa mang Galaxy Buds Live vừa tham gia các hoạt động như chạy bộ, tập gym mà không lo tai nghe bị rơi do phần housing của Galaxy Buds Live được Samsung chăm chút để mang lại sự ổn định khi đeo..\r\n\r\nTrải nghiệm âm thanh mới mẻ với âm thanh sống động và âm bass sâu lắng. \r\nChất âm của Galaxy Buds Live được đánh giá khá tốt. Nhờ sự kết hợp giữa loa 12mm được tinh chỉnh bởi AKG giúp tối ưu trải nghiệm nghe tốt hơn với âm thanh sống động và có độ vang. Bên cạnh đó, ống bass truyền tải xuyên suốt các âm trầm sâu lắng, mang lại trải nghiệm âm thanh mới mẻ cho người dùng.\r\n\r\nÂm thanh tốt 252124\r\n\r\nChất lượng đàm thoại được cải tiến ngay khi ở môi trường ồn ào\r\nChất lượng cuộc gọi là một trong những ưu điểm nổi bật của Samsung Galaxy Buds Live. Với hệ thống 3 mic cải tiến và Bộ thu nhận giọng nói (Voice Pickup Unit), Galaxy Buds Live mang đến cho bạn chất lượng cuộc gọi tốt nhất dù đang ở ngoài đường hay trong một môi trường ồn ào.', 'tn15.jpg', 1, '2022-05-16', '2022-05-16'),
(76, 4, 'Galaxy Buds 2 R177N Trắng', '2990000.00', 'Thiết kế hiện đại, sang trọng và tinh tế với gam màu trắng thuần khiết\r\nCả bên trong lẫn bên ngoài của hộp sạc đều mang cùng một tone màu trắng, đơn giản nhưng sang trọng và tinh tế chính là xu hướng ngày nay của giới trẻ.\r\n\r\nTrọng lượng chỉ khoảng 5 gram được thiết kế các đường cong bo tròn mềm mại. Sản phẩm đi kèm 3 đầu nút silicon với 3 kích cỡ khác nhau vừa khít với mọi dáng tai, dễ chịu dù sử dụng cả ngày dài.\r\n\r\nThiết kế sang trọng, tinh tế | Tai nghe Bluetooth True Wireless Samsung Galaxy Buds 2 R177N Trắng\r\n\r\nChất lượng âm thanh chuẩn studio với loa 2 chiều AKG\r\nThoả sức đắm mình trong các giai điệu từ ballad da diết, thiết tha đến những đoạn nhạc EDM sống động với Galaxy Buds 2, chất lượng âm thanh từ âm trầm sâu lắng đến âm cao bay bổng được cân bằng một cách hoàn hảo giúp cho trải nghiệm nghe càng thêm phong phú như trong rạp chiếu phim hay nhà hát.\r\n\r\nÂm thanh chuẩn studio với loa 2 chiều AKG | Tai nghe Bluetooth True Wireless Samsung Buds 2 R177N Trắng Buds \r\n\r\nChất lượng đàm thoại to rõ, trong trẻo\r\nTai nghe Bluetooth được tích hợp ba micro và bộ phận cảm biến nhận diện giọng nói cùng tính năng lọc tạp âm sẽ giúp truyền tải mọi lời bạn nói, chất lượng cuộc gọi cũng được nâng cao. Bề mặt tai nghe được thiết kế tương đối phẳng, không nhô ra ngoài nhiều sẽ hạn chế việc tiếp xúc với gió giúp cho cuộc hội thoại ngoài thời liền mạch và trọn vẹn hơn.\r\n\r\nChất lượng đàm thoại to rõ | Tai nghe Bluetooth True Wireless Samsung Galaxy Buds 2 R177N Trắng\r\n\r\nTính năng chống ồn hiệu quả lên đến 98% nhờ công nghệ chống ồn chủ động (ANC)\r\nCông nghệ chống ồn chủ động (ANC) hoạt động vượt trội cho phép bạn chìm đắm trong không gian riêng của mình để thưởng thức những bài nhạc du dương hay những trận game gây cấn cùng đồng đội.', 'tn16.jpg', 1, '2022-05-16', '2022-05-16');
INSERT INTO `tbl_product` (`product_id`, `category_id`, `name`, `price`, `detail`, `image`, `status`, `created`, `modified`) VALUES
(77, 4, 'Galaxy Buds 2 R177N', '2990000.00', 'Galaxy Buds 2 R177N nhỏ nhẹ, 3 phiên bản thời thượng\r\nBao phủ bên ngoài mỗi hộp sạc Galaxy Buds 2 R177N là gam màu trắng thuần khiết, khi mở hộp ra, tràn khắp mặt trong hộp và housing là những màu sắc độc đáo, tuyệt đẹp gồm đen Graphite, tím Lavender và xanh Olive.\r\n\r\nKiểu dáng hộp sạc gọn gàng, các cạnh bo tròn mềm mại, housing kiểu in-ear nhỏ nhắn, chỉ 5 gram sử dụng nút tai silicone 3 kích cỡ êm ái cho bạn đeo tai nghe vừa khít, dễ chịu, không cấn, đau ngay cả khi đeo trong thời gian dài. \r\n\r\nTai nghe Bluetooth True Wireless Samsung Galaxy Buds 2 R177N - Galaxy Buds 2 R177N nhỏ nhẹ, 3 phiên bản thời thượng\r\n\r\nÂm thanh studio sống động với loa 2 chiều AKG\r\nTai nghe True Wireless hỗ trợ 2 driver Woofer và Tweeter tinh chỉnh âm thanh bởi AKG, tái tạo các dải âm tách bạch, âm trầm sâu dày, nghe được nhiều thể loại nhạc khác nhau.\r\n\r\nTai nghe Bluetooth True Wireless Samsung Galaxy Buds 2 R177N - Âm thanh studio sống động với loa 2 chiều AKG\r\n\r\nChọn âm thanh bạn muốn nghe với công nghệ chống ồn chủ động (ANC)\r\nTai nghe Bluetooth có 2 micro phát hiện và chủ động chặn tiếng ồn xung quanh đến 98%, cho bạn tập trung vào công việc, âm nhạc mà mình đang thưởng thức dù đang ở trong nhà hoặc ngoài quán cà phê.\r\n\r\nBên cạnh đó còn có chế độ âm thanh xung quanh Ambient Sound với 3 cấp độ tùy chỉnh là cao - trung bình - thấp để bạn nghe âm thanh xung quanh phù hợp với mình nhất. ', 'tn17.jpg', 1, '2022-05-16', '2022-05-16'),
(78, 4, 'Level U Pro BN920C', '1450000.00', 'Tai nghe Bluetooth Samsung Level U Pro BN920C được thiết kế sang trọng\r\nToàn thân tai nghe được gia công bằng vỏ nhựa và cao su, phần cao su sẽ giúp tai nghe tiếp xúc với da trơn hơn, thoải mái hơn.\r\n\r\nTai nghe Bluetooth Samsung Level U Pro BN920C - Thiết kế\r\n\r\nTrọng lượng tai nghe Samsung nhẹ, không làm mỏi cổ hay làm khó chịu cho người đeo.\r\n\r\nTai nghe Bluetooth Samsung Level U Pro BN920C có trọng lượng nhẹ\r\n\r\nHai đầu tai nghe hít nam châm\r\nPhần đầu hít này giúp tai nghe không bị rớt ra khỏi cổ của bạn khi tạm thời không dùng đến.\r\n\r\nTai nghe Bluetooth Samsung Level U Pro BN920C - 2 đầu tai nghe hít nam châm\r\n\r\nCông nghệ lọc tiếng ồn thông minh\r\n2 mic với 2 công nghệ NR giảm tiếng ồn và EC giảm tiếng vang, phân biệt giọng nói của bạn với tiếng nói ồn bên ngoài, mang đến chất lượng cuộc gọi rõ nét nhất.\r\n\r\nTai nghe Bluetooth Samsung Level U Pro BN920C - Công nghệ lọc tiếng ồn thông minh\r\n\r\nTai nghe Bluetooth thể hiện chính xác những âm thanh, bass, treble của bài hát tới tai của bạn\r\nTai nghe Bluetooth Samsung Level U Pro BN920C - Âm thanh chất lượng\r\n\r\nTính năng rung khi có cuộc gọi đến giúp bạn không bỏ lỡ các cuộc gọi quan trọng.\r\n\r\nTai nghe Bluetooth Samsung Level U Pro BN920C\r\n\r\nPin trâu, sử dụng được cho mọi nhu cầu\r\nTai nghe cho thời gian sử dụng khoảng 9 giờ nghe nhạc, 9 giờ đàm thoại và 300 giờ ở chế độ chờ.\r\n\r\nTai nghe Bluetooth Samsung Level U Pro BN920C - Sử dụng được cho mọi nhu cầu\r\n\r\nKết nối với 2 tai nghe cùng một lúc, chia sẻ âm nhạc', 'tn18.jpg', 1, '2022-05-16', '2022-05-16'),
(79, 4, 'Sony WF-SP800N', '4090000.00', 'Thiết kế sang trọng, mang phong cách thể thao trẻ trung, năng động, 2 lựa chọn màu sắc đen, xanh dương\r\nTai nghe True Wireless Sony WF-SP800N với hộp sạc bằng nhựa được hoàn thiện sần bề mặt để cầm thật chắc chắn. Kích thước gọn gàng và nhẹ, dễ cho vào túi xách, balo. \r\n\r\nXem thêm: Tai nghe True Wireless là gì? Ưu nhược điểm thế nào? Có nên mua không?\r\n\r\nThiết kế đẹp - Tai nghe Bluetooth True Wireles Sony WF-SP800N\r\n\r\nPhần tai nghe thiết kế đồng điệu với hộp sạc trông rất trẻ trung, đẹp mắt, kèm vành silicone thêm chắc chắn khi đeo\r\nNhờ vành cao su trong suốt này, tai nghe được gắn chắc chắn hơn với tai khi sử dụng mà vẫn đảm bảo sự êm ái, bạn thật an tâm cho những hoạt động thể thao luyện tập mạnh hay dùng tai nghe khi di chuyển. Tặng kèm 3 cặp đệm tai khác kích cỡ, 1 cặp vành tai (móc tai).\r\n\r\nTai nghe gọn đẹp, trẻ trung - Tai nghe Bluetooth True Wireles Sony WF-SP800N\r\n\r\nTrải nghiệm âm bass trầm sâu lắng và mạnh mẽ với chuẩn âm thanh Extra Bass độc quyền của Sony\r\nSẽ thật tuyệt cho những bản nhạc đầy sôi động.\r\n\r\nÂm bass chất lượng từ Sony - Tai nghe Bluetooth True Wireles Sony WF-SP800N\r\n\r\nHỗ trợ 360 Reality Audio\r\nCho âm thành vòm sống động, trải nghiệm không gian âm nhạc thật như cuộc sống. Người dùng sử dụng mã bản quyền kèm thiết bị để kích hoạt ứng dụng.', 'tn3.jpg', 1, '2022-05-16', '2022-05-16'),
(80, 4, 'Sony WF-1000XM3', '4090000.00', 'Tai nghe Bluetooth TWS Sony WF-1000XM3SME có thiết kế tiện dụng, tiếp xúc với ba điểm khác nhau trên tai bạn, mang lại cảm giác thoải mái, chắc chắn, phù hợp cho mọi lứa tuổi.\r\n• Tai nghe Sony có bề mặt cao su với độ ma sát cao giữ cho tai nghe chống ồn vừa khít và chắc chắn trong tai bạn để chúng không bất ngờ bị trượt ra ngoài.\r\n\r\n• Sử dụng công nghệ không dây Bluetooth và thiết kế tiện dụng vừa vặn mang lại sự thoải mái cả ngày dài, tai nghe có công nghệ chống ồn HD-QN1 cho bạn sự tự do đích thực của công nghệ không dây.\r\n\r\n• Công nghệ cảm biến tiếng ồn kép với một micro thu âm phía trước và một micro ở phía sau trên bề mặt tai nghe sẽ thu âm thanh xung quanh tốt hơn, cho dù đó là tiếng ồn trên máy bay, tiếng xe cộ trong thành phố hay tiếng trò chuyện trong văn phòng.\r\n\r\n• Kết nối không dây tiên tiến trên WF-1000XM3 hỗ trợ âm thanh kỹ thuật số HX (DSEE HX™) và đồng bộ hóa chính xác hình ảnh hiển thị trên màn hình với âm thanh phát qua tai nghe, mang lại trải nghiệm xem thú vị hơn.\r\n\r\n• Khi sạc đầy, tai nghe Bluetooth có thể hoạt động trong 8 giờ và hộp sạc tiện dụng cung cấp năng lượng 24 giờ, giúp tai nghe hoạt động suốt cả ngày. Nếu tai nghe sắp hết pin, chỉ cần sạc nhanh 10 phút trong hộp sạc là bạn đã có tối đa 90 phút phát nhạc. ', 'tn4.jpg', 1, '2022-05-16', '2022-05-16'),
(81, 4, 'Sony WI-1000XM2', '6990000.00', 'Tai nghe Sony kích thước nhỏ gọn, sang trọng, tinh tế, với thiết kế đeo vòng cổ dây silicone mềm dẻo, thoải mái sử dụng suốt ngày dài\r\nSản phẩm có màu đen sang trọng hợp với mọi độ tuổi, giới tính.\r\n\r\nThiết kế sang đẹp, tiện dụng - Tai nghe EP Bluetooth Sony WI-1000XM2\r\n\r\nCấu tạo tai nghe có độ tạo góc giúp kết nối sâu hơn và chắc chắn hơn với tai người dùng, không lo lỏng rớt khi di chuyển, vận động. Đi kèm tai nghe là 3 cặp đệm tai êm ái tiện dụng.\r\n\r\nVừa vặn, chắc chắn - Tai nghe EP Bluetooth Sony WI-1000XM2\r\n\r\nChống rối dây với hai miếng đệm tai từ tính\r\nGắn tai nghe lại với nhau khi không sử dụng, gọn gàng, thoải mái và dễ bảo quản.\r\n\r\nChống rối - Tai nghe EP Bluetooth Sony WI-1000XM2\r\n\r\nTai nghe Bluetooth kết nối không dây ổn định với điện thoại, tablet, laptop nhờ công nghệ Bluetooth 5.0 trong phạm vi đến 10 m\r\nSản phẩm phù hợp với hệ điều hành Android, Windows, iOS, kết nối nhanh chóng và ổn định, đáp ứng nhu cầu đa dạng của người dùng.', 'tn2.jpg', 1, '2022-05-16', '2022-05-16'),
(82, 4, 'Sony WH-XB910N Đen', '4590000.00', 'Tai nghe chụp tai không dây năng động, có thể gấp gọn dễ dàng\r\nThiết kế tai nghe gọn đẹp đến từng chi tiết, thanh trượt dễ dàng điều chỉnh đến 3.6 cm để đeo vừa khít với vùng đầu của bạn, sử dụng miếng đệm tai hình bầu dục mềm mại, kích thước tối ưu đảm bảo sự êm ái khi đeo trong thời gian dài. \r\n\r\nTai nghe chụp tai Bluetooth Sony WH-XB910N Đen - Tai nghe chụp tai không dây năng động\r\n\r\nKhi không sử dụng, bạn có thể xoay vành tai nghe vào bên trong cất trong bao đựng chuyên dụng đi kèm, tiện mang theo đến bất kỳ nơi nào bạn muốn. \r\n\r\nTai nghe chụp tai Bluetooth Sony WH-XB910N Đen - Xoay vành tai nghe vào bên trong cất trong bao đựng chuyên dụng\r\n\r\nChất âm sâu lắng, mạnh mẽ cùng công nghệ Extra Bass\r\nCông nghệ này gia tăng chất lượng những âm sắc ở tần số thấp để tái tạo âm trầm dày khỏe hơn, nhịp điệu chính xác đồng thời giữ được độ rõ của giọng hát cho bạn trải nghiệm nghe trọn vẹn. 360 Reality Audio đem đến âm thanh ngập tràn, chân thật như bạn đang ở bên nghệ sĩ trong phòng thu âm.\r\n\r\nTai nghe chụp tai Bluetooth Sony WH-XB910N Đen - Chất âm sâu lắng, mạnh mẽ cùng công nghệ Extra Bass\r\n\r\nCơ chế tăng cường âm thanh kỹ thuật số (DSEE) giúp khôi phục trung thực những thành phần tần số cao bị mất đi trong nguồn nhạc gốc khi ở dạng nén, tạo ra chất âm gần gũi hơn với bản nhạc gốc, âm thanh thêm sắc nét, phong phú. \r\n\r\nTrọn niềm vui với âm nhạc qua công nghệ chống ồn Active Noise Cancelling (ANC)\r\nTích hợp cảm biến giảm ồn cho thế giới trở nên tĩnh lặng để bạn đắm mình trong giai điệu du dương gây nghiện mà mình đang thưởng thức khi ngồi trong quán cà phê, ở trường học, bến xe buýt,...\r\n\r\nTai nghe chụp tai Bluetooth Sony WH-XB910N Đen - Trọn niềm vui với âm nhạc qua công nghệ chống ồn Active Noise Cancelling (ANC)\r\n\r\nNhờ có 2 mic chuyển tiếp và phản hồi, tai nghe có thể thu được nhiều âm thanh môi trường hơn, nên khi chọn tính năng Ambient Sound âm thanh xung quanh bạn có thể vừa nghe nhạc vừa duy trì kết nối với môi trường quanh mình.\r\n\r\nTai nghe chụp tai Bluetooth Sony WH-XB910N Đen - Thanh trượt dễ dàng điều chỉnh đến 3.6 cm\r\n\r\nKết nối không dây liền mạch với công nghệ Bluetooth 5.2 \r\nTai nghe Sony phối ghép đa dạng thiết bị vận hành trên hệ điều hành Android, iOS, Windows, MacOS, kết nối qua đường truyền không dây Bluetooth 5.2 với khoảng cách truyền xa đến 10 m, độ trễ thấp, giảm hao phí năng lượng tối đa cho bạn tha hồ trải nghiệm âm nhạc với chất lượng cao mọi lúc mọi nơi. Tai nghe có cả dây 3.5 mm cho phép bạn nghe nhạc qua dây tiện lợi khi cần. ', 'tn19.jpg', 1, '2022-05-16', '2022-05-16'),
(83, 4, 'Sony WH-XB900N', '5790000.00', 'Tai nghe chụp tai Bluetooth Sony WH-XB900N mang thiết kế hiện đại, sang trọng, thu hút sự yêu thích của mọi đối tượng người dùng\r\nMặt ngoài bền đẹp, ít bám vân tay, trọng lượng nhẹ dễ dàng để người dùng mang theo trong hành trang thường nhật.\r\n\r\nThiết kế đẹp - Tai nghe chụp tai Bluetooth Sony WH-XB900N\r\n\r\n2 phiên bản màu sắc xanh dương và đen đều tuyệt đẹp, với thiết kế siêu gấp gọn việc bảo quản tai nghe thật đơn giản.\r\n\r\nGấp gọn tiện dụng - Tai nghe chụp tai Bluetooth Sony WH-XB900N\r\n\r\nTai nghe chụp tai với công nghệ EXTRA BASS đem lại chất âm to, rõ, âm bass dày và chắc, chống ồn kỹ thuật số hoàn hảo\r\nMang đến trải nghiệm âm nhạc riêng tư đầy hứng thú, ấn tượng và đã tai, cho mọi thể loại âm nhạc mà bạn yêu thích.\r\n\r\nÂm thanh ấn tượng - Tai nghe chụp tai Bluetooth Sony WH-XB900N\r\n\r\nÂm thanh chân thực và đầy mê đắm như trong không gian buổi hòa nhạc trực tiếp hay phòng thu âm nghệ sĩ với 360 Reality Audio\r\nTai nghe với đệm tai êm và kín, thoải mái khi nghe nhạc và hạn chế tạp âm từ môi trường bên ngoài giúp bạn nghe bản nhạc trọn vẹn hơn.\r\n\r\n360 Reality Audio - Tai nghe chụp tai Bluetooth Sony WH-XB900N\r\n\r\nTai nghe Sony kết nối không dây hiện đại với thiết bị phát nhạc của bạn\r\n- Kết nối Bluetooth 4.2 với khoảng cách kết nối đến 10 m, tương thích với mọi điện thoại thông minh.\r\n\r\n- Công nghệ Giao tiếp tầm ngắn (NFC): Kết nối 1 chạm với thiết bị có chức năng NFC. Chỉ cần chạm thiết bị vào tai nghe để kết nối nhanh và dễ dàng (phải bật Bluetooth trên điện thoại).', 'tn20.jpg', 0, '2022-05-16', '2022-05-17');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_state`
--

CREATE TABLE `tbl_state` (
  `state_id` int(11) NOT NULL,
  `state` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_state`
--

INSERT INTO `tbl_state` (`state_id`, `state`) VALUES
(1, 'Chưa xử lý'),
(2, 'Đã xử lý'),
(3, 'Đã thanh toán');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_type`
--

CREATE TABLE `tbl_type` (
  `type_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_type`
--

INSERT INTO `tbl_type` (`type_id`, `type`) VALUES
(1, 'Trực tiếp'),
(2, 'Qua tài khoản');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created` date NOT NULL,
  `modified` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `username`, `password`, `fullname`, `email`, `status`, `created`, `modified`) VALUES
(1, 'tiennhat', '6b99301ded3c4f3bdac694372543a5c9', 'La Tiến Nhật', 'nhatmeo@gmail.com', 1, '2022-05-02', '2022-05-02'),
(2, 'dangkhoa', 'e10adc3949ba59abbe56e057f20f883e', 'Nguyễn Đăng Khoa', 'dangkhoa@gmail.com', 1, '2022-05-02', '2022-05-02'),
(3, 'nhatphuoc', 'e10adc3949ba59abbe56e057f20f883e', 'Võ Nhật Phước', 'nhatphuoc@gmail.com', 1, '2022-05-02', '2022-05-02'),
(4, 'yenvy', 'e10adc3949ba59abbe56e057f20f883e', 'Đặng Yến Vy', 'yenvy@gmail.com', 1, '2022-05-02', '2022-05-02'),
(5, 'linhhuynh', 'e10adc3949ba59abbe56e057f20f883e', 'Huỳnh Thị Linh', 'linhhuynh@gmail.com', 1, '2022-05-17', '2022-05-17'),
(7, 'minhtam', 'e10adc3949ba59abbe56e057f20f883e', 'Trần Thị Minh Tâm', 'thongtranr27@gmail.com', 1, '2022-05-17', '2022-05-17'),
(8, '123', 'truc', 'thanhtruc@gmail.com', '1', 0, '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vaitro`
--

CREATE TABLE `tbl_vaitro` (
  `vaitro_id` int(11) NOT NULL,
  `tenvaitro` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_vaitro`
--

INSERT INTO `tbl_vaitro` (`vaitro_id`, `tenvaitro`) VALUES
(1, 'Nhân viên kho'),
(2, 'Nhân viên bán hàng'),
(3, 'Quản lý chi nhánh'),
(4, 'Nhân viên quản lý sản phẩm'),
(5, 'Nhân viên quản lý người dùng');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tbl_bill`
--
ALTER TABLE `tbl_bill`
  ADD PRIMARY KEY (`bill_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `type_id` (`type_id`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_cart_detail`
--
ALTER TABLE `tbl_cart_detail`
  ADD PRIMARY KEY (`cart_id`,`product_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_chinhanh`
--
ALTER TABLE `tbl_chinhanh`
  ADD PRIMARY KEY (`chinhanh_id`);

--
-- Indexes for table `tbl_chitietphanquyen`
--
ALTER TABLE `tbl_chitietphanquyen`
  ADD PRIMARY KEY (`vaitro_id`,`phanquyen_id`),
  ADD KEY `phanquyen_id` (`phanquyen_id`);

--
-- Indexes for table `tbl_chitietsanpham`
--
ALTER TABLE `tbl_chitietsanpham`
  ADD PRIMARY KEY (`product_id`,`chinhanh_id`);

--
-- Indexes for table `tbl_detail`
--
ALTER TABLE `tbl_detail`
  ADD PRIMARY KEY (`order_id`,`product_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `tbl_khuyenmai`
--
ALTER TABLE `tbl_khuyenmai`
  ADD PRIMARY KEY (`khuyenmai_id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `state_id` (`state_id`);

--
-- Indexes for table `tbl_phanquyen`
--
ALTER TABLE `tbl_phanquyen`
  ADD PRIMARY KEY (`phanquyen_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `tbl_state`
--
ALTER TABLE `tbl_state`
  ADD PRIMARY KEY (`state_id`);

--
-- Indexes for table `tbl_type`
--
ALTER TABLE `tbl_type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tbl_vaitro`
--
ALTER TABLE `tbl_vaitro`
  ADD PRIMARY KEY (`vaitro_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_bill`
--
ALTER TABLE `tbl_bill`
  MODIFY `bill_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_chinhanh`
--
ALTER TABLE `tbl_chinhanh`
  MODIFY `chinhanh_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_khuyenmai`
--
ALTER TABLE `tbl_khuyenmai`
  MODIFY `khuyenmai_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `tbl_phanquyen`
--
ALTER TABLE `tbl_phanquyen`
  MODIFY `phanquyen_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `tbl_state`
--
ALTER TABLE `tbl_state`
  MODIFY `state_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_type`
--
ALTER TABLE `tbl_type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_vaitro`
--
ALTER TABLE `tbl_vaitro`
  MODIFY `vaitro_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_bill`
--
ALTER TABLE `tbl_bill`
  ADD CONSTRAINT `tbl_bill_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `tbl_order` (`order_id`),
  ADD CONSTRAINT `tbl_bill_ibfk_2` FOREIGN KEY (`type_id`) REFERENCES `tbl_type` (`type_id`);

--
-- Constraints for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD CONSTRAINT `tbl_cart_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`user_id`);

--
-- Constraints for table `tbl_cart_detail`
--
ALTER TABLE `tbl_cart_detail`
  ADD CONSTRAINT `tbl_cart_detail_ibfk_1` FOREIGN KEY (`cart_id`) REFERENCES `tbl_cart` (`cart_id`),
  ADD CONSTRAINT `tbl_cart_detail_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `tbl_product` (`product_id`);

--
-- Constraints for table `tbl_chitietphanquyen`
--
ALTER TABLE `tbl_chitietphanquyen`
  ADD CONSTRAINT `tbl_chitietphanquyen_ibfk_1` FOREIGN KEY (`vaitro_id`) REFERENCES `tbl_vaitro` (`vaitro_id`),
  ADD CONSTRAINT `tbl_chitietphanquyen_ibfk_2` FOREIGN KEY (`phanquyen_id`) REFERENCES `tbl_phanquyen` (`phanquyen_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
