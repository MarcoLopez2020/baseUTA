-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 27-02-2024 a las 14:57:58
-- Versión del servidor: 8.0.32
-- Versión de PHP: 8.1.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `horarios`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividades`
--

CREATE TABLE `actividades` (
  `id` bigint UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nivel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'No Aplica',
  `numero_nivel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `carrera_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `actividades`
--

INSERT INTO `actividades` (`id`, `nombre`, `nivel`, `numero_nivel`, `carrera_id`, `created_at`, `updated_at`) VALUES
(1, '﻿CÁLCULO DE UNA VARIABLE ', 'Primero', '1', 2, '2023-09-20 23:14:10', '2023-09-20 23:14:10'),
(2, 'METODOLOGÍA DE LA INVESTIGACIÓN', 'Primero', '1', 2, '2023-09-20 23:14:10', '2023-09-20 23:14:10'),
(3, 'FÍSICA BÁSICA', 'Primero', '1', 2, '2023-09-20 23:14:10', '2023-09-20 23:14:10'),
(4, 'ALGEBRA LINEAL', 'Primero', '1', 2, '2023-09-20 23:14:10', '2023-09-20 23:14:10'),
(5, 'TECNOLOGÍAS DE LA INFORMACIÓN Y  COMUNICACIÓN (TIC)', 'Primero', '1', 2, '2023-09-20 23:14:11', '2023-09-20 23:14:11'),
(6, 'QUÍMICA', 'Primero', '1', 2, '2023-09-20 23:14:11', '2023-09-20 23:14:11'),
(7, 'CÁLCULO DE VARIAS VARIABLES', 'Segundo', '2', 2, '2023-09-20 23:14:11', '2023-09-20 23:14:11'),
(8, 'FÍSICA APLICADA', 'Segundo', '2', 2, '2023-09-20 23:14:11', '2023-09-20 23:14:11'),
(9, 'FUNDAMENTOS DE PROGRAMACIÓN', 'Segundo', '2', 2, '2023-09-20 23:14:11', '2023-09-20 23:14:11'),
(10, 'BASE DE DATOS', 'Segundo', '2', 2, '2023-09-20 23:14:11', '2023-09-20 23:14:11'),
(11, 'EVOLUCIÓN DE LAS TELECOMUNICACIONES', 'Segundo', '2', 2, '2023-09-20 23:14:11', '2023-09-20 23:14:11'),
(12, 'GESTIÓN DE CALIDAD', 'Segundo', '2', 2, '2023-09-20 23:14:11', '2023-09-20 23:14:11'),
(13, 'FÍSICA PARA ELECTRÓNICA', 'Tercero', '3', 2, '2023-09-20 23:14:11', '2023-09-20 23:14:11'),
(14, 'ECUACIONES DIFERENCIALES', 'Tercero', '3', 2, '2023-09-20 23:14:11', '2023-09-20 23:14:11'),
(15, 'PROBABILIDAD Y ESTADÍSTICA', 'Tercero', '3', 2, '2023-09-20 23:14:11', '2023-09-20 23:14:11'),
(16, 'DISPOSITIVOS Y MEDIDAS ', 'Tercero', '3', 2, '2023-09-20 23:14:11', '2023-09-20 23:14:11'),
(17, 'PROGRAMACIÓN AVANZADA', 'Tercero', '3', 2, '2023-09-20 23:14:11', '2023-09-20 23:14:11'),
(18, 'MÉTODOS NUMÉRICOS', 'Tercero', '3', 2, '2023-09-20 23:14:11', '2023-09-20 23:14:11'),
(19, 'SISTEMAS LINEALES', 'Cuarto', '4', 2, '2023-09-20 23:14:11', '2023-09-20 23:14:11'),
(20, 'ANÁLISIS DE CIRCUITOS', 'Cuarto', '4', 2, '2023-09-20 23:14:11', '2023-09-20 23:14:11'),
(21, 'SOFTWARE DE SIMULACIÓN', 'Cuarto', '4', 2, '2023-09-20 23:14:12', '2023-09-20 23:14:12'),
(22, 'ELECTROMAGNETISMO', 'Cuarto', '4', 2, '2023-09-20 23:14:12', '2023-09-20 23:14:12'),
(23, 'SISTEMAS DIGITALES', 'Cuarto', '4', 2, '2023-09-20 23:14:12', '2023-09-20 23:14:12'),
(24, 'PRACTICAS DE SERVICIO COMUNITARIO', 'Quinto', '5', 2, '2023-09-20 23:14:12', '2023-09-20 23:14:12'),
(25, 'CIRCUITOS ELECTRÓNICOS', 'Quinto', '5', 2, '2023-09-20 23:14:12', '2023-09-20 23:14:12'),
(26, 'PROCESOS ESTOCÁSTICOS', 'Quinto', '5', 2, '2023-09-20 23:14:12', '2023-09-20 23:14:12'),
(27, 'REALIDAD NACIONAL', 'Quinto', '5', 2, '2023-09-20 23:14:12', '2023-09-20 23:14:12'),
(28, 'SISTEMAS EMBEBIDOS (VLSI)', 'Quinto', '5', 2, '2023-09-20 23:14:12', '2023-09-20 23:14:12'),
(29, 'LEGISLACIÓN LABORAL ', 'Quinto', '5', 2, '2023-09-20 23:14:12', '2023-09-20 23:14:12'),
(30, 'COMUNICACIÓN ANALÓGICA', 'Sexto', '6', 2, '2023-09-20 23:14:12', '2023-09-20 23:14:12'),
(31, 'LÍNEAS DE TRANSMISIÓN', 'Sexto', '6', 2, '2023-09-20 23:14:12', '2023-09-20 23:14:12'),
(32, 'PROCESAMIENTO DIGITAL DE SEÑALES E IMÁGENES', 'Sexto', '6', 2, '2023-09-20 23:14:12', '2023-09-20 23:14:12'),
(33, 'PROYECTOS DE TELECOMUNICACIONES ', 'Sexto', '6', 2, '2023-09-20 23:14:12', '2023-09-20 23:14:12'),
(34, 'REDES DE DATOS', 'Sexto', '6', 2, '2023-09-20 23:14:12', '2023-09-20 23:14:12'),
(35, 'SISTEMAS DE TELEFONÍA ', 'Sexto', '6', 2, '2023-09-20 23:14:12', '2023-09-20 23:14:12'),
(36, 'PRÁCTICAS LABORALES ', 'Septimo', '7', 2, '2023-09-20 23:14:12', '2023-09-20 23:14:12'),
(37, 'COMUNICACIÓN DIGITAL', 'Septimo', '7', 2, '2023-09-20 23:14:12', '2023-09-20 23:14:12'),
(38, 'CIRCUITOS RF', 'Septimo', '7', 2, '2023-09-20 23:14:12', '2023-09-20 23:14:12'),
(39, 'PROPAGACIÓN Y ANTENAS ', 'Septimo', '7', 2, '2023-09-20 23:14:12', '2023-09-20 23:14:12'),
(40, 'CONMUTACIÓN Y ENRUTAMIENTO DE REDES', 'Septimo', '7', 2, '2023-09-20 23:14:13', '2023-09-20 23:14:13'),
(41, 'SISTEMAS INALÁMBRICOS', 'Octavo', '8', 2, '2023-09-20 23:14:13', '2023-09-20 23:14:13'),
(42, ' COMUNICACIONES MÓVILES', 'Octavo', '8', 2, '2023-09-20 23:14:13', '2023-09-20 23:14:13'),
(43, 'COMUNICACIONES ÓPTICAS', 'Octavo', '8', 2, '2023-09-20 23:14:13', '2023-09-20 23:14:13'),
(44, 'TELEVISIÓN DIGITAL', 'Octavo', '8', 2, '2023-09-20 23:14:13', '2023-09-20 23:14:13'),
(45, 'SISTEMAS SATELITALES Y GPS', 'Octavo', '8', 2, '2023-09-20 23:14:13', '2023-09-20 23:14:13'),
(46, 'COMUNICACIONES AVANZADAS', 'Octavo', '8', 2, '2023-09-20 23:14:13', '2023-09-20 23:14:13'),
(47, 'DISEÑO DE PROYECTOS', 'Octavo', '8', 2, '2023-09-20 23:14:13', '2023-09-20 23:14:13'),
(48, 'TITULACIÓN', 'Noveno', '9', 2, '2023-09-20 23:14:13', '2023-09-20 23:14:13'),
(49, 'DESARROLLO DE PROYECTOS', 'Noveno', '9', 2, '2023-09-20 23:14:13', '2023-09-20 23:14:13'),
(50, 'QUÍMICA', 'Primero', '1', 3, '2023-09-20 23:14:13', '2023-09-20 23:14:13'),
(51, 'FÍSICA BÁSICA', 'Primero', '1', 3, '2023-09-20 23:14:13', '2023-09-20 23:14:13'),
(52, 'ÁLGEBRA', 'Primero', '1', 3, '2023-09-20 23:14:13', '2023-09-20 23:14:13'),
(53, 'NTRODUCCIÓN A LA INGENIERÍA INDUSTRIAL', 'Primero', '1', 3, '2023-09-20 23:14:13', '2023-09-20 23:14:13'),
(54, 'LÓGICA MATEMÁTICA', 'Primero', '1', 3, '2023-09-20 23:14:13', '2023-09-20 23:14:13'),
(55, 'TECNOLOGÍAS DE LA INFORMACIÓN Y DE LA COMUNICACIÓN (TIC)', 'Primero', '1', 3, '2023-09-20 23:14:13', '2023-09-20 23:14:13'),
(56, 'METODOLOGÍA DE LA INVESTIGACIÓN', 'Segundo', '2', 3, '2023-09-20 23:14:13', '2023-09-20 23:14:13'),
(57, 'FÍSICA APLICADA', 'Segundo', '2', 3, '2023-09-20 23:14:14', '2023-09-20 23:14:14'),
(58, 'ÁLGEBRA LINEAL', 'Segundo', '2', 3, '2023-09-20 23:14:14', '2023-09-20 23:14:14'),
(59, 'CÁLCULO DIFERENCIAL', 'Segundo', '2', 3, '2023-09-20 23:14:14', '2023-09-20 23:14:14'),
(60, 'REALIDAD NACIONAL', 'Segundo', '2', 3, '2023-09-20 23:14:14', '2023-09-20 23:14:14'),
(61, 'PROGRAMACIÓN', 'Segundo', '2', 3, '2023-09-20 23:14:14', '2023-09-20 23:14:14'),
(62, 'TERMODINÁMICA', 'Tercero', '3', 3, '2023-09-20 23:14:14', '2023-09-20 23:14:14'),
(63, 'ELECTRÓNICA Y ELECTRICIDAD', 'Tercero', '3', 3, '2023-09-20 23:14:14', '2023-09-20 23:14:14'),
(64, 'INVESTIGACIÓN DE OPERACIONES', 'Tercero', '3', 3, '2023-09-20 23:14:14', '2023-09-20 23:14:14'),
(65, 'CÁLCULO INTEGRAL', 'Tercero', '3', 3, '2023-09-20 23:14:14', '2023-09-20 23:14:14'),
(66, 'TECNOLOGÍA DE MATERIALES', 'Tercero', '3', 3, '2023-09-20 23:14:14', '2023-09-20 23:14:14'),
(67, 'ESTADÍSTICAS Y PROBABILIDADES', 'Tercero', '3', 3, '2023-09-20 23:14:14', '2023-09-20 23:14:14'),
(68, 'OPERACIONES UNITARIAS', 'Cuarto', '4', 3, '2023-09-20 23:14:14', '2023-09-20 23:14:14'),
(69, 'MÁQUINAS ELÉCTRICAS', 'Cuarto', '4', 3, '2023-09-20 23:14:14', '2023-09-20 23:14:14'),
(70, 'SEGURIDAD INDUSTRIAL', 'Cuarto', '4', 3, '2023-09-20 23:14:14', '2023-09-20 23:14:14'),
(71, 'CONTABILIDAD Y COSTOS INDUSTRIALES', 'Cuarto', '4', 3, '2023-09-20 23:14:14', '2023-09-20 23:14:14'),
(72, 'DIBUJO ASISTIDO POR COMPUTADOR', 'Cuarto', '4', 3, '2023-09-20 23:14:14', '2023-09-20 23:14:14'),
(73, 'INGENIERÍA DE MÉTODOS', 'Cuarto', '4', 3, '2023-09-20 23:14:14', '2023-09-20 23:14:14'),
(74, 'GESTIÓN DE OPERACIONES', 'Quinto', '5', 3, '2023-09-20 23:14:14', '2023-09-20 23:14:14'),
(75, 'NSTRUMENTACIÓN INDUSTRIAL', 'Quinto', '5', 3, '2023-09-20 23:14:15', '2023-09-20 23:14:15'),
(76, 'ERGONOMÍA', 'Quinto', '5', 3, '2023-09-20 23:14:15', '2023-09-20 23:14:15'),
(77, 'PROCESOS INDUSTRIALES', 'Quinto', '5', 3, '2023-09-20 23:14:15', '2023-09-20 23:14:15'),
(78, 'MÁQUINAS HERRAMIENTAS', 'Quinto', '5', 3, '2023-09-20 23:14:15', '2023-09-20 23:14:15'),
(79, 'MÁQUINAS HERRAMIENTAS', 'Quinto', '5', 3, '2023-09-20 23:14:15', '2023-09-20 23:14:15'),
(80, 'DISEÑO Y ORGANIZACIÓN DE PLANTAS', 'Sexto', '6', 3, '2023-09-20 23:14:15', '2023-09-20 23:14:15'),
(81, 'CONTROL NEUMÁTICO Y OLEOHIDRÁULICA', 'Sexto', '6', 3, '2023-09-20 23:14:15', '2023-09-20 23:14:15'),
(82, 'HIGIENE INDUSTRIAL', 'Sexto', '6', 3, '2023-09-20 23:14:15', '2023-09-20 23:14:15'),
(83, 'GESTIÓN POR PROCESOS', 'Sexto', '6', 3, '2023-09-20 23:14:15', '2023-09-20 23:14:15'),
(84, 'SISTEMAS CAD/CAM', 'Sexto', '6', 3, '2023-09-20 23:14:15', '2023-09-20 23:14:15'),
(85, 'GESTIÓN AMBIENTAL Y ENERGÍAS ALTERNATIVAS', 'Sexto', '6', 3, '2023-09-20 23:14:15', '2023-09-20 23:14:15'),
(86, 'PRÁCTICAS LABORALES', 'Septimo', '7', 3, '2023-09-20 23:14:15', '2023-09-20 23:14:15'),
(87, 'NSTRUMENTACIÓN VIRTUAL', 'Septimo', '7', 3, '2023-09-20 23:14:15', '2023-09-20 23:14:15'),
(88, 'GERENCIA EMPRESARIAL', 'Septimo', '7', 3, '2023-09-20 23:14:15', '2023-09-20 23:14:15'),
(89, 'EMPRENDIMIENTO E INNOVACIÓN', 'Septimo', '7', 3, '2023-09-20 23:14:15', '2023-09-20 23:14:15'),
(90, 'GESTIÓN DELMANTENIMIENTO', 'Septimo', '7', 3, '2023-09-20 23:14:15', '2023-09-20 23:14:15'),
(91, 'CONTROL DE CALIDAD', 'Septimo', '7', 3, '2023-09-20 23:14:15', '2023-09-20 23:14:15'),
(92, 'LOGÍSTICA Y CADENA DE ABASTECIMIENTO', 'Octavo', '8', 3, '2023-09-20 23:14:16', '2023-09-20 23:14:16'),
(93, 'AUTOMATIZACIÓN INDUSTRIAL Y ROBÓTICA', 'Octavo', '8', 3, '2023-09-20 23:14:16', '2023-09-20 23:14:16'),
(94, 'DISEÑO DE PROYECTOS', 'Octavo', '8', 3, '2023-09-20 23:14:16', '2023-09-20 23:14:16'),
(95, 'PRÁCTICAS DE SERVICIOS COMUNITARIOS', 'Octavo', '8', 3, '2023-09-20 23:14:16', '2023-09-20 23:14:16'),
(96, 'GESTIÓN DE CALIDAD', 'Octavo', '8', 3, '2023-09-20 23:14:16', '2023-09-20 23:14:16'),
(97, 'SIMULACIÓN Y LABORATORIO', 'Octavo', '8', 3, '2023-09-20 23:14:16', '2023-09-20 23:14:16'),
(98, 'TITULACIÓN', 'Noveno', '9', 3, '2023-09-20 23:14:16', '2023-09-20 23:14:16'),
(99, 'DESARROLLO DE PROYECTOS', 'Noveno', '9', 3, '2023-09-20 23:14:16', '2023-09-20 23:14:16'),
(100, 'ÁLGEBRA LINEAL', 'Primero', '1', 5, '2023-09-20 23:14:16', '2023-09-20 23:14:16'),
(101, 'FUNDAMENTOS DE PROGRAMACIÓN', 'Primero', '1', 5, '2023-09-20 23:14:16', '2023-09-20 23:14:16'),
(102, 'CÁLCULO DIFERENCIAL', 'Primero', '1', 5, '2023-09-20 23:14:16', '2023-09-20 23:14:16'),
(103, 'FÍSICA', 'Primero', '1', 5, '2023-09-20 23:14:16', '2023-09-20 23:14:16'),
(104, 'METODOLOGÍA DE LA INVESTIGACIÓN', 'Primero', '1', 5, '2023-09-20 23:14:16', '2023-09-20 23:14:16'),
(105, 'CÁLCULO INTEGRAL', 'Segundo', '2', 5, '2023-09-20 23:14:16', '2023-09-20 23:14:16'),
(106, 'LÓGICA MATEMÁTICA', 'Segundo', '2', 5, '2023-09-20 23:14:16', '2023-09-20 23:14:16'),
(107, 'MEDIDAS ELÉCTRICAS', 'Segundo', '2', 5, '2023-09-20 23:14:16', '2023-09-20 23:14:16'),
(108, 'ESTRUCTURA DE DATOS', 'Segundo', '2', 5, '2023-09-20 23:14:17', '2023-09-20 23:14:17'),
(109, 'REALIDAD NACIONAL', 'Segundo', '2', 5, '2023-09-20 23:14:17', '2023-09-20 23:14:17'),
(110, 'PROGRAMACIÓN ORIENTADA A OBJETOS', 'Segundo', '2', 5, '2023-09-20 23:14:17', '2023-09-20 23:14:17'),
(111, 'PROGRAMACIÓN AVANZADA', 'Tercero', '3', 5, '2023-09-20 23:14:17', '2023-09-20 23:14:17'),
(112, 'PROBABILIDAD Y ESTADÍSTICA ', 'Tercero', '3', 5, '2023-09-20 23:14:17', '2023-09-20 23:14:17'),
(113, 'SISTEMAS OPERATIVOS', 'Tercero', '3', 5, '2023-09-20 23:14:17', '2023-09-20 23:14:17'),
(114, 'FUNDAMENTOS DE BASES DE DATOS', 'Tercero', '3', 5, '2023-09-20 23:14:17', '2023-09-20 23:14:17'),
(115, 'FUNDAMENTOS DE REDES Y COMUNICACIÓN DE DATOS', 'Tercero', '3', 5, '2023-09-20 23:14:17', '2023-09-20 23:14:17'),
(116, 'MÉTODOS NUMÉRICOS', 'Cuarto', '4', 5, '2023-09-20 23:14:17', '2023-09-20 23:14:17'),
(117, 'INGENIERÍA DE SOFTWARE', 'Cuarto', '4', 5, '2023-09-20 23:14:17', '2023-09-20 23:14:17'),
(118, 'INTERACCIÓN HOMBRE MÁQUINA', 'Cuarto', '4', 5, '2023-09-20 23:14:17', '2023-09-20 23:14:17'),
(119, 'ADMINISTRACIÓN DE SISTEMAS OPERATIVOS', 'Cuarto', '4', 5, '2023-09-20 23:14:17', '2023-09-20 23:14:17'),
(120, 'GESTIÓN DE BASES DE DATOS', 'Cuarto', '4', 5, '2023-09-20 23:14:17', '2023-09-20 23:14:17'),
(121, 'SISTEMAS DE BASES DE DATOS DISTRIBUIDOS', 'Quinto', '5', 5, '2023-09-20 23:14:17', '2023-09-20 23:14:17'),
(122, 'TECNOLOGÍAS Y DESARROLLO WEB', 'Quinto', '5', 5, '2023-09-20 23:14:17', '2023-09-20 23:14:17'),
(123, 'INVESTIGACIÓN OPERATIVA', 'Quinto', '5', 5, '2023-09-20 23:14:17', '2023-09-20 23:14:17'),
(124, 'CONMUTACIÓN Y ENRUTAMIENTO BÁSICO', 'Quinto', '5', 5, '2023-09-20 23:14:17', '2023-09-20 23:14:17'),
(125, 'GESTIÓN Y EVALUACIÓN DE PROYECTOS TI', 'Quinto', '5', 5, '2023-09-20 23:14:18', '2023-09-20 23:14:18'),
(126, 'ADMINISTRACIÓN DE BASE DE DATOS', 'Sexto', '6', 5, '2023-09-20 23:14:18', '2023-09-20 23:14:18'),
(127, 'SISTEMAS DE SOPORTE DE DECISIONES', 'Sexto', '6', 5, '2023-09-20 23:14:18', '2023-09-20 23:14:18'),
(128, 'CONMUTACIÓN Y ENRUTAMIENTO AVANZADO', 'Sexto', '6', 5, '2023-09-20 23:14:18', '2023-09-20 23:14:18'),
(129, 'GOBIERNOS TI', 'Sexto', '6', 5, '2023-09-20 23:14:18', '2023-09-20 23:14:18'),
(130, 'APLICACIONES MÓVILES', 'Sexto', '6', 5, '2023-09-20 23:14:18', '2023-09-20 23:14:18'),
(131, 'SERVICIO COMUNITARIO ', 'Septimo', '7', 5, '2023-09-20 23:14:18', '2023-09-20 23:14:18'),
(132, 'INTELIGENCIA DE NEGOCIOS ', 'Septimo', '7', 5, '2023-09-20 23:14:18', '2023-09-20 23:14:18'),
(133, 'EMPRENDIMIENTO Y GESTIÓN FINANCIERA DE TI', 'Septimo', '7', 5, '2023-09-20 23:14:18', '2023-09-20 23:14:18'),
(134, 'ARQUITECTURA Y PLATAFORMAS DE SERVIDORES', 'Septimo', '7', 5, '2023-09-20 23:14:18', '2023-09-20 23:14:18'),
(135, 'ADMINISTRACIÓN DE REDES', 'Septimo', '7', 5, '2023-09-20 23:14:18', '2023-09-20 23:14:18'),
(136, 'PRÁCTICAS LABORALES', 'Octavo', '8', 5, '2023-09-20 23:14:18', '2023-09-20 23:14:18'),
(137, 'INTEGRACIÓN DE SISTEMAS', 'Octavo', '8', 5, '2023-09-20 23:14:18', '2023-09-20 23:14:18'),
(138, 'SEGURIDAD DE LA INFORMACIÓN EN REDES DE COMUNICACIÓN DE DATOS', 'Octavo', '8', 5, '2023-09-20 23:14:18', '2023-09-20 23:14:18'),
(139, 'AUDITORÍA DE TI', 'Octavo', '8', 5, '2023-09-20 23:14:19', '2023-09-20 23:14:19'),
(140, 'DISEÑO DE PROYECTOS', 'Octavo', '8', 5, '2023-09-20 23:14:19', '2023-09-20 23:14:19'),
(141, 'TITULACIÓN', 'Noveno', '9', 5, '2023-09-20 23:14:19', '2023-09-20 23:14:19'),
(142, 'DESARROLLO DE PROYECTOS', 'Noveno', '9', 5, '2023-09-20 23:14:19', '2023-09-20 23:14:19'),
(143, 'FÍSICA', 'Primero', '1', 1, '2023-09-20 23:14:19', '2023-09-20 23:14:19'),
(144, 'ÁLGEBRA LINEAL', 'Primero', '1', 1, '2023-09-20 23:14:19', '2023-09-20 23:14:19'),
(145, 'CÁLCULO DIFERENCIAL', 'Primero', '1', 1, '2023-09-20 23:14:19', '2023-09-20 23:14:19'),
(146, 'ALGORITMOS Y LÓGICA DE PROGRAMACIÓN', 'Primero', '1', 1, '2023-09-20 23:14:19', '2023-09-20 23:14:19'),
(147, 'LÓGICA MATEMÁTICA', 'Primero', '1', 1, '2023-09-20 23:14:19', '2024-02-22 22:17:16'),
(148, 'FUNDAMENTOS DE INGENIERÍA DE SOFTWARE', 'Segundo', '2', 1, '2023-09-20 23:14:19', '2023-09-20 23:14:19'),
(149, 'CÁLCULO INTEGRAL', 'Segundo', '2', 1, '2023-09-20 23:14:19', '2023-09-20 23:14:19'),
(150, 'PROGRAMACIÓN ORIENTADA A OBJETOS', 'Segundo', '2', 1, '2023-09-20 23:14:19', '2023-09-20 23:14:19'),
(151, 'SISTEMAS OPERATIVOS', 'Segundo', '2', 1, '2023-09-20 23:14:19', '2023-09-20 23:14:19'),
(152, 'METODOLOGÍA DE LA INVESTIGACIÓN', 'Segundo', '2', 1, '2023-09-20 23:14:19', '2023-09-20 23:14:19'),
(153, 'MÉTODOS NUMÉRICOS', 'Tercero', '3', 1, '2023-09-20 23:14:19', '2023-09-20 23:14:19'),
(154, 'ESTRUCTURA DE DATOS', 'Tercero', '3', 1, '2023-09-20 23:14:19', '2023-09-20 23:14:19'),
(155, 'PROBABILIDAD Y ESTADÍSTICA', 'Tercero', '3', 1, '2023-09-20 23:14:20', '2023-09-20 23:14:20'),
(156, 'INTRODUCCIÓN A REDES', 'Tercero', '3', 1, '2023-09-20 23:14:20', '2023-09-20 23:14:20'),
(157, 'MODELAMIENTO Y DISEÑO DE SOFTWARE', 'Tercero', '3', 1, '2023-09-20 23:14:20', '2023-09-20 23:14:20'),
(158, 'METODOLOGÍAS ÁGILES', 'Cuarto', '4', 1, '2023-09-20 23:14:20', '2023-09-20 23:14:20'),
(159, 'REDES', 'Cuarto', '4', 1, '2023-09-20 23:14:20', '2023-09-20 23:14:20'),
(160, 'BASE DE DATOS', 'Cuarto', '4', 1, '2023-09-20 23:14:20', '2023-09-20 23:14:20'),
(161, 'COMPUTACIÓN VISUAL', 'Cuarto', '4', 1, '2023-09-20 23:14:20', '2023-09-20 23:14:20'),
(162, 'MANEJO Y CONFIGURACIÓN DEL SOFTWARE', 'Cuarto', '4', 1, '2023-09-20 23:14:20', '2023-09-20 23:14:20'),
(163, 'INVESTIGACIÓN OPERATIVA', 'Quinto', '5', 1, '2023-09-20 23:14:20', '2023-09-20 23:14:20'),
(164, 'SISTEMAS DE SOPORTE DE DECISIONES', 'Quinto', '5', 1, '2023-09-20 23:14:20', '2023-09-20 23:14:20'),
(165, 'PATRONES DE SOFTWARE', 'Quinto', '5', 1, '2023-09-20 23:14:20', '2023-09-20 23:14:20'),
(166, 'APLICACIONES ORIENTADAS A SERVICIOS', 'Quinto', '5', 1, '2023-09-20 23:14:20', '2023-09-20 23:14:20'),
(167, 'INTERACCIÓN HUMANO / COMPUTADOR', 'Quinto', '5', 1, '2023-09-20 23:14:20', '2023-09-20 23:14:20'),
(168, 'INTELIGENCIA DE NEGOCIOS', 'Sexto', '6', 1, '2023-09-20 23:14:20', '2023-09-20 23:14:20'),
(169, 'APLICACIONES WEB Y MÓVILES', 'Sexto', '6', 1, '2023-09-20 23:14:20', '2023-09-20 23:14:20'),
(170, 'APLICACIONES DISTRIBUIDAS', 'Sexto', '6', 1, '2023-09-20 23:14:20', '2023-09-20 23:14:20'),
(171, 'GESTIÓN DE PRUEBAS E IMPLANTACIÓN DE SOFTWARE', 'Sexto', '6', 1, '2023-09-20 23:14:21', '2023-09-20 23:14:21'),
(172, 'REALIDAD NACIONAL', 'Sexto', '6', 1, '2023-09-20 23:14:21', '2023-09-20 23:14:21'),
(173, 'PRACTICAS DE SERVICIO COMUNITARIO', 'Septimo', '7', 1, '2023-09-20 23:14:21', '2023-09-20 23:14:21'),
(174, 'DESARROLLO ASISTIDO POR SOFTWARE', 'Septimo', '7', 1, '2023-09-20 23:14:21', '2023-09-20 23:14:21'),
(175, 'AUDITORÍA DE SISTEMAS DE INFORMACIÓN', 'Septimo', '7', 1, '2023-09-20 23:14:21', '2023-09-20 23:14:21'),
(176, 'GESTIÓN DE PROYECTOS DE SOFTWARE', 'Septimo', '7', 1, '2023-09-20 23:14:21', '2023-09-20 23:14:21'),
(177, 'GESTIÓN DE CALIDAD DEL SOFTWARE', 'Septimo', '7', 1, '2023-09-20 23:14:21', '2023-09-20 23:14:21'),
(178, 'INTELIGENCIA ARTIFICIAL', 'Septimo', '7', 1, '2023-09-20 23:14:21', '2023-09-20 23:14:21'),
(179, 'PRACTICAS LABORALES', 'Octavo', '8', 1, '2023-09-20 23:14:21', '2023-09-20 23:14:21'),
(180, 'EMPRENDIMIENTO Y LEGISLACIÓN LABORAL', 'Octavo', '8', 1, '2023-09-20 23:14:21', '2023-09-20 23:14:21'),
(181, 'SEGURIDAD EN EL DESARROLLO DEL SOFTWARE', 'Octavo', '8', 1, '2023-09-20 23:14:21', '2023-09-20 23:14:21'),
(182, 'INGENIERÍA ECONÓMICA PARA SOFTWARE', 'Octavo', '8', 1, '2023-09-20 23:14:21', '2023-09-20 23:14:21'),
(183, 'DISEÑO DE PROYECTOS', 'Octavo', '8', 1, '2023-09-20 23:14:21', '2023-09-20 23:14:21'),
(184, 'TITULACIÓN', 'Noveno', '9', 1, '2023-09-20 23:14:21', '2023-09-20 23:14:21'),
(185, 'DESARROLLO DE PROYECTOS', 'Noveno', '9', 1, '2023-09-20 23:14:21', '2023-09-20 23:14:21'),
(186, 'FÍSICA ', 'Nivelación', '0', 1, '2023-09-20 23:14:21', '2023-09-20 23:14:21'),
(187, 'MATEMÁTICAS ', 'Nivelación', '0', 1, '2023-09-20 23:14:21', '2023-09-20 23:14:21'),
(188, 'UNIVERSIDAD Y SOCIEDAD', 'Nivelación', '0', 1, '2023-09-20 23:14:22', '2023-09-20 23:14:22'),
(189, 'LÓGICA DE PROGRAMACIÓN', 'Nivelación', '0', 1, '2023-09-20 23:14:22', '2023-09-20 23:14:22'),
(190, 'FÍSICA ', 'Nivelación', '0', 2, '2023-09-20 23:14:22', '2023-09-20 23:14:22'),
(191, 'MATEMÁTICAS ', 'Nivelación', '0', 2, '2023-09-20 23:14:22', '2023-09-20 23:14:22'),
(192, 'UNIVERSIDAD Y SOCIEDAD', 'Nivelación', '0', 2, '2023-09-20 23:14:22', '2023-09-20 23:14:22'),
(193, 'QUÍMICA ', 'Nivelación', '0', 2, '2023-09-20 23:14:22', '2023-09-20 23:14:22'),
(194, 'FÍSICA ', 'Nivelación', '0', 3, '2023-09-20 23:14:22', '2023-09-20 23:14:22'),
(195, 'MATEMÁTICAS ', 'Nivelación', '0', 3, '2023-09-20 23:14:22', '2023-09-20 23:14:22'),
(196, 'UNIVERSIDAD Y SOCIEDAD', 'Nivelación', '0', 3, '2023-09-20 23:14:22', '2023-09-20 23:14:22'),
(197, 'QUÍMICA ', 'Nivelación', '0', 3, '2023-09-20 23:14:22', '2023-09-20 23:14:22'),
(198, 'FÍSICA ', 'Nivelación', '0', 5, '2023-09-20 23:14:22', '2023-09-20 23:14:22'),
(199, 'MATEMÁTICAS ', 'Nivelación', '0', 5, '2023-09-20 23:14:22', '2023-09-20 23:14:22'),
(200, 'UNIVERSIDAD Y SOCIEDAD', 'Nivelación', '0', 5, '2023-09-20 23:14:22', '2023-09-20 23:14:22'),
(201, 'LÓGICA DE PROGRAMACIÓN', 'Nivelación', '0', 5, '2023-09-20 23:14:22', '2023-09-20 23:14:22'),
(203, 'FÍSICA', 'Nivelacion', '0', 4, '2023-09-22 19:23:26', '2023-09-22 19:23:26'),
(204, 'MATEMÁTICAS', 'Nivelacion', '0', 4, '2023-09-22 19:23:46', '2023-09-22 19:23:46'),
(205, 'UNIVERSIDAD Y SOCIEDAD', 'Nivelacion', '0', 4, '2023-09-22 22:36:12', '2023-09-22 22:36:12'),
(206, 'QUÍMICA', 'Nivelacion', '0', 4, '2023-09-23 02:28:31', '2023-09-23 02:28:31'),
(207, 'ADMINISTRACIÓN DE LA PRODUCCIÓN', 'Quinto', '5', 3, '2023-09-23 03:25:06', '2023-09-23 03:25:06'),
(208, 'TUTORIA ACADEMICA', ' ', '', 6, '2023-09-29 21:00:50', '2023-09-26 21:00:58'),
(209, 'PREPARACION DE CLASE', ' ', '', 6, '2023-09-26 21:01:04', '2023-09-26 21:01:06'),
(210, 'REUNION DE UOC', ' ', '', 6, '2023-09-26 21:01:08', '2023-09-26 21:01:10'),
(211, 'COMISIÓN', ' ', '', 6, '2023-09-26 21:01:11', '2023-09-26 21:01:13'),
(212, 'ACTIVIDADES COMPLEMENTARIAS', ' ', '', 6, '2023-09-26 21:01:15', '2023-09-26 21:01:16'),
(213, 'MÁQUINAS ELÉCTRICAS', 'Cuarto', '4', 3, '2023-10-18 01:17:27', '2023-10-18 01:17:27'),
(215, 'MATE', 'Primero', '1', 2, '2024-02-22 22:44:53', '2024-02-22 22:44:53'),
(218, 'MAT', 'Primero', '1', 3, '2024-02-22 23:04:20', '2024-02-22 23:04:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aulas`
--

CREATE TABLE `aulas` (
  `id` bigint UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edificio` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numero_edificio` tinyint NOT NULL,
  `piso` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numero_piso` tinyint NOT NULL,
  `proyector` enum('Si','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Si',
  `aire` enum('Si','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Si',
  `cantidad_pc` int NOT NULL,
  `capacidad` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `aulas`
--

INSERT INTO `aulas` (`id`, `nombre`, `edificio`, `numero_edificio`, `piso`, `numero_piso`, `proyector`, `aire`, `cantidad_pc`, `capacidad`, `created_at`, `updated_at`) VALUES
(1, 'LABORATORIO 1', 'Edificio 1', 1, 'Segundo', 2, 'Si', 'Si', 20, 40, '2023-09-20 23:13:58', '2023-09-29 04:39:51'),
(2, 'LABORATORIO 2', 'Edificio 1', 1, 'Segundo', 2, 'Si', 'Si', 20, 40, '2023-09-20 23:13:58', '2023-09-29 04:33:02'),
(3, 'LABORATORIO 3', 'Edificio 1', 1, 'Tercer', 3, 'Si', 'Si', 12, 24, '2023-09-20 23:13:58', '2023-09-20 23:13:58'),
(4, 'LABORATORIO 4', 'Edificio 1', 1, 'Tercer', 3, 'Si', 'Si', 12, 24, '2023-09-20 23:13:58', '2023-09-20 23:13:58'),
(5, 'LABORATORIO 5', 'Edificio 1', 1, 'Tercer', 3, 'Si', 'Si', 12, 24, '2023-09-20 23:13:58', '2023-09-20 23:13:58'),
(6, 'LABORATORIO 6', 'Edificio 1', 1, 'Tercer', 3, 'Si', 'Si', 16, 32, '2023-09-20 23:13:58', '2023-09-20 23:13:58'),
(7, 'LABORATORIO 7', 'Edificio 1', 1, 'Tercer', 3, 'Si', 'Si', 20, 40, '2023-09-20 23:13:58', '2023-09-20 23:13:58'),
(8, 'LABORATORIO  8', 'Edificio 1', 1, 'Segundo', 2, 'Si', 'Si', 20, 40, '2023-09-20 23:13:58', '2023-09-20 23:13:58'),
(9, 'LABORATORIO CTT ', 'Edificio 1', 1, 'Primer', 1, 'Si', 'Si', 28, 56, '2023-09-20 23:13:58', '2023-09-20 23:13:58'),
(10, 'LABORATORIO REDES 1', 'Edificio 1', 1, 'Segundo', 2, 'Si', 'Si', 19, 40, '2023-09-20 23:13:58', '2023-09-20 23:13:58'),
(11, 'LABORATORIO REDES 2', 'Edificio 1', 1, 'Primer', 1, 'Si', 'Si', 0, 40, '2023-09-20 23:13:58', '2023-09-20 23:13:58'),
(12, 'LABORATORIO INDUSTRIAL I', 'Edificio 2', 2, 'Primer', 1, 'Si', 'Si', 16, 32, '2023-09-20 23:13:58', '2023-09-29 05:22:12'),
(13, 'LABORATORIO INDUSTRIAL II', 'Edificio 2', 2, 'Subsuelo', 0, 'Si', 'Si', 16, 32, '2023-09-20 23:13:58', '2023-09-29 05:22:26'),
(14, 'LABORATORIO ROBÓTICA Y REDES INDUSTRIALES', 'Edificio 2', 2, 'Subsuelo', 0, 'Si', 'Si', 16, 32, '2023-09-20 23:13:58', '2023-09-29 04:23:28'),
(15, 'LABORATORIO PLC\'S', 'Edificio 2', 2, 'Primer', 1, 'No', 'Si', 11, 22, '2023-09-20 23:13:58', '2023-09-29 04:14:16'),
(16, 'LABORATORIO INSTRUMENTACION VIRTUAL', 'Edificio 2', 2, 'Segundo', 2, 'Si', 'Si', 4, 24, '2023-09-20 23:13:58', '2023-09-29 04:15:02'),
(17, 'LABORATORIO ELECTRÓNICA BÁSICA', 'Edificio 2', 2, 'Primer', 1, 'No', 'Si', 0, 24, '2023-09-20 23:13:58', '2023-09-29 04:26:47'),
(18, 'LABORATORIO COMUNICACIONES', 'Edificio 2', 2, 'Primer', 1, 'No', 'Si', 6, 18, '2023-09-20 23:13:58', '2023-09-29 04:21:09'),
(19, 'LABORATORIO ELECTRONICA AVANZADA', 'Edificio 1', 1, 'Segundo', 2, 'Si', 'Si', 0, 32, '2023-09-20 23:13:59', '2023-09-29 04:22:17'),
(20, 'AUDIOVISUALES', 'Edificio 1', 1, 'Primer', 1, 'Si', 'Si', 0, 64, '2023-09-20 23:13:59', '2023-09-20 23:13:59'),
(21, 'AULA 1', 'Edificio Ciencias Aplicadas', 3, 'Subsuelo', 0, 'Si', 'No', 0, 40, '2023-09-20 23:13:59', '2023-09-29 04:41:11'),
(22, 'AULA 2', 'Edificio Ciencias Aplicadas', 3, 'Subsuelo', 0, 'Si', 'No', 0, 40, '2023-09-20 23:13:59', '2023-09-29 04:47:20'),
(23, 'AULA 3', 'Edificio Ciencias Aplicadas', 3, 'Subsuelo', 0, 'Si', 'No', 0, 40, '2023-09-20 23:13:59', '2023-09-29 04:48:54'),
(24, 'AULA 4', 'Edificio Ciencias Aplicadas', 3, 'Subsuelo', 0, 'Si', 'No', 0, 40, '2023-09-20 23:13:59', '2023-09-29 04:49:15'),
(25, 'AULA 5', 'Edificio Ciencias Aplicadas', 3, 'Subsuelo', 0, 'Si', 'No', 0, 40, '2023-09-20 23:13:59', '2023-09-29 04:49:38'),
(26, 'AULA 6', 'Edificio Ciencias Aplicadas', 3, 'Primer', 1, 'Si', 'No', 0, 40, '2023-09-20 23:13:59', '2023-09-29 05:02:36'),
(27, 'AULA 7', 'Edificio Ciencias Aplicadas', 3, 'Primer', 1, 'Si', 'No', 0, 40, '2023-09-20 23:13:59', '2023-09-29 05:02:52'),
(28, 'AULA 8', 'Edificio Ciencias Aplicadas', 3, 'Primer', 1, 'Si', 'No', 0, 40, '2023-09-20 23:13:59', '2023-09-29 05:03:13'),
(29, 'AULA 9', 'Edificio Ciencias Aplicadas', 3, 'Primer', 1, 'Si', 'No', 0, 40, '2023-09-20 23:13:59', '2023-09-29 05:03:30'),
(30, 'AULA 10', 'Edificio Ciencias Aplicadas', 3, 'Primer', 1, 'Si', 'No', 0, 40, '2023-09-20 23:13:59', '2023-09-29 05:03:50'),
(31, 'AULA F01', 'Edificio 2', 2, 'Tercer', 3, 'Si', 'Si', 0, 30, '2023-09-20 23:13:59', '2023-09-29 05:04:48'),
(32, 'AULA F02', 'Edificio 2', 2, 'Tercer', 3, 'Si', 'Si', 0, 30, '2023-09-20 23:13:59', '2023-09-29 05:04:58'),
(33, 'AULA F03', 'Edificio 2', 2, 'Tercer', 3, 'Si', 'Si', 0, 30, '2023-09-20 23:13:59', '2023-09-29 05:05:08'),
(34, 'AULA F04', 'Edificio 2', 2, 'Tercer ', 3, 'Si', 'Si', 0, 30, '2023-09-20 23:13:59', '2023-09-29 05:05:28'),
(35, 'AULA F08', 'Edificio 2', 2, 'Tercer ', 3, 'Si', 'Si', 0, 30, '2023-09-20 23:13:59', '2023-09-29 05:05:40'),
(36, 'AULA G02', 'Edificio 2', 2, 'Cuarto ', 4, 'Si', 'Si', 0, 30, '2023-09-20 23:13:59', '2023-09-29 05:06:03'),
(37, 'AULA G03', 'Edificio 2', 2, 'Cuarto', 4, 'Si', 'Si', 0, 30, '2023-09-20 23:14:00', '2023-09-29 05:06:26'),
(38, 'AULA G04', 'Edificio 2', 2, 'Cuarto', 4, 'Si', 'Si', 0, 40, '2023-09-20 23:14:00', '2023-09-29 05:06:41'),
(39, 'AULA H02', 'Edificio 2', 2, 'Quinto', 0, 'Si', 'Si', 0, 30, '2023-09-20 23:14:00', '2023-09-29 05:06:58'),
(40, 'AULA H03', 'Edificio 2', 2, 'Quinto', 5, 'Si', 'Si', 0, 40, '2023-09-20 23:14:00', '2023-09-29 05:07:15'),
(41, 'AULA H04', 'Edificio 2', 2, 'Quinto', 5, 'Si', 'Si', 0, 40, '2023-09-20 23:14:00', '2023-09-29 05:07:34'),
(42, 'AULA H05', 'Edificio 2', 2, 'Quinto', 5, 'Si', 'Si', 0, 40, '2023-09-20 23:14:00', '2023-09-29 05:08:27'),
(43, 'AULA I01', 'Edificio 2', 2, 'Sexto', 6, 'Si', 'Si', 0, 50, '2023-09-20 23:14:00', '2023-09-29 05:09:01'),
(44, 'AULA I02', 'Edificio 2', 2, 'Sexto', 6, 'Si', 'Si', 0, 40, '2023-09-20 23:14:00', '2023-09-29 05:09:53'),
(45, 'AULA I03', 'Edificio 2', 2, 'Sexto', 6, 'Si', 'Si', 0, 40, '2023-09-20 23:14:00', '2023-09-29 05:10:06'),
(46, 'AULA J05', 'Edificio 2', 2, 'Septimo', 7, 'Si', 'Si', 0, 30, '2023-09-20 23:14:00', '2023-09-29 05:10:21'),
(47, 'OF INV 1 ', 'Edificio 1', 1, 'Primer', 1, 'Si', 'Si', 5, 5, '2023-09-20 23:14:00', '2023-09-20 23:14:00'),
(48, 'UPE ', 'Edificio 1', 1, 'Tercer', 3, 'Si', 'Si', 6, 6, '2023-09-20 23:14:00', '2023-09-20 23:14:00'),
(49, 'SUBDECANATO', 'Edificio 1', 1, 'Segundo', 2, 'Si', 'Si', 3, 3, '2023-09-20 23:14:00', '2023-09-20 23:14:00'),
(50, 'SALA PROFESORES 2', 'Edificio 2', 2, 'Segundo', 2, 'No', 'No', 18, 18, '2023-09-20 23:14:00', '2023-09-29 05:12:30'),
(51, 'SALA PROFESORES 1 ', 'Edificio 1', 1, 'Primer', 1, 'Si', 'Si', 12, 12, '2023-09-20 23:14:00', '2023-09-20 23:14:00'),
(52, 'OFICINA POSTGRADOS', 'Edificio 2', 2, 'Segundo', 2, 'No', 'No', 6, 6, '2023-09-20 23:14:00', '2023-09-29 05:13:02'),
(53, 'OFICINA DE VINCULACIÓN ', 'Edificio 1', 1, 'Tercer', 3, 'Si', 'Si', 7, 7, '2023-09-20 23:14:00', '2023-09-20 23:14:00'),
(54, 'OF INV 3', 'Edificio 1', 1, 'Primer', 1, 'Si', 'Si', 5, 5, '2023-09-20 23:14:01', '2023-09-20 23:14:01'),
(55, 'OF INV 2', 'Edificio 1', 1, 'Tercer', 3, 'Si', 'Si', 4, 4, '2023-09-20 23:14:01', '2023-09-20 23:14:01'),
(56, 'LABORATORIO AUTOMATIZACIÓN INDUSTRIAL', 'Edificio 2', 2, 'Subsuelo', 0, 'Si', 'Si', 1, 32, '2023-09-20 23:14:01', '2023-09-29 05:16:48'),
(57, 'DECANATO', 'Edificio 1', 1, 'Tercer', 3, 'Si', 'Si', 1, 1, '2023-09-20 23:14:01', '2023-09-20 23:14:01'),
(58, 'COORDINACION SISTEMAS', 'Edificio 1', 1, 'Primer Piso', 0, 'Si', 'Si', 2, 2, '2023-09-20 23:14:01', '2023-10-17 21:39:37'),
(59, 'COORDINACIÓN INDUSTRIAL', 'Edificio 1', 1, 'Primer', 1, 'Si', 'Si', 2, 2, '2023-09-20 23:14:01', '2023-09-20 23:14:01'),
(60, 'COORDINACIÓN ELECTRÓNICA', 'Edificio 1', 1, 'Segundo', 2, 'Si', 'Si', 2, 2, '2023-09-20 23:14:01', '2023-09-20 23:14:01'),
(61, 'TALLERES TECNOLÓGICOS', 'Edificio 2', 2, 'Primer', 1, 'Si', 'Si', 3, 3, '2023-09-20 23:14:01', '2023-09-20 23:14:01'),
(63, 'AULA J01', 'Edificio 2', 2, 'Quinto', 5, 'No', 'No', 0, 30, '2023-09-22 19:27:08', '2023-09-29 05:19:58'),
(64, 'MÀQUINAS ELÈCTRICAS', 'Edificio 1', 1, 'Segundo', 2, 'Si', 'Si', 0, 25, '2023-09-26 19:37:53', '2023-09-29 05:21:26'),
(66, 'TEST AD', 'Edificio Ciencias Aplicadas', 3, 'Primer', 1, 'Si', 'Si', 10, 10, '2023-09-27 00:34:26', '2023-09-27 00:40:59'),
(67, 'ADMINISTRACIÓN DE REDES', 'Edificio 1', 1, 'Primer', 1, 'No', 'Si', 0, 6, '2023-09-27 20:25:17', '2023-09-27 20:25:17'),
(68, 'SALA NIVELACIÓN', 'Edificio 2', 2, 'Tercer', 3, 'No', 'No', 0, 0, '2023-09-28 00:04:59', '2023-09-29 05:21:45'),
(69, 'COORDINACIÓN CTT', 'Edificio 1', 1, 'Primer', 1, 'No', 'No', 0, 6, '2023-09-28 00:26:55', '2023-09-28 00:26:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aula_software`
--

CREATE TABLE `aula_software` (
  `aula_id` bigint UNSIGNED NOT NULL,
  `software_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caracteristicas`
--

CREATE TABLE `caracteristicas` (
  `id` bigint UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `aula_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `caracteristicas`
--

INSERT INTO `caracteristicas` (`id`, `nombre`, `descripcion`, `aula_id`, `created_at`, `updated_at`) VALUES
(1, 'sit', 'iusto fuga est adipisci sapiente repellendus vel praesentium libero natus rerum deserunt sunt numquam exercitationem omnis reprehenderit architecto porro non', 38, '2023-09-20 23:14:08', '2023-09-20 23:14:08'),
(2, 'iste', 'ipsum aut blanditiis sit debitis ratione tempora nesciunt neque sunt ullam officia qui facilis voluptatem aut odio beatae rem quod', 4, '2023-09-20 23:14:08', '2023-09-20 23:14:08'),
(3, 'dolore', 'sed officiis aut qui vero ducimus molestiae non animi occaecati odit similique quam error aut tempore quia quisquam quisquam sunt', 51, '2023-09-20 23:14:08', '2023-09-20 23:14:08'),
(4, 'sed', 'praesentium natus sequi maxime omnis ad hic non explicabo reiciendis placeat eos consequatur libero sed atque ea sit itaque ea', 1, '2023-09-20 23:14:08', '2023-09-20 23:14:08'),
(5, 'itaque', 'quibusdam similique vitae quos suscipit suscipit facilis in et officia aut consequatur et eos est magnam excepturi aperiam quo sequi', 34, '2023-09-20 23:14:08', '2023-09-20 23:14:08'),
(6, 'eius', 'eligendi qui illo laborum asperiores sunt omnis est non aliquid non sit qui molestiae laudantium incidunt ipsa qui quo earum', 32, '2023-09-20 23:14:08', '2023-09-20 23:14:08'),
(7, 'voluptatem', 'illo qui velit eius et id nobis dolor reiciendis dignissimos provident dolores deserunt temporibus doloribus quisquam inventore porro et facere', 17, '2023-09-20 23:14:08', '2023-09-20 23:14:08'),
(8, 'doloremque', 'quo eveniet porro magni aut quod qui enim quos provident quam nihil iure culpa facilis at illum fugiat molestias nemo', 20, '2023-09-20 23:14:08', '2023-09-20 23:14:08'),
(9, 'dolore', 'sint rem est nisi ducimus voluptas dolorum ipsa nobis odio delectus aut nostrum est deleniti numquam dolorum et eos vel', 37, '2023-09-20 23:14:08', '2023-09-20 23:14:08'),
(10, 'soluta', 'dolorum rerum minima nihil odio delectus fugiat sunt veritatis necessitatibus blanditiis debitis repellat molestias vel repellendus et neque corporis sunt', 49, '2023-09-20 23:14:08', '2023-09-20 23:14:08'),
(11, 'sit', 'vel et molestiae temporibus quam possimus mollitia quibusdam quo quia debitis doloremque consequuntur officia voluptatibus et facilis nesciunt consectetur hic', 50, '2023-09-20 23:14:08', '2023-09-20 23:14:08'),
(12, 'alias', 'distinctio autem rerum saepe totam ratione qui et eum autem numquam facere sint provident facilis id quae iure sequi corporis', 28, '2023-09-20 23:14:08', '2023-09-20 23:14:08'),
(13, 'fugit', 'perspiciatis quibusdam et quia doloribus a qui doloribus id deleniti ut velit harum quo ad aspernatur qui reiciendis in quo', 60, '2023-09-20 23:14:08', '2023-09-20 23:14:08'),
(14, 'quis', 'aperiam sit sed libero modi magni minus velit libero nobis dolores dolor aliquid corrupti qui esse laborum autem vero ut', 20, '2023-09-20 23:14:08', '2023-09-20 23:14:08'),
(15, 'commodi', 'accusamus reprehenderit aut quas et incidunt expedita exercitationem atque harum labore ad placeat quam est aspernatur enim dolorem adipisci iusto', 45, '2023-09-20 23:14:08', '2023-09-20 23:14:08'),
(16, 'animi', 'autem qui aut adipisci qui sed est eum iusto eaque tempore aut officia id enim aut veritatis incidunt dolorum rerum', 18, '2023-09-20 23:14:08', '2023-09-20 23:14:08'),
(17, 'illum', 'quos ipsum ipsa porro tenetur quos qui provident voluptas atque possimus qui id est veritatis et laborum aut eum dolorum', 60, '2023-09-20 23:14:09', '2023-09-20 23:14:09'),
(18, 'error', 'aut molestiae sed recusandae non similique dignissimos dicta aut facilis repellat omnis beatae aspernatur laudantium error rerum eos aut iure', 9, '2023-09-20 23:14:09', '2023-09-20 23:14:09'),
(19, 'error', 'nemo sit at ut fuga et explicabo ipsum et modi sed occaecati rerum iusto nulla iusto culpa qui ipsam in', 54, '2023-09-20 23:14:09', '2023-09-20 23:14:09'),
(20, 'ipsum', 'dignissimos autem in tenetur voluptatem iure illo repudiandae qui omnis voluptas excepturi quidem officia facilis ullam aut nisi porro assumenda', 7, '2023-09-20 23:14:09', '2023-09-20 23:14:09'),
(21, 'repellat', 'odit magni ipsa laborum et ipsam aliquam incidunt sunt earum ipsa explicabo velit molestias qui sint dolorum necessitatibus sequi sed', 16, '2023-09-20 23:14:09', '2023-09-20 23:14:09'),
(22, 'cumque', 'reiciendis odio aut deleniti ut cumque saepe non sequi est totam quas atque est accusamus ab in inventore vel quia', 28, '2023-09-20 23:14:09', '2023-09-20 23:14:09'),
(23, 'facilis', 'excepturi qui dolor similique dolorum amet temporibus nam harum et dolor sit voluptatem perferendis ut est ut magnam dolore soluta', 9, '2023-09-20 23:14:09', '2023-09-20 23:14:09'),
(24, 'sed', 'quisquam voluptatem quisquam eligendi commodi rerum ut voluptatem officia est molestiae sapiente quos iusto quia vero placeat eligendi aut cum', 56, '2023-09-20 23:14:09', '2023-09-20 23:14:09'),
(25, 'veritatis', 'vero totam quia debitis aspernatur atque dolorem voluptatibus magni mollitia esse blanditiis reiciendis aut quidem libero dolore officia dolores ad', 33, '2023-09-20 23:14:09', '2023-09-20 23:14:09'),
(26, 'culpa', 'tempore ullam repudiandae hic sint unde voluptas iste modi sint ut esse animi officia asperiores ipsam eligendi qui incidunt inventore', 42, '2023-09-20 23:14:09', '2023-09-20 23:14:09'),
(27, 'esse', 'fugiat et facilis ut quasi modi similique eos repellat pariatur nihil corporis molestiae id sint nihil quo accusamus necessitatibus quae', 42, '2023-09-20 23:14:09', '2023-09-20 23:14:09'),
(28, 'assumenda', 'similique et odio qui modi maxime sit ut expedita ut vero aperiam sed voluptatem qui voluptas et alias repellat magnam', 29, '2023-09-20 23:14:09', '2023-09-20 23:14:09'),
(29, 'ut', 'ex sunt distinctio iusto consequuntur ut aspernatur qui enim non et doloremque quod quos iusto praesentium aut blanditiis ut dolorem', 32, '2023-09-20 23:14:09', '2023-09-20 23:14:09'),
(30, 'rerum', 'voluptatibus sunt mollitia aut qui ipsum asperiores ut inventore porro velit voluptas eum ratione veniam a officia dignissimos quos et', 3, '2023-09-20 23:14:09', '2023-09-20 23:14:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carreras`
--

CREATE TABLE `carreras` (
  `id` bigint UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `carreras`
--

INSERT INTO `carreras` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Software', '2023-09-20 23:14:10', '2023-09-20 23:14:10'),
(2, 'Telecomunicaciones', '2023-09-20 23:14:10', '2023-09-20 23:14:10'),
(3, 'Industrial', '2023-09-20 23:14:10', '2023-09-20 23:14:10'),
(4, 'Robótica', '2023-09-20 23:14:10', '2023-09-20 23:14:10'),
(5, 'Tecnologías de la información', '2023-09-20 23:14:10', '2023-09-20 23:14:10'),
(6, 'Complementaria', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docentes`
--

CREATE TABLE `docentes` (
  `id` bigint UNSIGNED NOT NULL,
  `cedula` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `docente` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `docentes`
--

INSERT INTO `docentes` (`id`, `cedula`, `docente`, `created_at`, `updated_at`) VALUES
(1, '1802174852', 'ALDÁS FLORES CLAY FERNANDO', '2023-09-20 23:13:53', '2023-09-20 23:13:53'),
(2, '1802338838', 'ALTAMIRANO MELÉNDEZ SANTIAGO MAURICIO', '2023-09-20 23:13:54', '2023-09-20 23:13:54'),
(3, '1801225960', 'ÁLVAREZ MAYORGA EDISON HOMERO', '2023-09-20 23:13:54', '2023-09-20 23:13:54'),
(4, '1803938438', 'AYALA BAÑO ELIZABETH PAULINA', '2023-09-20 23:13:54', '2023-09-20 23:13:54'),
(5, '1802360543', 'BALAREZO LOPEZ JULIO ENRIQUE', '2023-09-20 23:13:54', '2023-09-20 23:13:54'),
(6, '1802535888', 'BENALCAZAR PALACIOS FREDDY GEOVANNY', '2023-09-20 23:13:54', '2023-09-20 23:13:54'),
(7, '1801813971', 'BRITO MONCAYO GEOVANNI DANILO', '2023-09-20 23:13:54', '2023-09-20 23:13:54'),
(8, '1802662955', 'BUENAÑO VALENCIA EDWIN HERNANDO', '2023-09-20 23:13:54', '2023-09-20 23:13:54'),
(9, '1801941913', 'CAMPAÑA MUQUINCHE LUIS ARMANDO', '2023-09-20 23:13:54', '2023-09-20 23:13:54'),
(10, '1801978246', 'CARRANZA GARCES ANGEL MAURICIO', '2023-09-20 23:13:54', '2023-09-20 23:13:54'),
(11, '1802837953', 'CARRILLO RIOS SANDRA LUCRECIA', '2023-09-20 23:13:54', '2023-09-20 23:13:54'),
(12, '1804560744', 'CASTRO MARTIN ANA PAMELA', '2023-09-20 23:13:54', '2023-09-20 23:13:54'),
(13, '1803472701', 'CASTRO MAYORGA MARITZA ELIZABETH', '2023-09-20 23:13:54', '2023-09-20 23:13:54'),
(14, '0603011743', 'CHICAIZA CASTILLO DENNIS VINICIO', '2023-09-20 23:13:54', '2023-09-20 23:13:54'),
(15, '1803450681', 'CORDOVA CORDOVA EDGAR PATRICIO', '2023-09-20 23:13:54', '2023-09-20 23:13:54'),
(16, '1801828128', 'CUJI RODRIGUEZ JULIO ENRIQUE', '2023-09-20 23:13:54', '2023-09-20 23:13:54'),
(17, '1805451760', 'ESCOBAR NARANJO JUAN CAMILO', '2023-09-20 23:13:54', '2023-09-20 23:13:54'),
(18, '0960114759', 'FERNÁNDEZ PEÑA FÉLIX OSCAR', '2023-09-20 23:13:54', '2023-09-20 23:13:54'),
(19, '1801696624', 'GARCIA CARRILLO MARIO GEOVANNI', '2023-09-20 23:13:55', '2023-09-20 23:13:55'),
(20, '1803543055', 'GARCIA SÁNCHEZ MARCELO', '2023-09-20 23:13:55', '2023-09-20 23:13:55'),
(21, '1803405495', 'GORDÓN GALLEGOS CARLOS DIEGO', '2023-09-20 23:13:55', '2023-09-20 23:13:55'),
(22, '1803113834', 'GUACHIMBOSA VILLALBA MARCO VINICIO', '2023-09-20 23:13:55', '2023-09-20 23:13:55'),
(23, '1801662709', 'GUACHIMBOSA VILLALVA VICTOR HUGO', '2023-09-20 23:13:55', '2023-09-20 23:13:55'),
(24, '0503620585', 'GUAMÁN JESUS', '2023-09-20 23:13:55', '2023-09-20 23:13:55'),
(25, '1802605749', 'GUEVARA AULESTIA DAVID OMAR', '2023-09-20 23:13:55', '2023-09-20 23:13:55'),
(26, '0601975956', 'GUILCAPI MOSQUERA JAIME RODRIGO', '2023-09-20 23:13:55', '2023-09-20 23:13:55'),
(27, '1804003497', 'IBARRA TORRES OSCAR FERNANDO', '2023-09-20 23:13:55', '2023-09-20 23:13:55'),
(28, '1804711115', 'JARA MOYA SANTIAGO DAVID', '2023-09-20 23:13:55', '2023-09-20 23:13:55'),
(29, '1804710463', 'JEREZ MAYORGA DANIEL SEBASTIAN', '2023-09-20 23:13:55', '2023-09-20 23:13:55'),
(30, '1801792845', 'JORDÁN HIDALGO EDISSON', '2023-09-20 23:13:55', '2023-09-20 23:13:55'),
(31, '1801783521', 'LARREA BUSTOS ANITA LUCIA', '2023-09-20 23:13:55', '2023-09-20 23:13:55'),
(32, '1803338175', 'LASCANO SUMBANA ALEXANDRA VIRGINIA', '2023-09-20 23:13:55', '2023-09-20 23:13:55'),
(33, '1802839587', 'LEMA CHICAIZA FREDDY ROBERTO', '2023-09-20 23:13:55', '2023-09-20 23:13:55'),
(34, '1803691037', 'LÓPEZ ARBOLEDA JESSICA PAOLA', '2023-09-20 23:13:55', '2023-09-20 23:13:55'),
(35, '1804062915', 'LÓPEZ FLORES MAURICIO XAVIER', '2023-09-20 23:13:56', '2023-09-20 23:13:56'),
(36, '1803364627', 'MANZANO VILLAFUERTE SANTIAGO', '2023-09-20 23:13:56', '2023-09-20 23:13:56'),
(37, '1802732758', 'MARIÑO RIVERA CHRISTIAN JOSÉ', '2023-09-20 23:13:56', '2023-09-20 23:13:56'),
(38, '1802503993', 'MAYORGA MAYORGA FRANKLIN OSWALDO', '2023-09-20 23:13:56', '2023-09-20 23:13:56'),
(39, '1801793934', 'MORALES LOZADA JOSE VICENTE', '2023-09-20 23:13:56', '2023-09-20 23:13:56'),
(40, '1803095858', 'MORALES OÑATE BOLIVAR EFRAIN', '2023-09-20 23:13:56', '2023-09-20 23:13:56'),
(41, '1803485695', 'MORALES PERRAZO LUIS ALBERTO', '2023-09-20 23:13:56', '2023-09-20 23:13:56'),
(43, '1803378593', 'NARANJO AVALOS HERNAN FABRICIO', '2023-09-20 23:13:56', '2023-09-20 23:13:56'),
(44, '1802642619', 'NARANJO CHIRIBOGA ISRAEL ERNESTO', '2023-09-20 23:13:56', '2023-09-20 23:13:56'),
(45, '1804710463', 'NARANJO ROBALINO JOSÉ EZEQUIEL', '2023-09-20 23:13:56', '2023-09-20 23:13:56'),
(46, '1803536828', 'MORALES PAREDES PABLO ISRAEL', '2023-09-20 23:13:56', '2023-09-20 23:13:56'),
(47, '1802668606', 'NOGALES PORTERO RUBEN EDUARDO', '2023-09-20 23:13:56', '2023-09-20 23:13:56'),
(48, '1803459450', 'NUÑEZ MIRANDA CARLOS ISRAEL', '2023-09-20 23:13:56', '2023-09-20 23:13:56'),
(49, '1804403721', 'ORTIZ GUERRERO DAYSI MARGARITA', '2023-09-20 23:13:56', '2023-09-20 23:13:56'),
(50, '1804807913', 'ORTIZ SAILEMA CHRISTIAN ISMAEL', '2023-09-20 23:13:56', '2023-09-20 23:13:56'),
(51, '0502392483', 'PALLO NOROÑA JUAN PABLO', '2023-09-20 23:13:56', '2023-09-20 23:13:56'),
(52, '1757849433', 'RIOS VILLACORTA ALBERTO', '2023-09-20 23:13:57', '2023-09-20 23:13:57'),
(53, '1803299351', 'ROBALINO PEÑA EDGAR FREDDY', '2023-09-20 23:13:57', '2023-09-20 23:13:57'),
(54, '1802421139', 'ROSERO MANTILLA CESAR', '2023-09-20 23:13:57', '2023-09-20 23:13:57'),
(55, '1802376861', 'RUIZ  BANDA JAIME BOLIVAR', '2023-09-20 23:13:57', '2023-09-20 23:13:57'),
(56, '1708019268', 'SALAZAR ESCOBAR FABIAN', '2023-09-20 23:13:57', '2023-09-20 23:13:57'),
(57, '0603039967', 'SALAZAR LOGROÑO FRANKLIN', '2023-09-20 23:13:57', '2023-09-20 23:13:57'),
(58, '1803226552', 'SÁNCHEZ BENITEZ CLARA', '2023-09-20 23:13:57', '2023-09-20 23:13:57'),
(59, '1803401528', 'SÁNCHEZ ROSERO CARLOS HUMBERTO', '2023-09-20 23:13:57', '2023-09-20 23:13:57'),
(60, '1804310710', 'SANCHEZ ZUMBA ANDREA PATRICA', '2023-09-20 23:13:57', '2023-09-20 23:13:57'),
(61, '1803632940', 'SANTAMARIA VILLACIS MARLON ANTONIO', '2023-09-20 23:13:57', '2023-09-20 23:13:57'),
(62, '1802842771', 'SEVILLA ABARCA MARTHA ESPERANZA', '2023-09-20 23:13:57', '2023-09-20 23:13:57'),
(63, '0502729817', 'TIGRE ORTEGA FRANKLIN GEOVANNY', '2023-09-20 23:13:57', '2023-09-20 23:13:57'),
(64, '1803991379', 'TITUAÑA PULLUQUITIN GLADYS ISABEL', '2023-09-20 23:13:57', '2023-09-20 23:13:57'),
(65, '1803542008', 'TORRES ABRIL PAULO CESAR', '2023-09-20 23:13:57', '2023-09-20 23:13:57'),
(66, '1804373767', 'TORRES VALVERDE LEONARDO DAVID', '2023-09-20 23:13:57', '2023-09-20 23:13:57'),
(67, '1803881000', 'TUBÓN NUÑEZ EDITH ELENA', '2023-09-20 23:13:57', '2023-09-20 23:13:57'),
(68, '1803651593', 'UREÑA JEANETH', '2023-09-20 23:13:57', '2023-09-20 23:13:57'),
(69, '1802695708', 'URRUTIA URRUTIA ELSA PILAR', '2023-09-20 23:13:57', '2023-09-20 23:13:57'),
(70, '1802191633', 'URRUTIA URRUTIA FERNANDO', '2023-09-20 23:13:57', '2023-09-20 23:13:57'),
(73, '1234567890', 'VARGAS GUEVARA CARLOS LUIS', '2023-09-23 03:18:20', '2023-09-23 03:18:20'),
(74, '1234567899', 'REYES VASQUEZ JOHN PAUL', '2023-09-23 03:23:09', '2023-09-23 03:23:09'),
(75, '1987654321', 'GUERRA ALEXANDRA', '2023-11-21 18:45:57', '2023-11-21 18:45:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docente_titulo`
--

CREATE TABLE `docente_titulo` (
  `id` bigint UNSIGNED NOT NULL,
  `titulo_id` bigint UNSIGNED NOT NULL,
  `docente_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `has_roles`
--

CREATE TABLE `has_roles` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `rol_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `has_roles`
--

INSERT INTO `has_roles` (`id`, `user_id`, `rol_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 2, NULL, NULL),
(3, 3, 2, NULL, NULL),
(4, 4, 2, NULL, NULL),
(5, 5, 2, NULL, NULL),
(6, 6, 2, NULL, NULL),
(7, 7, 2, NULL, NULL),
(8, 8, 2, NULL, NULL),
(9, 9, 2, NULL, NULL),
(10, 10, 2, NULL, NULL),
(11, 11, 2, NULL, NULL),
(12, 12, 2, NULL, NULL),
(13, 13, 2, NULL, NULL),
(14, 14, 2, NULL, NULL),
(15, 15, 2, NULL, NULL),
(16, 16, 2, NULL, NULL),
(17, 17, 2, NULL, NULL),
(18, 18, 2, NULL, NULL),
(19, 19, 2, NULL, NULL),
(20, 20, 2, NULL, NULL),
(21, 21, 2, NULL, NULL),
(22, 22, 2, NULL, NULL),
(23, 23, 2, NULL, NULL),
(24, 24, 2, NULL, NULL),
(25, 25, 2, NULL, NULL),
(26, 26, 2, NULL, NULL),
(27, 27, 2, NULL, NULL),
(28, 28, 2, NULL, NULL),
(29, 29, 2, NULL, NULL),
(30, 30, 2, NULL, NULL),
(31, 31, 2, NULL, NULL),
(32, 32, 2, NULL, NULL),
(33, 33, 2, NULL, NULL),
(34, 34, 2, NULL, NULL),
(35, 35, 2, NULL, NULL),
(36, 36, 2, NULL, NULL),
(37, 37, 2, NULL, NULL),
(38, 38, 2, NULL, NULL),
(39, 39, 2, NULL, NULL),
(40, 40, 2, NULL, NULL),
(41, 41, 2, NULL, NULL),
(42, 42, 2, NULL, NULL),
(43, 43, 2, NULL, NULL),
(44, 44, 2, NULL, NULL),
(45, 45, 2, NULL, NULL),
(46, 46, 2, NULL, NULL),
(47, 47, 2, NULL, NULL),
(48, 48, 2, NULL, NULL),
(49, 49, 2, NULL, NULL),
(50, 50, 2, NULL, NULL),
(51, 51, 2, NULL, NULL),
(52, 52, 2, NULL, NULL),
(53, 53, 2, NULL, NULL),
(54, 54, 2, NULL, NULL),
(55, 55, 2, NULL, NULL),
(56, 56, 2, NULL, NULL),
(57, 57, 2, NULL, NULL),
(58, 58, 2, NULL, NULL),
(59, 59, 2, NULL, NULL),
(60, 60, 2, NULL, NULL),
(61, 61, 2, NULL, NULL),
(62, 62, 2, NULL, NULL),
(63, 63, 2, NULL, NULL),
(64, 64, 2, NULL, NULL),
(65, 65, 2, NULL, NULL),
(66, 66, 2, NULL, NULL),
(67, 67, 2, NULL, NULL),
(68, 68, 2, NULL, NULL),
(69, 69, 2, NULL, NULL),
(70, 70, 2, NULL, NULL),
(71, 71, 2, NULL, NULL),
(72, 72, 2, NULL, NULL),
(73, 73, 2, NULL, NULL),
(74, 74, 2, NULL, NULL),
(75, 75, 2, NULL, NULL),
(76, 76, 2, NULL, NULL),
(77, 77, 2, NULL, NULL),
(78, 78, 2, NULL, NULL),
(79, 79, 2, NULL, NULL),
(80, 80, 2, NULL, NULL),
(81, 81, 2, NULL, NULL),
(82, 82, 2, NULL, NULL),
(83, 83, 2, NULL, NULL),
(84, 84, 2, NULL, NULL),
(85, 85, 2, NULL, NULL),
(86, 86, 2, NULL, NULL),
(87, 87, 2, NULL, NULL),
(88, 88, 2, NULL, NULL),
(89, 89, 2, NULL, NULL),
(90, 90, 2, NULL, NULL),
(91, 91, 2, NULL, NULL),
(92, 92, 2, NULL, NULL),
(93, 93, 2, NULL, NULL),
(94, 94, 2, NULL, NULL),
(95, 95, 2, NULL, NULL),
(96, 96, 2, NULL, NULL),
(97, 97, 2, NULL, NULL),
(98, 98, 2, NULL, NULL),
(99, 99, 2, NULL, NULL),
(100, 100, 2, NULL, NULL),
(101, 101, 2, NULL, NULL),
(102, 102, 2, NULL, NULL),
(103, 103, 2, NULL, NULL),
(104, 104, 2, NULL, NULL),
(105, 105, 2, NULL, NULL),
(106, 106, 2, NULL, NULL),
(107, 107, 2, NULL, NULL),
(108, 108, 2, NULL, NULL),
(109, 109, 2, NULL, NULL),
(110, 110, 2, NULL, NULL),
(111, 111, 2, NULL, NULL),
(112, 112, 2, NULL, NULL),
(113, 113, 2, NULL, NULL),
(114, 114, 2, NULL, NULL),
(115, 115, 2, NULL, NULL),
(116, 116, 2, NULL, NULL),
(117, 117, 2, NULL, NULL),
(118, 118, 2, NULL, NULL),
(119, 119, 2, NULL, NULL),
(120, 120, 2, NULL, NULL),
(121, 121, 2, NULL, NULL),
(122, 122, 2, NULL, NULL),
(123, 123, 2, NULL, NULL),
(124, 124, 2, NULL, NULL),
(125, 125, 2, NULL, NULL),
(126, 126, 2, NULL, NULL),
(127, 127, 2, NULL, NULL),
(128, 128, 2, NULL, NULL),
(129, 129, 2, NULL, NULL),
(130, 130, 2, NULL, NULL),
(131, 131, 2, NULL, NULL),
(132, 132, 2, NULL, NULL),
(133, 133, 2, NULL, NULL),
(134, 134, 2, NULL, NULL),
(135, 135, 2, NULL, NULL),
(136, 136, 2, NULL, NULL),
(137, 137, 2, NULL, NULL),
(138, 138, 2, NULL, NULL),
(139, 139, 2, NULL, NULL),
(140, 140, 2, NULL, NULL),
(141, 141, 2, NULL, NULL),
(142, 142, 2, NULL, NULL),
(143, 143, 2, NULL, NULL),
(144, 144, 2, NULL, NULL),
(145, 145, 2, NULL, NULL),
(146, 146, 2, NULL, NULL),
(147, 147, 2, NULL, NULL),
(148, 148, 2, NULL, NULL),
(149, 149, 2, NULL, NULL),
(150, 150, 2, NULL, NULL),
(151, 151, 2, NULL, NULL),
(152, 152, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horarios`
--

CREATE TABLE `horarios` (
  `id` bigint UNSIGNED NOT NULL,
  `aula_id` bigint UNSIGNED NOT NULL,
  `actividad_id` bigint UNSIGNED NOT NULL,
  `paralelo_id` bigint UNSIGNED DEFAULT NULL,
  `docente_id` bigint UNSIGNED NOT NULL,
  `dia_semana` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numero_dia` tinyint NOT NULL,
  `hora_inicio` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hora_fin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numero_puesto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `horarios`
--

INSERT INTO `horarios` (`id`, `aula_id`, `actividad_id`, `paralelo_id`, `docente_id`, `dia_semana`, `numero_dia`, `hora_inicio`, `hora_fin`, `numero_puesto`, `created_at`, `updated_at`) VALUES
(16, 1, 130, 1, 1, 'Martes', 2, '16', '19', NULL, '2023-09-22 04:46:31', '2023-09-22 04:46:31'),
(17, 1, 130, 1, 1, 'Miércoles', 3, '17', '20', NULL, '2023-09-22 04:46:57', '2023-09-22 04:46:57'),
(21, 38, 35, 1, 2, 'Martes', 2, '18', '20', NULL, '2023-09-22 18:05:26', '2023-09-22 18:05:26'),
(22, 38, 35, 1, 2, 'Miércoles', 3, '18', '20', NULL, '2023-09-22 18:06:25', '2023-09-22 18:06:25'),
(39, 9, 127, 1, 3, 'Lunes', 1, '14', '17', NULL, '2023-09-22 18:28:00', '2023-09-22 18:28:00'),
(41, 9, 132, 1, 3, 'Martes', 2, '7', '10', NULL, '2023-09-22 18:29:49', '2023-09-22 18:29:49'),
(42, 9, 164, 1, 3, 'Miércoles', 3, '7', '10', NULL, '2023-09-22 18:30:31', '2023-09-22 18:30:31'),
(43, 9, 127, 1, 3, 'Miércoles', 3, '14', '17', NULL, '2023-09-22 18:31:12', '2023-09-22 18:31:12'),
(44, 9, 132, 1, 3, 'Jueves', 4, '7', '10', NULL, '2023-09-22 18:32:04', '2023-09-22 18:32:04'),
(45, 9, 164, 1, 3, 'Viernes', 5, '7', '10', NULL, '2023-09-22 18:32:50', '2023-09-22 18:32:50'),
(46, 28, 11, 2, 4, 'Lunes', 1, '18', '20', NULL, '2023-09-22 18:35:33', '2023-09-22 18:35:33'),
(47, 28, 11, 2, 4, 'Martes', 2, '16', '18', NULL, '2023-09-22 18:38:09', '2023-09-22 18:38:09'),
(48, 27, 11, 1, 4, 'Martes', 2, '18', '20', NULL, '2023-09-22 18:38:39', '2023-09-22 18:38:39'),
(50, 38, 33, 1, 4, 'Miércoles', 3, '14', '16', NULL, '2023-09-22 18:42:18', '2023-09-22 18:42:18'),
(52, 38, 33, 1, 4, 'Jueves', 4, '14', '16', NULL, '2023-09-22 18:43:38', '2023-09-22 18:43:38'),
(53, 27, 11, 1, 4, 'Viernes', 5, '16', '18', NULL, '2023-09-22 18:44:19', '2023-09-22 18:44:19'),
(54, 5, 185, 1, 5, 'Lunes', 1, '8', '10', NULL, '2023-09-22 18:45:14', '2023-09-22 18:45:14'),
(55, 3, 139, 1, 5, 'Lunes', 1, '14', '16', NULL, '2023-09-22 18:45:47', '2023-09-22 18:45:47'),
(56, 9, 172, 1, 5, 'Lunes', 1, '17', '19', NULL, '2023-09-22 18:46:27', '2023-09-22 18:46:27'),
(57, 4, 175, 1, 5, 'Martes', 2, '10', '13', NULL, '2023-09-22 18:47:10', '2023-09-22 18:47:10'),
(58, 5, 185, 1, 5, 'Miércoles', 3, '7', '9', NULL, '2023-09-22 18:47:52', '2023-09-22 18:47:52'),
(59, 3, 139, 1, 5, 'Miércoles', 3, '17', '19', NULL, '2023-09-22 18:48:34', '2023-09-22 18:48:34'),
(60, 4, 175, 1, 5, 'Jueves', 4, '11', '13', NULL, '2023-09-22 18:49:11', '2023-09-22 18:49:11'),
(61, 5, 185, 1, 5, 'Viernes', 5, '8', '11', NULL, '2023-09-22 18:50:05', '2023-09-22 18:50:05'),
(62, 9, 172, 1, 5, 'Viernes', 5, '14', '16', NULL, '2023-09-22 18:50:59', '2023-09-22 18:50:59'),
(63, 27, 3, 1, 6, 'Lunes', 1, '9', '11', NULL, '2023-09-22 18:53:12', '2023-09-22 18:53:12'),
(64, 33, 22, 1, 6, 'Lunes', 1, '14', '16', NULL, '2023-09-22 18:54:25', '2023-09-22 18:54:25'),
(65, 27, 8, 1, 6, 'Lunes', 1, '16', '17', NULL, '2023-09-22 18:55:08', '2023-09-22 18:55:08'),
(66, 27, 8, 1, 6, 'Martes', 2, '14', '16', NULL, '2023-09-22 18:58:36', '2023-09-22 18:58:36'),
(68, 33, 22, 1, 6, 'Miércoles', 3, '14', '16', NULL, '2023-09-22 19:03:13', '2023-09-22 19:03:13'),
(69, 27, 8, 1, 6, 'Jueves', 4, '14', '16', NULL, '2023-09-22 19:03:57', '2023-09-22 19:03:57'),
(70, 27, 3, 1, 6, 'Viernes', 5, '9', '10', NULL, '2023-09-22 19:04:26', '2023-09-22 19:04:26'),
(71, 33, 22, 1, 6, 'Viernes', 5, '14', '16', NULL, '2023-09-22 19:04:55', '2023-09-22 19:04:55'),
(72, 27, 3, 1, 6, 'Miércoles', 3, '9', '11', NULL, '2023-09-22 19:06:09', '2023-09-22 19:06:09'),
(76, 6, 114, 1, 8, 'Lunes', 1, '10', '13', NULL, '2023-09-22 19:10:02', '2023-09-22 19:10:02'),
(77, 6, 120, 1, 8, 'Lunes', 1, '15', '17', NULL, '2023-09-22 19:10:32', '2023-09-22 19:10:32'),
(78, 6, 114, 1, 8, 'Martes', 2, '10', '13', NULL, '2023-09-22 19:10:53', '2023-09-22 19:10:53'),
(79, 21, 147, 1, 8, 'Miércoles', 3, '11', '13', NULL, '2023-09-22 19:11:26', '2023-09-22 19:11:26'),
(80, 6, 160, 1, 8, 'Miércoles', 3, '17', '20', NULL, '2023-09-22 19:12:01', '2023-09-22 19:12:01'),
(83, 21, 147, 1, 8, 'Martes', 2, '9', '10', NULL, '2023-09-22 19:13:48', '2023-09-22 19:13:48'),
(84, 6, 120, 1, 8, 'Jueves', 4, '14', '17', NULL, '2023-09-22 19:15:44', '2023-09-22 19:15:44'),
(85, 6, 160, 1, 8, 'Jueves', 4, '17', '20', NULL, '2023-09-22 19:16:10', '2023-09-22 19:16:10'),
(86, 41, 203, 1, 9, 'Lunes', 1, '7', '9', NULL, '2023-09-22 19:25:34', '2023-09-22 19:25:34'),
(88, 44, 187, 1, 9, 'Lunes', 1, '11', '13', NULL, '2023-09-22 19:28:37', '2023-09-22 19:28:37'),
(90, 44, 187, 1, 9, 'Martes', 2, '7', '9', NULL, '2023-09-22 19:30:17', '2023-09-22 19:30:17'),
(91, 41, 203, 1, 9, 'Martes', 2, '9', '11', NULL, '2023-09-22 19:30:49', '2023-09-22 19:30:49'),
(92, 44, 187, 2, 9, 'Martes', 2, '14', '16', NULL, '2023-09-22 19:31:25', '2023-09-22 19:31:25'),
(95, 44, 187, 1, 9, 'Miércoles', 3, '11', '13', NULL, '2023-09-22 19:43:02', '2023-09-22 19:43:02'),
(96, 44, 187, 2, 9, 'Miércoles', 3, '18', '20', NULL, '2023-09-22 19:43:56', '2023-09-22 19:43:56'),
(97, 44, 187, 1, 9, 'Jueves', 4, '7', '9', NULL, '2023-09-22 19:44:41', '2023-09-22 19:44:41'),
(98, 41, 203, 1, 9, 'Jueves', 4, '10', '11', NULL, '2023-09-22 19:45:22', '2023-09-22 19:45:22'),
(99, 44, 187, 2, 9, 'Jueves', 4, '17', '19', NULL, '2023-09-22 19:45:53', '2023-09-22 19:45:53'),
(102, 5, 180, 1, 10, 'Lunes', 1, '15', '17', NULL, '2023-09-22 19:56:36', '2023-09-22 19:56:36'),
(104, 32, 71, 1, 10, 'Martes', 2, '15', '18', NULL, '2023-09-22 20:03:23', '2023-09-22 20:03:23'),
(106, 32, 71, 1, 10, 'Jueves', 4, '16', '18', NULL, '2023-09-22 20:04:56', '2023-09-22 20:04:56'),
(108, 37, 88, 2, 10, 'Lunes', 1, '9', '11', NULL, '2023-09-22 20:14:25', '2023-09-22 20:14:25'),
(109, 37, 88, 2, 10, 'Viernes', 5, '9', '11', NULL, '2023-09-22 20:14:57', '2023-09-22 20:14:57'),
(110, 36, 88, 1, 10, 'Martes', 2, '11', '13', NULL, '2023-09-22 20:15:34', '2023-09-22 20:15:34'),
(111, 36, 88, 1, 10, 'Jueves', 4, '8', '10', NULL, '2023-09-22 20:16:08', '2023-09-22 20:16:08'),
(112, 9, 153, 1, 11, 'Lunes', 1, '7', '9', NULL, '2023-09-22 20:17:03', '2023-09-22 20:17:03'),
(113, 26, 56, 2, 11, 'Lunes', 1, '14', '16', NULL, '2023-09-22 20:18:01', '2023-09-22 20:18:01'),
(114, 3, 116, 1, 11, 'Lunes', 1, '17', '19', NULL, '2023-09-22 20:18:44', '2023-09-22 20:18:44'),
(116, 26, 56, 2, 11, 'Martes', 2, '16', '18', NULL, '2023-09-22 20:19:54', '2023-09-22 20:19:54'),
(118, 2, 153, 1, 11, 'Jueves', 4, '7', '9', NULL, '2023-09-22 20:21:12', '2023-09-22 20:21:12'),
(120, 2, 116, 1, 11, 'Jueves', 4, '17', '19', NULL, '2023-09-22 20:22:17', '2023-09-22 20:22:17'),
(125, 32, 3, 3, 12, 'Lunes', 1, '9', '11', NULL, '2023-09-22 20:25:53', '2023-09-22 20:25:53'),
(126, 33, 13, 1, 12, 'Martes', 2, '7', '9', NULL, '2023-09-22 20:26:24', '2023-09-22 20:26:24'),
(128, 32, 3, 3, 12, 'Miércoles', 3, '9', '11', NULL, '2023-09-22 20:27:28', '2023-09-22 20:27:28'),
(129, 33, 13, 1, 12, 'Jueves', 4, '7', '9', NULL, '2023-09-22 20:28:08', '2023-09-22 20:28:08'),
(131, 8, 49, 1, 12, 'Jueves', 4, '11', '13', NULL, '2023-09-22 20:29:13', '2023-09-22 20:29:13'),
(133, 3, 49, 1, 12, 'Viernes', 5, '8', '9', NULL, '2023-09-22 20:31:10', '2023-09-22 20:31:10'),
(134, 32, 3, 3, 12, 'Viernes', 5, '9', '10', NULL, '2023-09-22 20:31:49', '2023-09-22 20:31:49'),
(135, 24, 100, 2, 13, 'Lunes', 1, '7', '9', NULL, '2023-09-22 20:33:59', '2023-09-22 20:33:59'),
(136, 23, 100, 1, 13, 'Lunes', 1, '9', '11', NULL, '2023-09-22 20:34:27', '2023-09-22 20:34:27'),
(137, 21, 144, 1, 13, 'Lunes', 1, '11', '13', NULL, '2023-09-22 20:34:52', '2023-09-22 20:34:52'),
(139, 24, 100, 2, 13, 'Martes', 2, '7', '10', NULL, '2023-09-22 20:36:05', '2023-09-22 20:36:05'),
(140, 21, 144, 1, 13, 'Martes', 2, '10', '11', NULL, '2023-09-22 20:36:43', '2023-09-22 20:36:43'),
(141, 22, 144, 2, 13, 'Martes', 2, '11', '13', NULL, '2023-09-22 20:37:25', '2023-09-22 20:37:25'),
(142, 21, 144, 1, 13, 'Miércoles', 3, '7', '9', NULL, '2023-09-22 20:37:52', '2023-09-22 20:37:52'),
(143, 22, 144, 2, 13, 'Miércoles', 3, '9', '11', NULL, '2023-09-22 20:38:19', '2023-09-22 20:38:19'),
(144, 23, 100, 1, 13, 'Jueves', 4, '7', '10', NULL, '2023-09-22 20:38:49', '2023-09-22 20:38:49'),
(145, 22, 144, 2, 13, 'Viernes', 5, '8', '9', NULL, '2023-09-22 20:39:22', '2023-09-22 20:39:22'),
(146, 8, 169, 1, 14, 'Martes', 2, '17', '20', NULL, '2023-09-22 20:40:13', '2023-09-22 20:40:13'),
(147, 8, 115, 1, 14, 'Miércoles', 3, '7', '10', NULL, '2023-09-22 20:40:42', '2023-09-22 20:40:42'),
(148, 8, 115, 1, 14, 'Jueves', 4, '7', '9', NULL, '2023-09-22 20:41:11', '2023-09-22 20:41:11'),
(149, 8, 169, 1, 14, 'Jueves', 4, '14', '17', NULL, '2023-09-22 20:41:56', '2023-09-22 20:41:56'),
(156, 38, 39, 1, 16, 'Lunes', 1, '10', '12', NULL, '2023-09-22 20:46:58', '2023-09-22 20:46:58'),
(157, 38, 31, 1, 16, 'Lunes', 1, '16', '18', NULL, '2023-09-22 20:47:26', '2023-09-22 20:47:26'),
(158, 38, 39, 1, 16, 'Martes', 2, '11', '12', NULL, '2023-09-22 20:48:05', '2023-09-22 20:48:05'),
(159, 38, 39, 1, 16, 'Miércoles', 3, '7', '12', NULL, '2023-09-22 20:49:10', '2023-09-22 20:49:10'),
(160, 38, 31, 1, 16, 'Viernes', 5, '15', '17', NULL, '2023-09-22 20:49:44', '2023-09-22 20:49:44'),
(165, 44, 186, 1, 17, 'Lunes', 1, '7', '9', NULL, '2023-09-22 20:53:48', '2023-09-22 20:53:48'),
(166, 45, 198, 1, 17, 'Lunes', 1, '9', '11', NULL, '2023-09-22 20:54:13', '2023-09-22 20:54:13'),
(167, 20, 203, 1, 17, 'Lunes', 1, '11', '13', NULL, '2023-09-22 20:54:43', '2023-09-22 20:54:43'),
(168, 44, 186, 2, 17, 'Lunes', 1, '14', '16', NULL, '2023-09-22 20:55:12', '2023-09-22 20:55:12'),
(169, 20, 194, 1, 17, 'Martes', 2, '7', '9', NULL, '2023-09-22 20:55:48', '2023-09-22 20:55:48'),
(170, 44, 186, 1, 17, 'Martes', 2, '9', '10', NULL, '2023-09-22 20:56:19', '2023-09-22 20:56:19'),
(171, 45, 198, 2, 17, 'Martes', 2, '14', '16', NULL, '2023-09-22 20:56:56', '2023-09-22 20:56:56'),
(172, 44, 186, 2, 17, 'Martes', 2, '16', '17', NULL, '2023-09-22 20:57:25', '2023-09-22 20:57:25'),
(173, 44, 186, 1, 17, 'Miércoles', 3, '7', '9', NULL, '2023-09-22 20:57:57', '2023-09-22 20:57:57'),
(174, 45, 198, 1, 17, 'Miércoles', 3, '9', '11', NULL, '2023-09-22 20:58:26', '2023-09-22 20:58:26'),
(175, 20, 194, 1, 17, 'Miércoles', 3, '11', '12', NULL, '2023-09-22 20:58:57', '2023-09-22 20:58:57'),
(176, 44, 186, 2, 17, 'Miércoles', 3, '14', '16', NULL, '2023-09-22 20:59:42', '2023-09-22 20:59:42'),
(177, 45, 198, 2, 17, 'Miércoles', 3, '16', '17', NULL, '2023-09-22 21:00:20', '2023-09-22 21:00:20'),
(178, 45, 198, 1, 17, 'Jueves', 4, '9', '10', NULL, '2023-09-22 21:01:01', '2023-09-22 21:01:01'),
(179, 45, 198, 2, 17, 'Jueves', 4, '15', '17', NULL, '2023-09-22 21:01:35', '2023-09-22 21:01:35'),
(180, 20, 194, 2, 17, 'Jueves', 4, '17', '18', NULL, '2023-09-22 21:02:03', '2023-09-22 21:02:03'),
(181, 20, 194, 2, 17, 'Viernes', 5, '14', '16', NULL, '2023-09-22 21:02:33', '2023-09-22 21:02:33'),
(182, 8, 154, 1, 18, 'Lunes', 1, '11', '13', NULL, '2023-09-22 21:04:13', '2023-09-22 21:04:13'),
(183, 1, 108, 1, 18, 'Lunes', 1, '16', '19', NULL, '2023-09-22 21:04:52', '2023-09-22 21:04:52'),
(184, 8, 150, 1, 18, 'Martes', 2, '14', '17', NULL, '2023-09-22 21:05:55', '2023-09-22 21:05:55'),
(185, 8, 150, 1, 18, 'Miércoles', 3, '14', '16', NULL, '2023-09-22 21:06:28', '2023-09-22 21:06:28'),
(186, 1, 108, 1, 18, 'Jueves', 4, '14', '16', NULL, '2023-09-22 21:07:08', '2023-09-22 21:07:08'),
(189, 33, 20, 1, 19, 'Lunes', 1, '16', '18', NULL, '2023-09-22 21:09:21', '2023-09-22 21:09:21'),
(190, 33, 19, 1, 19, 'Martes', 2, '16', '18', NULL, '2023-09-22 21:09:50', '2023-09-22 21:09:50'),
(191, 34, 25, 1, 19, 'Miércoles', 3, '9', '11', NULL, '2023-09-22 21:10:27', '2023-09-22 21:10:27'),
(192, 33, 20, 1, 19, 'Miércoles', 3, '16', '18', NULL, '2023-09-22 21:10:56', '2023-09-22 21:10:56'),
(193, 33, 20, 1, 19, 'Jueves', 4, '14', '16', NULL, '2023-09-22 21:11:27', '2023-09-22 21:11:27'),
(194, 33, 19, 1, 19, 'Jueves', 4, '18', '20', NULL, '2023-09-22 21:11:55', '2023-09-22 21:11:55'),
(196, 12, 87, 2, 20, 'Lunes', 1, '11', '13', NULL, '2023-09-22 21:14:10', '2023-09-22 21:14:10'),
(197, 12, 93, 1, 20, 'Lunes', 1, '14', '16', NULL, '2023-09-22 21:14:45', '2023-09-22 21:14:45'),
(198, 12, 87, 1, 20, 'Martes', 2, '9', '11', NULL, '2023-09-22 21:15:19', '2023-09-22 21:15:19'),
(199, 12, 87, 1, 20, 'Miércoles', 3, '9', '11', NULL, '2023-09-22 21:15:54', '2023-09-22 21:15:54'),
(200, 12, 87, 2, 20, 'Miércoles', 3, '11', '13', NULL, '2023-09-22 21:16:16', '2023-09-22 21:16:16'),
(201, 12, 93, 1, 20, 'Jueves', 4, '17', '20', NULL, '2023-09-22 21:16:57', '2023-09-22 21:16:57'),
(202, 28, 2, 2, 21, 'Lunes', 1, '11', '13', NULL, '2023-09-22 21:17:44', '2023-09-22 21:17:44'),
(203, 19, 23, 1, 21, 'Martes', 2, '14', '16', NULL, '2023-09-22 21:18:22', '2023-09-22 21:18:22'),
(204, 14, 21, 1, 21, 'Martes', 2, '18', '20', NULL, '2023-09-22 21:18:57', '2023-09-22 21:18:57'),
(205, 19, 38, 1, 21, 'Miércoles', 3, '10', '12', NULL, '2023-09-22 21:19:38', '2023-09-22 21:19:38'),
(206, 14, 21, 1, 21, 'Miércoles', 3, '18', '20', NULL, '2023-09-22 21:20:18', '2023-09-22 21:20:18'),
(207, 28, 2, 2, 21, 'Jueves', 4, '9', '11', NULL, '2023-09-22 21:20:53', '2023-09-22 21:20:53'),
(208, 19, 38, 1, 21, 'Jueves', 4, '11', '13', NULL, '2023-09-22 21:21:22', '2023-09-22 21:21:22'),
(209, 19, 23, 1, 21, 'Jueves', 4, '16', '18', NULL, '2023-09-22 21:21:51', '2023-09-22 21:21:51'),
(210, 14, 21, 1, 21, 'Viernes', 5, '16', '18', NULL, '2023-09-22 21:22:26', '2023-09-22 21:22:26'),
(211, 3, 167, 1, 22, 'Lunes', 1, '7', '10', NULL, '2023-09-22 21:23:10', '2023-09-22 21:23:10'),
(212, 3, 165, 1, 22, 'Martes', 2, '8', '11', NULL, '2023-09-22 21:23:35', '2023-09-22 21:23:35'),
(213, 3, 118, 1, 22, 'Martes', 2, '17', '19', NULL, '2023-09-22 21:24:10', '2023-09-22 21:24:10'),
(214, 3, 167, 1, 22, 'Jueves', 4, '7', '9', NULL, '2023-09-22 21:24:41', '2023-09-22 21:24:41'),
(215, 3, 167, 1, 22, 'Jueves', 4, '9', '11', NULL, '2023-09-22 21:25:15', '2023-09-22 21:25:15'),
(216, 30, 112, 1, 22, 'Jueves', 4, '11', '13', NULL, '2023-09-22 21:25:57', '2023-09-22 21:25:57'),
(217, 30, 112, 1, 22, 'Viernes', 5, '7', '9', NULL, '2023-09-22 21:26:23', '2023-09-22 21:26:23'),
(218, 3, 118, 1, 22, 'Viernes', 5, '17', '20', NULL, '2023-09-22 21:26:46', '2023-09-22 21:26:46'),
(221, 6, 64, 1, 23, 'Miércoles', 3, '7', '9', NULL, '2023-09-22 21:29:04', '2023-09-22 21:29:04'),
(225, 6, 64, 1, 23, 'Jueves', 4, '9', '11', NULL, '2023-09-22 21:31:02', '2023-09-22 21:31:02'),
(227, 6, 64, 1, 23, 'Viernes', 5, '10', '11', NULL, '2023-09-22 21:32:19', '2023-09-22 21:32:19'),
(228, 40, 63, 1, 24, 'Lunes', 1, '10', '12', NULL, '2023-09-22 21:34:59', '2023-09-22 21:34:59'),
(229, 38, 32, 1, 24, 'Lunes', 1, '18', '20', NULL, '2023-09-22 21:36:10', '2023-09-22 21:36:10'),
(230, 26, 59, 2, 24, 'Martes', 2, '14', '16', NULL, '2023-09-22 21:37:08', '2023-09-22 21:37:08'),
(231, 38, 32, 1, 24, 'Martes', 2, '16', '18', NULL, '2023-09-22 21:37:38', '2023-09-22 21:37:38'),
(232, 40, 63, 1, 24, 'Miércoles', 3, '11', '13', NULL, '2023-09-22 21:38:08', '2023-09-22 21:38:08'),
(233, 26, 59, 2, 24, 'Miércoles', 3, '18', '20', NULL, '2023-09-22 21:38:33', '2023-09-22 21:38:33'),
(234, 26, 59, 2, 24, 'Jueves', 4, '14', '15', NULL, '2023-09-22 21:39:05', '2023-09-22 21:39:05'),
(235, 38, 32, 1, 24, 'Jueves', 4, '18', '20', NULL, '2023-09-22 21:39:34', '2023-09-22 21:39:34'),
(236, 10, 138, 1, 25, 'Martes', 2, '14', '17', NULL, '2023-09-22 21:40:21', '2023-09-22 21:40:21'),
(238, 10, 134, 1, 25, 'Miércoles', 3, '7', '10', NULL, '2023-09-22 21:41:41', '2023-09-22 21:41:41'),
(239, 10, 119, 1, 25, 'Miércoles', 3, '14', '17', NULL, '2023-09-22 21:42:08', '2023-09-22 21:42:08'),
(240, 10, 138, 1, 25, 'Jueves', 4, '14', '17', NULL, '2023-09-22 21:42:38', '2023-09-22 21:42:38'),
(241, 10, 134, 1, 25, 'Viernes', 5, '7', '10', NULL, '2023-09-22 21:43:05', '2023-09-22 21:43:05'),
(242, 10, 119, 1, 25, 'Viernes', 5, '14', '17', NULL, '2023-09-22 21:43:34', '2023-09-22 21:43:34'),
(243, 33, 14, 1, 26, 'Lunes', 1, '7', '9', NULL, '2023-09-22 21:44:29', '2023-09-22 21:44:29'),
(244, 28, 7, 2, 26, 'Lunes', 1, '14', '16', NULL, '2023-09-22 21:44:58', '2023-09-22 21:44:58'),
(245, 35, 14, 2, 26, 'Martes', 2, '9', '11', NULL, '2023-09-22 21:45:31', '2023-09-22 21:45:31'),
(246, 33, 14, 1, 26, 'Miércoles', 3, '7', '9', NULL, '2023-09-22 21:46:10', '2023-09-22 21:46:10'),
(247, 35, 14, 2, 26, 'Miércoles', 3, '11', '13', NULL, '2023-09-22 21:46:36', '2023-09-22 21:46:36'),
(248, 28, 7, 2, 26, 'Miércoles', 3, '14', '16', NULL, '2023-09-22 21:46:59', '2023-09-22 21:46:59'),
(249, 33, 14, 1, 26, 'Viernes', 5, '7', '8', NULL, '2023-09-22 21:48:21', '2023-09-22 21:48:21'),
(250, 35, 14, 2, 26, 'Viernes', 5, '9', '10', NULL, '2023-09-22 21:48:48', '2023-09-22 21:48:48'),
(251, 28, 7, 2, 26, 'Viernes', 5, '15', '16', NULL, '2023-09-22 21:49:14', '2023-09-22 21:49:14'),
(252, 8, 148, 1, 27, 'Lunes', 1, '14', '16', NULL, '2023-09-22 21:49:58', '2023-09-22 21:49:58'),
(254, 9, 117, 1, 27, 'Martes', 2, '14', '17', NULL, '2023-09-22 21:51:41', '2023-09-22 21:51:41'),
(257, 9, 117, 1, 27, 'Miércoles', 3, '17', '20', NULL, '2023-09-22 21:54:47', '2023-09-22 21:54:47'),
(258, 9, 148, 1, 27, 'Jueves', 4, '14', '16', NULL, '2023-09-22 21:55:10', '2023-09-22 21:55:10'),
(260, 8, 148, 1, 27, 'Viernes', 5, '14', '16', NULL, '2023-09-22 21:56:19', '2023-09-22 21:56:19'),
(262, 7, 162, 1, 28, 'Lunes', 1, '16', '18', NULL, '2023-09-22 21:57:39', '2023-09-22 21:57:39'),
(263, 4, 174, 1, 28, 'Martes', 2, '8', '10', NULL, '2023-09-22 21:58:13', '2023-09-22 21:58:13'),
(265, 4, 182, 1, 28, 'Martes', 2, '15', '17', NULL, '2023-09-22 21:59:13', '2023-09-22 21:59:13'),
(266, 6, 162, 1, 28, 'Miércoles', 3, '14', '17', NULL, '2023-09-22 21:59:51', '2023-09-22 21:59:51'),
(267, 4, 174, 1, 28, 'Jueves', 4, '8', '11', NULL, '2023-09-22 22:00:24', '2023-09-22 22:00:24'),
(269, 1, 146, 1, 29, 'Lunes', 1, '7', '10', NULL, '2023-09-22 22:01:44', '2023-09-22 22:01:44'),
(270, 2, 101, 1, 29, 'Miércoles', 3, '7', '10', NULL, '2023-09-22 22:02:11', '2023-09-22 22:02:11'),
(271, 9, 101, 2, 29, 'Miércoles', 3, '10', '13', NULL, '2023-09-22 22:02:39', '2023-09-22 22:02:39'),
(272, 1, 146, 1, 29, 'Jueves', 4, '7', '10', NULL, '2023-09-22 22:03:15', '2023-09-22 22:03:15'),
(273, 1, 101, 2, 29, 'Jueves', 4, '10', '13', NULL, '2023-09-22 22:03:41', '2023-09-22 22:03:41'),
(274, 1, 128, 1, 29, 'Jueves', 4, '16', '18', NULL, '2023-09-22 22:05:32', '2023-09-22 22:05:32'),
(275, 2, 101, 1, 29, 'Viernes', 5, '7', '10', NULL, '2023-09-22 22:05:56', '2023-09-22 22:05:56'),
(276, 1, 128, 1, 29, 'Viernes', 5, '14', '16', NULL, '2023-09-22 22:06:25', '2023-09-22 22:06:25'),
(277, 40, 62, 1, 30, 'Lunes', 1, '9', '10', NULL, '2023-09-22 22:07:05', '2023-09-22 22:07:05'),
(278, 32, 70, 1, 30, 'Lunes', 1, '14', '16', NULL, '2023-09-22 22:07:37', '2023-09-22 22:07:37'),
(279, 40, 62, 1, 30, 'Martes', 2, '7', '9', NULL, '2023-09-22 22:08:00', '2023-09-22 22:08:00'),
(280, 32, 70, 1, 30, 'Martes', 2, '14', '15', NULL, '2023-09-22 22:08:32', '2023-09-22 22:08:32'),
(281, 32, 70, 1, 30, 'Miércoles', 3, '14', '16', NULL, '2023-09-22 22:09:01', '2023-09-22 22:09:01'),
(283, 23, 104, 1, 31, 'Lunes', 1, '11', '13', NULL, '2023-09-22 22:10:24', '2023-09-22 22:10:24'),
(284, 31, 133, 1, 31, 'Lunes', 1, '8', '10', NULL, '2023-09-22 22:11:15', '2023-09-22 22:11:15'),
(285, 23, 104, 1, 31, 'Martes', 2, '9', '11', NULL, '2023-09-22 22:11:42', '2023-09-22 22:11:42'),
(286, 24, 104, 2, 31, 'Martes', 2, '11', '13', NULL, '2023-09-22 22:12:08', '2023-09-22 22:12:08'),
(287, 24, 104, 2, 31, 'Miércoles', 3, '8', '10', NULL, '2023-09-22 22:12:33', '2023-09-22 22:12:33'),
(288, 31, 133, 1, 31, 'Miércoles', 3, '10', '12', NULL, '2023-09-22 22:13:06', '2023-09-22 22:13:06'),
(289, 31, 133, 1, 31, 'Jueves', 4, '11', '13', NULL, '2023-09-22 22:13:36', '2023-09-22 22:13:36'),
(292, 22, 145, 2, 32, 'Martes', 2, '8', '11', NULL, '2023-09-22 22:15:27', '2023-09-22 22:15:27'),
(295, 24, 105, 1, 32, 'Miércoles', 3, '14', '17', NULL, '2023-09-22 22:17:26', '2023-09-22 22:17:26'),
(297, 22, 145, 2, 32, 'Viernes', 5, '9', '11', NULL, '2023-09-22 22:19:27', '2023-09-22 22:19:27'),
(299, 24, 105, 1, 32, 'Viernes', 5, '17', '19', NULL, '2023-09-22 22:20:31', '2023-09-22 22:20:31'),
(301, 26, 50, 2, 33, 'Lunes', 1, '9', '11', NULL, '2023-09-22 22:22:16', '2023-09-22 22:22:16'),
(303, 26, 50, 2, 33, 'Martes', 2, '9', '11', NULL, '2023-09-22 22:23:23', '2023-09-22 22:23:23'),
(304, 26, 50, 2, 33, 'Miércoles', 3, '8', '9', NULL, '2023-09-22 22:23:47', '2023-09-22 22:23:47'),
(305, 40, 65, 1, 33, 'Miércoles', 3, '9', '11', NULL, '2023-09-22 22:24:16', '2023-09-22 22:24:16'),
(309, 36, 89, 1, 34, 'Lunes', 1, '11', '13', NULL, '2023-09-22 22:26:50', '2023-09-22 22:26:50'),
(311, 36, 89, 1, 34, 'Miércoles', 3, '11', '13', NULL, '2023-09-22 22:27:51', '2023-09-22 22:27:51'),
(312, 35, 94, 1, 34, 'Miércoles', 3, '14', '16', NULL, '2023-09-22 22:28:30', '2023-09-22 22:28:30'),
(314, 35, 94, 1, 34, 'Jueves', 4, '14', '16', NULL, '2023-09-22 22:29:48', '2023-09-22 22:29:48'),
(315, 13, 84, 2, 34, 'Jueves', 4, '16', '19', NULL, '2023-09-22 22:31:02', '2023-09-22 22:31:02'),
(317, 35, 94, 1, 34, 'Viernes', 5, '18', '20', NULL, '2023-09-22 22:32:12', '2023-09-22 22:32:12'),
(337, 5, 9, 1, 36, 'Miércoles', 3, '16', '18', NULL, '2023-09-22 22:46:08', '2023-09-22 22:46:08'),
(339, 5, 9, 1, 36, 'Jueves', 4, '16', '18', NULL, '2023-09-22 22:47:13', '2023-09-22 22:47:13'),
(341, 32, 79, 1, 37, 'Martes', 2, '9', '11', NULL, '2023-09-22 22:49:24', '2023-09-22 22:49:24'),
(342, 32, 78, 1, 37, 'Jueves', 4, '8', '10', NULL, '2023-09-22 22:49:56', '2023-09-22 22:49:56'),
(343, 6, 142, 1, 38, 'Lunes', 1, '8', '10', NULL, '2023-09-22 22:50:55', '2023-09-22 22:50:55'),
(345, 8, 113, 1, 38, 'Martes', 2, '7', '10', NULL, '2023-09-22 22:51:52', '2023-09-22 22:51:52'),
(346, 9, 140, 1, 38, 'Martes', 2, '17', '20', NULL, '2023-09-22 22:52:20', '2023-09-22 22:52:20'),
(347, 6, 142, 1, 38, 'Miércoles', 3, '9', '11', NULL, '2023-09-22 22:52:56', '2023-09-22 22:52:56'),
(349, 8, 113, 1, 38, 'Jueves', 4, '9', '11', NULL, '2023-09-22 22:53:59', '2023-09-22 22:53:59'),
(350, 9, 140, 1, 38, 'Jueves', 4, '17', '20', NULL, '2023-09-22 22:54:31', '2023-09-22 22:54:31'),
(351, 6, 142, 1, 38, 'Viernes', 5, '7', '10', NULL, '2023-09-22 22:55:03', '2023-09-22 22:55:03'),
(352, 7, 10, 1, 39, 'Lunes', 1, '18', '20', NULL, '2023-09-22 22:55:47', '2023-09-22 22:55:47'),
(353, 14, 5, 1, 39, 'Martes', 2, '11', '13', NULL, '2023-09-22 22:56:23', '2023-09-22 22:56:23'),
(358, 14, 5, 1, 39, 'Jueves', 4, '11', '13', NULL, '2023-09-22 23:00:00', '2023-09-22 23:00:00'),
(359, 3, 129, 1, 39, 'Jueves', 4, '14', '16', NULL, '2023-09-22 23:00:38', '2023-09-22 23:00:38'),
(360, 24, 109, 1, 39, 'Jueves', 4, '16', '18', NULL, '2023-09-22 23:01:03', '2023-09-22 23:01:03'),
(361, 14, 5, 2, 39, 'Viernes', 5, '7', '9', NULL, '2023-09-22 23:01:24', '2023-09-22 23:01:24'),
(362, 3, 129, 1, 39, 'Viernes', 5, '16', '18', NULL, '2023-09-22 23:01:53', '2023-09-22 23:01:53'),
(363, 26, 51, 2, 40, 'Lunes', 1, '7', '9', NULL, '2023-09-22 23:02:31', '2023-09-22 23:02:31'),
(370, 26, 51, 2, 40, 'Miércoles', 3, '9', '11', NULL, '2023-09-22 23:08:08', '2023-09-22 23:08:08'),
(376, 26, 51, 2, 40, 'Viernes', 5, '9', '10', NULL, '2023-09-22 23:12:28', '2023-09-22 23:12:28'),
(379, 14, 82, 2, 41, 'Lunes', 1, '14', '16', NULL, '2023-09-22 23:14:23', '2023-09-22 23:14:23'),
(380, 12, 91, 2, 41, 'Martes', 2, '7', '9', NULL, '2023-09-22 23:14:56', '2023-09-22 23:14:56'),
(381, 12, 75, 1, 41, 'Martes', 2, '11', '13', NULL, '2023-09-22 23:15:24', '2023-09-22 23:15:24'),
(382, 31, 85, 1, 41, 'Martes', 2, '14', '16', NULL, '2023-09-22 23:15:56', '2023-09-22 23:15:56'),
(383, 12, 75, 1, 41, 'Miércoles', 3, '7', '9', NULL, '2023-09-22 23:16:19', '2023-09-22 23:16:19'),
(384, 14, 82, 2, 41, 'Miércoles', 3, '14', '16', NULL, '2023-09-22 23:17:00', '2023-09-22 23:17:00'),
(385, 12, 91, 2, 41, 'Jueves', 4, '10', '12', NULL, '2023-09-22 23:17:35', '2023-09-22 23:17:35'),
(386, 31, 85, 1, 41, 'Jueves', 4, '14', '16', NULL, '2023-09-22 23:18:03', '2023-09-22 23:18:03'),
(387, 12, 91, 2, 41, 'Viernes', 5, '8', '9', NULL, '2023-09-22 23:18:48', '2023-09-22 23:18:48'),
(388, 8, 111, 1, 43, 'Lunes', 1, '7', '10', NULL, '2023-09-22 23:19:54', '2023-09-22 23:19:54'),
(389, 1, 122, 1, 43, 'Lunes', 1, '11', '13', NULL, '2023-09-22 23:20:25', '2023-09-22 23:20:25'),
(390, 6, 158, 1, 43, 'Lunes', 1, '18', '20', NULL, '2023-09-22 23:20:59', '2023-09-22 23:20:59'),
(391, 1, 122, 1, 43, 'Martes', 2, '7', '9', NULL, '2023-09-22 23:21:26', '2023-09-22 23:21:26'),
(392, 6, 158, 1, 43, 'Martes', 2, '18', '20', NULL, '2023-09-22 23:21:50', '2023-09-22 23:21:50'),
(393, 1, 122, 1, 43, 'Miércoles', 3, '7', '9', NULL, '2023-09-22 23:22:39', '2023-09-22 23:22:39'),
(394, 8, 111, 1, 43, 'Miércoles', 3, '10', '13', NULL, '2023-09-22 23:23:19', '2023-09-22 23:23:19'),
(395, 6, 158, 1, 43, 'Viernes', 5, '17', '18', NULL, '2023-09-22 23:23:53', '2023-09-22 23:23:53'),
(396, 32, 77, 1, 44, 'Lunes', 1, '7', '9', NULL, '2023-09-22 23:24:50', '2023-09-22 23:24:50'),
(397, 31, 83, 1, 44, 'Lunes', 1, '16', '18', NULL, '2023-09-22 23:25:21', '2023-09-22 23:25:21'),
(398, 12, 80, 2, 44, 'Martes', 2, '16', '18', NULL, '2023-09-22 23:25:58', '2023-09-22 23:25:58'),
(399, 12, 80, 1, 44, 'Martes', 2, '18', '20', NULL, '2023-09-22 23:26:33', '2023-09-22 23:26:33'),
(400, 32, 77, 1, 44, 'Miércoles', 3, '11', '13', NULL, '2023-09-22 23:27:36', '2023-09-22 23:27:36'),
(401, 12, 80, 1, 44, 'Miércoles', 3, '19', '20', NULL, '2023-09-22 23:28:13', '2023-09-22 23:28:13'),
(402, 12, 80, 2, 44, 'Jueves', 4, '14', '16', NULL, '2023-09-22 23:28:43', '2023-09-22 23:28:43'),
(404, 12, 80, 2, 44, 'Viernes', 5, '15', '16', NULL, '2023-09-22 23:29:44', '2023-09-22 23:29:44'),
(405, 31, 83, 1, 44, 'Viernes', 5, '18', '20', NULL, '2023-09-22 23:30:33', '2023-09-22 23:30:33'),
(406, 4, 177, 1, 46, 'Lunes', 1, '7', '9', NULL, '2023-09-23 00:51:17', '2023-09-23 00:51:17'),
(407, 5, 126, 1, 46, 'Lunes', 1, '17', '20', NULL, '2023-09-23 00:51:51', '2023-09-23 00:51:51'),
(408, 5, 126, 1, 46, 'Martes', 2, '14', '16', NULL, '2023-09-23 00:52:33', '2023-09-23 00:52:33'),
(409, 4, 177, 1, 46, 'Miércoles', 3, '11', '13', NULL, '2023-09-23 00:53:07', '2023-09-23 00:53:07'),
(410, 3, 137, 2, 46, 'Miércoles', 3, '14', '17', NULL, '2023-09-23 00:53:33', '2023-09-23 00:53:33'),
(411, 8, 170, 2, 46, 'Jueves', 4, '17', '20', NULL, '2023-09-23 00:54:11', '2023-09-23 00:54:11'),
(412, 3, 137, 1, 46, 'Viernes', 5, '14', '16', NULL, '2023-09-23 00:54:43', '2023-09-23 00:54:43'),
(413, 8, 170, 1, 46, 'Viernes', 5, '16', '19', NULL, '2023-09-23 00:55:20', '2023-09-23 00:55:20'),
(414, 5, 126, 1, 46, 'Viernes', 5, '19', '20', NULL, '2023-09-23 00:56:56', '2023-09-23 00:56:56'),
(415, 22, 147, 2, 47, 'Lunes', 1, '7', '9', NULL, '2023-09-23 00:57:50', '2023-09-23 00:57:50'),
(416, 7, 178, 1, 47, 'Lunes', 1, '9', '12', NULL, '2023-09-23 00:58:44', '2023-09-23 00:58:44'),
(417, 7, 168, 1, 47, 'Martes', 2, '14', '17', NULL, '2023-09-23 00:59:15', '2023-09-23 00:59:15'),
(418, 7, 183, 1, 47, 'Martes', 2, '17', '20', NULL, '2023-09-23 00:59:39', '2023-09-23 00:59:39'),
(419, 7, 178, 1, 47, 'Miércoles', 3, '9', '11', NULL, '2023-09-23 01:00:25', '2023-09-23 01:00:25'),
(420, 7, 168, 1, 47, 'Miércoles', 3, '14', '17', NULL, '2023-09-23 01:02:35', '2023-09-23 01:02:35'),
(421, 7, 183, 1, 47, 'Jueves', 4, '14', '17', NULL, '2023-09-23 01:03:06', '2023-09-23 01:03:06'),
(422, 2, 166, 1, 48, 'Lunes', 1, '10', '13', NULL, '2023-09-23 01:03:57', '2023-09-23 01:03:57'),
(423, 2, 161, 1, 48, 'Martes', 2, '14', '16', NULL, '2023-09-23 01:04:51', '2023-09-23 01:04:51'),
(424, 2, 110, 1, 48, 'Martes', 2, '16', '18', NULL, '2023-09-23 01:05:37', '2023-09-23 01:05:37'),
(425, 2, 166, 1, 48, 'Miércoles', 3, '10', '13', NULL, '2023-09-23 01:06:15', '2023-09-23 01:06:15'),
(426, 2, 161, 1, 48, 'Jueves', 4, '14', '17', NULL, '2023-09-23 01:06:39', '2023-09-23 01:06:39'),
(427, 2, 110, 1, 48, 'Viernes', 5, '14', '17', NULL, '2023-09-23 01:07:06', '2023-09-23 01:07:06'),
(428, 13, 99, 1, 49, 'Lunes', 1, '7', '9', NULL, '2023-09-23 01:07:42', '2023-09-23 01:07:42'),
(429, 12, 99, 2, 49, 'Lunes', 1, '9', '11', NULL, '2023-09-23 01:08:21', '2023-09-23 01:08:21'),
(430, 13, 99, 2, 49, 'Martes', 2, '8', '11', NULL, '2023-09-23 01:08:51', '2023-09-23 01:08:51'),
(431, 26, 53, 2, 49, 'Martes', 2, '11', '13', NULL, '2023-09-23 01:09:19', '2023-09-23 01:09:19'),
(432, 13, 99, 1, 49, 'Miércoles', 3, '7', '10', NULL, '2023-09-23 01:09:53', '2023-09-23 01:09:53'),
(433, 26, 53, 2, 49, 'Jueves', 4, '7', '9', NULL, '2023-09-23 01:10:20', '2023-09-23 01:10:20'),
(434, 13, 99, 1, 49, 'Viernes', 5, '7', '9', NULL, '2023-09-23 01:10:51', '2023-09-23 01:10:51'),
(435, 12, 99, 2, 49, 'Viernes', 5, '9', '11', NULL, '2023-09-23 01:11:19', '2023-09-23 01:11:19'),
(437, 32, 68, 1, 50, 'Lunes', 1, '18', '19', NULL, '2023-09-23 01:13:54', '2023-09-23 01:13:54'),
(441, 26, 52, 2, 50, 'Miércoles', 3, '11', '13', NULL, '2023-09-23 01:15:50', '2023-09-23 01:15:50'),
(442, 40, 66, 1, 50, 'Jueves', 4, '7', '9', NULL, '2023-09-23 01:16:31', '2023-09-23 01:16:31'),
(443, 26, 52, 2, 50, 'Jueves', 4, '9', '11', NULL, '2023-09-23 01:16:59', '2023-09-23 01:16:59'),
(444, 40, 66, 1, 50, 'Viernes', 5, '7', '8', NULL, '2023-09-23 01:17:23', '2023-09-23 01:17:23'),
(445, 26, 52, 2, 50, 'Viernes', 5, '8', '9', NULL, '2023-09-23 01:17:52', '2023-09-23 01:17:52'),
(447, 32, 68, 1, 50, 'Viernes', 5, '16', '18', NULL, '2023-09-23 01:18:45', '2023-09-23 01:18:45'),
(449, 38, 30, 1, 51, 'Lunes', 1, '14', '16', NULL, '2023-09-23 01:26:36', '2023-09-23 01:26:36'),
(451, 38, 30, 1, 51, 'Martes', 2, '14', '16', NULL, '2023-09-23 01:27:36', '2023-09-23 01:27:36'),
(457, 38, 30, 1, 51, 'Viernes', 5, '14', '15', NULL, '2023-09-23 01:30:53', '2023-09-23 01:30:53'),
(458, 28, 3, 2, 52, 'Lunes', 1, '9', '11', NULL, '2023-09-23 01:31:52', '2023-09-23 01:31:52'),
(460, 36, 20, 1, 52, 'Lunes', 1, '16', '18', NULL, '2023-09-23 01:32:55', '2023-09-23 01:32:55'),
(461, 28, 3, 2, 52, 'Miércoles', 3, '9', '11', NULL, '2023-09-23 01:33:18', '2023-09-23 01:33:18'),
(462, 36, 20, 2, 52, 'Miércoles', 3, '16', '18', NULL, '2023-09-23 01:33:43', '2023-09-23 01:33:43'),
(463, 27, 2, 1, 52, 'Jueves', 4, '9', '11', NULL, '2023-09-23 01:34:07', '2023-09-23 01:34:07'),
(464, 36, 20, 2, 52, 'Jueves', 4, '14', '16', NULL, '2023-09-23 01:34:29', '2023-09-23 01:34:29'),
(465, 28, 3, 2, 52, 'Viernes', 5, '9', '10', NULL, '2023-09-23 01:34:51', '2023-09-23 01:34:51'),
(466, 14, 16, 1, 53, 'Lunes', 1, '9', '11', NULL, '2023-09-23 01:35:32', '2023-09-23 01:35:32'),
(467, 14, 17, 1, 53, 'Lunes', 1, '11', '13', NULL, '2023-09-23 01:36:00', '2023-09-23 01:36:00'),
(468, 7, 16, 1, 53, 'Martes', 2, '9', '11', NULL, '2023-09-23 01:36:34', '2023-09-23 01:36:34'),
(469, 14, 17, 1, 53, 'Miércoles', 3, '9', '11', NULL, '2023-09-23 01:37:01', '2023-09-23 01:37:01'),
(470, 11, 34, 1, 53, 'Miércoles', 3, '16', '18', NULL, '2023-09-23 01:37:28', '2023-09-23 01:37:28'),
(471, 7, 16, 2, 53, 'Jueves', 4, '11', '13', NULL, '2023-09-23 01:38:32', '2023-09-23 01:38:32'),
(472, 11, 34, 1, 53, 'Jueves', 4, '16', '18', NULL, '2023-09-23 01:39:40', '2023-09-23 01:39:40'),
(473, 7, 16, 2, 53, 'Viernes', 5, '11', '13', NULL, '2023-09-23 01:40:26', '2023-09-23 01:40:26'),
(474, 32, 74, 1, 54, 'Lunes', 1, '11', '13', NULL, '2023-09-23 01:43:04', '2023-09-23 01:43:04'),
(475, 32, 74, 1, 54, 'Martes', 2, '7', '9', NULL, '2023-09-23 01:44:02', '2023-09-23 01:44:02'),
(476, 35, 92, 1, 54, 'Miércoles', 3, '16', '18', NULL, '2023-09-23 01:44:38', '2023-09-23 01:44:38'),
(477, 32, 74, 1, 54, 'Jueves', 4, '10', '11', NULL, '2023-09-23 01:45:08', '2023-09-23 01:45:08'),
(478, 35, 92, 1, 54, 'Jueves', 4, '16', '17', NULL, '2023-09-23 01:45:39', '2023-09-23 01:45:39'),
(479, 35, 92, 1, 54, 'Viernes', 5, '16', '18', NULL, '2023-09-23 01:46:09', '2023-09-23 01:46:09'),
(480, 2, 55, 1, 55, 'Lunes', 1, '7', '9', NULL, '2023-09-23 01:46:39', '2023-09-23 01:46:39'),
(481, 2, 61, 1, 55, 'Lunes', 1, '14', '16', NULL, '2023-09-23 01:47:10', '2023-09-23 01:47:10'),
(482, 2, 61, 2, 55, 'Lunes', 1, '16', '18', NULL, '2023-09-23 01:47:36', '2023-09-23 01:47:36'),
(483, 2, 55, 2, 55, 'Martes', 2, '7', '9', NULL, '2023-09-23 01:47:57', '2023-09-23 01:47:57'),
(485, 2, 61, 1, 55, 'Miércoles', 3, '14', '16', NULL, '2023-09-23 01:48:49', '2023-09-23 01:48:49'),
(486, 2, 61, 2, 55, 'Miércoles', 3, '16', '18', NULL, '2023-09-23 01:50:16', '2023-09-23 01:50:16'),
(487, 2, 55, 1, 55, 'Jueves', 4, '10', '12', NULL, '2023-09-23 01:50:40', '2023-09-23 01:50:40'),
(489, 2, 55, 2, 55, 'Viernes', 5, '10', '12', NULL, '2023-09-23 01:51:33', '2023-09-23 01:51:33'),
(490, 27, 1, 1, 56, 'Lunes', 1, '7', '9', NULL, '2023-09-23 01:52:17', '2023-09-23 01:52:17'),
(491, 27, 7, 1, 56, 'Lunes', 1, '14', '16', NULL, '2023-09-23 01:52:41', '2023-09-23 01:52:41'),
(492, 27, 1, 1, 56, 'Martes', 2, '7', '9', NULL, '2023-09-23 01:53:02', '2023-09-23 01:53:02'),
(493, 33, 15, 1, 56, 'Miércoles', 3, '11', '13', NULL, '2023-09-23 01:53:28', '2023-09-23 01:53:28'),
(494, 27, 7, 1, 56, 'Miércoles', 3, '14', '16', NULL, '2023-09-23 01:53:57', '2023-09-23 01:53:57'),
(495, 27, 1, 1, 56, 'Jueves', 4, '7', '9', NULL, '2023-09-23 01:54:16', '2023-09-23 01:54:16'),
(496, 33, 15, 1, 56, 'Viernes', 5, '8', '10', NULL, '2023-09-23 01:54:44', '2023-09-23 01:54:44'),
(497, 27, 7, 1, 56, 'Viernes', 5, '15', '16', NULL, '2023-09-23 01:55:09', '2023-09-23 01:55:09'),
(499, 31, 81, 1, 57, 'Lunes', 1, '18', '20', NULL, '2023-09-23 01:56:25', '2023-09-23 01:56:25'),
(500, 23, 75, 2, 57, 'Martes', 2, '11', '13', NULL, '2023-09-23 01:57:00', '2023-09-23 01:57:00'),
(502, 23, 87, 2, 57, 'Miércoles', 3, '7', '9', NULL, '2023-09-23 01:58:20', '2023-09-23 01:58:20'),
(505, 24, 107, 1, 57, 'Miércoles', 3, '17', '20', NULL, '2023-09-23 02:00:51', '2023-09-23 02:00:51'),
(506, 24, 107, 1, 57, 'Jueves', 4, '18', '20', NULL, '2023-09-23 02:01:16', '2023-09-23 02:01:16'),
(507, 31, 81, 1, 57, 'Viernes', 5, '14', '16', NULL, '2023-09-23 02:01:55', '2023-09-23 02:01:55'),
(508, 28, 1, 2, 58, 'Lunes', 1, '7', '9', NULL, '2023-09-23 02:02:36', '2023-09-23 02:02:36'),
(509, 28, 1, 2, 58, 'Martes', 2, '7', '9', NULL, '2023-09-23 02:02:59', '2023-09-23 02:02:59'),
(510, 28, 4, 2, 58, 'Martes', 2, '9', '11', NULL, '2023-09-23 02:03:22', '2023-09-23 02:03:22'),
(511, 33, 18, 1, 58, 'Martes', 2, '11', '13', NULL, '2023-09-23 02:03:46', '2023-09-23 02:03:46'),
(512, 27, 4, 1, 58, 'Miércoles', 3, '7', '9', NULL, '2023-09-23 02:04:07', '2023-09-23 02:04:07'),
(513, 28, 4, 2, 58, 'Miércoles', 3, '11', '13', NULL, '2023-09-23 02:04:36', '2023-09-23 02:04:36'),
(514, 28, 1, 2, 58, 'Jueves', 4, '7', '9', NULL, '2023-09-23 02:05:03', '2023-09-23 02:05:03'),
(515, 33, 18, 1, 58, 'Jueves', 4, '9', '11', NULL, '2023-09-23 02:05:24', '2023-09-23 02:05:24'),
(516, 27, 4, 1, 58, 'Viernes', 5, '7', '9', NULL, '2023-09-23 02:05:56', '2023-09-23 02:05:56'),
(519, 11, 135, 1, 60, 'Lunes', 1, '10', '13', NULL, '2023-09-23 02:08:05', '2023-09-23 02:08:05'),
(521, 11, 156, 1, 60, 'Martes', 2, '7', '10', NULL, '2023-09-23 02:09:03', '2023-09-23 02:09:03'),
(522, 11, 135, 1, 60, 'Martes', 2, '10', '13', NULL, '2023-09-23 02:09:32', '2023-09-23 02:09:32'),
(523, 11, 159, 1, 60, 'Martes', 2, '16', '18', NULL, '2023-09-23 02:10:00', '2023-09-23 02:10:00'),
(525, 11, 156, 1, 60, 'Jueves', 4, '9', '12', NULL, '2023-09-23 02:10:50', '2023-09-23 02:10:50'),
(528, 11, 159, 1, 60, 'Viernes', 5, '15', '17', NULL, '2023-09-23 02:12:11', '2023-09-23 02:12:11'),
(529, 23, 103, 1, 61, 'Lunes', 1, '7', '9', NULL, '2023-09-23 02:13:19', '2023-09-23 02:13:19'),
(530, 24, 103, 2, 61, 'Lunes', 1, '9', '11', NULL, '2023-09-23 02:13:48', '2023-09-23 02:13:48'),
(531, 21, 143, 1, 61, 'Martes', 2, '7', '9', NULL, '2023-09-23 02:14:24', '2023-09-23 02:14:24'),
(532, 22, 143, 2, 61, 'Miércoles', 3, '7', '9', NULL, '2023-09-23 02:14:45', '2023-09-23 02:14:45'),
(533, 23, 103, 1, 61, 'Miércoles', 3, '10', '13', NULL, '2023-09-23 02:15:16', '2023-09-23 02:15:16'),
(534, 22, 143, 2, 61, 'Jueves', 4, '7', '10', NULL, '2023-09-23 02:15:45', '2023-09-23 02:15:45'),
(538, 27, 6, 1, 62, 'Martes', 2, '9', '11', NULL, '2023-09-23 02:18:16', '2023-09-23 02:18:16'),
(539, 28, 6, 2, 62, 'Martes', 2, '11', '13', NULL, '2023-09-23 02:18:41', '2023-09-23 02:18:41'),
(540, 27, 6, 1, 62, 'Miércoles', 3, '11', '13', NULL, '2023-09-23 02:19:02', '2023-09-23 02:19:02'),
(541, 27, 12, 1, 62, 'Miércoles', 3, '18', '20', NULL, '2023-09-23 02:19:31', '2023-09-23 02:19:31'),
(542, 28, 6, 2, 62, 'Jueves', 4, '11', '13', NULL, '2023-09-23 02:19:54', '2023-09-23 02:19:54'),
(543, 28, 12, 2, 62, 'Jueves', 4, '18', '20', NULL, '2023-09-23 02:20:18', '2023-09-23 02:20:18'),
(544, 28, 12, 2, 62, 'Viernes', 5, '16', '17', NULL, '2023-09-23 02:20:49', '2023-09-23 02:20:49'),
(546, 32, 73, 1, 63, 'Lunes', 1, '16', '18', NULL, '2023-09-23 02:22:29', '2023-09-23 02:22:29'),
(549, 32, 73, 1, 63, 'Miércoles', 3, '18', '19', NULL, '2023-09-23 02:24:02', '2023-09-23 02:24:02'),
(550, 13, 72, 1, 63, 'Jueves', 4, '14', '16', NULL, '2023-09-23 02:24:49', '2023-09-23 02:24:49'),
(551, 32, 73, 1, 63, 'Jueves', 4, '18', '20', NULL, '2023-09-23 02:25:15', '2023-09-23 02:25:15'),
(552, 13, 72, 1, 63, 'Viernes', 5, '14', '16', NULL, '2023-09-23 02:25:42', '2023-09-23 02:25:42'),
(556, 41, 206, 1, 64, 'Martes', 2, '7', '9', NULL, '2023-09-23 02:29:05', '2023-09-23 02:29:05'),
(559, 20, 197, 2, 64, 'Martes', 2, '16', '18', NULL, '2023-09-23 02:30:28', '2023-09-23 02:30:28'),
(560, 20, 197, 1, 64, 'Miércoles', 3, '9', '11', NULL, '2023-09-23 02:30:59', '2023-09-23 02:30:59'),
(561, 41, 206, 1, 64, 'Miércoles', 3, '11', '13', NULL, '2023-09-23 02:31:25', '2023-09-23 02:31:25'),
(562, 20, 197, 2, 64, 'Miércoles', 3, '16', '17', NULL, '2023-09-23 02:31:54', '2023-09-23 02:31:54'),
(563, 20, 197, 1, 64, 'Jueves', 4, '8', '9', NULL, '2023-09-23 02:32:23', '2023-09-23 02:32:23'),
(565, 41, 206, 1, 64, 'Jueves', 4, '11', '12', NULL, '2023-09-23 02:33:25', '2023-09-23 02:33:25'),
(568, 20, 197, 2, 64, 'Viernes', 5, '16', '18', NULL, '2023-09-23 02:36:43', '2023-09-23 02:36:43'),
(569, 4, 125, 1, 65, 'Lunes', 1, '9', '11', NULL, '2023-09-23 02:37:34', '2023-09-23 02:37:34'),
(570, 24, 102, 2, 65, 'Lunes', 1, '11', '13', NULL, '2023-09-23 02:38:17', '2023-09-23 02:38:17'),
(571, 23, 102, 1, 65, 'Martes', 2, '7', '9', NULL, '2023-09-23 02:38:56', '2023-09-23 02:38:56'),
(573, 4, 176, 1, 65, 'Miércoles', 3, '7', '9', NULL, '2023-09-23 02:43:18', '2023-09-23 02:43:18'),
(576, 24, 102, 2, 65, 'Jueves', 4, '7', '10', NULL, '2023-09-23 02:44:57', '2023-09-23 02:44:57'),
(577, 23, 102, 1, 65, 'Jueves', 4, '10', '13', NULL, '2023-09-23 02:45:31', '2023-09-23 02:45:31'),
(578, 4, 176, 1, 65, 'Viernes', 5, '7', '10', NULL, '2023-09-23 02:46:43', '2023-09-23 02:46:43'),
(579, 4, 125, 1, 65, 'Viernes', 5, '10', '11', NULL, '2023-09-23 02:47:14', '2023-09-23 02:47:14'),
(580, 7, 121, 1, 66, 'Lunes', 1, '7', '9', NULL, '2023-09-23 02:48:41', '2023-09-23 02:48:41'),
(581, 9, 146, 2, 66, 'Lunes', 1, '9', '12', NULL, '2023-09-23 02:49:12', '2023-09-23 02:49:12'),
(582, 4, 171, 1, 66, 'Lunes', 1, '14', '17', NULL, '2023-09-23 02:50:42', '2023-09-23 02:50:42'),
(583, 1, 157, 1, 66, 'Martes', 2, '10', '13', NULL, '2023-09-23 02:51:14', '2023-09-23 02:51:14'),
(584, 1, 157, 1, 66, 'Miércoles', 3, '9', '12', NULL, '2023-09-23 02:51:36', '2023-09-23 02:51:36'),
(586, 9, 146, 2, 66, 'Jueves', 4, '10', '13', NULL, '2023-09-23 02:52:35', '2023-09-23 02:52:35'),
(587, 7, 121, 1, 66, 'Viernes', 5, '7', '10', NULL, '2023-09-23 02:53:03', '2023-09-23 02:53:03'),
(588, 30, 197, 3, 67, 'Lunes', 1, '9', '11', NULL, '2023-09-23 02:53:58', '2023-09-23 02:53:58'),
(590, 30, 197, 3, 67, 'Martes', 2, '9', '11', NULL, '2023-09-23 02:56:28', '2023-09-23 02:56:28'),
(592, 30, 197, 3, 67, 'Miércoles', 3, '8', '9', NULL, '2023-09-23 02:57:36', '2023-09-23 02:57:36'),
(593, 26, 60, 2, 67, 'Miércoles', 3, '14', '16', NULL, '2023-09-23 02:58:04', '2023-09-23 02:58:04'),
(596, 26, 60, 2, 67, 'Viernes', 5, '14', '16', NULL, '2023-09-23 02:59:45', '2023-09-23 02:59:45'),
(598, 26, 54, 2, 68, 'Lunes', 1, '11', '13', NULL, '2023-09-23 03:01:19', '2023-09-23 03:01:19'),
(601, 26, 58, 2, 68, 'Martes', 2, '18', '20', NULL, '2023-09-23 03:02:40', '2023-09-23 03:02:40'),
(602, 30, 85, 2, 68, 'Miércoles', 3, '16', '18', NULL, '2023-09-23 03:03:09', '2023-09-23 03:03:09'),
(604, 26, 58, 2, 68, 'Jueves', 4, '15', '18', NULL, '2023-09-23 03:05:01', '2023-09-23 03:05:01'),
(606, 26, 54, 2, 68, 'Viernes', 5, '7', '8', NULL, '2023-09-23 03:05:50', '2023-09-23 03:05:50'),
(608, 30, 85, 2, 68, 'Lunes', 1, '18', '20', NULL, '2023-09-23 03:07:56', '2023-09-23 03:07:56'),
(610, 10, 124, 1, 69, 'Martes', 2, '9', '12', NULL, '2023-09-23 03:10:51', '2023-09-23 03:10:51'),
(611, 10, 124, 1, 69, 'Jueves', 4, '9', '12', NULL, '2023-09-23 03:11:28', '2023-09-23 03:11:28'),
(612, 36, 90, 1, 70, 'Lunes', 1, '7', '9', NULL, '2023-09-23 03:12:17', '2023-09-23 03:12:17'),
(613, 31, 90, 2, 70, 'Martes', 2, '11', '13', NULL, '2023-09-23 03:12:54', '2023-09-23 03:12:54'),
(616, 35, 76, 1, 70, 'Miércoles', 3, '9', '11', NULL, '2023-09-23 03:14:51', '2023-09-23 03:14:51'),
(617, 31, 90, 2, 70, 'Jueves', 4, '8', '10', NULL, '2023-09-23 03:15:25', '2023-09-23 03:15:25'),
(618, 36, 90, 1, 70, 'Jueves', 4, '10', '12', NULL, '2023-09-23 03:15:54', '2023-09-23 03:15:54'),
(619, 35, 76, 1, 70, 'Viernes', 5, '10', '12', NULL, '2023-09-23 03:16:21', '2023-09-23 03:16:21'),
(621, 41, 204, 1, 73, 'Lunes', 1, '11', '13', NULL, '2023-09-23 03:19:16', '2023-09-23 03:19:16'),
(623, 41, 204, 1, 73, 'Martes', 2, '11', '13', NULL, '2023-09-23 03:20:22', '2023-09-23 03:20:22'),
(624, 41, 204, 1, 73, 'Miércoles', 3, '9', '11', NULL, '2023-09-23 03:20:47', '2023-09-23 03:20:47'),
(626, 41, 204, 1, 73, 'Jueves', 4, '8', '10', NULL, '2023-09-23 03:21:40', '2023-09-23 03:21:40'),
(630, 13, 97, 1, 74, 'Lunes', 1, '16', '18', NULL, '2023-09-23 03:26:35', '2023-09-23 03:26:35'),
(632, 13, 97, 2, 74, 'Lunes', 1, '18', '20', NULL, '2023-09-23 03:27:31', '2023-09-23 03:27:31'),
(633, 13, 97, 1, 74, 'Martes', 2, '14', '17', NULL, '2023-09-23 03:28:04', '2023-09-23 03:28:04'),
(636, 13, 97, 2, 74, 'Martes', 2, '17', '20', NULL, '2023-09-23 03:29:25', '2023-09-23 03:29:25'),
(638, 13, 84, 1, 34, 'Lunes', 1, '14', '16', NULL, '2023-09-23 03:31:42', '2023-09-23 03:31:42'),
(639, 13, 84, 1, 34, 'Viernes', 5, '16', '18', NULL, '2023-09-23 03:32:23', '2023-09-23 03:32:23'),
(640, 13, 84, 1, 34, 'Miércoles', 3, '16', '19', NULL, '2023-09-23 03:34:33', '2023-09-23 03:34:33'),
(641, 2, 109, 1, 39, 'Martes', 2, '18', '20', NULL, '2023-09-26 00:33:44', '2023-09-26 00:33:44'),
(642, 34, 25, 1, 19, 'Lunes', 1, '9', '11', NULL, '2023-09-26 00:37:24', '2023-09-26 00:37:24'),
(644, 34, 25, 1, 19, 'Viernes', 5, '8', '10', NULL, '2023-09-26 00:39:21', '2023-09-26 00:39:21'),
(645, 43, 37, 1, 51, 'Lunes', 1, '12', '13', NULL, '2023-09-26 00:47:11', '2023-09-26 00:47:11'),
(647, 43, 37, 1, 51, 'Jueves', 4, '9', '11', NULL, '2023-09-26 00:48:30', '2023-09-26 00:48:30'),
(648, 43, 37, 1, 51, 'Martes', 2, '8', '10', NULL, '2023-09-26 00:49:46', '2023-09-26 00:49:46'),
(649, 35, 155, 1, 40, 'Lunes', 1, '9', '11', NULL, '2023-09-26 00:51:16', '2023-09-26 00:51:16'),
(652, 39, 62, 2, 50, 'Lunes', 1, '9', '10', NULL, '2023-09-26 00:55:23', '2023-09-26 00:55:23'),
(653, 39, 62, 1, 50, 'Martes', 2, '7', '9', NULL, '2023-09-26 00:56:03', '2023-09-26 00:56:03'),
(673, 20, 197, 1, 64, 'Lunes', 1, '9', '11', NULL, '2023-09-26 01:50:08', '2023-09-26 01:50:08'),
(675, 27, 12, 1, 62, 'Lunes', 1, '17', '18', NULL, '2023-09-26 17:08:34', '2023-09-26 17:08:34'),
(676, 46, 26, 1, 12, 'Lunes', 1, '11', '13', NULL, '2023-09-26 17:16:13', '2023-09-26 17:16:13'),
(677, 46, 26, 1, 12, 'Jueves', 4, '9', '11', NULL, '2023-09-26 17:16:45', '2023-09-26 17:16:45'),
(678, 46, 26, 1, 12, 'Viernes', 5, '7', '8', NULL, '2023-09-26 17:17:13', '2023-09-26 17:17:13'),
(679, 46, 45, 1, 2, 'Lunes', 1, '18', '20', NULL, '2023-09-26 17:18:32', '2023-09-26 17:18:32'),
(680, 46, 45, 1, 2, 'Jueves', 4, '18', '20', NULL, '2023-09-26 17:19:05', '2023-09-26 17:19:05'),
(681, 46, 27, 1, 2, 'Martes', 2, '9', '11', NULL, '2023-09-26 17:20:05', '2023-09-26 17:20:05'),
(682, 46, 27, 1, 2, 'Jueves', 4, '11', '13', NULL, '2023-09-26 17:20:38', '2023-09-26 17:20:38'),
(683, 46, 44, 1, 2, 'Martes', 2, '14', '16', NULL, '2023-09-26 17:21:26', '2023-09-26 17:21:26'),
(684, 46, 44, 1, 2, 'Viernes', 5, '15', '16', NULL, '2023-09-26 17:22:06', '2023-09-26 17:22:06'),
(685, 46, 43, 1, 51, 'Martes', 2, '16', '18', NULL, '2023-09-26 17:24:02', '2023-09-26 17:24:02'),
(686, 46, 43, 1, 51, 'Jueves', 4, '14', '16', NULL, '2023-09-26 17:24:33', '2023-09-26 17:24:33'),
(687, 46, 42, 1, 51, 'Miércoles', 3, '14', '15', NULL, '2023-09-26 17:25:42', '2023-09-26 17:25:42'),
(688, 46, 42, 1, 51, 'Jueves', 4, '16', '18', NULL, '2023-09-26 17:26:13', '2023-09-26 17:26:13'),
(689, 46, 41, 1, 7, 'Martes', 2, '18', '20', NULL, '2023-09-26 17:27:35', '2023-09-26 17:27:35'),
(690, 46, 41, 1, 7, 'Miércoles', 3, '18', '20', NULL, '2023-09-26 17:28:02', '2023-09-26 17:28:02'),
(691, 46, 29, 1, 4, 'Miércoles', 3, '7', '9', NULL, '2023-09-26 17:28:43', '2023-09-26 17:28:43'),
(692, 46, 29, 1, 4, 'Jueves', 4, '7', '9', NULL, '2023-09-26 17:29:10', '2023-09-26 17:29:10'),
(693, 42, 193, 1, 64, 'Lunes', 1, '8', '9', NULL, '2023-09-26 17:31:10', '2023-09-26 17:31:10'),
(694, 42, 193, 1, 64, 'Martes', 2, '9', '11', NULL, '2023-09-26 17:31:36', '2023-09-26 17:31:36'),
(695, 42, 193, 1, 64, 'Jueves', 4, '9', '11', NULL, '2023-09-26 17:32:04', '2023-09-26 17:32:04'),
(700, 42, 191, 2, 73, 'Lunes', 1, '14', '16', NULL, '2023-09-26 17:38:29', '2023-09-26 17:38:29'),
(701, 42, 191, 2, 73, 'Miércoles', 3, '14', '16', NULL, '2023-09-26 17:38:55', '2023-09-26 17:38:55'),
(703, 42, 191, 2, 73, 'Viernes', 5, '16', '18', NULL, '2023-09-26 17:39:51', '2023-09-26 17:39:51'),
(704, 42, 191, 2, 73, 'Jueves', 4, '14', '16', NULL, '2023-09-26 17:40:23', '2023-09-26 17:40:23'),
(705, 42, 193, 2, 64, 'Lunes', 1, '16', '18', NULL, '2023-09-26 17:41:40', '2023-09-26 17:41:40'),
(706, 42, 193, 2, 64, 'Jueves', 4, '16', '18', NULL, '2023-09-26 17:42:01', '2023-09-26 17:42:01'),
(707, 42, 193, 2, 64, 'Viernes', 5, '15', '16', NULL, '2023-09-26 17:42:28', '2023-09-26 17:42:28'),
(708, 42, 192, 2, 64, 'Martes', 2, '14', '16', NULL, '2023-09-26 17:43:33', '2023-09-26 17:43:33'),
(712, 29, 53, 1, 59, 'Lunes', 1, '9', '11', NULL, '2023-09-26 17:47:49', '2023-09-26 17:47:49'),
(713, 29, 53, 1, 59, 'Martes', 2, '9', '11', NULL, '2023-09-26 17:48:09', '2023-09-26 17:48:09'),
(714, 29, 50, 1, 33, 'Lunes', 1, '11', '13', NULL, '2023-09-26 17:48:51', '2023-09-26 17:48:51'),
(715, 29, 50, 1, 33, 'Jueves', 4, '8', '10', NULL, '2023-09-26 17:49:08', '2023-09-26 17:49:08'),
(716, 29, 50, 1, 33, 'Viernes', 5, '11', '12', NULL, '2023-09-26 17:49:37', '2023-09-26 17:49:37'),
(717, 29, 51, 1, 40, 'Martes', 2, '7', '9', NULL, '2023-09-26 17:52:42', '2023-09-26 17:52:42'),
(718, 29, 51, 1, 40, 'Miércoles', 3, '11', '13', NULL, '2023-09-26 17:52:59', '2023-09-26 17:52:59'),
(720, 29, 52, 1, 50, 'Martes', 2, '11', '13', NULL, '2023-09-26 17:54:27', '2023-09-26 17:54:27'),
(721, 29, 52, 1, 50, 'Miércoles', 3, '7', '9', NULL, '2023-09-26 17:54:54', '2023-09-26 17:54:54'),
(722, 29, 52, 1, 50, 'Viernes', 5, '9', '10', NULL, '2023-09-26 17:55:16', '2023-09-26 17:55:16'),
(723, 29, 54, 1, 55, 'Miércoles', 3, '9', '11', NULL, '2023-09-26 17:56:19', '2023-09-26 17:56:19'),
(724, 29, 54, 1, 55, 'Viernes', 5, '8', '9', NULL, '2023-09-26 17:56:46', '2023-09-26 17:56:46'),
(725, 29, 58, 1, 68, 'Lunes', 1, '16', '17', NULL, '2023-09-26 17:57:39', '2023-09-26 17:57:39'),
(726, 29, 58, 1, 68, 'Martes', 2, '16', '18', NULL, '2023-09-26 17:58:31', '2023-09-26 17:58:31'),
(727, 29, 58, 1, 68, 'Jueves', 4, '18', '20', NULL, '2023-09-26 17:58:55', '2023-09-26 17:58:55'),
(728, 29, 57, 1, 67, 'Lunes', 1, '17', '19', NULL, '2023-09-26 18:00:04', '2023-09-26 18:00:04'),
(729, 29, 57, 1, 67, 'Jueves', 4, '16', '18', NULL, '2023-09-26 18:00:25', '2023-09-26 18:00:25'),
(730, 29, 57, 1, 67, 'Viernes', 5, '17', '18', NULL, '2023-09-26 18:00:49', '2023-09-26 18:00:49'),
(731, 29, 59, 1, 67, 'Martes', 2, '18', '20', NULL, '2023-09-26 18:01:45', '2023-09-26 18:01:45'),
(732, 29, 59, 1, 67, 'Miércoles', 3, '16', '18', NULL, '2023-09-26 18:02:04', '2023-09-26 18:02:04'),
(733, 29, 59, 1, 67, 'Viernes', 5, '16', '17', NULL, '2023-09-26 18:02:22', '2023-09-26 18:02:22'),
(734, 29, 56, 1, 11, 'Martes', 2, '14', '16', NULL, '2023-09-26 18:03:43', '2023-09-26 18:03:43'),
(735, 29, 56, 1, 11, 'Miércoles', 3, '18', '20', NULL, '2023-09-26 18:04:07', '2023-09-26 18:04:07'),
(736, 29, 60, 1, 11, 'Jueves', 4, '14', '16', NULL, '2023-09-26 18:06:14', '2023-09-26 18:06:14'),
(737, 29, 60, 1, 11, 'Viernes', 5, '14', '16', NULL, '2023-09-26 18:06:35', '2023-09-26 18:06:35'),
(738, 43, 145, 1, 32, 'Lunes', 1, '10', '11', NULL, '2023-09-27 00:41:37', '2023-09-27 00:41:37'),
(739, 43, 145, 1, 32, 'Martes', 2, '11', '13', NULL, '2023-09-27 00:41:59', '2023-09-27 00:41:59'),
(740, 43, 145, 1, 32, 'Miércoles', 3, '9', '11', NULL, '2023-09-27 00:42:26', '2023-09-27 00:42:26'),
(741, 23, 149, 1, 32, 'Lunes', 1, '16', '18', NULL, '2023-09-27 00:44:31', '2023-09-27 00:44:31'),
(743, 23, 149, 1, 32, 'Jueves', 4, '18', '20', NULL, '2023-09-27 00:54:33', '2023-09-27 00:54:33'),
(744, 23, 149, 1, 32, 'Viernes', 5, '16', '17', NULL, '2023-09-27 00:55:03', '2023-09-27 00:55:03'),
(745, 23, 152, 1, 27, 'Martes', 2, '17', '19', NULL, '2023-09-27 00:56:21', '2023-09-27 00:56:21'),
(746, 23, 152, 1, 27, 'Jueves', 4, '16', '18', NULL, '2023-09-27 00:56:44', '2023-09-27 00:56:44'),
(757, 47, 212, 5, 51, 'Lunes', 1, '8', '10', '5', '2023-09-27 19:23:55', '2023-09-27 19:23:55'),
(760, 47, 211, 5, 51, 'Lunes', 1, '10', '11', '5', '2023-09-27 19:26:41', '2023-09-27 19:26:41'),
(761, 47, 208, 5, 51, 'Lunes', 1, '11', '12', '5', '2023-09-27 19:27:14', '2023-09-27 19:27:14'),
(762, 47, 211, 5, 51, 'Lunes', 1, '16', '17', '5', '2023-09-27 19:28:52', '2023-09-27 19:28:52'),
(763, 47, 211, 5, 51, 'Martes', 2, '10', '11', '5', '2023-09-27 19:29:32', '2023-09-27 19:29:32'),
(764, 47, 208, 5, 51, 'Martes', 2, '11', '12', '5', '2023-09-27 19:30:03', '2023-09-27 19:30:03'),
(765, 47, 209, 5, 51, 'Miércoles', 3, '8', '9', '5', '2023-09-27 19:30:45', '2023-09-27 19:30:45'),
(766, 47, 211, 5, 51, 'Miércoles', 3, '10', '13', '5', '2023-09-27 19:31:24', '2023-09-27 19:31:24'),
(767, 51, 209, 5, 25, 'Lunes', 1, '7', '10', '9', '2023-09-27 19:31:25', '2023-09-27 19:31:25'),
(768, 47, 208, 5, 51, 'Miércoles', 3, '15', '16', '5', '2023-09-27 19:31:52', '2023-09-27 19:31:52'),
(769, 51, 208, 5, 25, 'Lunes', 1, '10', '12', '9', '2023-09-27 19:32:07', '2023-09-27 19:32:07'),
(770, 47, 211, 5, 51, 'Miércoles', 3, '16', '17', '5', '2023-09-27 19:32:19', '2023-09-27 19:32:19'),
(771, 51, 208, 5, 25, 'Lunes', 1, '14', '15', '9', '2023-09-27 19:32:41', '2023-09-27 19:32:41');
INSERT INTO `horarios` (`id`, `aula_id`, `actividad_id`, `paralelo_id`, `docente_id`, `dia_semana`, `numero_dia`, `hora_inicio`, `hora_fin`, `numero_puesto`, `created_at`, `updated_at`) VALUES
(772, 47, 209, 5, 51, 'Jueves', 4, '11', '12', '5', '2023-09-27 19:33:03', '2023-09-27 19:33:03'),
(773, 51, 209, 5, 25, 'Lunes', 1, '15', '16', '9', '2023-09-27 19:33:23', '2023-09-27 19:33:23'),
(774, 47, 208, 5, 51, 'Jueves', 4, '12', '13', '5', '2023-09-27 19:33:27', '2023-09-27 19:33:27'),
(775, 51, 212, 5, 25, 'Lunes', 1, '16', '17', '9', '2023-09-27 19:34:04', '2023-09-27 19:34:04'),
(776, 47, 209, 5, 51, 'Viernes', 5, '8', '10', '5', '2023-09-27 19:34:05', '2023-09-27 19:34:05'),
(777, 51, 209, 5, 25, 'Martes', 2, '7', '8', '9', '2023-09-27 19:34:59', '2023-09-27 19:34:59'),
(778, 20, 210, 5, 51, 'Viernes', 5, '10', '11', '5', '2023-09-27 19:35:11', '2023-09-27 19:35:11'),
(779, 47, 209, 5, 51, 'Viernes', 5, '11', '13', '5', '2023-09-27 19:36:43', '2023-09-27 19:36:43'),
(781, 51, 212, 5, 25, 'Martes', 2, '8', '12', '9', '2023-09-27 19:37:02', '2023-09-27 19:37:02'),
(782, 47, 209, 5, 51, 'Viernes', 5, '15', '17', '5', '2023-09-27 19:37:08', '2023-09-27 19:37:08'),
(784, 51, 212, 5, 25, 'Miércoles', 3, '10', '12', '9', '2023-09-27 19:37:40', '2023-09-27 19:37:40'),
(785, 58, 212, 5, 1, 'Jueves', 4, '9', '12', NULL, '2023-09-27 19:37:43', '2023-09-27 19:37:43'),
(786, 58, 208, 5, 1, 'Jueves', 4, '12', '13', NULL, '2023-09-27 19:38:06', '2023-09-27 19:38:06'),
(787, 51, 212, 5, 25, 'Jueves', 4, '7', '12', '9', '2023-09-27 19:38:30', '2023-09-27 19:38:30'),
(788, 58, 212, 5, 1, 'Jueves', 4, '15', '19', NULL, '2023-09-27 19:38:46', '2023-09-27 19:38:46'),
(790, 9, 210, 5, 1, 'Viernes', 5, '11', '12', NULL, '2023-09-27 19:39:31', '2023-09-27 19:39:31'),
(791, 58, 212, 5, 1, 'Viernes', 5, '12', '13', NULL, '2023-09-27 19:40:53', '2023-09-27 19:40:53'),
(792, 51, 209, 5, 25, 'Viernes', 5, '10', '11', '9', '2023-09-27 19:42:04', '2023-09-27 19:42:04'),
(793, 58, 209, 5, 1, 'Viernes', 5, '15', '17', NULL, '2023-09-27 19:42:06', '2023-09-27 19:42:06'),
(794, 47, 209, 5, 74, 'Lunes', 1, '11', '13', '3', '2023-09-27 19:42:57', '2023-09-27 19:42:57'),
(795, 52, 209, 5, 26, 'Lunes', 1, '9', '11', '2', '2023-09-27 19:43:03', '2023-09-27 19:43:03'),
(796, 47, 209, 5, 74, 'Martes', 2, '11', '13', '3', '2023-09-27 19:43:22', '2023-09-27 19:43:22'),
(797, 52, 211, 5, 26, 'Lunes', 1, '11', '13', '2', '2023-09-27 19:43:53', '2023-09-27 19:43:53'),
(798, 47, 212, 5, 74, 'Miércoles', 3, '9', '13', '3', '2023-09-27 19:44:15', '2023-09-27 19:44:15'),
(799, 47, 212, 5, 74, 'Miércoles', 3, '15', '19', '3', '2023-09-27 19:44:42', '2023-09-27 19:44:42'),
(800, 52, 211, 5, 26, 'Martes', 2, '11', '13', '2', '2023-09-27 19:44:53', '2023-09-27 19:44:53'),
(802, 47, 212, 5, 74, 'Jueves', 4, '15', '19', '3', '2023-09-27 19:45:29', '2023-09-27 19:45:29'),
(803, 52, 209, 5, 26, 'Martes', 2, '14', '15', '2', '2023-09-27 19:45:42', '2023-09-27 19:45:42'),
(804, 47, 212, 5, 74, 'Viernes', 5, '8', '9', '3', '2023-09-27 19:45:58', '2023-09-27 19:45:58'),
(805, 57, 212, 5, 26, 'Martes', 2, '15', '17', '1', '2023-09-27 19:46:23', '2023-09-27 19:46:23'),
(806, 47, 212, 5, 74, 'Viernes', 5, '10', '12', '3', '2023-09-27 19:46:23', '2023-09-27 19:46:23'),
(807, 20, 210, 5, 74, 'Viernes', 5, '12', '13', '3', '2023-09-27 19:46:54', '2023-09-27 19:46:54'),
(808, 52, 208, 5, 26, 'Martes', 2, '17', '18', '2', '2023-09-27 19:47:07', '2023-09-27 19:47:07'),
(809, 47, 212, 5, 74, 'Viernes', 5, '15', '16', '3', '2023-09-27 19:47:18', '2023-09-27 19:47:18'),
(810, 47, 208, 5, 74, 'Viernes', 5, '16', '18', '3', '2023-09-27 19:47:51', '2023-09-27 19:47:51'),
(811, 52, 209, 5, 26, 'Miércoles', 3, '9', '11', '2', '2023-09-27 19:48:11', '2023-09-27 19:48:11'),
(812, 52, 209, 5, 26, 'Miércoles', 3, '9', '11', '2', '2023-09-27 19:48:12', '2023-09-27 19:48:12'),
(813, 52, 208, 5, 26, 'Jueves', 4, '8', '11', '2', '2023-09-27 19:48:51', '2023-09-27 19:48:51'),
(814, 52, 211, 5, 26, 'Jueves', 4, '11', '13', '2', '2023-09-27 19:50:29', '2023-09-27 19:50:29'),
(815, 52, 212, 5, 26, 'Jueves', 4, '14', '16', '2', '2023-09-27 19:51:24', '2023-09-27 19:51:24'),
(816, 51, 209, 5, 53, 'Lunes', 1, '15', '19', '10', '2023-09-27 19:52:06', '2023-09-27 19:52:06'),
(817, 52, 208, 5, 26, 'Jueves', 4, '16', '17', '2', '2023-09-27 19:52:14', '2023-09-27 19:52:14'),
(818, 51, 212, 5, 53, 'Martes', 2, '11', '13', '10', '2023-09-27 19:52:34', '2023-09-27 19:52:34'),
(819, 52, 209, 5, 26, 'Viernes', 5, '8', '9', '2', '2023-09-27 19:53:09', '2023-09-27 19:53:09'),
(820, 51, 211, 5, 53, 'Martes', 2, '15', '19', '10', '2023-09-27 19:53:43', '2023-09-27 19:53:43'),
(821, 20, 210, 5, 26, 'Viernes', 5, '10', '11', '1', '2023-09-27 19:54:04', '2023-09-27 19:54:04'),
(822, 52, 208, 5, 26, 'Viernes', 5, '12', '13', '2', '2023-09-27 19:54:44', '2023-09-27 19:54:44'),
(823, 51, 208, 5, 53, 'Miércoles', 3, '11', '13', '10', '2023-09-27 19:54:50', '2023-09-27 19:54:50'),
(824, 51, 208, 5, 53, 'Miércoles', 3, '15', '16', '10', '2023-09-27 19:55:11', '2023-09-27 19:55:11'),
(825, 52, 208, 5, 26, 'Viernes', 5, '14', '15', '2', '2023-09-27 19:55:17', '2023-09-27 19:55:17'),
(826, 51, 209, 5, 53, 'Miércoles', 3, '18', '19', '10', '2023-09-27 19:55:31', '2023-09-27 19:55:31'),
(827, 50, 208, 5, 27, 'Lunes', 1, '8', '10', '12', '2023-09-27 19:56:23', '2023-09-27 19:56:23'),
(828, 51, 211, 5, 53, 'Jueves', 4, '9', '11', '10', '2023-09-27 19:56:45', '2023-09-27 19:56:45'),
(829, 51, 209, 5, 53, 'Jueves', 4, '15', '16', '10', '2023-09-27 19:57:17', '2023-09-27 19:57:17'),
(830, 51, 209, 5, 53, 'Jueves', 4, '18', '19', '10', '2023-09-27 19:57:41', '2023-09-27 19:57:41'),
(831, 51, 212, 5, 53, 'Viernes', 5, '9', '10', '10', '2023-09-27 19:58:18', '2023-09-27 19:58:18'),
(832, 20, 210, 5, 53, 'Viernes', 5, '10', '11', '10', '2023-09-27 19:58:49', '2023-09-27 19:58:49'),
(833, 51, 211, 5, 53, 'Viernes', 5, '14', '18', '10', '2023-09-27 19:59:30', '2023-09-27 19:59:30'),
(834, 50, 209, 5, 27, 'Lunes', 1, '16', '17', '12', '2023-09-27 20:16:02', '2023-09-27 20:16:02'),
(835, 50, 208, 5, 27, 'Martes', 2, '8', '9', '12', '2023-09-27 20:16:25', '2023-09-27 20:16:25'),
(836, 54, 211, 5, 52, 'Lunes', 1, '8', '9', '10', '2023-09-27 20:16:31', '2023-09-27 20:16:31'),
(837, 54, 211, 5, 52, 'Lunes', 1, '15', '16', '10', '2023-09-27 20:16:55', '2023-09-27 20:16:55'),
(838, 50, 209, 5, 27, 'Martes', 2, '9', '11', '12', '2023-09-27 20:17:04', '2023-09-27 20:17:04'),
(839, 54, 212, 5, 52, 'Martes', 2, '8', '13', '10', '2023-09-27 20:17:26', '2023-09-27 20:17:26'),
(840, 54, 212, 5, 52, 'Martes', 2, '15', '18', '10', '2023-09-27 20:17:53', '2023-09-27 20:17:53'),
(841, 50, 208, 5, 27, 'Miércoles', 3, '8', '9', '12', '2023-09-27 20:17:55', '2023-09-27 20:17:55'),
(842, 54, 211, 5, 52, 'Miércoles', 3, '8', '9', '10', '2023-09-27 20:18:21', '2023-09-27 20:18:21'),
(844, 50, 209, 5, 27, 'Miércoles', 3, '9', '10', '12', '2023-09-27 20:18:40', '2023-09-27 20:18:40'),
(845, 54, 209, 5, 52, 'Miércoles', 3, '15', '16', '10', '2023-09-27 20:18:58', '2023-09-27 20:18:58'),
(846, 50, 211, 5, 27, 'Jueves', 4, '7', '10', '12', '2023-09-27 20:19:07', '2023-09-27 20:19:07'),
(847, 54, 211, 5, 52, 'Jueves', 4, '8', '9', '10', '2023-09-27 20:19:24', '2023-09-27 20:19:24'),
(848, 50, 212, 5, 27, 'Jueves', 4, '10', '11', '12', '2023-09-27 20:19:32', '2023-09-27 20:19:32'),
(849, 54, 212, 5, 52, 'Jueves', 4, '11', '13', '10', '2023-09-27 20:19:42', '2023-09-27 20:19:42'),
(850, 54, 208, 5, 52, 'Jueves', 4, '16', '17', '10', '2023-09-27 20:19:58', '2023-09-27 20:19:58'),
(851, 50, 209, 5, 27, 'Viernes', 5, '7', '9', '12', '2023-09-27 20:20:02', '2023-09-27 20:20:02'),
(852, 54, 211, 5, 52, 'Viernes', 5, '8', '9', '10', '2023-09-27 20:20:22', '2023-09-27 20:20:22'),
(853, 50, 211, 5, 27, 'Viernes', 5, '9', '11', '12', '2023-09-27 20:20:44', '2023-09-27 20:20:44'),
(854, 20, 210, 5, 52, 'Viernes', 5, '10', '11', '10', '2023-09-27 20:20:46', '2023-09-27 20:20:46'),
(855, 9, 210, 5, 27, 'Viernes', 5, '11', '12', '1', '2023-09-27 20:21:10', '2023-09-27 20:21:10'),
(856, 50, 211, 5, 27, 'Viernes', 5, '12', '13', '12', '2023-09-27 20:21:40', '2023-09-27 20:21:40'),
(857, 67, 209, 5, 28, 'Lunes', 1, '9', '13', '1', '2023-09-27 20:26:10', '2023-09-27 20:26:10'),
(858, 67, 208, 5, 28, 'Martes', 2, '10', '12', '1', '2023-09-27 20:27:14', '2023-09-27 20:27:14'),
(859, 54, 212, 5, 52, 'Viernes', 5, '11', '12', NULL, '2023-09-27 20:27:26', '2023-09-27 20:27:26'),
(860, 67, 211, 5, 28, 'Martes', 2, '12', '13', '1', '2023-09-27 20:27:59', '2023-09-27 20:27:59'),
(861, 54, 208, 5, 52, 'Viernes', 5, '12', '13', NULL, '2023-09-27 20:28:04', '2023-09-27 20:28:04'),
(862, 67, 209, 5, 28, 'Miércoles', 3, '8', '12', '1', '2023-09-27 20:28:33', '2023-09-27 20:28:33'),
(863, 54, 208, 5, 52, 'Viernes', 5, '14', '15', NULL, '2023-09-27 20:28:45', '2023-09-27 20:28:45'),
(864, 67, 211, 5, 28, 'Miércoles', 3, '12', '13', '1', '2023-09-27 20:29:07', '2023-09-27 20:29:07'),
(865, 54, 209, 5, 52, 'Viernes', 5, '15', '17', NULL, '2023-09-27 20:29:08', '2023-09-27 20:29:08'),
(866, 67, 208, 5, 28, 'Jueves', 4, '11', '12', '1', '2023-09-27 20:29:35', '2023-09-27 20:29:35'),
(867, 10, 181, 1, 27, 'Lunes', 1, '17', '20', NULL, '2023-09-27 20:29:53', '2023-09-27 20:29:53'),
(868, 67, 211, 5, 28, 'Jueves', 4, '12', '13', '1', '2023-09-27 20:30:00', '2023-09-27 20:30:00'),
(869, 1, 181, 1, 27, 'Miércoles', 3, '14', '17', NULL, '2023-09-27 20:30:22', '2023-09-27 20:30:22'),
(870, 67, 211, 5, 28, 'Viernes', 5, '7', '10', '1', '2023-09-27 20:30:37', '2023-09-27 20:30:37'),
(871, 55, 212, 5, 54, 'Lunes', 1, '14', '18', '3', '2023-09-27 20:30:55', '2023-09-27 20:30:55'),
(872, 55, 209, 5, 54, 'Lunes', 1, '18', '20', '3', '2023-09-27 20:31:17', '2023-09-27 20:31:17'),
(873, 9, 210, 5, 28, 'Viernes', 5, '11', '12', '1', '2023-09-27 20:31:21', '2023-09-27 20:31:21'),
(874, 55, 212, 5, 54, 'Martes', 2, '9', '13', '3', '2023-09-27 20:31:48', '2023-09-27 20:31:48'),
(875, 67, 211, 5, 28, 'Viernes', 5, '12', '13', '1', '2023-09-27 20:31:52', '2023-09-27 20:31:52'),
(876, 55, 212, 5, 54, 'Martes', 2, '14', '16', '3', '2023-09-27 20:32:10', '2023-09-27 20:32:10'),
(877, 67, 208, 5, 28, 'Viernes', 5, '14', '15', '1', '2023-09-27 20:32:29', '2023-09-27 20:32:29'),
(878, 55, 212, 5, 54, 'Miércoles', 3, '9', '13', '3', '2023-09-27 20:32:31', '2023-09-27 20:32:31'),
(879, 55, 212, 5, 54, 'Miércoles', 3, '14', '16', '3', '2023-09-27 20:33:03', '2023-09-27 20:33:03'),
(880, 67, 208, 5, 28, 'Viernes', 5, '15', '16', '1', '2023-09-27 20:33:04', '2023-09-27 20:33:04'),
(881, 55, 209, 5, 54, 'Jueves', 4, '8', '10', '3', '2023-09-27 20:33:49', '2023-09-27 20:33:49'),
(882, 50, 211, 5, 29, 'Lunes', 1, '10', '13', '15', '2023-09-27 20:33:51', '2023-09-27 20:33:51'),
(883, 55, 212, 5, 54, 'Jueves', 4, '11', '13', '3', '2023-09-27 20:34:18', '2023-09-27 20:34:18'),
(884, 50, 208, 5, 29, 'Lunes', 1, '14', '15', '15', '2023-09-27 20:34:28', '2023-09-27 20:34:28'),
(885, 55, 212, 5, 54, 'Jueves', 4, '14', '16', '3', '2023-09-27 20:34:35', '2023-09-27 20:34:35'),
(886, 55, 212, 5, 54, 'Viernes', 5, '9', '11', '3', '2023-09-27 20:34:58', '2023-09-27 20:34:58'),
(887, 50, 212, 5, 29, 'Lunes', 1, '15', '16', '15', '2023-09-27 20:35:01', '2023-09-27 20:35:01'),
(888, 55, 208, 5, 54, 'Viernes', 5, '11', '12', '3', '2023-09-27 20:35:21', '2023-09-27 20:35:21'),
(889, 50, 209, 5, 29, 'Martes', 2, '7', '12', '15', '2023-09-27 20:35:43', '2023-09-27 20:35:43'),
(890, 20, 210, 5, 54, 'Viernes', 5, '12', '13', '3', '2023-09-27 20:35:46', '2023-09-27 20:35:46'),
(891, 50, 208, 5, 29, 'Martes', 2, '12', '13', '15', '2023-09-27 20:36:10', '2023-09-27 20:36:10'),
(892, 50, 209, 5, 29, 'Martes', 2, '14', '15', '15', '2023-09-27 20:36:33', '2023-09-27 20:36:33'),
(893, 55, 212, 5, 54, 'Viernes', 5, '14', '15', '3', '2023-09-27 20:36:53', '2023-09-27 20:36:53'),
(895, 55, 208, 5, 54, 'Viernes', 5, '15', '16', '3', '2023-09-27 20:37:39', '2023-09-27 20:37:39'),
(898, 9, 210, 5, 29, 'Viernes', 5, '11', '12', '1', '2023-09-27 20:38:37', '2023-09-27 20:38:37'),
(900, 50, 209, 5, 55, 'Lunes', 1, '9', '11', '3', '2023-09-27 20:39:11', '2023-09-27 20:39:11'),
(901, 50, 209, 5, 55, 'Martes', 2, '9', '13', '3', '2023-09-27 20:39:51', '2023-09-27 20:39:51'),
(902, 53, 209, 5, 30, 'Lunes', 1, '7', '9', '7', '2023-09-27 20:40:52', '2023-09-27 20:40:52'),
(903, 50, 211, 5, 55, 'Martes', 2, '14', '16', '3', '2023-09-27 20:41:23', '2023-09-27 20:41:23'),
(905, 50, 211, 5, 55, 'Miércoles', 3, '11', '13', '3', '2023-09-27 20:41:45', '2023-09-27 20:41:45'),
(906, 53, 212, 5, 30, 'Lunes', 1, '10', '12', '7', '2023-09-27 20:41:46', '2023-09-27 20:41:46'),
(907, 50, 211, 5, 55, 'Jueves', 4, '7', '10', '3', '2023-09-27 20:42:34', '2023-09-27 20:42:34'),
(908, 53, 212, 5, 30, 'Lunes', 1, '16', '17', '7', '2023-09-27 20:43:58', '2023-09-27 20:43:58'),
(909, 53, 212, 5, 30, 'Martes', 2, '9', '13', '7', '2023-09-27 20:48:02', '2023-09-27 20:48:02'),
(910, 50, 208, 5, 55, 'Jueves', 4, '12', '13', '3', '2023-09-27 20:49:13', '2023-09-27 20:49:13'),
(911, 53, 212, 5, 30, 'Martes', 2, '15', '16', '7', '2023-09-27 20:49:28', '2023-09-27 20:49:28'),
(912, 50, 208, 5, 55, 'Jueves', 4, '14', '16', '3', '2023-09-27 20:49:59', '2023-09-27 20:49:59'),
(914, 50, 211, 5, 55, 'Viernes', 5, '7', '8', '3', '2023-09-27 20:50:47', '2023-09-27 20:50:47'),
(915, 53, 209, 5, 30, 'Miércoles', 3, '7', '10', '7', '2023-09-27 20:53:01', '2023-09-27 20:53:01'),
(916, 53, 212, 5, 30, 'Miércoles', 3, '10', '12', '7', '2023-09-27 20:54:26', '2023-09-27 20:54:26'),
(917, 53, 212, 5, 30, 'Miércoles', 3, '16', '17', '7', '2023-09-27 20:55:04', '2023-09-27 20:55:04'),
(918, 53, 208, 5, 30, 'Jueves', 4, '7', '8', '7', '2023-09-27 20:57:07', '2023-09-27 20:57:07'),
(919, 53, 209, 5, 30, 'Jueves', 4, '8', '9', '7', '2023-09-27 20:57:59', '2023-09-27 20:57:59'),
(920, 53, 209, 5, 30, 'Jueves', 4, '9', '13', '7', '2023-09-27 20:58:36', '2023-09-27 20:58:36'),
(921, 53, 212, 5, 30, 'Jueves', 4, '15', '16', '7', '2023-09-27 20:59:39', '2023-09-27 20:59:39'),
(922, 53, 212, 5, 30, 'Jueves', 4, '16', '17', '7', '2023-09-27 21:06:32', '2023-09-27 21:06:32'),
(923, 50, 209, 5, 55, 'Viernes', 5, '9', '10', '3', '2023-09-27 21:13:44', '2023-09-27 21:13:44'),
(924, 20, 210, 5, 55, 'Viernes', 5, '12', '13', '3', '2023-09-27 21:15:05', '2023-09-27 21:15:05'),
(925, 50, 211, 5, 55, 'Viernes', 5, '14', '16', '3', '2023-09-27 21:18:02', '2023-09-27 21:18:02'),
(926, 51, 209, 5, 56, 'Lunes', 1, '9', '10', '5', '2023-09-27 21:33:15', '2023-09-27 21:33:15'),
(927, 51, 208, 5, 56, 'Lunes', 1, '16', '19', '5', '2023-09-27 21:33:45', '2023-09-27 21:33:45'),
(928, 51, 209, 5, 56, 'Martes', 2, '9', '10', '5', '2023-09-27 21:34:50', '2023-09-27 21:34:50'),
(929, 51, 211, 5, 56, 'Martes', 2, '15', '20', '5', '2023-09-27 21:35:11', '2023-09-27 21:35:11'),
(930, 51, 211, 5, 56, 'Miércoles', 3, '16', '20', '5', '2023-09-27 21:37:17', '2023-09-27 21:37:17'),
(931, 51, 209, 5, 56, 'Jueves', 4, '9', '10', '5', '2023-09-27 21:37:39', '2023-09-27 21:37:39'),
(932, 51, 209, 5, 56, 'Jueves', 4, '15', '18', '5', '2023-09-27 21:38:05', '2023-09-27 21:38:05'),
(933, 51, 212, 5, 56, 'Jueves', 4, '18', '20', '5', '2023-09-27 21:38:24', '2023-09-27 21:38:24'),
(934, 20, 210, 5, 56, 'Viernes', 5, '10', '11', '5', '2023-09-27 21:38:54', '2023-09-27 21:38:54'),
(935, 51, 212, 5, 56, 'Viernes', 5, '11', '13', '5', '2023-09-27 21:39:20', '2023-09-27 21:39:20'),
(936, 51, 212, 5, 56, 'Viernes', 5, '16', '18', '5', '2023-09-27 21:39:53', '2023-09-27 21:39:53'),
(937, 61, 211, 5, 57, 'Lunes', 1, '10', '12', '1', '2023-09-27 21:42:37', '2023-09-27 21:42:37'),
(938, 61, 211, 5, 57, 'Lunes', 1, '14', '16', '1', '2023-09-27 21:43:01', '2023-09-27 21:43:01'),
(939, 61, 208, 5, 57, 'Martes', 2, '8', '11', '1', '2023-09-27 21:43:28', '2023-09-27 21:43:28'),
(940, 61, 212, 5, 57, 'Miércoles', 3, '9', '11', '1', '2023-09-27 21:44:06', '2023-09-27 21:44:06'),
(941, 61, 212, 5, 57, 'Miércoles', 3, '16', '17', '1', '2023-09-27 21:44:33', '2023-09-27 21:44:33'),
(942, 61, 209, 5, 57, 'Jueves', 4, '10', '12', '1', '2023-09-27 21:44:59', '2023-09-27 21:44:59'),
(943, 61, 209, 5, 57, 'Jueves', 4, '14', '15', '1', '2023-09-27 21:45:21', '2023-09-27 21:45:21'),
(944, 61, 212, 5, 57, 'Jueves', 4, '15', '16', '1', '2023-09-27 21:45:44', '2023-09-27 21:45:44'),
(945, 61, 208, 5, 57, 'Jueves', 4, '16', '17', '1', '2023-09-27 21:46:21', '2023-09-27 21:46:21'),
(946, 61, 212, 5, 57, 'Jueves', 4, '17', '18', '1', '2023-09-27 21:46:54', '2023-09-27 21:46:54'),
(947, 61, 209, 5, 57, 'Viernes', 5, '7', '11', '1', '2023-09-27 21:47:22', '2023-09-27 21:47:22'),
(948, 9, 210, 5, 57, 'Viernes', 5, '11', '12', '1', '2023-09-27 21:48:19', '2023-09-27 21:48:19'),
(949, 20, 210, 5, 57, 'Viernes', 5, '12', '13', '1', '2023-09-27 21:48:34', '2023-09-27 21:48:34'),
(950, 53, 212, 5, 58, 'Lunes', 1, '9', '11', '4', '2023-09-27 21:52:03', '2023-09-27 21:52:03'),
(951, 53, 212, 5, 58, 'Lunes', 1, '11', '12', '4', '2023-09-27 21:52:47', '2023-09-27 21:52:47'),
(952, 53, 212, 5, 58, 'Lunes', 1, '12', '13', '4', '2023-09-27 21:53:08', '2023-09-27 21:53:08'),
(953, 53, 209, 5, 58, 'Lunes', 1, '16', '18', '4', '2023-09-27 21:53:29', '2023-09-27 21:53:29'),
(954, 53, 209, 5, 58, 'Martes', 2, '16', '18', '4', '2023-09-27 21:54:00', '2023-09-27 21:54:00'),
(955, 53, 212, 5, 58, 'Miércoles', 3, '9', '11', '4', '2023-09-27 21:54:23', '2023-09-27 21:54:23'),
(956, 53, 209, 5, 58, 'Miércoles', 3, '16', '18', '4', '2023-09-27 21:54:53', '2023-09-27 21:54:53'),
(957, 53, 212, 5, 58, 'Jueves', 4, '11', '13', '4', '2023-09-27 21:55:16', '2023-09-27 21:55:16'),
(958, 53, 208, 5, 58, 'Jueves', 4, '16', '18', '4', '2023-09-27 21:55:35', '2023-09-27 21:55:35'),
(959, 53, 212, 5, 58, 'Viernes', 5, '9', '10', '4', '2023-09-27 21:55:59', '2023-09-27 21:55:59'),
(960, 20, 210, 5, 58, 'Viernes', 5, '10', '11', '4', '2023-09-27 21:56:15', '2023-09-27 21:56:15'),
(963, 53, 212, 5, 58, 'Viernes', 5, '11', '12', '4', '2023-09-27 21:58:11', '2023-09-27 21:58:11'),
(964, 53, 209, 5, 58, 'Viernes', 5, '12', '13', '4', '2023-09-27 21:58:32', '2023-09-27 21:58:32'),
(965, 53, 208, 5, 58, 'Viernes', 5, '15', '16', '4', '2023-09-27 21:58:54', '2023-09-27 21:58:54'),
(966, 53, 212, 5, 58, 'Viernes', 5, '16', '17', '4', '2023-09-27 21:59:20', '2023-09-27 21:59:20'),
(967, 53, 212, 5, 30, 'Viernes', 5, '7', '8', '7', '2023-09-27 22:58:58', '2023-09-27 22:58:58'),
(968, 53, 212, 5, 30, 'Viernes', 5, '8', '12', '7', '2023-09-27 22:59:33', '2023-09-27 22:59:33'),
(969, 20, 210, 5, 30, 'Viernes', 5, '12', '13', '1', '2023-09-27 23:00:16', '2023-09-27 23:00:16'),
(971, 53, 212, 5, 30, 'Viernes', 5, '15', '17', '7', '2023-09-27 23:03:42', '2023-09-27 23:03:42'),
(972, 50, 209, 5, 31, 'Lunes', 1, '10', '11', '16', '2023-09-27 23:05:02', '2023-09-27 23:05:02'),
(973, 50, 208, 5, 31, 'Lunes', 1, '15', '17', '16', '2023-09-27 23:05:40', '2023-09-27 23:05:40'),
(974, 50, 209, 5, 31, 'Lunes', 1, '17', '18', '16', '2023-09-27 23:09:06', '2023-09-27 23:09:06'),
(975, 50, 209, 5, 31, 'Martes', 2, '8', '9', '16', '2023-09-27 23:10:10', '2023-09-27 23:10:10'),
(976, 50, 209, 5, 31, 'Martes', 2, '15', '16', '16', '2023-09-27 23:11:18', '2023-09-27 23:11:18'),
(977, 50, 212, 5, 31, 'Martes', 2, '16', '18', '16', '2023-09-27 23:11:46', '2023-09-27 23:11:46'),
(978, 50, 212, 5, 31, 'Miércoles', 3, '12', '13', '16', '2023-09-27 23:12:36', '2023-09-27 23:12:36'),
(979, 50, 212, 5, 31, 'Miércoles', 3, '15', '18', '16', '2023-09-27 23:13:07', '2023-09-27 23:13:07'),
(980, 50, 212, 5, 31, 'Jueves', 4, '8', '11', '16', '2023-09-27 23:14:25', '2023-09-27 23:14:25'),
(981, 50, 212, 5, 31, 'Jueves', 4, '15', '18', '16', '2023-09-27 23:15:08', '2023-09-27 23:15:08'),
(982, 50, 212, 5, 31, 'Viernes', 5, '8', '11', '16', '2023-09-27 23:15:48', '2023-09-27 23:15:48'),
(984, 50, 212, 5, 31, 'Viernes', 5, '12', '13', '16', '2023-09-27 23:17:00', '2023-09-27 23:17:00'),
(985, 50, 212, 5, 31, 'Viernes', 5, '14', '17', '16', '2023-09-27 23:17:40', '2023-09-27 23:17:40'),
(986, 53, 209, 5, 32, 'Lunes', 1, '8', '10', '6', '2023-09-27 23:19:35', '2023-09-27 23:19:35'),
(987, 53, 209, 5, 32, 'Lunes', 1, '11', '12', '6', '2023-09-27 23:20:07', '2023-09-27 23:20:07'),
(988, 53, 211, 5, 32, 'Lunes', 1, '14', '16', '6', '2023-09-27 23:20:40', '2023-09-27 23:20:40'),
(989, 53, 209, 5, 32, 'Martes', 2, '14', '15', '6', '2023-09-27 23:21:20', '2023-09-27 23:21:20'),
(990, 53, 211, 5, 32, 'Martes', 2, '15', '16', '6', '2023-09-27 23:21:57', '2023-09-27 23:21:57'),
(991, 53, 208, 5, 32, 'Martes', 2, '16', '17', '6', '2023-09-27 23:22:19', '2023-09-27 23:22:19'),
(992, 53, 209, 5, 32, 'Miércoles', 3, '8', '9', '6', '2023-09-27 23:23:37', '2023-09-27 23:23:37'),
(993, 53, 208, 5, 32, 'Miércoles', 3, '11', '12', '6', '2023-09-27 23:23:56', '2023-09-27 23:23:56'),
(994, 53, 212, 5, 32, 'Miércoles', 3, '17', '18', '6', '2023-09-27 23:24:25', '2023-09-27 23:24:25'),
(995, 53, 209, 5, 32, 'Jueves', 4, '8', '9', '6', '2023-09-27 23:25:04', '2023-09-27 23:25:04'),
(996, 53, 208, 5, 32, 'Jueves', 4, '9', '10', '6', '2023-09-27 23:25:37', '2023-09-27 23:25:37'),
(997, 53, 211, 5, 32, 'Jueves', 4, '10', '12', '6', '2023-09-27 23:25:59', '2023-09-27 23:25:59'),
(998, 53, 209, 5, 32, 'Viernes', 5, '8', '9', '6', '2023-09-27 23:27:27', '2023-09-27 23:27:27'),
(1000, 52, 212, 5, 33, 'Lunes', 1, '14', '16', '3', '2023-09-27 23:29:07', '2023-09-27 23:29:07'),
(1001, 52, 208, 5, 33, 'Martes', 2, '7', '9', '3', '2023-09-27 23:29:34', '2023-09-27 23:29:34'),
(1002, 52, 212, 5, 33, 'Martes', 2, '11', '13', '3', '2023-09-27 23:30:26', '2023-09-27 23:30:26'),
(1003, 52, 212, 5, 33, 'Martes', 2, '14', '16', '3', '2023-09-27 23:30:54', '2023-09-27 23:30:54'),
(1004, 52, 209, 5, 33, 'Miércoles', 3, '7', '8', '3', '2023-09-27 23:31:36', '2023-09-27 23:31:36'),
(1005, 52, 212, 5, 33, 'Miércoles', 3, '11', '13', '3', '2023-09-27 23:33:46', '2023-09-27 23:33:46'),
(1006, 52, 212, 5, 33, 'Miércoles', 3, '14', '16', '3', '2023-09-27 23:34:12', '2023-09-27 23:34:12'),
(1007, 52, 209, 5, 33, 'Jueves', 4, '7', '8', '3', '2023-09-27 23:34:40', '2023-09-27 23:34:40'),
(1008, 52, 212, 5, 33, 'Jueves', 4, '10', '12', '3', '2023-09-27 23:35:12', '2023-09-27 23:35:12'),
(1009, 52, 212, 5, 33, 'Jueves', 4, '12', '13', '3', '2023-09-27 23:35:43', '2023-09-27 23:35:43'),
(1010, 52, 212, 5, 33, 'Jueves', 4, '14', '16', '3', '2023-09-27 23:36:15', '2023-09-27 23:36:15'),
(1011, 52, 209, 5, 33, 'Viernes', 5, '7', '9', '3', '2023-09-27 23:36:42', '2023-09-27 23:36:42'),
(1012, 52, 212, 5, 33, 'Viernes', 5, '10', '11', '3', '2023-09-27 23:37:09', '2023-09-27 23:37:09'),
(1014, 52, 212, 5, 33, 'Viernes', 5, '14', '16', '3', '2023-09-27 23:38:13', '2023-09-27 23:38:13'),
(1015, 50, 211, 5, 34, 'Lunes', 1, '7', '11', '11', '2023-09-27 23:44:34', '2023-09-27 23:44:34'),
(1016, 50, 212, 5, 34, 'Martes', 2, '7', '8', '11', '2023-09-27 23:45:12', '2023-09-27 23:45:12'),
(1017, 50, 209, 5, 34, 'Martes', 2, '8', '10', '11', '2023-09-27 23:45:37', '2023-09-27 23:45:37'),
(1018, 50, 208, 5, 34, 'Martes', 2, '10', '13', '11', '2023-09-27 23:45:59', '2023-09-27 23:45:59'),
(1019, 50, 209, 5, 34, 'Martes', 2, '15', '16', '11', '2023-09-27 23:46:28', '2023-09-27 23:46:28'),
(1020, 50, 212, 5, 34, 'Martes', 2, '16', '17', '11', '2023-09-27 23:46:53', '2023-09-27 23:46:53'),
(1021, 50, 211, 5, 34, 'Miércoles', 3, '19', '20', '11', '2023-09-27 23:47:39', '2023-09-27 23:47:39'),
(1022, 50, 209, 5, 34, 'Jueves', 4, '11', '13', '11', '2023-09-27 23:49:33', '2023-09-27 23:49:33'),
(1024, 50, 209, 5, 34, 'Jueves', 4, '19', '20', '11', '2023-09-27 23:51:18', '2023-09-27 23:51:18'),
(1025, 50, 211, 5, 34, 'Viernes', 5, '9', '12', '11', '2023-09-27 23:54:09', '2023-09-27 23:54:09'),
(1035, 49, 212, 5, 59, 'Lunes', 1, '11', '13', NULL, '2023-09-28 00:16:57', '2023-09-28 00:16:57'),
(1036, 20, 210, 5, 35, 'Viernes', 5, '12', '13', '4', '2023-09-28 00:17:13', '2023-09-28 00:17:13'),
(1037, 49, 212, 5, 59, 'Lunes', 1, '15', '17', NULL, '2023-09-28 00:17:17', '2023-09-28 00:17:17'),
(1038, 49, 209, 5, 59, 'Lunes', 1, '17', '19', NULL, '2023-09-28 00:17:34', '2023-09-28 00:17:34'),
(1039, 49, 212, 5, 59, 'Martes', 2, '11', '13', NULL, '2023-09-28 00:17:52', '2023-09-28 00:17:52'),
(1041, 49, 208, 5, 59, 'Martes', 2, '15', '16', NULL, '2023-09-28 00:18:14', '2023-09-28 00:18:14'),
(1043, 51, 209, 5, 36, 'Lunes', 1, '10', '13', '6', '2023-09-28 00:18:50', '2023-09-28 00:18:50'),
(1044, 49, 212, 5, 59, 'Martes', 2, '16', '19', NULL, '2023-09-28 00:19:01', '2023-09-28 00:19:01'),
(1045, 51, 209, 5, 36, 'Lunes', 1, '16', '17', '6', '2023-09-28 00:19:19', '2023-09-28 00:19:19'),
(1046, 49, 212, 5, 59, 'Miércoles', 3, '9', '13', NULL, '2023-09-28 00:19:27', '2023-09-28 00:19:27'),
(1047, 49, 212, 5, 59, 'Miércoles', 3, '15', '19', NULL, '2023-09-28 00:19:50', '2023-09-28 00:19:50'),
(1048, 51, 212, 5, 36, 'Martes', 2, '7', '13', '6', '2023-09-28 00:19:51', '2023-09-28 00:19:51'),
(1049, 49, 212, 5, 59, 'Jueves', 4, '8', '13', NULL, '2023-09-28 00:20:23', '2023-09-28 00:20:23'),
(1050, 51, 212, 5, 36, 'Martes', 2, '15', '18', '6', '2023-09-28 00:20:32', '2023-09-28 00:20:32'),
(1051, 49, 212, 5, 59, 'Jueves', 4, '15', '18', NULL, '2023-09-28 00:20:49', '2023-09-28 00:20:49'),
(1052, 49, 212, 5, 59, 'Viernes', 5, '8', '12', NULL, '2023-09-28 00:21:13', '2023-09-28 00:21:13'),
(1053, 51, 211, 5, 36, 'Miércoles', 3, '7', '13', '6', '2023-09-28 00:21:15', '2023-09-28 00:21:15'),
(1054, 20, 210, 5, 59, 'Viernes', 5, '12', '13', NULL, '2023-09-28 00:21:27', '2023-09-28 00:21:27'),
(1055, 49, 212, 5, 59, 'Viernes', 5, '15', '18', NULL, '2023-09-28 00:21:48', '2023-09-28 00:21:48'),
(1056, 51, 208, 5, 36, 'Jueves', 4, '9', '11', '6', '2023-09-28 00:21:58', '2023-09-28 00:21:58'),
(1057, 51, 209, 5, 36, 'Jueves', 4, '11', '13', '6', '2023-09-28 00:22:45', '2023-09-28 00:22:45'),
(1058, 51, 208, 5, 36, 'Jueves', 4, '15', '16', '4', '2023-09-28 00:23:49', '2023-09-28 00:23:49'),
(1060, 51, 212, 5, 36, 'Viernes', 5, '12', '13', '6', '2023-09-28 00:26:30', '2023-09-28 00:26:30'),
(1061, 69, 209, 5, 60, 'Lunes', 1, '8', '10', NULL, '2023-09-28 00:28:11', '2023-09-28 00:28:11'),
(1062, 69, 208, 5, 60, 'Lunes', 1, '16', '17', NULL, '2023-09-28 00:28:43', '2023-09-28 00:28:43'),
(1063, 69, 209, 5, 60, 'Miércoles', 3, '8', '9', NULL, '2023-09-28 00:29:39', '2023-09-28 00:29:39'),
(1064, 69, 208, 5, 60, 'Miércoles', 3, '9', '10', NULL, '2023-09-28 00:29:58', '2023-09-28 00:29:58'),
(1065, 69, 211, 5, 60, 'Miércoles', 3, '10', '12', NULL, '2023-09-28 00:30:17', '2023-09-28 00:30:17'),
(1066, 69, 209, 5, 60, 'Miércoles', 3, '12', '13', NULL, '2023-09-28 00:30:37', '2023-09-28 00:30:37'),
(1067, 69, 208, 5, 60, 'Miércoles', 3, '15', '16', NULL, '2023-09-28 00:30:57', '2023-09-28 00:30:57'),
(1068, 51, 209, 5, 36, 'Viernes', 5, '11', '12', '6', '2023-09-28 00:31:02', '2023-09-28 00:31:02'),
(1069, 69, 209, 5, 60, 'Jueves', 4, '8', '9', NULL, '2023-09-28 00:31:28', '2023-09-28 00:31:28'),
(1070, 69, 209, 5, 60, 'Jueves', 4, '12', '13', NULL, '2023-09-28 00:31:53', '2023-09-28 00:31:53'),
(1071, 69, 211, 5, 60, 'Jueves', 4, '15', '16', NULL, '2023-09-28 00:32:19', '2023-09-28 00:32:19'),
(1072, 69, 209, 5, 60, 'Viernes', 5, '7', '8', NULL, '2023-09-28 00:32:37', '2023-09-28 00:32:37'),
(1073, 69, 208, 5, 60, 'Viernes', 5, '8', '9', NULL, '2023-09-28 00:32:55', '2023-09-28 00:32:55'),
(1074, 69, 209, 5, 60, 'Viernes', 5, '9', '10', NULL, '2023-09-28 00:33:17', '2023-09-28 00:33:17'),
(1075, 20, 210, 5, 60, 'Viernes', 5, '10', '11', NULL, '2023-09-28 00:33:33', '2023-09-28 00:33:33'),
(1076, 9, 210, 5, 60, 'Viernes', 5, '11', '12', NULL, '2023-09-28 00:33:52', '2023-09-28 00:33:52'),
(1077, 51, 212, 5, 36, 'Viernes', 5, '15', '17', '6', '2023-09-28 00:34:43', '2023-09-28 00:34:43'),
(1078, 48, 209, 5, 61, 'Lunes', 1, '11', '13', '5', '2023-09-28 00:37:16', '2023-09-28 00:37:16'),
(1079, 48, 208, 5, 61, 'Lunes', 1, '14', '15', '5', '2023-09-28 00:37:41', '2023-09-28 00:37:41'),
(1080, 48, 211, 5, 61, 'Lunes', 1, '15', '16', '5', '2023-09-28 00:37:58', '2023-09-28 00:37:58'),
(1081, 59, 212, 5, 37, 'Lunes', 1, '7', '13', '6', '2023-09-28 00:38:11', '2023-09-28 00:38:11'),
(1082, 48, 212, 5, 61, 'Martes', 2, '9', '13', '5', '2023-09-28 00:38:25', '2023-09-28 00:38:25'),
(1083, 59, 212, 5, 37, 'Lunes', 1, '15', '18', '6', '2023-09-28 00:38:42', '2023-09-28 00:38:42'),
(1084, 48, 208, 5, 61, 'Martes', 2, '14', '15', '5', '2023-09-28 00:38:44', '2023-09-28 00:38:44'),
(1085, 48, 211, 5, 61, 'Martes', 2, '15', '16', '5', '2023-09-28 00:39:01', '2023-09-28 00:39:01'),
(1086, 48, 209, 5, 61, 'Miércoles', 3, '9', '10', '5', '2023-09-28 00:39:38', '2023-09-28 00:39:38'),
(1087, 59, 212, 5, 37, 'Martes', 2, '7', '8', '6', '2023-09-28 00:40:00', '2023-09-28 00:40:00'),
(1088, 48, 212, 5, 61, 'Miércoles', 3, '14', '16', '5', '2023-09-28 00:40:12', '2023-09-28 00:40:12'),
(1089, 48, 209, 5, 61, 'Jueves', 4, '14', '15', '5', '2023-09-28 00:40:44', '2023-09-28 00:40:44'),
(1090, 48, 211, 5, 61, 'Jueves', 4, '15', '16', '5', '2023-09-28 00:41:05', '2023-09-28 00:41:05'),
(1091, 48, 209, 5, 61, 'Viernes', 5, '10', '11', '5', '2023-09-28 00:41:34', '2023-09-28 00:41:34'),
(1092, 9, 210, 5, 61, 'Viernes', 5, '11', '12', '5', '2023-09-28 00:42:09', '2023-09-28 00:42:09'),
(1093, 48, 209, 5, 61, 'Viernes', 5, '12', '13', '5', '2023-09-28 00:42:40', '2023-09-28 00:42:40'),
(1094, 48, 211, 5, 61, 'Viernes', 5, '14', '16', '5', '2023-09-28 00:43:05', '2023-09-28 00:43:05'),
(1095, 59, 209, 5, 37, 'Martes', 2, '11', '13', '6', '2023-09-28 00:43:30', '2023-09-28 00:43:30'),
(1096, 59, 208, 5, 37, 'Martes', 2, '15', '16', '6', '2023-09-28 00:45:00', '2023-09-28 00:45:00'),
(1097, 59, 212, 5, 37, 'Martes', 2, '16', '18', '6', '2023-09-28 00:45:30', '2023-09-28 00:45:30'),
(1098, 51, 209, 5, 62, 'Lunes', 1, '8', '9', '7', '2023-09-28 00:46:13', '2023-09-28 00:46:13'),
(1099, 59, 212, 5, 37, 'Miércoles', 3, '7', '13', '6', '2023-09-28 00:46:18', '2023-09-28 00:46:18'),
(1100, 51, 212, 5, 62, 'Lunes', 1, '9', '11', '7', '2023-09-28 00:46:34', '2023-09-28 00:46:34'),
(1101, 59, 212, 5, 37, 'Miércoles', 3, '15', '18', '6', '2023-09-28 00:46:43', '2023-09-28 00:46:43'),
(1102, 51, 209, 5, 62, 'Lunes', 1, '11', '12', '7', '2023-09-28 00:47:06', '2023-09-28 00:47:06'),
(1103, 51, 212, 5, 62, 'Lunes', 1, '12', '13', '7', '2023-09-28 00:47:21', '2023-09-28 00:47:21'),
(1104, 51, 212, 5, 62, 'Lunes', 1, '16', '17', '7', '2023-09-28 00:47:42', '2023-09-28 00:47:42'),
(1105, 59, 212, 5, 37, 'Jueves', 4, '10', '12', '6', '2023-09-28 00:47:51', '2023-09-28 00:47:51'),
(1106, 51, 208, 5, 62, 'Lunes', 1, '18', '19', '7', '2023-09-28 00:48:05', '2023-09-28 00:48:05'),
(1107, 51, 209, 5, 62, 'Martes', 2, '7', '9', '7', '2023-09-28 00:48:37', '2023-09-28 00:48:37'),
(1108, 51, 212, 5, 62, 'Martes', 2, '16', '18', '7', '2023-09-28 00:49:01', '2023-09-28 00:49:01'),
(1109, 51, 212, 5, 62, 'Miércoles', 3, '7', '11', '7', '2023-09-28 00:50:54', '2023-09-28 00:50:54'),
(1110, 51, 212, 5, 62, 'Jueves', 4, '7', '11', '7', '2023-09-28 00:51:14', '2023-09-28 00:51:14'),
(1111, 51, 212, 5, 62, 'Viernes', 5, '7', '10', '7', '2023-09-28 00:51:44', '2023-09-28 00:51:44'),
(1112, 20, 210, 5, 62, 'Viernes', 5, '10', '11', '7', '2023-09-28 00:52:25', '2023-09-28 00:52:25'),
(1113, 51, 209, 5, 62, 'Viernes', 5, '11', '13', '7', '2023-09-28 00:52:48', '2023-09-28 00:52:48'),
(1114, 51, 208, 5, 62, 'Viernes', 5, '17', '18', '7', '2023-09-28 00:53:15', '2023-09-28 00:53:15'),
(1115, 48, 211, 5, 63, 'Lunes', 1, '11', '13', '4', '2023-09-28 00:57:31', '2023-09-28 00:57:31'),
(1116, 48, 209, 5, 63, 'Lunes', 1, '14', '15', '4', '2023-09-28 00:57:57', '2023-09-28 00:57:57'),
(1117, 48, 212, 5, 63, 'Lunes', 1, '15', '16', '4', '2023-09-28 00:58:28', '2023-09-28 00:58:28'),
(1119, 48, 212, 5, 63, 'Martes', 2, '14', '17', '4', '2023-09-28 01:01:09', '2023-09-28 01:01:09'),
(1120, 58, 212, 5, 1, 'Viernes', 5, '17', '19', NULL, '2023-09-28 01:01:09', '2023-09-28 01:01:09'),
(1121, 48, 209, 5, 63, 'Miércoles', 3, '9', '11', '4', '2023-09-28 01:01:42', '2023-09-28 01:01:42'),
(1122, 48, 212, 5, 63, 'Miércoles', 3, '15', '18', '4', '2023-09-28 01:02:11', '2023-09-28 01:02:11'),
(1123, 48, 212, 5, 63, 'Jueves', 4, '11', '13', '4', '2023-09-28 01:04:41', '2023-09-28 01:04:41'),
(1124, 48, 208, 5, 63, 'Jueves', 4, '16', '17', '4', '2023-09-28 01:04:56', '2023-09-28 01:04:56'),
(1125, 48, 209, 5, 63, 'Jueves', 4, '17', '18', '4', '2023-09-28 01:05:16', '2023-09-28 01:05:16'),
(1126, 48, 209, 5, 63, 'Viernes', 5, '7', '9', '4', '2023-09-28 01:05:42', '2023-09-28 01:05:42'),
(1127, 48, 208, 5, 63, 'Viernes', 5, '9', '11', '4', '2023-09-28 01:06:05', '2023-09-28 01:06:05'),
(1128, 48, 212, 5, 63, 'Viernes', 5, '11', '12', '4', '2023-09-28 01:06:34', '2023-09-28 01:06:34'),
(1129, 20, 210, 5, 63, 'Viernes', 5, '12', '13', '4', '2023-09-28 01:06:54', '2023-09-28 01:06:54'),
(1130, 48, 212, 5, 63, 'Martes', 2, '9', '13', '4', '2023-09-28 01:07:51', '2023-09-28 01:07:51'),
(1132, 51, 209, 5, 2, 'Lunes', 1, '8', '12', '12', '2023-09-28 01:28:56', '2023-09-28 01:28:56'),
(1133, 51, 209, 5, 2, 'Lunes', 1, '16', '18', '12', '2023-09-28 01:30:01', '2023-09-28 01:30:01'),
(1134, 68, 209, 5, 64, 'Lunes', 1, '11', '12', '2', '2023-09-28 01:30:53', '2023-09-28 01:30:53'),
(1135, 68, 209, 5, 64, 'Lunes', 1, '14', '16', '2', '2023-09-28 01:31:21', '2023-09-28 01:31:21'),
(1136, 51, 209, 5, 2, 'Martes', 2, '16', '18', '12', '2023-09-28 01:31:28', '2023-09-28 01:31:28'),
(1137, 68, 209, 5, 64, 'Miércoles', 3, '7', '9', '2', '2023-09-28 01:31:46', '2023-09-28 01:31:46'),
(1138, 68, 208, 5, 64, 'Miércoles', 3, '15', '16', '2', '2023-09-28 01:32:15', '2023-09-28 01:32:15'),
(1139, 51, 208, 5, 2, 'Miércoles', 3, '8', '11', '12', '2023-09-28 01:32:18', '2023-09-28 01:32:18'),
(1140, 68, 208, 5, 64, 'Jueves', 4, '12', '13', '2', '2023-09-28 01:32:35', '2023-09-28 01:32:35'),
(1141, 68, 208, 5, 64, 'Jueves', 4, '15', '16', '2', '2023-09-28 01:32:58', '2023-09-28 01:32:58'),
(1142, 68, 209, 5, 64, 'Viernes', 5, '8', '10', '2', '2023-09-28 01:33:27', '2023-09-28 01:33:27'),
(1143, 20, 210, 5, 64, 'Viernes', 5, '10', '11', '2', '2023-09-28 01:33:55', '2023-09-28 01:33:55'),
(1144, 68, 208, 5, 64, 'Viernes', 5, '11', '12', '2', '2023-09-28 01:36:09', '2023-09-28 01:36:09'),
(1145, 20, 210, 5, 64, 'Viernes', 5, '12', '13', '2', '2023-09-28 01:36:24', '2023-09-28 01:36:24'),
(1146, 51, 208, 5, 2, 'Miércoles', 3, '15', '18', '12', '2023-09-28 01:36:47', '2023-09-28 01:36:47'),
(1147, 51, 208, 5, 2, 'Jueves', 4, '8', '10', '12', '2023-09-28 01:38:22', '2023-09-28 01:38:22'),
(1148, 51, 212, 5, 65, 'Lunes', 1, '14', '15', '16', '2023-09-28 01:38:48', '2023-09-28 01:38:48'),
(1149, 51, 209, 5, 65, 'Lunes', 1, '15', '16', '16', '2023-09-28 01:39:08', '2023-09-28 01:39:08'),
(1150, 51, 211, 5, 2, 'Jueves', 4, '10', '11', '12', '2023-09-28 01:39:35', '2023-09-28 01:39:35'),
(1151, 51, 212, 5, 65, 'Lunes', 1, '16', '20', '16', '2023-09-28 01:39:40', '2023-09-28 01:39:40'),
(1152, 51, 209, 5, 65, 'Martes', 2, '9', '12', '16', '2023-09-28 01:40:07', '2023-09-28 01:40:07'),
(1153, 51, 212, 5, 65, 'Martes', 2, '12', '13', '16', '2023-09-28 01:40:28', '2023-09-28 01:40:28'),
(1154, 51, 211, 5, 2, 'Jueves', 4, '17', '18', '12', '2023-09-28 01:40:36', '2023-09-28 01:40:36'),
(1155, 51, 212, 5, 65, 'Martes', 2, '14', '16', '16', '2023-09-28 01:40:48', '2023-09-28 01:40:48'),
(1156, 51, 209, 5, 65, 'Miércoles', 3, '11', '13', '16', '2023-09-28 01:41:22', '2023-09-28 01:41:22'),
(1157, 51, 211, 5, 2, 'Viernes', 5, '8', '10', '12', '2023-09-28 01:41:36', '2023-09-28 01:41:36'),
(1158, 51, 208, 5, 65, 'Miércoles', 3, '15', '17', '16', '2023-09-28 01:41:45', '2023-09-28 01:41:45'),
(1159, 51, 208, 5, 65, 'Jueves', 4, '15', '16', '16', '2023-09-28 01:42:11', '2023-09-28 01:42:11'),
(1160, 51, 212, 5, 65, 'Jueves', 4, '16', '17', '16', '2023-09-28 01:42:30', '2023-09-28 01:42:30'),
(1161, 9, 210, 5, 65, 'Viernes', 5, '11', '12', '16', '2023-09-28 01:42:51', '2023-09-28 01:42:51'),
(1162, 51, 209, 5, 65, 'Viernes', 5, '12', '13', '16', '2023-09-28 01:43:07', '2023-09-28 01:43:07'),
(1164, 50, 209, 5, 66, 'Martes', 2, '8', '10', '5', '2023-09-28 01:47:10', '2023-09-28 01:47:10'),
(1165, 50, 208, 5, 66, 'Martes', 2, '15', '17', '5', '2023-09-28 01:47:44', '2023-09-28 01:47:44'),
(1166, 50, 212, 5, 66, 'Martes', 2, '17', '18', '5', '2023-09-28 01:48:36', '2023-09-28 01:48:36'),
(1167, 50, 209, 5, 66, 'Miércoles', 3, '7', '9', '5', '2023-09-28 01:53:16', '2023-09-28 01:53:16'),
(1168, 50, 209, 5, 66, 'Miércoles', 3, '12', '13', '5', '2023-09-28 01:53:36', '2023-09-28 01:53:36'),
(1169, 50, 209, 5, 66, 'Jueves', 4, '8', '9', '5', '2023-09-28 01:55:51', '2023-09-28 01:55:51'),
(1170, 50, 208, 5, 66, 'Jueves', 4, '9', '10', '5', '2023-09-28 01:57:29', '2023-09-28 01:57:29'),
(1171, 50, 208, 5, 66, 'Jueves', 4, '15', '16', '5', '2023-09-28 02:01:15', '2023-09-28 02:01:15'),
(1172, 50, 211, 5, 66, 'Jueves', 4, '16', '18', '5', '2023-09-28 02:02:02', '2023-09-28 02:02:02'),
(1173, 9, 210, 5, 66, 'Viernes', 5, '10', '11', '5', '2023-09-28 02:04:22', '2023-09-28 02:04:22'),
(1174, 50, 209, 5, 66, 'Viernes', 5, '11', '13', '5', '2023-09-28 02:06:18', '2023-09-28 02:06:18'),
(1175, 50, 211, 5, 66, 'Viernes', 5, '14', '16', '5', '2023-09-28 02:10:53', '2023-09-28 02:10:53'),
(1176, 51, 211, 5, 67, 'Lunes', 1, '11', '13', '2', '2023-09-28 02:22:00', '2023-09-28 02:22:00'),
(1177, 59, 212, 5, 37, 'Jueves', 4, '12', '13', NULL, '2023-09-28 02:22:07', '2023-09-28 02:22:07'),
(1178, 59, 212, 5, 37, 'Jueves', 4, '15', '16', NULL, '2023-09-28 02:22:36', '2023-09-28 02:22:36'),
(1179, 51, 211, 5, 67, 'Lunes', 1, '16', '17', '2', '2023-09-28 02:23:02', '2023-09-28 02:23:02'),
(1180, 59, 212, 5, 37, 'Jueves', 4, '16', '18', NULL, '2023-09-28 02:23:35', '2023-09-28 02:23:35'),
(1181, 51, 212, 5, 67, 'Martes', 2, '7', '9', '2', '2023-09-28 02:25:06', '2023-09-28 02:25:06'),
(1182, 51, 209, 5, 67, 'Martes', 2, '11', '13', '2', '2023-09-28 02:26:20', '2023-09-28 02:26:20'),
(1183, 59, 212, 5, 37, 'Viernes', 5, '8', '10', NULL, '2023-09-28 02:26:26', '2023-09-28 02:26:26'),
(1184, 51, 209, 5, 67, 'Miércoles', 3, '9', '12', '2', '2023-09-28 02:26:47', '2023-09-28 02:26:47'),
(1185, 59, 212, 5, 37, 'Viernes', 5, '10', '12', NULL, '2023-09-28 02:29:01', '2023-09-28 02:29:01'),
(1187, 59, 210, 5, 37, 'Viernes', 5, '12', '13', NULL, '2023-09-28 02:29:33', '2023-09-28 02:29:33'),
(1188, 59, 209, 5, 37, 'Viernes', 5, '15', '16', NULL, '2023-09-28 02:30:17', '2023-09-28 02:30:17'),
(1189, 59, 209, 5, 37, 'Viernes', 5, '16', '18', NULL, '2023-09-28 02:31:10', '2023-09-28 02:31:10'),
(1190, 51, 208, 5, 67, 'Jueves', 4, '8', '11', '2', '2023-09-28 02:44:42', '2023-09-28 02:44:42'),
(1191, 51, 209, 5, 67, 'Jueves', 4, '11', '13', '2', '2023-09-28 02:45:16', '2023-09-28 02:45:16'),
(1192, 51, 208, 5, 67, 'Jueves', 4, '15', '16', '2', '2023-09-28 02:46:21', '2023-09-28 02:46:21'),
(1193, 51, 212, 5, 67, 'Viernes', 5, '9', '10', '2', '2023-09-28 02:46:55', '2023-09-28 02:46:55'),
(1194, 51, 209, 5, 67, 'Viernes', 5, '10', '12', '2', '2023-09-28 02:47:26', '2023-09-28 02:47:26'),
(1195, 51, 212, 5, 3, 'Lunes', 1, '8', '11', '15', '2023-09-28 02:48:10', '2023-09-28 02:48:10'),
(1196, 20, 210, 5, 67, 'Viernes', 5, '12', '13', '2', '2023-09-28 02:48:29', '2023-09-28 02:48:29'),
(1197, 51, 212, 5, 3, 'Lunes', 1, '11', '13', '15', '2023-09-28 02:49:00', '2023-09-28 02:49:00'),
(1198, 51, 212, 5, 3, 'Martes', 2, '10', '11', '15', '2023-09-28 02:50:18', '2023-09-28 02:50:18'),
(1201, 51, 211, 5, 67, 'Lunes', 1, '8', '9', '2', '2023-09-28 02:51:46', '2023-09-28 02:51:46'),
(1202, 51, 209, 5, 38, 'Lunes', 1, '7', '8', '8', '2023-09-28 02:52:20', '2023-09-28 02:52:20'),
(1203, 51, 208, 5, 3, 'Martes', 2, '14', '16', '15', '2023-09-28 02:52:25', '2023-09-28 02:52:25'),
(1204, 51, 208, 5, 38, 'Lunes', 1, '10', '11', '8', '2023-09-28 02:54:00', '2023-09-28 02:54:00'),
(1205, 51, 209, 5, 38, 'Lunes', 1, '11', '12', '8', '2023-09-28 02:54:38', '2023-09-28 02:54:38'),
(1206, 51, 208, 5, 38, 'Lunes', 1, '17', '18', '8', '2023-09-28 02:56:29', '2023-09-28 02:56:29'),
(1207, 51, 209, 5, 38, 'Martes', 2, '10', '12', '8', '2023-09-28 03:01:24', '2023-09-28 03:01:24'),
(1208, 51, 209, 5, 38, 'Miércoles', 3, '7', '9', '8', '2023-09-28 03:02:13', '2023-09-28 03:02:13'),
(1209, 51, 212, 5, 38, 'Miércoles', 3, '11', '12', '8', '2023-09-28 03:03:26', '2023-09-28 03:03:26'),
(1210, 51, 208, 5, 38, 'Jueves', 4, '7', '9', '8', '2023-09-28 03:05:12', '2023-09-28 03:05:12'),
(1211, 61, 209, 5, 68, 'Lunes', 1, '9', '11', '2', '2023-09-28 03:06:55', '2023-09-28 03:06:55'),
(1212, 51, 212, 5, 38, 'Jueves', 4, '11', '12', '8', '2023-09-28 03:07:16', '2023-09-28 03:07:16'),
(1213, 51, 208, 5, 38, 'Viernes', 5, '10', '11', '8', '2023-09-28 03:10:51', '2023-09-28 03:10:51'),
(1214, 51, 208, 5, 38, 'Viernes', 5, '10', '11', '8', '2023-09-28 03:10:56', '2023-09-28 03:10:56'),
(1216, 51, 208, 5, 38, 'Viernes', 5, '16', '17', '8', '2023-09-28 03:12:16', '2023-09-28 03:12:16'),
(1217, 51, 212, 5, 38, 'Viernes', 5, '17', '19', '8', '2023-09-28 03:12:46', '2023-09-28 03:12:46'),
(1218, 51, 209, 5, 3, 'Miércoles', 3, '10', '12', '15', '2023-09-28 03:53:36', '2023-09-28 03:53:36'),
(1219, 51, 212, 5, 3, 'Jueves', 4, '10', '13', '15', '2023-09-28 03:55:24', '2023-09-28 03:55:24'),
(1222, 51, 208, 5, 3, 'Viernes', 5, '10', '11', '15', '2023-09-28 03:57:32', '2023-09-28 03:57:32'),
(1225, 51, 212, 5, 39, 'Martes', 2, '8', '9', '2', '2023-09-28 04:00:14', '2023-09-28 04:00:14'),
(1226, 51, 209, 5, 39, 'Martes', 2, '9', '11', '2', '2023-09-28 04:00:46', '2023-09-28 04:00:46'),
(1227, 51, 209, 5, 3, 'Viernes', 5, '12', '13', '15', '2023-09-28 04:00:51', '2023-09-28 04:00:51'),
(1228, 51, 212, 5, 39, 'Miércoles', 3, '9', '13', '2', '2023-09-28 04:01:26', '2023-09-28 04:01:26'),
(1229, 51, 212, 5, 39, 'Miércoles', 3, '14', '16', '2', '2023-09-28 04:02:01', '2023-09-28 04:02:01'),
(1230, 51, 209, 5, 3, 'Viernes', 5, '14', '16', '15', '2023-09-28 04:02:06', '2023-09-28 04:02:06'),
(1231, 50, 208, 5, 39, 'Jueves', 4, '9', '11', '2', '2023-09-28 04:08:50', '2023-09-28 04:08:50'),
(1232, 51, 208, 5, 39, 'Viernes', 5, '9', '10', '2', '2023-09-28 04:09:34', '2023-09-28 04:09:34'),
(1233, 51, 210, 5, 39, 'Viernes', 5, '10', '11', '2', '2023-09-28 04:10:09', '2023-09-28 04:10:09'),
(1235, 50, 208, 5, 39, 'Viernes', 5, '15', '16', '2', '2023-09-28 04:11:12', '2023-09-28 04:11:12'),
(1236, 54, 212, 5, 40, 'Lunes', 1, '11', '13', '3', '2023-09-28 04:12:35', '2023-09-28 04:12:35'),
(1237, 54, 208, 5, 40, 'Lunes', 1, '14', '15', '3', '2023-09-28 04:13:19', '2023-09-28 04:13:19'),
(1238, 54, 212, 5, 40, 'Lunes', 1, '15', '16', '3', '2023-09-28 04:13:44', '2023-09-28 04:13:44'),
(1239, 51, 212, 5, 4, 'Lunes', 1, '7', '9', '4', '2023-09-28 04:13:57', '2023-09-28 04:13:57'),
(1240, 54, 211, 5, 40, 'Martes', 2, '11', '12', '3', '2023-09-28 04:14:25', '2023-09-28 04:14:25'),
(1241, 54, 209, 5, 40, 'Martes', 2, '12', '13', '3', '2023-09-28 04:15:00', '2023-09-28 04:15:00'),
(1243, 54, 212, 5, 40, 'Martes', 2, '14', '15', '3', '2023-09-28 04:15:27', '2023-09-28 04:15:27'),
(1244, 54, 212, 5, 40, 'Martes', 2, '15', '16', '3', '2023-09-28 04:15:57', '2023-09-28 04:15:57'),
(1245, 51, 212, 5, 4, 'Martes', 2, '7', '11', '4', '2023-09-28 04:16:08', '2023-09-28 04:16:08'),
(1246, 54, 212, 5, 40, 'Miércoles', 3, '14', '15', '3', '2023-09-28 04:16:30', '2023-09-28 04:16:30'),
(1247, 54, 212, 5, 40, 'Miércoles', 3, '15', '16', '3', '2023-09-28 04:16:52', '2023-09-28 04:16:52'),
(1248, 51, 208, 5, 4, 'Miércoles', 3, '9', '10', '4', '2023-09-28 04:17:15', '2023-09-28 04:17:15'),
(1249, 51, 209, 5, 4, 'Miércoles', 3, '10', '13', '4', '2023-09-28 04:18:06', '2023-09-28 04:18:06'),
(1250, 54, 209, 5, 40, 'Jueves', 4, '7', '11', '3', '2023-09-28 04:19:28', '2023-09-28 04:19:28'),
(1251, 51, 211, 5, 4, 'Jueves', 4, '9', '11', '4', '2023-09-28 04:19:33', '2023-09-28 04:19:33'),
(1252, 54, 212, 5, 40, 'Jueves', 4, '14', '16', '3', '2023-09-28 04:20:14', '2023-09-28 04:20:14'),
(1253, 54, 209, 5, 40, 'Viernes', 5, '7', '8', '3', '2023-09-28 04:21:33', '2023-09-28 04:21:33'),
(1256, 54, 208, 5, 40, 'Viernes', 5, '14', '16', '3', '2023-09-28 04:22:36', '2023-09-28 04:22:36'),
(1257, 51, 211, 5, 4, 'Viernes', 5, '7', '10', '4', '2023-09-28 04:22:54', '2023-09-28 04:22:54'),
(1260, 61, 208, 5, 68, 'Lunes', 1, '17', '18', '2', '2023-09-28 04:27:31', '2023-09-28 04:27:31'),
(1261, 61, 209, 5, 68, 'Martes', 2, '9', '12', '2', '2023-09-28 04:28:12', '2023-09-28 04:28:12'),
(1262, 61, 208, 5, 68, 'Martes', 2, '12', '13', '2', '2023-09-28 04:28:45', '2023-09-28 04:28:45'),
(1263, 51, 208, 5, 4, 'Viernes', 5, '11', '13', '4', '2023-09-28 04:29:13', '2023-09-28 04:29:13'),
(1264, 61, 211, 5, 68, 'Miércoles', 3, '9', '11', '2', '2023-09-28 04:29:21', '2023-09-28 04:29:21'),
(1265, 61, 209, 5, 68, 'Miércoles', 3, '11', '12', '2', '2023-09-28 04:29:59', '2023-09-28 04:29:59'),
(1266, 61, 208, 5, 68, 'Miércoles', 3, '12', '13', '2', '2023-09-28 04:30:21', '2023-09-28 04:30:21'),
(1267, 61, 211, 5, 68, 'Jueves', 4, '10', '11', '2', '2023-09-28 04:30:59', '2023-09-28 04:30:59'),
(1268, 61, 209, 5, 68, 'Jueves', 4, '11', '13', '2', '2023-09-28 04:31:26', '2023-09-28 04:31:26'),
(1269, 61, 212, 5, 68, 'Viernes', 5, '8', '9', '2', '2023-09-28 04:32:21', '2023-09-28 04:32:21'),
(1270, 61, 212, 5, 68, 'Viernes', 5, '9', '11', '2', '2023-09-28 04:32:46', '2023-09-28 04:32:46'),
(1271, 51, 212, 5, 5, 'Lunes', 1, '10', '11', '3', '2023-09-28 04:33:02', '2023-09-28 04:33:02'),
(1272, 61, 208, 5, 68, 'Viernes', 5, '11', '12', '2', '2023-09-28 04:33:28', '2023-09-28 04:33:28'),
(1273, 61, 210, 5, 68, 'Viernes', 5, '12', '13', '2', '2023-09-28 04:33:48', '2023-09-28 04:33:48'),
(1276, 57, 212, 5, 69, 'Lunes', 1, '8', '13', '2', '2023-09-28 04:36:11', '2023-09-28 04:36:11'),
(1277, 51, 211, 5, 5, 'Martes', 2, '14', '19', '3', '2023-09-28 04:36:19', '2023-09-28 04:36:19'),
(1278, 57, 212, 5, 69, 'Lunes', 1, '15', '18', '2', '2023-09-28 04:36:34', '2023-09-28 04:36:34'),
(1279, 57, 212, 5, 69, 'Martes', 2, '8', '9', '2', '2023-09-28 04:36:57', '2023-09-28 04:36:57'),
(1280, 57, 212, 5, 69, 'Martes', 2, '12', '13', '2', '2023-09-28 04:37:24', '2023-09-28 04:37:24'),
(1281, 57, 212, 5, 69, 'Martes', 2, '15', '18', '2', '2023-09-28 04:37:41', '2023-09-28 04:37:41'),
(1282, 57, 212, 5, 69, 'Miércoles', 3, '8', '13', '2', '2023-09-28 04:38:20', '2023-09-28 04:38:20'),
(1283, 51, 208, 5, 5, 'Miércoles', 3, '9', '11', '3', '2023-09-28 04:38:44', '2023-09-28 04:38:44'),
(1284, 57, 212, 5, 69, 'Miércoles', 3, '15', '18', '2', '2023-09-28 04:38:46', '2023-09-28 04:38:46'),
(1285, 57, 209, 5, 69, 'Jueves', 4, '8', '9', '2', '2023-09-28 04:39:18', '2023-09-28 04:39:18'),
(1286, 57, 209, 5, 69, 'Jueves', 4, '12', '13', '2', '2023-09-28 04:39:47', '2023-09-28 04:39:47'),
(1287, 57, 208, 5, 69, 'Jueves', 4, '15', '16', '2', '2023-09-28 04:40:15', '2023-09-28 04:40:15'),
(1288, 51, 208, 5, 5, 'Miércoles', 3, '15', '17', '3', '2023-09-28 04:40:35', '2023-09-28 04:40:35'),
(1289, 57, 212, 5, 69, 'Jueves', 4, '16', '18', '2', '2023-09-28 04:40:48', '2023-09-28 04:40:48'),
(1290, 57, 212, 5, 69, 'Viernes', 5, '8', '11', '2', '2023-09-28 04:41:20', '2023-09-28 04:41:20'),
(1291, 57, 210, 5, 69, 'Viernes', 5, '11', '12', '2', '2023-09-28 04:41:38', '2023-09-28 04:41:38'),
(1292, 57, 212, 5, 69, 'Viernes', 5, '12', '13', '2', '2023-09-28 04:41:56', '2023-09-28 04:41:56'),
(1293, 57, 212, 5, 69, 'Viernes', 5, '15', '18', '2', '2023-09-28 04:42:25', '2023-09-28 04:42:25'),
(1294, 51, 209, 5, 5, 'Jueves', 4, '8', '11', '3', '2023-09-28 04:43:45', '2023-09-28 04:43:45'),
(1295, 51, 209, 5, 5, 'Jueves', 4, '14', '17', '3', '2023-09-28 04:44:30', '2023-09-28 04:44:30'),
(1297, 51, 209, 5, 5, 'Viernes', 5, '12', '13', '3', '2023-09-28 04:47:34', '2023-09-28 04:47:34'),
(1298, 51, 209, 5, 5, 'Viernes', 5, '16', '17', '3', '2023-09-28 04:50:43', '2023-09-28 04:50:43'),
(1299, 54, 212, 5, 70, 'Lunes', 1, '9', '13', '2', '2023-09-28 04:50:59', '2023-09-28 04:50:59'),
(1300, 54, 212, 5, 70, 'Lunes', 1, '15', '17', '2', '2023-09-28 04:51:25', '2023-09-28 04:51:25'),
(1301, 54, 212, 5, 70, 'Martes', 2, '7', '8', '2', '2023-09-28 04:52:41', '2023-09-28 04:52:41'),
(1302, 54, 209, 5, 70, 'Martes', 2, '8', '9', '2', '2023-09-28 04:53:18', '2023-09-28 04:53:18'),
(1303, 54, 208, 5, 70, 'Martes', 2, '9', '10', '2', '2023-09-28 04:53:47', '2023-09-28 04:53:47'),
(1304, 54, 209, 5, 70, 'Martes', 2, '10', '11', '2', '2023-09-28 04:54:13', '2023-09-28 04:54:13'),
(1305, 54, 211, 5, 70, 'Miércoles', 3, '7', '8', '2', '2023-09-28 04:54:41', '2023-09-28 04:54:41'),
(1306, 50, 212, 5, 6, 'Lunes', 1, '8', '9', '14', '2023-09-28 04:55:19', '2023-09-28 04:55:19'),
(1307, 54, 209, 5, 70, 'Miércoles', 3, '8', '9', '2', '2023-09-28 04:55:29', '2023-09-28 04:55:29'),
(1308, 50, 212, 5, 6, 'Lunes', 1, '11', '13', '14', '2023-09-28 04:56:06', '2023-09-28 04:56:06'),
(1309, 50, 209, 5, 6, 'Martes', 2, '9', '11', '14', '2023-09-28 04:57:09', '2023-09-28 04:57:09'),
(1310, 54, 209, 5, 70, 'Miércoles', 3, '11', '12', '2', '2023-09-28 04:57:26', '2023-09-28 04:57:26'),
(1311, 54, 209, 5, 70, 'Miércoles', 3, '12', '13', '3', '2023-09-28 04:57:48', '2023-09-28 04:57:48'),
(1312, 50, 211, 5, 6, 'Martes', 2, '11', '13', '14', '2023-09-28 04:57:48', '2023-09-28 04:57:48'),
(1313, 54, 211, 5, 70, 'Miércoles', 3, '15', '17', '2', '2023-09-28 04:58:19', '2023-09-28 04:58:19'),
(1314, 54, 211, 5, 70, 'Jueves', 4, '7', '8', '2', '2023-09-28 04:58:57', '2023-09-28 04:58:57'),
(1315, 54, 209, 5, 70, 'Jueves', 4, '12', '13', '2', '2023-09-28 04:59:25', '2023-09-28 04:59:25'),
(1316, 50, 212, 5, 6, 'Martes', 2, '16', '18', '14', '2023-09-28 04:59:37', '2023-09-28 04:59:37'),
(1317, 54, 211, 5, 70, 'Jueves', 4, '15', '16', '2', '2023-09-28 04:59:55', '2023-09-28 04:59:55'),
(1318, 50, 208, 5, 6, 'Miércoles', 3, '11', '13', '14', '2023-09-28 05:00:14', '2023-09-28 05:00:14'),
(1319, 54, 208, 5, 70, 'Jueves', 4, '16', '17', '2', '2023-09-28 05:00:17', '2023-09-28 05:00:17'),
(1320, 54, 211, 5, 70, 'Viernes', 5, '7', '8', '2', '2023-09-28 05:00:42', '2023-09-28 05:00:42'),
(1321, 50, 211, 5, 6, 'Miércoles', 3, '16', '18', '14', '2023-09-28 05:00:58', '2023-09-28 05:00:58'),
(1322, 54, 208, 5, 70, 'Viernes', 5, '8', '9', '2', '2023-09-28 05:01:02', '2023-09-28 05:01:02'),
(1323, 54, 209, 5, 70, 'Viernes', 5, '9', '10', '2', '2023-09-28 05:01:25', '2023-09-28 05:01:25'),
(1324, 54, 210, 5, 70, 'Viernes', 5, '12', '13', '2', '2023-09-28 05:02:01', '2023-09-28 05:02:01'),
(1325, 50, 212, 5, 6, 'Jueves', 4, '8', '11', '14', '2023-09-28 05:02:16', '2023-09-28 05:02:16'),
(1326, 61, 208, 5, 73, 'Lunes', 1, '9', '10', '4', '2023-09-28 05:04:20', '2023-09-28 05:04:20'),
(1327, 61, 209, 5, 73, 'Lunes', 1, '10', '11', '4', '2023-09-28 05:04:58', '2023-09-28 05:04:58'),
(1328, 61, 208, 5, 73, 'Lunes', 1, '16', '17', '4', '2023-09-28 05:05:31', '2023-09-28 05:05:31'),
(1329, 61, 209, 5, 73, 'Lunes', 1, '17', '18', '4', '2023-09-28 05:06:03', '2023-09-28 05:06:03');
INSERT INTO `horarios` (`id`, `aula_id`, `actividad_id`, `paralelo_id`, `docente_id`, `dia_semana`, `numero_dia`, `hora_inicio`, `hora_fin`, `numero_puesto`, `created_at`, `updated_at`) VALUES
(1330, 50, 209, 5, 6, 'Jueves', 4, '11', '13', '14', '2023-09-28 05:06:37', '2023-09-28 05:06:37'),
(1331, 54, 211, 5, 73, 'Martes', 2, '9', '11', '4', '2023-09-28 05:07:08', '2023-09-28 05:07:08'),
(1332, 50, 208, 5, 6, 'Jueves', 4, '16', '17', '14', '2023-09-28 05:07:10', '2023-09-28 05:07:10'),
(1333, 50, 209, 5, 6, 'Viernes', 5, '7', '9', '14', '2023-09-28 05:08:08', '2023-09-28 05:08:08'),
(1334, 37, 89, 1, 23, 'Martes', 2, '9', '11', NULL, '2023-09-28 05:08:11', '2023-09-28 05:08:11'),
(1336, 37, 89, 1, 23, 'Miércoles', 3, '9', '11', NULL, '2023-09-28 05:08:47', '2023-09-28 05:08:47'),
(1338, 61, 211, 5, 73, 'Martes', 2, '14', '15', '4', '2023-09-28 05:09:44', '2023-09-28 05:09:44'),
(1339, 61, 212, 5, 73, 'Martes', 2, '15', '18', '4', '2023-09-28 05:10:05', '2023-09-28 05:10:05'),
(1340, 2, 163, 1, 23, 'Martes', 2, '11', '13', NULL, '2023-09-28 05:10:21', '2023-09-28 05:10:21'),
(1341, 61, 212, 5, 73, 'Miércoles', 3, '11', '13', '4', '2023-09-28 05:10:42', '2023-09-28 05:10:42'),
(1342, 50, 212, 5, 6, 'Viernes', 5, '11', '13', '14', '2023-09-28 05:11:04', '2023-09-28 05:11:04'),
(1343, 6, 163, 1, 23, 'Jueves', 4, '11', '13', NULL, '2023-09-28 05:11:10', '2023-09-28 05:11:10'),
(1344, 54, 212, 5, 73, 'Miércoles', 3, '16', '18', '4', '2023-09-28 05:11:19', '2023-09-28 05:11:19'),
(1345, 54, 212, 5, 73, 'Jueves', 4, '10', '13', '4', '2023-09-28 05:11:47', '2023-09-28 05:11:47'),
(1346, 54, 212, 5, 73, 'Jueves', 4, '16', '17', '4', '2023-09-28 05:12:12', '2023-09-28 05:12:12'),
(1347, 6, 123, 1, 23, 'Miércoles', 3, '11', '13', NULL, '2023-09-28 05:12:24', '2023-09-28 05:12:24'),
(1348, 54, 212, 5, 73, 'Viernes', 5, '9', '10', '4', '2023-09-28 05:12:40', '2023-09-28 05:12:40'),
(1349, 6, 123, 1, 23, 'Jueves', 4, '7', '9', NULL, '2023-09-28 05:12:56', '2023-09-28 05:12:56'),
(1350, 54, 210, 5, 73, 'Viernes', 5, '10', '11', '4', '2023-09-28 05:12:58', '2023-09-28 05:12:58'),
(1351, 60, 209, 5, 7, 'Lunes', 1, '8', '9', '1', '2023-09-28 05:13:04', '2023-09-28 05:13:04'),
(1352, 54, 212, 5, 73, 'Viernes', 5, '11', '13', '4', '2023-09-28 05:13:23', '2023-09-28 05:13:23'),
(1353, 54, 212, 5, 73, 'Viernes', 5, '14', '16', '4', '2023-09-28 05:14:07', '2023-09-28 05:14:07'),
(1354, 10, 159, 1, 60, 'Lunes', 1, '14', '16', NULL, '2023-09-28 05:15:42', '2023-09-28 05:15:42'),
(1355, 60, 212, 5, 7, 'Lunes', 1, '9', '13', '1', '2023-09-28 05:15:43', '2023-09-28 05:15:43'),
(1356, 60, 212, 5, 7, 'Lunes', 1, '15', '18', '1', '2023-09-28 05:16:41', '2023-09-28 05:16:41'),
(1357, 11, 46, 1, 36, 'Lunes', 1, '14', '16', NULL, '2023-09-28 05:16:43', '2023-09-28 05:16:43'),
(1358, 60, 209, 5, 7, 'Martes', 2, '8', '9', '1', '2023-09-28 05:17:15', '2023-09-28 05:17:15'),
(1360, 60, 212, 5, 7, 'Martes', 2, '9', '13', '1', '2023-09-28 05:17:44', '2023-09-28 05:17:44'),
(1361, 11, 46, 1, 36, 'Miércoles', 3, '15', '16', NULL, '2023-09-28 05:17:49', '2023-09-28 05:17:49'),
(1363, 60, 212, 5, 7, 'Martes', 2, '17', '18', '1', '2023-09-28 05:18:32', '2023-09-28 05:18:32'),
(1365, 60, 209, 5, 7, 'Miércoles', 3, '8', '9', '1', '2023-09-28 05:19:08', '2023-09-28 05:19:08'),
(1366, 11, 40, 1, 36, 'Lunes', 1, '8', '10', NULL, '2023-09-28 05:19:14', '2023-09-28 05:19:14'),
(1368, 11, 40, 1, 36, 'Jueves', 4, '8', '9', NULL, '2023-09-28 05:19:47', '2023-09-28 05:19:47'),
(1369, 60, 212, 5, 7, 'Miércoles', 3, '9', '13', '1', '2023-09-28 05:20:06', '2023-09-28 05:20:06'),
(1371, 11, 40, 1, 36, 'Viernes', 5, '8', '10', NULL, '2023-09-28 05:20:23', '2023-09-28 05:20:23'),
(1372, 60, 212, 5, 7, 'Miércoles', 3, '17', '18', '1', '2023-09-28 05:20:50', '2023-09-28 05:20:50'),
(1375, 60, 212, 5, 7, 'Jueves', 4, '8', '9', '1', '2023-09-28 05:21:33', '2023-09-28 05:21:33'),
(1378, 60, 208, 5, 7, 'Jueves', 4, '9', '10', '1', '2023-09-28 05:22:29', '2023-09-28 05:22:29'),
(1382, 60, 212, 5, 7, 'Jueves', 4, '10', '13', '1', '2023-09-28 05:24:04', '2023-09-28 05:24:04'),
(1383, 60, 212, 5, 7, 'Jueves', 4, '15', '18', '1', '2023-09-28 05:25:05', '2023-09-28 05:25:05'),
(1384, 6, 10, 1, 39, 'Martes', 2, '17', '18', NULL, '2023-09-28 05:26:06', '2023-09-28 05:26:06'),
(1385, 60, 212, 5, 7, 'Viernes', 5, '7', '10', '1', '2023-09-28 05:26:19', '2023-09-28 05:26:19'),
(1386, 20, 210, 5, 7, 'Viernes', 5, '10', '11', '1', '2023-09-28 05:27:47', '2023-09-28 05:27:47'),
(1387, 60, 212, 5, 7, 'Viernes', 5, '11', '12', '1', '2023-09-28 05:28:11', '2023-09-28 05:28:11'),
(1389, 60, 212, 5, 7, 'Viernes', 5, '15', '18', '1', '2023-09-28 05:28:42', '2023-09-28 05:28:42'),
(1390, 50, 208, 5, 8, 'Lunes', 1, '7', '8', '8', '2023-09-28 05:29:24', '2023-09-28 05:29:24'),
(1391, 50, 209, 5, 8, 'Lunes', 1, '8', '10', '8', '2023-09-28 05:30:07', '2023-09-28 05:30:07'),
(1392, 50, 208, 5, 8, 'Martes', 2, '8', '9', '8', '2023-09-28 05:31:26', '2023-09-28 05:31:26'),
(1394, 50, 209, 5, 8, 'Martes', 2, '15', '17', '8', '2023-09-28 05:33:08', '2023-09-28 05:33:08'),
(1395, 50, 208, 5, 8, 'Martes', 2, '17', '18', '8', '2023-09-28 05:33:45', '2023-09-28 05:33:45'),
(1396, 50, 208, 5, 8, 'Miércoles', 3, '14', '15', '8', '2023-09-28 05:36:30', '2023-09-28 05:36:30'),
(1397, 50, 209, 5, 8, 'Miércoles', 3, '15', '17', '8', '2023-09-28 05:37:14', '2023-09-28 05:37:14'),
(1399, 50, 212, 5, 8, 'Jueves', 4, '11', '13', '8', '2023-09-28 05:39:48', '2023-09-28 05:39:48'),
(1400, 50, 212, 5, 8, 'Viernes', 5, '8', '11', '8', '2023-09-28 05:41:28', '2023-09-28 05:41:28'),
(1402, 50, 212, 5, 8, 'Viernes', 5, '12', '13', '8', '2023-09-28 05:45:53', '2023-09-28 05:45:53'),
(1403, 50, 212, 5, 8, 'Viernes', 5, '14', '17', '8', '2023-09-28 05:47:29', '2023-09-28 05:47:29'),
(1404, 12, 49, 1, 12, 'Lunes', 1, '7', '9', NULL, '2023-09-28 05:51:14', '2023-09-28 05:51:14'),
(1408, 50, 209, 5, 10, 'Lunes', 1, '7', '8', '10', '2023-09-28 06:02:14', '2023-09-28 06:02:14'),
(1409, 50, 208, 5, 10, 'Lunes', 1, '8', '9', '10', '2023-09-28 06:06:36', '2023-09-28 06:06:36'),
(1410, 50, 208, 5, 10, 'Lunes', 1, '11', '13', '10', '2023-09-28 06:07:47', '2023-09-28 06:07:47'),
(1411, 50, 209, 5, 10, 'Martes', 2, '8', '11', '10', '2023-09-28 06:08:36', '2023-09-28 06:08:36'),
(1412, 50, 208, 5, 10, 'Miércoles', 3, '11', '13', '10', '2023-09-28 06:09:41', '2023-09-28 06:09:41'),
(1413, 50, 211, 5, 10, 'Miércoles', 3, '14', '20', '10', '2023-09-28 06:11:06', '2023-09-28 06:11:06'),
(1414, 50, 208, 5, 10, 'Jueves', 4, '14', '16', '10', '2023-09-28 06:12:26', '2023-09-28 06:12:26'),
(1415, 50, 209, 5, 10, 'Jueves', 4, '18', '20', '10', '2023-09-28 06:13:13', '2023-09-28 06:13:13'),
(1416, 50, 212, 5, 10, 'Viernes', 5, '8', '9', '10', '2023-09-28 06:13:48', '2023-09-28 06:13:48'),
(1419, 48, 209, 5, 11, 'Lunes', 1, '9', '10', '2', '2023-09-28 06:16:32', '2023-09-28 06:16:32'),
(1420, 48, 209, 5, 11, 'Lunes', 1, '16', '17', '2', '2023-09-28 06:17:09', '2023-09-28 06:17:09'),
(1421, 48, 212, 5, 11, 'Martes', 2, '9', '13', '2', '2023-09-28 06:18:12', '2023-09-28 06:18:12'),
(1422, 48, 209, 5, 11, 'Miércoles', 3, '10', '13', '2', '2023-09-28 06:18:54', '2023-09-28 06:18:54'),
(1423, 48, 212, 5, 11, 'Miércoles', 3, '15', '17', '2', '2023-09-28 06:20:04', '2023-09-28 06:20:04'),
(1424, 48, 209, 5, 11, 'Miércoles', 3, '17', '18', '2', '2023-09-28 06:20:35', '2023-09-28 06:20:35'),
(1425, 48, 209, 5, 11, 'Jueves', 4, '9', '10', '2', '2023-09-28 06:21:13', '2023-09-28 06:21:13'),
(1426, 48, 208, 5, 11, 'Jueves', 4, '16', '17', '2', '2023-09-28 06:21:53', '2023-09-28 06:21:53'),
(1427, 48, 208, 5, 11, 'Viernes', 5, '7', '10', '2', '2023-09-28 06:22:32', '2023-09-28 06:22:32'),
(1428, 48, 212, 5, 11, 'Viernes', 5, '10', '11', '2', '2023-09-28 06:23:11', '2023-09-28 06:23:11'),
(1430, 48, 209, 5, 12, 'Lunes', 1, '14', '16', '1', '2023-09-28 06:46:51', '2023-09-28 06:46:51'),
(1431, 48, 212, 5, 12, 'Martes', 2, '9', '13', '1', '2023-09-28 06:47:46', '2023-09-28 06:47:46'),
(1432, 48, 209, 5, 12, 'Martes', 2, '14', '16', '1', '2023-09-28 06:48:33', '2023-09-28 06:48:33'),
(1433, 48, 209, 5, 12, 'Miércoles', 3, '11', '13', '1', '2023-09-28 06:49:15', '2023-09-28 06:49:15'),
(1434, 48, 212, 5, 12, 'Miércoles', 3, '15', '17', '1', '2023-09-28 06:49:55', '2023-09-28 06:49:55'),
(1435, 48, 208, 5, 12, 'Jueves', 4, '14', '16', '1', '2023-09-28 06:50:44', '2023-09-28 06:50:44'),
(1437, 48, 209, 5, 12, 'Viernes', 5, '11', '13', '1', '2023-09-28 06:52:37', '2023-09-28 06:52:37'),
(1438, 48, 208, 5, 12, 'Viernes', 5, '14', '16', '1', '2023-09-28 06:53:25', '2023-09-28 06:53:25'),
(1439, 53, 212, 5, 13, 'Lunes', 1, '16', '18', '5', '2023-09-28 16:44:28', '2023-09-28 16:44:28'),
(1440, 53, 212, 5, 13, 'Martes', 2, '16', '18', '5', '2023-09-28 16:45:44', '2023-09-28 16:45:44'),
(1441, 53, 211, 5, 13, 'Miércoles', 3, '11', '13', '5', '2023-09-28 16:46:38', '2023-09-28 16:46:38'),
(1442, 53, 208, 5, 13, 'Miércoles', 3, '16', '18', '5', '2023-09-28 16:47:37', '2023-09-28 16:47:37'),
(1443, 53, 208, 5, 13, 'Jueves', 4, '10', '13', '5', '2023-09-28 16:48:50', '2023-09-28 16:48:50'),
(1444, 53, 212, 5, 13, 'Jueves', 4, '16', '18', '5', '2023-09-28 16:50:30', '2023-09-28 16:50:30'),
(1445, 53, 209, 5, 13, 'Viernes', 5, '7', '8', '5', '2023-09-28 16:51:18', '2023-09-28 16:51:18'),
(1446, 53, 209, 5, 13, 'Viernes', 5, '9', '11', '5', '2023-09-28 16:52:25', '2023-09-28 16:52:25'),
(1447, 53, 210, 5, 13, 'Viernes', 5, '11', '12', '5', '2023-09-28 16:52:58', '2023-09-28 16:52:58'),
(1448, 53, 209, 5, 13, 'Viernes', 5, '12', '13', '5', '2023-09-28 16:53:54', '2023-09-28 16:53:54'),
(1449, 53, 212, 5, 13, 'Viernes', 5, '16', '18', '5', '2023-09-28 16:54:46', '2023-09-28 16:54:46'),
(1450, 48, 212, 5, 14, 'Lunes', 1, '8', '13', '3', '2023-09-28 16:57:12', '2023-09-28 16:57:12'),
(1451, 48, 212, 5, 14, 'Lunes', 1, '14', '17', '3', '2023-09-28 16:58:10', '2023-09-28 16:58:10'),
(1452, 48, 209, 5, 14, 'Martes', 2, '8', '9', '3', '2023-09-28 16:59:16', '2023-09-28 16:59:16'),
(1453, 48, 212, 5, 14, 'Martes', 2, '9', '13', '3', '2023-09-28 16:59:58', '2023-09-28 16:59:58'),
(1454, 48, 209, 5, 14, 'Miércoles', 3, '10', '11', '3', '2023-09-28 17:01:20', '2023-09-28 17:01:20'),
(1455, 48, 212, 5, 14, 'Miércoles', 3, '14', '18', '3', '2023-09-28 17:02:31', '2023-09-28 17:02:31'),
(1456, 48, 212, 5, 14, 'Jueves', 4, '9', '12', '3', '2023-09-28 17:03:26', '2023-09-28 17:03:26'),
(1457, 48, 212, 5, 14, 'Viernes', 5, '8', '9', '3', '2023-09-28 17:04:12', '2023-09-28 17:04:12'),
(1458, 48, 209, 5, 14, 'Viernes', 5, '9', '11', '3', '2023-09-28 17:05:28', '2023-09-28 17:05:28'),
(1459, 48, 209, 5, 14, 'Viernes', 5, '9', '11', '3', '2023-09-28 17:05:28', '2023-09-28 17:05:28'),
(1460, 48, 209, 5, 14, 'Viernes', 5, '9', '11', '3', '2023-09-28 17:05:28', '2023-09-28 17:05:28'),
(1461, 48, 209, 5, 14, 'Viernes', 5, '9', '11', '3', '2023-09-28 17:05:28', '2023-09-28 17:05:28'),
(1462, 48, 210, 5, 14, 'Viernes', 5, '11', '12', '3', '2023-09-28 17:05:58', '2023-09-28 17:05:58'),
(1463, 48, 208, 5, 14, 'Viernes', 5, '12', '13', '3', '2023-09-28 17:06:49', '2023-09-28 17:06:49'),
(1464, 48, 208, 5, 14, 'Viernes', 5, '14', '15', '3', '2023-09-28 17:07:40', '2023-09-28 17:07:40'),
(1465, 48, 212, 5, 14, 'Viernes', 5, '15', '17', '3', '2023-09-28 17:08:26', '2023-09-28 17:08:26'),
(1466, 52, 212, 5, 15, 'Lunes', 1, '9', '13', '1', '2023-09-28 17:11:10', '2023-09-28 17:11:10'),
(1467, 52, 212, 5, 15, 'Martes', 2, '7', '11', '1', '2023-09-28 17:12:18', '2023-09-28 17:12:18'),
(1468, 52, 212, 5, 15, 'Martes', 2, '16', '18', '1', '2023-09-28 17:13:04', '2023-09-28 17:13:04'),
(1469, 52, 209, 5, 15, 'Miércoles', 3, '7', '9', '1', '2023-09-28 17:13:47', '2023-09-28 17:13:47'),
(1470, 52, 212, 5, 15, 'Miércoles', 3, '9', '11', '1', '2023-09-28 17:14:49', '2023-09-28 17:14:49'),
(1471, 52, 209, 5, 15, 'Jueves', 4, '7', '9', '1', '2023-09-28 17:16:17', '2023-09-28 17:16:17'),
(1472, 52, 211, 5, 15, 'Jueves', 4, '9', '11', '1', '2023-09-28 17:16:55', '2023-09-28 17:16:55'),
(1473, 52, 212, 5, 15, 'Jueves', 4, '11', '12', '1', '2023-09-28 17:17:46', '2023-09-28 17:17:46'),
(1474, 52, 211, 5, 15, 'Jueves', 4, '12', '13', '1', '2023-09-28 17:18:41', '2023-09-28 17:18:41'),
(1475, 52, 212, 5, 15, 'Jueves', 4, '16', '18', '1', '2023-09-28 17:19:30', '2023-09-28 17:19:30'),
(1476, 52, 212, 5, 15, 'Viernes', 5, '7', '9', '1', '2023-09-28 17:20:17', '2023-09-28 17:20:17'),
(1477, 52, 212, 5, 15, 'Viernes', 5, '9', '10', '1', '2023-09-28 17:21:11', '2023-09-28 17:21:11'),
(1478, 52, 210, 5, 15, 'Viernes', 5, '10', '11', '1', '2023-09-28 17:21:33', '2023-09-28 17:21:33'),
(1479, 52, 208, 5, 15, 'Viernes', 5, '11', '13', '1', '2023-09-28 17:22:48', '2023-09-28 17:22:48'),
(1480, 47, 211, 5, 16, 'Lunes', 1, '8', '9', '1', '2023-09-28 17:24:27', '2023-09-28 17:24:27'),
(1481, 47, 208, 5, 16, 'Lunes', 1, '9', '10', '1', '2023-09-28 17:25:16', '2023-09-28 17:25:16'),
(1482, 47, 209, 5, 16, 'Lunes', 1, '12', '13', '1', '2023-09-28 17:26:18', '2023-09-28 17:26:18'),
(1483, 47, 211, 5, 16, 'Lunes', 1, '15', '16', '1', '2023-09-28 17:26:58', '2023-09-28 17:26:58'),
(1484, 47, 212, 5, 16, 'Martes', 2, '8', '10', '1', '2023-09-28 17:28:14', '2023-09-28 17:28:14'),
(1485, 47, 212, 5, 16, 'Martes', 2, '12', '13', '1', '2023-09-28 17:29:03', '2023-09-28 17:29:03'),
(1486, 47, 212, 5, 16, 'Martes', 2, '15', '18', '1', '2023-09-28 17:29:54', '2023-09-28 17:29:54'),
(1487, 47, 211, 5, 16, 'Miércoles', 3, '10', '13', '1', '2023-09-28 17:30:56', '2023-09-28 17:30:56'),
(1488, 47, 211, 5, 16, 'Miércoles', 3, '15', '16', '1', '2023-09-28 17:31:51', '2023-09-28 17:31:51'),
(1489, 47, 208, 5, 16, 'Miércoles', 3, '16', '17', '1', '2023-09-28 17:32:39', '2023-09-28 17:32:39'),
(1490, 47, 209, 5, 16, 'Miércoles', 3, '17', '18', '1', '2023-09-28 17:33:22', '2023-09-28 17:33:22'),
(1491, 47, 212, 5, 16, 'Jueves', 4, '8', '13', '1', '2023-09-28 17:34:49', '2023-09-28 17:34:49'),
(1492, 47, 212, 5, 16, 'Jueves', 4, '15', '18', '1', '2023-09-28 17:35:39', '2023-09-28 17:35:39'),
(1493, 47, 212, 5, 16, 'Viernes', 5, '8', '10', '1', '2023-09-28 17:36:17', '2023-09-28 17:36:17'),
(1494, 47, 210, 5, 16, 'Viernes', 5, '10', '11', '1', '2023-09-28 17:36:47', '2023-09-28 17:36:47'),
(1495, 47, 212, 5, 16, 'Viernes', 5, '11', '13', '1', '2023-09-28 17:39:24', '2023-09-28 17:39:24'),
(1496, 47, 209, 5, 16, 'Viernes', 5, '17', '18', '1', '2023-09-28 17:40:21', '2023-09-28 17:40:21'),
(1497, 68, 209, 5, 17, 'Martes', 2, '17', '18', '1', '2023-09-28 17:44:29', '2023-09-28 17:44:29'),
(1498, 68, 209, 5, 17, 'Jueves', 4, '10', '13', '1', '2023-09-28 17:45:39', '2023-09-28 17:45:39'),
(1499, 68, 208, 5, 17, 'Viernes', 5, '7', '9', '1', '2023-09-28 17:46:34', '2023-09-28 17:46:34'),
(1500, 68, 212, 5, 17, 'Viernes', 5, '9', '10', '1', '2023-09-28 17:47:17', '2023-09-28 17:47:17'),
(1501, 68, 209, 5, 17, 'Viernes', 5, '10', '11', '1', '2023-09-28 17:47:57', '2023-09-28 17:47:57'),
(1502, 68, 210, 5, 17, 'Viernes', 5, '11', '13', '1', '2023-09-28 17:48:29', '2023-09-28 17:48:29'),
(1503, 55, 209, 5, 18, 'Lunes', 1, '14', '16', '1', '2023-09-28 17:55:45', '2023-09-28 17:55:45'),
(1504, 55, 209, 5, 18, 'Lunes', 1, '19', '20', '1', '2023-09-28 17:56:34', '2023-09-28 17:56:34'),
(1505, 55, 209, 5, 18, 'Martes', 2, '9', '12', '1', '2023-09-28 17:57:37', '2023-09-28 17:57:37'),
(1506, 55, 208, 5, 18, 'Martes', 2, '12', '13', '1', '2023-09-28 17:58:21', '2023-09-28 17:58:21'),
(1507, 55, 212, 5, 18, 'Martes', 2, '17', '18', '1', '2023-09-28 17:59:33', '2023-09-28 17:59:33'),
(1508, 55, 212, 5, 18, 'Miércoles', 3, '8', '12', '1', '2023-09-28 18:00:19', '2023-09-28 18:00:19'),
(1509, 55, 212, 5, 18, 'Miércoles', 3, '16', '18', '1', '2023-09-28 18:06:08', '2023-09-28 18:06:08'),
(1510, 55, 212, 5, 18, 'Jueves', 4, '9', '13', '1', '2023-09-28 18:06:55', '2023-09-28 18:06:55'),
(1511, 55, 212, 5, 18, 'Jueves', 4, '16', '18', '1', '2023-09-28 18:08:09', '2023-09-28 18:08:09'),
(1512, 55, 210, 5, 18, 'Viernes', 5, '11', '12', '1', '2023-09-28 18:08:43', '2023-09-28 18:08:43'),
(1513, 55, 208, 5, 18, 'Viernes', 5, '12', '13', '1', '2023-09-28 18:09:29', '2023-09-28 18:09:29'),
(1514, 55, 208, 5, 18, 'Viernes', 5, '14', '15', '1', '2023-09-28 18:11:02', '2023-09-28 18:11:02'),
(1515, 55, 212, 5, 18, 'Viernes', 5, '15', '17', '1', '2023-09-28 18:11:49', '2023-09-28 18:11:49'),
(1516, 51, 212, 5, 19, 'Lunes', 1, '8', '9', '11', '2023-09-28 18:13:27', '2023-09-28 18:13:27'),
(1517, 51, 208, 5, 19, 'Lunes', 1, '11', '13', '11', '2023-09-28 18:14:26', '2023-09-28 18:14:26'),
(1518, 51, 212, 5, 19, 'Lunes', 1, '15', '16', '11', '2023-09-28 18:16:23', '2023-09-28 18:16:23'),
(1519, 51, 211, 5, 19, 'Martes', 2, '8', '13', '11', '2023-09-28 18:17:20', '2023-09-28 18:17:20'),
(1520, 51, 208, 5, 19, 'Martes', 2, '15', '16', '11', '2023-09-28 18:18:05', '2023-09-28 18:18:05'),
(1521, 51, 212, 5, 19, 'Miércoles', 3, '8', '9', '11', '2023-09-28 18:18:49', '2023-09-28 18:18:49'),
(1522, 51, 211, 5, 19, 'Miércoles', 3, '11', '13', '11', '2023-09-28 18:19:29', '2023-09-28 18:19:29'),
(1523, 51, 212, 5, 19, 'Miércoles', 3, '15', '16', '11', '2023-09-28 18:20:15', '2023-09-28 18:20:15'),
(1524, 51, 209, 5, 19, 'Jueves', 4, '8', '10', '11', '2023-09-28 18:22:39', '2023-09-28 18:22:39'),
(1525, 51, 212, 5, 19, 'Jueves', 4, '16', '18', '11', '2023-09-28 18:26:15', '2023-09-28 18:26:15'),
(1526, 51, 210, 5, 19, 'Viernes', 5, '10', '11', '11', '2023-09-28 18:33:35', '2023-09-28 18:33:35'),
(1527, 51, 209, 5, 19, 'Viernes', 5, '11', '13', '11', '2023-09-28 18:35:56', '2023-09-28 18:35:56'),
(1528, 51, 209, 5, 19, 'Viernes', 5, '15', '18', '11', '2023-09-28 18:39:51', '2023-09-28 18:39:51'),
(1529, 55, 209, 5, 20, 'Lunes', 1, '16', '20', '5', '2023-09-28 19:26:53', '2023-09-28 19:26:53'),
(1530, 55, 209, 5, 20, 'Martes', 2, '11', '12', '5', '2023-09-28 19:27:49', '2023-09-28 19:27:49'),
(1531, 55, 208, 5, 20, 'Martes', 2, '12', '13', '5', '2023-09-28 19:30:56', '2023-09-28 19:30:56'),
(1532, 55, 208, 5, 20, 'Martes', 2, '16', '17', '5', '2023-09-28 19:32:03', '2023-09-28 19:32:03'),
(1533, 55, 212, 5, 20, 'Martes', 2, '17', '18', '5', '2023-09-28 19:34:13', '2023-09-28 19:34:13'),
(1534, 55, 211, 5, 20, 'Martes', 2, '18', '20', '5', '2023-09-28 19:36:06', '2023-09-28 19:36:06'),
(1535, 55, 212, 5, 20, 'Miércoles', 3, '16', '20', '5', '2023-09-28 19:43:31', '2023-09-28 19:43:31'),
(1536, 55, 211, 5, 20, 'Jueves', 4, '7', '9', '5', '2023-09-28 19:44:18', '2023-09-28 19:44:18'),
(1537, 55, 211, 5, 20, 'Jueves', 4, '14', '15', '5', '2023-09-28 19:46:02', '2023-09-28 19:46:02'),
(1538, 55, 212, 5, 20, 'Jueves', 4, '15', '17', '5', '2023-09-28 19:47:10', '2023-09-28 19:47:10'),
(1539, 55, 212, 5, 20, 'Viernes', 5, '7', '12', '5', '2023-09-28 19:48:05', '2023-09-28 19:48:05'),
(1540, 55, 210, 5, 20, 'Viernes', 5, '12', '13', '5', '2023-09-28 19:48:40', '2023-09-28 19:48:40'),
(1541, 55, 212, 5, 20, 'Viernes', 5, '14', '16', '5', '2023-09-28 19:49:22', '2023-09-28 19:49:22'),
(1542, 47, 211, 5, 21, 'Lunes', 1, '8', '11', '3', '2023-09-28 19:50:26', '2023-09-28 19:50:26'),
(1543, 47, 211, 5, 21, 'Lunes', 1, '15', '18', '3', '2023-09-28 19:51:23', '2023-09-28 19:51:23'),
(1544, 47, 208, 5, 21, 'Martes', 2, '11', '13', '3', '2023-09-28 19:52:18', '2023-09-28 19:52:18'),
(1545, 47, 208, 5, 21, 'Martes', 2, '16', '18', '3', '2023-09-28 19:53:46', '2023-09-28 19:53:46'),
(1546, 47, 209, 5, 21, 'Miércoles', 3, '12', '13', '3', '2023-09-28 19:54:36', '2023-09-28 19:54:36'),
(1547, 47, 209, 5, 21, 'Miércoles', 3, '15', '18', '3', '2023-09-28 19:55:38', '2023-09-28 19:55:38'),
(1548, 47, 209, 5, 21, 'Jueves', 4, '8', '9', '3', '2023-09-28 19:56:15', '2023-09-28 19:56:15'),
(1549, 47, 209, 5, 21, 'Jueves', 4, '15', '16', '3', '2023-09-28 19:57:00', '2023-09-28 19:57:00'),
(1550, 47, 212, 5, 21, 'Viernes', 5, '8', '10', '3', '2023-09-28 19:57:48', '2023-09-28 19:57:48'),
(1551, 47, 210, 5, 21, 'Viernes', 5, '10', '12', '3', '2023-09-28 19:58:19', '2023-09-28 19:58:19'),
(1552, 47, 209, 5, 21, 'Viernes', 5, '12', '13', '3', '2023-09-28 19:59:20', '2023-09-28 19:59:20'),
(1553, 47, 209, 5, 21, 'Viernes', 5, '15', '16', '3', '2023-09-28 20:00:32', '2023-09-28 20:00:32'),
(1554, 53, 209, 5, 22, 'Lunes', 1, '10', '12', '3', '2023-09-28 20:02:45', '2023-09-28 20:02:45'),
(1555, 53, 209, 5, 22, 'Lunes', 1, '14', '17', '3', '2023-09-28 20:03:33', '2023-09-28 20:03:33'),
(1556, 53, 209, 5, 22, 'Martes', 2, '11', '12', '3', '2023-09-28 20:09:22', '2023-09-28 20:09:22'),
(1557, 53, 209, 5, 22, 'Martes', 2, '15', '17', '3', '2023-09-28 20:10:26', '2023-09-28 20:10:26'),
(1558, 53, 211, 5, 22, 'Miércoles', 3, '8', '11', '3', '2023-09-28 20:14:55', '2023-09-28 20:14:55'),
(1559, 53, 208, 5, 22, 'Miércoles', 3, '11', '12', '3', '2023-09-28 20:15:54', '2023-09-28 20:15:54'),
(1560, 53, 208, 5, 22, 'Miércoles', 3, '14', '15', '3', '2023-09-28 20:17:20', '2023-09-28 20:17:20'),
(1561, 53, 211, 5, 22, 'Miércoles', 3, '15', '18', '3', '2023-09-28 20:18:08', '2023-09-28 20:18:08'),
(1562, 53, 208, 5, 22, 'Jueves', 4, '15', '17', '3', '2023-09-28 20:18:59', '2023-09-28 20:18:59'),
(1563, 53, 212, 5, 22, 'Viernes', 5, '9', '11', '3', '2023-09-28 20:30:01', '2023-09-28 20:30:01'),
(1564, 53, 210, 5, 22, 'Viernes', 5, '11', '12', '3', '2023-09-28 20:30:45', '2023-09-28 20:30:45'),
(1565, 50, 209, 5, 23, 'Lunes', 1, '7', '13', '4', '2023-09-28 20:33:01', '2023-09-28 20:33:01'),
(1566, 50, 208, 5, 23, 'Lunes', 1, '15', '17', '4', '2023-09-28 20:34:25', '2023-09-28 20:34:25'),
(1567, 50, 209, 5, 23, 'Martes', 2, '7', '9', '4', '2023-09-28 20:36:26', '2023-09-28 20:36:26'),
(1568, 50, 208, 5, 23, 'Martes', 2, '16', '18', '4', '2023-09-28 20:37:46', '2023-09-28 20:37:46'),
(1569, 50, 212, 5, 23, 'Miércoles', 3, '16', '18', '4', '2023-09-28 20:39:00', '2023-09-28 20:39:00'),
(1570, 50, 212, 5, 23, 'Jueves', 4, '16', '18', '4', '2023-09-28 20:39:52', '2023-09-28 20:39:52'),
(1571, 50, 209, 5, 23, 'Viernes', 5, '7', '10', '4', '2023-09-28 20:41:17', '2023-09-28 20:41:17'),
(1572, 50, 210, 5, 23, 'Viernes', 5, '11', '13', '4', '2023-09-28 20:41:53', '2023-09-28 20:41:53'),
(1573, 50, 212, 5, 23, 'Viernes', 5, '16', '18', '4', '2023-09-28 20:42:41', '2023-09-28 20:42:41'),
(1576, 61, 212, 5, 24, 'Lunes', 1, '7', '8', '3', '2023-09-28 20:46:20', '2023-09-28 20:46:20'),
(1577, 61, 208, 5, 24, 'Lunes', 1, '8', '9', '3', '2023-09-28 20:48:28', '2023-09-28 20:48:28'),
(1578, 61, 209, 5, 24, 'Lunes', 1, '9', '10', '3', '2023-09-28 20:49:25', '2023-09-28 20:49:25'),
(1579, 61, 209, 5, 24, 'Lunes', 1, '12', '13', '3', '2023-09-28 20:50:20', '2023-09-28 20:50:20'),
(1580, 61, 209, 5, 24, 'Martes', 2, '8', '12', '3', '2023-09-28 20:51:28', '2023-09-28 20:51:28'),
(1581, 61, 212, 5, 24, 'Miércoles', 3, '7', '9', '3', '2023-09-28 20:52:28', '2023-09-28 20:52:28'),
(1582, 61, 209, 5, 24, 'Miércoles', 3, '9', '10', '3', '2023-09-28 20:53:21', '2023-09-28 20:53:21'),
(1583, 61, 208, 5, 24, 'Miércoles', 3, '10', '11', '3', '2023-09-28 20:55:06', '2023-09-28 20:55:06'),
(1584, 61, 212, 5, 24, 'Jueves', 4, '10', '12', '3', '2023-09-28 20:56:42', '2023-09-28 20:56:42'),
(1585, 61, 208, 5, 24, 'Jueves', 4, '15', '16', '3', '2023-09-28 20:57:42', '2023-09-28 20:57:42'),
(1586, 61, 212, 5, 24, 'Jueves', 4, '16', '18', '3', '2023-09-28 20:58:31', '2023-09-28 20:58:31'),
(1587, 61, 212, 5, 24, 'Viernes', 5, '8', '10', '3', '2023-09-28 20:59:21', '2023-09-28 20:59:21'),
(1588, 61, 210, 5, 24, 'Viernes', 5, '10', '11', '3', '2023-09-28 20:59:47', '2023-09-28 20:59:47'),
(1589, 61, 212, 5, 24, 'Viernes', 5, '11', '12', '3', '2023-09-28 21:00:44', '2023-09-28 21:00:44'),
(1590, 61, 210, 5, 24, 'Viernes', 5, '12', '13', '3', '2023-09-28 21:01:07', '2023-09-28 21:01:07'),
(1591, 61, 212, 5, 24, 'Viernes', 5, '15', '18', '3', '2023-09-28 21:01:58', '2023-09-28 21:01:58'),
(1594, 58, 212, 5, 1, 'Lunes', 1, '15', '19', '1', '2023-09-28 21:08:02', '2023-09-28 21:08:02'),
(1596, 58, 212, 5, 1, 'Martes', 2, '9', '13', '1', '2023-09-28 21:10:54', '2023-09-28 21:10:54'),
(1597, 58, 212, 5, 1, 'Martes', 2, '15', '16', '1', '2023-09-28 21:12:18', '2023-09-28 21:12:18'),
(1599, 58, 212, 5, 1, 'Miércoles', 3, '10', '13', '1', '2023-09-28 21:13:59', '2023-09-28 21:13:59'),
(1600, 58, 212, 5, 1, 'Miércoles', 3, '15', '17', '1', '2023-09-28 21:15:12', '2023-09-28 21:15:12'),
(1601, 58, 212, 5, 1, 'Viernes', 5, '9', '11', '1', '2023-09-28 21:18:08', '2023-09-28 21:18:08'),
(1602, 68, 209, 5, 9, 'Martes', 2, '11', '13', '2', '2023-09-28 21:21:51', '2023-09-28 21:21:51'),
(1603, 68, 209, 5, 9, 'Jueves', 4, '9', '10', '2', '2023-09-28 21:22:34', '2023-09-28 21:22:34'),
(1604, 68, 209, 5, 9, 'Jueves', 4, '11', '12', '2', '2023-09-28 21:23:22', '2023-09-28 21:23:22'),
(1605, 68, 209, 5, 9, 'Viernes', 5, '8', '9', '2', '2023-09-28 21:23:56', '2023-09-28 21:23:56'),
(1606, 68, 212, 5, 9, 'Viernes', 5, '10', '12', '2', '2023-09-28 21:24:41', '2023-09-28 21:24:41'),
(1607, 68, 208, 5, 9, 'Viernes', 5, '12', '13', '2', '2023-09-28 21:25:21', '2023-09-28 21:25:21'),
(1608, 68, 208, 5, 9, 'Viernes', 5, '14', '16', '2', '2023-09-28 21:26:02', '2023-09-28 21:26:02'),
(1609, 68, 209, 5, 9, 'Viernes', 5, '16', '17', '2', '2023-09-28 21:27:15', '2023-09-28 21:27:15'),
(1617, 50, 209, 5, 39, 'Lunes', 1, '11', '13', '2', '2023-09-29 00:25:23', '2023-09-29 00:25:23'),
(1618, 50, 209, 5, 39, 'Lunes', 1, '14', '18', '2', '2023-09-29 00:25:46', '2023-09-29 00:25:46'),
(1619, 54, 209, 5, 43, 'Lunes', 1, '10', '11', '4', '2023-09-29 00:27:15', '2023-09-29 00:27:15'),
(1620, 54, 211, 5, 43, 'Martes', 2, '9', '11', '4', '2023-09-29 00:27:38', '2023-09-29 00:27:38'),
(1621, 54, 212, 5, 43, 'Martes', 2, '11', '13', '4', '2023-09-29 00:28:01', '2023-09-29 00:28:01'),
(1623, 54, 209, 5, 43, 'Miércoles', 3, '14', '16', '4', '2023-09-29 00:29:39', '2023-09-29 00:29:39'),
(1624, 54, 212, 5, 43, 'Jueves', 4, '8', '10', '4', '2023-09-29 00:30:01', '2023-09-29 00:30:01'),
(1625, 54, 211, 5, 43, 'Jueves', 4, '10', '12', '4', '2023-09-29 00:30:35', '2023-09-29 00:30:35'),
(1626, 54, 208, 5, 43, 'Jueves', 4, '12', '13', '4', '2023-09-29 00:31:08', '2023-09-29 00:31:08'),
(1627, 54, 212, 5, 43, 'Jueves', 4, '14', '17', '4', '2023-09-29 00:31:32', '2023-09-29 00:31:32'),
(1628, 54, 212, 5, 43, 'Viernes', 5, '9', '11', '4', '2023-09-29 00:32:06', '2023-09-29 00:32:06'),
(1629, 9, 210, 5, 43, 'Viernes', 5, '11', '12', '4', '2023-09-29 00:32:29', '2023-09-29 00:32:29'),
(1630, 54, 209, 5, 43, 'Viernes', 5, '12', '13', '4', '2023-09-29 00:32:45', '2023-09-29 00:32:45'),
(1631, 54, 208, 5, 43, 'Viernes', 5, '14', '16', '4', '2023-09-29 00:33:44', '2023-09-29 00:33:44'),
(1632, 54, 209, 5, 43, 'Viernes', 5, '16', '17', '4', '2023-09-29 00:34:07', '2023-09-29 00:34:07'),
(1633, 54, 209, 5, 43, 'Miércoles', 3, '9', '10', '4', '2023-09-29 00:35:27', '2023-09-29 00:35:27'),
(1634, 53, 212, 5, 44, 'Lunes', 1, '9', '11', '1', '2023-09-29 00:37:54', '2023-09-29 00:37:54'),
(1635, 53, 211, 5, 44, 'Lunes', 1, '11', '13', '1', '2023-09-29 00:38:14', '2023-09-29 00:38:14'),
(1636, 53, 209, 5, 44, 'Martes', 2, '11', '13', '1', '2023-09-29 00:38:33', '2023-09-29 00:38:33'),
(1637, 53, 209, 5, 44, 'Martes', 2, '14', '16', '1', '2023-09-29 00:38:57', '2023-09-29 00:38:57'),
(1638, 53, 208, 5, 44, 'Miércoles', 3, '14', '15', '1', '2023-09-29 00:39:49', '2023-09-29 00:39:49'),
(1639, 53, 211, 5, 44, 'Miércoles', 3, '15', '19', '1', '2023-09-29 00:40:13', '2023-09-29 00:40:13'),
(1640, 53, 212, 5, 44, 'Jueves', 4, '9', '11', '1', '2023-09-29 00:40:40', '2023-09-29 00:40:40'),
(1641, 53, 208, 5, 44, 'Jueves', 4, '11', '13', '1', '2023-09-29 00:41:26', '2023-09-29 00:41:26'),
(1642, 53, 211, 5, 44, 'Viernes', 5, '11', '12', '1', '2023-09-29 00:41:54', '2023-09-29 00:41:54'),
(1643, 20, 210, 5, 44, 'Viernes', 5, '12', '13', '1', '2023-09-29 00:43:02', '2023-09-29 00:43:02'),
(1644, 53, 211, 5, 44, 'Viernes', 5, '14', '15', '1', '2023-09-29 00:43:30', '2023-09-29 00:43:30'),
(1645, 53, 209, 5, 44, 'Viernes', 5, '16', '18', '1', '2023-09-29 00:43:52', '2023-09-29 00:43:52'),
(1646, 54, 208, 5, 47, 'Lunes', 1, '12', '13', '5', '2023-09-29 01:02:47', '2023-09-29 01:02:47'),
(1647, 54, 208, 5, 47, 'Lunes', 1, '14', '15', '5', '2023-09-29 01:03:11', '2023-09-29 01:03:11'),
(1650, 24, 143, 1, 61, 'Jueves', 4, '10', '13', NULL, '2023-09-29 01:52:55', '2023-09-29 01:52:55'),
(1653, 54, 212, 5, 47, 'Lunes', 1, '15', '16', '5', '2023-09-29 02:03:46', '2023-09-29 02:03:46'),
(1654, 54, 209, 5, 47, 'Martes', 2, '11', '13', '5', '2023-09-29 02:04:03', '2023-09-29 02:04:03'),
(1655, 54, 209, 5, 47, 'Miércoles', 3, '8', '9', '5', '2023-09-29 02:04:24', '2023-09-29 02:04:24'),
(1656, 54, 209, 5, 47, 'Miércoles', 3, '12', '13', '5', '2023-09-29 02:05:10', '2023-09-29 02:05:10'),
(1658, 54, 209, 5, 47, 'Viernes', 5, '7', '10', '5', '2023-09-29 02:07:17', '2023-09-29 02:07:17'),
(1659, 54, 208, 5, 47, 'Viernes', 5, '10', '11', '5', '2023-09-29 02:07:45', '2023-09-29 02:07:45'),
(1660, 9, 210, 5, 47, 'Viernes', 5, '11', '12', '5', '2023-09-29 02:10:59', '2023-09-29 02:10:59'),
(1661, 54, 208, 5, 47, 'Viernes', 5, '12', '13', '5', '2023-09-29 02:11:22', '2023-09-29 02:11:22'),
(1662, 54, 212, 5, 47, 'Viernes', 5, '14', '16', '5', '2023-09-29 02:11:45', '2023-09-29 02:11:45'),
(1664, 47, 212, 5, 48, 'Lunes', 1, '14', '17', '2', '2023-09-29 02:15:56', '2023-09-29 02:15:56'),
(1665, 47, 212, 5, 48, 'Martes', 2, '9', '10', '2', '2023-09-29 02:16:14', '2023-09-29 02:16:14'),
(1667, 47, 209, 5, 48, 'Miércoles', 3, '8', '10', '2', '2023-09-29 02:16:55', '2023-09-29 02:16:55'),
(1668, 47, 212, 5, 48, 'Miércoles', 3, '14', '17', '2', '2023-09-29 02:17:19', '2023-09-29 02:17:19'),
(1669, 47, 212, 5, 48, 'Jueves', 4, '8', '13', '2', '2023-09-29 02:18:12', '2023-09-29 02:18:12'),
(1670, 47, 212, 5, 48, 'Viernes', 5, '8', '10', '2', '2023-09-29 02:18:35', '2023-09-29 02:18:35'),
(1673, 9, 210, 5, 48, 'Viernes', 5, '11', '12', '2', '2023-09-29 02:19:40', '2023-09-29 02:19:40'),
(1674, 47, 209, 5, 48, 'Viernes', 5, '12', '13', '2', '2023-09-29 02:20:38', '2023-09-29 02:20:38'),
(1676, 33, 207, 1, 74, 'Lunes', 1, '9', '11', NULL, '2023-09-29 02:26:15', '2023-09-29 02:26:15'),
(1677, 31, 207, 1, 74, 'Viernes', 5, '9', '10', NULL, '2023-09-29 02:26:37', '2023-09-29 02:26:37'),
(1678, 53, 209, 5, 50, 'Lunes', 1, '10', '13', '2', '2023-09-29 02:39:24', '2023-09-29 02:39:24'),
(1679, 53, 209, 5, 50, 'Lunes', 1, '15', '16', '2', '2023-09-29 02:39:56', '2023-09-29 02:39:56'),
(1680, 50, 211, 5, 49, 'Lunes', 1, '11', '13', '13', '2023-09-29 02:57:58', '2023-09-29 02:57:58'),
(1681, 50, 211, 5, 49, 'Lunes', 1, '14', '16', '13', '2023-09-29 02:58:33', '2023-09-29 02:58:33'),
(1682, 50, 211, 5, 49, 'Martes', 2, '14', '16', '13', '2023-09-29 02:59:21', '2023-09-29 02:59:21'),
(1683, 50, 209, 5, 49, 'Martes', 2, '16', '17', '13', '2023-09-29 03:02:25', '2023-09-29 03:02:25'),
(1684, 50, 209, 5, 49, 'Miércoles', 3, '10', '13', '13', '2023-09-29 03:03:22', '2023-09-29 03:03:22'),
(1685, 50, 211, 5, 49, 'Miércoles', 3, '14', '16', '13', '2023-09-29 03:03:45', '2023-09-29 03:03:45'),
(1686, 50, 211, 5, 49, 'Jueves', 4, '9', '13', '13', '2023-09-29 03:04:10', '2023-09-29 03:04:10'),
(1687, 50, 208, 5, 49, 'Jueves', 4, '14', '16', '13', '2023-09-29 03:04:27', '2023-09-29 03:04:27'),
(1688, 20, 210, 5, 49, 'Viernes', 5, '11', '12', '13', '2023-09-29 03:04:51', '2023-09-29 03:04:51'),
(1689, 50, 209, 5, 49, 'Viernes', 5, '12', '13', '13', '2023-09-29 03:05:15', '2023-09-29 03:05:15'),
(1690, 50, 212, 5, 49, 'Viernes', 5, '14', '16', '13', '2023-09-29 03:05:45', '2023-09-29 03:05:45'),
(1691, 53, 212, 5, 50, 'Lunes', 1, '16', '18', '2', '2023-09-29 03:10:00', '2023-09-29 03:10:00'),
(1692, 53, 209, 5, 50, 'Martes', 2, '9', '11', '2', '2023-09-29 03:10:55', '2023-09-29 03:10:55'),
(1693, 53, 208, 5, 50, 'Martes', 2, '15', '16', '2', '2023-09-29 03:12:10', '2023-09-29 03:12:10'),
(1694, 53, 212, 5, 50, 'Martes', 2, '16', '17', '2', '2023-09-29 03:13:09', '2023-09-29 03:13:09'),
(1695, 53, 209, 5, 50, 'Miércoles', 3, '9', '11', '2', '2023-09-29 03:14:59', '2023-09-29 03:14:59'),
(1696, 53, 208, 5, 50, 'Miércoles', 3, '15', '16', '2', '2023-09-29 03:16:02', '2023-09-29 03:16:02'),
(1697, 53, 208, 5, 50, 'Miércoles', 3, '15', '16', '2', '2023-09-29 03:16:05', '2023-09-29 03:16:05'),
(1698, 53, 212, 5, 50, 'Miércoles', 3, '16', '17', '2', '2023-09-29 03:17:18', '2023-09-29 03:17:18'),
(1699, 53, 211, 5, 50, 'Jueves', 4, '11', '13', '2', '2023-09-29 03:17:58', '2023-09-29 03:17:58'),
(1700, 53, 208, 5, 50, 'Jueves', 4, '15', '16', '2', '2023-09-29 03:18:23', '2023-09-29 03:18:23'),
(1701, 53, 212, 5, 50, 'Jueves', 4, '16', '17', '2', '2023-09-29 03:18:49', '2023-09-29 03:18:49'),
(1702, 53, 208, 5, 50, 'Viernes', 5, '10', '11', '2', '2023-09-29 03:19:35', '2023-09-29 03:19:35'),
(1703, 53, 212, 5, 50, 'Viernes', 5, '11', '12', '2', '2023-09-29 03:20:00', '2023-09-29 03:20:00'),
(1704, 20, 210, 5, 50, 'Viernes', 5, '12', '13', '2', '2023-09-29 03:20:24', '2023-09-29 03:20:24'),
(1705, 8, 154, 1, 18, 'Viernes', 5, '8', '11', NULL, '2023-09-29 17:01:48', '2023-09-29 17:01:48'),
(1717, 50, 209, 5, 46, 'Lunes', 1, '9', '12', NULL, '2023-09-29 17:14:51', '2023-09-29 17:14:51'),
(1719, 50, 209, 5, 46, 'Martes', 2, '16', '17', NULL, '2023-09-29 17:16:59', '2023-09-29 17:16:59'),
(1720, 50, 209, 5, 46, 'Miércoles', 3, '8', '9', NULL, '2023-09-29 17:17:31', '2023-09-29 17:17:31'),
(1721, 50, 208, 5, 46, 'Miércoles', 3, '9', '11', NULL, '2023-09-29 17:18:03', '2023-09-29 17:18:03'),
(1722, 50, 208, 5, 46, 'Jueves', 4, '10', '11', NULL, '2023-09-29 17:18:30', '2023-09-29 17:18:30'),
(1723, 50, 209, 5, 46, 'Jueves', 4, '11', '13', NULL, '2023-09-29 17:18:49', '2023-09-29 17:18:49'),
(1725, 9, 210, 5, 46, 'Viernes', 5, '11', '12', NULL, '2023-09-29 17:20:14', '2023-09-29 17:20:14'),
(1728, 24, 103, 2, 61, 'Viernes', 5, '7', '10', NULL, '2023-09-29 17:31:10', '2023-09-29 17:31:10'),
(1729, 50, 211, 5, 46, 'Martes', 2, '8', '13', NULL, '2023-10-03 19:59:54', '2023-10-03 19:59:54'),
(1730, 4, 182, 1, 28, 'Jueves', 4, '17', '20', NULL, '2023-10-04 00:50:38', '2023-10-04 00:50:38'),
(1731, 50, 211, 5, 29, 'Martes', 2, '15', '16', '15', '2023-10-04 01:02:13', '2023-10-04 01:02:13'),
(1732, 50, 211, 5, 29, 'Miércoles', 3, '15', '16', '15', '2023-10-04 01:02:59', '2023-10-04 01:02:59'),
(1733, 50, 208, 5, 29, 'Miércoles', 3, '14', '15', '15', '2023-10-04 01:03:58', '2023-10-04 01:03:58'),
(1734, 50, 211, 5, 29, 'Viernes', 5, '10', '11', '15', '2023-10-04 01:04:40', '2023-10-04 01:04:40'),
(1735, 50, 211, 5, 29, 'Viernes', 5, '12', '13', '15', '2023-10-04 01:05:09', '2023-10-04 01:05:09'),
(1736, 7, 5, 2, 39, 'Miércoles', 3, '7', '9', NULL, '2023-10-04 17:26:47', '2023-10-04 17:26:47'),
(1737, 50, 208, 5, 46, 'Jueves', 4, '15', '16', NULL, '2023-10-04 17:37:31', '2023-10-04 17:37:31'),
(1738, 50, 212, 5, 46, 'Jueves', 4, '16', '17', NULL, '2023-10-04 17:38:25', '2023-10-04 17:38:25'),
(1739, 8, 151, 1, 38, 'Lunes', 1, '18', '20', NULL, '2023-10-05 17:28:49', '2023-10-05 17:28:49'),
(1740, 8, 151, 1, 38, 'Miércoles', 3, '16', '19', NULL, '2023-10-05 17:29:37', '2023-10-05 17:29:37'),
(1741, 14, 80, 1, 44, 'Jueves', 4, '16', '18', NULL, '2023-10-06 02:09:40', '2023-10-06 02:09:40'),
(1742, 3, 9, 1, 60, 'Jueves', 4, '16', '18', NULL, '2023-10-06 02:10:41', '2023-10-06 02:10:41'),
(1743, 3, 49, 1, 12, 'Miércoles', 3, '7', '9', NULL, '2023-10-11 17:06:40', '2023-10-11 17:06:40'),
(1744, 4, 125, 1, 65, 'Miércoles', 3, '9', '11', NULL, '2023-10-11 20:56:24', '2023-10-11 20:56:24'),
(1745, 43, 96, 1, 68, 'Miércoles', 3, '18', '20', NULL, '2023-10-12 00:42:55', '2023-10-12 00:42:55'),
(1746, 43, 96, 1, 68, 'Viernes', 5, '14', '16', NULL, '2023-10-12 00:43:18', '2023-10-12 00:43:18'),
(1747, 41, 180, 1, 10, 'Viernes', 5, '15', '18', NULL, '2023-10-12 00:44:52', '2023-10-12 00:44:52'),
(1748, 50, 209, 5, 46, 'Viernes', 5, '12', '13', NULL, '2023-10-13 17:11:45', '2023-10-13 17:11:45'),
(1749, 53, 212, 5, 32, 'Jueves', 4, '16', '18', '6', '2023-10-17 00:27:22', '2023-10-17 00:27:22'),
(1750, 42, 65, 1, 33, 'Lunes', 1, '7', '9', '6', '2023-10-17 00:51:02', '2023-10-17 00:51:02'),
(1751, 42, 65, 1, 33, 'Miércoles', 3, '9', '11', '6', '2023-10-17 00:56:31', '2023-10-17 00:56:31'),
(1752, 42, 65, 1, 33, 'Viernes', 5, '9', '10', '6', '2023-10-17 00:58:15', '2023-10-17 00:58:15'),
(1753, 58, 212, 5, 1, 'Lunes', 1, '9', '13', NULL, '2023-10-17 21:37:22', '2023-10-17 21:37:22'),
(1754, 20, 210, 5, 2, 'Viernes', 5, '10', '11', NULL, '2023-10-18 00:32:10', '2023-10-18 00:32:10'),
(1755, 51, 212, 5, 2, 'Viernes', 5, '11', '13', '12', '2023-10-18 00:34:00', '2023-10-18 00:34:00'),
(1756, 51, 212, 5, 2, 'Viernes', 5, '16', '18', '12', '2023-10-18 00:35:21', '2023-10-18 00:35:21'),
(1757, 51, 212, 5, 3, 'Martes', 2, '11', '13', '15', '2023-10-18 00:39:01', '2023-10-18 00:39:01'),
(1758, 51, 212, 5, 3, 'Jueves', 4, '14', '16', '15', '2023-10-18 00:46:14', '2023-10-18 00:46:14'),
(1759, 9, 210, 5, 3, 'Viernes', 5, '11', '12', '15', '2023-10-18 00:49:15', '2023-10-18 00:49:15'),
(1760, 51, 209, 5, 4, 'Lunes', 1, '9', '13', '4', '2023-10-18 01:09:42', '2023-10-18 01:09:42'),
(1761, 14, 69, 1, 35, 'Martes', 2, '18', '20', NULL, '2023-10-18 01:11:08', '2023-10-18 01:11:08'),
(1762, 51, 212, 5, 4, 'Jueves', 4, '11', '13', '4', '2023-10-18 01:13:27', '2023-10-18 01:13:27'),
(1763, 47, 208, 5, 48, 'Martes', 2, '10', '12', '2', '2023-10-18 01:32:43', '2023-10-18 01:32:43'),
(1764, 47, 209, 5, 48, 'Martes', 2, '12', '13', '2', '2023-10-18 01:33:13', '2023-10-18 01:33:13'),
(1765, 47, 212, 5, 48, 'Lunes', 1, '8', '10', '2', '2023-10-18 01:34:30', '2023-10-18 01:34:30'),
(1766, 47, 212, 5, 48, 'Lunes', 1, '8', '10', '2', '2023-10-18 01:34:32', '2023-10-18 01:34:32'),
(1767, 55, 208, 5, 48, 'Viernes', 5, '10', '11', '2', '2023-10-18 01:45:35', '2023-10-18 01:45:35'),
(1768, 20, 210, 5, 4, 'Viernes', 5, '10', '11', NULL, '2023-10-18 02:03:07', '2023-10-18 02:03:07'),
(1769, 51, 212, 5, 5, 'Lunes', 1, '16', '17', '3', '2023-10-18 02:23:54', '2023-10-18 02:23:54'),
(1770, 9, 210, 5, 5, 'Viernes', 5, '11', '12', NULL, '2023-10-18 17:36:18', '2023-10-18 17:36:18'),
(1771, 20, 210, 5, 6, 'Viernes', 5, '10', '11', NULL, '2023-10-18 17:47:41', '2023-10-18 17:47:41'),
(1772, 9, 210, 5, 8, 'Viernes', 5, '11', '12', NULL, '2023-10-18 18:20:40', '2023-10-18 18:20:40'),
(1773, 40, 190, 1, 9, 'Lunes', 1, '9', '11', NULL, '2023-10-18 18:27:09', '2023-10-18 18:27:09'),
(1774, 44, 187, 2, 9, 'Lunes', 1, '18', '20', NULL, '2023-10-18 18:28:32', '2023-10-18 18:28:32'),
(1775, 40, 190, 1, 9, 'Miércoles', 3, '7', '9', NULL, '2023-10-18 18:34:56', '2023-10-18 18:34:56'),
(1776, 40, 192, 1, 9, 'Miércoles', 3, '9', '11', NULL, '2023-10-18 18:36:51', '2023-10-18 18:36:51'),
(1777, 68, 208, 5, 9, 'Jueves', 4, '16', '17', '2', '2023-10-18 18:49:09', '2023-10-18 18:49:09'),
(1778, 40, 190, 1, 9, 'Viernes', 5, '9', '10', '2', '2023-10-18 18:51:13', '2023-10-18 18:51:13'),
(1779, 9, 210, 5, 31, 'Viernes', 5, '11', '12', NULL, '2023-10-19 04:01:06', '2023-10-19 04:01:06'),
(1780, 9, 210, 5, 32, 'Viernes', 5, '11', '12', NULL, '2023-10-19 04:08:33', '2023-10-19 04:08:33'),
(1781, 20, 210, 5, 33, 'Viernes', 5, '12', '13', NULL, '2023-10-19 04:21:14', '2023-10-19 04:21:14'),
(1782, 20, 210, 5, 34, 'Viernes', 5, '12', '13', NULL, '2023-10-19 04:30:20', '2023-10-19 04:30:20'),
(1783, 20, 210, 5, 36, 'Viernes', 5, '10', '11', NULL, '2023-10-19 04:40:37', '2023-10-19 04:40:37'),
(1784, 9, 210, 5, 38, 'Viernes', 5, '11', '12', NULL, '2023-10-19 05:07:39', '2023-10-19 05:07:39'),
(1785, 9, 210, 5, 39, 'Viernes', 5, '11', '12', NULL, '2023-10-19 05:24:58', '2023-10-19 05:24:58'),
(1786, 42, 67, 1, 40, 'Jueves', 4, '11', '13', NULL, '2023-10-19 05:45:11', '2023-10-19 05:45:11'),
(1787, 42, 67, 1, 40, 'Martes', 2, '9', '11', NULL, '2023-10-19 05:48:56', '2023-10-19 05:48:56'),
(1788, 35, 155, 1, 40, 'Miércoles', 3, '7', '9', NULL, '2023-10-19 05:50:06', '2023-10-19 05:50:06'),
(1789, 29, 51, 1, 40, 'Miércoles', 3, '11', '13', NULL, '2023-10-19 05:52:27', '2023-10-19 05:52:27'),
(1790, 42, 67, 1, 40, 'Viernes', 5, '8', '9', NULL, '2023-10-19 05:54:34', '2023-10-19 05:54:34'),
(1791, 29, 51, 1, 40, 'Viernes', 5, '10', '11', NULL, '2023-10-19 05:55:44', '2023-10-19 05:55:44'),
(1792, 9, 210, 5, 40, 'Viernes', 5, '11', '12', NULL, '2023-10-19 05:56:25', '2023-10-19 05:56:25'),
(1793, 20, 210, 5, 40, 'Viernes', 5, '12', '13', NULL, '2023-10-19 05:57:06', '2023-10-19 05:57:06'),
(1794, 9, 210, 5, 10, 'Viernes', 5, '11', '12', NULL, '2023-10-23 02:04:19', '2023-10-23 02:04:19'),
(1795, 20, 210, 5, 10, 'Viernes', 5, '12', '13', NULL, '2023-10-23 02:04:49', '2023-10-23 02:04:49'),
(1796, 9, 210, 5, 11, 'Viernes', 5, '11', '12', NULL, '2023-10-23 02:37:00', '2023-10-23 02:37:00'),
(1797, 20, 210, 5, 11, 'Viernes', 5, '12', '13', NULL, '2023-10-23 02:37:20', '2023-10-23 02:37:20'),
(1798, 20, 210, 5, 12, 'Viernes', 5, '10', '11', NULL, '2023-10-23 02:53:11', '2023-10-23 02:53:11'),
(1799, 47, 209, 5, 74, 'Jueves', 4, '9', '11', '3', '2023-10-25 17:43:06', '2023-10-25 17:43:06'),
(1800, 27, 2, 1, 52, 'Lunes', 1, '11', '13', NULL, '2023-10-25 17:57:29', '2023-10-25 17:57:29'),
(1801, 54, 212, 5, 52, 'Miércoles', 3, '11', '13', '10', '2023-10-25 18:03:32', '2023-10-25 18:03:32'),
(1802, 14, 93, 2, 57, 'Lunes', 1, '16', '18', NULL, '2023-10-25 19:51:02', '2023-10-25 19:51:02'),
(1803, 14, 93, 2, 57, 'Martes', 2, '14', '17', NULL, '2023-10-25 19:52:09', '2023-10-25 19:52:09'),
(1804, 47, 212, 5, 41, 'Lunes', 1, '7', '13', '4', '2023-10-25 19:58:34', '2023-10-25 19:58:34'),
(1805, 47, 212, 5, 41, 'Martes', 2, '9', '11', '4', '2023-10-25 20:02:48', '2023-10-25 20:02:48'),
(1806, 47, 212, 5, 41, 'Miércoles', 3, '9', '13', '4', '2023-10-25 20:06:14', '2023-10-25 20:06:14'),
(1807, 47, 212, 5, 41, 'Jueves', 4, '7', '10', '4', '2023-10-25 20:07:51', '2023-10-25 20:07:51'),
(1808, 47, 212, 5, 41, 'Jueves', 4, '12', '13', '4', '2023-10-25 20:08:42', '2023-10-25 20:08:42'),
(1809, 47, 212, 5, 41, 'Viernes', 5, '9', '12', '4', '2023-10-25 20:10:24', '2023-10-25 20:10:24'),
(1810, 20, 210, 5, 41, 'Viernes', 5, '12', '13', '4', '2023-10-25 20:11:17', '2023-10-25 20:11:17'),
(1811, 47, 212, 5, 41, 'Viernes', 5, '14', '17', '4', '2023-10-25 20:11:48', '2023-10-25 20:11:48'),
(1812, 54, 212, 5, 47, 'Jueves', 4, '8', '13', '5', '2023-11-07 05:56:51', '2023-11-07 05:56:51'),
(1813, 22, 147, 2, 47, 'Miércoles', 3, '11', '12', '5', '2023-11-07 06:00:13', '2023-11-07 06:00:13'),
(1814, 10, 201, 1, 75, 'Lunes', 1, '7', '9', NULL, '2023-11-21 18:46:55', '2023-11-21 18:46:55'),
(1815, 10, 189, 1, 75, 'Lunes', 1, '9', '11', NULL, '2023-11-21 18:47:24', '2023-11-21 18:47:24'),
(1816, 8, 189, 2, 75, 'Lunes', 1, '16', '18', NULL, '2023-11-21 18:48:02', '2023-11-21 18:48:02'),
(1817, 2, 201, 2, 75, 'Lunes', 1, '18', '20', NULL, '2023-11-21 18:48:31', '2023-11-21 18:48:31'),
(1818, 40, 199, 1, 75, 'Martes', 2, '7', '9', NULL, '2023-11-21 18:49:15', '2023-11-21 18:49:15'),
(1819, 45, 201, 1, 75, 'Martes', 2, '8', '9', NULL, '2023-11-21 18:50:00', '2023-11-21 18:50:00'),
(1820, 68, 209, 5, 75, 'Martes', 2, '10', '13', NULL, '2023-11-21 18:50:34', '2023-11-21 18:50:34'),
(1821, 68, 201, 2, 75, 'Martes', 2, '16', '18', NULL, '2023-11-21 18:51:04', '2023-11-21 18:51:04'),
(1822, 45, 201, 1, 75, 'Miércoles', 3, '7', '9', NULL, '2023-11-21 18:51:39', '2023-11-21 18:51:39'),
(1823, 44, 189, 1, 75, 'Miércoles', 3, '9', '11', NULL, '2023-11-21 18:52:08', '2023-11-21 18:52:08'),
(1824, 40, 199, 1, 75, 'Miércoles', 3, '11', '13', NULL, '2023-11-21 18:52:49', '2023-11-21 18:52:49'),
(1826, 40, 191, 1, 75, 'Jueves', 4, '7', '9', NULL, '2023-11-21 20:07:16', '2023-11-21 20:07:16'),
(1828, 68, 212, 5, 75, 'Jueves', 4, '10', '11', NULL, '2023-11-21 20:09:22', '2023-11-21 20:09:22'),
(1829, 68, 208, 5, 75, 'Jueves', 4, '11', '13', NULL, '2023-11-21 20:12:30', '2023-11-21 20:12:30'),
(1830, 44, 189, 2, 75, 'Jueves', 4, '14', '15', NULL, '2023-11-21 20:20:03', '2023-11-21 20:20:03'),
(1832, 40, 191, 1, 75, 'Viernes', 5, '7', '9', NULL, '2023-11-21 20:21:19', '2023-11-21 20:21:19'),
(1833, 68, 208, 5, 75, 'Viernes', 5, '9', '10', NULL, '2023-11-21 20:21:47', '2023-11-21 20:21:47'),
(1834, 68, 209, 5, 75, 'Viernes', 5, '14', '17', NULL, '2023-11-21 20:22:14', '2023-11-21 20:22:14'),
(1835, 13, 91, 1, 63, 'Lunes', 1, '9', '11', NULL, '2023-11-21 21:18:57', '2023-11-21 21:18:57'),
(1836, 14, 91, 1, 63, 'Martes', 2, '8', '9', NULL, '2023-11-22 18:06:19', '2023-11-22 18:06:19'),
(1837, 14, 91, 1, 63, 'Miércoles', 3, '7', '9', NULL, '2023-11-22 18:08:32', '2023-11-22 18:08:32'),
(1838, 50, 211, 5, 35, 'Lunes', 1, '9', '12', '6', '2023-11-23 18:24:32', '2023-11-23 18:24:32'),
(1839, 50, 208, 5, 35, 'Lunes', 1, '17', '18', '6', '2023-11-23 18:25:04', '2023-11-23 18:25:04'),
(1840, 50, 209, 5, 35, 'Martes', 2, '9', '10', '6', '2023-11-23 18:25:31', '2023-11-23 18:25:31'),
(1841, 50, 208, 5, 35, 'Martes', 2, '10', '11', '6', '2023-11-23 18:25:59', '2023-11-23 18:25:59'),
(1842, 50, 209, 5, 35, 'Martes', 2, '16', '18', '6', '2023-11-23 18:26:22', '2023-11-23 18:26:22'),
(1843, 50, 208, 5, 35, 'Miércoles', 3, '8', '9', '6', '2023-11-23 18:27:39', '2023-11-23 18:27:39'),
(1844, 50, 211, 5, 35, 'Miércoles', 3, '15', '16', '6', '2023-11-23 18:28:02', '2023-11-23 18:28:02'),
(1845, 50, 211, 5, 35, 'Jueves', 4, '8', '10', '6', '2023-11-23 18:28:21', '2023-11-23 18:28:21'),
(1846, 50, 211, 5, 35, 'Jueves', 4, '14', '17', '6', '2023-11-23 18:28:50', '2023-11-23 18:28:50'),
(1847, 50, 208, 5, 35, 'Viernes', 5, '10', '11', '6', '2023-11-23 18:29:11', '2023-11-23 18:29:11'),
(1848, 50, 209, 5, 35, 'Viernes', 5, '11', '12', '6', '2023-11-23 18:29:51', '2023-11-23 18:29:51'),
(1849, 50, 209, 5, 35, 'Viernes', 5, '14', '16', '6', '2023-11-23 18:30:33', '2023-11-23 18:30:33'),
(1850, 50, 209, 5, 35, 'Viernes', 5, '17', '18', '6', '2023-11-23 18:30:52', '2023-11-23 18:30:52'),
(1851, 14, 51, 3, 35, 'Lunes', 1, '7', '9', '6', '2023-11-23 18:31:40', '2023-11-23 18:31:40'),
(1852, 28, 57, 2, 35, 'Lunes', 1, '18', '20', '6', '2023-11-23 18:32:13', '2023-11-23 18:32:13'),
(1853, 14, 81, 2, 35, 'Martes', 2, '14', '16', '6', '2023-11-23 18:32:46', '2023-11-23 18:32:46'),
(1854, 14, 69, 1, 35, 'Martes', 2, '18', '20', '6', '2023-11-23 18:33:13', '2023-11-23 18:33:13'),
(1855, 30, 51, 3, 35, 'Miércoles', 3, '9', '11', '6', '2023-11-23 18:33:42', '2023-11-23 18:33:42'),
(1856, 12, 69, 1, 35, 'Miércoles', 3, '16', '18', '6', '2023-11-23 18:34:22', '2023-11-23 18:34:22'),
(1857, 14, 81, 2, 35, 'Miércoles', 3, '18', '20', '6', '2023-11-23 18:34:54', '2023-11-23 18:34:54'),
(1858, 28, 57, 2, 35, 'Jueves', 4, '18', '20', '6', '2023-11-23 18:35:21', '2023-11-23 18:35:21'),
(1859, 30, 51, 3, 35, 'Viernes', 5, '9', '10', '6', '2023-11-23 18:35:56', '2023-11-23 18:35:56'),
(1860, 28, 57, 2, 35, 'Viernes', 5, '16', '17', '6', '2023-11-23 18:36:22', '2023-11-23 18:36:22'),
(1861, 14, 82, 1, 70, 'Viernes', 5, '16', '18', '6', '2023-11-23 18:40:28', '2023-11-23 18:40:28'),
(1862, 14, 82, 1, 70, 'Martes', 2, '16', '18', '6', '2023-11-23 18:40:55', '2023-11-23 18:40:55'),
(1863, 13, 207, 1, 74, 'Jueves', 4, '11', '13', NULL, '2023-11-28 16:57:32', '2023-11-28 16:57:32'),
(1864, 16, 28, 1, 15, 'Lunes', 1, '7', '9', NULL, '2023-12-05 17:18:31', '2023-12-05 17:18:31'),
(1865, 16, 28, 1, 15, 'Martes', 2, '11', '13', NULL, '2023-12-05 17:19:05', '2023-12-05 17:19:05'),
(1866, 16, 28, 1, 15, 'Miércoles', 3, '11', '13', NULL, '2023-12-05 17:20:28', '2023-12-05 17:20:28'),
(1867, 4, 9, 2, 60, 'Miércoles', 3, '16', '18', NULL, '2023-12-06 17:56:45', '2023-12-06 17:56:45'),
(1868, 4, 9, 2, 60, 'Viernes', 5, '14', '15', NULL, '2023-12-06 17:57:10', '2023-12-06 17:57:10'),
(1869, 7, 171, 1, 66, 'Miércoles', 3, '17', '19', NULL, '2023-12-06 17:58:39', '2023-12-06 17:58:39'),
(1870, 2, 189, 1, 75, 'Martes', 2, '9', '10', NULL, '2023-12-06 18:02:08', '2023-12-06 18:02:08'),
(1871, 2, 189, 1, 75, 'Jueves', 4, '9', '10', NULL, '2023-12-06 18:02:33', '2023-12-06 18:02:33'),
(1873, 44, 189, 2, 75, 'Miércoles', 3, '16', '17', NULL, '2023-12-06 18:05:44', '2023-12-06 18:05:44'),
(1874, 10, 189, 2, 75, 'Miércoles', 3, '17', '18', NULL, '2023-12-06 18:06:19', '2023-12-06 18:06:19'),
(1875, 10, 201, 2, 75, 'Jueves', 4, '17', '18', NULL, '2023-12-06 18:19:51', '2023-12-06 18:19:51'),
(1876, 1, 106, 1, 28, 'Lunes', 1, '14', '16', NULL, '2023-12-18 23:45:39', '2023-12-18 23:45:39'),
(1877, 1, 106, 1, 28, 'Martes', 2, '14', '15', NULL, '2023-12-18 23:46:27', '2023-12-18 23:46:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_08_22_145306_create_titulos_table', 1),
(6, '2023_08_22_150451_create_docentes_table', 1),
(7, '2023_08_22_150502_create_titulo_docente_table', 1),
(8, '2023_08_23_133602_create_periodos_table', 1),
(9, '2023_08_23_142657_create_aulas_table', 1),
(10, '2023_08_23_163048_create_softwares_table', 1),
(11, '2023_08_23_164524_create_aula_software_table', 1),
(12, '2023_08_23_170900_create_caracteristicas_table', 1),
(13, '2023_08_23_173609_create_sugerencias_table', 1),
(14, '2023_08_24_001651_create_puestos_table', 1),
(15, '2023_08_29_210154_create_carreras_table', 1),
(16, '2023_08_29_210347_create_paralelos_table', 1),
(17, '2023_08_29_214126_create_actividades_table', 1),
(18, '2023_08_30_134404_create_roles_table', 1),
(19, '2023_08_30_135700_create_has_roles_table', 1),
(20, '2023_09_06_172420_create_niveles_table', 1),
(21, '2023_09_06_172455_create_horarios_table', 1),
(23, '2023_09_26_200109_update_table_actividades', 2),
(24, '2023_09_26_202412_update_table_horarios', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `niveles`
--

CREATE TABLE `niveles` (
  `id` bigint UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numero` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paralelos`
--

CREATE TABLE `paralelos` (
  `id` bigint UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `paralelos`
--

INSERT INTO `paralelos` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'A', '2023-09-20 23:14:10', '2023-09-20 23:14:10'),
(2, 'B', '2023-09-20 23:14:10', '2023-09-20 23:14:10'),
(3, 'C', '2023-09-20 23:14:10', '2023-09-20 23:14:10'),
(4, 'D', '2023-09-20 23:14:10', '2023-09-20 23:14:10'),
(5, ' ', '2023-09-26 21:22:44', '2023-09-26 21:22:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `periodos`
--

CREATE TABLE `periodos` (
  `id` bigint UNSIGNED NOT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `estado` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puestos`
--

CREATE TABLE `puestos` (
  `id` bigint UNSIGNED NOT NULL,
  `numero_puesto` tinyint NOT NULL,
  `aula_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `rol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numero_rol` tinyint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `rol`, `numero_rol`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 1, '2023-09-20 23:14:23', '2023-09-20 23:14:23'),
(2, 'Estudiante', 0, '2023-09-20 23:14:23', '2023-09-20 23:14:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `software`
--

CREATE TABLE `software` (
  `id` bigint UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aula_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `software`
--

INSERT INTO `software` (`id`, `nombre`, `version`, `aula_id`, `created_at`, `updated_at`) VALUES
(2, 'Visual Studio Code', '1.82', 1, '2023-09-20 23:14:01', '2023-09-20 23:14:01'),
(4, 'BlueStacks', '5.3', 1, '2023-09-20 23:14:01', '2023-09-20 23:14:01'),
(6, 'Github Desktop', '3.3.1', 1, '2023-09-20 23:14:01', '2023-09-20 23:14:01'),
(8, 'Pseint', '20230517', 1, '2023-09-20 23:14:02', '2023-09-20 23:14:02'),
(12, 'SQL SERVER Express', '2022', 1, '2023-09-20 23:14:02', '2023-09-20 23:14:02'),
(13, 'Python Anaconda', '3.4', 1, '2023-09-20 23:14:02', '2023-09-20 23:14:02'),
(14, 'Microsoft Office', '365', 1, '2023-09-20 23:14:02', '2023-09-20 23:14:02'),
(16, 'Centos 7.0 Minimal', '7', 1, '2023-09-20 23:14:02', '2023-09-20 23:14:02'),
(17, 'Visual Studio Code', '1.82', 2, '2023-09-20 23:14:02', '2023-09-20 23:14:02'),
(18, 'Netbeans', '8.2', 2, '2023-09-20 23:14:02', '2023-09-20 23:14:02'),
(19, 'Xampp', '8.2.4', 2, '2023-09-20 23:14:02', '2023-09-20 23:14:02'),
(20, 'Oracle 12C servidor', '12c', 2, '2023-09-20 23:14:02', '2023-09-20 23:14:02'),
(21, 'Pseint', '20230517', 2, '2023-09-20 23:14:02', '2023-09-20 23:14:02'),
(22, 'Netbeans', '15', 2, '2023-09-20 23:14:02', '2023-09-20 23:14:02'),
(23, 'Excel', '2013', 3, '2023-09-20 23:14:03', '2023-09-20 23:14:03'),
(24, 'Project', '2013', 3, '2023-09-20 23:14:03', '2023-09-20 23:14:03'),
(25, 'Tora', '3.2.283', 3, '2023-09-20 23:14:03', '2023-09-20 23:14:03'),
(26, 'Visual Studio Code', '1.82', 3, '2023-09-20 23:14:03', '2023-09-20 23:14:03'),
(28, 'Microsoft Office', '365', 3, '2023-09-20 23:14:03', '2023-09-20 23:14:03'),
(29, 'VirtualBox', '7.0', 3, '2023-09-20 23:14:03', '2023-09-20 23:14:03'),
(30, 'Git Bash', '2.42.0', 4, '2023-09-20 23:14:03', '2023-09-20 23:14:03'),
(31, 'Visual Studio Code', '1.82', 4, '2023-09-20 23:14:03', '2023-09-20 23:14:03'),
(32, 'Xampp', '8.2.4', 4, '2023-09-20 23:14:03', '2023-09-20 23:14:03'),
(33, 'Netbeans', '19', 4, '2023-09-20 23:14:03', '2023-09-29 05:09:58'),
(34, 'Doxygen', '1.9.8', 4, '2023-09-20 23:14:03', '2023-09-20 23:14:03'),
(35, 'JMeter', '5.6.2', 4, '2023-09-20 23:14:03', '2023-09-20 23:14:03'),
(37, 'Microsoft Office', '2013', 4, '2023-09-20 23:14:03', '2023-09-29 05:10:39'),
(38, 'VirtualBox', '7.0.10', 4, '2023-09-20 23:14:03', '2023-09-29 05:11:05'),
(39, 'MS SQL SERVER 2022', 'Developer', 5, '2023-09-20 23:14:03', '2023-09-20 23:14:03'),
(40, 'VISUAL STUDIO COMMUNITY', '2022', 5, '2023-09-20 23:14:04', '2023-09-29 05:20:27'),
(44, 'Visual Studio Code', '1.82', 5, '2023-09-20 23:14:04', '2023-09-20 23:14:04'),
(46, 'Node Js', '16.17.1', 5, '2023-09-20 23:14:04', '2023-09-20 23:14:04'),
(50, 'Tora', '3.2.283', 5, '2023-09-20 23:14:04', '2023-09-20 23:14:04'),
(51, 'Jabref', '5.7', 5, '2023-09-20 23:14:04', '2023-09-20 23:14:04'),
(52, 'Mendeley ', '2.99.0', 5, '2023-09-20 23:14:04', '2023-09-20 23:14:04'),
(53, 'Microsoft Office', '365', 5, '2023-09-20 23:14:04', '2023-09-29 05:19:35'),
(54, 'Adobe Acrobat', '10', 5, '2023-09-20 23:14:04', '2023-09-20 23:14:04'),
(55, 'Latex', '2021', 5, '2023-09-20 23:14:04', '2023-09-20 23:14:04'),
(56, 'Lyx', '2.0.0', 5, '2023-09-20 23:14:04', '2023-09-20 23:14:04'),
(57, 'Microsoft Office', '365', 6, '2023-09-20 23:14:05', '2023-09-20 23:14:05'),
(58, 'Visual Studio Code', '1.82', 6, '2023-09-20 23:14:05', '2023-09-20 23:14:05'),
(59, 'VISUAL STUDIO COMMUNITY', '2022', 6, '2023-09-20 23:14:05', '2023-09-29 05:24:08'),
(60, 'Jabref', '5.7', 6, '2023-09-20 23:14:05', '2023-09-20 23:14:05'),
(61, 'Mendeley ', '2.99.0', 6, '2023-09-20 23:14:05', '2023-09-20 23:14:05'),
(62, 'Adobe Acrobat', '10', 6, '2023-09-20 23:14:05', '2023-09-20 23:14:05'),
(63, 'Latex', '2021', 6, '2023-09-20 23:14:05', '2023-09-20 23:14:05'),
(64, 'Lyx', '2.0.0', 6, '2023-09-20 23:14:05', '2023-09-20 23:14:05'),
(66, 'MARIA DB', '11.2.1', 7, '2023-09-20 23:14:05', '2023-09-20 23:14:05'),
(67, 'VS Community 2019', 'Community 2019', 7, '2023-09-20 23:14:05', '2023-09-20 23:14:05'),
(68, 'MATLAB', '2022', 7, '2023-09-20 23:14:05', '2023-09-20 23:14:05'),
(69, 'Python Anaconda', '3.4', 7, '2023-09-20 23:14:05', '2023-09-20 23:14:05'),
(73, 'VirtualBox', '7.0', 8, '2023-09-20 23:14:05', '2023-09-20 23:14:05'),
(74, 'VS Community 2022', 'Community 2012', 8, '2023-09-20 23:14:05', '2023-09-29 05:37:09'),
(76, 'Netbeans', '8.2', 8, '2023-09-20 23:14:06', '2023-09-20 23:14:06'),
(79, 'MS SQL SERVER 2022', 'Developer', 8, '2023-09-20 23:14:06', '2023-09-20 23:14:06'),
(80, 'Visual Studio 2022', 'Enterprise', 8, '2023-09-20 23:14:06', '2023-09-20 23:14:06'),
(81, 'SQL SERVER Express', '2022', 8, '2023-09-20 23:14:06', '2023-09-20 23:14:06'),
(82, 'Visual Studio Code', '1.82', 8, '2023-09-20 23:14:06', '2023-09-20 23:14:06'),
(84, 'Python Anaconda', '3.4', 8, '2023-09-20 23:14:06', '2023-09-20 23:14:06'),
(85, 'Jabref', '5.7', 8, '2023-09-20 23:14:06', '2023-09-20 23:14:06'),
(86, 'Mendeley ', '2.99.0', 8, '2023-09-20 23:14:06', '2023-09-20 23:14:06'),
(87, 'Adobe Acrobat', '10', 8, '2023-09-20 23:14:06', '2023-09-20 23:14:06'),
(88, 'Latex', '2021', 8, '2023-09-20 23:14:06', '2023-09-20 23:14:06'),
(89, 'Lyx', '2.0.0', 8, '2023-09-20 23:14:06', '2023-09-20 23:14:06'),
(90, 'Microsoft Office', '365', 8, '2023-09-20 23:14:06', '2023-09-20 23:14:06'),
(91, 'MS SQL SERVER 2022', 'Developer', 9, '2023-09-20 23:14:06', '2023-09-20 23:14:06'),
(92, 'VISUAL STUDIO COMMUNITY', '2022', 9, '2023-09-20 23:14:06', '2023-09-29 06:01:01'),
(93, 'POWER BI Desktop', '2.120.963.0', 9, '2023-09-20 23:14:06', '2023-09-20 23:14:06'),
(94, 'Python', '3.11.2', 9, '2023-09-20 23:14:06', '2023-09-20 23:14:06'),
(95, 'Netbeans', '19', 9, '2023-09-20 23:14:06', '2023-09-29 05:54:10'),
(96, 'Labview ', '2013', 15, '2023-09-20 23:14:06', '2023-09-20 23:14:06'),
(97, 'Tia Portal', '15', 15, '2023-09-20 23:14:07', '2023-09-20 23:14:07'),
(98, 'Labview ', '2013', 12, '2023-09-20 23:14:07', '2023-09-20 23:14:07'),
(99, 'Labwiew 32 bits', '2020', 12, '2023-09-20 23:14:07', '2023-09-20 23:14:07'),
(100, 'Autocad', '2020', 13, '2023-09-20 23:14:07', '2023-09-20 23:14:07'),
(101, 'Office', '2012', 13, '2023-09-20 23:14:07', '2023-09-20 23:14:07'),
(102, 'Flexim', '2022', 13, '2023-09-20 23:14:07', '2023-09-20 23:14:07'),
(103, 'Mastercam', '2023', 13, '2023-09-20 23:14:07', '2023-09-20 23:14:07'),
(104, 'Autocad', '2022', 13, '2023-09-20 23:14:07', '2023-09-20 23:14:07'),
(105, 'Zotero', '6', 13, '2023-09-20 23:14:07', '2023-09-20 23:14:07'),
(106, 'Office', '2013', 13, '2023-09-20 23:14:07', '2023-09-20 23:14:07'),
(107, 'Mendeley ', '2.99.0', 13, '2023-09-20 23:14:07', '2023-09-20 23:14:07'),
(108, 'Labview ', '2013', 14, '2023-09-20 23:14:07', '2023-09-20 23:14:07'),
(109, 'Autocad', '2020', 14, '2023-09-20 23:14:07', '2023-09-20 23:14:07'),
(110, 'Office', '2013', 14, '2023-09-20 23:14:07', '2023-09-20 23:14:07'),
(111, 'R Studio', '0.97.124', 14, '2023-09-20 23:14:07', '2023-09-20 23:14:07'),
(112, 'CadeSimu', '4.0', 14, '2023-09-20 23:14:07', '2023-09-20 23:14:07'),
(113, 'Step 7', '5.7', 56, '2023-09-20 23:14:07', '2023-09-20 23:14:07'),
(114, 'Codesys', '3.5', 56, '2023-09-20 23:14:07', '2023-09-20 23:14:07'),
(115, 'Labview', '2013', 56, '2023-09-20 23:14:07', '2023-09-20 23:14:07'),
(117, 'GIT', '2.42.0', 1, '2023-09-29 04:05:31', '2023-09-29 04:05:31'),
(118, 'ANDROID STUDIO', '2022.3.1.19', 1, '2023-09-29 04:06:15', '2023-09-29 04:06:15'),
(119, 'Flutter', '3.13.6', 1, '2023-09-29 04:07:26', '2023-09-29 04:07:26'),
(120, 'Figma', '2023', 1, '2023-09-29 04:08:47', '2023-09-29 04:08:47'),
(121, 'Adobe Reader', '2023', 1, '2023-09-29 04:15:35', '2023-09-29 04:15:35'),
(122, 'VISUAL STUDIO COMMUNITY', '2022', 1, '2023-09-29 04:22:00', '2023-09-29 04:22:00'),
(123, 'MANAGEMENR STUDIO', '18.12.1', 1, '2023-09-29 04:22:14', '2023-09-29 04:22:14'),
(124, 'SQL SERVER EXPRESS', '2022', 1, '2023-09-29 04:22:58', '2023-09-29 04:22:58'),
(125, 'ANACONDA', '3-2023.07-2', 1, '2023-09-29 04:23:46', '2023-09-29 04:23:46'),
(126, 'MongoDB Community Server', '7.0.1', 1, '2023-09-29 04:29:03', '2023-09-29 04:29:03'),
(127, 'StarUML', 'v6.0.1', 1, '2023-09-29 04:29:47', '2023-09-29 04:29:47'),
(128, 'NETBEANS', '8.2', 1, '2023-09-29 04:30:12', '2023-09-29 04:30:12'),
(129, 'VIRTUAL BOX', '7.0.10', 1, '2023-09-29 04:30:46', '2023-09-29 04:30:46'),
(131, 'RStudio Desktop', 'R 3.3.0+', 1, '2023-09-29 04:49:42', '2023-09-29 04:49:42'),
(132, 'NetBeans', '19', 1, '2023-09-29 04:51:00', '2023-09-29 04:51:00'),
(133, 'JDK JAVA', '17.0.1', 1, '2023-09-29 04:51:23', '2023-09-29 04:51:23'),
(134, 'SQL Server', '2022', 1, '2023-09-29 04:53:57', '2023-09-29 04:53:57'),
(135, 'SQL Server Integration Services', '4.4', 1, '2023-09-29 04:56:02', '2023-09-29 04:56:02'),
(136, 'MySQL Workbench', '8.0.34', 1, '2023-09-29 05:12:23', '2023-09-29 05:12:23'),
(137, 'Writing JUnit Tests in NetBeans IDE', '19', 1, '2023-09-29 05:13:20', '2023-09-29 05:13:20'),
(138, 'ORACLE', '12 c', 1, '2023-09-29 05:22:06', '2023-09-29 05:22:06'),
(139, 'MYSQL WORKBENCH', '8.0.34', 1, '2023-09-29 05:22:57', '2023-09-29 05:22:57'),
(140, 'PROLOG', '9.0.4-1', 1, '2023-09-29 05:27:29', '2023-09-29 05:27:29'),
(141, 'LATEX', '237', 1, '2023-09-29 05:28:10', '2023-09-29 05:28:10'),
(142, 'MENDELEY', '2.100.0', 1, '2023-09-29 05:29:27', '2023-09-29 05:29:27'),
(143, 'R-STUDIO', '3.3.0+', 1, '2023-09-29 05:35:27', '2023-09-29 05:35:27'),
(144, 'SQL SERVER DEVELOPER', '2022', 1, '2023-09-29 05:35:54', '2023-09-29 05:35:54'),
(145, 'MANAGEMENT STUDIO', '19', 1, '2023-09-29 05:36:07', '2023-09-29 05:36:07'),
(146, 'ANACONDA', '3-2023.07-2', 1, '2023-09-29 05:39:50', '2023-09-29 05:39:50'),
(147, 'ANDROID STUDIO', '2022.3.1.19-', 1, '2023-09-29 05:40:59', '2023-09-29 05:40:59'),
(148, 'CISCO PACKET TRACER', 'CiscoPacketTracer_821', 1, '2023-09-29 05:42:02', '2023-09-29 05:42:02'),
(150, 'Wireshark', '4.0.8', 1, '2023-09-29 05:42:54', '2023-09-29 05:42:54'),
(151, 'NODEJS', '18.18.0', 1, '2023-09-29 05:44:51', '2023-09-29 05:44:51'),
(152, 'MENDELEY ESCRITORIO', '10.10.1', 1, '2023-09-29 05:47:38', '2023-09-29 05:47:38'),
(153, 'OFFICE', '365', 1, '2023-09-29 05:48:03', '2023-09-29 05:48:03'),
(154, 'JABREF', '5.7', 1, '2023-09-29 05:48:17', '2023-09-29 05:48:17'),
(156, 'PSEINT', '20230517', 1, '2023-09-29 05:53:59', '2023-09-29 05:53:59'),
(157, 'PSeInt', '20230517', 1, '2023-09-29 05:58:49', '2023-09-29 05:58:49'),
(158, 'OFFICE', '365', 1, '2023-09-29 05:59:12', '2023-09-29 05:59:12'),
(159, 'MENDELEY ESCRITORIO', '2023', 1, '2023-09-29 05:59:40', '2023-09-29 05:59:40'),
(160, 'JABREF', '5.7', 1, '2023-09-29 06:00:01', '2023-09-29 06:00:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sugerencias`
--

CREATE TABLE `sugerencias` (
  `id` bigint UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `aula_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sugerencias`
--

INSERT INTO `sugerencias` (`id`, `nombre`, `descripcion`, `aula_id`, `created_at`, `updated_at`) VALUES
(1, 'asperiores', 'est qui architecto aliquam consequatur maiores ad vel id officia aliquid voluptatem asperiores voluptas impedit quia suscipit facere alias laborum', 23, '2023-09-20 23:14:09', '2023-09-20 23:14:09'),
(2, 'nihil', 'nostrum magni non temporibus fugit ut eos adipisci natus autem earum in modi optio id expedita perspiciatis in eius laudantium', 6, '2023-09-20 23:14:09', '2023-09-20 23:14:09'),
(3, 'consequatur', 'dolore pariatur dignissimos molestias minima assumenda quis aut aut dolor odit quo suscipit similique laborum cum in quibusdam et praesentium', 1, '2023-09-20 23:14:10', '2023-09-20 23:14:10'),
(4, 'quis', 'id esse sed blanditiis voluptatem optio rerum nostrum consequuntur sit illo omnis adipisci odit doloremque expedita voluptates minima expedita hic', 4, '2023-09-20 23:14:10', '2023-09-20 23:14:10'),
(5, 'et', 'incidunt cumque deserunt quia sed exercitationem sint vitae sint expedita dolor est ea ut qui similique similique quas praesentium qui', 37, '2023-09-20 23:14:10', '2023-09-20 23:14:10'),
(6, 'Test', 'Test', 1, '2023-09-29 21:34:18', '2023-09-29 21:34:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `titulos`
--

CREATE TABLE `titulos` (
  `id` bigint UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abreviatura` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin Redes', 'adminredesfisei@uta.edu.ec', NULL, NULL, '2023-09-20 23:14:23', '2023-09-20 23:14:23'),
(2, 'Tapia Gonzalez Andres Patricio', 'atapia7646@uta.edu.ec', NULL, NULL, '2023-09-20 23:20:15', '2023-09-20 23:20:15'),
(3, 'Galarza Tamayo Daniel Gerardo', 'dgalarza7451@uta.edu.ec', NULL, NULL, '2023-09-20 23:22:21', '2023-09-20 23:22:21'),
(4, 'Barrionuevo Sagñay Alexandra Elizabeth', 'ae.barrionuevo@uta.edu.ec', NULL, NULL, '2023-09-20 23:31:41', '2023-09-20 23:31:41'),
(5, 'Palate Dominguez Dennis Sebastian', 'dpalate2646@uta.edu.ec', NULL, NULL, '2023-09-28 03:35:00', '2023-09-28 03:35:00'),
(6, 'Rocano Lopez Alejandro Benjamin', 'arocano6813@uta.edu.ec', NULL, NULL, '2023-09-28 04:29:11', '2023-09-28 04:29:11'),
(7, 'Bonilla Velasco Nayelly Moncerrath', 'nbonilla8013@uta.edu.ec', NULL, NULL, '2023-09-29 19:49:36', '2023-09-29 19:49:36'),
(8, 'Escobar Gordon Isaac David', 'iescobar2717@uta.edu.ec', NULL, NULL, '2023-09-29 19:49:41', '2023-09-29 19:49:41'),
(9, 'Flores Castro Ana Gabriela', 'ag.flores@uta.edu.ec', NULL, NULL, '2023-09-29 20:39:00', '2023-09-29 20:39:00'),
(10, 'Tobar Lozada Marcia Alexandra', 'ma.tobar@uta.edu.ec', NULL, NULL, '2023-09-29 20:51:51', '2023-09-29 20:51:51'),
(11, 'Chasi Moya Gabriela Monserrath', 'gchasi1772@uta.edu.ec', NULL, NULL, '2023-09-30 00:08:41', '2023-09-30 00:08:41'),
(12, 'Gaibor Villacis Christian Andres', 'cgaibor4628@uta.edu.ec', NULL, NULL, '2023-10-02 18:30:00', '2023-10-02 18:30:00'),
(13, 'Ocampo Tixi Gabriel Alejandro', 'gocampo8985@uta.edu.ec', NULL, NULL, '2023-10-02 19:48:10', '2023-10-02 19:48:10'),
(14, 'Diaz Gomez Mateo Cristobal', 'mdiaz2644@uta.edu.ec', NULL, NULL, '2023-10-02 22:58:03', '2023-10-02 22:58:03'),
(15, 'Mendez Chavez Dilan Joel', 'dmendez2577@uta.edu.ec', NULL, NULL, '2023-10-03 03:29:50', '2023-10-03 03:29:50'),
(16, 'Chapa Yaurincela Jose Vicente', 'jchapa9076@uta.edu.ec', NULL, NULL, '2023-10-03 18:38:23', '2023-10-03 18:38:23'),
(17, 'Quinatoa Averos Franco Eduardo', 'fquinatoa1367@uta.edu.ec', NULL, NULL, '2023-10-03 21:00:47', '2023-10-03 21:00:47'),
(18, 'Chasi Calapiña Wendy Elizabeth', 'wchasi5847@uta.edu.ec', NULL, NULL, '2023-10-04 00:07:27', '2023-10-04 00:07:27'),
(19, 'Sanchez Zumba Andrea Patricia', 'ap.sanchez@uta.edu.ec', NULL, NULL, '2023-10-04 03:51:54', '2023-10-04 03:51:54'),
(20, 'Mena Arevalo Diego Patricio', 'dmena5146@uta.edu.ec', NULL, NULL, '2023-10-04 20:54:30', '2023-10-04 20:54:30'),
(21, 'Abril Ruiz Estefania Alexandra', 'eabril8611@uta.edu.ec', NULL, NULL, '2023-10-05 00:12:00', '2023-10-05 00:12:00'),
(22, 'Pinos Azogue Andres Sebastian', 'as.pinos@uta.edu.ec', NULL, NULL, '2023-10-05 00:43:47', '2023-10-05 00:43:47'),
(23, 'Romero Meza Jose David', 'jromero8072@uta.edu.ec', NULL, NULL, '2023-10-05 01:04:01', '2023-10-05 01:04:01'),
(24, 'Medina Vicente Gabriela Del Cisne', 'gmedina0906@uta.edu.ec', NULL, NULL, '2023-10-05 09:52:39', '2023-10-05 09:52:39'),
(25, 'Lozada Reyes Mayra Alejandra', 'ma.lozada@uta.edu.ec', NULL, NULL, '2023-10-05 21:22:33', '2023-10-05 21:22:33'),
(26, 'Toscano Aguilar Evelyn Isabel', 'ei.toscano@uta.edu.ec', NULL, NULL, '2023-10-05 21:27:35', '2023-10-05 21:27:35'),
(27, 'Gaona Salazar Davinson Jair', 'dgaona3244@uta.edu.ec', NULL, NULL, '2023-10-05 21:44:15', '2023-10-05 21:44:15'),
(28, 'Chancusig Palacios Edison Javier', 'echancusig1501@uta.edu.ec', NULL, NULL, '2023-10-05 22:38:04', '2023-10-05 22:38:04'),
(29, 'Pila Casa Eduardo Antonio', 'epila8661@uta.edu.ec', NULL, NULL, '2023-10-05 22:38:52', '2023-10-05 22:38:52'),
(30, 'Solis Llerena Anthony Nelson', 'asolis7378@uta.edu.ec', NULL, NULL, '2023-10-05 22:40:44', '2023-10-05 22:40:44'),
(31, 'Oviedo Sanchez Bryan Steven', 'boviedo4550@uta.edu.ec', NULL, NULL, '2023-10-05 22:45:55', '2023-10-05 22:45:55'),
(32, 'Zamora Sailema Jerami Amilcar', 'jzamora7826@uta.edu.ec', NULL, NULL, '2023-10-06 00:07:43', '2023-10-06 00:07:43'),
(33, 'Coello Ibañez Antony Josue', 'acoello5043@uta.edu.ec', NULL, NULL, '2023-10-06 02:20:27', '2023-10-06 02:20:27'),
(34, 'Mayorga Zapata Adrian Gustavo', 'amayorga9251@uta.edu.ec', NULL, NULL, '2023-10-06 02:51:01', '2023-10-06 02:51:01'),
(35, 'Brito Hallo Rafael Alejandro', 'rbrito9162@uta.edu.ec', NULL, NULL, '2023-10-06 02:52:00', '2023-10-06 02:52:00'),
(36, 'Palate Dominguez Mateo Nicolas', 'mpalate2620@uta.edu.ec', NULL, NULL, '2023-10-06 02:56:57', '2023-10-06 02:56:57'),
(37, 'Gualpa Tigasi Anthony Miguel', 'agualpa9851@uta.edu.ec', NULL, NULL, '2023-10-06 03:26:48', '2023-10-06 03:26:48'),
(38, 'Guaman Guevara Jimmy Santiago', 'jguaman3961@uta.edu.ec', NULL, NULL, '2023-10-06 07:03:34', '2023-10-06 07:03:34'),
(39, 'Palan Murillo Jonathan David', 'jpalan4988@uta.edu.ec', NULL, NULL, '2023-10-06 20:06:48', '2023-10-06 20:06:48'),
(40, 'Torres Valverde Leonardo David', 'ld.torres@uta.edu.ec', NULL, NULL, '2023-10-06 23:05:21', '2023-10-06 23:05:21'),
(41, 'Ojeda Carrasco Jose Luis', 'jojeda5171@uta.edu.ec', NULL, NULL, '2023-10-07 00:54:01', '2023-10-07 00:54:01'),
(42, 'Tacuaman Carrera Luis Andres', 'ltacuaman1769@uta.edu.ec', NULL, NULL, '2023-10-07 01:57:34', '2023-10-07 01:57:34'),
(43, 'Tixilema Merchan Mateo Sebastian', 'mtixilema6630@uta.edu.ec', NULL, NULL, '2023-10-07 01:57:54', '2023-10-07 01:57:54'),
(44, 'Ramirez Manzano Oscar Joel', 'oramirez0004@uta.edu.ec', NULL, NULL, '2023-10-07 02:59:20', '2023-10-07 02:59:20'),
(45, 'Naranjo Lopez Anahi De Los Angeles', 'anaranjo1676@uta.edu.ec', NULL, NULL, '2023-10-07 13:14:21', '2023-10-07 13:14:21'),
(46, 'Poaquiza Peñaloza Alexis Joel', 'apoaquiza6287@uta.edu.ec', NULL, NULL, '2023-10-07 21:01:41', '2023-10-07 21:01:41'),
(47, 'Ortiz Arcos Marco Antonio', 'mortiz7889@uta.edu.ec', NULL, NULL, '2023-10-07 21:50:53', '2023-10-07 21:50:53'),
(48, 'Galarza Chacon David Octavio', 'dgalarza2302@uta.edu.ec', NULL, NULL, '2023-10-10 08:32:53', '2023-10-10 08:32:53'),
(49, 'Cobo Torres Cristobal Andres', 'ccobo1039@uta.edu.ec', NULL, NULL, '2023-10-10 09:52:54', '2023-10-10 09:52:54'),
(50, 'Sailema Cusco Alex Fabian', 'asailema4618@uta.edu.ec', NULL, NULL, '2023-10-10 16:43:24', '2023-10-10 16:43:24'),
(51, 'Pilamunga Quiquintuña Angel Israel', 'apilamunga8379@uta.edu.ec', NULL, NULL, '2023-10-10 18:12:12', '2023-10-10 18:12:12'),
(52, 'Guanoquiza Pallo Kevin Santiago', 'kguanoquiza5125@uta.edu.ec', NULL, NULL, '2023-10-10 22:17:05', '2023-10-10 22:17:05'),
(53, 'Tituaña Gualoto Bryan Alexander', 'btituana7880@uta.edu.ec', NULL, NULL, '2023-10-10 22:44:44', '2023-10-10 22:44:44'),
(54, 'Oñate Mena Lizbeth Anais', 'lonate1721@uta.edu.ec', NULL, NULL, '2023-10-10 22:53:56', '2023-10-10 22:53:56'),
(55, 'Paredes Castro Bryan Alexander', 'bparedes1182@uta.edu.ec', NULL, NULL, '2023-10-10 23:20:09', '2023-10-10 23:20:09'),
(56, 'Condor Laica Jhonny Ariel', 'jcondor7182@uta.edu.ec', NULL, NULL, '2023-10-11 01:11:05', '2023-10-11 01:11:05'),
(57, 'Aucatoma Matias Bryan Paul', 'baucatoma2235@uta.edu.ec', NULL, NULL, '2023-10-11 03:53:02', '2023-10-11 03:53:02'),
(58, 'Valverde Sanchez Edwin David', 'evalverde2200@uta.edu.ec', NULL, NULL, '2023-10-11 09:45:36', '2023-10-11 09:45:36'),
(59, 'Pazmiño Cordova Bryan Javier', 'bpazmino9953@uta.edu.ec', NULL, NULL, '2023-10-11 19:01:55', '2023-10-11 19:01:55'),
(60, 'Dominguez Castro Jonathan Mauricio', 'jdominguez9098@uta.edu.ec', NULL, NULL, '2023-10-11 20:06:11', '2023-10-11 20:06:11'),
(61, 'Tituaña Alvaro Jofre Damian', 'jtituana5818@uta.edu.ec', NULL, NULL, '2023-10-11 20:40:59', '2023-10-11 20:40:59'),
(62, 'Tipan Nuñez Rene Sebastian', 'rtipan3593@uta.edu.ec', NULL, NULL, '2023-10-11 21:21:54', '2023-10-11 21:21:54'),
(63, 'Castro Iza Bryan Vladimir', 'bcastro5851@uta.edu.ec', NULL, NULL, '2023-10-11 21:29:53', '2023-10-11 21:29:53'),
(64, 'Lescano Cisneros Jhon Alexander', 'jlescano6686@uta.edu.ec', NULL, NULL, '2023-10-11 21:31:28', '2023-10-11 21:31:28'),
(65, 'Gamez Pin Silvia Noemi', 'sgamez4833@uta.edu.ec', NULL, NULL, '2023-10-11 21:47:30', '2023-10-11 21:47:30'),
(66, 'Nieto Guamanquispe Jonathan Daniel', 'jnieto8849@uta.edu.ec', NULL, NULL, '2023-10-11 22:24:35', '2023-10-11 22:24:35'),
(67, 'Moya Lozada Mateo Sebastian', 'mmoya8126@uta.edu.ec', NULL, NULL, '2023-10-11 22:26:49', '2023-10-11 22:26:49'),
(68, 'Guaranda Hoyos Angel Sebastian', 'aguaranda8175@uta.edu.ec', NULL, NULL, '2023-10-12 01:56:50', '2023-10-12 01:56:50'),
(69, 'Ramirez Hinostroza Manuel Eduardo', 'mramirez1561@uta.edu.ec', NULL, NULL, '2023-10-12 02:13:07', '2023-10-12 02:13:07'),
(70, 'Castro Muñoz Munir Alejandro', 'mcastro2297@uta.edu.ec', NULL, NULL, '2023-10-12 02:19:06', '2023-10-12 02:19:06'),
(71, 'Galarza Medina Mario Daniel', 'mgalarza9617@uta.edu.ec', NULL, NULL, '2023-10-12 02:24:15', '2023-10-12 02:24:15'),
(72, 'Escobar Alban Bryan Alexander', 'bescobar4739@uta.edu.ec', NULL, NULL, '2023-10-12 02:41:15', '2023-10-12 02:41:15'),
(73, 'Pazmiño Torres Lizandro Josue', 'lpazmino4833@uta.edu.ec', NULL, NULL, '2023-10-12 03:24:13', '2023-10-12 03:24:13'),
(74, 'Tisalema Carrillo Patricio Sebastian', 'ptisalema0898@uta.edu.ec', NULL, NULL, '2023-10-12 05:12:04', '2023-10-12 05:12:04'),
(75, 'Lozada Velastegui Stalin Jair', 'slozada3818@uta.edu.ec', NULL, NULL, '2023-10-12 18:34:07', '2023-10-12 18:34:07'),
(76, 'Quintero Moncayo Dylan Augusto', 'dquintero2602@uta.edu.ec', NULL, NULL, '2023-10-12 19:59:48', '2023-10-12 19:59:48'),
(77, 'Lizano Mera Christian Trajano', 'clizano9834@uta.edu.ec', NULL, NULL, '2023-10-12 21:22:44', '2023-10-12 21:22:44'),
(78, 'Naranjo Cordova Edder Daniel', 'enaranjo5489@uta.edu.ec', NULL, NULL, '2023-10-12 23:44:23', '2023-10-12 23:44:23'),
(79, 'Suque Sulca Alan Jordi', 'asuque8456@uta.edu.ec', NULL, NULL, '2023-10-13 01:40:42', '2023-10-13 01:40:42'),
(80, 'Barragan Soto Jonathan Joel', 'jbarragan5056@uta.edu.ec', NULL, NULL, '2023-10-13 21:56:20', '2023-10-13 21:56:20'),
(81, 'De La Cruz Achig Cristhofer Israel', 'cdelacruz9622@uta.edu.ec', NULL, NULL, '2023-10-16 04:26:39', '2023-10-16 04:26:39'),
(82, 'Villacres Lopez Jose Javier', 'jvillacres1133@uta.edu.ec', NULL, NULL, '2023-10-16 05:05:20', '2023-10-16 05:05:20'),
(83, 'Hernandez Moreno Maria Emilia', 'mhernandez4433@uta.edu.ec', NULL, NULL, '2023-10-16 19:54:49', '2023-10-16 19:54:49'),
(84, 'Lopez Flores Mauricio Xavier', 'mx.lopez@uta.edu.ec', NULL, NULL, '2023-10-17 22:06:37', '2023-10-17 22:06:37'),
(85, 'Perez Imaicela Roger Hanibal', 'rperez5329@uta.edu.ec', NULL, NULL, '2023-10-18 00:51:06', '2023-10-18 00:51:06'),
(86, 'Salazar Lopez Anthony Matias', 'asalazar1802@uta.edu.ec', NULL, NULL, '2023-10-18 02:42:14', '2023-10-18 02:42:14'),
(87, 'Maiza Nuñez Joel Andres', 'jmaiza0938@uta.edu.ec', NULL, NULL, '2023-10-18 19:10:51', '2023-10-18 19:10:51'),
(88, 'Cundulli Vargas Olger David', 'ocundulli0047@uta.edu.ec', NULL, NULL, '2023-10-18 20:49:32', '2023-10-18 20:49:32'),
(89, 'Vasquez Ayala Karen Andrea', 'kvasquez7923@uta.edu.ec', NULL, NULL, '2023-10-18 20:50:45', '2023-10-18 20:50:45'),
(90, 'Medina Palacios Luis Joffre', 'lmedina7994@uta.edu.ec', NULL, NULL, '2023-10-18 21:56:52', '2023-10-18 21:56:52'),
(91, 'Navas Rojas Antoni Rene', 'anavas2714@uta.edu.ec', NULL, NULL, '2023-10-18 23:29:16', '2023-10-18 23:29:16'),
(92, 'Galeas Vega Leyber Alexis', 'lgaleas2367@uta.edu.ec', NULL, NULL, '2023-10-19 23:40:59', '2023-10-19 23:40:59'),
(93, 'Maiza Pilatasi Kevin Javier', 'kmaiza7017@uta.edu.ec', NULL, NULL, '2023-10-20 20:50:19', '2023-10-20 20:50:19'),
(94, 'Alman Gaibor Jhon Gaciel', 'jalman0104@uta.edu.ec', NULL, NULL, '2023-10-23 05:00:14', '2023-10-23 05:00:14'),
(95, 'Morales Mejia Mario  Stiven', 'mmorales2842@uta.edu.ec', NULL, NULL, '2023-10-24 00:15:33', '2023-10-24 00:15:33'),
(96, 'Freire Luisa Juan Carlos', 'jfreire0693@uta.edu.ec', NULL, NULL, '2023-10-25 02:14:25', '2023-10-25 02:14:25'),
(97, 'Mayorga Parreño Angelo Jahir', 'amayorga3024@uta.edu.ec', NULL, NULL, '2023-10-25 03:52:11', '2023-10-25 03:52:11'),
(98, 'Jinez Montesdeoca Bryan Paul', 'bjinez7437@uta.edu.ec', NULL, NULL, '2023-10-26 20:35:19', '2023-10-26 20:35:19'),
(99, 'Jerez Masaquiza Adi Rimay', 'ajerez3493@uta.edu.ec', NULL, NULL, '2023-10-27 00:52:28', '2023-10-27 00:52:28'),
(100, 'Ramirez Ruiz Ana Sarahi', 'aramirez7165@uta.edu.ec', NULL, NULL, '2023-10-27 05:32:44', '2023-10-27 05:32:44'),
(101, 'Ramos Morales Gutemberg Vladimir', 'gramos3269@uta.edu.ec', NULL, NULL, '2023-10-27 17:56:37', '2023-10-27 17:56:37'),
(102, 'Villafuerte Grijalva Mauricio Fernando', 'mvillafuerte0383@uta.edu.ec', NULL, NULL, '2023-11-01 18:06:09', '2023-11-01 18:06:09'),
(103, 'Cayo Tipan Kevin Joel', 'kcayo6155@uta.edu.ec', NULL, NULL, '2023-11-10 22:03:27', '2023-11-10 22:03:27'),
(104, 'Vinueza Requene Mathias Leonardo', 'mvinueza5186@uta.edu.ec', NULL, NULL, '2023-11-15 20:18:36', '2023-11-15 20:18:36'),
(105, 'Pesantez Quintanilla Josue Miguel', 'jpesantez4994@uta.edu.ec', NULL, NULL, '2023-11-16 01:03:39', '2023-11-16 01:03:39'),
(106, 'Miniguano Bonilla Mauricio Damian', 'mminiguano0378@uta.edu.ec', NULL, NULL, '2023-11-16 01:07:34', '2023-11-16 01:07:34'),
(107, 'Paredes Medina Steven Eduardo', 'sparedes7182@uta.edu.ec', NULL, NULL, '2023-11-16 03:53:04', '2023-11-16 03:53:04'),
(108, 'Urbina Aguilar Lauren Adrian', 'lurbina0065@uta.edu.ec', NULL, NULL, '2023-11-16 21:19:13', '2023-11-16 21:19:13'),
(109, 'Solis Lopez Maria De Los Angeles', 'msolis4506@uta.edu.ec', NULL, NULL, '2023-11-16 22:39:14', '2023-11-16 22:39:14'),
(110, 'Salazar Villarroel Kevin Sebastian', 'ksalazar8620@uta.edu.ec', NULL, NULL, '2023-11-18 01:06:09', '2023-11-18 01:06:09'),
(111, 'Chavez Viera Aron Ismael', 'achavez1251@uta.edu.ec', NULL, NULL, '2023-11-19 04:05:49', '2023-11-19 04:05:49'),
(112, 'Jimenez Chango Saimol Steph', 'sjimenez6271@uta.edu.ec', NULL, NULL, '2023-11-20 19:41:06', '2023-11-20 19:41:06'),
(113, 'Cueva Toaquiza Henry Fernando', 'hcueva3871@uta.edu.ec', NULL, NULL, '2023-11-21 21:16:13', '2023-11-21 21:16:13'),
(114, 'Robayo Villagomez Victor Hugo', 'vrobayo0945@uta.edu.ec', NULL, NULL, '2023-11-22 19:43:25', '2023-11-22 19:43:25'),
(115, 'Cuyo Gutierrez Jonathan Andres', 'jcuyo5090@uta.edu.ec', NULL, NULL, '2023-11-22 22:17:12', '2023-11-22 22:17:12'),
(116, 'Peñaloza Morales Andres Sebastian', 'apenaloza8583@uta.edu.ec', NULL, NULL, '2023-11-29 18:57:42', '2023-11-29 18:57:42'),
(117, 'Pacari Maliza Nina Edith', 'npacari0039@uta.edu.ec', NULL, NULL, '2023-11-30 01:55:07', '2023-11-30 01:55:07'),
(118, 'Torres Guato Brenda Carolina', 'btorres5985@uta.edu.ec', NULL, NULL, '2023-12-01 18:14:58', '2023-12-01 18:14:58'),
(119, 'Duran Escobar Marlon Israel', 'mduran4118@uta.edu.ec', NULL, NULL, '2023-12-01 19:23:53', '2023-12-01 19:23:53'),
(120, 'Cardenas Solis Sofia Kruspkaya', 'scardenas8242@uta.edu.ec', NULL, NULL, '2023-12-02 05:47:19', '2023-12-02 05:47:19'),
(121, 'Lopez Brito Bryan Fabricio', 'blopez2014@uta.edu.ec', NULL, NULL, '2023-12-04 18:54:19', '2023-12-04 18:54:19'),
(122, 'Robalino Díaz Leonardo David', 'ld.robalino@uta.edu.ec', NULL, NULL, '2023-12-04 20:24:20', '2023-12-04 20:24:20'),
(123, 'Ninacuri Galarza Michelle Alexandra', 'mninacuri8241@uta.edu.ec', NULL, NULL, '2023-12-04 20:40:23', '2023-12-04 20:40:23'),
(124, 'Acosta Garces Joselyn Valeria', 'jacosta3999@uta.edu.ec', NULL, NULL, '2023-12-08 19:26:15', '2023-12-08 19:26:15'),
(125, 'Galarza Flores Emilia Domenica', 'egalarza7363@uta.edu.ec', NULL, NULL, '2023-12-09 06:24:13', '2023-12-09 06:24:13'),
(126, 'Rumipamba Curicama Kevin Ronaldo', 'krumipamba3574@uta.edu.ec', NULL, NULL, '2023-12-12 18:52:39', '2023-12-12 18:52:39'),
(127, 'Martinez Saltos Angelica Ranshell', 'amartinez4582@uta.edu.ec', NULL, NULL, '2023-12-14 16:58:14', '2023-12-14 16:58:14'),
(128, 'Alban Fuel Damian Ismael', 'dalban5037@uta.edu.ec', NULL, NULL, '2023-12-15 00:40:05', '2023-12-15 00:40:05'),
(129, 'Tello Quinteros Juan Sebastian', 'jtello2563@uta.edu.ec', NULL, NULL, '2023-12-16 03:25:21', '2023-12-16 03:25:21'),
(130, 'Sailema Palate Stalyn Patricio', 'ssailema9252@uta.edu.ec', NULL, NULL, '2023-12-18 18:59:22', '2023-12-18 18:59:22'),
(131, 'Montenegro Galarza Daniela de las Mercedes', 'ddlm.montenegro@uta.edu.ec', NULL, NULL, '2023-12-18 21:38:41', '2023-12-18 21:38:41'),
(132, 'Chiliquinga Toapanta Natasha Belen', 'nchiliquinga8893@uta.edu.ec', NULL, NULL, '2023-12-19 20:56:08', '2023-12-19 20:56:08'),
(133, 'Moyolema Puente Kenneth Steven', 'kmoyolema4468@uta.edu.ec', NULL, NULL, '2024-01-03 01:47:44', '2024-01-03 01:47:44'),
(134, 'Guananga Galeas Diego Anthony', 'dguananga3923@uta.edu.ec', NULL, NULL, '2024-01-04 04:06:23', '2024-01-04 04:06:23'),
(135, 'Medina Morales Jennifer Fernanda', 'jmedina4195@uta.edu.ec', NULL, NULL, '2024-01-04 21:14:57', '2024-01-04 21:14:57'),
(136, 'Bautista Salinas Dayana Estefania', 'dbautista0793@uta.edu.ec', NULL, NULL, '2024-01-05 00:04:28', '2024-01-05 00:04:28'),
(137, 'Chiliquinga Toapanta Kevin Stalin', 'kchiliquinga2098@uta.edu.ec', NULL, NULL, '2024-01-05 22:35:38', '2024-01-05 22:35:38'),
(138, 'Bonilla Bonilla Erick Bladimir', 'ebonilla9465@uta.edu.ec', NULL, NULL, '2024-01-05 22:35:59', '2024-01-05 22:35:59'),
(139, 'Toapanta Olovacha Steven Joel', 'stoapanta4745@uta.edu.ec', NULL, NULL, '2024-01-06 02:18:50', '2024-01-06 02:18:50'),
(140, 'CRISTHIAN ALEXANDER CHAVARREA RAMIREZ', 'cristhian.chavarrea@espoch.edu.ec', NULL, NULL, '2024-01-06 06:16:09', '2024-01-06 06:16:09'),
(141, 'Copara Allauca Marlon Alexis', 'mcopara4120@uta.edu.ec', NULL, NULL, '2024-01-09 21:37:24', '2024-01-09 21:37:24'),
(142, 'Lagua Tipantaxi Edgar Saul', 'elagua5149@uta.edu.ec', NULL, NULL, '2024-01-12 19:49:24', '2024-01-12 19:49:24'),
(143, 'Izurieta Almendariz Edgar Ernesto', 'eizurieta3736@uta.edu.ec', NULL, NULL, '2024-01-20 18:16:34', '2024-01-20 18:16:34'),
(144, 'Supe Criollo Christian Patricio', 'csupe8519@uta.edu.ec', NULL, NULL, '2024-01-24 02:09:40', '2024-01-24 02:09:40'),
(145, 'Garces Montesdeoca Juan Pablo', 'jgarces6778@uta.edu.ec', NULL, NULL, '2024-01-24 04:17:58', '2024-01-24 04:17:58'),
(146, 'Perez Aguilar Bryan David', 'bperez7281@uta.edu.ec', NULL, NULL, '2024-01-25 03:00:30', '2024-01-25 03:00:30'),
(147, 'Amanta Manobanda Mariela Elizabeth', 'mamanta4438@uta.edu.ec', NULL, NULL, '2024-01-25 18:25:58', '2024-01-25 18:25:58'),
(148, 'Tapia Tapia Sofia Fernanda', 'stapia5853@uta.edu.ec', NULL, NULL, '2024-01-26 00:31:03', '2024-01-26 00:31:03'),
(149, 'Quinapanta Criollo Joselyn Johanna', 'jquinapanta5139@uta.edu.ec', NULL, NULL, '2024-01-26 00:31:54', '2024-01-26 00:31:54'),
(150, 'Lizano Muñoz Alex Santiago', 'alizano4338@uta.edu.ec', NULL, NULL, '2024-01-31 20:12:11', '2024-01-31 20:12:11'),
(151, 'Palate Moreta Kevin Damian', 'kpalate4416@uta.edu.ec', NULL, NULL, '2024-02-02 21:55:11', '2024-02-02 21:55:11'),
(152, 'Lara Cortes Edison Sebastian', 'elara9051@uta.edu.ec', NULL, NULL, '2024-02-15 19:35:55', '2024-02-15 19:35:55');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actividades`
--
ALTER TABLE `actividades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `actividades_carrera_id_foreign` (`carrera_id`);

--
-- Indices de la tabla `aulas`
--
ALTER TABLE `aulas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `aula_software`
--
ALTER TABLE `aula_software`
  ADD KEY `aula_software_aula_id_foreign` (`aula_id`),
  ADD KEY `aula_software_software_id_foreign` (`software_id`);

--
-- Indices de la tabla `caracteristicas`
--
ALTER TABLE `caracteristicas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `caracteristicas_aula_id_foreign` (`aula_id`);

--
-- Indices de la tabla `carreras`
--
ALTER TABLE `carreras`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `docentes`
--
ALTER TABLE `docentes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `docente_titulo`
--
ALTER TABLE `docente_titulo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `docente_titulo_titulo_id_foreign` (`titulo_id`),
  ADD KEY `docente_titulo_docente_id_foreign` (`docente_id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `has_roles`
--
ALTER TABLE `has_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `has_roles_user_id_foreign` (`user_id`),
  ADD KEY `has_roles_rol_id_foreign` (`rol_id`);

--
-- Indices de la tabla `horarios`
--
ALTER TABLE `horarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `horarios_aula_id_foreign` (`aula_id`),
  ADD KEY `horarios_actividad_id_foreign` (`actividad_id`),
  ADD KEY `horarios_paralelo_id_foreign` (`paralelo_id`),
  ADD KEY `horarios_docente_id_foreign` (`docente_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `niveles`
--
ALTER TABLE `niveles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `paralelos`
--
ALTER TABLE `paralelos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `periodos`
--
ALTER TABLE `periodos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `puestos`
--
ALTER TABLE `puestos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `puestos_aula_id_foreign` (`aula_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `software`
--
ALTER TABLE `software`
  ADD PRIMARY KEY (`id`),
  ADD KEY `software_aula_id_foreign` (`aula_id`);

--
-- Indices de la tabla `sugerencias`
--
ALTER TABLE `sugerencias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sugerencias_aula_id_foreign` (`aula_id`);

--
-- Indices de la tabla `titulos`
--
ALTER TABLE `titulos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actividades`
--
ALTER TABLE `actividades`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=219;

--
-- AUTO_INCREMENT de la tabla `aulas`
--
ALTER TABLE `aulas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT de la tabla `caracteristicas`
--
ALTER TABLE `caracteristicas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `carreras`
--
ALTER TABLE `carreras`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `docentes`
--
ALTER TABLE `docentes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT de la tabla `docente_titulo`
--
ALTER TABLE `docente_titulo`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `has_roles`
--
ALTER TABLE `has_roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT de la tabla `horarios`
--
ALTER TABLE `horarios`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1878;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `niveles`
--
ALTER TABLE `niveles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `paralelos`
--
ALTER TABLE `paralelos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `periodos`
--
ALTER TABLE `periodos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `puestos`
--
ALTER TABLE `puestos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `software`
--
ALTER TABLE `software`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT de la tabla `sugerencias`
--
ALTER TABLE `sugerencias`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `titulos`
--
ALTER TABLE `titulos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `actividades`
--
ALTER TABLE `actividades`
  ADD CONSTRAINT `actividades_carrera_id_foreign` FOREIGN KEY (`carrera_id`) REFERENCES `carreras` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `aula_software`
--
ALTER TABLE `aula_software`
  ADD CONSTRAINT `aula_software_aula_id_foreign` FOREIGN KEY (`aula_id`) REFERENCES `aulas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `aula_software_software_id_foreign` FOREIGN KEY (`software_id`) REFERENCES `software` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `caracteristicas`
--
ALTER TABLE `caracteristicas`
  ADD CONSTRAINT `caracteristicas_aula_id_foreign` FOREIGN KEY (`aula_id`) REFERENCES `aulas` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `docente_titulo`
--
ALTER TABLE `docente_titulo`
  ADD CONSTRAINT `docente_titulo_docente_id_foreign` FOREIGN KEY (`docente_id`) REFERENCES `docentes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `docente_titulo_titulo_id_foreign` FOREIGN KEY (`titulo_id`) REFERENCES `titulos` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `has_roles`
--
ALTER TABLE `has_roles`
  ADD CONSTRAINT `has_roles_rol_id_foreign` FOREIGN KEY (`rol_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `has_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `horarios`
--
ALTER TABLE `horarios`
  ADD CONSTRAINT `horarios_actividad_id_foreign` FOREIGN KEY (`actividad_id`) REFERENCES `actividades` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `horarios_aula_id_foreign` FOREIGN KEY (`aula_id`) REFERENCES `aulas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `horarios_docente_id_foreign` FOREIGN KEY (`docente_id`) REFERENCES `docentes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `horarios_paralelo_id_foreign` FOREIGN KEY (`paralelo_id`) REFERENCES `actividades` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `puestos`
--
ALTER TABLE `puestos`
  ADD CONSTRAINT `puestos_aula_id_foreign` FOREIGN KEY (`aula_id`) REFERENCES `aulas` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `software`
--
ALTER TABLE `software`
  ADD CONSTRAINT `software_aula_id_foreign` FOREIGN KEY (`aula_id`) REFERENCES `aulas` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `sugerencias`
--
ALTER TABLE `sugerencias`
  ADD CONSTRAINT `sugerencias_aula_id_foreign` FOREIGN KEY (`aula_id`) REFERENCES `aulas` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
