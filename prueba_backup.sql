CREATE DATABASE  IF NOT EXISTS `prueba_marll_merchan` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `prueba_marll_merchan`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: prueba_marll_merchan
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `medico`
--

DROP TABLE IF EXISTS `medico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medico` (
  `idmedico` int NOT NULL AUTO_INCREMENT,
  `cedula` int NOT NULL,
  `nombres` varchar(45) NOT NULL,
  `especialidad` varchar(45) NOT NULL,
  `entidad` varchar(45) NOT NULL,
  PRIMARY KEY (`idmedico`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medico`
--

LOCK TABLES `medico` WRITE;
/*!40000 ALTER TABLE `medico` DISABLE KEYS */;
INSERT INTO `medico` VALUES (1,46583212,'esmeralda holguin','especialista','hospital'),(2,11216565,'maia lopez','aux enfermeria','clinica salud'),(3,8885945,'julio duarte','medicina general','hospital');
/*!40000 ALTER TABLE `medico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pacientes`
--

DROP TABLE IF EXISTS `pacientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pacientes` (
  `idpacientes` int NOT NULL AUTO_INCREMENT,
  `cedula` varchar(45) NOT NULL,
  `nombres` varchar(45) NOT NULL,
  `celular` int NOT NULL,
  `correo` varchar(50) NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`idpacientes`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pacientes`
--

LOCK TABLES `pacientes` WRITE;
/*!40000 ALTER TABLE `pacientes` DISABLE KEYS */;
INSERT INTO `pacientes` VALUES (1,'11215906','juan perez rey',22266565,'juan.perez@gmail.com','2015-09-01'),(2,'4032666','anamaria guzman',21252521,'anaguz@gmail.com','2021-01-25'),(3,'6598545','helena ortiz',321456266,'helena.85@gmail.com','2022-06-10'),(4,'95356565','sofia fuentes',314569857,'nenita.sofi@gmail.com','2023-04-18');
/*!40000 ALTER TABLE `pacientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registro_medico`
--

DROP TABLE IF EXISTS `registro_medico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registro_medico` (
  `idregistro_medico` int NOT NULL AUTO_INCREMENT,
  `id_medico` int NOT NULL,
  `id_paciente` int NOT NULL,
  `observaciones` varchar(200) NOT NULL,
  `fecha_atencion` date NOT NULL,
  PRIMARY KEY (`idregistro_medico`)
) ENGINE=InnoDB AUTO_INCREMENT=10002 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registro_medico`
--

LOCK TABLES `registro_medico` WRITE;
/*!40000 ALTER TABLE `registro_medico` DISABLE KEYS */;
INSERT INTO `registro_medico` VALUES (1,1,4,'paciente con malestar general','2023-05-26'),(2,2,2,'paciente con dolor abdominal, se maneja con medicamentos y reposo','2021-01-26'),(3,3,3,'paciente con lesion en brazo derecho, manifiesta que fue accidente en casa','2022-06-10'),(4,4,4,'paciente ingresa con fiebre y vomito, refiere que lleva mas de 24 horas con estos sintomas','2019-07-25');
/*!40000 ALTER TABLE `registro_medico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'prueba_marll_merchan'
--

--
-- Dumping routines for database 'prueba_marll_merchan'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-09 17:31:06
