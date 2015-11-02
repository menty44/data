-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2015 at 12:56 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `books`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE IF NOT EXISTS `books` (
  `BookID` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(150) NOT NULL,
  `Author` varchar(150) NOT NULL,
  `PublisherName` varchar(150) NOT NULL,
  `CopyrightYear` year(4) NOT NULL,
  PRIMARY KEY (`BookID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`BookID`, `Title`, `Author`, `PublisherName`, `CopyrightYear`) VALUES
(11, '', '', '', 0000),
(10, 'mum', 'dad', 'mama', 0000),
(3, 'Algebra', 'Almel', 'Chun Sa', 2007),
(4, 'Algebra', 'Almel', 'Chun Sa', 2007),
(5, 'Algebra', 'Almel', 'Chun Sa', 2007),
(6, 'Algebra', 'Almel', 'Chun Sa', 2007),
(7, 'Algebra', 'Almel', 'Chun Sa', 2007),
(8, 'Algebra', 'Almel', 'Chun Sa', 2007),
(9, 'dsad', 'aDa', 'admin', 0000);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
