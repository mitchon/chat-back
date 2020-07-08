-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: messenger_db
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `friends`
--

DROP TABLE IF EXISTS `friends`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `friends` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user1` int NOT NULL,
  `user2` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friends`
--

LOCK TABLES `friends` WRITE;
/*!40000 ALTER TABLE `friends` DISABLE KEYS */;
INSERT INTO `friends` VALUES (78,1,2),(79,1,4),(80,3,1),(81,2,4),(82,3,2),(83,5,1),(84,1,1);
/*!40000 ALTER TABLE `friends` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `msg_id` int NOT NULL AUTO_INCREMENT,
  `value` text NOT NULL,
  `sender` int NOT NULL,
  `receiver` int NOT NULL,
  PRIMARY KEY (`msg_id`)
) ENGINE=InnoDB AUTO_INCREMENT=313 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,'hi',1,2),(2,'privet',2,1),(3,'hello',3,1),(4,'aaa',1,2),(5,'blyaa',1,2),(6,'aaaa',2,1),(7,'работай!',1,2),(8,'работаю!',2,1),(9,'отлично!',1,2),(109,'aaaaaaaaa',1,2),(110,'aaaaaaaaaaaa',1,2),(111,'aaaaa',2,1),(112,'aaa',1,2),(113,'ghtytyty',1,2),(114,'hhgh',1,2),(115,'ddffdfe',1,2),(116,'rrr',1,2),(117,'a',1,2),(118,'b',1,2),(119,'еее',1,2),(120,'нн',1,2),(121,'dddd',1,2),(122,'ddd',1,2),(123,'dddd',1,2),(124,'aaasas',1,2),(125,'hththth',1,2),(126,'aaaa',1,2),(127,'aaaa',1,2),(128,'aaaaaaaaaaaaaaaaaa',1,2),(129,'aaa',1,2),(130,'aaddr',1,2),(131,'aa',3,2),(132,'ggwp',3,1),(133,'g',3,1),(134,'sukk',1,3),(135,'g',3,1),(136,'ghhh',3,1),(137,'g',3,1),(138,'eboo',3,1),(139,'uhh',3,1),(140,'a',3,1),(141,'ff',3,1),(142,'fffe',1,3),(143,'fefef',1,3),(144,'tyu',1,3),(145,'g',1,3),(146,'fffrrr',1,3),(147,'e',1,3),(148,'ddddddddddd',1,2),(149,'ddd',1,2),(150,'ff',2,1),(151,'a',2,1),(152,'a',2,1),(153,'b\n',2,1),(154,'v',1,2),(155,'vv',2,1),(156,'vvv',1,2),(157,'dvdv',1,2),(158,'csccsc',2,1),(159,'ff',1,2),(160,'dddef',1,2),(161,'fff',1,2),(162,'avavav',1,2),(163,'gr',1,2),(164,'fevfegfev',1,2),(165,'ewfefef',2,1),(166,'fefegrg3',2,1),(167,'efef',2,1),(168,'fegfewvgbw',1,2),(169,'gggg',2,1),(170,'cvcvvv',2,1),(171,'cscscs',2,1),(172,'dvdveve',1,2),(173,'evev',2,1),(174,'evevrgt',2,1),(175,'dwdwdrgrevv',1,2),(176,'gwrgegwefw',1,2),(177,'skkasakdk',2,1),(178,'kveovveov',2,1),(179,'vddvdv',2,1),(180,'vdvdd',2,1),(181,'aaa',2,1),(182,'aaaa',2,1),(183,'5555',1,2),(184,'eveve',1,2),(185,'vveopvm',1,2),(186,'dmwmddcm',1,2),(187,'fev',1,2),(188,'vevvev',1,2),(189,' v eve iev',1,2),(190,'moff3ofof3',2,1),(191,'moveoveo',1,2),(192,'мтмтм',1,2),(193,'ufff',1,2),(194,'gygy',2,1),(195,'kkl',1,2),(196,'wii\n',1,2),(197,'jjh',2,1),(198,'hhj',2,1),(199,'kkl',2,1),(200,'aaaaa',1,4),(201,'zhopa',4,2),(202,'aaa',4,3),(203,'aaa',4,1),(204,'feef',4,2),(205,'fefefe',1,2),(206,'bup',1,3),(207,'c',2,1),(208,'uu',2,1),(209,'kryaa',4,2),(210,'bb',1,4),(211,'ff',3,2),(212,'ggg',2,1),(213,'thththrttbh',1,4),(214,'g',3,1),(215,'h',3,2),(216,'jjjj',3,4),(217,'ggg',2,4),(218,'lliiu',1,2),(219,'uukyukl',1,4),(220,'hhhh',4,2),(221,'ffff',3,2),(222,'hhh',3,1),(223,'ggggggggg',3,4),(224,'hhhhhhhh',1,2),(225,'gggg',1,4),(226,'ggggggggggggggggggg',2,4),(227,'ffff',1,3),(228,'rf',3,2),(229,'dddddddddd',4,3),(230,'ddddddddddddd',1,3),(231,'dddddddd',1,2),(232,'dddddddddd',1,2),(233,'fffffffff',1,4),(234,'ggg',1,4),(235,'eeeeeeeeeeeee',1,4),(236,'dddddddddd',4,1),(237,'aaaaaaaaaaaaaaaaa',1,2),(238,'hhhhhhhhhhh',2,1),(239,'hhhhhhhhhhhhh',1,2),(240,'aaaa',1,2),(241,'aaaaaaaa',1,2),(242,'cccccccccccc',1,2),(243,'ccc',1,2),(244,'uuuuuuuuuuuuu',1,2),(245,'aaaaaaaa',1,2),(246,'uuuuuuuuu',1,2),(247,'aaa',1,2),(248,'aaa',1,2),(249,'zzz',1,2),(250,'dd',1,2),(251,'a',1,2),(252,'a',1,2),(253,'aaaaaaa',1,2),(254,'bbbbbbbbb',1,4),(255,'ggggggggggg',1,4),(256,'vvvvvvvvv',1,2),(257,'vvvvvvvvv',1,2),(258,'ghyhy',1,2),(259,'uuuuuuuuuuuu',1,2),(260,'bbbbbbbbbbbbbbbbb',1,2),(261,'nnn',1,4),(262,'bbbbbbbbbbbbb',1,2),(263,'bbbbbbbbbb',1,2),(264,',,,,,,,,,,,',1,2),(265,'hhhh',1,2),(266,'kkk',1,2),(267,'iiiiiiiii',1,4),(268,'nnnnnnn',1,3),(269,'mmmmmmmm',4,2),(270,'k',3,2),(271,'bliat',1,2),(272,'j',1,4),(273,'j',3,1),(274,'ppppppppppp',2,4),(275,'g',1,2),(276,'g',1,2),(277,'qqq',1,2),(278,'alex\npass',1,2),(279,'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',1,2),(280,'flexx\nxxx',1,2),(281,'fff',1,4),(282,'jjj',3,2),(283,'ты тупое ебло',1,2),(284,'grrgrgrg',5,1),(285,'[sss',1,1),(286,'bbbbbb',2,1),(287,'fffffffffffffff',2,1),(288,'ffffffffffffffffffffffffffffffff',2,1),(289,'df',2,1),(290,'s',2,1),(291,'g',2,1),(292,'n',2,1),(293,'dddd',2,1),(294,'aaaa',2,1),(295,'s',2,1),(296,'vvv',2,1),(297,'s',2,1),(298,'4g4g4g4g4g4g4g4g',2,1),(299,'d',2,1),(300,'d',2,1),(301,'d',1,2),(302,'ffffffffff',1,2),(303,'aaaaaaaaa',4,1),(304,'aaaaaaaaa',2,1),(305,'aaaaaa',2,1),(306,'fffffff',2,1),(307,'fffffffff',2,1),(308,'a',1,2),(309,'fff',1,2),(310,'b',2,1),(311,'а4еен54ен45е',1,2),(312,'кцакупеур',2,1);
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `login` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `image` varchar(200) DEFAULT 'https://thumb1.shutterstock.com/mosaic_250/4441678/756082993/stock-vector-camera-icon-flat-photo-camera-vector-isolated-modern-simple-snapshot-photography-sign-instant-756082993.jpg',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'alex','pass','https://thumb1.shutterstock.com/mosaic_250/4441678/756082993/stock-vector-camera-icon-flat-photo-camera-vector-isolated-modern-simple-snapshot-photography-sign-instant-756082993.jpg'),(2,'andrey','hikka','https://sun1-23.userapi.com/oOblP5flz2TXPrCSXM00wReQhRsP_ipGpidH7g/PFBEWCVwDdY.jpg?ava=1'),(3,'alyosha','lol','https://thumb1.shutterstock.com/mosaic_250/4441678/756082993/stock-vector-camera-icon-flat-photo-camera-vector-isolated-modern-simple-snapshot-photography-sign-instant-756082993.jpg'),(4,'gleb','root','https://thumb1.shutterstock.com/mosaic_250/4441678/756082993/stock-vector-camera-icon-flat-photo-camera-vector-isolated-modern-simple-snapshot-photography-sign-instant-756082993.jpg'),(5,'Grisha','garr','https://thumb1.shutterstock.com/mosaic_250/4441678/756082993/stock-vector-camera-icon-flat-photo-camera-vector-isolated-modern-simple-snapshot-photography-sign-instant-756082993.jpg'),(6,'c','d','https://thumb1.shutterstock.com/mosaic_250/4441678/756082993/stock-vector-camera-icon-flat-photo-camera-vector-isolated-modern-simple-snapshot-photography-sign-instant-756082993.jpg');
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

-- Dump completed on 2020-07-08 15:30:19
