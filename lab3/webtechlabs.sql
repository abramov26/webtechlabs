-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: Nov 27, 2022 at 01:05 PM
-- Server version: 8.0.24
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webtechlabs`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int NOT NULL,
  `username` varchar(32) NOT NULL,
  `message` varchar(255) NOT NULL,
  `created_at` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `username`, `message`, `created_at`) VALUES
(1, 'testuser', 'Первый', '2022-11-13'),
(2, 'вася', 'всё супер', '2022-11-13'),
(16, 'кошка', 'мяу-мяу', '2022-11-13');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int NOT NULL,
  `headline` varchar(64) NOT NULL,
  `body` varchar(255) NOT NULL,
  `created_at` varchar(10) NOT NULL,
  `related_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `headline`, `body`, `created_at`, `related_image`) VALUES
(1, 'Первая новость', 'Это случилось', '2022-01-01', '/img/numero-uno.jpg'),
(2, 'Вторая новость', 'Очень неожиданная', '2022-05-03', '/img/number-2.png'),
(3, 'Важная новость', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In sed varius magna, condimentum feugiat leo. Quisque in aliquet neque, sit amet blandit massa. Vivamus fermentum nisi at tempus euismod. Vestibulum ullamcorper quis orci suscipit fringilla.', '2022-11-02', '/img/usatu-logo.png'),
(4, 'ВНИМАНИЕ!', '.', '2022-11-13', '/img/spasiba.jpg'),
(5, 'Новость 5', 'Текст 5', '2022-11-14', '/img/usatu-logo.png'),
(6, 'Новость 6', 'Текст 6', '2022-11-14', '/img/usatu-logo.png'),
(7, 'Новость 7', 'Текст 7', '2022-11-14', '/img/usatu-logo.png'),
(8, 'Последняя новость', 'Это всё.', '2022-11-14', '/img/smiley.svg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
