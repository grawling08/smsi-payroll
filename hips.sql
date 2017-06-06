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


-- Dumping database structure for hris_payroll
DROP DATABASE IF EXISTS `hris_payroll`;
CREATE DATABASE IF NOT EXISTS `hris_payroll` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `hris_payroll`;

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
	(3, '2017-01-01', 'New Years Day', 'Regular Holidays'),
	(4, '2017-05-01', 'Labor Day', 'Regular Holidays'),
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

-- Dumping data for table hris_payroll.tblref_settings: 4 rows
/*!40000 ALTER TABLE `tblref_settings` DISABLE KEYS */;
INSERT INTO `tblref_settings` (`setting_name`, `value`) VALUES
	('current_cutoff', '1 May 2017 to 15 May 2017'),
	('current_company', 'Solutions Management Systems Inc.'),
	('app_mode', 'integrate'),
	('process', 'regular');
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

-- Dumping structure for table hris_payroll.tbl_allowances
DROP TABLE IF EXISTS `tbl_allowances`;
CREATE TABLE IF NOT EXISTS `tbl_allowances` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table hris_payroll.tbl_allowances: 3 rows
/*!40000 ALTER TABLE `tbl_allowances` DISABLE KEYS */;
INSERT INTO `tbl_allowances` (`id`, `employee_id`, `name`, `amount`) VALUES
	(1, 502, 'Rice', 1500),
	(2, 502, 'Housing', 500),
	(3, 512, 'Rice', 1500);
/*!40000 ALTER TABLE `tbl_allowances` ENABLE KEYS */;

-- Dumping structure for table hris_payroll.tbl_attendance
DROP TABLE IF EXISTS `tbl_attendance`;
CREATE TABLE IF NOT EXISTS `tbl_attendance` (
  `att_id` int(10) NOT NULL AUTO_INCREMENT,
  `id_employee` int(10) NOT NULL DEFAULT '0',
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
) ENGINE=MyISAM AUTO_INCREMENT=139 DEFAULT CHARSET=utf8;

-- Dumping data for table hris_payroll.tbl_attendance: 0 rows
/*!40000 ALTER TABLE `tbl_attendance` DISABLE KEYS */;
INSERT INTO `tbl_attendance` (`att_id`, `id_employee`, `emp_bio_id`, `date`, `time_in`, `time_out`, `totalHours`, `late`, `undertime`, `overtime`, `remarks`) VALUES
	(1, 0, '10002', '2017-05-03', '07:59 AM', '05:49 PM', '9.83', '0', '0', '0', 'Regular'),
	(2, 0, '10002', '2017-05-04', '08:08 AM', '05:17 PM', '9.15', '0', '0', '0', 'Regular'),
	(3, 0, '10002', '2017-05-05', '07:56 AM', '05:20 PM', '9.4', '0', '0', '0', 'Regular'),
	(4, 0, '10002', '2017-05-08', '07:57 AM', '05:36 PM', '9.65', '0', '0', '0', 'Regular'),
	(5, 0, '10002', '2017-05-09', '07:46 AM', '06:18 PM', '10.53', '0', '0', '1.3', 'Overtime'),
	(6, 0, '10002', '2017-05-10', '08:04 AM', '05:33 PM', '9.48', '0', '0', '0', 'Regular'),
	(7, 0, '10002', '2017-05-11', '07:57 AM', '05:34 PM', '9.62', '0', '0', '0', 'Regular'),
	(8, 0, '10002', '2017-05-12', '08:02 AM', '05:12 PM', '9.17', '0', '0', '0', 'Regular'),
	(9, 0, '10002', '2017-05-15', '07:59 AM', '05:31 PM', '9.53', '0', '0', '0', 'Regular'),
	(10, 0, '10013', '2017-05-02', '08:53 AM', '05:22 PM', '8.48', '0', '0', '0', 'Regular'),
	(11, 0, '10013', '2017-05-03', '08:34 AM', '09:44 PM', '13.17', '0', '0', '4.73', 'Overtime'),
	(12, 0, '10013', '2017-05-05', '08:48 AM', '05:25 PM', '8.62', '0', '0', '0', 'Regular'),
	(13, 0, '10013', '2017-05-06', '08:51 AM', '03:32 PM', '6.68', '0', '0', '0', 'Regular'),
	(14, 0, '10013', '2017-05-08', '08:52 AM', '05:34 PM', '8.7', '0', '0', '0', 'Regular'),
	(15, 0, '10013', '2017-05-09', '08:51 AM', '05:37 PM', '8.77', '0', '0', '0', 'Regular'),
	(16, 0, '10013', '2017-05-10', '09:02 AM', '05:37 PM', '8.58', '0', '0', '0', 'Regular'),
	(17, 0, '10013', '2017-05-11', '08:56 AM', '05:27 PM', '8.52', '0', '0', '0', 'Regular'),
	(18, 0, '10013', '2017-05-12', '08:54 AM', '07:33 PM', '10.65', '0', '0', '2.55', 'Overtime'),
	(19, 0, '10013', '2017-05-13', '08:41 AM', '08:52 PM', '12.18', '0', '0', '5.87', 'Overtime'),
	(20, 0, '10013', '2017-05-15', '08:48 AM', '05:43 PM', '8.92', '0', '0', '0', 'Regular'),
	(21, 0, '10014', '2017-05-02', '08:56 AM', '05:21 PM', '8.42', '0', '0', '0', 'Regular'),
	(22, 0, '10014', '2017-05-03', '08:54 AM', '06:23 PM', '9.48', '0', '0', '1.38', 'Overtime'),
	(23, 0, '10014', '2017-05-04', '08:14 AM', '09:28 PM', '13.23', '0', '0', '4.47', 'Overtime'),
	(24, 0, '10014', '2017-05-05', '09:00 AM', '07:32 PM', '10.53', '0', '0', '2.53', 'Overtime'),
	(25, 0, '10014', '2017-05-06', '08:57 AM', '10:53 PM', '13.93', '0', '0', '7.88', 'Overtime'),
	(26, 0, '10014', '2017-05-08', '09:10 AM', '05:13 PM', '8.05', '0', '0', '0', 'Regular'),
	(27, 0, '10014', '2017-05-09', '08:58 AM', '06:20 PM', '9.37', '0', '0', '1.33', 'Overtime'),
	(28, 0, '10014', '2017-05-10', '09:04 AM', '05:11 PM', '8.12', '0', '0', '0', 'Regular'),
	(29, 0, '10014', '2017-05-11', '09:07 AM', '05:37 PM', '8.5', '0', '0', '0', 'Regular'),
	(30, 0, '10014', '2017-05-12', '09:09 AM', '05:18 PM', '8.15', '0', '0', '0', 'Regular'),
	(31, 0, '10014', '2017-05-13', '08:52 AM', '04:11 PM', '7.32', '0', '0', '1.18', 'Overtime'),
	(32, 0, '10014', '2017-05-15', '05:13 PM', '07:19 PM', '2.1', '-15180', '0', '2.32', 'Overtime'),
	(33, 0, '10017', '2017-05-02', '08:32 AM', '05:02 PM', '8.5', '0', '0', '0', 'Regular'),
	(34, 0, '10017', '2017-05-03', '08:42 AM', '05:21 PM', '8.65', '0', '0', '0', 'Regular'),
	(35, 0, '10017', '2017-05-04', '08:31 AM', '05:25 PM', '8.9', '0', '0', '0', 'Regular'),
	(36, 0, '10017', '2017-05-05', '08:40 AM', '05:36 PM', '8.93', '0', '0', '0', 'Regular'),
	(37, 0, '10017', '2017-05-06', '08:31 AM', '03:16 PM', '6.75', '0', '0', '0', 'Regular'),
	(38, 0, '10017', '2017-05-08', '08:13 AM', '05:12 PM', '8.98', '0', '0', '0', 'Regular'),
	(39, 0, '10017', '2017-05-09', '08:25 AM', '05:10 PM', '8.75', '0', '0', '0', 'Regular'),
	(40, 0, '10017', '2017-05-10', '09:00 AM', '05:08 PM', '8.13', '0', '0', '0', 'Regular'),
	(41, 0, '10017', '2017-05-11', '08:52 AM', '05:17 PM', '8.42', '0', '0', '0', 'Regular'),
	(42, 0, '10017', '2017-05-12', '08:19 AM', '05:16 PM', '8.95', '0', '0', '0', 'Regular'),
	(43, 0, '10017', '2017-05-13', '08:36 AM', '03:13 PM', '6.62', '0', '0', '0', 'Regular'),
	(44, 0, '10019', '2017-05-02', '08:37 AM', '05:23 PM', '8.77', '0', '0', '0', 'Regular'),
	(45, 0, '10019', '2017-05-03', '08:38 AM', '07:24 PM', '10.77', '0', '0', '2.4', 'Overtime'),
	(46, 0, '10019', '2017-05-04', '08:48 AM', '05:26 PM', '8.63', '0', '0', '0', 'Regular'),
	(47, 0, '10019', '2017-05-06', '08:56 AM', '08:11 PM', '11.25', '0', '0', '5.18', 'Overtime'),
	(48, 0, '10019', '2017-05-08', '08:54 AM', '05:34 PM', '8.67', '0', '0', '0', 'Regular'),
	(49, 0, '10019', '2017-05-09', '08:59 AM', '05:53 PM', '8.9', '0', '0', '0', 'Regular'),
	(50, 0, '10019', '2017-05-11', '08:28 AM', '05:27 PM', '8.98', '0', '0', '0', 'Regular'),
	(51, 0, '10021', '2017-05-02', '08:30 AM', '05:19 PM', '8.82', '0', '0', '0', 'Regular'),
	(52, 0, '10021', '2017-05-03', '08:34 AM', '05:06 PM', '8.53', '0', '0', '0', 'Regular'),
	(53, 0, '10021', '2017-05-04', '08:33 AM', '05:11 PM', '8.63', '0', '0', '0', 'Regular'),
	(54, 0, '10021', '2017-05-05', '09:07 AM', '05:15 PM', '8.13', '0', '0', '0', 'Regular'),
	(55, 0, '10021', '2017-05-06', '08:21 AM', '03:24 PM', '7.05', '0', '0', '0', 'Regular'),
	(56, 0, '10021', '2017-05-09', '08:48 AM', '05:13 PM', '8.42', '0', '0', '0', 'Regular'),
	(57, 0, '10021', '2017-05-10', '08:53 AM', '05:24 PM', '8.52', '0', '0', '0', 'Regular'),
	(58, 0, '10021', '2017-05-11', '08:32 AM', '05:07 PM', '8.58', '0', '0', '0', 'Regular'),
	(59, 0, '10021', '2017-05-12', '08:34 AM', '05:08 PM', '8.57', '0', '0', '0', 'Regular'),
	(60, 0, '10021', '2017-05-13', '08:35 AM', '03:00 PM', '6.42', '0', '0', '0', 'Regular'),
	(61, 0, '10021', '2017-05-15', '08:20 AM', '05:07 PM', '8.78', '0', '0', '0', 'Regular'),
	(62, 0, '10022', '2017-05-02', '08:53 AM', '05:26 PM', '8.55', '0', '0', '0', 'Regular'),
	(63, 0, '10022', '2017-05-03', '08:55 AM', '05:50 PM', '8.92', '0', '0', '0', 'Regular'),
	(64, 0, '10022', '2017-05-05', '09:03 AM', '05:38 PM', '8.58', '0', '0', '0', 'Regular'),
	(65, 0, '10022', '2017-05-06', '08:56 AM', '04:07 PM', '7.18', '0', '0', '1.12', 'Overtime'),
	(66, 0, '10022', '2017-05-08', '08:55 AM', '05:56 PM', '9.02', '0', '0', '0', 'Regular'),
	(67, 0, '10022', '2017-05-10', '08:57 AM', '05:25 PM', '8.47', '0', '0', '0', 'Regular'),
	(68, 0, '10022', '2017-05-11', '08:53 AM', '05:43 PM', '8.83', '0', '0', '0', 'Regular'),
	(69, 0, '10022', '2017-05-12', '08:53 AM', '05:42 PM', '8.82', '0', '0', '0', 'Regular'),
	(70, 0, '10022', '2017-05-13', '08:58 AM', '03:30 PM', '6.53', '0', '0', '0', 'Regular'),
	(71, 0, '10022', '2017-05-15', '08:55 AM', '05:37 PM', '8.7', '0', '0', '0', 'Regular'),
	(72, 0, '1003', '2017-05-02', '08:39 AM', '08:49 PM', '12.17', '0', '0', '3.82', 'Overtime'),
	(73, 0, '1003', '2017-05-03', '08:45 AM', '05:29 PM', '8.73', '0', '0', '0', 'Regular'),
	(74, 0, '1003', '2017-05-04', '08:53 AM', '07:18 PM', '10.42', '0', '0', '2.3', 'Overtime'),
	(75, 0, '1003', '2017-05-05', '08:59 AM', '05:19 PM', '8.33', '0', '0', '0', 'Regular'),
	(76, 0, '1003', '2017-05-06', '08:59 AM', '03:13 PM', '6.23', '0', '0', '0', 'Regular'),
	(77, 0, '1003', '2017-05-08', '08:31 AM', '05:13 PM', '8.7', '0', '0', '0', 'Regular'),
	(78, 0, '1003', '2017-05-09', '08:04 PM', '06:20 PM', '-1.73', '-25440', '0', '1.33', 'Overtime'),
	(79, 0, '1003', '2017-05-11', '08:58 AM', '06:00 PM', '9.03', '0', '0', '0', 'Regular'),
	(80, 0, '1003', '2017-05-12', '08:49 AM', '05:19 PM', '8.5', '0', '0', '0', 'Regular'),
	(81, 0, '1003', '2017-05-15', '08:52 AM', '05:24 PM', '8.53', '0', '0', '0', 'Regular'),
	(82, 0, '1004', '2017-05-02', '08:01 AM', '05:18 PM', '9.28', '0', '0', '0', 'Regular'),
	(83, 0, '1004', '2017-05-03', '08:40 AM', '05:07 PM', '8.45', '0', '0', '0', 'Regular'),
	(84, 0, '1004', '2017-05-04', '08:42 AM', '05:10 PM', '8.47', '0', '0', '0', 'Regular'),
	(85, 0, '1004', '2017-05-05', '08:47 AM', '05:16 PM', '8.48', '0', '0', '0', 'Regular'),
	(86, 0, '1004', '2017-05-08', '08:49 AM', '05:12 PM', '8.38', '0', '0', '0', 'Regular'),
	(87, 0, '1004', '2017-05-09', '08:45 AM', '05:13 PM', '8.47', '0', '0', '0', 'Regular'),
	(88, 0, '1004', '2017-05-11', '08:40 AM', '05:09 PM', '8.48', '0', '0', '0', 'Regular'),
	(89, 0, '1004', '2017-05-12', '08:40 AM', '05:19 PM', '8.65', '0', '0', '0', 'Regular'),
	(90, 0, '1004', '2017-05-13', '08:39 AM', '03:21 PM', '6.7', '0', '0', '0', 'Regular'),
	(91, 0, '1006', '2017-05-02', '08:56 AM', '05:32 PM', '8.6', '0', '0', '0', 'Regular'),
	(92, 0, '1006', '2017-05-03', '08:53 AM', '05:13 PM', '8.33', '0', '0', '0', 'Regular'),
	(93, 0, '1006', '2017-05-04', '09:09 AM', '05:08 PM', '7.98', '0', '0', '0', 'Regular'),
	(94, 0, '1006', '2017-05-05', '08:53 AM', '05:12 PM', '8.32', '0', '0', '0', 'Regular'),
	(95, 0, '1006', '2017-05-06', '08:57 AM', '05:20 PM', '8.38', '0', '0', '2.33', 'Overtime'),
	(96, 0, '1006', '2017-05-09', '08:57 AM', '05:16 PM', '8.32', '0', '0', '0', 'Regular'),
	(97, 0, '1006', '2017-05-11', '08:50 AM', '05:08 PM', '8.3', '0', '0', '0', 'Regular'),
	(98, 0, '1006', '2017-05-12', '08:59 AM', '05:38 PM', '8.65', '0', '0', '0', 'Regular'),
	(99, 0, '1006', '2017-05-13', '08:59 AM', '03:07 PM', '6.13', '0', '0', '0', 'Regular'),
	(100, 0, '1006', '2017-05-15', '09:01 AM', '05:19 PM', '8.3', '0', '0', '0', 'Regular'),
	(101, 0, '104', '2017-05-03', '09:01 AM', '05:36 PM', '8.58', '0', '0', '0', 'Regular'),
	(102, 0, '104', '2017-05-04', '08:59 AM', '05:26 PM', '8.45', '0', '0', '0', 'Regular'),
	(103, 0, '104', '2017-05-05', '09:03 AM', '05:24 PM', '8.35', '0', '0', '0', 'Regular'),
	(104, 0, '104', '2017-05-06', '08:06 AM', '06:23 PM', '10.28', '0', '0', '3.38', 'Overtime'),
	(105, 0, '104', '2017-05-10', '08:52 AM', '05:37 PM', '8.75', '0', '0', '0', 'Regular'),
	(106, 0, '104', '2017-05-11', '08:59 AM', '05:44 PM', '8.75', '0', '0', '0', 'Regular'),
	(107, 0, '104', '2017-05-12', '08:50 AM', '05:20 PM', '8.5', '0', '0', '0', 'Regular'),
	(108, 0, '110', '2017-05-02', '08:54 AM', '05:06 PM', '8.2', '0', '0', '0', 'Regular'),
	(109, 0, '110', '2017-05-03', '08:59 AM', '05:13 PM', '8.23', '0', '0', '0', 'Regular'),
	(110, 0, '110', '2017-05-04', '08:53 AM', '05:06 PM', '8.22', '0', '0', '0', 'Regular'),
	(111, 0, '110', '2017-05-05', '08:53 AM', '05:17 PM', '8.4', '0', '0', '0', 'Regular'),
	(112, 0, '110', '2017-05-06', '08:54 AM', '03:16 PM', '6.37', '0', '0', '0', 'Regular'),
	(113, 0, '110', '2017-05-08', '08:49 AM', '05:04 PM', '8.25', '0', '0', '0', 'Regular'),
	(114, 0, '110', '2017-05-09', '08:52 AM', '05:15 PM', '8.38', '0', '0', '0', 'Regular'),
	(115, 0, '110', '2017-05-10', '09:01 AM', '05:14 PM', '8.22', '0', '0', '0', 'Regular'),
	(116, 0, '110', '2017-05-11', '08:41 AM', '05:09 PM', '8.47', '0', '0', '0', 'Regular'),
	(117, 0, '110', '2017-05-12', '08:46 AM', '05:13 PM', '8.45', '0', '0', '0', 'Regular'),
	(118, 0, '110', '2017-05-13', '08:48 AM', '03:01 PM', '6.22', '0', '0', '0', 'Regular'),
	(119, 0, '110', '2017-05-15', '08:54 AM', '05:23 PM', '8.48', '0', '0', '0', 'Regular'),
	(120, 0, '112', '2017-05-02', '08:52 AM', '05:21 PM', '8.48', '0', '0', '0', 'Regular'),
	(121, 0, '112', '2017-05-03', '09:02 AM', '05:28 PM', '8.43', '0', '0', '0', 'Regular'),
	(122, 0, '112', '2017-05-04', '08:58 AM', '05:13 PM', '8.25', '0', '0', '0', 'Regular'),
	(123, 0, '112', '2017-05-06', '08:58 AM', '03:22 PM', '6.4', '0', '0', '0', 'Regular'),
	(124, 0, '112', '2017-05-08', '08:55 AM', '05:27 PM', '8.53', '0', '0', '0', 'Regular'),
	(125, 0, '112', '2017-05-10', '08:55 AM', '05:13 PM', '8.3', '0', '0', '0', 'Regular'),
	(126, 0, '112', '2017-05-11', '09:03 AM', '05:17 PM', '8.23', '0', '0', '0', 'Regular'),
	(127, 0, '112', '2017-05-12', '09:01 AM', '05:36 PM', '8.58', '0', '0', '0', 'Regular'),
	(128, 0, '112', '2017-05-15', '08:11 AM', '05:25 PM', '9.23', '0', '0', '0', 'Regular'),
	(129, 0, '116', '2017-05-02', '08:59 AM', '05:29 PM', '8.5', '0', '0', '0', 'Regular'),
	(130, 0, '116', '2017-05-04', '08:52 AM', '05:10 PM', '8.3', '0', '0', '0', 'Regular'),
	(131, 0, '116', '2017-05-05', '08:53 AM', '05:16 PM', '8.38', '0', '0', '0', 'Regular'),
	(132, 0, '116', '2017-05-09', '09:02 AM', '05:19 PM', '8.28', '0', '0', '0', 'Regular'),
	(133, 0, '116', '2017-05-10', '08:59 AM', '05:15 PM', '8.27', '0', '0', '0', 'Regular'),
	(134, 0, '116', '2017-05-11', '08:57 AM', '05:20 PM', '8.38', '0', '0', '0', 'Regular'),
	(135, 0, '116', '2017-05-12', '08:58 AM', '05:13 PM', '8.25', '0', '0', '0', 'Regular'),
	(136, 0, '116', '2017-05-13', '08:54 AM', '03:07 PM', '6.22', '0', '0', '0', 'Regular'),
	(137, 0, '117', '2017-05-10', '08:49 AM', '05:33 PM', '8.73', '0', '0', '0', 'Regular'),
	(138, 0, '117', '2017-05-11', '09:14 AM', '05:22 PM', '8.13', '14', '0', '0', 'Regular');
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
) ENGINE=MyISAM AUTO_INCREMENT=347 DEFAULT CHARSET=latin1;

-- Dumping data for table hris_payroll.tbl_attendanceraw: 0 rows
/*!40000 ALTER TABLE `tbl_attendanceraw` DISABLE KEYS */;
INSERT INTO `tbl_attendanceraw` (`rawatt_id`, `Department`, `Name`, `No`, `Date_Time`, `Status`, `LogTime`, `LogDate`, `ifMapped`) VALUES
	(1, 'SMSI', 'ALMUETE, CHARLENE J.', '10002', '5/3/2017 7:59:29 AM', 'C/In', '07:59 AM', '05/03/2017', 1),
	(2, 'SMSI', 'ALMUETE, CHARLENE J.', '10002', '5/3/2017 5:49:41 PM', 'C/Out', '05:49 PM', '05/03/2017', 1),
	(3, 'SMSI', 'ALMUETE, CHARLENE J.', '10002', '5/4/2017 8:08:20 AM', 'C/In', '08:08 AM', '05/04/2017', 1),
	(4, 'SMSI', 'ALMUETE, CHARLENE J.', '10002', '5/4/2017 5:17:35 PM', 'C/Out', '05:17 PM', '05/04/2017', 1),
	(5, 'SMSI', 'ALMUETE, CHARLENE J.', '10002', '5/5/2017 7:56:28 AM', 'C/In', '07:56 AM', '05/05/2017', 1),
	(6, 'SMSI', 'ALMUETE, CHARLENE J.', '10002', '5/5/2017 5:20:42 PM', 'C/Out', '05:20 PM', '05/05/2017', 1),
	(7, 'SMSI', 'ALMUETE, CHARLENE J.', '10002', '5/8/2017 7:57:35 AM', 'C/In', '07:57 AM', '05/08/2017', 1),
	(8, 'SMSI', 'ALMUETE, CHARLENE J.', '10002', '5/8/2017 5:36:39 PM', 'C/Out', '05:36 PM', '05/08/2017', 1),
	(9, 'SMSI', 'ALMUETE, CHARLENE J.', '10002', '5/9/2017 7:46:26 AM', 'C/In', '07:46 AM', '05/09/2017', 1),
	(10, 'SMSI', 'ALMUETE, CHARLENE J.', '10002', '5/9/2017 6:18:53 PM', 'C/Out', '06:18 PM', '05/09/2017', 1),
	(11, 'SMSI', 'ALMUETE, CHARLENE J.', '10002', '5/10/2017 8:04:23 AM', 'C/In', '08:04 AM', '05/10/2017', 1),
	(12, 'SMSI', 'ALMUETE, CHARLENE J.', '10002', '5/10/2017 5:33:26 PM', 'C/Out', '05:33 PM', '05/10/2017', 1),
	(13, 'SMSI', 'ALMUETE, CHARLENE J.', '10002', '5/11/2017 7:57:31 AM', 'C/In', '07:57 AM', '05/11/2017', 1),
	(14, 'SMSI', 'ALMUETE, CHARLENE J.', '10002', '5/11/2017 5:34:23 PM', 'C/Out', '05:34 PM', '05/11/2017', 1),
	(15, 'SMSI', 'ALMUETE, CHARLENE J.', '10002', '5/12/2017 8:02:48 AM', 'C/In', '08:02 AM', '05/12/2017', 1),
	(16, 'SMSI', 'ALMUETE, CHARLENE J.', '10002', '5/12/2017 5:12:20 PM', 'C/Out', '05:12 PM', '05/12/2017', 1),
	(17, 'SMSI', 'ALMUETE, CHARLENE J.', '10002', '5/15/2017 7:59:03 AM', 'C/In', '07:59 AM', '05/15/2017', 1),
	(18, 'SMSI', 'ALMUETE, CHARLENE J.', '10002', '5/15/2017 5:31:48 PM', 'C/Out', '05:31 PM', '05/15/2017', 1),
	(19, 'SMSI', 'SALADAGA, LORMAN S.', '10013', '5/2/2017 8:53:54 AM', 'C/In', '08:53 AM', '05/02/2017', 1),
	(20, 'SMSI', 'SALADAGA, LORMAN S.', '10013', '5/2/2017 5:22:49 PM', 'C/Out', '05:22 PM', '05/02/2017', 1),
	(21, 'SMSI', 'SALADAGA, LORMAN S.', '10013', '5/3/2017 8:34:58 AM', 'C/In', '08:34 AM', '05/03/2017', 1),
	(22, 'SMSI', 'SALADAGA, LORMAN S.', '10013', '5/3/2017 9:44:45 PM', 'C/Out', '09:44 PM', '05/03/2017', 1),
	(23, 'SMSI', 'SALADAGA, LORMAN S.', '10013', '5/4/2017 8:56:50 AM', 'C/In', '08:56 AM', '05/04/2017', 0),
	(24, 'SMSI', 'SALADAGA, LORMAN S.', '10013', '5/5/2017 8:48:32 AM', 'C/In', '08:48 AM', '05/05/2017', 1),
	(25, 'SMSI', 'SALADAGA, LORMAN S.', '10013', '5/5/2017 5:25:32 PM', 'C/Out', '05:25 PM', '05/05/2017', 1),
	(26, 'SMSI', 'SALADAGA, LORMAN S.', '10013', '5/6/2017 8:51:13 AM', 'C/In', '08:51 AM', '05/06/2017', 1),
	(27, 'SMSI', 'SALADAGA, LORMAN S.', '10013', '5/6/2017 3:32:34 PM', 'C/Out', '03:32 PM', '05/06/2017', 1),
	(28, 'SMSI', 'SALADAGA, LORMAN S.', '10013', '5/8/2017 8:52:54 AM', 'C/In', '08:52 AM', '05/08/2017', 1),
	(29, 'SMSI', 'SALADAGA, LORMAN S.', '10013', '5/8/2017 5:34:20 PM', 'C/Out', '05:34 PM', '05/08/2017', 1),
	(30, 'SMSI', 'SALADAGA, LORMAN S.', '10013', '5/9/2017 8:51:50 AM', 'C/In', '08:51 AM', '05/09/2017', 1),
	(31, 'SMSI', 'SALADAGA, LORMAN S.', '10013', '5/9/2017 5:37:56 PM', 'C/Out', '05:37 PM', '05/09/2017', 1),
	(32, 'SMSI', 'SALADAGA, LORMAN S.', '10013', '5/10/2017 9:02:15 AM', 'C/In', '09:02 AM', '05/10/2017', 1),
	(33, 'SMSI', 'SALADAGA, LORMAN S.', '10013', '5/10/2017 5:37:33 PM', 'C/Out', '05:37 PM', '05/10/2017', 1),
	(34, 'SMSI', 'SALADAGA, LORMAN S.', '10013', '5/11/2017 8:56:23 AM', 'C/In', '08:56 AM', '05/11/2017', 1),
	(35, 'SMSI', 'SALADAGA, LORMAN S.', '10013', '5/11/2017 5:27:37 PM', 'C/Out', '05:27 PM', '05/11/2017', 1),
	(36, 'SMSI', 'SALADAGA, LORMAN S.', '10013', '5/12/2017 8:54:42 AM', 'C/In', '08:54 AM', '05/12/2017', 1),
	(37, 'SMSI', 'SALADAGA, LORMAN S.', '10013', '5/12/2017 7:33:36 PM', 'C/Out', '07:33 PM', '05/12/2017', 1),
	(38, 'SMSI', 'SALADAGA, LORMAN S.', '10013', '5/13/2017 8:41:23 AM', 'C/In', '08:41 AM', '05/13/2017', 1),
	(39, 'SMSI', 'SALADAGA, LORMAN S.', '10013', '5/13/2017 8:52:08 PM', 'C/Out', '08:52 PM', '05/13/2017', 1),
	(40, 'SMSI', 'SALADAGA, LORMAN S.', '10013', '5/15/2017 8:48:37 AM', 'C/In', '08:48 AM', '05/15/2017', 1),
	(41, 'SMSI', 'SALADAGA, LORMAN S.', '10013', '5/15/2017 5:43:55 PM', 'C/Out', '05:43 PM', '05/15/2017', 1),
	(42, 'SMSI', 'ARCE, CRESAR JOHN R.', '10014', '5/2/2017 8:56:01 AM', 'C/In', '08:56 AM', '05/02/2017', 1),
	(43, 'SMSI', 'ARCE, CRESAR JOHN R.', '10014', '5/2/2017 5:21:14 PM', 'C/Out', '05:21 PM', '05/02/2017', 1),
	(44, 'SMSI', 'ARCE, CRESAR JOHN R.', '10014', '5/2/2017 8:49:08 PM', 'C/Out', '08:49 PM', '05/02/2017', 1),
	(45, 'SMSI', 'ARCE, CRESAR JOHN R.', '10014', '5/3/2017 8:54:04 AM', 'C/In', '08:54 AM', '05/03/2017', 1),
	(46, 'SMSI', 'ARCE, CRESAR JOHN R.', '10014', '5/3/2017 6:23:37 PM', 'C/Out', '06:23 PM', '05/03/2017', 1),
	(47, 'SMSI', 'ARCE, CRESAR JOHN R.', '10014', '5/3/2017 9:44:40 PM', 'C/Out', '09:44 PM', '05/03/2017', 1),
	(48, 'SMSI', 'ARCE, CRESAR JOHN R.', '10014', '5/4/2017 8:14:44 AM', 'C/In', '08:14 AM', '05/04/2017', 1),
	(49, 'SMSI', 'ARCE, CRESAR JOHN R.', '10014', '5/4/2017 9:28:31 PM', 'C/Out', '09:28 PM', '05/04/2017', 1),
	(50, 'SMSI', 'ARCE, CRESAR JOHN R.', '10014', '5/5/2017 9:00:41 AM', 'C/In', '09:00 AM', '05/05/2017', 1),
	(51, 'SMSI', 'ARCE, CRESAR JOHN R.', '10014', '5/5/2017 7:32:34 PM', 'C/Out', '07:32 PM', '05/05/2017', 1),
	(52, 'SMSI', 'ARCE, CRESAR JOHN R.', '10014', '5/6/2017 8:57:10 AM', 'C/In', '08:57 AM', '05/06/2017', 1),
	(53, 'SMSI', 'ARCE, CRESAR JOHN R.', '10014', '5/6/2017 10:53:27 PM', 'C/Out', '10:53 PM', '05/06/2017', 1),
	(54, 'SMSI', 'ARCE, CRESAR JOHN R.', '10014', '5/8/2017 9:10:24 AM', 'C/In', '09:10 AM', '05/08/2017', 1),
	(55, 'SMSI', 'ARCE, CRESAR JOHN R.', '10014', '5/8/2017 5:13:53 PM', 'C/Out', '05:13 PM', '05/08/2017', 1),
	(56, 'SMSI', 'ARCE, CRESAR JOHN R.', '10014', '5/8/2017 5:33:51 PM', 'C/Out', '05:33 PM', '05/08/2017', 1),
	(57, 'SMSI', 'ARCE, CRESAR JOHN R.', '10014', '5/9/2017 8:58:28 AM', 'C/In', '08:58 AM', '05/09/2017', 1),
	(58, 'SMSI', 'ARCE, CRESAR JOHN R.', '10014', '5/9/2017 6:20:12 PM', 'C/Out', '06:20 PM', '05/09/2017', 1),
	(59, 'SMSI', 'ARCE, CRESAR JOHN R.', '10014', '5/10/2017 9:04:16 AM', 'C/In', '09:04 AM', '05/10/2017', 1),
	(60, 'SMSI', 'ARCE, CRESAR JOHN R.', '10014', '5/10/2017 5:11:10 PM', 'C/Out', '05:11 PM', '05/10/2017', 1),
	(61, 'SMSI', 'ARCE, CRESAR JOHN R.', '10014', '5/10/2017 9:13:07 PM', 'C/Out', '09:13 PM', '05/10/2017', 1),
	(62, 'SMSI', 'ARCE, CRESAR JOHN R.', '10014', '5/11/2017 9:07:41 AM', 'C/In', '09:07 AM', '05/11/2017', 1),
	(63, 'SMSI', 'ARCE, CRESAR JOHN R.', '10014', '5/11/2017 5:37:17 PM', 'C/Out', '05:37 PM', '05/11/2017', 1),
	(64, 'SMSI', 'ARCE, CRESAR JOHN R.', '10014', '5/12/2017 9:09:04 AM', 'C/In', '09:09 AM', '05/12/2017', 1),
	(65, 'SMSI', 'ARCE, CRESAR JOHN R.', '10014', '5/12/2017 5:18:37 PM', 'C/Out', '05:18 PM', '05/12/2017', 1),
	(66, 'SMSI', 'ARCE, CRESAR JOHN R.', '10014', '5/13/2017 8:52:02 AM', 'C/In', '08:52 AM', '05/13/2017', 1),
	(67, 'SMSI', 'ARCE, CRESAR JOHN R.', '10014', '5/13/2017 4:11:13 PM', 'C/Out', '04:11 PM', '05/13/2017', 1),
	(68, 'SMSI', 'ARCE, CRESAR JOHN R.', '10014', '5/13/2017 8:52:01 PM', 'C/Out', '08:52 PM', '05/13/2017', 1),
	(69, 'SMSI', 'ARCE, CRESAR JOHN R.', '10014', '5/15/2017 8:47:59 AM', 'C/In', '08:47 AM', '05/15/2017', 1),
	(70, 'SMSI', 'ARCE, CRESAR JOHN R.', '10014', '5/15/2017 5:13:05 PM', 'C/In', '05:13 PM', '05/15/2017', 1),
	(71, 'SMSI', 'ARCE, CRESAR JOHN R.', '10014', '5/15/2017 7:19:37 PM', 'C/Out', '07:19 PM', '05/15/2017', 1),
	(72, 'SMSI', 'CABALTERA, BRAZZEL', '10017', '5/2/2017 8:32:46 AM', 'C/In', '08:32 AM', '05/02/2017', 1),
	(73, 'SMSI', 'CABALTERA, BRAZZEL', '10017', '5/2/2017 5:02:03 PM', 'C/Out', '05:02 PM', '05/02/2017', 1),
	(74, 'SMSI', 'CABALTERA, BRAZZEL', '10017', '5/3/2017 8:42:11 AM', 'C/In', '08:42 AM', '05/03/2017', 1),
	(75, 'SMSI', 'CABALTERA, BRAZZEL', '10017', '5/3/2017 8:42:20 AM', 'C/In', '08:42 AM', '05/03/2017', 1),
	(76, 'SMSI', 'CABALTERA, BRAZZEL', '10017', '5/3/2017 5:21:21 PM', 'C/Out', '05:21 PM', '05/03/2017', 1),
	(77, 'SMSI', 'CABALTERA, BRAZZEL', '10017', '5/4/2017 8:31:54 AM', 'C/In', '08:31 AM', '05/04/2017', 1),
	(78, 'SMSI', 'CABALTERA, BRAZZEL', '10017', '5/4/2017 5:25:48 PM', 'C/Out', '05:25 PM', '05/04/2017', 1),
	(79, 'SMSI', 'CABALTERA, BRAZZEL', '10017', '5/5/2017 8:40:43 AM', 'C/In', '08:40 AM', '05/05/2017', 1),
	(80, 'SMSI', 'CABALTERA, BRAZZEL', '10017', '5/5/2017 5:36:33 PM', 'C/Out', '05:36 PM', '05/05/2017', 1),
	(81, 'SMSI', 'CABALTERA, BRAZZEL', '10017', '5/5/2017 5:36:37 PM', 'C/Out', '05:36 PM', '05/05/2017', 1),
	(82, 'SMSI', 'CABALTERA, BRAZZEL', '10017', '5/6/2017 8:31:17 AM', 'C/In', '08:31 AM', '05/06/2017', 1),
	(83, 'SMSI', 'CABALTERA, BRAZZEL', '10017', '5/6/2017 3:16:23 PM', 'C/Out', '03:16 PM', '05/06/2017', 1),
	(84, 'SMSI', 'CABALTERA, BRAZZEL', '10017', '5/8/2017 8:13:37 AM', 'C/In', '08:13 AM', '05/08/2017', 1),
	(85, 'SMSI', 'CABALTERA, BRAZZEL', '10017', '5/8/2017 8:13:40 AM', 'C/In', '08:13 AM', '05/08/2017', 1),
	(86, 'SMSI', 'CABALTERA, BRAZZEL', '10017', '5/8/2017 5:12:05 PM', 'C/Out', '05:12 PM', '05/08/2017', 1),
	(87, 'SMSI', 'CABALTERA, BRAZZEL', '10017', '5/9/2017 8:25:49 AM', 'C/In', '08:25 AM', '05/09/2017', 1),
	(88, 'SMSI', 'CABALTERA, BRAZZEL', '10017', '5/9/2017 8:25:51 AM', 'C/In', '08:25 AM', '05/09/2017', 1),
	(89, 'SMSI', 'CABALTERA, BRAZZEL', '10017', '5/9/2017 5:10:48 PM', 'C/Out', '05:10 PM', '05/09/2017', 1),
	(90, 'SMSI', 'CABALTERA, BRAZZEL', '10017', '5/10/2017 9:00:29 AM', 'C/In', '09:00 AM', '05/10/2017', 1),
	(91, 'SMSI', 'CABALTERA, BRAZZEL', '10017', '5/10/2017 5:08:55 PM', 'C/Out', '05:08 PM', '05/10/2017', 1),
	(92, 'SMSI', 'CABALTERA, BRAZZEL', '10017', '5/11/2017 8:52:32 AM', 'C/In', '08:52 AM', '05/11/2017', 1),
	(93, 'SMSI', 'CABALTERA, BRAZZEL', '10017', '5/11/2017 5:17:14 PM', 'C/Out', '05:17 PM', '05/11/2017', 1),
	(94, 'SMSI', 'CABALTERA, BRAZZEL', '10017', '5/12/2017 8:19:45 AM', 'C/In', '08:19 AM', '05/12/2017', 1),
	(95, 'SMSI', 'CABALTERA, BRAZZEL', '10017', '5/12/2017 5:16:33 PM', 'C/Out', '05:16 PM', '05/12/2017', 1),
	(96, 'SMSI', 'CABALTERA, BRAZZEL', '10017', '5/13/2017 8:36:36 AM', 'C/In', '08:36 AM', '05/13/2017', 1),
	(97, 'SMSI', 'CABALTERA, BRAZZEL', '10017', '5/13/2017 3:13:14 PM', 'C/Out', '03:13 PM', '05/13/2017', 1),
	(98, 'SMSI', 'CABALTERA, BRAZZEL', '10017', '5/15/2017 8:30:28 AM', 'C/In', '08:30 AM', '05/15/2017', 0),
	(99, 'SMSI', 'CABALTERA, BRAZZEL', '10017', '5/15/2017 5:14:22 PM', 'C/In', '05:14 PM', '05/15/2017', 0),
	(100, 'SMSI', 'CABALTERA, BRAZZEL', '10017', '5/15/2017 5:14:25 PM', 'C/Out', '05:14 PM', '05/15/2017', 0),
	(101, 'SMSI', 'MAPANAO, DIANE Y.', '10019', '5/2/2017 8:37:11 AM', 'C/In', '08:37 AM', '05/02/2017', 1),
	(102, 'SMSI', 'MAPANAO, DIANE Y.', '10019', '5/2/2017 5:23:06 PM', 'C/Out', '05:23 PM', '05/02/2017', 1),
	(103, 'SMSI', 'MAPANAO, DIANE Y.', '10019', '5/3/2017 8:38:50 AM', 'C/In', '08:38 AM', '05/03/2017', 1),
	(104, 'SMSI', 'MAPANAO, DIANE Y.', '10019', '5/3/2017 7:24:28 PM', 'C/Out', '07:24 PM', '05/03/2017', 1),
	(105, 'SMSI', 'MAPANAO, DIANE Y.', '10019', '5/4/2017 8:48:55 AM', 'C/In', '08:48 AM', '05/04/2017', 1),
	(106, 'SMSI', 'MAPANAO, DIANE Y.', '10019', '5/4/2017 5:26:42 PM', 'C/Out', '05:26 PM', '05/04/2017', 1),
	(107, 'SMSI', 'MAPANAO, DIANE Y.', '10019', '5/5/2017 8:54:31 AM', 'C/In', '08:54 AM', '05/05/2017', 0),
	(108, 'SMSI', 'MAPANAO, DIANE Y.', '10019', '5/6/2017 8:56:53 AM', 'C/In', '08:56 AM', '05/06/2017', 1),
	(109, 'SMSI', 'MAPANAO, DIANE Y.', '10019', '5/6/2017 8:11:59 PM', 'C/Out', '08:11 PM', '05/06/2017', 1),
	(110, 'SMSI', 'MAPANAO, DIANE Y.', '10019', '5/8/2017 8:54:20 AM', 'C/In', '08:54 AM', '05/08/2017', 1),
	(111, 'SMSI', 'MAPANAO, DIANE Y.', '10019', '5/8/2017 5:34:02 PM', 'C/Out', '05:34 PM', '05/08/2017', 1),
	(112, 'SMSI', 'MAPANAO, DIANE Y.', '10019', '5/9/2017 8:59:44 AM', 'C/In', '08:59 AM', '05/09/2017', 1),
	(113, 'SMSI', 'MAPANAO, DIANE Y.', '10019', '5/9/2017 5:53:38 PM', 'C/Out', '05:53 PM', '05/09/2017', 1),
	(114, 'SMSI', 'MAPANAO, DIANE Y.', '10019', '5/10/2017 8:55:17 AM', 'C/In', '08:55 AM', '05/10/2017', 0),
	(115, 'SMSI', 'MAPANAO, DIANE Y.', '10019', '5/11/2017 8:28:16 AM', 'C/In', '08:28 AM', '05/11/2017', 1),
	(116, 'SMSI', 'MAPANAO, DIANE Y.', '10019', '5/11/2017 5:27:34 PM', 'C/Out', '05:27 PM', '05/11/2017', 1),
	(117, 'SMSI', 'MAPANAO, DIANE Y.', '10019', '5/12/2017 8:50:18 AM', 'C/In', '08:50 AM', '05/12/2017', 0),
	(118, 'SMSI', 'ALTAVANO, RAUL ADRIAN', '10021', '5/2/2017 8:30:57 AM', 'C/In', '08:30 AM', '05/02/2017', 1),
	(119, 'SMSI', 'ALTAVANO, RAUL ADRIAN', '10021', '5/2/2017 5:19:56 PM', 'C/Out', '05:19 PM', '05/02/2017', 1),
	(120, 'SMSI', 'ALTAVANO, RAUL ADRIAN', '10021', '5/3/2017 8:34:23 AM', 'C/In', '08:34 AM', '05/03/2017', 1),
	(121, 'SMSI', 'ALTAVANO, RAUL ADRIAN', '10021', '5/3/2017 5:06:25 PM', 'C/Out', '05:06 PM', '05/03/2017', 1),
	(122, 'SMSI', 'ALTAVANO, RAUL ADRIAN', '10021', '5/4/2017 8:33:48 AM', 'C/In', '08:33 AM', '05/04/2017', 1),
	(123, 'SMSI', 'ALTAVANO, RAUL ADRIAN', '10021', '5/4/2017 5:11:02 PM', 'C/Out', '05:11 PM', '05/04/2017', 1),
	(124, 'SMSI', 'ALTAVANO, RAUL ADRIAN', '10021', '5/5/2017 9:07:14 AM', 'C/In', '09:07 AM', '05/05/2017', 1),
	(125, 'SMSI', 'ALTAVANO, RAUL ADRIAN', '10021', '5/5/2017 5:15:10 PM', 'C/Out', '05:15 PM', '05/05/2017', 1),
	(126, 'SMSI', 'ALTAVANO, RAUL ADRIAN', '10021', '5/6/2017 8:21:22 AM', 'C/In', '08:21 AM', '05/06/2017', 1),
	(127, 'SMSI', 'ALTAVANO, RAUL ADRIAN', '10021', '5/6/2017 3:24:01 PM', 'C/Out', '03:24 PM', '05/06/2017', 1),
	(128, 'SMSI', 'ALTAVANO, RAUL ADRIAN', '10021', '5/9/2017 8:48:39 AM', 'C/In', '08:48 AM', '05/09/2017', 1),
	(129, 'SMSI', 'ALTAVANO, RAUL ADRIAN', '10021', '5/9/2017 5:13:48 PM', 'C/Out', '05:13 PM', '05/09/2017', 1),
	(130, 'SMSI', 'ALTAVANO, RAUL ADRIAN', '10021', '5/10/2017 8:53:39 AM', 'C/In', '08:53 AM', '05/10/2017', 1),
	(131, 'SMSI', 'ALTAVANO, RAUL ADRIAN', '10021', '5/10/2017 5:24:03 PM', 'C/Out', '05:24 PM', '05/10/2017', 1),
	(132, 'SMSI', 'ALTAVANO, RAUL ADRIAN', '10021', '5/11/2017 8:32:11 AM', 'C/In', '08:32 AM', '05/11/2017', 1),
	(133, 'SMSI', 'ALTAVANO, RAUL ADRIAN', '10021', '5/11/2017 5:07:41 PM', 'C/Out', '05:07 PM', '05/11/2017', 1),
	(134, 'SMSI', 'ALTAVANO, RAUL ADRIAN', '10021', '5/12/2017 8:34:34 AM', 'C/In', '08:34 AM', '05/12/2017', 1),
	(135, 'SMSI', 'ALTAVANO, RAUL ADRIAN', '10021', '5/12/2017 5:08:17 PM', 'C/Out', '05:08 PM', '05/12/2017', 1),
	(136, 'SMSI', 'ALTAVANO, RAUL ADRIAN', '10021', '5/13/2017 8:35:33 AM', 'C/In', '08:35 AM', '05/13/2017', 1),
	(137, 'SMSI', 'ALTAVANO, RAUL ADRIAN', '10021', '5/13/2017 3:00:10 PM', 'C/Out', '03:00 PM', '05/13/2017', 1),
	(138, 'SMSI', 'ALTAVANO, RAUL ADRIAN', '10021', '5/15/2017 8:20:42 AM', 'C/In', '08:20 AM', '05/15/2017', 1),
	(139, 'SMSI', 'ALTAVANO, RAUL ADRIAN', '10021', '5/15/2017 5:07:37 PM', 'C/Out', '05:07 PM', '05/15/2017', 1),
	(140, 'SMSI', 'SULLAGA, CHAD LOUEI C.', '10022', '5/2/2017 8:53:00 AM', 'C/In', '08:53 AM', '05/02/2017', 1),
	(141, 'SMSI', 'SULLAGA, CHAD LOUEI C.', '10022', '5/2/2017 5:26:22 PM', 'C/Out', '05:26 PM', '05/02/2017', 1),
	(142, 'SMSI', 'SULLAGA, CHAD LOUEI C.', '10022', '5/3/2017 8:55:06 AM', 'C/In', '08:55 AM', '05/03/2017', 1),
	(143, 'SMSI', 'SULLAGA, CHAD LOUEI C.', '10022', '5/3/2017 5:50:17 PM', 'C/Out', '05:50 PM', '05/03/2017', 1),
	(144, 'SMSI', 'SULLAGA, CHAD LOUEI C.', '10022', '5/4/2017 8:54:14 AM', 'C/In', '08:54 AM', '05/04/2017', 0),
	(145, 'SMSI', 'SULLAGA, CHAD LOUEI C.', '10022', '5/5/2017 9:03:59 AM', 'C/In', '09:03 AM', '05/05/2017', 1),
	(146, 'SMSI', 'SULLAGA, CHAD LOUEI C.', '10022', '5/5/2017 5:38:32 PM', 'C/Out', '05:38 PM', '05/05/2017', 1),
	(147, 'SMSI', 'SULLAGA, CHAD LOUEI C.', '10022', '5/6/2017 8:56:08 AM', 'C/In', '08:56 AM', '05/06/2017', 1),
	(148, 'SMSI', 'SULLAGA, CHAD LOUEI C.', '10022', '5/6/2017 4:07:27 PM', 'C/Out', '04:07 PM', '05/06/2017', 1),
	(149, 'SMSI', 'SULLAGA, CHAD LOUEI C.', '10022', '5/8/2017 8:55:54 AM', 'C/In', '08:55 AM', '05/08/2017', 1),
	(150, 'SMSI', 'SULLAGA, CHAD LOUEI C.', '10022', '5/8/2017 5:56:30 PM', 'C/Out', '05:56 PM', '05/08/2017', 1),
	(151, 'SMSI', 'SULLAGA, CHAD LOUEI C.', '10022', '5/9/2017 8:56:04 AM', 'C/In', '08:56 AM', '05/09/2017', 0),
	(152, 'SMSI', 'SULLAGA, CHAD LOUEI C.', '10022', '5/9/2017 6:34:03 PM', 'C/In', '06:34 PM', '05/09/2017', 0),
	(153, 'SMSI', 'SULLAGA, CHAD LOUEI C.', '10022', '5/10/2017 8:57:47 AM', 'C/In', '08:57 AM', '05/10/2017', 1),
	(154, 'SMSI', 'SULLAGA, CHAD LOUEI C.', '10022', '5/10/2017 5:25:08 PM', 'C/Out', '05:25 PM', '05/10/2017', 1),
	(155, 'SMSI', 'SULLAGA, CHAD LOUEI C.', '10022', '5/11/2017 8:53:30 AM', 'C/In', '08:53 AM', '05/11/2017', 1),
	(156, 'SMSI', 'SULLAGA, CHAD LOUEI C.', '10022', '5/11/2017 5:43:20 PM', 'C/Out', '05:43 PM', '05/11/2017', 1),
	(157, 'SMSI', 'SULLAGA, CHAD LOUEI C.', '10022', '5/12/2017 8:53:54 AM', 'C/In', '08:53 AM', '05/12/2017', 1),
	(158, 'SMSI', 'SULLAGA, CHAD LOUEI C.', '10022', '5/12/2017 5:42:51 PM', 'C/Out', '05:42 PM', '05/12/2017', 1),
	(159, 'SMSI', 'SULLAGA, CHAD LOUEI C.', '10022', '5/13/2017 8:58:22 AM', 'C/In', '08:58 AM', '05/13/2017', 1),
	(160, 'SMSI', 'SULLAGA, CHAD LOUEI C.', '10022', '5/13/2017 3:30:26 PM', 'C/Out', '03:30 PM', '05/13/2017', 1),
	(161, 'SMSI', 'SULLAGA, CHAD LOUEI C.', '10022', '5/15/2017 8:55:34 AM', 'C/In', '08:55 AM', '05/15/2017', 1),
	(162, 'SMSI', 'SULLAGA, CHAD LOUEI C.', '10022', '5/15/2017 5:37:24 PM', 'C/Out', '05:37 PM', '05/15/2017', 1),
	(163, 'SMSI', 'LUNGTAD, DAINA L.', '10023', '5/8/2017 8:52:59 AM', 'C/In', '08:52 AM', '05/08/2017', 0),
	(164, 'SMSI', 'LUNGTAD, DAINA L.', '10023', '5/8/2017 5:33:38 PM', 'C/Out', '05:33 PM', '05/08/2017', 0),
	(165, 'SMSI', 'LUNGTAD, DAINA L.', '10023', '5/9/2017 8:54:22 AM', 'C/In', '08:54 AM', '05/09/2017', 0),
	(166, 'SMSI', 'LUNGTAD, DAINA L.', '10023', '5/9/2017 5:53:35 PM', 'C/Out', '05:53 PM', '05/09/2017', 0),
	(167, 'SMSI', 'LUNGTAD, DAINA L.', '10023', '5/10/2017 8:47:24 AM', 'C/In', '08:47 AM', '05/10/2017', 0),
	(168, 'SMSI', 'LUNGTAD, DAINA L.', '10023', '5/10/2017 6:10:34 PM', 'C/Out', '06:10 PM', '05/10/2017', 0),
	(169, 'SMSI', 'LUNGTAD, DAINA L.', '10023', '5/11/2017 8:28:09 AM', 'C/In', '08:28 AM', '05/11/2017', 0),
	(170, 'SMSI', 'LUNGTAD, DAINA L.', '10023', '5/12/2017 8:28:08 AM', 'C/In', '08:28 AM', '05/12/2017', 0),
	(171, 'SMSI', 'LUNGTAD, DAINA L.', '10023', '5/13/2017 8:57:40 AM', 'C/In', '08:57 AM', '05/13/2017', 0),
	(172, 'SMSI', 'LUNGTAD, DAINA L.', '10023', '5/13/2017 3:26:16 PM', 'C/Out', '03:26 PM', '05/13/2017', 0),
	(173, 'SMSI', 'LUNGTAD, DAINA L.', '10023', '5/15/2017 8:33:48 AM', 'C/In', '08:33 AM', '05/15/2017', 0),
	(174, 'SMSI', 'ARANGCO, MARCO C.', '1003', '5/2/2017 8:39:09 AM', 'C/In', '08:39 AM', '05/02/2017', 1),
	(175, 'SMSI', 'ARANGCO, MARCO C.', '1003', '5/2/2017 8:49:21 PM', 'C/Out', '08:49 PM', '05/02/2017', 1),
	(176, 'SMSI', 'ARANGCO, MARCO C.', '1003', '5/3/2017 8:45:10 AM', 'C/In', '08:45 AM', '05/03/2017', 1),
	(177, 'SMSI', 'ARANGCO, MARCO C.', '1003', '5/3/2017 5:29:41 PM', 'C/Out', '05:29 PM', '05/03/2017', 1),
	(178, 'SMSI', 'ARANGCO, MARCO C.', '1003', '5/4/2017 8:53:02 AM', 'C/In', '08:53 AM', '05/04/2017', 1),
	(179, 'SMSI', 'ARANGCO, MARCO C.', '1003', '5/4/2017 7:18:14 PM', 'C/Out', '07:18 PM', '05/04/2017', 1),
	(180, 'SMSI', 'ARANGCO, MARCO C.', '1003', '5/5/2017 8:59:06 AM', 'C/In', '08:59 AM', '05/05/2017', 1),
	(181, 'SMSI', 'ARANGCO, MARCO C.', '1003', '5/5/2017 5:19:06 PM', 'C/Out', '05:19 PM', '05/05/2017', 1),
	(182, 'SMSI', 'ARANGCO, MARCO C.', '1003', '5/5/2017 5:38:22 PM', 'C/Out', '05:38 PM', '05/05/2017', 1),
	(183, 'SMSI', 'ARANGCO, MARCO C.', '1003', '5/6/2017 8:59:19 AM', 'C/In', '08:59 AM', '05/06/2017', 1),
	(184, 'SMSI', 'ARANGCO, MARCO C.', '1003', '5/6/2017 3:13:39 PM', 'C/Out', '03:13 PM', '05/06/2017', 1),
	(185, 'SMSI', 'ARANGCO, MARCO C.', '1003', '5/8/2017 8:31:46 AM', 'C/In', '08:31 AM', '05/08/2017', 1),
	(186, 'SMSI', 'ARANGCO, MARCO C.', '1003', '5/8/2017 5:13:09 PM', 'C/Out', '05:13 PM', '05/08/2017', 1),
	(187, 'SMSI', 'ARANGCO, MARCO C.', '1003', '5/9/2017 9:00:14 AM', 'C/In', '09:00 AM', '05/09/2017', 1),
	(188, 'SMSI', 'ARANGCO, MARCO C.', '1003', '5/9/2017 6:20:16 PM', 'C/Out', '06:20 PM', '05/09/2017', 1),
	(189, 'SMSI', 'ARANGCO, MARCO C.', '1003', '5/9/2017 8:04:37 PM', 'C/In', '08:04 PM', '05/09/2017', 1),
	(190, 'SMSI', 'ARANGCO, MARCO C.', '1003', '5/10/2017 9:01:57 AM', 'C/In', '09:01 AM', '05/10/2017', 0),
	(191, 'SMSI', 'ARANGCO, MARCO C.', '1003', '5/11/2017 8:58:08 AM', 'C/In', '08:58 AM', '05/11/2017', 1),
	(192, 'SMSI', 'ARANGCO, MARCO C.', '1003', '5/11/2017 6:00:23 PM', 'C/Out', '06:00 PM', '05/11/2017', 1),
	(193, 'SMSI', 'ARANGCO, MARCO C.', '1003', '5/12/2017 8:49:32 AM', 'C/In', '08:49 AM', '05/12/2017', 1),
	(194, 'SMSI', 'ARANGCO, MARCO C.', '1003', '5/12/2017 5:19:14 PM', 'C/Out', '05:19 PM', '05/12/2017', 1),
	(195, 'SMSI', 'ARANGCO, MARCO C.', '1003', '5/13/2017 8:50:33 AM', 'C/In', '08:50 AM', '05/13/2017', 0),
	(196, 'SMSI', 'ARANGCO, MARCO C.', '1003', '5/15/2017 8:52:43 AM', 'C/In', '08:52 AM', '05/15/2017', 1),
	(197, 'SMSI', 'ARANGCO, MARCO C.', '1003', '5/15/2017 5:24:27 PM', 'C/Out', '05:24 PM', '05/15/2017', 1),
	(198, 'SMSI', 'ACHAS, SHEILA L.', '1004', '5/2/2017 8:01:11 AM', 'C/In', '08:01 AM', '05/02/2017', 1),
	(199, 'SMSI', 'ACHAS, SHEILA L.', '1004', '5/2/2017 5:18:41 PM', 'C/Out', '05:18 PM', '05/02/2017', 1),
	(200, 'SMSI', 'ACHAS, SHEILA L.', '1004', '5/3/2017 8:40:06 AM', 'C/In', '08:40 AM', '05/03/2017', 1),
	(201, 'SMSI', 'ACHAS, SHEILA L.', '1004', '5/3/2017 5:07:48 PM', 'C/Out', '05:07 PM', '05/03/2017', 1),
	(202, 'SMSI', 'ACHAS, SHEILA L.', '1004', '5/4/2017 8:42:51 AM', 'C/In', '08:42 AM', '05/04/2017', 1),
	(203, 'SMSI', 'ACHAS, SHEILA L.', '1004', '5/4/2017 5:10:53 PM', 'C/Out', '05:10 PM', '05/04/2017', 1),
	(204, 'SMSI', 'ACHAS, SHEILA L.', '1004', '5/5/2017 8:47:10 AM', 'C/In', '08:47 AM', '05/05/2017', 1),
	(205, 'SMSI', 'ACHAS, SHEILA L.', '1004', '5/5/2017 5:16:28 PM', 'C/Out', '05:16 PM', '05/05/2017', 1),
	(206, 'SMSI', 'ACHAS, SHEILA L.', '1004', '5/6/2017 8:21:49 AM', 'C/In', '08:21 AM', '05/06/2017', 0),
	(207, 'SMSI', 'ACHAS, SHEILA L.', '1004', '5/8/2017 8:49:52 AM', 'C/In', '08:49 AM', '05/08/2017', 1),
	(208, 'SMSI', 'ACHAS, SHEILA L.', '1004', '5/8/2017 5:12:15 PM', 'C/Out', '05:12 PM', '05/08/2017', 1),
	(209, 'SMSI', 'ACHAS, SHEILA L.', '1004', '5/9/2017 8:45:23 AM', 'C/In', '08:45 AM', '05/09/2017', 1),
	(210, 'SMSI', 'ACHAS, SHEILA L.', '1004', '5/9/2017 5:13:01 PM', 'C/Out', '05:13 PM', '05/09/2017', 1),
	(211, 'SMSI', 'ACHAS, SHEILA L.', '1004', '5/10/2017 8:37:14 AM', 'C/In', '08:37 AM', '05/10/2017', 0),
	(212, 'SMSI', 'ACHAS, SHEILA L.', '1004', '5/11/2017 8:40:01 AM', 'C/In', '08:40 AM', '05/11/2017', 1),
	(213, 'SMSI', 'ACHAS, SHEILA L.', '1004', '5/11/2017 5:09:03 PM', 'C/Out', '05:09 PM', '05/11/2017', 1),
	(214, 'SMSI', 'ACHAS, SHEILA L.', '1004', '5/12/2017 8:40:13 AM', 'C/In', '08:40 AM', '05/12/2017', 1),
	(215, 'SMSI', 'ACHAS, SHEILA L.', '1004', '5/12/2017 5:19:10 PM', 'C/Out', '05:19 PM', '05/12/2017', 1),
	(216, 'SMSI', 'ACHAS, SHEILA L.', '1004', '5/13/2017 8:39:50 AM', 'C/In', '08:39 AM', '05/13/2017', 1),
	(217, 'SMSI', 'ACHAS, SHEILA L.', '1004', '5/13/2017 3:21:11 PM', 'C/Out', '03:21 PM', '05/13/2017', 1),
	(218, 'SMSI', 'ACHAS, SHEILA L.', '1004', '5/15/2017 5:14:04 PM', 'C/In', '05:14 PM', '05/15/2017', 0),
	(219, 'SMSI', 'DANTES, JENNIFER', '1005', '5/4/2017 9:02:18 AM', 'C/In', '09:02 AM', '05/04/2017', 0),
	(220, 'SMSI', 'DANTES, JENNIFER', '1005', '5/5/2017 8:35:55 AM', 'C/In', '08:35 AM', '05/05/2017', 0),
	(221, 'SMSI', 'DANTES, JENNIFER', '1005', '5/15/2017 8:50:14 AM', 'C/In', '08:50 AM', '05/15/2017', 0),
	(222, 'SMSI', 'BALAGOSA, PETE EMANUELL', '1006', '5/2/2017 8:56:50 AM', 'C/In', '08:56 AM', '05/02/2017', 1),
	(223, 'SMSI', 'BALAGOSA, PETE EMANUELL', '1006', '5/2/2017 5:32:04 PM', 'C/Out', '05:32 PM', '05/02/2017', 1),
	(224, 'SMSI', 'BALAGOSA, PETE EMANUELL', '1006', '5/3/2017 8:53:59 AM', 'C/In', '08:53 AM', '05/03/2017', 1),
	(225, 'SMSI', 'BALAGOSA, PETE EMANUELL', '1006', '5/3/2017 5:13:24 PM', 'C/Out', '05:13 PM', '05/03/2017', 1),
	(226, 'SMSI', 'BALAGOSA, PETE EMANUELL', '1006', '5/4/2017 9:09:19 AM', 'C/In', '09:09 AM', '05/04/2017', 1),
	(227, 'SMSI', 'BALAGOSA, PETE EMANUELL', '1006', '5/4/2017 5:08:47 PM', 'C/Out', '05:08 PM', '05/04/2017', 1),
	(228, 'SMSI', 'BALAGOSA, PETE EMANUELL', '1006', '5/5/2017 8:53:03 AM', 'C/In', '08:53 AM', '05/05/2017', 1),
	(229, 'SMSI', 'BALAGOSA, PETE EMANUELL', '1006', '5/5/2017 5:12:09 PM', 'C/Out', '05:12 PM', '05/05/2017', 1),
	(230, 'SMSI', 'BALAGOSA, PETE EMANUELL', '1006', '5/6/2017 8:57:38 AM', 'C/In', '08:57 AM', '05/06/2017', 1),
	(231, 'SMSI', 'BALAGOSA, PETE EMANUELL', '1006', '5/6/2017 5:20:32 PM', 'C/Out', '05:20 PM', '05/06/2017', 1),
	(232, 'SMSI', 'BALAGOSA, PETE EMANUELL', '1006', '5/9/2017 8:57:21 AM', 'C/In', '08:57 AM', '05/09/2017', 1),
	(233, 'SMSI', 'BALAGOSA, PETE EMANUELL', '1006', '5/9/2017 5:16:53 PM', 'C/Out', '05:16 PM', '05/09/2017', 1),
	(234, 'SMSI', 'BALAGOSA, PETE EMANUELL', '1006', '5/11/2017 8:50:40 AM', 'C/In', '08:50 AM', '05/11/2017', 1),
	(235, 'SMSI', 'BALAGOSA, PETE EMANUELL', '1006', '5/11/2017 8:51:25 AM', 'C/In', '08:51 AM', '05/11/2017', 1),
	(236, 'SMSI', 'BALAGOSA, PETE EMANUELL', '1006', '5/11/2017 5:08:29 PM', 'C/Out', '05:08 PM', '05/11/2017', 1),
	(237, 'SMSI', 'BALAGOSA, PETE EMANUELL', '1006', '5/11/2017 5:18:08 PM', 'C/Out', '05:18 PM', '05/11/2017', 1),
	(238, 'SMSI', 'BALAGOSA, PETE EMANUELL', '1006', '5/12/2017 8:59:01 AM', 'C/In', '08:59 AM', '05/12/2017', 1),
	(239, 'SMSI', 'BALAGOSA, PETE EMANUELL', '1006', '5/12/2017 8:59:07 AM', 'C/In', '08:59 AM', '05/12/2017', 1),
	(240, 'SMSI', 'BALAGOSA, PETE EMANUELL', '1006', '5/12/2017 5:38:42 PM', 'C/Out', '05:38 PM', '05/12/2017', 1),
	(241, 'SMSI', 'BALAGOSA, PETE EMANUELL', '1006', '5/13/2017 8:59:03 AM', 'C/In', '08:59 AM', '05/13/2017', 1),
	(242, 'SMSI', 'BALAGOSA, PETE EMANUELL', '1006', '5/13/2017 8:59:08 AM', 'C/In', '08:59 AM', '05/13/2017', 1),
	(243, 'SMSI', 'BALAGOSA, PETE EMANUELL', '1006', '5/13/2017 3:07:10 PM', 'C/Out', '03:07 PM', '05/13/2017', 1),
	(244, 'SMSI', 'BALAGOSA, PETE EMANUELL', '1006', '5/15/2017 9:01:59 AM', 'C/In', '09:01 AM', '05/15/2017', 1),
	(245, 'SMSI', 'BALAGOSA, PETE EMANUELL', '1006', '5/15/2017 5:19:09 PM', 'C/Out', '05:19 PM', '05/15/2017', 1),
	(246, 'SMSI', 'BALAGOSA, PETE EMANUELL', '1006', '5/15/2017 5:19:13 PM', 'C/Out', '05:19 PM', '05/15/2017', 1),
	(247, 'SMSI', 'BALAGOSA, PETE EMANUELL', '1006', '5/15/2017 5:24:31 PM', 'C/Out', '05:24 PM', '05/15/2017', 1),
	(248, 'SMSI', 'BERSANO, ROBERT B.', '104', '5/3/2017 9:01:24 AM', 'C/In', '09:01 AM', '05/03/2017', 1),
	(249, 'SMSI', 'BERSANO, ROBERT B.', '104', '5/3/2017 5:36:45 PM', 'C/Out', '05:36 PM', '05/03/2017', 1),
	(250, 'SMSI', 'BERSANO, ROBERT B.', '104', '5/4/2017 8:59:57 AM', 'C/In', '08:59 AM', '05/04/2017', 1),
	(251, 'SMSI', 'BERSANO, ROBERT B.', '104', '5/4/2017 5:26:12 PM', 'C/Out', '05:26 PM', '05/04/2017', 1),
	(252, 'SMSI', 'BERSANO, ROBERT B.', '104', '5/5/2017 9:03:29 AM', 'C/In', '09:03 AM', '05/05/2017', 1),
	(253, 'SMSI', 'BERSANO, ROBERT B.', '104', '5/5/2017 5:24:11 PM', 'C/Out', '05:24 PM', '05/05/2017', 1),
	(254, 'SMSI', 'BERSANO, ROBERT B.', '104', '5/6/2017 8:06:18 AM', 'C/In', '08:06 AM', '05/06/2017', 1),
	(255, 'SMSI', 'BERSANO, ROBERT B.', '104', '5/6/2017 6:23:20 PM', 'C/Out', '06:23 PM', '05/06/2017', 1),
	(256, 'SMSI', 'BERSANO, ROBERT B.', '104', '5/10/2017 8:52:25 AM', 'C/In', '08:52 AM', '05/10/2017', 1),
	(257, 'SMSI', 'BERSANO, ROBERT B.', '104', '5/10/2017 5:37:20 PM', 'C/Out', '05:37 PM', '05/10/2017', 1),
	(258, 'SMSI', 'BERSANO, ROBERT B.', '104', '5/11/2017 8:59:45 AM', 'C/In', '08:59 AM', '05/11/2017', 1),
	(259, 'SMSI', 'BERSANO, ROBERT B.', '104', '5/11/2017 5:44:35 PM', 'C/Out', '05:44 PM', '05/11/2017', 1),
	(260, 'SMSI', 'BERSANO, ROBERT B.', '104', '5/12/2017 8:50:00 AM', 'C/In', '08:50 AM', '05/12/2017', 1),
	(261, 'SMSI', 'BERSANO, ROBERT B.', '104', '5/12/2017 5:20:03 PM', 'C/Out', '05:20 PM', '05/12/2017', 1),
	(262, 'SMSI', 'BERSANO, ROBERT B.', '104', '5/13/2017 8:08:09 AM', 'C/In', '08:08 AM', '05/13/2017', 0),
	(263, 'SMSI', 'MORENO, RENAN A.', '110', '5/2/2017 8:54:33 AM', 'C/In', '08:54 AM', '05/02/2017', 1),
	(264, 'SMSI', 'MORENO, RENAN A.', '110', '5/2/2017 5:06:13 PM', 'C/Out', '05:06 PM', '05/02/2017', 1),
	(265, 'SMSI', 'MORENO, RENAN A.', '110', '5/3/2017 8:59:10 AM', 'C/In', '08:59 AM', '05/03/2017', 1),
	(266, 'SMSI', 'MORENO, RENAN A.', '110', '5/3/2017 5:13:30 PM', 'C/Out', '05:13 PM', '05/03/2017', 1),
	(267, 'SMSI', 'MORENO, RENAN A.', '110', '5/4/2017 8:53:23 AM', 'C/In', '08:53 AM', '05/04/2017', 1),
	(268, 'SMSI', 'MORENO, RENAN A.', '110', '5/4/2017 5:06:32 PM', 'C/Out', '05:06 PM', '05/04/2017', 1),
	(269, 'SMSI', 'MORENO, RENAN A.', '110', '5/5/2017 8:53:22 AM', 'C/In', '08:53 AM', '05/05/2017', 1),
	(270, 'SMSI', 'MORENO, RENAN A.', '110', '5/5/2017 5:17:17 PM', 'C/Out', '05:17 PM', '05/05/2017', 1),
	(271, 'SMSI', 'MORENO, RENAN A.', '110', '5/6/2017 8:54:39 AM', 'C/In', '08:54 AM', '05/06/2017', 1),
	(272, 'SMSI', 'MORENO, RENAN A.', '110', '5/6/2017 3:16:08 PM', 'C/Out', '03:16 PM', '05/06/2017', 1),
	(273, 'SMSI', 'MORENO, RENAN A.', '110', '5/8/2017 8:49:58 AM', 'C/In', '08:49 AM', '05/08/2017', 1),
	(274, 'SMSI', 'MORENO, RENAN A.', '110', '5/8/2017 5:04:34 PM', 'C/Out', '05:04 PM', '05/08/2017', 1),
	(275, 'SMSI', 'MORENO, RENAN A.', '110', '5/9/2017 8:52:19 AM', 'C/In', '08:52 AM', '05/09/2017', 1),
	(276, 'SMSI', 'MORENO, RENAN A.', '110', '5/9/2017 5:15:22 PM', 'C/Out', '05:15 PM', '05/09/2017', 1),
	(277, 'SMSI', 'MORENO, RENAN A.', '110', '5/10/2017 9:01:52 AM', 'C/In', '09:01 AM', '05/10/2017', 1),
	(278, 'SMSI', 'MORENO, RENAN A.', '110', '5/10/2017 5:14:58 PM', 'C/Out', '05:14 PM', '05/10/2017', 1),
	(279, 'SMSI', 'MORENO, RENAN A.', '110', '5/11/2017 8:41:48 AM', 'C/In', '08:41 AM', '05/11/2017', 1),
	(280, 'SMSI', 'MORENO, RENAN A.', '110', '5/11/2017 5:09:14 PM', 'C/Out', '05:09 PM', '05/11/2017', 1),
	(281, 'SMSI', 'MORENO, RENAN A.', '110', '5/12/2017 8:46:48 AM', 'C/In', '08:46 AM', '05/12/2017', 1),
	(282, 'SMSI', 'MORENO, RENAN A.', '110', '5/12/2017 5:13:34 PM', 'C/Out', '05:13 PM', '05/12/2017', 1),
	(283, 'SMSI', 'MORENO, RENAN A.', '110', '5/13/2017 8:48:51 AM', 'C/In', '08:48 AM', '05/13/2017', 1),
	(284, 'SMSI', 'MORENO, RENAN A.', '110', '5/13/2017 3:01:25 PM', 'C/Out', '03:01 PM', '05/13/2017', 1),
	(285, 'SMSI', 'MORENO, RENAN A.', '110', '5/15/2017 8:54:16 AM', 'C/In', '08:54 AM', '05/15/2017', 1),
	(286, 'SMSI', 'MORENO, RENAN A.', '110', '5/15/2017 5:23:18 PM', 'C/Out', '05:23 PM', '05/15/2017', 1),
	(287, 'SMSI', 'SALVAN, JEAN A.', '111', '5/2/2017 5:20:57 PM', 'C/Out', '05:20 PM', '05/02/2017', 0),
	(288, 'SMSI', 'SALVAN, JEAN A.', '111', '5/3/2017 5:46:28 PM', 'C/Out', '05:46 PM', '05/03/2017', 0),
	(289, 'SMSI', 'SALVAN, JEAN A.', '111', '5/4/2017 5:39:56 PM', 'C/Out', '05:39 PM', '05/04/2017', 0),
	(290, 'SMSI', 'SALVAN, JEAN A.', '111', '5/8/2017 5:09:39 PM', 'C/Out', '05:09 PM', '05/08/2017', 0),
	(291, 'SMSI', 'SALVAN, JEAN A.', '111', '5/12/2017 5:42:54 PM', 'C/Out', '05:42 PM', '05/12/2017', 0),
	(292, 'SMSI', 'SALVAN, JEAN A.', '111', '5/13/2017 2:59:48 PM', 'C/In', '02:59 PM', '05/13/2017', 0),
	(293, 'SMSI', 'JASMIN, JANINE L.', '112', '5/2/2017 8:52:45 AM', 'C/In', '08:52 AM', '05/02/2017', 1),
	(294, 'SMSI', 'JASMIN, JANINE L.', '112', '5/2/2017 5:21:05 PM', 'C/Out', '05:21 PM', '05/02/2017', 1),
	(295, 'SMSI', 'JASMIN, JANINE L.', '112', '5/3/2017 9:02:25 AM', 'C/In', '09:02 AM', '05/03/2017', 1),
	(296, 'SMSI', 'JASMIN, JANINE L.', '112', '5/3/2017 5:28:00 PM', 'C/Out', '05:28 PM', '05/03/2017', 1),
	(297, 'SMSI', 'JASMIN, JANINE L.', '112', '5/4/2017 8:58:35 AM', 'C/In', '08:58 AM', '05/04/2017', 1),
	(298, 'SMSI', 'JASMIN, JANINE L.', '112', '5/4/2017 5:13:53 PM', 'C/Out', '05:13 PM', '05/04/2017', 1),
	(299, 'SMSI', 'JASMIN, JANINE L.', '112', '5/5/2017 8:59:40 AM', 'C/In', '08:59 AM', '05/05/2017', 0),
	(300, 'SMSI', 'JASMIN, JANINE L.', '112', '5/5/2017 2:33:21 PM', 'C/In', '02:33 PM', '05/05/2017', 0),
	(301, 'SMSI', 'JASMIN, JANINE L.', '112', '5/6/2017 8:58:00 AM', 'C/In', '08:58 AM', '05/06/2017', 1),
	(302, 'SMSI', 'JASMIN, JANINE L.', '112', '5/6/2017 3:22:34 PM', 'C/Out', '03:22 PM', '05/06/2017', 1),
	(303, 'SMSI', 'JASMIN, JANINE L.', '112', '5/8/2017 8:55:39 AM', 'C/In', '08:55 AM', '05/08/2017', 1),
	(304, 'SMSI', 'JASMIN, JANINE L.', '112', '5/8/2017 5:27:17 PM', 'C/Out', '05:27 PM', '05/08/2017', 1),
	(305, 'SMSI', 'JASMIN, JANINE L.', '112', '5/9/2017 8:43:55 AM', 'C/In', '08:43 AM', '05/09/2017', 0),
	(306, 'SMSI', 'JASMIN, JANINE L.', '112', '5/9/2017 6:33:56 PM', 'C/In', '06:33 PM', '05/09/2017', 0),
	(307, 'SMSI', 'JASMIN, JANINE L.', '112', '5/10/2017 8:55:21 AM', 'C/In', '08:55 AM', '05/10/2017', 1),
	(308, 'SMSI', 'JASMIN, JANINE L.', '112', '5/10/2017 5:13:51 PM', 'C/Out', '05:13 PM', '05/10/2017', 1),
	(309, 'SMSI', 'JASMIN, JANINE L.', '112', '5/11/2017 9:03:10 AM', 'C/In', '09:03 AM', '05/11/2017', 1),
	(310, 'SMSI', 'JASMIN, JANINE L.', '112', '5/11/2017 5:17:06 PM', 'C/Out', '05:17 PM', '05/11/2017', 1),
	(311, 'SMSI', 'JASMIN, JANINE L.', '112', '5/12/2017 9:01:55 AM', 'C/In', '09:01 AM', '05/12/2017', 1),
	(312, 'SMSI', 'JASMIN, JANINE L.', '112', '5/12/2017 5:36:32 PM', 'C/Out', '05:36 PM', '05/12/2017', 1),
	(313, 'SMSI', 'JASMIN, JANINE L.', '112', '5/15/2017 8:11:11 AM', 'C/In', '08:11 AM', '05/15/2017', 1),
	(314, 'SMSI', 'JASMIN, JANINE L.', '112', '5/15/2017 5:25:43 PM', 'C/Out', '05:25 PM', '05/15/2017', 1),
	(315, 'SMSI', 'BACULIO, MICHAEL D.', '116', '5/2/2017 8:59:11 AM', 'C/In', '08:59 AM', '05/02/2017', 1),
	(316, 'SMSI', 'BACULIO, MICHAEL D.', '116', '5/2/2017 5:29:29 PM', 'C/Out', '05:29 PM', '05/02/2017', 1),
	(317, 'SMSI', 'BACULIO, MICHAEL D.', '116', '5/4/2017 8:52:26 AM', 'C/In', '08:52 AM', '05/04/2017', 1),
	(318, 'SMSI', 'BACULIO, MICHAEL D.', '116', '5/4/2017 5:10:25 PM', 'C/Out', '05:10 PM', '05/04/2017', 1),
	(319, 'SMSI', 'BACULIO, MICHAEL D.', '116', '5/5/2017 8:53:12 AM', 'C/In', '08:53 AM', '05/05/2017', 1),
	(320, 'SMSI', 'BACULIO, MICHAEL D.', '116', '5/5/2017 8:54:58 AM', 'C/In', '08:54 AM', '05/05/2017', 1),
	(321, 'SMSI', 'BACULIO, MICHAEL D.', '116', '5/5/2017 5:16:02 PM', 'C/Out', '05:16 PM', '05/05/2017', 1),
	(322, 'SMSI', 'BACULIO, MICHAEL D.', '116', '5/6/2017 8:59:54 AM', 'C/In', '08:59 AM', '05/06/2017', 0),
	(323, 'SMSI', 'BACULIO, MICHAEL D.', '116', '5/9/2017 9:02:16 AM', 'C/In', '09:02 AM', '05/09/2017', 1),
	(324, 'SMSI', 'BACULIO, MICHAEL D.', '116', '5/9/2017 5:19:45 PM', 'C/Out', '05:19 PM', '05/09/2017', 1),
	(325, 'SMSI', 'BACULIO, MICHAEL D.', '116', '5/9/2017 5:20:54 PM', 'C/Out', '05:20 PM', '05/09/2017', 1),
	(326, 'SMSI', 'BACULIO, MICHAEL D.', '116', '5/10/2017 8:59:36 AM', 'C/In', '08:59 AM', '05/10/2017', 1),
	(327, 'SMSI', 'BACULIO, MICHAEL D.', '116', '5/10/2017 5:15:03 PM', 'C/Out', '05:15 PM', '05/10/2017', 1),
	(328, 'SMSI', 'BACULIO, MICHAEL D.', '116', '5/10/2017 5:23:54 PM', 'C/Out', '05:23 PM', '05/10/2017', 1),
	(329, 'SMSI', 'BACULIO, MICHAEL D.', '116', '5/11/2017 8:57:52 AM', 'C/In', '08:57 AM', '05/11/2017', 1),
	(330, 'SMSI', 'BACULIO, MICHAEL D.', '116', '5/11/2017 5:20:28 PM', 'C/Out', '05:20 PM', '05/11/2017', 1),
	(331, 'SMSI', 'BACULIO, MICHAEL D.', '116', '5/12/2017 8:58:06 AM', 'C/In', '08:58 AM', '05/12/2017', 1),
	(332, 'SMSI', 'BACULIO, MICHAEL D.', '116', '5/12/2017 5:13:01 PM', 'C/Out', '05:13 PM', '05/12/2017', 1),
	(333, 'SMSI', 'BACULIO, MICHAEL D.', '116', '5/13/2017 8:54:14 AM', 'C/In', '08:54 AM', '05/13/2017', 1),
	(334, 'SMSI', 'BACULIO, MICHAEL D.', '116', '5/13/2017 3:07:07 PM', 'C/Out', '03:07 PM', '05/13/2017', 1),
	(335, 'SMSI', 'BACULIO, MICHAEL D.', '116', '5/15/2017 9:00:09 AM', 'C/In', '09:00 AM', '05/15/2017', 0),
	(336, 'SMSI', 'BACULIO, MICHAEL D.', '116', '5/15/2017 5:13:36 PM', 'C/In', '05:13 PM', '05/15/2017', 0),
	(337, 'SMSI', 'BATTAD, DARRYLLE B.', '117', '5/9/2017 8:59:29 AM', 'C/In', '08:59 AM', '05/09/2017', 0),
	(338, 'SMSI', 'BATTAD, DARRYLLE B.', '117', '5/9/2017 6:31:37 PM', 'C/In', '06:31 PM', '05/09/2017', 0),
	(339, 'SMSI', 'BATTAD, DARRYLLE B.', '117', '5/10/2017 8:49:00 AM', 'C/In', '08:49 AM', '05/10/2017', 1),
	(340, 'SMSI', 'BATTAD, DARRYLLE B.', '117', '5/10/2017 5:33:08 PM', 'C/Out', '05:33 PM', '05/10/2017', 1),
	(341, 'SMSI', 'BATTAD, DARRYLLE B.', '117', '5/11/2017 9:14:47 AM', 'C/In', '09:14 AM', '05/11/2017', 1),
	(342, 'SMSI', 'BATTAD, DARRYLLE B.', '117', '5/11/2017 5:22:52 PM', 'C/Out', '05:22 PM', '05/11/2017', 1),
	(343, 'SMSI', 'BATTAD, DARRYLLE B.', '117', '5/12/2017 8:52:53 AM', 'C/In', '08:52 AM', '05/12/2017', 0),
	(344, 'SMSI', 'BATTAD, DARRYLLE B.', '117', '5/13/2017 3:02:57 PM', 'C/Out', '03:02 PM', '05/13/2017', 0),
	(345, 'SMSI', 'BATTAD, DARRYLLE B.', '117', '5/15/2017 8:42:28 AM', 'C/In', '08:42 AM', '05/15/2017', 0),
	(346, 'SMSI', 'BATTAD, DARRYLLE B.', '117', '5/15/2017 5:07:55 PM', 'C/In', '05:07 PM', '05/15/2017', 0);
/*!40000 ALTER TABLE `tbl_attendanceraw` ENABLE KEYS */;

-- Dumping structure for table hris_payroll.tbl_company
DROP TABLE IF EXISTS `tbl_company`;
CREATE TABLE IF NOT EXISTS `tbl_company` (
  `company_id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `code` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`company_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- Dumping data for table hris_payroll.tbl_company: 12 rows
/*!40000 ALTER TABLE `tbl_company` DISABLE KEYS */;
INSERT INTO `tbl_company` (`company_id`, `name`, `code`) VALUES
	(1, 'Solutions Management Systems Inc.', 'SMSI'),
	(2, 'Amaara Financial Corporation', 'AFC'),
	(3, 'Norminring Development Corporation', 'NDC'),
	(4, 'Mindanao Educators Mutual Benefit Association , Inc.', 'MEMBAI'),
	(5, 'Bellarmine Magister Enrichment Corporation', 'BELLMEC'),
	(6, 'Manila Teachers Mutual Aid System, Inc.', 'MTMAS'),
	(7, 'Currahee Construction Corporation', 'C3'),
	(8, 'Primo Partners Phils, Inc.', 'PRIMO'),
	(9, 'My Only Way, Inc.', 'MOWI'),
	(10, 'Mindanao Precast Structures Inc.', 'MPSI'),
	(11, 'Amaara Corporation', 'AMAARA CORP'),
	(12, 'Currahee Group of Companies', 'CGC');
/*!40000 ALTER TABLE `tbl_company` ENABLE KEYS */;

-- Dumping structure for table hris_payroll.tbl_cutoff
DROP TABLE IF EXISTS `tbl_cutoff`;
CREATE TABLE IF NOT EXISTS `tbl_cutoff` (
  `cutoff_id` int(10) NOT NULL AUTO_INCREMENT,
  `cutoff_range` varchar(50) DEFAULT NULL,
  `company_id` varchar(50) DEFAULT NULL,
  `occurence_id` int(11) DEFAULT NULL,
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `lastUpdated` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`cutoff_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table hris_payroll.tbl_cutoff: 2 rows
/*!40000 ALTER TABLE `tbl_cutoff` DISABLE KEYS */;
INSERT INTO `tbl_cutoff` (`cutoff_id`, `cutoff_range`, `company_id`, `occurence_id`, `from_date`, `to_date`, `status`, `lastUpdated`) VALUES
	(1, '15 May 2017 to 30 May 2017', 'Solutions Management Systems Inc.', 2, '2017-05-15', '2017-05-30', 'Done', '2017-06-06 17:01:34'),
	(2, '1 May 2017 to 15 May 2017', 'Solutions Management Systems Inc.', 2, '2017-05-01', '2017-05-15', 'Processing', '2017-06-06 17:01:34');
/*!40000 ALTER TABLE `tbl_cutoff` ENABLE KEYS */;

-- Dumping structure for table hris_payroll.tbl_employee
DROP TABLE IF EXISTS `tbl_employee`;
CREATE TABLE IF NOT EXISTS `tbl_employee` (
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
  `tin` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `company` varchar(50) DEFAULT NULL,
  `branch` varchar(50) DEFAULT NULL,
  `position` varchar(50) DEFAULT NULL,
  `rank` varchar(50) DEFAULT NULL,
  `tax_status` varchar(50) DEFAULT NULL,
  `employment_status` varchar(50) DEFAULT NULL,
  `basic_salary` int(10) DEFAULT '0',
  `lastUpdated` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_employee` (`id_employee`)
) ENGINE=MyISAM AUTO_INCREMENT=2118 DEFAULT CHARSET=latin1;

-- Dumping data for table hris_payroll.tbl_employee: 117 rows
/*!40000 ALTER TABLE `tbl_employee` DISABLE KEYS */;
INSERT INTO `tbl_employee` (`id`, `id_employee`, `emp_id`, `emp_bio_id`, `fName`, `mName`, `lName`, `shiftgroup`, `sss_id`, `phic_id`, `hdmf_id`, `tin`, `company`, `branch`, `position`, `rank`, `tax_status`, `employment_status`, `basic_salary`, `lastUpdated`) VALUES
	(2003, 1, '310-98-4', '1005', 'Jennifer', 'Palo', 'Dantes', 'Permanent', '09-2010232-1', '19-050708923', '1040-0220-82', '916-191-555', 'Solutions Management Systems Inc.', 'Cagayan De Oro', 'HRD Head', 'Level 10', 'M1', 'Regular', 10000, '2017-05-25 13:31:17'),
	(2004, 2, '', '10025', 'Charizze Mae', 'Taboada', 'Lumagsao', 'Part-Time', '8-15700359', '150501399622', '121025696574', '', 'Solutions Management Systems Inc.', 'Cagayan De Oro', 'HR Payroll', 'Level 2', 'S', 'Resigned', 0, '2017-05-25 13:31:17'),
	(2005, 12, '', '1004', 'Shiela', 'L.', 'Achas', 'Permanent', '08-2580153-6', '150504178309', '121148071155', '330785488000', 'Solutions Management Systems Inc.', 'Cagayan De Oro', 'Administrative Assistant /Cashier', 'Level 1', 'S', 'Regular', 11000, '2017-05-25 13:31:17'),
	(2006, 22, '', '10023', 'Daina Jane', 'Layar', 'Lungtad', 'Part-Time', '08-2663610-8', '150253033462', '121148247833', '331694187', 'Solutions Management Systems Inc.', 'Cagayan De Oro', 'HR Staff', 'Level 1', 'S', 'Regular', 11, '2017-05-25 13:31:17'),
	(2007, 32, '', '', 'Angelito', 'Diaz', 'Delada', 'Permanent', '09-28611092', '160504045878', '121031718739', '945606122', 'Primo Partners Phils, Inc.', 'Davao', 'Steward', '', 'S', 'Regular', 0, '2017-05-25 13:31:17'),
	(2008, 42, '', '', 'Kimberly', 'Arcena', 'Bicong', 'Permanent', '', '162506289777', '915170351768', '429744351', 'Primo Partners Phils, Inc.', 'Davao', 'Food Server', '', '', 'Regular', 0, '2017-05-25 13:31:17'),
	(2009, 52, '', '', 'Rachel', 'Likit', 'Brua', 'Permanent', '09-3103097-4', '170252743289', '121101750577', '445-307-079', 'Primo Partners Phils, Inc.', 'Davao', 'Admin Supervisor/Cash Custodian/HR', '', 'S', 'Regular', 15, '2017-05-25 13:31:17'),
	(2010, 62, '', '', 'Cheryrose', 'Nepomuceno', 'Gabaton', 'Permanent', '0933035427', '160504739322', '121115018624', '444168187000', 'Primo Partners Phils, Inc.', 'Davao', 'Bookkeeper', '', 'S', 'Regular', 0, '2017-05-25 13:31:17'),
	(2011, 72, '', '', 'Nathaniel', 'Pasco', 'Dela Pena', 'Permanent', '09-08358948', '160500375997', '005064402507', '124010444', 'Primo Partners Phils, Inc.', 'Davao', 'Cook', '', 'M', 'Regular', 0, '2017-05-25 13:31:17'),
	(2012, 82, '', '', 'Amalia', 'Demapitan', 'Frias', 'Part-Time', '09-15874295', '170502340371', '121030580785', '450957189', 'Primo Partners Phils, Inc.', 'Davao', 'Chef/Cold Section', '', 'S', 'Regular', 0, '2017-05-25 13:31:17'),
	(2013, 92, '', '', 'Leny', 'Serue', 'Lastrella', 'Permanent', '09278694176', '170501695087', '18000768907', '429743909', 'Primo Partners Phils, Inc.', 'Davao', 'Inventory Controller', '', 'S', 'Regular', 0, '2017-05-25 13:31:17'),
	(2014, 102, '', '', 'Erlyn', 'Bolante', 'Lim', 'Permanent', '09-30062419', '160503475631', '121032392549', '286335650', 'Primo Partners Phils, Inc.', 'Davao', 'Cashier', '', 'S', 'Regular', 0, '2017-05-25 13:31:17'),
	(2015, 112, '', '', 'Aldrin', 'Cotamora', 'Loma', 'Part-Time', '09-38159793', '160506389620', '121157478629', '', 'Primo Partners Phils, Inc.', 'Davao', 'Food Server', '', 'S', 'Resigned', 0, '2017-05-25 13:31:17'),
	(2016, 122, '', '', 'Lyrie Mae', 'Lustre', 'Magbutay', 'Permanent', '09-3230107-1', '121028563644', '160504463106', '460-769-947', 'Primo Partners Phils, Inc.', 'Davao', 'Cashier/Dining', '', 'S1', 'Regular', 0, '2017-05-25 13:31:17'),
	(2017, 132, '', '', 'Rodel', 'Esmedina', 'Villegas', 'Permanent', '09-3345227-5', '150504925215', '121029330515', '415-610-167', 'Primo Partners Phils, Inc.', 'Davao', 'Cook', '', 'S', 'Regular', 20, '2017-05-25 13:31:17'),
	(2018, 142, '', '', 'Henilito', 'Gonzales', 'Polia Jr.', 'Permanent', '09-3208339-9', '160504315484', '121029358912', '400-672-745', 'Primo Partners Phils, Inc.', 'Davao', 'Bartender', '', 'S', 'Regular', 0, '2017-05-25 13:31:17'),
	(2019, 152, '', '', 'Nestor', 'Masing', 'Bantilan', 'Permanent', '09-1244652-9', '160500046756', '913169041227', '124-651-296', 'Primo Partners Phils, Inc.', 'Davao', 'Dining Supervisor', '', 'M', 'Regular', 0, '2017-05-25 13:31:17'),
	(2020, 162, '', '', 'Roberto', 'Celerio', 'Jambaro Jr.', 'Permanent', '0925830148', '160503436059', '188000743398', '308884166000', 'Primo Partners Phils, Inc.', 'Davao', 'Kitchen Supervisor', '', 'S1', 'Regular', 0, '2017-05-25 13:31:17'),
	(2021, 192, '', '', 'Junmer', 'Rebuyas', 'Talidong', 'Permanent', '09-300-44709', '160505841848', '91320145691', '', 'Primo Partners Phils, Inc.', 'Davao', 'Food Server', '', 'S', 'Regular', 0, '2017-05-25 13:31:17'),
	(2022, 202, '', '', 'Ryan', 'Dodoso', 'Florencio', 'Permanent', '09-3164239-1', '160504252636', '121086740639', '291-191-248', 'Primo Partners Phils, Inc.', 'Davao', 'Cook', '', 'S', 'Regular', 0, '2017-05-25 13:31:17'),
	(2023, 212, '', '', 'Arnold', 'Aboyme', 'Plaza', 'Part-Time', '09-4157916-6', '162508071957', '', '', 'Primo Partners Phils, Inc.', 'Davao', 'Steward', '', 'S', 'Probationary', 0, '2017-05-25 13:31:17'),
	(2024, 222, '', '', 'Jimrey', 'R.', 'Abenoja', 'Permanent', '09-3224951-5', '160506266820', '121122325178', '455239111', 'Currahee Construction Corporation', 'CDO', 'General Maintenance Service', '', 'S1', 'Regular', 0, '2017-05-29 02:07:23'),
	(2025, 232, '', '', 'Nerio', 'Gildore', 'Amper', 'Permanent', '0916548070', '190902066156', '388004036012', '922208289', 'Currahee Construction Corporation', 'DVO', 'Financial comptroller', '', 'M2', 'Regular', 0, '2017-05-29 01:58:25'),
	(2026, 262, '', '', 'James', 'C.', 'Baldosano', 'Permanent', '08-1841488-8', '150502798830', '121028250041', '405322115', 'Currahee Construction Corporation', 'CDO', 'Field Engineer', '', 'M1', 'Regular', 0, '2017-05-30 01:17:23'),
	(2027, 282, '', '', 'Renante', 'M.', 'Cabigas', 'Permanent', '0613995298', '152016370597', '111129529206', '422012853', 'Currahee Construction Corporation', 'CDO', 'Liaison and Purchaser', '', 'M2', 'Regular', 0, '2017-05-30 01:19:47'),
	(2028, 292, '', '', 'Gerald', 'Detoyato', 'Caro', 'Permanent', '3430488752', '112021267328', '121166288885', '', 'Currahee Construction Corporation', 'CDO', 'Draftsman', '', 'M1', 'Regular', 0, '2017-05-30 01:25:07'),
	(2029, 312, '', '', 'Ramon Alejandro', 'Magtajas', 'Valleser', 'Permanent', '08-1543251-7', '150251923010', '121048504092', '942957588', 'Solutions Management Systems Inc.', 'Cagayan De Oro', 'General Manager', 'Level 6', 'M', 'Regular', 32, '2017-05-25 13:31:17'),
	(2030, 322, '', '', 'Elgin', 'Cabunilas', 'Camilotes', 'Permanent', '09-3653870-9', '160505803776', '121098218437', '440119377', 'Currahee Construction Corporation', 'DVO', 'Draftsman', '', 'M2', 'Regular', 0, '2017-05-29 01:43:57'),
	(2031, 332, '', '', 'Aileen Joy', 'C', 'Castro', 'Permanent', '0928422634', '160502867331', '188000966823', '945454280', 'Currahee Construction Corporation', 'DVO', 'Bookkeeper', '', 'S', 'Regular', 0, '2017-05-29 01:56:18'),
	(2032, 352, '', '', 'Elvira', 'Carvajal', 'Montera', 'Permanent', '09-2211068-3', '160501550245', '121042672683', '928503260', 'Solutions Management Systems Inc.', 'Cagayan De Oro', 'Acctg & Audit Head', 'Level 5', 'M3', 'Regular', 0, '2017-05-25 05:52:49'),
	(2033, 362, '', '', 'Kristine Joy', 'Carreon', 'Dealca', 'Permanent', '', '', '', '', 'Currahee Construction Corporation', 'DVO', 'Bookkeeper', '', 'S', 'Regular', 0, '2017-05-25 13:31:17'),
	(2034, 372, '', '10021', 'Raul Adrian', 'Apuli', 'Altavano', 'Permanent', '34-6405963-6', '150504494774', '121144034952', '445182360', 'Solutions Management Systems Inc.', 'Cagayan De Oro', 'Software Developer', 'Level 1', 'S', 'Regular', 11000, '2017-05-25 13:31:17'),
	(2035, 382, '', '', 'May', 'Abroguena', 'Ebalang', 'Permanent', '08-1441611-0', '150251158837', '121030943288', '930-840161', 'Currahee Construction Corporation', 'CDO', 'Administrative Staff', '', 'S', 'Probationary', 0, '2017-05-25 05:44:42'),
	(2036, 392, '', '10002', 'Charlene', 'Jomoc', 'Almuete', 'Permanent', '0826525316', '150504277390', '', '330785931', 'Solutions Management Systems Inc.', 'Cagayan De Oro', 'Software Developer', 'Level 1', 'S', 'Regular', 12000, '2017-05-25 13:31:17'),
	(2037, 402, '', '', 'Patricio', 'R.', 'Galdo', 'Permanent', '08-1623217-2', '020506435049', '104002270786', '272572003', 'Currahee Construction Corporation', 'CDO', 'Utility Service Personnel', '', 'S', 'Regular', 0, '2017-05-25 13:31:17'),
	(2038, 412, '', '1003', 'Marco', 'Costamero', 'Arangco', 'Permanent', '06-2815784-3', '120507216566', '912202004888', '268-593-414', 'Solutions Management Systems Inc.', 'Cagayan De Oro', 'Software Developer', 'Level 1', 'M2', 'Regular', 16000, '2017-05-25 13:31:17'),
	(2039, 422, '', '', 'Izza Honey', 'C.', 'Manluza', 'Permanent', '08-1832709-8', '030507822025', '121137475012', '326-755-623', 'Currahee Construction Corporation', 'CDO', 'Office Engineer', '', 'M', 'Regular', 0, '2017-05-25 13:31:17'),
	(2040, 442, '', '', 'Cherie Mae', 'Dela Torre', 'Maghanoy', 'Permanent', '08-1275316-3', '150251721450', '121099680814', '907-060-178', 'Currahee Construction Corporation', 'CDO', 'Bookkeeper', '', 'S', 'Regular', 0, '2017-05-25 13:31:17'),
	(2041, 452, '', '', 'Arnaldo', 'Arguilles', 'Mantillas', 'Permanent', '08-1075836-1', '180514581443', '310101797702', '180-027-122', 'Currahee Construction Corporation', 'CDO', 'Operations Manager', 'Level 10', 'M1', 'Regular', 0, '2017-05-25 13:31:17'),
	(2042, 462, '', '10017', 'Brazzel Gay', 'J.', 'Cabaltera', 'Permanent', '0939595806', '010520667240', '121151311466', '472885607', 'Solutions Management Systems Inc.', 'Cagayan De Oro', 'Social Media Associate', 'Level 1', 'S', 'Regular', 10, '2017-05-25 13:31:17'),
	(2043, 472, '', '110', 'Renan', 'A.', 'Moreno', 'Permanent', '0816173053', '150502397216', '182000543107', '410675176', 'Solutions Management Systems Inc.', 'Cagayan De Oro', 'Web Lead', 'Level 3', 'M', 'Regular', 0, '2017-05-25 06:20:18'),
	(2044, 482, '', '', 'Rolando', 'T.', 'Mosqueda', 'Permanent', '09-2739922-1', '160505100007', '104002257284', '422-012-424', 'Currahee Construction Corporation', 'DVO', 'Utility Service Personnel', '', 'M1', 'Project Based', 0, '2017-05-30 01:07:46'),
	(2045, 502, '', '111', 'Jean', 'S.', 'Godornes', 'Permanent', '0816613128', '150501858430', '182000563981', '950159075', 'Solutions Management Systems Inc.', 'Cagayan De Oro', 'Operations Supervisor', 'Level 5', 'M', 'Regular', 15000, '2017-05-25 07:56:03'),
	(2046, 512, '', '116', 'Michael', 'Dayag', 'Baculio', 'Permanent', '08-1605491-0', '010505744239', '109002186565', '256027612', 'Solutions Management Systems Inc.', 'Cagayan De Oro', 'Technical Support Personnel', 'Level 1', 'M1', 'Regular', 10000, '2017-05-25 13:31:17'),
	(2047, 542, '', '104', 'Robert', 'Batonghinog', 'Bersano', 'Permanent', '0815082802', '020503777364', '104002242398', '937694691', 'Solutions Management Systems Inc.', 'Cagayan De Oro', 'Technical Support Lead', 'Level 3', 'M1', 'Regular', 0, '2017-05-25 13:31:17'),
	(2048, 552, '', '1006', 'Pete Emmanuell', 'L.', 'Balagosa', 'Permanent', '08-1801748-9', '150503883890', '121134979348', '330784605', 'Solutions Management Systems Inc.', 'Cagayan De Oro', 'Technical Support Personnel', 'Level 1', 'S', 'Regular', 11, '2017-05-25 13:31:17'),
	(2049, 562, '', '117', 'Khristian Darylle Joe', 'Bona', 'Battad', 'Permanent', '3442813205', '020262108512', '121131509835', '468727860', 'Solutions Management Systems Inc.', 'Cagayan De Oro', 'Technical Support', '', 'S', 'Regular', 0, '2017-05-25 13:31:17'),
	(2050, 582, '', '', 'John', 'M.', 'Mingo', 'Permanent', '09-3781267-5', '160506605102', '121122227418', '466-263-614', 'Currahee Construction Corporation', 'DVO', 'Field Engineer', '', 'S', 'Regular', 0, '2017-05-29 02:26:11'),
	(2051, 592, '', '', 'Gina', 'Aboyme', 'Micoy', 'Permanent', '09-2734790-1', '160502253724', '121059984317', '946-922-702', 'Currahee Construction Corporation', 'DVO', 'Accounting Supervisor', '', 'M2', 'Regular', 0, '2017-05-29 02:23:27'),
	(2052, 602, '', '', 'Lowie', 'G.', 'Ulo', 'Permanent', '09-3438201-4', '162008037167', '121142112706', '466-263-405', 'Currahee Construction Corporation', 'DVO', 'General Maintenance Service', '', 'M', 'Regular', 0, '2017-05-30 01:14:08'),
	(2053, 612, '', '', 'Mario', 'Quiam', 'Tolosa', 'Project Based', '33-2666182-9', '082011907160', '', '', 'Currahee Construction Corporation', 'CDO', 'Foreman', '', 'M3', 'Regular', 0, '2017-05-27 06:39:05'),
	(2054, 622, '', '', 'Julius', 'B.', 'Lascano', 'Part-Time', '33-3909769-7', '190521055409', '108000076981', '918-900-880', 'Currahee Construction Corporation', 'CDO', 'Logistic Manager', '', 'S', 'Probationary', 0, '2017-05-25 13:31:17'),
	(2055, 632, '', '', 'Romnick June', 'A.', 'Elcana', 'Part-Time', '09-2857476-0', '160502796558', '121194643961', '', 'Currahee Construction Corporation', 'DVO', 'Draftsman', '', 'S', 'Probationary', 10, '2017-05-29 02:18:06'),
	(2056, 642, '', '10019', 'Diane Joy', 'Yu', 'Mapano', 'Permanent', '1010277291', '140251731043', '121007858757', '452117419', 'Solutions Management Systems Inc.', 'Cagayan De Oro', 'Senior Accounting Technician', '', 'S', 'Regular', 12, '2017-05-25 05:38:02'),
	(2057, 652, '', '10014', 'Cresar John', 'Reyes', 'Arce', 'Permanent', '0922273135', '162003641023', '190000056276', '947987046', 'Solutions Management Systems Inc.', 'Cagayan De Oro', 'Administrative Assistant /Cashier', 'Level 1', 'M2', 'Regular', 12500, '2017-05-25 13:31:17'),
	(2058, 662, '', '10013', 'Lorman', 'S.', 'Saladaga', 'Permanent', '1009497752', '140251248725', '914301364780', '816667', 'Solutions Management Systems Inc.', 'Cagayan De Oro', 'Senior Internal Auditor', 'Level 3', 'S', 'Regular', 12, '2017-05-25 06:54:45'),
	(2059, 672, '', '', 'Geneth', 'S.', 'Jadulan', 'Permanent', '0935125869', '160505344984', '121070911178', '429361074', 'Solutions Management Systems Inc.', 'Cagayan De Oro', 'Senior Internal Auditor', 'Level 3', 'S', 'Regular', 15, '2017-05-25 13:31:17'),
	(2060, 682, '', '', 'Nancy', 'Montebon', 'Wong', 'Permanent', '0919148684', '160501640325', '101000063572', '940042814', 'Primo Partners Phils, Inc.', 'Davao', 'Operations Manager', '', 'S1', 'Regular', 24, '2017-05-25 13:31:17'),
	(2061, 692, '', '', 'Jeffrey', 'Moneba', 'Antoque', 'Permanent', '0937380136', '160255309649', '121111591247', '409174979', 'Norminring Development Corporation', 'CDO', 'Senior Service Mechanic', '', 'S', 'Regular', 0, '2017-05-25 13:31:17'),
	(2062, 702, '', '', 'Salome', 'M.', 'Bodiongan', 'Permanent', '', '', '', '', 'Norminring Development Corporation', 'DVO', 'Inventory Controller', '', 'S', 'Regular', 14, '2017-05-25 13:31:17'),
	(2063, 712, '', '', 'Ryan Evan', 'P.', 'Almacin', 'Part-Time', '09-2732070-8', '', '', '432-197-977', 'Norminring Development Corporation', 'DVO', 'GSP', '', 'M', 'Probationary', 10, '2017-05-25 13:31:17'),
	(2064, 722, '', '', 'Raquel', 'A.', 'Baldecantos', 'Permanent', '3458063803', '140502131016', '121167253093', '', 'Norminring Development Corporation', 'DPL', 'Branch Cashier', '', 'S', 'Regular', 0, '2017-05-25 13:31:17'),
	(2065, 732, '', '', 'Gwyne', 'G.', 'Delos Reyes', 'Permanent', '0922110900', '160501436590', '121029344671', '931745676', 'Norminring Development Corporation', 'DVO', 'Bookkeeper', '', 'M', 'Regular', 0, '2017-05-25 13:31:17'),
	(2066, 742, '', '', 'Miejor', 'T.', 'Dela Cruz', 'Permanent', '', '150502394209', '', '', 'Norminring Development Corporation', 'DVO', 'Service & After Sales Manager', '', 'M2', 'Regular', 14, '2017-05-25 13:31:17'),
	(2067, 752, '', '', 'Rudini', 'G.', 'Galdo', 'Part-Time', '', '', '', '', 'Norminring Development Corporation', 'DVO', 'Branch Cashier', '', 'S', 'Probationary', 0, '2017-05-25 13:31:17'),
	(2068, 762, '', '', 'Allyn', 'C.', 'Angustia', 'Part-Time', '0939076231', '162509528500', '', '', 'Norminring Development Corporation', 'DVO', 'Sales Associate', '', 'S', 'Regular', 11, '2017-05-25 13:31:17'),
	(2069, 772, '', '', 'Reil Hazzin', 'Batilona', 'Bicoy', 'Permanent', '1011114502', '120513230309', '121142125817', '', 'Norminring Development Corporation', 'DPL', 'MRP - Sales', '', 'M1', 'Regular', 0, '2017-05-25 13:31:17'),
	(2070, 782, '', '', 'Marlon', 'R.', 'Gal', 'Permanent', '', '', '', '', 'Norminring Development Corporation', 'DVO', 'General Service Maintenance', '', 'M', 'Regular', 0, '2017-05-25 13:31:17'),
	(2071, 792, '', '', 'Rudini', 'G.', 'Galdo', 'Part-Time', '', '', '', '', 'Norminring Development Corporation', 'DVO', 'Branch Cashier', '', 'S', '', 0, '2017-05-25 13:31:17'),
	(2072, 802, '', '', 'Arturo', 'G.', 'Lopez Jr.', 'Part-Time', '0929775063', '160252612308', '121180477483', '425186753', 'Norminring Development Corporation', 'DVO', 'Driver/Mechanic', '', 'M', 'Probationary', 10, '2017-05-25 13:31:17'),
	(2073, 812, '', '', 'Jose Miguel', 'P.', 'Jonelas', 'Part-Time', '0941836113', '162506888417', '917004406258', '', 'Norminring Development Corporation', 'DVO', 'Assistant Bookkeeper', '', 'S', 'Probationary', 10, '2017-05-25 13:31:17'),
	(2074, 822, '', '', 'Jessa', 'Datulayta', 'Bayking', 'Permanent', '09-35775620', '160256016613', '121177270191', '492-048-158', 'Mindanao Precast Structures Inc.', 'CDO', 'Secretary/Admin', '', 'S', 'Regular', 0, '2017-05-25 13:31:17'),
	(2075, 832, '', '', 'Ralph Nicko', 'Alcober', 'Olam', 'Permanent', '08-1977086-4', '150503440239', '916215856747', '492-049-415', 'Mindanao Precast Structures Inc.', 'CDO', 'Company Driver', '', 'S', 'Regular', 0, '2017-05-25 13:31:17'),
	(2076, 842, '', '', 'Armando', 'L.', 'Bagac', 'Permanent', '08-23845222', '150503550425', '121138563124', '492-048-869', 'Mindanao Precast Structures Inc.', 'CDO', 'General Maintenance', '', 'S', 'Regular', 0, '2017-05-25 13:31:17'),
	(2077, 852, '', '', 'Harold', 'Domo', 'Aparicio', 'Part-Time', '', '150252810651', '', '', 'Mindanao Precast Structures Inc.', 'CDO', 'Production Supervisor', '', 'S', 'Probationary', 0, '2017-05-25 13:31:17'),
	(2078, 862, '', '', 'John Gleen', 'Diaz', 'Panebio', 'Permanent', '08-1461106-7', '030501829486', '121004908041', '288-518-234', 'Mindanao Precast Structures Inc.', 'CDO', 'Production Head', '', 'M', 'Regular', 0, '2017-05-25 13:31:17'),
	(2079, 872, '', '', 'Arnulfo', 'V.', 'Layco', 'Permanent', '33-5724371', '020500083639', '1040-0040-57', '213-811-070', 'Norminring Development Corporation', 'DVO', 'General Manager', '', 'M2', 'Regular', 0, '2017-05-25 13:31:17'),
	(2080, 882, '', '', 'Stephanie', 'A.', 'Somoza', 'Part-Time', '', '', '', '', 'Norminring Development Corporation', 'DVO', 'Sales Associate', '', 'S', 'Probationary', 10, '2017-05-25 13:31:17'),
	(2081, 892, '', '', 'Jaymar', 'R.', 'Coresis', 'Permanent', '09-2984886-4', '060503261070', '', '', 'Norminring Development Corporation', 'DVO', 'Partsman', '', 'S', 'Regular', 11, '2017-05-25 13:31:17'),
	(2082, 902, '', '', 'Mark Anthony', 'M.', 'Montera', 'Permanent', '0920192988', '162003621529', '', '924469729', 'Norminring Development Corporation', 'DVO', 'Utility/Liaison', '', 'S', 'Regular', 0, '2017-05-25 13:31:17'),
	(2083, 912, '', '', 'Rizza Mae', 'C.', 'Lapinid', 'Part-Time', '0942047011', '170253314020', '4866783', '485272573', 'Norminring Development Corporation', 'DVO', 'Sales Associate', '', 'S1', 'Probationary', 10, '2017-05-25 13:31:17'),
	(2084, 922, '', '', 'Pamela Ivy', 'A.', 'Improgo', 'Permanent', '', '', '', '', 'Norminring Development Corporation', 'CDO', 'Branch Manager', '', 'S1', 'Regular', 0, '2017-05-25 13:31:17'),
	(2085, 932, '', '', 'Jenner Nino', 'B.', 'Moneba', 'Permanent', '0924271258', '160501354306', '', '928767649', 'Norminring Development Corporation', 'DVO', 'Service and After Sales Manager', '', '', 'Regular', 0, '2017-05-25 13:31:17'),
	(2086, 942, '', '', 'Joesus', 'L.', 'Rabadan', 'Permanent', '', '', '', '', 'Norminring Development Corporation', 'CDO', 'GSP', '', 'S1', 'Regular', 0, '2017-05-25 13:31:17'),
	(2087, 952, '', '', 'Michael Angelou', 'H.', 'Ponte', 'Permanent', '', '160504101026', '', '', 'Norminring Development Corporation', 'CDO', 'MRP - Sales', '', 'S', 'Regular', 0, '2017-05-25 13:31:17'),
	(2088, 962, '', '', 'Leo Alfie', 'A.', 'Quipanes', 'Permanent', '06-2515281-2', '120508612104', '913030000320', '289493450000', 'Norminring Development Corporation', 'ZBO', 'Senior Service Mechanic', '', 'S1', 'Regular', 0, '2017-05-25 13:31:17'),
	(2089, 972, '', '', 'Norben Jay', 'Leron', 'Ruiz', 'Permanent', '11-0370996-4', '160504245400', '121135281185', '297110378000', 'Norminring Development Corporation', 'DVO', 'Lead Service Mechanic', '', 'M3', 'Regular', 0, '2017-05-25 13:31:17'),
	(2090, 992, '', '', 'Danilo', 'T.', 'Palo Jr.', 'Permanent', '0923935935', '160501224674', '188000522089', '929085069', 'Norminring Development Corporation', 'KID', 'Senior Service Mechanic', '', '', 'Regular', 0, '2017-05-25 13:31:17'),
	(2091, 1002, '', '', 'Nelson', 'S.', 'Tacoloy', 'Permanent', '0927359096', '', '188001482849', '412120768', 'Norminring Development Corporation', 'DVO', 'Junior Service Mechanic', '', 'M1', 'Regular', 12, '2017-05-25 13:31:17'),
	(2092, 1012, '', '', 'Roland', 'C.', 'Sarce', 'Permanent', '0922452639', '', '', '', 'Norminring Development Corporation', 'DVO', 'Junior Service Mechanic', '', 'S', 'Regular', 0, '2017-05-25 13:31:17'),
	(2093, 1022, '', '', 'Jasper', 'B.', 'Saludes', 'Part-Time', '09-3982708-2', '', '1211-5491-23', '', 'Norminring Development Corporation', 'DVO', 'Junior Service Mechanic', '', 'S', 'Regular', 11, '2017-06-03 05:19:41'),
	(2094, 1032, '', '', 'Ivan', 'Orbeta', 'Paredes', 'Permanent', '09-2319395-5', '160501550229', '915043561517', '922203402', 'Norminring Development Corporation', 'DPL', 'Branch Manager', '', 'S', 'Regular', 0, '2017-05-25 13:31:17'),
	(2095, 1042, '', '', 'Girlie', 'G.', 'Tolosa', 'Permanent', '', '', '', '', 'Norminring Development Corporation', 'ZBO', 'Branch Cashier', '', '', 'Regular', 0, '2017-05-25 13:31:17'),
	(2096, 1052, '', '', 'Kirbay Jay', 'A.', 'Ragol', 'Permanent', '09-4205318-6', '162010570662', '', '', 'Norminring Development Corporation', 'DVO', 'Service Mechanic', '', '', 'Regular', 11, '2017-05-25 13:31:17'),
	(2097, 1062, '', '', 'Lovely Judy May', 'P.', 'Villar', 'Permanent', '0941445135', '160507400628', '121192880142', '', 'Norminring Development Corporation', 'DVO', 'Sales Associate', '', 'S', 'Regular', 10, '2017-05-25 13:31:17'),
	(2098, 1072, '', '', 'Anthony Greg', 'L.', 'Naduma', 'Permanent', '06-2877441-7', '180252527352', '121143095233', '460-398-585', 'Norminring Development Corporation', 'CDO', 'Sales and Marketing', '', 'S', 'Probationary', 0, '2017-05-25 13:31:17'),
	(2099, 1082, '', '', 'Joer', 'S.', 'Delas Penas', 'Permanent', '', '170501971165', '', '280184534', 'Norminring Development Corporation', 'DVO', 'MRP - Sales', '', 'S', 'Regular', 11, '2017-05-25 13:31:17'),
	(98, 1092, '', '', 'Ivy', 'R.', 'Florentino', 'Permanent', '0941791452', '162511202515', '916236620041', '‎498-109-584', 'Bellarmine Magister Enrichment Corporation', '', 'Front Desk Officer', '', 'S', '', 0, '2017-05-30 05:39:23'),
	(99, 1102, '', '', 'April Dan', 'S.', 'Borromeo', 'Permanent', '940335961', '162500434732', '916273954122', '‎498-110-152', 'Bellarmine Magister Enrichment Corporation', '', 'Maintenance/Marketing Assistant', '', 'S', '', 0, '2017-05-30 06:19:19'),
	(2100, 1112, '', '', 'Junalona', 'R.', 'Basalo', 'Part-Time', '', '', '', '', 'Bellarmine Magister Enrichment Corporation', '', 'Trainer-Full Time', '', 'S', '', 0, '2017-05-25 13:31:17'),
	(2101, 1122, '', '', 'Margilen', 'Edrozo', 'Abuhan', 'Project Based', '', '150254168765', '', '461537289', 'My Only Way, Inc.', '', 'Farm Caretaker', '', '', '', 0, '2017-05-25 13:31:17'),
	(2102, 1132, '', '', 'Alejando', 'Tilos', 'Paloma', 'Permanent', '09-2341709-7', '162005511844', '', '291789935', 'My Only Way, Inc.', '', 'Farm Caretaker', '', 'M1', '', 0, '2017-05-25 13:31:17'),
	(2103, 1142, '', '', 'Alex', 'Alejandro', 'Paloma', 'Project Based', '', '', '', '', 'My Only Way, Inc.', '', 'Farm Caretaker', '', '', '', 0, '2017-05-25 13:31:17'),
	(2104, 1152, '', '', 'Danilo', 'Delgado', 'Vedida Jr.', 'Project Based', '', '', '', '', 'My Only Way, Inc.', '', 'Farm Caretaker', '', '', '', 0, '2017-05-25 13:31:17'),
	(2105, 1162, '', '', 'Ronald', 'Eduave', 'Tawacal', 'Project Based', '', '230027168227', '', '', 'My Only Way, Inc.', '', 'Farm Caretaker', '', '', '', 0, '2017-05-25 13:31:17'),
	(2106, 1172, '', '', 'Anthony', 'Sanchez', 'Potot', 'Project Based', '', '', '', '', 'My Only Way, Inc.', '', 'Farm Caretaker', '', '', '', 0, '2017-05-25 13:31:17'),
	(2107, 1182, '', '112', 'Janine', 'Llanos', 'Jasmin', 'Permanent', '08-2399113-4', '150503497044', '121098502267', '440560910', 'Solutions Management Systems Inc.', 'Cagayan De Oro', 'Systems Developer', 'Level 1', 'S1', 'Regular', 0, '2017-05-25 13:31:17'),
	(2108, 1192, '', '', 'Christian', 'Morden', 'Rebuyas', 'Part-Time', '09-4212214-3', '162519095378', '917059132863', '', 'Primo Partners Phils, Inc.', 'Davao', 'Steward', '', '', 'Probationary', 0, '2017-05-25 13:31:17'),
	(2109, 1202, '', '', 'Joseph', 'R.', 'Giron II', 'Permanent', '339-6120-303', '150502868960', '914343835204', '290055877000', 'Solutions Management Systems Inc.', 'Cagayan De Oro', 'Technical Support', '', 'S', 'Regular', 0, '2017-05-25 13:31:17'),
	(2110, 1212, '', '10022', 'Chad Louei', 'C.', 'Sullaga', 'Permanent', '0941828228', '162013068828', '121189041310', '335284227', 'Solutions Management Systems Inc.', 'Cagayan De Oro', 'Graphic Designer', 'Level 1', 'S', 'Regular', 11, '2017-05-25 07:35:25'),
	(2111, 1222, '', '', 'Franco', 'Puzon', 'Amesola', 'Part-Time', '011101706862', '030205910474', '107012316640', '935614253', 'Norminring Development Corporation', 'CDO', 'Sales Associate/Operations', '', 'S', 'Probationary', 12, '2017-06-02 05:18:08'),
	(2112, 1232, '', '', 'Mary Grace', 'A.', 'Escalona', 'Part-Time', '', '', '', '', 'Bellarmine Magister Enrichment Corporation', 'DVO', 'Admin Head/Bookkeeper/HR Point Person', '', 'M2', 'Probationary', 10, '2017-05-25 13:31:17'),
	(2113, 1242, '', '', 'Noel', 'P.', 'Sobejana', 'Part-Time', '0813387680', '190895509276', '1900958641', '215413654', 'Bellarmine Magister Enrichment Corporation', 'DVO', 'Administrator', '', 'S1', 'Probationary', 0, '2017-05-25 13:31:17'),
	(2114, 1252, '', '', 'Kareen', 'J.', 'De Guzman', 'Part-Time', '', '', '', '', 'Bellarmine Magister Enrichment Corporation', 'DVO', 'Trainer-Part time', '', 'S', 'Probationary', 0, '2017-05-25 13:31:17'),
	(2115, 1262, '', '', 'Franco', 'Custodio', 'Pimentel', 'Permanent', '', '', '', '', 'Mindanao Precast Structures Inc.', 'CDO', 'General Maintenance', '', '', 'Probationary', 0, '2017-05-29 01:11:59'),
	(2116, 1272, '', '', 'Arlyn', 'Cainglet', 'Benito', 'Part-Time', '0814214095', '150501615953', '121060054763', '935614238', 'Solutions Management Systems Inc.', 'Cagayan De Oro', 'HR Payroll', 'Level 2', 'S3', 'Probationary', 0, '2017-05-31 01:44:28'),
	(2117, 1282, '', '', 'Stephen', 'V.', 'Lagunero', 'Part-Time', '', '', '', '', '', '', '', '', '', '', 0, '2017-06-03 03:01:50');
/*!40000 ALTER TABLE `tbl_employee` ENABLE KEYS */;

-- Dumping structure for table hris_payroll.tbl_incentives
DROP TABLE IF EXISTS `tbl_incentives`;
CREATE TABLE IF NOT EXISTS `tbl_incentives` (
  `incentives_id` int(11) NOT NULL AUTO_INCREMENT,
  `payslip_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  PRIMARY KEY (`incentives_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table hris_payroll.tbl_incentives: 0 rows
/*!40000 ALTER TABLE `tbl_incentives` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_incentives` ENABLE KEYS */;

-- Dumping structure for table hris_payroll.tbl_leaves
DROP TABLE IF EXISTS `tbl_leaves`;
CREATE TABLE IF NOT EXISTS `tbl_leaves` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT NULL,
  `leave_type` varchar(50) DEFAULT NULL,
  `durFrom` date DEFAULT NULL,
  `durTo` date DEFAULT NULL,
  `dateFiled` date DEFAULT NULL,
  `mode` varchar(50) DEFAULT NULL,
  `days_applied` varchar(50) DEFAULT NULL,
  `reason` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `lastUpdated` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table hris_payroll.tbl_leaves: 1 rows
/*!40000 ALTER TABLE `tbl_leaves` DISABLE KEYS */;
INSERT INTO `tbl_leaves` (`id`, `employee_id`, `leave_type`, `durFrom`, `durTo`, `dateFiled`, `mode`, `days_applied`, `reason`, `status`, `lastUpdated`) VALUES
	(2, 12, 'Vacation Leave', '2017-05-16', '2017-05-16', '2017-05-23', '1', 'with pay', 'Birthday of my mother', 'Approved by HR', '2017-06-06 17:01:39');
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
  `lastUpdated` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`loan_id`)
) ENGINE=MyISAM AUTO_INCREMENT=133 DEFAULT CHARSET=utf8;

-- Dumping data for table hris_payroll.tbl_loans: 10 rows
/*!40000 ALTER TABLE `tbl_loans` DISABLE KEYS */;
INSERT INTO `tbl_loans` (`loan_id`, `employee_id`, `loan_type`, `lendingCompany`, `amount`, `term`, `monthlyAmortization`, `startDate`, `endDate`, `remarks`, `lastUpdated`) VALUES
	(22, 502, 'ACE Loan', 'AFC', 80000, '24', 1892, '2017-05-15', '2019-05-15', 'Reloan', '2017-06-06 17:01:39'),
	(52, 642, 'ACE Loan', 'AFC', 35000, '18', 1118, '2016-03-31', '2017-09-30', 'New Loan', '2017-06-06 17:01:39'),
	(62, 662, 'ACE Loan', 'AFC', 120000, '24', 2875, '2015-05-31', '2017-05-31', 'Reloan', '2017-06-06 17:01:39'),
	(72, 542, 'ACE Loan', 'AFC', 100000, '24', 2396, '2016-08-30', '2018-08-30', 'Reloan', '2017-06-06 17:01:39'),
	(82, 562, 'ACE Loan', 'AFC', 50000, '12', 2365, '2016-10-15', '2017-10-30', 'New Loan', '2017-06-06 17:01:39'),
	(92, 512, 'ACE Loan', 'AFC', 30000, '12', 1419, '2016-06-15', '2017-06-15', 'New Loan', '2017-06-06 17:01:39'),
	(102, 472, 'ACE Loan', 'AFC', 100000, '24', 2396, '2015-12-30', '2018-01-30', 'Reloan', '2017-06-06 17:01:39'),
	(112, 412, 'Salary Loan', 'AFC', 50000, '18 mos.', 4792, '2016-03-30', '2017-03-15', 'Fully Paid', '2017-06-06 17:01:39'),
	(122, 1182, 'ACE Loan', 'AFC', 50000, '24 mos', 2396, '2015-05-15', '2017-04-30', '', '2017-06-06 17:01:39'),
	(132, 352, 'ACE Loan', 'AFC', 150000, '24mos', 7188, '2015-03-15', '2016-02-28', '', '2017-06-06 17:01:39');
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
  `lastUpdated` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

-- Dumping data for table hris_payroll.tbl_overtime: 6 rows
/*!40000 ALTER TABLE `tbl_overtime` DISABLE KEYS */;
INSERT INTO `tbl_overtime` (`id`, `employee_id`, `reason`, `dateFiled`, `dateRequested`, `timeStart`, `timeEnd`, `totalHours`, `status`, `lastUpdated`) VALUES
	(2, 832, 'Site visit Kalilangan Project and AMAARA fencing', '2017-05-24', '2017-01-11', '8:00', '12:00', '04:00', 'Approved by HR', '2017-06-06 17:01:38'),
	(12, 212, '', '2017-05-24', '2017-01-20', '6:00', '9:04', '03:04', 'Approved by HR', '2017-06-06 17:01:38'),
	(22, 212, '', '2017-05-24', '2017-01-21', '6:00', '9:00', '03:00', 'Approved by HR', '2017-06-06 17:01:38'),
	(32, 832, 'Site visit Opol', '2017-05-24', '2017-02-06', '5:00 am', '10:40 pm', '08:40', 'Approved by HR', '2017-06-06 17:01:38'),
	(42, 832, 'Meeting Archem @ Malberry Suitesw/ Engr. Padayhag', '2017-05-24', '2017-02-07', '5:00', '9:00', '07:00', 'Approved by HR', '2017-06-06 17:01:38'),
	(52, 832, 'Bili ng drum at hatid sa opol', '2017-05-24', '2017-02-07', '4:00 am', '8:00 pm', '04:00', 'Approved by HR', '2017-06-06 17:01:38');
/*!40000 ALTER TABLE `tbl_overtime` ENABLE KEYS */;

-- Dumping structure for table hris_payroll.tbl_payrollbatch
DROP TABLE IF EXISTS `tbl_payrollbatch`;
CREATE TABLE IF NOT EXISTS `tbl_payrollbatch` (
  `payrollbatch_id` int(11) NOT NULL AUTO_INCREMENT,
  `cutoff_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `isFinished` text NOT NULL,
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
  `lastUpdated` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=103 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table hris_payroll.tbl_shifts: 11 rows
/*!40000 ALTER TABLE `tbl_shifts` DISABLE KEYS */;
INSERT INTO `tbl_shifts` (`id`, `day`, `timein`, `timeout`, `shiftgroup`, `lastUpdated`) VALUES
	(102, 'Friday', '08:00 am', '05:00 pm', 'Flexible', '2017-06-06 17:01:37'),
	(92, 'Thursday', '08:00 am', '05:00 pm', 'Flexible', '2017-06-06 17:01:37'),
	(82, 'Wednesday', '08:00 am', '05:00 pm', 'Flexible', '2017-06-06 17:01:37'),
	(72, 'Tuesday', '08:00 am', '05:00 pm', 'Flexible', '2017-06-06 17:01:37'),
	(6, 'Monday', '08:00 am', '05:00 pm', 'Flexible', '2017-06-06 17:01:37'),
	(62, 'Saturday', '09:00 am', '03:00 pm', 'Permanent', '2017-06-06 17:01:37'),
	(52, 'Friday', '09:00 am', '05:00 pm', 'Permanent', '2017-06-06 17:01:37'),
	(42, 'Thursday', '09:00 am', '05:00 pm', 'Permanent', '2017-06-06 17:01:37'),
	(32, 'Wednesday', '09:00 am', '05:00 pm', 'Permanent', '2017-06-06 17:01:37'),
	(22, 'Tuesday', '09:00 am', '05:00 pm', 'Permanent', '2017-06-06 17:01:37'),
	(12, 'Monday', '09:00 am', '05:00 pm', 'Permanent', '2017-06-06 17:01:37');
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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table hris_payroll.tbl_user: 1 rows
/*!40000 ALTER TABLE `tbl_user` DISABLE KEYS */;
INSERT INTO `tbl_user` (`user_id`, `employee_id`, `username`, `password`, `role`, `status`) VALUES
	(1, 'SMSI-0001', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Admin', 'Active');
/*!40000 ALTER TABLE `tbl_user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
