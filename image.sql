-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Feb 24, 2022 at 07:52 PM
-- Server version: 8.0.26
-- PHP Version: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_data`
--

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `image_id` int NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`image_id`, `file_name`, `created`, `modified`) VALUES
(1, 'book_2.jpeg', '2022-02-24 10:59:52', '2022-02-24 10:58:10'),
(2, 'book_3.jpeg', '2022-02-24 10:59:52', '2022-02-24 10:58:10'),
(3, 'book_4.jpeg', '2022-02-24 10:59:52', '2022-02-24 10:58:10'),
(4, 'book_5.jpeg', '2022-02-24 10:59:52', '2022-02-24 10:58:10'),
(5, 'book_6.jpeg', '2022-02-24 10:59:52', '2022-02-24 10:58:10'),
(6, 'book_7.jpeg', '2022-02-24 11:01:44', '2022-02-24 11:00:23'),
(7, 'book_8.jpeg', '2022-02-24 11:01:44', '2022-02-24 11:00:23'),
(8, 'book_9.jpeg', '2022-02-24 11:01:44', '2022-02-24 11:00:23'),
(9, 'book_10.jpeg', '2022-02-24 11:01:44', '2022-02-24 11:00:23'),
(10, 'book_11.jpeg', '2022-02-24 11:01:44', '2022-02-24 11:00:23'),
(11, 'book_12.jpeg', '2022-02-24 11:03:22', '2022-02-24 11:02:44'),
(12, 'book_13.jpeg', '2022-02-24 11:03:22', '2022-02-24 11:02:44'),
(13, 'book_14.jpeg', '2022-02-24 11:03:22', '2022-02-24 11:02:44'),
(14, 'book_15.jpeg', '2022-02-24 11:03:22', '2022-02-24 11:02:44'),
(15, 'book_16.jpeg', '2022-02-24 11:03:22', '2022-02-24 11:02:44'),
(16, 'book_17.jpeg', '2022-02-24 11:04:11', '2022-02-24 11:03:30'),
(17, 'book_18.jpeg', '2022-02-24 11:04:11', '2022-02-24 11:03:30'),
(18, 'book_19.jpeg', '2022-02-24 11:04:11', '2022-02-24 11:03:30'),
(19, 'book_20.jpeg', '2022-02-24 11:04:11', '2022-02-24 11:03:30'),
(20, 'book_21.jpeg', '2022-02-24 11:04:11', '2022-02-24 11:03:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`image_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `image_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
