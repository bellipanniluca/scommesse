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
-- Table structure for table `nba`
--

DROP TABLE IF EXISTS `nba`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `nba` (
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
  `1` double DEFAULT NULL,
  `2` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nba`
--

LOCK TABLES `nba` WRITE;
/*!40000 ALTER TABLE `nba` DISABLE KEYS */;
INSERT INTO `nba` VALUES (2019,11,'Feb','USA','NBA','2018/2019','Golden State Warriors','Miami Heat',120,118,1.07,9.5),(2019,10,'Feb','USA','NBA','2018/2019','Atlanta Hawks','Orlando Magic',108,124,2.2,1.71),(2019,10,'Feb','USA','NBA','2018/2019','Sacramento Kings','Phoenix Suns',117,104,1.26,4),(2019,10,'Feb','USA','NBA','2018/2019','Philadelphia 76ers','Los Angeles Lakers',143,120,1.34,3.35),(2019,10,'Feb','USA','NBA','2018/2019','Dallas Mavericks','Portland Trail Blazers',102,101,1.74,2.15),(2019,10,'Feb','USA','NBA','2018/2019','Milwaukee Bucks','Orlando Magic',83,103,1.12,6.5),(2019,10,'Feb','USA','NBA','2018/2019','Houston Rockets','Oklahoma City Thunder',112,117,1.8,2.05),(2019,10,'Feb','USA','NBA','2018/2019','Boston Celtics','Los Angeles Clippers',112,123,1.11,6.75),(2019,10,'Feb','USA','NBA','2018/2019','Chicago Bulls','Washington Wizards',125,134,2,1.83),(2019,10,'Feb','USA','NBA','2018/2019','Memphis Grizzlies','New Orleans Pelicans',99,90,1.8,2.05),(2019,10,'Feb','USA','NBA','2018/2019','Atlanta Hawks','Charlotte Hornets',120,129,2.2,1.71),(2019,10,'Feb','USA','NBA','2018/2019','New York Knicks','Toronto Raptors',99,104,5.25,1.18),(2019,9,'Feb','USA','NBA','2018/2019','Indiana Pacers','Cleveland Cavaliers',105,90,1.05,11),(2019,9,'Feb','USA','NBA','2018/2019','Utah Jazz','San Antonio Spurs',125,105,1.4,3.05),(2019,9,'Feb','USA','NBA','2018/2019','Sacramento Kings','Miami Heat',102,96,1.68,2.25),(2019,9,'Feb','USA','NBA','2018/2019','New Orleans Pelicans','Minnesota Timberwolves',122,117,1.44,2.85),(2019,9,'Feb','USA','NBA','2018/2019','Phoenix Suns','Golden State Warriors',107,117,9,1.07),(2019,9,'Feb','USA','NBA','2018/2019','Dallas Mavericks','Milwaukee Bucks',107,122,3.9,1.27),(2019,9,'Feb','USA','NBA','2018/2019','Brooklyn Nets','Chicago Bulls',106,125,1.25,4.2),(2019,9,'Feb','USA','NBA','2018/2019','Detroit Pistons','New York Knicks',120,103,1.26,4),(2019,9,'Feb','USA','NBA','2018/2019','Philadelphia 76ers','Denver Nuggets',117,110,1.5,2.7),(2019,8,'Feb','USA','NBA','2018/2019','Washington Wizards','Cleveland Cavaliers',119,106,1.16,5.5),(2019,8,'Feb','USA','NBA','2018/2019','Portland Trail Blazers','San Antonio Spurs',127,118,1.45,2.8),(2019,8,'Feb','USA','NBA','2018/2019','Boston Celtics','Los Angeles Lakers',128,129,1.32,3.5),(2019,8,'Feb','USA','NBA','2018/2019','Oklahoma City Thunder','Memphis Grizzlies',117,95,1.05,11),(2019,8,'Feb','USA','NBA','2018/2019','Atlanta Hawks','Toronto Raptors',101,119,4.25,1.23),(2019,8,'Feb','USA','NBA','2018/2019','Indiana Pacers','Los Angeles Clippers',116,92,1.44,2.85),(2019,7,'Feb','USA','NBA','2018/2019','Orlando Magic','Minnesota Timberwolves',122,112,1.71,2.2),(2019,7,'Feb','USA','NBA','2018/2019','Golden State Warriors','San Antonio Spurs',141,102,1.13,6.25),(2019,7,'Feb','USA','NBA','2018/2019','Sacramento Kings','Houston Rockets',101,127,2.1,1.76),(2019,7,'Feb','USA','NBA','2018/2019','Utah Jazz','Phoenix Suns',116,88,1.05,11),(2019,7,'Feb','USA','NBA','2018/2019','Dallas Mavericks','Charlotte Hornets',99,93,1.45,2.8),(2019,7,'Feb','USA','NBA','2018/2019','Chicago Bulls','New Orleans Pelicans',120,125,1.83,2),(2019,7,'Feb','USA','NBA','2018/2019','Milwaukee Bucks','Washington Wizards',148,129,1.11,6.75),(2019,6,'Feb','USA','NBA','2018/2019','Brooklyn Nets','Denver Nuggets',135,130,2.1,1.76),(2019,6,'Feb','USA','NBA','2018/2019','Portland Trail Blazers','Miami Heat',108,118,1.32,3.45),(2019,6,'Feb','USA','NBA','2018/2019','Memphis Grizzlies','Minnesota Timberwolves',108,106,1.95,1.86),(2019,6,'Feb','USA','NBA','2018/2019','Oklahoma City Thunder','Orlando Magic',132,122,1.2,4.75),(2019,6,'Feb','USA','NBA','2018/2019','Philadelphia 76ers','Toronto Raptors',107,119,1.52,2.67),(2019,6,'Feb','USA','NBA','2018/2019','New York Knicks','Detroit Pistons',92,105,2.45,1.6),(2019,6,'Feb','USA','NBA','2018/2019','Charlotte Hornets','Los Angeles Clippers',115,117,1.76,2.1),(2019,6,'Feb','USA','NBA','2018/2019','Cleveland Cavaliers','Boston Celtics',96,103,8,1.09),(2019,5,'Feb','USA','NBA','2018/2019','Indiana Pacers','Los Angeles Lakers',136,94,2.35,1.64),(2019,5,'Feb','USA','NBA','2018/2019','Sacramento Kings','San Antonio Spurs',127,112,2.05,1.8),(2019,5,'Feb','USA','NBA','2018/2019','Phoenix Suns','Houston Rockets',110,118,4,1.26),(2019,5,'Feb','USA','NBA','2018/2019','New Orleans Pelicans','Indiana Pacers',107,109,1.95,1.86),(2019,5,'Feb','USA','NBA','2018/2019','Brooklyn Nets','Milwaukee Bucks',94,113,3.4,1.33),(2019,5,'Feb','USA','NBA','2018/2019','Detroit Pistons','Denver Nuggets',129,103,2.5,1.58),(2019,3,'Feb','USA','NBA','2018/2019','Washington Wizards','Atlanta Hawks',129,137,1.4,3.05),(2019,3,'Feb','USA','NBA','2018/2019','Toronto Raptors','Los Angeles Clippers',121,103,1.19,5),(2019,3,'Feb','USA','NBA','2018/2019','Boston Celtics','Oklahoma City Thunder',134,129,1.66,2.3),(2019,3,'Feb','USA','NBA','2018/2019','New York Knicks','Memphis Grizzlies',84,96,2.25,1.68),(2019,3,'Feb','USA','NBA','2018/2019','Sacramento Kings','Philadelphia 76ers',115,108,2.4,1.62),(2019,3,'Feb','USA','NBA','2018/2019','Minnesota Timberwolves','Denver Nuggets',106,107,1.95,1.86),(2019,3,'Feb','USA','NBA','2018/2019','Phoenix Suns','Atlanta Hawks',112,118,1.71,2.2),(2019,3,'Feb','USA','NBA','2018/2019','Utah Jazz','Houston Rockets',98,125,1.35,3.3),(2019,3,'Feb','USA','NBA','2018/2019','Golden State Warriors','Los Angeles Lakers',115,101,1.18,5.25),(2019,3,'Feb','USA','NBA','2018/2019','San Antonio Spurs','New Orleans Pelicans',113,108,1.16,5.5),(2019,3,'Feb','USA','NBA','2018/2019','Cleveland Cavaliers','Dallas Mavericks',98,111,4.5,1.22),(2019,3,'Feb','USA','NBA','2018/2019','Miami Heat','Indiana Pacers',88,95,1.66,2.3),(2019,3,'Feb','USA','NBA','2018/2019','Charlotte Hornets','Chicago Bulls',125,118,1.38,3.15),(2019,3,'Feb','USA','NBA','2018/2019','Orlando Magic','Brooklyn Nets',102,89,1.76,2.1),(2019,2,'Feb','USA','NBA','2018/2019','Washington Wizards','Milwaukee Bucks',115,131,3.15,1.38),(2019,2,'Feb','USA','NBA','2018/2019','Detroit Pistons','Los Angeles Clippers',101,111,1.83,2),(2019,2,'Feb','USA','NBA','2018/2019','Denver Nuggets','Houston Rockets',136,122,1.54,2.65),(2019,2,'Feb','USA','NBA','2018/2019','Utah Jazz','Atlanta Hawks',128,112,1.12,6.5),(2019,2,'Feb','USA','NBA','2018/2019','Miami Heat','Oklahoma City Thunder',102,118,2.3,1.66),(2019,2,'Feb','USA','NBA','2018/2019','New York Knicks','Boston Celtics',99,113,10,1.06),(2019,1,'Feb','USA','NBA','2018/2019','Charlotte Hornets','Memphis Grizzlies',100,92,1.43,2.9),(2019,1,'Feb','USA','NBA','2018/2019','Golden State Warriors','Philadelphia 76ers',104,113,1.2,4.75),(2019,1,'Feb','USA','NBA','2018/2019','Los Angeles Clippers','Los Angeles Lakers',120,123,1.43,2.9),(2019,1,'Feb','USA','NBA','2018/2019','San Antonio Spurs','Brooklyn Nets',117,114,1.32,3.5),(2019,1,'Feb','USA','NBA','2018/2019','Toronto Raptors','Milwaukee Bucks',92,105,1.71,2.2),(2019,1,'Feb','USA','NBA','2018/2019','Detroit Pistons','Dallas Mavericks',93,89,1.74,2.15);
/*!40000 ALTER TABLE `nba` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-06 11:50:41
