-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2015 at 01:01 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `frontlinesms`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `contact_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `active` bit(1) NOT NULL,
  `emailAddress` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `otherPhoneNumber` varchar(255) DEFAULT NULL,
  `phoneNumber` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`contact_id`),
  UNIQUE KEY `contact_id` (`contact_id`),
  UNIQUE KEY `phoneNumber` (`phoneNumber`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contact_id`, `active`, `emailAddress`, `name`, `notes`, `otherPhoneNumber`, `phoneNumber`) VALUES
(1, b'1', '', 'Test Number', '', '', '000');

-- --------------------------------------------------------

--
-- Table structure for table `email`
--

CREATE TABLE IF NOT EXISTS `email` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `date` bigint(20) DEFAULT NULL,
  `recipients` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `sender_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `FK3FF5B7C77FBC69D` (`sender_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `emailaccount`
--

CREATE TABLE IF NOT EXISTS `emailaccount` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `accountName` varchar(255) DEFAULT NULL,
  `accountPassword` varchar(255) DEFAULT NULL,
  `accountServer` varchar(255) DEFAULT NULL,
  `accountServerPort` int(11) DEFAULT NULL,
  `enabled` bit(1) DEFAULT NULL,
  `isForReceiving` bit(1) DEFAULT NULL,
  `lastCheck` bigint(20) DEFAULT NULL,
  `protocol` varchar(255) DEFAULT NULL,
  `useSsl` bit(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `accountName` (`accountName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `form`
--

CREATE TABLE IF NOT EXISTS `form` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `finalised` bit(1) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `permittedGroup_path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `FK2180E4D3148215` (`permittedGroup_path`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `form`
--

INSERT INTO `form` (`id`, `finalised`, `name`, `permittedGroup_path`) VALUES
(1, b'0', 'test', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `formfield`
--

CREATE TABLE IF NOT EXISTS `formfield` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `positionIndex` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `form_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `FKE1EB1E761F476EAE` (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `formresponse`
--

CREATE TABLE IF NOT EXISTS `formresponse` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `senderMsisdn` varchar(255) DEFAULT NULL,
  `parentForm_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `FK8325D545D92B32C4` (`parentForm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `formresponse_responsevalue`
--

CREATE TABLE IF NOT EXISTS `formresponse_responsevalue` (
  `FormResponse_id` bigint(20) NOT NULL,
  `results_id` bigint(20) NOT NULL,
  UNIQUE KEY `results_id` (`results_id`),
  KEY `FKCA47C8161674AB2E` (`FormResponse_id`),
  KEY `FKCA47C816F8F076C0` (`results_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `form_formfield`
--

CREATE TABLE IF NOT EXISTS `form_formfield` (
  `Form_id` bigint(20) NOT NULL,
  `fields_id` bigint(20) NOT NULL,
  UNIQUE KEY `fields_id` (`fields_id`),
  KEY `FK891CCCDB1F476EAE` (`Form_id`),
  KEY `FK891CCCDBF2FF003` (`fields_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `frontlinemultimediamessagepart`
--

CREATE TABLE IF NOT EXISTS `frontlinemultimediamessagepart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `binaryData` bit(1) DEFAULT NULL,
  `content` longtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `frontline_group`
--

CREATE TABLE IF NOT EXISTS `frontline_group` (
  `path` varchar(255) NOT NULL,
  `parentPath` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`path`),
  UNIQUE KEY `path` (`path`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `groupmembership`
--

CREATE TABLE IF NOT EXISTS `groupmembership` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `contact_contact_id` bigint(20) NOT NULL,
  `group_path` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `contact_contact_id` (`contact_contact_id`,`group_path`),
  KEY `FKBA9C3F955A18C292` (`contact_contact_id`),
  KEY `FKBA9C3F95DAF23DFD` (`group_path`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `keyword`
--

CREATE TABLE IF NOT EXISTS `keyword` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `keyword` (`keyword`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `keyword`
--

INSERT INTO `keyword` (`id`, `description`, `keyword`) VALUES
(1, '', ''),
(2, '', '<MMS>');

-- --------------------------------------------------------

--
-- Table structure for table `keywordaction`
--

CREATE TABLE IF NOT EXISTS `keywordaction` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `commandInteger` int(11) NOT NULL,
  `commandString` longtext,
  `counter` int(11) NOT NULL,
  `emailRecipients` varchar(255) DEFAULT NULL,
  `emailSubject` varchar(255) DEFAULT NULL,
  `endDate` bigint(20) NOT NULL,
  `externalCommand` varchar(255) DEFAULT NULL,
  `externalCommandResponseActionType` int(11) DEFAULT NULL,
  `externalCommandResponseType` int(11) DEFAULT NULL,
  `externalCommandType` int(11) DEFAULT NULL,
  `startDate` bigint(20) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `emailAccount_id` bigint(20) DEFAULT NULL,
  `group_path` varchar(255) DEFAULT NULL,
  `keyword_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `FK822AE55FC5482473` (`keyword_id`),
  KEY `FK822AE55FDAF23DFD` (`group_path`),
  KEY `FK822AE55F3D2C2C41` (`emailAccount_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE IF NOT EXISTS `message` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `binaryMessageContent` tinyblob,
  `date` bigint(20) NOT NULL,
  `dtype` varchar(255) DEFAULT NULL,
  `recipientMsisdn` varchar(255) DEFAULT NULL,
  `recipientSmsPort` int(11) NOT NULL,
  `retriesRemaining` int(11) NOT NULL,
  `senderMsisdn` varchar(255) DEFAULT NULL,
  `smsPartsCount` int(11) NOT NULL,
  `smscReference` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `textContent` longtext,
  `type` int(11) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `message_frontlinemultimediamessagepart`
--

CREATE TABLE IF NOT EXISTS `message_frontlinemultimediamessagepart` (
  `message_id` bigint(20) NOT NULL,
  `multimediaParts_id` bigint(20) NOT NULL,
  UNIQUE KEY `multimediaParts_id` (`multimediaParts_id`),
  KEY `FKAA958F0AFC9C3E5E` (`multimediaParts_id`),
  KEY `FKAA958F0A2B00A379` (`message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reminder`
--

CREATE TABLE IF NOT EXISTS `reminder` (
  `occurrence` varchar(31) NOT NULL,
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `enddate` bigint(20) DEFAULT NULL,
  `recipients` varchar(255) DEFAULT NULL,
  `startdate` bigint(20) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `responsevalue`
--

CREATE TABLE IF NOT EXISTS `responsevalue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `smsinternetservicesettings`
--

CREATE TABLE IF NOT EXISTS `smsinternetservicesettings` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `serviceClassName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `smsinternetservicesettings_smsinternetservicesettingvalue`
--

CREATE TABLE IF NOT EXISTS `smsinternetservicesettings_smsinternetservicesettingvalue` (
  `SmsInternetServiceSettings_id` bigint(20) NOT NULL,
  `properties_id` bigint(20) NOT NULL,
  `mapkey` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`SmsInternetServiceSettings_id`,`mapkey`),
  UNIQUE KEY `properties_id` (`properties_id`),
  KEY `FKA24BD3BD32373A6A` (`properties_id`),
  KEY `FKA24BD3BD6E7ADCE1` (`SmsInternetServiceSettings_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `smsinternetservicesettingvalue`
--

CREATE TABLE IF NOT EXISTS `smsinternetservicesettingvalue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `smsmodemsettings`
--

CREATE TABLE IF NOT EXISTS `smsmodemsettings` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `deleteMessagesAfterReceiving` bit(1) NOT NULL,
  `manufacturer` varchar(255) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `useDeliveryReports` bit(1) NOT NULL,
  `useForReceiving` bit(1) NOT NULL,
  `useForSending` bit(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `email`
--
ALTER TABLE `email`
  ADD CONSTRAINT `FK3FF5B7C77FBC69D` FOREIGN KEY (`sender_id`) REFERENCES `emailaccount` (`id`);

--
-- Constraints for table `form`
--
ALTER TABLE `form`
  ADD CONSTRAINT `FK2180E4D3148215` FOREIGN KEY (`permittedGroup_path`) REFERENCES `frontline_group` (`path`);

--
-- Constraints for table `formfield`
--
ALTER TABLE `formfield`
  ADD CONSTRAINT `FKE1EB1E761F476EAE` FOREIGN KEY (`form_id`) REFERENCES `form` (`id`);

--
-- Constraints for table `formresponse`
--
ALTER TABLE `formresponse`
  ADD CONSTRAINT `FK8325D545D92B32C4` FOREIGN KEY (`parentForm_id`) REFERENCES `form` (`id`);

--
-- Constraints for table `formresponse_responsevalue`
--
ALTER TABLE `formresponse_responsevalue`
  ADD CONSTRAINT `FKCA47C8161674AB2E` FOREIGN KEY (`FormResponse_id`) REFERENCES `formresponse` (`id`),
  ADD CONSTRAINT `FKCA47C816F8F076C0` FOREIGN KEY (`results_id`) REFERENCES `responsevalue` (`id`);

--
-- Constraints for table `form_formfield`
--
ALTER TABLE `form_formfield`
  ADD CONSTRAINT `FK891CCCDB1F476EAE` FOREIGN KEY (`Form_id`) REFERENCES `form` (`id`),
  ADD CONSTRAINT `FK891CCCDBF2FF003` FOREIGN KEY (`fields_id`) REFERENCES `formfield` (`id`);

--
-- Constraints for table `groupmembership`
--
ALTER TABLE `groupmembership`
  ADD CONSTRAINT `FKBA9C3F955A18C292` FOREIGN KEY (`contact_contact_id`) REFERENCES `contact` (`contact_id`),
  ADD CONSTRAINT `FKBA9C3F95DAF23DFD` FOREIGN KEY (`group_path`) REFERENCES `frontline_group` (`path`);

--
-- Constraints for table `keywordaction`
--
ALTER TABLE `keywordaction`
  ADD CONSTRAINT `FK822AE55F3D2C2C41` FOREIGN KEY (`emailAccount_id`) REFERENCES `emailaccount` (`id`),
  ADD CONSTRAINT `FK822AE55FC5482473` FOREIGN KEY (`keyword_id`) REFERENCES `keyword` (`id`),
  ADD CONSTRAINT `FK822AE55FDAF23DFD` FOREIGN KEY (`group_path`) REFERENCES `frontline_group` (`path`);

--
-- Constraints for table `message_frontlinemultimediamessagepart`
--
ALTER TABLE `message_frontlinemultimediamessagepart`
  ADD CONSTRAINT `FKAA958F0A2B00A379` FOREIGN KEY (`message_id`) REFERENCES `message` (`id`),
  ADD CONSTRAINT `FKAA958F0AFC9C3E5E` FOREIGN KEY (`multimediaParts_id`) REFERENCES `frontlinemultimediamessagepart` (`id`);

--
-- Constraints for table `smsinternetservicesettings_smsinternetservicesettingvalue`
--
ALTER TABLE `smsinternetservicesettings_smsinternetservicesettingvalue`
  ADD CONSTRAINT `FKA24BD3BD32373A6A` FOREIGN KEY (`properties_id`) REFERENCES `smsinternetservicesettingvalue` (`id`),
  ADD CONSTRAINT `FKA24BD3BD6E7ADCE1` FOREIGN KEY (`SmsInternetServiceSettings_id`) REFERENCES `smsinternetservicesettings` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
