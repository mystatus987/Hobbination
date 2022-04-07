-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Apr 07, 2022 at 03:48 AM
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
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `image_id` int NOT NULL,
  `image_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`image_id`, `image_name`) VALUES
(1, 'park_01.jpeg'),
(2, 'park_02.jpeg'),
(3, 'park_03.jpeg'),
(4, 'park_04.jpeg'),
(5, 'park_05.jpeg'),
(6, 'park_06.jpeg'),
(7, 'park_07.jpeg'),
(8, 'park_08.jpeg'),
(9, 'park_09.jpeg'),
(10, 'park_10.jpeg'),
(11, 'park_11.jpeg'),
(12, 'park_12.jpeg'),
(13, 'park_13.jpeg'),
(14, 'park_14.jpeg'),
(15, 'park_15.jpeg');

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
-- Table structure for table `place_image`
--

CREATE TABLE `place_image` (
  `place_id` int NOT NULL,
  `image_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `place_image`
--

INSERT INTO `place_image` (`place_id`, `image_id`) VALUES
(83, 1),
(80, 2),
(76, 3),
(1, 4),
(75, 5),
(2, 6),
(79, 7),
(78, 8),
(77, 9),
(82, 10),
(85, 11),
(84, 12),
(84, 13),
(86, 14),
(74, 15);

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
(83, 21),
(80, 28),
(76, 22),
(1, 29),
(72, 29),
(75, 24),
(2, 17),
(73, 23),
(79, 31),
(78, 18),
(78, 19),
(81, 26),
(77, 20),
(85, 30),
(84, 27);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `review_id` int NOT NULL,
  `review_title` varchar(50) NOT NULL,
  `review_description` text NOT NULL,
  `user_fk` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`review_id`, `review_title`, `review_description`, `user_fk`) VALUES
(17, 'This place is amazing ', 'Nice little park located within walking distance to Circular Quay.  Honestly it’s a lovely little place to sit down, relax and take ten minutes out.', 3),
(18, 'Awesome view ', 'Since the last review there has been extensive work by council to improve this park. Lots of new plants around and better care of the grass areas. Still more work to be done but looking so much better.', 2),
(19, 'Good ', 'Small park in the middle of the city located right next to a lot of bus stops and wynyward train station. Good place to have a sit during lunch breaks in summer time when the sun is out to relax in the middle of a busy day. Lots of food courts around to get food from.', 1),
(20, 'amazing ', 'This park gives an amazing view of the Darling Harbour, especially the night view. A good place to have family picnic or dinner', 1),
(21, 'Lovely park', 'Beautiful Sydney, best city in the world in my opinion.  The park is great for sitting and having lunch', 3),
(22, 'Good for walk', 'Harbourside park with shade - handy for a picnic if visiting the maritime museum or other attractions on the prymont side of darling harbour. Watch out for the bird', 1),
(23, 'G day\'s ', 'Nice place for photography with wide open grassed area, lots of restaurants nearby, plenty of street parking if you get lucky, it\'s surrounded by the beautiful Opera House, the Harbour Bridge and Sydney city Skyline, there is a Marina with some big dollars in gorgeous yachts, good place for a nice walk or exercise.', 3),
(24, 'Nice ppl', 'Lovely grounds to walk around looking at all the famous statues, fountains, and the war memorial. Plenty of seating and grass under shaded trees to sit and relax or have a picnic lunch. The grounds light up at night so you can even stroll through here at night.', 2),
(25, 'Test ', 'Top marks for its simplicity and location. Simplicity in that although it’s not a better walk or scenery than the Royal Botanical Gardens, it provides a great spot for people to relax for office workers to enjoy their lunch or shoppers to take a breather. The Archibald Fountain is an iconic landmark worth checking out. The location is perfect, so close to Pitt St mall and Museum station, and other landmarks nearby.', 1),
(26, 'Hello', 'The gorgeous Barangaroo wharf ❤️ Gorgeous views and surroundings, 100% worth a visit 🌅', 3),
(27, 'park ', 'We had so much fun there also found parking just few blocks away. If your planning to visit make sure you have two or three hours to go around.', 2),
(28, 'this is good ', 'Great park to seat at for lunch or afternoon tea', 1),
(29, 'good', 'I absolutely love this park!!  You honestly get some of the best views of the nature.', 3),
(30, 'beautiful ', 'This was a fun park for our 4 year old. We had take-away at a nearby restaurant and walked down to this park to have a play and eat. No picnic tables which was a downer but had plenty of seating via benches and an under tree seating area. It is a dog friendly park and only one dog was there and stayed off of the playground area (like advised from the sign posted). Would for sure go back to this park.', 2),
(31, 'Hi', 'Perfect place for the kids to play, or for a great birthday party. Be aware though, no loos!', 1);

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
(1, 'user', 'user@gmail.com', 'user'),
(2, 'user2', 'user2@gmail.com', 'user2'),
(3, 'user3', 'user3@gmail.com', 'user3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`image_id`);

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
-- Indexes for table `place_image`
--
ALTER TABLE `place_image`
  ADD KEY `place_id` (`place_id`),
  ADD KEY `image_id` (`image_id`);

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
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `user_fk` (`user_fk`);

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
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `image_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `place`
--
ALTER TABLE `place`
  MODIFY `place_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `review_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
-- Constraints for table `place_image`
--
ALTER TABLE `place_image`
  ADD CONSTRAINT `place_image_ibfk_1` FOREIGN KEY (`place_id`) REFERENCES `place` (`place_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `place_image_ibfk_2` FOREIGN KEY (`image_id`) REFERENCES `images` (`image_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `place_review`
--
ALTER TABLE `place_review`
  ADD CONSTRAINT `place_review_ibfk_1` FOREIGN KEY (`place_id`) REFERENCES `place` (`place_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `place_review_ibfk_2` FOREIGN KEY (`review_id`) REFERENCES `review` (`review_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`user_fk`) REFERENCES `user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
