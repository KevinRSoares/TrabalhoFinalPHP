CREATE DATABASE  IF NOT EXISTS `trabalhofinal` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `trabalhofinal`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: trabalhofinal
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.28-MariaDB

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
-- Table structure for table `retirada`
--

DROP TABLE IF EXISTS `retirada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `retirada` (
  `codret` int(11) NOT NULL,
  `codvol` int(11) NOT NULL,
  `codusu` int(11) NOT NULL,
  `datret` date NOT NULL,
  `stsret` char(1) NOT NULL,
  `qtdret` int(11) NOT NULL,
  `datdevret` date NOT NULL,
  PRIMARY KEY (`codret`,`codvol`,`codusu`),
  KEY `volume_retirada_fk` (`codvol`),
  KEY `usuario_retirada_fk` (`codusu`),
  CONSTRAINT `usuario_retirada_fk` FOREIGN KEY (`codusu`) REFERENCES `usuario` (`codusu`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `volume_retirada_fk` FOREIGN KEY (`codvol`) REFERENCES `volume` (`codvol`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `retirada`
--

LOCK TABLES `retirada` WRITE;
/*!40000 ALTER TABLE `retirada` DISABLE KEYS */;
/*!40000 ALTER TABLE `retirada` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `codusu` int(11) NOT NULL,
  `nomcod` varchar(100) NOT NULL,
  `datcadusu` date NOT NULL,
  `tipusu` char(1) NOT NULL,
  `senusu` varchar(32) NOT NULL,
  PRIMARY KEY (`codusu`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `volume`
--

DROP TABLE IF EXISTS `volume`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `volume` (
  `codvol` int(11) NOT NULL,
  `desvol` varchar(200) NOT NULL,
  `tipvol` int(11) NOT NULL,
  `qtdvol` int(11) NOT NULL,
  `datcadvol` date NOT NULL,
  PRIMARY KEY (`codvol`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `volume`
--

LOCK TABLES `volume` WRITE;
/*!40000 ALTER TABLE `volume` DISABLE KEYS */;
/*!40000 ALTER TABLE `volume` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'trabalhofinal'
--

--
-- Dumping routines for database 'trabalhofinal'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-07 21:37:33
