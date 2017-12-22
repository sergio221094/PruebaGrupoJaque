-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-12-2017 a las 21:05:46
-- Versión del servidor: 10.1.29-MariaDB
-- Versión de PHP: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `practicagrupojaque`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `admin_username` varchar(300) NOT NULL,
  `admin_pass` varchar(300) NOT NULL,
  `tipodecuenta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `admin`
--

INSERT INTO `admin` (`id_admin`, `admin_username`, `admin_pass`, `tipodecuenta`) VALUES
(1, 'admin', '123', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `arma`
--

CREATE TABLE `arma` (
  `id_arma` int(11) NOT NULL,
  `nombrearma` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `arma`
--

INSERT INTO `arma` (`id_arma`, `nombrearma`) VALUES
(1, 'Escopeta'),
(2, 'Pistola');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuarto`
--

CREATE TABLE `cuarto` (
  `id_cuarto` int(11) NOT NULL,
  `nombrecuarto` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cuarto`
--

INSERT INTO `cuarto` (`id_cuarto`, `nombrecuarto`) VALUES
(3, 'SALA 1'),
(4, 'SALA 2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipo`
--

CREATE TABLE `equipo` (
  `id_equipo` int(11) NOT NULL,
  `nombreequipo` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `equipo`
--

INSERT INTO `equipo` (`id_equipo`, `nombreequipo`) VALUES
(1, 'ASESINOS'),
(2, 'ESTRATEGAS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `meza`
--

CREATE TABLE `meza` (
  `id_meza` int(11) NOT NULL,
  `nombremeza` varchar(300) NOT NULL,
  `id_cuarto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `meza`
--

INSERT INTO `meza` (`id_meza`, `nombremeza`, `id_cuarto`) VALUES
(3, 'MESA 1', 3),
(4, 'MESA 2', 3),
(5, 'MESA 1', 4),
(6, 'MESA 2', 4),
(7, 'MESA 3', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `username` varchar(300) NOT NULL,
  `nombre` varchar(300) NOT NULL,
  `correo` varchar(300) NOT NULL,
  `pass` varchar(300) DEFAULT NULL,
  `telefono` varchar(300) NOT NULL,
  `arma` varchar(300) DEFAULT NULL,
  `equipo` varchar(300) DEFAULT NULL,
  `meza` varchar(300) DEFAULT NULL,
  `cuarto` varchar(300) DEFAULT NULL,
  `tipodecuenta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `username`, `nombre`, `correo`, `pass`, `telefono`, `arma`, `equipo`, `meza`, `cuarto`, `tipodecuenta`) VALUES
(1, 'juan25', 'Juan Carlos', 'juan@gmail.com', '123', '1234567890', 'Escopeta', 'ASESINOS', 'MESA 2', 'SALA 1', 1),
(2, 'maria123', 'Maria', 'maria@gmail.com', '321', '3142345678', 'Pistola', 'ASESINOS', 'MEZA 2', 'SALA 1', 1),
(11, 'pepito123', 'pepe', 'pepe@gmail.com', '123', '123', NULL, NULL, NULL, NULL, 1),
(12, 'sofi123', 'Sofia', 'sofi@gmail.com', '123', '123', NULL, NULL, NULL, NULL, 1),
(13, 'admin', 'admin', 'admin@admin.com', '123', '123', NULL, NULL, NULL, NULL, 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indices de la tabla `arma`
--
ALTER TABLE `arma`
  ADD PRIMARY KEY (`id_arma`);

--
-- Indices de la tabla `cuarto`
--
ALTER TABLE `cuarto`
  ADD PRIMARY KEY (`id_cuarto`);

--
-- Indices de la tabla `equipo`
--
ALTER TABLE `equipo`
  ADD PRIMARY KEY (`id_equipo`);

--
-- Indices de la tabla `meza`
--
ALTER TABLE `meza`
  ADD PRIMARY KEY (`id_meza`),
  ADD KEY `fkmeza` (`id_cuarto`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `arma`
--
ALTER TABLE `arma`
  MODIFY `id_arma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `cuarto`
--
ALTER TABLE `cuarto`
  MODIFY `id_cuarto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `equipo`
--
ALTER TABLE `equipo`
  MODIFY `id_equipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `meza`
--
ALTER TABLE `meza`
  MODIFY `id_meza` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `meza`
--
ALTER TABLE `meza`
  ADD CONSTRAINT `fkmeza` FOREIGN KEY (`id_cuarto`) REFERENCES `cuarto` (`id_cuarto`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
