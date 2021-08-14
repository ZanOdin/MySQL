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
-- Table structure for table `airports`
--

DROP TABLE IF EXISTS `airports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `airports` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `terminal_count` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_idx` (`name`),
  KEY `fk_airports_cities` (`city`),
  CONSTRAINT `fk_airports_cities` FOREIGN KEY (`city`) REFERENCES `cities` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `airports`
--

LOCK TABLES `airports` WRITE;
/*!40000 ALTER TABLE `airports` DISABLE KEYS */;
INSERT INTO `airports` VALUES (1,'Hartsfield–Jackson Atlanta International','Atlanta',2),(2,'Beijing Capital International Airport','Beijing',3),(3,'Dubai International Airport','Dubai',3),(4,'Los Angeles International Airport','Los Angeles',1),(5,'Heathrow Airport','London',5),(6,'Haneda Airport','Tokyo',2),(7,'Charles de Gaulle International Airport','Paris',3),(8,'Amsterdam Airport','Amsterdam',1),(9,'Istanbul Airport','Istanbul',2),(10,'Indira Gandhi International Airport','Delhi',3),(11,'Soekarno-Hatta International Airport','Jakarta',1),(12,'Singapore Changi Airport','Singapore',1),(13,'Incheon International Airport','Seoul',2),(14,'Adolfo Suárez Madrid–Barajas Airport','Madrid',5),(15,'Toronto Pearson International Airport','Toronto',2),(16,'Mexico City International Airport','Mexico City',1),(17,'Ninoy Aquino International Airport','Manila',2),(18,'Leonardo da Vinci–Fiumicino Airport Airport','Rome',5),(19,'Narita International Airport','Tokyo',4),(20,'Sheremetyevo International Airport','Moscow',6),(21,'El Dorado International Airport','Bogota',1),(22,'Moscow Domodedovo Airport','Moscow',4),(23,'Dublin Airport','Dublin',1),(24,'Oslo Airport','Oslo',1),(25,'Brussels Airport','Brussels',1),(26,'Vienna International Airport','Vienna',1),(27,'Vancouver International Airport','Vancouver',1),(28,'Tashkent International Airport','Tashkent',3);
/*!40000 ALTER TABLE `airports` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-14 19:05:37
