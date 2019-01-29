-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 29, 2019 at 05:20 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `roulate2`
--

-- --------------------------------------------------------

--
-- Table structure for table `bet`
--

CREATE TABLE `bet` (
  `id` int(11) NOT NULL,
  `player_name` varchar(50) NOT NULL,
  `amount` int(11) NOT NULL,
  `color` enum('Red','Black','Green','') NOT NULL,
  `number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `id` int(11) NOT NULL,
  `email` varchar(80) NOT NULL,
  `username` varchar(80) NOT NULL,
  `password` varchar(20) NOT NULL,
  `chips` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`id`, `email`, `username`, `password`, `chips`) VALUES
(1, 'anu@gmail.com', 'Anu', '1234', '213'),
(2, 'rasif@gmail.com', 'Rasif', '1234', '276.5'),
(3, 'nijhum@gmail.com', 'Nijhum', '1234', '97.00'),
(4, 'afrin@gmail.com', 'Afrin', '1234', '418.0'),
(5, 'zakia@gmail.com', 'Zakia', '1234', '1301.5'),
(6, 'nijhum_jawad2000@yahoo.com', 'Nijhum Jawad', '1234', '499');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `id` int(11) NOT NULL,
  `win_num` int(11) NOT NULL,
  `win_col` enum('Red','Green','Black','') NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `bet_amount` int(11) NOT NULL,
  `bet_color` enum('Red','Green','Black','') NOT NULL,
  `bet_number` int(11) NOT NULL,
  `win_chips` varchar(20) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `scoreboard`
--

CREATE TABLE `scoreboard` (
  `id` int(11) NOT NULL,
  `win_num` int(11) NOT NULL,
  `win_col` enum('Red','Green','Black','') NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `bet_amount` int(11) NOT NULL,
  `bet_color` enum('Red','Green','Black','') NOT NULL,
  `bet_number` int(11) NOT NULL,
  `win_chips` varchar(20) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scoreboard`
--

INSERT INTO `scoreboard` (`id`, `win_num`, `win_col`, `name`, `status`, `bet_amount`, `bet_color`, `bet_number`, `win_chips`, `date`) VALUES
(1, 13, 'Red', 'Anu', 'Loser', 3, 'Green', 20, '0', '2019-01-27 18:55:18'),
(2, 13, 'Red', 'Nijhum', 'Winner', 7, 'Red', 25, '10.5', '2019-01-27 18:55:18'),
(3, 13, 'Red', 'Rasif', 'Loser', 9, 'Green', 19, '0', '2019-01-27 18:55:18'),
(4, 13, 'Red', 'Afrin', 'Loser', 11, 'Black', 31, '0', '2019-01-27 18:55:18'),
(5, 13, 'Red', 'Zakia', 'Winner', 18, 'Black', 35, '19.5', '2019-01-27 18:55:18'),
(8, 13, 'Black', 'Anu', 'Loser', 3, 'Red', 20, '0', '2019-01-27 06:28:39'),
(9, 13, 'Black', 'Nijhum', 'Winner', 7, 'Black', 25, '10.5', '2019-01-27 06:28:39'),
(10, 13, 'Black', 'Rasif', 'Loser', 9, 'Green', 19, '0', '2019-01-27 06:28:39'),
(11, 13, 'Black', 'Afrin', 'Loser', 11, 'Red', 31, '0', '2019-01-27 06:28:39'),
(12, 13, 'Black', 'Zakia', 'Winner', 13, 'Black', 35, '19.5', '2019-01-27 06:28:39'),
(15, 35, 'Red', 'Afrin', 'Winner', 11, 'Red', 15, '16.5', '2019-01-27 11:49:16'),
(16, 35, 'Red', 'Anu', 'Loser', 3, 'Green', 13, '0', '2019-01-27 11:49:16'),
(17, 35, 'Red', 'Nijhum', 'Loser', 13, 'Black', 9, '0', '2019-01-27 11:49:16'),
(18, 35, 'Red', 'Rasif', 'Loser', 17, 'Green', 20, '0', '2019-01-27 11:49:16'),
(19, 35, 'Red', 'Zakia', 'Loser', 30, 'Green', 12, '0', '2019-01-27 11:49:16'),
(22, 35, 'Red', 'Afrin', 'Winner', 11, 'Red', 15, '16.5', '2019-01-27 11:49:16'),
(23, 35, 'Red', 'Anu', 'Loser', 3, 'Green', 13, '0', '2019-01-27 11:49:16'),
(24, 35, 'Red', 'Nijhum', 'Loser', 13, 'Black', 9, '0', '2019-01-27 11:49:16'),
(25, 35, 'Red', 'Rasif', 'Loser', 17, 'Green', 20, '0', '2019-01-27 11:49:16'),
(26, 35, 'Red', 'Zakia', 'Loser', 30, 'Green', 12, '0', '2019-01-27 11:49:16'),
(29, 3, 'Red', 'Zakia', 'Loser', 7, 'Black', 16, '0', '2019-01-27 13:19:45'),
(30, 3, 'Red', 'Nijhum', 'Winner', 4, 'Red', 11, '6', '2019-01-27 13:19:45'),
(31, 3, 'Red', 'Rasif', 'Loser', 34, 'Green', 18, '0', '2019-01-27 13:19:45'),
(32, 3, 'Red', 'Anu', 'Winner', 34, 'Red', 13, '51', '2019-01-27 13:19:45'),
(33, 3, 'Red', 'Afrin', 'Winner', 27, 'Red', 15, '40.5', '2019-01-27 13:19:45'),
(36, 3, 'Red', 'Zakia', 'Loser', 7, 'Black', 16, '0', '2019-01-27 13:19:45'),
(37, 3, 'Red', 'Nijhum', 'Winner', 4, 'Red', 11, '6', '2019-01-27 13:19:45'),
(38, 3, 'Red', 'Rasif', 'Loser', 34, 'Green', 18, '0', '2019-01-27 13:19:45'),
(39, 3, 'Red', 'Anu', 'Winner', 34, 'Red', 13, '51', '2019-01-27 13:19:45'),
(40, 3, 'Red', 'Afrin', 'Winner', 27, 'Red', 15, '40.5', '2019-01-27 13:19:45'),
(43, 3, 'Red', 'Zakia', 'Loser', 7, 'Black', 16, '0', '2019-01-27 13:19:45'),
(44, 3, 'Red', 'Nijhum', 'Winner', 4, 'Red', 11, '6', '2019-01-27 13:19:45'),
(45, 3, 'Red', 'Rasif', 'Loser', 34, 'Green', 18, '0', '2019-01-27 13:19:45'),
(46, 3, 'Red', 'Anu', 'Winner', 34, 'Red', 13, '51', '2019-01-27 13:19:45'),
(47, 3, 'Red', 'Afrin', 'Winner', 27, 'Red', 15, '40.5', '2019-01-27 13:19:45'),
(50, 3, 'Red', 'Zakia', 'Loser', 7, 'Black', 16, '0', '2019-01-27 13:19:45'),
(51, 3, 'Red', 'Nijhum', 'Winner', 4, 'Red', 11, '6', '2019-01-27 13:19:45'),
(52, 3, 'Red', 'Rasif', 'Loser', 34, 'Green', 18, '0', '2019-01-27 13:19:45'),
(53, 3, 'Red', 'Anu', 'Winner', 34, 'Red', 13, '51', '2019-01-27 13:19:45'),
(54, 3, 'Red', 'Afrin', 'Winner', 27, 'Red', 15, '40.5', '2019-01-27 13:19:45'),
(57, 3, 'Red', 'Zakia', 'Loser', 7, 'Black', 16, '0', '2019-01-27 13:19:45'),
(58, 3, 'Red', 'Nijhum', 'Winner', 4, 'Red', 11, '6', '2019-01-27 13:19:45'),
(59, 3, 'Red', 'Rasif', 'Loser', 34, 'Green', 18, '0', '2019-01-27 13:19:45'),
(60, 3, 'Red', 'Anu', 'Winner', 34, 'Red', 13, '51', '2019-01-27 13:19:45'),
(61, 3, 'Red', 'Afrin', 'Winner', 27, 'Red', 15, '40.5', '2019-01-27 13:19:45'),
(64, 3, 'Red', 'Zakia', 'Loser', 7, 'Black', 16, '0', '2019-01-27 13:19:45'),
(65, 3, 'Red', 'Nijhum', 'Winner', 4, 'Red', 11, '6', '2019-01-27 13:19:45'),
(66, 3, 'Red', 'Rasif', 'Loser', 34, 'Green', 18, '0', '2019-01-27 13:19:45'),
(67, 3, 'Red', 'Anu', 'Winner', 34, 'Red', 13, '51', '2019-01-27 13:19:45'),
(68, 3, 'Red', 'Afrin', 'Winner', 27, 'Red', 15, '40.5', '2019-01-27 13:19:45'),
(71, 3, 'Red', 'Zakia', 'Loser', 7, 'Black', 16, '0', '2019-01-27 13:19:45'),
(72, 3, 'Red', 'Nijhum', 'Winner', 4, 'Red', 11, '6', '2019-01-27 13:19:45'),
(73, 3, 'Red', 'Rasif', 'Loser', 34, 'Green', 18, '0', '2019-01-27 13:19:45'),
(74, 3, 'Red', 'Anu', 'Winner', 34, 'Red', 13, '51', '2019-01-27 13:19:45'),
(75, 3, 'Red', 'Afrin', 'Winner', 27, 'Red', 15, '40.5', '2019-01-27 13:19:45'),
(78, 3, 'Red', 'Zakia', 'Loser', 7, 'Black', 16, '0', '2019-01-27 13:19:45'),
(79, 3, 'Red', 'Nijhum', 'Winner', 4, 'Red', 11, '6', '2019-01-27 13:19:45'),
(80, 3, 'Red', 'Rasif', 'Loser', 34, 'Green', 18, '0', '2019-01-27 13:19:45'),
(81, 3, 'Red', 'Anu', 'Winner', 34, 'Red', 13, '51', '2019-01-27 13:19:45'),
(82, 3, 'Red', 'Afrin', 'Winner', 27, 'Red', 15, '40.5', '2019-01-27 13:19:45'),
(85, 3, 'Red', 'Zakia', 'Loser', 7, 'Black', 16, '0', '2019-01-27 13:19:45'),
(86, 3, 'Red', 'Nijhum', 'Winner', 4, 'Red', 11, '6', '2019-01-27 13:19:45'),
(87, 3, 'Red', 'Rasif', 'Loser', 34, 'Green', 18, '0', '2019-01-27 13:19:45'),
(88, 3, 'Red', 'Anu', 'Winner', 34, 'Red', 13, '51', '2019-01-27 13:19:45'),
(89, 3, 'Red', 'Afrin', 'Winner', 27, 'Red', 15, '40.5', '2019-01-27 13:19:45'),
(92, 3, 'Red', 'Zakia', 'Loser', 7, 'Black', 16, '0', '2019-01-27 13:19:45'),
(93, 3, 'Red', 'Nijhum', 'Winner', 4, 'Red', 11, '6', '2019-01-27 13:19:45'),
(94, 3, 'Red', 'Rasif', 'Loser', 34, 'Green', 18, '0', '2019-01-27 13:19:45'),
(95, 3, 'Red', 'Anu', 'Winner', 34, 'Red', 13, '51', '2019-01-27 13:19:45'),
(96, 3, 'Red', 'Afrin', 'Winner', 27, 'Red', 15, '40.5', '2019-01-27 13:19:45'),
(99, 3, 'Red', 'Zakia', 'Loser', 7, 'Black', 16, '0', '2019-01-27 13:19:45'),
(100, 3, 'Red', 'Nijhum', 'Winner', 4, 'Red', 11, '6', '2019-01-27 13:19:45'),
(101, 3, 'Red', 'Rasif', 'Loser', 34, 'Green', 18, '0', '2019-01-27 13:19:45'),
(102, 3, 'Red', 'Anu', 'Winner', 34, 'Red', 13, '51', '2019-01-27 13:19:45'),
(103, 3, 'Red', 'Afrin', 'Winner', 27, 'Red', 15, '40.5', '2019-01-27 13:19:45'),
(106, 27, 'Red', 'Rasif', 'Winner', 4, 'Red', 13, '6', '2019-01-27 13:57:58'),
(107, 27, 'Red', 'Nijhum', 'Loser', 4, 'Black', 28, '0', '2019-01-27 13:57:58'),
(108, 27, 'Red', 'Zakia', 'Loser', 5, 'Green', 10, '0', '2019-01-27 13:57:58'),
(109, 27, 'Red', 'Anu', 'Winner', 5, 'Green', 27, '50', '2019-01-27 13:57:58'),
(110, 27, 'Red', 'Afrin', 'Loser', 5, 'Black', 12, '0', '2019-01-27 13:57:58'),
(113, 27, 'Red', 'Rasif', 'Winner', 4, 'Red', 13, '6', '2019-01-27 13:57:58'),
(114, 27, 'Red', 'Nijhum', 'Loser', 4, 'Black', 28, '0', '2019-01-27 13:57:58'),
(115, 27, 'Red', 'Zakia', 'Loser', 5, 'Green', 10, '0', '2019-01-27 13:57:58'),
(116, 27, 'Red', 'Anu', 'Winner', 5, 'Green', 27, '50', '2019-01-27 13:57:58'),
(117, 27, 'Red', 'Afrin', 'Loser', 5, 'Black', 12, '0', '2019-01-27 13:57:58'),
(120, 27, 'Red', 'Rasif', 'Winner', 4, 'Red', 13, '6', '2019-01-27 13:57:58'),
(121, 27, 'Red', 'Nijhum', 'Loser', 4, 'Black', 28, '0', '2019-01-27 13:57:58'),
(122, 27, 'Red', 'Zakia', 'Loser', 5, 'Green', 10, '0', '2019-01-27 13:57:58'),
(123, 27, 'Red', 'Anu', 'Winner', 5, 'Green', 27, '50', '2019-01-27 13:57:58'),
(124, 27, 'Red', 'Afrin', 'Loser', 5, 'Black', 12, '0', '2019-01-27 13:57:58'),
(127, 27, 'Red', 'Rasif', 'Winner', 4, 'Red', 13, '6', '2019-01-27 13:57:58'),
(128, 27, 'Red', 'Nijhum', 'Loser', 4, 'Black', 28, '0', '2019-01-27 13:57:58'),
(129, 27, 'Red', 'Zakia', 'Loser', 5, 'Green', 10, '0', '2019-01-27 13:57:58'),
(130, 27, 'Red', 'Anu', 'Winner', 5, 'Green', 27, '50', '2019-01-27 13:57:58'),
(131, 27, 'Red', 'Afrin', 'Loser', 5, 'Black', 12, '0', '2019-01-27 13:57:58'),
(134, 27, 'Red', 'Rasif', 'Winner', 4, 'Red', 13, '6', '2019-01-27 13:57:58'),
(135, 27, 'Red', 'Nijhum', 'Loser', 4, 'Black', 28, '0', '2019-01-27 13:57:58'),
(136, 27, 'Red', 'Zakia', 'Loser', 5, 'Green', 10, '0', '2019-01-27 13:57:58'),
(137, 27, 'Red', 'Anu', 'Winner', 5, 'Green', 27, '50', '2019-01-27 13:57:58'),
(138, 27, 'Red', 'Afrin', 'Loser', 5, 'Black', 12, '0', '2019-01-27 13:57:58'),
(141, 27, 'Red', 'Rasif', 'Winner', 4, 'Red', 13, '6', '2019-01-27 13:57:58'),
(142, 27, 'Red', 'Nijhum', 'Loser', 4, 'Black', 28, '0', '2019-01-27 13:57:58'),
(143, 27, 'Red', 'Zakia', 'Loser', 5, 'Green', 10, '0', '2019-01-27 13:57:58'),
(144, 27, 'Red', 'Anu', 'Winner', 5, 'Green', 27, '50', '2019-01-27 13:57:58'),
(145, 27, 'Red', 'Afrin', 'Loser', 5, 'Black', 12, '0', '2019-01-27 13:57:58'),
(148, 27, 'Red', 'Rasif', 'Winner', 4, 'Red', 13, '6', '2019-01-27 13:57:58'),
(149, 27, 'Red', 'Nijhum', 'Loser', 4, 'Black', 28, '0', '2019-01-27 13:57:58'),
(150, 27, 'Red', 'Zakia', 'Loser', 5, 'Green', 10, '0', '2019-01-27 13:57:58'),
(151, 27, 'Red', 'Anu', 'Winner', 5, 'Green', 27, '50', '2019-01-27 13:57:58'),
(152, 27, 'Red', 'Afrin', 'Loser', 5, 'Black', 12, '0', '2019-01-27 13:57:58'),
(155, 27, 'Red', 'Rasif', 'Winner', 4, 'Red', 13, '6', '2019-01-27 13:57:58'),
(156, 27, 'Red', 'Nijhum', 'Loser', 4, 'Black', 28, '0', '2019-01-27 13:57:58'),
(157, 27, 'Red', 'Zakia', 'Loser', 5, 'Green', 10, '0', '2019-01-27 13:57:58'),
(158, 27, 'Red', 'Anu', 'Winner', 5, 'Green', 27, '50', '2019-01-27 13:57:58'),
(159, 27, 'Red', 'Afrin', 'Loser', 5, 'Black', 12, '0', '2019-01-27 13:57:58'),
(162, 27, 'Red', 'Rasif', 'Winner', 4, 'Red', 13, '6', '2019-01-27 13:57:58'),
(163, 27, 'Red', 'Nijhum', 'Loser', 4, 'Black', 28, '0', '2019-01-27 13:57:58'),
(164, 27, 'Red', 'Zakia', 'Loser', 5, 'Green', 10, '0', '2019-01-27 13:57:58'),
(165, 27, 'Red', 'Anu', 'Winner', 5, 'Green', 27, '50', '2019-01-27 13:57:58'),
(166, 27, 'Red', 'Afrin', 'Loser', 5, 'Black', 12, '0', '2019-01-27 13:57:58'),
(169, 27, 'Red', 'Rasif', 'Winner', 4, 'Red', 13, '6', '2019-01-27 13:57:58'),
(170, 27, 'Red', 'Nijhum', 'Loser', 4, 'Black', 28, '0', '2019-01-27 13:57:58'),
(171, 27, 'Red', 'Zakia', 'Loser', 5, 'Green', 10, '0', '2019-01-27 13:57:58'),
(172, 27, 'Red', 'Anu', 'Winner', 5, 'Green', 27, '50', '2019-01-27 13:57:58'),
(173, 27, 'Red', 'Afrin', 'Loser', 5, 'Black', 12, '0', '2019-01-27 13:57:58'),
(176, 1, 'Green', 'Anu', 'Winner', 7, 'Red', 1, '70', '2019-01-28 10:00:39'),
(177, 1, 'Green', 'Rasif', 'Loser', 13, 'Black', 34, '0', '2019-01-28 10:00:39'),
(178, 1, 'Green', 'Nijhum', 'Loser', 4, 'Red', 13, '0', '2019-01-28 10:00:39'),
(179, 1, 'Green', 'Afrin', 'Loser', 7, 'Black', 10, '0', '2019-01-28 10:00:39'),
(180, 1, 'Green', 'Zakia', 'Loser', 4, 'Black', 12, '0', '2019-01-28 10:00:39'),
(183, 1, 'Green', 'Anu', 'Winner', 7, 'Red', 1, '70', '2019-01-28 10:00:39'),
(184, 1, 'Green', 'Rasif', 'Loser', 13, 'Black', 34, '0', '2019-01-28 10:00:39'),
(185, 1, 'Green', 'Nijhum', 'Loser', 4, 'Red', 13, '0', '2019-01-28 10:00:39'),
(186, 1, 'Green', 'Afrin', 'Loser', 7, 'Black', 10, '0', '2019-01-28 10:00:39'),
(187, 1, 'Green', 'Zakia', 'Loser', 4, 'Black', 12, '0', '2019-01-28 10:00:39'),
(190, 7, 'Black', 'Anu', 'Loser', 1, 'Red', 12, '0', '2019-01-28 11:19:40'),
(191, 7, 'Black', 'Nijhum', 'Winner', 4, 'Black', 12, '6', '2019-01-28 11:19:40'),
(192, 7, 'Black', 'Rasif', 'Loser', 4, 'Green', 32, '0', '2019-01-28 11:19:40'),
(193, 7, 'Black', 'Afrin', 'Loser', 5, 'Red', 13, '0', '2019-01-28 11:19:40'),
(194, 7, 'Black', 'Zakia', 'Winner', 4, 'Black', 3, '6', '2019-01-28 11:19:40'),
(197, 7, 'Black', 'Anu', 'Loser', 1, 'Red', 12, '0', '2019-01-28 11:19:40'),
(198, 7, 'Black', 'Nijhum', 'Winner', 4, 'Black', 12, '6', '2019-01-28 11:19:40'),
(199, 7, 'Black', 'Rasif', 'Loser', 4, 'Green', 32, '0', '2019-01-28 11:19:40'),
(200, 7, 'Black', 'Afrin', 'Loser', 5, 'Red', 13, '0', '2019-01-28 11:19:40'),
(201, 7, 'Black', 'Zakia', 'Winner', 4, 'Black', 3, '6', '2019-01-28 11:19:40'),
(204, 7, 'Black', 'Anu', 'Loser', 1, 'Red', 12, '0', '2019-01-28 11:19:40'),
(205, 7, 'Black', 'Nijhum', 'Winner', 4, 'Black', 12, '6', '2019-01-28 11:19:40'),
(206, 7, 'Black', 'Rasif', 'Loser', 4, 'Green', 32, '0', '2019-01-28 11:19:40'),
(207, 7, 'Black', 'Afrin', 'Loser', 5, 'Red', 13, '0', '2019-01-28 11:19:40'),
(208, 7, 'Black', 'Zakia', 'Winner', 4, 'Black', 3, '6', '2019-01-28 11:19:40'),
(211, 7, 'Black', 'Anu', 'Loser', 1, 'Red', 12, '0', '2019-01-28 11:19:40'),
(212, 7, 'Black', 'Nijhum', 'Winner', 4, 'Black', 12, '6', '2019-01-28 11:19:40'),
(213, 7, 'Black', 'Rasif', 'Loser', 4, 'Green', 32, '0', '2019-01-28 11:19:40'),
(214, 7, 'Black', 'Afrin', 'Loser', 5, 'Red', 13, '0', '2019-01-28 11:19:40'),
(215, 7, 'Black', 'Zakia', 'Winner', 4, 'Black', 3, '6', '2019-01-28 11:19:40'),
(218, 7, 'Black', 'Anu', 'Loser', 1, 'Red', 12, '0', '2019-01-28 11:19:40'),
(219, 7, 'Black', 'Nijhum', 'Winner', 4, 'Black', 12, '6', '2019-01-28 11:19:40'),
(220, 7, 'Black', 'Rasif', 'Loser', 4, 'Green', 32, '0', '2019-01-28 11:19:40'),
(221, 7, 'Black', 'Afrin', 'Loser', 5, 'Red', 13, '0', '2019-01-28 11:19:40'),
(222, 7, 'Black', 'Zakia', 'Winner', 4, 'Black', 3, '6', '2019-01-28 11:19:40'),
(225, 7, 'Black', 'Anu', 'Loser', 1, 'Red', 12, '0', '2019-01-28 11:19:40'),
(226, 7, 'Black', 'Nijhum', 'Winner', 4, 'Black', 12, '6', '2019-01-28 11:19:40'),
(227, 7, 'Black', 'Rasif', 'Loser', 4, 'Green', 32, '0', '2019-01-28 11:19:40'),
(228, 7, 'Black', 'Afrin', 'Loser', 5, 'Red', 13, '0', '2019-01-28 11:19:40'),
(229, 7, 'Black', 'Zakia', 'Winner', 4, 'Black', 3, '6', '2019-01-28 11:19:40'),
(232, 10, 'Black', 'Zakia', 'Loser', 3, 'Red', 13, '0', '2019-01-28 11:29:24'),
(233, 10, 'Black', 'Anu', 'Loser', 3, 'Green', 34, '0', '2019-01-28 11:29:24'),
(234, 10, 'Black', 'Rasif', 'Winner', 5, 'Black', 10, '100', '2019-01-28 11:29:24'),
(235, 10, 'Black', 'Nijhum', 'Loser', 4, 'Red', 14, '0', '2019-01-28 11:29:24'),
(236, 10, 'Black', 'Afrin', 'Loser', 7, 'Green', 25, '0', '2019-01-28 11:29:24'),
(239, 10, 'Black', 'Zakia', 'Loser', 3, 'Red', 13, '0', '2019-01-28 11:29:24'),
(240, 10, 'Black', 'Anu', 'Loser', 3, 'Green', 34, '0', '2019-01-28 11:29:24'),
(241, 10, 'Black', 'Rasif', 'Winner', 5, 'Black', 10, '100', '2019-01-28 11:29:24'),
(242, 10, 'Black', 'Nijhum', 'Loser', 4, 'Red', 14, '0', '2019-01-28 11:29:24'),
(243, 10, 'Black', 'Afrin', 'Loser', 7, 'Green', 25, '0', '2019-01-28 11:29:24'),
(246, 5, 'Black', 'Nijhum', 'Loser', 4, 'Red', 8, '0', '2019-01-28 11:34:38'),
(247, 5, 'Black', 'Anu', 'Loser', 6, 'Green', 31, '0', '2019-01-28 11:34:38'),
(248, 5, 'Black', 'Rasif', 'Loser', 9, 'Green', 12, '0', '2019-01-28 11:34:38'),
(249, 5, 'Black', 'Afrin', 'Winner', 9, 'Black', 32, '13.5', '2019-01-28 11:34:38'),
(250, 5, 'Black', 'Zakia', 'Winner', 32, 'Black', 14, '48', '2019-01-28 11:34:38'),
(251, 31, 'Red', 'Anu', 'Winner', 5, 'Red', 13, '7.5', '2019-01-28 13:41:43'),
(252, 31, 'Red', 'Nijhum', 'Loser', 5, 'Black', 12, '0', '2019-01-28 13:41:43'),
(253, 31, 'Red', 'Afrin', 'Loser', 6, 'Black', 10, '0', '2019-01-28 13:41:43'),
(254, 31, 'Red', 'Zakia', 'Loser', 7, 'Green', 7, '0', '2019-01-28 13:41:43'),
(255, 31, 'Red', 'Nijhum Jawad', 'Winner', 6, 'Red', 12, '9', '2019-01-28 13:41:43'),
(256, 3, 'Red', 'Anu', 'Winner', 500, 'Red', 10, '750', '2019-01-28 15:01:49'),
(257, 3, 'Red', 'Rasif', 'Loser', 50, 'Green', 12, '0', '2019-01-28 15:01:49'),
(258, 3, 'Red', 'Afrin', 'Loser', 500, 'Black', 13, '0', '2019-01-28 15:01:49'),
(259, 3, 'Red', 'Zakia', 'Winner', 100, 'Red', 13, '150', '2019-01-28 15:01:49'),
(260, 3, 'Red', 'Nijhum Jawad', 'Winner', 4, 'Red', 12, '6', '2019-01-28 15:01:49'),
(263, 3, 'Red', 'Anu', 'Loser', 1200, 'Black', 32, '0', '2019-01-28 16:13:30'),
(264, 3, 'Red', 'Rasif', 'Loser', 56, 'Green', 13, '0', '2019-01-28 16:13:30'),
(265, 3, 'Red', 'Afrin', 'Winner', 65, 'Red', 8, '97.5', '2019-01-28 16:13:30'),
(266, 3, 'Red', 'Zakia', 'Winner', 600, 'Red', 13, '900', '2019-01-28 16:13:30'),
(267, 3, 'Red', 'Nijhum Jawad', 'Loser', 6, 'Green', 12, '0', '2019-01-28 16:13:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bet`
--
ALTER TABLE `bet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scoreboard`
--
ALTER TABLE `scoreboard`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bet`
--
ALTER TABLE `bet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `result`
--
ALTER TABLE `result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `scoreboard`
--
ALTER TABLE `scoreboard`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=270;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
