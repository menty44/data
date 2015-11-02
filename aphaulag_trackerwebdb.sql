-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2015 at 12:55 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `aphaulag_trackerwebdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `acos`
--

CREATE TABLE IF NOT EXISTS `acos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `foreign_key` int(10) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=102 ;

--
-- Dumping data for table `acos`
--

INSERT INTO `acos` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`) VALUES
(1, NULL, NULL, NULL, 'controllers', 1, 198),
(2, 1, NULL, NULL, 'DriverDailyActivities', 2, 13),
(3, 2, NULL, NULL, 'index', 3, 4),
(4, 2, NULL, NULL, 'view', 5, 6),
(5, 2, NULL, NULL, 'add', 7, 8),
(6, 2, NULL, NULL, 'edit', 9, 10),
(7, 2, NULL, NULL, 'delete', 11, 12),
(8, 1, NULL, NULL, 'DriverLocations', 14, 25),
(9, 8, NULL, NULL, 'index', 15, 16),
(10, 8, NULL, NULL, 'view', 17, 18),
(11, 8, NULL, NULL, 'add', 19, 20),
(12, 8, NULL, NULL, 'edit', 21, 22),
(13, 8, NULL, NULL, 'delete', 23, 24),
(14, 1, NULL, NULL, 'DriverVehicleJobs', 26, 37),
(15, 14, NULL, NULL, 'index', 27, 28),
(16, 14, NULL, NULL, 'view', 29, 30),
(17, 14, NULL, NULL, 'add', 31, 32),
(18, 14, NULL, NULL, 'edit', 33, 34),
(19, 14, NULL, NULL, 'delete', 35, 36),
(20, 1, NULL, NULL, 'Drivers', 38, 53),
(21, 20, NULL, NULL, 'index', 39, 40),
(22, 20, NULL, NULL, 'view', 41, 42),
(23, 20, NULL, NULL, 'add', 43, 44),
(24, 20, NULL, NULL, 'edit', 45, 46),
(25, 20, NULL, NULL, 'delete', 47, 48),
(27, 1, NULL, NULL, 'Groups', 54, 75),
(28, 27, NULL, NULL, 'index', 55, 56),
(29, 27, NULL, NULL, 'view', 57, 58),
(30, 27, NULL, NULL, 'add', 59, 60),
(31, 27, NULL, NULL, 'edit', 61, 62),
(32, 27, NULL, NULL, 'delete', 63, 64),
(33, 27, NULL, NULL, 'admin_index', 65, 66),
(34, 27, NULL, NULL, 'admin_view', 67, 68),
(35, 27, NULL, NULL, 'admin_add', 69, 70),
(36, 27, NULL, NULL, 'admin_edit', 71, 72),
(37, 27, NULL, NULL, 'admin_delete', 73, 74),
(38, 1, NULL, NULL, 'JobPackages', 76, 87),
(39, 38, NULL, NULL, 'index', 77, 78),
(40, 38, NULL, NULL, 'view', 79, 80),
(41, 38, NULL, NULL, 'add', 81, 82),
(42, 38, NULL, NULL, 'edit', 83, 84),
(43, 38, NULL, NULL, 'delete', 85, 86),
(44, 1, NULL, NULL, 'JobSignatures', 88, 99),
(45, 44, NULL, NULL, 'index', 89, 90),
(46, 44, NULL, NULL, 'view', 91, 92),
(47, 44, NULL, NULL, 'add', 93, 94),
(48, 44, NULL, NULL, 'edit', 95, 96),
(49, 44, NULL, NULL, 'delete', 97, 98),
(50, 1, NULL, NULL, 'Jobs', 100, 111),
(51, 50, NULL, NULL, 'index', 101, 102),
(52, 50, NULL, NULL, 'view', 103, 104),
(53, 50, NULL, NULL, 'add', 105, 106),
(54, 50, NULL, NULL, 'edit', 107, 108),
(55, 50, NULL, NULL, 'delete', 109, 110),
(56, 1, NULL, NULL, 'Locations', 112, 123),
(57, 56, NULL, NULL, 'index', 113, 114),
(58, 56, NULL, NULL, 'view', 115, 116),
(59, 56, NULL, NULL, 'add', 117, 118),
(60, 56, NULL, NULL, 'edit', 119, 120),
(61, 56, NULL, NULL, 'delete', 121, 122),
(62, 1, NULL, NULL, 'Packages', 124, 135),
(63, 62, NULL, NULL, 'index', 125, 126),
(64, 62, NULL, NULL, 'view', 127, 128),
(65, 62, NULL, NULL, 'add', 129, 130),
(66, 62, NULL, NULL, 'edit', 131, 132),
(67, 62, NULL, NULL, 'delete', 133, 134),
(68, 1, NULL, NULL, 'Pages', 136, 139),
(69, 68, NULL, NULL, 'display', 137, 138),
(70, 1, NULL, NULL, 'Users', 140, 165),
(71, 70, NULL, NULL, 'index', 141, 142),
(72, 70, NULL, NULL, 'login', 143, 144),
(73, 70, NULL, NULL, 'logout', 145, 146),
(74, 70, NULL, NULL, 'view', 147, 148),
(75, 70, NULL, NULL, 'add', 149, 150),
(76, 70, NULL, NULL, 'edit', 151, 152),
(77, 70, NULL, NULL, 'delete', 153, 154),
(78, 70, NULL, NULL, 'admin_index', 155, 156),
(79, 70, NULL, NULL, 'admin_view', 157, 158),
(80, 70, NULL, NULL, 'admin_add', 159, 160),
(81, 70, NULL, NULL, 'admin_edit', 161, 162),
(82, 70, NULL, NULL, 'admin_delete', 163, 164),
(84, 1, NULL, NULL, 'VehicleDailyActivities', 166, 177),
(85, 84, NULL, NULL, 'index', 167, 168),
(86, 84, NULL, NULL, 'view', 169, 170),
(87, 84, NULL, NULL, 'add', 171, 172),
(88, 84, NULL, NULL, 'edit', 173, 174),
(89, 84, NULL, NULL, 'delete', 175, 176),
(90, 1, NULL, NULL, 'Vehicles', 178, 189),
(91, 90, NULL, NULL, 'index', 179, 180),
(92, 90, NULL, NULL, 'view', 181, 182),
(93, 90, NULL, NULL, 'add', 183, 184),
(94, 90, NULL, NULL, 'edit', 185, 186),
(95, 90, NULL, NULL, 'delete', 187, 188),
(96, 1, NULL, NULL, 'AclExtras', 190, 191),
(97, 1, NULL, NULL, 'Overview', 192, 197),
(98, 97, NULL, NULL, 'index', 193, 194),
(99, 97, NULL, NULL, 'viewActivityMap', 195, 196),
(100, 20, NULL, NULL, 'manage', 49, 50),
(101, 20, NULL, NULL, 'addDriver', 51, 52);

-- --------------------------------------------------------

--
-- Table structure for table `aros`
--

CREATE TABLE IF NOT EXISTS `aros` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `foreign_key` int(10) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `aros`
--

INSERT INTO `aros` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`) VALUES
(5, 9, 'User', 5, NULL, 12, 13),
(6, 7, 'User', 6, NULL, 2, 3),
(7, NULL, 'Group', 4, NULL, 1, 6),
(8, NULL, 'Group', 5, NULL, 7, 10),
(9, NULL, 'Group', 6, NULL, 11, 18),
(10, 8, 'User', 7, NULL, 8, 9),
(11, 9, 'User', 8, NULL, 14, 15),
(12, 9, 'User', 9, NULL, 16, 17),
(13, 7, 'User', 21, NULL, 4, 5);

-- --------------------------------------------------------

--
-- Table structure for table `aros_acos`
--

CREATE TABLE IF NOT EXISTS `aros_acos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `aro_id` int(10) NOT NULL,
  `aco_id` int(10) NOT NULL,
  `_create` varchar(2) NOT NULL DEFAULT '0',
  `_read` varchar(2) NOT NULL DEFAULT '0',
  `_update` varchar(2) NOT NULL DEFAULT '0',
  `_delete` varchar(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ARO_ACO_KEY` (`aro_id`,`aco_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `aros_acos`
--

INSERT INTO `aros_acos` (`id`, `aro_id`, `aco_id`, `_create`, `_read`, `_update`, `_delete`) VALUES
(1, 7, 1, '1', '1', '1', '1'),
(2, 8, 1, '1', '1', '1', '1'),
(3, 8, 70, '-1', '-1', '-1', '-1'),
(4, 9, 1, '-1', '-1', '-1', '-1');

-- --------------------------------------------------------

--
-- Table structure for table `cake_sessions`
--

CREATE TABLE IF NOT EXISTS `cake_sessions` (
  `id` varchar(255) NOT NULL DEFAULT '',
  `data` text,
  `expires` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `drivers`
--

CREATE TABLE IF NOT EXISTS `drivers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `license_type` varchar(25) DEFAULT NULL,
  `available` varchar(10) DEFAULT NULL,
  `last_logged_in` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telephone` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `drivers`
--

INSERT INTO `drivers` (`id`, `user_id`, `license_type`, `available`, `last_logged_in`, `created`, `modified`, `first_name`, `last_name`, `email`, `telephone`) VALUES
(6, 9, '7.5 Tonne', 'Active', '2014-01-13 09:15:00', '2014-01-13 09:16:41', '2014-01-14 05:52:25', 'Gary', 'Driver', 'gary@email.com', '03695 154657'),
(5, 8, '3.5 Tonne', 'Active', '2014-01-13 08:55:00', '2014-01-13 09:14:01', '2014-01-14 05:52:10', 'John', 'Driver', 'john@email.com', '04567 879542'),
(4, 5, '7.5 Tonne w/Crane', 'Active', '2014-01-13 08:51:00', '2014-01-13 08:52:00', '2014-01-18 08:40:24', 'Nick', 'Driver', 'nickDriver@email.com', '02456 789654');

-- --------------------------------------------------------

--
-- Table structure for table `driver_daily_activities`
--

CREATE TABLE IF NOT EXISTS `driver_daily_activities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `driver_id` int(11) DEFAULT NULL,
  `date_timestamp` datetime DEFAULT NULL,
  `miles_driven` int(11) DEFAULT NULL,
  `time_minutes_driven` int(11) DEFAULT NULL,
  `time_minutes_break` int(11) DEFAULT NULL,
  `jobs_completed` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `driver_id` (`driver_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `driver_locations`
--

CREATE TABLE IF NOT EXISTS `driver_locations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `driver_id` int(11) DEFAULT NULL,
  `date_time_stamp` datetime DEFAULT NULL,
  `latitude` float DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `driver_locations`
--

INSERT INTO `driver_locations` (`id`, `driver_id`, `date_time_stamp`, `latitude`, `longitude`) VALUES
(4, 4, '2014-01-14 04:45:00', 52.9447, -1.18417),
(5, 4, '2014-01-14 04:46:00', 52.9337, -1.13405),
(6, 5, '2014-01-14 04:46:00', 53.5503, -2.32847),
(7, 5, '2014-01-14 04:47:00', 53.5986, -2.45584),
(8, 6, '2014-01-14 04:48:00', 52.2042, -1.78064),
(9, 5, '2014-01-14 06:38:00', 53.4553, -0.791874);

-- --------------------------------------------------------

--
-- Table structure for table `driver_vehicle_jobs`
--

CREATE TABLE IF NOT EXISTS `driver_vehicle_jobs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `driver_id` int(11) DEFAULT NULL,
  `job_id` int(11) DEFAULT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `driver_id` (`driver_id`),
  KEY `job_id` (`job_id`),
  KEY `vehicle_id` (`vehicle_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `created`, `modified`) VALUES
(4, 'Administrator', '2014-01-12 05:42:46', '2014-01-12 05:42:46'),
(5, 'Manager', '2014-01-12 05:42:52', '2014-01-12 05:42:52'),
(6, 'Driver', '2014-01-12 05:42:57', '2014-01-12 05:42:57');

-- --------------------------------------------------------

--
-- Table structure for table `i18n`
--

CREATE TABLE IF NOT EXISTS `i18n` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `locale` varchar(6) NOT NULL,
  `model` varchar(255) NOT NULL,
  `foreign_key` int(10) NOT NULL,
  `field` varchar(255) NOT NULL,
  `content` mediumtext,
  PRIMARY KEY (`id`),
  KEY `locale` (`locale`),
  KEY `model` (`model`),
  KEY `row_id` (`foreign_key`),
  KEY `field` (`field`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE IF NOT EXISTS `jobs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `collection_point` int(11) DEFAULT NULL,
  `dropoff_point` int(11) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `completed_date` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `collection_point` (`collection_point`),
  KEY `dropoff_point` (`dropoff_point`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `job_packages`
--

CREATE TABLE IF NOT EXISTS `job_packages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `job_id` int(11) DEFAULT NULL,
  `package_id` int(11) DEFAULT NULL,
  `notes` varchar(50) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `job_id` (`job_id`),
  KEY `package_id` (`package_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `job_signatures`
--

CREATE TABLE IF NOT EXISTS `job_signatures` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `driver_id` int(11) DEFAULT NULL,
  `job_id` int(11) DEFAULT NULL,
  `driver_signature` varchar(100) DEFAULT NULL,
  `customer_signature` varchar(100) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `driver_id` (`driver_id`),
  KEY `job_id` (`job_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE IF NOT EXISTS `locations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `address1` varchar(50) DEFAULT NULL,
  `address2` varchar(50) DEFAULT NULL,
  `address3` varchar(50) DEFAULT NULL,
  `town` varchar(50) DEFAULT NULL,
  `county` varchar(50) DEFAULT NULL,
  `postcode` varchar(10) DEFAULT NULL,
  `opening_time` time DEFAULT NULL,
  `closing_time` time DEFAULT NULL,
  `days_open` varchar(20) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE IF NOT EXISTS `packages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `length` varchar(10) DEFAULT NULL,
  `width` varchar(10) DEFAULT NULL,
  `weight` varchar(10) DEFAULT NULL,
  `special_reqs` varchar(50) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `role` varchar(20) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telephone` varchar(100) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_users_group_id` (`group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`, `created`, `modified`, `first_name`, `last_name`, `email`, `telephone`, `status`, `group_id`) VALUES
(7, 'nickManager', '9c36c7108a73324100bc9305f581979071d45ee9', 'Manager', '2014-01-12 06:05:44', '2014-01-12 06:05:44', 'Nick', 'Manager', 'nick@email.com', '123456789', 'Active', 5),
(5, 'nickDriver', 'a7138d515eab7a8ca38174db1a17ca7083f0d3ca', 'Driver', '2014-01-11 11:47:45', '2014-01-14 04:28:28', 'Nick', 'Driver', 'nickDriver@emai.com', '03215 692145', 'Active', 6),
(6, 'test', '9c36c7108a73324100bc9305f581979071d45ee9', 'Administrator', '2014-01-12 05:37:05', '2014-01-12 06:05:58', 'test', 'test', 'test@test.com', 'test', 'test', 4),
(8, 'johnDriver', 'a7138d515eab7a8ca38174db1a17ca7083f0d3ca', 'Driver', '2014-01-13 08:55:05', '2014-01-14 04:28:14', 'John', 'Driver', 'john@email.com', '06548 798542', 'Active', 6),
(9, 'garyDriver', 'a7138d515eab7a8ca38174db1a17ca7083f0d3ca', 'Driver', '2014-01-13 09:15:30', '2014-01-14 04:27:58', 'Gary', 'Driver', 'gary@email.com', '01234 549678', 'Active', 6),
(20, 'root', 'root', 'admin', '2015-03-30 04:18:20', '2015-03-30 01:08:13', 'fred', 'oluoch', 'menty44@gmail.com', '0720106420', 'active', 20),
(21, 'demo', '2bccca8a80607c4c6ad2a98897b3374439495f99', 'admin', '2015-03-30 22:05:23', '2015-03-30 22:05:23', 'demo', 'demo', 'demo@gmail.com', '0155555', 'active', 4);

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE IF NOT EXISTS `vehicles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(25) DEFAULT NULL,
  `vehicle_type` varchar(25) DEFAULT NULL,
  `reg_number` varchar(10) DEFAULT NULL,
  `license_type` varchar(25) DEFAULT NULL,
  `crane` varchar(5) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `available` varchar(10) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_daily_activities`
--

CREATE TABLE IF NOT EXISTS `vehicle_daily_activities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `vehicle_id` int(11) DEFAULT NULL,
  `date_time_stamp` datetime DEFAULT NULL,
  `miles_driven` int(11) DEFAULT NULL,
  `time_minutes_driven` int(11) DEFAULT NULL,
  `jobs_completed` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `vehicle_id` (`vehicle_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
