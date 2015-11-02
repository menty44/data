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
-- Database: `jobfinds`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Accounting and Banking'),
(2, 'Construction'),
(3, 'Fashion and Style'),
(4, 'Food and Restaurant'),
(5, 'Health'),
(6, 'Retail and Sales'),
(7, 'Technology');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE IF NOT EXISTS `jobs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `category_id`, `user_id`, `type_id`, `company_name`, `title`, `description`, `city`, `state`, `contact`, `created`) VALUES
(1, 7, 1, 1, 'Arif Technologies', 'Web Developer Ruby ', '<p>Business System Architect is a local Kenyan company specializing in providing our clients with a range of software solutions.The solutions range from mobile applications to web applications that optimize operations and give our clients a competitive edge</p>', 'Nairobi', 'Westlands', '0720106420', '2015-04-14 11:46:22'),
(10, 1, 1, 2, 'kenya saccos', 'Tax Assistant  ', 'Description A dynamic accountancy firm based in Nairobi is looking for a qualified candidate to fill the position of a Tax Assistant with immediate effect. Details We are a dynamic audit & accountancy firm based in Nairobi.  To strengthen our team, we seek to recruit for a qualified and highly motivated Tax Assistant to compliment the current tax team.   Qualification Requirements At least CPA 2 (Degree an added advantage) MUST HAVE a minimum of 3 years external audit work experience Have good understanding of the Kenya Revenue Acts and be conversant with: Corporate Tax, Individual Tax, Statutory Deductions, Payroll Tax, VAT Refund Audits etc.   Interested candidates should forward a covering letter, CV (including current salary), copies of relevant certificates and testimonial(s). Include your daytime contact, mobile and email address\r\n\r\n', 'nairobi', 'mombasa', '', '2015-08-20 16:38:42'),
(11, 7, 0, 4, 'test 123', 'test 123', 'Description The jobholder is primarily responsible for development of web and mobile projects to be undertaken by BRA. Details Job title: Mobile and Web Developer (PHP, Ajax and Android Programming) Supervisor/Manager title: Director Projects Department: Development Salary: 30,000 â€“ 45,000 (Plus Project Commissions) Job summary The jobholder is primarily responsible for development of web and mobile projects to be undertaken by BRA. The successful candidate will be expected to develop projects within time, cost and quality objectives.   Key responsibilities Duty/responsibility Percentage of time (%) Mobile Application/Web Development Develop Web applications according to client specifications Develop Android Mobile Applications according to client specifications Conduct project feasibility studies and make presentations and recommendations on development concepts, preliminary development programs and budgets. Assist PM in preparation of project briefs which will include setting time, cost and quality objectives for the projects. Assist PM in developing project charter and project schedules Constantly communicate to stakeholders (Client, Developers and Business) on the status of projects. Assist in preparation of the system requirements collection document with the accounts executive. Prepare design specification documents. Work in collaboration with other developers. 60% Hosting Management Manage hosting clientâ€™s portfolio. Ensure programmers create accounts on time Communicate credentials to clients on time Ensure that Domains and Hosting accounts are renewed on time   10% Administrative Work Participate in the development of strategy in collaboration with the top management.   20% Occasional duties Handle other related tasks as may be assigned by the supervisor. Responsibility Equipment The jobholder is provided with a laptop and internet to facilitate performance of his/her duties. The jobholder also has access to the office photocopiers, office printers and shredder. Financial responsibility This role is also involved in monitoring all cost saving initiatives related to time management Ensure timely delivery and sign-off of projects to ensure clients payment are due as planned. Judgement and decision-making Â·        The jobholder makes routine decisions within laid down company procedures.   Educational requirements An undergraduate degree in computer related degree. Professional Certifications in Mobile development and Web development are a plus   Related job experience/qualifications Must have good knowledge in PHP, Python is plus Must have worked on at-least one of PHP Frameworks(Laravel, codeigniter ) Must have knowledge in CMS like Wordpress , Joomla , Drupal Must have Java programming skills Should have good knowledge on Jquery , Ajax Javascript frameworks Demonstrate skills in existing web applications and mobile applications. A strategic thinker who is able to develop and refine strategy for successful implementation of the project Reasonable knowledge project management is a plus.   Competencies Excellent leadership, interpersonal, and team building skills Excellent verbal and written communication skills Ability to work as a member of a multidisciplinary team in a cross-cultural environment Ability to grow with the organization, fostered by entrepreneurial drive Integrity Ability to work under pressure Contacts Internal contacts CEO â€“ frequently Project Management team - frequently Development team - frequently Finance Team â€“ frequently Sales team - Frequently   External contacts Clients  - frequently Contractors- frequently   Additional information A generally good working environment with main responsibilities carried out in the office environment. The jobholder may be required to work additional hours to ensure job demands are met.', 'nairobi', 'komarock', '', '2015-08-20 20:35:47'),
(12, 2, 0, 3, 'Majengo', 'fred', 'This position reports to the Head of Department Engineering and will perform the following key duties amongst other responsibilities:- General Service of Vehicle, tractors, crane &generators those are due. Carry out inspection service. Breakdown and recovery. Assembling of new machines. Carrying out pre-delivery inspection. Engines, gearbox overhauling. Repairing of crop spraying machines. Farms implements repairs. Service of M/bikes, mowers, rollers. Any other duties as allocated by management.   The ideal candidates must have the following minimum qualifications:- Diploma in Mechanical Engineering â€“ Automotive Option Proficiency Test from the Ministry of Labour in trade of Motor Vehicle Mechanic At least 2 years of experience\r\n\r\nThis job was copied from BrighterMonday', 'nairobi', 'kayole', '', '2015-08-20 21:59:23'),
(13, 5, 0, 5, 'Metropolitan hospital ', 'Nurses', 'The key responsibilities of the position: Ensure Consistent, cost effective out patient service delivery in the Out Patient Centre Clinical Risk Management by way of doing health talks, wellness checkups for clients. Ensure compliance with treatment protocols and drug formularies and other SOPs. Recruit, Lead, develop and mentor clinical staff capable of delivering on the mandate of the Out Patients Centre. Ensure resources are effectively and efficiently utilized to deliver desired results and within budget. Development and implementation of annual operating plans and budgets for the Health Centre. Manage Outpatient Centre performance and budgets. Develop and lead a dedicated results oriented sales team. Organize and carry out periodic sales drives and service meeting to grow visits and revenue. Implement customer satisfaction rating and customer issues resolution tool and tract its effectiveness Lead in developing and implementation performance management goals and targets for the entire centre team in liaison with HR. Lead in developing and expanding the scope of services offered at the Out Patients Centre. Efficiently carry out administrative functions of the clinic to ensure that timelines are met in all aspects of health centre operations.   Position Requirements; Bachelor degree preferably in a medical field or a Masterâ€™s degree with relevant experience managing business units in healthcare industry At least 3 years clinical experience in a busy environment. Experience in Leading teams Possess a high level business acumen and ability to display orientation to market dynamics and profit maximization Proven Leadership skills, good inter-personal skills, and ability to build personal relationships with other members of staff, to enhance corporate performance Have distinguished level of maturity and excellence in multi-disciplinary clinical operations and posses demonstrated capacity to articulate clinical agenda. Experience in managing change, diversity, financial performance, productivity, championing customer focus and people management A proven track record in delivering results; Possess good analytical skills  \r\n\r\nThis job was copied from BrighterMonday', 'mombasa', 'kakamega', '', '2015-08-20 23:28:56'),
(17, 6, 0, 6, 'Pieces Inc', 'Communication Assistant', 'Responding to the corporate communication director on matters concerning the company''s communication,\r\nBuilding the company''s reputation,\r\nCreating good relations with the clients, government,customers,\r\nCreating awareness and corporate advertising.', 'nairobi', 'Choose your state (if applicable)', '', '2015-08-22 18:16:52');

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE IF NOT EXISTS `types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `color` varchar(100) NOT NULL,
  `glyphicon` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `name`, `color`, `glyphicon`) VALUES
(1, 'Full Time', '#81b800', 'glyphicon glyphicon-screenshot" aria-hidden="true'),
(2, 'Part Time', '#1022EE', 'glyphicon glyphicon-ice-lolly-tasted" aria-hidden="true'),
(3, 'Internship', '#FE2EF7', 'glyphicon glyphicon-certificate" aria-hidden="true'),
(4, 'Freelance', '#FF0040', 'glyphicon glyphicon-link" aria-hidden="true'),
(5, 'Contract', '#EE7710', 'glyphicon glyphicon-object-align-left" aria-hidden="true'),
(6, 'musa', ' #000000', ' glyphicon glyphicon-superscript" aria-hidden="true');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` varchar(100) NOT NULL,
  `created` datetime DEFAULT NULL,
  `activated` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `username`, `password`, `role`, `created`, `activated`) VALUES
(1, 'fred', 'oluoch', 'menty44@gmail.com', 'root', 'root', 'employer', '2015-04-14 11:46:22', '1'),
(2, 'test', 'test', 'test@gmail.com', 'test', 'test', 'admin', '2015-09-08 06:20:24', '1'),
(11, 'moses', 'onyancha', 'onyanchamoses@yahoo.com', 'mose', 'mose', 'jobseeker', '2015-08-22 17:49:17', '1'),
(21, 'gunit', 'gunit', 'gunit@gmail.com', 'gunit', 'gunitgunit', 'employer', '0000-00-00 00:00:00', '0'),
(22, 'joker', 'joker', 'joker@gmail.com', 'joker', 'jokerjoker', 'employer', '0000-00-00 00:00:00', '0'),
(23, 'andela', 'andela', 'andela@gmail.com', 'andela', 'andelaandela', 'jobseeker', '0000-00-00 00:00:00', '0'),
(26, 'ihub', 'ihub', 'xyz@gmail.com', 'ihub', 'ihubihub', 'employer', '0000-00-00 00:00:00', '0'),
(27, 'ihub', 'ihub', 'xyhjghz@gmail.com', 'ihub', 'ihubihub', 'employer', '0000-00-00 00:00:00', '0'),
(29, 'kierk', 'kierk', 'jillo@email.com', 'jillok', 'jillojillo', 'employer', '2015-09-25 20:18:34', '0'),
(30, 'Seeker', 'Seeker', 'Seeker@gmail.com', 'Seeker', 'SeekerSeeker', 'Jobseeker', '2015-09-25 21:45:20', '0'),
(31, 'usiku', 'usiku', 'usikua@rocjetmail.com', 'andela', 'andelaandela', 'Jobseeker', '2015-09-25 22:35:32', '0'),
(32, 'usiku', 'usiku', 'alela@rocjetmail.com', 'andela', 'andelaandela', 'Jobseeker', '2015-09-25 22:38:41', '0'),
(33, 'usiku', 'usiku', 'aledla@rocjetmail.com', 'andela', 'andelaandela', 'Jobseeker', '2015-09-25 22:39:32', '0'),
(34, 'rocjetmailrocjetmail', 'rocjetmailrocjetmail', 'rocjetmail@g.com', 'rocjetmail', 'rocjetmail', 'Employer', '2015-09-25 22:40:49', '0'),
(35, 'rocjetmail', 'rocjetmail', 'rocjetmailhh@k.com', 'rocjetmail', 'rocjetmail', 'Jobseeker', '2015-09-25 22:42:43', '0'),
(36, 'fsgs', 'fsgs', 'segs@g.com', 'segg', 'asgesgasgesg', 'Employer', '2015-09-25 23:07:54', '0');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
