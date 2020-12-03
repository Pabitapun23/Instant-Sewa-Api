-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 19, 2020 at 06:18 PM
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

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Electrical', '', 'images/photos/electric.png', NULL, NULL, NULL),
(2, 'Painting', '', 'images/photos/painting1.png', NULL, NULL, NULL),
(3, 'Plumbing', '', 'images/photos/plumb.png', NULL, NULL, NULL),
(4, 'Beauty', '', 'images/photos/beautician.png', NULL, NULL, NULL),
(5, 'Cleaning', '', 'images/photos/clean2.png', NULL, NULL, NULL),
(6, 'Appliances', '', 'images/photos/appliance1.png', NULL, NULL, NULL),
(7, 'Laundry', '', 'images/photos/laundry.png', NULL, NULL, NULL),
(8, 'Tv mounting', '', 'images/photos/tvMounting.png', NULL, NULL, NULL),
(9, 'Handyman', '', 'images/photos/plumb1.png', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favourites`
--

CREATE TABLE `favourites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2020_10_10_195216_create_categories_table', 1),
(10, '2020_10_13_163045_create_sub_categories_table', 1),
(11, '2020_10_13_163205_create_rate_and_reviews_table', 1),
(12, '2020_10_13_163224_create_operations_table', 1),
(13, '2020_10_13_163241_create_favourites_table', 1),
(14, '2020_10_13_163252_create_carts_table', 1),
(15, '2020_10_14_091005_create_services_table', 1),
(16, '2020_10_14_093056_foriegnkey', 1),
(17, '2020_10_14_173045_serviceprovider_service', 1),
(18, '2020_10_14_173246_service_category', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('3947da4015078a600651e4ac56c5f16fcaeea169a78f1b4a872fe8a90a799abcb3f4b6bfa957d915', 2, 1, 'Personal Access Token', '[]', 0, '2020-10-14 17:31:56', '2020-10-14 17:31:56', '2020-10-21 23:16:56'),
('3f7cb69511cb8c7499ddc1cce64153f4c8e1c4d094beacadf41c6ecb8165ccfb00fc2f906c75629f', 2, 1, 'Personal Access Token', '[]', 0, '2020-10-14 17:29:06', '2020-10-14 17:29:06', '2020-10-21 23:14:07'),
('b3659cdd491a55f01b197d3bf0c48c42b2150d99091a21ce92441d9f8e361d0164df15fdaef03ed5', 2, 1, 'Personal Access Token', '[]', 0, '2020-10-14 17:30:28', '2020-10-14 17:30:28', '2020-10-21 23:15:29'),
('bf1c110f49c953b7a471c79a1bdf341641bc05611139097c2130c8ec98664800dca768dee824813f', 2, 1, 'Personal Access Token', '[]', 0, '2020-10-14 17:28:51', '2020-10-14 17:28:51', '2020-10-21 23:13:51'),
('c262d468510f44e92692a941d270fa17e64682f2f21dc8032dca6e382ab1e376bbc88df72060ad38', 2, 1, 'Personal Access Token', '[]', 0, '2020-10-14 17:35:58', '2020-10-14 17:35:58', '2020-10-21 23:20:58'),
('c3f77285c1dd34e7294b9725afab17f0f3c4ef77e3337f8d1a7ca2dc3f8e9807239bd23409bb4af0', 1, 1, 'Personal Access Token', '[]', 0, '2020-10-14 17:27:56', '2020-10-14 17:27:56', '2020-10-21 23:12:56'),
('d2f2ad82c67066b58cf7774138e043ee0217882b24e88f10d339c1b989991e357ca146736291d0d6', 2, 1, 'Personal Access Token', '[]', 0, '2020-10-14 17:33:16', '2020-10-14 17:33:16', '2020-10-21 23:18:16'),
('e5f25d886301f8e1d91de33ab1ba3dfde8b51d7e74597e08d4371c1256e7dd761a80f59f760e987a', 1, 1, 'Personal Access Token', '[]', 0, '2020-10-14 17:21:07', '2020-10-14 17:21:07', '2020-10-21 23:06:07');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'InstantSewa Personal Access Client', 'cuPnuRksCgtCk7rocAcVgDb0oo8DTIIsSMTdJvFD', NULL, 'http://localhost', 1, 0, 0, '2020-10-14 17:13:07', '2020-10-14 17:13:07'),
(2, NULL, 'InstantSewa Password Grant Client', 'xkEPII8TeOwOktvfz3Scw0CaNVscOQY5aqdKchc7', 'users', 'http://localhost', 0, 1, 0, '2020-10-14 17:13:07', '2020-10-14 17:13:07');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-10-14 17:13:07', '2020-10-14 17:13:07');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `operations`
--

CREATE TABLE `operations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `service_id` bigint(20) UNSIGNED NOT NULL,
  `service_provider_id` bigint(20) UNSIGNED NOT NULL,
  `service_user_id` bigint(20) UNSIGNED NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `flag` tinyint(1) NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating_review_id` bigint(20) UNSIGNED NOT NULL,
  `completed_time` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rate_and_reviews`
--

CREATE TABLE `rate_and_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rating` double(8,2) NOT NULL,
  `reviews` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_categories_id` bigint(20) UNSIGNED NOT NULL,
  `payment` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`, `description`, `quantity`, `image`, `sub_categories_id`, `payment`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Switch Installation and Repair', 'At ultrices mi tempus imperdiet nulla malesuada pellentesque elit. Lorem ipsum dolor sit amet consectetur adipiscing.', 1, 'images/photos/switchAndSockets.jpg\r\n', 1, 1.00, NULL, NULL, NULL),
(2, 'Socket Installation and Repair', 'llamcorper velit sed. Volutpat est velit egestas dui id ornare arcu odio. Quisque sagittis purus', 1, 'images/photos/switchAndSockets.jpg\r\n', 1, 1.00, NULL, NULL, NULL),
(3, 'Holder Installation and Repair', 'sit amet volutpat consequat mauris nunc. Tristique senectus et netus et malesuada fames ac turpis. Ante metus dictum at tempor commodo ullamcorper.', 1, 'images/photos/switchAndSockets.jpg\r\n', 1, 1.00, NULL, NULL, NULL),
(4, 'Switch and Socket Replacement', 'Eget arcu dictum varius duis at. Eget nunc lobortis mattis aliquam faucibus purus in massa tempor.', 1, 'images/photos/switchAndSockets.jpg\r\n', 1, 1.00, NULL, NULL, NULL),
(5, 'Ceiling fan servicing', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tortor erat, malesuada vel urna id, finibus accumsan mi. Integer tempus elementum augue, non congue augue tincidunt eu.', 1, 'images/photos/fan.jpg', 2, 1.00, NULL, NULL, NULL),
(6, 'Wall fan servicing', 'Sed nec molestie erat. Proin in varius mauris. Sed eu neque hendrerit, fringilla neque quis, consectetur orci. Pellentesque ultrices cursus turpis, vitae varius magna porta non.', 1, 'images/photos/fan.jpg', 2, 1.00, NULL, NULL, NULL),
(7, 'Table stand servicing', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tortor erat, malesuada vel urna id, finibus accumsan mi. Integer tempus elementum augue, non congue augue tincidunt eu. ', 1, 'images/photos/fan.jpg', 2, 1.00, NULL, NULL, NULL),
(8, 'Exhaust fan servicing', 'Sed nec molestie erat. Proin in varius mauris. Sed eu neque hendrerit, fringilla neque quis, consectetur orci. Pellentesque ultrices cursus turpis, vitae varius magna porta non.', 1, 'images/photos/fan.jpg', 2, 1.00, NULL, NULL, NULL),
(9, 'Fan installation', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tortor erat, malesuada vel urna id, finibus accumsan mi. Integer tempus elementum augue, non congue augue tincidunt eu.', 1, 'images/photos/fan.jpg', 2, 1.00, NULL, NULL, NULL),
(10, 'Tube light energy lights installation', ' Sed nec molestie erat. Proin in varius mauris. Sed eu neque hendrerit, fringilla neque quis, consectetur orci. Pellentesque ultrices cursus turpis, vitae varius magna porta non.', 1, 'images/photos/electrician.jpg', 3, 1.00, NULL, NULL, NULL),
(11, 'Bulb/ Cfl / LED replacement', 'Curabitur rhoncus egestas vestibulum. Maecenas eu lacus nec neque scelerisque posuere. Ut pharetra lectus finibus leo luctus suscipit. Etiam finibus nunc sem, eget finibus ante egestas sit amet. Cras ligula arcu, dictum sit amet velit', 1, 'images/photos/electrician.jpg', 3, 1.00, NULL, NULL, NULL),
(12, 'Bulb holder installation', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tortor erat, malesuada vel urna id, finibus accumsan mi. Integer tempus elementum augue, non congue augue tincidunt eu.', 1, 'images/photos/electrician.jpg', 3, 1.00, NULL, NULL, NULL),
(13, 'Choke replacement', 'Sed nec molestie erat. Proin in varius mauris. Sed eu neque hendrerit, fringilla neque quis, consectetur orci. Pellentesque ultrices cursus turpis, vitae varius magna porta non.', 1, 'images/photos/electrician.jpg', 3, 1.00, NULL, NULL, NULL),
(14, 'Fancy light installation and repair', 'Curabitur rhoncus egestas vestibulum. Maecenas eu lacus nec neque scelerisque posuere. Ut pharetra lectus finibus leo luctus suscipit. Etiam finibus nunc sem,', 1, 'images/photos/electrician.jpg', 3, 1.00, NULL, NULL, NULL),
(15, 'Fuse replacement', 'Fusce ac tellus id ligula consectetur sollicitudin vel quis nunc. Quisque iaculis orci felis, eu porttitor erat ornare ac. Sed sollicitudin orci nec ex varius, in convallis ex ultricies.', 1, 'images/photos/mcbAndFuse.jpg', 4, 1.00, NULL, NULL, NULL),
(16, 'Single pole MCB installation', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tortor erat, malesuada vel urna id, finibus accumsan mi. Integer tempus elementum augue, non congue augue tincidunt eu.', 1, 'images/photos/mcbAndFuse.jpg', 4, 1.00, NULL, NULL, NULL),
(17, 'Sub meter installation', 'Sed nec molestie erat. Proin in varius mauris. Sed eu neque hendrerit, fringilla neque quis, consectetur orci. Pellentesque ultrices cursus turpis, vitae varius magna porta non. ', 1, 'images/photos/mcbAndFuse.jpg', 4, 1.00, NULL, NULL, NULL),
(18, 'Air circuit breaker installation', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tortor erat, malesuada vel urna id, finibus accumsan mi. Integer tempus elementum augue, non congue augue tincidunt eu.', 1, 'images/photos/mcbAndFuse.jpg', 4, 1.00, NULL, NULL, NULL),
(19, 'Inverter installation and repair', ' Sed nec molestie erat. Proin in varius mauris. Sed eu neque hendrerit, fringilla neque quis, consectetur orci. Pellentesque ultrices cursus turpis, vitae varius magna porta non. Curabitur rhoncus egestas vestibulum.', 1, 'images/photos/inverter.jpg', 5, 1.00, NULL, NULL, NULL),
(20, 'Stabilizer installation and repair', 'Fusce ac tellus id ligula consectetur sollicitudin vel quis nunc. Quisque iaculis orci felis, eu porttitor erat ornare ac. Sed sollicitudin orci nec', 1, 'images/photos/inverter.jpg', 5, 1.00, NULL, NULL, NULL),
(21, 'Full house electric wiring', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tortor erat, malesuada vel urna id, finibus accumsan mi. Integer tempus elementum augue, non congue augue tincidunt', 1, 'images/photos/wiring.jpg', 6, 1.00, NULL, NULL, NULL),
(22, 'Cable wiring', 'Proin in varius mauris. Sed eu neque hendrerit, fringilla neque quis, consectetur orci. Pellentesque ultrices cursus turpis, vitae varius magna porta non. Curabitur rhoncus egestas vestibulum.', 1, 'images/photos/wiring.jpg', 6, 1.00, NULL, NULL, NULL),
(23, 'Network cable wiring', 'eu lacus nec neque scelerisque posuere. Ut pharetra lectus finibus leo luctus suscipit. Etiam finibus nunc sem, eget finibus ante egestas sit amet. Cras ligula arcu, dictum sit amet velit sit ', 1, 'images/photos/wiring.jpg', 6, 1.00, NULL, NULL, NULL),
(24, 'Door bell installation and repair', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tortor erat, malesuada vel urna id, finibus accumsan mi. Integer tempus elementum augue, non congue augue tincidunt eu.', 1, 'images/photos/doorbell.jpg', 7, 1.00, NULL, NULL, NULL),
(25, 'Security cam installation', 'Sed nec molestie erat. Proin in varius mauris. Sed eu neque hendrerit, fringilla neque quis, consectetur orci. Pellentesque ultrices cursus turpis, vitae varius magna porta non.', 1, 'images/photos/securitycam.jpg', 8, 1.00, NULL, NULL, NULL),
(26, 'Electric motor installation and repair', 'Nullam facilisis arcu a ex ultricies semper. Nulla dapibus, velit non mollis lobortis, erat lectus tempus lectus, sit amet suscipit velit libero non quam. Vivamus volutpat', 1, 'motor.png', 9, 1.00, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `service_category`
--

CREATE TABLE `service_category` (
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `service_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_category`
--

INSERT INTO `service_category` (`category_id`, `service_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 17),
(1, 16),
(1, 18),
(1, 19),
(1, 20),
(1, 21),
(1, 22),
(1, 23),
(1, 24),
(1, 25),
(1, 26);

-- --------------------------------------------------------

--
-- Table structure for table `service_provider-service`
--

CREATE TABLE `service_provider-service` (
  `service_provider_id` bigint(20) UNSIGNED NOT NULL,
  `service_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_provider-service`
--

INSERT INTO `service_provider-service` (`service_provider_id`, `service_id`) VALUES
(11, 11),
(10, 5),
(12, 3),
(3, 3),
(4, 23),
(5, 19),
(6, 16),
(7, 17),
(8, 15),
(9, 25);

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(9, 'Electric Motor', ' Tristique senectus et netus et malesuada fames ac turpis. Ante metus dictum at tempor commodo ullamcorper. ', 'images/photos/electricmotor.jpg', 1, '2020-10-01 17:01:33', '2020-10-01 17:01:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phoneno` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verified` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verification_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `fullname`, `email`, `email_verified_at`, `password`, `address`, `phoneno`, `avatar`, `remember_token`, `verified`, `verification_token`, `user_type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'amrita1', 'Amrita Poudel', 'poudel@gmail.com', NULL, '$2y$10$n5YjvD8jexAENur3iwUKvuvJYXajBgUx8SL4qtnhn1ZzpbMl.4MyS', 'Pokhara-11', '9846082120', NULL, NULL, NULL, NULL, 'serviceuser', '2020-10-14 17:21:06', '2020-10-14 17:21:06', NULL),
(2, 'amrita', NULL, 'amrita@gmail.com', NULL, '$2y$10$pbfO5/T2NjyiJrbAgqPWU.KxjnQgZySReuMFyMmsei34KJ0XsIWra', NULL, NULL, NULL, NULL, NULL, NULL, 'service user', '2020-10-14 17:28:51', '2020-10-14 17:28:51', NULL),
(3, 'ram', 'Ram Poudel', 'ram@gmail.com', NULL, 'ram12345', 'Rambazar, Pokhara', '9807845678', NULL, NULL, NULL, NULL, 'ServiceProvider', '2020-10-05 01:43:32', '2020-10-12 04:15:32', '2020-10-13 10:27:32'),
(4, 'shyam', 'Shyam Thapa', 'shyam@gmail.com', NULL, 'shyam12345', 'Lamachaur, Pokhara', '9803432580', NULL, NULL, NULL, NULL, 'ServiceProvider', '2020-10-01 09:29:42', '2020-10-06 11:23:54', '2020-10-07 08:24:17'),
(5, 'hari', 'Hari Bahadur', 'hari@gmail.com', NULL, 'hari12345', 'Hari Chowk, Pokhara', '9821389089', NULL, NULL, NULL, NULL, 'ServiceProvider', '2020-10-02 23:38:09', '2020-10-06 01:45:06', '2020-10-08 05:29:41'),
(6, 'laxman', 'Laxman Adhikari', 'laxman@gmail.com', NULL, 'laxman12345', 'Lekhnath', '9812345678', NULL, NULL, NULL, NULL, 'ServiceProvider', '2020-10-06 02:44:41', '2020-10-09 19:24:52', '2020-10-12 07:38:12'),
(7, 'gopal', 'Gopal Sunar', 'gopal@gmail.com', NULL, 'gopal12345', 'Amarsingh Chowk, Pokhara', '9803456767', NULL, NULL, NULL, NULL, 'ServiceProvider', '2020-10-10 05:52:00', '2020-10-12 04:30:00', '2020-10-14 07:03:09'),
(8, 'gopi', 'Gopi Khadka', 'gopi@gmail.com', NULL, 'gopi12345', 'Deep', '9867890234', NULL, NULL, NULL, NULL, 'ServiceProvider', '2020-10-02 07:30:00', '2020-10-05 12:40:06', '2020-10-10 05:58:56'),
(9, 'bijay', 'Bijay Gurung', 'bijay@gmail.com', NULL, 'bijay12345', 'Birauta', '9840876453', NULL, NULL, NULL, NULL, 'ServiceProvider', '2020-10-08 10:34:31', '2020-10-10 02:26:22', '2020-10-12 04:58:50'),
(10, 'ashish', 'Ashish KC', 'ashish@gmail.com', NULL, 'ashish12345', 'Chauthe', '9876345678', NULL, NULL, NULL, NULL, 'ServiceProvider', '2020-10-08 08:42:15', '2020-10-09 02:46:42', '2020-10-13 05:49:13'),
(11, 'ajay', 'Ajay Pun', 'ajay@gmail.com', NULL, 'ajay12345', 'Bagar', '9803647844', NULL, NULL, NULL, NULL, 'ServiceProvider', '2020-10-01 20:26:08', '2020-10-06 13:03:58', '2020-10-12 05:54:26'),
(12, 'sita', 'Sita Sapkota', 'sita@gmail.com', NULL, 'sita12345', 'Chhorepatan', '9807645623', NULL, NULL, NULL, NULL, 'ServiceProvider', '2020-10-03 09:48:23', '2020-10-07 07:38:48', '2020-10-11 13:50:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favourites`
--
ALTER TABLE `favourites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `operations`
--
ALTER TABLE `operations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `operations_service_id_foreign` (`service_id`),
  ADD KEY `operations_service_provider_id_foreign` (`service_provider_id`),
  ADD KEY `operations_service_user_id_foreign` (`service_user_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `rate_and_reviews`
--
ALTER TABLE `rate_and_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `services_sub_categories_id_foreign` (`sub_categories_id`);

--
-- Indexes for table `service_category`
--
ALTER TABLE `service_category`
  ADD KEY `service_category_category_id_foreign` (`category_id`),
  ADD KEY `service_category_service_id_foreign` (`service_id`);

--
-- Indexes for table `service_provider-service`
--
ALTER TABLE `service_provider-service`
  ADD KEY `service_provider_service_service_provider_id_foreign` (`service_provider_id`),
  ADD KEY `service_provider_service_service_id_foreign` (`service_id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favourites`
--
ALTER TABLE `favourites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `operations`
--
ALTER TABLE `operations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rate_and_reviews`
--
ALTER TABLE `rate_and_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `operations`
--
ALTER TABLE `operations`
  ADD CONSTRAINT `operations_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `operations_service_provider_id_foreign` FOREIGN KEY (`service_provider_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `operations_service_user_id_foreign` FOREIGN KEY (`service_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `services_sub_categories_id_foreign` FOREIGN KEY (`sub_categories_id`) REFERENCES `sub_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `service_category`
--
ALTER TABLE `service_category`
  ADD CONSTRAINT `service_category_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `service_category_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `service_provider-service`
--
ALTER TABLE `service_provider-service`
  ADD CONSTRAINT `service_provider_service_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `service_provider_service_service_provider_id_foreign` FOREIGN KEY (`service_provider_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD CONSTRAINT `sub_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
