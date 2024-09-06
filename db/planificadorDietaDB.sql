-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 05-09-2024 a las 18:29:35
-- Versión del servidor: 11.5.2-MariaDB
-- Versión de PHP: 8.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `planificadorDietaDB`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `historial_ficha_tecnica` (IN `id` BIGINT)   SELECT  f.edad, f.peso, f.glucosa, g.glucosa_minima, g.glucosa_maxima, g.tipo, f.imc, f.fecha_creacion, f.fecha_finalizacion, f.estado
FROM ficha_tecnica f 
INNER JOIN glucosa g  
ON f.glucosa BETWEEN g.glucosa_minima AND g.glucosa_maxima  
WHERE f.id_usuario = id
ORDER BY f.fecha_creacion ASC$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_paciente` (IN `p_nombre` VARCHAR(72), IN `p_usuario` VARCHAR(72), IN `p_contrasena` VARCHAR(30), IN `p_correo` VARCHAR(255), IN `p_rol` CHAR(1), IN `p_telefono` INT(8), IN `p_fecha_nacimiento` DATE, IN `p_direccion` VARCHAR(255), IN `p_cui` BIGINT, IN `p_sexo` CHAR(1), IN `p_talla` DECIMAL(10,2))   BEGIN 
	DECLARE id LONG;
    CALL insertar_usuario(p_nombre, p_usuario, p_contrasena, p_correo, p_rol,id);
    INSERT INTO paciente (id_usuario,telefono,fecha_nacimiento,direccion,cui,sexo,talla)
    VALUES (id, p_telefono, p_fecha_nacimiento, p_direccion, p_cui,p_sexo,p_talla);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_usuario` (IN `p_nombre` VARCHAR(72), IN `p_usuario` VARCHAR(72), IN `p_contrasena` VARCHAR(30), IN `p_correo` VARCHAR(255), IN `p_rol` CHAR(1), OUT `p_id_usuario` BIGINT)   BEGIN
    INSERT INTO usuario (nombre, usuario, contrasena, correo, rol)
    VALUES (p_nombre, p_usuario, p_contrasena, p_correo, p_rol);
    SET p_id_usuario = LAST_INSERT_ID();
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_ficha_tecnica` (IN `id_usuario` BIGINT, IN `edad` DECIMAL(10,2), IN `peSO` DECIMAL(10,2), IN `glucosa` INT)   begin
    INSERT INTO ficha_tecnica  (`id_usuario`, `edad`, `peso`, `glucosa`, `imc`, `estado`) 
    VALUES (id_usuario, edad, peso, glucosa, obtener_imc(54, 1), true);
end$$

--
-- Funciones
--
CREATE DEFINER=`root`@`localhost` FUNCTION `login` (`correo` VARCHAR(255), `contrasena` VARCHAR(30)) RETURNS BIGINT(20)  BEGIN 
 DECLARE id BIGINT;

 SELECT id_usuario INTO id
 from usuario where usuario.correo = correo and  usuario.contrasena=contrasena;
 RETURN id;
END$$

CREATE DEFINER=`root`@`localhost` FUNCTION `obtener_imc` (`peso` DECIMAL(10,2), `id` BIGINT) RETURNS DECIMAL(10,2)  BEGIN
  DECLARE imc decimal(10,2);
  DECLARE altura decimal(10,2);
 
  SELECT talla  INTO altura FROM paciente where id_usuario=id;
  
  
  SET imc = peso / (altura *altura);
  RETURN imc;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alimento`
--

CREATE TABLE `alimento` (
  `id_alimento` bigint(20) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `indice_glucemico` int(11) NOT NULL,
  `Cantidad` varchar(25) NOT NULL,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `alimento`
--

INSERT INTO `alimento` (`id_alimento`, `nombre`, `indice_glucemico`, `Cantidad`, `id_categoria`) VALUES
(1, 'Manzana', 38, '1 unidad', 1),
(2, 'Banana', 51, '1 unidad', 1),
(3, 'Naranja', 43, '1 unidad', 1),
(4, 'Fresa', 41, '1 taza', 1),
(5, 'Pera', 38, '1 unidad', 1),
(6, 'Uvas', 46, '1 taza', 1),
(7, 'Kiwi', 52, '1 unidad', 1),
(8, 'Mango', 60, '1 unidad', 1),
(9, 'Piña', 66, '1 taza', 1),
(10, 'Melocotón', 28, '1 unidad', 1),
(11, 'Sandía', 76, '1 taza', 1),
(12, 'Cereza', 63, '1 taza', 1),
(13, 'Papalina', 38, '1 unidad', 1),
(14, 'Granada', 53, '1 unidad', 1),
(15, 'Tomate', 15, '1 unidad', 7),
(16, 'Aguacate', 15, '1 unidad', 7),
(17, 'Lima', 20, '1 unidad', 7),
(18, 'Frambuesa', 32, '1 taza', 1),
(19, 'Arándano', 53, '1 taza', 1),
(20, 'Nuez', 15, '30 g', 2),
(21, 'Almendra', 15, '30 g', 2),
(22, 'Pistacho', 28, '30 g', 2),
(23, 'Avellana', 15, '30 g', 2),
(24, 'Maní', 14, '30 g', 2),
(25, 'Semillas de chía', 1, '30 g', 2),
(26, 'Semillas de lino', 35, '30 g', 2),
(27, 'Coco', 45, '1 taza', 2),
(28, 'Salmón', 0, '100 g', 3),
(29, 'Atún', 0, '100 g', 3),
(30, 'Pechuga de pollo', 0, '100 g', 3),
(31, 'Carne de res', 0, '100 g', 3),
(32, 'Carne de cerdo', 0, '100 g', 3),
(33, 'Huevos', 0, '1 unidad', 3),
(34, 'Leche', 31, '1 taza', 4),
(35, 'Yogur natural', 36, '1 taza', 4),
(36, 'Queso cheddar', 0, '30 g', 4),
(37, 'Queso cottage', 10, '1 taza', 4),
(38, 'Leche de almendra', 25, '1 taza', 4),
(39, 'Leche de soja', 34, '1 taza', 4),
(40, 'Pan integral', 74, '1 rebanada', 5),
(41, 'Pan blanco', 70, '1 rebanada', 5),
(42, 'Arroz integral', 50, '1 taza', 5),
(43, 'Arroz blanco', 72, '1 taza', 5),
(44, 'Pasta integral', 37, '1 taza', 5),
(45, 'Pasta blanca', 49, '1 taza', 5),
(46, 'Quinoa', 53, '1 taza', 5),
(47, 'Lentejas', 29, '1 taza', 6),
(48, 'Garbanzos', 28, '1 taza', 6),
(49, 'Frijoles negros', 30, '1 taza', 6),
(50, 'Frijoles rojos', 32, '1 taza', 6),
(51, 'Guisantes', 39, '1 taza', 6),
(52, 'Papas', 82, '1 papa', 7),
(53, 'Batatas', 61, '1 papa', 7),
(54, 'Zanahorias', 47, '1 taza', 7),
(55, 'Maíz', 60, '1 taza', 7),
(56, 'Pepino', 16, '1 unidad', 7),
(57, 'Calabacín', 15, '1 taza', 7),
(58, 'Espinacas', 15, '1 taza', 8),
(59, 'Brócoli', 10, '1 taza', 8),
(60, 'Col rizada', 2, '1 taza', 8),
(61, 'Coliflor', 15, '1 taza', 8),
(62, 'Repollo', 10, '1 taza', 8),
(63, 'Alcachofa', 15, '1 unidad', 8),
(64, 'Champiñones', 10, '1 taza', 8),
(65, 'Acelga', 0, '1 taza', 8),
(66, 'Lechuga', 10, '1 taza', 8),
(67, 'Pimiento', 10, '1 unidad', 8),
(68, 'Ajo', 10, '1 diente', 8),
(69, 'Cebolla', 10, '1 unidad', 8),
(70, 'Jengibre', 10, '1 trozo pequeño', 8),
(71, 'Canela', 0, '1 cucharadita', 9),
(72, 'Cúrcuma', 0, '1 cucharadita', 9),
(73, 'Pimienta negra', 0, '1 cucharadita', 9),
(74, 'Comino', 0, '1 cucharadita', 9),
(75, 'Pimentón', 0, '1 cucharadita', 9),
(76, 'Orégano', 0, '1 cucharadita', 9),
(77, 'Romero', 0, '1 cucharadita', 9),
(78, 'Tomillo', 0, '1 cucharadita', 9),
(79, 'Nuez moscada', 0, '1 cucharadita', 9),
(80, 'Clavo de olor', 0, '1 cucharadita', 9),
(81, 'Albahaca', 0, '1 cucharadita', 9),
(82, 'Hinojo', 0, '1 cucharadita', 9),
(83, 'Perejil', 0, '1 cucharadita', 9),
(84, 'Cilantro', 0, '1 cucharadita', 9),
(85, 'Albahaca seca', 0, '1 cucharadita', 9),
(86, 'Menta', 0, '1 cucharadita', 9),
(87, 'Dill', 0, '1 cucharadita', 9),
(88, 'Cardamomo', 0, '1 cucharadita', 9),
(89, 'Azúcar', 68, '1 cucharadita', 10),
(90, 'Miel', 61, '1 cucharadita', 10),
(91, 'Jarabe de arce', 54, '1 cucharadita', 10),
(92, 'Melaza', 55, '1 cucharadita', 10),
(93, 'Sirope de agave', 15, '1 cucharadita', 10),
(94, 'Glucosa líquida', 100, '1 cucharadita', 10),
(95, 'Sirope de maíz', 75, '1 cucharadita', 10),
(96, 'Leche condensada', 70, '1 cucharadita', 10),
(97, 'Caramelo', 64, '1 cucharadita', 10),
(98, 'Azúcar moreno', 64, '1 cucharadita', 10),
(99, 'Azúcar glas', 68, '1 cucharadita', 10),
(100, 'Harina integral', 51, '1 taza', 11),
(101, 'Harina blanca', 70, '1 taza', 11),
(102, 'Harina de avena', 55, '1 taza', 11),
(103, 'Harina de maíz', 70, '1 taza', 11),
(104, 'Harina de trigo', 70, '1 taza', 11),
(105, 'Harina de arroz', 90, '1 taza', 11),
(106, 'Harina de garbanzos', 41, '1 taza', 11),
(107, 'Harina de coco', 46, '1 taza', 11),
(108, 'Harina de almendra', 0, '1 taza', 11),
(109, 'Harina de soja', 15, '1 taza', 11),
(110, 'Harina de yuca', 48, '1 taza', 11),
(111, 'Harina de espelta', 55, '1 taza', 11),
(112, 'Harina de centeno', 65, '1 taza', 11),
(113, 'Harina de teff', 30, '1 taza', 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `almuerzo`
--

CREATE TABLE `almuerzo` (
  `id_almuerzo` bigint(20) NOT NULL,
  `hora_inicial` time NOT NULL,
  `hora_final` time NOT NULL,
  `total_kcal` int(11) NOT NULL,
  `tipo` varchar(72) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `almuerzo`
--

INSERT INTO `almuerzo` (`id_almuerzo`, `hora_inicial`, `hora_final`, `total_kcal`, `tipo`) VALUES
(1, '12:00:00', '13:00:00', 400, 'Equilibrado'),
(2, '13:00:00', '14:00:00', 350, 'Vegetariano');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL,
  `nombre` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `nombre`) VALUES
(1, 'Frutas'),
(2, 'Frutos secos'),
(3, 'Proteínas animales'),
(4, 'Lácteos'),
(5, 'Pan y cereales'),
(6, 'Legumbres'),
(7, 'Tubérculos y vegetales'),
(8, 'Vegetales de hojas verdes'),
(9, 'Especias y condimentos'),
(10, 'Azúcares y edulcorantes'),
(11, 'Harinas y granos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cena`
--

CREATE TABLE `cena` (
  `id_cena` bigint(20) NOT NULL,
  `hora_inicial` time NOT NULL,
  `hora_final` time NOT NULL,
  `total_kcal` int(11) NOT NULL,
  `tipo` varchar(72) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cena`
--

INSERT INTO `cena` (`id_cena`, `hora_inicial`, `hora_final`, `total_kcal`, `tipo`) VALUES
(1, '19:00:00', '19:30:00', 300, 'Ligera'),
(2, '20:00:00', '20:30:00', 280, 'Saludable');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `comestibles`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `comestibles` (
`id_alimento` bigint(20)
,`nombre` varchar(100)
,`indice_glucemico` int(11)
,`Cantidad` varchar(25)
,`categoria` varchar(75)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `desayuno`
--

CREATE TABLE `desayuno` (
  `id_desayuno` bigint(20) NOT NULL,
  `hora_inicial` time NOT NULL,
  `hora_final` time NOT NULL,
  `total_kcal` int(11) NOT NULL,
  `tipo` varchar(72) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `desayuno`
--

INSERT INTO `desayuno` (`id_desayuno`, `hora_inicial`, `hora_final`, `total_kcal`, `tipo`) VALUES
(1, '07:00:00', '07:30:00', 250, 'Saludable'),
(2, '08:00:00', '08:30:00', 200, 'Proteico');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_almuerzo`
--

CREATE TABLE `detalle_almuerzo` (
  `id_almuerzo` bigint(20) NOT NULL,
  `id_alimentos` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `detalle_almuerzo`
--

INSERT INTO `detalle_almuerzo` (`id_almuerzo`, `id_alimentos`) VALUES
(1, 4),
(1, 5),
(2, 6),
(1, 4),
(1, 5),
(2, 6),
(1, 4),
(1, 5),
(2, 6),
(1, 4),
(1, 5),
(2, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_cena`
--

CREATE TABLE `detalle_cena` (
  `id_cena` bigint(20) NOT NULL,
  `id_alimentos` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `detalle_cena`
--

INSERT INTO `detalle_cena` (`id_cena`, `id_alimentos`) VALUES
(1, 7),
(1, 8),
(2, 9),
(1, 7),
(1, 8),
(2, 9),
(1, 7),
(1, 8),
(2, 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_desayuno`
--

CREATE TABLE `detalle_desayuno` (
  `id_desayuno` bigint(20) NOT NULL,
  `id_alimentos` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `detalle_desayuno`
--

INSERT INTO `detalle_desayuno` (`id_desayuno`, `id_alimentos`) VALUES
(1, 1),
(1, 2),
(2, 3),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_refaccion_depertina`
--

CREATE TABLE `detalle_refaccion_depertina` (
  `id_refaccion_despertina` bigint(20) NOT NULL,
  `id_alimentos` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `detalle_refaccion_depertina`
--

INSERT INTO `detalle_refaccion_depertina` (`id_refaccion_despertina`, `id_alimentos`) VALUES
(1, 10),
(1, 11),
(2, 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_refaccion_matutina`
--

CREATE TABLE `detalle_refaccion_matutina` (
  `id_refaccion_matutina` bigint(20) NOT NULL,
  `id_alimentos` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `detalle_refaccion_matutina`
--

INSERT INTO `detalle_refaccion_matutina` (`id_refaccion_matutina`, `id_alimentos`) VALUES
(1, 13),
(1, 14),
(2, 15),
(1, 13),
(1, 14),
(2, 15);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `dieta`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `dieta` (
`id_menu` bigint(20)
,`id_desayuno` bigint(20)
,`d_hora_inicial` time
,`d_hora_final` time
,`d_total_kcal` int(11)
,`d_tipo` varchar(72)
,`id_almuerzo` bigint(20)
,`a_hora_inicial` time
,`a_hora_final` time
,`a_total_kcal` int(11)
,`a_tipo` varchar(72)
,`id_cena` bigint(20)
,`c_hora_inicial` time
,`c_hora_final` time
,`c_total_kcal` int(11)
,`c_tipo` varchar(72)
,`id_refaccion_matutina` bigint(20)
,`rm_hora_inicial` time
,`rm_hora_final` time
,`rm_total_kcal` int(11)
,`rm_tipo` varchar(72)
,`id_refaccion_despertina` bigint(20)
,`rd_hora_inicial` time
,`rd_hora_final` time
,`rd_total_kcal` int(11)
,`rd_tipo` varchar(72)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ficha_tecnica`
--

CREATE TABLE `ficha_tecnica` (
  `id_fecha_tecnica` bigint(20) NOT NULL,
  `id_usuario` bigint(20) NOT NULL,
  `edad` int(11) NOT NULL,
  `peso` decimal(10,2) NOT NULL,
  `glucosa` int(11) NOT NULL,
  `imc` decimal(10,2) NOT NULL,
  `fecha_creacion` date DEFAULT curdate(),
  `fecha_finalizacion` date NOT NULL,
  `estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `ficha_tecnica`
--

INSERT INTO `ficha_tecnica` (`id_fecha_tecnica`, `id_usuario`, `edad`, `peso`, `glucosa`, `imc`, `fecha_creacion`, `fecha_finalizacion`, `estado`) VALUES
(1, 1, 35, 54.00, 102, 19.83, '2024-09-03', '2024-09-10', 1),
(2, 1, 70, 54.00, 105, 19.83, '2024-09-03', '2024-09-10', 1),
(3, 1, 50, 10.00, 105, 19.83, '2024-09-03', '2024-09-10', 1);

--
-- Disparadores `ficha_tecnica`
--
DELIMITER $$
CREATE TRIGGER `calcular_fecha` BEFORE INSERT ON `ficha_tecnica` FOR EACH ROW BEGIN
    SET NEW.fecha_finalizacion = DATE_ADD(NEW.fecha_creacion, INTERVAL 7 DAY);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `glucosa`
--

CREATE TABLE `glucosa` (
  `id_glucosa` int(11) NOT NULL,
  `glucosa_minima` int(11) NOT NULL,
  `glucosa_maxima` int(11) NOT NULL,
  `tipo` varchar(72) NOT NULL,
  `recomendacion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `glucosa`
--

INSERT INTO `glucosa` (`id_glucosa`, `glucosa_minima`, `glucosa_maxima`, `tipo`, `recomendacion`) VALUES
(1, 70, 99, 'Normal', 'Mantén una dieta equilibrada y ejercicio regular.'),
(2, 100, 125, 'Prediabetes', 'Reduce el consumo de carbohidratos y azúcar, y consulta a un médico.'),
(3, 126, 200, 'Diabetes', 'Consulta a un endocrinólogo, controla tu dieta y monitorea tu glucosa diariamente.'),
(4, 201, 600, 'Hiperglucemia severa', 'Busca atención médica inmediata para prevenir complicaciones graves.'),
(5, 0, 69, 'Hipoglucemia', 'Consume una fuente rápida de azúcar, como jugo de frutas o caramelos, y consulta a un médico.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hemoglobina`
--

CREATE TABLE `hemoglobina` (
  `id_hemoglobina` bigint(20) NOT NULL,
  `id_paciente` bigint(20) NOT NULL,
  `hemoglobina` int(11) NOT NULL,
  `fecha_inicial` date DEFAULT curdate(),
  `fecha_vencimiento` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Disparadores `hemoglobina`
--
DELIMITER $$
CREATE TRIGGER `vencimiento_hemoglobina` BEFORE INSERT ON `hemoglobina` FOR EACH ROW BEGIN
    SET NEW.fecha_vencimiento = DATE_ADD(NEW.fecha_inicial, INTERVAL 30 DAY);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu_dia`
--

CREATE TABLE `menu_dia` (
  `id_menu` bigint(20) NOT NULL,
  `id_desayuno` bigint(20) NOT NULL,
  `id_refaccion_matutina` bigint(20) NOT NULL,
  `id_almuerzo` bigint(20) NOT NULL,
  `id_refaccion_despertina` bigint(20) NOT NULL,
  `id_cena` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `menu_dia`
--

INSERT INTO `menu_dia` (`id_menu`, `id_desayuno`, `id_refaccion_matutina`, `id_almuerzo`, `id_refaccion_despertina`, `id_cena`) VALUES
(1, 1, 1, 1, 1, 1),
(2, 2, 2, 2, 2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paciente`
--

CREATE TABLE `paciente` (
  `id_usuario` bigint(20) NOT NULL,
  `telefono` int(8) UNSIGNED NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `cui` bigint(20) NOT NULL,
  `sexo` char(1) NOT NULL,
  `talla` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `paciente`
--

INSERT INTO `paciente` (`id_usuario`, `telefono`, `fecha_nacimiento`, `direccion`, `cui`, `sexo`, `talla`) VALUES
(1, 77884455, '2000-02-02', 'Totonicapan', 1236547899875, 'M', 1.65),
(2, 77884455, '2000-02-02', 'Totonicapan', 1236547899875, 'M', 1.65),
(3, 77884455, '2000-02-02', 'Totonicapan', 1236547899875, 'M', 1.65),
(4, 77662345, '2024-09-21', 'totonicapan', 123456789, 'M', 2.00),
(6, 77662345, '2024-09-21', 'totonicapan', 123456789, 'M', 2.00),
(17, 88776645, '2024-09-05', 'Xela', 56456464, 'M', 2.00),
(19, 77885623, '2024-09-04', 'quetzaltenango', 784561236494, 'M', 1.35);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `perfil`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `perfil` (
`id_usuario` bigint(20)
,`nombre` varchar(72)
,`usuario` varchar(72)
,`correo` varchar(255)
,`telefono` int(8) unsigned
,`fecha_nacimiento` date
,`direccion` varchar(255)
,`cui` bigint(20)
,`sexo` char(1)
,`paciente` decimal(10,2)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plan_alimenticio`
--

CREATE TABLE `plan_alimenticio` (
  `id_plan` bigint(20) NOT NULL,
  `fecha` date NOT NULL,
  `id_usuario` bigint(20) NOT NULL,
  `total_kcal` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `plan_alimenticio`
--

INSERT INTO `plan_alimenticio` (`id_plan`, `fecha`, `id_usuario`, `total_kcal`) VALUES
(1, '2024-09-01', 1, 1500),
(2, '2024-09-02', 1, 1400),
(1, '2024-09-01', 1, 1500),
(2, '2024-09-02', 1, 1400),
(1, '2024-09-01', 1, 1500),
(2, '2024-09-02', 1, 1400),
(1, '2024-09-01', 1, 1500),
(2, '2024-09-02', 1, 1400),
(1, '2024-09-01', 1, 1500),
(2, '2024-09-02', 1, 1400),
(1, '2024-09-01', 1, 1500),
(2, '2024-09-02', 1, 1400),
(1, '2024-09-01', 1, 1500),
(2, '2024-09-02', 1, 1400),
(1, '2024-09-01', 1, 1500),
(2, '2024-09-02', 1, 1400),
(1, '2024-09-01', 1, 1500),
(2, '2024-09-02', 1, 1400),
(1, '2024-09-01', 1, 1500),
(2, '2024-09-02', 1, 1400),
(1, '2024-09-01', 1, 1500),
(2, '2024-09-02', 1, 1400),
(1, '2024-09-01', 1, 1500),
(2, '2024-09-02', 1, 1400),
(1, '2024-09-01', 1, 1500),
(2, '2024-09-02', 1, 1400),
(1, '2024-09-01', 1, 1500),
(2, '2024-09-02', 1, 1400),
(1, '2024-09-01', 1, 1500),
(2, '2024-09-02', 1, 1400);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `refaccion_despertina`
--

CREATE TABLE `refaccion_despertina` (
  `id_refaccion_despertina` bigint(20) NOT NULL,
  `hora_inicial` time NOT NULL,
  `hora_final` time NOT NULL,
  `total_kcal` int(11) NOT NULL,
  `tipo` varchar(72) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `refaccion_despertina`
--

INSERT INTO `refaccion_despertina` (`id_refaccion_despertina`, `hora_inicial`, `hora_final`, `total_kcal`, `tipo`) VALUES
(1, '10:00:00', '10:15:00', 100, 'Fruta'),
(2, '11:00:00', '11:15:00', 120, 'Yogur');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `refaccion_matutina`
--

CREATE TABLE `refaccion_matutina` (
  `id_refaccion_matutina` bigint(20) NOT NULL,
  `hora_inicial` time NOT NULL,
  `hora_final` time NOT NULL,
  `total_kcal` int(11) NOT NULL,
  `tipo` varchar(72) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `refaccion_matutina`
--

INSERT INTO `refaccion_matutina` (`id_refaccion_matutina`, `hora_inicial`, `hora_final`, `total_kcal`, `tipo`) VALUES
(1, '09:00:00', '09:15:00', 80, 'Nuez'),
(2, '10:00:00', '10:15:00', 90, 'Batido');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` bigint(20) NOT NULL,
  `nombre` varchar(72) NOT NULL,
  `usuario` varchar(72) NOT NULL,
  `contrasena` varchar(30) NOT NULL,
  `correo` varchar(255) NOT NULL,
  `rol` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nombre`, `usuario`, `contrasena`, `correo`, `rol`) VALUES
(1, 'Gerardo Tax', 'GerardoTax', '123456789', 'gerardo@gmail.com', 'P'),
(2, 'Gerardo Tax', 'Gerardo1Tax', '123456789', 'gerardo1@gmail.com', 'P'),
(3, 'Gerardo Tax', 'Gerardo2Tax', '123456789', 'gerardo2@gmail.com', 'P'),
(4, 'Prueba', 'prueba', '123456789', 'jjcsf@gmial.com', 'P'),
(6, 'Prueba2', 'prueba2', '123456789', 'prueba2@gmial.com', 'P'),
(17, 'Vicente ', 'MV425', '12', 'vicente@gmail.com', 'P'),
(19, 'ts1', 'ts1 prueba', 'ts', 'ts1@gmail.com', 'P');

-- --------------------------------------------------------

--
-- Estructura para la vista `comestibles`
--
DROP TABLE IF EXISTS `comestibles`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `comestibles`  AS SELECT `al`.`id_alimento` AS `id_alimento`, `al`.`nombre` AS `nombre`, `al`.`indice_glucemico` AS `indice_glucemico`, `al`.`Cantidad` AS `Cantidad`, `ca`.`nombre` AS `categoria` FROM (`alimento` `al` join `categoria` `ca` on(`ca`.`id_categoria` = `al`.`id_categoria`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `dieta`
--
DROP TABLE IF EXISTS `dieta`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `dieta`  AS SELECT `m`.`id_menu` AS `id_menu`, `d`.`id_desayuno` AS `id_desayuno`, `d`.`hora_inicial` AS `d_hora_inicial`, `d`.`hora_final` AS `d_hora_final`, `d`.`total_kcal` AS `d_total_kcal`, `d`.`tipo` AS `d_tipo`, `a`.`id_almuerzo` AS `id_almuerzo`, `a`.`hora_inicial` AS `a_hora_inicial`, `a`.`hora_final` AS `a_hora_final`, `a`.`total_kcal` AS `a_total_kcal`, `a`.`tipo` AS `a_tipo`, `c`.`id_cena` AS `id_cena`, `c`.`hora_inicial` AS `c_hora_inicial`, `c`.`hora_final` AS `c_hora_final`, `c`.`total_kcal` AS `c_total_kcal`, `c`.`tipo` AS `c_tipo`, `rm`.`id_refaccion_matutina` AS `id_refaccion_matutina`, `rm`.`hora_inicial` AS `rm_hora_inicial`, `rm`.`hora_final` AS `rm_hora_final`, `rm`.`total_kcal` AS `rm_total_kcal`, `rm`.`tipo` AS `rm_tipo`, `rd`.`id_refaccion_despertina` AS `id_refaccion_despertina`, `rd`.`hora_inicial` AS `rd_hora_inicial`, `rd`.`hora_final` AS `rd_hora_final`, `rd`.`total_kcal` AS `rd_total_kcal`, `rd`.`tipo` AS `rd_tipo` FROM (((((`menu_dia` `m` join `desayuno` `d` on(`m`.`id_desayuno` = `d`.`id_desayuno`)) join `almuerzo` `a` on(`m`.`id_almuerzo` = `a`.`id_almuerzo`)) join `cena` `c` on(`m`.`id_cena` = `c`.`id_cena`)) join `refaccion_matutina` `rm` on(`rm`.`id_refaccion_matutina` = `m`.`id_refaccion_matutina`)) join `refaccion_despertina` `rd` on(`rd`.`id_refaccion_despertina` = `m`.`id_refaccion_despertina`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `perfil`
--
DROP TABLE IF EXISTS `perfil`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `perfil`  AS SELECT `u`.`id_usuario` AS `id_usuario`, `u`.`nombre` AS `nombre`, `u`.`usuario` AS `usuario`, `u`.`correo` AS `correo`, `p`.`telefono` AS `telefono`, `p`.`fecha_nacimiento` AS `fecha_nacimiento`, `p`.`direccion` AS `direccion`, `p`.`cui` AS `cui`, `p`.`sexo` AS `sexo`, `p`.`talla` AS `paciente` FROM (`usuario` `u` left join `paciente` `p` on(`p`.`id_usuario` = `u`.`id_usuario`)) ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alimento`
--
ALTER TABLE `alimento`
  ADD PRIMARY KEY (`id_alimento`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- Indices de la tabla `almuerzo`
--
ALTER TABLE `almuerzo`
  ADD PRIMARY KEY (`id_almuerzo`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `cena`
--
ALTER TABLE `cena`
  ADD PRIMARY KEY (`id_cena`);

--
-- Indices de la tabla `desayuno`
--
ALTER TABLE `desayuno`
  ADD PRIMARY KEY (`id_desayuno`);

--
-- Indices de la tabla `ficha_tecnica`
--
ALTER TABLE `ficha_tecnica`
  ADD PRIMARY KEY (`id_fecha_tecnica`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `glucosa`
--
ALTER TABLE `glucosa`
  ADD PRIMARY KEY (`id_glucosa`);

--
-- Indices de la tabla `hemoglobina`
--
ALTER TABLE `hemoglobina`
  ADD PRIMARY KEY (`id_hemoglobina`),
  ADD KEY `id_paciente` (`id_paciente`);

--
-- Indices de la tabla `menu_dia`
--
ALTER TABLE `menu_dia`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indices de la tabla `paciente`
--
ALTER TABLE `paciente`
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `refaccion_despertina`
--
ALTER TABLE `refaccion_despertina`
  ADD PRIMARY KEY (`id_refaccion_despertina`);

--
-- Indices de la tabla `refaccion_matutina`
--
ALTER TABLE `refaccion_matutina`
  ADD PRIMARY KEY (`id_refaccion_matutina`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `usuario` (`usuario`),
  ADD UNIQUE KEY `correo` (`correo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alimento`
--
ALTER TABLE `alimento`
  MODIFY `id_alimento` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT de la tabla `almuerzo`
--
ALTER TABLE `almuerzo`
  MODIFY `id_almuerzo` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `cena`
--
ALTER TABLE `cena`
  MODIFY `id_cena` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `desayuno`
--
ALTER TABLE `desayuno`
  MODIFY `id_desayuno` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `ficha_tecnica`
--
ALTER TABLE `ficha_tecnica`
  MODIFY `id_fecha_tecnica` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `glucosa`
--
ALTER TABLE `glucosa`
  MODIFY `id_glucosa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `hemoglobina`
--
ALTER TABLE `hemoglobina`
  MODIFY `id_hemoglobina` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `menu_dia`
--
ALTER TABLE `menu_dia`
  MODIFY `id_menu` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `refaccion_despertina`
--
ALTER TABLE `refaccion_despertina`
  MODIFY `id_refaccion_despertina` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `refaccion_matutina`
--
ALTER TABLE `refaccion_matutina`
  MODIFY `id_refaccion_matutina` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alimento`
--
ALTER TABLE `alimento`
  ADD CONSTRAINT `alimento_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id_categoria`);

--
-- Filtros para la tabla `ficha_tecnica`
--
ALTER TABLE `ficha_tecnica`
  ADD CONSTRAINT `ficha_tecnica_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`);

--
-- Filtros para la tabla `hemoglobina`
--
ALTER TABLE `hemoglobina`
  ADD CONSTRAINT `hemoglobina_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `paciente` (`id_usuario`);

--
-- Filtros para la tabla `paciente`
--
ALTER TABLE `paciente`
  ADD CONSTRAINT `paciente_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
