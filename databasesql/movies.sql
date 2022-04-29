-- phpMyAdmin SQL Dump
-- version 5.2.0-rc1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 29-04-2022 a las 07:49:58
-- Versión del servidor: 8.0.29
-- Versión de PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `moviesemjvp`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movies`
--

CREATE TABLE `movies` (
  `id` int NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `cover_image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `duration` int DEFAULT NULL,
  `categories` json DEFAULT NULL,
  `youtube_trailer_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `seen` tinyint(1) DEFAULT '0',
  `release_date` date NOT NULL,
  `rate` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `movies`
--

INSERT INTO `movies` (`id`, `title`, `cover_image`, `description`, `duration`, `categories`, `youtube_trailer_url`, `seen`, `release_date`, `rate`) VALUES
(1, 'DOCTOR STRANGE IN THE MULTIVERSE OF MADNESS', 'https://images.fandango.com/ImageRenderer/200/0/redesign/static/img/default_poster.png/0/images/masterrepository/Fandango/222999/FND_poster_DrStrange_PreSale[94].jpg', 'In Marvel Studios’ “Doctor Strange in the Multiverse of Madness,” the MCU unlocks the Multiverse and pushes its boundaries further than ever before. Journey into the unknown with Doctor Strange, who, with the help of mystical allies both old and new, traverses the mind-bending and dangerous alternate realities of the Multiverse to confront a mysterious new adversary.', 192, '{\"name\": \"fantasy\"}', 'https://www.youtube.com/watch?v=aWzlQ2N6qqg', 0, '2022-05-06', 0),
(2, 'Fantastic Beasts: The Secrets of Dumbledore', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR05Pz4KhR1duYx2RsHeZBYkNlcA9_UDv50BCUcjVguu4loZZA0', 'In Marvel Studios’ “Doctor Strange in the Multiverse of Madness,” the MCU unlocks the Multiverse and pushes its boundaries further than ever before. Journey into the unknown with Doctor Strange, who, with the help of mystical allies both old and new, traverses the mind-bending and dangerous alternate realities of the Multiverse to confront a mysterious new adversary.', 192, '[{\"name\": \"fantasy\"}]', 'https://www.youtube.com/watch?v=Y9dr2zw-TXQ', 0, '2022-04-14', 0),
(3, 'Sonic the Hedgehog 2', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9lJeR2hUpyF71LLRDXWgfpj8sdowJVyLbMb1z4UZTjs68eRyQ', 'After settling in Green Hills, Sonic is eager to prove that he has what it takes to be a true hero. His test comes when Dr. Robotnik returns with a new partner, Knuckles, in search of a mystical emerald that has the power to destroy civilizations. Sonic teams up with his own sidekick, Tails, and together they embark on a globe-trotting journey to find the emerald before it falls into the wrong hands.', 192, '[{\"name\": \"fantasy\"}, {\"name\": \"sc-fi\"}]', 'https://whttps://www.youtube.com/watch?v=47r8FXYZWNUww.youtube.com/watch?v=aWzlQ2N6qqg', 0, '2022-04-07', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
