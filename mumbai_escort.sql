-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2019 at 04:25 PM
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
-- Database: `mumbai_escort`
--

-- --------------------------------------------------------

--
-- Table structure for table `escort_details`
--

CREATE TABLE `escort_details` (
  `id` int(11) NOT NULL,
  `escort_name` varchar(255) NOT NULL,
  `escort_height` varchar(255) NOT NULL,
  `escort_bust` varchar(255) NOT NULL,
  `Escort_desc` longtext NOT NULL,
  `escort_eye` varchar(255) NOT NULL,
  `escort_haircut` varchar(255) NOT NULL,
  `escort_shoe` varchar(255) NOT NULL,
  `escort_dress` varchar(255) NOT NULL,
  `escort_hips` varchar(255) NOT NULL,
  `escort_waist` varchar(255) NOT NULL,
  `type_name` int(11) NOT NULL,
  `place_name` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `escort_details`
--

INSERT INTO `escort_details` (`id`, `escort_name`, `escort_height`, `escort_bust`, `Escort_desc`, `escort_eye`, `escort_haircut`, `escort_shoe`, `escort_dress`, `escort_hips`, `escort_waist`, `type_name`, `place_name`) VALUES
(3, 'Coleen Husaff', '185', '79', '<p>Testing . . . .</p>\r\n', 'Blue', 'Blonde', '40', 'latin', '87', '40', 1, 1),
(4, 'Coleen Husaff', '185', '79', '<p>Testing . . .&nbsp;</p>\r\n', 'Blue', 'Blonde', '40', 'latin', '87', '40', 1, 1),
(5, 'Coleen Husaff', '185', '79', '<p>Testing . . . .</p>\r\n', 'Blue', 'Blonde', '40', 'latin', '87', '40', 0, 3),
(6, 'Coleen Husaff', '185', '79', '<p>Testing . . . .</p>\r\n', 'Blue', 'Blonde', '40', 'latin', '87', '40', 0, 2),
(7, 'Coleen Husaff', '185', '79', '<p>Testing . . .&nbsp;</p>\r\n', 'Blue', 'Blonde', '40', 'latin', '87', '40', 0, 4),
(8, 'Coleen Husaff', '185', '79', '<p>Sexy , NIght Hot Girl</p>\r\n', 'blue', 'Blonde', '40', 'latin', '87', '40', 0, 3),
(9, 'Coleen Husaff', '185', '79', '<p>Sexy Lady</p>\r\n', 'blue', 'Blonde', '40', 'latin', '87', '40', 1, 1),
(10, 'Coleen Husaff', '185', '79', '<p>Sexy Lady . . .</p>\r\n', 'Blue', 'Blonde', '40', 'latin', '87', '40', 1, 1),
(11, 'Anu Singhal', '185', '79', '<p>Sexy lady , give a easure moment to her&nbsp;clients</p>\r\n', 'Green', 'Blonde', '40', 'latin', '87', '40', 2, 2),
(12, 'Madhu', '185', '79', '<p>Queen Of night</p>\r\n', 'Blue', 'Blonde', '40', 'Latin , Western', '87', '40', 2, 2),
(13, 'Saghita', '185', '79', '<p>sexy lady</p>\r\n', 'browne', 'Blonde', '40', 'indian, Western', '87', '40', 2, 2),
(14, 'Neha', '185', '79', '', 'blue', 'Blonde', '40', 'Indian , Western', '87', '40', 2, 3),
(15, 'Harshita', '185', '79', '', 'blue', 'Blonde', '40', 'Shirt & Hot Pant', '87', '40', 3, 3),
(16, 'Sumoyani', '185', '79', '', 'blue', 'Blonde', '40', 'indian, Western', '87', '40', 3, 4),
(17, 'Gargi', '185', '79', '', 'Green', 'Blonde', '40', 'latin', '87', '40', 3, 4),
(18, 'Shruti Jha', '185', '79', '', 'browne', 'Blonde', '40', 'latin', '87', '40', 3, 4),
(20, 'Ankita Goyel', '185', '79', '', 'browne', 'Blonde', '40', 'Indian , Western', '87', '40', 9, 5),
(21, 'Saghita', '185', '79', '', 'browne', 'Blonde', '40', 'latin', '87', '40', 9, 5),
(22, 'Maya', '185', '79', '', 'Green', 'Blonde', '40', 'Shirt & Hot Pant', '87', '40', 9, 5),
(23, 'Mallika', '185', '79', '', 'browne', 'Blonde', '40', 'Shirt & Hot Pant', '87', '40', 9, 5),
(24, 'Anu Singh', '185', '79', '', 'browne', 'Blonde', '40', 'latin', '87', '40', 10, 6),
(25, 'Anu Singhal', '185', '79', '', 'browne', 'Blonde', '40', 'Latin , Western', '32', '18', 10, 6),
(26, 'Madhurima', '185', '79', '', 'Green', 'Blonde', '40', 'Shirt & Hot Pant', '32', '40', 10, 6),
(27, 'Shreyal', '185', '36', '', 'blue', 'Blonde', '40', 'Latin , Western', '32', '18', 10, 6),
(28, 'Neha Kar', '185', '79', '', 'browne', 'Blonde', '40', 'Shirt & Hot Pant', '87', '40', 4, 7),
(29, 'Mayala', '185', '79', '', 'browne', 'Blonde', '40', 'latin', '87', '40', 4, 7),
(30, 'Layla', '185', '79', '', 'blue', 'Blonde', '40', 'latin', '87', '40', 4, 7),
(31, 'Anu Singhal', '185', '79', '', 'blue', 'Blonde', '40', 'latin', '87', '40', 4, 7),
(32, 'Anu Singh', '185', '79', '', 'browne', 'Blonde', '40', 'latin', '87', '40', 6, 8),
(33, 'Saghita', '185', '79', '', 'blue', 'Blonde', '40', 'latin', '87', '40', 6, 8),
(34, 'mohita', '185', '79', '', 'Blue', 'Blonde', '40', 'latin', '87', '40', 6, 8),
(35, 'Joyeeta', '185', '79', '', 'browne', 'Blonde', '40', 'Shirt & Hot Pant', '87', '40', 6, 8),
(36, 'harmaini', '185', '79', '', 'blue', 'Blonde', '40', 'latin', '87', '40', 5, 9),
(37, 'Madhurima', '185', '79', '', 'blue', 'Blonde', '40', 'Latin , Western', '87', '64', 5, 9),
(38, 'Saheli', '185', '79', '', 'blue', 'Blonde', '40', 'latin', '87', '40', 5, 9),
(39, 'Mallika', '185', '79', '', 'blue', 'Blonde', '40', 'latin', '87', '40', 5, 9),
(40, 'Munni', '185', '79', '', 'blue', 'Blonde', '40', 'latin', '87', '40', 7, 10),
(41, 'Aliya', '185', '79', '', 'browne', 'Blonde', '40', 'latin', '87', '40', 7, 10),
(42, 'Skhashi', '185', '79', '', 'blue', 'Blonde', '40', 'latin', '87', '40', 7, 10),
(43, 'Kalika', '185', '79', '', 'blue', 'Blonde', '40', 'latin', '87', '40', 7, 10),
(44, 'Saheli', '185', '79', '', 'blue', 'Blonde', '40', 'latin', '87', '40', 8, 11),
(45, 'Megna', '185', '79', '', 'blue', 'Blonde', '40', 'latin', '87', '40', 8, 11),
(46, 'Ruchi', '185', '79', '', 'blue', 'Blonde', '40', 'latin', '87', '40', 8, 11),
(47, 'prity', '185', '79', '', 'blue', 'Blonde', '40', 'latin', '32', '40', 8, 11),
(48, 'pouli', '185', '79', '', 'blue', 'Blonde', '40', 'latin', '87', '40', 0, 12),
(49, 'Mohita', '185', '79', '', 'blue', 'Blonde', '40', 'latin', '87', '40', 0, 12),
(50, 'Saghita', '185', '79', '', 'blue', 'Blonde', '40', 'latin', '87', '40', 0, 12),
(51, 'prachi', '185', '79', '', 'blue', 'Blonde', '40', 'indian, Western', '87', '40', 0, 12),
(52, 'harmaini', '185', '79', '', 'blue', 'Blonde', '40', 'Shirt & Hot Pant', '87', '40', 0, 13),
(53, 'Saghita', '185', '79', '', 'blue', 'Blonde', '40', 'Shirt & Hot Pant', '87', '40', 0, 13),
(54, 'Anu Singh', '185', '79', '', 'browne', 'Blonde', '60', 'latin', '87', '40', 0, 13),
(55, 'Mallika', '185', '79', '', 'blue', 'Blonde', '40', 'latin', '87', '40', 0, 13),
(56, 'Yahiana', '185', '79', '', 'Green', 'Blonde', '40', 'latin', '87', '40', 11, 14),
(57, 'lopej Isha', '185', '79', '', 'blue', 'Blonde', '40', 'Shirt & Hot Pant', '87', '40', 11, 15),
(58, 'Harmaini Gorgo', '185', '79', '', 'blue', 'Blonde', '40', 'latin', '32', '40', 11, 16),
(59, 'Coleen Husaff', '185', '79', '', 'blue', 'Blonde', '40', 'latin', '87', '40', 11, 17),
(60, 'Ruhi', '185', '79', '', 'blue', 'Blonde', '40', 'latin', '87', '40', 0, 18),
(61, 'Anu Singh', '185', '79', '', 'blue', 'Blonde', '40', 'Shirt & Hot Pant', '87', '40', 0, 19),
(62, 'Rakhiti', '185', '79', '', 'blue', 'Blonde', '40', 'latin', '87', '40', 0, 20),
(63, 'Khakhi', '185', '78', '', 'blue', 'Blonde', '40', 'latin', '87', '40', 0, 21),
(64, 'Annayani', '185', '79', '', 'blue', 'Blonde', '40', 'latin', '87', '40', 0, 22),
(65, 'joyoti', '185', '79', '', 'blue', 'Blonde', '40', 'latin', '87', '78', 0, 23),
(66, 'Sabana Arshad', '185', '79', '<p>Want More Enjoyment In Life . . .</p>\r\n', 'blue', 'Blonde', '40', 'latin', '87', '40', 0, 24),
(67, 'Resmi Parvin', '185', '79', '<p>Lady With Sex Toy . . .&nbsp;</p>\r\n', 'blue', 'Blonde', '40', 'latin', '87', '40', 0, 25);

-- --------------------------------------------------------

--
-- Table structure for table `escort_image`
--

CREATE TABLE `escort_image` (
  `id` int(11) NOT NULL,
  `image_escort` varchar(255) NOT NULL,
  `escort` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `escort_image`
--

INSERT INTO `escort_image` (`id`, `image_escort`, `escort`) VALUES
(1, '5c6526932f719image_33.jpg', 1),
(2, '5c6526933cf72image_32.jpg', 1),
(3, '5c65269347ce0image_3.jpg', 1),
(4, '5c6559495ec7cimage_4.jpg', 2),
(5, '5c6559496f07eimage_42.jpg', 2),
(6, '5c65594984c27image_43.jpg', 2),
(7, '5c655a503856bimage_5.jpg', 3),
(8, '5c655a5043409image_52.jpg', 3),
(9, '5c655a504ae38image_53.jpg', 3),
(10, '5c655b816acfaimage_6.jpg', 4),
(11, '5c655b817dc79image_62.jpg', 4),
(12, '5c655b818e13bimage_63.jpg', 4),
(13, '5c655c4cdbc6aimage_7.jpg', 5),
(14, '5c655c4ce9a22image_72.jpg', 5),
(15, '5c655c4cf15c3image_73.jpg', 5),
(16, '5c655cc8a68aeimage_8.jpg', 6),
(17, '5c655cc8ba1dfimage_82.jpg', 6),
(18, '5c655cc8ca423image_83.jpg', 6),
(19, '5c655d66ccfd8image_9.jpg', 7),
(20, '5c655d66dd1ecimage_92.jpg', 7),
(21, '5c655d66e7e8cimage_93.jpg', 7),
(22, '5c66714ce5e4fAndheri-side-banner.jpg', 8),
(23, '5c66898e73dac5c6526932f719image_33.jpg', 9),
(24, '5c66898e7460b5c6526933cf72image_32.jpg', 9),
(25, '5c66898e74d395c65269347ce0image_3.jpg', 9),
(27, '5c684c62c38b1sideimg1.jpg', 10),
(28, '5c684c62c3be7sideimg2.jpg', 10),
(29, '5c6bcba4163567.jpg', 11),
(30, '5c6bcba421bb88.jpg', 11),
(31, '5c6bcba439a2b49.jpg', 11),
(32, '5c6bce1eeb5bf22.jpg', 12),
(33, '5c6bcea01281b65.jpg', 13),
(34, '5c6bcea029e7366.jpg', 13),
(35, '5c6bcea03cff667.jpg', 13),
(36, '5c6bcf4262fb717.jpg', 14),
(37, '5c6bcf4274c2b23.jpg', 14),
(38, '5c6bd004bb91124.jpg', 15),
(39, '5c6bd004cb26b42.jpeg', 15),
(40, '5c6bd176e60fc32.jpg', 16),
(41, '5c6bd1cc4e97562.jpg', 17),
(42, '5c6bd2558d6b218.jpg', 18),
(45, '5c6bd3b7077fa66.jpg', 20),
(46, '5c6bd3b711db769.jpg', 20),
(47, '5c6bd415a02e634.jpeg', 21),
(48, '5c6bd46f8769c68.jpg', 22),
(49, '5c6bd4ea8900714.jpg', 23),
(50, '5c6bd4ea909c315.jpg', 23),
(51, '5c6bd5882637934.jpg', 24),
(52, '5c6bd5883546439.jpg', 24),
(53, '5c6bd5d27c32270.jpg', 25),
(54, '5c6bd5d28c4db71.jpg', 25),
(55, '5c6bd6343964864.jpg', 26),
(56, '5c6bd634433a571.jpg', 26),
(57, '5c6bd699010fd71.jpg', 27),
(58, '5c6bd7816aa1f1.jpg', 28),
(59, '5c6bd7817d8012.jpeg', 28),
(60, '5c6bd7d9a49282.jpeg', 29),
(61, '5c6bd7d9ba5283.jpg', 29),
(62, '5c6bd841617533.jpg', 30),
(63, '5c6bd882de51020.jpg', 31),
(64, '5c6bd9069f5a147.jpg', 32),
(65, '5c6bd906a714848.jpg', 32),
(66, '5c6bd993ac48248.jpg', 33),
(67, '5c6bd993b3d5850.jpg', 33),
(68, '5c6bd9cd3415260.jpg', 34),
(69, '5c6bd9cd5216461.jpeg', 34),
(70, '5c6bdadfb38a030.jpg', 35),
(71, '5c6bdadfbb26835.jpg', 35),
(72, '5c6bdc0410a7652.jpg', 36),
(73, '5c6bdc041b95f57.jpg', 36),
(74, '5c6bdc52d033a53.jpg', 37),
(75, '5c6bdc52e5dbb54.jpg', 37),
(76, '5c6bde6c8912654.jpg', 38),
(77, '5c6bde6c90da255.jpg', 38),
(78, '5c6bdeb8e1f7250.jpg', 39),
(79, '5c6bdeb9027d057.jpg', 39),
(80, '5c6bdf457199f36.jpg', 40),
(81, '5c6bdf457921540.jpg', 40),
(82, '5c6bdfc69416745.jpg', 41),
(83, '5c6bdfc69ba1746.jpg', 41),
(84, '5c6be264ee52a46.jpg', 42),
(85, '5c6be2e876abf58.jpg', 43),
(86, '5c6be4e33df797.jpg', 44),
(87, '5c6be4e350ec114.jpg', 44),
(88, '5c6be4e363e0246.jpg', 44),
(89, '5c6be5312543269.jpg', 45),
(90, '5c6be531300a270.jpg', 45),
(91, '5c6be591c419e27.jpg', 46),
(92, '5c6be591cbc6628.jpg', 46),
(93, '5c6be5ec30bb328.jpg', 47),
(94, '5c6be5ec3870829.jpeg', 47),
(95, '5c6be67d8b08038.jpg', 48),
(96, '5c6be6cb98f8839.jpg', 49),
(97, '5c6be7004a84142.jpg', 50),
(98, '5c6be75a577b143.jpg', 51),
(99, '5c6be75a6225643.png', 51),
(100, '5c6be82e13a4351.jpg', 52),
(101, '5c6be906c28a65.jpg', 53),
(102, '5c6be906cf9e86.jpg', 53),
(103, '5c6be9378769a29.jpg', 54),
(104, '5c6be937930fe34.jpeg', 54),
(105, '5c6be95cc87c861.jpeg', 55),
(106, '5c6be9c76460f31.jpg', 56),
(107, '5c6bea0b6f37c34.jpg', 57),
(108, '5c6bea37df1ce70.jpg', 58),
(109, '5c6bea7a9fab750.jpg', 59),
(110, '5c6bead11305013.jpg', 60),
(111, '5c6bead11a5a614.jpg', 60),
(112, '5c6beb1f3dade14.jpg', 61),
(113, '5c6beb4d883d041.jpg', 62),
(114, '5c6beb8224dbc59.jpg', 63),
(115, '5c6beba7b588d65.jpg', 64),
(116, '5c6bebd6d69bf63.jpg', 65),
(117, '5c6bec3d96edd23.jpg', 66),
(118, '5c6bed01adb0519.jpg', 67);

-- --------------------------------------------------------

--
-- Table structure for table `girl_type`
--

CREATE TABLE `girl_type` (
  `id` int(11) NOT NULL,
  `girl_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `girl_type`
--

INSERT INTO `girl_type` (`id`, `girl_type`) VALUES
(1, 'College-girl'),
(2, 'Teenage'),
(3, 'Newly-Married'),
(4, 'House-Wife'),
(5, 'Message-Service'),
(6, 'Call-girls'),
(7, 'Dating-Service'),
(8, 'VIP-Models'),
(9, 'Indepedent'),
(10, 'New-Arrivals'),
(11, 'Russian');

-- --------------------------------------------------------

--
-- Table structure for table `place`
--

CREATE TABLE `place` (
  `id` int(11) NOT NULL,
  `place` varchar(255) NOT NULL,
  `place_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `place`
--

INSERT INTO `place` (`id`, `place`, `place_image`) VALUES
(1, 'South-mumbai', '5c68435a72b4dkandivali1.jpg'),
(2, 'Navi-mumbai', '5c6843e5b7313navimumbai1.jpg'),
(3, 'Bandra', '5c68440d7dc0abandra1.jpg'),
(4, 'Andheri', '5c68441972262andheri1.jpg'),
(5, 'Juhu ', '5c68443186514juhu1.jpg'),
(6, 'Lokhandwala ', '5c6844673f44clokhandwala1.jpg'),
(7, 'Dadar ', '5c68447b740bfdadar1.jpg'),
(8, 'Mira ', '5c6844add5db0malad1.jpg'),
(9, 'Bhayandar ', '5c6844bd9225eworli1.jpg'),
(10, 'Mira Road', '5c6844d69d1c8thane1.jpg'),
(11, 'Dahisar ', '5c6845306271edadar1.jpg'),
(12, 'Powai ', '5c68450077d8ekurla1.jpg'),
(13, 'Kurla ', '5c68454f3ec3ekurla1.jpg'),
(14, 'Chembur ', '5c6845659640enavimumbai1.jpg'),
(15, 'kashimira ', '5c684595657bawadala1.jpg'),
(16, 'Borivali ', '5c6845a468697borivali1.jpg'),
(17, 'Goregaon ', '5c6845b521b30goregaon1.jpg'),
(18, 'Malad', '5c6845c203a7dmalad1.jpg'),
(19, 'Thane', '5c6845dc895d7thane1.jpg'),
(20, 'Vashi ', '5c6845ed42407wadala1.jpg'),
(21, 'Nerul ', '5c684617d77e6kandivali1.jpg'),
(22, 'Belapur ', '5c68462d53b1elokhandwala1.jpg'),
(23, 'Panvel ', '5c68463c709cekurla1.jpg'),
(24, 'Kopar khairna', '5c68464849b4cnavimumbai1.jpg'),
(25, 'Airoli', '5c68467651067wadala1.jpg');

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
  `status` int(11) NOT NULL,
  `loginstatus` int(11) NOT NULL,
  `paypal` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `name`, `lastname`, `email`, `phone`, `img`, `password`, `usertype`, `status`, `loginstatus`, `paypal`) VALUES
(1, 'Mumbai ', 'Escort', 'admin@gmail.com', '9769033086', '5c64f158b397dfooter-top.jpg', 'admin123@', 1, 1, 1, 'paypal');

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `video_link` longtext NOT NULL,
  `iframe_img` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id`, `video_link`, `iframe_img`, `status`) VALUES
(1, 'https://www.xvideos.com/embedframe/41391467', '5c651f0a48990video-escort1.jpg', 0),
(2, 'https://www.xvideos.com/embedframe/10690373', '5c651f2456a01video-escort2.jpg', 0),
(3, 'https://www.xvideos.com/embedframe/26452295', '5c651f3a4ded8video-escort3.jpg', 0),
(4, 'https://www.xvideos.com/embedframe/33714645', '5c651f5c014a4video-escort4.jpg', 0),
(5, 'https://www.xvideos.com/embedframe/26689333', '5c651f70efd80video-escort5.jpg', 0),
(6, 'https://www.xvideos.com/embedframe/17212957', '5c651f8e9e834video-escort6.jpg', 0),
(7, 'https://www.xvideos.com/embedframe/36736267', '5c651fa2433f7video-escort7.jpg', 0),
(8, 'https://www.xvideos.com/embedframe/34280877', '5c651fb8888e1video-escort8.jpg', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `escort_details`
--
ALTER TABLE `escort_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `escort_image`
--
ALTER TABLE `escort_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `girl_type`
--
ALTER TABLE `girl_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `place`
--
ALTER TABLE `place`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `escort_details`
--
ALTER TABLE `escort_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `escort_image`
--
ALTER TABLE `escort_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `girl_type`
--
ALTER TABLE `girl_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `place`
--
ALTER TABLE `place`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
