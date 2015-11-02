-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2015 at 12:53 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `agentlitedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `access`
--

CREATE TABLE IF NOT EXISTS `access` (
  `ID` int(11) NOT NULL,
  `READ_OK` smallint(6) NOT NULL DEFAULT '0',
  `WRITE_OK` smallint(6) NOT NULL DEFAULT '0',
  `UPDATE_OK` smallint(6) NOT NULL DEFAULT '0',
  `DELETE_OK` smallint(6) NOT NULL DEFAULT '0',
  `REPORT_OK` smallint(6) NOT NULL DEFAULT '0',
  `GRANT_OK` smallint(6) NOT NULL DEFAULT '0',
  `RESTRICTED_OK` smallint(6) NOT NULL DEFAULT '0',
  `ACCESS_LEVEL` varchar(15) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `access`
--

INSERT INTO `access` (`ID`, `READ_OK`, `WRITE_OK`, `UPDATE_OK`, `DELETE_OK`, `REPORT_OK`, `GRANT_OK`, `RESTRICTED_OK`, `ACCESS_LEVEL`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1, 'Director');

-- --------------------------------------------------------

--
-- Table structure for table `banking`
--

CREATE TABLE IF NOT EXISTS `banking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_id` int(11) NOT NULL,
  `trans_date` date NOT NULL,
  `trans_type` varchar(10) NOT NULL COMMENT 'Deposit | Withdrawal',
  `amount` double NOT NULL,
  `mode` varchar(10) DEFAULT NULL,
  `cheque_no` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `staff_id` (`staff_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `banking`
--

INSERT INTO `banking` (`id`, `staff_id`, `trans_date`, `trans_type`, `amount`, `mode`, `cheque_no`) VALUES
(1, 1, '2009-05-11', 'deposit', 10000, 'cheque', '1244'),
(2, 1, '2009-05-11', 'deposit', 5000, 'cash', NULL),
(3, 1, '2009-05-11', 'withdrawal', 4000, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `cashvoucher`
--

CREATE TABLE IF NOT EXISTS `cashvoucher` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `STAFF_ID` int(11) NOT NULL,
  `PAY_DATE` date NOT NULL,
  `RECEIPT_NO` int(11) DEFAULT NULL,
  `NAME` varchar(25) NOT NULL,
  `ACCOUNT` varchar(55) DEFAULT NULL,
  `DESCRIPTION` text,
  `AMOUNT` double NOT NULL,
  `AMOUNT_WORDS` text,
  PRIMARY KEY (`ID`),
  KEY `STAFF_ID` (`STAFF_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `cashvoucher`
--

INSERT INTO `cashvoucher` (`ID`, `STAFF_ID`, `PAY_DATE`, `RECEIPT_NO`, `NAME`, `ACCOUNT`, `DESCRIPTION`, `AMOUNT`, `AMOUNT_WORDS`) VALUES
(1, 1, '2009-05-06', NULL, 'Martha Wairimu', 'Cleaning', '3 times a week', 2000, 'Twho thousand shillings only'),
(2, 1, '2009-05-06', NULL, 'KPLC', 'Electricity', NULL, 1500, 'One thousand Five hundred shillings only');

-- --------------------------------------------------------

--
-- Table structure for table `certificate`
--

CREATE TABLE IF NOT EXISTS `certificate` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `COVER_NO` varchar(30) DEFAULT NULL,
  `DEBIT_ID` int(11) NOT NULL,
  `START_DATE` date NOT NULL,
  `EXPIRE_DATE` date NOT NULL,
  `CERT_TYPE` varchar(7) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `DEBIT_ID` (`DEBIT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE IF NOT EXISTS `client` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FILE_NO` varchar(11) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `LANDLINE` varchar(40) DEFAULT NULL,
  `MOBILE` varchar(40) DEFAULT NULL,
  `OCCUPATION` varchar(40) DEFAULT NULL,
  `POSTAL_ADDRESS` mediumtext,
  `EMAIL` varchar(45) DEFAULT NULL,
  `SALES_REP` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`ID`, `FILE_NO`, `NAME`, `LANDLINE`, `MOBILE`, `OCCUPATION`, `POSTAL_ADDRESS`, `EMAIL`, `SALES_REP`) VALUES
(1, 'A', 'Bob Smith', NULL, NULL, NULL, 'P.O. BOX 12345,\nNairobi', NULL, 'John'),
(3, '1', 'James Mwangi', '02065984', '07234568', 'Businessman', 'P.O. BOX 1234-00210,\nNairobi', NULL, 'Mike'),
(4, '2', 'Thomas Scots', NULL, '0724987654', 'Engineer', 'P.O. BOX ', NULL, 'Bob'),
(5, '3', 'Pius Omondi', NULL, '0722123456', 'Doctor', 'P.O. BOX ', NULL, 'Mike'),
(6, '5', 'Abdi Mohammed', '020963258', '072654987', 'salesman', 'P.O. BOX 1234, Nairobi', NULL, 'Jonah'),
(7, '6', 'Alex Kinuthia', '020789456', NULL, 'Pharmacist', 'P.O. BOX ', NULL, 'Mike');

-- --------------------------------------------------------

--
-- Table structure for table `debit`
--

CREATE TABLE IF NOT EXISTS `debit` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `POLICY_ID` int(11) NOT NULL,
  `STAFF_ID` int(11) NOT NULL,
  `ENDORSEMENT_NO` int(11) DEFAULT NULL,
  `DEBIT_DATE` date NOT NULL,
  `START_DATE` date NOT NULL,
  `EXPIRE_DATE` date NOT NULL,
  `BUSINESS_TYPE` varchar(15) NOT NULL,
  `SUM_INSURED` double NOT NULL DEFAULT '0',
  `WINDSCREEN` double DEFAULT NULL,
  `STEREO` double DEFAULT NULL,
  `OTHER` double DEFAULT '0',
  `BASIC_PREMIUM` double NOT NULL DEFAULT '0',
  `NET_PREMIUM` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `POLICY_ID` (`POLICY_ID`),
  KEY `STAFF_ID` (`STAFF_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `debit`
--

INSERT INTO `debit` (`ID`, `POLICY_ID`, `STAFF_ID`, `ENDORSEMENT_NO`, `DEBIT_DATE`, `START_DATE`, `EXPIRE_DATE`, `BUSINESS_TYPE`, `SUM_INSURED`, `WINDSCREEN`, `STEREO`, `OTHER`, `BASIC_PREMIUM`, `NET_PREMIUM`) VALUES
(1, 1, 1, NULL, '2009-04-03', '2009-04-06', '2010-04-05', 'New', 500000, 2000.00002980232, 800.000011920929, 0, 25000, 39202.5001172069),
(2, 5, 1, NULL, '2009-04-07', '2009-04-09', '2010-04-08', 'New', 6800000, 0, 0, 0, 25000, 36402.5000754837),
(3, 3, 1, NULL, '2009-04-07', '2009-04-08', '2010-04-07', 'New', 550000, 0, 0, 0, 27500, 40038.7500830321),
(4, 6, 1, NULL, '2009-04-16', '2009-04-17', '2010-04-16', 'New', 1000000, 0, 0, 0, 2000, 2058.00000015646),
(5, 7, 1, NULL, '2009-04-17', '2009-04-18', '2010-04-17', 'New', 2000000, 0, 0, 0, 80000, 82911.250003227),
(7, 11, 1, NULL, '2009-05-11', '2009-05-12', '2010-05-11', 'New', 6000000, 0, 0, 0, 10000, 10085.0000003912);

-- --------------------------------------------------------

--
-- Table structure for table `dependant`
--

CREATE TABLE IF NOT EXISTS `dependant` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PRINCIPLE_ID` int(11) NOT NULL,
  `NAME` varchar(25) NOT NULL,
  `RELATION` varchar(25) DEFAULT NULL,
  `DATE_OF_BIRTH` date NOT NULL,
  `PREMIUM` double NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `PRINCIPLE_ID` (`PRINCIPLE_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `dependant`
--

INSERT INTO `dependant` (`ID`, `PRINCIPLE_ID`, `NAME`, `RELATION`, `DATE_OF_BIRTH`, `PREMIUM`) VALUES
(1, 16, 'Susan', 'Spouse', '1971-05-11', 3000),
(2, 16, 'Brain', 'Child', '2009-05-11', 4000),
(3, 16, 'Thomas', 'Child', '1986-05-11', 3000),
(4, 17, 'Sarah', 'Spouse', '1968-06-15', 7000),
(5, 17, 'Kevin', 'Child', '2002-11-18', 7000),
(6, 1, 'Susan', 'Spouse', '1970-02-10', 6000);

-- --------------------------------------------------------

--
-- Table structure for table `insurer`
--

CREATE TABLE IF NOT EXISTS `insurer` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(50) NOT NULL,
  `POSTAL_ADDRESS` varchar(100) DEFAULT NULL,
  `LOCATION` varchar(100) DEFAULT NULL,
  `LANDLINE` varchar(100) DEFAULT NULL,
  `MOBILE` varchar(50) DEFAULT NULL,
  `FAX` varchar(25) DEFAULT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `WEBSITE` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `insurer`
--

INSERT INTO `insurer` (`ID`, `NAME`, `POSTAL_ADDRESS`, `LOCATION`, `LANDLINE`, `MOBILE`, `FAX`, `EMAIL`, `WEBSITE`) VALUES
(1, 'Blue Shield', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Old Mutual', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Kenindia', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Canon', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `medical`
--

CREATE TABLE IF NOT EXISTS `medical` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SCHEME_NAME` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `medical`
--

INSERT INTO `medical` (`ID`, `SCHEME_NAME`) VALUES
(6, 'Silver'),
(7, 'Silver'),
(8, 'Saphire'),
(9, 'Diamond'),
(10, 'Saphire');

-- --------------------------------------------------------

--
-- Table structure for table `motor`
--

CREATE TABLE IF NOT EXISTS `motor` (
  `ID` int(11) NOT NULL,
  `REGISTRATION` varchar(10) DEFAULT NULL,
  `VEHICLE_TYPE` varchar(15) NOT NULL,
  `COVER_TYPE` varchar(20) NOT NULL,
  `MAKE` varchar(15) NOT NULL,
  `MODEL` varchar(15) DEFAULT NULL,
  `DESIGN` varchar(20) DEFAULT NULL,
  `CC` int(11) DEFAULT NULL,
  `MANF_YEAR` int(11) DEFAULT NULL,
  `PASSENGERS` int(11) DEFAULT NULL,
  `TONNAGE` float DEFAULT NULL,
  `ENGINE_NO` varchar(20) DEFAULT NULL,
  `CHASSIS_NO` varchar(20) DEFAULT NULL,
  `CARSTEREO` double DEFAULT NULL,
  `WINDSCREEN` double DEFAULT NULL,
  `TPP` double DEFAULT NULL,
  `PLL` double DEFAULT NULL,
  `AMOUNT` double DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `motor`
--

INSERT INTO `motor` (`ID`, `REGISTRATION`, `VEHICLE_TYPE`, `COVER_TYPE`, `MAKE`, `MODEL`, `DESIGN`, `CC`, `MANF_YEAR`, `PASSENGERS`, `TONNAGE`, `ENGINE_NO`, `CHASSIS_NO`, `CARSTEREO`, `WINDSCREEN`, `TPP`, `PLL`, `AMOUNT`) VALUES
(1, 'KBA 656A', 'Private', 'Comprehensive', 'Toyota', NULL, 'Saloon', NULL, NULL, NULL, NULL, NULL, NULL, 8000, 20000, NULL, NULL, 500000),
(2, 'KBB', 'Private', 'Comprehensive', 'Mazda', NULL, 'Saloon', 1200, 1995, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 350000),
(3, 'KAG 456K', 'Commercial', 'Comprehensive', 'Isuzu', NULL, 'Saloon', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 550000),
(4, 'KBA 123G', 'Private', 'Third Party', 'Toyota', 'Corolla', 'Saloon', 1500, 1998, 5, 0.4, NULL, NULL, 0, 0, 0, 0, 650000),
(5, 'KBG 123A', 'Commercial', 'Comprehensive', 'Toyota', 'Corolla', 'Saloon', 2000, 2001, 5, 0.4, NULL, NULL, 0, 0, 0, 2500, 2000000);

-- --------------------------------------------------------

--
-- Table structure for table `policy`
--

CREATE TABLE IF NOT EXISTS `policy` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `POLICY_NO` varchar(45) DEFAULT NULL,
  `CLIENT_ID` int(11) NOT NULL,
  `INSURER_ID` int(11) NOT NULL,
  `PROPERTY_ID` int(11) DEFAULT '0',
  `POLICY_NAME` varchar(30) NOT NULL,
  `SUM_INSURED` double DEFAULT '0',
  `STATUS` varchar(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `CLIENT_ID` (`CLIENT_ID`),
  KEY `INSURER_ID` (`INSURER_ID`),
  KEY `PROPERTY_ID` (`PROPERTY_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `policy`
--

INSERT INTO `policy` (`ID`, `POLICY_NO`, `CLIENT_ID`, `INSURER_ID`, `PROPERTY_ID`, `POLICY_NAME`, `SUM_INSURED`, `STATUS`) VALUES
(1, '020/5454/87454/648441', 1, 1, 1, 'motor', 500000, 'active'),
(3, '010/548574/75454/66/09', 1, 1, 3, 'motor', 550000, 'active'),
(5, '040/5455/65454/12/09', 1, 4, NULL, 'fire', 6800000, 'active'),
(6, '98/5675675/5675467/09', 4, 1, 7, 'medical', 3000000, 'active'),
(7, '23434', 3, 1, 5, 'motor', 2000000, 'active'),
(8, '050/45445/24234/234234/09', 3, 3, 6, 'medical', 1000000, 'active'),
(9, '090/98798/89998/09', 1, 2, 8, 'medical', 4500000, 'active'),
(10, NULL, 5, 1, 9, 'medical', 5000000, 'active'),
(11, '090/56756/567567/5756/09', 7, 1, 10, 'medical', 6000000, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `policyrate`
--

CREATE TABLE IF NOT EXISTS `policyrate` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `INSURER_ID` int(11) NOT NULL,
  `POLICY_NAME` varchar(30) NOT NULL,
  `NEW_RATE` double DEFAULT NULL,
  `RENEWAL_RATE` double DEFAULT NULL,
  `COMMISSION` double DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `INSURER_ID` (`INSURER_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=39 ;

--
-- Dumping data for table `policyrate`
--

INSERT INTO `policyrate` (`ID`, `INSURER_ID`, `POLICY_NAME`, `NEW_RATE`, `RENEWAL_RATE`, `COMMISSION`) VALUES
(2, 2, 'all risks', 5, 4, 20),
(3, 2, 'burglary', 5, 4, 20),
(4, 2, 'motor', 5, 4, 10),
(5, 2, 'fire', 5, 4, 20),
(9, 4, 'all risks', 5, 4, 20),
(10, 4, 'burglary', 5, 4, 20),
(11, 4, 'fire', 5, 4, 20),
(12, 4, 'motor', 5, 4, 10),
(13, 3, 'motor', 5, 4, 10),
(14, 3, 'group personal accident', 5, 4, 20),
(15, 3, 'bid bond', 5, 4, 20),
(16, 3, 'medical', 5, 4, 20),
(17, 3, 'burglary', 5, 4, 20),
(18, 3, 'all risks', 5, 4, 20),
(19, 3, 'WIBA', 5, 4, 20),
(20, 3, 'personal accident', 5, 4, 20),
(21, 3, 'performance bond', 5, 4, 20),
(22, 3, 'public liability', 5, 4, 20),
(23, 3, 'fire', 5, 4, 20),
(24, 3, 'group life', 5, 4, 20),
(25, 3, 'contractors all risk', 5, 4, 20),
(26, 1, 'all risks', 5, 4, 20),
(27, 1, 'group life', 5, 4, 20),
(28, 1, 'motor', 5, 4, 10),
(29, 1, 'medical', 5, 4, 20),
(30, 1, 'performance bond', 5, 4, 20),
(31, 1, 'burglary', 5, 4, 20),
(32, 1, 'group personal accident', 5, 4, 20),
(33, 1, 'WIBA', 5, 4, 20),
(34, 1, 'contractors all risk', 5, 4, 20),
(35, 1, 'personal accident', 5, 4, 20),
(36, 1, 'fire', 5, 4, 20),
(37, 1, 'public liability', 5, 4, 20),
(38, 1, 'bid bond', 5, 4, 20);

-- --------------------------------------------------------

--
-- Table structure for table `premium`
--

CREATE TABLE IF NOT EXISTS `premium` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DEBIT_ID` int(11) NOT NULL,
  `STAFF_ID` int(11) NOT NULL,
  `PAY_DATE` date NOT NULL,
  `AMOUNT` double NOT NULL,
  `AMOUNT_WORDS` mediumtext NOT NULL,
  `MODE` varchar(10) NOT NULL,
  `CHEQUE_NO` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `DEBIT_ID` (`DEBIT_ID`),
  KEY `STAFF_ID` (`STAFF_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `premium`
--

INSERT INTO `premium` (`ID`, `DEBIT_ID`, `STAFF_ID`, `PAY_DATE`, `AMOUNT`, `AMOUNT_WORDS`, `MODE`, `CHEQUE_NO`) VALUES
(1, 1, 1, '2009-04-07', 39202.5001172069, 'Thirty Nine', 'Cheque', '5454'),
(3, 7, 1, '2009-05-11', 5000, 'Five Thousand Shillings', 'Cash', NULL),
(4, 7, 1, '2009-05-11', 5085.0000003912, 'Five thousand', 'Cheque', '123'),
(5, 5, 1, '2009-05-11', 10000, 'sdafasd', 'Cash', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `principle`
--

CREATE TABLE IF NOT EXISTS `principle` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MEDICAL_ID` int(11) NOT NULL,
  `NAME` varchar(35) NOT NULL,
  `STATUS` tinyint(1) NOT NULL,
  `IN_PATIENT_LIMIT` double NOT NULL,
  `IN_PATIENT_TYPE` varchar(10) NOT NULL,
  `OUT_PATIENT_LIMIT` double DEFAULT '0',
  `OUT_PATIENT_TYPE` varchar(10) DEFAULT NULL,
  `PRINCIPLE_PREMIUM` double NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `medical_id` (`MEDICAL_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `principle`
--

INSERT INTO `principle` (`ID`, `MEDICAL_ID`, `NAME`, `STATUS`, `IN_PATIENT_LIMIT`, `IN_PATIENT_TYPE`, `OUT_PATIENT_LIMIT`, `OUT_PATIENT_TYPE`, `PRINCIPLE_PREMIUM`) VALUES
(1, 6, 'Jackson Namamba', 1, 50000, '', 0, NULL, 8000),
(2, 6, 'Alice Martha', 1, 0, '', 0, NULL, 0),
(3, 6, 'Alex Chamwada', 1, 0, '', 0, NULL, 0),
(4, 6, 'Ben Karson', 1, 0, '', 0, NULL, 0),
(5, 7, 'Brian Davis', 1, 0, '', 0, NULL, 0),
(6, 7, 'Simon Brown', 1, 0, '', 0, NULL, 0),
(7, 7, 'Vivian Wanjiru', 1, 0, '', 0, NULL, 0),
(8, 7, 'George', 1, 0, '', 0, NULL, 0),
(9, 7, 'Brian', 1, 0, '', 0, NULL, 0),
(10, 8, 'Susan Shore', 1, 100000, '', 0, NULL, 5000),
(11, 8, 'Augustine Wauirunge', 1, 0, '', 0, NULL, 0),
(12, 8, 'Steve Willis', 1, 0, '', 0, NULL, 0),
(13, 9, 'ss', 1, 0, '', 0, NULL, 0),
(14, 9, 'dd', 1, 0, '', 0, NULL, 0),
(15, 9, 'ww', 1, 0, '', 0, NULL, 0),
(16, 10, 'Mathew Thomas', 1, 1000000, 'Per Person', NULL, NULL, 10000),
(17, 10, 'Brian Njogu', 1, 2000000, 'Per Family', NULL, 'Per Person', 50000);

-- --------------------------------------------------------

--
-- Table structure for table `property`
--

CREATE TABLE IF NOT EXISTS `property` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PTYPE` varchar(15) NOT NULL,
  `ITEM_DESC` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `property`
--

INSERT INTO `property` (`ID`, `PTYPE`, `ITEM_DESC`) VALUES
(1, 'Motor', NULL),
(2, 'Motor', NULL),
(3, 'Motor', NULL),
(4, 'Motor', NULL),
(5, 'Motor', NULL),
(6, 'Medical', NULL),
(7, 'Medical', NULL),
(8, 'Medical', NULL),
(9, 'Medical', NULL),
(10, 'Medical', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE IF NOT EXISTS `staff` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `REF_TITLE` varchar(5) DEFAULT NULL,
  `SURNAME` varchar(15) DEFAULT NULL,
  `OTHER_NAMES` varchar(45) NOT NULL,
  `JOB_TITLE` varchar(25) DEFAULT NULL,
  `USER_NAME` varchar(15) NOT NULL,
  `PASSWORD` varchar(35) NOT NULL,
  `BRANCH_NAME` varchar(20) DEFAULT NULL,
  `STATUS` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`ID`, `REF_TITLE`, `SURNAME`, `OTHER_NAMES`, `JOB_TITLE`, `USER_NAME`, `PASSWORD`, `BRANCH_NAME`, `STATUS`) VALUES
(1, 'Mr.', 'Doe', 'John', NULL, 'user', 'user', NULL, 1);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `access`
--
ALTER TABLE `access`
  ADD CONSTRAINT `ACCESS_IBFK_1` FOREIGN KEY (`ID`) REFERENCES `staff` (`ID`);

--
-- Constraints for table `banking`
--
ALTER TABLE `banking`
  ADD CONSTRAINT `banking_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`ID`) ON UPDATE CASCADE;

--
-- Constraints for table `cashvoucher`
--
ALTER TABLE `cashvoucher`
  ADD CONSTRAINT `cashvoucher_ibfk_1` FOREIGN KEY (`STAFF_ID`) REFERENCES `staff` (`ID`) ON UPDATE CASCADE;

--
-- Constraints for table `certificate`
--
ALTER TABLE `certificate`
  ADD CONSTRAINT `certificate_ibfk_1` FOREIGN KEY (`DEBIT_ID`) REFERENCES `debit` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `debit`
--
ALTER TABLE `debit`
  ADD CONSTRAINT `debit_ibfk_1` FOREIGN KEY (`POLICY_ID`) REFERENCES `policy` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `debit_ibfk_2` FOREIGN KEY (`STAFF_ID`) REFERENCES `staff` (`ID`) ON UPDATE CASCADE;

--
-- Constraints for table `dependant`
--
ALTER TABLE `dependant`
  ADD CONSTRAINT `dependant_ibfk_1` FOREIGN KEY (`PRINCIPLE_ID`) REFERENCES `principle` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `medical`
--
ALTER TABLE `medical`
  ADD CONSTRAINT `medical_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `property` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `motor`
--
ALTER TABLE `motor`
  ADD CONSTRAINT `motor_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `property` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `policy`
--
ALTER TABLE `policy`
  ADD CONSTRAINT `policy_ibfk_1` FOREIGN KEY (`CLIENT_ID`) REFERENCES `client` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `policy_ibfk_2` FOREIGN KEY (`INSURER_ID`) REFERENCES `insurer` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `policy_ibfk_3` FOREIGN KEY (`PROPERTY_ID`) REFERENCES `property` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `policyrate`
--
ALTER TABLE `policyrate`
  ADD CONSTRAINT `policyrate_ibfk_1` FOREIGN KEY (`INSURER_ID`) REFERENCES `insurer` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `premium`
--
ALTER TABLE `premium`
  ADD CONSTRAINT `premium_ibfk_1` FOREIGN KEY (`DEBIT_ID`) REFERENCES `debit` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `premium_ibfk_2` FOREIGN KEY (`STAFF_ID`) REFERENCES `staff` (`ID`) ON UPDATE CASCADE;

--
-- Constraints for table `principle`
--
ALTER TABLE `principle`
  ADD CONSTRAINT `principle_ibfk_1` FOREIGN KEY (`MEDICAL_ID`) REFERENCES `medical` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
