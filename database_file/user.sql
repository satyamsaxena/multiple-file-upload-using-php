-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 29, 2021 at 08:06 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `image-upload-php`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `images` varchar(255) NOT NULL,
  `date_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `images`, `date_time`) VALUES
(0, 'republic-day-tshirt-png.png', '2021-07-29 08:03:56'),
(0, 'default.png', '2021-07-29 08:04:19'),
(0, 'default.png', '2021-07-29 08:04:19'),
(0, 'default.png', '2021-07-29 08:04:19'),
(0, 'default.png', '2021-07-29 08:04:19'),
(0, 'default.png', '2021-07-29 08:04:19'),
(0, 'default.png', '2021-07-29 08:04:19'),
(0, 'default.png', '2021-07-29 08:04:19'),
(0, 'republic-day-tshirt-png.png', '2021-07-29 08:04:19'),
(0, 'download (1).jfif', '2021-07-29 08:05:02'),
(0, 'download (2).jfif', '2021-07-29 08:05:02'),
(0, 'download.jfif', '2021-07-29 08:05:02'),
(0, 'images (1).jfif', '2021-07-29 08:05:02'),
(0, 'images.jfif', '2021-07-29 08:05:02');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
