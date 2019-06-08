-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 24, 2019 at 09:18 AM
-- Server version: 5.6.41-84.1
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shiksha_tgfopen`
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
(2, 'TGFOpen', 'girish.v@tgfworld.com', 'tgf_event_admin', '3b2b8f9bdee370943db8fc97d34593ac');

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
('Chandru', 7204286996, 7892349763, 'mechandu84@gmail.com', 'Capital shipping pvt ltd', '700', '2019-05-10 05:45:28', 132, 'Later wil give my partner name', 1, 1, 0, 0, 0, 'Mr.Balakrishnan rai', 0, 1, NULL, 0),
('JOHN PRADEEP', 9844087880, 0, 'john.blr@cargocareindia.in', 'CARGO CARE SHIPPING & FORWARDING INDIA PVT LTD. ', '300', '2019-05-10 06:29:57', 133, '0', 1, 0, 0, 0, 0, 'ARUN ', 0, 1, NULL, 0),
('GIRISH V', 9036617003, 0, 'girish.v@tgfworld.com', 'TGF', '300', '2019-05-20 06:33:05', 134, '', 1, 0, 0, 0, 0, '', 0, 1, NULL, 1),
('GIRISH V', 9036617003, 0, 'girish.v@tgfworld.com', 'TGF', '300', '2019-05-18 08:15:37', 135, '', 1, 0, 0, 0, 0, '', 0, 0, NULL, 1),
('GIRISH V', 9036617003, 0, 'girish.v@tgfworld.com', 'TGF', '300', '2019-05-18 09:30:14', 136, '', 1, 0, 0, 0, 0, '', 0, 0, NULL, 1),
('GIRISH V', 9036617003, 0, 'girish.v@tgfworld.com', 'TGF', '300', '2019-05-18 09:25:39', 137, '', 1, 0, 0, 0, 0, '', 0, 0, NULL, 1),
('GIRISH V', 9036617003, 0, 'girish.v@tgfworld.com', 'TGF', '300', '2019-05-18 09:30:19', 138, '', 1, 0, 0, 0, 0, '', 0, 0, NULL, 1),
('GIRISH V', 9036617003, 0, 'girish.v@tgfworld.com', 'TGF', '300', '2019-05-18 10:01:08', 139, '', 1, 0, 0, 0, 0, '', 0, 1, NULL, 1),
('Girish V', 9036617003, 0, 'girish.v@tgfworld.com', 'Tgf', '300', '2019-05-18 10:01:00', 140, '', 1, 0, 0, 0, 0, '', 0, 1, NULL, 1),
('Abc', 8569423698, 8569856985, 'abc@ggg.com', 'Abc@ggg.con', '300', '2019-05-18 10:01:39', 141, '', 0, 0, 1, 0, 0, '', 0, 1, NULL, 1),
('Babu', 9686602686, 0, 'babu@blr.tripathlogistics.com', 'Tripath Logistics Pvt Ltd ', '400', '2019-05-18 10:02:12', 142, '', 0, 1, 0, 0, 0, 'Sunil', 0, 1, NULL, 1),
('Babu', 9686602686, 0, 'babu@blr.tripathlogistics.com', 'Tripath Logistics Pvt Ltd ', '400', '2019-05-18 10:02:22', 143, '', 0, 1, 0, 0, 0, 'Sunil', 0, 1, NULL, 1),
('Babu', 9686602686, 0, 'babu@blr.tripathlogistics.com', 'Tripath Logistics Pvt Ltd ', '700', '2019-05-18 09:24:44', 144, '', 1, 1, 0, 0, 0, 'Sunil', 0, 1, NULL, 1),
('Babu', 9686602686, 0, 'babu@blr.tripathlogistics.com', 'Tripath Logistics Pvt Ltd ', '700', '2019-05-18 10:01:35', 145, '', 1, 1, 0, 0, 0, 'Sunil', 0, 0, NULL, 1),
('Babu', 9686602686, 1, 'babu@blr.tripathlogistics.com', 'Tripath Logistics Pvt Ltd ', '700', '2019-05-18 10:01:32', 146, '', 1, 1, 0, 0, 0, 'Sunil', 0, 1, NULL, 1),
('Balakrishna Rai', 9886495043, 8041658854, 'rai.kavericargo@gmail.com', 'Kaveri Cargo International', '700', '2019-05-12 13:19:16', 147, 'Smitha', 1, 0, 0, 0, 1, '', 0, 1, NULL, 0),
('Babu', 9689602686, 0, 'babu@blr.tripathlogistics.com', 'Tripath logistics pvt ltd', '700', '2019-05-18 10:02:06', 148, 'Sunil', 1, 1, 0, 0, 0, 'Sunil', 0, 1, NULL, 1),
('Babu', 9689602686, 0, 'babu@blr.tripathlogistics.com', 'Tripath logistics pvt ltd', '700', '2019-05-18 09:30:54', 149, 'Sunil', 1, 1, 0, 0, 0, 'Sunil', 0, 0, NULL, 1),
('Babu', 9689602686, 0, 'babu@blr.tripathlogistics.com', 'Tripath logistics pvt ltd', '700', '2019-05-18 10:02:15', 150, 'Sunil', 1, 1, 0, 0, 0, 'Sunil', 0, 1, NULL, 1),
('Babu', 9689602686, 9686602689, 'babu@blr.tripathlogistics.com', 'Tripath logistics pvt ltd', '700', '2019-05-18 09:31:01', 151, 'Sunil', 1, 1, 0, 0, 0, 'Sunil', 0, 1, NULL, 1),
('Babu', 9689602686, 9686602689, 'babu@blr.tripathlogistics.com', 'Tripath logistics pvt ltd', '700', '2019-05-13 14:44:37', 152, 'Sunil', 1, 1, 0, 0, 0, 'Sunil', 0, 1, NULL, 0),
('Babu', 9689602686, 9686602689, 'babu@blr.tripathlogistics.com', 'Tripath logistics pvt ltd', '700', '2019-05-20 06:48:05', 153, 'Sunil', 1, 1, 0, 0, 0, 'Sunil', 0, 1, NULL, 1),
('Babu', 9689602686, 9686602689, 'babu@blr.tripathlogistics.com', 'Tripath logistics pvt ltd', '700', '2019-05-18 09:31:26', 154, 'Sunil', 1, 1, 0, 0, 0, 'Sunil', 0, 1, NULL, 1),
('Babu', 9689602686, 9686602689, 'babu@blr.tripathlogistics.com', 'Tripath logistics pvt ltd', '700', '2019-05-18 10:02:33', 155, 'Sunil', 1, 1, 0, 0, 0, 'Sunil', 0, 1, NULL, 1),
('Babu', 9689602686, 9686602686, 'babu@blr.tripathlogistics.com', 'Tripath logistics pvt ltd', '700', '2019-05-18 10:02:29', 156, 'Sunil', 1, 1, 0, 0, 0, 'Sunil', 0, 1, NULL, 1),
('Babu', 9689602686, 9686602686, 'babu@blr.tripathlogistics.com', 'Tripath logistics pvt ltd', '700', '2019-05-18 10:01:56', 157, 'Sunil', 1, 1, 0, 0, 0, 'Sunil', 0, 1, NULL, 1),
('Babu', 9689602686, 9686602686, 'babu@blr.tripathlogistics.com', 'Tripath logistics pvt ltd', '700', '2019-05-18 10:01:55', 158, 'Sunil', 1, 1, 0, 0, 0, 'Sunil', 0, 1, NULL, 1),
('Babu', 9689602686, 9686602686, 'babu@blr.tripathlogistics.com', 'Tripath logistics pvt ltd', '700', '2019-05-18 09:31:39', 159, 'Sunil', 1, 1, 0, 0, 0, 'Sunil', 0, 1, NULL, 1),
('Babu', 9689602686, 9686602686, 'babu@blr.tripathlogistics.com', 'Tripath logistics pvt ltd', '700', '2019-05-18 09:31:11', 160, 'Sunil', 1, 1, 0, 0, 0, 'Sunil', 0, 1, NULL, 1),
('Babu', 9689602686, 9686602686, 'babu@blr.tripathlogistics.com', 'Tripath logistics pvt ltd', '700', '2019-05-18 10:01:54', 161, 'Sunil', 1, 1, 0, 0, 0, 'Sunil', 0, 1, NULL, 1),
('Babu', 9686602686, 9686602686, 'babu@blr.tripathlogistics.com', 'Tripath logistics pvt ltd', '700', '2019-05-18 10:02:01', 162, 'Sunil', 1, 1, 0, 0, 0, 'Sunil', 0, 1, NULL, 1),
('Kiran p d', 7907286146, 0, 'it.support@mactel.co.in', 'mactel infotech pvt lmtd ', '300', '2019-05-20 06:33:19', 163, '', 1, 0, 0, 0, 0, '', 0, 1, NULL, 1),
('Kiran p d', 7907286146, 0, 'it.support@mactel.co.in', 'mactel infotech pvt lmtd ', '300', '2019-05-20 06:33:23', 164, '', 1, 0, 0, 0, 0, '', 0, 1, NULL, 1),
('Kiran p d', 7907286146, 0, 'it.support@mactel.co.in', 'mactel infotech pvt lmtd ', '300', '2019-05-20 06:33:29', 165, '', 1, 0, 0, 0, 0, '', 0, 1, NULL, 1),
('Kiran p d', 7907286146, 0, 'it.support@mactel.co.in', 'mactel infotech pvt lmtd ', '300', '2019-05-20 06:33:34', 166, '', 1, 0, 0, 0, 0, '', 0, 1, NULL, 1),
('Kiran p d', 7907286146, 0, 'it.support@mactel.co.in', 'mactel infotech pvt lmtd ', '300', '2019-05-18 09:23:48', 167, '', 1, 0, 0, 0, 0, '', 0, 1, NULL, 1),
('Kiran p d', 7907286146, 0, 'it.support@mactel.co.in', 'mactel infotech pvt lmtd ', '300', '2019-05-20 06:33:40', 168, '', 1, 0, 0, 0, 0, '', 0, 1, NULL, 1),
('Kiran p d', 7907286146, 0, 'it.support@mactel.co.in', 'mactel infotech pvt lmtd ', '300', '2019-05-20 06:33:47', 169, '', 1, 0, 0, 0, 0, '', 0, 1, NULL, 1),
('Kiran p d', 7907286146, 0, 'it.support@mactel.co.in', 'mactel infotech pvt lmtd ', '300', '2019-05-15 06:18:16', 170, '', 1, 0, 0, 0, 0, '', 0, 1, NULL, 0),
('Kiran p d', 7907286146, 0, 'it.support@mactel.co.in', 'mactel infotech pvt lmtd ', '300', '2019-05-20 06:33:15', 171, '', 1, 0, 0, 0, 0, '', 0, 1, NULL, 1),
('Kiran p d', 7907286146, 0, 'it.support@mactel.co.in', 'mactel infotech pvt lmtd ', '300', '2019-05-18 10:01:47', 172, '', 1, 0, 0, 0, 0, '', 0, 1, NULL, 1),
('Test', 1234567890, 987654321, 'test@test.com', 'abc', '300', '2019-05-18 10:02:58', 173, '', 1, 0, 0, 0, 0, '', 0, 1, NULL, 1),
('GIRISH V', 9036617003, 0, 'girish.v@tgfworld.com', 'TGF', '300', '2019-05-20 06:33:51', 174, '', 1, 0, 0, 0, 0, '', 0, 1, NULL, 1),
('GIRISH V', 9036617003, 0, 'girish.v@tgfworld.com', 'TGF', '300', '2019-05-20 06:33:56', 175, '', 1, 0, 0, 0, 0, '', 0, 1, NULL, 1),
('dummy', 0, 0, 'dummy@dummy.com', 'dummy', '300', '2019-05-18 10:03:02', 176, '', 0, 0, 1, 0, 0, '', 0, 0, NULL, 1),
('dummy', 0, 0, 'dummy@dummy.com', 'dummy', '300', '2019-05-18 09:06:44', 177, '', 0, 0, 1, 0, 0, '', 0, 1, NULL, 1),
('test', 9947758279, 0, 'test@gmail.com', 'tgf', '300', '2019-05-18 08:11:32', 178, '', 1, 0, 0, 0, 0, '', 0, 1, NULL, 1),
('test', 0, 0, 'test@test.com', 'test', '300', '2019-05-18 09:30:35', 179, '', 0, 0, 1, 0, 0, '', 0, 1, NULL, 1),
('test', 0, 0, 'test@test.com', 'test', '300', '2019-05-18 09:22:28', 180, '', 0, 0, 1, 0, 0, '', 0, 1, NULL, 1),
('test', 0, 0, 'test@test.com', 'test', '300', '2019-05-18 09:22:32', 181, '', 0, 0, 1, 0, 0, '', 0, 1, NULL, 1),
('test', 8379005737, 0, 'test@test.co', 'zenrays', '300', '2019-05-18 09:22:37', 182, '', 0, 0, 1, 0, 0, '', 0, 0, NULL, 1),
('johnbritto ', 9591998200, 96869944200, 'johnbritto@globallogistics.co.in', 'GLOBAL LOGISTICS SOLUTIONS I PVT LTD', '400', '2019-05-15 07:26:22', 183, '', 0, 1, 0, 0, 0, 'MURALI', 0, 1, NULL, 0),
('johnbritto ', 9591998200, 96869944200, 'johnbritto@globallogistics.co.in', 'GLOBAL LOGISTICS SOLUTIONS I PVT LTD', '400', '2019-05-18 09:24:32', 184, '', 0, 1, 0, 0, 0, 'MURALI', 0, 1, NULL, 1),
('johnbritto ', 9591998200, 96869944200, 'johnbritto@globallogistics.co.in', 'GLOBAL LOGISTICS SOLUTIONS I PVT LTD', '400', '2019-05-18 09:24:55', 185, '', 0, 1, 0, 0, 0, 'MURALI', 0, 1, NULL, 1),
('johnbritto ', 9591998200, 96869944200, 'johnbritto@globallogistics.co.in', 'GLOBAL LOGISTICS SOLUTIONS I PVT LTD', '400', '2019-05-20 06:48:20', 186, '', 0, 1, 0, 0, 0, 'MURALI', 0, 1, NULL, 1),
('johnbritto ', 9591998200, 96869944200, 'johnbritto@globallogistics.co.in', 'GLOBAL LOGISTICS SOLUTIONS I PVT LTD', '400', '2019-05-20 06:48:15', 187, '', 0, 1, 0, 0, 0, 'MURALI', 0, 0, NULL, 1),
('johnbritto ', 9591998200, 96869944200, 'johnbritto@globallogistics.co.in', 'GLOBAL LOGISTICS SOLUTIONS I PVT LTD', '400', '2019-05-20 06:48:11', 188, '', 0, 1, 0, 0, 0, 'MURALI', 0, 1, NULL, 1),
('Girish V', 9036617003, 0, 'girish.v@tgfworld.com', 'Transys Global Forwarding', '400', '2019-05-15 08:43:35', 189, '', 0, 1, 0, 0, 0, 'Sumit Varma', 1, 0, 'MOJO9515205A73740648', 0),
('Test', 9611110083, 0, 'vinod@tgfworld.com', 'Transys Global Forwarding', '300', '2019-05-18 09:23:25', 190, '', 1, 0, 0, 0, 0, '', 0, 1, NULL, 1),
('test', 1, 0, 'test@test.co', 'test', '300', '2019-05-18 10:03:09', 191, '', 0, 0, 1, 0, 0, '', 0, 1, NULL, 1),
('test', 1, 0, 'test@test.co', 'test', '300', '2019-05-18 10:03:15', 192, '', 0, 0, 1, 0, 0, '', 0, 1, NULL, 1),
('Test', 1234583734, 73737773737, 'test@test.com', '6543683883', '300', '2019-05-18 10:02:53', 193, '', 1, 0, 0, 0, 0, '', 0, 1, NULL, 1),
('K Narayana Swamy', 9535231678, NULL, 'swamy@bangalore.lcllogistix.com', NULL, '700', '2019-05-18 05:47:53', 194, NULL, 1, 1, 0, 0, 0, NULL, 1, 0, 'MOJO9511805D25329143', 0),
('K Mathew Salim Philip', 9900251358, 9886265493, 'salim.philip@sevenseasexpress.com', 'Sevenseas Global Express Logistics Pvt Ltd ', '400', '2019-05-18 05:49:20', 195, '', 0, 1, 0, 0, 0, 'T J SIJO', 0, 1, NULL, 0),
('BIJU THOMAS ', 9886265493, 9880960088, 'hrd@sevensesexpress.com', 'Sevenseas Global Express Logistics Pvt Ltd ', '400', '2019-05-18 05:52:58', 196, '', 0, 1, 0, 0, 0, 'JAYARAJ MENON', 0, 1, NULL, 0),
('Arvind', 9731999843, 8095794212, 'arvind@triogroup.net', 'Trio Shipping Services Pvt Ltd', '700', '2019-05-18 08:13:17', 197, '', 1, 1, 0, 0, 0, 'Bharath', 0, 1, NULL, 1),
('Arvind', 9731999843, 8095794212, 'arvind@triogroup.net', 'Trio Shipping Services Pvt Ltd', '700', '2019-05-18 06:00:06', 198, '', 1, 1, 0, 0, 0, 'Bharath', 0, 1, NULL, 0),
('Arvind', 9731999843, 8095794212, 'arvind@triogroup.net', 'Trio Shipping Services Pvt Ltd', '700', '2019-05-20 06:48:32', 199, '', 1, 1, 0, 0, 0, 'Bharath', 0, 1, NULL, 1),
('Arvind', 9731999843, 8095794212, 'arvind@triogroup.net', 'Trio Shipping Services Pvt Ltd', '700', '2019-05-18 09:02:04', 200, '', 1, 1, 0, 0, 0, 'Bharath', 0, 1, NULL, 1),
('Arvind', 9731999843, 8095794212, 'arvind@triogroup.net', 'Trio Shipping Services Pvt Ltd', '700', '2019-05-20 06:48:27', 201, '', 1, 1, 0, 0, 0, 'Bharath', 0, 0, NULL, 1),
('JOHN PRADEEP', 9844087880, NULL, 'john.blr@cargocareindia.in', NULL, '300', '2019-05-18 06:46:07', 202, NULL, 1, 0, 0, 0, 0, NULL, 1, 0, 'MOJO9510X05A66603590', 0),
('Sumit Varma', 9619001088, NULL, 'sumit@prateeksha.net', NULL, '700', '2019-05-18 09:28:30', 203, NULL, 0, 0, 1, 1, 0, NULL, 1, 0, 'MOJO9507G05N79921496', 1),
('Sumit Varma', 9619001088, NULL, 'sumit@prateeksha.net', NULL, '700', '2019-05-18 09:27:54', 204, NULL, 1, 1, 0, 0, 0, NULL, 1, 0, 'MOJO9507G05N79921496', 0),
('Vinod.p', 7829917421, 0, 'vinodp@flyjac.com', 'Flyjac logistics pvt ltd', '400', '2019-05-20 15:44:23', 205, '', 0, 1, 0, 0, 0, 'Rajesh.m', 0, 1, NULL, 0),
('Rajesh m', 7299973763, 0, 'rajesh@flyjac.com', 'Flyjac logistics pvt ltd', '300', '2019-05-20 15:48:21', 206, '', 1, 0, 0, 0, 0, '', 0, 1, NULL, 0),
('Basil Jacob', 9686994420, 0, 'expmktg1.blr@globallogistics.co.in', 'GLOBAL LOGISTICS SOLUTIONS (INDIA) PVT LTD', '700', '2019-05-21 06:55:48', 207, '', 1, 1, 0, 0, 0, 'Mano Bala', 0, 1, NULL, 0),
('John britto', 9591998200, 9591998200, 'johnbritto@globallogistics.co.in', 'GLOBAL LOGISTICS SOLUTIONS (INDIA) PVT LTD', '700', '2019-05-21 06:59:25', 208, '', 1, 1, 0, 0, 0, 'Murali J', 0, 1, NULL, 0),
('John britto', 9591998200, 9591998200, 'johnbritto@globallogistics.co.in', 'GLOBAL LOGISTICS SOLUTIONS (INDIA) PVT LTD', '700', '2019-05-21 08:41:54', 209, '', 1, 1, 0, 0, 0, 'Murali J', 0, 1, NULL, 1),
('John britto', 9591998200, 9591998200, 'johnbritto@globallogistics.co.in', 'GLOBAL LOGISTICS SOLUTIONS (INDIA) PVT LTD', '700', '2019-05-21 08:41:15', 210, '', 1, 1, 0, 0, 0, 'Murali J', 0, 1, NULL, 1),
('Sunil kullu', 9110242303, 9916390029, 'kullu2010@gmail.com', 'Customs Airport', '400', '2019-05-21 08:41:46', 211, '', 0, 1, 0, 0, 0, 'J P Meena', 0, 0, NULL, 1),
('SUNIL KULLU', 9110242303, 9916390029, 'kullu2010@gmail.com', 'Customs Airport', '400', '2019-05-21 08:39:56', 212, '', 0, 1, 0, 0, 0, 'J P Meena', 0, 0, NULL, 1),
('SUNIL KULLU', 9110242303, 9916390029, 'kullu2010@gmail.com', 'Customs Airport', '400', '2019-05-21 08:24:21', 213, '', 0, 1, 0, 0, 0, 'J P Meena', 0, 0, NULL, 0),
('SUNIL KULLU', 9110242303, 9916390029, 'kullu2010@gmail.com', 'Customs Airport', '400', '2019-05-21 08:41:35', 214, '', 0, 1, 0, 0, 0, 'J P Meena', 0, 0, NULL, 1),
('SUNIL KULLU', 9110242303, 9916390029, 'kullu2010@gmail.com', 'Customs Airport', '400', '2019-05-21 08:41:28', 215, '', 0, 1, 0, 0, 0, 'J P Meena', 0, 0, NULL, 1),
('SUNIL KULLU', 9110242303, 9916390029, 'kullu2010@gmail.com', 'Customs Airport', '400', '2019-05-21 08:41:22', 216, '', 0, 1, 0, 0, 0, 'J P Meena', 0, 0, NULL, 1),
('SUNIL KULLU', 9110242303, 9916390029, 'kullu2010@gmail.com', 'Customs Airport', '400', '2019-05-21 08:41:05', 217, '', 0, 1, 0, 0, 0, 'J P Meena', 0, 0, NULL, 1),
('SUNIL KULLU', 9110242303, 9916390029, 'kullu2010@gmail.com', 'Customs Airport', '400', '2019-05-21 08:40:55', 218, '', 0, 1, 0, 0, 0, 'J P Meena', 0, 1, NULL, 1),
('SUNIL KULLU', 9110242303, 9916390029, 'kullu2010@gmail.com', 'Customs Airport', '400', '2019-05-21 08:40:48', 219, '', 0, 1, 0, 0, 0, 'J P Meena', 0, 1, NULL, 1),
('SUNIL KULLU', 9110242303, 9916390029, 'kullu2010@gmail.com', 'Customs Airport', '400', '2019-05-21 08:40:42', 220, '', 0, 1, 0, 0, 0, 'J P Meena', 0, 0, NULL, 1),
('Sunil kullu', 9110242303, 9916390029, 'kullu2010@gmail.com', 'Customs Airport', '400', '2019-05-21 08:40:36', 221, '', 0, 1, 0, 0, 0, 'J P Meena', 0, 0, NULL, 1),
('Sunil kullu', 9110242303, 9916390029, 'kullu2010@gmail.com', 'Customs Airport', '400', '2019-05-21 08:40:30', 222, '', 0, 1, 0, 0, 0, 'J P Meena', 0, 1, NULL, 1),
('Sunil kullu', 9110242303, 9916390029, 'kullu2010@gmail.com', 'Customs Airport', '400', '2019-05-21 08:40:22', 223, '', 0, 1, 0, 0, 0, 'J P Meena', 0, 1, NULL, 1),
('Sunil kullu', 9110242303, 9916390029, 'kullu2010@gmail.com', 'Customs Airport', '400', '2019-05-21 08:40:15', 224, '', 0, 1, 0, 0, 0, 'J P Meena', 0, 1, NULL, 1),
('Sunil kullu', 9110242303, 9916390029, 'kullu2010@gmail.com', 'Customs Airport', '400', '2019-05-21 08:40:06', 225, '', 0, 1, 0, 0, 0, 'J P Meena', 0, 1, NULL, 1),
('Sunil kullu', 9110242303, 9916390029, 'kullu2010@gmail.com', 'Customs Airport', '400', '2019-05-21 08:39:36', 226, '', 0, 1, 0, 0, 0, 'J P Meena', 0, 1, NULL, 1),
('Sunil kullu', 9110242303, 9916390029, 'kullu2010@gmail.com', 'Customs Airport', '400', '2019-05-21 08:39:26', 227, '', 0, 1, 0, 0, 0, 'J P Meena', 0, 1, NULL, 1),
('Sunil Kullu', 9110242303, 9535559650, 'kullu2010@gmail.com', 'Customs Airport', '400', '2019-05-21 09:23:41', 228, '', 0, 1, 0, 0, 0, 'J. P. Meena', 0, 0, NULL, 1),
('Sunil Kullu', 9110242303, 9535559650, 'kullu2010@gmail.com', 'Customs Airport', '400', '2019-05-21 09:23:34', 229, '', 0, 1, 0, 0, 0, 'J. P. Meena', 0, 0, NULL, 1),
('Sunil Kullu', 9110242303, 9535559650, 'kullu2010@gmail.com', 'Customs Airport', '400', '2019-05-21 09:23:28', 230, '', 0, 1, 0, 0, 0, 'J. P. Meena', 0, 0, NULL, 1),
('Sunil Kullu', 9110242303, 9535559650, 'kullu2010@gmail.com', 'Customs Airport', '400', '2019-05-21 09:23:22', 231, '', 0, 1, 0, 0, 0, 'J. P. Meena', 0, 0, NULL, 1),
('Sunil Kullu', 9110242303, 9535559650, 'kullu2010@gmail.com', 'Customs Airport', '400', '2019-05-21 09:23:16', 232, '', 0, 1, 0, 0, 0, 'J. P. Meena', 0, 1, NULL, 1),
('Sunil Kullu', 9110242303, 9535559650, 'kullu2010@gmail.com', 'Customs Airport', '400', '2019-05-21 09:23:11', 233, '', 0, 1, 0, 0, 0, 'J. P. Meena', 0, 1, NULL, 1),
('Sunil Kullu', 9110242303, 9535559650, 'kullu2010@gmail.com', 'Customs Airport', '400', '2019-05-21 09:23:05', 234, '', 0, 1, 0, 0, 0, 'J. P. Meena', 0, 1, NULL, 1),
('Sunil Kullu', 9110242303, 9535559650, 'kullu2010@gmail.com', 'Customs Airport', '400', '2019-05-21 09:22:59', 235, '', 0, 1, 0, 0, 0, 'J. P. Meena', 0, 1, NULL, 1),
('Sunil Kullu', 9110242303, 9535559650, 'kullu2010@gmail.com', 'Customs Airport', '400', '2019-05-21 09:22:53', 236, '', 0, 1, 0, 0, 0, 'J. P. Meena', 0, 1, NULL, 1),
('Sunil Kullu', 9110242303, 9535559650, 'kullu2010@gmail.com', 'Customs Airport', '400', '2019-05-21 09:22:48', 237, '', 0, 1, 0, 0, 0, 'J. P. Meena', 0, 1, NULL, 1),
('Sunil Kullu', 9110242303, 9535559650, 'kullu2010@gmail.com', 'Customs Airport', '400', '2019-05-21 09:22:41', 238, '', 0, 1, 0, 0, 0, 'J. P. Meena', 0, 1, NULL, 1),
('Sunil Kullu', 9110242303, 9535559650, 'kullu2010@gmail.com', 'Customs Airport', '400', '2019-05-21 09:22:34', 239, '', 0, 1, 0, 0, 0, 'J. P. Meena', 0, 1, NULL, 1),
('Sunil Kullu', 9110242303, 9535559650, 'kullu2010@gmail.com', 'Customs Airport', '400', '2019-05-21 09:22:24', 240, '', 0, 1, 0, 0, 0, 'J. P. Meena', 0, 1, NULL, 1),
('', 8379005737, 0, 'contact2amruta@gmail.com', '', '700', '2019-05-21 09:29:14', 241, '', 0, 0, 1, 1, 0, 'x', 0, 0, NULL, 1),
('', 8379005737, 0, 'contact2amruta@gmail.com', '', '700', '2019-05-21 09:29:37', 242, '', 0, 0, 1, 1, 0, 'x', 0, 0, NULL, 1),
('Amruta Kshirsagar', 8379005737, 0, 'contact2amruta@gmail.com', '', '300', '2019-05-21 09:32:40', 243, '', 0, 0, 1, 0, 0, '', 0, 1, NULL, 1),
('Amruta Kshirsagar', 8379005737, 0, 'contact2amruta@gmail.com', '', '300', '2019-05-21 09:38:22', 244, '', 0, 0, 1, 0, 0, '', 0, 1, NULL, 1),
('Amruta Kshirsagar', 8379005737, 0, 'contact2amruta@gmail.com', '', '700', '2019-05-21 10:19:25', 245, '', 0, 0, 1, 1, 0, 'sdffss', 0, 1, NULL, 1),
('Amruta Kshirsagar', 8379005737, 0, 'contact2amruta@gmail.com', '', '700', '2019-05-21 10:19:29', 246, '', 0, 0, 1, 1, 0, 'sdffss', 0, 1, NULL, 1),
('Amruta Kshirsagar', 8379005737, 0, 'contact2amruta@gmail.com', 'Zenrayechnologies', '300', '2019-05-21 10:19:34', 247, '', 1, 0, 0, 0, 0, '', 0, 0, NULL, 1),
('Amruta Kshirsagar', 8379005737, 0, 'contact2amruta@gmail.com', '', '700', '2019-05-21 10:19:38', 248, '', 1, 1, 0, 0, 0, 'd', 0, 1, NULL, 1),
('Amruta Kshirsagar', 8379005737, 0, 'contact2amruta@gmail.com', '', '300', '2019-05-21 10:26:24', 249, '', 0, 0, 1, 0, 0, '', 0, 1, NULL, 1),
('Amruta Kshirsagar', 8379005737, 0, 'contact2amruta@gmail.com', '', '300', '2019-05-21 10:34:55', 250, '', 0, 0, 1, 0, 0, '', 0, 1, NULL, 1),
('Amruta Kshirsagar', 8379005737, 0, 'contact2amruta@gmail.com', '', '300', '2019-05-21 10:34:58', 251, '', 0, 0, 1, 0, 0, '', 0, 1, NULL, 1),
('Amruta Kshirsagar', 8379005737, 0, 'contact2amruta@gmail.com', '', '300', '2019-05-21 10:35:00', 252, '', 0, 0, 1, 0, 0, '', 0, 1, NULL, 1),
('Amruta Kshirsagar', 8379005737, 0, 'contact2amruta@gmail.com', '', '300', '2019-05-21 10:35:02', 253, '', 0, 0, 1, 0, 0, '', 0, 1, NULL, 1),
('Amruta Kshirsagar', 8379005737, 0, 'contact2amruta@gmail.com', '', '300', '2019-05-21 10:35:05', 254, '', 0, 0, 1, 0, 0, '', 0, 1, NULL, 1),
('Amruta Kshirsagar', 8379005737, 0, 'contact2amruta@gmail.com', '', '300', '2019-05-21 10:45:11', 255, '', 0, 0, 1, 0, 0, '', 0, 1, NULL, 1),
('Amruta Kshirsagar', 8379005737, 0, 'contact2amruta@gmail.com', '', '700', '2019-05-21 10:38:27', 256, '', 0, 0, 1, 1, 0, 'tt', 0, 1, NULL, 1),
('Amruta Kshirsagar', 8379005737, 0, 'contact2amruta@gmail.com', '', '300', '2019-05-21 10:45:09', 257, '', 0, 0, 1, 0, 0, 'tt', 0, 0, NULL, 1),
('Amruta Kshirsagar', 8379005737, 0, 'contact2amruta@gmail.com', '', '300', '2019-05-21 10:45:06', 258, '', 0, 0, 1, 0, 0, '', 0, 1, NULL, 1),
('Amruta Kshirsagar', 8379005737, 0, 'contact2amruta@gmail.com', '', '300', '2019-05-21 10:45:04', 259, '', 0, 0, 1, 0, 0, '', 0, 1, NULL, 1),
('Amruta Kshirsagar', 8379005737, 0, 'contact2amruta@gmail.com', 'aaaa', '300', '2019-05-21 10:45:02', 260, '', 0, 0, 1, 0, 0, '', 0, 1, NULL, 1),
('Amruta Kshirsagar', 8379005737, 0, 'contact2amruta@gmail.com', '', '300', '2019-05-21 10:45:00', 261, '', 0, 0, 1, 0, 0, '', 0, 1, NULL, 1),
('Amruta Kshirsagar', 8379005737, 0, 'contact2amruta@gmail.com', '', '300', '2019-05-21 10:44:57', 262, '', 0, 0, 1, 0, 0, '', 0, 1, NULL, 1),
('Amruta Kshirsagar', 8379005737, 0, 'contact2amruta@gmail.com', 'Zenrays Technologies (pvt) ltd.', '300', '2019-05-21 10:44:53', 263, '', 0, 0, 1, 0, 0, '', 0, 1, NULL, 1),
('Amruta Kshirsagar', 8379005737, 0, 'contact2amruta@gmail.com', 'Zenrays Technologies', '300', '2019-05-21 10:55:56', 264, '', 0, 0, 1, 0, 0, '', 0, 0, NULL, 1),
('Amruta Kshirsagar', 8379005737, 0, 'contact2amruta@gmail.com', 'Zenrays Technologies', '300', '2019-05-21 10:56:01', 265, '', 0, 0, 1, 0, 0, '', 1, 0, 'MOJO9521605A85715926', 1),
('Amruta Kshirsagar', 8379005737, 0, 'contact2amruta@gmail.com', 'Zenrays Technologies', '300', '2019-05-21 10:56:06', 266, '', 0, 0, 1, 0, 0, '', 1, 0, 'MOJO9521R05A85715928', 1),
('Nawaz Mijar', 9964278399, 9964278399, 'n.mijar@compasslog.com', 'COMPASS LOGISTICS INTERNATIONAL PVT LTD', '400', '2019-05-21 11:02:32', 267, '', 0, 1, 0, 0, 0, 'sridhar Hathwar', 0, 1, NULL, 0),
('Nawaz Mijar', 9964278399, 9964278399, 'n.mijar@compasslog.com', 'COMPASS LOGISTICS INTERNATIONAL PVT LTD', '400', '2019-05-21 11:02:44', 268, '', 0, 1, 0, 0, 0, 'sridhar Hathwar', 0, 1, NULL, 0),
('Nawaz Mijar', 9964278399, 9964278399, 'n.mijar@compasslog.com', 'COMPASS LOGISTICS INTERNATIONAL PVT LTD', '400', '2019-05-21 12:59:53', 269, '', 0, 1, 0, 0, 0, 'sridhar Hathwar', 0, 1, NULL, 1),
('Nawaz Mijar', 9964278399, 9964278399, 'n.mijar@compasslog.com', 'COMPASS LOGISTICS INTERNATIONAL PVT LTD', '400', '2019-05-21 12:59:41', 270, '', 0, 1, 0, 0, 0, 'sridhar Hathwar', 0, 0, NULL, 1),
('Nawaz Mijar', 9964278399, 9964278399, 'n.mijar@compasslog.com', 'COMPASS LOGISTICS INTERNATIONAL PVT LTD', '400', '2019-05-21 12:58:54', 271, '', 0, 1, 0, 0, 0, 'sridhar Kr', 0, 1, NULL, 1),
('Amruta Kshirsagar', 8379005737, 0, 'contact2amruta@gmail.com', 'Zenrays Technologies', '300', '2019-05-21 11:14:05', 272, '', 0, 0, 1, 0, 0, '', 0, 1, NULL, 1),
('test', 8891553293, 8075712475, 'test@test.com', 'test', '400', '2019-05-21 12:58:42', 273, '', 0, 1, 0, 0, 0, 'test', 0, 1, NULL, 1),
('anand', 8891553293, 8075712475, 'anands1990@gmail.com', 'zenrays', '400', '2019-05-21 13:16:16', 274, '', 0, 1, 0, 0, 0, 'test', 0, 1, NULL, 1),
('Amruta Kshirsagar', 8379005737, 0, 'contact2amruta@gmail.com', 'Zenrays Technologies', '300', '2019-05-21 13:16:35', 275, '', 0, 0, 1, 0, 0, '', 0, 1, NULL, 1);

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
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` tinyint(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=276;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
