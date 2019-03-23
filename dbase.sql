-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.13-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.4.0.5174
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for storage
CREATE DATABASE IF NOT EXISTS `storage` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `storage`;

-- Dumping structure for table storage.request
CREATE TABLE IF NOT EXISTS `request` (
  `req_no` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `department` varchar(50) DEFAULT NULL,
  `e_name` varchar(50) DEFAULT NULL,
  `item_No` int(5) unsigned zerofill DEFAULT NULL,
  `itemType` varchar(50) DEFAULT NULL,
  `quant` int(11) DEFAULT NULL,
  `date_req` date DEFAULT NULL,
  PRIMARY KEY (`req_no`),
  KEY `FK_request_supply` (`item_No`),
  CONSTRAINT `FK_request_supply` FOREIGN KEY (`item_No`) REFERENCES `supply` (`itemNo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table storage.request: ~4 rows (approximately)
/*!40000 ALTER TABLE `request` DISABLE KEYS */;
INSERT INTO `request` (`req_no`, `department`, `e_name`, `item_No`, `itemType`, `quant`, `date_req`) VALUES
	(00001, 'ddasjgjag', 'dsfsdgsgsfw', 00001, 'Supply', 12, '2019-02-11'),
	(00002, 'hewjh', 'jhwe', 00001, 'Equipment', 76, '2019-03-06'),
	(00003, 'hhhj', 'hgjhgj', 00001, 'Equipment', 45, '2019-03-08'),
	(00004, 'hghg', 'gyu', 00001, 'Equipment', 67, '2019-03-07');
/*!40000 ALTER TABLE `request` ENABLE KEYS */;

-- Dumping structure for table storage.supply
CREATE TABLE IF NOT EXISTS `supply` (
  `itemNo` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `description` varchar(50) NOT NULL,
  `unit` varchar(50) NOT NULL,
  `quant` int(50) NOT NULL,
  `ucost` int(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `result` int(50) NOT NULL,
  `date_s` datetime NOT NULL,
  PRIMARY KEY (`itemNo`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

-- Dumping data for table storage.supply: ~15 rows (approximately)
/*!40000 ALTER TABLE `supply` DISABLE KEYS */;
INSERT INTO `supply` (`itemNo`, `description`, `unit`, `quant`, `ucost`, `type`, `result`, `date_s`) VALUES
	(00001, 'niki', 'Bottle', 76, 9, '', 684, '2019-02-15 21:43:43'),
	(00002, 'hjh', 'ampule', 8, 9, '', 72, '2019-02-06 21:41:44'),
	(00003, 'jjkj', 'bar ', 78, 87, '', 6786, '2019-02-06 21:57:19'),
	(00004, 'kolo', 'book', 89, 98, '', 8722, '2019-03-04 20:37:45'),
	(00005, 'hju', 'cartridge', 89, 56, 'Supply', 4984, '2019-03-07 15:08:54'),
	(00006, 'jij', 'Bottle', 65, 68, 'Supply', 4420, '2019-03-07 15:25:56'),
	(00007, 'joke', 'Bottle', 676, 43, '', 29068, '2019-02-27 22:07:16'),
	(00008, 'jukju', 'bar ', 789, 8, '', 6312, '2019-02-27 22:15:39'),
	(00010, 'uhui', 'book', 65, 89, 'Equipment', 5785, '2019-02-27 22:12:29'),
	(00011, 'jh', 'ampule', 98, 98, 'Supply', 9604, '2019-02-27 22:15:27'),
	(00012, 'jk', 'cap', 9, 98, 'Equipment', 882, '2019-02-27 22:19:51'),
	(00013, 'jujh', 'tube', 87, 89, 'Equipment', 7743, '2019-02-28 13:24:59'),
	(00014, 'jh', 'can', 67, 67, 'Equipment', 4489, '2019-03-05 23:39:17'),
	(00015, 'jhii', 'ampule', 63, 45, 'Supply', 2835, '2019-03-05 23:42:31'),
	(00016, 'hggy', 'cap', 12, 45, 'Equipment', 540, '2019-03-05 23:45:12');
/*!40000 ALTER TABLE `supply` ENABLE KEYS */;

-- Dumping structure for table storage.user
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `fname` varchar(50) DEFAULT NULL,
  `mname` varchar(50) DEFAULT NULL,
  `lname` varchar(50) DEFAULT NULL,
  `bdate` date DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table storage.user: ~6 rows (approximately)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`, `fname`, `mname`, `lname`, `bdate`, `gender`, `address`, `username`, `password`) VALUES
	(00001, 'jewel', 'rose', 'junsay', '0000-00-00', 'male', 'san ag', 'jhejhe', '2fbdc5b1e958760e95e710b1acdb2e51'),
	(00002, 'jh', 'h', 'hj', '0000-00-00', 'hh', 'hbhjb', 'jewel', '2fbdc5b1e958760e95e710b1acdb2e51'),
	(00003, 'jj', 'jnjkn', 'jknnnnnj', '2019-12-30', 'm', 'kmklm', 'jhew', '2fbdc5b1e958760e95e710b1acdb2e51'),
	(00004, 'hj', 'hjghgygyg', 'ygygy', '2019-02-07', 'jbkj', 'BHJB', 'jhel', '2fbdc5b1e958760e95e710b1acdb2e51'),
	(00005, 'jhu', 'huhu', 'hu', '2019-02-28', 'jbh', 'bhjb', 'hb', '2fbdc5b1e958760e95e710b1acdb2e51'),
	(00006, 'JH', 'H', 'hj', '2019-02-01', 'Female', 'jnjn', 'jun', '6b5843ce9d2d0599c3e3ce6d59c1551f');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

-- Dumping structure for table storage.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `type` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table storage.users: ~3 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `username`, `password`, `type`) VALUES
	(00001, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1),
	(00002, 'supply officer', '35df1059263c49d19db8251d99f48d4d', 2),
	(00003, 'guest', '084e0343a0486ff05530df6c705c8bb4', 3);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
