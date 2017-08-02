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

-- Dumping data for table heroku_760d4109a89e3f8.payslip: 21 rows
/*!40000 ALTER TABLE `payslip` DISABLE KEYS */;
INSERT INTO `payslip` (`id`, `employee_id`, `cutoff`, `company`, `basic_pay`, `regular_ot`, `holiday_ot`, `total_ot`, `additionals`, `incentives`, `lateAbsent`, `undertime`, `sss`, `phic`, `hdmf`, `grossIncome`, `loans`, `otherDeductions`, `insurance`, `tax`, `netIncome`) VALUES
	(2, 12, '16 May 2017 to 30 May 2017', 'Solutions Management Systems Inc.', 5500.00, 66.11, 0.00, 66.11, 0.00, 0.00, 0.00, 0.00, 199.80, 68.75, 50.00, 5313.67, 0.00, 100.00, 50.00, 416.90, 4746.77),
	(12, 392, '16 May 2017 to 30 May 2017', 'Solutions Management Systems Inc.', 6000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 218.00, 75.00, 50.00, 5657.00, 0.00, 0.00, 0.00, 485.57, 5171.43),
	(22, 372, '16 May 2017 to 30 May 2017', 'Solutions Management Systems Inc.', 5500.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 199.80, 68.75, 50.00, 5181.45, 0.00, 0.00, 0.00, 390.46, 4790.99),
	(32, 412, '16 May 2017 to 30 May 2017', 'Solutions Management Systems Inc.', 8000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1230.77, 0.00, 290.70, 100.00, 50.00, 6328.53, 0.00, 0.00, 0.00, 240.90, 6087.63),
	(42, 652, '16 May 2017 to 30 May 2017', 'Solutions Management Systems Inc.', 6250.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 236.20, 75.00, 50.00, 5888.80, 0.00, 0.00, 0.00, 174.94, 5713.86),
	(52, 512, '16 May 2017 to 30 May 2017', 'Solutions Management Systems Inc.', 5000.00, 0.00, 0.00, 0.00, 1500.00, 0.00, 1153.85, 0.00, 181.70, 62.50, 50.00, 5051.95, 709.50, 0.00, 0.00, 205.71, 4136.74),
	(62, 552, '16 May 2017 to 30 May 2017', 'Solutions Management Systems Inc.', 5500.00, 0.00, 0.00, 0.00, 0.00, 0.00, 846.15, 0.00, 199.80, 68.75, 50.00, 4335.30, 0.00, 0.00, 0.00, 254.51, 4080.78),
	(72, 562, '16 May 2017 to 30 May 2017', 'Solutions Management Systems Inc.', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 100.00, -100.00, 1182.50, 0.00, 0.00, 0.00, -1282.50),
	(82, 1272, '16 May 2017 to 30 May 2017', 'Solutions Management Systems Inc.', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 100.00, -100.00, 0.00, 0.00, 0.00, 0.00, -100.00),
	(92, 542, '16 May 2017 to 30 May 2017', 'Solutions Management Systems Inc.', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 100.00, -100.00, 1198.00, 0.00, 0.00, 0.00, -1298.00),
	(102, 462, '16 May 2017 to 30 May 2017', 'Solutions Management Systems Inc.', 5000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 181.70, 62.50, 50.00, 4705.80, 0.00, 0.00, 0.00, 310.09, 4395.71),
	(112, 1202, '16 May 2017 to 30 May 2017', 'Solutions Management Systems Inc.', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 100.00, -100.00, 0.00, 0.00, 0.00, 0.00, -100.00),
	(122, 502, '16 May 2017 to 30 May 2017', 'Solutions Management Systems Inc.', 7500.00, 0.00, 0.00, 0.00, 2000.00, 0.00, 4038.46, 0.00, 272.50, 93.75, 50.00, 5045.29, 946.00, 0.00, 0.00, 363.23, 3736.06),
	(132, 672, '16 May 2017 to 30 May 2017', 'Solutions Management Systems Inc.', 7500.00, 0.00, 0.00, 0.00, 0.00, 0.00, 6923.08, 0.00, 272.50, 93.75, 50.00, 160.67, 0.00, 0.00, 0.00, 0.00, 160.67),
	(142, 1182, '16 May 2017 to 30 May 2017', 'Solutions Management Systems Inc.', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 100.00, -100.00, 0.00, 0.00, 0.00, 0.00, -100.00),
	(152, 1312, '16 May 2017 to 30 May 2017', 'Solutions Management Systems Inc.', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 100.00, -100.00, 0.00, 0.00, 0.00, 0.00, -100.00),
	(162, 642, '16 May 2017 to 30 May 2017', 'Solutions Management Systems Inc.', 6000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1615.38, 0.00, 218.00, 75.00, 50.00, 4041.62, 559.00, 0.00, 0.00, 210.46, 3272.16),
	(172, 352, '16 May 2017 to 30 May 2017', 'Solutions Management Systems Inc.', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 100.00, -100.00, 0.00, 0.00, 0.00, 0.00, -100.00),
	(182, 472, '16 May 2017 to 30 May 2017', 'Solutions Management Systems Inc.', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 100.00, -100.00, 1198.00, 0.00, 0.00, 0.00, -1298.00),
	(192, 662, '16 May 2017 to 30 May 2017', 'Solutions Management Systems Inc.', 6000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 461.54, 0.00, 218.00, 75.00, 50.00, 5195.46, 1437.50, 0.00, 0.00, 393.26, 3364.70),
	(202, 1212, '16 May 2017 to 30 May 2017', 'Solutions Management Systems Inc.', 5500.00, 0.00, 0.00, 0.00, 0.00, 0.00, 5076.92, 0.00, 199.80, 68.75, 50.00, 104.53, 0.00, 0.00, 0.00, 0.00, 104.53);
/*!40000 ALTER TABLE `payslip` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
