-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 02, 2013 at 06:39 PM
-- Server version: 5.5.29
-- PHP Version: 5.4.6-1ubuntu1.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `media_development`
--

-- --------------------------------------------------------

--
-- Table structure for table `confrences`
--

CREATE TABLE IF NOT EXISTS `confrences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `confrences`
--

INSERT INTO `confrences` (`id`, `name`, `year`, `location`, `created_at`, `updated_at`) VALUES
(1, 'Defcon 20', 2012, 'Rio Hotel and Casino', '2012-12-25 05:28:25', '2012-12-25 05:28:25');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE IF NOT EXISTS `media` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `talk_id` int(11) DEFAULT NULL,
  `confrence_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `height` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `length` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_media_on_talk_id` (`talk_id`),
  KEY `index_media_on_confrence_id` (`confrence_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `mode`, `data`, `talk_id`, `confrence_id`, `created_at`, `updated_at`, `height`, `width`, `length`) VALUES
(1, 'wistia', '1620k9h04s', 12, 1, '2012-12-25 08:27:23', '2012-12-25 08:27:23', 480, 640, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `presenters`
--

CREATE TABLE IF NOT EXISTS `presenters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fbook` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `skype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `aim` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=19 ;

--
-- Dumping data for table `presenters`
--

INSERT INTO `presenters` (`id`, `name`, `handle`, `email`, `fbook`, `twitter`, `linkedin`, `url`, `skype`, `aim`, `created_at`, `updated_at`) VALUES
(1, 'Adam Baldwin', 'EvilPacket', '', '', '', '', '', '', '', '2012-12-25 01:35:25', '2012-12-25 01:35:25'),
(2, 'Chema Alonso', '', '', '', '', '', '', '', '', '2012-12-25 01:37:29', '2012-12-25 01:37:29'),
(3, 'Manu', 'The Sur', '', '', '', '', '', '', '', '2012-12-25 01:37:41', '2012-12-25 01:37:41'),
(4, 'General Keith B. Alexander', '', '', '', '', '', '', '', '', '2012-12-25 05:01:47', '2012-12-25 05:01:47'),
(5, '', 'Anch', '', '', '', '', '', '', '', '2012-12-25 05:01:59', '2012-12-25 05:01:59'),
(6, '', 'Omega', '', '', '', '', '', '', '', '2012-12-25 05:02:08', '2012-12-25 05:02:08'),
(7, 'Chris Anderson', '', '', '', '', '', '', '', '', '2012-12-25 05:02:21', '2012-12-25 05:02:21'),
(8, '', 'atlas', '', '', '', '', '', '', '', '2012-12-25 05:02:31', '2012-12-25 05:02:31'),
(9, 'Kevin Bankston', '', '', '', '', '', '', '', '', '2012-12-25 05:02:45', '2012-12-25 05:02:45'),
(10, 'Matt Blaze', '', '', '', '', '', '', '', '', '2012-12-25 05:02:53', '2012-12-25 05:02:53'),
(11, 'Jennifer Granick', '', '', '', '', '', '', '', '', '2012-12-25 05:03:07', '2012-12-25 05:03:07'),
(12, '', 'Bitweasil', '', '', '', '', '', '', '', '2012-12-25 05:03:20', '2012-12-25 05:03:20'),
(13, 'Rodrigo Rubira Branco', '', '', '', '', '', '', '', '', '2012-12-25 05:03:33', '2012-12-25 05:03:33'),
(14, 'James Oakley', '', '', '', '', '', '', '', '', '2012-12-25 05:03:44', '2012-12-25 05:03:44'),
(15, 'Sergey Bratus', '', '', '', '', '', '', '', '', '2012-12-25 05:03:52', '2012-12-25 05:03:52'),
(16, 'Josh Brashars', 'Savant', '', '', '', '', '', '', '', '2012-12-25 05:04:10', '2012-12-25 05:04:10'),
(17, 'Jonathan Brossard', '', '', '', '', '', '', '', '', '2012-12-25 05:04:20', '2012-12-25 05:04:20'),
(18, 'Zack Fasel', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `presenters_talks`
--

CREATE TABLE IF NOT EXISTS `presenters_talks` (
  `presenter_id` int(11) DEFAULT NULL,
  `talk_id` int(11) DEFAULT NULL,
  KEY `index_presenters_talks_on_presenter_id_and_talk_id` (`presenter_id`,`talk_id`),
  KEY `index_presenters_talks_on_talk_id_and_presenter_id` (`talk_id`,`presenter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `presenters_talks`
--

INSERT INTO `presenters_talks` (`presenter_id`, `talk_id`) VALUES
(1, 1),
(2, 2),
(3, 2),
(4, 3),
(5, 4),
(6, 4),
(7, 5),
(8, 6),
(9, 7),
(10, 7),
(11, 7),
(12, 8),
(13, 9),
(14, 9),
(15, 9),
(16, 10),
(17, 11),
(18, 12);

-- --------------------------------------------------------

--
-- Table structure for table `schema_migrations`
--

CREATE TABLE IF NOT EXISTS `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20121225002234'),
('20121225003341'),
('20121225015059'),
('20121225211831'),
('20121225220614'),
('20121225234200');

-- --------------------------------------------------------

--
-- Table structure for table `talks`
--

CREATE TABLE IF NOT EXISTS `talks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=13 ;

--
-- Dumping data for table `talks`
--

INSERT INTO `talks` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Blind XSS', '', '2012-12-25 01:34:03', '2012-12-25 01:34:03'),
(2, 'Owning Bad Guys {And Mafia} With Javascript Botnets', '', '2012-12-25 01:37:55', '2012-12-25 01:37:55'),
(3, 'Shared Values, Shared Responsibility ', NULL, '2012-12-24 18:08:18', '2012-12-24 18:08:18'),
(4, 'The Darknet of Things, Building Sensor Networks That Do Your Bidding', NULL, '2012-12-24 18:08:18', '2012-12-24 18:08:18'),
(5, 'Drones!', NULL, '2012-12-24 18:08:18', '2012-12-24 18:08:18'),
(6, '<ghz or bust: DEF CON', NULL, '2012-12-24 18:08:18', '2012-12-24 18:08:18'),
(7, 'Should the Wall of Sheep Be Illegal? A Debate Over Whether and How Open WiFi Sniffing Should Be Regulated', NULL, '2012-12-24 18:08:18', '2012-12-24 18:08:18'),
(8, 'Cryptohaze Cloud Cracking', NULL, '2012-12-24 18:08:18', '2012-12-24 18:08:18'),
(9, 'Overwriting the Exception Handling Cache PointerDwarf Oriented Programming', NULL, '2012-12-24 18:08:18', '2012-12-24 18:08:18'),
(10, 'Exploit Archaeology: Raiders of the Lost Payphones', NULL, '2012-12-24 18:08:18', '2012-12-24 18:08:18'),
(11, 'Hardware Backdooring is Practical', NULL, '2012-12-24 18:08:18', '2012-12-24 18:08:18'),
(12, 'Owned in 60 Seconds From Network Guest to Windows Domain Admin by Zack Fasel', NULL, '2012-12-25 13:23:12', '2012-12-25 13:23:12');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
