-- MySQL dump 10.13  Distrib 8.0.22, for macos10.15 (x86_64)
--
-- Host: localhost    Database: CarRental
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `Customer`
--

DROP TABLE IF EXISTS `Customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Customer` (
  `customer_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `SSN` varchar(45) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `license_number` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `zip` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `customer_id_UNIQUE` (`customer_id`),
  UNIQUE KEY `SSN_UNIQUE` (`SSN`),
  UNIQUE KEY `license_number_UNIQUE` (`license_number`),
  UNIQUE KEY `address_UNIQUE` (`address`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customer`
--

LOCK TABLES `Customer` WRITE;
/*!40000 ALTER TABLE `Customer` DISABLE KEYS */;
INSERT INTO `Customer` VALUES (1,'Ottilie','Mosley','589-77-9238 ','carmena@live.com\n','H56970653','4456 Nikolaus Village','Lennytown','78268','USA'),(2,'Reid','Nava','508-74-7096 ','rjones@mac.com\n','V3082538087290','480 Lyla Throughway Apt. 629,','Abigailmouth','94173','USA'),(3,'Firat','Cordova','006-76-5987\n','notaprguy@outlook.com\n','862-12-6067','7494 Boyer Locks Suite 174,','Faheyborough','18022','USA'),(4,'Huda','Hood','511-27-4987\n','cameron@comcast.net\n','47484462','533 Carroll Union Suite 991','Briannefort','81793','USA'),(5,'Asfana','Bush','126-86-3095\n','sabren@msn.com\n','URARZCZ92285','81292 Hamill Estate','Malikafort','70038','USA'),(6,'Gabija','Forester','298-74-3210\n','esokullu@comcast.net\n','S02360229','538 Elyssa Plain','North Madaline,','26559','USA'),(7,'Arooj','Blankenship','426-33-7898\n','ahuillet@gmail.com\n','029732218','84503 Swaniawski Prairie Apt. 491','O\'Haraview,','17226','USA'),(8,'Saeid','Montavallei','505-54-9777\n','stakasa@me.com\n','347906919','93128 Stracke Roads,','Candidatown','34794','USA'),(9,'Liliana','Fleming','575-38-9121\n','fwitness@msn.com\n','7058068','3103 Stark Land','West Libbiemouth,','95208','USA'),(10,'Everet','Sanderson','672-26-9416\n','mthurn@live.com\n','006785547','933 Ferry Station','Murazikside','08007','USA');
/*!40000 ALTER TABLE `Customer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-01 16:46:35
