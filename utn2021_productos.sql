-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: utn2021
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) NOT NULL,
  `descripcion` text NOT NULL,
  `precio` decimal(10,0) NOT NULL,
  `imagen` text,
  `stock` int(11) NOT NULL,
  `categoria` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'Termo Stanley 1.3lts con tapa para mate','El mejor termo para alimentos es el Thermos Stainless King, con una práctica cuchara y tapa que sirve como plato. Dura hasta 7 horas de frío y calor de hasta 9 horas',10000,'termo1.jpg',10,'aire libre'),(2,'Bicicleta Mountain Rod. 27','Las Bicicletas Battle cuentan con certificación internacional ISO 4210 y nacional IRAM 40020 y la marca ofrece una red de servicio técnico para asegurar al usuario la mejor experiencia.',2000,'bike1.jpg',3,'aire libre'),(3,'Silla de estilo Poltrona Venecia','Moderno diseño con estructura 60% de madera maciza y 40% MDF. Su tapizado con doble costura reforzada con pespunte. Asiento con poliéster y cinchas elásticas con relleno de guata y poliéster de alta densidad. Patas de madera maciza lustrada.',6900,'sillon1.jpg',2,'art. para el hogar'),(4,'Vans U OLD SKOOL','Las Old Skool son las zapatillas clásicas de Vans y el primer modelo en lucir el icónico sidestripe de la marca. Nacieron como un calzado para skaters de los años 70´y con el correr de las décadas se',8999,'zapa2.jpg',0,'calzado'),(5,'Nike Air Max','En 1990, la línea Air Max dio un gran paso con el lanzamiento de un modelo que enseguida transcendió su función como zapatillas de running. Los más jóvenes las conocerán como las Air Max 90, pero tras su lanzamiento, el diseño fue visto como una evolución de las Air Max originales de 1987 y se las acabó llamando Air Max III.',5999,'zapa1.jpg',14,'calzado'),(6,'Sillon de oficina','No es un sillon cualquiera, este es negro, sube y baja como los otros, pero mejor. No es un sillon cualquiera, este es negro, sube y baja como los otros, pero mejor',12000,'sillon2.jpg',6,'art. de oficina'),(7,'EPSON L3150 Multifuncion Wifi EcoTank','La multifunctional inalámbrica EcoTank L3150 te ofrece la revolucionaria impresión sin cartuchos, con nuevo diseño de tanques frontales, botellas de tinta con llenado automático y codificadas para llenado fácil de cada color.',18325,'epson.jpg',8,'art. de oficina'),(8,'Mate','Mate con forma de Pikachu',800,NULL,20,'bazar y cocina'),(9,'Alfa Romeo Mito','El Alfa Romeo MiTo (Proyecto 145) es un automóvil de turismo producido por el fabricante italiano Alfa Romeo desde el año 2008. Es el primer automóvil de Alfa Romeo en el segmento B y compite con los modelos de gama alta de su segmento, como los actuales Mini y Audi A1.',5200000,'alfa.jpg',1,'autos'),(10,'canario','canta y baila',12212,'canario.jpg',33,'aves de coleccion'),(16,'Computadora','alta maquina, XT 512 kb ram',2011,'compu.jpg',1,'computadoras vintage');
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-06 11:48:21
