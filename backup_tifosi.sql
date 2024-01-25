-- MySQL dump 10.13  Distrib 5.7.31, for Win64 (x86_64)
--
-- Host: localhost    Database: tifosi
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Table structure for table `achete`
--

DROP TABLE IF EXISTS `achete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `achete` (
  `client` int(11) NOT NULL,
  `focaccia` int(11) NOT NULL,
  `jour` date DEFAULT NULL,
  PRIMARY KEY (`client`,`focaccia`),
  KEY `focaccia` (`focaccia`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `achete`
--

LOCK TABLES `achete` WRITE;
/*!40000 ALTER TABLE `achete` DISABLE KEYS */;
/*!40000 ALTER TABLE `achete` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boisson`
--

DROP TABLE IF EXISTS `boisson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `boisson` (
  `id_boisson` int(11) NOT NULL AUTO_INCREMENT,
  `nom_boisson` varchar(45) CHARACTER SET utf8 NOT NULL,
  `menu` int(11) DEFAULT NULL,
  `marque` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id_boisson`),
  KEY `fk_menu` (`menu`),
  KEY `fk_marque` (`marque`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boisson`
--

LOCK TABLES `boisson` WRITE;
/*!40000 ALTER TABLE `boisson` DISABLE KEYS */;
INSERT INTO `boisson` VALUES (1,'Coca-cola zéro',NULL,'Coca-cola'),(2,'Coca-cola original',NULL,'Coca-cola'),(3,'Fanta citron',NULL,'Coca-cola'),(4,'Fanta orange',NULL,'Coca-cola'),(5,'Capri-sun',NULL,'Coca-cola'),(6,'Pepsi',NULL,'Pepsico'),(7,'Pepsi Max Zéro',NULL,'Pepsico'),(8,'Lipton Peach',NULL,'Pepsico'),(9,'Monster energy ultra gold',NULL,'Pepsico'),(10,'Monster energy ultra blue',NULL,'Monster'),(11,'Eau de source',NULL,'Monster');
/*!40000 ALTER TABLE `boisson` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client` (
  `id_client` int(11) NOT NULL AUTO_INCREMENT,
  `nom_client` varchar(45) CHARACTER SET utf8 NOT NULL,
  `age` int(11) NOT NULL,
  `cp_client` int(11) NOT NULL,
  PRIMARY KEY (`id_client`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `focaccia`
--

DROP TABLE IF EXISTS `focaccia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `focaccia` (
  `id_focaccia` int(11) NOT NULL AUTO_INCREMENT,
  `nom_focaccia` varchar(45) CHARACTER SET utf8 NOT NULL,
  `prix_focaccia` float NOT NULL,
  `ingredient` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id_focaccia`),
  KEY `fk_ingredient` (`ingredient`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `focaccia`
--

LOCK TABLES `focaccia` WRITE;
/*!40000 ALTER TABLE `focaccia` DISABLE KEYS */;
INSERT INTO `focaccia` VALUES (1,'Mozaccia',9.8,'Base tomate, Mozarella, cresson, jambon fumé, ail, artichaut, champignon, parmesan, poivre, olive noire'),(2,'Gorgonzollacia',10.8,'Base tomate, Gorgonzola, cresson, ail, champignon, parmesan, poivre, olive noire'),(3,'Raclaccia',8.9,'Base tomate, raclette, cresson, ail, champignon, parmesan, poivre'),(4,'Emmentalaccia',9.8,'Base crème, Emmental, cresson, champignon, parmesan, poivre, oignon'),(5,'Tradizione',8.9,'Base tomate, Mozarella, cresson, jambon cuit, champignon, parmesan, poivre, olive noire, olive verte'),(6,'Hawaienne',11.2,'Base tomate, Mozarella, cresson, bacon, ananas, piment, parmesan, poivre, olive noire'),(7,'Américaine',10.8,'Base tomate, Mozarella, cresson, bacon, pomme de terre, parmesan, poivre, olive noire'),(8,'Paysanne',12.8,'Base crème, Chèvre, cresson, pomme de terre, jambon fumé, ail, artichaut, champignon, parmesan, poivre, olive noire, ?uf');
/*!40000 ALTER TABLE `focaccia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingredient`
--

DROP TABLE IF EXISTS `ingredient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ingredient` (
  `id_ingredient` int(11) NOT NULL AUTO_INCREMENT,
  `nom_ingredient` varchar(45) CHARACTER SET utf8 NOT NULL,
  `focaccia` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_ingredient`),
  KEY `fk_focaccia` (`focaccia`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredient`
--

LOCK TABLES `ingredient` WRITE;
/*!40000 ALTER TABLE `ingredient` DISABLE KEYS */;
INSERT INTO `ingredient` VALUES (1,'Ail',NULL),(2,'Ananas',NULL),(3,'Atichaut',NULL),(4,'Bacon',NULL),(5,'Base Tomate',NULL),(6,'Base crème',NULL),(7,'Champignon',NULL),(8,'Chevre',NULL),(9,'Cresson',NULL),(10,'Emmental',NULL),(11,'Gorgonzola',NULL),(12,'Jambon cuit',NULL),(13,'Jambon fumé',NULL),(14,'Oeuf',NULL),(15,'Oignon',NULL),(16,'Olive noire',NULL),(17,'Olive verte',NULL),(18,'Parmesan',NULL),(19,'Piment',NULL),(20,'Poivre',NULL),(21,'Pomme de terre',NULL),(22,'Raclette',NULL),(23,'Salami',NULL),(24,'Tomate cerise',NULL);
/*!40000 ALTER TABLE `ingredient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marque`
--

DROP TABLE IF EXISTS `marque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marque` (
  `id_marque` int(11) NOT NULL AUTO_INCREMENT,
  `nom_marque` varchar(45) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id_marque`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marque`
--

LOCK TABLES `marque` WRITE;
/*!40000 ALTER TABLE `marque` DISABLE KEYS */;
INSERT INTO `marque` VALUES (1,'Coca-cola'),(2,'Cristalline'),(3,'Monster'),(4,'Pepsico');
/*!40000 ALTER TABLE `marque` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id_menu` int(11) NOT NULL AUTO_INCREMENT,
  `nom_menu` varchar(45) CHARACTER SET utf8 NOT NULL,
  `prix_menu` float NOT NULL,
  `boisson` int(11) DEFAULT NULL,
  `focaccia` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_menu`),
  KEY `fk_boisson` (`boisson`),
  KEY `fk_focaccia` (`focaccia`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paye`
--

DROP TABLE IF EXISTS `paye`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paye` (
  `menu` int(11) NOT NULL,
  `client` int(11) NOT NULL,
  `jour` date DEFAULT NULL,
  PRIMARY KEY (`client`,`menu`),
  KEY `menu` (`menu`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paye`
--

LOCK TABLES `paye` WRITE;
/*!40000 ALTER TABLE `paye` DISABLE KEYS */;
/*!40000 ALTER TABLE `paye` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-25 13:29:32
