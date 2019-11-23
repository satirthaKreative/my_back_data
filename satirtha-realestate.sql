-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2019 at 04:36 PM
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
-- Database: `satirtha-realestate`
--

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `banner_img` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `banner_img`, `status`) VALUES
(6, '5cc6f37ec4d6b.png', 0),
(7, '5cc6f3d50bcee.jpg', 0),
(8, '5cc6f3d8e6994.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `blog_id` int(11) NOT NULL,
  `blog_title` varchar(255) DEFAULT NULL,
  `blog_desc` longtext,
  `blog_img` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `view` varchar(255) DEFAULT NULL,
  `added_by` int(11) NOT NULL DEFAULT '0',
  `blog_cat_id` int(11) NOT NULL DEFAULT '0',
  `estimatetime` varchar(255) DEFAULT NULL,
  `month` varchar(255) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  `blog_shortdesc` longtext,
  `featured` enum('0','1','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`blog_id`, `blog_title`, `blog_desc`, `blog_img`, `status`, `added_on`, `view`, `added_by`, `blog_cat_id`, `estimatetime`, `month`, `year`, `blog_shortdesc`, `featured`) VALUES
(1, 'Art Gossip by Mike Charles', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias enim, ipsa exercitationem veniam quae sunt.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias enim, ipsa exercitationem veniam quae sunt.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias enim, ipsa exercitationem veniam quae sunt.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias enim, ipsa exercitationem veniam quae sunt.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias enim, ipsa exercitationem veniam quae sunt.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias enim, ipsa exercitationem veniam quae sunt.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias enim, ipsa exercitationem veniam quae sunt.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias enim, ipsa exercitationem veniam quae sunt.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias enim, ipsa exercitationem veniam quae sunt.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias enim, ipsa exercitationem veniam quae sunt.</p>\r\n', '5cc2f82cd24f7.jpg', 0, '2019-04-26 12:39:37', NULL, 1, 0, '0', 'Apr', '2019', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias enim, ipsa exercitationem veniam quae sunt.', '1'),
(2, 'Art Gossip by Mike Charles', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias enim, ipsa exercitationem veniam quae sunt.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias enim, ipsa exercitationem veniam quae sunt.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias enim, ipsa exercitationem veniam quae sunt.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias enim, ipsa exercitationem veniam quae sunt.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias enim, ipsa exercitationem veniam quae sunt.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias enim, ipsa exercitationem veniam quae sunt.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias enim, ipsa exercitationem veniam quae sunt.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias enim, ipsa exercitationem veniam quae sunt.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias enim, ipsa exercitationem veniam quae sunt.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias enim, ipsa exercitationem veniam quae sunt.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias enim, ipsa exercitationem veniam quae sunt.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias enim, ipsa exercitationem veniam quae sunt.</p>\r\n', '5cc2f8c5cc96b.jpg', 0, '2019-04-26 12:25:41', NULL, 1, 0, '0', 'Apr', '2019', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias enim, ipsa exercitationem veniam quae sunt.', '1'),
(3, 'Art Gossip by Mike Charles', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias enim, ipsa exercitationem veniam quae sunt.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias enim, ipsa exercitationem veniam quae sunt.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias enim, ipsa exercitationem veniam quae sunt.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias enim, ipsa exercitationem veniam quae sunt.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias enim, ipsa exercitationem veniam quae sunt.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias enim, ipsa exercitationem veniam quae sunt.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias enim, ipsa exercitationem veniam quae sunt.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias enim, ipsa exercitationem veniam quae sunt.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias enim, ipsa exercitationem veniam quae sunt.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias enim, ipsa exercitationem veniam quae sunt.</p>\r\n', '5cc2f8e9b2092.jpg', 0, '2019-05-14 06:54:46', NULL, 1, 0, '0', 'Apr', '2019', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias enim, ipsa exercitationem veniam quae sunt.', '1');

-- --------------------------------------------------------

--
-- Table structure for table `blogip`
--

CREATE TABLE `blogip` (
  `ip_id` int(11) NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `ip_blog_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cate_id` int(11) NOT NULL,
  `cate_title` varchar(100) NOT NULL,
  `cate_image` varchar(255) NOT NULL,
  `cate_status` int(11) NOT NULL,
  `cate_banner` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cate_id`, `cate_title`, `cate_image`, `cate_status`, `cate_banner`) VALUES
(1, 'Plugin Development', '', 1, NULL),
(2, 'Wordpress', '', 1, NULL),
(3, 'Ecommerce', '', 1, NULL),
(4, 'Web Development', '', 1, NULL),
(5, 'Web Designing', '', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `contact_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `message` longtext,
  `sent_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`contact_id`, `name`, `email`, `phone`, `message`, `sent_on`) VALUES
(1, 'xfdfh', 'ijaz.sharika@gmail.com', '8768092691', 'dfh', '2018-09-06 09:11:56'),
(15, 'asf safas', 'ijaz.shadsgrika@gmail.com', '9999999999', 'Quick Contact', '2018-09-06 14:13:05'),
(3, 'asf asf', 'ijaz.sharika@gmail.com', '8768092691', 'Quick Contact', '2018-09-06 11:58:54'),
(4, 'asf asf', 'ijaz.sharika@gmail.com', '8768092691', 'Quick Contact', '2018-09-06 12:05:40'),
(6, 'asf safas', 'ijaz.shadsgrika@gmail.com', '9999999999', 'Quick Contact', '2018-09-06 12:06:51'),
(7, 'asf safas', 'ijaz.shadsgrika@gmail.com', '9999999999', 'Quick Contact', '2018-09-06 12:07:04'),
(8, 'asf safas', 'ijaz.shadsgrika@gmail.com', '9999999999', 'Quick Contact', '2018-09-06 12:07:19'),
(9, 'asf safas', 'ijaz.shadsgrika@gmail.com', '9999999999', 'Quick Contact', '2018-09-06 12:07:29'),
(10, 'asf safas', 'ijaz.shadsgrika@gmail.com', '9999999999', 'Quick Contact', '2018-09-06 12:08:01'),
(12, 'asf safas', 'ijaz.shadsgrika@gmail.com', '9999999999', 'Quick Contact', '2018-09-06 12:14:51'),
(16, 'asf safas', 'ijaz.shadsgrika@gmail.com', '9999999999', 'Quick Contact', '2018-09-06 14:22:04'),
(17, 'test', 'test@gmail.com', '8768092691', 'test', '2018-09-07 07:37:59'),
(18, 'asd', 'ijaz.sharika@gmail.com', '8768092691', 'saf', '2018-09-07 07:41:16');

-- --------------------------------------------------------

--
-- Table structure for table `inbox`
--

CREATE TABLE `inbox` (
  `id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `client_name` varchar(255) NOT NULL,
  `client_email` varchar(255) NOT NULL,
  `contact_number` bigint(22) NOT NULL,
  `client_msg` text NOT NULL,
  `send_on` varchar(255) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inbox`
--

INSERT INTO `inbox` (`id`, `p_id`, `client_name`, `client_email`, `contact_number`, `client_msg`, `send_on`, `owner_id`, `sender_id`, `status`) VALUES
(1, 9, 'Rahul Roy', 'rahul@gmail.com', 7890768543, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '2019-04-25', 1, 3, 0),
(2, 0, 'test', 'rahul@mail.co', 8907865098, 'testing', '2019-05-10', 0, 0, 0),
(3, 13, 'test', 'rahul@mail.co', 8907865098, 'test', '2019-05-10', 12, 0, 0),
(4, 9, 'test', 'rahul@mail.co', 8907865098, 'test', '2019-05-10', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `property`
--

CREATE TABLE `property` (
  `id` int(11) NOT NULL,
  `p_name` varchar(255) NOT NULL,
  `p_address` text NOT NULL,
  `p_price` varchar(255) NOT NULL,
  `p_beds` varchar(255) NOT NULL,
  `p_baths` varchar(255) NOT NULL,
  `p_sqft` varchar(255) NOT NULL,
  `p_image` varchar(255) NOT NULL,
  `p_des` varchar(255) NOT NULL,
  `addedOn` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `property`
--

INSERT INTO `property` (`id`, `p_name`, `p_address`, `p_price`, `p_beds`, `p_baths`, `p_sqft`, `p_image`, `p_des`, `addedOn`, `status`, `user_id`) VALUES
(1, 'TESTING PROPERTY', 'test , testing , 700001', '300', '09', '79', '8000', '5cb5d677d9520img_4.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su', '2019-04-16', 1, 1),
(3, 'TESTING PROPERTY', 'banamali tala, barasat, 700124', '300', '4', '4', '4000', '', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at HampdenSydney College in Virginia, looked up one o', '2019-04-17', 1, 2),
(4, 'Property 2 ', 'Chowmatha, Madhayamgram, Kol - 700130', '6000', '4', '9', '7000', '', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one ', '2019-04-17', 1, 2),
(5, 'TESTING PROPERTY', 'Kaikhai, Bidhannagar, sector 2, Kol 700012', '80000', '7', '8', '1100', '', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one ', '2019-04-17', 1, 2),
(6, 'Property 4', 'Jalpaiguri, Malbazar, 700010', '3000', '200', '22', '11000', '', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. ', '2019-04-17', 1, 2),
(7, 'TESTING PROPERTY', 'Barasat, Kol - 700124', '800000', '70', '6', '1800', '', 'Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular. ', '2019-04-18', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `property_dtails`
--

CREATE TABLE `property_dtails` (
  `id` int(11) NOT NULL,
  `property_type` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `unit_number` varchar(255) NOT NULL,
  `postal_code` varchar(255) NOT NULL,
  `province` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `community` varchar(255) NOT NULL,
  `contact_number` bigint(22) NOT NULL,
  `alt_contact_number` bigint(22) NOT NULL,
  `email` varchar(255) NOT NULL,
  `alt_email` varchar(255) NOT NULL,
  `monthly_rent` decimal(10,2) NOT NULL,
  `security_deposit` decimal(10,2) NOT NULL,
  `bedrooms` varchar(255) NOT NULL,
  `den_plus` varchar(100) NOT NULL,
  `bathrooms` varchar(255) NOT NULL,
  `sqft` varchar(150) NOT NULL,
  `year_build` int(11) NOT NULL,
  `furnished` varchar(255) NOT NULL,
  `available_date` varchar(255) NOT NULL,
  `smoking` varchar(255) NOT NULL,
  `parking` varchar(255) NOT NULL,
  `incentive` varchar(255) NOT NULL,
  `dogs` varchar(255) NOT NULL,
  `eats` varchar(255) NOT NULL,
  `terms` varchar(255) NOT NULL,
  `p_head` varchar(255) NOT NULL,
  `p_des` longtext NOT NULL,
  `added_on` varchar(255) NOT NULL,
  `is_feature_property` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL,
  `longitude` varchar(255) NOT NULL,
  `latitude` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `property_dtails`
--

INSERT INTO `property_dtails` (`id`, `property_type`, `address`, `unit_number`, `postal_code`, `province`, `city`, `community`, `contact_number`, `alt_contact_number`, `email`, `alt_email`, `monthly_rent`, `security_deposit`, `bedrooms`, `den_plus`, `bathrooms`, `sqft`, `year_build`, `furnished`, `available_date`, `smoking`, `parking`, `incentive`, `dogs`, `eats`, `terms`, `p_head`, `p_des`, `added_on`, `is_feature_property`, `user_id`, `longitude`, `latitude`, `status`) VALUES
(1, 'Loft', 'calgary,Edmonton, AB\r\n', 'RT091WR', '700001', 'AB', 'Westmount', 'Corporate', 9082472663, 6250189765, 'test@mail.com', 'test@mail.com', '800.00', '6000.00', '2', 'yes', '1.5', '1000', 2017, 'Negotiable', 'Call for availability', 'Negotiable', 'garage-triple', '10%', 'Negotiable', 'Negotiable', 'Short Term', 'PEARL ARMS', 'BUILDING IS UNDER NEW MANAGEMENT!\r\n\r\nRent includes heat and water. Quiet, clean, professionally managed building.\r\n\r\nLocated near the boutiques on 124th Street and Oliver square. Close to shopping, transit and parks. This building is within walking distance of shops, the Oliver pool, and MacEwan University, as well as the new Brewery District. Also close to Roger\'s Place, the new hockey arena.', '2019-04-18', 0, 3, '-113.323975', '53.631611', 1),
(2, 'Apartment', 'Banamali tala , Near Ideal medical', 'RT097YU67T', '700124', 'WestBengal', 'Barasat', 'Corporate', 8907865098, 8900070012, 'rahul@gmail.com', 'rahul@mail.com', '20000.00', '2000.00', '5', 'yes', '5', '1000', 2019, 'Furnished', 'Semptember', 'Smoking-allowed', 'garage-double', '10%', 'Negotiable', 'Negotiable', 'Long Term', 'Testing Property', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&nbsp;standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker .</p>\r\n', '2019-04-19', 0, 3, '-113.323975', '53.631611', 1),
(3, 'Apartment', 'Southview Court, Edmonton, AB, Canada', 'ZX009TWQ', 'H0H0H0', 'Canada', 'Edmonton', 'Aborta', 8907086540, 8907890670, 'satirtha@gmail.com', 'satirtha1@gmail.com', '1295.00', '1295.00', '3', 'yes', '2', '1080', 2019, 'Furnished', 'October', 'Smoking-allowed', 'garage-single', '10%', 'Negotiable', 'Negotiable', 'Short Term', 'SPACIOUS 2B/2BR CONDO WITH 1 U/G PARKING STALL NEAR SOUTHGATE1', '<p><em>Incentives: First month free</em></p>\r\n\r\n<p>This spacious 1080 condo with big balcony is the perfect size for University students or a young couple.</p>\r\n\r\n<p>Great location, 5 minutes walk to superstore, 3 minutes drive to whitemud and close to southgate mall and LRT. Open concept for kitchen and living room, great patio area, in-suite laundry, big bedrooms.</p>\r\n\r\n<p>Other features the condo has to offer:</p>\r\n\r\n<p><strong>-1 heated underground parking stall</strong></p>\r\n\r\n<p>-in-suite washer and dryer</p>\r\n\r\n<p>-appliances include fridge with freezer, microwave, oven and dishwasher</p>\r\n\r\n<p>-secure fenced storage area in the parking garage for additional storage</p>\r\n\r\n<p>-kitchen sink with garburator</p>\r\n\r\n<p>-spacious balcony great for a BBQ</p>\r\n\r\n<p>Utilities are not included. At least 1 reference(s) must be provided. Condo available immediately. Damage deposit of 1 month rent and credit check will be required. We are looking for long term tenants for at least one year. If moving by May 1st, 2019, the first rental is free.</p>\r\n', '2019-04-25', 1, 1, '-113.323975', '53.631611', 1),
(4, 'Condo', 'Sifton Park, Edmonton, AB, Canada', 'XTY099XQA', 'H0H0H0', 'Canada', 'Edmonton', 'Corporate', 8907865098, 8907865104, 'rahul@mail.co', 'rahul@mail.co', '1010.00', '20000.00', '2', 'yes', '3', '819', 2019, 'Furnished', 'October', 'Smoking-allowed', 'garage-single', '10%', 'Not Allowed', 'Not Allowed', 'Short Term', 'WYNDHAM CROSSING APARTMENT HOMES', '<p>Are you looking for an affordable apartment in Edmonton, Alberta that is safe, clean, and in a great location? If so, then put Wyndham Crossing Apartment Homes at the top of your list! We can&#39;t wait to tell you about the amazing features that make Wyndham Crossing at Edmonton a wonderful place to live. We offer one, two, and three-bedroom floor plans to accommodate all of your family needs. You&#39;ll find that our units have full-sized refrigerators, spacious walk-in closets, and lovely patios and balconies to view the beautiful surrounding outdoors. Our community amenities include on-site laundry facilities, 24-hour emergency maintenance services, and a gorgeous indoor swimming pool. Step outside your door and you&#39;re sure to enjoy the vast green space that envelops our beautiful property. Located northeast of downtown Edmonton, Wyndham Crossing is in a great location where you can easily get to work, access the city&#39;s numerous options for family fun, or take care of daily household needs. Our property is just meters from Interstate 15 and easily accessible to Hwy 216, so you can quickly get to where you need to go, whether to any number of Edmonton&#39;s year-round festivals, the West Edmonton Mall, or any number of parks, golf courses, soccer fields, fitness centres, swimming pools, and, of course, hockey and curling rinks. Closer at hand, you won&#39;t have to travel far to find great places to shop or to seek entertainment. For your basic grocery shopping needs, Costco, Walmart Supercentre, and Real Canadian Superstore are less than a five-minute drive away. If you&#39;re looking for some fun activities for the weekend, check out Cinema City Movies 12 to catch a new blockbuster, update your style with the sleek fashions in Londonderry Mall, or check in to see if the Edmonton Oilers hockey team is in town at the Northlands Ice Coliseum. You could also hang out at the Edmonton Valley Zoo and observe zebras, turtles, and more. And Rundle Park is a great place for fun outdoor activities such as renting a paddleboat, playing mini-golf, and walking or cycling down scenic trails. Edmonton is a wonderful community-centred city with plenty of fun attractions and things to do. If you are considering making Edmonton your new home, contact Weidner Apartment Homes today. We would love to talk about available apartments at Wyndham Crossing and look forward to answering any questions you mayhav.</p>\r\n', '2019-04-25', 1, 1, '-113.323975', '53.631611', 1),
(5, 'Condo', '4807 137 Ave NW, Sifton Park, Edmonton, AB, Canada', 'XYZ00897QT', 'H0H0H0', 'AB', 'Edmonton', 'Corporate', 8907865098, 8907865098, 'rahul@mail.co', 'rahul@mail.co', '900.00', '4000.00', '2', 'yes', '1', '615', 2019, 'Furnished', 'Semptember', 'Smoking-allowed', 'garage-double', '10%', 'Negotiable', 'Not Allowed', 'Long Term', 'WYNDHAM CROSSING APARTMENT HOMES', '<p>Are you looking for an affordable apartment in Edmonton, Alberta that is safe, clean, and in a great location? If so, then put Wyndham Crossing Apartment Homes at the top of your list! We can&#39;t wait to tell you about the amazing features that make Wyndham Crossing at Edmonton a wonderful place to live. We offer one, two, and three-bedroom floor plans to accommodate all of your family needs. You&#39;ll find that our units have full-sized refrigerators, spacious walk-in closets, and lovely patios and balconies to view the beautiful surrounding outdoors. Our community amenities include on-site laundry facilities, 24-hour emergency maintenance services, and a gorgeous indoor swimming pool. Step outside your door and you&#39;re sure to enjoy the vast green space that envelops our beautiful property. Located northeast of downtown Edmonton, Wyndham Crossing is in a great location where you can easily get to work, access the city&#39;s numerous options for family fun, or take care of daily household needs. Our property is just meters from Interstate 15 and easily accessible to Hwy 216, so you can quickly get to where you need to go, whether to any number of Edmonton&#39;s year-round festivals, the West Edmonton Mall, or any number of parks, golf courses, soccer fields, fitness centres, swimming pools, and, of course, hockey and curling rinks. Closer at hand, you won&#39;t have to travel far to find great places to shop or to seek entertainment. For your basic grocery shopping needs, Costco, Walmart Supercentre, and Real Canadian Superstore are less than a five-minute drive away. If you&#39;re looking for some fun activities for the weekend, check out Cinema City Movies 12 to catch a new blockbuster, update your style with the sleek fashions in Londonderry Mall, or check in to see if the Edmonton Oilers hockey team is in town at the Northlands Ice Coliseum. You could also hang out at the Edmonton Valley Zoo and observe zebras, turtles, and more. And Rundle Park is a great place for fun outdoor activities such as renting a paddleboat, playing mini-golf, and walking or cycling down scenic trails. Edmonton is a wonderful community-centred city with plenty of fun attractions and things to do. If you are considering making Edmonton your new home, contact Weidner Apartment Homes today. We would love to talk about available apartments at Wyndham Crossing and look forward to answering any questions you may have.</p>\r\n', '2019-04-23', 1, 1, '-113.323975', '53.631611', 1),
(6, 'Townhouse', '87 Stirling Rd NW, Beaumaris, Edmonton, AB, Canada', 'XTY001QZA', 'A0E1E0', 'AB', 'Beaumaris', 'Corporate', 8907865098, 8907865088, 'rahul@mail.co', 'rahul@mail.co', '1095.00', '20000.00', '2', 'yes', '2.5', '935', 2017, 'Furnished', 'Immediate', 'Smoking-allowed', 'garage-double', '10%', 'Not Allowed', 'Not Allowed', 'None Selected', 'STIRLING PLACE APARTMENT HOMES', '<p>Stirling Place Apartment Homes in Edmonton, Alberta is conveniently located right off Anthony Henday Drive. Nearby shopping, dining, and entertainment make Stirling Place the perfect location for your new home. Our property is minutes from the lake! With easy access to Big Lake, you can enjoy a day of fishing, kayaking and paddle boarding. Or, take a quick walk to the Edmonton Public Library and enjoy your new book on your balcony!Our community offers top of the line amenities and spacious floor plans. If cooking and dining is a to-do, you&#39;ll enjoy our large open kitchens with a full kitchen appliance package. We love pets here at Stirling Place, dogs and cats are welcome! We would love to show you our beautiful community, stop by for a tour</p>\r\n', '2019-04-23', 0, 1, '-113.323975', '53.631611', 1),
(7, 'Apartment', '991a Hooke Road Northwest, Overlanders, Edmonton, AB, Canada', 'ZXT009TRQ', 'A0B2W0', 'AB', 'Overlanders', 'Corporate', 8907865098, 8907865048, 'rahul@mail.co', 'rahul@mail.co', '1249.00', '20000.00', '2', 'yes', '2', '969', 2018, 'Furnished', 'January', 'Non-smoking', 'garage-triple', '10%', 'Not Allowed', 'Not Allowed', 'Short Term', 'HARTFORD COUNTY', '<p>This Northeast&nbsp;townhome community features suites with 1 &amp; 1/2 baths, complete with 5 appliances, spacious floor plans, private, maintenance-free fenced yards, open basements, and one parking stall. We are located near public and private schools as well as daycare facilities. We also offer convenient access to major shopping outlets. There are many nearby parks and bike trails, ice arenas, community recreation&nbsp;centers (with pools), and a large, indoor soccer center. We are conveniently located near&nbsp;major bus routes, LRT stations, various city thoroughfares, and surrounding communities as well as city industrial areas, including Sherwood Park and Fort Saskatchewan.</p>\r\n\r\n<p>Hartford County offers family-friendly townhomes with a park right on-site for kids to play!<br />\r\nFree early move-in, TELUS internet and TV with a one year lease and $250 move-in credit.<br />\r\n<em>*conditions apply. new applicants only*</em></p>\r\n\r\n<p><strong>Features and&nbsp;Amenities:</strong></p>\r\n\r\n<ul>\r\n	<li>&nbsp;Dishwasher, Fridge, Stove, Washer &amp; Dryer Included</li>\r\n	<li>In-suite laundry</li>\r\n	<li>&nbsp;Some Suites with 1.5 Bathrooms</li>\r\n	<li>&nbsp;Ceiling Fans</li>\r\n	<li>&nbsp;Programmable Thermostats</li>\r\n	<li>&nbsp;Close to the NEW Clareview Recreation Centre, Parks, Schools, Transit &amp; Shopping</li>\r\n	<li>&nbsp;Full Basement</li>\r\n	<li>&nbsp;Fenced Yard &amp; Landscaped grounds</li>\r\n	<li>&nbsp;Assigned Parking/Street Parking</li>\r\n	<li>&nbsp;On-Site Professional Management</li>\r\n	<li>&nbsp;Excellent Customer Service</li>\r\n	<li>&nbsp;Front &amp; Rear Entrance</li>\r\n	<li>&nbsp;Carpet/Lino Throughout</li>\r\n	<li>&nbsp;Cat Friendly. Sorry, No Dogs</li>\r\n</ul>\r\n\r\n<p><strong>Special Discounts:</strong><br />\r\nSeniors - $100.00 Security Deposit<br />\r\nMilitary, Police Officers, and RCMP Officers - $50.00 per month rental discount with a term lease.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '2019-04-23', 0, 1, '-113.323975', '53.631611', 1),
(8, 'Apartment', '13404 96 Street Northwest, Glengarry, Edmonton, AB, Canada', 'XZA001CDA', 'H0H1W8', 'AB', 'Glengarry', 'Corporate', 8907865098, 8907864967, 'rahul@mail.co', 'rahul@mail.co', '1959.00', '7000.00', '8', 'yes', '2', '675', 2017, 'Furnished', 'October', 'Smoking-allowed', 'garage-double', '10%', 'Not Allowed', 'Not Allowed', 'Short Term', 'TRENDY LIVING IN SUPERB LOCATION', '<p>The Northgate Towers is ideally located directly across from the Northgate Mall and many other amenities including direct bus lines to anywhere in Edmonton, numerous restaurants, parks and other entertainment. Don&#39;t miss out! Call our Property Manager today to apply.</p>\r\n\r\n<p><strong>NOTE: The pics shown in this ad represent units presently available as well as some of our upgraded units that are currently occupied. ALL UNITS can be upgraded consistent with the images shown herein. New AND existing tenants can order unit upgrades specifically tailored to meet their taste the budgets ! For more information please email the Property Manager shown herein.</strong></p>\r\n', '2019-04-23', 0, 1, '-113.323975', '53.631611', 1),
(9, 'Townhouse', '8304 11 Ave SW, Southeast Edmonton, Edmonton, AB, Canada', 'XZQ008CVX', 'H0H0H0', 'AB', 'Edmonton', 'Corporate', 8907865098, 8903465094, 'rahul@mail.co', 'rahul@mail.co', '1550.00', '1550.00', '3', 'yes', '2', '819', 2019, 'Furnished', 'October', 'Non-smoking', 'garage-triple', '10%', 'Not Allowed', 'Not Allowed', 'Long Term', 'SUMMERSIDE TOWNHOUSE FOR RENT - BEACH ACCESS INCLUDED', '<p>Welcome to Summerside, Edmonton&#39;s premier lake community! This beautiful 1300 sq ft townhome has been well-maintained throughout the years and has tonnes of natural light. The large kitchen is fully loaded and boasts an island that also serves as an eating bar. The main floor has ample room for a dining area &amp; family room, and also has a 2 piece bath. Headed upstairs you will find dual master suites which are quite sizeable as they can fit a king bed! The basement has ample space to do laundry and store your belongings. A double garage is attached to boot! Finally, this property grants access to Lake Summerside, and all of its year-round activities! Kayaking, paddle-boating, tennis and basketball in the summer, and skating &amp; ice-hockey in the winter! Come check it out!</p>\r\n\r\n<p>No pets, no smoking</p>\r\n', '2019-04-23', 0, 1, '-113.323975', '53.631611', 1),
(10, 'House', '11834 71 Street Northwest, Montrose, Edmonton, AB, Canada', 'XZQ071RTY', 'H0H0H0', 'AB', 'Montrose', 'Corporate', 8907865098, 8907865098, 'rahul@mail.co', 'rahul@mail.co', '1345.00', '20000.00', '6', 'yes', '4.5', '819', 2019, 'Furnished', 'August', 'Smoking-allowed', 'garage-triple', '10%', 'Not Allowed', 'Not Allowed', 'Short Term', 'RENOVATED 1BED-1BATH BASEMENT SUITE OFF 118 AVE - EASY ACCESS TO WAYNE GRETZKY D', 'This newly renovated 1 bed-1bath basement suite has had a complete upgrade!\r\n\r\nVinyl flooring and tile throughout the unit, upgraded bathroom with stand up shower, and stainless steel appliances in the kitchen.\r\n\r\nBackyard is fully fenced and is pet friendly. The Main floor tenants have 1 dog.\r\n\r\n\r\nEasy access to Wayne Gretzky Dr & Yellowhead\r\n\r\n\r\nGreat for a bachelor or couple.\r\n\r\n\r\nShared laundry\r\n\r\n\r\nAvailable Immediately\r\n\r\nPets Upon Approval.', '2019-04-23', 0, 1, '-113.323975', '53.631611', 1),
(13, 'Condo', 'Victoria, BC, Canada', 'ZT006YUWQ', 'H0H0H0', 'Westbengal', 'Malbazar', 'Corporate', 8907865098, 8907865098, 'rahul@mail.co', 'rahul@mail.co', '2000.00', '0.00', '5', '', '5.5', 'test', 2017, 'Negotiable', 'February', 'Negotiable', 'covered', '10%', 'Negotiable', 'Not Allowed', 'Long Term', 'WYNDHAM CROSSING APARTMENT HOMES', 'WYNDHAM CROSSING APARTMENT HOMESWYNDHAM CROSSING APARTMENT HOMESWYNDHAM CROSSING APARTMENT HOMESWYNDHAM CROSSING APARTMENT HOMESWYNDHAM CROSSING APARTMENT HOMES', '2019-04-29', 1, 12, '-123.329773', ' 48.407326', 1),
(14, 'Apartment', 'Victoria, BC, Canada', 'XYZ00897QT', 'H0H0H0', 'BC', 'Victoria', 'Corporate', 8907865098, 8907865098, 'rahul@mail.co', 'rahul@mail.co', '2000.00', '20000.00', '2', 'yes', '1', '819', 2019, 'Furnished', 'April', 'Smoking-allowed', 'garage-double', '10%', 'Negotiable', 'Negotiable', 'Short Term', 'WYNDHAM CROSSING APARTMENT HOMES', '<p>WYNDHAM CROSSING APARTMENT HOMES.&nbsp;WYNDHAM CROSSING APARTMENT HOMESWYNDHAM CROSSING APARTMENT HOMESWYNDHAM CROSSING APARTMENT HOME</p>\r\n', '2019-05-13', 1, 1, '-123.329773', ' 48.407326', 1),
(15, 'Condo', 'Calgary, AB, Canada', 'XZA001CDA', 'B0H0J0', 'Westbengal', 'Malbazar', 'Corporate', 8907865098, 8907865098, 'rahul@mail.co', 'rahul@mail.co', '2000.00', '20000.00', '1', 'yes', '2.5', '819', 2017, 'Unfurnished', 'Immediate', 'Non-smoking', 'garage-single', '', 'Not Allowed', 'Not Allowed', 'None Selected', 'WYNDHAM CROSSING APARTMENT HOMES', 'gdfhgf', '2019-05-14', 0, 12, '-123.329773', ' 48.407326', 1);

-- --------------------------------------------------------

--
-- Table structure for table `property_features`
--

CREATE TABLE `property_features` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `property_features`
--

INSERT INTO `property_features` (`id`, `name`, `p_id`) VALUES
(1, 'Rent-to-own', 1),
(2, 'Dishawasher', 1),
(3, 'Disposal', 1),
(4, 'Oven', 1),
(5, 'Microwave', 1),
(6, 'Fridge', 1),
(7, 'Heat', 1),
(8, 'cable', 1),
(9, 'Public library', 1),
(10, 'Ocean', 1),
(11, 'Rent-to-own', 2),
(12, 'Microwave', 2),
(13, 'Fridge', 2),
(14, 'Laundry in-suite', 2),
(15, 'Fire place', 2),
(16, 'Sky light', 2),
(17, 'alarm', 2),
(18, 'cable', 2),
(19, 'Electricity', 2),
(20, 'Lake', 2),
(21, 'Pool', 2),
(30, 'Dishawasher', 4),
(31, 'Disposal', 4),
(32, 'Fire place', 4),
(33, 'Sky light', 4),
(34, 'Deck', 4),
(35, 'Heat', 4),
(36, 'cable', 4),
(37, 'Public library', 4),
(38, 'Rent-to-own', 5),
(39, 'Air condition', 5),
(40, 'Fire place', 5),
(41, 'Sky light', 5),
(42, 'Lake', 5),
(43, 'Pool', 5),
(44, 'Disposal', 6),
(45, 'Oven', 6),
(46, 'cable', 6),
(47, 'Electricity', 6),
(48, 'Water', 6),
(49, 'Lake', 6),
(50, 'Pool', 6),
(51, 'Rent-to-own', 7),
(52, 'Fire place', 7),
(53, 'Sky light', 7),
(54, 'Deck', 7),
(55, ' Bike Paths', 7),
(56, 'Dishawasher', 8),
(57, 'Air condition', 8),
(58, 'Fire place', 8),
(59, 'Sky light', 8),
(60, 'See Full description', 8),
(61, 'Water', 8),
(62, 'River', 8),
(63, 'Sports Complex', 8),
(64, 'Tile Floor', 9),
(65, 'Hardwood Floor', 9),
(66, 'Walk-out Basement', 9),
(67, 'Electricity', 9),
(68, 'Water', 9),
(69, 'Public library', 9),
(70, 'Air condition', 10),
(71, 'Fire place', 10),
(72, 'Sky light', 10),
(73, 'Satellite', 10),
(74, 'Shopping Center', 10),
(75, 'Ocean', 10),
(76, 'Rent-to-own', 11),
(77, 'Dishawasher', 11),
(78, 'Fire place', 11),
(79, 'Heat', 11),
(85, 'Rent-to-own', 3),
(86, 'Dishawasher', 3),
(87, 'Disposal', 3),
(88, 'Oven', 3),
(89, 'Microwave', 3),
(90, 'Fridge', 3),
(91, 'Rent-to-own', 13),
(92, 'Dishawasher', 13),
(106, 'Laundry shared', 14),
(107, 'Laundry hookups', 14),
(108, 'Hardwood Floor', 14),
(109, 'Walk-out Basement', 14),
(110, 'Jetted Tub', 14),
(111, 'Rent-to-own', 14),
(112, 'Dishawasher', 14),
(113, 'Disposal', 14),
(114, 'Fire place', 14),
(115, 'Sky light', 14),
(116, 'Heat', 14),
(117, 'Electricity', 14),
(118, 'Satellite', 14),
(119, 'Lake', 14),
(120, 'Rent-to-own', 15),
(121, 'Dishawasher', 15);

-- --------------------------------------------------------

--
-- Table structure for table `property_images`
--

CREATE TABLE `property_images` (
  `id` int(11) NOT NULL,
  `p_img` varchar(255) NOT NULL,
  `p_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `property_images`
--

INSERT INTO `property_images` (`id`, `p_img`, `p_id`) VALUES
(1, '5cb8881ed6d6eimg_1 - Copy.jpg', '1'),
(2, '5cb8881eeb966img_1.jpg', '1'),
(3, '5cb8881f04c29img_2 - Copy.jpg', '1'),
(4, '5cb8881f0fc1fimg_3.jpg', '1'),
(5, '5cb8881f1ff94img_4.jpg', '1'),
(6, '5cb8881f32f3eimg_7.jpg', '1'),
(7, '5cb8881f3a736img_8.jpg', '1'),
(8, '5cb9697d1a6d6hero_bg_2.jpg', '2'),
(9, '5cb9697d28316hero_bg_4.jpg', '2'),
(10, '5cb9697d35acdimg_1 - Copy.jpg', '2'),
(11, '5cb9697d4609bimg_2.jpg', '2'),
(12, '5cb9697d509fbimg_3.jpg', '2'),
(13, '5cb9697d63aebimg_4.jpg', '2'),
(14, '5cb9697d79494img_8.jpg', '2'),
(15, '5cbed21974869img_4.jpg', '3'),
(16, '5cbed2197ee94img_5.jpg', '3'),
(19, '5cbed93f719d2img_2.jpg', '4'),
(22, '5cbed93f8f05eimg_8.jpg', '4'),
(23, '5cbedc00e452cimg_5.jpg', '5'),
(24, '5cbedc010aecdimg_6.jpg', '5'),
(25, '5cbedc011b2e7img_7.jpg', '5'),
(26, '5cbedc01230d6img_8.jpg', '5'),
(29, '5cbedfad2f867img_6.jpg', '6'),
(30, '5cbedfad3d161img_8.jpg', '6'),
(31, '5cbee5f1371d6available-homes.jpg', '7'),
(32, '5cbee5f141d2bCroppedImage800500-Country-Estate-Kit-Home-Hero.jpg', '7'),
(33, '5cbeead747af9Dwell-Turkell-Lindal-Homes-10.jpg', '8'),
(34, '5cbeead7523fcocean-vista.jpg', '8'),
(35, '5cbeeca8e9898outdoor1108677_2-A.jpg', '9'),
(36, '5cbeeca900fccRanch-style-homes-800x500.jpg', '9'),
(37, '5cbeede59cba3thumb3-800x500.jpg', '10'),
(44, '5cc167019db9fimg_8.jpg', '3'),
(45, '5cc16701ae034img_7.jpg', '3'),
(46, '5cc16701b9994img_6.jpg', '3'),
(47, '5cc6bd231b09aimg_6.jpg', '13'),
(48, '5cc6bd23261a3img_5.jpg', '13'),
(49, '5cc6bd232e3d0img_4.jpg', '13'),
(50, '5cc6bd2335d16hero_bg_4.jpg', '13'),
(51, '5cc6c04e5350fimg_8.jpg', '14'),
(53, '5cc6c04e708e4img_2.jpg', '14'),
(58, '5cc6e3eaa48daimg_5.jpg', '14'),
(59, '5cd93f22d8697oceanvista.jpg', '14'),
(60, '5cd93f22e2e4eoutdoor1108677_2-A.jpg', '14'),
(61, '5cd93f22edd1fRanch-style-homes-800x500.jpg', '14'),
(62, '5cda723e7daec1.png', '15'),
(63, '5cda723e883e3banner_header.jpg', '15');

-- --------------------------------------------------------

--
-- Table structure for table `property_types`
--

CREATE TABLE `property_types` (
  `id` int(11) NOT NULL,
  `pt_name` varchar(255) NOT NULL,
  `pt_staus` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `property_types`
--

INSERT INTO `property_types` (`id`, `pt_name`, `pt_staus`) VALUES
(1, 'Apartment', 1),
(2, 'Condo', 1),
(3, 'Loft', 1),
(4, 'House', 1),
(5, 'Townhouse', 1),
(6, 'Duplex', 1),
(7, 'Main Floor', 1),
(8, 'Basement', 1),
(9, 'Shared', 1),
(10, 'Mobile', 1),
(11, 'Parking Spot', 1),
(12, 'Storage', 1),
(13, 'Vacation', 1),
(14, 'Acreage', 1),
(15, 'Office Space', 1);

-- --------------------------------------------------------

--
-- Table structure for table `registra`
--

CREATE TABLE `registra` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `a_pass` varchar(255) NOT NULL,
  `image_file` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `action` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registra`
--

INSERT INTO `registra` (`id`, `name`, `mail`, `phone`, `pass`, `a_pass`, `image_file`, `status`, `action`) VALUES
(1, 'John Doe', 'owner@gmail.com', '9876543210', 'ecd00aa1acd325ba7575cb0f638b04a5', 'admin123@', '', 1, 1),
(2, 'Admin Admin', 'admin12@gmail.com', '8906780967', '25d55ad283aa400af464c76d713c07ad', '12345678', '', 1, 1),
(3, 'Rahul Roy', 'rahul@gmail.com', '8907890654', 'ecd00aa1acd325ba7575cb0f638b04a5', 'admin123@', '', 2, 1),
(11, 'test', 'rahul@mail.co', '8907865098', 'ecd00aa1acd325ba7575cb0f638b04a5', 'admin123@', '', 2, 1),
(12, 'admin', 'admin@gmail.com', '9090890789', 'ecd00aa1acd325ba7575cb0f638b04a5', 'admin123@', '', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `renter_fav`
--

CREATE TABLE `renter_fav` (
  `id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `fav_status` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_ip` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `usertype` int(11) NOT NULL,
  `loginstatus` int(11) NOT NULL,
  `paypal` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `name`, `lastname`, `email`, `phone`, `img`, `password`, `usertype`, `loginstatus`, `paypal`) VALUES
(1, 'Home Land', 'Real Estate', 'admin@gmail.com', '9090890789', '5cb434d321928png', 'admin123@', 1, 1, 'paypal');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`blog_id`);

--
-- Indexes for table `blogip`
--
ALTER TABLE `blogip`
  ADD PRIMARY KEY (`ip_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cate_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `inbox`
--
ALTER TABLE `inbox`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property`
--
ALTER TABLE `property`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_dtails`
--
ALTER TABLE `property_dtails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_features`
--
ALTER TABLE `property_features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_images`
--
ALTER TABLE `property_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_types`
--
ALTER TABLE `property_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registra`
--
ALTER TABLE `registra`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `renter_fav`
--
ALTER TABLE `renter_fav`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `blog_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `blogip`
--
ALTER TABLE `blogip`
  MODIFY `ip_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `inbox`
--
ALTER TABLE `inbox`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `property`
--
ALTER TABLE `property`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `property_dtails`
--
ALTER TABLE `property_dtails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `property_features`
--
ALTER TABLE `property_features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `property_images`
--
ALTER TABLE `property_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `property_types`
--
ALTER TABLE `property_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `registra`
--
ALTER TABLE `registra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `renter_fav`
--
ALTER TABLE `renter_fav`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
