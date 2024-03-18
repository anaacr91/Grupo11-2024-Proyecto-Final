-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-03-2024 a las 16:25:22
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cultural_compass_data`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name_category` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `category`
--

INSERT INTO `category` (`id`, `name_category`) VALUES
(1, 'ARTE DIGITAL'),
(2, 'EXPOSICION CULTURAL'),
(3, 'TEATRO'),
(4, 'CONCIERTOS'),
(5, 'CULTURA CATALANA'),
(6, 'EXPOSICION ARTISTICA'),
(7, 'FERIA GASTRONOMICA'),
(8, 'EVENTO DEPORTIVO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evento`
--

CREATE TABLE `evento` (
  `id` int(11) NOT NULL,
  `name_event` varchar(100) DEFAULT NULL,
  `start_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `end_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `description` varchar(1000) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `organizer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `evento`
--

INSERT INTO `evento` (`id`, `name_event`, `start_at`, `end_at`, `description`, `status`, `url`, `category_id`, `location_id`, `organizer_id`) VALUES
(1, 'THE GREAT LIBRARY OF TOMORROW', '2024-03-15 21:03:10', '2024-05-15 19:32:43', 'Más de 1000 m2 de instalaciones de arte digital para vivir inmersivamente en un metaverso de realidad virtual en el Espacio Aribau.', 'ACTIVA', 'https://www.thegreatlibraryoftomorrow.com', 1, 1, 1),
(2, 'DINOSAURIOS DE LA PATAGONIA', '2024-03-15 20:53:29', '2024-06-02 19:53:29', 'Los descubrimientos más emocionantes sobre los dinosaurios del CosmoCaixa de Barcelona.', 'ACTIVA', 'https://cosmocaixa.org/es/p/dinosaurios-de-la-patagonia_a161193314?gad_source=1&gclid=CjwKCAjw48-vBh', 2, 2, 2),
(3, 'BARCELONA BEER FESTIVAL', '2024-03-22 21:01:36', '2024-03-24 21:01:36', 'El Barcelona Beer Festival es el punto de encuentro de aficionados y profesionales de la cerveza artesana más grande del sur de Europa. Una experiencia gastronómica que te adentrará en un auténtico universo sensorial donde descubrirás las mil y una posibilidades de esta suculenta bebida.', 'PROXIMAMENTE', 'https://barcelonabeerfestival.com/es/', 7, 3, 3),
(4, 'OFFF.BARCELONA', '2024-04-04 20:09:18', '2024-04-06 20:09:18', 'Vuelve el festival de creatividad digital OFFF Barcelona. Conferencias, exposiciones, instalaciones interactivas y mucho más para descubrir la actualidad las personas más talentosas del sector.', 'PROXIMAMENTE', 'https://www.offf.barcelona/', 6, 4, 4),
(5, 'TROFEO CONDE GODO', '2024-04-13 20:15:45', '2024-04-21 20:15:45', 'El tenis de máximo nivel llega a Barcelona y enfrenta a las figuras más destacadas del mundo durante una emocionante semana.', 'PROXIMAMENTE', 'https://www.barcelonaopenbancsabadell.com/', 8, 5, 5),
(6, 'SANT JORDI', '2024-04-23 20:21:16', '2024-04-24 20:21:16', 'La fiesta más esperada por los barceloneses y barcelonesas te dejará con la boca abierta. La ciudad se inunda de puestos con libros y rosas para celebrar por todo lo alto la cultura y el amor.', 'PROXIMAMENTE', 'https://www.rosessantjordi.com/es/sant-jordi-2024/', 5, 6, 6),
(7, 'SALON DEL COMIC', '2024-05-03 20:27:39', '2024-05-05 20:27:39', 'Una cita ideal para toda la familia: exposiciones, talleres, encuentros con autores, mesas redondas, juegos de rol… ¡diversión asegurada!', 'PROXIMAMENTE', 'https://www.comic-barcelona.com/es/inicio.cfm', 2, 3, 7),
(8, 'MOTO GP', '2024-05-24 20:35:01', '2024-05-26 20:35:01', 'Vibra con los grandes de las dos ruedas y disfruta de actividades complementarias en el Circuit de Barcelona-Catalunya con el Gran premio Monster Energy de Catalunya Moto GP, la competición para los y las amantes del motociclismo.', 'PROXIMAMENTE', 'https://www.circuitcat.com/es', 8, 7, 8),
(9, 'PRIMAVERA SOUND', '2024-05-29 20:42:56', '2024-06-02 20:42:56', 'No te pierdas uno de los festivales de música alternativa más importante de Europa. El Barcelona Primavera Sound impacta cada año con su extenso cartel de artistas de prestigio internacional ¡Imprescindible si lo tuyo es la música independiente!', 'PROXIMAMENTE', 'www.primaverasound.com', 4, 8, 9),
(10, 'SONAR', '2024-06-13 20:48:33', '2024-06-15 20:48:33', 'Forma parte de un hito único asistiendo al festival más innovador del mundo. Desde 1994 el Sónar trasciende y ofrece lo último en lenguaje multimedia y arte y música electrónica, lo que lo convierte en un referente internacional.', 'PROXIMAMENTE', 'https://sonar.es/', 4, 3, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `location`
--

CREATE TABLE `location` (
  `id` int(11) NOT NULL,
  `name_location` varchar(200) DEFAULT NULL,
  `additional_info` varchar(1000) DEFAULT NULL,
  `longitud` float DEFAULT NULL,
  `latitud` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `location`
--

INSERT INTO `location` (`id`, `name_location`, `additional_info`, `longitud`, `latitud`) VALUES
(1, 'BARCELONA- ARIBAU IMMERSIVE SPACE', 'C/ d\'Aribau, 5, 08011, Barcelona, Spain', 2.15977, 41.3902),
(2, 'BARCELONA- COSMOCAIXA', 'C.ISAAC NEWTON, 26, BARCELONA', 2.04067, 41.4901),
(3, 'BARCELONA- FIRA DE BARCELONA', 'Av. de la Reina Maria Cristina, s/n, Sants-Montjuïc, 08004 Barcelona', 2.15151, 41.3719),
(4, 'BARCELONA- PLAZA GLORIES CATALANES', 'Pl. De Les Glòries Catalanes, 38, Sant Martí, 08018 Barcelona', 2.1882, 41.403),
(5, 'BARCELONA- REAL CLUB DE TENIS', 'C/ De Bosch I Gimpera, 5, Les Corts, 08034 Barcelona', 2.11832, 41.3937),
(6, 'BARCELONA- PASEO DE GRACIA', 'PASEO DE GRACIA, 45', 2.16391, 41.393),
(7, 'MONTMELÓ- CIRCUITO', 'Ctra. Granollers, km. 2, 08160 Parets del Vallès, Barcelona', 2.256, 41.5722),
(8, 'PARC DEL FORUM', 'Carrer de la Pau, 12, 08930 Sant Adrià de Besòs, Barcelona', 1.24862, 41.1147);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `organizer`
--

CREATE TABLE `organizer` (
  `id` int(11) NOT NULL,
  `name_org` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `url` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `organizer`
--

INSERT INTO `organizer` (`id`, `name_org`, `email`, `phone`, `company`, `url`) VALUES
(1, 'TOMORROWLAND', 'https://www.instagram.com/tomorrowland/', NULL, 'TOMORROWLAND', 'www.tomorrowland.com'),
(2, 'COSMOCAIXA', 'icosmocaixa@magmacultura.com', '932 126 050', 'COSMOCAIXA', 'https://cosmocaixa.org/'),
(3, 'BBF', 'info@barcelonabeerfestival.com', NULL, 'BEER EVENTS S.L.', 'https://barcelonabeerfestival.com/'),
(4, 'OFFFEST', 'INFO@OFFF.BARCELONA', NULL, 'OFFF', 'https://www.offf.barcelona/'),
(5, 'BCN OPEN BANC SABADELL ', 'info@barcelonaopenbancsabadell.com', '932 03 78 52', 'OPEN BANC SABADELL', 'https://www.barcelonaopenbancsabadell.com/'),
(6, 'BARCELONA- AJUNTAMENT', 'bigestio@bcn.cat', '934027000', 'AJUNTAMENT BARCELONA', 'https://ajuntament.barcelona.cat/'),
(7, 'FICOMIC', ' info@ficomic.com', NULL, 'FICOMIC', 'https://www.ficomic.com/es/inicio.cfm'),
(8, 'CIRCUIT DE CATALUNYA', 'info@circuitcat.com', '(34) 93 571 97 00', 'CIRCUIT DE CATALUNYA', 'https://www.circuitcat.com/es/como-llegar-a-montmelo-2/'),
(9, 'PRIMAVERA SOUND', 'info@primaverasound.com', '+34 93 301 00 90', 'PRIMAVERA SOUND S.L.', 'www.primaverasound.com'),
(10, 'ADVANCED MUSIC', 'info@sonar.es.', ' 933 20 81 63 ', 'ADVANCED MUSIC.S.L', 'http://www.sonar.es');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `name_rol` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `role`
--

INSERT INTO `role` (`id`, `name_rol`) VALUES
(1, 'user'),
(2, 'organizer'),
(3, 'admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tag`
--

CREATE TABLE `tag` (
  `id` int(11) NOT NULL,
  `name_tag` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `email` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `role_id`, `is_active`, `created_at`, `email`) VALUES
(1, 'ana', '123', 3, 1, '2024-03-17 09:52:31', 'anacascanterodriguez@gmail.com'),
(2, 'yassir', '1234', 3, 1, '2024-03-18 15:21:22', 'ysrmrn1998@gmail.com'),
(3, 'bernat', '1234', 3, 1, '2024-03-18 15:21:22', 'bernesimobosch@gmail.com'),
(4, 'artur1', '1234', 2, 1, '2024-03-18 15:23:01', 'ludmilla.tartu@gmail.com'),
(5, 'artur2', '1234', 2, 1, '2024-03-18 15:23:01', 'arthur.trubitsin@gmail.com'),
(6, 'artur3', '1234', 1, 1, '2024-03-18 15:24:41', 'gynvael@pm.me');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `evento`
--
ALTER TABLE `evento`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `organizer_id` (`organizer_id`);

--
-- Indices de la tabla `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `organizer`
--
ALTER TABLE `organizer`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `evento`
--
ALTER TABLE `evento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `location`
--
ALTER TABLE `location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `organizer`
--
ALTER TABLE `organizer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `evento`
--
ALTER TABLE `evento`
  ADD CONSTRAINT `evento_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `evento_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`),
  ADD CONSTRAINT `evento_ibfk_3` FOREIGN KEY (`organizer_id`) REFERENCES `organizer` (`id`);

--
-- Filtros para la tabla `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
