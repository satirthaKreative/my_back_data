-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2019 at 04:28 PM
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
-- Database: `quick_siliguri`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `u_name` varchar(255) NOT NULL,
  `u_pass` varchar(255) NOT NULL,
  `u_img` varchar(255) NOT NULL,
  `u_quote` longtext NOT NULL,
  `u_address` varchar(255) NOT NULL,
  `u_org_pass` varchar(255) NOT NULL,
  `user_status` int(11) NOT NULL DEFAULT '0',
  `active_status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `u_name`, `u_pass`, `u_img`, `u_quote`, `u_address`, `u_org_pass`, `user_status`, `active_status`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '5d78935e967ccadmin.png', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Siliguri, WB', 'admin', 1, 1),
(2, 'employee', 'fa5473530e4d1a5a1e1eb53d2fedb10c', '5d84bd91088f6user-blue.png', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Jalpaiguri,WB', 'employee', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `advertize`
--

CREATE TABLE `advertize` (
  `id` int(11) NOT NULL,
  `p_image` text NOT NULL,
  `p_video` text NOT NULL,
  `pay_type` varchar(255) NOT NULL,
  `business_name` varchar(255) NOT NULL,
  `owner_name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `advertize`
--

INSERT INTO `advertize` (`id`, `p_image`, `p_video`, `pay_type`, `business_name`, `owner_name`, `status`) VALUES
(1, '', 'https://www.youtube.com/embed/mhh6cAWmdGg?autoplay=1', 'Cheque', 'Text', 'text', 0);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_about` longtext NOT NULL,
  `category_icon` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category_name`, `category_about`, `category_icon`, `status`) VALUES
(4, 'hotel', 'Hotel listing', '<i class=\'fa fa-bed\'></i>', 1),
(5, 'restaurant', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ', '<i class=\'im im-icon-Cocktail\'></i>', 1),
(6, 'event planner', 'event planner', '<i class=\'fa fa-calendar\'></i>', 1),
(7, 'gym & fitness', 'Healthy body give you more energy to do something big', '<i class=\'im im-icon-Dumbbell\'></i>', 1),
(9, 'car rentals', '', '<i class=\'fa fa-taxi\'></i>', 1),
(10, 'travel', '', '<i class=\'fa fa-ticket\'></i>', 1),
(11, 'automobile', '', '<i class=\'fa fa-car\'></i>', 1),
(12, 'babycare', '', '<i class=\'fa fa-child\'></i>', 1),
(13, 'banquets', '', '<i class=\'fa fa-building-o\'></i>', 1),
(14, 'books', '', '<i class=\'fa fa-book\'></i>', 1),
(15, 'bus', '', '<i class=\'fa fa-bus\'></i>', 1),
(16, 'caterers', '', '<i class=\'im im-icon-Chef-Hat\'></i>', 1),
(17, 'chemists', '', '<i class=\'fa fa-medkit\'></i>', 1),
(18, 'professionals', '', '<i class=\'fa fa-briefcase\'></i>', 1),
(19, 'dance & music', '', '<i class=\'fa fa-music\'></i>', 1),
(20, 'education', '', '<i class=\'fa fa-graduation-cap\'></i>', 1),
(21, 'emergency', '', '<i class=\'fa fa-ambulance\'></i>', 1),
(22, 'gift & shop', '', '<i class=\'fa fa-gift\'></i>', 1),
(23, 'flowers', '', '<i class=\'fa fa-tree\'></i>', 1),
(24, 'home decor', '', '<i class=\'fa fa-home\'></i>', 1),
(25, 'home utilities', '', '<i class=\'fa fa-paint-brush\'></i>', 1),
(26, 'hospitals', '', '<i class=\'fa fa-hospital-o\'></i>', 1),
(27, 'industrial products', '', '<i class=\'fa fa-industry\'></i>', 1),
(28, 'insurance', '', '<i class=\'fa fa-umbrella\'></i>', 1),
(29, 'interiar designer', '', '<i class=\'fa fa-home\'></i>', 1),
(30, 'real estate', '', '<i class=\'fa fa-building\'></i>', 1),
(31, 'internet', '', '<i class=\'fa fa-internet-explorer\'></i>', 1),
(32, 'jewellery', '', '<i class=\'fa fa-diamond\'></i>', 1),
(33, 'labs', '', '<i class=\'fa fa-flask\'></i>', 1),
(34, 'personal care', '', '<i class=\'fa fa-user\'></i>', 1),
(35, 'pest control', '', '<i class=\'fa fa-bug\'></i>', 1),
(36, 'pet & pet care', '', '<i class=\'fa fa-paw\'></i>', 1),
(37, 'restaurants & pubs', '', '<i class=\'fa fa-cutlery\'></i>', 1),
(38, 'security services', '', '<i class=\'fa fa-lock\'></i>', 1),
(39, 'wine shop', '', '<i class=\'fa fa-beer\'></i>', 1),
(40, 'sports goods', '', '<i class=\'fa fa-futbol-o\'></i>', 1),
(42, 'laudary sevices', '', '<i class=\'fa fa-cc-diners-club\'></i>', 1),
(43, 'training institute', '', '<i class=\'fa fa-pencil\'></i>', 1),
(44, 'transporters', '', '<i class=\'fa fa-truck\'></i>', 1),
(45, 'shopping', '', '<i class=\'fa fa-shopping-cart\'></i>', 1),
(46, 'electronics', '', '<i class=\'fa fa-lightbulb-o\'></i>', 1),
(47, 'packers & movers', '', '<i class=\'fa fa-archive\'></i>', 1),
(48, 'Courier', '', '<i class=\'fa fa-truck\'></i>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `category_icon`
--

CREATE TABLE `category_icon` (
  `id` int(11) NOT NULL,
  `cate_icon` varchar(255) NOT NULL,
  `icon_value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category_icon`
--

INSERT INTO `category_icon` (`id`, `cate_icon`, `icon_value`) VALUES
(1, '<i class=\'fa fa-ticket\'></i>', 'icon for Travel - Air/ Trains ticket '),
(2, '<i class=\'fa fa-car\'></i>', 'icon for Automobile'),
(3, '<i class=\'fa fa-child\'></i>', 'icon for Babycare'),
(4, '<i class=\'fa fa-building-o\'></i>', 'icon for Banquets'),
(5, '<i class=\'fa fa-bed\'></i>', 'icon for Hotels'),
(6, '<i class=\'fa fa-book\'></i>', 'icon for Books'),
(7, '<i class=\'fa fa-bus\'></i>', 'icon for bus'),
(8, '<i class=\'fa fa-taxi\'></i>', 'icon for car rentals'),
(9, '<i class=\'im im-icon-Chef-Hat\'></i>', 'icon for caterers'),
(10, '<i class=\'fa fa-medkit\'></i>', 'icon for chemists'),
(11, '<i class=\'fa fa-briefcase\'></i>', 'icon for professionals - like doctor/ advocate/ engineers/ interior desiger'),
(12, '<i class=\'fa fa-music\'></i>', 'icon for Dance & music'),
(13, '<i class=\'fa fa-graduation-cap\'></i>', 'icon for Education - school/ college/ play school'),
(14, '<i class=\'fa fa-ambulance\'></i>', 'icon for Emergency'),
(15, '<i class=\'fa fa-gift\'></i>', 'icon for Gift & Shop'),
(16, '<i class=\'fa fa-tree\'></i>', 'icon for Flowers'),
(17, '<i class=\'fa fa-home\'></i>', 'icon for Home Decor'),
(18, '<i class=\'fa fa-paint-brush\'></i>', 'icon for Home utilities'),
(19, '<i class=\'fa fa-hospital-o\'></i>', 'icon for Hospitals'),
(20, '<i class=\'fa fa-industry\'></i>', 'icon for Industial Products'),
(21, '<i class=\'fa fa-umbrella\'></i>', 'icon for Insurance'),
(22, '<i class=\'fa fa-home\'></i>', 'icon for Interior Designer'),
(23, '<i class=\'fa fa-building\'></i>', 'icon for Real Estate'),
(24, '<i class=\'fa fa-internet-explorer\'></i>', 'icon for Internet'),
(25, '<i class=\'fa fa-diamond\'></i>', 'icon for Jewellery'),
(26, '<i class=\'fa fa-user\'></i>', 'icon for Personal Care - beauty / salons'),
(27, '<i class=\'fa fa-bug \'></i>', 'icon for Pest Control'),
(28, '<i class=\'fa fa-paw\'></i>', 'icon for Pet & Pet Care'),
(29, '<i class=\'fa fa-cutlery\'></i>', 'icon for Restaurants & Pubs'),
(30, '<i class=\'fa fa-lock\'></i>', 'icon for Security Services'),
(31, '<i class=\'fa fa-beer\'></i>', 'icon for wine shop'),
(32, '<i class=\'fa fa-futbol-o\'></i>', 'icon for sport goods'),
(33, '<i class=\'im im-icon-Dumbbell\'></i>', 'icon for Gym & Fitness'),
(34, '<i class=\'fa fa-cc-diners-club\'></i>', 'icon for Laudary Services'),
(35, '<i class=\'fa fa-pencil\'></i>', 'icon for Traning Institute'),
(36, '<i class=\'fa fa-truck\'></i>', 'icon for Transporters'),
(37, '<i class=\'fa fa-shopping-cart\'></i>', 'icon for shopping'),
(38, '<i class=\'fa fa-flask\'></i>', 'icon for labs'),
(39, '<i class=\'fa fa-lightbulb-o\'></i>', 'icon for Electronics'),
(40, '<i class=\'fa fa-archive\'></i>', 'icon for packers & Movers'),
(41, '<i class=\'fa fa-calendar\'></i>', 'icon for events'),
(45, '<i class=\'fa fa-truck\'></i>', 'icon for Courier');

-- --------------------------------------------------------

--
-- Table structure for table `company_reg`
--

CREATE TABLE `company_reg` (
  `id` int(11) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `contact_person` varchar(255) NOT NULL,
  `contact_mail` varchar(255) NOT NULL,
  `contact_number` varchar(255) NOT NULL,
  `alt_contact_no` varchar(255) NOT NULL,
  `user_pass` varchar(255) NOT NULL,
  `user_org_pass` varchar(255) NOT NULL,
  `user_address` longtext NOT NULL,
  `map_link` longtext NOT NULL,
  `user_image` varchar(255) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `prime_id` int(11) NOT NULL DEFAULT '0',
  `prime_start_date` varchar(255) NOT NULL,
  `prime_end_date` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `payment_mode` varchar(255) NOT NULL,
  `admin_approval` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company_reg`
--

INSERT INTO `company_reg` (`id`, `company_name`, `contact_person`, `contact_mail`, `contact_number`, `alt_contact_no`, `user_pass`, `user_org_pass`, `user_address`, `map_link`, `user_image`, `reg_date`, `prime_id`, `prime_start_date`, `prime_end_date`, `status`, `payment_mode`, `admin_approval`) VALUES
(1, 'Excel Solution', 'satirtha', '', '7908194389', '', '', '', '', '', '', '2019-09-19 13:40:11', 0, '', '', 1, '', 0),
(2, 'highflyer hotel', 'Rakesh Goyal', '', '7908194389', '', '', '', '', '', '', '2019-09-20 04:32:03', 0, '', '', 1, '', 1),
(3, 'AV Restaurant', 'Amon', '', '7908194389', '', '', '', '', '', '', '2019-09-20 05:11:01', 6, '2019-09-20', '2020-03-20', 1, 'Cheque', 1),
(9, 'OYO gym', 'Raghab Sen', '', '8942034443', '', '', '', '', '', '', '2019-09-23 07:34:09', 6, '2019-09-23', '2019-12-23', 1, 'Cash', 1),
(10, 'Punjabi Hotel', 'Harmit Singh', '', '7908194389', '', '', '', '', '', '', '2019-09-25 06:31:34', 12, '2019-09-25', '2020-09-25', 1, 'Cash', 1),
(11, 'Jio cab', 'jio owner', '', '8942034443', '', '', '', '', '', '', '2019-09-25 13:07:42', 0, '', '', 1, '', 1),
(12, 'lahore restaurant', 'lahore', '', '7908194389', '', 'd41d8cd98f00b204e9800998ecf8427e', '', '', '', '', '2019-09-26 10:14:20', 6, '2019-09-26', '2019-12-26', 1, 'Cash', 0),
(13, 'anita', 'anita', '', '9832461046', '', '', '', '', '', '', '2019-09-27 10:04:16', 0, '', '', 1, '', 0),
(14, 'Raj School', 'Satirtha', '', '7908194389', '', '', '', '', '', '', '2019-09-27 17:38:25', 0, '', '', 1, '', 0),
(15, 'Raju', 'raju', 'rahul@mail.co', '8942034443', 'none', '', '', '', '', '', '2019-09-30 15:08:03', 0, '', '', 1, '', 0),
(16, 'google', '', '', '8942034443', '', '', '', '', '', '', '2019-10-01 16:51:35', 0, '', '', 1, '', 0),
(17, 'testst', '', '', '7908194389', '', '', '', '', '', '', '2019-10-01 16:51:36', 0, '', '', 1, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `customer_enquiry`
--

CREATE TABLE `customer_enquiry` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `prime_status` int(11) NOT NULL DEFAULT '0',
  `property_id` int(11) NOT NULL,
  `customer_enquiry` longtext NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_contact` varchar(255) NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_enquiry`
--

INSERT INTO `customer_enquiry` (`id`, `company_id`, `customer_id`, `prime_status`, `property_id`, `customer_enquiry`, `status`, `customer_name`, `customer_email`, `customer_contact`, `added_on`) VALUES
(1, 3, 0, 6, 2, 'ask???', 1, '', 'satirtha63@gmail.com', '7908194389', '2019-09-24 07:40:40'),
(2, 2, 0, 0, 1, 'text', 1, 'MANISH', 'manish@asls.com', '9434068526', '2019-09-25 06:59:18'),
(3, 3, 0, 6, 2, 'ask??', 1, 'Rajesh', 'satirtha63@gmail.com', '7908194389', '2019-09-26 12:08:53'),
(4, 10, 0, 12, 5, 'test', 1, 'arup roy', 'aroy5530@gmail.com', '8695051391', '2019-09-27 09:43:12');

-- --------------------------------------------------------

--
-- Table structure for table `customer_reviews`
--

CREATE TABLE `customer_reviews` (
  `id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_rating` int(11) NOT NULL,
  `customer_subject` varchar(255) NOT NULL,
  `customer_review` longtext NOT NULL,
  `review_posted_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_reviews`
--

INSERT INTO `customer_reviews` (`id`, `property_id`, `company_id`, `customer_id`, `customer_name`, `customer_email`, `customer_rating`, `customer_subject`, `customer_review`, `review_posted_on`, `status`) VALUES
(1, 1, 2, 0, 'SATIRTHA', 'satirtha@gmail.com', 5, 'mail', 'mail', '2019-09-20 05:09:20', 1),
(2, 2, 3, 0, 'Adam', 'adm@mail.co', 4, 'text', 'test', '2019-09-20 05:20:02', 1),
(3, 4, 9, 0, 'Rakesh Goyal', 'rakesh@mail.com', 4, 'text', 'text', '2019-09-23 11:47:10', 1),
(4, 5, 10, 0, 'Rajesh Mitra', 'mitra@gmail.com', 4, 'text', 'text', '2019-09-25 06:57:27', 1),
(5, 6, 11, 0, 'Sarthak', 'sarthak@gmail.com', 3, 'Test', 'Test', '2019-09-25 13:35:33', 1),
(6, 7, 12, 0, 'fbd', 'satirtha63@gmail.com', 4, 'fsgs', 'vdsvs', '2019-09-26 11:17:30', 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer_tbl`
--

CREATE TABLE `customer_tbl` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_contact` varchar(255) NOT NULL,
  `user_pass` varchar(255) NOT NULL,
  `user_org_pass` varchar(255) NOT NULL,
  `user_image` varchar(255) NOT NULL,
  `user_email` varchar(150) NOT NULL,
  `user_address` longtext NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `important_prop`
--

CREATE TABLE `important_prop` (
  `id` int(11) NOT NULL,
  `stars` int(11) NOT NULL DEFAULT '0',
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `listing_details`
--

CREATE TABLE `listing_details` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `property_name` varchar(255) NOT NULL,
  `property_type` int(11) NOT NULL,
  `property_address` varchar(255) NOT NULL,
  `property_details` longtext NOT NULL,
  `property_price` varchar(255) NOT NULL,
  `property_open_time` time NOT NULL,
  `property_image` varchar(255) NOT NULL,
  `map_links` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `property_close_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `listing_details`
--

INSERT INTO `listing_details` (`id`, `user_id`, `property_name`, `property_type`, `property_address`, `property_details`, `property_price`, `property_open_time`, `property_image`, `map_links`, `status`, `property_close_time`) VALUES
(1, 2, 'highflyer hotel', 4, 'Siliguri', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '799', '10:00:00', 'feyrfufweur.png', 'Bigbazar,hakim para, siliguri', 1, '19:00:00'),
(2, 3, 'AV Restaurant', 5, 'Malbazar', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '799', '07:00:00', 'text.jpg', 'Hanuman mandir, caltex more, malbazar, 735221', 1, '19:00:00'),
(4, 9, 'OYO gym', 7, 'Siliguri', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '349', '07:00:00', 'gym1.jpg', 'haidarpara,siliguri', 1, '17:00:00'),
(5, 10, 'Punjabi Hotel', 4, '', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '799', '08:00:00', 'ghdftqadgvueftcfyutbe.png', 'haidarpara,siliguri', 1, '21:00:00'),
(6, 11, 'Jio cab', 9, 'Siliguri', 'What people fear most about tragedy is its randomness - a taxi cab jumps the curb and hits a pedestrian, a gun misfires and kills a bystander. Better to have some rational cause and effect between incident and injury. And if cause and effect aren\'t possible, better that there at least be some reward for all the suffering.', '399', '07:00:00', 'cabs.jpg', 'Siliguri', 1, '20:00:00'),
(7, 12, 'lahore restaurant', 5, '', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '599', '09:00:00', 'ltt.jpeg', 'siliguri', 1, '10:00:00'),
(8, 15, 'Raju', 6, 'Jalpaiguri', 'sfadf', '66', '00:00:00', '585be1aa1600002400bdf2a6.jpeg', 'test', 1, '00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id` int(11) NOT NULL,
  `location_name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `location_name`, `status`) VALUES
(2, 'Siliguri', 1),
(4, 'Jalpaiguri', 1),
(5, 'Malbazar', 1),
(6, 'Coochbehar', 1);

-- --------------------------------------------------------

--
-- Table structure for table `prime_listing`
--

CREATE TABLE `prime_listing` (
  `id` int(11) NOT NULL,
  `prime_months` int(11) NOT NULL,
  `prime_pay` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prime_listing`
--

INSERT INTO `prime_listing` (`id`, `prime_months`, `prime_pay`, `status`) VALUES
(2, 6, '700', 1),
(3, 12, '1200', 1),
(5, 3, '200', 1);

-- --------------------------------------------------------

--
-- Table structure for table `property_images`
--

CREATE TABLE `property_images` (
  `id` int(11) NOT NULL,
  `property_id` varchar(255) NOT NULL,
  `property_images` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `property_images`
--

INSERT INTO `property_images` (`id`, `property_id`, `property_images`, `status`) VALUES
(1, '1', 'ghdftqadgvueftcfyutbe.png', 1),
(2, '1', 'ytuywreftu.png', 1),
(3, '1', 'feyrfufweur.png', 1),
(4, '1', 'text.jpg', 1),
(5, '2', 'ytuywreftu.png', 1),
(6, '2', 'feyrfufweur.png', 1),
(7, '2', 'tetstts.png', 1),
(8, '2', 'text.jpg', 1),
(9, '5', 'ytuywreftu.png', 1),
(10, '5', 'feyrfufweur.png', 1),
(11, '5', 'tetstts.png', 1),
(12, '5', 'text.jpg', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `advertize`
--
ALTER TABLE `advertize`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_icon`
--
ALTER TABLE `category_icon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_reg`
--
ALTER TABLE `company_reg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_enquiry`
--
ALTER TABLE `customer_enquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_reviews`
--
ALTER TABLE `customer_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_tbl`
--
ALTER TABLE `customer_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `important_prop`
--
ALTER TABLE `important_prop`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `listing_details`
--
ALTER TABLE `listing_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prime_listing`
--
ALTER TABLE `prime_listing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_images`
--
ALTER TABLE `property_images`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `advertize`
--
ALTER TABLE `advertize`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `category_icon`
--
ALTER TABLE `category_icon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `company_reg`
--
ALTER TABLE `company_reg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `customer_enquiry`
--
ALTER TABLE `customer_enquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customer_reviews`
--
ALTER TABLE `customer_reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `customer_tbl`
--
ALTER TABLE `customer_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `important_prop`
--
ALTER TABLE `important_prop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `listing_details`
--
ALTER TABLE `listing_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `prime_listing`
--
ALTER TABLE `prime_listing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `property_images`
--
ALTER TABLE `property_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
