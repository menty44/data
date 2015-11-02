-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2015 at 01:02 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `garbage_collection`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `admin_name` varchar(100) NOT NULL,
  `admin_password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_name`, `admin_password`) VALUES
('root', 'stela'),
('root', 'root');

-- --------------------------------------------------------

--
-- Table structure for table `data_table`
--

CREATE TABLE IF NOT EXISTS `data_table` (
  `id` int(11) NOT NULL,
  `supervisor_name` varchar(100) NOT NULL,
  `track_number` varchar(40) NOT NULL,
  `allocation_area` varchar(40) NOT NULL,
  `number_of_trips` int(11) NOT NULL,
  `allocation_date` date DEFAULT NULL,
  `totaldaily_weight` varchar(40) NOT NULL,
  `other_expenses` varchar(100) NOT NULL,
  `fuel_consumption` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_table`
--

INSERT INTO `data_table` (`id`, `supervisor_name`, `track_number`, `allocation_area`, `number_of_trips`, `allocation_date`, `totaldaily_weight`, `other_expenses`, `fuel_consumption`) VALUES
(1, 'benjamin', 'KBY 567K', 'nairobi', 5, '2015-09-08', '500 tonnes', '500 Kshs', '500'),
(2, 'irine mueni', 'KBY 567K', 'nairobi', 5, '2015-09-08', '500 tonnes', '500 Kshs', '500');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE IF NOT EXISTS `employee` (
  `number_of_employees` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(100) NOT NULL,
  `id_number` varchar(40) NOT NULL,
  `staff_number` varchar(40) NOT NULL,
  `phone_number` int(11) NOT NULL,
  `track_number` varchar(40) NOT NULL,
  PRIMARY KEY (`number_of_employees`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`number_of_employees`, `full_name`, `id_number`, `staff_number`, `phone_number`, `track_number`) VALUES
(1, 'BENJAMIN MAITHYA', '677889', 'KN56', 710967655, 'KBX 567K'),
(2, 'john mwangagi', '647489', 'KN57', 5678237, 'KBW 675K');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_name` varchar(100) NOT NULL,
  `user_password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_name`, `user_password`) VALUES
('root', 'root'),
('stela', 'root');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_reg`
--

CREATE TABLE IF NOT EXISTS `vehicle_reg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `track_nbr_plate` varchar(100) NOT NULL,
  `date_of_reg` date DEFAULT NULL,
  `category` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `vehicle_reg`
--

INSERT INTO `vehicle_reg` (`id`, `track_nbr_plate`, `date_of_reg`, `category`) VALUES
(1, 'KBY 567K', '2015-04-09', 'LORRY');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
