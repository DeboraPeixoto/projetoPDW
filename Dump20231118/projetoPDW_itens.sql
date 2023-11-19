-- MySQL dump 10.13  Distrib 8.0.27, for Linux (x86_64)
--
-- Host: localhost    Database: projetoPDW
-- ------------------------------------------------------
-- Server version	8.0.27-0ubuntu0.20.04.1

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
-- Table structure for table `itens`
--

DROP TABLE IF EXISTS `itens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itens` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) DEFAULT NULL,
  `categoria` enum('livro','revista','periodico') DEFAULT NULL,
  `preco` double DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `status_item` tinyint(1) DEFAULT NULL,
  `dt_edicao` date DEFAULT NULL,
  `periodicidade` varchar(50) DEFAULT NULL,
  `id_vendedor` int DEFAULT NULL,
  `autor` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_vendedor` (`id_vendedor`),
  CONSTRAINT `itens_ibfk_1` FOREIGN KEY (`id_vendedor`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itens`
--

LOCK TABLES `itens` WRITE;
/*!40000 ALTER TABLE `itens` DISABLE KEYS */;
INSERT INTO `itens` VALUES (1,'Teste','livro',40,'lorem ipsum',0,'2000-12-31','-',2,NULL),(2,'Teste','livro',60,'lorem ipsum',0,'2000-12-31','-',3,NULL),(3,'ABC','livro',60,'lorem ipsum',0,'2000-12-31','-',3,NULL),(4,'Teste','livro',60,'lorem ipsum',0,'2000-12-31','-',3,NULL),(5,'Crime e Castigo','livro',60,'o protagonista dá uma machadada numa idosa',0,'2000-12-31','-',3,'Dostoievski'),(6,'Os Irmãos Karamazov','livro',70,'parricidio e outros dramas interpessoais',0,'2000-12-31','-',3,'Dostoievski'),(7,'O Processo','livro',70,'um cara acorda e descobre que foi acusado e vai morrer e ele não sabe quem o acusou e o motivo',0,'2000-12-31','-',6,'Franz Kafka'),(8,'A Metamorfose','livro',60,'inseto.',0,'2000-12-31','-',5,'Franz Kafka');
/*!40000 ALTER TABLE `itens` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-18 23:36:46
