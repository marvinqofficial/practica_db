-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-05-2020 a las 05:09:35
-- Versión del servidor: 10.3.16-MariaDB
-- Versión de PHP: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `marlindo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificacion`
--

CREATE TABLE `calificacion` (
  `id` int(11) NOT NULL,
  `satisfecho` enum('alto','medio','bajo') NOT NULL,
  `platillo` enum('pezcado','ceviche','camarones') NOT NULL,
  `estrellas` enum('1','2','3','4','5') NOT NULL,
  `sexo` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `calificacion`
--

INSERT INTO `calificacion` (`id`, `satisfecho`, `platillo`, `estrellas`, `sexo`) VALUES
(1, 'alto', 'ceviche', '3', 'M'),
(2, 'alto', 'ceviche', '3', 'F'),
(3, 'alto', 'pezcado', '', ''),
(4, 'alto', 'ceviche', '3', 'M'),
(5, 'alto', 'ceviche', '3', 'M'),
(6, 'alto', 'ceviche', '2', 'F'),
(7, 'medio', 'pezcado', '2', 'M'),
(8, 'alto', 'ceviche', '3', 'F'),
(9, 'medio', 'camarones', '4', 'M'),
(10, 'medio', 'camarones', '3', 'F');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cine`
--

CREATE TABLE `cine` (
  `id` int(11) NOT NULL,
  `opinion` enum('mala','regular','buena') NOT NULL,
  `sexo` enum('M','F') NOT NULL,
  `edad` int(11) NOT NULL,
  `tipo_inv` enum('invitado','prensa') NOT NULL,
  `butaca` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cine`
--

INSERT INTO `cine` (`id`, `opinion`, `sexo`, `edad`, `tipo_inv`, `butaca`) VALUES
(1, 'mala', 'M', 23, 'invitado', 1),
(2, 'buena', 'F', 25, 'invitado', 2),
(3, 'mala', 'F', 50, 'prensa', 3),
(4, 'mala', 'M', 22, 'invitado', 4),
(5, 'buena', 'F', 27, 'invitado', 5),
(6, 'regular', 'F', 50, 'invitado', 6),
(7, 'mala', 'M', 52, 'invitado', 7),
(8, 'regular', 'F', 80, 'prensa', 7),
(9, 'mala', 'F', 30, 'invitado', 6),
(10, 'regular', 'F', 32, 'prensa', 8),
(11, 'mala', 'F', 21, 'invitado', 8),
(12, 'mala', 'F', 23, 'invitado', 9),
(13, 'buena', 'F', 16, 'invitado', 9),
(14, 'mala', 'F', 25, 'prensa', 10),
(15, 'buena', 'M', 23, 'invitado', 11),
(16, 'mala', 'M', 41, 'prensa', 12);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `calificacion`
--
ALTER TABLE `calificacion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cine`
--
ALTER TABLE `cine`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `calificacion`
--
ALTER TABLE `calificacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `cine`
--
ALTER TABLE `cine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
