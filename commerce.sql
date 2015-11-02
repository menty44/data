-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2015 at 12:57 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `commerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `attribute`
--

CREATE TABLE IF NOT EXISTS `attribute` (
  `attribute_id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`attribute_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=90 ;

-- --------------------------------------------------------

--
-- Table structure for table `attribute_set`
--

CREATE TABLE IF NOT EXISTS `attribute_set` (
  `set_id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_set_name` varchar(32) DEFAULT NULL,
  `attribute_set_description` text,
  PRIMARY KEY (`set_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

-- --------------------------------------------------------

--
-- Table structure for table `attribute_set_value`
--

CREATE TABLE IF NOT EXISTS `attribute_set_value` (
  `set_id` int(11) DEFAULT '0',
  `attribute_id` int(11) DEFAULT '0',
  `attribute_name` varchar(32) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

-- --------------------------------------------------------

--
-- Table structure for table `attribute_value`
--

CREATE TABLE IF NOT EXISTS `attribute_value` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_id` int(11) DEFAULT NULL,
  `attribute_value` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`value_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_admin`
--

CREATE TABLE IF NOT EXISTS `auth_user_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(32) NOT NULL,
  `role` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `auth_user_admin`
--

INSERT INTO `auth_user_admin` (`id`, `username`, `password`, `role`) VALUES
(1, 'admin', 'aa78681e31df1b5dc661c9b7c7736f99', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_md5`
--

CREATE TABLE IF NOT EXISTS `auth_user_md5` (
  `user_id` varchar(32) NOT NULL DEFAULT '',
  `username` varchar(32) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `perms` varchar(255) DEFAULT NULL,
  `reset_key` varchar(32) DEFAULT NULL,
  `reset_password` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `k_username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user_md5`
--

INSERT INTO `auth_user_md5` (`user_id`, `username`, `password`, `perms`, `reset_key`, `reset_password`) VALUES
('7322f75cc7ba16db1799fd8d25dbcde4', 'admin', '098f6bcd4621d373cade4e832627b4f6', 'admin', NULL, NULL),
('02acf876459c748dbb71b3b40714c0d7', 'test', '098f6bcd4621d373cade4e832627b4f6', 'shopper', NULL, NULL),
('c88ce1c0ad365513d6fe085a8aacaebc', 'demo', 'fe01ce2a7fbac8fafaed7c982a04e229', 'demo', '0d446c28015d2ffbb32c720f75d6e55b', '87569dd1ecdff4ffb958d121a9240f4a'),
('1438a90d1888a2814b2bdedc43c03e99', 'storeadmin', '098f6bcd4621d373cade4e832627b4f6', 'storeadmin', NULL, NULL),
('6845b3a8d95fc4799e9e962d1f9976bd', 'gold', '098f6bcd4621d373cade4e832627b4f6', 'shopper', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_vendor`
--

CREATE TABLE IF NOT EXISTS `auth_user_vendor` (
  `user_id` varchar(32) DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user_vendor`
--

INSERT INTO `auth_user_vendor` (`user_id`, `vendor_id`) VALUES
('7322f75cc7ba16db1799fd8d25dbcde4', 1),
('c88ce1c0ad365513d6fe085a8aacaebc', 1),
('1438a90d1888a2814b2bdedc43c03e99', 1);

-- --------------------------------------------------------

--
-- Table structure for table `available_tags`
--

CREATE TABLE IF NOT EXISTS `available_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `available_tags`
--

INSERT INTO `available_tags` (`id`, `tag`) VALUES
(18, 'Boss'),
(19, 'CK'),
(20, 'Casio'),
(21, 'Watches'),
(22, 'Fossil'),
(23, 'Citizen'),
(24, 'Seiko'),
(25, 'Canon'),
(26, 'Camera'),
(27, 'NikonDSLR'),
(28, 'Laptops');

-- --------------------------------------------------------

--
-- Table structure for table `block_contents`
--

CREATE TABLE IF NOT EXISTS `block_contents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `block_id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=106 ;

--
-- Dumping data for table `block_contents`
--

INSERT INTO `block_contents` (`id`, `block_id`, `page_id`) VALUES
(3, 2, 2),
(4, 2, 5),
(5, 2, 4),
(97, 1, 24),
(96, 1, 3),
(95, 1, 1),
(102, 3, 23),
(101, 3, 24),
(100, 3, 3),
(94, 4, 4),
(99, 3, 1),
(93, 4, 26),
(92, 4, 5),
(91, 4, 2),
(98, 1, 23),
(103, 5, 1),
(104, 5, 3),
(105, 5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE IF NOT EXISTS `brands` (
  `brand_id` int(11) NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(70) NOT NULL,
  `brand_intro` text NOT NULL,
  `brand_logo` text NOT NULL,
  PRIMARY KEY (`brand_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=47 ;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_name`, `brand_intro`, `brand_logo`) VALUES
(24, 'D&J', '', 'D&J_D&G.gif'),
(25, 'Chanel', '', 'Chanel_chanel-logo.png'),
(26, 'Burberry', '', 'Burberry_burberry-logo.jpg'),
(27, 'Armani', '', 'Armani_Armani.gif'),
(28, 'DKNY', '', 'DKNY_DKNY Logo.jpg'),
(29, 'Versace', '', 'Versace_versace_logo(1).jpg'),
(30, 'Calvin Klein', '', 'Calvin Klein_Calvin Klein Logo.jpg'),
(31, 'Hugo Boss', '', 'Hugo Boss_hugo-boss-logo.jpg'),
(33, 'Tag Heuer', 'Best watches', 'Tag Heuer_tag-heuer.jpg'),
(34, 'Titan', '', 'Titan_tit_logo.gif'),
(35, 'Seiko', '', 'Seiko_seiko.jpg'),
(36, 'Citizen', '', 'Citizen_citizen.jpg'),
(37, 'Casio', '', 'Casio_casio.jpg'),
(38, 'Fossil', '', 'Fossil_fossil_1.gif'),
(39, 'Sony', '', 'Sony_sony.jpg'),
(40, 'Nikon', '', 'Nikon_nikon.jpg'),
(41, 'Panasonic', '', 'Panasonic_panasonic.jpg'),
(42, 'Canon', '', 'Canon_canon.jpg'),
(43, 'Apple', '', 'Apple_Apple.jpg'),
(44, 'Acer', '', 'Acer_Acer.jpg'),
(45, 'Asus', '', 'Asus_Asus.jpg'),
(46, 'Toshiba', '', 'Toshiba_Toshiba.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `vendor_id` int(11) NOT NULL DEFAULT '0',
  `category_name` text,
  `category_description` text,
  `parent_cat_id` int(11) NOT NULL,
  `category_thumb_image` text,
  `category_full_image` text,
  `category_publish` char(1) DEFAULT NULL,
  `cdate` int(11) DEFAULT NULL,
  `mdate` int(11) DEFAULT NULL,
  `category_flypage` varchar(255) DEFAULT NULL,
  `category_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6966 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `vendor_id`, `category_name`, `category_description`, `parent_cat_id`, `category_thumb_image`, `category_full_image`, `category_publish`, `cdate`, `mdate`, `category_flypage`, `category_url`) VALUES
(6934, 0, 'Laptops', '', 0, '', '', NULL, NULL, NULL, NULL, NULL),
(6935, 0, 'Mobile Phones', '', 0, '', '', NULL, NULL, NULL, NULL, NULL),
(6936, 0, 'Watches', '', 0, '', 'Watches_b-w.jpg', NULL, NULL, NULL, NULL, NULL),
(6937, 0, 'Digital Cameras', '', 0, '', 'Digital Cameras_Digital SLR Cameras_banner.gif', NULL, NULL, NULL, NULL, NULL),
(6938, 0, 'Fragrance & Perfume', '', 0, '', 'Fragrance & Perfume_b-fer.jpg', NULL, NULL, NULL, NULL, NULL),
(6940, 0, 'Womens Frangance', '', 0, '', '', NULL, NULL, NULL, NULL, NULL),
(6941, 0, 'Mens Frangance', '', 0, '', '', NULL, NULL, NULL, NULL, NULL),
(6942, 0, 'Casio', '', 0, '', '', NULL, NULL, NULL, NULL, NULL),
(6943, 0, 'Seiko', '', 0, '', '', NULL, NULL, NULL, NULL, NULL),
(6944, 0, 'Citizen', '', 0, '', '', NULL, NULL, NULL, NULL, NULL),
(6945, 0, 'Titan', '', 0, '', '', NULL, NULL, NULL, NULL, NULL),
(6946, 0, 'Fossil', '', 0, '', '', NULL, NULL, NULL, NULL, NULL),
(6947, 0, 'Computer & IT', '', 0, '', 'Computer & IT_Digital Cameras_banner_digital_camera.jpg', NULL, NULL, NULL, NULL, NULL),
(6948, 0, 'Accessories', '', 0, '', '', NULL, NULL, NULL, NULL, NULL),
(6949, 0, 'Desktops PCs', '', 0, '', '', NULL, NULL, NULL, NULL, NULL),
(6950, 0, 'Laptops & Notebooks', '', 0, '', '', NULL, NULL, NULL, NULL, NULL),
(6951, 0, 'LCD Monitors', '', 0, '', '', NULL, NULL, NULL, NULL, NULL),
(6965, 0, 'Acer', '', 0, '', '', NULL, NULL, NULL, NULL, NULL),
(6964, 0, 'Apple', '', 0, '', '', NULL, NULL, NULL, NULL, NULL),
(6963, 0, 'Asus', '', 0, '', '', NULL, NULL, NULL, NULL, NULL),
(6962, 0, 'Toshiba', '', 0, '', '', NULL, NULL, NULL, NULL, NULL),
(6956, 0, 'Travel & Geography', '', 0, '', '', NULL, NULL, NULL, NULL, NULL),
(6957, 0, 'Canon', '', 0, '', '', NULL, NULL, NULL, NULL, NULL),
(6958, 0, 'Olympus', '', 0, '', '', NULL, NULL, NULL, NULL, NULL),
(6959, 0, 'Nikon', '', 0, '', '', NULL, NULL, NULL, NULL, NULL),
(6960, 0, 'Panasonic', '', 0, '', '', NULL, NULL, NULL, NULL, NULL),
(6961, 0, 'Sony', '', 0, '', '', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category_xref`
--

CREATE TABLE IF NOT EXISTS `category_xref` (
  `category_parent_id` varchar(32) DEFAULT NULL,
  `category_child_id` varchar(32) DEFAULT NULL,
  `category_list` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category_xref`
--

INSERT INTO `category_xref` (`category_parent_id`, `category_child_id`, `category_list`) VALUES
('0', '541a03b2b0e1b6dbd972e9f5af5ca992', NULL),
('0', '1c914424d2569bea3439fbcca9123a27', NULL),
('0', '6834dda8e3e6e5aa18bafc63a57fd04a', NULL),
('1c914424d2569bea3439fbcca9123a27', 'f85e462baf927f8e53989dd969c0e430', NULL),
('1c914424d2569bea3439fbcca9123a27', '2f34f8bf003a5f27bed2e8dfe0b6f33a', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `content_block`
--

CREATE TABLE IF NOT EXISTS `content_block` (
  `block_id` int(11) NOT NULL AUTO_INCREMENT,
  `block_heading` varchar(60) NOT NULL,
  `block_text` text NOT NULL,
  `reserve_block` char(3) NOT NULL DEFAULT 'no',
  PRIMARY KEY (`block_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `content_block`
--

INSERT INTO `content_block` (`block_id`, `block_heading`, `block_text`, `reserve_block`) VALUES
(1, 'information_pages', 'Please refer these pages to find information about us.', 'yes'),
(2, 'legal_information', 'Please refer these pages for our terms & conditions and policies', 'yes'),
(3, 'top_navigation', 'This is a reserve block to server top navigation bar', 'yes'),
(4, 'footer_navigation', 'These links will appears at the bottom of your online store', 'yes'),
(5, 'Custom Info Box', 'This is a custom info box', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `content_page`
--

CREATE TABLE IF NOT EXISTS `content_page` (
  `page_id` int(11) NOT NULL AUTO_INCREMENT,
  `page_name` varchar(100) NOT NULL,
  `reserve_page` varchar(3) DEFAULT 'no',
  `page_title` text NOT NULL,
  `page_text` text NOT NULL,
  PRIMARY KEY (`page_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `content_page`
--

INSERT INTO `content_page` (`page_id`, `page_name`, `reserve_page`, `page_title`, `page_text`) VALUES
(1, 'about_us', 'yes', 'About Us', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n'),
(2, 'privacy_policy', 'yes', 'Privacy Policy', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(3, 'contact_us', 'yes', 'Contact Us', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(4, 'terms_and_conditions', 'yes', 'Terms of Use', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(5, 'return_policy', 'yes', 'Return Policy', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE IF NOT EXISTS `country` (
  `country_id` int(11) NOT NULL DEFAULT '0',
  `country_name` varchar(64) DEFAULT NULL,
  `country_3_code` char(3) DEFAULT NULL,
  `country_2_code` char(2) DEFAULT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`country_id`, `country_name`, `country_3_code`, `country_2_code`) VALUES
(4, 'AFGHANISTAN', 'AFG', 'AF'),
(8, 'ALBANIA', 'ALB', 'AL'),
(12, 'ALGERIA', 'DZA', 'DZ'),
(16, 'AMERICAN SAMOA', 'ASM', 'AS'),
(20, 'ANDORRA', 'AND', 'AD'),
(24, 'ANGOLA', 'AGO', 'AO'),
(660, 'ANGUILLA', 'AIA', 'AI'),
(10, 'ANTARCTICA', 'ATA', 'AQ'),
(28, 'ANTIGUA AND BARBUDA', 'ATG', 'AG'),
(32, 'ARGENTINA', 'ARG', 'AR'),
(51, 'ARMENIA', 'ARM', 'AM'),
(533, 'ARUBA', 'ABW', 'AW'),
(36, 'AUSTRALIA', 'AUS', 'AU'),
(40, 'AUSTRIA', 'AUT', 'AT'),
(31, 'AZERBAIJAN', 'AZE', 'AZ'),
(44, 'BAHAMAS', 'BHS', 'BS'),
(48, 'BAHRAIN', 'BHR', 'BH'),
(50, 'BANGLADESH', 'BGD', 'BD'),
(52, 'BARBADOS', 'BRB', 'BB'),
(112, 'BELARUS', 'BLR', 'BY'),
(56, 'BELGIUM', 'BEL', 'BE'),
(84, 'BELIZE', 'BLZ', 'BZ'),
(204, 'BENIN', 'BEN', 'BJ'),
(60, 'BERMUDA', 'BMU', 'BM'),
(64, 'BHUTAN', 'BTN', 'BT'),
(68, 'BOLIVIA', 'BOL', 'BO'),
(70, 'BOSNIA AND HERZEGOWINA', 'BIH', 'BA'),
(72, 'BOTSWANA', 'BWA', 'BW'),
(74, 'BOUVET ISLAND', 'BVT', 'BV'),
(76, 'BRAZIL', 'BRA', 'BR'),
(86, 'BRITISH INDIAN OCEAN TERRITORY', 'IOT', 'IO'),
(96, 'BRUNEI DARUSSALAM', 'BRN', 'BN'),
(100, 'BULGARIA', 'BGR', 'BG'),
(854, 'BURKINA FASO', 'BFA', 'BF'),
(108, 'BURUNDI', 'BDI', 'BI'),
(116, 'CAMBODIA', 'KHM', 'KH'),
(120, 'CAMEROON', 'CMR', 'CM'),
(124, 'CANADA', 'CAN', 'CA'),
(132, 'CAPE VERDE', 'CPV', 'CV'),
(136, 'CAYMAN ISLANDS', 'CYM', 'KY'),
(140, 'CENTRAL AFRICAN REPUBLIC', 'CAF', 'CF'),
(148, 'CHAD', 'TCD', 'TD'),
(152, 'CHILE', 'CHL', 'CL'),
(156, 'CHINA', 'CHN', 'CN'),
(162, 'CHRISTMAS ISLAND', 'CXR', 'CX'),
(166, 'COCOS (KEELING) ISLANDS', 'CCK', 'CC'),
(170, 'COLOMBIA', 'COL', 'CO'),
(174, 'COMOROS', 'COM', 'KM'),
(178, 'CONGO', 'COG', 'CG'),
(180, 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', 'COD', 'CD'),
(184, 'COOK ISLANDS', 'COK', 'CK'),
(188, 'COSTA RICA', 'CRI', 'CR'),
(384, 'COTE D''IVOIRE', 'CIV', 'CI'),
(191, 'CROATIA (local name: Hrvatska)', 'HRV', 'HR'),
(192, 'CUBA', 'CUB', 'CU'),
(196, 'CYPRUS', 'CYP', 'CY'),
(203, 'CZECH REPUBLIC', 'CZE', 'CZ'),
(208, 'DENMARK', 'DNK', 'DK'),
(262, 'DJIBOUTI', 'DJI', 'DJ'),
(212, 'DOMINICA', 'DMA', 'DM'),
(214, 'DOMINICAN REPUBLIC', 'DOM', 'DO'),
(626, 'EAST TIMOR', 'TMP', 'TP'),
(218, 'ECUADOR', 'ECU', 'EC'),
(818, 'EGYPT', 'EGY', 'EG'),
(222, 'EL SALVADOR', 'SLV', 'SV'),
(226, 'EQUATORIAL GUINEA', 'GNQ', 'GQ'),
(232, 'ERITREA', 'ERI', 'ER'),
(233, 'ESTONIA', 'EST', 'EE'),
(231, 'ETHIOPIA', 'ETH', 'ET'),
(238, 'FALKLAND ISLANDS (MALVINAS)', 'FLK', 'FK'),
(234, 'FAROE ISLANDS', 'FRO', 'FO'),
(242, 'FIJI', 'FJI', 'FJ'),
(246, 'FINLAND', 'FIN', 'FI'),
(250, 'FRANCE', 'FRA', 'FR'),
(249, 'FRANCE, METROPOLITAN', 'FXX', 'FX'),
(254, 'FRENCH GUIANA', 'GUF', 'GF'),
(258, 'FRENCH POLYNESIA', 'PYF', 'PF'),
(260, 'FRENCH SOUTHERN TERRITORIES', 'ATF', 'TF'),
(266, 'GABON', 'GAB', 'GA'),
(270, 'GAMBIA', 'GMB', 'GM'),
(268, 'GEORGIA', 'GEO', 'GE'),
(276, 'GERMANY', 'DEU', 'DE'),
(288, 'GHANA', 'GHA', 'GH'),
(292, 'GIBRALTAR', 'GIB', 'GI'),
(300, 'GREECE', 'GRC', 'GR'),
(304, 'GREENLAND', 'GRL', 'GL'),
(308, 'GRENADA', 'GRD', 'GD'),
(312, 'GUADELOUPE', 'GLP', 'GP'),
(316, 'GUAM', 'GUM', 'GU'),
(320, 'GUATEMALA', 'GTM', 'GT'),
(324, 'GUINEA', 'GIN', 'GN'),
(624, 'GUINEA-BISSAU', 'GNB', 'GW'),
(328, 'GUYANA', 'GUY', 'GY'),
(332, 'HAITI', 'HTI', 'HT'),
(334, 'HEARD AND MC DONALD ISLANDS', 'HMD', 'HM'),
(336, 'HOLY SEE (VATICAN CITY STATE)', 'VAT', 'VA'),
(340, 'HONDURAS', 'HND', 'HN'),
(344, 'HONG KONG', 'HKG', 'HK'),
(348, 'HUNGARY', 'HUN', 'HU'),
(352, 'ICELAND', 'ISL', 'IS'),
(356, 'INDIA', 'IND', 'IN'),
(360, 'INDONESIA', 'IDN', 'ID'),
(364, 'IRAN (ISLAMIC REPUBLIC OF)', 'IRN', 'IR'),
(368, 'IRAQ', 'IRQ', 'IQ'),
(372, 'IRELAND', 'IRL', 'IE'),
(376, 'ISRAEL', 'ISR', 'IL'),
(380, 'ITALY', 'ITA', 'IT'),
(388, 'JAMAICA', 'JAM', 'JM'),
(392, 'JAPAN', 'JPN', 'JP'),
(400, 'JORDAN', 'JOR', 'JO'),
(398, 'KAZAKHSTAN', 'KAZ', 'KZ'),
(404, 'KENYA', 'KEN', 'KE'),
(296, 'KIRIBATI', 'KIR', 'KI'),
(408, 'KOREA, DEMOCRATIC PEOPLE''S REPUBLIC OF', 'PRK', 'KP'),
(410, 'KOREA, REPUBLIC OF', 'KOR', 'KR'),
(414, 'KUWAIT', 'KWT', 'KW'),
(417, 'KYRGYZSTAN', 'KGZ', 'KG'),
(418, 'LAO PEOPLE''S DEMOCRATIC REPUBLIC', 'LAO', 'LA'),
(428, 'LATVIA', 'LVA', 'LV'),
(422, 'LEBANON', 'LBN', 'LB'),
(426, 'LESOTHO', 'LSO', 'LS'),
(430, 'LIBERIA', 'LBR', 'LR'),
(434, 'LIBYAN ARAB JAMAHIRIYA', 'LBY', 'LY'),
(438, 'LIECHTENSTEIN', 'LIE', 'LI'),
(440, 'LITHUANIA', 'LTU', 'LT'),
(442, 'LUXEMBOURG', 'LUX', 'LU'),
(446, 'MACAU', 'MAC', 'MO'),
(807, 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', 'MKD', 'MK'),
(450, 'MADAGASCAR', 'MDG', 'MG'),
(454, 'MALAWI', 'MWI', 'MW'),
(458, 'MALAYSIA', 'MYS', 'MY'),
(462, 'MALDIVES', 'MDV', 'MV'),
(466, 'MALI', 'MLI', 'ML'),
(470, 'MALTA', 'MLT', 'MT'),
(584, 'MARSHALL ISLANDS', 'MHL', 'MH'),
(474, 'MARTINIQUE', 'MTQ', 'MQ'),
(478, 'MAURITANIA', 'MRT', 'MR'),
(480, 'MAURITIUS', 'MUS', 'MU'),
(175, 'MAYOTTE', 'MYT', 'YT'),
(484, 'MEXICO', 'MEX', 'MX'),
(583, 'MICRONESIA, FEDERATED STATES OF', 'FSM', 'FM'),
(498, 'MOLDOVA, REPUBLIC OF', 'MDA', 'MD'),
(492, 'MONACO', 'MCO', 'MC'),
(496, 'MONGOLIA', 'MNG', 'MN'),
(500, 'MONTSERRAT', 'MSR', 'MS'),
(504, 'MOROCCO', 'MAR', 'MA'),
(508, 'MOZAMBIQUE', 'MOZ', 'MZ'),
(104, 'MYANMAR', 'MMR', 'MM'),
(516, 'NAMIBIA', 'NAM', 'NA'),
(520, 'NAURU', 'NRU', 'NR'),
(524, 'NEPAL', 'NPL', 'NP'),
(528, 'NETHERLANDS', 'NLD', 'NL'),
(530, 'NETHERLANDS ANTILLES', 'ANT', 'AN'),
(540, 'NEW CALEDONIA', 'NCL', 'NC'),
(554, 'NEW ZEALAND', 'NZL', 'NZ'),
(558, 'NICARAGUA', 'NIC', 'NI'),
(562, 'NIGER', 'NER', 'NE'),
(566, 'NIGERIA', 'NGA', 'NG'),
(570, 'NIUE', 'NIU', 'NU'),
(574, 'NORFOLK ISLAND', 'NFK', 'NF'),
(580, 'NORTHERN MARIANA ISLANDS', 'MNP', 'MP'),
(578, 'NORWAY', 'NOR', 'NO'),
(512, 'OMAN', 'OMN', 'OM'),
(586, 'PAKISTAN', 'PAK', 'PK'),
(585, 'PALAU', 'PLW', 'PW'),
(275, 'PALESTINIAN TERRITORY, OCCUPIED', '  P', ''),
(591, 'PANAMA', 'PAN', 'PA'),
(598, 'PAPUA NEW GUINEA', 'PNG', 'PG'),
(600, 'PARAGUAY', 'PRY', 'PY'),
(604, 'PERU', 'PER', 'PE'),
(608, 'PHILIPPINES', 'PHL', 'PH'),
(612, 'PITCAIRN', 'PCN', 'PN'),
(616, 'POLAND', 'POL', 'PL'),
(620, 'PORTUGAL', 'PRT', 'PT'),
(630, 'PUERTO RICO', 'PRI', 'PR'),
(634, 'QATAR', 'QAT', 'QA'),
(638, 'REUNION', 'REU', 'RE'),
(642, 'ROMANIA', 'ROM', 'RO'),
(643, 'RUSSIAN FEDERATION', 'RUS', 'RU'),
(646, 'RWANDA', 'RWA', 'RW'),
(659, 'SAINT KITTS AND NEVIS', 'KNA', 'KN'),
(662, 'SAINT LUCIA', 'LCA', 'LC'),
(670, 'SAINT VINCENT AND THE GRENADINES', 'VCT', 'VC'),
(882, 'SAMOA', 'WSM', 'WS'),
(674, 'SAN MARINO', 'SMR', 'SM'),
(678, 'SAO TOME AND PRINCIPE', 'STP', 'ST'),
(682, 'SAUDI ARABIA', 'SAU', 'SA'),
(686, 'SENEGAL', 'SEN', 'SN'),
(690, 'SEYCHELLES', 'SYC', 'SC'),
(694, 'SIERRA LEONE', 'SLE', 'SL'),
(702, 'SINGAPORE', 'SGP', 'SG'),
(703, 'SLOVAKIA (Slovak Republic)', 'SVK', 'SK'),
(705, 'SLOVENIA', 'SVN', 'SI'),
(90, 'SOLOMON ISLANDS', 'SLB', 'SB'),
(706, 'SOMALIA', 'SOM', 'SO'),
(710, 'SOUTH AFRICA', 'ZAF', 'ZA'),
(239, 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', 'SGS', 'GS'),
(724, 'SPAIN', 'ESP', 'ES'),
(144, 'SRI LANKA', 'LKA', 'LK'),
(654, 'ST. HELENA', 'SHN', 'SH'),
(666, 'ST. PIERRE AND MIQUELON', 'SPM', 'PM'),
(736, 'SUDAN', 'SDN', 'SD'),
(740, 'SURINAME', 'SUR', 'SR'),
(744, 'SVALBARD AND JAN MAYEN ISLANDS', 'SJM', 'SJ'),
(748, 'SWAZILAND', 'SWZ', 'SZ'),
(752, 'SWEDEN', 'SWE', 'SE'),
(756, 'SWITZERLAND', 'CHE', 'CH'),
(760, 'SYRIAN ARAB REPUBLIC', 'SYR', 'SY'),
(158, 'TAIWAN, PROVINCE OF CHINA', 'TWN', 'TW'),
(762, 'TAJIKISTAN', 'TJK', 'TJ'),
(834, 'TANZANIA, UNITED REPUBLIC OF', 'TZA', 'TZ'),
(764, 'THAILAND', 'THA', 'TH'),
(768, 'TOGO', 'TGO', 'TG'),
(772, 'TOKELAU', 'TKL', 'TK'),
(776, 'TONGA', 'TON', 'TO'),
(780, 'TRINIDAD AND TOBAGO', 'TTO', 'TT'),
(788, 'TUNISIA', 'TUN', 'TN'),
(792, 'TURKEY', 'TUR', 'TR'),
(795, 'TURKMENISTAN', 'TKM', 'TM'),
(796, 'TURKS AND CAICOS ISLANDS', 'TCA', 'TC'),
(798, 'TUVALU', 'TUV', 'TV'),
(800, 'UGANDA', 'UGA', 'UG'),
(804, 'UKRAINE', 'UKR', 'UA'),
(784, 'UNITED ARAB EMIRATES', 'ARE', 'AE'),
(826, 'UNITED KINGDOM', 'GBR', 'GB'),
(840, 'UNITED STATES', 'USA', 'US'),
(581, 'UNITED STATES MINOR OUTLYING ISLANDS', 'UMI', 'UM'),
(858, 'URUGUAY', 'URY', 'UY'),
(860, 'UZBEKISTAN', 'UZB', 'UZ'),
(548, 'VANUATU', 'VUT', 'VU'),
(862, 'VENEZUELA', 'VEN', 'VE'),
(704, 'VIET NAM', 'VNM', 'VN'),
(92, 'VIRGIN ISLANDS (BRITISH)', 'VGB', 'VG'),
(850, 'VIRGIN ISLANDS (U.S.)', 'VIR', 'VI'),
(876, 'WALLIS AND FUTUNA ISLANDS', 'WLF', 'WF'),
(732, 'WESTERN SAHARA', 'ESH', 'EH'),
(887, 'YEMEN', 'YEM', 'YE'),
(891, 'YUGOSLAVIA', 'YUG', 'YU'),
(894, 'ZAMBIA', 'ZMB', 'ZM'),
(716, 'ZIMBABWE', 'ZWE', 'ZW');

-- --------------------------------------------------------

--
-- Table structure for table `cross_selling_products`
--

CREATE TABLE IF NOT EXISTS `cross_selling_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` text NOT NULL,
  `cross_product_id` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=102 ;

--
-- Dumping data for table `cross_selling_products`
--

INSERT INTO `cross_selling_products` (`id`, `product_id`, `cross_product_id`) VALUES
(1, 'c6a8696bf759db14898d1c6ae48bc402', '6c8ddbae3e0c4302bd04d50704a2788e'),
(2, 'c6a8696bf759db14898d1c6ae48bc402', '756fae3699f971b8f0f05ad34698dab7'),
(3, 'c6a8696bf759db14898d1c6ae48bc402', '6c8ddbae3e0c4302bd04d50704a2788e'),
(4, 'c6a8696bf759db14898d1c6ae48bc402', '756fae3699f971b8f0f05ad34698dab7'),
(5, '474004884c02508725cc12e7df34bdd1', '756fae3699f971b8f0f05ad34698dab7'),
(6, '474004884c02508725cc12e7df34bdd1', '6c8ddbae3e0c4302bd04d50704a2788e'),
(7, '58332a44d301a071c4b8dcdda7fc5cbe', '756fae3699f971b8f0f05ad34698dab7'),
(8, '58332a44d301a071c4b8dcdda7fc5cbe', '474004884c02508725cc12e7df34bdd1'),
(9, '58332a44d301a071c4b8dcdda7fc5cbe', '6c8ddbae3e0c4302bd04d50704a2788e'),
(10, '58332a44d301a071c4b8dcdda7fc5cbe', '756fae3699f971b8f0f05ad34698dab7'),
(11, 'ba4a42d28d963a05ad602285aca32b20', '756fae3699f971b8f0f05ad34698dab7'),
(12, 'ba4a42d28d963a05ad602285aca32b20', '474004884c02508725cc12e7df34bdd1'),
(13, 'ba4a42d28d963a05ad602285aca32b20', '6c8ddbae3e0c4302bd04d50704a2788e'),
(14, '373be587204662169395cc844587a6c1', '474004884c02508725cc12e7df34bdd1'),
(15, '373be587204662169395cc844587a6c1', '6c8ddbae3e0c4302bd04d50704a2788e'),
(16, '7eb2930d22ef48f9eb5922c9dadab171', '6c8ddbae3e0c4302bd04d50704a2788e'),
(17, '7eb2930d22ef48f9eb5922c9dadab171', '756fae3699f971b8f0f05ad34698dab7'),
(18, '7eb2930d22ef48f9eb5922c9dadab171', '6c8ddbae3e0c4302bd04d50704a2788e'),
(19, '7eb2930d22ef48f9eb5922c9dadab171', '373be587204662169395cc844587a6c1'),
(20, '1172787d5f0abcccc8892aec569c25c4', 'a6d512bd7fc2e104b4e53c291351dc3a'),
(21, '1172787d5f0abcccc8892aec569c25c4', 'a6d512bd7fc2e104b4e53c291351dc3a'),
(22, 'e333e61553beb13fd1c303f5fca0b368', 'a6d512bd7fc2e104b4e53c291351dc3a'),
(23, 'e333e61553beb13fd1c303f5fca0b368', 'a6d512bd7fc2e104b4e53c291351dc3a'),
(24, '47f67cf0f99295911ef6ee6b32db8aba', 'a6d512bd7fc2e104b4e53c291351dc3a'),
(25, '47f67cf0f99295911ef6ee6b32db8aba', 'e333e61553beb13fd1c303f5fca0b368'),
(26, '47f67cf0f99295911ef6ee6b32db8aba', 'a6d512bd7fc2e104b4e53c291351dc3a'),
(27, 'e10633542f224f7cb6f32a58d88d4989', 'a6d512bd7fc2e104b4e53c291351dc3a'),
(28, 'e10633542f224f7cb6f32a58d88d4989', 'e333e61553beb13fd1c303f5fca0b368'),
(29, 'e10633542f224f7cb6f32a58d88d4989', '47f67cf0f99295911ef6ee6b32db8aba'),
(30, 'e10633542f224f7cb6f32a58d88d4989', 'a6d512bd7fc2e104b4e53c291351dc3a'),
(31, 'e10633542f224f7cb6f32a58d88d4989', 'e333e61553beb13fd1c303f5fca0b368'),
(32, 'e10633542f224f7cb6f32a58d88d4989', '47f67cf0f99295911ef6ee6b32db8aba'),
(33, 'af645cbfe3c8897f16a09205f86af932', 'a6d512bd7fc2e104b4e53c291351dc3a'),
(34, 'af645cbfe3c8897f16a09205f86af932', 'e333e61553beb13fd1c303f5fca0b368'),
(35, 'af645cbfe3c8897f16a09205f86af932', 'e10633542f224f7cb6f32a58d88d4989'),
(36, 'af645cbfe3c8897f16a09205f86af932', '47f67cf0f99295911ef6ee6b32db8aba'),
(37, 'af645cbfe3c8897f16a09205f86af932', 'a6d512bd7fc2e104b4e53c291351dc3a'),
(38, 'af645cbfe3c8897f16a09205f86af932', '7eb2930d22ef48f9eb5922c9dadab171'),
(39, 'af645cbfe3c8897f16a09205f86af932', 'e10633542f224f7cb6f32a58d88d4989'),
(40, '61753661cd842e4e8744536e05ba92c3', 'a6d512bd7fc2e104b4e53c291351dc3a'),
(41, '61753661cd842e4e8744536e05ba92c3', 'e333e61553beb13fd1c303f5fca0b368'),
(42, '61753661cd842e4e8744536e05ba92c3', 'af645cbfe3c8897f16a09205f86af932'),
(43, '61753661cd842e4e8744536e05ba92c3', 'e10633542f224f7cb6f32a58d88d4989'),
(44, '61753661cd842e4e8744536e05ba92c3', '47f67cf0f99295911ef6ee6b32db8aba'),
(45, '61753661cd842e4e8744536e05ba92c3', 'a6d512bd7fc2e104b4e53c291351dc3a'),
(46, '61753661cd842e4e8744536e05ba92c3', 'e333e61553beb13fd1c303f5fca0b368'),
(47, '61753661cd842e4e8744536e05ba92c3', 'af645cbfe3c8897f16a09205f86af932'),
(48, '35f8810732afbf5deae4490f6abdf966', 'e333e61553beb13fd1c303f5fca0b368'),
(49, '35f8810732afbf5deae4490f6abdf966', 'af645cbfe3c8897f16a09205f86af932'),
(50, '35f8810732afbf5deae4490f6abdf966', '61753661cd842e4e8744536e05ba92c3'),
(51, '35f8810732afbf5deae4490f6abdf966', 'e10633542f224f7cb6f32a58d88d4989'),
(52, '35f8810732afbf5deae4490f6abdf966', '47f67cf0f99295911ef6ee6b32db8aba'),
(53, '35f8810732afbf5deae4490f6abdf966', 'a6d512bd7fc2e104b4e53c291351dc3a'),
(54, '35f8810732afbf5deae4490f6abdf966', 'e333e61553beb13fd1c303f5fca0b368'),
(55, '35f8810732afbf5deae4490f6abdf966', '61753661cd842e4e8744536e05ba92c3'),
(56, '35f8810732afbf5deae4490f6abdf966', 'e10633542f224f7cb6f32a58d88d4989'),
(57, '8515c3dd806bb5430a4ab510b202ca8d', 'e10633542f224f7cb6f32a58d88d4989'),
(58, '8515c3dd806bb5430a4ab510b202ca8d', '47f67cf0f99295911ef6ee6b32db8aba'),
(59, '8515c3dd806bb5430a4ab510b202ca8d', '35f8810732afbf5deae4490f6abdf966'),
(60, '8515c3dd806bb5430a4ab510b202ca8d', 'a6d512bd7fc2e104b4e53c291351dc3a'),
(61, '8515c3dd806bb5430a4ab510b202ca8d', 'e333e61553beb13fd1c303f5fca0b368'),
(62, 'e3d6ad832e120557d1104c13d0196983', '8515c3dd806bb5430a4ab510b202ca8d'),
(63, 'e3d6ad832e120557d1104c13d0196983', '474004884c02508725cc12e7df34bdd1'),
(64, 'e3d6ad832e120557d1104c13d0196983', '373be587204662169395cc844587a6c1'),
(65, 'e3d6ad832e120557d1104c13d0196983', 'e333e61553beb13fd1c303f5fca0b368'),
(66, 'e3d6ad832e120557d1104c13d0196983', '35f8810732afbf5deae4490f6abdf966'),
(67, 'e3d6ad832e120557d1104c13d0196983', 'a6d512bd7fc2e104b4e53c291351dc3a'),
(68, 'e3d6ad832e120557d1104c13d0196983', 'e333e61553beb13fd1c303f5fca0b368'),
(69, 'e3d6ad832e120557d1104c13d0196983', 'e10633542f224f7cb6f32a58d88d4989'),
(70, 'e3d6ad832e120557d1104c13d0196983', '47f67cf0f99295911ef6ee6b32db8aba'),
(71, 'f6cccbb131cdfa7af68cc7b9db3712b3', '77505a3716b687f591eb400c26c26791'),
(72, '19c47e9c35cb73e8382ebdd7ff059fc9', '77505a3716b687f591eb400c26c26791'),
(73, '19c47e9c35cb73e8382ebdd7ff059fc9', 'f6cccbb131cdfa7af68cc7b9db3712b3'),
(74, '19c47e9c35cb73e8382ebdd7ff059fc9', '77505a3716b687f591eb400c26c26791'),
(75, '19c47e9c35cb73e8382ebdd7ff059fc9', 'f6cccbb131cdfa7af68cc7b9db3712b3'),
(76, 'ecc7f27b68b8d437155f88cab71659a4', 'f6cccbb131cdfa7af68cc7b9db3712b3'),
(77, 'ecc7f27b68b8d437155f88cab71659a4', '77505a3716b687f591eb400c26c26791'),
(78, 'daa2e6a2da24710947a872b178065648', '77505a3716b687f591eb400c26c26791'),
(79, 'daa2e6a2da24710947a872b178065648', 'f6cccbb131cdfa7af68cc7b9db3712b3'),
(80, 'daa2e6a2da24710947a872b178065648', '77505a3716b687f591eb400c26c26791'),
(81, 'daa2e6a2da24710947a872b178065648', 'f6cccbb131cdfa7af68cc7b9db3712b3'),
(82, '4848abf55fd2176a5f9755ab395d54e5', 'daa2e6a2da24710947a872b178065648'),
(83, '4848abf55fd2176a5f9755ab395d54e5', 'f6cccbb131cdfa7af68cc7b9db3712b3'),
(84, 'd08056de5b7d00c6bb10c668ad44147f', 'daa2e6a2da24710947a872b178065648'),
(85, 'd08056de5b7d00c6bb10c668ad44147f', '4848abf55fd2176a5f9755ab395d54e5'),
(86, 'd08056de5b7d00c6bb10c668ad44147f', '77505a3716b687f591eb400c26c26791'),
(87, 'd08056de5b7d00c6bb10c668ad44147f', 'daa2e6a2da24710947a872b178065648'),
(88, 'd08056de5b7d00c6bb10c668ad44147f', 'f6cccbb131cdfa7af68cc7b9db3712b3'),
(89, '2e19f3e201ba7c003cf3e94e08b08ba0', '4848abf55fd2176a5f9755ab395d54e5'),
(90, '2e19f3e201ba7c003cf3e94e08b08ba0', 'd08056de5b7d00c6bb10c668ad44147f'),
(91, '2e19f3e201ba7c003cf3e94e08b08ba0', 'daa2e6a2da24710947a872b178065648'),
(92, '2e19f3e201ba7c003cf3e94e08b08ba0', 'd08056de5b7d00c6bb10c668ad44147f'),
(93, '40a264ed10bc77ba60cde50032e7c5c2', '4848abf55fd2176a5f9755ab395d54e5'),
(94, '40a264ed10bc77ba60cde50032e7c5c2', 'd08056de5b7d00c6bb10c668ad44147f'),
(95, '40a264ed10bc77ba60cde50032e7c5c2', '77505a3716b687f591eb400c26c26791'),
(96, '40a264ed10bc77ba60cde50032e7c5c2', 'f6cccbb131cdfa7af68cc7b9db3712b3'),
(97, '40a264ed10bc77ba60cde50032e7c5c2', '4848abf55fd2176a5f9755ab395d54e5'),
(98, '1ad8be291046cb947a5eacdbde91aabb', 'db46456f5f18bf43ebd2681702293c82'),
(99, '1ad8be291046cb947a5eacdbde91aabb', 'daa2e6a2da24710947a872b178065648'),
(100, '1ad8be291046cb947a5eacdbde91aabb', '4848abf55fd2176a5f9755ab395d54e5'),
(101, '1ad8be291046cb947a5eacdbde91aabb', '756fae3699f971b8f0f05ad34698dab7');

-- --------------------------------------------------------

--
-- Table structure for table `csv`
--

CREATE TABLE IF NOT EXISTS `csv` (
  `csv_product_sku` int(2) DEFAULT NULL,
  `csv_product_s_desc` int(2) DEFAULT NULL,
  `csv_product_desc` int(2) DEFAULT NULL,
  `csv_product_thumb_image` int(2) DEFAULT NULL,
  `csv_product_full_image` int(2) DEFAULT NULL,
  `csv_product_weight` int(2) DEFAULT NULL,
  `csv_product_weight_uom` int(2) DEFAULT NULL,
  `csv_product_length` int(2) DEFAULT NULL,
  `csv_product_width` int(2) DEFAULT NULL,
  `csv_product_height` int(2) DEFAULT NULL,
  `csv_product_lwh_uom` int(2) DEFAULT NULL,
  `csv_product_in_stock` int(2) DEFAULT NULL,
  `csv_product_available_date` int(2) DEFAULT NULL,
  `csv_product_special` int(2) DEFAULT NULL,
  `csv_product_discount_id` int(2) DEFAULT NULL,
  `csv_product_name` int(2) DEFAULT NULL,
  `csv_product_price` int(2) DEFAULT NULL,
  `csv_category_path` int(2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `csv`
--

INSERT INTO `csv` (`csv_product_sku`, `csv_product_s_desc`, `csv_product_desc`, `csv_product_thumb_image`, `csv_product_full_image`, `csv_product_weight`, `csv_product_weight_uom`, `csv_product_length`, `csv_product_width`, `csv_product_height`, `csv_product_lwh_uom`, `csv_product_in_stock`, `csv_product_available_date`, `csv_product_special`, `csv_product_discount_id`, `csv_product_name`, `csv_product_price`, `csv_category_path`) VALUES
(4, 5, 6, 7, 8, 10, 11, 12, 13, 14, 15, 17, 18, 19, 20, 24, 25, 26);

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE IF NOT EXISTS `currency` (
  `currency_id` int(11) NOT NULL AUTO_INCREMENT,
  `currency_name` varchar(64) DEFAULT NULL,
  `currency_code` char(3) DEFAULT NULL,
  PRIMARY KEY (`currency_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=157 ;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`currency_id`, `currency_name`, `currency_code`) VALUES
(1, 'Andorran Peseta', 'ADP'),
(2, 'United Arab Emirates Dirham', 'AED'),
(3, 'Afghanistan Afghani', 'AFA'),
(4, 'Albanian Lek', 'ALL'),
(5, 'Netherlands Antillian Guilder', 'ANG'),
(6, 'Angolan Kwanza', 'AOK'),
(7, 'Argentinian Austral', 'ARA'),
(8, 'Austrian Schilling', 'ATS'),
(9, 'Australian Dollar', 'AUD'),
(10, 'Aruban Florin', 'AWG'),
(11, 'Barbados Dollar', 'BBD'),
(12, 'Bangladeshi Taka', 'BDT'),
(13, 'Belgian Franc', 'BEF'),
(14, 'Bulgarian Lev', 'BGL'),
(15, 'Bahraini Dinar', 'BHD'),
(16, 'Burundi Franc', 'BIF'),
(17, 'Bermudian Dollar', 'BMD'),
(18, 'Brunei Dollar', 'BND'),
(19, 'Bolivian Boliviano', 'BOB'),
(20, 'Brazilian Cruzeiro', 'BRC'),
(21, 'Bahamian Dollar', 'BSD'),
(22, 'Bhutan Ngultrum', 'BTN'),
(23, 'Burma Kyat', 'BUK'),
(24, 'Botswanian Pula', 'BWP'),
(25, 'Belize Dollar', 'BZD'),
(26, 'Canadian Dollar', 'CAD'),
(27, 'Swiss Franc', 'CHF'),
(28, 'Chilean Unidades de Fomento', 'CLF'),
(29, 'Chilean Peso', 'CLP'),
(30, 'Yuan (Chinese) Renminbi', 'CNY'),
(31, 'Colombian Peso', 'COP'),
(32, 'Costa Rican Colon', 'CRC'),
(33, 'Czech Koruna', 'CSK'),
(34, 'Cuban Peso', 'CUP'),
(35, 'Cape Verde Escudo', 'CVE'),
(36, 'Cyprus Pound', 'CYP'),
(37, 'East German Mark (DDR)', 'DDM'),
(38, 'Deutsche Mark', 'DEM'),
(39, 'Djibouti Franc', 'DJF'),
(40, 'Danish Krone', 'DKK'),
(41, 'Dominican Peso', 'DOP'),
(42, 'Algerian Dinar', 'DZD'),
(43, 'Ecuador Sucre', 'ECS'),
(44, 'Egyptian Pound', 'EGP'),
(45, 'Spanish Peseta', 'ESP'),
(46, 'Ethiopian Birr', 'ETB'),
(47, 'Euro', 'EUR'),
(48, 'Finnish Markka', 'FIM'),
(49, 'Fiji Dollar', 'FJD'),
(50, 'Falkland Islands Pound', 'FKP'),
(51, 'French Franc', 'FRF'),
(52, 'British Pound', 'GBP'),
(53, 'Ghanaian Cedi', 'GHC'),
(54, 'Gibraltar Pound', 'GIP'),
(55, 'Gambian Dalasi', 'GMD'),
(56, 'Guinea Franc', 'GNF'),
(57, 'Greek Drachma', 'GRD'),
(58, 'Guatemalan Quetzal', 'GTQ'),
(59, 'Guinea-Bissau Peso', 'GWP'),
(60, 'Guyanan Dollar', 'GYD'),
(61, 'Hong Kong Dollar', 'HKD'),
(62, 'Honduran Lempira', 'HNL'),
(63, 'Haitian Gourde', 'HTG'),
(64, 'Hungarian Forint', 'HUF'),
(65, 'Indonesian Rupiah', 'IDR'),
(66, 'Irish Punt', 'IEP'),
(67, 'Israeli Shekel', 'ILS'),
(68, 'Indian Rupee', 'INR'),
(69, 'Iraqi Dinar', 'IQD'),
(70, 'Iranian Rial', 'IRR'),
(71, 'Iceland Krona', 'ISK'),
(72, 'Italian Lira', 'ITL'),
(73, 'Jamaican Dollar', 'JMD'),
(74, 'Jordanian Dinar', 'JOD'),
(75, 'Japanese Yen', 'JPY'),
(76, 'Kenyan Schilling', 'KES'),
(77, 'Kampuchean (Cambodian) Riel', 'KHR'),
(78, 'Comoros Franc', 'KMF'),
(79, 'North Korean Won', 'KPW'),
(81, 'Kuwaiti Dinar', 'KWD'),
(82, 'Cayman Islands Dollar', 'KYD'),
(83, 'Lao Kip', 'LAK'),
(84, 'Lebanese Pound', 'LBP'),
(85, 'Sri Lanka Rupee', 'LKR'),
(86, 'Liberian Dollar', 'LRD'),
(87, 'Lesotho Loti', 'LSL'),
(88, 'Luxembourg Franc', 'LUF'),
(89, 'Libyan Dinar', 'LYD'),
(90, 'Moroccan Dirham', 'MAD'),
(91, 'Malagasy Franc', 'MGF'),
(92, 'Mongolian Tugrik', 'MNT'),
(93, 'Macau Pataca', 'MOP'),
(94, 'Mauritanian Ouguiya', 'MRO'),
(95, 'Maltese Lira', 'MTL'),
(96, 'Mauritius Rupee', 'MUR'),
(97, 'Maldive Rufiyaa', 'MVR'),
(98, 'Malawi Kwacha', 'MWK'),
(99, 'Mexican Peso', 'MXP'),
(100, 'Malaysian Ringgit', 'MYR'),
(101, 'Mozambique Metical', 'MZM'),
(102, 'Nigerian Naira', 'NGN'),
(103, 'Nicaraguan Cordoba', 'NIC'),
(104, 'Dutch Guilder', 'NLG'),
(105, 'Norwegian Kroner', 'NOK'),
(106, 'Nepalese Rupee', 'NPR'),
(107, 'New Zealand Dollar', 'NZD'),
(108, 'Omani Rial', 'OMR'),
(109, 'Panamanian Balboa', 'PAB'),
(110, 'Peruvian Inti', 'PEI'),
(111, 'Papua New Guinea Kina', 'PGK'),
(112, 'Philippine Peso', 'PHP'),
(113, 'Pakistan Rupee', 'PKR'),
(114, 'Polish Zloty', 'PLZ'),
(115, 'Portuguese Escudo', 'PTE'),
(116, 'Paraguay Guarani', 'PYG'),
(117, 'Qatari Rial', 'QAR'),
(118, 'Romanian Leu', 'ROL'),
(119, 'Rwanda Franc', 'RWF'),
(120, 'Saudi Arabian Riyal', 'SAR'),
(121, 'Solomon Islands Dollar', 'SBD'),
(122, 'Seychelles Rupee', 'SCR'),
(123, 'Sudanese Pound', 'SDP'),
(124, 'Swedish Krona', 'SEK'),
(125, 'Singapore Dollar', 'SGD'),
(126, 'St. Helena Pound', 'SHP'),
(127, 'Sierra Leone Leone', 'SLL'),
(128, 'Somali Schilling', 'SOS'),
(129, 'Suriname Guilder', 'SRG'),
(130, 'Sao Tome and Principe Dobra', 'STD'),
(131, 'USSR Rouble', 'SUR'),
(132, 'El Salvador Colon', 'SVC'),
(133, 'Syrian Potmd', 'SYP'),
(134, 'Swaziland Lilangeni', 'SZL'),
(135, 'Thai Bhat', 'THB'),
(136, 'Tunisian Dinar', 'TND'),
(137, 'Tongan Pa''anga', 'TOP'),
(138, 'East Timor Escudo', 'TPE'),
(139, 'Turkish Lira', 'TRL'),
(140, 'Trinidad and Tobago Dollar', 'TTD'),
(141, 'Taiwan Dollar', 'TWD'),
(142, 'Tanzanian Schilling', 'TZS'),
(143, 'Uganda Shilling', 'UGS'),
(144, 'US Dollar', 'USD'),
(145, 'Uruguayan Peso', 'UYP'),
(146, 'Venezualan Bolivar', 'VEB'),
(147, 'Vietnamese Dong', 'VND'),
(148, 'Vanuatu Vatu', 'VUV'),
(149, 'Samoan Tala', 'WST'),
(150, 'Democratic Yemeni Dinar', 'YDD'),
(151, 'Yemeni Rial', 'YER'),
(152, 'New Yugoslavia Dinar', 'YUD'),
(153, 'South African Rand', 'ZAR'),
(154, 'Zambian Kwacha', 'ZMK'),
(155, 'Zaire Zaire', 'ZRZ'),
(156, 'Zimbabwe Dollar', 'ZWD');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE IF NOT EXISTS `customers` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `account_email` varchar(200) NOT NULL,
  `customer_name` varchar(200) DEFAULT NULL,
  `customer_address` text,
  `customer_mobile` varchar(20) DEFAULT NULL,
  `customer_phone` varchar(20) DEFAULT NULL,
  `customer_country` text,
  `customer_state` text,
  `customer_city` text,
  `customer_suburb` varchar(50) DEFAULT NULL,
  `business_name` text NOT NULL,
  `customer_postcode` varchar(10) DEFAULT NULL,
  `email_address` text,
  `b_customer_country` text NOT NULL,
  `b_customer_city` text NOT NULL,
  `b_customer_state` text NOT NULL,
  `b_customer_suburb` varchar(50) NOT NULL,
  `b_customer_postcode` varchar(10) NOT NULL,
  `s_customer_country` text NOT NULL,
  `s_customer_city` text NOT NULL,
  `s_customer_state` text NOT NULL,
  `s_customer_suburb` varchar(50) NOT NULL,
  `s_customer_postcode` varchar(10) NOT NULL,
  `s_customer_address` text NOT NULL,
  `b_customer_address` text NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `customer_ref` varchar(10) DEFAULT NULL,
  `mailing_list` varchar(3) DEFAULT 'no',
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=111 ;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `account_email`, `customer_name`, `customer_address`, `customer_mobile`, `customer_phone`, `customer_country`, `customer_state`, `customer_city`, `customer_suburb`, `business_name`, `customer_postcode`, `email_address`, `b_customer_country`, `b_customer_city`, `b_customer_state`, `b_customer_suburb`, `b_customer_postcode`, `s_customer_country`, `s_customer_city`, `s_customer_state`, `s_customer_suburb`, `s_customer_postcode`, `s_customer_address`, `b_customer_address`, `password`, `customer_ref`, `mailing_list`) VALUES
(109, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'team@phirebird.com.au', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, 'yes'),
(110, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'd.olsen@bigpond.net.au', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, 'yes'),
(108, '', 'Mellisa', '', '0416148500', '0416148500', '', 'Queensland', 'Brisbane', '', 'Mellisa', '4118', 'mellisa@yourlogohere.com.au', '', '', '', '', '', 'Australia', 'Brisbane', 'Queensland', '', '4118', '', '', NULL, NULL, 'no');

-- --------------------------------------------------------

--
-- Table structure for table `function`
--

CREATE TABLE IF NOT EXISTS `function` (
  `function_id` int(11) NOT NULL AUTO_INCREMENT,
  `module_id` int(11) DEFAULT NULL,
  `function_name` varchar(32) DEFAULT NULL,
  `function_class` varchar(32) DEFAULT NULL,
  `function_method` varchar(32) DEFAULT NULL,
  `function_description` text,
  `function_perms` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`function_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=69 ;

--
-- Dumping data for table `function`
--

INSERT INTO `function` (`function_id`, `module_id`, `function_name`, `function_class`, `function_method`, `function_description`, `function_perms`) VALUES
(1, 1, 'userAdd', 'ps_user', 'add', '', 'admin,storeadmin'),
(2, 1, 'userDelete', 'ps_user', 'delete', '', 'admin,storeadmin'),
(3, 1, 'userUpdate', 'ps_user', 'update', '', 'admin,storeadmin'),
(4, 1, 'adminPasswdUpdate', 'ps_user', 'update_admin_passwd', 'Updates Site Adminnistrator Password', 'admin'),
(31, 2, 'productAdd', 'ps_product', 'add', '', 'admin,storeadmin'),
(6, 1, 'functionAdd', 'ps_function', 'add', '', 'admin'),
(7, 1, 'functionUpdate', 'ps_function', 'update', '', 'admin'),
(8, 1, 'functionDelete', 'ps_function', 'delete', '', 'admin'),
(9, 1, 'userLogout', 'ps_user', 'logout', '', 'none'),
(10, 1, 'userAddressAdd', 'ps_user_address', 'add', '', 'admin,storeadmin,shopper'),
(11, 1, 'userAddressUpdate', 'ps_user_address', 'update', '', 'admin,storeadmin,shopper'),
(12, 1, 'userAddressDelete', 'ps_user_address', 'delete', '', 'admin,storeadmin,shopper'),
(13, 1, 'moduleAdd', 'ps_module', 'add', '', 'admin'),
(14, 1, 'moduleUpdate', 'ps_module', 'update', '', 'admin'),
(15, 1, 'moduleDelete', 'ps_module', 'delete', '', 'admin'),
(16, 1, 'userLogin', 'ps_user', 'login', '', 'none'),
(17, 3, 'vendorAdd', 'ps_vendor', 'add', '', 'admin'),
(18, 3, 'vendorUpdate', 'ps_vendor', 'update', '', 'admin,storeadmin'),
(19, 3, 'vendorDelete', 'ps_vendor', 'delete', '', 'admin'),
(20, 3, 'vendorCategoryAdd', 'ps_vendor_category', 'add', '', 'admin'),
(21, 3, 'vendorCategoryUpdate', 'ps_vendor_category', 'update', '', 'admin'),
(22, 3, 'vendorCategoryDelete', 'ps_vendor_category', 'delete', '', 'admin'),
(23, 4, 'shopperAdd', 'ps_shopper', 'add', '', 'none'),
(24, 4, 'shopperDelete', 'ps_shopper', 'delete', '', 'admin,storeadmin'),
(25, 4, 'shopperUpdate', 'ps_shopper', 'update', '', 'admin,storeadmin,shopper'),
(26, 4, 'shopperGroupAdd', 'ps_shopper_group', 'add', '', 'admin,storeadmin'),
(27, 4, 'shopperGroupUpdate', 'ps_shopper_group', 'update', '', 'admin,storeadmin'),
(28, 4, 'shopperGroupDelete', 'ps_shopper_group', 'delete', '', 'admin,storeadmin'),
(29, 5, 'orderSearch', 'ps_order', 'find', '', 'admin,storeadmin,demo'),
(30, 5, 'orderStatusSet', 'ps_order', 'order_status_update', '', 'admin,storeadmin'),
(32, 2, 'productDelete', 'ps_product', 'delete', '', 'admin,storeadmin'),
(33, 2, 'productUpdate', 'ps_product', 'update', '', 'admin,storeadmin'),
(34, 2, 'productCategoryAdd', 'ps_product_category', 'add', '', 'admin,storeadmin'),
(35, 2, 'productCategoryUpdate', 'ps_product_category', 'update', '', 'admin,storeadmin'),
(36, 2, 'productCategoryDelete', 'ps_product_category', 'delete', '', 'admin,storeadmin'),
(37, 2, 'productPriceAdd', 'ps_product_price', 'add', '', 'admin,storeadmin'),
(38, 2, 'productPriceUpdate', 'ps_product_price', 'update', '', 'admin,storeadmin'),
(39, 2, 'productPriceDelete', 'ps_product_price', 'delete', '', 'admin,storeadmin'),
(40, 2, 'productAttributeAdd', 'ps_product_attribute', 'add', '', 'admin,storeadmin'),
(41, 2, 'productAttributeUpdate', 'ps_product_attribute', 'update', '', 'admin,storeadmin'),
(42, 2, 'productAttributeDelete', 'ps_product_attribute', 'delete', '', 'admin,storeadmin'),
(43, 7, 'cartAdd', 'ps_cart', 'add', '', 'none'),
(44, 7, 'cartUpdate', 'ps_cart', 'update', '', 'none'),
(45, 7, 'cartDelete', 'ps_cart', 'delete', '', 'none'),
(46, 10, 'checkoutComplete', 'ps_checkout', 'add', '', 'shopper,storeadmin,admin,demo'),
(47, 1, 'setLanguage', 'ps_module', 'set_language', '', 'none'),
(48, 8, 'paymentMethodUpdate', 'ps_payment_method', 'update', '', 'admin,storeadmin'),
(49, 8, 'paymentMethodAdd', 'ps_payment_method', 'add', '', 'admin,storeadmin'),
(50, 8, 'paymentMethodDelete', 'ps_payment_method', 'delete', '', 'admin,storeadmin'),
(51, 5, 'orderDelete', 'ps_order', 'delete', '', 'admin,storeadmin'),
(52, 11, 'addTaxRate', 'ps_tax', 'add', '', 'admin,storeadmin'),
(53, 11, 'updateTaxRate', 'ps_tax', 'update', '', 'admin,storeadmin'),
(54, 11, 'deleteTaxRate', 'ps_tax', 'delete', '', 'admin,storeadmin'),
(57, 12837, 'shipQuote', 'ps_intershipper', 'fetch_quote', '', 'admin,storeadmin,demo,shopper'),
(55, 10, 'checkoutValidateST', 'ps_checkout', 'validate_shipto', '', 'none'),
(56, 12837, 'shipUpdate', 'ps_intershipper', 'update', 'Updates shipping methods with shipping form changes.', 'admin,storeadmin'),
(58, 12837, 'shipRefresh', 'ps_intershipper', 'refresh', 'Deletes database of shipping methods and restores it with the latest available shipping methods from InterShipper.', 'admin'),
(59, 5, 'orderStatusUpdate', 'ps_order_status', 'update', '', 'admin,storeadmin'),
(60, 5, 'orderStatusAdd', 'ps_order_status', 'add', '', 'storeadmin,admin'),
(61, 5, 'orderStatusDelete', 'ps_order_status', 'delete', '', 'admin,storeadmin'),
(62, 12838, 'addzone', 'ps_zone', 'add', 'This will add a zone.', 'admin,storeadmin'),
(63, 12838, 'updatezone', 'ps_zone', 'update', 'This updates a zone.', 'admin,storeadmin'),
(64, 12838, 'deletezone', 'ps_zone', 'delete', 'Deletes a zone.', 'admin,storeadmin'),
(65, 12838, 'zoneassign', 'ps_zone', 'assign', 'This will assign a country to a zone.', 'admin,storeadmin'),
(66, 1, 'sendLostPassword', 'ps_user', 'send_lost_password', 'Generates a new password and sends an email to the user for confirmation of the changes.', 'none'),
(67, 1, 'resetLostPassword', 'ps_user', 'reset_lost_password', 'Resets a new password once a user responds to the confirmation.', 'none'),
(68, 2, 'product_csv', 'ps_csv', 'upload_csv', 'Imports a CSV formatted file of product data.', 'admin,storeadmin');

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE IF NOT EXISTS `language` (
  `language_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_name` varchar(64) DEFAULT NULL,
  `language_code` char(3) DEFAULT NULL,
  PRIMARY KEY (`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=411 ;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`language_id`, `language_name`, `language_code`) VALUES
(1, 'Afar', 'aar'),
(2, 'Abkhazian', 'abk'),
(3, 'Achinese', 'ace'),
(4, 'Acoli', 'ach'),
(5, 'Adangme', 'ada'),
(6, 'Afro-Asiatic (Other)', 'afa'),
(7, 'Afrihili', 'afh'),
(8, 'Africaans', 'afr'),
(9, 'Aljamia', 'ajm'),
(10, 'Akan', 'aka'),
(11, 'Akkadian', 'akk'),
(12, 'Albanian', 'alb'),
(13, 'Albanian2', 'sqi'),
(14, 'Aleut', 'ale'),
(15, 'Algonquian languages', 'alg'),
(16, 'Amharic', 'amh'),
(17, 'English, Old (ca. 450-1100)', 'ang'),
(18, 'Apache languages', 'apa'),
(19, 'Arabic', 'ara'),
(20, 'Aramaic', 'arc'),
(21, 'Armenian', 'arm'),
(22, 'Armenian2', 'hye'),
(23, 'Araucanian', 'arn'),
(24, 'Arapaho', 'arp'),
(25, 'Artificial (Other)', 'art'),
(26, 'Arawak', 'arw'),
(27, 'Assamese', 'asm'),
(28, 'Athapascan languages', 'ath'),
(29, 'Avaric', 'ava'),
(30, 'Avestan', 'ave'),
(31, 'Awandhi', 'awa'),
(32, 'Aymara', 'aym'),
(33, 'Azerbaijani', 'aze'),
(34, 'Banda', 'bad'),
(35, 'Bamileke languages', 'bai'),
(36, 'Bashkir', 'bak'),
(37, 'Baluchi', 'bal'),
(38, 'Bambara', 'bam'),
(39, 'Balinese', 'ban'),
(40, 'Basque', 'baq'),
(41, 'Basque2', 'eus'),
(42, 'Basa', 'bas'),
(43, 'Baltic (Other)', 'bat'),
(44, 'Beja', 'bej'),
(45, 'Byelorussian', 'bel'),
(46, 'Bemba', 'bem'),
(47, 'Bengali', 'ben'),
(48, 'Berber languages', 'ber'),
(49, 'Bhojpuri', 'bho'),
(50, 'Bihari', 'bih'),
(51, 'Bikol', 'bik'),
(52, 'Bini', 'bin'),
(53, 'Bislama', 'bis'),
(54, 'Siksika', 'bla'),
(55, 'Tibetan', 'bod'),
(56, 'Tibetan2', 'tib'),
(57, 'Braj', 'bra'),
(58, 'Breton', 'bre'),
(59, 'Buginese', 'bug'),
(60, 'Bulgarian', 'bul'),
(61, 'Burmese', 'bur'),
(62, 'Burmese', 'mya'),
(63, 'Caddo', 'cad'),
(64, 'Central American Indian (Other)', 'cai'),
(65, 'Carib', 'car'),
(66, 'Catalan', 'cat'),
(67, 'Caucasian (Other)', 'cau'),
(68, 'Cebuano', 'ceb'),
(69, 'Celtic (Other)', 'cel'),
(70, 'Czeck', 'ces'),
(71, 'Czeck2', 'cze'),
(72, 'Chamorro', 'cha'),
(73, 'Chibcha', 'chb'),
(74, 'Chechen', 'che'),
(75, 'Chagatai', 'chg'),
(76, 'Chinese', 'chi'),
(77, 'Chinese2', 'zho'),
(78, 'Chinook jargon', 'chn'),
(79, 'Choctaw', 'cho'),
(80, 'Cherokee', 'chr'),
(81, 'Church Slavic', 'chu'),
(82, 'Chuvash', 'chv'),
(83, 'Cheyenne', 'chy'),
(84, 'Coptic', 'cop'),
(85, 'Cornish', 'cor'),
(86, 'Corsican', 'cos'),
(87, 'Creoles and pidgins, English-based (Other)', 'cpe'),
(88, 'Creoles and pidgins, French-based (Other)', 'cpf'),
(89, 'Creoles and pidgins, Portuguese-based (Other)', 'cpp'),
(90, 'Cree', 'cre'),
(91, 'Creoles and pidgins (Other)', 'crp'),
(92, 'Cushitic (Other)', 'cus'),
(93, 'Welsh', 'cym'),
(94, 'Welsh2', 'wel'),
(95, 'Dakota', 'dak'),
(96, 'Danish', 'dan'),
(97, 'Delaware', 'del'),
(98, 'German', 'deu'),
(99, 'German', 'ger'),
(100, 'Dinka', 'din'),
(101, 'Dogri', 'doi'),
(102, 'Dravidian (Other)', 'dra'),
(103, 'Duala', 'dua'),
(104, 'Dutch, Middle (ca. 1050-1350)', 'dum'),
(105, 'Dutch', 'dut'),
(106, 'Dutch2', 'nld'),
(107, 'Dyula', 'dyu'),
(108, 'Dzongkha', 'dzo'),
(109, 'Efik', 'efi'),
(110, 'Egyptian (Ancient)', 'egy'),
(111, 'Ekajuk', 'eka'),
(112, 'Greek, Modern (1453- )', 'ell'),
(113, 'Greek, Modern (1453- )2', 'gre'),
(114, 'Elamite', 'elx'),
(115, 'English', 'eng'),
(116, 'English, Middle (1100-1500)', 'enm'),
(117, 'Esperanto', 'epo'),
(118, 'Eskimo (Other)', 'esk'),
(119, 'Spanish', 'esl'),
(120, 'Spanish2', 'spa'),
(121, 'Estonian', 'est'),
(122, 'Ethiopic', 'eth'),
(123, 'Ewe', 'ewe'),
(124, 'Ewondo', 'ewo'),
(125, 'Fang', 'fan'),
(126, 'Faroese', 'fao'),
(127, 'Persian', 'fas'),
(128, 'Persian', 'per'),
(129, 'Fanti', 'fat'),
(130, 'Fijian', 'fij'),
(131, 'Finnish', 'fin'),
(132, 'Finno-Ugrian (Other)', 'fiu'),
(133, 'Fon', 'fon'),
(134, 'French', 'fra'),
(135, 'French2', 'fre'),
(136, 'French, Middel (ca. 1400-1600)', 'frm'),
(137, 'French, Old (ca. 842-1400)', 'fro'),
(138, 'Friesian', 'fry'),
(139, 'Fulah', 'ful'),
(140, 'Ga', 'gaa'),
(141, 'Gaelic (Scots)', 'gae'),
(142, 'Gaelic (Scots)2', 'gdh'),
(143, 'Irish', 'gai'),
(144, 'Irish2', 'iri'),
(145, 'Gayo', 'gay'),
(146, 'Germanic (Other)', 'gem'),
(147, 'Georgian', 'geo'),
(148, 'Georgian2', 'kat'),
(149, 'Gilbertese', 'gil'),
(150, 'Gallegan', 'glg'),
(151, 'German, Middle High (ca. 1050-1500)', 'gmh'),
(152, 'German, Old High (ca. 750-1050)', 'goh'),
(153, 'Gondi', 'gon'),
(154, 'Gothic', 'got'),
(155, 'Grebo', 'grb'),
(156, 'Greek, Ancient (to 1453)', 'grc'),
(157, 'Guarani', 'grn'),
(158, 'Gujarati', 'guj'),
(159, 'Haida', 'hai'),
(160, 'Hausa', 'hau'),
(161, 'Hawaiian', 'haw'),
(162, 'Hebrew', 'heb'),
(163, 'Herero', 'her'),
(164, 'Hiligaynon', 'hil'),
(165, 'Himachali', 'him'),
(166, 'Hindi', 'hin'),
(167, 'Hiri Motu', 'hmo'),
(168, 'Hungarian', 'hun'),
(169, 'Hupa', 'hup'),
(170, 'Iban', 'iba'),
(171, 'Igbo', 'ibo'),
(172, 'Icelandic', 'ice'),
(173, 'Icelandic2', 'isl'),
(174, 'Ijo', 'ijo'),
(175, 'Inuktitut', 'iku'),
(176, 'Interlingue', 'ile'),
(177, 'Iloko', 'ilo'),
(178, 'Interlingua (International Auxilary Language Association)', 'ina'),
(179, 'Indic (Other)', 'inc'),
(180, 'Indonesian', 'ind'),
(181, 'Indo-European (Other)', 'ine'),
(182, 'Inupiak', 'ipk'),
(183, 'Iranian (Other)', 'ira'),
(184, 'Iroquoian languages', 'iro'),
(185, 'Italian', 'ita'),
(186, 'Javanese', 'jav'),
(187, 'Javanese2', 'jaw'),
(188, 'Japanese', 'jpn'),
(189, 'Judeo-Persian', 'jpr'),
(190, 'Judeo-Arabic', 'jrb'),
(191, 'Kara-Kalpak', 'kaa'),
(192, 'Kabyle', 'kab'),
(193, 'Kachin', 'kac'),
(194, 'Greenlandic', 'kal'),
(195, 'Kamba', 'kam'),
(196, 'Kannada', 'kan'),
(197, 'Karen', 'kar'),
(198, 'Kashmiri', 'kas'),
(199, 'Kanuri', 'kau'),
(200, 'Kawi', 'kaw'),
(201, 'Kazakh', 'kaz'),
(202, 'Khasi', 'kha'),
(203, 'Khoisan (Other)', 'khi'),
(204, 'Khmer', 'khm'),
(205, 'Khotanese', 'kho'),
(206, 'Kikuyu', 'kik'),
(207, 'Kinyarwanda', 'kin'),
(208, 'Kirghiz', 'kir'),
(209, 'Konkani', 'kok'),
(210, 'Kongo', 'kon'),
(211, 'Korean', 'kor'),
(212, 'Kpelle', 'kpe'),
(213, 'Kru', 'kro'),
(214, 'Kurukh', 'kru'),
(215, 'Kuanyama', 'kua'),
(216, 'Kurdish', 'kur'),
(217, 'Kusaie', 'kus'),
(218, 'Kutenai', 'kut'),
(219, 'Ladino', 'lad'),
(220, 'Lahnda', 'lah'),
(221, 'Lamba', 'lam'),
(222, 'Lao', 'lao'),
(223, 'Lapp languages', 'lap'),
(224, 'Latin', 'lat'),
(225, 'Latvian', 'lav'),
(226, 'Lingala', 'lin'),
(227, 'Lithuanian', 'lit'),
(228, 'Mongo', 'lol'),
(229, 'Lozi', 'loz'),
(230, 'Luba-Katanga', 'lub'),
(231, 'Ganda', 'lug'),
(232, 'Luiseno', 'lui'),
(233, 'Lunda', 'lun'),
(234, 'Luo (Kenya and Tanzania)', 'luo'),
(235, 'Macedonian', 'mac'),
(236, 'Macedonian', 'mke'),
(237, 'Madurese', 'mad'),
(238, 'Magahi', 'mag'),
(239, 'Marshall', 'mah'),
(240, 'Maithili', 'mai'),
(241, 'Makasar', 'mak'),
(242, 'Malayalam', 'mal'),
(243, 'Mandingo', 'man'),
(244, 'Maori', 'mao'),
(245, 'Maori', 'mri'),
(246, 'Austronesian (Other)', 'map'),
(247, 'Marathi', 'mar'),
(248, 'Masai', 'mas'),
(249, 'Manx', 'max'),
(250, 'Malay', 'may'),
(251, 'Malay', 'msa'),
(252, 'Mende', 'men'),
(253, 'Micmac', 'mic'),
(254, 'Minangkabau', 'min'),
(255, 'Miscellaneous (Other)', 'mis'),
(256, 'Mon-Khmer (Other)', 'mkh'),
(257, 'Malagasy', 'mlg'),
(258, 'Maltese', 'mlt'),
(259, 'Manipuri', 'mni'),
(260, 'Manobo languages', 'mno'),
(261, 'Mohawk', 'moh'),
(262, 'Moldavian', 'mol'),
(263, 'Mongolian', 'mon'),
(264, 'Mossi', 'mos'),
(265, 'Multiple languages', 'mul'),
(266, 'Munda (Other)', 'mun'),
(267, 'Creek', 'mus'),
(268, 'Marwari', 'mwr'),
(269, 'Mayan languages', 'myn'),
(270, 'Aztec', 'nah'),
(271, 'North American Indian (Other)', 'nai'),
(272, 'Nauru', 'nau'),
(273, 'Navajo', 'nav'),
(274, 'Ndebele (Zimbabwe)', 'nde'),
(275, 'Ndonga', 'ndo'),
(276, 'Nepali', 'nep'),
(277, 'Newari', 'new'),
(278, 'Niger-Kordofanian (Other)', 'nic'),
(279, 'Niuean', 'niu'),
(280, 'Old Norse', 'non'),
(281, 'Norwegian', 'nor'),
(282, 'Northern Sohto', 'nso'),
(283, 'Nubian languages', 'nub'),
(284, 'Nyanja', 'nya'),
(285, 'Nyamwezi', 'nym'),
(286, 'Nyankole', 'nyn'),
(287, 'Nyoro', 'nyo'),
(288, 'Nzima', 'nzi'),
(289, 'Langue d''oc (post 1500)', 'oci'),
(290, 'Ojibwa', 'oji'),
(291, 'Oriya', 'ori'),
(292, 'Oromo', 'orm'),
(293, 'Osage', 'osa'),
(294, 'Ossetic', 'oss'),
(295, 'Turkish, Ottoman', 'ota'),
(296, 'Otomian languages', 'oto'),
(297, 'Papuan-Australian (Other)', 'paa'),
(298, 'Pangasinan', 'pag'),
(299, 'Pahlavi', 'pal'),
(300, 'Pampanga', 'pam'),
(301, 'Panjabi', 'pan'),
(302, 'Papiamento', 'pap'),
(303, 'Palauan', 'pau'),
(304, 'Old Persian (ca. 600-400 B.C.)', 'peo'),
(305, 'Pali', 'pli'),
(306, 'Polish', 'pol'),
(307, 'Ponape', 'pon'),
(308, 'Portuguese', 'por'),
(309, 'Prakrit languages', 'pra'),
(310, 'Provencal, Old (to 1500)', 'pro'),
(311, 'Pushto', 'pus'),
(312, 'Quechua', 'que'),
(313, 'Rajasthani', 'raj'),
(314, 'Rarotongan', 'rar'),
(315, 'Romance (Other)', 'roa'),
(316, 'Raeto-Romance', 'roh'),
(317, 'Romany', 'rom'),
(318, 'Romanian', 'ron'),
(319, 'Romanian2', 'rum'),
(320, 'Rundi', 'run'),
(321, 'Russian', 'rus'),
(322, 'Sandawe', 'sad'),
(323, 'Sango', 'sag'),
(324, 'South American Indian (Other)', 'sai'),
(325, 'Salishan languages', 'sal'),
(326, 'Samaritan Aramaic', 'sam'),
(327, 'Sanskrit', 'san'),
(328, 'Scots', 'sco'),
(329, 'Serbo-Croatian', 'scr'),
(330, 'Selkup', 'sel'),
(331, 'Semitic (Other)', 'sem'),
(332, 'Shan', 'shn'),
(333, 'Sidamo', 'sid'),
(334, 'Sinhalese', 'sin'),
(335, 'Siouan languages', 'sio'),
(336, 'Sino-Tibetan (Other)', 'sit'),
(337, 'Slavic (Other)', 'sla'),
(338, 'Slovak', 'slk'),
(339, 'Slovak2', 'slo'),
(340, 'Slovenian', 'slv'),
(341, 'Samoan', 'smo'),
(342, 'Shona', 'sna'),
(343, 'Sindhi', 'snd'),
(344, 'Sogdian', 'sog'),
(345, 'Somali', 'som'),
(346, 'Songhai', 'son'),
(347, 'Sotho', 'sot'),
(348, 'Serer', 'srr'),
(349, 'Nilo-Saharan (Other)', 'ssa'),
(350, 'Swazi', 'ssw'),
(351, 'Sukuma', 'suk'),
(352, 'Sundanese', 'sun'),
(353, 'Susu', 'sus'),
(354, 'Sumerian', 'sux'),
(355, 'Swedish', 'sve'),
(356, 'Swahili', 'swa'),
(357, 'Swedish2', 'swe'),
(358, 'Syriac', 'syr'),
(359, 'Tahitian', 'tah'),
(360, 'Tamil', 'tam'),
(361, 'Tatar', 'tat'),
(362, 'Telugu', 'tel'),
(363, 'Timne', 'tem'),
(364, 'Tereno', 'ter'),
(365, 'Tajik', 'tgk'),
(366, 'Tagalog', 'tgl'),
(367, 'Thai', 'tha'),
(368, 'Tigre', 'tig'),
(369, 'Tigrinya', 'tir'),
(370, 'Tivi', 'tiv'),
(371, 'Tlingit', 'tli'),
(372, 'Tonga (Nyasa)', 'tog'),
(373, 'Tonga (Tonga Islands)', 'ton'),
(374, 'Truk', 'tru'),
(375, 'Tsimshian', 'tsi'),
(376, 'Tswana', 'tsn'),
(377, 'Tsonga', 'tso'),
(378, 'Turkmen', 'tuk'),
(379, 'Tumbuka', 'tum'),
(380, 'Turkish', 'tur'),
(381, 'Altaic (Other)', 'tut'),
(382, 'Twi', 'twi'),
(383, 'Ugaritic', 'uga'),
(384, 'Uighur', 'uig'),
(385, 'Ukrainian', 'ukr'),
(386, 'Umbundu', 'umb'),
(387, 'Undetermined', 'und'),
(388, 'Urdu', 'urd'),
(389, 'Uzbek', 'uzb'),
(390, 'Vai', 'vai'),
(391, 'Venda', 'ven'),
(392, 'Vietnamese', 'vie'),
(393, 'Volapuk', 'vol'),
(394, 'Votic', 'vot'),
(395, 'Wakashan languages', 'wak'),
(396, 'Walamo', 'wal'),
(397, 'Waray', 'war'),
(398, 'Washo', 'was'),
(399, 'Sorbian languages', 'wen'),
(400, 'Wolof', 'wol'),
(401, 'Xhosa', 'xho'),
(402, 'Yao', 'yao'),
(403, 'Yap', 'yap'),
(404, 'Yiddish', 'yid'),
(405, 'Yoruba', 'yor'),
(406, 'Zapotec', 'zap'),
(407, 'Zenaga', 'zen'),
(408, 'Zhuang', 'zha'),
(409, 'Zulu', 'zul'),
(410, 'Zuni', 'zun');

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

CREATE TABLE IF NOT EXISTS `module` (
  `module_id` int(11) NOT NULL AUTO_INCREMENT,
  `module_name` varchar(255) DEFAULT NULL,
  `module_description` text,
  `module_perms` varchar(255) DEFAULT NULL,
  `module_header` varchar(255) DEFAULT NULL,
  `module_footer` varchar(255) DEFAULT NULL,
  `module_publish` char(1) DEFAULT NULL,
  `list_order` int(11) DEFAULT NULL,
  `language_code_1` varchar(4) DEFAULT NULL,
  `language_code_2` varchar(4) DEFAULT NULL,
  `language_code_3` varchar(4) DEFAULT NULL,
  `language_code_4` varchar(4) DEFAULT NULL,
  `language_code_5` varchar(4) DEFAULT NULL,
  `language_file_1` varchar(255) DEFAULT NULL,
  `language_file_2` varchar(255) DEFAULT NULL,
  `language_file_3` varchar(255) DEFAULT NULL,
  `language_file_4` varchar(255) DEFAULT NULL,
  `language_file_5` varchar(255) DEFAULT NULL,
  `module_label_1` varchar(255) DEFAULT NULL,
  `module_label_2` varchar(255) DEFAULT NULL,
  `module_label_3` varchar(255) DEFAULT NULL,
  `module_label_4` varchar(255) DEFAULT NULL,
  `module_label_5` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12840 ;

--
-- Dumping data for table `module`
--

INSERT INTO `module` (`module_id`, `module_name`, `module_description`, `module_perms`, `module_header`, `module_footer`, `module_publish`, `list_order`, `language_code_1`, `language_code_2`, `language_code_3`, `language_code_4`, `language_code_5`, `language_file_1`, `language_file_2`, `language_file_3`, `language_file_4`, `language_file_5`, `module_label_1`, `module_label_2`, `module_label_3`, `module_label_4`, `module_label_5`) VALUES
(1, 'admin', '<H4>ADMINISTRATIVE USERS ONLY</H4>\r\n\r\n<P>Only used for the following:</P>\r\n<OL>\r\n\r\n<LI>User Maintenance</LI>\r\n<LI>Module Maintenance</LI>\r\n<LI>Function Maintenance</LI>\r\n</OL>\r\n', 'admin', 'header.ihtml', 'footer.ihtml', 'Y', 1, 'eng', 'esl', '', '', '', 'lang_eng.inc', 'lang_esl.inc', '', '', '', 'Admin', 'Admin', '', '', ''),
(2, 'product', '<P>Here you can adminster your online catalog of products.  The Product Administrator allows you to create product categories, create new products, edit product attributes, and add product items for each attribute value.</P>', 'storeadmin,admin,demo', 'header.ihtml', 'footer.ihtml', 'Y', 6, 'eng', 'esl', '', '', '', 'lang_en.inc', 'lang_es.inc', '', '', '', 'Products', 'Mis<BR>Productos', '', '', ''),
(3, 'vendor', '<H4>ADMINISTRATIVE USERS ONLY</H4>\r\n<P>Here you can manage the vendors on the phpShop system.</P>', 'admin', 'header.ihtml', 'footer.ihtml', 'Y', 2, 'eng', 'esl', '', '', '', 'lang_en.inc', 'lang_es.inc', '', '', '', 'Vendors', 'Los<BR>Distribuidores', '', '', ''),
(4, 'shopper', '<P>Manage shoppers in your store.  Allows you to create shopper groups.  Shopper groups can be used when setting the price for a product.  This allows you to create different prices for different types of users.  An example of this would be to have a ''wholesale'' group and a ''retail'' group. </P>', 'admin,storeadmin,demo', 'header.ihtml', 'footer.ihtml', 'Y', 9, 'eng', 'esl', '', '', '', 'lang_en.inc', 'lang_es.inc', '', '', '', 'Shoppers', 'Mis<BR>Clientes', '', '', ''),
(5, 'order', '<P>View Order and Update Order Status.</P>', 'admin,storeadmin,demo', 'header.ihtml', 'footer.ihtml', 'Y', 7, 'eng', 'esl', '', '', '', 'lang_en.inc', 'lang_es.inc', '', '', '', 'Orders', 'Mis<BR>Ordenes', '', '', ''),
(6, 'msgs', 'This module is unprotected an used for displaying system messages to users.  We need to have an area that does not require authorization when things go wrong.', 'none', 'header.ihtml', 'footer.ihtml', 'N', 99, 'eng', 'esl', '', '', '', 'lang_en.inc', '', '', '', '', 'Admin', '', '', '', ''),
(7, 'shop', 'This is the Washupito store module.  This is the demo store included with the phpShop distribution.', 'none', 's_header.ihtml', 's_footer.ihtml', 'N', 99, 'eng', 'esl', '', '', '', '', '', '', '', '', 'Shop', 'Visita<BR>la Tienda', '', '', ''),
(8, 'store', '', 'storeadmin,admin,demo', 'header.ihtml', 'footer.ihtml', 'Y', 3, 'eng', 'esl', '', '', '', '', '', '', '', '', 'Store', 'Mi<BR>Tienda', '', '', ''),
(9, 'account', 'This module allows shoppers to update their account information and view previously placed orders.', 'shopper,storeadmin,admin,demo', 's_header.ihtml', 's_footer.ihtml', 'N', 99, 'eng', 'esl', '', '', '', '', '', '', '', '', 'Account', 'Account', '', '', ''),
(10, 'checkout', '', 'shopper,storeadmin,admin,demo', 'c_header.ihtml', 'c_footer.ihtml', 'N', 99, 'eng', 'esl', '', '', '', '', '', '', '', '', 'Checkout', 'Checkout', '', '', ''),
(11, 'tax', 'The tax module allows you to set tax rates for states or regions within a country.  The rate is set as a decimal figure.  For example, 2 percent tax would be 0.02.', 'admin,storeadmin,demo', 'header.ihtml', 'footer.ihtml', 'Y', 4, 'eng', 'esl', '', '', '', '', '', '', '', '', 'Taxes', 'Impuestos', '', '', ''),
(12837, 'intershipper', '<p>Configure Your shipping methods here.</p>', 'admin,storeadmin,demo', 'header.ihtml', 'footer.ihtml', 'N', 10, 'eng', 'esl', '', '', '', '', '', '', '', '', 'Shipping', '', '', '', ''),
(12838, 'zone', 'This is the zone-shipping module. Here you can manage your shipping costs according to Zones.', 'admin,storeadmin,demo', 'header.ihtml', 'footer.ihtml', 'Y', 10, 'eng', '', '', '', '', '', '', '', '', '', 'Zone Shipping', '', '', '', ''),
(12839, 'reportbasic', '', 'admin,storeadmin', 's_header.ihtml', 's_footer.ihtml', 'N', 11, 'eng', '', '', '', '', '', '', '', '', '', 'Report Basic', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE IF NOT EXISTS `modules` (
  `module_id` int(11) NOT NULL AUTO_INCREMENT,
  `module_name` varchar(100) NOT NULL,
  `module_description` text NOT NULL,
  `class_name` varchar(100) NOT NULL,
  `module_enable` varchar(3) NOT NULL DEFAULT 'no',
  `module_category` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`module_id`, `module_name`, `module_description`, `class_name`, `module_enable`, `module_category`) VALUES
(1, 'Fixed shipping rate', 'Allows to define fixed shipping rate for all orders', 'fixedShippingRate', 'yes', 'shipping'),
(2, 'Fixed shipping rate plus percentage', 'Shipping rate = Fixed shipping rate plus Percent of an order amount', 'fixedPlusPer', 'no', 'shipping'),
(3, 'Maximum of a fixed shipping rate and percent of order total', 'Customer is charges either fixed shipping rate or percent of order total, depending on what is greater', 'fixedPlusPerMax', 'no', 'shipping'),
(4, 'Percent of order total', 'Shipping rate = percentage of order total', 'perOrder', 'no', 'shipping');

-- --------------------------------------------------------

--
-- Table structure for table `module_params`
--

CREATE TABLE IF NOT EXISTS `module_params` (
  `param_id` int(11) NOT NULL AUTO_INCREMENT,
  `param_name` varchar(100) NOT NULL,
  `param_value` text NOT NULL,
  `param_control` varchar(30) NOT NULL,
  `param_data_type` varchar(30) NOT NULL,
  `param_description` text NOT NULL,
  `module_id` int(11) NOT NULL,
  PRIMARY KEY (`param_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `module_params`
--

INSERT INTO `module_params` (`param_id`, `param_name`, `param_value`, `param_control`, `param_data_type`, `param_description`, `module_id`) VALUES
(1, 'Shipping rate', '5.00', 'textbox', 'int', 'Please provide shipping rate (in conventional units)', 1),
(3, 'Shipping rate', '10.00', 'textbox', 'int', 'Please provide shipping rate (in conventional units)', 2),
(8, 'Percent of an order amount', '1.00', 'textbox', 'int', 'Percent of an order amount (please input a number from 0 to 100)', 4),
(4, 'Shipping rate', '10.00', 'textbox', 'int', 'Shipping rate = MAX ( fixed rate , percent of an order amount)', 3);

-- --------------------------------------------------------

--
-- Table structure for table `my_cart`
--

CREATE TABLE IF NOT EXISTS `my_cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_id` text NOT NULL,
  `product_code` varchar(50) DEFAULT NULL,
  `product_id` text NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `product_image` text NOT NULL,
  `product_price` decimal(10,2) NOT NULL,
  `product_description` text,
  `product_variant_details` text,
  `product_qty` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `selected_product_variant` int(11) DEFAULT NULL,
  `extras` decimal(10,2) DEFAULT NULL,
  `stock_ref` varchar(10) DEFAULT NULL,
  `qty_limit` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=143 ;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_number` varchar(32) DEFAULT NULL,
  `order_subtotal` decimal(10,2) DEFAULT NULL,
  `order_tax` decimal(10,2) DEFAULT NULL,
  `order_shipping` decimal(10,2) DEFAULT NULL,
  `order_status` varchar(20) NOT NULL,
  `order_date` varchar(10) NOT NULL,
  `order_comments` text NOT NULL,
  `payment_method` varchar(20) NOT NULL,
  `customer_name` text NOT NULL,
  `customer_email` text NOT NULL,
  `shipping_address` text NOT NULL,
  `state` text NOT NULL,
  `city` text NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country` varchar(240) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

-- --------------------------------------------------------

--
-- Table structure for table `order_item`
--

CREATE TABLE IF NOT EXISTS `order_item` (
  `order_item_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_code` text,
  `product_quantity` int(11) DEFAULT NULL,
  `product_price` decimal(10,2) DEFAULT NULL,
  `product_name` text NOT NULL,
  `sub_total` decimal(10,2) NOT NULL,
  `order_number` text NOT NULL,
  `stock_ref` varchar(10) DEFAULT NULL,
  `product_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`order_item_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `order_item`
--

INSERT INTO `order_item` (`order_item_id`, `product_code`, `product_quantity`, `product_price`, `product_name`, `sub_total`, `order_number`, `stock_ref`, `product_id`) VALUES
(25, 'TESTPRO', 1, '1.99', 'Test Product  ', '1.99', '21', 'product_ba', '12b70e0d0cedd784703726fcac130114');

-- --------------------------------------------------------

--
-- Table structure for table `order_payment`
--

CREATE TABLE IF NOT EXISTS `order_payment` (
  `order_id` int(11) NOT NULL DEFAULT '0',
  `payment_method_id` int(11) DEFAULT NULL,
  `order_payment_number` blob,
  `order_payment_expire` int(11) DEFAULT NULL,
  `order_payment_name` varchar(255) DEFAULT NULL,
  `order_payment_log` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_payment`
--

INSERT INTO `order_payment` (`order_id`, `payment_method_id`, `order_payment_number`, `order_payment_expire`, `order_payment_name`, `order_payment_log`) VALUES
(1, 1, 0xa647cfe3b119fc92ff7f2afbfca0eee8, 1143864000, 'John Smith', 'Payment information captured for later processing.<BR>');

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE IF NOT EXISTS `order_status` (
  `order_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_status_code` char(1) NOT NULL DEFAULT '',
  `order_status_name` varchar(64) DEFAULT NULL,
  `list_order` int(11) DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_status_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` (`order_status_id`, `order_status_code`, `order_status_name`, `list_order`, `vendor_id`) VALUES
(1, 'P', 'Pending', 1, 1),
(2, 'C', 'Confirmed', 1, 1),
(3, 'X', 'Cancelled', 3, 1),
(4, 'S', 'Shipped', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `payment_method`
--

CREATE TABLE IF NOT EXISTS `payment_method` (
  `payment_method_id` int(11) NOT NULL AUTO_INCREMENT,
  `vendor_id` int(11) DEFAULT NULL,
  `payment_method_name` varchar(255) DEFAULT NULL,
  `shopper_group_id` int(11) DEFAULT NULL,
  `payment_method_discount` decimal(10,2) DEFAULT NULL,
  `list_order` int(11) DEFAULT NULL,
  `payment_method_code` varchar(8) DEFAULT NULL,
  `enable_processor` char(1) DEFAULT NULL,
  PRIMARY KEY (`payment_method_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `payment_method`
--

INSERT INTO `payment_method` (`payment_method_id`, `vendor_id`, `payment_method_name`, `shopper_group_id`, `payment_method_discount`, `list_order`, `payment_method_code`, `enable_processor`) VALUES
(1, 1, 'Visa', 5, '0.00', 1, 'VISA', ''),
(2, 1, 'Master Card', 5, '0.00', 2, 'MC', ''),
(3, 1, 'American Express', 5, '0.00', 3, 'AMEX', NULL),
(4, 1, 'Purchase Order', 6, '0.00', 4, 'PO', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payment_options`
--

CREATE TABLE IF NOT EXISTS `payment_options` (
  `pm_id` int(11) NOT NULL AUTO_INCREMENT,
  `paypal_id` text,
  `paypal_api_username` text,
  `paypal_api_password` text,
  `paypal_api_signature` text,
  `bank_deposit` text,
  `bank_deposit_instructions` text,
  `money_order` text,
  `money_order_instructions` text,
  `bank_check` text,
  `bank_check_instructions` text NOT NULL,
  `activate_paypal` varchar(3) DEFAULT 'no',
  `activate_bank_deposit` varchar(3) DEFAULT 'no',
  `activate_money_order` varchar(3) DEFAULT 'no',
  `activate_bank_check` varchar(3) DEFAULT 'no',
  PRIMARY KEY (`pm_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `payment_options`
--

INSERT INTO `payment_options` (`pm_id`, `paypal_id`, `paypal_api_username`, `paypal_api_password`, `paypal_api_signature`, `bank_deposit`, `bank_deposit_instructions`, `money_order`, `money_order_instructions`, `bank_check`, `bank_check_instructions`, `activate_paypal`, `activate_bank_deposit`, `activate_money_order`, `activate_bank_check`) VALUES
(1, 'info@youremail.com', NULL, NULL, NULL, 'Direct Credit Information\r\n\r\nDirect Credit is where you deposit the funds into our bank account, using phone or internet banking or by manually depositing the money in our account.\r\n\r\n', 'Bank:   ABC Bank\r\nName:  ABC Co \r\nACC:    83 234 0000\r\n\r\nPlease write your instructions here\r\n', 'Please write instructions here', '', 'Please enter your instructions here', '', 'yes', 'yes', 'no', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stock_options` varchar(50) DEFAULT NULL,
  `low_stock_level` int(11) NOT NULL,
  `availability` text NOT NULL,
  `product_name` text NOT NULL,
  `product_description` text NOT NULL,
  `product_overview` text NOT NULL,
  `product_price` decimal(10,2) NOT NULL,
  `product_deal_price` decimal(10,2) DEFAULT '0.00',
  `category_id` int(11) DEFAULT NULL,
  `product_id` text NOT NULL,
  `set_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `product_code` varchar(50) DEFAULT NULL,
  `product_qty` int(11) DEFAULT '0',
  `is_featured` varchar(3) NOT NULL DEFAULT 'no',
  `is_special` varchar(3) NOT NULL DEFAULT 'no',
  `is_new` varchar(3) NOT NULL DEFAULT 'no',
  `is_clearence` varchar(3) DEFAULT 'no',
  `free_shipping` varchar(3) DEFAULT 'no',
  `tags` text,
  `is_coming_soon` varchar(3) DEFAULT 'no',
  `product_status` varchar(10) DEFAULT 'online',
  `product_type` varchar(15) DEFAULT 'physical',
  `variant_level_stock` varchar(3) DEFAULT 'no',
  `stock_variant_group_id` int(11) DEFAULT NULL,
  `taxable` varchar(3) DEFAULT 'no',
  `currency` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=170 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `stock_options`, `low_stock_level`, `availability`, `product_name`, `product_description`, `product_overview`, `product_price`, `product_deal_price`, `category_id`, `product_id`, `set_id`, `brand_id`, `product_code`, `product_qty`, `is_featured`, `is_special`, `is_new`, `is_clearence`, `free_shipping`, `tags`, `is_coming_soon`, `product_status`, `product_type`, `variant_level_stock`, `stock_variant_group_id`, `taxable`, `currency`) VALUES
(148, 'no_stock_level', 0, 'in_stock', 'Boss In Motion', 'Hugo Boss launched Boss In Motion in 2002 as a sporty zesty fragrance for men.', 'This fragrance is energy packed into a sleek, chrome orb. The scent is sensational with stimulating notes of orange, pink pepper, basil and violet. The Boss in Motion man is motivated, always on the go and headed in the right direction.', '79.00', '0.00', NULL, '474004884c02508725cc12e7df34bdd1', NULL, 31, 'BOSS2343', 1, 'no', 'no', 'yes', 'no', 'no', '', 'no', 'online', 'physical', 'no', -1, 'no', ''),
(149, 'no_stock_level', 0, 'in_stock', 'Boss Pure', 'Hugo Boss launched Boss Pure in 2008 as a fresh aquatic fragrance for men focused on body and mind balance.', 'For all of those meer mortals that don''t have a waterfall to dive through each day Boss Pure offers the perfect alternative. Get ready to feel fresh and energetic with notes of water, fig, hyacinth and massoia wood. The Boss Pure man is dashing and fresh.', '79.00', '0.00', NULL, '373be587204662169395cc844587a6c1', NULL, 31, 'BOSS234', 1, 'no', 'no', 'no', 'no', 'no', 'Boss', 'no', 'online', 'physical', 'no', -1, 'no', ''),
(150, 'no_stock_level', 0, 'in_stock', 'CK One', 'Calvin Klein launched ck One in 1994 as an effortless citrus fragrance for both men and woman.', 'ck One is a fresh citrus fragrance for both men and women. This popular and timeless fragrance combines notes of bergamot, cardamom, pineapple and jasmine producing a light and refreshing fragrance that really can be worn by both men and women. This is one scent that will never â€œover powerâ€.', '49.00', '0.00', NULL, '7eb2930d22ef48f9eb5922c9dadab171', NULL, 30, '', 1, 'no', 'no', 'no', 'no', 'no', 'CK', 'no', 'online', 'physical', 'no', -1, 'no', ''),
(151, 'no_stock_level', 0, 'in_stock', 'Casio Ana-Digi Gents Watch', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborumLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '69.00', '0.00', NULL, 'a6d512bd7fc2e104b4e53c291351dc3a', NULL, 37, 'CASIO2892', 1, 'no', 'no', 'no', 'no', 'no', 'Casio', 'no', 'online', 'physical', 'no', -1, 'no', ''),
(152, 'no_stock_level', 0, 'in_stock', 'Casio Duo Mens Multi-Dial Watch', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '39.00', '0.00', NULL, 'e333e61553beb13fd1c303f5fca0b368', NULL, 37, 'CASIO289', 1, 'no', 'no', 'no', 'no', 'no', 'Watches', 'no', 'online', 'physical', 'no', -1, 'no', ''),
(153, 'no_stock_level', 0, 'in_stock', 'Fossil White Mother Of Pearl Goldtone', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '69.00', '0.00', NULL, '47f67cf0f99295911ef6ee6b32db8aba', NULL, 38, 'FOSSIL021', 1, 'no', 'no', 'no', 'no', 'no', 'Fossil', 'no', 'online', 'physical', 'no', -1, 'no', ''),
(154, 'no_stock_level', 0, 'in_stock', 'Fossil Silver Dial Duotone Gents Watch', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '49.00', '0.00', NULL, 'e10633542f224f7cb6f32a58d88d4989', NULL, 38, 'FOSSIL0212', 1, 'no', 'no', 'no', 'no', 'no', '', 'no', 'online', 'physical', 'no', -1, 'no', ''),
(155, 'no_stock_level', 0, 'in_stock', 'Citizen Calibre 3100 Blue Dial Mens Watch', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '89.00', '0.00', NULL, 'af645cbfe3c8897f16a09205f86af932', NULL, 36, 'CITIZEN0291', 1, 'no', 'no', 'no', 'no', 'no', 'Citizen ,Watches', 'no', 'online', 'physical', 'no', -1, 'no', ''),
(146, 'no_stock_level', 0, 'in_stock', '1 Le Bateleur by D&G', 'D&G launched the D&G fragrances collection on 2009 as the ultimate art of self-expression: one collection, five eternal personalities.', 'With characteristic audacity, D&G unveils a wardrobe of five, mesmerising fragrances that answer the fundamental human question: â€œWho am... I? Who do I want to be?â€\r\n\r\nAromatic top notes, yielding to an aquatic heart, on an evocative cedarwood and vetyver base\r\n\r\nThe torrid heat of Le Bateleurâ€™s beginnings cools into an aquatic heart, before settling into an earthily textured base. Fiery yet bracing, fluid yet grounded, the scent is symphony of perfectly poised contradictions.', '99.00', '0.00', NULL, '6c8ddbae3e0c4302bd04d50704a2788e', NULL, 24, 'SKUDGW', 1, 'no', 'no', 'no', 'no', 'no', '', 'no', 'online', 'physical', 'no', -1, 'yes', ''),
(147, 'no_stock_level', 0, 'in_stock', 'Acqua di GiÃ² by Giorgio Armani', 'Armani launched Acqua di GiÃ² in 1995 as an oceanic floral fragrance for women. Pronounced arr-quar da gee-ohh.', 'Repeat after us, Giorgio Armani is a God, Giorgio The ultimate in sleek Italian style, his clothes turn mere mortals into Michelle Pfeiffer-esque figures (sheâ€™s a major fan) and his fragrances add the finishing touch. This fresh floral scent is one of his best.', '99.00', '0.00', NULL, '756fae3699f971b8f0f05ad34698dab7', NULL, 27, '', 1, 'yes', 'no', 'no', 'no', 'no', '', 'no', 'online', 'physical', 'no', -1, 'no', ''),
(156, 'no_stock_level', 0, 'in_stock', 'Citizen Expandable Bracelet Ladies Watch', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '89.00', '0.00', NULL, '61753661cd842e4e8744536e05ba92c3', NULL, 36, 'CITIZEN0291', 1, 'no', 'no', 'no', 'no', 'no', 'Citizen,Watches', 'no', 'online', 'physical', 'no', -1, 'no', ''),
(157, 'no_stock_level', 0, 'in_stock', 'Spring Drive Chronograph', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '0.00', '0.00', NULL, '35f8810732afbf5deae4490f6abdf966', NULL, 35, 'SEIKO12', 1, 'no', 'no', 'no', 'no', 'no', '', 'no', 'online', 'physical', 'no', -1, 'no', ''),
(158, 'no_stock_level', 0, 'in_stock', 'Automatic Chronograph', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '39.00', '0.00', NULL, '8515c3dd806bb5430a4ab510b202ca8d', NULL, 35, 'SEIKO122', 1, 'no', 'no', 'no', 'no', 'no', 'Seiko ,Watches', 'no', 'online', 'physical', 'no', -1, 'no', ''),
(159, 'no_stock_level', 0, 'in_stock', 'Double Retrograde Automatic', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '39.00', '0.00', NULL, 'e3d6ad832e120557d1104c13d0196983', NULL, 35, 'SEIKO0121', 1, 'no', 'no', 'yes', 'no', 'no', 'Seiko, Watches', 'no', 'online', 'physical', 'no', -1, 'no', ''),
(160, 'no_stock_level', 0, 'in_stock', 'Canon EOS 500D', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '799.00', '0.00', NULL, '77505a3716b687f591eb400c26c26791', NULL, 42, 'CANON32', 1, 'no', 'no', 'yes', 'no', 'no', 'Canon, Camera', 'no', 'online', 'physical', 'no', -1, 'no', ''),
(161, 'no_stock_level', 0, 'in_stock', 'Canon EOS 50D Body', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '999.00', '0.00', NULL, 'f6cccbb131cdfa7af68cc7b9db3712b3', NULL, 42, 'CANON323', 1, 'no', 'no', 'no', 'no', 'no', 'Camera, Canon', 'no', 'online', 'physical', 'no', -1, 'no', ''),
(165, 'no_stock_level', 0, 'in_stock', ' Nikon DSLR D300S Kit (16-85mm VR) Digital Camera', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2900.00', '0.00', NULL, 'd08056de5b7d00c6bb10c668ad44147f', NULL, 40, 'NIKON23', 1, 'yes', 'no', 'no', 'no', 'no', 'Nikon DSLR', 'no', 'online', 'physical', 'no', -1, 'no', ''),
(166, 'no_stock_level', 0, 'in_stock', 'Nikon DSLR D5000 Kit (18-55mm VR)', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2500.00', '0.00', NULL, '2e19f3e201ba7c003cf3e94e08b08ba0', NULL, 40, 'NIKON233', 1, 'no', 'no', 'no', 'no', 'no', 'NikonDSLR', 'no', 'online', 'physical', 'no', -1, 'no', ''),
(163, 'no_stock_level', 0, 'in_stock', ' Canon EOS 450D Kit (18-55mm IS)', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </p>\r\n\r\n<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', '899.00', '0.00', NULL, 'daa2e6a2da24710947a872b178065648', NULL, 42, 'CANON32313', 1, 'no', 'no', 'no', 'no', 'no', 'Canon', 'no', 'online', 'physical', 'no', -1, 'no', ''),
(164, 'no_stock_level', 0, 'in_stock', ' Canon EOS 450D Kit (18-55mm IS)', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '300.00', '0.00', NULL, '4848abf55fd2176a5f9755ab395d54e5', NULL, 42, 'CANON32', 1, 'yes', 'no', 'no', 'no', 'no', 'Camera', 'no', 'online', 'physical', 'no', -1, 'no', ''),
(167, 'no_stock_level', 0, 'in_stock', ' Sanyo Xacti VPC-CA9 Digital Camera', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.	 ', '356.00', '0.00', NULL, '40a264ed10bc77ba60cde50032e7c5c2', NULL, 39, 'SONY34', 1, 'yes', 'no', 'no', 'no', 'no', 'Camera', 'no', 'online', 'physical', 'no', -1, 'no', ''),
(168, 'no_stock_level', 0, 'in_stock', 'Satellite A500', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '899.00', '0.00', NULL, 'db46456f5f18bf43ebd2681702293c82', NULL, 46, 'SatelliteA500', 1, 'no', 'no', 'no', 'no', 'no', 'Laptops', 'no', 'online', 'physical', 'no', -1, 'no', ''),
(169, 'no_stock_level', 0, 'in_stock', 'Satellite A500  16.2', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '599.00', '0.00', NULL, '1ad8be291046cb947a5eacdbde91aabb', NULL, 46, 'SatelliteA500162', 1, 'no', 'no', 'yes', 'no', 'no', 'Laptops', 'no', 'online', 'physical', 'no', -1, 'no', '');

-- --------------------------------------------------------

--
-- Table structure for table `product_attribute`
--

CREATE TABLE IF NOT EXISTS `product_attribute` (
  `product_id` int(11) NOT NULL DEFAULT '0',
  `attribute_name` char(255) NOT NULL DEFAULT '',
  `attribute_value` char(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_attribute`
--

INSERT INTO `product_attribute` (`product_id`, `attribute_name`, `attribute_value`) VALUES
(11, 'Color', 'Red'),
(12, 'Color', 'Green'),
(13, 'Color', 'Blue'),
(11, 'Size', 'Small'),
(12, 'Size', 'Medium'),
(13, 'Size', 'Large'),
(14, 'Material', 'Metal'),
(15, 'Material', 'Wood'),
(16, 'Material', 'Plastic');

-- --------------------------------------------------------

--
-- Table structure for table `product_attributes`
--

CREATE TABLE IF NOT EXISTS `product_attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` text NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `attribute_name` varchar(50) NOT NULL,
  `attribute_value` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Table structure for table `product_attribute_sku`
--

CREATE TABLE IF NOT EXISTS `product_attribute_sku` (
  `product_id` int(11) NOT NULL DEFAULT '0',
  `attribute_name` char(255) NOT NULL DEFAULT '',
  `attribute_list` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_attribute_sku`
--

INSERT INTO `product_attribute_sku` (`product_id`, `attribute_name`, `attribute_list`) VALUES
(1, 'Color', 1),
(1, 'Size', 2),
(2, 'Material', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE IF NOT EXISTS `product_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` text,
  `category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=613 ;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`id`, `product_id`, `category_id`) VALUES
(548, '756fae3699f971b8f0f05ad34698dab7', 6940),
(547, '756fae3699f971b8f0f05ad34698dab7', 6941),
(546, '756fae3699f971b8f0f05ad34698dab7', 6938),
(544, '6c8ddbae3e0c4302bd04d50704a2788e', 6938),
(545, '6c8ddbae3e0c4302bd04d50704a2788e', 6940),
(549, 'c6a8696bf759db14898d1c6ae48bc402', 6938),
(550, 'c6a8696bf759db14898d1c6ae48bc402', 6941),
(551, 'c6a8696bf759db14898d1c6ae48bc402', 6940),
(552, '474004884c02508725cc12e7df34bdd1', 6938),
(553, '474004884c02508725cc12e7df34bdd1', 6941),
(554, '58332a44d301a071c4b8dcdda7fc5cbe', 6938),
(555, '58332a44d301a071c4b8dcdda7fc5cbe', 6941),
(556, 'ba4a42d28d963a05ad602285aca32b20', 6938),
(557, 'ba4a42d28d963a05ad602285aca32b20', 6941),
(561, '373be587204662169395cc844587a6c1', 6941),
(560, '373be587204662169395cc844587a6c1', 6938),
(562, '7eb2930d22ef48f9eb5922c9dadab171', 6938),
(563, '7eb2930d22ef48f9eb5922c9dadab171', 6941),
(564, '7eb2930d22ef48f9eb5922c9dadab171', 6940),
(565, 'acf021414573e7d108693aa03c1f64e7', 6942),
(566, 'acf021414573e7d108693aa03c1f64e7', 6936),
(567, 'a6d512bd7fc2e104b4e53c291351dc3a', 6942),
(568, 'a6d512bd7fc2e104b4e53c291351dc3a', 6936),
(569, '1172787d5f0abcccc8892aec569c25c4', 6942),
(570, '1172787d5f0abcccc8892aec569c25c4', 6936),
(571, 'e333e61553beb13fd1c303f5fca0b368', 6942),
(572, 'e333e61553beb13fd1c303f5fca0b368', 6936),
(576, '47f67cf0f99295911ef6ee6b32db8aba', 6936),
(575, '47f67cf0f99295911ef6ee6b32db8aba', 6946),
(577, 'e10633542f224f7cb6f32a58d88d4989', 6946),
(578, 'e10633542f224f7cb6f32a58d88d4989', 6936),
(579, 'af645cbfe3c8897f16a09205f86af932', 6944),
(580, 'af645cbfe3c8897f16a09205f86af932', 6936),
(581, '61753661cd842e4e8744536e05ba92c3', 6944),
(582, '61753661cd842e4e8744536e05ba92c3', 6936),
(583, '35f8810732afbf5deae4490f6abdf966', 6943),
(584, '35f8810732afbf5deae4490f6abdf966', 6936),
(585, '8515c3dd806bb5430a4ab510b202ca8d', 6943),
(586, '8515c3dd806bb5430a4ab510b202ca8d', 6936),
(587, 'e3d6ad832e120557d1104c13d0196983', 6943),
(588, 'e3d6ad832e120557d1104c13d0196983', 6936),
(592, '77505a3716b687f591eb400c26c26791', 6937),
(591, '77505a3716b687f591eb400c26c26791', 6957),
(593, 'f6cccbb131cdfa7af68cc7b9db3712b3', 6957),
(594, 'f6cccbb131cdfa7af68cc7b9db3712b3', 6937),
(595, '19c47e9c35cb73e8382ebdd7ff059fc9', 6957),
(596, '19c47e9c35cb73e8382ebdd7ff059fc9', 6937),
(597, 'ecc7f27b68b8d437155f88cab71659a4', 6957),
(598, 'ecc7f27b68b8d437155f88cab71659a4', 6937),
(599, 'daa2e6a2da24710947a872b178065648', 6957),
(600, 'daa2e6a2da24710947a872b178065648', 6937),
(601, '4848abf55fd2176a5f9755ab395d54e5', 6957),
(602, '4848abf55fd2176a5f9755ab395d54e5', 6937),
(603, 'd08056de5b7d00c6bb10c668ad44147f', 6937),
(604, 'd08056de5b7d00c6bb10c668ad44147f', 6959),
(605, '2e19f3e201ba7c003cf3e94e08b08ba0', 6937),
(606, '2e19f3e201ba7c003cf3e94e08b08ba0', 6959),
(607, '40a264ed10bc77ba60cde50032e7c5c2', 6937),
(608, '40a264ed10bc77ba60cde50032e7c5c2', 6961),
(609, 'db46456f5f18bf43ebd2681702293c82', 6947),
(610, 'db46456f5f18bf43ebd2681702293c82', 6962),
(611, '1ad8be291046cb947a5eacdbde91aabb', 6947),
(612, '1ad8be291046cb947a5eacdbde91aabb', 6962);

-- --------------------------------------------------------

--
-- Table structure for table `product_category_xref`
--

CREATE TABLE IF NOT EXISTS `product_category_xref` (
  `category_id` varchar(32) DEFAULT NULL,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `product_list` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_category_xref`
--

INSERT INTO `product_category_xref` (`category_id`, `product_id`, `product_list`) VALUES
('541a03b2b0e1b6dbd972e9f5af5ca992', 1, NULL),
('6834dda8e3e6e5aa18bafc63a57fd04a', 2, NULL),
('6834dda8e3e6e5aa18bafc63a57fd04a', 3, NULL),
('6834dda8e3e6e5aa18bafc63a57fd04a', 4, NULL),
('541a03b2b0e1b6dbd972e9f5af5ca992', 5, NULL),
('541a03b2b0e1b6dbd972e9f5af5ca992', 6, NULL),
('f85e462baf927f8e53989dd969c0e430', 7, NULL),
('1c914424d2569bea3439fbcca9123a27', 8, NULL),
('2f34f8bf003a5f27bed2e8dfe0b6f33a', 9, NULL),
('1c914424d2569bea3439fbcca9123a27', 10, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE IF NOT EXISTS `product_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` text NOT NULL,
  `image_filename` text NOT NULL,
  `is_main` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=288 ;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image_filename`, `is_main`) VALUES
(1, 'ebd80c1f2ea9b4cb848d01804803301e', 'ebd80c1f2ea9b4cb848d01804803301e_34-114-528-11.jpg', 0),
(2, 'ebd80c1f2ea9b4cb848d01804803301e', 'ebd80c1f2ea9b4cb848d01804803301e_34-114-528-12.jpg', 0),
(3, 'ebd80c1f2ea9b4cb848d01804803301e', 'ebd80c1f2ea9b4cb848d01804803301e_34-114-528-13.jpg', 0),
(4, 'ebd80c1f2ea9b4cb848d01804803301e', 'ebd80c1f2ea9b4cb848d01804803301e_34-114-528-14.jpg', 0),
(5, 'ebd80c1f2ea9b4cb848d01804803301e', 'ebd80c1f2ea9b4cb848d01804803301e_34-114-528-15.jpg', 0),
(6, 'ebd80c1f2ea9b4cb848d01804803301e', 'ebd80c1f2ea9b4cb848d01804803301e_34-114-528-16.jpg', 0),
(7, 'ebd80c1f2ea9b4cb848d01804803301e', 'ebd80c1f2ea9b4cb848d01804803301e_34-114-528-17.jpg', 0),
(8, 'ebd80c1f2ea9b4cb848d01804803301e', 'ebd80c1f2ea9b4cb848d01804803301e_34-114-528-18.jpg', 0),
(9, 'ebd80c1f2ea9b4cb848d01804803301e', 'ebd80c1f2ea9b4cb848d01804803301e_34-114-528-19.jpg', 0),
(10, 'ebd80c1f2ea9b4cb848d01804803301e', 'ebd80c1f2ea9b4cb848d01804803301e_34-114-528-20.jpg', 0),
(11, '74db383172cbe57f7d507d5024d60a51', '74db383172cbe57f7d507d5024d60a51_34-114-528-11.jpg', 0),
(12, '74db383172cbe57f7d507d5024d60a51', '74db383172cbe57f7d507d5024d60a51_34-114-528-12.jpg', 0),
(13, '74db383172cbe57f7d507d5024d60a51', '74db383172cbe57f7d507d5024d60a51_34-114-528-13.jpg', 0),
(14, '74db383172cbe57f7d507d5024d60a51', '74db383172cbe57f7d507d5024d60a51_34-114-528-14.jpg', 0),
(15, '74db383172cbe57f7d507d5024d60a51', '74db383172cbe57f7d507d5024d60a51_34-114-528-15.jpg', 0),
(16, '74db383172cbe57f7d507d5024d60a51', '74db383172cbe57f7d507d5024d60a51_34-114-528-16.jpg', 0),
(17, '74db383172cbe57f7d507d5024d60a51', '74db383172cbe57f7d507d5024d60a51_34-114-528-17.jpg', 0),
(18, '74db383172cbe57f7d507d5024d60a51', '74db383172cbe57f7d507d5024d60a51_34-114-528-18.jpg', 0),
(19, '74db383172cbe57f7d507d5024d60a51', '74db383172cbe57f7d507d5024d60a51_34-114-528-19.jpg', 0),
(20, '74db383172cbe57f7d507d5024d60a51', '74db383172cbe57f7d507d5024d60a51_34-114-528-20.jpg', 0),
(21, '812af1bed7d2dd9edf374a9f6b6fd710', '812af1bed7d2dd9edf374a9f6b6fd710_34-114-528-11.jpg', 0),
(22, '812af1bed7d2dd9edf374a9f6b6fd710', '812af1bed7d2dd9edf374a9f6b6fd710_34-114-528-12.jpg', 0),
(23, '812af1bed7d2dd9edf374a9f6b6fd710', '812af1bed7d2dd9edf374a9f6b6fd710_34-114-528-13.jpg', 0),
(24, '812af1bed7d2dd9edf374a9f6b6fd710', '812af1bed7d2dd9edf374a9f6b6fd710_34-114-528-14.jpg', 0),
(25, '812af1bed7d2dd9edf374a9f6b6fd710', '812af1bed7d2dd9edf374a9f6b6fd710_34-114-528-15.jpg', 0),
(26, '812af1bed7d2dd9edf374a9f6b6fd710', '812af1bed7d2dd9edf374a9f6b6fd710_34-114-528-16.jpg', 0),
(27, '812af1bed7d2dd9edf374a9f6b6fd710', '812af1bed7d2dd9edf374a9f6b6fd710_34-114-528-17.jpg', 0),
(28, '812af1bed7d2dd9edf374a9f6b6fd710', '812af1bed7d2dd9edf374a9f6b6fd710_34-114-528-18.jpg', 0),
(29, '812af1bed7d2dd9edf374a9f6b6fd710', '812af1bed7d2dd9edf374a9f6b6fd710_34-114-528-19.jpg', 0),
(30, '812af1bed7d2dd9edf374a9f6b6fd710', '812af1bed7d2dd9edf374a9f6b6fd710_34-114-528-20.jpg', 0),
(31, 'd40df65a554dc19ffa0500c44b62ffac', 'd40df65a554dc19ffa0500c44b62ffac_34-114-528-11.jpg', 0),
(32, 'd40df65a554dc19ffa0500c44b62ffac', 'd40df65a554dc19ffa0500c44b62ffac_34-114-528-12.jpg', 0),
(33, 'd40df65a554dc19ffa0500c44b62ffac', 'd40df65a554dc19ffa0500c44b62ffac_34-114-528-13.jpg', 0),
(34, 'd40df65a554dc19ffa0500c44b62ffac', 'd40df65a554dc19ffa0500c44b62ffac_34-114-528-14.jpg', 0),
(35, 'd40df65a554dc19ffa0500c44b62ffac', 'd40df65a554dc19ffa0500c44b62ffac_34-114-528-15.jpg', 0),
(36, 'd40df65a554dc19ffa0500c44b62ffac', 'd40df65a554dc19ffa0500c44b62ffac_34-114-528-16.jpg', 0),
(37, 'd40df65a554dc19ffa0500c44b62ffac', 'd40df65a554dc19ffa0500c44b62ffac_34-114-528-17.jpg', 0),
(38, 'd40df65a554dc19ffa0500c44b62ffac', 'd40df65a554dc19ffa0500c44b62ffac_34-114-528-18.jpg', 0),
(39, 'd40df65a554dc19ffa0500c44b62ffac', 'd40df65a554dc19ffa0500c44b62ffac_34-114-528-19.jpg', 0),
(40, 'd40df65a554dc19ffa0500c44b62ffac', 'd40df65a554dc19ffa0500c44b62ffac_34-114-528-20.jpg', 0),
(263, 'af645cbfe3c8897f16a09205f86af932', 'af645cbfe3c8897f16a09205f86af932_product1_27650.jpg', 1),
(257, '1172787d5f0abcccc8892aec569c25c4', '1172787d5f0abcccc8892aec569c25c4_product3_22087_600x600.jpg', 0),
(256, '1172787d5f0abcccc8892aec569c25c4', '1172787d5f0abcccc8892aec569c25c4_product2_22087_600x600.jpg', 1),
(255, 'a6d512bd7fc2e104b4e53c291351dc3a', 'a6d512bd7fc2e104b4e53c291351dc3a_product2_15907.jpg', 0),
(201, '52807cd1e68f1bff0b8574dbbd1ec27c', '52807cd1e68f1bff0b8574dbbd1ec27c_8.JPG', 0),
(202, '52807cd1e68f1bff0b8574dbbd1ec27c', '52807cd1e68f1bff0b8574dbbd1ec27c_9.JPG', 0),
(203, '52807cd1e68f1bff0b8574dbbd1ec27c', '52807cd1e68f1bff0b8574dbbd1ec27c_10.JPG', 0),
(115, '200d145c0bf1121e8eb0de0014b440f2', '200d145c0bf1121e8eb0de0014b440f2_underground_j_l.gif', 1),
(262, 'e10633542f224f7cb6f32a58d88d4989', 'e10633542f224f7cb6f32a58d88d4989_product1_27287.jpg', 1),
(119, 'a675c94c86b39cf784f4c2e362da1f37', 'a675c94c86b39cf784f4c2e362da1f37_100_1367.jpg', 1),
(120, 'a675c94c86b39cf784f4c2e362da1f37', 'a675c94c86b39cf784f4c2e362da1f37_lifebehind_tshirt_blackwhite_l.gif', 0),
(200, '52807cd1e68f1bff0b8574dbbd1ec27c', '52807cd1e68f1bff0b8574dbbd1ec27c_7.JPG', 0),
(269, '77505a3716b687f591eb400c26c26791', '77505a3716b687f591eb400c26c26791_Canon_EOS_500D_Body_Combo.jpg', 1),
(268, 'e3d6ad832e120557d1104c13d0196983', 'e3d6ad832e120557d1104c13d0196983_s3.jpg', 1),
(267, '8515c3dd806bb5430a4ab510b202ca8d', '8515c3dd806bb5430a4ab510b202ca8d_s1.jpg', 0),
(266, '8515c3dd806bb5430a4ab510b202ca8d', '8515c3dd806bb5430a4ab510b202ca8d_s2.jpg', 1),
(194, '52807cd1e68f1bff0b8574dbbd1ec27c', '52807cd1e68f1bff0b8574dbbd1ec27c_1.JPG', 1),
(195, '52807cd1e68f1bff0b8574dbbd1ec27c', '52807cd1e68f1bff0b8574dbbd1ec27c_2.JPG', 0),
(196, '52807cd1e68f1bff0b8574dbbd1ec27c', '52807cd1e68f1bff0b8574dbbd1ec27c_3.JPG', 0),
(197, '52807cd1e68f1bff0b8574dbbd1ec27c', '52807cd1e68f1bff0b8574dbbd1ec27c_4.JPG', 0),
(198, '52807cd1e68f1bff0b8574dbbd1ec27c', '52807cd1e68f1bff0b8574dbbd1ec27c_5.JPG', 0),
(265, '35f8810732afbf5deae4490f6abdf966', '35f8810732afbf5deae4490f6abdf966_s1.jpg', 1),
(264, '61753661cd842e4e8744536e05ba92c3', '61753661cd842e4e8744536e05ba92c3_product1_27655.jpg', 1),
(261, '47f67cf0f99295911ef6ee6b32db8aba', '47f67cf0f99295911ef6ee6b32db8aba_product1_27285.jpg', 1),
(143, '19ecd6e6022c55e8c906d5a689cab64c', '19ecd6e6022c55e8c906d5a689cab64c_director_hat_black_l.gif', 1),
(259, 'e333e61553beb13fd1c303f5fca0b368', 'e333e61553beb13fd1c303f5fca0b368_product3_22087_600x600.jpg', 0),
(199, '52807cd1e68f1bff0b8574dbbd1ec27c', '52807cd1e68f1bff0b8574dbbd1ec27c_6.JPG', 0),
(147, '4abd67f650b0ba317fdbb61b6e08b5c9', '4abd67f650b0ba317fdbb61b6e08b5c9_iStock_000003943767Medium.jpg', 1),
(258, 'e333e61553beb13fd1c303f5fca0b368', 'e333e61553beb13fd1c303f5fca0b368_product2_22087_600x600.jpg', 1),
(254, 'a6d512bd7fc2e104b4e53c291351dc3a', 'a6d512bd7fc2e104b4e53c291351dc3a_product1_22087.jpg', 0),
(253, 'a6d512bd7fc2e104b4e53c291351dc3a', 'a6d512bd7fc2e104b4e53c291351dc3a_product1_15907.jpg', 1),
(252, 'acf021414573e7d108693aa03c1f64e7', 'acf021414573e7d108693aa03c1f64e7_product3_22087_600x600.jpg', 0),
(251, 'acf021414573e7d108693aa03c1f64e7', 'acf021414573e7d108693aa03c1f64e7_product3_22087_600x600.jpg', 0),
(244, 'c6a8696bf759db14898d1c6ae48bc402', 'c6a8696bf759db14898d1c6ae48bc402_boss.jpg', 1),
(245, '474004884c02508725cc12e7df34bdd1', '474004884c02508725cc12e7df34bdd1_img_bossmotion_lge.gif', 1),
(246, '58332a44d301a071c4b8dcdda7fc5cbe', '58332a44d301a071c4b8dcdda7fc5cbe_boss.jpg', 1),
(247, 'ba4a42d28d963a05ad602285aca32b20', 'ba4a42d28d963a05ad602285aca32b20_boss.jpg', 1),
(248, '373be587204662169395cc844587a6c1', '373be587204662169395cc844587a6c1_boss.jpg', 1),
(249, '7eb2930d22ef48f9eb5922c9dadab171', '7eb2930d22ef48f9eb5922c9dadab171_CKO_lge4.jpg', 1),
(250, 'acf021414573e7d108693aa03c1f64e7', 'acf021414573e7d108693aa03c1f64e7_product2_22087_600x600.jpg', 1),
(270, 'f6cccbb131cdfa7af68cc7b9db3712b3', 'f6cccbb131cdfa7af68cc7b9db3712b3_Canon_EOS_500D_Body_Combo.jpg', 1),
(242, '6c8ddbae3e0c4302bd04d50704a2788e', '6c8ddbae3e0c4302bd04d50704a2788e_1lebateleur_lge.jpg', 1),
(243, '756fae3699f971b8f0f05ad34698dab7', '756fae3699f971b8f0f05ad34698dab7_acquadigiow_lge.jpg', 1),
(275, 'd08056de5b7d00c6bb10c668ad44147f', 'd08056de5b7d00c6bb10c668ad44147f_Nikon_DSLR_D300S_Kit_16-85mm_VR.jpg', 1),
(272, 'ecc7f27b68b8d437155f88cab71659a4', 'ecc7f27b68b8d437155f88cab71659a4_Canon_Powershot_A480_QueenRed.jpg', 1),
(273, 'daa2e6a2da24710947a872b178065648', 'daa2e6a2da24710947a872b178065648_Canon-EOS-450D-18-55mm.jpg', 1),
(274, '4848abf55fd2176a5f9755ab395d54e5', '4848abf55fd2176a5f9755ab395d54e5_Canon_Powershot_A480_QueenRed.jpg', 1),
(276, '2e19f3e201ba7c003cf3e94e08b08ba0', '2e19f3e201ba7c003cf3e94e08b08ba0_Nikon_DSLR_D5000_Kit_18-55mm_VR.jpg', 1),
(277, '40a264ed10bc77ba60cde50032e7c5c2', '40a264ed10bc77ba60cde50032e7c5c2_Sanyo_Xacti_DMX-CA9_Green.jpg', 1),
(278, 'db46456f5f18bf43ebd2681702293c82', 'db46456f5f18bf43ebd2681702293c82_satelliteA500-1.jpg', 1),
(279, 'db46456f5f18bf43ebd2681702293c82', 'db46456f5f18bf43ebd2681702293c82_satelliteA500-2.jpg', 0),
(280, 'db46456f5f18bf43ebd2681702293c82', 'db46456f5f18bf43ebd2681702293c82_satelliteA500-3.jpg', 0),
(281, 'db46456f5f18bf43ebd2681702293c82', 'db46456f5f18bf43ebd2681702293c82_satelliteA500-4.jpg', 0),
(282, 'db46456f5f18bf43ebd2681702293c82', 'db46456f5f18bf43ebd2681702293c82_satelliteA500-5.jpg', 0),
(283, 'db46456f5f18bf43ebd2681702293c82', 'db46456f5f18bf43ebd2681702293c82_satelliteA500-6.jpg', 0),
(284, '1ad8be291046cb947a5eacdbde91aabb', '1ad8be291046cb947a5eacdbde91aabb_satelliteA500-1.jpg', 1),
(285, '1ad8be291046cb947a5eacdbde91aabb', '1ad8be291046cb947a5eacdbde91aabb_satelliteA500-6.jpg', 0),
(286, '1ad8be291046cb947a5eacdbde91aabb', '1ad8be291046cb947a5eacdbde91aabb_satelliteA500-4.jpg', 0),
(287, '1ad8be291046cb947a5eacdbde91aabb', '1ad8be291046cb947a5eacdbde91aabb_satelliteA500-2.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_price`
--

CREATE TABLE IF NOT EXISTS `product_price` (
  `product_price_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `product_price` decimal(10,2) DEFAULT NULL,
  `product_currency` char(16) DEFAULT NULL,
  `product_price_vdate` int(11) DEFAULT NULL,
  `product_price_edate` int(11) DEFAULT NULL,
  `cdate` int(11) DEFAULT NULL,
  `mdate` int(11) DEFAULT NULL,
  `shopper_group_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`product_price_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `product_price`
--

INSERT INTO `product_price` (`product_price_id`, `product_id`, `product_price`, `product_currency`, `product_price_vdate`, `product_price_edate`, `cdate`, `mdate`, `shopper_group_id`) VALUES
(1, 5, '24.99', 'USD', 0, 0, 950321309, 950321309, 5),
(2, 1, '4.99', 'USD', 0, 0, 950321324, 950321324, 5),
(3, 2, '49.99', 'USD', 0, 0, 950321340, 950321340, 5),
(4, 3, '24.99', 'USD', 0, 0, 950321368, 950321368, 5),
(5, 4, '19.99', 'USD', 0, 0, 950321385, 950321385, 5),
(6, 6, '1.00', 'USD', 0, 0, 950321686, 963808699, 5),
(7, 7, '149.99', 'USD', 0, 0, 950321754, 966506270, 5),
(8, 8, '220.90', 'USD', 0, 0, 950321833, 955614388, 5),
(9, 9, '48.12', 'USD', 0, 0, 950321933, 950321933, 5),
(10, 10, '74.99', 'USD', 0, 0, 950322005, 950322005, 5),
(11, 1, '2.99', 'USD', 0, 0, 955626841, 955626841, 6),
(12, 13, '14.99', 'USD', 0, 0, 955697213, 955697213, 5),
(13, 14, '79.99', 'USD', 0, 0, 962351197, 962351271, 5),
(14, 15, '49.99', 'USD', 0, 0, 962351233, 962351233, 5),
(15, 16, '59.99', 'USD', 0, 0, 962351259, 962351259, 5),
(16, 7, '2.99', 'USD', 0, 0, 966589140, 966589140, 6);

-- --------------------------------------------------------

--
-- Table structure for table `product_stock`
--

CREATE TABLE IF NOT EXISTS `product_stock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` varchar(50) NOT NULL,
  `product_qty` int(11) NOT NULL DEFAULT '0',
  `variant_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `product_variants`
--

CREATE TABLE IF NOT EXISTS `product_variants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` text NOT NULL,
  `variant_group_id` int(11) NOT NULL,
  `variant_id` int(11) NOT NULL,
  `surcharge` decimal(10,2) NOT NULL DEFAULT '0.00',
  `show_variant` varchar(3) NOT NULL DEFAULT 'yes',
  `qty` int(11) DEFAULT '0',
  `low_stock_level` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

-- --------------------------------------------------------

--
-- Table structure for table `related_products`
--

CREATE TABLE IF NOT EXISTS `related_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` text NOT NULL,
  `related_product_id` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `shipping_method`
--

CREATE TABLE IF NOT EXISTS `shipping_method` (
  `shipping_id` int(11) NOT NULL AUTO_INCREMENT,
  `shipping_name` varchar(30) NOT NULL,
  `shipping_description` text,
  `email_text` text,
  `shipping_enable` varchar(3) DEFAULT 'no',
  `module_id` int(11) DEFAULT '0',
  `sort_order` int(11) DEFAULT '0',
  PRIMARY KEY (`shipping_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `shipping_method`
--

INSERT INTO `shipping_method` (`shipping_id`, `shipping_name`, `shipping_description`, `email_text`, `shipping_enable`, `module_id`, `sort_order`) VALUES
(2, 'Fix rate shipping', 'Fix rate shipping', 'We have received your order and we will process it once the payment is clear.Thank you for your business', 'yes', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `store_banners`
--

CREATE TABLE IF NOT EXISTS `store_banners` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_name` varchar(100) NOT NULL,
  `banner_link` text NOT NULL,
  `banner_image` text NOT NULL,
  `width` varchar(3) DEFAULT NULL,
  `height` varchar(3) DEFAULT NULL,
  `external_url` text,
  `reserve_banner` varchar(3) NOT NULL DEFAULT 'no',
  `show_banner` varchar(3) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`banner_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `store_banners`
--

INSERT INTO `store_banners` (`banner_id`, `banner_name`, `banner_link`, `banner_image`, `width`, `height`, `external_url`, `reserve_banner`, `show_banner`) VALUES
(1, 'Beach Banner', '0', 'Beach Banner_Digital SLR Cameras_banner.gif', '700', '250', '#', 'yes', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `store_settings`
--

CREATE TABLE IF NOT EXISTS `store_settings` (
  `store_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_title` varchar(100) DEFAULT NULL,
  `o_fullname` varchar(100) DEFAULT NULL,
  `o_email_address` varchar(100) DEFAULT NULL,
  `b_name` varchar(100) DEFAULT NULL,
  `b_abn` varchar(15) DEFAULT NULL,
  `b_address` text,
  `b_state` varchar(30) DEFAULT NULL,
  `b_country` varchar(100) DEFAULT NULL,
  `b_phone` text,
  `b_fax` text,
  `b_email_address` varchar(100) DEFAULT NULL,
  `currency` char(3) DEFAULT 'AUD',
  `tax_rate` decimal(10,4) DEFAULT '0.0000',
  `order_prefix` varchar(10) NOT NULL,
  `google_analytics_id` varchar(20) NOT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `store_settings`
--

INSERT INTO `store_settings` (`store_id`, `store_title`, `o_fullname`, `o_email_address`, `b_name`, `b_abn`, `b_address`, `b_state`, `b_country`, `b_phone`, `b_fax`, `b_email_address`, `currency`, `tax_rate`, `order_prefix`, `google_analytics_id`) VALUES
(1, 'ecom', 'fredrick', 'fred.oluoch@ariftechnologies.com', 'ariftechnologies', '00 000 000 000', '', '', '', '', '', 'fred.oluoch@ariftechnologies.com', 'KES', '10.0000', '', 'UA-xxxxxx-x');

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE IF NOT EXISTS `sub_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `parent_cat_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=94 ;

--
-- Dumping data for table `sub_category`
--

INSERT INTO `sub_category` (`id`, `category_id`, `parent_cat_id`) VALUES
(1, 6894, 6893),
(2, 6895, 6893),
(3, 6896, 6893),
(4, 6862, 6890),
(5, 6886, 6890),
(6, 6858, 6890),
(61, 6919, 6917),
(11, 6874, 6871),
(25, 6876, 6871),
(64, 6919, 6918),
(26, 6881, 6872),
(27, 6896, 6872),
(20, 6901, 6894),
(21, 6902, 6894),
(22, 6900, 6894),
(28, 6892, 6872),
(29, 6891, 6872),
(33, 6905, 6904),
(31, 6879, 6904),
(32, 6878, 6904),
(34, 6900, 6861),
(35, 6869, 6861),
(36, 6860, 6861),
(37, 6862, 6870),
(38, 6886, 6870),
(39, 6882, 6870),
(40, 6863, 6870),
(41, 6860, 6870),
(63, 6917, 6918),
(68, 6929, 6924),
(62, 6918, 6918),
(52, 6880, 6871),
(50, 6878, 6871),
(51, 6879, 6871),
(70, 6940, 6938),
(71, 6941, 6938),
(72, 6942, 6936),
(73, 6943, 6936),
(74, 6944, 6936),
(75, 6945, 6936),
(76, 6946, 6936),
(77, 6948, 6947),
(78, 6949, 6947),
(79, 6950, 6947),
(80, 6951, 6947),
(81, 6953, 6952),
(82, 6954, 6952),
(83, 6955, 6952),
(84, 6956, 6952),
(85, 6957, 6937),
(86, 6958, 6937),
(87, 6959, 6937),
(88, 6960, 6937),
(89, 6961, 6937),
(90, 6962, 6947),
(91, 6963, 6947),
(92, 6964, 6947),
(93, 6965, 6947);

-- --------------------------------------------------------

--
-- Table structure for table `tax_rate`
--

CREATE TABLE IF NOT EXISTS `tax_rate` (
  `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT,
  `vendor_id` int(11) DEFAULT NULL,
  `tax_state` varchar(64) DEFAULT NULL,
  `tax_country` varchar(64) DEFAULT NULL,
  `mdate` int(11) DEFAULT NULL,
  `tax_rate` decimal(10,4) DEFAULT NULL,
  PRIMARY KEY (`tax_rate_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tax_rate`
--

INSERT INTO `tax_rate` (`tax_rate_id`, `vendor_id`, `tax_state`, `tax_country`, `mdate`, `tax_rate`) VALUES
(2, 1, 'GA', 'USA', 964565926, '0.0650');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE IF NOT EXISTS `user_info` (
  `user_info_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(32) NOT NULL DEFAULT '',
  `address_type` char(2) DEFAULT NULL,
  `address_type_name` varchar(32) DEFAULT NULL,
  `company` varchar(64) DEFAULT NULL,
  `title` varchar(32) DEFAULT NULL,
  `last_name` varchar(32) DEFAULT NULL,
  `first_name` varchar(32) DEFAULT NULL,
  `middle_name` varchar(32) DEFAULT NULL,
  `phone_1` varchar(32) DEFAULT NULL,
  `phone_2` varchar(32) DEFAULT NULL,
  `fax` varchar(32) DEFAULT NULL,
  `address_1` varchar(64) NOT NULL DEFAULT '',
  `address_2` varchar(64) DEFAULT NULL,
  `city` varchar(32) NOT NULL DEFAULT '',
  `state` varchar(32) NOT NULL DEFAULT '',
  `country` varchar(32) NOT NULL DEFAULT 'US',
  `zip` varchar(32) NOT NULL DEFAULT '',
  `user_email` varchar(255) DEFAULT NULL,
  `extra_field_1` varchar(255) DEFAULT NULL,
  `extra_field_2` varchar(255) DEFAULT NULL,
  `extra_field_3` varchar(255) DEFAULT NULL,
  `extra_field_4` char(1) DEFAULT NULL,
  `extra_field_5` char(1) DEFAULT NULL,
  `cdate` int(11) DEFAULT NULL,
  `mdate` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_info_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_info_id`, `user_id`, `address_type`, `address_type_name`, `company`, `title`, `last_name`, `first_name`, `middle_name`, `phone_1`, `phone_2`, `fax`, `address_1`, `address_2`, `city`, `state`, `country`, `zip`, `user_email`, `extra_field_1`, `extra_field_2`, `extra_field_3`, `extra_field_4`, `extra_field_5`, `cdate`, `mdate`) VALUES
(16, 'c88ce1c0ad365513d6fe085a8aacaebc', 'ST', 'New York Warehouse', 'Demo Company', 'Mr.', 'User', 'Demo', '', '555-555-1212', '', '', 'Demo St.', '', 'New York', 'NY', 'USA', '10019', NULL, NULL, NULL, NULL, NULL, NULL, 957936118, 968309878),
(14, '7322f75cc7ba16db1799fd8d25dbcde4', 'BT', '-default-', '', '', 'Administrator', 'Site', '', '555-555-1212', '', '', '1 Apache Street', '', 'Apache', 'GA', 'USA', '30307', 'noreply@phpshop.org', '', '', '', 'N', 'N', NULL, 1090758681),
(10, '02acf876459c748dbb71b3b40714c0d7', 'BT', '-default-', '', 'Mr.', 'Shopper', 'Testing', 'T.', '555-555-1212', '', '555-555-1212', '3455 Peachtree Road', '', 'Atlanta', 'GA', 'USA', '30341', 'noreply@phpshop.org', '', '', '', 'N', 'N', 955626947, 1090758676),
(11, 'c88ce1c0ad365513d6fe085a8aacaebc', 'BT', '-default-', 'Demo Inc.', 'Mr.', 'User', 'Demonstration', '', '555-555-1212', '', '', 'Demo St.', '', 'Atlanta', 'GA', 'USA', '30326', 'noreply@phpshop.org', '', '', '', 'N', 'N', 955698389, 1090758661),
(17, '1438a90d1888a2814b2bdedc43c03e99', 'BT', '-default-', 'Washupito''s Tiendita', 'Mr.', 'Administrator', 'Store', '', '555-555-1212', '', '555-555-1212', 'Washupito Place', '', 'Washupitito', 'WA', 'USA', '00000', 'noreply@phpshop.org', '', '', '', 'N', 'N', 958708505, 1090758672),
(19, '7322f75cc7ba16db1799fd8d25dbcde4', 'ST', 'warehouse', 'test', '', 'test', 'test', '', '555-555-1212', '', '', '3897 Admiral', '', 'Atlanta', 'GA', 'USA', '30341', NULL, NULL, NULL, NULL, NULL, NULL, 966588093, 968039052),
(18, '6845b3a8d95fc4799e9e962d1f9976bd', 'BT', '-default-', 'Gold', 'Mr.', 'Shopper', 'Gold', 'T.', '555-555-1212', '', '555-555-1212', '222 Gold Ave.', '', 'Atlanta', 'GA', 'USA', '30327', 'noreply@phpshop.org', '', '', '', 'N', 'N', 963464058, 1090758667);

-- --------------------------------------------------------

--
-- Table structure for table `variants`
--

CREATE TABLE IF NOT EXISTS `variants` (
  `variant_id` int(11) NOT NULL AUTO_INCREMENT,
  `variant_name` varchar(200) NOT NULL,
  `variant_description` text,
  `surcharge` decimal(10,2) NOT NULL DEFAULT '0.00',
  `variant_group_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`variant_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=108 ;

-- --------------------------------------------------------

--
-- Table structure for table `variant_group`
--

CREATE TABLE IF NOT EXISTS `variant_group` (
  `variant_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(100) NOT NULL,
  `variant_group_description` text,
  `enable_stock` varchar(3) DEFAULT 'no',
  PRIMARY KEY (`variant_group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `variant_group`
--

INSERT INTO `variant_group` (`variant_group_id`, `group_name`, `variant_group_description`, `enable_stock`) VALUES
(32, 'Available Size', NULL, 'no'),
(36, 'Extended Warranty', NULL, 'no'),
(35, 'Color', NULL, 'no');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
