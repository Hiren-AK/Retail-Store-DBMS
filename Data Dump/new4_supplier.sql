-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: new4
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier` (
  `SupplierID` int NOT NULL,
  `SupplierName` varchar(30) DEFAULT NULL,
  `PhoneNum` char(10) DEFAULT NULL,
  `City` varchar(15) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Pword` varchar(15) NOT NULL,
  PRIMARY KEY (`SupplierID`),
  KEY `index5` (`SupplierID`,`SupplierName`,`PhoneNum`),
  CONSTRAINT `chk_emai2l` CHECK ((`Email` like _utf8mb4'%@%._%')),
  CONSTRAINT `chk_pword2` CHECK ((length(`Pword`) >= 8))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (68,'Ramirez Supplier Inc.','5036000188','Firozabad','Ramirez@gmail.com','14ANQ8V5'),(69,'Nguyen Supplier Inc.','7668133355','Lal Kot','Nguyen@gmail.com','3XHLV6QL'),(70,'Flores Supplier Inc.','8148681319','Siri','Flores@gmail.com','EBVO97B0'),(71,'Smith Supplier Inc.','0731455648','Siri','Smith@gmail.com','WA5IZ7PU'),(72,'Gonzalez Supplier Inc.','6378809870','Tughlakabad','Gonzalez@gmail.com','WVL15UWJ'),(73,'Mitchell Supplier Inc.','3660352042','New Delhi','Mitchell@gmail.com','P470SE5O'),(74,'Mitchell Supplier Inc.','3093970245','Lal Kot','Mitchell@gmail.com','G62CLHVB'),(75,'Allen Supplier Inc.','0106484758','Siri','Allen@gmail.com','PC3T4NBX'),(76,'Gonzalez Supplier Inc.','0364352553','Shergarh','Gonzalez@gmail.com','A6W9DS8A'),(77,'Smith Supplier Inc.','6633357954','Mehrauli','Smith@gmail.com','EB806F1U'),(78,'Harris Supplier Inc.','3658344096','Siri','Harris@gmail.com','NBUZHIAP'),(79,'Roberts Supplier Inc.','7667970060','Shergarh','Roberts@gmail.com','FJLYAIEL'),(80,'Robinson Supplier Inc.','8256422080','Shergarh','Robinson@gmail.com','DPFV9DFG'),(81,'Rodriguez Supplier Inc.','9229096874','Mehrauli','Rodriguez@gmail.com','MU8D7AII'),(82,'Hill Supplier Inc.','8180769763','New Delhi','Hill@gmail.com','USBC3HZB'),(83,'Davis Supplier Inc.','4511057467','Mehrauli','Davis@gmail.com','BVX5GMF6'),(84,'Hill Supplier Inc.','1417009530','Lal Kot','Hill@gmail.com','7XFZBFUD'),(85,'Perez Supplier Inc.','8957813199','New Delhi','Perez@gmail.com','YGLDJVUQ'),(86,'Flores Supplier Inc.','7494562314','Tughlakabad','Flores@gmail.com','M5F8AUH2'),(87,'Allen Supplier Inc.','1101464553','Firozabad','Allen@gmail.com','POO8FC2O'),(88,'Nelson Supplier Inc.','0274092702','New Delhi','Nelson@gmail.com','FG0BHGEG'),(89,'Scott Supplier Inc.','2634211709','Shahjehabanad','Scott@gmail.com','7LWAXNFI'),(90,'Adams Supplier Inc.','4698347368','Firozabad','Adams@gmail.com','OIRRY1XW'),(91,'Lopez Supplier Inc.','4400532162','Siri','Lopez@gmail.com','SCA0PGQA'),(92,'Martinez Supplier Inc.','2311743221','Lal Kot','Martinez@gmail.com','O4MA592G'),(93,'Hall Supplier Inc.','4953934872','New Delhi','Hall@gmail.com','E4GHZZOW'),(94,'Scott Supplier Inc.','4634451481','Lal Kot','Scott@gmail.com','75J3N60Q'),(95,'Brown Supplier Inc.','6195341913','Lal Kot','Brown@gmail.com','JH9D6NKZ'),(96,'Gonzalez Supplier Inc.','6900133915','Shahjehabanad','Gonzalez@gmail.com','UNNCRCKI');
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-30  6:31:09
