-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-03-2019 a las 10:50:43
-- Versión del servidor: 10.1.30-MariaDB
-- Versión de PHP: 5.6.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `crudnba`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipo`
--

CREATE TABLE `equipo` (
  `CodEqui` int(11) NOT NULL,
  `NomEqui` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FunEqui` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `equipo`
--

INSERT INTO `equipo` (`CodEqui`, `NomEqui`, `FunEqui`) VALUES
(1, 'Los Angeles Lakers', 1960),
(2, 'Golden State Warriors', 1971),
(3, 'Boston Celtics', 1946),
(4, 'Toronto Raptors', 1995),
(5, 'Houston Rockets', 1967),
(6, 'Oklahoma City Thunder', 2008),
(7, 'Milwaukee Bucks', 1968),
(8, 'San Antonio Spurs', 1973),
(9, 'Philadelphia 76ers', 1963),
(10, 'New York Knicks', 1946),
(11, 'Chicago Bulls', 1966),
(12, 'Miami Heat', 1988),
(13, 'Cleveland Cavaliers', 1970),
(14, 'Denver Nuggets', 1974),
(15, 'Dallas Mavericks', 1980),
(16, 'Sacramento Kings', 1985),
(17, 'Los Angels Clippers', 1984),
(18, 'Utah Jazz', 1979),
(19, 'New Orleans Pelicans', 2013),
(20, 'Portland Trail Blazers', 1970);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jugadores`
--

CREATE TABLE `jugadores` (
  `CodJug` int(2) NOT NULL,
  `NomJug` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EdaJug` int(2) DEFAULT NULL,
  `PosJug` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AltJug` int(3) DEFAULT NULL,
  `PesJug` int(3) DEFAULT NULL,
  `CodEqui` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `jugadores`
--

INSERT INTO `jugadores` (`CodJug`, `NomJug`, `EdaJug`, `PosJug`, `AltJug`, `PesJug`, `CodEqui`) VALUES
(1, 'Lebron James', 34, 'Alero', 203, 113, 1),
(2, 'Kevin Durant', 30, 'Alero', 211, 109, 2),
(3, 'Stephen Curry', 30, 'Base', 191, 86, 2),
(4, 'James Harden', 29, 'Base', 196, 102, 5),
(5, 'Anthony Davis', 25, 'Pivot', 208, 115, 19),
(6, 'Giannis Antetokunmpo', 24, 'Pivot', 211, 110, 7),
(7, 'Russel Westbrook', 30, 'base', 190, 91, 6),
(8, 'Chris Paul', 33, 'Base', 183, 79, 5),
(9, 'Joel Embiid', 24, 'Pivot', 213, 113, 9),
(10, 'Paul George', 28, 'Escolta', 206, 100, 6),
(11, 'Kawhi Leonard', 27, 'Alero', 201, 104, 4),
(12, 'Draymond Green', 28, 'Pivot', 201, 104, 2),
(13, 'Rudy Gobert', 26, 'Pivot', 216, 105, 18),
(14, 'Damian Lillard', 28, 'Base', 191, 88, 20),
(15, 'Al Horford', 32, 'Alero', 208, 113, 3),
(16, 'Kyrie Irving', 26, 'Base', 191, 88, 3),
(17, 'Nikola Jokic', 24, 'Pivot', 213, 113, 14),
(18, 'prueba', 31, 'Alero', 200, 100, 4),
(19, 'Prueba2', 34, 'Alero', 200, 110, 5);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `equipo`
--
ALTER TABLE `equipo`
  ADD PRIMARY KEY (`CodEqui`);

--
-- Indices de la tabla `jugadores`
--
ALTER TABLE `jugadores`
  ADD PRIMARY KEY (`CodJug`),
  ADD KEY `FK_CodEqui` (`CodEqui`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `equipo`
--
ALTER TABLE `equipo`
  MODIFY `CodEqui` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `jugadores`
--
ALTER TABLE `jugadores`
  ADD CONSTRAINT `FK_CodEqui` FOREIGN KEY (`CodEqui`) REFERENCES `equipo` (`CodEqui`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
