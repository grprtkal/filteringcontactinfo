CREATE DATABASE  IF NOT EXISTS `lead_gen_business` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `lead_gen_business`;
-- MySQL dump 10.13  Distrib 5.6.13, for osx10.6 (i386)
--
-- Host: 127.0.0.1    Database: lead_gen_business
-- ------------------------------------------------------
-- Server version	5.5.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `sites`
--

DROP TABLE IF EXISTS `sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sites` (
  `site_id` int(11) NOT NULL AUTO_INCREMENT,
  `domain_name` varchar(100) NOT NULL,
  `created_datetime` datetime NOT NULL,
  `client_id` int(11) NOT NULL,
  PRIMARY KEY (`site_id`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sites`
--

LOCK TABLES `sites` WRITE;
/*!40000 ALTER TABLE `sites` DISABLE KEYS */;
INSERT INTO `sites` VALUES (1,'market.com','2010-11-05 14:14:26',1),(2,'searchhomes.com','2011-01-01 14:14:26',3),(3,'ehow.com','2011-01-05 14:14:45',5),(4,'searchcoronado.com','2011-01-05 14:14:45',7),(5,'searchphilippines.com','2011-02-08 14:14:26',9),(6,'fox.com','2011-02-08 14:14:26',2),(7,'loans.com','2011-02-15 14:14:45',4),(8,'searchvillage.com','2011-03-13 14:11:30',6),(9,'homes.com','2011-03-15 14:14:45',8),(10,'searchcomputers.com','2011-04-20 14:11:49',10),(11,'youtube.com','2011-04-28 11:12:33',1),(12,'help.com','2011-05-01 12:16:33',4),(13,'timespace.com','2011-06-03 08:05:33',7),(14,'flipfly.com','2011-06-23 11:12:33',2),(15,'uptownzone.com','2011-05-29 12:12:33',6),(16,'olx.com','2011-06-01 07:22:16',5),(17,'cryshinjohn.com','2011-06-06 04:03:16',4),(18,'family.com','2011-06-15 05:10:11',3),(19,'connectme.com','2011-07-29 10:03:21',2),(20,'yestogod.com','2011-07-06 04:03:16',9),(21,'warcraft.com','2011-08-06 14:03:16',8),(22,'keepvid.com','2011-08-13 16:03:16',6),(23,'atech.com','2011-09-01 03:06:17',7),(24,'assignmentworld.com','2011-09-05 02:02:12',1),(25,'finalsite.com','2011-09-07 11:02:16',3),(26,'olson.com','2012-09-22 13:40:59',2),(27,'jarvis.com','2012-02-21 18:43:14',18),(28,'baird.com','2012-05-19 22:00:00',18),(29,'reyes.com','2011-10-14 03:59:02',2),(30,'johnston.com','2012-08-25 01:37:31',12),(31,'webb.com','2012-07-15 12:39:18',16),(32,'collier.com','2012-05-09 22:19:27',18),(33,'alston.com','2012-11-16 03:55:33',19),(34,'rogers.com','2012-11-25 21:06:04',10),(35,'serrano.com','2012-11-15 14:39:28',1),(36,'massey.com','2012-05-11 06:24:34',6),(37,'mcmahon.com','2012-06-20 22:11:00',16),(38,'waters.com','2012-08-15 02:22:51',2),(39,'alexander.com','2012-11-11 02:45:37',5),(40,'lamb.com','2011-11-26 00:55:20',7),(41,'wright.com','2011-10-20 05:38:14',20),(42,'rodgers.com','2012-10-24 12:20:49',14),(43,'floyd.com','2012-07-07 08:52:44',5),(44,'park.com','2012-05-21 23:18:24',6),(45,'albert.com','2012-03-24 08:57:47',15),(46,'byers.com','2012-10-03 20:37:11',6),(47,'duran.com','2012-06-03 12:34:33',8),(48,'hopkins.com','2011-12-24 10:17:45',15),(49,'hester.com','2012-03-11 23:27:54',14),(50,'valencia.com','2012-03-26 23:56:51',12),(51,'phillips.com','2012-02-26 08:37:21',12),(52,'decker.com','2012-11-12 22:25:40',3),(53,'lowe.com','2012-08-07 00:53:12',11),(54,'marquez.com','2012-02-16 15:28:19',15),(55,'drake.com','2011-12-26 22:11:46',1);
/*!40000 ALTER TABLE `sites` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-11-07 15:32:53
