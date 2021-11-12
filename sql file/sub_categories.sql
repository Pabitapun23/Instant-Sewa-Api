-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2021 at 10:06 AM
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

INSERT INTO `sub_categories` (`id`, `name`, `description`, `image`, `category_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Switch and Socket', 'Tristique senectus et netus et malesuada fames ac turpis. Ante metus dictum at tempor commodo ullamcorper. Dictum varius duis at consectetur.', 'images/photos/switchAndSockets.jpg', 1, '2020-10-01 17:00:21', '2020-10-01 17:00:21', NULL),
(2, 'Fan', 'Eget arcu dictum varius duis at. Eget nunc lobortis mattis aliquam faucibus purus in massa tempor. A pellentesque sit amet porttitor eget dolor morbi. Pellentesque habitant morbi tristique se', 'images/photos/fan.jpg', 1, '2020-10-01 17:01:00', '2020-10-01 17:01:00', NULL),
(3, 'Light', 'Dictumst quisque sagittis purus sit amet. Felis eget velit aliquet sagittis id consectetur purus.', 'images/photos/electrician.jpg', 1, '2020-10-01 17:01:33', '2020-10-01 17:01:33', NULL),
(4, 'MCB and Fuse', 'Nunc sed id semper risus in hendrerit. Semper auctor neque vitae tempus quam pellentesque nec. Eu feugiat pretium nibh ipsum consequat nisl vel pretium', 'images/photos/mcbAndFuse.jpg', 1, '2020-10-01 17:01:33', '2020-10-01 17:01:33', NULL),
(5, 'Inverter and Stabilizer', 'Enim nulla aliquet porttitor lacus luctus accumsan. Proin nibh nisl condimentum id venenatis a condimentum vitae sapien.', 'images/photos/inverter.jpg', 1, '2020-10-01 17:01:33', '2020-10-01 17:01:33', NULL),
(6, 'Wiring', 'Dictumst quisque sagittis purus sit amet. Felis eget velit aliquet sagittis id consectetur purus.', 'images/photos/wiring.jpg', 1, '2020-10-01 17:01:33', '2020-10-01 17:01:33', NULL),
(7, 'Doorbell', 'At ultrices mi tempus imperdiet nulla malesuada pellentesque elit. Lorem ipsum dolor sit amet consectetur adipiscing.', 'images/photos/doorbell.jpg', 1, '2020-10-01 17:01:33', '2020-10-01 17:01:33', NULL),
(8, 'Securitycam Installation', 'Volutpat est velit egestas dui id ornare arcu odio.', 'images/photos/securitycam.jpg', 1, '2020-10-01 17:01:33', '2020-10-01 17:01:33', NULL),
(9, 'Electric Motor', ' Tristique senectus et netus et malesuada fames ac turpis. Ante metus dictum at tempor commodo ullamcorper. ', 'images/photos/electricmotor.jpg', 1, '2020-10-01 17:01:33', '2020-10-01 17:01:33', NULL),
(10, 'Home Painting', 'lorem iseum', 'images/photos/painting1.png', 2, '2021-11-01 08:51:45', '2021-11-01 08:51:45', NULL),
(11, 'Room and Wall Painting', 'lorem', 'images/photos/painting1.png', 2, '2021-11-01 08:51:45', '2021-11-01 08:51:45', NULL),
(12, 'Water Proofing', 'lorem', 'images/photos/painting1.png', 2, '2021-11-01 08:51:45', '2021-11-01 08:51:45', NULL),
(13, 'Wood Painting', 'lorem', 'images/photos/painting1.png', 2, '2021-11-01 08:51:45', '2021-11-01 08:51:45', NULL),
(14, 'Wall Texture', '12345', 'images/photos/painting1.png', 2, '2021-11-01 08:51:45', '2021-11-01 08:51:45', NULL),
(15, 'Enamel Painting', 'lorem iseum', 'images/photos/painting1.png', 2, '2021-11-01 08:51:45', '2021-11-01 08:51:45', NULL),
(16, 'Basin & Sink', 'hbjhbh', 'images/photos/plumb.png', 3, '2021-11-01 08:51:45', '2021-11-01 08:51:45', NULL),
(17, 'Bath Fitting', 'fssf', 'images/photos/plumb.png', 3, '2021-11-01 08:51:45', '2021-10-31 18:15:00', NULL),
(18, 'Blockage', '12345', 'images/photos/plumb.png', 3, '2021-11-01 08:51:45', '2021-11-01 08:51:45', NULL),
(19, 'Tap & Mixer', 'hbghg', 'images/photos/plumb.png', 3, '2021-11-01 08:51:45', '2021-11-01 08:51:45', NULL),
(20, 'Toilet', 'bxhsb', 'images/photos/plumb.png', 3, '2021-11-01 08:51:45', '2021-11-01 08:51:45', NULL),
(21, 'Water tank', 'tank', 'images/photos/plumb.png', 3, '2021-11-01 08:51:45', '2021-11-01 08:51:45', NULL),
(22, 'Motor', 'Motor', 'images/photos/plumb.png', 3, '2021-11-01 08:51:45', '2021-11-01 08:51:45', NULL),
(23, 'Minor Installation', 'hcbhcbc', 'images/photos/plumb.png', 3, '2021-11-01 08:51:45', '2021-11-01 08:51:45', NULL),
(24, 'Home cleaning', 'djsbjsnd', 'images/photos/clean2.png', 4, '2021-11-01 10:17:07', '2021-11-01 10:17:07', NULL),
(25, 'Office and Commercial Cleaning', 'gdvg', 'images/photos/clean2.png', 4, '2021-11-01 10:17:07', '2021-11-01 10:17:07', NULL),
(26, 'Kitchen Hood Cleaning', 'kitchen', 'images/photos/clean2.png', 4, '2021-11-01 10:17:07', '2021-11-01 10:17:07', NULL),
(27, 'Fridge Cleaning', 'Fridge', 'images/photos/clean2.png', 4, '2021-11-01 10:17:07', '2021-11-01 10:17:07', NULL),
(28, 'Sofa Chair Cleaning', 'chair', 'images/photos/clean2.png', 4, '2021-11-01 10:17:07', '2021-11-01 10:17:07', NULL),
(29, 'Carpet/Mattress Cleaning', 'Matress', 'images/photos/clean2.png', 4, '2021-11-01 10:17:07', '2021-11-01 10:17:07', NULL),
(30, 'Water tank Cleaning', 'tank', 'images/photos/clean2.png', 4, '2021-11-01 10:17:07', '2021-11-01 10:17:07', NULL),
(31, 'Pipe line cleaning', 'pipeline', 'images/photos/clean2.png', 4, '2021-11-01 10:17:07', '2021-11-01 10:17:07', NULL),
(32, 'Septic Tank Cleaning', 'Septic Tank', 'images/photos/clean2.png', 4, '2021-11-01 10:17:07', '2021-11-01 10:17:07', NULL),
(33, 'Home Sanitization', 'Home', 'images/photos/clean2.png', 4, '2021-11-01 10:17:07', '2021-11-01 10:17:07', NULL),
(34, 'Commercial Santization', 'santization', 'images/photos/clean2.png', 4, '2021-11-01 10:17:07', '2021-11-01 10:17:07', NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
