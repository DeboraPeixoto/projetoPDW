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
-- Table structure for table `transac`
--

DROP TABLE IF EXISTS `transac`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transac` (
  `id_transac` int NOT NULL AUTO_INCREMENT,
  `id_compr` int DEFAULT NULL,
  `id_item` int DEFAULT NULL,
  `dt_transac` date DEFAULT NULL,
  `vlr_transac` double DEFAULT NULL,
  PRIMARY KEY (`id_transac`),
  KEY `id_compr` (`id_compr`),
  KEY `id_item` (`id_item`),
  CONSTRAINT `transac_ibfk_1` FOREIGN KEY (`id_compr`) REFERENCES `usuario` (`id`),
  CONSTRAINT `transac_ibfk_2` FOREIGN KEY (`id_item`) REFERENCES `itens` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transac`
--

LOCK TABLES `transac` WRITE;
/*!40000 ALTER TABLE `transac` DISABLE KEYS */;
INSERT INTO `transac` VALUES (1,2,2,'2022-10-10',47),(4,3,1,'2022-09-01',218),(5,3,1,'2022-09-01',178),(7,3,1,'2022-09-01',178),(8,3,1,'2022-09-01',107),(9,3,1,'2022-09-01',145),(10,1,2,'2023-10-06',90);
/*!40000 ALTER TABLE `transac` ENABLE KEYS */;
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
