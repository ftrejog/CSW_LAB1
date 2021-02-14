-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-02-2021 a las 10:09:57
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `micros`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `Marca` varchar(30) NOT NULL,
  `Modelo` varchar(30) NOT NULL,
  `Frec_Max_MHZ` int(11) NOT NULL,
  `Num_Pines` int(11) NOT NULL,
  `Ram` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `Marca`, `Modelo`, `Frec_Max_MHZ`, `Num_Pines`, `Ram`) VALUES
(28, 'Microchip', 'PIC16F84', 20, 18, 68),
(29, 'Microchip', 'PIC16F628', 20, 18, 64),
(30, 'Microchip', 'PIC16F883', 20, 28, 256),
(31, 'Microchip', 'PIC16F886', 20, 28, 368),
(32, 'Microchip', 'PIC16F887', 20, 40, 368),
(33, 'Microchip', 'PIC18F2520', 40, 28, 1500),
(34, 'Microchip', 'PIC18F4520', 40, 40, 1500),
(35, 'Microchip', 'PIC18F4550', 48, 40, 2000),
(38, 'Atmel', 'ATmega32', 16, 44, 2048),
(39, 'Atmel', 'ATmega16', 16, 44, 1024),
(40, 'Atmel', 'ATmega64', 16, 64, 6400),
(41, 'Atmel', 'ATmega6450A', 20, 100, 6400),
(42, 'Atmel', 'ATMEGA4808', 20, 32, 6400),
(43, 'Atmel', 'ATMEGA3208', 20, 32, 4096),
(44, 'Atmel', 'ATmega328', 20, 32, 2048),
(45, 'Atmel', 'ATMEGA1608', 20, 32, 2048);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `usuario` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `admin` tinyint(1) NOT NULL,
  `id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`usuario`, `password`, `admin`, `id`) VALUES
('admin', 'admincsw', 1, 1),
('guest', 'guestcsw', 0, 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
