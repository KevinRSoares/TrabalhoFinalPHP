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
  `codret` int(11) NOT NULL AUTO_INCREMENT,
  `codusu` int(11) NOT NULL,
  `datret` date NOT NULL,
  `stsret` char(1) NOT NULL,
  `datdevret` date NOT NULL,
  PRIMARY KEY (`codret`,`codusu`)
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
-- Table structure for table `retirada_volume`
--

DROP TABLE IF EXISTS `retirada_volume`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `retirada_volume` (
  `retirada_codret` int(11) NOT NULL,
  `retirada_codusu` int(11) NOT NULL,
  `volume_codvol` int(11) NOT NULL,
  `qtdVolRet` int(11) NOT NULL,
  PRIMARY KEY (`retirada_codret`,`retirada_codusu`,`volume_codvol`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `retirada_volume`
--

LOCK TABLES `retirada_volume` WRITE;
/*!40000 ALTER TABLE `retirada_volume` DISABLE KEYS */;
/*!40000 ALTER TABLE `retirada_volume` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `codusu` int(11) NOT NULL AUTO_INCREMENT,
  `nomusu` varchar(100) NOT NULL,
  `datcadusu` date NOT NULL,
  `tipusu` char(1) NOT NULL,
  `senusu` varchar(32) NOT NULL,
  `stsusu` char(1) DEFAULT NULL,
  PRIMARY KEY (`codusu`),
  UNIQUE KEY `nomusu_UNIQUE` (`nomusu`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
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
  `codvol` int(11) NOT NULL AUTO_INCREMENT,
  `nomvol` varchar(50) NOT NULL,
  `desvol` varchar(200) NOT NULL,
  `tipvol` char(1) NOT NULL,
  `qtdvol` int(11) NOT NULL,
  `datcadvol` date NOT NULL,
  `caminho` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`codvol`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COMMENT='		';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `volume`
--

LOCK TABLES `volume` WRITE;
/*!40000 ALTER TABLE `volume` DISABLE KEYS */;
INSERT INTO `volume` VALUES (1,'O Hobbit','Como a maioria dos hobbits, Bilbo Bolseiro leva uma vida tranquila atÃ© o dia em que recebe uma missÃ£o do mago Gandalf. Acompanhado por um grupo de anÃµes, ele parte numa jornada atÃ© a Montanha Soli','L',0,'2018-11-29','download.jpg'),(2,'O Hobbit','Como a maioria dos hobbits, Bilbo Bolseiro leva uma vida tranquila atÃ© o dia em que recebe uma missÃ£o do mago Gandalf. Acompanhado por um grupo de anÃµes, ele parte numa jornada atÃ© a Montanha Soli','L',0,'2018-11-29','download.jpg'),(3,'O Hobbit 2','Como a maioria dos hobbits, Bilbo Bolseiro leva uma vida tranquila atÃ© o dia em que recebe uma missÃ£o do mago Gandalf. Acompanhado por um grupo de anÃµes, ele parte numa jornada atÃ© a Montanha Soli','L',0,'2018-11-29','download.jpg'),(4,'O Hobbit 2','Como a maioria dos hobbits, Bilbo Bolseiro leva uma vida tranquila atÃ© o dia em que recebe uma missÃ£o do mago Gandalf. Acompanhado por um grupo de anÃµes, ele parte numa jornada atÃ© a Montanha Soli','L',0,'2018-11-29','download.jpg'),(5,'O Hobbit 2','Como a maioria dos hobbits, Bilbo Bolseiro leva uma vida tranquila atÃ© o dia em que recebe uma missÃ£o do mago Gandalf. Acompanhado por um grupo de anÃµes, ele parte numa jornada atÃ© a Montanha Soli','L',0,'2018-11-29','download.jpg'),(6,'O Hobbit 2','Como a maioria dos hobbits, Bilbo Bolseiro leva uma vida tranquila atÃ© o dia em que recebe uma missÃ£o do mago Gandalf. Acompanhado por um grupo de anÃµes, ele parte numa jornada atÃ© a Montanha Soli','L',0,'2018-11-29','download.jpg'),(7,'O Hobbit 2','Como a maioria dos hobbits, Bilbo Bolseiro leva uma vida tranquila atÃ© o dia em que recebe uma missÃ£o do mago Gandalf. Acompanhado por um grupo de anÃµes, ele parte numa jornada atÃ© a Montanha Soli','L',0,'2018-11-29','download.jpg'),(8,'O Hobbit 2','Como a maioria dos hobbits, Bilbo Bolseiro leva uma vida tranquila atÃ© o dia em que recebe uma missÃ£o do mago Gandalf. Acompanhado por um grupo de anÃµes, ele parte numa jornada atÃ© a Montanha Soli','P',0,'2018-11-29','download.jpg'),(9,'O Hobbit 2','Como a maioria dos hobbits, Bilbo Bolseiro leva uma vida tranquila atÃ© o dia em que recebe uma missÃ£o do mago Gandalf. Acompanhado por um grupo de anÃµes, ele parte numa jornada atÃ© a Montanha Soli','L',0,'2018-11-29','download.jpg'),(10,'O Hobbit 3','Como a maioria dos hobbits, Bilbo Bolseiro leva uma vida tranquila atÃ© o dia em que recebe uma missÃ£o do mago Gandalf. Acompanhado por um grupo de anÃµes, ele parte numa jornada atÃ© a Montanha Soli','L',0,'2018-11-29','image.jpg');
/*!40000 ALTER TABLE `volume` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `volume_posicao_fisica`
--

DROP TABLE IF EXISTS `volume_posicao_fisica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `volume_posicao_fisica` (
  `posqtdvol` int(11) NOT NULL,
  `posresqtdvol` int(11) NOT NULL,
  `codvol` int(11) NOT NULL,
  PRIMARY KEY (`codvol`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `volume_posicao_fisica`
--

LOCK TABLES `volume_posicao_fisica` WRITE;
/*!40000 ALTER TABLE `volume_posicao_fisica` DISABLE KEYS */;
/*!40000 ALTER TABLE `volume_posicao_fisica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'trabalhofinal'
--

--
-- Dumping routines for database 'trabalhofinal'
--
/*!50003 DROP PROCEDURE IF EXISTS `atualiza_status_retirada` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `atualiza_status_retirada`(































IN coret Int,/*Código da Retirada*/































IN stret CHAR(1)/*Código da Retirada*/































)
BEGIN































	update retirada set stsret = stret where codret = coret;































































END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `cadastra_retirada` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cadastra_retirada`(































IN covol Int,/*Código do Volume*/































IN cousu Int,/*Código do Usuário*/































IN daret Date, /*Data da Retirada*/































IN stret Char(1),/*Situação da Retirada*/























IN datderet Int /*Data Devolução Retirada*/































)
BEGIN



	Declare retCo Int(11);







	Insert Into retirada(codvol,codusu,datret,stsret,datdevret)







		Values(covol,cousu,daret,stret,datderet);



	Select Max(RetCod) as 'RetCod' from retirada Where cousu = codusu into retCo;







	Select retCo;







END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `cadastra_usuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cadastra_usuario`(































IN nousu Varchar(100),/*Código do Usuario*/































IN tiusu Char(1), /*Tipo de usuario*/































IN seusu varchar(32)































)
BEGIN































	































	Declare caddatusu date default now();/*Data de Cadastro de Usuario*/ 

  Declare nome_usuario_duplicado condition for sqlstate '23000';

	Declare exit handler for nome_usuario_duplicado

	begin

		select '0'  as 'Retorno';

    End;  





























	Insert Into usuario(nomusu,datcadusu,tipusu,senusu)































		Values(nousu,caddatusu,tiusu,md5(seusu));

  	select '1'  as 'Retorno';





























END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `cadastra_volume` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cadastra_volume`(























IN nmvol Varchar(50),/*Nome Volume*/























IN devol Varchar(200),/*Descrição do Volume*/































IN tivol char(1),/*Tipo do Volume*/































IN qtvol Int,/*Quantidade do Volume*/





IN camImg VarChar(200)



)
BEGIN







	Declare datcavol date default now();/*Data de Cadastro de Usuario*/ 















	Insert Into volume(nomvol,desvol,tipvol,qtdvol,datcadvol,caminho)































		Values(nmvol,devol,tivol,qtvol,datcavol,camImg);































END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-29  3:46:33
