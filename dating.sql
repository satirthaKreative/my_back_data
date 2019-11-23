-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2019 at 04:20 PM
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
-- Database: `dating`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(55) NOT NULL,
  `admin_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `type` int(55) NOT NULL DEFAULT '0',
  `status` int(55) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `password`, `type`, `status`) VALUES
(1, 'admin', 'password', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `cityID` mediumint(6) NOT NULL DEFAULT '0',
  `cityName` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shortCity` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regionID` smallint(8) DEFAULT NULL,
  `countryID` smallint(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`cityID`, `cityName`, `shortCity`, `regionID`, `countryID`) VALUES
(1, 'Abbeville', 'Abbeville', 1, 1),
(2999, 'Likely', 'Likely', 5, 1),
(3000, 'Lily Gap', 'LilyGap', 5, 1),
(3001, 'Lincoln', 'Lincoln', 5, 1),
(3002, 'Lincoln Village', 'LincolnVillage', 5, 1),
(3003, 'Linda', 'Linda', 5, 1),
(3004, 'Linden', 'Linden', 5, 1),
(3005, 'Lindsay', 'Lindsay', 5, 1),
(3006, 'Littlerock', 'Littlerock', 5, 1),
(3007, 'Live Oak', 'LiveOak', 5, 1),
(3008, 'Livermore', 'Livermore', 5, 1),
(3009, 'Livingston', 'Livingston', 5, 1),
(3010, 'Loch Lomond', 'LochLomond', 5, 1),
(3011, 'Lockeford', 'Lockeford', 5, 1),
(3012, 'Lockwood Valley', 'LockwoodValley', 5, 1),
(3013, 'Lodgepole', 'Lodgepole', 5, 1),
(3014, 'Lodi', 'Lodi', 5, 1),
(3015, 'Lodoga', 'Lodoga', 5, 1),
(3016, 'Loleta', 'Loleta', 5, 1),
(3017, 'Loma Linda', 'LomaLinda', 5, 1),
(3018, 'Loma Rica', 'LomaRica', 5, 1),
(3019, 'Lompoc', 'Lompoc', 5, 1),
(3020, 'Lone Pine', 'LonePine', 5, 1),
(3021, 'Long Barn', 'LongBarn', 5, 1),
(3022, 'Long Beach', 'LongBeach', 5, 1),
(3023, 'Lookout', 'Lookout', 5, 1),
(3024, 'Lookout Peak', 'LookoutPeak', 5, 1),
(3025, 'Loomis', 'Loomis', 5, 1),
(3026, 'Los Alamitos', 'LosAlamitos', 5, 1),
(3027, 'Los Altos', 'LosAltos', 5, 1),
(3028, 'Los Altos Hills', 'LosAltosHills', 5, 1),
(3029, 'Los Angeles', 'LosAngeles', 5, 1),
(3030, 'Los Banos', 'LosBanos', 5, 1),
(3031, 'Los Gatos', 'LosGatos', 5, 1),
(3032, 'Los Molinos', 'LosMolinos', 5, 1),
(3033, 'Los Serranos', 'LosSerranos', 5, 1),
(3034, 'Lost Hills', 'LostHills', 5, 1),
(3035, 'Lost Horse-Keys Village', 'LostHorse-KeysVillage', 5, 1),
(3036, 'Lotus', 'Lotus', 5, 1),
(3037, 'Lovelock', 'Lovelock', 5, 1),
(3038, 'Lower Lake', 'LowerLake', 5, 1),
(3039, 'Loyalton', 'Loyalton', 5, 1),
(3040, 'Loyola', 'Loyola', 5, 1),
(3041, 'Lucas Valley-Marinwood', 'LucasValley-Marinwood', 5, 1),
(3042, 'Lucerne', 'Lucerne', 5, 1),
(3043, 'Ludlow', 'Ludlow', 5, 1),
(3044, 'Luther Pass', 'LutherPass', 5, 1),
(3045, 'Lynwood', 'Lynwood', 5, 1),
(3046, 'Lyonsville', 'Lyonsville', 5, 1),
(3047, 'Macdoel', 'Macdoel', 5, 1),
(3048, 'Madeline', 'Madeline', 5, 1),
(3049, 'Madera', 'Madera', 5, 1),
(3050, 'Madison', 'Madison', 5, 1),
(3058, 'Manton', 'Manton', 5, 1),
(3059, 'Manzanita Lake', 'ManzanitaLake', 5, 1),
(3060, 'Maple Creek', 'MapleCreek', 5, 1),
(3061, 'March Afb', 'MarchAfb', 5, 1),
(3062, 'Marina', 'Marina', 5, 1),
(3063, 'Marina Del Rey', 'MarinaDelRey', 5, 1),
(3064, 'Mariposa', 'Mariposa', 5, 1),
(3065, 'Markleeville', 'Markleeville', 5, 1),
(3066, 'Martinez', 'Martinez', 5, 1),
(3067, 'Marysville', 'Marysville', 5, 1),
(3068, 'Mather Afb', 'MatherAfb', 5, 1),
(3069, 'Maxwell', 'Maxwell', 5, 1),
(40033, 'Yoder', 'Yoder', 51, 1),
(40034, 'Acme', 'Acme', 52, 2),
(40395, 'Sointula', 'Sointula', 53, 2),
(40396, 'Sooke', 'Sooke', 53, 2),
(40397, 'Sorrento', 'Sorrento', 53, 2),
(40398, 'Squamish', 'Squamish', 53, 2),
(40399, 'Stephen', 'Stephen', 53, 2),
(40400, 'Stewart', 'Stewart', 53, 2),
(40401, 'Sturdies Bay', 'SturdiesBay', 53, 2),
(40402, 'Summerland', 'Summerland', 53, 2),
(40403, 'Surrey', 'Surrey', 53, 2),
(40404, 'Tahsis', 'Tahsis', 53, 2),
(40405, 'Tappen', 'Tappen', 53, 2),
(40406, 'Taylor', 'Taylor', 53, 2),
(40407, 'Telegraph Creek', 'TelegraphCreek', 53, 2),
(40408, 'Terrace', 'Terrace', 53, 2),
(40409, 'Tlell', 'Tlell', 53, 2),
(40410, 'Tofino', 'Tofino', 53, 2),
(40411, 'Trail', 'Trail', 53, 2),
(40412, 'Tsawwassen', 'Tsawwassen', 53, 2),
(40413, 'Ucluelet', 'Ucluelet', 53, 2),
(40414, 'Union Bay', 'UnionBay', 53, 2),
(40415, 'Valemount', 'Valemount', 53, 2),
(40416, 'Vancouver', 'Vancouver', 53, 2),
(40417, 'Vanderhoof', 'Vanderhoof', 53, 2),
(40418, 'Vernon', 'Vernon', 53, 2),
(40419, 'Victoria', 'Victoria', 53, 2),
(45800, '*Vienna', 'Vienna', NULL, 46),
(45801, 'Linz-Wels-Steyr', 'Linz-Wels-Steyr', NULL, 46),
(45802, 'Graz', 'Graz', NULL, 46),
(45803, 'Linz', 'Linz', NULL, 46),
(45804, 'Salzburg', 'Salzburg', NULL, 46),
(45805, 'Innsbruck', 'Innsbruck', NULL, 46),
(45806, 'Klagenfurt am Wörthersee', 'KlagenfurtamWorthersee', NULL, 46),
(45807, 'Villach', 'Villach', NULL, 46),
(45808, 'Wels', 'Wels', NULL, 46),
(45809, 'Sankt Pölten', 'SanktPolten', NULL, 46),
(45810, 'Dornbirn', 'Dornbirn', NULL, 46),
(45811, 'Steyr', 'Steyr', NULL, 46),
(45812, 'Wiener Neustadt', 'WienerNeustadt', NULL, 46),
(45813, 'Feldkirch', 'Feldkirch', NULL, 46),
(45814, 'Bregenz', 'Bregenz', NULL, 46),
(45815, 'Wolfsberg', 'Wolfsberg', NULL, 46),
(45816, 'Baden', 'Baden', NULL, 46),
(45817, 'Klosterneuburg', 'Klosterneuburg', NULL, 46),
(45818, 'Leoben', 'Leoben', NULL, 46),
(45819, 'Weinzierl bei Krems', 'WeinzierlbeiKrems', NULL, 46),
(45820, 'Traun', 'Traun', NULL, 46),
(45821, 'Krems an der Donau', 'KremsanderDonau', NULL, 46),
(45822, 'Amstetten', 'Amstetten', NULL, 46),
(45823, 'Leonding', 'Leonding', NULL, 46),
(45824, 'Kapfenberg', 'Kapfenberg', NULL, 46),
(45825, 'Mödling', 'Modling', NULL, 46),
(45826, 'Lustenau', 'Lustenau', NULL, 46),
(45827, 'Hallein', 'Hallein', NULL, 46),
(45828, 'Braunau am Inn', 'BraunauamInn', NULL, 46),
(45829, 'Spittal an der Drau', 'SpittalanderDrau', NULL, 46),
(45830, 'Traiskirchen', 'Traiskirchen', NULL, 46),
(45831, 'Saalfelden am Steinernen Meer', 'SaalfeldenamSteinernenMeer', NULL, 46),
(45832, 'Kufstein', 'Kufstein', NULL, 46),
(45833, 'Schwechat', 'Schwechat', NULL, 46),
(45834, 'Ternitz', 'Ternitz', NULL, 46),
(45835, 'Ansfelden', 'Ansfelden', NULL, 46),
(45836, 'Stockerau', 'Stockerau', NULL, 46),
(45837, 'Feldkirchen in Kärnten', 'FeldkircheninKarnten', NULL, 46),
(45838, 'Bad Ischl', 'BadIschl', NULL, 46),
(45839, 'Tulln', 'Tulln', NULL, 46),
(53380, '*Warsaw', 'Warsaw', NULL, 82),
(53381, 'Łódź', 'Lodz', NULL, 82),
(53382, 'Kraków', 'Krakow', NULL, 82),
(53383, 'Wrocław', 'Wroclaw', NULL, 82),
(53384, 'Poznań', 'Poznan', NULL, 82),
(53385, 'Gdańsk', 'Gdansk', NULL, 82),
(53386, 'Szczecin', 'Szczecin', NULL, 82),
(53387, 'Bydgoszcz', 'Bydgoszcz', NULL, 82),
(53388, 'Lublin', 'Lublin', NULL, 82),
(53389, 'Katowice', 'Katowice', NULL, 82),
(53390, 'Białystok', 'Bialystok', NULL, 82),
(53391, 'Gdynia', 'Gdynia', NULL, 82),
(53392, 'Częstochowa', 'Czestochowa', NULL, 82),
(53393, 'Sosnowiec', 'Sosnowiec', NULL, 82),
(53394, 'Radom', 'Radom', NULL, 82),
(53395, 'Toruń', 'Torun', NULL, 82),
(53396, 'Kielce', 'Kielce', NULL, 82),
(53397, 'Gliwice', 'Gliwice', NULL, 82),
(53398, 'Zabrze', 'Zabrze', NULL, 82),
(53399, 'Bytom', 'Bytom', NULL, 82),
(53400, 'Bielsko-Biała', 'Bielsko-Biala', NULL, 82),
(53401, 'Olsztyn', 'Olsztyn', NULL, 82),
(53402, 'Rzeszów', 'Rzeszow', NULL, 82),
(53403, 'Ruda Śląska', 'RudaSlaska', NULL, 82),
(53404, 'Rybnik', 'Rybnik', NULL, 82),
(53405, 'Dąbrowa Górnicza', 'DabrowaGornicza', NULL, 82),
(53406, 'Tychy', 'Tychy', NULL, 82),
(53407, 'Opole', 'Opole', NULL, 82),
(53408, 'Elblag', 'Elblag', NULL, 82),
(60158, 'Laughton', 'Laughton', 65, 95),
(60159, 'Leamington', 'Leamington', 65, 95),
(60160, 'Leeds', 'Leeds', 65, 95),
(60161, 'Leek', 'Leek', 65, 95),
(60162, 'Leicester', 'Leicester', 65, 95),
(60163, 'Leigh', 'Leigh', 65, 95),
(60164, 'Letchworth', 'Letchworth', 65, 95),
(60165, 'Lewes', 'Lewes', 65, 95),
(60166, 'Leyland', 'Leyland', 65, 95),
(60167, 'Lichfield', 'Lichfield', 65, 95),
(60168, 'Lincoln', 'Lincoln', 65, 95),
(60169, 'Little Chalfont', 'LittleChalfont', 65, 95),
(60170, 'Liverpool', 'Liverpool', 65, 95),
(60171, 'London', 'London', 65, 95),
(60172, 'Loughborough', 'Loughborough', 65, 95),
(60173, 'Louth', 'Louth', 65, 95),
(60174, 'Lowestoft', 'Lowestoft', 65, 95),
(60175, 'Luton', 'Luton', 65, 95),
(60292, 'Kabul', 'Kabul', NULL, 97),
(60293, 'Kandahār', 'Kandahar', NULL, 97),
(60294, 'Mazār-e Sharīf', 'Mazar-eSharif', NULL, 97),
(60295, 'Herāt', 'Herat', NULL, 97),
(60296, 'Jalālābād', 'Jalalabad', NULL, 97),
(60297, 'Kunduz', 'Kunduz', NULL, 97),
(60298, 'Ghazni', 'Ghazni', NULL, 97),
(60299, 'Balkh', 'Balkh', NULL, 97),
(60300, 'Baghlān', 'Baghlan', NULL, 97),
(60301, 'Gardēz', 'Gardez', NULL, 97),
(64999, '*Tokyo', 'Tokyo', NULL, 111),
(65000, 'Yokohama-shi', 'Yokohama-shi', NULL, 111),
(65001, 'Ōsaka-shi', 'Osaka-shi', NULL, 111),
(65002, 'Nagoya-shi', 'Nagoya-shi', NULL, 111),
(65003, 'Sapporo-shi', 'Sapporo-shi', NULL, 111),
(65004, 'Kōbe-shi', 'Kobe-shi', NULL, 111),
(65005, 'Kyoto', 'Kyoto', NULL, 111),
(65006, 'Fukuoka-shi', 'Fukuoka-shi', NULL, 111),
(65007, 'Kawasaki', 'Kawasaki', NULL, 111),
(65008, 'Saitama', 'Saitama', NULL, 111);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `comment` text,
  `senderid` int(11) NOT NULL DEFAULT '0',
  `receiverid` int(11) NOT NULL DEFAULT '0',
  `date` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `comment`, `senderid`, `receiverid`, `date`) VALUES
(1, 'good morning every one ...', 33, 18, '2018-12-15 07:08:54pm'),
(2, 'tets', 1, 11, '2019-08-13 10:24:25pm');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `country_code` varchar(2) NOT NULL DEFAULT '',
  `country_name` varchar(100) NOT NULL DEFAULT '',
  `flag` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_code`, `country_name`, `flag`) VALUES
(1, 'AF', 'Afghanistan', 'AF-32.png'),
(2, 'AX', 'Åland Islands', 'AX-32.png'),
(3, 'AL', 'Albania', 'AL-32.png'),
(4, 'DZ', 'Algeria', 'DZ-32.png'),
(5, 'AS', 'American Samoa', 'AS-32.png'),
(6, 'AD', 'Andorra', 'AD-32.png'),
(7, 'AO', 'Angola', 'AO-32.png'),
(8, 'AI', 'Anguilla', 'AI-32.png'),
(9, 'AQ', 'Antarctica', 'AQ-32.png'),
(10, 'AG', 'Antigua and Barbuda', 'AG-32.png'),
(11, 'AR', 'Argentina', 'AR-32.png'),
(12, 'AM', 'Armenia', 'AM-32.png'),
(13, 'AW', 'Aruba', 'AW-32.png'),
(14, 'AU', 'Australia', 'AU-32.png'),
(15, 'AT', 'Austria', 'AT-32.png'),
(16, 'AZ', 'Azerbaijan', 'AZ-32.png'),
(17, 'BS', 'Bahamas', 'BS-32.png'),
(18, 'BH', 'Bahrain', 'BH-32.png'),
(19, 'BD', 'Bangladesh', 'BD-32.png'),
(20, 'BB', 'Barbados', 'BB-32.png'),
(21, 'BY', 'Belarus', 'BY-32.png'),
(22, 'BE', 'Belgium', 'BE-32.png'),
(23, 'BZ', 'Belize', 'BZ-32.png'),
(24, 'BJ', 'Benin', 'BJ-32.png'),
(25, 'BM', 'Bermuda', 'BM-32.png'),
(26, 'BT', 'Bhutan', 'BT-32.png'),
(27, 'BO', 'Bolivia', 'BO-32.png'),
(28, 'BQ', 'Bonaire, Saint Eustatius And Saba', 'BQ-32.png'),
(29, 'BA', 'Bosnia and Herzegovina', 'BA-32.png'),
(30, 'BW', 'Botswana', 'BW-32.png'),
(31, 'BV', 'Bouvet Island', 'BV-32.png'),
(32, 'BR', 'Brazil', 'BR-32.png'),
(33, 'IO', 'British Indian Ocean Territory', 'IO-32.png'),
(34, 'BN', 'Brunei', 'BN-32.png'),
(35, 'BG', 'Bulgaria', 'BG-32.png'),
(36, 'BF', 'Burkina Faso', 'BF-32.png'),
(37, 'BI', 'Burundi', 'BI-32.png'),
(38, 'CV', 'Cabo Verde', 'CV-32.png'),
(39, 'KH', 'Cambodia', 'KH-32.png'),
(40, 'CM', 'Cameroon', 'CM-32.png'),
(41, 'CA', 'Canada', 'CA-32.png'),
(42, 'KY', 'Cayman Islands', 'KY-32.png'),
(43, 'CF', 'Central African Republic', 'CF-32.png'),
(44, 'TD', 'Chad', 'TD-32.png'),
(45, 'CL', 'Chile', 'CL-32.png'),
(46, 'CN', 'China', 'CN-32.png'),
(47, 'CX', 'Christmas Island', 'CX-32.png'),
(48, 'CC', 'Cocos (Keeling) Islands', 'CC-32.png'),
(49, 'CO', 'Colombia', 'CO-32.png'),
(50, 'KM', 'Comoros', 'KM-32.png'),
(51, 'CG', 'Congo', 'CG-32.png'),
(52, 'CK', 'Cook Islands', 'CK-32.png'),
(53, 'CR', 'Costa Rica', 'CR-32.png'),
(54, 'CI', 'Côte d\'Ivoire', 'CI-32.png'),
(55, 'HR', 'Croatia', 'HR-32.png'),
(56, 'CU', 'Cuba', 'CU-32.png'),
(57, 'CW', 'Curaçao', 'CW-32.png'),
(58, 'CY', 'Cyprus', 'CY-32.png'),
(59, 'CZ', 'Czechia', 'CZ-32.png'),
(60, 'CD', 'Democratic Republic of the Congo', 'CD-32.png'),
(61, 'DK', 'Denmark', 'DK-32.png'),
(62, 'DJ', 'Djibouti', 'DJ-32.png'),
(63, 'DM', 'Dominica', 'DM-32.png'),
(64, 'DO', 'Dominican Republic', 'DO-32.png'),
(65, 'EC', 'Ecuador', 'EC-32.png'),
(66, 'EG', 'Egypt', 'EG-32.png'),
(67, 'SV', 'El Salvador', 'SV-32.png'),
(68, 'GQ', 'Equatorial Guinea', 'GQ-32.png'),
(69, 'ER', 'Eritrea', 'ER-32.png'),
(70, 'EE', 'Estonia', 'EE-32.png'),
(71, 'ET', 'Ethiopia', 'ET-32.png'),
(72, 'EU', 'European Union', 'EU-32.png'),
(73, 'FK', 'Falkland Islands (Malvinas)', 'FK-32.png'),
(74, 'FO', 'Faroe Islands', 'FO-32.png'),
(75, 'FJ', 'Fiji', 'FJ-32.png'),
(76, 'FI', 'Finland', 'FI-32.png'),
(77, 'FR', 'France', 'FR-32.png'),
(78, 'GF', 'French Guiana', 'GF-32.png'),
(79, 'PF', 'French Polynesia', 'PF-32.png'),
(80, 'TF', 'French Southern and Antarctic Lands', 'TF-32.png'),
(81, 'GA', 'Gabon', 'GA-32.png'),
(82, 'GE', 'Georgia', 'GE-32.png'),
(83, 'DE', 'Germany', 'DE-32.png'),
(84, 'GH', 'Ghana', 'GH-32.png'),
(85, 'GI', 'Gibraltar', 'GI-32.png'),
(86, 'GR', 'Greece', 'GR-32.png'),
(87, 'GL', 'Greenland', 'GL-32.png'),
(88, 'GD', 'Grenada', 'GD-32.png'),
(89, 'GP', 'Guadeloupe', 'GP-32.png'),
(90, 'GU', 'Guam', 'GU-32.png'),
(91, 'GT', 'Guatemala', 'GT-32.png'),
(92, 'GG', 'Guernsey', 'GG-32.png'),
(93, 'GN', 'Guinea', 'GN-32.png'),
(94, 'GW', 'Guinea-Bissau', 'GW-32.png'),
(95, 'GY', 'Guyana', 'GY-32.png'),
(96, 'HT', 'Haiti', 'HT-32.png'),
(97, 'HM', 'Heard Island And McDonald Islands', 'HM-32.png'),
(98, 'HN', 'Honduras', 'HN-32.png'),
(99, 'HK', 'Hong Kong', 'HK-32.png'),
(100, 'HU', 'Hungary', 'HU-32.png'),
(101, 'IS', 'Iceland', 'IS-32.png'),
(102, 'IN', 'India', 'IN-32.png'),
(103, 'ID', 'Indonesia', 'ID-32.png'),
(104, 'IR', 'Iran', 'IR-32.png'),
(105, 'IQ', 'Iraq', 'IQ-32.png'),
(106, 'IE', 'Ireland', 'IE-32.png'),
(107, 'IM', 'Isle of Man', 'IM-32.png'),
(108, 'IL', 'Israel', 'IL-32.png'),
(109, 'IT', 'Italy', 'IT-32.png'),
(110, 'JM', 'Jamaica', 'JM-32.png'),
(111, 'JP', 'Japan', 'JP-32.png'),
(112, 'JE', 'Jersey', 'JE-32.png'),
(113, 'JO', 'Jordan', 'JO-32.png'),
(114, 'KZ', 'Kazakhstan', 'KZ-32.png'),
(115, 'KE', 'Kenya', 'KE-32.png'),
(116, 'KI', 'Kiribati', 'KI-32.png'),
(117, 'KW', 'Kuwait', 'KW-32.png'),
(118, 'KG', 'Kyrgyzstan', 'KG-32.png'),
(119, 'LA', 'Laos', 'LA-32.png'),
(120, 'LV', 'Latvia', 'LV-32.png'),
(121, 'LB', 'Lebanon', 'LB-32.png'),
(122, 'LS', 'Lesotho', 'LS-32.png'),
(123, 'LR', 'Liberia', 'LR-32.png'),
(124, 'LY', 'Libya', 'LY-32.png'),
(125, 'LI', 'Liechtenstein', 'LI-32.png'),
(126, 'LT', 'Lithuania', 'LT-32.png'),
(127, 'LU', 'Luxembourg', 'LU-32.png'),
(128, 'MO', 'Macao', 'MO-32.png'),
(129, 'MK', 'Macedonia', 'MK-32.png'),
(130, 'MG', 'Madagascar', 'MG-32.png'),
(131, 'MW', 'Malawi', 'MW-32.png'),
(132, 'MY', 'Malaysia', 'MY-32.png'),
(133, 'MV', 'Maldives', 'MV-32.png'),
(134, 'ML', 'Mali', 'ML-32.png'),
(135, 'MT', 'Malta', 'MT-32.png'),
(136, 'MH', 'Marshall Islands', 'MH-32.png'),
(137, 'MQ', 'Martinique', 'MQ-32.png'),
(138, 'MR', 'Mauritania', 'MR-32.png'),
(139, 'MU', 'Mauritius', 'MU-32.png'),
(140, 'YT', 'Mayotte', 'YT-32.png'),
(141, 'MX', 'Mexico', 'MX-32.png'),
(142, 'FM', 'Micronesia', 'FM-32.png'),
(143, 'MD', 'Moldova', 'MD-32.png'),
(144, 'MC', 'Monaco', 'MC-32.png'),
(145, 'MN', 'Mongolia', 'MN-32.png'),
(146, 'ME', 'Montenegro', 'ME-32.png'),
(147, 'MS', 'Montserrat', 'MS-32.png'),
(148, 'MA', 'Morocco', 'MA-32.png'),
(149, 'MZ', 'Mozambique', 'MZ-32.png'),
(150, 'MM', 'Myanmar', 'MM-32.png'),
(151, 'NA', 'Namibia', 'NA-32.png'),
(152, 'NR', 'Nauru', 'NR-32.png'),
(153, 'NP', 'Nepal', 'NP-32.png'),
(154, 'NL', 'Netherlands', 'NL-32.png'),
(155, 'NC', 'New Caledonia', 'NC-32.png'),
(156, 'NZ', 'New Zealand', 'NZ-32.png'),
(157, 'NI', 'Nicaragua', 'NI-32.png'),
(158, 'NE', 'Niger', 'NE-32.png'),
(159, 'NG', 'Nigeria', 'NG-32.png'),
(160, 'NU', 'Niue', 'NU-32.png'),
(161, 'NF', 'Norfolk Island', 'NF-32.png'),
(162, 'KP', 'North Korea', 'KP-32.png'),
(163, 'MP', 'Northern Mariana Islands', 'MP-32.png'),
(164, 'NO', 'Norway', 'NO-32.png'),
(165, 'OM', 'Oman', 'OM-32.png'),
(166, 'PK', 'Pakistan', 'PK-32.png'),
(167, 'PW', 'Palau', 'PW-32.png'),
(168, 'PS', 'Palestinian Territory, Occupied', 'PS-32.png'),
(169, 'PA', 'Panama', 'PA-32.png'),
(170, 'PG', 'Papua New Guinea', 'PG-32.png'),
(171, 'PY', 'Paraguay', 'PY-32.png'),
(172, 'PE', 'Peru', 'PE-32.png'),
(173, 'PH', 'Philippines', 'PH-32.png'),
(174, 'PN', 'Pitcairn Islands', 'PN-32.png'),
(175, 'PL', 'Poland', 'PL-32.png'),
(176, 'PT', 'Portugal', 'PT-32.png'),
(177, 'PR', 'Puerto Rico', 'PR-32.png'),
(178, 'QA', 'Qatar', 'QA-32.png'),
(179, 'RE', 'Réunion', 'RE-32.png'),
(180, 'RO', 'Romania', 'RO-32.png'),
(181, 'RU', 'Russia', 'RU-32.png'),
(182, 'RW', 'Rwanda', 'RW-32.png'),
(183, 'BL', 'Saint Barthélemy', 'BL-32.png'),
(184, 'SH', 'Saint Helena, Ascension and Tristan da Cunha', 'SH-32.png'),
(185, 'KN', 'Saint Kitts and Nevis', 'KN-32.png'),
(186, 'LC', 'Saint Lucia', 'LC-32.png'),
(187, 'MF', 'Saint Martin', 'MF-32.png'),
(188, 'PM', 'Saint Pierre and Miquelon', 'PM-32.png'),
(189, 'VC', 'Saint Vincent and the Grenadines', 'VC-32.png'),
(190, 'WS', 'Samoa', 'WS-32.png'),
(191, 'SM', 'San Marino', 'SM-32.png'),
(192, 'ST', 'Sao Tome and Principe', 'ST-32.png'),
(193, 'SA', 'Saudi Arabia', 'SA-32.png'),
(194, 'SN', 'Senegal', 'SN-32.png'),
(195, 'RS', 'Serbia', 'RS-32.png'),
(196, 'SC', 'Seychelles', 'SC-32.png'),
(197, 'SL', 'Sierra Leone', 'SL-32.png'),
(198, 'SG', 'Singapore', 'SG-32.png'),
(199, 'SX', 'Sint Maarten', 'SX-32.png'),
(200, 'SK', 'Slovakia', 'SK-32.png'),
(201, 'SI', 'Slovenia', 'SI-32.png'),
(202, 'SB', 'Solomon Islands', 'SB-32.png'),
(203, 'SO', 'Somalia', 'SO-32.png'),
(204, 'ZA', 'South Africa', 'ZA-32.png'),
(205, 'GS', 'South Georgia and the South Sandwich Islands', 'GS-32.png'),
(206, 'KR', 'South Korea', 'KR-32.png'),
(207, 'SS', 'South Sudan', 'SS-32.png'),
(208, 'ES', 'Spain', 'ES-32.png'),
(209, 'LK', 'Sri Lanka', 'LK-32.png'),
(210, 'SD', 'Sudan', 'SD-32.png'),
(211, 'SR', 'Suriname', 'SR-32.png'),
(212, 'SJ', 'Svalbard and Jan Mayen', 'SJ-32.png'),
(213, 'SZ', 'Swaziland', 'SZ-32.png'),
(214, 'SE', 'Sweden', 'SE-32.png'),
(215, 'CH', 'Switzerland', 'CH-32.png'),
(216, 'SY', 'Syria', 'SY-32.png'),
(217, 'TW', 'Taiwan', 'TW-32.png'),
(218, 'TJ', 'Tajikistan', 'TJ-32.png'),
(219, 'TZ', 'Tanzania', 'TZ-32.png'),
(220, 'TH', 'Thailand', 'TH-32.png'),
(221, 'GM', 'The Gambia', 'GM-32.png'),
(222, 'TL', 'Timor-Leste', 'TL-32.png'),
(223, 'TG', 'Togo', 'TG-32.png'),
(224, 'TK', 'Tokelau', 'TK-32.png'),
(225, 'TO', 'Tonga', 'TO-32.png'),
(226, 'TT', 'Trinidad and Tobago', 'TT-32.png'),
(227, 'TN', 'Tunisia', 'TN-32.png'),
(228, 'TR', 'Turkey', 'TR-32.png'),
(229, 'TM', 'Turkmenistan', 'TM-32.png'),
(230, 'TC', 'Turks and Caicos Islands', 'TC-32.png'),
(231, 'TV', 'Tuvalu', 'TV-32.png'),
(232, 'UG', 'Uganda', 'UG-32.png'),
(233, 'UA', 'Ukraine', 'UA-32.png'),
(234, 'AE', 'United Arab Emirates', 'AE-32.png'),
(235, 'GB', 'United Kingdom', 'GB-32.png'),
(236, 'US', 'United States', 'US-32.png'),
(237, 'UM', 'United States Minor Outlying Islands', 'UM-32.png'),
(238, 'VI', 'United States Virgin Islands', 'VI-32.png'),
(239, 'UY', 'Uruguay', 'UY-32.png'),
(240, 'UZ', 'Uzbekistan', 'UZ-32.png'),
(241, 'VU', 'Vanuatu', 'VU-32.png'),
(242, 'VA', 'Vatican City State', 'VA-32.png'),
(243, 'VE', 'Venezuela', 'VE-32.png'),
(244, 'VN', 'Viet Nam', 'VN-32.png'),
(245, 'VG', 'Virgin Islands', 'VG-32.png'),
(246, 'WF', 'Wallis and Futuna', 'WF-32.png'),
(247, 'EH', 'Western Sahara', 'EH-32.png'),
(248, 'YE', 'Yemen', 'YE-32.png'),
(249, 'ZM', 'Zambia', 'ZM-32.png'),
(250, 'ZW', 'Zimbabwe', 'ZW-32.png');

-- --------------------------------------------------------

--
-- Table structure for table `fabourite`
--

CREATE TABLE `fabourite` (
  `id` int(11) NOT NULL,
  `whofabourite` int(11) NOT NULL DEFAULT '0',
  `whomfab` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fabourite`
--

INSERT INTO `fabourite` (`id`, `whofabourite`, `whomfab`) VALUES
(1, 10, 1),
(2, 10, 21),
(3, 10, 21);

-- --------------------------------------------------------

--
-- Table structure for table `interest`
--

CREATE TABLE `interest` (
  `id` int(11) NOT NULL,
  `whointerest` int(11) NOT NULL DEFAULT '0',
  `interestuser` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `interest`
--

INSERT INTO `interest` (`id`, `whointerest`, `interestuser`) VALUES
(1, 10, 1),
(2, 30, 28),
(3, 27, 28),
(4, 10, 21),
(5, 12, 2),
(6, 12, 2),
(7, 33, 18);

-- --------------------------------------------------------

--
-- Table structure for table `membership`
--

CREATE TABLE `membership` (
  `id` int(11) NOT NULL,
  `usid` int(11) NOT NULL,
  `startdate` varchar(255) DEFAULT NULL,
  `endate` varchar(255) DEFAULT NULL,
  `money` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `membership`
--

INSERT INTO `membership` (`id`, `usid`, `startdate`, `endate`, `money`, `status`) VALUES
(1, 0, '2018-06-13', '2018-07-13', '24.95', 1),
(2, 12, '2018-06-13', '2018-07-13', '24.95', 1);

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `sender` int(11) NOT NULL DEFAULT '0',
  `message` text CHARACTER SET latin1,
  `images` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `receiver` int(11) NOT NULL DEFAULT '0',
  `insertdate` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `statusn` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `sender`, `message`, `images`, `receiver`, `insertdate`, `statusn`) VALUES
(1, 12, ' Hello Sweta how are you?', '', 13, '', 0),
(2, 15, 'hi', '', 13, '', 0),
(3, 15, 'hi', '', 13, '', 0),
(4, 15, 'hi', '', 6, '', 0),
(5, 15, 'Hi', '', 4, '', 0),
(6, 16, 'hello', '', 15, '', 0),
(7, 15, 'hiii', '', 11, '', 0),
(8, 15, 'hiii', '', 16, '', 0),
(9, 16, 'hiii', '', 15, '', 0),
(11, 12, 'Hello Nandini ji...', '', 16, '', 0),
(13, 12, 'hi amit', '', 10, '', 0),
(14, 11, 'hello', '', 10, '', 0),
(15, 10, 'hio', '', 11, '', 0),
(16, 10, 'zzz\r\n', '', 11, '', 0),
(17, 10, 'hiii\r\n\r\n\r\n', '', 11, '', 0),
(18, 12, 'hi sir\r\n', '', 4, '', 0),
(20, 12, 'hello \r\n', '', 10, '2018-05-01 02:59:14pm', 1),
(21, 12, 'hi...ðŸ‘', '', 1, '2018-05-16 11:39:27am', 0),
(22, 12, 'hiiðŸ˜Š', '', 2, '2018-05-17 12:04:28pm', 0),
(23, 12, 'hi', '', 13, '2018-05-17 12:10:17pm', 0),
(24, 12, 'ðŸ˜”ðŸ˜³â¤ï¸', '', 13, '2018-05-17 12:10:28pm', 0),
(25, 12, 'ðŸ˜³cfefvrðŸ˜‚gbr', '', 13, '2018-05-17 12:19:01pm', 0),
(26, 12, 'ðŸ˜‚ðŸ˜‚', '', 13, '2018-05-17 12:21:13pm', 0),
(27, 12, '', '', 13, '2018-05-17 01:32:05pm', 0),
(28, 12, '', '', 13, '2018-05-17 01:36:34pm', 0),
(29, 12, 'hiii', '', 13, '2018-05-17 01:41:43pm', 0),
(30, 12, 'hiii', '', 13, '2018-05-17 01:44:27pm', 0),
(31, 12, 'hello', '5afd6b52e81bfteam_member.jpg', 13, '2018-05-17 01:45:22pm', 0),
(32, 12, 'hello', '5afd6bdc22a31team_member.jpg', 13, '2018-05-17 01:47:40pm', 0),
(33, 12, 'hiiibfwgfiueih', '5afd7215807f4robert.jpg', 10, '2018-05-17 12:14:13pm', 1),
(34, 12, 'hiiðŸ‘', '5b002c20639141504804203096.jpg', 1, '2018-05-19 01:52:32pm', 0),
(38, 10, 'hey ! r uÂ  there ?', '', 12, '2018-05-21 08:09:29am', 0),
(39, 10, 'hiii', '', 13, '2018-05-25 07:11:56am', 0),
(40, 10, 'hii... sir...ðŸ‘', '', 6, '2018-05-25 07:28:30am', 0),
(41, 6, 'gii', '', 10, '2018-05-25 07:31:06am', 0),
(42, 10, 'sir..', '', 6, '2018-05-25 07:33:20am', 0),
(43, 10, 'Hello', '', 13, '2018-05-25 08:47:35am', 0),
(44, 10, 'hi\r\n', '', 20, '2018-05-26 12:55:16pm', 0),
(45, 10, 'hi\r\n', '', 20, '2018-05-26 12:58:04pm', 0),
(46, 10, 'hi\r\n', '', 20, '2018-05-26 12:59:33pm', 0),
(47, 10, 'hi...', '', 22, '2018-05-26 02:28:38pm', 0),
(48, 10, 'heloo', '', 22, '2018-05-26 02:28:43pm', 0),
(49, 22, 'hello sir! how are u???\r\n', '', 10, '2018-05-26 02:30:45pm', 0),
(50, 22, 'hello sir! how are u???\r\n', '', 10, '2018-05-26 02:34:53pm', 0),
(51, 22, 'hello sir! how are u???\r\n', '', 10, '2018-05-26 02:38:43pm', 0),
(52, 0, 'ihgiheiohgh', '', 4, '2018-05-26 04:27:08pm', 0),
(53, 10, '', '', 22, '2018-05-28 11:01:06am', 0),
(54, 10, '', '', 22, '2018-05-28 11:08:56am', 0),
(55, 10, '', '', 22, '2018-05-28 11:09:32am', 0),
(56, 10, 'hi', '', 22, '2018-05-28 11:09:48am', 0),
(57, 10, 'hlw', '', 22, '2018-05-28 11:13:38am', 0),
(58, 10, 'hll', '', 22, '2018-05-28 11:21:13am', 0),
(59, 10, '\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Consectetur aut, perferendis delectus eius ad neque nesciunt. Recusandae quae, sint illo corporis non dolor ipsum. Consequuntur necessitatibus reprehenderit, animi obcaecati dolorem.', '', 22, '2018-05-28 12:00:35pm', 0),
(60, 10, '', '24294249_1151687971632803_1848526194614470879_n.jpg', 13, '2018-05-28 01:57:51pm', 0),
(61, 10, '', '24294249_1151687971632803_1848526194614470879_n.jpg', 22, '2018-05-28 02:11:55pm', 0),
(62, 10, '', '', 2, '2018-05-31 09:36:51am', 0),
(63, 10, '', '', 2, '2018-05-31 09:40:57am', 0),
(64, 10, 'hii', '', 2, '2018-05-31 09:51:38am', 0),
(65, 10, 'hii', '', 2, '2018-05-31 09:52:27am', 0),
(66, 10, 'gfer3ytg', '', 2, '2018-05-31 09:53:35am', 0),
(67, 10, 'vfdhgbtnyrsjnytjmtÂ  er y4e5wyb4wbyn', '', 2, '2018-05-31 09:55:47am', 0),
(68, 10, 'hello brother\r\n', '', 2, '2018-05-31 10:50:14am', 0),
(69, 30, 'hello', '', 28, '2018-06-04 09:38:06am', 0),
(70, 30, 'ðŸ˜‚ðŸ˜‚ðŸ˜‚ðŸ˜‚', '', 28, '2018-06-04 09:40:53am', 0),
(71, 10, 'hello\r\n', '', 28, '2018-06-04 11:08:19am', 0),
(72, 10, NULL, 'best_hd-wallpaper-1280x960.jpg', 28, '2018-06-04 11:09:28am', 0),
(73, 12, 'hi how are uÂ ', '', 2, '2018-06-05 01:02:23pm', 0),
(74, 12, NULL, '5afd70c4bc4d5robert.jpg', 2, '2018-06-05 01:02:59pm', 0),
(75, 12, 'hi...', '', 6, '2018-06-05 01:24:39pm', 0),
(76, 12, '', '5b168f23a2ab65b168c3539fe65afd70c4bc4d5robert.jpg', 6, '2018-06-05 01:24:51pm', 0),
(77, 33, 'hiÂ \r\n', '', 18, '2018-12-15 07:04:43pm', 0),
(78, 18, 'hey hi..', '', 33, '2018-12-15 07:06:54pm', 0),
(79, 33, 'how are you\r\n?', '', 18, '2018-12-15 07:07:28pm', 0),
(80, 33, NULL, 'desk-banner.jpg', 18, '2018-12-15 07:07:58pm', 0),
(81, 1, 'ðŸ˜˜\r\n', '', 11, '2019-08-13 10:24:44pm', 0),
(82, 1, NULL, '585be1aa1600002400bdf2a6.jpeg', 11, '2019-08-13 10:25:16pm', 0),
(83, 1, 'hi.. how id the?\r\n', '', 11, '2019-08-13 10:26:16pm', 0);

-- --------------------------------------------------------

--
-- Table structure for table `note`
--

CREATE TABLE `note` (
  `id` int(11) NOT NULL,
  `myid` int(11) NOT NULL DEFAULT '0',
  `awayid` int(11) NOT NULL DEFAULT '0',
  `note` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `note`
--

INSERT INTO `note` (`id`, `myid`, `awayid`, `note`) VALUES
(1, 12, 14, 'hi.. good'),
(2, 10, 1, ''),
(3, 10, 1, ''),
(4, 10, 1, ''),
(5, 10, 1, ''),
(6, 10, 1, ''),
(7, 10, 1, ''),
(8, 10, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `profileoption`
--

CREATE TABLE `profileoption` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `mlf` varchar(255) NOT NULL,
  `mlm` varchar(255) NOT NULL,
  `flf` varchar(255) NOT NULL,
  `ladyboy` varchar(255) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `offline` varchar(255) NOT NULL,
  `lastvisitor` varchar(255) NOT NULL,
  `topinbox` varchar(255) NOT NULL,
  `membersince` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profileoption`
--

INSERT INTO `profileoption` (`id`, `userid`, `mlf`, `mlm`, `flf`, `ladyboy`, `comment`, `offline`, `lastvisitor`, `topinbox`, `membersince`) VALUES
(9, 12, 'allow', 'block', 'allow', 'allow', '', 'on', 'off', 'on', 'off'),
(10, 24, 'allow', 'block', 'block', 'block', '', 'on', 'off', '', 'off');

-- --------------------------------------------------------

--
-- Table structure for table `profile_image`
--

CREATE TABLE `profile_image` (
  `id` int(55) NOT NULL,
  `user_id` int(255) NOT NULL DEFAULT '0',
  `image` varchar(255) DEFAULT NULL,
  `status` int(55) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile_image`
--

INSERT INTO `profile_image` (`id`, `user_id`, `image`, `status`) VALUES
(20, 12, '59fdcefb0e0c9.jpg', 0),
(22, 10, 'baby-beanie-child-265959.jpg', 0),
(23, 30, 'best_hd-wallpaper-1280x960.jpg', 0),
(24, 30, 'Free-Baby-Wallpapers-For-Desktop-5.jpg', 0),
(25, 30, 'kitten_16-wallpaper-1440x1080.jpg', 0),
(26, 30, 'kittens-wallpaper-2000x1333.jpg', 0),
(27, 30, 'maxresdefault.jpg', 0),
(28, 12, '24294249_1151687971632803_1848526194614470879_n.jpg', 0),
(29, 12, 'IMG_05062018_185554_0.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `reportuser`
--

CREATE TABLE `reportuser` (
  `id` int(11) NOT NULL,
  `reporterid` int(11) NOT NULL DEFAULT '0',
  `accountid` int(11) NOT NULL DEFAULT '0',
  `reportype` varchar(255) DEFAULT NULL,
  `reportmsg` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reportuser`
--

INSERT INTO `reportuser` (`id`, `reporterid`, `accountid`, `reportype`, `reportmsg`) VALUES
(1, 12, 1, 'fake', 'fake profile '),
(2, 12, 13, '', ''),
(3, 12, 1, 'other', 'not good '),
(4, 10, 12, '', ''),
(5, 10, 12, '', ''),
(6, 10, 12, 'spam', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_block`
--

CREATE TABLE `user_block` (
  `id` int(11) NOT NULL,
  `sendid` int(11) NOT NULL DEFAULT '0',
  `recid` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `dstatus` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_block`
--

INSERT INTO `user_block` (`id`, `sendid`, `recid`, `status`, `dstatus`) VALUES
(1, 12, 15, 0, 1),
(2, 10, 1, 0, 1),
(3, 12, 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_register`
--

CREATE TABLE `user_register` (
  `id` int(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `intrestedin` varchar(255) DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `height` varchar(255) DEFAULT NULL,
  `weight` varchar(255) DEFAULT NULL,
  `headline` varchar(255) DEFAULT NULL,
  `desc` text,
  `education` varchar(255) DEFAULT NULL,
  `has_child` varchar(255) DEFAULT NULL,
  `want_child` varchar(255) DEFAULT NULL,
  `prefered_age` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `min_age` varchar(255) DEFAULT NULL,
  `max_age` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `income` varchar(255) DEFAULT NULL,
  `occupation` varchar(255) DEFAULT NULL,
  `religion` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `english_ability` varchar(255) DEFAULT NULL,
  `thai_ability` varchar(255) DEFAULT NULL,
  `fav_book` varchar(255) DEFAULT NULL,
  `fav_film` varchar(255) DEFAULT NULL,
  `fav_music` varchar(255) DEFAULT NULL,
  `interest` varchar(255) DEFAULT NULL,
  `login_time` datetime DEFAULT NULL,
  `logout_time` datetime DEFAULT NULL,
  `status` int(55) NOT NULL DEFAULT '0',
  `loginstatus` int(11) NOT NULL DEFAULT '0',
  `blockuser` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_register`
--

INSERT INTO `user_register` (`id`, `name`, `password`, `email`, `gender`, `intrestedin`, `dob`, `height`, `weight`, `headline`, `desc`, `education`, `has_child`, `want_child`, `prefered_age`, `country`, `city`, `min_age`, `max_age`, `area`, `income`, `occupation`, `religion`, `image`, `english_ability`, `thai_ability`, `fav_book`, `fav_film`, `fav_music`, `interest`, `login_time`, `logout_time`, `status`, `loginstatus`, `blockuser`) VALUES
(1, 'addi', '123', 'Adarsh@gmail.com', 'male', 'Man', '23-8-1990', '180', '79', 'addi', '                          \r\n                          adfdfadfa                        ', 'Masters Degree', 'Want children', 'Do not have children', '23', 'AW', 'Bang Lamung', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '2019-08-13 10:23:24', '0000-00-00 00:00:00', 0, 1, ''),
(2, 'pawan', '123', 'pawanshrinkcomcs@gmail.com', 'male', 'Woman', '15-8-1999', '188', '76', 'Hello', 'This is pawan', 'Bachelors Degree', 'No answer', 'No answer', '25', 'AU', 'Pattaya', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, ''),
(4, 'shubh', '123', 'soni.shubhanshu93@live.com', 'male', 'Woman', '5-2-1992', '165', '76', 'hello all', 'this is shubh here', 'Masters Degree', 'No answer', 'Do not have children', '25', 'TR', 'Khoi', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, ''),
(11, 'Nandini', 'nandini@123', 'shrinkcom@gmail.com', 'female', 'Man', '16-4-1994', '147', '48', 'dadajsdasda', 'dasdasdasdasdasdsa', 'College', 'Want children', 'Do not have children', '22', 'IN', 'Khlong Khlung', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, ''),
(6, 'test', '123', 'test@gmail.com', 'female', 'Man', '14-9-1987', '183', '95', 'Hello', 'hello this is test', 'College', 'Want children', 'Have children', '32', 'AT', 'Bang Kruai', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, ''),
(10, 'amit ', '1234', 'amit@gmail.com', 'male', 'Woman', '14-4-1990', '170', '73', 'Hello', 'hi this is amit', '0', 'Want children', 'Have children', '25', 'AD', 'Bang Kruai', NULL, NULL, NULL, NULL, NULL, NULL, '5b0fef2a97b5bCareers.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '2018-05-31 02:32:13', '0000-00-00 00:00:00', 0, 1, ''),
(12, 'Saikat001', 'saikat007@', 'saikat@gmail.com', 'male', 'Woman', '1-4-1992', '178', '70', 'I am new', 'Hello Guys how are you', '5', 'No answer', 'No answer', '28', 'TH', 'Bang Pa-in', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '2018-08-31 01:14:28', '0000-00-00 00:00:00', 1, 1, ''),
(13, 'Sweta001', '123456', 'sweta@gmail.com', 'female', 'Man', '5-11-1950', '161', '55', 'Dont talk to me', 'Dont talk to me without DP', '6', '0', '0', '27', 'TH', 'Bangkok', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '2018-05-17 12:06:49', '2018-05-17 12:09:41', 0, 0, ''),
(21, 'HGDH', 'RTHT', 'AV@MAIL.COM', 'female', 'Woman', '18-11-1987', '219', '50', 'EDH', 'TTTTTE', '0', '0', '0', '0', '', '0', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, ''),
(14, 'Nandini', 'nandini@123', 'shrinkcom@gmail.com', 'female', 'Man', '7-3-1974', '150', '39', 'sdfsdfsd', 'dfsdfsdfsdfsdf', '1', '2', '1', '21', 'IN', 'In Buri', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, ''),
(15, 'pushpa', 'pushpa@123', 'shrinkcom@gmail.com', 'female', 'Man', '9-3-1988', '147', '48', 'sdfsf', 'sdfsdfsd', '3', '1', '0', '21', 'IN', 'Kacha', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, ''),
(16, 'Nandini', 'Nandini@123', 'rathoresnandini@gmail.com', 'female', 'Man', '14-6-1996', '150', '46', 'dfsfsdf', 'sdfsdfsdfsd', '2', '2', '1', '22', 'DZ', 'Phuket', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, ''),
(17, 'pooja', 'prajapati', 'pooja.shrinkcom@gmail.com', 'female', 'Man', '15-8-1994', '161', '50', 'abc', 'xyz', '5', '0', '0', '27', 'IN', 'Na', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, ''),
(18, 'raj', '123', 'raj@gmail.com', 'female', 'Woman', '13-8-1989', '150', '51', 'lorem', 'lorem', '1', '0', '0', '19', 'BS', 'Bang Lamung', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-15 07:06:17', '0000-00-00 00:00:00', 0, 1, ''),
(25, 'cxz vcsz ', 'zczxvczvzv', 'ANIKnknknk@GMAIL.COM', 'male', 'Woman', '3-8-1999', '219', '52', 'sdvdsav sVqwvw', 'VWDVGWB B ', '2', '2', '2', '0', 'AF', 'Khon Kaen', NULL, NULL, NULL, NULL, NULL, NULL, '5b0fd1b9db531thinkstockphotos-515594438.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, ''),
(26, 'dsfgWSGV', '123456', 's@gmail.com', 'male', 'Woman', '0-0-0', '0', '0', 'yhrwyhw', 'rtwhrwt', '3', '0', '0', '', 'AO', 'Amnat Charoen', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL),
(27, 'rahulectruba', '123456', 'rahulectruba@gmail.com', 'male', 'Woman', '16-10-1987', '150', '51', 'fedfgedfg', 'fefef', '1', '1', '1', '', 'BD', 'Bang Pa-in', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL),
(29, 'fefefef', '123', 'rrr@gmail.com', 'male', 'Woman', '18-11-1981', '153', '53', 'a', 'f', '3', '0', '1', '', 'TH', 'Bang Pa-in', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL),
(30, 'nandini123', 'nandini', 'shrinkcom1@gmail.com', 'female', 'Man', '13-7-1994', '144', '43', 'adadgdgfa', 'gdgadgffsdfasfasfdsfa', '4', '1', '1', '', 'AD', 'Kalasin', NULL, NULL, NULL, NULL, NULL, NULL, '5b1508583f58bthe-boss-baby-review_c8ma.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '28'),
(31, 'Rajat da', '123456', 'rajat@gmail.com', 'male', 'Woman', '0-0-0', '0', '0', 'lorem', 'rwggregegeqg', '2', '0', '0', '', 'AZ', 'Bang Kruai', NULL, NULL, NULL, NULL, NULL, NULL, '5b169193491c35afd70c4bc4d5robert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL),
(32, 'rahul royjio', '123456', 'rahul@mail.com', 'male', 'Woman', '18-2-1986', '196', '49', 'lorem', 'lorem lorem', '4', '0', '0', '', 'AL', 'Khon Kaen', NULL, NULL, NULL, NULL, NULL, NULL, '5b16929a37d6f5b168c3539fe65afd70c4bc4d5robert.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL),
(33, 'Satirtha Das', 'admin1234', 'satirtha@mail.com', 'male', 'Woman', '11-8-1996', '177', '72', 'lorem', 'lorem', '4', '0', '0', '', 'AM', 'Bang Lamung', NULL, NULL, NULL, NULL, NULL, NULL, '5b289e356e582a-members-9.png', NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-15 07:12:24', '0000-00-00 00:00:00', 0, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `visit`
--

CREATE TABLE `visit` (
  `id` int(11) NOT NULL,
  `visitingto` int(11) NOT NULL DEFAULT '0',
  `visitedby` int(11) NOT NULL DEFAULT '0',
  `date` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visit`
--

INSERT INTO `visit` (`id`, `visitingto`, `visitedby`, `date`) VALUES
(1, 1, 10, '2018-06-01'),
(2, 1, 10, '2018-06-01'),
(3, 1, 10, '2018-06-01'),
(4, 1, 10, '2018-06-01'),
(5, 15, 10, '2018-06-01'),
(6, 1, 10, '2018-06-01'),
(7, 10, 28, '2018-06-01'),
(8, 10, 28, '2018-06-01'),
(9, 1, 28, '2018-06-01'),
(10, 2, 28, '2018-06-01'),
(11, 1, 28, '2018-06-01'),
(12, 28, 28, '2018-06-01'),
(13, 28, 30, '2018-06-04'),
(14, 28, 30, '2018-06-04'),
(15, 28, 30, '2018-06-04'),
(16, 28, 30, '2018-06-04'),
(17, 28, 30, '2018-06-04'),
(18, 28, 30, '2018-06-04'),
(19, 25, 30, '2018-06-04'),
(20, 10, 30, '2018-06-04'),
(21, 4, 27, '2018-06-04'),
(22, 11, 27, '2018-06-04'),
(23, 30, 27, '2018-06-04'),
(24, 1, 10, '2018-06-04'),
(25, 21, 10, '2018-06-04'),
(26, 1, 27, '2018-06-04'),
(27, 28, 27, '2018-06-04'),
(28, 28, 27, '2018-06-04'),
(29, 11, 27, '2018-06-04'),
(30, 10, 27, '2018-06-04'),
(31, 28, 10, '2018-06-04'),
(32, 28, 10, '2018-06-04'),
(33, 28, 10, '2018-06-04'),
(34, 28, 10, '2018-06-04'),
(35, 28, 10, '2018-06-04'),
(36, 30, 10, '2018-06-04'),
(37, 1, 10, '2018-06-04'),
(38, 1, 10, '2018-06-04'),
(39, 1, 10, '2018-06-04'),
(40, 1, 10, '2018-06-04'),
(41, 1, 10, '2018-06-04'),
(42, 1, 10, '2018-06-04'),
(43, 1, 10, '2018-06-04'),
(44, 1, 10, '2018-06-04'),
(45, 1, 10, '2018-06-04'),
(46, 1, 10, '2018-06-04'),
(47, 1, 10, '2018-06-04'),
(48, 1, 10, '2018-06-04'),
(49, 1, 10, '2018-06-04'),
(50, 1, 10, '2018-06-04'),
(51, 1, 10, '2018-06-04'),
(52, 1, 10, '2018-06-04'),
(53, 1, 10, '2018-06-04'),
(54, 1, 10, '2018-06-04'),
(55, 1, 10, '2018-06-04'),
(56, 21, 10, '2018-06-04'),
(57, 28, 10, '2018-06-04'),
(58, 28, 10, '2018-06-04'),
(59, 1, 10, '2018-06-04'),
(60, 21, 10, '2018-06-04'),
(61, 21, 10, '2018-06-04'),
(62, 21, 10, '2018-06-04'),
(63, 21, 10, '2018-06-04'),
(64, 10, 28, '2018-06-05'),
(65, 10, 28, '2018-06-05'),
(66, 28, 12, '2018-06-05'),
(67, 2, 12, '2018-06-05'),
(68, 2, 12, '2018-06-05'),
(69, 2, 12, '2018-06-05'),
(70, 2, 12, '2018-06-05'),
(71, 2, 12, '2018-06-05'),
(72, 2, 12, '2018-06-05'),
(73, 6, 12, '2018-06-05'),
(74, 6, 12, '2018-06-05'),
(75, 6, 12, '2018-06-05'),
(76, 30, 12, '2018-06-05'),
(77, 1, 10, '2018-06-07'),
(78, 1, 10, '2018-06-07'),
(79, 32, 12, '2018-06-09'),
(80, 30, 12, '2018-06-09'),
(81, 31, 12, '2018-06-09'),
(82, 2, 12, '2018-06-09'),
(83, 2, 12, '2018-06-09'),
(84, 30, 12, '2018-06-13'),
(85, 18, 33, '2018-12-15'),
(86, 18, 33, '2018-12-15'),
(87, 33, 18, '2018-12-15'),
(88, 33, 18, '2018-12-15'),
(89, 18, 33, '2018-12-15'),
(90, 18, 33, '2018-12-15'),
(91, 18, 33, '2018-12-15'),
(92, 18, 33, '2018-12-15'),
(93, 18, 33, '2018-12-15'),
(94, 33, 18, '2018-12-15'),
(95, 18, 33, '2018-12-15'),
(96, 11, 1, '2019-08-13'),
(97, 11, 1, '2019-08-13'),
(98, 11, 1, '2019-08-13'),
(99, 11, 1, '2019-08-13'),
(100, 11, 1, '2019-08-13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`cityID`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fabourite`
--
ALTER TABLE `fabourite`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interest`
--
ALTER TABLE `interest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `membership`
--
ALTER TABLE `membership`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `note`
--
ALTER TABLE `note`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profileoption`
--
ALTER TABLE `profileoption`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile_image`
--
ALTER TABLE `profile_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reportuser`
--
ALTER TABLE `reportuser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_block`
--
ALTER TABLE `user_block`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_register`
--
ALTER TABLE `user_register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visit`
--
ALTER TABLE `visit`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(55) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT for table `fabourite`
--
ALTER TABLE `fabourite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `interest`
--
ALTER TABLE `interest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `membership`
--
ALTER TABLE `membership`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `note`
--
ALTER TABLE `note`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `profileoption`
--
ALTER TABLE `profileoption`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `profile_image`
--
ALTER TABLE `profile_image`
  MODIFY `id` int(55) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `reportuser`
--
ALTER TABLE `reportuser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_block`
--
ALTER TABLE `user_block`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_register`
--
ALTER TABLE `user_register`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `visit`
--
ALTER TABLE `visit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
