-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: iservice
-- ------------------------------------------------------
-- Server version	8.0.28

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
  PRIMARY KEY (`id_empresa`),
  KEY `classe_servico_anuncio_idx` (`ramo`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente_empresa`
--

LOCK TABLES `cliente_empresa` WRITE;
/*!40000 ALTER TABLE `cliente_empresa` DISABLE KEYS */;
INSERT INTO `cliente_empresa` VALUES (1,'Gustavo Henrique Sander','douglas@gmail.com','5551999999999','22.222.222/2222-22','12345','P',NULL,'Novo não hamburgo','Rio não do Sul','minha casa'),(2,'Naruto renovando','douglas@gmail.com','5551999999999','22.222.222/2222-22','5267','S',NULL,'Novo não hamburgo','Rio não do Sul','minha casa'),(3,'Iservice','iservice@gmail.com','5551999999997','22.222.222/2222-29','iserviceservindoserviços','V',NULL,'Novo não hamburgo','Rio não do Sul','minha casa'),(5,'Iservice','sad@gmail.com','5551999995499','22.222.222/9422-29','gsaffd','P',NULL,'Novo não hamburgo','Rio não do Sul','minha casa'),(6,'applanta','plantaap@gmail.com','5551945395499','22.262.222/2222-29','10018090','S','','Novo não hamburgo','Rio não do Sul','Tua casa'),(7,'applanta','plantaap@gmail.com','5551945395499','22.262.222/2222-29','10018090','S','','Novo não hamburgo','Rio não do Sul','Tua casa'),(8,'applanta','plantaap@gmail.com','5551945395499','','plantandogerações','S','Preço: R$100','Novo não hamburgo','Rio não do Sul','Tua casa'),(9,'Iservice','gustavosander2006@gmail.com','5551999999999','22.222.222/2222-22','gfhfhg','','ghsghg','ghgh','dggdgfgf','fggfgfgdfgfg'),(10,'','','','','','','','','',''),(11,'','','','','','','','','',''),(12,'Naruto renovando','douglas@gmail.com','5551945395499','22.222.222/2222-22','narutinhodabandana','V','naruto uzumaki','Novo não hamburgo','Rio não do Sul','Tua casa'),(13,'Naruto renovando','douglas@gmail.com','5551945395499','22.222.222/2222-22','narutinhodabandana','V','naruto uzumaki','Novo não hamburgo','Rio não do Sul','Tua casa'),(14,'','','','','','','','','',''),(15,'','','','','','','','','',''),(16,'','','','','','','','','',''),(17,'Pet shop: Cantinho dos Bichos','airtonricardosander@gmail.com','5551996110657','22.222.222/2222-22','gustavodiulia','P','Preço: R$100','Campo Bom','Rio grande do Sul','Bairro: Cohab Leste, Rua: Arnildo Schimidt, nº: 65'),(18,'Pet shop: Cantinho dos Bichos','airtonricardosander@gmail.com','5551996110657','22.222.222/2222-22','cantinho dos bichos','P','Preço: R$100','Campo Bom','Rio grande do Sul','Bairro: Cohab Leste, Rua: Arnildo Schimidt, nº: 65'),(19,'Pet shop: Cantinho dos Bichos','airtonricardosander@gmail.com','5551996110657','22.222.222/2222-22','cantinho dos bichos','P','Preço: R$100','Campo Bom','Rio grande do Sul','Bairro: Cohab Leste, Rua: Arnildo Schimidt, nº: 65');
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

-- Dump completed on 2023-05-14 23:36:51
