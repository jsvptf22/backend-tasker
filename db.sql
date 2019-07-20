-- MySQL dump 10.13  Distrib 8.0.16, for Linux (x86_64)
--
-- Host: localhost    Database: tasker
-- ------------------------------------------------------
-- Server version	5.7.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tasks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `userId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
INSERT INTO `tasks` VALUES (10,'2019-06-11 05:59:13','2019-06-11 06:07:47','123','2',15),(11,'2019-06-11 06:00:04','2019-06-11 06:00:04','1','2',15);
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `api_token` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_api_token_unique` (`api_token`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Administrator','admin@test.com',NULL,'$2y$10$p92DPFhigTbNwOZX1YxsturpU7sPGkY12GJdM5HfGHu/.cA1fmy4q',NULL,'2019-05-01 19:28:21','2019-05-02 00:22:12','7dDTcyZ28YUy6dDHLTafDiLGLS6Cs5HIF9z67MQHOLJOcShtMSbHWbv381Jw'),(2,'Jonathon Roob DDS','yeffertz@fadel.info',NULL,'$2y$10$p92DPFhigTbNwOZX1YxsturpU7sPGkY12GJdM5HfGHu/.cA1fmy4q',NULL,'2019-05-01 19:28:21','2019-05-01 19:28:21',NULL),(3,'Kameron Treutel','cruickshank.laila@stroman.com',NULL,'$2y$10$p92DPFhigTbNwOZX1YxsturpU7sPGkY12GJdM5HfGHu/.cA1fmy4q',NULL,'2019-05-01 19:28:21','2019-05-01 19:28:21',NULL),(4,'Mrs. Joelle Carter','gibson.josiah@waelchi.info',NULL,'$2y$10$p92DPFhigTbNwOZX1YxsturpU7sPGkY12GJdM5HfGHu/.cA1fmy4q',NULL,'2019-05-01 19:28:21','2019-05-01 19:28:21',NULL),(5,'Miss Hilma OHara','pagac.freddy@gmail.com',NULL,'$2y$10$p92DPFhigTbNwOZX1YxsturpU7sPGkY12GJdM5HfGHu/.cA1fmy4q',NULL,'2019-05-01 19:28:21','2019-05-01 19:28:21',NULL),(6,'Kylie Cassin','esperanza.ernser@keeling.net',NULL,'$2y$10$p92DPFhigTbNwOZX1YxsturpU7sPGkY12GJdM5HfGHu/.cA1fmy4q',NULL,'2019-05-01 19:28:21','2019-05-01 19:28:21',NULL),(7,'Nestor Frami','tina66@hotmail.com',NULL,'$2y$10$p92DPFhigTbNwOZX1YxsturpU7sPGkY12GJdM5HfGHu/.cA1fmy4q',NULL,'2019-05-01 19:28:21','2019-05-01 19:28:21',NULL),(8,'Zion Ziemann','sylvester89@gerlach.com',NULL,'$2y$10$p92DPFhigTbNwOZX1YxsturpU7sPGkY12GJdM5HfGHu/.cA1fmy4q',NULL,'2019-05-01 19:28:21','2019-05-01 19:28:21',NULL),(9,'Kathlyn Denesik','kailyn.hickle@schmidt.biz',NULL,'$2y$10$p92DPFhigTbNwOZX1YxsturpU7sPGkY12GJdM5HfGHu/.cA1fmy4q',NULL,'2019-05-01 19:28:21','2019-05-01 19:28:21',NULL),(10,'Cody Kuphal DDS','leon26@quigley.com',NULL,'$2y$10$p92DPFhigTbNwOZX1YxsturpU7sPGkY12GJdM5HfGHu/.cA1fmy4q',NULL,'2019-05-01 19:28:21','2019-05-01 19:28:21',NULL),(11,'Dr. Merl Hintz','gail82@hotmail.com',NULL,'$2y$10$p92DPFhigTbNwOZX1YxsturpU7sPGkY12GJdM5HfGHu/.cA1fmy4q',NULL,'2019-05-01 19:28:21','2019-05-01 19:28:21',NULL),(12,'John','john.doe@toptal.com',NULL,'$2y$10$98IvPCyw2.yIdQTAwNyZA.gU1BbSlZCNmeVlWtqyTBo1I0DV.YCdu',NULL,'2019-05-01 23:01:37','2019-05-01 23:01:38','JXLSDpaFf2nrHf4d8ddw0i4WO3cLhZtEVHEy2oGRYKnyTOzXMMkJxawMCtWd'),(13,'John','john.doe@test.com',NULL,'$2y$10$R4hTVJgbJ1ilSIFcFTG9QeLPT5XIeVHfgnWWG/gb5KKX5u9mPmuzC',NULL,'2019-05-01 23:03:32','2019-05-01 23:03:32','JOTjFyhSAcILZXypcRVwL70RDRtaSYY5P89Ysr2fC0kIONblJLUYRn2zMJ7T'),(14,'John','jsv@toptal.com',NULL,'$2y$10$H88kcJ0r8qyH6bi0yLkVp.QDhNCGKVSuOfvXcl.xQNH/bwhxojICy',NULL,'2019-05-02 00:21:24','2019-05-02 00:21:24','FckudpH19ovZqt0gllBvcE8KrzFqTJNn4DuncEq6vcvT0UKAxzD13soUli1r'),(15,'jhon','sebasjsv97@gmail.com',NULL,'$2y$10$8eAuV.WDbMrmwcEoTWP7AOSukiOdbd60Qti.6hVdUbbVT484BmJOy',NULL,'2019-06-08 22:19:44','2019-06-11 05:41:30','QVAs1ybjXQu4CFFQ7zUSokna4lcZ5Y940etxlPhFbb4v1rhRyQcVePg8HYak');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-20 11:55:12
