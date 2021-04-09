-- phpMyAdmin SQL Dump
-- version 2.10.2
-- http://www.phpmyadmin.net
-- 
-- Servidor: localhost
-- Tiempo de generación: 20-02-2016 a las 12:33:14
-- Versión del servidor: 5.0.45
-- Versión de PHP: 5.2.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Base de datos: `telecom`
-- 

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `contacto`
-- 

CREATE TABLE `contacto` (
  `IdContacto` int(3) NOT NULL auto_increment,
  `Nombre` varchar(70) collate latin1_spanish_ci NOT NULL,
  `Telefono` varchar(10) collate latin1_spanish_ci NOT NULL,
  `Correo` varchar(70) collate latin1_spanish_ci NOT NULL,
  `Mensaje` varchar(255) collate latin1_spanish_ci NOT NULL,
  `FechaRecibido` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`IdContacto`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci AUTO_INCREMENT=3 ;

-- 
-- Volcar la base de datos para la tabla `contacto`
-- 

INSERT INTO `contacto` VALUES (1, 'PRUEBA', '1111111111', 'pru@p.com', 'MENSAJE DE PRUEBA.', '2016-02-20 01:33:21');
INSERT INTO `contacto` VALUES (2, 'PRUEBA DESDE PAGINA', '2222222222', 'prub@2.com', 'MENSAJE DE PRUEBA DESDE PAGINA.', '2016-02-20 01:34:45');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `directorio`
-- 

CREATE TABLE `directorio` (
  `IdDir` int(3) NOT NULL auto_increment,
  `Linea` varchar(10) NOT NULL,
  `Extension` varchar(5) NOT NULL,
  `Area` varchar(55) NOT NULL,
  `Personal` varchar(255) NOT NULL,
  PRIMARY KEY  (`IdDir`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

-- 
-- Volcar la base de datos para la tabla `directorio`
-- 

INSERT INTO `directorio` VALUES (1, '9163458101', '29100', 'SUPERINTENDENCIA', 'SUPERINTENDENTE');
INSERT INTO `directorio` VALUES (2, '9163458101', '29101', 'SUPERINTENDENCIA', 'SEC.  SUPCIA.');
INSERT INTO `directorio` VALUES (3, '9163458101', '29104', 'SUPERINTENDENCIA', 'SALA DE JUNTAS');
INSERT INTO `directorio` VALUES (4, '9163458101', '29198', 'SUPERINTENDENCIA', 'FAX SUPTCIA. ZONA');
INSERT INTO `directorio` VALUES (5, '9163458107', '29105', 'JURIDICO', 'DEPARTAMENTO JURIDICO');
INSERT INTO `directorio` VALUES (6, '9163458112', '29900', 'JURIDICO', 'OFNA. CSC');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `usuarios`
-- 

CREATE TABLE `usuarios` (
  `IdUsuario` int(3) NOT NULL auto_increment,
  `Nivel` varchar(15) collate latin1_spanish_ci NOT NULL default 'tecnico',
  `NUsuario` varchar(10) collate latin1_spanish_ci NOT NULL,
  `Password` varchar(30) collate latin1_spanish_ci NOT NULL,
  `Activo` varchar(2) collate latin1_spanish_ci NOT NULL default 'si',
  PRIMARY KEY  (`IdUsuario`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci AUTO_INCREMENT=3 ;

-- 
-- Volcar la base de datos para la tabla `usuarios`
-- 

INSERT INTO `usuarios` VALUES (1, 'admin', 'admin', 'admin', 'si');
INSERT INTO `usuarios` VALUES (2, 'tecnico', 'tecnico', 'tecnico', 'si');
