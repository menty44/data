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
-- Database: `arif_form`
--

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE IF NOT EXISTS `clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` char(20) NOT NULL,
  `last_name` char(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `phone_no` int(20) NOT NULL,
  `company` varchar(20) NOT NULL,
  `issue` varchar(200) NOT NULL,
  `comments` varchar(100) NOT NULL,
  `date` varchar(500) NOT NULL,
  `time` varchar(500) NOT NULL,
  `browser` varchar(50) NOT NULL,
  `os` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `first_name`, `last_name`, `email`, `phone_no`, `company`, `issue`, `comments`, `date`, `time`, `browser`, `os`) VALUES
(1, 'fred', 'Oluoch', 'fred.oluoch@ariftechnologies.com', 720106420, 'arif Technologies Li', 'none', 'none', '', '', '', ''),
(2, 'fred', 'Oluoch', 'fred.oluoch@ariftechnologies.com', 720106420, 'arif Technologies Li', 'none', 'none', '', '', '', ''),
(3, 'fred', 'Oluoch', 'fred.oluoch@ariftechnologies.com', 720106420, 'arif Technologies Li', 'none', 'none', '06/07/2015', '15:15:35', '', ''),
(4, 'fred', 'Oluoch', 'fred.oluoch@ariftechnologies.com', 720106420, 'arif Technologies Li', 'none', 'none', '06/07/2015', '15:15:49', '', ''),
(5, 'fred', 'Oluoch', 'fred.oluoch@ariftechnologies.com', 720106420, 'arif Technologies Li', 'none', 'none', '06/07/2015', '15:18:55', '', ''),
(6, 'fred', 'Oluoch', 'fred.oluoch@ariftechnologies.com', 720106420, 'arif Technologies Li', 'none', 'none', '06/07/2015', '15:26:07', '', ''),
(7, 'fred', 'Oluoch', 'fred.oluoch@ariftechnologies.com', 720106420, 'arif Technologies Li', 'none', 'none', '06/07/2015', '15:29:04', '', ''),
(8, 'fred', 'Oluoch', 'fred.oluoch@ariftechnologies.com', 720106420, 'arif Technologies Li', 'none', 'none', '06/07/2015', '15:29:11', '', ''),
(9, 'fred', 'Oluoch', 'fred.oluoch@ariftechnologies.com', 720106420, 'arif Technologies Li', 'none', 'none', '06/07/2015', '15:30:58', '', ''),
(10, 'fred', 'Oluoch', 'fred.oluoch@ariftechnologies.com', 720106420, 'arif Technologies Li', 'none', 'none', '06/07/2015', '15:32:11', '', ''),
(11, 'fred', 'Oluoch', 'fred.oluoch@ariftechnologies.com', 720106420, 'arif Technologies Li', 'none', 'none', '06/07/2015', '15:34:10', '', ''),
(12, 'fred', 'Oluoch', 'fred.oluoch@ariftechnologies.com', 720106420, 'arif Technologies Li', 'none', 'none', '06/07/2015', '15:35:22', '', ''),
(13, 'fred', 'Oluoch', 'fred.oluoch@ariftechnologies.com', 720106420, 'arif Technologies Li', 'none', 'none', '06/07/2015', '15:53:40', '', ''),
(14, 'fred', 'Oluoch', 'fred.oluoch@ariftechnologies.com', 720106420, 'arif Technologies Li', 'none', 'none', '06/07/2015', '15:56:32', '', ''),
(15, 'fred', 'Oluoch', 'fred.oluoch@ariftechnologies.com', 720106420, 'arif Technologies Li', 'none', 'none', '06/07/2015', '15:58:23', '', ''),
(16, 'mark', 'khsfh', 'jhjhb', 8555555, 'khgkjhh', 'mjhvjmhvkmhjv', 'mbvmv', '06/07/2015', '16:00:59', '', ''),
(17, 'mark', 'khsfh', 'jhjhb', 8555555, 'khgkjhh', 'mjhvjmhvkmhjv', 'mbvmv', '06/07/2015', '16:06:06', '', ''),
(18, 'mark', 'khsfh', 'jhjhb', 8555555, 'khgkjhh', 'mjhvjmhvkmhjv', 'mbvmv', '06/07/2015', '16:06:41', '', ''),
(19, 'mark', 'khsfh', 'jhjhb', 8555555, 'khgkjhh', 'mjhvjmhvkmhjv', 'mbvmv', '06/07/2015', '16:06:46', '', ''),
(20, 'mark', 'khsfh', 'jhjhb', 8555555, 'khgkjhh', 'mjhvjmhvkmhjv', 'mbvmv', '06/07/2015', '16:09:40', '', ''),
(21, 'mark', 'khsfh', 'jhjhb', 8555555, 'khgkjhh', 'mjhvjmhvkmhjv', 'mbvmv', '06/07/2015', '16:09:47', '', ''),
(22, 'mark', 'khsfh', 'jhjhb', 8555555, 'khgkjhh', 'mjhvjmhvkmhjv', 'mbvmv', '06/07/2015', '16:09:55', '', ''),
(23, 'mark', 'khsfh', 'jhjhb', 8555555, 'khgkjhh', 'mjhvjmhvkmhjv', 'mbvmv', '06/07/2015', '16:12:06', '', ''),
(24, 'mark', 'khsfh', 'jhjhb', 8555555, 'khgkjhh', 'mjhvjmhvkmhjv', 'mbvmv', '06/07/2015', '19:22:37', '', ''),
(25, 'mark', 'khsfh', 'jhjhb', 8555555, 'khgkjhh', 'mjhvjmhvkmhjv', 'mbvmv', '06/07/2015', '19:27:41', '', ''),
(26, 'mark', 'khsfh', 'jhjhb', 8555555, 'khgkjhh', 'mjhvjmhvkmhjv', 'mbvmv', '06/07/2015', '19:38:27', '', ''),
(27, 'mark', 'khsfh', 'jhjhb', 8555555, 'khgkjhh', 'mjhvjmhvkmhjv', 'mbvmv', '06/07/2015', '19:45:50', '', ''),
(28, '', '', '', 0, '', '', '', '06/07/2015', '20:03:11', '', ''),
(29, 'benja', 'mathya', 'benjaminmaithya3@gmail.com', 89779867, 'xrx', '', ',mnhb,jbhj,', '07/07/2015', '20:20:35', '', ''),
(30, 'benja', 'mathya', 'benjaminmaithya3@gmail.com', 89779867, 'xrx', '', ',mnhb,jbhj,', '07/07/2015', '20:25:30', '', ''),
(31, 'root', 'sfssdg', 'root', 33333, 'zdgdg', '', 'zdgdgdgg', '07/07/2015', '20:26:06', '', ''),
(32, 'root', 'sfssdg', 'root', 33333, 'zdgdg', '', 'zdgdgdgg', '07/07/2015', '20:26:24', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE IF NOT EXISTS `sessions` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `sess` varchar(200) NOT NULL,
  `date` int(200) NOT NULL,
  `time` int(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
