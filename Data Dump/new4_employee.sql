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
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `EmployeeID` int NOT NULL,
  `Fname` varchar(40) NOT NULL,
  `Lname` varchar(40) DEFAULT NULL,
  `PhoneNum` char(10) DEFAULT NULL,
  `Salary` decimal(7,2) NOT NULL,
  `Experience` int DEFAULT NULL,
  PRIMARY KEY (`EmployeeID`),
  KEY `index4` (`EmployeeID`,`Fname`,`Lname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (68,'Samesh','Nguyen','5877009909',35949.65,22),(69,'Balhaar','Flores','7716992990',28910.78,13),(70,'Isabella','Smith','0582524801',78195.07,30),(71,'Brooklyn','Gonzalez','7595438627',59264.83,24),(72,'Rushil','Mitchell','0227267230',28066.16,20),(73,'Qabil','Mitchell','6790024841',4935.05,6),(74,'Ariana','Allen','7299133776',47088.08,24),(75,'Wriddhish','Gonzalez','8681250540',73432.14,33),(76,'Zoe','Smith','9171461938',51110.44,12),(77,'Hannah','Harris','1828655280',45522.30,28),(78,'Balhaar','Roberts','9697733516',6235.95,8),(79,'Manan','Robinson','0265809757',37415.51,13),(80,'Isabella','Rodriguez','2917448074',70.85,4),(81,'Aria','Hill','6836044270',60421.16,10),(82,'Aryan','Davis','1125027418',7206.70,31),(83,'Imaran','Hill','9583214705',20453.36,12),(84,'Nevaeh','Perez','5566890567',16347.36,20),(85,'Piper','Flores','4283801296',5063.09,7),(86,'Manan','Allen','7351193126',4123.36,8),(87,'Samarth','Nelson','7947695185',63251.07,19),(88,'Balvan','Scott','9892104033',49353.35,12),(89,'Harper','Adams','1198778125',9112.98,6),(90,'Ekalinga','Lopez','4695989853',41296.96,13),(91,'Chakradev','Martinez','7003775375',66385.99,26),(92,'Eleanor','Hall','4555005828',88673.74,24),(93,'Tanay','Scott','8223935575',66847.87,12),(94,'Girish','Brown','6858174574',9792.22,21),(95,'Gautam','Gonzalez','7530305514',74476.77,24),(96,'Udant','Jones','2587946445',91612.09,29),(97,'Cora','Sanchez','4195843629',14185.75,15),(98,'Rohan','Wright','6874511149',5735.09,29),(99,'Anna','Robinson','3365255768',65761.23,12),(100,'Samarth','Roberts','3360712070',19567.73,12),(101,'Om','Taylor','3655795014',7048.23,8),(102,'Faqid','Taylor','4242940331',22784.28,32),(103,'Azad','Davis','7072609022',80061.63,31),(104,'Scarlett','Rivera','9877096901',9125.15,8),(105,'Eleanor','Nguyen','2972844743',88086.34,23),(106,'Quinn','Lewis','6907579274',55343.02,30),(107,'Bella','Perez','3249393162',8588.69,6),(108,'Zoey','Carter','0396466289',49542.07,12),(109,'Rayaan','Davis','2420251932',37917.26,32),(110,'Gaurav','Jones','2986415332',76803.81,21),(111,'Kalpit','Torres','9456996757',59340.22,15),(112,'Elizabeth','Young','0512952330',14828.18,22),(113,'Ishwar','Hill','9090823373',40671.81,34),(114,'Aubrey','Hernandez','7644544948',59540.09,12),(115,'Audrey','Hall','2249202814',71476.28,30),(116,'Paisley','Lewis','9782663812',49522.14,18),(117,'Autumn','Flores','0499969143',24465.02,23),(118,'Bella','Perez','5524475453',82801.72,12),(119,'Qasim','Campbell','6942957733',68075.63,20),(120,'Madelyn','Brown','9184569260',3922.81,6),(121,'Aurora','Carter','4520920023',37054.39,22),(122,'Manan','Carter','9562842688',27804.95,19),(123,'Stella','Flores','2240080281',58756.55,24),(124,'Laksh','Robinson','3577955690',19245.88,14),(125,'Audrey','Ramirez','5989335550',78651.02,30),(126,'Aarnav','Rodriguez','9975784820',96312.90,15),(127,'Avery','Campbell','9969708006',61401.56,25),(128,'Sophie','Wilson','3080483949',48322.42,30),(129,'Zoey','Mitchell','3673019863',78715.14,18),(130,'Olivia','Moore','6717591105',4574.57,7),(131,'Banjeet','Anderson','4163440555',23496.07,18),(132,'Isaac','Davis','0730420509',17517.99,10),(133,'Dalbir','Clark','1943095948',8431.26,16),(134,'Aaliyah','Torres','5978958286',20918.77,27),(135,'Nakul','Hill','4835046293',1870.06,3),(136,'Penelope','Rodriguez','8181453288',4767.67,4),(137,'Bachittar','Clark','5307763511',73245.63,11),(138,'Saksham','Williams','1335826497',36054.69,29),(139,'Cora','Hall','5484673058',9539.48,3),(140,'Qabil','Hernandez','1124767134',88898.23,24),(141,'Ryan','Rodriguez','5116258052',20637.46,28),(142,'Ayaan','Wilson','5876452219',30130.63,33),(143,'Alice','Green','4581449585',39821.31,34),(144,'Gianna','Young','4730875903',7247.96,4),(145,'Sofia','Nelson','5190319163',73795.44,33),(146,'Ruby','Thomas','7314044089',24280.13,32);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
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
