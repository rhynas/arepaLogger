-- MySQL dump 10.13  Distrib 5.7.12, for osx10.9 (x86_64)
--
-- Host: localhost    Database: arepas_db
-- ------------------------------------------------------
-- Server version	5.6.34

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
-- Table structure for table `arepas`
--

DROP TABLE IF EXISTS `arepas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `arepas` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `arepa_name` varchar(80) NOT NULL,
  `devoured` tinyint(1) DEFAULT '0',
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_devoured` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arepas`
--

LOCK TABLES `arepas` WRITE;
/*!40000 ALTER TABLE `arepas` DISABLE KEYS */;
INSERT INTO `arepas` VALUES (1,'Reina Pepiada (spotted queen) - chicken salad with avocado',1,'2017-03-19 18:57:08','2017-03-19 22:14:51'),(2,'Pelua - shredded skirt steak and cheddar cheese',0,'2017-03-19 18:57:09','2017-03-19 22:14:34'),(3,'Pabellon - shredded skirt steak, plantains, black beans and avocado',0,'2017-03-19 18:57:09','2017-03-19 22:14:34'),(4,'Pernil - Pork',0,'2017-03-19 18:57:09','2017-03-19 22:14:34'),(5,'Vegie - grilled tofu, plantains, black beans and avocado',1,'2017-03-19 18:57:09','2017-03-19 22:15:06'),(6,'Domino - White Cheese and Black beans',0,'2017-03-19 20:39:38','0000-00-00 00:00:00'),(7,'Cheese - Gouda',0,'2017-03-19 21:42:11','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `arepas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-19 18:19:42
