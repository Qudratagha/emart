-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2019 at 03:02 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', 'f1290186a5d0b1ceab27f4e77c0c5d68', '2017-01-24 16:21:18', '01-07-2019 08:48:50 PM'),
(2, 'agha', 'fb84254504dbc2bb6fab5967385dbba0', '2019-06-28 10:02:11', '');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(10, 'Stores', 'Here you can find all store item, that relate to a specific store.', '2019-03-26 09:26:25', NULL),
(11, 'Restaurants', 'Here you can find all about fast food.', '2019-03-26 09:26:50', NULL),
(14, 'Medical', 'Here you can find all about medical items.', '2019-03-26 09:28:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dboy`
--

CREATE TABLE `dboy` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `contactno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dboy`
--

INSERT INTO `dboy` (`id`, `name`, `email`, `password`, `contactno`) VALUES
(1, 'Agha', 'agha@gmail.com', 'agha', 123456789),
(2, 'soban', 'soban@gmail.com', 'a', 2147483647),
(6, 'Asfi', 'asfi@gmail.com', 'asfi', 343);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL,
  `dboyid` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`, `dboyid`) VALUES
(110, 6, '47', 4, '2019-06-29 15:55:57', 'COD', NULL, 0),
(111, 6, '53', 1, '2019-07-01 07:07:00', 'COD', 'Delivered', 6),
(112, 6, '48', 1, '2019-07-01 07:07:00', 'COD', 'Delivered', 6),
(113, 6, '47', 2, '2019-07-01 07:07:00', 'COD', NULL, 2),
(114, 6, '26', 1, '2019-07-01 07:07:00', 'COD', 'in Process', 6),
(115, 6, '51', 1, '2019-07-01 09:02:40', 'COD', NULL, 2),
(116, 5, '53', 1, '2019-07-02 06:46:21', 'COD', 'Delivered', 2),
(117, 1, '51', 1, '2019-07-02 07:04:58', 'COD', NULL, 0),
(118, 1, '81', 1, '2019-07-02 07:06:29', 'COD', NULL, 0),
(119, 6, '68', 1, '2019-07-02 07:10:44', 'COD', 'Delivered', 2),
(120, 6, '48', 1, '2019-07-02 07:10:44', 'COD', 'Delivered', 2),
(121, 6, '26', 1, '2019-07-02 07:10:44', 'COD', NULL, 0),
(122, 5, '47', 4, '2019-07-02 08:30:10', 'COD', 'Delivered', 2);

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(1, 111, 'Delivered', 'sdfh', '2019-07-01 07:08:01'),
(2, 112, 'Delivered', 'dfghjkl', '2019-07-01 08:25:23'),
(3, 114, 'in Process', 'collected form store', '2019-07-01 08:26:35'),
(4, 116, 'Delivered', 'done', '2019-07-02 06:47:13'),
(5, 119, 'Delivered', 'done', '2019-07-02 07:17:28'),
(6, 120, 'Delivered', 'done', '2019-07-02 08:23:26'),
(7, 122, 'Delivered', 'g', '2019-07-02 08:31:16');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext,
  `reviewDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productreviews`
--

INSERT INTO `productreviews` (`id`, `productId`, `quality`, `price`, `value`, `name`, `summary`, `review`, `reviewDate`) VALUES
(7, 34, 5, 5, 4, 'rozi', 'awesome', 'sabardast', '2019-06-29 15:39:47');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(25, 14, 42, 'Panadol', 'AghaGrocery', 13, 16, 'Used for Headacha and muscular pain', 'panadol.JPG', 'panadol.JPG', 'panadol.JPG', 5, 'In Stock', '2019-03-26 15:41:28', NULL),
(26, 14, 42, 'Pentadol', 'AghaGrocery', 140, 200, 'Used for pain', 'Pentadol 50.jpg', 'Pentadol 50.jpg', 'Pentadol 50.jpg', 20, 'In Stock', '2019-03-26 15:45:59', NULL),
(27, 14, 42, 'Confido', 'AghaGrocery', 99, 120, 'Sleeping pills', 'confido.jpg', 'confido.jpg', 'confido.jpg', 30, 'In Stock', '2019-03-26 15:50:02', NULL),
(28, 14, 41, 'Bendryl', 'AghaGrocery', 66, 77, 'used for cough<br>', 'benadryl.jpg', 'benadryl.jpg', 'benadryl.jpg', 11, 'In Stock', '2019-03-26 15:52:04', NULL),
(29, 14, 41, 'Lycodra', 'AghaGrocery', 49, 50, '<span style=\"color: rgb(136, 136, 136); font-family: arial, sans-serif; background-color: rgb(255, 255, 255);\">Medicine Grade Lycopene Multivitamin And Mineral And Antioxidant Syrup, Packaging Size: 20.</span><div><span style=\"color: rgb(136, 136, 136); font-family: arial, sans-serif; background-color: rgb(34, 34, 34);\"><br></span></div><div><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><div><br></div></blockquote></div>', 'lycodra.jpg', 'lycodra.jpg', 'lycodra.jpg', 7, 'In Stock', '2019-03-26 15:54:50', NULL),
(30, 14, 41, 'Corex', 'AghaGrocery', 67, 88, '<span style=\"color: rgb(136, 136, 136); font-family: arial, sans-serif; background-color: rgb(255, 255, 255);\">Corex Cough Syrup:</span><br>', 'Corex.jpg', 'Corex.jpg', 'Corex.jpg', 11, 'Out of Stock', '2019-03-26 15:56:52', NULL),
(31, 14, 40, 'Diocef-T', 'AghaGrocery', 330, 365, '<span style=\"color: rgb(136, 136, 136); font-family: arial, sans-serif; background-color: rgb(255, 255, 255);\">Ceftriaxone 1000 mg+Tazobactam 125 mg Brand Name-Diocef-T 1.125 Dosage Form</span><br>', 'DIOCEF-T.jpg', 'DIOCEF-T.jpg', 'DIOCEF-T.jpg', 30, 'In Stock', '2019-03-26 15:59:24', NULL),
(32, 14, 40, 'Ceftriaxone', 'AghaGrocery', 200, 220, '<span style=\"background-color: rgb(255, 255, 255);\"><span class=\"irc_su\" dir=\"ltr\" style=\"unicode-bidi: isolate; color: rgb(136, 136, 136); font-family: arial, sans-serif;\">ceftriaxone 10 gram solution for injection icon icon</span><span style=\"color: rgb(136, 136, 136); font-family: arial, sans-serif;\"></span><br></span><div><span class=\"irc_su\" dir=\"ltr\" style=\"unicode-bidi: isolate; color: rgb(136, 136, 136); font-family: arial, sans-serif; background-color: rgb(34, 34, 34);\"><br></span></div>', 'ceftriazxone.jpg', 'ceftriazxone.jpg', 'ceftriazxone.jpg', 40, 'In Stock', '2019-03-26 16:01:45', NULL),
(33, 14, 40, 'Nucala', 'AghaGrocery', 395, 400, 'used for Asthama&nbsp;', 'Nucala.jpg', 'Nucala.jpg', 'Nucala.jpg', 100, 'In Stock', '2019-03-26 16:03:37', NULL),
(34, 12, 33, 'Capsicums', 'AghaGrocery', 20, 20, 'Rs-20 per&nbsp;', 'capsicum.jpg', 'capsicum.jpg', 'capsicum.jpg', 2, 'In Stock', '2019-03-26 16:06:01', NULL),
(35, 12, 33, 'Corn', 'AghaGrocery', 80, 90, 'Rs- 80 per kg', 'corn.jpg', 'corn.jpg', 'corn.jpg', 10, 'In Stock', '2019-03-26 16:18:06', NULL),
(36, 12, 33, 'Potato', 'AghaGrocery', 35, 40, 'Rs- 30 per kg', 'Potatoes.jpg', 'Potatoes.jpg', 'Potatoes.jpg', 5, 'In Stock', '2019-03-26 16:19:32', NULL),
(37, 12, 32, 'Onion', 'AghaGrocery', 60, 70, 'Rs- 60 per kg<br>', 'onion.jpg', 'onion.jpg', 'onion.jpg', 6, 'In Stock', '2019-03-26 16:21:19', NULL),
(38, 12, 32, 'Daikon Radish (Moli)', 'AghaGrocery', 40, 50, 'Rs- 40 per kg', 'daikon-radish.jpg', 'daikon-radish.jpg', 'daikon-radish.jpg', 4, 'In Stock', '2019-03-26 16:23:19', NULL),
(39, 12, 32, 'Carrot', 'AghaGrocery', 50, 60, 'Rs-50 per kg', 'carrot.jpg', 'carrot.jpg', 'carrot.jpg', 7, 'In Stock', '2019-03-26 16:25:35', NULL),
(40, 12, 31, 'Apple', 'AghaGrocery', 110, 120, 'Rs-110 per kg', 'apple.jpg', 'apple.jpg', 'apple.jpg', 20, 'In Stock', '2019-03-26 16:28:11', NULL),
(41, 12, 31, 'Orange', 'AghaGrocery', 70, 80, 'Rs- 70 per kg', 'orange.png', 'orange.png', 'orange.png', 12, 'Out of Stock', '2019-03-26 16:29:07', NULL),
(42, 12, 31, 'Starwberry', 'AghaGrocery', 100, 110, 'Rs-100 per packet', 'strawberry.jpg', 'strawberry.jpg', 'strawberry.jpg', 20, 'In Stock', '2019-03-26 16:29:55', NULL),
(46, 10, 20, 'Shoes for Kids', 'MDS', 1100, 1300, 'Shoes for kids', 'kid shoes.jpg', 'kid shoes.jpg', 'kid shoes.jpg', 150, 'In Stock', '2019-03-26 20:28:56', NULL),
(47, 10, 20, 'Shampoo', 'MDS', 180, 200, 'Shampoo', 'clear.jpg', 'clear.jpg', 'clear.jpg', 35, 'In Stock', '2019-03-26 20:30:35', NULL),
(48, 10, 20, 'Season Oil', 'MDS', 1990, 2050, '10 liter oil bottle', 'oil.jpg', 'oil.jpg', 'oil.jpg', 110, 'In Stock', '2019-03-26 20:32:02', NULL),
(51, 10, 20, 'Spray', 'MDS', 290, 320, 'body spray', 'spray.jpg', 'spray.jpg', 'spray.jpg', 39, 'In Stock', '2019-03-27 06:34:30', NULL),
(52, 13, 38, 'Banana Shake', 'AghaGrocery', 90, 100, 'Banana shake', 'banana.jpg', 'banana.jpg', 'banana.jpg', 17, 'In Stock', '2019-03-27 07:05:35', NULL),
(53, 13, 38, 'Mango Shake', 'AghaGrocery', 90, 100, 'Mango Shake', 'mango.jpg', 'mango.jpg', 'mango.jpg', 10, 'In Stock', '2019-03-27 07:09:07', NULL),
(54, 13, 38, 'Orange Juice ', 'AghaGrocery', 115, 130, 'Orange Juice', 'orange.jpg', 'orange.jpg', 'orange.jpg', 20, 'In Stock', '2019-03-27 07:18:13', NULL),
(55, 13, 38, 'Strawberry', 'AghaGrocery', 130, 150, 'Strawberry Shake', 'strawberry.jpg', 'strawberry.jpg', 'strawberry.jpg', 30, 'In Stock', '2019-03-27 07:19:22', NULL),
(56, 13, 38, 'Carrot', 'AghaGrocery', 75, 80, 'Carrot Juice', 'carrot.jpg', 'carrot.jpg', 'carrot.jpg', 17, 'In Stock', '2019-03-27 07:20:42', NULL),
(57, 13, 39, 'Aloe', 'AghaGrocery', 50, 50, 'Aloe Flavoured Juice&nbsp;', 'aloe mango.jpg', 'aloe mango.jpg', 'aloe mango.jpg', 7, 'In Stock', '2019-03-27 07:24:13', NULL),
(58, 13, 39, 'Cered', 'AghaGrocery', 45, 45, 'Ceres Flavored Juice&nbsp;', 'ceres.jpg', 'ceres.jpg', 'ceres.jpg', 7, 'Out of Stock', '2019-03-27 07:25:18', NULL),
(59, 13, 39, 'SNAPPLE', 'AghaGrocery', 45, 60, 'Snapple Flavored Juice', 'snapple.jpg', 'snapple.jpg', 'snapple.jpg', 4, 'In Stock', '2019-03-27 07:26:20', NULL),
(68, 11, 27, 'Creamy Cheesy Burger', 'AghaGrocery', 250, 300, 'Creamy Cheesy Burger<br>', 'creamy cheesy.jpg', 'creamy cheesy.jpg', 'creamy cheesy.jpg', 30, 'Out of Stock', '2019-03-27 08:58:09', NULL),
(69, 11, 26, 'Chicago Style Pizza', 'AghaGrocery', 780, 800, 'Chicago Style Pizza<br>', 'chicago style pizza.jpg', 'chicago style pizza.jpg', 'chicago style pizza.jpg', 50, 'In Stock', '2019-03-27 09:24:45', NULL),
(76, 11, 26, 'Greek Pizza', 'AghaGrocery', 500, 600, '<br>', 'greek pizza.jpg', 'greek pizza.jpg', 'greek pizza.jpg', 10, 'In Stock', '2019-03-27 09:35:46', NULL),
(77, 11, 26, 'Neapolitan Pizza', 'AghaGrocery', 670, 700, 'Neapolitan Pizza', 'neapolitan pizza.jpg', 'neapolitan pizza.jpg', 'neapolitan pizza.jpg', 50, 'In Stock', '2019-03-27 09:37:53', NULL),
(78, 14, 43, 'DFGH', 'DFGH', 0, 0, 'ASDF', 'agha.jpg', 'agha.jpg', 'agha.jpg', 0, 'In Stock', '2019-05-15 08:26:57', NULL),
(79, 11, 45, 'agha', 'agha', 332, 23, 'werwer', 'fsc.jpg', 'fsc.jpg', 'fsc.jpg', 22, 'In Stock', '2019-06-28 06:45:49', NULL),
(80, 11, 45, 'agha', 'agha', 332, 23, 'werwer', 'fsc.jpg', 'fsc.jpg', 'fsc.jpg', 22, 'In Stock', '2019-06-28 06:49:26', NULL),
(81, 11, 45, 'dqe', 'wef', 222, 22, 'qwe', 'Potatoes.jpg', 'Potatoes.jpg', 'Potatoes.jpg', 22, 'In Stock', '2019-06-28 10:04:04', NULL),
(82, 11, 45, 'f', 'd', 0, 0, 'ge', 'lycodra.jpg', 'lycodra.jpg', 'lycodra.jpg', 4, 'In Stock', '2019-07-01 07:10:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sprovider`
--

CREATE TABLE `sprovider` (
  `name` varchar(25) NOT NULL,
  `servicename` varchar(255) NOT NULL,
  `email` varchar(25) NOT NULL,
  `contactno` int(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sprovider`
--

INSERT INTO `sprovider` (`name`, `servicename`, `email`, `contactno`, `password`, `id`) VALUES
('abc', 'abc', 'abc@gmail.com', 123, '900150983cd24fb0d6963f7d28e17f72', 16),
('agha', 'qasim dukan', 'agha@gmail.com', 12132, 'fb84254504dbc2bb6fab5967385dbba0', 17),
('xyz', 'xyzz', 'xyz@gmail.com', 1234567, '0cc175b9c0f1b6a831c399e269772661', 18);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(16, 8, 'Fruits', '2019-03-26 09:07:51', NULL),
(18, 8, 'Salad Item', '2019-03-26 09:09:13', NULL),
(20, 10, 'MDS', '2019-03-26 09:29:15', NULL),
(21, 10, 'CSD', '2019-03-26 09:29:21', NULL),
(22, 10, 'ZamZama', '2019-03-26 09:29:30', NULL),
(23, 10, 'Al-Naseed Baba', '2019-03-26 09:29:48', NULL),
(24, 10, 'ZamZama', '2019-03-26 09:30:37', NULL),
(25, 10, 'Millennium ', '2019-03-26 09:30:48', NULL),
(31, 12, 'Fruits', '2019-03-26 09:32:51', NULL),
(32, 12, 'Salad Item', '2019-03-26 09:32:59', NULL),
(33, 12, 'Vegetable', '2019-03-26 09:33:11', NULL),
(38, 13, 'Fresh', '2019-03-26 09:36:47', NULL),
(39, 13, 'Flavored ', '2019-03-26 09:36:57', NULL),
(45, 11, 'Usmania Restaurant', '2019-05-20 09:44:58', NULL),
(46, 11, 'Mahfil Restaurant ', '2019-05-20 09:45:55', NULL),
(47, 11, 'Hot n spicy', '2019-05-20 09:53:36', NULL),
(48, 11, 'hot n chilli', '2019-05-20 09:54:10', NULL),
(49, 11, 'burger king', '2019-05-20 09:54:27', NULL),
(50, 14, 'barkat medical', '2019-05-20 10:28:34', '20-05-2019 04:03:33 PM'),
(51, 14, 'quetta medical', '2019-05-20 10:28:57', '20-05-2019 04:03:52 PM'),
(53, 14, 'rasheed medical', '2019-05-20 10:32:32', '20-05-2019 04:04:12 PM'),
(54, 14, 'abbas medicla', '2019-05-20 10:36:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(301, 'rozi@gmail.com', 0x3a3a3100000000000000000000000000, '2019-06-28 10:56:45', NULL, 1),
(302, 'rozi@gmail.com', 0x3a3a3100000000000000000000000000, '2019-06-29 15:23:53', NULL, 1),
(303, 'arooj@gmail.com', 0x3a3a3100000000000000000000000000, '2019-06-29 18:15:30', NULL, 1),
(304, 'rozi@gmail.com', 0x3a3a3100000000000000000000000000, '2019-07-01 08:27:11', NULL, 1),
(305, 'arooj@gmail.com', 0x3a3a3100000000000000000000000000, '2019-07-02 06:45:41', '02-07-2019 12:39:42 PM', 1),
(306, 'rozi@gmail.com', 0x3a3a3100000000000000000000000000, '2019-07-02 07:10:10', '02-07-2019 12:45:14 PM', 1),
(307, 'rozi@gmail.com', 0x3a3a3100000000000000000000000000, '2019-07-02 07:40:24', '02-07-2019 01:22:16 PM', 1),
(308, 'rozi@gmail.com', 0x3a3a3100000000000000000000000000, '2019-07-02 07:52:33', '02-07-2019 01:24:31 PM', 1),
(309, 'arooj@gmail.com', 0x3a3a3100000000000000000000000000, '2019-07-02 07:55:55', NULL, 1),
(310, 'aness@gmail.com', 0x3a3a3100000000000000000000000000, '2019-07-02 08:29:26', NULL, 0),
(311, 'aness@gmail.com', 0x3a3a3100000000000000000000000000, '2019-07-02 08:29:36', NULL, 0),
(312, 'arooj@gmail.com', 0x3a3a3100000000000000000000000000, '2019-07-02 08:29:43', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(4, 'Anees', 'anees@gmail.com', 987654321, '4ee5d4a0a228faeadb0e3a04d070cbf0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 09:40:58', NULL),
(5, 'arooj', 'arooj@gmail.com', 1234567890, '70f87246a9b543ceca62c193829a91d3', 'tariq road', 'sindh', 'karachi', 23451, 'jinnah road', 'baluchistan', 'quetta', 87300, '2019-04-02 09:20:29', NULL),
(6, 'rozi', 'rozi@gmail.com', 1234567890, '6b77cfa7c0de00cd481b82dc5c5d99fe', 'qweryuiop', 'qwertyuiop', 'wertyuiop', 0, 'sdfghjk', 'qwstgyuji', 'sdfghj', 0, '2019-04-09 10:45:09', NULL),
(8, 'a', 'a@gmail.com', 1, '0cc175b9c0f1b6a831c399e269772661', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-26 12:01:57', NULL),
(9, 'a', 'a@gmail.com', 1, '0cc175b9c0f1b6a831c399e269772661', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-26 12:06:55', NULL),
(10, 'ab', 'ab@gmail.com', 2, '187ef4436122d1cc2f40dc2b92f0eba0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-27 10:16:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(3, 4, 27, '2019-03-27 11:21:33'),
(4, 4, 34, '2019-03-27 11:47:04'),
(6, 5, 43, '2019-04-23 18:48:07'),
(7, 5, 67, '2019-05-15 08:09:36'),
(9, 1, 68, '2019-05-22 08:31:10'),
(10, 14, 27, '2019-05-29 07:31:31'),
(11, 14, 51, '2019-05-29 07:42:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dboy`
--
ALTER TABLE `dboy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sprovider`
--
ALTER TABLE `sprovider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `dboy`
--
ALTER TABLE `dboy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `sprovider`
--
ALTER TABLE `sprovider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=313;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
