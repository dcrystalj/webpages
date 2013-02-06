CREATE DATABASE  IF NOT EXISTS `tt3710_rails` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `tt3710_rails`;
-- MySQL dump 10.13  Distrib 5.5.16, for Win32 (x86)
--
-- Host: mysql.lrk.si    Database: tt3710_rails
-- ------------------------------------------------------
-- Server version	5.1.66

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
-- Table structure for table `exams`
--

DROP TABLE IF EXISTS `exams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` int(11) DEFAULT NULL,
  `user` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exams`
--

LOCK TABLES `exams` WRITE;
/*!40000 ALTER TABLE `exams` DISABLE KEYS */;
/*!40000 ALTER TABLE `exams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marks`
--

DROP TABLE IF EXISTS `marks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` int(11) DEFAULT NULL,
  `user` int(11) DEFAULT NULL,
  `mark` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marks`
--

LOCK TABLES `marks` WRITE;
/*!40000 ALTER TABLE `marks` DISABLE KEYS */;
INSERT INTO `marks` VALUES (1,63204,63100200,5,1,'2012-12-26 11:57:14','2012-12-26 11:57:14'),(2,63202,63100200,6,2,'2012-12-26 11:57:14','2012-12-26 11:57:14');
/*!40000 ALTER TABLE `marks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20121226113126'),('20121226181424'),('20121226181834'),('20121226230710');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subjects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `examon` int(11) DEFAULT NULL,
  `subjectid` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjects`
--

LOCK TABLES `subjects` WRITE;
/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
INSERT INTO `subjects` VALUES (1,'Diskretne strukture','Z matematiko je križ. Diskretne strukture so matematika. Zato so z Diskretnimi strukturami tudi same sitnosti. Ah, šalo na stran. Predstavimo raje, kaj bi zamudili, ?e bi se Diskretnim strukturam izognili. ?e vemo, da je 1+1=2 in 2+2=5, potem bi morali verjeti tudi, da je 3+3=7, mar ne? Sešteli bi lahko obe \"ena?bi\", na primer. Toda v tem primeru moramo verjeti tudi, da so vse krave iste barve. Tega pa si najbrž ne bi mislili. Je težko opravljati posel receptorja v neskon?nem hotelu? Tudi ?e je poln in na obisk pridejo dodatni gosti, jih vedno lahko razporedimo po prostih sobah. Skrbimo lahko tudi, da je hotel polno zaseden, ?eprav se lepega dne zaradi slabega vremena (le kako je lahko lepega dne slabo vreme?) domov odpravi neskon?no mnogo gostov. V?asih so v dvornih parkih vrtnarji skrbno prirezovali labirinte iz žive meje (ponekod to počno še danes).',1,63203,'0000-00-00 00:00:00','2013-01-06 21:19:03'),(2,'Osnove matematicne analize','Osnove matematicne analize so po svoje ponovitev srednješolske matematike, zdelo se vam bo (vsaj nekaterim...) da poslušate stare stvari, ampak ta vtis je precej varljiv.',1,63202,'0000-00-00 00:00:00','2013-01-06 21:19:05'),(3,'Spletno programiranje','Pri predmetu Spletno programiranje bomo odgovorili na zgoraj zastavljena vprašanja. Cilj predmeta je študentu dati razgledanost in širino znanj, povezanih z delovanjem raznovrstnih sodobnih spletnih tehnologij in razvojnih okolij. Pregledali bomo osnovne tehnologije tehnologije izdelave in oblikovanja spletnih strani (HTML5, CSS, XML) ter jih nadgradili s pregledom tehnologij na strani brskalniškega klienta (JavaScript) in strežniških tehnologij (PHP, AJAX, JavaServer, ASP.NET, Ruby/Rails, spletne storitve).',1,63204,'0000-00-00 00:00:00','2013-01-06 21:19:08');
/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ids` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `mail` varchar(255) DEFAULT NULL,
  `passwd` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,63100200,'tomaz','tomaz@lzpr.si','abc',1,'tomazic','2012-12-26 11:57:14','2012-12-26 11:57:14'),(2,12345678,'Admin','admin@lzpr.si','abc',2,'Referat','2012-12-26 11:57:14','2012-12-26 11:57:14');
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

-- Dump completed on 2013-01-06 23:02:10
CREATE DATABASE  IF NOT EXISTS `tt3710` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `tt3710`;
-- MySQL dump 10.13  Distrib 5.5.16, for Win32 (x86)
--
-- Host: mysql.lrk.si    Database: tt3710
-- ------------------------------------------------------
-- Server version	5.1.66

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
-- Table structure for table `exam`
--

DROP TABLE IF EXISTS `exam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exam` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `subject` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam`
--

LOCK TABLES `exam` WRITE;
/*!40000 ALTER TABLE `exam` DISABLE KEYS */;
/*!40000 ALTER TABLE `exam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mark`
--

DROP TABLE IF EXISTS `mark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mark` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `subject` int(10) NOT NULL,
  `user` int(10) NOT NULL,
  `mark` int(2) NOT NULL,
  `year` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mark`
--

LOCK TABLES `mark` WRITE;
/*!40000 ALTER TABLE `mark` DISABLE KEYS */;
INSERT INTO `mark` VALUES (10,63204,63100200,5,1),(11,63202,63100200,6,2),(13,63201,63100200,8,1);
/*!40000 ALTER TABLE `mark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subject` (
  `id` int(5) NOT NULL,
  `name` varchar(30) NOT NULL,
  `description` varchar(1500) NOT NULL,
  `examon` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject`
--

LOCK TABLES `subject` WRITE;
/*!40000 ALTER TABLE `subject` DISABLE KEYS */;
INSERT INTO `subject` VALUES (63204,'Spletno programiranje','Pri predmetu Spletno programiranje bomo odgovorili na zgoraj zastavljena vprašanja. Cilj predmeta je študentu dati razgledanost in širino znanj, povezanih z delovanjem raznovrstnih sodobnih spletnih tehnologij in razvojnih okolij. Pregledali bomo osnovne tehnologije tehnologije izdelave in oblikovanja spletnih strani (HTML5, CSS, XML) ter jih nadgradili s pregledom tehnologij na strani brskalniškega klienta (JavaScript) in strežniških tehnologij (PHP, AJAX, JavaServer, ASP.NET, Ruby/Rails, spletne storitve).',1),(63201,'Osnove Programiranja','Cilj predmeta je študentom predstaviti osnovne koncepte objektno usmerjenega programiranja v enem izmed splošno namenskih programskih jezikov 3. generacije in jih usposobiti za samostojen razvoj enostavnih ra?unalniških programov.',0),(63202,'Osnove matematicne analize','Osnove matemati?ne analize so po svoje ponovitev srednješolske matematike, zdelo se vam bo (vsaj nekaterim...) da poslušate stare stvari, ampak ta vtis je precej varljiv.',1),(63203,'Diskretne strukture','Z matematiko je križ. Diskretne strukture so matematika. Zato so z Diskretnimi strukturami tudi same sitnosti. Ah, šalo na stran. Predstavimo raje, kaj bi zamudili, ?e bi se Diskretnim strukturam izognili. ?e vemo, da je 1+1=2 in 2+2=5, potem bi morali verjeti tudi, da je 3+3=7, mar ne? Sešteli bi lahko obe \"ena?bi\", na primer. Toda v tem primeru moramo verjeti tudi, da so vse krave iste barve. Tega pa si najbrž ne bi mislili. Je težko opravljati posel receptorja v neskon?nem hotelu? Tudi ?e je poln in na obisk pridejo dodatni gosti, jih vedno lahko razporedimo po prostih sobah. Skrbimo lahko tudi, da je hotel polno zaseden, ?eprav se lepega dne zaradi slabega vremena (le kako je lahko lepega dne slabo vreme?) domov odpravi neskon?no mnogo gostov. V?asih so v dvornih parkih vrtnarji skrbno prirezovali labirinte iz žive meje (ponekod to po?no še danes).',1);
/*!40000 ALTER TABLE `subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `surname` varchar(20) NOT NULL,
  `mail` varchar(30) NOT NULL,
  `status` int(2) NOT NULL DEFAULT '0',
  `passwd` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (12345678,'Referat','FRZC','referat@frzc.si',2,'abc'),(63100200,'Tomaz','Tomazic','tomaz@frzc.si',1,'abc'),(63100201,'Anita','Volk','anita@frzc.si',1,'aaa'),(63100202,'toma','test','mail@mail.com',1,'abc');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-01-06 23:02:11
