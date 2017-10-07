CREATE DATABASE  IF NOT EXISTS `cosmetics` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `cosmetics`;
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
  KEY `расхооды_представительство_idx` (`id_cost`),
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
 1 AS `Наименование`,
 1 AS `Sum-Сумма`,
 1 AS `сумма услуги`*/;
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
  KEY `user_покупатель_idx` (`kod_user`),
  CONSTRAINT `usr_buyer` FOREIGN KEY (`kod_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buyers`
--

LOCK TABLES `buyers` WRITE;
/*!40000 ALTER TABLE `buyers` DISABLE KEYS */;
INSERT INTO `buyers` VALUES (1,'Иванов Иван Иваныч','58754','мужской','2000-03-22','ул.тира',200,3),(2,'Петров Петр Петрович','5435435','мужской','1980-01-01','ул. Мира 1',3,4),(3,'Романов  ИВан Петрович','7665547','мужской','1996-03-22','ул.гвена',300,5),(4,'Шуркин Роман Степаныч','рпарпар','мужской','1994-03-02','ул.ловкача',6000,6),(5,'Драпин Игорь Игоривич','7664643','мужской','2001-10-03','ул.торфоча',10,7);
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
 1 AS `ФИО`,
 1 AS `Дисконт`,
 1 AS `Пол`,
 1 AS `Дата рождения`,
 1 AS `Адресс регистрации`,
 1 AS `Сумма накопленная`,
 1 AS `Дата получения`,
 1 AS `Наименование`,
 1 AS `Адресс`,
 1 AS `Телефон`,
 1 AS `Дата основания`,
 1 AS `Номер`*/;
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card`
--

LOCK TABLES `card` WRITE;
/*!40000 ALTER TABLE `card` DISABLE KEYS */;
INSERT INTO `card` VALUES (5,5,1,NULL),(6,1,3,NULL),(7,2,2,NULL),(8,4,1,NULL),(9,2,5,NULL),(10,1,6,NULL);
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
  KEY `усл_карусл_idx` (`id_service`),
  KEY `кар_карусл_idx` (`id_card`),
  CONSTRAINT `card_cardservice` FOREIGN KEY (`id_card`) REFERENCES `card` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `service_cardservice` FOREIGN KEY (`id_service`) REFERENCES `services` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card_service`
--

LOCK TABLES `card_service` WRITE;
/*!40000 ALTER TABLE `card_service` DISABLE KEYS */;
INSERT INTO `card_service` VALUES (5,3,1),(6,2,4),(8,3,5),(8,4,6),(6,3,9),(5,4,10),(5,5,12),(8,5,13),(7,5,14),(5,1,15),(9,1,16),(10,1,22),(9,1,23),(10,2,26),(7,1,27),(7,2,28),(10,2,29),(5,1,31),(6,8,32),(10,7,33),(6,2,34),(10,7,35);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collections`
--

LOCK TABLES `collections` WRITE;
/*!40000 ALTER TABLE `collections` DISABLE KEYS */;
INSERT INTO `collections` VALUES (1,'2017-01-02 00:00:00','2017-02-01 00:00:00','Акридерм',2,1,2,NULL),(2,'2017-01-02 00:00:00','2017-02-01 00:00:00','Белита35',1,1,1,NULL),(3,'2017-01-03 00:00:00','2017-02-01 00:00:00','Зепт Оптима',5,2,1,NULL),(4,'2017-01-04 00:00:00','2017-02-01 00:00:00','Ночной крем Алое',2,2,4,NULL),(5,'2017-01-05 00:00:00','2017-02-01 00:00:00','Старый лекарь',4,2,4,NULL),(6,'2017-01-06 00:00:00','2017-02-01 00:00:00','Медовый рай',3,1,1,NULL);
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
  KEY `предста_долс_idx` (`id_empl`),
  KEY `предста_расх_idx` (`id_post`),
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
 1 AS `Наименование`,
 1 AS `сумма услуги`*/;
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
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
 1 AS `Название услуги`,
 1 AS `Count-Код`,
 1 AS `ФИО`,
 1 AS `Дисконт`,
 1 AS `Пол`,
 1 AS `Дата рождения`,
 1 AS `Адресс регистрации`,
 1 AS `Сумма накопленная`,
 1 AS `Номер`,
 1 AS `Дата поставки`,
 1 AS `Дата получения`,
 1 AS `Описание`,
 1 AS `Тип`,
 1 AS `Код магазина`,
 1 AS `КодУслуги`,
 1 AS `Наименование`*/;
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
 1 AS `ФИО`,
 1 AS `Сумма services`*/;
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
 1 AS `Код карточки`,
 1 AS `Название услуги`,
 1 AS `Цена услуги`*/;
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
INSERT INTO `type_cosmetic` VALUES (1,' Крема',500,NULL),(2,'Лосьен для лица',200,NULL),(3,'Скраб для лица',700,NULL),(4,'Маска',30,NULL),(5,'Тоник',1200,NULL),(6,'Солфетки',2000,NULL),(7,' Ночные крема',1000,NULL),(8,'Молочко',3000,NULL);
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
/*!50001 VIEW `agencycosts` AS select `agency`.`name` AS `name`,sum(`costs`.`summ`) AS `Sum` from ((`agency` join `empl_post` on((`agency`.`id` = `empl_post`.`id`))) join `costs` on((`empl_post`.`id` = `costs`.`id`))) group by `agency`.`name` */;
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
/*!50001 VIEW `balance of representations` AS select `agencycosts`.`name` AS `Наименование`,`agencycosts`.`Sum` AS `Sum-Сумма`,`incomes of representative offices`.`сумма услуги` AS `сумма услуги` from (`incomes of representative offices` join `agencycosts` on((`incomes of representative offices`.`Наименование` = `agencycosts`.`name`))) */;
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
/*!50001 VIEW `buyerscollections` AS select `buyers`.`FIO` AS `ФИО`,`buyers`.`discount` AS `Дисконт`,`buyers`.`sex` AS `Пол`,`buyers`.`date_birth` AS `Дата рождения`,`buyers`.`addr` AS `Адресс регистрации`,`buyers`.`summ_discount` AS `Сумма накопленная`,`collections`.`date_get` AS `Дата получения`,`agency`.`name` AS `Наименование`,`agency`.`addr` AS `Адресс`,`agency`.`phone` AS `Телефон`,`agency`.`create_date` AS `Дата основания`,`collections`.`id` AS `Номер` from (`agency` join (`collections` join (`buyers` join `card` on((`buyers`.`id` = `card`.`id_buyer`))) on((`collections`.`id` = `card`.`id_store`))) on((`agency`.`id` = `collections`.`id_agency`))) group by `buyers`.`FIO`,`buyers`.`discount`,`buyers`.`sex`,`buyers`.`date_birth`,`buyers`.`addr`,`buyers`.`summ_discount`,`collections`.`date_get`,`agency`.`name`,`agency`.`addr`,`agency`.`phone`,`agency`.`create_date`,`collections`.`id` */;
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
/*!50001 VIEW `incomes of representative offices` AS select `agency`.`name` AS `Наименование`,sum(`services`.`price`) AS `сумма услуги` from (`services` join ((`agency` join `collections` on((`agency`.`id` = `collections`.`id_agency`))) join (`buyers` join `card` on((`buyers`.`id` = `card`.`id_buyer`))) on((`collections`.`id` = `card`.`id_store`))) on((`services`.`id` = `card`.`id`))) group by `agency`.`name` */;
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
/*!50001 VIEW `popularcollection` AS select `services`.`name` AS `Название услуги`,count(`buyers`.`id`) AS `Count-Код`,`buyers`.`FIO` AS `ФИО`,`buyers`.`discount` AS `Дисконт`,`buyers`.`sex` AS `Пол`,`buyers`.`date_birth` AS `Дата рождения`,`buyers`.`addr` AS `Адресс регистрации`,`buyers`.`summ_discount` AS `Сумма накопленная`,`collections`.`id` AS `Номер`,`collections`.`date_post` AS `Дата поставки`,`collections`.`date_get` AS `Дата получения`,`collections`.`description` AS `Описание`,`collections`.`id_typecosmetic` AS `Тип`,`collections`.`id_store` AS `Код магазина`,`collections`.`id_agency` AS `КодУслуги`,`store`.`name` AS `Наименование` from ((`store` join `collections` on((`store`.`id` = `collections`.`id_store`))) join (`buyers` join (`services` join `card` on((`services`.`id` = `card`.`id`))) on((`buyers`.`id` = `card`.`id_buyer`))) on((`collections`.`id` = `card`.`id_store`))) group by `services`.`name`,`buyers`.`FIO`,`buyers`.`discount`,`buyers`.`sex`,`buyers`.`date_birth`,`buyers`.`addr`,`buyers`.`summ_discount`,`collections`.`id`,`collections`.`date_post`,`collections`.`date_get`,`collections`.`description`,`collections`.`id_typecosmetic`,`collections`.`id_store`,`collections`.`id_agency`,`store`.`name` */;
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
/*!50001 VIEW `report profit to customers` AS select `buyers`.`FIO` AS `ФИО`,sum(`services`.`price`) AS `Сумма services` from (`buyers` join (`card` join (`services` join `card_service` on((`services`.`id` = `card_service`.`id_service`))) on((`card`.`id` = `card_service`.`id_card`))) on((`buyers`.`id` = `card`.`id_buyer`))) group by `buyers`.`FIO` */;
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
/*!50001 VIEW `service_card` AS select `card_service`.`id_card` AS `Код карточки`,`services`.`name` AS `Название услуги`,`services`.`price` AS `Цена услуги` from (`services` join `card_service` on((`services`.`id` = `card_service`.`id_card`))) */;
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

-- Dump completed on 2017-10-06  3:17:26
