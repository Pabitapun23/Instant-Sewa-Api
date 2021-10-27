-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 27, 2021 at 03:27 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

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

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payment_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payer_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payer_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cart_id` bigint(20) UNSIGNED NOT NULL,
  `amount` double(10,2) NOT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `platform` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `payment_id`, `payer_id`, `payer_email`, `cart_id`, `amount`, `currency`, `platform`, `payment_status`, `created_at`, `updated_at`) VALUES
(1, '4573028', '2', 'losgodby0@businessinsider.com', 1, 122.13, 'CNY', 'PayPal', 'SUCCESS', '2021-01-30 18:15:00', '2021-04-25 18:15:00'),
(2, '6547714', '1', 'mflay1@technorati.com', 2, 173.24, 'RUB', 'PayPal', 'SUCCESS', '2021-03-29 18:15:00', '2021-09-15 18:15:00'),
(3, '1097894', '1', 'wgebby2@spotify.com', 3, 202.15, 'MXN', 'PayPal', 'SUCCESS', '2021-08-05 18:15:00', '2021-08-12 18:15:00'),
(4, '4618866', '1', 'kmurfill3@answers.com', 4, 143.56, 'CNY', 'PayPal', 'SUCCESS', '2021-06-25 18:15:00', '2021-06-17 18:15:00'),
(5, '4948259', '1', 'jdhillon4@theatlantic.com', 5, 105.46, 'EUR', 'PayPal', 'SUCCESS', '2021-09-04 18:15:00', '2021-02-23 18:15:00'),
(6, '9549047', '1', 'tballam5@nbcnews.com', 6, 184.06, 'CNY', 'PayPal', 'SUCCESS', '2021-04-18 18:15:00', '2021-05-03 18:15:00'),
(7, '9549048', '2', 'cdwane6@fastcompany.com', 7, 121.30, 'RUB', 'PayPal', 'SUCCESS', '2021-04-19 18:15:00', '2020-08-01 18:15:00'),
(8, '4520274', '1', 'jslograve7@phpbb.com', 8, 245.43, 'CNY', 'PayPal', 'SUCCESS', '2021-07-24 18:15:00', '2021-01-18 18:15:00'),
(9, '219641', '2', 'jjackson8@google.es', 9, 167.07, 'IDR', 'PayPal', 'SUCCESS', '2020-12-13 18:15:00', '2021-02-17 18:15:00'),
(10, '1348467', '2', 'mead9@usnews.com', 10, 136.95, 'CNY', 'PayPal', 'SUCCESS', '2020-08-28 18:15:00', '2020-08-01 18:15:00'),
(11, '571866', '2', 'llorkinga@kickstarter.com', 11, 235.16, 'EUR', 'PayPal', 'SUCCESS', '2020-12-27 18:15:00', '2021-06-27 18:15:00'),
(12, '9885520', '1', 'abeynknb@weibo.com', 12, 180.83, 'CZK', 'PayPal', 'SUCCESS', '2021-07-22 18:15:00', '2021-07-03 18:15:00'),
(13, '3160806', '2', 'dbaglanc@nba.com', 13, 234.63, 'IDR', 'PayPal', 'SUCCESS', '2020-12-01 18:15:00', '2021-09-12 18:15:00'),
(14, '4841022', '1', 'bgelderdd@toplist.cz', 14, 165.10, 'CNY', 'PayPal', 'SUCCESS', '2021-01-08 18:15:00', '2021-03-01 18:15:00'),
(15, '9546970', '1', 'agudde@opera.com', 15, 170.15, 'BRL', 'PayPal', 'SUCCESS', '2020-11-23 18:15:00', '2021-05-02 18:15:00'),
(16, '9940872', '2', 'smulderrigf@paginegialle.it', 16, 115.06, 'AMD', 'PayPal', 'SUCCESS', '2020-12-12 18:15:00', '2020-10-08 18:15:00'),
(17, '8208639', '2', 'gbong@paypal.com', 17, 172.55, 'MGA', 'PayPal', 'SUCCESS', '2021-03-17 18:15:00', '2021-05-23 18:15:00'),
(18, '6173116', '2', 'scunradih@imdb.com', 18, 127.38, 'EUR', 'PayPal', 'SUCCESS', '2020-09-25 18:15:00', '2020-10-21 18:15:00'),
(19, '4739712', '1', 'mpywelli@dagondesign.com', 19, 170.53, 'PLN', 'PayPal', 'SUCCESS', '2021-01-24 18:15:00', '2021-09-12 18:15:00'),
(20, '7880473', '1', 'msmietonj@squidoo.com', 20, 245.70, 'PLN', 'PayPal', 'SUCCESS', '2021-02-23 18:15:00', '2020-10-13 18:15:00'),
(21, '7517845', '1', 'bmattiuzzik@topsy.com', 21, 173.16, 'CAD', 'PayPal', 'SUCCESS', '2021-01-30 18:15:00', '2021-07-08 18:15:00'),
(22, '9770293', '1', 'jtwopennyl@spiegel.de', 22, 237.83, 'BRL', 'PayPal', 'SUCCESS', '2021-04-02 18:15:00', '2021-07-19 18:15:00'),
(23, '1791049', '2', 'nbodem@prlog.org', 23, 129.51, 'IDR', 'PayPal', 'SUCCESS', '2021-02-05 18:15:00', '2020-10-26 18:15:00'),
(24, '3051705', '2', 'tswanborrown@cdbaby.com', 24, 246.08, 'RUB', 'PayPal', 'SUCCESS', '2020-09-17 18:15:00', '2021-03-06 18:15:00'),
(25, '7838552', '1', 'dlapadulao@t-online.de', 25, 179.52, 'NIO', 'PayPal', 'SUCCESS', '2021-04-22 18:15:00', '2021-02-22 18:15:00'),
(42, '739c1c84f7cad', 'A4ZFLX6UPDQXC', 'sb-dm43685469970@personal.example.com', 2, 96.00, 'USD', 'PayPal', 'Success', '2021-10-02 07:07:39', '2021-10-02 07:07:39'),
(43, 'ad28aa8cf6f8c', 'A4ZFLX6UPDQXC', 'sb-dm43685469970@personal.example.com', 2, 96.00, 'USD', 'PayPal', 'Success', '2021-10-02 07:08:36', '2021-10-02 07:08:36'),
(44, '51b6b5eeb4be6', 'A4ZFLX6UPDQXC', 'sb-dm43685469970@personal.example.com', 2, 96.00, 'USD', 'PayPal', 'Success', '2021-10-02 07:10:19', '2021-10-02 07:10:19'),
(45, '69aed9be62a16', 'A4ZFLX6UPDQXC', 'sb-dm43685469970@personal.example.com', 2, 96.00, 'USD', 'PayPal', 'Success', '2021-10-02 07:10:37', '2021-10-02 07:10:37'),
(46, '61e5a1cac188d', 'A4ZFLX6UPDQXC', 'sb-dm43685469970@personal.example.com', 2, 96.00, 'USD', 'PayPal', 'Success', '2021-10-02 07:11:26', '2021-10-02 07:11:26'),
(47, 'fed348d83078', 'A4ZFLX6UPDQXC', 'sb-dm43685469970@personal.example.com', 2, 96.00, 'USD', 'PayPal', 'Success', '2021-10-02 07:11:58', '2021-10-02 07:11:58'),
(48, '85f8e7481365f', 'A4ZFLX6UPDQXC', 'sb-dm43685469970@personal.example.com', 2, 96.00, 'USD', 'PayPal', 'Success', '2021-10-02 07:12:25', '2021-10-02 07:12:25'),
(49, '3e64f66ebd5cb', 'A4ZFLX6UPDQXC', 'sb-dm43685469970@personal.example.com', 2, 96.00, 'USD', 'PayPal', 'Success', '2021-10-02 07:12:48', '2021-10-02 07:12:48'),
(50, 'b0ae19476d6e3', 'A4ZFLX6UPDQXC', 'sb-dm43685469970@personal.example.com', 2, 96.00, 'USD', 'PayPal', 'Success', '2021-10-02 07:13:49', '2021-10-02 07:13:49'),
(51, '971d4454d2c73', 'A4ZFLX6UPDQXC', 'sb-dm43685469970@personal.example.com', 2, 96.00, 'USD', 'PayPal', 'Success', '2021-10-02 07:14:19', '2021-10-02 07:14:19'),
(52, 'e6fd752d65109', 'A4ZFLX6UPDQXC', 'sb-dm43685469970@personal.example.com', 2, 96.00, 'USD', 'PayPal', 'Success', '2021-10-02 07:14:59', '2021-10-02 07:14:59'),
(53, '4cede62a5d30e', 'A4ZFLX6UPDQXC', 'sb-dm43685469970@personal.example.com', 2, 96.00, 'USD', 'PayPal', 'Success', '2021-10-02 07:15:22', '2021-10-02 07:15:22'),
(54, 'dc53b93f8805b', 'A4ZFLX6UPDQXC', 'sb-dm43685469970@personal.example.com', 2, 96.00, 'USD', 'PayPal', 'Success', '2021-10-02 07:15:40', '2021-10-02 07:15:40'),
(55, '187f8165ed6ab', 'A4ZFLX6UPDQXC', 'sb-dm43685469970@personal.example.com', 2, 96.00, 'USD', 'PayPal', 'Success', '2021-10-02 07:16:08', '2021-10-02 07:16:08'),
(56, 'a7e23674d20ce', 'A4ZFLX6UPDQXC', 'sb-dm43685469970@personal.example.com', 2, 96.00, 'USD', 'PayPal', 'Success', '2021-10-02 07:16:35', '2021-10-02 07:16:35'),
(57, '3d03b661bf71e', 'A4ZFLX6UPDQXC', 'sb-dm43685469970@personal.example.com', 2, 96.00, 'USD', 'PayPal', 'Success', '2021-10-02 07:17:11', '2021-10-02 07:17:11'),
(58, '13d15b37fe79a', 'A4ZFLX6UPDQXC', 'sb-dm43685469970@personal.example.com', 2, 96.00, 'USD', 'PayPal', 'Success', '2021-10-02 07:18:31', '2021-10-02 07:18:31'),
(59, '90f0635ac401c', 'A4ZFLX6UPDQXC', 'sb-dm43685469970@personal.example.com', 2, 96.00, 'USD', 'PayPal', 'Success', '2021-10-02 07:19:40', '2021-10-02 07:19:40'),
(60, '67996b64348c1', 'A4ZFLX6UPDQXC', 'sb-dm43685469970@personal.example.com', 2, 96.00, 'USD', 'PayPal', 'Success', '2021-10-02 07:20:01', '2021-10-02 07:20:01'),
(61, 'e834624b16b2e', 'A4ZFLX6UPDQXC', 'sb-dm43685469970@personal.example.com', 2, 96.00, 'USD', 'PayPal', 'Success', '2021-10-02 16:50:58', '2021-10-02 16:50:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_cart_id_foreign` (`cart_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `cart_groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
