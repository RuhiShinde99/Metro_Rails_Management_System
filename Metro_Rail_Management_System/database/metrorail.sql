-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: metrorail
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `a_name` varchar(25) NOT NULL,
  `a_address` varchar(75) NOT NULL,
  `phone_num` varchar(13) NOT NULL,
  `email` varchar(30) NOT NULL,
  `age` int NOT NULL,
  `gender` varchar(6) NOT NULL,
  `permission` int NOT NULL,
  `designation` varchar(25) NOT NULL,
  `password` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'sanjeev','kumardhubi','9205878477','sksanjeev362@gmail.com',20,'male',1,'developer','123456');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `card_recharges`
--

DROP TABLE IF EXISTS `card_recharges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `card_recharges` (
  `id` int NOT NULL AUTO_INCREMENT,
  `card_num` varchar(10) NOT NULL,
  `status` varchar(20) NOT NULL,
  `amount` varchar(10) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `txn_id` varchar(255) NOT NULL,
  `paymentid` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card_recharges`
--

LOCK TABLES `card_recharges` WRITE;
/*!40000 ALTER TABLE `card_recharges` DISABLE KEYS */;
INSERT INTO `card_recharges` VALUES (1,'9858888','Pending','100','2018-03-25 00:27:06','23ce67e55025448aa34aff1c569d6f60',''),(2,'9858888','Pending','100','2018-03-25 00:35:13','c7c2860b1f5248b48bb1d11e161bf591',''),(3,'9858888','Pending','100','2018-03-25 11:50:10','a57bf34a66fd4b21a51a3a41a85b5f35',''),(4,'9858888','Pending','100','2018-03-25 12:50:25','7335c2d4a725468f86db6d0351cccb73',NULL),(5,'9858888','Pending','100','2018-03-25 12:54:10','796efeab55084620a259b4b1d57245d5',NULL),(6,'9858888','complete','100.00','2018-03-25 12:55:45','f7fae484b0da4707b43b685eb525b149','MOJO8325005A92834498');
/*!40000 ALTER TABLE `card_recharges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `complaints`
--

DROP TABLE IF EXISTS `complaints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `complaints` (
  `id` int NOT NULL AUTO_INCREMENT,
  `u_name` varchar(30) NOT NULL,
  `u_address` text NOT NULL,
  `phone_num` varchar(13) NOT NULL,
  `msg` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `age` int NOT NULL,
  `status` tinyint(1) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `complaints`
--

LOCK TABLES `complaints` WRITE;
/*!40000 ALTER TABLE `complaints` DISABLE KEYS */;
INSERT INTO `complaints` VALUES (1,'sanjeev kumar','kmme','9999888877','thanks','sksanjeev362@gmail.com',20,1,'2018-02-25 00:58:24'),(2,'sanjeev kumar','kmme','9999888877','thanks','sksanjeev362@gmail.com',20,1,'2018-02-25 01:02:25'),(3,'sanjeev kumar','kmme','9999888877','thanks','sksanjeev362@gmail.com',20,1,'2018-02-25 01:03:20'),(4,'sanjeev kumar','kmme','9999888877','hm','sksanjeev362@gmail.com',20,1,'2018-02-25 10:25:54'),(5,'sanjeev kumar','kmme','9205878477','hh','sksanjeev362@gmail.com',20,1,'2018-03-22 22:38:33'),(6,'sanjeev kumar','kmme','9205878477','bb','sksanjeev362@gmail.com',20,1,'2018-03-24 00:01:43'),(7,'sanjeev','kmme','9205878477','th','sksanjeev362@gmail.com',20,0,'2018-03-24 17:28:22');
/*!40000 ALTER TABLE `complaints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demo`
--

DROP TABLE IF EXISTS `demo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `demo` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demo`
--

LOCK TABLES `demo` WRITE;
/*!40000 ALTER TABLE `demo` DISABLE KEYS */;
INSERT INTO `demo` VALUES (1,'sanjeev'),(2,'rahul');
/*!40000 ALTER TABLE `demo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fair`
--

DROP TABLE IF EXISTS `fair`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fair` (
  `id` int NOT NULL AUTO_INCREMENT,
  `amt` varchar(10) NOT NULL,
  `min_distances` varchar(10) NOT NULL,
  `max_distances` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fair`
--

LOCK TABLES `fair` WRITE;
/*!40000 ALTER TABLE `fair` DISABLE KEYS */;
INSERT INTO `fair` VALUES (1,'10','0','10'),(2,'20','10','20'),(3,'30','20','30'),(4,'40','30','40'),(5,'50','50','200'),(6,'60','200','300'),(7,'100','300','500'),(8,'150','500','1000');
/*!40000 ALTER TABLE `fair` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metro_card`
--

DROP TABLE IF EXISTS `metro_card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `metro_card` (
  `id` int NOT NULL AUTO_INCREMENT,
  `card_num` varchar(20) DEFAULT NULL,
  `u_name` varchar(30) NOT NULL,
  `u_address` text NOT NULL,
  `age` int NOT NULL,
  `gender` varchar(6) NOT NULL,
  `phone_num` varchar(13) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `card_status` tinyint(1) NOT NULL DEFAULT '0',
  `balance` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metro_card`
--

LOCK TABLES `metro_card` WRITE;
/*!40000 ALTER TABLE `metro_card` DISABLE KEYS */;
INSERT INTO `metro_card` VALUES (1,'abcsde','sanjeev kumar','kumardhubi bazar',20,'null','9205878477','sksanjeev362@gmail.com','123456',1,0),(2,'9858888','test','jjj',20,'null','9999999','sksanjeev362@gmail.com','123456',1,120);
/*!40000 ALTER TABLE `metro_card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reply`
--

DROP TABLE IF EXISTS `reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reply` (
  `id` int NOT NULL AUTO_INCREMENT,
  `complaints_id` int NOT NULL,
  `msg` text NOT NULL,
  `admin_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reply`
--

LOCK TABLES `reply` WRITE;
/*!40000 ALTER TABLE `reply` DISABLE KEYS */;
INSERT INTO `reply` VALUES (1,1,'ok will fix it',1),(2,2,'you welcome',1),(3,3,'you welcome',1),(4,4,'thanks',1),(5,5,'thanks',1),(6,6,'hi',1);
/*!40000 ALTER TABLE `reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `route`
--

DROP TABLE IF EXISTS `route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `route` (
  `id` int NOT NULL AUTO_INCREMENT,
  `r_name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `route`
--

LOCK TABLES `route` WRITE;
/*!40000 ALTER TABLE `route` DISABLE KEYS */;
INSERT INTO `route` VALUES (1,'first'),(2,'second');
/*!40000 ALTER TABLE `route` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `route_details`
--

DROP TABLE IF EXISTS `route_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `route_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `route_id` int NOT NULL,
  `station_id` int NOT NULL,
  `s_order_num` int NOT NULL,
  `length_from_start` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `route_details`
--

LOCK TABLES `route_details` WRITE;
/*!40000 ALTER TABLE `route_details` DISABLE KEYS */;
INSERT INTO `route_details` VALUES (19,2,11,1,0),(20,2,10,2,120),(21,2,9,3,170),(22,2,1,4,200),(23,2,13,5,260),(24,2,14,6,280),(25,1,12,1,0),(26,1,3,2,5),(27,1,4,3,4),(28,1,5,4,15),(29,1,6,5,30),(30,1,1,6,45),(31,1,10,7,150),(32,1,11,8,220);
/*!40000 ALTER TABLE `route_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `station`
--

DROP TABLE IF EXISTS `station`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `station` (
  `id` int NOT NULL AUTO_INCREMENT,
  `s_name` varchar(50) NOT NULL,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `station`
--

LOCK TABLES `station` WRITE;
/*!40000 ALTER TABLE `station` DISABLE KEYS */;
INSERT INTO `station` VALUES (1,'Dhanbad',23.7957,86.4305),(3,'Kumardhubi Market, Chirkunda, Jharkhand, India',23.7465,86.784),(4,'Mugma, Jharkhand, India',23.7727,86.7322),(5,'Nirsa, Jharkhand, India',23.7848,86.7039),(6,'Gobindpur, Jharkhand, India',23.8343,86.5224),(7,'Bokaro Steel City, Jharkhand, India',23.6693,86.1511),(8,'Gomoh, Jharkhand, India',23.8608,86.1598),(9,'Katras, Jharkhand, India',23.8081,86.292),(10,'Muri, Jharkhand, India',23.3784,85.8614),(11,'Ranchi, Jharkhand, India',23.3441,85.3096),(12,'Chirkunda, Jharkhand, India',23.7479,86.7869),(13,'Panchet Dam, Tantloi, West Bengal',23.6781,86.7469),(14,'Maithon Dam, Kenjapahar Ist part al, Jharkhand',23.8503,86.7778),(15,'Junkudar, Jharkhand, India',23.7253,86.7705);
/*!40000 ALTER TABLE `station` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trains`
--

DROP TABLE IF EXISTS `trains`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trains` (
  `id` int NOT NULL AUTO_INCREMENT,
  `train_no` varchar(20) NOT NULL,
  `capacity` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trains`
--

LOCK TABLES `trains` WRITE;
/*!40000 ALTER TABLE `trains` DISABLE KEYS */;
INSERT INTO `trains` VALUES (1,'abc123',100),(2,'abc456',80),(3,'abc789',120),(4,'abc741',90),(5,'abc852',70),(6,'abc963',65);
/*!40000 ALTER TABLE `trains` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trip`
--

DROP TABLE IF EXISTS `trip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trip` (
  `id` int NOT NULL AUTO_INCREMENT,
  `trip_code` varchar(20) NOT NULL,
  `train_id` int NOT NULL,
  `route_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trip`
--

LOCK TABLES `trip` WRITE;
/*!40000 ALTER TABLE `trip` DISABLE KEYS */;
INSERT INTO `trip` VALUES (1,'first_trip',1,1),(2,'second_trip',2,2),(3,'trip2',5,2),(4,'trip3',1,1);
/*!40000 ALTER TABLE `trip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trip_details`
--

DROP TABLE IF EXISTS `trip_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trip_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `trip_num` int NOT NULL,
  `station_id` int NOT NULL,
  `arrival_time` varchar(10) NOT NULL,
  `departure_time` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trip_details`
--

LOCK TABLES `trip_details` WRITE;
/*!40000 ALTER TABLE `trip_details` DISABLE KEYS */;
INSERT INTO `trip_details` VALUES (1,1,1,'08:50','09:00'),(2,1,9,'09:11','09:20'),(3,2,1,'09:54','09:59'),(4,2,8,'10:31','10:45'),(5,3,3,'08:43','08:50'),(6,3,8,'09:35','09:45'),(9,4,1,'08:50','17:19'),(10,4,9,'09:11','09:20');
/*!40000 ALTER TABLE `trip_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-12  9:46:20
