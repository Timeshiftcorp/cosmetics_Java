-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: cosmetics
-- ------------------------------------------------------
-- Server version	5.7.19-log

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
-- Table structure for table `agency`
--

DROP TABLE IF EXISTS `agency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `addr` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `id_cost` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cost_agency_idx` (`id_cost`),
  CONSTRAINT `costs_agency` FOREIGN KEY (`id_cost`) REFERENCES `costs` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agency`
--

LOCK TABLES `agency` WRITE;
/*!40000 ALTER TABLE `agency` DISABLE KEYS */;
INSERT INTO `agency` VALUES (1,'Белита','Минск','454676547','2005-01-01 00:00:00',NULL),(2,'Витэкс','Минск',NULL,'2005-01-01 00:00:00',NULL),(3,'Синнесо','Минск','7657657657','2005-01-01 00:00:00',NULL),(4,'Кравт','Минск','0101010011101','2009-01-01 00:00:00',NULL);
/*!40000 ALTER TABLE `agency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `agencycosts`
--

DROP TABLE IF EXISTS `agencycosts`;
/*!50001 DROP VIEW IF EXISTS `agencycosts`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `agencycosts` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `Sum`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `balance of representations`
--

DROP TABLE IF EXISTS `balance of representations`;
/*!50001 DROP VIEW IF EXISTS `balance of representations`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `balance of representations` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `Sum`,
 1 AS `price`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `buyers`
--

DROP TABLE IF EXISTS `buyers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `buyers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `FIO` varchar(255) DEFAULT NULL,
  `discount` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `date_birth` date DEFAULT NULL,
  `addr` varchar(255) DEFAULT NULL,
  `summ_discount` int(11) DEFAULT NULL,
  `kod_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_buyer_idx` (`kod_user`),
  CONSTRAINT `usr_buyer` FOREIGN KEY (`kod_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buyers`
--

LOCK TABLES `buyers` WRITE;
/*!40000 ALTER TABLE `buyers` DISABLE KEYS */;
INSERT INTO `buyers` VALUES (1,'Иванов Иван Иваныч','58754','мужской','2000-03-22','ул.тира',5000,3),(2,'Петров Петр Петрович','5435435','мужской','1980-01-01','ул. Мира 1',3,4),(3,'Романов  ИВан Петрович','7665547','мужской','1996-03-22','ул.гвена',300,5),(4,'Шуркин Роман Степаныч','рпарпар','мужской','1994-03-02','ул.ловкача',6000,6),(5,'Драпин Игорь Игоривич','7664643','мужской','2001-10-03','ул.торфоча',10,7),(25,'Маркеев','2623','',NULL,'',NULL,NULL),(26,'Маркеев','','',NULL,'',NULL,NULL);
/*!40000 ALTER TABLE `buyers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `buyerscollections`
--

DROP TABLE IF EXISTS `buyerscollections`;
/*!50001 DROP VIEW IF EXISTS `buyerscollections`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `buyerscollections` AS SELECT 
 1 AS `FIO`,
 1 AS `discount`,
 1 AS `sex`,
 1 AS `date_birth`,
 1 AS `addr2`,
 1 AS `summ_discount`,
 1 AS `date_get`,
 1 AS `name`,
 1 AS `addr`,
 1 AS `phone`,
 1 AS `create_date`,
 1 AS `id`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `card`
--

DROP TABLE IF EXISTS `card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `card` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_buyer` int(11) DEFAULT NULL,
  `id_store` int(11) DEFAULT NULL,
  `id_service` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `buyer_card_idx` (`id_buyer`),
  KEY `store_card_idx` (`id_store`),
  CONSTRAINT `buyer_card` FOREIGN KEY (`id_buyer`) REFERENCES `buyers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `store_card` FOREIGN KEY (`id_store`) REFERENCES `collections` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card`
--

LOCK TABLES `card` WRITE;
/*!40000 ALTER TABLE `card` DISABLE KEYS */;
INSERT INTO `card` VALUES (5,5,1,NULL),(6,1,3,NULL),(7,2,2,NULL),(8,4,1,NULL),(9,2,5,NULL),(10,1,6,NULL),(11,1,1,NULL);
/*!40000 ALTER TABLE `card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `card_service`
--

DROP TABLE IF EXISTS `card_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `card_service` (
  `id_card` int(11) DEFAULT NULL,
  `id_service` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `ser_cardser_idx` (`id_service`),
  KEY `card_cardser_idx` (`id_card`),
  CONSTRAINT `card_cardservice` FOREIGN KEY (`id_card`) REFERENCES `card` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `service_cardservice` FOREIGN KEY (`id_service`) REFERENCES `services` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card_service`
--

LOCK TABLES `card_service` WRITE;
/*!40000 ALTER TABLE `card_service` DISABLE KEYS */;
INSERT INTO `card_service` VALUES (5,3,1),(6,2,4),(8,3,5),(8,4,6),(6,3,9),(5,4,10),(5,5,12),(8,5,13),(7,5,14),(5,1,15),(9,1,16),(10,1,22),(9,1,23),(10,2,26),(7,1,27),(7,2,28),(10,2,29),(5,1,31),(6,8,32),(10,7,33),(6,2,34),(10,7,35),(11,1,36);
/*!40000 ALTER TABLE `card_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collections`
--

DROP TABLE IF EXISTS `collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_post` datetime DEFAULT NULL,
  `date_get` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `id_typecosmetic` int(11) DEFAULT NULL,
  `id_store` int(11) DEFAULT NULL,
  `id_agency` int(11) DEFAULT NULL,
  `image` longblob,
  PRIMARY KEY (`id`),
  KEY `agency_collection_idx` (`id_agency`),
  KEY `typecos_collection_idx` (`id_typecosmetic`),
  KEY `store_collection_idx` (`id_store`),
  CONSTRAINT `agency_collection` FOREIGN KEY (`id_agency`) REFERENCES `agency` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `store_collection` FOREIGN KEY (`id_store`) REFERENCES `store` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `typecos_collection` FOREIGN KEY (`id_typecosmetic`) REFERENCES `type_cosmetic` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collections`
--

LOCK TABLES `collections` WRITE;
/*!40000 ALTER TABLE `collections` DISABLE KEYS */;
INSERT INTO `collections` VALUES (1,'2017-01-02 00:00:00','2017-02-01 00:00:00','Акридерм',2,1,2,'data:image/jpeg;base64,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'),(2,'2017-01-02 00:00:00','2017-02-01 00:00:00','Белита35',1,1,1,NULL),(3,'2017-01-03 00:00:00','2017-02-01 00:00:00','Зепт Оптима',5,2,1,NULL),(4,'2017-01-04 00:00:00','2017-02-01 00:00:00','Ночной крем Алое',2,2,4,NULL),(5,'2017-01-05 00:00:00','2017-02-01 00:00:00','Старый лекарь',4,2,4,NULL),(6,'2017-01-06 00:00:00','2017-02-01 00:00:00','Медовый рай',3,1,1,NULL);
/*!40000 ALTER TABLE `collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `costs`
--

DROP TABLE IF EXISTS `costs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `costs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summ` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `costs`
--

LOCK TABLES `costs` WRITE;
/*!40000 ALTER TABLE `costs` DISABLE KEYS */;
INSERT INTO `costs` VALUES (1,'2017-03-21 00:00:00','Золото',1000),(2,'2017-03-14 00:00:00','Серебро',200000),(3,'2017-03-10 00:00:00','Бронза',10000),(4,'2017-03-06 00:00:00','Платина',5000);
/*!40000 ALTER TABLE `costs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empl_post`
--

DROP TABLE IF EXISTS `empl_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empl_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_post` int(11) NOT NULL,
  `id_empl` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `agency_emp_idx` (`id_empl`),
  KEY `agency_cost_idx` (`id_post`),
  CONSTRAINT `agency_emppost` FOREIGN KEY (`id_empl`) REFERENCES `agency` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `cost_emppost` FOREIGN KEY (`id_post`) REFERENCES `costs` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empl_post`
--

LOCK TABLES `empl_post` WRITE;
/*!40000 ALTER TABLE `empl_post` DISABLE KEYS */;
INSERT INTO `empl_post` VALUES (1,3,1),(2,1,3),(3,3,4),(4,2,1),(6,4,3),(7,4,2),(8,2,2),(12,2,4),(15,4,1);
/*!40000 ALTER TABLE `empl_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `incomes of representative offices`
--

DROP TABLE IF EXISTS `incomes of representative offices`;
/*!50001 DROP VIEW IF EXISTS `incomes of representative offices`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `incomes of representative offices` AS SELECT 
 1 AS `name`,
 1 AS `price`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `pictures`
--

DROP TABLE IF EXISTS `pictures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pictures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Image` longblob,
  `Name` varchar(45) DEFAULT NULL,
  `Count` int(11) DEFAULT NULL,
  `Description` longtext,
  `price` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idPhotos_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pictures`
--

LOCK TABLES `pictures` WRITE;
/*!40000 ALTER TABLE `pictures` DISABLE KEYS */;
/*!40000 ALTER TABLE `pictures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `popularcollection`
--

DROP TABLE IF EXISTS `popularcollection`;
/*!50001 DROP VIEW IF EXISTS `popularcollection`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `popularcollection` AS SELECT 
 1 AS `name-service`,
 1 AS `Count-id`,
 1 AS `FIO`,
 1 AS `discount`,
 1 AS `sex`,
 1 AS `date_birth`,
 1 AS `addr`,
 1 AS `summ_discount`,
 1 AS `id`,
 1 AS `date_post`,
 1 AS `date_get`,
 1 AS `description`,
 1 AS `id_typecosmetic`,
 1 AS `id_store`,
 1 AS `id_agency`,
 1 AS `name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `purchase costs`
--

DROP TABLE IF EXISTS `purchase costs`;
/*!50001 DROP VIEW IF EXISTS `purchase costs`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `purchase costs` AS SELECT 
 1 AS `services_id`,
 1 AS `name`,
 1 AS `price`,
 1 AS `card_id`,
 1 AS `id_buyer`,
 1 AS `card_id_store`,
 1 AS `id_service`,
 1 AS `id`,
 1 AS `date_post`,
 1 AS `date_get`,
 1 AS `description`,
 1 AS `id_typecosmetic`,
 1 AS `id_store`,
 1 AS `id_agency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `report profit to customers`
--

DROP TABLE IF EXISTS `report profit to customers`;
/*!50001 DROP VIEW IF EXISTS `report profit to customers`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `report profit to customers` AS SELECT 
 1 AS `FIO`,
 1 AS `price`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'ROLE_USER'),(2,'ROLE_ADMIN');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `service_card`
--

DROP TABLE IF EXISTS `service_card`;
/*!50001 DROP VIEW IF EXISTS `service_card`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `service_card` AS SELECT 
 1 AS `id_card`,
 1 AS `name`,
 1 AS `price`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (1,'Продажа кремов',50),(2,'Продажа тоников',50),(3,'Продажа скрабов',100),(4,'Косметика Белита',30),(5,'Набор косметики Витэкс',10),(7,'Продажа пробников',200),(8,'Услуги косметолога',50),(9,'Консультация',30);
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store`
--

DROP TABLE IF EXISTS `store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `addr` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store`
--

LOCK TABLES `store` WRITE;
/*!40000 ALTER TABLE `store` DISABLE KEYS */;
INSERT INTO `store` VALUES (1,'Замок','стрит 43'),(2,'ТЦ Столица','авеню 10');
/*!40000 ALTER TABLE `store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type_cosmetic`
--

DROP TABLE IF EXISTS `type_cosmetic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `type_cosmetic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `image` longblob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type_cosmetic`
--

LOCK TABLES `type_cosmetic` WRITE;
/*!40000 ALTER TABLE `type_cosmetic` DISABLE KEYS */;
INSERT INTO `type_cosmetic` VALUES (1,' Крема',500,'asdas'),(2,'Лосьен для лица',200,NULL),(3,'Скраб для лица',700,NULL),(4,'Маска',30,NULL),(5,'Тоник',1200,NULL),(6,'Солфетки',2000,NULL),(7,' Ночные крема',1000,NULL),(8,'Молочко',3000,NULL);
/*!40000 ALTER TABLE `type_cosmetic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_roles` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  UNIQUE KEY `user_id` (`user_id`,`role_id`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `user_roles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `user_roles_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` VALUES (1,2),(2,2);
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','$2a$11$uSXS6rLJ91WjgOHhEGDx..VGs7MkKZV68Lv5r1uwFu7HgtRn3dcXG'),(2,'alexander','$2a$11$SIKDifZX8E0k5RtjSwD7D.EP9D2oH5U7IP09pabx.Nm2plefiBHMC'),(3,'ivanov','$2a$11$SIKDifZX8E0k5RtjSwD7D.EP9D2oH5U7IP09pabx.Nm2plefiBHMC'),(4,'petrov','$2a$11$SIKDifZX8E0k5RtjSwD7D.EP9D2oH5U7IP09pabx.Nm2plefiBHMC'),(5,'romanov','$2a$11$SIKDifZX8E0k5RtjSwD7D.EP9D2oH5U7IP09pabx.Nm2plefiBHMC'),(6,'shurkin','$2a$11$SIKDifZX8E0k5RtjSwD7D.EP9D2oH5U7IP09pabx.Nm2plefiBHMC'),(7,'drapin','$2a$11$SIKDifZX8E0k5RtjSwD7D.EP9D2oH5U7IP09pabx.Nm2plefiBHMC');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `agencycosts`
--

/*!50001 DROP VIEW IF EXISTS `agencycosts`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `agencycosts` AS select `agency`.`id` AS `id`,`agency`.`name` AS `name`,sum(`costs`.`summ`) AS `Sum` from ((`agency` join `empl_post` on((`agency`.`id` = `empl_post`.`id`))) join `costs` on((`empl_post`.`id` = `costs`.`id`))) group by `agency`.`name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `balance of representations`
--

/*!50001 DROP VIEW IF EXISTS `balance of representations`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `balance of representations` AS select `agencycosts`.`id` AS `id`,`agencycosts`.`name` AS `name`,`agencycosts`.`Sum` AS `Sum`,`incomes of representative offices`.`price` AS `price` from (`incomes of representative offices` join `agencycosts` on((`incomes of representative offices`.`name` = `agencycosts`.`name`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `buyerscollections`
--

/*!50001 DROP VIEW IF EXISTS `buyerscollections`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `buyerscollections` AS select `buyers`.`FIO` AS `FIO`,`buyers`.`discount` AS `discount`,`buyers`.`sex` AS `sex`,`buyers`.`date_birth` AS `date_birth`,`buyers`.`addr` AS `addr2`,`buyers`.`summ_discount` AS `summ_discount`,`collections`.`date_get` AS `date_get`,`agency`.`name` AS `name`,`agency`.`addr` AS `addr`,`agency`.`phone` AS `phone`,`agency`.`create_date` AS `create_date`,`collections`.`id` AS `id` from (`agency` join (`collections` join (`buyers` join `card` on((`buyers`.`id` = `card`.`id_buyer`))) on((`collections`.`id` = `card`.`id_store`))) on((`agency`.`id` = `collections`.`id_agency`))) group by `buyers`.`FIO`,`buyers`.`discount`,`buyers`.`sex`,`buyers`.`date_birth`,`buyers`.`addr`,`buyers`.`summ_discount`,`collections`.`date_get`,`agency`.`name`,`agency`.`addr`,`agency`.`phone`,`agency`.`create_date`,`collections`.`id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `incomes of representative offices`
--

/*!50001 DROP VIEW IF EXISTS `incomes of representative offices`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `incomes of representative offices` AS select `agency`.`name` AS `name`,sum(`services`.`price`) AS `price` from (`services` join ((`agency` join `collections` on((`agency`.`id` = `collections`.`id_agency`))) join (`buyers` join `card` on((`buyers`.`id` = `card`.`id_buyer`))) on((`collections`.`id` = `card`.`id_store`))) on((`services`.`id` = `card`.`id`))) group by `agency`.`name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `popularcollection`
--

/*!50001 DROP VIEW IF EXISTS `popularcollection`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `popularcollection` AS select `services`.`name` AS `name-service`,count(`buyers`.`id`) AS `Count-id`,`buyers`.`FIO` AS `FIO`,`buyers`.`discount` AS `discount`,`buyers`.`sex` AS `sex`,`buyers`.`date_birth` AS `date_birth`,`buyers`.`addr` AS `addr`,`buyers`.`summ_discount` AS `summ_discount`,`collections`.`id` AS `id`,`collections`.`date_post` AS `date_post`,`collections`.`date_get` AS `date_get`,`collections`.`description` AS `description`,`collections`.`id_typecosmetic` AS `id_typecosmetic`,`collections`.`id_store` AS `id_store`,`collections`.`id_agency` AS `id_agency`,`store`.`name` AS `name` from ((`store` join `collections` on((`store`.`id` = `collections`.`id_store`))) join (`buyers` join (`services` join `card` on((`services`.`id` = `card`.`id`))) on((`buyers`.`id` = `card`.`id_buyer`))) on((`collections`.`id` = `card`.`id_store`))) group by `services`.`name`,`buyers`.`FIO`,`buyers`.`discount`,`buyers`.`sex`,`buyers`.`date_birth`,`buyers`.`addr`,`buyers`.`summ_discount`,`collections`.`id`,`collections`.`date_post`,`collections`.`date_get`,`collections`.`description`,`collections`.`id_typecosmetic`,`collections`.`id_store`,`collections`.`id_agency`,`store`.`name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `purchase costs`
--

/*!50001 DROP VIEW IF EXISTS `purchase costs`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `purchase costs` AS select `services`.`id` AS `services_id`,`services`.`name` AS `name`,`services`.`price` AS `price`,`card`.`id` AS `card_id`,`card`.`id_buyer` AS `id_buyer`,`card`.`id_store` AS `card_id_store`,`card`.`id_service` AS `id_service`,`collections`.`id` AS `id`,`collections`.`date_post` AS `date_post`,`collections`.`date_get` AS `date_get`,`collections`.`description` AS `description`,`collections`.`id_typecosmetic` AS `id_typecosmetic`,`collections`.`id_store` AS `id_store`,`collections`.`id_agency` AS `id_agency` from (`collections` join (`services` join `card` on((`services`.`id` = `card`.`id`))) on((`collections`.`id` = `card`.`id_store`))) group by `services`.`id`,`services`.`name`,`services`.`price`,`card`.`id`,`card`.`id_buyer`,`card`.`id_store`,`card`.`id_service`,`collections`.`id`,`collections`.`date_post`,`collections`.`date_get`,`collections`.`description`,`collections`.`id_typecosmetic`,`collections`.`id_store`,`collections`.`id_agency` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `report profit to customers`
--

/*!50001 DROP VIEW IF EXISTS `report profit to customers`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `report profit to customers` AS select `buyers`.`FIO` AS `FIO`,sum(`services`.`price`) AS `price` from (`buyers` join (`card` join (`services` join `card_service` on((`services`.`id` = `card_service`.`id_service`))) on((`card`.`id` = `card_service`.`id_card`))) on((`buyers`.`id` = `card`.`id_buyer`))) group by `buyers`.`FIO` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `service_card`
--

/*!50001 DROP VIEW IF EXISTS `service_card`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `service_card` AS select `card_service`.`id_card` AS `id_card`,`services`.`name` AS `name`,`services`.`price` AS `price` from (`services` join `card_service` on((`services`.`id` = `card_service`.`id_card`))) */;
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

-- Dump completed on 2017-10-08  0:42:07
