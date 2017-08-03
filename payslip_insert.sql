-- --------------------------------------------------------
-- Host:                         us-cdbr-iron-east-03.cleardb.net
-- Server version:               5.5.56-log - MySQL Community Server (GPL)
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

-- Dumping structure for table heroku_760d4109a89e3f8.payslip
DROP TABLE IF EXISTS `payslip`;
CREATE TABLE IF NOT EXISTS `payslip` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT NULL,
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `company` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `monthly_rate` double(10,2) DEFAULT NULL,
  `basic_pay` double(10,2) DEFAULT NULL,
  `regular_ot` double(10,2) DEFAULT NULL,
  `holiday_ot` double(10,2) DEFAULT NULL,
  `total_ot` double(10,2) DEFAULT NULL,
  `additionals` double(10,2) DEFAULT NULL,
  `incentives` double(10,2) DEFAULT NULL,
  `late` double(10,2) DEFAULT NULL,
  `absent` double(10,2) DEFAULT NULL,
  `undertime` double(10,2) DEFAULT NULL,
  `sss` double(10,2) DEFAULT NULL,
  `phic` double(10,2) DEFAULT NULL,
  `hdmf` double(10,2) DEFAULT NULL,
  `grossIncome` double(10,2) DEFAULT NULL,
  `loans` double(10,2) DEFAULT NULL,
  `otherDeductions` double(10,2) DEFAULT NULL,
  `insurance` double(10,2) DEFAULT NULL,
  `tax` double(10,2) DEFAULT NULL,
  `netIncome` double(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=203 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table heroku_760d4109a89e3f8.payslip: 0 rows
/*!40000 ALTER TABLE `payslip` DISABLE KEYS */;
INSERT INTO `payslip` (`id`, `employee_id`, `from_date`, `to_date`, `company`, `monthly_rate`, `basic_pay`, `regular_ot`, `holiday_ot`, `total_ot`, `additionals`, `incentives`, `late`, `absent`, `undertime`, `sss`, `phic`, `hdmf`, `grossIncome`, `loans`, `otherDeductions`, `insurance`, `tax`, `netIncome`) VALUES
	(2, 12, '2017-05-16', '2017-05-31', 'Solutions Management Systems Inc.', 11000.00, 5500.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1100.00, 0.00, 199.80, 68.75, 50.00, 4081.45, 0.00, 0.00, 0.00, 216.44, 3865.01),
	(12, 392, '2017-05-16', '2017-05-31', 'Solutions Management Systems Inc.', 12000.00, 6000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 218.00, 75.00, 50.00, 5657.00, 0.00, 0.00, 0.00, 485.57, 5171.43),
	(22, 372, '2017-05-16', '2017-05-31', 'Solutions Management Systems Inc.', 11000.00, 5500.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 733.33, 0.00, 199.80, 68.75, 50.00, 4448.12, 0.00, 0.00, 0.00, 271.44, 4176.68),
	(32, 412, '2017-05-16', '2017-05-31', 'Solutions Management Systems Inc.', 16000.00, 8000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1066.67, 0.00, 290.70, 100.00, 50.00, 6492.63, 0.00, 0.00, 0.00, 265.51, 6227.12),
	(42, 652, '2017-05-16', '2017-05-31', 'Solutions Management Systems Inc.', 12500.00, 6250.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 236.20, 75.00, 50.00, 5888.80, 0.00, 0.00, 0.00, 174.94, 5713.86),
	(52, 512, '2017-05-16', '2017-05-31', 'Solutions Management Systems Inc.', 10000.00, 5000.00, 0.00, 0.00, 0.00, 1500.00, 0.00, 0.00, 1000.00, 0.00, 181.70, 62.50, 50.00, 5205.80, 709.50, 0.00, 0.00, 228.79, 4267.51),
	(62, 552, '2017-05-16', '2017-05-31', 'Solutions Management Systems Inc.', 11000.00, 5500.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 733.33, 0.00, 199.80, 68.75, 50.00, 4448.12, 0.00, 0.00, 0.00, 271.44, 4176.68),
	(72, 562, '2017-05-16', '2017-05-31', 'Solutions Management Systems Inc.', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 100.00, -100.00, 1182.50, 0.00, 0.00, 0.00, -1282.50),
	(82, 1272, '2017-05-16', '2017-05-31', 'Solutions Management Systems Inc.', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 100.00, -100.00, 0.00, 0.00, 0.00, 0.00, -100.00),
	(92, 542, '2017-05-16', '2017-05-31', 'Solutions Management Systems Inc.', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 100.00, -100.00, 1198.00, 0.00, 0.00, 0.00, -1298.00),
	(102, 462, '2017-05-16', '2017-05-31', 'Solutions Management Systems Inc.', 10000.00, 5000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 181.70, 62.50, 50.00, 4705.80, 0.00, 0.00, 0.00, 310.09, 4395.71),
	(112, 1202, '2017-05-16', '2017-05-31', 'Solutions Management Systems Inc.', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 100.00, -100.00, 0.00, 0.00, 0.00, 0.00, -100.00),
	(122, 502, '2017-05-16', '2017-05-31', 'Solutions Management Systems Inc.', 15000.00, 7500.00, 0.00, 0.00, 0.00, 2000.00, 0.00, 0.00, 5500.00, 0.00, 272.50, 93.75, 50.00, 3583.75, 946.00, 0.00, 0.00, 141.78, 2495.97),
	(132, 672, '2017-05-16', '2017-05-31', 'Solutions Management Systems Inc.', 15000.00, 7500.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 6000.00, 0.00, 272.50, 93.75, 50.00, 1083.75, 0.00, 0.00, 0.00, 0.00, 1083.75),
	(142, 1182, '2017-05-16', '2017-05-31', 'Solutions Management Systems Inc.', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 100.00, -100.00, 0.00, 0.00, 0.00, 0.00, -100.00),
	(152, 1312, '2017-05-16', '2017-05-31', 'Solutions Management Systems Inc.', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 100.00, -100.00, 0.00, 0.00, 0.00, 0.00, -100.00),
	(162, 642, '2017-05-16', '2017-05-31', 'Solutions Management Systems Inc.', 12000.00, 6000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1400.00, 0.00, 218.00, 75.00, 50.00, 4257.00, 559.00, 0.00, 0.00, 242.77, 3455.23),
	(172, 352, '2017-05-16', '2017-05-31', 'Solutions Management Systems Inc.', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 100.00, -100.00, 0.00, 0.00, 0.00, 0.00, -100.00),
	(182, 472, '2017-05-16', '2017-05-31', 'Solutions Management Systems Inc.', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 100.00, -100.00, 1198.00, 0.00, 0.00, 0.00, -1298.00),
	(192, 662, '2017-05-16', '2017-05-31', 'Solutions Management Systems Inc.', 12000.00, 6000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 400.00, 0.00, 218.00, 75.00, 50.00, 5257.00, 1437.50, 0.00, 0.00, 405.57, 3413.93),
	(202, 1212, '2017-05-16', '2017-05-31', 'Solutions Management Systems Inc.', 11000.00, 5500.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 4400.00, 0.00, 199.80, 68.75, 50.00, 781.45, 0.00, 0.00, 0.00, 0.00, 781.45);
/*!40000 ALTER TABLE `payslip` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
