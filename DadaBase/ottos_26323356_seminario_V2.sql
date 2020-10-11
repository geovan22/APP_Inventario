-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: sql212.tonohost.com
-- Tiempo de generación: 09-10-2020 a las 10:43:14
-- Versión del servidor: 5.6.48-88.0
-- Versión de PHP: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ottos_26323356_seminario`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Pro_Actividad`
--

CREATE TABLE `Pro_Actividad` (
  `id_Pro_Actividad` int(10) UNSIGNED NOT NULL,
  `Pro_TipoActividad_id_Pro_TipoActividad` int(10) UNSIGNED NOT NULL,
  `Pro_Curso_idPro_Curso` int(10) UNSIGNED NOT NULL,
  `Nombre` varchar(50) DEFAULT NULL,
  `Descripcion` text,
  `Punteo` double DEFAULT NULL,
  `FechaCreacion` date NOT NULL,
  `FechaEntrega` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Pro_Actividad`
--

INSERT INTO `Pro_Actividad` (`id_Pro_Actividad`, `Pro_TipoActividad_id_Pro_TipoActividad`, `Pro_Curso_idPro_Curso`, `Nombre`, `Descripcion`, `Punteo`, `FechaCreacion`, `FechaEntrega`) VALUES
(6, 0, 1, 'Investigación', 'Investigar vectores y escalantes', 10, '2020-10-02', '2020-10-05'),
(2, 0, 1, 'hoja de trabajo 1', 'ejercicios del libro de la unidad 2', 5, '2020-10-06', '2020-10-13'),
(3, 0, 2, 'Investigación', 'Investigación sobre las leyes de Newton', 10, '2020-09-29', '2020-10-01'),
(4, 0, 3, 'Modelo', 'Creación de un modelo en arcilla (tema libre)', 20, '2020-10-01', '2020-10-05'),
(5, 0, 4, 'Video de baile', 'video sobre un baile de la región sur occidente', 20, '2020-09-27', '2020-10-09'),
(7, 0, 4, 'Historia de la Danza', 'Investigar la Historia de la danza. (inicio, tipos, etc).', 5, '2020-09-26', '2020-10-07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Pro_Asignacion`
--

CREATE TABLE `Pro_Asignacion` (
  `id_Pro_Asignacion` int(11) NOT NULL,
  `Nivel` varchar(50) NOT NULL,
  `Grado` varchar(50) NOT NULL,
  `Carrera` varchar(50) NOT NULL DEFAULT '---',
  `Aula` varchar(50) NOT NULL,
  `Estado` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Pro_Asignacion`
--

INSERT INTO `Pro_Asignacion` (`id_Pro_Asignacion`, `Nivel`, `Grado`, `Carrera`, `Aula`, `Estado`) VALUES
(1, 'Diversificado', '4to', 'Bachillerato en computación', '4to BACO', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Pro_Aula`
--

CREATE TABLE `Pro_Aula` (
  `idPro_Aula` int(10) UNSIGNED NOT NULL,
  `Pro_Seccion_id_Pro_Seccion` int(10) UNSIGNED NOT NULL,
  `Nombre` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Pro_Carrera`
--

CREATE TABLE `Pro_Carrera` (
  `id_Pro_Carrera` int(10) UNSIGNED NOT NULL,
  `Carrera` varchar(250) DEFAULT NULL,
  `id_Pro_Se ccion` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Pro_Carrera`
--

INSERT INTO `Pro_Carrera` (`id_Pro_Carrera`, `Carrera`, `id_Pro_Se ccion`) VALUES
(1, 'Bachillerato en computación', 0),
(2, '----------', 0),
(4, 'Bachillerato en Ciencias y Letras', 0),
(6, 'Perito Contador', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Pro_Ciclo`
--

CREATE TABLE `Pro_Ciclo` (
  `id_Pro_Ciclo` int(10) UNSIGNED NOT NULL,
  `Ciclo` int(10) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Pro_Ciclo`
--

INSERT INTO `Pro_Ciclo` (`id_Pro_Ciclo`, `Ciclo`) VALUES
(1, 2020),
(3, 2021);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Pro_Curso`
--

CREATE TABLE `Pro_Curso` (
  `idPro_Curso` int(10) UNSIGNED NOT NULL,
  `Pro_UsuarioColegio_id_Pro_Usuarios` int(10) UNSIGNED NOT NULL,
  `Pro_Aula_idPro_Aula` int(10) UNSIGNED NOT NULL,
  `Pro_Ciclo_id_Pro_Ciclo` int(10) UNSIGNED NOT NULL,
  `Pro_Malla_id_Pro_Malla` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Pro_Encargado`
--

CREATE TABLE `Pro_Encargado` (
  `id_Pro_Encargado` int(10) UNSIGNED NOT NULL,
  `Nombre` varchar(50) DEFAULT NULL,
  `Apellido` varchar(50) DEFAULT NULL,
  `Telefono1` varchar(20) DEFAULT NULL,
  `Telefono2` varchar(20) DEFAULT NULL,
  `Direccion` varchar(250) DEFAULT NULL,
  `Parentezco` varchar(250) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Pro_Encargado`
--

INSERT INTO `Pro_Encargado` (`id_Pro_Encargado`, `Nombre`, `Apellido`, `Telefono1`, `Telefono2`, `Direccion`, `Parentezco`) VALUES
(1, 'carlos', 'valladares', '52879605', '', 'Villa Canales', NULL),
(2, 'carlos', 'valladares', '52879605', '', 'Villa Canales', NULL),
(3, 'carlos', 'valladares', '52879605', '', 'Villa Canales', NULL),
(4, 'Luis', 'Perez', '47586914', '14253678', '3era calle 3-20 zona 5 ', NULL),
(5, 'Luis', 'Rodriguez', '47586914', '14253678', '3era calle 3-20 zona 2', NULL),
(7, 'carlos', 'valladares', '1313213', '52879605', 'vc', NULL),
(8, 'Marlon', 'Lopez', '745411245', '87451265', '8av 18-89 zona 10 ', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Pro_grado`
--

CREATE TABLE `Pro_grado` (
  `id_Pro_grado` int(10) UNSIGNED NOT NULL,
  `Grado` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Pro_grado`
--

INSERT INTO `Pro_grado` (`id_Pro_grado`, `Grado`) VALUES
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
-- Estructura de tabla para la tabla `Pro_InscripcionEstudiante`
--

CREATE TABLE `Pro_InscripcionEstudiante` (
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
-- Volcado de datos para la tabla `Pro_InscripcionEstudiante`
--

INSERT INTO `Pro_InscripcionEstudiante` (`id_Pro_InscripcionEstudiante`, `Pro_Aula_idPro_Aula`, `Pro_Ciclo_id_Pro_Ciclo`, `Pro_Carrera_id_Pro_Carrera`, `Pro_grado_id_Pro_grado`, `Pro_Nivel_id_Pro_Nivel`, `Pro_Encargado_id_Pro_Encargado`, `Pro_UsuarioColegio_id_Pro_Usuarios`, `Pro_Seccion_id_Pro_Seccion`) VALUES
(1, 0, 1, 1, 1, 1, 1, 2, 1),
(2, 0, 1, 1, 1, 1, 1, 5, 1),
(3, 0, 1, 1, 1, 1, 1, 6, 1),
(4, 0, 1, 4, 1, 1, 4, 11, 1),
(5, 0, 1, 1, 1, 1, 5, 12, 1),
(6, 0, 1, 6, 1, 1, 1, 15, 2),
(7, 0, 1, 1, 1, 1, 8, 16, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Pro_Malla`
--

CREATE TABLE `Pro_Malla` (
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
-- Volcado de datos para la tabla `Pro_Malla`
--

INSERT INTO `Pro_Malla` (`id_Pro_Malla`, `Pro_Carrera_id_Pro_Carrera`, `Pro_grado_id_Pro_grado`, `Pro_Nivel_id_Pro_Nivel`, `Pro_Seccion_id_Pro_Seccion`, `Pro_Ciclo_id_Pro_Ciclo`, `Curso`, `Maestro`) VALUES
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
(11, 6, 1, 1, 2, 1, 'Contabilidad', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Pro_Nivel`
--

CREATE TABLE `Pro_Nivel` (
  `id_Pro_Nivel` int(10) UNSIGNED NOT NULL,
  `Nivel` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Pro_Nivel`
--

INSERT INTO `Pro_Nivel` (`id_Pro_Nivel`, `Nivel`) VALUES
(1, 'Diversificado'),
(4, 'Primaria'),
(5, 'Basicos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Pro_Pagos`
--

CREATE TABLE `Pro_Pagos` (
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
-- Estructura de tabla para la tabla `Pro_Puesto`
--

CREATE TABLE `Pro_Puesto` (
  `id_Pro_Puesto` int(10) UNSIGNED NOT NULL,
  `Puesto` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Pro_Puesto`
--

INSERT INTO `Pro_Puesto` (`id_Pro_Puesto`, `Puesto`) VALUES
(1, 'Director'),
(2, 'Maestro'),
(3, 'Alumno'),
(4, 'Empleado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Pro_Seccion`
--

CREATE TABLE `Pro_Seccion` (
  `id_Pro_Seccion` int(10) UNSIGNED NOT NULL,
  `Seccion` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Pro_Seccion`
--

INSERT INTO `Pro_Seccion` (`id_Pro_Seccion`, `Seccion`) VALUES
(1, 'A'),
(2, 'B');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Pro_Tareas`
--

CREATE TABLE `Pro_Tareas` (
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
-- Volcado de datos para la tabla `Pro_Tareas`
--

INSERT INTO `Pro_Tareas` (`id_Pro_Tareas`, `idPro_Actividad`, `idPro_Curso`, `idPro_Maestro`, `idPro_Alumno`, `idPro_Nivel`, `idPro_Grado`, `idPro_Carrera`, `Enlace`, `Punteo`) VALUES
(1, 6, 1, 3, 5, 1, 1, 1, 'http://proseminario.tonohost.com/', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Pro_TipoActividad`
--

CREATE TABLE `Pro_TipoActividad` (
  `id_Pro_TipoActividad` int(10) UNSIGNED NOT NULL,
  `Nombre` varchar(100) DEFAULT NULL,
  `Descripcion` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Pro_TipoPago`
--

CREATE TABLE `Pro_TipoPago` (
  `id_Pro_TipoPago` int(10) UNSIGNED NOT NULL,
  `Nombre` int(10) UNSIGNED DEFAULT NULL,
  `Descripcion` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Pro_UsuarioColegio`
--

CREATE TABLE `Pro_UsuarioColegio` (
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
  `Direccion` text,
  `Correo` varchar(150) NOT NULL,
  `Usuario` varchar(50) DEFAULT NULL,
  `Pass` varchar(50) DEFAULT NULL,
  `Carnet` varchar(50) NOT NULL,
  `Estado` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Pro_UsuarioColegio`
--

INSERT INTO `Pro_UsuarioColegio` (`id_Pro_Usuarios`, `Pro_Puesto_id_Pro_Puesto`, `Nombre1`, `Nombre2`, `Nombre3`, `Apellido1`, `Apellido2`, `FechaNac`, `Genero`, `DPI`, `Telefono`, `Direccion`, `Correo`, `Usuario`, `Pass`, `Carnet`, `Estado`) VALUES
(1, 1, 'director', 'director', NULL, 'director', 'director', '1987-09-29', 'Masculino', '123456', '123456', NULL, 'director@correo.com', 'director', '123456', '', 1),
(2, 3, 'Sofia', 'Ruiz', 'carlos', 'Solorsano', 'Juárez', NULL, 'Femenino', '1987001', '52879605', 'Villa Canales', 'geovan221315@hotmail.com', 'ssolorsanos', '7OGiJyei', '202023', 1),
(3, 2, 'Mariano', 'Escobar', 'carlos', 'Piche', 'Galvez', NULL, 'Masculino', '1987002', '52879605', 'Villa Canales', 'geovan221315@hotmail.com', 'mpiche', '123456', '', 1),
(4, 2, 'Betsy', 'Betsabe', 'carlos', 'Linares', 'Solis', NULL, 'Femenino', '1987003', '52879605', 'Villa Canales', 'geovan221315@hotmail.com', 'mlinares', '123456', '', 1),
(5, 3, 'Marlin', 'Ariana', 'carlos', 'Juarez', 'Ramírez', NULL, 'Femenino', '1987004', '52879605', 'Villa Canales', 'geovan221315@hotmail.com', 'mjuarez', '123456', '', 1),
(6, 3, 'Maria', 'José', 'carlos', 'Amperes', 'Salazar', NULL, 'Femenino', '1987005', '52879605', 'Villa Canales', 'geovan221315@hotmail.com', 'mamperes', '123456', '', 1),
(8, 2, 'Andrea', 'Cecilia', '', 'Chavéz', 'Herrera', NULL, 'Femenino', '2320556340103', '14562347', '3era calla 3-50 zona 4 ', 'andreac@gmail.com', 'achavézc', '123456', '', 1),
(9, 2, 'José', 'Daniel', '', 'García', 'Orozco', NULL, 'Masculino', '2220556340105', '14552348', '1era calla 5-21 zona 5', 'garciajose@gmail.com', NULL, NULL, '', 1),
(10, 2, 'Antonio', 'Jóse', '', 'Hernandez', 'Gonzalez', NULL, 'Masculino', '2420456240101', '14442349', '4ta calla 6-12 zona 6', 'antonigonz@gmail.com', NULL, NULL, '', 1),
(11, 3, 'José', 'Antonio', '', 'Escobar', 'Ruiz', NULL, 'Masculino', '4320652340101', '12562242', '1era calla 10-2 zona 8', 'joshes@gmail.com', 'jescobare', 'bOOul9Fi', '2020113', 1),
(12, 3, 'Andrea', 'Marisol', '', 'Chavéz', 'Orozco', NULL, 'Femenino', '2320556340105', '14542343', '3era calla 3-50 zona 1', 'andrem@gmail.com', 'achavézc', 'Cao3XxQK', '2020123', 1),
(13, 2, 'Tatiana', 'Adamaris', '', 'vallejo', 'Avila', NULL, 'Femenino', '27241584848645', '842156348', '6av 14-7 zona 6 ', 'Tvallejo@gmail.com', NULL, NULL, '', 1),
(15, 3, 'Samada', 'del Rosario', 'carlos', 'Gómez', 'Olivares', NULL, 'Femenino', '1987006', '52879605', 'Villa Canales', 'geovan221315@hotmail.com', NULL, NULL, '', 1),
(16, 3, 'Cristina', 'elizabeth ', '', 'Lopez', 'Mendia ', NULL, 'Femenino', '65495849419191', '845214587', '8av 18-89 zona 10 ', 'CLopez@outlook.com', NULL, NULL, '', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Pro_Actividad`
--
ALTER TABLE `Pro_Actividad`
  ADD PRIMARY KEY (`id_Pro_Actividad`),
  ADD KEY `Pro_Actividad_FKIndex1` (`Pro_Curso_idPro_Curso`),
  ADD KEY `Pro_Actividad_FKIndex2` (`Pro_TipoActividad_id_Pro_TipoActividad`);

--
-- Indices de la tabla `Pro_Asignacion`
--
ALTER TABLE `Pro_Asignacion`
  ADD PRIMARY KEY (`id_Pro_Asignacion`);

--
-- Indices de la tabla `Pro_Aula`
--
ALTER TABLE `Pro_Aula`
  ADD PRIMARY KEY (`idPro_Aula`),
  ADD KEY `Pro_Aula_FKIndex1` (`Pro_Seccion_id_Pro_Seccion`);

--
-- Indices de la tabla `Pro_Carrera`
--
ALTER TABLE `Pro_Carrera`
  ADD PRIMARY KEY (`id_Pro_Carrera`);

--
-- Indices de la tabla `Pro_Ciclo`
--
ALTER TABLE `Pro_Ciclo`
  ADD PRIMARY KEY (`id_Pro_Ciclo`);

--
-- Indices de la tabla `Pro_Curso`
--
ALTER TABLE `Pro_Curso`
  ADD PRIMARY KEY (`idPro_Curso`),
  ADD KEY `Pro_Curso_FKIndex1` (`Pro_Malla_id_Pro_Malla`),
  ADD KEY `Pro_Curso_FKIndex2` (`Pro_Ciclo_id_Pro_Ciclo`),
  ADD KEY `Pro_Curso_FKIndex3` (`Pro_Aula_idPro_Aula`),
  ADD KEY `Pro_Curso_FKIndex4` (`Pro_UsuarioColegio_id_Pro_Usuarios`);

--
-- Indices de la tabla `Pro_Encargado`
--
ALTER TABLE `Pro_Encargado`
  ADD PRIMARY KEY (`id_Pro_Encargado`);

--
-- Indices de la tabla `Pro_grado`
--
ALTER TABLE `Pro_grado`
  ADD PRIMARY KEY (`id_Pro_grado`);

--
-- Indices de la tabla `Pro_InscripcionEstudiante`
--
ALTER TABLE `Pro_InscripcionEstudiante`
  ADD PRIMARY KEY (`id_Pro_InscripcionEstudiante`),
  ADD KEY `Pro_InscripcionEstudiante_FKIndex1` (`Pro_UsuarioColegio_id_Pro_Usuarios`),
  ADD KEY `Pro_InscripcionEstudiante_FKIndex2` (`Pro_Encargado_id_Pro_Encargado`),
  ADD KEY `Pro_InscripcionEstudiante_FKIndex3` (`Pro_Nivel_id_Pro_Nivel`),
  ADD KEY `Pro_InscripcionEstudiante_FKIndex4` (`Pro_grado_id_Pro_grado`),
  ADD KEY `Pro_InscripcionEstudiante_FKIndex5` (`Pro_Carrera_id_Pro_Carrera`),
  ADD KEY `Pro_InscripcionEstudiante_FKIndex6` (`Pro_Ciclo_id_Pro_Ciclo`),
  ADD KEY `Pro_InscripcionEstudiante_FKIndex7` (`Pro_Aula_idPro_Aula`);

--
-- Indices de la tabla `Pro_Malla`
--
ALTER TABLE `Pro_Malla`
  ADD PRIMARY KEY (`id_Pro_Malla`),
  ADD KEY `Pro_Curso_FKIndex1` (`Pro_Nivel_id_Pro_Nivel`),
  ADD KEY `Pro_Curso_FKIndex2` (`Pro_grado_id_Pro_grado`),
  ADD KEY `Pro_Curso_FKIndex3` (`Pro_Carrera_id_Pro_Carrera`);

--
-- Indices de la tabla `Pro_Nivel`
--
ALTER TABLE `Pro_Nivel`
  ADD PRIMARY KEY (`id_Pro_Nivel`);

--
-- Indices de la tabla `Pro_Pagos`
--
ALTER TABLE `Pro_Pagos`
  ADD PRIMARY KEY (`id_Pro_Pagos`),
  ADD KEY `Pro_Pagos_FKIndex1` (`Pro_TipoPago_id_Pro_TipoPago`),
  ADD KEY `Pro_Pagos_FKIndex2` (`Pro_InscripcionEstudiante_id_Pro_InscripcionEstudiante`),
  ADD KEY `Pro_Pagos_FKIndex3` (`Pro_Ciclo_id_Pro_Ciclo`);

--
-- Indices de la tabla `Pro_Puesto`
--
ALTER TABLE `Pro_Puesto`
  ADD PRIMARY KEY (`id_Pro_Puesto`);

--
-- Indices de la tabla `Pro_Seccion`
--
ALTER TABLE `Pro_Seccion`
  ADD PRIMARY KEY (`id_Pro_Seccion`);

--
-- Indices de la tabla `Pro_Tareas`
--
ALTER TABLE `Pro_Tareas`
  ADD PRIMARY KEY (`id_Pro_Tareas`);

--
-- Indices de la tabla `Pro_TipoActividad`
--
ALTER TABLE `Pro_TipoActividad`
  ADD PRIMARY KEY (`id_Pro_TipoActividad`);

--
-- Indices de la tabla `Pro_TipoPago`
--
ALTER TABLE `Pro_TipoPago`
  ADD PRIMARY KEY (`id_Pro_TipoPago`);

--
-- Indices de la tabla `Pro_UsuarioColegio`
--
ALTER TABLE `Pro_UsuarioColegio`
  ADD PRIMARY KEY (`id_Pro_Usuarios`),
  ADD KEY `Pro_UsuariosColegio_FKIndex1` (`Pro_Puesto_id_Pro_Puesto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Pro_Actividad`
--
ALTER TABLE `Pro_Actividad`
  MODIFY `id_Pro_Actividad` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `Pro_Asignacion`
--
ALTER TABLE `Pro_Asignacion`
  MODIFY `id_Pro_Asignacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `Pro_Aula`
--
ALTER TABLE `Pro_Aula`
  MODIFY `idPro_Aula` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Pro_Carrera`
--
ALTER TABLE `Pro_Carrera`
  MODIFY `id_Pro_Carrera` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `Pro_Ciclo`
--
ALTER TABLE `Pro_Ciclo`
  MODIFY `id_Pro_Ciclo` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `Pro_Curso`
--
ALTER TABLE `Pro_Curso`
  MODIFY `idPro_Curso` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Pro_Encargado`
--
ALTER TABLE `Pro_Encargado`
  MODIFY `id_Pro_Encargado` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `Pro_grado`
--
ALTER TABLE `Pro_grado`
  MODIFY `id_Pro_grado` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `Pro_InscripcionEstudiante`
--
ALTER TABLE `Pro_InscripcionEstudiante`
  MODIFY `id_Pro_InscripcionEstudiante` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `Pro_Malla`
--
ALTER TABLE `Pro_Malla`
  MODIFY `id_Pro_Malla` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `Pro_Nivel`
--
ALTER TABLE `Pro_Nivel`
  MODIFY `id_Pro_Nivel` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `Pro_Pagos`
--
ALTER TABLE `Pro_Pagos`
  MODIFY `id_Pro_Pagos` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Pro_Puesto`
--
ALTER TABLE `Pro_Puesto`
  MODIFY `id_Pro_Puesto` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `Pro_Seccion`
--
ALTER TABLE `Pro_Seccion`
  MODIFY `id_Pro_Seccion` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `Pro_Tareas`
--
ALTER TABLE `Pro_Tareas`
  MODIFY `id_Pro_Tareas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `Pro_TipoActividad`
--
ALTER TABLE `Pro_TipoActividad`
  MODIFY `id_Pro_TipoActividad` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Pro_TipoPago`
--
ALTER TABLE `Pro_TipoPago`
  MODIFY `id_Pro_TipoPago` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Pro_UsuarioColegio`
--
ALTER TABLE `Pro_UsuarioColegio`
  MODIFY `id_Pro_Usuarios` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
