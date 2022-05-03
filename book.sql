-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Feb 24, 2022 at 07:51 PM
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
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `book_id` int NOT NULL,
  `book_title` varchar(128) NOT NULL,
  `tagline` varchar(255) DEFAULT NULL,
  `isbn13` varchar(13) NOT NULL,
  `isbn10` varchar(10) NOT NULL,
  `year` int NOT NULL,
  `pages` int NOT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`book_id`, `book_title`, `tagline`, `isbn13`, `isbn10`, `year`, `pages`, `created`, `updated`) VALUES
(2, 'Save the Cat!', 'The Last Book on Screenwriting You\'ll Ever Need', '9781615931712', '1615931716', 2005, 195, NULL, NULL),
(3, 'I Could Pee on This', 'And Other Poems by Cats', '9781452121864', '1452121869', 2012, 112, NULL, NULL),
(4, 'LOLcat Bible', 'In Teh Beginnin Ceiling Cat Maded Teh Skiez An Da Urfs N Stuffs', '9781569757345', '1569757348', 2010, 176, NULL, NULL),
(5, 'The Cat Who Said Cheese', NULL, '9780515120271', '515120278', 1997, 272, NULL, NULL),
(6, 'I Am a Cat', NULL, '9781683351801', '1683351800', 2018, 32, NULL, NULL),
(7, 'Eloquent JavaScript', 'A Modern Introduction to Programming', '9781593279509', '1593279507', 2018, 450, NULL, NULL),
(8, 'JavaScript The Definitive Guide', NULL, '9780596101992', '596101996', 2006, 994, NULL, NULL),
(9, 'The Healing Power of Plants', 'The Hero House Plants that Love You Back', '9781473567283', '1473567289', 2019, 192, NULL, NULL),
(10, 'The Encyclopedia of Psychoactive Plants', 'Ethnopharmacology and Its Applications', '9780892819782', '892819782', 2005, 942, NULL, NULL),
(11, 'Bicycling science', NULL, '9780262731546', '262731541', 2004, 477, NULL, NULL),
(12, 'The Stolen Bicycle', NULL, '9781925498554', '1925498557', 2017, 416, NULL, NULL),
(13, 'Origami Dinosaurs for Beginners', NULL, '9780486498195', '486498190', 2013, 48, NULL, NULL),
(14, '90 Packets of Instant Noodles', NULL, '9781921361999', '1921361999', 2010, 307, NULL, NULL),
(15, 'The Ugly Dumpling', NULL, '9781938063695', '1938063694', 2016, 32, NULL, NULL),
(16, 'Fish Pathology', NULL, '9781118222966', '1118222962', 2012, 592, NULL, NULL),
(17, 'The Right Stuff', NULL, '9781448181971', '1448181976', 2018, 448, NULL, NULL),
(18, 'Kitty Is Not a Cat: Lights Out', NULL, '9780734419750', '734419759', 2020, 60, NULL, NULL),
(19, 'Behind Every Great Woman is a Great Cat', NULL, '9781912785063', '1912785064', 2019, 96, NULL, NULL),
(20, 'The Guest Cat', NULL, '9780811221511', '811221512', 2014, 144, NULL, NULL),
(21, 'Chicken and Noodle Games', '141 Fun Activities with Innovative Equipment', '9780736063920', '736063927', 2007, 244, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`book_id`),
  ADD UNIQUE KEY `isbn13` (`isbn13`),
  ADD UNIQUE KEY `isbn10` (`isbn10`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `book_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
