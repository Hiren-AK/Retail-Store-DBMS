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
-- Table structure for table `supplydelivery`
--

DROP TABLE IF EXISTS `supplydelivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplydelivery` (
  `SupplyQuotationID` int NOT NULL,
  `AddressID` int DEFAULT NULL,
  `ReceivingDate` date NOT NULL,
  PRIMARY KEY (`SupplyQuotationID`),
  KEY `AddressID` (`AddressID`),
  CONSTRAINT `supplydelivery_ibfk_1` FOREIGN KEY (`SupplyQuotationID`) REFERENCES `supplyquotation` (`SupplyQuotationID`) ON DELETE CASCADE,
  CONSTRAINT `supplydelivery_ibfk_2` FOREIGN KEY (`AddressID`) REFERENCES `storeaddress` (`AddressID`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplydelivery`
--

LOCK TABLES `supplydelivery` WRITE;
/*!40000 ALTER TABLE `supplydelivery` DISABLE KEYS */;
INSERT INTO `supplydelivery` VALUES (29,40,'2022-11-10'),(30,40,'2022-03-15'),(31,41,'2022-08-07'),(32,41,'2022-12-15'),(33,41,'2022-07-15'),(34,42,'2022-05-15'),(35,42,'2022-11-09'),(36,42,'2022-06-24'),(37,42,'2022-08-28'),(38,43,'2022-06-15'),(39,44,'2022-12-13'),(40,45,'2022-11-03'),(41,45,'2022-07-05'),(42,45,'2022-03-04'),(43,45,'2022-04-03'),(44,45,'2022-06-18'),(45,46,'2022-04-02'),(46,46,'2022-11-15'),(47,47,'2022-04-06'),(48,47,'2022-09-08'),(49,47,'2022-07-18'),(50,48,'2022-11-04'),(51,48,'2022-11-02'),(52,48,'2022-05-15'),(53,49,'2022-04-11'),(54,50,'2022-02-01'),(55,51,'2022-06-25'),(56,52,'2022-09-11'),(57,54,'2022-12-17'),(58,54,'2022-03-23'),(59,54,'2022-10-26'),(60,54,'2022-04-22'),(61,55,'2022-02-02'),(62,55,'2022-06-20'),(63,55,'2022-08-03'),(64,56,'2022-03-12'),(65,56,'2022-07-24'),(66,57,'2022-10-06'),(67,58,'2022-03-18'),(68,59,'2022-03-02'),(69,59,'2022-04-22'),(70,59,'2022-11-28'),(71,60,'2022-09-07'),(72,60,'2022-02-27'),(73,63,'2022-10-20'),(74,63,'2022-11-23'),(75,63,'2022-03-14'),(76,64,'2022-04-06'),(77,64,'2022-10-01'),(78,64,'2022-12-26'),(79,64,'2022-12-10'),(80,65,'2022-04-24'),(81,65,'2022-03-09'),(82,65,'2022-12-07'),(83,66,'2022-04-24'),(84,66,'2022-12-27'),(85,67,'2022-11-10'),(86,67,'2022-08-24');
/*!40000 ALTER TABLE `supplydelivery` ENABLE KEYS */;
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
