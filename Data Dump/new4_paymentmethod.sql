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
-- Table structure for table `paymentmethod`
--

DROP TABLE IF EXISTS `paymentmethod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paymentmethod` (
  `PaymentID` int NOT NULL,
  `CustomerID` int NOT NULL,
  `paymentType` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`PaymentID`,`CustomerID`),
  KEY `CustomerID` (`CustomerID`),
  KEY `paymentMethod` (`PaymentID`),
  CONSTRAINT `paymentmethod_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paymentmethod`
--

LOCK TABLES `paymentmethod` WRITE;
/*!40000 ALTER TABLE `paymentmethod` DISABLE KEYS */;
INSERT INTO `paymentmethod` VALUES (29,1,'Credit Card'),(30,4,'UPI'),(31,5,'Debit Card'),(32,6,'Cash'),(33,7,'NEFT'),(34,9,'UPI'),(35,10,'UPI'),(36,12,'Netbanking'),(37,13,'Cash'),(38,16,'Credit Card'),(39,19,'UPI'),(40,20,'UPI'),(41,23,'Debit Card'),(42,25,'Debit Card'),(43,26,'Credit Card'),(44,28,'Debit Card'),(45,30,'Debit Card'),(46,31,'Debit Card'),(47,32,'Credit Card'),(48,33,'Debit Card'),(49,34,'UPI'),(50,35,'UPI'),(51,37,'Debit Card'),(52,39,'Debit Card'),(53,40,'Credit Card'),(54,42,'Netbanking'),(55,44,'UPI'),(56,45,'Netbanking'),(57,46,'Credit Card'),(58,48,'Credit Card'),(59,49,'Credit Card'),(60,52,'Credit Card'),(61,53,'Credit Card'),(62,54,'NEFT'),(63,55,'UPI'),(64,56,'Debit Card'),(65,57,'Cash'),(66,58,'Cash'),(67,59,'NEFT'),(68,60,'Netbanking'),(69,61,'Netbanking'),(70,63,'UPI'),(71,64,'Credit Card'),(72,65,'Credit Card'),(73,66,'Credit Card'),(74,70,'Debit Card'),(75,71,'Cash'),(76,72,'Credit Card'),(77,73,'Credit Card'),(78,75,'UPI'),(79,76,'Debit Card'),(80,80,'Netbanking'),(81,81,'Debit Card'),(82,82,'UPI'),(83,83,'Debit Card'),(84,84,'Credit Card'),(85,85,'Cash'),(86,86,'Debit Card'),(87,87,'Netbanking'),(88,88,'NEFT'),(89,90,'Netbanking'),(90,91,'Debit Card'),(91,92,'Debit Card'),(92,93,'Debit Card'),(93,96,'Netbanking'),(94,97,'Debit Card'),(95,98,'UPI'),(96,99,'Debit Card'),(97,101,'Cash'),(98,102,'Cash'),(99,104,'Credit Card'),(100,105,'Debit Card'),(101,106,'Netbanking'),(102,107,'Credit Card'),(103,108,'Netbanking'),(104,110,'NEFT'),(105,111,'Cash'),(106,112,'Credit Card'),(107,114,'Credit Card'),(108,115,'UPI'),(109,116,'Netbanking'),(110,119,'Debit Card'),(111,120,'Netbanking'),(112,121,'Cash'),(113,122,'Debit Card'),(114,123,'UPI'),(115,125,'NEFT'),(116,129,'Credit Card'),(117,130,'Debit Card'),(118,132,'Netbanking'),(119,133,'Credit Card'),(120,134,'UPI'),(121,135,'UPI'),(122,136,'Netbanking'),(123,137,'Cash'),(124,138,'Credit Card'),(125,139,'Credit Card'),(126,141,'UPI'),(127,143,'Netbanking'),(128,144,'UPI'),(129,146,'Debit Card'),(130,147,'UPI'),(131,149,'Debit Card'),(132,150,'UPI'),(133,151,'Netbanking'),(134,152,'Debit Card'),(135,153,'Cash'),(136,154,'Credit Card'),(137,156,'Cash'),(138,157,'Cash'),(139,158,'NEFT'),(140,159,'UPI'),(141,160,'Credit Card'),(142,161,'Credit Card'),(143,163,'Netbanking'),(144,172,'Netbanking'),(145,175,'Netbanking'),(146,178,'Cash'),(147,180,'Debit Card'),(148,182,'Netbanking'),(149,192,'NEFT'),(150,199,'NEFT'),(151,888,'Cash'),(152,210,'UPI'),(153,212,'UPI'),(154,216,'Debit Card'),(155,217,'Cash'),(156,221,'Debit Card'),(157,224,'Netbanking'),(158,228,'Cash'),(159,229,'Credit Card'),(160,232,'NEFT'),(161,237,'Debit Card'),(162,245,'Netbanking'),(163,246,'UPI'),(164,257,'NEFT'),(165,263,'Credit Card'),(166,264,'Netbanking'),(167,270,'Netbanking'),(168,291,'Debit Card'),(169,342,'Credit Card'),(170,353,'UPI'),(171,354,'Credit Card'),(172,355,'UPI'),(173,356,'Debit Card'),(174,357,'Credit Card'),(175,358,'Credit Card'),(176,359,'UPI'),(177,360,'Credit Card'),(178,361,'Credit Card'),(179,362,'Credit Card'),(180,363,'Credit Card'),(181,364,'Credit Card'),(182,365,'Debit Card'),(183,366,'UPI'),(184,367,'UPI'),(185,368,'Cash'),(186,369,'Netbanking'),(187,370,'Netbanking'),(188,371,'Credit Card'),(189,372,'Credit Card'),(190,373,'Cash'),(191,374,'UPI'),(192,375,'Credit Card'),(193,376,'UPI'),(194,378,'UPI'),(195,379,'UPI'),(196,381,'NEFT'),(197,382,'Debit Card'),(198,383,'Credit Card'),(199,384,'Cash'),(200,385,'Debit Card'),(201,386,'UPI'),(202,387,'Cash'),(203,388,'Netbanking'),(204,389,'UPI'),(205,390,'Debit Card'),(206,391,'Credit Card'),(207,392,'Cash'),(208,393,'Credit Card'),(209,394,'UPI'),(210,395,'Netbanking'),(211,396,'NEFT'),(212,398,'Credit Card'),(213,399,'UPI'),(214,400,'Credit Card'),(215,401,'Netbanking'),(216,402,'Cash'),(217,403,'UPI'),(218,404,'UPI'),(219,405,'Credit Card'),(220,406,'Debit Card'),(221,407,'NEFT'),(222,408,'Credit Card'),(223,409,'Cash'),(224,410,'Netbanking'),(225,411,'UPI'),(226,412,'Cash'),(227,414,'NEFT'),(228,415,'UPI');
/*!40000 ALTER TABLE `paymentmethod` ENABLE KEYS */;
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
