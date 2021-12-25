-- phpMyAdmin SQL Dump
-- version 4.0.10.7
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Dec 31, 2016 at 06:51 AM
-- Server version: 5.5.39-36.0-log
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `techmr3x_ssouq`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `seq` int(10) unsigned NOT NULL,
  `image` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `description`, `seq`, `image`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Mobile', 'test', 1, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Electronic Appliances', '', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Automobile', '', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Bikes', '', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Boats', '', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Furniture', '', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Pets', '', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Hobbies', '', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE IF NOT EXISTS `cities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `city` varchar(50) CHARACTER SET latin1 NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `seq` int(10) unsigned NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(3) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `city`, `description`, `seq`, `image`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Riyadh', '', 0, '', 1, '2016-06-02 08:21:47', '0000-00-00 00:00:00'),
(2, 'Jeddah', '', 0, '', 1, '2016-06-02 08:21:47', '0000-00-00 00:00:00'),
(3, 'Mecca', '', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Hofuf', '', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Ta’if', '', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Medina', '', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `listings`
--

CREATE TABLE IF NOT EXISTS `listings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET latin1 NOT NULL,
  `description` text CHARACTER SET latin1 NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `negotiable` tinyint(4) NOT NULL,
  `ad_type` tinyint(4) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `posted_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `city_id` int(10) unsigned NOT NULL,
  `data1` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `data2` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `data3` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `data4` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `data5` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `data6` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `data7` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `data8` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `views` int(10) unsigned NOT NULL,
  `user_id` int(11) NOT NULL,
  `active` tinyint(4) NOT NULL,
  `status` tinyint(4) DEFAULT '1' COMMENT 'approved or not',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `listings`
--

INSERT INTO `listings` (`id`, `title`, `description`, `price`, `negotiable`, `ad_type`, `subcategory_id`, `posted_by`, `city_id`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `latitude`, `longitude`, `views`, `user_id`, `active`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Title here ???????', 'description ???????', '0', 0, 0, 1, '', 1, '', '', '', '', '', '', '', '', 100.123456, -100.123456, 999999, 4, 0, 1, '2016-06-02 08:25:08', '0000-00-00 00:00:00'),
(2, 'asfdsadf', 'Describe what makes yosadfsadfur ad unique', '1111', 0, 0, 2, 'asdfsadfsafd', 2, '', '', '', '', '', '', '', '', 0, 0, 0, 4, 0, 1, '2016-11-02 03:03:40', '2016-11-23 00:44:09'),
(3, 'Test 04', 'Just Testing\r\nDescribe what makes your ad unique', '1000', 1, 0, 7, 'Demo 04', 2, '', '', '', '', '', '', '', '', 0, 0, 0, 3, 0, 1, '2016-11-14 01:59:47', '2016-11-14 01:59:47'),
(4, 'mobile phone ad', 'describ here Describe what makes your ad unique', '1000', 1, 0, 1, 'test name', 1, '', '', '', '', '', '', '', '', 0, 0, 0, 3, 0, 1, '2016-11-16 01:25:33', '2016-11-16 01:25:33'),
(5, 'sdfsadf', 'Describe what makes your ad usadfsadfnique', '15', 0, 0, 1, 'asdfsd', 1, '', '', '', '', '', '', '', '', 0, 0, 0, 3, 0, 1, '2016-11-22 00:29:31', '2016-11-22 00:29:31');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE IF NOT EXISTS `photos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `listing_id` int(11) NOT NULL,
  `photo` varchar(255) CHARACTER SET latin1 NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `listing_id`, `photo`, `created_at`, `updated_at`) VALUES
(1, 6, '6-twitter-2.jpg', '2016-11-22 00:29:53', '2016-11-22 00:29:53'),
(2, 6, '6-twitter.jpg', '2016-11-22 00:29:53', '2016-11-22 00:29:53');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'User', '', '2016-10-18 19:00:00', '2016-10-18 19:00:00'),
(2, 'Manager', '', '2016-10-18 19:00:00', '2016-10-18 19:00:00'),
(3, 'Admin', '', '2016-10-18 19:00:00', '2016-10-18 19:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE IF NOT EXISTS `sub_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(10) unsigned NOT NULL,
  `sub_category` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `seq` int(10) unsigned NOT NULL,
  `image` varchar(255) NOT NULL,
  `data1` varchar(50) NOT NULL,
  `data2` varchar(50) NOT NULL,
  `data3` varchar(50) NOT NULL,
  `data4` varchar(50) NOT NULL,
  `data5` varchar(50) NOT NULL,
  `data6` varchar(50) NOT NULL,
  `data7` varchar(50) NOT NULL,
  `data8` varchar(50) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `sub_category`, `description`, `seq`, `image`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `active`, `created_at`, `updated_at`) VALUES
(1, 1, 'Mobile Phones ', '', 0, '', 'Brand', 'Model', 'Year', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 1, 'Tablets', '', 0, '', 'Brand', 'Model', 'Year', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 1, 'Accessories', '', 0, '', 'Brand', 'Model', 'Year', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 2, 'Laptop, Computers and Accessories', '', 0, '', 'Brand', 'Model', 'Year', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 2, 'Cameras and Camcoders', '', 0, '', 'Brand', 'Model', 'Year', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 2, 'Gaming Consoles & Entertainment', '', 0, '', 'Brand', 'Model', 'Year', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 2, 'TV, Audio & Home Appliances', '', 0, '', 'Brand', 'Model', 'Year', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 2, 'Others', '', 0, '', 'Brand', 'Model', 'Year', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 3, 'Cars', '', 0, '', 'Brand', 'Model', 'Year', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 3, 'Commercial Vehicles', '', 0, '', 'Brand', 'Model', 'Year', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 3, 'Rentals', '', 0, '', 'Brand', 'Model', 'Year', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 3, 'Spares and Accessories', '', 0, '', 'Brand', 'Model', 'Year', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 3, 'Others', '', 0, '', 'Brand', 'Model', 'Year', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 4, 'Motorcycles', '', 0, '', 'Brand', 'Model', 'Year', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 4, 'Scooters', '', 0, '', 'Brand', 'Model', 'Year', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 4, 'Bicycle', '', 0, '', 'Brand', 'Model', 'Year', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 4, 'Spares & Accessories', '', 0, '', 'Brand', 'Model', 'Year', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 5, 'Sports & Recreational', '', 0, '', 'Brand', 'Model', 'Year', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 5, 'Boats & Sails', '', 0, '', 'Brand', 'Model', 'Year', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 5, 'Spares & Accessories', '', 0, '', 'Brand', 'Model', 'Year', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 5, 'Others', '', 0, '', 'Brand', 'Model', 'Year', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 6, 'Sofa & Dining', '', 0, '', 'Brand', 'Model', 'Year', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 6, 'Bedding and Wardrobes', '', 0, '', 'Brand', 'Model', 'Year', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 6, 'Home decor and Gardens', '', 0, '', 'Brand', 'Model', 'Year', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 6, 'Other Accessories', '', 0, '', 'Brand', 'Model', 'Year', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 7, 'Cats', '', 0, '', 'Brand', 'Model', 'Year', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 7, 'Dogs', '', 0, '', 'Brand', 'Model', 'Year', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 7, 'Birds', '', 0, '', 'Brand', 'Model', 'Year', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 7, 'Exotic Animals', '', 0, '', 'Brand', 'Model', 'Year', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 7, '', 'test', 0, '', 'Brand', 'Model', 'Year', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2016-11-23 01:11:50'),
(31, 8, 'Sports Equipment & Accessories', '', 0, '', 'Brand', 'Model', 'Year', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 8, 'Books & Magazines', '', 0, '', 'Brand', 'Model', 'Year', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 8, 'Musical Instruments', '', 0, '', 'Brand', 'Model', 'Year', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_type` tinyint(1) NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `phone_show` tinyint(4) NOT NULL DEFAULT '0',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_type`, `name`, `phone`, `phone_show`, `email`, `password`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin 2 1', '123456790', 1, 'admin@yahoo.com', '$2y$10$BrAsC9Vw.U3/pwi/gtSPq.5DSAYezZG.lZ6rKTcjuUckD0cyAHUsu', 0, 'T7fBgDIDewOBsHnkcUYcYXYI6lmPlykDpwUDaCAePwXitGkhFJm5pSGdLMJH', '2016-11-01 06:30:19', '2016-11-23 02:06:11'),
(2, 1, 'Ayaz', '123123123', 1, 'manager@yahoo.com', '$2y$10$Xe8pZD.44QTsFsPKDUGrNOffZ1kQfnpgR8waIomXffRCTXng2MGAm', 0, 'ZAn7QjWtkqLZ2vEHUmBZXPzjK6rqhSAwcjxQwBimRALil83T1J9D5XJVy9K9', '2016-11-01 06:37:19', '2016-11-23 02:06:28'),
(3, 1, 'Ayaz Ahmed', '000000000', 1, 'demo01@yahoo.com', '$2y$10$qiodPWh2K6TosGowuBdezOxMyQ.6EtHqXK2RwTZ32zTtr1J4MDavi', 0, 'rWklgJMUz0YLUM4CjgZYD0A7pSQ70S8qzoOvDeHsJ10lVKnvlyp5Ce43u2c8', '2016-11-01 06:47:01', '2016-12-11 10:35:25'),
(4, 1, 'Ayaz Ahmed', '0000000000', 1, 'demo02@yahoo.com', '$2y$10$CTBRgeDVNo.G9C7it6PqaeRAIa3gIufrVJkXvsWXvd3SAdcsBiogi', 0, 'cp6Zx5aWh4yBKWXan4gJwkBmyJqaSRIeLR0ZxyqMRAglTcpaGHx8KGTYoJA1', '2016-11-01 06:50:47', '2016-11-23 01:40:00'),
(5, 1, 'Ayaz', '1234567890', 1, 'demo03@yahoo.com', '$2y$10$QBkp3o70HUyqacl5A14fxOZajN4evBvSqDLN4q2q5R6TmheJFHOy.', 0, 'udw8UNiVyABAF72ZV6dsEsU11ZkZKuNUaJkTe0r9n9KEG8AlAexfKy1aqq5d', '2016-11-08 23:11:09', '2016-11-08 23:53:31'),
(6, 1, 'Ayaz Ahmed', '3008210313', 0, 'demo04@yahoo.com', '$2y$10$h4allGb/98FbO0jm9wKUPebA9UwVbHrlFJuMuHKbPFn3cBV.fMmK2', 0, 'SzlnpIFNuQmbRuQl9Lux1Y2JFQGJYVlSuvgTvUbynQk3wjPsp8rSInNHksX0', '2016-11-14 01:58:51', '2016-11-14 02:02:06'),
(7, 2, 'Demo 11 udpated', '13333333', 1, 'demo11@yahoo.com', '$2y$10$3RTLZIqyNWQCMAsYxOn1T.ba.W730Q3obAqd6mLmLOZuvWfsupqhS', 0, NULL, '2016-11-16 01:15:52', '2016-11-16 01:23:20'),
(8, 2, 'demo 21', '922100000000', 1, 'demo21@yahoo.com', '$2y$10$A3M0l79rw3BrkF.4H2rQCOMV0yTefOiHN4/5Q2A5Dhc8vUa.GBY5m', 0, NULL, '2016-11-22 23:11:37', '2016-11-22 23:11:37');

-- --------------------------------------------------------

--
-- Table structure for table `user_favorite`
--

CREATE TABLE IF NOT EXISTS `user_favorite` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `listing_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`listing_id`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `user_favorite`
--

INSERT INTO `user_favorite` (`id`, `user_id`, `listing_id`, `created_at`, `updated_at`) VALUES
(1, 4, 1, NULL, NULL),
(2, 3, 3, NULL, NULL),
(3, 3, 2, NULL, NULL),
(4, 3, 1, NULL, NULL),
(5, 3, 4, NULL, NULL),
(6, 3, 6, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE IF NOT EXISTS `user_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 4, 1, NULL, NULL),
(2, 1, 3, NULL, NULL),
(3, 2, 2, NULL, NULL),
(4, 3, 1, NULL, NULL),
(5, 5, 1, NULL, NULL),
(6, 6, 1, NULL, NULL),
(7, 7, 1, NULL, NULL),
(8, 8, 1, NULL, NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
