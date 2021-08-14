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
-- Temporary view structure for view `clients_orders_view`
--

DROP TABLE IF EXISTS `clients_orders_view`;
/*!50001 DROP VIEW IF EXISTS `clients_orders_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `clients_orders_view` AS SELECT 
 1 AS `client_id`,
 1 AS `Имя клиента`,
 1 AS `Количество заказов`,
 1 AS `Итого на сумму`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `planes_popular_view`
--

DROP TABLE IF EXISTS `planes_popular_view`;
/*!50001 DROP VIEW IF EXISTS `planes_popular_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `planes_popular_view` AS SELECT 
 1 AS `id`,
 1 AS `Название самолета`,
 1 AS `Количество рейсов`,
 1 AS `Авиакомпания`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `clients_orders_view`
--

/*!50001 DROP VIEW IF EXISTS `clients_orders_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `clients_orders_view` AS select `orders`.`client_id` AS `client_id`,(select concat(`clients`.`first_name`,' ',`clients`.`last_name`) from `clients` where (`clients`.`id` = `orders`.`client_id`)) AS `Имя клиента`,count(`orders`.`client_id`) AS `Количество заказов`,sum(`tickets`.`price`) AS `Итого на сумму` from (`orders` join `tickets` on((`tickets`.`id` = `orders`.`ticket_id`))) group by `orders`.`client_id` order by `Итого на сумму` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `planes_popular_view`
--

/*!50001 DROP VIEW IF EXISTS `planes_popular_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `planes_popular_view` AS select `flights`.`plane_id` AS `id`,(select `planes`.`name` from `planes` where (`planes`.`id` = `flights`.`plane_id`)) AS `Название самолета`,count(`flights`.`plane_id`) AS `Количество рейсов`,(select `planes`.`airline_name` from `planes` where (`planes`.`id` = `flights`.`plane_id`)) AS `Авиакомпания` from `flights` group by `flights`.`plane_id` order by `Количество рейсов` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-14 19:05:37
