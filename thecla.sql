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
-- Database: `thecla`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`) VALUES
(1, 'fred', 'fred'),
(2, 'root', 'root');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE IF NOT EXISTS `profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `age` int(200) NOT NULL,
  `profession` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='table for users profile' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id`, `firstname`, `lastname`, `age`, `profession`) VALUES
(1, 'thecla', 'feminista', 21, 'software engineer'),
(2, 'fredrick', 'oluoch', 25, 'devops');

-- --------------------------------------------------------

--
-- Table structure for table `tabb`
--

CREATE TABLE IF NOT EXISTS `tabb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cola` varchar(200) NOT NULL,
  `colb` varchar(200) NOT NULL,
  `colc` varchar(200) NOT NULL,
  `cold` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tabb`
--

INSERT INTO `tabb` (`id`, `cola`, `colb`, `colc`, `cold`) VALUES
(1, 'khjk', 'kkuku', 'khk', 'hgh');

-- --------------------------------------------------------

--
-- Table structure for table `tabc`
--

CREATE TABLE IF NOT EXISTS `tabc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cola` varchar(200) NOT NULL,
  `colb` varchar(200) NOT NULL,
  `colc` varchar(200) NOT NULL,
  `cold` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tabd`
--

CREATE TABLE IF NOT EXISTS `tabd` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cola` varchar(200) NOT NULL,
  `colb` varchar(200) NOT NULL,
  `colc` varchar(200) NOT NULL,
  `cold` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tabe`
--

CREATE TABLE IF NOT EXISTS `tabe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cola` varchar(200) NOT NULL,
  `colb` varchar(200) NOT NULL,
  `colc` varchar(200) NOT NULL,
  `cold` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
