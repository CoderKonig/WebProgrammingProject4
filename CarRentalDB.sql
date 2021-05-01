CREATE DATABASE  IF NOT EXISTS `CarRental` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `CarRental`;
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
-- Table structure for table `Car_Type`
--

DROP TABLE IF EXISTS `Car_Type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Car_Type` (
  `type_id` int NOT NULL,
  `type` varchar(45) NOT NULL,
  `description` varchar(45) NOT NULL,
  PRIMARY KEY (`type_id`),
  UNIQUE KEY `Type_id_UNIQUE` (`type_id`),
  UNIQUE KEY `type_UNIQUE` (`type`),
  UNIQUE KEY `description_UNIQUE` (`description`),
  CONSTRAINT `type_id` FOREIGN KEY (`type_id`) REFERENCES `Cars` (`car_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Car_Type`
--

LOCK TABLES `Car_Type` WRITE;
/*!40000 ALTER TABLE `Car_Type` DISABLE KEYS */;
INSERT INTO `Car_Type` VALUES (1,'Sedan','Four Doors'),(2,'SUV','Crossover from sedan and minivan'),(3,'Sports','Sports Car'),(4,'Compact','Smaller and shorter sedan or coupe'),(5,'Coupe','Two-door car with a trunk'),(6,'Convertible','Detachable roof'),(7,'Hatchback','Trunk that comes straight down.'),(8,'Minivan','Family Oriented Cars'),(9,'Electric','Full Electric motor'),(10,'Truck','Cargo Bed');
/*!40000 ALTER TABLE `Car_Type` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `Insurance`
--

DROP TABLE IF EXISTS `Insurance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Insurance` (
  `insurance_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `insurance_number` varchar(45) NOT NULL,
  `company` varchar(45) NOT NULL,
  `insurance_phone` varchar(45) NOT NULL,
  PRIMARY KEY (`insurance_id`),
  UNIQUE KEY `insurance_id_UNIQUE` (`insurance_id`),
  UNIQUE KEY `insurance_name_UNIQUE` (`insurance_number`),
  KEY `customer_id_idx` (`customer_id`),
  CONSTRAINT `customer_id` FOREIGN KEY (`customer_id`) REFERENCES `Customer` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Insurance`
--

LOCK TABLES `Insurance` WRITE;
/*!40000 ALTER TABLE `Insurance` DISABLE KEYS */;
INSERT INTO `Insurance` VALUES (1,1,'728039172','Progressive','(800) 776-4737 '),(2,2,'281902918','State Farm','(800) 782-8332'),(3,3,'263709183','State Farm','(800) 782-8332'),(4,4,'271820392','Farmers Insurance','(888) 327-6335'),(5,5,'534782678','Progressive','(800) 776-4737 '),(6,6,'142876t023','All State','(877) 366-1607'),(7,7,'182374972','Nationwide','(877) 669-6877'),(8,8,'229387924','All State','(877) 366-1607'),(9,9,'243798657','State Farm','(800) 782-8332'),(10,10,'728194028','Progressive','(800) 776-4737 ');
/*!40000 ALTER TABLE `Insurance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Location`
--

DROP TABLE IF EXISTS `Location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Location` (
  `location_id` int NOT NULL,
  `address` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`location_id`),
  UNIQUE KEY `Location_id_UNIQUE` (`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Location`
--

LOCK TABLES `Location` WRITE;
/*!40000 ALTER TABLE `Location` DISABLE KEYS */;
INSERT INTO `Location` VALUES (1,'2550 Akers Mill Rd SE','Atlanta','GA','USA'),(2,'966 Lexington Ave','New York City','NY','USA'),(3,'530 Ocean Dr #307','Miami','FL','USA'),(4,'8829 S 51st St\n','Phoenix','AZ','USA'),(5,'8500 Beverly 6692 Blvd','Los Angeles','CA','USA'),(6,'7827 N Paw Paw Pike','Denver','CO','USA'),(7,'1115 Schilling Ave\n','Chicago','IL','USA'),(8,'93 Newton St','Norwalk','CT','USA'),(9,'98-021 Kamehameha Hwy\n','Oahu','HI','USA'),(10,'9668 Rainier Ave S\n','Seattle','WA','USA');
/*!40000 ALTER TABLE `Location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Payment`
--

DROP TABLE IF EXISTS `Payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Payment` (
  `payment_id` int NOT NULL,
  `rental_id` int NOT NULL,
  `Amount` int DEFAULT NULL,
  `payment_type` varchar(45) DEFAULT NULL,
  `duration` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`payment_id`),
  UNIQUE KEY `Payment_id_UNIQUE` (`payment_id`),
  UNIQUE KEY `rental_id_UNIQUE` (`rental_id`),
  CONSTRAINT `rental_id` FOREIGN KEY (`rental_id`) REFERENCES `Rental_Info` (`rental_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Payment`
--

LOCK TABLES `Payment` WRITE;
/*!40000 ALTER TABLE `Payment` DISABLE KEYS */;
INSERT INTO `Payment` VALUES (1,1,150,'American Express','3 days'),(2,2,700,'MasterCard','14 Days'),(3,3,200,'American Express','4 Days'),(4,4,300,'Debit','6 Days'),(5,5,400,'Bank of America','8 Days'),(6,6,800,'Visa','16 Days'),(7,7,400,'MasterCard','8 Days'),(8,8,300,'Visa','6 Days'),(9,9,200,'Wells Fargo','4 Days'),(10,10,100,'American Express','2 Days');
/*!40000 ALTER TABLE `Payment` ENABLE KEYS */;
UNLOCK TABLES;

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

-- Dump completed on 2021-05-01 17:30:08
