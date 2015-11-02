-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2015 at 12:58 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `courier_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `rates`
--

CREATE TABLE IF NOT EXISTS `rates` (
  `0-100` int(10) NOT NULL,
  `100-500` int(10) NOT NULL,
  `500-1000` int(10) NOT NULL,
  `over 1000` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rates`
--

INSERT INTO `rates` (`0-100`, `100-500`, `500-1000`, `over 1000`) VALUES
(200, 500, 800, '1000');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_courier`
--

CREATE TABLE IF NOT EXISTS `tbl_courier` (
  `cid` int(10) NOT NULL AUTO_INCREMENT,
  `cons_no` varchar(20) NOT NULL,
  `ship_name` varchar(100) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `s_add` varchar(200) NOT NULL,
  `rev_name` varchar(100) NOT NULL,
  `r_phone` varchar(12) NOT NULL,
  `r_add` varchar(200) NOT NULL,
  `type` varchar(40) NOT NULL,
  `weight` double NOT NULL,
  `invice_no` varchar(20) NOT NULL,
  `qty` int(10) NOT NULL,
  `book_mode` varchar(20) NOT NULL,
  `freight` double NOT NULL,
  `mode` varchar(20) NOT NULL,
  `pick_date` varchar(20) NOT NULL,
  `pick_time` varchar(10) NOT NULL,
  `status` varchar(20) NOT NULL,
  `comments` varchar(250) NOT NULL,
  `book_date` date NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `tbl_courier`
--

INSERT INTO `tbl_courier` (`cid`, `cons_no`, `ship_name`, `phone`, `s_add`, `rev_name`, `r_phone`, `r_add`, `type`, `weight`, `invice_no`, `qty`, `book_mode`, `freight`, `mode`, `pick_date`, `pick_time`, `status`, `comments`, `book_date`) VALUES
(1, 'M22P7KHM', 'Tousif Khan', '020 253623', 's sd sdsd', 'Rizwan Ahmed', '020 88552', 'sd sd s', 'Documents', 20, '252525', 12, 'TBB', 240, 'Completed', '08/05/2013', '12 noon', 'Delivered', 'wil be informed', '2013-05-16'),
(2, 'BUTCTXPA', 'lkjh', 'kj', 'kjhgh0987tghn', 'hjkl', 'ghjk', 'vbnpoiu', 'Documents', 6789, 'hjkuik', 87, 'Paid', 354, 'Air', '14/05/2013', '1', 'delivered', 'puhyg', '2013-05-21'),
(3, 'X43I407W', 'alex', '039876545678', '878uijsiou89', 'rian', '98765456', 'jkhcjadjnakuru', 'Parcel', 345, '67890', 876, 'ToPay', 876, 'Road', '13/05/2013', '6am', 'Delivered', 'lk;l;k', '2013-05-21'),
(4, 'SHO33WHH', 'denis wise', '0727778313', 'NAKURU STREET', 'Flora', '0727669104', 'RAVINE STREET', 'Documents', 20, '', 1, 'Paid', 1, 'Train', '', '', 'Delivered', 'You Will Be called Upon The Reception Of Consignment', '2013-05-22'),
(5, '468560', 'Jeremy', '073574201', 'P.o box 47893 Nairobi', 'gldies', '9467399273', 'p.o box 29374 kisumu', 'Sentiments', 0, '', 1, 'ToPay', 1, 'Road', '', '', 'Delivered', 'you will be informed', '2013-05-22'),
(6, 'ZYEH0GJF', 'fiona', '0722265720', 'fiona', 'morris ironde', '0726547223', 'morris', 'Parcel', 20, '1', 10, 'ToPay', 12, 'Road', '28/05/2013', '6am', 'Delivered', 'noijopad', '2013-05-28'),
(7, '5SESPK59', 'fiona', '722345678', 'kjn', 'MORRIS', '09876543', 'kj nk', 'Documents', 1, '718242283', 0, 'Paid', 0, '02/05/2013', '22-5-2013 15:20:51', 'delivered', 'Delivered', '2013-05-31 21:28:11', '0000-00-00'),
(8, 'YUIL37JJ', 'fiona', '722345678', 'xfghujik', 'gldies', '09876543', 'kjgsg', 'Documents', 10, '386940047', 0, 'Paid', 0, '12/06/2013', '12 noon', 'In Transit', 'Delivered', '2013-06-03 12:24:16', '0000-00-00'),
(9, '8HXWO3LQ', 'pauline', '073574201', 'werty', 'gldies', '9467399273', 'we4r5t6y7u', 'Parcel', 20, '1929433440', 0, 'Paid', 0, '04/06/2013', '11:00:28', 'In Transit', 'jhgiu', '2013-06-04 12:00:56', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_courier_clerks`
--

CREATE TABLE IF NOT EXISTS `tbl_courier_clerks` (
  `cid` int(10) NOT NULL AUTO_INCREMENT,
  `clerk_name` varchar(40) NOT NULL,
  `clerk_pwd` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `email` varchar(30) NOT NULL,
  `ph_no` varchar(12) NOT NULL,
  `office` varchar(12) NOT NULL,
  `reg_date` datetime NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `tbl_courier_clerks`
--

INSERT INTO `tbl_courier_clerks` (`cid`, `clerk_name`, `clerk_pwd`, `address`, `email`, `ph_no`, `office`, `reg_date`) VALUES
(1, 'admin', '8c7d5c25d7c533e08b10', 'Nakuru', 'brontzkir@gmail.com', '1234567890', '', '2013-05-24 01:45:10'),
(2, 'briankirwa', '8a8f57160cbd8ff38a6ab81940f4ba06dcd833c1', 'kohuiukj', 'criss@hmail.com', '1234567890', '', '2013-05-24 01:51:36'),
(3, 'fionachebet', '6f6aa9fca80ecb093e7959f859152ec36d1189af', 'lkl;jpopo', 'brontzkir@gmail.com', '1234567890', '', '2013-05-24 01:52:29'),
(4, 'brian wendott', 'f887ca299fb2c0b9d99e335bf747acfdece8b4a2', 'jiojo', 'brontzkir@gmail.com', '1234567890', '', '2013-05-24 02:14:14'),
(5, 'kevinmauche', 'ba64368dd96394504916874f35909584d16a9965', 'lkpjop', 'brontzkir@gmail.com', '1234567890', '', '2013-05-27 09:27:47'),
(6, 'morris ironde', '74d42ea2e7f85bd3d88f1a52a433bc8d8b73c342', 'lkpoihoh', 'criss@hmail.com', '1234567890', '', '2013-05-27 12:13:28'),
(7, 'denis wise', '85910b6b06fd68ff120fcc97480926f0a9dfe082', 'lkmpocx', 'brontzkir@gmail.com', '1234567890', '', '2013-05-27 12:53:00'),
(8, 'brian ronoh', '9214585d59f082edb8ec95a4e9ac913592b18437', 'kjok', 'brontzkir@gmail.com', '1234567890', '', '2013-05-27 12:55:05'),
(9, 'muli kevin', '85e99eba2ada7736332f547ce9fcb1c297ebdfc6', 'kklpk[', 'criss@hmail.com', '1234567890', '', '2013-05-27 01:06:12'),
(10, 'papap', '85e99eba2ada7736332f547ce9fcb1c297ebdfc6', 'jhi', 'brontzkir@gmail.com', '1234567890', '', '2013-05-27 01:07:56'),
(11, 'kevin2', '3ed93b2f997082adc4ac06b2ca258f694e49cf71', 'oiuhy', 'brontzkir@gmail.com', '1234567890', '', '2013-05-27 01:16:54');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_courier_officers`
--

CREATE TABLE IF NOT EXISTS `tbl_courier_officers` (
  `cid` int(10) NOT NULL AUTO_INCREMENT,
  `officer_name` varchar(40) NOT NULL,
  `off_pwd` varchar(40) NOT NULL,
  `address` varchar(250) NOT NULL,
  `email` varchar(100) NOT NULL,
  `ph_no` varchar(12) NOT NULL,
  `office` varchar(100) NOT NULL,
  `reg_date` date NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `tbl_courier_officers`
--

INSERT INTO `tbl_courier_officers` (`cid`, `officer_name`, `off_pwd`, `address`, `email`, `ph_no`, `office`, `reg_date`) VALUES
(1, 'user', 'user', '2134', 'brontzkir@gmail.com', '98765678', 'wells', '2013-05-16'),
(2, 'user', 'user', '19874 Eldoret', 'user@test.com', '0972674302', 'kabarnet', '2013-05-21'),
(3, 'Chris', 'gunshot', 'p.o box 11 Nairobi', 'criss@hmail.com', '09733474669', 'wells', '2013-05-21'),
(4, 'jack', 'jack', 'RAVINE', 'jackson@yahoo.com', '98765678', 'wells', '2013-05-22'),
(5, '', '', '', '', '', 'wells', '2013-05-22'),
(6, '', '', '', '', '', 'wells', '2013-05-22'),
(7, '', '', '', '', '', 'wells', '2013-05-22'),
(8, '', '', '', '', '', 'wells', '2013-05-22'),
(9, '', '', '', '', '', 'wells', '2013-05-22'),
(10, '', '', '', '', '', 'wells', '2013-05-22'),
(11, '', '', '', '', '', 'wells', '2013-05-22'),
(12, '', '', '', '', '', 'wells', '2013-05-22'),
(13, '', '', '', '', '', 'wells', '2013-05-22'),
(14, '', '', '', '', '', 'wells', '2013-05-22'),
(15, '', '', '', '', '', 'wells', '2013-05-22'),
(16, '', '', '', '', '', 'wells', '2013-05-22'),
(17, 'flora chebon', 'flo', 'lkjojop', 'flo@gmail.com', 'lkjioj', 'Ravine', '2013-05-23'),
(18, 'mnknkjn', 'njkioi', 'kopjopj', 'mmklj09j9@yahoo.com', 'llkopjop', 'nairobi', '2013-05-23'),
(19, 'joram', 'jo', 'joro', 'joro@gmail.com', '098765431', 'kabarnet', '2013-05-24'),
(20, 'phil', 'phil', 'egerton 2012', 'ronophil@yahoo.com', '0722236570', 'nairobi', '2013-05-26'),
(21, 'lelgo', 'chelelgo', 'kljioo', 'criss@hmail.com', '1234567890', 'Ravine', '2013-05-29'),
(22, '', '', '', '', '0987654321', 'kabarnet', '2013-05-29'),
(23, '', '', '', '', '1234567890', 'kabarnet', '2013-05-29'),
(24, 'jakoyo', 'jakoyo', 'xcsavdsfdf', 'criss@hmail.com', '1234567890', 'wells', '2013-05-29');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_courier_track`
--

CREATE TABLE IF NOT EXISTS `tbl_courier_track` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cid` int(10) NOT NULL,
  `cons_no` varchar(20) NOT NULL,
  `current_city` varchar(100) NOT NULL,
  `status` varchar(30) NOT NULL,
  `comments` varchar(255) NOT NULL,
  `bk_time` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `tbl_courier_track`
--

INSERT INTO `tbl_courier_track` (`id`, `cid`, `cons_no`, `current_city`, `status`, `comments`, `bk_time`) VALUES
(1, 1, 'M22P7KHM', 'wells', 'In Transit', 'DELAYED FOR A WHILE', '2013-05-16'),
(2, 1, 'M22P7KHM', 'wells', 'Landed', '', '2013-05-16'),
(3, 1, 'M22P7KHM', 'wells', 'Onhold', 'the consighnment is gonna be delayed', '2013-05-16'),
(4, 3, 'X43I407W', 'wells', 'Landed', 'come and collect your consignment..it has arrived', '2013-05-21'),
(5, 4, 'SHO33WHH', 'G4S', 'In Transit', 'It Has been delivered', '2013-05-22'),
(6, 6, 'ZYEH0GJF', 'kabarnet', 'Landed', 'come and pick it', '2013-05-28'),
(7, 5, '468560', 'nairobi', 'Onhold', '', '2013-06-03');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_courier_vehicles`
--

CREATE TABLE IF NOT EXISTS `tbl_courier_vehicles` (
  `courier_id` int(10) NOT NULL AUTO_INCREMENT,
  `courier_type` int(10) NOT NULL,
  `courier_reg` varchar(10) NOT NULL,
  `courier_model` varchar(20) NOT NULL,
  `driver` varchar(20) NOT NULL,
  `phone_no` varchar(20) NOT NULL,
  `office_name` varchar(20) NOT NULL,
  PRIMARY KEY (`courier_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `tbl_courier_vehicles`
--

INSERT INTO `tbl_courier_vehicles` (`courier_id`, `courier_type`, `courier_reg`, `courier_model`, `driver`, `phone_no`, `office_name`) VALUES
(1, 0, 'kba', 'nissan', 'brian', '1234567890', 'kabarnet'),
(2, 0, 'kba', 'nissan', 'brian', '1234567890', 'kabarnet'),
(3, 0, 'kba', 'nissan', 'mimi', '1234567890', 'kabarnet'),
(4, 0, 'kbb 167', 'Canter', 'kobilo', '0722610838', 'G4S'),
(5, 0, 'kca ', 'fighter', 'phil', '0722236570', 'nairobi'),
(6, 0, '', '', '', '', 'wells'),
(7, 0, 'kba', 'nissan', 'phil', '0722236570', 'Ravine'),
(8, 0, 'kba', '', '', '', 'wells'),
(9, 0, '', '', '', '', 'wells'),
(10, 0, '', '', '', '', 'wells'),
(11, 0, '', '', '', '', 'wells'),
(12, 0, '', '', '', 'sdrtyu', 'wells'),
(13, 0, '', '', '', '', 'wells'),
(14, 0, '', '', '', '', 'wells'),
(15, 0, '', '', '', ';ljkojojop', 'wells'),
(16, 0, 'kby 1666', 'nissan', 'keston', '0987654', 'Ravine'),
(17, 0, '', '', '', '', 'wells'),
(18, 0, '', '', '', '', 'wells');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_offices`
--

CREATE TABLE IF NOT EXISTS `tbl_offices` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `off_name` varchar(100) NOT NULL,
  `address` varchar(230) NOT NULL,
  `city` varchar(100) NOT NULL,
  `ph_no` varchar(20) NOT NULL,
  `office_time` varchar(100) NOT NULL,
  `contact_person` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tbl_offices`
--

INSERT INTO `tbl_offices` (`id`, `off_name`, `address`, `city`, `ph_no`, `office_time`, `contact_person`) VALUES
(1, 'wells', 'iu9awfugspo', 'nairobi', '3456789', '09876', '66789'),
(2, 'kabarnet', 'p.o box 2366 Nakuru', 'Nakuru', '074587351', '8am-6pm', 'kirwa ronoh'),
(3, 'G4S', '172 Nakuru', 'Nakuru', '98765678', '6am-12noon', 'Mwangi'),
(4, 'Ravine', 'Eldama Ravine', 'Ravine', '02026434', '6am-12noon', 'jack'),
(5, 'nairobi', ' p.o box 35098765', 'nai', '0987654567', '10am-10pm', 'nash');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
