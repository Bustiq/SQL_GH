-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: canciones_Schema
-- ------------------------------------------------------
-- Server version	8.0.36-0ubuntu0.22.04.1

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
-- Table structure for table `album`
--

DROP TABLE IF EXISTS `album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `album` (
  `id_album` int NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `fecha_de_lanzamiento` date DEFAULT NULL,
  PRIMARY KEY (`id_album`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album`
--

LOCK TABLES `album` WRITE;
/*!40000 ALTER TABLE `album` DISABLE KEYS */;
INSERT INTO `album` VALUES (1,'alejo',NULL),(21,'hij',NULL);
/*!40000 ALTER TABLE `album` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cancion`
--

DROP TABLE IF EXISTS `cancion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cancion` (
  `id_cancion` int NOT NULL,
  `id_cantante` int DEFAULT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `id_album` int DEFAULT NULL,
  `duracionEnSegundos` int DEFAULT NULL,
  PRIMARY KEY (`id_cancion`),
  KEY `fk_poema_1_idx` (`id_cantante`),
  KEY `fk_album_1_idx` (`id_album`),
  CONSTRAINT `fk_album_1` FOREIGN KEY (`id_album`) REFERENCES `album` (`id_album`),
  CONSTRAINT `fk_cantante_1` FOREIGN KEY (`id_cantante`) REFERENCES `cantante` (`id_cantante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cancion`
--

LOCK TABLES `cancion` WRITE;
/*!40000 ALTER TABLE `cancion` DISABLE KEYS */;
/*!40000 ALTER TABLE `cancion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cancion_album`
--

DROP TABLE IF EXISTS `cancion_album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cancion_album` (
  `id_cancion` int NOT NULL,
  `id_album` int NOT NULL,
  PRIMARY KEY (`id_cancion`,`id_album`),
  KEY `fk_poema_libro_1_idx` (`id_album`),
  CONSTRAINT `fk_poema_libro_1` FOREIGN KEY (`id_album`) REFERENCES `album` (`id_album`),
  CONSTRAINT `fk_poema_libro_2` FOREIGN KEY (`id_cancion`) REFERENCES `cancion` (`id_cancion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cancion_album`
--

LOCK TABLES `cancion_album` WRITE;
/*!40000 ALTER TABLE `cancion_album` DISABLE KEYS */;
/*!40000 ALTER TABLE `cancion_album` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cantante`
--

DROP TABLE IF EXISTS `cantante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cantante` (
  `id_cantante` int NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `nombre_artistico` varchar(45) DEFAULT NULL,
  `edad` int DEFAULT NULL,
  `generoMusical` varchar(45) DEFAULT NULL,
  `ingresosMensuales` float DEFAULT NULL,
  `provinciaDeNacimiento` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_cantante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cantante`
--

LOCK TABLES `cantante` WRITE;
/*!40000 ALTER TABLE `cantante` DISABLE KEYS */;
INSERT INTO `cantante` VALUES (1,'a','b','h',12,'awd',12.4,'foa'),(2,'a','b','h',1223,'awd',12.4,'foa'),(3,'a','b','h',1242,'awd',12.4,'foa'),(4,'a','b','h',12,'awd',12.4,'foa'),(5,'a','b','h',19,'awd',12.4,'foa'),(6,'a','b','h',16,'awd',1234,'foa'),(20,'a','b','h',1223,'awd',12.4,'f4'),(24,'a','b','h',15,'aw3d',12.4,'foa'),(25,'a','b','h',15,'aw3d',12.4,'foa'),(52,'a','b','h',19,'awd',12.4,'foa'),(80,'a','b','h',11,'awdp',12.4,'foa'),(152,'a','b','h',12,'awd',134.4,'foa'),(225,'a','b','h',19,'aw3d',112312000000000,'foa'),(423,'a','b','h',12,'awd',12.4,'foa'),(802,'a','b','h',11,'awdp',13.4,'foa'),(923,'a','b','h',15,'awd',1344,'foa'),(3235,'a','b','h',1242,'awd',12.4,'foa'),(7324,'a','b','h',18,'awd',5235,'foa');
/*!40000 ALTER TABLE `cantante` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-08 16:53:14
