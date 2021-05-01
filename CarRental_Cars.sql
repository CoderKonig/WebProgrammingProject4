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
-- Table structure for table `Cars`
--

DROP TABLE IF EXISTS `Cars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cars` (
  `car_id` int NOT NULL,
  `type_id` varchar(45) NOT NULL,
  `brand` varchar(45) NOT NULL,
  `model` varchar(45) NOT NULL,
  `year` int NOT NULL,
  `vin` varchar(45) NOT NULL,
  `plate_number` varchar(45) NOT NULL,
  `color` varchar(45) NOT NULL,
  PRIMARY KEY (`car_id`),
  UNIQUE KEY `car_id_UNIQUE` (`car_id`),
  UNIQUE KEY `vin_UNIQUE` (`vin`),
  UNIQUE KEY `plate_number_UNIQUE` (`plate_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cars`
--

LOCK TABLES `Cars` WRITE;
/*!40000 ALTER TABLE `Cars` DISABLE KEYS */;
INSERT INTO `Cars` VALUES (1,'1','BMW','330i',2018,'5GAKRAED8BJ149075','UWF2116','White'),(2,'1','Toyota','Camry',2020,'1D7HA18238S532411','PZD3298','White'),(3,'1','Honda','Accord',2017,'19XFA1F56BE012681','UBT2511','Black'),(4,'2','Jeep','Wrangler',2020,'1FDWE37S0WHB69915','JUN4216','Gray'),(5,'2','Toyota','RAV4',2018,'1FAFP34301W388119','JEK4295','Black'),(6,'1','Honda','Accord',2019,'YV4902DZ6B2204916','LNB8934','Silver'),(7,'5','Infiniti','Q60',2020,'1ZVFT84N965101293','SKJ9406','Silver'),(8,'5','Subaru','BRZ',2017,'JN8AZ08T63W129181','SPD7920','Black'),(9,'2','Jeep','Wrangler Sahara',2018,'1G1ZC5E04CF329198','SLL3425','Silver'),(10,'1','BMW','430i',2017,'4S3BK6753V7363267','STS4376','White'),(11,'10','Toyota','Tacoma',2016,'JM1GJ1W64E1163944','GUD3029','Black'),(12,'9','Tesla','X',2020,'2C4RDGBG1ER312789','YDI9287','White'),(13,'7','Volkswagen','GTI',2017,'JM1BL1UF0C1504728','HSI9102','Blue'),(14,'3','Toyota ','Supra MK4',2020,'3GCPCSE00DG311388','GOODDAY','Purple'),(15,'6','Porsche','Carrera',2019,'2C3CA6CTXBH517229','USI9180','Red'),(16,'3','Nissan','GTR R34',1999,'3IG4BA6KJNDS3GD8D3','SPEEDSTR','Blue');
/*!40000 ALTER TABLE `Cars` ENABLE KEYS */;
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
