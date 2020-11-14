-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-11-2020 a las 14:44:00
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `seminario`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pro_actividad`
--

CREATE TABLE `pro_actividad` (
  `id_Pro_Actividad` int(10) UNSIGNED NOT NULL,
  `Pro_TipoActividad_id_Pro_TipoActividad` int(10) UNSIGNED NOT NULL,
  `Pro_Curso_idPro_Curso` int(10) UNSIGNED NOT NULL,
  `Nombre` varchar(50) DEFAULT NULL,
  `Descripcion` text DEFAULT NULL,
  `Punteo` double DEFAULT NULL,
  `FechaCreacion` date NOT NULL,
  `FechaEntrega` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pro_actividad`
--

INSERT INTO `pro_actividad` (`id_Pro_Actividad`, `Pro_TipoActividad_id_Pro_TipoActividad`, `Pro_Curso_idPro_Curso`, `Nombre`, `Descripcion`, `Punteo`, `FechaCreacion`, `FechaEntrega`) VALUES
(6, 0, 1, 'Investigación', 'Investigar vectores y escalantes', 10, '2020-10-02', '2020-10-05'),
(2, 0, 1, 'hoja de trabajo 1', 'ejercicios del libro de la unidad 2', 5, '2020-10-06', '2020-10-13'),
(3, 0, 2, 'Investigación', 'Investigación sobre las leyes de Newton', 10, '2020-09-29', '2020-10-01'),
(4, 0, 3, 'Modelo', 'Creación de un modelo en arcilla (tema libre)', 20, '2020-10-01', '2020-10-05'),
(5, 0, 4, 'Video de baile', 'video sobre un baile de la región sur occidente', 20, '2020-09-27', '2020-10-09'),
(7, 0, 4, 'Historia de la Danza', 'Investigar la Historia de la danza. (inicio, tipos, etc).', 5, '2020-09-26', '2020-10-07'),
(8, 0, 2, 'exposición', 'exposición de elementos físicos', 15, '2020-10-24', '2020-10-24'),
(9, 0, 1, 'prueba corta', 'prueba corta sobre triángulos rectangulos', 5, '2020-11-13', '2020-11-16'),
(10, 0, 1, 'prueba corta', 'prueba corta sobre triángulos rectangulos', 5, '2020-11-13', '2020-11-16'),
(11, 0, 1, 'prueba corta', 'prueba corta sobre triángulos rectangulos', 5, '2020-11-13', '2020-11-16'),
(16, 0, 1, '', '', 0, '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pro_asignacion`
--

CREATE TABLE `pro_asignacion` (
  `id_Pro_Asignacion` int(11) NOT NULL,
  `Nivel` varchar(50) NOT NULL,
  `Grado` varchar(50) NOT NULL,
  `Carrera` varchar(50) NOT NULL DEFAULT '---',
  `Aula` varchar(50) NOT NULL,
  `Estado` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pro_asignacion`
--

INSERT INTO `pro_asignacion` (`id_Pro_Asignacion`, `Nivel`, `Grado`, `Carrera`, `Aula`, `Estado`) VALUES
(1, 'Diversificado', '4to', 'Bachillerato en computación', '4to BACO', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pro_aula`
--

CREATE TABLE `pro_aula` (
  `idPro_Aula` int(10) UNSIGNED NOT NULL,
  `Pro_Seccion_id_Pro_Seccion` int(10) UNSIGNED NOT NULL,
  `Nombre` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pro_carrera`
--

CREATE TABLE `pro_carrera` (
  `id_Pro_Carrera` int(10) UNSIGNED NOT NULL,
  `Carrera` varchar(250) DEFAULT NULL,
  `id_Pro_Se ccion` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pro_carrera`
--

INSERT INTO `pro_carrera` (`id_Pro_Carrera`, `Carrera`, `id_Pro_Se ccion`) VALUES
(1, 'Bachillerato en computación', 0),
(2, '----------', 0),
(4, 'Bachillerato en Ciencias y Letras', 0),
(6, 'Perito Contador', 0),
(7, 'Electronica', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pro_ciclo`
--

CREATE TABLE `pro_ciclo` (
  `id_Pro_Ciclo` int(10) UNSIGNED NOT NULL,
  `Ciclo` int(10) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pro_ciclo`
--

INSERT INTO `pro_ciclo` (`id_Pro_Ciclo`, `Ciclo`) VALUES
(1, 2020),
(3, 2021);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pro_curso`
--

CREATE TABLE `pro_curso` (
  `idPro_Curso` int(10) UNSIGNED NOT NULL,
  `Pro_UsuarioColegio_id_Pro_Usuarios` int(10) UNSIGNED NOT NULL,
  `Pro_Aula_idPro_Aula` int(10) UNSIGNED NOT NULL,
  `Pro_Ciclo_id_Pro_Ciclo` int(10) UNSIGNED NOT NULL,
  `Pro_Malla_id_Pro_Malla` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pro_encargado`
--

CREATE TABLE `pro_encargado` (
  `id_Pro_Encargado` int(10) UNSIGNED NOT NULL,
  `Nombre` varchar(50) DEFAULT NULL,
  `Apellido` varchar(50) DEFAULT NULL,
  `Telefono1` varchar(20) DEFAULT NULL,
  `Telefono2` varchar(20) DEFAULT NULL,
  `Direccion` varchar(250) DEFAULT NULL,
  `Parentezco` varchar(250) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pro_encargado`
--

INSERT INTO `pro_encargado` (`id_Pro_Encargado`, `Nombre`, `Apellido`, `Telefono1`, `Telefono2`, `Direccion`, `Parentezco`) VALUES
(1, 'carlos', 'valladares', '52879605', '', 'Villa Canales', NULL),
(2, 'carlos', 'valladares', '52879605', '', 'Villa Canales', NULL),
(3, 'carlos', 'valladares', '52879605', '', 'Villa Canales', NULL),
(4, 'Luis', 'Perez', '47586914', '14253678', '3era calle 3-20 zona 5 ', NULL),
(5, 'Luis', 'Rodriguez', '47586914', '14253678', '3era calle 3-20 zona 2', NULL),
(7, 'carlos', 'valladares', '1313213', '52879605', 'vc', NULL),
(8, 'Marlon', 'Lopez', '745411245', '87451265', '8av 18-89 zona 10 ', NULL),
(9, 'carlos', 'valladares', '52879605', '', 'Villa Canales', NULL),
(10, 'carlos', 'valladares', '52879605', '', 'Villa Canales', NULL),
(11, 'carlos', 'valladares', '52879605', '', 'Villa Canales', NULL),
(12, 'carlos', 'valladares', '52879605', '', 'Villa Canales', NULL),
(13, 'carlos', 'valladares', '52879605', '', 'Villa Canales', NULL),
(14, 'carlos', 'valladares', '52879605', '', 'Villa Canales', 'padre'),
(15, 'carlos', 'valladares', '52879605', '', 'Villa Canales', 'padre'),
(16, '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pro_grado`
--

CREATE TABLE `pro_grado` (
  `id_Pro_grado` int(10) UNSIGNED NOT NULL,
  `Grado` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pro_grado`
--

INSERT INTO `pro_grado` (`id_Pro_grado`, `Grado`) VALUES
(1, '4to'),
(8, 'Tercero'),
(7, 'Segundo'),
(5, 'Primero'),
(9, 'Cuarto'),
(10, 'Quinto'),
(11, 'Sexto'),
(12, '1ero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pro_inscripcionestudiante`
--

CREATE TABLE `pro_inscripcionestudiante` (
  `id_Pro_InscripcionEstudiante` int(10) UNSIGNED NOT NULL,
  `Pro_Aula_idPro_Aula` int(10) UNSIGNED NOT NULL,
  `Pro_Ciclo_id_Pro_Ciclo` int(10) UNSIGNED NOT NULL,
  `Pro_Carrera_id_Pro_Carrera` int(10) UNSIGNED NOT NULL,
  `Pro_grado_id_Pro_grado` int(10) UNSIGNED NOT NULL,
  `Pro_Nivel_id_Pro_Nivel` int(10) UNSIGNED NOT NULL,
  `Pro_Encargado_id_Pro_Encargado` int(10) UNSIGNED NOT NULL,
  `Pro_UsuarioColegio_id_Pro_Usuarios` int(10) UNSIGNED NOT NULL,
  `Pro_Seccion_id_Pro_Seccion` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pro_inscripcionestudiante`
--

INSERT INTO `pro_inscripcionestudiante` (`id_Pro_InscripcionEstudiante`, `Pro_Aula_idPro_Aula`, `Pro_Ciclo_id_Pro_Ciclo`, `Pro_Carrera_id_Pro_Carrera`, `Pro_grado_id_Pro_grado`, `Pro_Nivel_id_Pro_Nivel`, `Pro_Encargado_id_Pro_Encargado`, `Pro_UsuarioColegio_id_Pro_Usuarios`, `Pro_Seccion_id_Pro_Seccion`) VALUES
(1, 0, 1, 1, 1, 1, 1, 2, 1),
(2, 0, 1, 1, 1, 1, 1, 5, 1),
(3, 0, 1, 1, 1, 1, 1, 6, 1),
(4, 0, 1, 4, 1, 1, 4, 11, 1),
(5, 0, 1, 1, 1, 1, 5, 12, 1),
(6, 0, 1, 6, 1, 1, 1, 15, 2),
(7, 0, 1, 1, 1, 1, 8, 16, 1),
(8, 0, 1, 2, 5, 5, 1, 17, 2),
(9, 0, 1, 1, 1, 1, 1, 18, 1),
(10, 0, 1, 1, 1, 1, 1, 18, 1),
(11, 0, 1, 1, 1, 1, 1, 18, 1),
(12, 0, 1, 1, 1, 1, 1, 21, 1),
(13, 0, 1, 1, 1, 1, 1, 21, 1),
(14, 0, 1, 1, 1, 1, 1, 23, 1),
(15, 0, 1, 1, 1, 1, 16, 28, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pro_malla`
--

CREATE TABLE `pro_malla` (
  `id_Pro_Malla` int(10) UNSIGNED NOT NULL,
  `Pro_Carrera_id_Pro_Carrera` int(10) UNSIGNED NOT NULL,
  `Pro_grado_id_Pro_grado` int(10) UNSIGNED NOT NULL,
  `Pro_Nivel_id_Pro_Nivel` int(10) UNSIGNED NOT NULL,
  `Pro_Seccion_id_Pro_Seccion` int(11) NOT NULL,
  `Pro_Ciclo_id_Pro_Ciclo` int(11) NOT NULL,
  `Curso` varchar(250) DEFAULT NULL,
  `Maestro` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pro_malla`
--

INSERT INTO `pro_malla` (`id_Pro_Malla`, `Pro_Carrera_id_Pro_Carrera`, `Pro_grado_id_Pro_grado`, `Pro_Nivel_id_Pro_Nivel`, `Pro_Seccion_id_Pro_Seccion`, `Pro_Ciclo_id_Pro_Ciclo`, `Curso`, `Maestro`) VALUES
(1, 1, 1, 1, 1, 1, 'Matemáticas I', 3),
(2, 1, 1, 1, 1, 1, 'Física I', 3),
(3, 1, 1, 1, 1, 1, 'Artes plásticas', 4),
(4, 1, 1, 1, 1, 1, 'Danza', 4),
(5, 1, 2, 2, 1, 1, 'Matemática', 8),
(6, 1, 2, 2, 1, 1, 'Comunicación y Lenguaje ', 9),
(7, 2, 5, 4, 1, 1, 'Matemática', 8),
(8, 2, 5, 4, 1, 1, 'Comunicación y Lenguaje ', 9),
(9, 4, 1, 1, 1, 1, 'Álgebra', 10),
(10, 6, 1, 1, 1, 1, 'Derecho Mercantil', 3),
(11, 6, 1, 1, 2, 1, 'Contabilidad', 3),
(12, 1, 1, 1, 1, 1, 'Estadística', 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pro_nivel`
--

CREATE TABLE `pro_nivel` (
  `id_Pro_Nivel` int(10) UNSIGNED NOT NULL,
  `Nivel` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pro_nivel`
--

INSERT INTO `pro_nivel` (`id_Pro_Nivel`, `Nivel`) VALUES
(1, 'Diversificado'),
(4, 'Primaria'),
(5, 'Basicos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pro_pagos`
--

CREATE TABLE `pro_pagos` (
  `id_Pro_Pagos` int(10) UNSIGNED NOT NULL,
  `Pro_Ciclo_id_Pro_Ciclo` int(10) UNSIGNED NOT NULL,
  `Pro_InscripcionEstudiante_id_Pro_InscripcionEstudiante` int(10) UNSIGNED NOT NULL,
  `Pro_TipoPago_id_Pro_TipoPago` int(10) UNSIGNED NOT NULL,
  `Monto` double DEFAULT NULL,
  `Abono` double DEFAULT NULL,
  `Saldo` double DEFAULT NULL,
  `Fecha` date DEFAULT NULL,
  `Estado` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pro_puesto`
--

CREATE TABLE `pro_puesto` (
  `id_Pro_Puesto` int(10) UNSIGNED NOT NULL,
  `Puesto` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pro_puesto`
--

INSERT INTO `pro_puesto` (`id_Pro_Puesto`, `Puesto`) VALUES
(1, 'Director'),
(2, 'Maestro'),
(3, 'Alumno'),
(4, 'Empleado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pro_seccion`
--

CREATE TABLE `pro_seccion` (
  `id_Pro_Seccion` int(10) UNSIGNED NOT NULL,
  `Seccion` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pro_seccion`
--

INSERT INTO `pro_seccion` (`id_Pro_Seccion`, `Seccion`) VALUES
(1, 'A'),
(2, 'B');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pro_tareas`
--

CREATE TABLE `pro_tareas` (
  `id_Pro_Tareas` int(11) NOT NULL,
  `idPro_Actividad` int(11) NOT NULL,
  `idPro_Curso` int(11) NOT NULL,
  `idPro_Maestro` int(11) NOT NULL,
  `idPro_Alumno` int(11) NOT NULL,
  `idPro_Nivel` int(11) NOT NULL,
  `idPro_Grado` int(11) NOT NULL,
  `idPro_Carrera` int(11) NOT NULL,
  `Enlace` text NOT NULL,
  `Punteo` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pro_tareas`
--

INSERT INTO `pro_tareas` (`id_Pro_Tareas`, `idPro_Actividad`, `idPro_Curso`, `idPro_Maestro`, `idPro_Alumno`, `idPro_Nivel`, `idPro_Grado`, `idPro_Carrera`, `Enlace`, `Punteo`) VALUES
(1, 6, 1, 3, 5, 1, 1, 1, 'http://proseminario.tonohost.com/', 1),
(2, 6, 1, 3, 5, 1, 1, 1, 'https://www.google.com/', 1),
(3, 2, 1, 3, 5, 1, 1, 1, 'https://www.google.com/', 2),
(4, 5, 4, 4, 5, 1, 1, 1, 'www.google.com/help', 0),
(5, 6, 1, 3, 6, 1, 1, 1, 'www.google.com/mate', 1),
(6, 2, 1, 3, 6, 1, 1, 1, 'www.google.com/hoja', 2),
(7, 3, 2, 3, 5, 1, 1, 1, 'https://www.google.com/', 10),
(8, 8, 2, 3, 5, 1, 1, 1, 'http://proseminario.tonohost.com/', 1),
(9, 3, 2, 3, 6, 1, 1, 1, 'https://www.google.com/', 5),
(10, 8, 2, 3, 6, 1, 1, 1, 'https://www.google.com/', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pro_tipoactividad`
--

CREATE TABLE `pro_tipoactividad` (
  `id_Pro_TipoActividad` int(10) UNSIGNED NOT NULL,
  `Nombre` varchar(100) DEFAULT NULL,
  `Descripcion` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pro_tipopago`
--

CREATE TABLE `pro_tipopago` (
  `id_Pro_TipoPago` int(10) UNSIGNED NOT NULL,
  `Nombre` int(10) UNSIGNED DEFAULT NULL,
  `Descripcion` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pro_usuariocolegio`
--

CREATE TABLE `pro_usuariocolegio` (
  `id_Pro_Usuarios` int(10) UNSIGNED NOT NULL,
  `Pro_Puesto_id_Pro_Puesto` int(10) UNSIGNED NOT NULL,
  `Nombre1` varchar(50) DEFAULT NULL,
  `Nombre2` varchar(50) DEFAULT NULL,
  `Nombre3` varchar(50) DEFAULT NULL,
  `Apellido1` varchar(50) DEFAULT NULL,
  `Apellido2` varchar(50) DEFAULT NULL,
  `FechaNac` date DEFAULT NULL,
  `Genero` varchar(50) DEFAULT NULL,
  `DPI` varchar(20) DEFAULT NULL,
  `Telefono` varchar(10) DEFAULT NULL,
  `Direccion` text DEFAULT NULL,
  `Correo` varchar(150) NOT NULL,
  `Usuario` varchar(50) DEFAULT NULL,
  `Pass` varchar(50) DEFAULT NULL,
  `Carnet` varchar(50) NOT NULL,
  `Estado` int(10) UNSIGNED DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pro_usuariocolegio`
--

INSERT INTO `pro_usuariocolegio` (`id_Pro_Usuarios`, `Pro_Puesto_id_Pro_Puesto`, `Nombre1`, `Nombre2`, `Nombre3`, `Apellido1`, `Apellido2`, `FechaNac`, `Genero`, `DPI`, `Telefono`, `Direccion`, `Correo`, `Usuario`, `Pass`, `Carnet`, `Estado`) VALUES
(1, 1, 'director', 'director', NULL, 'director', 'director', '1987-09-29', 'Masculino', '123456', '123456', NULL, 'director@correo.com', 'director', '123456', '', 1),
(2, 3, 'Sofia', 'Ruiz', 'carlos', 'Solorsano', 'Juárez', NULL, 'Femenino', '1987001', '52879605', 'Villa Canales', 'geovan221315@hotmail.com', '20201112', 'c1sIMUjl', '', 1),
(3, 2, 'Mariano', 'Escobar', 'carlos', 'Piche', 'Galvez', NULL, 'Masculino', '1987002', '52879605', 'Villa Canales', 'geovan221315@hotmail.com', 'mpiche', '123456', '202032', 1),
(4, 2, 'Betsy', 'Betsabe', 'carlos', 'Linares', 'Solis', NULL, 'Femenino', '1987003', '52879605', 'Villa Canales', 'geovan221315@hotmail.com', 'blinaresl', 'siZJip@X', '202042', 1),
(5, 3, 'Marlin', 'Ariana', 'carlos', 'Juarez', 'Ramírez', NULL, 'Femenino', '1987004', '52879605', 'Villa Canales', 'geovan221315@hotmail.com', '20201115', '123456', '20201115', 1),
(6, 3, 'Maria', 'José', 'carlos', 'Amperes', 'Salazar', NULL, 'Femenino', '1987005', '52879605', 'Villa Canales', 'geovan221315@hotmail.com', 'mamperes', '123456', '', 1),
(8, 2, 'Andrea', 'Cecilia', '', 'Chavéz', 'Herrera', NULL, 'Femenino', '2320556340103', '14562347', '3era calla 3-50 zona 4 ', 'andreac@gmail.com', 'achavézc', '123456', '', 1),
(9, 2, 'José', 'Daniel', '', 'García', 'Orozco', NULL, 'Masculino', '2220556340105', '14552348', '1era calla 5-21 zona 5', 'garciajose@gmail.com', NULL, NULL, '', 1),
(10, 2, 'Antonio', 'Jóse', '', 'Hernandez', 'Gonzalez', NULL, 'Masculino', '2420456240101', '14442349', '4ta calla 6-12 zona 6', 'antonigonz@gmail.com', NULL, NULL, '', 1),
(11, 3, 'José', 'Antonio', '', 'Escobar', 'Ruiz', NULL, 'Masculino', '4320652340101', '12562242', '1era calla 10-2 zona 8', 'joshes@gmail.com', '202041111', '@b50jcY7', '', 1),
(12, 3, 'Andrea', 'Marisol', '', 'Chavéz', 'Orozco', NULL, 'Femenino', '2320556340105', '14542343', '3era calla 3-50 zona 1', 'andrem@gmail.com', 'achavézc', 'Cao3XxQK', '2020123', 1),
(13, 2, 'Tatiana', 'Adamaris', '', 'vallejo', 'Avila', NULL, 'Femenino', '27241584848645', '842156348', '6av 14-7 zona 6 ', 'Tvallejo@gmail.com', NULL, NULL, '', 1),
(15, 3, 'Samada', 'del Rosario', 'carlos', 'Gómez', 'Olivares', NULL, 'Femenino', '1987006', '52879605', 'Villa Canales', 'geovan221315@hotmail.com', NULL, NULL, '', 1),
(16, 3, 'Cristina', 'elizabeth ', '', 'Lopez', 'Mendia ', NULL, 'Femenino', '65495849419191', '845214587', '8av 18-89 zona 10 ', 'CLopez@outlook.com', NULL, NULL, '', 1),
(17, 3, 'sheila', 'alejandra', 'carlos', 'silva', 'valladares', NULL, 'Femenino', '1223334444', '52879605', 'vc', 'geovan221315@hotmail.com', NULL, NULL, '', 1),
(18, 3, 'Brian', 'Alexander', 'garcia', 'Silva', 'Valladares', NULL, 'Femenino', '1122334455', '1313213', 'vc', 'lilian@hotmail.com', NULL, NULL, '', 1),
(19, 3, 'Brian', 'Alexander', 'garcia', 'Silva', 'Valladares', NULL, 'Femenino', '1122334455', '1313213', 'vc', 'lilian@hotmail.com', NULL, NULL, '', 1),
(20, 3, 'Brian', 'Alexander', 'garcia', 'Silva', 'Valladares', NULL, 'Femenino', '1122334455', '1313213', 'vc', 'lilian@hotmail.com', NULL, NULL, '', 1),
(21, 3, 'josselin', 'amor', 'carlos', 'rosales', 'paredes', '1987-08-27', 'Femenino', '1321321', '52879605', 'Villa Canales', 'geovan221315@hotmail.com', NULL, NULL, '', 1),
(22, 3, 'josselin', 'amor', 'carlos', 'rosales', 'paredes', '1987-08-27', 'Femenino', '1321321', '52879605', 'Villa Canales', 'geovan221315@hotmail.com', NULL, NULL, '', 1),
(23, 3, 'emili', 'sofia', 'carlos', 'basilio', 'hernandez', '2000-02-01', 'Femenino', '54646546546ASDF', '52879605', 'Villa Canales', 'geovan221315@hotmail.com', NULL, NULL, '', 1),
(24, 2, 'betsy', 'elisabhet', 'carlos', 'linares', 'garcia', NULL, 'Femenino', '32131321', '52879605', 'Villa Canales', 'geovan221315@hotmail.com', NULL, NULL, '', 1),
(25, 2, 'betsy', 'elisabhet', 'carlos', 'linares', 'garcia', NULL, 'Femenino', '32131321', '52879605', 'Villa Canales', 'geovan221315@hotmail.com', NULL, NULL, '', 1),
(26, 2, 'ligia', 'susana', '', 'garcia', 'garcia', '0000-00-00', 'Femenino', '123', '', '', '', NULL, NULL, '', 1),
(27, 2, 'ligia', 'susana', '', 'garcia', 'garcia', '0000-00-00', 'Femenino', '123', '', '', '', NULL, NULL, '', 1),
(28, 2, 'fa', 'asdf', '', '', '', '2020-11-09', 'Femenino', '', '', '', '', NULL, NULL, '', 1),
(29, 2, 'fa', 'asdf', '', '', '', '2020-11-09', 'Femenino', '', '', '', '', NULL, NULL, '', 1),
(30, 2, 'asdf', '', '', '', '', '2020-11-19', 'Femenino', '', '', '', '', NULL, NULL, '', 1),
(31, 3, 'asdf', '', '', '', '', '2020-11-24', 'Femenino', '', '', '', '', NULL, NULL, '', 1),
(32, 3, '', '', '', '', '', '2020-11-11', 'Femenino', '', '', '', '', NULL, NULL, '', 1),
(33, 3, '', '', '', '', '', '2020-11-11', 'Femenino', '', '', '', '', NULL, NULL, '', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pro_actividad`
--
ALTER TABLE `pro_actividad`
  ADD PRIMARY KEY (`id_Pro_Actividad`),
  ADD KEY `Pro_Actividad_FKIndex1` (`Pro_Curso_idPro_Curso`),
  ADD KEY `Pro_Actividad_FKIndex2` (`Pro_TipoActividad_id_Pro_TipoActividad`);

--
-- Indices de la tabla `pro_asignacion`
--
ALTER TABLE `pro_asignacion`
  ADD PRIMARY KEY (`id_Pro_Asignacion`);

--
-- Indices de la tabla `pro_aula`
--
ALTER TABLE `pro_aula`
  ADD PRIMARY KEY (`idPro_Aula`),
  ADD KEY `Pro_Aula_FKIndex1` (`Pro_Seccion_id_Pro_Seccion`);

--
-- Indices de la tabla `pro_carrera`
--
ALTER TABLE `pro_carrera`
  ADD PRIMARY KEY (`id_Pro_Carrera`);

--
-- Indices de la tabla `pro_ciclo`
--
ALTER TABLE `pro_ciclo`
  ADD PRIMARY KEY (`id_Pro_Ciclo`);

--
-- Indices de la tabla `pro_curso`
--
ALTER TABLE `pro_curso`
  ADD PRIMARY KEY (`idPro_Curso`),
  ADD KEY `Pro_Curso_FKIndex1` (`Pro_Malla_id_Pro_Malla`),
  ADD KEY `Pro_Curso_FKIndex2` (`Pro_Ciclo_id_Pro_Ciclo`),
  ADD KEY `Pro_Curso_FKIndex3` (`Pro_Aula_idPro_Aula`),
  ADD KEY `Pro_Curso_FKIndex4` (`Pro_UsuarioColegio_id_Pro_Usuarios`);

--
-- Indices de la tabla `pro_encargado`
--
ALTER TABLE `pro_encargado`
  ADD PRIMARY KEY (`id_Pro_Encargado`);

--
-- Indices de la tabla `pro_grado`
--
ALTER TABLE `pro_grado`
  ADD PRIMARY KEY (`id_Pro_grado`);

--
-- Indices de la tabla `pro_inscripcionestudiante`
--
ALTER TABLE `pro_inscripcionestudiante`
  ADD PRIMARY KEY (`id_Pro_InscripcionEstudiante`),
  ADD KEY `Pro_InscripcionEstudiante_FKIndex1` (`Pro_UsuarioColegio_id_Pro_Usuarios`),
  ADD KEY `Pro_InscripcionEstudiante_FKIndex2` (`Pro_Encargado_id_Pro_Encargado`),
  ADD KEY `Pro_InscripcionEstudiante_FKIndex3` (`Pro_Nivel_id_Pro_Nivel`),
  ADD KEY `Pro_InscripcionEstudiante_FKIndex4` (`Pro_grado_id_Pro_grado`),
  ADD KEY `Pro_InscripcionEstudiante_FKIndex5` (`Pro_Carrera_id_Pro_Carrera`),
  ADD KEY `Pro_InscripcionEstudiante_FKIndex6` (`Pro_Ciclo_id_Pro_Ciclo`),
  ADD KEY `Pro_InscripcionEstudiante_FKIndex7` (`Pro_Aula_idPro_Aula`);

--
-- Indices de la tabla `pro_malla`
--
ALTER TABLE `pro_malla`
  ADD PRIMARY KEY (`id_Pro_Malla`),
  ADD KEY `Pro_Curso_FKIndex1` (`Pro_Nivel_id_Pro_Nivel`),
  ADD KEY `Pro_Curso_FKIndex2` (`Pro_grado_id_Pro_grado`),
  ADD KEY `Pro_Curso_FKIndex3` (`Pro_Carrera_id_Pro_Carrera`);

--
-- Indices de la tabla `pro_nivel`
--
ALTER TABLE `pro_nivel`
  ADD PRIMARY KEY (`id_Pro_Nivel`);

--
-- Indices de la tabla `pro_pagos`
--
ALTER TABLE `pro_pagos`
  ADD PRIMARY KEY (`id_Pro_Pagos`),
  ADD KEY `Pro_Pagos_FKIndex1` (`Pro_TipoPago_id_Pro_TipoPago`),
  ADD KEY `Pro_Pagos_FKIndex2` (`Pro_InscripcionEstudiante_id_Pro_InscripcionEstudiante`),
  ADD KEY `Pro_Pagos_FKIndex3` (`Pro_Ciclo_id_Pro_Ciclo`);

--
-- Indices de la tabla `pro_puesto`
--
ALTER TABLE `pro_puesto`
  ADD PRIMARY KEY (`id_Pro_Puesto`);

--
-- Indices de la tabla `pro_seccion`
--
ALTER TABLE `pro_seccion`
  ADD PRIMARY KEY (`id_Pro_Seccion`);

--
-- Indices de la tabla `pro_tareas`
--
ALTER TABLE `pro_tareas`
  ADD PRIMARY KEY (`id_Pro_Tareas`);

--
-- Indices de la tabla `pro_tipoactividad`
--
ALTER TABLE `pro_tipoactividad`
  ADD PRIMARY KEY (`id_Pro_TipoActividad`);

--
-- Indices de la tabla `pro_tipopago`
--
ALTER TABLE `pro_tipopago`
  ADD PRIMARY KEY (`id_Pro_TipoPago`);

--
-- Indices de la tabla `pro_usuariocolegio`
--
ALTER TABLE `pro_usuariocolegio`
  ADD PRIMARY KEY (`id_Pro_Usuarios`),
  ADD KEY `Pro_UsuariosColegio_FKIndex1` (`Pro_Puesto_id_Pro_Puesto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pro_actividad`
--
ALTER TABLE `pro_actividad`
  MODIFY `id_Pro_Actividad` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `pro_asignacion`
--
ALTER TABLE `pro_asignacion`
  MODIFY `id_Pro_Asignacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `pro_aula`
--
ALTER TABLE `pro_aula`
  MODIFY `idPro_Aula` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pro_carrera`
--
ALTER TABLE `pro_carrera`
  MODIFY `id_Pro_Carrera` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `pro_ciclo`
--
ALTER TABLE `pro_ciclo`
  MODIFY `id_Pro_Ciclo` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `pro_curso`
--
ALTER TABLE `pro_curso`
  MODIFY `idPro_Curso` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pro_encargado`
--
ALTER TABLE `pro_encargado`
  MODIFY `id_Pro_Encargado` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `pro_grado`
--
ALTER TABLE `pro_grado`
  MODIFY `id_Pro_grado` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `pro_inscripcionestudiante`
--
ALTER TABLE `pro_inscripcionestudiante`
  MODIFY `id_Pro_InscripcionEstudiante` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `pro_malla`
--
ALTER TABLE `pro_malla`
  MODIFY `id_Pro_Malla` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `pro_nivel`
--
ALTER TABLE `pro_nivel`
  MODIFY `id_Pro_Nivel` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `pro_pagos`
--
ALTER TABLE `pro_pagos`
  MODIFY `id_Pro_Pagos` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pro_puesto`
--
ALTER TABLE `pro_puesto`
  MODIFY `id_Pro_Puesto` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `pro_seccion`
--
ALTER TABLE `pro_seccion`
  MODIFY `id_Pro_Seccion` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `pro_tareas`
--
ALTER TABLE `pro_tareas`
  MODIFY `id_Pro_Tareas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `pro_tipoactividad`
--
ALTER TABLE `pro_tipoactividad`
  MODIFY `id_Pro_TipoActividad` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pro_tipopago`
--
ALTER TABLE `pro_tipopago`
  MODIFY `id_Pro_TipoPago` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pro_usuariocolegio`
--
ALTER TABLE `pro_usuariocolegio`
  MODIFY `id_Pro_Usuarios` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
