-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2015 at 01:02 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admitpatient_room`
--

CREATE TABLE IF NOT EXISTS `admitpatient_room` (
  `AdmitID` int(11) NOT NULL,
  `PatientID` varchar(50) NOT NULL,
  `Disease` text NOT NULL,
  `RoomNo` varchar(50) NOT NULL,
  `AdmitDate` text NOT NULL,
  `DoctorID` varchar(50) NOT NULL,
  `AP_Remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `admitpatient_ward`
--

CREATE TABLE IF NOT EXISTS `admitpatient_ward` (
  `AdmitID` int(11) NOT NULL,
  `PatientID` varchar(50) NOT NULL,
  `Disease` text NOT NULL,
  `Wardname` varchar(50) NOT NULL,
  `AdmitDate` text NOT NULL,
  `DoctorID` varchar(50) NOT NULL,
  `AP_Remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bill_room`
--

CREATE TABLE IF NOT EXISTS `bill_room` (
  `BillNo` int(11) NOT NULL,
  `DischargeID` int(11) NOT NULL,
  `BillingDate` text NOT NULL,
  `NoOfDays` int(11) NOT NULL,
  `RoomCharges` double NOT NULL,
  `TotalRoomCharges` double NOT NULL,
  `ServiceCharges` double NOT NULL,
  `TotalCharges` double NOT NULL,
  `PaymentMode` text NOT NULL,
  `PaymentModeDetails` text NOT NULL,
  `ChargesPaid` double NOT NULL,
  `DueCharges` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bill_ward`
--

CREATE TABLE IF NOT EXISTS `bill_ward` (
  `BillNo` int(11) NOT NULL,
  `DischargeID` int(11) NOT NULL,
  `BillingDate` text NOT NULL,
  `BedCharges` double NOT NULL,
  `NoOfDays` int(11) NOT NULL,
  `TotalBedCharges` double NOT NULL,
  `ServiceCharges` double NOT NULL,
  `TotalCharges` double NOT NULL,
  `PaymentMode` text NOT NULL,
  `PaymentModeDetails` text NOT NULL,
  `ChargesPaid` double NOT NULL,
  `DueCharges` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dischargepatient_room`
--

CREATE TABLE IF NOT EXISTS `dischargepatient_room` (
  `ID` int(11) NOT NULL,
  `AdmitID` int(11) NOT NULL,
  `DischargeDate` text NOT NULL,
  `DP_Remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dischargepatient_ward`
--

CREATE TABLE IF NOT EXISTS `dischargepatient_ward` (
  `ID` int(11) NOT NULL,
  `AdmitID` int(11) NOT NULL,
  `DischargeDate` text NOT NULL,
  `DP_Remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE IF NOT EXISTS `doctor` (
  `DoctorID` varchar(50) NOT NULL,
  `DoctorName` text NOT NULL,
  `Fathername` text NOT NULL,
  `Address` text NOT NULL,
  `ContactNo` text NOT NULL,
  `Email` text NOT NULL,
  `Qualifications` text NOT NULL,
  `Specialization` text NOT NULL,
  `Gender` text NOT NULL,
  `BloodGroup` text NOT NULL,
  `DateOfJoining` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `patientregistration`
--

CREATE TABLE IF NOT EXISTS `patientregistration` (
  `PatientID` varchar(50) NOT NULL,
  `Patientname` text NOT NULL,
  `Fathername` text NOT NULL,
  `Address` text NOT NULL,
  `ContactNo` text NOT NULL,
  `Email` text NOT NULL,
  `Age` int(11) NOT NULL,
  `Gen` text NOT NULL,
  `BG` text NOT NULL,
  `Remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patientregistration`
--

INSERT INTO `patientregistration` (`PatientID`, `Patientname`, `Fathername`, `Address`, `ContactNo`, `Email`, `Age`, `Gen`, `BG`, `Remarks`) VALUES
('23', 'ben', 'malo', 'er', '0710967', '95894', 20, 'M', 'O+', 'he is an exerlent coder');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE IF NOT EXISTS `registration` (
  `username` text NOT NULL,
  `Password` text NOT NULL,
  `NameOfUser` text NOT NULL,
  `ContactNo` text NOT NULL,
  `Email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`username`, `Password`, `NameOfUser`, `ContactNo`, `Email`) VALUES
('malonza', 'benja', 'benjamin', '0710967655', 'ben3@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE IF NOT EXISTS `room` (
  `RoomNo` varchar(50) NOT NULL,
  `RoomType` text NOT NULL,
  `RoomCharges` int(11) NOT NULL,
  `RoomStatus` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`RoomNo`, `RoomType`, `RoomCharges`, `RoomStatus`) VALUES
('45', 'Deluxe', 50, 'Vacant'),
('34', 'Deluxe', 50, 'Vacant');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE IF NOT EXISTS `services` (
  `ServiceID` int(11) NOT NULL,
  `Servicename` text NOT NULL,
  `ServiceDate` text NOT NULL,
  `PatientID` varchar(50) NOT NULL,
  `ServiceCharges` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `Username` text NOT NULL,
  `user_Password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Username`, `user_Password`) VALUES
('root', 'james'),
('malonza', 'benja');

-- --------------------------------------------------------

--
-- Table structure for table `ward`
--

CREATE TABLE IF NOT EXISTS `ward` (
  `id` int(11) NOT NULL,
  `wardname` varchar(50) NOT NULL,
  `wardtype` text NOT NULL,
  `NoOfBeds` int(11) NOT NULL,
  `Charges` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ward`
--

INSERT INTO `ward` (`id`, `wardname`, `wardtype`, `NoOfBeds`, `Charges`) VALUES
(1, 'benja', 'General', 56, 500);

-- --------------------------------------------------------

--
-- Table structure for table `wardboy_nurse_tbl`
--

CREATE TABLE IF NOT EXISTS `wardboy_nurse_tbl` (
  `ID` varchar(50) NOT NULL,
  `W_N_Name` text NOT NULL,
  `Category` text NOT NULL,
  `Address` text NOT NULL,
  `ContactNo` text NOT NULL,
  `Email` text NOT NULL,
  `Qualifications` text NOT NULL,
  `BloodGroup` text NOT NULL,
  `DateOfJoining` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
