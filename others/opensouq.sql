-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2017 at 01:19 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `opensouq`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `seq` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `description`, `seq`, `image`, `active`, `photo`, `created_at`, `updated_at`) VALUES
(1, 'Cars', 'test', 1, '', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Mobile & Tablets', '', 0, '', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Video Games & Consoles', '', 0, '', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Electronics - Appliances', '', 0, '', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Real Estate', '', 0, '', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Furniture - Decor', '', 0, '', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Women''s Fashion', '', 0, '', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Men''s Fashion', '', 0, '', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Baby - Kids', '', 0, '', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Food Supplements', '', 0, '', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Services', '', 0, '', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Jobs', '', 0, '', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Job Seekers', '', 0, '', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Pets', '', 0, '', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Books - Sports - Others', '', 0, '', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'Business Industrial', '', 0, '', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'Antiques', '', 0, '', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'Matrimony', '', 0, '', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'Web Services', '', 0, '', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(10) UNSIGNED NOT NULL,
  `city` varchar(50) CHARACTER SET latin1 NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `seq` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(3) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `city`, `description`, `seq`, `image`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Amman', '', 0, '', 1, '2016-06-02 08:21:47', '0000-00-00 00:00:00'),
(2, 'Irbid', '', 0, '', 1, '2016-06-02 08:21:47', '0000-00-00 00:00:00'),
(3, 'Zarqa', '', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Salt', '', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Madaba', '', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Aqaba', '', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `listing_id` int(10) UNSIGNED NOT NULL,
  `listing_user_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `offer` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `listing_id`, `listing_user_id`, `user_id`, `description`, `offer`, `created_at`, `updated_at`) VALUES
(1, 17, 3, 3, 'asfsadf', 2, '2017-01-19 01:13:27', '2017-01-19 01:13:27'),
(2, 17, 3, 3, 'asdfsadf', 1, '2017-01-19 01:13:37', '2017-01-19 01:13:37');

-- --------------------------------------------------------

--
-- Table structure for table `emails`
--

CREATE TABLE `emails` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(30) NOT NULL,
  `title` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emails`
--

INSERT INTO `emails` (`id`, `slug`, `title`, `message`, `created_at`, `updated_at`) VALUES
(1, 'signup', 'Welcome to TSS', 'Dear %user_name%,\r\n\r\nWelcome to The Shop Ship. \r\n\r\n%user_message%\r\n\r\nLogin now to start Shopping: \r\n\r\nFor sign in you may use: \r\nhttps://app.theshopship/signin\r\n\r\nTo reset your password, if required, use the following link:\r\nhttps://app.theshopship/forgot\r\n\r\nHappy Shopping\r\n\r\nSupport Team\r\nTheShopShip.com\r\nSupport @theshopship.com\r\nPh: (832) 672-7100', '0000-00-00 00:00:00', '2016-12-21 09:57:03'),
(2, 'order-placed', 'You have placed order with TSS', 'Dear %user_name%\r\n\r\nYou have placed on order with The Shop Ship.com:\r\n\r\n%user_message%\r\n\r\nIf you have any query regarding this request, please contact our support team.\r\n\r\nHappy Shopping\r\n\r\nSupport Team\r\nTheShopShip.com\r\nSupport @theshopship.com\r\nPh: (832) 672-7100\r\n', '0000-00-00 00:00:00', '2016-12-21 09:57:42'),
(3, 'order-processed', 'TSS processed your Order', 'Dear %user_name%,\r\n\r\nYour Order has been Placed:\r\n\r\n%user_message%\r\n\r\nIf you have any query regarding this request, please contact our support team.\r\n\r\nHappy Shopping\r\n\r\nSupport Team\r\nTheShopShip.com\r\nSupport @theshopship.com\r\nPh: (832) 672-7100', NULL, '2016-12-21 09:57:55'),
(4, 'order-received', 'We received your goods - TSS', 'Dear %user_name%,\r\n\r\nWe have received your package at our facility:\r\n\r\n%user_message%\r\n\r\nIf you have any query regarding this request, please contact our support team.\r\n\r\nHappy Shopping\r\n\r\nSupport Team\r\nTheShopShip.com\r\nSupport @theshopship.com\r\nPh: (832) 672-7100', NULL, '2016-12-21 09:58:37'),
(5, 'order-shipped', 'Your goods are on the way - TSS', 'Dear %user_name%,\r\n\r\nYou package has been shipped. \r\n\r\n%user_message%\r\n\r\nIf you have any query regarding this request, please contact our support team.\r\n\r\nHappy Shopping\r\n\r\nSupport Team\r\nTheShopShip.com\r\nSupport @theshopship.com\r\nPh: (832) 672-7100', NULL, '2016-12-21 09:58:55'),
(6, 'forgot-password', 'Password Recovery - TSS', 'Dear %user_name%,\r\n\r\nYou have requested password reset.\r\n\r\nClick on the link below to reset your password:\r\n\r\n%user_message%\r\n\r\nIf you have any query regarding this request, please contact our support team.\r\n\r\nHappy Shopping\r\n\r\nSupport Team\r\nTheShopShip.com\r\nSupport @theshopship.com\r\nPh: (832) 672-7100', NULL, '2016-12-21 09:57:30');

-- --------------------------------------------------------

--
-- Table structure for table `listings`
--

CREATE TABLE `listings` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET latin1 NOT NULL,
  `description` text CHARACTER SET latin1 NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `negotiable` tinyint(4) NOT NULL,
  `ad_type` tinyint(4) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `posted_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `city_id` int(10) UNSIGNED NOT NULL,
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
  `views` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `active` tinyint(4) NOT NULL,
  `status` tinyint(4) DEFAULT '1' COMMENT 'approved or not',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `listings`
--

INSERT INTO `listings` (`id`, `title`, `description`, `price`, `negotiable`, `ad_type`, `subcategory_id`, `posted_by`, `city_id`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `latitude`, `longitude`, `views`, `user_id`, `active`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Title here ???????', 'description ???????', '0', 0, 0, 1, '', 1, '', '', '', '', '', '', '', '', 100.123456, -100.123456, 999999, 4, 0, 0, '2016-06-02 08:25:08', '0000-00-00 00:00:00'),
(2, 'asfdsadf', 'Describe what makes yosadfsadfur ad unique', '1111', 0, 0, 2, 'asdfsadfsafd', 2, '', '', '', '', '', '', '', '', 0, 0, 0, 4, 0, 0, '2016-11-02 03:03:40', '2016-11-23 00:44:09'),
(3, 'Test 04', 'Just Testing\r\nDescribe what makes your ad unique', '1000', 1, 0, 7, 'Demo 04', 2, '', '', '', '', '', '', '', '', 0, 0, 0, 3, 1, 1, '2016-11-14 01:59:47', '2016-11-14 01:59:47'),
(4, 'mobile phone ad', 'describ here Describe what makes your ad unique', '1000', 1, 1, 1, 'test name', 1, '', '', '', '', '', '', '', '', 0, 0, 0, 3, 0, 1, '2016-11-16 01:25:33', '2017-01-04 00:30:48'),
(5, 'sdfsadf', 'Describe what makes your ad usadfsadfnique', '1500', 0, 0, 1, 'asdfsd', 1, '', '', '', '', '', '', '', '', 0, 0, 0, 3, 0, 1, '2016-11-22 00:29:31', '2017-01-02 00:42:39'),
(6, 'test 01', 'description for test 01 Describe what makes your ad unique', '1000', 0, 1, 1, 'my seller name', 1, '', '', '', '', '', '', '', '', 0, 0, 0, 3, 0, 1, '2017-01-02 00:32:09', '2017-01-04 00:31:53'),
(7, 'test 02', 'asjl;jsdflkjasl;jfDescribe what makes your ad unique', '2000', 0, 1, 2, 'seller', 1, '', '', '', '', '', '', '', '', 0, 0, 0, 3, 1, 0, '2017-01-02 00:40:38', '2017-01-04 00:23:51'),
(8, 'test 03', 'description of test 03 Describe what makes your ad unique', '3000', 1, 0, 1, 'test seller name ', 1, '', '', '', '', '', '', '', '', 0, 0, 0, 4, 1, 0, '2017-01-03 00:11:40', '2017-01-03 00:11:40'),
(9, 'test 04', 'Describe what makes your ad unique', '4000', 1, 1, 1, 'test 04 user', 1, '', '', '', '', '', '', '', '', 0, 0, 0, 4, 1, 0, '2017-01-03 00:16:54', '2017-01-03 00:16:54'),
(10, 'test', 'aaDescribe what makes your ad unique', '111', 0, 1, 1, 'sdafsad', 1, '', '', '', '', '', '', '', '', 0, 0, 0, 3, 1, 0, '2017-01-09 23:58:26', '2017-01-09 23:58:26'),
(11, 'sadfasdf', 'sadfsadf', '111', 1, 1, 3, 'safsadf', 1, '', '', '', '', '', '', '', '', 0, 0, 0, 3, 1, 0, '2017-01-13 02:48:38', '2017-01-13 02:48:38'),
(12, 'asdfsadf', 'sdafdasf', '1111', 0, 1, 4, 'sfadfsad', 2, '', '', '', '', '', '', '', '', 0, 0, 0, 3, 1, 0, '2017-01-13 02:49:34', '2017-01-13 02:49:34'),
(13, 'asdfsadf', 'sdafdasf', '1111', 0, 1, 4, 'sfadfsad', 2, '', '', '', '', '', '', '', '', 0, 0, 0, 3, 1, 0, '2017-01-13 02:55:20', '2017-01-13 02:55:20'),
(14, 'asdfsadf', 'sdafdasf', '1111', 0, 1, 4, 'sfadfsad', 2, '', '', '', '', '', '', '', '', 0, 0, 0, 3, 1, 0, '2017-01-13 02:55:31', '2017-01-13 02:55:31'),
(15, 'asdfsadf', 'sdafdasf', '1111', 0, 1, 4, 'sfadfsad', 2, '', '', '', '', '', '', '', '', 0, 0, 0, 3, 1, 0, '2017-01-13 02:56:03', '2017-01-13 02:56:03'),
(16, 'asdfsadf', 'sdafdasf', '1111', 0, 1, 4, 'sfadfsad', 2, '', '', '', '', '', '', '', '', 0, 0, 0, 3, 1, 0, '2017-01-13 02:56:19', '2017-01-13 02:56:19'),
(17, 'sdfasadf', 'sadfsadf', '111', 0, 1, 1, 'asdfsad', 1, '', '', '', '', '', '', '', '', 0, 0, 0, 3, 1, 1, '2017-01-13 23:47:37', '2017-01-14 00:34:13'),
(18, 'sadfsad', 'fsadfsddf', '1111', 0, 1, 1, 'asdfsdf', 1, '', '', '', '', '', '', '', '', 0, 0, 0, 3, 1, 0, '2017-01-19 03:10:20', '2017-01-19 03:10:20');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `listing_id` int(10) UNSIGNED NOT NULL,
  `listing_user_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `sender` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `listing_id`, `listing_user_id`, `user_id`, `description`, `sender`, `created_at`, `updated_at`) VALUES
(1, 17, 3, 3, 'asfsadf', 2, '2017-01-19 01:13:27', '2017-01-19 01:13:27'),
(2, 17, 3, 3, 'asdfsadf', 1, '2017-01-19 01:13:37', '2017-01-19 01:13:37');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
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

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` int(10) UNSIGNED NOT NULL,
  `listing_id` int(11) NOT NULL,
  `photo` varchar(255) CHARACTER SET latin1 NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `listing_id`, `photo`, `created_at`, `updated_at`) VALUES
(1, 6, '6-twitter-2.jpg', '2016-11-22 00:29:53', '2016-11-22 00:29:53'),
(3, 8, '8-1.jpg', '2017-01-03 00:11:40', '2017-01-03 00:11:40'),
(4, 6, '6-1.jpg', '2017-01-04 00:50:26', '2017-01-04 00:50:26'),
(5, 4, '4-1.jpg', '2017-01-04 01:23:59', '2017-01-04 01:23:59'),
(6, 16, '16-cover_2.jpg', '2017-01-13 02:56:19', '2017-01-13 02:56:19'),
(7, 16, '16-cover-3.jpg', '2017-01-13 02:56:19', '2017-01-13 02:56:19'),
(8, 18, '18-image-500x500.jpg', '2017-01-19 03:10:20', '2017-01-19 03:10:20'),
(9, 18, '18-image-1000x1000.jpg', '2017-01-19 03:10:21', '2017-01-19 03:10:21'),
(10, 18, '18-image-1000x20000.jpg', '2017-01-19 03:10:21', '2017-01-19 03:10:21');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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

CREATE TABLE `sub_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `sub_category` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `seq` int(10) UNSIGNED NOT NULL,
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
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `sub_category`, `description`, `seq`, `image`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `active`, `created_at`, `updated_at`) VALUES
(1, 1, 'Cars For Sale', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 1, 'Cars For Rent', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 1, 'Motorcycles For Sale', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 1, 'VIP Car Plates', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 1, 'Parts - Accessories', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 1, 'Wheels - Rims', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 1, 'Trucks - Heavy Machinery', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 1, 'Boats - Yachts', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 1, 'Other Vehicles', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 2, 'Mobiles', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 2, 'Tablets', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 2, 'VIP Phone Numbers', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 2, 'Mobile Tablet Accessories', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 2, 'Others - Mobile - Tablet', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 3, 'Consoles', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 3, 'Video Games', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 3, 'Accessories - Replacement Parts', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 3, 'Gaming Cards', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 3, 'Accounts and Characters', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 3, 'Action Figures', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 3, 'Others - Gaming', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 4, 'Laptops - Computers', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 4, 'TVs - Screens', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 4, 'Speakers - Amplifiers', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 4, 'Stereo - Radios', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 4, 'Receivers - DVD Player', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 4, 'Modems - Routers', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 4, 'Cameras - Photography', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 4, 'Air Conditioners - Fans', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 4, 'Refrigerators - Freezers', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 4, 'Washing Machines - Dryers', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 4, 'Ovens - Microwaves', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 4, 'Water Coolers and Filters', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 4, 'Small Appliances', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 4, 'Wearable Technology', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 4, 'Scooters - Hoverboards', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 4, 'Heaters - Electrical heater', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 4, 'Heaters', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 4, 'Vacuum Cleaner', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 4, 'Printers - Fax - Projectors', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 4, 'Home phones - Wireless', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 4, 'Replacements - Accessories', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 4, 'Other Electronics - Appliances', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 5, 'Apartments', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 5, 'Villas - Palaces', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 5, 'Commercial', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 5, 'Rooms', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 5, 'Whole Building', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 5, 'Land', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 5, 'Vacation Homes', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 5, 'Other Real Estate', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 6, 'Furniture', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 6, 'Home Decor - Furnishings', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 6, 'Kitchenware', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 6, 'Houseware', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 6, 'bathrooms', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 6, 'Other Furniture-Decor', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 7, 'Clothes', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 7, 'Women Shoes', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 7, 'Watches', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 7, 'Accessories - Jewelry', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 7, 'Bags', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 7, 'Perfumes - Incense', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 7, 'Personal Care Devices', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 7, 'Beauty Cosmetics', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 7, 'Personal Health Care', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 7, 'Others - Women''s Fashion', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 8, 'Menswear', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 8, 'Men''s Shoes', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 8, 'Men''s Watches', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 8, 'Men''s Accessories', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 8, 'Personal Care Devices', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 8, 'Perfume - Incense for men', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 8, 'Others - Men''s Fashion', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 9, 'Kids Furniture', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 9, 'Strollers - Car Seats', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 9, 'Kids Clothing', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 9, 'Toys - Games', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 9, 'Others - Baby - Kids', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 10, 'Oils', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 10, 'Dates', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 10, 'Honey', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 10, 'Ready Cooked Meals', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 10, 'Desserts', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 10, 'Food Supplements', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 10, 'Others - Food - Supplements', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 11, 'Tutoring - Courses', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 11, 'Computers - Laptops', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 11, 'Home Repair', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 11, 'Food Catering - Events', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 11, 'Medical Services', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 11, 'Electrician services', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 11, 'Movers - Packers', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 11, 'Car Repair - Maintenance', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 11, 'Travel - Tourism', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 11, 'Cleaning Services', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 11, 'Legal Services', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 11, 'Maidservice', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 11, 'private schools & kindergartens', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 11, 'construction & building', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 11, 'massage & spa', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 11, 'colleges & universities', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 11, 'painting', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 11, 'other services', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 12, 'Engineering', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 12, 'Admin - Secretary', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 12, 'Accounting - Finance', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 12, 'Medicine - Nursing', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 12, 'Computer - IT', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, 12, 'Tutoring - Training', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, 12, 'Sales - Marketing', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, 12, 'Media - Design - Creative', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(113, 12, 'Recruitment - HR', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(114, 12, 'Media - Advertising', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, 12, 'Costumer Service', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, 12, 'Drivers - Delivery', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(117, 12, 'Maids - Home Staff', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(118, 12, 'Guards - Security', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(119, 12, 'Barber - Stylist', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(120, 12, 'Craftspersons- Artisans', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(121, 12, 'Hospitality', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(122, 12, 'Travel - Tourism', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(123, 12, 'Legal - Law', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(124, 12, 'Management - Admin', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(125, 12, 'Other Jobs', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(126, 13, 'a', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(127, 14, 'Cats', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(128, 14, 'Birds', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(129, 14, 'Pigeons', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(130, 14, 'Sheep', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(131, 14, 'Chickens', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(132, 14, 'Horses', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(133, 14, 'Parrots', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(134, 14, 'Dogs', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(135, 14, 'Goats', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(136, 14, 'Fish', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(137, 14, 'Camels', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(138, 14, 'Accessories', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(139, 14, 'Other Animals', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(140, 15, 'Tickets', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(141, 15, 'Musical Instruments', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(142, 15, 'Collectibles', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(143, 15, 'Books - Magazines', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(144, 15, 'Sports - Leisure', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(145, 15, 'Bicycles - Accessories', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(146, 15, 'Others', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(147, 16, 'Professional Equipment', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(148, 16, 'Businesses for Sale', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(149, 16, 'Office Furniture', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(150, 16, 'Others - Businesses Industrial', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(151, 17, 'antique furniture', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(152, 17, 'watches', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(153, 17, 'numismatics', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(154, 17, 'stamps', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(155, 17, 'hand-made items', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(156, 17, 'paintings', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(157, 17, 'memorabilia', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(158, 17, 'souvenir', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(159, 17, 'other antiques', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(160, 18, 'man looking for marriage', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(161, 18, 'woman looking for marriage', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(162, 19, 'graphic & design', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(163, 19, 'digital marketing', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(164, 19, 'writing & translation', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(165, 19, 'video & animation', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(166, 19, 'music & audio', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(167, 19, 'programming & tech', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(168, 19, 'advertising businesses', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(169, 19, 'fun & lifestyle', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(170, 19, 'personal advice', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(171, 19, 'do on your behalf', '', 0, '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_type` tinyint(1) NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `phone_show` tinyint(4) NOT NULL DEFAULT '0',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_type`, `name`, `phone`, `phone_show`, `email`, `password`, `status`, `photo`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', '123456790', 1, 'admin@saudisouq.com', '$2y$10$qiodPWh2K6TosGowuBdezOxMyQ.6EtHqXK2RwTZ32zTtr1J4MDavi', 1, '', '3LLO4YzR75HyUiW2IP5NQ7QmKlPNLv7fqX71MsI4CXBZuZi0loyvVtOV0BFz', '2016-11-01 06:30:19', '2017-01-03 00:00:03'),
(2, 1, 'Manager', '123123123', 1, 'manager@saudisouq.com', '$2y$10$Xe8pZD.44QTsFsPKDUGrNOffZ1kQfnpgR8waIomXffRCTXng2MGAm', 0, '', 'ZAn7QjWtkqLZ2vEHUmBZXPzjK6rqhSAwcjxQwBimRALil83T1J9D5XJVy9K9', '2016-11-01 06:37:19', '2016-11-23 02:06:28'),
(3, 1, 'Ayaz Ahmed', '000000000', 1, 'demo01@yahoo.com', '$2y$10$qiodPWh2K6TosGowuBdezOxMyQ.6EtHqXK2RwTZ32zTtr1J4MDavi', 1, '', '9THPFvKFOwEXBUFyz5pbovy046ut2EZhLKm1rk2etABFbK2tZICtnQczjSlm', '2016-11-01 06:47:01', '2017-01-14 00:20:57'),
(4, 1, 'Ayaz Ahmed', '0000000000', 1, 'demo02@yahoo.com', '$2y$10$CTBRgeDVNo.G9C7it6PqaeRAIa3gIufrVJkXvsWXvd3SAdcsBiogi', 0, '', 'cp6Zx5aWh4yBKWXan4gJwkBmyJqaSRIeLR0ZxyqMRAglTcpaGHx8KGTYoJA1', '2016-11-01 06:50:47', '2016-11-23 01:40:00'),
(5, 1, 'Ayaz', '1234567890', 1, 'demo03@yahoo.com', '$2y$10$QBkp3o70HUyqacl5A14fxOZajN4evBvSqDLN4q2q5R6TmheJFHOy.', 0, '', 'udw8UNiVyABAF72ZV6dsEsU11ZkZKuNUaJkTe0r9n9KEG8AlAexfKy1aqq5d', '2016-11-08 23:11:09', '2016-11-08 23:53:31'),
(6, 1, 'Ayaz Ahmed', '3008210313', 0, 'demo04@yahoo.com', '$2y$10$h4allGb/98FbO0jm9wKUPebA9UwVbHrlFJuMuHKbPFn3cBV.fMmK2', 0, '', 'SzlnpIFNuQmbRuQl9Lux1Y2JFQGJYVlSuvgTvUbynQk3wjPsp8rSInNHksX0', '2016-11-14 01:58:51', '2016-11-14 02:02:06'),
(7, 2, 'Demo 11 udpated', '13333333', 1, 'demo11@yahoo.com', '$2y$10$3RTLZIqyNWQCMAsYxOn1T.ba.W730Q3obAqd6mLmLOZuvWfsupqhS', 0, '', NULL, '2016-11-16 01:15:52', '2016-11-16 01:23:20'),
(8, 2, 'demo 21', '922100000000', 1, 'demo21@yahoo.com', '$2y$10$A3M0l79rw3BrkF.4H2rQCOMV0yTefOiHN4/5Q2A5Dhc8vUa.GBY5m', 0, '', '5vH3Qi86xfgdIgb4xHLbi0526WBJSMPmhpTaidp14xFn9O4LR5Nm0cOSuGgy', '2016-11-22 23:11:37', '2017-01-02 00:47:37'),
(9, 2, 'Ayaz Ahmed', '00921212121', 1, 'demo22@yahoo.com', '$2y$10$FYX1VSdme3kSvn4/GuyMr.sMzTB8rQ1kIHemWhQndrVgpno5E6/Z6', 0, '', '7turGKLVDWg6i2Eo9EMWsynZPMTluCiYqVlkoOR6FMM3FOFFOzTGUXWjHg1T', '2017-01-01 23:52:36', '2017-01-02 00:03:00'),
(10, 2, 'Ayaz Ahmed SH', '00000223232323', 0, 'demo23@yahoo.com', '$2y$10$kJux6GtktQ8uw/9cN82TCu6aT/7jW6o7MBY7oRv5VcePHP2Ahlu4K', 0, '', '7X5HG3ZqJcjTQ5TdDJvqZ0WE4pLQdIK9AGVmDg6FZiRl2vbJ5VhBSqPX8HN0', '2017-01-02 00:19:55', '2017-01-02 00:30:50'),
(11, 2, 'Test User 02', '923001212345', 1, 'ahmed.ayaz@yahoo.com', '$2y$10$Pk8Llta3N9Yw6svdtBXbaeMWy5MrVKdWwjqf3Z1UBRfXj7HtOo6SW', 0, '', NULL, '2017-01-14 00:20:37', '2017-01-14 00:20:37');

-- --------------------------------------------------------

--
-- Table structure for table `user_favorite`
--

CREATE TABLE `user_favorite` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `listing_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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

CREATE TABLE `user_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(8, 8, 1, NULL, NULL),
(9, 9, 1, NULL, NULL),
(10, 10, 1, NULL, NULL),
(11, 11, 1, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `listings`
--
ALTER TABLE `listings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_favorite`
--
ALTER TABLE `user_favorite`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`,`listing_id`) USING BTREE;

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `emails`
--
ALTER TABLE `emails`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `listings`
--
ALTER TABLE `listings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `user_favorite`
--
ALTER TABLE `user_favorite`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
