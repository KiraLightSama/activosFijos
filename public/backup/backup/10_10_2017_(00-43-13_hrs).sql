SET FOREIGN_KEY_CHECKS=0;

CREATE DATABASE IF NOT EXISTS activosfijos;

USE activosfijos;

DROP TABLE IF EXISTS activos;

CREATE TABLE `activos` (
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
  KEY `fk_activos_grupos1_idx` (`grupos_id`),
  CONSTRAINT `fk_activos_areas1` FOREIGN KEY (`areas_id`) REFERENCES `areas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_activos_grupos1` FOREIGN KEY (`grupos_id`) REFERENCES `grupos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_activos_proveedores1` FOREIGN KEY (`proveedores_id`) REFERENCES `proveedores` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_activos_tipoDeCambio1` FOREIGN KEY (`tipoDeCambio_id`) REFERENCES `tipodecambio` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

INSERT INTO activos VALUES("1","11111111111","computadora de escritorio","500","dolares","activo","2017-09-17","nuevo","1","202","1","1");
INSERT INTO activos VALUES("2","22222222222","impresora multifuncional cannon","25","dolares","inactivo","2017-09-17","nuevo","1","0","2","1");
INSERT INTO activos VALUES("3","33333333333","automovil toyota corolla","18000","dolares","inactivo","2017-09-17","nuevo","1","0","1","0");
INSERT INTO activos VALUES("4","44444444444","computadora portatil","700","dolares","inactivo","2017-09-17","nuevo","1","0","2","0");
INSERT INTO activos VALUES("5","0","sdgsg","7845","BOLIVIANOS","inactivo","2017-09-19","NUEVO","7","102","1","1");
INSERT INTO activos VALUES("6","PT/2017-09-190000000006","45","12","BOLIVIANOS","inactivo","2017-09-19","NUEVO","7","102","1","1");
INSERT INTO activos VALUES("7","PT/2017-09-190000000007","portatil","5412.14","BOLIVIANOS","inactivo","2017-09-19","NUEVO","7","102","1","1");
INSERT INTO activos VALUES("8","PT|2017-09-19|0000000008","portisd","456","BOLIVIANOS","inactivo","2017-09-19","NUEVO","7","102","1","1");
INSERT INTO activos VALUES("9","msa|2017-09-19|0000000009","mesa redonda","1300","BOLIVIANOS","inactivo","2017-09-19","MALO","8","105","2","2");



DROP TABLE IF EXISTS alta;

CREATE TABLE `alta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `empleados_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_alta_empleados1_idx` (`empleados_id`),
  CONSTRAINT `fk_alta_empleados1` FOREIGN KEY (`empleados_id`) REFERENCES `empleados` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




DROP TABLE IF EXISTS areas;

CREATE TABLE `areas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `sucursales_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_areas_sucursales1_idx` (`sucursales_id`),
  CONSTRAINT `fk_areas_sucursales1` FOREIGN KEY (`sucursales_id`) REFERENCES `sucursales` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=210 DEFAULT CHARSET=utf8;

INSERT INTO areas VALUES("102","area 3","1");
INSERT INTO areas VALUES("103","area 4","1");
INSERT INTO areas VALUES("104","area 9","1");
INSERT INTO areas VALUES("105","area 8","1");
INSERT INTO areas VALUES("106","area 5","1");
INSERT INTO areas VALUES("107","area 7","1");
INSERT INTO areas VALUES("108","area 8","1");
INSERT INTO areas VALUES("109","area 7","1");
INSERT INTO areas VALUES("110","area 1","1");
INSERT INTO areas VALUES("111","area 3","1");
INSERT INTO areas VALUES("112","area 1","1");
INSERT INTO areas VALUES("113","area 9","1");
INSERT INTO areas VALUES("114","area 2","1");
INSERT INTO areas VALUES("115","area 6","1");
INSERT INTO areas VALUES("116","area 5","1");
INSERT INTO areas VALUES("117","area 6","1");
INSERT INTO areas VALUES("118","area 2","1");
INSERT INTO areas VALUES("119","area 2","1");
INSERT INTO areas VALUES("120","area 1","1");
INSERT INTO areas VALUES("121","area 7","1");
INSERT INTO areas VALUES("122","area 3","1");
INSERT INTO areas VALUES("123","area 9","1");
INSERT INTO areas VALUES("124","area 2","1");
INSERT INTO areas VALUES("125","area 0","1");
INSERT INTO areas VALUES("126","area 1","1");
INSERT INTO areas VALUES("127","area 9","1");
INSERT INTO areas VALUES("128","area 3","1");
INSERT INTO areas VALUES("129","area 7","1");
INSERT INTO areas VALUES("130","area 6","1");
INSERT INTO areas VALUES("131","area 3","1");
INSERT INTO areas VALUES("132","area 5","1");
INSERT INTO areas VALUES("133","area 1","1");
INSERT INTO areas VALUES("134","area 4","1");
INSERT INTO areas VALUES("135","area 7","1");
INSERT INTO areas VALUES("136","area 1","1");
INSERT INTO areas VALUES("137","area 4","1");
INSERT INTO areas VALUES("138","area 3","1");
INSERT INTO areas VALUES("139","area 0","1");
INSERT INTO areas VALUES("140","area 0","1");
INSERT INTO areas VALUES("141","area 8","1");
INSERT INTO areas VALUES("142","area 3","1");
INSERT INTO areas VALUES("143","area 7","1");
INSERT INTO areas VALUES("144","area 8","1");
INSERT INTO areas VALUES("145","area 8","1");
INSERT INTO areas VALUES("146","area 8","1");
INSERT INTO areas VALUES("147","area 9","1");
INSERT INTO areas VALUES("148","area 5","1");
INSERT INTO areas VALUES("149","area 7","1");
INSERT INTO areas VALUES("150","area 3","1");
INSERT INTO areas VALUES("151","area 9","1");
INSERT INTO areas VALUES("152","area 3","1");
INSERT INTO areas VALUES("153","area 4","1");
INSERT INTO areas VALUES("154","area 5","1");
INSERT INTO areas VALUES("155","area 3","1");
INSERT INTO areas VALUES("156","area 6","1");
INSERT INTO areas VALUES("157","area 9","1");
INSERT INTO areas VALUES("158","area 6","1");
INSERT INTO areas VALUES("159","area 3","1");
INSERT INTO areas VALUES("160","area 7","1");
INSERT INTO areas VALUES("161","area 4","1");
INSERT INTO areas VALUES("162","area 7","1");
INSERT INTO areas VALUES("163","area 8","1");
INSERT INTO areas VALUES("164","area 0","1");
INSERT INTO areas VALUES("165","area 1","1");
INSERT INTO areas VALUES("166","area 3","1");
INSERT INTO areas VALUES("167","area 2","1");
INSERT INTO areas VALUES("168","area 2","1");
INSERT INTO areas VALUES("169","area 7","1");
INSERT INTO areas VALUES("170","area 9","1");
INSERT INTO areas VALUES("171","area 3","1");
INSERT INTO areas VALUES("172","area 9","1");
INSERT INTO areas VALUES("173","area 6","1");
INSERT INTO areas VALUES("174","area 8","1");
INSERT INTO areas VALUES("175","area 6","1");
INSERT INTO areas VALUES("176","area 4","1");
INSERT INTO areas VALUES("177","area 5","1");
INSERT INTO areas VALUES("178","area 0","1");
INSERT INTO areas VALUES("179","area 8","1");
INSERT INTO areas VALUES("180","area 7","1");
INSERT INTO areas VALUES("181","area 7","1");
INSERT INTO areas VALUES("182","area 7","1");
INSERT INTO areas VALUES("183","area 6","1");
INSERT INTO areas VALUES("184","area 1","1");
INSERT INTO areas VALUES("185","area 2","1");
INSERT INTO areas VALUES("186","area 8","1");
INSERT INTO areas VALUES("187","area 7","1");
INSERT INTO areas VALUES("188","area 7","1");
INSERT INTO areas VALUES("189","area 4","1");
INSERT INTO areas VALUES("190","area 8","1");
INSERT INTO areas VALUES("191","area 8","1");
INSERT INTO areas VALUES("192","area 1","1");
INSERT INTO areas VALUES("193","area 6","1");
INSERT INTO areas VALUES("194","area 9","1");
INSERT INTO areas VALUES("195","area 5","1");
INSERT INTO areas VALUES("196","area 4","1");
INSERT INTO areas VALUES("197","area 3","1");
INSERT INTO areas VALUES("198","area 4","1");
INSERT INTO areas VALUES("199","area 9","1");
INSERT INTO areas VALUES("200","area 4","1");
INSERT INTO areas VALUES("201","area 8","1");
INSERT INTO areas VALUES("202","almacen","101");
INSERT INTO areas VALUES("203","produccion","101");
INSERT INTO areas VALUES("204","despacho","101");
INSERT INTO areas VALUES("205","almacen","102");
INSERT INTO areas VALUES("206","produccion","102");
INSERT INTO areas VALUES("207","produccion","103");
INSERT INTO areas VALUES("208","almacen","104");
INSERT INTO areas VALUES("209","produccion","105");



DROP TABLE IF EXISTS bajas;

CREATE TABLE `bajas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `bajascol` varchar(45) NOT NULL,
  `causasDeBajas_id` int(11) NOT NULL,
  `tipoDeCambio_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_bajas_causasDeBajas1_idx` (`causasDeBajas_id`),
  KEY `fk_bajas_tipoDeCambio1_idx` (`tipoDeCambio_id`),
  CONSTRAINT `fk_bajas_causasDeBajas1` FOREIGN KEY (`causasDeBajas_id`) REFERENCES `causasdebajas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_bajas_tipoDeCambio1` FOREIGN KEY (`tipoDeCambio_id`) REFERENCES `tipodecambio` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




DROP TABLE IF EXISTS bitacora;

CREATE TABLE `bitacora` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Correo` varchar(45) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Accion` varchar(45) NOT NULL,
  `Navegador` varchar(250) NOT NULL,
  `Url` varchar(250) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;




DROP TABLE IF EXISTS cargos;

CREATE TABLE `cargos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8;

INSERT INTO cargos VALUES("1","cajera");
INSERT INTO cargos VALUES("2","gerente");
INSERT INTO cargos VALUES("3","gerente");
INSERT INTO cargos VALUES("4","secretaria");
INSERT INTO cargos VALUES("5","cajera");
INSERT INTO cargos VALUES("6","admistrativo");
INSERT INTO cargos VALUES("7","gerente");
INSERT INTO cargos VALUES("8","admistrativo");
INSERT INTO cargos VALUES("9","secretaria");
INSERT INTO cargos VALUES("10","cajera");
INSERT INTO cargos VALUES("11","cajera");
INSERT INTO cargos VALUES("12","secretaria");
INSERT INTO cargos VALUES("13","secretaria");
INSERT INTO cargos VALUES("14","secretaria");
INSERT INTO cargos VALUES("15","cajera");
INSERT INTO cargos VALUES("16","secretaria");
INSERT INTO cargos VALUES("17","secretaria");
INSERT INTO cargos VALUES("18","cajera");
INSERT INTO cargos VALUES("19","admistrativo");
INSERT INTO cargos VALUES("20","cajera");
INSERT INTO cargos VALUES("21","gerente");
INSERT INTO cargos VALUES("22","secretaria");
INSERT INTO cargos VALUES("23","admistrativo");
INSERT INTO cargos VALUES("24","admistrativo");
INSERT INTO cargos VALUES("25","gerente");
INSERT INTO cargos VALUES("26","cajera");
INSERT INTO cargos VALUES("27","cajera");
INSERT INTO cargos VALUES("28","cajera");
INSERT INTO cargos VALUES("29","admistrativo");
INSERT INTO cargos VALUES("30","secretaria");
INSERT INTO cargos VALUES("31","secretaria");
INSERT INTO cargos VALUES("32","cajera");
INSERT INTO cargos VALUES("33","admistrativo");
INSERT INTO cargos VALUES("34","cajera");
INSERT INTO cargos VALUES("35","admistrativo");
INSERT INTO cargos VALUES("36","secretaria");
INSERT INTO cargos VALUES("37","cajera");
INSERT INTO cargos VALUES("38","cajera");
INSERT INTO cargos VALUES("39","admistrativo");
INSERT INTO cargos VALUES("40","admistrativo");
INSERT INTO cargos VALUES("41","secretaria");
INSERT INTO cargos VALUES("42","admistrativo");
INSERT INTO cargos VALUES("43","cajera");
INSERT INTO cargos VALUES("44","gerente");
INSERT INTO cargos VALUES("45","cajera");
INSERT INTO cargos VALUES("46","cajera");
INSERT INTO cargos VALUES("47","admistrativo");
INSERT INTO cargos VALUES("48","gerente");
INSERT INTO cargos VALUES("49","gerente");
INSERT INTO cargos VALUES("50","cajera");
INSERT INTO cargos VALUES("51","cajera");
INSERT INTO cargos VALUES("52","cajera");
INSERT INTO cargos VALUES("53","secretaria");
INSERT INTO cargos VALUES("54","gerente");
INSERT INTO cargos VALUES("55","gerente");
INSERT INTO cargos VALUES("56","gerente");
INSERT INTO cargos VALUES("57","cajera");
INSERT INTO cargos VALUES("58","cajera");
INSERT INTO cargos VALUES("59","secretaria");
INSERT INTO cargos VALUES("60","gerente");
INSERT INTO cargos VALUES("61","admistrativo");
INSERT INTO cargos VALUES("62","gerente");
INSERT INTO cargos VALUES("63","cajera");
INSERT INTO cargos VALUES("64","gerente");
INSERT INTO cargos VALUES("65","cajera");
INSERT INTO cargos VALUES("66","cajera");
INSERT INTO cargos VALUES("67","gerente");
INSERT INTO cargos VALUES("68","secretaria");
INSERT INTO cargos VALUES("69","admistrativo");
INSERT INTO cargos VALUES("70","admistrativo");
INSERT INTO cargos VALUES("71","admistrativo");
INSERT INTO cargos VALUES("72","secretaria");
INSERT INTO cargos VALUES("73","gerente");
INSERT INTO cargos VALUES("74","secretaria");
INSERT INTO cargos VALUES("75","gerente");
INSERT INTO cargos VALUES("76","admistrativo");
INSERT INTO cargos VALUES("77","cajera");
INSERT INTO cargos VALUES("78","secretaria");
INSERT INTO cargos VALUES("79","admistrativo");
INSERT INTO cargos VALUES("80","gerente");
INSERT INTO cargos VALUES("81","cajera");
INSERT INTO cargos VALUES("82","secretaria");
INSERT INTO cargos VALUES("83","secretaria");
INSERT INTO cargos VALUES("84","admistrativo");
INSERT INTO cargos VALUES("85","gerente");
INSERT INTO cargos VALUES("86","cajera");
INSERT INTO cargos VALUES("87","gerente");
INSERT INTO cargos VALUES("88","cajera");
INSERT INTO cargos VALUES("89","secretaria");
INSERT INTO cargos VALUES("90","cajera");
INSERT INTO cargos VALUES("91","gerente");
INSERT INTO cargos VALUES("92","admistrativo");
INSERT INTO cargos VALUES("93","cajera");
INSERT INTO cargos VALUES("94","cajera");
INSERT INTO cargos VALUES("95","admistrativo");
INSERT INTO cargos VALUES("96","admistrativo");
INSERT INTO cargos VALUES("97","cajera");
INSERT INTO cargos VALUES("98","admistrativo");
INSERT INTO cargos VALUES("99","cajera");
INSERT INTO cargos VALUES("100","admistrativo");
INSERT INTO cargos VALUES("101","gerente general");
INSERT INTO cargos VALUES("102","administrador de finanzas");
INSERT INTO cargos VALUES("103","auxiliar contable");
INSERT INTO cargos VALUES("104","secretaria");
INSERT INTO cargos VALUES("105","jefe de produccion");
INSERT INTO cargos VALUES("106","jefe de area");
INSERT INTO cargos VALUES("107","jefe de departamento");
INSERT INTO cargos VALUES("108","jefe de almacen");



DROP TABLE IF EXISTS causadetrasferencia;

CREATE TABLE `causadetrasferencia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




DROP TABLE IF EXISTS causasdebajas;

CREATE TABLE `causasdebajas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) NOT NULL,
  `activo` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




DROP TABLE IF EXISTS cuentas;

CREATE TABLE `cuentas` (
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




DROP TABLE IF EXISTS depreciacionactivos;

CREATE TABLE `depreciacionactivos` (
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




DROP TABLE IF EXISTS depreciaciones;

CREATE TABLE `depreciaciones` (
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




DROP TABLE IF EXISTS detallealta;

CREATE TABLE `detallealta` (
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




DROP TABLE IF EXISTS detallebaja;

CREATE TABLE `detallebaja` (
  `cantidad` int(11) NOT NULL AUTO_INCREMENT,
  `bajas_id` int(11) NOT NULL,
  `activos_id` int(11) NOT NULL,
  PRIMARY KEY (`cantidad`),
  KEY `fk_bajas_has_activos_activos1_idx` (`activos_id`),
  KEY `fk_bajas_has_activos_bajas1_idx` (`bajas_id`),
  CONSTRAINT `fk_bajas_has_activos_activos1` FOREIGN KEY (`activos_id`) REFERENCES `activos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_bajas_has_activos_bajas1` FOREIGN KEY (`bajas_id`) REFERENCES `bajas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




DROP TABLE IF EXISTS detalletrasferencia;

CREATE TABLE `detalletrasferencia` (
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




DROP TABLE IF EXISTS empleados;

CREATE TABLE `empleados` (
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
  KEY `fk_empleados_cargos1_idx` (`cargos_id`),
  CONSTRAINT `fk_empleados_areas1` FOREIGN KEY (`areas_id`) REFERENCES `areas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_empleados_cargos1` FOREIGN KEY (`cargos_id`) REFERENCES `cargos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_empleados_empleados1` FOREIGN KEY (`empleados_id`) REFERENCES `empleados` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=230 DEFAULT CHARSET=utf8;

INSERT INTO empleados VALUES("3","Miguel","Martinez","M","barrio parque industrial","2","203","105");
INSERT INTO empleados VALUES("4","Soledad","Barea","F","barrio equipetro","3","203","104");
INSERT INTO empleados VALUES("5","Ing. Adria Carrillo","Santos Sosa","m","Yaracuy","0","202","108");
INSERT INTO empleados VALUES("6","Beatriz","Castro Pizarro","F","Z. Rosario C. Tumusla N°. 524 Galeria 16 de Julio, Subsuelo Local N°16","2","201","50");
INSERT INTO empleados VALUES("7","Iria","Madrid Gallegos","F","Av. Mcal. Santa Cruz Ed. Cámara Nacional de Comercio PB. Of. 1","1","119","93");
INSERT INTO empleados VALUES("8","Leire","Godoy Águilar","F","C. Sagarnaga Nº. 219","3","183","44");
INSERT INTO empleados VALUES("9","Naia","López Torres","F","Av.Bush Nº. 1365 Monumento Bush","3","201","100");
INSERT INTO empleados VALUES("30","Pau","Esparza Zambrano","F","Av. 6 de Marzo Nº. 555 P1 Of. 5","2","202","15");
INSERT INTO empleados VALUES("31","Raquel","Aguado Ureña","F","Z. Centro C. Almirante Grau Nª 398","1","196","1");
INSERT INTO empleados VALUES("32","Paola","Vela Vélez","F","Z. Villa Fatima, Av. De las americas Esq. Condarco Nº. 1800","4","191","6");
INSERT INTO empleados VALUES("33","Salma","Girón Requena","F","C. Santa. Rosa 410 Ed. Vargas V.Fatima SIRIO SIMONI S/N","7","118","68");
INSERT INTO empleados VALUES("34","Iria","Cotto Sancho","F","Z. 16 De Julio Av. 16 De Julio N° 76 A","7","180","41");
INSERT INTO empleados VALUES("35","Daniela","Botello Simón","F","C. Reyes Ortiz Nº. 73 Torre.O.P.19 -1901 /Central","8","204","49");
INSERT INTO empleados VALUES("36","Africa","Miranda Sandoval","F","Z. Alto Sopocachi Av. Jaimes Feyre Nº 2990","6","152","32");
INSERT INTO empleados VALUES("37","Celia","Roca Rivero","F","Av.Montes 716 Ed. URSIC MOTORS PISO6 Of I. 1","1","196","27");
INSERT INTO empleados VALUES("38","Emma","Ros Heredia","F","Entre Rios Cellejon Rio Abuna Nº 1991","9","131","88");
INSERT INTO empleados VALUES("39","Olivia","Rocha Fierro","F","Z. San Sebastián C. Atahuallpa Nº. 287","1","154","85");
INSERT INTO empleados VALUES("40","Nil","Ortiz Fierro","F","Av. Busch Nº 1951 entre Díaz Romero y Villalobos","1","179","3");
INSERT INTO empleados VALUES("41","Blanca","Cantú Henríquez","F","C. Pucarani Nº. 161, Montes y Chuquisaca","3","165","22");
INSERT INTO empleados VALUES("42","Noelia","Villalba Zapata","F","Av. Mcal. Santa Cruz Nº. 1003 Esq. Yanacocha Ed. Casanova L. 107","6","174","100");
INSERT INTO empleados VALUES("43","Adriana","Centeno Hernandes","F","Achumani C. 17 Ramon Arias Nº. 18","1","155","46");
INSERT INTO empleados VALUES("44","Blanca","Serra Garay","F","Z. Central, Av. 16 de Julio Nº. 1636","1","139","11");
INSERT INTO empleados VALUES("45","Antonia","Ayala Cabello","F","C. Murillo y America N. Cardozo 413 Z. Rosario","4","151","101");
INSERT INTO empleados VALUES("46","Daniela","Herrero Hidalgo","F","Av. 6 de Agosto Esq. Campos Ed. Iturri Mezanine PB","9","206","22");
INSERT INTO empleados VALUES("47","Isabel","Rodrígez Medina","F","Plaza Eguino Nº. 750 Z. El Rosario","8","113","14");
INSERT INTO empleados VALUES("48","Ainara","Griego De la fuente","F","Z. San Pedro C. Almirante Grau Nª 648","2","151","84");
INSERT INTO empleados VALUES("49","Andrea","Valdivia Tijerina","F","Av. 20 de Octubre Nº. 2072 Ed. Atahuallpa PB Of. 1","5","129","46");
INSERT INTO empleados VALUES("50","Diana","Contreras Expósito","F","C. Narciso Dulón Nº. 516 Z. Villa Fátima","4","159","81");
INSERT INTO empleados VALUES("51","Valeria","Oquendo Haro","F","Av. Entre Rios # 1387 Zona Alto Tejar","6","167","12");
INSERT INTO empleados VALUES("52","Pau","Lorente Chapa","F","Av. Armentia# 638 Zona Norte","8","156","92");
INSERT INTO empleados VALUES("53","Valeria","Camarillo Partida","F","Av. 6 de Marzo Nº. 777","9","127","44");
INSERT INTO empleados VALUES("54","Iria","Aguayo Villareal","F","Av. 16 de Julio Nº. 1486 Z. Central","3","144","74");
INSERT INTO empleados VALUES("55","Leyre","Pérez Cadena","F","C. Illampu pasando Plaza Eguino Nº. 850","2","142","7");
INSERT INTO empleados VALUES("56","Luisa","Roldán Saucedo","F","Calacoto - Av. Prolongacion Ballivian Calle 24 # 57","6","202","7");
INSERT INTO empleados VALUES("57","Celia","Nieto Altamirano","F","Av. Buenos Aires N°. 1486","4","181","84");
INSERT INTO empleados VALUES("58","Pau","Carrasquillo Marrero","F","Calle Miguel Cervantes Nº 3595","3","145","38");
INSERT INTO empleados VALUES("59","Erika","Macías Delao","F","Z. Central Av. Jaimes Feyre Nº 2902","1","150","65");
INSERT INTO empleados VALUES("60","Eva","Guajardo Martín","F","Z. Los Andes, Av. Buenos Aires N°. 989","4","148","25");
INSERT INTO empleados VALUES("61","Angela","Lebrón Olivo","F","c. Murillo Nº. 1084 La Paz Av. 6 de Marzo Nº. 250 lado Electropaz EL ALTO","2","125","75");
INSERT INTO empleados VALUES("62","Ainara","Guardado Camarillo","F","C. Fernando Guachalla y Av. Sanchez Lima # 503 Zona Sopocachi","6","123","43");
INSERT INTO empleados VALUES("63","Lidia","Regalado Camacho","F","Carretera Oruro Km. 17.5","8","198","102");
INSERT INTO empleados VALUES("64","Victoria","Martínez Arteaga","F","Z. San Sebastian Av.Idelfonso de las Muñecas Nº. 499","5","203","58");
INSERT INTO empleados VALUES("65","Yaiza","Miramontes Sepúlveda","F","Av. 6 Agosto Nº. 2464 Ed.Jardines Messanine Of 7","7","170","53");
INSERT INTO empleados VALUES("66","Naia","Echevarría Sierra","F","Av. saavedra nro. 1513 (miraflores)","4","172","94");
INSERT INTO empleados VALUES("67","Pau","Gaytán Marín","F","Av Bush #605(Plaza Villarroel)","7","152","25");
INSERT INTO empleados VALUES("68","Fatima","Covarrubias Carmona","F","Av Bush #809 (Plaza Villarroel abajo)","2","141","6");
INSERT INTO empleados VALUES("69","Victoria","Carrión Mojica","F","C. México Nº. 1551, Ed. Chuquiago Mezzanine","6","120","60");
INSERT INTO empleados VALUES("70","Raquel","Oquendo Alcántar","F","Av. Pando Nº. 248 Of. 3","2","143","13");
INSERT INTO empleados VALUES("71","Bella","Campos Barrios","F","no brinda informacion","2","103","24");
INSERT INTO empleados VALUES("72","Carmen","Luna Luján","F","C. E.E.UU. Nº. 1300 Esq. San Salvador Z. Miraflores","7","126","14");
INSERT INTO empleados VALUES("73","Raquel","Jaime Rodríquez","F","Av. Baptista # 803 Zona 14 de Septiembre","6","147","4");
INSERT INTO empleados VALUES("74","Abril","Miguel Baeza","F","Calle loayza n°250","5","131","102");
INSERT INTO empleados VALUES("75","Zulay","Hernádez Delarosa","F","Av. Entre Ríos Nº. 1823 Z. El Tejar","4","206","24");
INSERT INTO empleados VALUES("76","Cristina","Castaño Anguiano","F","Av. Entre Ríos Nº. 2211 Z. Alto Tejar","9","120","85");
INSERT INTO empleados VALUES("77","Valeria","Santos Marcos","F","Av. Entre Rios # 1724 Zona Bajo Tejar","7","141","93");
INSERT INTO empleados VALUES("78","Nerea","Guerrero Feliciano","F","C. Sagarnaga Nº. 259 Z. El Rosario","6","176","30");
INSERT INTO empleados VALUES("79","Silvia","de Anda Vela","F","Av. America Calle Murillo Oficina 1 Piso 2 Nº 413","2","124","34");
INSERT INTO empleados VALUES("80","Vera","Uribe Gracia","F","Z. San Sebastian Evaristo Valle N° 150 Ed. Galeria Heriba P. 1 Of. 105","4","108","35");
INSERT INTO empleados VALUES("81","Iria","Cintrón Grijalva","F","Z. Miraflores C. Levi Nº. 20","4","105","35");
INSERT INTO empleados VALUES("82","Paola","Castellanos Menchaca","F","C. Fernando Guachalla Nº. 384 Esq. 20 de Octubre","1","170","41");
INSERT INTO empleados VALUES("83","Marina","Adame Rey","F","C. Castro #1566","2","207","84");
INSERT INTO empleados VALUES("84","Nora","Lebrón Baeza","F","Av. Illimani Nº.1970, frente Electropaz","5","103","38");
INSERT INTO empleados VALUES("85","Ona","Sáenz Ríos","F","Z. El Rosario C. Santa Cruz Esq. Illampu Nº. 359","9","149","87");
INSERT INTO empleados VALUES("86","Maria","Holguín Ulloa","F","Z. 14 de Septiembre y C. Jose Maria Acha Nº. 880","1","139","31");
INSERT INTO empleados VALUES("87","Noelia","Osorio Rodríquez","F","C. Santos Mercado Nº. 3625 El Alto","8","138","72");
INSERT INTO empleados VALUES("88","Ines","Santos Chapa","F","Av. Landaeta y C. Bernardo de Rojas Nº. 849","4","208","41");
INSERT INTO empleados VALUES("89","Natalia","Morales Peres","F","Av. Armentia Nº. 359 Z. Norte","5","144","23");
INSERT INTO empleados VALUES("90","Vega","Zayas Alicea","F","C. Entre Rios Callejon Rio Abuna Nº. 1991","3","169","107");
INSERT INTO empleados VALUES("91","Alejandra","Flórez Carbajal","F","C. Pedro Salazar Nº. 509","6","153","13");
INSERT INTO empleados VALUES("92","Lucia","Caballero Ibáñez","F","Z. El Rosario, Pasaje Melchor Jimenez N°. 818","2","179","11");
INSERT INTO empleados VALUES("93","Eva","Uribe Corrales","F","Ed. San Pablo P. 6 Of. 607","4","169","48");
INSERT INTO empleados VALUES("94","Zulay","Andrés Uribe","F","Av. Jaimes Freyre Nº. 1023","5","189","75");
INSERT INTO empleados VALUES("95","Aroa","Martínez Meléndez","F","C. loayza Nº. 250 Ed. Castilla piso 4 Of. 410","4","192","76");
INSERT INTO empleados VALUES("96","Nayara","Cervántez Delapaz","F","C. Juan de Vargas Nº. 2289","5","186","50");
INSERT INTO empleados VALUES("97","Ane","Meza Navarro","F","Z. San Pedro C. Almirante Grau Nª 648","4","173","106");
INSERT INTO empleados VALUES("98","Noa","Ontiveros Briseño","F","Z. Cruce Villa Copacabana Av. Esteban Arce","8","174","50");
INSERT INTO empleados VALUES("99","Manuela","Alfonso Rico","F","Victor Sangines Nº. 2905","4","134","35");
INSERT INTO empleados VALUES("100","Julia","Martí Saucedo","F","Z. San Pedro Av. Heroes del Acre Nº. 1542","1","131","55");
INSERT INTO empleados VALUES("101","Carla","Oropeza Soliz","F","Z. San Pedro , C.Rigoberto Paredes Nº. 1286","4","188","31");
INSERT INTO empleados VALUES("102","Fatima","Requena Feliciano","F","C. Batallón Colorados Nº. 24, Ed. El Cóndor P.10 Of. 1008","6","147","11");
INSERT INTO empleados VALUES("103","Luna","Caballero Valdez","F","C. Alihuata Nº. 1065 EX COBATIENTES El Alto","4","156","40");
INSERT INTO empleados VALUES("104","Naia","Ibarra Nájera","F","Z. Villa Bolivar \"C\" (Carretera a Viacha) C. 126 Av. Ladislao Cabrera Nº. 15","6","170","91");
INSERT INTO empleados VALUES("105","Lucia","Alaniz Correa","F","Z. La Portada Nº 2250 Av. Entre Rios","5","188","100");
INSERT INTO empleados VALUES("106","Pau","Franco Carreón","F","Z. Calacoto, Av. Clemente Inofuente(entre C. 10 y 11) Nº. 437","7","174","56");
INSERT INTO empleados VALUES("107","Alexandra","Soler Márquez","F","C. Murillo y America N. Cardozo 413 Z. Rosario","9","206","100");
INSERT INTO empleados VALUES("108","Emma","Vaca Candelaria","F","C. Mercado N°. 1075","2","179","18");
INSERT INTO empleados VALUES("109","Celia","Sauceda Delrío","F","C. Melchor Perez Nº. 2439","8","201","89");
INSERT INTO empleados VALUES("110","Ane","Barreto Luevano","F","C. Oruro Ed. Oruro Piso 9-B (Central)","2","187","1");
INSERT INTO empleados VALUES("111","Noa","Monroy Herrera","F","C. Juan de la Riva Z. Centro","7","163","47");
INSERT INTO empleados VALUES("112","Candela","Roldán Esteve","F","Ed. San Pablo Piso 14 Of. 1406","6","119","100");
INSERT INTO empleados VALUES("113","Leyre","Nava Jaime","F","Av. Entre Rios #1662","3","185","71");
INSERT INTO empleados VALUES("114","Marina","Guerra Jiménez","F","Eloy Salmon edif. Imexcar Central of. 22 Nº 862","3","199","105");
INSERT INTO empleados VALUES("115","Mar","Montañez Gallegos","F","Z. Rosario C. Tumusla N°. 524 Galeria 16 de Julio, Subsuelo Local N°3","1","107","82");
INSERT INTO empleados VALUES("116","Naia","Henríquez Espinal","F","20 de octubre Nº. 2627","6","161","51");
INSERT INTO empleados VALUES("117","Gabriela","Núñez Lovato","F","C. Rosendo Gutiérrez Nº. 608 P. 1","2","168","104");
INSERT INTO empleados VALUES("118","Teresa","Toro Granado","F","C. Juan de Vargas Nº. 2289","2","207","58");
INSERT INTO empleados VALUES("119","Carmen","Garrido Sarabia","F","Gral. Gonzales a media cuadra de la plaza San Pedro Nº. 1272","3","189","86");
INSERT INTO empleados VALUES("120","Silvia","Amador Rodríguez","F","Z. San Pedro , C.Rigoberto Paredes Nº. 1286","6","176","31");
INSERT INTO empleados VALUES("121","Mireia","Linares Bonilla","F","Z. Central C. Linares Nº 455","9","134","53");
INSERT INTO empleados VALUES("122","Luna","Reyes Henríquez","F","C. Pedrazas 365 Ed. San Marcos P.4 Dpto.4","7","155","76");
INSERT INTO empleados VALUES("123","Lidia","Badillo Esteve","F","Av. Buenos Aires N°. 1486","2","177","86");
INSERT INTO empleados VALUES("124","Sara","Pereira Marco","F","C. Hermanos Manchego Nº. 2571 Sopocachi","2","157","32");
INSERT INTO empleados VALUES("125","Sandra","Ruvalcaba Uribe","F","Tejada Sorzano #862","5","164","26");
INSERT INTO empleados VALUES("126","Vera","Piña Chacón","F","C. Los Andes","5","200","57");
INSERT INTO empleados VALUES("127","Olivia","Macías Terán","F","C. Otero de la Vega Nº. 406 Esq.20 de Octubre Z. San Pedro","7","152","21");
INSERT INTO empleados VALUES("128","Manuela","Rosario Salcedo","F","Z. Sopocachi Belisario Salinas N° 383 Ed. Vila Mary P. Mezz Of. 1","9","164","53");
INSERT INTO empleados VALUES("129","Laia","Chávez Ros","F","no brinda informacion","5","113","99");
INSERT INTO empleados VALUES("130","Marcos","Farías Puig","M","Z. Miraflores Estado Barbados N° 1008","9","152","93");
INSERT INTO empleados VALUES("131","Miguel","Camarillo Pozo","M","Z. Villa Fátima entre Av. Estados Unidos y Av. Busch","5","133","45");
INSERT INTO empleados VALUES("132","Antonio","Pizarro Manzanares","M","Ed. Avenida piso 1 Of. 1","9","159","99");
INSERT INTO empleados VALUES("133","Juan","Alcántar Carranza","M","Ed. Avenida planta baja Of. 10","1","105","75");
INSERT INTO empleados VALUES("134","Isaac","Villanueva Gracia","M","Villa Armonia Calle Armonia N° 10","4","123","11");
INSERT INTO empleados VALUES("135","Angel","Hernández Pascual","M","C. 128 Carretera a Viacha","1","201","80");
INSERT INTO empleados VALUES("136","Martin","Agosto Ochoa","M","Z. Cordillera Real de Los Andes de Suriquiña y Alto Peñas","3","162","101");
INSERT INTO empleados VALUES("137","Marc","Esteve Tapia","M","Río Orthon Nº. 2074, 2152, La Paz, Murillo, Bolivia","3","206","2");
INSERT INTO empleados VALUES("138","Adrian","Salcedo Olmos","M","Z. Centro C. Murillo N° 650","1","152","54");
INSERT INTO empleados VALUES("139","Eric","Ledesma Guajardo","M","Z. San Sebastian C. Bozo N°. 180 Esq. Goiyteza, Ed. Fundador 2do P. Of. 16","7","186","34");
INSERT INTO empleados VALUES("140","Andres","Razo Casillas","M","Av. Armentia Nº. 553 Z. Norte","7","164","35");
INSERT INTO empleados VALUES("141","Marc","Chacón Rosario","M","Av. Saavedra Nº. 2166","9","165","59");
INSERT INTO empleados VALUES("142","Ruben","Ponce Mares","M","C. 21 N°. 8227 Ed. Torre Lydia Piso 6 Oficina 606 Z. Calacoto","4","123","38");
INSERT INTO empleados VALUES("143","Pablo","Mascareñas Gracia","M","Z. Achumani C. Garcia Lanza Nº. 12","2","131","17");
INSERT INTO empleados VALUES("144","Izan","Laureano Soria","M","Gral. Gonzales a media cuadra de la plaza San Pedro Nº. 1272","9","116","12");
INSERT INTO empleados VALUES("145","Samuel","Negrón Ramón","M","Av. Arce y Rosendo Gutierrez Nº. 2390 Sopocachi","5","162","79");
INSERT INTO empleados VALUES("146","Alonso","Menéndez Solís","M","Carretera Oruro Nº. 50","5","109","54");
INSERT INTO empleados VALUES("147","Cesar","Roybal Botello","M","C. Comercio Nº.1277","8","190","104");
INSERT INTO empleados VALUES("148","Pablo","Méndez Cerda","M","Ed Perrin piso 1 Of. 5","4","146","19");
INSERT INTO empleados VALUES("149","Hugo","Velázquez Almonte","M","Z. Central Av. 16 De Julio (el Prado) N° 1479 Ed. San Pablo P.6 Of. 607","2","174","48");
INSERT INTO empleados VALUES("150","Ander","Carrion Mateos","M","C. ILLAMPU #742 Z. EL ROSARIO","2","173","76");
INSERT INTO empleados VALUES("151","Eric","Ramón Corrales","M","Z. Villa Copacabana C. Antonio Velasco Nº. 1924","6","122","21");
INSERT INTO empleados VALUES("152","Ander","Delafuente Nieves","M","Av. General Jaureguí, C. San Antonio Nº. 2, Santuario de Copacabana","5","156","4");
INSERT INTO empleados VALUES("153","Ruben","Mena Sauceda","M","Av. Montenegro Nº. 1420 Ed. San Miguel Arcangel P. 1 Of. 104","7","103","16");
INSERT INTO empleados VALUES("154","Hugo","Galván Uribe","M","C. Rapitan Ravelo Nº. 2021 Central","3","177","10");
INSERT INTO empleados VALUES("155","Marcos","Medrano Reyes","M","C. Socabaya Nº. 240, Ed. Handal P. 12 Of. 1208","7","200","67");
INSERT INTO empleados VALUES("156","Gonzalo","Farías Velázquez","M","Z. Central C. Colon Nº. 1320","9","155","51");
INSERT INTO empleados VALUES("157","Alex","Bañuelos Ornelas","M","Z. San Sebastián C. Chuquisaca Nº. 675","7","179","26");
INSERT INTO empleados VALUES("158","Marc","Aguilera Rosado","M","Calle Bustillos Nro. 1049 Zona Sopocachi","7","163","44");
INSERT INTO empleados VALUES("159","Pablo","Carballo Otero","M","Av. Camacho Esq. Colón N°. 1312 Z. Central","9","120","31");
INSERT INTO empleados VALUES("160","Alberto","Andreu Zúñiga","M","C. Colombia Nº. 520 Z. San Pedro","2","143","47");
INSERT INTO empleados VALUES("161","Marcos","Leal Arce","M","Z. Bautista Av. Edificio Elsa Maria No. 1028","2","133","57");
INSERT INTO empleados VALUES("162","Omar","Adame Vergara","M","Calle 10 Ed. SESA S/N","8","156","49");
INSERT INTO empleados VALUES("163","Manuel","Aguirre Urrutia","M","Av. Baptista Nº 915","2","147","102");
INSERT INTO empleados VALUES("164","Oswaldo","Clemente Mateo","M","Av. 16 de Julio Nº. 1456 Prado Ed. Caracas P. 2","3","108","19");
INSERT INTO empleados VALUES("165","Jordi","Sánchez Haro","M","Z. Central C. Linares Nº. 373","4","172","1");
INSERT INTO empleados VALUES("166","Lucas","Pabón Tórrez","M","C. Pando Nº. 290","3","152","66");
INSERT INTO empleados VALUES("167","Miguel","Escribano Marín","M","Pasaje Angelica Azcui Nº.489 Huyustus","3","178","3");
INSERT INTO empleados VALUES("168","Hector","Villegas Bermejo","M","Av. Mcal. Santa Cruz Ed. Cámara de Comercio Nacional PB Of. 13","4","125","79");
INSERT INTO empleados VALUES("169","Ivan","Castaño Caldera","M","Z. Villa Bolivar , C. 15. Nº. 123","4","198","84");
INSERT INTO empleados VALUES("170","Lucas","Barrientos Aragón","M","Av. Montenegro nro. 1456 (San Miguel)","9","168","60");
INSERT INTO empleados VALUES("171","Erik","Espino Peres","M","Av. Kollasuyu # 87 y C. Chapare Bajo Mcal. Santa Cruz","5","114","104");
INSERT INTO empleados VALUES("172","Cristian","Villalobos Ballesteros","M","Z. Miraflores C. Panama Nº. 1504","8","146","29");
INSERT INTO empleados VALUES("173","Samuel","Brito Barraza","M","Z. Obrajes, C. 12, N°. 315","6","171","1");
INSERT INTO empleados VALUES("174","Mateo","Caro Navas","M","Av. Buenos Aires Nº 1206","7","151","86");
INSERT INTO empleados VALUES("175","Fernando","Corral Toledo","M","Z. Calacoto, Av. Ballivián C. 10 Nº. 369","3","106","81");
INSERT INTO empleados VALUES("176","Adria","Montoya Esquibel","M","Z. Central, C. Illampu Nº. 835","1","161","20");
INSERT INTO empleados VALUES("177","Nicolas","Centeno Andreu","M","Z. Central Av.16 De Julio N° 1479 Ed. San Pablo P. 16 Of. 1601","2","149","67");
INSERT INTO empleados VALUES("178","Ismael","Ornelas Duran","M","Calle 8 - 9 Calacoto","1","181","107");
INSERT INTO empleados VALUES("179","Ander","Juan Salinas","M","Ed. San Pablo P. 6 Of. 607","7","114","15");
INSERT INTO empleados VALUES("180","Alex","Granados Martín","M","Z. Alto Sopocachi Av. Jaimes Feyre Nº 2559","6","173","7");
INSERT INTO empleados VALUES("181","Oliver","Cuellar Hinojosa","M","C. Estados Unidos Nº. 1315","7","124","93");
INSERT INTO empleados VALUES("182","Eduardo","Vela Cortés","M","Ed. Bolivar piso 3 Of. 301","1","205","34");
INSERT INTO empleados VALUES("183","Eduardo","Cuesta Rangel","M","Av. Santa Cruz edificio Casanova of. 604 piso 6 Nº1003","7","203","75");
INSERT INTO empleados VALUES("184","Diego","Rivera Garibay","M","Z. Alto San Pedro, C. Rio Loa Esq. Abelardo Ugarte Nº. 1551","2","164","20");
INSERT INTO empleados VALUES("185","Alberto","Gurule Peralta","M","no brinda informacion","6","170","47");
INSERT INTO empleados VALUES("186","Jesus","Márquez Cuellar","M","Av. Muñoz Reyes Calle 31 # 131 Zona Cota Cota","6","184","29");
INSERT INTO empleados VALUES("187","Omar","Moral Mondragón","M","Calacoto Calle 23 esq. Gabino Villanueva","1","199","81");
INSERT INTO empleados VALUES("188","Rodrigo","Puga Nazario","M","Plaza Eguino Nº. 750 Z. El Rosario","5","183","49");
INSERT INTO empleados VALUES("189","Antonio","Ros Almonte","M","C.Illampu Nº. 950 Z. Rosario","3","172","86");
INSERT INTO empleados VALUES("190","Jesus","Frías Armas","M","C. Max Paredes y Esq. Sagarnaga # 171 Zona El Rosario","9","171","94");
INSERT INTO empleados VALUES("191","Leonardo","Garica Fajardo","M","Z.Centro C.Almirante Grau Nº. 491","3","140","58");
INSERT INTO empleados VALUES("192","Izan","Pereira Zaragoza","M","Pza. Tomas Katari Nº. 37 frente al Cementerio General","9","169","76");
INSERT INTO empleados VALUES("193","Angel","Sáenz Torres","M","Z. Central Av. Montes Nº. 716","2","121","78");
INSERT INTO empleados VALUES("194","Manuel","Alba Viera","M","Av. Tiwanacu Nº. 8 frente al Hotel Europa","9","177","107");
INSERT INTO empleados VALUES("195","Guillermo","Tamayo Lerma","M","Z. Villa Fatima, Shopping La Cumbre 2do nivel local N°. 205","2","209","72");
INSERT INTO empleados VALUES("196","Mohamed","Crespo Lucas","M","Z. San Sebastian Av.Idelfonso de las Muñecas Nº. 499","6","123","104");
INSERT INTO empleados VALUES("197","Javier","Pacheco Grijalva","M","no brinda informacion","5","205","35");
INSERT INTO empleados VALUES("198","Hector","Peña Cortés","M","av. Simon Bolivar y Juan Manuel Loza #1010","4","166","24");
INSERT INTO empleados VALUES("199","Oswaldo","Antón Quiroz","M","Av. Sánchez Lima Nº. 2099 Esq. A. Aspiazu","2","206","67");
INSERT INTO empleados VALUES("200","Jaime","Lebrón Zarate","M","Av. Villazón Nº 1987","7","164","1");
INSERT INTO empleados VALUES("201","Ivan","Adorno Alvarado","M","C. Max Paredes y C. Apostol Santiago Nº. 1040","6","129","6");
INSERT INTO empleados VALUES("202","Bruno","Páez Montoya","M","Z. San Pedro C. Nicolas Acosta","2","185","77");
INSERT INTO empleados VALUES("203","Martin","Oquendo Vega","M","C. Capitan Ravelo Nº. 2123 - Camino Real","2","146","69");
INSERT INTO empleados VALUES("204","Enrique","Zamudio Ramos","M","Av. Baptista Nº. 945 Z. Callampaya","8","205","51");
INSERT INTO empleados VALUES("205","Pablo","Valentín Irizarry","M","Z. Obrajes Av. Hernando Siles C. 14 N°. 370 Ed. Adolfo Valentino","8","140","70");
INSERT INTO empleados VALUES("206","Saul","Maestas Serra","M","C.Genaro Sanjines Nº.343 Entre Potosi Y C. Onda","1","197","65");
INSERT INTO empleados VALUES("207","Jesus","Leyva Colunga","M","Achumani Calle 16 Nº 6","8","151","95");
INSERT INTO empleados VALUES("208","Ismael","Agosto Gonzales","M","Av. Baptista frente Cementerio General Nº1148-B","3","143","5");
INSERT INTO empleados VALUES("209","Angel","Mas Trejo","M","C.Santa Cruz Nº 339 Z.Centro","4","109","54");
INSERT INTO empleados VALUES("210","Omar","Escobedo Ureña","M","C. 8 Nº. 8082 Calacoto ","3","141","4");
INSERT INTO empleados VALUES("211","Miguel","Sierra Lira","M","C. Montengro N°. 1323 (Planta de Producción El Alto)","8","125","102");
INSERT INTO empleados VALUES("212","Eric","Vidal Garrido","M","C. Max Paredes # 918 Zona El Rosario","5","112","73");
INSERT INTO empleados VALUES("213","Cesar","Gamez Borrego","M","Almirante Grau 525 San Pedro","3","146","37");
INSERT INTO empleados VALUES("214","Isaac","Cisneros Jasso","M","Av. Tejada Sorzano Nº. 1559","3","137","49");
INSERT INTO empleados VALUES("215","Sergio","Sáenz De la fuente","M","Av. Entre Rios # 1809 Zona Alto Tejar","4","112","10");
INSERT INTO empleados VALUES("216","Marco","Ruvalcaba Aponte","M","Av. Entre Rios # 2179 Zona Mariscal Santa Cruz","3","145","45");
INSERT INTO empleados VALUES("217","Martin","Frías Villareal","M","AV. RAFAEL PABON Z. IRPAVI","3","171","38");
INSERT INTO empleados VALUES("218","Marco","Rodríguez Rueda","M","Z. Centro C. Juan de la Riva","2","116","106");
INSERT INTO empleados VALUES("219","Alejandro","Anaya Camacho","M","Av. 6 de Agosto, Pasaje Caracas Nº. 5","9","201","88");
INSERT INTO empleados VALUES("220","Lucas","Salas Casares","M","Z. San Sebastián C. José Indalecio Sanjines Pje. Tiquina Esq. Evaristo Valle Nº. 150","9","173","103");
INSERT INTO empleados VALUES("221","Samuel","Razo Corrales","M","C. Cañada Strongest y Otero de La Vega Nº.1620","4","202","12");
INSERT INTO empleados VALUES("222","Jordi","González Martín","M","C. Estados Unidos Nº. 1458 Z. Miraflores","3","135","42");
INSERT INTO empleados VALUES("223","Erik","Reyes Trejo","M","C. Castro Nº.1508","6","159","105");
INSERT INTO empleados VALUES("224","Mohamed","Malave Paz","M","C. Boquerón Nº. 1355","9","121","21");
INSERT INTO empleados VALUES("225","Omar","Ramón Redondo","M","Av. 16 de Julio Nº. 1440 Ed. Hermann P16 Of. 1603 Z. Centro","5","137","9");
INSERT INTO empleados VALUES("226","Marco","Balderas Alicea","M","Z. Bautista Av. Edificio Elsa Maria No. 1058","4","154","48");
INSERT INTO empleados VALUES("227","Sebastian","Esteve Lovato","M","Z. Auquisamaña C. \"k\" N° 7","7","106","8");
INSERT INTO empleados VALUES("228","Oscar","Luján Piña","M","Av. Sánchez Lima Nº. 2061 Z. Sopocachi","9","178","105");
INSERT INTO empleados VALUES("229","Leo","Enríquez Rael","M","C. Villalobos Nº. 1394 Esq. Busch","3","156","57");



DROP TABLE IF EXISTS empresas;

CREATE TABLE `empresas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `razon_social` varchar(45) NOT NULL,
  `nit` varchar(45) NOT NULL,
  `logo` varchar(45) DEFAULT NULL,
  `correo` varchar(45) NOT NULL,
  `telefono` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=910 DEFAULT CHARSET=utf8;

INSERT INTO empresas VALUES("802","Asociación Valdez C.A.","81846069","null","Cadena.Alejandra@Saavedra.web.ve","3582354");
INSERT INTO empresas VALUES("803","Viajes Navas S.R.L.","86823486","null","FranciscoJavier.Soria@Zepeda.web.ve","76125646");
INSERT INTO empresas VALUES("804","Cuenca de Reina C.A.","7740637","null","Valeria05@Collado.com","67055363");
INSERT INTO empresas VALUES("805","Villalpando y Luna S.R.L.","17439666","null","bAguilar@hotmail.es","61270696");
INSERT INTO empresas VALUES("806","Malave de Rey S.A.","87829911","null","Mercado.Victor@Lemus.org","414337");
INSERT INTO empresas VALUES("807","Guerra y Rodrígez C.A.","38355445","null","Nadia90@hotmail.com","448218");
INSERT INTO empresas VALUES("808","Inversiones Esquibel","38864098","null","Jesus.Echevarria@latinmail.com","208869");
INSERT INTO empresas VALUES("809","Cano y Jurado","31960961","null","Alanis.Jose@live.com","287948");
INSERT INTO empresas VALUES("810","Adame de Cepeda","6618313","null","Dario.Vicente@yahoo.es","221541");
INSERT INTO empresas VALUES("811","Ruvalcaba de Rendón S.A.","67040557","null","wJaramillo@terra.com","286157");
INSERT INTO empresas VALUES("812","Monroy y Laboy S.R.L.","22430042","null","Nahia.Sarabia@hotmail.es","3097170");
INSERT INTO empresas VALUES("813","Empresa Clemente y Martínez","95740411","null","Escudero.Patricia@latinmail.com","64548757");
INSERT INTO empresas VALUES("814","Marrero y Sánchez","16666170","null","Yaiza.Villegas@Irizarry.info.ve","271964");
INSERT INTO empresas VALUES("815","Carvajal y Redondo","35007526","null","Magana.Lola@Lucero.net.ve","73367791");
INSERT INTO empresas VALUES("816","Velasco de Cervantes","22633617","null","eDelafuente@Gracia.net","210463");
INSERT INTO empresas VALUES("817","Almonte y Delgadillo","21156779","null","Adam.Delrio@Correa.web.ve","3152179");
INSERT INTO empresas VALUES("818","Acevedo de Oliva","13967973","null","Puga.Leire@Domenech.info.ve","73931026");
INSERT INTO empresas VALUES("819","Inversiones Román etc","74335458","null","Lucia.Dominquez@live.com","3810966");
INSERT INTO empresas VALUES("820","Carreón de Barrios S.A.","37957742","null","Juan10@Fuentes.org","276784");
INSERT INTO empresas VALUES("821","Negrón y Farías","7850425","null","Gutierrez.Jimena@live.com","275017");
INSERT INTO empresas VALUES("822","Carrión de Villar C.A.","80630","null","Ariadna.Martinez@terra.com","3032389");
INSERT INTO empresas VALUES("823","Ocampo y Merino etc","99695614","null","Ona.Cuenca@hotmail.com","70322004");
INSERT INTO empresas VALUES("824","Grupo Roybal","50178207","null","aSantos@gmail.com","448306");
INSERT INTO empresas VALUES("825","Corporación Robles","48974899","null","vSolorio@Aponte.co.ve","3011048");
INSERT INTO empresas VALUES("826","Tello de Espinoza","41441374","null","tPosada@gmail.com","485350");
INSERT INTO empresas VALUES("827","Carranza y Córdova S.A.","83906591","null","Cesar.Prado@Guillen.info.ve","241255");
INSERT INTO empresas VALUES("828","De la cruz de Guevara","63485113","null","kVera@yahoo.es","225483");
INSERT INTO empresas VALUES("829","Vigil y Benavides","26116039","null","Luisa.Palacios@Bueno.web.ve","3771875");
INSERT INTO empresas VALUES("830","Lovato y Palacios","29272753","null","vRoman@Mateo.net.ve","3256933");
INSERT INTO empresas VALUES("831","Empresa Mateos y Colón","95093202","null","Bustamante.Irene@Solorzano.net","68928328");
INSERT INTO empresas VALUES("832","Viajes Pereira","48340329","null","Rayan33@terra.com","3998198");
INSERT INTO empresas VALUES("833","Tafoya y Garrido S.A.","86999449","null","Tirado.Nahia@Orellana.org.ve","401982");
INSERT INTO empresas VALUES("834","Soler y Blasco","73201158","null","rMadrid@Cerda.org.ve","3003963");
INSERT INTO empresas VALUES("835","Corporación Cotto etc","71267455","null","cLomeli@hispavista.com","3690495");
INSERT INTO empresas VALUES("836","Briones y Cisneros etc","13179961","null","lPena@hotmail.com","73536388");
INSERT INTO empresas VALUES("837","Luque y Meza","85644998","null","Nora43@Collazo.web.ve","73771289");
INSERT INTO empresas VALUES("838","Inversiones Crespo","59475425","null","Aaron.Abeyta@hotmail.com","472383");
INSERT INTO empresas VALUES("839","Almaraz de Quintana R.L.","40288828","null","Samaniego.Izan@Perales.net.ve","72572671");
INSERT INTO empresas VALUES("840","Estévez y Otero","34454661","null","Barragan.Noelia@Perez.net.ve","79230901");
INSERT INTO empresas VALUES("841","Ortiz de Espinoza R.L.","73359364","null","Luisa49@yahoo.es","235447");
INSERT INTO empresas VALUES("842","Global Marroquín y Montoya","32827076","null","Maria11@Lucero.com.ve","458016");
INSERT INTO empresas VALUES("843","Dr. Oropeza R.L.","98890756","null","Gracia.Alejandro@live.com","78629084");
INSERT INTO empresas VALUES("844","Escudero de Vicente R.L.","16600231","null","Sarabia.Adria@Cazares.co.ve","462339");
INSERT INTO empresas VALUES("845","Serra y Miranda etc","47662741","null","Irene.Sosa@hotmail.es","77585638");
INSERT INTO empresas VALUES("846","Global Espinoza","30851177","null","jSantamaria@Benavidez.co.ve","298953");
INSERT INTO empresas VALUES("847","Chapa y Roig S.A.","76627999","null","Nunez.Daniel@yahoo.es","259104");
INSERT INTO empresas VALUES("848","Cervantes y Gutiérrez","80794722","null","zAlcantar@Vela.web.ve","74598798");
INSERT INTO empresas VALUES("849","Lira y Correa","82999181","null","Plaza.Miguel@Gastelum.org.ve","444698");
INSERT INTO empresas VALUES("850","Inversiones Carrera C.A.","6232050","null","Raquel.Resendez@hotmail.com","67413030");
INSERT INTO empresas VALUES("851","Centro Domenech S.A.","509487","null","gGalindo@live.com","72677546");
INSERT INTO empresas VALUES("852","Arenas de Armas R.L.","88266872","null","Alvaro.Dominguez@Serrato.org","79072572");
INSERT INTO empresas VALUES("853","Bautista de Botello R.L.","84920716","null","gAlmaraz@hotmail.es","74672081");
INSERT INTO empresas VALUES("854","Lic. Macías y Cardona","44524304","null","wLopez@hotmail.es","65802049");
INSERT INTO empresas VALUES("855","Cooperativa Raya","1232866","null","gRobledo@Valverde.com.ve","3469610");
INSERT INTO empresas VALUES("856","Puga de Ordóñez","77414770","null","FranciscoJavier69@hotmail.es","297446");
INSERT INTO empresas VALUES("857","Centro Bustamante R.L.","32378831","null","nCordero@Lebron.com","78685510");
INSERT INTO empresas VALUES("858","Cooperativa Negrete y Moral","87334007","null","Alonso.Alex@Domenech.com","60111447");
INSERT INTO empresas VALUES("859","Galindo y Aguirre","95339783","null","Castano.Sandra@Orozco.web.ve","75906246");
INSERT INTO empresas VALUES("860","Gestora Villanueva y Calero","92235465","null","oBurgos@Toledo.net.ve","416233");
INSERT INTO empresas VALUES("861","Salcedo de Granado etc","6502056","null","Portillo.Santiago@live.com","247690");
INSERT INTO empresas VALUES("862","Giménez de Botello","11936967","null","Adria84@Rodrigez.org.ve","65857334");
INSERT INTO empresas VALUES("863","Salcedo de Ferrer","34193353","null","Lorente.Mateo@Dominguez.info.ve","65558575");
INSERT INTO empresas VALUES("864","Luque y Adorno S.A.","74977018","null","uPeres@Rojas.net.ve","451145");
INSERT INTO empresas VALUES("865","Bueno y de Jesús","34640287","null","Solis.Ivan@gmail.com","3978082");
INSERT INTO empresas VALUES("866","Quintana y Sierra","79547721","null","Dario15@terra.com","3699526");
INSERT INTO empresas VALUES("867","Vanegas de Altamirano C.A.","90384968","null","Naia72@Valles.web.ve","77224383");
INSERT INTO empresas VALUES("868","Sanz de Puente","3856456","null","Jan.Arriaga@Garibay.com","61848240");
INSERT INTO empresas VALUES("869","Viajes Bernal y Vargas","25420765","null","Santos.Leonardo@Rodriguez.web.ve","79135964");
INSERT INTO empresas VALUES("870","Ávila de Menéndez R.L.","12320416","null","Daniel.deJesus@Beltran.org","72373127");
INSERT INTO empresas VALUES("871","Empresa Estévez","21923481","null","ePardo@Adorno.org","63851268");
INSERT INTO empresas VALUES("872","Empresa Madrid etc","4792526","null","Roybal.Martin@yahoo.com","79762846");
INSERT INTO empresas VALUES("873","Arellano y Villarreal","53490376","null","Mohamed.Griego@Madera.net","483411");
INSERT INTO empresas VALUES("874","Lic. Quintanilla etc","75521859","null","David20@Escribano.info.ve","74625588");
INSERT INTO empresas VALUES("875","Jimínez de Ávila","86778530","null","Arenas.Daniel@latinmail.com","70238701");
INSERT INTO empresas VALUES("876","Corporación Villegas S.R.L.","54310928","null","sArce@Nino.com","65503572");
INSERT INTO empresas VALUES("877","Tafoya de Alemán","7695573","null","nValdes@Loya.net","61991548");
INSERT INTO empresas VALUES("878","Oropeza de Verduzco","48229322","null","Castellanos.Zulay@Berrios.com","3243561");
INSERT INTO empresas VALUES("879","Saiz y Bueno","86336125","null","Pereira.Lidia@Corona.co.ve","60620306");
INSERT INTO empresas VALUES("880","Lomeli y Lázaro C.A.","34590990","null","Jesus.Salazar@Espinosa.com","463072");
INSERT INTO empresas VALUES("881","Sauceda y Holguín etc","49482615","null","Carolina45@Alba.web.ve","70495629");
INSERT INTO empresas VALUES("882","Gamboa de Báez","55405561","null","Cuevas.Alicia@Longoria.co.ve","70567348");
INSERT INTO empresas VALUES("883","Pardo y Villalobos","49553108","null","Pedro49@terra.com","3439761");
INSERT INTO empresas VALUES("884","Ruíz de Robledo","96975948","null","Galarza.Emma@hotmail.es","68375420");
INSERT INTO empresas VALUES("885","Castaño de Caro C.A.","70018591","null","mPulido@yahoo.com","400716");
INSERT INTO empresas VALUES("886","Global Rentería S.R.L.","94833596","null","Urias.Natalia@yahoo.com","70016439");
INSERT INTO empresas VALUES("887","Villa de Medrano","37471692","null","kMolina@yahoo.es","62035451");
INSERT INTO empresas VALUES("888","Asociación Ulibarri y Calvo","47320761","null","Jaime98@Chapa.web.ve","262429");
INSERT INTO empresas VALUES("889","Cooperativa Suárez y Delvalle","69575593","null","Izan21@terra.com","77884541");
INSERT INTO empresas VALUES("890","Castillo de Corral S.R.L.","79653606","null","Delatorre.Carmen@Lujan.com.ve","3182317");
INSERT INTO empresas VALUES("891","Armendáriz de Laboy","48110293","null","Luna.Batista@Irizarry.net","247389");
INSERT INTO empresas VALUES("892","Anaya de Zamora","99944233","null","Sergio51@Roca.co.ve","68477769");
INSERT INTO empresas VALUES("893","Tafoya y Pacheco S.R.L.","57437454","null","Lazaro.Alvaro@yahoo.com","472983");
INSERT INTO empresas VALUES("894","Corporación Manzano S.A.","78659533","null","Carrasquillo.Lola@gmail.com","77941862");
INSERT INTO empresas VALUES("895","Medina y Grijalva","66204393","null","Jana38@hotmail.com","75541281");
INSERT INTO empresas VALUES("896","Sauceda y Toro C.A.","12863976","null","Luisa52@Mas.com.ve","473533");
INSERT INTO empresas VALUES("897","Corporación Velázquez C.A.","34169328","null","Iria.Saez@gmail.com","72922339");
INSERT INTO empresas VALUES("898","Centro Diez","40159635","null","dSolorio@terra.com","66692870");
INSERT INTO empresas VALUES("899","Empresa Benito","92704558","null","Miguel70@yahoo.es","218500");
INSERT INTO empresas VALUES("900","Centro Carrero","88685568","null","Nerea.Aguilera@Carreon.org.ve","61435024");
INSERT INTO empresas VALUES("901","Cooperativa Rojo C.A.","10248290","null","Mar.Marti@hotmail.es","408593");
INSERT INTO empresas VALUES("902","Hector Pedro Perea","0","null","iConde@Cazares.web.ve","sucursal 0");
INSERT INTO empresas VALUES("903","Antonio Antonio Grijalva","0","null","Marc13@Partida.com.ve","sucursal 6");
INSERT INTO empresas VALUES("904","Ing. Isabel Bustos Hijo","0","null","bEstevez@hotmail.es","sucursal 3");
INSERT INTO empresas VALUES("905","Miguel Alejandro Galván Bernal","0","null","Sandra.Briones@gmail.com","sucursal 9");
INSERT INTO empresas VALUES("906","CARLOS CABALLERO S.R.L.","01028751025","null","dchavez@carloscaballerosrl.com","3492929");
INSERT INTO empresas VALUES("907","LABORATORIOS IFA","01028625022","null","alejandro@laboratoriosifa.com","3431555");
INSERT INTO empresas VALUES("908","AMERICAN CHEMICAL COMPANY S.R.L.","01015231025","null","acc@americanchemical.com.bo","3644500");
INSERT INTO empresas VALUES("909","CASA COLOR","01028709021","null","contador@casacolor.com.bo","3433535");



DROP TABLE IF EXISTS esquemacontables;

CREATE TABLE `esquemacontables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `aniosVidaUtil` double NOT NULL,
  `coeficienteDepreciacion` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

INSERT INTO esquemacontables VALUES("1","Edificaciones","40","2.5");
INSERT INTO esquemacontables VALUES("2","Muebles y enseres de oficina","10","10");
INSERT INTO esquemacontables VALUES("3","Maquinaria en general","8","12.5");
INSERT INTO esquemacontables VALUES("4","Equipos e instalaciones","8","12.5");
INSERT INTO esquemacontables VALUES("5","Barcos y lanchas en general","10","10");
INSERT INTO esquemacontables VALUES("6","Vehiculos automotores","5","20");
INSERT INTO esquemacontables VALUES("7","Aviones","5","20");
INSERT INTO esquemacontables VALUES("8","Maquinaria para la construccion","5","20");
INSERT INTO esquemacontables VALUES("9","Maquinaria agricola","4","25");
INSERT INTO esquemacontables VALUES("10","Animales de trabajo","4","25");
INSERT INTO esquemacontables VALUES("11","Herramientas en genera","4","25");
INSERT INTO esquemacontables VALUES("12","Reproductores y hembras de pedrigree y puros ","8","12.5");
INSERT INTO esquemacontables VALUES("13","Equipos de computacion","4","25");
INSERT INTO esquemacontables VALUES("14","Canales de regadio y pozos","20","5");
INSERT INTO esquemacontables VALUES("15","Estanques, bañeros y abrevaderos","10","10");
INSERT INTO esquemacontables VALUES("16","Alambrados, tranqueras y vallas","10","10");
INSERT INTO esquemacontables VALUES("17","Viviendas para el personal","20","5");
INSERT INTO esquemacontables VALUES("18","Muebles y enseres en las viviendas para el pe","10","10");
INSERT INTO esquemacontables VALUES("19","Silos, alamcenes y galpones","20","5");
INSERT INTO esquemacontables VALUES("20","Tinglados y cobertizos de madera","5","20");
INSERT INTO esquemacontables VALUES("21","Tinglados y cobertizos de metal","10","10");
INSERT INTO esquemacontables VALUES("22","Instalaciones de electrifiacion y telefonia r","10","10");
INSERT INTO esquemacontables VALUES("23","Caminos interiores","10","10");
INSERT INTO esquemacontables VALUES("24","Vides","8","12.5");
INSERT INTO esquemacontables VALUES("25","Frutales","10","10");
INSERT INTO esquemacontables VALUES("26","Pozos petroleros","5","20");
INSERT INTO esquemacontables VALUES("27","Lineas de recoleccion de la industria petrole","5","20");
INSERT INTO esquemacontables VALUES("28","Plantas de procesamiento de la industria petr","8","12.5");
INSERT INTO esquemacontables VALUES("29","Ductos de la industria petrolera","10","10");
INSERT INTO esquemacontables VALUES("30","Equipos de campo de la industria petrolera","8","12.5");



DROP TABLE IF EXISTS gestiones;

CREATE TABLE `gestiones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fechaInicio` date NOT NULL,
  `fechaCierre` date NOT NULL,
  `activo` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




DROP TABLE IF EXISTS grupos;

CREATE TABLE `grupos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `codigo` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO grupos VALUES("1","PORTATILES","PORTATILES","PT");
INSERT INTO grupos VALUES("2","mesa","mesa de todo tipo","msa");
INSERT INTO grupos VALUES("3","vagonetas","vagonetas hlux toyota","vag");
INSERT INTO grupos VALUES("4","computadoras de escritorio","computadoras de escritorio, i3, i5, i7","cme001");



DROP TABLE IF EXISTS permission_role;

CREATE TABLE `permission_role` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_role_id_foreign` (`role_id`),
  KEY `permission_id` (`permission_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO permission_role VALUES("1","2");
INSERT INTO permission_role VALUES("1","3");



DROP TABLE IF EXISTS permissions;

CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

INSERT INTO permissions VALUES("1","user-create","user-create","user-create","2017-09-17 08:11:45","0000-00-00 00:00:00");



DROP TABLE IF EXISTS plancuenta;

CREATE TABLE `plancuenta` (
  `cuentas_id` int(11) NOT NULL,
  `gestiones_id` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cuentas_id`,`gestiones_id`),
  KEY `fk_cuentas_has_gestiones_gestiones1_idx` (`gestiones_id`),
  KEY `fk_cuentas_has_gestiones_cuentas1_idx` (`cuentas_id`),
  CONSTRAINT `fk_cuentas_has_gestiones_cuentas1` FOREIGN KEY (`cuentas_id`) REFERENCES `cuentas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_cuentas_has_gestiones_gestiones1` FOREIGN KEY (`gestiones_id`) REFERENCES `gestiones` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




DROP TABLE IF EXISTS proveedores;

CREATE TABLE `proveedores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `empresa` varchar(45) NOT NULL,
  `telefono` varchar(45) NOT NULL,
  `correo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO proveedores VALUES("1","Juan Jesus Montes","CYTEC srl","3344551","jesus@gmail.com");
INSERT INTO proveedores VALUES("2","Pedro Javier Cuasace","HiperTron","3425136","pedro.javier@gmail.com");



DROP TABLE IF EXISTS revaluotecnico;

CREATE TABLE `revaluotecnico` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `porcentajeDeVidaUtil` double DEFAULT NULL,
  `activos_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_revaluoTecnico_activos1_idx` (`activos_id`),
  CONSTRAINT `fk_revaluoTecnico_activos1` FOREIGN KEY (`activos_id`) REFERENCES `activos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




DROP TABLE IF EXISTS role_user;

CREATE TABLE `role_user` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_user_role_id_foreign` (`role_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO role_user VALUES("1","1");
INSERT INTO role_user VALUES("3","1");
INSERT INTO role_user VALUES("2","2");



DROP TABLE IF EXISTS roles;

CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

INSERT INTO roles VALUES("1","admin","administrador","administrador","2017-09-16 20:38:55","0000-00-00 00:00:00");
INSERT INTO roles VALUES("2","CONTADOR","AREA CONTABLE","EL CONTADOR DEL MES","2017-09-18 16:50:54","2017-09-18 16:50:54");
INSERT INTO roles VALUES("3","Dep. de activos fijos","departamento de activo fijo","Area de Activo Fijo, Donde se registran, asignacion de Responsable y se hacen los movimientos de los activos Fijos","2017-09-19 07:54:18","2017-09-19 07:54:18");



DROP TABLE IF EXISTS sucursales;

CREATE TABLE `sucursales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `direccion` varchar(200) NOT NULL,
  `empresas_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_sucursales_empresas1_idx` (`empresas_id`),
  CONSTRAINT `fk_sucursales_empresas1` FOREIGN KEY (`empresas_id`) REFERENCES `empresas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8;

INSERT INTO sucursales VALUES("101","central","Av. Roque Aguilera N° 27 Zona: Oeste","906");
INSERT INTO sucursales VALUES("102","central","Av. Roque Aguilera N° 27 Zona: Oeste","907");
INSERT INTO sucursales VALUES("103","central","Av. Roque Aguilera N° 27 Zona: Oeste","908");
INSERT INTO sucursales VALUES("104","central","Av. Roque Aguilera N° 27 Zona: Oeste","909");
INSERT INTO sucursales VALUES("105","villa 1ro de mayo","plaza principal de la villa 1ro de mayo","906");



DROP TABLE IF EXISTS telefonos;

CREATE TABLE `telefonos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numero` varchar(45) NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `empleados_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_telefonos_empleados1_idx` (`empleados_id`),
  CONSTRAINT `fk_telefonos_empleados1` FOREIGN KEY (`empleados_id`) REFERENCES `empleados` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=516 DEFAULT CHARSET=utf8;

INSERT INTO telefonos VALUES("216","+591-68689516","casa","107");
INSERT INTO telefonos VALUES("217","+591-64914331","casa","179");
INSERT INTO telefonos VALUES("218","3923478","casa","101");
INSERT INTO telefonos VALUES("219","+591-78778152","casa","153");
INSERT INTO telefonos VALUES("220","+591-64275042","casa","158");
INSERT INTO telefonos VALUES("221","+591-75705728","casa","143");
INSERT INTO telefonos VALUES("222","4690999","casa","144");
INSERT INTO telefonos VALUES("223","+591-78882692","casa","44");
INSERT INTO telefonos VALUES("224","+591-68310192","casa","166");
INSERT INTO telefonos VALUES("225","+591-62116603","casa","180");
INSERT INTO telefonos VALUES("226","4184451","casa","168");
INSERT INTO telefonos VALUES("227","4817378","casa","175");
INSERT INTO telefonos VALUES("228","4005859","casa","153");
INSERT INTO telefonos VALUES("229","4693683","casa","51");
INSERT INTO telefonos VALUES("230","3901795","casa","37");
INSERT INTO telefonos VALUES("231","+591-78435512","casa","197");
INSERT INTO telefonos VALUES("232","4515807","casa","80");
INSERT INTO telefonos VALUES("233","4214637","casa","119");
INSERT INTO telefonos VALUES("234","+591-70854441","casa","61");
INSERT INTO telefonos VALUES("235","3553374","casa","192");
INSERT INTO telefonos VALUES("236","+591-77891387","casa","114");
INSERT INTO telefonos VALUES("237","3412605","casa","188");
INSERT INTO telefonos VALUES("238","+591-76708477","casa","113");
INSERT INTO telefonos VALUES("239","3805642","casa","176");
INSERT INTO telefonos VALUES("240","3880659","casa","165");
INSERT INTO telefonos VALUES("241","2279096","casa","197");
INSERT INTO telefonos VALUES("242","4277808","casa","60");
INSERT INTO telefonos VALUES("243","3444418","casa","186");
INSERT INTO telefonos VALUES("244","+591-76216855","casa","72");
INSERT INTO telefonos VALUES("245","+591-79427384","casa","180");
INSERT INTO telefonos VALUES("246","+591-71954028","casa","133");
INSERT INTO telefonos VALUES("247","+591-77630120","casa","147");
INSERT INTO telefonos VALUES("248","+591-70592201","casa","99");
INSERT INTO telefonos VALUES("249","+591-63371453","casa","162");
INSERT INTO telefonos VALUES("250","2352072","casa","97");
INSERT INTO telefonos VALUES("251","+591-65807346","casa","83");
INSERT INTO telefonos VALUES("252","2824085","casa","193");
INSERT INTO telefonos VALUES("253","3495643","casa","188");
INSERT INTO telefonos VALUES("254","+591-72357198","casa","68");
INSERT INTO telefonos VALUES("255","+591-77897590","casa","166");
INSERT INTO telefonos VALUES("256","2677950","casa","98");
INSERT INTO telefonos VALUES("257","+591-71501763","casa","76");
INSERT INTO telefonos VALUES("258","+591-70582557","casa","129");
INSERT INTO telefonos VALUES("259","+591-67886552","casa","184");
INSERT INTO telefonos VALUES("260","2213475","casa","166");
INSERT INTO telefonos VALUES("261","4310206","casa","86");
INSERT INTO telefonos VALUES("262","+591-75150342","casa","98");
INSERT INTO telefonos VALUES("263","2053996","casa","55");
INSERT INTO telefonos VALUES("264","+591-64586052","casa","107");
INSERT INTO telefonos VALUES("265","+591-78919402","casa","164");
INSERT INTO telefonos VALUES("266","+591-68408099","casa","35");
INSERT INTO telefonos VALUES("267","3934489","casa","127");
INSERT INTO telefonos VALUES("268","+591-72100067","casa","115");
INSERT INTO telefonos VALUES("269","+591-68251412","casa","87");
INSERT INTO telefonos VALUES("270","2371638","casa","154");
INSERT INTO telefonos VALUES("271","3236427","casa","152");
INSERT INTO telefonos VALUES("272","3829216","casa","151");
INSERT INTO telefonos VALUES("273","+591-71692192","casa","185");
INSERT INTO telefonos VALUES("274","2332541","casa","160");
INSERT INTO telefonos VALUES("275","+591-76422372","casa","142");
INSERT INTO telefonos VALUES("276","+591-63201405","casa","198");
INSERT INTO telefonos VALUES("277","2108972","casa","72");
INSERT INTO telefonos VALUES("278","4638792","casa","95");
INSERT INTO telefonos VALUES("279","2497451","casa","194");
INSERT INTO telefonos VALUES("280","+591-62511075","casa","33");
INSERT INTO telefonos VALUES("281","3297602","casa","137");
INSERT INTO telefonos VALUES("282","3798628","casa","140");
INSERT INTO telefonos VALUES("283","4728571","casa","124");
INSERT INTO telefonos VALUES("284","3653293","casa","72");
INSERT INTO telefonos VALUES("285","4055766","casa","108");
INSERT INTO telefonos VALUES("286","+591-64501806","casa","163");
INSERT INTO telefonos VALUES("287","3793521","casa","112");
INSERT INTO telefonos VALUES("288","4737837","casa","160");
INSERT INTO telefonos VALUES("289","2574003","casa","120");
INSERT INTO telefonos VALUES("290","+591-68881891","casa","85");
INSERT INTO telefonos VALUES("291","4429932","casa","197");
INSERT INTO telefonos VALUES("292","4909966","casa","99");
INSERT INTO telefonos VALUES("293","+591-78555337","casa","83");
INSERT INTO telefonos VALUES("294","2868237","casa","126");
INSERT INTO telefonos VALUES("295","+591-75282240","casa","142");
INSERT INTO telefonos VALUES("296","2301463","casa","105");
INSERT INTO telefonos VALUES("297","4613970","casa","71");
INSERT INTO telefonos VALUES("298","2287961","casa","199");
INSERT INTO telefonos VALUES("299","+591-76275372","casa","96");
INSERT INTO telefonos VALUES("300","2849221","casa","169");
INSERT INTO telefonos VALUES("301","4583917","casa","61");
INSERT INTO telefonos VALUES("302","3687901","casa","100");
INSERT INTO telefonos VALUES("303","4874721","casa","196");
INSERT INTO telefonos VALUES("304","3342417","casa","92");
INSERT INTO telefonos VALUES("305","+591-75550135","casa","84");
INSERT INTO telefonos VALUES("306","+591-78482853","casa","81");
INSERT INTO telefonos VALUES("307","2080620","casa","117");
INSERT INTO telefonos VALUES("308","+591-67823057","casa","42");
INSERT INTO telefonos VALUES("309","+591-75510636","casa","166");
INSERT INTO telefonos VALUES("310","4747987","casa","67");
INSERT INTO telefonos VALUES("311","3199197","casa","80");
INSERT INTO telefonos VALUES("312","+591-62004096","casa","166");
INSERT INTO telefonos VALUES("313","4770751","casa","123");
INSERT INTO telefonos VALUES("314","2939487","casa","102");
INSERT INTO telefonos VALUES("315","4489908","casa","32");
INSERT INTO telefonos VALUES("316","3085688","casa","195");
INSERT INTO telefonos VALUES("317","4726503","casa","180");
INSERT INTO telefonos VALUES("318","+591-63496707","casa","45");
INSERT INTO telefonos VALUES("319","+591-72342157","casa","190");
INSERT INTO telefonos VALUES("320","4580025","casa","161");
INSERT INTO telefonos VALUES("321","3568954","casa","92");
INSERT INTO telefonos VALUES("322","2971745","casa","106");
INSERT INTO telefonos VALUES("323","4188832","casa","36");
INSERT INTO telefonos VALUES("324","+591-73616823","casa","81");
INSERT INTO telefonos VALUES("325","+591-63316248","casa","195");
INSERT INTO telefonos VALUES("326","+591-78159659","casa","115");
INSERT INTO telefonos VALUES("327","+591-73011730","casa","132");
INSERT INTO telefonos VALUES("328","4606079","casa","31");
INSERT INTO telefonos VALUES("329","+591-76118452","casa","74");
INSERT INTO telefonos VALUES("330","+591-77327436","casa","200");
INSERT INTO telefonos VALUES("331","+591-71955712","casa","202");
INSERT INTO telefonos VALUES("332","2118864","casa","44");
INSERT INTO telefonos VALUES("333","+591-65489492","casa","35");
INSERT INTO telefonos VALUES("334","2735086","casa","111");
INSERT INTO telefonos VALUES("335","3632945","casa","81");
INSERT INTO telefonos VALUES("336","+591-67080753","casa","103");
INSERT INTO telefonos VALUES("337","+591-71035329","casa","174");
INSERT INTO telefonos VALUES("338","4518343","casa","217");
INSERT INTO telefonos VALUES("339","2460973","casa","100");
INSERT INTO telefonos VALUES("340","2342011","casa","96");
INSERT INTO telefonos VALUES("341","+591-63802160","casa","35");
INSERT INTO telefonos VALUES("342","3033508","casa","53");
INSERT INTO telefonos VALUES("343","+591-60411758","casa","163");
INSERT INTO telefonos VALUES("344","+591-67798589","casa","86");
INSERT INTO telefonos VALUES("345","3521810","casa","84");
INSERT INTO telefonos VALUES("346","+591-68572116","casa","194");
INSERT INTO telefonos VALUES("347","2631891","casa","85");
INSERT INTO telefonos VALUES("348","2409256","casa","197");
INSERT INTO telefonos VALUES("349","4888962","casa","152");
INSERT INTO telefonos VALUES("350","+591-67175882","casa","100");
INSERT INTO telefonos VALUES("351","3775847","casa","229");
INSERT INTO telefonos VALUES("352","+591-77984359","casa","198");
INSERT INTO telefonos VALUES("353","2336674","casa","207");
INSERT INTO telefonos VALUES("354","3517948","casa","158");
INSERT INTO telefonos VALUES("355","4669164","casa","137");
INSERT INTO telefonos VALUES("356","4694606","casa","42");
INSERT INTO telefonos VALUES("357","3854150","casa","61");
INSERT INTO telefonos VALUES("358","+591-79995606","casa","79");
INSERT INTO telefonos VALUES("359","3915778","casa","225");
INSERT INTO telefonos VALUES("360","4442935","casa","155");
INSERT INTO telefonos VALUES("361","+591-60165448","casa","41");
INSERT INTO telefonos VALUES("362","+591-73430187","casa","106");
INSERT INTO telefonos VALUES("363","+591-61726227","casa","54");
INSERT INTO telefonos VALUES("364","4972289","casa","115");
INSERT INTO telefonos VALUES("365","+591-74679559","casa","122");
INSERT INTO telefonos VALUES("366","+591-77752617","casa","45");
INSERT INTO telefonos VALUES("367","2806063","casa","106");
INSERT INTO telefonos VALUES("368","4546739","casa","195");
INSERT INTO telefonos VALUES("369","4076632","casa","105");
INSERT INTO telefonos VALUES("370","+591-76204721","casa","225");
INSERT INTO telefonos VALUES("371","2568530","casa","108");
INSERT INTO telefonos VALUES("372","2395541","casa","170");
INSERT INTO telefonos VALUES("373","4139220","casa","141");
INSERT INTO telefonos VALUES("374","3408311","casa","161");
INSERT INTO telefonos VALUES("375","+591-78854346","casa","128");
INSERT INTO telefonos VALUES("376","3394055","casa","126");
INSERT INTO telefonos VALUES("377","+591-75421796","casa","108");
INSERT INTO telefonos VALUES("378","4819710","casa","67");
INSERT INTO telefonos VALUES("379","+591-65159194","casa","124");
INSERT INTO telefonos VALUES("380","3500417","casa","168");
INSERT INTO telefonos VALUES("381","3762871","casa","145");
INSERT INTO telefonos VALUES("382","2248692","casa","224");
INSERT INTO telefonos VALUES("383","+591-60943224","casa","82");
INSERT INTO telefonos VALUES("384","2993391","casa","52");
INSERT INTO telefonos VALUES("385","2099930","casa","183");
INSERT INTO telefonos VALUES("386","+591-63309258","casa","92");
INSERT INTO telefonos VALUES("387","4460205","casa","105");
INSERT INTO telefonos VALUES("388","3832666","casa","214");
INSERT INTO telefonos VALUES("389","+591-61073219","casa","224");
INSERT INTO telefonos VALUES("390","+591-74947616","casa","84");
INSERT INTO telefonos VALUES("391","+591-63053749","casa","188");
INSERT INTO telefonos VALUES("392","4052644","casa","98");
INSERT INTO telefonos VALUES("393","+591-71820767","casa","146");
INSERT INTO telefonos VALUES("394","2709793","casa","84");
INSERT INTO telefonos VALUES("395","+591-69238216","casa","170");
INSERT INTO telefonos VALUES("396","+591-65679039","casa","93");
INSERT INTO telefonos VALUES("397","3451134","casa","98");
INSERT INTO telefonos VALUES("398","2039586","casa","36");
INSERT INTO telefonos VALUES("399","4295379","casa","62");
INSERT INTO telefonos VALUES("400","+591-78649875","casa","192");
INSERT INTO telefonos VALUES("401","+591-60204771","casa","97");
INSERT INTO telefonos VALUES("402","4860030","casa","101");
INSERT INTO telefonos VALUES("403","4193711","casa","143");
INSERT INTO telefonos VALUES("404","3322533","casa","33");
INSERT INTO telefonos VALUES("405","3521279","casa","151");
INSERT INTO telefonos VALUES("406","+591-61609597","casa","50");
INSERT INTO telefonos VALUES("407","4838996","casa","211");
INSERT INTO telefonos VALUES("408","2479156","casa","100");
INSERT INTO telefonos VALUES("409","+591-76407582","casa","79");
INSERT INTO telefonos VALUES("410","4698500","casa","211");
INSERT INTO telefonos VALUES("411","2411443","casa","228");
INSERT INTO telefonos VALUES("412","+591-64060594","casa","138");
INSERT INTO telefonos VALUES("413","3865824","casa","133");
INSERT INTO telefonos VALUES("414","4578155","casa","193");
INSERT INTO telefonos VALUES("415","+591-70134144","casa","55");
INSERT INTO telefonos VALUES("416","3877902","casa","8");
INSERT INTO telefonos VALUES("417","4448072","casa","7");
INSERT INTO telefonos VALUES("418","2406035","casa","7");
INSERT INTO telefonos VALUES("419","2538416","casa","8");
INSERT INTO telefonos VALUES("420","+591-75030287","casa","8");
INSERT INTO telefonos VALUES("421","2461740","casa","5");
INSERT INTO telefonos VALUES("422","4387704","casa","4");
INSERT INTO telefonos VALUES("423","2949194","casa","7");
INSERT INTO telefonos VALUES("424","2304940","casa","1");
INSERT INTO telefonos VALUES("425","3794458","casa","3");
INSERT INTO telefonos VALUES("426","4120778","casa","4");
INSERT INTO telefonos VALUES("427","4582044","casa","8");
INSERT INTO telefonos VALUES("428","2431227","casa","1");
INSERT INTO telefonos VALUES("429","2712723","casa","9");
INSERT INTO telefonos VALUES("430","2304671","casa","3");
INSERT INTO telefonos VALUES("431","+591-69087354","casa","8");
INSERT INTO telefonos VALUES("432","2343475","casa","4");
INSERT INTO telefonos VALUES("433","+591-63946026","casa","3");
INSERT INTO telefonos VALUES("434","4397372","casa","8");
INSERT INTO telefonos VALUES("435","+591-64836859","casa","6");
INSERT INTO telefonos VALUES("436","+591-72832219","casa","1");
INSERT INTO telefonos VALUES("437","2534046","casa","4");
INSERT INTO telefonos VALUES("438","4934932","casa","7");
INSERT INTO telefonos VALUES("439","+591-72027645","casa","2");
INSERT INTO telefonos VALUES("440","+591-77211956","casa","9");
INSERT INTO telefonos VALUES("441","2893090","casa","1");
INSERT INTO telefonos VALUES("442","4266707","casa","6");
INSERT INTO telefonos VALUES("443","+591-61465927","casa","5");
INSERT INTO telefonos VALUES("444","2414602","casa","2");
INSERT INTO telefonos VALUES("445","+591-61304244","casa","1");
INSERT INTO telefonos VALUES("446","+591-78264164","casa","2");
INSERT INTO telefonos VALUES("447","3597433","casa","3");
INSERT INTO telefonos VALUES("448","3573321","casa","5");
INSERT INTO telefonos VALUES("449","+591-60077516","casa","9");
INSERT INTO telefonos VALUES("450","3582606","casa","1");
INSERT INTO telefonos VALUES("451","3799946","casa","5");
INSERT INTO telefonos VALUES("452","3768394","casa","9");
INSERT INTO telefonos VALUES("453","+591-67271691","casa","7");
INSERT INTO telefonos VALUES("454","+591-71134287","casa","2");
INSERT INTO telefonos VALUES("455","+591-63340005","casa","7");
INSERT INTO telefonos VALUES("456","3233178","casa","4");
INSERT INTO telefonos VALUES("457","3435986","casa","7");
INSERT INTO telefonos VALUES("458","4040284","casa","3");
INSERT INTO telefonos VALUES("459","2935733","casa","4");
INSERT INTO telefonos VALUES("460","+591-64040895","casa","1");
INSERT INTO telefonos VALUES("461","+591-72337629","casa","8");
INSERT INTO telefonos VALUES("462","+591-67210241","casa","5");
INSERT INTO telefonos VALUES("463","+591-74242557","casa","7");
INSERT INTO telefonos VALUES("464","3667076","casa","2");
INSERT INTO telefonos VALUES("465","4411293","casa","1");
INSERT INTO telefonos VALUES("466","2021408","casa","3");
INSERT INTO telefonos VALUES("467","3686695","casa","2");
INSERT INTO telefonos VALUES("468","+591-66821889","casa","6");
INSERT INTO telefonos VALUES("469","+591-76335191","casa","8");
INSERT INTO telefonos VALUES("470","+591-76041583","casa","1");
INSERT INTO telefonos VALUES("471","+591-79697886","casa","4");
INSERT INTO telefonos VALUES("472","3030501","casa","2");
INSERT INTO telefonos VALUES("473","2953724","casa","5");
INSERT INTO telefonos VALUES("474","2488837","casa","1");
INSERT INTO telefonos VALUES("475","2806331","casa","5");
INSERT INTO telefonos VALUES("476","+591-64546476","casa","7");
INSERT INTO telefonos VALUES("477","+591-76868957","casa","4");
INSERT INTO telefonos VALUES("478","4844680","casa","7");
INSERT INTO telefonos VALUES("479","4765068","casa","6");
INSERT INTO telefonos VALUES("480","2871162","casa","1");
INSERT INTO telefonos VALUES("481","+591-76972073","casa","7");
INSERT INTO telefonos VALUES("482","2251069","casa","2");
INSERT INTO telefonos VALUES("483","4406317","casa","1");
INSERT INTO telefonos VALUES("484","+591-67434235","casa","9");
INSERT INTO telefonos VALUES("485","4229131","casa","1");
INSERT INTO telefonos VALUES("486","3135752","casa","8");
INSERT INTO telefonos VALUES("487","3960089","casa","9");
INSERT INTO telefonos VALUES("488","+591-67093294","casa","5");
INSERT INTO telefonos VALUES("489","+591-66203933","casa","3");
INSERT INTO telefonos VALUES("490","2486271","casa","2");
INSERT INTO telefonos VALUES("491","+591-68552818","casa","6");
INSERT INTO telefonos VALUES("492","+591-62734353","casa","8");
INSERT INTO telefonos VALUES("493","+591-66030508","casa","3");
INSERT INTO telefonos VALUES("494","2719067","casa","3");
INSERT INTO telefonos VALUES("495","4085695","casa","4");
INSERT INTO telefonos VALUES("496","2052487","casa","5");
INSERT INTO telefonos VALUES("497","+591-78659225","casa","7");
INSERT INTO telefonos VALUES("498","4263779","casa","6");
INSERT INTO telefonos VALUES("499","+591-64033266","casa","4");
INSERT INTO telefonos VALUES("500","3621316","casa","2");
INSERT INTO telefonos VALUES("501","2820803","casa","4");
INSERT INTO telefonos VALUES("502","2219222","casa","9");
INSERT INTO telefonos VALUES("503","+591-73701750","casa","3");
INSERT INTO telefonos VALUES("504","+591-76805892","casa","8");
INSERT INTO telefonos VALUES("505","2395764","casa","3");
INSERT INTO telefonos VALUES("506","+591-71302650","casa","7");
INSERT INTO telefonos VALUES("507","2321052","casa","8");
INSERT INTO telefonos VALUES("508","2150785","casa","2");
INSERT INTO telefonos VALUES("509","+591-65161815","casa","9");
INSERT INTO telefonos VALUES("510","2596301","casa","8");
INSERT INTO telefonos VALUES("511","+591-65386012","casa","1");
INSERT INTO telefonos VALUES("512","3195962","casa","2");
INSERT INTO telefonos VALUES("513","4016277","casa","6");
INSERT INTO telefonos VALUES("514","3856331","casa","2");
INSERT INTO telefonos VALUES("515","+591-77934205","casa","1");



DROP TABLE IF EXISTS tipodecambio;

CREATE TABLE `tipodecambio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `valor` double NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `fecha_UNIQUE` (`fecha`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

INSERT INTO tipodecambio VALUES("1","6.96","0000-00-00");
INSERT INTO tipodecambio VALUES("2","2.345","2017-09-10");
INSERT INTO tipodecambio VALUES("7","2.123","2017-09-16");
INSERT INTO tipodecambio VALUES("8","2.2156","2017-09-18");



DROP TABLE IF EXISTS transferencias;

CREATE TABLE `transferencias` (
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




DROP TABLE IF EXISTS users;

CREATE TABLE `users` (
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

INSERT INTO users VALUES("1","javier","javier.navia.033@gmail.com","$2y$10$6JleMEDZwYd0VKR4AimVmOZbE8cJrVEOlYyl9EKIDicVKZ9/E7VUy","1","1","irN2evzlsS85onlGmcWxCfjnZOVwrHcMyU5GfZcpOw934chw3y58PU2dnge3","2017-09-19 07:47:47","2017-09-19 07:47:47");
INSERT INTO users VALUES("2","Soledad Barea","SOLEDAD@GMAIL.COM","$2y$10$uKZnvcGU2eh5l4r3wobqgetpO5aby0.FDvKh9B3pXqHPE6frc7CTi","1","1","mCmSeq2KayABRai2Oaa4gRdRkUTsXPJ5oz5Z3MMxxrigTxSU09bhCAD9hgh4","2017-09-19 07:58:31","2017-09-19 07:58:31");
INSERT INTO users VALUES("3","LUIS","LUIS.VALLEJOS@FINNING.COM","$2y$10$HGsKy4oqFmgegrLyRHVX4.jw4W6/5wdz5h5ygOBz9GkMS8bzTi.sO","0","1","","2017-09-18 16:49:19","2017-09-18 16:49:19");



DROP TABLE IF EXISTS ventasdeactivos;

CREATE TABLE `ventasdeactivos` (
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




DROP TABLE IF EXISTS view_activos;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_activos` AS select `activos`.`codigo` AS `codigo`,`activos`.`descripcion` AS `descripcion`,`activos`.`valoradquirido` AS `precio`,`activos`.`moneda` AS `moneda`,`activos`.`fechaCompra` AS `fechaCompra`,`activos`.`calificacion` AS `calificacion`,`areas`.`nombre` AS `area`,`proveedores`.`empresa` AS `empresa`,`proveedores`.`nombre` AS `nombre_proveedor`,`grupos`.`nombre` AS `grupo` from (((`activos` join `areas` on((`areas`.`id` = `activos`.`areas_id`))) join `proveedores` on((`activos`.`proveedores_id` = `proveedores`.`id`))) join `grupos` on((`activos`.`grupos_id` = `grupos`.`id`)));

INSERT INTO view_activos VALUES("11111111111","computadora de escritorio","500","dolares","2017-09-17","nuevo","almacen","CYTEC srl","Juan Jesus Montes","PORTATILES");
INSERT INTO view_activos VALUES("0","sdgsg","7845","BOLIVIANOS","2017-09-19","NUEVO","area 3","CYTEC srl","Juan Jesus Montes","PORTATILES");
INSERT INTO view_activos VALUES("PT/2017-09-190000000006","45","12","BOLIVIANOS","2017-09-19","NUEVO","area 3","CYTEC srl","Juan Jesus Montes","PORTATILES");
INSERT INTO view_activos VALUES("PT/2017-09-190000000007","portatil","5412.14","BOLIVIANOS","2017-09-19","NUEVO","area 3","CYTEC srl","Juan Jesus Montes","PORTATILES");
INSERT INTO view_activos VALUES("PT|2017-09-19|0000000008","portisd","456","BOLIVIANOS","2017-09-19","NUEVO","area 3","CYTEC srl","Juan Jesus Montes","PORTATILES");
INSERT INTO view_activos VALUES("msa|2017-09-19|0000000009","mesa redonda","1300","BOLIVIANOS","2017-09-19","MALO","area 8","HiperTron","Pedro Javier Cuasace","mesa");



SET FOREIGN_KEY_CHECKS=1;