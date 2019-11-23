-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2019 at 04:12 PM
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
-- Database: `4jan`
--

-- --------------------------------------------------------

--
-- Table structure for table `prac`
--

CREATE TABLE `prac` (
  `id` int(11) NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prac`
--

INSERT INTO `prac` (`id`, `value`) VALUES
(1, 'abc'),
(2, 'def'),
(3, 'ghi'),
(4, 'lmn');

-- --------------------------------------------------------

--
-- Table structure for table `prac2`
--

CREATE TABLE `prac2` (
  `id` int(11) NOT NULL,
  `clicks` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `unid` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prac2`
--

INSERT INTO `prac2` (`id`, `clicks`, `name`, `owner`, `unid`) VALUES
(1, '2', '', '', ''),
(2, '2,3', '', '', ''),
(3, '', '', '', ''),
(4, '3', '', '', ''),
(5, '2,4', 'shyam', '', ''),
(6, '2,3', 'rahul', '', ''),
(7, '3,4', 'rahul', 'lk,k', '5c2fb29846c59');

-- --------------------------------------------------------

--
-- Table structure for table `prac3`
--

CREATE TABLE `prac3` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prac3`
--

INSERT INTO `prac3` (`id`, `username`) VALUES
(1, 'rahul'),
(2, 'shyam');

-- --------------------------------------------------------

--
-- Table structure for table `prac4`
--

CREATE TABLE `prac4` (
  `id` int(11) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `unid` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prac4`
--

INSERT INTO `prac4` (`id`, `owner`, `unid`) VALUES
(1, 'tyeknas', '5c2fa9542978c'),
(2, 'lk,k', '5c2fb29846c59');

-- --------------------------------------------------------

--
-- Table structure for table `prac5`
--

CREATE TABLE `prac5` (
  `id` int(11) NOT NULL,
  `pro` varchar(255) NOT NULL,
  `sub` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prac5`
--

INSERT INTO `prac5` (`id`, `pro`, `sub`) VALUES
(3, 'bike', 'cat'),
(4, 'hat', 'kite5         '),
(5, 'bat', 'man');

-- --------------------------------------------------------

--
-- Table structure for table `prac6`
--

CREATE TABLE `prac6` (
  `id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `category_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prac6`
--

INSERT INTO `prac6` (`id`, `category`, `category_id`) VALUES
(1, 'ss', '4'),
(2, 'gg', '5'),
(3, 'll', '4'),
(4, 'test', '4'),
(5, 'fat', '4'),
(6, 'mat', '4');

-- --------------------------------------------------------

--
-- Table structure for table `prac7`
--

CREATE TABLE `prac7` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `ids` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prac7`
--

INSERT INTO `prac7` (`id`, `cat_id`, `ids`) VALUES
(1, 4, 1),
(2, 4, 1),
(3, 4, 3),
(4, 4, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `prac`
--
ALTER TABLE `prac`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prac2`
--
ALTER TABLE `prac2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prac3`
--
ALTER TABLE `prac3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prac4`
--
ALTER TABLE `prac4`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prac5`
--
ALTER TABLE `prac5`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prac6`
--
ALTER TABLE `prac6`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prac7`
--
ALTER TABLE `prac7`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `prac`
--
ALTER TABLE `prac`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `prac2`
--
ALTER TABLE `prac2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `prac3`
--
ALTER TABLE `prac3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `prac4`
--
ALTER TABLE `prac4`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `prac5`
--
ALTER TABLE `prac5`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `prac6`
--
ALTER TABLE `prac6`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `prac7`
--
ALTER TABLE `prac7`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
