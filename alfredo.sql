-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2015 at 10:22 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `alfredo`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('alfred', 'alfred1994'),
('alfred', 'alfred1994');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
  `ProductSupplier` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE IF NOT EXISTS `inventory` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `ProductName` varchar(255) NOT NULL,
  `ProductPrice` varchar(100) NOT NULL,
  `ProductType` varchar(255) NOT NULL,
  `ProductSupplier` varchar(255) NOT NULL,
  `ProductQuantity` int(100) NOT NULL,
  `ProductDate` datetime NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`ID`, `ProductName`, `ProductPrice`, `ProductType`, `ProductSupplier`, `ProductQuantity`, `ProductDate`) VALUES
(4, 'Delmonte', '@50/=', 'perishable', 'Uniliver', 200, '2013-04-02 00:00:00'),
(5, 'wheat flour', '@100/=', 'perishable', 'millers', 200, '2014-04-02 00:00:00'),
(6, 'white tissue', '@20/=', 'durable', 'Bella white', 20, '2013-12-22 00:00:00'),
(7, 'Geisha soap', '@50/=', 'durable', 'Uniliver', 300, '2013-12-22 00:00:00'),
(8, 'Colgate tooth paste', '@50/=', 'Perishable', 'Colgate', 1000, '2015-05-20 00:00:00'),
(9, 'Pembe maize flour', '@60/=', 'perishable', 'millers', 400, '2015-05-04 00:00:00'),
(10, 'pepsi', '@60/=', 'perishable', 'Pepsi', 400, '2015-05-04 00:00:00'),
(11, 'Nivea for Men', '@180/=', 'perishable', 'uniliver', 6000, '2015-05-06 00:00:00'),
(12, 'Nice and lovely', '@180/=', 'perishable', 'uniliver', 6000, '2015-05-06 00:00:00'),
(13, 'Kensalt', '@50/=', 'perishable', 'Kensalt', 6000, '2015-05-06 00:00:00'),
(14, 'Keysalt', '@50/=', 'perishable', 'Kensalt', 6000, '2015-05-06 00:00:00'),
(15, 'Knives', '@50/=', 'durable', 'steel company', 6000, '2015-05-06 00:00:00'),
(16, 'Cakes', '@40/=', 'Perishable', 'mombasa backery', 3000, '2015-05-10 00:00:00'),
(19, 'Mumias sugar', '@250/=', 'durable', 'Mumias Company', 600, '2015-05-03 00:00:00'),
(20, 'Sony sugar', '@240/=', 'durable', 'SonySugar Company', 800, '2015-05-05 00:00:00'),
(21, 'Hanan Tissue', '@50/=', 'durable', 'Hanan Ltd Company', 350, '2015-05-15 00:00:00'),
(22, 'ketepa tea leaves', '@50/=', 'durable', 'Ketepa Ltd Company', 500, '2014-06-05 00:00:00'),
(23, 'Coffee', '@50/=', 'durable', 'Coffee Board Company', 500, '2014-06-05 00:00:00'),
(25, 'Afia Watermelon juice', '@50/=', 'perishable', 'Afia', 5000, '2015-05-20 00:00:00'),
(26, 'Freshamilk', '@50/=', 'Perishable', 'Fresha', 5000, '0000-00-00 00:00:00'),
(27, '', '', '', '', 0, '0000-00-00 00:00:00'),
(28, '', '', '', '', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `ProductName` varchar(200) NOT NULL,
  `ProductPrice` int(10) NOT NULL,
  `Quantity` int(200) NOT NULL,
  `ProductDate` datetime NOT NULL,
  `product_code` varchar(20) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `product_code` (`product_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`Id`, `ProductName`, `ProductPrice`, `Quantity`, `ProductDate`, `product_code`) VALUES
(25, 'Delmonte', 70, 0, '2015-02-13 00:00:00', '1'),
(26, 'Pepsi', 50, 200, '2015-05-11 00:00:00', '2'),
(27, 'wheat flour', 150, 4000, '2015-05-11 00:00:00', '3'),
(28, 'White tooth paste', 70, 400, '2015-05-03 00:00:00', '4'),
(29, 'white tissue', 50, 500, '2015-05-14 00:00:00', '5'),
(30, 'Geisha soap', 70, 3000, '2015-02-10 00:00:00', '6'),
(31, 'Puani cooking oil', 100, 1000, '2015-05-12 00:00:00', '7'),
(32, 'Nivea for men', 250, 5000, '2015-05-05 00:00:00', '8'),
(33, 'Washing bar soap', 150, 500, '2015-05-14 00:00:00', '9'),
(34, 'ketepa tea leaves', 150, 250, '2015-05-15 00:00:00', '10'),
(35, 'Rexona men', 250, 3000, '2015-05-15 00:00:00', '11');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE IF NOT EXISTS `sales` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `Product_id` int(100) NOT NULL,
  `ProductQuantity` int(10) NOT NULL,
  `Date` datetime NOT NULL,
  `Sales` int(10) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE IF NOT EXISTS `suppliers` (
  `ID` int(100) NOT NULL AUTO_INCREMENT,
  `SupplierName` varchar(200) NOT NULL,
  `ProductSupplied` varchar(200) NOT NULL,
  `Quantity` int(20) NOT NULL,
  `SuppliedDate` datetime NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`ID`, `SupplierName`, `ProductSupplied`, `Quantity`, `SuppliedDate`) VALUES
(1, 'Uniliver', 'Delmonte', 300, '2015-02-13 00:00:00'),
(2, 'Pepsi company', 'Pepsi', 300, '2015-05-04 00:00:00'),
(11, 'Pepsi company', 'Pepsi', 200, '2015-05-10 00:00:00'),
(12, 'uniliver', 'white paste', 400, '2015-05-12 00:00:00'),
(13, 'Bella white Ltd company', 'white tissue', 500, '2015-05-19 00:00:00'),
(14, 'uniliver', 'Geisha soap', 3000, '2015-02-10 00:00:00'),
(15, 'Uniliver', 'Puani cooking oil', 1000, '2015-05-12 00:00:00'),
(16, 'Uniliver', 'Nivea for men', 5000, '2015-05-05 00:00:00'),
(17, 'Menengai Ltd company', 'washing bar soap', 500, '2015-05-14 00:00:00'),
(18, 'Ketepa Ltd Company', 'Ketepa tea leaves', 250, '2015-05-15 00:00:00'),
(19, ' Uniliver', 'Rexona men', 3000, '2015-05-15 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `username` varchar(200) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`) VALUES
('alfred', 'wasonga'),
('Felix', 'feli');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
