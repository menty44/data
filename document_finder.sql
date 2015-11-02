-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 09, 2015 at 03:48 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `document_finder`
--

-- --------------------------------------------------------

--
-- Table structure for table `found_atm`
--

CREATE TABLE IF NOT EXISTS `found_atm` (
  `atm_number` int(20) NOT NULL,
  `atm_bank` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `date_found` varchar(50) NOT NULL,
  `place_found` varchar(50) NOT NULL,
  `finder_name` text NOT NULL,
  `finder_contact` varchar(50) NOT NULL,
  `place_to_collect` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `found_atm`
--

INSERT INTO `found_atm` (`atm_number`, `atm_bank`, `name`, `date_found`, `place_found`, `finder_name`, `finder_contact`, `place_to_collect`) VALUES
(123344, 'KCB', 'VINCENT OTOO', '11/7/2014', 'MUTHURWA', 'HILDA MWANGI', '0725904000', 'MUTHURWA POLICE ');

-- --------------------------------------------------------

--
-- Table structure for table `found_bcertificate`
--

CREATE TABLE IF NOT EXISTS `found_bcertificate` (
  `bcertificate_number` varchar(50) NOT NULL,
  `bcertificate_name` varchar(50) NOT NULL,
  `bcertificate_issuedate` varchar(50) NOT NULL,
  `bcertificate_selectfounddate` varchar(50) NOT NULL,
  `bcertificate_placefound` varchar(50) NOT NULL,
  `bcertificate_findername` varchar(50) NOT NULL,
  `bcertificate_findercontact` varchar(50) NOT NULL,
  `bcertificate_placetocollect` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `found_bcertificate`
--

INSERT INTO `found_bcertificate` (`bcertificate_number`, `bcertificate_name`, `bcertificate_issuedate`, `bcertificate_selectfounddate`, `bcertificate_placefound`, `bcertificate_findername`, `bcertificate_findercontact`, `bcertificate_placetocollect`) VALUES
('12345', 'ELIZABETH WANJIKU', '21/09/1978', '14/7/2014', 'CITY HALL', 'HILDA MWANGI', '0725904000', 'CITY HALL RECEPTION');

-- --------------------------------------------------------

--
-- Table structure for table `found_drivinglicence`
--

CREATE TABLE IF NOT EXISTS `found_drivinglicence` (
  `licence_number` varchar(50) NOT NULL,
  `licence_name` varchar(50) NOT NULL,
  `licence_issuedate` varchar(5) NOT NULL,
  `licence_selectfounddate` varchar(50) NOT NULL,
  `licence_placefound` varchar(50) NOT NULL,
  `licence_findername` varchar(50) NOT NULL,
  `licence_findercontact` varchar(50) NOT NULL,
  `licence_placetocollect` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `found_drivinglicence`
--

INSERT INTO `found_drivinglicence` (`licence_number`, `licence_name`, `licence_issuedate`, `licence_selectfounddate`, `licence_placefound`, `licence_findername`, `licence_findercontact`, `licence_placetocollect`) VALUES
('1321324', 'JEMMY WARINGA', '23/09', '14/7/2013', 'BUS STATION', 'HILDA MWANGI', '0725904000', 'TUSKYS');

-- --------------------------------------------------------

--
-- Table structure for table `found_kenyanid`
--

CREATE TABLE IF NOT EXISTS `found_kenyanid` (
  `id_number` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `dob` varchar(50) NOT NULL,
  `place_found` varchar(50) NOT NULL,
  `finder_name` varchar(50) NOT NULL,
  `finder_contact` varchar(50) NOT NULL,
  `place_to_collect` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `found_kenyanid`
--

INSERT INTO `found_kenyanid` (`id_number`, `name`, `dob`, `place_found`, `finder_name`, `finder_contact`, `place_to_collect`) VALUES
(8351595, 'JAMES MWANGI GICHURE', '11/11/1967', 'KIMATHI STREET', 'HILDA JAMES', '0725904000', 'QUEENSWAY BUILDING'),
(6666666, 'yyyyy', '21/5/2014', 'yyyyyy', 'uuuuu', 'kkkkkkk', 'dddddd');

-- --------------------------------------------------------

--
-- Table structure for table `found_nhif`
--

CREATE TABLE IF NOT EXISTS `found_nhif` (
  `nhif_number` varchar(50) NOT NULL,
  `nhif_name` varchar(50) NOT NULL,
  `nhif_issuedate` varchar(50) NOT NULL,
  `nhif_selectfounddate` varchar(50) NOT NULL,
  `nhif_placefound` varchar(50) NOT NULL,
  `nhif_findername` varchar(50) NOT NULL,
  `nhif_findercontact` varchar(50) NOT NULL,
  `nhif_placetocollect` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `found_nhif`
--

INSERT INTO `found_nhif` (`nhif_number`, `nhif_name`, `nhif_issuedate`, `nhif_selectfounddate`, `nhif_placefound`, `nhif_findername`, `nhif_findercontact`, `nhif_placetocollect`) VALUES
('1233232', 'EMMAH WANJIKU', '22/06/2014', '14/7/2013', 'MUKI SACCO KINANGOP', 'HILDA WANGUI', '0725904000', 'MUKI SACCO');

-- --------------------------------------------------------

--
-- Table structure for table `found_nssf`
--

CREATE TABLE IF NOT EXISTS `found_nssf` (
  `nssf_number` varchar(50) NOT NULL,
  `nssf_name` varchar(50) NOT NULL,
  `nssf_issuedate` varchar(50) NOT NULL,
  `nssf_selectfounddate` varchar(50) NOT NULL,
  `nssf_placefound` varchar(50) NOT NULL,
  `nssf_findername` varchar(50) NOT NULL,
  `nssf_findercontact` varchar(50) NOT NULL,
  `nssf_placetocollect` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `found_nssf`
--

INSERT INTO `found_nssf` (`nssf_number`, `nssf_name`, `nssf_issuedate`, `nssf_selectfounddate`, `nssf_placefound`, `nssf_findername`, `nssf_findercontact`, `nssf_placetocollect`) VALUES
('535435', 'BIBIAN KATE', '23/06/2014', '14/7/2015', 'AFRAHA STADIUM', 'HILDA WANGUI', '0725904000', 'AFRAHA STADIUM');

-- --------------------------------------------------------

--
-- Table structure for table `found_other`
--

CREATE TABLE IF NOT EXISTS `found_other` (
  `document_title` varchar(50) NOT NULL,
  `document_description` varchar(100) NOT NULL,
  `document_datefound` varchar(50) NOT NULL,
  `document_placefound` varchar(50) NOT NULL,
  `document_findername` text NOT NULL,
  `document_findercontact` varchar(50) NOT NULL,
  `document_placetocollect` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `found_passport`
--

CREATE TABLE IF NOT EXISTS `found_passport` (
  `passport_number` varchar(50) NOT NULL,
  `passport_name` varchar(50) NOT NULL,
  `passport_issuedate` text NOT NULL,
  `passport_founddate` varchar(50) NOT NULL,
  `passport_placefound` varchar(50) NOT NULL,
  `passport_findername` varchar(50) NOT NULL,
  `passport_findercontact` varchar(50) NOT NULL,
  `passport_placetocollect` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `found_passport`
--

INSERT INTO `found_passport` (`passport_number`, `passport_name`, `passport_issuedate`, `passport_founddate`, `passport_placefound`, `passport_findername`, `passport_findercontact`, `passport_placetocollect`) VALUES
('54545', 'GRIFFINS GICHURE', '23/07/2013', '14/7/2013', 'NJIRIS', 'HILDA MWANGI', '0725904000', 'KANGARI');

-- --------------------------------------------------------

--
-- Table structure for table `found_titledeed`
--

CREATE TABLE IF NOT EXISTS `found_titledeed` (
  `titledeed_number` varchar(50) NOT NULL,
  `titledeed_name` varchar(50) NOT NULL,
  `titledeed_issuedate` varchar(50) NOT NULL,
  `titledeed_selectfounddate` varchar(50) NOT NULL,
  `titledeed_placefound` varchar(50) NOT NULL,
  `titledeed_findername` varchar(50) NOT NULL,
  `titledeed_findercontact` varchar(50) NOT NULL,
  `titledeed_placetocollect` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `found_titledeed`
--

INSERT INTO `found_titledeed` (`titledeed_number`, `titledeed_name`, `titledeed_issuedate`, `titledeed_selectfounddate`, `titledeed_placefound`, `titledeed_findername`, `titledeed_findercontact`, `titledeed_placetocollect`) VALUES
('67676', 'JGVJUGVJGUVGHG', '565656', '14/7/2013', 'TFTTFGF', 'FGJCFGF CGF', 'VCGF CGGFTYF', 'FCGTFGFJF');

-- --------------------------------------------------------

--
-- Table structure for table `id_card`
--

CREATE TABLE IF NOT EXISTS `id_card` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_number` int(10) NOT NULL,
  `name` text NOT NULL,
  `dob` text NOT NULL,
  `contact` varchar(50) NOT NULL,
  `reward` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `id_card`
--

INSERT INTO `id_card` (`id`, `id_number`, `name`, `dob`, `contact`, `reward`) VALUES
(10, 12324343, 'hilda wangui mwangi', '15 / 9 / 1970', '1234354546', ''),
(11, 324324324, 'gfd df gdfg', '15 / 9 / 1985', 'fdsgfdfgsfd', 'sefrer'),
(12, 27327088, 'hilda wangui mwangi', '15 / 9 / 2002', '0725904000', 'jhjhjdhfgjdf'),
(13, 22222, 'ttt', '', 'yyyyy', 'hhhhh'),
(14, 3333333, 'uuuuuu', '21 / 5 / 2015', 'ffffff', 'ggggg');

-- --------------------------------------------------------

--
-- Table structure for table `kenyan_passport`
--

CREATE TABLE IF NOT EXISTS `kenyan_passport` (
  `passport_no` varchar(50) NOT NULL,
  `name` text NOT NULL,
  `issue_date` varchar(50) NOT NULL,
  `expiry_date` varchar(50) NOT NULL,
  `date_lost` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `reward` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kenyan_passport`
--

INSERT INTO `kenyan_passport` (`passport_no`, `name`, `issue_date`, `expiry_date`, `date_lost`, `contact`, `reward`) VALUES
('KE-0009', 'WANGUI MWANGI', '23-09-2009', '23-09-2012', '17/7/2014', '0725904000', '1000 kSH'),
('KE-00008', 'SAMMY WANJALA', '23-09-2013', '23-09-2015', '17/7/2014', '0713634909', '2000 KSH'),
('DL-0009', 'hilda wangui mwangi', '23-09-2012', '23-09-2013', '18/7/2014', '0725904000', 'hundred');

-- --------------------------------------------------------

--
-- Table structure for table `lostbcertificate`
--

CREATE TABLE IF NOT EXISTS `lostbcertificate` (
  `bcertificate_number` varchar(50) NOT NULL,
  `bcertificate_name` varchar(50) NOT NULL,
  `bcertificate_issuedate` varchar(50) NOT NULL,
  `bcertificate_lostdate` varchar(50) NOT NULL,
  `bcertificate_contact` varchar(50) NOT NULL,
  `bcertificate_reward` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lostbcertificate`
--

INSERT INTO `lostbcertificate` (`bcertificate_number`, `bcertificate_name`, `bcertificate_issuedate`, `bcertificate_lostdate`, `bcertificate_contact`, `bcertificate_reward`) VALUES
('rvewv', 'tvevet', 'tbr4b4', '18/7/2014', 'eb4e6', '46h46'),
('fghdfh', 'dfhfghgf', 'fghgfhgf', '18/7/2014', 'gfhfgh', 'fghghg');

-- --------------------------------------------------------

--
-- Table structure for table `lostkenyanid`
--

CREATE TABLE IF NOT EXISTS `lostkenyanid` (
  `id` int(10) NOT NULL,
  `id_number` int(10) NOT NULL,
  `name` text NOT NULL,
  `dob` varchar(50) NOT NULL,
  `date_found` varchar(50) NOT NULL,
  `place_found` date NOT NULL,
  `finder_name` text NOT NULL,
  `finder_contact` text NOT NULL,
  `place_to_collect` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lostnhifcard`
--

CREATE TABLE IF NOT EXISTS `lostnhifcard` (
  `nhif_number` varchar(20) NOT NULL,
  `name` text NOT NULL,
  `issue_date` varchar(50) NOT NULL,
  `date_lost` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `reward` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lostnhifcard`
--

INSERT INTO `lostnhifcard` (`nhif_number`, `name`, `issue_date`, `date_lost`, `contact`, `reward`) VALUES
('nhif-009', 'wangui mwangi', '22-09-2012', '12/6/2014', '0725904000', 'one hundred bob'),
('56744', 'xdfhcd  crj cfc', '455', '14/7/2013', 'v gvgh gv fv hg', 'ugbuygiugbi'),
('7676767', 'wangui james', '23/09/2013', '17/7/2014', '0725904000', 'one thousand');

-- --------------------------------------------------------

--
-- Table structure for table `lostnssfcard`
--

CREATE TABLE IF NOT EXISTS `lostnssfcard` (
  `nssf_no` varchar(20) NOT NULL,
  `name` text NOT NULL,
  `issue_date` varchar(50) NOT NULL,
  `date_lost` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `reward` varchar(50) NOT NULL,
  PRIMARY KEY (`nssf_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lostnssfcard`
--

INSERT INTO `lostnssfcard` (`nssf_no`, `name`, `issue_date`, `date_lost`, `contact`, `reward`) VALUES
('3456', 'hilda mwangi', '22/05/2012', '16/7/2013', '0725904000', 'one hudred shillings'),
('454545', 'SRTXRTDRT RDRDRDR', '454', '14/7/2015', 'y87vygvygyugvy', 'b  gugugugu'),
('dgfsdfg', 'fgxfxv34q', '231', '12/6/2014', 'gsdfsd', 'sdsfsf'),
('fdfgdsg', 'xgfgfx', '27-6-1999', '12/6/2012', '435345', 'cbhfghg'),
('nssf-001', 'hilda mwangi', '26/08/2009', '12/6/2013', '0725904000', 'none'),
('nssf-009', 'ken mugwe', '233/05/2010', '12/6/2012', '0724980673', '250 worth of airtime'),
('nssf-980', 'anne waiguru', '23/09/1998', '9/6/2014', 'wherever', '1000'),
('sdfsdf', 'rwer', 'sfdsfdfsd', '12/6/2013', 'dfdsf', 'dfdsfsdf');

-- --------------------------------------------------------

--
-- Table structure for table `lost_atmcard`
--

CREATE TABLE IF NOT EXISTS `lost_atmcard` (
  `bankname` text NOT NULL,
  `accountnumber` int(50) NOT NULL,
  `name` text NOT NULL,
  `date_lost` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `reward` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lost_atmcard`
--

INSERT INTO `lost_atmcard` (`bankname`, `accountnumber`, `name`, `date_lost`, `contact`, `reward`) VALUES
('Kcb', 1234, 'hilda', '23', '0725', 'fifty bob'),
('family', 678, 'wangui', '262014', 'Eastleigh', 'wer'),
('Coop', 342, 'hilsz', '3/6/2014', 'dfg', 'TTF'),
('krep', 6789, 'njeri', '2/6/2012', 'embu', 'k'),
('kcb ', 234567, 'Sam', '3/6/2014', '4566', '10'),
('efz', 34, 'hilda', '5/6/2013', 'wer', 'fif'),
('KREP', 12345678, 'hilda wangui mwangi', '9/6/2009', '0725904000', '500 bob'),
('Equity', 67890, 'samson mango', '9/6/2012', '07258978979', 'one hundred shillings'),
('National bank', 282828, 'Vincent Kitur', '9/6/2014', '0756555565', '100 bob'),
('JHJHJH', 57657565, 'JVHGJHGV  GGHGHJG', '14/7/2013', 'UGYGVYGVYHGY', 'BB HG BHHG HG');

-- --------------------------------------------------------

--
-- Table structure for table `lost_drivinglicence`
--

CREATE TABLE IF NOT EXISTS `lost_drivinglicence` (
  `licence_no` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `issue_date` date NOT NULL,
  `expiry_date` date NOT NULL,
  `date_lost` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `reward` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lost_drivinglicence`
--

INSERT INTO `lost_drivinglicence` (`licence_no`, `name`, `issue_date`, `expiry_date`, `date_lost`, `contact`, `reward`) VALUES
('DL-00010', 'HILDA WANGUI MWANGI', '0000-00-00', '0000-00-00', '0000-00-00', '0725904000', 'hundred shillings'),
('retr', 'svsr rstrt', '2012-09-23', '2014-09-23', '0000-00-00', 'nbvnhbvhv', 'nbjb j bjugkb'),
('23243', 'rerewcwe', '0000-00-00', '0000-00-00', '18/7/2014', 'rcwerewr', 'ererer');

-- --------------------------------------------------------

--
-- Table structure for table `lost_other`
--

CREATE TABLE IF NOT EXISTS `lost_other` (
  `document_title` varchar(50) NOT NULL,
  `document_description` varchar(50) NOT NULL,
  `document_lost` varchar(50) NOT NULL,
  `document_reward` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lost_other`
--

INSERT INTO `lost_other` (`document_title`, `document_description`, `document_lost`, `document_reward`) VALUES
('log book', 'jgjbhghbh hhhghh', '18/7/2014', 'vbfdbfd dfsg fdg'),
('erwr', 'werewte', '18/7/2014', 'tytrbrt6y');

-- --------------------------------------------------------

--
-- Table structure for table `lost_titledeed`
--

CREATE TABLE IF NOT EXISTS `lost_titledeed` (
  `titledeed_no` varchar(20) NOT NULL,
  `name` text NOT NULL,
  `issue_date` varchar(50) NOT NULL,
  `date_lost` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `reward` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lost_titledeed`
--

INSERT INTO `lost_titledeed` (`titledeed_no`, `name`, `issue_date`, `date_lost`, `contact`, `reward`) VALUES
('td-00087', 'wangui mwangi', '23-09-2012', '18/7/2014', '0725904000', '1000 ksh'),
('td-000080', 'kahiro wanjiru', '23-09-2010', '18/7/2014', '0756576776', 'gcgcgc');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
