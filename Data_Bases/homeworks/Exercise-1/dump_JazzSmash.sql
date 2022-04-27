CREATE DATABASE  IF NOT EXISTS `jazzsmash` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `jazzsmash`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: jazzsmash
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `attempts`
--

DROP TABLE IF EXISTS `attempts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attempts` (
  `user_id` smallint unsigned NOT NULL,
  `level_att` varchar(32) NOT NULL,
  `score` smallint unsigned DEFAULT NULL,
  `accuracy` decimal(10,0) DEFAULT NULL,
  `time_elapsed` smallint unsigned NOT NULL DEFAULT '0',
  `result` smallint unsigned NOT NULL DEFAULT '0',
  `date_time` datetime DEFAULT NOW() ON UPDATE CURRENT_TIMESTAMP,
  KEY `fk_user_attemps` (`user_id`),
  CONSTRAINT `fk_user_attemps` FOREIGN KEY (`user_id`) REFERENCES `user_data` (`user_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attempts`
--

LOCK TABLES `attempts` WRITE;
/*!40000 ALTER TABLE `attempts` DISABLE KEYS */;
/*!40000 ALTER TABLE `attempts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_data`
--

DROP TABLE IF EXISTS `user_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_data` (
  `user_name` varchar(32) NOT NULL,
  `user_id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `country` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
  
--
-- Dumping data for table `user_data`
--

LOCK TABLES `user_data` WRITE;
/*!40000 ALTER TABLE `user_data` DISABLE KEYS */;
-- INSERT INTO `user_data` VALUES ('Juan Muniain',1,'Mexico',2015,0,NULL,5,1,0),('Octavio Navarro',2,'',0,2400,NULL,4,0,1),('Miguel Bustamante',3,'Brazil',0,1200,NULL,3,0,1),('Manuel Barrera',4,'Argentina',1235,0,5,NULL,1,0),('friedshrimp07',5,'Venezuela',2325,0,5,NULL,1,0),('susbaka',7,'Greenland',0,1005,NULL,3,0,1),('Percussionarts',8,'United States',1565,0,3,NULL,1,0),('Gilecheverria',9,'mexico',0,2225,NULL,5,0,1),('coolpenguin',10,'Antartica',0,1335,NULL,4,0,1),('user1',11,'mexico',1400,0,3,NULL,1,0),('user2',12,'mexico',2340,0,5,NULL,1,0),('user3',13,'mexico',1035,0,3,NULL,1,0),('user4',14,'',2045,0,5,NULL,1,0),('user5',15,'mexico',0,2095,NULL,4,0,1),('user6',16,'mexico',0,2200,NULL,5,0,1),('user7',17,'',2205,0,3,NULL,1,0),('user8',18,'mexico',1995,0,4,NULL,1,0),('user9',19,'',0,1605,3,NULL,0,1),('user10',20,'',1455,0,4,NULL,1,0),('Miguel',22,'Canada',1000,1200,3,4,2,0);
/*!40000 ALTER TABLE `user_data` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

--
-- Table structure for table `level_data_user`
--

DROP TABLE IF EXISTS `level_data_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `level_data_user` (
  `level_name` varchar(32) NOT NULL,
  `user_id` smallint unsigned NOT NULL,
  `lvl_1_highscore` smallint unsigned NOT NULL DEFAULT '0',
  `lvl_2_highscore` smallint unsigned NOT NULL DEFAULT '0',
  `lvl_1_rating` tinyint unsigned DEFAULT NULL,
  `lvl_2_rating` tinyint unsigned DEFAULT NULL,
  `lvl_1_attempts` smallint unsigned NOT NULL DEFAULT '0',
  `lvl_2_attempts` smallint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`level_name`),
  KEY `fk_level_data_user` (`user_id`),
  CONSTRAINT `fk_level_data_user` FOREIGN KEY (`user_id`) REFERENCES `user_data` (`user_id`) ON DELETE RESTRICT ON UPDATE CASCADE
  ) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
  /*!40101 SET character_set_client = @saved_cs_client */;
  
--
-- Dumping data for table `level_data_user`
--

LOCK TABLES `level_data_user` WRITE;
/*!40000 ALTER TABLE `level_data_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `level_data_user` ENABLE KEYS */;
UNLOCK TABLES; 

DROP TABLE IF EXISTS `music_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `music_data` (
  `song_name` varchar(32) NOT NULL,
  `duration` smallint unsigned NOT NULL DEFAULT '0',
  `note_amount` smallint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`song_name`)
  ) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
  /*!40101 SET character_set_client = @saved_cs_client */;
  
--
-- Dumping data for table `music_data`
--

LOCK TABLES `music_data` WRITE;
/*!40000 ALTER TABLE `music_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `music_data` ENABLE KEYS */;
UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-21 12:11:51
