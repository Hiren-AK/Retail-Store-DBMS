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
-- Table structure for table `deliveryaddress`
--

DROP TABLE IF EXISTS `deliveryaddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deliveryaddress` (
  `CustomerID` int NOT NULL,
  `AddressID` int NOT NULL,
  `Pincode` char(6) NOT NULL,
  `City` varchar(15) DEFAULT NULL,
  `AddressLine1` varchar(50) DEFAULT NULL,
  `AddressLine2` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`AddressID`,`CustomerID`),
  KEY `CustomerID` (`CustomerID`),
  CONSTRAINT `deliveryaddress_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deliveryaddress`
--

LOCK TABLES `deliveryaddress` WRITE;
/*!40000 ALTER TABLE `deliveryaddress` DISABLE KEYS */;
INSERT INTO `deliveryaddress` VALUES (1,68,'110009','Lal Kot','865, EFK, Narela','Dadra and Nagar Haveli'),(4,69,'110005','Siri','886, G, Delhi Cantonment','Himachal Pradesh'),(5,70,'110019','Siri','549, B, New Delhi','Chhattisgarh'),(6,71,'110009','Tughlakabad','187, P, Hastsal','Chhattisgarh'),(7,72,'110011','New Delhi','478, HMX, Mustafabad','Orissa'),(9,73,'110006','Lal Kot','974, EO, Burari','Tamil Nadu'),(10,74,'110015','Siri','91, LW, Narela','Uttarakhand'),(12,75,'110005','Shergarh','167, K, Burari','Assam'),(13,76,'110018','Mehrauli','987, KFN, Gharoli','Tamil Nadu'),(16,77,'110012','Siri','895, TDD, Narela','Uttar Pradesh'),(19,78,'110018','Shergarh','550, H, Puth Kalan','Andhra Pradesh'),(20,79,'110015','Shergarh','926, DKE, Bhalswa Jahangir Pur','Daman and Diu'),(23,80,'110002','Mehrauli','11, LR, Jaffrabad','Chhattisgarh'),(25,81,'110005','New Delhi','74, KCY, Najafgarh','Himachal Pradesh'),(26,82,'110016','Mehrauli','166, V, Taj Pul','Andhra Pradesh'),(28,83,'110013','Lal Kot','544, O, Narela','Haryana'),(30,84,'110015','New Delhi','440, C, Gokal Pur','Tripura'),(31,85,'110007','Tughlakabad','251, ELX, Taj Pul','Tripura'),(32,86,'110008','Firozabad','432, NCB, New Delhi','Madhya Pradesh'),(33,87,'110001','New Delhi','787, Q, Narela','Delhi'),(34,88,'110005','Shahjehabanad','868, L, Gokal Pur','Manipur'),(35,89,'110009','Firozabad','758, GUR, Jaffrabad','Lakshadweep'),(37,90,'110018','Siri','788, N, Delhi Cantonment','Orissa'),(39,91,'110018','Lal Kot','669, WMZ, Hastsal','Arunachal Pradesh'),(40,92,'110002','New Delhi','30, EN, Puth Kalan','Sikkim'),(42,93,'110009','Lal Kot','132, U, Hastsal','Karnataka'),(44,94,'110018','Lal Kot','934, ANC, Gokal Pur','Goa'),(45,95,'110014','Shahjehabanad','981, YV, Delhi Cantonment','Chhattisgarh'),(46,96,'110018','Mehrauli','839, GZ, Taj Pul','Jammu and Kashmir'),(48,97,'110003','Shahjehabanad','504, SG, Bhalswa Jahangir Pur','Chandigarh'),(49,98,'110002','Siri','842, Y, Nangloi','Jharkhand'),(52,99,'110018','Lal Kot','922, L, Karawal Nagar','Pondicherry'),(53,100,'110003','Mehrauli','138, GMD, Sultanpur Majra','Bihar'),(54,101,'110003','Shergarh','986, KHC, Bhalswa Jahangir Pur','Gujarat'),(55,102,'110003','Shahjehabanad','115, YV, New Delhi','Nagaland'),(56,103,'110015','Lal Kot','500, ID, Narela','Delhi'),(57,104,'110011','Firozabad','701, ANW, Jaffrabad','Kerala'),(58,105,'110008','Lal Kot','504, WA, Hastsal','Karnataka'),(59,106,'110004','Firozabad','436, QG, Burari','Lakshadweep'),(60,107,'110011','Shahjehabanad','753, KFW, Gharoli','Daman and Diu'),(61,108,'110012','Tughlakabad','558, Q, Bhalswa Jahangir Pur','Telangana'),(63,109,'110007','New Delhi','26, RKM, Burari','Assam'),(64,110,'110017','Shergarh','425, L, Karawal Nagar','West Bengal'),(65,111,'110010','Lal Kot','937, SR, Najafgarh','Himachal Pradesh'),(66,112,'110010','Tughlakabad','316, O, Mustafabad','Rajasthan'),(70,113,'110018','New Delhi','199, NLB, Taj Pul','Andaman and Nicobar'),(71,114,'110020','Shergarh','15, PE, Burari','Orissa'),(72,115,'110018','New Delhi','551, EE, Kirari Suleman Nagar','Gujarat'),(73,116,'110017','Mehrauli','873, EJ, Delhi Cantonment','Gujarat'),(75,117,'110018','Shahjehabanad','173, QXI, New Delhi','Rajasthan'),(76,118,'110018','Tughlakabad','730, F, Puth Kalan','Nagaland'),(80,119,'110011','Mehrauli','425, CV, Gokal Pur','Punjab'),(81,120,'110017','Siri','688, A, Kirari Suleman Nagar','Andaman and Nicobar'),(82,121,'110009','New Delhi','537, RBN, Mustafabad','West Bengal'),(83,122,'110007','Mehrauli','203, JS, Gokal Pur','Goa'),(84,123,'110004','Tughlakabad','515, U, Narela','Goa'),(85,124,'110002','Firozabad','207, FBM, Chilla Saroda Bangar','Manipur'),(86,125,'110014','Siri','193, W, Puth Kalan','Chhattisgarh'),(87,126,'110017','Shergarh','319, L, Mandoli','Karnataka'),(88,127,'110019','Shahjehabanad','143, ANQ, Dallo Pura','Meghalaya'),(90,128,'110004','Shahjehabanad','668, XG, Narela','Andaman and Nicobar'),(91,129,'110006','Firozabad','749, Y, Puth Kalan','Chhattisgarh'),(92,130,'110017','Mehrauli','376, N, Burari','Karnataka'),(93,131,'110001','Shergarh','660, SOT, Najafgarh','Tripura'),(96,132,'110005','New Delhi','669, VZ, Mustafabad','Haryana'),(97,133,'110012','New Delhi','83, P, Jaffrabad','Haryana'),(98,134,'110004','Shergarh','779, MR, Mustafabad','Andhra Pradesh'),(99,135,'110018','Tughlakabad','571, M, Chilla Saroda Bangar','Orissa'),(101,136,'110020','Shergarh','211, T, Karawal Nagar','Uttar Pradesh'),(102,137,'110011','New Delhi','76, B, Burari','Dadra and Nagar Haveli'),(104,138,'110007','Tughlakabad','145, J, Bhalswa Jahangir Pur','Uttar Pradesh'),(105,139,'110020','Lal Kot','778, C, Kirari Suleman Nagar','Uttarakhand'),(106,140,'110004','Tughlakabad','219, XYW, Chilla Saroda Bangar','Haryana'),(107,141,'110016','Firozabad','730, P, Gharoli','Telangana'),(108,142,'110007','Lal Kot','646, X, Hastsal','Dadra and Nagar Haveli'),(110,143,'110014','Tughlakabad','939, XHY, Sultanpur Majra','Maharashtra'),(111,144,'110019','New Delhi','411, HF, Mustafabad','Telangana'),(112,145,'110005','Lal Kot','72, U, Puth Kalan','Lakshadweep'),(114,146,'110010','Firozabad','309, J, Deoli','Jharkhand'),(115,147,'110008','New Delhi','96, E, Taj Pul','Manipur'),(116,148,'110013','Lal Kot','137, OVH, Kirari Suleman Nagar','Assam'),(119,149,'110006','Siri','394, I, Bhalswa Jahangir Pur','Lakshadweep'),(120,150,'110018','Shergarh','540, Y, Karawal Nagar','Jammu and Kashmir'),(121,151,'110019','Firozabad','996, XLQ, Jaffrabad','Meghalaya'),(122,152,'110000','Mehrauli','693, VJ, Delhi Cantonment','Maharashtra'),(123,153,'110006','New Delhi','568, GFQ, Sultanpur Majra','Chandigarh'),(125,154,'110004','Firozabad','147, SMM, Hastsal','Telangana'),(129,155,'110003','Tughlakabad','534, VC, Karawal Nagar','Manipur'),(130,156,'110013','Tughlakabad','721, IC, Nangloi','Telangana'),(132,157,'110010','New Delhi','294, VO, Mustafabad','Chhattisgarh'),(133,158,'110019','Mehrauli','907, HI, New Delhi','Uttarakhand'),(134,159,'110010','Shahjehabanad','646, YTD, Sultanpur Majra','Chhattisgarh'),(135,160,'110014','Lal Kot','283, SDX, Jaffrabad','Jharkhand'),(136,161,'110020','Tughlakabad','915, AF, Karawal Nagar','Arunachal Pradesh'),(137,162,'110010','Shahjehabanad','796, V, Gokal Pur','Maharashtra'),(138,163,'110015','Shergarh','752, P, Kirari Suleman Nagar','Mizoram'),(139,164,'110016','Shahjehabanad','449, Z, Gokal Pur','Dadra and Nagar Haveli'),(141,165,'110015','Firozabad','687, MG, Taj Pul','Sikkim'),(143,166,'110000','Shahjehabanad','886, TY, Hastsal','Rajasthan'),(144,167,'110018','Firozabad','48, JXE, Mandoli','Meghalaya'),(146,168,'110013','Tughlakabad','544, BV, Taj Pul','Meghalaya'),(147,169,'110010','Shergarh','857, O, Jaffrabad','Daman and Diu'),(149,170,'110001','Siri','386, KZ, Bhalswa Jahangir Pur','Punjab'),(150,171,'110015','Shahjehabanad','696, X, Kirari Suleman Nagar','Andhra Pradesh'),(151,172,'110007','Shergarh','974, DL, Sultanpur Majra','Kerala'),(152,173,'110020','Mehrauli','468, V, Mustafabad','Dadra and Nagar Haveli'),(153,174,'110015','Mehrauli','879, BJ, Najafgarh','Tamil Nadu'),(154,175,'110019','Shahjehabanad','761, KSV, Kirari Suleman Nagar','Bihar'),(156,176,'110003','New Delhi','165, O, Burari','Kerala'),(157,177,'110014','New Delhi','829, HH, Hastsal','Tripura'),(158,178,'110002','New Delhi','465, S, Karawal Nagar','Arunachal Pradesh'),(159,179,'110010','Firozabad','119, MK, Deoli','Kerala'),(160,180,'110011','Siri','513, E, Gokal Pur','Delhi'),(161,181,'110011','Lal Kot','867, J, Bhalswa Jahangir Pur','Gujarat'),(163,182,'110001','Tughlakabad','349, KAK, Dallo Pura','Sikkim'),(172,183,'110017','New Delhi','320, A, Dallo Pura','Himachal Pradesh'),(175,184,'110015','Shergarh','589, M, Karawal Nagar','Pondicherry'),(178,185,'110001','Mehrauli','143, UK, Bhalswa Jahangir Pur','Mizoram'),(180,186,'110014','Shahjehabanad','487, MI, Chilla Saroda Bangar','West Bengal'),(182,187,'110012','Shahjehabanad','423, UX, Dallo Pura','Andaman and Nicobar'),(192,188,'110012','Siri','562, W, Karawal Nagar','Lakshadweep'),(199,189,'110000','Shergarh','597, OA, Delhi Cantonment','Delhi'),(888,190,'110002','Firozabad','569, WL, Najafgarh','Punjab'),(210,191,'110010','Mehrauli','691, IO, Karawal Nagar','Telangana'),(212,192,'110005','Mehrauli','984, HH, Delhi Cantonment','Mizoram'),(216,193,'110005','Siri','872, Y, Gharoli','Delhi'),(217,194,'110012','Siri','50, WS, Dallo Pura','Uttar Pradesh'),(221,195,'110000','Siri','909, P, New Delhi','Rajasthan'),(224,196,'110019','Shergarh','937, MRL, Gharoli','Andaman and Nicobar'),(228,197,'110019','Shahjehabanad','824, LRQ, Najafgarh','Goa'),(229,198,'110011','Firozabad','153, UOS, Delhi Cantonment','Gujarat'),(232,199,'110004','Siri','267, UJW, Kirari Suleman Nagar','Arunachal Pradesh'),(237,200,'110017','Shergarh','475, EA, Hastsal','Lakshadweep'),(245,201,'110016','Firozabad','171, A, Delhi Cantonment','Nagaland'),(246,202,'110012','Shahjehabanad','247, PSG, Kirari Suleman Nagar','Chhattisgarh'),(257,203,'110020','New Delhi','13, UJ, New Delhi','Tamil Nadu'),(263,204,'110017','Shahjehabanad','520, PQS, Najafgarh','Manipur'),(264,205,'110016','Firozabad','335, TVP, Puth Kalan','Orissa'),(270,206,'110006','Firozabad','964, OVM, Mandoli','Bihar'),(291,207,'110007','Mehrauli','644, GC, Chilla Saroda Bangar','Uttarakhand'),(342,208,'110011','New Delhi','876, W, Gharoli','Punjab'),(353,209,'110011','Siri','915, ADH, Mustafabad','Orissa'),(354,210,'110012','Shergarh','627, JBL, Bhalswa Jahangir Pur','Delhi'),(355,211,'110012','Shahjehabanad','763, TH, Kirari Suleman Nagar','Uttarakhand'),(356,212,'110001','Mehrauli','269, GJJ, Delhi Cantonment','Sikkim'),(357,213,'110011','New Delhi','250, XCQ, Mustafabad','Jammu and Kashmir'),(358,214,'110006','Shahjehabanad','500, FWG, Mandoli','Gujarat'),(359,215,'110000','Shahjehabanad','872, MYP, Chilla Saroda Bangar','Assam'),(360,216,'110017','New Delhi','257, SPM, Delhi Cantonment','Mizoram'),(361,217,'110004','Shahjehabanad','386, AA, Bhalswa Jahangir Pur','Goa'),(362,218,'110013','Mehrauli','309, WOX, Gokal Pur','Uttarakhand'),(363,219,'110012','Shahjehabanad','661, UD, Najafgarh','Assam'),(364,220,'110010','Tughlakabad','218, BK, Najafgarh','Sikkim'),(365,221,'110008','Shahjehabanad','272, IY, Karawal Nagar','Punjab'),(366,222,'110003','New Delhi','696, PAX, Puth Kalan','Chandigarh'),(367,223,'110001','Mehrauli','867, ME, Dallo Pura','Gujarat'),(368,224,'110014','Siri','454, SQH, Delhi Cantonment','Tripura'),(369,225,'110001','New Delhi','265, KA, Puth Kalan','Chandigarh'),(370,226,'110014','Shahjehabanad','241, HT, Najafgarh','Gujarat'),(371,227,'110000','Lal Kot','544, PXW, Hastsal','Punjab'),(372,228,'110014','Firozabad','983, YDX, Delhi Cantonment','Jammu and Kashmir'),(373,229,'110003','Shergarh','747, DLW, Mustafabad','Dadra and Nagar Haveli'),(374,230,'110010','New Delhi','907, GQL, Narela','Nagaland'),(375,231,'110007','Shergarh','401, IE, Sultanpur Majra','Goa'),(376,232,'110014','Firozabad','301, YN, Delhi Cantonment','Haryana'),(378,233,'110020','Lal Kot','839, V, New Delhi','Punjab'),(379,234,'110008','New Delhi','329, D, Karawal Nagar','Chhattisgarh'),(381,235,'110000','Siri','144, SIQ, Chilla Saroda Bangar','Meghalaya'),(382,236,'110018','Shahjehabanad','276, F, Dallo Pura','Tamil Nadu'),(383,237,'110011','Lal Kot','577, P, Deoli','Rajasthan'),(384,238,'110006','Firozabad','152, D, Mustafabad','Uttar Pradesh'),(385,239,'110015','Shahjehabanad','341, U, Sultanpur Majra','Pondicherry'),(386,240,'110001','Mehrauli','40, LW, Dallo Pura','Punjab'),(387,241,'110000','Lal Kot','235, LWK, Chilla Saroda Bangar','Tamil Nadu'),(388,242,'110017','Tughlakabad','840, G, Burari','Karnataka'),(389,243,'110020','Mehrauli','212, TK, Bhalswa Jahangir Pur','Mizoram'),(390,244,'110016','Shahjehabanad','165, EYZ, Deoli','Manipur'),(391,245,'110000','Lal Kot','448, JC, Hastsal','Nagaland'),(392,246,'110005','Shergarh','49, EO, Taj Pul','Meghalaya'),(393,247,'110017','Firozabad','468, L, Delhi Cantonment','Dadra and Nagar Haveli'),(394,248,'110005','Shergarh','847, UV, New Delhi','Kerala'),(395,249,'110017','Siri','178, F, Najafgarh','Manipur'),(396,250,'110000','Tughlakabad','724, BTM, Burari','Karnataka'),(398,251,'110006','Lal Kot','723, MQ, Dallo Pura','Assam'),(399,252,'110004','Shergarh','885, RL, Taj Pul','Pondicherry'),(400,253,'110019','Siri','570, JD, New Delhi','Daman and Diu'),(401,254,'110003','Mehrauli','191, ZFS, Hastsal','Tamil Nadu'),(402,255,'110015','Lal Kot','832, Z, Dallo Pura','Andhra Pradesh'),(403,256,'110001','New Delhi','720, SW, Narela','Arunachal Pradesh'),(404,257,'110004','Shergarh','591, IO, Nangloi','Manipur'),(405,258,'110014','New Delhi','133, QTE, Jaffrabad','Andhra Pradesh'),(406,259,'110004','Lal Kot','68, K, Karawal Nagar','Punjab'),(407,260,'110002','Mehrauli','374, OGG, Najafgarh','Dadra and Nagar Haveli'),(408,261,'110000','Mehrauli','850, NYB, Burari','Pondicherry'),(409,262,'110019','Lal Kot','302, BO, Karawal Nagar','Manipur'),(410,263,'110002','Mehrauli','887, RVJ, Bhalswa Jahangir Pur','Chandigarh'),(411,264,'110018','Mehrauli','558, TCN, Mandoli','Mizoram'),(412,265,'110002','Shergarh','185, ULU, Hastsal','Himachal Pradesh'),(414,266,'110000','Lal Kot','729, F, Narela','Maharashtra'),(415,267,'110014','Siri','637, VZB, Mustafabad','Kerala');
/*!40000 ALTER TABLE `deliveryaddress` ENABLE KEYS */;
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