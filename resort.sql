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
-- Database: `resort`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin@gmail.com', 'resort1234');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `date`, `description`, `image`) VALUES
(5, 'Blog1', '2018-04-22', 'hi..... \r\n\r\nwelcome to your first blog test .....', 'image-10.jpg'),
(7, 'Blog2', '2018-04-22', 'hi..... \r\n\r\nwelcome to your first blog test 2 .....', 'image-09.jpg'),
(8, 'blog3', '2018-04-22', 'hi \r\n\r\nthird test ', 'image-18.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(6, 'category 1'),
(7, 'category 2');

-- --------------------------------------------------------

--
-- Table structure for table `cms`
--

CREATE TABLE `cms` (
  `id` int(11) NOT NULL,
  `description` longtext NOT NULL,
  `pagename` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms`
--

INSERT INTO `cms` (`id`, `description`, `pagename`) VALUES
(1, '  Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatibus optio velit cumque in. Repudiandae in velit quisquam, aliquam et praesentium aperiam, cupiditate iure eum libero at. Excepturi adipisci, officia. Dolores!30', 'Privacy Policy'),
(2, '  Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatibus optio velit cumque in. Repudiandae in velit quisquam, aliquam et praesentium aperiam, cupiditate iure eum libero at. Excepturi adipisci, officia. Dolores!30Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatibus optio velit cumque in. Repudiandae in velit quisquam, aliquam et praesentium aperiam, cupiditate iure eum libero at. Excepturi adipisci, officia. Dolores!30', 'Terms of Use'),
(3, '  Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatibus optio velit cumque in. Repudiandae in velit quisquam, aliquam et praesentium aperiam, cupiditate iure eum libero at. Excepturi adipisci, officia. Dolores!30Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatibus optio velit cumque in. Repudiandae in velit quisquam, aliquam et praesentium aperiam, cupiditate iure eum libero at. Excepturi adipisci, officia. Dolores!30Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatibus optio velit cumque in. Repudiandae in velit quisquam, aliquam et praesentium aperiam, cupiditate iure eum libero at. Excepturi adipisci, officia. Dolores!30Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatibus optio velit cumque in. Repudiandae in velit quisquam, aliquam et praesentium aperiam, cupiditate iure eum libero at. Excepturi adipisci, officia. Dolores!30', 'Copyright Policy'),
(4, '     Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatibus optio velit cumque in. Repudiandae in velit quisquam, aliquam et praesentium aperiam, cupiditate iure eum libero at. Excepturi adipisci, officia. Dolores!30Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatibus optio velit cumque in. Repudiandae in velit quisquam, aliquam et praesentium aperiam, cupiditate iure eum libero at. Excepturi adipisci, officia. Dolores!30Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatibus optio velit cumque in. Repudiandae in velit quisquam, aliquam et praesentium aperiam, cupiditate iure eum libero at. Excepturi adipisci, officia. Dolores!30   ', ' About Us');

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `roomid` int(11) NOT NULL,
  `image1` varchar(255) NOT NULL,
  `image2` varchar(255) NOT NULL,
  `image3` varchar(255) NOT NULL,
  `image4` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`id`, `roomid`, `image1`, `image2`, `image3`, `image4`) VALUES
(2, 11, 'photo-1522202195465-df8a5f26fa15.jpg', 'Woman-looking-at-portal_840x328.jpg', 'Woman-looking-at-portal_840x328.jpg', '510640972.jpg'),
(3, 11, 'photo-1522202195465-df8a5f26fa15.jpg', 'Woman-looking-at-portal_840x328.jpg', 'Woman-looking-at-portal_840x328.jpg', '510640972.jpg'),
(4, 0, 'photo-1522202195465-df8a5f26fa15.jpg', '510640972.jpg', 'The_financial_crisis_Wallpaper_Money_Tree_015905_.jpg', 'thinkstockphotos-515594438.jpg'),
(5, 0, 'photo-1522202195465-df8a5f26fa15.jpg', '510640972.jpg', 'The_financial_crisis_Wallpaper_Money_Tree_015905_.jpg', 'thinkstockphotos-515594438.jpg'),
(6, 0, 'photo-1522202195465-df8a5f26fa15.jpg', '510640972.jpg', 'The_financial_crisis_Wallpaper_Money_Tree_015905_.jpg', 'thinkstockphotos-515594438.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `imgname` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `image`, `category`, `imgname`, `date`) VALUES
(10, '9resort.JPG', '6', 'photo 1', '2018-04-26 12:20:44'),
(11, '7resort.JPG', '7', 'photo 2', '2018-04-26 12:21:18');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `id` int(11) NOT NULL,
  `roomcate` varchar(255) NOT NULL,
  `members` varchar(255) NOT NULL,
  `pets` varchar(255) NOT NULL,
  `info` longtext NOT NULL,
  `wifi` varchar(255) NOT NULL,
  `parking` varchar(255) NOT NULL,
  `beds` varchar(255) NOT NULL,
  `laundry` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `image1` varchar(255) NOT NULL,
  `image2` varchar(255) NOT NULL,
  `image3` varchar(255) NOT NULL,
  `image4` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `ndate` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`id`, `roomcate`, `members`, `pets`, `info`, `wifi`, `parking`, `beds`, `laundry`, `price`, `image1`, `image2`, `image3`, `image4`, `date`, `ndate`, `status`) VALUES
(17, 'luxury', '3 Members', 'No', 'welcome', 'yes', 'yes', '1 Beds', 'yes', '500 $', '201462614020.jpg', '2014626133523.jpg', 'IMG_0016.JPG', 'IMG_0017.JPG', '10/08/2018', '15/09/2018', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms`
--
ALTER TABLE `cms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cms`
--
ALTER TABLE `cms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
