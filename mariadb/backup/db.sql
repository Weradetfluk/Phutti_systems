-- MySQL dump 10.19  Distrib 10.3.28-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cluster5
-- ------------------------------------------------------
-- Server version	10.3.28-MariaDB-1:10.3.28+maria~focal

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tas_employee`
--

DROP TABLE IF EXISTS `tas_employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tas_employee` (
  `emp_id` int(10) NOT NULL AUTO_INCREMENT,
  `emp_code` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `emp_firstname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `emp_lastname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `emp_type` int(1) DEFAULT NULL,
  `emp_username` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emp_password` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tas_employee`
--

LOCK TABLES `tas_employee` WRITE;
/*!40000 ALTER TABLE `tas_employee` DISABLE KEYS */;
INSERT INTO `tas_employee` VALUES (1,'621601','Weradet','Nopsombun',NULL,NULL,NULL),(2,'621600','Wachiravit','Peamjit',NULL,NULL,NULL),(3,'621615','Thanisorn','Intasorn',NULL,NULL,NULL),(4,'621608','Natdanai','Thumasaowanit',NULL,NULL,NULL),(5,'621612','Narisara','Boophuk',NULL,'A221','Admin'),(7,'123456','weradet ','kongbantee',NULL,NULL,NULL);
/*!40000 ALTER TABLE `tas_employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tas_old_timestamp`
--

DROP TABLE IF EXISTS `tas_old_timestamp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tas_old_timestamp` (
  `ots_id` int(30) NOT NULL AUTO_INCREMENT,
  `ots_old_timestamp` time DEFAULT NULL,
  `ots_old_time_out` time DEFAULT NULL,
  `ots_admin_note` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ots_admin_sig` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tsm_id` int(30) DEFAULT NULL,
  PRIMARY KEY (`ots_id`),
  KEY `tsm_id` (`tsm_id`),
  CONSTRAINT `tas_old_timestamp_ibfk_1` FOREIGN KEY (`tsm_id`) REFERENCES `tas_timestamp` (`tsm_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tas_old_timestamp`
--

LOCK TABLES `tas_old_timestamp` WRITE;
/*!40000 ALTER TABLE `tas_old_timestamp` DISABLE KEYS */;
INSERT INTO `tas_old_timestamp` VALUES (2,'00:00:00','23:37:00','ffff','Narisara Boophuk',142),(3,'00:00:00','23:37:00','ffff','Narisara Boophuk',142),(4,'00:00:00','23:29:00','ffff','Narisara Boophuk',140),(5,'00:00:09','23:29:00','ffff','Narisara Boophuk',140),(6,'00:00:00','23:36:00','gfgfgfg','Narisara Boophuk',138),(7,'14:40:00','00:00:00','sdsds','Narisara Boophuk',143),(8,'14:40:00','00:00:00','ass','Narisara Boophuk',143),(9,'14:40:00','00:00:00','asssssss','Narisara Boophuk',143),(10,'14:40:00','00:00:00','hhhhh','Narisara Boophuk',143),(11,'14:40:00','00:01:00','sss','Narisara Boophuk',143),(12,'14:40:00','00:01:00','sss','Narisara Boophuk',143),(13,'14:40:00','16:01:00',' xxxx','Narisara Boophuk',143),(14,'14:40:00','16:00:00',' xxxx','Narisara Boophuk',143),(15,'14:40:00','00:00:00',' xxxx','Narisara Boophuk',143),(16,'14:40:00','00:16:00',';;;','Narisara Boophuk',143),(17,'00:00:00','23:29:00','ffffff','Narisara Boophuk',139),(18,'10:37:00','09:37:00','ggggggggggg','Narisara Boophuk',3),(19,'10:37:00','11:37:00','ggggggggggg','Narisara Boophuk',3),(20,'10:37:00','11:37:00','ggggggggggg','Narisara Boophuk',3),(21,'11:00:00','00:00:00','jjjjjjj','Narisara Boophuk',149),(22,'11:00:00','00:00:00','jjjjjjj','Narisara Boophuk',149),(23,'11:00:00','12:00:00','fefefefefe','Narisara Boophuk',149),(24,'11:00:00','30:00:00','fefefefefe','Narisara Boophuk',149),(25,'11:00:00','00:00:00','efefefefefefefefeffeefef','Narisara Boophuk',149),(26,'02:04:41','02:12:15','fefeefef','Narisara Boophuk',35),(27,'11:00:00','30:00:00','llll','Narisara Boophuk',149),(28,'11:00:00','00:00:00','llll','Narisara Boophuk',149);
/*!40000 ALTER TABLE `tas_old_timestamp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tas_proof`
--

DROP TABLE IF EXISTS `tas_proof`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tas_proof` (
  `emp_id` int(10) DEFAULT NULL,
  `tsm_id` int(30) DEFAULT NULL,
  `prf_admin_sig` datetime DEFAULT NULL,
  `prf_admin_note` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `emp_id` (`emp_id`),
  KEY `tsm_id` (`tsm_id`),
  CONSTRAINT `tas_proof_ibfk_1` FOREIGN KEY (`emp_id`) REFERENCES `tas_employee` (`emp_id`),
  CONSTRAINT `tas_proof_ibfk_2` FOREIGN KEY (`tsm_id`) REFERENCES `tas_timestamp` (`tsm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tas_proof`
--

LOCK TABLES `tas_proof` WRITE;
/*!40000 ALTER TABLE `tas_proof` DISABLE KEYS */;
INSERT INTO `tas_proof` VALUES (NULL,NULL,'2021-05-10 16:45:53',NULL);
/*!40000 ALTER TABLE `tas_proof` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tas_timestamp`
--

DROP TABLE IF EXISTS `tas_timestamp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tas_timestamp` (
  `tsm_id` int(30) NOT NULL AUTO_INCREMENT,
  `tsm_date` date NOT NULL,
  `tsm_timestamp` time DEFAULT NULL,
  `tsm_timestamp_out` time DEFAULT NULL,
  `tsm_status_del` int(1) DEFAULT 0,
  `tsm_edit_status` int(1) DEFAULT 0,
  `emp_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`tsm_id`),
  KEY `emp_id` (`emp_id`),
  CONSTRAINT `tas_timestamp_ibfk_1` FOREIGN KEY (`emp_id`) REFERENCES `tas_employee` (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=188 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tas_timestamp`
--

LOCK TABLES `tas_timestamp` WRITE;
/*!40000 ALTER TABLE `tas_timestamp` DISABLE KEYS */;
INSERT INTO `tas_timestamp` VALUES (1,'2021-04-11','14:37:00',NULL,0,0,1),(3,'2021-04-11','10:37:00','21:37:00',0,1,2),(4,'2021-05-01','01:40:38','02:12:15',0,0,1),(5,'2021-04-17','08:13:55',NULL,0,0,1),(6,'2021-04-18','08:13:55',NULL,0,0,2),(35,'2021-05-01','02:04:00','04:12:00',0,1,2),(37,'2021-05-01','02:04:53',NULL,0,0,4),(41,'2021-05-01','02:14:10',NULL,0,0,5),(138,'2021-05-04','00:00:00','23:37:00',0,1,1),(139,'2021-05-04','07:00:00','23:29:00',0,1,3),(140,'2021-05-04','09:00:00','23:29:00',0,1,2),(141,'2021-05-04',NULL,'23:36:00',0,0,4),(142,'2021-05-04','07:00:00','23:37:00',0,1,5),(143,'2021-05-05','14:40:00','21:51:00',0,1,1),(144,'2021-05-06','14:22:00','22:04:00',0,0,1),(145,'2021-05-06',NULL,'22:04:00',1,0,2),(146,'2021-05-06',NULL,'22:04:00',1,0,3),(147,'2021-05-06',NULL,'22:17:00',0,0,5),(149,'2021-05-08','31:00:00','40:00:00',0,1,2),(169,'2021-05-08',NULL,'23:58:00',0,0,5),(170,'2021-05-08',NULL,'23:58:00',0,0,3),(176,'2021-05-09','08:01:00','23:02:00',0,0,1),(177,'2021-05-09','07:34:00','23:06:00',0,0,2),(178,'2021-05-09','07:07:00',NULL,0,0,5),(179,'2021-05-09','07:48:00','07:50:00',0,0,3),(180,'2021-05-09',NULL,'23:04:00',0,0,4),(181,'2021-05-10','11:31:00',NULL,0,0,1),(182,'2021-05-10','10:55:00','15:13:00',0,0,2),(183,'2021-05-10','10:23:00','15:11:00',0,0,3),(185,'2021-05-10','10:50:00','15:13:00',0,0,5),(186,'2021-05-10','10:51:00',NULL,0,0,4),(187,'2021-05-10',NULL,'21:20:00',0,0,7);
/*!40000 ALTER TABLE `tas_timestamp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `titanic`
--

DROP TABLE IF EXISTS `titanic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `titanic` (
  `index` bigint(20) DEFAULT NULL,
  `PassengerId` bigint(20) DEFAULT NULL,
  `Survived` bigint(20) DEFAULT NULL,
  `Pclass` bigint(20) DEFAULT NULL,
  `Name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `Sex` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `Age` double DEFAULT NULL,
  `SibSp` bigint(20) DEFAULT NULL,
  `Parch` bigint(20) DEFAULT NULL,
  `Ticket` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `Fare` double DEFAULT NULL,
  `Cabin` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `Embarked` text COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `ix_titanic_index` (`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `titanic`
--

LOCK TABLES `titanic` WRITE;
/*!40000 ALTER TABLE `titanic` DISABLE KEYS */;
INSERT INTO `titanic` VALUES (0,1,0,3,'Braund, Mr. Owen Harris','male',22,1,0,'A/5 21171',7.25,NULL,'S'),(1,2,1,1,'Cumings, Mrs. John Bradley (Florence Briggs Thayer)','female',38,1,0,'PC 17599',71.2833,'C85','C'),(2,3,1,3,'Heikkinen, Miss. Laina','female',26,0,0,'STON/O2. 3101282',7.925,NULL,'S'),(3,4,1,1,'Futrelle, Mrs. Jacques Heath (Lily May Peel)','female',35,1,0,'113803',53.1,'C123','S'),(4,5,0,3,'Allen, Mr. William Henry','male',35,0,0,'373450',8.05,NULL,'S'),(5,6,0,3,'Moran, Mr. James','male',NULL,0,0,'330877',8.4583,NULL,'Q'),(6,7,0,1,'McCarthy, Mr. Timothy J','male',54,0,0,'17463',51.8625,'E46','S'),(7,8,0,3,'Palsson, Master. Gosta Leonard','male',2,3,1,'349909',21.075,NULL,'S'),(8,9,1,3,'Johnson, Mrs. Oscar W (Elisabeth Vilhelmina Berg)','female',27,0,2,'347742',11.1333,NULL,'S'),(9,10,1,2,'Nasser, Mrs. Nicholas (Adele Achem)','female',14,1,0,'237736',30.0708,NULL,'C'),(10,11,1,3,'Sandstrom, Miss. Marguerite Rut','female',4,1,1,'PP 9549',16.7,'G6','S');
/*!40000 ALTER TABLE `titanic` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-11  3:51:15
