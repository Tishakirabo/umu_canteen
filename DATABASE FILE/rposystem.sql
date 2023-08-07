-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 17, 2022 at 11:33 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rposystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `rpos_admin`
--

CREATE TABLE `rpos_admin` (
  `admin_id` varchar(200) NOT NULL,
  `admin_name` varchar(200) NOT NULL,
  `admin_email` varchar(200) NOT NULL,
  `admin_password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rpos_admin`
--

INSERT INTO `rpos_admin` (`admin_id`, `admin_name`, `admin_email`, `admin_password`) VALUES
('10e0b6dc958adfb5b094d8935a13aeadbe783c25', 'System Admin', 'admin@gmail.com', '903b21879b4a60fc9103c3334e4f6f62cf6c3a2d');

-- --------------------------------------------------------

--
-- Table structure for table `rpos_customers`
--

CREATE TABLE `rpos_customers` (
  `customer_id` varchar(200) NOT NULL,
  `customer_name` varchar(200) NOT NULL,
  `customer_phoneno` varchar(200) NOT NULL,
  `customer_email` varchar(200) NOT NULL,
  `customer_password` varchar(200) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rpos_customers`
--

INSERT INTO `rpos_customers` (`customer_id`, `customer_name`, `customer_phoneno`, `customer_email`, `customer_password`, `created_at`) VALUES
('4a38e372c719', 'Customer', '0775262383', 'customer@gmail.com', '51cd91ab70d4dd85eddcd7cad6b396eeb5102c95', '2022-10-14 07:50:19.874522'),
('deb856d23500', 'Guest', '0000000000', 'guest@gmail.com', '73f7f124da2dc4b8f06488973b3a86b86dcfede0', '2022-10-13 12:28:33.874764');

-- --------------------------------------------------------

--
-- Table structure for table `rpos_orders`
--

CREATE TABLE `rpos_orders` (
  `order_id` varchar(200) NOT NULL,
  `order_code` varchar(200) NOT NULL,
  `customer_id` varchar(200) NOT NULL,
  `customer_name` varchar(200) NOT NULL,
  `prod_id` varchar(200) NOT NULL,
  `prod_name` varchar(200) NOT NULL,
  `prod_price` varchar(200) NOT NULL,
  `prod_qty` varchar(200) NOT NULL,
  `order_status` varchar(200) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rpos_orders`
--

INSERT INTO `rpos_orders` (`order_id`, `order_code`, `customer_id`, `customer_name`, `prod_id`, `prod_name`, `prod_price`, `prod_qty`, `order_status`, `created_at`) VALUES
('16afb849c8', 'BTQA-1376', 'deb856d23500', 'Guest', '89ca8147e3', 'Local Juice', '1500', '2', 'Paid', '2022-10-17 08:48:38.941318'),
('56a0c17fc4', 'WEOZ-5389', '4a38e372c719', 'Customer', '142971779e', 'Pepsi Max', '1800', '5', 'Paid', '2022-10-17 08:55:00.604047'),
('761388d2a1', 'PIXT-3140', 'deb856d23500', 'Guest', '1c41c86519', 'Cakes', '55000', '1', 'Paid', '2022-10-17 08:40:21.934231'),
('78d75fd7ff', 'FSRK-2873', 'deb856d23500', 'Guest', '265b918bdc', 'Mirinda', '2000', '2', 'Paid', '2022-10-17 08:49:51.044408'),
('df12627320', 'MXTN-9271', '4a38e372c719', 'Customer', '1c41c86519', 'Cakes', '55000', '1', 'Paid', '2022-10-17 09:29:08.323980'),
('fff57e7256', 'MKJA-5410', 'deb856d23500', 'Guest', 'f9c2770a32', 'Whipped Milk Shake', '1500', '2', 'Paid', '2022-10-13 12:31:02.306526');

-- --------------------------------------------------------

--
-- Table structure for table `rpos_pass_resets`
--

CREATE TABLE `rpos_pass_resets` (
  `reset_id` int(20) NOT NULL,
  `reset_code` varchar(200) NOT NULL,
  `reset_token` varchar(200) NOT NULL,
  `reset_email` varchar(200) NOT NULL,
  `reset_status` varchar(200) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rpos_payments`
--

CREATE TABLE `rpos_payments` (
  `pay_id` varchar(200) NOT NULL,
  `pay_code` varchar(200) NOT NULL,
  `order_code` varchar(200) NOT NULL,
  `customer_id` varchar(200) NOT NULL,
  `pay_amt` varchar(200) NOT NULL,
  `pay_method` varchar(200) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rpos_payments`
--

INSERT INTO `rpos_payments` (`pay_id`, `pay_code`, `order_code`, `customer_id`, `pay_amt`, `pay_method`, `created_at`) VALUES
('19d585', '1234567890', 'MKJA-5410', 'deb856d23500', '3000', 'Cash', '2022-10-13 12:31:02.243334'),
('2e0fc9', 'QBJM5DFESC', 'WEOZ-5389', '4a38e372c719', '9000', 'Mobile Money', '2022-10-17 08:55:00.532013'),
('85d275', 'G1YZ2NJ45K', 'MXTN-9271', '4a38e372c719', '55000', 'Cash', '2022-10-17 09:29:08.293166'),
('a798be', 'WV3GJCXK18', 'PIXT-3140', 'deb856d23500', '55000', 'Cash', '2022-10-17 08:40:21.900014'),
('ce862a', 'BRGXJ1V23P', 'OSTB-9715', 'd9e50d7d9b15', '24', 'Cash', '2022-10-13 12:11:45.992919'),
('d7981d', '9VWCONMRHU', 'BTQA-1376', 'deb856d23500', '3000', 'Cash', '2022-10-17 08:48:38.889772'),
('e2ad1c', 'GEHXN3SJ2Q', 'FSRK-2873', 'deb856d23500', '4000', 'Cash', '2022-10-17 08:49:51.013368');

-- --------------------------------------------------------

--
-- Table structure for table `rpos_products`
--

CREATE TABLE `rpos_products` (
  `prod_id` varchar(200) NOT NULL,
  `prod_code` varchar(200) NOT NULL,
  `prod_name` varchar(200) NOT NULL,
  `prod_img` varchar(200) NOT NULL,
  `prod_desc` longtext NOT NULL,
  `prod_price` varchar(200) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rpos_products`
--

INSERT INTO `rpos_products` (`prod_id`, `prod_code`, `prod_name`, `prod_img`, `prod_desc`, `prod_price`, `created_at`) VALUES
('142971779e', 'CUSX-1695', 'Pepsi Max', 'pepsi max.jfif', 'Zero Sugar', '1800', '2022-10-17 08:16:26.279574'),
('1c41c86519', 'GVOD-6428', 'Cakes', 'bdcakes.jfif', 'Marvelous', '55000', '2022-10-17 08:20:36.866264'),
('2117256241', 'NRCU-2941', 'Ice cold Coke', 'coke.jfif', 'Enjoy an Ice cold Coke', '2000', '2022-10-17 08:10:40.527386'),
('265b918bdc', 'QXGD-6398', 'Mirinda', 'mirinda.jpg', 'Fruity', '2000', '2022-10-17 08:12:53.445373'),
('5d57a7b656', 'EABY-7892', 'Fanta', 'fanta.png', 'Cold Fanta', '2000', '2022-10-17 08:12:02.137247'),
('7bcb90d346', 'WFEM-6475', 'Mirinda Lemon', 'Mirinda lemon.jfif', 'Lemon Juice', '2500', '2022-10-17 08:13:53.725572'),
('878070679e', 'RBPW-7924', 'Pepsi ', 'pepsi.jfif', 'Pepsi Product 330ml', '1800', '2022-10-17 08:17:20.860590'),
('89ca8147e3', 'DYZR-3475', 'Local Juice', 'frappuccino.jpg', 'Locally made', '1500', '2022-10-17 07:17:21.946283'),
('e01228c03d', 'WBOI-5284', 'Birthday Cakes', 'cakes.jfif', 'Super Birthday Cakes', '35000', '2022-10-17 08:19:20.840219'),
('f9c2770a32', 'YXLA-2603', 'Whipped Milk Shake', '', 'Dairy Milk', '1500', '2022-10-13 12:20:20.854572');

-- --------------------------------------------------------

--
-- Table structure for table `rpos_staff`
--

CREATE TABLE `rpos_staff` (
  `staff_id` int(20) NOT NULL,
  `staff_name` varchar(200) NOT NULL,
  `staff_number` varchar(200) NOT NULL,
  `staff_email` varchar(200) NOT NULL,
  `staff_password` varchar(200) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rpos_staff`
--

INSERT INTO `rpos_staff` (`staff_id`, `staff_name`, `staff_number`, `staff_email`, `staff_password`, `created_at`) VALUES
(3, 'Cashier', 'SBNI-1752', 'cashier@gmail.com', '3a0340ace48787ac69ad6b2db3370a326f85fa5b', '2022-10-14 07:49:37.511556');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `rpos_admin`
--
ALTER TABLE `rpos_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `rpos_customers`
--
ALTER TABLE `rpos_customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `rpos_orders`
--
ALTER TABLE `rpos_orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `CustomerOrder` (`customer_id`),
  ADD KEY `ProductOrder` (`prod_id`);

--
-- Indexes for table `rpos_pass_resets`
--
ALTER TABLE `rpos_pass_resets`
  ADD PRIMARY KEY (`reset_id`);

--
-- Indexes for table `rpos_payments`
--
ALTER TABLE `rpos_payments`
  ADD PRIMARY KEY (`pay_id`),
  ADD KEY `order` (`order_code`);

--
-- Indexes for table `rpos_products`
--
ALTER TABLE `rpos_products`
  ADD PRIMARY KEY (`prod_id`);

--
-- Indexes for table `rpos_staff`
--
ALTER TABLE `rpos_staff`
  ADD PRIMARY KEY (`staff_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `rpos_pass_resets`
--
ALTER TABLE `rpos_pass_resets`
  MODIFY `reset_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rpos_staff`
--
ALTER TABLE `rpos_staff`
  MODIFY `staff_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `rpos_orders`
--
ALTER TABLE `rpos_orders`
  ADD CONSTRAINT `CustomerOrder` FOREIGN KEY (`customer_id`) REFERENCES `rpos_customers` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ProductOrder` FOREIGN KEY (`prod_id`) REFERENCES `rpos_products` (`prod_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
