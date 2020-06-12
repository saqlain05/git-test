-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2020 at 08:26 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin1'),
(2, 'saqlain', 'saqlain');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `categories` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categories`, `status`) VALUES
(3, 'OnePlus', 1),
(18, 'samsung', 1),
(21, 'RealMe', 1),
(22, 'Redmi', 1),
(23, 'IPhone', 1),
(24, 'Vivo', 1),
(25, 'oppo', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(75) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `comment` text NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `mobile`, `comment`, `added_on`) VALUES
(1, 'saqlain', 'saqlain@gmail.com', '0123456789', 'my problem', '2020-05-18 17:15:57'),
(3, 'saqlain', 'nasi@fmail.com', '57', 'my Messagedf', '2020-05-31 01:37:32'),
(5, 'Shama Nigar', 'shama@gmail.com', '74392998', 'my Message', '2020-06-09 04:39:00');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `address` varchar(250) NOT NULL,
  `city` varchar(50) NOT NULL,
  `pincode` int(11) NOT NULL,
  `payment_type` varchar(20) NOT NULL,
  `total_price` float NOT NULL,
  `payment_status` varchar(20) NOT NULL,
  `order_status` int(11) NOT NULL,
  `txnid` varchar(20) NOT NULL,
  `mihpayid` varchar(20) NOT NULL,
  `payu_status` varchar(10) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `user_id`, `address`, `city`, `pincode`, `payment_type`, `total_price`, `payment_status`, `order_status`, `txnid`, `mihpayid`, `payu_status`, `added_on`) VALUES
(3, 1, 'deh', 'dehli', 795645, 'payu', 2580.55, 'success', 5, '', '', '', '2020-06-02 08:15:17'),
(4, 1, 'saqlain', 'nasim', 7495, 'COD', 0, 'success', 3, '', '', '', '2020-06-02 08:26:11'),
(5, 1, 'saqlain', 'naism', 8100, 'COD', 2017.98, 'success', 4, '', '', '', '2020-06-02 08:27:43'),
(6, 1, 'kamarhati', 'kolakta', 58, 'COD', 6053.94, 'success', 2, '', '', '', '2020-06-02 09:02:05'),
(7, 1, 'kamarhati kolkata', 'dasu', 545, 'payu', 1995, 'pending', 1, '559d8dbaf49609d76c7e', '', '', '2020-06-02 11:51:30'),
(8, 1, 'dasu', 'kamar', 888, 'payu', 999, 'failure', 1, '3d6567d38db7acc68994', '403993715521061536', '', '2020-06-02 11:56:11'),
(9, 1, 'titagarh', 'kolkata', 7000149, 'payu', 20440, 'Success', 5, '7a9e7e4d1c2b4436b006', '403993715521061603', '', '2020-06-02 12:05:30'),
(10, 3, 'tgh', 'kol', 78858, 'COD', 999, 'Success', 5, '7b7439dd2935d0bb76be', '', '', '2020-06-02 06:14:01'),
(11, 2, 'khushi', 'khusihi', 65, 'COD', 699, 'Success', 5, '608f7a9e9672ccb6cd5c', '', '', '2020-06-05 08:07:29'),
(12, 2, 'kolkata', 'khushi', 8922222, 'COD', 100, 'pending', 1, 'e51fa1ff862b280b89bb', '', '', '2020-06-06 06:56:20'),
(13, 6, '15 Chhai Market', 'kolkata', 700058, 'COD', 44, 'Success', 4, 'c6bfc44cfd5c0998ebec', '', '', '2020-06-09 04:10:59'),
(14, 6, '15 Chhai Market', 'kolkata', 700058, 'payu', 50997, 'Success', 5, '9cdbadc372f85b513428', '', '', '2020-06-09 04:13:33'),
(15, 6, 'sdjk', 'lkjs', 0, 'COD', 16999, 'pending', 1, 'f4ea9ecc60a8d6b4389a', '', '', '2020-06-10 06:12:20'),
(16, 7, '19, Auran Para titagarh', 'kolkata', 7000119, 'payu', 11990, 'pending', 4, '2f8b42531b46ead596b6', '', '', '2020-06-12 06:33:43');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` float NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`id`, `order_id`, `product_id`, `qty`, `price`, `added_on`) VALUES
(1, 1, 9, 1, 688, '0000-00-00 00:00:00'),
(2, 2, 9, 1, 688, '0000-00-00 00:00:00'),
(3, 3, 1, 1, 2555, '0000-00-00 00:00:00'),
(5, 5, 7, 2, 999, '0000-00-00 00:00:00'),
(6, 6, 7, 1, 999, '0000-00-00 00:00:00'),
(7, 6, 4, 5, 999, '0000-00-00 00:00:00'),
(8, 0, 7, 1, 999, '0000-00-00 00:00:00'),
(9, 7, 10, 5, 399, '0000-00-00 00:00:00'),
(10, 8, 7, 1, 999, '0000-00-00 00:00:00'),
(11, 9, 1, 8, 2555, '0000-00-00 00:00:00'),
(12, 10, 7, 1, 999, '0000-00-00 00:00:00'),
(13, 11, 8, 1, 699, '0000-00-00 00:00:00'),
(14, 12, 13, 1, 100, '0000-00-00 00:00:00'),
(15, 13, 16, 1, 44, '0000-00-00 00:00:00'),
(16, 14, 12, 3, 16999, '0000-00-00 00:00:00'),
(17, 15, 12, 1, 16999, '0000-00-00 00:00:00'),
(18, 16, 26, 1, 11990, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` (`id`, `name`) VALUES
(1, 'Pending'),
(2, 'Processing'),
(3, 'Shipped'),
(4, 'Canceled'),
(5, 'Complete');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `sub_categories_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mrp` float NOT NULL,
  `price` float NOT NULL,
  `qty` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `short_desc` varchar(2000) NOT NULL,
  `description` text NOT NULL,
  `best_seller` int(11) NOT NULL,
  `meta_title` varchar(2000) NOT NULL,
  `meta_desc` varchar(2000) NOT NULL,
  `meta_keyword` varchar(2000) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `categories_id`, `sub_categories_id`, `name`, `mrp`, `price`, `qty`, `image`, `short_desc`, `description`, `best_seller`, `meta_title`, `meta_desc`, `meta_keyword`, `status`) VALUES
(1, 3, 0, 'Rice', 300, 280, 4, '153112557_A6PLUS.png', 'Rice', 'Brown Solid Tailored jacket Brown Solid Tailored jacket Brown Solid Tailored jacketBrown Solid Tailored jacket Brown Solid Tailored jacket Brown Solid Tailored jacket Brown Solid Tailored jacket', 0, '7', 'saq', '9', 1),
(3, 2, 0, 'Red Tshirt For Women', 800, 799, 100, '219456040_aata1.png', 'Red Tshirt For Women Red Tshirt For Women', 'Red Tshirt For Women Red Tshirt For Women Red Tshirt For Women Red Tshirt For Women Red Tshirt For Women Red Tshirt For Women Red Tshirt For Women Red Tshirt For Women Red Tshirt For Women Red Tshirt For Women', 0, 'dsklj', '', 'jdsfh', 1),
(4, 2, 0, 'Black Tshirt For Women', 1000, 929, 4, '580202655_aata1.png', 'Black Tshirt For Women', 'Black Tshirt For Women Black Tshirt For Women Black Tshirt For WomenBlack Tshirt For Women Black Tshirt For Women Black Tshirt For Women Black Tshirt For Women Black Tshirt For Women Black Tshirt For Women Black Tshirt For Women', 0, '5f', 'hg', 'lohp', 1),
(7, 2, 0, 'Tshirt Pink Stripped', 1000, 959, 5, '857571487_aata1.png', 'Tshirt Pink Stripped Tshirt Pink Stripped', 'Tshirt Pink Stripped Tshirt Pink StrippedTshirt Pink StrippedTshirt Pink Stripped Tshirt Pink Stripped Tshirt Pink StrippedTshirt Pink Stripped   Tshirt Pink Stripped', 0, 'sofa', 'sofa', 'sofa', 1),
(8, 17, 0, 'Grey Skin Fit Mid Rise', 899, 699, 5, '706292193_aata1.png', 'Grey Skin Fit Mid Rise\r\nâ‚¹ 999\r\n\r\nNavy Blue Mid Rise denim\r\nâ‚¹ 1499\r\n\r\nBlack Slash knees stretchable jeans', 'Grey Skin Fit Mid Rise\r\nâ‚¹ 999\r\n\r\nNavy Blue Mid Rise denim\r\nâ‚¹ 1499\r\n\r\nBlack Slash knees stretchable jeans\r\nGrey Skin Fit Mid Rise\r\nâ‚¹ 999\r\n\r\nNavy Blue Mid Rise denim\r\nâ‚¹ 1499\r\n\r\nBlack Slash knees stretchable jeans\r\nGrey Skin Fit Mid Rise\r\nâ‚¹ 999\r\n\r\nNavy Blue Mid Rise denim\r\nâ‚¹ 1499\r\n\r\nBlack Slash knees stretchable jeans\r\nGrey Skin Fit Mid Rise\r\nâ‚¹ 999\r\n\r\nNavy Blue Mid Rise denim\r\nâ‚¹ 1499\r\n\r\nBlack Slash knees stretchable jeans', 0, 'meta tutle', 'mera desc', 'meta key', 1),
(9, 16, 0, 'Navy Blue Casual Shirt', 700, 649, 18, '481152833_aata1.png', 'Navy Blue Casual Shirt', 'Navy Blue Casual Shirt Navy Blue Casual ShirtNavy Blue Casual Shirt Navy Blue Casual Shirt Navy Blue Casual Shirt Navy Blue Casual Shirt Navy Blue Casual ShirtNavy Blue Casual Shirt Navy Blue Casual ShirtNavy Blue Casual Shirt', 0, 'mt', 'md', 'mk', 1),
(10, 16, 0, 'Pink Regular Casual Shirt', 699, 599, 5, '587206158_besan1.png', 'Pink Regular Casual Shirt', 'Pink Regular Casual Shirt Pink Regular Casual Shirt Pink Regular Casual ShirtPink Regular Casual Shirt Pink Regular Casual Shirt Pink Regular Casual Shirt Pink Regular Casual Shirt Pink Regular Casual Shirt Pink Regular Casual Shirt Pink Regular Casual Shirt Pink Regular Casual Shirt', 0, 'mt', 'md', 'mk', 1),
(11, 18, 1, 'Tata Sampann Besan - Gram Flour 500g', 100, 100, 5, '450634336_A6PLUS.png', 'Tata Sampann Besan - Gram Flour 500g', 'Tata Sampann Besan - Gram Flour 500g', 0, 'Tata Sampann Besan - Gram Flour 500g', 'Tata Sampann Besan - Gram Flour 500g', 'Tata Sampann Besan - Gram Flour 500g', 1),
(12, 18, 2, 'Samsung Galaxy M30s (Blue, 6GB RAM, 128GB Storage)', 17555, 16999, 10, '762704407_M30S.png', '48MP + 8MP + 5MP triple rear camera | 16MP front facing camera\r\n16.21 centimeters (6.4-inch) FHD+ capacitive touchscreen with 2340 x 1080 pixels resolution 16M color support\r\nMemory, Storage & SIM: 6GB RAM | 128GB storage expandable up to 512GB | Dual nano SIM with dual standby (4G+4G)\r\nAndroid v9.0 Pie operating system with 2.3GHz + 1.7GHz Exynos 9611 octa core processor\r\n6000mAH lithium-ion battery with fast charging | 15W Type-C fast charger in the box', '48MP + 8MP + 5MP triple rear camera | 16MP front facing camera\r\n16.21 centimeters (6.4-inch) FHD+ capacitive touchscreen with 2340 x 1080 pixels resolution 16M color support\r\nMemory, Storage & SIM: 6GB RAM | 128GB storage expandable up to 512GB | Dual nano SIM with dual standby (4G+4G)\r\nAndroid v9.0 Pie operating system with 2.3GHz + 1.7GHz Exynos 9611 octa core processor\r\n6000mAH lithium-ion battery with fast charging | 15W Type-C fast charger in the box', 1, '', '', '', 1),
(13, 18, 3, 'Samsung Galaxy A6 Plus (Blue, 4GB RAM, 64GB Storage) with No Cost EMI/Additional Exchange Offers', 15000, 14500, 50, '520595741_A6PLUS.png', 'Camera: 16 +5 MP Dual rear camera |24 MP front camera\r\nDisplay: 15.24 centimeters (6-inch) 4K Super AMOLED capacitive touchscreen display with 1080x2220 pixels and 18.5:9 aspect ratio\r\nMemory, Storage & SIM: 4GB RAM | 64GB storage expandable up to 256GB | Dual nano SIM with dual standby (4G+4G)\r\nOperating System and Processor: Android v8.0 Oreo operating system with 1.8GHz Qualcomm Snapdragon 450 octa core processor\r\nBattery: 3500 mAH lithium ion battery\r\nWarranty: 1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase\r\nIncluded in box: Charger', 'Camera: 16 +5 MP Dual rear camera |24 MP front camera\r\nDisplay: 15.24 centimeters (6-inch) 4K Super AMOLED capacitive touchscreen display with 1080x2220 pixels and 18.5:9 aspect ratio\r\nMemory, Storage & SIM: 4GB RAM | 64GB storage expandable up to 256GB | Dual nano SIM with dual standby (4G+4G)\r\nOperating System and Processor: Android v8.0 Oreo operating system with 1.8GHz Qualcomm Snapdragon 450 octa core processor\r\nBattery: 3500 mAH lithium ion battery\r\nWarranty: 1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase\r\nIncluded in box: Charger', 0, '', '', '', 1),
(14, 18, 4, 'Samsung Galaxy J7 Prime G610 Black (16GB)', 10999, 9999, 50, '726978339_J7PRIME.png', 'Got in deal for just 10499/-\r\nbest price best mobile with best features and budget too.\r\n+ ve points are fingerprint, branded, 13mp cam, 3gb ram and exynos processor, no heating issue at all so very less radiation too.\r\ncan go for it in deal. 100% worth.\r\nbetter than china phones around 10k\r\n3gb samsung mobile rams = 4gb china mobiles\r\n1.2ghz exynos processors speed (No heat) = snapdragon 625 (Heats)\r\nConfiguration does not matters, now Quality matters.\r\nAll cong given are not upto their marks like samsung', 'Got in deal for just 10499/-\r\nbest price best mobile with best features and budget too.\r\n+ ve points are fingerprint, branded, 13mp cam, 3gb ram and exynos processor, no heating issue at all so very less radiation too.\r\ncan go for it in deal. 100% worth.\r\nbetter than china phones around 10k\r\n3gb samsung mobile rams = 4gb china mobiles\r\n1.2ghz exynos processors speed (No heat) = snapdragon 625 (Heats)\r\nConfiguration does not matters, now Quality matters.\r\nAll cong given are not upto their marks like samsung', 1, '', '', '', 1),
(15, 18, 4, 'Samsung Galaxy J8 (Gold, 4GB RAM, 64GB Storage)', 14999, 13999, 10, '720277722_j6.png', 'Camera: 16+5 MP Dual rear camera with Auto focus and 4x Digital zoom | 16 MP front camera with F1.9 LED flash\r\nDisplay: 15.24 centimeters (6-inch) HD Super AMOLED capacitive touchscreen display with 1480x720 pixels\r\nMemory, Storage & SIM: 4GB RAM | 64GB storage expandable up to 256GB | Dual nano SIM with dual standby (4G+4G)\r\nOperating System and Processor: Android V8.0 Oreo operating system with 1.8GHz Qualcomm Snapdragon SDM450 octa core processor\r\nBattery: 3500 mAH lithium ion battery\r\nWarranty: 1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase', 'Camera: 16+5 MP Dual rear camera with Auto focus and 4x Digital zoom | 16 MP front camera with F1.9 LED flash\r\nDisplay: 15.24 centimeters (6-inch) HD Super AMOLED capacitive touchscreen display with 1480x720 pixels\r\nMemory, Storage & SIM: 4GB RAM | 64GB storage expandable up to 256GB | Dual nano SIM with dual standby (4G+4G)\r\nOperating System and Processor: Android V8.0 Oreo operating system with 1.8GHz Qualcomm Snapdragon SDM450 octa core processor\r\nBattery: 3500 mAH lithium ion battery\r\nWarranty: 1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase', 0, '', '', '', 1),
(16, 25, 8, 'JK sabudana Small 250g', 44, 44, 50, '860139151_J7PRIME.png', 'JK sabudana Small 250g', 'JK sabudana Small 250g', 0, '', '', '', 1),
(17, 20, 0, 'Organic Tattva Basmati Rice 1 KG', 200, 200, 54, '923791466_Organic Tattva Basmati Rice.jpg', 'Organic Tattva Basmati Rice 1 KG', 'Organic Tattva Basmati Rice 1 KG', 0, '', '', '', 1),
(19, 22, 10, 'Palm OIL Test', 500, 400, 5, '253495727_J7PRIME.png', 'Palm OIL Test', 'Palm OIL Test', 0, 'Palm OIL Test', 'Palm OIL Test', 'Palm OIL Test', 1),
(21, 25, 9, 'mustard powder test', 50, 50, 10, '586641106_J7PRIME.png', 'mustard powder', 'mustard powder', 0, 'mustard powder', 'mustard powder', 'mustard powder', 1),
(26, 18, 4, 'Samsung Galaxy J6 2018 3 GB 32 GB Black', 13990, 11990, 10, '503256757_j6.png', 'RAM: 3GB, 32GB internal memory expandable up to 256GB\r\n13MP Primary camera with led flash and 8MP front facing camera with led flash\r\n14.25 cm (5.7-inch) Infinity display with Super AMOLED HD+ capacitive touchscreen with 720 x 1480 pixels resolution\r\nAndroid v8.0 Oreo operating system with 1.6GHz Exynos 7870 octa core processor\r\nDual SIM dual-standby (4G+3G)\r\n3000mAH lithium-ion battery\r\n1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories', 'RAM: 3GB, 32GB internal memory expandable up to 256GB\r\n13MP Primary camera with led flash and 8MP front facing camera with led flash\r\n14.25 cm (5.7-inch) Infinity display with Super AMOLED HD+ capacitive touchscreen with 720 x 1480 pixels resolution\r\nAndroid v8.0 Oreo operating system with 1.6GHz Exynos 7870 octa core processor\r\nDual SIM dual-standby (4G+3G)\r\n3000mAH lithium-ion battery\r\n1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories', 1, '', '', '', 1),
(27, 21, 0, 'RealMe', 15000, 14888, 10, '535990324_A6PLUS.png', 'RealMe', 'RealMe', 0, '', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `sub_categories` varchar(100) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `categories_id`, `sub_categories`, `status`) VALUES
(1, 18, 'Galaxy Note series', 1),
(2, 18, 'Galaxy M series', 1),
(3, 18, 'Samsung A series', 1),
(4, 18, 'Galaxy J series', 1),
(5, 24, 'V series', 1),
(7, 24, 'S series', 1),
(8, 25, 'OPPO Reno Series', 1),
(9, 25, 'Oppo A Series', 1),
(11, 22, 'A Series', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `email`, `mobile`, `added_on`) VALUES
(3, 'saqlain nasim', '4321', 'roseisred9821@gmail.com', '7980000693', '2020-06-02 09:09:33'),
(5, 'khushi', 'khushi', 'khushi@gmail.com', '9876543210', '2020-06-05 02:40:13'),
(6, 'Shama Nigar', 'shama123', 'shama@gmail.com', '7439266874', '2020-06-09 04:10:09'),
(7, 'Reshma Khatoon', 'reshma123', 'reshma@gmail.com', '9876543210', '2020-06-12 06:32:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
