-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2019 at 06:51 AM
-- Server version: 5.7.14
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tgfopen_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(9) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `name`, `email`, `username`, `password`) VALUES
(2, 'tgf', 'tgf@tgf', 'tgf', '1cd450a7ac32f4b9a2e3dbc52ab97f72'),
(3, 'admin', 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `id` tinyint(2) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `name`) VALUES
(1, 'Men’s Singles'),
(2, 'Men’s Doubles'),
(3, 'Women’s Singles'),
(4, 'Women’s Doubles'),
(5, 'Mixed Doubles');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `name` varchar(150) NOT NULL,
  `mob_no` bigint(10) UNSIGNED NOT NULL,
  `alt_mob_no` bigint(10) UNSIGNED DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `amount` decimal(7,0) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id` smallint(4) UNSIGNED NOT NULL,
  `partner_mix` varchar(100) DEFAULT NULL,
  `men_single` tinyint(1) NOT NULL DEFAULT '0',
  `men_double` tinyint(1) NOT NULL DEFAULT '0',
  `women_single` tinyint(1) NOT NULL DEFAULT '0',
  `women_double` tinyint(1) NOT NULL DEFAULT '0',
  `mix_double` tinyint(1) NOT NULL DEFAULT '0',
  `partner_double` varchar(100) DEFAULT NULL,
  `is_paid` tinyint(1) NOT NULL DEFAULT '0',
  `pay_at_venue` tinyint(1) NOT NULL DEFAULT '0',
  `payment_id` varchar(500) DEFAULT NULL,
  `is_trash` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`name`, `mob_no`, `alt_mob_no`, `email`, `company`, `amount`, `created_at`, `id`, `partner_mix`, `men_single`, `men_double`, `women_single`, `women_double`, `mix_double`, `partner_double`, `is_paid`, `pay_at_venue`, `payment_id`, `is_trash`) VALUES
('Amruta Kshirsagar', 8379005737, 32432, 'contact2amruta@gmail.com', 'Zenrays Technologies', '300', '2019-05-18 08:05:04', 1, '', 0, 0, 1, 0, 0, '', 0, 0, NULL, 1),
('Amruta Kshirsagar', 8379005737, 1, 'contact2amruta@gmail.com', 'Zenrays Technologies', '300', '2019-05-18 09:04:55', 3, '', 0, 0, 1, 0, 0, '', 0, 0, NULL, 1),
('Amruta Kshirsagar', 8379005737, 0, 'contact2amruta@gmail.com', 'Zenrays Technologies', '300', '2019-05-18 08:06:44', 4, '', 0, 0, 1, 0, 0, '', 0, 0, NULL, 1),
('Amruta Kshirsagar', 8379005737, 0, 'contact2amruta@gmail.com', 'Zenrays Technologies', '300', '2019-05-10 09:20:39', 5, '', 0, 0, 1, 0, 0, '', 0, 0, NULL, 0),
('Amruta Kshirsagar', 8379005737, 0, 'contact2amruta@gmail.com', 'Zenrays Technologies', '300', '2019-05-18 08:06:46', 7, '', 0, 0, 1, 0, 0, '', 1, 0, 'MOJO9510605A29552337', 1),
('Amruta Kshirsagar', 8379005737, 0, 'contact2amruta@gmail.com', 'Zenrays Technologies', '300', '2019-05-18 09:05:01', 8, '', 0, 0, 1, 0, 0, '', 0, 1, NULL, 1),
('K Narayana Swamy', 9535231678, NULL, 'swamy@bangalore.lcllogistix.com', NULL, '700', '2019-05-18 05:31:40', 9, NULL, 1, 1, 0, 0, 0, NULL, 0, 0, 'MOJO9511805D25329143', 0),
('K Narayana Swamy', 9535231678, NULL, 'swamy@bangalore.lcllogistix.com', NULL, '700', '2019-05-18 09:05:24', 10, NULL, 1, 1, 0, 0, 0, NULL, 1, 0, 'MOJO9511805D25329143', 1),
('Amruta Kshirsagar', 8379005737, 0, 'contact2amruta@gmail.com', 'Zenrays Technologies', '400', '2019-05-18 08:00:25', 11, '', 0, 1, 0, 0, 0, 'dsf dsa fdas', 0, 0, NULL, 1),
('Amruta Kshirsagar', 8379005737, 1, 'contact2amruta@gmail.com', 'Zenrays Technologies', '300', '2019-05-18 07:52:39', 21, '', 0, 0, 1, 0, 0, '', 0, 0, NULL, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
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
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` tinyint(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
