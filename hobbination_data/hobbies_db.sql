-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Apr 05, 2022 at 03:51 AM
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
-- Database: `hobbies_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int NOT NULL,
  `category_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(1, 'Dance'),
(2, 'Active'),
(3, 'Martial arts'),
(4, 'Swimming '),
(5, 'Gaming'),
(6, 'Dance'),
(7, 'Art'),
(8, 'Music'),
(9, 'Walking & Hiking'),
(10, 'Cycling'),
(11, 'Driving'),
(12, 'Sports'),
(13, 'Beach'),
(14, 'Fitness'),
(15, 'Table game');

-- --------------------------------------------------------

--
-- Table structure for table `place`
--

CREATE TABLE `place` (
  `place_id` int NOT NULL,
  `place_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `place_address` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `place_phone_number` varchar(9) NOT NULL,
  `place_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `place`
--

INSERT INTO `place` (`place_id`, `place_name`, `place_address`, `place_phone_number`, `place_description`) VALUES
(1, 'Loyal Henry Park', '49 Bromborough Rd, Roseville NSW 2069', '32987123', 'This is Loyal Henry Park'),
(2, 'Dr H J Foley Rest Park', '140 Glebe Point Rd, Glebe NSW 2037', '32342455', 'This is Dr H J Foley Rest Park'),
(72, 'Loyal Henry Park', '49 Bromborough Rd, Roseville NSW 2069', '32987123', 'This is Loyal Henry Park'),
(73, 'Dr H J Foley Rest Park', '140 Glebe Point Rd, Glebe NSW 2037', '32342455', 'This is Dr H J Foley Rest Park'),
(74, 'Victoria Park', 'Parramatta Rd, Broadway NSW 2008', '31053119', 'This is Victoria Park'),
(75, 'Spicers Guesthouse', '57 Ekerts Rd, Pokolbin Hunter Valley NSW 2320', '30408451', 'This is Spicers Guesthouse'),
(76, 'Musée du Louvre', '22C3+MG, Picnic Point NSW 2213', '29119115', 'This is Musée du Louvre'),
(77, 'Bondi Beach', 'Bondi Beach NSW 2026', '28474447', 'Bondi Beach'),
(78, 'Alison Park', '194 Alison Rd, Randwick NSW 2031', '27829779', 'This is Alison Park'),
(79, 'Inglis Park', '164 Barker St, Randwick NSW 2031', '27185111', 'I\'m a Inglis Park '),
(80, 'McDonald\'s Mascot', '9 Ross Smith Ave, Mascot NSW 2020', '23317103', 'Who\'s call me big Mack'),
(81, 'Netstrata Jubilee Stadium', '249 Princes Hwy, Kogarah NSW 2218', '25251107', 'this is Netstrata Jubilee Stadium'),
(82, 'Hurstville Aquatic Leisure Centre', 'Forest Rd, Hurstville NSW 2221', '24606439', 'This is Hurstville Aquatic Leisure Centre'),
(83, 'Como Pleasure Grounds', '2A Cremona Rd, Como NSW 2226', '23961771', 'This is Como Pleasure Grounds'),
(84, 'The Ridge Golf Course & Driving Range', 'New Illawarra Rd &, Recreation Dr, Barden Ridge NSW 2234', '23317103', 'This is The Ridge Golf Course & Driving Range'),
(85, 'Cleanaway Lucas Heights Resource Recovery Park', 'Little Forest Rd, Lucas Heights NSW 2234', '22672435', 'this is Cleanaway Lucas Heights Resource Recovery Park'),
(86, 'Kolombo Creek', 'Oran Park NSW 2570', '20093763', 'This is Kolombo Creek');

-- --------------------------------------------------------

--
-- Table structure for table `place_category`
--

CREATE TABLE `place_category` (
  `place_id` int NOT NULL,
  `category_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `place_category`
--

INSERT INTO `place_category` (`place_id`, `category_id`) VALUES
(78, 2),
(77, 13),
(85, 10),
(83, 5),
(2, 3),
(74, 1),
(84, 15),
(73, 3),
(79, 4),
(82, 12),
(73, 10),
(72, 11),
(80, 14),
(81, 15),
(75, 9);

-- --------------------------------------------------------

--
-- Table structure for table `place_review`
--

CREATE TABLE `place_review` (
  `place_id` int NOT NULL,
  `review_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `place_review`
--

INSERT INTO `place_review` (`place_id`, `review_id`) VALUES
(78, 3),
(77, 15),
(85, 8),
(2, 14),
(2, 7),
(82, 11),
(79, 7),
(77, 9),
(86, 12),
(74, 2),
(84, 13),
(75, 10),
(81, 5),
(76, 11),
(72, 6);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `review_id` int NOT NULL,
  `review_title` varchar(50) NOT NULL,
  `review_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`review_id`, `review_title`, `review_description`) VALUES
(2, 'This place is amazing ', 'Love this park!!! Don’t have a dog but we love grabbing something to eat nearby and eat it at this nice park while watching the dogs play around :))'),
(3, 'Awesome view ', 'This Surry Hills park is a lovely spot for people and dogs. It is known as the dog park in the local area and a great place with a dog or meet dogs! There\'s plenty of places to sit and watch the world go by. Nice different'),
(4, 'Good ', '3 months ago\r\nHyde Park is truly the heart of the city of Sydney with extremely easy access via public transport. It is Australia’s oldest park and also one of its most well-known.'),
(5, 'Not bad', 'Beautiful park next to the university of Sydney. It has a large pond near Broadway with lilly pads and many ducks. A good place to sit and read if you have time  A children\'s playground is on the City Road side towards NewTown   and Victoria Pool is in the centre.'),
(6, 'Lovely park', 'If you haven\'t been here... Come! '),
(7, 'Good for walk', 'Ended up unexpectedly walking through Prince Alfred Park around 6:30pm on a Monday evening due to a massive foul-up of the Sydney train network. Went to the pool for my regular swim'),
(8, 'G day\'s ', 'this park is close to where I live, I go there everyday, I like the vibe there, nice people doing picnics or walking their dogs, good place to exercise or go jogging.'),
(9, 'Nice ppl', 'Off leash dog area, tennis courts, picnic tables, outdoor pool ($7 entry), outdoor workout equipment, this park has everything you\'d ever need'),
(10, 'Test ', 'Park is quiet and is just next to the new light rail stop. It has doggy bags and water bowl for dog owners. Park usually is not so busy and it\'s good. There is also a playground for kids and a skateboard ramp. Pretty good tucked away spot for inner city living.'),
(11, 'Hello', 'Lovely & peaceful,. perfect place to chill out for a few, or walk yr dog. Nice park for some outdoor play!'),
(12, 'park ', 'A cute little Park. New equipment installed near the end of 2021.Swings and mobkey bats. Some benches and tables to enjoy a meal or play games. Not enough space to play ballgames. No toilets nearby and no food nearby. Good enough for fMilies with kids who live close.'),
(13, 'this is good ', 'Great park. At least close to 40 thousand people turned out at the march this afternoon. Very windy and sunny. Loving day out. The birds did not take notice of what was going on as the flew about their own business. COVIDS A HOAX no doubt at all.\r\n'),
(14, 'good', 'We had so much fun there also found parking just few blocks away. If your planning to visit make sure you have two or three hours to go around.'),
(15, 'beautiful ', 'Great park to seat at for lunch or afternoon tea'),
(16, 'Hi', 'A beautiful park, lovely gardens and open spaces, fruit bat colony, birds of all types. Great for exercise, a stroll or picnic.');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_email` varchar(20) NOT NULL,
  `user_password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_email`, `user_password`) VALUES
(1, 'user', 'user@gmail.com', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `place`
--
ALTER TABLE `place`
  ADD PRIMARY KEY (`place_id`);

--
-- Indexes for table `place_category`
--
ALTER TABLE `place_category`
  ADD KEY `place_id` (`place_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `place_review`
--
ALTER TABLE `place_review`
  ADD KEY `place_id` (`place_id`),
  ADD KEY `review_id` (`review_id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `place`
--
ALTER TABLE `place`
  MODIFY `place_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `review_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `place_category`
--
ALTER TABLE `place_category`
  ADD CONSTRAINT `place_category_ibfk_1` FOREIGN KEY (`place_id`) REFERENCES `place` (`place_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `place_category_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `place_review`
--
ALTER TABLE `place_review`
  ADD CONSTRAINT `place_review_ibfk_1` FOREIGN KEY (`place_id`) REFERENCES `place` (`place_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `place_review_ibfk_2` FOREIGN KEY (`review_id`) REFERENCES `review` (`review_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
