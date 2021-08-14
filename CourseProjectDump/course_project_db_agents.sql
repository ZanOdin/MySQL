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
-- Table structure for table `agents`
--

DROP TABLE IF EXISTS `agents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agents` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(145) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(145) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` char(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `got_job` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone_idx` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agents`
--

LOCK TABLES `agents` WRITE;
/*!40000 ALTER TABLE `agents` DISABLE KEYS */;
INSERT INTO `agents` VALUES (1,'Wheeler','Bohman','7123344831','2019-09-18 00:00:00'),(2,'Lurette','Dairton','4934011218','2018-03-25 00:00:00'),(3,'Alma','Studholme','2978884354','2018-07-31 00:00:00'),(4,'Cthrine','Hardey','9203899382','2021-01-13 00:00:00'),(5,'Zelig','Degg','7466836802','2020-04-01 00:00:00'),(6,'Dalenna','Lesek','3263500348','2020-07-19 00:00:00'),(7,'Guendolen','Hulle','2287581595','2021-03-09 00:00:00'),(8,'Luisa','Eaken','2376419588','2018-12-06 00:00:00'),(9,'Sanson','Honisch','8802011423','2020-12-29 00:00:00'),(10,'Joanna','Mulkerrins','3398196440','2019-05-24 00:00:00'),(11,'Matilda','Skewes','6681477986','2018-03-02 00:00:00'),(12,'Anderea','Seers','4851723432','2019-08-11 00:00:00'),(13,'Devy','Schneidar','3813313830','2021-04-29 00:00:00'),(14,'Mischa','Debill','3602478464','2021-05-22 00:00:00'),(15,'Rhianon','Gillbee','9253450829','2021-05-21 00:00:00'),(16,'Lanae','Dawidsohn','3378351804','2021-01-24 00:00:00'),(17,'Lacey','Petrishchev','7305157221','2018-04-26 00:00:00'),(18,'Sophie','Mowsley','1133297382','2019-05-13 00:00:00'),(19,'Galina','Vasse','3553274117','2020-09-02 00:00:00'),(20,'Amara','Skyner','6867471556','2020-03-13 00:00:00'),(21,'Edouard','Barnson','7211996411','2020-01-16 00:00:00'),(22,'Bunny','Patsall','7498900431','2018-07-07 00:00:00'),(23,'Hinze','Capstack','5292164099','2019-09-30 00:00:00');
/*!40000 ALTER TABLE `agents` ENABLE KEYS */;
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
