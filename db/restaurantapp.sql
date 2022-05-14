-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 14-05-2022 a las 04:47:55
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `restaurantapp`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` int(5) NOT NULL,
  `name` varchar(100) NOT NULL,
  `color` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `name`, `color`) VALUES
(1, 'entradas', '#DE1F59'),
(2, 'bebidas', '#DE1FAA'),
(3, 'tragos', '#B01FDE'),
(4, 'almuerzos', '#681FDE'),
(5, 'criollo', '#1FAADE');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `expenses`
--

CREATE TABLE `expenses` (
  `id` int(20) NOT NULL,
  `title` varchar(150) NOT NULL,
  `category_id` int(5) NOT NULL,
  `amount` float(10,2) NOT NULL,
  `date` date NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `expenses`
--

INSERT INTO `expenses` (`id`, `title`, `category_id`, `amount`, `date`, `id_user`) VALUES
(1, 'whisky en las rocas', 3, 16.00, '2020-03-21', 5),
(2, 'agua mineral', 2, 60.00, '2020-03-21', 5),
(4, 'Parihuela', 4, 1200.00, '2020-03-22', 5),
(5, 'Secho de chavelo', 4, 4600.00, '2020-03-26', 5),
(6, 'Lomo saltado', 5, 20000.00, '2020-01-25', 5),
(7, 'Papa huancaina', 1, 140.00, '2020-03-27', 5),
(10, 'Chifle', 1, 2323.00, '2020-04-03', 5),
(11, 'Chancho', 4, 232.00, '2020-04-03', 5),
(12, 'sangria', 3, 18.00, '2020-04-03', 5),
(13, 'Aguadito de mero', 5, 23.00, '2020-04-03', 5),
(14, 'Cabrito', 5, 23.00, '2020-04-03', 5),
(19, 'Arroz con mariscos', 4, 300.00, '2020-01-01', 5),
(20, 'Papa rellena', 1, 1100.00, '2020-04-04', 5),
(21, 'Piña del bosque', 3, 200.00, '2020-04-09', 6),
(23, 'Cerveza cristal', 2, 410.00, '2020-06-06', 5),
(24, 'Patacones', 1, 300.00, '2020-06-04', 5),
(25, 'Pisco Sour', 2, 200.00, '2020-07-12', 5),
(26, 'Prueba', 2, 200.00, '2022-05-13', 8),
(27, 'prueba 2', 1, 500.00, '2022-05-13', 8),
(28, 'Volcka', 3, 1000.00, '2021-05-14', 8),
(29, 'Prueba', 2, 100.00, '2021-05-15', 9),
(30, 'Prueba 2', 2, 510.00, '2021-08-13', 9),
(31, 'prueba', 1, 800.00, '2022-02-15', 9),
(32, 'Arroz chaufa', 4, 1000.00, '2022-05-13', 9),
(34, 'Chicamorada', 2, 50.00, '2022-05-13', 12),
(35, 'Ron', 3, 20.00, '2022-05-13', 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('user','admin') NOT NULL,
  `budget` float(10,2) NOT NULL,
  `photo` varchar(300) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`, `budget`, `photo`, `name`) VALUES
(5, 'marcos', '$2y$10$0aOmd1LTFHtBLCEtDrJgy.xxs7FArnOlzHXLrviwP85LWS.XbxsNO', 'user', 100.00, 'f736bf06a1f6e18ecdc4943f2ad6cf9d.png', 'Marcos Rivas'),
(6, 'lena', '$2y$10$C/MX.IRvzrNuMyo4pk5uU.bCD20hSWChoCM1bp4n3kEzO2TYamSI.', 'user', 16000.00, '', 'Lenis'),
(7, 'omar', '$2y$10$2YzZ9yzk2rSLbcbfBGkcIuWZ1HzjcNT8lTcgeidTiYbq2yzcNVxuq', 'user', 20000.00, '', 'El Pozos'),
(8, 'giron', '$2y$10$RtYUepp0Yj76bpXXoLJ1yuTJwRacYfF5vt6szq85nql5VkRTbhyLy', 'user', 9000.00, '59c2d7f22227abe14c55fbf43b4c6ac1.png', 'Jose Estuwar'),
(9, 'ramirez', '$2y$10$2thulHLHfoJ0W5CGh9KGHefdq62GOYzKA.iGuEu.v7yHVbkYaN1LW', 'user', 5000.00, 'c7e93a0e6e0cb6de242e1b7c71b6ccc1.png', 'Francisco De Dios'),
(12, 'Babyliss', '$2y$10$FhseeFToWKUmbub7MdR2ce3jHqVNcsGZzL.qkXZ2wKbApyAvWOca6', 'user', 10000.00, 'f082c2d2055319ba998e5b82c5c4636d.png', 'Abi');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculos`
--

CREATE TABLE `vehiculos` (
  `id` int(11) NOT NULL,
  `placa` varchar(50) NOT NULL,
  `marca` varchar(255) NOT NULL,
  `modelo` varchar(25) NOT NULL,
  `anio` int(4) NOT NULL,
  `color` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `vehiculos`
--

INSERT INTO `vehiculos` (`id`, `placa`, `marca`, `modelo`, `anio`, `color`) VALUES
(1, 'MVC1234', 'VOLVO', 'G45', 2015, 'NEGRO'),
(2, 'ASS1535', 'VOLVO', 'GFGF5', 2016, 'BLANCO'),
(3, 'ASDAD', 'VOLVO', 'G45', 2017, 'GRIS'),
(4, 'TRD5', 'VOLVO', 'GFGF5', 2018, 'VERDE'),
(8, 'ABDC1245', 'Alfa romeo', 'MiTo', 2015, 'NEGRO');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user_expense` (`id_user`),
  ADD KEY `id_category_expense` (`category_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `placa` (`placa`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `expenses`
--
ALTER TABLE `expenses`
  ADD CONSTRAINT `id_category_expense` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `id_user_expense` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
