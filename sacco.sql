-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 18, 2015 at 07:43 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sacco`
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
-- Table structure for table `registration`
--

CREATE TABLE IF NOT EXISTS `registration` (
  `id` int(11) NOT NULL,
  `first_name` char(100) NOT NULL,
  `second_name` char(100) NOT NULL,
  `last_name` char(100) NOT NULL,
  `id/passport_no` varchar(100) NOT NULL,
  `dob` varchar(100) NOT NULL,
  `email_address` varchar(100) NOT NULL,
  `phone_no` int(100) NOT NULL,
  `po_box` varchar(100) NOT NULL,
  `gender` text NOT NULL,
  `login_id` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `first_name`, `second_name`, `last_name`, `id/passport_no`, `dob`, `email_address`, `phone_no`, `po_box`, `gender`, `login_id`) VALUES
(1, 'fred', 'oluoch', 'oluoch', '123456', '1989/06/14', 'menty44@gmail.com', 720106420, '200-00515', 'male', '1'),
(2, 'john', 'doe', 'odiero', '12589', '1999/02/02', 'menty44@gmail.com', 758123654, '200-00515', 'male', '2');

-- --------------------------------------------------------

--
-- Table structure for table `userlevel`
--

CREATE TABLE IF NOT EXISTS `userlevel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin` int(11) NOT NULL,
  `staff` int(11) NOT NULL,
  `members` int(11) NOT NULL,
  `guest` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `userlevel`
--

INSERT INTO `userlevel` (`id`, `admin`, `staff`, `members`, `guest`) VALUES
(1, 1, 2, 3, 4);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
