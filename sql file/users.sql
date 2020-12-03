-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2020 at 09:55 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: instantsewa
--

--
-- Dumping data for table users
--

INSERT INTO users (id, username, fullname, email, email_verified_at, `password`, address_address, address_latitude, address_longitude, phoneno, gender, avatar, remember_token, verified, verification_token, user_type, created_at, updated_at, deleted_at) VALUES
(1, 'Habis', NULL, 'habis@gmail.com', NULL, '$2y$10$uLfFmX7ppztM379rCMyhUu3ApuhbbcJvguCf56NeJt6lMANV1VNi.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'serviceuser', '2020-11-09 01:43:07', '2020-11-09 01:43:07', NULL),
(2, 'Bishal', 'Bishal Devkota', 'devkotahancy@gmail.com', NULL, '$2y$10$q9VGQrb0QWttEM9/GIJD4.Gz0R7PJdEcKvYpjpQXrji87gBb.nD4C', 'Shangrila Village Resort,Pokhara', 28.18663400, 83.97517200, '9816615660', 'Male', NULL, NULL, NULL, NULL, 'serviceuser', '2020-11-09 01:43:48', '2020-11-09 01:43:48', NULL),
(3, 'Ram', 'Ram Poudel', 'ram@gmail.com', NULL, '$2y$10$WL9xzfcY6MpjxyM5D9bT.e/RmELXa60tqV4i19UYFvWLMp38iiMte', 'Ram Bazar, Pokhara, Nepal', 28.20087320, 83.99624910, '9807845678', 'Male', NULL, NULL, NULL, NULL, 'ServiceProvider', '2020-11-09 01:46:20', '2020-11-09 01:46:20', NULL),
(4, 'Shyam', 'Shyam Thapa', 'shyam@gmail.com', NULL, '$2y$10$wz4eoeOBZTX/.Wf5T7P4RuuPAwVPOQiG6X7ieVUsSaSk11MV3W1cm', 'Lamachaur, Pokhara, Nepal', 28.26134850, 83.97211120, '9803432580', 'Male', NULL, NULL, NULL, NULL, 'ServiceProvider', '2020-11-09 01:55:37', '2020-11-09 01:55:37', NULL),
(5, 'Hari', 'Hari Bahadur', 'hari@gmail.com', NULL, '$2y$10$S0SycbUDfcsdVsUSb0AXCuDYvErk4NCp0Hqzjb1jZCie.UMTtnTou', 'parsyang --5 pokhara, Pokhara, Nepal', 28.22545990, 83.97824760, '9821389089', 'Male', NULL, NULL, NULL, NULL, 'ServiceProvider', '2020-11-09 01:57:19', '2020-11-09 01:57:19', NULL),
(6, 'Laxman', 'Laxman Adhikari', 'laxman@gmail.com', NULL, '$2y$10$fD14QAHmcJmlmWK7caUgW.MBxaaQGhFU.zfQVwm0b8NJfVhpxH0Bq', 'Lekhnath, Nepal', 28.14842470, 84.08016130, '9812345678', 'Male', NULL, NULL, NULL, NULL, 'ServiceProvider', '2020-11-09 01:58:45', '2020-11-09 01:58:45', NULL),
(7, 'Gopal', 'Gopal Sunar', 'gopal@gmail.com', NULL, '$2y$10$vJMYcSJ3wl6CigezO.qFUeswUFsX.p2GXDVv1vhRIECkJaHi55j4C', 'Amarsingh Chowk, Pokhara', 28.20585490, 84.00263130, '9803456767', 'Male', NULL, NULL, NULL, NULL, 'ServiceProvider', '2020-11-09 01:59:49', '2020-11-09 01:59:49', NULL),
(8, 'Gopi', 'Gopi Khadka', 'gopi@gmail.com', NULL, '$2y$10$tXYaspfU1sqGVbi5Cf.1nOOKLK/bIxcqLQ0WunMYhNYsdZ2gNdgfy', 'Deep, Pokhara, Nepal', 28.24993090, 83.98566930, '9867890234', 'Male', NULL, NULL, NULL, NULL, 'ServiceProvider', '2020-11-09 02:00:51', '2020-11-09 02:00:51', NULL),
(9, 'Bijay', 'Bijay Gurung', 'bijay@gmail.com', NULL, '$2y$10$EGKYy7mHNipHRIVYb3nGeeC8wSExKCbjxRIC7ChP1UCtLQ2UxJHsa', 'Birauta  Pokhara, Nepal', 28.19114570, 83.97059910, '9840876453', 'Male', NULL, NULL, NULL, NULL, 'ServiceProvider', '2020-11-09 02:01:46', '2020-11-09 02:01:46', NULL),
(10, 'Ashish', 'Ashish Kc', 'ashish@gmail.com', NULL, '$2y$10$sC8dgwiQocUYL4bxFJ5yl.4thyOOUFFW6Y0blzQfbtVtZpno9Q6SG', 'Chauthe, Pokhara, Nepal', 28.19404520, 84.02335160, '9876345678', 'Male', NULL, NULL, NULL, NULL, 'ServiceProvider', '2020-11-09 02:02:23', '2020-11-09 02:02:23', NULL),
(11, 'Ajay', 'Ajay Pun', 'ajay@gmail.com', NULL, '$2y$10$Ivj1nsUH6S7K.TvhOsNzWuKqBGY0aDNHtvS8x61zeflnC3MqlhQby', 'Bagar, Pokhara, Nepal', 28.24055170, 83.98765320, '9803647844', 'Male', NULL, NULL, NULL, NULL, 'ServiceProvider', '2020-11-09 02:03:05', '2020-11-09 02:03:05', NULL),
(12, 'Sita', 'Sita Sapkota', 'sita@gmail.com', NULL, '$2y$10$Azd.PGx3h0yfgDCyYRW0/.6rWnw0Rdevqox1rftP1vHsRaRztv5jK', 'Chhorepatan, Pokhara, Nepal', 28.19254490, 83.95590360, '9807645623', 'Female', NULL, NULL, NULL, NULL, 'ServiceProvider', '2020-11-09 02:03:39', '2020-11-09 02:03:39', NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
