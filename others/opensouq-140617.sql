-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2017 at 06:15 AM
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
  `category` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `seq` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(13, 'Others', '', 0, '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
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
  `city` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `seq` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(3) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `city`, `description`, `seq`, `image`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Amman', '', 0, '', 1, '2016-06-02 03:21:47', '0000-00-00 00:00:00'),
(2, 'Irbid', '', 0, '', 1, '2016-06-02 03:21:47', '0000-00-00 00:00:00'),
(3, 'Zarqa', '', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Salt', '', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Madaba', '', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Aqaba', '', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Mafraq', '', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Jerash', '', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Karak', '', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Ajloun', '', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Ramtha', '', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Tafeela', '', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Sahab', '', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Mwaqqar', '', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Dead Sea', '', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'Jordan valley', '', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'Maan', '', 0, '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `listing_id` int(10) UNSIGNED NOT NULL,
  `listing_user_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `offer` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `listing_id`, `listing_user_id`, `user_id`, `description`, `offer`, `created_at`, `updated_at`) VALUES
(1, 17, 3, 3, 'asfsadf', 2, '2017-01-19 01:13:27', '2017-01-19 01:13:27'),
(2, 17, 3, 3, 'asdfsadf', 1, '2017-01-19 01:13:37', '2017-01-19 01:13:37'),
(3, 17, 3, 1, 'ok', 0, '2017-01-20 00:34:15', '2017-01-20 00:34:15'),
(4, 3, 3, 1, 'hi\r\n', 0, '2017-01-20 10:43:15', '2017-01-20 10:43:15'),
(5, 17, 3, 3, 'کیف حال ', 0, '2017-01-25 07:12:04', '2017-01-25 07:12:04'),
(6, 23, 3, 16, 'test', 0, '2017-02-02 05:51:06', '2017-02-02 05:51:06'),
(7, 23, 3, 3, 'Hi', 0, '2017-02-23 00:04:25', '2017-02-23 00:04:25'),
(9, 23, 3, 6, 'Ok', 0, '2017-02-23 00:05:03', '2017-02-23 00:05:03'),
(10, 31, 5, 3, 'test', 0, '2017-02-24 23:50:47', '2017-02-24 23:50:47'),
(11, 31, 5, 4, 'test 2', 0, '2017-02-24 23:51:07', '2017-02-24 23:51:07'),
(12, 17, 3, 3, '', 1000, '2017-02-27 09:46:15', '2017-02-27 09:46:15');

-- --------------------------------------------------------

--
-- Table structure for table `comment_reports`
--

CREATE TABLE `comment_reports` (
  `id` int(10) UNSIGNED NOT NULL,
  `listing_id` int(10) UNSIGNED NOT NULL,
  `comment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comment_reports`
--

INSERT INTO `comment_reports` (`id`, `listing_id`, `comment_id`, `user_id`, `type`, `description`, `created_at`, `updated_at`) VALUES
(12, 27, 12, 23, 0, 'جميل', '2017-02-15 15:51:58', '2017-02-15 15:51:58'),
(13, 32, 22, 21, 0, 'nice', '2017-02-15 17:28:45', '2017-02-15 17:28:45'),
(14, 34, 12, 22, 0, 'hi', '2017-02-16 01:26:26', '2017-02-16 01:26:26'),
(15, 35, 22, 22, 0, 'bejannen', '2017-02-19 18:53:22', '2017-02-19 18:53:22'),
(16, 37, 21, 12, 0, 'hi', '2017-02-23 16:18:52', '2017-02-23 16:18:52'),
(17, 37, 21, 21, 0, 'hi', '2017-02-26 01:36:42', '2017-02-26 01:36:42'),
(18, 23, 7, 3, 1, '', '2017-03-01 01:06:56', '2017-03-01 01:06:56');

-- --------------------------------------------------------

--
-- Table structure for table `emails`
--

CREATE TABLE `emails` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `emails`
--

INSERT INTO `emails` (`id`, `slug`, `title`, `message`, `created_at`, `updated_at`) VALUES
(1, 'signup', 'Welcome to Sooq', 'Dear %user_name%,\n\nWelcome to Sooq\n\n%user_message%\n\n\n\nSupport Team\n', '0000-00-00 00:00:00', '2016-12-21 09:57:03'),
(2, 'forgot-password', 'Password Recovery - Sooq', 'Dear %user_name%,\n\nYou have requested password reset.\n\nClick on the link below to reset your password:\n\n%user_message%\n\nIf you have any query regarding this request, please contact our support team.\n\n\n\nSupport Team', NULL, '2016-12-21 09:57:30'),
(3, 'ad-approved', 'Your Ad is approved', 'Dear %user_name%,  \r\n\r\n%user_message%    \r\n\r\n\r\nSupport Team', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `listings`
--

CREATE TABLE `listings` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `negotiable` tinyint(4) NOT NULL,
  `ad_type` tinyint(4) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `posted_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_id` int(10) UNSIGNED NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data1` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data2` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data3` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data4` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data5` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data6` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data7` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data8` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachement` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `views` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `active` tinyint(4) NOT NULL,
  `status` tinyint(4) DEFAULT '1' COMMENT 'approved or not',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `listings`
--

INSERT INTO `listings` (`id`, `title`, `description`, `price`, `negotiable`, `ad_type`, `subcategory_id`, `posted_by`, `city_id`, `phone`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `latitude`, `longitude`, `youtube`, `attachement`, `views`, `user_id`, `active`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Title here ???????', 'description ???????', '0', 0, 0, 1, '', 1, '', '', '', '', '', '', '', '', '', 100.123456, -100.123456, '', '', 999999, 4, 1, 1, '2016-06-02 08:25:08', '0000-00-00 00:00:00'),
(2, 'asfdsadf', 'Describe what makes yosadfsadfur ad unique', '1111', 0, 0, 2, 'asdfsadfsafd', 2, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 0, 4, 1, 1, '2016-11-02 03:03:40', '2016-11-23 00:44:09'),
(3, 'Test 04', 'Just Testing\r\nDescribe what makes your ad unique', '1000', 1, 0, 7, 'Demo 04', 2, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 0, 3, 1, 1, '2016-11-14 01:59:47', '2016-11-14 01:59:47'),
(4, 'mobile phone ad', 'describ here Describe what makes your ad unique', '1000', 1, 1, 1, 'test name', 1, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 0, 3, 1, 1, '2016-11-16 01:25:33', '2017-01-04 00:30:48'),
(5, 'sdfsadf', 'Describe what makes your ad usadfsadfnique', '1500', 0, 0, 1, 'asdfsd', 1, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 0, 3, 1, 1, '2016-11-22 00:29:31', '2017-01-02 00:42:39'),
(6, 'test 01', 'description for test 01 Describe what makes your ad unique', '1000', 0, 1, 1, 'my seller name', 1, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 2, 3, 1, 1, '2017-01-02 00:32:09', '2017-02-06 01:34:26'),
(7, 'test 02', 'asjl;jsdflkjasl;jfDescribe what makes your ad unique', '2000', 0, 1, 2, 'seller', 1, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 0, 3, 1, 1, '2017-01-02 00:40:38', '2017-01-04 00:23:51'),
(8, 'test 03', 'description of test 03 Describe what makes your ad unique', '3000', 1, 0, 1, 'test seller name ', 1, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 0, 4, 1, 1, '2017-01-03 00:11:40', '2017-01-03 00:11:40'),
(9, 'test 04', 'Describe what makes your ad unique', '4000', 1, 1, 1, 'test 04 user', 1, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 0, 4, 1, 1, '2017-01-03 00:16:54', '2017-01-03 00:16:54'),
(10, 'test', 'aaDescribe what makes your ad unique', '111', 0, 1, 1, 'sdafsad', 1, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 0, 3, 1, 1, '2017-01-09 23:58:26', '2017-01-09 23:58:26'),
(11, 'sadfasdf', 'sadfsadf', '111', 1, 1, 3, 'safsadf', 1, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 2, 3, 1, 1, '2017-01-13 02:48:38', '2017-02-13 05:49:40'),
(12, 'asdfsadf', 'sdafdasf', '1111', 0, 1, 4, 'sfadfsad', 2, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 0, 3, 1, 1, '2017-01-13 02:49:34', '2017-01-13 02:49:34'),
(13, 'asdfsadf', 'sdafdasf', '1111', 0, 1, 4, 'sfadfsad', 2, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 0, 3, 1, 1, '2017-01-13 02:55:20', '2017-01-13 02:55:20'),
(14, 'asdfsadf', 'sdafdasf', '1111', 0, 1, 4, 'sfadfsad', 2, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 0, 3, 1, 1, '2017-01-13 02:55:31', '2017-01-13 02:55:31'),
(15, 'asdfsadf', 'sdafdasf', '1111', 0, 1, 4, 'sfadfsad', 2, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 0, 3, 1, 1, '2017-01-13 02:56:03', '2017-01-13 02:56:03'),
(16, 'asdfsadf', 'sdafdasf', '1111', 0, 1, 4, 'sfadfsad', 2, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 4, 3, 1, 1, '2017-01-13 02:56:19', '2017-02-13 05:35:12'),
(17, 'sdfasadf', 'sadfsadf', '111', 0, 1, 1, 'asdfsad', 1, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 80, 3, 1, 1, '2017-01-13 23:47:37', '2017-03-10 01:43:20'),
(18, 'sadfsad', 'fsadfsddf', '1111', 0, 1, 1, 'asdfsdf', 1, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 2, 3, 1, 1, '2017-01-19 03:10:20', '2017-02-15 09:01:29'),
(19, '??? ????? ??? ?????? ???? ????? ???????', '??? ????????? ?????? ????? ???? ????? -??? ?????? ???? ????? ??????? ? 5?? -???? ?? ???? ????? ???? ???? ??????? ????? ???? ??????? ?? ????? ????????? -????? ??????? ???? ????? ???? ( ????? ??? ????? ????? ) ?? ????????? ?????? -??? ??? ???? 12? -????? ????? ?????-????? ?????-???? ???? ???????-\r\n????? ????? ????? \r\n??????: ??????? ?????? ?? ??? ??????? ????? ????? ???? ???? ????? ?? ????? ????? ??? ?? ?????\r\n\r\n?? ?????? ?????? ?????? ??? ???? ??????? ??????? 0799210800', '2000000', 0, 1, 49, 'آخةشى', 1, '', ' >                                    <span class=', '', '', '', '', '', '', '', 0, 0, '', '', 0, 12, 1, 1, '2017-01-24 07:44:47', '2017-01-24 07:59:13'),
(20, '????? ???? ????? ??????? ????????? ???????', '?? ???? ???? ??????? ????? ??????? ?? ?????? ??? ???? ?????? ????? ???? ?????? ???? ??????? ????????? ??????? ?? ?????? ??????? ????????: ????? ???? ????? ?????? ?????? ?????? ?????? ?????? ?????? ????? ?????? ????? ?????? ????? ??? ?? ????? ?????? ??????? ???? ?????? ????????? ?????? ???? ?????? ?? ????? ?? ??? ???? ????? ?????? ??? ???? ??? ????? ??????? ????? ???? ?? ???? ????? ??????? ??? ?????? ???????? ??? ???????\r\n???? ???? 0795196796 ?? 0799297831\r\nDo you have a swiss watch? we evaluate, trade, sell and purchase swiss watches. we evaluate high-end brands like: patek philippe, chopard, cartier, omega, breitling, longines, movado, louis erard, jaeger lecoultre, piaget, vacheron constantin, IWC, Audemars Piguet, Concord, Corum, Tissot, Louis Vuitton, Versace, Girard-Perregaux, Swatch, Cerruti, Guess, Boss, Hamilton, Seiko, Citizen, Tag Heuer, etc\r\nCall us now to evaluate your swiss watches.\r\n0795196796', '0', 0, 1, 152, 'Abed', 1, '', ' >                                    <span class=', '', '', '', '', '', '', '', 0, 0, '', '', 0, 12, 1, 1, '2017-01-24 07:57:08', '2017-01-27 00:51:11'),
(21, 'sdfsd', 'sdfsdf', '11111', 0, 1, 1, 'asdfsaf', 2, '', ' >                                    <span class=', '', '', '', '', '', '', '', 0, 0, '', '', 12, 3, 1, 1, '2017-01-27 02:06:04', '2017-03-01 02:09:55'),
(22, 'sdfsdf', 'sdfsdfsd', '1111', 0, 1, 2, 'asdfsdaf', 2, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 2, 3, 1, 0, '2017-01-30 02:18:36', '2017-03-01 01:03:06'),
(23, 'AD 1001', 'sfdsdf', '1111', 0, 1, 1, 'sadfdfd', 6, '', '', '', '', '', '', '', '', '', 0, 0, 'https://www.youtube.com/embed/SOxXZB9YF0A', 'https://www.youtube.com/watch?v=SOxXZB9YF0A', 91, 3, 1, 0, '2017-01-30 05:20:37', '2017-03-01 02:11:56'),
(24, 'test 31-1', 'Test Ad', '1111', 0, 1, 10, 'test', 1, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 0, 16, 1, 0, '2017-02-02 05:41:19', '2017-02-02 05:41:19'),
(25, 'Ad 1004', 'kkasdfhskdjfh', '1111', 0, 1, 1, 'test', 10, '', '1991', 'Honda', '', '', '', '', '', '', 0, 0, '', '', 8, 16, 1, 0, '2017-02-09 01:56:33', '2017-02-15 09:05:16'),
(26, 'test ad for cars', 'test ads', '11111', 1, 1, 1, 'test ads', 5, '', '1990', 'Honda', '', '', '', '', '', '', 0, 0, '', '3-5.jpg', 2, 3, 1, 0, '2017-02-13 05:31:44', '2017-03-01 01:03:02'),
(27, 'test ad for cars 2', 'descripiotn', '1111', 0, 1, 1, 'Test', 1, '00923001111111', 'Abarth', 'Toyota', 'Automatic', 'New', 'Pre 1980', 'Gasoline', 'One Day', 'Gasoline', 0, 0, '', '', 4, 3, 1, 0, '2017-02-13 05:32:41', '2017-03-01 02:13:33'),
(28, 'Test 001', 'Description is here', '1000', 0, 1, 1, 'My Test Name ', 1, '0096212312312', 'Ariel', 'Accord', 'Automatic', 'New', 'Pre 1980', 'Gasoline', 'One Day', 'Gasoline', 0, 0, '', '', 24, 5, 1, 1, '2017-02-16 00:28:00', '2017-03-01 02:09:55'),
(29, 'TEST 002', 'Some description here', '2000', 0, 1, 1, 'Something', 1, '000000000000', 'Cadillac', 'none', 'Automatic', 'New', 'Pre 1980', 'Gasoline', 'One Day', 'Gasoline', 0, 0, '', '', 26, 6, 1, 1, '2017-02-16 00:29:10', '2017-03-01 02:10:09'),
(30, 'quick test', 'test', '1', 0, 1, 1, 'Required', 1, '000000000', 'Abarth', 'none', 'Automatic', 'New', 'Pre 1980', 'Gasoline', 'One Day', 'Gasoline', 0, 0, '', '', 50, 5, 1, 1, '2017-02-16 00:32:30', '2017-03-01 02:09:53'),
(31, 'asfd', 'safdsadf', '111', 0, 1, 1, 'Demo 03', 10, '00923001212121', 'Abarth', '', 'Automatic', 'New', 'Pre 1980', 'Gasoline', 'One Day', 'Gasoline', 0, 0, '', '', 75, 5, 1, 1, '2017-02-16 01:05:03', '2017-03-01 02:09:51'),
(32, 'asfdasdf', 'sadfasf', '111', 0, 1, 2, 'Demo 01', 1, '0092111111111', '', '', '', '', '', '', '', '', 0, 0, 'H1gHwfFGtcg', '', 4, 3, 1, 1, '2017-02-23 00:27:13', '2017-03-01 01:03:01'),
(33, 'test ad for messages 01', 'something here', '1000', 0, 1, 3, 'Demo 02', 1, '0096721212121', 'Yamaha', 'New', '', '', '', '', '', '', 0, 0, '', '', 70, 4, 1, 1, '2017-02-24 23:40:08', '2017-02-24 23:58:25'),
(34, 'test for message 02', 'sadfsd', '1', 0, 1, 12, 'Demo 01', 1, '0096271212121', '', '', '', '', '', '', '', '', 0, 0, '', '', 36, 3, 1, 1, '2017-02-24 23:59:42', '2017-03-01 02:13:38');

-- --------------------------------------------------------

--
-- Table structure for table `listing_reports`
--

CREATE TABLE `listing_reports` (
  `id` int(10) UNSIGNED NOT NULL,
  `listing_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `listing_reports`
--

INSERT INTO `listing_reports` (`id`, `listing_id`, `user_id`, `type`, `description`, `created_at`, `updated_at`) VALUES
(12, 27, 23, 0, 'جميل', '2017-02-15 15:51:58', '2017-02-15 15:51:58'),
(13, 32, 21, 0, 'nice', '2017-02-15 17:28:45', '2017-02-15 17:28:45'),
(14, 34, 22, 0, 'hi', '2017-02-16 01:26:26', '2017-02-16 01:26:26'),
(15, 35, 22, 0, 'bejannen', '2017-02-19 18:53:22', '2017-02-19 18:53:22'),
(16, 37, 12, 0, 'hi', '2017-02-23 16:18:52', '2017-02-23 16:18:52'),
(17, 37, 21, 0, 'hi', '2017-02-26 01:36:42', '2017-02-26 01:36:42'),
(18, 34, 3, 1, '', '2017-03-01 01:06:34', '2017-03-01 01:06:34'),
(19, 34, 3, 1, '', '2017-03-01 01:06:39', '2017-03-01 01:06:39'),
(20, 23, 3, 1, '', '2017-03-01 01:06:47', '2017-03-01 01:06:47');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `listing_id` int(10) UNSIGNED NOT NULL,
  `listing_user_id` int(11) NOT NULL,
  `other_user_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender` tinyint(1) NOT NULL,
  `is_new` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `listing_id`, `listing_user_id`, `other_user_id`, `user_id`, `description`, `sender`, `is_new`, `created_at`, `updated_at`) VALUES
(1, 17, 3, 0, 3, 'asfsadf', 2, 0, '2017-01-19 01:13:27', '2017-02-25 06:24:47'),
(2, 17, 3, 0, 3, 'asdfsadf', 1, 0, '2017-01-19 01:13:37', '2017-02-25 06:24:47'),
(3, 3, 3, 0, 1, 'hi\r\n', 2, 1, '2017-01-20 10:43:38', '2017-01-20 10:43:38'),
(4, 23, 3, 0, 16, 'Hi there', 2, 1, '2017-02-02 05:52:59', '2017-02-02 05:52:59'),
(5, 23, 3, 0, 16, 'Helloooo', 1, 1, '2017-02-02 05:53:22', '2017-02-02 05:53:22'),
(6, 23, 3, 0, 16, 'Ok\r\n\r\nGot it', 2, 1, '2017-02-02 05:59:26', '2017-02-02 05:59:26'),
(7, 28, 5, 0, 6, 'Hello Sir', 2, 0, '2017-02-16 01:06:49', '2017-02-27 00:01:23'),
(8, 28, 5, 0, 6, 'Hi Sir', 1, 0, '2017-02-16 01:07:16', '2017-02-27 00:01:23'),
(9, 29, 6, 3, 3, 'test', 2, 0, '2017-02-22 23:35:24', '2017-02-25 06:24:47'),
(10, 29, 6, 3, 3, 'test 2', 2, 0, '2017-02-22 23:35:35', '2017-02-25 06:24:47'),
(11, 28, 5, 3, 3, 'test ', 2, 0, '2017-02-22 23:35:50', '2017-02-25 06:24:47'),
(13, 29, 6, 3, 6, 'test 3', 1, 0, '2017-02-22 23:47:56', '2017-02-27 00:01:23'),
(14, 29, 6, 3, 6, 'test 4', 1, 0, '2017-02-22 23:48:02', '2017-02-27 00:01:23'),
(15, 29, 6, 3, 3, 'test 5', 2, 0, '2017-02-22 23:49:45', '2017-02-25 06:24:47'),
(16, 29, 6, 3, 6, 'Hi ', 1, 0, '2017-02-22 23:52:44', '2017-02-27 00:01:23'),
(17, 29, 6, 3, 3, 'Hi again', 2, 0, '2017-02-22 23:53:35', '2017-02-25 06:24:47'),
(18, 29, 6, 3, 6, 'Sorry my call', 1, 0, '2017-02-22 23:54:01', '2017-02-27 00:01:23'),
(19, 29, 6, 3, 6, 'Hi brother', 1, 0, '2017-02-22 23:57:01', '2017-02-27 00:01:23'),
(20, 29, 6, 3, 3, 'what brother?', 2, 0, '2017-02-22 23:57:32', '2017-02-25 06:24:47'),
(21, 29, 6, 3, 6, 'Hi', 2, 0, '2017-02-23 00:02:18', '2017-02-27 00:01:23'),
(22, 29, 6, 3, 3, 'Hi 2', 1, 0, '2017-02-23 00:02:41', '2017-02-25 06:24:47'),
(23, 33, 4, 3, 3, 'hello there', 2, 0, '2017-02-24 23:40:26', '2017-02-25 06:24:47'),
(24, 34, 3, 5, 5, 'interested', 2, 0, '2017-02-25 00:00:01', '2017-02-25 06:28:40'),
(25, 34, 3, 5, 3, 'reply 01', 2, 0, '2017-02-25 00:01:21', '2017-02-25 06:24:47'),
(26, 34, 3, 5, 3, 'sadfsaf', 2, 0, '2017-02-25 00:02:41', '2017-02-25 06:24:47'),
(27, 34, 3, 5, 5, 'hi\r\n', 1, 0, '2017-02-25 06:25:25', '2017-02-25 06:28:40'),
(28, 34, 3, 5, 5, 'Hi', 1, 0, '2017-02-25 06:27:42', '2017-02-25 06:28:40'),
(29, 34, 3, 5, 3, 'Hi\r\n', 2, 1, '2017-02-25 06:28:48', '2017-02-25 06:28:48'),
(30, 28, 5, 3, 5, 'Hi', 2, 1, '2017-02-25 06:29:28', '2017-02-25 06:29:28');

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
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_new` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `description`, `is_new`, `created_at`, `updated_at`) VALUES
(1, 5, 'asfsadf', 0, '2017-01-19 01:13:27', '2017-02-25 00:36:36'),
(2, 5, 'asdfsadf', 0, '2017-01-19 01:13:37', '2017-02-25 00:36:36'),
(3, 1, 'hi\r\n', 1, '2017-01-20 10:43:38', '2017-01-20 10:43:38'),
(4, 16, 'Hi there', 1, '2017-02-02 05:52:59', '2017-02-02 05:52:59'),
(5, 16, 'Helloooo', 1, '2017-02-02 05:53:22', '2017-02-02 05:53:22'),
(6, 16, 'Ok\r\n\r\nGot it', 1, '2017-02-02 05:59:26', '2017-02-02 05:59:26'),
(7, 6, 'Hello Sir', 0, '2017-02-16 01:06:49', '2017-02-27 01:13:05'),
(8, 6, 'Hi Sir', 0, '2017-02-16 01:07:16', '2017-02-27 01:13:05'),
(9, 3, 'test', 0, '2017-02-22 23:35:24', '2017-02-25 06:29:32'),
(10, 3, 'test 2', 0, '2017-02-22 23:35:35', '2017-02-25 06:29:32'),
(11, 3, 'test ', 0, '2017-02-22 23:35:50', '2017-02-25 06:29:32'),
(13, 6, 'test 3', 0, '2017-02-22 23:47:56', '2017-02-27 01:13:05'),
(14, 6, 'test 4', 0, '2017-02-22 23:48:02', '2017-02-27 01:13:05'),
(15, 3, 'test 5', 0, '2017-02-22 23:49:45', '2017-02-25 06:29:32'),
(16, 6, 'Hi ', 0, '2017-02-22 23:52:44', '2017-02-27 01:13:05'),
(17, 3, 'Hi again', 0, '2017-02-22 23:53:35', '2017-02-25 06:29:32'),
(18, 6, 'Sorry my call', 0, '2017-02-22 23:54:01', '2017-02-27 01:13:05'),
(19, 6, 'Hi brother', 0, '2017-02-22 23:57:01', '2017-02-27 01:13:05'),
(20, 3, 'what brother?', 0, '2017-02-22 23:57:32', '2017-02-25 06:29:32'),
(21, 6, 'Hi', 0, '2017-02-23 00:02:18', '2017-02-27 01:13:05'),
(22, 3, 'Hi 2', 0, '2017-02-23 00:02:41', '2017-02-25 06:29:32'),
(23, 3, 'You have a new message', 0, '2017-02-25 06:27:42', '2017-02-25 06:29:32'),
(24, 5, 'You have a new message', 1, '2017-02-25 06:28:48', '2017-02-25 06:28:48'),
(25, 5, 'You have a new message', 1, '2017-02-25 06:29:28', '2017-02-25 06:29:28');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `slug`, `title`, `meta_description`, `description`, `active`, `created_at`, `updated_at`) VALUES
(1, 'test', 'test title', 'meta description', '<h1>test page</h1><p>html is here</p><a href=#>some links here</a>', 1, NULL, '2017-01-26 01:33:55'),
(2, 'page-2', 'page 2 ', 'something', 'sadlfjasljkfdsa;dfjsa\r\nsdf\r\nsadf\r\nsa\r\nfd\r\nsa\r\ndf\r\nsa\r\ndf\r\n\r\nsdaf\r\n\r\nsaf\r\n\r\nsa\r\ndf\r\nsadf\r\n\r\ns\r\n\r\nfsd\r\n', 1, '2017-01-26 01:29:10', '2017-01-26 01:29:10'),
(3, 'page-3', 'page 3', 'something', 'sadlfjasljkfdsa;dfjsa\r\nsdf\r\nsadf\r\nsa\r\nfd\r\nsa\r\ndf\r\nsa\r\ndf\r\n\r\nsdaf\r\n\r\nsaf\r\n\r\nsa\r\ndf\r\nsadf\r\n\r\ns\r\n\r\nfsd\r\n', 1, '2017-01-26 01:31:55', '2017-01-26 01:32:18');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('test01@yahoo.com', 'qhiT7icyXyOUCG8r5yaAqfu4XR28kSk9ZPM7EOgXZnifhHtCH4NjsqUr7QKBXHTw', '2017-01-30 10:02:10'),
('demo01@yahoo.com', '0m0vi6J6nkkZClRX7B5UdIaceAkyJYcBSJblpDfBEB4ZQ5XYvwyXZaQwwQQf8TBR', '2017-01-30 10:02:18');

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` int(10) UNSIGNED NOT NULL,
  `listing_id` int(11) NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(10, 18, '18-image-1000x20000.jpg', '2017-01-19 03:10:21', '2017-01-19 03:10:21'),
(11, 19, '19-1a754c68f8d7ae96d7ffd1d1.jpg.jpg', '2017-01-24 07:44:47', '2017-01-24 07:44:47'),
(12, 20, '20-omega-seamaster-300-automatic-black-dial-men_s-watch-23330412101001.jpg', '2017-01-24 07:57:08', '2017-01-24 07:57:08'),
(13, 23, '23-banner.jpg', '2017-01-30 05:20:37', '2017-01-30 05:20:37'),
(14, 23, '23-DSC_1468.jpg', '2017-01-30 05:20:38', '2017-01-30 05:20:38'),
(15, 23, '23-DSC_1472.jpg', '2017-01-30 05:20:38', '2017-01-30 05:20:38'),
(16, 23, '23-DSC_1497.jpg', '2017-01-30 05:20:38', '2017-01-30 05:20:38'),
(17, 24, '24-image-500x500.jpg', '2017-02-02 05:41:19', '2017-02-02 05:41:19'),
(18, 24, '24-image-1000x1000.jpg', '2017-02-02 05:41:19', '2017-02-02 05:41:19'),
(19, 24, '24-image-1000x20000.jpg', '2017-02-02 05:41:19', '2017-02-02 05:41:19'),
(20, 27, '27-4.jpg', '2017-02-13 05:32:42', '2017-02-13 05:32:42'),
(21, 27, '27-5.jpg', '2017-02-13 05:32:42', '2017-02-13 05:32:42'),
(22, 27, '27-6.jpg', '2017-02-13 05:32:42', '2017-02-13 05:32:42'),
(23, 28, '28-3.jpg', '2017-02-16 00:28:00', '2017-02-16 00:28:00'),
(24, 28, '28-4.jpg', '2017-02-16 00:28:01', '2017-02-16 00:28:01'),
(25, 28, '28-5.jpg', '2017-02-16 00:28:01', '2017-02-16 00:28:01'),
(26, 29, '29-1.jpg', '2017-02-16 00:29:10', '2017-02-16 00:29:10'),
(27, 29, '29-2.jpg', '2017-02-16 00:29:10', '2017-02-16 00:29:10'),
(28, 29, '29-3.jpg', '2017-02-16 00:29:10', '2017-02-16 00:29:10');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `sub_category` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `seq` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data1` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data2` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data3` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data4` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data5` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data6` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data7` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data8` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details1` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details2` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details3` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details4` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details5` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details6` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details7` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details8` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `sub_category`, `description`, `seq`, `image`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `details1`, `details2`, `details3`, `details4`, `details5`, `details6`, `details7`, `details8`, `active`, `created_at`, `updated_at`) VALUES
(1, 1, 'Cars For Sale', '', 0, 'fa-car', 'Brand', 'Model', 'Transmission', 'Condition', 'Year of Production', 'Fuel Type', 'Rental Period', 'Fuel Type', 'Abarth, Acura, Arash, Alfa Romeo, Ariel, Ascari, Audi, Bentley, Bowler, BMW, Bristol, Brooke, Bugatti, Buick, Cadillac, Caparo, Caterham, Chery, Chevrolet, Chevron, Chrysler, Citroen, Corvette, Dacia, Daihatsu, Datsun, Dodge, Donkervoort, Ferrari, Fiat, Fisker, Ford, FPV, Ginetta, GMC, Hennessey, Holden, Honda, Hyundai, Infiniti, Isuzu, Jaguar, Jeep, joss, Kamaz, kia, Koenigsegg, KTM, Lamborghini, Lancia, Land Rover, Lexus, Lister, Lincoln, Lotus, Mahindra , MarutiSuzuki, Maserati, Mastretta, Mazda, McLaren, Mercedes, MG Motor, Mini, Mitsubishi, Morgan, Nissan, Noble, Opel, Pagani, Perodua, Peugeot, Porsche, Proton, Ram, Range Rover,  Renault, Roewe, Rolls-Royce, RUF, Saleen, Saab, Scion, Seat, Skoda, Smart, SRT, SsangYong, Subaru, Superformance, Suzuki, Tata, Tesla, Toyota, TVR, Ultima, Vauxhall, Venturi, Volkswagen, Volvo, Westfield, Wiesmann, Zenvo, Daewoo, De Tomaso, Others', '', 'Automatic, Manual\r\n', 'New, Used\r\n', 'Pre 1980, 1980, 1981, 1982, 1983, 1984, 1985, 1986, 1987, 1988, 1989, 1990, 1991, 1992, 1993, 1994, 1995, 1996, 1997, 1998, 1999, 2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017', 'Gasoline, Diesel, Hybrid, Electrical, Others', 'One Day, One Week, One Month, One Years, Others', 'Gasoline, Diesel, Hybrid, Electrical, Others', 1, '0000-00-00 00:00:00', '2017-02-11 23:15:50'),
(2, 1, 'Cars For Rent', '', 0, 'fa-taxi', 'Brand', 'Model', 'Year of Production', '', '', '', '', '', 'Abarth, Acura, Arash, Alfa Romeo, Ariel, Ascari, Audi, Bentley, Bowler, BMW, Bristol, Brooke, Bugatti, Buick, Cadillac, Caparo, Caterham, Chery, Chevrolet, Chevron, Chrysler, Citroen, Corvette, Dacia, Daihatsu, Datsun, Dodge, Donkervoort, Ferrari, Fiat, Fisker, Ford, FPV, Ginetta, GMC, Hennessey, Holden, Honda, Hyundai, Infiniti, Isuzu, Jaguar, Jeep, joss, Kamaz, kia, Koenigsegg, KTM, Lamborghini, Lancia, Land Rover, Lexus, Lister, Lincoln, Lotus, Mahindra , MarutiSuzuki, Maserati, Mastretta, Mazda, McLaren, Mercedes, MG Motor, Mini, Mitsubishi, Morgan, Nissan, Noble, Opel, Pagani, Perodua, Peugeot, Porsche, Proton, Ram, Range Rover,  Renault, Roewe, Rolls-Royce, RUF, Saleen, Saab, Scion, Seat, Skoda, Smart, SRT, SsangYong, Subaru, Superformance, Suzuki, Tata, Tesla, Toyota, TVR, Ultima, Vauxhall, Venturi, Volkswagen, Volvo, Westfield, Wiesmann, Zenvo, Daewoo, De Tomaso, Others', '', 'Pre 1980, 1980, 1981, 1982, 1983, 1984, 1985, 1986, 1987, 1988, 1989, 1990, 1991, 1992, 1993, 1994, 1995, 1996, 1997, 1998, 1999, 2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-11 23:08:26'),
(3, 1, 'Motorcycles For Sale', '', 0, 'fa-motorcycle', 'Brand', 'Condition', '', '', '', '', '', '', 'Yamaha, Honda, Ducati, Harley-Davidson, Kawasaki, Suzuki, BMW, Hyosung, Benelli, Norton, Lamborghini, Honda, Kawasaki, Moto Guzzi, Others', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-11 23:06:31'),
(4, 1, 'VIP Car Plates', '', 0, 'fa-ticket', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-11 22:58:46'),
(5, 1, 'Parts - Accessories', '', 0, 'fa-gears', 'Condition', '', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-11 22:58:22'),
(6, 1, 'Wheels - Rims', '', 0, 'fa-circle-o', 'Condition', '', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-11 22:57:40'),
(7, 1, 'Trucks - Heavy Machinery', '', 0, 'fa-truck', 'Type', 'Condition', '', '', '', '', '', '', 'Agricultural tractor, Bulldozer, Tractor, Harvester, Crane, Drilling machine, Excavator, Forklift, Asphalt Paver, Truck, Lorry, Caravan, Bus, Van, Others\r\n', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-11 22:56:39'),
(8, 1, 'Boats - Yachts', '', 0, 'fa-ship', 'Type', 'Condition', '', '', '', '', '', '', 'Inflatables, Fishing Boats, Sailboats, Jet Ski, Personal Watercrafts, Yachts, Others', 'Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-11 22:42:15'),
(9, 1, 'Other Vehicles', '', 0, 'fa-subway', 'Condition', '', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-11 22:32:11'),
(10, 2, 'Mobiles', '', 0, 'fa-mobile', 'Brand', 'Condition', '', '', '', '', '', '', 'SAMSUNG, APPLE, MICROSOFT, NOKIA, SONY, LG, HTC, MOTOROLA, HUAWEI, LENOVO, XIAOMI, GOOGLE, ACER, ASUS, OPPO, ONEPLUS, MEIZU, BLACKBERRY, ALCATEL, ZTE, TOSHIBA, VODAFONE, GIGABYTE, XOLO, LAVA, MICROMAX, BLU, GIONEE, VIVO, LEECO, PANASONIC, HP\r\nYU, VERYKOOL, MAXWEST, PLUM, Others\r\n', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-11 22:29:38'),
(11, 2, 'Tablets', '', 0, 'fa-tablet', 'Brand', 'Condition', '', '', '', '', '', '', 'Amazon, Apple, Asus, Huawei, HTC, Microsoft, Lenovo, Nvidia, Samsung, Others', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-11 22:25:49'),
(12, 2, 'VIP Phone Numbers', '', 0, 'fa-hashtag', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-11 22:20:26'),
(13, 2, 'Mobile Tablet Accessories', '', 0, 'fa-headphones', 'Type', 'Condition', '', '', '', '', '', '', 'Batteries, Chargers & Cables, Earbuds, Headsets, Covers & Jackets, Selfie Sticks, Others', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-11 22:19:50'),
(14, 2, 'Others - Mobile - Tablet', '', 0, 'fa-desktop', 'Type', 'Condition', '', '', '', '', '', '', 'Spare parts, Memory Cards, Bluetooth, Others', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-11 22:14:00'),
(15, 3, 'Consoles', '', 0, 'fa-television', 'Type', 'Condition', '', '', '', '', '', '', 'Playstation One, Playstation Two, Playstation Three, Playstation Four, Sony PSP, Xbox One, Xbox 360, Nintendo Switch, Nintendo 2DS, Nintendo 3DS, Gaming PCS, Others', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-11 22:09:09'),
(16, 3, 'Video Games', '', 0, 'fa-play-circle', 'Condition', '', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-11 22:04:22'),
(17, 3, 'Accessories - Replacement Parts', '', 0, 'fa-random', 'Type', 'Condition', '', '', '', '', '', '', 'Controllers, Racing Wheel, Joystick, Headsets, Headphones, Virtual Reality 3d Glasses, Gaming Mouse, Keyboards, Memory, Hard Desk, USB, Movement Sensors, Others', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-11 22:03:34'),
(18, 3, 'Gaming Cards', '', 0, 'fa-puzzle-piece', 'Type', '', '', '', '', '', '', '', 'Google Play, Itunes, Playstation, Skype, Xbox, Steam, Others', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-11 21:53:56'),
(19, 3, 'Accounts and Characters', '', 0, 'fa-user-circle', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-11 21:51:37'),
(20, 3, 'Action Figures', '', 0, 'fa-users', 'Condition', '', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-11 21:50:53'),
(21, 3, 'Others - Gaming', '', 0, 'fa-gamepad', 'Condition', '', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-11 21:50:10'),
(22, 4, 'Laptops - Computers', '', 0, 'fa-laptop', 'Brand', 'Condition', '', '', '', '', '', '', 'Acer, Apple, Asus, Dell, Fujitsu, Huawei, HP, Lenovo, LG, Panasonic, Samsung, Sharp, Toshiba, Vestel, Via, Vizio, Others', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-11 21:49:07'),
(23, 4, 'TVs - Screens', '', 0, 'fa-television', 'Brand', 'Condition', '', '', '', '', '', '', 'Acer, Beko, Condor, Daewoo, General Electric, GoldStar, Haier, Hitachi, JVC, LG, Mitsubishi, Motorola, NEC, Nikkai, Nokia, Nordmende, Orion, Panasonic, Philips, Samsung, Sanyo, Sony, Tiger, Toshiba, Westinghouse, Zanussi, Others', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-11 21:44:22'),
(24, 4, 'Speakers - Amplifiers', '', 0, 'fa-description', 'Brand', 'Condition', '', '', '', '', '', '', 'Blaupunkt, Clarion,  Harman Kardon, JVC, Kenwood, LG, Panasonic, Pioneer, Samsung, Sanyo, Sony, Others', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-11 21:34:11'),
(25, 4, 'Stereo - Radios', '', 0, 'fa-soundcloud', 'Brand', 'Condition', '', '', '', '', '', '', 'Blaupunkt, Clarion,  Harman Kardon, JVC, Kenwood, LG, Panasonic, Pioneer, Samsung, Sanyo, Sony, Others', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-11 21:33:01'),
(26, 4, 'Receivers - DVD Player', '', 0, 'fa-eject', 'Brand', 'Condition', '', '', '', '', '', '', 'Beko, LG, Panasonic, Philips, Pioneer, Samsung, Sanyo, Siemens, Sony, Toshiba, Tiger, Others', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-11 21:27:51'),
(27, 4, 'Modems - Routers', '', 0, 'fa-wifi', 'Condition', '', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-11 21:20:11'),
(28, 4, 'Cameras - Photography', '', 0, 'fa-camera-retro', 'Brand', 'Condition', '', '', '', '', '', '', 'Canon, Fujifilm, JVC, Kodac, KodaK, Nikon, Olympus, Panasonic, Ricoh, Samsung, Sigma, Sony, Vivitar, Others', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-11 21:19:30'),
(29, 4, 'Air Conditioners - Fans', '', 0, 'fa-superpowers', 'Brand', 'Condition', '', '', '', '', '', '', 'Adobe Aire, Beko, Bosch, Daewoo, Electrolux, Frigidaire, Ge, Goldstar, Gree, Haier, Hitachi, Kenmore, Lg, Maytag, Panasonic,   Samsung, Sharp, Whirlpool, White Westinghouse, York, Others', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-11 21:12:12'),
(30, 4, 'Refrigerators - Freezers', '', 0, 'fa-external-link', 'Brand', 'Condition', '', '', '', '', '', '', 'Beko, Bosch, Daewoo, Frigidaire, GE, Haier, Indecit, Kenmore, LG, Magic Chef, Siemens, Samsung, Sanyo, Whirlpool, Others', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-11 21:03:04'),
(31, 4, 'Washing Machines - Dryers', '', 0, 'fa-filter', 'Brand', 'Condition', '', '', '', '', '', '', 'AEG, Ariston, Beko, Bosch, Candy, Daewoo, Electrolux, Frigidaire, Haier, Hitachi, Hoover, Indesit, LG, Samsung, Siemens, Whirlpool, Zanussi, Others', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-11 20:50:26'),
(32, 4, 'Ovens - Microwaves', '', 0, 'fa-fire', 'Condition', '', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-11 19:05:01'),
(33, 4, 'Water Coolers and Filters', '', 0, 'fa-shower', 'Condition', '', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-11 19:04:13'),
(34, 4, 'Small Appliances', '', 0, 'fa-shopping-basket', 'Condition', '', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-11 19:03:19'),
(35, 4, 'Wearable Technology', '', 0, 'fa-hand-paper-o', 'Type', 'Condition', '', '', '', '', '', '', 'Smart Watches, 3D Glasses, Smart Bangles, Others', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-11 19:02:19'),
(36, 4, 'Scooters - Hoverboards', '', 0, 'fa-bicycle', 'Condition', '', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-11 19:00:07'),
(37, 4, 'Electrical & Gas heaters- Heaters', '', 0, 'fa-houzz', 'Condition', '', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-11 18:58:55'),
(38, 4, 'Water Heaters', '', 0, 'fa-steam', 'Condition', '', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-11 18:54:48'),
(39, 4, 'Vacuum Cleaner', '', 0, 'fa-pied-piper', 'Condition', '', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-11 18:52:12'),
(40, 4, 'Printers - Fax - Projectors', '', 0, 'fa-print', 'Type', 'Condition', '', '', '', '', '', '', 'Printer, Scanner, Multi Purposes, Faxes, Projectors, Others', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-11 18:51:18'),
(41, 4, 'Home phones - Wireless', '', 0, 'fa-phone', 'Condition', '', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-11 18:48:47'),
(42, 4, 'Spareparts - Accessories', '', 0, 'fa-music', 'Condition', '', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-11 18:47:55'),
(43, 4, 'Other Electronics - Appliances', '', 0, 'fa-tty', 'Condition', '', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-11 18:46:42'),
(44, 5, 'Apartments', '', 0, 'fa-home', 'Number of Rooms', 'Number of Bathrooms', 'Floor', 'Age', '', '', '', '', 'Studio, One Room, Two Rooms, Three Rooms, Four Rooms, More than Four Rooms', 'One Bathroom, Two Bathrooms, Three Bathrooms, Four Bathrooms, Five Bathrooms, More Than Five Bathrooms', 'Basement, Ground Floor, 1st Floor, 2nd Floor, 3rd Floor, 4th Floor, 5th Floor, Higher than 5th Floor', '0-1 Year, 1-3 Years, 3-7 Years, 7-12 Years, More than 12 Years', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-11 14:49:13'),
(45, 5, 'Villas - Palaces', '', 0, 'fa-empire', 'How Old It is?', 'Number of Rooms', 'Number of Bathrooms', 'Number of Floors', 'Has Swimming Pool', '', '', '', '0-3 Years, 3-5 Years, 5-9 Years, 9-12 Years, More than 12 Years', '3 Rooms, 4 Rooms, 5 Rooms, 6 Rooms, More than 6 Rooms', 'One Bathroom, Two Bathrooms, Three Bathrooms, Four Bathroom, Five Bathrooms, More than 5 Bathrooms', 'One Floor, Two Floors, Two Floors & Roof, Three Floors, Four Floors ', 'Yes, No', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-11 14:50:02'),
(46, 5, 'Commercial', '', 0, 'fa-ioxhost', 'Type', '', '', '', '', '', '', '', 'Office, Store, Warehouse, Complex, Hotel, Others', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-11 14:37:16'),
(47, 5, 'Rooms', '', 0, 'fa-simplybuilt', 'Furnished Or Not?', '', '', '', '', '', '', '', 'Furnished, None Furnished', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-11 14:35:15'),
(48, 5, 'Whole Building', '', 0, 'fa-building', 'Rent or Sale', 'Number of Floors', 'Age', '', '', '', '', '', 'Sale, Rent', 'One Floor, Two Floors, Three Floors, 4 Floors, 5 Floors, More than 5 Floors', '0-3 Years, 3-5 Years, 5-7 Years, 7-12 Years, More than 12 Years', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-11 14:51:08'),
(49, 5, 'Land', '', 0, 'fa-delicious', 'Type of Land', 'For Rent Or Sale', 'Area in Square Meters', '', '', '', '', '', 'Residential, Commercial, Industrial, Agricultural, Multi Purposes, Others', 'Sale, Rent, Investment, Others ', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-11 14:59:37'),
(50, 5, 'Vacation Homes', '', 0, 'fa-hotel', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-11 14:31:10'),
(51, 5, 'Other Real Estate', '', 0, 'fa-renren', 'Age ', '', '', '', '', '', '', '', '0-3 Years, 3-5 Years, 5-7 Years, 7-12 Years, More than 12 Years', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-11 14:52:13'),
(52, 6, 'Furniture', '', 0, 'fa-bed', 'Type of Furniture', 'Condition', '', '', '', '', '', '', 'Chairs, Canapé, sofa, Bed, Sofa Bed, Infant Bed, Tables, Dining Tables, TV Tables, Cabinetry, Chest of Drawers, Storage, Bedroom Sets, Dining Sets, Living Room Sets, Others', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-10 04:28:37'),
(53, 6, 'Home Decor - Furnishings', '', 0, 'fa-lightbulb-o', 'Type of Furnishings', 'Condition', '', '', '', '', '', '', 'Rugs and carpets‎, Blankets, Curtains, Cushions, Wallpapers, Candles, Mirror, Glass, Table Lamps, Vases, Bed Sheets, Mattresses, Others', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-10 04:38:01'),
(54, 6, 'Kitchenware', '', 0, 'fa-cutlery', 'Condition', '', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-10 04:16:28'),
(55, 6, 'Houseware', '', 0, 'fa-shopping-basket', 'Condition', '', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-10 04:16:00'),
(56, 6, 'bathrooms', '', 0, 'fa-bathtub', 'Brand', 'Condition', '', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-10 04:15:28'),
(57, 6, 'Other Furniture-Decor', '', 0, 'fa-adjust', 'Condition', '', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-10 04:14:56'),
(58, 7, 'Clothes', '', 0, 'fa-child', 'Brand', 'Condition', '', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-10 04:13:34'),
(59, 7, 'Women Shoes', '', 0, 'fa-female', 'Brand', 'Condition', '', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-10 04:14:03'),
(60, 7, 'Watches', '', 0, 'fa-clock-o', 'Brand', 'Model', 'Manufacture Date', 'Condition', 'Mechanism', 'Case Material', 'Strap Material', 'Box & Guarantee', 'Accurist, Adamo, Adriatica, A.L.B Atelier Le Brézéguet, Alpina Watches, American Waltham, Andreas Strehler, Anonimo, Ansonia, Apache Pine, Apple Inc., Armand Nicolet, Armani, Armitron, John Arnold, ASUAG, Audemars Piguet, Ateliers deMonaco, Backes & Strauss, Baume et Mercier, Bausele, Ball Watch Company, Webb C. Ball, Bedat & Co, Bell & Ross, Benetton Group, Benrus, Binda Group, Blancpain, Blumarine, Ernest Borel, Bovet Fleurier, Edouard Bovet, Bovet, Abraham-Louis Breguet, Breguet, Breil, Breitling, Bremont Watch Company, Gustav Bruemmer, Buccellati, Bulgari, Bulova, Cartier, Casio, Cecil Purnell, Certina, Charriol, Chopard, Christian Bernard, Christian Jacques, Christopher Ward, Chronoswiss, Chung nam group, Chanel, Citizen Watch Co., Corum, Cyma Watches, Cobra, Concord watch, Czapek & Cie, Dakota Watch Company, Damasko, Damiani, George Daniels, Aaron Lufkin Dennison, Edward John Dent, Dior, D. Dornblüth & Sohn, Doxa S.A., Dreffa, Dubey Schaldenbrand, Roger Dubuis, Dueber-Hampden, Thomas Earnshaw, Ebel, Edox, Elgin, Emporio Armani, EPOS, Endura Watch Factory, ETA SA, ESPRIT, Eterna, Fastrack, A. Favre & Fils, Carlo Ferrara, Festina, Favre-Leuba, Fendi, Fila, Fortis Uhren, Frédérique Constant, Fossil, Folli Follie, F. P. Journe, Charles Frodsham, Fullspot, Gallet & Co., Garmin, Léon Gallet, Romain Gauthier, Geneva Watch Group, General Watch Co, Louis George, Girard-Perregaux, Glashütte Original, Glycine Watch, George Graham, Greubel Forsey, Moritz Grossmann, Grovana Watch, Gruen Watch Co., G-Shock, GUB, Guess Watches Co., Hamilton Watch Company, Hangzhou Watch Company, Hanhart, Hanowa, John Harrison, Harry Winston, Hermès, HMT Limited, Hublot, Ikepod, Illinois Watch Company, Ingersoll, International Watch Co IWC, Invicta Watch Group, Jaeger-LeCoultre, Pierre Jaquet-Droz, Georg Jensen, Jacob & Co, Jean Perret, F.P. Journe, Jowissa, Junghans, Jules Jurgensen, Jorg Gray, Kienzle, Louis Moinet, Lancashire Watch Company, Lang & Heyne, A. Lange & Söhne, Jean Lassale, Leijona watch, Linde Werdelin, Lip, Peter Litherland, Longines, Minsk Watch Plant (Luch), Luminox, Lorus, Maitres du Temps, Manistee Watch, Manufacture royale, Marc Ecko, Mathey-Tissot, Maurice Lacroix, MB&F, MeisterSinger, Mido, Minerva, Louis Moinet, Molnija, Mondaine, Montblanc, Montegrappa, Morellato Group, Moschino, Mossimo, Movado, Franck Muller, Michele, Ulysse Nardin, Newgate Watches, Nivada, Nixon Watches, Nomos Glashütte, Nike Inc., Ollech & Wajs, Omega SA, Orfina, Orient Watch Co, Oris, Panerai, Parmigiani Fleurier, Parnis Watches, Antoni Patek, Patek Philippe & Co., Perrelet, Pequignet, Philip Zepter, Piaget SA, Adrien Philippe, Henry Pitkin, Poljot, Prada, Pulsar (watch), Rado, David Ramsay, Razer Inc., Raymond Weil, Regina, Reguladora, Ressence, Revue Thommen, Richard Mille, Roamer, Rodania, Rolex, Ronda AG, Rotary Watches, Daniel Roth, Relic, Sandoz watches, Sector, Seiko, Seikosha, Sekonda, Shinola, Skagen Designs, Alexander Shorokhoff, Slava watches, Roger W. Smith, Solvil et Titus, Speake-Marin, Sonata, Sprout Watches, Stowa, Stührling, Suunto, Swatch Group, TAG Heuer, TechnoMarine, Technos, Seth Thomas, Tianjin Sea-Gull, Timex Group, Tissot, Titan Industries, Thomas Tompion, Tommy Hilfiger, Tourneau, ToyWatch, Traser, Tudor, Tutima, Tiffany & Co, Ulysse Nardin, Universal Genève, Urwerk, Vacheron Constantin, Valjoux, Versace, Victorinox, Vostok watches, Waltham Watch Company, Christopher Ward, Wenger, West End Watch Co, Joseph Windmills, Xezo, Yema, Zenith, Zeno-Watch Basel, Zodiac Watches, Others', 'Classic, Casual, Sport, Dress', 'Pre 1920, 1920-1969, 1970-1999, 2000-Now', 'New, Used', 'Automatic, Manual, Quartz, Solar, Others', 'Stainless Steel, Solid Gold, Platinum, Titanium, Nickel, Aluminum, Plastic, Others', 'Leather, Solid Gold, Stainless Steel, Nickel, Titanium, Platinum, Rubber, Plastic', 'Yes, No', 1, '0000-00-00 00:00:00', '2017-02-08 22:34:40'),
(61, 7, 'Accessories - Jewelry', '', 0, 'fa-diamond', 'Type of Jewelry', 'Condition', '', '', '', '', '', '', 'Earring, Hairpins, Necklaces. Bracelets, Cufflinks, Rings, Engagement Rings, Wedding Rings, Brooches, Prayer beads, Rosary beads, Medallions, Pendants, Diamond Sets, Gem Stones, Others', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-10 04:12:05'),
(62, 7, 'Bags', '', 0, 'fa-briefcase', 'Brand', 'Condition', '', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 22:41:24'),
(63, 7, 'Perfumes - Incense', '', 0, 'fa-lemon-o', 'Brand', 'Condition', '', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 22:40:48'),
(64, 7, 'Personal Care Devices', '', 0, 'fa-tint', 'Brand', 'Condition', '', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 22:39:51'),
(65, 7, 'Beauty Cosmetics', '', 0, 'fa-magic', 'Brand', 'Condition', '', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 22:39:01'),
(66, 7, 'Personal Health Care', '', 0, 'fa-plus', 'Brand', 'Condition', '', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 22:38:10'),
(67, 7, 'Others - Women''s Fashion', '', 0, 'fa-female', 'Brand', 'Condition', 'Year', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 22:36:48'),
(68, 8, 'Menswear', '', 0, 'fa-male', 'Brand', 'Condition', '', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 22:35:58'),
(69, 8, 'Men''s Shoes', '', 0, 'fa-gg', 'Brand', 'Condition', '', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 22:35:27'),
(70, 8, 'Men''s Watches', '', 0, 'fa-clock-o', 'Brand', 'Model', 'Manufacture Date', 'Condition', 'Mechanism', 'Case Material', 'Strap Material', 'Box & Guarantee', 'Accurist, Adamo, Adriatica, A.L.B Atelier Le Brézéguet, Alpina Watches, American Waltham, Andreas Strehler, Anonimo, Ansonia, Apache Pine, Apple Inc., Armand Nicolet, Armani, Armitron, John Arnold, ASUAG, Audemars Piguet, Ateliers deMonaco, Backes & Strauss, Baume et Mercier, Bausele, Ball Watch Company, Webb C. Ball, Bedat & Co, Bell & Ross, Benetton Group, Benrus, Binda Group, Blancpain, Blumarine, Ernest Borel, Bovet Fleurier, Edouard Bovet, Bovet, Abraham-Louis Breguet, Breguet, Breil, Breitling, Bremont Watch Company, Gustav Bruemmer, Buccellati, Bulgari, Bulova, Cartier, Casio, Cecil Purnell, Certina, Charriol, Chopard, Christian Bernard, Christian Jacques, Christopher Ward, Chronoswiss, Chung nam group, Chanel, Citizen Watch Co., Corum, Cyma Watches, Cobra, Concord watch, Czapek & Cie, Dakota Watch Company, Damasko, Damiani, George Daniels, Aaron Lufkin Dennison, Edward John Dent, Dior, D. Dornblüth & Sohn, Doxa S.A., Dreffa, Dubey Schaldenbrand, Roger Dubuis, Dueber-Hampden, Thomas Earnshaw, Ebel, Edox, Elgin, Emporio Armani, EPOS, Endura Watch Factory, ETA SA, ESPRIT, Eterna, Fastrack, A. Favre & Fils, Carlo Ferrara, Festina, Favre-Leuba, Fendi, Fila, Fortis Uhren, Frédérique Constant, Fossil, Folli Follie, F. P. Journe, Charles Frodsham, Fullspot, Gallet & Co., Garmin, Léon Gallet, Romain Gauthier, Geneva Watch Group, General Watch Co, Louis George, Girard-Perregaux, Glashütte Original, Glycine Watch, George Graham, Greubel Forsey, Moritz Grossmann, Grovana Watch, Gruen Watch Co., G-Shock, GUB, Guess Watches Co., Hamilton Watch Company, Hangzhou Watch Company, Hanhart, Hanowa, John Harrison, Harry Winston, Hermès, HMT Limited, Hublot, Ikepod, Illinois Watch Company, Ingersoll, International Watch Co IWC, Invicta Watch Group, Jaeger-LeCoultre, Pierre Jaquet-Droz, Georg Jensen, Jacob & Co, Jean Perret, F.P. Journe, Jowissa, Junghans, Jules Jurgensen, Jorg Gray, Kienzle, Louis Moinet, Lancashire Watch Company, Lang & Heyne, A. Lange & Söhne, Jean Lassale, Leijona watch, Linde Werdelin, Lip, Peter Litherland, Longines, Minsk Watch Plant (Luch), Luminox, Lorus, Maitres du Temps, Manistee Watch, Manufacture royale, Marc Ecko, Mathey-Tissot, Maurice Lacroix, MB&F, MeisterSinger, Mido, Minerva, Louis Moinet, Molnija, Mondaine, Montblanc, Montegrappa, Morellato Group, Moschino, Mossimo, Movado, Franck Muller, Michele, Ulysse Nardin, Newgate Watches, Nivada, Nixon Watches, Nomos Glashütte, Nike Inc., Ollech & Wajs, Omega SA, Orfina, Orient Watch Co, Oris, Panerai, Parmigiani Fleurier, Parnis Watches, Antoni Patek, Patek Philippe & Co., Perrelet, Pequignet, Philip Zepter, Piaget SA, Adrien Philippe, Henry Pitkin, Poljot, Prada, Pulsar (watch), Rado, David Ramsay, Razer Inc., Raymond Weil, Regina, Reguladora, Ressence, Revue Thommen, Richard Mille, Roamer, Rodania, Rolex, Ronda AG, Rotary Watches, Daniel Roth, Relic, Sandoz watches, Sector, Seiko, Seikosha, Sekonda, Shinola, Skagen Designs, Alexander Shorokhoff, Slava watches, Roger W. Smith, Solvil et Titus, Speake-Marin, Sonata, Sprout Watches, Stowa, Stührling, Suunto, Swatch Group, TAG Heuer, TechnoMarine, Technos, Seth Thomas, Tianjin Sea-Gull, Timex Group, Tissot, Titan Industries, Thomas Tompion, Tommy Hilfiger, Tourneau, ToyWatch, Traser, Tudor, Tutima, Tiffany & Co, Ulysse Nardin, Universal Genève, Urwerk, Vacheron Constantin, Valjoux, Versace, Victorinox, Vostok watches, Waltham Watch Company, Christopher Ward, Wenger, West End Watch Co, Joseph Windmills, Xezo, Yema, Zenith, Zeno-Watch Basel, Zodiac Watches, Others', 'Classic, Casual, Sport, Dress', 'Pre 1920, 1920-1969, 1970-1999, 2000-Now', 'New, Used', 'Automatic, Manual, Quartz, Solar, Others', 'Stainless Steel, Solid Gold, Platinum, Titanium, Nickel, Aluminum, Plastic, Others', 'Leather, Solid Gold, Stainless Steel, Nickel, Titanium, Platinum, Rubber, Plastic', 'Yes, No', 1, '0000-00-00 00:00:00', '2017-02-08 22:30:55'),
(71, 8, 'Men''s Accessories', '', 0, 'fa-clone', 'Brand', 'Model', 'Year', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 8, 'Personal Care Devices', '', 0, 'fa-braille', 'Brand', 'Condition', '', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 22:21:12'),
(73, 8, 'Perfume - Incense for men', '', 0, 'fa-sun-o', 'Brand', 'Country of Origin', 'Condition', 'Original or Replica', '', '', '', '', '', '', 'New, Used', 'Original, Replica', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 22:20:36'),
(74, 8, 'Others - Men''s Fashion', '', 0, 'fa-star-o', 'Brand', 'Country of Origin', 'Condition', '', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 22:18:53'),
(75, 9, 'Kids Furniture', '', 0, 'fa-tags', 'Brand', 'Condition', '', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 22:17:42'),
(76, 9, 'Strollers - Car Seats', '', 0, 'fa-hdd-o', 'Brand', 'Condition', '', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 22:17:13'),
(77, 9, 'Kids Clothing', '', 0, 'fa-shopping-cart', 'Brand', 'Condition', '', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 22:16:43'),
(78, 9, 'Toys - Games', '', 0, 'fa-gamepad', 'Brand', 'Condition', '', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 22:16:07'),
(79, 9, 'Others - Baby - Kids', '', 0, 'fa-heart', 'Condition', '', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 22:15:29'),
(80, 10, 'Oils', '', 0, 'fa-tree', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 22:14:44'),
(81, 10, 'Dates', '', 0, 'fa-envira', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 22:14:29'),
(82, 10, 'Honey', '', 0, 'fa-spoon', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 22:14:09'),
(83, 10, 'Ready Cooked Meals', '', 0, 'fa-thumbs-up', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 22:13:51'),
(84, 10, 'Desserts', '', 0, 'fa-moon-o', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 22:13:26'),
(85, 10, 'Food Supplements', '', 0, 'fa-shield', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 22:12:47'),
(86, 10, 'Others - Food - Supplements', '', 0, 'fa-life-ring', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 22:12:21'),
(87, 11, 'Tutoring - Courses', '', 0, 'fa-bandcamp', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 22:11:57'),
(88, 11, 'Computers - Laptops', '', 0, 'fa-laptop', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-10 04:00:07'),
(89, 11, 'Home Repair', '', 0, 'fa-ravelry', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 22:11:10'),
(90, 11, 'Food Catering - Events', '', 0, 'fa-eercast', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 22:10:42'),
(91, 11, 'Medical Services', '', 0, 'fa-user-md', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 22:10:17'),
(92, 11, 'Electrician services', '', 0, 'fa-bolt', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 22:09:58'),
(93, 11, 'Movers - Packers', '', 0, 'fa-gift', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 22:09:43'),
(94, 11, 'Car Repair - Maintenance', '', 0, 'fa-gear', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 22:09:23'),
(95, 11, 'Travel - Tourism', '', 0, 'fa-plane', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-07 13:54:20'),
(96, 11, 'Cleaning Services', '', 0, 'fa-superpowers', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-07 13:54:02'),
(97, 11, 'Legal Services', '', 0, 'fa-archive', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-07 13:53:41'),
(98, 11, 'Maidservice', '', 0, 'fa-bell', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-07 13:53:24'),
(99, 11, 'private schools & kindergartens', '', 0, 'fa-university', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-07 13:53:05'),
(100, 11, 'construction & building', '', 0, 'fa-building-o', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-07 13:52:45'),
(101, 11, 'massage & spa', '', 0, 'fa-user-o', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-07 13:52:27'),
(102, 11, 'colleges & universities', '', 0, 'fa-book', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-07 13:52:07'),
(103, 11, 'painting', '', 0, 'fa-paint-brush', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-07 13:51:45'),
(104, 11, 'other services', '', 0, 'fa-bullhorn', 'Type of Service', 'Years of Experience', 'Education', 'Salary', 'Incentives', '', '', '', '', '1-3 Years, 3-5 Years, 5-10 Years, More than 10 Years, No Experience', 'Pre High School, High School, Some College, Bachelor''s Degree, Master''s Degree, Doctorate''s Degree', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 22:07:15'),
(105, 12, 'Engineering', '', 0, 'fa-user-circle', 'Job Title', 'Education', 'Years of Experience', 'Working Hours', 'Salary ', '', '', '', '', 'Pre High School, High School, Some College, Bachelor''s Degree, Master''s Degree, Doctorate''s Degree', '1-3 Years, 3-5 Years, 5-10 Years, More than 10 Years, No Experience', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 22:05:48'),
(106, 12, 'Admin - Secretary', '', 0, 'fa-podcast', 'Job Title', 'University Degree', 'Years of Experience', 'Working Hours', 'Salary ', 'Incentives', '', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-07 13:47:14'),
(107, 12, 'Accounting - Finance', '', 0, 'fa-usd', 'Job Title', 'Years of Experience', 'Education', 'Working Hours', 'Salary ', 'Incentives', '', '', '', '1-3 Years, 3-5 Years, 5-10 Years, More than 10 Years, No Experience', 'Pre High School, High School, Some College, Bachelor''s Degree, Master''s Degree, Doctorate''s Degree', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 22:05:05'),
(108, 12, 'Medicine - Nursing', '', 0, 'fa-medkit', 'Job Title', 'Education', 'Years of Experience', 'Working Hours', 'Salary ', 'Incentives', '', '', '', 'Pre High School, High School, Some College, Bachelor''s Degree, Master''s Degree, Doctorate''s Degree', '1-3 Years, 3-5 Years, 5-10 Years, More than 10 Years, No Experience', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 22:04:11'),
(109, 12, 'Computer - IT', '', 0, 'fa-laptop', 'Job Title', 'Education', 'Years of Experience', 'Working Hours', 'Salary ', 'Incentives', '', '', '', 'Pre High School, High School, Some College, Bachelor''s Degree, Master''s Degree, Doctorate''s Degree', '1-3 Years, 3-5 Years, 5-10 Years, More than 10 Years, No Experience', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 22:03:28'),
(110, 12, 'Tutoring - Training', '', 0, 'fa-key', 'Job Title', 'Education', 'Years of Experience', 'Working Hours', 'Salary ', 'Incentives', '', '', '', 'Pre High School, High School, Some College, Bachelor''s Degree, Master''s Degree, Doctorate''s Degree', '1-3 Years, 3-5 Years, 5-10 Years, More than 10 Years, No Experience', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 22:02:57'),
(111, 12, 'Sales - Marketing', '', 0, 'fa-level-up', 'Job Title', 'Education', 'Years of Experience', 'Working Hours', 'Salary ', 'Incentives', '', '', '', 'Pre High School, High School, Some College, Bachelor''s Degree, Master''s Degree, Doctorate''s Degree', '1-3 Years, 3-5 Years, 5-10 Years, More than 10 Years, No Experience', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 22:02:10'),
(112, 12, 'Media - Design - Creative', '', 0, 'fa-weibo', 'Job Title', 'Education', 'Years of Experience', 'Working Hours', 'Salary ', 'Incentives', '', '', '', 'Pre High School, High School, Some College, Bachelor''s Degree, Master''s Degree, Doctorate''s Degree', '1-3 Years, 3-5 Years, 5-10 Years, More than 10 Years, No Experience', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 22:01:16'),
(113, 12, 'Recruitment - HR', '', 0, 'fa-connect-develop', 'Job Title', 'Education', 'Years of Experience', 'Salary', 'Incentives', 'Working Hours', '', '', '', 'Pre High School, High School, Some College, Bachelor''s Degree, Master''s Degree, Doctorate''s Degree', '1-3 Years, 3-5 Years, 5-10 Years, More than 10 Years, No Experience', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 22:00:45'),
(114, 12, 'Media - Advertising', '', 0, 'fa-contao', 'Job Title', 'Education', 'Years of Experience', 'Working Hours', 'Salary', 'Incentives', '', '', '', 'Pre High School, High School, Some College, Bachelor''s Degree, Master''s Degree, Doctorate''s Degree', '1-3 Years, 3-5 Years, 5-10 Years, More than 10 Years, No Experience', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 22:00:09'),
(115, 12, 'Costumer Service', '', 0, 'fa-gittip', 'Job Title', 'Education', 'Years of Experience', 'Working Hours', 'Salary', 'Incentives', '', '', '', 'Pre High School, High School, Some College, Bachelor''s Degree, Master''s Degree, Doctorate''s Degree', '1-3 Years, 3-5 Years, 5-10 Years, More than 10 Years, No Experience', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 21:59:38'),
(116, 12, 'Drivers - Delivery', '', 0, 'fa-truck', 'Job Title', 'Has Car?', 'Working Hours', 'Years of Experience', 'Salary ', 'Incentives', 'Education', '', '', 'Yes, No', '', '1-3 Years, 3-5 Years, 5-10 Years, More than 10 Years, No Experience', '', '', 'Pre High School, High School, Some College, Bachelor''s Degree, Master''s Degree, Doctorate''s Degree', '', 1, '0000-00-00 00:00:00', '2017-02-08 21:59:01'),
(117, 12, 'Maids - Home Staff', '', 0, 'fa-users', 'Education', 'Years of Experience', 'Salary', 'Incentives', 'Accomodation Included', '', '', '', 'Pre High School, High School, Some College, Bachelor''s Degree, Master''s Degree, Doctorate''s Degree', '1-3 Years, 3-5 Years, 5-10 Years, More than 10 Years, No Experience', '', '', 'Yes, No', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 21:58:08'),
(118, 12, 'Guards - Security', '', 0, 'fa-user-secret', 'Job Title', 'Years of Experience', 'Salary', 'Incentives', 'Night or Day Shift', 'Education', '', '', '', '1-3 Years, 3-5 Years, 5-10 Years, More than 10 Years, No Experience', '', '', 'Night Shift, Day Shift', 'Pre High School, High School, Some College, Bachelor''s Degree, Master''s Degree, Doctorate''s Degree', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 21:56:29'),
(119, 12, 'Barber - Stylist', '', 0, 'fa-star', 'Job Title', 'Years of Experience', 'Certificate', 'Salary', 'Incentives', 'Education', '', '', '', '1-3 Years, 3-5 Years, 5-10 Years, More than 10 Years, No Experience', 'Yes, No', '', '', 'Pre High School, High School, Some College, Bachelor''s Degree, Master''s Degree, Doctorate''s Degree', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 21:55:42'),
(120, 12, 'Craftspersons- Artisans', '', 0, 'fa-snowflake-o', 'Job Title', 'Years of Experience', 'Skills', 'Salary', 'Incentives', 'Education', '', '', '', '1-3 Years, 3-5 Years, 5-10 Years, More than 10 Years, No Experience', '', '', '', 'Pre High School, High School, Some College, Bachelor''s Degree, Master''s Degree, Doctorate''s Degree', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 21:54:36'),
(121, 12, 'Hospitality', '', 0, 'fa-h-square', 'Job Title', 'Education', 'Years of Experience', 'Salary', 'Incentives', '', '', '', '', 'Pre High School, High School, Some College, Bachelor''s Degree, Master''s Degree, Doctorate''s Degree', '1-3 Years, 3-5 Years, 5-10 Years, More than 10 Years, No Experience', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 21:53:21'),
(122, 12, 'Travel - Tourism', '', 0, 'fa-train', 'Job Title', 'Years of Experience', 'Education', 'Salary', 'Incentives', '', '', '', '', '1-3 Years, 3-5 Years, 5-10 Years, More than 10 Years, No Experience', 'Pre High School, High School, Some College, Bachelor''s Degree, Master''s Degree, Doctorate''s Degree', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 21:52:18'),
(123, 12, 'Legal - Law', '', 0, 'fa-balance-scale', 'Job Title', 'Years of Experience', 'Education', 'Salary', 'Incentives', '', '', '', '', '1-3 Years, 3-5 Years, 5-10 Years, More than 10 Years, No Experience', 'Pre High School, High School, Some College, Bachelor''s Degree, Master''s Degree, Doctorate''s Degree', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 21:51:29'),
(124, 12, 'Management - Admin', '', 0, 'fa-eye', 'Admin Title', 'Education', 'Years of Experience', 'Salary', 'Incentives', '', '', '', '', 'Pre High School, High School, Some College, Bachelor''s Degree, Master''s Degree, Doctorate''s Degree', '1-3 Years, 3-5 Years, 5-10 Years, More than 10 Years, No Experience', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 21:50:43'),
(125, 12, 'Other Jobs', '', 0, 'fa-crop', 'Type of Job', 'Years of Experience', 'Education', 'Salary', 'Incentives', '', '', '', '', '1-3 Years, 3-5 Years, 5-10 Years, More than 10 Years, No Experience', 'Pre High School, High School, Some College, Bachelor''s Degree, Master''s Degree, Doctorate''s Degree', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 21:49:07'),
(126, 12, 'Submit Resume', '', 0, 'fa-file-pdf-o', 'Career Type', 'Education', 'Years of Experience', 'University ', 'Able to Relocate', 'Languages', 'Last Position', 'Other Skills', 'Accounting-Finance, Admin-Secretary, Barber-Stylist, Computer- It, Customer Service, Artisans, Drivers- Delivery, Engineering, Guard- Security, Hospitality, Legal- Law, Maids- Home Staff, Management- Admin, Media-Advertising, Media- Design- Creative, Medicine- Nursing, Other Jobs', 'Pre High School, High School, Some College, Bachelor''s Degree, Master''s Degree, Doctorate''s Degree, N/A', '1-3 Years, 3-5 Years, 5-10 years, more than 10 Years, No Experience', '', 'Yes, No', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 16:34:08'),
(127, 14, 'Cats', '', 0, 'fa-grav', 'Type of Cat', 'Number of Cats', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-05 11:13:35'),
(128, 14, 'Birds', '', 0, 'fa-bookmark', 'Type of Bird', 'Number of Birds', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-05 11:12:49'),
(129, 14, 'Pigeons', '', 0, 'fa-circle-o', 'Type of Pigeon', 'Number of Pigeons', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-05 11:12:23'),
(130, 14, 'Sheep', '', 0, 'fa-clone', 'Type of Sheep', 'Number of Sheep', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-05 11:11:48'),
(131, 14, 'Chickens', '', 0, 'fa-magnet', 'Type of Chicken', 'Number of Chicken', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-05 11:11:15'),
(132, 14, 'Horses', '', 0, 'fa-map-pin', 'Type of Horse', 'How Old it is?', 'Number of Horses', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-05 11:10:01'),
(133, 14, 'Parrots', '', 0, 'fa-location-arrow', 'Type of Parrot', 'Talking or Not?', '', '', '', '', '', '', '', 'Talking, Not Talking', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 21:44:16'),
(134, 14, 'Dogs', '', 0, 'fa-paw', 'Type of Dog', 'Has Certificate?', '', '', '', '', '', '', '', 'Yes, No', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 21:41:37'),
(135, 14, 'Goats', '', 0, 'fa-map-marker', 'Type of Goat (s)', 'Number of Goats', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-05 11:07:27'),
(136, 14, 'Fish', '', 0, 'fa-random', 'Type of Fish', 'Number of Fish', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-05 11:06:24'),
(137, 14, 'Camels', '', 0, 'fa-ship', 'Number of Camels', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-05 11:05:45'),
(138, 14, 'Accessories', '', 0, 'fa-server', 'Type of Accessory', 'Condition', 'Number of Accessories', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 21:41:03'),
(139, 14, 'Other Animals', '', 0, 'fa-search-plus', 'Name of Animal', 'Number of Animals', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-05 11:03:59'),
(140, 15, 'Tickets', '', 0, 'fa-tags', 'Ticket Type', 'Issue Date', 'Number of Tickets', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-05 11:02:12'),
(141, 15, 'Musical Instruments', '', 0, 'fa-music', 'Type of Instrument', 'Condition', 'How Old it is?', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 21:39:40'),
(142, 15, 'Collectibles', '', 0, 'fa-map-signs', 'Type', 'How Old it is?', 'Condition', '', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 21:38:11'),
(143, 15, 'Books - Magazines', '', 0, 'fa-book', 'Author', 'Condition', 'Publish Year', 'Number of Copies', '', '', '', '', '', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 21:37:32'),
(144, 15, 'Sports - Leisure', '', 0, 'fa-object-group', 'Type', 'Condition', '', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 21:37:01'),
(145, 15, 'Bicycles - Accessories', '', 0, 'fa-bicycle', 'Brand', 'Condition', 'How old it is?', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 21:36:32'),
(146, 15, 'Others', '', 0, 'fa-rocket', 'Type', 'Condition', '', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 21:35:53'),
(147, 16, 'Professional Equipment', '', 0, 'fa-space-shuttle', 'Buy or Rent', 'Rental Period', 'Condition', '', '', '', '', '', 'Buy, Rent', '', 'New, Used', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 21:35:14'),
(148, 16, 'Businesses for Sale', '', 0, 'fa-briefcase', 'Type of Business', 'Years of Business', 'Buy or Partnership', '', '', '', '', '', '', '', 'Buy, Partnership', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 21:33:35'),
(149, 16, 'Office Furniture', '', 0, 'fa-check-circle-o', 'Type of Office Furniture', 'Condition', '', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 21:32:52'),
(150, 16, 'Others - Businesses Industrial', '', 0, 'fa-cloud', 'Rent or Buy', 'Rental Period', 'Condition', '', '', '', '', '', 'Buy, Rent', '', 'New, Used', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 21:32:03'),
(151, 17, 'antique furniture', '', 0, 'fa-compass', 'Made by', 'Condition', 'How old it is?', 'Size', 'Weight', '', '', '', '', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 21:30:53');
INSERT INTO `sub_categories` (`id`, `category_id`, `sub_category`, `description`, `seq`, `image`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `details1`, `details2`, `details3`, `details4`, `details5`, `details6`, `details7`, `details8`, `active`, `created_at`, `updated_at`) VALUES
(152, 17, 'watches', '', 0, 'fa-clock-o', 'Brand', 'Model', 'Manufacture Date', 'Condition', 'Mechanism', 'Case Material', 'Strap Material', 'Box & Guarantee', 'Accurist, Adamo, Adriatica, A.L.B Atelier Le Brézéguet, Alpina Watches, American Waltham, Andreas Strehler, Anonimo, Ansonia, Apache Pine, Apple Inc., Armand Nicolet, Armani, Armitron, John Arnold, ASUAG, Audemars Piguet, Ateliers deMonaco, Backes & Strauss, Baume et Mercier, Bausele, Ball Watch Company, Webb C. Ball, Bedat & Co, Bell & Ross, Benetton Group, Benrus, Binda Group, Blancpain, Blumarine, Ernest Borel, Bovet Fleurier, Edouard Bovet, Bovet, Abraham-Louis Breguet, Breguet, Breil, Breitling, Bremont Watch Company, Gustav Bruemmer, Buccellati, Bulgari, Bulova, Cartier, Casio, Cecil Purnell, Certina, Charriol, Chopard, Christian Bernard, Christian Jacques, Christopher Ward, Chronoswiss, Chung nam group, Chanel, Citizen Watch Co., Corum, Cyma Watches, Cobra, Concord watch, Czapek & Cie, Dakota Watch Company, Damasko, Damiani, George Daniels, Aaron Lufkin Dennison, Edward John Dent, Dior, D. Dornblüth & Sohn, Doxa S.A., Dreffa, Dubey Schaldenbrand, Roger Dubuis, Dueber-Hampden, Thomas Earnshaw, Ebel, Edox, Elgin, Emporio Armani, EPOS, Endura Watch Factory, ETA SA, ESPRIT, Eterna, Fastrack, A. Favre & Fils, Carlo Ferrara, Festina, Favre-Leuba, Fendi, Fila, Fortis Uhren, Frédérique Constant, Fossil, F. P. Journe, Charles Frodsham, Fullspot, Gallet & Co., Garmin, Léon Gallet, Romain Gauthier, Geneva Watch Group, General Watch Co, Louis George, Girard-Perregaux, Glashütte Original, Glycine Watch, George Graham, Greubel Forsey, Moritz Grossmann, Grovana Watch, Gruen Watch Co., G-Shock, GUB, Guess Watches Co., Hamilton Watch Company, Hangzhou Watch Company, Hanhart, Hanowa, John Harrison, Harry Winston, Hermès, HMT Limited, Hublot, Ikepod, Illinois Watch Company, Ingersoll, International Watch Co IWC, Invicta Watch Group, Jaeger-LeCoultre, Pierre Jaquet-Droz, Georg Jensen, Jacob & Co, Jean Perret, F.P. Journe, Jowissa, Junghans, Jules Jurgensen, Jorg Gray, Kienzle, Louis Moinet, Lancashire Watch Company, Lang & Heyne, A. Lange & Söhne, Jean Lassale, Leijona watch, Linde Werdelin, Lip, Peter Litherland, Longines, Minsk Watch Plant (Luch), Luminox, Lorus, Maitres du Temps, Manistee Watch, Manufacture royale, Marc Ecko, Mathey-Tissot, Maurice Lacroix, MB&F, MeisterSinger, Mido, Minerva, Louis Moinet, Molnija, Mondaine, Montblanc, Montegrappa, Morellato Group, Moschino, Mossimo, Movado, Franck Muller, Michele, Ulysse Nardin, Newgate Watches, Nivada, Nixon Watches, Nomos Glashütte, Nike Inc., Ollech & Wajs, Omega SA, Orfina, Orient Watch Co., Oris, Panerai, Parmigiani Fleurier, Parnis Watches, Antoni Patek, Patek Philippe & Co., Perrelet, Pequignet, Philip Zepter, Piaget SA, Adrien Philippe, Henry Pitkin, Poljot, Prada, Pulsar (watch), Rado, David Ramsay, Razer Inc., Raymond Weil, Regina, Reguladora, Ressence, Revue Thommen, Richard Mille, Roamer, Rodania, Rolex, Ronda AG, Rotary Watches, Daniel Roth, Relic, Sandoz watches, Sector, Seiko, Seikosha, Sekonda, Shinola, Skagen Designs, Alexander Shorokhoff, Slava watches, Roger W. Smith, Solvil et Titus, Speake-Marin, Sonata, Sprout Watches, Stowa, Stührling, Suunto, Swatch Group, TAG Heuer, TechnoMarine, Technos, Seth Thomas, Tianjin Sea-Gull, Timex Group, Tissot, Titan Industries, Thomas Tompion, Tommy Hilfiger, Tourneau, ToyWatch, Traser, Tudor, Tutima, Tiffany & Co, Ulysse Nardin, Universal Genève, Urwerk, Vacheron Constantin, Valjoux, Versace, Victorinox, Vostok watches, Waltham Watch Company, Christopher Ward, Wenger, West End Watch Co, Joseph Windmills, Xezo, Yema, Zenith, Zeno-Watch Basel, Zodiac Watches, Others', 'Classic, Casual, Sport, Dress', 'Pre 1920, 1920-1969, 1970-1999, 2000-Now', 'New, Used', 'Automatic, Manual, Quartz, Solar, Others', 'Stainless Steel, Solid Gold, Platinum, Titanium, Nickel, Aluminum, Plastic', 'Leather, Solid Gold, Stainless Steel, Nickel, Titanium, Platinum, Rubber, Plastic', 'Yes, No', 1, '0000-00-00 00:00:00', '2017-02-08 21:28:55'),
(153, 17, 'numismatics', '', 0, 'fa-crosshairs', 'Country', 'Numismatics Type', 'Condition', 'Issue Year', '', '', '', '', '', 'Banknote, Coin, Others', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 16:59:02'),
(154, 17, 'stamps', '', 0, 'fa-podcast', 'Issue Date', 'Country', 'Condition', 'Rare?', 'Size', 'Number of Stamps', '', '', '', '', 'New, Used', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 16:57:41'),
(155, 17, 'hand-made items', '', 0, 'fa-hand-lizard-o', 'Type of Hand-Made Item', 'Maker', 'How old it is', 'Condition', 'Size', 'Weight', 'Number of items', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-05 10:41:48'),
(156, 17, 'paintings', '', 0, 'fa-paint-brush', 'Artist', 'How old it is', 'Condition', 'Size', 'Original or Copy', '', '', '', '', '', '', '', 'Original, Copy', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 16:56:42'),
(157, 17, 'memorabilia', '', 0, 'fa-qrcode', 'Type of Memorabilia', 'Maker', 'How old it is?', 'Condition', 'Size', '', '', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-05 10:39:43'),
(158, 17, 'souvenir', '', 0, 'fa-language', 'Type of Souvenir', 'Maker', 'Condition', 'How old is Souvenir', 'Weight', 'Measures', '', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 16:56:07'),
(159, 17, 'other antiques', '', 0, 'fa-plus-square', 'Type of Antique', 'How Old it is?', 'Maker', '', '', '', '', '', '', '', 'Condition', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 16:55:53'),
(160, 18, 'man looking for marriage', '', 0, 'fa-male', 'Age', 'Has Kids?', 'Able to Relocate?', 'Smoking?', 'Employed?', 'Marital Status', 'Religion', 'Nationality', '', 'Yes, No', 'Yes, No', 'Yes, No', 'Yes, No', 'Single, Divorced, Widowed', 'Muslim, Christian, Others', 'Egyptian, Jordanian, Kuwaiti, Lebanese, Qatari, Saudi, Omani, Palestinian, UAE, Others', 1, '0000-00-00 00:00:00', '2017-02-08 16:53:43'),
(161, 18, 'Woman Looking for Marriage', '', 0, 'fa-female', 'Marital Status', 'Age', 'Has Kids?', 'Able to Relocate?', 'Smoking?', 'Employed?', 'Religion', 'Nationality', 'Single, Divorced, Widowed', '', 'Yes, No', 'Yes, No', 'Yes, No', 'Yes, No', 'Muslim, Christian, Others', 'Egyptian, Jordanian, Kuwaiti, Lebanese, Qatari, Saudi, Omani, Palestinian, UAE, Others', 1, '0000-00-00 00:00:00', '2017-02-08 16:52:11'),
(162, 19, 'graphic & design', '', 0, 'fa-picture-o', 'University Degree', 'Personal or Professional', 'Graphic Field', 'Years of Experience', '', '', '', '', 'Pre High School, High School, Some College, Bachelor''s Degree, Master''s Degree, Doctorate''s Degree, N/A', 'Personal, Professional', '', '1-3 Years, 3-5 Years, 5-10 Years, More than 10 Years, No Experience', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 16:48:43'),
(163, 19, 'digital marketing', '', 0, 'fa-pie-chart', 'University Degree', 'Personal or Professional', 'Years of Experience', '', '', '', '', '', 'Pre High School, High School, Some College, Bachelor''s Degree, Master''s Degree, Doctorate''s Degree, N/A', 'Personal, Professional', '1-3 Years, 3-5 Years, 5-10 Years, More than 10 Years, No Experience', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 16:47:59'),
(164, 19, 'writing & translation', '', 0, 'fa-pencil', 'University Degree', 'Personal or Professional', 'Years of Experience', '', '', '', '', '', 'Pre High School, High School, Some College, Bachelor''s Degree, Master''s Degree, Doctorate''s Degree, N/A', 'Personal, Professional', '1-3 Years, 3-5 Years, 5-10 Years, More than 10 Years, No Experience', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 16:46:57'),
(165, 19, 'video & animation', '', 0, 'fa-video-camera', 'University Degree', 'Personal or Professional', 'Years of Experience', '', '', '', '', '', 'Pre High School, High School, Some College, Bachelor''s Degree, Master''s Degree, Doctorate''s Degree, N/A', 'Personal, Professional', '1-3 Years, 3-5 Years, 5-10 Years, More than 10 Years, No Experience', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 16:46:04'),
(166, 19, 'music & audio', '', 0, 'fa-headphones', 'University Degree', 'Personal or Professional', 'Years of Experience', '', '', '', '', '', 'Pre High School, High School, Some College, Bachelor''s Degree, Master''s Degree, Doctorate''s Degree, N/A', 'Personal, Professional', '1-3 Years, 3-5 Years, 5-10 Years, More than 10 Years, No Experience', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 16:45:14'),
(167, 19, 'programming & tech', '', 0, 'fa-terminal', 'University Degree', 'Web Design Fields', 'Application Design Fields', 'Years of Experience', '', '', '', '', 'Pre High School, High School, Some College, Bachelor''s Degree, Master''s Degree, Doctorate''s Degree, N/A', '', '', '1-3 Years, 3-5 Years, 5-10 Years, More than 10 Years, No Experience', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 16:44:33'),
(168, 19, 'advertising businesses', '', 0, 'fa-paperclip', 'University Degree', 'Typr of Advertisement', 'Years of Experience', '', '', '', '', '', 'Pre High School, High School, Some College, Bachelor''s Degree, Master''s Degree, Doctorate''s Degree, N/A', '', '1-3 Years, 3-5 Years, 5-10 Years, More than 10 Years, No Experience', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 16:44:08'),
(169, 19, 'fun & lifestyle', '', 0, 'fa-black-tie', 'University Degree', 'Years of Experience', '', '', '', '', '', '', 'Pre High School, High School, Some College, Bachelor''s Degree, Master''s Degree, Doctorate''s Degree, N/A', '1-3 Years, 3-5 Years, 5-10 Years, More than 10 Years, No Experience', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 16:43:22'),
(170, 19, 'personal advice', '', 0, 'fa-unlink', 'University Degree', 'Personal Advice Fields', 'Years of Experience', '', '', '', '', '', 'Pre High School, High School, Some College, Bachelor''s Degree, Master''s Degree, Doctorate''s Degree, N/A', '', '1-3 Years, 3-5 Years, 5-10 Years, More than 10 Years, No Experience', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 16:42:50'),
(171, 19, 'Web Programming', '', 0, 'fa-globe', 'Years of Experience', 'University Degree', 'Web Languages', 'Web design Fields', '', '', '', '', '1-3 Years, 3-5 Years, 5-10 Years, More than 10 Years, No Experience', 'Pre High School, High School, Some College, Bachelor''s Degree, Master''s Degree, Doctorate''s Degree, N/A', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 16:41:05');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_type` tinyint(1) NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_show` tinyint(4) NOT NULL DEFAULT '0',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `photo` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `provider` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provder_id` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_type`, `name`, `phone`, `phone_show`, `email`, `password`, `status`, `photo`, `provider`, `provder_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', '123456790', 1, 'admin@yahoo.com', '$2y$10$qiodPWh2K6TosGowuBdezOxMyQ.6EtHqXK2RwTZ32zTtr1J4MDavi', 1, '', '', '', 'VYwh6CRTC46QcDIubkZJlAtAkfrI1mX3RpsatjTcy5mTSlu7c3mzoXylvWsu', '2016-11-01 06:30:19', '2017-01-27 01:42:25'),
(2, 1, 'Manager', '123123123', 1, 'manager@yahoo.com', '$2y$10$Xe8pZD.44QTsFsPKDUGrNOffZ1kQfnpgR8waIomXffRCTXng2MGAm', 1, '', '', '', 'ZAn7QjWtkqLZ2vEHUmBZXPzjK6rqhSAwcjxQwBimRALil83T1J9D5XJVy9K9', '2016-11-01 06:37:19', '2016-11-23 02:06:28'),
(3, 1, 'Demo 01', '000000000', 0, 'demo01@yahoo.com', '$2y$10$G41nEBhtonwA/UrACL6Z0ehosLROMgnekjt4bgixjoLAL9NgEbM2G', 1, '3-ayaz-dp.jpg', '', '', 'cdEGQ1TUMBQplUPodZDdT9LEgNV9yLFiapG96hT61DJcb48BbuGJLyX6ezoI', '2016-11-01 06:47:01', '2017-02-24 23:52:09'),
(4, 1, 'Demo 02', '0000000000', 1, 'demo02@yahoo.com', '$2y$10$CTBRgeDVNo.G9C7it6PqaeRAIa3gIufrVJkXvsWXvd3SAdcsBiogi', 1, '', '', '', 'yEYBvYSuPIFli67SLWHmfq2lNLgBqEf0hg6RqaIeLGsD1qginNnDVvKhRl1B', '2016-11-01 06:50:47', '2017-02-24 23:51:48'),
(5, 1, 'Demo 03', '1234567890', 1, 'demo03@yahoo.com', '$2y$10$QBkp3o70HUyqacl5A14fxOZajN4evBvSqDLN4q2q5R6TmheJFHOy.', 1, '', '', '', 'MvhiPmUIdlZUe4IkraEkaPzQosiqMpRCDliCrcF4CPdeZDfRet0kwKmhII10', '2016-11-08 23:11:09', '2017-02-25 00:20:55'),
(6, 1, 'Demo 04', '3008210313', 0, 'demo04@yahoo.com', '$2y$10$h4allGb/98FbO0jm9wKUPebA9UwVbHrlFJuMuHKbPFn3cBV.fMmK2', 1, '', '', '', 'LGyomLTKLRf4MOxBssCDEitVqgOn6CL9lQc5qukEzWBGUC9PyqTUyJtpgRkS', '2016-11-14 01:58:51', '2017-01-19 20:53:17'),
(7, 2, 'Demo 11 udpated', '13333333', 1, 'demo11@yahoo.com', '$2y$10$3RTLZIqyNWQCMAsYxOn1T.ba.W730Q3obAqd6mLmLOZuvWfsupqhS', 0, '', '', '', NULL, '2016-11-16 01:15:52', '2016-11-16 01:23:20'),
(8, 2, 'demo 21', '922100000000', 1, 'demo21@yahoo.com', '$2y$10$A3M0l79rw3BrkF.4H2rQCOMV0yTefOiHN4/5Q2A5Dhc8vUa.GBY5m', 0, '', '', '', '5vH3Qi86xfgdIgb4xHLbi0526WBJSMPmhpTaidp14xFn9O4LR5Nm0cOSuGgy', '2016-11-22 23:11:37', '2017-01-02 00:47:37'),
(9, 2, 'Ayaz Ahmed', '00921212121', 1, 'demo22@yahoo.com', '$2y$10$FYX1VSdme3kSvn4/GuyMr.sMzTB8rQ1kIHemWhQndrVgpno5E6/Z6', 0, '', '', '', '7turGKLVDWg6i2Eo9EMWsynZPMTluCiYqVlkoOR6FMM3FOFFOzTGUXWjHg1T', '2017-01-01 23:52:36', '2017-01-02 00:03:00'),
(10, 2, 'Ayaz Ahmed SH', '00000223232323', 0, 'demo23@yahoo.com', '$2y$10$kJux6GtktQ8uw/9cN82TCu6aT/7jW6o7MBY7oRv5VcePHP2Ahlu4K', 0, '', '', '', '7X5HG3ZqJcjTQ5TdDJvqZ0WE4pLQdIK9AGVmDg6FZiRl2vbJ5VhBSqPX8HN0', '2017-01-02 00:19:55', '2017-01-02 00:30:50'),
(11, 2, 'Test User 02', '923001212345', 1, 'ahmed.ayaz@yahoo.com', '$2y$10$Pk8Llta3N9Yw6svdtBXbaeMWy5MrVKdWwjqf3Z1UBRfXj7HtOo6SW', 0, '', '', '', NULL, '2017-01-14 00:20:37', '2017-01-14 00:20:37'),
(12, 2, 'Mohmammed Hassan', '00962795196796', 0, 'mohammad.furine@yahoo.com', '$2y$10$4O9ufgkI.n1r7LqlaTAF3OIelmiGV3e.9LyRD/5xJUunnK7EDI0P6', 0, '', '', '', 'zYULyFn3cMuN5kS9tv5rAfqUzDoSun5s3Zyq1SGlx4WhDkFOyDts519ZhEOP', '2017-01-24 07:32:58', '2017-01-24 07:57:36'),
(13, 2, 'test', '9230000000000', 0, 'test01@yahoo.com', '$2y$10$R8Cpa6QK4iYHxblPEk0BGOT8vq4V5HrKKGk.iawcGj26RW.CyfMS2', 0, '', '', '', NULL, '2017-01-30 04:58:17', '2017-01-30 04:58:17'),
(14, 2, 'test', '9230000000000', 0, 'test02@yahoo.com', '$2y$10$LhL4roShBCHd8zzYu71oLOGvLBSMCu684FaJJk3VlIMPJ7SrrWuWq', 0, '', '', '', NULL, '2017-01-30 04:59:15', '2017-01-30 04:59:15'),
(15, 2, 'test', '9230000000000', 0, 'test03@yahoo.com', '$2y$10$DEtGAtY1gS3sc1NjTF6j/uBqnx/TehMBhrhHNuWpI4j2mojRouF2.', 0, '', '', '', NULL, '2017-01-30 04:59:55', '2017-01-30 04:59:55'),
(16, 1, 'Demo 31', '000000000', 1, 'demo31@yahoo.com', '$2y$10$ZYDMLK8pgD1SXK7c45nrKOTJn0WoUNFQRCKJ/CAazVq.4b3xL99D.', 1, '', '', '', 'RqEIkEj8DjXm4ANf0yoQSItmR4WXS6', '2017-02-02 05:37:11', '2017-02-02 05:38:22');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_favorite`
--

INSERT INTO `user_favorite` (`id`, `user_id`, `listing_id`, `created_at`, `updated_at`) VALUES
(1, 4, 1, NULL, NULL),
(2, 3, 3, NULL, NULL),
(3, 3, 2, NULL, NULL),
(4, 3, 1, NULL, NULL),
(5, 3, 4, NULL, NULL),
(6, 3, 6, NULL, NULL),
(7, 3, 17, '2017-01-25 07:12:15', '2017-01-25 07:12:15'),
(8, 1, 17, '2017-01-27 01:02:18', '2017-01-27 01:02:18'),
(9, 3, 16, '2017-01-31 02:09:00', '2017-01-31 02:09:00'),
(11, 16, 23, '2017-02-02 05:52:24', '2017-02-02 05:52:24'),
(12, 5, 29, '2017-02-16 00:31:04', '2017-02-16 00:31:04'),
(13, 6, 29, '2017-02-16 00:31:35', '2017-02-16 00:31:35'),
(16, 6, 28, '2017-02-16 01:06:43', '2017-02-16 01:06:43');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(11, 11, 1, NULL, NULL),
(12, 12, 1, NULL, NULL),
(13, 13, 1, NULL, NULL),
(14, 14, 1, NULL, NULL),
(15, 15, 1, NULL, NULL),
(16, 16, 1, NULL, NULL);

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
-- Indexes for table `comment_reports`
--
ALTER TABLE `comment_reports`
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
-- Indexes for table `listing_reports`
--
ALTER TABLE `listing_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `comment_reports`
--
ALTER TABLE `comment_reports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `emails`
--
ALTER TABLE `emails`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `listings`
--
ALTER TABLE `listings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `listing_reports`
--
ALTER TABLE `listing_reports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `user_favorite`
--
ALTER TABLE `user_favorite`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
