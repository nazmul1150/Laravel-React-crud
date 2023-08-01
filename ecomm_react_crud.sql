-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 01, 2023 at 02:46 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomm_react_crud`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `file_path` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `price` varchar(50) NOT NULL,
  `updated_at` date NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `file_path`, `description`, `price`, `updated_at`, `created_at`) VALUES
(19, 'SteelSeries Apex 7 TKL Compact Mechanical Gaming Keyboard', 'products/xD5A4hG6M9eGrL9HG7TAABYm32zmxVoJBwXWViUi.jpg', 'OLED smart display: An integrated command', '120$', '2022-06-24', '2022-06-24'),
(20, 'phons', 'products/pncg13iZoOCTLUrOb9WIfQ97hWe346DXjoLlDQ9r.jpg', 'made in china', '12000', '2022-06-24', '2022-06-24'),
(21, 'undefined', 'products/3dIuaEBypICvJ1QxL8ungOxLoJL7YL8bU8Its37K.jpg', 'undefined', 'undefined', '2022-06-24', '2022-06-24');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'nazmul', 'naz@gmail.com', '$2y$10$wyc/UqaTIQW4a8Mh58R/0OEh0d.haVCbfiU7gXl1u0S6r5H7XRN6q'),
(2, 'anil', 'anil@gmail.com', '$2y$10$V3WgtEgTA45wRgtrYEYz0OXBlFZcOgcx8aSR4BxtR7BWQS7UqrDQS'),
(3, 'nafis', 'nafis@gmail.com', '$2y$10$BUcwpJ9iULGxMUNByBVVW.hBr.72Q3LdrmDOHT0oiciy4Xlph1KoS'),
(4, 'gfhghg', 'fgfg@gmail.com', '$2y$10$bBnZIXUZ4k8onUNsSbMf1eVfG.JzgTbqrMR9lv1gxJRmCshoRjQfu'),
(5, 'badon', 'badon@gmail.com', '$2y$10$oHWsqkreppaeGYPrpt/r2uzjQrAbMiLwjQDWSbPQzoyxGSCLNfBLO'),
(6, 'af', 'af@gmail.com', '$2y$10$eZ2QGxLQiFEpxjLT.b/By.IIe5sP/ge5PKupMiqSPJraAQozKE1n6'),
(7, 'dul', 'dul@gmail.com', '$2y$10$YFNQpHEzmltNKSeNAntTyu0AzirJf3FacezqCJ1EuvBoi6yFtgwsi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
