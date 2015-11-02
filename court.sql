-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2015 at 02:48 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `court`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'root', 'root');

-- --------------------------------------------------------

--
-- Table structure for table `judge`
--

CREATE TABLE IF NOT EXISTS `judge` (
  `id` int(20) NOT NULL,
  `employee_number` int(20) NOT NULL,
  `national_id` varchar(20) NOT NULL,
  `first_name` text NOT NULL,
  `surname` text NOT NULL,
  `last_name` text NOT NULL,
  `date_of_birth` varchar(20) NOT NULL,
  `specialization` varchar(20) NOT NULL,
  `ruling` varchar(20) NOT NULL,
  `case_number` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `judge`
--

INSERT INTO `judge` (`id`, `employee_number`, `national_id`, `first_name`, `surname`, `last_name`, `date_of_birth`, `specialization`, `ruling`, `case_number`) VALUES
(0, 112, '32163883', 'Felix', 'Alvin', 'Odhiambo', '27/06/95', 'Court clerk', 'not applicable', '212'),
(0, 122, '20406012', 'Mildred', 'Wanjiru ', 'Wangeci', '26/03/70', 'Judge ', 'Guilty ', '345');

-- --------------------------------------------------------

--
-- Table structure for table `kotcase`
--

CREATE TABLE IF NOT EXISTS `kotcase` (
  `id` int(20) NOT NULL,
  `case_number` varchar(20) NOT NULL,
  `date_of_commence` varchar(20) NOT NULL,
  `date_of_conclusion` varchar(20) NOT NULL,
  `suspect_number` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE IF NOT EXISTS `members` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `username` varchar(65) NOT NULL DEFAULT '',
  `password` varchar(65) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `username`, `password`) VALUES
(1, 'root', 'root');

-- --------------------------------------------------------

--
-- Table structure for table `suspect`
--

CREATE TABLE IF NOT EXISTS `suspect` (
  `id` int(11) NOT NULL,
  `first_name` text NOT NULL,
  `surname` text NOT NULL,
  `last_name` text NOT NULL,
  `age` int(11) NOT NULL,
  `address` varchar(11) NOT NULL,
  `nationality` text NOT NULL,
  `witness_number` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suspect`
--

INSERT INTO `suspect` (`id`, `first_name`, `surname`, `last_name`, `age`, `address`, `nationality`, `witness_number`) VALUES
(1, 'fred', 'oluoch', 'monk', 12, '114555', 'kenyan', '1');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` text NOT NULL,
  `surname` text NOT NULL,
  `last_name` text NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `role` int(20) NOT NULL,
  `employee_number` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `first_name`, `surname`, `last_name`, `username`, `password`, `role`, `employee_number`) VALUES
(1, 'fred', 'oluoch', 'oluoch', 'root', 'root', 1, '1'),
(2, 'alfy', 'okoyo', 'tom', 'admin', 'admin', 2, '2');

-- --------------------------------------------------------

--
-- Table structure for table `witness`
--

CREATE TABLE IF NOT EXISTS `witness` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `witness_number` varchar(20) NOT NULL,
  `first_name` text NOT NULL,
  `surname` text NOT NULL,
  `last_name` text NOT NULL,
  `address` varchar(20) NOT NULL,
  `nationality` text NOT NULL,
  `national_id` varchar(20) NOT NULL,
  `suspect_number` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `witness`
--

INSERT INTO `witness` (`id`, `witness_number`, `first_name`, `surname`, `last_name`, `address`, `nationality`, `national_id`, `suspect_number`) VALUES
(1, '1', 'blog', 'maria', 'ken', '789', 'somali', '54', '2');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
