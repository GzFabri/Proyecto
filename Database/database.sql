/*!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.11.8-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: Proyecto_IngeniaCore
-- ------------------------------------------------------
-- Server version	10.11.8-MariaDB-0ubuntu0.24.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `acción_soporte`
--

DROP TABLE IF EXISTS `acción_soporte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acción_soporte` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acción_soporte`
--

LOCK TABLES `acción_soporte` WRITE;
/*!40000 ALTER TABLE `acción_soporte` DISABLE KEYS */;
INSERT INTO `acción_soporte` VALUES
(1,'Registro de Ticket','2025-03-12 15:27:25','2025-03-12 15:27:25'),
(2,'Asignación de Caso','2025-03-12 15:27:25','2025-03-12 15:27:25'),
(3,'Diagnóstico del Problema','2025-03-12 15:27:25','2025-03-12 15:27:25'),
(4,'Ejecución de Pruebas','2025-03-12 15:27:25','2025-03-12 15:27:25'),
(5,'Escalamiento de Caso','2025-03-12 15:27:25','2025-03-12 15:27:25'),
(6,'Solicitud de Información Adicional','2025-03-12 15:27:25','2025-03-12 15:27:25'),
(7,'Aplicación de Solución','2025-03-12 15:27:25','2025-03-12 15:27:25'),
(8,'Seguimiento al Caso','2025-03-12 15:27:25','2025-03-12 15:27:25'),
(9,'Confirmación con el Cliente','2025-03-12 15:27:25','2025-03-12 15:27:25'),
(10,'Cierre del Ticket','2025-03-12 15:27:25','2025-03-12 15:27:25'),
(11,'Reapertura del Ticket','2025-03-12 15:27:25','2025-03-12 15:27:25'),
(12,'Documentación de la Solución','2025-03-12 15:27:25','2025-03-12 15:27:25'),
(13,'Capacitación del Usuario','2025-03-12 15:27:25','2025-03-12 15:27:25'),
(14,'Mantenimiento Preventivo','2025-03-12 15:27:25','2025-03-12 15:27:25'),
(15,'Notificación al Cliente','2025-03-12 15:27:25','2025-03-12 15:27:25'),
(16,'Implementación de Mejora','2025-03-12 15:27:25','2025-03-12 15:27:25'),
(17,'Derivación a Otro Departamento','2025-03-12 15:27:25','2025-03-12 15:27:25');
/*!40000 ALTER TABLE `acción_soporte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ans`
--

DROP TABLE IF EXISTS `ans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ans` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `abreviatura` varchar(10) DEFAULT NULL,
  `descripción` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ans`
--

LOCK TABLES `ans` WRITE;
/*!40000 ALTER TABLE `ans` DISABLE KEYS */;
INSERT INTO `ans` VALUES
(1,'Incidencia Basica','T1','soporte front-end o soporte help desk. Es el nivel de soporte inicial cuando surgen problemas técnicos y se encargan de resolver incidencias básicas del cliente.','2025-03-12 15:28:13','2025-03-12 15:28:13'),
(2,'Problemas Complejos','T2','Se encargan de tareas como la resolución y diagnóstico de problemas más complejos que no se pudieron solucionar en el nivel 1.','2025-03-12 15:28:13','2025-03-12 15:28:13'),
(3,'Apoyo de alto nivel','T3','soporte de back-end o soporte de alto nivel. Es el nivel encargado de la solución de problemas que requieren el trabajo minucioso y especializado de un equipo técnico.','2025-03-12 15:28:13','2025-03-12 15:28:13');
/*!40000 ALTER TABLE `ans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ciudad`
--

DROP TABLE IF EXISTS `ciudad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ciudad` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `pais_id` bigint(20) unsigned DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `ciudad_pais_FK` (`pais_id`),
  CONSTRAINT `ciudad_pais_FK` FOREIGN KEY (`pais_id`) REFERENCES `pais` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ciudad`
--

LOCK TABLES `ciudad` WRITE;
/*!40000 ALTER TABLE `ciudad` DISABLE KEYS */;
INSERT INTO `ciudad` VALUES
(1,1,'Bogotá','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(2,1,'Medellín','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(3,1,'Cali','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(4,1,'Barranquilla','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(5,1,'Cartagena','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(6,1,'Cúcuta','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(7,1,'Bucaramanga','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(8,1,'Pereira','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(9,1,'Santa Marta','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(10,1,'Ibagué','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(11,1,'Manizales','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(12,1,'Villavicencio','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(13,1,'Neiva','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(14,1,'Pasto','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(15,1,'Armenia','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(16,1,'Montería','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(17,1,'Valledupar','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(18,1,'Sincelejo','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(19,1,'Popayán','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(20,1,'Tunja','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(21,1,'Floridablanca','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(22,1,'Riohacha','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(23,1,'Dosquebradas','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(24,1,'Tuluá','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(25,1,'Envigado','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(26,1,'Itagüí','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(27,1,'Palmira','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(28,1,'Buenaventura','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(29,1,'Soledad','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(30,1,'Bello','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(31,1,'Girardot','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(32,1,'Zipaquirá','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(33,1,'Fusagasugá','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(34,1,'Facatativá','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(35,1,'Chía','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(36,1,'Mosquera','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(37,1,'Funza','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(38,1,'Madrid','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(39,1,'Soacha','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(40,1,'Florencia','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(41,1,'Yopal','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(42,1,'Quibdó','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(43,1,'Arauca','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(44,1,'Mocoa','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(45,1,'Mitú','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(46,1,'San José del Guaviare','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(47,1,'Puerto Carreño','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(48,1,'Leticia','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(49,1,'Apartadó','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(50,1,'Turbo','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(51,1,'Magangué','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(52,1,'Maicao','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(53,1,'Sogamoso','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(54,1,'Duitama','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(55,1,'Ocaña','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(56,1,'Caucasia','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(57,1,'La Dorada','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(58,1,'Pitalito','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(59,1,'Ipiales','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(60,1,'San Andrés','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(61,1,'Rionegro','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(62,1,'Copacabana','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(63,1,'Candelaria','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(64,1,'Jamundí','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(65,1,'Yumbo','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(66,1,'El Cerrito','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(67,1,'Puerto Tejada','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(68,1,'Santander de Quilichao','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(69,1,'Corozal','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(70,1,'Sahagún','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(71,1,'Lorica','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(72,1,'Cereté','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(73,1,'Montelíbano','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(74,1,'Tierralta','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(75,1,'Planeta Rica','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(76,1,'Garzón','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(77,1,'La Plata','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(78,1,'Campoalegre','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(79,1,'Gigante','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(80,1,'Villanueva','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(81,1,'San Juan del Cesar','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(82,1,'Fonseca','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(83,1,'Barrancas','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(84,1,'Agustín Codazzi','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(85,1,'El Copey','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(86,1,'La Paz','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(87,1,'Curumaní','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(88,1,'San Martín','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(89,1,'Puerto Berrío','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(90,1,'Cisneros','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(91,1,'Amagá','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(92,1,'Andes','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(93,1,'Jardín','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(94,1,'Támesis','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(95,1,'Santa Rosa de Osos','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(96,1,'Yarumal','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(97,1,'Donmatías','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(98,1,'San Pedro de los Milagros','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(99,1,'Marinilla','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(100,1,'Guarne','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(101,1,'El Santuario','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(102,1,'La Ceja','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(103,1,'Sonsón','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(104,1,'Aguadas','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(105,1,'Filandia','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(106,1,'Belén de Umbría','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(107,1,'Marsella','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(108,1,'Mistrató','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(109,1,'Pueblo Rico','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(110,1,'Santuario','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(111,1,'Quinchía','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(112,1,'La Virginia','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(113,1,'Apía','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(114,1,'Anserma','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(115,1,'Riosucio','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(116,1,'Supía','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(117,1,'Aranzazu','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(118,1,'Salamina','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(119,1,'Neira','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(120,1,'Pácora','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(121,1,'Samaná','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(122,1,'Norcasia','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(123,1,'Victoria','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(124,1,'La Merced','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(125,1,'Pensilvania','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(126,1,'Marquetalia','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(127,1,'Manzanares','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(128,1,'Herveo','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(129,1,'Murillo','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(130,1,'Santa Isabel','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(131,1,'Coyaima','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(132,1,'Natagaima','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(133,1,'Purificación','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(134,1,'Chaparral','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(135,1,'Planadas','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(136,1,'Ortega','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(137,1,'Suárez','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(138,1,'Tuluá','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(139,1,'Roldanillo','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(140,1,'Zarzal','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(141,1,'San Pedro','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(142,1,'Sevilla','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(143,1,'La Unión','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(144,1,'Dagua','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(145,1,'Bugalagrande','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(146,1,'El Águila','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(147,1,'Argelia','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(148,1,'Restrepo','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(149,1,'Toro','2025-03-13 22:03:04','2025-03-13 22:03:04'),
(150,1,'Trujillo','2025-03-13 22:03:04','2025-03-13 22:03:04');
/*!40000 ALTER TABLE `ciudad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tipo_documento_id` bigint(20) unsigned DEFAULT NULL,
  `ciudad_id` bigint(20) unsigned DEFAULT NULL,
  `estado_contrato_id` bigint(20) unsigned DEFAULT NULL,
  `notificación_id` bigint(20) unsigned DEFAULT NULL,
  `numero_identificacion` varchar(100) DEFAULT NULL,
  `nombre` varchar(150) DEFAULT NULL,
  `direccion` varchar(150) DEFAULT NULL,
  `telefono` varchar(100) DEFAULT NULL,
  `celular` varchar(100) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `cliente_tipo_documento_FK` (`tipo_documento_id`),
  KEY `cliente_ciudad_FK` (`ciudad_id`),
  KEY `cliente_estado_contrato_FK` (`estado_contrato_id`),
  KEY `cliente_notificación_FK` (`notificación_id`),
  CONSTRAINT `cliente_ciudad_FK` FOREIGN KEY (`ciudad_id`) REFERENCES `ciudad` (`id`),
  CONSTRAINT `cliente_estado_contrato_FK` FOREIGN KEY (`estado_contrato_id`) REFERENCES `estado_contrato` (`id`),
  CONSTRAINT `cliente_notificación_FK` FOREIGN KEY (`notificación_id`) REFERENCES `notificación` (`id`),
  CONSTRAINT `cliente_tipo_documento_FK` FOREIGN KEY (`tipo_documento_id`) REFERENCES `tipo_documento` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES
(1,3,3,1,2,'890706413','Tecnicentro Llantas Quinta Avenida','Cra 5 27-01','608 2678902','3018907652','tecnicentrollantasquintaavenid@gmail.com','2025-03-18 01:48:15','2025-03-18 01:48:15'),
(2,3,5,2,1,'901840837','A&L System Solution','Avenida Principal 4-56','601 5156789','3052660662','info@systemsolution.com','2025-03-18 01:48:15','2025-03-18 01:48:15'),
(3,3,1,1,3,'900488472','DCM System S.A.S','Carrera 7 3-89','605 5719087','3209806543','info@dcmsystem.com','2025-03-18 01:48:15','2025-03-18 01:48:15'),
(4,3,1,2,1,'901068202','Latin Games Software S.A.S','Cra 3 92A-60','601 5234567','3124567890','info@latingamesoftware.com','2025-03-18 01:48:15','2025-03-18 01:48:15'),
(5,3,2,1,1,'901601313','Spine Software Colombia S.A.S','Calle 13 6-60 ','602 4876466','3224566789','info@spinesoftware.com','2025-03-18 01:48:15','2025-03-18 01:48:15');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente_servicio`
--

DROP TABLE IF EXISTS `cliente_servicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente_servicio` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cliente_id` bigint(20) unsigned DEFAULT NULL,
  `servicio_id` bigint(20) unsigned DEFAULT NULL,
  `estado_servicio_id` bigint(20) unsigned DEFAULT NULL,
  `fecha_inicial` date DEFAULT NULL,
  `fecha_final` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `cliente_servicio_cliente_FK` (`cliente_id`),
  KEY `cliente_servicio_servicio_FK` (`servicio_id`),
  KEY `cliente_servicio_estado_servicio_FK` (`estado_servicio_id`),
  CONSTRAINT `cliente_servicio_cliente_FK` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`id`),
  CONSTRAINT `cliente_servicio_estado_servicio_FK` FOREIGN KEY (`estado_servicio_id`) REFERENCES `estado_servicio` (`id`),
  CONSTRAINT `cliente_servicio_servicio_FK` FOREIGN KEY (`servicio_id`) REFERENCES `servicio` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente_servicio`
--

LOCK TABLES `cliente_servicio` WRITE;
/*!40000 ALTER TABLE `cliente_servicio` DISABLE KEYS */;
INSERT INTO `cliente_servicio` VALUES
(1,1,2,1,'2024-01-10','2024-12-31','2025-03-18 02:48:37','2025-03-18 02:48:37'),
(2,2,5,3,'2024-02-15','2024-11-30','2025-03-18 02:48:37','2025-03-18 02:48:37'),
(3,3,8,6,'2024-03-20','2024-03-20','2025-03-18 02:48:37','2025-03-18 02:48:37'),
(4,4,4,2,'2024-04-25','2024-10-25','2025-03-18 02:48:37','2025-03-18 02:48:37'),
(5,5,10,8,'2024-05-30','2024-05-30','2025-03-18 02:48:37','2025-03-18 02:48:37');
/*!40000 ALTER TABLE `cliente_servicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `complejidad`
--

DROP TABLE IF EXISTS `complejidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `complejidad` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `descripción` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `complejidad`
--

LOCK TABLES `complejidad` WRITE;
/*!40000 ALTER TABLE `complejidad` DISABLE KEYS */;
INSERT INTO `complejidad` VALUES
(1,'Trival','Tarea muy simple, menos de 30 minutos.','2025-03-12 15:33:39','2025-03-12 15:33:39'),
(2,'Muy baja','Tarea sencilla, menos de 2 horas.','2025-03-12 15:33:39','2025-03-12 15:33:39'),
(3,'Baja','Requiere algo de análisis, de 2 a 4 horas.','2025-03-12 15:33:39','2025-03-12 15:33:39'),
(4,'Media','Trabajo moderado, de 4 a 8 horas.','2025-03-12 15:33:39','2025-03-12 15:33:39'),
(5,'Alta','Requiere coordinación con otros equipos, hasta 2 días.','2025-03-12 15:33:39','2025-03-12 15:33:39'),
(6,'Muy Alta','Trabajo complejo con riesgos, de 3 a 5 días.','2025-03-12 15:33:39','2025-03-12 15:33:39'),
(7,'Crítica','Proyecto crítico o con alto nivel de incertidumbre.','2025-03-12 15:33:39','2025-03-12 15:33:39');
/*!40000 ALTER TABLE `complejidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado`
--

DROP TABLE IF EXISTS `estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estado` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado`
--

LOCK TABLES `estado` WRITE;
/*!40000 ALTER TABLE `estado` DISABLE KEYS */;
INSERT INTO `estado` VALUES
(1,'En Diseño','2025-03-12 15:31:07','2025-03-12 15:31:07'),
(2,'En Desarrollo','2025-03-12 15:31:07','2025-03-12 15:31:07'),
(3,'En Prueba','2025-03-12 15:31:07','2025-03-12 15:31:07'),
(4,'Rechazado','2025-03-12 15:31:07','2025-03-12 15:31:07'),
(5,'En Analisis','2025-03-12 15:31:07','2025-03-12 15:31:07'),
(6,'Aprobado','2025-03-12 15:31:07','2025-03-12 15:31:07'),
(7,'Implementado','2025-03-12 15:31:07','2025-03-12 15:31:07'),
(8,'En Revisión','2025-03-12 15:31:07','2025-03-12 15:31:07'),
(9,'Bloqueado','2025-03-12 15:31:07','2025-03-12 15:31:07'),
(10,'Requiere Ajustes','2025-03-12 15:31:07','2025-03-12 15:31:07'),
(11,'Pendiente','2025-03-12 15:31:07','2025-03-12 15:31:07'),
(12,'Completado','2025-03-12 15:31:07','2025-03-12 15:31:07');
/*!40000 ALTER TABLE `estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado_contrato`
--

DROP TABLE IF EXISTS `estado_contrato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estado_contrato` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_final` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado_contrato`
--

LOCK TABLES `estado_contrato` WRITE;
/*!40000 ALTER TABLE `estado_contrato` DISABLE KEYS */;
INSERT INTO `estado_contrato` VALUES
(1,'Vigente',NULL,NULL,'2025-03-12 15:30:06','2025-03-12 15:30:06'),
(2,'No vigente',NULL,NULL,'2025-03-12 15:30:06','2025-03-12 15:30:06');
/*!40000 ALTER TABLE `estado_contrato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado_proyecto`
--

DROP TABLE IF EXISTS `estado_proyecto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estado_proyecto` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado_proyecto`
--

LOCK TABLES `estado_proyecto` WRITE;
/*!40000 ALTER TABLE `estado_proyecto` DISABLE KEYS */;
INSERT INTO `estado_proyecto` VALUES
(1,'En Diseño','2025-03-12 15:32:56','2025-03-12 15:32:56'),
(2,'En Desarrollo','2025-03-12 15:32:56','2025-03-12 15:32:56'),
(3,'En Prueba','2025-03-12 15:32:56','2025-03-12 15:32:56'),
(4,'Finalizado','2025-03-12 15:32:56','2025-03-12 15:32:56'),
(5,'Cancelado','2025-03-12 15:32:56','2025-03-12 15:32:56');
/*!40000 ALTER TABLE `estado_proyecto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado_requerimiento`
--

DROP TABLE IF EXISTS `estado_requerimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estado_requerimiento` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado_requerimiento`
--

LOCK TABLES `estado_requerimiento` WRITE;
/*!40000 ALTER TABLE `estado_requerimiento` DISABLE KEYS */;
INSERT INTO `estado_requerimiento` VALUES
(1,'Pendiente','2025-03-12 15:32:17','2025-03-12 15:32:17'),
(2,'En Analisis','2025-03-12 15:32:17','2025-03-12 15:32:17'),
(3,'Aprobado','2025-03-12 15:32:17','2025-03-12 15:32:17'),
(4,'En Desarrollo','2025-03-12 15:32:17','2025-03-12 15:32:17'),
(5,'En Pruebas','2025-03-12 15:32:17','2025-03-12 15:32:17'),
(6,'Implementado','2025-03-12 15:32:17','2025-03-12 15:32:17'),
(7,'En Monitoreo','2025-03-12 15:32:17','2025-03-12 15:32:17'),
(8,'Cerrado','2025-03-12 15:32:17','2025-03-12 15:32:17'),
(9,'Rechazado','2025-03-12 15:32:17','2025-03-12 15:32:17'),
(10,'En Espera','2025-03-12 15:32:17','2025-03-12 15:32:17');
/*!40000 ALTER TABLE `estado_requerimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado_servicio`
--

DROP TABLE IF EXISTS `estado_servicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estado_servicio` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado_servicio`
--

LOCK TABLES `estado_servicio` WRITE;
/*!40000 ALTER TABLE `estado_servicio` DISABLE KEYS */;
INSERT INTO `estado_servicio` VALUES
(1,'Al dia','2025-03-12 15:34:22','2025-03-12 15:34:22'),
(2,'Con deuda parcial','2025-03-12 15:34:22','2025-03-12 15:34:22'),
(3,'Moroso','2025-03-12 15:34:22','2025-03-12 15:34:22'),
(4,'En negociación','2025-03-12 15:34:22','2025-03-12 15:34:22'),
(5,'Con financiamiento','2025-03-12 15:34:22','2025-03-12 15:34:22'),
(6,'Suspendido','2025-03-12 15:34:22','2025-03-12 15:34:22'),
(7,'Inactivo','2025-03-12 15:34:22','2025-03-12 15:34:22'),
(8,'Cliente VIP','2025-03-12 15:34:22','2025-03-12 15:34:22');
/*!40000 ALTER TABLE `estado_servicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado_soporte`
--

DROP TABLE IF EXISTS `estado_soporte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estado_soporte` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado_soporte`
--

LOCK TABLES `estado_soporte` WRITE;
/*!40000 ALTER TABLE `estado_soporte` DISABLE KEYS */;
INSERT INTO `estado_soporte` VALUES
(1,'Nuevo','2025-03-12 15:34:45','2025-03-12 15:34:45'),
(2,'En Revisión','2025-03-12 15:34:45','2025-03-12 15:34:45'),
(3,'En Proceso','2025-03-12 15:34:45','2025-03-12 15:34:45'),
(4,'Escalado','2025-03-12 15:34:45','2025-03-12 15:34:45'),
(5,'En espera de información','2025-03-12 15:34:45','2025-03-12 15:34:45'),
(6,'Resuelto','2025-03-12 15:34:45','2025-03-12 15:34:45'),
(7,'Cerrado','2025-03-12 15:34:45','2025-03-12 15:34:45'),
(8,'Reabierto','2025-03-12 15:34:45','2025-03-12 15:34:45'),
(9,'Cancelado','2025-03-12 15:34:45','2025-03-12 15:34:45');
/*!40000 ALTER TABLE `estado_soporte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado_tarea`
--

DROP TABLE IF EXISTS `estado_tarea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estado_tarea` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado_tarea`
--

LOCK TABLES `estado_tarea` WRITE;
/*!40000 ALTER TABLE `estado_tarea` DISABLE KEYS */;
INSERT INTO `estado_tarea` VALUES
(1,'Pendiente','2025-03-12 15:41:26','2025-03-12 15:41:26'),
(2,'En Progreso','2025-03-12 15:41:26','2025-03-12 15:41:26'),
(3,'Bloqueado','2025-03-12 15:41:26','2025-03-12 15:41:26'),
(4,'En Espera de Información','2025-03-12 15:41:26','2025-03-12 15:41:26'),
(5,'Escalado','2025-03-12 15:41:26','2025-03-12 15:41:26'),
(6,'En Prueba','2025-03-12 15:41:26','2025-03-12 15:41:26'),
(7,'Requiere Ajustes','2025-03-12 15:41:26','2025-03-12 15:41:26'),
(8,'Completado','2025-03-12 15:41:26','2025-03-12 15:41:26'),
(9,'Cancelado','2025-03-12 15:41:26','2025-03-12 15:41:26');
/*!40000 ALTER TABLE `estado_tarea` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado_usuario`
--

DROP TABLE IF EXISTS `estado_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estado_usuario` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado_usuario`
--

LOCK TABLES `estado_usuario` WRITE;
/*!40000 ALTER TABLE `estado_usuario` DISABLE KEYS */;
INSERT INTO `estado_usuario` VALUES
(1,'Activo','2025-03-12 15:29:44','2025-03-12 15:29:44'),
(2,'Inactivo','2025-03-12 15:29:44','2025-03-12 15:29:44');
/*!40000 ALTER TABLE `estado_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `etiqueta`
--

DROP TABLE IF EXISTS `etiqueta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `etiqueta` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `etiqueta`
--

LOCK TABLES `etiqueta` WRITE;
/*!40000 ALTER TABLE `etiqueta` DISABLE KEYS */;
INSERT INTO `etiqueta` VALUES
(1,'Código fuente','2025-03-12 15:33:10','2025-03-12 15:33:10'),
(2,'Algoritmos','2025-03-12 15:33:10','2025-03-12 15:33:10'),
(3,'Interfaz_usuario','2025-03-12 15:33:10','2025-03-12 15:33:10'),
(4,'Base_datos','2025-03-12 15:33:10','2025-03-12 15:33:10'),
(5,'Backend','2025-03-12 15:33:10','2025-03-12 15:33:10'),
(6,'Frontend','2025-03-12 15:33:10','2025-03-12 15:33:10'),
(7,'Sistema_operativo','2025-03-12 15:33:10','2025-03-12 15:33:10'),
(8,'Apis','2025-03-12 15:33:10','2025-03-12 15:33:10'),
(9,'Frameworks','2025-03-12 15:33:10','2025-03-12 15:33:10'),
(10,'Seguridad','2025-03-12 15:33:10','2025-03-12 15:33:10');
/*!40000 ALTER TABLE `etiqueta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fase`
--

DROP TABLE IF EXISTS `fase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fase` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fase`
--

LOCK TABLES `fase` WRITE;
/*!40000 ALTER TABLE `fase` DISABLE KEYS */;
INSERT INTO `fase` VALUES
(1,'Incio','2025-03-12 15:32:36','2025-03-12 15:32:36'),
(2,'Planificación','2025-03-12 15:32:36','2025-03-12 15:32:36'),
(3,'Ejecución','2025-03-12 15:32:36','2025-03-12 15:32:36'),
(4,'Cierre','2025-03-12 15:32:36','2025-03-12 15:32:36');
/*!40000 ALTER TABLE `fase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) DEFAULT NULL,
  `icono` varchar(150) DEFAULT NULL,
  `item_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `item_item_FK` (`item_id`),
  CONSTRAINT `item_item_FK` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notificación`
--

DROP TABLE IF EXISTS `notificación`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notificación` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notificación`
--

LOCK TABLES `notificación` WRITE;
/*!40000 ALTER TABLE `notificación` DISABLE KEYS */;
INSERT INTO `notificación` VALUES
(1,'Confirmación de Ticket Creado','2025-03-12 15:30:50','2025-03-12 15:30:50'),
(2,'Actualización del Ticket','2025-03-12 15:30:50','2025-03-12 15:30:50'),
(3,'Resolución de Ticket','2025-03-12 15:30:50','2025-03-12 15:30:50'),
(4,'Ticket Escalado','2025-03-12 15:30:50','2025-03-12 15:30:50'),
(5,'Recordatorio de Cierre de Ticket','2025-03-12 15:30:50','2025-03-12 15:30:50'),
(6,'Notificación de Mantenimiento Programado','2025-03-12 15:30:50','2025-03-12 15:30:50'),
(7,'Alerta de Problema Técnico','2025-03-12 15:30:50','2025-03-12 15:30:50'),
(8,'Confirmación de Cambio Solicitado','2025-03-12 15:30:50','2025-03-12 15:30:50'),
(9,'Encuesta de Satisfacción','2025-03-12 15:30:50','2025-03-12 15:30:50'),
(10,'Reactivación de Servicio','2025-03-12 15:30:50','2025-03-12 15:30:50');
/*!40000 ALTER TABLE `notificación` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pais`
--

DROP TABLE IF EXISTS `pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pais` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `indicativo` int(11) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pais`
--

LOCK TABLES `pais` WRITE;
/*!40000 ALTER TABLE `pais` DISABLE KEYS */;
INSERT INTO `pais` VALUES
(1,57,'Colombia','2025-03-12 15:29:24','2025-03-12 15:29:24'),
(2,54,' Argentina','2025-03-12 15:29:24','2025-03-12 15:29:24'),
(3,55,'Brasil','2025-03-12 15:29:24','2025-03-12 15:29:24'),
(4,57,'Bolivia','2025-03-12 15:29:24','2025-03-12 15:29:24'),
(5,506,'Costa Rica','2025-03-12 15:29:24','2025-03-12 15:29:24'),
(6,53,'Cuba','2025-03-12 15:29:24','2025-03-12 15:29:24'),
(7,593,'Ecuador','2025-03-12 15:29:24','2025-03-12 15:29:24'),
(8,502,'Guatemala','2025-03-12 15:29:24','2025-03-12 15:29:24'),
(9,504,'Honduras','2025-03-12 15:29:24','2025-03-12 15:29:24'),
(10,503,'El Salvador','2025-03-12 15:29:24','2025-03-12 15:29:24'),
(11,509,'Haití','2025-03-12 15:29:24','2025-03-12 15:29:24'),
(12,52,'Mexico','2025-03-12 15:29:24','2025-03-12 15:29:24'),
(13,505,'Nicaragua','2025-03-12 15:29:24','2025-03-12 15:29:24'),
(14,507,'Panamá','2025-03-12 15:29:24','2025-03-12 15:29:24'),
(15,595,'Paraguay','2025-03-12 15:29:24','2025-03-12 15:29:24'),
(16,51,'Perú','2025-03-12 15:29:24','2025-03-12 15:29:24'),
(17,598,'Uruguay','2025-03-12 15:29:24','2025-03-12 15:29:24'),
(18,58,'Venezuela','2025-03-12 15:29:24','2025-03-12 15:29:24');
/*!40000 ALTER TABLE `pais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permiso_item`
--

DROP TABLE IF EXISTS `permiso_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permiso_item` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `permiso_id` bigint(20) unsigned DEFAULT NULL,
  `item_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `permiso_item_permisos_FK` (`permiso_id`),
  KEY `permiso_item_item_FK` (`item_id`),
  CONSTRAINT `permiso_item_item_FK` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`),
  CONSTRAINT `permiso_item_permisos_FK` FOREIGN KEY (`permiso_id`) REFERENCES `permisos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permiso_item`
--

LOCK TABLES `permiso_item` WRITE;
/*!40000 ALTER TABLE `permiso_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `permiso_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permisos`
--

DROP TABLE IF EXISTS `permisos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permisos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permisos`
--

LOCK TABLES `permisos` WRITE;
/*!40000 ALTER TABLE `permisos` DISABLE KEYS */;
INSERT INTO `permisos` VALUES
(1,'Ver','2025-03-12 15:31:55','2025-03-12 15:31:55'),
(2,'Crear','2025-03-12 15:31:55','2025-03-12 15:31:55'),
(3,'Eliminar','2025-03-12 15:31:55','2025-03-12 15:31:55'),
(4,'Aprobar','2025-03-12 15:31:55','2025-03-12 15:31:55'),
(5,'Rechazar','2025-03-12 15:31:55','2025-03-12 15:31:55'),
(6,'Actualizar','2025-03-12 15:31:55','2025-03-12 15:31:55'),
(7,'Asignar','2025-03-12 15:31:55','2025-03-12 15:31:55'),
(8,'Configurar Sistemas','2025-03-12 15:31:55','2025-03-12 15:31:55'),
(9,'Imprimir','2025-03-12 15:31:55','2025-03-12 15:31:55'),
(10,'Lectura','2025-03-12 15:31:55','2025-03-12 15:31:55');
/*!40000 ALTER TABLE `permisos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prioridad`
--

DROP TABLE IF EXISTS `prioridad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prioridad` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prioridad`
--

LOCK TABLES `prioridad` WRITE;
/*!40000 ALTER TABLE `prioridad` DISABLE KEYS */;
INSERT INTO `prioridad` VALUES
(1,'Alta','2025-03-12 15:31:23','2025-03-12 15:31:23'),
(2,'Media','2025-03-12 15:31:23','2025-03-12 15:31:23'),
(3,'Baja','2025-03-12 15:31:23','2025-03-12 15:31:23');
/*!40000 ALTER TABLE `prioridad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proyecto`
--

DROP TABLE IF EXISTS `proyecto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proyecto` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `estado_proyecto_id` bigint(20) unsigned DEFAULT NULL,
  `fase_id` bigint(20) unsigned DEFAULT NULL,
  `nombre` varchar(150) DEFAULT NULL,
  `descripción` text DEFAULT NULL,
  `fecha_inicio_vigente` date DEFAULT NULL,
  `fecha_final_vigente` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `proyecto_estado_proyecto_FK` (`estado_proyecto_id`),
  KEY `proyecto_fase_FK` (`fase_id`),
  CONSTRAINT `proyecto_estado_proyecto_FK` FOREIGN KEY (`estado_proyecto_id`) REFERENCES `estado_proyecto` (`id`),
  CONSTRAINT `proyecto_fase_FK` FOREIGN KEY (`fase_id`) REFERENCES `fase` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proyecto`
--

LOCK TABLES `proyecto` WRITE;
/*!40000 ALTER TABLE `proyecto` DISABLE KEYS */;
INSERT INTO `proyecto` VALUES
(1,1,2,'Plataforma de Trazabilidad y Control de Proyectos','Plataforma para gestionar el ciclo de vida de los proyectos de desarrollo de software.','2025-03-01','2025-03-04','2025-03-14 19:42:58','2025-03-14 19:42:58'),
(2,2,1,'Gestor de Requerimientos y Cambios','Sistema para registrar, aprobar y hacer seguimiento a requerimientos y cambios en proyectos.','2025-03-05','2025-03-11','2025-03-14 19:42:58','2025-03-14 19:42:58'),
(3,3,3,'Automatización de Reportes de Avance','Herramienta para generar informes de progreso y cumplimiento de hitos en los proyectos.','2025-03-12','2025-03-20','2025-03-14 19:42:58','2025-03-14 19:42:58'),
(4,4,4,'Sistema de Gestión de Tickets de Soporte','Aplicación para registrar y hacer seguimiento a incidencias y solicitudes de clientes.','2025-03-21','2025-03-30','2025-03-14 19:42:58','2025-03-14 19:42:58'),
(5,2,2,'Plataforma de Capacitación en Gestión de Proyectos','Portal de formación para mejorar la gestión de proyectos en la empresa.','2025-04-01','2025-04-08','2025-03-14 19:42:58','2025-03-14 19:42:58');
/*!40000 ALTER TABLE `proyecto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requerimiento`
--

DROP TABLE IF EXISTS `requerimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `requerimiento` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `estado_requerimiento_id` bigint(20) unsigned DEFAULT NULL,
  `proyecto_id` bigint(20) unsigned DEFAULT NULL,
  `prioridad_id` bigint(20) unsigned DEFAULT NULL,
  `nombre` varchar(150) DEFAULT NULL,
  `descripción` text DEFAULT NULL,
  `fecha_creación` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `requerimiento_estado_requerimiento_FK` (`estado_requerimiento_id`),
  KEY `requerimiento_proyecto_FK` (`proyecto_id`),
  KEY `requerimiento_prioridad_FK` (`prioridad_id`),
  CONSTRAINT `requerimiento_estado_requerimiento_FK` FOREIGN KEY (`estado_requerimiento_id`) REFERENCES `estado_requerimiento` (`id`),
  CONSTRAINT `requerimiento_prioridad_FK` FOREIGN KEY (`prioridad_id`) REFERENCES `prioridad` (`id`),
  CONSTRAINT `requerimiento_proyecto_FK` FOREIGN KEY (`proyecto_id`) REFERENCES `proyecto` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requerimiento`
--

LOCK TABLES `requerimiento` WRITE;
/*!40000 ALTER TABLE `requerimiento` DISABLE KEYS */;
INSERT INTO `requerimiento` VALUES
(1,1,1,2,'Definición del alcance del proyecto','Especificar claramente los objetivos, entregables y límites del proyecto.','2025-03-02','2025-03-15 00:33:45','2025-03-15 00:33:45'),
(2,2,1,1,'Identificación de stakeholders','Determinar todas las partes interesadas y documentar sus expectativas.','2025-03-03','2025-03-15 00:33:45','2025-03-15 00:33:45'),
(3,1,2,3,'Planificación de recursos','Asignar personal, herramientas, presupuesto y tecnologías necesarias.','2025-03-06','2025-03-15 00:33:45','2025-03-15 00:33:45'),
(4,3,2,2,'Gestión de riesgos','Identificar posibles problemas y definir estrategias de mitigación.','2025-03-08','2025-03-15 00:33:45','2025-03-15 00:33:45'),
(5,2,4,1,'Seguridad y cumplimiento normativo','Implementar medidas de seguridad y cumplimiento con regulaciones (ISO, GDPR, etc.).','2023-03-10','2025-03-15 00:33:45','2025-03-15 00:33:45'),
(6,1,3,2,'Capacitación y adopción del sistema','Planificar entrenamientos para usuarios y equipos técnicos.','2025-03-12','2025-03-15 00:33:45','2025-03-15 00:33:45'),
(7,2,3,1,'Desarrollo de API de autenticacion','Implementar autenticación de usuarios (tarea)','2025-03-14','2025-03-15 00:33:45','2025-03-15 00:33:45'),
(8,3,3,2,'Monitoreo y mantenimiento post-producción','Implementar herramientas de observabilidad para detectar fallos en tiempo real.','2025-03-16','2025-03-15 00:33:45','2025-03-15 00:33:45'),
(9,2,4,3,'Optimización del rendimiento','Mejorar tiempos de respuesta del frontend (tarea)','2025-03-18','2025-03-15 00:33:45','2025-03-15 00:33:45'),
(10,1,4,2,'Documentacion y mantenimiento del código','Documentar la estructura de la base de datos (tarea)','2025-03-20','2025-03-15 00:33:45','2025-03-15 00:33:45');
/*!40000 ALTER TABLE `requerimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rol`
--

DROP TABLE IF EXISTS `rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rol` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rol`
--

LOCK TABLES `rol` WRITE;
/*!40000 ALTER TABLE `rol` DISABLE KEYS */;
INSERT INTO `rol` VALUES
(1,'Gerente de Proyecto (Project Manager - PM)','2025-03-12 15:31:37','2025-03-12 15:31:37'),
(2,'Scrum Master','2025-03-12 15:31:37','2025-03-12 15:31:37'),
(3,'Product Owner (PO)','2025-03-12 15:31:37','2025-03-12 15:31:37'),
(4,'Líder Técnico (Tech Lead)','2025-03-12 15:31:37','2025-03-12 15:31:37'),
(5,'Arquitecto de Software','2025-03-12 15:31:37','2025-03-12 15:31:37'),
(6,'Desarrollador Backend','2025-03-12 15:31:37','2025-03-12 15:31:37'),
(7,'Desarrollador Frontend','2025-03-12 15:31:37','2025-03-12 15:31:37'),
(8,'Analista de Negocio (Business Analyst - BA)','2025-03-12 15:31:37','2025-03-12 15:31:37'),
(9,'Tester / QA Engineer','2025-03-12 15:31:37','2025-03-12 15:31:37'),
(10,'Administrador de Base de Datos (DBA)','2025-03-12 15:31:37','2025-03-12 15:31:37');
/*!40000 ALTER TABLE `rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rol_permiso_item`
--

DROP TABLE IF EXISTS `rol_permiso_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rol_permiso_item` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `rol_id` bigint(20) unsigned DEFAULT NULL,
  `permiso_id` bigint(20) unsigned DEFAULT NULL,
  `item_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `rol_permiso_item_rol_FK` (`rol_id`),
  KEY `rol_permiso_item_permisos_FK` (`permiso_id`),
  KEY `rol_permiso_item_item_FK` (`item_id`),
  CONSTRAINT `rol_permiso_item_item_FK` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`),
  CONSTRAINT `rol_permiso_item_permisos_FK` FOREIGN KEY (`permiso_id`) REFERENCES `permisos` (`id`),
  CONSTRAINT `rol_permiso_item_rol_FK` FOREIGN KEY (`rol_id`) REFERENCES `rol` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rol_permiso_item`
--

LOCK TABLES `rol_permiso_item` WRITE;
/*!40000 ALTER TABLE `rol_permiso_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `rol_permiso_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicio`
--

DROP TABLE IF EXISTS `servicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servicio` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicio`
--

LOCK TABLES `servicio` WRITE;
/*!40000 ALTER TABLE `servicio` DISABLE KEYS */;
INSERT INTO `servicio` VALUES
(1,'Consultoría en Gestión de Proyectos','2025-03-12 15:34:03','2025-03-12 15:34:03'),
(2,'Desarrollo de Software a Medida','2025-03-12 15:34:03','2025-03-12 15:34:03'),
(3,'Implementación de Metodologías Ágiles','2025-03-12 15:34:03','2025-03-12 15:34:03'),
(4,'Gestión de Integraciones y APIs','2025-03-12 15:34:03','2025-03-12 15:34:03'),
(5,'Optimización y Mejora de Procesos','2025-03-12 15:34:03','2025-03-12 15:34:03'),
(6,'Gestión de Infraestructura y DevOps','2025-03-12 15:34:03','2025-03-12 15:34:03'),
(7,'Monitoreo y Control de Proyectos','2025-03-12 15:34:03','2025-03-12 15:34:03'),
(8,'Capacitación en Gestión de Proyectos','2025-03-12 15:34:03','2025-03-12 15:34:03'),
(9,'Seguridad y Cumplimiento Normativo','2025-03-12 15:34:03','2025-03-12 15:34:03'),
(10,'Soporte y Mantenimiento de Software','2025-03-12 15:34:03','2025-03-12 15:34:03');
/*!40000 ALTER TABLE `servicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tarea`
--

DROP TABLE IF EXISTS `tarea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tarea` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `requerimiento_id` bigint(20) unsigned DEFAULT NULL,
  `estado_tarea_id` bigint(20) unsigned DEFAULT NULL,
  `etiqueta_id` bigint(20) unsigned DEFAULT NULL,
  `complejidad_id` bigint(20) unsigned DEFAULT NULL,
  `comentario` text DEFAULT NULL,
  `fecha_estimacion` date DEFAULT NULL,
  `fecha_finalizacion` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `tarea_requerimiento_FK` (`requerimiento_id`),
  KEY `tarea_estado_tarea_FK` (`estado_tarea_id`),
  KEY `tarea_etiqueta_FK` (`etiqueta_id`),
  KEY `tarea_complejidad_FK` (`complejidad_id`),
  CONSTRAINT `tarea_complejidad_FK` FOREIGN KEY (`complejidad_id`) REFERENCES `complejidad` (`id`),
  CONSTRAINT `tarea_estado_tarea_FK` FOREIGN KEY (`estado_tarea_id`) REFERENCES `estado_tarea` (`id`),
  CONSTRAINT `tarea_etiqueta_FK` FOREIGN KEY (`etiqueta_id`) REFERENCES `etiqueta` (`id`),
  CONSTRAINT `tarea_requerimiento_FK` FOREIGN KEY (`requerimiento_id`) REFERENCES `requerimiento` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tarea`
--

LOCK TABLES `tarea` WRITE;
/*!40000 ALTER TABLE `tarea` DISABLE KEYS */;
INSERT INTO `tarea` VALUES
(1,1,6,6,6,'Tarea iniciada con alta complejidad, requiere revisión','2025-03-01','2025-03-04','2025-03-17 18:40:31','2025-03-17 18:40:31'),
(2,3,4,4,6,'Tarea completada exitosamente','2025-03-05','2025-03-11','2025-03-17 18:40:31','2025-03-17 18:40:31'),
(3,7,5,5,4,'Desarrollo en curso, pendiente de validación','2025-03-12','2025-03-20','2025-03-17 18:40:31','2025-03-17 18:40:31'),
(4,9,6,6,3,'Tarea pausada, requiere ajustes antes de continuar','2025-03-21','2025-03-30','2025-03-17 18:40:31','2025-03-17 18:40:31'),
(5,10,4,4,6,'Finalizada, validar resultados finales','2025-03-04','2025-03-11','2025-03-17 18:40:31','2025-03-17 18:40:31');
/*!40000 ALTER TABLE `tarea` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket_soporte`
--

DROP TABLE IF EXISTS `ticket_soporte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticket_soporte` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cliente_servicio_id` bigint(20) unsigned DEFAULT NULL,
  `usuario_id` bigint(20) unsigned DEFAULT NULL,
  `estado_soporte_id` bigint(20) unsigned DEFAULT NULL,
  `ans_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `ticket_soporte_cliente_servicio_FK` (`cliente_servicio_id`),
  KEY `ticket_soporte_usuario_FK` (`usuario_id`),
  KEY `ticket_soporte_estado_soporte_FK` (`estado_soporte_id`),
  KEY `ticket_soporte_ans_FK` (`ans_id`),
  CONSTRAINT `ticket_soporte_ans_FK` FOREIGN KEY (`ans_id`) REFERENCES `ans` (`id`),
  CONSTRAINT `ticket_soporte_cliente_servicio_FK` FOREIGN KEY (`cliente_servicio_id`) REFERENCES `cliente_servicio` (`id`),
  CONSTRAINT `ticket_soporte_estado_soporte_FK` FOREIGN KEY (`estado_soporte_id`) REFERENCES `estado_soporte` (`id`),
  CONSTRAINT `ticket_soporte_usuario_FK` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_soporte`
--

LOCK TABLES `ticket_soporte` WRITE;
/*!40000 ALTER TABLE `ticket_soporte` DISABLE KEYS */;
INSERT INTO `ticket_soporte` VALUES
(1,1,10,1,1,'2025-03-18 03:06:41','2025-03-18 03:06:41'),
(2,3,11,3,2,'2025-03-18 03:06:41','2025-03-18 03:06:41'),
(3,5,12,5,3,'2025-03-18 03:06:41','2025-03-18 03:06:41'),
(4,2,10,7,1,'2025-03-18 03:06:41','2025-03-18 03:06:41'),
(5,4,11,2,2,'2025-03-18 03:06:41','2025-03-18 03:06:41');
/*!40000 ALTER TABLE `ticket_soporte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket_soporte_detalle`
--

DROP TABLE IF EXISTS `ticket_soporte_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticket_soporte_detalle` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ticket_soporte_id` bigint(20) unsigned DEFAULT NULL,
  `usuario_id` bigint(20) unsigned DEFAULT NULL,
  `accion_soporte_id` bigint(20) unsigned DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `fecha_hora_inicio` datetime DEFAULT NULL,
  `fecha_hora_final` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `ticket_soporte_detalle_ticket_soporte_FK` (`ticket_soporte_id`),
  KEY `ticket_soporte_detalle_usuario_FK` (`usuario_id`),
  KEY `ticket_soporte_detalle_acción_soporte_FK` (`accion_soporte_id`),
  CONSTRAINT `ticket_soporte_detalle_acción_soporte_FK` FOREIGN KEY (`accion_soporte_id`) REFERENCES `acción_soporte` (`id`),
  CONSTRAINT `ticket_soporte_detalle_ticket_soporte_FK` FOREIGN KEY (`ticket_soporte_id`) REFERENCES `ticket_soporte` (`id`),
  CONSTRAINT `ticket_soporte_detalle_usuario_FK` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_soporte_detalle`
--

LOCK TABLES `ticket_soporte_detalle` WRITE;
/*!40000 ALTER TABLE `ticket_soporte_detalle` DISABLE KEYS */;
INSERT INTO `ticket_soporte_detalle` VALUES
(1,1,1,3,'Diagnóstico inicial','2025-03-12 08:30:00','2025-03-12 09:30:00','2025-03-18 03:22:17','2025-03-18 03:22:17'),
(2,2,2,7,'Aplicación de solución','2025-03-12 10:00:00','2025-03-12 11:15:00','2025-03-18 03:22:17','2025-03-18 03:22:17'),
(3,3,3,8,'Seguimiento del caso','2025-03-12 12:00:00','2025-03-12 12:45:00','2025-03-18 03:22:17','2025-03-18 03:22:17'),
(4,4,4,10,'Confirmación con cliente','2025-03-12 14:00:00','2025-03-12 14:30:00','2025-03-18 03:22:17','2025-03-18 03:22:17'),
(5,5,5,12,'Documentación de la solución','2025-03-12 15:00:00','2025-03-12 15:45:00','2025-03-18 03:22:17','2025-03-18 03:22:17');
/*!40000 ALTER TABLE `ticket_soporte_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket_tarea`
--

DROP TABLE IF EXISTS `ticket_tarea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticket_tarea` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `usuario_id` bigint(20) unsigned DEFAULT NULL,
  `tarea_id` bigint(20) unsigned DEFAULT NULL,
  `estado_id` bigint(20) unsigned DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  `fecha_finalizacion` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `ticket_tarea_usuario_FK` (`usuario_id`),
  KEY `ticket_tarea_tarea_FK` (`tarea_id`),
  KEY `ticket_tarea_estado_FK` (`estado_id`),
  CONSTRAINT `ticket_tarea_estado_FK` FOREIGN KEY (`estado_id`) REFERENCES `estado` (`id`),
  CONSTRAINT `ticket_tarea_tarea_FK` FOREIGN KEY (`tarea_id`) REFERENCES `tarea` (`id`),
  CONSTRAINT `ticket_tarea_usuario_FK` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_tarea`
--

LOCK TABLES `ticket_tarea` WRITE;
/*!40000 ALTER TABLE `ticket_tarea` DISABLE KEYS */;
INSERT INTO `ticket_tarea` VALUES
(1,1,1,1,'2025-03-01','2025-03-04','2025-03-18 02:12:06','2025-03-18 02:12:06'),
(2,2,2,4,'2025-03-05','2025-03-11','2025-03-18 02:12:06','2025-03-18 02:12:06'),
(3,3,3,2,'2025-03-12','2025-03-20','2025-03-18 02:12:06','2025-03-18 02:12:06'),
(4,4,4,3,'2025-03-21','2025-03-30','2025-03-18 02:12:06','2025-03-18 02:12:06'),
(5,5,5,1,'2025-03-04','2025-03-11','2025-03-18 02:12:06','2025-03-18 02:12:06');
/*!40000 ALTER TABLE `ticket_tarea` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket_tarea_detalle`
--

DROP TABLE IF EXISTS `ticket_tarea_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticket_tarea_detalle` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ticket_tarea_id` bigint(20) unsigned DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `fecha_asignacion` date DEFAULT NULL,
  `fecha_devolucion` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `ticket_tarea_detalle_ticket_tarea_FK` (`ticket_tarea_id`),
  CONSTRAINT `ticket_tarea_detalle_ticket_tarea_FK` FOREIGN KEY (`ticket_tarea_id`) REFERENCES `ticket_tarea` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_tarea_detalle`
--

LOCK TABLES `ticket_tarea_detalle` WRITE;
/*!40000 ALTER TABLE `ticket_tarea_detalle` DISABLE KEYS */;
INSERT INTO `ticket_tarea_detalle` VALUES
(1,1,'Tarea iniciada con alta complejidad, requiere revisión','2025-03-01','2025-03-04','2025-03-18 02:26:42','2025-03-18 02:26:42'),
(2,2,'Tarea completada exitosamente','2025-03-05','2025-03-11','2025-03-18 02:26:42','2025-03-18 02:26:42'),
(3,3,'Desarrollo en curso, pendiente de validación','2025-03-12','2025-03-20','2025-03-18 02:26:42','2025-03-18 02:26:42'),
(4,4,'Tarea pausada, requiere ajustes antes de continuar','2025-03-21','2025-03-30','2025-03-18 02:26:42','2025-03-18 02:26:42'),
(5,5,'Finalizada, validar resultados finales','2025-04-01','2025-04-08','2025-03-18 02:26:42','2025-03-18 02:26:42');
/*!40000 ALTER TABLE `ticket_tarea_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_documento`
--

DROP TABLE IF EXISTS `tipo_documento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_documento` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `abreviatura` varchar(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_documento`
--

LOCK TABLES `tipo_documento` WRITE;
/*!40000 ALTER TABLE `tipo_documento` DISABLE KEYS */;
INSERT INTO `tipo_documento` VALUES
(1,'Cedula de Ciudadania','C.C.','2025-03-12 15:28:37','2025-03-12 15:28:37'),
(2,'Pasaporte','P.P.','2025-03-12 15:28:37','2025-03-12 15:28:37'),
(3,'Numero Identificacion Tibutario','NIT','2025-03-12 15:28:37','2025-03-12 15:28:37'),
(4,'Cedula de Extranjeria','C.E ','2025-03-18 02:38:17','2025-03-18 02:38:17');
/*!40000 ALTER TABLE `tipo_documento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_usuario`
--

DROP TABLE IF EXISTS `tipo_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_usuario` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_usuario`
--

LOCK TABLES `tipo_usuario` WRITE;
/*!40000 ALTER TABLE `tipo_usuario` DISABLE KEYS */;
INSERT INTO `tipo_usuario` VALUES
(1,'Interno','2025-03-12 15:28:57','2025-03-12 15:28:57'),
(2,'Externo','2025-03-12 15:28:57','2025-03-12 15:28:57');
/*!40000 ALTER TABLE `tipo_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tipo_documento_id` bigint(20) unsigned DEFAULT NULL,
  `tipo_usuario_id` bigint(20) unsigned DEFAULT NULL,
  `estado_usuario_id` bigint(20) unsigned DEFAULT NULL,
  `ciudad_id` bigint(20) unsigned DEFAULT NULL,
  `numero_identificacion` varchar(100) DEFAULT NULL,
  `primer_nombre` varchar(100) DEFAULT NULL,
  `segundo_nombre` varchar(100) DEFAULT NULL,
  `primer_apellido` varchar(100) DEFAULT NULL,
  `segundo_apellido` varchar(100) DEFAULT NULL,
  `celular` varchar(100) DEFAULT NULL,
  `correo` varchar(150) DEFAULT NULL,
  `direccion` varchar(150) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `usuario_tipo_documento_FK` (`tipo_documento_id`),
  KEY `usuario_tipo_usuario_FK` (`tipo_usuario_id`),
  KEY `usuario_estado_usuario_FK` (`estado_usuario_id`),
  KEY `usuario_ciudad_FK` (`ciudad_id`),
  CONSTRAINT `usuario_ciudad_FK` FOREIGN KEY (`ciudad_id`) REFERENCES `ciudad` (`id`),
  CONSTRAINT `usuario_estado_usuario_FK` FOREIGN KEY (`estado_usuario_id`) REFERENCES `estado_usuario` (`id`),
  CONSTRAINT `usuario_tipo_documento_FK` FOREIGN KEY (`tipo_documento_id`) REFERENCES `tipo_documento` (`id`),
  CONSTRAINT `usuario_tipo_usuario_FK` FOREIGN KEY (`tipo_usuario_id`) REFERENCES `tipo_usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES
(1,1,1,1,28,'1104937809','Laura','Camila','Forero','Mogollon','3245624517','cmogollon281@gmail.com','Cr1 sur # 37A54  Martínez','2025-03-17 21:26:58','2025-03-17 21:26:58'),
(2,1,1,1,30,'1106632399','Nicole','Danithza','Larrotha','Zea','3244912904','ndlarrota01@gmail.com','Calle 16 #1-39 la Gaviota','2025-03-17 21:26:58','2025-03-17 21:26:58'),
(3,1,1,1,15,'1110533146','Fabri','Hernando','Gonzalez','Amaya','3228492775','faher93@gmail.com','Urbanizacion Albania','2025-03-17 21:26:58','2025-03-17 21:26:58'),
(4,1,1,1,28,'1110533146','Diego','Mauricio','Gomez','Rodriguez','3246683011','ggyt12830@gmail.com','Calle 8-67  Belen','2025-03-17 21:26:58','2025-03-17 21:26:58'),
(5,1,1,1,5,'1107008655','Lina','Maria','Peña','Barragan','3138021125','penabarraganmaria9@gmail.com','Topacio','2025-03-17 21:26:58','2025-03-17 21:26:58'),
(6,1,1,1,28,'1104936581','Danna','Valentina','Gomez','Gonzalez','3222706759','danavalegg15@gmail.com','Calle 8 #12-41 20 de julio','2025-03-17 21:26:58','2025-03-17 21:26:58'),
(7,1,1,1,10,'1091532024','Cristian','Fernando','Delgado','Carvajalino','3156018384','criferdel10@gmail.com','Mz 5 casa 15 reservas de santa rita','2025-03-17 21:26:58','2025-03-17 21:26:58'),
(8,1,1,1,28,'1110536414','Eimy','Lorena','Rodriguez','Blandon','3133416113','lorenitar.1518@gmail.com','Calle 117 n  18-64 sur conjunto cimara','2025-03-17 21:26:58','2025-03-17 21:26:58'),
(9,1,1,1,28,'38364158','Erika','Lorena','Devia','Prada','3227360630','lorenaprada4981@gmail.com','Mz f Cs 7  Jardin Atolsure','2025-03-17 21:26:58','2025-03-17 21:26:58'),
(10,1,2,1,28,'1110458039','Juan','Sebastian','Vaca','Devia','3197226349','vakito@gmail.com','Mz c Cs 5 Las America','2025-03-17 21:26:58','2025-03-17 21:26:58'),
(11,1,2,1,2,'14239050','Hernando','Camilo','Serna','Sierra','3156234789','hervasu@gmail.com','Cra 1 No 4-23','2025-03-17 21:26:58','2025-03-17 21:26:58'),
(12,1,2,1,5,'1110234677','Diana','Mayerli','Prada','Segura','3156789734','nayesegura@gmail.com','CRa 5 6-24','2025-03-17 21:26:58','2025-03-17 21:26:58');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_rol`
--

DROP TABLE IF EXISTS `usuario_rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario_rol` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `usuario_id` bigint(20) unsigned DEFAULT NULL,
  `rol_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `usuario_rol_usuario_FK` (`usuario_id`),
  KEY `usuario_rol_rol_FK` (`rol_id`),
  CONSTRAINT `usuario_rol_rol_FK` FOREIGN KEY (`rol_id`) REFERENCES `rol` (`id`),
  CONSTRAINT `usuario_rol_usuario_FK` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_rol`
--

LOCK TABLES `usuario_rol` WRITE;
/*!40000 ALTER TABLE `usuario_rol` DISABLE KEYS */;
INSERT INTO `usuario_rol` VALUES
(1,4,2,'2025-03-18 02:01:14','2025-03-18 02:01:14'),
(2,1,3,'2025-03-18 02:01:14','2025-03-18 02:01:14'),
(3,2,4,'2025-03-18 02:01:14','2025-03-18 02:01:14'),
(4,3,5,'2025-03-18 02:01:14','2025-03-18 02:01:14'),
(5,5,6,'2025-03-18 02:01:14','2025-03-18 02:01:14'),
(6,6,7,'2025-03-18 02:01:14','2025-03-18 02:01:14'),
(7,7,8,'2025-03-18 02:01:14','2025-03-18 02:01:14'),
(8,8,9,'2025-03-18 02:01:14','2025-03-18 02:01:14'),
(9,9,10,'2025-03-18 02:01:14','2025-03-18 02:01:14');
/*!40000 ALTER TABLE `usuario_rol` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-19 16:07:51
