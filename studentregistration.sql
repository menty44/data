-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2015 at 01:20 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `studentregistration`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE IF NOT EXISTS `tblstudents` (
  `StudID` smallint(6) NOT NULL AUTO_INCREMENT,
  `LName` varchar(50) DEFAULT NULL,
  `FNmae` varchar(50) DEFAULT NULL,
  `MName` varchar(50) DEFAULT NULL,
  `Gender` varchar(15) DEFAULT NULL,
  `Address` varchar(75) DEFAULT NULL,
  `ContactNo` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`StudID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`StudID`, `LName`, `FNmae`, `MName`, `Gender`, `Address`, `ContactNo`) VALUES
(19, 'MIRAMON', 'RAUL', 'GWAPO', 'MALE', 'KORONADAL CITY', '0935252525'),
(22, 'LEYSA', 'KEVIN', 'GWAPO', 'MALE', 'TBOLI', '092672634824'),
(23, 'MANIBOG', 'JOCELYN', 'GWAPA', 'FEMALE', 'EDWARDS', '092343235235'),
(24, 'MIRAMON', 'JOANNE', 'GWAPA', 'FEMALE', 'BRGY. BALDOSTAMON KORONADAL CITY SO. COT.', '092345235325'),
(25, 'FACINAL', 'JEWIL', 'GWAPO', 'MALE', 'NORALA', '0982345235'),
(26, 'LEYSA', 'FERDINAND', 'GWAPA', 'MALE', 'KORONADAL CITY', '0926378525'),
(27, 'ARISTOTELES', 'APRIL', 'BB KO', 'FEMALE', 'SURALLAH SO. COT', '09124124124');

-- --------------------------------------------------------

--
-- Table structure for table `tbluseraccount`
--

CREATE TABLE IF NOT EXISTS `tbluseraccount` (
  `UserID` smallint(6) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) DEFAULT NULL,
  `Username` varchar(50) DEFAULT NULL,
  `UPassword` varchar(50) DEFAULT NULL,
  `Role` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tbluseraccount`
--

INSERT INTO `tbluseraccount` (`UserID`, `Name`, `Username`, `UPassword`, `Role`) VALUES
(1, 'KEVIN G LEYSA', 'q', 'Q', 'ADMINISTRATOR'),
(3, 'APRIL ARISTOTELES', 'april', 'april', 'USER'),
(4, 'Holy children', 'ba', 'bat', 'USER');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
