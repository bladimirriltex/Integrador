-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-07-2020 a las 10:57:05
-- Versión del servidor: 10.4.13-MariaDB
-- Versión de PHP: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `restaurante`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carta`
--

CREATE TABLE `carta` (
  `id_carta` int(50) NOT NULL,
  `fecha_carta` date NOT NULL,
  `entrada1` int(11) NOT NULL,
  `entrada2` int(11) NOT NULL,
  `entrada3` int(11) NOT NULL,
  `segundo1` int(11) NOT NULL,
  `segundo2` int(11) NOT NULL,
  `segundo3` int(11) NOT NULL,
  `extra1` int(11) NOT NULL,
  `extra2` int(11) NOT NULL,
  `extra3` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(50) NOT NULL,
  `nombre_cliente` varchar(100) NOT NULL,
  `apellidos_cliente` varchar(100) NOT NULL,
  `dni_cliente` varchar(8) NOT NULL,
  `celular_cliente` varchar(15) NOT NULL,
  `direccion_cliente` varchar(200) NOT NULL,
  `correo_cliente` varchar(50) NOT NULL,
  `password_cliente` varchar(100) NOT NULL,
  `id_distrito` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `nombre_cliente`, `apellidos_cliente`, `dni_cliente`, `celular_cliente`, `direccion_cliente`, `correo_cliente`, `password_cliente`, `id_distrito`) VALUES
(1, 'baiabaia', 'montemayor', '71764584', '941325654', 'Calle siempre viva casi cerca por la casa de daol :v', 'baiabaia@gmail.com', 'baiabaia1998', 16),
(2, 'karlo', 'mollo', '72564865', '941352010', 'cercado', 'karlo@gmail.com', 'karlo', 4),
(10, 'Bladimir', 'Mollo', '111', '941304708', 'Sector IX, Arequipa', 'bladimirriltex@gmail.com', '123', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comprobante`
--

CREATE TABLE `comprobante` (
  `id_comprobante` int(50) NOT NULL,
  `ruc` varchar(50) DEFAULT NULL,
  `igv` float NOT NULL,
  `sub_total` float NOT NULL,
  `id_pedido` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `comprobante`
--

INSERT INTO `comprobante` (`id_comprobante`, `ruc`, `igv`, `sub_total`, `id_pedido`) VALUES
(1, '21234561231', 18, 100, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_pedido`
--

CREATE TABLE `detalle_pedido` (
  `id_detalle` int(50) NOT NULL,
  `id_plato` int(50) NOT NULL,
  `cantidad_plato` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `detalle_pedido`
--

INSERT INTO `detalle_pedido` (`id_detalle`, `id_plato`, `cantidad_plato`) VALUES
(1, 1, 2),
(1, 2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `distrito`
--

CREATE TABLE `distrito` (
  `id_distrito` int(20) NOT NULL,
  `nombre_distrito` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `distrito`
--

INSERT INTO `distrito` (`id_distrito`, `nombre_distrito`) VALUES
(1, 'Arequipa'),
(2, 'Alto Selva Alegre'),
(3, 'Cayma'),
(4, 'Cerro Colorado'),
(5, 'Characato'),
(6, 'Chiguata'),
(7, 'Jacobo Hunter'),
(8, 'José Bustamante'),
(9, 'Mariano Melgar'),
(10, 'Miraflores'),
(11, 'Mollebaya'),
(12, 'Paucarpata'),
(13, 'Quequeña'),
(14, 'Sabandía'),
(15, 'Sachaca'),
(16, 'Socabaya'),
(17, 'Tiabaya'),
(18, 'Uchumayo'),
(19, 'Yanahuara'),
(20, 'Yarabamba'),
(21, 'Yura');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `id_empleado` int(50) NOT NULL,
  `nombre_empleado` varchar(100) NOT NULL,
  `apellidos_empleado` varchar(100) NOT NULL,
  `dni_empleado` varchar(8) NOT NULL,
  `celular_empleado` varchar(15) NOT NULL,
  `direccion_empleado` varchar(200) NOT NULL,
  `correo_empleado` varchar(50) NOT NULL,
  `password_empleado` varchar(100) NOT NULL,
  `ubicacion_empelado` varchar(200) DEFAULT NULL,
  `estado_empleado` varchar(50) NOT NULL,
  `id_distrito` int(50) NOT NULL,
  `id_rol` int(50) NOT NULL,
  `id_vehiculo` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`id_empleado`, `nombre_empleado`, `apellidos_empleado`, `dni_empleado`, `celular_empleado`, `direccion_empleado`, `correo_empleado`, `password_empleado`, `ubicacion_empelado`, `estado_empleado`, `id_distrito`, `id_rol`, `id_vehiculo`) VALUES
(3, 'Edu', 'Mollo', '74584565', '941352564', 'por el cerro san cosme :C', 'admi20', 'riltex1998', 'en el trabajo', 'ocupado', 4, 1, 1),
(4, 'karlo', 'mollo', '74584565', '941352564', 'por ahi', 'coci20', 'cocinero', 'trabajo', 'ocupado', 3, 2, NULL),
(8, 'smuck', 'quiza', '74584321', '941351231', 'paucarpata', 'repa20', 'repartidor', 'en su casa', 'disponible', 12, 3, NULL),
(11, 'dasd', 'dasdas', '74584565', '941352564', 'dsada', 'admi20@gmail.com', 'adasda', 'dasdas', 'ocupado', 4, 2, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `id_pedido` int(50) NOT NULL,
  `fecha_pedido` datetime NOT NULL,
  `total_pedido` float NOT NULL,
  `estado_pedido` varchar(50) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_detalle` int(50) NOT NULL,
  `id_empleado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`id_pedido`, `fecha_pedido`, `total_pedido`, `estado_pedido`, `id_cliente`, `id_detalle`, `id_empleado`) VALUES
(1, '2020-07-02 16:10:44', 20, 'En preparación', 1, 1, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plato`
--

CREATE TABLE `plato` (
  `id_plato` int(11) NOT NULL,
  `nombre_plato` varchar(100) NOT NULL,
  `precio_plato` float NOT NULL,
  `imagen` varchar(2000) NOT NULL,
  `stock` int(100) NOT NULL,
  `id_tipo` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `plato`
--

INSERT INTO `plato` (`id_plato`, `nombre_plato`, `precio_plato`, `imagen`, `stock`, `id_tipo`) VALUES
(1, 'Ceviche', 15, 'https://t1.rg.ltmcdn.com/es/images/7/4/1/ceviche_peruano_18147_600_square.jpg', 15, 3),
(2, 'Caldo blanco', 10, 'https://i.ytimg.com/vi/qYyG2RNxhS4/hqdefault.jpg', 30, 1),
(5, 'Ensalada de palta', 2, 'https://locosxlaparrilla.com/wp-content/uploads/2015/02/Receta-recetas-locos-x-la-parrilla-locosxlaparrilla-ensalada-paltas-ensalada-ensalada-paltas-semillas-lechuga-ensaladas-palta-2.jpg', 15, 1),
(6, 'Caldo de lomo', 2, 'https://abrecht-group.com/wp-content/uploads/2017/04/4242881-1024x576.jpeg', 30, 1),
(7, 'lomo saltado', 5, 'https://www.comeperuano.pe/wp-content/uploads/2019/05/Receta-de-Lomo-Saltado-peruano.jpg', 15, 2),
(8, 'Milanesa de pollo', 5, 'https://www.mexicoenmicocina.com/wp-content/uploads/2019/01/receta-de-milanesa-de-pollo.jpg', 30, 2),
(9, 'Seco de cordero', 5, 'https://i.ytimg.com/vi/rMsbGQ2xw-M/hqdefault.jpg?sqp=-oaymwEXCPYBEIoBSFryq4qpAwkIARUAAIhCGAE=&rs=AOn4CLBHrjSati3jws_3yItjgTyw9l7ROg', 15, 2),
(10, 'Aji de gallina', 5, 'https://t2.rg.ltmcdn.com/es/images/3/8/7/img_aji_de_pollo_16783_600.jpg', 30, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id_rol` int(20) NOT NULL,
  `nombre_rol` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id_rol`, `nombre_rol`) VALUES
(1, 'administrador'),
(2, 'cocinero'),
(3, 'repartidor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_plato`
--

CREATE TABLE `tipo_plato` (
  `id_tipo` int(50) NOT NULL,
  `nombre_tipo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipo_plato`
--

INSERT INTO `tipo_plato` (`id_tipo`, `nombre_tipo`) VALUES
(1, 'Entrada'),
(2, 'Segundos'),
(3, 'Extras');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculo`
--

CREATE TABLE `vehiculo` (
  `id_vehiculo` int(100) NOT NULL,
  `placa` varchar(6) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `soat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `vehiculo`
--

INSERT INTO `vehiculo` (`id_vehiculo`, `placa`, `tipo`, `soat`) VALUES
(1, 'vcq132', 'moto', '12346456');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carta`
--
ALTER TABLE `carta`
  ADD PRIMARY KEY (`id_carta`),
  ADD KEY `entrada1` (`entrada1`),
  ADD KEY `entrada2` (`entrada2`),
  ADD KEY `entrada3` (`entrada3`),
  ADD KEY `segundo1` (`segundo1`),
  ADD KEY `segundo2` (`segundo2`),
  ADD KEY `segundo3` (`segundo3`),
  ADD KEY `extra1` (`extra1`),
  ADD KEY `extra2` (`extra2`),
  ADD KEY `extra3` (`extra3`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`),
  ADD KEY `id_distrito` (`id_distrito`) USING BTREE;

--
-- Indices de la tabla `comprobante`
--
ALTER TABLE `comprobante`
  ADD PRIMARY KEY (`id_comprobante`),
  ADD KEY `id_pedido` (`id_pedido`) USING BTREE;

--
-- Indices de la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  ADD PRIMARY KEY (`id_detalle`,`id_plato`),
  ADD KEY `id_detalle` (`id_detalle`),
  ADD KEY `id_plato` (`id_plato`) USING BTREE;

--
-- Indices de la tabla `distrito`
--
ALTER TABLE `distrito`
  ADD PRIMARY KEY (`id_distrito`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`id_empleado`),
  ADD KEY `id_distrito` (`id_distrito`) USING BTREE,
  ADD KEY `id_vehiculo` (`id_vehiculo`) USING BTREE,
  ADD KEY `id_rol` (`id_rol`) USING BTREE;

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`id_pedido`),
  ADD KEY `id_cliente` (`id_cliente`) USING BTREE,
  ADD KEY `id_empleado` (`id_empleado`) USING BTREE,
  ADD KEY `id_cuenta` (`id_detalle`) USING BTREE;

--
-- Indices de la tabla `plato`
--
ALTER TABLE `plato`
  ADD PRIMARY KEY (`id_plato`),
  ADD KEY `id_tipo` (`id_tipo`) USING BTREE;

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `tipo_plato`
--
ALTER TABLE `tipo_plato`
  ADD PRIMARY KEY (`id_tipo`);

--
-- Indices de la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  ADD PRIMARY KEY (`id_vehiculo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carta`
--
ALTER TABLE `carta`
  MODIFY `id_carta` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `comprobante`
--
ALTER TABLE `comprobante`
  MODIFY `id_comprobante` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `distrito`
--
ALTER TABLE `distrito`
  MODIFY `id_distrito` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `empleado`
--
ALTER TABLE `empleado`
  MODIFY `id_empleado` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `id_pedido` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `plato`
--
ALTER TABLE `plato`
  MODIFY `id_plato` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `id_rol` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tipo_plato`
--
ALTER TABLE `tipo_plato`
  MODIFY `id_tipo` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  MODIFY `id_vehiculo` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `carta`
--
ALTER TABLE `carta`
  ADD CONSTRAINT `carta_ibfk_1` FOREIGN KEY (`entrada1`) REFERENCES `plato` (`id_plato`),
  ADD CONSTRAINT `carta_ibfk_2` FOREIGN KEY (`entrada2`) REFERENCES `plato` (`id_plato`),
  ADD CONSTRAINT `carta_ibfk_3` FOREIGN KEY (`entrada3`) REFERENCES `plato` (`id_plato`),
  ADD CONSTRAINT `carta_ibfk_4` FOREIGN KEY (`segundo1`) REFERENCES `plato` (`id_plato`),
  ADD CONSTRAINT `carta_ibfk_5` FOREIGN KEY (`segundo2`) REFERENCES `plato` (`id_plato`),
  ADD CONSTRAINT `carta_ibfk_6` FOREIGN KEY (`segundo3`) REFERENCES `plato` (`id_plato`),
  ADD CONSTRAINT `carta_ibfk_7` FOREIGN KEY (`extra1`) REFERENCES `plato` (`id_plato`),
  ADD CONSTRAINT `carta_ibfk_8` FOREIGN KEY (`extra2`) REFERENCES `plato` (`id_plato`),
  ADD CONSTRAINT `carta_ibfk_9` FOREIGN KEY (`extra3`) REFERENCES `plato` (`id_plato`);

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`id_distrito`) REFERENCES `distrito` (`id_distrito`);

--
-- Filtros para la tabla `comprobante`
--
ALTER TABLE `comprobante`
  ADD CONSTRAINT `comprobante_ibfk_1` FOREIGN KEY (`id_pedido`) REFERENCES `pedido` (`id_pedido`);

--
-- Filtros para la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  ADD CONSTRAINT `detalle_pedido_ibfk_1` FOREIGN KEY (`id_plato`) REFERENCES `plato` (`id_plato`);

--
-- Filtros para la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD CONSTRAINT `empleado_ibfk_1` FOREIGN KEY (`id_distrito`) REFERENCES `distrito` (`id_distrito`),
  ADD CONSTRAINT `empleado_ibfk_2` FOREIGN KEY (`id_vehiculo`) REFERENCES `vehiculo` (`id_vehiculo`),
  ADD CONSTRAINT `empleado_ibfk_3` FOREIGN KEY (`id_rol`) REFERENCES `rol` (`id_rol`);

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`),
  ADD CONSTRAINT `pedido_ibfk_2` FOREIGN KEY (`id_detalle`) REFERENCES `detalle_pedido` (`id_detalle`),
  ADD CONSTRAINT `pedido_ibfk_3` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`id_empleado`);

--
-- Filtros para la tabla `plato`
--
ALTER TABLE `plato`
  ADD CONSTRAINT `plato_ibfk_1` FOREIGN KEY (`id_tipo`) REFERENCES `tipo_plato` (`id_tipo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
