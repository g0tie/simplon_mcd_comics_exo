-- MySQL dump 10.13  Distrib 8.0.30, for Linux (x86_64)
--
-- Host: localhost    Database: comics
-- ------------------------------------------------------
-- Server version	8.0.30-0ubuntu0.20.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Collections`
--

DROP TABLE IF EXISTS `Collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Collections` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) DEFAULT NULL,
  `prestige` varchar(100) DEFAULT NULL,
  `dateParution` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `Collections_FK` FOREIGN KEY (`id`) REFERENCES `Series` (`id`),
  CONSTRAINT `Collections_FK_1` FOREIGN KEY (`id`) REFERENCES `Comics` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Collections`
--

LOCK TABLES `Collections` WRITE;
/*!40000 ALTER TABLE `Collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `Collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Comics`
--

DROP TABLE IF EXISTS `Comics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Comics` (
  `ISBN` int DEFAULT NULL,
  `Titre` varchar(100) DEFAULT NULL,
  `Resume` varchar(100) DEFAULT NULL,
  `DataPublication` datetime DEFAULT NULL,
  `NombrePages` int DEFAULT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  CONSTRAINT `Comics_FK` FOREIGN KEY (`id`) REFERENCES `Recompenses` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Comics`
--

LOCK TABLES `Comics` WRITE;
/*!40000 ALTER TABLE `Comics` DISABLE KEYS */;
/*!40000 ALTER TABLE `Comics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Dessinateurs`
--

DROP TABLE IF EXISTS `Dessinateurs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Dessinateurs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `Dessinateurs_FK` FOREIGN KEY (`id`) REFERENCES `Comics` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Dessinateurs`
--

LOCK TABLES `Dessinateurs` WRITE;
/*!40000 ALTER TABLE `Dessinateurs` DISABLE KEYS */;
/*!40000 ALTER TABLE `Dessinateurs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Editeurs`
--

DROP TABLE IF EXISTS `Editeurs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Editeurs` (
  `Nom` varchar(100) DEFAULT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  CONSTRAINT `Editeurs_FK` FOREIGN KEY (`id`) REFERENCES `Comics` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Editeurs`
--

LOCK TABLES `Editeurs` WRITE;
/*!40000 ALTER TABLE `Editeurs` DISABLE KEYS */;
/*!40000 ALTER TABLE `Editeurs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Epoques`
--

DROP TABLE IF EXISTS `Epoques`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Epoques` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `annees` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `Epoques_FK` FOREIGN KEY (`id`) REFERENCES `Comics` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Epoques`
--

LOCK TABLES `Epoques` WRITE;
/*!40000 ALTER TABLE `Epoques` DISABLE KEYS */;
/*!40000 ALTER TABLE `Epoques` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Personnages`
--

DROP TABLE IF EXISTS `Personnages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Personnages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) DEFAULT NULL,
  `alias` varchar(100) DEFAULT NULL,
  `statut` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `premiereApparition` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `Personnages_FK` FOREIGN KEY (`id`) REFERENCES `Comics` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Personnages`
--

LOCK TABLES `Personnages` WRITE;
/*!40000 ALTER TABLE `Personnages` DISABLE KEYS */;
/*!40000 ALTER TABLE `Personnages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Recompenses`
--

DROP TABLE IF EXISTS `Recompenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Recompenses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Titre` varchar(100) DEFAULT NULL,
  `Description` varchar(100) DEFAULT NULL,
  `AnneeObtenue` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Recompenses`
--

LOCK TABLES `Recompenses` WRITE;
/*!40000 ALTER TABLE `Recompenses` DISABLE KEYS */;
/*!40000 ALTER TABLE `Recompenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Scenaristes`
--

DROP TABLE IF EXISTS `Scenaristes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Scenaristes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `Scenaristes_FK` FOREIGN KEY (`id`) REFERENCES `Comics` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Scenaristes`
--

LOCK TABLES `Scenaristes` WRITE;
/*!40000 ALTER TABLE `Scenaristes` DISABLE KEYS */;
/*!40000 ALTER TABLE `Scenaristes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Series`
--

DROP TABLE IF EXISTS `Series`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Series` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) DEFAULT NULL,
  `descriptif` varchar(100) DEFAULT NULL,
  `nombreDeVolumes` int DEFAULT NULL,
  `anneeParution` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `Series_FK` FOREIGN KEY (`id`) REFERENCES `Comics` (`id`),
  CONSTRAINT `Series_FK_1` FOREIGN KEY (`id`) REFERENCES `Collections` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Series`
--

LOCK TABLES `Series` WRITE;
/*!40000 ALTER TABLE `Series` DISABLE KEYS */;
/*!40000 ALTER TABLE `Series` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Univers`
--

DROP TABLE IF EXISTS `Univers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Univers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `Univers_FK` FOREIGN KEY (`id`) REFERENCES `Comics` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Univers`
--

LOCK TABLES `Univers` WRITE;
/*!40000 ALTER TABLE `Univers` DISABLE KEYS */;
/*!40000 ALTER TABLE `Univers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-30 11:39:17
