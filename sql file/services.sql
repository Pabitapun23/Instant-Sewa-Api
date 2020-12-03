-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 14, 2020 at 10:41 PM
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
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`, `description`, `quantity`, `image`, `sub_categories_id`, `payment`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Switch Installation and Repair', 'At ultrices mi tempus imperdiet nulla malesuada pellentesque elit. Lorem ipsum dolor sit amet consectetur adipiscing.', 1, 'images/photos/switchAndSockets.jpg', 1, 1.00, NULL, NULL, NULL),
(2, 'Socket Installation and Repair', 'llamcorper velit sed. Volutpat est velit egestas dui id ornare arcu odio. Quisque sagittis purus', 1, 'images/photos/switchAndSockets.jpg', 1, 1.00, NULL, NULL, NULL),
(3, 'Holder Installation and Repair', 'sit amet volutpat consequat mauris nunc. Tristique senectus et netus et malesuada fames ac turpis. Ante metus dictum at tempor commodo ullamcorper.', 1, 'images/photos/switchAndSockets.jpg', 1, 1.00, NULL, NULL, NULL),
(4, 'Switch and Socket Replacement', 'Eget arcu dictum varius duis at. Eget nunc lobortis mattis aliquam faucibus purus in massa tempor.', 1, 'images/photos/switchAndSockets.jpg', 1, 1.00, NULL, NULL, NULL),
(5, 'Ceiling fan servicing', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tortor erat, malesuada vel urna id, finibus accumsan mi. Integer tempus elementum augue, non congue augue tincidunt eu.', 1, 'images/photos/fan.jpg', 2, 1.00, NULL, NULL, NULL),
(6, 'Wall fan servicing', 'Sed nec molestie erat. Proin in varius mauris. Sed eu neque hendrerit, fringilla neque quis, consectetur orci. Pellentesque ultrices cursus turpis, vitae varius magna porta non.', 1, 'images/photos/fan.jpg', 2, 1.00, NULL, NULL, NULL),
(7, 'Table stand servicing', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tortor erat, malesuada vel urna id, finibus accumsan mi. Integer tempus elementum augue, non congue augue tincidunt eu. ', 1, 'images/photos/fan.jpg', 2, 1.00, NULL, NULL, NULL),
(8, 'Exhaust fan servicing', 'Sed nec molestie erat. Proin in varius mauris. Sed eu neque hendrerit, fringilla neque quis, consectetur orci. Pellentesque ultrices cursus turpis, vitae varius magna porta non.', 1, 'images/photos/fan.jpg', 2, 1.00, NULL, NULL, NULL),
(9, 'Fan installation', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tortor erat, malesuada vel urna id, finibus accumsan mi. Integer tempus elementum augue, non congue augue tincidunt eu.', 1, 'images/photos/fan.jpg', 2, 1.00, NULL, NULL, NULL),
(10, 'Tube light energy lights installation', ' Sed nec molestie erat. Proin in varius mauris. Sed eu neque hendrerit, fringilla neque quis, consectetur orci. Pellentesque ultrices cursus turpis, vitae varius magna porta non.', 1, 'light.png', 3, 1.00, NULL, NULL, NULL),
(11, 'Bulb/ Cfl / LED replacement', 'Curabitur rhoncus egestas vestibulum. Maecenas eu lacus nec neque scelerisque posuere. Ut pharetra lectus finibus leo luctus suscipit. Etiam finibus nunc sem, eget finibus ante egestas sit amet. Cras ligula arcu, dictum sit amet velit', 1, 'light.png', 3, 1.00, NULL, NULL, NULL),
(12, 'Bulb holder installation', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tortor erat, malesuada vel urna id, finibus accumsan mi. Integer tempus elementum augue, non congue augue tincidunt eu.', 1, 'light.png', 3, 1.00, NULL, NULL, NULL),
(13, 'Choke replacement', 'Sed nec molestie erat. Proin in varius mauris. Sed eu neque hendrerit, fringilla neque quis, consectetur orci. Pellentesque ultrices cursus turpis, vitae varius magna porta non.', 1, 'light.png', 3, 1.00, NULL, NULL, NULL),
(14, 'Fancy light installation and repair', 'Curabitur rhoncus egestas vestibulum. Maecenas eu lacus nec neque scelerisque posuere. Ut pharetra lectus finibus leo luctus suscipit. Etiam finibus nunc sem,', 1, 'light.png', 3, 1.00, NULL, NULL, NULL),
(15, 'Fuse replacement', 'Fusce ac tellus id ligula consectetur sollicitudin vel quis nunc. Quisque iaculis orci felis, eu porttitor erat ornare ac. Sed sollicitudin orci nec ex varius, in convallis ex ultricies.', 1, 'mcbAndFuse.png', 4, 1.00, NULL, NULL, NULL),
(16, 'Single pole MCB installation', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tortor erat, malesuada vel urna id, finibus accumsan mi. Integer tempus elementum augue, non congue augue tincidunt eu.', 1, 'mcbAndFuse.png', 4, 1.00, NULL, NULL, NULL),
(17, 'Sub meter installation', 'Sed nec molestie erat. Proin in varius mauris. Sed eu neque hendrerit, fringilla neque quis, consectetur orci. Pellentesque ultrices cursus turpis, vitae varius magna porta non. ', 1, 'mcbAndFuse.png', 4, 1.00, NULL, NULL, NULL),
(18, 'Air circuit breaker installation', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tortor erat, malesuada vel urna id, finibus accumsan mi. Integer tempus elementum augue, non congue augue tincidunt eu.', 1, 'mcbAndFuse.png', 4, 1.00, NULL, NULL, NULL),
(19, 'Inverter installation and repair', ' Sed nec molestie erat. Proin in varius mauris. Sed eu neque hendrerit, fringilla neque quis, consectetur orci. Pellentesque ultrices cursus turpis, vitae varius magna porta non. Curabitur rhoncus egestas vestibulum.', 1, 'inverter.png', 5, 1.00, NULL, NULL, NULL),
(20, 'Stabilizer installation and repair', 'Fusce ac tellus id ligula consectetur sollicitudin vel quis nunc. Quisque iaculis orci felis, eu porttitor erat ornare ac. Sed sollicitudin orci nec', 1, 'inverter.png', 5, 1.00, NULL, NULL, NULL),
(21, 'Full house electric wiring', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tortor erat, malesuada vel urna id, finibus accumsan mi. Integer tempus elementum augue, non congue augue tincidunt', 1, 'wiring.png', 6, 1.00, NULL, NULL, NULL),
(22, 'Cable wiring', 'Proin in varius mauris. Sed eu neque hendrerit, fringilla neque quis, consectetur orci. Pellentesque ultrices cursus turpis, vitae varius magna porta non. Curabitur rhoncus egestas vestibulum.', 1, 'wiring.png', 6, 1.00, NULL, NULL, NULL),
(23, 'Network cable wiring', 'eu lacus nec neque scelerisque posuere. Ut pharetra lectus finibus leo luctus suscipit. Etiam finibus nunc sem, eget finibus ante egestas sit amet. Cras ligula arcu, dictum sit amet velit sit ', 1, 'wiring', 6, 1.00, NULL, NULL, NULL),
(24, 'Door bell installation and repair', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tortor erat, malesuada vel urna id, finibus accumsan mi. Integer tempus elementum augue, non congue augue tincidunt eu.', 1, 'door.png', 7, 1.00, NULL, NULL, NULL),
(25, 'Security cam installation', 'Sed nec molestie erat. Proin in varius mauris. Sed eu neque hendrerit, fringilla neque quis, consectetur orci. Pellentesque ultrices cursus turpis, vitae varius magna porta non.', 1, 'securityCam.png', 8, 1.00, NULL, NULL, NULL),
(26, 'Electric motor installation and repair', 'Nullam facilisis arcu a ex ultricies semper. Nulla dapibus, velit non mollis lobortis, erat lectus tempus lectus, sit amet suscipit velit libero non quam. Vivamus volutpat', 1, 'motor.png', 9, 1.00, NULL, NULL, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
