-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2014 at 02:27 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `one_cinemas`
--

-- --------------------------------------------------------

--
-- Table structure for table `lar_cinemas`
--

CREATE TABLE IF NOT EXISTS `lar_cinemas` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `lar_cinemas`
--

INSERT INTO `lar_cinemas` (`id`, `name`, `address`) VALUES
(1, 'Event Cinema', '505-525 George St, Sydney NSW 2000'),
(2, 'The Ritz Cinema', '43-45 St Pauls Street, Randwick NSW 2031');

-- --------------------------------------------------------

--
-- Table structure for table `lar_movies`
--

CREATE TABLE IF NOT EXISTS `lar_movies` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `lar_movies`
--

INSERT INTO `lar_movies` (`id`, `title`) VALUES
(1, 'Intersteller'),
(2, 'Matrix'),
(3, 'Lucy');

-- --------------------------------------------------------

--
-- Table structure for table `lar_session_times`
--

CREATE TABLE IF NOT EXISTS `lar_session_times` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `movie_id` int(11) unsigned NOT NULL,
  `cinema_id` int(11) unsigned NOT NULL,
  `date_time` timestamp NOT NULL,
  PRIMARY KEY (`id`),
  KEY `movie_id` (`movie_id`),
  KEY `cinema_id` (`cinema_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `lar_session_times`
--

INSERT INTO `lar_session_times` (`id`, `movie_id`, `cinema_id`, `date_time`) VALUES
(1, 1, 1, '2014-12-19 02:30:39'),
(2, 1, 1, '2014-12-19 05:30:39'),
(3, 2, 2, '2014-12-08 05:32:37'),
(4, 2, 2, '2014-12-08 05:32:37'),
(5, 3, 1, '2014-12-08 05:33:16'),
(6, 3, 2, '2014-12-08 05:33:16');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `lar_session_times`
--
ALTER TABLE `lar_session_times`
  ADD CONSTRAINT `lar_session_times_ibfk_2` FOREIGN KEY (`cinema_id`) REFERENCES `lar_cinemas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lar_session_times_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `lar_movies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
