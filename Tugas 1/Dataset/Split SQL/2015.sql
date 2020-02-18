-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2020 at 07:59 AM
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
-- Table structure for table `2015`
--

CREATE TABLE `2015` (
  `ID` int(2) DEFAULT NULL,
  `title` varchar(77) DEFAULT NULL,
  `artist` varchar(24) DEFAULT NULL,
  `top genre` varchar(25) DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
  `bpm` int(3) DEFAULT NULL,
  `nrgy` int(2) DEFAULT NULL,
  `dnce` int(2) DEFAULT NULL,
  `dB` int(3) DEFAULT NULL,
  `live` int(2) DEFAULT NULL,
  `val` int(3) DEFAULT NULL,
  `dur` int(3) DEFAULT NULL,
  `acous` int(2) DEFAULT NULL,
  `spch` int(2) DEFAULT NULL,
  `pop` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `2015`
--

INSERT INTO `2015` (`ID`, `title`, `artist`, `top genre`, `year`, `bpm`, `nrgy`, `dnce`, `dB`, `live`, `val`, `dur`, `acous`, `spch`, `pop`) VALUES
(1, 'Thinking out Loud', 'Ed Sheeran', 'pop', 2015, 79, 45, 78, -6, 18, 59, 282, 47, 3, 84),
(2, 'I\'m Not The Only One', 'Sam Smith', 'pop', 2015, 82, 49, 68, -6, 8, 49, 239, 53, 4, 84),
(3, 'The Hills', 'The Weeknd', 'canadian contemporary r&b', 2015, 113, 56, 58, -7, 14, 14, 242, 7, 5, 84),
(4, 'Love Yourself', 'Justin Bieber', 'canadian pop', 2015, 100, 38, 61, -10, 28, 52, 234, 84, 44, 83),
(5, 'Uptown Funk', 'Mark Ronson', 'dance pop', 2015, 115, 61, 86, -7, 3, 93, 270, 1, 8, 82),
(6, 'Take Me To Church', 'Hozier', 'irish singer-songwriter', 2015, 129, 66, 57, -5, 12, 44, 242, 63, 5, 81),
(7, 'Sugar', 'Maroon 5', 'pop', 2015, 120, 79, 75, -7, 9, 88, 235, 6, 3, 81),
(8, 'Sorry', 'Justin Bieber', 'canadian pop', 2015, 100, 76, 65, -4, 30, 41, 201, 8, 5, 81),
(9, 'FourFiveSeconds', 'Rihanna', 'barbadian pop', 2015, 206, 27, 58, -6, 13, 35, 188, 88, 5, 80),
(10, 'Love Me Like You Do - From \"Fifty Shades Of Grey\"', 'Ellie Goulding', 'dance pop', 2015, 190, 61, 26, -7, 13, 28, 253, 25, 5, 79),
(11, 'Earned It (Fifty Shades Of Grey) - From The \"Fifty Shades Of Grey\" Soundtrack', 'The Weeknd', 'canadian contemporary r&b', 2015, 120, 38, 66, -6, 10, 44, 252, 39, 3, 79),
(12, 'What Do You Mean?', 'Justin Bieber', 'canadian pop', 2015, 125, 57, 85, -8, 8, 79, 206, 59, 10, 79),
(13, 'Stitches', 'Shawn Mendes', 'canadian pop', 2015, 150, 75, 75, -7, 5, 76, 207, 2, 7, 78),
(14, 'Want to Want Me', 'Jason Derulo', 'dance pop', 2015, 114, 68, 78, -6, 11, 66, 208, 1, 6, 77),
(15, 'My House', 'Flo Rida', 'dance pop', 2015, 94, 70, 69, -5, 13, 74, 192, 2, 5, 77),
(16, 'Waves - Robin Schulz Radio Edit', 'Mr. Probz', 'tropical house', 2015, 120, 51, 83, -9, 8, 45, 208, 1, 4, 77),
(17, 'Night Changes', 'One Direction', 'boy band', 2015, 120, 52, 67, -8, 12, 37, 227, 86, 4, 77),
(18, 'How Deep Is Your Love', 'Calvin Harris', 'dance pop', 2015, 122, 87, 74, -4, 39, 34, 213, 4, 7, 77),
(19, 'Never Forget You', 'Zara Larsson', 'dance pop', 2015, 146, 73, 58, -6, 27, 28, 213, 0, 5, 77),
(20, 'Love Me Harder', 'Ariana Grande', 'dance pop', 2015, 99, 71, 47, -4, 8, 24, 236, 1, 3, 76),
(21, 'Animals', 'Maroon 5', 'pop', 2015, 190, 74, 28, -6, 59, 33, 231, 0, 9, 76),
(22, 'Blame', 'Calvin Harris', 'dance pop', 2015, 128, 86, 41, -4, 34, 35, 213, 3, 8, 76),
(23, 'Worth It', 'Fifth Harmony', 'dance pop', 2015, 100, 77, 88, -4, 12, 59, 225, 6, 9, 75),
(24, 'Break Free', 'Ariana Grande', 'dance pop', 2015, 130, 70, 69, -5, 20, 28, 215, 1, 5, 75),
(25, 'Don\'t', 'Ed Sheeran', 'pop', 2015, 95, 61, 81, -7, 64, 85, 220, 1, 7, 74),
(26, 'Elastic Heart', 'Sia', 'australian dance', 2015, 130, 79, 42, -5, 15, 50, 257, 1, 5, 73),
(27, 'Rather Be (feat. Jess Glynne)', 'Clean Bandit', 'dance pop', 2015, 121, 59, 80, -7, 19, 55, 228, 16, 4, 73),
(28, 'Hello', 'Adele', 'british soul', 2015, 158, 45, 48, -6, 9, 29, 295, 34, 3, 73),
(29, 'Dear Future Husband', 'Meghan Trainor', 'dance pop', 2015, 79, 78, 66, -5, 32, 83, 184, 38, 19, 72),
(30, '43776', 'Beyonc?,dance pop', '2015', 136, 71, 75, -5, 13, 56, 214, 1, 13, 72, NULL),
(31, 'The Heart Wants What It Wants', 'Selena Gomez', 'dance pop', 2015, 83, 79, 62, -5, 14, 62, 227, 5, 4, 72),
(32, 'Hey Mama (feat. Nicki Minaj, Bebe Rexha & Afrojack)', 'David Guetta', 'dance pop', 2015, 86, 73, 60, -4, 33, 53, 193, 24, 15, 72),
(33, 'Genie In a Bottle', 'Christina Aguilera', 'dance pop', 2015, 176, 80, 63, -7, 14, 91, 218, 21, 16, 72),
(34, 'Company', 'Justin Bieber', 'canadian pop', 2015, 95, 80, 59, -5, 8, 43, 208, 13, 6, 72),
(35, 'Sing', 'Ed Sheeran', 'pop', 2015, 120, 67, 82, -4, 6, 94, 235, 30, 5, 71),
(36, 'Jealous - Remix', 'Nick Jonas', 'dance pop', 2015, 93, 71, 68, -4, 44, 45, 222, 1, 8, 70),
(37, 'Really Don\'t Care', 'Demi Lovato', 'dance pop', 2015, 121, 73, 71, -4, 19, 85, 202, 12, 9, 70),
(38, 'Downtown (feat. Melle Mel, Grandmaster Caz, Kool Moe Dee & Eric Nally)', 'Macklemore & Ryan Lewis', 'dance pop', 2015, 110, 61, 83, -4, 29, 71, 293, 9, 7, 70),
(39, 'Only Love Can Hurt Like This', 'Paloma Faith', 'british soul', 2015, 91, 89, 57, -5, 33, 31, 233, 10, 8, 69),
(40, 'Heartbeat Song', 'Kelly Clarkson', 'dance pop', 2015, 149, 80, 49, -4, 6, 48, 199, 1, 5, 69),
(41, 'Up', 'Olly Murs', 'dance pop', 2015, 115, 85, 69, -5, 10, 64, 224, 2, 3, 69),
(42, 'Trumpets', 'Jason Derulo', 'dance pop', 2015, 82, 70, 63, -5, 10, 64, 217, 56, 24, 69),
(43, 'Runnin\' (Lose It All)', 'Naughty Boy', 'tropical house', 2015, 139, 85, 32, -6, 48, 8, 213, 1, 8, 69),
(44, 'Same Old Love', 'Selena Gomez', 'dance pop', 2015, 98, 59, 67, -4, 21, 44, 229, 2, 3, 69),
(45, 'I Want You To Know', 'Zedd', 'complextro', 2015, 130, 85, 58, -3, 14, 37, 240, 1, 6, 68),
(46, 'Lips Are Movin', 'Meghan Trainor', 'dance pop', 2015, 139, 83, 78, -5, 11, 95, 183, 5, 5, 68),
(47, 'I\'ll Show You', 'Justin Bieber', 'canadian pop', 2015, 192, 61, 36, -7, 18, 8, 200, 5, 10, 68),
(48, 'Here', 'Alessia Cara', 'canadian contemporary r&b', 2015, 120, 82, 38, -4, 8, 33, 199, 8, 10, 68),
(49, 'I Lived', 'OneRepublic', 'dance pop', 2015, 120, 85, 59, -5, 27, 34, 235, 7, 4, 67),
(50, 'Fireball (feat. John Ryan)', 'Pitbull', 'dance pop', 2015, 123, 94, 69, -5, 5, 79, 235, 9, 6, 67),
(51, 'Easy Love', 'Sigala', 'dance pop', 2015, 124, 94, 68, -4, 12, 65, 230, 18, 6, 67),
(52, 'The Feeling', 'Justin Bieber', 'canadian pop', 2015, 127, 81, 53, -6, 10, 21, 245, 8, 6, 67),
(53, 'I Really Like You', 'Carly Rae Jepsen', 'canadian pop', 2015, 122, 81, 62, -5, 22, 60, 205, 1, 4, 66),
(54, 'BO$$', 'Fifth Harmony', 'dance pop', 2015, 103, 87, 81, -5, 5, 74, 171, 1, 11, 66),
(55, 'Sugar', 'Maroon 5', 'pop', 2015, 120, 79, 75, -7, 9, 88, 235, 6, 3, 66),
(56, 'Focus', 'Ariana Grande', 'dance pop', 2015, 100, 88, 67, -6, 44, 79, 211, 27, 24, 66),
(57, 'All About That Bass', 'Meghan Trainor', 'dance pop', 2015, 134, 88, 81, -4, 11, 96, 189, 5, 5, 65),
(58, 'On My Mind', 'Ellie Goulding', 'dance pop', 2015, 155, 71, 70, -7, 9, 74, 213, 26, 5, 65),
(59, 'Love Me Like You', 'Little Mix', 'dance pop', 2015, 106, 67, 79, -4, 28, 85, 198, 21, 4, 65),
(60, 'Broken Arrows', 'Avicii', 'big room', 2015, 116, 67, 63, -7, 10, 29, 233, 5, 5, 65),
(61, 'Booty', 'Jennifer Lopez', 'dance pop', 2015, 129, 95, 71, -4, 26, 40, 210, 0, 5, 64),
(62, 'What Do You Mean? - Acoustic', 'Justin Bieber', 'canadian pop', 2015, 125, 36, 77, -11, 10, 76, 204, 79, 4, 64),
(63, 'Mark My Words', 'Justin Bieber', 'canadian pop', 2015, 114, 26, 38, -9, 17, 52, 134, 88, 3, 63),
(64, 'Lay It All on Me', 'Rudimental', 'dance pop', 2015, 123, 75, 67, -7, 19, 48, 242, 14, 4, 62),
(65, 'American Oxygen', 'Rihanna', 'barbadian pop', 2015, 78, 75, 39, -6, 33, 48, 320, 5, 9, 61),
(66, 'Bang Bang', 'Jessie J', 'australian pop', 2015, 150, 75, 71, -4, 38, 73, 199, 27, 9, 61),
(67, 'Reality - Radio Edit', 'Lost Frequencies', 'belgian edm', 2015, 122, 70, 71, -8, 7, 60, 159, 2, 3, 61),
(68, 'Alive', 'Sia', 'australian dance', 2015, 100, 76, 51, -4, 11, 44, 264, 25, 5, 61),
(69, 'Sugar (feat. Francesco Yates)', 'Robin Schulz', 'dance pop', 2015, 123, 82, 64, -5, 16, 64, 219, 2, 6, 60),
(70, 'Been You', 'Justin Bieber', 'canadian pop', 2015, 113, 78, 74, -6, 32, 86, 199, 2, 7, 60),
(71, 'Prayer in C - Robin Schulz Radio Edit', 'Lilly Wood and The Prick', 'french indie pop', 2015, 123, 89, 76, -5, 62, 78, 189, 2, 3, 58),
(72, 'See You Again (feat. Charlie Puth)', 'Wiz Khalifa', 'hip hop', 2015, 80, 48, 69, -8, 6, 28, 230, 37, 8, 56),
(73, 'Heroes (we could be)', 'Alesso', 'big room', 2015, 126, 75, 52, -4, 24, 35, 210, 4, 6, 56),
(74, 'Feel The Light - From The \"Home\" Soundtrack', 'Jennifer Lopez', 'dance pop', 2015, 156, 60, 47, -6, 9, 4, 292, 33, 5, 55),
(75, 'Perfect', 'One Direction', 'boy band', 2015, 100, 82, 65, -5, 12, 40, 230, 6, 8, 55),
(76, 'Ghosttown', 'Madonna', 'dance pop', 2015, 79, 55, 54, -7, 12, 9, 250, 4, 4, 54),
(77, 'Bang My Head (feat. Sia & Fetty Wap)', 'David Guetta', 'dance pop', 2015, 108, 87, 60, -4, 10, 59, 193, 5, 8, 54),
(78, 'Bloodstream', 'Ed Sheeran', 'pop', 2015, 89, 59, 48, -6, 6, 27, 309, 20, 5, 52),
(79, 'Living For Love', 'Madonna', 'dance pop', 2015, 123, 79, 67, -5, 25, 39, 219, 4, 9, 52),
(80, 'Baby Don\'t Lie', 'Gwen Stefani', 'dance pop', 2015, 100, 55, 69, -5, 10, 26, 203, 1, 3, 52),
(81, 'Don\'t Be so Hard on Yourself', 'Jess Glynne', 'dance pop', 2015, 120, 82, 57, -3, 16, 66, 211, 6, 3, 52),
(82, 'Steal My Girl', 'One Direction', 'boy band', 2015, 77, 76, 47, -6, 14, 52, 227, 0, 4, 51),
(83, 'Celebrate (From the Original Motion Picture \"Penguins of Madagascar\")', 'Pitbull', 'dance pop', 2015, 127, 85, 68, -3, 6, 93, 193, 1, 6, 50),
(84, 'We Are Here', 'Alicia Keys', 'hip pop', 2015, 93, 67, 64, -6, 8, 8, 285, 43, 4, 49),
(85, 'St Jude', 'Florence + The Machine', 'art pop', 2015, 117, 43, 26, -11, 11, 9, 225, 75, 3, 47),
(86, 'Yesterday (feat. Bebe Rexha)', 'David Guetta', 'dance pop', 2015, 128, 78, 57, -4, 33, 28, 243, 2, 3, 46),
(87, 'Time of Our Lives', 'Pitbull', 'dance pop', 2015, 124, 80, 72, -6, 69, 72, 229, 9, 6, 45),
(88, 'Sparks', 'Hilary Duff', 'dance pop', 2015, 122, 88, 85, -5, 10, 79, 186, 4, 6, 44),
(89, 'Mr. Put It Down', 'Ricky Martin', 'dance pop', 2015, 128, 78, 80, -6, 4, 83, 196, 1, 18, 42),
(90, 'Legendary Lovers', 'Katy Perry', 'dance pop', 2015, 126, 84, 62, -5, 8, 39, 224, 2, 8, 41),
(91, 'Spark The Fire', 'Gwen Stefani', 'dance pop', 2015, 120, 80, 88, -4, 20, 54, 202, 8, 6, 39),
(92, 'Run Run Run', 'Kelly Clarkson', 'dance pop', 2015, 112, 37, 28, -7, 11, 8, 273, 45, 4, 36),
(93, 'Let Me Be Your Lover', 'Enrique Iglesias', 'dance pop', 2015, 112, 90, 72, -4, 6, 88, 238, 1, 13, 34),
(94, 'Dangerous', 'Jennifer Hudson', 'dance pop', 2015, 109, 53, 90, -5, 8, 65, 255, 0, 5, 18),
(95, 'L.A.LOVE (la la)', 'Fergie', 'dance pop', 2015, 202, 39, 48, -8, 26, 27, 193, 2, 9, 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
