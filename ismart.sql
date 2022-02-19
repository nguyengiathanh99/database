-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2022 at 06:22 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ismart`
--

-- --------------------------------------------------------

--
-- Table structure for table `products_menu`
--

CREATE TABLE `products_menu` (
  `id` int(11) NOT NULL,
  `product_cat` varchar(50) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products_menu`
--

INSERT INTO `products_menu` (`id`, `product_cat`, `parent_id`, `level`) VALUES
(1, 'Điện thoại', 0, 0),
(2, 'Laptop', 0, 0),
(3, 'Tablet', 0, 0),
(4, 'Phụ kiện', 0, 0),
(5, 'Đồ gia dụng', 0, 0),
(6, 'Đồng hồ thông minh', 0, 0),
(7, 'Máy cũ giá rẻ', 0, 0),
(8, 'iPhone', 1, 0),
(9, 'Samsung', 1, 0),
(10, 'Xiaomi', 1, 0),
(11, 'Oppo', 1, 0),
(12, 'Macbook', 2, 0),
(13, 'Asus', 2, 0),
(14, 'Dell', 2, 0),
(15, 'Acer', 2, 0),
(16, 'Lenovo', 2, 0),
(17, 'iPad', 3, 0),
(18, 'Samsung', 3, 0),
(19, 'Xiaomi', 3, 0),
(20, 'Huawei', 3, 0),
(21, 'Phụ kiện di động', 4, 0),
(22, 'Phụ kiện laptop', 4, 0),
(23, 'Thiết bị di động', 4, 0),
(24, 'Nồi cơm điện', 5, 0),
(25, 'Quạt điều hòa', 5, 0),
(26, 'Máy ép trái cây', 5, 0),
(27, 'Máy xay sinh tố', 5, 0),
(28, 'Apple', 6, 0),
(29, 'Samsung', 6, 0),
(30, 'Xiaomi', 6, 0),
(31, 'Xiaomi', 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `gender` enum('male','female') NOT NULL,
  `email` varchar(100) NOT NULL,
  `numphone` int(11) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `fullname`, `username`, `password`, `gender`, `email`, `numphone`, `address`) VALUES
(1, 'Nguyễn Gia Thành', 'GiaThanh', 'c40978ef0ef207d04f635eaa8ae78a94', 'male', 'Nguyengiathanh1999@gmail.com', 985117370, 'Sơn Tây - Hà Nội'),
(2, 'Trần Thị Nguyên', 'NguyenTran', '1c50251dd2edcd3862d94d7c6b3791dc', 'female', 'nguyentran247@gmail.com', 985119090, 'Ba Vì'),
(4, 'GiaThanh', 'Cityhunter', '48d415e64ef014009ccf33494da4a28d', 'male', 'nguyengiathanh1999@gmail.com', 985117370, 'Xuân Khanh');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products_menu`
--
ALTER TABLE `products_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products_menu`
--
ALTER TABLE `products_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
