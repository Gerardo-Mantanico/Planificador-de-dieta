--
-- insert alimentos
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



--
-- Volcado de datos para la tabla `almuerzo`
--

INSERT INTO `almuerzo` (`id_almuerzo`, `hora_inicial`, `hora_final`, `total_kcal`, `tipo`) VALUES
(1, '12:00:00', '13:00:00', 400, 'Equilibrado'),
(2, '13:00:00', '14:00:00', 350, 'Vegetariano');



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
-- Volcado de datos para la tabla `cena`
--

INSERT INTO `cena` (`id_cena`, `hora_inicial`, `hora_final`, `total_kcal`, `tipo`) VALUES
(1, '19:00:00', '19:30:00', 300, 'Ligera'),
(2, '20:00:00', '20:30:00', 280, 'Saludable');

-- --------------------------------------------------------
--
-- Volcado de datos para la tabla `desayuno`
--

INSERT INTO `desayuno` (`id_desayuno`, `hora_inicial`, `hora_final`, `total_kcal`, `tipo`) VALUES
(1, '07:00:00', '07:30:00', 250, 'Saludable'),
(2, '08:00:00', '08:30:00', 200, 'Proteico');

-- --------------------------------------------------------

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


INSERT INTO `detalle_refaccion_depertina` (`id_refaccion_despertina`, `id_alimentos`) VALUES
(1, 10),
(1, 11),
(2, 12);


INSERT INTO `detalle_refaccion_matutina` (`id_refaccion_matutina`, `id_alimentos`) VALUES
(1, 13),
(1, 14),
(2, 15),
(1, 13),
(1, 14),
(2, 15);


-- Volcado de datos para la tabla `ficha_tecnica`
--

INSERT INTO `ficha_tecnica` (`id_fecha_tecnica`, `id_usuario`, `edad`, `peso`, `glucosa`, `imc`, `fecha_creacion`, `fecha_finalizacion`, `estado`) VALUES
(1, 1, 35, 54.00, 102, 19.83, '2024-09-03', '2024-09-10', 1),
(2, 1, 70, 54.00, 105, 19.83, '2024-09-03', '2024-09-10', 1),
(3, 1, 50, 10.00, 105, 19.83, '2024-09-03', '2024-09-10', 1);



INSERT INTO `glucosa` (`id_glucosa`, `glucosa_minima`, `glucosa_maxima`, `tipo`, `recomendacion`) VALUES
(1, 70, 99, 'Normal', 'Mantén una dieta equilibrada y ejercicio regular.'),
(2, 100, 125, 'Prediabetes', 'Reduce el consumo de carbohidratos y azúcar, y consulta a un médico.'),
(3, 126, 200, 'Diabetes', 'Consulta a un endocrinólogo, controla tu dieta y monitorea tu glucosa diariamente.'),
(4, 201, 600, 'Hiperglucemia severa', 'Busca atención médica inmediata para prevenir complicaciones graves.'),
(5, 0, 69, 'Hipoglucemia', 'Consume una fuente rápida de azúcar, como jugo de frutas o caramelos, y consulta a un médico.');

-- --


INSERT INTO `menu_dia` (`id_menu`, `id_desayuno`, `id_refaccion_matutina`, `id_almuerzo`, `id_refaccion_despertina`, `id_cena`) VALUES
(1, 1, 1, 1, 1, 1),
(2, 2, 2, 2, 2, 2);


INSERT INTO `paciente` (`id_usuario`, `telefono`, `fecha_nacimiento`, `direccion`, `cui`, `sexo`, `talla`) VALUES
(1, 77884455, '2000-02-02', 'Totonicapan', 1236547899875, 'M', 1.65),
(2, 77884455, '2000-02-02', 'Totonicapan', 1236547899875, 'M', 1.65),
(3, 77884455, '2000-02-02', 'Totonicapan', 1236547899875, 'M', 1.65),
(4, 77662345, '2024-09-21', 'totonicapan', 123456789, 'M', 2.00),
(6, 77662345, '2024-09-21', 'totonicapan', 123456789, 'M', 2.00),
(17, 88776645, '2024-09-05', 'Xela', 56456464, 'M', 2.00);

-- --------------------------------------------------------


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


INSERT INTO `refaccion_despertina` (`id_refaccion_despertina`, `hora_inicial`, `hora_final`, `total_kcal`, `tipo`) VALUES
(1, '10:00:00', '10:15:00', 100, 'Fruta'),
(2, '11:00:00', '11:15:00', 120, 'Yogur');

-- ---


INSERT INTO `refaccion_matutina` (`id_refaccion_matutina`, `hora_inicial`, `hora_final`, `total_kcal`, `tipo`) VALUES
(1, '09:00:00', '09:15:00', 80, 'Nuez'),
(2, '10:00:00', '10:15:00', 90, 'Batido');

--

INSERT INTO `usuario` (`id_usuario`, `nombre`, `usuario`, `contrasena`, `correo`, `rol`) VALUES
(1, 'Gerardo Tax', 'GerardoTax', '123456789', 'gerardo@gmail.com', 'P'),
(2, 'Gerardo Tax', 'Gerardo1Tax', '123456789', 'gerardo1@gmail.com', 'P'),
(3, 'Gerardo Tax', 'Gerardo2Tax', '123456789', 'gerardo2@gmail.com', 'P'),
(4, 'Prueba', 'prueba', '123456789', 'jjcsf@gmial.com', 'P'),
(6, 'Prueba2', 'prueba2', '123456789', 'prueba2@gmial.com', 'P'),
(17, 'Vicente ', 'MV425', '12', 'vicente@gmail.com', 'P');
