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

-- Dumping data for table hris_payroll.tblref_settings: 4 rows
/*!40000 ALTER TABLE `tblref_settings` DISABLE KEYS */;
INSERT INTO `tblref_settings` (`setting_name`, `value`) VALUES
	('current_cutoff', '16 May 2017 to 31 May 2017'),
	('current_company', 'Manila Teachers'),
	('app_mode', 'alone'),
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
  `id_allowance` int(11) DEFAULT NULL,
  `employee_id` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `amount` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table hris_payroll.tbl_allowances: 0 rows
/*!40000 ALTER TABLE `tbl_allowances` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_allowances` ENABLE KEYS */;

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table hris_payroll.tbl_attendance: 0 rows
/*!40000 ALTER TABLE `tbl_attendance` DISABLE KEYS */;
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table hris_payroll.tbl_attendanceraw: 0 rows
/*!40000 ALTER TABLE `tbl_attendanceraw` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_attendanceraw` ENABLE KEYS */;

-- Dumping structure for table hris_payroll.tbl_company
DROP TABLE IF EXISTS `tbl_company`;
CREATE TABLE IF NOT EXISTS `tbl_company` (
  `company_id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `code` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`company_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table hris_payroll.tbl_company: 4 rows
/*!40000 ALTER TABLE `tbl_company` DISABLE KEYS */;
INSERT INTO `tbl_company` (`company_id`, `name`, `code`) VALUES
	(1, 'Solutions Management Systems Inc.', 'SMSI'),
	(2, 'Manila Teachers', 'MT'),
	(3, 'Amaara Financial Corporation', 'AFC'),
	(4, 'Norminring Development Corporation', 'NDC');
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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table hris_payroll.tbl_cutoff: 1 rows
/*!40000 ALTER TABLE `tbl_cutoff` DISABLE KEYS */;
INSERT INTO `tbl_cutoff` (`cutoff_id`, `cutoff_range`, `occurence_id`, `from_date`, `to_date`, `ifActive`, `ifFinished`) VALUES
	(1, '16 May 2017 to 31 May 2017', 2, '2017-05-16', '2017-05-31', 'Y', 'N');
/*!40000 ALTER TABLE `tbl_cutoff` ENABLE KEYS */;

-- Dumping structure for table hris_payroll.tbl_employee
DROP TABLE IF EXISTS `tbl_employee`;
CREATE TABLE IF NOT EXISTS `tbl_employee` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_employee` varchar(50) DEFAULT NULL,
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
  `tax_status` varchar(50) DEFAULT NULL,
  `employment_status` varchar(50) DEFAULT NULL,
  `basic_salary` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1253 DEFAULT CHARSET=latin1;

-- Dumping data for table hris_payroll.tbl_employee: 114 rows
/*!40000 ALTER TABLE `tbl_employee` DISABLE KEYS */;
INSERT INTO `tbl_employee` (`id`, `id_employee`, `emp_id`, `emp_bio_id`, `fName`, `mName`, `lName`, `shiftgroup`, `sss_id`, `phic_id`, `hdmf_id`, `tin`, `company`, `branch`, `position`, `tax_status`, `employment_status`, `basic_salary`) VALUES
	(1, NULL, '310-98-4', '10003', 'Jennifer', 'Palo', 'Dantes', 'Permanent', '09-2010232-1', '19-050708923', '1040-0220-82', '916-191-555', 'Solutions Management Systems Inc.', 'Cagayan De Oro', 'HRD Head', 'M1', 'Regular', 10000),
	(2, NULL, '', '', 'Charizze Mae', 'Taboada', 'Lumagsao', 'Part-Time', '8-15700359', '150501399622', '121025696574', '', 'Solutions Management Systems Inc.', 'Cagayan De Oro', 'HR Payroll', 'S', 'Resigned', 0),
	(12, NULL, '', '', 'Shiela', 'L.', 'Achas', 'Permanent', '08-2580153-6', '150504178309', '121148071155', '330785488000', 'Solutions Management Systems Inc.', 'Cagayan De Oro', 'Administrative Assistant /Cashier', 'S', 'Regular', 11),
	(22, NULL, '', '', 'Daina Jane', 'Layar', 'Lungtad', 'Part-Time', '08-2663610-8', '150253033462', '121148247833', '331694187', 'Solutions Management Systems Inc.', 'Cagayan De Oro', 'HR Staff', 'S', 'Regular', 11),
	(32, NULL, '', '', 'Angelito', 'Diaz', 'Delada', 'Permanent', '09-28611092', '160504045878', '121031718739', '945606122', 'Primo Partners Phils, Inc.', 'Davao', 'Steward', 'S', 'Regular', 0),
	(42, NULL, '', '', 'Kimberly', 'Arcena', 'Bicong', 'Permanent', '', '162506289777', '915170351768', '429744351', 'Primo Partners Phils, Inc.', 'Davao', 'Food Server', '', 'Regular', 0),
	(52, NULL, '', '', 'Rachel', 'Likit', 'Brua', 'Permanent', '09-3103097-4', '170252743289', '121101750577', '445-307-079', 'Primo Partners Phils, Inc.', 'Davao', 'Admin Supervisor', 'S', 'Regular', 0),
	(62, NULL, '', '', 'Cheryrose', 'Nepomuceno', 'Gabaton', 'Permanent', '0933035427', '160504739322', '121115018624', '444168187000', 'Primo Partners Phils, Inc.', 'Davao', 'Bookkeeper', 'S', 'Regular', 0),
	(72, NULL, '', '', 'Nathaniel', 'Pasco', 'Dela Pena', 'Permanent', '09-08358948', '160500375997', '005064402507', '124010444', 'Primo Partners Phils, Inc.', 'Davao', 'Cook', 'M', 'Regular', 0),
	(82, NULL, '', '', 'Amalia', 'Demapitan', 'Frias', 'Part-Time', '09-15874295', '170502340371', '121030580785', '450957189', 'Primo Partners Phils, Inc.', 'Davao', 'Chef/Cold Section', 'S', 'Regular', 0),
	(92, NULL, '', '', 'Leny', 'Serue', 'Lastrella', 'Permanent', '09278694176', '170501695087', '18000768907', '429743909', 'Primo Partners Phils, Inc.', 'Davao', 'Inventory Controller', 'S', 'Regular', 0),
	(102, NULL, '', '', 'Erlyn', 'Bolante', 'Lim', 'Permanent', '09-30062419', '160503475631', '121032392549', '286335650', 'Primo Partners Phils, Inc.', 'Davao', 'Cashier', 'S', 'Regular', 0),
	(112, NULL, '', '', 'Aldrin', 'Cotamora', 'Loma', 'Part-Time', '09-38159793', '160506389620', '121157478629', '', 'Primo Partners Phils, Inc.', 'Davao', 'Food Server', 'S', 'Resigned', 0),
	(122, NULL, '', '', 'Lyrie Mae', 'Lustre', 'Magbutay', 'Permanent', '09-3230107-1', '121028563644', '160504463106', '460-769-947', 'Primo Partners Phils, Inc.', 'Davao', 'Cashier/Dining', 'S1', 'Regular', 0),
	(132, NULL, '', '', 'Rodel', 'Esmedina', 'Villegas', 'Permanent', '09-3345227-5', '150504925215', '121029330515', '415-610-167', 'Primo Partners Phils, Inc.', 'Davao', 'Cook', 'S', 'Regular', 0),
	(142, NULL, '', '', 'Henilito', 'Gonzales', 'Polia Jr.', 'Permanent', '09-3208339-9', '160504315484', '121029358912', '400-672-745', 'Primo Partners Phils, Inc.', 'Davao', 'Bartender', 'S', 'Regular', 0),
	(152, NULL, '', '', 'Nestor', 'Masing', 'Bantilan', 'Permanent', '09-1244652-9', '160500046756', '913169041227', '124-651-296', 'Primo Partners Phils, Inc.', 'Davao', 'Dining Supervisor', 'M', 'Regular', 0),
	(162, NULL, '', '', 'Roberto', 'Celerio', 'Jambaro Jr.', 'Permanent', '0925830148', '160503436059', '188000743398', '308884166000', 'Primo Partners Phils, Inc.', 'Davao', 'Kitchen Supervisor', 'S1', 'Regular', 0),
	(192, NULL, '', '', 'Junmer', 'Rebuyas', 'Talindog', 'Permanent', '09-300-44709', '160505841848', '91320145691', '', 'Primo Partners Phils, Inc.', 'Davao', 'Food Server', 'S', 'Regular', 0),
	(202, NULL, '', '', 'Ryan', 'Dodoso', 'Florencio', 'Permanent', '09-3164239-1', '160504252636', '121086740639', '291-191-248', 'Primo Partners Phils, Inc.', 'Davao', 'Cook', 'S', 'Regular', 0),
	(212, NULL, '', '', 'Arnold', 'Aboyme', 'Plaza', 'Part-Time', '09-4157916-6', '162508071957', '', '', 'Primo Partners Phils, Inc.', 'Davao', 'Steward', 'S', 'Probationary', 0),
	(222, NULL, '', '', 'Jimrey', 'R.', 'Abenoja', 'Permanent', '09-3224951-5', '160506266820', '121122325178', '455239111', 'Currahee Construction Corporation', 'CDO', 'General Maintenance Service', 'S1', 'Regular', 0),
	(232, NULL, '', '', 'Nerio', 'Gildore', 'Amper', 'Permanent', '', '190902066156', '', '922208289', 'Currahee Construction Corporation', 'CDO', 'Financial comptroller', 'S1', 'Regular', 0),
	(262, NULL, '', '', 'James', 'C.', 'Baldosano', 'Permanent', '', '', '', '', 'Currahee Construction Corporation', 'CDO', 'Field Engineer', '', 'Regular', 0),
	(282, NULL, '', '', 'Renante', 'M.', 'Cabigas', 'Permanent', '0613995298', '152016370597', '', '', 'Currahee Construction Corporation', 'CDO', 'Liaison and Purchaser', 'M2', 'Regular', 0),
	(292, NULL, '', '', 'Gerald', 'Detoyato', 'Caro', 'Permanent', '3430488752', '112021267328', '', '', 'Currahee Construction Corporation', 'CDO', 'Draftsman', 'M1', 'Probationary', 0),
	(312, NULL, '', '', 'Ramon Alejandro', 'Magtajas', 'Valleser', 'Permanent', '08-1543251-7', '150251923010', '121048504092', '942957588', 'Solutions Management Systems Inc.', 'Cagayan De Oro', 'General Manager', 'M', 'Regular', 32),
	(322, NULL, '', '', 'Elgin', 'Cabunilas', 'Camilotes', 'Permanent', '09-3653870-9', '160505803776', '121098218437', '', 'Currahee Construction Corporation', 'DVO', 'Draftsman', 'S', 'Regular', 0),
	(332, NULL, '', '', 'Aileen Joy', 'C', 'Castro', 'Permanent', '', '', '', '', 'Currahee Construction Corporation', 'DVO', 'Bookkeeper', 'S', 'Project Based', 0),
	(352, NULL, '', '', 'Elvira', 'Carvajal', 'Montera', 'Permanent', '09-2211068-3', '160501550245', '121042672683', '928503260', 'Solutions Management Systems Inc.', 'Cagayan De Oro', 'Acctg & Audit Head', 'M3', 'Regular', 0),
	(362, NULL, '', '', 'Kristine Joy', 'Carreon', 'Dealca', 'Permanent', '', '', '', '', 'Currahee Construction Corporation', 'DVO', 'Bookkeeper', 'S', 'Regular', 0),
	(372, NULL, '', '', 'Raul Adrian', 'Apuli', 'Altavano', 'Part-Time', '3464059636', '150504494774', '121144034952', '445182360', 'Solutions Management Systems Inc.', 'Cagayan De Oro', 'Software Developer', 'S', 'Probationary', 11000),
	(382, NULL, '', '', 'May', 'Abroguena', 'Ebalang', 'Permanent', '08-1441611-0', '150251158837', '121030943288', '930-840161', 'Currahee Construction Corporation', 'CDO', 'Administrative Staff', 'S', 'Probationary', 0),
	(392, NULL, '', '', 'Charlene', 'Jomoc', 'Almuete', 'Permanent', '0826525316', '150504277390', '', '330785931', 'Solutions Management Systems Inc.', 'Cagayan De Oro', 'Systems Developer', 'S', 'Probationary', 12000),
	(402, NULL, '', '', 'Patricio', 'R.', 'Galdo', 'Permanent', '', '', '', '', 'Manila Teachers Mutual Aid System, Inc.', 'Iligan', 'USP', 'S', 'Regular', 0),
	(412, NULL, '', '', 'Marco', 'Costamero', 'Arangco', 'Permanent', '06-2815784-3', '120507216566', '912202004888', '268-593-414', 'Solutions Management Systems Inc.', 'Cagayan De Oro', 'System Analyst/Developer', 'M2', 'Regular', 0),
	(422, NULL, '', '', 'Izza Honey', 'C.', 'Manluza', 'Permanent', '08-1832709-8', '030507822025', '121137475012', '326-755-623', 'Currahee Construction Corporation', 'CDO', 'Office Engineer', 'M', 'Regular', 0),
	(442, NULL, '', '', 'Cherie Mae', 'Dela Torre', 'Maghanoy', 'Permanent', '08-1275316-3', '150251721450', '121099680814', '907-060-178', 'Currahee Construction Corporation', 'CDO', 'Bookkeeper', 'S', 'Regular', 0),
	(452, NULL, '', '', 'Arnaldo', 'Arguilles', 'Mantillas', 'Permanent', '08-1075836-1', '', '310101797702', '180-027-122', 'Currahee Construction Corporation', 'CDO', 'Operations Manager', 'S1', 'Regular', 0),
	(462, NULL, '', '', 'Brazzel Gay', 'J.', 'Cabaltera', 'Permanent', '0939595806', '010520667240', '121151311466', '472885607', 'Solutions Management Systems Inc.', 'Cagayan De Oro', 'Social Media/ Sales and Marketing Staff', 'S', 'Probationary', 10),
	(472, NULL, '', '', 'Renan', 'A.', 'Moreno', 'Permanent', '0816173053', '150502397216', '182000543107', '410675176', 'Solutions Management Systems Inc.', 'Cagayan De Oro', 'Web Lead', 'M', 'Regular', 0),
	(482, NULL, '', '', 'Rolando', 'T.', 'Mosqueda', 'Permanent', '09-2739922-1', '160505100007', '104002257284', '422-012-424', 'Currahee Construction Corporation', 'DVO', 'Utility Service Personnel', 'S', 'Project Based', 0),
	(502, NULL, '', '', 'Jean', 'S.', 'Godornes', 'Permanent', '0816613128', '150501858430', '182000563981', '950159075', 'Solutions Management Systems Inc.', 'Cagayan De Oro', 'Operations Supervisor', 'M', 'Regular', 15000),
	(512, NULL, '', '', 'Michael', 'Dayag', 'Baculio', 'Permanent', '08-1605491-0', '010505744239', '109002186565', '256027612', 'Solutions Management Systems Inc.', 'Cagayan De Oro', 'Technical Support Personnel', 'M1', 'Regular', 0),
	(542, NULL, '', '', 'Robert', 'Batonghinog', 'Bersano', 'Permanent', '0815082802', '020503777364', '104002242398', '937694691', 'Solutions Management Systems Inc.', 'Cagayan De Oro', 'Technical Support Lead', 'M1', 'Regular', 0),
	(552, NULL, '', '', 'Pete Emmanuell', 'L.', 'Balagosa', 'Permanent', '08-1801748-9', '150503883890', '121134979348', '330784605', 'Solutions Management Systems Inc.', 'Cagayan De Oro', 'Technical Support Personnel', 'S', 'Regular', 11),
	(562, NULL, '', '', 'Khristian Darylle Joe', 'Bona', 'Battad', 'Permanent', '3442813205', '020262108512', '121131509835', '468727860', 'Norminring Development Corporation', 'DVO', 'MRP', 'S', 'Probationary', 0),
	(582, NULL, '', '', 'John', 'M.', 'Mingo', 'Permanent', '09-3781267-5', '160506605102', '121122227418', '466-263-614', 'Currahee Construction Corporation', 'DVO', 'Field Engineer', 'S', 'Regular', 0),
	(592, NULL, '', '', 'Gina', 'Aboyme', 'Micoy', 'Permanent', '09-2734790-1', '160502253724', '121059984317', '946-922-702', 'Currahee Construction Corporation', 'DVO', 'Accounting Supervisor', 'M2', 'Regular', 0),
	(602, NULL, '', '', 'Lowie', 'G.', 'Ulo', 'Permanent', '09-3438201-4', '162008037167', '121142112706', '466-263-405', 'Currahee Construction Corporation', 'DVO', 'General Maintenance Service', 'M', 'Regular', 0),
	(612, NULL, '', '', 'Mario', 'Quiam', 'Tolosa', 'Project Based', '33-2666182-9', '082011907160', '', '', 'Currahee Construction Corporation', 'CDO', 'Foreman', 'M3', 'Project Based', 0),
	(622, NULL, '', '', 'Julius', 'B.', 'Lascano', 'Part-Time', '33-3909769-7', '190521055409', '108000076981', '918-900-880', 'Currahee Construction Corporation', 'CDO', 'Logistic Manager', 'S', 'Probationary', 0),
	(632, NULL, '', '', 'Romnick June', 'A.', 'Elcana', 'Part-Time', '09-2857476-0', '160502796558', '121194643961', '', 'Currahee Construction Corporation', 'DVO', 'Draftsman', 'S', 'Probationary', 10),
	(642, NULL, '', '', 'Diane Joy', 'Yu', 'Mapano', 'Permanent', '1010277291', '140251731043', '121007858757', '452117419', 'Solutions Management Systems Inc.', 'Cagayan De Oro', 'Senior Accounting Technician', 'S', 'Regular', 12),
	(652, NULL, '', '', 'Cresar John', 'Reyes', 'Arce', 'Permanent', '0922273135', '162003641023', '190000056276', '947987046', 'Solutions Management Systems Inc.', 'Cagayan De Oro', 'Senior Internal Auditor', 'M2', 'Regular', 0),
	(662, NULL, '', '', 'Lorman', 'S.', 'Saladaga', 'Permanent', '1009497752', '140251248725', '914301364780', '816667', 'Solutions Management Systems Inc.', 'Cagayan De Oro', 'Senior Internal Auditor', 'S', 'Regular', 12),
	(672, NULL, '', '', 'Geneth', 'L.', 'Sayson', 'Permanent', '0935125869', '160505344984', '121070911178', '429361074', 'Solutions Management Systems Inc.', 'Cagayan De Oro', 'Senior Internal Auditor', 'S', 'Regular', 15),
	(682, NULL, '', '', 'Nancy', 'Montebon', 'Wong', 'Permanent', '0919148684', '160501640325', '101000063572', '940042814', 'Primo Partners Phils, Inc.', 'Davao', 'Operations Manager', 'S1', 'Regular', 0),
	(692, NULL, '', '', 'Jeffrey', 'Moneba', 'Antoque', 'Permanent', '0937380136', '160255309649', '121111591247', '409174979', 'Norminring Development Corporation', 'CDO', 'Senior Service Mechanic', 'S', 'Regular', 0),
	(702, NULL, '', '', 'Salome', 'M.', 'Bodiongan', 'Permanent', '', '', '', '', 'Norminring Development Corporation', 'DVO', 'Inventory Controller', 'S', 'Regular', 0),
	(712, NULL, '', '', 'Ryan Evan', 'P.', 'Almacin', 'Part-Time', '09-2732070-8', '', '', '432-197-977', 'Norminring Development Corporation', 'DVO', 'GSP', 'M', 'Probationary', 10),
	(722, NULL, '', '', 'Raquel', 'A.', 'Baldecantos', 'Permanent', '3458063803', '140502131016', '121167253093', '', 'Norminring Development Corporation', 'DPL', 'Branch Cashier', 'S', 'Regular', 0),
	(732, NULL, '', '', 'Gwyne', 'G.', 'Delos Reyes', 'Permanent', '0922110900', '160501436590', '121029344671', '931745676', 'Norminring Development Corporation', 'DVO', 'Bookkeeper', 'M', 'Regular', 0),
	(742, NULL, '', '', 'Miejor', 'T.', 'Dela Cruz', 'Permanent', '', '150502394209', '', '', 'Norminring Development Corporation', 'DVO', 'Service & After Sales Manager', 'M2', 'Regular', 0),
	(752, NULL, '', '', 'Rudini', 'G.', 'Galdo', 'Part-Time', '', '', '', '', 'Norminring Development Corporation', 'DVO', 'Branch Cashier', '', 'Probationary', 0),
	(762, NULL, '', '', 'Allyn', 'C.', 'Angustia', 'Part-Time', '0939076231', '162509528500', '', '', 'Norminring Development Corporation', 'DVO', 'Sales Associate', 'S', 'Regular', 11),
	(772, NULL, '', '', 'Reil Hazzin', 'Batilona', 'Bicoy', 'Permanent', '1011114502', '120513230309', '121142125817', '438-892-350', 'Norminring Development Corporation', 'DPL', 'MRP - Sales', 'M1', 'Regular', 0),
	(782, NULL, '', '', 'Marlon', 'R.', 'Gal', 'Permanent', '', '', '', '', 'Norminring Development Corporation', 'DVO', 'General Service Maintenance', 'M', 'Regular', 11),
	(792, NULL, '', '', 'Rudini', 'G.', 'Galdo', 'Part-Time', '', '', '', '', 'Norminring Development Corporation', 'DVO', 'Branch Cashier', 'S', '', 0),
	(802, NULL, '', '', 'Arturo', 'G.', 'Lopez Jr.', 'Part-Time', '0929775063', '160252612308', '121180477483', '425186753', 'Norminring Development Corporation', 'DVO', 'Driver/Mechanic', 'M', 'Probationary', 10),
	(812, NULL, '', '', 'Jose Miguel', 'P.', 'Jonelas', 'Part-Time', '0941836113', '162506888417', '917004406258', '', 'Norminring Development Corporation', 'DVO', 'Assistant Bookkeeper', 'S', 'Probationary', 10),
	(822, NULL, '', '', 'Jessa', 'Datulayta', 'Bayking', 'Permanent', '09-35775620', '160256016613', '121177270191', '492-048-158', 'Mindanao Precast Structures Inc.', 'CDO', 'Secretary/Admin', 'S', 'Regular', 0),
	(832, NULL, '', '', 'Ralph Nicko', 'Alcober', 'Olam', 'Permanent', '08-1977086-4', '150503440239', '916215856747', '492-049-415', 'Mindanao Precast Structures Inc.', 'CDO', 'Company Driver', 'S', 'Regular', 0),
	(842, NULL, '', '', 'Armando', 'L.', 'Bagac', 'Permanent', '08-23845222', '150503550425', '121138563124', '492-048-869', 'Mindanao Precast Structures Inc.', 'CDO', 'General Maintenance', 'S', 'Regular', 0),
	(852, NULL, '', '', 'Harold', 'Domo', 'Aparicio', 'Part-Time', '', '150252810651', '', '', 'Mindanao Precast Structures Inc.', 'CDO', 'Production Supervisor', 'S', 'Probationary', 0),
	(862, NULL, '', '', 'John Gleen', 'Diaz', 'Panebio', 'Permanent', '08-1461106-7', '030501829486', '121004908041', '288-518-234', 'Mindanao Precast Structures Inc.', 'CDO', 'Production Head', 'M', 'Regular', 0),
	(872, NULL, '', '', 'Arnulfo', 'V.', 'Layco', 'Permanent', '', '', '', '', 'Norminring Development Corporation', 'DVO', 'General Manager', 'S', 'Regular', 0),
	(882, NULL, '', '', 'Stephanie', 'A.', 'Somoza', 'Part-Time', '', '', '', '', 'Norminring Development Corporation', 'DVO', 'Sales Associate', 'S', 'Probationary', 10),
	(892, NULL, '', '', 'Jaymar', 'R.', 'Coresis', 'Permanent', '09-2984886-4', '060503261070', '', '', 'Norminring Development Corporation', 'DVO', 'MRP - Sales', 'S', 'Regular', 0),
	(902, NULL, '', '', 'Mark Anthony', 'M.', 'Montera', 'Permanent', '0920192988', '162003621529', '', '924469729', 'Norminring Development Corporation', 'DVO', 'Utility/Liaison', 'S', 'Regular', 0),
	(912, NULL, '', '', 'Rizza Mae', 'C.', 'Lapinid', 'Part-Time', '0942047011', '170253314020', '4866783', '485272573', 'Norminring Development Corporation', 'DVO', 'Sales Associate', 'S1', 'Probationary', 10),
	(922, NULL, '', '', 'Pamela Ivy', 'A.', 'Improgo', 'Permanent', '', '', '', '', 'Norminring Development Corporation', 'CDO', 'Branch Manager', 'S1', 'Regular', 0),
	(932, NULL, '', '', 'Jenner Nino', 'B.', 'Moneba', 'Permanent', '0924271258', '160501354306', '', '928767649', 'Norminring Development Corporation', 'DVO', 'Service and After Sales Manager', '', 'Regular', 0),
	(942, NULL, '', '', 'Joesus', 'L.', 'Rabadan', 'Permanent', '', '', '', '', 'Norminring Development Corporation', 'CDO', 'GSP', 'S1', 'Regular', 0),
	(952, NULL, '', '', 'Michael Angelou', 'H.', 'Ponte', 'Permanent', '', '160504101026', '', '', 'Norminring Development Corporation', 'CDO', 'MRP - Sales', 'S', 'Regular', 0),
	(962, NULL, '', '', 'Leo Alfie', 'A.', 'Quipanes', 'Permanent', '06-2515281-2', '120508612104', '913030000320', '289493450000', 'Norminring Development Corporation', 'ZBO', 'Senior Service Mechanic', 'S1', 'Regular', 0),
	(972, NULL, '', '', 'Norben Jay', 'Leron', 'Ruiz', 'Permanent', '11-0370996-4', '160504245400', '121135281185', '297110378000', 'Norminring Development Corporation', 'DVO', 'Lead Service Mechanic', 'M3', 'Regular', 0),
	(992, NULL, '', '', 'Danilo', 'T.', 'Palo Jr.', 'Permanent', '0923935935', '160501224674', '188000522089', '929085069', 'Norminring Development Corporation', 'KID', 'Senior Service Mechanic', '', 'Regular', 0),
	(1002, NULL, '', '', 'Nelson', 'S.', 'Tacoloy', 'Permanent', '0927359096', '', '188001482849', '412120768', 'Norminring Development Corporation', 'DVO', 'Junior Service Mechanic', 'M1', 'Regular', 0),
	(1012, NULL, '', '', 'Roland', 'C.', 'Sarce', 'Permanent', '0922452639', '', '', '', 'Norminring Development Corporation', 'DVO', 'Junior Service Mechanic', 'S', 'Regular', 0),
	(1022, NULL, '', '', 'Jasper', 'B.', 'Saludes', 'Part-Time', '09-3982708-2', '', '1211-5491-23', '', 'Norminring Development Corporation', 'DVO', 'Service Mechanic', 'S', 'Probationary', 10),
	(1032, NULL, '', '', 'Ivan', 'Orbeta', 'Paredes', 'Permanent', '09-2319395-5', '160501550229', '915043561517', '922203402', 'Norminring Development Corporation', 'DPL', 'Branch Manager', 'S', 'Regular', 0),
	(1042, NULL, '', '', 'Girlie', 'G.', 'Tolosa', 'Permanent', '', '', '', '', 'Norminring Development Corporation', 'ZBO', 'Branch Cashier', '', 'Regular', 0),
	(1052, NULL, '', '', 'Kirbay Jay', 'A.', 'Ragol', 'Permanent', '09-4205318-6', '162010570662', '', '', 'Norminring Development Corporation', 'DVO', 'Service Mechanic', '', 'Regular', 11),
	(1062, NULL, '', '', 'Lovely Judy May', 'P.', 'Villar', 'Permanent', '0941445135', '160507400628', '121192880142', '', 'Norminring Development Corporation', 'DVO', 'Sales Associate', 'S', 'Regular', 11),
	(1072, NULL, '', '', 'Anthony Greg', 'L.', 'Naduma', 'Permanent', '06-2877441-7', '180252527352', '121143095233', '460-398-585', 'Norminring Development Corporation', 'CDO', 'Sales and Marketing', 'S', 'Regular', 11),
	(1082, NULL, '', '', 'Joer', 'S.', 'Delas Penas', 'Permanent', '', '170501971165', '', '280184534', 'Norminring Development Corporation', 'DVO', 'MRP - Sales', 'S', 'Regular', 0),
	(1092, NULL, '', '', 'Ivy', 'R.', 'Florentino', 'Permanent', '0941791452', '162511202515', '916236620041', '', 'Bellarmine Magister Enrichment Corporation', '', 'Front Desk Officer', 'S', '', 0),
	(1102, NULL, '', '', 'April Dan', 'S.', 'Borromeo', 'Permanent', '940335961', '162500434732', '916273954122', '', 'Bellarmine Magister Enrichment Corporation', '', 'Maintenance/Marketing Assistant', 'S', '', 0),
	(1112, NULL, '', '', 'Junalona', 'R.', 'Basalo', 'Part-Time', '', '', '', '', 'Bellarmine Magister Enrichment Corporation', '', 'Trainer-Full Time', 'S', '', 0),
	(1122, NULL, '', '', 'Margilen', 'Edrozo', 'Abuhan', 'Project Based', '', '150254168765', '', '461537289', 'My Only Way, Inc.', '', 'Farm Caretaker', '', '', 0),
	(1132, NULL, '', '', 'Alejando', 'Tilos', 'Paloma', 'Permanent', '09-2341709-7', '162005511844', '', '291789935', 'My Only Way, Inc.', '', 'Farm Caretaker', 'M1', '', 0),
	(1142, NULL, '', '', 'Alex', 'Alejandro', 'Paloma', 'Project Based', '', '', '', '', 'My Only Way, Inc.', '', 'Farm Caretaker', '', '', 0),
	(1152, NULL, '', '', 'Danilo', 'Delgado', 'Vedida Jr.', 'Project Based', '', '', '', '', 'My Only Way, Inc.', '', 'Farm Caretaker', '', '', 0),
	(1162, NULL, '', '', 'Ronald', 'Eduave', 'Tawacal', 'Project Based', '', '230027168227', '', '', 'My Only Way, Inc.', '', 'Farm Caretaker', '', '', 0),
	(1172, NULL, '', '', 'Anthony', 'Sanchez', 'Potot', 'Project Based', '', '', '', '', 'My Only Way, Inc.', '', 'Farm Caretaker', '', '', 0),
	(1182, NULL, '', '', 'Janine', 'Llanos', 'Jasmin', 'Permanent', '08-2399113-4', '150503497044', '121098502267', '440560910', 'Solutions Management Systems Inc.', 'Cagayan De Oro', 'Systems Developer', 'S1', 'Regular', 0),
	(1192, NULL, '', '', 'Christian', 'Morden', 'Rebuyas', 'Part-Time', '09-4212214-3', '162519095378', '917059132863', '', 'Primo Partners Phils, Inc.', 'Davao', 'Steward', '', 'Probationary', 0),
	(1202, NULL, '', '', 'Joseph', 'R.', 'Giron II', 'Permanent', '339-6120-303', '150502868960', '914343835204', '290055877000', 'Manila Teachers Mutual Aid System, Inc.', 'Manila', 'Technical Support Staff', 'S', 'Regular', 0),
	(1212, NULL, '', '', 'Chad Louei', 'C.', 'Sullaga', 'Permanent', '0941828228', '162013068828', '121189041310', '335284227', 'Solutions Management Systems Inc.', 'Cagayan De Oro', 'Graphic Designer', 'S', 'Regular', 11),
	(1222, NULL, '', '', 'Franco', 'P.', 'Amesola', 'Part-Time', '011101706862', '030205910474', '107012316640', '004524260', 'Norminring Development Corporation', 'CDO', 'Sales Associate/Operations', 'S', 'Probationary', 12),
	(1232, NULL, '', '', 'Mary Grace', 'A.', 'Escalona', 'Part-Time', '', '', '', '', 'Bellarmine Magister Enrichment Corporation', 'DVO', 'Admin Head/Bookkeeper/HR Point Person', 'M2', 'Probationary', 10),
	(1242, NULL, '', '', 'Noel', 'P.', 'Sobejana', 'Part-Time', '0813387680', '190895509276', '1900958641', '215413654', 'Bellarmine Magister Enrichment Corporation', 'DVO', 'Administrator', 'S1', 'Probationary', 15),
	(1252, NULL, '', '', 'Kareen', 'J.', 'De Guzman', 'Part-Time', '', '', '', '', 'Bellarmine Magister Enrichment Corporation', 'DVO', 'Trainer-Part time', 'S', 'Probationary', 0);
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
  `employee_id` varchar(50) DEFAULT NULL,
  `leave_type` varchar(50) DEFAULT NULL,
  `durFrom` date DEFAULT NULL,
  `durTo` date DEFAULT NULL,
  `dateFiled` date DEFAULT NULL,
  `mode` varchar(50) DEFAULT NULL,
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table hris_payroll.tbl_loans: 0 rows
/*!40000 ALTER TABLE `tbl_loans` DISABLE KEYS */;
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table hris_payroll.tbl_overtime: 0 rows
/*!40000 ALTER TABLE `tbl_overtime` DISABLE KEYS */;
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
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table hris_payroll.tbl_shifts: 6 rows
/*!40000 ALTER TABLE `tbl_shifts` DISABLE KEYS */;
INSERT INTO `tbl_shifts` (`id`, `day`, `timein`, `timeout`, `shiftgroup`) VALUES
	(1, 'Wednesday', '09:00 AM', '05:00 PM', 'Permanent'),
	(12, 'Saturday', '09:00 AM', '03:00 PM', 'Permanent'),
	(7, 'Thursday', '09:00 AM', '05:00 PM', 'Permanent'),
	(9, 'Tuesday', '09:00 AM', '05:00 PM', 'Permanent'),
	(10, 'Friday', '09:00 AM', '05:00 PM', 'Permanent'),
	(11, 'Monday', '09:00 AM', '05:00 PM', 'Permanent');
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
