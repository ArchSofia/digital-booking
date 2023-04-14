-- MySQL dump 10.13  Distrib 8.0.12, for macos10.13 (x86_64)
--
-- Host: localhost    Database: digitalB01
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `caracteristica`
--

DROP TABLE IF EXISTS `caracteristica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `caracteristica` (
  `idcaracteristica` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idcaracteristica`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caracteristica`
--

LOCK TABLES `caracteristica` WRITE;
/*!40000 ALTER TABLE `caracteristica` DISABLE KEYS */;
INSERT INTO `caracteristica` VALUES (1,'Televisión'),(2,'Wifi'),(3,'Frente a la costa'),(4,'Cocina'),(5,'Estacionamiento gratis en la propiedad'),(6,'Acceso a la playa - Frente a la playa'),(7,'Shampoo'),(8,'Servicios básicos'),(9,'Zona de trabajo'),(10,'Check-in sin restricción de horario');
/*!40000 ALTER TABLE `caracteristica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `categoria` (
  `idcategorias` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(150) DEFAULT NULL,
  `titulo` varchar(45) DEFAULT NULL,
  `url_imagen` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idcategorias`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'Hoteles','Hoteles','https://images.unsplash.com/photo-1618773928121-c32242e63f39?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'),(2,'Hostels','Hostels','https://images.unsplash.com/photo-1633411187642-f84216917af1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1191&q=80'),(3,'Departamentos','Departamentos','https://images.unsplash.com/photo-1522708323590-d24dbb6b0267?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'),(4,'Bed & Breakfast','Bed & Breakfast','https://images.unsplash.com/photo-1580041065738-e72023775cdc?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ciudad`
--

DROP TABLE IF EXISTS `ciudad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ciudad` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ciudad` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ciudad`
--

LOCK TABLES `ciudad` WRITE;
/*!40000 ALTER TABLE `ciudad` DISABLE KEYS */;
INSERT INTO `ciudad` VALUES (1,'Buenos Aires'),(2,'Mar del Plata'),(3,'Rosario'),(4,'La PLata'),(5,'Bahia Blanca'),(6,'Montevideo'),(7,'Santiago'),(8,'Paris'),(9,'Lisboa'),(10,'');
/*!40000 ALTER TABLE `ciudad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imagen`
--

DROP TABLE IF EXISTS `imagen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `imagen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `url` varchar(300) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imagen`
--

LOCK TABLES `imagen` WRITE;
/*!40000 ALTER TABLE `imagen` DISABLE KEYS */;
INSERT INTO `imagen` VALUES (1,'https://a0.muscache.com/im/pictures/miso/Hosting-40881177/original/e633a5e9-cb41-460c-a7a5-e81e762eb678.jpeg?im_w=960','depto 1'),(2,'https://a0.muscache.com/im/pictures/miso/Hosting-40881177/original/292fea04-c029-4ce1-b49e-fe9fb9b45e0e.jpeg?im_w=480','depto 1'),(3,'https://a0.muscache.com/im/pictures/miso/Hosting-40881177/original/91f877e7-8611-46fa-b69e-78aa74f27ff7.jpeg?im_w=480','depto  1 '),(4,'https://a0.muscache.com/im/pictures/miso/Hosting-40881177/original/56d0d1ca-6344-4752-91de-cf2a84bfa4f0.jpeg?im_w=480','depto 1 ');
/*!40000 ALTER TABLE `imagen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `producto` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(300) NOT NULL,
  `disponibilidad` varchar(50) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `ubicacion` varchar(50) NOT NULL,
  `id_caracteristica` bigint(20) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `id_ciudad` bigint(20) NOT NULL,
  `id_imagen` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKr2bud57hhknwckkdxtbc5f693` (`id_caracteristica`),
  KEY `FK9nyueixdsgbycfhf7allg8su` (`id_categoria`),
  KEY `FKhwy8t13s1wh2e2g402c4g6nfv` (`id_ciudad`),
  KEY `FKo5qi815a8x192arl7do3xrnfo` (`id_imagen`),
  CONSTRAINT `FK9nyueixdsgbycfhf7allg8su` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`idcategorias`),
  CONSTRAINT `FKhwy8t13s1wh2e2g402c4g6nfv` FOREIGN KEY (`id_ciudad`) REFERENCES `ciudad` (`id`),
  CONSTRAINT `FKo5qi815a8x192arl7do3xrnfo` FOREIGN KEY (`id_imagen`) REFERENCES `imagen` (`id`),
  CONSTRAINT `FKr2bud57hhknwckkdxtbc5f693` FOREIGN KEY (`id_caracteristica`) REFERENCES `caracteristica` (`idcaracteristica`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,'Vivienda alquilada entero. Anfitrión: Jean & Fernando','','ESTUDIO DE☆ ENSUEÑO EN BA ☆','Recoleta',4,3,1,1);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `puntuacion`
--

DROP TABLE IF EXISTS `puntuacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `puntuacion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `puntuacion` int(11) DEFAULT NULL,
  `id_producto` bigint(20) NOT NULL,
  `id_usuario` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKm9vrycb6odigk3a2sr7m3gn1f` (`id_producto`),
  KEY `FKq4fv9exo13himf51wxf4stp03` (`id_usuario`),
  CONSTRAINT `FKm9vrycb6odigk3a2sr7m3gn1f` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id`),
  CONSTRAINT `FKq4fv9exo13himf51wxf4stp03` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `puntuacion`
--

LOCK TABLES `puntuacion` WRITE;
/*!40000 ALTER TABLE `puntuacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `puntuacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `usuarios` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(300) NOT NULL,
  `apellido` varchar(300) NOT NULL,
  `email` varchar(300) NOT NULL,
  `contrasena` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Lucas','DeAndres','lucas.de.andres.1@gmail.com','123456'),(2,'David','Florez','davidsflorezc.dev@gmail.com','123456'),(3,'Sofia','Diaz-Valdez','sofiadiazvaldez@gmail.com','123456'),(4,'David','Cardenas','cardenasdavid26@outlook.com','123456');
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

-- Dump completed on 2023-03-01 12:16:31
