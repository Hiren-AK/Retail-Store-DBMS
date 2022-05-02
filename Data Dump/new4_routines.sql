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
-- Temporary view structure for view `storecities`
--

DROP TABLE IF EXISTS `storecities`;
/*!50001 DROP VIEW IF EXISTS `storecities`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `storecities` AS SELECT 
 1 AS `Pincode`,
 1 AS `City`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `customerconcentration`
--

DROP TABLE IF EXISTS `customerconcentration`;
/*!50001 DROP VIEW IF EXISTS `customerconcentration`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `customerconcentration` AS SELECT 
 1 AS `Pincode`,
 1 AS `City`,
 1 AS `Customers`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `retailstores`
--

DROP TABLE IF EXISTS `retailstores`;
/*!50001 DROP VIEW IF EXISTS `retailstores`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `retailstores` AS SELECT 
 1 AS `StoreID`,
 1 AS `Email`,
 1 AS `PhoneNumber`,
 1 AS `City`,
 1 AS `AddressLine1`,
 1 AS `AddressLine2`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `supplyinfo`
--

DROP TABLE IF EXISTS `supplyinfo`;
/*!50001 DROP VIEW IF EXISTS `supplyinfo`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `supplyinfo` AS SELECT 
 1 AS `SupplierID`,
 1 AS `SupplierName`,
 1 AS `ProductID`,
 1 AS `CostPerUnit`,
 1 AS `PhoneNumber`,
 1 AS `Email`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `storecities`
--

/*!50001 DROP VIEW IF EXISTS `storecities`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `storecities` AS select `storeaddress`.`Pincode` AS `Pincode`,`storeaddress`.`City` AS `City` from `storeaddress` order by `storeaddress`.`City` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `customerconcentration`
--

/*!50001 DROP VIEW IF EXISTS `customerconcentration`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `customerconcentration` AS select `deliveryaddress`.`Pincode` AS `Pincode`,`deliveryaddress`.`City` AS `City`,count(`deliveryaddress`.`CustomerID`) AS `Customers` from `deliveryaddress` group by `deliveryaddress`.`Pincode` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `retailstores`
--

/*!50001 DROP VIEW IF EXISTS `retailstores`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `retailstores` AS select `s`.`StoreID` AS `StoreID`,`s`.`Email` AS `Email`,`s`.`PhoneNum` AS `PhoneNumber`,`a`.`City` AS `City`,`a`.`AddressLine1` AS `AddressLine1`,`a`.`AddressLine2` AS `AddressLine2` from (`store` `s` join `storeaddress` `a`) where (`s`.`StoreID` = `a`.`StoreID`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `supplyinfo`
--

/*!50001 DROP VIEW IF EXISTS `supplyinfo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `supplyinfo` AS select `s`.`SupplierID` AS `SupplierID`,`s`.`SupplierName` AS `SupplierName`,`p`.`ProductID` AS `ProductID`,`p`.`CostPU` AS `CostPerUnit`,`s`.`PhoneNum` AS `PhoneNumber`,`s`.`Email` AS `Email` from (`supplies` `p` join `supplier` `s`) where (`s`.`SupplierID` = `p`.`SupplierID`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Dumping events for database 'new4'
--

--
-- Dumping routines for database 'new4'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-30  6:31:10
