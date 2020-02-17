-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 17, 2020 at 10:21 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flight_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `fleets`
--

CREATE TABLE `fleets` (
  `id` int(11) NOT NULL,
  `aircraft_type` varchar(50) DEFAULT NULL,
  `no_of_passenger` int(11) DEFAULT NULL,
  `no_of_crew_members` int(11) DEFAULT NULL,
  `name_of_pilot` varchar(100) DEFAULT NULL,
  `name_of_co_pilot` varchar(100) DEFAULT NULL,
  `fleet_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fleets`
--

INSERT INTO `fleets` (`id`, `aircraft_type`, `no_of_passenger`, `no_of_crew_members`, `name_of_pilot`, `name_of_co_pilot`, `fleet_id`) VALUES
(1, 'boeing 777', 123, 9, 'pan silver', 'dapo martins', 1),
(2, 'Airbus A350', 213, 8, 'Adam hassan', 'Mamood sani', 6),
(3, 'Boeing 787', 100, 7, 'Olola King', 'Olaolu dapo', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ticketing`
--

CREATE TABLE `ticketing` (
  `user_id` int(11) NOT NULL,
  `cabin_class` varchar(32) DEFAULT NULL,
  `payment_option` varchar(32) DEFAULT NULL,
  `ticket_type` varchar(32) DEFAULT NULL,
  `take_off_destination` varchar(32) DEFAULT NULL,
  `landing_destination` varchar(32) DEFAULT NULL,
  `take_off_time` time DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `age` varchar(32) DEFAULT NULL,
  `take_off_date` date DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `ticket_id` int(11) DEFAULT NULL,
  `seat_no` varchar(32) NOT NULL,
  `baggage_type` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ticketing`
--

INSERT INTO `ticketing` (`user_id`, `cabin_class`, `payment_option`, `ticket_type`, `take_off_destination`, `landing_destination`, `take_off_time`, `payment_date`, `age`, `take_off_date`, `return_date`, `ticket_id`, `seat_no`, `baggage_type`) VALUES
(1, 'first class', 'full', 'multi city', 'abuja', 'lagos', '06:45:00', '2020-02-15', 'Adult', '0000-00-00', NULL, 4, 'A2', ''),
(2, 'economy', 'discounted', 'return', 'ilorin', 'lagos', '21:00:00', '2020-02-15', 'Adult', '2020-02-24', '2020-03-01', 1, '6g', 'carry on');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(32) DEFAULT NULL,
  `last_name` varchar(32) DEFAULT NULL,
  `phone_no` varchar(15) DEFAULT NULL,
  `email_address` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `next_of_kin` varchar(32) DEFAULT NULL,
  `next_of_kin_relationship` varchar(32) DEFAULT NULL,
  `next_of_kin_phone` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone_no`, `email_address`, `address`, `next_of_kin`, `next_of_kin_relationship`, `next_of_kin_phone`) VALUES
(1, 'Adamu', 'Ibrahim', '80999888777', 'adamuibro@GMAIL.COM', 'Abuja Nigeria', 'sule Yahaya', 'brother', '807989898'),
(2, 'Emmanuel', 'Moses', '80897890077', 'magani@GMAIL.COM', 'Wuse Abuja', 'seth gani', 'brother', '8079800008'),
(3, 'Otun', 'Oloye', '8099900077', 'otunoye@GMAIL.COM', 'Garki Abuja', 'femi otun', 'son', '8079787008'),
(4, 'Chioma', 'okafor', '809965657', 'Chiafor@GMAIL.COM', 'maitama Abuja', 'amaka okafo', 'sister', '8078788008'),
(5, 'Rita', 'Haruna', '80232900077', 'Harita@GMAIL.COM', 'kwali Abuja', 'Mary Haruna', 'mother', '8079800008'),
(6, 'Aisha', 'Ahmed', '8023898977', 'aisha@GMAIL.COM', 'kuje Abuja', 'Mariam Ahmed', 'daughter', '8079800008');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fleets`
--
ALTER TABLE `fleets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fleet_id` (`fleet_id`);

--
-- Indexes for table `ticketing`
--
ALTER TABLE `ticketing`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `ticket_id` (`ticket_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fleets`
--
ALTER TABLE `fleets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ticketing`
--
ALTER TABLE `ticketing`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `fleets`
--
ALTER TABLE `fleets`
  ADD CONSTRAINT `fleets_ibfk_1` FOREIGN KEY (`fleet_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `ticketing`
--
ALTER TABLE `ticketing`
  ADD CONSTRAINT `ticketing_ibfk_1` FOREIGN KEY (`ticket_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
