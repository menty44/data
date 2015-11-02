-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2015 at 10:16 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `phs-software`
--

-- --------------------------------------------------------

--
-- Table structure for table `ph7_admins`
--

CREATE TABLE IF NOT EXISTS `ph7_admins` (
  `profileId` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(40) NOT NULL,
  `password` varchar(120) NOT NULL,
  `email` varchar(120) NOT NULL,
  `firstName` varchar(50) DEFAULT NULL,
  `lastName` varchar(50) DEFAULT NULL,
  `sex` enum('male','female') NOT NULL DEFAULT 'male',
  `lang` varchar(5) NOT NULL DEFAULT 'en_US',
  `timeZone` varchar(6) NOT NULL DEFAULT '-6',
  `joinDate` datetime DEFAULT NULL,
  `lastActivity` datetime DEFAULT NULL,
  `lastEdit` datetime DEFAULT NULL,
  `ban` enum('0','1') DEFAULT '0',
  `ip` varchar(20) NOT NULL DEFAULT '127.0.0.1',
  `hashValidation` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`profileId`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ph7_admins`
--

INSERT INTO `ph7_admins` (`profileId`, `username`, `password`, `email`, `firstName`, `lastName`, `sex`, `lang`, `timeZone`, `joinDate`, `lastActivity`, `lastEdit`, `ban`, `ip`, `hashValidation`) VALUES
(1, 'administrator', '$2y$14$p9kHKi5wCk7fI0X5fT5BwusOX2iP5kItC8OXtc612hkBSAin2/Y0G', 'fred.oluoch@ariftechnologies.com', 'fredrick', 'oluoch', 'male', 'en_US', '-6', '2015-05-05 14:29:53', '2015-05-05 14:29:53', NULL, '0', '0.0.0.0', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ph7_adminsattemptslogin`
--

CREATE TABLE IF NOT EXISTS `ph7_adminsattemptslogin` (
  `ip` varchar(20) NOT NULL DEFAULT '',
  `attempts` smallint(5) unsigned NOT NULL,
  `lastLogin` datetime NOT NULL,
  UNIQUE KEY `ip` (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ph7_adminsloglogin`
--

CREATE TABLE IF NOT EXISTS `ph7_adminsloglogin` (
  `logId` mediumint(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) NOT NULL DEFAULT '',
  `username` varchar(64) NOT NULL DEFAULT '',
  `password` varchar(40) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT '',
  `ip` varchar(20) NOT NULL DEFAULT '',
  `dateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`logId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ph7_adminslogsess`
--

CREATE TABLE IF NOT EXISTS `ph7_adminslogsess` (
  `profileId` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `username` varchar(40) DEFAULT NULL,
  `password` varchar(240) DEFAULT NULL,
  `email` varchar(120) DEFAULT NULL,
  `firstName` varchar(50) DEFAULT NULL,
  `lastName` varchar(50) DEFAULT NULL,
  `sessionHash` varchar(40) NOT NULL,
  `idHash` char(32) NOT NULL,
  `lastActivity` int(10) unsigned NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `ip` varchar(20) NOT NULL DEFAULT '127.0.0.1',
  `userAgent` varchar(100) NOT NULL,
  `guest` smallint(4) unsigned NOT NULL DEFAULT '1',
  `dateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`profileId`),
  KEY `sessionHash` (`sessionHash`),
  KEY `lastActivity` (`lastActivity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ph7_ads`
--

CREATE TABLE IF NOT EXISTS `ph7_ads` (
  `adsId` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(40) DEFAULT NULL,
  `code` text,
  `active` enum('1','0') DEFAULT '1',
  `width` smallint(3) DEFAULT NULL,
  `height` smallint(3) DEFAULT NULL,
  `views` int(10) unsigned NOT NULL DEFAULT '0',
  `clicks` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`adsId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `ph7_ads`
--

INSERT INTO `ph7_ads` (`adsId`, `name`, `code`, `active`, `width`, `height`, `views`, `clicks`) VALUES
(1, 'Sponsor pH7CMS 1 (728x90)', '<a href="#0"><img data-src="holder.js/728x90" alt="%site_name% by %software_name%" title="%site_name% powered by %software_name%" /></a>', '0', 728, 90, 0, 0),
(2, 'Sponsor pH7CMS 2 (728x90)', '<a href="#0"><img data-src="holder.js/728x90" alt="%site_name% by %software_name%" title="%site_name% powered by %software_name%" /></a>', '0', 728, 90, 0, 0),
(3, 'Sponsor pH7CMS 3 (200x200)', '<a href="#0"><img data-src="holder.js/200x200" alt="%site_name% by %software_name%" title="%site_name% powered by %software_name%" /></a>', '0', 200, 200, 0, 0),
(4, 'Sponsor pH7CMS 4 (200x200)', '<a href="#0"><img data-src="holder.js/200x200" alt="%site_name% by %software_name%" title="%site_name% powered by %software_name%" /></a>', '0', 200, 200, 0, 0),
(5, 'Sponsor pH7CMS 5 (250x250)', '<a href="#0"><img data-src="holder.js/250x250" alt="%site_name% by %software_name%" title="%site_name% powered by %software_name%" /></a>', '0', 250, 250, 0, 0),
(6, 'Sponsor pH7CMS 6 (250x250)', '<a href="#0"><img data-src="holder.js/250x250" alt="%site_name% by %software_name%" title="%site_name% powered by %software_name%" /></a>', '0', 250, 250, 0, 0),
(7, 'Sponsor pH7CMS 7 (468x60)', '<a href="#0"><img data-src="holder.js/468x60" alt="%site_name% by %software_name%" title="%site_name% powered by %software_name%" /></a>', '0', 468, 60, 0, 0),
(8, 'Sponsor pH7CMS 8 (468x60)', '<a href="#0"><img data-src="holder.js/468x60" alt="%site_name% by %software_name%" title="%site_name% powered by %software_name%" /></a>', '0', 468, 60, 0, 0),
(9, 'Sponsor pH7CMS 9 (300x250)', '<a href="#0"><img data-src="holder.js/300x250" alt="%site_name% by %software_name%" title="%site_name% powered by %software_name%" /></a>', '0', 300, 250, 0, 0),
(10, 'Sponsor pH7CMS 10 (300x250)', '<a href="#0"><img data-src="holder.js/300x250" alt="%site_name% by %software_name%" title="%site_name% powered by %software_name%" /></a>', '0', 300, 250, 0, 0),
(11, 'Sponsor pH7CMS 11 (336x280)', '<a href="#0"><img data-src="holder.js/336x280" alt="%site_name% by %software_name%" title="%site_name% powered by %software_name%" /></a>', '0', 336, 280, 0, 0),
(12, 'Sponsor pH7CMS 12 (336x280)', '<a href="#0"><img data-src="holder.js/336x280" alt="%site_name% by %software_name%" title="%site_name% powered by %software_name%" /></a>', '0', 336, 280, 0, 0),
(13, 'Sponsor pH7CMS 13 (120x600)', '<a href="#0"><img data-src="holder.js/120x600" alt="%site_name% by %software_name%" title="%site_name% powered by %software_name%" /></a>', '0', 120, 600, 0, 0),
(14, 'Sponsor pH7CMS 14 (120x600)', '<a href="#0"><img data-src="holder.js/120x600" alt="%site_name% by %software_name%" title="%site_name% powered by %software_name%" /></a>', '0', 120, 600, 0, 0),
(15, 'Sponsor pH7CMS 15 (160x600)', '<a href="#0"><img data-src="holder.js/160x600" alt="%site_name% by %software_name%" title="%site_name% powered by %software_name%" /></a>', '0', 160, 600, 0, 0),
(16, 'Sponsor pH7CMS 16 (160x600)', '<a href="#0"><img data-src="holder.js/160x600" alt="%site_name% by %software_name%" title="%site_name% powered by %software_name%" /></a>', '0', 160, 600, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ph7_adsaffiliates`
--

CREATE TABLE IF NOT EXISTS `ph7_adsaffiliates` (
  `adsId` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(40) DEFAULT NULL,
  `code` text,
  `active` enum('1','0') DEFAULT '1',
  `width` smallint(3) DEFAULT NULL,
  `height` smallint(3) DEFAULT NULL,
  PRIMARY KEY (`adsId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `ph7_adsaffiliates`
--

INSERT INTO `ph7_adsaffiliates` (`adsId`, `name`, `code`, `active`, `width`, `height`) VALUES
(1, 'Sponsor pH7CMS 1 (728x90)', '<a href="%affiliate_url%"><img data-src="holder.js/728x90" alt="%site_name% by %software_name%" title="%site_name% powered by %software_name%" /></a>', '0', 728, 90),
(2, 'Sponsor pH7CMS 2 (728x90)', '<a href="%affiliate_url%/signup"><img data-src="holder.js/728x90" alt="%site_name% by %software_name%" title="%site_name% powered by %software_name%" /></a>', '0', 728, 90),
(3, 'Sponsor pH7CMS 3 (200x200)', '<a href="%affiliate_url%"><img data-src="holder.js/200x200" alt="%site_name% by %software_name%" title="%site_name% powered by %software_name%" /></a>', '0', 200, 200),
(4, 'Sponsor pH7CMS 4 (200x200)', '<a href="%affiliate_url%/signup"><img data-src="holder.js/200x200" alt="%site_name% by %software_name%" title="%site_name% powered by %software_name%" /></a>', '0', 200, 200),
(5, 'Sponsor pH7CMS 5 (250x250)', '<a href="%affiliate_url%"><img data-src="holder.js/250x250" alt="%site_name% by %software_name%" title="%site_name% powered by %software_name%" /></a>', '0', 250, 250),
(6, 'Sponsor pH7CMS 6 (250x250)', '<a href="%affiliate_url%/signup"><img data-src="holder.js/250x250" alt="%site_name% by %software_name%" title="%site_name% powered by %software_name%" /></a>', '0', 250, 250),
(7, 'Sponsor pH7CMS 7 (468x60)', '<a href="%affiliate_url%"><img data-src="holder.js/468x60" alt="%site_name% by %software_name%" title="%site_name% powered by %software_name%" /></a>', '0', 468, 60),
(8, 'Sponsor pH7CMS 8 (468x60)', '<a href="%affiliate_url%/signup"><img data-src="holder.js/468x60" alt="%site_name% by %software_name%" title="%site_name% powered by %software_name%" /></a>', '0', 468, 60),
(9, 'Sponsor pH7CMS 9 (300x250)', '<a href="%affiliate_url%"><img data-src="holder.js/300x250" alt="%site_name% by %software_name%" title="%site_name% powered by %software_name%" /></a>', '0', 300, 250),
(10, 'Sponsor pH7CMS 10 (300x250)', '<a href="%affiliate_url%/signup"><img data-src="holder.js/300x250" alt="%site_name% by %software_name%" title="%site_name% powered by %software_name%" /></a>', '0', 300, 250),
(11, 'Sponsor pH7CMS 11 (336x280)', '<a href="%affiliate_url%"><img data-src="holder.js/336x280" alt="%site_name% by %software_name%" title="%site_name% powered by %software_name%" /></a>', '0', 336, 280),
(12, 'Sponsor pH7CMS 12 (336x280)', '<a href="%affiliate_url%/signup"><img data-src="holder.js/336x280" alt="%site_name% by %software_name%" title="%site_name% powered by %software_name%" /></a>', '0', 336, 280),
(13, 'Sponsor pH7CMS 13 (120x600)', '<a href="%affiliate_url%"><img data-src="holder.js/120x600" alt="%site_name% by %software_name%" title="%site_name% powered by %software_name%" /></a>', '0', 120, 600),
(14, 'Sponsor pH7CMS 14 (120x600)', '<a href="%affiliate_url%/signup"><img data-src="holder.js/120x600" alt="%site_name% by %software_name%" title="%site_name% powered by %software_name%" /></a>', '0', 120, 600),
(15, 'Sponsor pH7CMS 15 (160x600)', '<a href="%affiliate_url%"><img data-src="holder.js/160x600" alt="%site_name% by %software_name%" title="%site_name% powered by %software_name%" /></a>', '0', 160, 600),
(16, 'Sponsor pH7CMS 16 (160x600)', '<a href="%affiliate_url%/signup"><img data-src="holder.js/160x600" alt="%site_name% by %software_name%" title="%site_name% powered by %software_name%" /></a>', '0', 160, 600);

-- --------------------------------------------------------

--
-- Table structure for table `ph7_affiliates`
--

CREATE TABLE IF NOT EXISTS `ph7_affiliates` (
  `profileId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(40) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `password` varchar(120) NOT NULL,
  `email` varchar(120) NOT NULL,
  `sex` enum('male','female') NOT NULL DEFAULT 'male',
  `birthDate` date NOT NULL DEFAULT '0000-00-00',
  `ip` varchar(20) NOT NULL DEFAULT '127.0.0.1',
  `bankAccount` varchar(150) DEFAULT NULL,
  `amount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `totalPayment` decimal(8,2) NOT NULL DEFAULT '0.00',
  `lastPayment` decimal(8,2) NOT NULL DEFAULT '0.00',
  `lastPaymentDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lang` varchar(5) NOT NULL DEFAULT 'en_US',
  `hashValidation` varchar(40) DEFAULT NULL,
  `refer` int(10) unsigned DEFAULT '0',
  `joinDate` datetime DEFAULT NULL,
  `lastActivity` datetime DEFAULT NULL,
  `lastEdit` datetime DEFAULT NULL,
  `affiliatedId` int(10) unsigned NOT NULL DEFAULT '0',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ban` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`profileId`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `bankAccount` (`bankAccount`),
  KEY `birthDate` (`birthDate`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ph7_affiliates`
--

INSERT INTO `ph7_affiliates` (`profileId`, `username`, `firstName`, `lastName`, `password`, `email`, `sex`, `birthDate`, `ip`, `bankAccount`, `amount`, `totalPayment`, `lastPayment`, `lastPaymentDate`, `lang`, `hashValidation`, `refer`, `joinDate`, `lastActivity`, `lastEdit`, `affiliatedId`, `active`, `ban`) VALUES
(1, 'aff1', 'Matthew', 'Rayen', '5ecd8c86f5200e22c969fff7526573e75ea75e08', 'aff@affiliate.cow', 'male', '1986-10-13', '127.0.0.1', 'bank_account@demo.cow', '0.00', '0.00', '0.00', '0000-00-00 00:00:00', 'en_US', NULL, 0, '2015-05-05 15:25:33', '2015-05-05 15:25:33', NULL, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ph7_affiliatesattemptslogin`
--

CREATE TABLE IF NOT EXISTS `ph7_affiliatesattemptslogin` (
  `ip` varchar(20) NOT NULL DEFAULT '',
  `attempts` smallint(5) unsigned NOT NULL,
  `lastLogin` datetime NOT NULL,
  UNIQUE KEY `ip` (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ph7_affiliatesinfo`
--

CREATE TABLE IF NOT EXISTS `ph7_affiliatesinfo` (
  `profileId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `middleName` varchar(50) DEFAULT NULL,
  `businessName` varchar(100) DEFAULT NULL,
  `taxId` varchar(40) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `street` varchar(200) DEFAULT NULL,
  `country` char(2) DEFAULT NULL,
  `city` varchar(150) DEFAULT NULL,
  `state` varchar(150) DEFAULT NULL,
  `zipCode` varchar(20) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `fax` varchar(100) DEFAULT NULL,
  `description` text,
  `website` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`profileId`),
  KEY `country` (`country`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ph7_affiliatesinfo`
--

INSERT INTO `ph7_affiliatesinfo` (`profileId`, `middleName`, `businessName`, `taxId`, `address`, `street`, `country`, `city`, `state`, `zipCode`, `phone`, `fax`, `description`, `website`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, 'US', 'New York', 'NYC', '10001', NULL, NULL, 'My Website is very nice!', 'http://hizup.com');

-- --------------------------------------------------------

--
-- Table structure for table `ph7_affiliatesloglogin`
--

CREATE TABLE IF NOT EXISTS `ph7_affiliatesloglogin` (
  `logId` mediumint(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) NOT NULL DEFAULT '',
  `username` varchar(64) NOT NULL DEFAULT '',
  `password` varchar(40) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT '',
  `ip` varchar(20) NOT NULL DEFAULT '',
  `dateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`logId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ph7_affiliateslogsess`
--

CREATE TABLE IF NOT EXISTS `ph7_affiliateslogsess` (
  `profileId` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(40) DEFAULT NULL,
  `password` varchar(120) DEFAULT NULL,
  `email` varchar(120) DEFAULT NULL,
  `firstName` varchar(50) DEFAULT NULL,
  `lastName` varchar(50) DEFAULT NULL,
  `sessionHash` varchar(40) NOT NULL,
  `idHash` char(32) NOT NULL,
  `lastActivity` int(10) unsigned NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `ip` varchar(20) NOT NULL DEFAULT '127.0.0.1',
  `userAgent` varchar(100) NOT NULL,
  `guest` smallint(4) unsigned NOT NULL DEFAULT '1',
  `dateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`profileId`),
  KEY `sessionHash` (`sessionHash`),
  KEY `lastActivity` (`lastActivity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ph7_albumspictures`
--

CREATE TABLE IF NOT EXISTS `ph7_albumspictures` (
  `albumId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `profileId` int(10) unsigned NOT NULL,
  `name` varchar(80) NOT NULL,
  `thumb` char(11) NOT NULL,
  `approved` enum('1','0') DEFAULT '1',
  `votes` int(9) unsigned DEFAULT '0',
  `score` float unsigned DEFAULT '0',
  `views` int(10) unsigned DEFAULT '0',
  `description` varchar(255) DEFAULT NULL,
  `createdDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updatedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`albumId`),
  KEY `profileId` (`profileId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ph7_albumspictures`
--

INSERT INTO `ph7_albumspictures` (`albumId`, `profileId`, `name`, `thumb`, `approved`, `votes`, `score`, `views`, `description`, `createdDate`, `updatedDate`) VALUES
(1, 14, 'happy me', 'd-thumb.jpg', '1', 0, 0, 1, 'me being happy holla', '2015-05-05 05:57:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ph7_albumsvideos`
--

CREATE TABLE IF NOT EXISTS `ph7_albumsvideos` (
  `albumId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `profileId` int(10) unsigned NOT NULL,
  `name` varchar(80) NOT NULL,
  `thumb` char(11) NOT NULL,
  `approved` enum('1','0') DEFAULT '1',
  `votes` int(9) unsigned DEFAULT '0',
  `score` float unsigned DEFAULT '0',
  `views` int(10) unsigned DEFAULT '0',
  `description` varchar(255) DEFAULT NULL,
  `createdDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updatedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`albumId`),
  KEY `profileId` (`profileId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ph7_analyticsapi`
--

CREATE TABLE IF NOT EXISTS `ph7_analyticsapi` (
  `analyticsId` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  `code` text,
  `active` enum('1','0') DEFAULT '1',
  PRIMARY KEY (`analyticsId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ph7_analyticsapi`
--

INSERT INTO `ph7_analyticsapi` (`analyticsId`, `name`, `code`, `active`) VALUES
(1, 'Google Analytics', '<script>\r\nvar _gaq = _gaq || [];\r\n  _gaq.push([''_setAccount'', ''YOUR_ID_API'']);\r\n  _gaq.push([''_trackPageview'']);\r\n  (function() {\r\n    var ga = document.createElement(''script''); ga.type = ''text/javascript''; ga.async = true;\r\n    ga.src = (''https:'' == document.location.protocol ? ''https://ssl'' : ''http://www'') + ''.google-analytics.com/ga.js'';\r\n    var s = document.getElementsByTagName(''script'')[0]; s.parentNode.insertBefore(ga, s);\r\n  })();</script>', '1');

-- --------------------------------------------------------

--
-- Table structure for table `ph7_blockip`
--

CREATE TABLE IF NOT EXISTS `ph7_blockip` (
  `ip` int(10) unsigned NOT NULL DEFAULT '0',
  `expires` int(10) unsigned NOT NULL,
  PRIMARY KEY (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `ph7_blogs`
--

CREATE TABLE IF NOT EXISTS `ph7_blogs` (
  `blogId` mediumint(10) unsigned NOT NULL AUTO_INCREMENT,
  `postId` varchar(60) NOT NULL,
  `langId` char(2) NOT NULL DEFAULT '',
  `title` varchar(100) DEFAULT NULL,
  `content` longtext NOT NULL,
  `pageTitle` varchar(100) NOT NULL,
  `metaDescription` varchar(255) NOT NULL,
  `metaKeywords` varchar(255) NOT NULL,
  `slogan` varchar(200) NOT NULL,
  `metaRobots` varchar(50) NOT NULL,
  `metaAuthor` varchar(50) NOT NULL,
  `metaCopyright` varchar(50) NOT NULL,
  `tags` varchar(200) DEFAULT NULL,
  `votes` int(9) unsigned DEFAULT '0',
  `score` float unsigned DEFAULT '0',
  `views` int(10) unsigned DEFAULT '0',
  `enableComment` enum('1','0') DEFAULT '1',
  `createdDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updatedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`blogId`),
  UNIQUE KEY `postId` (`postId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ph7_blogscategories`
--

CREATE TABLE IF NOT EXISTS `ph7_blogscategories` (
  `categoryId` smallint(4) unsigned NOT NULL,
  `blogId` mediumint(10) unsigned NOT NULL,
  KEY `categoryId` (`categoryId`),
  KEY `blogId` (`blogId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ph7_blogsdatacategories`
--

CREATE TABLE IF NOT EXISTS `ph7_blogsdatacategories` (
  `categoryId` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`categoryId`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `ph7_blogsdatacategories`
--

INSERT INTO `ph7_blogsdatacategories` (`categoryId`, `name`) VALUES
(1, 'Affiliate'),
(2, 'Business'),
(3, 'Company'),
(4, 'Dating'),
(5, 'Education'),
(6, 'Family'),
(7, 'Food'),
(8, 'Game'),
(9, 'Health'),
(10, 'Hobby'),
(11, 'Movie'),
(12, 'Music'),
(13, 'News'),
(14, 'Programming'),
(15, 'Recreation'),
(16, 'Shopping'),
(17, 'Society'),
(18, 'Sports'),
(19, 'Technology'),
(20, 'Travel');

-- --------------------------------------------------------

--
-- Table structure for table `ph7_bottommenus`
--

CREATE TABLE IF NOT EXISTS `ph7_bottommenus` (
  `menuId` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `vendorName` varchar(40) NOT NULL,
  `moduleName` varchar(40) NOT NULL,
  `controllerName` varchar(40) NOT NULL,
  `actionName` varchar(40) NOT NULL,
  `vars` varchar(60) DEFAULT NULL,
  `parentMenu` smallint(4) unsigned DEFAULT NULL,
  `grandParentMenu` smallint(4) unsigned DEFAULT NULL,
  `active` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`menuId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ph7_commentsblog`
--

CREATE TABLE IF NOT EXISTS `ph7_commentsblog` (
  `commentId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sender` int(10) unsigned NOT NULL,
  `recipient` mediumint(10) unsigned NOT NULL,
  `comment` text NOT NULL,
  `createdDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updatedDate` datetime DEFAULT NULL,
  `approved` enum('1','0') NOT NULL DEFAULT '1',
  PRIMARY KEY (`commentId`),
  KEY `recipient` (`recipient`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ph7_commentsgame`
--

CREATE TABLE IF NOT EXISTS `ph7_commentsgame` (
  `commentId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sender` int(10) unsigned NOT NULL,
  `recipient` int(10) unsigned NOT NULL,
  `comment` text NOT NULL,
  `createdDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updatedDate` datetime DEFAULT NULL,
  `approved` enum('1','0') NOT NULL DEFAULT '1',
  PRIMARY KEY (`commentId`),
  KEY `recipient` (`recipient`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ph7_commentsnote`
--

CREATE TABLE IF NOT EXISTS `ph7_commentsnote` (
  `commentId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sender` int(10) unsigned NOT NULL,
  `recipient` int(10) unsigned NOT NULL,
  `comment` text NOT NULL,
  `createdDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updatedDate` datetime DEFAULT NULL,
  `approved` enum('1','0') NOT NULL DEFAULT '1',
  PRIMARY KEY (`commentId`),
  KEY `recipient` (`recipient`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ph7_commentspicture`
--

CREATE TABLE IF NOT EXISTS `ph7_commentspicture` (
  `commentId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sender` int(10) unsigned NOT NULL,
  `recipient` int(10) unsigned NOT NULL,
  `comment` text NOT NULL,
  `createdDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updatedDate` datetime DEFAULT NULL,
  `approved` enum('1','0') NOT NULL DEFAULT '1',
  PRIMARY KEY (`commentId`),
  KEY `recipient` (`recipient`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ph7_commentsprofile`
--

CREATE TABLE IF NOT EXISTS `ph7_commentsprofile` (
  `commentId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sender` int(10) unsigned NOT NULL,
  `recipient` int(10) unsigned NOT NULL,
  `comment` text NOT NULL,
  `createdDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updatedDate` datetime DEFAULT NULL,
  `approved` enum('1','0') DEFAULT '1',
  PRIMARY KEY (`commentId`),
  KEY `recipient` (`recipient`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ph7_commentsprofile`
--

INSERT INTO `ph7_commentsprofile` (`commentId`, `sender`, `recipient`, `comment`, `createdDate`, `updatedDate`, `approved`) VALUES
(1, 14, 14, 'rsyy', '2015-05-05 05:46:46', NULL, '1');

-- --------------------------------------------------------

--
-- Table structure for table `ph7_commentsvideo`
--

CREATE TABLE IF NOT EXISTS `ph7_commentsvideo` (
  `commentId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sender` int(10) unsigned NOT NULL,
  `recipient` int(10) unsigned NOT NULL,
  `comment` text NOT NULL,
  `createdDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updatedDate` datetime DEFAULT NULL,
  `approved` enum('1','0') NOT NULL DEFAULT '1',
  PRIMARY KEY (`commentId`),
  KEY `recipient` (`recipient`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ph7_customcode`
--

CREATE TABLE IF NOT EXISTS `ph7_customcode` (
  `code` text,
  `codeType` enum('css','js') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ph7_customcode`
--

INSERT INTO `ph7_customcode` (`code`, `codeType`) VALUES
('/* Your custom CSS code here */', 'css'),
('/* Your custom JS code here */\r\n\r\n// Don''t remove the code below. Inclusion of the JS file for Social Bookmark.\r\ndocument.write(''<script src="//s7.addthis.com/js/250/addthis_widget.js"></script>'');', 'js');

-- --------------------------------------------------------

--
-- Table structure for table `ph7_forums`
--

CREATE TABLE IF NOT EXISTS `ph7_forums` (
  `forumId` mediumint(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(80) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'New forum',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `categoryId` smallint(4) unsigned DEFAULT NULL,
  `createdDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updatedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`forumId`),
  KEY `categoryId` (`categoryId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `ph7_forums`
--

INSERT INTO `ph7_forums` (`forumId`, `name`, `description`, `categoryId`, `createdDate`, `updatedDate`) VALUES
(1, 'Hello', 'Free dating site', 1, '0000-00-00 00:00:00', NULL),
(2, 'Online Dating', 'Discussion about the online dating websites', 2, '0000-00-00 00:00:00', NULL),
(3, 'The Best Dating Site', 'The best dating site', 1, '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ph7_forumscategories`
--

CREATE TABLE IF NOT EXISTS `ph7_forumscategories` (
  `categoryId` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`categoryId`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `ph7_forumscategories`
--

INSERT INTO `ph7_forumscategories` (`categoryId`, `title`) VALUES
(3, 'Business'),
(2, 'Free Online Dating Site'),
(1, 'General');

-- --------------------------------------------------------

--
-- Table structure for table `ph7_forumsmessages`
--

CREATE TABLE IF NOT EXISTS `ph7_forumsmessages` (
  `messageId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `topicId` int(10) unsigned NOT NULL,
  `profileId` int(10) unsigned NOT NULL,
  `message` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `approved` enum('1','0') CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '1',
  `createdDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updatedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`messageId`),
  KEY `topicId` (`topicId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ph7_forumstopics`
--

CREATE TABLE IF NOT EXISTS `ph7_forumstopics` (
  `topicId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `forumId` mediumint(10) unsigned DEFAULT NULL,
  `profileId` int(10) unsigned NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `approved` enum('1','0') CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '1',
  `createdDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updatedDate` datetime DEFAULT NULL,
  `views` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`topicId`),
  KEY `forumId` (`forumId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ph7_games`
--

CREATE TABLE IF NOT EXISTS `ph7_games` (
  `gameId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) NOT NULL,
  `title` varchar(120) NOT NULL,
  `description` varchar(255) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `thumb` varchar(200) NOT NULL,
  `file` varchar(200) NOT NULL,
  `categoryId` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `addedDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `downloads` int(9) unsigned DEFAULT '0',
  `votes` int(9) unsigned DEFAULT '0',
  `score` float unsigned DEFAULT '0',
  `views` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`gameId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `ph7_games`
--

INSERT INTO `ph7_games` (`gameId`, `name`, `title`, `description`, `keywords`, `thumb`, `file`, `categoryId`, `addedDate`, `downloads`, `votes`, `score`, `views`) VALUES
(1, '', 'America Fights Back', 'Think you can do better in the war? Well heres your chance.Use your mouse and click to fire your guns! Watch your energy level to make sure you dont die. There are no second chances or extra', 'America Fights Back', 'america_strikes_back.png', 'america_strikes_back.swf', 2, '2015-05-05 12:24:33', 0, 0, 0, 0),
(2, '', 'Altex', 'Be fast and shoot them all!', 'Altex', 'altex.png', 'altex.swf', 2, '2015-05-05 12:24:33', 0, 0, 0, 0),
(3, '', 'Alpine Escape', 'Catch the brides falling from the airship but don''t shoot it down - shoot down the fighter plane in', 'Alpine Escape', 'alpine_escape.png', 'alpine_escape.swf', 2, '2015-05-05 12:24:33', 0, 0, 0, 0),
(4, '', 'Flashblox', 'Tetris clone', '', 'tetris_clone.png', 'tetris_clone.swf', 1, '2015-05-05 12:24:33', 0, 0, 0, 0),
(5, '', 'Bell Boys', 'Help the bell boy to deliver their orders to the right floor by controling the elevators', '', 'bell_boys.png', 'bell_boys.swf', 1, '2015-05-05 12:24:33', 0, 0, 0, 0),
(6, '', 'Frogger', 'This is a real classic simple and addictive. Just help the frog to cross the street with heavy traffic', '', 'frogger.png', 'frogger.swf', 1, '2015-05-05 12:24:33', 0, 0, 0, 0),
(7, '', 'Blackjack', 'This is a nice Blackjack games that allow playing upto 5 hands at once', '', 'blackjack.png', 'blackjack.swf', 3, '2015-05-05 12:24:33', 0, 0, 0, 0),
(8, '', 'The Blackjack Casino', 'One of the most popular Casino games', '', 'blackjack_casino.png', 'blackjack_casino.swf', 3, '2015-05-05 12:24:33', 0, 0, 0, 0),
(9, '', 'Casino - Let It Ride', 'Click on the chip amount you wish to bet. Press DEAL button to get cards. Determine if your hand is worth keeping or dropping one of your bets.', '', 'let_ride.png', 'let_ride.swf', 3, '2015-05-05 12:24:33', 0, 0, 0, 0),
(10, '', 'Boeing', 'NA', 'Boeing', 'boeing.jpg', 'boeing.swf', 4, '2015-05-05 12:24:33', 0, 0, 0, 0),
(11, '', 'Book', 'NA', 'Book', 'book.jpg', 'book.swf', 4, '2015-05-05 12:24:33', 0, 0, 0, 0),
(12, '', 'Burj_al_Arab', 'NA', 'Burj_al_Arab', 'burj_al_arab.jpg', 'burj_al_arab.swf', 4, '2015-05-05 12:24:33', 0, 0, 0, 0),
(13, '', 'Asteroid Field+', 'Hit as many asteriods as possible in the asteroid field', '', 'asteroid.png', 'asteroid.swf', 5, '2015-05-05 12:24:33', 0, 0, 0, 0),
(14, '', 'Brighton Bounty Hunter', 'Shoot all that you can see on screen', '', 'brighton_bounty_hunter.png', 'brighton_bounty_hunter.swf', 5, '2015-05-05 12:24:33', 0, 0, 0, 0),
(15, '', 'Sheepteroids', 'It is Sheep-teroids that we are shooting!', '', 'sheepteroids.png', 'sheepteroids.swf', 5, '2015-05-05 12:24:33', 0, 0, 0, 0),
(16, '', 'Blackjack Fever', 'Blackjack Las Vegas style - Double Down Split and More - Get your practice in before making your t', 'Blackjack Fever', 'bjfever.png', 'bjfever.swf', 6, '2015-05-05 12:24:33', 0, 0, 0, 0),
(17, '', 'Beermat', 'A game about fliking beermats.', 'Beermat', 'beermat.png', 'beermat.swf', 6, '2015-05-05 12:24:33', 0, 0, 0, 0),
(18, '', 'Beeku Big Adventure Ch1', 'Run around as Beeku blast away bugs and critters with your machine gun.', 'Beeku''s Big Adventure Ch1', 'beeku_big_adventure.png', 'beeku_big_adventure.swf', 6, '2015-05-05 12:24:33', 0, 0, 0, 0),
(19, '', 'Addem Up', 'Place the next tile from the queue on the board. If all surrounding tiles add up to that number they', 'Addem Up', 'addem_up.png', 'addem_up.swf', 7, '2015-05-05 12:24:33', 0, 0, 0, 0),
(20, '', 'Aga Maze', 'A mazing game', 'Aga Maze', 'aga_maze.png', 'aga_maze.swf', 7, '2015-05-05 12:24:33', 0, 0, 0, 0),
(21, '', 'Air Heads', 'Fly your balloon across building but avoid the smog above.', 'Air Heads', 'air_heads.png', 'air_heads.swf', 7, '2015-05-05 12:24:33', 0, 0, 0, 0),
(22, '', 'Stai Ruere', 'Protesters have gathered around a barracks area! It''s your duty to control them and maintain peace a', 'Stai Ruere', 'stai_ruere.png', 'stai_ruere.swf', 8, '2015-05-05 12:24:33', 0, 0, 0, 0),
(23, '', 'Stay The Distance', 'Great horse racing game. Easy but a bit harsh.', 'Stay The Distance', 'stay_the_distance.png', 'stay_the_distance.swf', 8, '2015-05-05 12:24:33', 0, 0, 0, 0),
(24, '', 'TGFG Racing', 'Race around the track smashing into your opponents to knock them off and picking up turbo so you can', 'TGFG Racing', 'tgfg_racing.png', 'tgfg_racing.swf', 8, '2015-05-05 12:24:33', 0, 0, 0, 0),
(25, '', '12 Puzzle', 'Fit the puzzle pieces together to solve the puzzle!', '12 Puzzle', '12_puzzle.png', '12_puzzle.swf', 9, '2015-05-05 12:24:33', 0, 0, 0, 0),
(26, '', '24 Puzzle', 'Align the 24 numbers in order from 1-24 in this 3D puzzle.', '24 Puzzle', '24_puzzle.png', '24_puzzle.swf', 9, '2015-05-05 12:24:33', 0, 0, 0, 0),
(27, '', '3D Frogger', 'Frogger takes on a new look in this 3 dimensional version of the classic game. Make your way across', '3D Frogger', '3d_frogger.png', '3d_frogger.swf', 9, '2015-05-05 12:24:33', 0, 0, 0, 0),
(28, '', 'Amok Madman', 'Get tought by an expert in this fun shooting game.', 'Amok Madman', 'amok.png', 'amok.swf', 10, '2015-05-05 12:24:33', 0, 0, 0, 0),
(29, '', 'Aderans Forest', 'Aderans Forest is under attack. Shoot all the enemies before they destroy it! Click the mouse to shoot.', 'Aderans Forest', 'aderans_forest.png', 'aderans_forest.swf', 10, '2015-05-05 12:24:33', 0, 0, 0, 0),
(30, '', 'AO-War On Iraq', 'Shoot down Iraqi Terrorists Jeeps Grenaders and hostile villagers using AK Machine guns.', 'AO-War On Iraq', 'war_on_iraq.png', 'war_on_iraq.swf', 10, '2015-05-05 12:24:33', 0, 0, 0, 0),
(31, '', 'Bullseye', 'Play this classic darts game.', 'Bullseye', 'bullseye.png', 'bullseye.swf', 11, '2015-05-05 12:24:33', 0, 0, 0, 0),
(32, '', 'Billiards', 'Billiards Flash Game. So famous, you have to play with our Cue Sports game right now. Finally, our Billiards flash game is simple to use, smart and modern.', 'Cue Sports, Cuesports, Billiard, Billiards, Snooker, poll, Billiards balls, Pool Balls', 'billiards.png', 'billiards.swf', 11, '2015-05-05 12:24:33', 0, 0, 0, 0),
(33, '', 'Bowling', 'Here you are. A superb bowling game. Turn your speakers up!Throw the ball when you see the sign. In order to throw the ball push the go botton. Keep it pressed until the yellow field at t', 'Bowling', 'bowling.png', 'bowling.swf', 11, '2015-05-05 12:24:33', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ph7_gamescategories`
--

CREATE TABLE IF NOT EXISTS `ph7_gamescategories` (
  `categoryId` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`categoryId`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `ph7_gamescategories`
--

INSERT INTO `ph7_gamescategories` (`categoryId`, `name`) VALUES
(1, 'Action'),
(2, 'Arcade'),
(3, 'Casino'),
(4, 'Drawing'),
(5, 'Fighting'),
(6, 'Other'),
(7, 'Puzzle'),
(8, 'Racing'),
(9, 'Retro'),
(10, 'Shooting'),
(11, 'Sports');

-- --------------------------------------------------------

--
-- Table structure for table `ph7_languagesinfo`
--

CREATE TABLE IF NOT EXISTS `ph7_languagesinfo` (
  `langId` varchar(5) NOT NULL,
  `name` varchar(60) NOT NULL,
  `charset` varchar(15) NOT NULL,
  `active` enum('0','1') NOT NULL DEFAULT '0',
  `direction` enum('ltr','rtl') NOT NULL DEFAULT 'ltr',
  `author` varchar(60) NOT NULL,
  `website` varchar(120) DEFAULT NULL,
  `email` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`langId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ph7_languagesinfo`
--

INSERT INTO `ph7_languagesinfo` (`langId`, `name`, `charset`, `active`, `direction`, `author`, `website`, `email`) VALUES
('en_US', 'English', 'UTF-8', '1', 'ltr', 'Pierre-Henry', 'http://hizup.com', 'ph7software@gmail.com'),
('fr_FR', 'Français', 'UTF-8', '1', 'ltr', 'Pierre-Henry', 'http://hizup.com', 'ph7software@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `ph7_languagesphrases`
--

CREATE TABLE IF NOT EXISTS `ph7_languagesphrases` (
  `phraseId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `langId` varchar(5) NOT NULL,
  `moduleName` varchar(40) NOT NULL,
  `vendorName` varchar(40) NOT NULL,
  `token` varchar(120) NOT NULL,
  `text` mediumtext,
  `added` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`phraseId`),
  KEY `langId` (`langId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ph7_license`
--

CREATE TABLE IF NOT EXISTS `ph7_license` (
  `licenseId` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `licenseKey` varchar(40) NOT NULL,
  PRIMARY KEY (`licenseId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ph7_license`
--

INSERT INTO `ph7_license` (`licenseId`, `licenseKey`) VALUES
(1, '');

-- --------------------------------------------------------

--
-- Table structure for table `ph7_likes`
--

CREATE TABLE IF NOT EXISTS `ph7_likes` (
  `keyId` varchar(255) NOT NULL,
  `votes` int(10) unsigned NOT NULL,
  `lastVote` datetime NOT NULL,
  `lastIp` varchar(20) NOT NULL,
  UNIQUE KEY `keyId` (`keyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ph7_likes`
--

INSERT INTO `ph7_likes` (`keyId`, `votes`, `lastVote`, `lastIp`) VALUES
('http://localhost/datepro/user/album/root/happy-me/1', 1, '2015-05-05 17:15:00', '0.0.0.0');

-- --------------------------------------------------------

--
-- Table structure for table `ph7_logerror`
--

CREATE TABLE IF NOT EXISTS `ph7_logerror` (
  `logId` mediumint(10) unsigned NOT NULL AUTO_INCREMENT,
  `logError` longtext,
  PRIMARY KEY (`logId`),
  FULLTEXT KEY `logError` (`logError`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ph7_members`
--

CREATE TABLE IF NOT EXISTS `ph7_members` (
  `profileId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(120) NOT NULL,
  `firstName` varchar(50) DEFAULT NULL,
  `lastName` varchar(50) DEFAULT NULL,
  `birthDate` date NOT NULL DEFAULT '0000-00-00',
  `sex` enum('male','female','couple') NOT NULL DEFAULT 'female',
  `matchSex` set('male','female','couple') NOT NULL DEFAULT 'male',
  `ip` varchar(20) NOT NULL DEFAULT '127.0.0.1',
  `bankAccount` varchar(150) DEFAULT NULL,
  `groupId` tinyint(2) unsigned NOT NULL DEFAULT '2',
  `membershipDate` datetime DEFAULT NULL,
  `userStatus` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `joinDate` datetime DEFAULT NULL,
  `lastActivity` datetime DEFAULT NULL,
  `lastEdit` datetime DEFAULT NULL,
  `avatar` char(5) DEFAULT NULL,
  `approvedAvatar` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `featured` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `lang` varchar(5) NOT NULL DEFAULT 'en_US',
  `hashValidation` varchar(40) DEFAULT NULL,
  `views` int(11) NOT NULL DEFAULT '0',
  `reference` varchar(255) DEFAULT NULL,
  `votes` int(11) DEFAULT '0',
  `score` float DEFAULT '0',
  `credits` int(6) unsigned NOT NULL DEFAULT '0',
  `affiliatedId` int(10) unsigned NOT NULL DEFAULT '0',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ban` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`profileId`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  KEY `groupId` (`groupId`),
  KEY `birthDate` (`birthDate`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `ph7_members`
--

INSERT INTO `ph7_members` (`profileId`, `email`, `username`, `password`, `firstName`, `lastName`, `birthDate`, `sex`, `matchSex`, `ip`, `bankAccount`, `groupId`, `membershipDate`, `userStatus`, `joinDate`, `lastActivity`, `lastEdit`, `avatar`, `approvedAvatar`, `featured`, `lang`, `hashValidation`, `views`, `reference`, `votes`, `score`, `credits`, `affiliatedId`, `active`, `ban`) VALUES
(1, 'ghost@ghost', 'ghost', '0f3ce988d9eadc7fc5bb26fc3d74d25926a76854', 'Ghost', 'The Ghost', '1001-01-01', '', '', '127.0.0.1', NULL, 2, NULL, 1, '2015-05-05 15:24:34', '2015-05-05 15:24:34', NULL, NULL, 1, 0, 'en_US', NULL, 0, NULL, 0, 0, 0, 0, 1, 0),
(2, 'demo2@demo.cow', 'garcia', '5ecd8c86f5200e22c969fff7526573e75ea75e08', 'Grace', 'Park', '1992-11-21', 'female', 'male', '127.0.0.1', NULL, 2, NULL, 1, '2015-05-05 15:25:33', '2015-05-05 15:25:33', NULL, NULL, 1, 0, 'en_US', NULL, 0, NULL, 0, 0, 0, 0, 1, 0),
(3, 'demo3@demo.cow', 'peter22', '5ecd8c86f5200e22c969fff7526573e75ea75e08', 'Peter', 'Backhard', '1977-12-21', 'male', '', '127.0.0.1', NULL, 2, NULL, 1, '2015-05-05 15:25:33', '2015-05-05 15:25:33', NULL, NULL, 1, 0, 'en_US', NULL, 0, NULL, 0, 0, 0, 0, 1, 0),
(4, 'demo4@demo.cow', 'katin', '5ecd8c86f5200e22c969fff7526573e75ea75e08', 'Katin', 'Layjyr', '1988-12-21', 'female', 'male', '127.0.0.1', NULL, 2, NULL, 1, '2015-05-05 15:25:33', '2015-05-05 15:25:33', NULL, NULL, 1, 0, 'en_US', NULL, 0, NULL, 0, 0, 0, 0, 1, 0),
(5, 'demo5@demo.cow', 'trinityI', '5ecd8c86f5200e22c969fff7526573e75ea75e08', 'Trinity', 'Rivic', '1988-12-21', 'female', 'male,female', '127.0.0.1', NULL, 2, NULL, 1, '2015-05-05 15:25:33', '2015-05-05 15:25:33', NULL, NULL, 1, 0, 'en_US', NULL, 0, NULL, 0, 0, 0, 0, 1, 0),
(6, 'demo6@demo.cow', 'JohnH', '5ecd8c86f5200e22c969fff7526573e75ea75e08', 'John', 'Pittsburgh', '1988-12-21', 'male', 'female', '127.0.0.1', NULL, 2, NULL, 1, '2015-05-05 15:25:33', '2015-05-05 15:25:33', NULL, NULL, 1, 0, 'en_US', NULL, 0, NULL, 0, 0, 0, 0, 1, 0),
(7, 'demo7@demo.cow', 'AntonR', '5ecd8c86f5200e22c969fff7526573e75ea75e08', 'Anton', 'Storn', '1968-12-21', 'male', '', '127.0.0.1', NULL, 2, NULL, 1, '2015-05-05 15:25:33', '2015-05-05 15:25:33', NULL, NULL, 1, 0, 'en_US', NULL, 0, NULL, 0, 0, 0, 0, 1, 0),
(8, 'demo8@demo.cow', 'kate62', '5ecd8c86f5200e22c969fff7526573e75ea75e08', 'Kate', 'Slater', '1988-12-21', 'female', 'male,female', '127.0.0.1', NULL, 2, NULL, 1, '2015-05-05 15:25:33', '2015-05-05 15:25:33', NULL, NULL, 1, 0, 'en_US', NULL, 1, NULL, 0, 0, 0, 0, 1, 0),
(9, 'demo9@demo.cow', 'MarkO', '5ecd8c86f5200e22c969fff7526573e75ea75e08', 'Mark', 'Yohir', '1978-01-21', 'male', 'male,female', '127.0.0.1', NULL, 2, NULL, 1, '2015-05-05 15:25:33', '2015-05-05 15:25:33', NULL, NULL, 1, 0, 'en_US', NULL, 1, NULL, 0, 0, 0, 0, 1, 0),
(10, 'demo10@demo.cow', 'Tom4', '5ecd8c86f5200e22c969fff7526573e75ea75e08', 'Tomy', 'Pittsburgh', '1992-12-21', 'male', 'female', '127.0.0.1', NULL, 2, NULL, 1, '2015-05-05 15:25:33', '2015-05-05 15:25:33', NULL, NULL, 1, 0, 'en_US', NULL, 0, NULL, 0, 0, 0, 0, 1, 0),
(11, 'demo11@demo.cow', 'rachO0O', '5ecd8c86f5200e22c969fff7526573e75ea75e08', 'Rachel', 'Žarko', '1968-02-10', 'female', 'male', '127.0.0.1', NULL, 2, NULL, 1, '2015-05-05 15:25:33', '2015-05-05 15:25:33', NULL, NULL, 1, 0, 'en_US', NULL, 0, NULL, 0, 0, 0, 0, 1, 0),
(12, 'demo12@demo.cow', 'Stive', '5ecd8c86f5200e22c969fff7526573e75ea75e08', 'Stive', 'Upton', '1988-12-21', 'male', 'male,female', '127.0.0.1', NULL, 2, NULL, 1, '2015-05-05 15:25:33', '2015-05-05 15:25:33', NULL, NULL, 1, 0, 'en_US', NULL, 0, NULL, 0, 0, 0, 0, 1, 0),
(13, 'demo13@demo.cow', 'EmmaROK', '5ecd8c86f5200e22c969fff7526573e75ea75e08', 'Emma', 'Solon', '1992-06-16', 'female', 'male,female,couple', '127.0.0.1', NULL, 2, NULL, 1, '2015-05-05 15:25:33', '2015-05-05 15:25:33', NULL, NULL, 1, 0, 'en_US', NULL, 0, NULL, 0, 0, 0, 0, 1, 0),
(14, 'menty44@gmail.com', 'root', '$2y$14$MYbl0Zqj0yQDOcemthURkO65Fl0ra9FHP5W2OiX/YHDRh6hzdSEU6', 'root', NULL, '1989-06-14', 'male', 'female', '0.0.0.0', NULL, 2, NULL, 1, '2015-05-05 05:41:04', '2015-05-05 07:15:22', NULL, 'f.jpg', 1, 0, 'en_US', '7e8a6d691b1e703f17d951f7a8292e63d9527f10', 2, 'No reference', 0, 0, 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ph7_membersattemptslogin`
--

CREATE TABLE IF NOT EXISTS `ph7_membersattemptslogin` (
  `ip` varchar(20) NOT NULL DEFAULT '',
  `attempts` smallint(5) unsigned NOT NULL,
  `lastLogin` datetime NOT NULL,
  UNIQUE KEY `ip` (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ph7_membersbackground`
--

CREATE TABLE IF NOT EXISTS `ph7_membersbackground` (
  `profileId` int(10) unsigned NOT NULL,
  `file` varchar(5) NOT NULL,
  `approved` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`profileId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ph7_membersfriends`
--

CREATE TABLE IF NOT EXISTS `ph7_membersfriends` (
  `profileId` int(10) unsigned NOT NULL,
  `friendId` int(10) unsigned NOT NULL,
  `requestDate` datetime DEFAULT NULL,
  `pending` tinyint(1) unsigned NOT NULL DEFAULT '0',
  KEY `profileId` (`profileId`),
  KEY `friendId` (`friendId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ph7_memberships`
--

CREATE TABLE IF NOT EXISTS `ph7_memberships` (
  `groupId` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL,
  `permissions` text NOT NULL,
  `price` decimal(10,2) unsigned NOT NULL,
  `expirationDays` tinyint(2) unsigned NOT NULL,
  `enable` enum('1','0') DEFAULT '1',
  `orderId` tinyint(2) unsigned NOT NULL,
  PRIMARY KEY (`groupId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `ph7_memberships`
--

INSERT INTO `ph7_memberships` (`groupId`, `name`, `description`, `permissions`, `price`, `expirationDays`, `enable`, `orderId`) VALUES
(1, 'Visitor', 'This subscription is offered to all visitors who visit the site.', 'a:23:{s:21:"quick_search_profiles";s:1:"1";s:24:"advanced_search_profiles";s:1:"1";s:10:"read_mails";s:1:"0";s:10:"send_mails";s:1:"0";s:13:"view_pictures";s:1:"1";s:15:"upload_pictures";s:1:"0";s:11:"view_videos";s:1:"1";s:13:"upload_videos";s:1:"0";s:4:"chat";s:1:"1";s:12:"chatroulette";s:1:"1";s:10:"hot_or_not";s:1:"1";s:15:"love_calculator";s:1:"0";s:10:"read_notes";s:1:"1";s:11:"write_notes";s:1:"0";s:15:"read_blog_posts";s:1:"1";s:13:"view_comments";s:1:"1";s:14:"write_comments";s:1:"0";s:12:"forum_access";s:1:"1";s:19:"create_forum_topics";s:1:"0";s:19:"answer_forum_topics";s:1:"0";s:12:"games_access";s:1:"1";s:13:"webcam_access";s:1:"1";s:18:"member_site_access";s:1:"0";}', '0.00', 0, '1', 1),
(2, 'Regular (Free)', 'Free Membership.', 'a:23:{s:21:"quick_search_profiles";s:1:"1";s:24:"advanced_search_profiles";s:1:"1";s:10:"read_mails";s:1:"1";s:10:"send_mails";s:1:"1";s:13:"view_pictures";s:1:"1";s:15:"upload_pictures";s:1:"1";s:11:"view_videos";s:1:"1";s:13:"upload_videos";s:1:"1";s:4:"chat";s:1:"1";s:12:"chatroulette";s:1:"1";s:10:"hot_or_not";s:1:"1";s:15:"love_calculator";s:1:"1";s:10:"read_notes";s:1:"1";s:11:"write_notes";s:1:"1";s:15:"read_blog_posts";s:1:"1";s:13:"view_comments";s:1:"1";s:14:"write_comments";s:1:"1";s:12:"forum_access";s:1:"1";s:19:"create_forum_topics";s:1:"1";s:19:"answer_forum_topics";s:1:"1";s:12:"games_access";s:1:"1";s:13:"webcam_access";s:1:"1";s:18:"member_site_access";s:1:"1";}', '0.00', 0, '1', 3),
(4, 'Platinum', 'The membership for the small budget.', 'a:23:{s:21:"quick_search_profiles";s:1:"1";s:24:"advanced_search_profiles";s:1:"1";s:10:"read_mails";s:1:"1";s:10:"send_mails";s:1:"1";s:13:"view_pictures";s:1:"1";s:15:"upload_pictures";s:1:"1";s:11:"view_videos";s:1:"1";s:13:"upload_videos";s:1:"1";s:4:"chat";s:1:"1";s:12:"chatroulette";s:1:"1";s:10:"hot_or_not";s:1:"1";s:15:"love_calculator";s:1:"1";s:10:"read_notes";s:1:"1";s:11:"write_notes";s:1:"1";s:15:"read_blog_posts";s:1:"1";s:13:"view_comments";s:1:"1";s:14:"write_comments";s:1:"1";s:12:"forum_access";s:1:"1";s:19:"create_forum_topics";s:1:"1";s:19:"answer_forum_topics";s:1:"1";s:12:"games_access";s:1:"1";s:13:"webcam_access";s:1:"1";s:18:"member_site_access";s:1:"1";}', '9.99', 5, '1', 4),
(5, 'Silver', 'The premium membership!', 'a:23:{s:21:"quick_search_profiles";s:1:"1";s:24:"advanced_search_profiles";s:1:"1";s:10:"read_mails";s:1:"1";s:10:"send_mails";s:1:"1";s:13:"view_pictures";s:1:"1";s:15:"upload_pictures";s:1:"1";s:11:"view_videos";s:1:"1";s:13:"upload_videos";s:1:"1";s:4:"chat";s:1:"1";s:12:"chatroulette";s:1:"1";s:10:"hot_or_not";s:1:"1";s:15:"love_calculator";s:1:"1";s:10:"read_notes";s:1:"1";s:11:"write_notes";s:1:"1";s:15:"read_blog_posts";s:1:"1";s:13:"view_comments";s:1:"1";s:14:"write_comments";s:1:"1";s:12:"forum_access";s:1:"1";s:19:"create_forum_topics";s:1:"1";s:19:"answer_forum_topics";s:1:"1";s:12:"games_access";s:1:"1";s:13:"webcam_access";s:1:"1";s:18:"member_site_access";s:1:"1";}', '19.99', 10, '1', 5),
(6, 'Gold', 'The must membership! The Gold!!!', 'a:23:{s:21:"quick_search_profiles";s:1:"1";s:24:"advanced_search_profiles";s:1:"1";s:10:"read_mails";s:1:"1";s:10:"send_mails";s:1:"1";s:13:"view_pictures";s:1:"1";s:15:"upload_pictures";s:1:"1";s:11:"view_videos";s:1:"1";s:13:"upload_videos";s:1:"1";s:4:"chat";s:1:"1";s:12:"chatroulette";s:1:"1";s:10:"hot_or_not";s:1:"1";s:15:"love_calculator";s:1:"1";s:10:"read_notes";s:1:"1";s:11:"write_notes";s:1:"1";s:15:"read_blog_posts";s:1:"1";s:13:"view_comments";s:1:"1";s:14:"write_comments";s:1:"1";s:12:"forum_access";s:1:"1";s:19:"create_forum_topics";s:1:"1";s:19:"answer_forum_topics";s:1:"1";s:12:"games_access";s:1:"1";s:13:"webcam_access";s:1:"1";s:18:"member_site_access";s:1:"1";}', '29.99', 30, '1', 6),
(9, 'Pending', 'Pending subscription provisional migration to a different subscription.', 'a:23:{s:21:"quick_search_profiles";s:1:"1";s:24:"advanced_search_profiles";s:1:"1";s:10:"read_mails";s:1:"0";s:10:"send_mails";s:1:"0";s:13:"view_pictures";s:1:"1";s:15:"upload_pictures";s:1:"0";s:11:"view_videos";s:1:"1";s:13:"upload_videos";s:1:"0";s:4:"chat";s:1:"1";s:12:"chatroulette";s:1:"1";s:10:"hot_or_not";s:1:"1";s:15:"love_calculator";s:1:"0";s:10:"read_notes";s:1:"1";s:11:"write_notes";s:1:"0";s:15:"read_blog_posts";s:1:"1";s:13:"view_comments";s:1:"1";s:14:"write_comments";s:1:"0";s:12:"forum_access";s:1:"1";s:19:"create_forum_topics";s:1:"0";s:19:"answer_forum_topics";s:1:"0";s:12:"games_access";s:1:"1";s:13:"webcam_access";s:1:"1";s:18:"member_site_access";s:1:"0";}', '0.00', 15, '0', 2);

-- --------------------------------------------------------

--
-- Table structure for table `ph7_membersinfo`
--

CREATE TABLE IF NOT EXISTS `ph7_membersinfo` (
  `profileId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `middleName` varchar(50) DEFAULT NULL,
  `description` text,
  `address` varchar(255) DEFAULT NULL,
  `street` varchar(200) DEFAULT NULL,
  `city` varchar(150) DEFAULT NULL,
  `state` varchar(150) DEFAULT NULL,
  `zipCode` varchar(20) DEFAULT NULL,
  `country` char(2) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `website` varchar(120) DEFAULT NULL,
  `socialNetworkSite` varchar(120) DEFAULT NULL,
  `height` tinyint(3) unsigned DEFAULT NULL,
  `weight` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`profileId`),
  KEY `country` (`country`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `ph7_membersinfo`
--

INSERT INTO `ph7_membersinfo` (`profileId`, `middleName`, `description`, `address`, `street`, `city`, `state`, `zipCode`, `country`, `phone`, `website`, `socialNetworkSite`, `height`, `weight`) VALUES
(1, NULL, 'This profile no longer exists, so I''m a ghost who replaces him during this time', 'The Ghost City', 'Ghost street', 'Ghost town', 'Ghost state', '000000', 'US', NULL, NULL, NULL, NULL, NULL),
(2, NULL, 'Hello to all', NULL, NULL, 'Manhattan', 'Manhattan', '10002', 'US', NULL, NULL, NULL, NULL, NULL),
(3, NULL, 'Hello to all', NULL, NULL, 'New York', 'New York', '11226', 'US', NULL, NULL, NULL, NULL, NULL),
(4, NULL, 'Hello to all', NULL, NULL, 'Manhattan', 'Manhattan', '10002', 'US', NULL, NULL, NULL, NULL, NULL),
(5, NULL, 'Hello to all', NULL, NULL, 'Manhattan', 'Manhattan', '10002', 'US', NULL, NULL, NULL, NULL, NULL),
(6, NULL, 'Hello to all', NULL, NULL, 'Manhattan', 'Manhattan', '10002', 'US', NULL, NULL, NULL, NULL, NULL),
(7, NULL, 'Hi all, my name is Anton.', NULL, NULL, 'Abinsk', 'Abinsk', '353320', 'RU', NULL, NULL, NULL, NULL, NULL),
(8, NULL, 'Hello to all', NULL, NULL, 'Manhattan', 'Manhattan', '10002', 'US', NULL, NULL, NULL, NULL, NULL),
(9, NULL, 'Hi baby!<br /> I am a handsome man tall and dark as women love.<br /> Come talk to me because you will not regret it!', NULL, NULL, 'Manhattan', 'Manhattan', '10002', 'US', NULL, NULL, NULL, NULL, NULL),
(10, NULL, 'Hello to all', NULL, NULL, 'Manhattan', 'Manhattan', '10002', 'US', NULL, NULL, NULL, NULL, NULL),
(11, NULL, 'Hello to all', NULL, NULL, 'Dolton', 'Illinois', '60419', 'US', NULL, NULL, NULL, NULL, NULL),
(12, NULL, 'Hello to all', NULL, NULL, 'Manhattan', 'Manhattan', '10002', 'US', NULL, NULL, NULL, NULL, NULL),
(13, NULL, 'Hmmm, you''ll see. I like to spend my free time on the Internet or traveling in different cities, places, mountain or sea...<br /> Listening good music of course.<br />See you soon! ;)', NULL, NULL, 'Soho', 'Westminster London', '139 L8', 'UK', NULL, NULL, NULL, NULL, NULL),
(14, '', '<p>\r\n its okay am logged in successfully</p>\r\n', NULL, NULL, 'nairobi', 'nairobi', '00200', 'KE', NULL, '', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ph7_membersloglogin`
--

CREATE TABLE IF NOT EXISTS `ph7_membersloglogin` (
  `logId` mediumint(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) NOT NULL DEFAULT '',
  `username` varchar(64) NOT NULL DEFAULT '',
  `password` varchar(40) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT '',
  `ip` varchar(20) NOT NULL DEFAULT '',
  `dateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`logId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `ph7_membersloglogin`
--

INSERT INTO `ph7_membersloglogin` (`logId`, `email`, `username`, `password`, `status`, `ip`, `dateTime`) VALUES
(1, 'fred.oluoch@ariftechnologies.com', 'Guest', 'No Password', 'Failed! Incorrect Username', '0.0.0.0', '2015-05-05 12:36:08'),
(2, 'menty44@gmail.com', 'Guest', 'No Password', 'Failed! Incorrect Username', '0.0.0.0', '2015-05-05 12:37:16'),
(3, 'menty44@gmail.com', 'root', '*****', 'Logged in!', '0.0.0.0', '2015-05-05 12:43:30'),
(4, 'fred.oluoch@ariftechnologies.com', 'Guest', 'No Password', 'Failed! Incorrect Username', '0.0.0.0', '2015-05-05 14:11:53'),
(5, 'menty44@gmail.com', 'root', '*****', 'Logged in!', '0.0.0.0', '2015-05-05 14:12:48');

-- --------------------------------------------------------

--
-- Table structure for table `ph7_memberslogsess`
--

CREATE TABLE IF NOT EXISTS `ph7_memberslogsess` (
  `profileId` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(40) DEFAULT NULL,
  `password` varchar(120) DEFAULT NULL,
  `email` varchar(120) DEFAULT NULL,
  `firstName` varchar(50) DEFAULT NULL,
  `lastName` varchar(50) DEFAULT NULL,
  `sessionHash` varchar(40) NOT NULL,
  `idHash` char(32) NOT NULL,
  `lastActivity` int(10) unsigned NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `ip` varchar(20) NOT NULL DEFAULT '127.0.0.1',
  `userAgent` varchar(100) NOT NULL,
  `guest` smallint(4) unsigned NOT NULL DEFAULT '1',
  `dateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`profileId`),
  KEY `sessionHash` (`sessionHash`),
  KEY `lastActivity` (`lastActivity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ph7_membersnotifications`
--

CREATE TABLE IF NOT EXISTS `ph7_membersnotifications` (
  `profileId` int(10) unsigned NOT NULL,
  `enableNewsletters` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `newMsg` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `friendRequest` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`profileId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ph7_membersnotifications`
--

INSERT INTO `ph7_membersnotifications` (`profileId`, `enableNewsletters`, `newMsg`, `friendRequest`) VALUES
(1, 0, 0, 0),
(2, 0, 0, 0),
(3, 0, 0, 0),
(4, 0, 0, 0),
(5, 0, 0, 0),
(6, 0, 0, 0),
(7, 0, 0, 0),
(8, 0, 0, 0),
(9, 0, 0, 0),
(10, 0, 0, 0),
(11, 0, 0, 0),
(12, 0, 0, 0),
(13, 0, 0, 0),
(14, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ph7_membersprivacy`
--

CREATE TABLE IF NOT EXISTS `ph7_membersprivacy` (
  `profileId` int(10) unsigned NOT NULL,
  `privacyProfile` enum('all','only_members','only_me') NOT NULL DEFAULT 'all',
  `searchProfile` enum('yes','no') NOT NULL DEFAULT 'yes',
  `userSaveViews` enum('yes','no') NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`profileId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ph7_membersprivacy`
--

INSERT INTO `ph7_membersprivacy` (`profileId`, `privacyProfile`, `searchProfile`, `userSaveViews`) VALUES
(1, 'all', 'yes', 'yes'),
(2, 'all', 'yes', 'yes'),
(3, 'all', 'yes', 'yes'),
(4, 'all', 'yes', 'yes'),
(5, 'all', 'yes', 'yes'),
(6, 'all', 'yes', 'yes'),
(7, 'all', 'yes', 'yes'),
(8, 'all', 'yes', 'yes'),
(9, 'all', 'yes', 'yes'),
(10, 'all', 'yes', 'yes'),
(11, 'all', 'yes', 'yes'),
(12, 'all', 'yes', 'yes'),
(13, 'all', 'yes', 'yes'),
(14, 'all', 'yes', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `ph7_memberswall`
--

CREATE TABLE IF NOT EXISTS `ph7_memberswall` (
  `wallId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `profileId` int(10) unsigned NOT NULL DEFAULT '0',
  `post` text CHARACTER SET armscii8,
  `createdDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updatedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`wallId`),
  KEY `profileId` (`profileId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ph7_memberswhoviews`
--

CREATE TABLE IF NOT EXISTS `ph7_memberswhoviews` (
  `profileId` int(10) unsigned NOT NULL,
  `visitorId` int(10) unsigned NOT NULL,
  `lastVisit` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `profileId` (`profileId`),
  KEY `visitorId` (`visitorId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ph7_memberswhoviews`
--

INSERT INTO `ph7_memberswhoviews` (`profileId`, `visitorId`, `lastVisit`) VALUES
(9, 14, '2015-05-05 06:02:26'),
(8, 14, '2015-05-05 06:10:15');

-- --------------------------------------------------------

--
-- Table structure for table `ph7_messages`
--

CREATE TABLE IF NOT EXISTS `ph7_messages` (
  `messageId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sender` int(10) unsigned NOT NULL DEFAULT '0',
  `recipient` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(30) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `sendDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `trash` set('sender','recipient') NOT NULL DEFAULT '',
  `toDelete` set('sender','recipient') NOT NULL DEFAULT '',
  PRIMARY KEY (`messageId`),
  KEY `recipient` (`recipient`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ph7_messenger`
--

CREATE TABLE IF NOT EXISTS `ph7_messenger` (
  `messengerId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fromUser` varchar(40) NOT NULL DEFAULT '',
  `toUser` varchar(40) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `sent` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `recd` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`messengerId`),
  KEY `fromUser` (`fromUser`),
  KEY `toUser` (`toUser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ph7_metamain`
--

CREATE TABLE IF NOT EXISTS `ph7_metamain` (
  `langId` varchar(5) NOT NULL DEFAULT '',
  `pageTitle` varchar(100) NOT NULL,
  `metaDescription` varchar(255) NOT NULL,
  `metaKeywords` varchar(255) NOT NULL,
  `slogan` varchar(200) NOT NULL,
  `promoText` text,
  `metaRobots` varchar(50) NOT NULL DEFAULT '',
  `metaAuthor` varchar(50) NOT NULL DEFAULT '',
  `metaCopyright` varchar(50) NOT NULL DEFAULT '',
  `metaRating` varchar(50) NOT NULL DEFAULT '',
  `metaDistribution` varchar(50) NOT NULL DEFAULT '',
  `metaCategory` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`langId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ph7_metamain`
--

INSERT INTO `ph7_metamain` (`langId`, `pageTitle`, `metaDescription`, `metaKeywords`, `slogan`, `promoText`, `metaRobots`, `metaAuthor`, `metaCopyright`, `metaRating`, `metaDistribution`, `metaCategory`) VALUES
('en_US', 'Home', 'The Dating software for creating online dating site or online community, social network,', 'script, CMS, PHP, dating script, dating software, social networking software, social networking script, social network script, free, open source, match clone, friend finder clone, adult friend finder clone', 'Free Online Dating Community Site with Chat Rooms', 'You''re on the best place for meeting new people nearby! Chat, Flirt, Socialize and have Fun!<br />Create any Dating Sites like that with the <a href="http://ph7cms.com">PHP Dating Script</a>. It is Professional, Free, Open Source, ...', 'index, follow, all', 'Pierre-Henry Soria', 'Copyright Pierre-Henry Soria. All Rights Reserved.', 'general', 'global', 'dating'),
('fr_FR', 'Accueil', 'Le CMS pour la création de site de rencontre en ligne', 'script, CMS, clone rencontre, PHP, script rencontre, logiciel rencontre site, reseau social, cms communautaire', 'Site de Rencontre Communautaire avec Chat & Messagerie', 'Ce <a href="http://ph7cms.com">logiciel de rencontre</a> est le premier CMS spécialisé dans la création de sites de rencontre en ligne !', 'index, follow, all', 'Pierre-Henry Soria', 'Copyright Pierre-Henry Soria. Tous droits réservés', 'general', 'global', 'rencontre');

-- --------------------------------------------------------

--
-- Table structure for table `ph7_modules`
--

CREATE TABLE IF NOT EXISTS `ph7_modules` (
  `moduleId` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `vendorName` varchar(40) NOT NULL,
  `moduleName` varchar(40) NOT NULL,
  `version` varchar(6) NOT NULL,
  `uri` varchar(40) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `active` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ph7_modules`
--

INSERT INTO `ph7_modules` (`moduleId`, `vendorName`, `moduleName`, `version`, `uri`, `path`, `active`) VALUES
(1, 'arifTecnologies', 'SQL System Schema', '1.2.0', NULL, NULL, '0');

-- --------------------------------------------------------

--
-- Table structure for table `ph7_notes`
--

CREATE TABLE IF NOT EXISTS `ph7_notes` (
  `noteId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `profileId` int(10) unsigned NOT NULL,
  `postId` varchar(60) NOT NULL,
  `langId` char(2) NOT NULL DEFAULT '',
  `title` varchar(100) DEFAULT NULL,
  `content` longtext NOT NULL,
  `pageTitle` varchar(100) NOT NULL,
  `metaDescription` varchar(255) NOT NULL,
  `metaKeywords` varchar(255) NOT NULL,
  `slogan` varchar(200) NOT NULL,
  `metaRobots` varchar(50) NOT NULL,
  `metaAuthor` varchar(50) NOT NULL,
  `metaCopyright` varchar(50) NOT NULL,
  `tags` varchar(200) DEFAULT NULL,
  `thumb` char(24) DEFAULT NULL,
  `votes` int(9) unsigned DEFAULT '0',
  `score` float unsigned DEFAULT '0',
  `views` int(10) unsigned DEFAULT '0',
  `enableComment` enum('1','0') DEFAULT '1',
  `createdDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updatedDate` datetime DEFAULT NULL,
  `approved` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`noteId`),
  UNIQUE KEY `postId` (`postId`),
  KEY `profileId` (`profileId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ph7_notescategories`
--

CREATE TABLE IF NOT EXISTS `ph7_notescategories` (
  `categoryId` smallint(4) unsigned NOT NULL,
  `noteId` int(10) unsigned NOT NULL,
  `profileId` int(10) unsigned NOT NULL,
  KEY `categoryId` (`categoryId`),
  KEY `noteId` (`noteId`),
  KEY `profileId` (`profileId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ph7_notesdatacategories`
--

CREATE TABLE IF NOT EXISTS `ph7_notesdatacategories` (
  `categoryId` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`categoryId`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `ph7_notesdatacategories`
--

INSERT INTO `ph7_notesdatacategories` (`categoryId`, `name`) VALUES
(1, 'Business'),
(2, 'Companies'),
(3, 'Dating'),
(4, 'Education'),
(5, 'Family'),
(6, 'Food'),
(7, 'Game'),
(8, 'Health'),
(9, 'Hobby'),
(10, 'Movie'),
(11, 'Music'),
(12, 'News'),
(13, 'Pets'),
(14, 'Recreation'),
(15, 'Shopping'),
(16, 'Society'),
(17, 'Sports'),
(18, 'Study'),
(19, 'Technology'),
(20, 'Travel');

-- --------------------------------------------------------

--
-- Table structure for table `ph7_pictures`
--

CREATE TABLE IF NOT EXISTS `ph7_pictures` (
  `pictureId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `profileId` int(10) unsigned NOT NULL,
  `albumId` int(10) unsigned NOT NULL,
  `title` varchar(80) NOT NULL,
  `file` varchar(40) NOT NULL,
  `approved` enum('1','0') DEFAULT '1',
  `votes` int(9) unsigned DEFAULT '0',
  `score` float unsigned DEFAULT '0',
  `views` int(10) unsigned DEFAULT '0',
  `description` varchar(255) DEFAULT NULL,
  `createdDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updatedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`pictureId`),
  KEY `albumId` (`albumId`),
  KEY `profileId` (`profileId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `ph7_pictures`
--

INSERT INTO `ph7_pictures` (`pictureId`, `profileId`, `albumId`, `title`, `file`, `approved`, `votes`, `score`, `views`, `description`, `createdDate`, `updatedDate`) VALUES
(1, 14, 1, '1373345 previewImg 1', '5998db372320c0b524db-original.jpg', '1', 0, 0, 0, '', '2015-05-05 05:58:03', NULL),
(2, 14, 1, '1373345 previewImg 2', '992410577e6ecc117da7-original.jpg', '1', 0, 0, 0, '', '2015-05-05 05:58:04', NULL),
(3, 14, 1, '1920376 524112677706691 966768632 n', 'fd67d9c8c9883877fc80-original.jpg', '1', 0, 0, 0, '', '2015-05-05 05:58:06', NULL),
(4, 14, 1, '10606272 394553587367260 7456114785485144686 n', 'ac95da22fb275f1e71f4-original.jpg', '1', 0, 0, 0, '', '2015-05-05 05:58:07', NULL),
(5, 14, 1, '10985876 10153069013831638 4115212415381851571 n', '70f5d675a31dfac5eaa2-original.jpg', '1', 0, 0, 0, '', '2015-05-05 05:58:08', NULL),
(6, 14, 1, '11055393 641545165945939 6842301771553009719 n', 'f686aca8c958a89b31c7-original.jpg', '1', 0, 0, 0, '', '2015-05-05 05:58:09', NULL),
(7, 14, 1, 'Gavel Scales of Justice2 630x286', '9f61fa26fe780ac94c0f-original.jpg', '1', 0, 0, 0, '', '2015-05-05 05:58:11', NULL),
(8, 14, 1, 'Index', '8f83cd20962538b48500-original.jpg', '1', 0, 0, 0, '', '2015-05-05 05:58:12', NULL),
(9, 14, 1, 'Jobs hero 1 1440 900', 'e6f3e044d6f8c1357bac-original.jpg', '1', 0, 0, 0, '', '2015-05-05 05:58:13', NULL),
(10, 14, 1, 'Ko', 'a4463d61546f14fc8c6a-original.jpg', '1', 0, 0, 0, '', '2015-05-05 05:58:15', NULL),
(11, 14, 1, 'L;l.l.', '91fbf21ca398e6492382-original.jpg', '1', 0, 0, 0, '', '2015-05-05 05:58:16', NULL),
(12, 14, 1, 'Me', 'f733f4a26b39d2eb5e82-original.jpg', '1', 0, 0, 0, '', '2015-05-05 05:58:17', NULL),
(13, 14, 1, '  o o o ', '4feedaaef7df6b614379-original.jpg', '1', 0, 0, 0, '', '2015-05-05 05:58:19', NULL),
(14, 14, 1, 'Warehouse wireless', 'fd62e6df2344475110c1-original.jpg', '1', 0, 0, 0, '', '2015-05-05 05:58:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ph7_report`
--

CREATE TABLE IF NOT EXISTS `ph7_report` (
  `reportId` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `reporterId` int(10) unsigned DEFAULT NULL,
  `spammerId` int(10) unsigned DEFAULT NULL,
  `dateTime` datetime DEFAULT NULL,
  `contentType` enum('user','avatar','mail','comment','photo','video','forum','note') NOT NULL DEFAULT 'user',
  `description` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`reportId`),
  KEY `reporterId` (`reporterId`),
  KEY `spammerId` (`spammerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ph7_settings`
--

CREATE TABLE IF NOT EXISTS `ph7_settings` (
  `name` varchar(64) NOT NULL DEFAULT '',
  `value` varchar(150) NOT NULL,
  `desc` varchar(100) NOT NULL DEFAULT '',
  `group` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ph7_settings`
--

INSERT INTO `ph7_settings` (`name`, `value`, `desc`, `group`) VALUES
('adminEmail', 'fred.oluoch@ariftechnologies.com', '', 'email'),
('affActivationType', '1', '1 = no activation, 2 = email activation, 3 = Manual activation by the administrator', 'registration'),
('autoplayVideo', '1', '1 = Autoplay is enabled, 0 = Autoplay is disabled', 'video'),
('avatarManualApproval', '0', '0 for disable or 1 for enable ', 'moderation'),
('banWordReplace', '[removed]', '', 'security'),
('chatApi', 'http://addons.hizup.com/chat/?name=%site_name%&url=%site_url%&skin=4', 'Chat Api URL', 'api'),
('chatrouletteApi', 'http://addons.hizup.com/chatroulette/?name=%site_name%&url=%site_url%&skin=1', 'Chatroulette Api URL', 'api'),
('cleanComment', '0', 'Delete comments older than X days. 0 = Disable', 'pruning'),
('cleanMsg', '0', 'Delete messages older than X days. 0 = Disable', 'pruning'),
('cookieConsentBar', '0', 'Enable the cookie consent bar to prevent your users that your site uses cookies. 0 = Disable | 1 = E', 'general'),
('cronSecurityHash', 'change_this_secret_cron_word_by_yours', 'The secret word for the URL of the cron', 'automation'),
('DDoS', '0', '0 for disabled or 1 for enabled', 'security'),
('defaultLanguage', 'en_US', '', 'language'),
('defaultMembershipGroupId', '2', 'Default Membership Group', 'registration'),
('defaultTemplate', 'base', '', 'design'),
('defaultVideo', 'http://www.youtube.com/watch?v=pHWeb', 'Video by default if no video found', 'video'),
('disclaimer', '0', 'Enable a disclaimer to enter to the site. This is useful for sites with adult content. 0 = Disable |', 'general'),
('emailName', 'pH7CMS', '', 'email'),
('feedbackEmail', 'fred.oluoch@ariftechnologies.com', '', 'email'),
('fullAjaxSite', '0', 'enable = 1 or disable = 0', 'general'),
('ipApi', 'http://whatismyipaddress.com/ip/', 'IP Api URL', 'api'),
('ipLogin', '', '', 'security'),
('isAdminLoginAttempt', '1', 'Enable blocking connection attempts abusive. Enable = 1 or disable = 0', 'security'),
('isAffiliateLoginAttempt', '1', 'Enable blocking connection attempts abusive. Enable = 1 or disable = 0', 'security'),
('isCaptchaAffiliateSignup', '0', '0 for disable or 1 for enable', 'spam'),
('isCaptchaComment', '0', '0 for disable or 1 for enable', 'spam'),
('isCaptchaForum', '0', '0 for disable or 1 for enable', 'spam'),
('isCaptchaMail', '0', '0 for disable or 1 for enable', 'spam'),
('isCaptchaNote', '0', '0 for disable or 1 for enable', 'spam'),
('isCaptchaUserSignup', '0', '0 for disable or 1 for enable', 'spam'),
('isSoftwareNewsFeed', '1', 'Enable the news feed. 0 = Disable | 1 = Enable', 'general'),
('isUserLoginAttempt', '1', 'Enable blocking connection attempts abusive. Enable = 1 or disable = 0', 'security'),
('loginAdminAttemptTime', '120', 'Time before a new connection attempt, in minutes!', 'security'),
('loginAffiliateAttemptTime', '60', 'Time before a new connection attempt, in minutes!', 'security'),
('loginUserAttemptTime', '60', 'Time before a new connection attempt, in minutes!', 'security'),
('mailType', 'mail', '', 'email'),
('mapType', 'roadmap', 'Choose between: ''roadmap'', ''hybrid'', ''terrain'', ''satellite''', 'map'),
('maxAdminLoginAttempts', '10', 'Maximum login attempts before blocking', 'security'),
('maxAffiliateLoginAttempts', '20', 'Maximum login attempts before blocking', 'security'),
('maxAgeRegistration', '99', '', 'registration'),
('maxPasswordLength', '60', '', 'security'),
('maxUserLoginAttempts', '30', 'Maximum login attempts before blocking', 'security'),
('maxUsernameLength', '30', '', 'registration'),
('minAgeRegistration', '18', '', 'registration'),
('minPasswordLength', '6', '', 'security'),
('minUsernameLength', '3', '', 'registration'),
('noteManualApproval', '0', '0 for disable or 1 for enable ', 'moderation'),
('pictureManualApproval', '0', '0 for disable or 1 for enable ', 'moderation'),
('profileBackgroundManualApproval', '0', '0 for disable or 1 for enable ', 'moderation'),
('returnEmail', 'info@ariftechnologies.com', 'Generally noreply@yoursite.com', 'email'),
('securityTokenLifetime', '720', 'Time in seconds. Default 720 seconds (12 mins)', 'security'),
('sendReportMail', '1', 'Send the Report by eMail (1 = enable, 0 = disable)', 'security'),
('siteName', 'kenyadate', '', 'general'),
('siteStatus', 'enable', 'enable or maintenance', 'general'),
('sizeWatermarkTextImage', '2', 'Between 0 to 5', 'image'),
('smtpHostName', 'mail.example.com', '', 'email'),
('smtpPassword', '123456', '', 'email'),
('smtpPort', '25', '', 'email'),
('splashPage', '1', 'Use Splash Page | enable = 1 or disable = 0', 'general'),
('timeDelayAffRegistration', '2880', '2880 minutes = 2 days (in minutes!)', 'spam'),
('timeDelaySendComment', '5', 'Waiting time to send a new comment, in minutes!', 'spam'),
('timeDelaySendForumMsg', '10', 'Waiting time to send a reply message in the same topic, in minutes!', 'spam'),
('timeDelaySendForumTopic', '5', 'Waiting time to send a new topic in the forum, in minutes!', 'spam'),
('timeDelaySendMail', '3', 'Waiting time to send a new message, in minutes!', 'spam'),
('timeDelaySendNote', '20', 'Waiting time to add a new note post, in minutes!', 'spam'),
('timeDelayUserRegistration', '1440', '1440 minutes = 24 hours (in minutes!)', 'spam'),
('userActivationType', '1', '1 = no activation, 2 = email activation, 3 = Manual activation by the administrator', 'registration'),
('userTimeout', '1', 'User inactivity timeout. The number of minutes that a member becomes inactive (offline).', 'automation'),
('videoManualApproval', '0', '0 for disable or 1 for enable ', 'moderation'),
('watermarkTextImage', 'pH7CMS.com', 'Watermark text', 'image'),
('webcamPictureManualApproval', '0', '0 for disable or 1 for enable', 'moderation');

-- --------------------------------------------------------

--
-- Table structure for table `ph7_staticfiles`
--

CREATE TABLE IF NOT EXISTS `ph7_staticfiles` (
  `staticId` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `file` varchar(255) NOT NULL,
  `fileType` enum('css','js') NOT NULL,
  `active` enum('1','0') DEFAULT '1',
  PRIMARY KEY (`staticId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ph7_subscribers`
--

CREATE TABLE IF NOT EXISTS `ph7_subscribers` (
  `profileId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `email` varchar(120) NOT NULL,
  `joinDate` datetime DEFAULT NULL,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `ip` varchar(20) NOT NULL DEFAULT '127.0.0.1',
  `hashValidation` varchar(40) DEFAULT NULL,
  `affiliatedId` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`profileId`),
  UNIQUE KEY `email` (`email`),
  KEY `profileId` (`profileId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ph7_topmenus`
--

CREATE TABLE IF NOT EXISTS `ph7_topmenus` (
  `menuId` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `vendorName` varchar(40) NOT NULL,
  `moduleName` varchar(40) NOT NULL,
  `controllerName` varchar(40) NOT NULL,
  `actionName` varchar(40) NOT NULL,
  `vars` varchar(60) DEFAULT NULL,
  `parentMenu` smallint(4) unsigned DEFAULT NULL,
  `grandParentMenu` smallint(4) unsigned DEFAULT NULL,
  `onlyForUsers` enum('0','1') NOT NULL DEFAULT '0',
  `active` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`menuId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ph7_videos`
--

CREATE TABLE IF NOT EXISTS `ph7_videos` (
  `videoId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `profileId` int(10) unsigned NOT NULL,
  `albumId` int(10) unsigned NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `approved` enum('1','0') NOT NULL DEFAULT '1',
  `votes` int(9) unsigned DEFAULT '0',
  `score` float unsigned DEFAULT '0',
  `views` int(10) unsigned DEFAULT '0',
  `description` varchar(255) DEFAULT NULL,
  `title` varchar(80) DEFAULT NULL,
  `createdDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updatedDate` datetime DEFAULT NULL,
  `duration` int(9) NOT NULL,
  PRIMARY KEY (`videoId`),
  KEY `albumId` (`albumId`),
  KEY `profileId` (`profileId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ph7_adminslogsess`
--
ALTER TABLE `ph7_adminslogsess`
  ADD CONSTRAINT `ph7_adminslogsess_ibfk_1` FOREIGN KEY (`profileId`) REFERENCES `ph7_admins` (`profileId`);

--
-- Constraints for table `ph7_affiliatesinfo`
--
ALTER TABLE `ph7_affiliatesinfo`
  ADD CONSTRAINT `ph7_affiliatesinfo_ibfk_1` FOREIGN KEY (`profileId`) REFERENCES `ph7_affiliates` (`profileId`);

--
-- Constraints for table `ph7_affiliateslogsess`
--
ALTER TABLE `ph7_affiliateslogsess`
  ADD CONSTRAINT `ph7_affiliateslogsess_ibfk_1` FOREIGN KEY (`profileId`) REFERENCES `ph7_affiliates` (`profileId`);

--
-- Constraints for table `ph7_albumspictures`
--
ALTER TABLE `ph7_albumspictures`
  ADD CONSTRAINT `ph7_albumspictures_ibfk_1` FOREIGN KEY (`profileId`) REFERENCES `ph7_members` (`profileId`);

--
-- Constraints for table `ph7_albumsvideos`
--
ALTER TABLE `ph7_albumsvideos`
  ADD CONSTRAINT `ph7_albumsvideos_ibfk_1` FOREIGN KEY (`profileId`) REFERENCES `ph7_members` (`profileId`);

--
-- Constraints for table `ph7_blogscategories`
--
ALTER TABLE `ph7_blogscategories`
  ADD CONSTRAINT `ph7_blogscategories_ibfk_1` FOREIGN KEY (`blogId`) REFERENCES `ph7_blogs` (`blogId`);

--
-- Constraints for table `ph7_commentsblog`
--
ALTER TABLE `ph7_commentsblog`
  ADD CONSTRAINT `ph7_commentsblog_ibfk_1` FOREIGN KEY (`recipient`) REFERENCES `ph7_blogs` (`blogId`);

--
-- Constraints for table `ph7_commentsgame`
--
ALTER TABLE `ph7_commentsgame`
  ADD CONSTRAINT `ph7_commentsgame_ibfk_1` FOREIGN KEY (`recipient`) REFERENCES `ph7_games` (`gameId`);

--
-- Constraints for table `ph7_commentsnote`
--
ALTER TABLE `ph7_commentsnote`
  ADD CONSTRAINT `ph7_commentsnote_ibfk_1` FOREIGN KEY (`recipient`) REFERENCES `ph7_notes` (`noteId`);

--
-- Constraints for table `ph7_commentspicture`
--
ALTER TABLE `ph7_commentspicture`
  ADD CONSTRAINT `ph7_commentspicture_ibfk_1` FOREIGN KEY (`recipient`) REFERENCES `ph7_pictures` (`pictureId`);

--
-- Constraints for table `ph7_commentsprofile`
--
ALTER TABLE `ph7_commentsprofile`
  ADD CONSTRAINT `ph7_commentsprofile_ibfk_1` FOREIGN KEY (`recipient`) REFERENCES `ph7_members` (`profileId`);

--
-- Constraints for table `ph7_commentsvideo`
--
ALTER TABLE `ph7_commentsvideo`
  ADD CONSTRAINT `ph7_commentsvideo_ibfk_1` FOREIGN KEY (`recipient`) REFERENCES `ph7_videos` (`videoId`);

--
-- Constraints for table `ph7_forums`
--
ALTER TABLE `ph7_forums`
  ADD CONSTRAINT `ph7_forums_ibfk_1` FOREIGN KEY (`categoryId`) REFERENCES `ph7_forumscategories` (`categoryId`);

--
-- Constraints for table `ph7_forumsmessages`
--
ALTER TABLE `ph7_forumsmessages`
  ADD CONSTRAINT `ph7_forumsmessages_ibfk_1` FOREIGN KEY (`topicId`) REFERENCES `ph7_forumstopics` (`topicId`);

--
-- Constraints for table `ph7_forumstopics`
--
ALTER TABLE `ph7_forumstopics`
  ADD CONSTRAINT `ph7_forumstopics_ibfk_1` FOREIGN KEY (`forumId`) REFERENCES `ph7_forums` (`forumId`);

--
-- Constraints for table `ph7_languagesphrases`
--
ALTER TABLE `ph7_languagesphrases`
  ADD CONSTRAINT `ph7_languagesphrases_ibfk_1` FOREIGN KEY (`langId`) REFERENCES `ph7_languagesinfo` (`langId`);

--
-- Constraints for table `ph7_members`
--
ALTER TABLE `ph7_members`
  ADD CONSTRAINT `ph7_members_ibfk_1` FOREIGN KEY (`groupId`) REFERENCES `ph7_memberships` (`groupId`);

--
-- Constraints for table `ph7_membersbackground`
--
ALTER TABLE `ph7_membersbackground`
  ADD CONSTRAINT `ph7_membersbackground_ibfk_1` FOREIGN KEY (`profileId`) REFERENCES `ph7_members` (`profileId`);

--
-- Constraints for table `ph7_membersfriends`
--
ALTER TABLE `ph7_membersfriends`
  ADD CONSTRAINT `ph7_membersfriends_ibfk_1` FOREIGN KEY (`profileId`) REFERENCES `ph7_members` (`profileId`),
  ADD CONSTRAINT `ph7_membersfriends_ibfk_2` FOREIGN KEY (`friendId`) REFERENCES `ph7_members` (`profileId`);

--
-- Constraints for table `ph7_membersinfo`
--
ALTER TABLE `ph7_membersinfo`
  ADD CONSTRAINT `ph7_membersinfo_ibfk_1` FOREIGN KEY (`profileId`) REFERENCES `ph7_members` (`profileId`);

--
-- Constraints for table `ph7_memberslogsess`
--
ALTER TABLE `ph7_memberslogsess`
  ADD CONSTRAINT `ph7_memberslogsess_ibfk_1` FOREIGN KEY (`profileId`) REFERENCES `ph7_members` (`profileId`);

--
-- Constraints for table `ph7_membersnotifications`
--
ALTER TABLE `ph7_membersnotifications`
  ADD CONSTRAINT `ph7_membersnotifications_ibfk_1` FOREIGN KEY (`profileId`) REFERENCES `ph7_members` (`profileId`);

--
-- Constraints for table `ph7_membersprivacy`
--
ALTER TABLE `ph7_membersprivacy`
  ADD CONSTRAINT `ph7_membersprivacy_ibfk_1` FOREIGN KEY (`profileId`) REFERENCES `ph7_members` (`profileId`);

--
-- Constraints for table `ph7_memberswall`
--
ALTER TABLE `ph7_memberswall`
  ADD CONSTRAINT `ph7_memberswall_ibfk_1` FOREIGN KEY (`profileId`) REFERENCES `ph7_members` (`profileId`);

--
-- Constraints for table `ph7_memberswhoviews`
--
ALTER TABLE `ph7_memberswhoviews`
  ADD CONSTRAINT `ph7_memberswhoviews_ibfk_1` FOREIGN KEY (`profileId`) REFERENCES `ph7_members` (`profileId`),
  ADD CONSTRAINT `ph7_memberswhoviews_ibfk_2` FOREIGN KEY (`visitorId`) REFERENCES `ph7_members` (`profileId`);

--
-- Constraints for table `ph7_messages`
--
ALTER TABLE `ph7_messages`
  ADD CONSTRAINT `ph7_messages_ibfk_1` FOREIGN KEY (`recipient`) REFERENCES `ph7_members` (`profileId`);

--
-- Constraints for table `ph7_messenger`
--
ALTER TABLE `ph7_messenger`
  ADD CONSTRAINT `ph7_messenger_ibfk_1` FOREIGN KEY (`fromUser`) REFERENCES `ph7_members` (`username`),
  ADD CONSTRAINT `ph7_messenger_ibfk_2` FOREIGN KEY (`toUser`) REFERENCES `ph7_members` (`username`);

--
-- Constraints for table `ph7_notes`
--
ALTER TABLE `ph7_notes`
  ADD CONSTRAINT `ph7_notes_ibfk_1` FOREIGN KEY (`profileId`) REFERENCES `ph7_members` (`profileId`);

--
-- Constraints for table `ph7_notescategories`
--
ALTER TABLE `ph7_notescategories`
  ADD CONSTRAINT `ph7_notescategories_ibfk_1` FOREIGN KEY (`noteId`) REFERENCES `ph7_notes` (`noteId`),
  ADD CONSTRAINT `ph7_notescategories_ibfk_2` FOREIGN KEY (`profileId`) REFERENCES `ph7_members` (`profileId`);

--
-- Constraints for table `ph7_pictures`
--
ALTER TABLE `ph7_pictures`
  ADD CONSTRAINT `ph7_pictures_ibfk_1` FOREIGN KEY (`albumId`) REFERENCES `ph7_albumspictures` (`albumId`),
  ADD CONSTRAINT `ph7_pictures_ibfk_2` FOREIGN KEY (`profileId`) REFERENCES `ph7_members` (`profileId`);

--
-- Constraints for table `ph7_report`
--
ALTER TABLE `ph7_report`
  ADD CONSTRAINT `ph7_report_ibfk_1` FOREIGN KEY (`reporterId`) REFERENCES `ph7_members` (`profileId`),
  ADD CONSTRAINT `ph7_report_ibfk_2` FOREIGN KEY (`spammerId`) REFERENCES `ph7_members` (`profileId`);

--
-- Constraints for table `ph7_videos`
--
ALTER TABLE `ph7_videos`
  ADD CONSTRAINT `ph7_videos_ibfk_1` FOREIGN KEY (`albumId`) REFERENCES `ph7_albumsvideos` (`albumId`),
  ADD CONSTRAINT `ph7_videos_ibfk_2` FOREIGN KEY (`profileId`) REFERENCES `ph7_members` (`profileId`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
