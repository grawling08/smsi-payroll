-- --------------------------------------------------------
-- Host:                         us-cdbr-iron-east-03.cleardb.net
-- Server version:               5.5.45-log - MySQL Community Server (GPL)
-- Server OS:                    Linux
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for heroku_760d4109a89e3f8
DROP DATABASE IF EXISTS `heroku_760d4109a89e3f8`;
CREATE DATABASE IF NOT EXISTS `heroku_760d4109a89e3f8` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `heroku_760d4109a89e3f8`;

-- Dumping structure for table heroku_760d4109a89e3f8.allowances
DROP TABLE IF EXISTS `allowances`;
CREATE TABLE IF NOT EXISTS `allowances` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table heroku_760d4109a89e3f8.allowances: 8 rows
/*!40000 ALTER TABLE `allowances` DISABLE KEYS */;
INSERT INTO `allowances` (`id`, `name`) VALUES
	(1, 'Housing'),
	(2, 'Rice'),
	(3, 'Transportation'),
	(4, 'Telephone'),
	(5, 'Uniform'),
	(6, 'Meal'),
	(7, 'Travel'),
	(12, 'Representation');
/*!40000 ALTER TABLE `allowances` ENABLE KEYS */;

-- Dumping structure for table heroku_760d4109a89e3f8.annualmedical
DROP TABLE IF EXISTS `annualmedical`;
CREATE TABLE IF NOT EXISTS `annualmedical` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `employee_id` int(10) NOT NULL DEFAULT '0',
  `dateCheckup` date DEFAULT NULL,
  `physician` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `clinic` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table heroku_760d4109a89e3f8.annualmedical: 0 rows
/*!40000 ALTER TABLE `annualmedical` DISABLE KEYS */;
/*!40000 ALTER TABLE `annualmedical` ENABLE KEYS */;

-- Dumping structure for table heroku_760d4109a89e3f8.attendance
DROP TABLE IF EXISTS `attendance`;
CREATE TABLE IF NOT EXISTS `attendance` (
  `attendance_id` int(10) NOT NULL AUTO_INCREMENT,
  `id` int(10) NOT NULL DEFAULT '0',
  `emp_bio_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time_in` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time_out` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `totalHours` double(2,2) DEFAULT NULL,
  `late` double(2,2) DEFAULT NULL,
  `undertime` double(2,2) DEFAULT NULL,
  `overtime` double(2,2) DEFAULT NULL,
  `remarks` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`attendance_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table heroku_760d4109a89e3f8.attendance: 0 rows
/*!40000 ALTER TABLE `attendance` DISABLE KEYS */;
/*!40000 ALTER TABLE `attendance` ENABLE KEYS */;

-- Dumping structure for table heroku_760d4109a89e3f8.attendedtrainees
DROP TABLE IF EXISTS `attendedtrainees`;
CREATE TABLE IF NOT EXISTS `attendedtrainees` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `employee_id` int(10) DEFAULT NULL,
  `traindev_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table heroku_760d4109a89e3f8.attendedtrainees: ~1 rows (approximately)
/*!40000 ALTER TABLE `attendedtrainees` DISABLE KEYS */;
INSERT INTO `attendedtrainees` (`id`, `employee_id`, `traindev_id`) VALUES
	(2, 12, 2);
/*!40000 ALTER TABLE `attendedtrainees` ENABLE KEYS */;

-- Dumping structure for table heroku_760d4109a89e3f8.awards
DROP TABLE IF EXISTS `awards`;
CREATE TABLE IF NOT EXISTS `awards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `institution` text COLLATE utf8_unicode_ci,
  `dateGiven` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_awards_on_employee_id` (`employee_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table heroku_760d4109a89e3f8.awards: ~10 rows (approximately)
/*!40000 ALTER TABLE `awards` DISABLE KEYS */;
INSERT INTO `awards` (`id`, `employee_id`, `name`, `institution`, `dateGiven`) VALUES
	(1, 1, '5yrs in Service', 'MTMAS', NULL),
	(2, 1, '10yrs in Service', 'MTMAS', NULL),
	(12, 12, 'Civil Service Professional Eligibility', 'Civil Service Commission', '2013-04-14'),
	(42, 392, 'National Certificate II: Computer Hardware Servicing', 'TESDA Provincial Training Center', '2016-01-01'),
	(52, 392, 'Sophomore Student of the Year', 'Capitol University', '2014-01-01'),
	(62, 732, 'Cum Laude', 'Holy Cross of Davao College', NULL),
	(72, 732, 'Civil Service Passer', NULL, NULL),
	(82, 962, 'Certificate of Eligibility (Auto Mechanic LD)', 'Civil Service Commission', '2004-08-02'),
	(92, 1082, 'Bronze Passer', 'Yamaha Motor Philippines', NULL),
	(102, 1242, 'Best Paper Award', 'Singapore', '2014-08-20');
/*!40000 ALTER TABLE `awards` ENABLE KEYS */;

-- Dumping structure for table heroku_760d4109a89e3f8.bank
DROP TABLE IF EXISTS `bank`;
CREATE TABLE IF NOT EXISTS `bank` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `accountNo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table heroku_760d4109a89e3f8.bank: 0 rows
/*!40000 ALTER TABLE `bank` DISABLE KEYS */;
/*!40000 ALTER TABLE `bank` ENABLE KEYS */;

-- Dumping structure for table heroku_760d4109a89e3f8.benefits
DROP TABLE IF EXISTS `benefits`;
CREATE TABLE IF NOT EXISTS `benefits` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table heroku_760d4109a89e3f8.benefits: 4 rows
/*!40000 ALTER TABLE `benefits` DISABLE KEYS */;
INSERT INTO `benefits` (`id`, `name`) VALUES
	(1, 'Bonus'),
	(2, '13th Month Pay'),
	(3, 'sample'),
	(4, 'Hi');
/*!40000 ALTER TABLE `benefits` ENABLE KEYS */;

-- Dumping structure for table heroku_760d4109a89e3f8.biometric
DROP TABLE IF EXISTS `biometric`;
CREATE TABLE IF NOT EXISTS `biometric` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `employee_id` int(10) NOT NULL DEFAULT '0',
  `branch_id` int(10) NOT NULL DEFAULT '0',
  `biometric_id` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=83 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table heroku_760d4109a89e3f8.biometric: 9 rows
/*!40000 ALTER TABLE `biometric` DISABLE KEYS */;
INSERT INTO `biometric` (`id`, `employee_id`, `branch_id`, `biometric_id`) VALUES
	(1, 1, 1, '10003'),
	(12, 12, 32, '1004'),
	(22, 392, 32, '10002'),
	(32, 372, 32, '10021'),
	(42, 412, 32, '1003'),
	(52, 652, 32, '10014'),
	(62, 512, 32, '116'),
	(72, 652, 1, ''),
	(82, 402, 11, '');
/*!40000 ALTER TABLE `biometric` ENABLE KEYS */;

-- Dumping structure for table heroku_760d4109a89e3f8.branches
DROP TABLE IF EXISTS `branches`;
CREATE TABLE IF NOT EXISTS `branches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table heroku_760d4109a89e3f8.branches: ~24 rows (approximately)
/*!40000 ALTER TABLE `branches` DISABLE KEYS */;
INSERT INTO `branches` (`id`, `company_id`, `name`) VALUES
	(1, 7, 'Cagayan de Oro'),
	(2, 7, 'Dipolog'),
	(3, 7, 'Manila'),
	(4, 7, 'Davao'),
	(5, 7, 'Cebu'),
	(9, 7, 'Valencia'),
	(10, 7, 'Malaybalay'),
	(11, 7, 'Iligan'),
	(13, 7, 'Pagadian'),
	(14, 7, 'Zamboanga'),
	(15, 7, 'Head Office'),
	(22, 13, 'Davao City'),
	(32, 1, 'Cagayan De Oro'),
	(42, 9, 'Davao'),
	(52, 8, 'CDO'),
	(62, 8, 'DVO'),
	(72, 3, 'CDO'),
	(82, 3, 'DVO'),
	(92, 3, 'ZBO'),
	(102, 3, 'DPL'),
	(112, 3, 'KID'),
	(122, 11, 'CDO'),
	(132, 6, 'DVO'),
	(142, 4, 'GEN. SAN.');
/*!40000 ALTER TABLE `branches` ENABLE KEYS */;

-- Dumping structure for table heroku_760d4109a89e3f8.business
DROP TABLE IF EXISTS `business`;
CREATE TABLE IF NOT EXISTS `business` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `employee_id` int(10) DEFAULT NULL,
  `company_id` int(10) DEFAULT NULL,
  `department_id` int(10) DEFAULT NULL,
  `branch_id` int(10) DEFAULT NULL,
  `destination` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `durFrom` date DEFAULT NULL,
  `durTo` date DEFAULT NULL,
  `purpose` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table heroku_760d4109a89e3f8.business: 0 rows
/*!40000 ALTER TABLE `business` DISABLE KEYS */;
/*!40000 ALTER TABLE `business` ENABLE KEYS */;

-- Dumping structure for table heroku_760d4109a89e3f8.companies
DROP TABLE IF EXISTS `companies`;
CREATE TABLE IF NOT EXISTS `companies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_unicode_ci,
  `code` text COLLATE utf8_unicode_ci,
  `contactno` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` text COLLATE utf8_unicode_ci,
  `website` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table heroku_760d4109a89e3f8.companies: ~12 rows (approximately)
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
INSERT INTO `companies` (`id`, `name`, `code`, `contactno`, `email`, `website`) VALUES
	(1, 'Solutions Management Systems Inc.', 'SMSi', '88', 'smsi@gmail.com', 'www.smsi.com.ph'),
	(2, 'Amaara Financial Corporation', 'AFC', '0', '', 'www.afc.com.ph'),
	(3, 'Norminring Development Corporation', 'NDC', '0', '', 'www.norminring.com'),
	(4, 'Mindanao Educators Mutual Benefit Association , Inc.', 'MEMBAI', '0', '', 'www.memba.com.ph'),
	(6, 'Bellarmine Magister Enrichment Corporation', 'BELLMEC', NULL, 'bellmec.davao@gmail.com', NULL),
	(7, 'Manila Teachers Mutual Aid System, Inc.', 'MTMAS', NULL, NULL, NULL),
	(8, 'Currahee Construction Corporation', 'C3', NULL, NULL, NULL),
	(9, 'Primo Partners Phils, Inc.', 'PRIMO', NULL, NULL, NULL),
	(10, 'My Only Way, Inc.', 'MOWI', NULL, NULL, NULL),
	(11, 'Mindanao Precast Structures Inc.', 'MPSI', NULL, NULL, NULL),
	(13, 'Amaara Corporation', 'AMAARA CORP', NULL, NULL, NULL),
	(22, 'Currahee Group of Companies', 'CGC', NULL, NULL, NULL);
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;

-- Dumping structure for table heroku_760d4109a89e3f8.cutoff
DROP TABLE IF EXISTS `cutoff`;
CREATE TABLE IF NOT EXISTS `cutoff` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `company_id` int(10) DEFAULT NULL,
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table heroku_760d4109a89e3f8.cutoff: ~1 rows (approximately)
/*!40000 ALTER TABLE `cutoff` DISABLE KEYS */;
INSERT INTO `cutoff` (`id`, `company_id`, `from_date`, `to_date`, `status`) VALUES
	(2, 1, '2017-05-15', '2017-05-30', 'Processing');
/*!40000 ALTER TABLE `cutoff` ENABLE KEYS */;

-- Dumping structure for table heroku_760d4109a89e3f8.department
DROP TABLE IF EXISTS `department`;
CREATE TABLE IF NOT EXISTS `department` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `company_id` int(10) NOT NULL DEFAULT '0',
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=263 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table heroku_760d4109a89e3f8.department: 36 rows
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` (`id`, `company_id`, `name`) VALUES
	(1, 1, 'IT'),
	(2, 1, 'HR & Payroll'),
	(3, 3, 'Sales & Mktg'),
	(4, 11, 'Production'),
	(5, 3, 'Service & After Sales'),
	(6, 7, 'Operation'),
	(7, 1, 'Audit & Acctg'),
	(8, 7, 'Admin'),
	(9, 2, 'Legal'),
	(10, 7, 'Head office'),
	(11, 7, 'Accounting'),
	(14, 9, 'Dining'),
	(15, 9, 'Kitchen'),
	(16, 9, 'Marketing'),
	(22, 1, 'Administrative'),
	(32, 1, 'Human Resource'),
	(42, 9, 'Administrative'),
	(52, 9, 'Admin/Accounts'),
	(62, 9, 'Operations'),
	(72, 9, 'Food & Beverage'),
	(82, 8, 'Utility'),
	(92, 8, 'Admin'),
	(102, 8, 'Accounting'),
	(112, 8, 'Operations'),
	(252, 4, 'Admin'),
	(242, 7, 'IT'),
	(152, 8, 'Logistics'),
	(162, 3, 'Admin'),
	(172, 3, 'Operations'),
	(182, 11, 'Admin'),
	(192, 11, NULL),
	(202, 11, 'Utility'),
	(212, 3, 'Maintanance'),
	(222, 6, 'Admin'),
	(232, 6, 'Operations'),
	(262, 4, 'Operations');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;

-- Dumping structure for table heroku_760d4109a89e3f8.educations
DROP TABLE IF EXISTS `educations`;
CREATE TABLE IF NOT EXISTS `educations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `levelType` text COLLATE utf8_unicode_ci,
  `course` text COLLATE utf8_unicode_ci,
  `school` text COLLATE utf8_unicode_ci,
  `yearGrad` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_educations_on_employee_id` (`employee_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1302 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table heroku_760d4109a89e3f8.educations: ~123 rows (approximately)
/*!40000 ALTER TABLE `educations` DISABLE KEYS */;
INSERT INTO `educations` (`id`, `employee_id`, `levelType`, `course`, `school`, `yearGrad`) VALUES
	(1, 1, 'College', 'BS-Accountancy', 'NDKC', 1992),
	(3, 1, 'Post Graduate', 'Master in Management-HRM', 'Liceo De Cagayan', NULL),
	(4, 1, 'High School', NULL, 'KNHS', NULL),
	(12, 2, 'College', 'Bachelor of Science Major in Psychology', 'Xavier University', 2007),
	(22, 12, 'College', 'Bachelor of Science in Business Administration', 'Xavier University', 2015),
	(32, 22, 'College', 'Bachelors  in Business Administration Major in Human Resource Development', 'St. Michael\'s College', 2016),
	(42, 32, 'College', 'Hotel and Restaurant Management', 'Samson Technical Institute Inc.', 2006),
	(52, 42, 'Vocational', 'Hotel and Restaurant Management', 'Philippine College of Technology', 2016),
	(62, 42, NULL, NULL, NULL, NULL),
	(72, 52, 'College', 'Bachelor of Science in Commerce Major in Management', 'Notre Dame of Kidapawan College', 2009),
	(82, 62, 'College', 'Bachelor of Science in Accounting Technology', 'University of Mindanao', 2012),
	(92, 72, 'High School', NULL, 'Rizal Memorial Colleges', 1978),
	(102, 82, NULL, 'Bachelor of Science in Animal Science', 'University of Southern Mindanao', 1990),
	(112, 92, 'Vocational', 'Associate in Hotel and Restaurant Management', 'Polytechnic State College', 2006),
	(122, 102, 'College', 'Bachelor of Science in Hotel & Restaurant Management', 'University of Mindanao', 2008),
	(132, 112, 'Vocational', 'Associate Hotel & restaurant Management', 'DMMA College of Southern Philippines- Davao Merchant Marine Academy', 2015),
	(142, 122, 'College', 'Bachelor of Science in Hotel and Restaurant Management', 'University of Mindano', 2008),
	(152, 132, 'High School', NULL, 'Kibudtungan National High School', 2010),
	(162, 152, 'College', 'Bachelor of Science in Commerce Major in Management', 'Rizal Memorial College', 1990),
	(172, 172, 'Vocational', NULL, 'Philippine College of Technology', 2016),
	(182, 172, NULL, NULL, NULL, NULL),
	(192, 162, 'Vocational', 'Tesda/National Cert.', NULL, 2014),
	(202, 192, 'College', 'Hotel and Restaurant Management', 'Philippine College of Technology', 2008),
	(212, 202, 'High School', '', 'Digos National High School', 2005),
	(222, 212, 'High School', NULL, 'Sta Ana National High School', 2013),
	(232, 232, 'College', 'Bachelor of Science in Accountancy', 'Holy Cross of Davao College', 2000),
	(242, 282, NULL, 'Bachelor of Science in Civil Engineering', 'University of Cebu', NULL),
	(252, 292, 'College', 'Bachelor of Science in Industrial Technology Major in Architectural Drafting', 'Western Visayas College of Science and Technology', 2005),
	(262, 312, 'College', 'Bachelor of Arts Major in Philosophy', 'Xavier University - Ateneo de Cagayan', 2005),
	(272, 312, 'Post Graduate', 'Professional Education', 'Xavier University - Ateneo de Cagayan', 2007),
	(282, 312, 'Post Graduate', 'Diploma of Special Education Teaching Program', 'Xavier University - Ateneo de Cagayan', 2008),
	(292, 322, 'College', 'Bachelor of Science in Architecture', 'University of Mindanao', 2014),
	(302, 332, 'College', 'Bachelor of Science in Accountancy', 'Holy Cross of Davao College', 2006),
	(312, 332, NULL, NULL, NULL, NULL),
	(322, 362, 'College', 'Bachelor of Science in Business Administration', 'Holy Cross of Davao College, Inc.', 2104),
	(332, 372, 'College', 'Bachelor of science in Information Technology', 'Bicol University', 2015),
	(342, 382, 'College', 'Bachelor of Science in Business Administration Major in Management', 'Pilgrim Christian College', 2002),
	(352, 392, 'College', 'Bachelor of Science in Computer Science', 'Capitol University', 2016),
	(362, 412, 'College', 'Bachelor of Science in Computer Science', 'St. Peter\'s College', 2007),
	(372, 422, 'College', 'BSCE', 'Central Mindanao University', 2010),
	(382, 432, 'College', 'Bachelor of Science in Information Technology', 'Mindanao state University- Naawan', 2013),
	(392, 442, 'College', 'Bachelor of Science in Accountancy', 'La Salle University', 2001),
	(402, 452, 'College', 'BS Accountancy', 'Unios College', 1995),
	(412, 462, 'College', 'Bachelor\'s Degree in Communication and Media Studies major in Development Communication', 'Mindanao State University - Main Campus', 2015),
	(422, 472, 'College', 'Bachelor of Science in Information Technology Major in Web and Graphic Design', 'Liceo de Cagayan University', 2006),
	(432, 482, 'Vocational', NULL, 'LSTC', 2008),
	(442, 492, 'College', 'Bachelor of Science in Information Technology', 'University of Mindanao', 2015),
	(452, 502, 'College', 'Bachelor of Arts in Mass Communication', 'Pilgrim Christian College', 2007),
	(462, 512, 'Vocational', 'Electronics Computer and Technology', 'Liceo de Cagayan University', 2007),
	(472, 542, 'College', 'Bachelor of Science in Computer Science', 'Capitol University', 2003),
	(482, 552, 'College', 'Bachelor of Science in Information Technology', 'Liceo de Cagayan University', 2010),
	(572, 562, 'College', 'Bachelor of Science in Information Technology', 'AMA University', 2012),
	(582, 572, 'College', 'Bachelor of Science in Information Technology', 'STI Baguio', 2005),
	(592, 582, 'College', 'Bachelor of Science in Civil Engineer', 'Central Mindanao University', 2011),
	(602, 592, 'College', 'Bachelor of Science Major in Accountancy', 'Holy Cross of Davao College', 2000),
	(612, 612, 'High School', 'Alabang Elementary School', NULL, NULL),
	(622, 622, 'Undergraduate', 'Bachelor of Science in Political Science', 'University of Caloocan City', 1997),
	(632, 622, 'Vocational', '', 'System Technology Institute (STI)', 1993),
	(642, 632, 'College', 'Bachelor of Science in Business Administration', 'North Davao College', 2010),
	(652, 632, 'Post Graduate', 'Bachelor of Science in Architecture', 'University of Mindanao', 2016),
	(662, 642, 'College', 'Bachelor of science in accounting Technology', 'St. Columban College', 2013),
	(672, 652, 'College', 'Bachelor of Science in Accountancy', 'University of Mindanao', 2001),
	(682, 662, 'College', 'Bachelor of Science in Business Administration', 'St. Columban College', 2011),
	(692, 672, 'College', 'Bachelor of Science in accountancy', 'University of Mindanao', 2014),
	(702, 692, 'Undergraduate', NULL, 'University of Mindanao', NULL),
	(712, 702, 'College', 'Bachelor of Science in Accountancy', 'University of Mindanao', 0),
	(722, 712, 'High School', NULL, 'Erico T. Nogales National High School', NULL),
	(732, 722, 'College', 'Bachelor of Secondary Education major in English', 'Western Mindanao University Pagadian External Studies Unit', 2015),
	(742, 732, 'College', 'Bachelor of Science in Commerce Major in Management Accounting', 'Holy Cross of Davao College', NULL),
	(752, 742, 'College', 'Bachelor of Science in ECE', 'Liceo de Cagayan University', 2007),
	(762, 762, 'College', 'Bachelor of Science in Hospitality Management', 'University of Southern Philippines', NULL),
	(772, 772, 'College', 'Bachelor of Science in Business Administration', 'St. Vincent\'s College', 2014),
	(782, 772, 'Post Graduate', 'Master of Business Administration', 'Medina College University', NULL),
	(792, 782, 'High School', NULL, 'Calinan National High School', 2004),
	(802, 792, 'College', 'Bachelor of Science in Commerce major in Management', 'University of the Immaculate Conception', 2006),
	(812, 802, 'Undergraduate', 'Automotive', 'University of Mindanao', NULL),
	(822, 812, 'College', 'Bachelor of Science in Accounting Technology', 'University of Mindanao', 2016),
	(832, 822, 'Undergraduate', NULL, 'Philippine International Technological School (PITS)', 2013),
	(842, 832, 'Undergraduate', 'Bachelor of Science in Marine Engineering', 'Zamboanga City State Polytechnic College', NULL),
	(852, 852, 'College', 'Bachelor of Science in Civil Engineering', 'Central Mindanao University', 2010),
	(862, 872, 'College', 'Bachelor of Science in Accountancy', 'University of the East', 2001),
	(872, 882, 'College', 'Bachelor of Science in Business Administration Major in Financial Management', 'Holy Cross of Davao College, Inc.', 2016),
	(882, 892, 'Vocational', '', 'Philippine Agency for Communtiy and Family Automotive Serviceman with Driving', 2007),
	(892, 902, 'College', NULL, 'Davao Oriental State College of Science and Technology', NULL),
	(902, 912, 'College', 'Bachelor of Science in Business Administration major in Financial Management', 'Notre Dame of Kidapawan', 2013),
	(912, 922, 'College', 'Bachelor of Science in Commerce major in Management Accounting', 'Liceo de Cagayan University', 2000),
	(922, 932, 'Undergraduate', 'Bachelor of Science in Computer Science', 'CorJesu College of Digos', NULL),
	(932, 942, 'Vocational', NULL, 'TESDA, West City Central', 2002),
	(942, 952, 'College', 'Bachelors of Science in Business Administration Major in Marketing Management', 'Holy Cross of Davao College Inc.', 2014),
	(952, 952, 'Vocational', 'Refrigeration and Air-conditioning Technology (R.A.C)', 'Mindanao Masters Technical Training Center Inc.', 2009),
	(962, 962, 'College', 'Bachelor of Science in Industrial Technology Major in Automotive Technology', 'Bohol Island State University (BISU)', 2007),
	(972, 972, 'Undergraduate', '', 'Cor Jesu College of Digos City', NULL),
	(982, 992, 'Undergraduate', 'Bachelor of Science in Business Administration major in Marketing Management', 'Central Mindanao Colleges', NULL),
	(992, 1002, 'Undergraduate', NULL, 'DJEMFCST College', 2002),
	(1002, 1002, 'Vocational', NULL, 'SMIT', 2015),
	(1012, 1012, 'Vocational', NULL, 'SINGPHIL/SMIT', NULL),
	(1022, 1022, 'Undergraduate', 'Bachelor of Science in Information Technology', 'University of Mindanao', NULL),
	(1032, 1032, 'College', 'Bachelor of Science in Accountancy', 'University of Mindanao', 1999),
	(1042, 1042, 'College', 'Bachelor of Science in Business Administration', 'Universidad de Zamboanga', NULL),
	(1052, 1052, 'Undergraduate', 'Bachelor of Science in Business Administration Major in Marketing', 'CorJesu College', NULL),
	(1072, 1062, 'Undergraduate', 'Bachelor of Science in Tourism', 'University of Mindanao', NULL),
	(1082, 1072, 'Undergraduate', 'Bachelor of Science in Hotel and Restaurant Management', 'University of San Jose Recolletos', NULL),
	(1092, 1072, 'Undergraduate', 'Bachelor of Science in Psychology', 'St. Joseph Institute of Technology', NULL),
	(1102, 1072, 'Vocational', 'Caregiver', 'Center for Healthcare Profession', NULL),
	(1112, 1072, 'Undergraduate', 'Bachelor of Science in Human Resource Development Management', 'Father Saturnino Urios University', NULL),
	(1122, 1082, 'Undergraduate', 'Bachelor of Science in Business Administration Major in Accounting', 'University of Mindanao', NULL),
	(1132, 1092, 'College', 'Bachelor of Science in Information Technology', 'University of Mindanao', 2016),
	(1142, 1102, 'College', 'Bachelor of Arts in Philosophy', 'University of the Immaculate Conception', 2016),
	(1152, 1112, 'College', 'Bachelor of Secondary Education MAjor in English', 'University of Mindanao Digos College', 2016),
	(1162, 1122, 'Undergraduate', NULL, 'Cagayan de Oro College', NULL),
	(1172, 1132, 'College', NULL, 'Davao Oriental State Colleg of Science & Technology', 2003),
	(1182, 1152, 'High School', NULL, 'Tinagacan National High School', 2005),
	(1192, 1182, 'College', 'Bachelor of Science in Information Technology', 'Mindanao State University Naawan', 2013),
	(1202, 1192, 'Undergraduate', '', 'Philippine College of Technology', 2016),
	(1212, 1202, 'College', 'Bachelor of Science in Information Technology', 'STI College Baguio', 2005),
	(1222, 1212, 'College', 'Bachelor of Science in Information Technology', 'University of Mindanao Digos College', 2015),
	(1232, 1222, 'Undergraduate', NULL, 'Cagayan de Oro College', NULL),
	(1242, 1232, 'College', 'Bachelor of Science in Accountancy', 'Notre Dame of Kidapawan City', 1997),
	(1252, 1242, 'Post Graduate', 'Doctor in Information Technology', 'St. Paul University Philippines', 2014),
	(1262, 1242, 'Post Graduate', 'Masters in Information Technology', 'University of Immaculate Conception', 2009),
	(1272, 1242, 'College', 'Bachelor of Science in Computer Engineering', 'University of Immaculate Conception', 2001),
	(1282, 1252, 'College', 'Bachelor of Science in accounting Technology', 'UM Digos College', 2017),
	(1292, 1262, 'College', 'Associate in Computer Secretarial', 'Zamboanga A.E. Colleges', 1999);
/*!40000 ALTER TABLE `educations` ENABLE KEYS */;

-- Dumping structure for table heroku_760d4109a89e3f8.empchildren
DROP TABLE IF EXISTS `empchildren`;
CREATE TABLE IF NOT EXISTS `empchildren` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `gender` text COLLATE utf8_unicode_ci,
  `dateBirth` date DEFAULT NULL,
  `civilStatus` text COLLATE utf8_unicode_ci,
  `occupation` text COLLATE utf8_unicode_ci,
  `company` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `index_children_on_employee_id` (`employee_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=362 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table heroku_760d4109a89e3f8.empchildren: ~37 rows (approximately)
/*!40000 ALTER TABLE `empchildren` DISABLE KEYS */;
INSERT INTO `empchildren` (`id`, `employee_id`, `name`, `gender`, `dateBirth`, `civilStatus`, `occupation`, `company`) VALUES
	(1, 1, 'Jhelou Miguela Raye P. Dantes', 'Female', NULL, 'Single', 'student', 'na'),
	(2, 122, 'Lian Jake L. Magbutay', 'Male', '2014-01-29', 'Single', NULL, NULL),
	(12, 162, 'Russlyn E. Jambaro', 'Female', '2011-03-13', NULL, NULL, NULL),
	(22, 222, 'Christopher Jim S. Abenoja', 'Male', '2017-06-16', NULL, NULL, NULL),
	(32, 232, 'Neill Laurence H. Amper', 'Male', '2006-04-02', NULL, NULL, NULL),
	(42, 282, 'Ryan T. Cabigas', 'Male', '1995-08-01', NULL, NULL, NULL),
	(52, 282, 'Adrian T. Cabigas', 'Male', '1997-12-26', NULL, NULL, NULL),
	(62, 292, 'Vinz Daniel V. Caro', 'Male', '2013-04-21', 'Single', NULL, NULL),
	(72, 352, 'Travis Matteo C. Montera', 'Male', '2010-08-17', NULL, NULL, NULL),
	(82, 352, 'Colin Gabriel C. Montera', 'Male', '2010-08-17', NULL, NULL, NULL),
	(92, 352, 'Audrey Annika C. Montera', 'Male', '2012-03-01', NULL, NULL, NULL),
	(102, 452, 'Francis Miguel G. Mantillas', 'Male', '2007-08-28', NULL, NULL, NULL),
	(112, 512, 'Myeisha Myles E. Baculio', 'Female', '2010-05-04', NULL, NULL, NULL),
	(122, 542, 'Rob James M. Bersano', 'Male', '2010-11-14', NULL, NULL, NULL),
	(132, 602, 'Princess Clowie L. Ulo', 'Female', NULL, NULL, NULL, NULL),
	(142, 712, 'Reynalyn Almacin', 'Female', '2014-03-27', NULL, NULL, NULL),
	(152, 742, 'Khloe Miezy L. Dela Cruz', 'Female', '2012-12-04', NULL, NULL, NULL),
	(162, 742, 'Khlea Miezy L. Dela Cruz', 'Female', '2015-01-12', NULL, NULL, NULL),
	(172, 772, 'Reil Ezekiel J. Bicoy', 'Male', NULL, NULL, NULL, NULL),
	(182, 912, 'Xia Samantha Macalangcom', 'Female', NULL, NULL, NULL, NULL),
	(192, 942, 'Ashley Jane A. Rabadan', 'Female', '2012-09-20', NULL, NULL, NULL),
	(202, 962, 'Vince Gabriel R. Quipanes', 'Male', NULL, NULL, NULL, NULL),
	(212, 1002, 'Rania L. Tacoloy', 'Female', '2009-10-18', NULL, NULL, NULL),
	(222, 1052, 'Gabriel Paolo Ragol', 'Male', NULL, NULL, NULL, NULL),
	(232, 1052, 'Aether Laurence Ragol', 'Male', NULL, NULL, NULL, NULL),
	(242, 1122, 'Clark John Abuhan', 'Male', NULL, NULL, NULL, NULL),
	(252, 1132, 'Samantha P. Paloma', 'Female', '2011-12-22', NULL, NULL, NULL),
	(262, 1142, 'Aleza Juuls Paloma', 'Female', NULL, NULL, NULL, NULL),
	(272, 1232, 'Sean Voltaire A. Escalona', 'Male', NULL, NULL, NULL, NULL),
	(282, 1232, 'Stephen Vladimir A. Escalona', 'Female', NULL, NULL, NULL, NULL),
	(292, 1242, 'Nicollas Andraei Sobejana', 'Male', '2010-01-17', NULL, NULL, NULL),
	(302, 1262, 'Annie France B. Amesola', 'Female', '2006-12-12', 'Single', NULL, NULL),
	(312, 1262, 'Franzyn Anne B. Amesola', 'Female', '2009-09-03', NULL, NULL, NULL),
	(322, 1262, 'James Franco B.Amesola', 'Male', '2012-11-28', NULL, NULL, NULL),
	(332, 1262, 'Rhenz Ethan B. Amesola', 'Male', '2015-06-19', NULL, NULL, NULL),
	(342, 652, 'LJ B. Arce', 'Male', '2007-01-03', NULL, NULL, NULL),
	(352, 652, 'VJ Mari B. Arce', 'Female', '2009-08-22', NULL, NULL, NULL);
/*!40000 ALTER TABLE `empchildren` ENABLE KEYS */;

-- Dumping structure for table heroku_760d4109a89e3f8.employees
DROP TABLE IF EXISTS `employees`;
CREATE TABLE IF NOT EXISTS `employees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(13) COLLATE utf8_unicode_ci DEFAULT NULL,
  `biometric_id` varchar(13) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shiftgroup_id` int(11) DEFAULT NULL,
  `image` text COLLATE utf8_unicode_ci,
  `fName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mi` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `acronym` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `placeBirth` text COLLATE utf8_unicode_ci,
  `dateBirth` date DEFAULT NULL,
  `civilStatus` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `taxstatus_id` int(11) DEFAULT NULL,
  `gender` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `citizenship` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `religion` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language` text COLLATE utf8_unicode_ci,
  `height` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weight` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bloodType` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hair` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `complexion` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `resAdd` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `resTel1` int(11) DEFAULT NULL,
  `resTel2` int(11) DEFAULT NULL,
  `resMobile1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `resMobile2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `resEmail` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contactperson` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `perAdd` text COLLATE utf8_unicode_ci,
  `proAdd` text COLLATE utf8_unicode_ci,
  `fatherName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `faAdd` text COLLATE utf8_unicode_ci,
  `faOccupation` text COLLATE utf8_unicode_ci,
  `faCompany` text COLLATE utf8_unicode_ci,
  `faNo` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `motherName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `moAdd` text COLLATE utf8_unicode_ci,
  `moOccupation` text COLLATE utf8_unicode_ci,
  `moCompany` text COLLATE utf8_unicode_ci,
  `moNo` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `spouseName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `spAdd` text COLLATE utf8_unicode_ci,
  `spOccupation` text COLLATE utf8_unicode_ci,
  `spCompany` text COLLATE utf8_unicode_ci,
  `spNo` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateHired` date DEFAULT NULL,
  `position_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `sssNo` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phicNo` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hdmfNo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `taxNo` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emp_status` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1253 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table heroku_760d4109a89e3f8.employees: ~122 rows (approximately)
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` (`id`, `employee_id`, `biometric_id`, `shiftgroup_id`, `image`, `fName`, `mi`, `lName`, `acronym`, `bank`, `placeBirth`, `dateBirth`, `civilStatus`, `taxstatus_id`, `gender`, `citizenship`, `religion`, `language`, `height`, `weight`, `bloodType`, `hair`, `complexion`, `resAdd`, `resTel1`, `resTel2`, `resMobile1`, `resMobile2`, `resEmail`, `contactperson`, `perAdd`, `proAdd`, `fatherName`, `faAdd`, `faOccupation`, `faCompany`, `faNo`, `motherName`, `moAdd`, `moOccupation`, `moCompany`, `moNo`, `spouseName`, `spAdd`, `spOccupation`, `spCompany`, `spNo`, `dateHired`, `position_id`, `company_id`, `department_id`, `branch_id`, `sssNo`, `phicNo`, `hdmfNo`, `taxNo`, `emp_status`) VALUES
	(1, '310-98-4', '10003', 1, '', 'Jennifer', 'Palo', 'Dantes', NULL, NULL, 'Bislig, Surigao Del Sur', '1975-08-04', 'Married', 7, 'Female', 'Filipino', 'Catholic', 'Bisaya', '5\'', '51', 'O +', 'Brown', 'Fair', '17E Southview Homes Subd.,Macasandig, Cagayan De O', 88, 88, '09173049861', '09989590804', 'jen.dantes@smsi.com.ph', NULL, 'same', 'same', 'Jose M. Palo', 'Kidapawan, Cotabato', 'Gov\'t Employee', 'Makilala City Mayor Office', '0', 'Socorro R. Beltran', 'Malita, Davao Del Sur', 'none', 'none', '0', 'Reynaldo I. Dantes Jr', '17E Southview Homes Subd., Cagayan de Oro City', 'Project Manager', 'MTMAS', '0', '1997-04-01', 92, 1, 2, 32, '09-2010232-1', '19-050708923', '1040-0220-82', '916-191-555', 'Regular'),
	(2, NULL, NULL, 4, NULL, 'Charizze Mae', 'Taboada', 'Lumagsao', NULL, NULL, 'San Juan Metro Manila', '1985-01-03', 'Married', 1, 'Female', 'Filipino', 'Roman Catholic', 'English, Tagalog, Visayan, Singlish', '4\'11inches', '51kgs', 'B +', NULL, 'Fair', '#3A Yellow Street Palm Ridge Maandig Buena Oro, Up', NULL, NULL, '09771046500', NULL, 'dotmrsl@gmail.com', NULL, 'B29-L3 Bronze St. Johndorf Subd. Barra,Opol Mis Or', 'B29-L3 Bronze St. Johndorf Subd. Barra,Opol Mis Or', 'Eliseo M. Taboada', '', '', NULL, NULL, 'Frances Merlie B. Taboada', '', NULL, NULL, NULL, 'Ranji Yehudi G. Lumagsao', '#3A Yellow St. Palm Ridge Maandig Village Upper Ma', 'Social Aide', 'City Social Welfare Cagayan de Oro', '0', '2017-04-01', 102, 1, 2, 32, '8-15700359', '150501399622', '121025696574', NULL, 'Resigned'),
	(3, 'SP-Admin', NULL, NULL, NULL, 'SUPER ADMIN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(12, NULL, NULL, 1, NULL, 'Shiela', 'L.', 'Achas', NULL, NULL, 'Cagayan de Oro', '1994-11-09', 'Single', 1, 'Female', 'Filipino', 'Roman Catholic', NULL, '5\'1inches', '65Kg', NULL, NULL, NULL, 'Gusa. Cagayan de Oro City', NULL, NULL, '09267459394', NULL, 'libresshiela@gmail.com', NULL, 'Gusa. Cagayan de Oro City', 'Gusa. Cagayan de Oro City', 'Samuel B. Achas', 'Lagobglong, Misamis Oriental', NULL, NULL, NULL, 'Celia T. Libres', '#127 Purok-3A, Gusa Cagayan de Oro City', 'Business Woman', NULL, '', NULL, NULL, NULL, NULL, NULL, '2016-03-01', 112, 1, 22, 32, '08-2580153-6', '150504178309', '121148071155', '330785488000', 'Regular'),
	(22, NULL, NULL, 4, NULL, 'Daina Jane', 'Layar', 'Lungtad', NULL, NULL, 'Palao, Iligan City', '1990-12-30', 'Single', 1, 'Female', 'Filipino', 'Seventh Day Adventist', 'English, Tagalog, Visayan', '5\'1 inches', '51Kg', 'A +', 'Brown', '', 'Lao-Lao Lugait Misamis Oriental', NULL, NULL, '09267876016', NULL, 'dainajanelungtad@gmail.com', NULL, 'Lao-Lao Lugait Misamis Oriental', 'Lao-Lao Lugait Misamis Oriental', 'Cornelio A. Lungtad', 'Salvacion Bayugan City', 'Foreman', NULL, NULL, 'Rosalinda L. Lungtad', 'Salvacion Bayugan City', 'Housekeeper', NULL, '', NULL, NULL, NULL, NULL, NULL, '2016-11-21', 122, 1, 32, 32, '08-2663610-8', '150253033462', '121148247833', '331694187', 'Regular'),
	(32, NULL, NULL, 1, NULL, 'Angelito', 'Diaz', 'Delada', NULL, NULL, 'Davao City', '1986-12-30', 'Single', 1, 'Male', 'Filipino', 'Roman Catholic', NULL, '5\'5 inches', '51kgs', NULL, NULL, NULL, '268-Purok 14 Bushoa Phase 1 Bucana, Davao City', NULL, NULL, '09165376514', NULL, NULL, NULL, '268-Purok 14 Bushoa Phase 1 Bucana, Davao', '268-Purok 14 Bushoa Phase 1 Bucana, Davao', 'Rogelio Delada', 'Davao City', NULL, NULL, NULL, 'Aurora Diaz', 'Davao City', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-12-01', 84, 9, 14, 42, '09-28611092', '160504045878', '121031718739', '945606122', 'Regular'),
	(42, NULL, NULL, 1, NULL, 'Kimberly', 'Arcena', 'Bicong', NULL, NULL, 'Davao City, Davao del Sur', '1995-07-20', 'Single', NULL, 'Female', 'Filipino', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Km8, Tigatto Buhangin Dsrct. Davao City', NULL, NULL, '09333191043', NULL, NULL, NULL, 'Km8, Tigatto Buhangin Dsrct. Davao City', 'Km8, Tigatto Buhangin Dsrct. Davao City', 'Oscar G. Bicong', 'Km8, Tigatto Buhangin Dsrct. Davao City', 'Laborer', NULL, NULL, 'Teresita C. Bicong', 'Km8, Tigatto Buhangin Dsrct. Davao City', 'Housewife', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-09-26', 86, 9, 14, 42, NULL, '162506289777', '915170351768', '429744351', 'Regular'),
	(52, NULL, NULL, 1, NULL, 'Rachel', 'Likit', 'Brua', NULL, NULL, 'Brgy. Saguing, Makilala, Cotabato', '1988-01-01', 'Single', 1, 'Female', 'Filipino', 'Roman Catholic', NULL, '5\'', NULL, NULL, NULL, NULL, 'Saguing, Makilala, North Cotabato', NULL, NULL, '09093671550', NULL, 'bruarachel@gmail.com', NULL, 'Villa Fontana Dormitory for Girls, Bolton St., Dav', 'Saguing, Makilala, North Cotabato', 'Telesforo T. Brua', 'Saguing, Makilala, North Cotabato', NULL, NULL, NULL, 'Emeteria L. Brua', 'Saguing, Makilala, North Cotabato', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-01-01', 81, 9, 42, 42, '09-3103097-4', '170252743289', '121101750577', '445-307-079', 'Regular'),
	(62, NULL, NULL, 1, NULL, 'Cheryrose', 'Nepomuceno', 'Gabaton', NULL, NULL, 'Davao City, Davao Del Sur', '1989-10-22', 'Single', 1, 'Female', 'Filipino', 'Roman Catholic', NULL, '5\'2"', '47Kgs', NULL, NULL, NULL, 'Blk.2 Lot 16 Silver Street Mineral Village, Bajada', NULL, NULL, '09105861353', NULL, NULL, NULL, 'Blk.2 Lot 16 Silver Street Mineral Village, Bajada Davao City', 'Blk.2 Lot 16 Silver Street Mineral Village, Bajada Davao City', 'Andres B. Gabaton', 'Blk.2 Lot 16 Silver Street Mineral Village, Bajada Davao City', NULL, NULL, NULL, 'Fidencia N. Gabaton', 'Blk.2 Lot 16 Silver Street Mineral Village, Bajada Davao City', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-06-01', 132, 9, 52, 42, '0933035427', '160504739322', '121115018624', '444168187000', 'Regular'),
	(72, NULL, NULL, 1, NULL, 'Nathaniel', 'Pasco', 'Dela Pena', NULL, NULL, 'Zamboanga City', '1962-01-25', 'Married', 2, 'Male', 'Filipino', 'Jehovah\'s Witness', NULL, '5\'5"', '68kl.', NULL, NULL, NULL, '129-3 Quezon Blvd., Davao City', NULL, NULL, '09394168476', '09394606417', NULL, NULL, '129-3 Quezon Blvd., Davao City', '129-3 Quezon Blvd., Davao City', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-12-01', 83, 9, 15, 42, '09-08358948', '160500375997', '005064402507', '124010444', 'Regular'),
	(82, NULL, NULL, 4, NULL, 'Amalia', 'Demapitan', 'Frias', NULL, NULL, 'Poblacion, Lebak Cotabato', '1967-12-01', 'Single', 1, 'Female', 'Filipino', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Caindoc Residence Drive #2 Teacher\'s Village Matin', NULL, NULL, '09362841391', NULL, 'fnasamz@yahoo.com', NULL, 'Caindoc Residence Drive #2 Teacher\'s Village Matina Aplaya Davao City', 'Lebak, Sultan Kudarat', 'Felipe F. Frias', 'Lebak, Sultan Kudarat', NULL, NULL, NULL, 'Angeles D. Frias', 'Lebak, Sultan Kudarat', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-02-01', 142, 9, 15, 42, '09-15874295', '170502340371', '121030580785', '450957189', 'Regular'),
	(92, NULL, NULL, 1, NULL, 'Leny', 'Serue', 'Lastrella', NULL, NULL, 'T\'boli, South Cotabato', '1987-06-01', 'Single', 1, 'Female', 'Filipino', NULL, 'Filipino, Englis, Illonggo', '5\'0"', '46kgs', NULL, NULL, NULL, 'Brgy. Veterans, Surulla, South Cotabato', NULL, NULL, '09082705445', NULL, 'lastrellaleny@gmail.com', NULL, 'Brgy. Veterans, Surulla, South Cotabato', 'Brgy. Tabudtod, T\'boli South Cotabato', 'Eugene B. Lastrella', 'T\'boli South Cotabato', NULL, NULL, NULL, 'Raquel S. Lastrella', 'T\'boli South Cotabato', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-04-01', 152, 9, 62, 42, '09278694176', '170501695087', '18000768907', '429743909', 'Regular'),
	(102, NULL, NULL, 1, NULL, 'Erlyn', 'Bolante', 'Lim', NULL, NULL, 'Davao City', '1987-12-17', 'Single', 1, 'Female', 'Filipino', 'Roman Catholic', 'Filipino, English, Visaya', '5\'3"', NULL, NULL, NULL, NULL, 'Phase 3 Blk 6 L19 NHA Bangkal Davao City', NULL, NULL, '09074375342', NULL, 'erlynlim17@ymail.com', NULL, 'Phase 3 Blk 6 L19 NHA Bangkal Davao City', 'Phase 3 Blk 6 L19 NHA Bangkal Davao City', 'Ernesto R. Lim', 'Davao City, Davao Del Sur', NULL, NULL, NULL, 'Arlyn B. Lim', 'Davao City, Davao Del Sur', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-12-01', 162, 9, 42, 42, '09-30062419', '160503475631', '121032392549', '286335650', 'Regular'),
	(112, NULL, NULL, 4, NULL, 'Aldrin', 'Cotamora', 'Loma', NULL, NULL, 'Davao City', '1986-04-19', 'Single', 1, 'Male', 'Filipino', 'Jehova\'s Witness', 'English, Filipino, Bisaya', '5\'7"', '110lbs', NULL, NULL, NULL, 'Purok 4 Sampaguita St. Brgy. Sto Nino Tugbok Distr', NULL, NULL, '09309846935', NULL, 'aldrincotamora86@gmail.com', NULL, 'Purok 4 Sampaguita St. Brgy. Sto Nino Tugbok District Davao City', 'Purok 4 Sampaguita St. Brgy. Sto Nino Tugbok District Davao City', 'Edgar S. Loma', 'Purok 4 Sampaguita St. Brgy. Sto Nino Tugbok District Davao City', NULL, NULL, NULL, 'Alma C. Loma', 'Purok 4 Sampaguita St. Brgy. Sto Nino Tugbok District Davao City', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-11-02', 86, 9, 14, 42, '09-38159793', '160506389620', '121157478629', NULL, 'Resigned'),
	(122, NULL, NULL, 1, NULL, 'Lyrie Mae', 'Lustre', 'Magbutay', NULL, NULL, 'Batangueno Village, Matina, Davao City', '1985-10-06', 'Married', 3, 'Female', 'Filipino', 'Roman Catholic', 'English, Filipino, Visayan', '5\'4"', '55kgs', NULL, NULL, NULL, 'Blk6 L45 Sunrise Village Brgy. Matina Davao City', NULL, NULL, '09072281906', NULL, NULL, NULL, 'Blk6 L45 Sunrise Village Brgy. Matina Davao City', 'Blk6 L45 Sunrise Village Brgy. Matina Davao City', 'Frederico L. Lustre Jr.', 'Matina Davao City', NULL, NULL, NULL, 'Leny P. Lustre', 'Matina Davao City', NULL, NULL, NULL, 'Conrasito A. Magbutay Jr.', 'Blk6 L45 Sunrise Village Brgy. Matina Davao City', NULL, NULL, NULL, '2012-12-01', 582, 9, 14, 42, '09-3230107-1', '121028563644', '160504463106', '460-769-947', 'Regular'),
	(132, NULL, NULL, 1, NULL, 'Rodel', 'Esmedina', 'Villegas', NULL, NULL, 'Poblacion, Carmen Cotabato', '1992-03-03', 'Single', 1, 'Male', 'Filipino', 'Roman Catholic', 'English, Tagalog, Bisaya', '5\'8', '64Kgs', NULL, NULL, NULL, 'Garcia Heights Bajada, Davao City', NULL, NULL, '09482716805', NULL, NULL, NULL, 'Garcia Heights Bajada, Davao City', 'Carmen Cotabato', 'Bonifacio Villegas', 'Kibudtungan Carmen Cotabato', 'Driver', NULL, NULL, 'Genara Villegas', 'Kibudtungan Carmen Cotabato', 'Housewife', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-12-01', 83, 9, 15, 42, '09-3345227-5', '150504925215', '121029330515', '415-610-167', 'Regular'),
	(142, NULL, NULL, 1, NULL, 'Henilito', 'Gonzales', 'Polia Jr.', NULL, NULL, 'Purok 2, San Juan Maco, Compostela Valley', '1990-09-29', 'Single', 1, 'Male', 'Filipino', 'Roman Catholic', 'Tagalog, English,', '5\'9"', '58kgs', NULL, NULL, NULL, 'Purok 2, San Juan Maco, Compostela Valley Province', NULL, NULL, '09302974747', NULL, NULL, NULL, 'Purok 2, San Juan Maco, Compostela Valley Province', 'Purok 2, San Juan Maco, Compostela Valley Province', 'Senilito Polia', 'Purok 2, San Juan Maco, Compostela Valley Province', NULL, NULL, NULL, 'Jemecita G. Polia', 'Purok 2, San Juan Maco, Compostela Valley Province', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2012-12-01', 85, 9, 14, 42, '09-3208339-9', '160504315484', '121029358912', '400-672-745', 'Regular'),
	(152, NULL, NULL, 1, NULL, 'Nestor', 'Masing', 'Bantilan', NULL, NULL, 'Kapatagan, Asuncion Tagum City', '1967-10-08', 'Married', 2, 'Male', 'Filipino', 'Roman Catholic', 'English, Tagalog,', '5\'5"', '120lbs', NULL, NULL, NULL, 'Shanghai Village Matina Aplaya, Davao City', NULL, NULL, NULL, NULL, NULL, NULL, 'Shanghai Village Matina Aplaya, Davao City', 'Shanghai Village Matina Aplaya, Davao City', 'Benito Tanduyan Bantilan', 'Kapatagan Asuncion, Tagum City', NULL, NULL, NULL, 'Amparo B. Bantilan', 'Kapatagan Asuncion, Tagum City', NULL, NULL, NULL, 'Erlyn Labis', 'Poblacion Kabacan Cotabato', NULL, NULL, NULL, '2015-12-01', 80, 9, 14, 42, '09-1244652-9', '160500046756', '913169041227', '124-651-296', 'Regular'),
	(162, NULL, NULL, 1, NULL, 'Roberto', 'Celerio', 'Jambaro Jr.', NULL, NULL, 'Davao Medical Center', '1986-03-30', 'Married', 3, 'Male', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, NULL, NULL, 'Samantha Homes Bago Gallera, Davao City', NULL, NULL, '09485336616', NULL, NULL, NULL, 'Samantha Homes Bago Gallera, Davao City', 'Samantha Homes Bago Gallera, Davao City', 'Roberto Jambaro Sr.', 'Davao City', NULL, NULL, NULL, 'Cremery Celerio', 'Davao City', NULL, NULL, NULL, 'Karen Jambaro', 'Samantha Homes Bago Gallera, Davao City', NULL, '', '2147483647', '2012-12-01', 82, 9, 15, 42, '0925830148', '160503436059', '188000743398', '308884166000', 'Regular'),
	(192, NULL, NULL, 1, NULL, 'Junmer', 'Rebuyas', 'Talindog', NULL, NULL, 'Poblacion, Marasugan Combal Province', '1988-08-03', 'Single', 1, 'Female', 'Filipino', 'Roman Catholic', 'Bisaya, Tagalog & English', '5\'7"', '65Kgs', NULL, NULL, NULL, 'Apo St. Rolling Hills Subd. Bacaca Road Davao City', NULL, NULL, NULL, NULL, NULL, NULL, 'Apo St. Rolling Hills Subd. Bacaca Road Davao City', 'Apo St. Rolling Hills Subd. Bacaca Road Davao City', 'Aquilino C. Talindog', 'Apo St. Rolling Hills Subd. Bacaca Road Davao City', NULL, NULL, NULL, 'Mercedes R. Talindog', 'Apo St. Rolling Hills Subd. Bacaca Road Davao City', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-01', 86, 9, 14, 42, '09-300-44709', '160505841848', '91320145691', NULL, 'Regular'),
	(202, NULL, NULL, 1, NULL, 'Ryan', 'Dodoso', 'Florencio', NULL, NULL, 'Davao City', '1986-06-05', 'Single', 1, 'Male', 'Filipino', 'Roman Catholic', 'English, Tagalog, & Visayan', '5\'5"', '61Kgs', NULL, NULL, NULL, 'Bo. Obrero Burgos St. Davao City', NULL, NULL, '09304965392', NULL, NULL, NULL, 'Bo. Obrero Burgos St. Davao City', 'Bo. Obrero Burgos St. Davao City', 'Rostico B. Florencio', 'Sinayawan Hagonoy Davao Del Sur', NULL, NULL, NULL, 'Semma D. Florencio', 'Sinayawan Hagonoy Davao Del Sur', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-04-01', 83, 9, 15, 42, '09-3164239-1', '160504252636', '121086740639', '291-191-248', 'Regular'),
	(212, NULL, NULL, 4, NULL, 'Arnold', 'Aboyme', 'Plaza', NULL, NULL, 'Davao City', NULL, 'Single', 1, 'Male', 'Filipino', 'Roman Catholic', 'Tagalog,English,Bisaya', '5\'7"', NULL, NULL, NULL, NULL, 'Blk.91 Piapi Blvd. Brgy.21-C Davao City', NULL, NULL, '09052684019', NULL, 'arnoldplaza@yahoo.com', NULL, 'Blk.91 Piapi Blvd. Brgy.21-C Davao City', 'Blk.91 Piapi Blvd. Brgy.21-C Davao City', 'Rolando A. Plaza', 'Davao City', 'deceased', NULL, NULL, 'Celia A. Plaza', 'Davao City', 'Housekeeper', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-08-04', 84, 9, 14, 42, '09-4157916-6', '162508071957', NULL, NULL, 'Probationary'),
	(222, NULL, NULL, 1, NULL, 'Jimrey', 'R.', 'Abenoja', 'JRA', NULL, NULL, '1986-05-20', 'Married', 3, 'Male', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, NULL, NULL, 'Prk. 25 Maa Peoples Village Davao City', NULL, NULL, '09082418357', NULL, NULL, NULL, 'Prk. 25 Maa Peoples Village Davao City', 'Maa Davao City', NULL, NULL, NULL, NULL, NULL, 'Riza R. Abenoja', 'Prk. 25 Maa Peoples Village Davao City', NULL, NULL, '', 'Christin Mayn J. Suson', 'Prk. 25 Maa Peoples Village Davao City', NULL, NULL, '', '2013-09-09', 322, 8, 112, 52, '09-3224951-5', '160506266820', '121122325178', '455239111', 'Regular'),
	(232, NULL, NULL, 1, NULL, 'Nerio', 'Gildore', 'Amper', 'NGA', NULL, 'Davao City', '1976-11-09', 'Married', 3, 'Male', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, NULL, NULL, 'Dacudao Village, Prk. 23, Panacan Davao City', NULL, NULL, NULL, NULL, NULL, NULL, 'Dacudao Village, Prk. 23, Panacan Davao City', 'Dacudao Village, Prk. 23, Panacan Davao City', NULL, NULL, NULL, NULL, NULL, 'Victoria G. Amper', 'Dacudao Village, Prk. 23, Panacan Davao City', 'Self-Employed', NULL, '', NULL, NULL, NULL, NULL, NULL, '2003-12-11', 212, 8, 102, 62, NULL, '190902066156', NULL, '922208289', 'Regular'),
	(262, NULL, NULL, 1, NULL, 'James', 'C.', 'Baldosano', 'JCB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-11-02', 182, 8, 112, 52, NULL, NULL, NULL, NULL, 'Regular'),
	(282, NULL, NULL, 1, NULL, 'Renante', 'M.', 'Cabigas', 'RMC', NULL, 'Davao City', '1969-05-07', 'Married', 8, 'Male', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, NULL, NULL, 'Taguanao, Indahag Cagayan de Oro City', NULL, NULL, '09499335271', NULL, NULL, NULL, 'Taguanao, Indahag Cagayan de Oro City', 'Taguanao, Indahag Cagayan de Oro City', 'Hilarion Cabigas', 'Camp 2 Tabunok, Talisayan Cebu City', 'Automotive Mechanic', NULL, NULL, 'Catalina M. Cabigas', 'Camp 2 Tabunok, Talisayan Cebu City', 'Housewife', NULL, '', 'Rosalina Timbal', 'Taguanao, Indahag Cagayan de Oro City', 'Housewife', NULL, NULL, '2011-11-01', 222, 8, 82, 52, '0613995298', '152016370597', NULL, NULL, 'Regular'),
	(292, NULL, NULL, 1, NULL, 'Gerald', 'Detoyato', 'Caro', 'GDC', NULL, 'Guimaras, Iloilo', '1985-01-16', 'Married', 7, 'Male', 'Filipino', 'Roman Catholic', 'Ilonggo, Cebuano, Tagalog, English', '170cm', '60kgs', NULL, NULL, NULL, 'PN Roa Subd. Brgy. Canitoan Calaanan CDOC.', NULL, NULL, '09263679009', NULL, 'gerald_caro@yahoo.com', NULL, 'PN Roa Subd. Brgy. Canitoan Calaanan CDOC.', 'PN Roa Subd. Brgy. Canitoan Calaanan CDOC.', 'Efren A. Caro Sr.', 'Pob. Jordan Guimaras, Iloilo', 'Ricemill Operator', NULL, NULL, 'Judy D. Caro', 'Pob. Jordan Guimaras, Iloilo', NULL, NULL, NULL, 'Lanibeth', 'PN Roa Subd. Brgy. Canitoan Calaanan CDOC.', 'Logistics Officer', 'HFHP CDO', '2147483647', '2016-09-17', 192, 8, 112, 52, '3430488752', '112021267328', NULL, NULL, 'Regular'),
	(312, NULL, NULL, 1, NULL, 'Ramon Alejandro', 'Magtajas', 'Valleser', NULL, NULL, 'Cagayan de Oro', '1982-11-04', 'Married', 2, 'Male', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, NULL, NULL, 'St. Ignatius St., Melecia Homes, Upper Macasandig,', NULL, NULL, '09989640456', NULL, 'RAMONVALLESER1114@YAHOO.COM', NULL, 'St. Ignatius St., Melecia Homes, Upper Macasandig, Cagayan de Oro City', 'St. Ignatius St., Melecia Homes, Upper Macasandig, Cagayan de Oro City', 'Jesus Valleser', 'Melecia Homes, Upper MAcasandig, Cagayan de Oro', NULL, NULL, NULL, 'Alma Magtajas', 'Melecia Homes, Upper MAcasandig, Cagayan de Oro', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-10-17', 232, 1, 22, 32, '08-1543251-7', '150251923010', '121048504092', '942957588', 'Regular'),
	(322, NULL, NULL, 1, NULL, 'Elgin', 'Cabunilas', 'Camilotes', 'ECC', NULL, 'Mati, Davao Oriental', NULL, 'Single', 1, 'Male', 'Filipino', 'Seventh Day Adventist', 'English, Filipino', '5\'7"', '60Kgs', NULL, NULL, NULL, 'Camus Street, Illustre Davao City', NULL, NULL, '09123463489', NULL, 'camiloteselgin@ymail.com', NULL, 'Camus Street, Illustre Davao City', 'Camus Street, Illustre Davao City', 'Zacarias S. Camilotes', 'Camus Street, Illustre Davao City', 'Land Brooker', NULL, NULL, 'Rochann C. Camilotes', 'Camus Street, Illustre Davao City', 'Teacher', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2013-08-01', 192, 8, 112, 62, '09-3653870-9', '160505803776', '121098218437', NULL, 'Regular'),
	(332, NULL, NULL, 1, NULL, 'Aileen Joy', 'C', 'Castro', 'ACC', NULL, 'Mati City', '1985-07-03', 'Single', 1, 'Female', 'Filipino', 'Roman Catholic', 'English, Filipino', '5\'0\'', NULL, NULL, NULL, NULL, 'Lopo-Diaz St. Obrero, Davao City', NULL, NULL, '09462412819', NULL, 'castroaileenjoy@yahoo.com', NULL, 'Lopo-Diaz St. Obrero, Davao City', 'Lopo-Diaz St. Obrero, Davao City', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-11-16', 202, 8, 102, 62, NULL, NULL, NULL, NULL, 'Regular'),
	(352, NULL, NULL, 1, NULL, 'Elvira', 'Carvajal', 'Montera', NULL, NULL, 'Digos Davao del Sur', '1979-04-16', 'Married', 9, 'Female', 'Filipino', 'Roman Catholic', 'English, Tagalog, Visayan', '5\'4', '65 kls.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2008-01-09', 23, 1, 7, 32, '09-2211068-3', '160501550245', '121042672683', '928503260', 'Regular'),
	(362, NULL, NULL, 1, NULL, 'Kristine Joy', 'Carreon', 'Dealca', 'KCD', NULL, 'Davao Cityu', '1994-09-27', 'Single', 1, 'Female', 'Filipino', 'Roman Catholic', 'English,Filipino, Cebuano', '5\'0"', '46Kgs', NULL, NULL, NULL, 'San Agustine, Ulas Davao City', NULL, NULL, '09421433737', NULL, 'jhoii_dealca@yahoo.com', NULL, 'San Agustine, Ulas Davao City', 'San Agustine, Ulas Davao City', 'Gilbert S. Dealca Jr.', 'San Agustine, Ulas Davao City', NULL, NULL, NULL, 'Reynilda C. Dealca', 'San Agustine, Ulas Davao City', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-05-04', 202, 8, 102, 62, NULL, NULL, NULL, NULL, 'Regular'),
	(372, NULL, NULL, 4, NULL, 'Raul Adrian', 'Apuli', 'Altavano', NULL, NULL, 'Legazpi City, albay', '1993-05-08', 'Single', 1, 'Male', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, NULL, NULL, 'Blk. 15 Lot 1 silvercreak Subd., Carmen, Cagayan d', NULL, NULL, '09056935376', NULL, 'grawling08@gmail.com', NULL, 'Blk. 15 Lot 1 silvercreak Subd., Carmen, Cagayan de Oro City', 'Blk. 15 Lot 1 silvercreak Subd., Carmen, Cagayan de Oro City', 'Raul L. Altavano', '#904 Our Lady\'s Village, Bitano, Legazpi City', NULL, NULL, NULL, 'Hipolita A. Altavano', '#904 Our Lady\'s Village, Bitano, Legazpi City', 'Budget Officer', 'Dep\'t. of Agrarian Reform Regn\'l. Office 5', '', NULL, NULL, NULL, NULL, NULL, '2016-11-21', 72, 1, 1, 32, NULL, '150504494774', '121144034952', '445182360', 'Regular'),
	(382, NULL, NULL, 1, NULL, 'May', 'Abroguena', 'Ebalang', 'MAE', NULL, 'Cagayan de Oro City', '1980-05-14', 'Single', 1, 'Female', 'Filipino', 'Protestant', 'English,Filipino, Visayan', '5\'3"', NULL, NULL, NULL, NULL, 'Zone 7 N11 Adelfa St. Carmen Ilaya, CDOC', NULL, NULL, '09277000684', NULL, 'uzziah_bhlue@yahoo.com', NULL, 'Block 19 L3 Oro Habitat Calaanan, Canitoan CDOC', 'Block 19 L3 Oro Habitat Calaanan, Canitoan', 'Ceasar B. Ebalang', 'Zone 7 N11 Adelfa St. Carmen Ilaya, CDOC', 'deceased', NULL, NULL, 'Estella S. Abroguena', 'Zone 7 N11 Adelfa St. Carmen Ilaya, CDOC', 'housewife', NULL, '', NULL, NULL, NULL, NULL, NULL, '2016-05-04', 252, 8, 92, 52, '08-1441611-0', '150251158837', '121030943288', '930-840161', 'Regular'),
	(392, NULL, NULL, 1, NULL, 'Charlene', 'Jomoc', 'Almuete', NULL, NULL, 'Cagayan de Oro City', '1995-12-04', 'Single', 1, 'Female', 'Filipino', 'Seventh Day Adventist', NULL, NULL, NULL, NULL, NULL, NULL, 'Blk. 37 Lot 14 NHA Phase 2 Kauswagan, Cagayan de O', NULL, NULL, '09054050785', NULL, 'cs8almuetecharlene@gmail.com', NULL, 'Blk. 37 Lot 14 NHA Phase 2 Kauswagan, Cagayan de Oro City', 'Blk. 37 Lot 14 NHA Phase 2 Kauswagan, Cagayan de Oro City', 'Humber V. almuete', 'Blk. 37 Lot 14 NHA Phase 2 Kauswagan, Cagayan de Oro City', 'Mechanical Engineer', NULL, '735526', 'Rosario J. Almuete', 'Blk. 37 Lot 14 NHA Phase 2 Kauswagan, Cagayan de Oro City', 'Civil Engineer', NULL, '', NULL, NULL, NULL, NULL, NULL, '2016-04-05', 72, 1, 1, 32, '0826525316', '150504277390', NULL, '330785931', 'Regular'),
	(402, NULL, NULL, 1, NULL, 'Patricio', 'R.', 'Galdo', 'PRG', NULL, 'Lagonglong', NULL, 'Single', 1, 'Male', 'Filipino', 'Roman Catholic', 'Tagalog, Visayan', NULL, '50kgs', NULL, NULL, NULL, 'Balulang, Cagayan de Oro City', NULL, NULL, NULL, NULL, NULL, NULL, 'Lagonglong Misamis Oriental', 'Lagonglong Misamis Oriental', 'Isabelo V. Gardo', 'Lagonglong Misamis Oriental', 'deceased', NULL, NULL, 'Corazon R. Galdo', 'Lagonglong Misamis Oriental', 'housewife', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2007-11-01', 282, 8, 82, 52, NULL, NULL, NULL, NULL, 'Regular'),
	(412, NULL, NULL, 1, NULL, 'Marco', 'Costamero', 'Arangco', NULL, NULL, 'Trento, Agusan del Sur', '1981-09-12', 'Married', 8, 'Male', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, NULL, NULL, 'Phase 2, Marianville Subd., Landless, Tipanoy, Ili', NULL, NULL, '09471936635', NULL, 'marcoarangco@gmail.com', NULL, 'Phase 2, Marianville Subd., Landless, Tipanoy, Iligan City', 'Phase 2, Marianville Subd., Landless, Tipanoy, Iligan City', 'Marino D. Arangco', 'Sta. Maria, Trento, Agusan del Sur', 'Senior Police Officer- Retired', 'PNP', NULL, 'Marites C. Arangco', 'Sta. Maria, Trento, Agusan del Sur', 'Housewife', NULL, NULL, 'Juvelyn N. Arangco', 'Phase 2, Marianville Subd., Landless, Tipanoy, Iligan City', 'Bookkeeper', 'MAnila Teachers\'', '2147483647', '2015-05-04', 72, 1, 1, 32, '06-2815784-3', '120507216566', '912202004888', '268-593-414', 'Regular'),
	(422, NULL, NULL, 1, NULL, 'Izza Honey', 'C.', 'Manluza', 'ICM', NULL, 'Bayabason, Maramag Bukidnon', '1986-11-22', 'Married', 2, 'Female', 'Filipino', 'Roman Catholic', 'English, Tagalog,', '5\'2"', '55Kgs', NULL, 'Black', NULL, 'Bayabason, Maramag Bukidnon', NULL, NULL, NULL, NULL, NULL, NULL, 'Bayabason, Maramag Bukidnon', 'Bayabason, Maramag Bukidnon', 'Leonardo Canoneo', 'Bayabason, Maramag Bukidnon', NULL, NULL, NULL, 'Beatres B. Canoneo', 'Bayabason, Maramag Bukidnon', NULL, NULL, NULL, 'Mark Fel C. Manluza', 'Bayabason, Maramag Bukidnon', NULL, NULL, NULL, '2015-03-16', 272, 8, 112, 52, '08-1832709-8', '030507822025', '121137475012', '326-755-623', 'Regular'),
	(442, NULL, NULL, 1, NULL, 'Cherie Mae', 'Dela Torre', 'Maghanoy', 'CDM', NULL, 'Ozamis City', '1980-10-08', 'Single', 1, 'Female', 'Filipino', 'Roman Catholic', 'English, Filipino, Visayan', '5\'2"', NULL, NULL, NULL, NULL, 'Purok 1 Manaka, Ozamis City', NULL, NULL, '09285314905', '09263425404', 'cheriemae.maghanoy@yahoo.com', NULL, 'Purok 1 Manaka, Ozamis City', 'Purok 1 Manaka, Ozamis City', 'Alberto O. Maghanoy', 'Purok 1 Manaka, Ozamis City', NULL, NULL, NULL, 'Corazon dela Torre Maghanoy', 'Purok 1 Manaka, Ozamis City', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-03-16', 202, 8, 102, 52, '08-1275316-3', '150251721450', '121099680814', '907-060-178', 'Regular'),
	(452, NULL, NULL, 1, NULL, 'Arnaldo', 'Arguilles', 'Mantillas', NULL, NULL, 'Butuan City', '1971-12-04', 'Married', 3, 'Female', 'Filipino', NULL, 'English, Tagalog, Visayan', '1.67meters', '95Kgs', 'A +', NULL, NULL, 'Blk 10 L4 Happy Homes Subd. Brgy. Ambago, Butuan C', NULL, NULL, '09471214313', NULL, 'arms120471@hotmail.com', NULL, 'Blk 10 L4 Happy Homes Subd. Brgy. Ambago, Butuan City', 'Blk 10 L4 Happy Homes Subd. Brgy. Ambago, Butuan City', 'Hilario C. Mantillas', 'Blk 10 L4 Happy Homes Subd. Brgy. Ambago, Butuan City', NULL, NULL, NULL, 'Jovita T. Arguilles', 'Blk 10 L4 Happy Homes Subd. Brgy. Ambago, Butuan City', NULL, NULL, NULL, 'Cherrymel Mantillas', 'Blk 10 L4 Happy Homes Subd. Brgy. Ambago, Butuan City', 'Regional Manager', 'Manila Teacher\'s', '3419767', '2016-05-01', 292, 8, 112, 52, '08-1075836-1', NULL, '310101797702', '180-027-122', 'Regular'),
	(462, NULL, NULL, 1, NULL, 'Brazzel Gay', 'J.', 'Cabaltera', NULL, NULL, 'San Jose, Aurora, Zamboanga del Sur', '1995-08-25', 'Single', 1, 'Female', 'Filipino', 'Roman Catholic', 'English, Tagalog, Visayan', NULL, NULL, NULL, NULL, NULL, 'Zone 1, Igpit, opol, Misamis Oriental', NULL, NULL, '09264542455', NULL, 'brazzelgay@gmail.com', 'Jennifer J. Cabaltera', 'Navalan, Tukan, Zamboanga del sur', 'Navalan, Tukan, Zamboanga del sur', NULL, NULL, NULL, NULL, NULL, 'Jennifer J. Cabaltera', 'Navalan, Tukan, Zamboanga del sur', NULL, NULL, '‎09072038080', NULL, NULL, NULL, NULL, NULL, '2016-05-23', 74, 1, 1, 32, '0939595806', '010520667240', '121151311466', '472885607', 'Regular'),
	(472, NULL, NULL, 1, NULL, 'Renan', 'A.', 'Moreno', NULL, NULL, 'Cagayan de Oro City', '1985-09-06', 'Married', 2, 'Male', 'Filipino', 'Roman Catholic', 'English, Tagalog, Visayan', '5\'8', '165 lb', NULL, NULL, NULL, 'B17 L b Yale St., Cambridge Subd., Iponan, Cagayan', NULL, NULL, '09189042101', NULL, 'ramoreno@smsi.com.ph', NULL, 'B17 L b Yale St., Cambridge Subd., Iponan, Cagayann de Oro City', 'B17 L b Yale St., Cambridge Subd., Iponan, Cagayann de Oro City', 'Renato Moreno', 'B-9 L-9 Emily Homes Subd., Macahan Carmen, Cagayan de Oro City', NULL, NULL, NULL, 'Aida A. Moreno', 'B-9 L-9 Emily Homes Subd., Macahan Carmen, Cagayan de Oro City', NULL, NULL, NULL, 'Lovelie Flor Q. Moreno', 'B17 L b Yale St., Cambridge Subd., Iponan, Cagayann de Oro City', NULL, NULL, NULL, '2011-05-16', 73, 1, 1, 32, '0816173053', '150502397216', '182000543107', '410675176', 'Regular'),
	(482, NULL, NULL, 1, NULL, 'Rolando', 'T.', 'Mosqueda', NULL, NULL, 'Tagum Kapalong', '1982-11-26', 'Single', 1, 'Male', 'Filipino', 'Roman Catholic', 'Visaya, Tagalog', '5\'6"', '60Kgs', NULL, NULL, NULL, 'D.D.F Village Mandug Davao City', NULL, NULL, '09108399148', NULL, NULL, NULL, 'D.D.F Village Mandug Davao City', 'D.D.F Village Mandug Davao City', 'Gardencio Mosquedo', 'D.D.F Village Mandug Davao City', NULL, NULL, NULL, 'Rebecca Mosquedo', 'D.D.F Village Mandug Davao City', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-09-02', 322, 8, 82, 62, '09-2739922-1', '160505100007', '104002257284', '422-012-424', 'Regular'),
	(502, NULL, NULL, 1, NULL, 'Jean', 'S.', 'Godornes', NULL, NULL, 'Iponan, Cagayan de Oro City', '1986-11-25', 'Married', 2, 'Female', 'Filipino', 'Roman Catholic', 'English, Tagalog, Visayan', NULL, NULL, NULL, NULL, NULL, 'San Nicolas St. Zone 2 Kauswagan, Cagayan de Oro C', NULL, NULL, NULL, NULL, NULL, 'Randy Edward G. Godornes', 'San Nicolas St. Zone 2 Kauswagan, Cagayan de Oro City', 'San Nicolas St. Zone 2 Kauswagan, Cagayan de Oro City', 'Baudelio B. Salvan', NULL, NULL, NULL, NULL, 'Mamelita A. Salvan', 'Blk. 3 Lot 5 Villa Candida Bulua, Cagayan de Oro City', 'Housewife', NULL, NULL, 'Randy Edward G. Godornes', 'San Nicolas St. Zone 2 Kauswagan, Cagayan de Oro City', NULL, NULL, '‎09263480340', '2007-11-12', 18, 1, 22, 32, '0816613128', '150501858430', '182000563981', '950159075', 'Regular'),
	(512, NULL, '116', 1, NULL, 'Michael', 'Dayag', 'Baculio', NULL, NULL, 'Cagayan de Oro City', '1987-12-04', 'Married', 7, 'Male', 'Filipino', 'Roman Catholic', 'English, Tagalog, Visayan', '5\'8\'\'', '68 kgs.', NULL, NULL, NULL, 'Villarin St. Zone 8, Carmen, Cagayan de Oro City', NULL, NULL, '09268775535', NULL, 'mikebaculio@gmail.com', NULL, 'Villarin St. Zone 8, Carmen, Cagayan de Oro City', 'Villarin St. Zone 8, Carmen, Cagayan de Oro City', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-06-01', 302, 1, 1, 32, '08-1605491-0', '010505744239', '109002186565', '256027612', 'Regular'),
	(542, NULL, NULL, 1, NULL, 'Robert', 'Batonghinog', 'Bersano', NULL, NULL, 'Camp Phillips, Manolo Fortich, Bukidnon', '1980-12-04', 'Married', 7, 'Male', 'Filipino', 'Roman Catholic', 'English, Tagalog, Visayan', NULL, NULL, NULL, NULL, NULL, 'Blk.1 Lot 17 Green Meadows Subd., Barra Opol Mi. O', NULL, NULL, NULL, NULL, 'nicejames09@yahoo.com', 'Melanie M. Bersano', 'Blk.1 Lot 17 Green Meadows Subd., Barra Opol Mi. Or.', 'Blk.1 Lot 17 Green Meadows Subd., Barra Opol Mi. Or.', 'Eleuterio Bersano', '373 M - St. Camp Philips, Bukidnon', 'Land Prep. Operator', 'DMPI', NULL, 'Terencia Bersano', '373 M - St. Camp Philips, Bukidnon', 'Housewife', NULL, NULL, 'Melanie M. Bersano', 'Blk.1 Lot 17 Green Meadows Subd., Barra Opol Mi. Or.', 'Branch Manager', 'Manila Teachers\'', NULL, '2005-01-03', 20, 1, 1, 32, '0815082802', '020503777364', '104002242398', '937694691', 'Regular'),
	(552, NULL, NULL, 1, NULL, 'Pete Emmanuell', 'L.', 'Balagosa', NULL, NULL, 'Cagayan de Oro City', '1988-02-05', 'Single', 1, 'Male', 'Filipino', 'Roman Catholic', 'English, Tagalog, Visayan', NULL, NULL, NULL, NULL, NULL, 'F. Dabatian St., Carmen, Cagayan de Oro City', NULL, NULL, '09068591013', NULL, 'petebals5@gmail.com', NULL, 'F. Dabatian St., Carmen, Cagayan de Oro City', 'F. Dabatian St., Carmen, Cagayan de Oro City', 'Pepe Balagosa', 'Lila, Lomanoy Bohol', NULL, NULL, NULL, 'Dativa L. Balagosa', 'F. Dabatian St., Carmen, CDO', NULL, NULL, '09258195875', NULL, NULL, NULL, NULL, NULL, '2016-03-16', 302, 1, 1, 32, '08-1801748-9', '150503883890', '121134979348', '330784605', 'Regular'),
	(562, NULL, NULL, 1, NULL, 'Khristian Darylle Joe', 'Bona', 'Battad', NULL, NULL, 'Quezon City', '1990-12-09', 'Single', 1, 'Male', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, NULL, NULL, '112 Old Samson Rd., Apolonio Samson, Quezon City', NULL, NULL, '09164641392', NULL, 'darylle.battad@gmail.com', 'Danillo Battad', '112 Old Samson Rd., Apolonio Samson, Quezon City', '112 Old Samson Rd., Apolonio Samson, Quezon City', 'Danillo Battad', '112 Old Samson Rd., Apolonio Samson, Quezon City', NULL, NULL, '3622074', 'Josie B. Battad', '112 Old Samson Rd., Apolonio Samson, Quezon City', 'Housewife', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-08-10', 76, 1, 1, 32, '3442813205', '020262108512', '121131509835', '468727860', 'Regular'),
	(582, NULL, NULL, 1, NULL, 'John', 'M.', 'Mingo', NULL, NULL, 'Lumbia, Cagayan de Oro', '1989-06-06', 'Single', 1, 'Male', 'Filipino', 'Born Again Christian', 'English, Filipino', NULL, NULL, NULL, NULL, NULL, 'Lumbia,  Cagayan de Oro City', NULL, NULL, NULL, NULL, NULL, NULL, 'Lumbia,  Cagayan de Oro City', 'Lumbia,  Cagayan de Oro City', 'Bebito A. Mingo', 'Lumbia,  Cagayan de Oro City', NULL, NULL, NULL, 'Teresa M. Mingo', 'Lumbia,  Cagayan de Oro City', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-03-01', 182, 8, 112, 62, '09-3781267-5', '160506605102', '121122227418', '466-263-614', 'Regular'),
	(592, NULL, NULL, 1, NULL, 'Gina', 'Aboyme', 'Micoy', NULL, NULL, 'Davao City', '1979-06-13', 'Married', 8, 'Female', 'Filipino', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Prk 23-A Brgy 76-A Bucana Ecoland Times Beach, Mat', NULL, NULL, '09258242635', NULL, NULL, NULL, 'Prk 23-A Brgy 76-A Bucana Ecoland Times Beach, Matina Davao City', 'Prk 23-A Brgy 76-A Bucana Ecoland Times Beach, Matina Davao City', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-09-01', 312, 8, 102, 62, '09-2734790-1', '160502253724', '121059984317', '946-922-702', 'Regular'),
	(602, NULL, NULL, 1, NULL, 'Lowie', 'G.', 'Ulo', NULL, NULL, NULL, '1981-01-21', 'Married', 2, 'Male', 'Filipino', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Catalunan Grande Davao City', NULL, NULL, '09305193188', NULL, NULL, NULL, 'Catalunan Grande Davao City', 'Catalunan Grande Davao City', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Angelie L. Ulo', 'Catalunan Grande Davao City', NULL, NULL, '', '2014-04-17', 322, 8, 82, 62, '09-3438201-4', '162008037167', '121142112706', '466-263-405', 'Regular'),
	(612, NULL, NULL, 5, NULL, 'Mario', 'Quiam', 'Tolosa', NULL, NULL, 'San Narciso Quezon', '1977-10-26', 'Married', 9, 'Male', 'Filipino', 'Christian', NULL, '5\'6"', '48Kg', NULL, NULL, NULL, '#49 Brgy. Maravilla Magdalena, Laguna', NULL, NULL, '09478166305', NULL, NULL, NULL, '#49 Brgy. Maravilla Magdalena, Laguna', '#49 Brgy. Maravilla Magdalena, Laguna', 'Jose Tolosa', '#49 Brgy. Maravilla Magdalena, Laguna', 'Farmer', NULL, NULL, 'Flora Q. Tolosa', '#49 Brgy. Maravilla Magdalena, Laguna', NULL, NULL, NULL, 'Jilanie R. Tolosa', '#49 Brgy. Maravilla Magdalena, Laguna', 'Housewife', NULL, '2147483647', '2016-03-01', 332, 8, 112, 52, '33-2666182-9', '082011907160', NULL, NULL, 'Regular'),
	(622, NULL, NULL, 4, NULL, 'Julius', 'B.', 'Lascano', 'JBL', NULL, 'Manila', '1972-07-14', 'Separated', 1, 'Male', 'Filipino', 'Roman Catholic', 'Filipino, English', '5\'5"', '160lbs', NULL, NULL, NULL, '93 L.Lupa St. Maypajo Caloocan City', NULL, NULL, '09166823210', NULL, 'julius.lascano714@gmail.com', NULL, '93 L.Lupa St. Maypajo Caloocan City', '93 L.Lupa St. Maypajo Caloocan City', 'Cesar L. Lascano', '93 L.Lupa St. Maypajo Caloocan City', 'Deceased', NULL, NULL, 'Ofelia B. Bismonte', '93 L.Lupa St. Maypajo Caloocan City', 'Businesswoman', NULL, '', NULL, NULL, NULL, NULL, NULL, '2017-03-01', 342, 8, 112, 52, '33-3909769-7', '190521055409', '108000076981', '918-900-880', 'Probationary'),
	(632, NULL, NULL, 4, NULL, 'Romnick June', 'A.', 'Elcana', 'RAE', NULL, 'Mati City', '1989-06-15', 'Single', 1, 'Male', 'Filipino', 'Seventh Day Adventist', NULL, '5\'5"', '73Kgs', NULL, NULL, NULL, 'San Ignacio, Manay Davao City', NULL, NULL, '09487553880', NULL, 'rjelcana@gmail.com', NULL, 'San Ignacio, Manay Davao City', 'San Ignacio, Manay Davao City', 'Anselmo L. Elcana', 'San Ignacio, Manay Davao City', NULL, NULL, '2147483647', 'Jocelyn Elcana', 'San Ignacio, Manay Davao City', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '2017-01-16', 192, 8, 112, 62, '09-2857476-0', '160502796558', '121194643961', NULL, 'Probationary'),
	(642, NULL, NULL, 1, NULL, 'Diane Joy', 'Yu', 'Mapano', NULL, NULL, 'Upper Pulacan, Labangan, Zamboanga del Sur', '1991-11-11', 'Single', 1, 'Female', 'Filipino', 'Roman Catholic', 'English, Tagalog, Visayan', '5\'3', '68 kl.', NULL, NULL, NULL, '408 Prk. Hillside, Upper Pulacan, Labangan, Zamboa', NULL, NULL, '09076367117', NULL, 'diane_111109@yahoo.com', NULL, '408 Prk. Hillside, Upper Pulacan, Labangan, Zamboanga del Sur', '408 Prk. Hillside, Upper Pulacan, Labangan, Zamboanga del Sur', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2013-07-18', 352, 1, 7, 32, '1010277291', '140251731043', '121007858757', '452117419', 'Regular'),
	(652, NULL, NULL, 1, NULL, 'Cresar John', 'Reyes', 'Arce', NULL, NULL, 'San Isidro, Davao Oriental', '1978-10-23', 'Married', 8, 'Male', 'Filipino', 'Roman Catholic', 'English, Tagalog, Visayan', '5\'4', '60 kg', NULL, NULL, NULL, 'Poblacion, San Isidro, Davao Oriental', NULL, NULL, '09464154507', NULL, 'cjarce_power@yahoo.com', NULL, 'Poblacion, San Isidro, Davao Oriental', 'Poblacion, San Isidro, Davao Oriental', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-02-01', 112, 1, 7, 32, '0922273135', '162003641023', '190000056276', '947987046', 'Regular'),
	(662, NULL, NULL, 1, NULL, 'Lorman', 'S.', 'Saladaga', NULL, NULL, 'Tapian, San Miguel, Zamboanga del Sur', '1989-10-17', 'Single', 1, 'Male', 'Filipino', 'Roman Catholic', 'English, Tagalog, Visayan', '5\'6', '74kls.', NULL, NULL, NULL, 'Bulawan San Miguel, Zamboanga del Sur', NULL, NULL, '09107465042', NULL, 'lorm89@gmail.com', NULL, 'Bulawan San Miguel, Zamboanga del Sur', 'Bulawan San Miguel, Zamboanga del Sur', 'Tomasito Saladaga', 'Bulawan San Miguel, Zamboanga del Sur', 'Farmer', NULL, NULL, 'Lestina Saladaga', 'Bulawan San Miguel, Zamboanga del Sur', 'Housewife', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2013-06-01', 24, 1, 7, 32, '1009497752', '140251248725', '914301364780', '816667', 'Regular'),
	(672, NULL, NULL, 1, NULL, 'Geneth', 'L.', 'Sayson', NULL, NULL, 'Davao', '1991-03-11', 'Single', 1, 'Female', 'Filipino', 'Roman Catholic', 'English, Tagalog, Visayan', NULL, NULL, NULL, NULL, NULL, '039 Gentiles Subd., Brgy. New Visayas, Panabo City', NULL, NULL, '09101662549', NULL, 'genethsayson@gmail.com', NULL, '039 Gentiles Subd., Brgy. New Visayas, Panabo City', '039 Gentiles Subd., Brgy. New Visayas, Panabo City', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-07-20', 24, 1, 7, 32, '0935125869', '160505344984', '121070911178', '429361074', 'Regular'),
	(682, NULL, NULL, 1, NULL, 'Nancy', 'Montebon', 'Wong', NULL, NULL, 'Davao City', '1980-08-07', 'Single', 3, 'Female', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, NULL, NULL, 'Blk. 1 Lot 35 & 36 Santan St., Villa Josefina Subd', NULL, NULL, '09177739208', NULL, 'nmw0807@gmail.com', NULL, 'Blk. 1 Lot 35 & 36 Santan St., Villa Josefina Subd., Matina Crossing, Davao City', 'Blk. 1 Lot 35 & 36 Santan St., Villa Josefina Subd., Matina Crossing, Davao City', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kadil Sinolinding Jr.', 'Blk. 1 Lot 35 & 36 Santan St., Villa Josefina Subd., Matina Crossing, Davao City', 'Doctor', NULL, '2147483647', '2016-07-05', 362, 9, 42, 42, '0919148684', '160501640325', '101000063572', '940042814', 'Regular'),
	(692, NULL, NULL, 1, NULL, 'Jeffrey', 'Moneba', 'Antoque', NULL, NULL, 'Digos City', NULL, 'Single', 1, 'Male', 'Filipino', 'Roman Catholic', NULL, '5\'8"', '76Kgs', NULL, NULL, NULL, 'Estrada 2nd, Digos City', NULL, NULL, '09308334162', NULL, 'jessa.antoque@yahoo.com', NULL, 'Estrada 2nd, Digos City', 'Estrada 2nd, Digos City', 'Danillo Antoque', 'Estrada 2nd, Digos City', 'Honda Authorize Mechanic', NULL, NULL, 'Maria Theressa M. Antoque', 'Estrada 2nd, Digos City', 'Housewife', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2013-12-02', 68, 3, 172, 72, '0937380136', '160255309649', '121111591247', '409174979', 'Regular'),
	(702, NULL, NULL, 1, NULL, 'Salome', 'M.', 'Bodiongan', NULL, NULL, 'Davao City', '1989-01-10', 'Single', 1, 'Female', 'Filipino', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sto. Nino Porras St. Davao City', NULL, NULL, '09195186051', NULL, 'sambodiongan@yahoo.com', NULL, 'Sto. Nino Porras St. Davao City', 'Sto. Nino Porras St. Davao City', 'Silverio E. Bodiongan', 'Sto. Nino Porras St. Davao City', 'deceased', NULL, NULL, 'Evangeline M. Bodiongan', 'Sto. Nino Porras St. Davao City', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-04-22', 33, 3, 172, 82, NULL, NULL, NULL, NULL, 'Regular'),
	(712, NULL, NULL, 4, NULL, 'Ryan Evan', 'P.', 'Almacin', NULL, NULL, 'Davao City', '1982-03-14', 'Married', 2, 'Male', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, NULL, NULL, 'ARC Bartoline Compound, Bago Aplaya, Davao City', NULL, NULL, '09474814964', NULL, NULL, NULL, 'ARC Bartoline Compound, Bago Aplaya, Davao City', 'ARC Bartoline Compound, Bago Aplaya, Davao City', NULL, '', NULL, NULL, NULL, 'Dalinda P. Almacin', 'ARC Bartoline Compound, Bago Aplaya, Davao City', NULL, NULL, NULL, 'Charito D. Almacin', 'ARC Bartoline Compound, Bago Aplaya, Davao City', NULL, NULL, NULL, '2017-01-16', 39, 3, 172, 82, '09-2732070-8', NULL, NULL, '432-197-977', 'Probationary'),
	(722, NULL, NULL, 1, NULL, 'Raquel', 'A.', 'Baldecantos', NULL, NULL, 'Lantian Labangan, Zamboanga del Sur', '1993-02-02', 'Single', 1, 'Female', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, NULL, NULL, 'Broca St. San Jose District, Pagadian City', NULL, NULL, '09076708600', NULL, 'baldecantosraquel1993@gmail.com', NULL, 'Broca St. San Jose District, Pagadian City', 'Broca St. San Jose District, Pagadian City', NULL, NULL, NULL, NULL, NULL, 'Zenaida A. Baldecantos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-07-15', 402, 3, 162, 102, '3458063803', '140502131016', '121167253093', NULL, 'Regular'),
	(732, NULL, NULL, 1, NULL, 'Gwyne', 'G.', 'Delos Reyes', NULL, NULL, 'Davao City', '1979-10-08', 'Married', 2, 'Female', 'Filipino', 'Roman Catholic', NULL, '5\'2', '50kg.', NULL, NULL, NULL, 'Blk. 2 Lot 16 silver St. Mineral Village, Bajada, ', NULL, NULL, '09999915949', NULL, 'gwyndelos@gmail.com', NULL, 'Blk. 2 Lot 16 silver St. Mineral Village, Bajada, Davao City', 'Blk. 2 Lot 16 silver St. Mineral Village, Bajada, Davao City', NULL, NULL, NULL, NULL, NULL, 'Fidencia N. Gabaton', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-04-30', 372, 3, 162, 82, '0922110900', '160501436590', '121029344671', '931745676', 'Regular'),
	(742, NULL, NULL, 1, NULL, 'Miejor', 'T.', 'Dela Cruz', NULL, NULL, 'Zamboanga City', '1983-09-24', 'Married', 8, 'Male', 'Filipino', 'Roman Catholic', NULL, '5\'7', '75kg.', NULL, NULL, NULL, 'Balulang, Cagayan de Oro City', NULL, NULL, '09427085206', NULL, 'miejor.delacruz@yahoo.com', NULL, 'Balulang, Cagayan de Oro City', 'Balulang, Cagayan de Oro City', 'Charlie M. Dela Cruz', NULL, NULL, NULL, NULL, 'Susan T. Bontia', 'Balulang, Cagayan de Oro City', 'Housewife', NULL, NULL, 'Jezyl L. Dela Cruz', 'Balulang, Cagayan de Oro City', NULL, NULL, NULL, '2016-06-20', 63, 3, 3, 82, NULL, '150502394209', NULL, NULL, 'Regular'),
	(752, NULL, NULL, 4, NULL, 'Rudini', 'G.', 'Galdo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-02-03', 402, 3, 3, 82, NULL, NULL, NULL, NULL, 'Probationary'),
	(762, NULL, NULL, 4, NULL, 'Allyn', 'C.', 'Angustia', NULL, NULL, 'Davao City', '1994-11-27', 'Single', 1, 'Female', 'Filipino', 'Roman Catholic', NULL, '5\'5"', '50kls.', NULL, NULL, NULL, '172 Gumamela St., Kasilak Bucana, Davao City', NULL, NULL, '09300670456', NULL, NULL, NULL, '172 Gumamela St., Kasilak Bucana, Davao City', '172 Gumamela St., Kasilak Bucana, Davao City', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-10-17', 65, 3, 3, 82, '0939076231', '162509528500', NULL, NULL, 'Regular'),
	(772, NULL, NULL, 1, NULL, 'Reil Hazzin', 'Batilona', 'Bicoy', NULL, NULL, NULL, '1992-11-11', 'Married', 7, 'Male', 'Filipino', 'Roman Catholic', NULL, '5\'5"', '50kg.', NULL, NULL, NULL, 'Lower Dicayas, Dipolog City', NULL, NULL, '09468516163', NULL, 'bicoyreilhazzin@gmail.com', NULL, 'Lower Dicayas, Dipolog City', 'Lower Dicayas, Dipolog City', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-05-14', 412, 3, 3, 102, '1011114502', '120513230309', '121142125817', NULL, 'Regular'),
	(782, NULL, NULL, 1, NULL, 'Marlon', 'R.', 'Gal', NULL, NULL, 'Makilala, Cotabato', '1985-03-29', 'Married', 2, 'Male', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, NULL, NULL, 'Makilala, North Cotabato', NULL, NULL, '09468912462', NULL, NULL, NULL, 'Makilala, North Cotabato', 'Makilala, North Cotabato', 'Marciano Gal', 'Poblacion, Makilala, Cotabato', 'Tailor', NULL, NULL, 'Leonida Gal', 'Poblacion, Makilala, Cotabato', 'Dress Maker', NULL, NULL, 'Mary Agnes Gallano', 'Makilala, North Cotabato', 'Housewife', NULL, NULL, '2016-09-15', 48, 3, 212, 82, NULL, NULL, NULL, NULL, 'Regular'),
	(792, NULL, NULL, 4, NULL, 'Rudini', 'G.', 'Galdo', NULL, NULL, NULL, '1981-08-22', 'Single', 1, 'Male', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, NULL, NULL, '194 Paseo del Carmen St., Monte Maria Village, Cat', NULL, NULL, '09323007363', NULL, 'galdo.rudini@yahoo.com', NULL, '194 Paseo del Carmen St., Monte Maria Village, Cataluna Grande, Davao City', '194 Paseo del Carmen St., Monte Maria Village, Cataluna Grande, Davao City', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-02-03', 402, 3, 3, 82, NULL, NULL, NULL, NULL, NULL),
	(802, NULL, NULL, 4, NULL, 'Arturo', 'G.', 'Lopez Jr.', NULL, NULL, 'Digos City', '1984-06-26', 'Married', 2, 'Male', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, NULL, NULL, 'Christian Village, Digos City', NULL, NULL, '09481371494', NULL, 'kristine_del@yahoo.com', NULL, 'Christian Village, Digos City', 'Christian Village, Digos City', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kristine Ann D. Lopez', 'Christian Village, Digos City', 'Teacher', NULL, NULL, '2017-02-21', 422, 3, 172, 82, '0929775063', '160252612308', '121180477483', '425186753', 'Probationary'),
	(812, NULL, NULL, 4, NULL, 'Jose Miguel', 'P.', 'Jonelas', NULL, NULL, NULL, '1994-04-09', 'Single', 1, 'Male', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, NULL, NULL, '321 Molave St., DDF Village Mndug, Davao City', NULL, NULL, '09124813756', NULL, 'mjonelas@gmail.com', NULL, '321 Molave St., DDF Village Mndug, Davao City', '321 Molave St., DDF Village Mndug, Davao City', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-01-05', 382, 3, 162, 82, '0941836113', '162506888417', '917004406258', NULL, 'Probationary'),
	(822, NULL, NULL, 1, NULL, 'Jessa', 'Datulayta', 'Bayking', NULL, NULL, NULL, '1993-12-07', 'Single', 1, 'Female', 'Filipino', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-04', 59, 11, 182, 122, '09-35775620', '160256016613', '121177270191', '492-048-158', 'Regular'),
	(832, NULL, NULL, 1, NULL, 'Ralph Nicko', 'Alcober', 'Olam', NULL, NULL, 'Zamboamga , Sibugay', '1991-02-24', 'Single', 1, 'Male', 'Filipino', 'Roman Catholic', NULL, '5\'5"', '59Kgs', NULL, NULL, NULL, 'Taguanao, Indahag CDOC', NULL, NULL, '09161641159', NULL, NULL, NULL, 'Taguanao, Indahag CDOC', 'Taguanao, Indahag CDOC', 'Robinson Olam Sr.', 'Nazareth Kabaslan Zamboanga Sibugay', NULL, NULL, NULL, 'Bernadeta Olam', 'Nazareth Kabaslan Zamboanga Sibugay', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-09-11', 432, 11, 182, 122, '08-1977086-4', '150503440239', '916215856747', '492-049-415', 'Regular'),
	(842, NULL, NULL, 1, NULL, 'Armando', 'L.', 'Bagac', NULL, NULL, NULL, '1993-01-14', 'Single', 1, 'Male', 'Filipino', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-01', 562, 11, 202, 122, '08-23845222', '150503550425', '121138563124', '492-048-869', 'Regular'),
	(852, NULL, NULL, 4, NULL, 'Harold', 'Domo', 'Aparicio', NULL, NULL, 'Manolo Fortich, Bukidnon', '1989-03-21', 'Single', 1, 'Male', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, NULL, NULL, 'Blk25 L6 Phase 2 Villa Trinitas Subd. Bugo, CDOC', NULL, NULL, '09177096134', NULL, 'aparicio.haroldd@gmail.com', NULL, 'Blk25 L6 Phase 2 Villa Trinitas Subd. Bugo, CDOC', 'Blk25 L6 Phase 2 Villa Trinitas Subd. Bugo, CDOC', 'Engr. Norberto L. Aparicio', 'Blk25 L6 Phase 2 Villa Trinitas Subd. Bugo, CDOC', '', NULL, NULL, 'Engr, Milagros S. Domo', 'Blk25 L6 Phase 2 Villa Trinitas Subd. Bugo, CDOC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-04', 58, 11, 4, 122, NULL, '150252810651', NULL, NULL, 'Probationary'),
	(862, NULL, NULL, 1, NULL, 'John Gleen', 'Diaz', 'Panebio', NULL, NULL, 'Pagadian City', '1987-02-25', 'Married', 2, 'Male', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, NULL, NULL, 'Dist. 01, Canitoan CDOC', NULL, NULL, '09258116774', NULL, NULL, NULL, 'Dist. 01, Canitoan CDOC', 'Dist. 01, Canitoan CDOC', 'Mario D. Panebio', 'Dist. 01, Canitoan CDOC', NULL, NULL, NULL, 'Edna D. Panebio', 'Dist. 01, Canitoan CDOC', NULL, NULL, NULL, 'Zeta Ranile Panebio', 'Dist. 01, Canitoan CDOC', NULL, NULL, NULL, '2014-03-10', 57, 11, 4, 122, '08-1461106-7', '030501829486', '121004908041', '288-518-234', 'Regular'),
	(872, NULL, NULL, 1, NULL, 'Arnulfo', 'V.', 'Layco', NULL, NULL, 'Manila', NULL, 'Single', 1, 'Male', 'Filipino', 'Christian Catholic', 'English, Filipino', '5\'5"', '120lbs', NULL, NULL, NULL, 'Blk 8 L8 New Washington  Village Maa, Davao City', NULL, NULL, '09177220531', '09988660531', 'arnie.layco@norminring.com', NULL, 'Blk 8 L8 New Washington  Village Maa, Davao City', 'Blk 8 L8 New Washington  Village Maa, Davao City', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2007-03-01', 452, 3, 162, 82, NULL, NULL, NULL, NULL, 'Regular'),
	(882, NULL, NULL, 4, NULL, 'Stephanie', 'A.', 'Somoza', NULL, NULL, 'Davao City', NULL, 'Single', 1, 'Female', 'Filipino', 'Roman Catholic', 'English, Visayan, Tagalog', NULL, NULL, NULL, NULL, NULL, 'Sales St. Magsaysay Avenue, Davao City', NULL, NULL, '09496971557', '09335626715', 'enahpetsmae12@gmail.com', NULL, 'Sales St. Magsaysay Avenue, Davao City', 'Sales St. Magsaysay Avenue, Davao City', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-02-20', 65, 3, 3, 82, NULL, NULL, NULL, NULL, 'Probationary'),
	(892, NULL, NULL, 1, NULL, 'Jaymar', 'R.', 'Coresis', NULL, NULL, NULL, NULL, 'Single', 1, 'Male', 'Filipino', 'Roman Catholic', NULL, '5\'4"', NULL, NULL, NULL, NULL, '76-A Purok 5 Bucana Trading, Q. Boulevard, Davao C', NULL, NULL, '09225360187', NULL, 'jaymarcoresis@gmail.com', NULL, '76-A Purok 5 Bucana Trading, Q. Boulevard, Davao City', '76-A Purok 5 Bucana Trading, Q. Boulevard, Davao City', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-10-01', 412, 3, 3, 82, '09-2984886-4', '060503261070', NULL, NULL, 'Regular'),
	(902, NULL, NULL, 1, NULL, 'Mark Anthony', 'M.', 'Montera', NULL, NULL, 'Davao Oriental', '1981-03-13', 'Single', 1, 'Male', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, NULL, NULL, 'Poblacion, San Isidro, Davao Oriental', NULL, NULL, '09422674185', NULL, NULL, NULL, 'Poblacion, San Isidro, Davao Oriental', 'Poblacion, San Isidro, Davao Oriental', 'Moises O. Montera', NULL, NULL, NULL, NULL, 'Roberta M. Montera', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-07-12', 462, 3, 212, 82, '0920192988', '162003621529', NULL, '924469729', 'Regular'),
	(912, NULL, NULL, 4, NULL, 'Rizza Mae', 'C.', 'Lapinid', NULL, NULL, 'Kidapawan', '1991-09-13', 'Single', 3, 'Female', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-02-20', 65, 3, 3, 82, '0942047011', '170253314020', '4866783', '485272573', 'Probationary'),
	(922, NULL, NULL, 1, NULL, 'Pamela Ivy', 'A.', 'Improgo', NULL, NULL, 'Manolo Fortich', '1979-02-20', 'Single', 3, 'Female', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, NULL, NULL, 'Magallones Compound, Manolo Fortich, Bukidnon', NULL, NULL, '09173176151', NULL, 'pam.improgo@ktmdavao.com', NULL, 'Magallones Compound, Manolo Fortich, Bukidnon', 'Magallones Compound, Manolo Fortich, Bukidnon', NULL, NULL, NULL, NULL, NULL, 'Lourdes A. Improgo', 'Magallones Compound, Manolo Fortich, Bukidnon', 'Housewife', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2005-02-01', 472, 3, 162, 72, NULL, NULL, NULL, NULL, 'Regular'),
	(932, NULL, NULL, 1, NULL, 'Jenner Nino', 'B.', 'Moneba', NULL, NULL, 'Davao City', '1983-01-15', 'Married', NULL, 'Male', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, NULL, NULL, 'Blk. 21 Lot 12 Samantha Homes, Bago Gallera, Davao', NULL, NULL, '09773452163', NULL, 'jennermonebaducaiktm@gmail.com', NULL, 'Blk. 21 Lot 12 Samantha Homes, Bago Gallera, Davao City', 'Blk. 21 Lot 12 Samantha Homes, Bago Gallera, Davao City', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mericrist C. Moneba', 'Blk. 21 Lot 12 Samantha Homes, Bago Gallera, Davao City', NULL, NULL, '2147483647', '2013-09-22', 482, 3, 5, 82, '0924271258', '160501354306', NULL, '928767649', 'Regular'),
	(942, NULL, NULL, 1, NULL, 'Joesus', 'L.', 'Rabadan', NULL, NULL, 'Zone 3 Kauswagan, Cdo', NULL, 'Single', 3, 'Male', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, NULL, NULL, 'Taguanao, Indahag, CDO', NULL, NULL, '09358993420', NULL, NULL, NULL, 'Taguanao, Indahag, CDO', 'Taguanao, Indahag, CDO', 'Ismael W. Rabadan', NULL, NULL, NULL, NULL, 'Evelyn L. Rabadan', NULL, NULL, NULL, NULL, 'Alfie M. Antillas', NULL, NULL, NULL, NULL, '2015-06-01', 39, 3, 212, 72, NULL, NULL, NULL, NULL, 'Regular'),
	(952, NULL, NULL, 1, NULL, 'Michael Angelou', 'H.', 'Ponte', NULL, NULL, 'San Isidro, Davao Oriental', '1990-04-06', 'Single', 1, 'Male', 'Filipino', 'Roman Catholic', 'English, Tagalog, Visayan', '5\'65"', '63lbs', NULL, NULL, NULL, 'Blk 5 Lot 3 Cory Village, Dacudao Ave. Davao City', NULL, NULL, '09484374461', NULL, 'michaelangelouponte@yahoo.com', NULL, 'Blk 5 Lot 3 Cory Village, Dacudao Ave. Davao City', 'Blk 5 Lot 3 Cory Village, Dacudao Ave. Davao City', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-01-01', 412, 3, 3, 72, NULL, '160504101026', NULL, NULL, 'Regular'),
	(962, NULL, NULL, 1, NULL, 'Leo Alfie', 'A.', 'Quipanes', NULL, NULL, 'Tagbilaran City', '1985-04-21', 'Married', 3, 'Male', 'Filipino', 'Roman Catholic', 'English, Visayan', '5\'5"', '64Kgs', NULL, NULL, NULL, 'Santol St. Manggahan Toril Davao City', NULL, NULL, '09466432634', NULL, 'gleoalfie@yahoo.com', NULL, 'Santol St. Manggahan Toril Davao City', 'Santol St. Manggahan Toril Davao City', 'Leonardo Quipanes', 'Santol St. Manggahan Toril Davao City', NULL, NULL, NULL, 'Maria Salome A. Quipanes', 'Santol St. Manggahan Toril Davao City', NULL, NULL, NULL, 'Emily R. Quipanes', 'Santol St. Manggahan Toril Davao City', NULL, NULL, NULL, '2015-05-11', 68, 3, 172, 92, '06-2515281-2', '120508612104', '913030000320', '289493450000', 'Regular'),
	(972, NULL, NULL, 1, NULL, 'Norben Jay', 'Leron', 'Ruiz', NULL, NULL, 'Digos City', '1983-03-02', 'Married', 9, 'Male', 'Filipino', 'Roman Catholic', NULL, '5\'0"', '50Kgs', NULL, NULL, NULL, '1944 Purok Talisay Roxas Ext. Digos City', NULL, NULL, '09302220566', NULL, 'norbenjayrui78@gmail.com', NULL, '1944 Purok Talisay Roxas Ext. Digos City', '1944 Purok Talisay Roxas Ext. Digos City', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-07-01', 492, 3, 172, 82, '11-0370996-4', '160504245400', '121135281185', '297110378000', 'Regular'),
	(992, NULL, NULL, 1, NULL, 'Danilo', 'T.', 'Palo Jr.', NULL, NULL, 'Kidapawan City', '1981-11-11', 'Married', NULL, 'Male', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, NULL, NULL, 'Lopez St., Kidapawan City', NULL, NULL, '09998501799', NULL, NULL, NULL, 'Lopez St., Kidapawan City', 'Lopez St., Kidapawan City', 'Danilo Palo Sr.', 'Kidapawan City', 'Carpenter', NULL, NULL, 'Helen T. Palo', 'Kidapawan City', 'Housewife', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-02-01', 68, 3, 212, 112, '0923935935', '160501224674', '188000522089', '929085069', 'Regular'),
	(1002, NULL, NULL, 1, NULL, 'Nelson', 'S.', 'Tacoloy', NULL, NULL, 'San Jose Surigao del Sure', '1982-05-01', 'Married', 7, 'Male', 'Filipino', 'Alliance', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-10-26', 502, 3, 212, 82, '0927359096', NULL, '188001482849', '412120768', 'Regular'),
	(1012, NULL, NULL, 1, NULL, 'Roland', 'C.', 'Sarce', NULL, NULL, 'Laak, ComVal Province', '1982-04-22', 'Single', 1, 'Male', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, NULL, NULL, 'Prk. 6A, Bago Gallera, Talomo District, Davao City', NULL, NULL, '09212094647', NULL, NULL, NULL, 'Prk. 6A, Bago Gallera, Talomo District, Davao City', 'Prk. 6A, Bago Gallera, Talomo District, Davao City', 'Romy Sarce', NULL, NULL, NULL, NULL, 'Trinidad Salem', 'Posalina III, Dumoy Toril, Davao City', 'Business Woman', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-10-26', 502, 3, 172, 82, '0922452639', NULL, NULL, NULL, 'Regular'),
	(1022, NULL, NULL, 4, NULL, 'Jasper', 'B.', 'Saludes', NULL, NULL, 'Davao City', '1996-01-21', 'Single', 1, 'Male', 'Filipino', 'Iglesia Ni Cristo', NULL, NULL, NULL, NULL, NULL, NULL, 'Prk. 8 Upper Catitipan Buhangin, Davao City', NULL, NULL, '09103841058', NULL, 'jaspersaludes@gmail.com', NULL, 'Prk. 8 Upper Catitipan Buhangin, Davao City', 'Prk. 8 Upper Catitipan Buhangin, Davao City', 'Lordioso Saludes', 'Prk. 8 Upper Catitipan Buhangin, Davao City', 'Electronic Technician', NULL, NULL, 'Gina Saludes', 'Prk. 8 Upper Catitipan Buhangin, Davao City', 'Housewife', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-11-02', 67, 3, 172, 82, '09-3982708-2', NULL, '1211-5491-23', NULL, 'Probationary'),
	(1032, NULL, NULL, 1, NULL, 'Ivan', 'Orbeta', 'Paredes', NULL, NULL, 'Davao City', '1978-09-14', 'Single', 1, 'Male', 'Filipino', 'Roman Catholic', 'English, Tagalog, Visayan', '5\'7"', NULL, NULL, NULL, NULL, '#27 San Roque St., Toril, Davao City', NULL, NULL, '09088678993', NULL, 'ivan.paredes@norminring.com', NULL, '#27 San Roque St., Toril, Davao City', '#27 San Roque St., Toril, Davao City', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2006-05-02', 472, 3, 162, 102, '09-2319395-5', '160501550229', '915043561517', '922203402', 'Regular'),
	(1042, NULL, NULL, 1, NULL, 'Girlie', 'G.', 'Tolosa', NULL, NULL, NULL, '1983-04-02', 'Single', NULL, 'Female', 'Filipino', 'Protestant', 'English,Tagalog, Chavacano', NULL, NULL, NULL, NULL, NULL, 'Tumaga Road, Luyahan, Pasonanca Zamboanga City', NULL, NULL, '09177038681', NULL, 'tolosagirlie02@gmail.com', NULL, 'Tumaga Road, Luyahan, Pasonanca Zamboanga City', 'Tumaga Road, Luyahan, Pasonanca Zamboanga City', 'Ramon Tolosa', 'Tumaga Road, Luyahan, Pasonanca Zamboanga City', 'Company Driver', NULL, NULL, 'Melodina Tolosa', 'Tumaga Road, Luyahan, Pasonanca Zamboanga City', 'Housewife', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2013-12-07', 402, 3, 162, 92, NULL, NULL, NULL, NULL, 'Regular'),
	(1052, NULL, NULL, 1, NULL, 'Kirbay Jay', 'A.', 'Ragol', NULL, NULL, 'Davao City', '1989-06-06', 'Married', NULL, 'Male', 'Filipino', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Abella Subd., Digos City', NULL, NULL, '09268389931', NULL, 'Kirbyjayragol@yahoo.com', NULL, 'Abella Subd., Digos City', 'Abella Subd., Digos City', 'Ortodome M. Ragol', 'Abella Subd., Digos City', 'Driver', NULL, NULL, 'Josephine A. Ragol', 'Abella Subd., Digos City', 'Housweife', NULL, NULL, 'Sissy R. Ragol', 'Abella Subd., Digos City', 'Teacher', NULL, NULL, '2016-10-13', 67, 3, 172, 82, '09-4205318-6', '162010570662', NULL, NULL, 'Regular'),
	(1062, NULL, NULL, 1, NULL, 'Lovely Judy May', 'P.', 'Villar', NULL, NULL, 'Davao City', '1996-05-31', 'Single', 1, 'Female', 'Filipino', 'Roman Catholic', NULL, '5\'4"', '48Kgs', NULL, NULL, NULL, 'Arroyo Comp. Crossing, Davao City', NULL, NULL, '09179333291', NULL, NULL, NULL, 'Arroyo Comp. Crossing, Davao City', 'Arroyo Comp. Crossing, Davao City', 'Carlos P. Villar', 'Arroyo Comp. Crossing, Davao City', NULL, NULL, NULL, 'Anatalia P. Villar', 'Arroyo Comp. Crossing, Davao City', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-10-17', 65, 3, 3, 82, '0941445135', '160507400628', '121192880142', NULL, 'Regular'),
	(1072, NULL, NULL, 1, NULL, 'Anthony Greg', 'L.', 'Naduma', NULL, NULL, NULL, '1985-11-04', 'Single', 1, 'Male', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, NULL, NULL, '426 Arjuville Subd., Libertad, Butuan City', NULL, NULL, '09179842214', NULL, 'anthonygregnaduma0411@gmail.com', NULL, '426 Arjuville Subd., Libertad, Butuan City', '426 Arjuville Subd., Libertad, Butuan City', NULL, NULL, NULL, NULL, NULL, 'Nancy L. Naduma', '426 Arjuville Subd., Libertad, Butuan City', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '2016-06-16', 522, 3, 3, 72, '06-2877441-7', '180252527352', '121143095233', '460-398-585', 'Regular'),
	(1082, NULL, NULL, 1, NULL, 'Joer', 'S.', 'Delas Penas', NULL, NULL, 'Tagum City', NULL, 'Single', 1, 'Female', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, NULL, NULL, 'Prk. Bulaklak II Lafortuna Magugpo North Tagum Cit', NULL, NULL, '09353302690', NULL, 'delaspenas_joer@yahoo.com', NULL, 'Prk. Bulaklak II Lafortuna Magugpo North Tagum City', 'Prk. Bulaklak II Lafortuna Magugpo North Tagum City', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01', 412, 3, 3, 82, NULL, '170501971165', NULL, '280184534', 'Regular'),
	(1092, NULL, NULL, 1, NULL, 'Ivy', 'R.', 'Florentino', NULL, NULL, NULL, '1994-01-27', 'Single', 1, 'Female', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, NULL, NULL, 'Prk. Sambag, Lower Kiagot, Digos City', NULL, NULL, '09952284322', NULL, 'ivyflorentino27@gmail.com', NULL, 'Prk. Sambag, Lower Kiagot, Digos City', 'Prk. Sambag, Lower Kiagot, Digos City', 'Ike B. Florentino', 'Prk. Sambag, Lower Kiagot, Digos City', NULL, NULL, NULL, 'Ma. Dulsora R. Florentino', 'Prk. Sambag, Lower Kiagot, Digos City', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-07-21', 41, 6, 222, NULL, '0941791452', '162511202515', '916236620041', NULL, NULL),
	(1102, NULL, NULL, 1, NULL, 'April Dan', 'S.', 'Borromeo', NULL, NULL, 'Kapalong', '1995-04-09', 'Single', 1, 'Male', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, NULL, NULL, 'Luna Kapalong, Davao del Norte', NULL, NULL, '09486794342', NULL, 'april09dan@gmail.com', NULL, 'Luna Kapalong, Davao del Norte', 'Luna Kapalong, Davao del Norte', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-08-27', 542, 6, 222, NULL, '940335961', '162500434732', '916273954122', NULL, NULL),
	(1112, NULL, NULL, 4, NULL, 'Junalona', 'R.', 'Basalo', NULL, NULL, 'Malalag, Davao del Sur', '1993-06-21', 'Single', 1, 'Female', 'Filipino', 'Roman Catholic', NULL, NULL, NULL, NULL, NULL, NULL, 'Padre Gomez, Bonifacio St. Davao City', NULL, NULL, '09109128219', NULL, NULL, NULL, 'Prk. 2, IBO, Malalag, Davao del Sur', 'Prk. 2, IBO, Malalag, Davao del Sur', 'Leonardo L. Basalo Sr.', 'Prk. 2, IBO, Malalag, Davao del Sur', 'Farmer', NULL, NULL, 'Evelyn R. Basalo', 'Prk. 2, IBO, Malalag, Davao del Sur', 'Housewife', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-01', 43, 6, 232, NULL, NULL, NULL, NULL, NULL, NULL),
	(1122, NULL, NULL, 5, NULL, 'Margilen', 'Edrozo', 'Abuhan', 'MEA', NULL, 'Opol Misamis Oriental', '1980-12-28', 'Widow', NULL, 'Female', 'Filipino', 'Born Again Christian', NULL, '5\'2"', '54Kgs', NULL, 'Black', NULL, 'Poblacion, Bagocboc Opol Misamis Oriental', NULL, NULL, '09265287804', NULL, NULL, NULL, 'Poblacion, Bagocboc Opol Misamis Oriental', 'Poblacion, Bagocboc Opol Misamis Oriental', 'Diomedes Edoso', 'Poblacion, Bagocboc Opol Misamis Oriental', 'Farmer', NULL, NULL, 'Jeanitha Edroso', 'Poblacion, Bagocboc Opol Misamis Oriental', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-03-01', 56, 10, NULL, NULL, NULL, '150254168765', NULL, '461537289', NULL),
	(1132, NULL, NULL, 1, NULL, 'Alejando', 'Tilos', 'Paloma', 'ATP', NULL, 'Badas Mati City, Davao Oriental', '1971-10-05', 'Married', 7, 'Male', 'Filipino', 'Roman Catholic', NULL, '5\'7"', '150lbs', NULL, NULL, NULL, 'Princeton St. Cambridge Subd. Iponan Cagayan de Or', NULL, NULL, '09366279530', NULL, 'ali.paloma@gmail.com', NULL, 'Princeton St. Cambridge Subd. Iponan Cagayan de Oro City', 'Misamis Oreintal', 'Alfredo D. Paloma', 'Purok #2 Maitum Tubaon Tarrangona Davao Oriental', 'deceased', NULL, NULL, 'Lilia T. Paloma', 'Purok #2 Maitum Tubaon Tarrangona Davao Oriental', NULL, NULL, NULL, 'Emelie P. Paloma', 'Princeton St. Cambridge Subd. Iponan Cagayan de Oro City', NULL, NULL, '2147483647', '2017-04-10', 56, 10, NULL, NULL, '09-2341709-7', '162005511844', NULL, '291789935', NULL),
	(1142, NULL, NULL, 5, NULL, 'Alex', 'Alejandro', 'Paloma', 'AAP', NULL, 'Tokwal Sarangani Province', '1976-07-26', 'Single', NULL, 'Male', 'Filipino', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Purok 2 Brgy. Tinagakan General Santos City', NULL, NULL, '09752343045', NULL, NULL, NULL, 'Purok 2 Brgy. Tinagakan General Santos City', 'Purok 2 Brgy. Tinagakan General Santos City', 'Anisito Paloma', 'Purok 2 Brgy. Tinagakan General Santos City', NULL, NULL, NULL, 'Julia Paloma', 'Purok 2 Brgy. Tinagakan General Santos City', 'Housewife', NULL, NULL, 'Cristy Paloma', 'Purok 2 Brgy. Tinagakan General Santos City', NULL, NULL, NULL, '2017-04-01', 56, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(1152, NULL, NULL, 5, NULL, 'Danilo', 'Delgado', 'Vedida Jr.', NULL, NULL, 'Sarangani Provinve', NULL, 'Single', NULL, 'Male', 'Filipino', NULL, NULL, '5\'4"', '52Kgs', NULL, NULL, NULL, 'Brgy, Tinagacan General Santos City', NULL, NULL, '09261565861', NULL, NULL, NULL, 'Brgy, Tinagacan General Santos City', 'Brgy, Tinagacan General Santos City', 'Danilo Verdida Sr.', 'Yanzon Village, Lagao General Santos City', 'Taxi Driver', NULL, '2147483647', 'Merlinda Verdida', 'Yanzon Village, Lagao General Santos City', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-03-27', 56, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(1162, NULL, NULL, 5, NULL, 'Ronald', 'Eduave', 'Tawacal', NULL, NULL, 'Taglimao, Cdoc', '1982-01-26', 'Married', NULL, 'Male', 'Filipino', 'Born Again Christian', NULL, '5\'4"', '72Kgs', NULL, 'Black', NULL, 'Poblacion, Bagocboc Opol Misamis Oriental', NULL, NULL, '09756516313', NULL, NULL, NULL, 'Poblacion, Bagocboc Opol Misamis Oriental', 'Poblacion, Bagocboc Opol Misamis Oriental', 'Felizardo Tawacal', 'Barra, Opol Misamis Oriental', 'Farmer', NULL, NULL, 'Elviera Tawacal', 'Poblacion, Bagocboc Opol Misamis Oriental', 'Housewife', NULL, NULL, 'Lonie E. Tawacal', 'Poblacion, Bagocboc Opol Misamis Oriental', NULL, NULL, '0', '2017-04-02', 56, 10, NULL, NULL, NULL, '230027168227', NULL, NULL, NULL),
	(1172, NULL, NULL, 5, NULL, 'Anthony', 'Sanchez', 'Potot', NULL, NULL, 'Tubod Lanao del Norte', '1991-09-12', 'Single', NULL, 'Male', 'Filipino', 'Roman Catholic', NULL, '5\'7"', '90lbs', NULL, NULL, NULL, 'Zone 7 Patag, Opol Misamis Oriental', NULL, NULL, '09351307015', NULL, NULL, NULL, 'Zone 7 Patag, Opol Misamis Oriental', 'Zone 7 Patag, Opol Misamis Oriental', NULL, 'Purok 2 San Jose Libona', 'deceased', NULL, NULL, 'Nora Sanchez Potot', 'Purok 2 San Jose Libona', NULL, NULL, NULL, 'Receil Fernandez', 'Zone 7 Patag, Opol Misamis Oriental', 'Housewife', NULL, '2147483647', '2017-04-09', 56, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(1182, NULL, NULL, 1, NULL, 'Janine', 'Llanos', 'Jasmin', NULL, NULL, 'Iligan City, Lanao del Norte', '1993-01-14', 'Single', 3, 'Female', 'Filipino', 'Roman Catholic', 'English, Tagalog, Visayan', '5\'11"', '47Kgs', NULL, NULL, NULL, 'Purok Masilakon 1, Lugait Misamis Oriental', NULL, NULL, '09207522982', NULL, 'nicegal17@gmail.com', NULL, 'Purok Masilakon 1, Lugait Misamis Oriental', 'Purok Masilakon 1, Lugait Misamis Oriental', 'Eleuterio Jasmin', 'Purok Masilakon 1, Lugait Misamis Oriental', 'deceased', NULL, NULL, 'Rosanna Llanos Jasmin', 'Purok Masilakon 1, Lugait Misamis Oriental', 'Housewife', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2013-05-20', 71, 1, 1, 32, '08-2399113-4', '150503497044', '121098502267', '440560910', 'Regular'),
	(1192, NULL, NULL, 4, NULL, 'Christian', 'Morden', 'Rebuyas', NULL, NULL, 'Bislig, Surigao del Sur', NULL, 'Single', NULL, 'Male', 'Filipino', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'B19 Garcia Heights, Bacaca Road Davao City', NULL, NULL, '09078977962', NULL, 'christian984@yahoo.com', NULL, 'B19 Garcia Heights, Bacaca Road Davao City', 'B19 Garcia Heights, Bacaca Road Davao City', NULL, NULL, NULL, NULL, NULL, 'Cristina M. Rebuyas', 'B19 Garcia Heights, Bacaca Road Davao City', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '2016-10-24', 84, 9, 14, 42, '09-4212214-3', '162519095378', '917059132863', NULL, 'Probationary'),
	(1202, NULL, NULL, 1, NULL, 'Joseph', 'R.', 'Giron II', NULL, NULL, 'Benguet, Baguio City', '1984-03-02', 'Single', 1, 'Male', 'Filipino', '', 'English, Filipino', '', NULL, NULL, NULL, NULL, 'Unit 4D Twin Park Building, Road 3 Proj 6 Quezon C', NULL, NULL, '0917344855', '09228382307', 'bluepeach7@yahoo.com', NULL, 'Unit 4D Twin Park Building, Road 3 Proj 6 Quezon City', 'Unit 4D Twin Park Building, Road 3 Proj 6 Quezon City', 'Joseph Fernandez Giron Sr.', 'Unit 4D Twin Park Building, Road 3 Proj 6 Quezon City', 'deceased', NULL, NULL, 'Teresita Rosales Giron', 'Unit 4D Twin Park Building, Road 3 Proj 6 Quezon City', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-01-01', 76, 1, 1, 32, '339-6120-303', '150502868960', '914343835204', '290055877000', 'Regular'),
	(1212, NULL, NULL, 1, NULL, 'Chad Louei', 'C.', 'Sullaga', NULL, NULL, 'Kapatagan, Digos, Davao del Sur', '1994-11-23', 'Single', 1, 'Male', 'Filipino', 'Roman Catholic', 'English, Tagalog, Visayan', '5\'4', '43 kg.', NULL, NULL, NULL, 'Kapatagan, Digos, Davao del Sur', NULL, NULL, '09124544095', NULL, 'chadsullaga1123@gmail.com', NULL, 'Kapatagan, Digos, Davao del Sur', 'Kapatagan, Digos, Davao del Sur', 'Raul R. Sullaga', 'Kapatagan, Digos, Davao del Sur', 'Farmer', NULL, '2147483647', 'Cecilia C. Sullaga', 'Kapatagan, Digos, Davao del Sur', 'Brgy. Health Worker', NULL, '', NULL, NULL, NULL, NULL, NULL, '2016-11-21', 73, 1, 1, 32, '0941828228', '162013068828', '121189041310', '335284227', 'Regular'),
	(1222, NULL, NULL, 4, NULL, 'Franco', 'P.', 'Amesola', NULL, NULL, 'Iligan City', '1980-01-01', 'Single', 1, 'Male', 'Filipino', 'Roman Catholic', 'English, Tagalog, Visayan', '5\'7\'\'', '63kg', NULL, NULL, NULL, 'Siay Batu , Zamboanga Sibugay', NULL, NULL, '09278434744', NULL, NULL, NULL, 'Siay Batu, Zamboanga Sibugay', 'Siay Batu , Zamboanga Sibugay', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Arlyn C. Benito', 'Siay Batu , Zamboanga Sibugay', NULL, NULL, '09366704289', '2017-04-24', 572, 3, 172, 72, '011101706862', '030205910474', '107012316640', '004524260', 'Probationary'),
	(1232, NULL, NULL, 4, NULL, 'Mary Grace', 'A.', 'Escalona', NULL, NULL, 'Luz Village, Mlang, North Cotabato', '1974-05-03', 'Married', 8, 'Female', 'Filipino', 'Roman Catholic', 'English, Visayan, Tagalof', '5\'2"', '47', NULL, NULL, NULL, 'Prk. 6B Lanao, Kidapawan City', NULL, NULL, '09194880606', NULL, 'mgeaescalona@yahoo.com', NULL, 'Prk. 6B Lanao, Kidapawan City', 'Prk. 6B Lanao, Kidapawan City', NULL, NULL, NULL, NULL, NULL, 'Clarita E. Albutra', 'Prk. 6B Lanao, Kidapawan City', 'Housewife', NULL, '09302395832', NULL, NULL, NULL, NULL, NULL, '2017-04-06', 592, 6, 222, 132, NULL, NULL, NULL, NULL, 'Probationary'),
	(1242, NULL, NULL, 4, NULL, 'Noel', 'P.', 'Sobejana', NULL, NULL, 'Davao', '1979-08-09', 'Single', 3, 'Male', 'Filipino', 'Roman Catholic', 'English, Tagalog, Visayan', '5\'7 1/2"', '68', 'O +', 'black', NULL, 'Prk. Tamsi, Sitio Upper Quinokol, Brgy. Inawayan, ', NULL, NULL, '09484539197', NULL, 'noelpsobejana@gmail.com', NULL, 'Prk. Tamsi, Sitio Upper Quinokol, Brgy. Inawayan, Municipality of Sta. Cruz, Davao del Sur', 'Prk. Tamsi, Sitio Upper Quinokol, Brgy. Inawayan, Municipality of Sta. Cruz, Davao del Sur', 'Narciso Sobejana Sr.', 'F. Lopez St. Kidapawan City', 'Government employee', NULL, '09198882577', 'Agnes Sobejana', 'F. Lopez St. Kidapawan City', 'Housewife', NULL, '09287846797', NULL, NULL, NULL, NULL, NULL, '2016-07-04', 602, 6, 222, 132, '0813387680', '190895509276', '1900958641', '215413654', 'Probationary'),
	(1252, NULL, NULL, 4, NULL, 'Kareen', 'J.', 'De Guzman', NULL, NULL, 'Digos City', '1997-05-03', 'Single', 1, 'Female', 'Filipino', 'Roman Catholic', 'English, Tagalog, Cebuano', '5\'1"', '55', NULL, NULL, NULL, 'Blk. 2,Lot 3 Perfect Homes Subdivision, Digos City', NULL, NULL, '09462442253', NULL, 'kareen.deguzman0503@gmail.com', NULL, 'Blk. 2,Lot 3 Perfect Homes Subdivision, Digos City', 'Blk. 2,Lot 3 Perfect Homes Subdivision, Digos City', 'Virgilio H. de Guzman Jr.', 'Blk. 2,Lot 3 Perfect Homes Subdivision, Digos City', 'Stock Custodian', NULL, NULL, 'Sonia J. de Guzman', 'Blk. 2,Lot 3 Perfect Homes Subdivision, Digos City', 'Liaison Officer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-04-06', 44, 6, 232, 132, NULL, NULL, NULL, NULL, 'Probationary');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;

-- Dumping structure for table heroku_760d4109a89e3f8.employees_temp
DROP TABLE IF EXISTS `employees_temp`;
CREATE TABLE IF NOT EXISTS `employees_temp` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_employee` int(11) DEFAULT NULL,
  `emp_id` varchar(50) DEFAULT NULL,
  `emp_bio_id` varchar(50) DEFAULT NULL,
  `fName` varchar(50) DEFAULT NULL,
  `mName` varchar(50) DEFAULT NULL,
  `lName` varchar(50) DEFAULT NULL,
  `shiftgroup` varchar(50) DEFAULT NULL,
  `sss_id` varchar(50) DEFAULT NULL,
  `phic_id` varchar(50) DEFAULT NULL,
  `hdmf_id` varchar(50) DEFAULT NULL,
  `tin` varchar(50) DEFAULT NULL,
  `company` varchar(50) DEFAULT NULL,
  `branch` varchar(50) DEFAULT NULL,
  `position` varchar(50) DEFAULT NULL,
  `rank` varchar(50) DEFAULT NULL,
  `tax_status` varchar(50) DEFAULT NULL,
  `employment_status` varchar(50) DEFAULT NULL,
  `basic_salary` int(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_employee` (`id_employee`)
) ENGINE=MyISAM AUTO_INCREMENT=801 DEFAULT CHARSET=latin1;

-- Dumping data for table heroku_760d4109a89e3f8.employees_temp: 115 rows
/*!40000 ALTER TABLE `employees_temp` DISABLE KEYS */;
INSERT INTO `employees_temp` (`id`, `id_employee`, `emp_id`, `emp_bio_id`, `fName`, `mName`, `lName`, `shiftgroup`, `sss_id`, `phic_id`, `hdmf_id`, `tin`, `company`, `branch`, `position`, `rank`, `tax_status`, `employment_status`, `basic_salary`) VALUES
	(686, 1, '310-98-4', '1005', 'Jennifer', 'Palo', 'Dantes', 'Permanent', '09-2010232-1', '19-050708923', '1040-0220-82', '916-191-555', 'Solutions Management Systems Inc.', 'Cagayan De Oro', 'HRD Head', 'Level 10', 'M1', 'Regular', 10000),
	(687, 2, '', '10025', 'Charizze Mae', 'Taboada', 'Lumagsao', 'Part-Time', '8-15700359', '150501399622', '121025696574', '', 'Solutions Management Systems Inc.', 'Cagayan De Oro', 'HR Payroll', 'Level 2', 'S', 'Resigned', 0),
	(688, 12, '', '1004', 'Shiela', 'L.', 'Achas', 'Permanent', '08-2580153-6', '150504178309', '121148071155', '330785488000', 'Solutions Management Systems Inc.', 'Cagayan De Oro', 'Administrative Assistant /Cashier', 'Level 1', 'S', 'Regular', 11000),
	(689, 22, '', '10023', 'Daina Jane', 'Layar', 'Lungtad', 'Part-Time', '08-2663610-8', '150253033462', '121148247833', '331694187', 'Solutions Management Systems Inc.', 'Cagayan De Oro', 'HR Staff', 'Level 1', 'S', 'Regular', 11),
	(690, 32, '', '', 'Angelito', 'Diaz', 'Delada', 'Permanent', '09-28611092', '160504045878', '121031718739', '945606122', 'Primo Partners Phils, Inc.', 'Davao', 'Steward', '', 'S', 'Regular', 0),
	(691, 42, '', '', 'Kimberly', 'Arcena', 'Bicong', 'Permanent', '', '162506289777', '915170351768', '429744351', 'Primo Partners Phils, Inc.', 'Davao', 'Food Server', '', '', 'Regular', 0),
	(692, 52, '', '', 'Rachel', 'Likit', 'Brua', 'Permanent', '09-3103097-4', '170252743289', '121101750577', '445-307-079', 'Primo Partners Phils, Inc.', 'Davao', 'Admin Supervisor/Cash Custodian/HR', '', 'S', 'Regular', 15),
	(693, 62, '', '', 'Cheryrose', 'Nepomuceno', 'Gabaton', 'Permanent', '0933035427', '160504739322', '121115018624', '444168187000', 'Primo Partners Phils, Inc.', 'Davao', 'Bookkeeper', '', 'S', 'Regular', 0),
	(694, 72, '', '', 'Nathaniel', 'Pasco', 'Dela Pena', 'Permanent', '09-08358948', '160500375997', '005064402507', '124010444', 'Primo Partners Phils, Inc.', 'Davao', 'Cook', '', 'M', 'Regular', 0),
	(695, 82, '', '', 'Amalia', 'Demapitan', 'Frias', 'Part-Time', '09-15874295', '170502340371', '121030580785', '450957189', 'Primo Partners Phils, Inc.', 'Davao', 'Chef/Cold Section', '', 'S', 'Regular', 0),
	(696, 92, '', '', 'Leny', 'Serue', 'Lastrella', 'Permanent', '09278694176', '170501695087', '18000768907', '429743909', 'Primo Partners Phils, Inc.', 'Davao', 'Inventory Controller', '', 'S', 'Regular', 0),
	(697, 102, '', '', 'Erlyn', 'Bolante', 'Lim', 'Permanent', '09-30062419', '160503475631', '121032392549', '286335650', 'Primo Partners Phils, Inc.', 'Davao', 'Cashier', '', 'S', 'Regular', 0),
	(698, 112, '', '', 'Aldrin', 'Cotamora', 'Loma', 'Part-Time', '09-38159793', '160506389620', '121157478629', '', 'Primo Partners Phils, Inc.', 'Davao', 'Food Server', '', 'S', 'Resigned', 0),
	(699, 122, '', '', 'Lyrie Mae', 'Lustre', 'Magbutay', 'Permanent', '09-3230107-1', '121028563644', '160504463106', '460-769-947', 'Primo Partners Phils, Inc.', 'Davao', 'Cashier/Dining', '', 'S1', 'Regular', 0),
	(700, 132, '', '', 'Rodel', 'Esmedina', 'Villegas', 'Permanent', '09-3345227-5', '150504925215', '121029330515', '415-610-167', 'Primo Partners Phils, Inc.', 'Davao', 'Operations Manager', '', 'S', 'Probationary', 20),
	(701, 142, '', '', 'Henilito', 'Gonzales', 'Polia Jr.', 'Permanent', '09-3208339-9', '160504315484', '121029358912', '400-672-745', 'Primo Partners Phils, Inc.', 'Davao', 'Bartender', '', 'S', 'Regular', 0),
	(702, 152, '', '', 'Nestor', 'Masing', 'Bantilan', 'Permanent', '09-1244652-9', '160500046756', '913169041227', '124-651-296', 'Primo Partners Phils, Inc.', 'Davao', 'Dining Supervisor', '', 'M', 'Regular', 0),
	(703, 162, '', '', 'Roberto', 'Celerio', 'Jambaro Jr.', 'Permanent', '0925830148', '160503436059', '188000743398', '308884166000', 'Primo Partners Phils, Inc.', 'Davao', 'Kitchen Supervisor', '', 'S1', 'Regular', 0),
	(704, 192, '', '', 'Junmer', 'Rebuyas', 'Talindog', 'Permanent', '09-300-44709', '160505841848', '91320145691', '', 'Primo Partners Phils, Inc.', 'Davao', 'Food Server', '', 'S', 'Regular', 0),
	(705, 202, '', '', 'Ryan', 'Dodoso', 'Florencio', 'Permanent', '09-3164239-1', '160504252636', '121086740639', '291-191-248', 'Primo Partners Phils, Inc.', 'Davao', 'Cook', '', 'S', 'Regular', 0),
	(706, 212, '', '', 'Arnold', 'Aboyme', 'Plaza', 'Part-Time', '09-4157916-6', '162508071957', '', '', 'Primo Partners Phils, Inc.', 'Davao', 'Steward', '', 'S', 'Probationary', 0),
	(707, 222, 'null', 'null', 'Jimrey', 'R.', 'Abenoja', 'Permanent', '09-3224951-5', '160506266820', '121122325178', '455239111', 'Currahee Construction Corporation', 'CDO', 'General Maintenance Service', '', 'S1', 'Regular', 0),
	(708, 232, '', '', 'Nerio', 'Gildore', 'Amper', 'Permanent', '', '190902066156', '', '922208289', 'Currahee Construction Corporation', 'CDO', 'Financial comptroller', '', 'S1', 'Regular', 0),
	(709, 262, '', '', 'James', 'C.', 'Baldosano', 'Permanent', '', '', '', '', 'Currahee Construction Corporation', 'CDO', 'Field Engineer', '', '', 'Regular', 0),
	(710, 282, '', '', 'Renante', 'M.', 'Cabigas', 'Permanent', '0613995298', '152016370597', '', '', 'Currahee Construction Corporation', 'CDO', 'Liaison and Purchaser', '', 'M2', 'Regular', 0),
	(711, 292, '', '', 'Gerald', 'Detoyato', 'Caro', 'Permanent', '3430488752', '112021267328', '', '', 'Currahee Construction Corporation', 'CDO', 'Draftsman', '', 'M1', 'Probationary', 0),
	(712, 312, '', '', 'Ramon Alejandro', 'Magtajas', 'Valleser', 'Permanent', '08-1543251-7', '150251923010', '121048504092', '942957588', 'Solutions Management Systems Inc.', 'Cagayan De Oro', 'General Manager', 'Level 6', 'M', 'Regular', 32),
	(713, 322, '', '', 'Elgin', 'Cabunilas', 'Camilotes', 'Permanent', '09-3653870-9', '160505803776', '121098218437', '', 'Currahee Construction Corporation', 'DVO', 'Draftsman', '', 'S', 'Regular', 0),
	(714, 332, '', '', 'Aileen Joy', 'C', 'Castro', 'Permanent', '', '', '', '', 'Currahee Construction Corporation', 'DVO', 'Bookkeeper', '', 'S', 'Project Based', 0),
	(715, 352, '', '108', 'Elvira', 'Carvajal', 'Montera', 'Permanent', '09-2211068-3', '160501550245', '121042672683', '928503260', 'Solutions Management Systems Inc.', 'Cagayan De Oro', 'Acctg & Audit Head', 'Level 5', 'M3', 'Regular', 0),
	(716, 362, '', '', 'Kristine Joy', 'Carreon', 'Dealca', 'Permanent', '', '', '', '', 'Currahee Construction Corporation', 'DVO', 'Bookkeeper', '', 'S', 'Regular', 0),
	(717, 372, '', '10021', 'Raul Adrian', 'Apuli', 'Altavano', 'Part-Time', '3464059636', '150504494774', '121144034952', '445182360', 'Solutions Management Systems Inc.', 'Cagayan De Oro', 'Systems Developer', 'Level 1', 'S', 'Regular', 11000),
	(718, 382, '', '', 'May', 'Abroguena', 'Ebalang', 'Permanent', '08-1441611-0', '150251158837', '121030943288', '930-840161', 'Currahee Construction Corporation', 'CDO', 'Administrative Staff', '', 'S', 'Probationary', 0),
	(719, 392, '', '10002', 'Charlene', 'Jomoc', 'Almuete', 'Permanent', '0826525316', '150504277390', '', '330785931', 'Solutions Management Systems Inc.', 'Cagayan De Oro', 'Systems Developer', 'Level 1', 'S', 'Regular', 12000),
	(720, 402, '', '', 'Patricio', 'R.', 'Galdo', 'Permanent', '', '', '', '', 'Manila Teachers Mutual Aid System, Inc.', 'Iligan', 'USP', '', 'S', 'Regular', 0),
	(721, 412, '', '1003', 'Marco', 'Costamero', 'Arangco', 'Permanent', '06-2815784-3', '120507216566', '912202004888', '268-593-414', 'Solutions Management Systems Inc.', 'Cagayan De Oro', 'System Analyst/Developer', 'Level 2', 'M2', 'Regular', 16000),
	(722, 422, '', '', 'Izza Honey', 'C.', 'Manluza', 'Permanent', '08-1832709-8', '030507822025', '121137475012', '326-755-623', 'Currahee Construction Corporation', 'CDO', 'Office Engineer', '', 'M', 'Regular', 0),
	(723, 442, '', '', 'Cherie Mae', 'Dela Torre', 'Maghanoy', 'Permanent', '08-1275316-3', '150251721450', '121099680814', '907-060-178', 'Currahee Construction Corporation', 'CDO', 'Bookkeeper', '', 'S', 'Regular', 0),
	(724, 452, '', '', 'Arnaldo', 'Arguilles', 'Mantillas', 'Permanent', '08-1075836-1', '', '310101797702', '180-027-122', 'Currahee Construction Corporation', 'CDO', 'Operations Manager', 'Level 10', 'M1', 'Regular', 0),
	(725, 462, '', '', 'Brazzel Gay', 'J.', 'Cabaltera', 'Permanent', '0939595806', '010520667240', '121151311466', '472885607', 'Solutions Management Systems Inc.', 'Cagayan De Oro', 'Social Media/ Sales and Marketing Staff', 'Level 1', 'S', 'Probationary', 10),
	(726, 472, '', '110', 'Renan', 'A.', 'Moreno', 'Permanent', '0816173053', '150502397216', '182000543107', '410675176', 'Solutions Management Systems Inc.', 'Cagayan De Oro', 'Web Lead', 'Level 3', 'M', 'Regular', 0),
	(727, 482, '', '', 'Rolando', 'T.', 'Mosqueda', 'Permanent', '09-2739922-1', '160505100007', '104002257284', '422-012-424', 'Currahee Construction Corporation', 'DVO', 'Utility Service Personnel', '', 'S', 'Project Based', 0),
	(728, 502, '', '111', 'Jean', 'S.', 'Godornes', 'Permanent', '0816613128', '150501858430', '182000563981', '950159075', 'Solutions Management Systems Inc.', 'Cagayan De Oro', 'Operations Supervisor', 'Level 5', 'M', 'Regular', 15000),
	(729, 512, '', '116', 'Michael', 'Dayag', 'Baculio', 'Permanent', '08-1605491-0', '010505744239', '109002186565', '256027612', 'Solutions Management Systems Inc.', 'Cagayan De Oro', 'Technical Support Personnel', 'Level 1', 'M1', 'Regular', 10000),
	(730, 542, '', '', 'Robert', 'Batonghinog', 'Bersano', 'Permanent', '0815082802', '020503777364', '104002242398', '937694691', 'Solutions Management Systems Inc.', 'Cagayan De Oro', 'Technical Support Lead', 'Level 3', 'M1', 'Regular', 0),
	(731, 552, '', '', 'Pete Emmanuell', 'L.', 'Balagosa', 'Permanent', '08-1801748-9', '150503883890', '121134979348', '330784605', 'Solutions Management Systems Inc.', 'Cagayan De Oro', 'Technical Support Personnel', 'Level 1', 'S', 'Regular', 11),
	(732, 562, '', '', 'Khristian Darylle Joe', 'Bona', 'Battad', 'Permanent', '3442813205', '020262108512', '121131509835', '468727860', 'Solutions Management Systems Inc.', 'Cagayan De Oro', 'Technical Support Personnel', 'Level 1', 'S', 'Regular', 0),
	(733, 582, '', '', 'John', 'M.', 'Mingo', 'Permanent', '09-3781267-5', '160506605102', '121122227418', '466-263-614', 'Currahee Construction Corporation', 'DVO', 'Field Engineer', '', 'S', 'Regular', 0),
	(734, 592, '', '', 'Gina', 'Aboyme', 'Micoy', 'Permanent', '09-2734790-1', '160502253724', '121059984317', '946-922-702', 'Currahee Construction Corporation', 'DVO', 'Accounting Supervisor', '', 'M2', 'Regular', 0),
	(735, 602, '', '', 'Lowie', 'G.', 'Ulo', 'Permanent', '09-3438201-4', '162008037167', '121142112706', '466-263-405', 'Currahee Construction Corporation', 'DVO', 'General Maintenance Service', '', 'M', 'Regular', 0),
	(736, 612, '', '', 'Mario', 'Quiam', 'Tolosa', 'Project Based', '33-2666182-9', '082011907160', '', '', 'Currahee Construction Corporation', 'CDO', 'Foreman', '', 'M3', 'Project Based', 0),
	(737, 622, '', '', 'Julius', 'B.', 'Lascano', 'Part-Time', '33-3909769-7', '190521055409', '108000076981', '918-900-880', 'Currahee Construction Corporation', 'CDO', 'Logistic Manager', '', 'S', 'Probationary', 0),
	(738, 632, '', '', 'Romnick June', 'A.', 'Elcana', 'Part-Time', '09-2857476-0', '160502796558', '121194643961', '', 'Currahee Construction Corporation', 'DVO', 'Draftsman', '', 'S', 'Probationary', 10),
	(739, 642, '', '10019', 'Diane Joy', 'Yu', 'Mapano', 'Permanent', '1010277291', '140251731043', '121007858757', '452117419', 'Solutions Management Systems Inc.', 'Cagayan De Oro', 'Senior Accounting Technician', '', 'S', 'Regular', 12),
	(740, 652, '', '10014', 'Cresar John', 'Reyes', 'Arce', 'Permanent', '0922273135', '162003641023', '190000056276', '947987046', 'Solutions Management Systems Inc.', 'Cagayan De Oro', 'Senior Internal Auditor', 'Level 3', 'M2', 'Regular', 12500),
	(741, 662, '', '10013', 'Lorman', 'S.', 'Saladaga', 'Permanent', '1009497752', '140251248725', '914301364780', '816667', 'Solutions Management Systems Inc.', 'Cagayan De Oro', 'Senior Internal Auditor', 'Level 3', 'S', 'Regular', 12),
	(742, 672, '', '10009', 'Geneth', 'L.', 'Sayson', 'Permanent', '0935125869', '160505344984', '121070911178', '429361074', 'Solutions Management Systems Inc.', 'Cagayan De Oro', 'Senior Internal Auditor', 'Level 3', 'S', 'Regular', 15),
	(743, 682, '', '', 'Nancy', 'Montebon', 'Wong', 'Permanent', '0919148684', '160501640325', '101000063572', '940042814', 'Primo Partners Phils, Inc.', 'Davao', 'Operations Manager', '', 'S1', 'Regular', 24),
	(744, 692, '', '', 'Jeffrey', 'Moneba', 'Antoque', 'Permanent', '0937380136', '160255309649', '121111591247', '409174979', 'Norminring Development Corporation', 'CDO', 'Service Mechanic', '', 'S', 'Regular', 0),
	(745, 702, '', '', 'Salome', 'M.', 'Bodiongan', 'Permanent', '', '', '', '', 'Norminring Development Corporation', 'DVO', 'Inventory Controller', '', 'S', 'Regular', 14),
	(746, 712, '', '', 'Ryan Evan', 'P.', 'Almacin', 'Part-Time', '09-2732070-8', '', '', '432-197-977', 'Norminring Development Corporation', 'DVO', 'GSP', '', 'M', 'Probationary', 10),
	(747, 722, '', '', 'Raquel', 'A.', 'Baldecantos', 'Permanent', '3458063803', '140502131016', '121167253093', '', 'Norminring Development Corporation', 'DPL', 'Sales and Marketing', '', 'S', 'Probationary', 0),
	(748, 732, '', '', 'Gwyne', 'G.', 'Delos Reyes', 'Permanent', '0922110900', '160501436590', '121029344671', '931745676', 'Norminring Development Corporation', 'DVO', 'Bookkeeper', '', 'M', 'Regular', 0),
	(749, 742, '', '', 'Miejor', 'T.', 'Dela Cruz', 'Permanent', '', '150502394209', '', '', 'Norminring Development Corporation', 'DVO', 'Sales Supervisor', '', 'M2', 'Regular', 14),
	(750, 752, '', '', 'Rudini', 'G.', 'Galdo', 'Part-Time', '', '', '', '', 'Norminring Development Corporation', 'DVO', 'Branch Cashier', '', '', 'Probationary', 0),
	(751, 762, '', '', 'Allyn', 'C.', 'Angustia', 'Part-Time', '0939076231', '162509528500', '', '', 'Norminring Development Corporation', 'DVO', 'Sales Associate', '', 'S', 'Regular', 11),
	(752, 772, '', '', 'Reil Hazzin', 'Batilona', 'Bicoy', 'Permanent', '1011114502', '120513230309', '121142125817', '438-892-350', 'Norminring Development Corporation', 'DPL', 'MRP - Sales', '', 'M1', 'Regular', 0),
	(753, 782, '', '', 'Marlon', 'R.', 'Gal', 'Permanent', '', '', '', '', 'Norminring Development Corporation', 'DVO', 'General Service Maintenance', '', 'M', 'Regular', 0),
	(754, 792, '', '', 'Rudini', 'G.', 'Galdo', 'Part-Time', '', '', '', '', 'Norminring Development Corporation', 'DVO', 'Branch Cashier', '', 'S', '', 0),
	(755, 802, '', '', 'Arturo', 'G.', 'Lopez Jr.', 'Part-Time', '0929775063', '160252612308', '121180477483', '425186753', 'Norminring Development Corporation', 'DVO', 'Driver/Mechanic', '', 'M', 'Probationary', 10),
	(756, 812, '', '', 'Jose Miguel', 'P.', 'Jonelas', 'Part-Time', '0941836113', '162506888417', '917004406258', '', 'Norminring Development Corporation', 'DVO', 'Assistant Bookkeeper', '', 'S', 'Probationary', 10),
	(757, 822, '', '', 'Jessa', 'Datulayta', 'Bayking', 'Permanent', '09-35775620', '160256016613', '121177270191', '492-048-158', 'Mindanao Precast Structures Inc.', 'CDO', 'Secretary/Admin', '', 'S', 'Regular', 0),
	(758, 832, '', '', 'Ralph Nicko', 'Alcober', 'Olam', 'Permanent', '08-1977086-4', '150503440239', '916215856747', '492-049-415', 'Mindanao Precast Structures Inc.', 'CDO', 'Company Driver', '', 'S', 'Regular', 0),
	(759, 842, '', '', 'Armando', 'L.', 'Bagac', 'Permanent', '08-23845222', '150503550425', '121138563124', '492-048-869', 'Mindanao Precast Structures Inc.', 'CDO', 'General Maintenance', '', 'S', 'Regular', 0),
	(760, 852, '', '', 'Harold', 'Domo', 'Aparicio', 'Part-Time', '', '150252810651', '', '', 'Mindanao Precast Structures Inc.', 'CDO', 'Production Supervisor', '', 'S', 'Probationary', 0),
	(761, 862, '', '', 'John Gleen', 'Diaz', 'Panebio', 'Permanent', '08-1461106-7', '030501829486', '121004908041', '288-518-234', 'Mindanao Precast Structures Inc.', 'CDO', 'Production Head', '', 'M', 'Regular', 0),
	(762, 872, '', '', 'Arnulfo', 'V.', 'Layco', 'Permanent', '', '', '', '', 'Manila Teachers Mutual Aid System, Inc.', 'Cagayan de Oro', 'Associate Project Manager', '', 'S', 'Regular', 0),
	(763, 882, '', '', 'Stephanie', 'A.', 'Somoza', 'Part-Time', '', '', '', '', 'Norminring Development Corporation', 'DVO', 'Sales Associate', '', 'S', 'Probationary', 10),
	(764, 892, '', '', 'Jaymar', 'R.', 'Coresis', 'Permanent', '09-2984886-4', '060503261070', '', '', 'Norminring Development Corporation', 'DVO', 'Partsman', '', 'S', 'Regular', 11),
	(765, 902, '', '', 'Mark Anthony', 'M.', 'Montera', 'Permanent', '0920192988', '162003621529', '', '924469729', 'Norminring Development Corporation', 'DVO', 'Utility Service Personnel', '', 'S', 'Probationary', 0),
	(766, 912, '', '', 'Rizza Mae', 'C.', 'Lapinid', 'Part-Time', '0942047011', '170253314020', '4866783', '485272573', 'Norminring Development Corporation', 'DVO', 'Sales Associate', '', 'S1', 'Probationary', 10),
	(767, 922, '', '', 'Pamela Ivy', 'A.', 'Improgo', 'Permanent', '', '', '', '', 'Manila Teachers Mutual Aid System, Inc.', 'Malaybalay', 'Branch Manager', '', 'S1', 'Regular', 0),
	(768, 932, '', '', 'Jenner Nino', 'B.', 'Moneba', 'Permanent', '0924271258', '160501354306', '', '928767649', 'Norminring Development Corporation', 'DVO', 'Service & After Sales Manager', '', '', 'Regular', 0),
	(769, 942, '', '', 'Joesus', 'L.', 'Rabadan', 'Permanent', '', '', '', '', 'Norminring Development Corporation', 'CDO', 'Utility Service Personnel', '', 'S1', 'Probationary', 0),
	(770, 952, '', '', 'Michael Angelou', 'H.', 'Ponte', 'Permanent', '', '160504101026', '', '', 'Norminring Development Corporation', 'CDO', 'MRP - Sales', '', 'S', 'Regular', 0),
	(771, 962, '', '', 'Leo Alfie', 'A.', 'Quipanes', 'Permanent', '06-2515281-2', '120508612104', '913030000320', '289493450000', 'Norminring Development Corporation', 'ZBO', 'Service Mechanic', '', 'S1', 'Project Based', 0),
	(772, 972, '', '', 'Norben Jay', 'Leron', 'Ruiz', 'Permanent', '11-0370996-4', '160504245400', '121135281185', '297110378000', 'Norminring Development Corporation', 'DVO', 'Service Mechanic', '', 'M3', 'Regular', 0),
	(773, 992, '', '', 'Danilo', 'T.', 'Palo Jr.', 'Permanent', '0923935935', '160501224674', '188000522089', '929085069', 'Norminring Development Corporation', 'KID', 'Service Mechanic', '', '', 'Project Based', 0),
	(774, 1002, '', '', 'Nelson', 'S.', 'Tacoloy', 'Permanent', '0927359096', '', '188001482849', '412120768', 'Norminring Development Corporation', 'DVO', 'Junior Service Mechanic', '', 'M1', 'Regular', 12),
	(775, 1012, '', '', 'Roland', 'C.', 'Sarce', 'Permanent', '0922452639', '', '', '', 'Norminring Development Corporation', 'DVO', 'Service Mechanic', '', 'S', 'Probationary', 0),
	(776, 1022, '', '', 'Jasper', 'B.', 'Saludes', 'Part-Time', '09-3982708-2', '', '1211-5491-23', '', 'Norminring Development Corporation', 'DVO', 'Service Mechanic', '', 'S', 'Probationary', 10),
	(777, 1032, '', '', 'Ivan', 'Orbeta', 'Paredes', 'Permanent', '09-2319395-5', '160501550229', '915043561517', '922203402', 'Norminring Development Corporation', 'DPL', 'Branch Manager', '', 'S', 'Regular', 0),
	(778, 1042, '', '', 'Girlie', 'G.', 'Tolosa', 'Permanent', '', '', '', '', 'Norminring Development Corporation', 'ZBO', 'Branch Cashier', '', '', 'Regular', 0),
	(779, 1052, '', '', 'Kirbay Jay', 'A.', 'Ragol', 'Permanent', '09-4205318-6', '162010570662', '', '', 'Norminring Development Corporation', 'DVO', 'Service Mechanic', '', '', 'Regular', 11),
	(780, 1062, '', '', 'Lovely Judy May', 'P.', 'Villar', 'Permanent', '0941445135', '160507400628', '121192880142', '', 'Norminring Development Corporation', 'DVO', 'Sales Associate', '', 'S', 'Probationary', 10),
	(781, 1072, '', '', 'Anthony Greg', 'L.', 'Naduma', 'Permanent', '06-2877441-7', '180252527352', '121143095233', '460-398-585', 'Norminring Development Corporation', 'CDO', 'Marketing Associate', '', 'S', 'Regular', 0),
	(782, 1082, '', '', 'Joer', 'S.', 'Delas Penas', 'Permanent', '', '170501971165', '', '280184534', 'Norminring Development Corporation', 'DVO', 'MRP - Sales', '', 'S', 'Regular', 11),
	(783, 1092, '', '', 'Ivy', 'R.', 'Florentino', 'Permanent', '0941791452', '162511202515', '916236620041', '', 'Bellarmine Magister Enrichment Corporation', 'DVO', 'Student Affairs Officer', '', 'S', 'Regular', 0),
	(784, 1102, '', '', 'April Dan', 'S.', 'Borromeo', 'Permanent', '940335961', '162500434732', '916273954122', '', 'Bellarmine Magister Enrichment Corporation', 'DVO', 'Maintenance/Marketing Assistant', '', 'S', 'Regular', 0),
	(785, 1112, '', '', 'Junalona', 'R.', 'Basalo', 'Part-Time', '', '', '', '', 'Bellarmine Magister Enrichment Corporation', '', 'Trainer-Full Time', '', 'S', '', 0),
	(786, 1122, '', '', 'Margilen', 'Edrozo', 'Abuhan', 'Project Based', '', '150254168765', '', '461537289', 'My Only Way, Inc.', '', 'Farm Caretaker', '', '', '', 0),
	(787, 1132, '', '', 'Alejando', 'Tilos', 'Paloma', 'Permanent', '09-2341709-7', '162005511844', '', '291789935', 'My Only Way, Inc.', '', 'Farm Caretaker', '', 'M1', '', 0),
	(788, 1142, '', '', 'Alex', 'Alejandro', 'Paloma', 'Project Based', '', '', '', '', 'My Only Way, Inc.', '', 'Farm Caretaker', '', '', '', 0),
	(789, 1152, '', '', 'Danilo', 'Delgado', 'Vedida Jr.', 'Project Based', '', '', '', '', 'My Only Way, Inc.', '', 'Farm Caretaker', '', '', '', 0),
	(790, 1162, '', '', 'Ronald', 'Eduave', 'Tawacal', 'Project Based', '', '230027168227', '', '', 'My Only Way, Inc.', '', 'Farm Caretaker', '', '', '', 0),
	(791, 1172, '', '', 'Anthony', 'Sanchez', 'Potot', 'Project Based', '', '', '', '', 'My Only Way, Inc.', '', 'Farm Caretaker', '', '', '', 0),
	(792, 1182, '', '', 'Janine', 'Llanos', 'Jasmin', 'Permanent', '08-2399113-4', '150503497044', '121098502267', '440560910', 'Solutions Management Systems Inc.', 'Cagayan De Oro', 'Systems Developer', 'Level 1', 'S1', 'Regular', 0),
	(793, 1192, '', '', 'Christian', 'Morden', 'Rebuyas', 'Part-Time', '09-4212214-3', '162519095378', '917059132863', '', 'Primo Partners Phils, Inc.', 'Davao', 'Steward', '', '', 'Probationary', 0),
	(794, 1202, '', '', 'Joseph', 'R.', 'Giron II', 'Permanent', '339-6120-303', '150502868960', '914343835204', '290055877000', 'Manila Teachers Mutual Aid System, Inc.', 'Manila', 'Technical Support Staff', '', 'S', 'Regular', 0),
	(795, 1212, '', '10022', 'Chad Louei', 'C.', 'Sullaga', 'Permanent', '0941828228', '162013068828', '121189041310', '335284227', 'Solutions Management Systems Inc.', 'Cagayan De Oro', 'Graphic Designer', 'Level 1', 'S', 'Regular', 11),
	(796, 1222, '', '', 'Franco', 'P.', 'Amesola', 'Part-Time', '011101706862', '030205910474', '107012316640', '', 'Norminring Development Corporation', 'CDO', 'Sales Associate/Operations', '', 'S', 'Probationary', 12),
	(797, 1232, '', '', 'Mary Grace', 'A.', 'Escalona', 'Part-Time', '', '', '', '', 'Bellarmine Magister Enrichment Corporation', 'DVO', 'Admin Head/Bookkeeper/HR Point Person', '', 'M2', 'Probationary', 10),
	(798, 1242, '', '', 'Noel', 'P.', 'Sobejana', 'Part-Time', '0813387680', '190895509276', '1900958641', '215413654', 'Bellarmine Magister Enrichment Corporation', 'DVO', 'Administrator', '', 'S1', 'Project Based', 0),
	(799, 1252, '', '', 'Kareen', 'J.', 'De Guzman', 'Part-Time', '', '', '', '', 'Bellarmine Magister Enrichment Corporation', 'DVO', 'Trainer-Part time', '', 'S', 'Probationary', 0),
	(800, 1262, '', '', 'Arlyn', 'C.', 'Benito', 'Part-Time', '08-1421409-5', '150501615953', '121060054763', '935-614-238', 'Solutions Management Systems Inc.', 'Cagayan De Oro', 'HR Payroll', 'Level 2', 'S3', 'Probationary', 0);
/*!40000 ALTER TABLE `employees_temp` ENABLE KEYS */;

-- Dumping structure for table heroku_760d4109a89e3f8.incident
DROP TABLE IF EXISTS `incident`;
CREATE TABLE IF NOT EXISTS `incident` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `occurence` text COLLATE utf8_unicode_ci NOT NULL,
  `natureOfAccident` text COLLATE utf8_unicode_ci NOT NULL,
  `injuryType` text COLLATE utf8_unicode_ci NOT NULL,
  `coreActivity` text COLLATE utf8_unicode_ci NOT NULL,
  `location` text COLLATE utf8_unicode_ci NOT NULL,
  `details` text COLLATE utf8_unicode_ci NOT NULL,
  `dateOfOccurence` date NOT NULL,
  `damagedProperty` text COLLATE utf8_unicode_ci NOT NULL,
  `reference` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table heroku_760d4109a89e3f8.incident: 0 rows
/*!40000 ALTER TABLE `incident` DISABLE KEYS */;
/*!40000 ALTER TABLE `incident` ENABLE KEYS */;

-- Dumping structure for table heroku_760d4109a89e3f8.incidentinvolve
DROP TABLE IF EXISTS `incidentinvolve`;
CREATE TABLE IF NOT EXISTS `incidentinvolve` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `incident_id` int(10) DEFAULT NULL,
  `employee_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table heroku_760d4109a89e3f8.incidentinvolve: 0 rows
/*!40000 ALTER TABLE `incidentinvolve` DISABLE KEYS */;
/*!40000 ALTER TABLE `incidentinvolve` ENABLE KEYS */;

-- Dumping structure for table heroku_760d4109a89e3f8.jobs
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `position_id` int(11) NOT NULL DEFAULT '0',
  `company_id` int(10) NOT NULL DEFAULT '0',
  `department_id` int(10) NOT NULL DEFAULT '0',
  `branch_id` int(10) DEFAULT '0',
  `empStatus` text COLLATE utf8_unicode_ci,
  `dutiesResponsibility` text COLLATE utf8_unicode_ci,
  `qualification` text COLLATE utf8_unicode_ci,
  `dateFiled` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table heroku_760d4109a89e3f8.jobs: 0 rows
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;

-- Dumping structure for table heroku_760d4109a89e3f8.leaveapp
DROP TABLE IF EXISTS `leaveapp`;
CREATE TABLE IF NOT EXISTS `leaveapp` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `durFrom` date NOT NULL,
  `durTo` date NOT NULL,
  `dateFiled` date NOT NULL,
  `leave_id` int(11) NOT NULL,
  `days_applied` double(3,1) DEFAULT NULL,
  `mode` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reason` text COLLATE utf8_unicode_ci NOT NULL,
  `status` text COLLATE utf8_unicode_ci NOT NULL,
  `reasonToDissaprove` text COLLATE utf8_unicode_ci NOT NULL,
  `dateVerified` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table heroku_760d4109a89e3f8.leaveapp: 0 rows
/*!40000 ALTER TABLE `leaveapp` DISABLE KEYS */;
/*!40000 ALTER TABLE `leaveapp` ENABLE KEYS */;

-- Dumping structure for table heroku_760d4109a89e3f8.leavedates
DROP TABLE IF EXISTS `leavedates`;
CREATE TABLE IF NOT EXISTS `leavedates` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `leaveapp_id` int(10) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `daystatus` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table heroku_760d4109a89e3f8.leavedates: ~0 rows (approximately)
/*!40000 ALTER TABLE `leavedates` DISABLE KEYS */;
/*!40000 ALTER TABLE `leavedates` ENABLE KEYS */;

-- Dumping structure for table heroku_760d4109a89e3f8.leaves
DROP TABLE IF EXISTS `leaves`;
CREATE TABLE IF NOT EXISTS `leaves` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table heroku_760d4109a89e3f8.leaves: 8 rows
/*!40000 ALTER TABLE `leaves` DISABLE KEYS */;
INSERT INTO `leaves` (`id`, `name`) VALUES
	(6, 'Parental Leave'),
	(1, 'Emergency Leave'),
	(3, 'Paternal Leave'),
	(4, 'Vacation Leave'),
	(2, 'Sick Leave'),
	(5, 'Maternity Leave'),
	(7, 'Birthday Leave'),
	(17, 'Bereavement Leave');
/*!40000 ALTER TABLE `leaves` ENABLE KEYS */;

-- Dumping structure for table heroku_760d4109a89e3f8.lendingcompany
DROP TABLE IF EXISTS `lendingcompany`;
CREATE TABLE IF NOT EXISTS `lendingcompany` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table heroku_760d4109a89e3f8.lendingcompany: 4 rows
/*!40000 ALTER TABLE `lendingcompany` DISABLE KEYS */;
INSERT INTO `lendingcompany` (`id`, `name`) VALUES
	(1, 'SSS'),
	(2, 'AFC'),
	(3, 'HDMF'),
	(12, 'MEMBA');
/*!40000 ALTER TABLE `lendingcompany` ENABLE KEYS */;

-- Dumping structure for table heroku_760d4109a89e3f8.licensures
DROP TABLE IF EXISTS `licensures`;
CREATE TABLE IF NOT EXISTS `licensures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `rating` double(3,2) DEFAULT NULL,
  `licenseNo` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `index_licensures_on_employee_id` (`employee_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table heroku_760d4109a89e3f8.licensures: ~6 rows (approximately)
/*!40000 ALTER TABLE `licensures` DISABLE KEYS */;
INSERT INTO `licensures` (`id`, `employee_id`, `name`, `rating`, `licenseNo`, `image`) VALUES
	(1, 1, 'Civil Service SubProof', NULL, NULL, NULL),
	(12, 312, 'Board Passer - Licensure Exam for Teachers', NULL, NULL, NULL),
	(22, 452, 'Civil Service Subprofessional', 9.99, NULL, NULL),
	(32, 452, 'Civil Service Professional', 9.99, NULL, NULL),
	(42, 512, 'Computer Hardware Servicing NCII', NULL, NULL, NULL),
	(52, 12, 'Certificate of Eligibility', 9.99, NULL, NULL);
/*!40000 ALTER TABLE `licensures` ENABLE KEYS */;

-- Dumping structure for table heroku_760d4109a89e3f8.loans
DROP TABLE IF EXISTS `loans`;
CREATE TABLE IF NOT EXISTS `loans` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `employee_id` int(10) DEFAULT NULL,
  `loanType_id` int(10) DEFAULT NULL,
  `lendingCompany_id` int(10) DEFAULT NULL,
  `amount` double(10,2) DEFAULT NULL,
  `term` text COLLATE utf8_unicode_ci,
  `monthlyAmortization` double(10,2) DEFAULT NULL,
  `startDate` date DEFAULT NULL,
  `endDate` date DEFAULT NULL,
  `loanGranted` date DEFAULT NULL,
  `remarks` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=103 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table heroku_760d4109a89e3f8.loans: 7 rows
/*!40000 ALTER TABLE `loans` DISABLE KEYS */;
INSERT INTO `loans` (`id`, `employee_id`, `loanType_id`, `lendingCompany_id`, `amount`, `term`, `monthlyAmortization`, `startDate`, `endDate`, `loanGranted`, `remarks`) VALUES
	(22, 502, 12, 2, 80000.00, '24', 1892.00, '2017-05-15', '2019-05-15', '2017-05-12', 'Reloan'),
	(52, 642, 12, 2, 35000.00, '18', 1118.00, '2016-03-31', '2017-09-30', '2016-03-18', 'New Loan'),
	(62, 662, 12, 2, 120000.00, '24', 2875.00, '2015-05-31', '2017-05-31', '2015-05-26', 'Reloan'),
	(72, 542, 12, 2, 100000.00, '24', 2396.00, '2016-08-30', '2018-08-30', '2016-08-18', 'Reloan'),
	(82, 562, 12, 2, 50000.00, '12', 2365.00, '2016-10-15', '2017-10-30', '2016-10-06', 'New Loan'),
	(92, 512, 12, 2, 30000.00, '12', 1419.00, '2016-06-15', '2017-06-15', '2016-06-08', 'New Loan'),
	(102, 472, 12, 2, 100000.00, '24', 2396.00, '2015-12-30', '2018-01-30', '2016-12-22', 'Reloan');
/*!40000 ALTER TABLE `loans` ENABLE KEYS */;

-- Dumping structure for table heroku_760d4109a89e3f8.loantype
DROP TABLE IF EXISTS `loantype`;
CREATE TABLE IF NOT EXISTS `loantype` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `loanType` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table heroku_760d4109a89e3f8.loantype: 4 rows
/*!40000 ALTER TABLE `loantype` DISABLE KEYS */;
INSERT INTO `loantype` (`id`, `loanType`) VALUES
	(1, 'Salary Loan'),
	(2, 'Housing Loan'),
	(12, 'ACE Loan'),
	(22, 'Multi-Purpose Loan (MPL)');
/*!40000 ALTER TABLE `loantype` ENABLE KEYS */;

-- Dumping structure for table heroku_760d4109a89e3f8.medicals
DROP TABLE IF EXISTS `medicals`;
CREATE TABLE IF NOT EXISTS `medicals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `conditions` text COLLATE utf8_unicode_ci,
  `started` text COLLATE utf8_unicode_ci,
  `physician` text COLLATE utf8_unicode_ci,
  `disability` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `index_medicals_on_employee_id` (`employee_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table heroku_760d4109a89e3f8.medicals: ~0 rows (approximately)
/*!40000 ALTER TABLE `medicals` DISABLE KEYS */;
/*!40000 ALTER TABLE `medicals` ENABLE KEYS */;

-- Dumping structure for table heroku_760d4109a89e3f8.organizations
DROP TABLE IF EXISTS `organizations`;
CREATE TABLE IF NOT EXISTS `organizations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `institution` text COLLATE utf8_unicode_ci,
  `title` text COLLATE utf8_unicode_ci,
  `started` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ended` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_organizations_on_employee_id` (`employee_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table heroku_760d4109a89e3f8.organizations: ~12 rows (approximately)
/*!40000 ALTER TABLE `organizations` DISABLE KEYS */;
INSERT INTO `organizations` (`id`, `employee_id`, `institution`, `title`, `started`, `ended`) VALUES
	(2, 312, 'Philippine Eagles - The Fraternal Order of Eagles Royal Vectors Eagles Club', 'Vice President', NULL, NULL),
	(12, 312, 'Police Auxiliary Unit', 'Past President', '2010-01', '2012-01'),
	(32, 312, 'Knights of Columbus St. Francis de Melecia Council', 'Member', NULL, NULL),
	(42, 312, 'National Organization of Professional Teachers, Inc.', 'Member', NULL, NULL),
	(52, 392, 'Capitol University', 'Secretary, SBO of College of Computer Studies', '2013-01', '2014-01'),
	(62, 462, 'Bidlisiw', 'Feature Writer', '2012-01', '2015-01'),
	(72, 462, 'Hudyat', 'Writer', '2012-01', '2013-01'),
	(82, 462, 'Umalohokan', 'Writer', '2013-01', '2014-01'),
	(92, 582, 'Philippine Institute of Civil Engineers', 'Member', '2007-01', '2017-01'),
	(102, 852, 'Philippine Institute of Civil Engineers CMU Student Chapter (PICE-CMUSC))', NULL, '2007-01', '2010-01'),
	(112, 852, 'Civil Engineering Student\'s Society (CESS)', 'Member', '2005-01', '2010-01'),
	(122, 852, 'College of Engineering Student Councol (COESCO)', 'Vice Chairman', '2008-01', '2009-01');
/*!40000 ALTER TABLE `organizations` ENABLE KEYS */;

-- Dumping structure for table heroku_760d4109a89e3f8.overtime
DROP TABLE IF EXISTS `overtime`;
CREATE TABLE IF NOT EXISTS `overtime` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateFiled` date DEFAULT NULL,
  `dateRequested` date DEFAULT NULL,
  `timeStart` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timeEnd` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `totalHours` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reason` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reasonToDissaprove` text COLLATE utf8_unicode_ci,
  `dateConfirm` date DEFAULT NULL,
  `cutoffDate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table heroku_760d4109a89e3f8.overtime: 0 rows
/*!40000 ALTER TABLE `overtime` DISABLE KEYS */;
/*!40000 ALTER TABLE `overtime` ENABLE KEYS */;

-- Dumping structure for table heroku_760d4109a89e3f8.payslip
DROP TABLE IF EXISTS `payslip`;
CREATE TABLE IF NOT EXISTS `payslip` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `From` date DEFAULT NULL,
  `To` date DEFAULT NULL,
  `Company` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Employee` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TotalWorkHours` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Quincena` double(10,2) DEFAULT NULL,
  `Regular_OT` double(10,2) DEFAULT NULL,
  `Holiday_OT` double(10,2) DEFAULT NULL,
  `Total_OT` double(10,2) DEFAULT NULL,
  `Additionals` double(10,2) DEFAULT NULL,
  `Incentives` double(10,2) DEFAULT NULL,
  `LateAbsent` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Undertime` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Tax` double(10,2) DEFAULT NULL,
  `SSS` double(10,2) DEFAULT NULL,
  `PHIC` double(10,2) DEFAULT NULL,
  `HDMF` double(10,2) DEFAULT NULL,
  `GrossIncome` double(10,2) DEFAULT NULL,
  `NetIncome` double(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table heroku_760d4109a89e3f8.payslip: 0 rows
/*!40000 ALTER TABLE `payslip` DISABLE KEYS */;
/*!40000 ALTER TABLE `payslip` ENABLE KEYS */;

-- Dumping structure for table heroku_760d4109a89e3f8.performance
DROP TABLE IF EXISTS `performance`;
CREATE TABLE IF NOT EXISTS `performance` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `employee_id` int(10) NOT NULL DEFAULT '0',
  `rating` text COLLATE utf8_unicode_ci NOT NULL,
  `monthReview` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remarks` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table heroku_760d4109a89e3f8.performance: 0 rows
/*!40000 ALTER TABLE `performance` DISABLE KEYS */;
/*!40000 ALTER TABLE `performance` ENABLE KEYS */;

-- Dumping structure for table heroku_760d4109a89e3f8.positions
DROP TABLE IF EXISTS `positions`;
CREATE TABLE IF NOT EXISTS `positions` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `company_id` int(10) NOT NULL DEFAULT '0',
  `rank_id` int(11) DEFAULT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `skills` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=853 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table heroku_760d4109a89e3f8.positions: 152 rows
/*!40000 ALTER TABLE `positions` DISABLE KEYS */;
INSERT INTO `positions` (`id`, `company_id`, `rank_id`, `name`, `skills`) VALUES
	(17, 7, NULL, 'Corporate Legal', NULL),
	(2, 22, NULL, 'HR Director', NULL),
	(15, 7, NULL, 'HR Manager', NULL),
	(4, 13, NULL, 'President/CEO', NULL),
	(5, 13, NULL, 'COO', NULL),
	(6, 13, NULL, 'VP- Operations Service Support', NULL),
	(7, 13, NULL, 'VP-Construction', NULL),
	(8, 13, NULL, 'VP-Mobility', NULL),
	(9, 13, NULL, 'VP-Finance', NULL),
	(10, 13, NULL, 'VP-Food', NULL),
	(11, 7, NULL, 'Regional Manager', NULL),
	(13, 7, NULL, 'Branch Manager', NULL),
	(14, 7, NULL, 'Operations Manager', NULL),
	(16, 7, NULL, 'HR Associate', NULL),
	(18, 1, 5, 'Operations Supervisor', NULL),
	(19, 1, 3, 'Software Lead', NULL),
	(20, 1, 3, 'Technical Support Lead', NULL),
	(21, 1, 3, 'Web Lead', NULL),
	(22, 1, 5, 'Finance Manager', NULL),
	(23, 1, 5, 'Acctg & Audit Head', NULL),
	(24, 1, 3, 'Senior Internal Auditor', NULL),
	(25, 1, 3, 'Auditor', NULL),
	(26, 1, 3, 'Bookkeeper', NULL),
	(27, 7, NULL, 'Cashier', NULL),
	(28, 7, 0, 'Account Service Personnel', NULL),
	(29, 7, NULL, 'ASP-Billing', NULL),
	(30, 7, NULL, 'ASP-Subsidiary', NULL),
	(31, 7, NULL, 'Asst. Bookkeeper', NULL),
	(32, 7, NULL, 'Administrator', NULL),
	(33, 3, NULL, 'Inventory Controller', NULL),
	(34, 3, NULL, 'Accounting Supervisor', NULL),
	(35, 3, NULL, 'Sales Supervisor', NULL),
	(37, 3, NULL, 'Marketing Associate', NULL),
	(38, 7, NULL, 'USP', NULL),
	(39, 3, NULL, 'GSP', NULL),
	(40, 6, NULL, 'Bldg. Administrator', NULL),
	(41, 6, NULL, 'Front Desk Officer', NULL),
	(42, 6, NULL, 'Processing Officer', NULL),
	(43, 6, NULL, 'Trainer-Full Time', NULL),
	(44, 6, NULL, 'Trainer-Part time', NULL),
	(45, 6, NULL, 'Financial Comptroller', NULL),
	(48, 3, NULL, 'General Service Maintenance', NULL),
	(49, 3, NULL, 'Logistic Manager', NULL),
	(50, 3, NULL, 'Logistic Staff', NULL),
	(51, 3, NULL, 'Admin Staff', NULL),
	(402, 3, NULL, 'Branch Cashier', NULL),
	(54, 3, NULL, 'Senior Driver', NULL),
	(55, 3, NULL, 'Driver', NULL),
	(56, 10, NULL, 'Farm Caretaker', NULL),
	(57, 11, NULL, 'Production Head', NULL),
	(58, 11, NULL, 'Production Supervisor', NULL),
	(59, 11, NULL, 'Secretary/Admin', NULL),
	(60, 11, NULL, 'Executive Asst.', NULL),
	(62, 3, NULL, 'Regional Sales Consultant', NULL),
	(63, 3, NULL, 'Service & After Sales Manager', NULL),
	(64, 3, NULL, 'MRP', NULL),
	(65, 3, NULL, 'Sales Associate', NULL),
	(67, 3, NULL, 'Service Mechanic', NULL),
	(68, 3, NULL, 'Senior Service Mechanic', NULL),
	(69, 3, NULL, 'Chief Mechanic', NULL),
	(70, 3, NULL, 'Liaison Officer', NULL),
	(71, 1, 1, 'Systems Developer', NULL),
	(72, 1, 1, 'Software Developer', NULL),
	(73, 1, 1, 'Graphic Designer', NULL),
	(74, 1, 1, 'Social Media Associate', NULL),
	(76, 1, NULL, 'Technical Support', NULL),
	(77, 0, NULL, 'Independent Auditor', NULL),
	(78, 0, NULL, 'Senior Acctg. Technician', NULL),
	(79, 0, NULL, 'Junior Acctg. Technician', NULL),
	(80, 9, NULL, 'Dining Supervisor', NULL),
	(81, 9, NULL, 'Admin Supervisor/Cash Custodian/HR', NULL),
	(82, 9, NULL, 'Kitchen Supervisor', NULL),
	(83, 9, NULL, 'Cook', NULL),
	(84, 9, NULL, 'Steward', NULL),
	(85, 9, NULL, 'Bartender', NULL),
	(86, 9, NULL, 'Food Server', NULL),
	(87, 9, NULL, 'Waiter', NULL),
	(802, 7, NULL, 'Associate Project Manager', NULL),
	(422, 3, NULL, 'Driver/Mechanic', NULL),
	(392, 3, NULL, 'Senior Sales Staff', NULL),
	(412, 3, NULL, 'MRP - Sales', NULL),
	(432, 11, NULL, 'Company Driver', NULL),
	(92, 1, 10, 'HRD Head', NULL),
	(102, 1, 2, 'HR Payroll', NULL),
	(112, 1, 1, 'Administrative Assistant /Cashier', NULL),
	(122, 1, 1, 'HR Staff', NULL),
	(132, 9, NULL, 'Bookkeeper', NULL),
	(142, 9, NULL, 'Chef/Cold Section', NULL),
	(152, 9, NULL, 'Inventory Controller', NULL),
	(162, 9, NULL, 'Cashier', NULL),
	(172, 8, NULL, 'Maintenance', NULL),
	(182, 8, NULL, 'Field Engineer', NULL),
	(192, 8, NULL, 'Draftsman', NULL),
	(202, 8, NULL, 'Bookkeeper', NULL),
	(212, 8, NULL, 'Financial comptroller', NULL),
	(222, 8, NULL, 'Liaison and Purchaser', NULL),
	(232, 1, 6, 'General Manager', NULL),
	(242, 1, 5, 'Division Head', NULL),
	(252, 8, NULL, 'Administrative Staff', NULL),
	(262, 1, 3, 'System Lead', NULL),
	(272, 8, NULL, 'Office Engineer', NULL),
	(282, 8, NULL, 'Utility Service Personnel', NULL),
	(292, 8, 10, 'Operations Manager', NULL),
	(302, 1, 1, 'Technical Support Personnel', NULL),
	(312, 8, NULL, 'Accounting Supervisor', NULL),
	(322, 8, NULL, 'General Maintenance Service', NULL),
	(332, 8, NULL, 'Foreman', NULL),
	(342, 8, NULL, 'Logistic Manager', NULL),
	(352, 1, NULL, 'Senior Accounting Technician', NULL),
	(362, 9, NULL, 'Operations Manager', NULL),
	(372, 3, NULL, 'Bookkeeper', NULL),
	(382, 3, NULL, 'Assistant Bookkeeper', NULL),
	(442, 11, NULL, 'Utility/Messenger', NULL),
	(452, 3, NULL, 'General Manager', NULL),
	(462, 3, NULL, 'Utility/Liaison', NULL),
	(472, 3, NULL, 'Branch Manager', NULL),
	(482, 3, NULL, 'Service and After Sales Manager', NULL),
	(492, 3, NULL, 'Lead Service Mechanic', NULL),
	(502, 3, NULL, 'Junior Service Mechanic', NULL),
	(512, 3, NULL, 'Cashier', NULL),
	(522, 3, NULL, 'Sales and Marketing', NULL),
	(572, 3, NULL, 'Sales Associate/Operations', NULL),
	(542, 6, NULL, 'Maintenance/Marketing Assistant', NULL),
	(552, 1, NULL, 'IT Administrator', NULL),
	(562, 11, NULL, 'General Maintenance', NULL),
	(582, 9, NULL, 'Cashier/Dining', NULL),
	(592, 6, NULL, 'Admin Head/Bookkeeper/HR Point Person', NULL),
	(602, 6, NULL, 'Administrator', NULL),
	(612, 1, 1, 'Corporate Writer', NULL),
	(622, 1, 1, 'Administrative Staff', NULL),
	(632, 1, 2, 'System Analyst/Developer', NULL),
	(642, 7, NULL, 'Auditor', NULL),
	(652, 1, 1, 'Computer Technician', NULL),
	(662, 8, NULL, 'Administrative Staff/Cashier', NULL),
	(672, 3, NULL, 'Technical Support/MRP Head', NULL),
	(682, 7, NULL, 'Technical Support Staff', NULL),
	(692, 1, 1, 'Social Media/ Sales and Marketing Staff', NULL),
	(702, 7, NULL, 'Technical Support Personnel', NULL),
	(712, 7, NULL, 'Administrative Staff', NULL),
	(722, 1, NULL, 'Accounting System Analyst/Consultant', NULL),
	(732, 1, NULL, 'Application/Business Consultant', NULL),
	(742, 1, 2, 'System Analyst', NULL),
	(752, 1, 5, 'Business Analyst', NULL),
	(762, 1, 1, 'Web Designer', NULL),
	(772, 4, NULL, 'Assistant Bookkeeper', NULL),
	(782, 9, NULL, 'Dining Service & Marketing Manager', NULL),
	(792, 3, NULL, 'Partsman', NULL),
	(812, 3, NULL, 'Service Advisor', NULL),
	(822, 3, NULL, 'Inventory & MRP Sales Clerk', NULL),
	(832, 3, NULL, 'Utility Service Personnel', NULL),
	(842, 9, NULL, 'Admin Supervisor', NULL),
	(852, 6, NULL, 'Student Affairs Officer', NULL);
/*!40000 ALTER TABLE `positions` ENABLE KEYS */;

-- Dumping structure for table heroku_760d4109a89e3f8.promotions
DROP TABLE IF EXISTS `promotions`;
CREATE TABLE IF NOT EXISTS `promotions` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `employee_id` int(10) NOT NULL,
  `datePromote` text COLLATE utf8_unicode_ci,
  `position_id` text COLLATE utf8_unicode_ci NOT NULL,
  `salary` double(10,2) DEFAULT NULL,
  `company_id` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table heroku_760d4109a89e3f8.promotions: 0 rows
/*!40000 ALTER TABLE `promotions` DISABLE KEYS */;
/*!40000 ALTER TABLE `promotions` ENABLE KEYS */;

-- Dumping structure for table heroku_760d4109a89e3f8.properties
DROP TABLE IF EXISTS `properties`;
CREATE TABLE IF NOT EXISTS `properties` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `employee_id` int(10) NOT NULL DEFAULT '0',
  `property` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `dateIssued` date NOT NULL,
  `dateReturned` date NOT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `remarks` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table heroku_760d4109a89e3f8.properties: 0 rows
/*!40000 ALTER TABLE `properties` DISABLE KEYS */;
/*!40000 ALTER TABLE `properties` ENABLE KEYS */;

-- Dumping structure for table heroku_760d4109a89e3f8.rank
DROP TABLE IF EXISTS `rank`;
CREATE TABLE IF NOT EXISTS `rank` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `rank` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table heroku_760d4109a89e3f8.rank: 10 rows
/*!40000 ALTER TABLE `rank` DISABLE KEYS */;
INSERT INTO `rank` (`id`, `rank`) VALUES
	(1, 'Level 1'),
	(2, 'Level 2'),
	(3, 'Level 3'),
	(4, 'Level 4'),
	(5, 'Level 5'),
	(6, 'Level 6'),
	(7, 'Level 7'),
	(8, 'Level 8'),
	(9, 'Level 9'),
	(10, 'Level 10');
/*!40000 ALTER TABLE `rank` ENABLE KEYS */;

-- Dumping structure for table heroku_760d4109a89e3f8.recognition
DROP TABLE IF EXISTS `recognition`;
CREATE TABLE IF NOT EXISTS `recognition` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `awardGiven` text COLLATE utf8_unicode_ci NOT NULL,
  `citation` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table heroku_760d4109a89e3f8.recognition: 0 rows
/*!40000 ALTER TABLE `recognition` DISABLE KEYS */;
/*!40000 ALTER TABLE `recognition` ENABLE KEYS */;

-- Dumping structure for table heroku_760d4109a89e3f8.role
DROP TABLE IF EXISTS `role`;
CREATE TABLE IF NOT EXISTS `role` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `role` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table heroku_760d4109a89e3f8.role: 6 rows
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` (`id`, `role`) VALUES
	(1, 'Human Resource-1'),
	(2, 'Human Resource-2'),
	(3, 'Payroll Officer'),
	(4, 'User'),
	(5, 'Admin'),
	(6, 'Manager');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;

-- Dumping structure for table heroku_760d4109a89e3f8.serviceallowance
DROP TABLE IF EXISTS `serviceallowance`;
CREATE TABLE IF NOT EXISTS `serviceallowance` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `service_id` int(10) DEFAULT NULL,
  `employee_id` int(10) DEFAULT NULL,
  `allowance_id` int(10) DEFAULT NULL,
  `amount` double(10,6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3473 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table heroku_760d4109a89e3f8.serviceallowance: 334 rows
/*!40000 ALTER TABLE `serviceallowance` DISABLE KEYS */;
INSERT INTO `serviceallowance` (`id`, `service_id`, `employee_id`, `allowance_id`, `amount`) VALUES
	(2, 72, 512, 1, 500.000000),
	(1342, 32, 392, NULL, NULL),
	(22, NULL, 312, 3, 1500.000000),
	(32, NULL, 312, 4, 1500.000000),
	(42, NULL, 502, 2, 1500.000000),
	(52, 112, 502, 1, 500.000000),
	(62, 112, 502, 2, 1500.000000),
	(72, 1082, 502, 2, 1500.000000),
	(82, 1082, 502, 1, 500.000000),
	(92, 1112, 502, 2, 1500.000000),
	(102, 1112, 502, 1, 500.000000),
	(112, 1132, 502, 1, 500.000000),
	(122, 1142, 502, 2, 1500.000000),
	(132, 1142, 502, 1, 500.000000),
	(142, NULL, 352, 4, 1500.000000),
	(1122, 32, 392, NULL, NULL),
	(162, NULL, 352, 4, 1500.000000),
	(1112, 32, 392, NULL, NULL),
	(182, NULL, 642, 2, 1500.000000),
	(932, 32, 392, NULL, NULL),
	(202, NULL, 662, 2, 1500.000000),
	(1272, 32, 392, NULL, NULL),
	(222, NULL, 542, 2, 1500.000000),
	(662, 32, 392, NULL, NULL),
	(242, NULL, 542, 4, 500.000000),
	(252, NULL, 1202, 12, 5000.000000),
	(262, NULL, 1202, 2, 1500.000000),
	(802, 32, 392, NULL, NULL),
	(522, 32, 392, NULL, NULL),
	(292, NULL, 562, 2, 1500.000000),
	(302, 72, 512, 2, 1500.000000),
	(502, 32, 392, NULL, NULL),
	(872, 32, 392, NULL, NULL),
	(332, NULL, 1182, 2, 1500.000000),
	(342, 32, 392, NULL, NULL),
	(352, 32, 392, NULL, NULL),
	(362, 32, 392, NULL, NULL),
	(372, 32, 392, NULL, NULL),
	(382, 32, 392, NULL, NULL),
	(392, 32, 392, NULL, NULL),
	(402, 32, 392, NULL, NULL),
	(412, 32, 392, NULL, NULL),
	(422, 32, 392, NULL, NULL),
	(432, 32, 392, NULL, NULL),
	(442, 32, 392, NULL, NULL),
	(452, 32, 392, NULL, NULL),
	(462, 32, 392, NULL, NULL),
	(472, 32, 392, NULL, NULL),
	(482, 32, 392, NULL, NULL),
	(492, 32, 392, NULL, NULL),
	(512, 32, 392, NULL, NULL),
	(532, 32, 392, NULL, NULL),
	(542, 32, 392, NULL, NULL),
	(552, 32, 392, NULL, NULL),
	(562, 32, 392, NULL, NULL),
	(572, NULL, 562, 2, 1.000000),
	(582, 1242, 562, 1, 500.000000),
	(592, 32, 392, NULL, NULL),
	(602, 32, 392, NULL, NULL),
	(612, 32, 392, NULL, NULL),
	(622, 32, 392, NULL, NULL),
	(632, 32, 392, NULL, NULL),
	(642, 32, 392, NULL, NULL),
	(652, 32, 392, NULL, NULL),
	(672, 32, 392, NULL, NULL),
	(682, 32, 392, NULL, NULL),
	(692, 32, 392, NULL, NULL),
	(702, 32, 392, NULL, NULL),
	(712, 32, 392, NULL, NULL),
	(722, 32, 392, NULL, NULL),
	(732, 32, 392, NULL, NULL),
	(742, 32, 392, NULL, NULL),
	(752, 32, 392, NULL, NULL),
	(762, 32, 392, NULL, NULL),
	(772, 32, 392, NULL, NULL),
	(782, 32, 392, NULL, NULL),
	(792, 32, 392, NULL, NULL),
	(812, 32, 392, NULL, NULL),
	(822, 32, 392, NULL, NULL),
	(832, 32, 392, NULL, NULL),
	(842, 32, 392, NULL, NULL),
	(852, 32, 392, NULL, NULL),
	(862, 32, 392, NULL, NULL),
	(882, 32, 392, NULL, NULL),
	(892, 32, 392, NULL, NULL),
	(902, 32, 392, NULL, NULL),
	(912, 32, 392, NULL, NULL),
	(922, 32, 392, NULL, NULL),
	(942, 32, 392, NULL, NULL),
	(952, 32, 392, NULL, NULL),
	(962, 32, 392, NULL, NULL),
	(972, 32, 392, NULL, NULL),
	(982, 32, 392, NULL, NULL),
	(992, 32, 392, NULL, NULL),
	(1002, 32, 392, NULL, NULL),
	(1012, 32, 392, NULL, NULL),
	(1022, 32, 392, NULL, NULL),
	(1032, 32, 392, NULL, NULL),
	(1042, 32, 392, NULL, NULL),
	(1052, 32, 392, NULL, NULL),
	(1062, 32, 392, NULL, NULL),
	(1072, 32, 392, NULL, NULL),
	(1082, 32, 392, NULL, NULL),
	(1092, 32, 392, NULL, NULL),
	(1102, 32, 392, NULL, NULL),
	(1132, 32, 392, NULL, NULL),
	(1142, 32, 392, NULL, NULL),
	(1152, 32, 392, NULL, NULL),
	(1162, 32, 392, NULL, NULL),
	(1172, 32, 392, NULL, NULL),
	(1182, 32, 392, NULL, NULL),
	(1192, 32, 392, NULL, NULL),
	(1202, 32, 392, NULL, NULL),
	(1212, 32, 392, NULL, NULL),
	(1222, 32, 392, NULL, NULL),
	(1232, 32, 392, NULL, NULL),
	(1242, 32, 392, NULL, NULL),
	(1252, 32, 392, NULL, NULL),
	(1262, 32, 392, NULL, NULL),
	(1282, 32, 392, NULL, NULL),
	(1292, 32, 392, NULL, NULL),
	(1302, 32, 392, NULL, NULL),
	(1312, 32, 392, NULL, NULL),
	(1322, 32, 392, NULL, NULL),
	(1332, 32, 392, NULL, NULL),
	(1352, 32, 392, NULL, NULL),
	(1362, 32, 392, NULL, NULL),
	(1372, 32, 392, NULL, NULL),
	(1382, 32, 392, NULL, NULL),
	(1392, 32, 392, NULL, NULL),
	(1402, 32, 392, NULL, NULL),
	(1412, 32, 392, NULL, NULL),
	(1422, 32, 392, NULL, NULL),
	(1432, 32, 392, NULL, NULL),
	(1442, 32, 392, NULL, NULL),
	(1452, 32, 392, NULL, NULL),
	(1462, 32, 392, NULL, NULL),
	(1472, 32, 392, NULL, NULL),
	(1482, 32, 392, NULL, NULL),
	(1492, 32, 392, NULL, NULL),
	(1502, 32, 392, NULL, NULL),
	(1512, 32, 392, NULL, NULL),
	(1522, 32, 392, NULL, NULL),
	(1532, 32, 392, NULL, NULL),
	(1542, 32, 392, NULL, NULL),
	(1552, 32, 392, NULL, NULL),
	(1562, 32, 392, NULL, NULL),
	(1572, 32, 392, NULL, NULL),
	(1582, 32, 392, NULL, NULL),
	(1592, 32, 392, NULL, NULL),
	(1602, 32, 392, NULL, NULL),
	(1612, 32, 392, NULL, NULL),
	(1622, 32, 392, NULL, NULL),
	(1632, 32, 392, NULL, NULL),
	(1642, 32, 392, NULL, NULL),
	(1652, 32, 392, NULL, NULL),
	(1662, 32, 392, NULL, NULL),
	(1672, 32, 392, NULL, NULL),
	(1682, 32, 392, NULL, NULL),
	(1692, 32, 392, NULL, NULL),
	(1702, 32, 392, NULL, NULL),
	(1712, 32, 392, NULL, NULL),
	(1722, 32, 392, NULL, NULL),
	(1732, 32, 392, NULL, NULL),
	(1742, 32, 392, NULL, NULL),
	(1752, 32, 392, NULL, NULL),
	(1762, 32, 392, NULL, NULL),
	(1772, 32, 392, NULL, NULL),
	(1782, 32, 392, NULL, NULL),
	(1792, 32, 392, NULL, NULL),
	(1802, 2102, 1002, NULL, NULL),
	(1812, 32, 392, NULL, NULL),
	(1822, 32, 392, NULL, NULL),
	(1832, 32, 392, NULL, NULL),
	(1842, 32, 392, NULL, NULL),
	(1852, 32, 392, NULL, NULL),
	(1862, 32, 392, NULL, NULL),
	(1872, 32, 392, NULL, NULL),
	(1882, 32, 392, NULL, NULL),
	(1892, 32, 392, NULL, NULL),
	(1902, 32, 392, NULL, NULL),
	(1912, 32, 392, NULL, NULL),
	(1922, 32, 392, NULL, NULL),
	(1932, 32, 392, NULL, NULL),
	(1942, 32, 392, NULL, NULL),
	(1952, 32, 392, NULL, NULL),
	(1962, 32, 392, NULL, NULL),
	(1972, 32, 392, NULL, NULL),
	(1982, 32, 392, NULL, NULL),
	(1992, 32, 392, NULL, NULL),
	(2002, 32, 392, NULL, NULL),
	(2012, 32, 392, NULL, NULL),
	(2022, 32, 392, NULL, NULL),
	(2032, 32, 392, NULL, NULL),
	(2042, 32, 392, NULL, NULL),
	(2052, 32, 392, NULL, NULL),
	(2062, 32, 392, NULL, NULL),
	(2072, 32, 392, NULL, NULL),
	(2082, 32, 392, NULL, NULL),
	(2092, 32, 392, NULL, NULL),
	(2102, 32, 392, NULL, NULL),
	(2112, 32, 392, NULL, NULL),
	(2122, 32, 392, NULL, NULL),
	(2132, 32, 392, NULL, NULL),
	(2142, 32, 392, NULL, NULL),
	(2152, 32, 392, NULL, NULL),
	(2162, 32, 392, NULL, NULL),
	(2172, 32, 392, NULL, NULL),
	(2182, 32, 392, NULL, NULL),
	(2192, 32, 392, NULL, NULL),
	(2202, 32, 392, NULL, NULL),
	(2212, 32, 392, NULL, NULL),
	(2222, 32, 392, NULL, NULL),
	(2232, 32, 392, NULL, NULL),
	(2242, 32, 392, NULL, NULL),
	(2252, 32, 392, NULL, NULL),
	(2262, 32, 392, NULL, NULL),
	(2272, 32, 392, NULL, NULL),
	(2282, 32, 392, NULL, NULL),
	(2292, 32, 392, NULL, NULL),
	(2302, 32, 392, NULL, NULL),
	(2312, 32, 392, NULL, NULL),
	(2322, 32, 392, NULL, NULL),
	(2332, 32, 392, NULL, NULL),
	(2342, 32, 392, NULL, NULL),
	(2352, 32, 392, NULL, NULL),
	(2362, 32, 392, NULL, NULL),
	(2372, 32, 392, NULL, NULL),
	(2382, 32, 392, NULL, NULL),
	(2392, 32, 392, NULL, NULL),
	(2402, 32, 392, NULL, NULL),
	(2412, 32, 392, NULL, NULL),
	(2422, 32, 392, NULL, NULL),
	(2432, 32, 392, NULL, NULL),
	(2442, 32, 392, NULL, NULL),
	(2452, 32, 392, NULL, NULL),
	(2462, 32, 392, NULL, NULL),
	(2472, NULL, 512, 1, 500.000000),
	(2482, 1182, 512, 2, 1500.000000),
	(2492, 32, 392, NULL, NULL),
	(2502, 32, 392, NULL, NULL),
	(2512, 32, 392, NULL, NULL),
	(2522, 32, 392, NULL, NULL),
	(2532, 32, 392, NULL, NULL),
	(2542, 32, 392, NULL, NULL),
	(2552, 32, 392, NULL, NULL),
	(2562, 32, 392, NULL, NULL),
	(2572, 32, 392, NULL, NULL),
	(2582, 32, 392, NULL, NULL),
	(2592, 32, 392, NULL, NULL),
	(2602, 32, 392, NULL, NULL),
	(2612, 32, 392, NULL, NULL),
	(2622, 32, 392, NULL, NULL),
	(2632, 32, 392, NULL, NULL),
	(2642, 32, 392, NULL, NULL),
	(2652, 32, 392, NULL, NULL),
	(2662, 32, 392, NULL, NULL),
	(2672, 32, 392, NULL, NULL),
	(2682, 32, 392, NULL, NULL),
	(2692, 32, 392, NULL, NULL),
	(2702, 32, 392, NULL, NULL),
	(2712, 32, 392, NULL, NULL),
	(2722, 32, 392, NULL, NULL),
	(2732, 32, 392, NULL, NULL),
	(2742, 32, 392, NULL, NULL),
	(2752, 32, 392, NULL, NULL),
	(2762, 32, 392, NULL, NULL),
	(2772, 32, 392, NULL, NULL),
	(2782, 32, 392, NULL, NULL),
	(2792, 32, 392, NULL, NULL),
	(2802, 32, 392, NULL, NULL),
	(2812, 32, 392, NULL, NULL),
	(2822, 32, 392, NULL, NULL),
	(2832, 32, 392, NULL, NULL),
	(2842, 32, 392, NULL, NULL),
	(2852, 32, 392, NULL, NULL),
	(2862, 32, 392, NULL, NULL),
	(2872, 32, 392, NULL, NULL),
	(2882, 32, 392, NULL, NULL),
	(2892, 32, 392, NULL, NULL),
	(2902, 32, 392, NULL, NULL),
	(2912, 32, 392, NULL, NULL),
	(2922, 32, 392, NULL, NULL),
	(2932, 32, 392, NULL, NULL),
	(2942, 32, 392, NULL, NULL),
	(2952, 32, 392, NULL, NULL),
	(2962, 32, 392, NULL, NULL),
	(2972, 32, 392, NULL, NULL),
	(2982, 32, 392, NULL, NULL),
	(2992, 32, 392, NULL, NULL),
	(3002, 32, 392, NULL, NULL),
	(3012, 32, 392, NULL, NULL),
	(3022, 32, 392, NULL, NULL),
	(3032, 32, 392, NULL, NULL),
	(3042, 32, 392, NULL, NULL),
	(3052, 32, 392, NULL, NULL),
	(3062, 32, 392, NULL, NULL),
	(3072, 32, 392, NULL, NULL),
	(3082, 32, 392, NULL, NULL),
	(3092, 32, 392, NULL, NULL),
	(3102, 2402, 372, NULL, NULL),
	(3112, 32, 392, NULL, NULL),
	(3122, 32, 392, NULL, NULL),
	(3132, 32, 392, NULL, NULL),
	(3142, 32, 392, NULL, NULL),
	(3152, 32, 392, NULL, NULL),
	(3162, 32, 392, NULL, NULL),
	(3172, 32, 392, NULL, NULL),
	(3182, 32, 392, NULL, NULL),
	(3192, 32, 392, NULL, NULL),
	(3202, 32, 392, NULL, NULL),
	(3212, 32, 392, NULL, NULL),
	(3222, 32, 392, NULL, NULL),
	(3232, 32, 392, NULL, NULL),
	(3242, 32, 392, NULL, NULL),
	(3252, 32, 392, NULL, NULL),
	(3262, 32, 392, NULL, NULL),
	(3272, 32, 392, NULL, NULL),
	(3282, 32, 392, NULL, NULL),
	(3292, 32, 392, NULL, NULL),
	(3302, 32, 392, NULL, NULL),
	(3312, 32, 392, NULL, NULL),
	(3322, 32, 392, NULL, NULL),
	(3332, 32, 392, NULL, NULL),
	(3342, 32, 392, NULL, NULL),
	(3352, 32, 392, NULL, NULL),
	(3362, 32, 392, NULL, NULL),
	(3372, 32, 392, NULL, NULL),
	(3382, 32, 392, NULL, NULL),
	(3392, 32, 392, NULL, NULL),
	(3402, 32, 392, NULL, NULL),
	(3412, 32, 392, NULL, NULL),
	(3422, 32, 392, NULL, NULL),
	(3432, 32, 392, NULL, NULL),
	(3442, 32, 392, NULL, NULL),
	(3452, 32, 392, NULL, NULL),
	(3462, 32, 392, NULL, NULL),
	(3472, 32, 392, NULL, NULL);
/*!40000 ALTER TABLE `serviceallowance` ENABLE KEYS */;

-- Dumping structure for table heroku_760d4109a89e3f8.serviceallowancetemp
DROP TABLE IF EXISTS `serviceallowancetemp`;
CREATE TABLE IF NOT EXISTS `serviceallowancetemp` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `serviceallowance_id` int(10) NOT NULL DEFAULT '0',
  `service_id` int(10) DEFAULT NULL,
  `employee_id` int(10) DEFAULT NULL,
  `allowance_id` int(10) DEFAULT NULL,
  `amount` double(10,2) DEFAULT NULL,
  `remarks` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8413 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table heroku_760d4109a89e3f8.serviceallowancetemp: 3 rows
/*!40000 ALTER TABLE `serviceallowancetemp` DISABLE KEYS */;
INSERT INTO `serviceallowancetemp` (`id`, `serviceallowance_id`, `service_id`, `employee_id`, `allowance_id`, `amount`, `remarks`, `user_id`) VALUES
	(532, 0, 32, 392, NULL, NULL, 'Added', 502),
	(8412, 132, 1142, 502, 1, 500.00, 'Edited', 22),
	(8402, 122, 1142, 502, 2, 1500.00, 'Edited', 22);
/*!40000 ALTER TABLE `serviceallowancetemp` ENABLE KEYS */;

-- Dumping structure for table heroku_760d4109a89e3f8.servicebenefit
DROP TABLE IF EXISTS `servicebenefit`;
CREATE TABLE IF NOT EXISTS `servicebenefit` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `employee_id` int(10) DEFAULT NULL,
  `benefit_id` int(10) DEFAULT NULL,
  `amount` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table heroku_760d4109a89e3f8.servicebenefit: 0 rows
/*!40000 ALTER TABLE `servicebenefit` DISABLE KEYS */;
/*!40000 ALTER TABLE `servicebenefit` ENABLE KEYS */;

-- Dumping structure for table heroku_760d4109a89e3f8.serviceleave
DROP TABLE IF EXISTS `serviceleave`;
CREATE TABLE IF NOT EXISTS `serviceleave` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `service_id` int(10) NOT NULL DEFAULT '0',
  `employee_id` int(10) DEFAULT NULL,
  `leave_id` int(10) DEFAULT NULL,
  `leavedays` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4943 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table heroku_760d4109a89e3f8.serviceleave: 250 rows
/*!40000 ALTER TABLE `serviceleave` DISABLE KEYS */;
INSERT INTO `serviceleave` (`id`, `service_id`, `employee_id`, `leave_id`, `leavedays`) VALUES
	(4912, 1142, 502, 17, '5'),
	(4922, 1142, 502, 7, '1'),
	(4932, 1142, 502, 2, '15'),
	(202, 62, 652, 17, '5'),
	(212, 62, 652, 7, '1'),
	(222, 62, 652, 2, '10'),
	(232, 62, 652, 4, '10'),
	(242, 72, 512, 17, '5'),
	(252, 72, 512, 7, '1'),
	(262, 72, 512, 2, '10'),
	(272, 72, 512, 4, '10'),
	(362, 102, 462, 17, '5'),
	(372, 102, 462, 7, '1'),
	(382, 102, 462, 2, '10'),
	(392, 102, 462, 4, '10'),
	(4942, 1142, 502, 4, '15'),
	(4902, 1382, 1202, 4, '15'),
	(4892, 1382, 1202, 2, '15'),
	(4882, 1382, 1202, 7, '1'),
	(4862, 1212, 552, 4, '10'),
	(4812, 1502, 222, 7, '1'),
	(4802, 1502, 222, 4, '15'),
	(4792, 1502, 222, 2, '15'),
	(4782, 1182, 512, 2, '10'),
	(4772, 1182, 512, 7, '1'),
	(4762, 0, 512, 2, '10'),
	(4692, 2282, 952, 4, '7'),
	(4612, 1932, 562, 4, '10'),
	(4872, 1382, 1202, 17, '5'),
	(4552, 1962, 742, 7, '1'),
	(4542, 1322, 542, 4, '15'),
	(4532, 1322, 542, 2, '15'),
	(4522, 1322, 542, 7, '1'),
	(4512, 0, 542, 4, '15'),
	(4502, 1962, 742, 4, '10'),
	(4492, 1322, 542, 17, '5'),
	(4482, 0, 542, 7, '1'),
	(4472, 1962, 742, 2, '10'),
	(4462, 1962, 742, 1, '1'),
	(4452, 1962, 742, 17, '5'),
	(4442, 1922, 762, 4, '7'),
	(782, 272, 722, 5, '60'),
	(792, 272, 722, 17, '5'),
	(802, 272, 722, 7, '1'),
	(812, 272, 722, 2, '10'),
	(822, 272, 722, 4, '10'),
	(4212, 2432, 652, 17, '5'),
	(4202, 2432, 652, 7, '1'),
	(4172, 0, 652, 4, '10'),
	(862, 292, 702, 17, '5'),
	(872, 292, 702, 1, '1'),
	(882, 292, 702, 7, '1'),
	(892, 292, 702, 2, '10'),
	(902, 292, 702, 4, '10'),
	(912, 302, 892, 17, '5'),
	(922, 302, 892, 7, '1'),
	(932, 302, 892, 1, '1'),
	(942, 302, 892, 2, '8'),
	(952, 302, 892, 4, '8'),
	(4572, 0, 562, 7, '1'),
	(4582, 1932, 562, 17, '5'),
	(4592, 1932, 562, 7, '1'),
	(4602, 1932, 562, 2, '10'),
	(4682, 2282, 952, 2, '7'),
	(4672, 2282, 952, 7, '1'),
	(4662, 1882, 52, 4, '10'),
	(4652, 1882, 52, 2, '10'),
	(4642, 1882, 52, 7, '1'),
	(1062, 332, 732, 17, '5'),
	(1072, 332, 732, 7, '1'),
	(1082, 332, 732, 2, '10'),
	(1092, 332, 732, 4, '10'),
	(4112, 2412, 392, 17, '5'),
	(4102, 2412, 392, 4, '10'),
	(4092, 2402, 372, 7, '1'),
	(4082, 2402, 372, 17, '5'),
	(1142, 362, 922, 17, '5'),
	(1152, 362, 922, 7, '1'),
	(1162, 362, 922, 1, '1'),
	(1172, 362, 922, 2, '15'),
	(1182, 362, 922, 4, '15'),
	(1192, 392, 872, 17, '5'),
	(1202, 392, 872, 7, '1'),
	(1212, 392, 872, 2, '15'),
	(1222, 392, 872, 4, '15'),
	(3872, 2012, 932, 17, '5'),
	(3862, 2012, 932, 7, '1'),
	(3852, 2012, 932, 2, '10'),
	(3842, 2012, 932, 4, '10'),
	(3912, 2052, 1052, 4, '7'),
	(3902, 2052, 1052, 2, '7'),
	(3892, 2052, 1052, 7, '1'),
	(3882, 2052, 1052, 17, '5'),
	(4322, 1212, 552, 17, '5'),
	(4312, 0, 552, 2, '10'),
	(4302, 0, 552, 4, '10'),
	(4292, 0, 552, 17, '5'),
	(4072, 0, 952, 7, '1'),
	(4062, 2282, 952, 17, '5'),
	(4052, 0, 952, 2, '15'),
	(4042, 0, 952, 4, '15'),
	(4152, 0, 652, 2, '10'),
	(4192, 2432, 652, 2, '10'),
	(4132, 2412, 392, 2, '10'),
	(4122, 2412, 392, 7, '1'),
	(4282, 0, 552, 7, '1'),
	(4272, 1182, 512, 17, '5'),
	(4262, 0, 512, 7, '1'),
	(1482, 472, 962, 17, '5'),
	(1492, 472, 962, 7, '1'),
	(1502, 472, 962, 2, '10'),
	(1512, 472, 962, 4, '10'),
	(4252, 0, 512, 2, '15'),
	(4242, 0, 512, 2, '15'),
	(4232, 2402, 372, 2, '7'),
	(4222, 2402, 372, 4, '7'),
	(4742, 1442, 1182, 4, '15'),
	(4732, 1442, 1182, 2, '15'),
	(4722, 1442, 1182, 7, '1'),
	(4712, 1442, 1182, 17, '5'),
	(4702, 0, 1182, 7, '1'),
	(3952, 2072, 972, 7, '1'),
	(3942, 2072, 972, 17, '5'),
	(3932, 2072, 972, 2, '10'),
	(3922, 2072, 972, 4, '10'),
	(1652, 522, 1012, 17, '5'),
	(1662, 522, 1012, 7, '1'),
	(1672, 522, 1012, 2, '10'),
	(1682, 522, 1012, 4, '10'),
	(3992, 2102, 1002, 7, '1'),
	(3982, 2102, 1002, 17, '5'),
	(3972, 2102, 1002, 2, '10'),
	(3962, 2102, 1002, 4, '10'),
	(1732, 552, 1042, 17, '5'),
	(1742, 552, 1042, 7, '1'),
	(1752, 552, 1042, 1, '1'),
	(1762, 552, 1042, 2, '10'),
	(1772, 552, 1042, 4, '10'),
	(1782, 562, 1062, 17, '5'),
	(1792, 562, 1062, 7, '1'),
	(1802, 562, 1062, 2, '7'),
	(1812, 562, 1062, 4, '7'),
	(1902, 592, 262, 17, '5'),
	(1912, 592, 262, 7, '1'),
	(1922, 592, 262, 2, '15'),
	(1932, 592, 262, 4, '15'),
	(1942, 602, 282, 17, '5'),
	(1952, 602, 282, 7, '1'),
	(1962, 602, 282, 2, '10'),
	(1972, 602, 282, 4, '10'),
	(2022, 622, 292, 17, '5'),
	(2032, 622, 292, 7, '1'),
	(2042, 622, 292, 2, '15'),
	(2052, 622, 292, 4, '15'),
	(4432, 1922, 762, 2, '7'),
	(4412, 0, 762, 2, '7'),
	(4422, 1922, 762, 7, '1'),
	(2142, 652, 382, 17, '5'),
	(2152, 652, 382, 7, '1'),
	(2162, 652, 382, 2, '10'),
	(2172, 652, 382, 4, '10'),
	(2302, 712, 452, 17, '5'),
	(2312, 712, 452, 7, '1'),
	(2342, 712, 452, 4, '10'),
	(2332, 712, 452, 2, '10'),
	(4852, 1212, 552, 2, '10'),
	(4842, 1212, 552, 7, '1'),
	(4832, 1182, 512, 4, '10'),
	(4822, 1502, 222, 17, '5'),
	(4402, 0, 762, 4, '7'),
	(2542, 812, 42, 4, '10'),
	(2552, 812, 42, 7, '1'),
	(2562, 812, 42, 2, '10'),
	(4752, 0, 512, 4, '10'),
	(4632, 1882, 52, 17, '5'),
	(2602, 832, 72, 4, '10'),
	(2612, 832, 72, 2, '10'),
	(2622, 832, 72, 7, '1'),
	(2632, 842, 32, 4, '10'),
	(2642, 842, 32, 2, '10'),
	(2652, 842, 32, 7, '1'),
	(2662, 852, 202, 4, '10'),
	(2672, 852, 202, 2, '10'),
	(2682, 852, 202, 7, '1'),
	(2692, 792, 82, 4, '10'),
	(2702, 792, 82, 2, '10'),
	(2712, 792, 82, 7, '1'),
	(2722, 862, 62, 4, '10'),
	(2732, 862, 62, 2, '10'),
	(2742, 862, 62, 7, '1'),
	(4392, 0, 762, 4, '7'),
	(4352, 0, 552, 4, '10'),
	(4342, 0, 552, 2, '10'),
	(4332, 0, 552, 7, '1'),
	(2792, 882, 92, 4, '10'),
	(2802, 882, 92, 2, '10'),
	(2812, 882, 92, 7, '1'),
	(2822, 882, 92, 17, '5'),
	(2832, 892, 102, 4, '10'),
	(2842, 892, 102, 2, '10'),
	(2852, 892, 102, 7, '1'),
	(2862, 892, 102, 17, '5'),
	(2872, 912, 122, 4, '10'),
	(2882, 912, 122, 2, '10'),
	(2892, 912, 122, 7, '1'),
	(2902, 912, 122, 17, '5'),
	(2912, 932, 142, 4, '10'),
	(2922, 932, 142, 2, '10'),
	(2932, 932, 142, 7, '1'),
	(2942, 932, 142, 17, '5'),
	(2952, 972, 192, 4, '10'),
	(2962, 972, 192, 2, '10'),
	(2972, 972, 192, 7, '1'),
	(2982, 972, 192, 17, '5'),
	(3832, 1972, 1082, 7, '1'),
	(3822, 1972, 1082, 17, '5'),
	(3812, 1972, 1082, 4, '10'),
	(3802, 1972, 1082, 2, '10'),
	(3032, 992, 682, 4, '10'),
	(3042, 992, 682, 2, '10'),
	(3052, 992, 682, 7, '1'),
	(3062, 992, 682, 17, '5'),
	(4032, 2142, 692, 7, '1'),
	(4022, 2142, 692, 17, '5'),
	(4012, 2142, 692, 2, '10'),
	(4002, 2142, 692, 4, '10'),
	(4382, 0, 762, 2, '7'),
	(4372, 0, 762, 7, '1'),
	(4362, 1922, 762, 17, '5'),
	(4182, 2432, 652, 4, '10'),
	(3242, 1012, 842, 4, '10'),
	(3252, 1012, 842, 2, '10'),
	(3262, 1012, 842, 7, '1'),
	(3272, 1012, 842, 17, '5'),
	(3282, 1022, 822, 4, '10'),
	(3292, 1022, 822, 2, '10'),
	(3302, 1022, 822, 7, '1'),
	(3312, 1022, 822, 17, '5'),
	(3322, 1032, 832, 4, '10'),
	(3332, 1032, 832, 2, '10'),
	(3342, 1032, 832, 7, '1'),
	(3352, 1032, 832, 17, '5'),
	(3362, 1042, 862, 4, '10'),
	(3372, 1042, 862, 2, '10'),
	(3382, 1042, 862, 7, '1'),
	(3392, 1042, 862, 17, '5'),
	(3402, 1092, 12, 4, '10'),
	(3412, 1092, 12, 2, '10'),
	(3422, 1092, 12, 7, '1'),
	(3432, 1092, 12, 17, '5'),
	(3772, 1152, 412, 17, '5'),
	(3562, 1152, 412, 2, '10'),
	(3582, 1152, 412, 7, '1'),
	(3792, 1152, 412, 4, '10');
/*!40000 ALTER TABLE `serviceleave` ENABLE KEYS */;

-- Dumping structure for table heroku_760d4109a89e3f8.serviceleavestatus
DROP TABLE IF EXISTS `serviceleavestatus`;
CREATE TABLE IF NOT EXISTS `serviceleavestatus` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `employee_id` int(10) DEFAULT NULL,
  `leave_id` int(10) DEFAULT NULL,
  `leavedays` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `useddays` varchar(4) COLLATE utf8_unicode_ci DEFAULT '0',
  `leftdays` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slc` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vlt` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4693 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table heroku_760d4109a89e3f8.serviceleavestatus: 413 rows
/*!40000 ALTER TABLE `serviceleavestatus` DISABLE KEYS */;
INSERT INTO `serviceleavestatus` (`id`, `employee_id`, `leave_id`, `leavedays`, `useddays`, `leftdays`, `slc`, `vlt`) VALUES
	(2, 502, 7, '1', '0', '1', NULL, NULL),
	(2512, 152, 7, '1', '0', '1', NULL, NULL),
	(22, 502, 17, '5', '0', '5', NULL, NULL),
	(32, 502, 2, '15', '0', '15', NULL, NULL),
	(42, 12, 17, '5', '0', '5', NULL, NULL),
	(52, 12, 7, '1', '0', '1', NULL, NULL),
	(62, 12, 4, '10', '0', '10', NULL, NULL),
	(72, 12, 2, '10', '0', '10', NULL, NULL),
	(4042, 552, 17, '5', '0', '5', NULL, NULL),
	(4032, 552, 7, '1', '0', '1', NULL, NULL),
	(4022, 512, 17, '5', '0', '5', NULL, NULL),
	(4012, 512, 7, '1', '0', '1', NULL, NULL),
	(4002, 512, 2, '15', '0', '15', NULL, NULL),
	(162, 412, 2, '10', '0', '10', NULL, NULL),
	(172, 412, 7, '1', '0', '1', NULL, NULL),
	(182, 412, 17, '5', '0', '5', NULL, NULL),
	(192, 412, 4, '10', '0', '10', NULL, NULL),
	(202, 652, 2, '10', '0', '10', NULL, NULL),
	(212, 652, 7, '1', '0', '1', NULL, NULL),
	(222, 652, 17, '5', '0', '5', NULL, NULL),
	(232, 652, 4, '10', '0', '10', NULL, NULL),
	(242, 512, 17, '5', '0', '5', NULL, NULL),
	(252, 512, 7, '1', '0', '1', NULL, NULL),
	(262, 512, 2, '10', '0', '10', NULL, NULL),
	(272, 512, 4, '10', '0', '10', NULL, NULL),
	(282, 552, 2, '10', '0', '10', NULL, NULL),
	(292, 552, 7, '1', '0', '1', NULL, NULL),
	(302, 552, 4, '10', '0', '10', NULL, NULL),
	(312, 552, 17, '5', '0', '5', NULL, NULL),
	(322, 542, 4, '15', '0', '15', NULL, NULL),
	(332, 542, 17, '5', '0', '5', NULL, NULL),
	(342, 542, 7, '1', '0', '1', NULL, NULL),
	(352, 542, 2, '15', '0', '15', NULL, NULL),
	(362, 462, 17, '5', '0', '5', NULL, NULL),
	(372, 462, 7, '1', '0', '1', NULL, NULL),
	(382, 462, 2, '10', '0', '10', NULL, NULL),
	(392, 462, 4, '10', '0', '10', NULL, NULL),
	(402, 502, 4, '15', '0', '15', NULL, NULL),
	(412, 1182, 7, '1', '0', '1', NULL, NULL),
	(422, 1182, 2, '10', '0', '10', NULL, NULL),
	(432, 1182, 4, '10', '0', '10', NULL, NULL),
	(442, 1182, 17, '5', '0', '5', NULL, NULL),
	(452, 22, 4, '7', '0', '7', NULL, NULL),
	(462, 22, 7, '1', '0', '1', NULL, NULL),
	(472, 22, 17, '5', '0', '5', NULL, NULL),
	(482, 22, 2, '7', '0', '7', NULL, NULL),
	(492, 642, 17, '5', '0', '5', NULL, NULL),
	(502, 642, 7, '1', '0', '1', NULL, NULL),
	(512, 642, 2, '15', '0', '15', NULL, NULL),
	(522, 642, 4, '15', '0', '15', NULL, NULL),
	(532, 352, 17, '5', '0', '5', NULL, NULL),
	(542, 352, 2, '15', '0', '15', NULL, NULL),
	(552, 352, 4, '15', '0', '15', NULL, NULL),
	(562, 352, 7, '1', '0', '1', NULL, NULL),
	(572, 472, 17, '5', '0', '5', NULL, NULL),
	(582, 472, 7, '1', '0', '1', NULL, NULL),
	(592, 472, 2, '15', '0', '15', NULL, NULL),
	(602, 472, 4, '15', '0', '15', NULL, NULL),
	(612, 662, 4, '15', '0', '15', NULL, NULL),
	(622, 662, 2, '15', '0', '15', NULL, NULL),
	(632, 662, 7, '1', '0', '1', NULL, NULL),
	(642, 662, 17, '5', '0', '5', NULL, NULL),
	(652, 672, 2, '15', '0', '15', NULL, NULL),
	(662, 672, 7, '1', '0', '1', NULL, NULL),
	(672, 672, 17, '5', '0', '5', NULL, NULL),
	(682, 672, 5, '60', '0', '60', NULL, NULL),
	(692, 672, 4, '15', '0', '15', NULL, NULL),
	(702, 1212, 17, '5', '0', '5', NULL, NULL),
	(712, 1212, 7, '1', '0', '1', NULL, NULL),
	(722, 1212, 2, '7', '0', '7', NULL, NULL),
	(732, 1212, 4, '7', '0', '7', NULL, NULL),
	(742, 312, 7, '1', '0', '1', NULL, NULL),
	(752, 312, 17, '5', '0', '5', NULL, NULL),
	(762, 312, 2, '8', '0', '8', NULL, NULL),
	(772, 312, 4, '8', '0', '8', NULL, NULL),
	(782, 722, 5, '60', '0', '60', NULL, NULL),
	(792, 722, 7, '1', '0', '1', NULL, NULL),
	(802, 722, 17, '5', '0', '5', NULL, NULL),
	(812, 722, 2, '10', '0', '10', NULL, NULL),
	(822, 722, 4, '10', '0', '10', NULL, NULL),
	(832, 772, 17, '5', '0', '5', NULL, NULL),
	(842, 772, 7, '1', '0', '1', NULL, NULL),
	(852, 772, 2, '10', '0', '10', NULL, NULL),
	(862, 702, 17, '5', '0', '5', NULL, NULL),
	(872, 702, 1, '1', '0', '1', NULL, NULL),
	(882, 702, 7, '1', '0', '1', NULL, NULL),
	(892, 702, 2, '10', '0', '10', NULL, NULL),
	(902, 702, 4, '10', '0', '10', NULL, NULL),
	(912, 892, 17, '5', '0', '5', NULL, NULL),
	(922, 892, 7, '1', '0', '1', NULL, NULL),
	(932, 892, 1, '1', '0', '1', NULL, NULL),
	(942, 892, 2, '8', '0', '8', NULL, NULL),
	(952, 892, 4, '8', '0', '8', NULL, NULL),
	(962, 742, 17, '5', '0', '5', NULL, NULL),
	(972, 742, 7, '1', '0', '1', NULL, NULL),
	(982, 742, 2, '10', '0', '10', NULL, NULL),
	(992, 742, 4, '10', '0', '10', NULL, NULL),
	(1002, 742, 1, '1', '0', '1', NULL, NULL),
	(1012, 1082, 17, '5', '0', '5', NULL, NULL),
	(1022, 1082, 7, '1', '0', '1', NULL, NULL),
	(1032, 1082, 1, '1', '0', '1', NULL, NULL),
	(1042, 1082, 2, '10', '0', '10', NULL, NULL),
	(1052, 1082, 4, '10', '0', '10', NULL, NULL),
	(1062, 732, 17, '5', '0', '5', NULL, NULL),
	(1072, 732, 7, '1', '0', '1', NULL, NULL),
	(1082, 732, 2, '10', '0', '10', NULL, NULL),
	(1092, 732, 4, '10', '0', '10', NULL, NULL),
	(1102, 782, 17, '5', '0', '5', NULL, NULL),
	(1112, 782, 7, '1', '0', '1', NULL, NULL),
	(1122, 782, 2, '8', '0', '8', NULL, NULL),
	(1132, 782, 4, '8', '0', '8', NULL, NULL),
	(1142, 922, 17, '5', '0', '5', NULL, NULL),
	(1152, 922, 7, '1', '0', '1', NULL, NULL),
	(1162, 922, 1, '1', '0', '1', NULL, NULL),
	(1172, 922, 2, '15', '0', '15', NULL, NULL),
	(1182, 922, 4, '15', '0', '15', NULL, NULL),
	(1192, 872, 17, '5', '0', '5', NULL, NULL),
	(1202, 872, 7, '1', '0', '1', NULL, NULL),
	(1212, 872, 2, '15', '0', '15', NULL, NULL),
	(1222, 872, 4, '15', '0', '15', NULL, NULL),
	(1232, 932, 17, '5', '0', '5', NULL, NULL),
	(1242, 932, 7, '1', '0', '1', NULL, NULL),
	(1252, 932, 2, '10', '0', '10', NULL, NULL),
	(1262, 932, 4, '10', '0', '10', NULL, NULL),
	(1272, 902, 17, '5', '0', '5', NULL, NULL),
	(1282, 902, 7, '1', '0', '1', NULL, NULL),
	(1292, 902, 2, '10', '0', '10', NULL, NULL),
	(1302, 902, 4, '10', '0', '10', NULL, NULL),
	(1312, 1072, 17, '5', '0', '5', NULL, NULL),
	(1322, 1072, 7, '1', '0', '1', NULL, NULL),
	(1332, 1072, 2, '9', '0', '9', NULL, NULL),
	(1342, 1072, 4, '9', '0', '9', NULL, NULL),
	(1352, 992, 7, '1', '0', '1', NULL, NULL),
	(1362, 992, 17, '5', '0', '5', NULL, NULL),
	(1372, 992, 2, '10', '0', '10', NULL, NULL),
	(1382, 992, 4, '10', '0', '10', NULL, NULL),
	(1392, 1032, 17, '5', '0', '5', NULL, NULL),
	(1402, 1032, 7, '1', '0', '1', NULL, NULL),
	(1412, 1032, 1, '1', '0', '1', NULL, NULL),
	(1422, 1032, 2, '15', '0', '15', NULL, NULL),
	(1432, 1032, 4, '15', '0', '15', NULL, NULL),
	(1442, 952, 17, '5', '0', '5', NULL, NULL),
	(1452, 952, 7, '1', '0', '1', NULL, NULL),
	(1462, 952, 3, '15', '0', '15', NULL, NULL),
	(1472, 952, 2, '15', '0', '15', NULL, NULL),
	(1482, 962, 17, '5', '0', '5', NULL, NULL),
	(1492, 962, 7, '1', '0', '1', NULL, NULL),
	(1502, 962, 2, '10', '0', '10', NULL, NULL),
	(1512, 962, 4, '10', '0', '10', NULL, NULL),
	(1522, 942, 17, '5', '0', '5', NULL, NULL),
	(1532, 942, 7, '1', '0', '1', NULL, NULL),
	(1542, 942, 2, '10', '0', '10', NULL, NULL),
	(1552, 942, 4, '10', '0', '10', NULL, NULL),
	(1562, 1052, 17, '5', '0', '5', NULL, NULL),
	(1572, 1052, 7, '1', '0', '1', NULL, NULL),
	(1582, 1052, 1, '1', '0', '1', NULL, NULL),
	(1592, 1052, 2, '7', '0', '7', NULL, NULL),
	(1602, 1052, 4, '7', '0', '7', NULL, NULL),
	(1612, 972, 17, '5', '0', '5', NULL, NULL),
	(1622, 972, 7, '1', '0', '1', NULL, NULL),
	(1632, 972, 2, '10', '0', '10', NULL, NULL),
	(1642, 972, 4, '10', '0', '10', NULL, NULL),
	(1652, 1012, 17, '5', '0', '5', NULL, NULL),
	(1662, 1012, 7, '1', '0', '1', NULL, NULL),
	(1672, 1012, 2, '10', '0', '10', NULL, NULL),
	(1682, 1012, 4, '10', '0', '10', NULL, NULL),
	(1692, 1002, 17, '5', '0', '5', NULL, NULL),
	(1702, 1002, 7, '1', '0', '1', NULL, NULL),
	(1712, 1002, 2, '10', '0', '10', NULL, NULL),
	(1722, 1002, 4, '10', '0', '10', NULL, NULL),
	(1732, 1042, 17, '5', '0', '5', NULL, NULL),
	(1742, 1042, 7, '1', '0', '1', NULL, NULL),
	(1752, 1042, 1, '1', '0', '1', NULL, NULL),
	(1762, 1042, 2, '10', '0', '10', NULL, NULL),
	(1772, 1042, 4, '10', '0', '10', NULL, NULL),
	(1782, 1062, 17, '5', '0', '5', NULL, NULL),
	(1792, 1062, 7, '1', '0', '1', NULL, NULL),
	(1802, 1062, 2, '7', '0', '7', NULL, NULL),
	(1812, 1062, 4, '7', '0', '7', NULL, NULL),
	(1822, 222, 17, '5', '0', '5', NULL, NULL),
	(1832, 222, 7, '1', '0', '1', NULL, NULL),
	(1842, 222, 4, '15', '0', '15', NULL, NULL),
	(1852, 222, 2, '15', '0', '15', NULL, NULL),
	(1862, 232, 17, '5', '0', '5', NULL, NULL),
	(1872, 232, 7, '1', '0', '1', NULL, NULL),
	(1882, 232, 2, '15', '0', '15', NULL, NULL),
	(1892, 232, 4, '15', '0', '15', NULL, NULL),
	(1902, 262, 17, '5', '0', '5', NULL, NULL),
	(1912, 262, 7, '1', '0', '1', NULL, NULL),
	(1922, 262, 2, '15', '0', '15', NULL, NULL),
	(1932, 262, 4, '15', '0', '15', NULL, NULL),
	(1942, 282, 17, '5', '0', '5', NULL, NULL),
	(1952, 282, 7, '1', '0', '1', NULL, NULL),
	(1962, 282, 2, '10', '0', '10', NULL, NULL),
	(1972, 282, 4, '10', '0', '10', NULL, NULL),
	(1982, 322, 17, '5', '0', '5', NULL, NULL),
	(1992, 322, 7, '1', '0', '8', NULL, NULL),
	(2002, 322, 2, '15', '0', '15', NULL, NULL),
	(2012, 322, 4, '15', '0', '15', NULL, NULL),
	(2022, 292, 17, '5', '0', '5', NULL, NULL),
	(2032, 292, 7, '1', '0', '1', NULL, NULL),
	(2042, 292, 2, '15', '0', '15', NULL, NULL),
	(2052, 292, 4, '15', '0', '15', NULL, NULL),
	(2102, 362, 17, '5', '0', '5', NULL, NULL),
	(2112, 362, 7, '1', '0', '1', NULL, NULL),
	(2122, 362, 2, '10', '0', '10', NULL, NULL),
	(2132, 362, 4, '10', '0', '10', NULL, NULL),
	(2142, 382, 17, '5', '0', '5', NULL, NULL),
	(2152, 382, 7, '1', '0', '1', NULL, NULL),
	(2162, 382, 2, '10', '0', '10', NULL, NULL),
	(2172, 382, 4, '10', '0', '10', NULL, NULL),
	(2182, 402, 17, '5', '0', '5', NULL, NULL),
	(2192, 402, 7, '1', '0', '1', NULL, NULL),
	(2202, 402, 2, '15', '0', '15', NULL, NULL),
	(2212, 402, 4, '15', '0', '15', NULL, NULL),
	(2222, 442, 17, '5', '0', '5', NULL, NULL),
	(2232, 442, 7, '1', '0', '1', NULL, NULL),
	(2242, 442, 2, '10', '0', '10', NULL, NULL),
	(2252, 442, 4, '10', '0', '10', NULL, NULL),
	(2262, 422, 17, '5', '0', '5', NULL, NULL),
	(2272, 422, 7, '1', '0', '1', NULL, NULL),
	(2282, 422, 2, '10', '0', '10', NULL, NULL),
	(2292, 422, 4, '10', '0', '10', NULL, NULL),
	(2302, 452, 17, '5', '0', '5', NULL, NULL),
	(2312, 452, 7, '1', '0', '1', NULL, NULL),
	(2342, 452, 4, '10', '0', '10', NULL, NULL),
	(2332, 452, 2, '10', '0', '10', NULL, NULL),
	(2352, 592, 17, '5', '0', '5', NULL, NULL),
	(2362, 592, 7, '1', '0', '1', NULL, NULL),
	(2372, 592, 2, '10', '0', '10', NULL, NULL),
	(2382, 592, 4, '10', '0', '10', NULL, NULL),
	(2392, 582, 17, '5', '0', '5', NULL, NULL),
	(2402, 582, 7, '1', '0', '1', NULL, NULL),
	(2412, 582, 2, '10', '0', '10', NULL, NULL),
	(2422, 582, 4, '10', '0', '10', NULL, NULL),
	(2432, 482, 17, '5', '0', '5', NULL, NULL),
	(2442, 482, 7, '1', '0', '1', NULL, NULL),
	(2452, 482, 2, '10', '0', '10', NULL, NULL),
	(2462, 482, 4, '10', '0', '10', NULL, NULL),
	(2472, 602, 17, '5', '0', '5', NULL, NULL),
	(2482, 602, 7, '1', '0', '1', NULL, NULL),
	(2492, 602, 2, '10', '0', '10', NULL, NULL),
	(2502, 602, 4, '10', '0', '10', NULL, NULL),
	(3982, 372, 2, '7', '0', '7', NULL, NULL),
	(3992, 512, 2, '15', '0', '15', NULL, NULL),
	(2522, 152, 2, '10', '0', '10', NULL, NULL),
	(2532, 152, 4, '10', '0', '10', NULL, NULL),
	(2542, 42, 4, '10', '0', '10', NULL, NULL),
	(2552, 42, 7, '1', '0', '1', NULL, NULL),
	(2562, 42, 2, '10', '0', '10', NULL, NULL),
	(2572, 52, 4, '10', '0', '10', NULL, NULL),
	(2582, 52, 2, '10', '0', '10', NULL, NULL),
	(2592, 52, 7, '1', '0', '1', NULL, NULL),
	(2602, 72, 4, '10', '0', '10', NULL, NULL),
	(2612, 72, 2, '10', '0', '10', NULL, NULL),
	(2622, 72, 7, '1', '0', '1', NULL, NULL),
	(2632, 32, 4, '10', '0', '10', NULL, NULL),
	(2642, 32, 2, '10', '0', '10', NULL, NULL),
	(2652, 32, 7, '1', '0', '1', NULL, NULL),
	(2662, 202, 4, '10', '0', '10', NULL, NULL),
	(2672, 202, 2, '10', '0', '10', NULL, NULL),
	(2682, 202, 7, '1', '0', '1', NULL, NULL),
	(2692, 82, 4, '10', '0', '10', NULL, NULL),
	(2702, 82, 2, '10', '0', '10', NULL, NULL),
	(2712, 82, 7, '1', '0', '1', NULL, NULL),
	(2722, 62, 4, '10', '0', '10', NULL, NULL),
	(2732, 62, 2, '10', '0', '10', NULL, NULL),
	(2742, 62, 7, '1', '0', '1', NULL, NULL),
	(2752, 162, 4, '10', '0', '10', NULL, NULL),
	(2762, 162, 2, '10', '0', '10', NULL, NULL),
	(2772, 162, 17, '5', '0', '5', NULL, NULL),
	(2782, 162, 7, '1', '0', '1', NULL, NULL),
	(2792, 92, 4, '10', '0', '10', NULL, NULL),
	(2802, 92, 2, '10', '0', '10', NULL, NULL),
	(2812, 92, 7, '1', '0', '1', NULL, NULL),
	(2822, 92, 17, '5', '0', '5', NULL, NULL),
	(2832, 102, 4, '10', '0', '10', NULL, NULL),
	(2842, 102, 2, '10', '0', '10', NULL, NULL),
	(2852, 102, 7, '1', '0', '1', NULL, NULL),
	(2862, 102, 17, '5', '0', '5', NULL, NULL),
	(2872, 122, 4, '10', '0', '10', NULL, NULL),
	(2882, 122, 2, '10', '0', '10', NULL, NULL),
	(2892, 122, 7, '1', '0', '1', NULL, NULL),
	(2902, 122, 17, '5', '0', '5', NULL, NULL),
	(2912, 142, 4, '10', '0', '10', NULL, NULL),
	(2922, 142, 2, '10', '0', '10', NULL, NULL),
	(2932, 142, 7, '1', '0', '1', NULL, NULL),
	(2942, 142, 17, '5', '0', '5', NULL, NULL),
	(2952, 192, 4, '10', '0', '10', NULL, NULL),
	(2962, 192, 2, '10', '0', '10', NULL, NULL),
	(2972, 192, 7, '1', '0', '1', NULL, NULL),
	(2982, 192, 17, '5', '0', '5', NULL, NULL),
	(2992, 132, 17, '5', '0', '5', NULL, NULL),
	(3002, 132, 4, '10', '0', '10', NULL, NULL),
	(3012, 132, 2, '10', '0', '10', NULL, NULL),
	(3022, 132, 7, '1', '0', '1', NULL, NULL),
	(3032, 682, 4, '10', '0', '10', NULL, NULL),
	(3042, 682, 2, '10', '0', '10', NULL, NULL),
	(3052, 682, 7, '1', '0', '1', NULL, NULL),
	(3062, 682, 17, '5', '0', '5', NULL, NULL),
	(3072, 1202, 4, '15', '0', '15', NULL, NULL),
	(3082, 1202, 2, '15', '0', '15', NULL, NULL),
	(3092, 1202, 7, '1', '0', '1', NULL, NULL),
	(3102, 1202, 17, '5', '0', '5', NULL, NULL),
	(3112, 562, 4, '15', '0', '15', NULL, NULL),
	(3122, 562, 2, '15', '0', '15', NULL, NULL),
	(3132, 562, 7, '1', '0', '1', NULL, NULL),
	(3142, 562, 17, '5', '0', '5', NULL, NULL),
	(3152, 692, 4, '10', '0', '10', NULL, NULL),
	(3162, 692, 2, '10', '0', '10', NULL, NULL),
	(3172, 692, 7, '1', '0', '1', NULL, NULL),
	(3182, 692, 17, '5', '0', '5', NULL, NULL),
	(3192, 762, 4, '7', '0', '7', NULL, NULL),
	(3202, 762, 2, '7', '0', '7', NULL, NULL),
	(3212, 762, 7, '1', '0', '1', NULL, NULL),
	(3222, 762, 17, '5', '0', '5', NULL, NULL),
	(3232, 772, 4, '10', '0', '10', NULL, NULL),
	(3242, 842, 4, '10', '0', '10', NULL, NULL),
	(3252, 842, 2, '10', '0', '10', NULL, NULL),
	(3262, 842, 7, '1', '0', '1', NULL, NULL),
	(3272, 842, 17, '5', '0', '5', NULL, NULL),
	(3282, 822, 4, '10', '0', '10', NULL, NULL),
	(3292, 822, 2, '10', '0', '10', NULL, NULL),
	(3302, 822, 7, '1', '0', '1', NULL, NULL),
	(3312, 822, 17, '5', '0', '5', NULL, NULL),
	(3322, 832, 4, '10', '0', '10', NULL, NULL),
	(3332, 832, 2, '10', '0', '10', NULL, NULL),
	(3342, 832, 7, '1', '0', '1', NULL, NULL),
	(3352, 832, 17, '5', '0', '5', NULL, NULL),
	(3362, 862, 4, '10', '0', '10', NULL, NULL),
	(3372, 862, 2, '10', '0', '10', NULL, NULL),
	(3382, 862, 7, '1', '0', '1', NULL, NULL),
	(3392, 862, 17, '5', '0', '5', NULL, NULL),
	(4122, 762, 7, '1', '0', '1', NULL, NULL),
	(4112, 762, 17, '5', '0', '5', NULL, NULL),
	(4102, 552, 4, '10', '0', '10', NULL, NULL),
	(4052, 552, 4, '10', '0', '10', NULL, NULL),
	(4062, 552, 2, '10', '0', '10', NULL, NULL),
	(4072, 552, 17, '5', '0', '5', NULL, NULL),
	(4082, 552, 7, '1', '0', '1', NULL, NULL),
	(4092, 552, 2, '10', '0', '10', NULL, NULL),
	(3972, 372, 4, '7', '0', '7', NULL, NULL),
	(3962, 652, 4, '10', '0', '10', NULL, NULL),
	(3952, 652, 17, '5', '0', '5', NULL, NULL),
	(3792, 692, 4, '10', '0', '10', NULL, NULL),
	(3802, 692, 2, '10', '0', '10', NULL, NULL),
	(3812, 692, 17, '5', '0', '5', NULL, NULL),
	(3822, 692, 7, '1', '0', '1', NULL, NULL),
	(3832, 952, 4, '15', '0', '15', NULL, NULL),
	(3842, 952, 2, '15', '0', '15', NULL, NULL),
	(3852, 952, 17, '5', '0', '5', NULL, NULL),
	(3862, 952, 7, '1', '0', '1', NULL, NULL),
	(3872, 372, 17, '5', '0', '5', NULL, NULL),
	(3882, 372, 7, '1', '0', '1', NULL, NULL),
	(3892, 392, 17, '5', '0', '5', NULL, NULL),
	(3902, 392, 7, '1', '0', '1', NULL, NULL),
	(3912, 392, 2, '10', '0', '10', NULL, NULL),
	(3922, 392, 4, '10', '0', '10', NULL, NULL),
	(3932, 652, 7, '1', '0', '1', NULL, NULL),
	(3942, 652, 2, '10', '0', '10', NULL, NULL),
	(4132, 762, 2, '7', '0', '7', NULL, NULL),
	(4142, 762, 4, '7', '0', '7', NULL, NULL),
	(4152, 762, 4, '7', '0', '7', NULL, NULL),
	(4162, 762, 2, '7', '0', '7', NULL, NULL),
	(4172, 762, 7, '1', '0', '1', NULL, NULL),
	(4182, 762, 2, '7', '0', '7', NULL, NULL),
	(4192, 762, 4, '7', '0', '7', NULL, NULL),
	(4202, 742, 17, '5', '0', '5', NULL, NULL),
	(4212, 742, 1, '1', '0', '1', NULL, NULL),
	(4222, 742, 2, '10', '0', '10', NULL, NULL),
	(4232, 542, 7, '1', '0', '1', NULL, NULL),
	(4242, 542, 17, '5', '0', '5', NULL, NULL),
	(4252, 742, 4, '10', '0', '10', NULL, NULL),
	(4262, 542, 4, '15', '0', '15', NULL, NULL),
	(4272, 542, 7, '1', '0', '1', NULL, NULL),
	(4282, 542, 2, '15', '0', '15', NULL, NULL),
	(4292, 542, 4, '15', '0', '15', NULL, NULL),
	(4302, 742, 7, '1', '0', '1', NULL, NULL),
	(4312, 542, 4, '15', '0', '15', NULL, NULL),
	(4322, 562, 7, '1', '0', '1', NULL, NULL),
	(4332, 562, 17, '5', '0', '5', NULL, NULL),
	(4342, 562, 7, '1', '0', '1', NULL, NULL),
	(4352, 562, 2, '10', '0', '10', NULL, NULL),
	(4362, 562, 4, '10', '0', '10', NULL, NULL),
	(4372, 1082, 17, '5', '0', '5', NULL, NULL),
	(4382, 52, 17, '5', '0', '5', NULL, NULL),
	(4392, 52, 7, '1', '0', '1', NULL, NULL),
	(4402, 52, 2, '10', '0', '10', NULL, NULL),
	(4412, 52, 4, '10', '0', '10', NULL, NULL),
	(4422, 952, 7, '1', '0', '1', NULL, NULL),
	(4432, 952, 2, '7', '0', '7', NULL, NULL),
	(4442, 952, 4, '7', '0', '7', NULL, NULL),
	(4452, 1182, 7, '1', '0', '1', NULL, NULL),
	(4462, 1182, 17, '5', '0', '5', NULL, NULL),
	(4472, 1182, 7, '1', '0', '1', NULL, NULL),
	(4482, 1182, 2, '15', '0', '15', NULL, NULL),
	(4492, 1182, 4, '15', '0', '15', NULL, NULL),
	(4502, 512, 4, '10', '0', '10', NULL, NULL),
	(4512, 512, 2, '10', '0', '10', NULL, NULL),
	(4522, 512, 7, '1', '0', '1', NULL, NULL),
	(4532, 512, 2, '10', '0', '10', NULL, NULL),
	(4542, 222, 2, '15', '0', '15', NULL, NULL),
	(4552, 222, 4, '15', '0', '15', NULL, NULL),
	(4562, 222, 7, '1', '0', '1', NULL, NULL),
	(4572, 222, 17, '5', '0', '5', NULL, NULL),
	(4582, 512, 4, '10', '0', '10', NULL, NULL),
	(4592, 552, 7, '1', '0', '1', NULL, NULL),
	(4602, 552, 2, '10', '0', '10', NULL, NULL),
	(4612, 552, 4, '10', '0', '10', NULL, NULL),
	(4622, 1202, 17, '5', '0', '5', NULL, NULL),
	(4632, 1202, 7, '1', '0', '1', NULL, NULL),
	(4642, 1202, 2, '15', '0', '15', NULL, NULL),
	(4652, 1202, 4, '15', '0', '15', NULL, NULL),
	(4662, 502, 17, '5', '0', '5', NULL, NULL),
	(4672, 502, 7, '1', '0', '1', NULL, NULL),
	(4682, 502, 2, '15', '0', '15', NULL, NULL),
	(4692, 502, 4, '15', '0', '15', NULL, NULL);
/*!40000 ALTER TABLE `serviceleavestatus` ENABLE KEYS */;

-- Dumping structure for table heroku_760d4109a89e3f8.serviceleavestatustemp
DROP TABLE IF EXISTS `serviceleavestatustemp`;
CREATE TABLE IF NOT EXISTS `serviceleavestatustemp` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL DEFAULT '0',
  `leavestatus_id` int(10) NOT NULL DEFAULT '0',
  `employee_id` int(10) NOT NULL DEFAULT '0',
  `leave_id` int(10) NOT NULL DEFAULT '0',
  `leavedays` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `useddays` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `leftdays` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slc` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vlt` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remarks` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41622 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table heroku_760d4109a89e3f8.serviceleavestatustemp: ~64 rows (approximately)
/*!40000 ALTER TABLE `serviceleavestatustemp` DISABLE KEYS */;
INSERT INTO `serviceleavestatustemp` (`id`, `user_id`, `leavestatus_id`, `employee_id`, `leave_id`, `leavedays`, `useddays`, `leftdays`, `slc`, `vlt`, `remarks`) VALUES
	(5622, 502, 82, 392, 7, '1', '0', '1', NULL, NULL, 'Edited'),
	(5632, 502, 92, 392, 4, '10', '0', '10', NULL, NULL, 'Edited'),
	(5642, 502, 102, 392, 17, '5', '0', '5', NULL, NULL, 'Edited'),
	(5652, 502, 112, 392, 2, '10', '0', '10', NULL, NULL, 'Edited'),
	(5662, 502, 3442, 392, 4, '10', '0', '10', NULL, NULL, 'Edited'),
	(5672, 502, 3452, 392, 2, '10', '0', '10', NULL, NULL, 'Edited'),
	(5682, 502, 3462, 392, 17, '5', '0', '5', NULL, NULL, 'Edited'),
	(5692, 502, 3472, 392, 7, '1', '0', '1', NULL, NULL, 'Edited'),
	(5702, 502, 3482, 392, 4, '10', '0', '10', NULL, NULL, 'Edited'),
	(5712, 502, 3492, 392, 2, '10', '0', '10', NULL, NULL, 'Edited'),
	(5722, 502, 3502, 392, 17, '5', '0', '5', NULL, NULL, 'Edited'),
	(5732, 502, 3512, 392, 7, '1', '0', '1', NULL, NULL, 'Edited'),
	(37312, 3, 202, 652, 2, '10', '0', '10', NULL, NULL, 'Edited'),
	(37322, 3, 212, 652, 7, '1', '0', '1', NULL, NULL, 'Edited'),
	(37332, 3, 222, 652, 17, '5', '0', '5', NULL, NULL, 'Edited'),
	(37342, 3, 232, 652, 4, '10', '0', '10', NULL, NULL, 'Edited'),
	(37352, 3, 3962, 652, 4, '10', '0', '10', NULL, NULL, 'Edited'),
	(37362, 3, 3952, 652, 17, '5', '0', '5', NULL, NULL, 'Edited'),
	(37372, 3, 3932, 652, 7, '1', '0', '1', NULL, NULL, 'Edited'),
	(37382, 3, 3942, 652, 2, '10', '0', '10', NULL, NULL, 'Edited'),
	(41542, 22, 2, 502, 7, '1', '0', '1', NULL, NULL, 'Edited'),
	(41552, 22, 22, 502, 17, '5', '0', '5', NULL, NULL, 'Edited'),
	(41562, 22, 32, 502, 2, '15', '0', '15', NULL, NULL, 'Edited'),
	(41572, 22, 402, 502, 4, '15', '0', '15', NULL, NULL, 'Edited'),
	(41582, 22, 4662, 502, 17, '5', '0', '5', NULL, NULL, 'Edited'),
	(41592, 22, 4672, 502, 7, '1', '0', '1', NULL, NULL, 'Edited'),
	(41602, 22, 4682, 502, 2, '15', '0', '15', NULL, NULL, 'Edited'),
	(41612, 22, 402, 502, 4, '15', NULL, NULL, NULL, NULL, 'Added');
/*!40000 ALTER TABLE `serviceleavestatustemp` ENABLE KEYS */;

-- Dumping structure for table heroku_760d4109a89e3f8.serviceleavetemp
DROP TABLE IF EXISTS `serviceleavetemp`;
CREATE TABLE IF NOT EXISTS `serviceleavetemp` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `serviceleave_id` int(10) NOT NULL DEFAULT '0',
  `service_id` int(10) DEFAULT NULL,
  `employee_id` int(10) DEFAULT NULL,
  `leave_id` int(10) DEFAULT NULL,
  `leavedays` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remarks` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13243 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table heroku_760d4109a89e3f8.serviceleavetemp: 12 rows
/*!40000 ALTER TABLE `serviceleavetemp` DISABLE KEYS */;
INSERT INTO `serviceleavetemp` (`id`, `serviceleave_id`, `service_id`, `employee_id`, `leave_id`, `leavedays`, `remarks`, `user_id`) VALUES
	(8372, 3792, 1152, 412, 4, '10', 'Edited', 412),
	(13242, 0, 1142, 502, 4, '15', 'Added', 22),
	(13232, 4932, 1142, 502, 2, '15', 'Edited', 22),
	(13222, 4922, 1142, 502, 7, '1', 'Edited', 22),
	(13212, 4912, 1142, 502, 17, '5', 'Edited', 22),
	(12222, 4182, 2432, 652, 4, '10', 'Edited', 3),
	(12212, 4192, 2432, 652, 2, '10', 'Edited', 3),
	(3502, 112, 32, 392, 7, '1', 'Edited', 502),
	(3492, 102, 32, 392, 17, '5', 'Edited', 502),
	(3482, 92, 32, 392, 4, '10', 'Edited', 502),
	(3472, 82, 32, 392, 2, '10', 'Edited', 502),
	(12202, 4202, 2432, 652, 7, '1', 'Edited', 3),
	(8362, 3582, 1152, 412, 7, '1', 'Edited', 412),
	(8352, 3562, 1152, 412, 2, '10', 'Edited', 412),
	(8342, 3772, 1152, 412, 17, '5', 'Edited', 412),
	(12192, 4212, 2432, 652, 17, '5', 'Edited', 3);
/*!40000 ALTER TABLE `serviceleavetemp` ENABLE KEYS */;

-- Dumping structure for table heroku_760d4109a89e3f8.services
DROP TABLE IF EXISTS `services`;
CREATE TABLE IF NOT EXISTS `services` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL DEFAULT '0',
  `dateAssigned` date DEFAULT NULL,
  `datePrompt` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position_id` int(11) DEFAULT '0',
  `employmentStatus` text COLLATE utf8_unicode_ci,
  `company_id` int(11) NOT NULL DEFAULT '0',
  `department_id` int(11) NOT NULL DEFAULT '0',
  `branch_id` int(11) NOT NULL DEFAULT '0',
  `basicSalary` double(10,2) DEFAULT NULL,
  `remarks` text COLLATE utf8_unicode_ci,
  `ifcurrent` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2512 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table heroku_760d4109a89e3f8.services: ~5 rows (approximately)
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` (`id`, `employee_id`, `dateAssigned`, `datePrompt`, `position_id`, `employmentStatus`, `company_id`, `department_id`, `branch_id`, `basicSalary`, `remarks`, `ifcurrent`) VALUES
	(13, 1, '2017-03-01', '', 92, 'Regular', 1, 2, 32, 10000.00, 'Promotion', 1),
	(22, 12, '2016-03-01', '2016-09-01', 622, 'Probationary', 1, 22, 32, 11000.00, 'For regularization', 0),
	(32, 392, '2016-04-05', '2016-10-03', 71, 'Probationary', 1, 1, 32, 12000.00, 'For regularization', 0),
	(42, 372, '2016-11-21', '2017-04-17', 72, 'Probationary', 1, 1, 32, 11000.00, 'For regularization.', 0),
	(52, 412, '2015-05-04', '2016-02-06', 72, 'Probationary', 1, 1, 32, 16000.00, 'For Regularization', 0),
	(62, 652, '2016-02-01', '2016-06-01', 642, 'Project Based', 7, 11, 1, 12500.00, 'For another 6 months probationary', 0),
	(72, 512, '2014-08-18', '2015-06-01', 652, 'Probationary', 1, 1, 32, 10000.00, 'For regularization', 0),
	(102, 462, '2016-11-11', '2016-05-23', 692, 'Regular', 1, 1, 32, 11000.00, 'Regular Status', 0),
	(112, 502, '2007-11-12', '2008-06-01', 612, 'Probationary', 1, 22, 32, 200.00, 'For Regularization', 0),
	(132, 2, '2017-04-01', 'undefined', 102, 'Probationary', 1, 2, 32, 0.00, 'l', 0),
	(242, 712, '2017-01-16', '2017-07-16', 39, 'Probationary', 3, 172, 82, 10.00, 's', 1),
	(252, 762, '2016-10-16', '2017-04-17', 65, 'Probationary', 3, 3, 82, 11.00, 'a', 0),
	(272, 722, '2015-07-15', '2015-11-01', 402, 'Regular', 3, 162, 102, 0.00, 'l', 0),
	(292, 702, '2016-01-01', '2016-08-01', 33, 'Probationary', 3, 172, 82, 0.00, 'a', 0),
	(302, 892, '2016-10-01', '2017-04-01', 412, 'Probationary', 3, 3, 82, 0.00, 'l', 0),
	(312, 742, '2016-06-20', '2017-01-12', 65, 'Probationary', 3, 3, 82, 0.00, 'l', 0),
	(322, 1082, '2016-06-02', '2017-02-01', 412, 'Probationary', 3, 3, 82, 0.00, 'l', 0),
	(332, 732, '2011-10-01', NULL, 372, 'Regular', 3, 162, 82, 0.00, 'l', 1),
	(352, 752, '2017-02-03', '2017-08-03', 402, 'Probationary', 3, 3, 82, 0.00, 'l', 1),
	(362, 922, '2016-03-01', '2006-10-02', 472, 'Regular', 3, 162, 72, 0.00, 'l', 0),
	(372, 812, '2017-01-05', '2017-07-05', 382, 'Probationary', 3, 162, 82, 10.00, 'For Regularization July 5, 2017', 1),
	(382, 912, '2017-02-20', '2017-08-20', 65, 'Probationary', 3, 3, 82, 10.00, 'l', 1),
	(392, 872, '2016-03-16', '2007-10-01', 452, 'Regular', 3, 162, 82, 0.00, 'l', 0),
	(402, 802, '2017-02-21', '2017-08-21', 422, 'Probationary', 3, 172, 82, 10.00, 'l', 1),
	(472, 962, '2016-03-01', '2015-09-01', 68, 'Regular', 3, 172, 92, 0.00, 'l', 0),
	(492, 1052, '2016-10-13', '2017-04-17', 67, 'Probationary', 3, 172, 82, 11.00, 'l', 0),
	(512, 1022, '2016-11-02', '2017-05-02', 67, 'Probationary', 3, 172, 82, 10.00, 'For Regularization May 2, 2017', 1),
	(522, 1012, '2016-08-01', '2016-02-01', 502, 'Regular', 3, 172, 82, 0.00, 'l', 0),
	(532, 882, '2017-02-20', '2017-08-20', 65, 'Probationary', 3, 3, 82, 10.00, 'l', 1),
	(552, 1042, '2014-03-01', NULL, 402, 'Regular', 3, 162, 92, 0.00, 'l', 1),
	(562, 1062, '2017-04-17', '2016-10-17', 65, 'Regular', 3, 3, 82, 11.00, 'l', 0),
	(592, 262, '2011-11-02', '2012-05-02', 182, 'Probationary', 8, 112, 52, 0.00, 'l', 0),
	(602, 282, '2011-11-01', NULL, 222, 'Regular', 8, 82, 52, 0.00, 'l', 1),
	(622, 292, '2016-03-16', '2016-03-17', 192, 'Probationary', 8, 112, 52, 0.00, 'l', 0),
	(652, 382, '2016-05-04', '2016-05-03', 662, 'Regular', 8, 92, 52, 0.00, 'l', 0),
	(662, 632, '2017-01-16', '2017-07-16', 192, 'Probationary', 8, 112, 62, 10.00, 'l', 1),
	(682, 622, '2017-03-01', '2017-09-01', 342, 'Probationary', 8, 112, 52, 0.00, 'l', 1),
	(712, 452, '2016-05-01', NULL, 292, 'Regular', 8, 112, 52, 0.00, 'l', 1),
	(772, 2, '2017-04-01', 'undefined', 102, 'Resigned', 1, 2, 32, 0.00, 'l', 1),
	(782, 1222, '2017-04-24', '2017-10-24', 572, 'Probationary', 3, 172, 72, 12.00, 'l', 1),
	(792, 82, '2016-02-01', NULL, 142, 'Regular', 9, 15, 42, 0.00, 'l', 1),
	(812, 42, '2016-09-26', NULL, 86, 'Regular', 9, 14, 42, 0.00, 'l', 1),
	(822, 52, '2014-01-01', '2017-03-13', 842, 'Regular', 9, 42, 42, 0.00, 'No probationary Contract on her 201 file', 0),
	(832, 72, '2012-12-01', NULL, 83, 'Regular', 9, 15, 42, 0.00, 'l', 1),
	(842, 32, '2012-12-01', NULL, 84, 'Regular', 9, 14, 42, 0.00, 'l', 1),
	(852, 202, '2016-04-01', NULL, 83, 'Regular', 9, 15, 42, 0.00, 'l', 1),
	(862, 62, '2014-06-02', NULL, 132, 'Regular', 9, 52, 42, 0.00, 'l', 1),
	(882, 92, '2016-04-01', NULL, 152, 'Regular', 9, 62, 42, 0.00, 'l', 1),
	(892, 102, '2012-12-01', NULL, 162, 'Regular', 9, 42, 42, 0.00, 'l', 1),
	(902, 112, '2016-11-02', '2017-04-23', 86, 'Trainee', 9, 14, 42, 0.00, 'l', 0),
	(912, 122, '2012-12-01', NULL, 582, 'Regular', 9, 14, 42, 0.00, 'l', 1),
	(922, 212, '2016-09-04', '2017-05-30', 84, 'Probationary', 9, 14, 42, 0.00, 'l', 1),
	(932, 142, '2012-12-01', NULL, 85, 'Regular', 9, 14, 42, 0.00, 'l', 1),
	(952, 112, '2016-11-02', '2017-04-23', 86, 'Resigned', 9, 14, 42, 0.00, 'l', 1),
	(962, 1192, '2014-10-04', '2017-04-10', 84, 'Probationary', 9, 14, 42, 0.00, 'l', 1),
	(972, 192, '2016-09-01', NULL, 86, 'Regular', 9, 14, 42, 0.00, 'l', 1),
	(992, 682, '2016-07-05', '2017-02-01', 782, 'Regular', 9, 42, 42, 0.00, 'l', 0),
	(1002, 852, '2016-12-04', '2017-06-04', 58, 'Probationary', 11, 4, 122, 0.00, 'l', 1),
	(1012, 842, '2011-10-01', NULL, 562, 'Regular', 11, 202, 122, 0.00, 'l', 1),
	(1022, 822, '2016-01-01', NULL, 59, 'Regular', 11, 182, 122, 0.00, 'l', 1),
	(1032, 832, '2015-09-11', NULL, 432, 'Regular', 11, 182, 122, 0.00, 'l', 1),
	(1042, 862, '2014-03-10', NULL, 57, 'Regular', 11, 4, 122, 0.00, 'l', 1),
	(1052, 1232, '2017-04-06', '2017-10-06', 592, 'Probationary', 6, 222, 132, 10.00, 'l', 1),
	(1072, 1252, '2017-04-06', '2017-10-06', 44, 'Probationary', 6, 232, 132, 0.00, 'l', 1),
	(1082, 502, '2008-06-01', '2012-06-15', 612, 'Regular', 1, 22, 32, 7000.00, 'Regular Status', 0),
	(1092, 12, '2016-09-01', NULL, 112, 'Regular', 1, 22, 32, 11000.00, 'Regular', 1),
	(1112, 502, '2012-06-15', '2015-01-15', 612, 'Regular', 1, 22, 32, 9000.00, 'Salary Adjustment', 0),
	(1132, 502, '2015-01-15', '2016-06-15', 112, 'Regular', 1, 22, 32, 12000.00, 'Additional Job Responsibilities; Salary Adjustment', 0),
	(1142, 502, '2016-06-15', NULL, 18, 'Regular', 1, 22, 32, 15000.00, 'Additional Job Responsibilities; Salary Adjustment', 1),
	(1152, 412, '2016-02-06', NULL, 632, 'Regular', 1, 1, 32, 16000.00, 'Regular', 1),
	(1172, 262, '2012-05-02', NULL, 182, 'Regular', 8, 112, 52, 0.00, 'Regular', 1),
	(1182, 512, '2015-06-01', NULL, 302, 'Regular', 1, 1, 32, 10000.00, 'Regular', 1),
	(1192, 382, '2016-05-03', '2016-11-03', 252, 'Probationary', 8, 92, 52, 0.00, 'l', 1),
	(1202, 552, '2016-03-16', '2016-09-01', 76, 'Probationary', 1, 1, 32, 318.00, 'l', 0),
	(1212, 552, '2016-09-01', NULL, 302, 'Regular', 1, 1, 32, 11.00, 'Regular', 1),
	(1222, 402, '2007-11-01', NULL, 282, 'Regular', 8, 82, 52, 0.00, 'l', 1),
	(1232, 562, '2014-08-28', '2014-12-01', 302, 'Probationary', 1, 1, 32, 466.00, '3 months probi', 0),
	(1242, 562, '2014-12-01', '2016-03-01', 302, 'Probationary', 1, 1, 32, 12.00, 'For regularization', 0),
	(1252, 562, '2016-03-01', '2017-05-08', 64, 'Regular', 3, 172, 82, 0.00, 'assigned to ndc', 0),
	(1292, 542, '2005-04-01', '2012-05-11', 682, 'Regular', 7, 6, 1, 0.00, '0', 0),
	(1302, 422, '2015-03-16', '2016-02-01', 272, 'Probationary', 8, 112, 52, 0.00, 'l', 0),
	(1312, 422, '2016-02-01', NULL, 272, 'Regular', 8, 112, 52, 0.00, 'l', 1),
	(1322, 542, '2012-05-11', NULL, 20, 'Regular', 1, 1, 32, 0.00, 'l', 1),
	(1332, 612, '2016-03-01', NULL, 332, 'Project Based', 8, 112, 52, 0.00, 'l', 1),
	(1342, 462, '2016-05-23', '2016-11-16', 692, 'Probationary', 1, 1, 32, 10.00, 'For regularization', 1),
	(1352, 442, '2015-03-16', '2016-02-01', 202, 'Probationary', 8, 102, 52, 0.00, 'l', 0),
	(1362, 442, '2016-02-01', NULL, 202, 'Regular', 8, 102, 52, 0.00, 'l', 1),
	(1372, 1202, '2010-12-01', '2011-04-01', 302, 'Probationary', 1, 1, 32, 576.92, '0', 0),
	(1382, 1202, '2011-04-01', '2012-06-14', 302, 'Regular', 1, 1, 32, 0.00, '0', 0),
	(1392, 1202, '2012-06-14', NULL, 682, 'Regular', 7, 6, 3, 0.00, '0', 1),
	(1402, 232, '2003-12-11', '2004-04-01', 31, 'Regular', 7, 11, 1, 0.00, 'l', 0),
	(1412, 232, '2004-04-01', '2013-10-01', 642, 'Regular', 7, 11, 1, 0.00, 'l', 0),
	(1422, 1182, '2013-05-20', '2013-09-01', 71, 'Probationary', 1, 1, 32, 8.00, 'For regularization', 0),
	(1432, 232, '2013-10-01', '2015-01-01', 9, 'Regular', 13, 9, 22, 0.00, 'l', 0),
	(1442, 1182, '2013-09-01', NULL, 71, 'Regular', 1, 1, 32, 0.00, '0', 1),
	(1452, 22, '2016-11-21', '2017-04-17', 122, 'Probationary', 1, 32, 32, 10.00, 'l', 0),
	(1462, 22, '2017-04-17', NULL, 122, 'Regular', 1, 32, 32, 11.00, 'l', 1),
	(1472, 232, '2015-01-01', NULL, 212, 'Regular', 8, 102, 62, 0.00, 'l', 1),
	(1482, 222, '2013-09-09', '2015-04-01', 322, 'Probationary', 8, 112, 52, 0.00, 'l', 0),
	(1492, 642, '2013-12-01', '2016-08-01', 712, 'Probationary', 7, 11, 1, 0.00, '0', 0),
	(1502, 222, '2015-04-01', NULL, 322, 'Regular', 8, 112, 52, 0.00, 'l', 1),
	(1512, 642, '2016-08-01', NULL, 352, 'Regular', 1, 7, 32, 12.00, 'l', 1),
	(1522, 322, '2013-08-01', '2014-02-01', 192, 'Probationary', 8, 112, 62, 0.00, 'l', 0),
	(1532, 322, '2014-02-01', NULL, 192, 'Regular', 8, 112, 62, 0.00, 'l', 1),
	(1552, 332, '2016-02-16', '2016-12-01', 202, 'Probationary', 8, 102, 62, 0.00, 'l', 0),
	(1562, 332, '2016-12-01', '2015-11-16', 202, 'Regular', 8, 102, 62, 0.00, 'l', 0),
	(1572, 332, '2015-11-16', NULL, 202, 'Project Based', 8, 102, 62, 0.00, 'l', 1),
	(1582, 362, '2014-05-04', '2016-02-01', 202, 'Probationary', 8, 102, 62, 0.00, 'l', 0),
	(1592, 362, '2016-02-01', NULL, 202, 'Regular', 8, 102, 62, 0.00, 'l', 1),
	(1602, 592, '2015-09-01', '2016-03-01', 312, 'Project Based', 8, 102, 62, 0.00, 'l', 0),
	(1612, 592, '2016-03-01', NULL, 312, 'Regular', 8, 102, 62, 0.00, 'l', 1),
	(1622, 582, '2014-03-01', '2015-04-01', 182, 'Probationary', 8, 112, 62, 0.00, 'l', 0),
	(1632, 582, '2015-04-01', NULL, 182, 'Regular', 8, 112, 62, 0.00, 'l', 1),
	(1642, 482, '2011-10-01', NULL, 282, 'Project Based', 8, 112, 62, 0.00, 'l', 1),
	(1652, 352, '2008-01-09', '2008-05-21', 722, 'Probationary', 1, 22, 32, 0.00, '2', 0),
	(1662, 352, '2008-05-21', '2008-08-21', 722, 'Probationary', 1, 22, 32, 1.00, '0', 0),
	(1672, 602, '2014-04-17', '2015-04-01', 322, 'Probationary', 8, 112, 62, 0.00, 'l', 0),
	(1682, 602, '2015-04-01', NULL, 322, 'Regular', 8, 112, 62, 0.00, 'l', 1),
	(1692, 352, '2008-11-21', '2009-03-01', 732, 'Regular', 1, 22, 32, 0.00, '0', 0),
	(1702, 352, '2009-03-01', '2012-05-11', 742, 'Regular', 1, 1, 32, 0.00, '0', 0),
	(1712, 352, '2012-05-11', '2016-08-01', 752, 'Regular', 1, 22, 32, 0.00, '0', 0),
	(1722, 352, '2016-08-01', NULL, 23, 'Regular', 1, 7, 32, 0.00, '0', 1),
	(1732, 472, '2011-05-16', '2011-12-01', 762, 'Probationary', 1, 1, 32, 8.00, '0', 0),
	(1742, 472, '2011-12-01', '2011-08-16', 762, 'Regular', 1, 1, 32, 0.00, '0', 0),
	(1752, 472, '2011-08-16', '2016-12-01', 762, 'Probationary', 1, 1, 32, 8.00, '0', 0),
	(1762, 472, '2016-12-01', NULL, 21, 'Regular', 1, 1, 32, 0.00, '0', 1),
	(1772, 662, '2014-05-01', '2016-08-01', 642, 'Regular', 4, 11, 1, 0.00, '0', 0),
	(1782, 662, '2016-08-01', NULL, 24, 'Regular', 1, 7, 32, 12.00, '0', 1),
	(1792, 672, '2015-07-20', '2016-06-01', 772, 'Project Based', 4, 262, 142, 275.00, '0', 0),
	(1802, 672, '2016-06-01', '2016-08-01', 642, 'Regular', 7, 11, 1, 0.00, '0', 0),
	(1812, 672, '2016-08-01', NULL, 24, 'Regular', 1, 7, 32, 15.00, '0', 1),
	(1822, 1212, '2016-11-21', '2017-04-17', 73, 'Probationary', 1, 1, 32, 10.00, '0', 0),
	(1832, 1212, '2017-04-17', NULL, 73, 'Regular', 1, 1, 32, 11.00, '0', 1),
	(1842, 312, '2016-10-17', '2017-03-01', 232, 'Probationary', 1, 22, 32, 30.00, '0', 0),
	(1852, 312, '2017-03-01', NULL, 232, 'Regular', 1, 22, 32, 32.00, '0', 1),
	(1862, 152, '2015-02-28', '2015-12-01', 80, 'Probationary', 9, 14, 42, 13.00, '0', 0),
	(1872, 152, '2015-12-01', NULL, 80, 'Regular', 9, 14, 42, 0.00, '0', 1),
	(1882, 52, '2017-02-01', NULL, 81, 'Regular', 9, 52, 42, 15.00, 'Newly Appointed', 1),
	(1892, 162, '2016-09-01', NULL, 82, 'Regular', 9, 15, 42, 0.00, '0', 1),
	(1902, 132, '2016-07-15', '2016-12-15', 362, 'Probationary', 9, 42, 42, 20.00, '0', 1),
	(1912, 682, '2017-02-01', NULL, 362, 'Regular', 9, 42, 42, 24.00, '0', 1),
	(1922, 762, '2017-04-17', NULL, 65, 'Regular', 3, 3, 82, 11.00, '0', 1),
	(1932, 562, '2017-05-08', NULL, 302, 'Regular', 1, 1, 32, 0.00, 'Transfer from NDC to SMSi', 1),
	(1942, 702, '2016-08-01', NULL, 33, 'Regular', 3, 172, 82, 14.00, '0', 1),
	(1952, 892, '2017-04-01', NULL, 792, 'Regular', 3, 172, 82, 11.00, '0', 1),
	(1962, 742, '2017-01-12', NULL, 35, 'Regular', 3, 3, 82, 14.00, '0', 1),
	(1972, 1082, '2017-02-01', NULL, 412, 'Regular', 3, 3, 82, 11.00, '0', 1),
	(1982, 872, '2007-10-01', NULL, 802, 'Regular', 7, 6, 1, 0.00, '0', 1),
	(1992, 932, '2013-08-23', '2013-12-01', 812, 'Probationary', 3, 172, 82, 0.00, '0', 0),
	(2002, 932, '2013-12-01', '2016-12-01', 68, 'Regular', 3, 172, 82, 0.00, '0', 0),
	(2012, 932, '2016-12-01', NULL, 63, 'Regular', 3, 3, 82, 0.00, 'promotion', 1),
	(2032, 902, '2012-01-01', '2011-10-01', 832, 'Regular', 3, 212, 82, 0.00, '0', 0),
	(2042, 902, '2011-10-01', '2011-04-01', 832, 'Probationary', 3, 212, 82, 0.00, '0', 1),
	(2052, 1052, '2017-04-17', NULL, 67, 'Regular', 3, 172, 82, 11.00, '0', 1),
	(2062, 972, '2014-11-01', '2015-04-16', 67, 'Probationary', 3, 172, 82, 0.00, '0', 0),
	(2072, 972, '2015-04-16', NULL, 67, 'Regular', 3, 172, 82, 0.00, '0', 1),
	(2082, 1012, '2016-02-01', '2016-08-01', 67, 'Probationary', 3, 172, 82, 0.00, '0', 1),
	(2092, 1002, '2016-02-01', '2016-08-01', 67, 'Probationary', 3, 172, 82, 0.00, '0', 0),
	(2102, 1002, '2016-08-01', NULL, 502, 'Regular', 3, 172, 82, 12.00, '0', 1),
	(2112, 1062, '2016-10-17', '2017-04-17', 65, 'Probationary', 3, 3, 82, 10.00, '0', 1),
	(2122, 962, '2015-09-01', '2015-05-11', 67, 'Probationary', 3, 172, 92, 0.00, '0', 0),
	(2132, 962, '2015-05-11', '2015-08-11', 67, 'Project Based', 3, 172, 92, 0.00, '0', 1),
	(2142, 692, '2014-03-01', NULL, 67, 'Regular', 3, 172, 72, 0.00, '0', 1),
	(2152, 1262, '2017-05-17', '2017-11-17', 102, 'Probationary', 1, 2, 32, 0.00, '0', 1),
	(2192, 922, '2005-02-01', '2004-11-08', 27, 'Regular', 7, 6, 9, 0.00, 'l', 0),
	(2202, 922, '2004-11-08', '2008-08-01', 27, 'Probationary', 7, 6, 1, 0.00, 'l', 0),
	(2222, 1072, '2017-02-01', '2016-03-16', 37, 'Regular', 3, 3, 72, 0.00, 'l', 0),
	(2232, 1072, '2016-03-16', '2016-09-03', 37, 'Regular', 3, 3, 72, 0.00, 'l', 1),
	(2242, 922, '2008-08-01', NULL, 13, 'Regular', 7, 6, 10, 0.00, 'l', 1),
	(2252, 952, '2015-01-12', '2015-05-01', 642, 'Project Based', 7, 6, 4, 0.00, 'l', 0),
	(2262, 952, '2015-05-01', '2016-03-16', 642, 'Probationary', 7, 6, 4, 0.00, 'Transfer to NDC', 0),
	(2282, 952, '2016-03-16', NULL, 412, 'Regular', 3, 3, 72, 0.00, 'l', 1),
	(2292, 942, '2015-06-15', '2015-09-15', 832, 'Project Based', 3, 172, 72, 0.00, 'l', 0),
	(2302, 942, '2015-09-15', '2016-03-15', 832, 'Probationary', 3, 172, 72, 0.00, 'l', 1),
	(2312, 772, '2016-05-14', '2016-11-15', 412, 'Probationary', 3, 3, 102, 0.00, 'l', 0),
	(2322, 772, '2016-11-15', NULL, 412, 'Regular', 3, 3, 102, 0.00, 'l', 1),
	(2332, 722, '2015-11-01', '2016-05-01', 522, 'Probationary', 3, 3, 102, 0.00, 'l', 1),
	(2342, 1032, '2006-09-01', '2015-03-03', 642, 'Regular', 7, 11, 1, 0.00, 'l', 0),
	(2352, 1032, '2015-03-03', '2016-03-16', 50, 'Regular', 3, 172, 72, 0.00, 'l', 0),
	(2362, 1032, '2016-03-16', NULL, 472, 'Regular', 3, 172, 102, 0.00, 'l', 1),
	(2372, 782, '2016-09-15', '2017-03-15', 48, 'Probationary', 3, 172, 82, 0.00, 'l', 0),
	(2382, 782, '2017-03-15', NULL, 48, 'Regular', 3, 172, 82, 0.00, 'l', 1),
	(2392, 992, '2016-02-01', '2016-05-01', 67, 'Project Based', 3, 172, 112, 0.00, 'l', 1),
	(2402, 372, '2017-04-17', NULL, 71, 'Regular', 1, 1, 32, 11000.00, 'Regular', 1),
	(2412, 392, '2016-10-03', NULL, 72, 'Regular', 1, 1, 32, 12000.00, 'Regular', 1),
	(2422, 652, '2016-06-01', '2016-08-01', 642, 'Probationary', 7, 11, 1, 0.00, 'Transfer to SMSi', 0),
	(2432, 652, '2016-08-01', NULL, 24, 'Regular', 1, 7, 32, 12500.00, 'Regular', 1),
	(2442, 1102, '2016-08-27', '2017-02-28', 542, 'Probationary', 6, 232, 132, 0.00, 'l', 0),
	(2452, 1102, '2017-02-28', NULL, 542, 'Regular', 6, 222, 132, 0.00, 'l', 1),
	(2462, 1092, '2016-07-21', '2017-01-22', 41, 'Probationary', 6, 232, 132, 0.00, 'l', 0),
	(2472, 1092, '2017-01-22', NULL, 852, 'Regular', 6, 232, 132, 0.00, 'l', 1),
	(2482, 1242, '2016-07-04', '2017-01-05', 602, 'Probationary', 6, 222, 132, 0.00, 'l', 0),
	(2492, 1242, '2017-01-05', '2017-06-05', 602, 'Project Based', 6, 232, 132, 0.00, 'l', 1),
	(2502, 292, '2016-03-17', '2016-09-17', 192, 'Probationary', 8, 112, 52, 0.00, 'l', 1);
/*!40000 ALTER TABLE `services` ENABLE KEYS */;

-- Dumping structure for table heroku_760d4109a89e3f8.settings
DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `item` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table heroku_760d4109a89e3f8.settings: 4 rows
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` (`id`, `item`, `value`) VALUES
	(1, 'Sick Leave Conversion ', 'February'),
	(2, 'Reset all Leaves', 'January'),
	(3, 'Maximum SL Credit', '10'),
	(4, 'Maximum VL Credit ', '5');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;

-- Dumping structure for table heroku_760d4109a89e3f8.shifts
DROP TABLE IF EXISTS `shifts`;
CREATE TABLE IF NOT EXISTS `shifts` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `day` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timein` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timeout` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shiftgroup_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table heroku_760d4109a89e3f8.shifts: 1 rows
/*!40000 ALTER TABLE `shifts` DISABLE KEYS */;
INSERT INTO `shifts` (`id`, `day`, `timein`, `timeout`, `shiftgroup_id`) VALUES
	(6, 'Monday', '09:00', '06:00', 3);
/*!40000 ALTER TABLE `shifts` ENABLE KEYS */;

-- Dumping structure for table heroku_760d4109a89e3f8.shiftsgroup
DROP TABLE IF EXISTS `shiftsgroup`;
CREATE TABLE IF NOT EXISTS `shiftsgroup` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `shiftName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table heroku_760d4109a89e3f8.shiftsgroup: 4 rows
/*!40000 ALTER TABLE `shiftsgroup` DISABLE KEYS */;
INSERT INTO `shiftsgroup` (`id`, `shiftName`) VALUES
	(1, 'Permanent'),
	(3, 'Flexible'),
	(4, 'Part-Time'),
	(5, 'Project Based');
/*!40000 ALTER TABLE `shiftsgroup` ENABLE KEYS */;

-- Dumping structure for table heroku_760d4109a89e3f8.skills
DROP TABLE IF EXISTS `skills`;
CREATE TABLE IF NOT EXISTS `skills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `type` text COLLATE utf8_unicode_ci,
  `name` text COLLATE utf8_unicode_ci,
  `level` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `index_skills_on_employee_id` (`employee_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table heroku_760d4109a89e3f8.skills: ~1 rows (approximately)
/*!40000 ALTER TABLE `skills` DISABLE KEYS */;
INSERT INTO `skills` (`id`, `employee_id`, `type`, `name`, `level`) VALUES
	(1, 1, 'Management', NULL, 'Professional');
/*!40000 ALTER TABLE `skills` ENABLE KEYS */;

-- Dumping structure for table heroku_760d4109a89e3f8.suspension
DROP TABLE IF EXISTS `suspension`;
CREATE TABLE IF NOT EXISTS `suspension` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `employee_id` int(10) DEFAULT NULL,
  `dateSuspended` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table heroku_760d4109a89e3f8.suspension: 0 rows
/*!40000 ALTER TABLE `suspension` DISABLE KEYS */;
/*!40000 ALTER TABLE `suspension` ENABLE KEYS */;

-- Dumping structure for table heroku_760d4109a89e3f8.taxstatus
DROP TABLE IF EXISTS `taxstatus`;
CREATE TABLE IF NOT EXISTS `taxstatus` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `taxstatus` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `taxcode` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table heroku_760d4109a89e3f8.taxstatus: 10 rows
/*!40000 ALTER TABLE `taxstatus` DISABLE KEYS */;
INSERT INTO `taxstatus` (`id`, `taxstatus`, `taxcode`) VALUES
	(1, 'Single', 'S'),
	(2, 'Married', 'M'),
	(3, 'Single w/ 1 Dependent', 'S1'),
	(4, 'Single w/ 2 Dependent', 'S2'),
	(5, 'Single w/ 3 Dependent', 'S3'),
	(6, 'Single w/ 4 Dependent', 'S4'),
	(7, 'Married w/ 1 Dependent', 'M1'),
	(8, 'Married w/ 2 Dependent', 'M2'),
	(9, 'Married w/ 3 Dependent', 'M3'),
	(10, 'Married w/ 4 Dependent', 'M4');
/*!40000 ALTER TABLE `taxstatus` ENABLE KEYS */;

-- Dumping structure for table heroku_760d4109a89e3f8.timesheet
DROP TABLE IF EXISTS `timesheet`;
CREATE TABLE IF NOT EXISTS `timesheet` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `emp_bio_id` int(10) NOT NULL DEFAULT '0',
  `dateLog` date NOT NULL,
  `timein` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `timeout` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `totalHours` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `late` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `undertime` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `overtime` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `remarks` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table heroku_760d4109a89e3f8.timesheet: ~0 rows (approximately)
/*!40000 ALTER TABLE `timesheet` DISABLE KEYS */;
/*!40000 ALTER TABLE `timesheet` ENABLE KEYS */;

-- Dumping structure for table heroku_760d4109a89e3f8.timesheettemp
DROP TABLE IF EXISTS `timesheettemp`;
CREATE TABLE IF NOT EXISTS `timesheettemp` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `emp_bio_id` int(10) NOT NULL DEFAULT '0',
  `dateLog` date NOT NULL,
  `timein` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `timeout` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `totalHours` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `late` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `undertime` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `overtime` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `remarks` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- Dumping data for table heroku_760d4109a89e3f8.timesheettemp: ~0 rows (approximately)
/*!40000 ALTER TABLE `timesheettemp` DISABLE KEYS */;
/*!40000 ALTER TABLE `timesheettemp` ENABLE KEYS */;

-- Dumping structure for table heroku_760d4109a89e3f8.trainingdev
DROP TABLE IF EXISTS `trainingdev`;
CREATE TABLE IF NOT EXISTS `trainingdev` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `training` text COLLATE utf8_unicode_ci NOT NULL,
  `topic` text COLLATE utf8_unicode_ci NOT NULL,
  `duration` text COLLATE utf8_unicode_ci NOT NULL,
  `cost` double(6,2) NOT NULL,
  `venue` text COLLATE utf8_unicode_ci NOT NULL,
  `speaker` text COLLATE utf8_unicode_ci NOT NULL,
  `benefit` text COLLATE utf8_unicode_ci NOT NULL,
  `dateConduct` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table heroku_760d4109a89e3f8.trainingdev: ~1 rows (approximately)
/*!40000 ALTER TABLE `trainingdev` DISABLE KEYS */;
INSERT INTO `trainingdev` (`id`, `training`, `topic`, `duration`, `cost`, `venue`, `speaker`, `benefit`, `dateConduct`) VALUES
	(2, 'SEO', 'Search Engine', '3 hours', 9999.99, 'SMSi office', 'Robert Bersano', 'Enhance skills', '2017-05-08');
/*!40000 ALTER TABLE `trainingdev` ENABLE KEYS */;

-- Dumping structure for table heroku_760d4109a89e3f8.trainings
DROP TABLE IF EXISTS `trainings`;
CREATE TABLE IF NOT EXISTS `trainings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `started` date DEFAULT NULL,
  `ended` date DEFAULT NULL,
  `institution` text COLLATE utf8_unicode_ci,
  `venue` text COLLATE utf8_unicode_ci,
  `speaker` text COLLATE utf8_unicode_ci,
  `remarks` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `index_trainings_on_employee_id` (`employee_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table heroku_760d4109a89e3f8.trainings: ~1 rows (approximately)
/*!40000 ALTER TABLE `trainings` DISABLE KEYS */;
INSERT INTO `trainings` (`id`, `employee_id`, `name`, `started`, `ended`, `institution`, `venue`, `speaker`, `remarks`) VALUES
	(2, 352, 'Elvira C. Montera', '2011-05-16', '2011-05-18', NULL, NULL, NULL, 'IT PROJECT MANAGEMENT TRAINING');
/*!40000 ALTER TABLE `trainings` ENABLE KEYS */;

-- Dumping structure for table heroku_760d4109a89e3f8.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role_id` int(10) DEFAULT NULL,
  `userStatus` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1433 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table heroku_760d4109a89e3f8.users: 116 rows
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `employee_id`, `username`, `password`, `role_id`, `userStatus`) VALUES
	(1, '1', 'jennifer.dantes', 'b787d22d9cb06342658bf546039117bc', 1, 'Active'),
	(172, '2', 'charizzemae.lumagsao', 'daa6fb13d57d326e6e7ad61244955a2a', 2, 'Disabled'),
	(182, '12', 'shiela.achas', '3e6f518a0789110abb43f6ce37b488b6', 4, 'New'),
	(192, '22', 'dainajane.lungtad', 'a876b10315bf6ad295d28af40f0f3295', 2, 'Active'),
	(202, '32', 'angelito.delada', '3c60a05477310b56b8f14b0955a0ad12', 4, 'New'),
	(212, '42', 'kimberly.bicong', '3b6e67b07629a38c442e83a5fc1dc941', 4, 'New'),
	(222, '52', 'rachel.brua', '417bc6f90acc9947b27c1cd000271281', 4, 'New'),
	(232, '62', 'cheryrose.gabaton', '7e73af325fe1b5d349fbd4dafb081f19', 4, 'New'),
	(242, '72', 'nathaniel.delapena', '09a101d28bbeef47b9684c4615d0e664', 4, 'New'),
	(252, '82', 'amalia.frias', '98a93a57d332906ec56dbd473c1b5e5b', 4, 'New'),
	(262, '92', 'leny.lastrella', '07de1cf70cf34cd3d0c43b73b285fb38', 4, 'New'),
	(272, '102', 'erlyn.lim', '9e5cda5d906539cb225089c4bbb311fd', 4, 'New'),
	(282, '112', 'aldrin.loma', 'a0e612c4ed283ea8b4abd892b4525321', 4, 'Disabled'),
	(292, '122', 'lyriemae.magbutay', 'bb6bdc1c3638f79f0ea298ef79f6ad22', 4, 'New'),
	(302, '132', 'rodel.villegas', '78bcb9e74d9948c374cf05bc882dc905', 4, 'New'),
	(312, '142', 'henilito.poliajr.', '8c1bb328d03bcc318634540319a24e9f', 4, 'New'),
	(322, '152', 'nestor.bantilan', 'b1bc858dcf49c6086b180eae50b01ef0', 4, 'New'),
	(332, '162', 'roberto.jambarojr.', '0e370c7faeeb1506fc14e5233c7fc05a', 4, 'New'),
	(352, '192', 'junmer.talindog', '0885f2a6a5221890e2e2521232e65f3b', 4, 'New'),
	(362, '202', 'ryan.florencio', '5556356816fbe7018c606e582c21970f', 4, 'New'),
	(372, '212', 'arnold.plaza', 'cc2e557ea904c2c1dc597304c49bc37a', 4, 'New'),
	(382, '222', 'jimrey.abenoja', '352abb16f864aac389dbc3bbed2ec6bc', 4, 'New'),
	(392, '232', 'nerio.amper', 'c5f4fc29a0747f17838ec4834d54b1cb', 4, 'New'),
	(422, '262', 'james.baldosano', '4a83d9e47b52c99c2f940b061ac65ed5', 4, 'New'),
	(442, '282', 'renante.cabigas', '5ab00f35632b804c29b10a24b23a206a', 4, 'New'),
	(452, '292', 'gerald.caro', '3ce3a470cdfa52919ac82a554a7b3b8b', 4, 'New'),
	(1432, '1262', 'arlyn.benito', 'a6266cd591bdcd5c36d106e2406679e5', 4, 'New'),
	(472, '312', 'ramonalejandro.valleser', '266575d3c2b8a34f83817458f96152b1', 4, 'Active'),
	(482, '322', 'elgin.camilotes', 'c148528289a904f04a9aff212f38003b', 4, 'New'),
	(492, '332', 'aileenjoy.castro', 'f2f48802cf9e310b1251be9017d0e56b', 4, 'New'),
	(512, '352', 'elvira.montera', 'd22b1347eb5063c9235cc21322e07d03', 4, 'New'),
	(522, '362', 'kristinejoy.dealca', '625b305bddaaee02f1ad13bb5c2622f7', 4, 'New'),
	(532, '372', 'rauladrian.altavano', '898a7478348cb575b586dc6ba6f0949e', 3, 'Active'),
	(542, '382', 'may.ebalang', '314b93ec7c1c5672892eb3ea769cb22c', 4, 'New'),
	(552, '392', 'charlene.almuete', '6579ad6dcf6ea1728e1c704ea754a8df', 4, 'New'),
	(562, '402', 'patricio.galdo', '14b64b40ba51acb21da5c40f87ec1664', 4, 'New'),
	(572, '412', 'marco.arangco', '5d78e3a261b9c19a89ce1cf116795196', 4, 'Active'),
	(582, '422', 'izzahoney.manluza', 'd6bc89d90c1f37ca65bd5cda666cde07', 4, 'New'),
	(1422, '1252', 'kareen.deguzman', '8b5e07613665eea6855b5e6b894d62fa', 4, 'New'),
	(602, '442', 'cheriemae.maghanoy', '013495ac68f5e32393d93562320eccf5', 4, 'New'),
	(612, '452', 'arnaldo.mantillas', 'e5721664fd1af24fd03199b537439f50', 4, 'New'),
	(622, '462', 'brazzelgay.cabaltera', 'd98ea66a559caeda1262fb4fc130a073', 4, 'New'),
	(632, '472', 'renan.moreno', '49e7ba1dec7e1a139f0bf3b2cd1af89c', 4, 'New'),
	(642, '482', 'rolando.mosqueda', '922d12136b719ff8b183480a1a1173c6', 4, 'New'),
	(1412, '1242', 'noel.sobejana', '4a8c6425106c2fc13fdca4727e37801a', 4, 'New'),
	(662, '502', 'jean.godornes', '6d84ba0d884646c7965503a3f6b319eb', 3, 'Active'),
	(672, '512', 'michael.baculio', 'a739edc5ce327e65bd6f1a0100da560b', 4, 'New'),
	(1402, '1232', 'marygrace.escalona', '15e6f36d42327adaa3d3686ecaf3629e', 4, 'New'),
	(702, '542', 'robert.bersano', 'e20dabfe8c672741c14731b3461b31a8', 4, 'New'),
	(712, '552', 'peteemmanuell.balagosa', 'fc8580953f070dca96eb4400e962b86d', 4, 'New'),
	(722, '562', 'khristiandarylle joe.batt', 'fca5a4aaa4e05a8d9452574e52cfbc58', 4, 'New'),
	(742, '582', 'john.mingo', '2aa5a96fae9b3eeaa95c5dfee1a4e463', 4, 'New'),
	(752, '592', 'gina.micoy', 'ea94306c05ba771110af65730e84dcc2', 4, 'New'),
	(762, '602', 'lowie.ulo', '1c7afe29dfd740ba2220f7b0fc502587', 4, 'New'),
	(772, '612', 'mario.tolosa', 'c130093ae9c33633e96b7d77191af292', 4, 'New'),
	(782, '622', 'julius.lascano', 'bbc42a94cc93bda672facf5bb47a10de', 4, 'New'),
	(792, '632', 'romnickjune.elcana', 'c6ebf2022619bfe5d09e298bea5bef6e', 4, 'New'),
	(802, '642', 'dianejoy.mapano', '7e444ed60745374480872bde2e9bbe86', 4, 'New'),
	(812, '652', 'cresarjohn.arce', '182d236271b6616a0e8d5459e3f0f819', 4, 'New'),
	(822, '662', 'lorman.saladaga', 'e5ea41b11dd24fda333be9ff22e2efda', 4, 'New'),
	(832, '672', 'geneth.sayson', '47d64202037252fb3a7f29ddf63e1542', 4, 'New'),
	(842, '682', 'nancy.wong', '4d21d3adc937fd19574e732d81fffdf0', 4, 'New'),
	(852, '692', 'jeffrey.antoque', '7b7fdd4ef1ef1ee6ada25733eb5720a5', 4, 'New'),
	(862, '702', 'salome.bodiongan', '7dde0cfd5a93d7e3958a079c59dfc7c2', 4, 'New'),
	(872, '712', 'ryanevan.almacin', 'e4c8d5b382e958ed68edc28d10388c9b', 4, 'New'),
	(882, '722', 'raquel.baldecantos', '9716cea44f8d026c17f60ec6c8b4319f', 4, 'New'),
	(892, '732', 'gwyne.delosreyes', '740c7a4b02fc092365ab352df7e52ce7', 4, 'New'),
	(902, '742', 'miejor.delacruz', 'afc27678e1883d308a6b4e906ab05631', 4, 'New'),
	(912, '752', 'rudini.galdo', '02a917be02decfaa328e8c9f476c7cfa', 4, 'New'),
	(922, '762', 'allyn.angustia', '567249ec41d369b1a3ea9a97bce76dc8', 4, 'New'),
	(932, '772', 'reilhazzin.bicoy', '5746aead90d143b064ca5d9fa7c8b062', 4, 'New'),
	(942, '782', 'marlon.gal', '99ceb9958d854a44688d9f77194ea979', 4, 'New'),
	(952, '792', 'rudini.galdo', '02a917be02decfaa328e8c9f476c7cfa', 4, 'New'),
	(962, '802', 'arturo.lopezjr.', '2fac1624e42a52f2365f8dde01e2a016', 4, 'New'),
	(972, '812', 'josemiguel.jonelas', '46d2335a012bbbb83ff247ecc7407d0a', 4, 'New'),
	(982, '822', 'jessa.bayking', '56867abe945805c3f910669008406e57', 4, 'New'),
	(992, '832', 'ralphnicko.olam', 'ada6ca44a45f446219dc05da55ceda69', 4, 'New'),
	(1002, '842', 'armando.bagac', 'd15a33c7f596fb40b5addf9bd9833b0e', 4, 'New'),
	(1012, '852', 'harold.aparicio', '43c6eabe0ba298a25d69bfc8c1b3bcf5', 4, 'New'),
	(1022, '862', 'johngleen.panebio', '2b3178d9e4e802c713a857fb7f45fc39', 4, 'New'),
	(1032, '872', 'arnulfo.layco', '31cb3133cef466618e5105d5fddc3806', 4, 'New'),
	(1042, '882', 'stephanie.somoza', 'affbde01e691427a9143e1644eddff05', 4, 'New'),
	(1052, '892', 'jaymar.coresis', '4ea6ecf983299bb67b8076d90b8e8e10', 4, 'New'),
	(1062, '902', 'markanthony.montera', '32081a47a766f84903dce2b545a3f5ae', 4, 'New'),
	(1072, '912', 'rizzamae.lapinid', 'e03a443cab8344943ca646af2a0d9ac1', 4, 'New'),
	(1082, '922', 'pamelaivy.improgo', '8c045579fe9ad87f2c189c03e7f8670c', 4, 'New'),
	(1092, '932', 'jennernino.moneba', '25b3183754de6a96bf81445406ed9bf7', 4, 'New'),
	(1102, '942', 'joesus.rabadan', '9c8a1abe97f2a6c15ee254ef97607310', 4, 'New'),
	(1112, '952', 'michaelangelou.ponte', '80cee32b82922f86a95d54060de053cd', 4, 'New'),
	(1122, '962', 'leoalfie.quipanes', '918dc5ed72dc4a1f7a89cb1446c3f948', 4, 'New'),
	(1132, '972', 'norbenjay.ruiz', 'ced65f318e5f42efe5129757c25d50f9', 4, 'New'),
	(1392, '1222', 'franco.amesola', '3f73a195f1a9b8d8c838ff0846f040ca', 4, 'New'),
	(1152, '992', 'danilo.palojr.', 'ca9f6449fd2f61f36e662fbc5fb200b2', 4, 'New'),
	(1162, '1002', 'nelson.tacoloy', '89c3bb3af8cf61690c40047f233439bf', 4, 'New'),
	(1172, '1012', 'roland.sarce', 'faf1fccdf172a19f54a708e2240f99e7', 4, 'New'),
	(1182, '1022', 'jasper.saludes', 'f3525dd6acd706af1be98403b67c468b', 4, 'New'),
	(1192, '1032', 'ivan.paredes', 'a74ceb8239e115d679bd33135e39dc67', 4, 'New'),
	(1202, '1042', 'girlie.tolosa', '101d27395af690c9c3f204deac64fc90', 4, 'New'),
	(1212, '1052', 'kirbayjay.ragol', 'f9a1de408e985b447663d8c3b6058221', 4, 'New'),
	(1222, '1062', 'lovelyjudy may.villar', 'd3d0b24c4886d42a730ebc1df1e1cd03', 4, 'New'),
	(1232, '1072', 'anthonygreg.naduma', 'cfe73de62f0c7adb492f6dbf5a05df24', 4, 'Active'),
	(1242, '1082', 'joer.delaspenas', '2c15650a251d82468c85f5e72d612af8', 4, 'New'),
	(1252, '1092', 'ivy.florentino', 'd23b01d06071fad51e2e992a020bc88e', 4, 'New'),
	(1262, '1102', 'aprildan.borromeo', '1b98526a3a842af0e014fc72cfaa783d', 4, 'New'),
	(1272, '1112', 'junalona.basalo', '28883506b1ecd2c523417af013e12b86', 4, 'New'),
	(1282, '1122', 'margilen.abuhan', '7007320dc22a7c2d443d231fe9cc9daf', 4, 'New'),
	(1292, '1132', 'alejando.paloma', 'e577b63c125e6f55bb602ea3fcb30e57', 4, 'New'),
	(1302, '1142', 'alex.paloma', 'e08fec6e7c65f85fae7e125d142cf101', 4, 'New'),
	(1312, '1152', 'danilo.vedidajr.', '6346d94ad280c9de2d85036fb49bb65b', 4, 'New'),
	(1322, '1162', 'ronald.tawacal', 'b3bf31c523ae878e7bf032894bc87b53', 4, 'New'),
	(1332, '1172', 'anthony.potot', '13d2d66a20bfd0e57220c635beb419d8', 4, 'New'),
	(1342, '1182', 'janine.jasmin', 'd2954cd682859cebca045f990ded2ae2', 4, 'New'),
	(1352, '1192', 'christian.rebuyas', '1db45abb274c0962515fbe9a06425634', 4, 'New'),
	(1362, '1202', 'joseph.gironii', '916e2d7cfd789e282d207bd4ea689394', 4, 'New'),
	(1372, '1212', 'chadlouei.sullaga', '19ac3b61df8a84aec094e262243c5aed', 4, 'Active'),
	(1382, '3', 'superadmin', 'ad9ca1fc3577ff3c753fb1714a78296e', 8, 'Active');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for table heroku_760d4109a89e3f8.violation
DROP TABLE IF EXISTS `violation`;
CREATE TABLE IF NOT EXISTS `violation` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT NULL,
  `memoNo` int(10) DEFAULT NULL,
  `subject` text COLLATE utf8_unicode_ci,
  `dateOfMemo` date DEFAULT NULL,
  `signedBy` text COLLATE utf8_unicode_ci,
  `noOfOffense` text COLLATE utf8_unicode_ci,
  `categoryOfOffense` text COLLATE utf8_unicode_ci,
  `penalties` text COLLATE utf8_unicode_ci,
  `effectOnPenalties` text COLLATE utf8_unicode_ci,
  `effectivePeriod` text COLLATE utf8_unicode_ci,
  `memo` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=343 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table heroku_760d4109a89e3f8.violation: 31 rows
/*!40000 ALTER TABLE `violation` DISABLE KEYS */;
INSERT INTO `violation` (`id`, `employee_id`, `memoNo`, `subject`, `dateOfMemo`, `signedBy`, `noOfOffense`, `categoryOfOffense`, `penalties`, `effectOnPenalties`, `effectivePeriod`, `memo`) VALUES
	(2, 222, 1, 'Failing to Wear Clothing Uniform', '2016-08-17', 'Jennifer P. Dantes', '1st Offense', 'Minor', NULL, NULL, NULL, NULL),
	(12, 222, 2, 'Ignoring work duties', '2016-08-12', '', '2nd Offense', 'Minor', NULL, NULL, NULL, NULL),
	(222, 872, 1, 'Involved in a vehicular accident', '2010-07-15', 'JRL', '1st Offense', 'Minor', 'Reprimand', NULL, NULL, NULL),
	(32, 222, 3, 'Sleeping During working hours', '2016-08-17', 'Jennifer P. Dantes', '3rd Offense', 'Minor', NULL, NULL, NULL, NULL),
	(42, 282, 1, 'Deliberately log in and log out', '2015-03-04', 'Arch. Neil P. Braw', '1st Offense', NULL, NULL, NULL, NULL, NULL),
	(62, 402, 1, 'Absence without Official Leave or Notice', '2016-12-03', 'CSL/AAM', '3rd Offense', NULL, 'Suspension', NULL, NULL, NULL),
	(72, 402, 2, 'Failure to Reply on the Notice to Explain Last 11 Jan \'16', '2016-04-13', 'ECQ', NULL, NULL, NULL, NULL, NULL, NULL),
	(82, 402, 3, 'Notice to Explain', '2016-01-07', 'NPB', NULL, NULL, '', NULL, NULL, NULL),
	(102, 902, NULL, 'Failed to Obey', '2015-04-12', 'JRL', '1st Offense', NULL, 'Suspension', NULL, NULL, NULL),
	(112, 902, NULL, 'Insubordination and Negligence', '2015-04-15', 'ECQ', NULL, NULL, 'Reprimand', NULL, NULL, NULL),
	(122, 72, 2015, 'Portion of Tendon', '2015-02-11', 'Roberto Jambaro Jr.', '1st Offense', NULL, 'Suspension', NULL, NULL, NULL),
	(132, 102, 2014, 'For Your information', '2014-04-21', 'Alex S. Tiaoqui', '1st Offense', NULL, NULL, NULL, NULL, NULL),
	(142, 142, 2014, 'For Your Information', '2014-04-21', 'Alex S. Tiaoqui', '1st Offense', NULL, 'Reprimand', NULL, NULL, NULL),
	(152, 142, 2014, 'Notice to Explain', '2014-06-18', 'Alex S. Tiaoqui', '2nd Offense', NULL, 'Reprimand', NULL, NULL, NULL),
	(162, 702, 1, 'Notice To Explain', '2017-03-02', 'AVL', '1st Offense', 'Minor', 'Reprimand', NULL, NULL, NULL),
	(172, 702, 2, 'Notice to Explain', '2017-03-03', 'AVL', '2nd Offense', 'Minor', 'Reprimand', NULL, NULL, NULL),
	(182, 742, 1, 'Notice to explain', '2017-03-02', 'AVL', '1st Offense', 'Minor', 'Reprimand', NULL, NULL, NULL),
	(192, 1082, 1, 'Leave without Notice', '2016-09-22', 'AVL', '1st Offense', 'Minor', 'Reprimand', NULL, NULL, NULL),
	(202, 1082, 2, 'Notice to Explain', '2016-09-23', 'AVL', '2nd Offense', 'Minor', 'Reprimand', NULL, NULL, NULL),
	(212, 1082, 3, 'Failed and Ignore Company Procedures', '2017-01-07', 'AVL', '3rd Offense', 'Minor', 'Suspension', NULL, '3', NULL),
	(232, 932, 1, 'Failed to report for work', '2015-01-05', 'ECQ', '1st Offense', 'Minor', 'Reprimand', NULL, NULL, NULL),
	(242, 932, 2, 'Failed to securely lock the clean room and your office door', '2015-04-24', 'JRL', '2nd Offense', 'Minor', 'Reprimand', NULL, NULL, NULL),
	(252, 972, 1, 'Failed and Ignore Company Procedures.', '2017-01-07', 'AVL', '1st Offense', 'Minor', 'Reprimand', NULL, 'null days', NULL),
	(262, 1072, 1, 'Delayed deposit and missing/lost money', '2016-09-15', 'PAI', '1st Offense', 'Minor', 'Reprimand', NULL, 'undefined days', NULL),
	(272, 1032, 1, 'Suspension of driving privileges', '2016-05-10', 'JRL', '1st Offense', 'Grave', 'Suspension', NULL, 'undefined days', NULL),
	(302, 22, 1, 'Duties and Responsibilities', '2016-11-21', 'JPD', NULL, NULL, NULL, NULL, '-', NULL),
	(292, 1202, 1, 'Work Schedule', '2015-08-26', 'JRL', '1st Offense', 'Minor', NULL, NULL, '-', NULL),
	(312, 32, 1, 'Using Cell phone', '2014-04-21', 'Alex S. Tiaoqui', '1st Offense', 'Minor', NULL, NULL, '-', NULL),
	(322, 772, 1, 'Reassignment', '2017-05-17', 'JPD', NULL, NULL, NULL, NULL, '-', NULL),
	(332, 1032, 2, 'Additional Duties and Responsibilities', '2017-05-15', 'DJS', NULL, NULL, NULL, NULL, '-', NULL),
	(342, 282, NULL, 'Notice To Explain', '2015-03-04', 'Arch.Neil Braw', '1st Offense', 'Minor', 'Reprimand', NULL, '-', NULL);
/*!40000 ALTER TABLE `violation` ENABLE KEYS */;

-- Dumping structure for table heroku_760d4109a89e3f8.works
DROP TABLE IF EXISTS `works`;
CREATE TABLE IF NOT EXISTS `works` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `position` text COLLATE utf8_unicode_ci,
  `company` text COLLATE utf8_unicode_ci,
  `durFrom` date DEFAULT NULL,
  `durTo` date DEFAULT NULL,
  `empStatus` text COLLATE utf8_unicode_ci,
  `salary` text COLLATE utf8_unicode_ci,
  `reason` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `index_works_on_employee_id` (`employee_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2352 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table heroku_760d4109a89e3f8.works: ~367 rows (approximately)
/*!40000 ALTER TABLE `works` DISABLE KEYS */;
INSERT INTO `works` (`id`, `employee_id`, `position`, `company`, `durFrom`, `durTo`, `empStatus`, `salary`, `reason`) VALUES
	(1, 1, 'Bookkeeper', 'MTMAS', NULL, NULL, 'Permanent', NULL, 'Promoted in the same Company'),
	(2, 1, 'Branch Manager', 'MTMAS', NULL, NULL, 'Permanent', NULL, NULL),
	(3, 1, 'Regional Manager', 'MTMAS', NULL, NULL, 'Permanent', NULL, NULL),
	(5, 1, 'Director', 'AFC-Reg IX & X', NULL, NULL, 'Permanent', NULL, NULL),
	(6, 1, 'VP-Operations Service Support Division', 'Amaara Group of Companies', NULL, NULL, 'Permanent', NULL, NULL),
	(7, 1, 'Human Resource Head', 'Amaara Group of Companies', NULL, NULL, 'Permanent', NULL, NULL),
	(12, 2, 'HR Exec/Admin/Marketing', 'World Metal Industries Ltd.', '2012-04-12', '2016-08-12', 'Permanent', '0.00', 'Personal'),
	(22, 2, 'Secretary cum Receptionist', 'AFAC Interior Designs LLC.', '2010-03-18', '2010-10-20', 'Permanent', '', 'Personal'),
	(32, 2, 'Talent Acquisition under Recruitment', 'Aegis PeopleSupport Cebu', '2009-01-06', '2009-08-06', 'Contractual', '', 'EOC'),
	(42, 12, 'Marketing Head', 'ETU Exams and Training Unlimited', '2015-05-01', '2015-09-30', NULL, NULL, NULL),
	(52, 22, 'Staff', 'Diamond Millennium Corporation', '2016-07-07', '2016-10-20', 'Contractual', NULL, 'Personal'),
	(62, 32, 'Baker', 'Master Baker', '2007-01-28', '2007-11-11', '', NULL, NULL),
	(72, 32, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(82, 32, 'Bartender', 'Caltex Star Mart Coffee Plus', '2008-08-29', '2010-01-04', '', NULL, NULL),
	(92, 32, 'Steward', 'Grand Regal Hotel Lanang', '2010-08-30', '2012-03-18', NULL, NULL, NULL),
	(102, 52, 'Check Encashment Officer', 'Manila Teachers\' Mutual aid System', '2010-06-14', '2003-08-27', 'Permanent', NULL, 'Personal'),
	(112, 52, 'Front Desk Officer', 'Oroderm Facial Spa', '2009-06-16', '2010-04-16', 'Contractual', NULL, 'Personal'),
	(122, 62, 'Sales Clerk', 'Gaisano Mall of Davao', '2009-04-01', '2009-05-30', NULL, NULL, NULL),
	(132, 62, 'Accounting Staff Intern', 'Alag Accounting Office', '2010-04-01', '2009-06-30', 'Contractual', NULL, NULL),
	(142, 62, '', 'Cyber City Teleservice (Phils), Inc.', '2011-04-01', '2011-05-31', NULL, NULL, NULL),
	(152, 62, 'Documentation Officer', 'ND Shipping Agency & Allied Services', '2013-09-01', '2014-01-20', 'Contractual', NULL, NULL),
	(162, 72, 'Cook', 'JS Gaisano Foodstreet & BO.', '1980-01-01', '1994-01-02', 'Permanent', NULL, 'Personal Reason'),
	(172, 72, 'Cook', 'New City Commercial Center', '1994-01-02', '2000-01-02', 'Permanent', NULL, 'Personal Reason'),
	(182, 72, 'Assistant Cook', 'United Philippines Lines Inc.', '2001-02-04', '2008-02-03', 'Permanent', NULL, 'Personal Reason'),
	(192, 72, 'Cook', 'Grand Regal Hotel', '2009-02-03', '2010-02-02', 'Permanent', NULL, 'Personal Reason'),
	(202, 92, 'Field Worker', 'Sumifru Banana Plantation', '2008-03-01', '2008-06-30', 'Contractual', NULL, NULL),
	(212, 92, 'Packing Plant Worker', 'Sumifru Banana Plantation', '2008-06-01', '2009-05-30', 'Contractual', NULL, NULL),
	(222, 92, 'Parcela Clerk', 'Sumifru Banana Plantation', '2009-05-01', '2011-11-30', 'Contractual', NULL, NULL),
	(232, 92, 'Bunch Receiver', 'Sumifru Banana Plantation', '2011-11-01', '2011-10-30', 'Contractual', NULL, NULL),
	(242, 92, 'Office Helper', 'Special Program Employment for Students (SPES)', '2004-04-01', '2004-05-31', 'Contractual', NULL, NULL),
	(252, 102, 'Store Supervisor', 'Central Convenience Store', '2008-05-01', '2008-07-31', 'Contractual', NULL, NULL),
	(262, 102, 'Store Supervisor', 'Central Convenience Store', '2008-05-01', '2008-07-31', 'Contractual', NULL, NULL),
	(272, 102, 'Counterperson', 'Dunkin\' Donuts', '2008-10-01', '2009-04-30', 'Contractual', NULL, NULL),
	(282, 102, 'Sales Staff', 'Jewm Agro Industrial Corp.', '2009-09-01', '2010-02-28', 'Contractual', NULL, NULL),
	(292, 102, 'Assistant Cashier', 'Jacksridge Resort & Restaurant', '2010-09-01', '2011-07-30', 'Contractual', NULL, NULL),
	(302, 102, 'Cashier', 'SM Supermarket', '2011-09-01', '2012-02-29', 'Contractual', NULL, NULL),
	(312, 112, 'Account Associate( Billing and Sales)', 'VXI global Holdings', '2015-12-01', '2016-12-01', 'Contractual', NULL, 'Personal reason'),
	(322, 112, 'Waiter/Cum company Driver', 'Helens Kitchen (JBD Group of Companies)', '2014-01-01', '2015-01-01', 'Contractual', NULL, 'Personal Matter'),
	(332, 122, 'Cashier/Sales Consultant', 'Store Specialist Inc. Group of Rustans', '2012-09-19', '2012-02-26', 'Contractual', NULL, NULL),
	(342, 122, 'Cashier & Food Attendant', 'Karlos & Gourmet Coffee Shop', '2010-08-18', '2011-08-28', 'Contractual', NULL, NULL),
	(352, 122, 'Filling Clerk Admin Department', 'Kingdom of Jesus', '2008-05-28', '2008-05-12', 'Contractual', NULL, NULL),
	(362, 132, 'Waiter', 'Rhoanas Grills', '2010-06-03', '2010-11-03', 'Contractual', NULL, NULL),
	(372, 132, 'Washer', 'De Rose', '2010-11-20', '2011-01-20', 'Contractual', NULL, NULL),
	(392, 132, 'Waiter', 'Ebong\'s', '2011-02-10', '2011-02-10', 'Contractual', NULL, NULL),
	(402, 142, 'On-call Waiter', 'Wedding Planners Food and Services', '2007-11-01', '2007-11-30', 'Contractual', NULL, NULL),
	(412, 142, 'On-call Waiter', 'TCTS Food and Services', '2008-06-01', '2010-06-30', 'Contractual', NULL, NULL),
	(422, 142, 'Laundry Attendant', 'Marco Polo Hotel', '2010-07-01', '2011-02-28', 'Contractual', NULL, NULL),
	(432, 142, 'Room Attendant', 'Marco Polo Hotel', '2011-02-01', '2011-11-30', 'Contractual', NULL, NULL),
	(442, 152, 'Head Waiter', 'Villa Margarita Hotel', '2008-09-29', '2013-04-25', 'Permanent', NULL, 'Personal'),
	(452, 152, 'Supervisor', 'Club Z', '2006-01-01', '2008-01-01', 'Permanent', NULL, 'Personal'),
	(462, 152, 'Waiter', 'Club Med', '2003-01-01', '2005-01-02', 'Permanent', NULL, 'Personal'),
	(472, 152, 'Cook', 'Heritage Hotel', '2000-11-01', '2001-05-01', 'Contractual', NULL, 'End Contract'),
	(482, 152, 'Waiter', 'Villa Margarita Hotel', '1996-01-01', '2000-01-02', 'Permanent', NULL, 'Personal'),
	(492, 152, 'Asst. Bartender', 'Manila Polo Club', '1994-11-01', '1995-05-01', 'Contractual', NULL, 'Personal'),
	(502, 152, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(512, 152, 'Head Waiter', 'Villa Victoria Resort', '1991-01-01', '1994-01-02', 'Permanent', NULL, 'Personal'),
	(522, 162, 'Junior Cook', 'Al-Swerte the Restaurant', '2006-07-10', '2007-08-05', 'Permanent', NULL, 'Personal'),
	(532, 162, 'Food Preparation Staff', 'Classic Savory', '2011-01-25', '2012-10-08', 'Contractual', NULL, 'Personal'),
	(542, 162, 'Cook', 'Classic Savory', '2012-10-09', '2013-09-15', 'Contractual', NULL, 'Personnal'),
	(552, 192, 'Barista/Cashier/Server', 'New Orleans Cafe', '2011-09-08', '2015-10-31', 'Permanent', NULL, NULL),
	(562, 202, 'Assistant Cook', 'Buffet Palace Matina', '2010-04-19', '2013-08-15', 'Permanent', NULL, NULL),
	(572, 202, 'Assistant Cook', 'Royal House Suite', '2013-10-10', '2014-01-22', 'Permanent', NULL, NULL),
	(582, 202, 'Cook', 'Cafe Laguna Commissionary Abreeza Ayala', '2014-01-23', '2014-03-15', 'Contractual', NULL, NULL),
	(592, 202, 'Assistant Cook', 'New Orleans Cafe', '2014-03-16', '2014-03-30', 'Contractual', NULL, NULL),
	(602, 292, 'Project Technical Assistant Habitat Building & Resource Center (HBRC)', 'Habitat for Humanity Phils. Foundation Inc.', '2007-01-28', '2009-11-23', 'Permanent', NULL, NULL),
	(612, 292, 'Project Site Supervisor and Technical Assistant', 'E.M. Banares Construction Inc (Cat "A")', '2009-12-01', '2012-11-30', 'Permanent', NULL, NULL),
	(622, 292, 'Project Site Supervisor & Outsource Technical Staff for HFHP Project CDO', '22 & A Construction', '2012-12-01', '2015-02-28', 'Permanent', NULL, NULL),
	(632, 292, 'In-charge in Construction of Houses in Project Sites', '22 & A Construction', '2015-03-01', '2015-11-30', 'Contractual', NULL, NULL),
	(642, 322, 'Draftsman Site Supervisor', 'RT Design', '2011-07-01', '2013-10-31', 'Permanent', NULL, NULL),
	(652, 322, 'Draftsman', 'Construction Details', '2012-10-01', '2013-05-31', 'Contractual', NULL, NULL),
	(662, 312, 'Philosophy Instructor', 'Xavier University - Ateneo de Cagayan', '2006-01-01', '2011-01-01', 'Permanent', NULL, 'Personal'),
	(672, 312, 'Territory Manager', 'Xeno Pharmaceuticals Philippines Inc.', '2007-01-03', '2011-01-05', 'Permanent', NULL, 'Personal'),
	(682, 312, 'Acting Sales Supervisor', 'Dexa Medica - Philippines Visayas and Northern Mindanao', '2012-01-05', '2013-01-06', 'Permanent', NULL, 'Personal'),
	(712, 312, 'District Sales Manager', 'Alkem Laboratories Corp. Philippines Mindanao (&Visayas)', '2013-01-07', '2016-03-06', 'Permanent', NULL, 'Personal'),
	(762, 372, 'IT Support', 'DAR', '2015-01-01', '2016-01-01', 'Job Order', '10,000', 'End of Contract'),
	(772, 372, 'Programmer', 'Provincial Capitol', '2016-10-02', '2016-11-22', 'Job Order', '7,000', NULL),
	(782, 382, 'Cashier/Clerk Collector', 'Oro Habitat for Humanity, Inc. (OHH)', '0000-00-00', '0000-00-00', NULL, NULL, NULL),
	(792, 382, 'Cashier', 'Pueblo de Oro Development Corp.', NULL, NULL, NULL, NULL, NULL),
	(802, 382, 'Registration Assistant/Clerk', 'Filinvest Land Inc.', NULL, NULL, NULL, NULL, NULL),
	(812, 402, 'Weigher', 'Evergreen -Lapanday', NULL, NULL, NULL, NULL, NULL),
	(822, 402, 'Auto Painter', 'G.T.S', NULL, NULL, NULL, NULL, NULL),
	(832, 412, 'Liaison Staff/ Marketing ( Loans Dept.)', 'WealthDevelopment Bank Corp.', '2012-01-01', '2013-01-01', 'Permanent', NULL, 'Personal'),
	(842, 412, 'System Analyst/ Developer', 'Wealth Development Bank Corp.', '2012-01-01', '2013-01-01', 'Permanent', NULL, 'Personal'),
	(852, 412, 'Confirmation/ Inquiry Officer', 'ABest Express Inc.', '2011-01-01', '2012-01-01', 'Permanent', NULL, 'Personal'),
	(862, 412, 'Finance Assistant', 'ACTIVASIA Inc.', '2010-01-01', '2011-01-01', 'Permanent', NULL, 'Personal'),
	(872, 412, 'Administrative Assistant', 'ACTIVASIA inc.', '2010-01-01', '2011-01-01', 'Permanent', NULL, 'Personal'),
	(882, 412, 'Product Associate', 'INNODATA KNOWLEDGE SERVICES Inc.', '2008-01-01', '2010-01-01', 'Permanent', NULL, 'Personal'),
	(892, 412, 'Computer Encoder', 'Sta. Maria Elementary School', '2007-01-01', '2007-01-01', 'Permanent', NULL, 'Personal'),
	(902, 422, 'Accounting Staff/Payroll Clerk/Billing Clerk/CCTV', 'Genghis Khan Security Services Inc.', '0000-00-00', '0000-00-00', NULL, NULL, NULL),
	(912, 422, 'Office Engineer/Project Engineer', 'Venry Construction', NULL, NULL, NULL, NULL, NULL),
	(922, 422, 'Office Engineer', 'M. Montescarlos Enterprises, Inc.', NULL, NULL, NULL, NULL, NULL),
	(932, 452, 'Accounting Clerk', 'Fastcargo Logistics Corp-Butuan', '0000-00-00', '0000-00-00', 'Contractual', '0.00', NULL),
	(942, 452, 'Billing In-charge', 'Fastcargo Logistics Corp-Butuan', NULL, NULL, 'Permanent', NULL, NULL),
	(952, 452, 'Payroll In-charge', 'Fastcargo Logistics Corp-Butuan', '0000-00-00', '0000-00-00', 'Permanent', NULL, NULL),
	(962, 452, 'Bookkeeper', 'Fastcargo Logistics Corp-Butuan', NULL, NULL, 'Permanent', NULL, NULL),
	(972, 452, 'Branch Accountant', 'Fastcargo Logistics Corp-Butuan', NULL, NULL, 'Permanent', NULL, NULL),
	(982, 452, 'Officer-In-Charge', 'Fastcargo Logistics Corp-Butuan', NULL, NULL, 'Permanent', NULL, NULL),
	(992, 452, 'Branch Manager', 'Fastcargo Logistics Corp.-Butuan', NULL, NULL, 'Permanent', NULL, NULL),
	(1002, 472, 'Senior Graphic Designer/DGI/Mutoh Operator', 'Magnet Advertising', NULL, NULL, NULL, NULL, NULL),
	(1012, 492, 'Graphic Designer', 'Adrexus Outsorcing', NULL, NULL, 'Contractual', '10,000', 'Conflict with Heads'),
	(1022, 492, 'Graphic Designer', 'Louie Photography', NULL, NULL, 'Contractual', '6,500', 'Sickness'),
	(1032, 542, NULL, 'SmartShoppe Computer Center', NULL, '1999-01-01', NULL, NULL, NULL),
	(1042, 562, 'IT Staff/Tagger/Encoder', 'Manila Teachers\' Savings and Loan Association Inc.', '0000-00-00', '0000-00-00', 'Contractual', NULL, NULL),
	(1052, 572, 'Ticketing Officer and Flight Ground Crew', 'Asian Spirit Airlines', NULL, NULL, 'Permanent', NULL, NULL),
	(1062, 572, 'IT systems Administrator', 'Philippines Institute for Authentically Humanist Society', NULL, NULL, 'Permanent', NULL, NULL),
	(1072, 572, 'IT Systems Administrator', 'National Security Council', NULL, NULL, NULL, NULL, NULL),
	(1082, 572, 'IT Consultant', 'Ideal Minds Corporation', NULL, NULL, NULL, NULL, NULL),
	(1092, 572, 'IT Consultant', 'Cubao Trading Corporation', NULL, NULL, NULL, NULL, NULL),
	(1102, 572, 'IT Consultant', 'Moldflo Corporation', NULL, NULL, NULL, NULL, NULL),
	(1112, 572, 'IT Consultant', 'Sol Oil Corporation', NULL, NULL, NULL, NULL, NULL),
	(1122, 572, 'IT Consultant', 'JCV Trade and Exhibits Co.', NULL, NULL, NULL, NULL, NULL),
	(1132, 582, 'Assistant Project Engineer', 'JCL Construction Inc.', NULL, NULL, 'Permanent', NULL, NULL),
	(1142, 592, 'Operations Head/Secretary/Accounting', 'Southgate Insurance Agency Corp.', NULL, NULL, 'Permanent', NULL, NULL),
	(1152, 592, 'Secretary', 'Metro Davao Taxi Operators Association, Inc. (MEDATOA Inc.)', NULL, NULL, 'Permanent', NULL, NULL),
	(1162, 592, 'Work Scholar/Secretary', 'Prefect of Discipline -College Holy Cross of Davao City', NULL, NULL, 'Permanent', NULL, NULL),
	(1172, 622, 'Admin Secretary', 'Leonel Waste Management Corp.', '0000-00-00', '0000-00-00', 'Permanent', NULL, 'Resigned'),
	(1182, 622, 'Logistics Head', 'District of Cong. Edgar San Luis', NULL, NULL, 'Contractual', NULL, 'End of Term'),
	(1192, 622, 'Account Executive', 'Spark Promotions & Marketing', NULL, NULL, 'Permanent', NULL, 'Company Closed'),
	(1202, 622, 'Events Supervisor', 'Publicis-Spark Inc.', NULL, NULL, 'Permanent', NULL, 'Change Management'),
	(1212, 652, 'Assistant Manager/ Manager', 'Egyp Mobile Communication Corporation', NULL, NULL, NULL, NULL, NULL),
	(1222, 652, 'Basic Accounting/ Bookkeeping/Accounts Executive', 'Egyp Mobile Communication Corporation', NULL, NULL, NULL, NULL, NULL),
	(1232, 652, 'Assistant Manager/ Manager', 'Rural Bank of Montevista', NULL, NULL, NULL, NULL, NULL),
	(1242, 662, 'Encoder/Printing', 'Bureau of Internal Revenue', NULL, NULL, NULL, NULL, NULL),
	(1252, 662, 'Office Clerk/ Cash Teller/ Accounting Clerk', 'RD Pawnshop Inc.', NULL, NULL, NULL, NULL, NULL),
	(1262, 672, 'Accounting Clerk', 'Balmar Farms, Inc.', NULL, NULL, NULL, NULL, NULL),
	(1272, 682, 'Vice President for Sales and Marketing', 'Sunpharma Inc./ Sunbio Inc.', NULL, NULL, NULL, NULL, NULL),
	(1282, 682, 'Medical Sales Representative', 'Croma Medic Inc./ Bausch & Lomb Pharmaceuticals', NULL, NULL, NULL, NULL, NULL),
	(1292, 2, 'Center Associate', 'Kumon Cugman Center', NULL, NULL, NULL, NULL, 'Greener Pasture'),
	(1302, 692, 'Mechanic', '25 Honda Services Center Moneba Shop', NULL, NULL, NULL, NULL, NULL),
	(1312, 702, 'Bookkeeper', 'Bulano Accounting and Auditing Firm', NULL, NULL, 'Permanent', NULL, NULL),
	(1322, 702, 'Payroll Clerk', 'Glenn Garcia Trucking & Truck Booking Services', NULL, NULL, 'Job Order', NULL, NULL),
	(1332, 702, 'Accounting Assistant', 'Bo. Pampanga Lanang', NULL, NULL, NULL, NULL, NULL),
	(1342, 712, 'Driver/Personal Maintenance', 'Casa Munda', NULL, NULL, NULL, NULL, NULL),
	(1352, 732, 'Billing Officeer', 'ND Shipping Agency and Allied Services, Inc.', NULL, NULL, NULL, NULL, NULL),
	(1362, 732, 'Accounting Assistant', 'Buhda Seafoods Restaurant', NULL, NULL, NULL, NULL, NULL),
	(1372, 732, 'Accounting Clerk', 'Digital Interface', NULL, NULL, NULL, NULL, NULL),
	(1382, 742, 'Sales Representative', 'San Lucas Labline Co.', NULL, NULL, NULL, NULL, NULL),
	(1392, 742, 'Sales Executive', 'PhotoDynamic Corp.', NULL, NULL, NULL, NULL, NULL),
	(1402, 742, 'Sales Executive', 'Weld Industrial Sales Depot', NULL, NULL, NULL, NULL, NULL),
	(1412, 742, 'Sales Engineer', 'Priometal Mindanao Corp.', NULL, NULL, NULL, NULL, NULL),
	(1422, 742, 'Sales Engineer', 'North Mindanao Steel Corporation', NULL, NULL, NULL, NULL, NULL),
	(1432, 742, 'Booking Salesman', 'Philips Lighting Inc.', NULL, NULL, NULL, NULL, NULL),
	(1442, 742, 'Booking Salesman', 'American Standard', NULL, NULL, NULL, NULL, NULL),
	(1452, 742, 'Sales Engineer', 'Filholland Corporation', NULL, NULL, NULL, NULL, NULL),
	(1462, 742, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(1472, 782, 'C.I./Collector', 'ZMZ- L Lending', NULL, NULL, NULL, NULL, NULL),
	(1482, 792, 'In-House Courier', 'Air Freight 2100, Inc.', '1970-01-01', '1970-01-01', NULL, NULL, NULL),
	(1492, 792, 'Accounting Clerk', 'Davao Coca-Cola Plant', NULL, NULL, NULL, NULL, NULL),
	(1502, 792, 'Production Staff', 'Eagle Multi- Purpose Cooperative', NULL, NULL, NULL, NULL, NULL),
	(1512, 792, 'Station Agent', 'Air 21 Mindanao Operation', NULL, NULL, NULL, NULL, NULL),
	(1522, 802, 'Branch Mechanic', 'YAMAHA Motor Joy', NULL, NULL, NULL, NULL, NULL),
	(1532, 802, 'Motor Mechanic', 'BOYET Marketing', NULL, NULL, NULL, NULL, NULL),
	(1542, 832, 'Operator/Driver', 'Footrpints Construction', NULL, NULL, 'Contractual', NULL, NULL),
	(1552, 832, 'Driver', 'Aganan Surveying', NULL, NULL, 'Contractual', NULL, NULL),
	(1562, 832, 'Driver', 'Aqua Sweet', NULL, NULL, 'Contractual', NULL, NULL),
	(1572, 852, 'Site Engineer', 'JCL Construction Inc.', NULL, NULL, 'Contractual', NULL, 'Resigned due to miscommunication'),
	(1582, 852, 'Project Inspector', 'National Irrigation Administration -BIMO', NULL, NULL, 'Contractual', NULL, 'Project-based'),
	(1592, 852, 'Senior Project Engineer', 'M. Montescarlos Enterprises Incorporated', NULL, NULL, 'Permanent', NULL, 'Resigned due to Incentives Issues'),
	(1602, 872, 'Account Service Assistant', 'Manila Teacher\'s Mutual Aid System, Inc.', NULL, NULL, 'Permanent', NULL, NULL),
	(1612, 872, 'Treasury Assistant Reliever', 'Manila Teacher\'s Mutual Aid System, Inc.', NULL, NULL, 'Permanent', NULL, NULL),
	(1622, 872, 'Account Service Personnel', 'Manila Teachers\' Mutual Aid System, Inc.', NULL, NULL, 'Permanent', NULL, NULL),
	(1632, 882, 'Student Assistant', 'Holy Cross of Davao College', NULL, NULL, NULL, NULL, NULL),
	(1642, 892, 'Parts Man', 'Granstar Motors and Industrial Corporation, Inc.', NULL, NULL, 'Contractual', NULL, NULL),
	(1652, 912, 'Cashier', 'Bakeshop', NULL, NULL, NULL, NULL, NULL),
	(1662, 922, 'Cashier', 'Manila Teachers\'', NULL, NULL, NULL, NULL, NULL),
	(1682, 932, 'Driving Instructor', 'Honda Safety Driving Center', NULL, NULL, NULL, NULL, NULL),
	(1692, 932, 'Motorcycle Mechanic', 'Moneba- Bucasi Repair Shop/Family Business', NULL, NULL, NULL, NULL, NULL),
	(1702, 932, 'Motorcycle Mechanic', 'Jianshe Philippines- Motorcycle Industry Corp.', NULL, NULL, NULL, NULL, NULL),
	(1712, 952, 'A/C Technician/Troubleshooter', 'Heta Cooler Industrial Services', NULL, NULL, 'Permanent', NULL, NULL),
	(1722, 952, 'OJT', 'EMCOR Inc.', NULL, NULL, '', NULL, NULL),
	(1732, 962, 'Auto Mechanic III', 'MMDA', NULL, NULL, NULL, NULL, NULL),
	(1742, 962, 'Teller/Vault Costudian', 'Henry Lhuilllier', NULL, NULL, NULL, NULL, NULL),
	(1752, 972, 'Assistant Mechanic', 'Moneb Team', NULL, NULL, NULL, NULL, NULL),
	(1762, 972, 'Distributor Sales Personnel', 'SMART DC Invest', NULL, NULL, NULL, NULL, NULL),
	(1772, 972, 'Distributor Sales Personnel', 'SMART Y Telecom', NULL, NULL, NULL, NULL, NULL),
	(1782, 972, 'Partsman/Assistant Mechanic', 'JIANSHE Motor King Inc.', NULL, NULL, NULL, NULL, NULL),
	(1792, 992, NULL, 'Davao Honda Company Inc.', NULL, NULL, NULL, NULL, NULL),
	(1802, 992, NULL, 'Honda Mega Motors Corporation Davao Branch', NULL, NULL, NULL, NULL, NULL),
	(1812, 992, NULL, 'Honda Mega Motors Corporation Digos Branch', NULL, NULL, NULL, NULL, NULL),
	(1822, 992, NULL, 'Honda Mega Motors Corporation Kidapawan Branch', NULL, NULL, NULL, NULL, NULL),
	(1832, 1002, 'Utility', 'Power Clean Services', NULL, NULL, NULL, NULL, NULL),
	(1842, 1002, 'Small Engine Mechanic', 'Magno Motor Parts', NULL, NULL, NULL, NULL, NULL),
	(1852, 1002, 'Small Engine Mechanic', 'George Shop Dacoville', NULL, NULL, NULL, NULL, NULL),
	(1862, 1012, 'PUJ DRIVER', 'Talomo Route', NULL, NULL, NULL, NULL, NULL),
	(1872, 1012, 'TAXI DRIVER', 'Green Living Company', NULL, NULL, NULL, NULL, NULL),
	(1882, 1012, 'Small Engine Mechanic', 'Dod2Land Motor Parts', NULL, NULL, NULL, NULL, NULL),
	(1892, 1022, 'Service Mechanic', 'Honda Power Cycle, Inc.', NULL, NULL, NULL, NULL, NULL),
	(1902, 1032, 'Senior Auditor', 'L.C Bonguyan & Co. CPA\'s', NULL, NULL, NULL, NULL, NULL),
	(1912, 1042, 'Computer Data Encoder', 'Ceejay\'s Enterprises', NULL, NULL, NULL, NULL, NULL),
	(1922, 1042, 'Sales/MRP Parts & Inventory/ Cashier', 'Norminring Motorbikes Zamboanga', NULL, NULL, NULL, NULL, NULL),
	(1932, 1062, 'Promo Coordinator', 'Ginebra San Miguel', NULL, NULL, NULL, NULL, NULL),
	(1942, 1072, 'Movement Artist/Production Designer/Production Manager', 'Resident Artist', NULL, NULL, NULL, NULL, NULL),
	(1952, 1072, 'Supervisor', 'Walkabout Bar', NULL, NULL, NULL, NULL, NULL),
	(1962, 1072, 'Supervisor', 'RBA Pest Control', NULL, NULL, NULL, NULL, NULL),
	(1972, 1072, 'Performer/Production Designer/Production Manager', 'Resident Artist', NULL, NULL, NULL, NULL, NULL),
	(1982, 1072, 'Call Center Agent', 'Eperformax Call Center and BPO', NULL, NULL, NULL, NULL, NULL),
	(1992, 1072, 'Production Designer/Technical Director', 'Leftfield Production', NULL, NULL, NULL, NULL, NULL),
	(2002, 1082, 'Spare Prts Custodian', 'Yamaha', NULL, NULL, NULL, NULL, NULL),
	(2012, 1082, 'Dealer', 'Jied Motohaus, Inc.', NULL, NULL, NULL, NULL, NULL),
	(2022, 1082, 'Dealer', 'Yamaha DHCI Cyclehaus, Inc.', NULL, NULL, NULL, NULL, NULL),
	(2032, 1082, 'Spare Parts Custodian and Parts Trainor', NULL, NULL, NULL, NULL, NULL, NULL),
	(2042, 1132, 'Agricultural Technologists', 'LGU- Tarragona Davao Oriental', NULL, NULL, NULL, NULL, NULL),
	(2052, 1132, 'Communication Organizer', 'Philippine Eagle Foundation', NULL, NULL, NULL, NULL, NULL),
	(2062, 1202, 'Ticketing Officer and Flight Ground Crew', 'Asian Spirit Airlines', NULL, NULL, NULL, NULL, NULL),
	(2072, 1202, 'IT Systems Administrator', 'Philippine Institute for Authentically Humanist Society', NULL, NULL, NULL, NULL, NULL),
	(2082, 1202, 'IT Systems Administrator', 'National Security Council', NULL, NULL, '', NULL, NULL),
	(2092, 1202, 'IT Consultant', 'Ideal Minds Corporation', NULL, NULL, NULL, NULL, NULL),
	(2102, 1202, 'IT Consultant', 'Cubao Trading Corporation', NULL, NULL, NULL, NULL, NULL),
	(2112, 1202, 'IT Consultant', 'Moldflo Corporation', NULL, NULL, NULL, NULL, NULL),
	(2122, 1202, 'IT Consultant', 'Sol Oil Corporation', NULL, NULL, NULL, NULL, NULL),
	(2132, 1202, 'IT Consultant', 'JCV Trade and Exhibits Co.', NULL, NULL, NULL, NULL, NULL),
	(2142, 1202, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(2152, 1212, 'Graphic Designer', 'Adrexus Outsourcing', NULL, NULL, NULL, NULL, NULL),
	(2162, 1212, 'Graphic Designer', 'Louie Photography', NULL, NULL, NULL, NULL, NULL),
	(2172, 1222, 'Waiter', 'Frosting Bar & Restaurant', '0000-00-00', '0000-00-00', 'Permanent', NULL, NULL),
	(2182, 1222, 'Promoter', 'Dickies/Diadora', NULL, NULL, 'Contractual', NULL, NULL),
	(2192, 1232, 'Secretary', 'John Ray Developer & Supplies', '1970-01-01', '1970-01-01', NULL, NULL, NULL),
	(2202, 1232, 'Sorter', 'Davao Packaging Corporation', '1970-01-01', '1970-01-01', NULL, NULL, NULL),
	(2212, 1232, 'Secretary', 'Multi-Gain Communications & elect. Service Center', '1970-01-01', '1970-01-01', NULL, NULL, NULL),
	(2222, 1242, 'ITE Department Head', 'UM Digos College', NULL, NULL, 'Permanent', NULL, NULL),
	(2232, 1242, 'Salesman', 'Davao Reach Global distributor Corp.', NULL, NULL, 'Contractual', NULL, NULL),
	(2242, 1242, 'PMC', 'Davao Reach Global Distributor Corp.', NULL, NULL, 'Contractual', NULL, NULL),
	(2252, 1242, 'Programmer and Computer Technician', 'Manila Teachers\' Mutual aid System, Inc.', NULL, NULL, 'Contractual', NULL, NULL),
	(2262, 1252, 'Program Head\'s Clerk/Assistant', 'UM Digos College', NULL, NULL, NULL, NULL, NULL),
	(2302, 1262, 'Cashier', 'Frostway Ice Cream & Juice Bar', NULL, NULL, NULL, NULL, NULL),
	(2312, 1262, 'Cashier', 'Frostway Restobar', NULL, NULL, NULL, NULL, NULL),
	(2322, 1262, 'Cashier', 'Only In Cagayan Bar And Grill', NULL, NULL, NULL, NULL, NULL),
	(2332, 1262, 'Administrative Assistant', 'Mindanao Precast Structure Inc.', NULL, NULL, NULL, NULL, NULL),
	(2342, 1252, 'Intern-Pre auditing office', 'City accounting office-Digos City', NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `works` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
