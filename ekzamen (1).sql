-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2018 at 04:27 AM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ekzamen`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL,
  `categorie_id` int(11) NOT NULL,
  `pubdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `views` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `image`, `text`, `categorie_id`, `pubdate`, `views`) VALUES
(1, 'Avto', 'test_1.jpg', 'A toy was created by some one somewher oneday', 1, '2018-01-16 21:50:49', 21),
(2, 'Car', 'test_2.jpg', 'A toy was created by some one somewher oneday', 1, '2018-01-16 21:54:18', 13),
(3, 'Big screen', 'test_5jpg', 'All what you need this summer', 3, '2018-01-17 03:41:04', 0),
(4, 'Book Gary Poter', 'test_3.jpg', 'A toy was created by some one somewher oneday', 3, '2018-01-16 21:54:32', 12),
(5, 'Big girl', 'test_1.jpg', 'Kukla pozojayka', 2, '2018-01-17 03:38:21', 0),
(7, 'test_1.jpg', 'test_1.jpg', 'test_1.jpg', 3, '2018-01-17 03:38:29', 0),
(8, 'Computer', 'test_1.jpg', 'All what you need', 3, '2018-01-17 03:38:29', 0);

-- --------------------------------------------------------

--
-- Table structure for table `articles_categories`
--

CREATE TABLE `articles_categories` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `articles_categories`
--

INSERT INTO `articles_categories` (`id`, `title`) VALUES
(1, 'Toys for boys'),
(2, 'Toys for girls\r\n'),
(3, 'Toys for teenagers\r\n\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `login` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `id_product`, `login`) VALUES
(1, 2, 'Anvar'),
(2, 5, 'Anvar53'),
(3, 3, 'Akrom');

-- --------------------------------------------------------

--
-- Table structure for table `orders_final`
--

CREATE TABLE `orders_final` (
  `id` int(11) NOT NULL,
  `login` varchar(60) NOT NULL,
  `adress` varchar(200) NOT NULL,
  `id_orders` int(11) NOT NULL,
  `tel` int(11) NOT NULL,
  `sum` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `login` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `password` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `login`, `email`, `password`) VALUES
(1, 'Anvar53', 'rodar@asd.ri', '40bd001563085fc35165329ea1ff5c5ecbdbbeef'),
(2, 'Galya', 'petrovich@ll.ru', '40bd001563085fc35165329ea1ff5c5ecbdbbeef'),
(3, 'Aygul', '12@12.rj', '40bd001563085fc35165329ea1ff5c5ecbdbbeef'),
(4, 'Akrom', 'akra@25', '40bd001563085fc35165329ea1ff5c5ecbdbbeef'),
(11, 'Anvar1', 'rodari53@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef'),
(12, 'Anvar13', 'rodari53@gmail.ru', '40bd001563085fc35165329ea1ff5c5ecbdbbeef'),
(13, '123', '123@1', '40bd001563085fc35165329ea1ff5c5ecbdbbeef');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `articles_categories`
--
ALTER TABLE `articles_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_final`
--
ALTER TABLE `orders_final`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `articles_categories`
--
ALTER TABLE `articles_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders_final`
--
ALTER TABLE `orders_final`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
