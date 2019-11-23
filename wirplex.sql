-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2019 at 04:39 PM
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
-- Database: `wirplex`
--

-- --------------------------------------------------------

--
-- Table structure for table `agent`
--

CREATE TABLE `agent` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `date_of_join` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `cate_name` varchar(255) NOT NULL,
  `address1` text NOT NULL,
  `address2` text NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `postcode` int(11) NOT NULL,
  `country` varchar(255) NOT NULL,
  `active_status1` int(11) NOT NULL DEFAULT '0',
  `notes` text NOT NULL,
  `phone` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agent`
--

INSERT INTO `agent` (`id`, `first_name`, `last_name`, `date_of_join`, `mail`, `category`, `cate_name`, `address1`, `address2`, `city`, `state`, `postcode`, `country`, `active_status1`, `notes`, `phone`, `status`) VALUES
(1, 'Satirtha', 'Das', '2018-12-01', 'ak@gmail.com', 'agent', '', '195', 'B/S-1', 'indore', 'MP', 452001, 'India', 0, 'qwq', '9898554656', 1),
(2, 'test123', 'user123', '2018-12-01', 'sk@gmail.com', 'agent', '1wsq1ws', 'indore', 'india', 'indore', 'MP', 452001, 'India', 0, 'werd', '9898554656', 1),
(3, 'Shubhanshu', 'Soni', '2018-12-01', 'soni.shubhanshu93@live.com', 'agent', 'sad', '28, Vishnupuri Main, Flat No. 202, Anand Vihar Apart. , Bhanwarkua', 'gfdfgdsf', 'Indore', 'Madhya Pradesh', 452001, 'India', 0, 'ggyhdytdt', '8989500336', 1),
(4, 'para', 'bnkld', '2018-12-07', 'paragbhawsar23@gmail.com', 'agent', 'sdsd', 'dsdv', 'sdvsdv', 'indore', 'MP', 452001, 'India', 0, 'dfvdfdf', '9898554656', 1),
(5, 'Flavio', 'Test', '2018-12-05', 'flanet@hot.it', 'agent', 'flavio', 'ND', 'ND', 'ND', 'ND', 1000, 'ND', 0, 'ND', '1000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `assign_details`
--

CREATE TABLE `assign_details` (
  `id` int(11) NOT NULL,
  `agent_name` int(11) NOT NULL,
  `card_name` varchar(255) NOT NULL,
  `card_id` int(11) NOT NULL,
  `date_pick` varchar(255) NOT NULL,
  `paid_status` varchar(11) NOT NULL DEFAULT '0',
  `active_status` int(11) NOT NULL DEFAULT '0',
  `sale_satus` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assign_details`
--

INSERT INTO `assign_details` (`id`, `agent_name`, `card_name`, `card_id`, `date_pick`, `paid_status`, `active_status`, `sale_satus`) VALUES
(1, 1, 'qwq', 0, '2018-12-01', '1', 1, 0),
(2, 1, 'edws', 0, '2018-12-01', '0', 1, 1),
(3, 1, 'pl12', 0, '2018-12-03', '0', 1, 1),
(4, 1, 'plol', 0, '2018-12-03', '0', 1, 1),
(5, 5, '1ZATEST', 0, '2018-12-10', '0', 1, 0),
(6, 1, '45000', 0, '2018-12-15', '0', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `card_category`
--

CREATE TABLE `card_category` (
  `id` int(11) NOT NULL,
  `cate_name` varchar(255) NOT NULL,
  `card_valid` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `card_category`
--

INSERT INTO `card_category` (`id`, `cate_name`, `card_valid`) VALUES
(1, 'WIRPLEX M1 CARD', '1 months'),
(2, 'WIRPLEX M3 CARD', '6 months'),
(3, 'WIRPLEX M6 CARD', '9 months'),
(4, 'WIRPLEX M12 CARD', '12 months');

-- --------------------------------------------------------

--
-- Table structure for table `card_details`
--

CREATE TABLE `card_details` (
  `id` int(11) NOT NULL,
  `uniqid` varchar(255) NOT NULL,
  `agent` varchar(255) NOT NULL,
  `price` float(10,2) NOT NULL,
  `commission` float(10,2) NOT NULL,
  `status` varchar(255) NOT NULL,
  `date_of_active` varchar(255) NOT NULL,
  `category1` varchar(255) NOT NULL,
  `status_main` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `card_details`
--

INSERT INTO `card_details` (`id`, `uniqid`, `agent`, `price`, `commission`, `status`, `date_of_active`, `category1`, `status_main`) VALUES
(1, 'qwq', '', 111.00, 11.00, '', '2018-12-01', 'WIRPLEX M1 CARD', 1),
(2, 'edws', '', 112.00, 21.00, '', '2018-12-01', 'WIRPLEX M1 CARD', 1),
(3, 'pl12', '', 100.00, 10.00, '', '2018-12-03', 'WIRPLEX M3 CARD', 1),
(4, 'plol', '', 120.00, 12.00, '', '2018-12-15', 'WIRPLEX M3 CARD', 1),
(5, '45000', '', 50.00, 10.00, '', '2018-12-15', 'WIRPLEX M1 CARD', 1),
(6, '1ZATEST', '', 7.38, 1.62, '', '2018-12-10', 'WIRPLEX M1 CARD', 1);

-- --------------------------------------------------------

--
-- Table structure for table `card_number`
--

CREATE TABLE `card_number` (
  `id` int(11) NOT NULL,
  `connection_id` int(11) NOT NULL,
  `card_id` varchar(255) NOT NULL,
  `agent_id` int(11) NOT NULL,
  `card_cate_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `comission` float(10,2) NOT NULL,
  `pure_price` float(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `card_number`
--

INSERT INTO `card_number` (`id`, `connection_id`, `card_id`, `agent_id`, `card_cate_id`, `status`, `comission`, `pure_price`) VALUES
(1, 1, 'qwq', 0, 0, 0, 11.00, 111.00),
(2, 2, 'edws', 0, 0, 0, 21.00, 112.00),
(3, 3, 'pl12', 0, 0, 0, 10.00, 100.00),
(4, 4, 'plol', 0, 0, 0, 12.00, 120.00),
(5, 5, '45000', 0, 0, 0, 10.00, 50.00),
(6, 6, '1ZATEST', 0, 0, 0, 1.62, 7.38);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `date_of_birth` varchar(255) NOT NULL,
  `phone` int(11) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `address1` text NOT NULL,
  `address2` text NOT NULL,
  `state` varchar(255) NOT NULL,
  `postcode` int(11) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `agent_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer_sale`
--

CREATE TABLE `customer_sale` (
  `id` int(11) NOT NULL,
  `customer_id` varchar(25) NOT NULL,
  `card_id` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `date_of_issue` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_sale`
--

INSERT INTO `customer_sale` (`id`, `customer_id`, `card_id`, `status`, `date_of_issue`) VALUES
(1, '1', 'qwq', 1, '2018-12-01'),
(2, '1', 'edws', 1, '2018-12-01'),
(3, '1', 'pl12', 1, '2018-12-03'),
(4, '5', '1ZATEST', 1, '2018-12-10'),
(5, '1', '45000', 1, '2018-12-15'),
(6, '1', 'plol', 1, '2018-12-15');

-- --------------------------------------------------------

--
-- Table structure for table `super_admin`
--

CREATE TABLE `super_admin` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `main_status` int(11) NOT NULL,
  `loginStatus` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `super_admin`
--

INSERT INTO `super_admin` (`id`, `user_id`, `name`, `password`, `status`, `main_status`, `loginStatus`) VALUES
(1, 0, 'admin@wirplex.com', '123', 1, 1, 0),
(113, 1, 'satirtha@gmail.com', '123', 0, 0, 0),
(114, 2, 'sk@gmail.com', 'PASSb05be1b', 0, 0, 0),
(115, 3, 'soni.shubhanshu93@live.com', 'PASS8bd010e', 0, 0, 0),
(116, 4, 'paragbhawsar23@gmail.com', 'PASSdd910f2', 0, 0, 0),
(117, 5, 'flanet@hot.it', 'PASS4fbce1c', 0, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agent`
--
ALTER TABLE `agent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assign_details`
--
ALTER TABLE `assign_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `card_category`
--
ALTER TABLE `card_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `card_details`
--
ALTER TABLE `card_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `card_number`
--
ALTER TABLE `card_number`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_sale`
--
ALTER TABLE `customer_sale`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `super_admin`
--
ALTER TABLE `super_admin`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agent`
--
ALTER TABLE `agent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `assign_details`
--
ALTER TABLE `assign_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `card_category`
--
ALTER TABLE `card_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `card_details`
--
ALTER TABLE `card_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `card_number`
--
ALTER TABLE `card_number`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_sale`
--
ALTER TABLE `customer_sale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `super_admin`
--
ALTER TABLE `super_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
