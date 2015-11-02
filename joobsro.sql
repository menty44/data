-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2015 at 01:08 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `joobsro`
--

-- --------------------------------------------------------

--
-- Table structure for table `by_categories`
--

CREATE TABLE IF NOT EXISTS `by_categories` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Link` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `OrderIndex` tinyint(4) NOT NULL,
  `Parent` tinyint(4) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `OrderIndex` (`OrderIndex`),
  KEY `Parent` (`Parent`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC AUTO_INCREMENT=2 ;

--
-- Dumping data for table `by_categories`
--

INSERT INTO `by_categories` (`ID`, `Name`, `Link`, `OrderIndex`, `Parent`) VALUES
(1, 'Uncategorized', 'Uncategorized', 100, 0);

-- --------------------------------------------------------

--
-- Table structure for table `by_jobs`
--

CREATE TABLE IF NOT EXISTS `by_jobs` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `CategoryID` int(11) NOT NULL DEFAULT '0',
  `Title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Description` varchar(4000) COLLATE utf8_unicode_ci NOT NULL,
  `ToApply` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `Company` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `Location` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `Public` tinyint(1) NOT NULL DEFAULT '0',
  `ExpirationDate` int(10) unsigned NOT NULL,
  `ChangedBy` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ChangedDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `STATUS` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `CodeStamp` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `PostedAt` datetime NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `CategoryID` (`CategoryID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC AUTO_INCREMENT=2 ;

--
-- Dumping data for table `by_jobs`
--

INSERT INTO `by_jobs` (`ID`, `CategoryID`, `Title`, `Description`, `ToApply`, `Company`, `Location`, `Public`, `ExpirationDate`, `ChangedBy`, `ChangedDate`, `STATUS`, `CodeStamp`, `PostedAt`) VALUES
(1, 0, 'software dev', 'abe', 'apply online', 'arif Technologies Limited', 'Nairobi', 1, 1443693323, '', '2015-09-01 09:57:27', 0, '0000-00-00 00:00:00', '2015-09-01 12:55:23');

-- --------------------------------------------------------

--
-- Table structure for table `by_plugin_data`
--

CREATE TABLE IF NOT EXISTS `by_plugin_data` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `plugin_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `option_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `option_value` varchar(4096) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `option_name` (`option_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `by_plugin_data`
--

INSERT INTO `by_plugin_data` (`id`, `plugin_name`, `option_name`, `option_value`) VALUES
(1, 'Google_Analytics', 'analyticsId', ''),
(2, 'Google_Analytics', 'email', 'menty44'),
(3, 'Google_Analytics', 'password', 'XZB9O6G8fred'),
(4, 'Twitter', 'username', 'menty44'),
(5, 'Twitter', 'password', 'XZB9O6G8');

-- --------------------------------------------------------

--
-- Table structure for table `by_users`
--

CREATE TABLE IF NOT EXISTS `by_users` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `realname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `password_salt` varchar(51) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC AUTO_INCREMENT=2 ;

--
-- Dumping data for table `by_users`
--

INSERT INTO `by_users` (`ID`, `username`, `realname`, `password`, `password_salt`) VALUES
(1, 'root', 'root', '7c6c60597ec7d5a1b60040edc26f313e', 'dc76e9f0c0006e8f919e0c515c66dbba3982f785');

-- --------------------------------------------------------

--
-- Table structure for table `{#prefix#}categories`
--

CREATE TABLE IF NOT EXISTS `{#prefix#}categories` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Link` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `OrderIndex` tinyint(4) NOT NULL,
  `Parent` tinyint(4) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `OrderIndex` (`OrderIndex`),
  KEY `Parent` (`Parent`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `{#prefix#}jobs`
--

CREATE TABLE IF NOT EXISTS `{#prefix#}jobs` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `CategoryID` int(11) NOT NULL DEFAULT '0',
  `Title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Description` varchar(4000) COLLATE utf8_unicode_ci NOT NULL,
  `ToApply` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `Company` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `Location` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `Public` tinyint(1) NOT NULL DEFAULT '0',
  `ExpirationDate` int(10) unsigned NOT NULL,
  `ChangedBy` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ChangedDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `STATUS` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `CodeStamp` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `PostedAt` datetime NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `CategoryID` (`CategoryID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `{#prefix#}plugin_data`
--

CREATE TABLE IF NOT EXISTS `{#prefix#}plugin_data` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `plugin_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `option_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `option_value` varchar(4096) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `option_name` (`option_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `{#prefix#}users`
--

CREATE TABLE IF NOT EXISTS `{#prefix#}users` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `realname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `password_salt` varchar(51) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
