-- MySQL dump 10.13  Distrib 5.7.29, for Win64 (x86_64)
--
-- Host: localhost    Database: daily_report_system
-- ------------------------------------------------------
-- Server version	5.7.29-log

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
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_flag` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `delete_flag` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(64) NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_3um79qgwg340lpaw7phtwudtc` (`code`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,1,'b2001','2020-03-02 19:25:52',0,'煌木　太郎','626927E56D07BDDC98A939BEC8BAE88CBC94B4EDB5628E39BFC0FFC5CFB24161','2020-03-02 19:25:52'),(2,0,'b2002','2020-03-02 19:29:12',0,'栗原　亀男','626927E56D07BDDC98A939BEC8BAE88CBC94B4EDB5628E39BFC0FFC5CFB24161','2020-03-02 19:29:12'),(3,0,'b2003','2020-03-02 19:29:26',0,'中原　真理子','626927E56D07BDDC98A939BEC8BAE88CBC94B4EDB5628E39BFC0FFC5CFB24161','2020-03-02 19:29:26'),(4,0,'b2004','2020-03-02 19:29:39',1,'佐藤　一郎','4A76397C384897BC3ABEBD8527CE64D5B88EC6730DF98FA1039B40543836B39F','2020-03-02 20:24:18'),(5,0,'b2005','2020-03-02 19:30:00',0,'谷原　芳尚','626927E56D07BDDC98A939BEC8BAE88CBC94B4EDB5628E39BFC0FFC5CFB24161','2020-03-02 20:23:54'),(6,0,'b2006','2020-03-02 19:30:48',1,'栗原直武','626927E56D07BDDC98A939BEC8BAE88CBC94B4EDB5628E39BFC0FFC5CFB24161','2020-03-02 19:30:59'),(7,0,'b2008','2020-03-22 16:23:22',0,'田中　真紀子','626927E56D07BDDC98A939BEC8BAE88CBC94B4EDB5628E39BFC0FFC5CFB24161','2020-03-22 16:23:22');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gooddetail`
--

DROP TABLE IF EXISTS `gooddetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gooddetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `employee_id` int(11) NOT NULL,
  `report_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKg0rh2jgrqjhbgjbq9s2cy72fj` (`employee_id`),
  KEY `FKg3gho20u9vo1mdrs02cqeb361` (`report_id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gooddetail`
--

LOCK TABLES `gooddetail` WRITE;
/*!40000 ALTER TABLE `gooddetail` DISABLE KEYS */;
INSERT INTO `gooddetail` VALUES (16,'2020-03-31 21:55:42',5,22),(17,'2020-03-31 22:22:51',1,24),(18,'2020-03-31 22:40:27',1,23),(19,'2020-04-01 20:29:56',5,25),(20,'2020-04-01 20:30:10',5,23),(21,'2020-04-19 16:00:37',1,27);
/*!40000 ALTER TABLE `gooddetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reports`
--

DROP TABLE IF EXISTS `reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` longtext NOT NULL,
  `created_at` datetime NOT NULL,
  `report_date` date NOT NULL,
  `title` varchar(255) NOT NULL,
  `updated_at` datetime NOT NULL,
  `employee_id` int(11) NOT NULL,
  `good` int(11) DEFAULT NULL,
  `begin` varchar(255) DEFAULT NULL,
  `finish` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK7m58c0h3phjcm6bco7aqikfen` (`employee_id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reports`
--

LOCK TABLES `reports` WRITE;
/*!40000 ALTER TABLE `reports` DISABLE KEYS */;
INSERT INTO `reports` VALUES (21,'test01','2020-03-31 21:54:41','2020-03-31','test01','2020-03-31 21:54:41',1,0,NULL,NULL),(22,'test02','2020-03-31 21:54:55','2020-03-31','test02','2020-03-31 21:54:55',2,1,NULL,NULL),(23,'test03','2020-03-31 21:55:10','2020-03-31','test03','2020-03-31 21:55:10',3,2,NULL,NULL),(24,'test04','2020-03-31 21:55:33','2020-03-31','test04','2020-03-31 21:55:33',5,1,NULL,NULL),(25,'test06','2020-03-31 22:24:15','2020-03-31','test06','2020-03-31 22:24:15',1,1,NULL,NULL),(26,'test06','2020-04-07 21:19:00','2020-04-07','test06','2020-04-07 21:19:00',1,0,'9：00','18：05'),(27,'test','2020-04-09 20:26:06','2020-04-09','test','2020-04-09 20:26:06',3,1,'9：00','18：05');
/*!40000 ALTER TABLE `reports` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-28 15:42:45
