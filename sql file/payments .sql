-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2021 at 06:52 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `instantsewa`
--

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `payment_id`, `payer_id`, `payer_email`, `cart_id`, `amount`, `currency`, `platform`, `payment_status`, `created_at`, `updated_at`) VALUES
(1, '4573028', '2', 'losgodby0@businessinsider.com', 1, 122.13, 'USD', 'Paypal', 'Success', '2021-01-31 00:00:00', '2021-04-26 00:00:00'),
(2, '6547714', '1', 'mflay1@technorati.com', 2, 173.24, 'USD', 'Paypal', 'Success', '2021-03-30 00:00:00', '2021-09-16 00:00:00'),
(3, '1097894', '1', 'wgebby2@spotify.com', 3, 202.15, 'USD', 'Paypal', 'Success', '2021-08-06 00:00:00', '2021-08-13 00:00:00'),
(4, '4618866', '1', 'kmurfill3@answers.com', 4, 143.56, 'USD', 'Paypal', 'Success', '2021-06-26 00:00:00', '2021-06-18 00:00:00'),
(5, '4948259', '1', 'jdhillon4@theatlantic.com', 5, 105.46, 'USD', 'Paypal', 'Success', '2021-09-05 00:00:00', '2021-02-24 00:00:00'),
(6, '9549047', '1', 'tballam5@nbcnews.com', 6, 184.06, 'USD', 'Paypal', 'Success', '2021-04-19 00:00:00', '2021-05-04 00:00:00'),
(7, '9549048', '2', 'cdwane6@fastcompany.com', 7, 121.30, 'USD', 'Paypal', 'Success', '2021-04-20 00:00:00', '2020-08-02 00:00:00'),
(8, '4520274', '1', 'jslograve7@phpbb.com', 8, 245.43, 'USD', 'Paypal', 'Success', '2021-07-25 00:00:00', '2021-01-19 00:00:00'),
(9, '219641', '2', 'jjackson8@google.es', 9, 167.07, 'USD', 'Paypal', 'Success', '2020-12-14 00:00:00', '2021-02-18 00:00:00'),
(10, '1348467', '2', 'mead9@usnews.com', 10, 136.95, 'USD', 'Paypal', 'Success', '2020-08-29 00:00:00', '2020-08-02 00:00:00'),
(11, '571866', '2', 'llorkinga@kickstarter.com', 11, 235.16, 'USD', 'Paypal', 'Success', '2020-12-28 00:00:00', '2021-06-28 00:00:00'),
(12, '9885520', '1', 'abeynknb@weibo.com', 12, 180.83, 'USD', 'Paypal', 'Success', '2021-07-23 00:00:00', '2021-07-04 00:00:00'),
(13, '4841022', '1', 'bgelderdd@toplist.cz', 14, 165.10, 'USD', 'Paypal', 'Success', '2021-01-09 00:00:00', '2021-03-02 00:00:00'),
(14, '75ypbFMRBd', '2', 'devkotahancy@gmail.com', 14, 100.00, 'Nrs.', 'Cash', 'Success', '2021-10-20 06:06:18', '2021-10-20 06:06:18'),
(15, '88oXyQhxvG', '2', 'devkotahancy@gmail.com', 104, 5.00, 'Nrs.', 'Paypal', 'Success', '2021-10-25 22:06:01', '2021-10-25 22:06:01'),
(16, '9940872', '2', 'smulderrigf@paginegialle.it', 16, 115.06, 'USD', 'Paypal', 'Success', '2020-12-13 00:00:00', '2020-10-09 00:00:00'),
(17, '8208639', '2', 'gbong@paypal.com', 17, 172.55, 'USD', 'Paypal', 'Success', '2021-03-18 00:00:00', '2021-05-24 00:00:00'),
(18, '6173116', '2', 'scunradih@imdb.com', 18, 127.38, 'USD', 'Paypal', 'Success', '2020-09-26 00:00:00', '2020-10-22 00:00:00'),
(19, '4739712', '1', 'mpywelli@dagondesign.com', 19, 170.53, 'USD', 'Paypal', 'Success', '2021-01-25 00:00:00', '2021-09-13 00:00:00'),
(20, '7880473', '1', 'msmietonj@squidoo.com', 20, 245.70, 'USD', 'Paypal', 'Success', '2021-02-24 00:00:00', '2020-10-14 00:00:00'),
(21, '7517845', '1', 'bmattiuzzik@topsy.com', 21, 173.16, 'USD', 'Paypal', 'Success', '2021-01-31 00:00:00', '2021-07-09 00:00:00'),
(22, '9770293', '1', 'jtwopennyl@spiegel.de', 22, 237.83, 'USD', 'Paypal', 'Success', '2021-04-03 00:00:00', '2021-07-20 00:00:00'),
(23, '1791049', '2', 'nbodem@prlog.org', 23, 129.51, 'USD', 'Paypal', 'Success', '2021-02-06 00:00:00', '2020-10-27 00:00:00'),
(24, '3051705', '2', 'tswanborrown@cdbaby.com', 24, 246.08, 'USD', 'Paypal', 'Success', '2020-09-18 00:00:00', '2021-03-07 00:00:00');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
