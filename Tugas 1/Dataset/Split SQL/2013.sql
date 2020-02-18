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
-- Table structure for table `2013`
--

CREATE TABLE `2013` (
  `ID` int(2) DEFAULT NULL,
  `title` varchar(75) DEFAULT NULL,
  `artist` varchar(23) DEFAULT NULL,
  `top genre` varchar(16) DEFAULT NULL,
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
-- Dumping data for table `2013`
--

INSERT INTO `2013` (`ID`, `title`, `artist`, `top genre`, `year`, `bpm`, `nrgy`, `dnce`, `dB`, `live`, `val`, `dur`, `acous`, `spch`, `pop`) VALUES
(1, 'Underneath the Tree', 'Kelly Clarkson', 'dance pop', 2013, 160, 81, 51, -5, 21, 69, 230, 0, 5, 88),
(2, 'Wake Me Up', 'Avicii', 'big room', 2013, 124, 78, 53, -6, 16, 64, 247, 0, 5, 85),
(3, 'Story of My Life', 'One Direction', 'boy band', 2013, 121, 66, 60, -6, 12, 29, 245, 23, 5, 81),
(4, 'Just Give Me a Reason (feat. Nate Ruess)', 'P!nk', 'dance pop', 2013, 95, 55, 78, -7, 13, 44, 243, 35, 5, 81),
(5, 'Hall of Fame', 'The Script', 'celtic rock', 2013, 85, 87, 42, -4, 12, 63, 203, 7, 6, 80),
(6, 'Roar', 'Katy Perry', 'dance pop', 2013, 180, 77, 55, -5, 35, 46, 224, 0, 4, 78),
(7, 'We Can\'t Stop', 'Miley Cyrus', 'dance pop', 2013, 80, 62, 61, -6, 37, 48, 231, 1, 3, 78),
(8, 'Don\'t You Worry Child - Radio Edit', 'Swedish House Mafia', 'big room', 2013, 129, 84, 61, -3, 12, 44, 213, 11, 5, 78),
(9, 'Get Lucky (feat. Pharrell Williams & Nile Rodgers) - Radio Edit', 'Daft Punk', 'electro', 2013, 116, 81, 79, -9, 10, 86, 248, 4, 4, 77),
(10, 'Wrecking Ball', 'Miley Cyrus', 'dance pop', 2013, 120, 42, 53, -6, 11, 35, 221, 41, 3, 77),
(11, 'Impossible', 'James Arthur', 'pop', 2013, 170, 70, 38, -5, 11, 30, 209, 14, 9, 77),
(12, 'Blurred Lines', 'Robin Thicke', 'dance pop', 2013, 120, 60, 85, -5, 8, 84, 264, 0, 4, 76),
(13, 'Heart Attack', 'Demi Lovato', 'dance pop', 2013, 174, 79, 50, -5, 24, 50, 211, 7, 10, 76),
(14, 'We Are Never Ever Getting Back Together', 'Taylor Swift', 'pop', 2013, 86, 68, 63, -6, 12, 75, 193, 1, 9, 75),
(15, 'Die Young', 'Kesha', 'dance pop', 2013, 128, 70, 71, -5, 22, 80, 212, 0, 5, 75),
(16, 'Clarity', 'Zedd', 'complextro', 2013, 128, 78, 51, -3, 7, 18, 271, 4, 7, 75),
(17, 'Summertime Sadness (Lana Del Rey Vs. Cedric Gervais) - Cedric Gervais Remix', 'Lana Del Rey', 'art pop', 2013, 126, 81, 57, -6, 13, 11, 215, 2, 6, 74),
(18, 'Under Control', 'Calvin Harris', 'dance pop', 2013, 126, 92, 54, -3, 12, 51, 184, 13, 8, 74),
(19, 'Everybody Talks', 'Neon Trees', 'indie pop', 2013, 155, 92, 47, -4, 31, 73, 177, 0, 6, 74),
(20, 'Hold On, We\'re Going Home', 'Drake', 'canadian hip hop', 2013, 100, 41, 77, -7, 7, 29, 228, 0, 10, 73),
(21, 'Best Song Ever', 'One Direction', 'boy band', 2013, 118, 88, 65, -3, 8, 49, 200, 2, 5, 73),
(22, 'Kiss You', 'One Direction', 'boy band', 2013, 90, 93, 63, -3, 32, 91, 183, 2, 6, 73),
(23, 'Sweet Nothing (feat. Florence Welch)', 'Calvin Harris', 'dance pop', 2013, 128, 93, 57, -4, 6, 58, 213, 20, 11, 72),
(24, 'Lose Yourself to Dance', 'Daft Punk', 'electro', 2013, 100, 66, 83, -8, 8, 67, 354, 8, 6, 72),
(25, 'Work Bitch', 'Britney Spears', 'dance pop', 2013, 128, 82, 63, -7, 7, 85, 248, 16, 16, 71),
(26, 'Brave', 'Sara Bareilles', 'acoustic pop', 2013, 185, 84, 55, -4, 4, 76, 221, 1, 5, 71),
(27, 'Can\'t Hold Us (feat. Ray Dalton)', 'Macklemore & Ryan Lewis', 'dance pop', 2013, 146, 93, 63, -4, 10, 88, 258, 3, 8, 70),
(28, 'Feel This Moment (feat. Christina Aguilera)', 'Pitbull', 'dance pop', 2013, 136, 76, 67, -4, 34, 54, 230, 4, 16, 70),
(29, 'Beneath Your Beautiful', 'Labrinth', 'pop', 2013, 84, 52, 56, -6, 10, 23, 272, 23, 4, 70),
(30, 'Let Me Love You (Until You Learn To Love Yourself)', 'Ne-Yo', 'dance pop', 2013, 125, 68, 66, -7, 37, 25, 252, 25, 4, 70),
(31, 'Thrift Shop (feat. Wanz)', 'Macklemore & Ryan Lewis', 'dance pop', 2013, 95, 53, 78, -7, 5, 66, 236, 6, 29, 69),
(32, 'If I Lose Myself - Alesso vs OneRepublic', 'OneRepublic', 'dance pop', 2013, 126, 75, 52, -6, 14, 16, 215, 26, 4, 69),
(33, 'The Way', 'Ariana Grande', 'dance pop', 2013, 82, 88, 65, -3, 8, 86, 227, 29, 11, 68),
(34, 'Suit & Tie', 'Justin Timberlake', 'dance pop', 2013, 102, 60, 80, -4, 16, 36, 326, 10, 22, 68),
(35, '#thatPOWER', 'will.i.am', 'dance pop', 2013, 128, 61, 80, -6, 7, 40, 280, 0, 6, 68),
(36, 'I Love It (feat. Charli XCX)', 'Icona Pop', 'candy pop', 2013, 126, 91, 71, -3, 15, 82, 157, 1, 3, 67),
(37, 'Play Hard (feat. Ne-Yo & Akon) - New Edit', 'David Guetta', 'dance pop', 2013, 130, 87, 72, -3, 66, 68, 209, 4, 4, 67),
(38, 'Daylight', 'Maroon 5', 'pop', 2013, 120, 67, 66, -5, 26, 37, 225, 0, 3, 66),
(39, 'Love Somebody', 'Maroon 5', 'pop', 2013, 120, 78, 68, -6, 12, 40, 230, 13, 4, 65),
(40, 'A Little Party Never Killed Nobody (All We Got)', 'Fergie', 'dance pop', 2013, 130, 62, 76, -6, 9, 52, 241, 1, 18, 65),
(41, 'Move', 'Little Mix', 'dance pop', 2013, 121, 74, 85, -5, 55, 77, 224, 0, 9, 63),
(42, 'Walks Like Rihanna', 'The Wanted', 'boy band', 2013, 126, 82, 56, -3, 10, 43, 202, 1, 6, 62),
(43, 'Rock N Roll', 'Avril Lavigne', 'canadian pop', 2013, 184, 96, 47, -3, 34, 67, 207, 1, 13, 61),
(44, 'Heartbreaker', 'Justin Bieber', 'canadian pop', 2013, 105, 52, 56, -7, 34, 58, 263, 14, 10, 61),
(45, 'Mirrors - Radio Edit', 'Justin Timberlake', 'dance pop', 2013, 77, 60, 58, -6, 43, 65, 277, 14, 5, 60),
(46, 'Next To Me', 'Emeli Sand?,dance pop', '2013', 95, 80, 67, -5, 11, 35, 197, 9, 4, 60, NULL),
(47, 'Made In The USA', 'Demi Lovato', 'dance pop', 2013, 87, 86, 58, -4, 32, 59, 196, 0, 4, 60),
(48, 'Clown', 'Emeli Sand?,dance pop', '2013', 130, 23, 45, -8, 11, 23, 221, 92, 4, 60, NULL),
(49, 'Girl On Fire (feat. Nicki Minaj) - Inferno Version', 'Alicia Keys', 'hip pop', 2013, 93, 81, 55, -6, 15, 34, 271, 9, 31, 59),
(50, 'TKO', 'Justin Timberlake', 'dance pop', 2013, 138, 68, 61, -7, 43, 49, 424, 1, 24, 58),
(51, 'Come & Get It', 'Selena Gomez', 'dance pop', 2013, 80, 79, 55, -4, 10, 58, 232, 1, 5, 57),
(52, 'Live It Up', 'Jennifer Lopez', 'dance pop', 2013, 128, 73, 69, -5, 33, 65, 244, 1, 17, 57),
(53, 'We Own The Night', 'The Wanted', 'boy band', 2013, 104, 94, 55, -4, 23, 56, 206, 1, 13, 56),
(54, 'Atlas - From ?The Hunger Games: Catching Fire? Soundtrack', 'Coldplay', 'permanent wave', 2013, 136, 45, 28, -8, 11, 11, 236, 63, 3, 55),
(55, 'What About Love', 'Austin Mahone', 'dance pop', 2013, 100, 78, 63, -7, 4, 28, 203, 0, 4, 54),
(56, 'Take Back the Night', 'Justin Timberlake', 'dance pop', 2013, 107, 66, 59, -5, 64, 33, 353, 4, 16, 54),
(57, 'Applause', 'Lady Gaga', 'dance pop', 2013, 140, 78, 67, -4, 11, 73, 212, 3, 5, 52),
(58, 'Anything Could Happen', 'Ellie Goulding', 'dance pop', 2013, 103, 78, 70, -4, 14, 38, 286, 43, 3, 52),
(59, 'Finally Found You', 'Enrique Iglesias', 'dance pop', 2013, 128, 88, 62, -5, 35, 66, 221, 1, 10, 52),
(60, 'Pom Poms', 'Jonas Brothers', 'boy band', 2013, 148, 98, 68, -2, 28, 90, 198, 7, 9, 52),
(61, '#Beautiful', 'Mariah Carey', 'dance pop', 2013, 107, 76, 68, -5, 31, 45, 200, 29, 4, 51),
(62, 'How Ya Doin\'? (feat. Missy Elliott)', 'Little Mix', 'dance pop', 2013, 201, 95, 36, -3, 37, 51, 211, 9, 48, 50),
(63, 'Crazy Kids (feat. will.i.am)', 'Kesha', 'dance pop', 2013, 128, 75, 72, -4, 13, 50, 229, 4, 4, 46),
(64, 'Ooh La La (from \"The Smurfs 2\")', 'Britney Spears', 'dance pop', 2013, 128, 57, 69, -5, 11, 73, 257, 2, 5, 45),
(65, 'People Like Us', 'Kelly Clarkson', 'dance pop', 2013, 128, 79, 60, -5, 36, 61, 259, 4, 4, 45),
(66, 'Overdose', 'Ciara', 'dance pop', 2013, 107, 70, 77, -6, 6, 79, 227, 1, 3, 43),
(67, 'Right Now - Dyro Radio Edit', 'Rihanna', 'barbadian pop', 2013, 130, 74, 53, -6, 24, 45, 186, 0, 4, 42),
(68, 'Give It 2 U', 'Robin Thicke', 'dance pop', 2013, 127, 83, 67, -4, 16, 58, 230, 10, 7, 41),
(69, 'Foolish Games', 'Jewel', 'alaska indie', 2013, 132, 34, 51, -11, 12, 7, 250, 23, 3, 36),
(70, 'Outta Nowhere (feat. Danny Mercer)', 'Pitbull', 'dance pop', 2013, 95, 84, 71, -4, 21, 66, 207, 16, 3, 35),
(71, 'Freak', 'Kelly Rowland', 'atl hip hop', 2013, 104, 78, 65, -5, 12, 45, 274, 13, 6, 28);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
