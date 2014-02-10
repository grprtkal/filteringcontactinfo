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
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clients` (
  `client_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `joined_datetime` datetime NOT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'Michael','Choi','mchoi@village88.com','2010-04-05 14:09:08'),(2,'Joe','Smith','joe@village88.com','2010-04-14 14:10:09'),(3,'Ryan','Owen','rowen@village88.com','2011-02-09 14:10:29'),(4,'Masaki','Fujimuto','mfujimuto@village88.com','2011-04-28 18:16:29'),(5,'Diana','Sue Manlulu','dmanlulu@village88.com','2011-05-23 17:33:20'),(6,'John','Supsupin','jsupsupin@village88.com','2011-05-29 19:23:33'),(7,'Toni Rose','Panganiban','tpanganiban@village88.com','2011-06-01 01:02:03'),(8,'Maria','Gonzales','mgonzales@village88.com','2011-08-09 01:22:33'),(9,'Tom','Owen','towen@village88.com','2011-08-22 16:33:23'),(10,'Roosevelt','Sebial','rsebial@village88.com','2011-09-01 17:18:09'),(11,'Alvin','Malone','pede.ultrices@semmollisdui.org','2012-07-24 23:42:36'),(12,'Shafira','Hansen','consectetuer.cursus@tellus.org','2012-11-07 22:40:36'),(13,'Ursula','Holt','ullamcorper@eleifendCras.org','2012-02-07 19:51:11'),(14,'Erica','Suarez','Mauris.eu@adipiscinglobortis.org','2012-06-24 13:50:49'),(15,'Ferdinand','Schmidt','urna.Nullam@Crasinterdum.org','2012-10-19 09:29:03'),(16,'Callie','Poole','nisl@metus.org','2012-02-21 07:40:18'),(17,'Hyacinth','Bates','rhoncus@Suspendisseeleifend.org','2012-10-10 04:29:58'),(18,'Alexa','Schroeder','magnis@vitaeeratvel.org','2012-04-25 15:42:27'),(19,'Francis','Walsh','dis.parturient@vulputateposuerevulputate.edu','2012-10-21 02:17:26'),(20,'Caesar','Stewart','libero.at.auctor@auctorvitae.com','2012-09-07 01:27:35');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
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
