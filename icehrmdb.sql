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
-- Database: `icehrmdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `certifications`
--

CREATE TABLE IF NOT EXISTS `certifications` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `companystructures`
--

CREATE TABLE IF NOT EXISTS `companystructures` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` tinytext NOT NULL,
  `description` text NOT NULL,
  `address` text,
  `type` enum('Company','Head Office','Regional Office','Department','Unit','Sub Unit','Other') DEFAULT NULL,
  `country` varchar(2) NOT NULL DEFAULT '0',
  `parent` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Fk_CompanyStructures_Own` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE IF NOT EXISTS `country` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` char(2) NOT NULL DEFAULT '',
  `namecap` varchar(80) DEFAULT '',
  `name` varchar(80) NOT NULL DEFAULT '',
  `iso3` char(3) DEFAULT NULL,
  `numcode` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `currencytypes`
--

CREATE TABLE IF NOT EXISTS `currencytypes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(3) NOT NULL DEFAULT '',
  `name` varchar(70) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `CurrencyTypes_code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `educations`
--

CREATE TABLE IF NOT EXISTS `educations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `employeeeducations`
--

CREATE TABLE IF NOT EXISTS `employeeeducations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `education_id` bigint(20) DEFAULT NULL,
  `employee` bigint(20) NOT NULL,
  `institute` varchar(400) DEFAULT NULL,
  `date_start` date DEFAULT '0000-00-00',
  `date_end` date DEFAULT '0000-00-00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `employee` (`employee`,`education_id`),
  KEY `Fk_EmployeeEducations_Educations` (`education_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE IF NOT EXISTS `employees` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(50) DEFAULT NULL,
  `first_name` varchar(100) NOT NULL DEFAULT '',
  `middle_name` varchar(100) NOT NULL DEFAULT '',
  `last_name` varchar(100) NOT NULL DEFAULT '',
  `nationality` bigint(20) DEFAULT NULL,
  `birthday` datetime DEFAULT '0000-00-00 00:00:00',
  `gender` enum('Male','Female') DEFAULT NULL,
  `marital_status` enum('Married','Single','Divorced','Widowed','Other') DEFAULT NULL,
  `ssn_num` varchar(100) DEFAULT '',
  `nic_num` varchar(100) DEFAULT '',
  `other_id` varchar(100) DEFAULT '',
  `driving_license` varchar(100) DEFAULT '',
  `driving_license_exp_date` date DEFAULT '0000-00-00',
  `employment_status` bigint(20) DEFAULT NULL,
  `job_title` bigint(20) DEFAULT NULL,
  `pay_grade` bigint(20) DEFAULT NULL,
  `work_station_id` varchar(100) DEFAULT '',
  `address1` varchar(100) DEFAULT '',
  `address2` varchar(100) DEFAULT '',
  `city` varchar(150) DEFAULT '',
  `country` char(2) DEFAULT NULL,
  `province` bigint(20) DEFAULT NULL,
  `postal_code` varchar(20) DEFAULT NULL,
  `home_phone` varchar(50) DEFAULT NULL,
  `mobile_phone` varchar(50) DEFAULT NULL,
  `work_phone` varchar(50) DEFAULT NULL,
  `work_email` varchar(100) DEFAULT NULL,
  `private_email` varchar(100) DEFAULT NULL,
  `joined_date` datetime DEFAULT '0000-00-00 00:00:00',
  `confirmation_date` datetime DEFAULT '0000-00-00 00:00:00',
  `supervisor` bigint(20) DEFAULT NULL,
  `department` bigint(20) DEFAULT NULL,
  `custom1` varchar(250) DEFAULT NULL,
  `custom2` varchar(250) DEFAULT NULL,
  `custom3` varchar(250) DEFAULT NULL,
  `custom4` varchar(250) DEFAULT NULL,
  `custom5` varchar(250) DEFAULT NULL,
  `custom6` varchar(250) DEFAULT NULL,
  `custom7` varchar(250) DEFAULT NULL,
  `custom8` varchar(250) DEFAULT NULL,
  `custom9` varchar(250) DEFAULT NULL,
  `custom10` varchar(250) DEFAULT NULL,
  `termination_date` datetime DEFAULT '0000-00-00 00:00:00',
  `notes` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `employee_id` (`employee_id`),
  KEY `Fk_Employee_Nationality` (`nationality`),
  KEY `Fk_Employee_JobTitle` (`job_title`),
  KEY `Fk_Employee_EmploymentStatus` (`employment_status`),
  KEY `Fk_Employee_Country` (`country`),
  KEY `Fk_Employee_Province` (`province`),
  KEY `Fk_Employee_Supervisor` (`supervisor`),
  KEY `Fk_Employee_CompanyStructures` (`department`),
  KEY `Fk_Employee_PayGrades` (`pay_grade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `employeeskills`
--

CREATE TABLE IF NOT EXISTS `employeeskills` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `skill_id` bigint(20) DEFAULT NULL,
  `employee` bigint(20) NOT NULL,
  `details` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `employee` (`employee`,`skill_id`),
  KEY `Fk_EmployeeSkills_Skills` (`skill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `employmentstatus`
--

CREATE TABLE IF NOT EXISTS `employmentstatus` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jobtitles`
--

CREATE TABLE IF NOT EXISTS `jobtitles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(10) NOT NULL DEFAULT '',
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `specification` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE IF NOT EXISTS `languages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `nationality`
--

CREATE TABLE IF NOT EXISTS `nationality` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `paygrades`
--

CREATE TABLE IF NOT EXISTS `paygrades` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `currency` varchar(3) NOT NULL,
  `min_salary` decimal(12,2) DEFAULT '0.00',
  `max_salary` decimal(12,2) DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `Fk_PayGrades_CurrencyTypes` (`currency`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `province`
--

CREATE TABLE IF NOT EXISTS `province` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL DEFAULT '',
  `code` char(2) NOT NULL DEFAULT '',
  `country` char(2) NOT NULL DEFAULT 'US',
  PRIMARY KEY (`id`),
  KEY `Fk_Province_Country` (`country`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE IF NOT EXISTS `skills` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `employee` bigint(20) DEFAULT NULL,
  `user_level` enum('Admin','Employee','Manager') DEFAULT NULL,
  `last_login` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_update` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `Fk_User_Employee` (`employee`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `companystructures`
--
ALTER TABLE `companystructures`
  ADD CONSTRAINT `Fk_CompanyStructures_Own` FOREIGN KEY (`parent`) REFERENCES `companystructures` (`id`);

--
-- Constraints for table `employeeeducations`
--
ALTER TABLE `employeeeducations`
  ADD CONSTRAINT `Fk_EmployeeEducations_Educations` FOREIGN KEY (`education_id`) REFERENCES `educations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_EmployeeEducations_Employee` FOREIGN KEY (`employee`) REFERENCES `employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `Fk_Employee_CompanyStructures` FOREIGN KEY (`department`) REFERENCES `companystructures` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_Employee_Country` FOREIGN KEY (`country`) REFERENCES `country` (`code`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_Employee_EmploymentStatus` FOREIGN KEY (`employment_status`) REFERENCES `employmentstatus` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_Employee_JobTitle` FOREIGN KEY (`job_title`) REFERENCES `jobtitles` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_Employee_Nationality` FOREIGN KEY (`nationality`) REFERENCES `nationality` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_Employee_PayGrades` FOREIGN KEY (`pay_grade`) REFERENCES `paygrades` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_Employee_Province` FOREIGN KEY (`province`) REFERENCES `province` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_Employee_Supervisor` FOREIGN KEY (`supervisor`) REFERENCES `employees` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `employeeskills`
--
ALTER TABLE `employeeskills`
  ADD CONSTRAINT `Fk_EmployeeSkills_Employee` FOREIGN KEY (`employee`) REFERENCES `employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_EmployeeSkills_Skills` FOREIGN KEY (`skill_id`) REFERENCES `skills` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `paygrades`
--
ALTER TABLE `paygrades`
  ADD CONSTRAINT `Fk_PayGrades_CurrencyTypes` FOREIGN KEY (`currency`) REFERENCES `currencytypes` (`code`);

--
-- Constraints for table `province`
--
ALTER TABLE `province`
  ADD CONSTRAINT `Fk_Province_Country` FOREIGN KEY (`country`) REFERENCES `country` (`code`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `Fk_User_Employee` FOREIGN KEY (`employee`) REFERENCES `employees` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
