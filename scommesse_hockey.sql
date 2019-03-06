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
-- Table structure for table `hockey`
--

DROP TABLE IF EXISTS `hockey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `hockey` (
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
  `2` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hockey`
--

LOCK TABLES `hockey` WRITE;
/*!40000 ALTER TABLE `hockey` DISABLE KEYS */;
INSERT INTO `hockey` VALUES (2019,11,'Feb','Russia','KHL','2018/2019','Dinamo Riga','Jokerit',3,1,'H',3.44,1.9),(2019,11,'Feb','Russia','KHL','2018/2019','Slovan Bratislava','CSKA Moscow',1,4,'A',9.6,1.23),(2019,11,'Feb','Russia','KHL','2018/2019','Din. Minsk','Lokomotiv Yaroslavl',0,3,'A',4.55,1.62),(2019,11,'Feb','Russia','KHL','2018/2019','SKA St. Petersburg','Cherepovets',4,1,'H',1.21,11.25),(2019,11,'Feb','Russia','KHL','2018/2019','Sochi','Podolsk',3,2,'H',2,3.18),(2019,11,'Feb','Russia','KHL','2018/2019','Sp. Moscow','Dyn. Moscow',1,5,'A',2.49,2.49),(2019,11,'Feb','Russia','KHL','2018/2019','Tractor Chelyabinsk','Niznekamsk',1,3,'A',2.13,3.02),(2019,11,'Feb','Russia','KHL','2018/2019','Yekaterinburg','Nizhny Novgorod',6,5,'H',1.51,5),(2019,6,'Feb','Russia','KHL','2018/2019','Vladivostok','Kunlun',3,2,'H',2.16,2.72),(2019,5,'Feb','Russia','KHL','2018/2019','Sp. Moscow','Sochi',3,1,'H',2.07,3.05),(2019,5,'Feb','Russia','KHL','2018/2019','Bars Kazan','Nizhny Novgorod',5,1,'H',1.52,5.2),(2019,4,'Feb','Russia','KHL','2018/2019','Slovan Bratislava','Dinamo Riga',2,1,'H',3.18,1.97),(2019,4,'Feb','Russia','KHL','2018/2019','Avangard Omsk','SKA St. Petersburg',2,0,'H',3.6,1.82),(2019,4,'Feb','Russia','KHL','2018/2019','Din. Minsk','CSKA Moscow',0,3,'A',6.3,1.44),(2019,4,'Feb','Russia','KHL','2018/2019','Podolsk','Vladivostok',0,4,'A',1.68,4.1),(2019,4,'Feb','Russia','KHL','2018/2019','Cherepovets','Amur Khabarovsk',5,0,'H',1.96,3.15),(2019,4,'Feb','Russia','KHL','2018/2019','Salavat Ufa','Barys Astana',2,3,'A',2.23,2.67),(2019,4,'Feb','Russia','KHL','2018/2019','Tractor Chelyabinsk','Jokerit',0,1,'A',3.58,1.88),(2019,4,'Feb','Russia','KHL','2018/2019','Yekaterinburg','Metallurg Magnitogorsk',2,3,'A',1.96,3.26),(2019,4,'Feb','Russia','KHL','2018/2019','Sibir Novosibirsk','Kunlun',3,2,'H',2.08,2.9),(2019,3,'Feb','Russia','KHL','2018/2019','Nizhny Novgorod','Niznekamsk',2,3,'A',2.06,2.8),(2019,3,'Feb','Russia','KHL','2018/2019','Sochi','Lokomotiv Yaroslavl',3,4,'A',2.8,2.2),(2019,2,'Feb','Russia','KHL','2018/2019','Sp. Moscow','Bars Kazan',3,5,'A',2.88,2.16),(2019,2,'Feb','Russia','KHL','2018/2019','Din. Minsk','Dinamo Riga',3,1,'H',3.02,2.13),(2019,2,'Feb','Russia','KHL','2018/2019','Dyn. Moscow','Vladivostok',0,3,'A',1.46,5.75),(2019,2,'Feb','Russia','KHL','2018/2019','Cherepovets','CSKA Moscow',0,4,'A',7.5,1.33),(2019,2,'Feb','Russia','KHL','2018/2019','Tractor Chelyabinsk','Metallurg Magnitogorsk',3,1,'H',3.06,2.09),(2019,2,'Feb','Russia','KHL','2018/2019','Yekaterinburg','Podolsk',2,1,'H',1.47,5.6),(2019,2,'Feb','Russia','KHL','2018/2019','Salavat Ufa','Amur Khabarovsk',3,1,'H',1.46,5.7),(2019,2,'Feb','Russia','KHL','2018/2019','Barys Astana','Jokerit',8,2,'H',2.42,2.44),(2019,2,'Feb','Russia','KHL','2018/2019','Sibir Novosibirsk','SKA St. Petersburg',1,0,'H',6.9,1.35),(2019,1,'Feb','Russia','KHL','2018/2019','Nizhny Novgorod','Lokomotiv Yaroslavl',3,2,'H',3.25,1.95);
/*!40000 ALTER TABLE `hockey` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-06 11:50:42
