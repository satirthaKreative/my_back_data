-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2019 at 04:19 PM
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
-- Database: `cube`
--

-- --------------------------------------------------------

--
-- Table structure for table `cargo`
--

CREATE TABLE `cargo` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cargo`
--

INSERT INTO `cargo` (`id`, `name`) VALUES
(1, 'WHEAT'),
(2, 'LUPINS'),
(3, 'BARLEY'),
(4, 'CANOLA'),
(5, 'OATS'),
(6, 'MALTS'),
(7, 'CHICKPEAS'),
(8, 'BEANS/LENTILS'),
(9, 'LENTILS'),
(10, 'CORNS');

-- --------------------------------------------------------

--
-- Table structure for table `dischargecountry`
--

CREATE TABLE `dischargecountry` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dischargecountry`
--

INSERT INTO `dischargecountry` (`id`, `name`) VALUES
(1, 'INDIA');

-- --------------------------------------------------------

--
-- Table structure for table `dischargeport`
--

CREATE TABLE `dischargeport` (
  `id` int(11) NOT NULL,
  `discountry` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dischargeport`
--

INSERT INTO `dischargeport` (`id`, `discountry`, `name`) VALUES
(1, 1, 'Port 12');

-- --------------------------------------------------------

--
-- Table structure for table `port`
--

CREATE TABLE `port` (
  `id` int(11) NOT NULL,
  `provinceid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `cargo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `port`
--

INSERT INTO `port` (`id`, `provinceid`, `name`, `cargo`) VALUES
(1, 1, 'Port Onee', ''),
(2, 1, 'port two', 'portest2'),
(3, 1, 'Assoc One', 'Assoc Test');

-- --------------------------------------------------------

--
-- Table structure for table `port_cost`
--

CREATE TABLE `port_cost` (
  `id` int(11) NOT NULL,
  `port` varchar(255) NOT NULL,
  `handysize` varchar(255) NOT NULL,
  `handymax` varchar(255) NOT NULL,
  `supramax` varchar(255) NOT NULL,
  `panamax` varchar(255) NOT NULL,
  `kamsarmax` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `port_cost`
--

INSERT INTO `port_cost` (`id`, `port`, `handysize`, `handymax`, `supramax`, `panamax`, `kamsarmax`) VALUES
(1, 'test1', '542', '165', '65126', '5665', '56'),
(2, 'test2', '775', '74', '7837', '487734', '8747');

-- --------------------------------------------------------

--
-- Table structure for table `province`
--

CREATE TABLE `province` (
  `id` int(11) NOT NULL,
  `province` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `province`
--

INSERT INTO `province` (`id`, `province`) VALUES
(1, 'Test Province');

-- --------------------------------------------------------

--
-- Table structure for table `record`
--

CREATE TABLE `record` (
  `id` int(11) NOT NULL,
  `month` varchar(255) NOT NULL,
  `vessel` varchar(255) NOT NULL,
  `province` varchar(255) NOT NULL,
  `loadport` varchar(255) NOT NULL,
  `terminal` varchar(255) NOT NULL,
  `dischargeport` varchar(255) NOT NULL,
  `dischargecountry` varchar(255) NOT NULL,
  `destination` varchar(255) NOT NULL,
  `arrival` varchar(255) NOT NULL,
  `berthing` varchar(255) NOT NULL,
  `departure` varchar(255) NOT NULL,
  `tonnage` varchar(255) NOT NULL,
  `cargo` varchar(255) NOT NULL,
  `shipper` varchar(255) NOT NULL,
  `waitingtime` varchar(255) NOT NULL,
  `vesselsize` varchar(255) NOT NULL,
  `remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `record`
--

INSERT INTO `record` (`id`, `month`, `vessel`, `province`, `loadport`, `terminal`, `dischargeport`, `dischargecountry`, `destination`, `arrival`, `berthing`, `departure`, `tonnage`, `cargo`, `shipper`, `waitingtime`, `vesselsize`, `remarks`) VALUES
(1, '', 'test', 'Test Province', 'Port Onee', 'Terminal Onee', 'Port 12', 'INDIA', 'test', '2018-09-22', '2018-09-29', '2018-09-22', 'test', 'Cargo 1', 'Shipper 1', '7', 'Handymax', ' test'),
(2, '', 'testing3', 'Test Province', 'port two', 'Terminal Onee', 'Port 12', 'INDIA', 'tesing', '2018-09-22', '2018-09-24', '2018-09-16', 'test', 'Cargo 1', 'Shipper 1', '2', 'Supramax', ' test'),
(3, '', 'testing You', 'Test Province', 'Assoc One', 'Terminal Onee', 'Port 12', 'INDIA', 'test', '2018-09-22', '2018-10-31', '2018-09-29', 'test', 'Cargo 1', 'Shipper 1', '39', 'Supramax', ' test'),
(4, 'Jan-18', 'AMIS LEADER', '', 'ESPERANCE', '', '', '', 'VIETNAM', '31/12/2017', '31/12/2017', '1/01/2018', '27,010', 'WHEAT', 'CBH GRAIN', '0', '', ''),
(5, 'Jan-18', 'HAMBURG PEARL', '', 'GERALDTON', '', '', '', 'ROTTERDAM', '26/12/2017', '1/01/2018', '2/01/2018', '27,500', 'LUPINS', 'GLENCORE GRAIN', '6', '', ''),
(6, 'Jan-18', 'AQUATAURUS', '', 'ADELAIDE - INNER', '', '', '', 'AUSTRALIA', '30/12/2018', '30/12/2018', '4/01/2018', '24,790', 'WHEAT', 'GLENCORE GRAIN', '0', '', ''),
(7, 'Jan-18', 'MONESGASQUE EPEE', '', 'GEELONG', '', '', '', 'CHINA', '1/01/2018', '2/01/2018', '4/01/2018', '31,728', 'BARLEY', 'GRAINCORP', '1', '', ''),
(8, 'Jan-18', 'SERPENTINE', '', 'PORT LINCOLN', '', '', '', 'INDONESIA', '31/12/2017', '3/01/2018', '4/01/2018', '26,820', 'WHEAT', 'AUSTRALIAN GRAIN EXPORTS', '3', '', ''),
(9, 'Jan-18', 'PACIFIC WAVE', '', 'KWINANA', '', '', '', 'KOREA', '1/2/2018', '1/3/2018', '1/4/2018', '2,912', 'WHEAT', 'PLUMGROVE', '1', '', ''),
(10, 'Jan-18', 'PACIFIC WAVE', '', 'KWINANA', '', '', '', 'KOREA', '1/2/2018', '1/3/2018', '1/4/2018', '32,780', 'WHEAT', 'PLUMGROVE', '1', '', ''),
(11, 'Jan-18', 'HUA XING HAI', '', 'ESPERANCE', '', '', '', 'BELGIUM', '2/01/2018', '3/01/2018', '5/01/2018', '65,188', 'CANOLA', 'CBH GRAIN', '1', '', ''),
(12, 'Jan-18', 'VENTURE PEARL', '', 'KWINANA', '', '', '', 'VIETNAM', '1/2/2018', '1/4/2018', '1/6/2018', '44,000', 'WHEAT', 'CBH GRAIN ', '1', '', ''),
(13, 'Jan-18', 'STAR LIFE', '', 'ADELAIDE - INNER', '', '', '', 'NEW ZEALAND', '4/01/2018', '5/01/2018', '7/01/2018', '24,499', 'WHEAT', 'ADM TRADING', '1', '', ''),
(14, 'Jan-18', 'ROOK', '', 'PORT GILES', '', '', '', 'JAPAN', '5/01/2018', '5/01/2018', '7/01/2018', '35,280', 'BARLEY', 'GLENCORE GRAIN', '0', '', ''),
(15, 'Jan-18', 'STAHLA', '', 'ALBANY', '', '', '', 'GERMANY', '31/12/2017', '5/01/2018', '8/01/2018', '56,274', 'CANOLA', 'CBH GRAIN', '5', '', ''),
(16, 'Jan-18', 'MONA MANX', '', 'ESPERANCE', '', '', '', 'CHINA', '6/01/2018', '7/01/2018', '9/01/2018', '55,000', 'BARLEY', 'CBH GRAIN', '1', '', ''),
(17, 'Jan-18', 'INDONESIAN BULKER', '', 'GEELONG', '', '', '', 'MALAYSIA', '8/01/2018', '8/01/2018', '9/01/2018', '27,500', 'WHEAT', 'GRAINCORP', '0', '', ''),
(18, 'Jan-18', 'MILLION BELL', '', 'KWINANA', '', '', '', 'CHINA', '1/4/2018', '1/5/2018', '1/9/2018', '55,093', 'BARLEY', 'CBH GRAIN ', '1', '', ''),
(19, 'Jan-18', 'ECO SPITFIRE', '', 'ADELAIDE - OUTER', '', '', '', 'BAHRAIN', '8/01/2018', '9/01/2018', '11/01/2018', '27,500', 'WHEAT', 'GLENCORE GRAIN', '1', '', ''),
(20, 'Jan-18', 'ALCOR', '', 'PORT LINCOLN', '', '', '', 'MALAYSIA', '8/01/2018', '8/01/2018', '11/01/2018', '63,000', 'WHEAT', 'GLENCORE GRAIN', '0', '', ''),
(21, 'Jan-18', 'FEDERAL KIBUNE', '', 'KWINANA', '', '', '', 'JAPAN', '1/8/2018', '1/10/2018', '1/11/2018', '21,500', 'BARLEY', 'CBH GRAIN ', '1', '', ''),
(22, 'Jan-18', 'ARRILAH-I', '', 'KWINANA', '', '', '', 'KOREA', '1/8/2018', '1/11/2018', '1/12/2018', '35,710', 'WHEAT', 'GLENCORE GRAIN', '3', '', ''),
(23, 'Jan-18', 'OCEAN GLORY', '', 'ALBANY', '', '', '', 'INDONESIA', '10/01/2018', '11/01/2018', '13/01/2018', '47,265', 'WHEAT', 'CBH GRAIN', '1', '', ''),
(24, 'Jan-18', 'INDIGO SILVER', '', 'GEELONG', '', '', '', 'CHINA', '6/01/2018', '10/01/2018', '13/01/2018', '33,677', 'BARLEY', 'GRAINCORP', '4', '', ''),
(25, 'Jan-18', 'WESTERN CALLAO', '', 'WALLAROO', '', '', '', 'UAE', '9/01/2018', '10/01/2018', '13/01/2018', '23,300', 'WHEAT', 'AUSTRALIAN GRAIN EXPORTS', '1', '', ''),
(26, 'Jan-18', 'AQUAPISCES', '', 'KWINANA', '', '', '', 'CHINA', '1/11/2018', '1/12/2018', '1/14/2018', '50,330', 'BARLEY', 'CBH GRAIN ', '1', '', ''),
(27, 'Jan-18', 'TEO', '', 'GEELONG', '', '', '', 'YEMEN', '7/01/2018', '13/01/2018', '16/01/2018', '32,050', 'WHEAT', 'GRAINCORP', '6', '', ''),
(28, 'Jan-18', 'HONEY BADGER', '', 'ALBANY', '', '', '', 'CHINA', '13/01/2018', '14/01/2018', '17/01/2018', '51,068', 'BARLEY', 'CBH GRAIN', '1', '', ''),
(29, 'Jan-18', 'NORD HAKATA', '', 'KWINANA', '', '', '', 'JAPAN', '1/15/2018', '1/16/2018', '1/17/2018', '25,524', 'WHEAT', 'CBH GRAIN', '1', '', ''),
(30, 'Jan-18', 'WESTERN CALLAO', '', 'ALBANY', '', '', '', 'UAE', '17/01/2018', '17/01/2018', '18/01/2018', '8,800', 'OATS', 'CBH GRAIN', '0', '', ''),
(31, 'Jan-18', 'ISS SPIRIT', '', 'KWINANA', '', '', '', 'JAPAN', '1/15/2018', '1/17/2018', '1/18/2018', '31,864', 'WHEAT', 'PLUMGROVE ', '2', '', ''),
(32, 'Jan-18', 'PAOLO TOPIC', '', 'NEWCASTLE', '', '', '', 'INDONESIA', '1/11/2018', '1/11/2018', '1/19/2018', '51,700', 'WHEAT', 'ARROW', '0', '', ''),
(33, 'Jan-18', 'BERGE DAISETSU', '', 'WALLAROO', '', '', '', 'NEW ZEALAND', '15/01/2018', '16/01/2018', '20/01/2018', '26,940', 'WHEAT', 'GLENCORE GRAIN', '1', '', ''),
(34, 'Jan-18', 'AFRICAN STARLING', '', 'KWINANA', '', '', '', 'JAPAN', '1/15/2018', '1/18/2018', '1/20/2018', '9,975', 'BARLEY', 'PLUMGROVE', '2', '', ''),
(35, 'Jan-18', 'AFRICAN STARLING', '', 'KWINANA', '', '', '', 'JAPAN', '1/15/2018', '1/18/2018', '1/20/2018', '39,982', 'WHEAT', 'PLUMGROVE', '2', '', ''),
(36, 'Jan-18', 'PANAGLA STENION', '', 'ALBANY', '', '', '', 'GERMANY', '18/01/2018', '19/01/2018', '22/01/2018', '55,237', 'CANOLA', 'CBH GRAIN', '1', '', ''),
(37, 'Jan-18', 'OCEAN HIRYU', '', 'ESPERANCE', '', '', '', 'CHINA', '1/20/2018', '1/20/2018', '1/23/2018', '48,300', 'BARLEY', 'CBH GRAIN', '0', '', ''),
(38, 'Jan-18', 'ADITYA', '', 'GERALDTON', '', '', '', 'KOREA', '21/01/2018', '22/01/2018', '24/01/2018', '50,000', 'WHEAT', 'PLUMGROVE', '1', '', ''),
(39, 'Jan-18', 'NICHIRIN', '', 'ALBANY', '', '', '', 'JAPAN', '20/01/2018', '22/01/2018', '25/01/2018', '49,274', 'WHEAT', 'PLUMGROVE', '2', '', ''),
(40, 'Jan-18', 'PENGHU SW', '', 'KWINANA', '', '', '', 'UAE', '1/21/2018', '1/22/2018', '1/25/2018', '11,000', 'WHEAT', 'EMERALD ', '0', '', ''),
(41, 'Jan-18', 'FUKUYAMA STAR', '', 'GEELONG', '', '', '', 'PHILIPPINES', '18/01/2018', '22/01/2018', '26/01/2018', '51,950', 'WHEAT', 'GRAINCORP', '4', '', ''),
(42, 'Jan-18', 'PEDHOULAS FIGHTER', '', 'ADELAIDE - OUTER', '', '', '', 'IRAQ', '16/01/2018', '17/01/2018', '28/01/2018', '52,501', 'WHEAT', 'GLENCORE GRAIN', '1', '', ''),
(43, 'Jan-18', 'WECO JOSEPHINE', '', 'GERALDTON', '', '', '', 'AUSTRALIA', '1/26/2018', '1/28/2018', '1/28/2018', '14,746', 'LUPINS', 'CBH GRAIN', '2', '', ''),
(44, 'Jan-18', 'ANEMONE', '', 'MELBOURNE', '', '', '', 'OMAN', '25/01/2018', '25/01/2018', '28/01/2018', '21,999', 'WHEAT', 'EMERALD', '0', '', ''),
(45, 'Jan-18', 'INGMAR OLDENDORFF', '', 'PORTLAND', '', '', '', 'CHINA', '23/01/2018', '23/01/2018', '28/01/2018', '56,513', 'BARLEY', 'OLDENDORFF', '0', '', ''),
(46, 'Jan-18', 'AQUAPROSPER', '', 'ALBANY', '', '', '', 'CHINA', '24/01/2018', '25/01/2018', '29/01/2018', '51,570', 'BARLEY', 'CBH GRAIN', '1', '', ''),
(47, 'Jan-18', 'SUPERNOVA', '', 'GEELONG', '', '', '', 'PNG', '24/01/2018', '27/01/2018', '29/01/2018', '22,000', 'WHEAT', 'CARGILL', '3', '', ''),
(48, 'Jan-18', 'BRIGHT HOPE', '', 'GERALDTON', '', '', '', 'MALAYSIA', '26/01/2018', '27/01/2018', '29/01/2018', '10,450', 'LUPINS', 'CARGILL', '1', '', ''),
(49, 'Jan-18', 'ALPHA LOYALTY', '', 'PORT LINCOLN', '', '', '', 'KUWAIT', '25/01/2018', '27/01/2018', '30/01/2018', '44,000', 'WHEAT', 'CBH GRAIN', '2', '', ''),
(50, 'Jan-18', 'MORNING CLOUD', '', 'KWINANA', '', '', '', 'CHINA', '1/24/2018', '1/27/2018', '1/30/2018', '62,060', 'BARLEY', 'GLENCORE GRAIN', '2', '', ''),
(51, 'Jan-18', 'HYDRUS', '', 'ALBANY', '', '', '', 'CHINA', '27/01/2018', '29/01/2018', '31/01/2018', '27,355', 'WHEAT', 'BUNGE', '2', '', ''),
(52, 'Jan-18', 'OCEAN ACE', '', 'ESPERANCE', '', '', '', 'INDONESIA', '28/01/2018', '29/01/2018', '31/01/18', '54,625', 'WHEAT', 'PLUMGROVE', '1', '', ''),
(53, 'Jan-18', 'CS CALLA', '', 'PORT GILES', '', '', '', 'INDONESIA', '27/01/2018', '29/01/2018', '31/01/2018', '25,200', 'WHEAT', 'AUSTRAILAN GRAIN EXPORTS', '2', '', ''),
(54, 'Jan-18', 'NIL', '', 'BRISBANE', '', '', '', '', '', '', '', '0', '', '', '0', '', ''),
(55, 'Jan-18', 'NIL', '', 'BRISBANE - QBT', '', '', '', '', '', '', '', '0', '', '', '0', '', ''),
(56, 'Jan-18', 'NIL', '', 'GLADSTONE', '', '', '', '', '', '', '', '0', '', '', '0', '', ''),
(57, 'Jan-18', 'NIL', '', 'MACKAY', '', '', '', '', '', '', '', '0', '', '', '0', '', ''),
(58, 'Jan-18', 'NIL', '', 'PORT KEMBLA - GRAINCORP', '', '', '', '', '', '', '', '0', '', '', '0', '', ''),
(59, 'Jan-18', 'NIL', '', 'PORT KEMBLA - QUATTRO', '', '', '', '', '', '', '', '0', '', '', '0', '', ''),
(60, 'Jan-18', 'NIL', '', 'THEVENARD', '', '', '', '', '', '', '', '0', '', '', '0', '', ''),
(61, 'Feb-18', 'AXIOS', '', 'ADELAIDE - OUTER', '', '', '', 'CHINA', '23/01/2018', '29/01/2018', '1/02/18', '64,999', 'BARLEY', 'BUNGE AGRIBUSINESS', '6', '', ''),
(62, 'Feb-18', 'KYPROS LOYALTY', '', 'GERALDTON', '', '', '', 'FRANCE', '1/30/2018', '1/30/2018', '2/1/2018', '32,995', 'CANOLA', 'GLENCORE GRAIN', '0', '', ''),
(63, 'Feb-18', 'JAG AMAR', '', 'GEELONG', '', '', '', 'BELGIUM', '26/01/2018', '29/01/2018', '2/02/18', '61,000', 'CANOLA', 'CARGILL', '3', '', ''),
(64, 'Feb-18', 'UNITY', '', 'GERALDTON', '', '', '', 'YEMEN', '1/31/2018', '2/1/2018', '2/2/2018', '31,000', 'WHEAT', 'CBH GRAIN', '1', '', ''),
(65, 'Feb-18', 'STADION II', '', 'THEVENARD', '', '', '', 'EGYPT', '29/01/2018', '29/01/2018', '2/02/18', '20,000', 'WHEAT', 'ADM TRADING', '0', '', ''),
(66, 'Feb-18', 'ODYSSEAS I', '', 'WALLAROO', '', '', '', 'CHINA', '24/01/2018', '28/01/2018', '2/02/18', '30,800', 'BARLEY', 'ADM TRADING', '4', '', ''),
(67, 'Feb-18', 'EMERALD ENTERPRISE', '', 'ESPERANCE', '', '', '', 'PHILIPPINES', '31/01/2018', '1/02/2018', '3/02/2018', '32,045', 'WHEAT', 'BUNGE AGRI', '1', '', ''),
(68, 'Feb-18', 'LATIKA NAREE', '', 'NEWCASTLE', '', '', '', 'INDONESIA', '22/01/2018', '29/01/2018', '3/02/18', '32,186', 'WHEAT', 'ARROW', '7', '', ''),
(69, 'Feb-18', 'JAG ARNAV', '', 'ALBANY', '', '', '', 'AUSTRALIA', '1/02/2018', '2/02/2018', '4/02/18', '38,500', 'BARLEY', 'CBH GRAIN', '1', '', ''),
(70, 'Feb-18', 'POAVOSA WISDOM III', '', 'GERALDTON', '', '', '', 'INDONESIA', '1/29/2018', '2/2/2018', '2/4/2018', '17,138', 'LUPINS', 'CBH GRAIN', '4', '', ''),
(71, 'Feb-18', 'POAVOSA WISDOM III', '', 'GERALDTON', '', '', '', 'INDONESIA', '1/29/2018', '2/2/2018', '2/4/2018', '10,030', 'WHEAT', 'CARGILL', '4', '', ''),
(72, 'Feb-18', 'IOANNA L', '', 'ESPERANCE', '', '', '', 'GERMANY', '3/02/2018', '3/02/2018', '5/02/2018', '66,000', 'CANOLA', 'CBH GRAIN', '0', '', ''),
(73, 'Feb-18', 'KYPROS LOYALTY', '', 'KWINANA', '', '', '', 'PORTUGAL', '2/02/2018', '2/02/2018', '5/02/2018', '28,467', 'CANOLA', 'GLENCORE GRAIN', '0', '', ''),
(74, 'Feb-18', 'STADION II', '', 'PORT LINCOLN', '', '', '', 'EGYPT', '4/02/2018', '4/02/2018', '5/02/18', '6,800', 'WHEAT', 'ADM TRADING', '0', '', ''),
(75, 'Feb-18', 'HYDRUS', '', 'KWINANA', '', '', '', 'CHINA', '2/02/2018', '4/02/2018', '6/02/2018', '16,542', 'OATS', 'BUNGE', '2', '', ''),
(76, 'Feb-18', 'DAIWAN GLORY', '', 'ESPERANCE', '', '', '', 'CHINA', '6/02/2018', '6/02/2018', '7/02/2018', '31,652', 'BARLEY', 'CBH GRAIN', '0', '', ''),
(77, 'Feb-18', 'JAG ARNAV', '', 'KWINANA', '', '', '', 'CHINA', '5/02/2018', '6/02/2018', '8/02/2018', '27,500', 'BARLEY', 'CBH GRAIN', '1', '', ''),
(78, 'Feb-18', 'PACIFIC NOBLE', '', 'ALBANY', '', '', '', 'JAPAN', '5/02/2018', '7/02/2018', '9/02/18', '25,500', 'BARLEY', 'CBH GRAIN', '2', '', ''),
(79, 'Feb-18', 'EVER BRILLIANT', '', 'ESPERANCE', '', '', '', 'JAPAN', '7/02/2018', '8/02/2018', '9/02/2018', '25,300', 'BARLEY', 'CBH GRAIN', '1', '', ''),
(80, 'Feb-18', 'OCEAN JORF', '', 'PORT LINCOLN', '', '', '', 'CHINA', '5/02/2018', '7/02/2018', '9/02/18', '31,000', 'BARLEY', 'GRAINCORP OPERATIONS', '2', '', ''),
(81, 'Feb-18', 'GLORIOUS SUNSHINE', '', 'KWINANA', '', '', '', 'PHILIPPINES', '8/02/2018', '9/02/2018', '10/02/2018', '14,850', 'MALT', 'CARGILL', '1', '', ''),
(82, 'Feb-18', 'NURI BEY', '', 'ALBANY', '', '', '', 'CHINA', '3/02/2018', '9/02/2018', '12/02/18', '57,750', 'BARLEY', 'CBH GRAIN', '6', '', ''),
(83, 'Feb-18', 'OCEAN GLORY', '', 'GEELONG', '', '', '', 'INDONESIA', '9/02/2018', '10/02/2018', '14/02/18', '50,000', 'WHEAT', 'GRAINCORP', '1', '', ''),
(84, 'Feb-18', 'GLORIOUS FUJI', '', 'GERALDTON', '', '', '', 'AUSTRALIA', '2/13/2018', '2/13/2018', '2/14/2018', '20,000', 'LUPINS', 'CBH GRAIN', '0', '', ''),
(85, 'Feb-18', 'GLORIA ISLAND', '', 'PORTLAND', '', '', '', 'JAPAN', '12/02/2018', '12/02/2018', '14/02/2018', '26,360', 'BARLEY', 'GRAINCORP', '0', '', ''),
(86, 'Feb-18', 'PRODIGY', '', 'ADELAIDE - OUTER', '', '', '', 'IRAQ', '14/02/2018', '15/02/2018', '16/02/18', '27,000', 'WHEAT', 'COFCO RESOURCES', '1', '', ''),
(87, 'Feb-18', 'BRAVERY', '', 'ESPERANCE', '', '', '', 'BELGIUM', '13/02/2018', '14/02/2018', '16/02/2018', '61,610', 'CANOLA', 'CBH GRAIN', '1', '', ''),
(88, 'Feb-18', 'DENSA LION', '', 'KWINANA', '', '', '', 'PHILIPPINES', '14/02/2018', '18/02/2018', '16/02/2018', '53,550', 'WHEAT', 'CBH GRAIN', '4', '', ''),
(89, 'Feb-18', 'GLORIOUS FUJI', '', 'KWINANA', '', '', '', 'JAPAN', '15/02/2018', '15/02/2018', '17/02/2018', '5,500', 'OATS', 'CBH GRAIN', '0', '', ''),
(90, 'Feb-18', 'DESERT CHALLENGER', '', 'PORT GILES', '', '', '', 'NIGERIA', '13/02/2018', '14/02/2018', '17/02/18', '50,500', 'WHEAT', 'GLENCORE GRAIN', '1', '', ''),
(91, 'Feb-18', 'IKAN JENAHAR', '', 'ADELAIDE - INNER', '', '', '', 'INDIA', '15/02/2018', '16/02/2018', '18/02/18', '30,780', 'WHEAT', 'GLENCORE GRAIN', '1', '', ''),
(92, 'Feb-18', 'VIYADA NAREE', '', 'ALBANY', '', '', '', 'AUSTRALIA', '8/02/2018', '16/02/2018', '18/02/18', '35,362', 'BARLEY', 'EMERALD', '8', '', ''),
(93, 'Feb-18', 'NORD COLORADO', '', 'MELBOURNE', '', '', '', 'CHINA', '12/02/2018', '12/02/2018', '18/02/2018', '49,149', 'BARLEY', 'EMERALD', '0', '', ''),
(94, 'Feb-18', 'LOCH NESS', '', 'KWINANA', '', '', '', 'CHINA', '16/02/2018', '16/02/2018', '19/02/2018', '55,053', 'BARLEY', 'CBH GRAIN', '0', '', ''),
(95, 'Feb-18', 'PILATUS VENTURE', '', 'ESPERANCE', '', '', '', 'CHINA', '17/02/2018', '17/02/2018', '20/02/2018', '55,710', 'BARLEY', 'GLENCORE GRAIN', '0', '', ''),
(96, 'Feb-18', 'ALAM SETIA', '', 'GEELONG', '', '', '', 'THAILAND', '15/02/2018', '17/02/2018', '20/02/18', '34,913', 'WHEAT', 'GRAINCORP', '2', '', ''),
(97, 'Feb-18', 'PRODIGY', '', 'PORT LINCOLN', '', '', '', 'IRAQ', '17/02/2018', '18/02/2018', '20/02/18', '22,500', 'WHEAT', 'COFCO RESOURCES', '1', '', ''),
(98, 'Feb-18', 'LUISA COLOSSUS', '', 'ALBANY', '', '', '', 'CHINA', '2/15/2018', '2/18/2018', '2/21/2018', '49,921', 'BARLEY', 'COFCO', '3', '', ''),
(99, 'Feb-18', 'INCE EVRENYE', '', 'KWINANA', '', '', '', 'YEMEN', '11/02/2018', '20/02/2018', '21/02/2018', '27,140', 'WHEAT', 'CBH GRAIN', '9', '', ''),
(100, 'Feb-18', 'LA VENTURE', '', 'KWINANA', '', '', '', 'KOREA', '14/02/2018', '18/02/2018', '22/02/2018', '40,700', 'WHEAT', 'CBH GRAIN', '4', '', ''),
(101, 'Feb-18', 'VERY MARIA', '', 'ADELAIDE - OUTER', '', '', '', 'KUWAIT', '17/02/2018', '22/02/2018', '24/02/18', '50,000', 'WHEAT', 'CBH GRAIN', '5', '', ''),
(102, 'Feb-18', 'MONA MANX', '', 'KWINANA', '', '', '', 'CHINA', '20/02/2018', '21/02/2018', '24/02/2018', '61,579', 'WHEAT', 'CBH GRAIN', '1', '', ''),
(103, 'Feb-18', 'UNI WEALTH', '', 'MELBOURNE', '', '', '', 'QATAR', '20/02/2018', '20/02/2018', '24/02/2018', '20,881', 'WHEAT', 'EMERALD', '0', '', ''),
(104, 'Feb-18', 'HELVETIA', '', 'NEWCASTLE', '', '', '', 'VIETNAM', '14/02/2018', '14/02/2018', '24/02/18', '16,194', 'WHEAT', 'RIVERINA', '0', '', ''),
(105, 'Feb-18', 'GHENT', '', 'PORT LINCOLN', '', '', '', 'VIETNAM', '16/02/2018', '18/02/2018', '24/02/18', '52,500', 'WHEAT', 'CBH GRAIN', '2', '', ''),
(106, 'Feb-18', 'ATLAS', '', 'ALBANY', '', '', '', 'NETHERLANDS', '2/15/2018', '2/22/2018', '2/25/2018', '30,000', 'CANOLA', 'CBH GRAIN', '7', '', ''),
(107, 'Feb-18', 'MAGIC P', '', 'GEELONG', '', '', '', 'BELGIUM', '20/02/2018', '21/02/2018', '25/02/18', '59,300', 'CANOLA', 'GRAINCORP', '1', '', ''),
(108, 'Feb-18', 'OCEAN APPLAUD', '', 'GERALDTON', '', '', '', 'KOREA', '2/21/2018', '2/23/2018', '2/25/2018', '49,565', 'WHEAT', 'GLENCORE GRAIN', '2', '', ''),
(109, 'Feb-18', 'SKYWALKER', '', 'GEELONG', '', '', '', 'CHINA', '17/02/2018', '20/02/2018', '26/02/18', '31,776', 'BARLEY', 'RIORDAN', '3', '', ''),
(110, 'Feb-18', 'CARO PADRE', '', 'ADELAIDE - INNER', '', '', '', 'CHINA', '7/02/2018', '21/02/2018', '27/02/18', '37,499', 'BARLEY', 'CREMER AUSTRALIA', '14', '', ''),
(111, 'Feb-18', 'OCEAN JORF', '', 'ADELAIDE - OUTER', '', '', '', 'CHINA', '10/02/2018', '26/02/2018', '27/02/18', '21,229', 'BARLEY', 'GRAINCORP', '16', '', ''),
(112, 'Feb-18', 'AFRICAN TEIST', '', 'GERALDTON', '', '', '', 'ITALY', '2/20/2018', '2/21/2018', '2/27/2018', '18,960', 'LUPINS', 'CBH GRAIN', '1', '', ''),
(113, 'Feb-18', 'OUTRIDER', '', 'PORT GILES', '', '', '', 'AUSTRALIA', '25/02/2018', '25/02/2018', '27/02/18', '27,300', 'BARLEY', 'COFCO RESOURCES', '0', '', ''),
(114, 'Feb-18', 'ATLAS', '', 'KWINANA', '', '', '', 'NETHERLANDS', '27/02/2018', '27/02/2018', '28/02/2018', '30,569', 'CANOLA', 'CBH GRAIN', '0', '', ''),
(115, 'Feb-18', 'ISSARA NAREE', '', 'ALBANY', '', '', '', 'CHINA', '2/18/2018', '2/25/2018', '3/1/2018', '47,530', 'BARLEY', 'EMERALD', '7', '', ''),
(116, 'Feb-18', 'NIL', '', 'BRISBANE', '', '', '', '', '', '', '', '0', '', '', '0', '', ''),
(117, 'Feb-18', 'NIL', '', 'BRISBANE - QBT', '', '', '', '', '', '', '', '0', '', '', '0', '', ''),
(118, 'Feb-18', 'NIL', '', 'GLADSTONE', '', '', '', '', '', '', '', '0', '', '', '0', '', ''),
(119, 'Feb-18', 'NIL', '', 'MACKAY', '', '', '', '', '', '', '', '0', '', '', '0', '', ''),
(120, 'Feb-18', 'NIL', '', 'PORT KEMBLA - GRAINCORP', '', '', '', '', '', '', '', '0', '', '', '0', '', ''),
(121, 'Feb-18', 'NIL', '', 'PORT KEMBLA - QUATTRO', '', '', '', '', '', '', '', '0', '', '', '0', '', ''),
(122, 'Mar-18', 'LEMESSOS NAPA', '', 'NEWCASTLE', '', '', '', 'ITALY', '24/02/2018', '25/02/2018', '1/03/2018', '35,000', 'WHEAT', 'GRAINCORP', '1', '', ''),
(123, 'Mar-18', 'CARO PADRE', '', 'PORT LINCOLN', '', '', '', 'CHINA', '28/02/2018', '28/02/2018', '1/03/2018', '16,086', 'BARLEY', 'CREMER AUSTRALIA', '0', '', ''),
(124, 'Mar-18', 'VICTORIA HARBOUR', '', 'BRISBANE', '', '', '', 'BANGLADESH', '26/02/2018', '27/02/2018', '1/03/2018', '7500', 'CHICKPEAS', 'GRAINCORP', '1', '', ''),
(125, 'Mar-18', 'BLESSING SW', '', 'GERALDTON', '', '', '', 'KOREA', '22/02/2018', '3/1/2018', '3/2/2018', '6,600', 'WHEAT', 'CBH GRAIN', '7', '', ''),
(126, 'Mar-18', 'GLORIOUS SUNRISE', '', 'PORT GILES', '', '', '', 'NEW ZEALAND', '27/02/2018', '27/02/2018', '2/03/2018', '32,018', 'WHEAT', 'GLENCORE GRAIN', '0', '', ''),
(127, 'Mar-18', 'ER MADEN', '', 'ESPERANCE', '', '', '', 'SINGAPORE', '2/28/2018', '2/28/2018', '3/3/2018', '53,250', 'WHEAT', 'GRAINCORP', '0', '', ''),
(128, 'Mar-18', 'SAKIZAYA ACE', '', 'GEELONG', '', '', '', 'EUROPE', '24/03/2018', '26/03/2018', '3/03/2018', '58069', 'CANOLA', 'GLENCORE', '2', '', ''),
(129, 'Mar-18', 'TIEN  FE', '', 'MELBOURNE', '', '', '', 'NEW ZEALAND', '18/02/2018', '25/02/2018', '3/03/2018', '20,896', 'WHEAT', 'EMERALD', '7', '', ''),
(130, 'Mar-18', 'CAPTAIN D', '', 'PORT LINCOLN', '', '', '', 'EGYPT', '15/02/2018', '28/02/2018', '3/03/2018', '29,160', 'WHEAT', 'ADM TRADING', '13', '', ''),
(131, 'Mar-18', 'IVS IBIS', '', 'THEVENARD', '', '', '', 'EGYPT', '28/02/2018', '1/03/2018', '3/03/2018', '18,000', 'WHEAT', 'ADM TRADING', '1', '', ''),
(132, 'Mar-18', 'IVS NORTH BERWICK', '', 'KWINANA', '', '', '', 'CHINA', '23/02/2018', '3/1/2018', '3/3/2018', '45,000', 'BARLEY', 'CBH GRAIN ', '6', '', ''),
(133, 'Mar-18', 'ARGONAUT ', '', 'ALBANY', '', '', '', 'BELGIUM', '23/02/2018', '1/03/2018', '5/03/2018', '55,000', 'CANOLA', 'CBH GRAIN', '6', '', ''),
(134, 'Mar-18', 'KUANYIN', '', 'GEELONG', '', '', '', 'PNG', '1/03/2018', '3/03/2018', '5/03/2018', '16000', 'WHEAT', 'GRAINCORP', '2', '', ''),
(135, 'Mar-18', 'IVS THANDA', '', 'GERALDTON', '', '', '', 'AFRICA', '3/03/2018', '3/4/2018', '3/5/2018', '16,500', 'LUPINS', 'CBH GRAIN', '1', '', ''),
(136, 'Mar-18', 'OCEAN ACE', '', 'WALLAROO', '', '', '', 'INDONESIA', '27/02/2018', '1/03/2018', '5/03/2018', '27,045', 'WHEAT', 'BUNGE AGRIBUSINESS', '2', '', ''),
(137, 'Mar-18', 'HONG JING', '', 'KWINANA', '', '', '', 'CHINA', '26/02/2018', '3/3/2018', '3/5/2018', '66,150', 'WHEAT', 'COFCO', '5', '', ''),
(138, 'Mar-18', 'ALLEGRA', '', 'MACKAY', '', '', '', 'INDIA', '26/02/2018', '3/03/2018', '6/03/2018', '24,000', 'CHICKPEAS', 'JK INTERNATIONAL', '5', '', ''),
(139, 'Mar-18', 'MYKONOS', '', 'KWINANA', '', '', '', 'CHINA', '5/03/2018', '3/5/2018', '3/6/2018', '15,622', 'BARLEY', 'CBH GRAIN ', '0', '', ''),
(140, 'Mar-18', 'VICTORIA HARBOUR', '', 'NEWCASTLE', '', '', '', 'ASIA', '3/03/2018', '4/03/2018', '7/03/2018', '18,418', 'CHICKPEAS', 'GRAINCORP', '1', '', ''),
(141, 'Mar-18', 'ARGONAUT', '', 'KWINANA', '', '', '', 'BELGIUM', '7/03/2018', '3/7/2018', '3/7/2018', '10,374', 'CANOLA', 'CBH GRAIN ', '0', '', ''),
(142, 'Mar-18', 'GH FORTUNE', '', 'ALBANY', '', '', '', 'AUSTRALIA', '2/03/2018', '6/03/2018', '8/03/2018', '42,000', 'BARLEY', 'CBH GRAIN', '4', '', ''),
(143, 'Mar-18', 'KING WHEAT', '', 'GEELONG', '', '', '', 'JAPAN', '6/03/2018', '7/03/2018', '8/03/2018', '8000', 'BARLEY', 'GRAINCORP', '1', '', ''),
(144, 'Mar-18', 'OCEAN ACE', '', 'PORT GILES', '', '', '', 'INDONESIA', '5/03/2018', '6/03/2018', '8/03/2018', '27,500', 'WHEAT', 'BUNGE AGRIBUSINESS', '1', '', ''),
(145, 'Mar-18', 'IVS IBIS', '', 'PORT KEMBLA - QUATTRO', '', '', '', 'EGYPT', '7/03/2018', '7/03/2018', '8/03/2018', '9,060', 'WHEAT', 'ARROW', '0', '', ''),
(146, 'Mar-18', 'ATLANTIC BULKER', '', 'PORT GILES', '', '', '', 'JAPAN', '6/03/2018', '8/03/2018', '9/03/2018', '14,200', 'BARLEY', 'BUNGE AGRIBUSINESS', '2', '', ''),
(147, 'Mar-18', 'LYRIC STAR', '', 'KWINANA', '', '', '', 'CHINA', '3/03/2018', '3/8/2018', '3/10/2018', '31,661', 'BARLEY', 'CBH GRAIN', '4', '', ''),
(148, 'Mar-18', 'LYRIC STAR', '', 'KWINANA', '', '', '', 'CHINA', '3/03/2018', '3/3/2018', '3/10/2018', '30,000', 'OATS', 'CBH GRAIN ', '0', '', ''),
(149, 'Mar-18', 'SAKIZAYA KALON', '', 'ALBANY', '', '', '', 'BELGIUM', '24/02/2018', '8/03/2018', '11/03/2018', '33,967', 'CANOLA', 'GLENCORE GRAIN', '12', '', ''),
(150, 'Mar-18', 'KING WHEAT ', '', 'PORT KEMBLA - GRAINCORP', '', '', '', 'JAPAN', '10/03/2018', '10/03/2018', '11/03/2018', '18,250', 'BARLEY', 'GRAINCORP', '0', '', ''),
(151, 'Mar-18', 'GLORIOUS SUNSHINE', '', 'KWINANA', '', '', '', 'JAPAN', '8/03/2018', '3/10/2018', '3/11/2018', '26,144', 'WHEAT', 'EMERALD', '2', '', ''),
(152, 'Mar-18', 'CHINA FRIENDSHIP', '', 'NEWCASTLE', '', '', '', 'CHINA', '2/03/2018', '7/03/2018', '12/03/2018', '15,450', 'WHEAT', 'GRAINCORP', '5', '', ''),
(153, 'Mar-18', 'LUCKY LIFE', '', 'WALLAROO', '', '', '', 'FIJI', '9/03/2018', '10/03/2018', '12/03/2018', '14,000', 'WHEAT', 'ADM TRADNG', '1', '', ''),
(154, 'Mar-18', 'PPS AMBITION', '', 'ALBANY', '', '', '', 'CHINA', '8/03/2018', '11/03/2018', '13/03/2018', '31,616', 'BARLEY', 'CBH GRAIN', '3', '', ''),
(155, 'Mar-18', 'SAKIZAYA KALON', '', 'ESPERANCE', '', '', '', 'BELGIUM', '3/11/2018', '3/12/2018', '3/13/2018', '29,834', 'CANOLA', 'GLENCORE GRAIN', '1', '', ''),
(156, 'Mar-18', 'GH FORTUNE', '', 'KWINANA', '', '', '', 'CHINA', '10/03/2018', '3/12/2018', '3/13/2018', '19,675', 'BARLEY', 'CBH GRAIN', '2', '', ''),
(157, 'Mar-18', 'RAPALLO', '', 'ADELAIDE - INNER', '', '', '', 'MALAYSIA', '6/03/2018', '8/03/2018', '14/03/2018', '30,000', 'WHEAT', 'GRAINCORP', '2', '', ''),
(158, 'Mar-18', 'MEDI AERO', '', 'GERALDTON', '', '', '', 'VIETNAM', '7/03/2018', '3/12/2018', '3/14/2018', '44,550', 'WHEAT', 'GLENCORE', '5', '', ''),
(159, 'Mar-18', 'WADI ALBOSTAN', '', 'ADELAIDE - OUTER', '', '', '', 'CHINA', '5/03/2018', '6/03/2018', '15/03/2018', '50,000', 'BARLEY', 'CBH', '1', '', ''),
(160, 'Mar-18', 'RED ROSE', '', 'ESPERANCE', '', '', '', 'DENMARK', '3/13/2018', '3/13/2018', '3/15/2018', '54,000', 'BARLEY', 'GRAINCORP', '0', '', ''),
(161, 'Mar-18', 'AMSTEL TIGER', '', 'MELBOURNE', '', '', '', 'CHINA', '8/03/2018', '8/03/2018', '16/03/2018', '49,039', 'BARLEY', 'EMERALD', '0', '', ''),
(162, 'Mar-18', 'SYROS ISLAND', '', 'KWINANA', '', '', '', 'CHINA', '13/03/2018', '3/13/2018', '3/16/2018', '54,206', 'BARLEY', 'GLENCORE', '0', '', ''),
(163, 'Mar-18', 'ATLANTIC BULKER', '', 'ADELAIDE - OUTER', '', '', '', 'JAPAN', '9/03/2018', '16/03/2018', '17/03/2018', '12,571', 'BARLEY', 'BUNGE AGRIBUSINESS', '7', '', ''),
(164, 'Mar-18', 'OCEAN GLORY', '', 'ESPERANCE', '', '', '', 'INDONESIA', '3/15/2018', '3/16/2018', '3/17/2018', '47,430', 'WHEAT', 'GRAINCORP', '1', '', ''),
(165, 'Mar-18', 'LEDA C', '', 'PORT LINCOLN', '', '', '', 'CHINA', '10/03/2018', '13/03/2018', '17/03/2018', '64,800', 'BARLEY', 'GLENCORE GRAIN', '3', '', ''),
(166, 'Mar-18', 'PROMISE 3', '', 'KWINANA', '', '', '', 'JAPAN', '15/03/2018', '3/16/2018', '3/17/2018', '30,825', 'WHEAT', 'CBH GRAIN ', '0', '', ''),
(167, 'Mar-18', 'RAPALLO', '', 'PORT LINCOLN', '', '', '', 'MALAYSIA', '15/03/2018', '16/03/2018', '19/03/2018', '30,000', 'WHEAT', 'GRAINCORP', '1', '', ''),
(168, 'Mar-18', 'BILLY JIM', '', 'KWINANA', '', '', '', 'GERMANY', '12/03/2018', '3/17/2018', '3/19/2018', '60,000', 'CANOLA', 'CBH GRAIN ', '5', '', ''),
(169, 'Mar-18', 'OCEAN HIRYU', '', 'ADELAIDE - INNER', '', '', '', 'INDONESIA', '14/03/2018', '14/03/2018', '20/03/2018', '24,280', 'WHEAT', 'PLUM GROVE PTY LTD', '0', '', ''),
(170, 'Mar-18', 'BENFICA', '', 'ALBANY', '', '', '', 'CHINA', '3/16/2018', '3/16/2018', '3/20/2018', '57,750', 'BARLEY', 'CBH GRAIN', '0', '', ''),
(171, 'Mar-18', 'ALEGRE III', '', 'KWINANA', '', '', '', 'PHILIPPINES', '17/03/2018', '3/19/2018', '3/20/2018', '54,000', 'WHEAT', 'CBH GRAIN', '2', '', ''),
(172, 'Mar-18', 'ALENTEJO', '', 'ALBANY', '', '', '', 'PHILIPPINES', '12/03/2018', '20/03/2018', '21/03/2018', '34,200', 'WHEAT', 'GLENCORE GRAIN', '8', '', ''),
(173, 'Mar-18', 'KING COTTON', '', 'PORT LINCOLN', '', '', '', 'INDONESIA', '16/03/2018', '20/03/2018', '21/03/2018', '32,000', 'WHEAT', 'AGE', '4', '', ''),
(174, 'Mar-18', 'BASIC BRAVE', '', 'WALLAROO', '', '', '', 'JAPAN', '17/03/2018', '20/03/2018', '22/03/2018', '26,385', 'BARLEY', 'BUNGE AGRIBUSINESS', '3', '', ''),
(175, 'Mar-18', 'ECKERT OLDENDORFF', '', 'ADELAIDE - INNER', '', '', '', 'JAPAN', '15/03/2018', '20/03/2018', '23/03/2018', '33,852', 'BARLEY', 'CBH GRAIN', '5', '', ''),
(176, 'Mar-18', 'LEMESSOS NAPA', '', 'ADELAIDE - OUTER', '', '', '', 'ITALY', '5/03/2018', '7/03/2018', '23/03/2018', '22,000', 'WHEAT', 'GLENCORE GRAIN', '2', '', ''),
(177, 'Mar-18', 'FEDERAL TYNE', '', 'ESPERANCE', '', '', '', 'CHINA', '3/21/2018', '3/21/2018', '3/23/2018', '48,370', 'BARLEY', 'CBH GRAIN', '0', '', ''),
(178, 'Mar-18', 'CHINA FRIENDSHIP', '', 'GEELONG', '', '', '', 'CHINA', '14/03/2018', '14/03/2018', '23/03/2018', '32709', 'BARLEY', 'CHS BRIADBENT', '0', '', ''),
(179, 'Mar-18', 'W-ORIGINAL', '', 'PORT GILES', '', '', '', 'BELGIUM', '20/03/2018', '21/03/2018', '23/03/2018', '14,788', 'RAPSEEDS', 'GLENCORE GRAIN', '1', '', ''),
(180, 'Mar-18', 'AYE EVOLUTION', '', 'KWINANA', '', '', '', 'KOREA', '15/03/2018', '3/21/2018', '3/23/2018', '53,673', 'WHEAT', 'GLENCORE ', '6', '', ''),
(181, 'Mar-18', 'DORIC JAVELIN', '', 'ESPERANCE', '', '', '', 'PHILIPPINES', '3/23/2018', '3/23/2018', '3/25/2018', '55,000', 'WHEAT', 'ADM TRADING', '0', '', ''),
(182, 'Mar-18', 'SUPER VALENTINA', '', 'KWINANA', '', '', '', 'CHINA', '23/03/2018', '3/23/2018', '3/25/2018', '31,746', 'BARLEY', 'CBH GRAIN ', '0', '', ''),
(183, 'Mar-18', 'CLOVER', '', 'KWINANA', '', '', '', 'CHINA', '15/03/2018', '3/24/2018', '3/26/2018', '55,000', 'BARLEY', 'EMERALD', '8', '', ''),
(184, 'Mar-18', 'MARITIME PROSPERITY', '', 'ADELAIDE - OUTER', '', '', '', 'CHINA', '20/03/2018', '24/03/2018', '27/03/2018', '60,066', 'WHEAT', 'COFCO', '4', '', ''),
(185, 'Mar-18', 'OCEAN SUKSES', '', 'ALBANY', '', '', '', 'INDONESIA', '3/23/2018', '3/24/2018', '3/27/2018', '51,229', 'WHEAT', 'GRAINCORP', '1', '', ''),
(186, 'Mar-18', 'CHRYSANTHI S ', '', 'ESPERANCE', '', '', '', 'AUSTRALIA', '3/25/2018', '3/25/2018', '3/27/2018', '33,000', 'CANOLA', 'CBH GRAIN', '0', '', ''),
(187, 'Mar-18', 'SUPERNOVA', '', 'PORT GILES', '', '', '', 'TBA', '24/03/2018', '24/04/2018', '27/03/2018', '25,000', 'BARLEY', 'CBH GRAIN', '31', '', ''),
(188, 'Mar-18', 'KEN SEI', '', 'THEVENARD', '', '', '', 'CHINA', '25/03/2018', '26/03/2018', '27/03/2018', '10,066', 'BARLEY', 'GLENCORE GRAIN', '1', '', ''),
(189, 'Mar-18', 'ERLYNE', '', 'ADELAIDE - INNER', '', '', '', 'EGYPT', '17/03/2018', '24/03/2018', '28/03/2018', '25,000', 'BEANS/LENTILS', 'CENTRE STATE EXPORTS', '7', '', ''),
(190, 'Mar-18', 'OCEAN HIRYU ', '', 'ESPERANCE', '', '', '', 'INDONESIA', '27/03/2018', '3/27/2018', '3/28/2018', '27,600', 'WHEAT', 'PLUMGROVE ', '0', '', ''),
(191, 'Mar-18', 'CENTENARIO BLUE ', '', 'MELBOURNE', '', '', '', 'CHINA', '13/03/2018', '18/03/2018', '28/03/2018', '46,185', 'BARLEY', 'EMERALD', '5', '', ''),
(192, 'Mar-18', 'FOUR EMERALD', '', 'PORT LINCOLN', '', '', '', 'PHILIPPINES', '24/03/2018', '26/03/2018', '28/03/2018', '32,800', 'WHEAT', 'COFCO RESOURCES', '2', '', ''),
(193, 'Mar-18', 'BERGE ASAHIDAKE', '', 'KWINANA', '', '', '', 'CHINA', '14/03/2018', '3/26/2018', '3/28/2018', '30,570', 'BARLEY', 'GLENCORE', '12', '', ''),
(194, 'Mar-18', 'XIU YU HAI ', '', 'PORT KEMBLA - QUATTRO', '', '', '', 'VIETNAM', '25/03/2018', '27/03/2018', '29/03/2018', '13,928', 'WHEAT', 'ARROW', '2', '', ''),
(195, 'Mar-18', 'EDGAR OLDENDORFF', '', 'WALLAROO', '', '', '', 'BAHRAIN', '16/03/2018', '24/03/2018', '29/03/2018', '26,900', 'WHEAT', 'GLENCORE GRAIN', '8', '', ''),
(196, 'Mar-18', 'INCE TOKYO', '', 'KWINANA', '', '', '', 'YEMEN', '24/03/2018', '3/27/2018', '3/29/2018', '55,000', 'WHEAT', 'CBH GRAIN ', '3', '', ''),
(197, 'Mar-18', 'ATLANTIC BULKER', '', 'BRISBANE', '', '', '', 'JAPAN', '22/03/2018', '28/03/2018', '29/03/2018', '8040', 'WHEAT', 'WILMAR GAVILLION', '6', '', ''),
(198, 'Mar-18', 'ERLYNE', '', 'PORT LINCOLN', '', '', '', 'EGYPT', '29/03/2018', '29/03/2018', '30/03/2018', '10,000', 'LENTILS', 'AGRIOZ', '0', '', ''),
(199, 'Mar-18', 'CL SEVEN', '', 'ALBANY', '', '', '', 'THAILAND', '3/28/2018', '3/29/2018', '3/31/2018', '45,100', 'WHEAT', 'CARGILL', '1', '', ''),
(200, 'Mar-18', 'CHRYSANTHI S', '', 'KWINANA', '', '', '', 'POLAND', '29/03/2018', '3/29/2018', '3/31/2018', '27,517', 'CANOLA', 'CBH GRAIN ', '0', '', ''),
(201, 'Mar-18', 'TRUST STAR', '', 'ALBANY', '', '', '', 'CHINA', '3/28/2018', '3/31/2018', '4/2/2018', '32,781', 'BARLEY', 'GLENCORE GRAIN', '3', '', ''),
(202, 'Mar-18', 'ANGELIC GLORY', '', 'ALBANY', '', '', '', 'GERMANY', '3/27/2018', '4/2/2018', '4/4/2018', '31,500', 'CANOLA', 'ADM TRADING', '6', '', ''),
(203, 'Mar-18', 'NIL', '', 'BRISBANE - QBT', '', '', '', '', '', '', '', '0', '', '', '0', '', ''),
(204, 'Mar-18', 'NIL', '', 'GLADSTONE', '', '', '', '', '', '', '', '0', '', '', '0', '', ''),
(205, 'Mar-18', 'NIL', '', 'PORT KEMBLA - QUATTRO', '', '', '', '', '', '', '', '0', '', '', '0', '', ''),
(206, 'Mar-18', 'NIL', '', 'PORT KEMBLA - QUATTRO', '', '', '', '', '', '', '', '', '', '', '0', '', ''),
(207, 'Mar-18', 'NIL', '', 'PORTLAND', '', '', '', '', '', '', '', '0', '', '', '0', '', ''),
(208, 'Apr-18', 'SUPERNOVA', '', 'BRISBANE', '', '', '', 'JAPAN', '1/04/2018', '3/04/2018', '3/04/2018', '5,150', 'WHEAT', 'GRAINCORP', '2', '', ''),
(209, 'Apr-18', 'ANGELIC GLORY ', '', 'ALBANY', '', '', '', 'GERMANY', '27/03/2018', '2/04/2018', '4/04/18', '31,500', 'CANOLA', 'ADM TRADING ', '6', '', ''),
(210, 'Apr-18', 'INCE ANADOLU', '', 'ESPERANCE', '', '', '', 'YEMEN', '2/04/2018', '2/04/2018', '4/04/2018', '55,000', 'WHEAT', 'GRAINCORP', '0', '', ''),
(211, 'Apr-18', 'KEN SEI', '', 'PORT LINCOLN', '', '', '', 'CHINA', '28/03/2018', '3/04/2018', '4/04/2018', '19,264', 'BARLEY', 'GLENCORE GRAIN', '6', '', ''),
(212, 'Apr-18', 'ECO DYNAMIC', '', 'PORT GILES', '', '', '', 'INDONESIA', '29/03/2018', '3/04/2018', '5/04/2018', '30,900', 'WHEAT', 'BUNGE', '5', '', ''),
(213, 'Apr-18', 'RATTANA NAREE', '', 'THEVENARD', '', '', '', 'INDONESIA', '31/03/2018', '3/04/2018', '5/04/2018', '22,000', 'WHEAT', 'GLENCORE GRAIN', '3', '', ''),
(214, 'Apr-18', 'YANGTZE PIONEER', '', 'KWINANA', '', '', '', 'JAPAN', '29/03/2018', '4/04/2018', '5/04/2018', '23,026', 'WHEAT', 'CBH GRAIN', '5', '', ''),
(215, 'Apr-18', 'AD ASTRA', '', 'GERALDTON', '', '', '', 'AUSTRALIA', '3/04/2018', '3/04/2018', '6/04/18', '50,690', 'CANOLA', 'CBH GRAIN', '0', '', ''),
(216, 'Apr-18', 'AFROS', '', 'GERALDTON', '', '', '', 'PHILIPPINES', '2/04/2018', '6/04/2018', '7/04/2018', '24,737', 'WHEAT', 'CARGILL', '4', '', ''),
(217, 'Apr-18', 'CRIMSON QUEEN', '', 'MELBOURNE', '', '', '', 'MALAYSIA', '18/03/2018', '28/03/2018', '7/04/2018', '48,167', 'WHEAT', 'EMERALD', '10', '', ''),
(218, 'Apr-18', 'SEA TRIBUTE', '', 'WALLAROO', '', '', '', 'IRAQ', '31/03/2018', '4/04/2018', '7/04/2018', '28,538', 'WHEAT', 'BUNGE', '4', '', ''),
(219, 'Apr-18', 'AGRI BRIGHT', '', 'ALBANY', '', '', '', 'AUSTRALIA', '1/04/2018', '7/04/2018', '8/04/2018', '22,000', 'CANOLA', 'CBH GRAIN', '6', '', ''),
(220, 'Apr-18', 'AD ASTRA', '', 'KWINANA', '', '', '', 'GERMANY', '6/04/2018', '7/04/2018', '8/04/18', '12,500', 'CANOLA', 'CBH GRAIN', '0', '', ''),
(221, 'Apr-18', 'K&A SP', '', 'ADELAIDE - INNER', '', '', '', 'JAPAN', '4/04/2018', '6/04/2018', '9/04/2018', '27,499', 'BARLEY', 'GLENCORE GRAIN', '2', '', ''),
(222, 'Apr-18', 'CAPETAN COSTAS S', '', 'KWINANA', '', '', '', 'UAE', '7/04/2018', '8/04/2018', '9/04/2018', '25,437', 'CANOLA', 'BUNGE', '0', '', ''),
(223, 'Apr-18', 'DARYA TIANA', '', 'ALBANY', '', '', '', 'AUSTRALIA', '4/04/2018', '9/04/2018', '10/04/2018', '30,800', 'WHEAT', 'CBH GRAIN', '5', '', ''),
(224, 'Apr-18', 'LEON', '', 'ADELAIDE - OUTER', '', '', '', 'NIGERIA', '24/03/2018', '8/04/2018', '11/04/2018', '50,000', 'WHEAT', 'GLENCORE GRAIN', '15', '', ''),
(225, 'Apr-18', 'AFROS', '', 'ESPERANCE', '', '', '', 'PHILIPPINES', '10/04/2018', '10/04/2018', '11/04/18', '33,132', 'WHEAT', 'CARGILL', '0', '', ''),
(226, 'Apr-18', 'AFRICAN PELICAN', '', 'GERALDTON', '', '', '', 'AUSTRALIA', '10/04/2018', '10/04/2018', '11/04/18', '15,814', 'LUPINS', 'CBH GRAIN', '0', '', ''),
(227, 'Apr-18', 'DARYA TIANA', '', 'ESPERANCE', '', '', '', 'PHILIPPINES', '11/04/2018', '12/04/2018', '12/04/2018', '26,320', 'WHEAT', 'CBH GRAIN', '1', '', ''),
(228, 'Apr-18', 'EMERALD ENTERPRISE', '', 'GEELONG', '', '', '', 'AUSTRALIA', '4/04/2018', '5/04/2018', '12/04/18', '31,373', 'BARLEY', 'RIORDAN', '1', '', ''),
(229, 'Apr-18', 'ANYA', '', 'KWINANA', '', '', '', 'KOREA', '7/04/2018', '9/04/2018', '12/04/18', '53,335', 'WHEAT', 'CBH GRAIN', '2', '', ''),
(230, 'Apr-18', 'XIN RO HAI', '', 'ALBANY', '', '', '', 'JAPAN', '6/04/2018', '11/04/2018', '13/04/2018', '36,023', 'WHEAT', 'CBH GRAIN', '5', '', ''),
(231, 'Apr-18', 'SAMOA', '', 'GEELONG', '', '', '', 'CHINA', '5/04/2018', '6/04/2018', '13/04/18', '57,450', 'BARLEY', 'GRAINCORP', '1', '', ''),
(232, 'Apr-18', 'NUEVA FORTUNA', '', 'NEWCASTLE', '', '', '', 'INDONESIA', '31/03/2018', '6/04/2018', '13/04/2018', '40,500', 'WHEAT', 'ARROW', '6', '', ''),
(233, 'Apr-18', 'AGRI BRIGHT', '', 'KWINANA', '', '', '', 'BELGIUM', '10/04/2018', '11/04/2018', '13/04/2018', '39,163', 'CANOLA', 'CBH GRAIN', '1', '', ''),
(234, 'Apr-18', 'STAR AQUARIUS ', '', 'ESPERANCE', '', '', '', 'PHILIPPINES', '13/04/2018', '13/04/2018', '14/04/18', '41,400', 'WHEAT', 'GLENCORE', '0', '', ''),
(235, 'Apr-18', 'CARO PADRE', '', 'ALBANY', '', '', '', 'DALIAN', '7/04/2018', '13/04/2018', '15/04/18', '51,644', 'BARLEY', 'CBH GRAIN', '6', '', ''),
(236, 'Apr-18', 'FEDERAL ISLAND', '', 'KWINANA', '', '', '', 'CHINA', '3/04/2018', '12/04/2018', '15/04/18', '57,750', 'BARLEY', 'GRAINCORP', '9', '', ''),
(237, 'Apr-18', 'NAVIOS ALDEBARAN ', '', 'ESPERANCE', '', '', '', 'BELGIUM', '15/04/2018', '16/04/2018', '16/04/2018', '18,145', 'CANOLA', 'CBH GRAIN', '1', '', ''),
(238, 'Apr-18', 'OCEAN GLORY', '', 'KWINANA', '', '', '', 'INDONESIA', '10/04/2018', '14/04/2018', '17/04/18', '47,580', 'WHEAT', 'PLUMGROVE', '3', '', ''),
(239, 'Apr-18', 'WARNOW MERKUR', '', 'KWINANA', '', '', '', 'KOREA', '12/04/2018', '16/04/2018', '17/04/18', '6,600', 'WHEAT', 'ADM TRADING ', '4', '', ''),
(240, 'Apr-18', 'NEW KEEPER', '', 'GERALDTON', '', '', '', 'KOREA', '14/04/2018', '16/04/2018', '18/04/18', '31,100', 'WHEAT', 'PLUMGROVE', '2', '', ''),
(241, 'Apr-18', 'XING YUAN HAI', '', 'PORT GILES', '', '', '', 'NZ', '11/04/2018', '12/04/2018', '18/04/2018', '26,950', 'WHEAT', 'GLENCORE GRAIN', '1', '', ''),
(242, 'Apr-18', 'EMERALD INDAH', '', 'PORT LINCOLN', '', '', '', 'TBA', '11/04/2018', '15/04/2018', '18/04/2018', '60,000', 'WHEAT', 'GRAINCORP', '4', '', ''),
(243, 'Apr-18', 'MAGPIE SW', '', 'ADELAIDE - INNER', '', '', '', 'FIJI', '14/04/2018', '16/04/2018', '19/04/2018', '30,511', 'WHEAT', 'GLENCORE GRAIN', '2', '', ''),
(244, 'Apr-18', 'PAN JASMINE', '', 'GERALDTON', '', '', '', 'KOREA', '13/04/2018', '18/04/2018', '20/04/18', '31,153', 'LUPINS', 'CBH GRAIN', '5', '', ''),
(245, 'Apr-18', 'GALINI ', '', 'ALBANY', '', '', '', 'AUSTRALIA', '4/16/2018', '4/17/2018', '4/21/2018', '35,951', 'BARLEY', 'EMERALD', '1', '', ''),
(246, 'Apr-18', 'TEAM HOPE', '', 'NEWCASTLE', '', '', '', 'CHINA', '13/04/2018', '17/04/2018', '21/04/2018', '33,000', 'WHEAT', 'ADM', '4', '', ''),
(247, 'Apr-18', 'ROUGH HABIT', '', 'PORT LINCOLN', '', '', '', 'NIGERIA', '12/04/2018', '17/04/2018', '21/04/2018', '54,400', 'WHEAT', 'GLENCORE GRAIN', '5', '', ''),
(248, 'Apr-18', 'WESTERN PANAMA', '', 'GEELONG', '', '', '', 'ITALY', '14/04/2018', '14/04/2018', '22/04/18', '30,421', 'WHEAT', 'ORIGIN', '0', '', ''),
(249, 'Apr-18', 'GLORIOUS KAMAGARI', '', 'KWINANA', '', '', '', 'CHINA', '15/04/2018', '20/04/2018', '22/04/18', '33,000', 'BARLEY', 'GRAINCORP', '4', '', ''),
(250, 'Apr-18', 'LAVIEEN ROSE', '', 'ALBANY', '', '', '', 'JAPAN', '4/20/2018', '4/21/2018', '4/23/2018', '27,314', 'CANOLA', 'CBH GRAIN', '1', '', ''),
(251, 'Apr-18', 'LMZ BIANCA', '', 'ESPERANCE', '', '', '', 'TAIWAN', '20/04/2018', '20/04/2018', '23/04/18', '66,000', 'BARLEY', 'CBH GRAIN', '0', '', ''),
(252, 'Apr-18', 'GALINI', '', 'KWINANA', '', '', '', 'CHINA', '22/04/2018', '22/04/2018', '23/04/2018', '16,500', 'BARLEY', 'EMERALD', '0', '', ''),
(253, 'Apr-18', 'ARGOLIS', '', 'GEELONG', '', '', '', 'KUWAIT', '16/04/2018', '22/04/2018', '24/04/18', '43,419', 'WHEAT', 'GRAINCORP', '6', '', ''),
(254, 'Apr-18', 'ARGOLIS', '', 'GEELONG', '', '', '', 'UAE', '16/04/2018', '22/04/2018', '24/04/18', '16,065', 'WHEAT', 'GRAINCORP', '6', '', ''),
(255, 'Apr-18', 'EVANGELIA', '', 'GERALDTON', '', '', '', 'IRAQ', '20/04/2018', '22/04/2018', '24/04/18', '50,400', 'WHEAT', 'CBH GRAIN', '2', '', ''),
(256, 'Apr-18', 'ATROMITOS L', '', 'GEELONG', '', '', '', 'NZ', '23/04/2018', '25/04/2018', '26/04/18', '27,152', 'WHEAT', 'CARGILL ', '2', '', ''),
(257, 'Apr-18', 'NAVIOS ALDEBARAN', '', 'PORT LINCOLN', '', '', '', 'NETHERLANDS', '18/04/2018', '23/04/2018', '26/04/2018', '40,000', 'CANOLA', 'CBH GRAIN', '5', '', ''),
(258, 'Apr-18', 'MAJESTY', '', 'KWINANA', '', '', '', 'YEMEN', '24/04/2018', '25/04/2018', '27/04/2018', '30,250', 'WHEAT', 'GRAINCORP', '0', '', ''),
(259, 'Apr-18', 'MIMITSU', '', 'ESPERANCE', '', '', '', 'CHINA', '25/04/2018', '25/04/2018', '28/04/2018', '35,046', 'BARLEY', 'ADM TRADING', '0', '', ''),
(260, 'Apr-18', 'SEA TRIBUTE', '', 'PORT LINCOLN', '', '', '', 'IRAQ', '8/04/2018', '26/04/2018', '28/04/2018', '23,812', 'WHEAT', 'BUNGE', '18', '', ''),
(261, 'Apr-18', 'PENGHU SW', '', 'WALLAROO', '', '', '', 'CHINA', '25/04/2018', '26/04/2018', '28/04/2018', '25,200', 'WHEAT', 'AUSTRALIAN GRAIN EXPORTS', '1', '', ''),
(262, 'Apr-18', 'MARIETTA', '', 'ADELAIDE - OUTER', '', '', '', 'CHINA', '12/04/2018', '23/04/2018', '29/04/2018', '63,000', 'WHEAT', 'COFCO', '11', '', ''),
(263, 'Apr-18', 'MONDIAL IRIS ', '', 'ALBANY', '', '', '', 'ROTTERDAM', '4/23/2018', '4/24/2018', '4/29/2018', '59,523', 'CANOLA', 'CBH GRAIN', '1', '', ''),
(264, 'Apr-18', 'OLYMPUS', '', 'ESPERANCE', '', '', '', 'UAE', '28/04/2018', '28/04/2018', '29/04/18', '27,500', 'CANOLA', 'BUNGE', '0', '', ''),
(265, 'Apr-18', 'APRILIA', '', 'GEELONG', '', '', '', 'CHINA', '24/04/2018', '27/04/2018', '29/04/18', '33,000', 'BARLEY', 'GRAINCORP', '3', '', ''),
(266, 'Apr-18', 'KUANYIN', '', 'MELBOURNE', '', '', '', 'PAPUA NEW GUINEA', '27/04/2018', '27/04/2018', '29/04/2018', '17,598', 'WHEAT', 'EMERALD', '0', '', ''),
(267, 'Apr-18', 'NAISS COURAGEOUS', '', 'ADELAIDE - INNER', '', '', '', 'VIETNAM', '17/04/2018', '26/04/2018', '30/04/2018', '27,499', 'WHEAT', 'BUNGE', '9', '', ''),
(268, 'Apr-18', 'RESURGENCE', '', 'KWINANA', '', '', '', 'CHINA', '20/04/2018', '28/04/2018', '30/04/2018', '43,012', 'BARLEY', 'CBH GRAIN', '8', '', ''),
(269, 'Apr-18', 'RESURGENCE', '', 'KWINANA', '', '', '', 'CHINA', '20/04/2018', '28/04/2018', '30/04/2018', '22,000', 'OATS', 'CBH GRAIN', '8', '', ''),
(270, 'Apr-18', 'VIGOROUS', '', 'ALBANY', '', '', '', 'YEMEN', '4/23/2018', '4/30/2018', '5/1/2018', '30,000', 'WHEAT', 'EMERALD', '7', '', ''),
(271, 'Apr-18', 'NIL', '', 'BRISBANE - QBT', '', '', '', '', '', '', '', '0', '', '', '0', '', ''),
(272, 'Apr-18', 'NIL', '', 'GEELONG', '', '', '', '', '', '', '', '0', '', '', '0', '', ''),
(273, 'Apr-18', 'NIL', '', 'GLADSTONE', '', '', '', '', '', '', '', '0', '', '', '0', '', ''),
(274, 'Apr-18', 'NIL', '', 'MACKAY', '', '', '', '', '', '', '', '0', '', '', '0', '', ''),
(275, 'Apr-18', 'NIL', '', 'PORT KEMBLA - GRAINCORP', '', '', '', '', '', '', '', '0', '', '', '0', '', ''),
(276, 'Apr-18', 'NIL', '', 'PORT KEMBLA - QUATTRO', '', '', '', '', '', '', '', '0', '', '', '0', '', ''),
(277, 'Apr-18', 'NIL', '', 'PORTLAND', '', '', '', '', '', '', '', '0', '', '', '0', '', ''),
(278, 'May-18', 'GREENERY SEA', '', 'PORT GILES', '', '', '', 'INDONESIA', '22/04/2018', '25/04/2018', '1/05/2018', '31050', 'WHEAT', 'AUSTRALIAN GRAIN EXPORTS', '3', '', ''),
(279, 'May-18', 'SENORITA', '', 'NEWCASTLE', '', '', '', 'ITALY', '24/04/2018', '26/04/2018', '2/05/2018', '49,705', 'WHEAT', 'GRAINCORP', '2', '', ''),
(280, 'May-18', 'DEVONGATE', '', 'KWINANA', '', '', '', 'KOREA', '27/04/2018', '1/05/2018', '3/05/2018', '43,098', 'WHEAT', 'GLENCORE GRAIN', '4', '', ''),
(281, 'May-18', 'DEVONGATE', '', 'KWINANA', '', '', '', 'KOREA', '27/04/2018', '1/05/2018', '3/05/2018', '11,902', 'WHEAT', 'GLENCORE GRAIN', '4', '', ''),
(282, 'May-18', 'ATLAS ', '', 'ALBANY', '', '', '', 'CHINA', '2/05/2018', '2/05/2018', '5/05/2018', '51,950', 'BARLEY', 'ADM TRADING ', '0', '', ''),
(283, 'May-18', 'ALAM SETIA', '', 'GEELONG', '', '', '', 'CHINA', '26/04/2018', '27/04/2018', '5/05/2018', '32,996', 'BARLEY', 'COFCO', '1', '', ''),
(284, 'May-18', 'SOTKA', '', 'KWINANA', '', '', '', 'PHILIPPINES', '3/05/2018', '5/3/2018', '5/05/2018', '54,200', 'WHEAT', 'CARGILL', '0', '', ''),
(285, 'May-18', 'NAESS COURAGEOUS', '', 'ADELAIDE - OUTER', '', '', '', 'VIETNAM', '30/04/2018', '30/04/2018', '6/05/2018', '26499.19', 'WHEAT', 'BUNGE AGRIBUSINESS', '0', '', ''),
(286, 'May-18', 'AFRICAN ROOK', '', 'MELBOURNE', '', '', '', 'AUCKLAND', '1/05/2018', '2/05/2018', '7/05/2018', '32004.92', 'WHEAT', 'EMERALD', '1', '', ''),
(287, 'May-18', 'ASTRA PERSEUS', '', 'KWINANA', '', '', '', 'PHILIPPINES', '3/05/2018', '4/05/2018', '7/05/2018', '53,850', 'WHEAT', 'CBH GRAIN ', '1', '', ''),
(288, 'May-18', 'GLORY TRADER', '', 'ESPERANCE', '', '', '', 'CHINA', '5/05/2018', '5/05/2018', '8/05/2018', '66,000', 'BARLEY', 'CBH', '0', '', ''),
(289, 'May-18', 'OCEAN SUKSES', '', 'PORT LINCOLN', '', '', '', 'INDONESIA', '6/05/2018', '7/05/2018', '8/05/2018', '30750', 'WHEAT', 'AWB CARGILL', '1', '', ''),
(290, 'May-18', 'BROADGATE', '', 'ADELAIDE - INNER', '', '', '', 'JAPAN', '29/04/2018', '7/05/2018', '9/05/2018', '32771.2', 'BARLEY', 'GLENCORE GRAIN', '8', '', ''),
(291, 'May-18', 'OLYMPUS', '', 'PORT LINCOLN', '', '', '', 'UAE', '3/05/2018', '8/05/2018', '9/05/2018', '20680', 'CANOLA', 'BUNGE AGRIBUSINESS', '5', '', ''),
(292, 'May-18', 'VIGOROUS', '', 'KWINANA', '', '', '', 'YEMEN', '3/05/2018', '7/05/2018', '9/05/2018', '4,767', 'WHEAT', 'GRAINCORP', '3', '', ''),
(293, 'May-18', 'VIGOROUS', '', 'KWINANA', '', '', '', 'YEMEN', '3/05/2018', '7/05/2018', '9/05/2018', '15,000', 'WHEAT', 'GRAINCORP', '3', '', ''),
(294, 'May-18', 'SHANDONG FU DE ', '', 'ALBANY', '', '', '', 'THAILAND', '5/05/2018', '5/05/2018', '11/05/2018', '59,380', 'BARLEY', 'CBH', '0', '', ''),
(295, 'May-18', 'MORNING CLOUD', '', 'WALLAROO', '', '', '', 'CHINA', '27/04/2018', '8/05/2018', '11/05/2018', '29800', 'BARLEY', 'GLENCORE GRAIN', '11', '', ''),
(296, 'May-18', 'SAKIZAYA RESPECT', '', 'KWINANA', '', '', '', 'CHINA', '29/04/2018', '5/8/2018', '11/05/2018', '69,300', 'WHEAT', 'COFCO', '8', '', ''),
(297, 'May-18', 'CLIPPER TENACIOUS', '', 'PORT LINCOLN', '', '', '', 'EGYPT', '8/05/2018', '10/05/2018', '12/05/2018', '27500', 'WHEAT', 'GLENCORE GRAIN', '2', '', ''),
(298, 'May-18', 'SSI MAJECTIC ', '', 'ALBANY', '', '', '', 'JAPAN', '11/05/2018', '11/05/2018', '13/05/2018', '48,735', 'WHEAT', 'CBH', '0', '', ''),
(299, 'May-18', 'PLOVER ARROW', '', 'GEELONG', '', '', '', 'SOUTH KOREA', '9/05/2018', '9/05/2018', '13/05/2018', '14,325', 'CORN', 'WILMAR GAVILON', '0', '', ''),
(300, 'May-18', 'OCEAN GLORY ', '', 'ESPERANCE', '', '', '', 'INDONESIA', '12/05/2018', '12/05/2018', '14/05/2018', '47,583', 'WHEAT', 'PLUM GROVE PTY LTD', '0', '', ''),
(301, 'May-18', 'DROGBA', '', 'KWINANA', '', '', '', 'PHILIPPINES', '10/05/2018', '5/11/2018', '14/05/2018', '56,735', 'WHEAT', 'ADM TRADING ', '0', '', ''),
(302, 'May-18', 'OCEAN MAKMUR ', '', 'GERALDTON', '', '', '', 'INDONESIA', '10/05/2018', '13/05/2018', '15/05/2018', '58,719', 'WHEAT', 'SHIP AGENCIES SERVICES PTY LTD ', '3', '', ''),
(303, 'May-18', 'OCEANIC HAWK ', '', 'MACKAY', '', '', '', 'THAILAND', '8/05/2018', '12/05/2018', '15/05/2018', '26,776', 'WHEAT', 'GRAINCORP', '4', '', ''),
(304, 'May-18', 'KANG HUAN ', '', 'ALBANY', '', '', '', 'CHINA', '13/05/2018', '14/05/2018', '16/05/2018', '43,736', 'BARLEY', 'CBH', '1', '', ''),
(305, 'May-18', 'MORNING CLOUD ', '', 'ESPERANCE', '', '', '', 'CHINA', '14/05/2018', '14/05/2018', '16/05/2018', '37,854', 'BARLEY', 'GLENCORE A ', '0', '', ''),
(306, 'May-18', 'LYRIC SUN', '', 'WALLAROO', '', '', '', 'CHINA', '14/05/2018', '15/05/2018', '18/05/2018', '27000', 'BARLEY', 'GRAINCORP', '1', '', ''),
(307, 'May-18', 'EMILIE BULKER', '', 'ADELAIDE - OUTER', '', '', '', 'JAPAN', '7/05/2018', '8/05/2018', '19/05/2018', '29924.31', 'BARLEY', 'GLENCORE GRAIN', '1', '', ''),
(308, 'May-18', 'DENSA FALCON ', '', 'GERALDTON', '', '', '', 'SINGAPORE', '12/05/2018', '18/05/2018', '19/05/2018', '35,200', 'WHEAT', 'GULF AGENCY COMPANY ', '6', '', ''),
(309, 'May-18', 'CHLOE ', '', 'ALBANY', '', '', '', 'JAPAN', '17/05/2018', '18/05/2018', '20/05/2018', '22,500', 'BARLEY', 'CBH', '1', '', ''),
(310, 'May-18', 'GRAECIAS UNIVERSALIS', '', 'GEELONG', '', '', '', 'CHINA', '13/05/2018', '14/05/2018', '20/05/2018', '57,600', 'BARLEY', 'GRAINCORP', '1', '', ''),
(311, 'May-18', 'STAR PLANET ', '', 'ESPERANCE', '', '', '', 'VIETNAM', '18/05/2018', '18/05/2018', '21/05/2018', '20,056', 'BARLEY', 'CBH', '0', '', ''),
(312, 'May-18', 'STAR PLANET ', '', 'ESPERANCE', '', '', '', 'VIETNAM', '18/05/2018', '18/05/2018', '21/05/2018', '51,594', 'WHEAT', 'GRAINCORP ', '0', '', ''),
(313, 'May-18', 'DAIMONGATE', '', 'KWINANA', '', '', '', 'CHINA', '18/05/2018', '5/18/2018', '21/05/2018', '50,900', 'BARLEY', 'CBH GRAIN', '0', '', ''),
(314, 'May-18', 'KANDA LOGGER', '', 'ADELAIDE - OUTER', '', '', '', 'INDONESIA', '17/05/2018', '20/05/2018', '22/05/2018', '32999.3', 'WHEAT', 'AUSTRALIAN GRAIN EXPORT', '3', '', ''),
(315, 'May-18', 'SUMMIT SW ', '', 'ALBANY', '', '', '', 'SINGAPORE', '22/05/2018', '22/05/2018', '23/05/2018', '15,400', 'WHEAT', 'CBH', '0', '', ''),
(316, 'May-18', 'OLYMPOS', '', 'PORT GILES', '', '', '', 'DUBAI', '21/05/2018', '21/05/2018', '24/05/2018', '45000', 'WHEAT', 'CBH GRAIN', '0', '', ''),
(317, 'May-18', 'SHANGHAI BULKER', '', 'PORT LINCOLN', '', '', '', 'VIETNAM', '17/05/2018', '22/05/2018', '24/05/2018', '54347', 'WHEAT', 'COFCO RESOURCES', '5', '', ''),
(318, 'May-18', 'AEOLIA', '', 'KWINANA', '', '', '', 'PHILIPPINES', '20/05/2018', '21/05/2018', '24/05/2018', '55,000', 'WHEAT', 'COFCO RESOURCES', '1', '', ''),
(319, 'May-18', 'KOHINOOR', '', 'MELBOURNE', '', '', '', 'MALAYSIA', '22/05/2018', '23/05/2018', '25/05/2018', '16242.36', 'WHEAT', 'EMERALD', '1', '', ''),
(320, 'May-18', 'MIAO XIANG', '', 'ADELAIDE - OUTER', '', '', '', 'MALAYSIA', '22/05/2018', '22/05/2018', '26/05/2018', '55000', 'WHEAT', 'CBH GRAIN', '0', '', ''),
(321, 'May-18', 'DESERT OASIS', '', 'GEELONG', '', '', '', 'NIGERIA', '22/05/2018', '22/05/2018', '26/05/2018', '49,140', 'WHEAT', 'CARGILL', '0', '', ''),
(322, 'May-18', 'OCEAN  PHOENIX', '', 'WALLAROO', '', '', '', 'INDONESIA', '24/05/2018', '24/05/2018', '26/05/2018', '18415', 'WHEAT', 'PLUM GROVE', '0', '', ''),
(323, 'May-18', 'VENTURE GOAL ', '', 'GERALDTON', '', '', '', 'PHILIPPINES', '19/05/2018', '21/05/2018', '27/05/2018', '38,500', 'WHEAT', 'INCHAPE SHIPPING SERVICES ', '2', '', ''),
(324, 'May-18', 'ELISABETH OLDENDORFF', '', 'PORT LINCOLN', '', '', '', 'CHINA', '21/05/2018', '24/05/2018', '27/05/2018', '36029', 'BARLEY', 'COFCO RESOURCES', '3', '', ''),
(325, 'May-18', 'CHLOE', '', 'KWINANA', '', '', '', 'CHINA', '21/05/2018', '5/23/2018', '27/05/2018', '35,250', 'BARLEY', 'CBH GRAIN', '1', '', ''),
(326, 'May-18', 'XING RONG HAI', '', 'KWINANA', '', '', '', 'JAPAN', '24/05/2018', '25/05/2018', '28/05/2018', '36,472', 'WHEAT', 'PLUM GROVE PTY LTD', '0', '', ''),
(327, 'May-18', 'ABY MONICA', '', 'ALBANY', '', '', '', 'PHILIPPINES', '26/05/2018', '29/05/2018', '29/05/2018', '51,561', 'WHEAT', 'GAC ', '3', '', '');
INSERT INTO `record` (`id`, `month`, `vessel`, `province`, `loadport`, `terminal`, `dischargeport`, `dischargecountry`, `destination`, `arrival`, `berthing`, `departure`, `tonnage`, `cargo`, `shipper`, `waitingtime`, `vesselsize`, `remarks`) VALUES
(328, 'May-18', 'OCEAN PHOENIX', '', 'PORT GILES', '', '', '', 'INDONESIA', '26/05/2018', '27/05/2018', '29/05/2018', '30000', 'WHEAT', 'PLUM GROVE PTY LTD', '1', '', ''),
(329, 'May-18', 'OCEAN JOY', '', 'ADELAIDE - INNER', '', '', '', 'JAPAN', '26/05/2018', '26/05/2018', '30/05/2018', '33303.22', 'WHEAT', 'BUNGE AGRIBUSINESS', '0', '', ''),
(330, 'May-18', 'NIL', '', 'BRISBANE', '', '', '', '', '', '', '', '0', '', '', '0', '', ''),
(331, 'May-18', 'NIL', '', 'BRISBANE - QBT', '', '', '', '', '', '', '', '0', '', '', '0', '', ''),
(332, 'May-18', 'NIL', '', 'GLADSTONE', '', '', '', '', '', '', '', '0', '', '', '0', '', ''),
(333, 'May-18', 'NIL', '', 'PORT KEMBLA - GRAINCORP', '', '', '', '', '', '', '', '0', '', '', '0', '', ''),
(334, 'May-18', 'NIL', '', 'PORT KEMBLA - QUATTRO', '', '', '', '', '', '', '', '0', '', '', '0', '', ''),
(335, 'May-18', 'NIL', '', 'PORTLAND', '', '', '', '', '', '', '', '0', '', '', '0', '', ''),
(336, 'May-18', 'NIL', '', 'THEVENARD', '', '', '', '', '', '', '', '0', '', '', '0', '', ''),
(337, 'Jun-18', 'BRIGHT RAINBOW', '', 'ADELAIDE ', '', '', '', 'JAPAN', '28/05/2018', '31/05/2018', '1/06/2018', '20,600', 'BARLEY', 'GLENCORE GRAIN', '3', '', ''),
(338, 'Jun-18', 'PACIFIC HOPE ', '', 'ALBANY', '', '', '', 'HAKATA ', '1/06/2018', '2/06/2018', '3/06/2018', '25,600', 'WHEAT', 'CBH GRAIN ', '1', '', ''),
(339, 'Jun-18', 'CLIPPER TENACIOUS', '', 'THEVENARD', '', '', '', 'EGYPT', '31/05/2018', '31/05/2018', '3/06/2018', '17,492', 'WHEAT', 'ADM TRADING', '0', '', ''),
(340, 'Jun-18', 'SSI CHALLENGER ', '', 'GERALDTON', '', '', '', 'JEBEL ALI ', '5/29/2018', '6/2/2018', '6/5/2018', '44,000', 'CANOLA ', 'WILHELMSEN SHIP SERVICE', '4', '', ''),
(341, 'Jun-18', 'LEDA C', '', 'ADELAIDE ', '', '', '', 'CHINA', '19/05/2018', '1/06/2018', '6/06/2018', '65,999', 'BARLEY', 'GLENCORE GRAIN', '13', '', ''),
(342, 'Jun-18', 'PRONOI', '', 'ALBANY', '', '', '', 'INCHEN', '29/05/2018', '4/06/2018', '6/06/2018', '50,000', 'WHEAT', 'CBH GRAIN ', '6', '', ''),
(343, 'Jun-18', 'BLISS', '', 'PORT LINCOLN', '', '', '', 'BRISBANE', '4/06/2018', '5/06/2018', '6/06/2018', '26,598/7,216', 'WHEAT/BARLEY', 'COFCO RESOURCES', '1', '', ''),
(344, 'Jun-18', 'SOTKA ', '', 'GERALDTON', '', '', '', 'SINGAPORE', '6/3/2018', '6/6/2018', '6/8/2018', '50,230', 'WHEAT', 'WILHELMSEN SHIP SERVICE', '3', '', ''),
(345, 'Jun-18', 'DL JASMINE', '', 'PORT GILES', '', '', '', 'INDONESIA', '20/05/2018', '2/06/2018', '8/06/2018', '32,000', 'WHEAT', 'AUSTRALIAN GRAIN EXPORT', '13', '', ''),
(346, 'Jun-18', 'SOLDOY', '', 'ALBANY', '', '', '', 'CHINA', '4/06/2018', '7/06/2018', '9/06/2018', '30,000', 'WHEAT ', 'GRAINCORP', '3', '', ''),
(347, 'Jun-18', 'OCEAN SUKSES', '', 'ESPERANCE', '', '', '', 'INDONESIA', '7/06/2018', '7/06/2018', '9/06/2018', '57,750', 'WHEAT ', 'GRAINCORP', '0', '', ''),
(348, 'Jun-18', 'SOLDOY', '', 'ESPERANCE', '', '', '', 'YEMEN', '10/06/2018', '10/06/2018', '11/06/2018', '22,000', 'WHEAT ', 'GRAINCORP ', '0', '', ''),
(349, 'Jun-18', 'AMITY ', '', 'ALBANY', '', '', '', 'HODEIDAH', '2/06/2018', '10/06/2018', '12/06/2018', '30,000', 'WHEAT', 'GRAINCORP', '8', '', ''),
(350, 'Jun-18', 'OCEAN MAKMUR ', '', 'GERALDTON', '', '', '', 'INDONESIA ', '1/06/2018', '10/06/2018', '12/06/2018', '52,842', 'WHEAT ', 'SHIP AGENCY SERVICES ', '9', '', ''),
(351, 'Jun-18', 'IVS PHINDA', '', 'ADELAIDE ', '', '', '', 'NEW ZEALAND', '4/06/2018', '8/06/2018', '13/06/2018', '4953.48/27695.14', 'BARLEY/WHEAT', 'GLENCORE GRAIN', '4', '', ''),
(352, 'Jun-18', 'LYRIC SUN', '', 'ADELAIDE ', '', '', '', 'CHINA', '19/05/2018', '8/06/2018', '14/06/2018', '39,000', 'BARLEY', 'GRAINCORP', '20', '', ''),
(353, 'Jun-18', 'BERGE BANDAI ', '', 'GERALDTON', '', '', '', 'CHINA ', '12/06/2018', '13/06/2018', '15/06/2018', '36,655', 'WHEAT ', 'GULF AGENCY COMPANY ', '1', '', ''),
(354, 'Jun-18', 'ARIANA', '', 'PORT LINCOLN', '', '', '', 'IRAQ', '4/06/2018', '12/06/2018', '15/06/2018', '51,948', 'WHEAT', 'CARGILL', '8', '', ''),
(355, 'Jun-18', 'CLIPPER TENACIOUS', '', 'ADELAIDE ', '', '', '', 'EGYPT', '4/06/2018', '15/06/2018', '16/06/2018', '11,683', 'WHEAT', 'ADM TRADING', '11', '', ''),
(356, 'Jun-18', 'FEDERAL IRIS ', '', 'ALBANY', '', '', '', 'CHINA', '4/06/2018', '14/06/2018', '16/06/2018', '21,592', 'BARELY', 'EMERALD', '10', '', ''),
(357, 'Jun-18', 'ORIENT GLORY ', '', 'GERALDTON', '', '', '', 'KWINANA', '15/06/2018', '16/06/2018', '17/06/2018', '11,220', 'LUPINS ', 'MONSON AGENCIES ', '1', '', ''),
(358, 'Jun-18', 'OCEAN HIRYU', '', 'ADELAIDE ', '', '', '', 'JAKARTA', '14/06/2018', '17/06/2018', '18/06/2018', '25,000', 'WHEAT', 'CBH GRAIN', '3', '', ''),
(359, 'Jun-18', 'ISS SPIRIT', '', 'GEELONG', '', '', '', 'INDONESIA', '15/06/2018', '15/06/2018', '19/06/2018', '16050', 'WHEAT', 'GRAINCORP FOB / COFCO', '0', '', ''),
(360, 'Jun-18', 'ISS SPIRIT', '', 'GEELONG', '', '', '', 'INDONESIA', '15/06/2018', '15/06/2018', '19/06/2018', '16050', 'WHEAT', 'GRAINCORP FOB / COFCO', '0', '', ''),
(361, 'Jun-18', 'ROYAL INNOVATION', '', 'WALLAROO', '', '', '', 'UAE', '7/06/2018', '17/06/2018', '19/06/2018', '23,917', 'WHEAT', 'GLENCORE GRAIN', '10', '', ''),
(362, 'Jun-18', 'BELLE OCEAN ', '', 'ALBANY', '', '', '', 'CHIBA', '17/06/2018', '19/06/2018', '20/06/2018', '25,000', 'BARELY', 'CBH GRAIN ', '2', '', ''),
(363, 'Jun-18', 'LEMESSOS QUEEN', '', 'PORT GILES', '', '', '', 'CHINA', '5/06/2018', '12/06/2018', '20/06/2018', '66,820', 'BARLEY', 'GLENCORE GRAIN', '7', '', ''),
(364, 'Jun-18', 'SBI LAMBADA', '', 'GEELONG', '', '', '', 'CHINA', '18/06/2018', '19/06/2018', '22/06/2018', '59450', 'BARLEY', 'GRAINCORP', '1', '', ''),
(365, 'Jun-18', 'OCEAN HIRYU', '', 'PORT LINCOLN', '', '', '', 'JAKARTA', '19/06/2018', '19/06/2018', '22/06/2018', '25,000', 'WHEAT', 'CBH GRAIN', '0', '', ''),
(366, 'Jun-18', 'CAPETAN GIORGIS', '', 'WALLAROO', '', '', '', 'UAE', '18/06/2018', '20/06/2018', '22/06/2018', '24,600', 'WHEAT', 'CBH GRAIN', '2', '', ''),
(367, 'Jun-18', 'DROGBA ', '', 'GERALDTON', '', '', '', 'KOREA', '13/06/2018', '21/06/2018', '24/06/2018', '51,295', 'WHEAT ', 'GULF AGENCY COMPANY ', '8', '', ''),
(368, 'Jun-18', 'CAPETAN GIORGIS', '', 'PORT GILES', '', '', '', 'UAE', '23/06/2018', '23/06/2018', '25/06/2018', '34,403', 'WHEAT', 'CBH GRAIN', '0', '', ''),
(369, 'Jun-18', 'OCEAN GLORY', '', 'PORT LINCOLN', '', '', '', 'INDONESIA', '13/06/2018', '19/06/2018', '25/06/2018', '47,450', 'WHEAT', 'PLUM GROVE', '6', '', ''),
(370, 'Jun-18', 'EDEN BAY', '', 'THEVENARD', '', '', '', 'VIETNAM', '20/06/2018', '24/06/2018', '26/06/2018', '22,000', 'WHEAT', 'CBH GRAIN', '4', '', ''),
(371, 'Jun-18', 'GREAT INTELLIGENCE ', '', 'GERALDTON', '', '', '', 'SUBIC ', '20/06/2018', '26/06/2018', '28/06/2018', '33,000', 'WHEAT ', 'INCHAPE SHIPPING SERVICES ', '6', '', ''),
(372, 'Jun-18', 'OCEAN PHOENIX ', '', 'ALBANY', '', '', '', 'SINGAPORE', '26/06/2018', '26/06/2018', '29/06/2018', '48,000', 'WHEAT ', 'PLUM GROVE PTY LTD', '0', '', ''),
(373, 'Jun-18', 'PAN AMBER ', '', 'GERALDTON', '', '', '', 'MACASSAR', '25/06/2018', '28/06/2018', '29/06/2018', '36,300', 'WHEAT ', 'MONSON AGENCIES ', '3', '', ''),
(374, 'Jun-18', 'EASTGATE', '', 'PORT GILES', '', '', '', 'INDONESIA', '16/06/2018', '25/06/2018', '29/06/2018', '31,800', 'WHEAT', 'GLENCORE GRAIN', '9', '', ''),
(375, 'Jun-18', 'NEW LEGACY', '', 'PORT LINCOLN', '', '', '', 'JAPAN', '28/06/2018', '29/06/2018', '30/06/2018', '27,500', 'BARLEY', 'CBH GRAIN', '1', '', ''),
(376, 'Jun-18', 'NORD HAKATA ', '', 'GERALDTON', '', '', '', 'JAPAN ', '17/06/2018', '18/07/2018', '19/07/2018', '11,822', 'BARELY ', 'GULF AGENCY COMPANY ', '31', '', ''),
(377, 'Jun-18', 'OCEANIC HAWK', '', 'BRISBANE', '', '', '', 'THAILAND', ' 31/05/18', ' 31/05/18', '1830 01/06/18', '6300', 'WHEAT', 'GRAINCORP', '#VALUE!', '', ''),
(378, 'Jun-18', 'NORD HAKATA', '', 'KWINANA', '', '', '', 'Japan', '6/19/2018 23:12', '21/06/2018', '6/21/2018 23:44', '15279.51', 'BARLEY', 'CBH GRAIN', '1', '', ''),
(379, 'Jun-18', 'FEDERAL IRIS', '', 'KWINANA', '', '', '', 'China', '6/17/2018 19:16', '19/06/2018', '6/21/2018 3:57', '33397.97', 'BARLEY', 'EMERALD', '1', '', ''),
(380, 'Jun-18', 'NIN', '', 'KWINANA', '', '', '', 'Netherlands', '6/10/2018 4:21', '12/06/2018', '6/13/2018 3:26', '10677.2', 'LUPINS-CARGO', 'CBH GRAIN', '2', '', ''),
(381, 'Jun-18', 'BELLINA COLOSSUS', '', 'KWINANA', '', '', '', 'Philippines', '6/20/2018 14:30', '24/06/2018', '6/27/2018 6:58', '57072', 'WHEAT', 'LOUIS FREYFUS', '3', '', ''),
(382, 'Jun-18', 'AVENTICUM', '', 'KWINANA', '', '', '', 'Philippines', '6/16/2018 6:00', '16/06/2018', '6/19/2018 5:50', '55000', 'WHEAT', 'LOUIS FREYFUS', '0', '', ''),
(383, 'Jun-18', 'HAKATA QUEEN', '', 'KWINANA', '', '', '', 'Philippines', '5/23/2018 23:30', '3/06/2018', '6/2/2018 4:22', '56140.26', 'WHEAT', 'GLENCORE GRAIN', '10', '', ''),
(384, 'Jun-18', 'STH KURE', '', 'KWINANA', '', '', '', 'Philippines', '5/30/2018 17:37', '1/06/2018', '6/3/2018 17:40', '58400', 'WHEAT', 'CBH GRAIN', '1', '', ''),
(385, 'Jun-18', 'NIL', '', 'GLADSTONE', '', '', '', 'NIL', 'NIL', 'NIL', 'NIL', 'NIL', 'NIL', 'NIL', '#VALUE!', '', ''),
(386, 'Jun-18', 'SAMOA', '', 'MELBOURNE', '', '', '', 'NANTONG, CHINA', '6/12/2018', '6/12/2018', '6/22/2018', '51,898.06', 'BARLEY', 'EMERALD GRAIN AUSTRALIA PTY LTD', '0', '', ''),
(387, 'Jun-18', 'ULTR OSORNO', '', 'MELBOURNE', '', '', '', 'BRISBANE, AUSTRALIA', '6/30/2018', '6/30/2018', '7/9/2018', '32,997.31', 'BARLEY', 'EMERALD GRAIN AUSTRALIA PTY LTD', '0', '', ''),
(388, 'Jun-18', 'Federal Skye', '', 'PORTLAND', '', '', '', 'CHINA', '18/06/2018', '6/19/2018', '6/27/2018', '33071.66', 'BARLEY', 'EVERGRAIN', '1', '', ''),
(389, 'Jun-18', 'Lo Shen', '', 'PORTLAND', '', '', '', 'TBA', '22/06/2018', '6/22/2018', '6/24/2018', '17600', 'WHEAT', 'TBA', '0', '', ''),
(390, 'Jun-18', 'Tien Fei', '', 'PORTLAND', '', '', '', 'TBA', '8/06/2018', '12/06/2018', '16/06/2018', '20603.85', 'WHEAT', 'TBA', '4', '', ''),
(391, 'Jun-18', 'NINGHAI', '', 'NEWCASTLE', '', '', '', 'NANTONG, CHINA', '29/05/2018', '30/05/2018', '7/06/2018', '33000', 'SORGHUM', 'GRAINCORP', '1', '', ''),
(392, 'Jun-18', 'OCEANIC HAWK', '', 'NEWCASTLE', '', '', '', 'KOH SICHANG, THAILAND', '4/06/2018', '8/06/2018', '11/06/2018', '18700', 'WHEAT', 'GRAINCORP', '4', '', ''),
(393, 'Jan-18', 'AMIS LEADER', '', 'ESPERANCE', '', '', '', 'VIETNAM', '31/12/2017', '31/12/2017', '1/01/2018', '27,010', 'WHEAT', 'CBH GRAIN', '0', '', ''),
(394, 'Jan-18', 'HAMBURG PEARL', '', 'GERALDTON', '', '', '', 'ROTTERDAM', '26/12/2017', '1/01/2018', '2/01/2018', '27,500', 'LUPINS', 'GLENCORE GRAIN', '6', '', ''),
(395, 'Jan-18', 'AQUATAURUS', '', 'ADELAIDE - INNER', '', '', '', 'AUSTRALIA', '30/12/2018', '30/12/2018', '4/01/2018', '24,790', 'WHEAT', 'GLENCORE GRAIN', '0', '', ''),
(396, 'Jan-18', 'MONESGASQUE EPEE', '', 'GEELONG', '', '', '', 'CHINA', '1/01/2018', '2/01/2018', '4/01/2018', '31,728', 'BARLEY', 'GRAINCORP', '1', '', ''),
(397, 'Jan-18', 'SERPENTINE', '', 'PORT LINCOLN', '', '', '', 'INDONESIA', '31/12/2017', '3/01/2018', '4/01/2018', '26,820', 'WHEAT', 'AUSTRALIAN GRAIN EXPORTS', '3', '', ''),
(398, 'Jan-18', 'PACIFIC WAVE', '', 'KWINANA', '', '', '', 'KOREA', '1/2/2018', '1/3/2018', '1/4/2018', '2,912', 'WHEAT', 'PLUMGROVE', '1', '', ''),
(399, 'Jan-18', 'PACIFIC WAVE', '', 'KWINANA', '', '', '', 'KOREA', '1/2/2018', '1/3/2018', '1/4/2018', '32,780', 'WHEAT', 'PLUMGROVE', '1', '', ''),
(400, 'Jan-18', 'HUA XING HAI', '', 'ESPERANCE', '', '', '', 'BELGIUM', '2/01/2018', '3/01/2018', '5/01/2018', '65,188', 'CANOLA', 'CBH GRAIN', '1', '', ''),
(401, 'Jan-18', 'VENTURE PEARL', '', 'KWINANA', '', '', '', 'VIETNAM', '1/2/2018', '1/4/2018', '1/6/2018', '44,000', 'WHEAT', 'CBH GRAIN ', '1', '', ''),
(402, 'Jan-18', 'STAR LIFE', '', 'ADELAIDE - INNER', '', '', '', 'NEW ZEALAND', '4/01/2018', '5/01/2018', '7/01/2018', '24,499', 'WHEAT', 'ADM TRADING', '1', '', ''),
(403, 'Jan-18', 'ROOK', '', 'PORT GILES', '', '', '', 'JAPAN', '5/01/2018', '5/01/2018', '7/01/2018', '35,280', 'BARLEY', 'GLENCORE GRAIN', '0', '', ''),
(404, 'Jan-18', 'STAHLA', '', 'ALBANY', '', '', '', 'GERMANY', '31/12/2017', '5/01/2018', '8/01/2018', '56,274', 'CANOLA', 'CBH GRAIN', '5', '', ''),
(405, 'Jan-18', 'MONA MANX', '', 'ESPERANCE', '', '', '', 'CHINA', '6/01/2018', '7/01/2018', '9/01/2018', '55,000', 'BARLEY', 'CBH GRAIN', '1', '', ''),
(406, 'Jan-18', 'INDONESIAN BULKER', '', 'GEELONG', '', '', '', 'MALAYSIA', '8/01/2018', '8/01/2018', '9/01/2018', '27,500', 'WHEAT', 'GRAINCORP', '0', '', ''),
(407, 'Jan-18', 'MILLION BELL', '', 'KWINANA', '', '', '', 'CHINA', '1/4/2018', '1/5/2018', '1/9/2018', '55,093', 'BARLEY', 'CBH GRAIN ', '1', '', ''),
(408, 'Jan-18', 'ECO SPITFIRE', '', 'ADELAIDE - OUTER', '', '', '', 'BAHRAIN', '8/01/2018', '9/01/2018', '11/01/2018', '27,500', 'WHEAT', 'GLENCORE GRAIN', '1', '', ''),
(409, 'Jan-18', 'ALCOR', '', 'PORT LINCOLN', '', '', '', 'MALAYSIA', '8/01/2018', '8/01/2018', '11/01/2018', '63,000', 'WHEAT', 'GLENCORE GRAIN', '0', '', ''),
(410, 'Jan-18', 'FEDERAL KIBUNE', '', 'KWINANA', '', '', '', 'JAPAN', '1/8/2018', '1/10/2018', '1/11/2018', '21,500', 'BARLEY', 'CBH GRAIN ', '1', '', ''),
(411, 'Jan-18', 'ARRILAH-I', '', 'KWINANA', '', '', '', 'KOREA', '1/8/2018', '1/11/2018', '1/12/2018', '35,710', 'WHEAT', 'GLENCORE GRAIN', '3', '', ''),
(412, 'Jan-18', 'OCEAN GLORY', '', 'ALBANY', '', '', '', 'INDONESIA', '10/01/2018', '11/01/2018', '13/01/2018', '47,265', 'WHEAT', 'CBH GRAIN', '1', '', ''),
(413, 'Jan-18', 'INDIGO SILVER', '', 'GEELONG', '', '', '', 'CHINA', '6/01/2018', '10/01/2018', '13/01/2018', '33,677', 'BARLEY', 'GRAINCORP', '4', '', ''),
(414, 'Jan-18', 'WESTERN CALLAO', '', 'WALLAROO', '', '', '', 'UAE', '9/01/2018', '10/01/2018', '13/01/2018', '23,300', 'WHEAT', 'AUSTRALIAN GRAIN EXPORTS', '1', '', ''),
(415, 'Jan-18', 'AQUAPISCES', '', 'KWINANA', '', '', '', 'CHINA', '1/11/2018', '1/12/2018', '1/14/2018', '50,330', 'BARLEY', 'CBH GRAIN ', '1', '', ''),
(416, 'Jan-18', 'TEO', '', 'GEELONG', '', '', '', 'YEMEN', '7/01/2018', '13/01/2018', '16/01/2018', '32,050', 'WHEAT', 'GRAINCORP', '6', '', ''),
(417, 'Jan-18', 'HONEY BADGER', '', 'ALBANY', '', '', '', 'CHINA', '13/01/2018', '14/01/2018', '17/01/2018', '51,068', 'BARLEY', 'CBH GRAIN', '1', '', ''),
(418, 'Jan-18', 'NORD HAKATA', '', 'KWINANA', '', '', '', 'JAPAN', '1/15/2018', '1/16/2018', '1/17/2018', '25,524', 'WHEAT', 'CBH GRAIN', '1', '', ''),
(419, 'Jan-18', 'WESTERN CALLAO', '', 'ALBANY', '', '', '', 'UAE', '17/01/2018', '17/01/2018', '18/01/2018', '8,800', 'OATS', 'CBH GRAIN', '0', '', ''),
(420, 'Jan-18', 'ISS SPIRIT', '', 'KWINANA', '', '', '', 'JAPAN', '1/15/2018', '1/17/2018', '1/18/2018', '31,864', 'WHEAT', 'PLUMGROVE ', '2', '', ''),
(421, 'Jan-18', 'PAOLO TOPIC', '', 'NEWCASTLE', '', '', '', 'INDONESIA', '1/11/2018', '1/11/2018', '1/19/2018', '51,700', 'WHEAT', 'ARROW', '0', '', ''),
(422, 'Jan-18', 'BERGE DAISETSU', '', 'WALLAROO', '', '', '', 'NEW ZEALAND', '15/01/2018', '16/01/2018', '20/01/2018', '26,940', 'WHEAT', 'GLENCORE GRAIN', '1', '', ''),
(423, 'Jan-18', 'AFRICAN STARLING', '', 'KWINANA', '', '', '', 'JAPAN', '1/15/2018', '1/18/2018', '1/20/2018', '9,975', 'BARLEY', 'PLUMGROVE', '2', '', ''),
(424, 'Jan-18', 'AFRICAN STARLING', '', 'KWINANA', '', '', '', 'JAPAN', '1/15/2018', '1/18/2018', '1/20/2018', '39,982', 'WHEAT', 'PLUMGROVE', '2', '', ''),
(425, 'Jan-18', 'PANAGLA STENION', '', 'ALBANY', '', '', '', 'GERMANY', '18/01/2018', '19/01/2018', '22/01/2018', '55,237', 'CANOLA', 'CBH GRAIN', '1', '', ''),
(426, 'Jan-18', 'OCEAN HIRYU', '', 'ESPERANCE', '', '', '', 'CHINA', '1/20/2018', '1/20/2018', '1/23/2018', '48,300', 'BARLEY', 'CBH GRAIN', '0', '', ''),
(427, 'Jan-18', 'ADITYA', '', 'GERALDTON', '', '', '', 'KOREA', '21/01/2018', '22/01/2018', '24/01/2018', '50,000', 'WHEAT', 'PLUMGROVE', '1', '', ''),
(428, 'Jan-18', 'NICHIRIN', '', 'ALBANY', '', '', '', 'JAPAN', '20/01/2018', '22/01/2018', '25/01/2018', '49,274', 'WHEAT', 'PLUMGROVE', '2', '', ''),
(429, 'Jan-18', 'PENGHU SW', '', 'KWINANA', '', '', '', 'UAE', '1/21/2018', '1/22/2018', '1/25/2018', '11,000', 'WHEAT', 'EMERALD ', '0', '', ''),
(430, 'Jan-18', 'FUKUYAMA STAR', '', 'GEELONG', '', '', '', 'PHILIPPINES', '18/01/2018', '22/01/2018', '26/01/2018', '51,950', 'WHEAT', 'GRAINCORP', '4', '', ''),
(431, 'Jan-18', 'PEDHOULAS FIGHTER', '', 'ADELAIDE - OUTER', '', '', '', 'IRAQ', '16/01/2018', '17/01/2018', '28/01/2018', '52,501', 'WHEAT', 'GLENCORE GRAIN', '1', '', ''),
(432, 'Jan-18', 'WECO JOSEPHINE', '', 'GERALDTON', '', '', '', 'AUSTRALIA', '1/26/2018', '1/28/2018', '1/28/2018', '14,746', 'LUPINS', 'CBH GRAIN', '2', '', ''),
(433, 'Jan-18', 'ANEMONE', '', 'MELBOURNE', '', '', '', 'OMAN', '25/01/2018', '25/01/2018', '28/01/2018', '21,999', 'WHEAT', 'EMERALD', '0', '', ''),
(434, 'Jan-18', 'INGMAR OLDENDORFF', '', 'PORTLAND', '', '', '', 'CHINA', '23/01/2018', '23/01/2018', '28/01/2018', '56,513', 'BARLEY', 'OLDENDORFF', '0', '', ''),
(435, 'Jan-18', 'AQUAPROSPER', '', 'ALBANY', '', '', '', 'CHINA', '24/01/2018', '25/01/2018', '29/01/2018', '51,570', 'BARLEY', 'CBH GRAIN', '1', '', ''),
(436, 'Jan-18', 'SUPERNOVA', '', 'GEELONG', '', '', '', 'PNG', '24/01/2018', '27/01/2018', '29/01/2018', '22,000', 'WHEAT', 'CARGILL', '3', '', ''),
(437, 'Jan-18', 'BRIGHT HOPE', '', 'GERALDTON', '', '', '', 'MALAYSIA', '26/01/2018', '27/01/2018', '29/01/2018', '10,450', 'LUPINS', 'CARGILL', '1', '', ''),
(438, 'Jan-18', 'ALPHA LOYALTY', '', 'PORT LINCOLN', '', '', '', 'KUWAIT', '25/01/2018', '27/01/2018', '30/01/2018', '44,000', 'WHEAT', 'CBH GRAIN', '2', '', ''),
(439, 'Jan-18', 'MORNING CLOUD', '', 'KWINANA', '', '', '', 'CHINA', '1/24/2018', '1/27/2018', '1/30/2018', '62,060', 'BARLEY', 'GLENCORE GRAIN', '2', '', ''),
(440, 'Jan-18', 'HYDRUS', '', 'ALBANY', '', '', '', 'CHINA', '27/01/2018', '29/01/2018', '31/01/2018', '27,355', 'WHEAT', 'BUNGE', '2', '', ''),
(441, 'Jan-18', 'OCEAN ACE', '', 'ESPERANCE', '', '', '', 'INDONESIA', '28/01/2018', '29/01/2018', '31/01/18', '54,625', 'WHEAT', 'PLUMGROVE', '1', '', ''),
(442, 'Jan-18', 'CS CALLA', '', 'PORT GILES', '', '', '', 'INDONESIA', '27/01/2018', '29/01/2018', '31/01/2018', '25,200', 'WHEAT', 'AUSTRAILAN GRAIN EXPORTS', '2', '', ''),
(443, 'Jan-18', 'NIL', '', 'BRISBANE', '', '', '', '', '', '', '', '0', '', '', '0', '', ''),
(444, 'Jan-18', 'NIL', '', 'BRISBANE - QBT', '', '', '', '', '', '', '', '0', '', '', '0', '', ''),
(445, 'Jan-18', 'NIL', '', 'GLADSTONE', '', '', '', '', '', '', '', '0', '', '', '0', '', ''),
(446, 'Jan-18', 'NIL', '', 'MACKAY', '', '', '', '', '', '', '', '0', '', '', '0', '', ''),
(447, 'Jan-18', 'NIL', '', 'PORT KEMBLA - GRAINCORP', '', '', '', '', '', '', '', '0', '', '', '0', '', ''),
(448, 'Jan-18', 'NIL', '', 'PORT KEMBLA - QUATTRO', '', '', '', '', '', '', '', '0', '', '', '0', '', ''),
(449, 'Jan-18', 'NIL', '', 'THEVENARD', '', '', '', '', '', '', '', '0', '', '', '0', '', ''),
(450, 'Feb-18', 'AXIOS', '', 'ADELAIDE - OUTER', '', '', '', 'CHINA', '23/01/2018', '29/01/2018', '1/02/18', '64,999', 'BARLEY', 'BUNGE AGRIBUSINESS', '6', '', ''),
(451, 'Feb-18', 'KYPROS LOYALTY', '', 'GERALDTON', '', '', '', 'FRANCE', '1/30/2018', '1/30/2018', '2/1/2018', '32,995', 'CANOLA', 'GLENCORE GRAIN', '0', '', ''),
(452, 'Feb-18', 'JAG AMAR', '', 'GEELONG', '', '', '', 'BELGIUM', '26/01/2018', '29/01/2018', '2/02/18', '61,000', 'CANOLA', 'CARGILL', '3', '', ''),
(453, 'Feb-18', 'UNITY', '', 'GERALDTON', '', '', '', 'YEMEN', '1/31/2018', '2/1/2018', '2/2/2018', '31,000', 'WHEAT', 'CBH GRAIN', '1', '', ''),
(454, 'Feb-18', 'STADION II', '', 'THEVENARD', '', '', '', 'EGYPT', '29/01/2018', '29/01/2018', '2/02/18', '20,000', 'WHEAT', 'ADM TRADING', '0', '', ''),
(455, 'Feb-18', 'ODYSSEAS I', '', 'WALLAROO', '', '', '', 'CHINA', '24/01/2018', '28/01/2018', '2/02/18', '30,800', 'BARLEY', 'ADM TRADING', '4', '', ''),
(456, 'Feb-18', 'EMERALD ENTERPRISE', '', 'ESPERANCE', '', '', '', 'PHILIPPINES', '31/01/2018', '1/02/2018', '3/02/2018', '32,045', 'WHEAT', 'BUNGE AGRI', '1', '', ''),
(457, 'Feb-18', 'LATIKA NAREE', '', 'NEWCASTLE', '', '', '', 'INDONESIA', '22/01/2018', '29/01/2018', '3/02/18', '32,186', 'WHEAT', 'ARROW', '7', '', ''),
(458, 'Feb-18', 'JAG ARNAV', '', 'ALBANY', '', '', '', 'AUSTRALIA', '1/02/2018', '2/02/2018', '4/02/18', '38,500', 'BARLEY', 'CBH GRAIN', '1', '', ''),
(459, 'Feb-18', 'POAVOSA WISDOM III', '', 'GERALDTON', '', '', '', 'INDONESIA', '1/29/2018', '2/2/2018', '2/4/2018', '17,138', 'LUPINS', 'CBH GRAIN', '4', '', ''),
(460, 'Feb-18', 'POAVOSA WISDOM III', '', 'GERALDTON', '', '', '', 'INDONESIA', '1/29/2018', '2/2/2018', '2/4/2018', '10,030', 'WHEAT', 'CARGILL', '4', '', ''),
(461, 'Feb-18', 'IOANNA L', '', 'ESPERANCE', '', '', '', 'GERMANY', '3/02/2018', '3/02/2018', '5/02/2018', '66,000', 'CANOLA', 'CBH GRAIN', '0', '', ''),
(462, 'Feb-18', 'KYPROS LOYALTY', '', 'KWINANA', '', '', '', 'PORTUGAL', '2/02/2018', '2/02/2018', '5/02/2018', '28,467', 'CANOLA', 'GLENCORE GRAIN', '0', '', ''),
(463, 'Feb-18', 'STADION II', '', 'PORT LINCOLN', '', '', '', 'EGYPT', '4/02/2018', '4/02/2018', '5/02/18', '6,800', 'WHEAT', 'ADM TRADING', '0', '', ''),
(464, 'Feb-18', 'HYDRUS', '', 'KWINANA', '', '', '', 'CHINA', '2/02/2018', '4/02/2018', '6/02/2018', '16,542', 'OATS', 'BUNGE', '2', '', ''),
(465, 'Feb-18', 'DAIWAN GLORY', '', 'ESPERANCE', '', '', '', 'CHINA', '6/02/2018', '6/02/2018', '7/02/2018', '31,652', 'BARLEY', 'CBH GRAIN', '0', '', ''),
(466, 'Feb-18', 'JAG ARNAV', '', 'KWINANA', '', '', '', 'CHINA', '5/02/2018', '6/02/2018', '8/02/2018', '27,500', 'BARLEY', 'CBH GRAIN', '1', '', ''),
(467, 'Feb-18', 'PACIFIC NOBLE', '', 'ALBANY', '', '', '', 'JAPAN', '5/02/2018', '7/02/2018', '9/02/18', '25,500', 'BARLEY', 'CBH GRAIN', '2', '', ''),
(468, 'Feb-18', 'EVER BRILLIANT', '', 'ESPERANCE', '', '', '', 'JAPAN', '7/02/2018', '8/02/2018', '9/02/2018', '25,300', 'BARLEY', 'CBH GRAIN', '1', '', ''),
(469, 'Feb-18', 'OCEAN JORF', '', 'PORT LINCOLN', '', '', '', 'CHINA', '5/02/2018', '7/02/2018', '9/02/18', '31,000', 'BARLEY', 'GRAINCORP OPERATIONS', '2', '', ''),
(470, 'Feb-18', 'GLORIOUS SUNSHINE', '', 'KWINANA', '', '', '', 'PHILIPPINES', '8/02/2018', '9/02/2018', '10/02/2018', '14,850', 'MALT', 'CARGILL', '1', '', ''),
(471, 'Feb-18', 'NURI BEY', '', 'ALBANY', '', '', '', 'CHINA', '3/02/2018', '9/02/2018', '12/02/18', '57,750', 'BARLEY', 'CBH GRAIN', '6', '', ''),
(472, 'Feb-18', 'OCEAN GLORY', '', 'GEELONG', '', '', '', 'INDONESIA', '9/02/2018', '10/02/2018', '14/02/18', '50,000', 'WHEAT', 'GRAINCORP', '1', '', ''),
(473, 'Feb-18', 'GLORIOUS FUJI', '', 'GERALDTON', '', '', '', 'AUSTRALIA', '2/13/2018', '2/13/2018', '2/14/2018', '20,000', 'LUPINS', 'CBH GRAIN', '0', '', ''),
(474, 'Feb-18', 'GLORIA ISLAND', '', 'PORTLAND', '', '', '', 'JAPAN', '12/02/2018', '12/02/2018', '14/02/2018', '26,360', 'BARLEY', 'GRAINCORP', '0', '', ''),
(475, 'Feb-18', 'PRODIGY', '', 'ADELAIDE - OUTER', '', '', '', 'IRAQ', '14/02/2018', '15/02/2018', '16/02/18', '27,000', 'WHEAT', 'COFCO RESOURCES', '1', '', ''),
(476, 'Feb-18', 'BRAVERY', '', 'ESPERANCE', '', '', '', 'BELGIUM', '13/02/2018', '14/02/2018', '16/02/2018', '61,610', 'CANOLA', 'CBH GRAIN', '1', '', ''),
(477, 'Feb-18', 'DENSA LION', '', 'KWINANA', '', '', '', 'PHILIPPINES', '14/02/2018', '18/02/2018', '16/02/2018', '53,550', 'WHEAT', 'CBH GRAIN', '4', '', ''),
(478, 'Feb-18', 'GLORIOUS FUJI', '', 'KWINANA', '', '', '', 'JAPAN', '15/02/2018', '15/02/2018', '17/02/2018', '5,500', 'OATS', 'CBH GRAIN', '0', '', ''),
(479, 'Feb-18', 'DESERT CHALLENGER', '', 'PORT GILES', '', '', '', 'NIGERIA', '13/02/2018', '14/02/2018', '17/02/18', '50,500', 'WHEAT', 'GLENCORE GRAIN', '1', '', ''),
(480, 'Feb-18', 'IKAN JENAHAR', '', 'ADELAIDE - INNER', '', '', '', 'INDIA', '15/02/2018', '16/02/2018', '18/02/18', '30,780', 'WHEAT', 'GLENCORE GRAIN', '1', '', ''),
(481, 'Feb-18', 'VIYADA NAREE', '', 'ALBANY', '', '', '', 'AUSTRALIA', '8/02/2018', '16/02/2018', '18/02/18', '35,362', 'BARLEY', 'EMERALD', '8', '', ''),
(482, 'Feb-18', 'NORD COLORADO', '', 'MELBOURNE', '', '', '', 'CHINA', '12/02/2018', '12/02/2018', '18/02/2018', '49,149', 'BARLEY', 'EMERALD', '0', '', ''),
(483, 'Feb-18', 'LOCH NESS', '', 'KWINANA', '', '', '', 'CHINA', '16/02/2018', '16/02/2018', '19/02/2018', '55,053', 'BARLEY', 'CBH GRAIN', '0', '', ''),
(484, 'Feb-18', 'PILATUS VENTURE', '', 'ESPERANCE', '', '', '', 'CHINA', '17/02/2018', '17/02/2018', '20/02/2018', '55,710', 'BARLEY', 'GLENCORE GRAIN', '0', '', ''),
(485, 'Feb-18', 'ALAM SETIA', '', 'GEELONG', '', '', '', 'THAILAND', '15/02/2018', '17/02/2018', '20/02/18', '34,913', 'WHEAT', 'GRAINCORP', '2', '', ''),
(486, 'Feb-18', 'PRODIGY', '', 'PORT LINCOLN', '', '', '', 'IRAQ', '17/02/2018', '18/02/2018', '20/02/18', '22,500', 'WHEAT', 'COFCO RESOURCES', '1', '', ''),
(487, 'Feb-18', 'LUISA COLOSSUS', '', 'ALBANY', '', '', '', 'CHINA', '2/15/2018', '2/18/2018', '2/21/2018', '49,921', 'BARLEY', 'COFCO', '3', '', ''),
(488, 'Feb-18', 'INCE EVRENYE', '', 'KWINANA', '', '', '', 'YEMEN', '11/02/2018', '20/02/2018', '21/02/2018', '27,140', 'WHEAT', 'CBH GRAIN', '9', '', ''),
(489, 'Feb-18', 'LA VENTURE', '', 'KWINANA', '', '', '', 'KOREA', '14/02/2018', '18/02/2018', '22/02/2018', '40,700', 'WHEAT', 'CBH GRAIN', '4', '', ''),
(490, 'Feb-18', 'VERY MARIA', '', 'ADELAIDE - OUTER', '', '', '', 'KUWAIT', '17/02/2018', '22/02/2018', '24/02/18', '50,000', 'WHEAT', 'CBH GRAIN', '5', '', ''),
(491, 'Feb-18', 'MONA MANX', '', 'KWINANA', '', '', '', 'CHINA', '20/02/2018', '21/02/2018', '24/02/2018', '61,579', 'WHEAT', 'CBH GRAIN', '1', '', ''),
(492, 'Feb-18', 'UNI WEALTH', '', 'MELBOURNE', '', '', '', 'QATAR', '20/02/2018', '20/02/2018', '24/02/2018', '20,881', 'WHEAT', 'EMERALD', '0', '', ''),
(493, 'Feb-18', 'HELVETIA', '', 'NEWCASTLE', '', '', '', 'VIETNAM', '14/02/2018', '14/02/2018', '24/02/18', '16,194', 'WHEAT', 'RIVERINA', '0', '', ''),
(494, 'Feb-18', 'GHENT', '', 'PORT LINCOLN', '', '', '', 'VIETNAM', '16/02/2018', '18/02/2018', '24/02/18', '52,500', 'WHEAT', 'CBH GRAIN', '2', '', ''),
(495, 'Feb-18', 'ATLAS', '', 'ALBANY', '', '', '', 'NETHERLANDS', '2/15/2018', '2/22/2018', '2/25/2018', '30,000', 'CANOLA', 'CBH GRAIN', '7', '', ''),
(496, 'Feb-18', 'MAGIC P', '', 'GEELONG', '', '', '', 'BELGIUM', '20/02/2018', '21/02/2018', '25/02/18', '59,300', 'CANOLA', 'GRAINCORP', '1', '', ''),
(497, 'Feb-18', 'OCEAN APPLAUD', '', 'GERALDTON', '', '', '', 'KOREA', '2/21/2018', '2/23/2018', '2/25/2018', '49,565', 'WHEAT', 'GLENCORE GRAIN', '2', '', ''),
(498, 'Feb-18', 'SKYWALKER', '', 'GEELONG', '', '', '', 'CHINA', '17/02/2018', '20/02/2018', '26/02/18', '31,776', 'BARLEY', 'RIORDAN', '3', '', ''),
(499, 'Feb-18', 'CARO PADRE', '', 'ADELAIDE - INNER', '', '', '', 'CHINA', '7/02/2018', '21/02/2018', '27/02/18', '37,499', 'BARLEY', 'CREMER AUSTRALIA', '14', '', ''),
(500, 'Feb-18', 'OCEAN JORF', '', 'ADELAIDE - OUTER', '', '', '', 'CHINA', '10/02/2018', '26/02/2018', '27/02/18', '21,229', 'BARLEY', 'GRAINCORP', '16', '', ''),
(501, 'Feb-18', 'AFRICAN TEIST', '', 'GERALDTON', '', '', '', 'ITALY', '2/20/2018', '2/21/2018', '2/27/2018', '18,960', 'LUPINS', 'CBH GRAIN', '1', '', ''),
(502, 'Feb-18', 'OUTRIDER', '', 'PORT GILES', '', '', '', 'AUSTRALIA', '25/02/2018', '25/02/2018', '27/02/18', '27,300', 'BARLEY', 'COFCO RESOURCES', '0', '', ''),
(503, 'Feb-18', 'ATLAS', '', 'KWINANA', '', '', '', 'NETHERLANDS', '27/02/2018', '27/02/2018', '28/02/2018', '30,569', 'CANOLA', 'CBH GRAIN', '0', '', ''),
(504, 'Feb-18', 'ISSARA NAREE', '', 'ALBANY', '', '', '', 'CHINA', '2/18/2018', '2/25/2018', '3/1/2018', '47,530', 'BARLEY', 'EMERALD', '7', '', ''),
(505, 'Feb-18', 'NIL', '', 'BRISBANE', '', '', '', '', '', '', '', '0', '', '', '0', '', ''),
(506, 'Feb-18', 'NIL', '', 'BRISBANE - QBT', '', '', '', '', '', '', '', '0', '', '', '0', '', ''),
(507, 'Feb-18', 'NIL', '', 'GLADSTONE', '', '', '', '', '', '', '', '0', '', '', '0', '', ''),
(508, 'Feb-18', 'NIL', '', 'MACKAY', '', '', '', '', '', '', '', '0', '', '', '0', '', ''),
(509, 'Feb-18', 'NIL', '', 'PORT KEMBLA - GRAINCORP', '', '', '', '', '', '', '', '0', '', '', '0', '', ''),
(510, 'Feb-18', 'NIL', '', 'PORT KEMBLA - QUATTRO', '', '', '', '', '', '', '', '0', '', '', '0', '', ''),
(511, 'Mar-18', 'LEMESSOS NAPA', '', 'NEWCASTLE', '', '', '', 'ITALY', '24/02/2018', '25/02/2018', '1/03/2018', '35,000', 'WHEAT', 'GRAINCORP', '1', '', ''),
(512, 'Mar-18', 'CARO PADRE', '', 'PORT LINCOLN', '', '', '', 'CHINA', '28/02/2018', '28/02/2018', '1/03/2018', '16,086', 'BARLEY', 'CREMER AUSTRALIA', '0', '', ''),
(513, 'Mar-18', 'VICTORIA HARBOUR', '', 'BRISBANE', '', '', '', 'BANGLADESH', '26/02/2018', '27/02/2018', '1/03/2018', '7500', 'CHICKPEAS', 'GRAINCORP', '1', '', ''),
(514, 'Mar-18', 'BLESSING SW', '', 'GERALDTON', '', '', '', 'KOREA', '22/02/2018', '3/1/2018', '3/2/2018', '6,600', 'WHEAT', 'CBH GRAIN', '7', '', ''),
(515, 'Mar-18', 'GLORIOUS SUNRISE', '', 'PORT GILES', '', '', '', 'NEW ZEALAND', '27/02/2018', '27/02/2018', '2/03/2018', '32,018', 'WHEAT', 'GLENCORE GRAIN', '0', '', ''),
(516, 'Mar-18', 'ER MADEN', '', 'ESPERANCE', '', '', '', 'SINGAPORE', '2/28/2018', '2/28/2018', '3/3/2018', '53,250', 'WHEAT', 'GRAINCORP', '0', '', ''),
(517, 'Mar-18', 'SAKIZAYA ACE', '', 'GEELONG', '', '', '', 'EUROPE', '24/03/2018', '26/03/2018', '3/03/2018', '58069', 'CANOLA', 'GLENCORE', '2', '', ''),
(518, 'Mar-18', 'TIEN  FE', '', 'MELBOURNE', '', '', '', 'NEW ZEALAND', '18/02/2018', '25/02/2018', '3/03/2018', '20,896', 'WHEAT', 'EMERALD', '7', '', ''),
(519, 'Mar-18', 'CAPTAIN D', '', 'PORT LINCOLN', '', '', '', 'EGYPT', '15/02/2018', '28/02/2018', '3/03/2018', '29,160', 'WHEAT', 'ADM TRADING', '13', '', ''),
(520, 'Mar-18', 'IVS IBIS', '', 'THEVENARD', '', '', '', 'EGYPT', '28/02/2018', '1/03/2018', '3/03/2018', '18,000', 'WHEAT', 'ADM TRADING', '1', '', ''),
(521, 'Mar-18', 'IVS NORTH BERWICK', '', 'KWINANA', '', '', '', 'CHINA', '23/02/2018', '3/1/2018', '3/3/2018', '45,000', 'BARLEY', 'CBH GRAIN ', '6', '', ''),
(522, 'Mar-18', 'ARGONAUT ', '', 'ALBANY', '', '', '', 'BELGIUM', '23/02/2018', '1/03/2018', '5/03/2018', '55,000', 'CANOLA', 'CBH GRAIN', '6', '', ''),
(523, 'Mar-18', 'KUANYIN', '', 'GEELONG', '', '', '', 'PNG', '1/03/2018', '3/03/2018', '5/03/2018', '16000', 'WHEAT', 'GRAINCORP', '2', '', ''),
(524, 'Mar-18', 'IVS THANDA', '', 'GERALDTON', '', '', '', 'AFRICA', '3/03/2018', '3/4/2018', '3/5/2018', '16,500', 'LUPINS', 'CBH GRAIN', '1', '', ''),
(525, 'Mar-18', 'OCEAN ACE', '', 'WALLAROO', '', '', '', 'INDONESIA', '27/02/2018', '1/03/2018', '5/03/2018', '27,045', 'WHEAT', 'BUNGE AGRIBUSINESS', '2', '', ''),
(526, 'Mar-18', 'HONG JING', '', 'KWINANA', '', '', '', 'CHINA', '26/02/2018', '3/3/2018', '3/5/2018', '66,150', 'WHEAT', 'COFCO', '5', '', ''),
(527, 'Mar-18', 'ALLEGRA', '', 'MACKAY', '', '', '', 'INDIA', '26/02/2018', '3/03/2018', '6/03/2018', '24,000', 'CHICKPEAS', 'JK INTERNATIONAL', '5', '', ''),
(528, 'Mar-18', 'MYKONOS', '', 'KWINANA', '', '', '', 'CHINA', '5/03/2018', '3/5/2018', '3/6/2018', '15,622', 'BARLEY', 'CBH GRAIN ', '0', '', ''),
(529, 'Mar-18', 'VICTORIA HARBOUR', '', 'NEWCASTLE', '', '', '', 'ASIA', '3/03/2018', '4/03/2018', '7/03/2018', '18,418', 'CHICKPEAS', 'GRAINCORP', '1', '', ''),
(530, 'Mar-18', 'ARGONAUT', '', 'KWINANA', '', '', '', 'BELGIUM', '7/03/2018', '3/7/2018', '3/7/2018', '10,374', 'CANOLA', 'CBH GRAIN ', '0', '', ''),
(531, 'Mar-18', 'GH FORTUNE', '', 'ALBANY', '', '', '', 'AUSTRALIA', '2/03/2018', '6/03/2018', '8/03/2018', '42,000', 'BARLEY', 'CBH GRAIN', '4', '', ''),
(532, 'Mar-18', 'KING WHEAT', '', 'GEELONG', '', '', '', 'JAPAN', '6/03/2018', '7/03/2018', '8/03/2018', '8000', 'BARLEY', 'GRAINCORP', '1', '', ''),
(533, 'Mar-18', 'OCEAN ACE', '', 'PORT GILES', '', '', '', 'INDONESIA', '5/03/2018', '6/03/2018', '8/03/2018', '27,500', 'WHEAT', 'BUNGE AGRIBUSINESS', '1', '', ''),
(534, 'Mar-18', 'IVS IBIS', '', 'PORT KEMBLA - QUATTRO', '', '', '', 'EGYPT', '7/03/2018', '7/03/2018', '8/03/2018', '9,060', 'WHEAT', 'ARROW', '0', '', ''),
(535, 'Mar-18', 'ATLANTIC BULKER', '', 'PORT GILES', '', '', '', 'JAPAN', '6/03/2018', '8/03/2018', '9/03/2018', '14,200', 'BARLEY', 'BUNGE AGRIBUSINESS', '2', '', ''),
(536, 'Mar-18', 'LYRIC STAR', '', 'KWINANA', '', '', '', 'CHINA', '3/03/2018', '3/8/2018', '3/10/2018', '31,661', 'BARLEY', 'CBH GRAIN', '4', '', ''),
(537, 'Mar-18', 'LYRIC STAR', '', 'KWINANA', '', '', '', 'CHINA', '3/03/2018', '3/3/2018', '3/10/2018', '30,000', 'OATS', 'CBH GRAIN ', '0', '', ''),
(538, 'Mar-18', 'SAKIZAYA KALON', '', 'ALBANY', '', '', '', 'BELGIUM', '24/02/2018', '8/03/2018', '11/03/2018', '33,967', 'CANOLA', 'GLENCORE GRAIN', '12', '', ''),
(539, 'Mar-18', 'KING WHEAT ', '', 'PORT KEMBLA - GRAINCORP', '', '', '', 'JAPAN', '10/03/2018', '10/03/2018', '11/03/2018', '18,250', 'BARLEY', 'GRAINCORP', '0', '', ''),
(540, 'Mar-18', 'GLORIOUS SUNSHINE', '', 'KWINANA', '', '', '', 'JAPAN', '8/03/2018', '3/10/2018', '3/11/2018', '26,144', 'WHEAT', 'EMERALD', '2', '', ''),
(541, 'Mar-18', 'CHINA FRIENDSHIP', '', 'NEWCASTLE', '', '', '', 'CHINA', '2/03/2018', '7/03/2018', '12/03/2018', '15,450', 'WHEAT', 'GRAINCORP', '5', '', ''),
(542, 'Mar-18', 'LUCKY LIFE', '', 'WALLAROO', '', '', '', 'FIJI', '9/03/2018', '10/03/2018', '12/03/2018', '14,000', 'WHEAT', 'ADM TRADNG', '1', '', ''),
(543, 'Mar-18', 'PPS AMBITION', '', 'ALBANY', '', '', '', 'CHINA', '8/03/2018', '11/03/2018', '13/03/2018', '31,616', 'BARLEY', 'CBH GRAIN', '3', '', ''),
(544, 'Mar-18', 'SAKIZAYA KALON', '', 'ESPERANCE', '', '', '', 'BELGIUM', '3/11/2018', '3/12/2018', '3/13/2018', '29,834', 'CANOLA', 'GLENCORE GRAIN', '1', '', ''),
(545, 'Mar-18', 'GH FORTUNE', '', 'KWINANA', '', '', '', 'CHINA', '10/03/2018', '3/12/2018', '3/13/2018', '19,675', 'BARLEY', 'CBH GRAIN', '2', '', ''),
(546, 'Mar-18', 'RAPALLO', '', 'ADELAIDE - INNER', '', '', '', 'MALAYSIA', '6/03/2018', '8/03/2018', '14/03/2018', '30,000', 'WHEAT', 'GRAINCORP', '2', '', ''),
(547, 'Mar-18', 'MEDI AERO', '', 'GERALDTON', '', '', '', 'VIETNAM', '7/03/2018', '3/12/2018', '3/14/2018', '44,550', 'WHEAT', 'GLENCORE', '5', '', ''),
(548, 'Mar-18', 'WADI ALBOSTAN', '', 'ADELAIDE - OUTER', '', '', '', 'CHINA', '5/03/2018', '6/03/2018', '15/03/2018', '50,000', 'BARLEY', 'CBH', '1', '', ''),
(549, 'Mar-18', 'RED ROSE', '', 'ESPERANCE', '', '', '', 'DENMARK', '3/13/2018', '3/13/2018', '3/15/2018', '54,000', 'BARLEY', 'GRAINCORP', '0', '', ''),
(550, 'Mar-18', 'AMSTEL TIGER', '', 'MELBOURNE', '', '', '', 'CHINA', '8/03/2018', '8/03/2018', '16/03/2018', '49,039', 'BARLEY', 'EMERALD', '0', '', ''),
(551, 'Mar-18', 'SYROS ISLAND', '', 'KWINANA', '', '', '', 'CHINA', '13/03/2018', '3/13/2018', '3/16/2018', '54,206', 'BARLEY', 'GLENCORE', '0', '', ''),
(552, 'Mar-18', 'ATLANTIC BULKER', '', 'ADELAIDE - OUTER', '', '', '', 'JAPAN', '9/03/2018', '16/03/2018', '17/03/2018', '12,571', 'BARLEY', 'BUNGE AGRIBUSINESS', '7', '', ''),
(553, 'Mar-18', 'OCEAN GLORY', '', 'ESPERANCE', '', '', '', 'INDONESIA', '3/15/2018', '3/16/2018', '3/17/2018', '47,430', 'WHEAT', 'GRAINCORP', '1', '', ''),
(554, 'Mar-18', 'LEDA C', '', 'PORT LINCOLN', '', '', '', 'CHINA', '10/03/2018', '13/03/2018', '17/03/2018', '64,800', 'BARLEY', 'GLENCORE GRAIN', '3', '', ''),
(555, 'Mar-18', 'PROMISE 3', '', 'KWINANA', '', '', '', 'JAPAN', '15/03/2018', '3/16/2018', '3/17/2018', '30,825', 'WHEAT', 'CBH GRAIN ', '0', '', ''),
(556, 'Mar-18', 'RAPALLO', '', 'PORT LINCOLN', '', '', '', 'MALAYSIA', '15/03/2018', '16/03/2018', '19/03/2018', '30,000', 'WHEAT', 'GRAINCORP', '1', '', ''),
(557, 'Mar-18', 'BILLY JIM', '', 'KWINANA', '', '', '', 'GERMANY', '12/03/2018', '3/17/2018', '3/19/2018', '60,000', 'CANOLA', 'CBH GRAIN ', '5', '', ''),
(558, 'Mar-18', 'OCEAN HIRYU', '', 'ADELAIDE - INNER', '', '', '', 'INDONESIA', '14/03/2018', '14/03/2018', '20/03/2018', '24,280', 'WHEAT', 'PLUM GROVE PTY LTD', '0', '', ''),
(559, 'Mar-18', 'BENFICA', '', 'ALBANY', '', '', '', 'CHINA', '3/16/2018', '3/16/2018', '3/20/2018', '57,750', 'BARLEY', 'CBH GRAIN', '0', '', ''),
(560, 'Mar-18', 'ALEGRE III', '', 'KWINANA', '', '', '', 'PHILIPPINES', '17/03/2018', '3/19/2018', '3/20/2018', '54,000', 'WHEAT', 'CBH GRAIN', '2', '', ''),
(561, 'Mar-18', 'ALENTEJO', '', 'ALBANY', '', '', '', 'PHILIPPINES', '12/03/2018', '20/03/2018', '21/03/2018', '34,200', 'WHEAT', 'GLENCORE GRAIN', '8', '', ''),
(562, 'Mar-18', 'KING COTTON', '', 'PORT LINCOLN', '', '', '', 'INDONESIA', '16/03/2018', '20/03/2018', '21/03/2018', '32,000', 'WHEAT', 'AGE', '4', '', ''),
(563, 'Mar-18', 'BASIC BRAVE', '', 'WALLAROO', '', '', '', 'JAPAN', '17/03/2018', '20/03/2018', '22/03/2018', '26,385', 'BARLEY', 'BUNGE AGRIBUSINESS', '3', '', ''),
(564, 'Mar-18', 'ECKERT OLDENDORFF', '', 'ADELAIDE - INNER', '', '', '', 'JAPAN', '15/03/2018', '20/03/2018', '23/03/2018', '33,852', 'BARLEY', 'CBH GRAIN', '5', '', ''),
(565, 'Mar-18', 'LEMESSOS NAPA', '', 'ADELAIDE - OUTER', '', '', '', 'ITALY', '5/03/2018', '7/03/2018', '23/03/2018', '22,000', 'WHEAT', 'GLENCORE GRAIN', '2', '', ''),
(566, 'Mar-18', 'FEDERAL TYNE', '', 'ESPERANCE', '', '', '', 'CHINA', '3/21/2018', '3/21/2018', '3/23/2018', '48,370', 'BARLEY', 'CBH GRAIN', '0', '', ''),
(567, 'Mar-18', 'CHINA FRIENDSHIP', '', 'GEELONG', '', '', '', 'CHINA', '14/03/2018', '14/03/2018', '23/03/2018', '32709', 'BARLEY', 'CHS BRIADBENT', '0', '', ''),
(568, 'Mar-18', 'W-ORIGINAL', '', 'PORT GILES', '', '', '', 'BELGIUM', '20/03/2018', '21/03/2018', '23/03/2018', '14,788', 'RAPSEEDS', 'GLENCORE GRAIN', '1', '', ''),
(569, 'Mar-18', 'AYE EVOLUTION', '', 'KWINANA', '', '', '', 'KOREA', '15/03/2018', '3/21/2018', '3/23/2018', '53,673', 'WHEAT', 'GLENCORE ', '6', '', ''),
(570, 'Mar-18', 'DORIC JAVELIN', '', 'ESPERANCE', '', '', '', 'PHILIPPINES', '3/23/2018', '3/23/2018', '3/25/2018', '55,000', 'WHEAT', 'ADM TRADING', '0', '', ''),
(571, 'Mar-18', 'SUPER VALENTINA', '', 'KWINANA', '', '', '', 'CHINA', '23/03/2018', '3/23/2018', '3/25/2018', '31,746', 'BARLEY', 'CBH GRAIN ', '0', '', ''),
(572, 'Mar-18', 'CLOVER', '', 'KWINANA', '', '', '', 'CHINA', '15/03/2018', '3/24/2018', '3/26/2018', '55,000', 'BARLEY', 'EMERALD', '8', '', ''),
(573, 'Mar-18', 'MARITIME PROSPERITY', '', 'ADELAIDE - OUTER', '', '', '', 'CHINA', '20/03/2018', '24/03/2018', '27/03/2018', '60,066', 'WHEAT', 'COFCO', '4', '', ''),
(574, 'Mar-18', 'OCEAN SUKSES', '', 'ALBANY', '', '', '', 'INDONESIA', '3/23/2018', '3/24/2018', '3/27/2018', '51,229', 'WHEAT', 'GRAINCORP', '1', '', ''),
(575, 'Mar-18', 'CHRYSANTHI S ', '', 'ESPERANCE', '', '', '', 'AUSTRALIA', '3/25/2018', '3/25/2018', '3/27/2018', '33,000', 'CANOLA', 'CBH GRAIN', '0', '', ''),
(576, 'Mar-18', 'SUPERNOVA', '', 'PORT GILES', '', '', '', 'TBA', '24/03/2018', '24/04/2018', '27/03/2018', '25,000', 'BARLEY', 'CBH GRAIN', '31', '', ''),
(577, 'Mar-18', 'KEN SEI', '', 'THEVENARD', '', '', '', 'CHINA', '25/03/2018', '26/03/2018', '27/03/2018', '10,066', 'BARLEY', 'GLENCORE GRAIN', '1', '', ''),
(578, 'Mar-18', 'ERLYNE', '', 'ADELAIDE - INNER', '', '', '', 'EGYPT', '17/03/2018', '24/03/2018', '28/03/2018', '25,000', 'BEANS/LENTILS', 'CENTRE STATE EXPORTS', '7', '', ''),
(579, 'Mar-18', 'OCEAN HIRYU ', '', 'ESPERANCE', '', '', '', 'INDONESIA', '27/03/2018', '3/27/2018', '3/28/2018', '27,600', 'WHEAT', 'PLUMGROVE ', '0', '', ''),
(580, 'Mar-18', 'CENTENARIO BLUE ', '', 'MELBOURNE', '', '', '', 'CHINA', '13/03/2018', '18/03/2018', '28/03/2018', '46,185', 'BARLEY', 'EMERALD', '5', '', ''),
(581, 'Mar-18', 'FOUR EMERALD', '', 'PORT LINCOLN', '', '', '', 'PHILIPPINES', '24/03/2018', '26/03/2018', '28/03/2018', '32,800', 'WHEAT', 'COFCO RESOURCES', '2', '', ''),
(582, 'Mar-18', 'BERGE ASAHIDAKE', '', 'KWINANA', '', '', '', 'CHINA', '14/03/2018', '3/26/2018', '3/28/2018', '30,570', 'BARLEY', 'GLENCORE', '12', '', ''),
(583, 'Mar-18', 'XIU YU HAI ', '', 'PORT KEMBLA - QUATTRO', '', '', '', 'VIETNAM', '25/03/2018', '27/03/2018', '29/03/2018', '13,928', 'WHEAT', 'ARROW', '2', '', ''),
(584, 'Mar-18', 'EDGAR OLDENDORFF', '', 'WALLAROO', '', '', '', 'BAHRAIN', '16/03/2018', '24/03/2018', '29/03/2018', '26,900', 'WHEAT', 'GLENCORE GRAIN', '8', '', ''),
(585, 'Mar-18', 'INCE TOKYO', '', 'KWINANA', '', '', '', 'YEMEN', '24/03/2018', '3/27/2018', '3/29/2018', '55,000', 'WHEAT', 'CBH GRAIN ', '3', '', ''),
(586, 'Mar-18', 'ATLANTIC BULKER', '', 'BRISBANE', '', '', '', 'JAPAN', '22/03/2018', '28/03/2018', '29/03/2018', '8040', 'WHEAT', 'WILMAR GAVILLION', '6', '', ''),
(587, 'Mar-18', 'ERLYNE', '', 'PORT LINCOLN', '', '', '', 'EGYPT', '29/03/2018', '29/03/2018', '30/03/2018', '10,000', 'LENTILS', 'AGRIOZ', '0', '', ''),
(588, 'Mar-18', 'CL SEVEN', '', 'ALBANY', '', '', '', 'THAILAND', '3/28/2018', '3/29/2018', '3/31/2018', '45,100', 'WHEAT', 'CARGILL', '1', '', ''),
(589, 'Mar-18', 'CHRYSANTHI S', '', 'KWINANA', '', '', '', 'POLAND', '29/03/2018', '3/29/2018', '3/31/2018', '27,517', 'CANOLA', 'CBH GRAIN ', '0', '', ''),
(590, 'Mar-18', 'TRUST STAR', '', 'ALBANY', '', '', '', 'CHINA', '3/28/2018', '3/31/2018', '4/2/2018', '32,781', 'BARLEY', 'GLENCORE GRAIN', '3', '', ''),
(591, 'Mar-18', 'ANGELIC GLORY', '', 'ALBANY', '', '', '', 'GERMANY', '3/27/2018', '4/2/2018', '4/4/2018', '31,500', 'CANOLA', 'ADM TRADING', '6', '', ''),
(592, 'Mar-18', 'NIL', '', 'BRISBANE - QBT', '', '', '', '', '', '', '', '0', '', '', '0', '', ''),
(593, 'Mar-18', 'NIL', '', 'GLADSTONE', '', '', '', '', '', '', '', '0', '', '', '0', '', ''),
(594, 'Mar-18', 'NIL', '', 'PORT KEMBLA - QUATTRO', '', '', '', '', '', '', '', '0', '', '', '0', '', ''),
(595, 'Mar-18', 'NIL', '', 'PORT KEMBLA - QUATTRO', '', '', '', '', '', '', '', '', '', '', '0', '', ''),
(596, 'Mar-18', 'NIL', '', 'PORTLAND', '', '', '', '', '', '', '', '0', '', '', '0', '', ''),
(597, 'Apr-18', 'SUPERNOVA', '', 'BRISBANE', '', '', '', 'JAPAN', '1/04/2018', '3/04/2018', '3/04/2018', '5,150', 'WHEAT', 'GRAINCORP', '2', '', ''),
(598, 'Apr-18', 'ANGELIC GLORY ', '', 'ALBANY', '', '', '', 'GERMANY', '27/03/2018', '2/04/2018', '4/04/18', '31,500', 'CANOLA', 'ADM TRADING ', '6', '', ''),
(599, 'Apr-18', 'INCE ANADOLU', '', 'ESPERANCE', '', '', '', 'YEMEN', '2/04/2018', '2/04/2018', '4/04/2018', '55,000', 'WHEAT', 'GRAINCORP', '0', '', ''),
(600, 'Apr-18', 'KEN SEI', '', 'PORT LINCOLN', '', '', '', 'CHINA', '28/03/2018', '3/04/2018', '4/04/2018', '19,264', 'BARLEY', 'GLENCORE GRAIN', '6', '', ''),
(601, 'Apr-18', 'ECO DYNAMIC', '', 'PORT GILES', '', '', '', 'INDONESIA', '29/03/2018', '3/04/2018', '5/04/2018', '30,900', 'WHEAT', 'BUNGE', '5', '', ''),
(602, 'Apr-18', 'RATTANA NAREE', '', 'THEVENARD', '', '', '', 'INDONESIA', '31/03/2018', '3/04/2018', '5/04/2018', '22,000', 'WHEAT', 'GLENCORE GRAIN', '3', '', ''),
(603, 'Apr-18', 'YANGTZE PIONEER', '', 'KWINANA', '', '', '', 'JAPAN', '29/03/2018', '4/04/2018', '5/04/2018', '23,026', 'WHEAT', 'CBH GRAIN', '5', '', ''),
(604, 'Apr-18', 'AD ASTRA', '', 'GERALDTON', '', '', '', 'AUSTRALIA', '3/04/2018', '3/04/2018', '6/04/18', '50,690', 'CANOLA', 'CBH GRAIN', '0', '', ''),
(605, 'Apr-18', 'AFROS', '', 'GERALDTON', '', '', '', 'PHILIPPINES', '2/04/2018', '6/04/2018', '7/04/2018', '24,737', 'WHEAT', 'CARGILL', '4', '', ''),
(606, 'Apr-18', 'CRIMSON QUEEN', '', 'MELBOURNE', '', '', '', 'MALAYSIA', '18/03/2018', '28/03/2018', '7/04/2018', '48,167', 'WHEAT', 'EMERALD', '10', '', ''),
(607, 'Apr-18', 'SEA TRIBUTE', '', 'WALLAROO', '', '', '', 'IRAQ', '31/03/2018', '4/04/2018', '7/04/2018', '28,538', 'WHEAT', 'BUNGE', '4', '', ''),
(608, 'Apr-18', 'AGRI BRIGHT', '', 'ALBANY', '', '', '', 'AUSTRALIA', '1/04/2018', '7/04/2018', '8/04/2018', '22,000', 'CANOLA', 'CBH GRAIN', '6', '', ''),
(609, 'Apr-18', 'AD ASTRA', '', 'KWINANA', '', '', '', 'GERMANY', '6/04/2018', '7/04/2018', '8/04/18', '12,500', 'CANOLA', 'CBH GRAIN', '0', '', ''),
(610, 'Apr-18', 'K&A SP', '', 'ADELAIDE - INNER', '', '', '', 'JAPAN', '4/04/2018', '6/04/2018', '9/04/2018', '27,499', 'BARLEY', 'GLENCORE GRAIN', '2', '', ''),
(611, 'Apr-18', 'CAPETAN COSTAS S', '', 'KWINANA', '', '', '', 'UAE', '7/04/2018', '8/04/2018', '9/04/2018', '25,437', 'CANOLA', 'BUNGE', '0', '', ''),
(612, 'Apr-18', 'DARYA TIANA', '', 'ALBANY', '', '', '', 'AUSTRALIA', '4/04/2018', '9/04/2018', '10/04/2018', '30,800', 'WHEAT', 'CBH GRAIN', '5', '', ''),
(613, 'Apr-18', 'LEON', '', 'ADELAIDE - OUTER', '', '', '', 'NIGERIA', '24/03/2018', '8/04/2018', '11/04/2018', '50,000', 'WHEAT', 'GLENCORE GRAIN', '15', '', ''),
(614, 'Apr-18', 'AFROS', '', 'ESPERANCE', '', '', '', 'PHILIPPINES', '10/04/2018', '10/04/2018', '11/04/18', '33,132', 'WHEAT', 'CARGILL', '0', '', ''),
(615, 'Apr-18', 'AFRICAN PELICAN', '', 'GERALDTON', '', '', '', 'AUSTRALIA', '10/04/2018', '10/04/2018', '11/04/18', '15,814', 'LUPINS', 'CBH GRAIN', '0', '', ''),
(616, 'Apr-18', 'DARYA TIANA', '', 'ESPERANCE', '', '', '', 'PHILIPPINES', '11/04/2018', '12/04/2018', '12/04/2018', '26,320', 'WHEAT', 'CBH GRAIN', '1', '', ''),
(617, 'Apr-18', 'EMERALD ENTERPRISE', '', 'GEELONG', '', '', '', 'AUSTRALIA', '4/04/2018', '5/04/2018', '12/04/18', '31,373', 'BARLEY', 'RIORDAN', '1', '', ''),
(618, 'Apr-18', 'ANYA', '', 'KWINANA', '', '', '', 'KOREA', '7/04/2018', '9/04/2018', '12/04/18', '53,335', 'WHEAT', 'CBH GRAIN', '2', '', ''),
(619, 'Apr-18', 'XIN RO HAI', '', 'ALBANY', '', '', '', 'JAPAN', '6/04/2018', '11/04/2018', '13/04/2018', '36,023', 'WHEAT', 'CBH GRAIN', '5', '', ''),
(620, 'Apr-18', 'SAMOA', '', 'GEELONG', '', '', '', 'CHINA', '5/04/2018', '6/04/2018', '13/04/18', '57,450', 'BARLEY', 'GRAINCORP', '1', '', ''),
(621, 'Apr-18', 'NUEVA FORTUNA', '', 'NEWCASTLE', '', '', '', 'INDONESIA', '31/03/2018', '6/04/2018', '13/04/2018', '40,500', 'WHEAT', 'ARROW', '6', '', ''),
(622, 'Apr-18', 'AGRI BRIGHT', '', 'KWINANA', '', '', '', 'BELGIUM', '10/04/2018', '11/04/2018', '13/04/2018', '39,163', 'CANOLA', 'CBH GRAIN', '1', '', ''),
(623, 'Apr-18', 'STAR AQUARIUS ', '', 'ESPERANCE', '', '', '', 'PHILIPPINES', '13/04/2018', '13/04/2018', '14/04/18', '41,400', 'WHEAT', 'GLENCORE', '0', '', ''),
(624, 'Apr-18', 'CARO PADRE', '', 'ALBANY', '', '', '', 'DALIAN', '7/04/2018', '13/04/2018', '15/04/18', '51,644', 'BARLEY', 'CBH GRAIN', '6', '', ''),
(625, 'Apr-18', 'FEDERAL ISLAND', '', 'KWINANA', '', '', '', 'CHINA', '3/04/2018', '12/04/2018', '15/04/18', '57,750', 'BARLEY', 'GRAINCORP', '9', '', ''),
(626, 'Apr-18', 'NAVIOS ALDEBARAN ', '', 'ESPERANCE', '', '', '', 'BELGIUM', '15/04/2018', '16/04/2018', '16/04/2018', '18,145', 'CANOLA', 'CBH GRAIN', '1', '', ''),
(627, 'Apr-18', 'OCEAN GLORY', '', 'KWINANA', '', '', '', 'INDONESIA', '10/04/2018', '14/04/2018', '17/04/18', '47,580', 'WHEAT', 'PLUMGROVE', '3', '', ''),
(628, 'Apr-18', 'WARNOW MERKUR', '', 'KWINANA', '', '', '', 'KOREA', '12/04/2018', '16/04/2018', '17/04/18', '6,600', 'WHEAT', 'ADM TRADING ', '4', '', ''),
(629, 'Apr-18', 'NEW KEEPER', '', 'GERALDTON', '', '', '', 'KOREA', '14/04/2018', '16/04/2018', '18/04/18', '31,100', 'WHEAT', 'PLUMGROVE', '2', '', ''),
(630, 'Apr-18', 'XING YUAN HAI', '', 'PORT GILES', '', '', '', 'NZ', '11/04/2018', '12/04/2018', '18/04/2018', '26,950', 'WHEAT', 'GLENCORE GRAIN', '1', '', ''),
(631, 'Apr-18', 'EMERALD INDAH', '', 'PORT LINCOLN', '', '', '', 'TBA', '11/04/2018', '15/04/2018', '18/04/2018', '60,000', 'WHEAT', 'GRAINCORP', '4', '', ''),
(632, 'Apr-18', 'MAGPIE SW', '', 'ADELAIDE - INNER', '', '', '', 'FIJI', '14/04/2018', '16/04/2018', '19/04/2018', '30,511', 'WHEAT', 'GLENCORE GRAIN', '2', '', ''),
(633, 'Apr-18', 'PAN JASMINE', '', 'GERALDTON', '', '', '', 'KOREA', '13/04/2018', '18/04/2018', '20/04/18', '31,153', 'LUPINS', 'CBH GRAIN', '5', '', ''),
(634, 'Apr-18', 'GALINI ', '', 'ALBANY', '', '', '', 'AUSTRALIA', '4/16/2018', '4/17/2018', '4/21/2018', '35,951', 'BARLEY', 'EMERALD', '1', '', ''),
(635, 'Apr-18', 'TEAM HOPE', '', 'NEWCASTLE', '', '', '', 'CHINA', '13/04/2018', '17/04/2018', '21/04/2018', '33,000', 'WHEAT', 'ADM', '4', '', ''),
(636, 'Apr-18', 'ROUGH HABIT', '', 'PORT LINCOLN', '', '', '', 'NIGERIA', '12/04/2018', '17/04/2018', '21/04/2018', '54,400', 'WHEAT', 'GLENCORE GRAIN', '5', '', ''),
(637, 'Apr-18', 'WESTERN PANAMA', '', 'GEELONG', '', '', '', 'ITALY', '14/04/2018', '14/04/2018', '22/04/18', '30,421', 'WHEAT', 'ORIGIN', '0', '', ''),
(638, 'Apr-18', 'GLORIOUS KAMAGARI', '', 'KWINANA', '', '', '', 'CHINA', '15/04/2018', '20/04/2018', '22/04/18', '33,000', 'BARLEY', 'GRAINCORP', '4', '', ''),
(639, 'Apr-18', 'LAVIEEN ROSE', '', 'ALBANY', '', '', '', 'JAPAN', '4/20/2018', '4/21/2018', '4/23/2018', '27,314', 'CANOLA', 'CBH GRAIN', '1', '', ''),
(640, 'Apr-18', 'LMZ BIANCA', '', 'ESPERANCE', '', '', '', 'TAIWAN', '20/04/2018', '20/04/2018', '23/04/18', '66,000', 'BARLEY', 'CBH GRAIN', '0', '', ''),
(641, 'Apr-18', 'GALINI', '', 'KWINANA', '', '', '', 'CHINA', '22/04/2018', '22/04/2018', '23/04/2018', '16,500', 'BARLEY', 'EMERALD', '0', '', ''),
(642, 'Apr-18', 'ARGOLIS', '', 'GEELONG', '', '', '', 'KUWAIT', '16/04/2018', '22/04/2018', '24/04/18', '43,419', 'WHEAT', 'GRAINCORP', '6', '', ''),
(643, 'Apr-18', 'ARGOLIS', '', 'GEELONG', '', '', '', 'UAE', '16/04/2018', '22/04/2018', '24/04/18', '16,065', 'WHEAT', 'GRAINCORP', '6', '', ''),
(644, 'Apr-18', 'EVANGELIA', '', 'GERALDTON', '', '', '', 'IRAQ', '20/04/2018', '22/04/2018', '24/04/18', '50,400', 'WHEAT', 'CBH GRAIN', '2', '', ''),
(645, 'Apr-18', 'ATROMITOS L', '', 'GEELONG', '', '', '', 'NZ', '23/04/2018', '25/04/2018', '26/04/18', '27,152', 'WHEAT', 'CARGILL ', '2', '', ''),
(646, 'Apr-18', 'NAVIOS ALDEBARAN', '', 'PORT LINCOLN', '', '', '', 'NETHERLANDS', '18/04/2018', '23/04/2018', '26/04/2018', '40,000', 'CANOLA', 'CBH GRAIN', '5', '', ''),
(647, 'Apr-18', 'MAJESTY', '', 'KWINANA', '', '', '', 'YEMEN', '24/04/2018', '25/04/2018', '27/04/2018', '30,250', 'WHEAT', 'GRAINCORP', '0', '', ''),
(648, 'Apr-18', 'MIMITSU', '', 'ESPERANCE', '', '', '', 'CHINA', '25/04/2018', '25/04/2018', '28/04/2018', '35,046', 'BARLEY', 'ADM TRADING', '0', '', ''),
(649, 'Apr-18', 'SEA TRIBUTE', '', 'PORT LINCOLN', '', '', '', 'IRAQ', '8/04/2018', '26/04/2018', '28/04/2018', '23,812', 'WHEAT', 'BUNGE', '18', '', ''),
(650, 'Apr-18', 'PENGHU SW', '', 'WALLAROO', '', '', '', 'CHINA', '25/04/2018', '26/04/2018', '28/04/2018', '25,200', 'WHEAT', 'AUSTRALIAN GRAIN EXPORTS', '1', '', ''),
(651, 'Apr-18', 'MARIETTA', '', 'ADELAIDE - OUTER', '', '', '', 'CHINA', '12/04/2018', '23/04/2018', '29/04/2018', '63,000', 'WHEAT', 'COFCO', '11', '', ''),
(652, 'Apr-18', 'MONDIAL IRIS ', '', 'ALBANY', '', '', '', 'ROTTERDAM', '4/23/2018', '4/24/2018', '4/29/2018', '59,523', 'CANOLA', 'CBH GRAIN', '1', '', ''),
(653, 'Apr-18', 'OLYMPUS', '', 'ESPERANCE', '', '', '', 'UAE', '28/04/2018', '28/04/2018', '29/04/18', '27,500', 'CANOLA', 'BUNGE', '0', '', '');
INSERT INTO `record` (`id`, `month`, `vessel`, `province`, `loadport`, `terminal`, `dischargeport`, `dischargecountry`, `destination`, `arrival`, `berthing`, `departure`, `tonnage`, `cargo`, `shipper`, `waitingtime`, `vesselsize`, `remarks`) VALUES
(654, 'Apr-18', 'APRILIA', '', 'GEELONG', '', '', '', 'CHINA', '24/04/2018', '27/04/2018', '29/04/18', '33,000', 'BARLEY', 'GRAINCORP', '3', '', ''),
(655, 'Apr-18', 'KUANYIN', '', 'MELBOURNE', '', '', '', 'PAPUA NEW GUINEA', '27/04/2018', '27/04/2018', '29/04/2018', '17,598', 'WHEAT', 'EMERALD', '0', '', ''),
(656, 'Apr-18', 'NAISS COURAGEOUS', '', 'ADELAIDE - INNER', '', '', '', 'VIETNAM', '17/04/2018', '26/04/2018', '30/04/2018', '27,499', 'WHEAT', 'BUNGE', '9', '', ''),
(657, 'Apr-18', 'RESURGENCE', '', 'KWINANA', '', '', '', 'CHINA', '20/04/2018', '28/04/2018', '30/04/2018', '43,012', 'BARLEY', 'CBH GRAIN', '8', '', ''),
(658, 'Apr-18', 'RESURGENCE', '', 'KWINANA', '', '', '', 'CHINA', '20/04/2018', '28/04/2018', '30/04/2018', '22,000', 'OATS', 'CBH GRAIN', '8', '', ''),
(659, 'Apr-18', 'VIGOROUS', '', 'ALBANY', '', '', '', 'YEMEN', '4/23/2018', '4/30/2018', '5/1/2018', '30,000', 'WHEAT', 'EMERALD', '7', '', ''),
(660, 'Apr-18', 'NIL', '', 'BRISBANE - QBT', '', '', '', '', '', '', '', '0', '', '', '0', '', ''),
(661, 'Apr-18', 'NIL', '', 'GEELONG', '', '', '', '', '', '', '', '0', '', '', '0', '', ''),
(662, 'Apr-18', 'NIL', '', 'GLADSTONE', '', '', '', '', '', '', '', '0', '', '', '0', '', ''),
(663, 'Apr-18', 'NIL', '', 'MACKAY', '', '', '', '', '', '', '', '0', '', '', '0', '', ''),
(664, 'Apr-18', 'NIL', '', 'PORT KEMBLA - GRAINCORP', '', '', '', '', '', '', '', '0', '', '', '0', '', ''),
(665, 'Apr-18', 'NIL', '', 'PORT KEMBLA - QUATTRO', '', '', '', '', '', '', '', '0', '', '', '0', '', ''),
(666, 'Apr-18', 'NIL', '', 'PORTLAND', '', '', '', '', '', '', '', '0', '', '', '0', '', ''),
(667, 'May-18', 'GREENERY SEA', '', 'PORT GILES', '', '', '', 'INDONESIA', '22/04/2018', '25/04/2018', '1/05/2018', '31050', 'WHEAT', 'AUSTRALIAN GRAIN EXPORTS', '3', '', ''),
(668, 'May-18', 'SENORITA', '', 'NEWCASTLE', '', '', '', 'ITALY', '24/04/2018', '26/04/2018', '2/05/2018', '49,705', 'WHEAT', 'GRAINCORP', '2', '', ''),
(669, 'May-18', 'DEVONGATE', '', 'KWINANA', '', '', '', 'KOREA', '27/04/2018', '1/05/2018', '3/05/2018', '43,098', 'WHEAT', 'GLENCORE GRAIN', '4', '', ''),
(670, 'May-18', 'DEVONGATE', '', 'KWINANA', '', '', '', 'KOREA', '27/04/2018', '1/05/2018', '3/05/2018', '11,902', 'WHEAT', 'GLENCORE GRAIN', '4', '', ''),
(671, 'May-18', 'ATLAS ', '', 'ALBANY', '', '', '', 'CHINA', '2/05/2018', '2/05/2018', '5/05/2018', '51,950', 'BARLEY', 'ADM TRADING ', '0', '', ''),
(672, 'May-18', 'ALAM SETIA', '', 'GEELONG', '', '', '', 'CHINA', '26/04/2018', '27/04/2018', '5/05/2018', '32,996', 'BARLEY', 'COFCO', '1', '', ''),
(673, 'May-18', 'SOTKA', '', 'KWINANA', '', '', '', 'PHILIPPINES', '3/05/2018', '5/3/2018', '5/05/2018', '54,200', 'WHEAT', 'CARGILL', '0', '', ''),
(674, 'May-18', 'NAESS COURAGEOUS', '', 'ADELAIDE - OUTER', '', '', '', 'VIETNAM', '30/04/2018', '30/04/2018', '6/05/2018', '26499.19', 'WHEAT', 'BUNGE AGRIBUSINESS', '0', '', ''),
(675, 'May-18', 'AFRICAN ROOK', '', 'MELBOURNE', '', '', '', 'AUCKLAND', '1/05/2018', '2/05/2018', '7/05/2018', '32004.92', 'WHEAT', 'EMERALD', '1', '', ''),
(676, 'May-18', 'ASTRA PERSEUS', '', 'KWINANA', '', '', '', 'PHILIPPINES', '3/05/2018', '4/05/2018', '7/05/2018', '53,850', 'WHEAT', 'CBH GRAIN ', '1', '', ''),
(677, 'May-18', 'GLORY TRADER', '', 'ESPERANCE', '', '', '', 'CHINA', '5/05/2018', '5/05/2018', '8/05/2018', '66,000', 'BARLEY', 'CBH', '0', '', ''),
(678, 'May-18', 'OCEAN SUKSES', '', 'PORT LINCOLN', '', '', '', 'INDONESIA', '6/05/2018', '7/05/2018', '8/05/2018', '30750', 'WHEAT', 'AWB CARGILL', '1', '', ''),
(679, 'May-18', 'BROADGATE', '', 'ADELAIDE - INNER', '', '', '', 'JAPAN', '29/04/2018', '7/05/2018', '9/05/2018', '32771.2', 'BARLEY', 'GLENCORE GRAIN', '8', '', ''),
(680, 'May-18', 'OLYMPUS', '', 'PORT LINCOLN', '', '', '', 'UAE', '3/05/2018', '8/05/2018', '9/05/2018', '20680', 'CANOLA', 'BUNGE AGRIBUSINESS', '5', '', ''),
(681, 'May-18', 'VIGOROUS', '', 'KWINANA', '', '', '', 'YEMEN', '3/05/2018', '7/05/2018', '9/05/2018', '4,767', 'WHEAT', 'GRAINCORP', '3', '', ''),
(682, 'May-18', 'VIGOROUS', '', 'KWINANA', '', '', '', 'YEMEN', '3/05/2018', '7/05/2018', '9/05/2018', '15,000', 'WHEAT', 'GRAINCORP', '3', '', ''),
(683, 'May-18', 'SHANDONG FU DE ', '', 'ALBANY', '', '', '', 'THAILAND', '5/05/2018', '5/05/2018', '11/05/2018', '59,380', 'BARLEY', 'CBH', '0', '', ''),
(684, 'May-18', 'MORNING CLOUD', '', 'WALLAROO', '', '', '', 'CHINA', '27/04/2018', '8/05/2018', '11/05/2018', '29800', 'BARLEY', 'GLENCORE GRAIN', '11', '', ''),
(685, 'May-18', 'SAKIZAYA RESPECT', '', 'KWINANA', '', '', '', 'CHINA', '29/04/2018', '5/8/2018', '11/05/2018', '69,300', 'WHEAT', 'COFCO', '8', '', ''),
(686, 'May-18', 'CLIPPER TENACIOUS', '', 'PORT LINCOLN', '', '', '', 'EGYPT', '8/05/2018', '10/05/2018', '12/05/2018', '27500', 'WHEAT', 'GLENCORE GRAIN', '2', '', ''),
(687, 'May-18', 'SSI MAJECTIC ', '', 'ALBANY', '', '', '', 'JAPAN', '11/05/2018', '11/05/2018', '13/05/2018', '48,735', 'WHEAT', 'CBH', '0', '', ''),
(688, 'May-18', 'PLOVER ARROW', '', 'GEELONG', '', '', '', 'SOUTH KOREA', '9/05/2018', '9/05/2018', '13/05/2018', '14,325', 'CORN', 'WILMAR GAVILON', '0', '', ''),
(689, 'May-18', 'OCEAN GLORY ', '', 'ESPERANCE', '', '', '', 'INDONESIA', '12/05/2018', '12/05/2018', '14/05/2018', '47,583', 'WHEAT', 'PLUM GROVE PTY LTD', '0', '', ''),
(690, 'May-18', 'DROGBA', '', 'KWINANA', '', '', '', 'PHILIPPINES', '10/05/2018', '5/11/2018', '14/05/2018', '56,735', 'WHEAT', 'ADM TRADING ', '0', '', ''),
(691, 'May-18', 'OCEAN MAKMUR ', '', 'GERALDTON', '', '', '', 'INDONESIA', '10/05/2018', '13/05/2018', '15/05/2018', '58,719', 'WHEAT', 'SHIP AGENCIES SERVICES PTY LTD ', '3', '', ''),
(692, 'May-18', 'OCEANIC HAWK ', '', 'MACKAY', '', '', '', 'THAILAND', '8/05/2018', '12/05/2018', '15/05/2018', '26,776', 'WHEAT', 'GRAINCORP', '4', '', ''),
(693, 'May-18', 'KANG HUAN ', '', 'ALBANY', '', '', '', 'CHINA', '13/05/2018', '14/05/2018', '16/05/2018', '43,736', 'BARLEY', 'CBH', '1', '', ''),
(694, 'May-18', 'MORNING CLOUD ', '', 'ESPERANCE', '', '', '', 'CHINA', '14/05/2018', '14/05/2018', '16/05/2018', '37,854', 'BARLEY', 'GLENCORE A ', '0', '', ''),
(695, 'May-18', 'LYRIC SUN', '', 'WALLAROO', '', '', '', 'CHINA', '14/05/2018', '15/05/2018', '18/05/2018', '27000', 'BARLEY', 'GRAINCORP', '1', '', ''),
(696, 'May-18', 'EMILIE BULKER', '', 'ADELAIDE - OUTER', '', '', '', 'JAPAN', '7/05/2018', '8/05/2018', '19/05/2018', '29924.31', 'BARLEY', 'GLENCORE GRAIN', '1', '', ''),
(697, 'May-18', 'DENSA FALCON ', '', 'GERALDTON', '', '', '', 'SINGAPORE', '12/05/2018', '18/05/2018', '19/05/2018', '35,200', 'WHEAT', 'GULF AGENCY COMPANY ', '6', '', ''),
(698, 'May-18', 'CHLOE ', '', 'ALBANY', '', '', '', 'JAPAN', '17/05/2018', '18/05/2018', '20/05/2018', '22,500', 'BARLEY', 'CBH', '1', '', ''),
(699, 'May-18', 'GRAECIAS UNIVERSALIS', '', 'GEELONG', '', '', '', 'CHINA', '13/05/2018', '14/05/2018', '20/05/2018', '57,600', 'BARLEY', 'GRAINCORP', '1', '', ''),
(700, 'May-18', 'STAR PLANET ', '', 'ESPERANCE', '', '', '', 'VIETNAM', '18/05/2018', '18/05/2018', '21/05/2018', '20,056', 'BARLEY', 'CBH', '0', '', ''),
(701, 'May-18', 'STAR PLANET ', '', 'ESPERANCE', '', '', '', 'VIETNAM', '18/05/2018', '18/05/2018', '21/05/2018', '51,594', 'WHEAT', 'GRAINCORP ', '0', '', ''),
(702, 'May-18', 'DAIMONGATE', '', 'KWINANA', '', '', '', 'CHINA', '18/05/2018', '5/18/2018', '21/05/2018', '50,900', 'BARLEY', 'CBH GRAIN', '0', '', ''),
(703, 'May-18', 'KANDA LOGGER', '', 'ADELAIDE - OUTER', '', '', '', 'INDONESIA', '17/05/2018', '20/05/2018', '22/05/2018', '32999.3', 'WHEAT', 'AUSTRALIAN GRAIN EXPORT', '3', '', ''),
(704, 'May-18', 'SUMMIT SW ', '', 'ALBANY', '', '', '', 'SINGAPORE', '22/05/2018', '22/05/2018', '23/05/2018', '15,400', 'WHEAT', 'CBH', '0', '', ''),
(705, 'May-18', 'OLYMPOS', '', 'PORT GILES', '', '', '', 'DUBAI', '21/05/2018', '21/05/2018', '24/05/2018', '45000', 'WHEAT', 'CBH GRAIN', '0', '', ''),
(706, 'May-18', 'SHANGHAI BULKER', '', 'PORT LINCOLN', '', '', '', 'VIETNAM', '17/05/2018', '22/05/2018', '24/05/2018', '54347', 'WHEAT', 'COFCO RESOURCES', '5', '', ''),
(707, 'May-18', 'AEOLIA', '', 'KWINANA', '', '', '', 'PHILIPPINES', '20/05/2018', '21/05/2018', '24/05/2018', '55,000', 'WHEAT', 'COFCO RESOURCES', '1', '', ''),
(708, 'May-18', 'KOHINOOR', '', 'MELBOURNE', '', '', '', 'MALAYSIA', '22/05/2018', '23/05/2018', '25/05/2018', '16242.36', 'WHEAT', 'EMERALD', '1', '', ''),
(709, 'May-18', 'MIAO XIANG', '', 'ADELAIDE - OUTER', '', '', '', 'MALAYSIA', '22/05/2018', '22/05/2018', '26/05/2018', '55000', 'WHEAT', 'CBH GRAIN', '0', '', ''),
(710, 'May-18', 'DESERT OASIS', '', 'GEELONG', '', '', '', 'NIGERIA', '22/05/2018', '22/05/2018', '26/05/2018', '49,140', 'WHEAT', 'CARGILL', '0', '', ''),
(711, 'May-18', 'OCEAN  PHOENIX', '', 'WALLAROO', '', '', '', 'INDONESIA', '24/05/2018', '24/05/2018', '26/05/2018', '18415', 'WHEAT', 'PLUM GROVE', '0', '', ''),
(712, 'May-18', 'VENTURE GOAL ', '', 'GERALDTON', '', '', '', 'PHILIPPINES', '19/05/2018', '21/05/2018', '27/05/2018', '38,500', 'WHEAT', 'INCHAPE SHIPPING SERVICES ', '2', '', ''),
(713, 'May-18', 'ELISABETH OLDENDORFF', '', 'PORT LINCOLN', '', '', '', 'CHINA', '21/05/2018', '24/05/2018', '27/05/2018', '36029', 'BARLEY', 'COFCO RESOURCES', '3', '', ''),
(714, 'May-18', 'CHLOE', '', 'KWINANA', '', '', '', 'CHINA', '21/05/2018', '5/23/2018', '27/05/2018', '35,250', 'BARLEY', 'CBH GRAIN', '1', '', ''),
(715, 'May-18', 'XING RONG HAI', '', 'KWINANA', '', '', '', 'JAPAN', '24/05/2018', '25/05/2018', '28/05/2018', '36,472', 'WHEAT', 'PLUM GROVE PTY LTD', '0', '', ''),
(716, 'May-18', 'ABY MONICA', '', 'ALBANY', '', '', '', 'PHILIPPINES', '26/05/2018', '29/05/2018', '29/05/2018', '51,561', 'WHEAT', 'GAC ', '3', '', ''),
(717, 'May-18', 'OCEAN PHOENIX', '', 'PORT GILES', '', '', '', 'INDONESIA', '26/05/2018', '27/05/2018', '29/05/2018', '30000', 'WHEAT', 'PLUM GROVE PTY LTD', '1', '', ''),
(718, 'May-18', 'OCEAN JOY', '', 'ADELAIDE - INNER', '', '', '', 'JAPAN', '26/05/2018', '26/05/2018', '30/05/2018', '33303.22', 'WHEAT', 'BUNGE AGRIBUSINESS', '0', '', ''),
(719, 'May-18', 'NIL', '', 'BRISBANE', '', '', '', '', '', '', '', '0', '', '', '0', '', ''),
(720, 'May-18', 'NIL', '', 'BRISBANE - QBT', '', '', '', '', '', '', '', '0', '', '', '0', '', ''),
(721, 'May-18', 'NIL', '', 'GLADSTONE', '', '', '', '', '', '', '', '0', '', '', '0', '', ''),
(722, 'May-18', 'NIL', '', 'PORT KEMBLA - GRAINCORP', '', '', '', '', '', '', '', '0', '', '', '0', '', ''),
(723, 'May-18', 'NIL', '', 'PORT KEMBLA - QUATTRO', '', '', '', '', '', '', '', '0', '', '', '0', '', ''),
(724, 'May-18', 'NIL', '', 'PORTLAND', '', '', '', '', '', '', '', '0', '', '', '0', '', ''),
(725, 'May-18', 'NIL', '', 'THEVENARD', '', '', '', '', '', '', '', '0', '', '', '0', '', ''),
(726, 'Jun-18', 'BRIGHT RAINBOW', '', 'ADELAIDE ', '', '', '', 'JAPAN', '28/05/2018', '31/05/2018', '1/06/2018', '20,600', 'BARLEY', 'GLENCORE GRAIN', '3', '', ''),
(727, 'Jun-18', 'PACIFIC HOPE ', '', 'ALBANY', '', '', '', 'HAKATA ', '1/06/2018', '2/06/2018', '3/06/2018', '25,600', 'WHEAT', 'CBH GRAIN ', '1', '', ''),
(728, 'Jun-18', 'CLIPPER TENACIOUS', '', 'THEVENARD', '', '', '', 'EGYPT', '31/05/2018', '31/05/2018', '3/06/2018', '17,492', 'WHEAT', 'ADM TRADING', '0', '', ''),
(729, 'Jun-18', 'SSI CHALLENGER ', '', 'GERALDTON', '', '', '', 'JEBEL ALI ', '5/29/2018', '6/2/2018', '6/5/2018', '44,000', 'CANOLA ', 'WILHELMSEN SHIP SERVICE', '4', '', ''),
(730, 'Jun-18', 'LEDA C', '', 'ADELAIDE ', '', '', '', 'CHINA', '19/05/2018', '1/06/2018', '6/06/2018', '65,999', 'BARLEY', 'GLENCORE GRAIN', '13', '', ''),
(731, 'Jun-18', 'PRONOI', '', 'ALBANY', '', '', '', 'INCHEN', '29/05/2018', '4/06/2018', '6/06/2018', '50,000', 'WHEAT', 'CBH GRAIN ', '6', '', ''),
(732, 'Jun-18', 'BLISS', '', 'PORT LINCOLN', '', '', '', 'BRISBANE', '4/06/2018', '5/06/2018', '6/06/2018', '26,598/7,216', 'WHEAT/BARLEY', 'COFCO RESOURCES', '1', '', ''),
(733, 'Jun-18', 'SOTKA ', '', 'GERALDTON', '', '', '', 'SINGAPORE', '6/3/2018', '6/6/2018', '6/8/2018', '50,230', 'WHEAT', 'WILHELMSEN SHIP SERVICE', '3', '', ''),
(734, 'Jun-18', 'DL JASMINE', '', 'PORT GILES', '', '', '', 'INDONESIA', '20/05/2018', '2/06/2018', '8/06/2018', '32,000', 'WHEAT', 'AUSTRALIAN GRAIN EXPORT', '13', '', ''),
(735, 'Jun-18', 'SOLDOY', '', 'ALBANY', '', '', '', 'CHINA', '4/06/2018', '7/06/2018', '9/06/2018', '30,000', 'WHEAT ', 'GRAINCORP', '3', '', ''),
(736, 'Jun-18', 'OCEAN SUKSES', '', 'ESPERANCE', '', '', '', 'INDONESIA', '7/06/2018', '7/06/2018', '9/06/2018', '57,750', 'WHEAT ', 'GRAINCORP', '0', '', ''),
(737, 'Jun-18', 'SOLDOY', '', 'ESPERANCE', '', '', '', 'YEMEN', '10/06/2018', '10/06/2018', '11/06/2018', '22,000', 'WHEAT ', 'GRAINCORP ', '0', '', ''),
(738, 'Jun-18', 'AMITY ', '', 'ALBANY', '', '', '', 'HODEIDAH', '2/06/2018', '10/06/2018', '12/06/2018', '30,000', 'WHEAT', 'GRAINCORP', '8', '', ''),
(739, 'Jun-18', 'OCEAN MAKMUR ', '', 'GERALDTON', '', '', '', 'INDONESIA ', '1/06/2018', '10/06/2018', '12/06/2018', '52,842', 'WHEAT ', 'SHIP AGENCY SERVICES ', '9', '', ''),
(740, 'Jun-18', 'IVS PHINDA', '', 'ADELAIDE ', '', '', '', 'NEW ZEALAND', '4/06/2018', '8/06/2018', '13/06/2018', '4953.48/27695.14', 'BARLEY/WHEAT', 'GLENCORE GRAIN', '4', '', ''),
(741, 'Jun-18', 'LYRIC SUN', '', 'ADELAIDE ', '', '', '', 'CHINA', '19/05/2018', '8/06/2018', '14/06/2018', '39,000', 'BARLEY', 'GRAINCORP', '20', '', ''),
(742, 'Jun-18', 'BERGE BANDAI ', '', 'GERALDTON', '', '', '', 'CHINA ', '12/06/2018', '13/06/2018', '15/06/2018', '36,655', 'WHEAT ', 'GULF AGENCY COMPANY ', '1', '', ''),
(743, 'Jun-18', 'ARIANA', '', 'PORT LINCOLN', '', '', '', 'IRAQ', '4/06/2018', '12/06/2018', '15/06/2018', '51,948', 'WHEAT', 'CARGILL', '8', '', ''),
(744, 'Jun-18', 'CLIPPER TENACIOUS', '', 'ADELAIDE ', '', '', '', 'EGYPT', '4/06/2018', '15/06/2018', '16/06/2018', '11,683', 'WHEAT', 'ADM TRADING', '11', '', ''),
(745, 'Jun-18', 'FEDERAL IRIS ', '', 'ALBANY', '', '', '', 'CHINA', '4/06/2018', '14/06/2018', '16/06/2018', '21,592', 'BARELY', 'EMERALD', '10', '', ''),
(746, 'Jun-18', 'ORIENT GLORY ', '', 'GERALDTON', '', '', '', 'KWINANA', '15/06/2018', '16/06/2018', '17/06/2018', '11,220', 'LUPINS ', 'MONSON AGENCIES ', '1', '', ''),
(747, 'Jun-18', 'OCEAN HIRYU', '', 'ADELAIDE ', '', '', '', 'JAKARTA', '14/06/2018', '17/06/2018', '18/06/2018', '25,000', 'WHEAT', 'CBH GRAIN', '3', '', ''),
(748, 'Jun-18', 'ISS SPIRIT', '', 'GEELONG', '', '', '', 'INDONESIA', '15/06/2018', '15/06/2018', '19/06/2018', '16050', 'WHEAT', 'GRAINCORP FOB / COFCO', '0', '', ''),
(749, 'Jun-18', 'ISS SPIRIT', '', 'GEELONG', '', '', '', 'INDONESIA', '15/06/2018', '15/06/2018', '19/06/2018', '16050', 'WHEAT', 'GRAINCORP FOB / COFCO', '0', '', ''),
(750, 'Jun-18', 'ROYAL INNOVATION', '', 'WALLAROO', '', '', '', 'UAE', '7/06/2018', '17/06/2018', '19/06/2018', '23,917', 'WHEAT', 'GLENCORE GRAIN', '10', '', ''),
(751, 'Jun-18', 'BELLE OCEAN ', '', 'ALBANY', '', '', '', 'CHIBA', '17/06/2018', '19/06/2018', '20/06/2018', '25,000', 'BARELY', 'CBH GRAIN ', '2', '', ''),
(752, 'Jun-18', 'LEMESSOS QUEEN', '', 'PORT GILES', '', '', '', 'CHINA', '5/06/2018', '12/06/2018', '20/06/2018', '66,820', 'BARLEY', 'GLENCORE GRAIN', '7', '', ''),
(753, 'Jun-18', 'SBI LAMBADA', '', 'GEELONG', '', '', '', 'CHINA', '18/06/2018', '19/06/2018', '22/06/2018', '59450', 'BARLEY', 'GRAINCORP', '1', '', ''),
(754, 'Jun-18', 'OCEAN HIRYU', '', 'PORT LINCOLN', '', '', '', 'JAKARTA', '19/06/2018', '19/06/2018', '22/06/2018', '25,000', 'WHEAT', 'CBH GRAIN', '0', '', ''),
(755, 'Jun-18', 'CAPETAN GIORGIS', '', 'WALLAROO', '', '', '', 'UAE', '18/06/2018', '20/06/2018', '22/06/2018', '24,600', 'WHEAT', 'CBH GRAIN', '2', '', ''),
(756, 'Jun-18', 'DROGBA ', '', 'GERALDTON', '', '', '', 'KOREA', '13/06/2018', '21/06/2018', '24/06/2018', '51,295', 'WHEAT ', 'GULF AGENCY COMPANY ', '8', '', ''),
(757, 'Jun-18', 'CAPETAN GIORGIS', '', 'PORT GILES', '', '', '', 'UAE', '23/06/2018', '23/06/2018', '25/06/2018', '34,403', 'WHEAT', 'CBH GRAIN', '0', '', ''),
(758, 'Jun-18', 'OCEAN GLORY', '', 'PORT LINCOLN', '', '', '', 'INDONESIA', '13/06/2018', '19/06/2018', '25/06/2018', '47,450', 'WHEAT', 'PLUM GROVE', '6', '', ''),
(759, 'Jun-18', 'EDEN BAY', '', 'THEVENARD', '', '', '', 'VIETNAM', '20/06/2018', '24/06/2018', '26/06/2018', '22,000', 'WHEAT', 'CBH GRAIN', '4', '', ''),
(760, 'Jun-18', 'GREAT INTELLIGENCE ', '', 'GERALDTON', '', '', '', 'SUBIC ', '20/06/2018', '26/06/2018', '28/06/2018', '33,000', 'WHEAT ', 'INCHAPE SHIPPING SERVICES ', '6', '', ''),
(761, 'Jun-18', 'OCEAN PHOENIX ', '', 'ALBANY', '', '', '', 'SINGAPORE', '26/06/2018', '26/06/2018', '29/06/2018', '48,000', 'WHEAT ', 'PLUM GROVE PTY LTD', '0', '', ''),
(762, 'Jun-18', 'PAN AMBER ', '', 'GERALDTON', '', '', '', 'MACASSAR', '25/06/2018', '28/06/2018', '29/06/2018', '36,300', 'WHEAT ', 'MONSON AGENCIES ', '3', '', ''),
(763, 'Jun-18', 'EASTGATE', '', 'PORT GILES', '', '', '', 'INDONESIA', '16/06/2018', '25/06/2018', '29/06/2018', '31,800', 'WHEAT', 'GLENCORE GRAIN', '9', '', ''),
(764, 'Jun-18', 'NEW LEGACY', '', 'PORT LINCOLN', '', '', '', 'JAPAN', '28/06/2018', '29/06/2018', '30/06/2018', '27,500', 'BARLEY', 'CBH GRAIN', '1', '', ''),
(765, 'Jun-18', 'NORD HAKATA ', '', 'GERALDTON', '', '', '', 'JAPAN ', '17/06/2018', '18/07/2018', '19/07/2018', '11,822', 'BARELY ', 'GULF AGENCY COMPANY ', '31', '', ''),
(766, 'Jun-18', 'OCEANIC HAWK', '', 'BRISBANE', '', '', '', 'THAILAND', ' 31/05/18', ' 31/05/18', '1830 01/06/18', '6300', 'WHEAT', 'GRAINCORP', '#VALUE!', '', ''),
(767, 'Jun-18', 'NORD HAKATA', '', 'KWINANA', '', '', '', 'Japan', '6/19/2018 23:12', '21/06/2018', '6/21/2018 23:44', '15279.51', 'BARLEY', 'CBH GRAIN', '1', '', ''),
(768, 'Jun-18', 'FEDERAL IRIS', '', 'KWINANA', '', '', '', 'China', '6/17/2018 19:16', '19/06/2018', '6/21/2018 3:57', '33397.97', 'BARLEY', 'EMERALD', '1', '', ''),
(769, 'Jun-18', 'NIN', '', 'KWINANA', '', '', '', 'Netherlands', '6/10/2018 4:21', '12/06/2018', '6/13/2018 3:26', '10677.2', 'LUPINS-CARGO', 'CBH GRAIN', '2', '', ''),
(770, 'Jun-18', 'BELLINA COLOSSUS', '', 'KWINANA', '', '', '', 'Philippines', '6/20/2018 14:30', '24/06/2018', '6/27/2018 6:58', '57072', 'WHEAT', 'LOUIS FREYFUS', '3', '', ''),
(771, 'Jun-18', 'AVENTICUM', '', 'KWINANA', '', '', '', 'Philippines', '6/16/2018 6:00', '16/06/2018', '6/19/2018 5:50', '55000', 'WHEAT', 'LOUIS FREYFUS', '0', '', ''),
(772, 'Jun-18', 'HAKATA QUEEN', '', 'KWINANA', '', '', '', 'Philippines', '5/23/2018 23:30', '3/06/2018', '6/2/2018 4:22', '56140.26', 'WHEAT', 'GLENCORE GRAIN', '10', '', ''),
(773, 'Jun-18', 'STH KURE', '', 'KWINANA', '', '', '', 'Philippines', '5/30/2018 17:37', '1/06/2018', '6/3/2018 17:40', '58400', 'WHEAT', 'CBH GRAIN', '1', '', ''),
(774, 'Jun-18', 'NIL', '', 'GLADSTONE', '', '', '', 'NIL', 'NIL', 'NIL', 'NIL', 'NIL', 'NIL', 'NIL', '#VALUE!', '', ''),
(775, 'Jun-18', 'SAMOA', '', 'MELBOURNE', '', '', '', 'NANTONG, CHINA', '6/12/2018', '6/12/2018', '6/22/2018', '51,898.06', 'BARLEY', 'EMERALD GRAIN AUSTRALIA PTY LTD', '0', '', ''),
(776, 'Jun-18', 'ULTR OSORNO', '', 'MELBOURNE', '', '', '', 'BRISBANE, AUSTRALIA', '6/30/2018', '6/30/2018', '7/9/2018', '32,997.31', 'BARLEY', 'EMERALD GRAIN AUSTRALIA PTY LTD', '0', '', ''),
(777, 'Jun-18', 'Federal Skye', '', 'PORTLAND', '', '', '', 'CHINA', '18/06/2018', '6/19/2018', '6/27/2018', '33071.66', 'BARLEY', 'EVERGRAIN', '1', '', ''),
(778, 'Jun-18', 'Lo Shen', '', 'PORTLAND', '', '', '', 'TBA', '22/06/2018', '6/22/2018', '6/24/2018', '17600', 'WHEAT', 'TBA', '0', '', ''),
(779, 'Jun-18', 'Tien Fei', '', 'PORTLAND', '', '', '', 'TBA', '8/06/2018', '12/06/2018', '16/06/2018', '20603.85', 'WHEAT', 'TBA', '4', '', ''),
(780, 'Jun-18', 'NINGHAI', '', 'NEWCASTLE', '', '', '', 'NANTONG, CHINA', '29/05/2018', '30/05/2018', '7/06/2018', '33000', 'SORGHUM', 'GRAINCORP', '1', '', ''),
(781, 'Jun-18', 'OCEANIC HAWK', '', 'NEWCASTLE', '', '', '', 'KOH SICHANG, THAILAND', '4/06/2018', '8/06/2018', '11/06/2018', '18700', 'WHEAT', 'GRAINCORP', '4', '', ''),
(782, '', 'test', 'Test Province', 'port two', 'Terminal Onee', 'Port 12', 'INDIA', 'teste', '2018-09-24', '2018-09-29', '2018-09-24', 'test', 'WHEAT', 'Shipper 1', '5', 'Handymax', 'test\r\n ');

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `id` int(11) NOT NULL,
  `cargo` varchar(255) NOT NULL,
  `vesselname` varchar(255) NOT NULL,
  `shipper` varchar(255) NOT NULL,
  `dischargecountry` varchar(255) NOT NULL,
  `berthingfrom` varchar(255) NOT NULL,
  `berthingto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`id`, `cargo`, `vesselname`, `shipper`, `dischargecountry`, `berthingfrom`, `berthingto`) VALUES
(1, 'Cargo 1', 'Vessel 2', 'Shipper 1', 'INDIA', '2018-09-10', '2018-09-11');

-- --------------------------------------------------------

--
-- Table structure for table `shipper`
--

CREATE TABLE `shipper` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shipper`
--

INSERT INTO `shipper` (`id`, `name`) VALUES
(1, 'Shipper 1');

-- --------------------------------------------------------

--
-- Table structure for table `stowage`
--

CREATE TABLE `stowage` (
  `id` int(11) NOT NULL,
  `ports` varchar(255) NOT NULL,
  `wheat` varchar(255) NOT NULL,
  `lupins` varchar(255) NOT NULL,
  `barley` varchar(255) NOT NULL,
  `canola` varchar(255) NOT NULL,
  `oats` varchar(255) NOT NULL,
  `malt` varchar(255) NOT NULL,
  `chickpeas` varchar(255) NOT NULL,
  `beans` varchar(255) NOT NULL,
  `letins` varchar(255) NOT NULL,
  `corn` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stowage`
--

INSERT INTO `stowage` (`id`, `ports`, `wheat`, `lupins`, `barley`, `canola`, `oats`, `malt`, `chickpeas`, `beans`, `letins`, `corn`) VALUES
(1, 'test', '6.98', '7', '77', '8674', '77 - 88', '1.25 - 1.37', '746', '724', '74', '7474'),
(2, 'test1', '', '', '77', '', '78 - 88', '1.25 - 1.38', '746', '724', '', ''),
(3, 'test2', '6.98', '7', '77', '8674', '', '', '', '', '74', ''),
(4, 'test3', '', '', '77', '', '80 - 88', '', '', '', '', '7474'),
(5, 'test4', '', '7', '77', '8674', '', '1.25 - 1.41', '746', '724', '74', ''),
(6, 'test5', '6.98', '', '', '8674', '82 - 88', '', '', '724', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `termminal`
--

CREATE TABLE `termminal` (
  `id` int(11) NOT NULL,
  `portid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `termminal`
--

INSERT INTO `termminal` (`id`, `portid`, `name`) VALUES
(2, 1, 'Terminal Onee');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `role` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `gender` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `port` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `role`, `name`, `address`, `gender`, `age`, `email`, `password`, `port`, `status`) VALUES
(1, 'Admin', 'Jhon', '', 'Male', '40', 'admin@gmail.com', 'admin1234', '', 0),
(4, 'User', 'Navojit', 'Kolkata', 'Male', '32', 'navojit@gmail.com', '123456', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ytd_record`
--

CREATE TABLE `ytd_record` (
  `id` int(11) NOT NULL,
  `load_port` varchar(255) NOT NULL,
  `load_year` varchar(255) NOT NULL,
  `jan_date` varchar(255) NOT NULL,
  `feb_date` varchar(255) NOT NULL,
  `mar_date` varchar(255) NOT NULL,
  `apr_date` varchar(255) NOT NULL,
  `may_date` varchar(255) NOT NULL,
  `jun_date` varchar(255) NOT NULL,
  `jul_date` varchar(255) NOT NULL,
  `aug_date` varchar(255) NOT NULL,
  `sep_date` varchar(255) NOT NULL,
  `oct_date` varchar(255) NOT NULL,
  `nov_date` varchar(255) NOT NULL,
  `dec_date` varchar(255) NOT NULL,
  `grand` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ytd_record`
--

INSERT INTO `ytd_record` (`id`, `load_port`, `load_year`, `jan_date`, `feb_date`, `mar_date`, `apr_date`, `may_date`, `jun_date`, `jul_date`, `aug_date`, `sep_date`, `oct_date`, `nov_date`, `dec_date`, `grand`) VALUES
(1, 'test', '2018', '100', '100', '100', '100', '100', '100', '100', '100', '100', '100', '400', '100', '1500'),
(2, 'testing', '2018', '100', '100', '100', '100', '100', '100', '100', '100', '100', '100', '100', '100', '1200'),
(3, 'testing', '2017', '100', '100', '100', '100', '100', '100', '100', '100', '100', '700', '100', '100', '1800');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cargo`
--
ALTER TABLE `cargo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dischargecountry`
--
ALTER TABLE `dischargecountry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dischargeport`
--
ALTER TABLE `dischargeport`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `port`
--
ALTER TABLE `port`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `port_cost`
--
ALTER TABLE `port_cost`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `province`
--
ALTER TABLE `province`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `record`
--
ALTER TABLE `record`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipper`
--
ALTER TABLE `shipper`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stowage`
--
ALTER TABLE `stowage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `termminal`
--
ALTER TABLE `termminal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ytd_record`
--
ALTER TABLE `ytd_record`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cargo`
--
ALTER TABLE `cargo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `dischargecountry`
--
ALTER TABLE `dischargecountry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dischargeport`
--
ALTER TABLE `dischargeport`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `port`
--
ALTER TABLE `port`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `port_cost`
--
ALTER TABLE `port_cost`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `province`
--
ALTER TABLE `province`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `record`
--
ALTER TABLE `record`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=783;

--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shipper`
--
ALTER TABLE `shipper`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `stowage`
--
ALTER TABLE `stowage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `termminal`
--
ALTER TABLE `termminal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ytd_record`
--
ALTER TABLE `ytd_record`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
