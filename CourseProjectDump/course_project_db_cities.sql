-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: course_project_db
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `airports_count` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_idx` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,'Kabul',1),(2,'Tirana',2),(3,'Algiers',1),(4,'Atlanta',2),(5,'Andorra la Vella',1),(6,'Luanda',2),(7,'Buenos Aires',15),(8,'Yerevan',3),(9,'Canberra',3),(10,'Vienna',7),(11,'Baku',5),(12,'Nassau',5),(13,'Manama',1),(14,'Dhaka',2),(15,'Bridgetown',1),(16,'Minsk',6),(17,'Brussels',8),(18,'Belmopan',1),(19,'Thimphu',1),(20,'La Paz',8),(21,'Sarajevo',1),(22,'Gaborone',2),(23,'Brasilia',25),(24,'Sofia',2),(25,'Ouagadougou',1),(26,'Gitega',1),(27,'Phnom Penh',1),(28,'Yaounde',2),(29,'Ottawa',23),(30,'Praia',6),(31,'Bangui',1),(32,'NDjamena',1),(33,'Santiago',51),(34,'Beijing',6),(35,'Bogota',17),(36,'Moroni',2),(37,'Kinshasa',1),(38,'Brazzaville',1),(39,'San Jose',27),(40,'Yamoussoukro',1),(41,'Zagreb',2),(42,'Havana',4),(43,'Nicosia',2),(44,'Prague',4),(45,'Copenhagen',3),(46,'Roseau',1),(47,'Dili',3),(48,'Quito',10),(49,'Cairo',4),(50,'London',12),(51,'Malabo',1),(52,'Asmara',1),(53,'Tallinn',2),(54,'Helsinki',4),(55,'Paris',10),(56,'Libreville',1),(57,'Banjul',1),(58,'Tbilisi',4),(59,'Berlin',8),(60,'Accra',1),(61,'Athens',2),(62,'Saint Georges',1),(63,'Guatemala City',1),(64,'Conakry',1),(65,'Bissau',1),(66,'Georgetown',1),(67,'Tegucigalpa',2),(68,'Budapest',3),(69,'Reykjavik',2),(70,'New Delhi',1),(71,'Jakarta',4),(72,'Tehran',2),(73,'Baghdad',1),(74,'Dublin',1),(75,'Rome',2),(76,'Kingston',2),(77,'Tokyo',8),(78,'Bishkek',4),(79,'Riga',3),(80,'Beirut',1),(81,'Monrovia',2),(82,'Tripoli',2),(83,'Vilnius',1),(84,'Luxembourg',1),(85,'Antananarivo',1),(86,'Male',1),(87,'Mexico City',2),(88,'Amsterdam',4),(89,'Belfast',3),(90,'Oslo',7),(91,'Wellington',5),(92,'Panama City',1),(93,'Bucharest',2),(94,'Moscow',4),(95,'Kigali',1),(96,'Edinburgh',1),(97,'Belgrade',2),(98,'Singapore',3),(99,'Seoul',16),(100,'Madrid',7),(101,'Stockholm',7),(102,'Switzerland',2),(103,'Kiev',4),(104,'Abu Dhabi',6),(105,'Washington DC',4),(106,'Tashkent',3),(107,'Caracas',7),(108,'Hanoi',3),(109,'Montevideo',2),(110,'Dubai',4),(111,'Los Angeles',3),(112,'Istanbul',2),(113,'Indira',1),(114,'Toronto',3),(115,'Manila',3),(116,'Vancouver',3),(117,'Delhi',2);
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-14 19:05:36
