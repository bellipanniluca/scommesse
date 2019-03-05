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
  `1` bigint(20) DEFAULT NULL,
  `2` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nba`
--

LOCK TABLES `nba` WRITE;
/*!40000 ALTER TABLE `nba` DISABLE KEYS */;
INSERT INTO `nba` VALUES (2019,11,'Feb','USA','NBA','2018/2019','Golden State Warriors','Miami Heat',120,118,1,10),(2019,10,'Feb','USA','NBA','2018/2019','Atlanta Hawks','Orlando Magic',108,124,2,2),(2019,10,'Feb','USA','NBA','2018/2019','Sacramento Kings','Phoenix Suns',117,104,1,4),(2019,10,'Feb','USA','NBA','2018/2019','Philadelphia 76ers','Los Angeles Lakers',143,120,1,3),(2019,10,'Feb','USA','NBA','2018/2019','Dallas Mavericks','Portland Trail Blazers',102,101,2,2),(2019,10,'Feb','USA','NBA','2018/2019','Milwaukee Bucks','Orlando Magic',83,103,1,7),(2019,10,'Feb','USA','NBA','2018/2019','Houston Rockets','Oklahoma City Thunder',112,117,2,2),(2019,10,'Feb','USA','NBA','2018/2019','Boston Celtics','Los Angeles Clippers',112,123,1,7),(2019,10,'Feb','USA','NBA','2018/2019','Chicago Bulls','Washington Wizards',125,134,2,2),(2019,10,'Feb','USA','NBA','2018/2019','Memphis Grizzlies','New Orleans Pelicans',99,90,2,2),(2019,10,'Feb','USA','NBA','2018/2019','Atlanta Hawks','Charlotte Hornets',120,129,2,2),(2019,10,'Feb','USA','NBA','2018/2019','New York Knicks','Toronto Raptors',99,104,5,1),(2019,9,'Feb','USA','NBA','2018/2019','Indiana Pacers','Cleveland Cavaliers',105,90,1,11),(2019,9,'Feb','USA','NBA','2018/2019','Utah Jazz','San Antonio Spurs',125,105,1,3),(2019,9,'Feb','USA','NBA','2018/2019','Sacramento Kings','Miami Heat',102,96,2,2),(2019,9,'Feb','USA','NBA','2018/2019','New Orleans Pelicans','Minnesota Timberwolves',122,117,1,3),(2019,9,'Feb','USA','NBA','2018/2019','Phoenix Suns','Golden State Warriors',107,117,9,1),(2019,9,'Feb','USA','NBA','2018/2019','Dallas Mavericks','Milwaukee Bucks',107,122,4,1),(2019,9,'Feb','USA','NBA','2018/2019','Brooklyn Nets','Chicago Bulls',106,125,1,4),(2019,9,'Feb','USA','NBA','2018/2019','Detroit Pistons','New York Knicks',120,103,1,4),(2019,9,'Feb','USA','NBA','2018/2019','Philadelphia 76ers','Denver Nuggets',117,110,2,3),(2019,8,'Feb','USA','NBA','2018/2019','Washington Wizards','Cleveland Cavaliers',119,106,1,6),(2019,8,'Feb','USA','NBA','2018/2019','Portland Trail Blazers','San Antonio Spurs',127,118,1,3),(2019,8,'Feb','USA','NBA','2018/2019','Boston Celtics','Los Angeles Lakers',128,129,1,4),(2019,8,'Feb','USA','NBA','2018/2019','Oklahoma City Thunder','Memphis Grizzlies',117,95,1,11),(2019,8,'Feb','USA','NBA','2018/2019','Atlanta Hawks','Toronto Raptors',101,119,4,1),(2019,8,'Feb','USA','NBA','2018/2019','Indiana Pacers','Los Angeles Clippers',116,92,1,3),(2019,7,'Feb','USA','NBA','2018/2019','Orlando Magic','Minnesota Timberwolves',122,112,2,2),(2019,7,'Feb','USA','NBA','2018/2019','Golden State Warriors','San Antonio Spurs',141,102,1,6),(2019,7,'Feb','USA','NBA','2018/2019','Sacramento Kings','Houston Rockets',101,127,2,2),(2019,7,'Feb','USA','NBA','2018/2019','Utah Jazz','Phoenix Suns',116,88,1,11),(2019,7,'Feb','USA','NBA','2018/2019','Dallas Mavericks','Charlotte Hornets',99,93,1,3),(2019,7,'Feb','USA','NBA','2018/2019','Chicago Bulls','New Orleans Pelicans',120,125,2,2),(2019,7,'Feb','USA','NBA','2018/2019','Milwaukee Bucks','Washington Wizards',148,129,1,7),(2019,6,'Feb','USA','NBA','2018/2019','Brooklyn Nets','Denver Nuggets',135,130,2,2),(2019,6,'Feb','USA','NBA','2018/2019','Portland Trail Blazers','Miami Heat',108,118,1,3),(2019,6,'Feb','USA','NBA','2018/2019','Memphis Grizzlies','Minnesota Timberwolves',108,106,2,2),(2019,6,'Feb','USA','NBA','2018/2019','Oklahoma City Thunder','Orlando Magic',132,122,1,5),(2019,6,'Feb','USA','NBA','2018/2019','Philadelphia 76ers','Toronto Raptors',107,119,2,3),(2019,6,'Feb','USA','NBA','2018/2019','New York Knicks','Detroit Pistons',92,105,2,2),(2019,6,'Feb','USA','NBA','2018/2019','Charlotte Hornets','Los Angeles Clippers',115,117,2,2),(2019,6,'Feb','USA','NBA','2018/2019','Cleveland Cavaliers','Boston Celtics',96,103,8,1),(2019,5,'Feb','USA','NBA','2018/2019','Indiana Pacers','Los Angeles Lakers',136,94,2,2),(2019,5,'Feb','USA','NBA','2018/2019','Sacramento Kings','San Antonio Spurs',127,112,2,2),(2019,5,'Feb','USA','NBA','2018/2019','Phoenix Suns','Houston Rockets',110,118,4,1),(2019,5,'Feb','USA','NBA','2018/2019','New Orleans Pelicans','Indiana Pacers',107,109,2,2),(2019,5,'Feb','USA','NBA','2018/2019','Brooklyn Nets','Milwaukee Bucks',94,113,3,1),(2019,5,'Feb','USA','NBA','2018/2019','Detroit Pistons','Denver Nuggets',129,103,3,2),(2019,3,'Feb','USA','NBA','2018/2019','Washington Wizards','Atlanta Hawks',129,137,1,3),(2019,3,'Feb','USA','NBA','2018/2019','Toronto Raptors','Los Angeles Clippers',121,103,1,5),(2019,3,'Feb','USA','NBA','2018/2019','Boston Celtics','Oklahoma City Thunder',134,129,2,2),(2019,3,'Feb','USA','NBA','2018/2019','New York Knicks','Memphis Grizzlies',84,96,2,2),(2019,3,'Feb','USA','NBA','2018/2019','Sacramento Kings','Philadelphia 76ers',115,108,2,2),(2019,3,'Feb','USA','NBA','2018/2019','Minnesota Timberwolves','Denver Nuggets',106,107,2,2),(2019,3,'Feb','USA','NBA','2018/2019','Phoenix Suns','Atlanta Hawks',112,118,2,2),(2019,3,'Feb','USA','NBA','2018/2019','Utah Jazz','Houston Rockets',98,125,1,3),(2019,3,'Feb','USA','NBA','2018/2019','Golden State Warriors','Los Angeles Lakers',115,101,1,5),(2019,3,'Feb','USA','NBA','2018/2019','San Antonio Spurs','New Orleans Pelicans',113,108,1,6),(2019,3,'Feb','USA','NBA','2018/2019','Cleveland Cavaliers','Dallas Mavericks',98,111,5,1),(2019,3,'Feb','USA','NBA','2018/2019','Miami Heat','Indiana Pacers',88,95,2,2),(2019,3,'Feb','USA','NBA','2018/2019','Charlotte Hornets','Chicago Bulls',125,118,1,3),(2019,3,'Feb','USA','NBA','2018/2019','Orlando Magic','Brooklyn Nets',102,89,2,2),(2019,2,'Feb','USA','NBA','2018/2019','Washington Wizards','Milwaukee Bucks',115,131,3,1),(2019,2,'Feb','USA','NBA','2018/2019','Detroit Pistons','Los Angeles Clippers',101,111,2,2),(2019,2,'Feb','USA','NBA','2018/2019','Denver Nuggets','Houston Rockets',136,122,2,3),(2019,2,'Feb','USA','NBA','2018/2019','Utah Jazz','Atlanta Hawks',128,112,1,7),(2019,2,'Feb','USA','NBA','2018/2019','Miami Heat','Oklahoma City Thunder',102,118,2,2),(2019,2,'Feb','USA','NBA','2018/2019','New York Knicks','Boston Celtics',99,113,10,1),(2019,1,'Feb','USA','NBA','2018/2019','Charlotte Hornets','Memphis Grizzlies',100,92,1,3),(2019,1,'Feb','USA','NBA','2018/2019','Golden State Warriors','Philadelphia 76ers',104,113,1,5),(2019,1,'Feb','USA','NBA','2018/2019','Los Angeles Clippers','Los Angeles Lakers',120,123,1,3),(2019,1,'Feb','USA','NBA','2018/2019','San Antonio Spurs','Brooklyn Nets',117,114,1,4),(2019,1,'Feb','USA','NBA','2018/2019','Toronto Raptors','Milwaukee Bucks',92,105,2,2),(2019,1,'Feb','USA','NBA','2018/2019','Detroit Pistons','Dallas Mavericks',93,89,2,2);
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

-- Dump completed on 2019-03-05 14:02:00
