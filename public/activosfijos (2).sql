-- --------------------------------------------------------
-- Host:                         localhost
-- Versión del servidor:         5.7.19 - MySQL Community Server (GPL)
-- SO del servidor:              Win64
-- HeidiSQL Versión:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para activosfijos
CREATE DATABASE IF NOT EXISTS `activosfijos` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `activosfijos`;

-- Volcando estructura para tabla activosfijos.activos
CREATE TABLE IF NOT EXISTS `activos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(45) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  `valoradquirido` double NOT NULL,
  `moneda` varchar(45) NOT NULL,
  `estado` varchar(45) NOT NULL,
  `fechaCompra` date NOT NULL,
  `calificacion` varchar(45) NOT NULL,
  `tipoDeCambio_id` int(11) NOT NULL,
  `areas_id` int(11) NOT NULL,
  `proveedores_id` int(11) NOT NULL,
  `grupos_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_activos_tipoDeCambio1_idx` (`tipoDeCambio_id`),
  KEY `fk_activos_proveedores1_idx` (`proveedores_id`),
  KEY `fk_activos_areas1_idx` (`areas_id`),
  KEY `fk_activos_grupos1_idx` (`grupos_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla activosfijos.activos: ~9 rows (aproximadamente)
/*!40000 ALTER TABLE `activos` DISABLE KEYS */;
INSERT INTO `activos` (`id`, `codigo`, `descripcion`, `valoradquirido`, `moneda`, `estado`, `fechaCompra`, `calificacion`, `tipoDeCambio_id`, `areas_id`, `proveedores_id`, `grupos_id`) VALUES
	(1, '11111111111', 'computadora de escritorio', 500, 'dolares', 'activo', '2017-09-17', 'nuevo', 1, 202, 1, 1),
	(2, '22222222222', 'impresora multifuncional cannon', 25, 'dolares', 'inactivo', '2017-09-17', 'nuevo', 1, 0, 2, 1),
	(3, '33333333333', 'automovil toyota corolla', 18000, 'dolares', 'inactivo', '2017-09-17', 'nuevo', 1, 0, 1, 0),
	(4, '44444444444', 'computadora portatil', 700, 'dolares', 'inactivo', '2017-09-17', 'nuevo', 1, 0, 2, 0),
	(5, '0', 'sdgsg', 7845, 'BOLIVIANOS', 'inactivo', '2017-09-19', 'NUEVO', 7, 102, 1, 1),
	(6, 'PT/2017-09-190000000006', '45', 12, 'BOLIVIANOS', 'inactivo', '2017-09-19', 'NUEVO', 7, 102, 1, 1),
	(7, 'PT/2017-09-190000000007', 'portatil', 5412.14, 'BOLIVIANOS', 'inactivo', '2017-09-19', 'NUEVO', 7, 102, 1, 1),
	(8, 'PT|2017-09-19|0000000008', 'portisd', 456, 'BOLIVIANOS', 'inactivo', '2017-09-19', 'NUEVO', 7, 102, 1, 1),
	(9, 'msa|2017-09-19|0000000009', 'mesa redonda', 1300, 'BOLIVIANOS', 'inactivo', '2017-09-19', 'MALO', 8, 105, 2, 2);
/*!40000 ALTER TABLE `activos` ENABLE KEYS */;

-- Volcando estructura para tabla activosfijos.alta
CREATE TABLE IF NOT EXISTS `alta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `empleados_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_alta_empleados1_idx` (`empleados_id`),
  CONSTRAINT `fk_alta_empleados1` FOREIGN KEY (`empleados_id`) REFERENCES `empleados` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla activosfijos.alta: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `alta` DISABLE KEYS */;
/*!40000 ALTER TABLE `alta` ENABLE KEYS */;

-- Volcando estructura para tabla activosfijos.areas
CREATE TABLE IF NOT EXISTS `areas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `sucursales_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_areas_sucursales1_idx` (`sucursales_id`)
) ENGINE=InnoDB AUTO_INCREMENT=210 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla activosfijos.areas: ~108 rows (aproximadamente)
/*!40000 ALTER TABLE `areas` DISABLE KEYS */;
INSERT INTO `areas` (`id`, `nombre`, `sucursales_id`) VALUES
	(102, 'area 3', 1),
	(103, 'area 4', 1),
	(104, 'area 9', 1),
	(105, 'area 8', 1),
	(106, 'area 5', 1),
	(107, 'area 7', 1),
	(108, 'area 8', 1),
	(109, 'area 7', 1),
	(110, 'area 1', 1),
	(111, 'area 3', 1),
	(112, 'area 1', 1),
	(113, 'area 9', 1),
	(114, 'area 2', 1),
	(115, 'area 6', 1),
	(116, 'area 5', 1),
	(117, 'area 6', 1),
	(118, 'area 2', 1),
	(119, 'area 2', 1),
	(120, 'area 1', 1),
	(121, 'area 7', 1),
	(122, 'area 3', 1),
	(123, 'area 9', 1),
	(124, 'area 2', 1),
	(125, 'area 0', 1),
	(126, 'area 1', 1),
	(127, 'area 9', 1),
	(128, 'area 3', 1),
	(129, 'area 7', 1),
	(130, 'area 6', 1),
	(131, 'area 3', 1),
	(132, 'area 5', 1),
	(133, 'area 1', 1),
	(134, 'area 4', 1),
	(135, 'area 7', 1),
	(136, 'area 1', 1),
	(137, 'area 4', 1),
	(138, 'area 3', 1),
	(139, 'area 0', 1),
	(140, 'area 0', 1),
	(141, 'area 8', 1),
	(142, 'area 3', 1),
	(143, 'area 7', 1),
	(144, 'area 8', 1),
	(145, 'area 8', 1),
	(146, 'area 8', 1),
	(147, 'area 9', 1),
	(148, 'area 5', 1),
	(149, 'area 7', 1),
	(150, 'area 3', 1),
	(151, 'area 9', 1),
	(152, 'area 3', 1),
	(153, 'area 4', 1),
	(154, 'area 5', 1),
	(155, 'area 3', 1),
	(156, 'area 6', 1),
	(157, 'area 9', 1),
	(158, 'area 6', 1),
	(159, 'area 3', 1),
	(160, 'area 7', 1),
	(161, 'area 4', 1),
	(162, 'area 7', 1),
	(163, 'area 8', 1),
	(164, 'area 0', 1),
	(165, 'area 1', 1),
	(166, 'area 3', 1),
	(167, 'area 2', 1),
	(168, 'area 2', 1),
	(169, 'area 7', 1),
	(170, 'area 9', 1),
	(171, 'area 3', 1),
	(172, 'area 9', 1),
	(173, 'area 6', 1),
	(174, 'area 8', 1),
	(175, 'area 6', 1),
	(176, 'area 4', 1),
	(177, 'area 5', 1),
	(178, 'area 0', 1),
	(179, 'area 8', 1),
	(180, 'area 7', 1),
	(181, 'area 7', 1),
	(182, 'area 7', 1),
	(183, 'area 6', 1),
	(184, 'area 1', 1),
	(185, 'area 2', 1),
	(186, 'area 8', 1),
	(187, 'area 7', 1),
	(188, 'area 7', 1),
	(189, 'area 4', 1),
	(190, 'area 8', 1),
	(191, 'area 8', 1),
	(192, 'area 1', 1),
	(193, 'area 6', 1),
	(194, 'area 9', 1),
	(195, 'area 5', 1),
	(196, 'area 4', 1),
	(197, 'area 3', 1),
	(198, 'area 4', 1),
	(199, 'area 9', 1),
	(200, 'area 4', 1),
	(201, 'area 8', 1),
	(202, 'almacen', 101),
	(203, 'produccion', 101),
	(204, 'despacho', 101),
	(205, 'almacen', 102),
	(206, 'produccion', 102),
	(207, 'produccion', 103),
	(208, 'almacen', 104),
	(209, 'produccion', 105);
/*!40000 ALTER TABLE `areas` ENABLE KEYS */;

-- Volcando estructura para tabla activosfijos.bajas
CREATE TABLE IF NOT EXISTS `bajas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `bajascol` varchar(45) NOT NULL,
  `causasDeBajas_id` int(11) NOT NULL,
  `tipoDeCambio_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_bajas_causasDeBajas1_idx` (`causasDeBajas_id`),
  KEY `fk_bajas_tipoDeCambio1_idx` (`tipoDeCambio_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla activosfijos.bajas: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `bajas` DISABLE KEYS */;
/*!40000 ALTER TABLE `bajas` ENABLE KEYS */;

-- Volcando estructura para tabla activosfijos.cargos
CREATE TABLE IF NOT EXISTS `cargos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla activosfijos.cargos: ~108 rows (aproximadamente)
/*!40000 ALTER TABLE `cargos` DISABLE KEYS */;
INSERT INTO `cargos` (`id`, `nombre`) VALUES
	(1, 'cajera'),
	(2, 'gerente'),
	(3, 'gerente'),
	(4, 'secretaria'),
	(5, 'cajera'),
	(6, 'admistrativo'),
	(7, 'gerente'),
	(8, 'admistrativo'),
	(9, 'secretaria'),
	(10, 'cajera'),
	(11, 'cajera'),
	(12, 'secretaria'),
	(13, 'secretaria'),
	(14, 'secretaria'),
	(15, 'cajera'),
	(16, 'secretaria'),
	(17, 'secretaria'),
	(18, 'cajera'),
	(19, 'admistrativo'),
	(20, 'cajera'),
	(21, 'gerente'),
	(22, 'secretaria'),
	(23, 'admistrativo'),
	(24, 'admistrativo'),
	(25, 'gerente'),
	(26, 'cajera'),
	(27, 'cajera'),
	(28, 'cajera'),
	(29, 'admistrativo'),
	(30, 'secretaria'),
	(31, 'secretaria'),
	(32, 'cajera'),
	(33, 'admistrativo'),
	(34, 'cajera'),
	(35, 'admistrativo'),
	(36, 'secretaria'),
	(37, 'cajera'),
	(38, 'cajera'),
	(39, 'admistrativo'),
	(40, 'admistrativo'),
	(41, 'secretaria'),
	(42, 'admistrativo'),
	(43, 'cajera'),
	(44, 'gerente'),
	(45, 'cajera'),
	(46, 'cajera'),
	(47, 'admistrativo'),
	(48, 'gerente'),
	(49, 'gerente'),
	(50, 'cajera'),
	(51, 'cajera'),
	(52, 'cajera'),
	(53, 'secretaria'),
	(54, 'gerente'),
	(55, 'gerente'),
	(56, 'gerente'),
	(57, 'cajera'),
	(58, 'cajera'),
	(59, 'secretaria'),
	(60, 'gerente'),
	(61, 'admistrativo'),
	(62, 'gerente'),
	(63, 'cajera'),
	(64, 'gerente'),
	(65, 'cajera'),
	(66, 'cajera'),
	(67, 'gerente'),
	(68, 'secretaria'),
	(69, 'admistrativo'),
	(70, 'admistrativo'),
	(71, 'admistrativo'),
	(72, 'secretaria'),
	(73, 'gerente'),
	(74, 'secretaria'),
	(75, 'gerente'),
	(76, 'admistrativo'),
	(77, 'cajera'),
	(78, 'secretaria'),
	(79, 'admistrativo'),
	(80, 'gerente'),
	(81, 'cajera'),
	(82, 'secretaria'),
	(83, 'secretaria'),
	(84, 'admistrativo'),
	(85, 'gerente'),
	(86, 'cajera'),
	(87, 'gerente'),
	(88, 'cajera'),
	(89, 'secretaria'),
	(90, 'cajera'),
	(91, 'gerente'),
	(92, 'admistrativo'),
	(93, 'cajera'),
	(94, 'cajera'),
	(95, 'admistrativo'),
	(96, 'admistrativo'),
	(97, 'cajera'),
	(98, 'admistrativo'),
	(99, 'cajera'),
	(100, 'admistrativo'),
	(101, 'gerente general'),
	(102, 'administrador de finanzas'),
	(103, 'auxiliar contable'),
	(104, 'secretaria'),
	(105, 'jefe de produccion'),
	(106, 'jefe de area'),
	(107, 'jefe de departamento'),
	(108, 'jefe de almacen');
/*!40000 ALTER TABLE `cargos` ENABLE KEYS */;

-- Volcando estructura para tabla activosfijos.causadetrasferencia
CREATE TABLE IF NOT EXISTS `causadetrasferencia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla activosfijos.causadetrasferencia: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `causadetrasferencia` DISABLE KEYS */;
/*!40000 ALTER TABLE `causadetrasferencia` ENABLE KEYS */;

-- Volcando estructura para tabla activosfijos.causasdebajas
CREATE TABLE IF NOT EXISTS `causasdebajas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) NOT NULL,
  `activo` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla activosfijos.causasdebajas: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `causasdebajas` DISABLE KEYS */;
/*!40000 ALTER TABLE `causasdebajas` ENABLE KEYS */;

-- Volcando estructura para tabla activosfijos.cuentas
CREATE TABLE IF NOT EXISTS `cuentas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(45) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  `tipo` varchar(45) NOT NULL,
  `estado` tinyint(4) NOT NULL,
  `activos_id` int(11) NOT NULL,
  `cuentas_id` int(11) NOT NULL,
  `esquemaContables_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_cuentas_activos1_idx` (`activos_id`),
  KEY `fk_cuentas_cuentas1_idx` (`cuentas_id`),
  KEY `fk_cuentas_esquemaContables1_idx` (`esquemaContables_id`),
  CONSTRAINT `fk_cuentas_activos1` FOREIGN KEY (`activos_id`) REFERENCES `activos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_cuentas_cuentas1` FOREIGN KEY (`cuentas_id`) REFERENCES `cuentas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_cuentas_esquemaContables1` FOREIGN KEY (`esquemaContables_id`) REFERENCES `esquemacontables` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla activosfijos.cuentas: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `cuentas` DISABLE KEYS */;
/*!40000 ALTER TABLE `cuentas` ENABLE KEYS */;

-- Volcando estructura para tabla activosfijos.depreciacionactivos
CREATE TABLE IF NOT EXISTS `depreciacionactivos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `depreciaciones_id` int(11) NOT NULL,
  `activos_id` int(11) NOT NULL,
  `fechaIncorporacion` date NOT NULL,
  `saldoInicial` double NOT NULL,
  `altas` double NOT NULL,
  `bajas` double NOT NULL,
  `total` double NOT NULL,
  `AITB` double NOT NULL,
  `valorActualizado` double NOT NULL,
  `saldoInicial_depreciacionAcumulada` double NOT NULL,
  `AITB_depreciacionAcumulada` double NOT NULL,
  `depreciacionGestion` double NOT NULL,
  `baja_depreciacionAcumulada` double NOT NULL,
  `valorActualizada_depreciacionAcumulada` double NOT NULL,
  `valorNeto` double NOT NULL,
  `vidaUtilRestante` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_depreciaciones_has_activos_activos1_idx` (`activos_id`),
  KEY `fk_depreciaciones_has_activos_depreciaciones1_idx` (`depreciaciones_id`),
  CONSTRAINT `fk_depreciaciones_has_activos_activos1` FOREIGN KEY (`activos_id`) REFERENCES `activos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_depreciaciones_has_activos_depreciaciones1` FOREIGN KEY (`depreciaciones_id`) REFERENCES `depreciaciones` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla activosfijos.depreciacionactivos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `depreciacionactivos` DISABLE KEYS */;
/*!40000 ALTER TABLE `depreciacionactivos` ENABLE KEYS */;

-- Volcando estructura para tabla activosfijos.depreciaciones
CREATE TABLE IF NOT EXISTS `depreciaciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `gestiones_id` int(11) NOT NULL,
  `ubicaciones_id` int(11) NOT NULL,
  `tipoDeCambio_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_depreciaciones_gestiones1_idx` (`gestiones_id`),
  KEY `fk_depreciaciones_tipoDeCambio1_idx` (`tipoDeCambio_id`),
  CONSTRAINT `fk_depreciaciones_gestiones1` FOREIGN KEY (`gestiones_id`) REFERENCES `gestiones` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_depreciaciones_tipoDeCambio1` FOREIGN KEY (`tipoDeCambio_id`) REFERENCES `tipodecambio` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla activosfijos.depreciaciones: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `depreciaciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `depreciaciones` ENABLE KEYS */;

-- Volcando estructura para tabla activosfijos.detallealta
CREATE TABLE IF NOT EXISTS `detallealta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activos_id` int(11) NOT NULL,
  `alta_id` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_activos_has_alta_alta1_idx` (`alta_id`),
  KEY `fk_activos_has_alta_activos1_idx` (`activos_id`),
  CONSTRAINT `fk_activos_has_alta_activos1` FOREIGN KEY (`activos_id`) REFERENCES `activos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_activos_has_alta_alta1` FOREIGN KEY (`alta_id`) REFERENCES `alta` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla activosfijos.detallealta: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `detallealta` DISABLE KEYS */;
/*!40000 ALTER TABLE `detallealta` ENABLE KEYS */;

-- Volcando estructura para tabla activosfijos.detallebaja
CREATE TABLE IF NOT EXISTS `detallebaja` (
  `cantidad` int(11) NOT NULL AUTO_INCREMENT,
  `bajas_id` int(11) NOT NULL,
  `activos_id` int(11) NOT NULL,
  PRIMARY KEY (`cantidad`),
  KEY `fk_bajas_has_activos_activos1_idx` (`activos_id`),
  KEY `fk_bajas_has_activos_bajas1_idx` (`bajas_id`),
  CONSTRAINT `fk_bajas_has_activos_activos1` FOREIGN KEY (`activos_id`) REFERENCES `activos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_bajas_has_activos_bajas1` FOREIGN KEY (`bajas_id`) REFERENCES `bajas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla activosfijos.detallebaja: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `detallebaja` DISABLE KEYS */;
/*!40000 ALTER TABLE `detallebaja` ENABLE KEYS */;

-- Volcando estructura para tabla activosfijos.detalletrasferencia
CREATE TABLE IF NOT EXISTS `detalletrasferencia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activos_id` int(11) NOT NULL,
  `transferencias_id` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_activos_has_transferencias_transferencias1_idx` (`transferencias_id`),
  KEY `fk_activos_has_transferencias_activos1_idx` (`activos_id`),
  CONSTRAINT `fk_activos_has_transferencias_activos1` FOREIGN KEY (`activos_id`) REFERENCES `activos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_activos_has_transferencias_transferencias1` FOREIGN KEY (`transferencias_id`) REFERENCES `transferencias` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla activosfijos.detalletrasferencia: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `detalletrasferencia` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalletrasferencia` ENABLE KEYS */;

-- Volcando estructura para tabla activosfijos.empleados
CREATE TABLE IF NOT EXISTS `empleados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `apellidos` varchar(45) NOT NULL,
  `sexo` char(1) NOT NULL,
  `direccion` varchar(500) NOT NULL,
  `empleados_id` int(11) DEFAULT NULL,
  `areas_id` int(11) NOT NULL,
  `cargos_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_empleados_empleados1_idx` (`empleados_id`),
  KEY `fk_empleados_areas1_idx` (`areas_id`),
  KEY `fk_empleados_cargos1_idx` (`cargos_id`)
) ENGINE=InnoDB AUTO_INCREMENT=230 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla activosfijos.empleados: ~209 rows (aproximadamente)
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` (`id`, `nombre`, `apellidos`, `sexo`, `direccion`, `empleados_id`, `areas_id`, `cargos_id`) VALUES
	(1, 'miguel', 'rojass', 'm', 'asdf', NULL, 1, 0),
	(2, 'Javier', 'Navia Laime', 'M', 'k13 carretera a camiri', NULL, 202, 108),
	(3, 'Miguel', 'Martinez', 'M', 'barrio parque industrial', 2, 203, 105),
	(4, 'Soledad', 'Barea', 'F', 'barrio equipetro', 3, 203, 104),
	(5, 'Ing. Adria Carrillo', 'Santos Sosa', 'm', 'Yaracuy', 0, 202, 108),
	(6, 'Beatriz', 'Castro Pizarro', 'F', 'Z. Rosario C. Tumusla N°. 524 Galeria 16 de Julio, Subsuelo Local N°16', 2, 201, 50),
	(7, 'Iria', 'Madrid Gallegos', 'F', 'Av. Mcal. Santa Cruz Ed. Cámara Nacional de Comercio PB. Of. 1', 1, 119, 93),
	(8, 'Leire', 'Godoy Águilar', 'F', 'C. Sagarnaga Nº. 219', 3, 183, 44),
	(9, 'Naia', 'López Torres', 'F', 'Av.Bush Nº. 1365 Monumento Bush', 3, 201, 100),
	(30, 'Pau', 'Esparza Zambrano', 'F', 'Av. 6 de Marzo Nº. 555 P1 Of. 5', 2, 202, 15),
	(31, 'Raquel', 'Aguado Ureña', 'F', 'Z. Centro C. Almirante Grau Nª 398', 1, 196, 1),
	(32, 'Paola', 'Vela Vélez', 'F', 'Z. Villa Fatima, Av. De las americas Esq. Condarco Nº. 1800', 4, 191, 6),
	(33, 'Salma', 'Girón Requena', 'F', 'C. Santa. Rosa 410 Ed. Vargas V.Fatima SIRIO SIMONI S/N', 7, 118, 68),
	(34, 'Iria', 'Cotto Sancho', 'F', 'Z. 16 De Julio Av. 16 De Julio N° 76 A', 7, 180, 41),
	(35, 'Daniela', 'Botello Simón', 'F', 'C. Reyes Ortiz Nº. 73 Torre.O.P.19 -1901 /Central', 8, 204, 49),
	(36, 'Africa', 'Miranda Sandoval', 'F', 'Z. Alto Sopocachi Av. Jaimes Feyre Nº 2990', 6, 152, 32),
	(37, 'Celia', 'Roca Rivero', 'F', 'Av.Montes 716 Ed. URSIC MOTORS PISO6 Of I. 1', 1, 196, 27),
	(38, 'Emma', 'Ros Heredia', 'F', 'Entre Rios Cellejon Rio Abuna Nº 1991', 9, 131, 88),
	(39, 'Olivia', 'Rocha Fierro', 'F', 'Z. San Sebastián C. Atahuallpa Nº. 287', 1, 154, 85),
	(40, 'Nil', 'Ortiz Fierro', 'F', 'Av. Busch Nº 1951 entre Díaz Romero y Villalobos', 1, 179, 3),
	(41, 'Blanca', 'Cantú Henríquez', 'F', 'C. Pucarani Nº. 161, Montes y Chuquisaca', 3, 165, 22),
	(42, 'Noelia', 'Villalba Zapata', 'F', 'Av. Mcal. Santa Cruz Nº. 1003 Esq. Yanacocha Ed. Casanova L. 107', 6, 174, 100),
	(43, 'Adriana', 'Centeno Hernandes', 'F', 'Achumani C. 17 Ramon Arias Nº. 18', 1, 155, 46),
	(44, 'Blanca', 'Serra Garay', 'F', 'Z. Central, Av. 16 de Julio Nº. 1636', 1, 139, 11),
	(45, 'Antonia', 'Ayala Cabello', 'F', 'C. Murillo y America N. Cardozo 413 Z. Rosario', 4, 151, 101),
	(46, 'Daniela', 'Herrero Hidalgo', 'F', 'Av. 6 de Agosto Esq. Campos Ed. Iturri Mezanine PB', 9, 206, 22),
	(47, 'Isabel', 'Rodrígez Medina', 'F', 'Plaza Eguino Nº. 750 Z. El Rosario', 8, 113, 14),
	(48, 'Ainara', 'Griego De la fuente', 'F', 'Z. San Pedro C. Almirante Grau Nª 648', 2, 151, 84),
	(49, 'Andrea', 'Valdivia Tijerina', 'F', 'Av. 20 de Octubre Nº. 2072 Ed. Atahuallpa PB Of. 1', 5, 129, 46),
	(50, 'Diana', 'Contreras Expósito', 'F', 'C. Narciso Dulón Nº. 516 Z. Villa Fátima', 4, 159, 81),
	(51, 'Valeria', 'Oquendo Haro', 'F', 'Av. Entre Rios # 1387 Zona Alto Tejar', 6, 167, 12),
	(52, 'Pau', 'Lorente Chapa', 'F', 'Av. Armentia# 638 Zona Norte', 8, 156, 92),
	(53, 'Valeria', 'Camarillo Partida', 'F', 'Av. 6 de Marzo Nº. 777', 9, 127, 44),
	(54, 'Iria', 'Aguayo Villareal', 'F', 'Av. 16 de Julio Nº. 1486 Z. Central', 3, 144, 74),
	(55, 'Leyre', 'Pérez Cadena', 'F', 'C. Illampu pasando Plaza Eguino Nº. 850', 2, 142, 7),
	(56, 'Luisa', 'Roldán Saucedo', 'F', 'Calacoto - Av. Prolongacion Ballivian Calle 24 # 57', 6, 202, 7),
	(57, 'Celia', 'Nieto Altamirano', 'F', 'Av. Buenos Aires N°. 1486', 4, 181, 84),
	(58, 'Pau', 'Carrasquillo Marrero', 'F', 'Calle Miguel Cervantes Nº 3595', 3, 145, 38),
	(59, 'Erika', 'Macías Delao', 'F', 'Z. Central Av. Jaimes Feyre Nº 2902', 1, 150, 65),
	(60, 'Eva', 'Guajardo Martín', 'F', 'Z. Los Andes, Av. Buenos Aires N°. 989', 4, 148, 25),
	(61, 'Angela', 'Lebrón Olivo', 'F', 'c. Murillo Nº. 1084 La Paz Av. 6 de Marzo Nº. 250 lado Electropaz EL ALTO', 2, 125, 75),
	(62, 'Ainara', 'Guardado Camarillo', 'F', 'C. Fernando Guachalla y Av. Sanchez Lima # 503 Zona Sopocachi', 6, 123, 43),
	(63, 'Lidia', 'Regalado Camacho', 'F', 'Carretera Oruro Km. 17.5', 8, 198, 102),
	(64, 'Victoria', 'Martínez Arteaga', 'F', 'Z. San Sebastian Av.Idelfonso de las Muñecas Nº. 499', 5, 203, 58),
	(65, 'Yaiza', 'Miramontes Sepúlveda', 'F', 'Av. 6 Agosto Nº. 2464 Ed.Jardines Messanine Of 7', 7, 170, 53),
	(66, 'Naia', 'Echevarría Sierra', 'F', 'Av. saavedra nro. 1513 (miraflores)', 4, 172, 94),
	(67, 'Pau', 'Gaytán Marín', 'F', 'Av Bush #605(Plaza Villarroel)', 7, 152, 25),
	(68, 'Fatima', 'Covarrubias Carmona', 'F', 'Av Bush #809 (Plaza Villarroel abajo)', 2, 141, 6),
	(69, 'Victoria', 'Carrión Mojica', 'F', 'C. México Nº. 1551, Ed. Chuquiago Mezzanine', 6, 120, 60),
	(70, 'Raquel', 'Oquendo Alcántar', 'F', 'Av. Pando Nº. 248 Of. 3', 2, 143, 13),
	(71, 'Bella', 'Campos Barrios', 'F', 'no brinda informacion', 2, 103, 24),
	(72, 'Carmen', 'Luna Luján', 'F', 'C. E.E.UU. Nº. 1300 Esq. San Salvador Z. Miraflores', 7, 126, 14),
	(73, 'Raquel', 'Jaime Rodríquez', 'F', 'Av. Baptista # 803 Zona 14 de Septiembre', 6, 147, 4),
	(74, 'Abril', 'Miguel Baeza', 'F', 'Calle loayza n°250', 5, 131, 102),
	(75, 'Zulay', 'Hernádez Delarosa', 'F', 'Av. Entre Ríos Nº. 1823 Z. El Tejar', 4, 206, 24),
	(76, 'Cristina', 'Castaño Anguiano', 'F', 'Av. Entre Ríos Nº. 2211 Z. Alto Tejar', 9, 120, 85),
	(77, 'Valeria', 'Santos Marcos', 'F', 'Av. Entre Rios # 1724 Zona Bajo Tejar', 7, 141, 93),
	(78, 'Nerea', 'Guerrero Feliciano', 'F', 'C. Sagarnaga Nº. 259 Z. El Rosario', 6, 176, 30),
	(79, 'Silvia', 'de Anda Vela', 'F', 'Av. America Calle Murillo Oficina 1 Piso 2 Nº 413', 2, 124, 34),
	(80, 'Vera', 'Uribe Gracia', 'F', 'Z. San Sebastian Evaristo Valle N° 150 Ed. Galeria Heriba P. 1 Of. 105', 4, 108, 35),
	(81, 'Iria', 'Cintrón Grijalva', 'F', 'Z. Miraflores C. Levi Nº. 20', 4, 105, 35),
	(82, 'Paola', 'Castellanos Menchaca', 'F', 'C. Fernando Guachalla Nº. 384 Esq. 20 de Octubre', 1, 170, 41),
	(83, 'Marina', 'Adame Rey', 'F', 'C. Castro #1566', 2, 207, 84),
	(84, 'Nora', 'Lebrón Baeza', 'F', 'Av. Illimani Nº.1970, frente Electropaz', 5, 103, 38),
	(85, 'Ona', 'Sáenz Ríos', 'F', 'Z. El Rosario C. Santa Cruz Esq. Illampu Nº. 359', 9, 149, 87),
	(86, 'Maria', 'Holguín Ulloa', 'F', 'Z. 14 de Septiembre y C. Jose Maria Acha Nº. 880', 1, 139, 31),
	(87, 'Noelia', 'Osorio Rodríquez', 'F', 'C. Santos Mercado Nº. 3625 El Alto', 8, 138, 72),
	(88, 'Ines', 'Santos Chapa', 'F', 'Av. Landaeta y C. Bernardo de Rojas Nº. 849', 4, 208, 41),
	(89, 'Natalia', 'Morales Peres', 'F', 'Av. Armentia Nº. 359 Z. Norte', 5, 144, 23),
	(90, 'Vega', 'Zayas Alicea', 'F', 'C. Entre Rios Callejon Rio Abuna Nº. 1991', 3, 169, 107),
	(91, 'Alejandra', 'Flórez Carbajal', 'F', 'C. Pedro Salazar Nº. 509', 6, 153, 13),
	(92, 'Lucia', 'Caballero Ibáñez', 'F', 'Z. El Rosario, Pasaje Melchor Jimenez N°. 818', 2, 179, 11),
	(93, 'Eva', 'Uribe Corrales', 'F', 'Ed. San Pablo P. 6 Of. 607', 4, 169, 48),
	(94, 'Zulay', 'Andrés Uribe', 'F', 'Av. Jaimes Freyre Nº. 1023', 5, 189, 75),
	(95, 'Aroa', 'Martínez Meléndez', 'F', 'C. loayza Nº. 250 Ed. Castilla piso 4 Of. 410', 4, 192, 76),
	(96, 'Nayara', 'Cervántez Delapaz', 'F', 'C. Juan de Vargas Nº. 2289', 5, 186, 50),
	(97, 'Ane', 'Meza Navarro', 'F', 'Z. San Pedro C. Almirante Grau Nª 648', 4, 173, 106),
	(98, 'Noa', 'Ontiveros Briseño', 'F', 'Z. Cruce Villa Copacabana Av. Esteban Arce', 8, 174, 50),
	(99, 'Manuela', 'Alfonso Rico', 'F', 'Victor Sangines Nº. 2905', 4, 134, 35),
	(100, 'Julia', 'Martí Saucedo', 'F', 'Z. San Pedro Av. Heroes del Acre Nº. 1542', 1, 131, 55),
	(101, 'Carla', 'Oropeza Soliz', 'F', 'Z. San Pedro , C.Rigoberto Paredes Nº. 1286', 4, 188, 31),
	(102, 'Fatima', 'Requena Feliciano', 'F', 'C. Batallón Colorados Nº. 24, Ed. El Cóndor P.10 Of. 1008', 6, 147, 11),
	(103, 'Luna', 'Caballero Valdez', 'F', 'C. Alihuata Nº. 1065 EX COBATIENTES El Alto', 4, 156, 40),
	(104, 'Naia', 'Ibarra Nájera', 'F', 'Z. Villa Bolivar "C" (Carretera a Viacha) C. 126 Av. Ladislao Cabrera Nº. 15', 6, 170, 91),
	(105, 'Lucia', 'Alaniz Correa', 'F', 'Z. La Portada Nº 2250 Av. Entre Rios', 5, 188, 100),
	(106, 'Pau', 'Franco Carreón', 'F', 'Z. Calacoto, Av. Clemente Inofuente(entre C. 10 y 11) Nº. 437', 7, 174, 56),
	(107, 'Alexandra', 'Soler Márquez', 'F', 'C. Murillo y America N. Cardozo 413 Z. Rosario', 9, 206, 100),
	(108, 'Emma', 'Vaca Candelaria', 'F', 'C. Mercado N°. 1075', 2, 179, 18),
	(109, 'Celia', 'Sauceda Delrío', 'F', 'C. Melchor Perez Nº. 2439', 8, 201, 89),
	(110, 'Ane', 'Barreto Luevano', 'F', 'C. Oruro Ed. Oruro Piso 9-B (Central)', 2, 187, 1),
	(111, 'Noa', 'Monroy Herrera', 'F', 'C. Juan de la Riva Z. Centro', 7, 163, 47),
	(112, 'Candela', 'Roldán Esteve', 'F', 'Ed. San Pablo Piso 14 Of. 1406', 6, 119, 100),
	(113, 'Leyre', 'Nava Jaime', 'F', 'Av. Entre Rios #1662', 3, 185, 71),
	(114, 'Marina', 'Guerra Jiménez', 'F', 'Eloy Salmon edif. Imexcar Central of. 22 Nº 862', 3, 199, 105),
	(115, 'Mar', 'Montañez Gallegos', 'F', 'Z. Rosario C. Tumusla N°. 524 Galeria 16 de Julio, Subsuelo Local N°3', 1, 107, 82),
	(116, 'Naia', 'Henríquez Espinal', 'F', '20 de octubre Nº. 2627', 6, 161, 51),
	(117, 'Gabriela', 'Núñez Lovato', 'F', 'C. Rosendo Gutiérrez Nº. 608 P. 1', 2, 168, 104),
	(118, 'Teresa', 'Toro Granado', 'F', 'C. Juan de Vargas Nº. 2289', 2, 207, 58),
	(119, 'Carmen', 'Garrido Sarabia', 'F', 'Gral. Gonzales a media cuadra de la plaza San Pedro Nº. 1272', 3, 189, 86),
	(120, 'Silvia', 'Amador Rodríguez', 'F', 'Z. San Pedro , C.Rigoberto Paredes Nº. 1286', 6, 176, 31),
	(121, 'Mireia', 'Linares Bonilla', 'F', 'Z. Central C. Linares Nº 455', 9, 134, 53),
	(122, 'Luna', 'Reyes Henríquez', 'F', 'C. Pedrazas 365 Ed. San Marcos P.4 Dpto.4', 7, 155, 76),
	(123, 'Lidia', 'Badillo Esteve', 'F', 'Av. Buenos Aires N°. 1486', 2, 177, 86),
	(124, 'Sara', 'Pereira Marco', 'F', 'C. Hermanos Manchego Nº. 2571 Sopocachi', 2, 157, 32),
	(125, 'Sandra', 'Ruvalcaba Uribe', 'F', 'Tejada Sorzano #862', 5, 164, 26),
	(126, 'Vera', 'Piña Chacón', 'F', 'C. Los Andes', 5, 200, 57),
	(127, 'Olivia', 'Macías Terán', 'F', 'C. Otero de la Vega Nº. 406 Esq.20 de Octubre Z. San Pedro', 7, 152, 21),
	(128, 'Manuela', 'Rosario Salcedo', 'F', 'Z. Sopocachi Belisario Salinas N° 383 Ed. Vila Mary P. Mezz Of. 1', 9, 164, 53),
	(129, 'Laia', 'Chávez Ros', 'F', 'no brinda informacion', 5, 113, 99),
	(130, 'Marcos', 'Farías Puig', 'M', 'Z. Miraflores Estado Barbados N° 1008', 9, 152, 93),
	(131, 'Miguel', 'Camarillo Pozo', 'M', 'Z. Villa Fátima entre Av. Estados Unidos y Av. Busch', 5, 133, 45),
	(132, 'Antonio', 'Pizarro Manzanares', 'M', 'Ed. Avenida piso 1 Of. 1', 9, 159, 99),
	(133, 'Juan', 'Alcántar Carranza', 'M', 'Ed. Avenida planta baja Of. 10', 1, 105, 75),
	(134, 'Isaac', 'Villanueva Gracia', 'M', 'Villa Armonia Calle Armonia N° 10', 4, 123, 11),
	(135, 'Angel', 'Hernández Pascual', 'M', 'C. 128 Carretera a Viacha', 1, 201, 80),
	(136, 'Martin', 'Agosto Ochoa', 'M', 'Z. Cordillera Real de Los Andes de Suriquiña y Alto Peñas', 3, 162, 101),
	(137, 'Marc', 'Esteve Tapia', 'M', 'Río Orthon Nº. 2074, 2152, La Paz, Murillo, Bolivia', 3, 206, 2),
	(138, 'Adrian', 'Salcedo Olmos', 'M', 'Z. Centro C. Murillo N° 650', 1, 152, 54),
	(139, 'Eric', 'Ledesma Guajardo', 'M', 'Z. San Sebastian C. Bozo N°. 180 Esq. Goiyteza, Ed. Fundador 2do P. Of. 16', 7, 186, 34),
	(140, 'Andres', 'Razo Casillas', 'M', 'Av. Armentia Nº. 553 Z. Norte', 7, 164, 35),
	(141, 'Marc', 'Chacón Rosario', 'M', 'Av. Saavedra Nº. 2166', 9, 165, 59),
	(142, 'Ruben', 'Ponce Mares', 'M', 'C. 21 N°. 8227 Ed. Torre Lydia Piso 6 Oficina 606 Z. Calacoto', 4, 123, 38),
	(143, 'Pablo', 'Mascareñas Gracia', 'M', 'Z. Achumani C. Garcia Lanza Nº. 12', 2, 131, 17),
	(144, 'Izan', 'Laureano Soria', 'M', 'Gral. Gonzales a media cuadra de la plaza San Pedro Nº. 1272', 9, 116, 12),
	(145, 'Samuel', 'Negrón Ramón', 'M', 'Av. Arce y Rosendo Gutierrez Nº. 2390 Sopocachi', 5, 162, 79),
	(146, 'Alonso', 'Menéndez Solís', 'M', 'Carretera Oruro Nº. 50', 5, 109, 54),
	(147, 'Cesar', 'Roybal Botello', 'M', 'C. Comercio Nº.1277', 8, 190, 104),
	(148, 'Pablo', 'Méndez Cerda', 'M', 'Ed Perrin piso 1 Of. 5', 4, 146, 19),
	(149, 'Hugo', 'Velázquez Almonte', 'M', 'Z. Central Av. 16 De Julio (el Prado) N° 1479 Ed. San Pablo P.6 Of. 607', 2, 174, 48),
	(150, 'Ander', 'Carrion Mateos', 'M', 'C. ILLAMPU #742 Z. EL ROSARIO', 2, 173, 76),
	(151, 'Eric', 'Ramón Corrales', 'M', 'Z. Villa Copacabana C. Antonio Velasco Nº. 1924', 6, 122, 21),
	(152, 'Ander', 'Delafuente Nieves', 'M', 'Av. General Jaureguí, C. San Antonio Nº. 2, Santuario de Copacabana', 5, 156, 4),
	(153, 'Ruben', 'Mena Sauceda', 'M', 'Av. Montenegro Nº. 1420 Ed. San Miguel Arcangel P. 1 Of. 104', 7, 103, 16),
	(154, 'Hugo', 'Galván Uribe', 'M', 'C. Rapitan Ravelo Nº. 2021 Central', 3, 177, 10),
	(155, 'Marcos', 'Medrano Reyes', 'M', 'C. Socabaya Nº. 240, Ed. Handal P. 12 Of. 1208', 7, 200, 67),
	(156, 'Gonzalo', 'Farías Velázquez', 'M', 'Z. Central C. Colon Nº. 1320', 9, 155, 51),
	(157, 'Alex', 'Bañuelos Ornelas', 'M', 'Z. San Sebastián C. Chuquisaca Nº. 675', 7, 179, 26),
	(158, 'Marc', 'Aguilera Rosado', 'M', 'Calle Bustillos Nro. 1049 Zona Sopocachi', 7, 163, 44),
	(159, 'Pablo', 'Carballo Otero', 'M', 'Av. Camacho Esq. Colón N°. 1312 Z. Central', 9, 120, 31),
	(160, 'Alberto', 'Andreu Zúñiga', 'M', 'C. Colombia Nº. 520 Z. San Pedro', 2, 143, 47),
	(161, 'Marcos', 'Leal Arce', 'M', 'Z. Bautista Av. Edificio Elsa Maria No. 1028', 2, 133, 57),
	(162, 'Omar', 'Adame Vergara', 'M', 'Calle 10 Ed. SESA S/N', 8, 156, 49),
	(163, 'Manuel', 'Aguirre Urrutia', 'M', 'Av. Baptista Nº 915', 2, 147, 102),
	(164, 'Oswaldo', 'Clemente Mateo', 'M', 'Av. 16 de Julio Nº. 1456 Prado Ed. Caracas P. 2', 3, 108, 19),
	(165, 'Jordi', 'Sánchez Haro', 'M', 'Z. Central C. Linares Nº. 373', 4, 172, 1),
	(166, 'Lucas', 'Pabón Tórrez', 'M', 'C. Pando Nº. 290', 3, 152, 66),
	(167, 'Miguel', 'Escribano Marín', 'M', 'Pasaje Angelica Azcui Nº.489 Huyustus', 3, 178, 3),
	(168, 'Hector', 'Villegas Bermejo', 'M', 'Av. Mcal. Santa Cruz Ed. Cámara de Comercio Nacional PB Of. 13', 4, 125, 79),
	(169, 'Ivan', 'Castaño Caldera', 'M', 'Z. Villa Bolivar , C. 15. Nº. 123', 4, 198, 84),
	(170, 'Lucas', 'Barrientos Aragón', 'M', 'Av. Montenegro nro. 1456 (San Miguel)', 9, 168, 60),
	(171, 'Erik', 'Espino Peres', 'M', 'Av. Kollasuyu # 87 y C. Chapare Bajo Mcal. Santa Cruz', 5, 114, 104),
	(172, 'Cristian', 'Villalobos Ballesteros', 'M', 'Z. Miraflores C. Panama Nº. 1504', 8, 146, 29),
	(173, 'Samuel', 'Brito Barraza', 'M', 'Z. Obrajes, C. 12, N°. 315', 6, 171, 1),
	(174, 'Mateo', 'Caro Navas', 'M', 'Av. Buenos Aires Nº 1206', 7, 151, 86),
	(175, 'Fernando', 'Corral Toledo', 'M', 'Z. Calacoto, Av. Ballivián C. 10 Nº. 369', 3, 106, 81),
	(176, 'Adria', 'Montoya Esquibel', 'M', 'Z. Central, C. Illampu Nº. 835', 1, 161, 20),
	(177, 'Nicolas', 'Centeno Andreu', 'M', 'Z. Central Av.16 De Julio N° 1479 Ed. San Pablo P. 16 Of. 1601', 2, 149, 67),
	(178, 'Ismael', 'Ornelas Duran', 'M', 'Calle 8 - 9 Calacoto', 1, 181, 107),
	(179, 'Ander', 'Juan Salinas', 'M', 'Ed. San Pablo P. 6 Of. 607', 7, 114, 15),
	(180, 'Alex', 'Granados Martín', 'M', 'Z. Alto Sopocachi Av. Jaimes Feyre Nº 2559', 6, 173, 7),
	(181, 'Oliver', 'Cuellar Hinojosa', 'M', 'C. Estados Unidos Nº. 1315', 7, 124, 93),
	(182, 'Eduardo', 'Vela Cortés', 'M', 'Ed. Bolivar piso 3 Of. 301', 1, 205, 34),
	(183, 'Eduardo', 'Cuesta Rangel', 'M', 'Av. Santa Cruz edificio Casanova of. 604 piso 6 Nº1003', 7, 203, 75),
	(184, 'Diego', 'Rivera Garibay', 'M', 'Z. Alto San Pedro, C. Rio Loa Esq. Abelardo Ugarte Nº. 1551', 2, 164, 20),
	(185, 'Alberto', 'Gurule Peralta', 'M', 'no brinda informacion', 6, 170, 47),
	(186, 'Jesus', 'Márquez Cuellar', 'M', 'Av. Muñoz Reyes Calle 31 # 131 Zona Cota Cota', 6, 184, 29),
	(187, 'Omar', 'Moral Mondragón', 'M', 'Calacoto Calle 23 esq. Gabino Villanueva', 1, 199, 81),
	(188, 'Rodrigo', 'Puga Nazario', 'M', 'Plaza Eguino Nº. 750 Z. El Rosario', 5, 183, 49),
	(189, 'Antonio', 'Ros Almonte', 'M', 'C.Illampu Nº. 950 Z. Rosario', 3, 172, 86),
	(190, 'Jesus', 'Frías Armas', 'M', 'C. Max Paredes y Esq. Sagarnaga # 171 Zona El Rosario', 9, 171, 94),
	(191, 'Leonardo', 'Garica Fajardo', 'M', 'Z.Centro C.Almirante Grau Nº. 491', 3, 140, 58),
	(192, 'Izan', 'Pereira Zaragoza', 'M', 'Pza. Tomas Katari Nº. 37 frente al Cementerio General', 9, 169, 76),
	(193, 'Angel', 'Sáenz Torres', 'M', 'Z. Central Av. Montes Nº. 716', 2, 121, 78),
	(194, 'Manuel', 'Alba Viera', 'M', 'Av. Tiwanacu Nº. 8 frente al Hotel Europa', 9, 177, 107),
	(195, 'Guillermo', 'Tamayo Lerma', 'M', 'Z. Villa Fatima, Shopping La Cumbre 2do nivel local N°. 205', 2, 209, 72),
	(196, 'Mohamed', 'Crespo Lucas', 'M', 'Z. San Sebastian Av.Idelfonso de las Muñecas Nº. 499', 6, 123, 104),
	(197, 'Javier', 'Pacheco Grijalva', 'M', 'no brinda informacion', 5, 205, 35),
	(198, 'Hector', 'Peña Cortés', 'M', 'av. Simon Bolivar y Juan Manuel Loza #1010', 4, 166, 24),
	(199, 'Oswaldo', 'Antón Quiroz', 'M', 'Av. Sánchez Lima Nº. 2099 Esq. A. Aspiazu', 2, 206, 67),
	(200, 'Jaime', 'Lebrón Zarate', 'M', 'Av. Villazón Nº 1987', 7, 164, 1),
	(201, 'Ivan', 'Adorno Alvarado', 'M', 'C. Max Paredes y C. Apostol Santiago Nº. 1040', 6, 129, 6),
	(202, 'Bruno', 'Páez Montoya', 'M', 'Z. San Pedro C. Nicolas Acosta', 2, 185, 77),
	(203, 'Martin', 'Oquendo Vega', 'M', 'C. Capitan Ravelo Nº. 2123 - Camino Real', 2, 146, 69),
	(204, 'Enrique', 'Zamudio Ramos', 'M', 'Av. Baptista Nº. 945 Z. Callampaya', 8, 205, 51),
	(205, 'Pablo', 'Valentín Irizarry', 'M', 'Z. Obrajes Av. Hernando Siles C. 14 N°. 370 Ed. Adolfo Valentino', 8, 140, 70),
	(206, 'Saul', 'Maestas Serra', 'M', 'C.Genaro Sanjines Nº.343 Entre Potosi Y C. Onda', 1, 197, 65),
	(207, 'Jesus', 'Leyva Colunga', 'M', 'Achumani Calle 16 Nº 6', 8, 151, 95),
	(208, 'Ismael', 'Agosto Gonzales', 'M', 'Av. Baptista frente Cementerio General Nº1148-B', 3, 143, 5),
	(209, 'Angel', 'Mas Trejo', 'M', 'C.Santa Cruz Nº 339 Z.Centro', 4, 109, 54),
	(210, 'Omar', 'Escobedo Ureña', 'M', 'C. 8 Nº. 8082 Calacoto ', 3, 141, 4),
	(211, 'Miguel', 'Sierra Lira', 'M', 'C. Montengro N°. 1323 (Planta de Producción El Alto)', 8, 125, 102),
	(212, 'Eric', 'Vidal Garrido', 'M', 'C. Max Paredes # 918 Zona El Rosario', 5, 112, 73),
	(213, 'Cesar', 'Gamez Borrego', 'M', 'Almirante Grau 525 San Pedro', 3, 146, 37),
	(214, 'Isaac', 'Cisneros Jasso', 'M', 'Av. Tejada Sorzano Nº. 1559', 3, 137, 49),
	(215, 'Sergio', 'Sáenz De la fuente', 'M', 'Av. Entre Rios # 1809 Zona Alto Tejar', 4, 112, 10),
	(216, 'Marco', 'Ruvalcaba Aponte', 'M', 'Av. Entre Rios # 2179 Zona Mariscal Santa Cruz', 3, 145, 45),
	(217, 'Martin', 'Frías Villareal', 'M', 'AV. RAFAEL PABON Z. IRPAVI', 3, 171, 38),
	(218, 'Marco', 'Rodríguez Rueda', 'M', 'Z. Centro C. Juan de la Riva', 2, 116, 106),
	(219, 'Alejandro', 'Anaya Camacho', 'M', 'Av. 6 de Agosto, Pasaje Caracas Nº. 5', 9, 201, 88),
	(220, 'Lucas', 'Salas Casares', 'M', 'Z. San Sebastián C. José Indalecio Sanjines Pje. Tiquina Esq. Evaristo Valle Nº. 150', 9, 173, 103),
	(221, 'Samuel', 'Razo Corrales', 'M', 'C. Cañada Strongest y Otero de La Vega Nº.1620', 4, 202, 12),
	(222, 'Jordi', 'González Martín', 'M', 'C. Estados Unidos Nº. 1458 Z. Miraflores', 3, 135, 42),
	(223, 'Erik', 'Reyes Trejo', 'M', 'C. Castro Nº.1508', 6, 159, 105),
	(224, 'Mohamed', 'Malave Paz', 'M', 'C. Boquerón Nº. 1355', 9, 121, 21),
	(225, 'Omar', 'Ramón Redondo', 'M', 'Av. 16 de Julio Nº. 1440 Ed. Hermann P16 Of. 1603 Z. Centro', 5, 137, 9),
	(226, 'Marco', 'Balderas Alicea', 'M', 'Z. Bautista Av. Edificio Elsa Maria No. 1058', 4, 154, 48),
	(227, 'Sebastian', 'Esteve Lovato', 'M', 'Z. Auquisamaña C. "k" N° 7', 7, 106, 8),
	(228, 'Oscar', 'Luján Piña', 'M', 'Av. Sánchez Lima Nº. 2061 Z. Sopocachi', 9, 178, 105),
	(229, 'Leo', 'Enríquez Rael', 'M', 'C. Villalobos Nº. 1394 Esq. Busch', 3, 156, 57);
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;

-- Volcando estructura para tabla activosfijos.empresas
CREATE TABLE IF NOT EXISTS `empresas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `razon_social` varchar(45) NOT NULL,
  `nit` varchar(45) NOT NULL,
  `logo` varchar(45) DEFAULT NULL,
  `correo` varchar(45) NOT NULL,
  `telefono` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=910 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla activosfijos.empresas: ~108 rows (aproximadamente)
/*!40000 ALTER TABLE `empresas` DISABLE KEYS */;
INSERT INTO `empresas` (`id`, `razon_social`, `nit`, `logo`, `correo`, `telefono`) VALUES
	(802, 'Asociación Valdez C.A.', '81846069', 'null', 'Cadena.Alejandra@Saavedra.web.ve', '3582354'),
	(803, 'Viajes Navas S.R.L.', '86823486', 'null', 'FranciscoJavier.Soria@Zepeda.web.ve', '76125646'),
	(804, 'Cuenca de Reina C.A.', '7740637', 'null', 'Valeria05@Collado.com', '67055363'),
	(805, 'Villalpando y Luna S.R.L.', '17439666', 'null', 'bAguilar@hotmail.es', '61270696'),
	(806, 'Malave de Rey S.A.', '87829911', 'null', 'Mercado.Victor@Lemus.org', '414337'),
	(807, 'Guerra y Rodrígez C.A.', '38355445', 'null', 'Nadia90@hotmail.com', '448218'),
	(808, 'Inversiones Esquibel', '38864098', 'null', 'Jesus.Echevarria@latinmail.com', '208869'),
	(809, 'Cano y Jurado', '31960961', 'null', 'Alanis.Jose@live.com', '287948'),
	(810, 'Adame de Cepeda', '6618313', 'null', 'Dario.Vicente@yahoo.es', '221541'),
	(811, 'Ruvalcaba de Rendón S.A.', '67040557', 'null', 'wJaramillo@terra.com', '286157'),
	(812, 'Monroy y Laboy S.R.L.', '22430042', 'null', 'Nahia.Sarabia@hotmail.es', '3097170'),
	(813, 'Empresa Clemente y Martínez', '95740411', 'null', 'Escudero.Patricia@latinmail.com', '64548757'),
	(814, 'Marrero y Sánchez', '16666170', 'null', 'Yaiza.Villegas@Irizarry.info.ve', '271964'),
	(815, 'Carvajal y Redondo', '35007526', 'null', 'Magana.Lola@Lucero.net.ve', '73367791'),
	(816, 'Velasco de Cervantes', '22633617', 'null', 'eDelafuente@Gracia.net', '210463'),
	(817, 'Almonte y Delgadillo', '21156779', 'null', 'Adam.Delrio@Correa.web.ve', '3152179'),
	(818, 'Acevedo de Oliva', '13967973', 'null', 'Puga.Leire@Domenech.info.ve', '73931026'),
	(819, 'Inversiones Román etc', '74335458', 'null', 'Lucia.Dominquez@live.com', '3810966'),
	(820, 'Carreón de Barrios S.A.', '37957742', 'null', 'Juan10@Fuentes.org', '276784'),
	(821, 'Negrón y Farías', '7850425', 'null', 'Gutierrez.Jimena@live.com', '275017'),
	(822, 'Carrión de Villar C.A.', '80630', 'null', 'Ariadna.Martinez@terra.com', '3032389'),
	(823, 'Ocampo y Merino etc', '99695614', 'null', 'Ona.Cuenca@hotmail.com', '70322004'),
	(824, 'Grupo Roybal', '50178207', 'null', 'aSantos@gmail.com', '448306'),
	(825, 'Corporación Robles', '48974899', 'null', 'vSolorio@Aponte.co.ve', '3011048'),
	(826, 'Tello de Espinoza', '41441374', 'null', 'tPosada@gmail.com', '485350'),
	(827, 'Carranza y Córdova S.A.', '83906591', 'null', 'Cesar.Prado@Guillen.info.ve', '241255'),
	(828, 'De la cruz de Guevara', '63485113', 'null', 'kVera@yahoo.es', '225483'),
	(829, 'Vigil y Benavides', '26116039', 'null', 'Luisa.Palacios@Bueno.web.ve', '3771875'),
	(830, 'Lovato y Palacios', '29272753', 'null', 'vRoman@Mateo.net.ve', '3256933'),
	(831, 'Empresa Mateos y Colón', '95093202', 'null', 'Bustamante.Irene@Solorzano.net', '68928328'),
	(832, 'Viajes Pereira', '48340329', 'null', 'Rayan33@terra.com', '3998198'),
	(833, 'Tafoya y Garrido S.A.', '86999449', 'null', 'Tirado.Nahia@Orellana.org.ve', '401982'),
	(834, 'Soler y Blasco', '73201158', 'null', 'rMadrid@Cerda.org.ve', '3003963'),
	(835, 'Corporación Cotto etc', '71267455', 'null', 'cLomeli@hispavista.com', '3690495'),
	(836, 'Briones y Cisneros etc', '13179961', 'null', 'lPena@hotmail.com', '73536388'),
	(837, 'Luque y Meza', '85644998', 'null', 'Nora43@Collazo.web.ve', '73771289'),
	(838, 'Inversiones Crespo', '59475425', 'null', 'Aaron.Abeyta@hotmail.com', '472383'),
	(839, 'Almaraz de Quintana R.L.', '40288828', 'null', 'Samaniego.Izan@Perales.net.ve', '72572671'),
	(840, 'Estévez y Otero', '34454661', 'null', 'Barragan.Noelia@Perez.net.ve', '79230901'),
	(841, 'Ortiz de Espinoza R.L.', '73359364', 'null', 'Luisa49@yahoo.es', '235447'),
	(842, 'Global Marroquín y Montoya', '32827076', 'null', 'Maria11@Lucero.com.ve', '458016'),
	(843, 'Dr. Oropeza R.L.', '98890756', 'null', 'Gracia.Alejandro@live.com', '78629084'),
	(844, 'Escudero de Vicente R.L.', '16600231', 'null', 'Sarabia.Adria@Cazares.co.ve', '462339'),
	(845, 'Serra y Miranda etc', '47662741', 'null', 'Irene.Sosa@hotmail.es', '77585638'),
	(846, 'Global Espinoza', '30851177', 'null', 'jSantamaria@Benavidez.co.ve', '298953'),
	(847, 'Chapa y Roig S.A.', '76627999', 'null', 'Nunez.Daniel@yahoo.es', '259104'),
	(848, 'Cervantes y Gutiérrez', '80794722', 'null', 'zAlcantar@Vela.web.ve', '74598798'),
	(849, 'Lira y Correa', '82999181', 'null', 'Plaza.Miguel@Gastelum.org.ve', '444698'),
	(850, 'Inversiones Carrera C.A.', '6232050', 'null', 'Raquel.Resendez@hotmail.com', '67413030'),
	(851, 'Centro Domenech S.A.', '509487', 'null', 'gGalindo@live.com', '72677546'),
	(852, 'Arenas de Armas R.L.', '88266872', 'null', 'Alvaro.Dominguez@Serrato.org', '79072572'),
	(853, 'Bautista de Botello R.L.', '84920716', 'null', 'gAlmaraz@hotmail.es', '74672081'),
	(854, 'Lic. Macías y Cardona', '44524304', 'null', 'wLopez@hotmail.es', '65802049'),
	(855, 'Cooperativa Raya', '1232866', 'null', 'gRobledo@Valverde.com.ve', '3469610'),
	(856, 'Puga de Ordóñez', '77414770', 'null', 'FranciscoJavier69@hotmail.es', '297446'),
	(857, 'Centro Bustamante R.L.', '32378831', 'null', 'nCordero@Lebron.com', '78685510'),
	(858, 'Cooperativa Negrete y Moral', '87334007', 'null', 'Alonso.Alex@Domenech.com', '60111447'),
	(859, 'Galindo y Aguirre', '95339783', 'null', 'Castano.Sandra@Orozco.web.ve', '75906246'),
	(860, 'Gestora Villanueva y Calero', '92235465', 'null', 'oBurgos@Toledo.net.ve', '416233'),
	(861, 'Salcedo de Granado etc', '6502056', 'null', 'Portillo.Santiago@live.com', '247690'),
	(862, 'Giménez de Botello', '11936967', 'null', 'Adria84@Rodrigez.org.ve', '65857334'),
	(863, 'Salcedo de Ferrer', '34193353', 'null', 'Lorente.Mateo@Dominguez.info.ve', '65558575'),
	(864, 'Luque y Adorno S.A.', '74977018', 'null', 'uPeres@Rojas.net.ve', '451145'),
	(865, 'Bueno y de Jesús', '34640287', 'null', 'Solis.Ivan@gmail.com', '3978082'),
	(866, 'Quintana y Sierra', '79547721', 'null', 'Dario15@terra.com', '3699526'),
	(867, 'Vanegas de Altamirano C.A.', '90384968', 'null', 'Naia72@Valles.web.ve', '77224383'),
	(868, 'Sanz de Puente', '3856456', 'null', 'Jan.Arriaga@Garibay.com', '61848240'),
	(869, 'Viajes Bernal y Vargas', '25420765', 'null', 'Santos.Leonardo@Rodriguez.web.ve', '79135964'),
	(870, 'Ávila de Menéndez R.L.', '12320416', 'null', 'Daniel.deJesus@Beltran.org', '72373127'),
	(871, 'Empresa Estévez', '21923481', 'null', 'ePardo@Adorno.org', '63851268'),
	(872, 'Empresa Madrid etc', '4792526', 'null', 'Roybal.Martin@yahoo.com', '79762846'),
	(873, 'Arellano y Villarreal', '53490376', 'null', 'Mohamed.Griego@Madera.net', '483411'),
	(874, 'Lic. Quintanilla etc', '75521859', 'null', 'David20@Escribano.info.ve', '74625588'),
	(875, 'Jimínez de Ávila', '86778530', 'null', 'Arenas.Daniel@latinmail.com', '70238701'),
	(876, 'Corporación Villegas S.R.L.', '54310928', 'null', 'sArce@Nino.com', '65503572'),
	(877, 'Tafoya de Alemán', '7695573', 'null', 'nValdes@Loya.net', '61991548'),
	(878, 'Oropeza de Verduzco', '48229322', 'null', 'Castellanos.Zulay@Berrios.com', '3243561'),
	(879, 'Saiz y Bueno', '86336125', 'null', 'Pereira.Lidia@Corona.co.ve', '60620306'),
	(880, 'Lomeli y Lázaro C.A.', '34590990', 'null', 'Jesus.Salazar@Espinosa.com', '463072'),
	(881, 'Sauceda y Holguín etc', '49482615', 'null', 'Carolina45@Alba.web.ve', '70495629'),
	(882, 'Gamboa de Báez', '55405561', 'null', 'Cuevas.Alicia@Longoria.co.ve', '70567348'),
	(883, 'Pardo y Villalobos', '49553108', 'null', 'Pedro49@terra.com', '3439761'),
	(884, 'Ruíz de Robledo', '96975948', 'null', 'Galarza.Emma@hotmail.es', '68375420'),
	(885, 'Castaño de Caro C.A.', '70018591', 'null', 'mPulido@yahoo.com', '400716'),
	(886, 'Global Rentería S.R.L.', '94833596', 'null', 'Urias.Natalia@yahoo.com', '70016439'),
	(887, 'Villa de Medrano', '37471692', 'null', 'kMolina@yahoo.es', '62035451'),
	(888, 'Asociación Ulibarri y Calvo', '47320761', 'null', 'Jaime98@Chapa.web.ve', '262429'),
	(889, 'Cooperativa Suárez y Delvalle', '69575593', 'null', 'Izan21@terra.com', '77884541'),
	(890, 'Castillo de Corral S.R.L.', '79653606', 'null', 'Delatorre.Carmen@Lujan.com.ve', '3182317'),
	(891, 'Armendáriz de Laboy', '48110293', 'null', 'Luna.Batista@Irizarry.net', '247389'),
	(892, 'Anaya de Zamora', '99944233', 'null', 'Sergio51@Roca.co.ve', '68477769'),
	(893, 'Tafoya y Pacheco S.R.L.', '57437454', 'null', 'Lazaro.Alvaro@yahoo.com', '472983'),
	(894, 'Corporación Manzano S.A.', '78659533', 'null', 'Carrasquillo.Lola@gmail.com', '77941862'),
	(895, 'Medina y Grijalva', '66204393', 'null', 'Jana38@hotmail.com', '75541281'),
	(896, 'Sauceda y Toro C.A.', '12863976', 'null', 'Luisa52@Mas.com.ve', '473533'),
	(897, 'Corporación Velázquez C.A.', '34169328', 'null', 'Iria.Saez@gmail.com', '72922339'),
	(898, 'Centro Diez', '40159635', 'null', 'dSolorio@terra.com', '66692870'),
	(899, 'Empresa Benito', '92704558', 'null', 'Miguel70@yahoo.es', '218500'),
	(900, 'Centro Carrero', '88685568', 'null', 'Nerea.Aguilera@Carreon.org.ve', '61435024'),
	(901, 'Cooperativa Rojo C.A.', '10248290', 'null', 'Mar.Marti@hotmail.es', '408593'),
	(902, 'Hector Pedro Perea', '0', 'null', 'iConde@Cazares.web.ve', 'sucursal 0'),
	(903, 'Antonio Antonio Grijalva', '0', 'null', 'Marc13@Partida.com.ve', 'sucursal 6'),
	(904, 'Ing. Isabel Bustos Hijo', '0', 'null', 'bEstevez@hotmail.es', 'sucursal 3'),
	(905, 'Miguel Alejandro Galván Bernal', '0', 'null', 'Sandra.Briones@gmail.com', 'sucursal 9'),
	(906, 'CARLOS CABALLERO S.R.L.', '01028751025', 'null', 'dchavez@carloscaballerosrl.com', '3492929'),
	(907, 'LABORATORIOS IFA', '01028625022', 'null', 'alejandro@laboratoriosifa.com', '3431555'),
	(908, 'AMERICAN CHEMICAL COMPANY S.R.L.', '01015231025', 'null', 'acc@americanchemical.com.bo', '3644500'),
	(909, 'CASA COLOR', '01028709021', 'null', 'contador@casacolor.com.bo', '3433535');
/*!40000 ALTER TABLE `empresas` ENABLE KEYS */;

-- Volcando estructura para tabla activosfijos.esquemacontables
CREATE TABLE IF NOT EXISTS `esquemacontables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `aniosVidaUtil` double NOT NULL,
  `coeficienteDepreciacion` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla activosfijos.esquemacontables: ~30 rows (aproximadamente)
/*!40000 ALTER TABLE `esquemacontables` DISABLE KEYS */;
INSERT INTO `esquemacontables` (`id`, `nombre`, `aniosVidaUtil`, `coeficienteDepreciacion`) VALUES
	(1, 'Edificaciones', 40, 2.5),
	(2, 'Muebles y enseres de oficina', 10, 10),
	(3, 'Maquinaria en general', 8, 12.5),
	(4, 'Equipos e instalaciones', 8, 12.5),
	(5, 'Barcos y lanchas en general', 10, 10),
	(6, 'Vehiculos automotores', 5, 20),
	(7, 'Aviones', 5, 20),
	(8, 'Maquinaria para la construccion', 5, 20),
	(9, 'Maquinaria agricola', 4, 25),
	(10, 'Animales de trabajo', 4, 25),
	(11, 'Herramientas en genera', 4, 25),
	(12, 'Reproductores y hembras de pedrigree y puros ', 8, 12.5),
	(13, 'Equipos de computacion', 4, 25),
	(14, 'Canales de regadio y pozos', 20, 5),
	(15, 'Estanques, bañeros y abrevaderos', 10, 10),
	(16, 'Alambrados, tranqueras y vallas', 10, 10),
	(17, 'Viviendas para el personal', 20, 5),
	(18, 'Muebles y enseres en las viviendas para el pe', 10, 10),
	(19, 'Silos, alamcenes y galpones', 20, 5),
	(20, 'Tinglados y cobertizos de madera', 5, 20),
	(21, 'Tinglados y cobertizos de metal', 10, 10),
	(22, 'Instalaciones de electrifiacion y telefonia r', 10, 10),
	(23, 'Caminos interiores', 10, 10),
	(24, 'Vides', 8, 12.5),
	(25, 'Frutales', 10, 10),
	(26, 'Pozos petroleros', 5, 20),
	(27, 'Lineas de recoleccion de la industria petrole', 5, 20),
	(28, 'Plantas de procesamiento de la industria petr', 8, 12.5),
	(29, 'Ductos de la industria petrolera', 10, 10),
	(30, 'Equipos de campo de la industria petrolera', 8, 12.5);
/*!40000 ALTER TABLE `esquemacontables` ENABLE KEYS */;

-- Volcando estructura para tabla activosfijos.gestiones
CREATE TABLE IF NOT EXISTS `gestiones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fechaInicio` date NOT NULL,
  `fechaCierre` date NOT NULL,
  `activo` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla activosfijos.gestiones: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `gestiones` DISABLE KEYS */;
/*!40000 ALTER TABLE `gestiones` ENABLE KEYS */;

-- Volcando estructura para tabla activosfijos.grupos
CREATE TABLE IF NOT EXISTS `grupos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `codigo` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla activosfijos.grupos: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `grupos` DISABLE KEYS */;
INSERT INTO `grupos` (`id`, `nombre`, `descripcion`, `codigo`) VALUES
	(1, 'PORTATILES', 'PORTATILES', 'PT'),
	(2, 'mesa', 'mesa de todo tipo', 'msa'),
	(3, 'vagonetas', 'vagonetas hlux toyota', 'vag'),
	(4, 'computadoras de escritorio', 'computadoras de escritorio, i3, i5, i7', 'cme001');
/*!40000 ALTER TABLE `grupos` ENABLE KEYS */;

-- Volcando estructura para tabla activosfijos.permissions
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- Volcando datos para la tabla activosfijos.permissions: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
	(1, 'user-create', 'user-create', 'user-create', '2017-09-17 12:11:45', '0000-00-00 00:00:00');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;

-- Volcando estructura para tabla activosfijos.permission_role
CREATE TABLE IF NOT EXISTS `permission_role` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_role_id_foreign` (`role_id`),
  KEY `permission_id` (`permission_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla activosfijos.permission_role: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
	(1, 2),
	(1, 3);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;

-- Volcando estructura para tabla activosfijos.plancuenta
CREATE TABLE IF NOT EXISTS `plancuenta` (
  `cuentas_id` int(11) NOT NULL,
  `gestiones_id` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cuentas_id`,`gestiones_id`),
  KEY `fk_cuentas_has_gestiones_gestiones1_idx` (`gestiones_id`),
  KEY `fk_cuentas_has_gestiones_cuentas1_idx` (`cuentas_id`),
  CONSTRAINT `fk_cuentas_has_gestiones_cuentas1` FOREIGN KEY (`cuentas_id`) REFERENCES `cuentas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_cuentas_has_gestiones_gestiones1` FOREIGN KEY (`gestiones_id`) REFERENCES `gestiones` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla activosfijos.plancuenta: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `plancuenta` DISABLE KEYS */;
/*!40000 ALTER TABLE `plancuenta` ENABLE KEYS */;

-- Volcando estructura para tabla activosfijos.proveedores
CREATE TABLE IF NOT EXISTS `proveedores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `empresa` varchar(45) NOT NULL,
  `telefono` varchar(45) NOT NULL,
  `correo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla activosfijos.proveedores: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` (`id`, `nombre`, `empresa`, `telefono`, `correo`) VALUES
	(1, 'Juan Jesus Montes', 'CYTEC srl', '3344551', 'jesus@gmail.com'),
	(2, 'Pedro Javier Cuasace', 'HiperTron', '3425136', 'pedro.javier@gmail.com');
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;

-- Volcando estructura para tabla activosfijos.revaluotecnico
CREATE TABLE IF NOT EXISTS `revaluotecnico` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `porcentajeDeVidaUtil` double DEFAULT NULL,
  `activos_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_revaluoTecnico_activos1_idx` (`activos_id`),
  CONSTRAINT `fk_revaluoTecnico_activos1` FOREIGN KEY (`activos_id`) REFERENCES `activos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla activosfijos.revaluotecnico: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `revaluotecnico` DISABLE KEYS */;
/*!40000 ALTER TABLE `revaluotecnico` ENABLE KEYS */;

-- Volcando estructura para tabla activosfijos.roles
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- Volcando datos para la tabla activosfijos.roles: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
	(1, 'admin', 'administrador', 'administrador', '2017-09-17 00:38:55', '0000-00-00 00:00:00'),
	(2, 'CONTADOR', 'AREA CONTABLE', 'EL CONTADOR DEL MES', '2017-09-18 20:50:54', '2017-09-18 20:50:54'),
	(3, 'Dep. de activos fijos', 'departamento de activo fijo', 'Area de Activo Fijo, Donde se registran, asignacion de Responsable y se hacen los movimientos de los activos Fijos', '2017-09-19 11:54:18', '2017-09-19 11:54:18');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;

-- Volcando estructura para tabla activosfijos.role_user
CREATE TABLE IF NOT EXISTS `role_user` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_user_role_id_foreign` (`role_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla activosfijos.role_user: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `role_user` DISABLE KEYS */;
INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
	(1, 1),
	(3, 1),
	(2, 2);
/*!40000 ALTER TABLE `role_user` ENABLE KEYS */;

-- Volcando estructura para tabla activosfijos.sucursales
CREATE TABLE IF NOT EXISTS `sucursales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `direccion` varchar(200) NOT NULL,
  `empresas_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_sucursales_empresas1_idx` (`empresas_id`),
  CONSTRAINT `fk_sucursales_empresas1` FOREIGN KEY (`empresas_id`) REFERENCES `empresas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla activosfijos.sucursales: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `sucursales` DISABLE KEYS */;
INSERT INTO `sucursales` (`id`, `nombre`, `direccion`, `empresas_id`) VALUES
	(101, 'central', 'Av. Roque Aguilera N° 27 Zona: Oeste', 906),
	(102, 'central', 'Av. Roque Aguilera N° 27 Zona: Oeste', 907),
	(103, 'central', 'Av. Roque Aguilera N° 27 Zona: Oeste', 908),
	(104, 'central', 'Av. Roque Aguilera N° 27 Zona: Oeste', 909),
	(105, 'villa 1ro de mayo', 'plaza principal de la villa 1ro de mayo', 906);
/*!40000 ALTER TABLE `sucursales` ENABLE KEYS */;

-- Volcando estructura para tabla activosfijos.telefonos
CREATE TABLE IF NOT EXISTS `telefonos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numero` varchar(45) NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `empleados_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_telefonos_empleados1_idx` (`empleados_id`),
  CONSTRAINT `fk_telefonos_empleados1` FOREIGN KEY (`empleados_id`) REFERENCES `empleados` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=516 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla activosfijos.telefonos: ~300 rows (aproximadamente)
/*!40000 ALTER TABLE `telefonos` DISABLE KEYS */;
INSERT INTO `telefonos` (`id`, `numero`, `descripcion`, `empleados_id`) VALUES
	(216, '+591-68689516', 'casa', 107),
	(217, '+591-64914331', 'casa', 179),
	(218, '3923478', 'casa', 101),
	(219, '+591-78778152', 'casa', 153),
	(220, '+591-64275042', 'casa', 158),
	(221, '+591-75705728', 'casa', 143),
	(222, '4690999', 'casa', 144),
	(223, '+591-78882692', 'casa', 44),
	(224, '+591-68310192', 'casa', 166),
	(225, '+591-62116603', 'casa', 180),
	(226, '4184451', 'casa', 168),
	(227, '4817378', 'casa', 175),
	(228, '4005859', 'casa', 153),
	(229, '4693683', 'casa', 51),
	(230, '3901795', 'casa', 37),
	(231, '+591-78435512', 'casa', 197),
	(232, '4515807', 'casa', 80),
	(233, '4214637', 'casa', 119),
	(234, '+591-70854441', 'casa', 61),
	(235, '3553374', 'casa', 192),
	(236, '+591-77891387', 'casa', 114),
	(237, '3412605', 'casa', 188),
	(238, '+591-76708477', 'casa', 113),
	(239, '3805642', 'casa', 176),
	(240, '3880659', 'casa', 165),
	(241, '2279096', 'casa', 197),
	(242, '4277808', 'casa', 60),
	(243, '3444418', 'casa', 186),
	(244, '+591-76216855', 'casa', 72),
	(245, '+591-79427384', 'casa', 180),
	(246, '+591-71954028', 'casa', 133),
	(247, '+591-77630120', 'casa', 147),
	(248, '+591-70592201', 'casa', 99),
	(249, '+591-63371453', 'casa', 162),
	(250, '2352072', 'casa', 97),
	(251, '+591-65807346', 'casa', 83),
	(252, '2824085', 'casa', 193),
	(253, '3495643', 'casa', 188),
	(254, '+591-72357198', 'casa', 68),
	(255, '+591-77897590', 'casa', 166),
	(256, '2677950', 'casa', 98),
	(257, '+591-71501763', 'casa', 76),
	(258, '+591-70582557', 'casa', 129),
	(259, '+591-67886552', 'casa', 184),
	(260, '2213475', 'casa', 166),
	(261, '4310206', 'casa', 86),
	(262, '+591-75150342', 'casa', 98),
	(263, '2053996', 'casa', 55),
	(264, '+591-64586052', 'casa', 107),
	(265, '+591-78919402', 'casa', 164),
	(266, '+591-68408099', 'casa', 35),
	(267, '3934489', 'casa', 127),
	(268, '+591-72100067', 'casa', 115),
	(269, '+591-68251412', 'casa', 87),
	(270, '2371638', 'casa', 154),
	(271, '3236427', 'casa', 152),
	(272, '3829216', 'casa', 151),
	(273, '+591-71692192', 'casa', 185),
	(274, '2332541', 'casa', 160),
	(275, '+591-76422372', 'casa', 142),
	(276, '+591-63201405', 'casa', 198),
	(277, '2108972', 'casa', 72),
	(278, '4638792', 'casa', 95),
	(279, '2497451', 'casa', 194),
	(280, '+591-62511075', 'casa', 33),
	(281, '3297602', 'casa', 137),
	(282, '3798628', 'casa', 140),
	(283, '4728571', 'casa', 124),
	(284, '3653293', 'casa', 72),
	(285, '4055766', 'casa', 108),
	(286, '+591-64501806', 'casa', 163),
	(287, '3793521', 'casa', 112),
	(288, '4737837', 'casa', 160),
	(289, '2574003', 'casa', 120),
	(290, '+591-68881891', 'casa', 85),
	(291, '4429932', 'casa', 197),
	(292, '4909966', 'casa', 99),
	(293, '+591-78555337', 'casa', 83),
	(294, '2868237', 'casa', 126),
	(295, '+591-75282240', 'casa', 142),
	(296, '2301463', 'casa', 105),
	(297, '4613970', 'casa', 71),
	(298, '2287961', 'casa', 199),
	(299, '+591-76275372', 'casa', 96),
	(300, '2849221', 'casa', 169),
	(301, '4583917', 'casa', 61),
	(302, '3687901', 'casa', 100),
	(303, '4874721', 'casa', 196),
	(304, '3342417', 'casa', 92),
	(305, '+591-75550135', 'casa', 84),
	(306, '+591-78482853', 'casa', 81),
	(307, '2080620', 'casa', 117),
	(308, '+591-67823057', 'casa', 42),
	(309, '+591-75510636', 'casa', 166),
	(310, '4747987', 'casa', 67),
	(311, '3199197', 'casa', 80),
	(312, '+591-62004096', 'casa', 166),
	(313, '4770751', 'casa', 123),
	(314, '2939487', 'casa', 102),
	(315, '4489908', 'casa', 32),
	(316, '3085688', 'casa', 195),
	(317, '4726503', 'casa', 180),
	(318, '+591-63496707', 'casa', 45),
	(319, '+591-72342157', 'casa', 190),
	(320, '4580025', 'casa', 161),
	(321, '3568954', 'casa', 92),
	(322, '2971745', 'casa', 106),
	(323, '4188832', 'casa', 36),
	(324, '+591-73616823', 'casa', 81),
	(325, '+591-63316248', 'casa', 195),
	(326, '+591-78159659', 'casa', 115),
	(327, '+591-73011730', 'casa', 132),
	(328, '4606079', 'casa', 31),
	(329, '+591-76118452', 'casa', 74),
	(330, '+591-77327436', 'casa', 200),
	(331, '+591-71955712', 'casa', 202),
	(332, '2118864', 'casa', 44),
	(333, '+591-65489492', 'casa', 35),
	(334, '2735086', 'casa', 111),
	(335, '3632945', 'casa', 81),
	(336, '+591-67080753', 'casa', 103),
	(337, '+591-71035329', 'casa', 174),
	(338, '4518343', 'casa', 217),
	(339, '2460973', 'casa', 100),
	(340, '2342011', 'casa', 96),
	(341, '+591-63802160', 'casa', 35),
	(342, '3033508', 'casa', 53),
	(343, '+591-60411758', 'casa', 163),
	(344, '+591-67798589', 'casa', 86),
	(345, '3521810', 'casa', 84),
	(346, '+591-68572116', 'casa', 194),
	(347, '2631891', 'casa', 85),
	(348, '2409256', 'casa', 197),
	(349, '4888962', 'casa', 152),
	(350, '+591-67175882', 'casa', 100),
	(351, '3775847', 'casa', 229),
	(352, '+591-77984359', 'casa', 198),
	(353, '2336674', 'casa', 207),
	(354, '3517948', 'casa', 158),
	(355, '4669164', 'casa', 137),
	(356, '4694606', 'casa', 42),
	(357, '3854150', 'casa', 61),
	(358, '+591-79995606', 'casa', 79),
	(359, '3915778', 'casa', 225),
	(360, '4442935', 'casa', 155),
	(361, '+591-60165448', 'casa', 41),
	(362, '+591-73430187', 'casa', 106),
	(363, '+591-61726227', 'casa', 54),
	(364, '4972289', 'casa', 115),
	(365, '+591-74679559', 'casa', 122),
	(366, '+591-77752617', 'casa', 45),
	(367, '2806063', 'casa', 106),
	(368, '4546739', 'casa', 195),
	(369, '4076632', 'casa', 105),
	(370, '+591-76204721', 'casa', 225),
	(371, '2568530', 'casa', 108),
	(372, '2395541', 'casa', 170),
	(373, '4139220', 'casa', 141),
	(374, '3408311', 'casa', 161),
	(375, '+591-78854346', 'casa', 128),
	(376, '3394055', 'casa', 126),
	(377, '+591-75421796', 'casa', 108),
	(378, '4819710', 'casa', 67),
	(379, '+591-65159194', 'casa', 124),
	(380, '3500417', 'casa', 168),
	(381, '3762871', 'casa', 145),
	(382, '2248692', 'casa', 224),
	(383, '+591-60943224', 'casa', 82),
	(384, '2993391', 'casa', 52),
	(385, '2099930', 'casa', 183),
	(386, '+591-63309258', 'casa', 92),
	(387, '4460205', 'casa', 105),
	(388, '3832666', 'casa', 214),
	(389, '+591-61073219', 'casa', 224),
	(390, '+591-74947616', 'casa', 84),
	(391, '+591-63053749', 'casa', 188),
	(392, '4052644', 'casa', 98),
	(393, '+591-71820767', 'casa', 146),
	(394, '2709793', 'casa', 84),
	(395, '+591-69238216', 'casa', 170),
	(396, '+591-65679039', 'casa', 93),
	(397, '3451134', 'casa', 98),
	(398, '2039586', 'casa', 36),
	(399, '4295379', 'casa', 62),
	(400, '+591-78649875', 'casa', 192),
	(401, '+591-60204771', 'casa', 97),
	(402, '4860030', 'casa', 101),
	(403, '4193711', 'casa', 143),
	(404, '3322533', 'casa', 33),
	(405, '3521279', 'casa', 151),
	(406, '+591-61609597', 'casa', 50),
	(407, '4838996', 'casa', 211),
	(408, '2479156', 'casa', 100),
	(409, '+591-76407582', 'casa', 79),
	(410, '4698500', 'casa', 211),
	(411, '2411443', 'casa', 228),
	(412, '+591-64060594', 'casa', 138),
	(413, '3865824', 'casa', 133),
	(414, '4578155', 'casa', 193),
	(415, '+591-70134144', 'casa', 55),
	(416, '3877902', 'casa', 8),
	(417, '4448072', 'casa', 7),
	(418, '2406035', 'casa', 7),
	(419, '2538416', 'casa', 8),
	(420, '+591-75030287', 'casa', 8),
	(421, '2461740', 'casa', 5),
	(422, '4387704', 'casa', 4),
	(423, '2949194', 'casa', 7),
	(424, '2304940', 'casa', 1),
	(425, '3794458', 'casa', 3),
	(426, '4120778', 'casa', 4),
	(427, '4582044', 'casa', 8),
	(428, '2431227', 'casa', 1),
	(429, '2712723', 'casa', 9),
	(430, '2304671', 'casa', 3),
	(431, '+591-69087354', 'casa', 8),
	(432, '2343475', 'casa', 4),
	(433, '+591-63946026', 'casa', 3),
	(434, '4397372', 'casa', 8),
	(435, '+591-64836859', 'casa', 6),
	(436, '+591-72832219', 'casa', 1),
	(437, '2534046', 'casa', 4),
	(438, '4934932', 'casa', 7),
	(439, '+591-72027645', 'casa', 2),
	(440, '+591-77211956', 'casa', 9),
	(441, '2893090', 'casa', 1),
	(442, '4266707', 'casa', 6),
	(443, '+591-61465927', 'casa', 5),
	(444, '2414602', 'casa', 2),
	(445, '+591-61304244', 'casa', 1),
	(446, '+591-78264164', 'casa', 2),
	(447, '3597433', 'casa', 3),
	(448, '3573321', 'casa', 5),
	(449, '+591-60077516', 'casa', 9),
	(450, '3582606', 'casa', 1),
	(451, '3799946', 'casa', 5),
	(452, '3768394', 'casa', 9),
	(453, '+591-67271691', 'casa', 7),
	(454, '+591-71134287', 'casa', 2),
	(455, '+591-63340005', 'casa', 7),
	(456, '3233178', 'casa', 4),
	(457, '3435986', 'casa', 7),
	(458, '4040284', 'casa', 3),
	(459, '2935733', 'casa', 4),
	(460, '+591-64040895', 'casa', 1),
	(461, '+591-72337629', 'casa', 8),
	(462, '+591-67210241', 'casa', 5),
	(463, '+591-74242557', 'casa', 7),
	(464, '3667076', 'casa', 2),
	(465, '4411293', 'casa', 1),
	(466, '2021408', 'casa', 3),
	(467, '3686695', 'casa', 2),
	(468, '+591-66821889', 'casa', 6),
	(469, '+591-76335191', 'casa', 8),
	(470, '+591-76041583', 'casa', 1),
	(471, '+591-79697886', 'casa', 4),
	(472, '3030501', 'casa', 2),
	(473, '2953724', 'casa', 5),
	(474, '2488837', 'casa', 1),
	(475, '2806331', 'casa', 5),
	(476, '+591-64546476', 'casa', 7),
	(477, '+591-76868957', 'casa', 4),
	(478, '4844680', 'casa', 7),
	(479, '4765068', 'casa', 6),
	(480, '2871162', 'casa', 1),
	(481, '+591-76972073', 'casa', 7),
	(482, '2251069', 'casa', 2),
	(483, '4406317', 'casa', 1),
	(484, '+591-67434235', 'casa', 9),
	(485, '4229131', 'casa', 1),
	(486, '3135752', 'casa', 8),
	(487, '3960089', 'casa', 9),
	(488, '+591-67093294', 'casa', 5),
	(489, '+591-66203933', 'casa', 3),
	(490, '2486271', 'casa', 2),
	(491, '+591-68552818', 'casa', 6),
	(492, '+591-62734353', 'casa', 8),
	(493, '+591-66030508', 'casa', 3),
	(494, '2719067', 'casa', 3),
	(495, '4085695', 'casa', 4),
	(496, '2052487', 'casa', 5),
	(497, '+591-78659225', 'casa', 7),
	(498, '4263779', 'casa', 6),
	(499, '+591-64033266', 'casa', 4),
	(500, '3621316', 'casa', 2),
	(501, '2820803', 'casa', 4),
	(502, '2219222', 'casa', 9),
	(503, '+591-73701750', 'casa', 3),
	(504, '+591-76805892', 'casa', 8),
	(505, '2395764', 'casa', 3),
	(506, '+591-71302650', 'casa', 7),
	(507, '2321052', 'casa', 8),
	(508, '2150785', 'casa', 2),
	(509, '+591-65161815', 'casa', 9),
	(510, '2596301', 'casa', 8),
	(511, '+591-65386012', 'casa', 1),
	(512, '3195962', 'casa', 2),
	(513, '4016277', 'casa', 6),
	(514, '3856331', 'casa', 2),
	(515, '+591-77934205', 'casa', 1);
/*!40000 ALTER TABLE `telefonos` ENABLE KEYS */;

-- Volcando estructura para tabla activosfijos.tipodecambio
CREATE TABLE IF NOT EXISTS `tipodecambio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `valor` double NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `fecha_UNIQUE` (`fecha`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla activosfijos.tipodecambio: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `tipodecambio` DISABLE KEYS */;
INSERT INTO `tipodecambio` (`id`, `valor`, `fecha`) VALUES
	(1, 6.96, '0000-00-00'),
	(2, 2.345, '2017-09-10'),
	(7, 2.123, '2017-09-16'),
	(8, 2.2156, '2017-09-18');
/*!40000 ALTER TABLE `tipodecambio` ENABLE KEYS */;

-- Volcando estructura para tabla activosfijos.transferencias
CREATE TABLE IF NOT EXISTS `transferencias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `empleados_id` int(11) NOT NULL,
  `causaDeTrasferencia_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_transferencias_empleados1_idx` (`empleados_id`),
  KEY `fk_transferencias_causaDeTrasferencia1_idx` (`causaDeTrasferencia_id`),
  CONSTRAINT `fk_transferencias_causaDeTrasferencia1` FOREIGN KEY (`causaDeTrasferencia_id`) REFERENCES `causadetrasferencia` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_transferencias_empleados1` FOREIGN KEY (`empleados_id`) REFERENCES `empleados` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla activosfijos.transferencias: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `transferencias` DISABLE KEYS */;
/*!40000 ALTER TABLE `transferencias` ENABLE KEYS */;

-- Volcando estructura para tabla activosfijos.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `empleados_id` int(11) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`empleados_id`),
  KEY `fk_users_empleados1_idx` (`empleados_id`),
  CONSTRAINT `fk_users_empleados1` FOREIGN KEY (`empleados_id`) REFERENCES `empleados` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- Volcando datos para la tabla activosfijos.users: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `password`, `status`, `empleados_id`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'javier', 'javier.navia.033@gmail.com', '$2y$10$6JleMEDZwYd0VKR4AimVmOZbE8cJrVEOlYyl9EKIDicVKZ9/E7VUy', 1, 1, 'irN2evzlsS85onlGmcWxCfjnZOVwrHcMyU5GfZcpOw934chw3y58PU2dnge3', '2017-09-19 11:47:47', '2017-09-19 11:47:47'),
	(2, 'Soledad Barea', 'SOLEDAD@GMAIL.COM', '$2y$10$uKZnvcGU2eh5l4r3wobqgetpO5aby0.FDvKh9B3pXqHPE6frc7CTi', 1, 1, 'mCmSeq2KayABRai2Oaa4gRdRkUTsXPJ5oz5Z3MMxxrigTxSU09bhCAD9hgh4', '2017-09-19 11:58:31', '2017-09-19 11:58:31'),
	(3, 'LUIS', 'LUIS.VALLEJOS@FINNING.COM', '$2y$10$HGsKy4oqFmgegrLyRHVX4.jw4W6/5wdz5h5ygOBz9GkMS8bzTi.sO', 0, 1, NULL, '2017-09-18 20:49:19', '2017-09-18 20:49:19');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Volcando estructura para tabla activosfijos.ventasdeactivos
CREATE TABLE IF NOT EXISTS `ventasdeactivos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `monto` double NOT NULL,
  `moneda` tinyint(4) NOT NULL,
  `comprador` varchar(45) DEFAULT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `bajas_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_ventasDeActivos_bajas1_idx` (`bajas_id`),
  CONSTRAINT `fk_ventasDeActivos_bajas1` FOREIGN KEY (`bajas_id`) REFERENCES `bajas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla activosfijos.ventasdeactivos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `ventasdeactivos` DISABLE KEYS */;
/*!40000 ALTER TABLE `ventasdeactivos` ENABLE KEYS */;

-- Volcando estructura para vista activosfijos.view_activos
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `view_activos` (
	`codigo` VARCHAR(45) NOT NULL COLLATE 'utf8_general_ci',
	`descripcion` VARCHAR(45) NOT NULL COLLATE 'utf8_general_ci',
	`precio` DOUBLE NOT NULL,
	`moneda` VARCHAR(45) NOT NULL COLLATE 'utf8_general_ci',
	`fechaCompra` DATE NOT NULL,
	`calificacion` VARCHAR(45) NOT NULL COLLATE 'utf8_general_ci',
	`area` VARCHAR(45) NOT NULL COLLATE 'utf8_general_ci',
	`empresa` VARCHAR(45) NOT NULL COLLATE 'utf8_general_ci',
	`nombre_proveedor` VARCHAR(45) NOT NULL COLLATE 'utf8_general_ci',
	`grupo` VARCHAR(45) NOT NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Volcando estructura para disparador activosfijos.activos_BEFORE_INSERT
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';
DELIMITER //
CREATE TRIGGER `activos_BEFORE_INSERT` BEFORE INSERT ON `activos` FOR EACH ROW BEGIN
set NEW.codigo=  CONCAT((SELECT codigo FROM activosfijos.grupos where id=NEW.grupos_id)  
                         ,'|'
						,NEW.fechaCompra
                        ,'|'
						,(SELECT LPAD( (SELECT count(*) FROM activosfijos.activos) +1,10,'0') AS codigos));


END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Volcando estructura para vista activosfijos.view_activos
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `view_activos`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` VIEW `view_activos` AS select `activos`.`codigo` AS `codigo`,`activos`.`descripcion` AS `descripcion`,`activos`.`valoradquirido` AS `precio`,`activos`.`moneda` AS `moneda`,`activos`.`fechaCompra` AS `fechaCompra`,`activos`.`calificacion` AS `calificacion`,`areas`.`nombre` AS `area`,`proveedores`.`empresa` AS `empresa`,`proveedores`.`nombre` AS `nombre_proveedor`,`grupos`.`nombre` AS `grupo` from (((`activos` join `areas` on((`areas`.`id` = `activos`.`areas_id`))) join `proveedores` on((`activos`.`proveedores_id` = `proveedores`.`id`))) join `grupos` on((`activos`.`grupos_id` = `grupos`.`id`))) ;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
