-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-03-2023 a las 18:54:17
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `easy_interiors`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `decoraciones`
--

CREATE TABLE `decoraciones` (
  `id` int(11) NOT NULL,
  `Plantas` varchar(200) DEFAULT NULL,
  `Cuadros` varchar(200) DEFAULT NULL,
  `Espejos` varchar(200) DEFAULT NULL,
  `Lamparas` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `decoraciones`
--

INSERT INTO `decoraciones` (`id`, `Plantas`, `Cuadros`, `Espejos`, `Lamparas`) VALUES
(1, 'Nardo', 'Granja', 'Plano', 'De techo'),
(2, 'Agapanto', 'Fotografias', 'Curvo', 'Empotrada'),
(3, 'Petunias', 'Selva', 'Redondo', 'Moderna'),
(4, 'Buganvilla', 'Bosques', 'Grande', 'Minimalista'),
(5, 'Glicinia', 'Desiertos', 'Ventanal', 'Vintage'),
(6, 'Romero', 'Cielo', 'Corazon', 'Industrial'),
(7, 'Culantrillo', 'Mar', 'Estrellas', 'Nordica'),
(8, 'Albahaca', 'Arboles', 'Medianos', 'Diseño'),
(9, 'Aloe vera', 'Flores', 'Pequeños', 'De pie'),
(10, 'Boca de dragón', 'Retratos', 'Mini', 'Colgante'),
(11, 'Anturio', 'Moda', 'Convexo', 'De pared'),
(12, 'Areca', 'Moderno', 'Iluminado', 'De mesa'),
(13, 'Aspidistra', 'Vintage', 'Marco', 'Fluoresente'),
(14, 'Azalea', 'Paises', 'Ovalado', 'Led'),
(15, 'Begonia', 'Famosos', 'Correa', 'Incandecente'),
(16, 'Calatea', 'Colores', 'Cuadrado', 'Solares'),
(17, 'Caléndula', 'Mosaicos', 'Rectangular', 'Tela'),
(18, 'Camelia', 'Acuarela', 'Muchos', 'Vidrio'),
(19, 'Campanillas', 'Peliculas', 'Pentagono', 'Plastico'),
(20, 'Clavel', 'Minimalista', 'Contraventana', 'Lectura');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habitaciones`
--

CREATE TABLE `habitaciones` (
  `id` int(11) NOT NULL,
  `baño` varchar(200) DEFAULT NULL,
  `recamaraPrincipal` varchar(200) DEFAULT NULL,
  `recamaraHuespedes` varchar(200) DEFAULT NULL,
  `Sala` varchar(200) DEFAULT NULL,
  `Comedor` varchar(200) DEFAULT NULL,
  `Cocina` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `habitaciones`
--

INSERT INTO `habitaciones` (`id`, `baño`, `recamaraPrincipal`, `recamaraHuespedes`, `Sala`, `Comedor`, `Cocina`) VALUES
(1, 'Grande', 'Pequeña', 'Grande', 'Pequeña', 'Grande', 'Mediano'),
(2, 'pequeño', 'Mediana', 'Grande', 'Mediana', 'Grande', 'Pequeño'),
(3, 'Grande', 'Pequeña', 'Mediana', 'Grande', 'Pequeña', 'Grande'),
(4, 'Grande', 'Grande', 'Grande', 'Mediana', 'Grande', 'Mediano'),
(5, 'Pequeño', 'Pequeña', 'Mediana', 'Mediana', 'Grande', 'Mediano'),
(6, 'Mediana', 'Pequeña', 'Grande', 'Grande', 'Pequeño', 'Mediano'),
(7, 'Grande', 'Mediana', 'Mediana', 'Grande', 'Pequeño', 'Mediano'),
(8, 'Pequeño', 'Mediana', 'Mediana', 'Pequeña', 'Grande', 'Grande'),
(9, 'Mediano', 'Pequeña', 'Pequeña', 'Pequeña', 'Grande', 'Pequeña'),
(10, 'Grande', 'Mediana', 'Mediana', 'Pequeña', 'Grande', 'Mediano'),
(11, 'Grande', 'Pequeña', 'Grande', 'Pequeña', 'Grande', 'Mediano'),
(12, 'Pequeña', 'Mediana', 'Grande', 'Pequeña', 'Grande', 'Mediano'),
(13, 'Grande', 'Pequeña', 'Grande', 'Pequeña', 'Grande', 'Mediano'),
(14, 'Grande', 'Pequeña', 'Grande', 'Pequeña', 'Grande', 'Mediano'),
(15, 'Mediano', 'Grande', 'Grande', 'Pequeña', 'Grande', 'Grande'),
(16, 'Grande', 'GRande', 'Pequeña', 'Pequeña', 'Mediano', 'Mediano'),
(17, 'Pequeño', 'Pequeña', 'Grande', 'Pequeña', 'Grande', 'Mediano'),
(18, 'Mediano', 'Pequeña', 'Grande', 'Pequeña', 'Mediano', 'Mediano'),
(19, 'Pequeña', 'Pequeña', 'Mediana', 'Grande', 'Grande', 'Mediano'),
(20, 'Mediano', 'Mediana', 'Grande', 'Grande', 'Grande', 'Grande');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `muebles`
--

CREATE TABLE `muebles` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(200) DEFAULT NULL,
  `Color` varchar(200) DEFAULT NULL,
  `Tamaño` varchar(200) DEFAULT NULL,
  `Material` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `muebles`
--

INSERT INTO `muebles` (`id`, `Nombre`, `Color`, `Tamaño`, `Material`) VALUES
(1, 'Sillon', 'Gris', 'Mediano', 'Madera'),
(2, 'Mesa', 'cafe', 'Grande', 'Madera de pino'),
(3, 'Tocador', 'Blanco', 'Chico', 'Madera industrializada'),
(4, 'Escritorio', 'Gris', 'Mediano', 'Madera industrializada'),
(5, 'Cama', 'Café', 'Grande', 'Madera'),
(6, 'Estante', 'Blanco', 'Mediano', 'Metal'),
(7, 'Baúl', 'Rosa', 'Mediano', 'Madera de pino'),
(8, 'Taburete', 'Gris', 'Chico', 'Madera de pino'),
(9, 'Sofá cama', 'Blanco y Negro', 'Mediano', 'Madera de pino'),
(10, 'Librero', 'Negro', 'Mediano', 'Madera de pino'),
(11, 'Mesa de centro', 'Café', 'Chico', 'Cristal'),
(12, 'Banco', 'Rojo', 'Chico', 'Madera de pino'),
(13, 'Silla mesedora', 'Azul', 'Mediano', 'Plastico'),
(14, 'Silla para escritorio', 'Negra', 'Chica', 'Piel'),
(15, 'Estanteria', 'Blanco', 'Chico', 'Metal'),
(16, 'Armario', 'Gris', 'Grande', 'Madera'),
(17, 'Zapatero', 'Negro', 'Mediano', 'Madera'),
(18, 'Espejo', 'Blanco', 'Mediano', 'Acero'),
(19, 'Comoda', 'Gris', 'Mediano', 'Madera'),
(20, 'Mesa', 'cafe', 'grande', 'madera');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `apellido` varchar(255) DEFAULT NULL,
  `edad` int(11) NOT NULL,
  `colores Favorito` varchar(255) DEFAULT NULL,
  `presupuesto` double DEFAULT NULL,
  `acompañantes` int(11) DEFAULT NULL,
  `mascotas` int(11) DEFAULT NULL,
  `hijos` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellido`, `edad`, `colores Favorito`, `presupuesto`, `acompañantes`, `mascotas`, `hijos`) VALUES
(5, 'Emiliano', 'Godinez', 18, 'Rojo', 10000, 0, 2, 0),
(6, 'Abraham', 'Garcia', 17, 'Azul', 80000, 2, 1, 0),
(7, 'Mauricio', 'Cardenas', 19, 'Amarillo', 100000, 1, 0, 0),
(8, 'Karen', 'Rivera', 17, 'Blanco', 50000, 1, 0, 0),
(9, 'Fernanda', 'Contreras', 17, 'Negro', 40000, 0, 2, 0),
(10, 'Mia', 'Gasperin', 17, 'Azul', 70000, 0, 0, 0),
(11, 'Evelyn', 'Salinas', 17, 'Verde', 90000, 1, 1, 0),
(12, 'Erick', 'Trejo', 18, 'Amarillo', 50000, 0, 1, 0),
(13, 'Edgar', 'Rosales', 28, 'Rosa', 10000, 0, 0, 0),
(14, 'Felix', 'Gutierrez', 37, 'Rojo', 80000, 0, 0, 0),
(15, 'Fernando', 'Hernandez', 17, 'Morado', 40000, 0, 1, 0),
(16, 'Angel', 'Martinez', 22, 'Blanco', 60000, 1, 0, 0),
(17, 'Maximiliano', 'Vilchis', 17, 'Verde', 200000, 3, 0, 0),
(18, 'Sara', 'Gutierrez', 25, 'Negro', 20000, 0, 5, 0),
(19, 'Maria', 'Arriaga', 39, 'Azul', 10000, 2, 2, 2),
(20, 'Carol', 'Madrid', 17, 'Morado', 5000, 2, 2, 0),
(21, 'Pablo', 'Perez', 42, 'Amarillo', 40000, 0, 0, 2),
(22, 'Ileana', 'Arriaga', 41, 'Negro', 50000, 0, 2, 0),
(23, 'Arturo', 'Martinez', 20, 'Rojo', 10000, 0, 1, 0),
(24, 'Martha', 'Arriaga', 52, 'Morado', 80000, 2, 0, 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `decoraciones`
--
ALTER TABLE `decoraciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `habitaciones`
--
ALTER TABLE `habitaciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `muebles`
--
ALTER TABLE `muebles`
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
-- AUTO_INCREMENT de la tabla `decoraciones`
--
ALTER TABLE `decoraciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `habitaciones`
--
ALTER TABLE `habitaciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `muebles`
--
ALTER TABLE `muebles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
