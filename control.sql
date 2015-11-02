-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2015 at 12:57 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `control`
--

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE IF NOT EXISTS `session` (
  `sessionid` int(1) NOT NULL AUTO_INCREMENT,
  `accountid` varchar(15) NOT NULL,
  `accountlevel` int(1) NOT NULL,
  PRIMARY KEY (`sessionid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Table structure for table `useraccounts`
--

CREATE TABLE IF NOT EXISTS `useraccounts` (
  `AccountID` varchar(15) NOT NULL,
  `AccountPass` varchar(15) NOT NULL,
  `FirstName` varchar(20) NOT NULL,
  `LastName` varchar(20) NOT NULL,
  `Age` int(3) NOT NULL,
  `Address` text NOT NULL,
  `Phone` varchar(15) NOT NULL,
  `UserLevel` int(1) NOT NULL,
  PRIMARY KEY (`AccountID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `useraccounts`
--

INSERT INTO `useraccounts` (`AccountID`, `AccountPass`, `FirstName`, `LastName`, `Age`, `Address`, `Phone`, `UserLevel`) VALUES
('1', 'root', 'fred', 'oluoch', 26, '200-00515', '0720106420', 1);

-- --------------------------------------------------------

--
-- Table structure for table `userphotos`
--

CREATE TABLE IF NOT EXISTS `userphotos` (
  `PhotoID` int(10) NOT NULL AUTO_INCREMENT,
  `AccountID` varchar(15) NOT NULL,
  `Photos` longblob NOT NULL,
  PRIMARY KEY (`PhotoID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
