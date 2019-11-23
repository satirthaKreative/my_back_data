-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2019 at 04:33 PM
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
-- Database: `real-estate`
--

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
  `addedOn` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `property`
--

INSERT INTO `property` (`id`, `p_name`, `p_address`, `p_price`, `p_beds`, `p_baths`, `p_sqft`, `addedOn`, `status`, `user_id`) VALUES
(1, 'wetrwt', 'tert', '1', '1', '1', '1', '2019-04-15', 1, 3),
(2, '4353', '35335', '5535', '353', '35', '353', '2019-04-15', 1, 3),
(3, '4353', 't645', '11', '11', '11', '11', '2019-04-15', 1, 3),
(4, 'r3', '3t3t', '53', '545', '54', '54', '2019-04-15', 1, 3);

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
  `image_file` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registra`
--

INSERT INTO `registra` (`id`, `name`, `mail`, `phone`, `pass`, `image_file`, `status`) VALUES
(1, 'test', 'test@MAIL.COM', '', '123', '', 2),
(2, 'test', 'rahul@mail.co', '', '1234', '', 2),
(3, 'Rahul', 'rahul@gmail.com', '9080987908', '123', '', 1);

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
-- Indexes for table `property`
--
ALTER TABLE `property`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registra`
--
ALTER TABLE `registra`
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
-- AUTO_INCREMENT for table `property`
--
ALTER TABLE `property`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `registra`
--
ALTER TABLE `registra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
