-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2021 at 08:42 AM
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
-- Dumping data for table `rate_and_reviews`
--

INSERT INTO `rate_and_reviews` (`id`, `rating`, `reviews`, `service_provider_id`, `service_user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 4.09, 'tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer', 3, 5, '2020-09-14 18:15:00', '2021-01-02 18:15:00', NULL),
(2, 4.02, 'nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere', 3, 6, '2021-05-20 18:15:00', '2021-02-13 18:15:00', NULL),
(3, 4.24, 'mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum', 3, 4, '2020-07-16 18:15:00', '2020-07-21 18:15:00', NULL),
(4, 3.86, 'aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet', 12, 4, '2021-06-15 18:15:00', '2020-11-28 18:15:00', NULL),
(5, 4.04, 'mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor', 12, 8, '2021-04-10 18:15:00', '2021-04-03 18:15:00', NULL),
(6, 1.46, 'odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit', 3, 4, '2021-01-27 18:15:00', '2020-07-25 18:15:00', NULL),
(7, 1.36, 'aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan', 3, 10, '2021-03-26 18:15:00', '2020-08-21 18:15:00', NULL),
(8, 2.15, 'et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis', 3, 5, '2020-10-19 18:15:00', '2021-04-27 18:15:00', NULL),
(9, 1.24, 'augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa', 12, 9, '2020-12-18 18:15:00', '2020-09-13 18:15:00', NULL),
(10, 1.20, 'vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero', 3, 4, '2021-04-20 18:15:00', '2021-05-24 18:15:00', NULL),
(11, 3.26, 'vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula', 12, 11, '2021-04-27 18:15:00', '2020-07-29 18:15:00', NULL),
(12, 4.46, 'est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id', 12, 7, '2020-12-27 18:15:00', '2021-06-07 18:15:00', NULL),
(13, 3.31, 'platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante', 12, 9, '2020-07-11 18:15:00', '2020-09-05 18:15:00', NULL),
(14, 4.64, 'justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla', 3, 8, '2021-03-19 18:15:00', '2020-08-24 18:15:00', NULL),
(15, 1.43, 'justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id', 12, 7, '2020-08-08 18:15:00', '2021-02-16 18:15:00', NULL),
(16, 3.97, 'magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes', 3, 4, '2020-07-18 18:15:00', '2021-03-25 18:15:00', NULL),
(17, 3.40, 'vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl', 3, 9, '2020-09-18 18:15:00', '2021-03-31 18:15:00', NULL),
(18, 4.50, 'interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac', 3, 5, '2021-04-15 18:15:00', '2021-05-27 18:15:00', NULL),
(19, 4.58, 'suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in', 12, 2, '2021-02-10 18:15:00', '2020-07-22 18:15:00', NULL),
(20, 4.40, 'odio justo sollicitudin ut suscipit a feugiat et eros vestibulum', 12, 7, '2021-06-24 18:15:00', '2021-02-04 18:15:00', NULL),
(21, 2.40, 'dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla', 12, 1, '2020-10-15 18:15:00', '2021-04-08 18:15:00', NULL),
(22, 4.40, 'felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio', 3, 11, '2021-03-28 18:15:00', '2020-09-03 18:15:00', NULL),
(23, 2.36, 'maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum', 3, 5, '2021-03-18 18:15:00', '2021-04-06 18:15:00', NULL),
(24, 1.27, 'at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue', 12, 6, '2021-02-02 18:15:00', '2020-10-26 18:15:00', NULL),
(25, 4.38, 'accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus', 12, 2, '2020-09-15 18:15:00', '2021-05-13 18:15:00', NULL),
(26, 2.77, 'vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia', 12, 4, '2020-11-11 18:15:00', '2020-09-27 18:15:00', NULL),
(27, 1.06, 'id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada', 3, 11, '2021-03-11 18:15:00', '2021-02-10 18:15:00', NULL),
(28, 2.24, 'odio cras mi pede malesuada in imperdiet et commodo vulputate', 12, 7, '2021-03-04 18:15:00', '2021-01-13 18:15:00', NULL),
(29, 4.27, 'viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi', 3, 6, '2020-09-05 18:15:00', '2020-11-04 18:15:00', NULL),
(30, 3.71, 'sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus', 12, 9, '2021-01-31 18:15:00', '2020-06-27 18:15:00', NULL),
(31, 3.48, 'non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci', 12, 9, '2020-08-05 18:15:00', '2021-06-01 18:15:00', NULL),
(32, 3.42, 'viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper', 3, 10, '2021-06-20 18:15:00', '2021-05-12 18:15:00', NULL),
(33, 4.89, 'turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere', 3, 10, '2021-04-13 18:15:00', '2020-08-03 18:15:00', NULL),
(34, 4.44, 'aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui', 3, 8, '2020-12-27 18:15:00', '2020-11-07 18:15:00', NULL),
(35, 4.78, 'id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat', 12, 9, '2021-02-25 18:15:00', '2021-06-24 18:15:00', NULL),
(36, 2.56, 'viverra pede ac diam cras pellentesque volutpat dui maecenas tristique', 12, 4, '2021-04-03 18:15:00', '2021-04-25 18:15:00', NULL),
(37, 1.78, 'turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue', 12, 2, '2020-11-18 18:15:00', '2020-11-22 18:15:00', NULL),
(38, 1.73, 'eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum', 3, 6, '2021-01-30 18:15:00', '2020-06-10 18:15:00', NULL),
(39, 4.97, 'nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id', 3, 3, '2020-11-20 18:15:00', '2020-09-19 18:15:00', NULL),
(40, 2.22, 'in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit', 3, 6, '2020-06-29 18:15:00', '2020-10-24 18:15:00', NULL),
(41, 2.76, 'praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id', 3, 1, '2020-09-01 18:15:00', '2021-02-11 18:15:00', NULL),
(42, 3.94, 'tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est', 3, 3, '2020-10-12 18:15:00', '2021-04-20 18:15:00', NULL),
(43, 1.40, 'lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit', 12, 9, '2021-03-17 18:15:00', '2020-08-08 18:15:00', NULL),
(44, 4.31, 'scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis', 12, 6, '2020-07-29 18:15:00', '2020-08-02 18:15:00', NULL),
(45, 1.65, 'habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget', 3, 9, '2020-08-19 18:15:00', '2021-06-24 18:15:00', NULL),
(46, 1.95, 'quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa', 12, 5, '2021-05-25 18:15:00', '2020-10-03 18:15:00', NULL),
(47, 2.77, 'ultrices vel augue vestibulum ante ipsum primis in faucibus orci', 12, 2, '2021-03-18 18:15:00', '2021-01-16 18:15:00', NULL),
(48, 2.97, 'neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante', 3, 6, '2021-03-15 18:15:00', '2020-12-11 18:15:00', NULL),
(49, 4.82, 'odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis', 3, 4, '2020-10-14 18:15:00', '2020-07-01 18:15:00', NULL),
(50, 3.05, 'est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id', 3, 1, '2020-08-01 18:15:00', '2020-08-09 18:15:00', NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
