-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2015 at 03:11 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `kenyadate`
--

-- --------------------------------------------------------

--
-- Table structure for table `sys_menu_service`
--

CREATE TABLE IF NOT EXISTS `sys_menu_service` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(200) NOT NULL,
  `Caption` varchar(100) NOT NULL,
  `Icon` varchar(100) NOT NULL,
  `Link` varchar(250) NOT NULL,
  `Script` varchar(250) NOT NULL,
  `Target` varchar(200) NOT NULL,
  `Order` int(5) NOT NULL,
  `Visible` set('non','memb') NOT NULL DEFAULT '',
  `Active` tinyint(1) NOT NULL DEFAULT '1',
  `Movable` tinyint(1) NOT NULL DEFAULT '1',
  `Clonable` tinyint(1) NOT NULL DEFAULT '1',
  `Editable` tinyint(1) NOT NULL DEFAULT '1',
  `Deletable` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `sys_menu_service`
--

INSERT INTO `sys_menu_service` (`ID`, `Name`, `Caption`, `Icon`, `Link`, `Script`, `Target`, `Order`, `Visible`, `Active`, `Movable`, `Clonable`, `Editable`, `Deletable`) VALUES
(1, 'Join', '_sys_sm_join', '', 'join.php', '', '', 1, 'non', 1, 3, 1, 1, 1),
(2, 'Login', '_sys_sm_login', '', '', 'showPopupLoginForm(); return false;', '', 2, 'non', 1, 3, 1, 1, 1),
(3, 'Profile', '_sys_sm_profile', '', '{memberLink}|{memberNick}|change_status.php', '', '', 1, 'memb', 1, 3, 1, 1, 1),
(4, 'Account', '_sys_sm_account', '', 'member.php', '', '', 2, 'memb', 1, 3, 1, 1, 1),
(5, 'Logout', '_sys_sm_logout', '', 'logout.php?action=member_logout', '', '', 3, 'memb', 1, 3, 1, 1, 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
