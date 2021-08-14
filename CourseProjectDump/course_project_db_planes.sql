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
-- Table structure for table `planes`
--

DROP TABLE IF EXISTS `planes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `planes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` date NOT NULL,
  `technical_maintenance` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `airline_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_planes_airlines` (`airline_name`),
  CONSTRAINT `fk_planes_airlines` FOREIGN KEY (`airline_name`) REFERENCES `airlines` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planes`
--

LOCK TABLES `planes` WRITE;
/*!40000 ALTER TABLE `planes` DISABLE KEYS */;
INSERT INTO `planes` VALUES (1,'Аэробус Airbus A310','2018-07-30','2021-03-07 00:00:00','Siberia Airlines'),(2,'Airbus A319 Extra Edition','2016-07-06','2018-07-29 00:00:00','Siberia Airlines'),(3,'Аэробус Airbus A310','2018-04-29','2020-06-27 00:00:00','Уральские Авиалинии'),(4,'Аэробус Airbus A320','2018-10-02','2019-10-27 00:00:00','Уральские Авиалинии'),(5,'Airbus A319 Extra Edition','2015-02-17','2019-02-22 00:00:00','Уральские Авиалинии'),(6,'Иркут МС-21','2021-07-09','2019-02-22 00:00:00','Siberia Airlines'),(7,'Boeing 737-8','2019-08-04','2020-11-11 00:00:00','Siberia Airlines'),(8,'Иркут МС-21','2017-06-19','2018-12-18 00:00:00','Уральские Авиалинии'),(9,'Boeing 777','2012-05-03','2021-02-06 00:00:00','Уральские Авиалинии'),(10,'Airbus A321','2017-11-12','2021-05-26 00:00:00','Turkish Airlines'),(11,'Airbus A321','2015-07-18','2021-07-12 00:00:00','Аэрофлот'),(12,'Airbus A319 Extra Edition','2020-06-11','2021-03-21 00:00:00','Jin Air'),(13,'Boeing 777','2012-08-26','2021-04-04 00:00:00','Korean Air'),(14,'Embraer ERJ','2015-12-23','2020-01-18 00:00:00','Turkish Airlines'),(15,'Airbus A330','2017-11-20','2020-06-28 00:00:00','Transaero'),(16,'Embraer 170/190','2018-07-29','2020-02-08 00:00:00','Air Astana'),(17,'Boeing 777','2017-05-31','2021-08-08 00:00:00','Asiana Airlines'),(18,'Embraer 170/190','2017-03-01','2019-09-26 00:00:00','Uzbekiston Havo Yullari'),(19,'Boeing 737-800','2016-08-19','2021-05-15 00:00:00','China Southern Airlines'),(20,'Boeing 777','2015-02-01','2020-02-14 00:00:00','Cathay Pacific'),(21,'Airbus A319 Extra Edition','2020-03-27','2020-09-01 00:00:00','Turkish Airlines'),(22,'Boeing 777','2019-04-06','2020-12-19 00:00:00','Air Baltic'),(23,'Airbus A321','2015-09-29','2021-06-19 00:00:00','Lufthanza'),(24,'Airbus A319 Extra Edition','2019-07-20','2021-10-10 00:00:00','Ukrain Intl Airlines'),(25,'Airbus A330','2015-02-02','2020-11-16 00:00:00','Аэрофлот'),(26,'Airbus A319 Extra Edition','2013-03-30','2021-02-24 00:00:00','Lufthanza'),(27,'Embraer 170/190','2014-11-02','2021-03-05 00:00:00','Transaero'),(28,'Embraer ERJ','2015-01-18','2021-06-15 00:00:00','Lufthanza'),(29,'Airbus A321','2017-07-07','2021-03-21 00:00:00','Turkish Airlines'),(30,'Comac C919','2015-02-04','2020-08-15 00:00:00','Air Astana'),(31,'Airbus A330','2019-12-13','2021-01-30 00:00:00','Lufthanza'),(32,'Comac C919','2014-03-26','2021-02-09 00:00:00','Asiana Airlines'),(33,'Airbus A321','2015-07-26','2021-04-19 00:00:00','Uzbekiston Havo Yullari'),(34,'Embraer ERJ','2015-11-26','2021-04-13 00:00:00','Lufthanza'),(35,'Boeing 777','2020-12-24','2021-03-23 00:00:00','Turkish Airlines'),(36,'Иркут МС-21','2019-10-23','2021-03-01 00:00:00','China Southern Airlines'),(37,'Bombardier Dash 8','2018-05-11','2020-05-08 00:00:00','Аэрофлот'),(38,'Airbus A330','2019-02-22','2021-05-28 00:00:00','Jin Air'),(39,'Bombardier Dash 8','2021-07-26','2020-07-17 00:00:00','Transaero'),(40,'Embraer ERJ','2017-07-14','2020-10-17 00:00:00','Lufthanza'),(41,'Boeing 777','2016-01-31','2020-11-09 00:00:00','Uzbekiston Havo Yullari'),(42,'CRAIC CR929','2018-12-29','2020-11-20 00:00:00','Cathay Pacific'),(43,'Embraer 170/190','2016-05-09','2021-02-26 00:00:00','Air Astana'),(44,'Airbus A330','2020-09-25','2020-11-01 00:00:00','Lufthanza'),(45,'Иркут МС-21','2019-02-12','2021-03-06 00:00:00','Ukrain Intl Airlines'),(46,'CRAIC CR929','2017-06-26','2021-08-05 00:00:00','Turkish Airlines'),(47,'Bombardier Dash 8','2017-05-23','2021-03-02 00:00:00','Asiana Airlines'),(48,'Boeing 777','2020-11-07','2020-11-15 00:00:00','China Southern Airlines'),(49,'Embraer 170/190','2021-03-25','2021-05-19 00:00:00','Air Baltic'),(50,'Mitsubishi MRJ','2017-03-07','2021-04-29 00:00:00','Transaero'),(51,'Bombardier Dash 8','2018-07-12','2020-11-25 00:00:00','Ukrain Intl Airlines'),(52,'Airbus A321','2019-03-20','2021-03-27 00:00:00','Lufthanza'),(53,'Bombardier Dash 8','2020-07-31','2021-03-28 00:00:00','Аэрофлот'),(54,'Boeing 777','2020-08-23','2021-07-31 00:00:00','Ukrain Intl Airlines'),(55,'Boeing 737-8','2018-06-14','2020-10-15 00:00:00','Korean Air'),(56,'Mitsubishi MRJ','2018-11-07','2021-07-13 00:00:00','Uzbekiston Havo Yullari'),(57,'Boeing 777','2019-05-11','2020-09-28 00:00:00','Air Astana'),(58,'Embraer ERJ','2020-06-20','2020-09-03 00:00:00','Turkish Airlines'),(59,'Embraer ERJ','2014-12-06','2021-03-07 00:00:00','Asiana Airlines'),(60,'Airbus A330','2018-07-21','2020-09-04 00:00:00','China Southern Airlines'),(61,'Boeing 737-8','2017-11-19','2021-06-18 00:00:00','Cathay Pacific'),(62,'Embraer 170/190','2018-03-19','2020-10-27 00:00:00','Transaero'),(63,'Bombardier Dash 8','2017-11-08','2021-01-15 00:00:00','Lufthanza'),(64,'Embraer ERJ','2021-02-23','2021-07-20 00:00:00','Jin Air'),(65,'CRAIC CR929','2016-02-06','2021-01-20 00:00:00','Air Baltic'),(66,'CRAIC CR929','2019-11-07','2021-01-01 00:00:00','Аэрофлот'),(67,'Airbus A330','2018-08-23','2021-09-29 00:00:00','Air Astana'),(68,'Boeing 777','2018-04-05','2020-10-19 00:00:00','Lufthanza'),(69,'Embraer ERJ','2020-04-28','2021-02-15 00:00:00','Uzbekiston Havo Yullari'),(70,'Mitsubishi MRJ','2018-04-17','2021-06-13 00:00:00','Turkish Airlines'),(71,'Embraer ERJ','2020-03-02','2021-03-10 00:00:00','Transaero'),(72,'Boeing 777','2018-11-12','2021-02-28 00:00:00','Asiana Airlines'),(73,'Comac C919','2020-05-28','2021-02-25 00:00:00','Cathay Pacific'),(74,'CRAIC CR929','2018-09-25','2021-03-12 00:00:00','China Southern Airlines'),(75,'Boeing 777','2019-12-04','2021-06-04 00:00:00','Ukrain Intl Airlines'),(76,'Comac C919','2020-12-23','2021-06-14 00:00:00','Lufthanza'),(77,'Airbus A330','2018-02-10','2021-07-18 00:00:00','Lufthanza'),(78,'Embraer ERJ','2017-06-09','2021-06-26 00:00:00','Korean Air'),(79,'CRAIC CR929','2017-07-04','2021-01-12 00:00:00','Air Astana'),(80,'Boeing 777','2017-01-30','2021-07-24 00:00:00','Аэрофлот'),(81,'Comac C919','2018-08-11','2021-04-02 00:00:00','Turkish Airlines'),(82,'Comac C919','2018-05-17','2021-05-22 00:00:00','Air Baltic'),(83,'Embraer ERJ','2018-02-24','2021-04-10 00:00:00','Uzbekiston Havo Yullari'),(84,'Embraer 170/190','2019-04-03','2021-06-24 00:00:00','Transaero'),(85,'Boeing 777','2017-10-15','2021-03-15 00:00:00','Asiana Airlines'),(86,'Airbus A321','2017-10-14','2021-08-21 00:00:00','China Southern Airlines'),(87,'Boeing 777','2019-04-03','2021-03-19 00:00:00','Jin Air'),(88,'Embraer 170/190','2018-01-23','2021-06-19 00:00:00','Cathay Pacific'),(89,'Comac C919 ','2017-12-20','2021-02-25 00:00:00','Lufthanza'),(90,'Airbus A330','2010-11-02','2021-04-29 00:00:00','Turkish Airlines'),(91,'Comac C919','2014-07-16','2021-06-25 00:00:00','Air Astana'),(92,'Embraer 170/190','2017-09-10','2020-12-15 00:00:00','Аэрофлот'),(93,'Airbus A330','2019-01-25','2020-12-30 00:00:00','Lufthanza'),(94,'Airbus A321','2019-01-03','2021-07-26 00:00:00','Air Baltic'),(95,'Иркут МС-21','2019-10-29','2021-05-20 00:00:00','Ukrain Intl Airlines'),(96,'CRAIC CR929','2019-01-15','2021-02-01 00:00:00','Turkish Airlines'),(97,'Airbus A330','2017-05-12','2021-01-28 00:00:00','China Southern Airlines'),(98,'Иркут МС-21','2017-06-26','2021-01-06 00:00:00','Transaero'),(99,'Boeing 737-8','2019-01-20','2021-06-13 00:00:00','Korean Air'),(100,'Embraer 170/190','2019-01-26','2021-04-07 00:00:00','Uzbekiston Havo Yullari'),(101,'Boeing 737-8','2020-01-08','2020-12-16 00:00:00','Air Astana'),(102,'Airbus A330','2018-03-09','2021-04-14 00:00:00','Jin Air'),(103,'Иркут МС-21','2019-04-29','2021-02-16 00:00:00','Аэрофлот'),(104,'Airbus A321','2016-01-07','2020-09-23 00:00:00','Turkish Airlines'),(105,'Boeing 737-8','2016-02-14','2020-11-18 00:00:00','Asiana Airlines'),(106,'Airbus A319 Extra Edition','2012-06-12','2021-06-25 00:00:00','Air Baltic'),(107,'Boeing 737-8','2015-08-17','2020-09-20 00:00:00','Cathay Pacific'),(108,'Boeing 737-800','2017-05-29','2021-05-01 00:00:00','Transaero'),(109,'Airbus A319 Extra Edition','2015-02-12','2021-01-05 00:00:00','Air Astana'),(110,'Airbus A321','2014-01-15','2021-06-27 00:00:00','Lufthanza'),(111,'Иркут МС-21','2017-06-25','2021-07-02 00:00:00','Air Baltic'),(112,'Boeing 777','2019-05-30','2021-01-03 00:00:00','Uzbekiston Havo Yullari'),(113,'Embraer 170/190','2016-05-11','2020-11-22 00:00:00','Аэрофлот'),(114,'Airbus A319 Extra Edition','2018-03-23','2021-01-11 00:00:00','Ukrain Intl Airlines'),(115,'Boeing 737-800','2020-01-19','2021-03-22 00:00:00','China Southern Airlines'),(116,'Airbus A321','2019-12-08','2021-06-07 00:00:00','Air Astana'),(117,'Embraer 170/190','2018-11-09','2020-12-27 00:00:00','Turkish Airlines'),(118,'Boeing 737-800','2017-11-28','2021-07-28 00:00:00','Asiana Airlines'),(119,'Airbus A321','2019-07-22','2021-04-06 00:00:00','Cathay Pacific'),(120,'Airbus A330','2018-08-02','2021-06-14 00:00:00','Transaero');
/*!40000 ALTER TABLE `planes` ENABLE KEYS */;
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
