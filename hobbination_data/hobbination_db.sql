-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Apr 01, 2022 at 02:53 AM
-- Server version: 8.0.28
-- PHP Version: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hobbination_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `hobbination_database____category`
--

CREATE TABLE `hobbination_database____category` (
  `COL 1` varchar(11) NOT NULL,
  `COL 2` varchar(17) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `hobbination_database____category`
--

INSERT INTO `hobbination_database____category` (`COL 1`, `COL 2`) VALUES
('1', 'Tennis '),
('10', 'Crecket '),
('11', 'Football'),
('12', 'Rugby'),
('13', 'American football'),
('14', 'Cycling '),
('15', 'Skateboard'),
('16', 'Skiing '),
('17', 'Cooking '),
('18', 'Fitness'),
('19', 'Skating '),
('2', 'Basketball'),
('20', 'Sing '),
('21', 'Dance '),
('22', 'Running'),
('23', 'Fishing'),
('24', 'Valleyball'),
('25', 'Board game '),
('26', 'Video Create'),
('27', 'Programming '),
('28', 'Design '),
('29', 'Window shopping '),
('3', 'Baseball'),
('30', 'Golf'),
('4', 'Swimming '),
('5', 'Instrument'),
('6', 'Reading '),
('7', 'Gaming'),
('8', 'Kickboxing '),
('9', 'Boxing'),
('category_id', 'category_name');

-- --------------------------------------------------------

--
-- Table structure for table `hobbination_database____place`
--

CREATE TABLE `hobbination_database____place` (
  `COL 1` varchar(8) NOT NULL,
  `COL 2` varchar(46) DEFAULT NULL,
  `COL 3` varchar(56) DEFAULT NULL,
  `COL 4` varchar(17) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `hobbination_database____place`
--

INSERT INTO `hobbination_database____place` (`COL 1`, `COL 2`, `COL 3`, `COL 4`) VALUES
('1', 'Loyal Henry Park', '49 Bromborough Rd, Roseville NSW 2069', '32987123'),
('10', 'Inglis Park', '164 Barker St, Randwick NSW 2031', '27185111'),
('11', 'McDonald\'s Mascot', '9 Ross Smith Ave, Mascot NSW 2020', '26540443'),
('12', 'Brighton-Le-Sands Beach', 'The Grand Parade, Brighton-Le-Sands NSW 2216', '25895775'),
('13', 'Netstrata Jubilee Stadium', '249 Princes Hwy, Kogarah NSW 2218', '25251107'),
('14', 'Hurstville Aquatic Leisure Centre', 'Forest Rd, Hurstville NSW 2221', '24606439'),
('15', 'Como Pleasure Grounds', '2A Cremona Rd, Como NSW 2226', '23961771'),
('16', 'The Ridge Golf Course & Driving Range', 'New Illawarra Rd &, Recreation Dr, Barden Ridge NSW 2234', '23317103'),
('17', 'Cleanaway Lucas Heights Resource Recovery Park', 'Little Forest Rd, Lucas Heights NSW 2234', '22672435'),
('18', 'Macquarie Fields Leisure Centre', 'Fields Rd, Macquarie Fields NSW 2564', '22027767'),
('19', 'Ingleburn RSL Club', '70 Chester Rd, Ingleburn NSW 2565', '21383099'),
('2', 'Dr H J Foley Rest Park', '140 Glebe Point Rd, Glebe NSW 2037', '32342455'),
('20', 'Oran Park Splash Park', 'Dransfield Dr, Oran Park NSW 2570', '20738431'),
('21', 'Kolombo Creek', 'Oran Park NSW 2570', '20093763'),
('22', 'Laurina Park', 'Harrington Park NSW 2567', '19449095'),
('23', 'Green Camel PTY LTD', 'Cobbitty NSW 2570', '18804427'),
('24', 'Burnham Grove Estate', '332 Cawdor Rd, Cawdor NSW 2570', '18159759'),
('25', 'Ultimate Paintball', 'Remembrance Driveway & Cawdor Rd, Cawdor NSW 2570', '17515091'),
('26', 'Thompsons Creek Dam', 'Burraga NSW 2795', '16870423'),
('27', 'Kati Thanda-Lake Eyre National Park', 'Marree SA 5733', '16225755'),
('28', 'Witjira National Park', 'Stuart Hwy, Oodnadatta SA 5734', '15581087'),
('29', 'The Rose Street Artists’ Market', '60 Rose St, Fitzroy VIC 3065', '14936419'),
('3', 'Federal Park', '2A Chapman Rd, Annandale NSW 2038', '31697787'),
('30', 'Fawkner Park', '24-88 Commercial Rd, South Yarra VIC 3141', '14291751'),
('4', 'Victoria Park', 'Parramatta Rd, Broadway NSW 2008', '31053119'),
('5', 'Spicers Guesthouse', '57 Ekerts Rd, Pokolbin Hunter Valley NSW 2320', '30408451'),
('6', 'Hunter Valley Gardens', 'Hunter Valley Gardens', '29763783'),
('7', 'Musée du Louvre', '22C3+MG, Picnic Point NSW 2213', '29119115'),
('8', 'Bondi Beach', 'Bondi Beach NSW 2026', '28474447'),
('9', 'Alison Park', '194 Alison Rd, Randwick NSW 2031', '27829779'),
('place_id', 'place_name', 'place_address', 'place_phoneNumber');

-- --------------------------------------------------------

--
-- Table structure for table `hobbination_database____review`
--

CREATE TABLE `hobbination_database____review` (
  `COL 1` varchar(9) NOT NULL,
  `COL 2` varchar(12) DEFAULT NULL,
  `COL 3` varchar(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `hobbination_database____review`
--

INSERT INTO `hobbination_database____review` (`COL 1`, `COL 2`, `COL 3`) VALUES
('1', 'title1', 'discription1'),
('review_id', 'review_title', 'review_discription');

-- --------------------------------------------------------

--
-- Table structure for table `hobbination_database____user___1_`
--

CREATE TABLE `hobbination_database____user___1_` (
  `COL 1` varchar(7) NOT NULL,
  `COL 2` varchar(10) DEFAULT NULL,
  `COL 3` varchar(14) DEFAULT NULL,
  `COL 4` varchar(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `hobbination_database____user___1_`
--

INSERT INTO `hobbination_database____user___1_` (`COL 1`, `COL 2`, `COL 3`, `COL 4`) VALUES
('1', 'test', 'user@gmail.com', 'password'),
('user_id', 'user_name ', 'user_email', 'user_password');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hobbination_database____category`
--
ALTER TABLE `hobbination_database____category`
  ADD PRIMARY KEY (`COL 1`);

--
-- Indexes for table `hobbination_database____place`
--
ALTER TABLE `hobbination_database____place`
  ADD PRIMARY KEY (`COL 1`);

--
-- Indexes for table `hobbination_database____review`
--
ALTER TABLE `hobbination_database____review`
  ADD PRIMARY KEY (`COL 1`);

--
-- Indexes for table `hobbination_database____user___1_`
--
ALTER TABLE `hobbination_database____user___1_`
  ADD PRIMARY KEY (`COL 1`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
