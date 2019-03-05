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
  `anno` int(11) DEFAULT NULL,
  `giorno` int(11) DEFAULT NULL,
  `mese` text,
  `id` text,
  `paese` text,
  `lega` text,
  `stagione` text,
  `casa` text,
  `trasferta` text,
  `risultato_casa` int(11) DEFAULT NULL,
  `risultato_trasferta` int(11) DEFAULT NULL,
  `1` double DEFAULT NULL,
  `x` double DEFAULT NULL,
  `2` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calcio`
--

LOCK TABLES `calcio` WRITE;
/*!40000 ALTER TABLE `calcio` DISABLE KEYS */;
INSERT INTO `calcio` VALUES (2019,10,'Feb','ITA D1','Italy','Serie A','2018/2019','AC Milan','Cagliari',3,0,1.4,4.33,8),(2019,10,'Feb','ITA D1','Italy','Serie A','2018/2019','Sassuolo','Juventus',0,3,6.5,3.6,1.57),(2019,10,'Feb','ITA D1','Italy','Serie A','2018/2019','Atalanta','Spal',2,1,1.36,4.75,8.5),(2019,10,'Feb','ITA D1','Italy','Serie A','2018/2019','Sampdoria','Frosinone',0,1,1.57,3.75,6),(2019,10,'Feb','ITA D1','Italy','Serie A','2018/2019','Torino','Udinese',1,0,1.66,3.6,5.25),(2019,10,'Feb','ITA D1','Italy','Serie A','2018/2019','Bologna','Genoa',1,1,2.3,3.1,3.25),(2019,9,'Feb','ITA D1','Italy','Serie A','2018/2019','Parma','Inter',0,1,4.75,3.6,1.72),(2019,9,'Feb','ITA D1','Italy','Serie A','2018/2019','Fiorentina','Napoli',0,0,3.6,3.3,2.05),(2019,8,'Feb','ITA D1','Italy','Serie A','2018/2019','Chievo','AS Roma',0,3,5.25,3.6,1.66),(2019,7,'Feb','ITA D1','Italy','Serie A','2018/2019','Lazio','Empoli',1,0,1.3,5,10),(2019,4,'Feb','ITA D1','Italy','Serie A','2018/2019','Cagliari','Atalanta',0,1,3.9,3.5,1.9),(2019,4,'Feb','ITA D1','Italy','Serie A','2018/2019','Frosinone','Lazio',0,1,7.5,4.1,1.44),(2019,3,'Feb','ITA D1','Italy','Serie A','2018/2019','AS Roma','AC Milan',1,1,2,3.5,3.6),(2019,3,'Feb','ITA D1','Italy','Serie A','2018/2019','Inter','Bologna',0,1,1.3,4.5,13),(2019,3,'Feb','ITA D1','Italy','Serie A','2018/2019','Genoa','Sassuolo',1,1,2.25,3.25,3.2),(2019,3,'Feb','ITA D1','Italy','Serie A','2018/2019','Udinese','Fiorentina',1,1,2.87,3.25,2.45),(2019,3,'Feb','ITA D1','Italy','Serie A','2018/2019','Spal','Torino',0,0,2.87,3.2,2.5),(2019,2,'Feb','ITA D1','Italy','Serie A','2018/2019','Juventus','Parma',3,3,1.22,6,13),(2019,2,'Feb','ITA D1','Italy','Serie A','2018/2019','Napoli','Sampdoria',3,0,1.3,5,10),(2019,2,'Feb','ITA D1','Italy','Serie A','2018/2019','Empoli','Chievo',2,2,1.95,3.3,4);
/*!40000 ALTER TABLE `calcio` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-05 14:02:00
