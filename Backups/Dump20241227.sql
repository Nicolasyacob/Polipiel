-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: polipiel
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `canal_venta`
--

DROP TABLE IF EXISTS `canal_venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `canal_venta` (
  `id_canal` int NOT NULL AUTO_INCREMENT,
  `nombre_canal` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_canal`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `canal_venta`
--

LOCK TABLES `canal_venta` WRITE;
/*!40000 ALTER TABLE `canal_venta` DISABLE KEYS */;
INSERT INTO `canal_venta` VALUES (1,'Instagram'),(2,'Facebook'),(3,'Mercado Libre'),(4,'WhatsApp');
/*!40000 ALTER TABLE `canal_venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) DEFAULT NULL,
  `apellido` varchar(200) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `direccion` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `red_social` varchar(200) DEFAULT NULL,
  `fecha_registro` date DEFAULT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Sofia','Lopez','15222546','Av. Siempre Viva 742','sofia.lopez@gmail.com','Instagram','2024-01-10'),(2,'Lucas','Martinez','15133122','Calle Falsa 123','lucas.martinez@gmail.com','Facebook','2024-01-12'),(3,'Carla','Gomez','15466455','Pasaje Verde 456','carla.gomez@gmail.com','WhatsApp','2024-01-15'),(4,'Ricardo','Perez','15794613','Boulevard Azul 789','ricardo.perez@gmail.com','Mercado Libre','2024-01-18'),(5,'Mariana','Rodriguez','15641385','Calle Rosa 321','mariana.rodriguez@gmail.com','Instagram','2024-01-20'),(6,'Gabriel','Sánchez','15555586','Calle Azul 123','gabriel.sanchez@gmail.com','Instagram','2024-01-25'),(7,'Juliana','Castro','15369654','Av. Roja 456','juliana.castro@gmail.com','Facebook','2024-01-26'),(8,'Daniel','Vega','15133326','Ruta 32','daniel.vega@gmail.com','WhatsApp','2024-01-27'),(9,'Laura','Duarte','15112211','Calle Verde 789','laura.duarte@gmail.com','Mercado Libre','2024-01-28'),(10,'Pablo','Fernández','15431212','Barrio Norte 111','pablo.fernandez@gmail.com','Instagram','2024-01-29');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `color`
--

DROP TABLE IF EXISTS `color`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `color` (
  `id_color` int NOT NULL AUTO_INCREMENT,
  `nombre_color` varchar(50) NOT NULL,
  PRIMARY KEY (`id_color`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `color`
--

LOCK TABLES `color` WRITE;
/*!40000 ALTER TABLE `color` DISABLE KEYS */;
INSERT INTO `color` VALUES (1,'Blanco'),(2,'Negro'),(3,'Verde'),(4,'Azul'),(5,'Beige'),(6,'Gris'),(7,'Rojo'),(8,'Transparente');
/*!40000 ALTER TABLE `color` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_venta`
--

DROP TABLE IF EXISTS `detalle_venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_venta` (
  `id_detalle_venta` int NOT NULL AUTO_INCREMENT,
  `fk_producto` int DEFAULT NULL,
  `fk_venta` int DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  `precio_unitario` decimal(12,2) DEFAULT NULL,
  `subtotal` decimal(12,2) DEFAULT NULL,
  `porcentaje_aplicado` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`id_detalle_venta`),
  KEY `fk_producto` (`fk_producto`),
  KEY `fk_venta` (`fk_venta`),
  CONSTRAINT `detalle_venta_ibfk_1` FOREIGN KEY (`fk_producto`) REFERENCES `producto` (`id_producto`),
  CONSTRAINT `detalle_venta_ibfk_2` FOREIGN KEY (`fk_venta`) REFERENCES `venta` (`id_venta`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_venta`
--

LOCK TABLES `detalle_venta` WRITE;
/*!40000 ALTER TABLE `detalle_venta` DISABLE KEYS */;
INSERT INTO `detalle_venta` VALUES (1,1,1,2,39883.44,75778.54,-5.00),(2,2,1,1,19941.73,18944.64,-5.00),(3,3,2,2,15953.38,30311.42,-5.00),(4,4,3,1,13959.21,13261.25,-5.00),(5,5,3,2,29912.60,56833.94,-5.00),(6,6,4,1,79766.87,75778.53,-5.00),(7,7,4,1,15953.38,15155.71,-5.00),(8,6,5,1,89737.73,85250.84,-5.00),(9,7,6,1,35895.10,34100.35,-5.00),(10,1,7,1,29912.60,28416.97,-5.00),(11,1,1,5,1000.00,5000.00,NULL);
/*!40000 ALTER TABLE `detalle_venta` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `validar_stock_simple` BEFORE INSERT ON `detalle_venta` FOR EACH ROW BEGIN
    DECLARE stock_disponible INT;

    -- Obtener la cantidad disponible del material asociado al producto
    SELECT SUM(sm.cantidad_disponible) INTO stock_disponible
    FROM polipiel.stock_material sm
    JOIN polipiel.producto_material pm ON sm.fk_material = pm.fk_material
    WHERE pm.fk_producto = NEW.fk_producto;

    -- Validar que la cantidad disponible sea suficiente
    IF stock_disponible < NEW.cantidad THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Stock insuficiente para el producto';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `empleado`
--

DROP TABLE IF EXISTS `empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleado` (
  `id_empleado` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `rol` varchar(50) NOT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `fecha_ingreso` date DEFAULT NULL,
  `salario` decimal(12,2) DEFAULT NULL,
  PRIMARY KEY (`id_empleado`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado`
--

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
INSERT INTO `empleado` VALUES (1,'Joan','Diaz','Gerente','15311466','juan.perez@gmail.com','2020-01-15',4000000.00),(2,'Maria','Gomez','Administrativo','15696666','maria.gomez@gmail.com','2021-03-20',1200000.00),(3,'Carlos','Lopez','Operario','15132523','carlos.lopez@gmail.com','2022-06-10',900000.00),(4,'Ana','Martinez','Operario','15448485','ana.martinez@gmail.com','2024-01-25',900000.00),(5,'Luis','Rodriguez','Vendedor','15200230','luis.rodriguez@gmail.com','2022-02-12',1000000.00);
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historial_venta`
--

DROP TABLE IF EXISTS `historial_venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historial_venta` (
  `id_historial_venta` int NOT NULL AUTO_INCREMENT,
  `fk_venta` int DEFAULT NULL,
  `fk_empleado` int DEFAULT NULL,
  `estado_anterior` varchar(50) DEFAULT NULL,
  `estado_nuevo` varchar(50) DEFAULT NULL,
  `fecha_cambio` date DEFAULT NULL,
  `comentario` text,
  PRIMARY KEY (`id_historial_venta`),
  KEY `fk_venta` (`fk_venta`),
  KEY `fk_empleado` (`fk_empleado`),
  CONSTRAINT `historial_venta_ibfk_1` FOREIGN KEY (`fk_venta`) REFERENCES `venta` (`id_venta`),
  CONSTRAINT `historial_venta_ibfk_2` FOREIGN KEY (`fk_empleado`) REFERENCES `empleado` (`id_empleado`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historial_venta`
--

LOCK TABLES `historial_venta` WRITE;
/*!40000 ALTER TABLE `historial_venta` DISABLE KEYS */;
INSERT INTO `historial_venta` VALUES (1,1,5,'Pendiente','Finalizada','2024-01-22','Cliente satisfecho'),(2,2,5,'Pendiente','Cancelada','2024-01-23','Falta de stock'),(3,3,5,'Pendiente','Finalizada','2024-01-24','Pago confirmado.'),(4,4,5,'Pendiente','Finalizada','2024-01-25','Producto despachado.'),(5,5,5,'Pendiente','Pendiente','2024-01-26','Esperando pago.'),(6,6,5,'Pendiente','Pendiente','2024-01-27','Cliente consultando.'),(7,7,5,'Pendiente','Finalizada','2024-01-28','Venta completada.'),(8,8,5,'Pendiente','Cancelada','2024-01-29','Cancelacion por cliente.'),(9,9,5,'Pendiente','Pendiente','2024-01-30','Stock no disponible.'),(10,10,5,'Pendiente','Finalizada','2024-01-31','Entrega realizada con exito.'),(11,1,5,'Finalizada','Enviado','2024-11-27','Estado actualizado'),(12,11,5,'Pendiente','Enviado','2024-11-27','Estado actualizado');
/*!40000 ALTER TABLE `historial_venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `material`
--

DROP TABLE IF EXISTS `material`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `material` (
  `id_material` int NOT NULL AUTO_INCREMENT,
  `nombre_material` varchar(100) NOT NULL,
  `fk_color` int NOT NULL,
  PRIMARY KEY (`id_material`),
  KEY `fk_color` (`fk_color`),
  CONSTRAINT `material_ibfk_1` FOREIGN KEY (`fk_color`) REFERENCES `color` (`id_color`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `material`
--

LOCK TABLES `material` WRITE;
/*!40000 ALTER TABLE `material` DISABLE KEYS */;
INSERT INTO `material` VALUES (1,'Cuerina',1),(2,'Cuerina',2),(3,'Cuerina',5),(4,'PVC',8),(5,'Tela',1),(6,'Tela',2),(7,'Tela',3),(8,'Tela',4),(9,'Tela',5),(10,'Cuero',1),(11,'Cuero',2),(12,'Hilo',1),(13,'Hilo',2),(14,'Hilo',3);
/*!40000 ALTER TABLE `material` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pago`
--

DROP TABLE IF EXISTS `pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pago` (
  `id_pago` int NOT NULL AUTO_INCREMENT,
  `metodo_pago` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_pago`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pago`
--

LOCK TABLES `pago` WRITE;
/*!40000 ALTER TABLE `pago` DISABLE KEYS */;
INSERT INTO `pago` VALUES (1,'Efectivo'),(2,'Tarjeta Debito'),(3,'Tarjeta Credito'),(4,'Transferencia Electrónica');
/*!40000 ALTER TABLE `pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto` (
  `id_producto` int NOT NULL AUTO_INCREMENT,
  `nombre_producto` varchar(200) NOT NULL,
  `descripcion` text,
  PRIMARY KEY (`id_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,'Mantel','Manteles para mesas'),(2,'Individual','Individuales para comidas'),(3,'Funda de silla','Fundas ajustables para sillas'),(4,'Funda de Almohadon','Fundas suaves y decorativas'),(5,'Panera','Paneras pequeñas para panificados'),(6,'Cubre Sommier','Cubre sommier para cama ajustable'),(7,'Cubre Volante','Fundas de volantes de automovile');
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto_material`
--

DROP TABLE IF EXISTS `producto_material`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto_material` (
  `id_producto_material` int NOT NULL AUTO_INCREMENT,
  `fk_producto` int NOT NULL,
  `fk_material` int NOT NULL,
  `cantidad_requerida` int DEFAULT NULL,
  PRIMARY KEY (`id_producto_material`),
  KEY `fk_producto` (`fk_producto`),
  KEY `fk_material` (`fk_material`),
  CONSTRAINT `producto_material_ibfk_1` FOREIGN KEY (`fk_producto`) REFERENCES `producto` (`id_producto`),
  CONSTRAINT `producto_material_ibfk_2` FOREIGN KEY (`fk_material`) REFERENCES `material` (`id_material`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto_material`
--

LOCK TABLES `producto_material` WRITE;
/*!40000 ALTER TABLE `producto_material` DISABLE KEYS */;
INSERT INTO `producto_material` VALUES (1,1,1,2),(2,2,3,1),(3,3,4,5);
/*!40000 ALTER TABLE `producto_material` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedor` (
  `id_proveedor` int NOT NULL AUTO_INCREMENT,
  `nombre_proveedor` varchar(200) NOT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `ciudad` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_proveedor`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` VALUES (1,'Proveedor Textil SA','15626266','contacto@textilsa.com','Av. Textil 123','Buenos Aires'),(2,'Decoraciones Modernas SRL','15899874','ventas@decoracionesmodernas.com','Calle Deco 456','Rosario'),(3,'Distribuidora Hogar SRL','15602122','info@hogarsrl.com','Ruta Nacional 789','Cordoba'),(4,'Manteleria SA','15600012','info@Manteleriasa.com','Ruta Nacional 34','Rafaela');
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_material`
--

DROP TABLE IF EXISTS `stock_material`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock_material` (
  `id_stock_material` int NOT NULL AUTO_INCREMENT,
  `fk_material` int NOT NULL,
  `fk_empleado` int NOT NULL,
  `fk_proveedor` int DEFAULT NULL,
  `cantidad_disponible` int DEFAULT NULL,
  `costo_unitario` decimal(12,2) DEFAULT NULL,
  PRIMARY KEY (`id_stock_material`),
  KEY `fk_material` (`fk_material`),
  KEY `fk_empleado` (`fk_empleado`),
  KEY `fk_proveedor` (`fk_proveedor`),
  CONSTRAINT `stock_material_ibfk_1` FOREIGN KEY (`fk_material`) REFERENCES `material` (`id_material`),
  CONSTRAINT `stock_material_ibfk_2` FOREIGN KEY (`fk_empleado`) REFERENCES `empleado` (`id_empleado`),
  CONSTRAINT `stock_material_ibfk_3` FOREIGN KEY (`fk_proveedor`) REFERENCES `proveedor` (`id_proveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_material`
--

LOCK TABLES `stock_material` WRITE;
/*!40000 ALTER TABLE `stock_material` DISABLE KEYS */;
INSERT INTO `stock_material` VALUES (1,1,2,1,50,6000.00),(2,2,2,2,100,3000.00),(3,3,2,3,30,2400.00),(4,4,2,1,40,2100.00),(5,5,2,2,40,4500.00),(6,6,2,1,25,12000.00),(7,7,2,2,60,5400.00);
/*!40000 ALTER TABLE `stock_material` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transporte`
--

DROP TABLE IF EXISTS `transporte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transporte` (
  `id_transporte` int NOT NULL AUTO_INCREMENT,
  `nombre_empresa` varchar(200) NOT NULL,
  PRIMARY KEY (`id_transporte`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transporte`
--

LOCK TABLES `transporte` WRITE;
/*!40000 ALTER TABLE `transporte` DISABLE KEYS */;
INSERT INTO `transporte` VALUES (1,'OCA'),(2,'Credifin'),(3,'Transporte Carolina'),(4,'OCASA'),(5,'Correo Argentino'),(6,'Andreani');
/*!40000 ALTER TABLE `transporte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venta`
--

DROP TABLE IF EXISTS `venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venta` (
  `id_venta` int NOT NULL AUTO_INCREMENT,
  `fk_cliente` int DEFAULT NULL,
  `fk_empleado` int DEFAULT NULL,
  `fk_pago` int DEFAULT NULL,
  `fk_canal` int DEFAULT NULL,
  `fk_transporte` int DEFAULT NULL,
  `fecha_venta` date DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  `total` decimal(12,2) DEFAULT NULL,
  PRIMARY KEY (`id_venta`),
  KEY `fk_cliente` (`fk_cliente`),
  KEY `fk_empleado` (`fk_empleado`),
  KEY `fk_pago` (`fk_pago`),
  KEY `fk_canal` (`fk_canal`),
  KEY `fk_transporte` (`fk_transporte`),
  CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`fk_cliente`) REFERENCES `cliente` (`id_cliente`),
  CONSTRAINT `venta_ibfk_2` FOREIGN KEY (`fk_empleado`) REFERENCES `empleado` (`id_empleado`),
  CONSTRAINT `venta_ibfk_3` FOREIGN KEY (`fk_pago`) REFERENCES `pago` (`id_pago`),
  CONSTRAINT `venta_ibfk_4` FOREIGN KEY (`fk_canal`) REFERENCES `canal_venta` (`id_canal`),
  CONSTRAINT `venta_ibfk_5` FOREIGN KEY (`fk_transporte`) REFERENCES `transporte` (`id_transporte`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venta`
--

LOCK TABLES `venta` WRITE;
/*!40000 ALTER TABLE `venta` DISABLE KEYS */;
INSERT INTO `venta` VALUES (1,1,5,1,1,2,'2024-01-22','Enviado',41000.00),(2,3,5,2,2,1,'2024-01-23','Pendiente',16000.00),(3,6,5,2,2,3,'2024-01-24','Finalizada',30000.00),(4,7,5,3,1,5,'2024-01-25','Finalizada',48000.00),(5,8,5,4,3,6,'2024-01-26','Pendiente',45000.00),(6,9,5,1,4,4,'2024-01-27','Pendiente',52000.00),(7,10,5,2,2,3,'2024-01-28','Finalizada',36000.00),(8,1,5,3,1,2,'2024-01-29','Cancelada',1000.00),(9,2,5,4,2,1,'2024-01-30','Pendiente',32000.00),(10,3,5,2,3,6,'2024-01-31','Finalizada',47000.00),(11,5,5,1,1,1,'2024-11-27','Enviado',150000.00);
/*!40000 ALTER TABLE `venta` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `registrar_historial_venta` AFTER UPDATE ON `venta` FOR EACH ROW BEGIN
    IF NEW.estado != OLD.estado THEN
        INSERT INTO polipiel.historial_venta (fk_venta, fk_empleado, estado_anterior, estado_nuevo, fecha_cambio, comentario)
        VALUES (NEW.id_venta, NEW.fk_empleado, OLD.estado, NEW.estado, NOW(), 'Estado actualizado');
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `ventas_por_canal`
--

DROP TABLE IF EXISTS `ventas_por_canal`;
/*!50001 DROP VIEW IF EXISTS `ventas_por_canal`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ventas_por_canal` AS SELECT 
 1 AS `nombre_canal`,
 1 AS `cantidad_ventas`,
 1 AS `total_ventas`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `ventas_por_metodo_pago`
--

DROP TABLE IF EXISTS `ventas_por_metodo_pago`;
/*!50001 DROP VIEW IF EXISTS `ventas_por_metodo_pago`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ventas_por_metodo_pago` AS SELECT 
 1 AS `metodo_pago`,
 1 AS `cantidad_ventas`,
 1 AS `total_ventas`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `ventas_totales_por_cliente`
--

DROP TABLE IF EXISTS `ventas_totales_por_cliente`;
/*!50001 DROP VIEW IF EXISTS `ventas_totales_por_cliente`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ventas_totales_por_cliente` AS SELECT 
 1 AS `id_cliente`,
 1 AS `nombre`,
 1 AS `apellido`,
 1 AS `total_ventas`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'polipiel'
--

--
-- Dumping routines for database 'polipiel'
--
/*!50003 DROP FUNCTION IF EXISTS `fx_validar_email` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fx_validar_email`(email VARCHAR(200)) RETURNS tinyint(1)
    DETERMINISTIC
BEGIN
    DECLARE resultado BOOLEAN;
    SET resultado = (email REGEXP '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$');
    RETURN resultado;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fx_validar_stock_material` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fx_validar_stock_material`(fk_material INT, cantidad_requerida INT) RETURNS tinyint(1)
    DETERMINISTIC
BEGIN
    DECLARE disponible INT;
    SELECT cantidad_disponible INTO disponible 
    FROM stock_material 
    WHERE stock_material.fk_material = fk_material; -- Usamos el parámetro de entrada
    
    RETURN disponible >= cantidad_requerida; -- Verificamos si el stock es suficiente
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `reporte_ventas_mensual` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `reporte_ventas_mensual`(
    IN año INT,
    IN mes INT
)
BEGIN
    SELECT 
        p.nombre_producto,
        SUM(dv.cantidad) AS total_cantidad_vendida,
        SUM(dv.subtotal) AS total_ventas,
        GROUP_CONCAT(DISTINCT DATE(v.fecha_venta) ORDER BY v.fecha_venta ASC SEPARATOR ', ') AS fechas_ventas
    FROM 
        polipiel.venta v
    JOIN 
        polipiel.detalle_venta dv ON v.id_venta = dv.fk_venta
    JOIN 
        polipiel.producto p ON dv.fk_producto = p.id_producto
    WHERE 
        YEAR(v.fecha_venta) = año AND MONTH(v.fecha_venta) = mes
    GROUP BY 
        p.nombre_producto;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_actualizar_precios_detalle_venta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_actualizar_precios_detalle_venta`(
    IN porcentaje DECIMAL(5,2)
)
BEGIN
    IF NOT EXISTS (
        SELECT * 
        FROM INFORMATION_SCHEMA.COLUMNS 
        WHERE TABLE_NAME='detalle_venta' 
        AND COLUMN_NAME='porcentaje_aplicado'
    ) THEN
        ALTER TABLE polipiel.detalle_venta ADD porcentaje_aplicado DECIMAL(5,2);
    END IF;

    -- Actualiza precios y subtotal
    UPDATE polipiel.detalle_venta
    SET precio_unitario = ROUND(precio_unitario * (1 + (porcentaje / 100)), 2),
        subtotal = ROUND(cantidad * (precio_unitario * (1 + (porcentaje / 100))), 2),
        porcentaje_aplicado = porcentaje;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `ventas_por_canal`
--

/*!50001 DROP VIEW IF EXISTS `ventas_por_canal`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ventas_por_canal` AS select `cv`.`nombre_canal` AS `nombre_canal`,count(`v`.`id_venta`) AS `cantidad_ventas`,sum(`v`.`total`) AS `total_ventas` from (`venta` `v` join `canal_venta` `cv` on((`v`.`fk_canal` = `cv`.`id_canal`))) group by `cv`.`nombre_canal` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ventas_por_metodo_pago`
--

/*!50001 DROP VIEW IF EXISTS `ventas_por_metodo_pago`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ventas_por_metodo_pago` AS select `p`.`metodo_pago` AS `metodo_pago`,count(`v`.`id_venta`) AS `cantidad_ventas`,sum(`v`.`total`) AS `total_ventas` from (`venta` `v` join `pago` `p` on((`v`.`fk_pago` = `p`.`id_pago`))) group by `p`.`metodo_pago` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ventas_totales_por_cliente`
--

/*!50001 DROP VIEW IF EXISTS `ventas_totales_por_cliente`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ventas_totales_por_cliente` AS select `c`.`id_cliente` AS `id_cliente`,`c`.`nombre` AS `nombre`,`c`.`apellido` AS `apellido`,sum(`v`.`total`) AS `total_ventas` from (`cliente` `c` join `venta` `v` on((`c`.`id_cliente` = `v`.`fk_cliente`))) group by `c`.`id_cliente`,`c`.`nombre`,`c`.`apellido` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-27 11:41:37
