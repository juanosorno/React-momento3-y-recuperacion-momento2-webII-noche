-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-12-2020 a las 21:53:14
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dates`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `date`
--

CREATE TABLE `date` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `identification` int(20) NOT NULL,
  `date` varchar(50) NOT NULL,
  `city` varchar(20) NOT NULL,
  `neighborhood` varchar(20) NOT NULL,
  `cellphone` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `date`
--

INSERT INTO `date` (`id`, `name`, `lastname`, `identification`, `date`, `city`, `neighborhood`, `cellphone`) VALUES
(48, 'juan osorno', 'osorno', 1020444, '11/11/2020', 'Medellin', 'la cumbre', 1234567),
(51, 'pedro', 'osorno', 1020444, '11/11/2020', 'Medellin', 'la cumbre', 304244549),
(52, 'juan osorno', 'osorno', 1020444, '11/11/2020', 'Medellin', 'la cumbre', 304244),
(53, 'juan osorno', 'osorno', 1020444, '11/11/2020', 'Medellin', 'la cumbre', 2147483647),
(54, 'juan osorno', 'osorno', 1020444, '11/11/2020', 'Medellin', 'la cumbre', 2147483647),
(55, 'juan osorno', 'osorno', 1020444, '11/11/2020', 'Medellin', 'la cumbre', 304244549),
(56, 'juan osorno', 'osorno', 1020444, '11/11/2020', 'Medellin', 'la cumbre', 2147483647),
(57, 'juan osorno', 'osorno', 1020444, '', 'Medellin', 'la cumbre', 2147483647),
(58, 'juan osorno', 'osorno', 1020444, '11/11/2020', '', 'la cumbre', 2147483647),
(59, '', 'osorno', 1020444, '11/11/2020', 'Medellin', 'la cumbre', 2147483647),
(60, 'juan osorno', 'osorno', 1020444, '11/11/2020', 'Medellin', 'la cumbre', 2147483647);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `date`
--
ALTER TABLE `date`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `date`
--
ALTER TABLE `date`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
