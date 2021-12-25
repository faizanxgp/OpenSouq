-- phpMyAdmin SQL Dump
-- version 4.0.10.14
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Feb 14, 2017 at 09:15 AM
-- Server version: 5.6.31-77.0-log
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sooqalib_jordan`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `seq` int(10) unsigned NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=20 ;

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
(13, 'Others', '', 0, '', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
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

CREATE TABLE IF NOT EXISTS `cities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `seq` int(10) unsigned NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(3) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=18 ;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `city`, `description`, `seq`, `image`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Amman', '', 0, '', 1, '2016-06-02 08:21:47', '0000-00-00 00:00:00'),
(2, 'Irbid', '', 0, '', 1, '2016-06-02 08:21:47', '0000-00-00 00:00:00'),
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

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `listing_id` int(10) unsigned NOT NULL,
  `listing_user_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `offer` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=12 ;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `listing_id`, `listing_user_id`, `user_id`, `description`, `offer`, `created_at`, `updated_at`) VALUES
(1, 17, 3, 3, 'asfsadf', 2, '2017-01-19 01:13:27', '2017-01-19 01:13:27'),
(2, 17, 3, 3, 'asdfsadf', 1, '2017-01-19 01:13:37', '2017-01-19 01:13:37'),
(3, 17, 3, 1, 'ok', 0, '2017-01-20 00:34:15', '2017-01-20 00:34:15'),
(4, 3, 3, 1, 'hi\r\n', 0, '2017-01-20 10:43:15', '2017-01-20 10:43:15'),
(5, 17, 3, 12, 'hi', 0, '2017-01-29 03:05:24', '2017-01-29 03:05:24'),
(6, 23, 12, 1, 'Nice', 0, '2017-02-04 13:58:48', '2017-02-04 13:58:48'),
(7, 25, 20, 12, 'والله قطة جميلة شو رأيك تاخد فيها 50 دينار', 0, '2017-02-04 21:38:24', '2017-02-04 21:38:24'),
(8, 25, 20, 20, 'لا 75', 0, '2017-02-04 21:38:34', '2017-02-04 21:38:34'),
(9, 25, 20, 20, '100 اكتر اشي', 0, '2017-02-04 21:43:02', '2017-02-04 21:43:02'),
(10, 25, 20, 20, 'ممنوع 75', 0, '2017-02-04 21:43:34', '2017-02-04 21:43:34'),
(11, 8, 4, 4, 'nice one', 0, '2017-02-06 16:28:44', '2017-02-06 16:28:44');

-- --------------------------------------------------------

--
-- Table structure for table `emails`
--

CREATE TABLE IF NOT EXISTS `emails` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `emails`
--

INSERT INTO `emails` (`id`, `slug`, `title`, `message`, `created_at`, `updated_at`) VALUES
(1, 'signup', 'Welcome to Sooq', 'Dear %user_name%,\n\nWelcome to Sooq\n\n%user_message%\n\n\n\nSupport Team\n', '0000-00-00 00:00:00', '2016-12-21 09:57:03'),
(2, 'forgot-password', 'Password Recovery - Sooq', 'Dear %user_name%,\n\nYou have requested password reset.\n\nClick on the link below to reset your password:\n\n%user_message%\n\nIf you have any query regarding this request, please contact our support team.\n\n\n\nSupport Team', NULL, '2016-12-21 09:57:30'),
(3, 'ad-approved', 'You ad has been Approved', 'Dear %user_name%,\r\n\r\n%user_message%\r\n\r\nSupport Team', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `listings`
--

CREATE TABLE IF NOT EXISTS `listings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `negotiable` tinyint(4) NOT NULL,
  `ad_type` tinyint(4) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `posted_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_id` int(10) unsigned NOT NULL,
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
  `views` int(10) unsigned NOT NULL,
  `user_id` int(11) NOT NULL,
  `active` tinyint(4) NOT NULL,
  `status` tinyint(4) DEFAULT '1' COMMENT 'approved or not',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=33 ;

--
-- Dumping data for table `listings`
--

INSERT INTO `listings` (`id`, `title`, `description`, `price`, `negotiable`, `ad_type`, `subcategory_id`, `posted_by`, `city_id`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `latitude`, `longitude`, `youtube`, `attachement`, `views`, `user_id`, `active`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Title here ???????', 'description ???????', '0', 0, 0, 1, '', 1, '', '', '', '', '', '', '', '', 100.123456, -100.123456, '', '', 1000002, 4, 1, 1, '2016-06-02 08:25:08', '2017-02-07 16:54:20'),
(2, 'asfdsadf', 'Describe what makes yosadfsadfur ad unique', '1111', 0, 0, 2, 'asdfsadfsafd', 2, '', '', '', '', '', '', '', '', 0, 0, '', '', 4, 4, 1, 1, '2016-11-02 03:03:40', '2017-02-08 15:23:08'),
(3, 'Test 04', 'Just Testing\r\nDescribe what makes your ad unique', '1000', 1, 0, 7, 'Demo 04', 2, '', '', '', '', '', '', '', '', 0, 0, '', '', 4, 3, 1, 1, '2016-11-14 01:59:47', '2017-02-08 15:30:42'),
(4, 'mobile phone ad', 'describ here Describe what makes your ad unique', '1000', 1, 1, 1, 'test name', 1, '', '', '', '', '', '', '', '', 0, 0, '', '', 4, 3, 1, 1, '2016-11-16 01:25:33', '2017-02-08 15:42:10'),
(5, 'sdfsadf', 'Describe what makes your ad usadfsadfnique', '1500', 0, 0, 1, 'asdfsd', 1, '', '', '', '', '', '', '', '', 0, 0, '', '', 5, 3, 1, 1, '2016-11-22 00:29:31', '2017-02-08 15:19:21'),
(6, 'test 01', 'description for test 01 Describe what makes your ad unique', '1000', 0, 1, 1, 'my seller name', 1, '', '', '', '', '', '', '', '', 0, 0, '', '', 7, 3, 1, 1, '2017-01-02 00:32:09', '2017-02-08 15:34:29'),
(7, 'test 02', 'asjl;jsdflkjasl;jfDescribe what makes your ad unique', '2000', 0, 1, 2, 'seller', 1, '', '', '', '', '', '', '', '', 0, 0, '', '', 4, 3, 1, 1, '2017-01-02 00:40:38', '2017-02-08 15:38:16'),
(8, 'test 03', 'description of test 03 Describe what makes your ad unique', '3000', 1, 0, 1, 'test seller name ', 1, '', '', '', '', '', '', '', '', 0, 0, '', '', 20, 4, 1, 1, '2017-01-03 00:11:40', '2017-02-08 15:26:55'),
(10, 'test', 'aaDescribe what makes your ad unique', '111', 0, 1, 1, 'sdafsad', 1, '', '', '', '', '', '', '', '', 0, 0, '', '', 6, 3, 1, 1, '2017-01-09 23:58:26', '2017-02-09 02:47:56'),
(11, 'sadfasdf', 'sadfsadf', '111', 1, 1, 3, 'safsadf', 1, '', '', '', '', '', '', '', '', 0, 0, '', '', 8, 3, 1, 1, '2017-01-13 02:48:38', '2017-02-13 12:23:55'),
(12, 'asdfsadf', 'sdafdasf', '1111', 0, 1, 4, 'sfadfsad', 2, '', '', '', '', '', '', '', '', 0, 0, '', '', 7, 3, 1, 1, '2017-01-13 02:49:34', '2017-02-12 06:05:07'),
(13, 'asdfsadf', 'sdafdasf', '1111', 0, 1, 4, 'sfadfsad', 2, '', '', '', '', '', '', '', '', 0, 0, '', '', 6, 3, 1, 1, '2017-01-13 02:55:20', '2017-02-11 02:47:42'),
(14, 'asdfsadf', 'sdafdasf', '1111', 0, 1, 4, 'sfadfsad', 2, '', '', '', '', '', '', '', '', 0, 0, '', '', 6, 3, 1, 1, '2017-01-13 02:55:31', '2017-02-12 07:20:54'),
(15, 'asdfsadf', 'sdafdasf', '1111', 0, 1, 4, 'sfadfsad', 2, '', '', '', '', '', '', '', '', 0, 0, '', '', 6, 3, 1, 1, '2017-01-13 02:56:03', '2017-02-13 03:33:31'),
(16, 'asdfsadf', 'sdafdasf', '1111', 0, 1, 4, 'sfadfsad', 2, '', '', '', '', '', '', '', '', 0, 0, '', '', 10, 3, 1, 1, '2017-01-13 02:56:19', '2017-02-11 21:14:38'),
(17, 'sdfasadf', 'sadfsadf', '111', 0, 1, 1, 'asdfsad', 1, '', '', '', '', '', '', '', '', 0, 0, '', '', 8, 3, 1, 1, '2017-01-13 23:47:37', '2017-02-13 11:09:50'),
(18, 'This is my CAR', 'Description here', '1111', 0, 1, 1, 'asdfsdf', 1, '', '', '', '', '', '', '', '', 0, 0, '', '', 16, 3, 1, 1, '2017-01-19 03:10:20', '2017-02-14 21:08:26'),
(19, '??? ????? ??? ?????? ???? ????? ???????', '??? ????????? ?????? ????? ???? ????? -??? ?????? ???? ????? ??????? ? 5?? -???? ?? ???? ????? ???? ???? ??????? ????? ???? ??????? ?? ????? ????????? -????? ??????? ???? ????? ???? ( ????? ??? ????? ????? ) ?? ????????? ?????? -??? ??? ???? 12? -????? ????? ?????-????? ?????-???? ???? ???????-\r\n????? ????? ????? \r\n??????: ??????? ?????? ?? ??? ??????? ????? ????? ???? ???? ????? ?? ????? ????? ??? ?? ?????\r\n\r\n?? ?????? ?????? ?????? ??? ???? ??????? ??????? 0799210800', '2000000', 0, 1, 49, 'آخةشى', 1, ' >                                    <span class=', '', '', '', '', '', '', '', 0, 0, '', '', 0, 12, 1, 1, '2017-01-24 07:44:47', '2017-01-24 07:59:13'),
(20, '????? ???? ????? ??????? ????????? ???????', '?? ???? ???? ??????? ????? ??????? ?? ?????? ??? ???? ?????? ????? ???? ?????? ???? ??????? ????????? ??????? ?? ?????? ??????? ????????: ????? ???? ????? ?????? ?????? ?????? ?????? ?????? ?????? ????? ?????? ????? ?????? ????? ??? ?? ????? ?????? ??????? ???? ?????? ????????? ?????? ???? ?????? ?? ????? ?? ??? ???? ????? ?????? ??? ???? ??? ????? ??????? ????? ???? ?? ???? ????? ??????? ??? ?????? ???????? ??? ???????\r\n???? ???? 0795196796 ?? 0799297831\r\nDo you have a swiss watch? we evaluate, trade, sell and purchase swiss watches. we evaluate high-end brands like: patek philippe, chopard, cartier, omega, breitling, longines, movado, louis erard, jaeger lecoultre, piaget, vacheron constantin, IWC, Audemars Piguet, Concord, Corum, Tissot, Louis Vuitton, Versace, Girard-Perregaux, Swatch, Cerruti, Guess, Boss, Hamilton, Seiko, Citizen, Tag Heuer, etc\r\nCall us now to evaluate your swiss watches.\r\n0795196796', '0', 0, 1, 152, 'Abed', 1, ' >                                    <span class=', '', '', '', '', '', '', '', 0, 0, '', '', 1, 12, 1, 1, '2017-01-24 07:57:08', '2017-02-07 16:55:25'),
(21, 'Mercedes SLK Sport Coupe 20006', ' موديل 2006 للبيع مرسيدس اس ال كي رياضية كوبيه', '32500', 0, 1, 1, 'Mohammad', 1, 'Mercedes', 'SLK', '2006', '', '', '', '', '', 0, 0, 'https://www.youtube.com/watch?v=-Dx1krozp4o', '', 44, 12, 1, 1, '2017-01-29 03:13:51', '2017-02-13 17:33:09'),
(22, 'ساعة اوميغا قديمة للبيع', 'للبيع ساعة اوميغا سويسرية قديمة من السبعينات بحالة ممتازة تعمل بشكل جيد على الفحص من المالك مباشرة', '2000', 1, 1, 142, 'Mohammed', 1, 'Omega speedmaster', 'Speedmaster', '1979', '', '', '', '', '', 0, 0, '', '', 8, 12, 1, 1, '2017-01-31 21:10:13', '2017-02-11 01:19:15'),
(23, 'This Cat is beauitfal Cat and best', 'Best Cat', '60', 1, 1, 127, 'Mohammad', 1, 'sa', 'sa', '2000', '', '', '', '', '', 0, 0, '', '', 32, 12, 1, 1, '2017-02-04 10:52:52', '2017-02-09 15:38:50'),
(24, 'ساعة باتك فيليب كالاترافا ذهب عيار 18 بحالة الوكالة', 'معروض للبيع ساعة باتك فيليب كالاترافا ذهب عيار 18 بحالة ممتازة اوتوماتيك لم تلبس اكثر من عدة مرات\r\nللجادين الاتصال على \r\n0799999999\r\nUp for sale a patek philippe calatrava automatic solid gold 18k in pristine .\r\ncondition. call please if intested\r\n07999999', '5489', 1, 1, 60, 'Sami', 1, 'Patek Philippe >                                  ', 'Calatrava', '1999', '', '', '', '', '', 0, 0, 'https://www.youtube.com/watch?v=pojINQ-9P0Y&spfreload=10', '', 27, 12, 1, 1, '2017-02-04 20:33:37', '2017-02-13 18:42:50'),
(25, 'قطة للبيع مرج الحمام', 'للدية 3  قطت جميلة ', '100', 0, 1, 127, 'محمود غيث', 1, 'شيرازي >                                    <span ', '', '2 years', '', '', '', '', '', 0, 0, 'https://www.youtube.com/watch?v=EOtButC4vpU&t=44s', '', 31, 20, 1, 1, '2017-02-04 21:34:35', '2017-02-11 08:58:50'),
(26, 'Samsung Glazy', '2gb ram, 4000mA', '500', 0, 1, 10, 'Tester001', 1, 'Samsung >                                    <span', 'Galaxy s5', '2012', '', '', '', '', '', 0, 0, '', '', 9, 4, 1, 1, '2017-02-06 16:20:26', '2017-02-11 04:45:34'),
(27, 'أعزب ابحث عن زوجة متعلمة مثقفة', 'انا اردني أعزب عمري 30 سنة أبحث عن زوجة اردنية او عربية تعيش في الاردن متعلمة مثقفة عزباء او مطلقة او ارملة العمر من 20 الى 30 سنة تعمل او لا تعمل. للجادات فقط الاتصال على 0799998998', '0', 0, 1, 160, 'Mohammed', 1, '30', 'No', 'Yes', 'Yes', 'Yes', 'Single ', 'Muslim', 'Jordanian', 0, 0, '', '', 35, 12, 1, 1, '2017-02-07 01:06:28', '2017-02-13 17:27:03'),
(28, 'أردني أبحث عن وظيفة بودي جارد', 'أنا أردني أبحث عن وظيفة بودي جارد في مطعم أو ملهى أو شركة. معي توجيهي راسب ولدي خبرة سابقة في شركة أمن وحماية. العمل ليلي أو نهاري. للاتصال على رقم 079586688888', '0', 0, 1, 126, 'Samar Habash', 1, 'حارس أمني >                                    <sp', 'توجيهي راسب', '5', 'لا يوجد', 'نعم', 'عربي انجليزي', 'حارس ليلي', 'كرة قدم', 0, 0, 'https://www.youtube.com/watch?v=OWHJ4s25UQI', '', 30, 21, 1, 1, '2017-02-07 17:15:53', '2017-02-14 21:03:24'),
(29, 'مجموعة من المصممين المحترفين لتصميم المواقع التجارية الخاصة بكم', 'نحن مجموعة من مصممي المواقع المحترفين على استعداد لتصميم مواقع الشركات والاعمال التجارية بلغات البرمجة كافة من ووردبرس وجمله ودروبال و سي ام اس وجافا. نحن نقوم بتصميم مواقعكم من البداية الى النهاية. للاتصال الجاد يرجى الاتصال على الرقم ادناه 07955555555', '250', 1, 1, 171, 'Team', 1, '5 سنوات >                                    <span', 'درجة البكالوريوس', 'Wordpress, Joomla, Drupal, CMS, Custom PHP', 'Business', '', '', '', '', 0, 0, 'https://www.youtube.com/watch?v=2Xwe54VIUMs', '', 6, 21, 1, 1, '2017-02-09 03:53:23', '2017-02-13 18:32:10'),
(30, 'Playstation 4 for sale used in great condition', 'up for sale a great condition playstation 4 purchased last month... included two games.\r\ncall 07988888888', '465', 0, 1, 15, 'Samar', 1, 'Sony >                                    <span cl', 'Playstation', '2017', '', '', '', '', '', 0, 0, 'http://www.youtube.com/watch?v=5YZyB9N2N5Q', '', 10, 21, 1, 1, '2017-02-11 19:24:30', '2017-02-13 18:30:09'),
(31, 'ساعة اوميغا سيماستر بيغ بلو اوتوماتيك رجالي 1960', 'للبيع ساعة اوميغا سيماستر بيغ بلو اوتوماتيك من الستينات بحالة ممتازة نادرة جدا. رجالي حجم 40 مم\r\nOmega Seamaster Automatic Super Rare\r\n\r\nالسعر 7000 دينار. للاتصال على رقم 07988666666', '7000', 0, 2, 152, 'Samar', 1, 'Omega SA >                                    <spa', 'Sport', '1920-1969', 'Used', 'Automatic', 'Stainless Steel', 'Leather', 'No', 0, 0, 'https://www.youtube.com/watch?v=SPuP1c9vGDA', '', 10, 21, 1, 1, '2017-02-12 14:48:35', '2017-02-13 21:28:51'),
(32, 'شقة للبيع في ضاحية الياسمين بالقرب من رجم عميش مساحة 140 متر', 'شقة للبيع في ضاحية الياسمين ربوة عبدون بالقرب من شارع عميش الجديد مساحة الشقة 130 متر تشطيبات سوبر سوبر ديلوكس اسقف جبسين بورد مطبخ راكب طابق شبة ارضي مرتفع ومطل .. صالون و معيشة ومطبخ فاخر راكب.. 3 حمام.... بئر ماء ... كراج يتسع لسيارتين... أبواب امان ... للبيع فقط بداعي السفر .... السعر 650000 للاستفسار من المالك مباشرة 0796762928\r\n', '68000', 0, 1, 44, 'Hasan', 1, 'Two Rooms >                                    <sp', 'Three Bathrooms', 'Ground Floor', '1-3 Years', 'Yes', 'none', 'none', 'none', 0, 0, 'https://www.youtube.com/watch?v=8S2AZQlqMLY', '', 17, 22, 1, 1, '2017-02-14 05:45:52', '2017-02-14 19:08:40');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `listing_id` int(10) unsigned NOT NULL,
  `listing_user_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=15 ;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `listing_id`, `listing_user_id`, `user_id`, `description`, `sender`, `created_at`, `updated_at`) VALUES
(1, 17, 3, 3, 'asfsadf', 2, '2017-01-19 01:13:27', '2017-01-19 01:13:27'),
(2, 17, 3, 3, 'asdfsadf', 1, '2017-01-19 01:13:37', '2017-01-19 01:13:37'),
(3, 3, 3, 1, 'hi\r\n', 2, '2017-01-20 10:43:38', '2017-01-20 10:43:38'),
(4, 17, 3, 1, 'hi', 2, '2017-01-26 15:51:29', '2017-01-26 15:51:29'),
(5, 3, 3, 1, 'Hi\r\n', 1, '2017-01-27 21:05:07', '2017-01-27 21:05:07'),
(6, 18, 3, 3, 'کیف', 2, '2017-01-27 21:06:48', '2017-01-27 21:06:48'),
(7, 17, 3, 12, 'hi how are u', 2, '2017-01-29 03:05:46', '2017-01-29 03:05:46'),
(8, 17, 3, 12, 'i am fine thank you', 2, '2017-01-30 07:37:52', '2017-01-30 07:37:52'),
(9, 23, 12, 1, 'Can I negotiate price?', 2, '2017-02-04 13:59:11', '2017-02-04 13:59:11'),
(10, 25, 20, 12, 'مرحبا يا محمود الاهبل', 2, '2017-02-04 21:37:55', '2017-02-04 21:37:55'),
(11, 25, 20, 20, 'لا انا مو احبل', 2, '2017-02-04 21:38:13', '2017-02-04 21:38:13'),
(12, 8, 4, 4, 'hello', 2, '2017-02-06 16:28:21', '2017-02-06 16:28:21'),
(13, 28, 21, 21, 'hi', 2, '2017-02-11 10:09:48', '2017-02-11 10:09:48'),
(14, 32, 22, 22, 'اه\r\n', 2, '2017-02-14 05:48:35', '2017-02-14 05:48:35');

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
-- Table structure for table `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `slug`, `title`, `meta_description`, `description`, `active`, `created_at`, `updated_at`) VALUES
(1, 'test', 'test title', 'meta description', '<h1>test page</h1><p>html is here</p><a href=#>some links here</a>', 1, NULL, '2017-01-26 08:33:55'),
(2, 'page-2', 'page 2 ', 'something', 'sadlfjasljkfdsa;dfjsa\r\nsdf\r\nsadf\r\nsa\r\nfd\r\nsa\r\ndf\r\nsa\r\ndf\r\n\r\nsdaf\r\n\r\nsaf\r\n\r\nsa\r\ndf\r\nsadf\r\n\r\ns\r\n\r\nfsd\r\n', 1, '2017-01-26 08:29:10', '2017-01-26 08:29:10'),
(3, 'page-3', 'page 3', 'something', 'sadlfjasljkfdsa;dfjsa\r\nsdf\r\nsadf\r\nsa\r\nfd\r\nsa\r\ndf\r\nsa\r\ndf\r\n\r\nsdaf\r\n\r\nsaf\r\n\r\nsa\r\ndf\r\nsadf\r\n\r\ns\r\n\r\nfsd\r\n', 1, '2017-01-26 08:31:55', '2017-01-26 08:32:18');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE IF NOT EXISTS `photos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `listing_id` int(11) NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=46 ;

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
(13, 21, '21-SLK350_45-1024x709.jpg', '2017-01-29 03:13:51', '2017-01-29 03:13:51'),
(14, 21, '21-SLK350_52-1024x704.jpg', '2017-01-29 03:13:51', '2017-01-29 03:13:51'),
(16, 24, '24-$_35.jpg', '2017-02-04 20:33:37', '2017-02-04 20:33:37'),
(17, 25, '25-ااااا.jpg', '2017-02-04 21:34:35', '2017-02-04 21:34:35'),
(20, 27, '27-images.jpg', '2017-02-07 03:50:45', '2017-02-07 03:50:45'),
(21, 23, '23-تنزيل (1).jpg', '2017-02-07 03:51:51', '2017-02-07 03:51:51'),
(22, 23, '23-تنزيل.jpg', '2017-02-07 03:51:51', '2017-02-07 03:51:51'),
(23, 28, '28-stock-vector-bodyguard-bouncer-30223282.jpg', '2017-02-07 17:15:53', '2017-02-07 17:15:53'),
(24, 28, '28-jb10j3cms3h.jpg', '2017-02-07 17:15:53', '2017-02-07 17:15:53'),
(25, 29, '29-AAEAAQAAAAAAAAPmAAAAJGI5MTNlNjJmLWJlNjMtNDgzNi1hYTA5LTA0NThhYTJiNTU4Mg.jpg', '2017-02-09 03:53:23', '2017-02-09 03:53:23'),
(26, 29, '29-2016-09-22-1474505349-8662319-WebDesign.jpg', '2017-02-09 03:53:23', '2017-02-09 03:53:23'),
(27, 29, '29-website-designing.jpg', '2017-02-09 03:53:24', '2017-02-09 03:53:24'),
(28, 30, '30-Sony_PS4_35618167_01.jpg', '2017-02-11 19:24:30', '2017-02-11 19:24:30'),
(29, 31, '31-1001968_688361367891281_8244220369881156828_n.jpg', '2017-02-12 14:48:35', '2017-02-12 14:48:35'),
(30, 31, '31-1897892_688361341224617_4043923907314816889_n.jpg', '2017-02-12 14:48:35', '2017-02-12 14:48:35'),
(31, 31, '31-1969265_688361447891273_4324700861817530809_n.jpg', '2017-02-12 14:48:35', '2017-02-12 14:48:35'),
(32, 31, '31-10001311_688361361224615_3680851439679753145_n.jpg', '2017-02-12 14:48:35', '2017-02-12 14:48:35'),
(33, 31, '31-10155325_688361307891287_6900009536663314508_n.jpg', '2017-02-12 14:48:35', '2017-02-12 14:48:35'),
(34, 31, '31-10155920_688361437891274_4570989209450406476_n.jpg', '2017-02-12 14:48:35', '2017-02-12 14:48:35'),
(35, 31, '31-10294455_688361401224611_7571342542648987_n.jpg', '2017-02-12 14:48:35', '2017-02-12 14:48:35'),
(36, 32, '32-IMG-20170125-WA0000.jpg', '2017-02-14 05:45:52', '2017-02-14 05:45:52'),
(37, 32, '32-IMG-20170125-WA0001.jpg', '2017-02-14 05:45:52', '2017-02-14 05:45:52'),
(38, 32, '32-IMG-20170125-WA0002.jpg', '2017-02-14 05:45:53', '2017-02-14 05:45:53'),
(39, 32, '32-IMG-20170125-WA0003.jpg', '2017-02-14 05:45:53', '2017-02-14 05:45:53'),
(40, 32, '32-IMG-20170125-WA0004.jpg', '2017-02-14 05:45:53', '2017-02-14 05:45:53'),
(41, 32, '32-IMG-20170125-WA0005.jpg', '2017-02-14 05:45:53', '2017-02-14 05:45:53'),
(42, 32, '32-IMG-20170125-WA0006.jpg', '2017-02-14 05:45:53', '2017-02-14 05:45:53'),
(43, 32, '32-IMG-20170125-WA0007.jpg', '2017-02-14 05:45:53', '2017-02-14 05:45:53'),
(44, 32, '32-IMG-20170125-WA0008.jpg', '2017-02-14 05:45:53', '2017-02-14 05:45:53'),
(45, 32, '32-IMG-20170125-WA0009.jpg', '2017-02-14 05:45:53', '2017-02-14 05:45:53');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
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

CREATE TABLE IF NOT EXISTS `sub_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(10) unsigned NOT NULL,
  `sub_category` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `seq` int(10) unsigned NOT NULL,
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
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=173 ;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `sub_category`, `description`, `seq`, `image`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `details1`, `details2`, `details3`, `details4`, `details5`, `details6`, `details7`, `details8`, `active`, `created_at`, `updated_at`) VALUES
(1, 1, 'Cars For Sale', '', 0, '', 'Brand', 'Model', 'Transmission', 'Condition', 'Year of Production', 'Fuel Type', 'Rental Period', 'Fuel Type', 'Abarth, Acura, Arash, Alfa Romeo, Ariel, Ascari, Audi, Bentley, Bowler, BMW, Bristol, Brooke, Bugatti, Buick, Cadillac, Caparo, Caterham, Chery, Chevrolet, Chevron, Chrysler, Citroen, Corvette, Dacia, Daihatsu, Datsun, Dodge, Donkervoort, Ferrari, Fiat, Fisker, Ford, FPV, Ginetta, GMC, Hennessey, Holden, Honda, Hyundai, Infiniti, Isuzu, Jaguar, Jeep, joss, Kamaz, kia, Koenigsegg, KTM, Lamborghini, Lancia, Land Rover, Lexus, Lister, Lincoln, Lotus, Mahindra , MarutiSuzuki, Maserati, Mastretta, Mazda, McLaren, Mercedes, MG Motor, Mini, Mitsubishi, Morgan, Nissan, Noble, Opel, Pagani, Perodua, Peugeot, Porsche, Proton, Ram, Range Rover,  Renault, Roewe, Rolls-Royce, RUF, Saleen, Saab, Scion, Seat, Skoda, Smart, SRT, SsangYong, Subaru, Superformance, Suzuki, Tata, Tesla, Toyota, TVR, Ultima, Vauxhall, Venturi, Volkswagen, Volvo, Westfield, Wiesmann, Zenvo, Daewoo, De Tomaso, Others', '', 'Automatic, Manual\r\n', 'New, Used\r\n', 'Pre 1980, 1980, 1981, 1982, 1983, 1984, 1985, 1986, 1987, 1988, 1989, 1990, 1991, 1992, 1993, 1994, 1995, 1996, 1997, 1998, 1999, 2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017', 'Gasoline, Diesel, Hybrid, Electrical, Others', 'One Day, One Week, One Month, One Years, Others', 'Gasoline, Diesel, Hybrid, Electrical, Others', 1, '0000-00-00 00:00:00', '2017-02-12 04:15:50'),
(2, 1, 'Cars For Rent', '', 0, '', 'Brand', 'Model', 'Year of Production', '', '', '', '', '', 'Abarth, Acura, Arash, Alfa Romeo, Ariel, Ascari, Audi, Bentley, Bowler, BMW, Bristol, Brooke, Bugatti, Buick, Cadillac, Caparo, Caterham, Chery, Chevrolet, Chevron, Chrysler, Citroen, Corvette, Dacia, Daihatsu, Datsun, Dodge, Donkervoort, Ferrari, Fiat, Fisker, Ford, FPV, Ginetta, GMC, Hennessey, Holden, Honda, Hyundai, Infiniti, Isuzu, Jaguar, Jeep, joss, Kamaz, kia, Koenigsegg, KTM, Lamborghini, Lancia, Land Rover, Lexus, Lister, Lincoln, Lotus, Mahindra , MarutiSuzuki, Maserati, Mastretta, Mazda, McLaren, Mercedes, MG Motor, Mini, Mitsubishi, Morgan, Nissan, Noble, Opel, Pagani, Perodua, Peugeot, Porsche, Proton, Ram, Range Rover,  Renault, Roewe, Rolls-Royce, RUF, Saleen, Saab, Scion, Seat, Skoda, Smart, SRT, SsangYong, Subaru, Superformance, Suzuki, Tata, Tesla, Toyota, TVR, Ultima, Vauxhall, Venturi, Volkswagen, Volvo, Westfield, Wiesmann, Zenvo, Daewoo, De Tomaso, Others', '', 'Pre 1980, 1980, 1981, 1982, 1983, 1984, 1985, 1986, 1987, 1988, 1989, 1990, 1991, 1992, 1993, 1994, 1995, 1996, 1997, 1998, 1999, 2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-12 04:08:26'),
(3, 1, 'Motorcycles For Sale', '', 0, '', 'Brand', 'Condition', '', '', '', '', '', '', 'Yamaha, Honda, Ducati, Harley-Davidson, Kawasaki, Suzuki, BMW, Hyosung, Benelli, Norton, Lamborghini, Honda, Kawasaki, Moto Guzzi, Others', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-12 04:06:31'),
(4, 1, 'VIP Car Plates', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-12 03:58:46'),
(5, 1, 'Parts - Accessories', '', 0, '', 'Condition', '', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-12 03:58:22'),
(6, 1, 'Wheels - Rims', '', 0, '', 'Condition', '', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-12 03:57:40'),
(7, 1, 'Trucks - Heavy Machinery', '', 0, '', 'Type', 'Condition', '', '', '', '', '', '', 'Agricultural tractor, Bulldozer, Tractor, Harvester, Crane, Drilling machine, Excavator, Forklift, Asphalt Paver, Truck, Lorry, Caravan, Bus, Van, Others\r\n', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-12 03:56:39'),
(8, 1, 'Boats - Yachts', '', 0, '', 'Type', 'Condition', '', '', '', '', '', '', 'Inflatables, Fishing Boats, Sailboats, Jet Ski, Personal Watercrafts, Yachts, Others', 'Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-12 03:42:15'),
(9, 1, 'Other Vehicles', '', 0, '', 'Condition', '', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-12 03:32:11'),
(10, 2, 'Mobiles', '', 0, '', 'Brand', 'Condition', '', '', '', '', '', '', 'SAMSUNG, APPLE, MICROSOFT, NOKIA, SONY, LG, HTC, MOTOROLA, HUAWEI, LENOVO, XIAOMI, GOOGLE, ACER, ASUS, OPPO, ONEPLUS, MEIZU, BLACKBERRY, ALCATEL, ZTE, TOSHIBA, VODAFONE, GIGABYTE, XOLO, LAVA, MICROMAX, BLU, GIONEE, VIVO, LEECO, PANASONIC, HP\r\nYU, VERYKOOL, MAXWEST, PLUM, Others\r\n', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-12 03:29:38'),
(11, 2, 'Tablets', '', 0, '', 'Brand', 'Condition', '', '', '', '', '', '', 'Amazon, Apple, Asus, Huawei, HTC, Microsoft, Lenovo, Nvidia, Samsung, Others', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-12 03:25:49'),
(12, 2, 'VIP Phone Numbers', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-12 03:20:26'),
(13, 2, 'Mobile Tablet Accessories', '', 0, '', 'Type', 'Condition', '', '', '', '', '', '', 'Batteries, Chargers & Cables, Earbuds, Headsets, Covers & Jackets, Selfie Sticks, Others', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-12 03:19:50'),
(14, 2, 'Others - Mobile - Tablet', '', 0, '', 'Type', 'Condition', '', '', '', '', '', '', 'Spare parts, Memory Cards, Bluetooth, Others', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-12 03:14:00'),
(15, 3, 'Consoles', '', 0, '', 'Type', 'Condition', '', '', '', '', '', '', 'Playstation One, Playstation Two, Playstation Three, Playstation Four, Sony PSP, Xbox One, Xbox 360, Nintendo Switch, Nintendo 2DS, Nintendo 3DS, Gaming PCS, Others', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-12 03:09:09'),
(16, 3, 'Video Games', '', 0, '', 'Condition', '', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-12 03:04:22'),
(17, 3, 'Accessories - Replacement Parts', '', 0, '', 'Type', 'Condition', '', '', '', '', '', '', 'Controllers, Racing Wheel, Joystick, Headsets, Headphones, Virtual Reality 3d Glasses, Gaming Mouse, Keyboards, Memory, Hard Desk, USB, Movement Sensors, Others', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-12 03:03:34'),
(18, 3, 'Gaming Cards', '', 0, '', 'Type', '', '', '', '', '', '', '', 'Google Play, Itunes, Playstation, Skype, Xbox, Steam, Others', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-12 02:53:56'),
(19, 3, 'Accounts and Characters', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-12 02:51:37'),
(20, 3, 'Action Figures', '', 0, '', 'Condition', '', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-12 02:50:53'),
(21, 3, 'Others - Gaming', '', 0, '', 'Condition', '', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-12 02:50:10'),
(22, 4, 'Laptops - Computers', '', 0, '', 'Brand', 'Condition', '', '', '', '', '', '', 'Acer, Apple, Asus, Dell, Fujitsu, Huawei, HP, Lenovo, LG, Panasonic, Samsung, Sharp, Toshiba, Vestel, Via, Vizio, Others', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-12 02:49:07'),
(23, 4, 'TVs - Screens', '', 0, '', 'Brand', 'Condition', '', '', '', '', '', '', 'Acer, Beko, Condor, Daewoo, General Electric, GoldStar, Haier, Hitachi, JVC, LG, Mitsubishi, Motorola, NEC, Nikkai, Nokia, Nordmende, Orion, Panasonic, Philips, Samsung, Sanyo, Sony, Tiger, Toshiba, Westinghouse, Zanussi, Others', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-12 02:44:22'),
(24, 4, 'Speakers - Amplifiers', '', 0, '', 'Brand', 'Condition', '', '', '', '', '', '', 'Blaupunkt, Clarion,  Harman Kardon, JVC, Kenwood, LG, Panasonic, Pioneer, Samsung, Sanyo, Sony, Others', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-12 02:34:11'),
(25, 4, 'Stereo - Radios', '', 0, '', 'Brand', 'Condition', '', '', '', '', '', '', 'Blaupunkt, Clarion,  Harman Kardon, JVC, Kenwood, LG, Panasonic, Pioneer, Samsung, Sanyo, Sony, Others', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-12 02:33:01'),
(26, 4, 'Receivers - DVD Player', '', 0, '', 'Brand', 'Condition', '', '', '', '', '', '', 'Beko, LG, Panasonic, Philips, Pioneer, Samsung, Sanyo, Siemens, Sony, Toshiba, Tiger, Others', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-12 02:27:51'),
(27, 4, 'Modems - Routers', '', 0, '', 'Condition', '', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-12 02:20:11'),
(28, 4, 'Cameras - Photography', '', 0, '', 'Brand', 'Condition', '', '', '', '', '', '', 'Canon, Fujifilm, JVC, Kodac, KodaK, Nikon, Olympus, Panasonic, Ricoh, Samsung, Sigma, Sony, Vivitar, Others', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-12 02:19:30'),
(29, 4, 'Air Conditioners - Fans', '', 0, '', 'Brand', 'Condition', '', '', '', '', '', '', 'Adobe Aire, Beko, Bosch, Daewoo, Electrolux, Frigidaire, Ge, Goldstar, Gree, Haier, Hitachi, Kenmore, Lg, Maytag, Panasonic,   Samsung, Sharp, Whirlpool, White Westinghouse, York, Others', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-12 02:12:12'),
(30, 4, 'Refrigerators - Freezers', '', 0, '', 'Brand', 'Condition', '', '', '', '', '', '', 'Beko, Bosch, Daewoo, Frigidaire, GE, Haier, Indecit, Kenmore, LG, Magic Chef, Siemens, Samsung, Sanyo, Whirlpool, Others', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-12 02:03:04'),
(31, 4, 'Washing Machines - Dryers', '', 0, '', 'Brand', 'Condition', '', '', '', '', '', '', 'AEG, Ariston, Beko, Bosch, Candy, Daewoo, Electrolux, Frigidaire, Haier, Hitachi, Hoover, Indesit, LG, Samsung, Siemens, Whirlpool, Zanussi, Others', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-12 01:50:26'),
(32, 4, 'Ovens - Microwaves', '', 0, '', 'Condition', '', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-12 00:05:01'),
(33, 4, 'Water Coolers and Filters', '', 0, '', 'Condition', '', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-12 00:04:13'),
(34, 4, 'Small Appliances', '', 0, '', 'Condition', '', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-12 00:03:19'),
(35, 4, 'Wearable Technology', '', 0, '', 'Type', 'Condition', '', '', '', '', '', '', 'Smart Watches, 3D Glasses, Smart Bangles, Others', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-12 00:02:19'),
(36, 4, 'Scooters - Hoverboards', '', 0, '', 'Condition', '', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-12 00:00:07'),
(37, 4, 'Electrical & Gas heaters- Heaters', '', 0, '', 'Condition', '', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-11 23:58:55'),
(38, 4, 'Water Heaters', '', 0, '', 'Condition', '', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-11 23:54:48'),
(39, 4, 'Vacuum Cleaner', '', 0, '', 'Condition', '', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-11 23:52:12'),
(40, 4, 'Printers - Fax - Projectors', '', 0, '', 'Type', 'Condition', '', '', '', '', '', '', 'Printer, Scanner, Multi Purposes, Faxes, Projectors, Others', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-11 23:51:18'),
(41, 4, 'Home phones - Wireless', '', 0, '', 'Condition', '', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-11 23:48:47'),
(42, 4, 'Spareparts - Accessories', '', 0, '', 'Condition', '', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-11 23:47:55'),
(43, 4, 'Other Electronics - Appliances', '', 0, '', 'Condition', '', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-11 23:46:42'),
(44, 5, 'Apartments', '', 0, '', 'Number of Rooms', 'Number of Bathrooms', 'Floor', 'Age', '', '', '', '', 'Studio, One Room, Two Rooms, Three Rooms, Four Rooms, More than Four Rooms', 'One Bathroom, Two Bathrooms, Three Bathrooms, Four Bathrooms, Five Bathrooms, More Than Five Bathrooms', 'Basement, Ground Floor, 1st Floor, 2nd Floor, 3rd Floor, 4th Floor, 5th Floor, Higher than 5th Floor', '0-1 Year, 1-3 Years, 3-7 Years, 7-12 Years, More than 12 Years', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-11 19:49:13'),
(45, 5, 'Villas - Palaces', '', 0, '', 'How Old It is?', 'Number of Rooms', 'Number of Bathrooms', 'Number of Floors', 'Has Swimming Pool', '', '', '', '0-3 Years, 3-5 Years, 5-9 Years, 9-12 Years, More than 12 Years', '3 Rooms, 4 Rooms, 5 Rooms, 6 Rooms, More than 6 Rooms', 'One Bathroom, Two Bathrooms, Three Bathrooms, Four Bathroom, Five Bathrooms, More than 5 Bathrooms', 'One Floor, Two Floors, Two Floors & Roof, Three Floors, Four Floors ', 'Yes, No', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-11 19:50:02'),
(46, 5, 'Commercial', '', 0, '', 'Type', '', '', '', '', '', '', '', 'Office, Store, Warehouse, Complex, Hotel, Others', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-11 19:37:16'),
(47, 5, 'Rooms', '', 0, '', 'Furnished Or Not?', '', '', '', '', '', '', '', 'Furnished, None Furnished', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-11 19:35:15'),
(48, 5, 'Whole Building', '', 0, '', 'Rent or Sale', 'Number of Floors', 'Age', '', '', '', '', '', 'Sale, Rent', 'One Floor, Two Floors, Three Floors, 4 Floors, 5 Floors, More than 5 Floors', '0-3 Years, 3-5 Years, 5-7 Years, 7-12 Years, More than 12 Years', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-11 19:51:08'),
(49, 5, 'Land', '', 0, '', 'Type of Land', 'For Rent Or Sale', 'Area in Square Meters', '', '', '', '', '', 'Residential, Commercial, Industrial, Agricultural, Multi Purposes, Others', 'Sale, Rent, Investment, Others ', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-11 19:59:37'),
(50, 5, 'Vacation Homes', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-11 19:31:10'),
(51, 5, 'Other Real Estate', '', 0, '', 'Age ', '', '', '', '', '', '', '', '0-3 Years, 3-5 Years, 5-7 Years, 7-12 Years, More than 12 Years', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-11 19:52:13'),
(52, 6, 'Furniture', '', 0, '', 'Type of Furniture', 'Condition', '', '', '', '', '', '', 'Chairs, Canapé, sofa, Bed, Sofa Bed, Infant Bed, Tables, Dining Tables, TV Tables, Cabinetry, Chest of Drawers, Storage, Bedroom Sets, Dining Sets, Living Room Sets, Others', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-10 09:28:37'),
(53, 6, 'Home Decor - Furnishings', '', 0, '', 'Type of Furnishings', 'Condition', '', '', '', '', '', '', 'Rugs and carpets‎, Blankets, Curtains, Cushions, Wallpapers, Candles, Mirror, Glass, Table Lamps, Vases, Bed Sheets, Mattresses, Others', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-10 09:38:01'),
(54, 6, 'Kitchenware', '', 0, '', 'Condition', '', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-10 09:16:28'),
(55, 6, 'Houseware', '', 0, '', 'Condition', '', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-10 09:16:00'),
(56, 6, 'bathrooms', '', 0, '', 'Brand', 'Condition', '', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-10 09:15:28'),
(57, 6, 'Other Furniture-Decor', '', 0, '', 'Condition', '', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-10 09:14:56'),
(58, 7, 'Clothes', '', 0, '', 'Brand', 'Condition', '', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-10 09:13:34'),
(59, 7, 'Women Shoes', '', 0, '', 'Brand', 'Condition', '', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-10 09:14:03'),
(60, 7, 'Watches', '', 0, '', 'Brand', 'Model', 'Manufacture Date', 'Condition', 'Mechanism', 'Case Material', 'Strap Material', 'Box & Guarantee', 'Accurist, Adamo, Adriatica, A.L.B Atelier Le Brézéguet, Alpina Watches, American Waltham, Andreas Strehler, Anonimo, Ansonia, Apache Pine, Apple Inc., Armand Nicolet, Armani, Armitron, John Arnold, ASUAG, Audemars Piguet, Ateliers deMonaco, Backes & Strauss, Baume et Mercier, Bausele, Ball Watch Company, Webb C. Ball, Bedat & Co, Bell & Ross, Benetton Group, Benrus, Binda Group, Blancpain, Blumarine, Ernest Borel, Bovet Fleurier, Edouard Bovet, Bovet, Abraham-Louis Breguet, Breguet, Breil, Breitling, Bremont Watch Company, Gustav Bruemmer, Buccellati, Bulgari, Bulova, Cartier, Casio, Cecil Purnell, Certina, Charriol, Chopard, Christian Bernard, Christian Jacques, Christopher Ward, Chronoswiss, Chung nam group, Chanel, Citizen Watch Co., Corum, Cyma Watches, Cobra, Concord watch, Czapek & Cie, Dakota Watch Company, Damasko, Damiani, George Daniels, Aaron Lufkin Dennison, Edward John Dent, Dior, D. Dornblüth & Sohn, Doxa S.A., Dreffa, Dubey Schaldenbrand, Roger Dubuis, Dueber-Hampden, Thomas Earnshaw, Ebel, Edox, Elgin, Emporio Armani, EPOS, Endura Watch Factory, ETA SA, ESPRIT, Eterna, Fastrack, A. Favre & Fils, Carlo Ferrara, Festina, Favre-Leuba, Fendi, Fila, Fortis Uhren, Frédérique Constant, Fossil, Folli Follie, F. P. Journe, Charles Frodsham, Fullspot, Gallet & Co., Garmin, Léon Gallet, Romain Gauthier, Geneva Watch Group, General Watch Co, Louis George, Girard-Perregaux, Glashütte Original, Glycine Watch, George Graham, Greubel Forsey, Moritz Grossmann, Grovana Watch, Gruen Watch Co., G-Shock, GUB, Guess Watches Co., Hamilton Watch Company, Hangzhou Watch Company, Hanhart, Hanowa, John Harrison, Harry Winston, Hermès, HMT Limited, Hublot, Ikepod, Illinois Watch Company, Ingersoll, International Watch Co IWC, Invicta Watch Group, Jaeger-LeCoultre, Pierre Jaquet-Droz, Georg Jensen, Jacob & Co, Jean Perret, F.P. Journe, Jowissa, Junghans, Jules Jurgensen, Jorg Gray, Kienzle, Louis Moinet, Lancashire Watch Company, Lang & Heyne, A. Lange & Söhne, Jean Lassale, Leijona watch, Linde Werdelin, Lip, Peter Litherland, Longines, Minsk Watch Plant (Luch), Luminox, Lorus, Maitres du Temps, Manistee Watch, Manufacture royale, Marc Ecko, Mathey-Tissot, Maurice Lacroix, MB&F, MeisterSinger, Mido, Minerva, Louis Moinet, Molnija, Mondaine, Montblanc, Montegrappa, Morellato Group, Moschino, Mossimo, Movado, Franck Muller, Michele, Ulysse Nardin, Newgate Watches, Nivada, Nixon Watches, Nomos Glashütte, Nike Inc., Ollech & Wajs, Omega SA, Orfina, Orient Watch Co, Oris, Panerai, Parmigiani Fleurier, Parnis Watches, Antoni Patek, Patek Philippe & Co., Perrelet, Pequignet, Philip Zepter, Piaget SA, Adrien Philippe, Henry Pitkin, Poljot, Prada, Pulsar (watch), Rado, David Ramsay, Razer Inc., Raymond Weil, Regina, Reguladora, Ressence, Revue Thommen, Richard Mille, Roamer, Rodania, Rolex, Ronda AG, Rotary Watches, Daniel Roth, Relic, Sandoz watches, Sector, Seiko, Seikosha, Sekonda, Shinola, Skagen Designs, Alexander Shorokhoff, Slava watches, Roger W. Smith, Solvil et Titus, Speake-Marin, Sonata, Sprout Watches, Stowa, Stührling, Suunto, Swatch Group, TAG Heuer, TechnoMarine, Technos, Seth Thomas, Tianjin Sea-Gull, Timex Group, Tissot, Titan Industries, Thomas Tompion, Tommy Hilfiger, Tourneau, ToyWatch, Traser, Tudor, Tutima, Tiffany & Co, Ulysse Nardin, Universal Genève, Urwerk, Vacheron Constantin, Valjoux, Versace, Victorinox, Vostok watches, Waltham Watch Company, Christopher Ward, Wenger, West End Watch Co, Joseph Windmills, Xezo, Yema, Zenith, Zeno-Watch Basel, Zodiac Watches, Others', 'Classic, Casual, Sport, Dress', 'Pre 1920, 1920-1969, 1970-1999, 2000-Now', 'New, Used', 'Automatic, Manual, Quartz, Solar, Others', 'Stainless Steel, Solid Gold, Platinum, Titanium, Nickel, Aluminum, Plastic, Others', 'Leather, Solid Gold, Stainless Steel, Nickel, Titanium, Platinum, Rubber, Plastic', 'Yes, No', 1, '0000-00-00 00:00:00', '2017-02-09 03:34:40'),
(61, 7, 'Accessories - Jewelry', '', 0, '', 'Type of Jewelry', 'Condition', '', '', '', '', '', '', 'Earring, Hairpins, Necklaces. Bracelets, Cufflinks, Rings, Engagement Rings, Wedding Rings, Brooches, Prayer beads, Rosary beads, Medallions, Pendants, Diamond Sets, Gem Stones, Others', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-10 09:12:05'),
(62, 7, 'Bags', '', 0, '', 'Brand', 'Condition', '', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-09 03:41:24'),
(63, 7, 'Perfumes - Incense', '', 0, '', 'Brand', 'Condition', '', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-09 03:40:48'),
(64, 7, 'Personal Care Devices', '', 0, '', 'Brand', 'Condition', '', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-09 03:39:51'),
(65, 7, 'Beauty Cosmetics', '', 0, '', 'Brand', 'Condition', '', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-09 03:39:01'),
(66, 7, 'Personal Health Care', '', 0, '', 'Brand', 'Condition', '', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-09 03:38:10'),
(67, 7, 'Others - Women''s Fashion', '', 0, '', 'Brand', 'Condition', 'Year', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-09 03:36:48'),
(68, 8, 'Menswear', '', 0, '', 'Brand', 'Condition', '', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-09 03:35:58'),
(69, 8, 'Men''s Shoes', '', 0, '', 'Brand', 'Condition', '', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-09 03:35:27'),
(70, 8, 'Men''s Watches', '', 0, '', 'Brand', 'Model', 'Manufacture Date', 'Condition', 'Mechanism', 'Case Material', 'Strap Material', 'Box & Guarantee', 'Accurist, Adamo, Adriatica, A.L.B Atelier Le Brézéguet, Alpina Watches, American Waltham, Andreas Strehler, Anonimo, Ansonia, Apache Pine, Apple Inc., Armand Nicolet, Armani, Armitron, John Arnold, ASUAG, Audemars Piguet, Ateliers deMonaco, Backes & Strauss, Baume et Mercier, Bausele, Ball Watch Company, Webb C. Ball, Bedat & Co, Bell & Ross, Benetton Group, Benrus, Binda Group, Blancpain, Blumarine, Ernest Borel, Bovet Fleurier, Edouard Bovet, Bovet, Abraham-Louis Breguet, Breguet, Breil, Breitling, Bremont Watch Company, Gustav Bruemmer, Buccellati, Bulgari, Bulova, Cartier, Casio, Cecil Purnell, Certina, Charriol, Chopard, Christian Bernard, Christian Jacques, Christopher Ward, Chronoswiss, Chung nam group, Chanel, Citizen Watch Co., Corum, Cyma Watches, Cobra, Concord watch, Czapek & Cie, Dakota Watch Company, Damasko, Damiani, George Daniels, Aaron Lufkin Dennison, Edward John Dent, Dior, D. Dornblüth & Sohn, Doxa S.A., Dreffa, Dubey Schaldenbrand, Roger Dubuis, Dueber-Hampden, Thomas Earnshaw, Ebel, Edox, Elgin, Emporio Armani, EPOS, Endura Watch Factory, ETA SA, ESPRIT, Eterna, Fastrack, A. Favre & Fils, Carlo Ferrara, Festina, Favre-Leuba, Fendi, Fila, Fortis Uhren, Frédérique Constant, Fossil, Folli Follie, F. P. Journe, Charles Frodsham, Fullspot, Gallet & Co., Garmin, Léon Gallet, Romain Gauthier, Geneva Watch Group, General Watch Co, Louis George, Girard-Perregaux, Glashütte Original, Glycine Watch, George Graham, Greubel Forsey, Moritz Grossmann, Grovana Watch, Gruen Watch Co., G-Shock, GUB, Guess Watches Co., Hamilton Watch Company, Hangzhou Watch Company, Hanhart, Hanowa, John Harrison, Harry Winston, Hermès, HMT Limited, Hublot, Ikepod, Illinois Watch Company, Ingersoll, International Watch Co IWC, Invicta Watch Group, Jaeger-LeCoultre, Pierre Jaquet-Droz, Georg Jensen, Jacob & Co, Jean Perret, F.P. Journe, Jowissa, Junghans, Jules Jurgensen, Jorg Gray, Kienzle, Louis Moinet, Lancashire Watch Company, Lang & Heyne, A. Lange & Söhne, Jean Lassale, Leijona watch, Linde Werdelin, Lip, Peter Litherland, Longines, Minsk Watch Plant (Luch), Luminox, Lorus, Maitres du Temps, Manistee Watch, Manufacture royale, Marc Ecko, Mathey-Tissot, Maurice Lacroix, MB&F, MeisterSinger, Mido, Minerva, Louis Moinet, Molnija, Mondaine, Montblanc, Montegrappa, Morellato Group, Moschino, Mossimo, Movado, Franck Muller, Michele, Ulysse Nardin, Newgate Watches, Nivada, Nixon Watches, Nomos Glashütte, Nike Inc., Ollech & Wajs, Omega SA, Orfina, Orient Watch Co, Oris, Panerai, Parmigiani Fleurier, Parnis Watches, Antoni Patek, Patek Philippe & Co., Perrelet, Pequignet, Philip Zepter, Piaget SA, Adrien Philippe, Henry Pitkin, Poljot, Prada, Pulsar (watch), Rado, David Ramsay, Razer Inc., Raymond Weil, Regina, Reguladora, Ressence, Revue Thommen, Richard Mille, Roamer, Rodania, Rolex, Ronda AG, Rotary Watches, Daniel Roth, Relic, Sandoz watches, Sector, Seiko, Seikosha, Sekonda, Shinola, Skagen Designs, Alexander Shorokhoff, Slava watches, Roger W. Smith, Solvil et Titus, Speake-Marin, Sonata, Sprout Watches, Stowa, Stührling, Suunto, Swatch Group, TAG Heuer, TechnoMarine, Technos, Seth Thomas, Tianjin Sea-Gull, Timex Group, Tissot, Titan Industries, Thomas Tompion, Tommy Hilfiger, Tourneau, ToyWatch, Traser, Tudor, Tutima, Tiffany & Co, Ulysse Nardin, Universal Genève, Urwerk, Vacheron Constantin, Valjoux, Versace, Victorinox, Vostok watches, Waltham Watch Company, Christopher Ward, Wenger, West End Watch Co, Joseph Windmills, Xezo, Yema, Zenith, Zeno-Watch Basel, Zodiac Watches, Others', 'Classic, Casual, Sport, Dress', 'Pre 1920, 1920-1969, 1970-1999, 2000-Now', 'New, Used', 'Automatic, Manual, Quartz, Solar, Others', 'Stainless Steel, Solid Gold, Platinum, Titanium, Nickel, Aluminum, Plastic, Others', 'Leather, Solid Gold, Stainless Steel, Nickel, Titanium, Platinum, Rubber, Plastic', 'Yes, No', 1, '0000-00-00 00:00:00', '2017-02-09 03:30:55'),
(71, 8, 'Men''s Accessories', '', 0, '', 'Brand', 'Model', 'Year', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 8, 'Personal Care Devices', '', 0, '', 'Brand', 'Condition', '', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-09 03:21:12'),
(73, 8, 'Perfume - Incense for men', '', 0, '', 'Brand', 'Country of Origin', 'Condition', 'Original or Replica', '', '', '', '', '', '', 'New, Used', 'Original, Replica', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-09 03:20:36'),
(74, 8, 'Others - Men''s Fashion', '', 0, '', 'Brand', 'Country of Origin', 'Condition', '', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-09 03:18:53'),
(75, 9, 'Kids Furniture', '', 0, '', 'Brand', 'Condition', '', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-09 03:17:42'),
(76, 9, 'Strollers - Car Seats', '', 0, '', 'Brand', 'Condition', '', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-09 03:17:13'),
(77, 9, 'Kids Clothing', '', 0, '', 'Brand', 'Condition', '', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-09 03:16:43'),
(78, 9, 'Toys - Games', '', 0, '', 'Brand', 'Condition', '', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-09 03:16:07'),
(79, 9, 'Others - Baby - Kids', '', 0, '', 'Condition', '', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-09 03:15:29'),
(80, 10, 'Oils', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-09 03:14:44'),
(81, 10, 'Dates', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-09 03:14:29'),
(82, 10, 'Honey', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-09 03:14:09'),
(83, 10, 'Ready Cooked Meals', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-09 03:13:51'),
(84, 10, 'Desserts', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-09 03:13:26'),
(85, 10, 'Food Supplements', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-09 03:12:47'),
(86, 10, 'Others - Food - Supplements', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-09 03:12:21'),
(87, 11, 'Tutoring - Courses', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-09 03:11:57'),
(88, 11, 'Computers - Laptops', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-10 09:00:07'),
(89, 11, 'Home Repair', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-09 03:11:10'),
(90, 11, 'Food Catering - Events', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-09 03:10:42'),
(91, 11, 'Medical Services', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-09 03:10:17'),
(92, 11, 'Electrician services', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-09 03:09:58'),
(93, 11, 'Movers - Packers', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-09 03:09:43'),
(94, 11, 'Car Repair - Maintenance', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-09 03:09:23'),
(95, 11, 'Travel - Tourism', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-07 18:54:20'),
(96, 11, 'Cleaning Services', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-07 18:54:02'),
(97, 11, 'Legal Services', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-07 18:53:41'),
(98, 11, 'Maidservice', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-07 18:53:24'),
(99, 11, 'private schools & kindergartens', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-07 18:53:05'),
(100, 11, 'construction & building', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-07 18:52:45'),
(101, 11, 'massage & spa', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-07 18:52:27'),
(102, 11, 'colleges & universities', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-07 18:52:07'),
(103, 11, 'painting', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-07 18:51:45'),
(104, 11, 'other services', '', 0, '', 'Type of Service', 'Years of Experience', 'Education', 'Salary', 'Incentives', '', '', '', '', '1-3 Years, 3-5 Years, 5-10 Years, More than 10 Years, No Experience', 'Pre High School, High School, Some College, Bachelor''s Degree, Master''s Degree, Doctorate''s Degree', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-09 03:07:15'),
(105, 12, 'Engineering', '', 0, '', 'Job Title', 'Education', 'Years of Experience', 'Working Hours', 'Salary ', '', '', '', '', 'Pre High School, High School, Some College, Bachelor''s Degree, Master''s Degree, Doctorate''s Degree', '1-3 Years, 3-5 Years, 5-10 Years, More than 10 Years, No Experience', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-09 03:05:48'),
(106, 12, 'Admin - Secretary', '', 0, '', 'Job Title', 'University Degree', 'Years of Experience', 'Working Hours', 'Salary ', 'Incentives', '', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-07 18:47:14'),
(107, 12, 'Accounting - Finance', '', 0, '', 'Job Title', 'Years of Experience', 'Education', 'Working Hours', 'Salary ', 'Incentives', '', '', '', '1-3 Years, 3-5 Years, 5-10 Years, More than 10 Years, No Experience', 'Pre High School, High School, Some College, Bachelor''s Degree, Master''s Degree, Doctorate''s Degree', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-09 03:05:05'),
(108, 12, 'Medicine - Nursing', '', 0, '', 'Job Title', 'Education', 'Years of Experience', 'Working Hours', 'Salary ', 'Incentives', '', '', '', 'Pre High School, High School, Some College, Bachelor''s Degree, Master''s Degree, Doctorate''s Degree', '1-3 Years, 3-5 Years, 5-10 Years, More than 10 Years, No Experience', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-09 03:04:11'),
(109, 12, 'Computer - IT', '', 0, '', 'Job Title', 'Education', 'Years of Experience', 'Working Hours', 'Salary ', 'Incentives', '', '', '', 'Pre High School, High School, Some College, Bachelor''s Degree, Master''s Degree, Doctorate''s Degree', '1-3 Years, 3-5 Years, 5-10 Years, More than 10 Years, No Experience', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-09 03:03:28'),
(110, 12, 'Tutoring - Training', '', 0, '', 'Job Title', 'Education', 'Years of Experience', 'Working Hours', 'Salary ', 'Incentives', '', '', '', 'Pre High School, High School, Some College, Bachelor''s Degree, Master''s Degree, Doctorate''s Degree', '1-3 Years, 3-5 Years, 5-10 Years, More than 10 Years, No Experience', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-09 03:02:57'),
(111, 12, 'Sales - Marketing', '', 0, '', 'Job Title', 'Education', 'Years of Experience', 'Working Hours', 'Salary ', 'Incentives', '', '', '', 'Pre High School, High School, Some College, Bachelor''s Degree, Master''s Degree, Doctorate''s Degree', '1-3 Years, 3-5 Years, 5-10 Years, More than 10 Years, No Experience', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-09 03:02:10'),
(112, 12, 'Media - Design - Creative', '', 0, '', 'Job Title', 'Education', 'Years of Experience', 'Working Hours', 'Salary ', 'Incentives', '', '', '', 'Pre High School, High School, Some College, Bachelor''s Degree, Master''s Degree, Doctorate''s Degree', '1-3 Years, 3-5 Years, 5-10 Years, More than 10 Years, No Experience', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-09 03:01:16'),
(113, 12, 'Recruitment - HR', '', 0, '', 'Job Title', 'Education', 'Years of Experience', 'Salary', 'Incentives', 'Working Hours', '', '', '', 'Pre High School, High School, Some College, Bachelor''s Degree, Master''s Degree, Doctorate''s Degree', '1-3 Years, 3-5 Years, 5-10 Years, More than 10 Years, No Experience', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-09 03:00:45'),
(114, 12, 'Media - Advertising', '', 0, '', 'Job Title', 'Education', 'Years of Experience', 'Working Hours', 'Salary', 'Incentives', '', '', '', 'Pre High School, High School, Some College, Bachelor''s Degree, Master''s Degree, Doctorate''s Degree', '1-3 Years, 3-5 Years, 5-10 Years, More than 10 Years, No Experience', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-09 03:00:09'),
(115, 12, 'Costumer Service', '', 0, '', 'Job Title', 'Education', 'Years of Experience', 'Working Hours', 'Salary', 'Incentives', '', '', '', 'Pre High School, High School, Some College, Bachelor''s Degree, Master''s Degree, Doctorate''s Degree', '1-3 Years, 3-5 Years, 5-10 Years, More than 10 Years, No Experience', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-09 02:59:38'),
(116, 12, 'Drivers - Delivery', '', 0, '', 'Job Title', 'Has Car?', 'Working Hours', 'Years of Experience', 'Salary ', 'Incentives', 'Education', '', '', 'Yes, No', '', '1-3 Years, 3-5 Years, 5-10 Years, More than 10 Years, No Experience', '', '', 'Pre High School, High School, Some College, Bachelor''s Degree, Master''s Degree, Doctorate''s Degree', '', 1, '0000-00-00 00:00:00', '2017-02-09 02:59:01'),
(117, 12, 'Maids - Home Staff', '', 0, '', 'Education', 'Years of Experience', 'Salary', 'Incentives', 'Accomodation Included', '', '', '', 'Pre High School, High School, Some College, Bachelor''s Degree, Master''s Degree, Doctorate''s Degree', '1-3 Years, 3-5 Years, 5-10 Years, More than 10 Years, No Experience', '', '', 'Yes, No', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-09 02:58:08'),
(118, 12, 'Guards - Security', '', 0, '', 'Job Title', 'Years of Experience', 'Salary', 'Incentives', 'Night or Day Shift', 'Education', '', '', '', '1-3 Years, 3-5 Years, 5-10 Years, More than 10 Years, No Experience', '', '', 'Night Shift, Day Shift', 'Pre High School, High School, Some College, Bachelor''s Degree, Master''s Degree, Doctorate''s Degree', '', '', 1, '0000-00-00 00:00:00', '2017-02-09 02:56:29'),
(119, 12, 'Barber - Stylist', '', 0, '', 'Job Title', 'Years of Experience', 'Certificate', 'Salary', 'Incentives', 'Education', '', '', '', '1-3 Years, 3-5 Years, 5-10 Years, More than 10 Years, No Experience', 'Yes, No', '', '', 'Pre High School, High School, Some College, Bachelor''s Degree, Master''s Degree, Doctorate''s Degree', '', '', 1, '0000-00-00 00:00:00', '2017-02-09 02:55:42'),
(120, 12, 'Craftspersons- Artisans', '', 0, '', 'Job Title', 'Years of Experience', 'Skills', 'Salary', 'Incentives', 'Education', '', '', '', '1-3 Years, 3-5 Years, 5-10 Years, More than 10 Years, No Experience', '', '', '', 'Pre High School, High School, Some College, Bachelor''s Degree, Master''s Degree, Doctorate''s Degree', '', '', 1, '0000-00-00 00:00:00', '2017-02-09 02:54:36'),
(121, 12, 'Hospitality', '', 0, '', 'Job Title', 'Education', 'Years of Experience', 'Salary', 'Incentives', '', '', '', '', 'Pre High School, High School, Some College, Bachelor''s Degree, Master''s Degree, Doctorate''s Degree', '1-3 Years, 3-5 Years, 5-10 Years, More than 10 Years, No Experience', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-09 02:53:21'),
(122, 12, 'Travel - Tourism', '', 0, '', 'Job Title', 'Years of Experience', 'Education', 'Salary', 'Incentives', '', '', '', '', '1-3 Years, 3-5 Years, 5-10 Years, More than 10 Years, No Experience', 'Pre High School, High School, Some College, Bachelor''s Degree, Master''s Degree, Doctorate''s Degree', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-09 02:52:18'),
(123, 12, 'Legal - Law', '', 0, '', 'Job Title', 'Years of Experience', 'Education', 'Salary', 'Incentives', '', '', '', '', '1-3 Years, 3-5 Years, 5-10 Years, More than 10 Years, No Experience', 'Pre High School, High School, Some College, Bachelor''s Degree, Master''s Degree, Doctorate''s Degree', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-09 02:51:29'),
(124, 12, 'Management - Admin', '', 0, '', 'Admin Title', 'Education', 'Years of Experience', 'Salary', 'Incentives', '', '', '', '', 'Pre High School, High School, Some College, Bachelor''s Degree, Master''s Degree, Doctorate''s Degree', '1-3 Years, 3-5 Years, 5-10 Years, More than 10 Years, No Experience', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-09 02:50:43'),
(125, 12, 'Other Jobs', '', 0, '', 'Type of Job', 'Years of Experience', 'Education', 'Salary', 'Incentives', '', '', '', '', '1-3 Years, 3-5 Years, 5-10 Years, More than 10 Years, No Experience', 'Pre High School, High School, Some College, Bachelor''s Degree, Master''s Degree, Doctorate''s Degree', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-09 02:49:07'),
(126, 13, 'Submit Resume', '', 0, '', 'Career Type', 'Education', 'Years of Experience', 'University ', 'Able to Relocate', 'Languages', 'Last Position', 'Other Skills', 'Accounting-Finance, Admin-Secretary, Barber-Stylist, Computer- It, Customer Service, Artisans, Drivers- Delivery, Engineering, Guard- Security, Hospitality, Legal- Law, Maids- Home Staff, Management- Admin, Media-Advertising, Media- Design- Creative, Medicine- Nursing, Other Jobs', 'Pre High School, High School, Some College, Bachelor''s Degree, Master''s Degree, Doctorate''s Degree, N/A', '1-3 Years, 3-5 Years, 5-10 years, more than 10 Years, No Experience', '', 'Yes, No', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 21:34:08'),
(127, 14, 'Cats', '', 0, '', 'Type of Cat', 'Number of Cats', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-05 16:13:35'),
(128, 14, 'Birds', '', 0, '', 'Type of Bird', 'Number of Birds', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-05 16:12:49'),
(129, 14, 'Pigeons', '', 0, '', 'Type of Pigeon', 'Number of Pigeons', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-05 16:12:23'),
(130, 14, 'Sheep', '', 0, '', 'Type of Sheep', 'Number of Sheep', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-05 16:11:48'),
(131, 14, 'Chickens', '', 0, '', 'Type of Chicken', 'Number of Chicken', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-05 16:11:15'),
(132, 14, 'Horses', '', 0, '', 'Type of Horse', 'How Old it is?', 'Number of Horses', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-05 16:10:01'),
(133, 14, 'Parrots', '', 0, '', 'Type of Parrot', 'Talking or Not?', '', '', '', '', '', '', '', 'Talking, Not Talking', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-09 02:44:16'),
(134, 14, 'Dogs', '', 0, '', 'Type of Dog', 'Has Certificate?', '', '', '', '', '', '', '', 'Yes, No', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-09 02:41:37'),
(135, 14, 'Goats', '', 0, '', 'Type of Goat (s)', 'Number of Goats', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-05 16:07:27'),
(136, 14, 'Fish', '', 0, '', 'Type of Fish', 'Number of Fish', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-05 16:06:24'),
(137, 14, 'Camels', '', 0, '', 'Number of Camels', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-05 16:05:45'),
(138, 14, 'Accessories', '', 0, '', 'Type of Accessory', 'Condition', 'Number of Accessories', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-09 02:41:03'),
(139, 14, 'Other Animals', '', 0, '', 'Name of Animal', 'Number of Animals', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-05 16:03:59'),
(140, 15, 'Tickets', '', 0, '', 'Ticket Type', 'Issue Date', 'Number of Tickets', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-05 16:02:12'),
(141, 15, 'Musical Instruments', '', 0, '', 'Type of Instrument', 'Condition', 'How Old it is?', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-09 02:39:40'),
(142, 15, 'Collectibles', '', 0, '', 'Type', 'How Old it is?', 'Condition', '', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-09 02:38:11'),
(143, 15, 'Books - Magazines', '', 0, '', 'Author', 'Condition', 'Publish Year', 'Number of Copies', '', '', '', '', '', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-09 02:37:32'),
(144, 15, 'Sports - Leisure', '', 0, '', 'Type', 'Condition', '', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-09 02:37:01'),
(145, 15, 'Bicycles - Accessories', '', 0, '', 'Brand', 'Condition', 'How old it is?', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-09 02:36:32'),
(146, 15, 'Others', '', 0, '', 'Type', 'Condition', '', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-09 02:35:53'),
(147, 16, 'Professional Equipment', '', 0, '', 'Buy or Rent', 'Rental Period', 'Condition', '', '', '', '', '', 'Buy, Rent', '', 'New, Used', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-09 02:35:14'),
(148, 16, 'Businesses for Sale', '', 0, '', 'Type of Business', 'Years of Business', 'Buy or Partnership', '', '', '', '', '', '', '', 'Buy, Partnership', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-09 02:33:35'),
(149, 16, 'Office Furniture', '', 0, '', 'Type of Office Furniture', 'Condition', '', '', '', '', '', '', '', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-09 02:32:52'),
(150, 16, 'Others - Businesses Industrial', '', 0, '', 'Rent or Buy', 'Rental Period', 'Condition', '', '', '', '', '', 'Buy, Rent', '', 'New, Used', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-09 02:32:03'),
(151, 17, 'antique furniture', '', 0, '', 'Made by', 'Condition', 'How old it is?', 'Size', 'Weight', '', '', '', '', 'New, Used', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-09 02:30:53'),
(152, 17, 'watches', '', 0, '', 'Brand', 'Model', 'Manufacture Date', 'Condition', 'Mechanism', 'Case Material', 'Strap Material', 'Box & Guarantee', 'Accurist, Adamo, Adriatica, A.L.B Atelier Le Brézéguet, Alpina Watches, American Waltham, Andreas Strehler, Anonimo, Ansonia, Apache Pine, Apple Inc., Armand Nicolet, Armani, Armitron, John Arnold, ASUAG, Audemars Piguet, Ateliers deMonaco, Backes & Strauss, Baume et Mercier, Bausele, Ball Watch Company, Webb C. Ball, Bedat & Co, Bell & Ross, Benetton Group, Benrus, Binda Group, Blancpain, Blumarine, Ernest Borel, Bovet Fleurier, Edouard Bovet, Bovet, Abraham-Louis Breguet, Breguet, Breil, Breitling, Bremont Watch Company, Gustav Bruemmer, Buccellati, Bulgari, Bulova, Cartier, Casio, Cecil Purnell, Certina, Charriol, Chopard, Christian Bernard, Christian Jacques, Christopher Ward, Chronoswiss, Chung nam group, Chanel, Citizen Watch Co., Corum, Cyma Watches, Cobra, Concord watch, Czapek & Cie, Dakota Watch Company, Damasko, Damiani, George Daniels, Aaron Lufkin Dennison, Edward John Dent, Dior, D. Dornblüth & Sohn, Doxa S.A., Dreffa, Dubey Schaldenbrand, Roger Dubuis, Dueber-Hampden, Thomas Earnshaw, Ebel, Edox, Elgin, Emporio Armani, EPOS, Endura Watch Factory, ETA SA, ESPRIT, Eterna, Fastrack, A. Favre & Fils, Carlo Ferrara, Festina, Favre-Leuba, Fendi, Fila, Fortis Uhren, Frédérique Constant, Fossil, F. P. Journe, Charles Frodsham, Fullspot, Gallet & Co., Garmin, Léon Gallet, Romain Gauthier, Geneva Watch Group, General Watch Co, Louis George, Girard-Perregaux, Glashütte Original, Glycine Watch, George Graham, Greubel Forsey, Moritz Grossmann, Grovana Watch, Gruen Watch Co., G-Shock, GUB, Guess Watches Co., Hamilton Watch Company, Hangzhou Watch Company, Hanhart, Hanowa, John Harrison, Harry Winston, Hermès, HMT Limited, Hublot, Ikepod, Illinois Watch Company, Ingersoll, International Watch Co IWC, Invicta Watch Group, Jaeger-LeCoultre, Pierre Jaquet-Droz, Georg Jensen, Jacob & Co, Jean Perret, F.P. Journe, Jowissa, Junghans, Jules Jurgensen, Jorg Gray, Kienzle, Louis Moinet, Lancashire Watch Company, Lang & Heyne, A. Lange & Söhne, Jean Lassale, Leijona watch, Linde Werdelin, Lip, Peter Litherland, Longines, Minsk Watch Plant (Luch), Luminox, Lorus, Maitres du Temps, Manistee Watch, Manufacture royale, Marc Ecko, Mathey-Tissot, Maurice Lacroix, MB&F, MeisterSinger, Mido, Minerva, Louis Moinet, Molnija, Mondaine, Montblanc, Montegrappa, Morellato Group, Moschino, Mossimo, Movado, Franck Muller, Michele, Ulysse Nardin, Newgate Watches, Nivada, Nixon Watches, Nomos Glashütte, Nike Inc., Ollech & Wajs, Omega SA, Orfina, Orient Watch Co., Oris, Panerai, Parmigiani Fleurier, Parnis Watches, Antoni Patek, Patek Philippe & Co., Perrelet, Pequignet, Philip Zepter, Piaget SA, Adrien Philippe, Henry Pitkin, Poljot, Prada, Pulsar (watch), Rado, David Ramsay, Razer Inc., Raymond Weil, Regina, Reguladora, Ressence, Revue Thommen, Richard Mille, Roamer, Rodania, Rolex, Ronda AG, Rotary Watches, Daniel Roth, Relic, Sandoz watches, Sector, Seiko, Seikosha, Sekonda, Shinola, Skagen Designs, Alexander Shorokhoff, Slava watches, Roger W. Smith, Solvil et Titus, Speake-Marin, Sonata, Sprout Watches, Stowa, Stührling, Suunto, Swatch Group, TAG Heuer, TechnoMarine, Technos, Seth Thomas, Tianjin Sea-Gull, Timex Group, Tissot, Titan Industries, Thomas Tompion, Tommy Hilfiger, Tourneau, ToyWatch, Traser, Tudor, Tutima, Tiffany & Co, Ulysse Nardin, Universal Genève, Urwerk, Vacheron Constantin, Valjoux, Versace, Victorinox, Vostok watches, Waltham Watch Company, Christopher Ward, Wenger, West End Watch Co, Joseph Windmills, Xezo, Yema, Zenith, Zeno-Watch Basel, Zodiac Watches, Others', 'Classic, Casual, Sport, Dress', 'Pre 1920, 1920-1969, 1970-1999, 2000-Now', 'New, Used', 'Automatic, Manual, Quartz, Solar, Others', 'Stainless Steel, Solid Gold, Platinum, Titanium, Nickel, Aluminum, Plastic', 'Leather, Solid Gold, Stainless Steel, Nickel, Titanium, Platinum, Rubber, Plastic', 'Yes, No', 1, '0000-00-00 00:00:00', '2017-02-09 02:28:55');
INSERT INTO `sub_categories` (`id`, `category_id`, `sub_category`, `description`, `seq`, `image`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `details1`, `details2`, `details3`, `details4`, `details5`, `details6`, `details7`, `details8`, `active`, `created_at`, `updated_at`) VALUES
(153, 17, 'numismatics', '', 0, '', 'Country', 'Numismatics Type', 'Condition', 'Issue Year', '', '', '', '', '', 'Banknote, Coin, Others', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 21:59:02'),
(154, 17, 'stamps', '', 0, '', 'Issue Date', 'Country', 'Condition', 'Rare?', 'Size', 'Number of Stamps', '', '', '', '', 'New, Used', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 21:57:41'),
(155, 17, 'hand-made items', '', 0, '', 'Type of Hand-Made Item', 'Maker', 'How old it is', 'Condition', 'Size', 'Weight', 'Number of items', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-05 15:41:48'),
(156, 17, 'paintings', '', 0, '', 'Artist', 'How old it is', 'Condition', 'Size', 'Original or Copy', '', '', '', '', '', '', '', 'Original, Copy', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 21:56:42'),
(157, 17, 'memorabilia', '', 0, '', 'Type of Memorabilia', 'Maker', 'How old it is?', 'Condition', 'Size', '', '', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-05 15:39:43'),
(158, 17, 'souvenir', '', 0, '', 'Type of Souvenir', 'Maker', 'Condition', 'How old is Souvenir', 'Weight', 'Measures', '', '', '', '', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 21:56:07'),
(159, 17, 'other antiques', '', 0, '', 'Type of Antique', 'How Old it is?', 'Maker', '', '', '', '', '', '', '', 'Condition', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 21:55:53'),
(160, 18, 'man looking for marriage', '', 0, '', 'Age', 'Has Kids?', 'Able to Relocate?', 'Smoking?', 'Employed?', 'Marital Status', 'Religion', 'Nationality', '', 'Yes, No', 'Yes, No', 'Yes, No', 'Yes, No', 'Single, Divorced, Widowed', 'Muslim, Christian, Others', 'Egyptian, Jordanian, Kuwaiti, Lebanese, Qatari, Saudi, Omani, Palestinian, UAE, Others', 1, '0000-00-00 00:00:00', '2017-02-08 21:53:43'),
(161, 18, 'Woman Looking for Marriage', '', 0, '', 'Marital Status', 'Age', 'Has Kids?', 'Able to Relocate?', 'Smoking?', 'Employed?', 'Religion', 'Nationality', 'Single, Divorced, Widowed', '', 'Yes, No', 'Yes, No', 'Yes, No', 'Yes, No', 'Muslim, Christian, Others', 'Egyptian, Jordanian, Kuwaiti, Lebanese, Qatari, Saudi, Omani, Palestinian, UAE, Others', 1, '0000-00-00 00:00:00', '2017-02-08 21:52:11'),
(162, 19, 'graphic & design', '', 0, '', 'University Degree', 'Personal or Professional', 'Graphic Field', 'Years of Experience', '', '', '', '', 'Pre High School, High School, Some College, Bachelor''s Degree, Master''s Degree, Doctorate''s Degree, N/A', 'Personal, Professional', '', '1-3 Years, 3-5 Years, 5-10 Years, More than 10 Years, No Experience', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 21:48:43'),
(163, 19, 'digital marketing', '', 0, '', 'University Degree', 'Personal or Professional', 'Years of Experience', '', '', '', '', '', 'Pre High School, High School, Some College, Bachelor''s Degree, Master''s Degree, Doctorate''s Degree, N/A', 'Personal, Professional', '1-3 Years, 3-5 Years, 5-10 Years, More than 10 Years, No Experience', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 21:47:59'),
(164, 19, 'writing & translation', '', 0, '', 'University Degree', 'Personal or Professional', 'Years of Experience', '', '', '', '', '', 'Pre High School, High School, Some College, Bachelor''s Degree, Master''s Degree, Doctorate''s Degree, N/A', 'Personal, Professional', '1-3 Years, 3-5 Years, 5-10 Years, More than 10 Years, No Experience', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 21:46:57'),
(165, 19, 'video & animation', '', 0, '', 'University Degree', 'Personal or Professional', 'Years of Experience', '', '', '', '', '', 'Pre High School, High School, Some College, Bachelor''s Degree, Master''s Degree, Doctorate''s Degree, N/A', 'Personal, Professional', '1-3 Years, 3-5 Years, 5-10 Years, More than 10 Years, No Experience', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 21:46:04'),
(166, 19, 'music & audio', '', 0, '', 'University Degree', 'Personal or Professional', 'Years of Experience', '', '', '', '', '', 'Pre High School, High School, Some College, Bachelor''s Degree, Master''s Degree, Doctorate''s Degree, N/A', 'Personal, Professional', '1-3 Years, 3-5 Years, 5-10 Years, More than 10 Years, No Experience', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 21:45:14'),
(167, 19, 'programming & tech', '', 0, '', 'University Degree', 'Web Design Fields', 'Application Design Fields', 'Years of Experience', '', '', '', '', 'Pre High School, High School, Some College, Bachelor''s Degree, Master''s Degree, Doctorate''s Degree, N/A', '', '', '1-3 Years, 3-5 Years, 5-10 Years, More than 10 Years, No Experience', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 21:44:33'),
(168, 19, 'advertising businesses', '', 0, '', 'University Degree', 'Typr of Advertisement', 'Years of Experience', '', '', '', '', '', 'Pre High School, High School, Some College, Bachelor''s Degree, Master''s Degree, Doctorate''s Degree, N/A', '', '1-3 Years, 3-5 Years, 5-10 Years, More than 10 Years, No Experience', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 21:44:08'),
(169, 19, 'fun & lifestyle', '', 0, '', 'University Degree', 'Years of Experience', '', '', '', '', '', '', 'Pre High School, High School, Some College, Bachelor''s Degree, Master''s Degree, Doctorate''s Degree, N/A', '1-3 Years, 3-5 Years, 5-10 Years, More than 10 Years, No Experience', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 21:43:22'),
(170, 19, 'personal advice', '', 0, '', 'University Degree', 'Personal Advice Fields', 'Years of Experience', '', '', '', '', '', 'Pre High School, High School, Some College, Bachelor''s Degree, Master''s Degree, Doctorate''s Degree, N/A', '', '1-3 Years, 3-5 Years, 5-10 Years, More than 10 Years, No Experience', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 21:42:50'),
(171, 19, 'Web Programming', '', 0, '', 'Years of Experience', 'University Degree', 'Web Languages', 'Web design Fields', '', '', '', '', '1-3 Years, 3-5 Years, 5-10 Years, More than 10 Years, No Experience', 'Pre High School, High School, Some College, Bachelor''s Degree, Master''s Degree, Doctorate''s Degree, N/A', '', '', '', '', '', '', 1, '0000-00-00 00:00:00', '2017-02-08 21:41:05');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_type` tinyint(1) NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_show` tinyint(4) NOT NULL DEFAULT '0',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `photo` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=23 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_type`, `name`, `phone`, `phone_show`, `email`, `password`, `status`, `photo`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', '123456790', 1, 'admin@yahoo.com', '$2y$10$qiodPWh2K6TosGowuBdezOxMyQ.6EtHqXK2RwTZ32zTtr1J4MDavi', 1, '', 'QoCcYyQ2fleFilf07uFqSfQNTeWk3ocqSErw9fT3vG6ZhSA5ICq1jss6ZyFU', '2016-11-01 06:30:19', '2017-02-14 17:06:33'),
(2, 1, 'Manager', '123123123', 1, 'manager@yahoo.com', '$2y$10$Xe8pZD.44QTsFsPKDUGrNOffZ1kQfnpgR8waIomXffRCTXng2MGAm', 1, '', 'ZAn7QjWtkqLZ2vEHUmBZXPzjK6rqhSAwcjxQwBimRALil83T1J9D5XJVy9K9', '2016-11-01 06:37:19', '2016-11-23 02:06:28'),
(3, 1, 'Demo 01', '000000000', 1, 'demo01@yahoo.com', '$2y$10$qiodPWh2K6TosGowuBdezOxMyQ.6EtHqXK2RwTZ32zTtr1J4MDavi', 1, '3-images.jpg', 'raM9PhcEBNkOjfYbbfxuateLwk2CMha1BtNfVZItQub5pyZUHODqyjH1CN81', '2016-11-01 06:47:01', '2017-02-06 12:50:02'),
(4, 1, 'Demo 02', '0000000000', 1, 'demo02@yahoo.com', '$2y$10$CTBRgeDVNo.G9C7it6PqaeRAIa3gIufrVJkXvsWXvd3SAdcsBiogi', 1, '', 'skBKCQPjh2dYNoDLSOiSyNlcqE7ueNU9LoKleJHFpECLqRweJtHOUjUL03fe', '2016-11-01 06:50:47', '2017-01-19 20:52:44'),
(5, 1, 'Demo 03', '1234567890', 1, 'demo03@yahoo.com', '$2y$10$QBkp3o70HUyqacl5A14fxOZajN4evBvSqDLN4q2q5R6TmheJFHOy.', 1, '', '426ocsETUUPYHf2b5QpLKQEEW6NTQJnpeyB5MR2LdKUkw8joRzt3SG5jTIlm', '2016-11-08 23:11:09', '2017-01-19 20:53:01'),
(6, 1, 'Demo 04', '3008210313', 0, 'demo04@yahoo.com', '$2y$10$h4allGb/98FbO0jm9wKUPebA9UwVbHrlFJuMuHKbPFn3cBV.fMmK2', 1, '', 'LGyomLTKLRf4MOxBssCDEitVqgOn6CL9lQc5qukEzWBGUC9PyqTUyJtpgRkS', '2016-11-14 01:58:51', '2017-01-19 20:53:17'),
(11, 2, 'Test User 02', '923001212345', 1, 'ahmed.ayaz@yahoo.com', '$2y$10$Pk8Llta3N9Yw6svdtBXbaeMWy5MrVKdWwjqf3Z1UBRfXj7HtOo6SW', 1, '', NULL, '2017-01-14 00:20:37', '2017-02-04 13:33:33'),
(12, 2, 'Mohmammed Hassan', '00962795196796', 1, 'mohammad.furine@yahoo.com', '$2y$10$4O9ufgkI.n1r7LqlaTAF3OIelmiGV3e.9LyRD/5xJUunnK7EDI0P6', 1, '12-20170203_190127.jpg', 'wYnXbmWJxJ19jkvFA4k6LMalTHICJb7kz2DfaY5eknoccFe8WzOSKGRGbuYR', '2017-01-24 07:32:58', '2017-02-07 01:10:54'),
(13, 2, 'hasan ghaith', '0795196796', 0, 'hasancs100@gmail.com', '$2y$10$6QXXJEimynGamP0N9DPjkOeLX7BOZSW1l0HK175XrKukSTeNliE.y', 1, '', NULL, '2017-02-04 03:17:27', '2017-02-04 21:29:17'),
(14, 2, 'Mohammad Furien', '079883218', 1, 'mozo.odeh@yahoo.com', '$2y$10$3UkSmeC3PGsLDJsAwrKJWOncGtyrGzBUcbirId6FKtUsPhtU15JoG', 1, '', NULL, '2017-02-04 10:46:25', '2017-02-04 21:29:05'),
(15, 2, 'Mohammad Furien', '079883218', 0, 'Sared@yahoo.com', '$2y$10$AtEvANBPlHHJzgFlgHC1vuagDx/8qcN1nc.zpHgLE2LQDqsKraYSu', 1, '', NULL, '2017-02-04 10:47:11', '2017-02-04 21:28:50'),
(16, 1, 'Asif ali', '3479340558', 1, 'Asifa178@gmail.com', '$2y$10$GCA64NsKUXILlhR54g6ve.sJVvHlfGf6MvOPR2MpdjTNlXXgAw8pK', 1, '', '5T375ifGAl3nmOwORc74ccp84kLYhf', '2017-02-04 15:57:05', '2017-02-04 21:28:36'),
(17, 1, 'hasan ghaith', '0795196796', 1, 'hasanghaith17@gmail.com', '$2y$10$mY5ZiM/QPuinNEAHvWxT3e7W1L2sSwyQ7mXIhEqMWbEJ/pkKUB5Pa', 1, '', 'sO9JyztdpdQHtcHLueiEu7byQOROM3', '2017-02-04 20:07:30', '2017-02-04 20:13:46'),
(18, 1, 'fathi', '0795196796', 1, 'fathi.emad@yahoo.com', '$2y$10$GAtenpv3czUVyD3boV8QjOzcyYUPuI1XWkIAW4kmQuKCwMvdSfHKO', 1, '', 'pCL5VRqM1o3XarFB6CSFSTSO3UGve9', '2017-02-04 20:09:05', '2017-02-04 20:13:37'),
(19, 1, 'Mahmoud', '0796151789', 1, 'anas.1.2.3.4@hotmail.com', '$2y$10$nckn5KMDhp5v38zXDyvUQOAIZxsrSn6Qxly3c98XpqEmJiaD/Bbxe', 1, '', 'wRbzGp64uULL3WQ5nBRR4Lzx0Iqa7Q', '2017-02-04 20:18:18', '2017-02-04 21:28:11'),
(20, 1, 'Mahmoud Ghaith', '0799666431', 1, 'jackmeat@yahoo.com', '$2y$10$qgq9F.DFdXGFHUmQlShRw.xGhrvM8Qbvzy9QnNPJNmgAo1.QV5fqy', 1, '', 'CpIV4wUDTtp2f0tRHPH6NaSDuA0S0M', '2017-02-04 21:26:34', '2017-02-04 21:28:20'),
(21, 1, 'Samar Habash', '0799956599', 1, 'sooqalibaba@gmail.com', '$2y$10$E4/0pnZH5yEqAjNjteJ9IeoZXLi/O6K1uBphTj/j5VRXMwwetcqFK', 1, '21-stock-vector-bodyguard-bouncer-30223282.jpg', '0ikyy9S4sjja8xVGC5Q3B52FG0aIZGEXM4VJEM63iS1m6rP8KCdMM27vcEwh', '2017-02-07 17:01:08', '2017-02-12 14:49:14'),
(22, 1, 'Hasan', '079666666', 1, 'sooqalibaba@protonmail.com', '$2y$10$wGJZcQO8JWk.yz/tWipstuSb2zux.zehp62QXkO9GLZtBbyoh4a5q', 1, '22-sa.jpg', 'o5rFnU0rSdZr4oBQXxFznOHRnlVu88WRIA2lUl764B9sARSOEZPGOJryWGpU', '2017-02-14 05:33:23', '2017-02-14 05:52:49');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=7 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=23 ;

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
(16, 16, 1, NULL, NULL),
(17, 17, 1, NULL, NULL),
(18, 18, 1, NULL, NULL),
(19, 19, 1, NULL, NULL),
(20, 20, 1, NULL, NULL),
(21, 21, 1, NULL, NULL),
(22, 22, 1, NULL, NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
