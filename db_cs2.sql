-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 24, 2023 at 02:59 AM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_cs2`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `event_id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`event_id`, `category_name`) VALUES
(6, 'mga bakod'),
(7, 'mga bakod'),
(8, 'cat1'),
(9, 'cat1');

-- --------------------------------------------------------

--
-- Table structure for table `entries`
--

DROP TABLE IF EXISTS `entries`;
CREATE TABLE IF NOT EXISTS `entries` (
  `entry_id` int NOT NULL AUTO_INCREMENT,
  `event_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `entry_type` varchar(255) DEFAULT NULL,
  `entry_file` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`entry_id`),
  KEY `event_id` (`event_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `evaluation`
--

DROP TABLE IF EXISTS `evaluation`;
CREATE TABLE IF NOT EXISTS `evaluation` (
  `entry_id` int NOT NULL AUTO_INCREMENT,
  `evaluation_label` varchar(255) DEFAULT NULL,
  `evaluation_badge` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`entry_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
CREATE TABLE IF NOT EXISTS `events` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `max_participants` int NOT NULL,
  `payment_amount` decimal(10,2) NOT NULL,
  `organizer_email` varchar(50) NOT NULL,
  `date` int NOT NULL,
  `organizer_name` varchar(100) NOT NULL,
  `category` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `description`, `max_participants`, `payment_amount`, `organizer_email`, `date`, `organizer_name`, `category`) VALUES
(29, 'Clash Of Balingons', 'pew pew peww', 20, '100.00', '', 0, 'bogart', 'cats1,cats2,cats3'),
(28, 'Guppy event', 'pew pew pew\r\n\r\nsubong na ni May 21 2023\r\n\r\njoin na de soooows', 20, '250.00', '', 0, 'Gorlock the destroyer', 'Blue,Green,Red,Orange');

-- --------------------------------------------------------

--
-- Table structure for table `participants`
--

DROP TABLE IF EXISTS `participants`;
CREATE TABLE IF NOT EXISTS `participants` (
  `id` int NOT NULL AUTO_INCREMENT,
  `event_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `event_id` (`event_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE IF NOT EXISTS `payment` (
  `entry_id` int NOT NULL AUTO_INCREMENT,
  `payment_amount` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`entry_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contact_number` int NOT NULL,
  `profile_picture` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `firstname`, `lastname`, `email`, `address`, `contact_number`, `profile_picture`, `password`) VALUES
(0, '[value-2]', '[value-3]', '[value-4]', '[value-5]', 0, '', '[value-6]'),
(2, 'Timow', 'Villalobos', 'waykoemail@waygne.com', 'taga dira lang oh ah basta dira lang', 0, '', 'admin12345'),
(3, 'Timow', 'Villalobos', 'timow1515@gmail.com', 'taga dira lang oh ah basta dira lang', 0, '', 'wews12345'),
(4, 'Joseph Timothy', 'Villalobos', 'emailkoni@gmail.com', 'way ko balay ', 0, '', 'password12'),
(5, 'eduardo ', 'gwapo', 'orjay0106@yahoo.com', 'iloilo', 0, '', 'edward123'),
(6, 'Joseph Timothy', 'Villalobos', 'taetae@gmail.com', 'taga dira lang oh ah basta dira lang', 0, '', 'wewwew123'),
(7, 'Joseph Timothy', 'Villalobos', 'hapihapi@gmail.com', 'taga dira lang oh ah basta dira lang', 0, '', 'tae123'),
(8, 'Timow', 'eee eee', 'pewpew@gmail.com', 'taga lilo', 2147483647, '', 'pewpew'),
(9, 'hapi hapi', 'eee eee', 'eee@gmail.com', 'iloilo', 2147483647, '', 'aw123');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
