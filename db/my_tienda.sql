-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-06-2023 a las 16:07:02
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `my_tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `descuentos`
--

CREATE TABLE `descuentos` (
  `id_Productos` int(255) NOT NULL,
  `Nombre_Producto` varchar(50) NOT NULL,
  `Tipo_Producto` varchar(50) NOT NULL,
  `img_productos` varchar(9999) NOT NULL,
  `Descripcion_Producto` varchar(200) NOT NULL,
  `Precio_Descuento` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `descuentos`
--

INSERT INTO `descuentos` (`id_Productos`, `Nombre_Producto`, `Tipo_Producto`, `img_productos`, `Descripcion_Producto`, `Precio_Descuento`) VALUES
(10, 'leche ', 'Comestibles', 'imgs/leche entera.jpg', 'leche entera ', '4.500'),
(11, 'Leche Deslatosada', 'Comestibles', 'imgs/leche deslatosada.jpg', 'leche 100% deslatosada', '5.000'),
(12, 'Sepillo Ropa', 'Aseo', 'imgs/sepillo ropa.jpg', 'con las  serdas mas gruesas', '7.000'),
(13, 'Sepillo Ropa', 'Aseo', 'imgs/sepillo ropa.jpg', 'con las  serdas mas gruesas', '7.000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_Productos` int(255) NOT NULL,
  `Nombre_Producto` varchar(50) NOT NULL,
  `Tipo_Producto` varchar(50) NOT NULL,
  `img_productos` varchar(9999) NOT NULL,
  `Descripcion_Producto` varchar(200) NOT NULL,
  `Precio_producto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_Productos`, `Nombre_Producto`, `Tipo_Producto`, `img_productos`, `Descripcion_Producto`, `Precio_producto`) VALUES
(38, 'pan', 'Comestibles', 'imgs/pan fanses.jpg', 'pan franses ', '2.500'),
(39, 'pan', 'Comestibles', 'imgs/pan fanses.jpg', 'pan franses', '2.500');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `regis_tienda`
--

CREATE TABLE `regis_tienda` (
  `id_Tienda` int(255) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Correo` varchar(50) NOT NULL,
  `Telefono` int(20) NOT NULL,
  `Descripcion` varchar(999) NOT NULL,
  `Contrasena` varchar(9999) NOT NULL,
  `rol` int(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `regis_tienda`
--

INSERT INTO `regis_tienda` (`id_Tienda`, `Nombre`, `Correo`, `Telefono`, `Descripcion`, `Contrasena`, `rol`) VALUES
(60, 'don oscarq', 'olealbossa@gmail.com', 323456789, 'pannaderia', 'Z2VuZXNpcy4z', 1),
(61, 'd ochoaq', 'dochoa@gmail.com', 456789, 'hjklñsqw', 'Z2VuZXNpcy4z', 2),
(62, '', '', 0, '', '', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `regis_usuarios`
--

CREATE TABLE `regis_usuarios` (
  `id_Usuario` int(255) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Apellido` varchar(50) NOT NULL,
  `Correo` varchar(50) NOT NULL,
  `Telefono` int(13) NOT NULL,
  `Contrasena` varchar(9999) NOT NULL,
  `rol` int(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `regis_usuarios`
--

INSERT INTO `regis_usuarios` (`id_Usuario`, `Nombre`, `Apellido`, `Correo`, `Telefono`, `Contrasena`, `rol`) VALUES
(35, 'osc', 'leal b', 'oscalealbo@gmail.com', 432121, 'Z2VuZXNpcy4z', 2),
(36, 'dayana', 'ochoa p ', 'dochoa@gmail.com', 34567867, 'Z2VuZXNpcy4x', 1),
(37, '', '', '', 0, '', NULL),
(38, 'oscar', 'leal bossa', 'olealbossa@gmail.com', 345678, 'Z2VuZXNpcy4z', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `descuentos`
--
ALTER TABLE `descuentos`
  ADD PRIMARY KEY (`id_Productos`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_Productos`);

--
-- Indices de la tabla `regis_tienda`
--
ALTER TABLE `regis_tienda`
  ADD PRIMARY KEY (`id_Tienda`);

--
-- Indices de la tabla `regis_usuarios`
--
ALTER TABLE `regis_usuarios`
  ADD PRIMARY KEY (`id_Usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `descuentos`
--
ALTER TABLE `descuentos`
  MODIFY `id_Productos` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_Productos` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de la tabla `regis_tienda`
--
ALTER TABLE `regis_tienda`
  MODIFY `id_Tienda` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT de la tabla `regis_usuarios`
--
ALTER TABLE `regis_usuarios`
  MODIFY `id_Usuario` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
