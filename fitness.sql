-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2019 at 04:21 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fitness`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_basic_information`
--

CREATE TABLE `wp_basic_information` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `weight` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `age` int(11) NOT NULL,
  `posted_by` date NOT NULL,
  `goal` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wp_basic_information`
--

INSERT INTO `wp_basic_information` (`id`, `user_id`, `fullname`, `weight`, `height`, `age`, `posted_by`, `goal`) VALUES
(1, 2, 'John Doe', 72, 170, 30, '2019-02-18', 'lose weight'),
(2, 3, 'Raj', 75, 5, 23, '2019-02-26', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `wp_brandon_comment`
--

CREATE TABLE `wp_brandon_comment` (
  `comment_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` longtext,
  `commented_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `week_number` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wp_brandon_comment`
--

INSERT INTO `wp_brandon_comment` (`comment_id`, `admin_id`, `user_id`, `comment`, `commented_on`, `week_number`) VALUES
(4, 1, 2, 'Nice', '2018-12-16 15:46:46', 1),
(5, 1, 2, 'Great', '2018-12-16 15:46:46', 2),
(6, 1, 2, 'Very Good', '2018-12-16 15:46:46', 3),
(7, 1, 2, 'Awesome!!!', '2018-12-16 15:46:46', 4);

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-02-26 09:10:07', '2019-02-26 09:10:07', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_exercise_category`
--

CREATE TABLE `wp_exercise_category` (
  `exe_id` int(11) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `added_by` int(11) NOT NULL DEFAULT '0',
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `weeknumber` varchar(255) DEFAULT NULL,
  `day` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wp_exercise_category`
--

INSERT INTO `wp_exercise_category` (`exe_id`, `category`, `added_by`, `added_on`, `weeknumber`, `day`) VALUES
(1, 'Squat', 1, '2019-02-20 19:02:41', '1', 'Monday'),
(2, 'DL', 1, '2019-02-20 19:02:41', '1', 'Monday'),
(3, 'SL', 1, '2019-02-20 19:02:41', '1', 'Monday'),
(4, 'Leg Ext', 1, '2019-02-20 19:02:41', '1', 'Monday'),
(5, 'St Calf', 1, '2019-02-20 19:02:41', '1', 'Monday'),
(6, 'Hor Push', 1, '2019-02-20 19:04:02', '1', 'Tuesday'),
(7, 'Hor Pull', 1, '2019-02-20 19:04:02', '1', 'Tuesday'),
(8, 'Ver Push', 1, '2019-02-20 19:04:02', '1', 'Tuesday'),
(9, 'Ver Pull', 1, '2019-02-20 19:04:02', '1', 'Tuesday'),
(10, 'Triceps', 1, '2019-02-20 19:04:02', '1', 'Tuesday'),
(11, 'Biceps', 1, '2019-02-20 19:04:02', '1', 'Tuesday'),
(12, 'HH', 1, '2019-02-20 19:05:17', '1', 'Wednesday'),
(13, 'LP', 1, '2019-02-20 19:05:17', '1', 'Wednesday'),
(14, 'SL', 1, '2019-02-20 19:05:17', '1', 'Wednesday'),
(15, 'Leg Ext', 1, '2019-02-20 19:05:17', '1', 'Wednesday'),
(16, 'Leg Curl', 1, '2019-02-20 19:05:17', '1', 'Wednesday'),
(17, 'Se Calves', 1, '2019-02-20 19:05:17', '1', 'Wednesday'),
(18, 'Ver Push', 1, '2019-02-20 19:06:41', '1', 'Thursday'),
(19, 'Hor Push', 1, '2019-02-20 19:06:41', '1', 'Thursday'),
(20, 'Dips', 1, '2019-02-20 19:06:41', '1', 'Thursday'),
(21, 'Triceps', 1, '2019-02-20 19:06:41', '1', 'Thursday'),
(22, 'Flys', 1, '2019-02-20 19:06:41', '1', 'Thursday'),
(23, 'Hor Pull', 1, '2019-02-20 19:09:04', '1', 'Friday'),
(24, 'Ver Pull', 1, '2019-02-20 19:09:04', '1', 'Friday'),
(25, 'Wt B Ext', 1, '2019-02-20 19:09:04', '1', 'Friday'),
(26, 'Biceps', 1, '2019-02-20 19:09:04', '1', 'Friday'),
(27, 'Face Pull', 1, '2019-02-20 19:09:04', '1', 'Friday');

-- --------------------------------------------------------

--
-- Table structure for table `wp_exercise_report`
--

CREATE TABLE `wp_exercise_report` (
  `eid` int(11) NOT NULL,
  `exercise_category` varchar(255) DEFAULT NULL,
  `exercise` varchar(255) DEFAULT NULL,
  `set1_reps` varchar(255) DEFAULT NULL,
  `set1_weight` varchar(255) DEFAULT NULL,
  `set1_total` varchar(255) DEFAULT NULL,
  `set2_reps` varchar(255) DEFAULT NULL,
  `set2_weight` varchar(255) DEFAULT NULL,
  `set2_total` varchar(255) DEFAULT NULL,
  `set3_reps` varchar(255) DEFAULT NULL,
  `set3_weight` varchar(255) DEFAULT NULL,
  `set3_total` varchar(255) DEFAULT NULL,
  `set4_reps` varchar(255) DEFAULT NULL,
  `set4_weight` varchar(255) DEFAULT NULL,
  `set4_total` varchar(255) DEFAULT NULL,
  `set5_reps` varchar(255) DEFAULT NULL,
  `set5_weight` varchar(255) DEFAULT NULL,
  `set5_total` varchar(255) DEFAULT NULL,
  `note` longtext,
  `user_id` int(11) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `week` int(11) NOT NULL,
  `day` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wp_exercise_report`
--

INSERT INTO `wp_exercise_report` (`eid`, `exercise_category`, `exercise`, `set1_reps`, `set1_weight`, `set1_total`, `set2_reps`, `set2_weight`, `set2_total`, `set3_reps`, `set3_weight`, `set3_total`, `set4_reps`, `set4_weight`, `set4_total`, `set5_reps`, `set5_weight`, `set5_total`, `note`, `user_id`, `created_on`, `week`, `day`, `date`) VALUES
(1, 'Squat', NULL, '1', '2', '2', '3', '4', '12', '5', '6', '30', '7', '8', '56', '9', '10', '90', 'Test', 2, '2019-02-20 19:16:05', 1, 'Monday', '2019-02-20'),
(2, 'DL', NULL, '10', '9', '90', '8', '7', '56', '6', '5', '30', '4', '3', '12', '2', '1', '2', 'Test', 2, '2019-02-20 19:16:05', 1, 'Monday', '2019-02-20'),
(3, 'SL', NULL, '2', '3', '6', '4', '5', '20', '6', '7', '42', '8', '9', '72', '10', '1', '10', 'Test', 2, '2019-02-20 19:16:05', 1, 'Monday', '2019-02-20'),
(4, 'Leg Ext', NULL, '3', '4', '12', '5', '6', '30', '7', '8', '56', '9', '1', '9', '2', '3', '6', 'Test', 2, '2019-02-20 19:16:05', 1, 'Monday', '2019-02-20'),
(5, 'St Calf', NULL, '4', '5', '20', '6', '7', '42', '8', '9', '72', '1', '2', '2', '3', '4', '12', 'Test', 2, '2019-02-20 19:16:05', 1, 'Monday', '2019-02-20'),
(30, 'Hor Push', NULL, '5', '6', '30', '6', '7', '42', '8', '9', '72', '124', '5', '620', '6', '5', '30', 'Test', 2, '2019-02-24 20:43:14', 1, 'Tuesday', '2019-02-24'),
(31, 'Hor Pull', NULL, '8', '6', '48', '7', '8', '56', '8', '9', '72', '9', '7', '63', '5', '6', '30', 'Test', 2, '2019-02-24 20:43:14', 1, 'Tuesday', '2019-02-24'),
(32, 'Ver Push', NULL, '1', '1', '1', '2', '2', '4', '3', '3', '9', '4', '4', '16', '5', '5', '25', 'Good', 2, '2019-02-24 20:43:14', 1, 'Tuesday', '2019-02-24'),
(33, 'Ver Pull', NULL, '2', '4', '8', '6', '8', '48', '9', '7', '63', '5', '4', '20', '6', '6', '36', 'Good', 2, '2019-02-24 20:43:14', 1, 'Tuesday', '2019-02-24'),
(34, 'Triceps', NULL, '8', '7', '56', '9', '8', '72', '6', '3', '18', '7', '6', '42', '8', '6', '48', 'Awesome', 2, '2019-02-24 20:43:14', 1, 'Tuesday', '2019-02-24'),
(35, 'Biceps', NULL, '2', '4', '6', '7', '9', '63', '9', '5', '45', '7', '4', '28', '4', '6', '24', 'Great', 2, '2019-02-24 20:43:14', 1, 'Tuesday', '2019-02-24'),
(36, 'Squat', NULL, '6', '7', '42', '7', '6', '42', '7', '5', '35', '7', '8', '56', '9', '8', '72', '', 3, '2019-02-26 09:57:05', 1, 'Monday', '2019-02-26'),
(37, 'DL', NULL, '78', '78', '6084', '7', '8', '56', '5', '6', '30', '8', '4', '32', '7', '5', '35', '', 3, '2019-02-26 09:57:05', 1, 'Monday', '2019-02-26'),
(38, 'SL', NULL, '9', '8', '72', '8', '7', '56', '7', '6', '42', '6', '5', '30', '5', '4', '20', '', 3, '2019-02-26 09:57:05', 1, 'Monday', '2019-02-26'),
(39, 'Leg Ext', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 3, '2019-02-26 09:57:05', 1, 'Monday', '2019-02-26'),
(40, 'St Calf', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 3, '2019-02-26 09:57:06', 1, 'Monday', '2019-02-26'),
(41, 'Hor Push', NULL, '8', '7', '56', '9', '8', '72', '7', '6', '42', '6', '5', '30', '5', '4', '20', '', 3, '2019-02-26 10:02:50', 1, 'Tuesday', '2019-02-26'),
(42, 'Hor Pull', NULL, '7', '6', '42', '7', '5', '35', '7', '4', '28', '7', '3', '21', '6', '6', '36', '', 3, '2019-02-26 10:02:50', 1, 'Tuesday', '2019-02-26'),
(43, 'Ver Push', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 3, '2019-02-26 10:02:50', 1, 'Tuesday', '2019-02-26'),
(44, 'Ver Pull', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 3, '2019-02-26 10:02:50', 1, 'Tuesday', '2019-02-26'),
(45, 'Triceps', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 3, '2019-02-26 10:02:50', 1, 'Tuesday', '2019-02-26'),
(46, 'Biceps', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 3, '2019-02-26 10:02:50', 1, 'Tuesday', '2019-02-26');

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/fitness', 'yes'),
(2, 'home', 'http://localhost/fitness', 'yes'),
(3, 'blogname', 'Fitness', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'admin@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:74:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:21:\"fitness-Gym/index.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'twentynineteen', 'yes'),
(41, 'stylesheet', 'twentynineteen', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '43764', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '43764', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '1', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'cron', 'a:3:{i:1554196209;a:4:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1554196230;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(112, 'theme_mods_twentynineteen', 'a:1:{s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(127, 'can_compress_scripts', '1', 'no'),
(140, 'recently_activated', 'a:0:{}', 'yes'),
(157, '_site_transient_timeout_theme_roots', '1554196918', 'no'),
(158, '_site_transient_theme_roots', 'a:3:{s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(160, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:2:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.1.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.1.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.1.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.1.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.1.1\";s:7:\"version\";s:5:\"5.1.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.1.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.1.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.1.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.1.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.1.1\";s:7:\"version\";s:5:\"5.1.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1554195139;s:15:\"version_checked\";s:5:\"5.0.4\";s:12:\"translations\";a:0:{}}', 'no'),
(161, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1554195143;s:7:\"checked\";a:3:{s:14:\"twentynineteen\";s:3:\"1.2\";s:15:\"twentyseventeen\";s:3:\"2.0\";s:13:\"twentysixteen\";s:3:\"1.8\";}s:8:\"response\";a:3:{s:14:\"twentynineteen\";a:4:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.3.zip\";}s:15:\"twentyseventeen\";a:4:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.1\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.2.1.zip\";}s:13:\"twentysixteen\";a:4:{s:5:\"theme\";s:13:\"twentysixteen\";s:11:\"new_version\";s:3:\"1.9\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentysixteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentysixteen.1.9.zip\";}}s:12:\"translations\";a:0:{}}', 'no'),
(162, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1554195148;s:7:\"checked\";a:3:{s:19:\"akismet/akismet.php\";s:3:\"4.1\";s:21:\"fitness-Gym/index.php\";s:3:\"1.0\";s:9:\"hello.php\";s:5:\"1.7.1\";}s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.1.1\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(163, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:15:\"admin@gmail.com\";s:7:\"version\";s:5:\"5.0.4\";s:9:\"timestamp\";i:1554195146;}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-02-26 09:10:07', '2019-02-26 09:10:07', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2019-02-26 09:10:07', '2019-02-26 09:10:07', '', 0, 'http://localhost/fitness/?p=1', 0, 'post', '', 1),
(2, 1, '2019-02-26 09:10:07', '2019-02-26 09:10:07', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/fitness/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2019-02-26 09:10:07', '2019-02-26 09:10:07', '', 0, 'http://localhost/fitness/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-02-26 09:10:07', '2019-02-26 09:10:07', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost/fitness.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2019-02-26 09:10:07', '2019-02-26 09:10:07', '', 0, 'http://localhost/fitness/?page_id=3', 0, 'page', '', 0),
(4, 1, '2019-02-26 09:10:32', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-02-26 09:10:32', '0000-00-00 00:00:00', '', 0, 'http://localhost/fitness/?p=4', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_progress_pic`
--

CREATE TABLE `wp_progress_pic` (
  `pic_id` int(11) NOT NULL,
  `frontimage` varchar(255) DEFAULT NULL,
  `leftimage` varchar(255) DEFAULT NULL,
  `backimage` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `week_number` int(255) DEFAULT NULL,
  `uploaded_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wp_progress_pic`
--

INSERT INTO `wp_progress_pic` (`pic_id`, `frontimage`, `leftimage`, `backimage`, `user_id`, `week_number`, `uploaded_on`) VALUES
(1, '5c103a921786b.png', '5c103a921793a.png', '5c103afbdc4e8.png', 2, 1, '2018-12-11 22:32:27'),
(2, '5c6b205a61da2.jpg', '', '', 2, 2, '2019-02-18 21:15:07'),
(3, '5c750a372e8e7.jpg', '5c750a372f63b.jpg', '5c750a37300c9.jpg', 3, 1, '2019-02-26 09:43:19');

-- --------------------------------------------------------

--
-- Table structure for table `wp_supsystic_tbl_columns`
--

CREATE TABLE `wp_supsystic_tbl_columns` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_id` int(10) UNSIGNED DEFAULT NULL,
  `index` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_supsystic_tbl_diagrams`
--

CREATE TABLE `wp_supsystic_tbl_diagrams` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_id` int(10) UNSIGNED DEFAULT NULL,
  `start_row` int(10) UNSIGNED DEFAULT NULL,
  `start_col` int(10) UNSIGNED DEFAULT NULL,
  `end_row` int(10) UNSIGNED DEFAULT NULL,
  `end_col` int(10) UNSIGNED DEFAULT NULL,
  `data` mediumtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_supsystic_tbl_rows`
--

CREATE TABLE `wp_supsystic_tbl_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_id` int(10) UNSIGNED DEFAULT NULL,
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_supsystic_tbl_rows`
--

INSERT INTO `wp_supsystic_tbl_rows` (`id`, `table_id`, `data`) VALUES
(1, 1, 'a:1:{s:5:\"cells\";a:5:{i:0;a:6:{s:1:\"d\";s:0:\"\";s:2:\"cv\";s:0:\"\";s:1:\"h\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:1;a:6:{s:1:\"d\";s:0:\"\";s:2:\"cv\";s:0:\"\";s:1:\"h\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:2;a:6:{s:1:\"d\";s:0:\"\";s:2:\"cv\";s:0:\"\";s:1:\"h\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:3;a:6:{s:1:\"d\";s:0:\"\";s:2:\"cv\";s:0:\"\";s:1:\"h\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:4;a:6:{s:1:\"d\";s:0:\"\";s:2:\"cv\";s:0:\"\";s:1:\"h\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}}}'),
(2, 1, 'a:1:{s:5:\"cells\";a:5:{i:0;a:6:{s:1:\"d\";s:0:\"\";s:2:\"cv\";s:0:\"\";s:1:\"h\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:1;a:6:{s:1:\"d\";s:0:\"\";s:2:\"cv\";s:0:\"\";s:1:\"h\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:2;a:6:{s:1:\"d\";s:0:\"\";s:2:\"cv\";s:0:\"\";s:1:\"h\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:3;a:6:{s:1:\"d\";s:0:\"\";s:2:\"cv\";s:0:\"\";s:1:\"h\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:4;a:6:{s:1:\"d\";s:0:\"\";s:2:\"cv\";s:0:\"\";s:1:\"h\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}}}'),
(3, 1, 'a:1:{s:5:\"cells\";a:5:{i:0;a:6:{s:1:\"d\";s:0:\"\";s:2:\"cv\";s:0:\"\";s:1:\"h\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:1;a:6:{s:1:\"d\";s:0:\"\";s:2:\"cv\";s:0:\"\";s:1:\"h\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:2;a:6:{s:1:\"d\";s:0:\"\";s:2:\"cv\";s:0:\"\";s:1:\"h\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:3;a:6:{s:1:\"d\";s:0:\"\";s:2:\"cv\";s:0:\"\";s:1:\"h\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:4;a:6:{s:1:\"d\";s:0:\"\";s:2:\"cv\";s:0:\"\";s:1:\"h\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}}}'),
(4, 1, 'a:1:{s:5:\"cells\";a:5:{i:0;a:6:{s:1:\"d\";s:0:\"\";s:2:\"cv\";s:0:\"\";s:1:\"h\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:1;a:6:{s:1:\"d\";s:0:\"\";s:2:\"cv\";s:0:\"\";s:1:\"h\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:2;a:6:{s:1:\"d\";s:0:\"\";s:2:\"cv\";s:0:\"\";s:1:\"h\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:3;a:6:{s:1:\"d\";s:0:\"\";s:2:\"cv\";s:0:\"\";s:1:\"h\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:4;a:6:{s:1:\"d\";s:0:\"\";s:2:\"cv\";s:0:\"\";s:1:\"h\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}}}'),
(5, 1, 'a:1:{s:5:\"cells\";a:5:{i:0;a:6:{s:1:\"d\";s:0:\"\";s:2:\"cv\";s:0:\"\";s:1:\"h\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:1;a:6:{s:1:\"d\";s:0:\"\";s:2:\"cv\";s:0:\"\";s:1:\"h\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:2;a:6:{s:1:\"d\";s:0:\"\";s:2:\"cv\";s:0:\"\";s:1:\"h\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:3;a:6:{s:1:\"d\";s:0:\"\";s:2:\"cv\";s:0:\"\";s:1:\"h\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}i:4;a:6:{s:1:\"d\";s:0:\"\";s:2:\"cv\";s:0:\"\";s:1:\"h\";s:0:\"\";s:1:\"t\";s:4:\"text\";s:2:\"ft\";s:0:\"\";s:1:\"m\";a:0:{}}}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_supsystic_tbl_tables`
--

CREATE TABLE `wp_supsystic_tbl_tables` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `meta` text,
  `settings` text NOT NULL,
  `woo_settings` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_supsystic_tbl_tables`
--

INSERT INTO `wp_supsystic_tbl_tables` (`id`, `title`, `created_at`, `meta`, `settings`, `woo_settings`) VALUES
(1, 'Test', '2018-12-10 10:04:05', NULL, 'a:0:{}', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_supsystic_tbl_woo_columns`
--

CREATE TABLE `wp_supsystic_tbl_woo_columns` (
  `id` int(11) NOT NULL,
  `columns_name` varchar(128) DEFAULT NULL,
  `columns_nice_name` varchar(128) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_supsystic_tbl_woo_columns`
--

INSERT INTO `wp_supsystic_tbl_woo_columns` (`id`, `columns_name`, `columns_nice_name`) VALUES
(1, 'id', 'ID'),
(2, 'product_title', 'Name'),
(3, 'sku', 'SKU'),
(4, 'thumbnail', 'Thumbnail'),
(5, 'categories', 'Categories'),
(6, 'price', 'Price'),
(7, 'attribute', 'Attribute'),
(8, 'description', 'Summary'),
(9, 'add_to_cart', 'Buy'),
(10, 'reviews', 'Reviews'),
(11, 'date', 'Date');

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:3:{s:64:\"2636e71458b46c47e57804e3c40a48cf9f9601f2360fc2335abd819ca9e322a2\";a:4:{s:10:\"expiration\";i:1551346728;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:129:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134\";s:5:\"login\";i:1551173928;}s:64:\"c2a17100d915835dd353b167c29cf68a8cb5021807ceabdf8f48def64fa8bd12\";a:4:{s:10:\"expiration\";i:1551351880;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36\";s:5:\"login\";i:1551179080;}s:64:\"f68b9531f7666ea2d813c29813625008e45f8eab3b3b986904f8d2a93d987782\";a:4:{s:10:\"expiration\";i:1551415926;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36\";s:5:\"login\";i:1551243126;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 3, 'nickname', 'raj'),
(19, 3, 'first_name', 'raj'),
(20, 3, 'last_name', 'das'),
(21, 3, 'description', ''),
(22, 3, 'rich_editing', 'true'),
(23, 3, 'syntax_highlighting', 'true'),
(24, 3, 'comment_shortcuts', 'false'),
(25, 3, 'admin_color', 'fresh'),
(26, 3, 'use_ssl', '0'),
(27, 3, 'show_admin_bar_front', 'true'),
(28, 3, 'locale', ''),
(29, 3, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(30, 3, 'wp_user_level', '0'),
(31, 3, 'dismissed_wp_pointers', 'wp496_privacy'),
(33, 1, 'wp_user-settings', 'mfold=f'),
(34, 1, 'wp_user-settings-time', '1551174241');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BoEynr9zI8xniIZhKgma81SAIaS490.', 'admin', 'admin@gmail.com', '', '2019-02-26 09:10:06', '', 0, 'admin'),
(2, 'user1', '$P$B9EMN//mNtGcFQ8kOxlrISO7oTmcWy0', 'user1', 'user1@gmail.com', '', '0000-00-00 00:00:00', '', 0, 'Brandon'),
(3, 'raj', '$P$BOUHthSSgr1FycTvtnfxUzsFYk7ayt0', 'raj', 'raj@mail.com', '', '2019-02-26 09:40:29', '1551174031:$P$BjY7KMkKUsc/COb0pfdcWSj8XIuQnq0', 0, 'raj das');

-- --------------------------------------------------------

--
-- Table structure for table `wp_weekly_answer`
--

CREATE TABLE `wp_weekly_answer` (
  `ans_id` int(11) NOT NULL,
  `answer` longtext,
  `qs_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `week_number` int(11) NOT NULL DEFAULT '0',
  `answered_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wp_weekly_answer`
--

INSERT INTO `wp_weekly_answer` (`ans_id`, `answer`, `qs_id`, `user_id`, `week_number`, `answered_on`) VALUES
(1, '', 1, 3, 1, '2019-02-26 09:43:40'),
(2, '', 2, 3, 1, '2019-02-26 09:43:40'),
(3, '', 3, 3, 1, '2019-02-26 09:43:40'),
(4, '', 10, 3, 1, '2019-02-26 09:43:40'),
(5, '', 11, 3, 1, '2019-02-26 09:43:41'),
(6, '', 12, 3, 1, '2019-02-26 09:43:41'),
(7, '', 13, 3, 1, '2019-02-26 09:43:41'),
(8, '', 14, 3, 1, '2019-02-26 09:43:41'),
(9, '', 15, 3, 1, '2019-02-26 09:43:41'),
(10, '', 16, 3, 1, '2019-02-26 09:43:41'),
(11, '', 17, 3, 1, '2019-02-26 09:43:41'),
(12, '', 18, 3, 1, '2019-02-26 09:43:41'),
(13, '', 19, 3, 1, '2019-02-26 09:43:41'),
(14, '', 20, 3, 1, '2019-02-26 09:43:41'),
(15, '', 21, 3, 1, '2019-02-26 09:43:41'),
(16, '', 22, 3, 1, '2019-02-26 09:43:41'),
(17, '', 68, 3, 1, '2019-02-26 09:43:41');

-- --------------------------------------------------------

--
-- Table structure for table `wp_weekly_question`
--

CREATE TABLE `wp_weekly_question` (
  `q_id` int(11) NOT NULL,
  `question` longtext,
  `week_number` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wp_weekly_question`
--

INSERT INTO `wp_weekly_question` (`q_id`, `question`, `week_number`, `user_id`, `created_on`) VALUES
(1, 'How were each of the followings this week and Elaborate  if possible', 1, 1, '2018-12-14 13:46:15'),
(2, 'How was focus and clarity ?(Brain fog/Clear/Unfocused)', 1, 1, '2018-12-14 13:46:15'),
(3, 'Performance and Strength in the Gym ?(PR\'s Etc)', 1, 1, '2019-02-18 19:10:35'),
(4, 'How were each of the followings this week and Elaborate if possible', 2, 1, '2018-12-14 13:47:42'),
(5, 'How was Focus and Clarity? (Brain Fog/ Clear/ Unfocused)	', 2, 1, '2019-02-18 19:16:10'),
(6, 'Performance and Strength in the Gym (PR’s Etc)	', 2, 1, '2019-02-18 19:16:23'),
(7, 'How were each of the followings this week and Elaborate if possible', 3, 1, '2018-12-14 13:48:47'),
(8, 'How was Focus and Clarity? (Brain Fog/ Clear/ Unfocused)	', 3, 1, '2019-02-18 19:24:49'),
(9, '	Performance and Strength in the Gym (PR’s Etc)	', 3, 1, '2019-02-18 19:25:05'),
(10, 'What was Activity like this week?	', 1, 1, '2019-02-18 19:14:29'),
(11, 'Motivation and Mental:	', 1, 1, '2019-02-18 19:14:29'),
(12, 'What was overall Energy like this week ?:	', 1, 1, '2019-02-18 19:14:29'),
(13, 'How was overall food quality?	', 1, 1, '2019-02-18 19:14:29'),
(14, 'Were you Compliant Adherence (Hit macros Consistently within 5g ):	', 1, 1, '2019-02-18 19:14:29'),
(15, 'How many hours of sleep each night and quality:	', 1, 1, '2019-02-18 19:14:29'),
(16, 'What’s Sex Drive Like (Hormone Indicative):	', 1, 1, '2019-02-18 19:14:29'),
(17, 'What is your skin quality Like (Acne)	', 1, 1, '2019-02-18 19:14:29'),
(18, 'How much water are you drinking on a daily basis:	', 1, 1, '2019-02-18 19:14:29'),
(19, 'What was Digestion like this week Issues bloating or iregularity:	', 1, 1, '2019-02-18 19:14:29'),
(20, 'How was your overall mood this week?	', 1, 1, '2019-02-18 19:14:29'),
(21, 'What is your goal for this week?	', 1, 1, '2019-02-18 19:14:29'),
(22, 'Any other relevant information you think I should know. Something Awesome or One Positive thing that happened	', 1, 1, '2019-02-18 19:14:29'),
(23, 'What was Activity like this week?	', 2, 1, '2019-02-18 19:20:26'),
(24, 'Motivation and Mental:	', 2, 1, '2019-02-18 19:20:26'),
(25, 'What was overall Energy like this week ?', 2, 1, '2019-02-18 19:20:26'),
(26, 'What was hunger level like this week:	', 2, 1, '2019-02-18 19:20:26'),
(27, 'How was overall food quality?	', 2, 1, '2019-02-18 19:20:26'),
(28, 'Were you Compliant Adherence (Hit macros Consistently within 5g ):', 2, 1, '2019-02-18 19:20:26'),
(29, 'How many hours of sleep each night and quality:', 2, 1, '2019-02-18 19:20:26'),
(30, 'What’s Sex Drive Like (Hormone Indicative):', 2, 1, '2019-02-18 19:20:26'),
(31, 'What is your skin quality Like (Acne)	', 2, 1, '2019-02-18 19:20:26'),
(32, 'How much water are you drinking on a daily basis:', 2, 1, '2019-02-18 19:20:26'),
(33, 'What was Digestion like this week Issues bloating or iregularity:', 2, 1, '2019-02-18 19:20:26'),
(34, 'How was your overall mood this week?', 2, 1, '2019-02-18 19:20:26'),
(35, 'What is your goal for this week?	', 2, 1, '2019-02-18 19:20:26'),
(36, 'Any other relevant information you think I should know. Something Awesome or One Positive thing that happened	', 2, 1, '2019-02-18 19:20:26'),
(37, 'What was Activity like this week?	', 3, 1, '2019-02-18 19:30:09'),
(38, 'Motivation and Mental:	', 3, 1, '2019-02-18 19:30:09'),
(39, 'What was overall Energy like this week ?', 3, 1, '2019-02-18 19:30:09'),
(40, 'What was hunger level like this week:', 3, 1, '2019-02-18 19:30:09'),
(41, 'How was overall food quality?	', 3, 1, '2019-02-18 19:30:09'),
(42, 'Were you Compliant Adherence (Hit macros Consistently within 5g ):', 3, 1, '2019-02-18 19:30:09'),
(43, 'How many hours of sleep each night and quality:', 3, 1, '2019-02-18 19:30:09'),
(44, 'What’s Sex Drive Like (Hormone Indicative):', 3, 1, '2019-02-18 19:30:09'),
(45, 'What is your skin quality Like (Acne)	', 3, 1, '2019-02-18 19:30:09'),
(46, 'How much water are you drinking on a daily basis:', 3, 1, '2019-02-18 19:30:09'),
(47, 'What was Digestion like this week Issues bloating or iregularity:	', 3, 1, '2019-02-18 19:30:09'),
(48, 'How was your overall mood this week?', 3, 1, '2019-02-18 19:30:09'),
(49, 'What is your goal for this week?	', 3, 1, '2019-02-18 19:30:09'),
(50, 'Any other relevant information you think I should know. Something Awesome or One Positive thing that happened', 3, 1, '2019-02-18 19:30:09'),
(51, 'How were each of the following this week and Elaborate if possible', 4, 1, '2019-02-18 19:37:02'),
(52, 'How was Focus and Clarity? (Brain Fog/ Clear/ Unfocused)', 4, 1, '2019-02-18 19:37:02'),
(53, 'Performance and Strength in the Gym (PR’s Etc)', 4, 1, '2019-02-18 19:37:02'),
(54, 'What was Activity like this week?', 4, 1, '2019-02-18 19:37:02'),
(55, 'Motivation and Mental:', 4, 1, '2019-02-18 19:37:02'),
(56, 'What was overall Energy like this week ?', 4, 1, '2019-02-18 19:37:02'),
(57, 'What was hunger level like this week:', 4, 1, '2019-02-18 19:37:02'),
(58, 'How was overall food quality?', 4, 1, '2019-02-18 19:37:02'),
(59, 'Were you Compliant Adherence (Hit macros Consistently within 5g ):', 4, 1, '2019-02-18 19:37:02'),
(60, 'How many hours of sleep each night and quality:', 4, 1, '2019-02-18 19:37:02'),
(61, 'What’s Sex Drive Like (Hormone Indicative):', 4, 1, '2019-02-18 19:37:02'),
(62, 'What is your skin quality Like (Acne)', 4, 1, '2019-02-18 19:37:02'),
(63, 'How much water are you drinking on a daily basis:', 4, 1, '2019-02-18 19:37:02'),
(64, 'What was Digestion like this week Issues bloating or iregularity:', 4, 1, '2019-02-18 19:37:02'),
(65, 'How was your overall mood this week?', 4, 1, '2019-02-18 19:37:02'),
(66, 'What is your goal for this week?', 4, 1, '2019-02-18 19:37:02'),
(67, 'Any other relevant information you think I should know. Something Awesome or One Positive thing that happened', 4, 1, '2019-02-18 19:37:02'),
(68, 'Good progress this week ', 1, 1, '2019-02-18 21:03:15');

-- --------------------------------------------------------

--
-- Table structure for table `wp_weekly_track`
--

CREATE TABLE `wp_weekly_track` (
  `week_id` int(11) NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `weight` varchar(255) DEFAULT NULL,
  `protien` varchar(255) DEFAULT NULL,
  `carb` varchar(255) DEFAULT NULL,
  `fat` varchar(255) DEFAULT NULL,
  `fibre` varchar(255) DEFAULT NULL,
  `calories` varchar(255) DEFAULT NULL,
  `training` varchar(255) DEFAULT NULL,
  `gym` varchar(255) DEFAULT NULL,
  `recovery` varchar(255) DEFAULT NULL,
  `hunger` varchar(255) DEFAULT NULL,
  `energy` varchar(255) DEFAULT NULL,
  `digestive` varchar(255) DEFAULT NULL,
  `stress` varchar(255) DEFAULT NULL,
  `gloucose` varchar(255) DEFAULT NULL,
  `sleep_quality` varchar(255) DEFAULT NULL,
  `notes` longtext,
  `sleep` varchar(255) DEFAULT NULL,
  `alcohol` varchar(255) DEFAULT NULL,
  `water` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `week_number` varchar(255) DEFAULT NULL,
  `day` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wp_weekly_track`
--

INSERT INTO `wp_weekly_track` (`week_id`, `date`, `weight`, `protien`, `carb`, `fat`, `fibre`, `calories`, `training`, `gym`, `recovery`, `hunger`, `energy`, `digestive`, `stress`, `gloucose`, `sleep_quality`, `notes`, `sleep`, `alcohol`, `water`, `user_id`, `week_number`, `day`) VALUES
(4, '12-12-2018', '10', '200', '200', '100', '20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 2, '1', '1'),
(5, '13-12-2018', '6', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 2, '1', '2'),
(6, '14-12-2018', '8', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 2, '1', '3'),
(7, '15-12-2018', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 2, '1', '4'),
(8, '16-12-2018', '3', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 2, '1', '5'),
(10, '26-02-2019', '74', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 3, '1', '1'),
(11, '26-02-2019', '72', '76', '8', '8', '.09', '6', '9', '6', '9', '9', '10', '8', '07', '06', '9', '', '7', '0', '87', 3, '2', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_basic_information`
--
ALTER TABLE `wp_basic_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_brandon_comment`
--
ALTER TABLE `wp_brandon_comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_exercise_category`
--
ALTER TABLE `wp_exercise_category`
  ADD PRIMARY KEY (`exe_id`);

--
-- Indexes for table `wp_exercise_report`
--
ALTER TABLE `wp_exercise_report`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_progress_pic`
--
ALTER TABLE `wp_progress_pic`
  ADD PRIMARY KEY (`pic_id`);

--
-- Indexes for table `wp_supsystic_tbl_columns`
--
ALTER TABLE `wp_supsystic_tbl_columns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_supsystic_tbl_diagrams`
--
ALTER TABLE `wp_supsystic_tbl_diagrams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_supsystic_tbl_rows`
--
ALTER TABLE `wp_supsystic_tbl_rows`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_supsystic_tbl_tables`
--
ALTER TABLE `wp_supsystic_tbl_tables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_supsystic_tbl_woo_columns`
--
ALTER TABLE `wp_supsystic_tbl_woo_columns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `wp_weekly_answer`
--
ALTER TABLE `wp_weekly_answer`
  ADD PRIMARY KEY (`ans_id`);

--
-- Indexes for table `wp_weekly_question`
--
ALTER TABLE `wp_weekly_question`
  ADD PRIMARY KEY (`q_id`);

--
-- Indexes for table `wp_weekly_track`
--
ALTER TABLE `wp_weekly_track`
  ADD PRIMARY KEY (`week_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_basic_information`
--
ALTER TABLE `wp_basic_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_brandon_comment`
--
ALTER TABLE `wp_brandon_comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_exercise_category`
--
ALTER TABLE `wp_exercise_category`
  MODIFY `exe_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `wp_exercise_report`
--
ALTER TABLE `wp_exercise_report`
  MODIFY `eid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_progress_pic`
--
ALTER TABLE `wp_progress_pic`
  MODIFY `pic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_supsystic_tbl_columns`
--
ALTER TABLE `wp_supsystic_tbl_columns`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_supsystic_tbl_diagrams`
--
ALTER TABLE `wp_supsystic_tbl_diagrams`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_supsystic_tbl_rows`
--
ALTER TABLE `wp_supsystic_tbl_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wp_supsystic_tbl_tables`
--
ALTER TABLE `wp_supsystic_tbl_tables`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_supsystic_tbl_woo_columns`
--
ALTER TABLE `wp_supsystic_tbl_woo_columns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_weekly_answer`
--
ALTER TABLE `wp_weekly_answer`
  MODIFY `ans_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `wp_weekly_question`
--
ALTER TABLE `wp_weekly_question`
  MODIFY `q_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `wp_weekly_track`
--
ALTER TABLE `wp_weekly_track`
  MODIFY `week_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
