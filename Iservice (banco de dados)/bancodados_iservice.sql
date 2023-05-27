-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: iservice
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `anuncio_pet`
--

DROP TABLE IF EXISTS `anuncio_pet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `anuncio_pet` (
  `classe_pet` varchar(1) NOT NULL,
  `servicos_veterinarios_disponiveis` varchar(70) DEFAULT NULL,
  `servicos_de_banhoetosa_disponiveis` varchar(70) DEFAULT NULL,
  `descricao` text,
  `avaliacao` decimal(10,2) DEFAULT NULL,
  `agendamento` datetime DEFAULT NULL,
  PRIMARY KEY (`classe_pet`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anuncio_pet`
--

LOCK TABLES `anuncio_pet` WRITE;
/*!40000 ALTER TABLE `anuncio_pet` DISABLE KEYS */;
/*!40000 ALTER TABLE `anuncio_pet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `anuncio_saude`
--

DROP TABLE IF EXISTS `anuncio_saude`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `anuncio_saude` (
  `classe_saude` varchar(1) NOT NULL,
  `servicos_medicos_disponiveis` varchar(75) DEFAULT NULL,
  `servicos_odontologicos_disponiveis` varchar(75) DEFAULT NULL,
  `descricao` text,
  `avaliacao` decimal(10,2) DEFAULT NULL,
  `agendamento` datetime DEFAULT NULL,
  PRIMARY KEY (`classe_saude`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anuncio_saude`
--

LOCK TABLES `anuncio_saude` WRITE;
/*!40000 ALTER TABLE `anuncio_saude` DISABLE KEYS */;
/*!40000 ALTER TABLE `anuncio_saude` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `anuncio_veiculos`
--

DROP TABLE IF EXISTS `anuncio_veiculos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `anuncio_veiculos` (
  `classe_veiculos` varchar(1) NOT NULL,
  `servicos_lavagem_disponiveis` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
  `servicos_mecanicos_disponiveis` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
  `descricao` text CHARACTER SET utf8mb4,
  `avaliacao` decimal(10,2) DEFAULT NULL,
  `agendamento` datetime DEFAULT NULL,
  PRIMARY KEY (`classe_veiculos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anuncio_veiculos`
--

LOCK TABLES `anuncio_veiculos` WRITE;
/*!40000 ALTER TABLE `anuncio_veiculos` DISABLE KEYS */;
/*!40000 ALTER TABLE `anuncio_veiculos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `nome_cliente` varchar(80) DEFAULT NULL,
  `celular` varchar(13) DEFAULT NULL,
  `email` varchar(75) DEFAULT NULL,
  `senha` varchar(30) DEFAULT NULL,
  `sexo` varchar(1) NOT NULL,
  `data_nascimento` date DEFAULT NULL,
  `endereço` char(200) DEFAULT NULL,
  `cidade` char(70) DEFAULT NULL,
  `estado` char(70) DEFAULT NULL,
  `agenda_de_servicos_adquiridos` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id_cliente`),
  KEY `serviços_adiquiridos_idx` (`agenda_de_servicos_adquiridos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente_empresa`
--

DROP TABLE IF EXISTS `cliente_empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente_empresa` (
  `id_empresa` int NOT NULL AUTO_INCREMENT,
  `nome_empresa` varchar(75) DEFAULT NULL,
  `email` varchar(75) DEFAULT NULL,
  `telefone` varchar(13) DEFAULT NULL,
  `cnpj` varchar(18) DEFAULT NULL,
  `senha` varchar(30) DEFAULT NULL,
  `ramo` varchar(1) NOT NULL,
  `informações` mediumtext,
  `cidade` char(70) DEFAULT NULL,
  `estado` char(70) DEFAULT NULL,
  `endereço` char(200) DEFAULT NULL,
  `imagem` longblob,
  PRIMARY KEY (`id_empresa`),
  KEY `classe_servico_anuncio_idx` (`ramo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente_empresa`
--

LOCK TABLES `cliente_empresa` WRITE;
/*!40000 ALTER TABLE `cliente_empresa` DISABLE KEYS */;
/*!40000 ALTER TABLE `cliente_empresa` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-24 19:32:12
