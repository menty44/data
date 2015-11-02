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
-- Database: `college`
--

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE IF NOT EXISTS `registration` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(200) NOT NULL,
  `category` varchar(200) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `firstname`, `lastname`, `email`, `username`, `category`, `password`) VALUES
(2, 'fred', '', 'test@gmail.com', '', '', '2bbfe141c3dcb0b15263bc39b864291c48662f58'),
(3, 'test', '', 'test@gmaol.com', '', '', '51abb9636078defbf888d8457a7c76f85c8f114c'),
(4, 'mark', '', 'mark@gmail.com', '', '', 'markmark'),
(5, 'wayne', 'wayne', 'wayne@gmail.com', '', '', 'waynewayne'),
(6, 'chichi', 'chichi', 'chichi@gmail.com', 'chichi', '', 'chichichichi'),
(7, 'cate', 'cate', 'cate@gmail.com', 'cate', '', 'catecate'),
(8, 'cate', 'cate', 'cate@gmail.com', 'cate', '', 'catecate'),
(9, 'cate', 'cate', 'cate@gmail.com', 'cate', '', 'catecate'),
(10, 'dcategory', 'dcategory', 'dcategory@gmail.com', 'dcategory', '', 'dcategorydcategory'),
(11, 'add', 'add', 'add@gmail.com', 'add', 'jobseeker', 'addaddadd'),
(12, 'add', 'add', 'add@gmail.com', 'add', 'jobseeker', 'addaddadd'),
(13, 'Category ', 'Category ', 'Category@gmail.com', 'Category ', '', 'Category Category '),
(14, 'Category ', 'Category ', 'Category@gmail.com', 'Category ', '', 'Category Category '),
(15, 'Category ', 'Category ', 'Category@gmail.com', 'Category ', '', 'Category Category '),
(16, 'Category ', 'Category ', 'Category@gmail.com', 'Category ', '', 'Category Category '),
(17, 'csfaf', 'asfsf', 'ada@gmail.com', 'Category ', 'employer', 'Category '),
(18, 'mike', 'mikefff', 'mike@gmail.com', 'mike', 'jobseeker', 'mikemike');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
