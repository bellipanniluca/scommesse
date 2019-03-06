-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: scommesse
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `calcio`
--

DROP TABLE IF EXISTS `calcio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `calcio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `anno` int(11) DEFAULT NULL,
  `giorno` int(11) DEFAULT NULL,
  `mese` text,
  `paese` text,
  `lega` text,
  `stagione` text,
  `casa` text,
  `trasferta` text,
  `risultato_casa` int(11) DEFAULT NULL,
  `risultato_trasferta` int(11) DEFAULT NULL,
  `home` decimal(3,2) DEFAULT NULL,
  `x` double DEFAULT NULL,
  `away` decimal(4,2) DEFAULT NULL,
  `esito` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `hockey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `hockey` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `anno` int(11) DEFAULT NULL,
  `giorno` int(11) DEFAULT NULL,
  `mese` text,
  `paese` text,
  `lega` text,
  `stagione` text,
  `casa` text,
  `trasferta` text,
  `risultato_casa` int(11) DEFAULT NULL,
  `risultato_trasferta` int(11) DEFAULT NULL,
  `esito` text,
  `1` double DEFAULT NULL,
  `2` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `nba`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `nba` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `anno` int(11) DEFAULT NULL,
  `giorno` int(11) DEFAULT NULL,
  `mese` text,
  `paese` text,
  `lega` text,
  `stagione` text,
  `casa` text,
  `trasferta` text,
  `risultato_casa` int(11) DEFAULT NULL,
  `risultato_trasferta` int(11) DEFAULT NULL,
  `home` decimal(4,2) DEFAULT NULL,
  `away` decimal(4,2) DEFAULT NULL,
  `esito` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `schedina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `schedina` (
  `codice` int(11) NOT NULL AUTO_INCREMENT,
  `id_utente` int(11) DEFAULT NULL,
  `quota` decimal(4,2) DEFAULT NULL,
  `importo` decimal(6,2) DEFAULT NULL,
  `vincita` decimal(6,2) DEFAULT NULL,
  `esito` varchar(15) DEFAULT NULL,
  `data` date DEFAULT NULL,
  PRIMARY KEY (`codice`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `utenti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `utenti` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(20) DEFAULT NULL,
  `cognome` varchar(20) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `pw` varchar(20) DEFAULT NULL,
  `bilancio` decimal(7,2) DEFAULT '0.00',
  `saldo` decimal(7,2) DEFAULT '0.00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `calcio`
--

LOCK TABLES `calcio` WRITE;
/*!40000 ALTER TABLE `calcio` DISABLE KEYS */;
INSERT INTO `calcio` VALUES (1,2019,10,'Feb','Italy','Serie A','2018/2019','AC Milan','Cagliari',3,0,1.40,4.33,8.00,'H'),(2,2019,10,'Feb','Italy','Serie A','2018/2019','Sassuolo','Juventus',0,3,6.50,3.6,1.57,'A'),(3,2019,10,'Feb','Italy','Serie A','2018/2019','Atalanta','Spal',2,1,1.36,4.75,8.50,'H'),(4,2019,10,'Feb','Italy','Serie A','2018/2019','Sampdoria','Frosinone',0,1,1.57,3.75,6.00,'A'),(5,2019,10,'Feb','Italy','Serie A','2018/2019','Torino','Udinese',1,0,1.66,3.6,5.25,'H'),(6,2019,10,'Feb','Italy','Serie A','2018/2019','Bologna','Genoa',1,1,2.30,3.1,3.25,'X'),(7,2019,9,'Feb','Italy','Serie A','2018/2019','Parma','Inter',0,1,4.75,3.6,1.72,'A'),(8,2019,9,'Feb','Italy','Serie A','2018/2019','Fiorentina','Napoli',0,0,3.60,3.3,2.05,'X'),(9,2019,8,'Feb','Italy','Serie A','2018/2019','Chievo','AS Roma',0,3,5.25,3.6,1.66,'A'),(10,2019,7,'Feb','Italy','Serie A','2018/2019','Lazio','Empoli',1,0,1.30,5,10.00,'H'),(11,2019,4,'Feb','Italy','Serie A','2018/2019','Cagliari','Atalanta',0,1,3.90,3.5,1.90,'A'),(12,2019,4,'Feb','Italy','Serie A','2018/2019','Frosinone','Lazio',0,1,7.50,4.1,1.44,'A'),(13,2019,3,'Feb','Italy','Serie A','2018/2019','AS Roma','AC Milan',1,1,2.00,3.5,3.60,'X'),(14,2019,3,'Feb','Italy','Serie A','2018/2019','Inter','Bologna',0,1,1.30,4.5,13.00,'A'),(15,2019,3,'Feb','Italy','Serie A','2018/2019','Genoa','Sassuolo',1,1,2.25,3.25,3.20,'X'),(16,2019,3,'Feb','Italy','Serie A','2018/2019','Udinese','Fiorentina',1,1,2.87,3.25,2.45,'X'),(17,2019,3,'Feb','Italy','Serie A','2018/2019','Spal','Torino',0,0,2.87,3.2,2.50,'X'),(18,2019,2,'Feb','Italy','Serie A','2018/2019','Juventus','Parma',3,3,1.22,6,13.00,'X'),(19,2019,2,'Feb','Italy','Serie A','2018/2019','Napoli','Sampdoria',3,0,1.30,5,10.00,'H'),(20,2019,2,'Feb','Italy','Serie A','2018/2019','Empoli','Chievo',2,2,1.95,3.3,4.00,'X');
/*!40000 ALTER TABLE `calcio` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `hockey` WRITE;
/*!40000 ALTER TABLE `hockey` DISABLE KEYS */;
INSERT INTO `hockey` VALUES (1,2019,11,'Feb','Russia','KHL','2018/2019','Dinamo Riga','Jokerit',3,1,'H',3.44,1.9),(2,2019,11,'Feb','Russia','KHL','2018/2019','Slovan Bratislava','CSKA Moscow',1,4,'A',9.6,1.23),(3,2019,11,'Feb','Russia','KHL','2018/2019','Din. Minsk','Lokomotiv Yaroslavl',0,3,'A',4.55,1.62),(4,2019,11,'Feb','Russia','KHL','2018/2019','SKA St. Petersburg','Cherepovets',4,1,'H',1.21,11.25),(5,2019,11,'Feb','Russia','KHL','2018/2019','Sochi','Podolsk',3,2,'H',2,3.18),(6,2019,11,'Feb','Russia','KHL','2018/2019','Sp. Moscow','Dyn. Moscow',1,5,'A',2.49,2.49),(7,2019,11,'Feb','Russia','KHL','2018/2019','Tractor Chelyabinsk','Niznekamsk',1,3,'A',2.13,3.02),(8,2019,11,'Feb','Russia','KHL','2018/2019','Yekaterinburg','Nizhny Novgorod',6,5,'H',1.51,5),(9,2019,6,'Feb','Russia','KHL','2018/2019','Vladivostok','Kunlun',3,2,'H',2.16,2.72),(10,2019,5,'Feb','Russia','KHL','2018/2019','Sp. Moscow','Sochi',3,1,'H',2.07,3.05),(11,2019,5,'Feb','Russia','KHL','2018/2019','Bars Kazan','Nizhny Novgorod',5,1,'H',1.52,5.2),(12,2019,4,'Feb','Russia','KHL','2018/2019','Slovan Bratislava','Dinamo Riga',2,1,'H',3.18,1.97),(13,2019,4,'Feb','Russia','KHL','2018/2019','Avangard Omsk','SKA St. Petersburg',2,0,'H',3.6,1.82),(14,2019,4,'Feb','Russia','KHL','2018/2019','Din. Minsk','CSKA Moscow',0,3,'A',6.3,1.44),(15,2019,4,'Feb','Russia','KHL','2018/2019','Podolsk','Vladivostok',0,4,'A',1.68,4.1),(16,2019,4,'Feb','Russia','KHL','2018/2019','Cherepovets','Amur Khabarovsk',5,0,'H',1.96,3.15),(17,2019,4,'Feb','Russia','KHL','2018/2019','Salavat Ufa','Barys Astana',2,3,'A',2.23,2.67),(18,2019,4,'Feb','Russia','KHL','2018/2019','Tractor Chelyabinsk','Jokerit',0,1,'A',3.58,1.88),(19,2019,4,'Feb','Russia','KHL','2018/2019','Yekaterinburg','Metallurg Magnitogorsk',2,3,'A',1.96,3.26),(20,2019,4,'Feb','Russia','KHL','2018/2019','Sibir Novosibirsk','Kunlun',3,2,'H',2.08,2.9),(21,2019,3,'Feb','Russia','KHL','2018/2019','Nizhny Novgorod','Niznekamsk',2,3,'A',2.06,2.8),(22,2019,3,'Feb','Russia','KHL','2018/2019','Sochi','Lokomotiv Yaroslavl',3,4,'A',2.8,2.2),(23,2019,2,'Feb','Russia','KHL','2018/2019','Sp. Moscow','Bars Kazan',3,5,'A',2.88,2.16),(24,2019,2,'Feb','Russia','KHL','2018/2019','Din. Minsk','Dinamo Riga',3,1,'H',3.02,2.13),(25,2019,2,'Feb','Russia','KHL','2018/2019','Dyn. Moscow','Vladivostok',0,3,'A',1.46,5.75),(26,2019,2,'Feb','Russia','KHL','2018/2019','Cherepovets','CSKA Moscow',0,4,'A',7.5,1.33),(27,2019,2,'Feb','Russia','KHL','2018/2019','Tractor Chelyabinsk','Metallurg Magnitogorsk',3,1,'H',3.06,2.09),(28,2019,2,'Feb','Russia','KHL','2018/2019','Yekaterinburg','Podolsk',2,1,'H',1.47,5.6),(29,2019,2,'Feb','Russia','KHL','2018/2019','Salavat Ufa','Amur Khabarovsk',3,1,'H',1.46,5.7),(30,2019,2,'Feb','Russia','KHL','2018/2019','Barys Astana','Jokerit',8,2,'H',2.42,2.44),(31,2019,2,'Feb','Russia','KHL','2018/2019','Sibir Novosibirsk','SKA St. Petersburg',1,0,'H',6.9,1.35),(32,2019,1,'Feb','Russia','KHL','2018/2019','Nizhny Novgorod','Lokomotiv Yaroslavl',3,2,'H',3.25,1.95);
/*!40000 ALTER TABLE `hockey` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `nba` WRITE;
/*!40000 ALTER TABLE `nba` DISABLE KEYS */;
INSERT INTO `nba` VALUES (1,2019,11,'Feb','USA','NBA','2018/2019','Golden State Warriors','Miami Heat',120,118,1.07,9.50,'H'),(2,2019,10,'Feb','USA','NBA','2018/2019','Atlanta Hawks','Orlando Magic',108,124,2.20,1.71,'A'),(3,2019,10,'Feb','USA','NBA','2018/2019','Sacramento Kings','Phoenix Suns',117,104,1.26,4.00,'H'),(4,2019,10,'Feb','USA','NBA','2018/2019','Philadelphia 76ers','Los Angeles Lakers',143,120,1.34,3.35,'H'),(5,2019,10,'Feb','USA','NBA','2018/2019','Dallas Mavericks','Portland Trail Blazers',102,101,1.74,2.15,'H'),(6,2019,10,'Feb','USA','NBA','2018/2019','Milwaukee Bucks','Orlando Magic',83,103,1.12,6.50,'A'),(7,2019,10,'Feb','USA','NBA','2018/2019','Houston Rockets','Oklahoma City Thunder',112,117,1.80,2.05,'A'),(8,2019,10,'Feb','USA','NBA','2018/2019','Boston Celtics','Los Angeles Clippers',112,123,1.11,6.75,'A'),(9,2019,10,'Feb','USA','NBA','2018/2019','Chicago Bulls','Washington Wizards',125,134,2.00,1.83,'A'),(10,2019,10,'Feb','USA','NBA','2018/2019','Memphis Grizzlies','New Orleans Pelicans',99,90,1.80,2.05,'H'),(11,2019,10,'Feb','USA','NBA','2018/2019','Atlanta Hawks','Charlotte Hornets',120,129,2.20,1.71,'A'),(12,2019,10,'Feb','USA','NBA','2018/2019','New York Knicks','Toronto Raptors',99,104,5.25,1.18,'A'),(13,2019,9,'Feb','USA','NBA','2018/2019','Indiana Pacers','Cleveland Cavaliers',105,90,1.05,11.00,'H'),(14,2019,9,'Feb','USA','NBA','2018/2019','Utah Jazz','San Antonio Spurs',125,105,1.40,3.05,'H'),(15,2019,9,'Feb','USA','NBA','2018/2019','Sacramento Kings','Miami Heat',102,96,1.68,2.25,'H'),(16,2019,9,'Feb','USA','NBA','2018/2019','New Orleans Pelicans','Minnesota Timberwolves',122,117,1.44,2.85,'H'),(17,2019,9,'Feb','USA','NBA','2018/2019','Phoenix Suns','Golden State Warriors',107,117,9.00,1.07,'A'),(18,2019,9,'Feb','USA','NBA','2018/2019','Dallas Mavericks','Milwaukee Bucks',107,122,3.90,1.27,'A'),(19,2019,9,'Feb','USA','NBA','2018/2019','Brooklyn Nets','Chicago Bulls',106,125,1.25,4.20,'A'),(20,2019,9,'Feb','USA','NBA','2018/2019','Detroit Pistons','New York Knicks',120,103,1.26,4.00,'H'),(21,2019,9,'Feb','USA','NBA','2018/2019','Philadelphia 76ers','Denver Nuggets',117,110,1.50,2.70,'H'),(22,2019,8,'Feb','USA','NBA','2018/2019','Washington Wizards','Cleveland Cavaliers',119,106,1.16,5.50,'H'),(23,2019,8,'Feb','USA','NBA','2018/2019','Portland Trail Blazers','San Antonio Spurs',127,118,1.45,2.80,'H'),(24,2019,8,'Feb','USA','NBA','2018/2019','Boston Celtics','Los Angeles Lakers',128,129,1.32,3.50,'A'),(25,2019,8,'Feb','USA','NBA','2018/2019','Oklahoma City Thunder','Memphis Grizzlies',117,95,1.05,11.00,'H'),(26,2019,8,'Feb','USA','NBA','2018/2019','Atlanta Hawks','Toronto Raptors',101,119,4.25,1.23,'A'),(27,2019,8,'Feb','USA','NBA','2018/2019','Indiana Pacers','Los Angeles Clippers',116,92,1.44,2.85,'H'),(28,2019,7,'Feb','USA','NBA','2018/2019','Orlando Magic','Minnesota Timberwolves',122,112,1.71,2.20,'H'),(29,2019,7,'Feb','USA','NBA','2018/2019','Golden State Warriors','San Antonio Spurs',141,102,1.13,6.25,'H'),(30,2019,7,'Feb','USA','NBA','2018/2019','Sacramento Kings','Houston Rockets',101,127,2.10,1.76,'A'),(31,2019,7,'Feb','USA','NBA','2018/2019','Utah Jazz','Phoenix Suns',116,88,1.05,11.00,'H'),(32,2019,7,'Feb','USA','NBA','2018/2019','Dallas Mavericks','Charlotte Hornets',99,93,1.45,2.80,'H'),(33,2019,7,'Feb','USA','NBA','2018/2019','Chicago Bulls','New Orleans Pelicans',120,125,1.83,2.00,'A'),(34,2019,7,'Feb','USA','NBA','2018/2019','Milwaukee Bucks','Washington Wizards',148,129,1.11,6.75,'H'),(35,2019,6,'Feb','USA','NBA','2018/2019','Brooklyn Nets','Denver Nuggets',135,130,2.10,1.76,'H'),(36,2019,6,'Feb','USA','NBA','2018/2019','Portland Trail Blazers','Miami Heat',108,118,1.32,3.45,'A'),(37,2019,6,'Feb','USA','NBA','2018/2019','Memphis Grizzlies','Minnesota Timberwolves',108,106,1.95,1.86,'H'),(38,2019,6,'Feb','USA','NBA','2018/2019','Oklahoma City Thunder','Orlando Magic',132,122,1.20,4.75,'H'),(39,2019,6,'Feb','USA','NBA','2018/2019','Philadelphia 76ers','Toronto Raptors',107,119,1.52,2.67,'A'),(40,2019,6,'Feb','USA','NBA','2018/2019','New York Knicks','Detroit Pistons',92,105,2.45,1.60,'A'),(41,2019,6,'Feb','USA','NBA','2018/2019','Charlotte Hornets','Los Angeles Clippers',115,117,1.76,2.10,'A'),(42,2019,6,'Feb','USA','NBA','2018/2019','Cleveland Cavaliers','Boston Celtics',96,103,8.00,1.09,'A'),(43,2019,5,'Feb','USA','NBA','2018/2019','Indiana Pacers','Los Angeles Lakers',136,94,2.35,1.64,'H'),(44,2019,5,'Feb','USA','NBA','2018/2019','Sacramento Kings','San Antonio Spurs',127,112,2.05,1.80,'H'),(45,2019,5,'Feb','USA','NBA','2018/2019','Phoenix Suns','Houston Rockets',110,118,4.00,1.26,'A'),(46,2019,5,'Feb','USA','NBA','2018/2019','New Orleans Pelicans','Indiana Pacers',107,109,1.95,1.86,'A'),(47,2019,5,'Feb','USA','NBA','2018/2019','Brooklyn Nets','Milwaukee Bucks',94,113,3.40,1.33,'A'),(48,2019,5,'Feb','USA','NBA','2018/2019','Detroit Pistons','Denver Nuggets',129,103,2.50,1.58,'H'),(49,2019,3,'Feb','USA','NBA','2018/2019','Washington Wizards','Atlanta Hawks',129,137,1.40,3.05,'A'),(50,2019,3,'Feb','USA','NBA','2018/2019','Toronto Raptors','Los Angeles Clippers',121,103,1.19,5.00,'H'),(51,2019,3,'Feb','USA','NBA','2018/2019','Boston Celtics','Oklahoma City Thunder',134,129,1.66,2.30,'H'),(52,2019,3,'Feb','USA','NBA','2018/2019','New York Knicks','Memphis Grizzlies',84,96,2.25,1.68,'A'),(53,2019,3,'Feb','USA','NBA','2018/2019','Sacramento Kings','Philadelphia 76ers',115,108,2.40,1.62,'H'),(54,2019,3,'Feb','USA','NBA','2018/2019','Minnesota Timberwolves','Denver Nuggets',106,107,1.95,1.86,'A'),(55,2019,3,'Feb','USA','NBA','2018/2019','Phoenix Suns','Atlanta Hawks',112,118,1.71,2.20,'A'),(56,2019,3,'Feb','USA','NBA','2018/2019','Utah Jazz','Houston Rockets',98,125,1.35,3.30,'A'),(57,2019,3,'Feb','USA','NBA','2018/2019','Golden State Warriors','Los Angeles Lakers',115,101,1.18,5.25,'H'),(58,2019,3,'Feb','USA','NBA','2018/2019','San Antonio Spurs','New Orleans Pelicans',113,108,1.16,5.50,'H'),(59,2019,3,'Feb','USA','NBA','2018/2019','Cleveland Cavaliers','Dallas Mavericks',98,111,4.50,1.22,'A'),(60,2019,3,'Feb','USA','NBA','2018/2019','Miami Heat','Indiana Pacers',88,95,1.66,2.30,'A'),(61,2019,3,'Feb','USA','NBA','2018/2019','Charlotte Hornets','Chicago Bulls',125,118,1.38,3.15,'H'),(62,2019,3,'Feb','USA','NBA','2018/2019','Orlando Magic','Brooklyn Nets',102,89,1.76,2.10,'H'),(63,2019,2,'Feb','USA','NBA','2018/2019','Washington Wizards','Milwaukee Bucks',115,131,3.15,1.38,'A'),(64,2019,2,'Feb','USA','NBA','2018/2019','Detroit Pistons','Los Angeles Clippers',101,111,1.83,2.00,'A'),(65,2019,2,'Feb','USA','NBA','2018/2019','Denver Nuggets','Houston Rockets',136,122,1.54,2.65,'H'),(66,2019,2,'Feb','USA','NBA','2018/2019','Utah Jazz','Atlanta Hawks',128,112,1.12,6.50,'H'),(67,2019,2,'Feb','USA','NBA','2018/2019','Miami Heat','Oklahoma City Thunder',102,118,2.30,1.66,'A'),(68,2019,2,'Feb','USA','NBA','2018/2019','New York Knicks','Boston Celtics',99,113,10.00,1.06,'A'),(69,2019,1,'Feb','USA','NBA','2018/2019','Charlotte Hornets','Memphis Grizzlies',100,92,1.43,2.90,'H'),(70,2019,1,'Feb','USA','NBA','2018/2019','Golden State Warriors','Philadelphia 76ers',104,113,1.20,4.75,'A'),(71,2019,1,'Feb','USA','NBA','2018/2019','Los Angeles Clippers','Los Angeles Lakers',120,123,1.43,2.90,'A'),(72,2019,1,'Feb','USA','NBA','2018/2019','San Antonio Spurs','Brooklyn Nets',117,114,1.32,3.50,'H'),(73,2019,1,'Feb','USA','NBA','2018/2019','Toronto Raptors','Milwaukee Bucks',92,105,1.71,2.20,'A'),(74,2019,1,'Feb','USA','NBA','2018/2019','Detroit Pistons','Dallas Mavericks',93,89,1.74,2.15,'H');
/*!40000 ALTER TABLE `nba` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `schedina` WRITE;
/*!40000 ALTER TABLE `schedina` DISABLE KEYS */;
INSERT INTO `schedina` VALUES (1,1,21.50,2.00,23.00,'vincente',NULL);
/*!40000 ALTER TABLE `schedina` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `utenti` WRITE;
/*!40000 ALTER TABLE `utenti` DISABLE KEYS */;
INSERT INTO `utenti` VALUES (1,'massimo','fontana','massimo@gmail.com','password',0.00,0.00),(3,'mario','fontana','mario@gmail.com','password',0.00,0.00);
/*!40000 ALTER TABLE `utenti` ENABLE KEYS */;
UNLOCK TABLES;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;


