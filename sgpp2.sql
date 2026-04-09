-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3307
-- Tiempo de generación: 09-04-2026 a las 06:28:00
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sgpp`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `ape_pat` varchar(50) NOT NULL,
  `ape_mat` varchar(50) NOT NULL,
  `matricula` varchar(20) NOT NULL,
  `correo` varchar(80) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `facultad` varchar(50) NOT NULL,
  `carrera` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id`, `nombre`, `ape_pat`, `ape_mat`, `matricula`, `correo`, `telefono`, `facultad`, `carrera`) VALUES
(3, 'jose', 'ortiz', 'bedola', '2405594', 'jose@gmail.com', '44356984', 'fie', 'compu');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caja`
--

CREATE TABLE `caja` (
  `ID_caja` int(11) NOT NULL,
  `ID_empresa` int(11) NOT NULL,
  `logo` mediumblob NOT NULL,
  `rfc` varchar(50) NOT NULL,
  `nombre_empre` varchar(60) NOT NULL,
  `direccion` varchar(60) NOT NULL,
  `no_personas` varchar(60) NOT NULL,
  `area_personas` varchar(60) NOT NULL,
  `facultad_ocupa` varchar(60) NOT NULL,
  `extra` varchar(60) NOT NULL,
  `desc_solicitud_ccg` varchar(60) NOT NULL,
  `fotos_ccg` mediumblob NOT NULL,
  `horario_ccg` varchar(60) NOT NULL,
  `desc_completa` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `ID` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `rfc` varchar(50) NOT NULL,
  `razon_social` varchar(50) NOT NULL,
  `acta_cons` varchar(50) NOT NULL,
  `sector` varchar(20) NOT NULL,
  `correo` varchar(80) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `ubicacion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `caja`
--
ALTER TABLE `caja`
  ADD PRIMARY KEY (`ID_caja`),
  ADD KEY `ID_empresa` (`ID_empresa`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `caja`
--
ALTER TABLE `caja`
  MODIFY `ID_caja` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `empresa`
--
ALTER TABLE `empresa`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `caja`
--
ALTER TABLE `caja`
  ADD CONSTRAINT `caja_ibfk_1` FOREIGN KEY (`ID_empresa`) REFERENCES `empresa` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
