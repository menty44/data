-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2015 at 01:19 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `schoolmanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic`
--

CREATE TABLE IF NOT EXISTS `academic` (
  `register_No` int(11) NOT NULL AUTO_INCREMENT,
  `batch_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`register_No`),
  KEY `fk_academic_batch1_idx` (`batch_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ID`, `username`, `password`, `name`, `email`) VALUES
(1, 'admin', 'password', NULL, NULL),
(2, 'admin', 'password', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admission`
--

CREATE TABLE IF NOT EXISTS `admission` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `prev_Institute` varchar(45) DEFAULT NULL,
  `reason_Leaving` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `authentication`
--

CREATE TABLE IF NOT EXISTS `authentication` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ID_People` int(11) DEFAULT NULL,
  `role` tinyint(4) DEFAULT NULL,
  `action` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `authentication`
--

INSERT INTO `authentication` (`ID`, `time`, `ID_People`, `role`, `action`) VALUES
(1, '2015-03-30 00:46:55', 1, 1, 1),
(2, '2015-03-31 18:14:22', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `batch`
--

CREATE TABLE IF NOT EXISTS `batch` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `date` date DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE IF NOT EXISTS `department` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `extra_curricular`
--

CREATE TABLE IF NOT EXISTS `extra_curricular` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) DEFAULT '1',
  `location` varchar(200) DEFAULT NULL,
  `start` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `extra_curricular_has_student`
--

CREATE TABLE IF NOT EXISTS `extra_curricular_has_student` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `extra_curricular_ID` int(11) NOT NULL,
  `notes` text,
  `student_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_extra_curricular_has_student_extra_curricular1_idx` (`extra_curricular_ID`),
  KEY `fk_extra_curricular_has_student_student1_idx` (`student_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `family_staff`
--

CREATE TABLE IF NOT EXISTS `family_staff` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `married` tinyint(4) DEFAULT NULL,
  `staff_No` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_family_Staff_staff1_idx` (`staff_No`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `family_student`
--

CREATE TABLE IF NOT EXISTS `family_student` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `student_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_family_student_student1_idx` (`student_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `family_student_has_family_people_student`
--

CREATE TABLE IF NOT EXISTS `family_student_has_family_people_student` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `family_Student_ID` int(11) NOT NULL,
  `family_people_student_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_family_Student_has_family_people_student_family_people_s_idx` (`family_people_student_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `staff_No` int(11) NOT NULL,
  `content` text NOT NULL,
  `date` date DEFAULT NULL,
  `student_ID` int(11) NOT NULL,
  `status` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `fk_feedback_staff1_idx` (`staff_No`),
  KEY `fk_feedback_student1_idx` (`student_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mark`
--

CREATE TABLE IF NOT EXISTS `mark` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `subject_ID` int(11) NOT NULL,
  `point` tinyint(4) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `student_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_student_has_subject_subject1_idx` (`subject_ID`),
  KEY `fk_mark_student1_idx` (`student_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE IF NOT EXISTS `position` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `department_ID` int(11) NOT NULL,
  `status` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`ID`),
  KEY `fk_position_department1_idx` (`department_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `promotion`
--

CREATE TABLE IF NOT EXISTS `promotion` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `position_ID` int(11) NOT NULL,
  `staff_No` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_promotion_has_staff_staff1_idx` (`staff_No`),
  KEY `fk_promotion_has_staff_promotion1_idx` (`position_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `relatives_staff`
--

CREATE TABLE IF NOT EXISTS `relatives_staff` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `relation` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `occupation` varchar(45) DEFAULT NULL,
  `gender` tinyint(4) DEFAULT NULL,
  `family_Staff_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_relatives_staff_family_Staff1_idx` (`family_Staff_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `relatives_student`
--

CREATE TABLE IF NOT EXISTS `relatives_student` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `relation` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `occupation` varchar(45) DEFAULT NULL,
  `gender` tinyint(4) DEFAULT NULL,
  `family_student_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_relatives_student_family_student1_idx` (`family_student_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `remark`
--

CREATE TABLE IF NOT EXISTS `remark` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  `date` date DEFAULT NULL,
  `staff_No` int(11) NOT NULL,
  `student_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_remark_staff1_idx` (`staff_No`),
  KEY `fk_remark_student1_idx` (`student_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE IF NOT EXISTS `staff` (
  `No` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `birthday` date DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `experience` varchar(45) DEFAULT NULL,
  `education_Background` text,
  `gender` tinyint(4) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`No`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `No` varchar(10) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `gender` tinyint(4) DEFAULT NULL,
  `admission_ID` int(11) NOT NULL,
  `academic_register_No` int(11) NOT NULL,
  `status` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`ID`),
  KEY `fk_student_admission1_idx` (`admission_ID`),
  KEY `fk_student_academic1_idx` (`academic_register_No`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE IF NOT EXISTS `subject` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `status` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `usrn` varchar(45) NOT NULL,
  `pswd` varchar(45) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `role` tinyint(4) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `academic`
--
ALTER TABLE `academic`
  ADD CONSTRAINT `fk_academic_batch1` FOREIGN KEY (`batch_ID`) REFERENCES `batch` (`ID`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `extra_curricular_has_student`
--
ALTER TABLE `extra_curricular_has_student`
  ADD CONSTRAINT `fk_extra_curricular_has_student_extra_curricular1` FOREIGN KEY (`extra_curricular_ID`) REFERENCES `extra_curricular` (`ID`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_extra_curricular_has_student_student1` FOREIGN KEY (`student_ID`) REFERENCES `student` (`ID`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `family_staff`
--
ALTER TABLE `family_staff`
  ADD CONSTRAINT `fk_family_Staff_staff1` FOREIGN KEY (`staff_No`) REFERENCES `staff` (`No`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `family_student`
--
ALTER TABLE `family_student`
  ADD CONSTRAINT `fk_family_student_student1` FOREIGN KEY (`student_ID`) REFERENCES `student` (`ID`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `family_student_has_family_people_student`
--
ALTER TABLE `family_student_has_family_people_student`
  ADD CONSTRAINT `fk_family_Student_has_family_people_student_family_people_stu1` FOREIGN KEY (`family_people_student_ID`) REFERENCES `relatives_student` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `fk_feedback_staff1` FOREIGN KEY (`staff_No`) REFERENCES `staff` (`No`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_feedback_student1` FOREIGN KEY (`student_ID`) REFERENCES `student` (`ID`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `mark`
--
ALTER TABLE `mark`
  ADD CONSTRAINT `fk_mark_student1` FOREIGN KEY (`student_ID`) REFERENCES `student` (`ID`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_student_has_subject_subject1` FOREIGN KEY (`subject_ID`) REFERENCES `subject` (`ID`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `position`
--
ALTER TABLE `position`
  ADD CONSTRAINT `fk_position_department1` FOREIGN KEY (`department_ID`) REFERENCES `department` (`ID`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `promotion`
--
ALTER TABLE `promotion`
  ADD CONSTRAINT `fk_promotion_has_staff_promotion1` FOREIGN KEY (`position_ID`) REFERENCES `position` (`ID`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_promotion_has_staff_staff1` FOREIGN KEY (`staff_No`) REFERENCES `staff` (`No`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `relatives_staff`
--
ALTER TABLE `relatives_staff`
  ADD CONSTRAINT `fk_relatives_staff_family_Staff1` FOREIGN KEY (`family_Staff_ID`) REFERENCES `family_staff` (`ID`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `relatives_student`
--
ALTER TABLE `relatives_student`
  ADD CONSTRAINT `fk_relatives_student_family_student1` FOREIGN KEY (`family_student_ID`) REFERENCES `family_student` (`ID`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `remark`
--
ALTER TABLE `remark`
  ADD CONSTRAINT `fk_remark_staff1` FOREIGN KEY (`staff_No`) REFERENCES `staff` (`No`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_remark_student1` FOREIGN KEY (`student_ID`) REFERENCES `student` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `fk_student_academic1` FOREIGN KEY (`academic_register_No`) REFERENCES `academic` (`register_No`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_student_admission1` FOREIGN KEY (`admission_ID`) REFERENCES `admission` (`ID`) ON DELETE CASCADE ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
