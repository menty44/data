-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2015 at 05:06 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `g4s`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_no` int(20) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `sname` varchar(20) NOT NULL,
  `address` varchar(20) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `customer_id` int(20) NOT NULL,
  `gender` char(10) NOT NULL,
  `delivered_to` varchar(20) NOT NULL,
  `date_delivered` varchar(20) NOT NULL,
  `date_arrive` varchar(20) NOT NULL,
  `payment` varchar(20) NOT NULL,
  `amount` int(20) NOT NULL,
  `cheque_no` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `customer_no`, `fname`, `sname`, `address`, `telephone`, `customer_id`, `gender`, `delivered_to`, `date_delivered`, `date_arrive`, `payment`, `amount`, `cheque_no`) VALUES
(1, 1, 'fred', 'oluoch', '4747 buruburu', '075548241', 2864475, 'male', 'stella', 'MMM d, yyyy', 'MMM d, yyyy', '44', 1580, 'nil'),
(2, 2, 'tom', 'kamau', '75757 rongai', '078855412', 9885547, 'male', 'bob colimore', 'MMM d, yyyy', 'MMM d, yyyy', 'cash', 4780, 'n/a');

-- --------------------------------------------------------

--
-- Table structure for table `destination`
--

CREATE TABLE IF NOT EXISTS `destination` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `destination_no` varchar(20) NOT NULL,
  `destination_name` varchar(20) NOT NULL,
  `sourcename` varchar(20) NOT NULL,
  `kms` int(20) NOT NULL,
  `date_deliver` varchar(20) NOT NULL,
  `date_arrive` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `destination`
--

INSERT INTO `destination` (`id`, `destination_no`, `destination_name`, `sourcename`, `kms`, `date_deliver`, `date_arrive`) VALUES
(1, '1', 'nairobi', 'mombasa', 45, '0000-00-00', '0000-00-00'),
(2, '2', 'dgdg', 'asatra', 335, '0000-00-00', '0000-00-00'),
(3, '3', 'kitui', 'nbi', 88, '0000-00-00', '0000-00-00'),
(4, '4', 'aaf', 'raWr', 224, 'MMM d, yyyy', 'MMM d, yyyy'),
(5, '77', ',nvnb', 'nbvnb', 555, 'MMM d, yyyy', '[C@1062b18');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE IF NOT EXISTS `employee` (
  `employee_no` varchar(20) NOT NULL,
  `fname` char(20) NOT NULL,
  `oname` char(20) NOT NULL,
  `empidno` varchar(20) NOT NULL,
  `gender` char(20) NOT NULL,
  `nationality` char(20) NOT NULL,
  `address` varchar(20) NOT NULL,
  PRIMARY KEY (`employee_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employee_no`, `fname`, `oname`, `empidno`, `gender`, `nationality`, `address`) VALUES
('1', 'tom', 'marl', '35454', 'male', 'kenyan', '35757'),
('2', 'MARK', 'TROM', '356', 'MALE', 'KENYAN', '200'),
('3', 'rex', 'hun89', '9-0-087', 'female', 'somalia', '98708');

-- --------------------------------------------------------

--
-- Table structure for table `goods`
--

CREATE TABLE IF NOT EXISTS `goods` (
  `good_no` varchar(20) NOT NULL,
  `name_sender` char(20) NOT NULL,
  `name_receiver` char(20) NOT NULL,
  `weight` varchar(20) NOT NULL,
  `destination` varchar(20) NOT NULL,
  `source` varchar(20) NOT NULL,
  PRIMARY KEY (`good_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `goods`
--

INSERT INTO `goods` (`good_no`, `name_sender`, `name_receiver`, `weight`, `destination`, `source`) VALUES
('001', 'fred', 'mark', 'mombasa', '45', 'nairobi'),
('554', '1', 'kjlklk`k`', 'jhgjhjh', '5656', 'hjgkjg'),
('8', 'kjkj', 'kjlhlhg', 'klhglkj', '777', '.kjkj');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, '', ''),
(2, '', ''),
(3, '', ''),
(4, '', ''),
(5, '', ''),
(6, '', ''),
(7, '', ''),
(8, 'root', 'root'),
(9, 'admin', 'admin'),
(10, 'fred', 'fred');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
