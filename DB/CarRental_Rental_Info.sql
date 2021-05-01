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
-- Table structure for table `Rental_Info`
--

DROP TABLE IF EXISTS `Rental_Info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Rental_Info` (
  `rental_id` int NOT NULL,
  `type_id` int DEFAULT NULL,
  `Duration` int DEFAULT NULL,
  `insurance_id` int DEFAULT NULL,
  `location_id` varchar(45) DEFAULT NULL,
  `customer_id` int DEFAULT NULL,
  `car_id` int DEFAULT NULL,
  `payment_id` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`rental_id`),
  KEY `customer_id_idx` (`customer_id`),
  KEY `customer_number_idx` (`customer_id`),
  KEY `car_number_idx` (`car_id`),
  KEY `location_id` (`insurance_id`),
  KEY `payment_idx` (`payment_id`),
  CONSTRAINT `car_number` FOREIGN KEY (`car_id`) REFERENCES `Cars` (`car_id`),
  CONSTRAINT `customer_number` FOREIGN KEY (`customer_id`) REFERENCES `Customer` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `insurance_number` FOREIGN KEY (`insurance_id`) REFERENCES `Insurance` (`insurance_id`),
  CONSTRAINT `location_id` FOREIGN KEY (`insurance_id`) REFERENCES `Location` (`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Rental_Info`
--

LOCK TABLES `Rental_Info` WRITE;
/*!40000 ALTER TABLE `Rental_Info` DISABLE KEYS */;
INSERT INTO `Rental_Info` VALUES (1,1,3,1,'1',1,1,'1'),(2,5,14,2,'4',2,14,'2'),(3,6,4,3,'2',3,3,'3'),(4,3,6,4,'7',4,7,'4'),(5,5,8,5,'5',5,6,'5'),(6,8,16,6,'4',6,13,'6'),(7,5,8,7,'6',7,12,'7'),(8,8,6,8,'8',8,11,'8'),(9,5,4,9,'8',9,8,'9'),(10,7,2,10,'9',10,9,'10');
/*!40000 ALTER TABLE `Rental_Info` ENABLE KEYS */;
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
