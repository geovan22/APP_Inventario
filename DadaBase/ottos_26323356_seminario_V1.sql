-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: sql212.tonohost.com
-- Tiempo de generación: 18-09-2020 a las 13:54:16
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
  `Enlace` varchar(250) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
(1, 'Diversificado', '4to', 'Bachillerato en computación', '4to BACO', 1),
(2, 'Diversificado', '4to', 'Bachillerato en computación', 'salon 2', 1);

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
  `Carrera` varchar(250) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Pro_Carrera`
--

INSERT INTO `Pro_Carrera` (`id_Pro_Carrera`, `Carrera`) VALUES
(1, 'Bachillerato en computación'),
(2, 'Bachillerato en ciencias y letras'),
(3, '---------');

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
(1, 2020);

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
(1, 'Silvia', 'Lorena', 'Velsiz', 'de Cocenza', 'vn', NULL),
(2, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'sadf', 'asdf', 'asdf', 'asdf', 'asdf', NULL),
(4, 'sadf', 'asdf', 'asdf', 'asdf', 'asdf', NULL),
(5, 'asdf', 'adsf', 'adf', 'adf', 'adsf', NULL),
(6, '', '', '', '', '', NULL),
(7, '', '', '', '', '', NULL),
(8, '', '', '', '', '', NULL),
(9, 'Carlos', 'Fernandez', '414944858411', '448144984849', '9na av 8-9 zona 10 ', NULL);

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
(1, '1ro'),
(2, '2do'),
(3, '3ro'),
(4, '4to'),
(5, '5to'),
(6, '3ro'),
(7, '6to');

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
  `Pro_UsuarioColegio_id_Pro_Usuarios` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Pro_InscripcionEstudiante`
--

INSERT INTO `Pro_InscripcionEstudiante` (`id_Pro_InscripcionEstudiante`, `Pro_Aula_idPro_Aula`, `Pro_Ciclo_id_Pro_Ciclo`, `Pro_Carrera_id_Pro_Carrera`, `Pro_grado_id_Pro_grado`, `Pro_Nivel_id_Pro_Nivel`, `Pro_Encargado_id_Pro_Encargado`, `Pro_UsuarioColegio_id_Pro_Usuarios`) VALUES
(1, 0, 1, 1, 1, 1, 1, 4),
(2, 0, 1, 1, 1, 1, 6, 9),
(3, 0, 1, 1, 5, 4, 9, 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Pro_Malla`
--

CREATE TABLE `Pro_Malla` (
  `id_Pro_Malla` int(10) UNSIGNED NOT NULL,
  `Pro_Carrera_id_Pro_Carrera` int(10) UNSIGNED NOT NULL,
  `Pro_grado_id_Pro_grado` int(10) UNSIGNED NOT NULL,
  `Pro_Nivel_id_Pro_Nivel` int(10) UNSIGNED NOT NULL,
  `Curso` varchar(250) DEFAULT NULL,
  `Maestro` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Pro_Malla`
--

INSERT INTO `Pro_Malla` (`id_Pro_Malla`, `Pro_Carrera_id_Pro_Carrera`, `Pro_grado_id_Pro_grado`, `Pro_Nivel_id_Pro_Nivel`, `Curso`, `Maestro`) VALUES
(1, 1, 4, 3, 'Matemáticas I', 3),
(2, 1, 4, 3, 'Física I', 0),
(6, 1, 5, 3, 'Física I', 0),
(7, 1, 4, 3, 'Física Fundamental', 0),
(8, 1, 4, 3, 'Sociales', 0),
(9, 3, 3, 2, 'Matematicas', 3),
(10, 3, 3, 2, 'Ciencias naturales ', 0),
(11, 3, 3, 2, 'Ciencias Sociales', 0),
(12, 3, 3, 2, 'Inglés Intermedio ', 0),
(13, 3, 3, 2, 'Religion ', 0),
(14, 3, 3, 2, 'Artes plasticas', NULL);

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
(1, 'Primaria'),
(2, 'Básicos'),
(3, 'Diversificado');

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
  `Estado` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Pro_UsuarioColegio`
--

INSERT INTO `Pro_UsuarioColegio` (`id_Pro_Usuarios`, `Pro_Puesto_id_Pro_Puesto`, `Nombre1`, `Nombre2`, `Nombre3`, `Apellido1`, `Apellido2`, `FechaNac`, `Genero`, `DPI`, `Telefono`, `Direccion`, `Correo`, `Usuario`, `Pass`, `Estado`) VALUES
(1, 1, 'director', 'director', 'director', 'director', 'director', '2020-08-26', 'Masculino', '113456', '123', 'vc', 'dir@hotmail.com', 'director', '123456', 1),
(2, 4, 'Lourdes ', 'Noemy', '', 'Juarez', 'Reyes', NULL, 'Femenino', '123456', '123', 'vn', 'correo', 'ljuarezj', 'amyFCexm', 1),
(3, 2, 'Baudilia', 'Eugenia', '', 'Martimez', 'Hernandez', NULL, 'Femenino', '234567', '123', 'sm', 'correo', NULL, NULL, 1),
(4, 3, 'alexander', 'VAQUIAXS', '', 'Vaquiax', 'Arana', NULL, 'Femenino', '345678', '113', 'vn', 'correo', '20201114', '02cuTmeQ', 1),
(12, 3, 'Catherin', 'Alvares', '', 'Fernandez', 'Bran ', NULL, 'Femenino', '', '25084512', '9na av 8-9 zona 10 ', 'Calvarez@gmail.com', NULL, NULL, 1),
(6, 3, 'sheila', 'alejandra', 'garcia', 'silva', 'valladares', NULL, 'Femenino', '456548798798654654', '52879605', 'Villa Canales', 'lilian@hotmail.com', NULL, NULL, 1),
(7, 3, 'sheila', 'alejandra', 'garcia', 'silva', 'valladares', NULL, 'Femenino', '456548798798654654', '52879605', 'Villa Canales', 'lilian@hotmail.com', NULL, NULL, 1),
(8, 3, 'asdf', 'asdf', 'adf', 'adf', 'adf', NULL, 'Masculino', 'asdf', 'adf', 'asdf', 'adf', NULL, NULL, 1),
(13, 2, 'flor', 'de maria', '', 'almendarez', 'hernandez', NULL, 'Femenino', '46879454235', '123456', 'vn', 'flor@hotmail.com', NULL, NULL, 1);

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
  MODIFY `id_Pro_Actividad` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Pro_Asignacion`
--
ALTER TABLE `Pro_Asignacion`
  MODIFY `id_Pro_Asignacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `Pro_Aula`
--
ALTER TABLE `Pro_Aula`
  MODIFY `idPro_Aula` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Pro_Carrera`
--
ALTER TABLE `Pro_Carrera`
  MODIFY `id_Pro_Carrera` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `Pro_Ciclo`
--
ALTER TABLE `Pro_Ciclo`
  MODIFY `id_Pro_Ciclo` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `Pro_Curso`
--
ALTER TABLE `Pro_Curso`
  MODIFY `idPro_Curso` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Pro_Encargado`
--
ALTER TABLE `Pro_Encargado`
  MODIFY `id_Pro_Encargado` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `Pro_grado`
--
ALTER TABLE `Pro_grado`
  MODIFY `id_Pro_grado` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `Pro_InscripcionEstudiante`
--
ALTER TABLE `Pro_InscripcionEstudiante`
  MODIFY `id_Pro_InscripcionEstudiante` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `Pro_Malla`
--
ALTER TABLE `Pro_Malla`
  MODIFY `id_Pro_Malla` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `Pro_Nivel`
--
ALTER TABLE `Pro_Nivel`
  MODIFY `id_Pro_Nivel` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  MODIFY `id_Pro_Seccion` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id_Pro_Usuarios` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
