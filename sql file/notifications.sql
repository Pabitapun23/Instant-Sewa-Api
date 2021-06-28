-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2021 at 09:41 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `instantsewa`
--

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('33db02e6-3efd-4870-a748-3544295d6fef', 'App\\Notifications\\OrderBooked', 'App\\Models\\User', 1, '{\"title\":\"Order Booked\",\"body\":\"Your Order BishalSCTRItUotZ is booked.\"}', NULL, '2021-06-26 16:35:13', '2021-06-26 16:35:13'),
('d610de7e-9a75-4bcb-9e01-12c95215b01b', 'App\\Notifications\\OrderStarted', 'App\\Models\\User', 2, '{\"title\":\"Task Ongoing\",\"body\":\"Your Order BishalSCTRItUotZ is starting.\"}', NULL, '2021-06-27 17:10:24', '2021-06-27 00:10:24');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
