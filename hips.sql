-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.17-log - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for hris
DROP DATABASE IF EXISTS `hris`;
CREATE DATABASE IF NOT EXISTS `hris` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `hris`;

-- Dumping structure for table hris.allowances
DROP TABLE IF EXISTS `allowances`;
CREATE TABLE IF NOT EXISTS `allowances` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table hris.allowances: 3 rows
/*!40000 ALTER TABLE `allowances` DISABLE KEYS */;
INSERT INTO `allowances` (`id`, `name`) VALUES
	(1, 'Housing'),
	(2, 'Rice'),
	(3, 'Transportation');
/*!40000 ALTER TABLE `allowances` ENABLE KEYS */;

-- Dumping structure for table hris.annualmedical
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

-- Dumping data for table hris.annualmedical: 0 rows
/*!40000 ALTER TABLE `annualmedical` DISABLE KEYS */;
/*!40000 ALTER TABLE `annualmedical` ENABLE KEYS */;

-- Dumping structure for table hris.attendance
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

-- Dumping data for table hris.attendance: 0 rows
/*!40000 ALTER TABLE `attendance` DISABLE KEYS */;
/*!40000 ALTER TABLE `attendance` ENABLE KEYS */;

-- Dumping structure for table hris.attendedtrainees
DROP TABLE IF EXISTS `attendedtrainees`;
CREATE TABLE IF NOT EXISTS `attendedtrainees` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `employee_id` int(10) DEFAULT NULL,
  `traindev_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table hris.attendedtrainees: ~0 rows (approximately)
/*!40000 ALTER TABLE `attendedtrainees` DISABLE KEYS */;
/*!40000 ALTER TABLE `attendedtrainees` ENABLE KEYS */;

-- Dumping structure for table hris.awards
DROP TABLE IF EXISTS `awards`;
CREATE TABLE IF NOT EXISTS `awards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `institution` text COLLATE utf8_unicode_ci,
  `dateGiven` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_awards_on_employee_id` (`employee_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table hris.awards: ~0 rows (approximately)
/*!40000 ALTER TABLE `awards` DISABLE KEYS */;
/*!40000 ALTER TABLE `awards` ENABLE KEYS */;

-- Dumping structure for table hris.bank
DROP TABLE IF EXISTS `bank`;
CREATE TABLE IF NOT EXISTS `bank` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `accountNo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table hris.bank: 0 rows
/*!40000 ALTER TABLE `bank` DISABLE KEYS */;
/*!40000 ALTER TABLE `bank` ENABLE KEYS */;

-- Dumping structure for table hris.benefits
DROP TABLE IF EXISTS `benefits`;
CREATE TABLE IF NOT EXISTS `benefits` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table hris.benefits: 4 rows
/*!40000 ALTER TABLE `benefits` DISABLE KEYS */;
INSERT INTO `benefits` (`id`, `name`) VALUES
	(1, 'Bonus'),
	(2, '13th Month Pay'),
	(3, 'sample'),
	(4, 'Hi');
/*!40000 ALTER TABLE `benefits` ENABLE KEYS */;

-- Dumping structure for table hris.biometric
DROP TABLE IF EXISTS `biometric`;
CREATE TABLE IF NOT EXISTS `biometric` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `employee_id` int(10) NOT NULL DEFAULT '0',
  `branch_id` int(10) NOT NULL DEFAULT '0',
  `biometric_id` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table hris.biometric: 3 rows
/*!40000 ALTER TABLE `biometric` DISABLE KEYS */;
INSERT INTO `biometric` (`id`, `employee_id`, `branch_id`, `biometric_id`) VALUES
	(1, 1, 1, '10003'),
	(2, 226, 1, '10004'),
	(3, 227, 1, '10005');
/*!40000 ALTER TABLE `biometric` ENABLE KEYS */;

-- Dumping structure for table hris.branches
DROP TABLE IF EXISTS `branches`;
CREATE TABLE IF NOT EXISTS `branches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table hris.branches: ~0 rows (approximately)
/*!40000 ALTER TABLE `branches` DISABLE KEYS */;
INSERT INTO `branches` (`id`, `company_id`, `name`) VALUES
	(1, 62, 'as');
/*!40000 ALTER TABLE `branches` ENABLE KEYS */;

-- Dumping structure for table hris.business
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
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table hris.business: 1 rows
/*!40000 ALTER TABLE `business` DISABLE KEYS */;
INSERT INTO `business` (`id`, `employee_id`, `company_id`, `department_id`, `branch_id`, `destination`, `durFrom`, `durTo`, `purpose`, `status`) VALUES
	(2, NULL, 1, 2, 5, 'Manila', '0000-00-00', '0000-00-00', '', 'For Manager Approval');
/*!40000 ALTER TABLE `business` ENABLE KEYS */;

-- Dumping structure for table hris.companies
DROP TABLE IF EXISTS `companies`;
CREATE TABLE IF NOT EXISTS `companies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_unicode_ci,
  `code` text COLLATE utf8_unicode_ci,
  `contactno` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` text COLLATE utf8_unicode_ci,
  `website` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table hris.companies: ~3 rows (approximately)
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
INSERT INTO `companies` (`id`, `name`, `code`, `contactno`, `email`, `website`) VALUES
	(1, 'Solutions Management Systems Inc.', 'SMSi', '0', 'smsi@gmail.com', 'www.smsi.com.ph'),
	(3, 'Norminring Development Corporation', 'NDC', '0', '', 'www.norminring.com'),
	(62, 'Amaara Financial Corporation', 'AFC', NULL, NULL, 'www.afc.com.ph');
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;

-- Dumping structure for table hris.department
DROP TABLE IF EXISTS `department`;
CREATE TABLE IF NOT EXISTS `department` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `company_id` int(10) NOT NULL DEFAULT '0',
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table hris.department: 3 rows
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` (`id`, `company_id`, `name`) VALUES
	(2, 0, 'sqe'),
	(4, 62, 'a'),
	(5, 96, 'as');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;

-- Dumping structure for table hris.educations
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table hris.educations: ~0 rows (approximately)
/*!40000 ALTER TABLE `educations` DISABLE KEYS */;
/*!40000 ALTER TABLE `educations` ENABLE KEYS */;

-- Dumping structure for table hris.empchildren
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table hris.empchildren: ~0 rows (approximately)
/*!40000 ALTER TABLE `empchildren` DISABLE KEYS */;
/*!40000 ALTER TABLE `empchildren` ENABLE KEYS */;

-- Dumping structure for table hris.employees
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
  `bank` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `placeBirth` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateBirth` date DEFAULT NULL,
  `civilStatus` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `taxstatus_id` int(11) DEFAULT NULL,
  `gender` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `citizenship` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `religion` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
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
  `resEmail` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `perAdd` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `proAdd` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fatherName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `faAdd` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `faOccupation` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `faCompany` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `faNo` int(11) DEFAULT NULL,
  `motherName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `moAdd` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `moOccupation` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `moCompany` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `moNo` int(11) DEFAULT NULL,
  `spouseName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `spAdd` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `spOccupation` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `spCompany` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `spNo` int(11) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=229 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table hris.employees: ~2 rows (approximately)
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` (`id`, `employee_id`, `biometric_id`, `shiftgroup_id`, `image`, `fName`, `mi`, `lName`, `bank`, `placeBirth`, `dateBirth`, `civilStatus`, `taxstatus_id`, `gender`, `citizenship`, `religion`, `language`, `height`, `weight`, `bloodType`, `hair`, `complexion`, `resAdd`, `resTel1`, `resTel2`, `resMobile1`, `resMobile2`, `resEmail`, `perAdd`, `proAdd`, `fatherName`, `faAdd`, `faOccupation`, `faCompany`, `faNo`, `motherName`, `moAdd`, `moOccupation`, `moCompany`, `moNo`, `spouseName`, `spAdd`, `spOccupation`, `spCompany`, `spNo`, `dateHired`, `position_id`, `company_id`, `department_id`, `branch_id`, `sssNo`, `phicNo`, `hdmfNo`, `taxNo`, `emp_status`) VALUES
	(1, 'SMSI-CGC-0001', '10003', 1, 'public\\images\\74b8db90f0059b73967ea524b916e6a0', 'Jennifer', 'Palo', 'Dantes', '5r42', 'Cagayan de Oro', '1995-01-10', 'Married', 7, 'Male', 'Filipino', 'SDA', 'Bisaya', '4\'9"', '46', 'O +', 'Brown', 'Fair', 'css', 8584352, 21, '09054050785', '0444', 'cs8@gmail.com', 'a', 'a', 'Humber Almuete', 'NHA Kauswagan', 'Seaman', 'Neogect', NULL, 'Rosario Almuete', 'NHA Kauswagan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-02-22', 3, 62, 4, 1, '1542012157', '151654841', '218410514', '154264845000', 'Regular'),
	(228, 'SMSi-0001', 'undefined', 2, 'public\\images\\ac0a9700b69884c71a6d1aeb9d15edcc', 'Raul John', 'Apuli', 'Altavano', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-03-01', 0, 1, NULL, 0, NULL, NULL, NULL, NULL, 'Resigned');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;

-- Dumping structure for table hris.incident
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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table hris.incident: 1 rows
/*!40000 ALTER TABLE `incident` DISABLE KEYS */;
INSERT INTO `incident` (`id`, `occurence`, `natureOfAccident`, `injuryType`, `coreActivity`, `location`, `details`, `dateOfOccurence`, `damagedProperty`, `reference`) VALUES
	(2, 'Incident', 'ads', '', '', '', '', '0000-00-00', '', NULL);
/*!40000 ALTER TABLE `incident` ENABLE KEYS */;

-- Dumping structure for table hris.incidentinvolve
DROP TABLE IF EXISTS `incidentinvolve`;
CREATE TABLE IF NOT EXISTS `incidentinvolve` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `incident_id` int(10) DEFAULT NULL,
  `employee_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table hris.incidentinvolve: 0 rows
/*!40000 ALTER TABLE `incidentinvolve` DISABLE KEYS */;
/*!40000 ALTER TABLE `incidentinvolve` ENABLE KEYS */;

-- Dumping structure for table hris.jobs
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
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table hris.jobs: 4 rows
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT INTO `jobs` (`id`, `position_id`, `company_id`, `department_id`, `branch_id`, `empStatus`, `dutiesResponsibility`, `qualification`, `dateFiled`, `status`) VALUES
	(2, 1, 4, 0, 4, 'Full Time', 'asq', '2-year course', '2017-06-20', 'Not Available'),
	(3, 2, 2, 0, 7, 'Full Time', 'kui', '4-year course', '2017-03-16', 'Available'),
	(13, 1, 1, 0, 1, 'Full Time', NULL, '4-year course', '2016-02-02', 'Not Available'),
	(17, 3, 62, 4, 1, NULL, NULL, NULL, '2017-04-18', 'Available');
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;

-- Dumping structure for table hris.jobskill
DROP TABLE IF EXISTS `jobskill`;
CREATE TABLE IF NOT EXISTS `jobskill` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `job_id` int(10) DEFAULT NULL,
  `positionskill_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table hris.jobskill: 1 rows
/*!40000 ALTER TABLE `jobskill` DISABLE KEYS */;
INSERT INTO `jobskill` (`id`, `job_id`, `positionskill_id`) VALUES
	(2, 2, '4');
/*!40000 ALTER TABLE `jobskill` ENABLE KEYS */;

-- Dumping structure for table hris.leaveapp
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
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table hris.leaveapp: 1 rows
/*!40000 ALTER TABLE `leaveapp` DISABLE KEYS */;
INSERT INTO `leaveapp` (`id`, `employee_id`, `durFrom`, `durTo`, `dateFiled`, `leave_id`, `days_applied`, `mode`, `reason`, `status`, `reasonToDissaprove`) VALUES
	(2, '228', '2017-03-22', '2017-03-24', '2017-03-28', 1, 3.0, 'with pay', 'ads', 'For Manager Approval', '');
/*!40000 ALTER TABLE `leaveapp` ENABLE KEYS */;

-- Dumping structure for table hris.leaves
DROP TABLE IF EXISTS `leaves`;
CREATE TABLE IF NOT EXISTS `leaves` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table hris.leaves: 6 rows
/*!40000 ALTER TABLE `leaves` DISABLE KEYS */;
INSERT INTO `leaves` (`id`, `name`) VALUES
	(6, 'Parental Leave'),
	(1, 'Emergency Leave'),
	(4, 'Vacation Leave'),
	(2, 'Sick Leave'),
	(5, 'Maternity Leave'),
	(7, 'Birthday Leave');
/*!40000 ALTER TABLE `leaves` ENABLE KEYS */;

-- Dumping structure for table hris.lendingcompany
DROP TABLE IF EXISTS `lendingcompany`;
CREATE TABLE IF NOT EXISTS `lendingcompany` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table hris.lendingcompany: 3 rows
/*!40000 ALTER TABLE `lendingcompany` DISABLE KEYS */;
INSERT INTO `lendingcompany` (`id`, `name`) VALUES
	(1, 'SSS'),
	(2, 'AFC'),
	(3, 'HDMF');
/*!40000 ALTER TABLE `lendingcompany` ENABLE KEYS */;

-- Dumping structure for table hris.licensures
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table hris.licensures: ~0 rows (approximately)
/*!40000 ALTER TABLE `licensures` DISABLE KEYS */;
/*!40000 ALTER TABLE `licensures` ENABLE KEYS */;

-- Dumping structure for table hris.loans
DROP TABLE IF EXISTS `loans`;
CREATE TABLE IF NOT EXISTS `loans` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `employee_id` int(10) DEFAULT NULL,
  `loanType_id` int(10) DEFAULT NULL,
  `lendingCompany_id` int(10) DEFAULT NULL,
  `amount` double(10,0) DEFAULT NULL,
  `term` text COLLATE utf8_unicode_ci,
  `monthlyAmortization` double(10,0) DEFAULT NULL,
  `startDate` date DEFAULT NULL,
  `endDate` date DEFAULT NULL,
  `loanGranted` date DEFAULT NULL,
  `remarks` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table hris.loans: 1 rows
/*!40000 ALTER TABLE `loans` DISABLE KEYS */;
INSERT INTO `loans` (`id`, `employee_id`, `loanType_id`, `lendingCompany_id`, `amount`, `term`, `monthlyAmortization`, `startDate`, `endDate`, `loanGranted`, `remarks`) VALUES
	(1, 1, 1, 1, 1, 'f', 32, '2017-03-22', '2017-03-22', '2017-03-22', 'fd');
/*!40000 ALTER TABLE `loans` ENABLE KEYS */;

-- Dumping structure for table hris.loantype
DROP TABLE IF EXISTS `loantype`;
CREATE TABLE IF NOT EXISTS `loantype` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `loanType` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table hris.loantype: 2 rows
/*!40000 ALTER TABLE `loantype` DISABLE KEYS */;
INSERT INTO `loantype` (`id`, `loanType`) VALUES
	(1, 'SSS Loan'),
	(2, 'Housing Loan');
/*!40000 ALTER TABLE `loantype` ENABLE KEYS */;

-- Dumping structure for table hris.medicals
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

-- Dumping data for table hris.medicals: ~0 rows (approximately)
/*!40000 ALTER TABLE `medicals` DISABLE KEYS */;
/*!40000 ALTER TABLE `medicals` ENABLE KEYS */;

-- Dumping structure for table hris.organizations
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table hris.organizations: ~0 rows (approximately)
/*!40000 ALTER TABLE `organizations` DISABLE KEYS */;
INSERT INTO `organizations` (`id`, `employee_id`, `institution`, `title`, `started`, `ended`) VALUES
	(4, 1, NULL, NULL, '2017-05', '2017-06');
/*!40000 ALTER TABLE `organizations` ENABLE KEYS */;

-- Dumping structure for table hris.overtime
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
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table hris.overtime: 1 rows
/*!40000 ALTER TABLE `overtime` DISABLE KEYS */;
INSERT INTO `overtime` (`id`, `employee_id`, `dateFiled`, `dateRequested`, `timeStart`, `timeEnd`, `totalHours`, `reason`, `status`, `reasonToDissaprove`) VALUES
	(1, '228', '2017-03-28', '2017-03-23', '5', '7', '02:00', 'finish work', 'Approved by HR', 'asd');
/*!40000 ALTER TABLE `overtime` ENABLE KEYS */;

-- Dumping structure for table hris.payslip
DROP TABLE IF EXISTS `payslip`;
CREATE TABLE IF NOT EXISTS `payslip` (
  `payslip_id` int(10) DEFAULT NULL,
  `employee_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cutoff_id` int(11) DEFAULT NULL,
  `totalWorkHours` double(6,2) DEFAULT NULL,
  `income` double(6,2) DEFAULT NULL,
  `regot_pay` double(6,2) DEFAULT NULL,
  `holot_pay` double(6,2) DEFAULT NULL,
  `ot_pay` double(6,2) DEFAULT NULL,
  `allowances` double(6,2) DEFAULT NULL,
  `incentives` double(6,2) DEFAULT NULL,
  `lateabsent_deduct` double(6,2) DEFAULT NULL,
  `undertime_deduct` double(6,2) DEFAULT NULL,
  `tax` double(6,2) DEFAULT NULL,
  `sss` double(6,2) DEFAULT NULL,
  `phic` double(6,2) DEFAULT NULL,
  `hdmf` double(6,2) DEFAULT NULL,
  `gross_income` double(6,2) DEFAULT NULL,
  `net_income` double(6,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table hris.payslip: 0 rows
/*!40000 ALTER TABLE `payslip` DISABLE KEYS */;
/*!40000 ALTER TABLE `payslip` ENABLE KEYS */;

-- Dumping structure for table hris.performance
DROP TABLE IF EXISTS `performance`;
CREATE TABLE IF NOT EXISTS `performance` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `employee_id` int(10) NOT NULL DEFAULT '0',
  `rating` text COLLATE utf8_unicode_ci NOT NULL,
  `monthReview` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remarks` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table hris.performance: 0 rows
/*!40000 ALTER TABLE `performance` DISABLE KEYS */;
/*!40000 ALTER TABLE `performance` ENABLE KEYS */;

-- Dumping structure for table hris.positions
DROP TABLE IF EXISTS `positions`;
CREATE TABLE IF NOT EXISTS `positions` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `company_id` int(10) NOT NULL DEFAULT '0',
  `rank_id` int(11) DEFAULT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `skills` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table hris.positions: 4 rows
/*!40000 ALTER TABLE `positions` DISABLE KEYS */;
INSERT INTO `positions` (`id`, `company_id`, `rank_id`, `name`, `skills`) VALUES
	(1, 0, 6, 'Developer', 'w'),
	(2, 0, 1, 'HR Director', 'e'),
	(3, 62, 2, 'Manager', 'ew'),
	(4, 0, 1, 'lkl', 'fufu');
/*!40000 ALTER TABLE `positions` ENABLE KEYS */;

-- Dumping structure for table hris.positionskill
DROP TABLE IF EXISTS `positionskill`;
CREATE TABLE IF NOT EXISTS `positionskill` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `position_id` int(10) NOT NULL DEFAULT '0',
  `skills` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table hris.positionskill: 4 rows
/*!40000 ALTER TABLE `positionskill` DISABLE KEYS */;
INSERT INTO `positionskill` (`id`, `position_id`, `skills`) VALUES
	(4, 1, 'PHP'),
	(2, 1, 'Networking'),
	(1, 2, 'Strong Communication'),
	(5, 2, 'Interpersonal');
/*!40000 ALTER TABLE `positionskill` ENABLE KEYS */;

-- Dumping structure for table hris.promotions
DROP TABLE IF EXISTS `promotions`;
CREATE TABLE IF NOT EXISTS `promotions` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `employee_id` int(10) NOT NULL,
  `datePromote` text COLLATE utf8_unicode_ci,
  `position_id` text COLLATE utf8_unicode_ci NOT NULL,
  `salary` text COLLATE utf8_unicode_ci,
  `company_id` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table hris.promotions: 0 rows
/*!40000 ALTER TABLE `promotions` DISABLE KEYS */;
/*!40000 ALTER TABLE `promotions` ENABLE KEYS */;

-- Dumping structure for table hris.properties
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

-- Dumping data for table hris.properties: 0 rows
/*!40000 ALTER TABLE `properties` DISABLE KEYS */;
/*!40000 ALTER TABLE `properties` ENABLE KEYS */;

-- Dumping structure for table hris.rank
DROP TABLE IF EXISTS `rank`;
CREATE TABLE IF NOT EXISTS `rank` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `rank` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table hris.rank: 10 rows
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

-- Dumping structure for table hris.recognition
DROP TABLE IF EXISTS `recognition`;
CREATE TABLE IF NOT EXISTS `recognition` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `awardGiven` text COLLATE utf8_unicode_ci NOT NULL,
  `citation` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table hris.recognition: 0 rows
/*!40000 ALTER TABLE `recognition` DISABLE KEYS */;
/*!40000 ALTER TABLE `recognition` ENABLE KEYS */;

-- Dumping structure for table hris.role
DROP TABLE IF EXISTS `role`;
CREATE TABLE IF NOT EXISTS `role` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `role` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table hris.role: 6 rows
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` (`id`, `role`) VALUES
	(1, 'Human Resource-1'),
	(2, 'Human Resource-2'),
	(3, 'Payroll Officer'),
	(4, 'User'),
	(5, 'Admin'),
	(6, 'Manager');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;

-- Dumping structure for table hris.serviceallowance
DROP TABLE IF EXISTS `serviceallowance`;
CREATE TABLE IF NOT EXISTS `serviceallowance` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `service_id` int(10) DEFAULT NULL,
  `employee_id` int(10) DEFAULT NULL,
  `allowance_id` int(10) DEFAULT NULL,
  `amount` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table hris.serviceallowance: 0 rows
/*!40000 ALTER TABLE `serviceallowance` DISABLE KEYS */;
/*!40000 ALTER TABLE `serviceallowance` ENABLE KEYS */;

-- Dumping structure for table hris.serviceallowancetemp
DROP TABLE IF EXISTS `serviceallowancetemp`;
CREATE TABLE IF NOT EXISTS `serviceallowancetemp` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL DEFAULT '0',
  `service_id` int(10) DEFAULT NULL,
  `employee_id` int(10) DEFAULT NULL,
  `allowance_id` int(10) DEFAULT NULL,
  `amount` double(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table hris.serviceallowancetemp: 0 rows
/*!40000 ALTER TABLE `serviceallowancetemp` DISABLE KEYS */;
/*!40000 ALTER TABLE `serviceallowancetemp` ENABLE KEYS */;

-- Dumping structure for table hris.servicebenefit
DROP TABLE IF EXISTS `servicebenefit`;
CREATE TABLE IF NOT EXISTS `servicebenefit` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `employee_id` int(10) DEFAULT NULL,
  `benefit_id` int(10) DEFAULT NULL,
  `amount` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table hris.servicebenefit: 0 rows
/*!40000 ALTER TABLE `servicebenefit` DISABLE KEYS */;
/*!40000 ALTER TABLE `servicebenefit` ENABLE KEYS */;

-- Dumping structure for table hris.serviceleave
DROP TABLE IF EXISTS `serviceleave`;
CREATE TABLE IF NOT EXISTS `serviceleave` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `service_id` int(10) NOT NULL DEFAULT '0',
  `employee_id` int(10) DEFAULT NULL,
  `leave_id` int(10) DEFAULT NULL,
  `leavedays` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table hris.serviceleave: 0 rows
/*!40000 ALTER TABLE `serviceleave` DISABLE KEYS */;
/*!40000 ALTER TABLE `serviceleave` ENABLE KEYS */;

-- Dumping structure for table hris.serviceleavestatus
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table hris.serviceleavestatus: 0 rows
/*!40000 ALTER TABLE `serviceleavestatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `serviceleavestatus` ENABLE KEYS */;

-- Dumping structure for table hris.serviceleavetemp
DROP TABLE IF EXISTS `serviceleavetemp`;
CREATE TABLE IF NOT EXISTS `serviceleavetemp` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL DEFAULT '0',
  `service_id` int(10) DEFAULT NULL,
  `employee_id` int(10) DEFAULT NULL,
  `leave_id` int(10) DEFAULT NULL,
  `leavedays` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table hris.serviceleavetemp: 0 rows
/*!40000 ALTER TABLE `serviceleavetemp` DISABLE KEYS */;
/*!40000 ALTER TABLE `serviceleavetemp` ENABLE KEYS */;

-- Dumping structure for table hris.services
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
  `basicSalary` double(10,0) DEFAULT NULL,
  `remarks` text COLLATE utf8_unicode_ci,
  `ifcurrent` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table hris.services: ~0 rows (approximately)
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` (`id`, `employee_id`, `dateAssigned`, `datePrompt`, `position_id`, `employmentStatus`, `company_id`, `department_id`, `branch_id`, `basicSalary`, `remarks`, `ifcurrent`) VALUES
	(13, 1, '2017-03-01', '', 3, 'Regular', 62, 4, 1, 10000, 'adq', 1);
/*!40000 ALTER TABLE `services` ENABLE KEYS */;

-- Dumping structure for table hris.settings
DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `item` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table hris.settings: 4 rows
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` (`id`, `item`, `value`) VALUES
	(1, 'Sick Leave Conversion ', 'February'),
	(2, 'Reset all Leaves', 'January'),
	(3, 'Maximum SL Credit', '10'),
	(4, 'Maximum VL Credit ', '5');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;

-- Dumping structure for table hris.shifts
DROP TABLE IF EXISTS `shifts`;
CREATE TABLE IF NOT EXISTS `shifts` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `day` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timein` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timeout` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shiftgroup_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table hris.shifts: 7 rows
/*!40000 ALTER TABLE `shifts` DISABLE KEYS */;
INSERT INTO `shifts` (`id`, `day`, `timein`, `timeout`, `shiftgroup_id`) VALUES
	(1, 'Wednesday', '09:00 AM', '05:00 PM', 1),
	(12, 'Saturday', '09:00 AM', '05:00 PM', 1),
	(7, 'Thursday', '09:00 AM', '05:00 PM', 1),
	(9, 'Tuesday', '09:00 AM', '05:00 PM', 1),
	(10, 'Friday', '09:00 AM', '05:00 PM', 1),
	(11, 'Monday', '09:00 AM', '05:00 PM', 1),
	(20, 'Monday', NULL, NULL, 5);
/*!40000 ALTER TABLE `shifts` ENABLE KEYS */;

-- Dumping structure for table hris.shiftsgroup
DROP TABLE IF EXISTS `shiftsgroup`;
CREATE TABLE IF NOT EXISTS `shiftsgroup` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `shiftName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table hris.shiftsgroup: 3 rows
/*!40000 ALTER TABLE `shiftsgroup` DISABLE KEYS */;
INSERT INTO `shiftsgroup` (`id`, `shiftName`) VALUES
	(1, 'Regular'),
	(2, 'Irregular'),
	(3, 'Flexibles');
/*!40000 ALTER TABLE `shiftsgroup` ENABLE KEYS */;

-- Dumping structure for table hris.skills
DROP TABLE IF EXISTS `skills`;
CREATE TABLE IF NOT EXISTS `skills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `type` text COLLATE utf8_unicode_ci,
  `name` text COLLATE utf8_unicode_ci,
  `level` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `index_skills_on_employee_id` (`employee_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table hris.skills: ~0 rows (approximately)
/*!40000 ALTER TABLE `skills` DISABLE KEYS */;
/*!40000 ALTER TABLE `skills` ENABLE KEYS */;

-- Dumping structure for table hris.suspension
DROP TABLE IF EXISTS `suspension`;
CREATE TABLE IF NOT EXISTS `suspension` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `employee_id` int(10) DEFAULT NULL,
  `dateSuspended` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table hris.suspension: 0 rows
/*!40000 ALTER TABLE `suspension` DISABLE KEYS */;
/*!40000 ALTER TABLE `suspension` ENABLE KEYS */;

-- Dumping structure for table hris.taxstatus
DROP TABLE IF EXISTS `taxstatus`;
CREATE TABLE IF NOT EXISTS `taxstatus` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `taxstatus` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `taxcode` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table hris.taxstatus: 10 rows
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

-- Dumping structure for table hris.trainingdev
DROP TABLE IF EXISTS `trainingdev`;
CREATE TABLE IF NOT EXISTS `trainingdev` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `training` text COLLATE utf8_unicode_ci NOT NULL,
  `topic` text COLLATE utf8_unicode_ci NOT NULL,
  `duration` text COLLATE utf8_unicode_ci NOT NULL,
  `cost` double(6,0) NOT NULL,
  `venue` text COLLATE utf8_unicode_ci NOT NULL,
  `speaker` text COLLATE utf8_unicode_ci NOT NULL,
  `benefit` text COLLATE utf8_unicode_ci NOT NULL,
  `dateConduct` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table hris.trainingdev: ~0 rows (approximately)
/*!40000 ALTER TABLE `trainingdev` DISABLE KEYS */;
/*!40000 ALTER TABLE `trainingdev` ENABLE KEYS */;

-- Dumping structure for table hris.trainings
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table hris.trainings: ~0 rows (approximately)
/*!40000 ALTER TABLE `trainings` DISABLE KEYS */;
/*!40000 ALTER TABLE `trainings` ENABLE KEYS */;

-- Dumping structure for table hris.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role_id` int(10) DEFAULT NULL,
  `userStatus` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=172 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table hris.users: 2 rows
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `employee_id`, `username`, `password`, `role_id`, `userStatus`) VALUES
	(1, '1', 'jennifer.beltran', 'b787d22d9cb06342658bf546039117bc', 2, 'Active'),
	(171, '228', 'raul.altavano', 'bc7a844476607e1a59d8eb1b1f311830', 5, 'Disabled');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for table hris.violation
DROP TABLE IF EXISTS `violation`;
CREATE TABLE IF NOT EXISTS `violation` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT NULL,
  `memoNo` int(5) DEFAULT NULL,
  `memo` text COLLATE utf8_unicode_ci,
  `dateOfMemo` date DEFAULT NULL,
  `signedBy` text COLLATE utf8_unicode_ci,
  `noOfOffense` text COLLATE utf8_unicode_ci,
  `categoryOfOffense` text COLLATE utf8_unicode_ci,
  `penalties` text COLLATE utf8_unicode_ci,
  `effectOnPenalties` text COLLATE utf8_unicode_ci,
  `effectivePeriod` text COLLATE utf8_unicode_ci,
  `subject` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table hris.violation: 0 rows
/*!40000 ALTER TABLE `violation` DISABLE KEYS */;
/*!40000 ALTER TABLE `violation` ENABLE KEYS */;

-- Dumping structure for table hris.works
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table hris.works: ~0 rows (approximately)
/*!40000 ALTER TABLE `works` DISABLE KEYS */;
/*!40000 ALTER TABLE `works` ENABLE KEYS */;


-- Dumping database structure for hris_payroll
DROP DATABASE IF EXISTS `hris_payroll`;
CREATE DATABASE IF NOT EXISTS `hris_payroll` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `hris_payroll`;

-- Dumping structure for table hris_payroll.sample
DROP TABLE IF EXISTS `sample`;
CREATE TABLE IF NOT EXISTS `sample` (
  `field1` varchar(20) DEFAULT NULL,
  `field2` int(11) DEFAULT NULL,
  `field3` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table hris_payroll.sample: 0 rows
/*!40000 ALTER TABLE `sample` DISABLE KEYS */;
/*!40000 ALTER TABLE `sample` ENABLE KEYS */;

-- Dumping structure for table hris_payroll.tblref_holiday
DROP TABLE IF EXISTS `tblref_holiday`;
CREATE TABLE IF NOT EXISTS `tblref_holiday` (
  `idHoliday` int(3) NOT NULL AUTO_INCREMENT,
  `date1` date NOT NULL,
  `holiday` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  PRIMARY KEY (`idHoliday`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- Dumping data for table hris_payroll.tblref_holiday: 18 rows
/*!40000 ALTER TABLE `tblref_holiday` DISABLE KEYS */;
INSERT INTO `tblref_holiday` (`idHoliday`, `date1`, `holiday`, `type`) VALUES
	(3, '2016-01-01', 'New Years Day', 'Regular Holidays'),
	(4, '2016-05-01', 'Labor Day', 'Regular Holidays'),
	(5, '2016-06-12', 'Independence Day', 'Regular Holidays'),
	(6, '2016-04-02', 'Maunday Thursday', 'Regular Holidays'),
	(7, '2016-04-03', 'Good Friday', 'Regular Holidays'),
	(8, '2016-04-09', 'Araw ng Kagitingan', 'Regular Holidays'),
	(9, '2016-08-31', 'National Heroes Day', 'Regular Holidays'),
	(10, '2016-11-30', 'Bonifacio Day', 'Regular Holidays'),
	(11, '2016-12-25', 'Christmas Day', 'Regular Holidays'),
	(12, '2016-12-30', 'Rizal Day', 'Regular Holidays'),
	(13, '2016-01-02', 'New years Extension', 'Special (Non-Working) Days'),
	(14, '2016-02-08', 'Chinese New Year', 'Special (Non-Working) Days'),
	(15, '2016-04-04', 'Black Saturday', 'Special (Non-Working) Days'),
	(16, '2016-08-11', 'Ninoy Aquino Day', 'Special (Non-Working) Days'),
	(17, '2016-11-01', 'All Saints Day', 'Special (Non-Working) Days'),
	(18, '2016-12-24', 'Pre Christmas Day', 'Special (Non-Working) Days'),
	(19, '2016-12-31', 'Year End', 'Special (Non-Working) Days'),
	(28, '2016-10-08', 'something special sa holidays', 'Special (Non-Working) Days');
/*!40000 ALTER TABLE `tblref_holiday` ENABLE KEYS */;

-- Dumping structure for table hris_payroll.tblref_occurences
DROP TABLE IF EXISTS `tblref_occurences`;
CREATE TABLE IF NOT EXISTS `tblref_occurences` (
  `occurence_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`occurence_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table hris_payroll.tblref_occurences: 3 rows
/*!40000 ALTER TABLE `tblref_occurences` DISABLE KEYS */;
INSERT INTO `tblref_occurences` (`occurence_id`, `name`) VALUES
	(1, 'Monthly'),
	(2, 'Semi-Monthly'),
	(3, 'Weekly');
/*!40000 ALTER TABLE `tblref_occurences` ENABLE KEYS */;

-- Dumping structure for table hris_payroll.tblref_philhealth
DROP TABLE IF EXISTS `tblref_philhealth`;
CREATE TABLE IF NOT EXISTS `tblref_philhealth` (
  `phil_id` int(10) NOT NULL AUTO_INCREMENT,
  `salary` double(10,2) DEFAULT NULL,
  `employer` double(10,2) DEFAULT NULL,
  `employee` double(10,2) DEFAULT NULL,
  `total` double(10,2) DEFAULT NULL,
  PRIMARY KEY (`phil_id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- Dumping data for table hris_payroll.tblref_philhealth: 28 rows
/*!40000 ALTER TABLE `tblref_philhealth` DISABLE KEYS */;
INSERT INTO `tblref_philhealth` (`phil_id`, `salary`, `employer`, `employee`, `total`) VALUES
	(1, 8000.00, 100.00, 100.00, 200.00),
	(2, 9000.00, 112.50, 112.50, 225.00),
	(3, 10000.00, 125.00, 125.00, 250.00),
	(4, 11000.00, 137.50, 137.50, 275.00),
	(5, 12000.00, 150.00, 150.00, 300.00),
	(6, 13000.00, 162.50, 162.50, 325.00),
	(7, 14000.00, 175.00, 175.00, 350.00),
	(8, 15000.00, 187.50, 187.50, 375.00),
	(9, 16000.00, 200.00, 200.00, 400.00),
	(10, 17000.00, 212.50, 212.50, 425.00),
	(11, 18000.00, 225.00, 225.00, 450.00),
	(12, 19000.00, 237.50, 237.50, 475.00),
	(13, 20000.00, 250.00, 250.00, 500.00),
	(14, 21000.00, 262.50, 262.50, 525.00),
	(15, 22000.00, 275.00, 275.00, 550.00),
	(16, 23000.00, 287.50, 287.50, 575.00),
	(17, 24000.00, 300.00, 300.00, 600.00),
	(18, 25000.00, 312.50, 312.50, 625.00),
	(19, 26000.00, 325.00, 325.00, 650.00),
	(20, 27000.00, 337.50, 337.50, 675.00),
	(21, 28000.00, 350.00, 350.00, 700.00),
	(22, 29000.00, 362.50, 362.50, 725.00),
	(23, 30000.00, 375.00, 375.00, 750.00),
	(24, 31000.00, 387.50, 387.50, 775.00),
	(25, 32000.00, 400.00, 400.00, 800.00),
	(26, 33000.00, 412.50, 412.50, 825.00),
	(27, 34000.00, 425.00, 425.00, 850.00),
	(28, 35000.00, 437.50, 437.50, 875.00);
/*!40000 ALTER TABLE `tblref_philhealth` ENABLE KEYS */;

-- Dumping structure for table hris_payroll.tblref_settings
DROP TABLE IF EXISTS `tblref_settings`;
CREATE TABLE IF NOT EXISTS `tblref_settings` (
  `setting_name` varchar(50) DEFAULT NULL,
  `value` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table hris_payroll.tblref_settings: 3 rows
/*!40000 ALTER TABLE `tblref_settings` DISABLE KEYS */;
INSERT INTO `tblref_settings` (`setting_name`, `value`) VALUES
	('app_mode', 'integrate'),
	('current_company', 'Amaara Financial Corporation'),
	('current_cutoff', '2016-10-01 to 2016-10-15');
/*!40000 ALTER TABLE `tblref_settings` ENABLE KEYS */;

-- Dumping structure for table hris_payroll.tblref_sss
DROP TABLE IF EXISTS `tblref_sss`;
CREATE TABLE IF NOT EXISTS `tblref_sss` (
  `idSSS` int(10) NOT NULL AUTO_INCREMENT,
  `salary` double(18,2) DEFAULT NULL,
  `employer` double(18,2) DEFAULT NULL,
  `employee` double(18,2) DEFAULT NULL,
  `total` double(18,2) DEFAULT NULL,
  PRIMARY KEY (`idSSS`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- Dumping data for table hris_payroll.tblref_sss: 31 rows
/*!40000 ALTER TABLE `tblref_sss` DISABLE KEYS */;
INSERT INTO `tblref_sss` (`idSSS`, `salary`, `employer`, `employee`, `total`) VALUES
	(1, 1000.00, 83.70, 36.30, 120.00),
	(2, 1250.00, 120.50, 54.50, 175.00),
	(3, 1750.00, 157.30, 72.70, 230.00),
	(4, 2250.00, 194.20, 90.80, 285.00),
	(5, 2750.00, 231.00, 109.00, 340.00),
	(6, 3250.00, 267.80, 127.20, 395.00),
	(7, 3750.00, 304.70, 145.30, 450.00),
	(8, 4250.00, 341.50, 163.50, 505.00),
	(9, 4750.00, 378.30, 181.70, 560.00),
	(10, 5250.00, 415.20, 199.80, 615.00),
	(11, 5750.00, 452.00, 218.00, 670.00),
	(12, 6250.00, 488.80, 236.20, 725.00),
	(13, 6750.00, 525.70, 254.30, 780.00),
	(14, 7250.00, 562.50, 272.50, 835.00),
	(15, 7750.00, 599.30, 290.70, 890.00),
	(16, 8250.00, 636.20, 308.80, 945.00),
	(17, 8750.00, 673.00, 327.00, 1000.00),
	(18, 9250.00, 709.80, 345.20, 1055.00),
	(19, 9750.00, 746.70, 363.30, 1110.00),
	(20, 10250.00, 783.50, 381.50, 1165.00),
	(21, 10750.00, 820.30, 399.70, 1220.00),
	(22, 11250.00, 857.20, 417.80, 1275.00),
	(23, 11750.00, 894.00, 436.00, 1330.00),
	(24, 12250.00, 930.80, 454.20, 1385.00),
	(25, 12750.00, 967.70, 472.30, 1440.00),
	(26, 13250.00, 1004.50, 490.50, 1495.00),
	(27, 13750.00, 1041.30, 508.70, 1550.00),
	(28, 14250.00, 1078.20, 526.80, 1605.00),
	(29, 14750.00, 1135.00, 545.00, 1680.00),
	(30, 15250.00, 1171.80, 563.20, 1735.00),
	(31, 15750.00, 1208.70, 581.30, 1790.00);
/*!40000 ALTER TABLE `tblref_sss` ENABLE KEYS */;

-- Dumping structure for table hris_payroll.tblref_tax
DROP TABLE IF EXISTS `tblref_tax`;
CREATE TABLE IF NOT EXISTS `tblref_tax` (
  `idTax` int(10) NOT NULL AUTO_INCREMENT,
  `status` varchar(10) NOT NULL,
  `salary` double(10,2) NOT NULL DEFAULT '0.00',
  `percentage` decimal(10,2) NOT NULL DEFAULT '0.00',
  `excemption` double(10,2) NOT NULL DEFAULT '0.00',
  `occurence` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idTax`)
) ENGINE=MyISAM AUTO_INCREMENT=145 DEFAULT CHARSET=utf8;

-- Dumping data for table hris_payroll.tblref_tax: 144 rows
/*!40000 ALTER TABLE `tblref_tax` DISABLE KEYS */;
INSERT INTO `tblref_tax` (`idTax`, `status`, `salary`, `percentage`, `excemption`, `occurence`) VALUES
	(1, 'Z', 1.00, 0.00, 0.00, 'Monthly'),
	(3, 'ME1/S1', 1.00, 0.00, 0.00, 'Monthly'),
	(2, 'S/ME', 1.00, 0.00, 0.00, 'Monthly'),
	(4, 'ME2/S2', 1.00, 0.00, 0.00, 'Monthly'),
	(5, 'ME3/S3', 1.00, 0.00, 0.00, 'Monthly'),
	(6, 'ME4/S4', 1.00, 0.00, 0.00, 'Monthly'),
	(7, 'Z', 0.00, 0.05, 0.00, 'Monthly'),
	(8, 'S/ME', 4167.00, 0.05, 0.00, 'Monthly'),
	(9, 'ME1/S1', 6250.00, 0.05, 0.00, 'Monthly'),
	(10, 'ME2/S2', 8333.00, 0.05, 0.00, 'Monthly'),
	(11, 'ME3/S3', 10417.00, 0.05, 0.00, 'Monthly'),
	(12, 'ME4/S4', 12500.00, 0.05, 0.00, 'Monthly'),
	(13, 'Z', 833.00, 0.10, 41.67, 'Monthly'),
	(14, 'S/ME', 5000.00, 0.10, 41.67, 'Monthly'),
	(15, 'ME1/S1', 7083.00, 0.10, 41.67, 'Monthly'),
	(16, 'ME2/S2', 9167.00, 0.10, 41.67, 'Monthly'),
	(17, 'ME3/S3', 11250.00, 0.10, 41.67, 'Monthly'),
	(18, 'ME4/S4', 13333.00, 0.10, 41.67, 'Monthly'),
	(19, 'Z', 2500.00, 0.15, 208.33, 'Monthly'),
	(20, 'S/ME', 6667.00, 0.15, 208.33, 'Monthly'),
	(21, 'ME1/S1', 8750.00, 0.15, 208.33, 'Monthly'),
	(22, 'ME2/S2', 10833.00, 0.15, 208.33, 'Monthly'),
	(23, 'ME3/S3', 12917.00, 0.15, 208.33, 'Monthly'),
	(24, 'ME4/S4', 15000.00, 0.15, 208.33, 'Monthly'),
	(25, 'Z', 5833.00, 0.20, 708.33, 'Monthly'),
	(26, 'S/ME', 10000.00, 0.20, 708.33, 'Monthly'),
	(27, 'ME1/S1', 12083.00, 0.20, 708.33, 'Monthly'),
	(28, 'ME2/S2', 14167.00, 0.20, 708.33, 'Monthly'),
	(29, 'ME3/S3', 16250.00, 0.20, 708.33, 'Monthly'),
	(30, 'ME4/S4', 18333.00, 0.20, 708.33, 'Monthly'),
	(31, 'Z', 11667.00, 0.25, 1875.00, 'Monthly'),
	(32, 'S/ME', 15833.00, 0.25, 1875.00, 'Monthly'),
	(33, 'ME1/S1', 17917.00, 0.25, 1875.00, 'Monthly'),
	(34, 'ME2/S2', 20000.00, 0.25, 1875.00, 'Monthly'),
	(35, 'ME3/S3', 22083.00, 0.25, 1875.00, 'Monthly'),
	(36, 'ME4/S4', 24167.00, 0.25, 1875.00, 'Monthly'),
	(37, 'Z', 20833.00, 0.30, 4166.67, 'Monthly'),
	(38, 'S/ME', 25000.00, 0.30, 4166.67, 'Monthly'),
	(39, 'ME1/S1', 27083.00, 0.30, 4166.67, 'Monthly'),
	(40, 'ME2/S2', 29167.00, 0.30, 4166.67, 'Monthly'),
	(41, 'ME3/S3', 31250.00, 0.30, 4166.67, 'Monthly'),
	(42, 'ME4/S4', 33333.00, 0.30, 4166.67, 'Monthly'),
	(43, 'Z', 41667.00, 0.32, 10416.67, 'Monthly'),
	(44, 'S/ME', 45833.00, 0.32, 10416.67, 'Monthly'),
	(45, 'ME1/S1', 47917.00, 0.32, 10416.67, 'Monthly'),
	(46, 'ME2/S2', 50000.00, 0.32, 10416.67, 'Monthly'),
	(47, 'ME3/S3', 52083.00, 0.32, 10416.67, 'Monthly'),
	(48, 'ME4/S4', 54167.00, 0.32, 10416.67, 'Monthly'),
	(49, 'Z', 1.00, 0.00, 0.00, 'Semi-Monthly'),
	(50, 'S/ME', 1.00, 0.00, 0.00, 'Semi-Monthly'),
	(51, 'ME1/S1', 1.00, 0.00, 0.00, 'Semi-Monthly'),
	(52, 'ME2/S2', 1.00, 0.00, 0.00, 'Semi-Monthly'),
	(53, 'ME3/S3', 1.00, 0.00, 0.00, 'Semi-Monthly'),
	(54, 'ME4/S4', 1.00, 0.00, 0.00, 'Semi-Monthly'),
	(55, 'Z', 0.00, 0.05, 0.00, 'Semi-Monthly'),
	(56, 'S/ME', 2083.00, 0.05, 0.00, 'Semi-Monthly'),
	(57, 'ME1/S1', 3125.00, 0.05, 0.00, 'Semi-Monthly'),
	(58, 'ME2/S2', 4167.00, 0.05, 0.00, 'Semi-Monthly'),
	(59, 'ME3/S3', 5208.00, 0.05, 0.00, 'Semi-Monthly'),
	(60, 'ME4/S4', 6250.00, 0.05, 0.00, 'Semi-Monthly'),
	(61, 'Z', 417.00, 0.10, 20.83, 'Semi-Monthly'),
	(62, 'S/ME', 2500.00, 0.10, 20.83, 'Semi-Monthly'),
	(63, 'ME1/S1', 3542.00, 0.10, 20.83, 'Semi-Monthly'),
	(64, 'ME2/S2', 4583.00, 0.10, 20.83, 'Semi-Monthly'),
	(65, 'ME3/S3', 5625.00, 0.10, 20.83, 'Semi-Monthly'),
	(66, 'ME4/S4', 6667.00, 0.10, 20.83, 'Semi-Monthly'),
	(67, 'Z', 1250.00, 0.15, 104.17, 'Semi-Monthly'),
	(68, 'S/ME', 3333.00, 0.15, 104.17, 'Semi-Monthly'),
	(69, 'ME1/S1', 4375.00, 0.15, 104.17, 'Semi-Monthly'),
	(70, 'ME2/S2', 5417.00, 0.15, 104.17, 'Semi-Monthly'),
	(71, 'ME3/S3', 6458.00, 0.15, 104.17, 'Semi-Monthly'),
	(72, 'ME4/S4', 7500.00, 0.15, 104.17, 'Semi-Monthly'),
	(73, 'Z', 2917.00, 0.20, 354.17, 'Semi-Monthly'),
	(74, 'S/ME', 5000.00, 0.20, 354.17, 'Semi-Monthly'),
	(75, 'ME1/S1', 6042.00, 0.20, 354.17, 'Semi-Monthly'),
	(76, 'ME2/S2', 7083.00, 0.20, 354.17, 'Semi-Monthly'),
	(77, 'ME3/S3', 8125.00, 0.20, 354.17, 'Semi-Monthly'),
	(78, 'ME4/S4', 9167.00, 0.20, 354.17, 'Semi-Monthly'),
	(79, 'Z', 5833.00, 0.25, 937.50, 'Semi-Monthly'),
	(80, 'S/ME', 7917.00, 0.25, 937.50, 'Semi-Monthly'),
	(81, 'ME1/S1', 8958.00, 0.25, 937.50, 'Semi-Monthly'),
	(82, 'ME2/S2', 10000.00, 0.25, 937.50, 'Semi-Monthly'),
	(83, 'ME3/S3', 11042.00, 0.25, 937.50, 'Semi-Monthly'),
	(84, 'ME4/S4', 12083.00, 0.25, 937.50, 'Semi-Monthly'),
	(85, 'Z', 10417.00, 0.30, 2083.33, 'Semi-Monthly'),
	(86, 'S/ME', 12500.00, 0.30, 2083.33, 'Semi-Monthly'),
	(87, 'ME1/S1', 13542.00, 0.30, 2083.33, 'Semi-Monthly'),
	(88, 'ME2/S2', 14583.00, 0.30, 2083.33, 'Semi-Monthly'),
	(89, 'ME3/S3', 15625.00, 0.30, 2083.33, 'Semi-Monthly'),
	(90, 'ME4/S4', 16667.00, 0.30, 2083.33, 'Semi-Monthly'),
	(91, 'Z', 20833.00, 0.32, 5028.33, 'Semi-Monthly'),
	(92, 'S/ME', 22917.00, 0.32, 5028.33, 'Semi-Monthly'),
	(93, 'ME1/S1', 23958.00, 0.32, 5028.33, 'Semi-Monthly'),
	(94, 'ME2/S2', 25000.00, 0.32, 5028.33, 'Semi-Monthly'),
	(95, 'ME3/S3', 26042.00, 0.32, 5028.33, 'Semi-Monthly'),
	(96, 'ME4/S4', 27083.00, 0.32, 5028.33, 'Semi-Monthly'),
	(97, 'Z', 1.00, 0.00, 0.00, 'Weekly'),
	(98, 'S/ME', 1.00, 0.00, 0.00, 'Weekly'),
	(99, 'ME1/S1', 1.00, 0.00, 0.00, 'Weekly'),
	(100, 'ME2/S2', 1.00, 0.00, 0.00, 'Weekly'),
	(101, 'ME3/S3', 1.00, 0.00, 0.00, 'Weekly'),
	(102, 'ME4/S4', 1.00, 0.00, 0.00, 'Weekly'),
	(103, 'Z', 0.00, 0.05, 0.00, 'Weekly'),
	(104, 'S/ME', 962.00, 0.05, 0.00, 'Weekly'),
	(105, 'ME1/S1', 1442.00, 0.05, 0.00, 'Weekly'),
	(106, 'ME2/S2', 1923.00, 0.05, 0.00, 'Weekly'),
	(107, 'ME3/S3', 2404.00, 0.05, 0.00, 'Weekly'),
	(108, 'ME4/S4', 2885.00, 0.05, 0.00, 'Weekly'),
	(109, 'Z', 192.00, 0.10, 9.62, 'Weekly'),
	(110, 'S/ME', 1154.00, 0.10, 9.62, 'Weekly'),
	(111, 'ME1/S1', 1635.00, 0.10, 9.62, 'Weekly'),
	(112, 'ME2/S2', 2115.00, 0.10, 9.62, 'Weekly'),
	(113, 'ME3/S3', 2596.00, 0.10, 9.62, 'Weekly'),
	(114, 'ME4/S4', 3007.00, 0.10, 9.62, 'Weekly'),
	(115, 'Z', 577.00, 0.15, 48.08, 'Weekly'),
	(116, 'S/ME', 1538.00, 0.15, 48.08, 'Weekly'),
	(117, 'ME1/S1', 2019.00, 0.15, 48.08, 'Weekly'),
	(118, 'ME2/S2', 2500.00, 0.15, 48.08, 'Weekly'),
	(119, 'ME3/S3', 2981.00, 0.15, 48.08, 'Weekly'),
	(120, 'ME4/S4', 3462.00, 0.15, 48.08, 'Weekly'),
	(121, 'Z', 1346.00, 0.20, 163.46, 'Weekly'),
	(122, 'S/ME', 2308.00, 0.20, 163.46, 'Weekly'),
	(123, 'ME1/S1', 2788.00, 0.20, 163.46, 'Weekly'),
	(124, 'ME2/S2', 3269.00, 0.20, 163.46, 'Weekly'),
	(125, 'ME3/S3', 3750.00, 0.20, 163.46, 'Weekly'),
	(126, 'ME4/S4', 4231.00, 0.20, 163.46, 'Weekly'),
	(127, 'Z', 2692.00, 0.25, 432.69, 'Weekly'),
	(128, 'S/ME', 3654.00, 0.25, 432.69, 'Weekly'),
	(129, 'ME1/S1', 4135.00, 0.25, 432.69, 'Weekly'),
	(130, 'ME2/S2', 4615.00, 0.25, 432.69, 'Weekly'),
	(131, 'ME3/S3', 5096.00, 0.25, 432.69, 'Weekly'),
	(132, 'ME4/S4', 5577.00, 0.25, 432.69, 'Weekly'),
	(133, 'Z', 4808.00, 0.30, 961.54, 'Weekly'),
	(134, 'S/ME', 5769.00, 0.30, 961.54, 'Weekly'),
	(135, 'ME1/S1', 6250.00, 0.30, 961.54, 'Weekly'),
	(136, 'ME2/S2', 6731.00, 0.30, 961.54, 'Weekly'),
	(137, 'ME3/S3', 7212.00, 0.30, 961.54, 'Weekly'),
	(138, 'ME4/S4', 7692.00, 0.30, 961.54, 'Weekly'),
	(139, 'Z', 9615.00, 0.32, 2403.85, 'Weekly'),
	(140, 'S/ME', 10577.00, 0.32, 2403.85, 'Weekly'),
	(141, 'ME1/S1', 11058.00, 0.32, 2403.85, 'Weekly'),
	(142, 'ME2/S2', 11538.00, 0.32, 2403.85, 'Weekly'),
	(143, 'ME3/S3', 12019.00, 0.32, 2403.85, 'Weekly'),
	(144, 'ME4/S4', 12500.00, 0.32, 2403.85, 'Weekly');
/*!40000 ALTER TABLE `tblref_tax` ENABLE KEYS */;

-- Dumping structure for table hris_payroll.tbl_attendance
DROP TABLE IF EXISTS `tbl_attendance`;
CREATE TABLE IF NOT EXISTS `tbl_attendance` (
  `att_id` int(10) NOT NULL AUTO_INCREMENT,
  `emp_bio_id` varchar(50) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time_in` varchar(50) DEFAULT NULL,
  `time_out` varchar(50) DEFAULT NULL,
  `totalHours` varchar(50) DEFAULT NULL,
  `late` varchar(50) DEFAULT NULL,
  `undertime` varchar(50) DEFAULT NULL,
  `overtime` varchar(50) DEFAULT NULL,
  `remarks` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`att_id`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- Dumping data for table hris_payroll.tbl_attendance: 45 rows
/*!40000 ALTER TABLE `tbl_attendance` DISABLE KEYS */;
INSERT INTO `tbl_attendance` (`att_id`, `emp_bio_id`, `date`, `time_in`, `time_out`, `totalHours`, `late`, `undertime`, `overtime`, `remarks`) VALUES
	(1, '10003', '2016-10-01', '10/1/2016 8:09:00 AM', '10/1/2016 5:23:00 PM', '8.38', '0', '0', '0', 'Regular'),
	(2, '10003', '2016-10-03', '10/3/2016 12:22:22 PM', '10/3/2016 5:44:10 PM', '5.36', '0', '0', '0', 'Half day'),
	(3, '10003', '2016-10-04', '10/4/2016 7:18:48 AM', '10/4/2016 7:35:42 PM', '10.6', '0', '0', '2.6', 'Overtime'),
	(4, '10003', '2016-10-05', '10/5/2016 8:09:00 AM', '10/5/2016 6:06:29 PM', '9.11', '0', '0', '1.11', 'Overtime'),
	(5, '10003', '2016-10-06', '10/6/2016 9:02:33 AM', '10/6/2016 5:09:00 PM', '8.11', '2.55', '0', '0', 'Regular'),
	(6, '10003', '2016-10-07', '10/7/2016 9:07:34 AM', '10/7/2016 6:55:48 PM', '9.8', '7.57', '0', '1.93', 'Overtime'),
	(7, '10003', '2016-10-08', '10/8/2016 8:07:13 AM', '10/8/2016 5:02:59 PM', '8.05', '0', '0', '0', 'Regular'),
	(8, '10003', '2016-10-10', '10/10/2016 12:05:22 PM', '10/10/2016 8:54:49 PM', '8.82', '0', '0', '3.91', 'Overtime'),
	(9, '10003', '2016-10-11', '10/11/2016 9:03:43 AM', '10/11/2016 5:09:00 PM', '8.09', '3.72', '0', '0', 'Regular'),
	(10, '10003', '2016-10-12', '10/12/2016 8:57:15 AM', '10/12/2016 7:18:41 PM', '10.31', '0', '0', '2.31', 'Overtime'),
	(11, '10003', '2016-10-13', '10/13/2016 9:06:06 AM', '10/13/2016 5:56:29 PM', '8.84', '6.1', '0', '0', 'Regular'),
	(12, '10003', '2016-10-14', '10/14/2016 8:59:51 AM', '10/14/2016 5:34:22 PM', '8.57', '0', '0', '0', 'Regular'),
	(13, '10003', '2016-10-15', '10/15/2016 8:13:53 AM', '10/15/2016 4:33:22 PM', '7.56', '0', '0', '0', 'Regular'),
	(14, '10003', '2016-10-20', '10/20/2016 9:18:00 AM', '10/20/2016 9:07:22 PM', '11.82', '18', '0', '4.12', 'Overtime'),
	(15, '10003', '2016-10-21', '10/21/2016 9:09:58 AM', '10/21/2016 5:40:42 PM', '8.51', '9.97', '0', '0', 'Regular'),
	(16, '10003', '2016-10-22', '10/22/2016 8:11:03 AM', '10/22/2016 5:11:22 PM', '8.19', '0', '0', '0', 'Regular'),
	(17, '10003', '2016-10-24', '10/24/2016 12:01:50 PM', '10/24/2016 6:58:21 PM', '6.94', '0', '0', '1.97', 'Overtime'),
	(18, '10003', '2016-10-25', '10/25/2016 8:58:11 AM', '10/25/2016 8:56:20 PM', '11.94', '0', '0', '3.94', 'Overtime'),
	(19, '10003', '2016-10-26', '10/26/2016 7:20:27 AM', '10/26/2016 9:21:22 PM', '12.36', '0', '0', '4.36', 'Overtime'),
	(20, '10003', '2016-10-27', '10/27/2016 7:20:10 AM', '10/27/2016 8:06:13 PM', '11.1', '0', '0', '3.1', 'Overtime'),
	(21, '10004', '2016-10-01', '10/1/2016 8:09:00 AM', '10/1/2016 5:23:00 PM', '8.38', '0', '0', '2.38', 'Overtime'),
	(22, '10004', '2016-10-03', '10/3/2016 12:22:09 PM', '10/3/2016 6:30:58 PM', '6.15', '0', '0', '1.52', 'Overtime'),
	(23, '10004', '2016-10-04', '10/4/2016 8:37:14 AM', '10/4/2016 5:24:58 PM', '8.42', '0', '0', '0', 'Regular'),
	(24, '10004', '2016-10-05', '10/5/2016 8:35:03 AM', '10/5/2016 6:05:43 PM', '9.1', '0', '0', '1.1', 'Overtime'),
	(25, '10004', '2016-10-06', '10/6/2016 8:03:47 AM', '10/6/2016 6:37:50 PM', '9.63', '0', '0', '1.63', 'Overtime'),
	(26, '10004', '2016-10-07', '10/7/2016 8:31:32 AM', '10/7/2016 6:42:39 PM', '9.71', '0', '0', '1.71', 'Overtime'),
	(27, '10004', '2016-10-08', '10/8/2016 7:20:11 AM', '10/8/2016 5:20:26 PM', '8.34', '0', '0', '2.34', 'Overtime'),
	(28, '10004', '2016-10-10', '10/10/2016 12:39:45 PM', '10/10/2016 5:35:00 PM', '4.92', '0', '0', '0', 'Half day'),
	(29, '10004', '2016-10-11', '10/11/2016 8:33:47 AM', '10/11/2016 5:56:33 PM', '8.94', '0', '0', '0', 'Regular'),
	(30, '10004', '2016-10-12', '10/12/2016 8:29:23 AM', '10/12/2016 6:05:16 PM', '9.09', '0', '0', '1.09', 'Overtime'),
	(31, '10004', '2016-10-13', '10/13/2016 8:35:30 AM', '10/13/2016 6:22:42 PM', '9.38', '0', '0', '1.38', 'Overtime'),
	(32, '10004', '2016-10-14', '10/14/2016 8:27:25 AM', '10/14/2016 6:02:14 PM', '9.04', '0', '0', '1.04', 'Overtime'),
	(33, '10004', '2016-10-15', '10/15/2016 7:25:50 AM', '10/15/2016 4:34:12 PM', '7.57', '0', '0', '1.57', 'Overtime'),
	(34, '10004', '2016-10-17', '10/17/2016 12:32:23 PM', '10/17/2016 5:34:48 PM', '5.04', '0', '0', '0', 'Half day'),
	(35, '10004', '2016-10-18', '10/18/2016 8:33:40 AM', '10/18/2016 6:14:14 PM', '9.24', '0', '0', '1.24', 'Overtime'),
	(36, '10004', '2016-10-19', '10/19/2016 8:34:31 AM', '10/19/2016 5:31:34 PM', '8.53', '0', '0', '0', 'Regular'),
	(37, '10004', '2016-10-20', '10/20/2016 8:36:02 AM', '10/20/2016 6:16:05 PM', '9.27', '0', '0', '1.27', 'Overtime'),
	(38, '10004', '2016-10-21', '10/21/2016 8:37:06 AM', '10/21/2016 6:34:38 PM', '9.58', '0', '0', '1.58', 'Overtime'),
	(39, '10004', '2016-10-22', '10/22/2016 7:33:32 AM', '10/22/2016 4:14:16 PM', '7.24', '0', '0', '1.24', 'Overtime'),
	(40, '10004', '2016-10-24', '10/24/2016 12:35:26 PM', '10/24/2016 5:49:40 PM', '5.24', '0', '0', '0', 'Half day'),
	(41, '10004', '2016-10-25', '10/25/2016 8:13:51 AM', '10/25/2016 6:07:19 PM', '9.12', '0', '0', '1.12', 'Overtime'),
	(42, '10004', '2016-10-26', '10/26/2016 8:40:03 AM', '10/26/2016 5:36:00 PM', '8.6', '0', '0', '0', 'Regular'),
	(43, '10004', '2016-10-27', '10/27/2016 8:23:54 AM', '10/27/2016 8:44:50 PM', '11.75', '0', '0', '3.75', 'Overtime'),
	(44, '10004', '2016-10-28', '10/28/2016 8:31:15 AM', '10/28/2016 6:16:19 PM', '9.27', '0', '0', '1.27', 'Overtime'),
	(45, '10004', '2016-10-29', '10/29/2016 7:35:27 AM', '10/29/2016 4:40:06 PM', '7.67', '0', '0', '1.67', 'Overtime');
/*!40000 ALTER TABLE `tbl_attendance` ENABLE KEYS */;

-- Dumping structure for table hris_payroll.tbl_attendanceraw
DROP TABLE IF EXISTS `tbl_attendanceraw`;
CREATE TABLE IF NOT EXISTS `tbl_attendanceraw` (
  `rawatt_id` int(11) NOT NULL AUTO_INCREMENT,
  `Department` varchar(50) DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `No` varchar(50) DEFAULT NULL,
  `Date_Time` varchar(50) DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  `LogTime` varchar(50) DEFAULT NULL,
  `LogDate` varchar(50) DEFAULT NULL,
  `ifMapped` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`rawatt_id`)
) ENGINE=MyISAM AUTO_INCREMENT=380 DEFAULT CHARSET=latin1;

-- Dumping data for table hris_payroll.tbl_attendanceraw: 375 rows
/*!40000 ALTER TABLE `tbl_attendanceraw` DISABLE KEYS */;
INSERT INTO `tbl_attendanceraw` (`rawatt_id`, `Department`, `Name`, `No`, `Date_Time`, `Status`, `LogTime`, `LogDate`, `ifMapped`) VALUES
	(1, 'MT', 'HUGUETE, LUIS B.', '10003', '10/1/2016 8:09:00 AM', 'C/In', '08:09 AM', '10/01/2016', 1),
	(2, 'MT', 'HUGUETE, LUIS B.', '10003', '10/1/2016 5:23:00 PM', 'C/Out', '05:23 PM', '10/01/2016', 1),
	(3, 'MT', 'HUGUETE, LUIS B.', '10003', '10/3/2016 12:22:22 PM', 'C/In', '12:22 PM', '10/03/2016', 1),
	(4, 'MT', 'HUGUETE, LUIS B.', '10003', '10/3/2016 5:44:10 PM', 'C/Out', '05:44 PM', '10/03/2016', 1),
	(5, 'MT', 'HUGUETE, LUIS B.', '10003', '10/4/2016 7:18:48 AM', 'C/In', '07:18 AM', '10/04/2016', 1),
	(6, 'MT', 'HUGUETE, LUIS B.', '10003', '10/4/2016 7:35:42 PM', 'C/Out', '07:35 PM', '10/04/2016', 1),
	(7, 'MT', 'HUGUETE, LUIS B.', '10003', '10/5/2016 6:06:29 PM', 'C/Out', '06:06 PM', '10/05/2016', 1),
	(8, 'MT', 'HUGUETE, LUIS B.', '10003', '10/6/2016 9:02:33 AM', 'C/In', '09:02 AM', '10/06/2016', 1),
	(9, 'MT', 'HUGUETE, LUIS B.', '10003', '10/7/2016 9:07:34 AM', 'C/In', '09:07 AM', '10/07/2016', 1),
	(10, 'MT', 'HUGUETE, LUIS B.', '10003', '10/7/2016 6:55:48 PM', 'C/Out', '06:55 PM', '10/07/2016', 1),
	(11, 'MT', 'HUGUETE, LUIS B.', '10003', '10/8/2016 8:07:13 AM', 'C/In', '08:07 AM', '10/08/2016', 1),
	(12, 'MT', 'HUGUETE, LUIS B.', '10003', '10/8/2016 5:02:59 PM', 'C/Out', '05:02 PM', '10/08/2016', 1),
	(13, 'MT', 'HUGUETE, LUIS B.', '10003', '10/10/2016 12:05:22 PM', 'C/In', '12:05 PM', '10/10/2016', 1),
	(14, 'MT', 'HUGUETE, LUIS B.', '10003', '10/10/2016 8:54:49 PM', 'C/Out', '08:54 PM', '10/10/2016', 1),
	(15, 'MT', 'HUGUETE, LUIS B.', '10003', '10/11/2016 9:03:43 AM', 'C/In', '09:03 AM', '10/11/2016', 1),
	(16, 'MT', 'HUGUETE, LUIS B.', '10003', '10/12/2016 8:57:15 AM', 'C/In', '08:57 AM', '10/12/2016', 1),
	(17, 'MT', 'HUGUETE, LUIS B.', '10003', '10/12/2016 7:18:41 PM', 'C/Out', '07:18 PM', '10/12/2016', 1),
	(18, 'MT', 'HUGUETE, LUIS B.', '10003', '10/13/2016 9:06:06 AM', 'C/In', '09:06 AM', '10/13/2016', 1),
	(19, 'MT', 'HUGUETE, LUIS B.', '10003', '10/13/2016 5:56:29 PM', 'C/Out', '05:56 PM', '10/13/2016', 1),
	(20, 'MT', 'HUGUETE, LUIS B.', '10003', '10/14/2016 8:59:51 AM', 'C/In', '08:59 AM', '10/14/2016', 1),
	(21, 'MT', 'HUGUETE, LUIS B.', '10003', '10/14/2016 5:34:22 PM', 'C/Out', '05:34 PM', '10/14/2016', 1),
	(22, 'MT', 'HUGUETE, LUIS B.', '10003', '10/15/2016 8:13:53 AM', 'C/In', '08:13 AM', '10/15/2016', 1),
	(23, 'MT', 'HUGUETE, LUIS B.', '10003', '10/15/2016 4:33:22 PM', 'C/Out', '04:33 PM', '10/15/2016', 1),
	(24, 'MT', 'HUGUETE, LUIS B.', '10003', '10/20/2016 9:18:00 AM', 'C/In', '09:18 AM', '10/20/2016', 1),
	(25, 'MT', 'HUGUETE, LUIS B.', '10003', '10/20/2016 9:07:22 PM', 'C/Out', '09:07 PM', '10/20/2016', 1),
	(26, 'MT', 'HUGUETE, LUIS B.', '10003', '10/21/2016 9:09:58 AM', 'C/In', '09:09 AM', '10/21/2016', 1),
	(27, 'MT', 'HUGUETE, LUIS B.', '10003', '10/21/2016 5:40:42 PM', 'C/Out', '05:40 PM', '10/21/2016', 1),
	(28, 'MT', 'HUGUETE, LUIS B.', '10003', '10/22/2016 8:11:03 AM', 'C/In', '08:11 AM', '10/22/2016', 1),
	(29, 'MT', 'HUGUETE, LUIS B.', '10003', '10/22/2016 5:11:22 PM', 'C/Out', '05:11 PM', '10/22/2016', 1),
	(30, 'MT', 'HUGUETE, LUIS B.', '10003', '10/24/2016 12:01:50 PM', 'C/In', '12:01 PM', '10/24/2016', 1),
	(31, 'MT', 'HUGUETE, LUIS B.', '10003', '10/24/2016 6:58:21 PM', 'C/Out', '06:58 PM', '10/24/2016', 1),
	(32, 'MT', 'HUGUETE, LUIS B.', '10003', '10/25/2016 8:58:11 AM', 'C/In', '08:58 AM', '10/25/2016', 1),
	(33, 'MT', 'HUGUETE, LUIS B.', '10003', '10/25/2016 8:56:20 PM', 'C/Out', '08:56 PM', '10/25/2016', 1),
	(34, 'MT', 'HUGUETE, LUIS B.', '10003', '10/26/2016 7:20:27 AM', 'C/In', '07:20 AM', '10/26/2016', 1),
	(35, 'MT', 'HUGUETE, LUIS B.', '10003', '10/26/2016 9:21:22 PM', 'C/Out', '09:21 PM', '10/26/2016', 1),
	(36, 'MT', 'HUGUETE, LUIS B.', '10003', '10/27/2016 7:20:10 AM', 'C/In', '07:20 AM', '10/27/2016', 1),
	(37, 'MT', 'HUGUETE, LUIS B.', '10003', '10/27/2016 8:06:13 PM', 'C/Out', '08:06 PM', '10/27/2016', 1),
	(38, 'MT', 'CANETE, LARRY V.', '10004', '10/1/2016 8:09:00 AM', 'C/In', '08:09 AM', '10/01/2016', 1),
	(39, 'MT', 'CANETE, LARRY V.', '10004', '10/1/2016 5:23:00 PM', 'C/Out', '05:23 PM', '10/01/2016', 1),
	(40, 'MT', 'CANETE, LARRY V.', '10004', '10/3/2016 12:22:09 PM', 'C/In', '12:22 PM', '10/03/2016', 1),
	(41, 'MT', 'CANETE, LARRY V.', '10004', '10/3/2016 6:30:58 PM', 'C/Out', '06:30 PM', '10/03/2016', 1),
	(42, 'MT', 'CANETE, LARRY V.', '10004', '10/4/2016 8:37:14 AM', 'C/In', '08:37 AM', '10/04/2016', 1),
	(43, 'MT', 'CANETE, LARRY V.', '10004', '10/4/2016 5:24:58 PM', 'C/Out', '05:24 PM', '10/04/2016', 1),
	(44, 'MT', 'CANETE, LARRY V.', '10004', '10/5/2016 8:35:03 AM', 'C/In', '08:35 AM', '10/05/2016', 1),
	(45, 'MT', 'CANETE, LARRY V.', '10004', '10/5/2016 6:05:43 PM', 'C/Out', '06:05 PM', '10/05/2016', 1),
	(46, 'MT', 'CANETE, LARRY V.', '10004', '10/6/2016 8:03:47 AM', 'C/In', '08:03 AM', '10/06/2016', 1),
	(47, 'MT', 'CANETE, LARRY V.', '10004', '10/6/2016 6:37:50 PM', 'C/Out', '06:37 PM', '10/06/2016', 1),
	(48, 'MT', 'CANETE, LARRY V.', '10004', '10/7/2016 8:31:32 AM', 'C/In', '08:31 AM', '10/07/2016', 1),
	(49, 'MT', 'CANETE, LARRY V.', '10004', '10/7/2016 6:42:39 PM', 'C/Out', '06:42 PM', '10/07/2016', 1),
	(50, 'MT', 'CANETE, LARRY V.', '10004', '10/8/2016 7:20:11 AM', 'C/In', '07:20 AM', '10/08/2016', 1),
	(51, 'MT', 'CANETE, LARRY V.', '10004', '10/8/2016 5:20:26 PM', 'C/Out', '05:20 PM', '10/08/2016', 1),
	(52, 'MT', 'CANETE, LARRY V.', '10004', '10/10/2016 12:39:45 PM', 'C/In', '12:39 PM', '10/10/2016', 1),
	(53, 'MT', 'CANETE, LARRY V.', '10004', '10/11/2016 8:33:47 AM', 'C/In', '08:33 AM', '10/11/2016', 1),
	(54, 'MT', 'CANETE, LARRY V.', '10004', '10/11/2016 5:56:33 PM', 'C/Out', '05:56 PM', '10/11/2016', 1),
	(55, 'MT', 'CANETE, LARRY V.', '10004', '10/12/2016 8:29:23 AM', 'C/In', '08:29 AM', '10/12/2016', 1),
	(56, 'MT', 'CANETE, LARRY V.', '10004', '10/12/2016 6:05:16 PM', 'C/Out', '06:05 PM', '10/12/2016', 1),
	(57, 'MT', 'CANETE, LARRY V.', '10004', '10/13/2016 8:35:30 AM', 'C/In', '08:35 AM', '10/13/2016', 1),
	(58, 'MT', 'CANETE, LARRY V.', '10004', '10/13/2016 6:22:42 PM', 'C/Out', '06:22 PM', '10/13/2016', 1),
	(59, 'MT', 'CANETE, LARRY V.', '10004', '10/14/2016 8:27:25 AM', 'C/In', '08:27 AM', '10/14/2016', 1),
	(60, 'MT', 'CANETE, LARRY V.', '10004', '10/14/2016 6:02:14 PM', 'C/Out', '06:02 PM', '10/14/2016', 1),
	(61, 'MT', 'CANETE, LARRY V.', '10004', '10/15/2016 7:25:50 AM', 'C/In', '07:25 AM', '10/15/2016', 1),
	(62, 'MT', 'CANETE, LARRY V.', '10004', '10/15/2016 4:34:12 PM', 'C/Out', '04:34 PM', '10/15/2016', 1),
	(63, 'MT', 'CANETE, LARRY V.', '10004', '10/17/2016 12:32:23 PM', 'C/In', '12:32 PM', '10/17/2016', 1),
	(64, 'MT', 'CANETE, LARRY V.', '10004', '10/17/2016 5:34:48 PM', 'C/Out', '05:34 PM', '10/17/2016', 1),
	(65, 'MT', 'CANETE, LARRY V.', '10004', '10/18/2016 8:33:40 AM', 'C/In', '08:33 AM', '10/18/2016', 1),
	(66, 'MT', 'CANETE, LARRY V.', '10004', '10/18/2016 6:14:14 PM', 'C/Out', '06:14 PM', '10/18/2016', 1),
	(67, 'MT', 'CANETE, LARRY V.', '10004', '10/19/2016 8:34:31 AM', 'C/In', '08:34 AM', '10/19/2016', 1),
	(68, 'MT', 'CANETE, LARRY V.', '10004', '10/19/2016 5:31:34 PM', 'C/Out', '05:31 PM', '10/19/2016', 1),
	(69, 'MT', 'CANETE, LARRY V.', '10004', '10/20/2016 8:36:02 AM', 'C/In', '08:36 AM', '10/20/2016', 1),
	(70, 'MT', 'CANETE, LARRY V.', '10004', '10/20/2016 6:16:05 PM', 'C/Out', '06:16 PM', '10/20/2016', 1),
	(71, 'MT', 'CANETE, LARRY V.', '10004', '10/21/2016 8:37:06 AM', 'C/In', '08:37 AM', '10/21/2016', 1),
	(72, 'MT', 'CANETE, LARRY V.', '10004', '10/21/2016 6:34:38 PM', 'C/Out', '06:34 PM', '10/21/2016', 1),
	(73, 'MT', 'CANETE, LARRY V.', '10004', '10/22/2016 7:33:32 AM', 'C/In', '07:33 AM', '10/22/2016', 1),
	(74, 'MT', 'CANETE, LARRY V.', '10004', '10/22/2016 4:14:16 PM', 'C/Out', '04:14 PM', '10/22/2016', 1),
	(75, 'MT', 'CANETE, LARRY V.', '10004', '10/24/2016 12:35:26 PM', 'C/In', '12:35 PM', '10/24/2016', 1),
	(76, 'MT', 'CANETE, LARRY V.', '10004', '10/24/2016 5:49:40 PM', 'C/Out', '05:49 PM', '10/24/2016', 1),
	(77, 'MT', 'CANETE, LARRY V.', '10004', '10/25/2016 8:13:51 AM', 'C/In', '08:13 AM', '10/25/2016', 1),
	(78, 'MT', 'CANETE, LARRY V.', '10004', '10/25/2016 6:07:19 PM', 'C/Out', '06:07 PM', '10/25/2016', 1),
	(79, 'MT', 'CANETE, LARRY V.', '10004', '10/26/2016 8:40:03 AM', 'C/In', '08:40 AM', '10/26/2016', 1),
	(80, 'MT', 'CANETE, LARRY V.', '10004', '10/27/2016 8:23:54 AM', 'C/In', '08:23 AM', '10/27/2016', 1),
	(81, 'MT', 'CANETE, LARRY V.', '10004', '10/27/2016 8:44:50 PM', 'C/Out', '08:44 PM', '10/27/2016', 1),
	(82, 'MT', 'CANETE, LARRY V.', '10004', '10/28/2016 8:31:15 AM', 'C/In', '08:31 AM', '10/28/2016', 1),
	(83, 'MT', 'CANETE, LARRY V.', '10004', '10/28/2016 6:16:19 PM', 'C/Out', '06:16 PM', '10/28/2016', 1),
	(84, 'MT', 'CANETE, LARRY V.', '10004', '10/29/2016 7:35:27 AM', 'C/In', '07:35 AM', '10/29/2016', 1),
	(85, 'MT', 'CANETE, LARRY V.', '10004', '10/29/2016 4:40:06 PM', 'C/Out', '04:40 PM', '10/29/2016', 1),
	(86, 'MT', 'PALO, JULIUS ELMER B.', '10005', '10/1/2016 8:09:00 AM', 'C/In', '08:09 AM', '10/01/2016', 0),
	(87, 'MT', 'PALO, JULIUS ELMER B.', '10005', '10/1/2016 5:23:00 PM', 'C/Out', '05:23 PM', '10/01/2016', 0),
	(88, 'MT', 'PALO, JULIUS ELMER B.', '10005', '10/3/2016 10:16:23 AM', 'C/In', '10:16 AM', '10/03/2016', 0),
	(89, 'MT', 'PALO, JULIUS ELMER B.', '10005', '10/4/2016 9:08:28 AM', 'C/In', '09:08 AM', '10/04/2016', 0),
	(90, 'MT', 'PALO, JULIUS ELMER B.', '10005', '10/5/2016 9:00:01 AM', 'C/In', '09:00 AM', '10/05/2016', 0),
	(91, 'MT', 'PALO, JULIUS ELMER B.', '10005', '10/5/2016 4:59:50 PM', 'C/Out', '04:59 PM', '10/05/2016', 0),
	(92, 'MT', 'PALO, JULIUS ELMER B.', '10005', '10/6/2016 8:48:05 AM', 'C/In', '08:48 AM', '10/06/2016', 0),
	(93, 'MT', 'PALO, JULIUS ELMER B.', '10005', '10/6/2016 5:02:49 PM', 'C/Out', '05:02 PM', '10/06/2016', 0),
	(94, 'MT', 'PALO, JULIUS ELMER B.', '10005', '10/7/2016 8:52:18 AM', 'C/In', '08:52 AM', '10/07/2016', 0),
	(95, 'MT', 'PALO, JULIUS ELMER B.', '10005', '10/7/2016 6:56:02 PM', 'C/Out', '06:56 PM', '10/07/2016', 0),
	(96, 'MT', 'PALO, JULIUS ELMER B.', '10005', '10/8/2016 7:54:31 AM', 'C/In', '07:54 AM', '10/08/2016', 0),
	(97, 'MT', 'PALO, JULIUS ELMER B.', '10005', '10/8/2016 4:29:47 PM', 'C/Out', '04:29 PM', '10/08/2016', 0),
	(98, 'MT', 'PALO, JULIUS ELMER B.', '10005', '10/10/2016 10:13:48 AM', 'C/In', '10:13 AM', '10/10/2016', 0),
	(99, 'MT', 'PALO, JULIUS ELMER B.', '10005', '10/10/2016 5:51:44 PM', 'C/Out', '05:51 PM', '10/10/2016', 0),
	(100, 'MT', 'PALO, JULIUS ELMER B.', '10005', '10/11/2016 8:58:42 AM', 'C/In', '08:58 AM', '10/11/2016', 0),
	(101, 'MT', 'PALO, JULIUS ELMER B.', '10005', '10/11/2016 5:15:43 PM', 'C/Out', '05:15 PM', '10/11/2016', 0),
	(102, 'MT', 'PALO, JULIUS ELMER B.', '10005', '10/12/2016 8:50:33 AM', 'C/In', '08:50 AM', '10/12/2016', 0),
	(103, 'MT', 'PALO, JULIUS ELMER B.', '10005', '10/12/2016 5:08:20 PM', 'C/Out', '05:08 PM', '10/12/2016', 0),
	(104, 'MT', 'PALO, JULIUS ELMER B.', '10005', '10/13/2016 9:00:05 AM', 'C/In', '09:00 AM', '10/13/2016', 0),
	(105, 'MT', 'PALO, JULIUS ELMER B.', '10005', '10/13/2016 5:32:52 PM', 'C/Out', '05:32 PM', '10/13/2016', 0),
	(106, 'MT', 'PALO, JULIUS ELMER B.', '10005', '10/14/2016 8:58:24 AM', 'C/In', '08:58 AM', '10/14/2016', 0),
	(107, 'MT', 'PALO, JULIUS ELMER B.', '10005', '10/14/2016 5:47:40 PM', 'C/Out', '05:47 PM', '10/14/2016', 0),
	(108, 'MT', 'PALO, JULIUS ELMER B.', '10005', '10/15/2016 8:06:35 AM', 'C/In', '08:06 AM', '10/15/2016', 0),
	(109, 'MT', 'PALO, JULIUS ELMER B.', '10005', '10/15/2016 5:01:45 PM', 'C/Out', '05:01 PM', '10/15/2016', 0),
	(110, 'MT', 'PALO, JULIUS ELMER B.', '10005', '10/17/2016 11:03:27 AM', 'C/In', '11:03 AM', '10/17/2016', 0),
	(111, 'MT', 'PALO, JULIUS ELMER B.', '10005', '10/17/2016 5:04:21 PM', 'C/In', '05:04 PM', '10/17/2016', 0),
	(112, 'MT', 'PALO, JULIUS ELMER B.', '10005', '10/18/2016 9:02:08 AM', 'C/In', '09:02 AM', '10/18/2016', 0),
	(113, 'MT', 'PALO, JULIUS ELMER B.', '10005', '10/18/2016 5:32:37 PM', 'C/Out', '05:32 PM', '10/18/2016', 0),
	(114, 'MT', 'PALO, JULIUS ELMER B.', '10005', '10/19/2016 8:36:15 AM', 'C/In', '08:36 AM', '10/19/2016', 0),
	(115, 'MT', 'PALO, JULIUS ELMER B.', '10005', '10/19/2016 5:10:22 PM', 'C/Out', '05:10 PM', '10/19/2016', 0),
	(116, 'MT', 'PALO, JULIUS ELMER B.', '10005', '10/20/2016 8:50:13 AM', 'C/In', '08:50 AM', '10/20/2016', 0),
	(117, 'MT', 'PALO, JULIUS ELMER B.', '10005', '10/20/2016 7:47:57 PM', 'C/Out', '07:47 PM', '10/20/2016', 0),
	(118, 'MT', 'PALO, JULIUS ELMER B.', '10005', '10/21/2016 8:48:21 AM', 'C/In', '08:48 AM', '10/21/2016', 0),
	(119, 'MT', 'PALO, JULIUS ELMER B.', '10005', '10/21/2016 6:16:18 PM', 'C/Out', '06:16 PM', '10/21/2016', 0),
	(120, 'MT', 'PALO, JULIUS ELMER B.', '10005', '10/22/2016 8:18:09 AM', 'C/In', '08:18 AM', '10/22/2016', 0),
	(121, 'MT', 'PALO, JULIUS ELMER B.', '10005', '10/22/2016 4:16:36 PM', 'C/Out', '04:16 PM', '10/22/2016', 0),
	(122, 'MT', 'PALO, JULIUS ELMER B.', '10005', '10/24/2016 11:30:29 AM', 'C/In', '11:30 AM', '10/24/2016', 0),
	(123, 'MT', 'PALO, JULIUS ELMER B.', '10005', '10/24/2016 5:04:55 PM', 'C/Out', '05:04 PM', '10/24/2016', 0),
	(124, 'MT', 'PALO, JULIUS ELMER B.', '10005', '10/25/2016 9:11:19 AM', 'C/In', '09:11 AM', '10/25/2016', 0),
	(125, 'MT', 'PALO, JULIUS ELMER B.', '10005', '10/25/2016 5:23:21 PM', 'C/Out', '05:23 PM', '10/25/2016', 0),
	(126, 'MT', 'PALO, JULIUS ELMER B.', '10005', '10/26/2016 8:57:42 AM', 'C/In', '08:57 AM', '10/26/2016', 0),
	(127, 'MT', 'PALO, JULIUS ELMER B.', '10005', '10/26/2016 5:32:43 PM', 'C/Out', '05:32 PM', '10/26/2016', 0),
	(128, 'MT', 'PALO, JULIUS ELMER B.', '10005', '10/27/2016 9:01:45 AM', 'C/In', '09:01 AM', '10/27/2016', 0),
	(129, 'MT', 'PALO, JULIUS ELMER B.', '10005', '10/27/2016 5:04:12 PM', 'C/Out', '05:04 PM', '10/27/2016', 0),
	(130, 'MT', 'PALO, JULIUS ELMER B.', '10005', '10/28/2016 8:44:59 AM', 'C/In', '08:44 AM', '10/28/2016', 0),
	(131, 'MT', 'PALO, JULIUS ELMER B.', '10005', '10/28/2016 5:39:30 PM', 'C/Out', '05:39 PM', '10/28/2016', 0),
	(132, 'MT', 'PALO, JULIUS ELMER B.', '10005', '10/29/2016 7:46:18 AM', 'C/In', '07:46 AM', '10/29/2016', 0),
	(133, 'MT', 'PALO, JULIUS ELMER B.', '10005', '10/29/2016 4:49:32 PM', 'C/Out', '04:49 PM', '10/29/2016', 0),
	(134, 'MT', 'TAGUENCA, FERDINAND M.', '10006', '10/1/2016 8:09:00 AM', 'C/In', '08:09 AM', '10/01/2016', 0),
	(135, 'MT', 'TAGUENCA, FERDINAND M.', '10006', '10/1/2016 5:23:00 PM', 'C/Out', '05:23 PM', '10/01/2016', 0),
	(136, 'MT', 'TAGUENCA, FERDINAND M.', '10006', '10/1/2016 5:23:00 PM', 'C/Out', '05:23 PM', '10/01/2016', 0),
	(137, 'MT', 'TAGUENCA, FERDINAND M.', '10006', '10/5/2016 8:00:09 AM', 'C/In', '08:00 AM', '10/05/2016', 0),
	(138, 'MT', 'TAGUENCA, FERDINAND M.', '10006', '10/6/2016 8:49:13 AM', 'C/In', '08:49 AM', '10/06/2016', 0),
	(139, 'MT', 'TAGUENCA, FERDINAND M.', '10006', '10/7/2016 8:23:41 AM', 'C/In', '08:23 AM', '10/07/2016', 0),
	(140, 'MT', 'TAGUENCA, FERDINAND M.', '10006', '10/8/2016 8:41:57 AM', 'C/In', '08:41 AM', '10/08/2016', 0),
	(141, 'MT', 'TAGUENCA, FERDINAND M.', '10006', '10/10/2016 8:19:51 AM', 'C/In', '08:19 AM', '10/10/2016', 0),
	(142, 'MT', 'TAGUENCA, FERDINAND M.', '10006', '10/10/2016 5:01:28 PM', 'C/Out', '05:01 PM', '10/10/2016', 0),
	(143, 'MT', 'TAGUENCA, FERDINAND M.', '10006', '10/11/2016 8:02:13 AM', 'C/In', '08:02 AM', '10/11/2016', 0),
	(144, 'MT', 'TAGUENCA, FERDINAND M.', '10006', '10/11/2016 6:21:13 PM', 'C/Out', '06:21 PM', '10/11/2016', 0),
	(145, 'MT', 'TAGUENCA, FERDINAND M.', '10006', '10/12/2016 8:12:00 AM', 'C/In', '08:12 AM', '10/12/2016', 0),
	(146, 'MT', 'TAGUENCA, FERDINAND M.', '10006', '10/17/2016 8:00:08 AM', 'C/In', '08:00 AM', '10/17/2016', 0),
	(147, 'MT', 'TAGUENCA, FERDINAND M.', '10006', '10/24/2016 8:02:09 AM', 'C/Out', '08:02 AM', '10/24/2016', 0),
	(148, 'MT', 'TAGUENCA, FERDINAND M.', '10006', '10/24/2016 8:02:27 AM', 'C/In', '08:02 AM', '10/24/2016', 0),
	(149, 'MT', 'TAGUENCA, FERDINAND M.', '10006', '10/24/2016 5:00:30 PM', 'C/Out', '05:00 PM', '10/24/2016', 0),
	(150, 'MT', 'TAGUENCA, FERDINAND M.', '10006', '10/25/2016 8:08:39 AM', 'C/In', '08:08 AM', '10/25/2016', 0),
	(151, 'MT', 'TAGUENCA, FERDINAND M.', '10006', '10/25/2016 5:00:54 PM', 'C/Out', '05:00 PM', '10/25/2016', 0),
	(152, 'MT', 'TAGUENCA, FERDINAND M.', '10006', '10/26/2016 8:13:26 AM', 'C/In', '08:13 AM', '10/26/2016', 0),
	(153, 'MT', 'TAGUENCA, FERDINAND M.', '10006', '10/27/2016 10:00:16 AM', 'C/In', '10:00 AM', '10/27/2016', 0),
	(154, 'MT', 'TAGUENCA, FERDINAND M.', '10006', '10/28/2016 8:39:55 AM', 'C/In', '08:39 AM', '10/28/2016', 0),
	(155, 'MT', 'TAGUENCA, FERDINAND M.', '10006', '10/28/2016 5:27:44 PM', 'C/Out', '05:27 PM', '10/28/2016', 0),
	(156, 'MT', 'TAGUENCA, FERDINAND M.', '10006', '10/29/2016 7:52:58 AM', 'C/In', '07:52 AM', '10/29/2016', 0),
	(157, 'MT', 'TAGUENCA, FERDINAND M.', '10006', '10/29/2016 3:24:44 PM', 'C/Out', '03:24 PM', '10/29/2016', 0),
	(158, 'MT', 'ABUELA, REGGIE MAE', '10007', '10/1/2016 8:09:00 AM', 'C/In', '08:09 AM', '10/01/2016', 0),
	(159, 'MT', 'ABUELA, REGGIE MAE', '10007', '10/1/2016 5:23:00 PM', 'C/Out', '05:23 PM', '10/01/2016', 0),
	(160, 'MT', 'ABUELA, REGGIE MAE', '10007', '10/3/2016 12:32:37 PM', 'C/In', '12:32 PM', '10/03/2016', 0),
	(161, 'MT', 'ABUELA, REGGIE MAE', '10007', '10/3/2016 5:47:59 PM', 'C/Out', '05:47 PM', '10/03/2016', 0),
	(162, 'MT', 'ABUELA, REGGIE MAE', '10007', '10/4/2016 9:07:44 AM', 'C/In', '09:07 AM', '10/04/2016', 0),
	(163, 'MT', 'ABUELA, REGGIE MAE', '10007', '10/4/2016 6:31:07 PM', 'C/Out', '06:31 PM', '10/04/2016', 0),
	(164, 'MT', 'ABUELA, REGGIE MAE', '10007', '10/5/2016 8:46:43 AM', 'C/In', '08:46 AM', '10/05/2016', 0),
	(165, 'MT', 'ABUELA, REGGIE MAE', '10007', '10/5/2016 5:43:32 PM', 'C/Out', '05:43 PM', '10/05/2016', 0),
	(166, 'MT', 'ABUELA, REGGIE MAE', '10007', '10/6/2016 8:49:26 AM', 'C/In', '08:49 AM', '10/06/2016', 0),
	(167, 'MT', 'ABUELA, REGGIE MAE', '10007', '10/6/2016 5:18:10 PM', 'C/Out', '05:18 PM', '10/06/2016', 0),
	(168, 'MT', 'ABUELA, REGGIE MAE', '10007', '10/7/2016 8:58:01 AM', 'C/In', '08:58 AM', '10/07/2016', 0),
	(169, 'MT', 'ABUELA, REGGIE MAE', '10007', '10/7/2016 5:45:32 PM', 'C/Out', '05:45 PM', '10/07/2016', 0),
	(170, 'MT', 'ABUELA, REGGIE MAE', '10007', '10/8/2016 8:08:23 AM', 'C/In', '08:08 AM', '10/08/2016', 0),
	(171, 'MT', 'ABUELA, REGGIE MAE', '10007', '10/8/2016 5:10:26 PM', 'C/Out', '05:10 PM', '10/08/2016', 0),
	(172, 'MT', 'ABUELA, REGGIE MAE', '10007', '10/10/2016 12:53:23 PM', 'C/In', '12:53 PM', '10/10/2016', 0),
	(173, 'MT', 'ABUELA, REGGIE MAE', '10007', '10/10/2016 5:54:58 PM', 'C/Out', '05:54 PM', '10/10/2016', 0),
	(174, 'MT', 'ABUELA, REGGIE MAE', '10007', '10/11/2016 8:50:50 AM', 'C/In', '08:50 AM', '10/11/2016', 0),
	(175, 'MT', 'ABUELA, REGGIE MAE', '10007', '10/11/2016 6:15:08 PM', 'C/Out', '06:15 PM', '10/11/2016', 0),
	(176, 'MT', 'ABUELA, REGGIE MAE', '10007', '10/12/2016 8:55:01 AM', 'C/In', '08:55 AM', '10/12/2016', 0),
	(177, 'MT', 'ABUELA, REGGIE MAE', '10007', '10/12/2016 5:00:29 PM', 'C/In', '05:00 PM', '10/12/2016', 0),
	(178, 'MT', 'ABUELA, REGGIE MAE', '10007', '10/13/2016 8:54:02 AM', 'C/In', '08:54 AM', '10/13/2016', 0),
	(179, 'MT', 'ABUELA, REGGIE MAE', '10007', '10/13/2016 5:40:50 PM', 'C/Out', '05:40 PM', '10/13/2016', 0),
	(180, 'MT', 'ABUELA, REGGIE MAE', '10007', '10/14/2016 8:58:07 AM', 'C/In', '08:58 AM', '10/14/2016', 0),
	(181, 'MT', 'ABUELA, REGGIE MAE', '10007', '10/14/2016 6:02:19 PM', 'C/Out', '06:02 PM', '10/14/2016', 0),
	(182, 'MT', 'ABUELA, REGGIE MAE', '10007', '10/15/2016 7:48:22 AM', 'C/In', '07:48 AM', '10/15/2016', 0),
	(183, 'MT', 'ABUELA, REGGIE MAE', '10007', '10/15/2016 6:19:24 PM', 'C/Out', '06:19 PM', '10/15/2016', 0),
	(184, 'MT', 'ABUELA, REGGIE MAE', '10007', '10/17/2016 12:48:11 PM', 'C/In', '12:48 PM', '10/17/2016', 0),
	(185, 'MT', 'ABUELA, REGGIE MAE', '10007', '10/17/2016 6:36:54 PM', 'C/Out', '06:36 PM', '10/17/2016', 0),
	(186, 'MT', 'ABUELA, REGGIE MAE', '10007', '10/18/2016 8:06:48 AM', 'C/In', '08:06 AM', '10/18/2016', 0),
	(187, 'MT', 'ABUELA, REGGIE MAE', '10007', '10/18/2016 5:24:37 PM', 'C/Out', '05:24 PM', '10/18/2016', 0),
	(188, 'MT', 'ABUELA, REGGIE MAE', '10007', '10/19/2016 8:18:48 AM', 'C/In', '08:18 AM', '10/19/2016', 0),
	(189, 'MT', 'ABUELA, REGGIE MAE', '10007', '10/20/2016 8:54:55 AM', 'C/In', '08:54 AM', '10/20/2016', 0),
	(190, 'MT', 'ABUELA, REGGIE MAE', '10007', '10/20/2016 7:55:23 PM', 'C/Out', '07:55 PM', '10/20/2016', 0),
	(191, 'MT', 'ABUELA, REGGIE MAE', '10007', '10/21/2016 8:49:23 AM', 'C/In', '08:49 AM', '10/21/2016', 0),
	(192, 'MT', 'ABUELA, REGGIE MAE', '10007', '10/21/2016 5:49:08 PM', 'C/Out', '05:49 PM', '10/21/2016', 0),
	(193, 'MT', 'ABUELA, REGGIE MAE', '10007', '10/22/2016 8:07:06 AM', 'C/In', '08:07 AM', '10/22/2016', 0),
	(194, 'MT', 'ABUELA, REGGIE MAE', '10007', '10/22/2016 4:30:36 PM', 'C/Out', '04:30 PM', '10/22/2016', 0),
	(195, 'MT', 'ABUELA, REGGIE MAE', '10007', '10/24/2016 12:43:18 PM', 'C/In', '12:43 PM', '10/24/2016', 0),
	(196, 'MT', 'ABUELA, REGGIE MAE', '10007', '10/24/2016 5:39:27 PM', 'C/Out', '05:39 PM', '10/24/2016', 0),
	(197, 'MT', 'ABUELA, REGGIE MAE', '10007', '10/25/2016 8:50:08 AM', 'C/In', '08:50 AM', '10/25/2016', 0),
	(198, 'MT', 'ABUELA, REGGIE MAE', '10007', '10/25/2016 5:23:02 PM', 'C/Out', '05:23 PM', '10/25/2016', 0),
	(199, 'MT', 'ABUELA, REGGIE MAE', '10007', '10/26/2016 8:45:16 AM', 'C/In', '08:45 AM', '10/26/2016', 0),
	(200, 'MT', 'ABUELA, REGGIE MAE', '10007', '10/26/2016 5:49:14 PM', 'C/Out', '05:49 PM', '10/26/2016', 0),
	(201, 'MT', 'ABUELA, REGGIE MAE', '10007', '10/27/2016 8:45:07 AM', 'C/In', '08:45 AM', '10/27/2016', 0),
	(202, 'MT', 'ABUELA, REGGIE MAE', '10007', '10/27/2016 6:49:50 PM', 'C/Out', '06:49 PM', '10/27/2016', 0),
	(203, 'MT', 'ABUELA, REGGIE MAE', '10007', '10/28/2016 8:50:24 AM', 'C/In', '08:50 AM', '10/28/2016', 0),
	(204, 'MT', 'ABUELA, REGGIE MAE', '10007', '10/28/2016 6:21:19 PM', 'C/Out', '06:21 PM', '10/28/2016', 0),
	(205, 'MT', 'ABUELA, REGGIE MAE', '10007', '10/29/2016 7:53:40 AM', 'C/In', '07:53 AM', '10/29/2016', 0),
	(206, 'MT', 'ABUELA, REGGIE MAE', '10007', '10/29/2016 4:49:28 PM', 'C/Out', '04:49 PM', '10/29/2016', 0),
	(207, 'MT', 'KCT', '10008', '10/1/2016 8:09:00 AM', 'C/In', '08:09 AM', '10/01/2016', 0),
	(208, 'MT', 'KCT', '10008', '10/1/2016 5:23:00 PM', 'C/Out', '05:23 PM', '10/01/2016', 0),
	(209, 'MT', 'KCT', '10008', '10/3/2016 12:35:02 PM', 'C/In', '12:35 PM', '10/03/2016', 0),
	(210, 'MT', 'KCT', '10008', '10/3/2016 5:48:03 PM', 'C/Out', '05:48 PM', '10/03/2016', 0),
	(211, 'MT', 'KCT', '10008', '10/4/2016 8:47:12 AM', 'C/In', '08:47 AM', '10/04/2016', 0),
	(212, 'MT', 'KCT', '10008', '10/4/2016 6:00:32 PM', 'C/Out', '06:00 PM', '10/04/2016', 0),
	(213, 'MT', 'KCT', '10008', '10/5/2016 8:55:57 AM', 'C/In', '08:55 AM', '10/05/2016', 0),
	(214, 'MT', 'KCT', '10008', '10/5/2016 5:43:36 PM', 'C/Out', '05:43 PM', '10/05/2016', 0),
	(215, 'MT', 'KCT', '10008', '10/6/2016 8:49:05 AM', 'C/In', '08:49 AM', '10/06/2016', 0),
	(216, 'MT', 'KCT', '10008', '10/6/2016 5:18:14 PM', 'C/Out', '05:18 PM', '10/06/2016', 0),
	(217, 'MT', 'KCT', '10008', '10/7/2016 8:31:40 AM', 'C/In', '08:31 AM', '10/07/2016', 0),
	(218, 'MT', 'KCT', '10008', '10/7/2016 5:24:14 PM', 'C/Out', '05:24 PM', '10/07/2016', 0),
	(219, 'MT', 'KCT', '10008', '10/8/2016 7:41:54 AM', 'C/In', '07:41 AM', '10/08/2016', 0),
	(220, 'MT', 'KCT', '10008', '10/8/2016 4:40:45 PM', 'C/Out', '04:40 PM', '10/08/2016', 0),
	(221, 'MT', 'KCT', '10008', '10/10/2016 12:39:00 PM', 'C/In', '12:39 PM', '10/10/2016', 0),
	(222, 'MT', 'KCT', '10008', '10/10/2016 5:50:19 PM', 'C/Out', '05:50 PM', '10/10/2016', 0),
	(223, 'MT', 'KCT', '10008', '10/11/2016 8:51:17 AM', 'C/In', '08:51 AM', '10/11/2016', 0),
	(224, 'MT', 'KCT', '10008', '10/11/2016 5:25:51 PM', 'C/Out', '05:25 PM', '10/11/2016', 0),
	(225, 'MT', 'KCT', '10008', '10/12/2016 8:38:08 AM', 'C/In', '08:38 AM', '10/12/2016', 0),
	(226, 'MT', 'KCT', '10008', '10/12/2016 5:27:22 PM', 'C/Out', '05:27 PM', '10/12/2016', 0),
	(227, 'MT', 'KCT', '10008', '10/13/2016 8:48:42 AM', 'C/In', '08:48 AM', '10/13/2016', 0),
	(228, 'MT', 'KCT', '10008', '10/13/2016 5:40:44 PM', 'C/Out', '05:40 PM', '10/13/2016', 0),
	(229, 'MT', 'KCT', '10008', '10/14/2016 8:43:56 AM', 'C/In', '08:43 AM', '10/14/2016', 0),
	(230, 'MT', 'KCT', '10008', '10/14/2016 5:34:08 PM', 'C/Out', '05:34 PM', '10/14/2016', 0),
	(231, 'MT', 'KCT', '10008', '10/15/2016 7:53:00 AM', 'C/In', '07:53 AM', '10/15/2016', 0),
	(232, 'MT', 'KCT', '10008', '10/15/2016 5:25:11 PM', 'C/Out', '05:25 PM', '10/15/2016', 0),
	(233, 'MT', 'KCT', '10008', '10/17/2016 12:47:29 PM', 'C/In', '12:47 PM', '10/17/2016', 0),
	(234, 'MT', 'KCT', '10008', '10/17/2016 5:19:19 PM', 'C/Out', '05:19 PM', '10/17/2016', 0),
	(235, 'MT', 'KCT', '10008', '10/18/2016 8:43:23 AM', 'C/In', '08:43 AM', '10/18/2016', 0),
	(236, 'MT', 'KCT', '10008', '10/19/2016 8:35:15 AM', 'C/In', '08:35 AM', '10/19/2016', 0),
	(237, 'MT', 'KCT', '10008', '10/19/2016 5:09:30 PM', 'C/Out', '05:09 PM', '10/19/2016', 0),
	(238, 'MT', 'KCT', '10008', '10/20/2016 8:30:48 AM', 'C/In', '08:30 AM', '10/20/2016', 0),
	(239, 'MT', 'KCT', '10008', '10/20/2016 7:48:40 PM', 'C/Out', '07:48 PM', '10/20/2016', 0),
	(240, 'MT', 'KCT', '10008', '10/21/2016 8:48:31 AM', 'C/In', '08:48 AM', '10/21/2016', 0),
	(241, 'MT', 'KCT', '10008', '10/21/2016 5:49:10 PM', 'C/Out', '05:49 PM', '10/21/2016', 0),
	(242, 'MT', 'KCT', '10008', '10/22/2016 7:36:38 AM', 'C/In', '07:36 AM', '10/22/2016', 0),
	(243, 'MT', 'KCT', '10008', '10/22/2016 4:30:40 PM', 'C/Out', '04:30 PM', '10/22/2016', 0),
	(244, 'MT', 'KCT', '10008', '10/24/2016 12:24:42 PM', 'C/In', '12:24 PM', '10/24/2016', 0),
	(245, 'MT', 'KCT', '10008', '10/24/2016 5:39:23 PM', 'C/Out', '05:39 PM', '10/24/2016', 0),
	(246, 'MT', 'KCT', '10008', '10/25/2016 8:43:29 AM', 'C/In', '08:43 AM', '10/25/2016', 0),
	(247, 'MT', 'KCT', '10008', '10/25/2016 5:23:10 PM', 'C/Out', '05:23 PM', '10/25/2016', 0),
	(248, 'MT', 'KCT', '10008', '10/26/2016 8:30:03 AM', 'C/In', '08:30 AM', '10/26/2016', 0),
	(249, 'MT', 'KCT', '10008', '10/26/2016 5:16:15 PM', 'C/Out', '05:16 PM', '10/26/2016', 0),
	(250, 'MT', 'KCT', '10008', '10/27/2016 8:39:58 AM', 'C/In', '08:39 AM', '10/27/2016', 0),
	(251, 'MT', 'KCT', '10008', '10/27/2016 5:08:46 PM', 'C/Out', '05:08 PM', '10/27/2016', 0),
	(252, 'MT', 'KCT', '10008', '10/28/2016 8:39:44 AM', 'C/In', '08:39 AM', '10/28/2016', 0),
	(253, 'MT', 'KCT', '10008', '10/28/2016 5:37:42 PM', 'C/Out', '05:37 PM', '10/28/2016', 0),
	(254, 'MT', 'KCT', '10008', '10/29/2016 7:53:18 AM', 'C/In', '07:53 AM', '10/29/2016', 0),
	(255, 'MT', 'KCT', '10008', '10/29/2016 4:31:15 PM', 'C/Out', '04:31 PM', '10/29/2016', 0),
	(256, 'MT', 'PALOMA, EMILY P.', '10011', '10/1/2016 8:09:00 AM', 'C/In', '08:09 AM', '10/01/2016', 0),
	(257, 'MT', 'PALOMA, EMILY P.', '10011', '10/1/2016 5:23:00 PM', 'C/Out', '05:23 PM', '10/01/2016', 0),
	(258, 'MT', 'PALOMA, EMILY P.', '10011', '10/3/2016 10:07:25 AM', 'C/In', '10:07 AM', '10/03/2016', 0),
	(259, 'MT', 'PALOMA, EMILY P.', '10011', '10/3/2016 5:25:23 PM', 'C/Out', '05:25 PM', '10/03/2016', 0),
	(260, 'MT', 'PALOMA, EMILY P.', '10011', '10/4/2016 8:47:27 AM', 'C/In', '08:47 AM', '10/04/2016', 0),
	(261, 'MT', 'PALOMA, EMILY P.', '10011', '10/4/2016 5:30:43 PM', 'C/Out', '05:30 PM', '10/04/2016', 0),
	(262, 'MT', 'PALOMA, EMILY P.', '10011', '10/5/2016 8:42:42 AM', 'C/In', '08:42 AM', '10/05/2016', 0),
	(263, 'MT', 'PALOMA, EMILY P.', '10011', '10/5/2016 5:06:06 PM', 'C/Out', '05:06 PM', '10/05/2016', 0),
	(264, 'MT', 'PALOMA, EMILY P.', '10011', '10/6/2016 8:46:29 AM', 'C/In', '08:46 AM', '10/06/2016', 0),
	(265, 'MT', 'PALOMA, EMILY P.', '10011', '10/6/2016 5:22:01 PM', 'C/Out', '05:22 PM', '10/06/2016', 0),
	(266, 'MT', 'PALOMA, EMILY P.', '10011', '10/7/2016 8:55:10 AM', 'C/In', '08:55 AM', '10/07/2016', 0),
	(267, 'MT', 'PALOMA, EMILY P.', '10011', '10/7/2016 5:28:26 PM', 'C/Out', '05:28 PM', '10/07/2016', 0),
	(268, 'MT', 'PALOMA, EMILY P.', '10011', '10/8/2016 8:18:25 AM', 'C/In', '08:18 AM', '10/08/2016', 0),
	(269, 'MT', 'PALOMA, EMILY P.', '10011', '10/8/2016 4:40:57 PM', 'C/Out', '04:40 PM', '10/08/2016', 0),
	(270, 'MT', 'PALOMA, EMILY P.', '10011', '10/10/2016 9:22:39 AM', 'C/In', '09:22 AM', '10/10/2016', 0),
	(271, 'MT', 'PALOMA, EMILY P.', '10011', '10/10/2016 5:17:24 PM', 'C/Out', '05:17 PM', '10/10/2016', 0),
	(272, 'MT', 'PALOMA, EMILY P.', '10011', '10/11/2016 8:50:29 AM', 'C/In', '08:50 AM', '10/11/2016', 0),
	(273, 'MT', 'PALOMA, EMILY P.', '10011', '10/11/2016 5:14:13 PM', 'C/Out', '05:14 PM', '10/11/2016', 0),
	(274, 'MT', 'PALOMA, EMILY P.', '10011', '10/12/2016 8:42:26 AM', 'C/In', '08:42 AM', '10/12/2016', 0),
	(275, 'MT', 'PALOMA, EMILY P.', '10011', '10/12/2016 5:00:10 PM', 'C/In', '05:00 PM', '10/12/2016', 0),
	(276, 'MT', 'PALOMA, EMILY P.', '10011', '10/13/2016 8:31:01 AM', 'C/In', '08:31 AM', '10/13/2016', 0),
	(277, 'MT', 'PALOMA, EMILY P.', '10011', '10/13/2016 5:13:30 PM', 'C/Out', '05:13 PM', '10/13/2016', 0),
	(278, 'MT', 'PALOMA, EMILY P.', '10011', '10/14/2016 8:40:53 AM', 'C/In', '08:40 AM', '10/14/2016', 0),
	(279, 'MT', 'PALOMA, EMILY P.', '10011', '10/14/2016 5:11:59 PM', 'C/Out', '05:11 PM', '10/14/2016', 0),
	(280, 'MT', 'PALOMA, EMILY P.', '10011', '10/15/2016 7:15:49 AM', 'C/In', '07:15 AM', '10/15/2016', 0),
	(281, 'MT', 'PALOMA, EMILY P.', '10011', '10/15/2016 4:07:49 PM', 'C/Out', '04:07 PM', '10/15/2016', 0),
	(282, 'MT', 'PALOMA, EMILY P.', '10011', '10/17/2016 11:48:44 AM', 'C/In', '11:48 AM', '10/17/2016', 0),
	(283, 'MT', 'PALOMA, EMILY P.', '10011', '10/17/2016 5:18:58 PM', 'C/Out', '05:18 PM', '10/17/2016', 0),
	(284, 'MT', 'PALOMA, EMILY P.', '10011', '10/18/2016 8:38:19 AM', 'C/In', '08:38 AM', '10/18/2016', 0),
	(285, 'MT', 'PALOMA, EMILY P.', '10011', '10/18/2016 5:17:43 PM', 'C/Out', '05:17 PM', '10/18/2016', 0),
	(286, 'MT', 'PALOMA, EMILY P.', '10011', '10/19/2016 8:37:00 AM', 'C/In', '08:37 AM', '10/19/2016', 0),
	(287, 'MT', 'PALOMA, EMILY P.', '10011', '10/19/2016 5:14:47 PM', 'C/Out', '05:14 PM', '10/19/2016', 0),
	(288, 'MT', 'PALOMA, EMILY P.', '10011', '10/20/2016 8:44:28 AM', 'C/In', '08:44 AM', '10/20/2016', 0),
	(289, 'MT', 'PALOMA, EMILY P.', '10011', '10/20/2016 5:13:13 PM', 'C/Out', '05:13 PM', '10/20/2016', 0),
	(290, 'MT', 'PALOMA, EMILY P.', '10011', '10/21/2016 8:38:59 AM', 'C/In', '08:38 AM', '10/21/2016', 0),
	(291, 'MT', 'PALOMA, EMILY P.', '10011', '10/21/2016 5:11:56 PM', 'C/Out', '05:11 PM', '10/21/2016', 0),
	(292, 'MT', 'PALOMA, EMILY P.', '10011', '10/22/2016 7:43:50 AM', 'C/In', '07:43 AM', '10/22/2016', 0),
	(293, 'MT', 'PALOMA, EMILY P.', '10011', '10/22/2016 4:50:12 PM', 'C/Out', '04:50 PM', '10/22/2016', 0),
	(294, 'MT', 'PALOMA, EMILY P.', '10011', '10/24/2016 10:12:07 AM', 'C/In', '10:12 AM', '10/24/2016', 0),
	(295, 'MT', 'PALOMA, EMILY P.', '10011', '10/24/2016 5:36:56 PM', 'C/Out', '05:36 PM', '10/24/2016', 0),
	(296, 'MT', 'PALOMA, EMILY P.', '10011', '10/25/2016 8:52:40 AM', 'C/In', '08:52 AM', '10/25/2016', 0),
	(297, 'MT', 'PALOMA, EMILY P.', '10011', '10/25/2016 5:10:34 PM', 'C/Out', '05:10 PM', '10/25/2016', 0),
	(298, 'MT', 'PALOMA, EMILY P.', '10011', '10/26/2016 8:56:32 AM', 'C/In', '08:56 AM', '10/26/2016', 0),
	(299, 'MT', 'PALOMA, EMILY P.', '10011', '10/26/2016 5:18:42 PM', 'C/Out', '05:18 PM', '10/26/2016', 0),
	(300, 'MT', 'PALOMA, EMILY P.', '10011', '10/27/2016 8:58:21 AM', 'C/In', '08:58 AM', '10/27/2016', 0),
	(301, 'MT', 'PALOMA, EMILY P.', '10011', '10/27/2016 5:28:56 PM', 'C/Out', '05:28 PM', '10/27/2016', 0),
	(302, 'MT', 'PALOMA, EMILY P.', '10011', '10/28/2016 12:35:53 PM', 'C/In', '12:35 PM', '10/28/2016', 0),
	(303, 'MT', 'PALOMA, EMILY P.', '10011', '10/28/2016 7:07:22 PM', 'C/Out', '07:07 PM', '10/28/2016', 0),
	(304, 'MT', 'PALOMA, EMILY P.', '10011', '10/29/2016 7:54:57 AM', 'C/In', '07:54 AM', '10/29/2016', 0),
	(305, 'MT', 'PALOMA, EMILY P.', '10011', '10/29/2016 12:51:34 PM', 'C/Out', '12:51 PM', '10/29/2016', 0),
	(306, 'MT', 'TABAMO, LINDSEY B.', '10012', '10/3/2016 8:48:53 AM', 'C/In', '08:48 AM', '10/03/2016', 0),
	(307, 'MT', 'TABAMO, LINDSEY B.', '10012', '10/3/2016 6:11:33 PM', 'C/Out', '06:11 PM', '10/03/2016', 0),
	(308, 'MT', 'TABAMO, LINDSEY B.', '10012', '10/4/2016 7:53:18 AM', 'C/In', '07:53 AM', '10/04/2016', 0),
	(309, 'MT', 'TABAMO, LINDSEY B.', '10012', '10/4/2016 6:31:15 PM', 'C/Out', '06:31 PM', '10/04/2016', 0),
	(310, 'MT', 'TABAMO, LINDSEY B.', '10012', '10/5/2016 7:59:31 AM', 'C/In', '07:59 AM', '10/05/2016', 0),
	(311, 'MT', 'TABAMO, LINDSEY B.', '10012', '10/5/2016 6:51:55 PM', 'C/Out', '06:51 PM', '10/05/2016', 0),
	(312, 'MT', 'TABAMO, LINDSEY B.', '10012', '10/6/2016 7:52:19 AM', 'C/In', '07:52 AM', '10/06/2016', 0),
	(313, 'MT', 'TABAMO, LINDSEY B.', '10012', '10/6/2016 5:45:52 PM', 'C/Out', '05:45 PM', '10/06/2016', 0),
	(314, 'MT', 'TABAMO, LINDSEY B.', '10012', '10/7/2016 7:57:34 AM', 'C/Out', '07:57 AM', '10/07/2016', 0),
	(315, 'MT', 'TABAMO, LINDSEY B.', '10012', '10/7/2016 5:26:27 PM', 'C/Out', '05:26 PM', '10/07/2016', 0),
	(316, 'MT', 'TABAMO, LINDSEY B.', '10012', '10/10/2016 8:58:31 AM', 'C/In', '08:58 AM', '10/10/2016', 0),
	(317, 'MT', 'TABAMO, LINDSEY B.', '10012', '10/10/2016 5:18:10 PM', 'C/Out', '05:18 PM', '10/10/2016', 0),
	(318, 'MT', 'TABAMO, LINDSEY B.', '10012', '10/11/2016 7:58:18 AM', 'C/In', '07:58 AM', '10/11/2016', 0),
	(319, 'MT', 'TABAMO, LINDSEY B.', '10012', '10/11/2016 5:25:43 PM', 'C/Out', '05:25 PM', '10/11/2016', 0),
	(320, 'MT', 'TABAMO, LINDSEY B.', '10012', '10/12/2016 7:51:20 AM', 'C/In', '07:51 AM', '10/12/2016', 0),
	(321, 'MT', 'TABAMO, LINDSEY B.', '10012', '10/12/2016 5:01:59 PM', 'C/In', '05:01 PM', '10/12/2016', 0),
	(322, 'MT', 'TABAMO, LINDSEY B.', '10012', '10/13/2016 7:56:04 AM', 'C/In', '07:56 AM', '10/13/2016', 0),
	(323, 'MT', 'TABAMO, LINDSEY B.', '10012', '10/13/2016 5:33:15 PM', 'C/Out', '05:33 PM', '10/13/2016', 0),
	(324, 'MT', 'TABAMO, LINDSEY B.', '10012', '10/14/2016 7:57:37 AM', 'C/In', '07:57 AM', '10/14/2016', 0),
	(325, 'MT', 'TABAMO, LINDSEY B.', '10012', '10/14/2016 5:24:22 PM', 'C/Out', '05:24 PM', '10/14/2016', 0),
	(326, 'MT', 'TABAMO, LINDSEY B.', '10012', '10/20/2016 7:55:31 AM', 'C/In', '07:55 AM', '10/20/2016', 0),
	(327, 'MT', 'TABAMO, LINDSEY B.', '10012', '10/20/2016 5:18:42 PM', 'C/Out', '05:18 PM', '10/20/2016', 0),
	(328, 'MT', 'TABAMO, LINDSEY B.', '10012', '10/21/2016 7:54:29 AM', 'C/In', '07:54 AM', '10/21/2016', 0),
	(329, 'MT', 'TABAMO, LINDSEY B.', '10012', '10/21/2016 5:12:24 PM', 'C/Out', '05:12 PM', '10/21/2016', 0),
	(330, 'MT', 'TABAMO, LINDSEY B.', '10012', '10/24/2016 8:51:23 AM', 'C/In', '08:51 AM', '10/24/2016', 0),
	(331, 'MT', 'TABAMO, LINDSEY B.', '10012', '10/24/2016 7:58:39 PM', 'C/Out', '07:58 PM', '10/24/2016', 0),
	(332, 'MT', 'TABAMO, LINDSEY B.', '10012', '10/25/2016 8:00:25 AM', 'C/In', '08:00 AM', '10/25/2016', 0),
	(333, 'MT', 'TABAMO, LINDSEY B.', '10012', '10/25/2016 5:17:39 PM', 'C/Out', '05:17 PM', '10/25/2016', 0),
	(334, 'MT', 'TABAMO, LINDSEY B.', '10012', '10/26/2016 7:57:38 AM', 'C/In', '07:57 AM', '10/26/2016', 0),
	(335, 'MT', 'TABAMO, LINDSEY B.', '10012', '10/26/2016 5:15:06 PM', 'C/Out', '05:15 PM', '10/26/2016', 0),
	(336, 'MT', 'TABAMO, LINDSEY B.', '10012', '10/27/2016 7:54:30 AM', 'C/In', '07:54 AM', '10/27/2016', 0),
	(337, 'MT', 'TABAMO, LINDSEY B.', '10012', '10/27/2016 5:30:55 PM', 'C/Out', '05:30 PM', '10/27/2016', 0),
	(338, 'MT', 'TABAMO, LINDSEY B.', '10012', '10/28/2016 7:59:04 AM', 'C/In', '07:59 AM', '10/28/2016', 0),
	(339, 'MT', 'TABAMO, LINDSEY B.', '10012', '10/28/2016 7:09:17 PM', 'C/Out', '07:09 PM', '10/28/2016', 0),
	(340, 'MT', 'BERSANO, MELANIE M.', '10015', '10/3/2016 12:26:53 PM', 'C/In', '12:26 PM', '10/03/2016', 0),
	(341, 'MT', 'BERSANO, MELANIE M.', '10015', '10/3/2016 5:24:33 PM', 'C/Out', '05:24 PM', '10/03/2016', 0),
	(342, 'MT', 'BERSANO, MELANIE M.', '10015', '10/4/2016 7:12:21 AM', 'C/In', '07:12 AM', '10/04/2016', 0),
	(343, 'MT', 'BERSANO, MELANIE M.', '10015', '10/4/2016 5:18:47 PM', 'C/Out', '05:18 PM', '10/04/2016', 0),
	(344, 'MT', 'BERSANO, MELANIE M.', '10015', '10/5/2016 7:05:45 AM', 'C/In', '07:05 AM', '10/05/2016', 0),
	(345, 'MT', 'BERSANO, MELANIE M.', '10015', '10/5/2016 7:59:43 PM', 'C/Out', '07:59 PM', '10/05/2016', 0),
	(346, 'MT', 'BERSANO, MELANIE M.', '10015', '10/6/2016 7:29:21 AM', 'C/In', '07:29 AM', '10/06/2016', 0),
	(347, 'MT', 'BERSANO, MELANIE M.', '10015', '10/6/2016 6:30:07 PM', 'C/Out', '06:30 PM', '10/06/2016', 0),
	(348, 'MT', 'BERSANO, MELANIE M.', '10015', '10/7/2016 8:48:29 AM', 'C/In', '08:48 AM', '10/07/2016', 0),
	(349, 'MT', 'BERSANO, MELANIE M.', '10015', '10/7/2016 5:45:14 PM', 'C/Out', '05:45 PM', '10/07/2016', 0),
	(350, 'MT', 'BERSANO, MELANIE M.', '10015', '10/8/2016 4:50:07 PM', 'C/Out', '04:50 PM', '10/08/2016', 0),
	(351, 'MT', 'BERSANO, MELANIE M.', '10015', '10/10/2016 12:33:30 PM', 'C/In', '12:33 PM', '10/10/2016', 0),
	(352, 'MT', 'BERSANO, MELANIE M.', '10015', '10/10/2016 5:42:30 PM', 'C/Out', '05:42 PM', '10/10/2016', 0),
	(353, 'MT', 'BERSANO, MELANIE M.', '10015', '10/11/2016 7:19:25 AM', 'C/In', '07:19 AM', '10/11/2016', 0),
	(354, 'MT', 'BERSANO, MELANIE M.', '10015', '10/12/2016 7:27:34 AM', 'C/In', '07:27 AM', '10/12/2016', 0),
	(355, 'MT', 'BERSANO, MELANIE M.', '10015', '10/12/2016 5:10:26 PM', 'C/Out', '05:10 PM', '10/12/2016', 0),
	(356, 'MT', 'BERSANO, MELANIE M.', '10015', '10/13/2016 7:18:15 AM', 'C/In', '07:18 AM', '10/13/2016', 0),
	(357, 'MT', 'BERSANO, MELANIE M.', '10015', '10/13/2016 5:20:37 PM', 'C/Out', '05:20 PM', '10/13/2016', 0),
	(358, 'MT', 'BERSANO, MELANIE M.', '10015', '10/14/2016 7:23:05 AM', 'C/In', '07:23 AM', '10/14/2016', 0),
	(359, 'MT', 'BERSANO, MELANIE M.', '10015', '10/15/2016 8:16:26 AM', 'C/In', '08:16 AM', '10/15/2016', 0),
	(360, 'MT', 'BERSANO, MELANIE M.', '10015', '10/15/2016 4:35:14 PM', 'C/Out', '04:35 PM', '10/15/2016', 0),
	(361, 'MT', 'BERSANO, MELANIE M.', '10015', '10/20/2016 7:27:57 AM', 'C/In', '07:27 AM', '10/20/2016', 0),
	(362, 'MT', 'BERSANO, MELANIE M.', '10015', '10/20/2016 7:35:14 PM', 'C/Out', '07:35 PM', '10/20/2016', 0),
	(363, 'MT', 'BERSANO, MELANIE M.', '10015', '10/22/2016 7:42:36 AM', 'C/In', '07:42 AM', '10/22/2016', 0),
	(364, 'MT', 'BERSANO, MELANIE M.', '10015', '10/22/2016 4:00:35 PM', 'C/Out', '04:00 PM', '10/22/2016', 0),
	(365, 'MT', 'BERSANO, MELANIE M.', '10015', '10/24/2016 12:06:29 PM', 'C/In', '12:06 PM', '10/24/2016', 0),
	(366, 'MT', 'BERSANO, MELANIE M.', '10015', '10/24/2016 8:57:21 PM', 'C/Out', '08:57 PM', '10/24/2016', 0),
	(367, 'MT', 'BERSANO, MELANIE M.', '10015', '10/28/2016 8:48:42 AM', 'C/In', '08:48 AM', '10/28/2016', 0),
	(368, 'MT', 'BERSANO, MELANIE M.', '10015', '10/28/2016 5:31:46 PM', 'C/Out', '05:31 PM', '10/28/2016', 0),
	(369, 'MT', 'BERSANO, MELANIE M.', '10015', '10/29/2016 8:14:17 AM', 'C/In', '08:14 AM', '10/29/2016', 0),
	(370, 'MT', 'BERSANO, MELANIE M.', '10015', '10/29/2016 4:24:22 PM', 'C/Out', '04:24 PM', '10/29/2016', 0),
	(379, NULL, NULL, '10004', '10/26/2016 5:36:00 PM', 'C/Out', '05:36 PM', '10/26/2016', 1),
	(378, NULL, NULL, '10004', '10/10/2016 5:35:00 PM', 'C/Out', '05:35 PM', '10/10/2016', 1),
	(377, NULL, NULL, '10003', '10/11/2016 5:09:00 PM', 'C/Out', '05:09 PM', '10/11/2016', 1),
	(376, NULL, NULL, '10003', '10/6/2016 5:09:00 PM', 'C/Out', '05:09 PM', '10/06/2016', 1),
	(375, NULL, NULL, '10003', '10/5/2016 8:09:00 AM', 'C/In', '08:09 AM', '10/05/2016', 1);
/*!40000 ALTER TABLE `tbl_attendanceraw` ENABLE KEYS */;

-- Dumping structure for table hris_payroll.tbl_company
DROP TABLE IF EXISTS `tbl_company`;
CREATE TABLE IF NOT EXISTS `tbl_company` (
  `company_id` int(10) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`company_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table hris_payroll.tbl_company: 0 rows
/*!40000 ALTER TABLE `tbl_company` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_company` ENABLE KEYS */;

-- Dumping structure for table hris_payroll.tbl_cutoff
DROP TABLE IF EXISTS `tbl_cutoff`;
CREATE TABLE IF NOT EXISTS `tbl_cutoff` (
  `cutoff_id` int(10) NOT NULL AUTO_INCREMENT,
  `cutoff_range` varchar(50) DEFAULT NULL,
  `occurence_id` int(11) DEFAULT NULL,
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `ifActive` enum('Y','N') NOT NULL DEFAULT 'N',
  `ifFinished` enum('Y','N') NOT NULL DEFAULT 'N',
  PRIMARY KEY (`cutoff_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table hris_payroll.tbl_cutoff: 4 rows
/*!40000 ALTER TABLE `tbl_cutoff` DISABLE KEYS */;
INSERT INTO `tbl_cutoff` (`cutoff_id`, `cutoff_range`, `occurence_id`, `from_date`, `to_date`, `ifActive`, `ifFinished`) VALUES
	(1, 'Dec 1 to Dec 15, 2016', 2, '2016-12-01', '2016-12-15', 'N', 'N'),
	(2, '2016-12-16 to 2016-12-31', 2, '2016-12-16', '2016-12-31', 'N', 'N'),
	(4, '2017-01-01 to 2017-01-15', 2, '2017-01-01', '2017-01-15', 'N', 'N'),
	(5, '2016-10-01 to 2016-10-15', 2, '2016-10-01', '2016-10-15', 'Y', 'N');
/*!40000 ALTER TABLE `tbl_cutoff` ENABLE KEYS */;

-- Dumping structure for table hris_payroll.tbl_employee
DROP TABLE IF EXISTS `tbl_employee`;
CREATE TABLE IF NOT EXISTS `tbl_employee` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
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
  `employment_status` varchar(50) DEFAULT NULL,
  `company` varchar(50) DEFAULT NULL,
  `branch` varchar(50) DEFAULT NULL,
  `position` varchar(50) DEFAULT NULL,
  `tax_status` varchar(50) DEFAULT NULL,
  `basic_salary` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=229 DEFAULT CHARSET=latin1;

-- Dumping data for table hris_payroll.tbl_employee: 2 rows
/*!40000 ALTER TABLE `tbl_employee` DISABLE KEYS */;
INSERT INTO `tbl_employee` (`id`, `emp_id`, `emp_bio_id`, `fName`, `mName`, `lName`, `shiftgroup`, `sss_id`, `phic_id`, `hdmf_id`, `tin`, `employment_status`, `company`, `branch`, `position`, `tax_status`, `basic_salary`) VALUES
	(1, 'SMSI-CGC-0001', '10003', 'Jennifer', 'Palo', 'Dantes', 'Regular', '1542012157', '151654841', '218410514', '154264845000', 'Regular', 'Amaara Financial Corporation', 'as', 'Manager', 'M1', 10000),
	(228, 'SMSi-0001', '10004', 'Raul John', 'Apuli', 'Altavano', 'Regular', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'S', 10000);
/*!40000 ALTER TABLE `tbl_employee` ENABLE KEYS */;

-- Dumping structure for table hris_payroll.tbl_incentives
DROP TABLE IF EXISTS `tbl_incentives`;
CREATE TABLE IF NOT EXISTS `tbl_incentives` (
  `incentives_id` int(11) NOT NULL AUTO_INCREMENT,
  `payslip_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  PRIMARY KEY (`incentives_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Dumping data for table hris_payroll.tbl_incentives: 1 rows
/*!40000 ALTER TABLE `tbl_incentives` DISABLE KEYS */;
INSERT INTO `tbl_incentives` (`incentives_id`, `payslip_id`, `name`, `amount`) VALUES
	(5, 3, 'Edit', 1000);
/*!40000 ALTER TABLE `tbl_incentives` ENABLE KEYS */;

-- Dumping structure for table hris_payroll.tbl_leaves
DROP TABLE IF EXISTS `tbl_leaves`;
CREATE TABLE IF NOT EXISTS `tbl_leaves` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(50) DEFAULT NULL,
  `leave_type` varchar(50) DEFAULT NULL,
  `durFrom` date DEFAULT NULL,
  `durTo` date DEFAULT NULL,
  `dateFiled` date DEFAULT NULL,
  `days_applied` varchar(50) DEFAULT NULL,
  `reason` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table hris_payroll.tbl_leaves: 0 rows
/*!40000 ALTER TABLE `tbl_leaves` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_leaves` ENABLE KEYS */;

-- Dumping structure for table hris_payroll.tbl_loans
DROP TABLE IF EXISTS `tbl_loans`;
CREATE TABLE IF NOT EXISTS `tbl_loans` (
  `loan_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT NULL,
  `loan_type` varchar(50) DEFAULT NULL,
  `lendingCompany` varchar(50) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `term` varchar(50) DEFAULT NULL,
  `monthlyAmortization` int(11) DEFAULT NULL,
  `startDate` date DEFAULT NULL,
  `endDate` date DEFAULT NULL,
  `remarks` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`loan_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table hris_payroll.tbl_loans: 1 rows
/*!40000 ALTER TABLE `tbl_loans` DISABLE KEYS */;
INSERT INTO `tbl_loans` (`loan_id`, `employee_id`, `loan_type`, `lendingCompany`, `amount`, `term`, `monthlyAmortization`, `startDate`, `endDate`, `remarks`) VALUES
	(1, 1, 'SSS Loan', 'SSS', 1, 'f', 32, '2017-03-22', '2017-03-22', 'fd');
/*!40000 ALTER TABLE `tbl_loans` ENABLE KEYS */;

-- Dumping structure for table hris_payroll.tbl_overtime
DROP TABLE IF EXISTS `tbl_overtime`;
CREATE TABLE IF NOT EXISTS `tbl_overtime` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `dateFiled` date DEFAULT NULL,
  `dateRequested` date DEFAULT NULL,
  `timeStart` varchar(50) DEFAULT NULL,
  `timeEnd` varchar(50) DEFAULT NULL,
  `totalHours` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table hris_payroll.tbl_overtime: 1 rows
/*!40000 ALTER TABLE `tbl_overtime` DISABLE KEYS */;
INSERT INTO `tbl_overtime` (`id`, `employee_id`, `reason`, `dateFiled`, `dateRequested`, `timeStart`, `timeEnd`, `totalHours`, `status`) VALUES
	(1, 1, 'finish work', '2016-10-03', '2016-10-08', '5', '7', '02:00', 'Approved by HR');
/*!40000 ALTER TABLE `tbl_overtime` ENABLE KEYS */;

-- Dumping structure for table hris_payroll.tbl_payrollbatch
DROP TABLE IF EXISTS `tbl_payrollbatch`;
CREATE TABLE IF NOT EXISTS `tbl_payrollbatch` (
  `payrollbatch_id` int(11) NOT NULL AUTO_INCREMENT,
  `payslip_id` int(11) NOT NULL,
  `remarks` text NOT NULL,
  PRIMARY KEY (`payrollbatch_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table hris_payroll.tbl_payrollbatch: 0 rows
/*!40000 ALTER TABLE `tbl_payrollbatch` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_payrollbatch` ENABLE KEYS */;

-- Dumping structure for table hris_payroll.tbl_payslip
DROP TABLE IF EXISTS `tbl_payslip`;
CREATE TABLE IF NOT EXISTS `tbl_payslip` (
  `payslip_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cutoff_id` int(11) DEFAULT NULL,
  `totalWorkHours` double DEFAULT NULL,
  `income` double DEFAULT NULL,
  `regot_pay` double DEFAULT NULL,
  `holot_pay` double DEFAULT NULL,
  `ot_pay` double DEFAULT NULL,
  `allowances` double DEFAULT NULL,
  `incentives` double DEFAULT NULL,
  `lateabsent_deduct` double DEFAULT NULL,
  `undertime_deduct` double DEFAULT NULL,
  `tax` double DEFAULT NULL,
  `sss` double DEFAULT NULL,
  `phic` double DEFAULT NULL,
  `hdmf` double DEFAULT NULL,
  `gross_income` double DEFAULT NULL,
  `net_income` double DEFAULT NULL,
  PRIMARY KEY (`payslip_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table hris_payroll.tbl_payslip: 0 rows
/*!40000 ALTER TABLE `tbl_payslip` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_payslip` ENABLE KEYS */;

-- Dumping structure for table hris_payroll.tbl_shifts
DROP TABLE IF EXISTS `tbl_shifts`;
CREATE TABLE IF NOT EXISTS `tbl_shifts` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `day` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timein` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timeout` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shiftgroup` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table hris_payroll.tbl_shifts: 6 rows
/*!40000 ALTER TABLE `tbl_shifts` DISABLE KEYS */;
INSERT INTO `tbl_shifts` (`id`, `day`, `timein`, `timeout`, `shiftgroup`) VALUES
	(1, 'Wednesday', '09:00 AM', '05:00 PM', 'Regular'),
	(12, 'Saturday', '09:00 AM', '03:00 PM', 'Regular'),
	(7, 'Thursday', '09:00 AM', '05:00 PM', 'Regular'),
	(9, 'Tuesday', '09:00 AM', '05:00 PM', 'Regular'),
	(10, 'Friday', '09:00 AM', '05:00 PM', 'Regular'),
	(11, 'Monday', '09:00 AM', '05:00 PM', 'Regular');
/*!40000 ALTER TABLE `tbl_shifts` ENABLE KEYS */;

-- Dumping structure for table hris_payroll.tbl_user
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE IF NOT EXISTS `tbl_user` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table hris_payroll.tbl_user: 1 rows
/*!40000 ALTER TABLE `tbl_user` DISABLE KEYS */;
INSERT INTO `tbl_user` (`user_id`, `employee_id`, `username`, `password`, `role`, `status`) VALUES
	(1, 'SMSI-0001', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Admin', 'Active');
/*!40000 ALTER TABLE `tbl_user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
