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
-- Table structure for table `storeaddress`
--

DROP TABLE IF EXISTS `storeaddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `storeaddress` (
  `AddressID` int NOT NULL,
  `StoreID` int NOT NULL,
  `Pincode` char(6) NOT NULL,
  `City` varchar(15) DEFAULT NULL,
  `AddressLine1` varchar(50) DEFAULT NULL,
  `AddressLine2` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`AddressID`,`StoreID`),
  KEY `StoreID` (`StoreID`),
  CONSTRAINT `storeaddress_ibfk_1` FOREIGN KEY (`StoreID`) REFERENCES `store` (`StoreID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeaddress`
--

LOCK TABLES `storeaddress` WRITE;
/*!40000 ALTER TABLE `storeaddress` DISABLE KEYS */;
INSERT INTO `storeaddress` VALUES (39,68,'110009','Lal Kot','865, EFK, Narela','Dadra and Nagar Haveli'),(40,69,'110005','Siri','886, G, Delhi Cantonment','Himachal Pradesh'),(41,70,'110019','Siri','549, B, New Delhi','Chhattisgarh'),(42,71,'110009','Tughlakabad','187, P, Hastsal','Chhattisgarh'),(43,72,'110011','New Delhi','478, HMX, Mustafabad','Orissa'),(44,73,'110006','Lal Kot','974, EO, Burari','Tamil Nadu'),(45,74,'110015','Siri','91, LW, Narela','Uttarakhand'),(46,75,'110005','Shergarh','167, K, Burari','Assam'),(47,76,'110018','Mehrauli','987, KFN, Gharoli','Tamil Nadu'),(48,77,'110012','Siri','895, TDD, Narela','Uttar Pradesh'),(49,78,'110018','Shergarh','550, H, Puth Kalan','Andhra Pradesh'),(50,79,'110015','Shergarh','926, DKE, Bhalswa Jahangir Pur','Daman and Diu'),(51,80,'110002','Mehrauli','11, LR, Jaffrabad','Chhattisgarh'),(52,81,'110005','New Delhi','74, KCY, Najafgarh','Himachal Pradesh'),(53,82,'110016','Mehrauli','166, V, Taj Pul','Andhra Pradesh'),(54,83,'110013','Lal Kot','544, O, Narela','Haryana'),(55,84,'110015','New Delhi','440, C, Gokal Pur','Tripura'),(56,85,'110007','Tughlakabad','251, ELX, Taj Pul','Tripura'),(57,86,'110008','Firozabad','432, NCB, New Delhi','Madhya Pradesh'),(58,87,'110001','New Delhi','787, Q, Narela','Delhi'),(59,88,'110005','Shahjehabanad','868, L, Gokal Pur','Manipur'),(60,89,'110009','Firozabad','758, GUR, Jaffrabad','Lakshadweep'),(61,90,'110018','Siri','788, N, Delhi Cantonment','Orissa'),(62,91,'110018','Lal Kot','669, WMZ, Hastsal','Arunachal Pradesh'),(63,92,'110002','New Delhi','30, EN, Puth Kalan','Sikkim'),(64,93,'110009','Lal Kot','132, U, Hastsal','Karnataka'),(65,94,'110018','Lal Kot','934, ANC, Gokal Pur','Goa'),(66,95,'110014','Shahjehabanad','981, YV, Delhi Cantonment','Chhattisgarh'),(67,96,'110018','Mehrauli','839, GZ, Taj Pul','Jammu and Kashmir');
/*!40000 ALTER TABLE `storeaddress` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-30  6:31:10
