-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2020 at 07:58 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spotify 2010-2019`
--

-- --------------------------------------------------------

--
-- Table structure for table `2012`
--

CREATE TABLE `2012` (
  `ID` int(2) DEFAULT NULL,
  `title` varchar(39) DEFAULT NULL,
  `artist` varchar(24) DEFAULT NULL,
  `top genre` varchar(14) DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
  `bpm` int(3) DEFAULT NULL,
  `nrgy` int(2) DEFAULT NULL,
  `dnce` int(2) DEFAULT NULL,
  `dB` int(2) DEFAULT NULL,
  `live` int(2) DEFAULT NULL,
  `val` int(2) DEFAULT NULL,
  `dur` int(3) DEFAULT NULL,
  `acous` int(2) DEFAULT NULL,
  `spch` int(2) DEFAULT NULL,
  `pop` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `2012`
--

INSERT INTO `2012` (`ID`, `title`, `artist`, `top genre`, `year`, `bpm`, `nrgy`, `dnce`, `dB`, `live`, `val`, `dur`, `acous`, `spch`, `pop`) VALUES
(1, 'Titanium (feat. Sia)', 'David Guetta', 'dance pop', 2012, 126, 79, 60, -4, 13, 30, 245, 7, 10, 80),
(2, 'Locked Out of Heaven', 'Bruno Mars', 'pop', 2012, 144, 70, 73, -4, 31, 87, 233, 5, 4, 79),
(3, 'Paradise', 'Coldplay', 'permanent wave', 2012, 140, 59, 45, -7, 8, 20, 279, 5, 3, 79),
(4, 'Payphone', 'Maroon 5', 'pop', 2012, 110, 75, 74, -5, 29, 55, 231, 2, 4, 79),
(5, 'What Makes You Beautiful', 'One Direction', 'boy band', 2012, 125, 79, 73, -2, 6, 89, 200, 1, 7, 78),
(6, 'I Knew You Were Trouble.', 'Taylor Swift', 'pop', 2012, 77, 47, 62, -7, 3, 68, 220, 0, 4, 77),
(7, 'Call Me Maybe', 'Carly Rae Jepsen', 'canadian pop', 2012, 120, 58, 78, -7, 11, 66, 193, 1, 4, 76),
(8, 'Love You Like A Love Song', 'Selena Gomez & The Scene', 'dance pop', 2012, 117, 68, 86, -4, 7, 92, 188, 8, 5, 76),
(9, 'Set Fire to the Rain', 'Adele', 'british soul', 2012, 108, 68, 61, -4, 13, 47, 242, 0, 3, 76),
(10, 'We Are Never Ever Getting Back Together', 'Taylor Swift', 'pop', 2012, 86, 68, 63, -6, 12, 75, 193, 1, 9, 75),
(11, 'Stronger (What Doesn\'t Kill You)', 'Kelly Clarkson', 'dance pop', 2012, 116, 94, 56, -4, 11, 68, 222, 5, 5, 74),
(12, 'Try', 'P!nk', 'dance pop', 2012, 104, 63, 67, -7, 9, 55, 248, 0, 3, 74),
(13, 'Starships', 'Nicki Minaj', 'dance pop', 2012, 125, 72, 75, -2, 25, 75, 211, 14, 8, 73),
(14, 'One More Night', 'Maroon 5', 'pop', 2012, 93, 82, 72, -3, 8, 62, 220, 6, 3, 73),
(15, 'Good Time', 'Owl City', 'pop', 2012, 126, 87, 56, -4, 37, 68, 206, 2, 14, 73),
(16, 'Glad You Came', 'The Wanted', 'boy band', 2012, 127, 85, 72, -4, 11, 45, 198, 3, 6, 72),
(17, 'Beauty And A Beat', 'Justin Bieber', 'canadian pop', 2012, 128, 84, 60, -5, 7, 53, 228, 0, 6, 72),
(18, 'International Love', 'Pitbull', 'dance pop', 2012, 120, 86, 67, -3, 34, 65, 227, 1, 5, 72),
(19, 'Some Nights', 'fun.', 'baroque pop', 2012, 108, 74, 67, -7, 9, 39, 277, 2, 5, 72),
(20, 'Boyfriend', 'Justin Bieber', 'canadian pop', 2012, 97, 55, 72, -6, 13, 33, 171, 4, 5, 71),
(21, 'Part Of Me', 'Katy Perry', 'dance pop', 2012, 130, 92, 68, -5, 7, 77, 216, 0, 4, 71),
(22, 'Domino', 'Jessie J', 'australian pop', 2012, 127, 55, 76, -5, 4, 78, 232, 1, 3, 69),
(23, 'Where Have You Been', 'Rihanna', 'barbadian pop', 2012, 128, 85, 72, -6, 22, 44, 243, 0, 9, 68),
(24, 'Wide Awake', 'Katy Perry', 'dance pop', 2012, 160, 68, 51, -5, 39, 57, 221, 7, 4, 68),
(25, 'The One That Got Away', 'Katy Perry', 'dance pop', 2012, 134, 80, 69, -4, 16, 88, 227, 0, 4, 67),
(26, 'Dance Again', 'Jennifer Lopez', 'dance pop', 2012, 128, 86, 79, -5, 10, 71, 237, 2, 7, 66),
(27, 'Turn Up the Music', 'Chris Brown', 'dance pop', 2012, 130, 84, 59, -6, 16, 64, 228, 0, 10, 65),
(28, 'Lights - Single Version', 'Ellie Goulding', 'dance pop', 2012, 120, 80, 68, -6, 13, 78, 211, 3, 4, 65),
(29, 'We Are Young (feat. Janelle Mon?e)', 'fun.', 'baroque pop', 2012, 184, 64, 38, -6, 8, 74, 251, 2, 8, 63),
(30, 'Diamonds', 'Rihanna', 'barbadian pop', 2012, 92, 71, 56, -5, 11, 39, 225, 0, 5, 61),
(31, 'Don\'t Stop the Party (feat. TJR)', 'Pitbull', 'dance pop', 2012, 127, 96, 72, -4, 38, 95, 206, 1, 9, 59),
(32, 'You Da One', 'Rihanna', 'barbadian pop', 2012, 127, 72, 70, -5, 13, 86, 200, 50, 4, 57),
(33, 'Stereo Hearts (feat. Adam Levine)', 'Gym Class Heroes', 'dance pop', 2012, 90, 80, 65, -3, 27, 80, 211, 3, 10, 54),
(34, 'It Will Rain', 'Bruno Mars', 'pop', 2012, 150, 84, 58, -7, 8, 48, 258, 34, 5, 38),
(35, 'Blow Me (One Last Kiss)', 'P!nk', 'dance pop', 2012, 114, 92, 60, -3, 25, 75, 256, 0, 4, 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
