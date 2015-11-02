-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2015 at 05:30 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `school`
--

-- --------------------------------------------------------

--
-- Table structure for table `sch_class_time_table_line`
--

CREATE TABLE IF NOT EXISTS `sch_class_time_table_line` (
  `tt_line_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `teacher_id` int(10) unsigned NOT NULL,
  `subject_id` int(10) unsigned NOT NULL,
  `dpid` int(10) unsigned NOT NULL,
  `ttday` varchar(45) NOT NULL,
  `ttid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`tt_line_id`) USING BTREE,
  KEY `FK_sch_class_time_table_teacher_id` (`teacher_id`),
  KEY `FK_sch_class_time_table_subject_id` (`subject_id`),
  KEY `FK_sch_class_time_table_dpid` (`dpid`),
  KEY `FK_sch_class_time_table_line_ttid` (`ttid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `sch_class_time_table_line`
--

INSERT INTO `sch_class_time_table_line` (`tt_line_id`, `teacher_id`, `subject_id`, `dpid`, `ttday`, `ttid`) VALUES
(1, 1, 1, 1, 'Sunday', 1),
(2, 1, 1, 2, 'Monday', 1),
(3, 1, 1, 3, 'Tuseday', 1),
(4, 1, 1, 1, 'Wednesday', 1),
(5, 1, 1, 2, 'Thusday', 1),
(6, 1, 1, 3, 'Satureday', 1),
(7, 4, 2, 1, 'Satureday', 1),
(8, 3, 3, 2, 'Satureday', 1),
(9, 4, 2, 2, 'Sunday', 1),
(10, 3, 3, 3, 'Sunday', 1),
(11, 3, 3, 1, 'Monday', 1),
(12, 4, 2, 3, 'Monday', 1),
(13, 4, 2, 1, 'Tuseday', 1),
(14, 3, 3, 2, 'Tuseday', 1),
(15, 3, 3, 2, 'Wednesday', 1),
(16, 4, 2, 3, 'Wednesday', 1),
(17, 4, 2, 1, 'Thusday', 1),
(18, 3, 3, 3, 'Thusday', 1);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `sch_class_time_table_line`
--
ALTER TABLE `sch_class_time_table_line`
  ADD CONSTRAINT `FK_sch_class_time_table_line_dpid` FOREIGN KEY (`dpid`) REFERENCES `sch_day_period` (`dpid`),
  ADD CONSTRAINT `FK_sch_class_time_table_line_subject_id` FOREIGN KEY (`subject_id`) REFERENCES `sch_subject` (`subject_id`),
  ADD CONSTRAINT `FK_sch_class_time_table_line_teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `sch_teacher_info` (`teacher_id`),
  ADD CONSTRAINT `FK_sch_class_time_table_line_ttid` FOREIGN KEY (`ttid`) REFERENCES `sch_time_table` (`ttid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
