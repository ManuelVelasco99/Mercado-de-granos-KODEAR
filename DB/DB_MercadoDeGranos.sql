CREATE DATABASE  IF NOT EXISTS `mercado_granos` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mercado_granos`;
-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: mercado_granos
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `empresas`
--

DROP TABLE IF EXISTS `empresas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empresas` (
  `cuit` varchar(15) NOT NULL,
  `razonSocial` varchar(50) NOT NULL,
  PRIMARY KEY (`cuit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresas`
--

LOCK TABLES `empresas` WRITE;
/*!40000 ALTER TABLE `empresas` DISABLE KEYS */;
INSERT INTO `empresas` VALUES ('20110058609','ABALO, ALBERTO E'),('30539391735','CAMPOAMOR HNOS. S.A.C.I.F. Y A.'),('30599828431','A REGUEIRA Y CIA. S.A. CEREALES'),('30618705672','ADECO AGROPECUARIA S.A.'),('30635322140','ESPARTINA S.A.'),('30703597072','A Y N SERVICIOS S.R.L.'),('33541742439','A.A.C.R.E.A.');
/*!40000 ALTER TABLE `empresas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posiciones`
--

DROP TABLE IF EXISTS `posiciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posiciones` (
  `id` int unsigned NOT NULL,
  `idEmpresa` varchar(15) NOT NULL,
  `idProducto` int unsigned NOT NULL,
  `fechaEntregaInicio` datetime NOT NULL,
  `moneda` varchar(10) NOT NULL,
  `precio` decimal(12,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_productos_idx` (`idProducto`),
  KEY `FK_empresas_idx` (`idEmpresa`),
  CONSTRAINT `FK_empresas` FOREIGN KEY (`idEmpresa`) REFERENCES `empresas` (`cuit`),
  CONSTRAINT `FK_productos` FOREIGN KEY (`idProducto`) REFERENCES `productos` (`idProducto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posiciones`
--

LOCK TABLES `posiciones` WRITE;
/*!40000 ALTER TABLE `posiciones` DISABLE KEYS */;
INSERT INTO `posiciones` VALUES (1,'20110058609',1,'2021-12-19 04:12:32','USD',15000.00),(2,'30599828431',2,'2019-03-23 18:37:42','Pesos',500000.00),(3,'30635322140',3,'2012-12-19 04:12:32','USD',35000.00),(4,'30703597072',5,'2009-03-15 18:37:42','USD',45000.00),(5,'20110058609',15,'2007-04-15 15:25:25','Pesos',100000.00),(6,'30635322140',10,'2019-07-23 18:37:42','USD',30000.00),(7,'30618705672',11,'2012-11-19 04:12:32','Pesos',320000.00),(8,'30635322140',13,'2013-09-26 08:46:31','USD',15000.00),(9,'30635322140',14,'2018-07-31 07:17:54','USD',30000.00),(10,'30635322140',15,'2011-07-19 00:20:03','Pesos',40000.00),(11,'20110058609',20,'2010-09-07 23:07:14','Pesos',200000.00),(12,'30635322140',12,'2010-12-08 18:06:57','USD',7000.00),(13,'30635322140',24,'2020-09-13 21:58:05','USD',20000.00),(14,'20110058609',28,'2015-03-09 05:31:04','Pesos',800000.00),(15,'30635322140',11,'2015-07-29 17:34:46','Pesos',1000000.00),(16,'30635322140',28,'2022-09-01 03:06:53','USD',35000.00),(17,'20110058609',19,'2015-07-06 01:08:09','USD',70000.00);
/*!40000 ALTER TABLE `posiciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `idProducto` int unsigned NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `usoFrecuente` tinyint DEFAULT NULL,
  PRIMARY KEY (`idProducto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'TRIGO',1),(2,'MAIZ',1),(3,'LINO',0),(4,'GIRASOL',1),(5,'SORGO',1),(6,'SOJA',1),(7,'AVENA',0),(8,'ALPISTE',0),(9,'MIJO',0),(10,'CENTENO',0),(11,'CEBADA FORRAJERA',1),(12,'TRIGO CANDEAL',0),(13,'COLZA',0),(14,'MANI',0),(15,'ITA',0),(18,'SORGO FORRAJERO',0),(19,'PELLETS DE SOJA',0),(20,'TRIGO SARRACENO',0),(21,'SOJA SUSTENTABLE',0),(23,'AGROPIRO ALARGADO',0),(24,'ALFALFA',0),(28,'FESTUCA ALTA',0),(36,'SOJA FABRICA',0),(37,'SOJA FABRICA ENTREGA',0),(39,'SEMILLA DE AVENA',0),(40,'SEMILLA DE TRIGO',0),(41,'SEMILLA DE MAIZ',0),(42,'SEMILLA DE SOJA',0),(43,'SEMILLA DE GIRASOL',0),(45,'SEMILLA NATURAL GIRASOL',0),(46,'SEMILLA MACHO GIRASOL',0),(47,'FOSFATO DIAMONICO',0),(48,'FOSFATO MONOAMONICO',0),(49,'MAIZ DENTADO',0),(50,'PELLETS DE GIRASOL',0),(51,'PELLETS DE AFRECHILLO',0),(52,'MOHA CARAPE',0),(53,'CEBADA CERVECERA',1),(54,'COLZA DOBLE \"00\"\"/ CANOLA\"',0),(56,'MAIZ BLANCO',0),(57,'GLIFOSATO',0),(58,'MANI CAJA',0),(59,'MAIZ ESPECIAL',0),(60,'MAIZ FLAMENCO',0),(61,'UREA GRANULADA',0),(62,'UREA PERLADA',0),(63,'GLIFOSATO ATANOR',0),(64,'2.4 D',0),(65,'MAIZ PISCINGALLO',0),(66,'MAIZ DURO COLORADO',0),(67,'MAIZ CARGILL 280',0),(68,'ARROZ',0),(69,'MANI INDUSTRIA',0),(70,'SOJA CHICAGO',0),(71,'TRIGO CHICAGO',0),(72,'MAIZ CHICAGO',0),(74,'SEMILLA DE CEBADA SCARLETT',0),(75,'MAIZ PARTIDO',0),(76,'SOJA MINI',0),(77,'SUPER FOSFATO TRIPLE',0),(78,'TRIGO MINI',0),(79,'MAIZ MINI',0),(80,'HARINA SOJA',0),(81,'MAIZ PARTIDO',0),(90,'ACEITE DE SOJA',0),(91,'HARINA DE SOJA HIPRO',0),(92,'CUARTA DE CEBADA',0),(95,'MINI TRIGO',0),(96,'CT ALGODON',0),(97,'MAIZ FLINT',0),(98,'SUPER FOSFATO SIMPLE',0),(99,'PANZER GOLD',0),(100,'DOLAR',0),(101,'DOLAR-MAT',0),(102,'VARIOS',0),(103,'GARBANZO',0),(104,'POROTO MUNG',0),(105,'ARVEJA VERDE',0),(106,'EXPELLER',0),(107,'GORDO',0),(200,'MEZCLA FISICA 7-40',0);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `idusuarios` int unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `habilitado` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`idusuarios`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'usuario','mail@dominio.com',1),(3,'juan','juan@dominio.com',1);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-04 21:18:05
