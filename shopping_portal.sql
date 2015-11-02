-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2015 at 01:19 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `shopping_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', '58e7edca8ebeb280dcee99b815e54574');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE IF NOT EXISTS `order` (
  `order_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `total_product_cost` decimal(20,2) DEFAULT NULL,
  `shipping_cost` decimal(10,2) DEFAULT NULL,
  `order_status` varchar(50) DEFAULT NULL,
  `payment_status` varchar(50) DEFAULT NULL,
  `user` varchar(50) NOT NULL,
  `shipping_addr` varchar(500) NOT NULL,
  `datetime` datetime NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`order_id`, `total_product_cost`, `shipping_cost`, `order_status`, `payment_status`, `user`, `shipping_addr`, `datetime`) VALUES
(1, '25000.00', '100.00', 'Shipped', 'Paid', 'ankigupt', 'HIT haldia\r\n	', '2011-03-06 19:38:22'),
(2, '25000.00', '100.00', 'Waiting', 'Paid', 'ankigupt', '5/209 viram khand gomtinagar lucknow U.P.', '2011-03-06 20:09:01');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE IF NOT EXISTS `order_items` (
  `order_item_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `quantity` bigint(20) DEFAULT NULL,
  `Amount` decimal(20,2) DEFAULT NULL,
  PRIMARY KEY (`order_item_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`order_item_id`, `order_id`, `product_id`, `quantity`, `Amount`) VALUES
(1, 1, 2, 1, '25000.00'),
(2, 2, 4, 1, '25000.00');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `product_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `description` varchar(5000) DEFAULT NULL,
  `price` decimal(22,2) DEFAULT NULL,
  `quantity` int(10) DEFAULT NULL,
  `image_url` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `name`, `description`, `price`, `quantity`, `image_url`) VALUES
(1, 'Parker Pen', 'Good pen with 3 ink cartridges', '200.00', 100, ''),
(2, 'Nokia N8', 'Stylish Mobile with 12 mega-pixel camera. 64 gb memory support touch-screen etc.', '25000.00', 30, ''),
(3, 'Nokia N8', 'Stylish Mobile with 12 mega-pixel camera. 64 gb memory support touch-screen etc.', '25000.00', 30, ''),
(4, 'Nokia N8', 'Stylish Mobile with 12 mega-pixel camera. 64 gb memory support touch-screen etc.', '25000.00', 30, '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `username` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(200) DEFAULT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `lname` varchar(50) DEFAULT NULL,
  `sec_question` varchar(200) DEFAULT NULL,
  `sec_ans` varchar(200) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` bigint(12) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `fname`, `lname`, `sec_question`, `sec_ans`, `email`, `phone`, `dob`) VALUES
('ankigupt', '2045e3295067d5767de71e262776b581', 'ankit', 'gupta', 'What is this?', 'site', 'test.ankigupt@gmail.com', 9450639947, '1974-12-31'),
('qwertyuiop', '2045e3295067d5767de71e262776b581', 'qwert', 'yuiop', 'What is your first school name?', 'test', 'qwertyuiop@zxcvbnm.com', 2147483647, '1928-12-21'),
('testing', '2045e3295067d5767de71e262776b581', 'test', 'test', 'My question', 'My answer', 'test@test.com', 2147483647, '1969-12-03'),
('ankigupt1', '2045e3295067d5767de71e262776b581', 'Ankit', 'Gupta', 'What is my question?', 'quesa', 'ankit.gnu@rediffmail.co.in', 2147483647, '1978-08-10');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
