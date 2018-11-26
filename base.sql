-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: trabalhofinal
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.31-MariaDB

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
  `nomusu` varchar(100) NOT NULL,
  `datcadusu` date NOT NULL,
  `tipusu` char(1) NOT NULL,
  `senusu` varchar(32) NOT NULL,
  `stsusu` char(1) DEFAULT NULL,
  PRIMARY KEY (`codusu`),
  UNIQUE KEY `nomusu_UNIQUE` (`nomusu`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (0,'Kevin Ruan Soares','2018-11-14','E','202cb962ac59075b964b07152d234b70',NULL);
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
  `nomvol` varchar(50) NOT NULL,
  `desvol` varchar(200) NOT NULL,
  `tipvol` int(11) NOT NULL,
  `qtdvol` int(11) NOT NULL,
  `datcadvol` date NOT NULL,
  PRIMARY KEY (`codvol`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='		';
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
/*!50003 DROP PROCEDURE IF EXISTS `atualiza_status_retirada` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
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
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cadastra_retirada`(



IN covol Int,/*Código do Volume*/



IN cousu Int,/*Código do Usuário*/



IN daret Date, /*Data da Retirada*/



IN stret Char(1),/*Situação da Retirada*/



IN qtret Int, /*Quantidade Retirada*/



IN datderet Int /*Data Devolução Retirada*/



)
BEGIN



	Insert Into retirada(codvol,codusu,datret,stsret,qtdret,datdevret)



		Values(covol,cousu,daret,stret,qtret,datderet);



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
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
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
		Insert Into usuario(nomcod,datcadusu,tipusu,senusu)
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
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cadastra_volume`(


IN nmvol Varchar(50),/*Nome Volume*/


IN devol Varchar(200),/*Descrição do Volume*/



IN tivol Int,/*Tipo do Volume*/



IN qtvol Int/*Quantidade do Volume*/



)
BEGIN
	Declare datcavol date default now();/*Data de Cadastro de Usuario*/ 

	Insert Into volume(nomvol,desvol,tipvol,qtdvol,datcadvol)



		Values(nmvol,devol,tivol,qtvol,datcavol);



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

-- Dump completed on 2018-11-25 23:02:53
