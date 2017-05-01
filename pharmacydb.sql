-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.73-community


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema pharmacy
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ pharmacy;
USE pharmacy;

--
-- Table structure for table `pharmacy`.`customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `Name` varchar(20) NOT NULL,
  `Mobile_no` bigint(20) NOT NULL DEFAULT '0',
  `No_of_purchases` int(11) DEFAULT NULL,
  `CustomerID` int(20) DEFAULT NULL,
  PRIMARY KEY (`Mobile_no`),
  UNIQUE KEY `CoustomerID` (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pharmacy`.`customer`
--

/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` (`Name`,`Mobile_no`,`No_of_purchases`,`CustomerID`) VALUES 
 ('Rahul',8801773514,0,1),
 ('Charlie',8879465523,0,5),
 ('Teja',9000523415,7,6),
 ('Ravi',9505965405,4,7),
 ('Meera',9765599871,0,4),
 ('krishna',9943444998,3,8),
 ('Sanya',9955487611,0,3),
 ('Ajay',9978556473,0,2);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;


--
-- Table structure for table `pharmacy`.`login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `Sno` int(11) NOT NULL,
  `Userid` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL,
  PRIMARY KEY (`Sno`),
  UNIQUE KEY `Sno` (`Sno`),
  UNIQUE KEY `Userid` (`Userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pharmacy`.`login`
--

/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` (`Sno`,`Userid`,`Password`) VALUES 
 (1,'Teja','003300'),
 (2,'Vardhaman','001400'),
 (3,'Shushanth','002100'),
 (4,'Akshay','003500'),
 (5,'emadhubhargava@live.com','madhu'),
 (6,'treyt','123'),
 (7,'vireshdaga','12345'),
 (8,'kavya','deepu');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;


--
-- Table structure for table `pharmacy`.`manufacturer`
--

DROP TABLE IF EXISTS `manufacturer`;
CREATE TABLE `manufacturer` (
  `Manufacturer_ID` int(10) NOT NULL,
  `Mobile_No` bigint(20) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `No_of_Supplies` int(10) DEFAULT NULL,
  `City` varchar(50) NOT NULL,
  `State` varchar(50) NOT NULL,
  `Manufacturer_name` varchar(50) DEFAULT NULL,
  `Phone_no` bigint(20) NOT NULL,
  PRIMARY KEY (`Manufacturer_ID`),
  UNIQUE KEY `Mobile_No` (`Mobile_No`),
  UNIQUE KEY `Mobile_No_2` (`Mobile_No`),
  UNIQUE KEY `Phone_no` (`Phone_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pharmacy`.`manufacturer`
--

/*!40000 ALTER TABLE `manufacturer` DISABLE KEYS */;
INSERT INTO `manufacturer` (`Manufacturer_ID`,`Mobile_No`,`Address`,`No_of_Supplies`,`City`,`State`,`Manufacturer_name`,`Phone_no`) VALUES 
 (1,9807865745,'H.no-127,sector-2',9,'Chenni Himmat','Jammu','Manufacturer1',4065798765),
 (2,9856486957,'Hno-27,6th Avenue',2,'Tarnaka','Hyderabad','Manufacturer2',4022653467),
 (3,9854676957,'Hno-07,5th Avenue',2,'Sainikpuri','Hyderabad','Manufacturer3',40226537467),
 (4,9837645957,'Sector-7',5,'Gandhi Nagar','Delhi','Manufacturer4',4027593667),
 (5,9867587656,'Sector-3',3,'Udaipur','Rajasthan','Manufacturer5',4087965465);
/*!40000 ALTER TABLE `manufacturer` ENABLE KEYS */;


--
-- Table structure for table `pharmacy`.`medicines`
--

DROP TABLE IF EXISTS `medicines`;
CREATE TABLE `medicines` (
  `Med_Code` int(10) NOT NULL,
  `Medicine` varchar(20) NOT NULL,
  `Quantity` int(10) DEFAULT NULL,
  `ManufacturerName` varchar(20) DEFAULT NULL,
  `Price` int(10) NOT NULL,
  `Expiry_date` date NOT NULL,
  PRIMARY KEY (`Med_Code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pharmacy`.`medicines`
--

/*!40000 ALTER TABLE `medicines` DISABLE KEYS */;
INSERT INTO `medicines` (`Med_Code`,`Medicine`,`Quantity`,`ManufacturerName`,`Price`,`Expiry_date`) VALUES 
 (1,'Crocin',50,'Manufacturer2',10,'2015-06-15'),
 (2,'Norflox',-39,'Manufacturer3',15,'2015-06-15'),
 (3,'Sporlac',-5,'Manufacturer3',12,'2015-06-15'),
 (4,'Tyfy-300',-37,'Manufacturer5',10,'2015-06-15'),
 (7,'Levocet',-35,'Manufacturer2',25,'2015-06-15'),
 (8,'Meftal-Spas',-39,'Manufacturer3',22,'2015-06-15'),
 (9,'Zanflox-Oz',-23,'Manufacturer4',39,'2015-06-15'),
 (10,'Aceclo',2,'Manufacturer2',24,'2015-06-15'),
 (11,'Recofast',-20,'Manufacturer1',25,'2015-06-15');
/*!40000 ALTER TABLE `medicines` ENABLE KEYS */;


--
-- Table structure for table `pharmacy`.`purchase`
--

DROP TABLE IF EXISTS `purchase`;
CREATE TABLE `purchase` (
  `Date` date NOT NULL,
  `CoustomerID` int(10) NOT NULL,
  `Medicines` varchar(50) DEFAULT NULL,
  `Quantity` int(10) NOT NULL,
  `ExpiryDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pharmacy`.`purchase`
--

/*!40000 ALTER TABLE `purchase` DISABLE KEYS */;
INSERT INTO `purchase` (`Date`,`CoustomerID`,`Medicines`,`Quantity`,`ExpiryDate`) VALUES 
 ('2014-04-18',6,'Norflox',2,'2014-04-04'),
 ('2014-04-18',6,'Sporlac',5,'2015-06-15'),
 ('2014-04-18',6,'Tyfy-300',3,'2015-06-15'),
 ('2014-04-18',7,'Parasetmol',1,'2015-06-15'),
 ('2014-04-18',7,'Levocet',2,'2015-06-15'),
 ('2014-04-18',7,'Taxim-O',5,'2015-06-15'),
 ('2014-04-18',7,'Tyfy-300',5,'2015-06-15'),
 ('2014-04-18',7,'Norflox',6,'2015-06-15'),
 ('2014-04-18',7,'Zanflox-Oz',3,'2015-06-15'),
 ('2014-10-29',8,'Sporlac',10,'2015-06-15');
/*!40000 ALTER TABLE `purchase` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
