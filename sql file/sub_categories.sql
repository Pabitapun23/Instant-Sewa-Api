-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 15, 2020 at 12:55 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

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
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `name`, `description`, `category_id`, `created_at`, `updated_at`, `deleted_at`, `image`) VALUES
(1, 'Switch and Socket', 'Tristique senectus et netus et malesuada fames ac turpis. Ante metus dictum at tempor commodo ullamcorper. Dictum varius duis at consectetur.', 1, '2020-10-01 17:00:21', '2020-10-01 17:00:21', NULL, 'images/photos/switchAndSockets.jpg'),
(2, 'Fan', 'Eget arcu dictum varius duis at. Eget nunc lobortis mattis aliquam faucibus purus in massa tempor. A pellentesque sit amet porttitor eget dolor morbi. Pellentesque habitant morbi tristique se', 1, '2020-10-01 17:01:00', '2020-10-01 17:01:00', NULL, 'images/photos/fan.jpg'),
(3, 'Light', 'Dictumst quisque sagittis purus sit amet. Felis eget velit aliquet sagittis id consectetur purus.', 1, '2020-10-01 17:01:33', '2020-10-01 17:01:33', NULL, 'images/photos/electrician.jpg'),
(4, 'MCB and Fuse', 'Nunc sed id semper risus in hendrerit. Semper auctor neque vitae tempus quam pellentesque nec. Eu feugiat pretium nibh ipsum consequat nisl vel pretium', 1, '2020-10-01 17:01:33', '2020-10-01 17:01:33', NULL, 'images/photos/mcbAndFuse.jpg'),
(5, 'Inverter and Stabilizer', 'Enim nulla aliquet porttitor lacus luctus accumsan. Proin nibh nisl condimentum id venenatis a condimentum vitae sapien.', 1, '2020-10-01 17:01:33', '2020-10-01 17:01:33', NULL, 'images/photos/inverter.jpg'),
(6, 'Wiring', 'Dictumst quisque sagittis purus sit amet. Felis eget velit aliquet sagittis id consectetur purus.', 1, '2020-10-01 17:01:33', '2020-10-01 17:01:33', NULL, 'images/photos/wiring.jpg'),
(7, 'Doorbell', 'At ultrices mi tempus imperdiet nulla malesuada pellentesque elit. Lorem ipsum dolor sit amet consectetur adipiscing.', 1, '2020-10-01 17:01:33', '2020-10-01 17:01:33', NULL, 'images/photos/doorbell.jpg'),
(8, 'Securitycam Installation', 'Volutpat est velit egestas dui id ornare arcu odio.', 1, '2020-10-01 17:01:33', '2020-10-01 17:01:33', NULL, 'images/photos/securitycam.jpg'),
(9, 'Electric Motor', ' Tristique senectus et netus et malesuada fames ac turpis. Ante metus dictum at tempor commodo ullamcorper. ', 1, '2020-10-01 17:01:33', '2020-10-01 17:01:33', NULL, 'images/photos/electricmotor.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
