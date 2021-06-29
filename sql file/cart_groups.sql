-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2021 at 03:48 PM
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
-- Dumping data for table `cart_groups`
--

INSERT INTO `cart_groups` (`id`, `collection_name`, `created_at`, `updated_at`) VALUES
(1, 'sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante', '2019-09-30 18:15:00', '2020-09-28 18:15:00'),
(2, 'metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam', '2019-11-25 18:15:00', '2020-04-21 18:15:00'),
(3, 'neque duis bibendum morbi non quam nec dui luctus rutrum', '2021-01-24 18:15:00', '2021-05-24 18:15:00'),
(4, 'ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu', '2019-07-31 18:15:00', '2021-01-14 18:15:00'),
(5, 'vestibulum ante ipsum primis in faucibus orci luctus et ultrices', '2019-11-08 18:15:00', '2019-12-19 18:15:00'),
(6, 'ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus', '2021-01-21 18:15:00', '2019-09-17 18:15:00'),
(7, 'id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat', '2019-10-30 18:15:00', '2019-12-30 18:15:00'),
(8, 'ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis', '2019-11-05 18:15:00', '2021-04-27 18:15:00'),
(9, 'sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed', '2019-11-19 18:15:00', '2019-11-12 18:15:00'),
(10, 'pede ullamcorper augue a suscipit nulla elit ac nulla sed', '2019-12-27 18:15:00', '2019-12-07 18:15:00'),
(11, 'praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante', '2021-06-01 18:15:00', '2020-02-23 18:15:00'),
(12, 'pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum', '2020-09-06 18:15:00', '2021-05-14 18:15:00'),
(13, 'nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit', '2020-03-04 18:15:00', '2019-09-26 18:15:00'),
(14, 'sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus', '2020-07-30 18:15:00', '2019-10-30 18:15:00'),
(15, 'duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu', '2019-07-12 18:15:00', '2020-02-08 18:15:00'),
(16, 'luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien', '2020-11-19 18:15:00', '2019-08-03 18:15:00'),
(17, 'purus phasellus in felis donec semper sapien a libero nam dui proin leo odio', '2020-10-25 18:15:00', '2020-06-25 18:15:00'),
(18, 'eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam', '2021-06-25 18:15:00', '2019-10-14 18:15:00'),
(19, 'erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer', '2020-04-17 18:15:00', '2019-12-30 18:15:00'),
(20, 'mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula', '2019-12-18 18:15:00', '2020-06-22 18:15:00'),
(21, 'sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien', '2021-03-12 18:15:00', '2020-04-13 18:15:00'),
(22, 'mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices', '2020-04-29 18:15:00', '2021-03-27 18:15:00'),
(23, 'orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat', '2019-06-19 18:15:00', '2019-09-01 18:15:00'),
(24, 'vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id', '2020-05-18 18:15:00', '2020-10-27 18:15:00'),
(25, 'duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in', '2020-12-20 18:15:00', '2020-04-27 18:15:00'),
(26, 'lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium', '2021-01-01 18:15:00', '2020-07-23 18:15:00'),
(27, 'vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer', '2020-05-11 18:15:00', '2021-04-01 18:15:00'),
(28, 'maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis', '2021-04-23 18:15:00', '2019-12-28 18:15:00'),
(29, 'id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras', '2019-11-17 18:15:00', '2019-06-23 18:15:00'),
(30, 'luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet', '2020-01-07 18:15:00', '2020-08-18 18:15:00'),
(31, 'felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed', '2020-07-08 18:15:00', '2021-05-27 18:15:00'),
(32, 'sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed', '2020-02-05 18:15:00', '2020-03-04 18:15:00'),
(33, 'aliquam convallis nunc proin at turpis a pede posuere nonummy integer', '2019-10-31 18:15:00', '2020-08-29 18:15:00'),
(34, 'justo in hac habitasse platea dictumst etiam faucibus cursus urna ut', '2021-02-26 18:15:00', '2019-08-17 18:15:00'),
(35, 'ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros', '2020-08-24 18:15:00', '2019-08-27 18:15:00'),
(36, 'proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus', '2021-04-19 18:15:00', '2019-08-18 18:15:00'),
(37, 'in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec', '2020-05-19 18:15:00', '2020-04-21 18:15:00'),
(38, 'neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet', '2019-12-26 18:15:00', '2020-09-30 18:15:00'),
(39, 'ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus', '2021-04-23 18:15:00', '2020-03-16 18:15:00'),
(40, 'pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare', '2020-07-19 18:15:00', '2019-08-27 18:15:00'),
(41, 'at velit eu est congue elementum in hac habitasse platea dictumst', '2020-02-08 18:15:00', '2020-11-30 18:15:00'),
(42, 'penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque', '2021-02-25 18:15:00', '2020-04-07 18:15:00'),
(43, 'eget massa tempor convallis nulla neque libero convallis eget eleifend', '2021-06-14 18:15:00', '2021-04-05 18:15:00'),
(44, 'morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum', '2020-09-09 18:15:00', '2021-05-29 18:15:00'),
(45, 'curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet', '2020-01-06 18:15:00', '2019-09-04 18:15:00'),
(46, 'cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes', '2019-09-27 18:15:00', '2020-03-02 18:15:00'),
(47, 'aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci', '2020-02-26 18:15:00', '2019-08-11 18:15:00'),
(48, 'volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac', '2021-02-18 18:15:00', '2019-12-29 18:15:00'),
(49, 'proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum', '2019-12-01 18:15:00', '2019-10-07 18:15:00'),
(50, 'dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus', '2019-11-09 18:15:00', '2019-10-15 18:15:00'),
(51, 'ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce', '2020-05-06 18:15:00', '2019-06-23 18:15:00'),
(52, 'vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit', '2020-06-05 18:15:00', '2020-05-17 18:15:00'),
(53, 'eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare', '2019-09-16 18:15:00', '2020-03-27 18:15:00'),
(54, 'cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque', '2021-04-10 18:15:00', '2020-10-16 18:15:00'),
(55, 'duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend', '2020-12-01 18:15:00', '2020-08-06 18:15:00'),
(56, 'posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam', '2019-08-12 18:15:00', '2019-09-18 18:15:00'),
(57, 'dolor quis odio consequat varius integer ac leo pellentesque ultrices', '2021-04-28 18:15:00', '2019-05-31 18:15:00'),
(58, 'donec diam neque vestibulum eget vulputate ut ultrices vel augue', '2020-04-19 18:15:00', '2020-01-13 18:15:00'),
(59, 'nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo', '2020-07-01 18:15:00', '2019-06-12 18:15:00'),
(60, 'interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at', '2020-02-17 18:15:00', '2019-09-28 18:15:00'),
(61, 'cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut', '2019-10-26 18:15:00', '2020-06-13 18:15:00'),
(62, 'volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat', '2020-04-01 18:15:00', '2021-02-07 18:15:00'),
(63, 'morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque', '2020-05-02 18:15:00', '2019-11-29 18:15:00'),
(64, 'platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras', '2021-02-20 18:15:00', '2020-01-17 18:15:00'),
(65, 'justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan', '2019-10-31 18:15:00', '2021-04-23 18:15:00'),
(66, 'odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus', '2021-04-05 18:15:00', '2021-03-05 18:15:00'),
(67, 'at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis', '2020-11-29 18:15:00', '2019-08-29 18:15:00'),
(68, 'imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue', '2020-02-13 18:15:00', '2019-12-31 18:15:00'),
(69, 'eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget', '2019-08-19 18:15:00', '2020-09-01 18:15:00'),
(70, 'consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo', '2019-12-21 18:15:00', '2020-05-03 18:15:00'),
(71, 'maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque', '2020-02-18 18:15:00', '2020-02-21 18:15:00'),
(72, 'blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing', '2021-04-21 18:15:00', '2021-06-25 18:15:00'),
(73, 'sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus', '2021-05-26 18:15:00', '2020-10-27 18:15:00'),
(74, 'iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean', '2020-05-05 18:15:00', '2019-10-13 18:15:00'),
(75, 'etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi', '2020-12-22 18:15:00', '2020-03-10 18:15:00'),
(76, 'accumsan felis ut at dolor quis odio consequat varius integer ac leo', '2020-05-02 18:15:00', '2021-06-17 18:15:00'),
(77, 'non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis', '2021-04-12 18:15:00', '2020-11-18 18:15:00'),
(78, 'ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in', '2020-12-26 18:15:00', '2020-03-26 18:15:00'),
(79, 'nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu', '2019-09-19 18:15:00', '2020-10-04 18:15:00'),
(80, 'ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum', '2020-02-25 18:15:00', '2020-11-17 18:15:00'),
(81, 'nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus', '2019-08-10 18:15:00', '2021-03-31 18:15:00'),
(82, 'metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc', '2019-08-23 18:15:00', '2019-07-26 18:15:00'),
(83, 'pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus', '2020-09-11 18:15:00', '2019-12-01 18:15:00'),
(84, 'nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros', '2021-03-17 18:15:00', '2020-05-24 18:15:00'),
(85, 'donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed', '2019-09-14 18:15:00', '2020-11-07 18:15:00'),
(86, 'lacus at turpis donec posuere metus vitae ipsum aliquam non mauris', '2021-01-19 18:15:00', '2020-07-01 18:15:00'),
(87, 'a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo', '2020-06-24 18:15:00', '2020-04-03 18:15:00'),
(88, 'non mi integer ac neque duis bibendum morbi non quam nec dui luctus', '2019-10-03 18:15:00', '2019-06-05 18:15:00'),
(89, 'luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec', '2021-06-20 18:15:00', '2020-07-23 18:15:00'),
(90, 'in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat', '2019-06-14 18:15:00', '2020-05-12 18:15:00'),
(91, 'sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti', '2020-04-20 18:15:00', '2020-05-09 18:15:00'),
(92, 'quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum', '2021-05-21 18:15:00', '2020-03-29 18:15:00'),
(93, 'montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem', '2019-09-02 18:15:00', '2020-01-20 18:15:00'),
(94, 'ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc', '2019-12-03 18:15:00', '2020-07-25 18:15:00'),
(95, 'erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at', '2020-08-30 18:15:00', '2021-02-19 18:15:00'),
(96, 'nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede', '2019-07-17 18:15:00', '2020-01-28 18:15:00'),
(97, 'pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in', '2019-11-29 18:15:00', '2019-12-28 18:15:00'),
(98, 'placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor', '2021-02-21 18:15:00', '2020-06-28 18:15:00'),
(99, 'vestibulum velit id pretium iaculis diam erat fermentum justo nec', '2021-05-02 18:15:00', '2021-02-12 18:15:00'),
(100, 'nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam nam tristique tortor eu', '2019-11-25 18:15:00', '2020-10-11 18:15:00');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
