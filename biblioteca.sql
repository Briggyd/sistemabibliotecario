-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-04-2020 a las 01:22:48
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `biblioteca`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadoslibro`
--

CREATE TABLE `estadoslibro` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `estadoslibro`
--

INSERT INTO `estadoslibro` (`id`, `descripcion`) VALUES
(1, 'Prestado'),
(2, 'Disponible'),
(3, 'Extraviado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facultades`
--

CREATE TABLE `facultades` (
  `id` int(11) NOT NULL,
  `nombre` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `facultades`
--

INSERT INTO `facultades` (`id`, `nombre`) VALUES
(3, 'Infantiles'),
(5, 'Narrativos'),
(6, 'Ensayos'),
(7, 'Poesía'),
(8, 'COMO LLORAR MIENTRAS HACE TRABAJOS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lectores`
--

CREATE TABLE `lectores` (
  `id_lector` int(11) NOT NULL,
  `nombres` varchar(100) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `dni` varchar(13) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `estado` tinyint(4) NOT NULL,
  `id_tipolector` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `lectores`
--

INSERT INTO `lectores` (`id_lector`, `nombres`, `apellidos`, `dni`, `telefono`, `direccion`, `estado`, `id_tipolector`) VALUES
(11, 'Alejando ', 'Gonzalez Rincon', '12345678', '3143171626', 'alejandro@gmail.com', 0, 1),
(12, 'Jaime', 'Garzon ', '12345679', '3143171616', 'jaime@gmail.com', 1, 1),
(13, 'Katheryn', 'Rojas', '10154804', '3143171626', 'rojas@gmail.com', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `id_libro` int(11) NOT NULL,
  `codigo_libro` varchar(20) NOT NULL,
  `titulo_libro` varchar(150) NOT NULL,
  `autor_libro` varchar(150) NOT NULL,
  `publicacion_libro` year(4) NOT NULL,
  `idioma_libro` varchar(200) NOT NULL,
  `ejemplares_libro` int(11) NOT NULL,
  `prestados_libro` varchar(10) NOT NULL,
  `id_facultad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`id_libro`, `codigo_libro`, `titulo_libro`, `autor_libro`, `publicacion_libro`, `idioma_libro`, `ejemplares_libro`, `prestados_libro`, `id_facultad`) VALUES
(20, '823.912 D612', 'Peter pan', 'Disney', 2010, 'español ', 1, '0', 3),
(21, 'C863.6 E77L', 'Leyendas de miedo y espanto en América', 'España, Gonzalo', 1999, 'español ', 2, '0', 3),
(22, '813.5 A442J', 'Jumanji', 'Allsburg, Chris Van', 1995, 'español ', 3, '0', 3),
(23, '808.831 L673', 'El último refugio', 'Lewis, J. Patrick,', 2003, 'español ', 4, '0', 3),
(24, '791.4301 S471', 'Semióticas del cine y del audiovisual : nuevas tendencias', 'Grodal, Torben.', 2019, 'español ', 6, '1', 5),
(25, '791.436 C967', '¡Bang! : el goce en el cine de acción', 'Cuéllar, María,', 2017, 'español ', 7, '0', 5),
(26, '920.5 T593', 'Tinta indeleble : Guillermo Cano, vida y obra', 'Sabogal Jara, Juan Sebastián,', 2012, 'español ', 5, '0', 5),
(27, 'C863.6 S939', 'El séptimo ciclo', 'AutorSuárez Mantilla, Carmen Cecilia', 0000, 'español/ingles', 8, '0', 5),
(28, '701.1 P', 'Pensadores clave sobre el arte : el siglo XX', 'Villarino, Maribel, tradcutor', 2006, 'español /ingles', 9, '0', 6),
(29, '0323', 'Universidad y realidad actual conversaciones en la Tadeo', 'Gil Tovar, F.', 1989, 'español ', 1, '0', 6),
(30, '0323a', 'Disgresiones sobre hechos y desechos', 'Naranjo Villegas', 1998, 'español ', 2, '0', 6),
(31, '804 T63', 'Literatura y significación', 'Todorov, Tzvetan', 1971, 'ingles', 3, '0', 6),
(32, 'C861.5 M828EditorEdi', 'Bajo el fuego del Caribe colombiano : cuatro poetas afrocartageneras = Sous le feu des Caraïbes colombiennes : quatre poètes afro-carthagénoises', 'Morales Morales, Nadia del Carmen,', 2017, 'español / francés ', 3, '0', 7),
(33, 'C861.6 R586R', 'Ríos paralelos 3', 'Belisario Tavera, Edwin, autor', 2018, 'español ', 4, '0', 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamos`
--

CREATE TABLE `prestamos` (
  `id` int(11) NOT NULL,
  `id_libro` int(11) NOT NULL,
  `id_lector` int(11) NOT NULL,
  `fechaprestamo` varchar(100) NOT NULL,
  `fechadevolucion` varchar(100) NOT NULL,
  `estado_prestamo` tinyint(4) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `Dias_prestamo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `prestamos`
--

INSERT INTO `prestamos` (`id`, `id_libro`, `id_lector`, `fechaprestamo`, `fechadevolucion`, `estado_prestamo`, `id_usuario`, `Dias_prestamo`) VALUES
(138, 24, 11, '25/04/2020', '', 0, 3, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipolector`
--

CREATE TABLE `tipolector` (
  `id` int(11) NOT NULL,
  `nombre` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipolector`
--

INSERT INTO `tipolector` (`id`, `nombre`) VALUES
(1, 'Estudiante'),
(2, 'Administrativos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipousuario`
--

CREATE TABLE `tipousuario` (
  `id` int(11) NOT NULL,
  `denominacion` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipousuario`
--

INSERT INTO `tipousuario` (`id`, `denominacion`) VALUES
(1, 'Administrador'),
(2, 'Usuario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombres` varchar(100) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `dni` varchar(10) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pass_usuario` varchar(150) NOT NULL,
  `idtipousuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombres`, `apellidos`, `dni`, `telefono`, `email`, `pass_usuario`, `idtipousuario`) VALUES
(3, 'Katheryn', 'Rojas', '12345679', '3143171626', 'rojas@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 1),
(4, 'Alejandro ', 'Rincon', '12345675', '3143171626', 'rincon@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 1),
(5, 'Jaime', 'Garzon', '00000001', '', 'garzon@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `estadoslibro`
--
ALTER TABLE `estadoslibro`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `facultades`
--
ALTER TABLE `facultades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `lectores`
--
ALTER TABLE `lectores`
  ADD PRIMARY KEY (`id_lector`),
  ADD UNIQUE KEY `dni` (`dni`),
  ADD KEY `id_tipolector` (`id_tipolector`);

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`id_libro`),
  ADD KEY `id_facultad` (`id_facultad`);

--
-- Indices de la tabla `prestamos`
--
ALTER TABLE `prestamos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_libro` (`id_libro`),
  ADD KEY `id_lector` (`id_lector`);

--
-- Indices de la tabla `tipolector`
--
ALTER TABLE `tipolector`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipousuario`
--
ALTER TABLE `tipousuario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `idtipousuario` (`idtipousuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `estadoslibro`
--
ALTER TABLE `estadoslibro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `facultades`
--
ALTER TABLE `facultades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `lectores`
--
ALTER TABLE `lectores`
  MODIFY `id_lector` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `libros`
--
ALTER TABLE `libros`
  MODIFY `id_libro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `prestamos`
--
ALTER TABLE `prestamos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT de la tabla `tipolector`
--
ALTER TABLE `tipolector`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tipousuario`
--
ALTER TABLE `tipousuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `lectores`
--
ALTER TABLE `lectores`
  ADD CONSTRAINT `lectores_ibfk_1` FOREIGN KEY (`id_tipolector`) REFERENCES `tipolector` (`id`);

--
-- Filtros para la tabla `libros`
--
ALTER TABLE `libros`
  ADD CONSTRAINT `libros_ibfk_5` FOREIGN KEY (`id_facultad`) REFERENCES `facultades` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `prestamos`
--
ALTER TABLE `prestamos`
  ADD CONSTRAINT `prestamos_ibfk_2` FOREIGN KEY (`id_libro`) REFERENCES `libros` (`id_libro`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `prestamos_ibfk_4` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`idtipousuario`) REFERENCES `tipousuario` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
