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
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `author_id` int NOT NULL,
  `first` varchar(255) NOT NULL,
  `last` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`author_id`, `first`, `last`, `email`) VALUES
(1, 'Blake', 'Snyder', 'b_snyder@hotmail.com'),
(2, 'Francesco', 'Marciuliano', 'fmarciuliano@gmail.com'),
(3, 'Martin', 'Grondin', 'm_grondin@outlook.com'),
(4, 'Lilian ', 'Jackson Braun', 'lljb@gmail.com'),
(5, 'Galia', 'Bernstein', 'gbernstein@gmail.com'),
(6, 'Marijn', 'Haverbeke', 'mhaverbeke@gmail.com'),
(7, 'David', 'Flanagan', 'dflanagan@outlook.com'),
(8, 'Fran', 'Bailey', 'franbailey@hotmail.com'),
(9, 'Christian', 'Rätsch', 'c_ratsch@gmail.com'),
(10, 'John Robin', 'Baker', 'jrbaker@outlook.com'),
(11, 'David Gordon', 'Wilson', 'dg_wilson@gmail.com'),
(12, 'Jim', 'Papadopoulos', 'j_papadopoulos@rocketmail.com'),
(13, 'Frank Rowland', 'Whitt', 'fwhitt@hotmail.com'),
(14, 'Ming-Yi', 'Wu', 'my_wu@gmail.com'),
(15, 'John', 'Montroll', 'jmontroll@outlook.com'),
(16, 'Deb Fitzpatrick', 'Deb Fitzpatrick', 'fitzpatrick_deb@gmail.com'),
(17, 'Stephanie', 'Campisi', 's_campisi@protonmail.com'),
(18, 'Ronald J.', 'Roberts', 'rj_roberts@gmail.com'),
(19, 'Tom', 'Wolfe', 'twolfe@gmail.com'),
(20, 'Jess', 'Black', 'jblack@gmail.com'),
(21, 'Justine ', 'Solomons-Moat', 'jsolomons-moat@gmail.com'),
(22, 'Takashi', 'Hiraide', 't_hiraide@gmail.com'),
(23, 'Andy', 'Raithby', 'araithby@outlook.com'),
(24, 'Pat', 'Doyle', 'p_doyle@gmail.com'),
(25, 'Herwig', 'Baldauf', 'hbaldauf@gmail.com'),
(26, 'John', 'Byl', 'jbyl@outlook.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`author_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `author_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
