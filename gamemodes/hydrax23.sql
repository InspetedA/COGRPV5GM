-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 18, 2022 at 10:43 PM
-- Server version: 10.3.34-MariaDB-0ubuntu0.20.04.1
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hydrax23`
--

-- --------------------------------------------------------

--
-- Table structure for table `anticheat_settings`
--

CREATE TABLE `anticheat_settings` (
  `ac_code` int(2) NOT NULL,
  `ac_code_trigger_type` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `anticheat_settings`
--

INSERT INTO `anticheat_settings` (`ac_code`, `ac_code_trigger_type`) VALUES
(0, 0),
(1, 1),
(2, 1),
(3, 1),
(4, 0),
(5, 1),
(6, 1),
(7, 1),
(8, 0),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 2),
(14, 2),
(15, 0),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 0),
(39, 1),
(40, 0),
(41, 0),
(42, 2),
(43, 1),
(44, 0),
(45, 1),
(46, 1),
(47, 1),
(48, 0),
(49, 0),
(50, 0),
(51, 1),
(52, 0);

-- --------------------------------------------------------

--
-- Table structure for table `atms`
--

CREATE TABLE `atms` (
  `id` int(4) DEFAULT NULL,
  `pos_x` float DEFAULT NULL,
  `pos_y` float DEFAULT NULL,
  `pos_z` float DEFAULT NULL,
  `pos_r` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `atms`
--

INSERT INTO `atms` (`id`, `pos_x`, `pos_y`, `pos_z`, `pos_r`) VALUES
(NULL, 694.374, -454.831, 16.336, 92.181),
(NULL, 692.958, -455.29, 16.336, 93.873),
(NULL, 708.815, -614.196, 16.336, 94.463),
(NULL, 708.086, -614.836, 16.336, 93.604),
(NULL, 707.314, -613.904, 16.336, 92.376),
(NULL, 707.331, -612.435, 16.336, 95.445),
(NULL, 821.23, -563.063, 16.336, 359.126),
(NULL, 823.407, -561.173, 16.336, 99.123),
(NULL, 694.332, -475.504, 16.336, 356.616),
(NULL, 672.998, -466.169, 16.536, 269.1),
(NULL, 658.495, -501.044, 16.336, 182.651),
(NULL, 659.187, -503.112, 16.336, 182.65),
(NULL, 443.028, -847.225, 29.805, 315.428),
(NULL, 447.588, -862.377, 29.805, 228.158),
(NULL, 443.344, -847.542, 29.805, 317.01),
(NULL, 562.794, -1293.93, 17.248, 183.415),
(NULL, 562.803, -1293.93, 17.248, 178.924),
(NULL, 852.401, -605.205, 18.422, 175.818),
(NULL, 658.488, 16.336, 15.346, 181.377),
(NULL, 658.41, 16.336, 15.346, 183.466),
(NULL, 443.343, 29.805, 15.346, 321.079),
(NULL, 378.837, 7.836, 15.346, 88.674),
(NULL, 379.961, 7.836, 15.346, 31.279);

-- --------------------------------------------------------

--
-- Table structure for table `bans`
--

CREATE TABLE `bans` (
  `id` int(10) NOT NULL,
  `username` varchar(24) DEFAULT NULL,
  `ip` varchar(16) DEFAULT NULL,
  `bannedby` varchar(24) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `reason` varchar(128) DEFAULT NULL,
  `permanent` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bans`
--

INSERT INTO `bans` (`id`, `username`, `ip`, `bannedby`, `date`, `reason`, `permanent`) VALUES
(1, 'n/a', '112.198.66.128', 'Senichi_oda', '2022-06-30 14:15:02', 'wannabe ryder', 0),
(2, 'n/a', '91.245.252.60', 'Slim_Shady', '2022-07-01 04:30:44', 'Using cheats.', 0),
(3, 'Dolf_Gonzales', '120.29.77.144', 'Anti-Cheat', '2022-07-01 15:47:19', 'Airbreak', 0),
(4, 'n/a', '49.149.131.244', 'Senichi_Oda', '2022-07-02 06:30:03', 'disrespecting admin', 0),
(5, 'n/a', '203.189.116.182', 'Amaru_Crawford', '2022-07-05 19:12:59', 'N/A', 0);

-- --------------------------------------------------------

--
-- Table structure for table `businesses`
--

CREATE TABLE `businesses` (
  `id` int(10) NOT NULL,
  `ownerid` int(10) DEFAULT 0,
  `owner` varchar(24) DEFAULT 'Nobody',
  `name` varchar(64) DEFAULT 'Unamed Business',
  `message` varchar(128) DEFAULT 'Welcome to the business!',
  `type` tinyint(2) DEFAULT 0,
  `price` int(10) DEFAULT 0,
  `entryfee` int(10) DEFAULT 0,
  `locked` tinyint(1) DEFAULT 1,
  `timestamp` int(10) DEFAULT 0,
  `pos_x` float DEFAULT 0,
  `pos_y` float DEFAULT 0,
  `pos_z` float DEFAULT 0,
  `pos_a` float DEFAULT 0,
  `int_x` float DEFAULT 0,
  `int_y` float DEFAULT 0,
  `int_z` float DEFAULT 0,
  `int_a` float DEFAULT 0,
  `interior` tinyint(2) DEFAULT 0,
  `world` int(10) DEFAULT 0,
  `outsideint` tinyint(2) DEFAULT 0,
  `outsidevw` int(10) DEFAULT 0,
  `cash` int(10) DEFAULT 0,
  `products` int(10) DEFAULT 500,
  `robbed` smallint(6) NOT NULL DEFAULT 3,
  `robbing` int(11) DEFAULT NULL,
  `prices0` int(11) NOT NULL DEFAULT 0,
  `prices1` int(11) NOT NULL DEFAULT 0,
  `prices2` int(11) NOT NULL DEFAULT 0,
  `prices3` int(11) NOT NULL DEFAULT 0,
  `prices4` int(11) NOT NULL DEFAULT 0,
  `prices5` int(11) NOT NULL DEFAULT 0,
  `prices6` int(11) NOT NULL DEFAULT 0,
  `prices7` int(11) NOT NULL DEFAULT 0,
  `prices8` int(11) NOT NULL DEFAULT 0,
  `prices9` int(11) NOT NULL DEFAULT 0,
  `prices10` int(11) NOT NULL DEFAULT 0,
  `prices11` int(11) NOT NULL DEFAULT 0,
  `prices12` int(11) NOT NULL DEFAULT 0,
  `prices13` int(11) NOT NULL DEFAULT 0,
  `prices14` int(11) NOT NULL DEFAULT 0,
  `prices15` int(11) NOT NULL DEFAULT 0,
  `prices16` int(11) NOT NULL DEFAULT 0,
  `prices17` int(11) NOT NULL DEFAULT 0,
  `prices18` int(11) NOT NULL DEFAULT 0,
  `prices19` int(11) NOT NULL DEFAULT 0,
  `prices20` int(11) NOT NULL DEFAULT 0,
  `prices21` int(11) NOT NULL DEFAULT 0,
  `prices22` int(11) NOT NULL DEFAULT 0,
  `prices23` int(11) NOT NULL DEFAULT 0,
  `prices24` int(11) NOT NULL DEFAULT 0,
  `Car0PosX` float NOT NULL DEFAULT 0,
  `Car0PosY` float NOT NULL DEFAULT 0,
  `Car0PosZ` float NOT NULL DEFAULT 0,
  `Car0PosAngle` float NOT NULL DEFAULT 0,
  `Car0ModelId` int(11) NOT NULL DEFAULT 0,
  `Car0Price` int(11) NOT NULL DEFAULT 0,
  `Car1PosX` float NOT NULL DEFAULT 0,
  `Car1PosY` float NOT NULL DEFAULT 0,
  `Car1PosZ` float NOT NULL DEFAULT 0,
  `Car1PosAngle` float NOT NULL DEFAULT 0,
  `Car1ModelId` int(11) NOT NULL DEFAULT 0,
  `Car1Price` int(11) NOT NULL DEFAULT 0,
  `Car2PosX` float NOT NULL DEFAULT 0,
  `Car2PosY` float NOT NULL DEFAULT 0,
  `Car2PosZ` float NOT NULL DEFAULT 0,
  `Car2PosAngle` float NOT NULL DEFAULT 0,
  `Car2ModelId` int(11) NOT NULL DEFAULT 0,
  `Car2Price` int(11) NOT NULL DEFAULT 0,
  `Car3PosX` float NOT NULL DEFAULT 0,
  `Car3PosY` float NOT NULL DEFAULT 0,
  `Car3PosZ` float NOT NULL DEFAULT 0,
  `Car3PosAngle` float NOT NULL DEFAULT 0,
  `Car3ModelId` int(11) NOT NULL DEFAULT 0,
  `Car3Price` int(11) NOT NULL DEFAULT 0,
  `Car1Stock` int(11) NOT NULL DEFAULT 0,
  `Car2Stock` int(11) NOT NULL DEFAULT 0,
  `Car3Stock` int(11) NOT NULL DEFAULT 0,
  `Car1Order` int(11) NOT NULL DEFAULT 0,
  `Car2Order` int(11) NOT NULL DEFAULT 0,
  `Car3Order` int(11) NOT NULL DEFAULT 0,
  `Car4PosX` float NOT NULL DEFAULT 0,
  `Car4PosY` float NOT NULL DEFAULT 0,
  `Car4PosZ` float NOT NULL DEFAULT 0,
  `Car4PosAngle` float NOT NULL DEFAULT 0,
  `Car4ModelId` int(11) NOT NULL DEFAULT 0,
  `Car4Price` int(11) NOT NULL DEFAULT 0,
  `Car5PosX` int(11) NOT NULL DEFAULT 0,
  `Car5PosY` float NOT NULL DEFAULT 0,
  `Car5PosZ` float NOT NULL DEFAULT 0,
  `Car5PosAngle` float NOT NULL DEFAULT 0,
  `Car5ModelId` int(11) NOT NULL DEFAULT 0,
  `Car5Price` int(11) NOT NULL DEFAULT 0,
  `Car6PosX` float NOT NULL DEFAULT 0,
  `Car6PosY` float NOT NULL DEFAULT 0,
  `Car6PosZ` float NOT NULL DEFAULT 0,
  `Car6PosAngle` float NOT NULL DEFAULT 0,
  `Car6ModelId` int(11) NOT NULL DEFAULT 0,
  `Car6Price` int(11) NOT NULL DEFAULT 0,
  `Car7PosX` float NOT NULL DEFAULT 0,
  `Car7PosY` float NOT NULL DEFAULT 0,
  `Car7PosZ` float NOT NULL DEFAULT 0,
  `Car7PosAngle` float NOT NULL DEFAULT 0,
  `Car7ModelId` int(11) NOT NULL DEFAULT 0,
  `Car7Price` int(11) NOT NULL DEFAULT 0,
  `Car8PosX` float NOT NULL DEFAULT 0,
  `Car8PosY` float NOT NULL DEFAULT 0,
  `Car8PosZ` float NOT NULL DEFAULT 0,
  `Car8PosAngle` float NOT NULL DEFAULT 0,
  `Car8ModelId` int(11) NOT NULL DEFAULT 0,
  `Car8Price` int(11) NOT NULL DEFAULT 0,
  `Car9PosX` float NOT NULL DEFAULT 0,
  `Car9PosY` float NOT NULL DEFAULT 0,
  `Car9PosZ` float NOT NULL DEFAULT 0,
  `Car9PosAngle` float NOT NULL DEFAULT 0,
  `Car9ModelId` int(11) NOT NULL DEFAULT 0,
  `Car9Price` int(11) NOT NULL DEFAULT 0,
  `PurchaseX` float NOT NULL DEFAULT 0,
  `PurchaseY` float NOT NULL DEFAULT 0,
  `PurchaseZ` float NOT NULL DEFAULT 0,
  `PurchaseAngle` float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `businesses`
--

INSERT INTO `businesses` (`id`, `ownerid`, `owner`, `name`, `message`, `type`, `price`, `entryfee`, `locked`, `timestamp`, `pos_x`, `pos_y`, `pos_z`, `pos_a`, `int_x`, `int_y`, `int_z`, `int_a`, `interior`, `world`, `outsideint`, `outsidevw`, `cash`, `products`, `robbed`, `robbing`, `prices0`, `prices1`, `prices2`, `prices3`, `prices4`, `prices5`, `prices6`, `prices7`, `prices8`, `prices9`, `prices10`, `prices11`, `prices12`, `prices13`, `prices14`, `prices15`, `prices16`, `prices17`, `prices18`, `prices19`, `prices20`, `prices21`, `prices22`, `prices23`, `prices24`, `Car0PosX`, `Car0PosY`, `Car0PosZ`, `Car0PosAngle`, `Car0ModelId`, `Car0Price`, `Car1PosX`, `Car1PosY`, `Car1PosZ`, `Car1PosAngle`, `Car1ModelId`, `Car1Price`, `Car2PosX`, `Car2PosY`, `Car2PosZ`, `Car2PosAngle`, `Car2ModelId`, `Car2Price`, `Car3PosX`, `Car3PosY`, `Car3PosZ`, `Car3PosAngle`, `Car3ModelId`, `Car3Price`, `Car1Stock`, `Car2Stock`, `Car3Stock`, `Car1Order`, `Car2Order`, `Car3Order`, `Car4PosX`, `Car4PosY`, `Car4PosZ`, `Car4PosAngle`, `Car4ModelId`, `Car4Price`, `Car5PosX`, `Car5PosY`, `Car5PosZ`, `Car5PosAngle`, `Car5ModelId`, `Car5Price`, `Car6PosX`, `Car6PosY`, `Car6PosZ`, `Car6PosAngle`, `Car6ModelId`, `Car6Price`, `Car7PosX`, `Car7PosY`, `Car7PosZ`, `Car7PosAngle`, `Car7ModelId`, `Car7Price`, `Car8PosX`, `Car8PosY`, `Car8PosZ`, `Car8PosAngle`, `Car8ModelId`, `Car8Price`, `Car9PosX`, `Car9PosY`, `Car9PosZ`, `Car9PosAngle`, `Car9ModelId`, `Car9Price`, `PurchaseX`, `PurchaseY`, `PurchaseZ`, `PurchaseAngle`) VALUES
(26, 60, 'Ryder_Wilson', 'Rest House', 'Welcome to {FFFFFF}Nobody\'s{32CD32} Club/Bar (500 Products left). Type /buy to purchase from this business.', 6, 2147483647, 200, 0, 1656938328, 681.506, -473.442, 16.536, 176.446, -228.757, 1401.24, 27.766, 270, 18, 3000026, 0, 0, 3250, 597, 0, NULL, 50, 100, 200, 300, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(30, 0, 'Nobody', 'Unamed Business', 'Welcome to {FFFFFF}Nobody\'s{32CD32} Resturant (500 Products left). Type /buy to purchase from this business.', 4, 99999999, 0, 0, 0, -372.144, -1428.81, 25.727, 99.159, 363.328, -74.65, 1001.51, 315, 10, 3000030, 0, 0, 0, 519, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(32, 32, 'Cornhub', 'Unamed Business', 'Welcome to {FFFFFF}Nobody\'s{32CD32} Resturant (500 Products left). Type /buy to purchase from this business.', 4, 9999999, 0, 0, 1657130550, 360.056, -2031.67, 7.836, -96.226, 363.328, -74.65, 1001.51, 315, 10, 3000032, 0, 0, 0, 9999999, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(33, 32, 'Senichi_Oda', 'Unamed Business', 'Welcome to {FFFFFF}Nobody\'s{32CD32} 7/11 (500 Products left). Type /buy to purchase from this business.', 0, 9999999, 0, 0, 1657110996, 376.046, -2067.21, 7.836, 167.981, -27.438, -57.611, 1003.55, 0, 6, 3000033, 0, 0, 400, 490, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36, 0, 'Nobody', 'Unamed Business', 'Welcome to {FFFFFF}Nobody\'s{32CD32} Advertisement Agency. /(ad)vertise to make an advertisement.', 5, 2147483647, 200, 0, 0, 801.362, -545.995, 16.336, 88.689, 493.373, -23.995, 1000.68, 0, 17, 3000036, 0, 0, 1270, 500, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(46, 56, 'Amaru_Crawford', 'Unamed Business', 'Welcome to {FFFFFF}Nobody\'s{32CD32} 7/11 (500 Products left). Type /buy to purchase from this business.', 0, 250000, 150, 0, 1656875443, 820.063, -575.952, 16.536, -92.41, -27.307, -30.834, 1003.56, 0, 4, 3000046, 0, 0, 104200, 483, 0, NULL, 5000, 4000, 1000, 1000, 1000, 1500, 1000, 5000, 5000, 1000, 1000, 1500, 4000, 3000, 1000, 3000, 60000, 1000, 1000, 1000, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(48, 60, 'Ryder_Wilson', 'Ukay-Ukay', 'Welcome to {FFFFFF}Nobody\'s{32CD32} Clothing Line (500 Products left). Type /buy to purchase from this business.', 2, 2147483647, 200, 0, 1656938452, 712.177, -498.916, 16.336, -88.149, 207.633, -110.767, 1005.13, 0, 15, 3000048, 0, 0, 9200, 486, 0, NULL, 100, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(50, 1, 'Kovalchin_Bolkov', '7/11 MURA DITO!', 'Welcome to {FFFFFF}Nobody\'s{32CD32} 7/11 (500 Products left). Type /buy to purchase from this business.', 0, 250000, 0, 0, 1657642190, 661.355, -573.382, 16.336, 270.383, -27.438, -57.611, 1003.55, 0, 6, 3000050, 0, 0, 101090, 320, 0, NULL, 1500, 1500, 50, 20, 35, 500, 1500, 50, 50, 10000, 250, 500, 900, 0, 600, 1500, 15000, 0, 35, 0, 25, 5000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(52, 56, 'Pain', 'Unamed Business', 'Welcome , Come again!', 4, 1200000, 500, 0, 1657035271, 671.012, -519.319, 16.336, 49.128, 364.854, -11.14, 1001.85, 0, 9, 3000052, 0, 0, 36000, 489, 0, NULL, 1500, 2000, 2000, 2000, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(54, 56, 'Pain', 'Edi, tipaklong', 'Welcome to {FFFFFF}Nobody\'s{32CD32} Gym. /buy to purchase a fighting style.', 3, 500000, 500, 0, 1657037734, 655.285, -503.111, 16.336, 0.502, 773.851, -78.395, 1000.66, 0, 7, 3000054, 0, 0, 3300, 500, 0, NULL, 20000, 20000, 20000, 20000, 20000, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56, 56, 'Pain', 'Unamed Business', 'Welcome to {FFFFFF}Nobody\'s{32CD32} Ammunation (500 Products left). Type /buy to purchase from this business.', 1, 650000, 1000, 0, 1657090253, 2174.63, -1741.8, 13.551, -133.446, 285.783, -85.986, 1001.52, 0, 4, 3000056, 0, 0, 3000, 499, 0, NULL, 3000, 5000, 10000, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(57, 56, 'Pain', 'Unamed Business', 'Welcome to {FFFFFF}Nobody\'s{32CD32} Clothing Line (500 Products left). Type /buy to purchase from this business.', 2, 1000000, 500, 0, 1657090451, 2244.38, -1665.56, 15.477, -17.889, 203.715, -50.22, 1001.8, 0, 1, 3000057, 0, 0, 0, 500, 0, NULL, 1000, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(58, 56, 'Pain', 'Unamed Business', 'Welcome to {FFFFFF}Nobody\'s{32CD32} Gym. /buy to purchase a fighting style.', 3, 500000, 1000, 0, 1657090867, 2229.91, -1721.27, 13.561, 135.397, 772.28, -4.715, 1000.73, 0, 5, 3000058, 0, 0, 0, 500, 0, NULL, 15000, 15000, 15000, 15000, 15000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(59, 0, 'Nobody', 'Unamed Business', 'Welcome to {FFFFFF}Nobody\'s{32CD32} Ammunation (500 Products left). Type /buy to purchase from this business.', 1, 99999999, 0, 0, 0, 672.063, -646.814, 16.336, -93.217, 316.287, -169.647, 999.601, 0, 6, 3000059, 0, 0, 0, 500, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(60, 32, 'Senichi_Oda', 'Unamed Business', 'Welcome to {FFFFFF}Nobody\'s{32CD32} Resturant (500 Products left). Type /buy to purchase from this business.', 4, 1200000, 0, 0, 1657130378, 443.109, -847.321, 29.805, 129.363, 363.328, -74.65, 1001.51, 315, 10, 3000060, 0, 0, 0, 99999999, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(61, 0, 'Nobody', 'Unamed Business', 'Welcome to {FFFFFF}Nobody\'s{32CD32} Advertisement Agency. /(ad)vertise to make an advertisement.', 5, 9999999, 0, 0, 0, 695.093, -500.105, 16.336, -5.695, 834.152, 7.41, 1004.19, 90, 3, 3000061, 0, 0, 0, 500, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(62, 0, 'Nobody', 'Unamed Business', 'Welcome to {FFFFFF}Nobody\'s{32CD32} 7/11 (500 Products left). Type /buy to purchase from this business.', 0, 250000, 0, 1, 0, 1919.62, -1775.88, 13.583, -173.389, -27.438, -57.611, 1003.55, 0, 6, 3000062, 0, 0, 0, 499, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(63, 0, 'Nobody', 'Unamed Business', 'Welcome to {FFFFFF}Nobody\'s{32CD32} Resturant (500 Products left). Type /buy to purchase from this business.', 4, 1200000, 0, 1, 0, 1097.28, -1439.62, 15.801, -107.094, 363.328, -74.65, 1001.51, 315, 10, 3000063, 0, 0, 0, 499, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(64, 0, 'Nobody', 'Unamed Business', 'Welcome to {FFFFFF}Nobody\'s{32CD32} Clothing Line (500 Products left). Type /buy to purchase from this business.', 2, 1000000, 0, 1, 0, 1166.06, -1440.37, 15.801, 179.556, 204.386, -168.459, 1000.52, 0, 14, 3000064, 0, 0, 0, 500, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(65, 0, 'Nobody', 'Unamed Business', 'Welcome to {FFFFFF}Nobody\'s{32CD32} Clothing Line (500 Products left). Type /buy to purchase from this business.', 2, 1000000, 0, 1, 0, 1166.56, -1506.16, 15.802, -168.788, 204.386, -168.459, 1000.52, 0, 14, 3000065, 0, 0, 0, 500, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(66, 0, 'Nobody', 'Unamed Business', 'Welcome to {FFFFFF}Nobody\'s{32CD32} 7/11 (500 Products left). Type /buy to purchase from this business.', 0, 250000, 0, 1, 0, 1146.31, -1529.09, 15.801, 17.575, -27.438, -57.611, 1003.55, 0, 6, 3000066, 0, 0, 0, 499, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `changes`
--

CREATE TABLE `changes` (
  `slot` tinyint(2) DEFAULT NULL,
  `text` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `charges`
--

CREATE TABLE `charges` (
  `id` int(10) NOT NULL,
  `uid` int(10) DEFAULT NULL,
  `chargedby` varchar(24) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `reason` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `clothing`
--

CREATE TABLE `clothing` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `modelid` smallint(6) DEFAULT NULL,
  `boneid` tinyint(4) DEFAULT NULL,
  `attached` tinyint(1) DEFAULT NULL,
  `pos_x` float DEFAULT NULL,
  `pos_y` float DEFAULT NULL,
  `pos_z` float DEFAULT NULL,
  `rot_x` float DEFAULT NULL,
  `rot_y` float DEFAULT NULL,
  `rot_z` float DEFAULT NULL,
  `scale_x` float DEFAULT NULL,
  `scale_y` float DEFAULT NULL,
  `scale_z` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clothing`
--

INSERT INTO `clothing` (`id`, `uid`, `name`, `modelid`, `boneid`, `attached`, `pos_x`, `pos_y`, `pos_z`, `rot_x`, `rot_y`, `rot_z`, `scale_x`, `scale_y`, `scale_z`) VALUES
(25, 89, 'Plain black shades', 19033, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(26, 89, 'Black tinted shades', 19012, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27, 116, 'Bag of money', 1550, 1, 1, 0, 0, 20, 0, 0, 0, 0, 0, 0),
(28, 32, 'Bag of money', 1550, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(29, 12, 'Black back cap', 18941, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(30, 12, 'Top hat', 19352, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(31, 12, 'Camo cap', 18926, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `crates`
--

CREATE TABLE `crates` (
  `id` int(11) NOT NULL,
  `cbObject` int(11) DEFAULT 964,
  `Facility` int(11) NOT NULL DEFAULT 0,
  `Group` int(11) NOT NULL DEFAULT -1,
  `CrateX` float(20,5) NOT NULL DEFAULT 0.00000,
  `CrateY` float(20,5) NOT NULL DEFAULT 0.00000,
  `CrateZ` float(20,5) NOT NULL DEFAULT 0.00000,
  `InVehicle` int(11) NOT NULL DEFAULT -1,
  `OnVehicle` int(11) NOT NULL DEFAULT -1,
  `Int` int(11) NOT NULL DEFAULT 0,
  `VW` int(11) NOT NULL DEFAULT 0,
  `Materials` int(11) NOT NULL DEFAULT 0,
  `Gun1` int(11) NOT NULL DEFAULT 0,
  `GunAmount1` int(11) NOT NULL DEFAULT 0,
  `Gun2` int(11) NOT NULL DEFAULT 0,
  `GunAmount2` int(11) NOT NULL DEFAULT 0,
  `Gun3` int(11) NOT NULL DEFAULT 0,
  `GunAmount3` int(11) NOT NULL DEFAULT 0,
  `Gun4` int(11) NOT NULL DEFAULT 0,
  `GunAmount4` int(11) NOT NULL DEFAULT 0,
  `Gun5` int(11) NOT NULL DEFAULT 0,
  `GunAmount5` int(11) NOT NULL DEFAULT 0,
  `Gun6` int(11) NOT NULL DEFAULT 0,
  `GunAmount6` int(11) NOT NULL DEFAULT 0,
  `Gun7` int(11) NOT NULL DEFAULT 0,
  `GunAmount7` int(11) NOT NULL DEFAULT 0,
  `Gun8` int(11) NOT NULL DEFAULT 0,
  `GunAmount8` int(11) NOT NULL DEFAULT 0,
  `Gun9` int(11) NOT NULL DEFAULT 0,
  `GunAmount9` int(11) NOT NULL DEFAULT 0,
  `Gun10` int(11) NOT NULL DEFAULT 0,
  `GunAmount10` int(11) NOT NULL DEFAULT 0,
  `Gun11` int(11) NOT NULL DEFAULT 0,
  `GunAmount11` int(11) NOT NULL DEFAULT 0,
  `Gun12` int(11) NOT NULL DEFAULT 0,
  `GunAmount12` int(11) NOT NULL DEFAULT 0,
  `Gun13` int(11) NOT NULL DEFAULT 0,
  `GunAmount13` int(11) NOT NULL DEFAULT 0,
  `Gun14` int(11) NOT NULL DEFAULT 0,
  `GunAmount14` int(11) NOT NULL DEFAULT 0,
  `Gun15` int(11) NOT NULL DEFAULT 0,
  `GunAmount16` int(11) NOT NULL DEFAULT 0,
  `GunAmount15` int(11) NOT NULL DEFAULT 0,
  `Gun16` int(11) NOT NULL DEFAULT 0,
  `PlacedBy` varchar(24) NOT NULL DEFAULT 'Unknown',
  `Lifespan` int(11) NOT NULL DEFAULT 0,
  `Transfer` int(1) NOT NULL DEFAULT 0,
  `DoorID` int(11) NOT NULL DEFAULT -1,
  `DoorType` int(11) NOT NULL DEFAULT -1,
  `Price` int(11) NOT NULL DEFAULT 0,
  `Paid` int(1) NOT NULL DEFAULT 0,
  `Active` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` tinyint(2) DEFAULT NULL,
  `divisionid` tinyint(2) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `entrances`
--

CREATE TABLE `entrances` (
  `id` int(10) NOT NULL,
  `ownerid` int(10) DEFAULT 0,
  `owner` varchar(24) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `iconid` smallint(5) DEFAULT 1239,
  `locked` tinyint(1) DEFAULT 0,
  `radius` float DEFAULT 3,
  `pos_x` float DEFAULT 0,
  `pos_y` float DEFAULT 0,
  `pos_z` float DEFAULT 0,
  `pos_a` float DEFAULT 0,
  `int_x` float DEFAULT 0,
  `int_y` float DEFAULT 0,
  `int_z` float DEFAULT 0,
  `int_a` float DEFAULT 0,
  `interior` tinyint(2) DEFAULT 0,
  `world` int(10) DEFAULT 0,
  `outsideint` tinyint(2) DEFAULT 0,
  `outsidevw` int(10) DEFAULT 0,
  `adminlevel` tinyint(2) DEFAULT 0,
  `factiontype` tinyint(2) DEFAULT 0,
  `vip` tinyint(2) DEFAULT 0,
  `vehicles` tinyint(1) DEFAULT 0,
  `freeze` tinyint(1) DEFAULT 0,
  `password` varchar(64) DEFAULT 'None',
  `label` tinyint(1) DEFAULT 1,
  `mapicon` tinyint(2) NOT NULL DEFAULT -1,
  `color` int(10) NOT NULL DEFAULT -256
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `entrances`
--

INSERT INTO `entrances` (`id`, `ownerid`, `owner`, `name`, `iconid`, `locked`, `radius`, `pos_x`, `pos_y`, `pos_z`, `pos_a`, `int_x`, `int_y`, `int_z`, `int_a`, `interior`, `world`, `outsideint`, `outsidevw`, `adminlevel`, `factiontype`, `vip`, `vehicles`, `freeze`, `password`, `label`, `mapicon`, `color`) VALUES
(25, 0, NULL, 'Dillimore Police Department', 1247, 0, 3, 626.967, -571.785, 17.915, 92.633, -1947.87, -838.597, 4439.8, 180.762, 1, 1, 0, 0, 0, 0, 0, 0, 1, 'None', 1, 0, -256),
(27, 0, NULL, 'Health Center', 1240, 0, 3, 854.598, -605.206, 18.422, 175.378, 1266.56, -1291.42, 1061.15, 269.493, 0, 1, 0, 0, 0, 0, 0, 0, 1, 'None', 1, 22, -256),
(28, 0, NULL, 'Baranggay Hall', 19130, 0, 3, 723.876, -615.209, 16.456, 213.486, 1249.02, -651.732, 1090.79, 273.93, 1, 1, 0, 0, 0, 0, 0, 0, 1, 'None', 1, 16, -256),
(30, 0, NULL, 'Backdoor', 1239, 0, 3, 1656.07, -971.614, 683.683, 89.792, 655.364, -503.109, 16.336, 357.251, 0, 0, 1, 4000029, 0, 0, 0, 0, 1, 'None', 1, -1, -256),
(33, 0, NULL, 'DMV', 1581, 0, 3, 2485.46, -1958.74, 13.581, 171.673, -2039.2, -134.043, -50.914, 356.771, 1, 4000033, 0, 0, 0, 0, 0, 0, 1, 'None', 1, 63, -256),
(44, 0, NULL, 'Casino', 19130, 0, 3, 691.159, -506.246, 16.336, 264.873, 1049.94, -74.952, 1003.85, 264.708, 1, 0, 0, 0, 0, 0, 0, 0, 1, 'None', 1, 12, -256),
(50, 0, NULL, 'Crack Lab', 1575, 0, 3, 161.869, -51.321, 1.578, 90.565, 2352.79, -1180.94, 1027.98, 92.316, 5, 4000050, 0, 0, 0, 0, 0, 0, 0, 'None', 1, 12, -256),
(51, 0, NULL, 'Drug House', 1239, 0, 3, 125.069, -285.934, 1.578, 180.603, 318.829, 1114.48, 1083.88, 359.864, 5, 4000051, 0, 0, 0, 0, 0, 0, 0, 'None', 1, 24, -256),
(70, 0, NULL, 'Drug Factory', 1239, 0, 3, 412.019, -1729.02, 9.285, -4.595, 2204.4, 1552.29, 1008.72, 93.624, 1, 4000070, 0, 0, 0, 0, 0, 0, 0, 'None', 1, 23, -256),
(73, 0, NULL, 'Material House', 1239, 0, 3, 2379.07, -2017.45, 14.833, -3.391, 2203.4, -1250.49, 1529.11, 88.234, 1, 4000073, 0, 0, 0, 0, 0, 0, 1, 'None', 1, 23, -256),
(84, 0, NULL, 'Whitehouse Entrance', 1239, 0, 3, 1123.3, -2037.09, 69.887, -90.731, 288.034, 1827.14, 628.015, 85.998, 0, 1, 0, 0, 0, 0, 0, 0, 1, 'None', 1, -1, -256),
(107, 0, NULL, 'County General Hospital', 1241, 0, 5, 1172.19, -1323.45, 15.403, 82.037, -1110.74, 2000.95, -58.92, 182.484, 0, 2, 0, 0, 0, 0, 0, 0, 1, 'None', 1, 22, -256),
(109, 0, NULL, 'VIP Garage', 19606, 0, 3, 816.655, -613.779, 16.336, 181.859, -4398.43, 874.6, 986.38, 169.638, 0, 0, 0, 0, 0, 0, 2, 1, 1, 'None', 1, 44, -256),
(111, 0, NULL, 'Press \' y \' to enter', 19130, 0, 15, -4430.3, 901.897, 986.697, 356.353, 797.53, -617.101, 16.336, 1.314, 0, 0, 0, 0, 0, 0, 0, 1, 1, 'None', 1, 0, -256),
(115, 0, NULL, 'CHURCH', 1239, 0, 3, 1720.47, -1740.93, 13.547, 170.388, -2029.07, 1019.36, 1418.5, 89.606, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'None', 1, 0, -256),
(131, 0, NULL, '((Press Y to exit))', 1239, 0, 3, 1564.97, -1667, 28.396, -59.325, -1977.77, -848.698, 4441.2, 94.901, 1, 1, 0, 0, 0, 0, 0, 0, 1, 'None', 1, 0, -256),
(136, 0, NULL, 'OPEN MEETING ROOM', 1239, 0, 3, 368.27, 194.207, 1008.38, -45.57, 0, 0, 0, 0, 0, 4000136, 3, 1, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(137, 0, NULL, '1st FLOOR - GROUND FLOOR', 1239, 0, 3, 350.143, 178.594, 1014.19, -172.571, 0, 0, 0, 0, 0, 4000137, 3, 1, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(138, 0, NULL, '2nd floor to 3rd floor', 1239, 0, 3, 344.676, 178.503, 1014.19, -171.318, 0, 0, 0, 0, 0, 4000138, 3, 1, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(139, 0, NULL, 'canteen', 1239, 0, 3, 333.397, 160.522, 1014.19, -79.534, 0, 0, 0, 0, 0, 4000139, 3, 1, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(150, 0, NULL, 'Tower', 1239, 0, 3, 1571.3, -1336.77, 16.484, 135.322, 1548.72, -1363.99, 326.218, 180.564, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(152, 0, NULL, '\"Prison Outside\"', 1239, 0, 3, -2776.08, 1294.35, 3127.16, -89.043, 170.325, 1401.57, 10.586, 185.816, 0, 0, 6, 1, 0, 0, 0, 0, 1, 'None', 1, -1, -256),
(166, 0, NULL, 'Rooftop', 1239, 0, 3, 306.399, -159.17, 999.594, -83.922, 1406.08, -1257.71, 33.56, 358.009, 0, 4000166, 6, 3000015, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(168, 0, NULL, 'Paradise City Arena', 1239, 0, 3, 409.251, -1756.66, 8.289, 179.048, 386.111, 1257.12, -59.793, 357.171, 1, 1000, 0, 0, 0, 0, 0, 0, 1, 'None', 1, -1, -256),
(169, 0, NULL, 'Las Venturas Hospital', 11738, 0, 3, 1607.19, 1815.24, 10.88, 176.715, -1110.8, 2000.95, -58.92, 177.119, 0, 3, 0, 0, 0, 0, 0, 0, 1, 'None', 1, 22, -256),
(170, 0, NULL, 'Las Venturas MetroBank', 1274, 0, 3, 2364.9, 2377.55, 10.82, 91.794, 1667.39, -995.437, 683.691, 354.686, 1, 102312, 0, 0, 0, 0, 0, 0, 1, 'None', 1, 52, -256),
(171, 0, NULL, 'Las Venturas Police Station', 1247, 0, 3, 2337.18, 2459.31, 14.974, 179.517, 288.797, 166.957, 1007.17, 359.892, 3, 10323, 0, 0, 0, 0, 0, 0, 1, 'None', 1, 30, -256),
(172, 0, NULL, 'Las Venturas CityHall', 1314, 0, 3, 2196.93, 1677.11, 12.367, 92.081, 1249.02, -651.732, 1090.79, 273.93, 1, 100032, 0, 0, 0, 0, 0, 0, 1, 'None', 1, 56, -256),
(185, 0, NULL, 'Allsaints Rooftop', 1239, 0, 3, -1111.06, 1957.7, -58.914, 0.276, 1161.18, -1336.73, 31.502, 178.473, 0, 0, 0, 2, 0, 0, 0, 0, 1, 'None', 1, -1, -256),
(186, 0, NULL, 'Paradise City Prison', 1239, 0, 3, 238.292, 1367.51, 11.066, -90.157, -2807.87, 1316.94, 3127.16, 177.568, 6, 1, 0, 0, 0, 10, 0, 0, 1, 'None', 1, -1, -256),
(198, 0, NULL, 'Poloce Department Rooftop', 1239, 0, 3, 238.784, 138.627, 1003.02, 1.209, 2260.11, 2458.09, 38.684, 0.407, 0, 0, 3, 10323, 0, 0, 0, 0, 1, 'None', 1, -1, -256),
(199, 0, NULL, 'Las Venturas Hp Rooftop', 1239, 0, 3, -1111.11, 1957.75, -58.914, 176.067, 1596.15, 1785.98, 30.469, 1.491, 0, 0, 0, 3, 0, 0, 0, 0, 1, 'None', 1, -1, -256),
(202, 0, NULL, 'Money Enterprises', 1274, 0, 3, 648.791, -519.267, 16.554, 352.044, 1667.13, -995.998, 683.691, 1.665, 1, 4000029, 0, 0, 0, 0, 0, 0, 1, 'None', 1, 52, -256),
(203, 0, NULL, 'Terrorist Hide Out', 1314, 0, 3, 1042.73, 1010.89, 11, 139.393, 246.389, 107.635, 1003.22, 355.486, 10, 4000203, 0, 0, 0, 8, 0, 0, 0, 'None', 1, 0, -256),
(206, 0, NULL, 'Army HQ', 1247, 0, 3, -516.121, -506.011, 25.523, -4.686, 288.733, 167.097, 1007.17, 4.939, 3, 4000206, 0, 0, 0, 0, 0, 0, 0, 'None', 1, 30, -256),
(207, 0, NULL, 'ShootingGround', 1239, 0, 3, 225.848, 184.268, 1003.03, 0.918, 302.04, -75.692, 1001.52, 180.694, 4, 4000207, 3, 4000206, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(208, 0, NULL, 'SHOOTING GROUND', 1239, 0, 3, 246.307, 88.009, 1003.64, 358.432, 300.329, -26.763, 1001.52, 273.923, 1, 4000208, 6, 4000144, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(209, 0, NULL, 'Hotel', 19606, 0, 3, 2233.29, -1159.74, 25.891, 88.398, 0, 0, 0, 0, 0, 4000209, 0, 0, 0, 0, 0, 0, 0, 'None', 1, 21, -256),
(211, 0, NULL, 'test', 1239, 0, 3, 1331.91, -632.937, 109.135, 22.22, 0, 0, 0, 0, 0, 4000211, 0, 0, 0, 0, 0, 0, 0, 'None', 1, 0, -256),
(212, 0, NULL, 'Dallas Mobz', 1239, 0, 3, 972.127, -1544.62, 13.601, -3.678, 235.32, 1186.68, 1080.26, 357.036, 3, 4000212, 0, 0, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(218, 0, NULL, 'SAFE HOUSE', 1248, 0, 3, 300.822, -2417.13, 15.602, 91.645, 967.611, -53.21, 1001.12, 87.69, 3, 4000218, 0, 0, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(219, 0, NULL, 'FINISH LINE', 1248, 0, 3, -673.764, 2061.77, 60.383, -87.174, 0, 0, 0, 0, 0, 4000219, 0, 0, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(221, 0, NULL, 'STARTING LANE', 1239, 0, 3, 409.037, 2500.65, 16.484, 1.034, 0, 0, 0, 0, 0, 4000221, 0, 0, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(222, 0, NULL, 'Gods Prophet Hq', 1248, 0, 3, 1031.03, -1434.93, 13.547, 252.754, 2352.94, -1180.97, 1027.98, 293.905, 5, 4000222, 0, 0, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(223, 0, NULL, 'Aztec Dogs HQ', 1239, 0, 3, 1684.77, -2098.16, 13.834, 169.696, 221.94, 1140.22, 1082.61, 10.322, 4, 4000223, 0, 0, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(224, 0, NULL, 'EVENT', 1239, 0, 3, 1107.07, -1304.19, 21.547, 88.611, 1267.92, -787.045, 1091.91, 22.409, 5, 4000224, 0, 0, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(227, 0, NULL, 'Rooftop Access', 1239, 1, 3, 2041.33, -1408.42, 17.164, -179.893, 2041.29, -1408.42, 17.164, 2.877, 0, 4000227, 0, 0, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(229, 0, NULL, 'hp roof', 1239, 0, 3, 2041.37, -1409.21, 17.164, 170.973, 2040.09, -1396.2, 48.336, 289.069, 0, 4000229, 0, 4000227, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(230, 32, 'Admiral', 'mechanic tambayan', 1248, 0, 3, 919.465, -1252.44, 16.211, 94.287, 493.09, -24.671, 1000.68, 355.812, 17, 4000230, 0, 0, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(231, 0, NULL, 'MECHANIC PARKING EREA', 1248, 0, 3, 878.696, -1251.18, 15.292, -33.136, 0, 0, 0, 0, 0, 4000231, 0, 0, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(232, 0, NULL, 'VIP Lounge', 19607, 0, 3, 826.625, -613.778, 16.336, 186.768, 1220.87, -1677.18, 12.654, 0.754, 0, 4000232, 0, 0, 0, 0, 2, 0, 0, 'None', 1, 43, -256),
(235, 0, NULL, 'Mechanic office', 19130, 0, 3, 715.07, -471.741, 16.336, 90.06, -2029.98, -119.622, 1035.17, 10.048, 3, 4000235, 0, 0, 0, 7, 0, 0, 0, 'None', 1, 0, -256),
(240, 0, NULL, 'Secret', 19300, 0, 3, -1926.89, -859.179, 4446.8, 40.227, 173.307, -1263.73, 81.778, 343.091, 0, 4000240, 1, 1, 0, 0, 0, 0, 0, '0', 1, -1, -256),
(241, 0, NULL, 'Secret', 19300, 1, 3, 173.307, -1263.73, 81.778, 163.091, -1926.89, -859.178, 4446.8, 217.404, 1, 4000241, 0, 0, 0, 0, 0, 0, 0, '0', 1, -1, -256),
(244, 0, NULL, 'Grims School', 1239, 0, 3, 1333.46, -1864.38, 13.547, -31.69, 1494.38, 1303.58, 1093.29, 5.326, 3, 4000244, 0, 0, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(245, 0, NULL, 'Terrorist Syndicate', 1239, 0, 3, 870.478, -24.961, 63.979, 330.4, 0, 0, 0, 0, 0, 4000245, 0, 0, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(246, 0, NULL, 'Drug house', 1239, 0, 3, 979.57, -80.453, 21.165, 152.318, -260.503, 1456.9, 1084.37, 92.094, 4, 4000246, 0, 0, 0, 0, 0, 0, 0, 'None', 1, -1, -256),
(247, 0, NULL, 'Hitman Headquarte\'s', 1654, 0, 3, 546.354, -839.048, 100.589, 132.826, 2324.38, -1149.55, 1050.71, 183.534, 12, 4000247, 0, 0, 0, 5, 0, 0, 0, 'None', 1, 0, -256),
(248, 0, NULL, 'Rooftop Access', 1239, 0, 3, 611.034, -583.495, 18.211, -178.684, 623.539, -567.082, 26.143, 90.659, 0, 4000248, 0, 0, 0, 0, 0, 0, 0, 'None', 1, 0, -256),
(250, 0, NULL, 'Familia De Vallas', 1239, 0, 3, 201.463, -118.227, 4.896, 8.393, 226.591, 1114.38, 1080.99, 263.926, 5, 4000250, 0, 0, 0, 0, 0, 0, 1, 'None', 1, -1, -256),
(252, 0, NULL, 'Mechanic interview room', 19130, 0, 3, 715.064, -466.814, 16.336, 90.732, -2029.65, -119.611, 1035.17, 344.181, 3, 4000252, 0, 0, 0, 0, 0, 0, 0, 'None', 1, 0, -256),
(253, 0, NULL, 'Do not enter', 19130, 0, 3, 741.092, -797.226, 45.242, 43.464, 712.977, -730.736, 65.201, 7.912, 0, 4000253, 0, 0, 0, 0, 0, 0, 0, 'None', 1, 0, -256),
(255, 0, NULL, 'Do not enter', 19300, 0, 3, 712.977, -730.736, 65.201, -172.088, 739.873, -797.184, 44.499, 22.679, 0, 4000255, 0, 0, 0, 0, 0, 0, 0, 'None', 1, 0, -256),
(256, 0, NULL, 'Army Locker', 19130, 0, 3, 1106.55, -299.653, 74.539, 267.324, 2135.27, -2276.34, 20.672, 318.381, 0, 4000256, 0, 0, 0, 9, 0, 0, 0, 'None', 1, -1, -256),
(257, 0, NULL, 'Rooftop exit', 1239, 0, 3, 623.563, -567.115, 26.143, -87.461, 611.075, -583.497, 18.211, 2.611, 0, 4000257, 0, 0, 0, 0, 0, 0, 0, 'None', 1, 0, -256);

-- --------------------------------------------------------

--
-- Table structure for table `factionpay`
--

CREATE TABLE `factionpay` (
  `id` tinyint(2) DEFAULT NULL,
  `rank` tinyint(2) DEFAULT NULL,
  `amount` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `factionpay`
--

INSERT INTO `factionpay` (`id`, `rank`, `amount`) VALUES
(1, 8, 20000),
(1, 7, 15000),
(1, 6, 13000),
(1, 5, 10000),
(1, 4, 8000),
(1, 3, 6000),
(1, 2, 4000),
(1, 1, 2000),
(1, 0, 2000),
(4, 4, 20000),
(4, 3, 15000),
(4, 2, 15000),
(4, 1, 10000),
(4, 0, 10000),
(2, 7, 20000),
(2, 6, 18000),
(2, 5, 15000),
(2, 4, 13000),
(2, 3, 10000),
(2, 2, 8000),
(2, 1, 5000),
(2, 0, 2000),
(6, 14, 20000),
(6, 13, 19000),
(6, 12, 18000),
(6, 11, 17000),
(6, 10, 16000),
(6, 9, 15000),
(6, 8, 14000),
(6, 7, 13000),
(6, 6, 12000),
(6, 5, 10000),
(6, 4, 8000),
(6, 3, 6000),
(6, 2, 5000),
(6, 1, 3000),
(6, 0, 2000),
(9, 19, 20000),
(9, 18, 18000),
(9, 17, 18000),
(9, 16, 15000),
(9, 15, 15000),
(9, 14, 15000),
(9, 13, 15000),
(9, 12, 15000),
(9, 11, 15000),
(9, 10, 15000),
(9, 9, 10000),
(9, 8, 10000),
(9, 7, 10000),
(9, 6, 10000),
(9, 5, 5000),
(9, 4, 5000),
(9, 3, 5000),
(9, 2, 5000),
(9, 1, 3000),
(9, 0, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `factionranks`
--

CREATE TABLE `factionranks` (
  `id` tinyint(2) DEFAULT NULL,
  `rank` tinyint(2) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `factionranks`
--

INSERT INTO `factionranks` (`id`, `rank`, `name`) VALUES
(1, 14, 'Director General'),
(1, 13, 'Leuitenant'),
(1, 1, 'Police Officer'),
(1, 2, 'Police Major'),
(1, 3, 'Police Lieutenant Colonel'),
(1, 4, 'Police Colonel'),
(1, 12, 'Major General'),
(1, 11, 'Lieutenant Colonel'),
(1, 10, 'Police Major'),
(1, 9, 'Captain'),
(1, 8, 'Director General'),
(1, 7, 'Police Lieutenant General'),
(1, 6, 'Police Major General'),
(1, 5, 'Police Brigadier General'),
(1, 0, 'Cadet'),
(8, 0, 'Bago'),
(8, 1, 'Bad ass'),
(8, 2, 'Batang pasaway'),
(8, 3, 'Good boy'),
(8, 4, 'Baby Childish'),
(8, 5, 'Baby boys'),
(8, 6, 'Bronze ako'),
(8, 7, 'Silver Ako'),
(8, 8, 'Og ng terrorist'),
(8, 9, 'Kapitan Hydrax'),
(2, 12, 'Head EMS'),
(4, 14, 'Head Mechanic'),
(4, 4, 'Head Mechanic'),
(9, 9, 'Senior Master Sergeant'),
(9, 10, 'Chief Master Sergeant'),
(9, 8, 'Master Sergeant'),
(9, 7, 'Technical Sergeant'),
(9, 6, 'Staff Sergeant'),
(9, 5, 'Sergeant'),
(9, 19, 'Director General'),
(9, 17, 'Major General'),
(9, 18, 'Lieutenant General'),
(9, 16, 'Brigadier General'),
(9, 15, 'Colonel'),
(9, 14, 'Lieutenant Colonel'),
(9, 13, 'Major'),
(9, 12, 'Captain'),
(9, 11, 'First Chief MasterSergeant'),
(9, 4, 'Corporal'),
(9, 3, 'Private First Class'),
(9, 2, 'Private Second Class'),
(9, 1, 'Private'),
(9, 0, 'Trainee'),
(6, 6, 'FBI Agent l'),
(6, 5, 'FBI Officer lll'),
(6, 4, 'FBI Officer ll'),
(6, 3, 'FBI Officer l'),
(6, 2, 'FBI Cadet ll'),
(6, 1, 'FBI Cadet l'),
(5, 9, 'head news'),
(5, 1, '.'),
(4, 0, 'Trainee Mechanic'),
(4, 1, 'Junior Mechanic'),
(4, 2, 'General Mechanic'),
(4, 3, 'Senior Mechanic'),
(7, 4, 'Silent Assassin'),
(7, 3, 'Shadow Assassin'),
(7, 2, 'Hitman'),
(7, 1, 'Hoodlum'),
(6, 0, 'FBI Cadet'),
(6, 7, 'FBI Agent ll'),
(6, 8, 'FBI Agent lll'),
(6, 9, 'FBI Community Officer'),
(6, 10, 'FBI Community Agent'),
(6, 11, 'FBI Director l'),
(6, 12, 'FBI Director ll'),
(6, 13, 'FBI DEPUTY'),
(6, 14, 'FBI Leader'),
(2, 7, 'Director Surgeon'),
(2, 6, 'Executive Manager'),
(2, 5, 'Chief'),
(2, 4, 'Captain'),
(2, 3, 'Lead Specialist'),
(2, 2, 'Specialist'),
(2, 1, 'Intern'),
(2, 0, 'Trainee');

-- --------------------------------------------------------

--
-- Table structure for table `factions`
--

CREATE TABLE `factions` (
  `id` tinyint(2) DEFAULT NULL,
  `name` varchar(48) DEFAULT NULL,
  `shortname` tinytext DEFAULT NULL,
  `leader` varchar(24) DEFAULT 'No-one',
  `type` tinyint(2) DEFAULT 0,
  `color` int(10) DEFAULT -1,
  `rankcount` tinyint(2) DEFAULT 6,
  `lockerx` float DEFAULT 0,
  `lockery` float DEFAULT 0,
  `lockerz` float DEFAULT 0,
  `lockerinterior` tinyint(2) DEFAULT 0,
  `lockerworld` int(10) DEFAULT 0,
  `turftokens` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `factions`
--

INSERT INTO `factions` (`id`, `name`, `shortname`, `leader`, `type`, `color`, `rankcount`, `lockerx`, `lockery`, `lockerz`, `lockerinterior`, `lockerworld`, `turftokens`) VALUES
(1, 'City of Grim Police Department', 'COGPD', 'Pending', 1, 65280, 9, -1963.13, -840.026, 4441.2, 1, 1, 3),
(2, 'Grim Fire and Medical Department', 'GFMD', 'No-one', 2, -16777216, 8, 1269.58, -1307.11, 1061.14, 0, 1, 0),
(3, 'National Grim Government', 'GOV', 'No-one', 4, -5111808, 15, 280.481, 1832.45, 628.002, 0, 1, 0),
(4, 'Grim Mechanic and Autoparts', NULL, 'Lyell_Frost', 7, -2080440320, 5, -2035.16, -115.423, 1035.17, 3, 4000235, 0),
(5, 'Abs-cbs Department', NULL, 'No-one', 3, 33546752, 10, 256.008, 1778.29, 701.086, 0, 0, 0),
(6, 'Federal Bureau of Investigation', 'GFBI', 'Danzil Zavaroni', 6, 1701554688, 15, 255.385, 77.273, 1003.64, 6, 4000144, 10),
(7, 'Hitman Corporation', NULL, 'No-one', 5, -1482184960, 5, 2324.41, -1135.93, 1051.31, 12, 4000247, 0),
(8, 'Terrorist Syndicate', NULL, 'Anonymous', 8, 1428509184, 10, 232.554, 120.914, 1003.22, 10, 4000203, 999999999),
(9, 'Grim National Army', 'ARMY', 'Liquid Schmdt', 9, 6684672, 20, 1107.18, -306.028, 74.162, 0, 0, 10),
(10, 'JailGuards', NULL, 'Senichi_Oda', 10, -1, 6, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `factionskins`
--

CREATE TABLE `factionskins` (
  `id` tinyint(2) DEFAULT NULL,
  `slot` tinyint(2) DEFAULT NULL,
  `skinid` smallint(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `factionskins`
--

INSERT INTO `factionskins` (`id`, `slot`, `skinid`) VALUES
(1, 13, 288),
(1, 12, 283),
(1, 11, 282),
(1, 10, 281),
(1, 9, 280),
(1, 8, 284),
(1, 7, 285),
(1, 6, 300),
(1, 5, 71),
(1, 14, 305),
(1, 4, 0),
(1, 3, 0),
(9, 0, 287),
(9, 1, 179),
(9, 2, 191),
(9, 3, 287),
(5, 0, 164),
(6, 0, 165),
(6, 1, 166),
(6, 2, 286),
(6, 3, 294),
(2, 0, 274),
(2, 1, 275),
(2, 2, 276),
(2, 3, 277),
(2, 4, 278),
(2, 5, 279),
(2, 6, 308),
(4, 0, 35),
(4, 1, 42),
(4, 2, 50),
(4, 3, 268),
(4, 4, 198),
(7, 0, 100),
(7, 1, 102);

-- --------------------------------------------------------

--
-- Table structure for table `flags`
--

CREATE TABLE `flags` (
  `id` int(10) NOT NULL,
  `uid` int(10) DEFAULT NULL,
  `flaggedby` varchar(24) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `furniture`
--

CREATE TABLE `furniture` (
  `id` int(10) NOT NULL,
  `houseid` int(10) DEFAULT NULL,
  `modelid` smallint(5) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `price` int(10) DEFAULT NULL,
  `pos_x` float DEFAULT NULL,
  `pos_y` float DEFAULT NULL,
  `pos_z` float DEFAULT NULL,
  `rot_x` float DEFAULT NULL,
  `rot_y` float DEFAULT NULL,
  `rot_z` float DEFAULT NULL,
  `interior` tinyint(2) DEFAULT NULL,
  `world` int(10) DEFAULT NULL,
  `door_opened` tinyint(1) DEFAULT 0,
  `door_locked` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `furniture`
--

INSERT INTO `furniture` (`id`, `houseid`, `modelid`, `name`, `price`, `pos_x`, `pos_y`, `pos_z`, `rot_x`, `rot_y`, `rot_z`, `interior`, `world`, `door_opened`, `door_locked`) VALUES
(34, 96, 19128, 'Dance floor', 11000, 1756.9, -1814.08, 999.31, 0, 0, 357.454, 6, 1000096, 0, 0),
(37, 96, 19175, 'San Fierro frame', 1100, 1745.73, -1820.18, 1006.42, 0, 0, 90.11, 6, 1000096, 0, 0),
(38, 96, 19172, 'Los Santos frame', 1100, 1745.72, -1820.21, 1004.53, 0, 0, 89.739, 6, 1000096, 0, 0),
(39, 96, 2289, 'City View frame', 1100, 1755.54, -1819.46, 1001.88, 0, 0, 359.956, 6, 1000096, 0, 0),
(40, 96, 19173, 'Gant Bridge frame', 1100, 1743.69, -1820.22, 1001.93, 0, 0, 89.941, 6, 1000096, 0, 0),
(41, 96, 2288, 'Wooden frame', 1100, 1753.68, -1819.92, 1001.52, 0, 0, 0.412, 6, 1000096, 0, 0),
(42, 96, 2287, 'Sail Boat frame', 1100, 1751.9, -1819.9, 1001.57, 0, 0, 0.011, 6, 1000096, 0, 0),
(44, 96, 1709, 'Ultra wide beige couch', 12000, 1755.43, -1811.48, 999.349, 0, 0, 0.589, 6, 1000096, 0, 0),
(45, 96, 2114, 'Basketball', 150, 1761.19, -1815.2, 999.46, 0, 0, 172.223, 6, 1000096, 0, 0),
(47, 96, 2114, 'Basketball', 150, 1761.23, -1814.76, 999.46, 0, 0, 236.494, 6, 1000096, 0, 0),
(48, 96, 2558, 'Blue curtains', 150, 1761.26, -1815.89, 1001.05, 0, 0, -89.976, 6, 1000096, 0, 0),
(49, 96, 2558, 'Blue curtains', 150, 1761.27, -1813.63, 1001.05, 0, 0, -90.51, 6, 1000096, 0, 0),
(51, 96, 19612, 'Guitar amp 1', 1500, 1752.22, -1815.36, 1000.15, 0, 0, 88.948, 6, 1000096, 0, 0),
(52, 96, 2357, 'Wide dining table', 1500, 1752.48, -1817.09, 999.73, 0, 0, 89.38, 6, 1000096, 0, 0),
(53, 96, 2581, 'Sex toy rack', 1250, 1743.88, -1815.93, 1000.5, 0, 0, 92.21, 6, 1000096, 0, 0),
(54, 96, 2578, 'Sex magazine rack #1', 1250, 1743.75, -1812.95, 1000.64, 0, 0, 90.643, 6, 1000096, 0, 0),
(55, 96, 2579, 'Sex magazine rack #2', 1250, 1743.74, -1811.76, 1000.64, 0, 0, 89.672, 6, 1000096, 0, 0),
(56, 96, 1985, 'Punching bag', 150, 1753.26, -1822.31, 1006.9, 0, 0, 221.247, 6, 1000096, 0, 0),
(57, 96, 19813, 'Electrical outlet', 150, 1751.83, -1815.09, 1000.95, 0, 0, 88.805, 6, 1000096, 0, 0),
(58, 96, 18648, 'Blue neon tune', 100, 1751.62, -1813.42, 1001.97, 0, 0, 0.603, 6, 1000096, 0, 0),
(59, 96, 11710, 'Fire exit sign', 150, 1751.54, -1813.53, 1002.16, 0, 0, -87.354, 6, 1000096, 0, 0),
(60, 96, 11713, 'Fire alarm', 150, 1761.63, -1819.83, 1001.43, 0, 0, 179.893, 6, 1000096, 0, 0),
(62, 96, 946, 'Basketball court', 150, 1761.16, -1818.72, 1001.12, 0, 0, 45.685, 6, 1000096, 0, 0),
(64, 96, 2690, 'Fire extinguisher', 150, 1761.53, -1820.35, 1001.28, 0, 0, -87.819, 6, 1000096, 0, 0),
(67, 96, 19786, 'Large LCD television', 11000, 1755, -1819.32, 1002.01, 0, 0, -179.296, 6, 1000096, 0, 0),
(77, 92, 2132, 'White kitchen sink', 1500, 1744.05, -1814.69, 999.49, 0, 0, 91.25, 6, 1000092, 0, 0),
(78, 92, 2131, 'White kitchen fridge', 1500, 1743.86, -1812.58, 999.44, 0, 0, 90.519, 6, 1000092, 0, 0),
(79, 92, 2135, 'Wood kitchen stove', 1500, 1744.19, -1816.08, 999.315, 0, 0, 91.86, 6, 1000092, 0, 0),
(80, 92, 2763, 'Cluckin\' bell table', 1500, 1747.69, -1813.91, 999.719, 0, 0, 0.298, 6, 1000092, 0, 0),
(81, 92, 2763, 'Cluckin\' bell table', 1500, 1747.76, -1814.95, 999.73, 0, 0, 89.173, 6, 1000092, 0, 0),
(82, 92, 2763, 'Cluckin\' bell table', 1500, 1747.72, -1812.84, 999.71, 0, 0, 90.729, 6, 1000092, 0, 0),
(83, 92, 1811, 'Brown dining chair', 1250, 1749.35, -1814.89, 999.968, 0.5, -0.7, -0.684, 6, 1000092, 0, 0),
(84, 92, 1811, 'Brown dining chair', 1250, 1748.96, -1814.01, 999.968, 0.1, -0.4, -0.108, 6, 1000092, 0, 0),
(85, 92, 1811, 'Brown dining chair', 1250, 1748.92, -1812.85, 999.96, 0, 0, -2.862, 6, 1000092, 0, 0),
(86, 92, 1709, 'Ultra wide beige couch', 12000, 1755.22, -1817.04, 999.34, 0, 0, 89.319, 6, 1000092, 0, 0),
(87, 92, 1709, 'Ultra wide beige couch', 12000, 1758.54, -1811.7, 999.342, 2.3, 0.5, -85.758, 6, 1000092, 0, 0),
(88, 92, 1827, 'Round glass table', 1500, 1756.78, -1814.35, 999.329, 0, 0, 281.903, 6, 1000092, 0, 0),
(89, 92, 2811, 'Potted plant #16', 1150, 1756.79, -1814.32, 999.689, 0, 0, 282.876, 6, 1000092, 0, 0),
(90, 92, 1506, 'White door', 1100, 1754.26, -1817.21, 1003.86, 0, 0.6, 0.886, 6, 1000092, 0, 0),
(91, 92, 2298, 'Dark blue striped bed', 1500, 1752.04, -1815.41, 1003.83, 0, 0, 91.216, 6, 1000092, 0, 0),
(92, 92, 2105, 'Lamp', 150, 1748.44, -1815.58, 1004.81, 0, 0, 74.423, 6, 1000092, 0, 0),
(93, 92, 2811, 'Potted plant #16', 1150, 1748.39, -1812.81, 1004.4, 0, 0, 89.922, 6, 1000092, 0, 0),
(94, 92, 19786, 'Large LCD television', 11000, 1756.04, -1813.88, 1006.67, 0, 0, 270.652, 6, 1000092, 0, 0),
(95, 92, 1886, 'Surveillance camera', 150, 1757.55, -1822.65, 1007.85, 17.2, -2.5, -126.799, 6, 1000092, 0, 0),
(96, 92, 11706, 'Wastebin', 150, 1751.31, -1816.69, 999.43, 0, 0, 244.768, 6, 1000092, 0, 0),
(97, 92, 2517, 'Glass shower cabin', 1500, 1759.73, -1822.84, 1003.85, 0, 0, 87.518, 6, 1000092, 0, 0),
(98, 92, 2519, 'Bathtub', 1500, 1760.36, -1817.71, 1003.94, 0.0000001788, 0, 0.309, 6, 1000092, 0, 0),
(99, 92, 2008, 'Computer desk', 11000, 1754.29, -1811.62, 1003.85, 0, 0, -0.68, 6, 1000092, 0, 0),
(100, 92, 2356, 'Blue swivel chair', 1250, 1755.24, -1812.15, 1003.83, 0, 0, -0.09, 6, 1000092, 0, 0),
(101, 92, 1506, 'White door', 1100, 1758.12, -1818.48, 1003.82, 0, 0, -178.243, 6, 1000092, 1, 0),
(106, 109, 2298, 'Dark blue striped bed', 1500, 1288.13, -1124.84, 983.653, 0, 0, 0.113, 4, 1000109, 0, 0),
(107, 109, 2811, 'Potted plant #16', 1150, 1290.83, -1121.15, 984.112, 0, 0, 3.946, 4, 1000109, 0, 0),
(108, 109, 2105, 'Lamp', 150, 1288.04, -1121.16, 984.623, 0, 0, 0.876, 4, 1000109, 0, 0),
(109, 109, 2115, 'Plain wooden table', 1500, 1292.17, -1121.26, 983.563, 0, 0, -1.407, 4, 1000109, 0, 0),
(110, 109, 1665, 'Ashtray with cigar', 50, 1291.99, -1121.27, 984.413, 0, 0, 344.791, 4, 1000109, 0, 0),
(111, 109, 1543, 'Beer bottle', 10, 1292.25, -1121.08, 984.393, 0, 0, 345.668, 4, 1000109, 0, 0),
(112, 109, 1811, 'Brown dining chair', 1250, 1292.72, -1121.94, 984.143, 0, 0, -86.992, 4, 1000109, 0, 0),
(113, 109, 348, 'Deagle', 1500, 1293.14, -1121.43, 984.443, 0, 0, 19.884, 4, 1000109, 0, 0),
(114, 109, 19786, 'Large LCD television', 11000, 1289.94, -1131.09, 985.726, 0, 0, -179.733, 4, 1000109, 0, 0),
(115, 109, 1506, 'White door', 1100, 1286.06, -1125.98, 983.552, 0, 0, -89.91, 4, 1000109, 0, 0),
(116, 109, 2008, 'Computer desk', 11000, 1295.13, -1124.47, 983.562, 0, 0, -91.232, 4, 1000109, 0, 0),
(117, 109, 1811, 'Brown dining chair', 1250, 1294.48, -1125.33, 984.173, 0, 0, 178.953, 4, 1000109, 0, 0),
(118, 109, 1709, 'Ultra wide beige couch', 12000, 1291.9, -1134.71, 979.045, 0, 0, -88.064, 4, 1000109, 0, 0),
(119, 109, 2357, 'Wide dining table', 1500, 1291.23, -1136.95, 979.455, 0, 0, 90.085, 4, 1000109, 0, 0),
(120, 109, 2357, 'Wide dining table', 1500, 1289.91, -1136.95, 979.455, 0, 0, 89.975, 4, 1000109, 0, 0),
(122, 109, 19786, 'Large LCD television', 11000, 1290.22, -1131.15, 981.616, 0, 0, -0.135, 4, 1000109, 0, 0),
(123, 109, 2811, 'Potted plant #16', 1150, 1290.53, -1136.77, 979.825, 0, 0, 171.081, 4, 1000109, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `gangranks`
--

CREATE TABLE `gangranks` (
  `id` tinyint(2) DEFAULT NULL,
  `rank` tinyint(2) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gangranks`
--

INSERT INTO `gangranks` (`id`, `rank`, `name`) VALUES
(1, 6, 'Patron'),
(1, 5, 'under patron'),
(1, 4, 'Cripz'),
(1, 3, 'OG'),
(1, 2, 'Prospect'),
(1, 1, 'Traine');

-- --------------------------------------------------------

--
-- Table structure for table `gangs`
--

CREATE TABLE `gangs` (
  `id` tinyint(2) DEFAULT NULL,
  `name` varchar(32) DEFAULT 'None',
  `motd` varchar(128) DEFAULT 'None',
  `leader` varchar(24) DEFAULT 'No-one',
  `color` int(10) DEFAULT -256,
  `strikes` tinyint(1) DEFAULT 0,
  `level` tinyint(2) DEFAULT 1,
  `points` int(10) DEFAULT 0,
  `turftokens` int(10) DEFAULT 0,
  `stash_x` float DEFAULT 0,
  `stash_y` float DEFAULT 0,
  `stash_z` float DEFAULT 0,
  `stashinterior` tinyint(2) DEFAULT 0,
  `stashworld` int(10) DEFAULT 0,
  `cash` int(10) DEFAULT 0,
  `materials` int(10) DEFAULT 0,
  `pot` int(10) DEFAULT 0,
  `crack` int(10) DEFAULT 0,
  `meth` int(10) DEFAULT 0,
  `painkillers` int(10) DEFAULT 0,
  `pistolammo` int(10) DEFAULT 0,
  `shotgunammo` int(10) DEFAULT 0,
  `smgammo` int(10) DEFAULT 0,
  `arammo` int(10) DEFAULT 0,
  `rifleammo` int(10) DEFAULT 0,
  `hpammo` int(10) DEFAULT 0,
  `poisonammo` int(10) DEFAULT 0,
  `fmjammo` int(10) DEFAULT 0,
  `weapon_9mm` int(10) DEFAULT 0,
  `weapon_sdpistol` int(10) DEFAULT 0,
  `weapon_deagle` int(10) DEFAULT 0,
  `weapon_shotgun` int(10) DEFAULT 0,
  `weapon_spas12` int(10) DEFAULT 0,
  `weapon_sawnoff` int(10) DEFAULT 0,
  `weapon_tec9` int(10) DEFAULT 0,
  `weapon_uzi` int(10) DEFAULT 0,
  `weapon_mp5` int(10) DEFAULT 0,
  `weapon_ak47` int(10) DEFAULT 0,
  `weapon_m4` int(10) DEFAULT 0,
  `weapon_rifle` int(10) DEFAULT 0,
  `weapon_sniper` int(10) DEFAULT 0,
  `weapon_molotov` int(10) DEFAULT 0,
  `armsdealer` tinyint(1) DEFAULT 0,
  `drugdealer` tinyint(1) DEFAULT 0,
  `arms_x` float DEFAULT 0,
  `arms_y` float DEFAULT 0,
  `arms_z` float DEFAULT 0,
  `arms_a` float DEFAULT 0,
  `drug_x` float DEFAULT 0,
  `drug_y` float DEFAULT 0,
  `drug_z` float DEFAULT 0,
  `drug_a` float DEFAULT 0,
  `armsworld` int(10) DEFAULT 0,
  `drugworld` int(10) DEFAULT 0,
  `drugpot` int(10) DEFAULT 0,
  `drugcrack` int(10) DEFAULT 0,
  `drugmeth` int(10) DEFAULT 0,
  `armsmaterials` int(10) DEFAULT 0,
  `armsprice_1` int(10) DEFAULT 0,
  `armsprice_2` int(10) DEFAULT 0,
  `armsprice_3` int(10) DEFAULT 0,
  `armsprice_4` int(10) DEFAULT 0,
  `armsprice_5` int(10) DEFAULT 0,
  `armsprice_6` int(10) DEFAULT 0,
  `armsprice_7` int(10) DEFAULT 0,
  `armsprice_8` int(10) DEFAULT 0,
  `armsprice_9` int(10) NOT NULL DEFAULT 0,
  `armsprice_10` int(10) NOT NULL DEFAULT 0,
  `armsprice_11` int(10) NOT NULL DEFAULT 0,
  `armsprice_12` tinyint(2) NOT NULL DEFAULT 0,
  `pot_price` int(10) DEFAULT 0,
  `crack_price` int(10) DEFAULT 0,
  `meth_price` int(10) DEFAULT 0,
  `armshpammo` int(10) DEFAULT 0,
  `armspoisonammo` int(10) DEFAULT 0,
  `armsfmjammo` int(10) DEFAULT 0,
  `alliance` int(10) NOT NULL DEFAULT -1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gangs`
--

INSERT INTO `gangs` (`id`, `name`, `motd`, `leader`, `color`, `strikes`, `level`, `points`, `turftokens`, `stash_x`, `stash_y`, `stash_z`, `stashinterior`, `stashworld`, `cash`, `materials`, `pot`, `crack`, `meth`, `painkillers`, `pistolammo`, `shotgunammo`, `smgammo`, `arammo`, `rifleammo`, `hpammo`, `poisonammo`, `fmjammo`, `weapon_9mm`, `weapon_sdpistol`, `weapon_deagle`, `weapon_shotgun`, `weapon_spas12`, `weapon_sawnoff`, `weapon_tec9`, `weapon_uzi`, `weapon_mp5`, `weapon_ak47`, `weapon_m4`, `weapon_rifle`, `weapon_sniper`, `weapon_molotov`, `armsdealer`, `drugdealer`, `arms_x`, `arms_y`, `arms_z`, `arms_a`, `drug_x`, `drug_y`, `drug_z`, `drug_a`, `armsworld`, `drugworld`, `drugpot`, `drugcrack`, `drugmeth`, `armsmaterials`, `armsprice_1`, `armsprice_2`, `armsprice_3`, `armsprice_4`, `armsprice_5`, `armsprice_6`, `armsprice_7`, `armsprice_8`, `armsprice_9`, `armsprice_10`, `armsprice_11`, `armsprice_12`, `pot_price`, `crack_price`, `meth_price`, `armshpammo`, `armspoisonammo`, `armsfmjammo`, `alliance`) VALUES
(1, 'Familia De Vallas', 'None', 'isac', -256, 0, 1, 2, 20, 236.043, 1118.53, 1084.99, 5, 4000250, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1);

-- --------------------------------------------------------

--
-- Table structure for table `gangskins`
--

CREATE TABLE `gangskins` (
  `id` tinyint(2) DEFAULT NULL,
  `slot` tinyint(2) DEFAULT NULL,
  `skinid` smallint(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gangskins`
--

INSERT INTO `gangskins` (`id`, `slot`, `skinid`) VALUES
(1, 0, 103),
(1, 1, 102),
(1, 2, 104);

-- --------------------------------------------------------

--
-- Table structure for table `garages`
--

CREATE TABLE `garages` (
  `id` int(10) NOT NULL,
  `ownerid` int(10) DEFAULT 0,
  `owner` varchar(24) DEFAULT NULL,
  `type` tinyint(1) DEFAULT 0,
  `price` int(10) DEFAULT 0,
  `locked` tinyint(1) DEFAULT 0,
  `timestamp` int(10) DEFAULT 0,
  `pos_x` float DEFAULT 0,
  `pos_y` float DEFAULT 0,
  `pos_z` float DEFAULT 0,
  `pos_a` float DEFAULT 0,
  `exit_x` float DEFAULT 0,
  `exit_y` float DEFAULT 0,
  `exit_z` float DEFAULT 0,
  `exit_a` float DEFAULT 0,
  `world` int(10) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `garages`
--

INSERT INTO `garages` (`id`, `ownerid`, `owner`, `type`, `price`, `locked`, `timestamp`, `pos_x`, `pos_y`, `pos_z`, `pos_a`, `exit_x`, `exit_y`, `exit_z`, `exit_a`, `world`) VALUES
(1, 32, 'Senichi_Oda', 1, 250000, 0, 1656839440, 179.84, -2258.38, 14.925, 311.21, 177.583, -2260.36, 14.925, 131.21, 2000001),
(3, 0, NULL, 2, 2147483647, 0, 0, 750.626, -554.583, 17.343, 172.868, 750.998, -551.606, 17.343, -7.132, 2000003),
(5, 0, NULL, 1, 9999999, 0, 0, 786.262, -490.413, 17.344, 1.105, 786.319, -493.412, 17.344, -178.895, 2000005),
(10, 95, 'Brian_Oconner', 1, 125000, 1, 1657006658, 277.779, -52.799, 1.578, 351.736, 277.348, -55.768, 1.578, 171.736, 2000010),
(11, 5, 'Dom_Toretto', 1, 125000, 0, 1657062715, 287.426, -51.537, 1.578, 357.805, 287.311, -54.535, 1.578, 177.805, 2000011);

-- --------------------------------------------------------

--
-- Table structure for table `gates`
--

CREATE TABLE `gates` (
  `gateID` int(12) NOT NULL,
  `gateModel` int(12) DEFAULT 980,
  `gateSpeed` float DEFAULT 0,
  `gateTime` int(12) DEFAULT 0,
  `gateX` float DEFAULT 0,
  `gateY` float DEFAULT 0,
  `gateZ` float DEFAULT 0,
  `gateRX` float DEFAULT 0,
  `gateRY` float DEFAULT 0,
  `gateRZ` float DEFAULT 0,
  `gateInterior` int(12) DEFAULT 0,
  `gateWorld` int(12) DEFAULT 0,
  `gateMoveX` float DEFAULT 0,
  `gateMoveY` float DEFAULT 0,
  `gateMoveZ` float DEFAULT 0,
  `gateMoveRX` float DEFAULT 0,
  `gateMoveRY` float DEFAULT 0,
  `gateMoveRZ` float DEFAULT 0,
  `gateLinkID` int(12) DEFAULT 0,
  `gateFaction` int(12) DEFAULT 0,
  `gatePass` varchar(32) DEFAULT NULL,
  `gateRadius` float DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gates`
--

INSERT INTO `gates` (`gateID`, `gateModel`, `gateSpeed`, `gateTime`, `gateX`, `gateY`, `gateZ`, `gateRX`, `gateRY`, `gateRZ`, `gateInterior`, `gateWorld`, `gateMoveX`, `gateMoveY`, `gateMoveZ`, `gateMoveRX`, `gateMoveRY`, `gateMoveRZ`, `gateLinkID`, `gateFaction`, `gatePass`, `gateRadius`) VALUES
(3, 0, 10, 0, 994.738, -1337.57, 15.0628, 0, 0, 3.8291, 0, 0, 994.738, -1337.57, 9.5527, 0, 0, 3.8291, -1, -1, '123', 5),
(13, 986, 8, 0, 768.231, -1418.4, 14.2419, 0, 0, 0.5217, 0, 0, 768.231, -1418.4, 6.6419, 0, 0, 0.5217, 138, -1, 'flaphq', 10),
(18, 19913, 3, 0, 724.339, -1525.92, 5.0443, 0, 0, -179.592, 0, 0, 724.339, -1525.92, 13.6543, 0, 0, -179.592, -1, -1, 'FLAPHQ', 20),
(22, 1495, 3, 0, 1847.32, -1722.57, 5201.53, 0, 0, 90.0273, 0, 0, 1847.32, -1722.57, 5201.53, 0, 0, -176.372, -1, 1, '', 5),
(23, 19303, 3, 0, 1843.85, -1714.28, 5202.8, 0, 0, -0.0621, 0, 0, 1845.22, -1714.28, 5202.8, 0, 0, -0.0621, -1, -1, '', 1),
(24, 19303, 3, 0, 1840.62, -1714.3, 5202.8, 0, 0, 1.5412, 0, 0, 1842.05, -1714.26, 5202.8, 0, 0, 1.5412, -1, -1, '', 1),
(25, 19303, 3, 0, 1837.42, -1714.29, 5202.8, 0, 0, -0.4263, 0, 0, 1838.84, -1714.3, 5202.8, 0, 0, -0.4263, -1, -1, '', 1),
(26, 19303, 3, 0, 1843.63, -1729.19, 5202.8, 0, 0, 179.372, 0, 0, 1842.2, -1729.17, 5202.8, 0, 0, 179.372, -1, -1, '', 1),
(27, 19303, 3, 0, 1840.46, -1729.2, 5202.79, 0, 0, 179.472, 0, 0, 1838.99, -1729.19, 5202.79, 0, 0, 179.472, -1, -1, '', 1),
(28, 19303, 3, 0, 1837.24, -1729.22, 5202.82, 0, 0, 179.932, 0, 0, 1835.78, -1729.22, 5202.82, 0, 0, 179.932, -1, -1, '', 1),
(29, 19303, 3, 0, 1843.85, -1714.33, 5209.9, 0, 0, 0.15, 0, 0, 1845.27, -1714.33, 5209.9, 0, 0, 0.15, -1, -1, '', 1),
(31, 19303, 3, 0, 1830.81, -1729.21, 5209.91, 0, 0, -179.653, 6, 0, 1829.4, -1729.22, 5209.91, 0, 0, -179.653, -1, -1, '', 1),
(32, 19303, 3, 0, 1834.04, -1729.2, 5209.91, 0, 0, 179.814, 6, 0, 1832.61, -1729.19, 5209.91, 0, 0, 179.814, -1, -1, '', 1),
(34, 19303, 3, 0, 1834.03, -1729.21, 5202.8, 0, 0, -178.137, 0, 0, 1832.6, -1729.26, 5202.8, 0, 0, -178.137, -1, -1, '', 1),
(35, 19303, 3, 0, 1830.83, -1729.21, 5202.8, 0, 0, -179.534, 0, 0, 1829.36, -1729.22, 5202.8, 0, 0, -179.534, -1, -1, '', 1),
(36, 19303, 3, 0, 1827.67, -1729.16, 5202.8, 0, 0, 180.386, 0, 0, 1826.21, -1729.17, 5202.8, 0, 0, 180.386, -1, -1, '', 1),
(37, 19303, 3, 0, 1834.19, -1714.29, 5202.8, 0, 0, 0.0559, 0, 0, 1835.63, -1714.29, 5202.8, 0, 0, 0.0559, -1, -1, '', 1),
(38, 19303, 3, 0, 1827.8, -1714.34, 5202.79, 0, 0, -0.1919, 0, 0, 1829.24, -1714.34, 5202.79, 0, 0, -0.1919, -1, -1, '', 1),
(39, 19303, 3, 0, 1831.03, -1714.29, 5202.82, 0, 0, 1.6642, 0, 0, 1832.51, -1714.25, 5202.82, 0, 0, 1.6642, -1, -1, '', 1),
(40, 19303, 3, 0, 1827.62, -1729.21, 5206.42, 0, 0, -179.935, 0, 0, 1826.12, -1729.21, 5206.42, 0, 0, -179.935, -1, -1, '', 1),
(41, 19303, 3, 0, 1827.8, -1714.31, 5206.42, 0, 0, 1.3177, 0, 0, 1829.25, -1714.28, 5206.42, 0, 0, 1.3177, -1, -1, '', 1),
(42, 19303, 3, 0, 1830.81, -1729.22, 5206.42, 0, 0, 179.754, 0, 0, 1829.33, -1729.22, 5206.42, 0, 0, 179.754, -1, -1, '', 1),
(43, 19303, 3, 0, 1831, -1714.3, 5206.44, 0, 0, 0.2244, 0, 0, 1832.47, -1714.29, 5206.44, 0, 0, 0.2244, -1, -1, '', 1),
(44, 19303, 3, 0, 1834, -1729.22, 5206.43, 0, 0, -179.906, 0, 0, 1832.53, -1729.22, 5206.43, 0, 0, -179.906, -1, -1, '', 1),
(45, 19303, 3, 0, 1834.21, -1714.3, 5206.43, 0, 0, 0.871, 0, 0, 1835.66, -1714.28, 5206.43, 0, 0, 0.871, -1, -1, '', 1),
(46, 19303, 3, 0, 1837.21, -1729.17, 5206.42, 0, 0, 179.944, 0, 0, 1835.73, -1729.17, 5206.42, 0, 0, 179.944, -1, -1, '', 1),
(47, 19303, 3, 0, 1840.39, -1729.24, 5206.42, 0, 0, -179.754, 0, 0, 1838.93, -1729.25, 5206.42, 0, 0, -179.754, -1, -1, '', 1),
(48, 19303, 3, 0, 1837.4, -1714.34, 5206.42, 0, 0, 0.2601, 0, 0, 1838.83, -1714.34, 5206.42, 0, 0, 0.2601, -1, -1, '', 1),
(49, 19303, 3, 0, 1843.61, -1729.22, 5206.44, 0, 0, 179.925, 0, 0, 1842.12, -1729.22, 5206.44, 0, 0, 179.925, -1, -1, '', 1),
(50, 19303, 3, 0, 1840.6, -1714.31, 5206.44, 0, 0, 0.3244, 0, 0, 1842.07, -1714.3, 5206.44, 0, 0, 0.3244, -1, -1, '', 1),
(52, 19303, 3, 0, 1843.8, -1714.33, 5206.41, 0, 0, -0.3555, 0, 0, 1845.25, -1714.34, 5206.41, 0, 0, -0.3555, -1, -1, '', 1),
(53, 19303, 1, 0, 1837.21, -1729.23, 5209.92, 0, 0, -179.872, 0, 0, 1835.75, -1729.23, 5209.92, 0, 0, -179.872, -1, -1, '', 1),
(54, 19303, 1, 0, 1840.4, -1729.16, 5209.91, 0, 0, 180.375, 0, 0, 1839, -1729.17, 5209.91, 0, 0, 180.375, -1, -1, '', 1),
(55, 19303, 1, 0, 1843.64, -1729.16, 5209.92, 0, 0, -179.594, 0, 0, 1842.17, -1729.17, 5209.92, 0, 0, -179.594, -1, -1, '', 1),
(56, 19303, 3, 0, 1827.84, -1714.27, 5209.92, 0, 0, 0.1928, 0, 0, 1829.31, -1714.26, 5209.92, 0, 0, 0.1928, -1, -1, '', 1),
(57, 19303, 3, 0, 1827.64, -1729.21, 5209.9, 0, 0, 179.904, 0, 0, 1826.18, -1729.21, 5209.9, 0, 0, 179.904, -1, -1, '', 1),
(58, 19303, 3, 0, 1831.03, -1714.27, 5209.93, 0, 0, -0.2984, 0, 0, 1832.5, -1714.28, 5209.93, 0, 0, -0.2984, -1, -1, '', 1),
(59, 19303, 3, 0, 1830.83, -1729.21, 5209.93, 0, 0, 179.877, 0, 0, 1829.4, -1729.21, 5209.93, 0, 0, 179.877, -1, -1, '', 1),
(60, 19303, 3, 0, 1834.23, -1714.24, 5209.92, 0, 0, 0.4475, 0, 0, 1835.7, -1714.23, 5209.92, 0, 0, 0.4475, -1, -1, '', 1),
(61, 19303, 3, 0, 1834.03, -1729.23, 5209.88, 0, 0, -179.823, 0, 0, 1832.58, -1729.24, 5209.88, 0, 0, -179.823, -1, -1, '', 1),
(62, 19303, 1, 0, 1837.43, -1714.34, 5209.91, 0, 0, -0.969, 0, 0, 1838.86, -1714.35, 5209.91, 0, 0, 0.0309, -1, -1, '', 1),
(63, 19303, 3, 0, 1840.63, -1714.24, 5209.94, 0, 0, -0.5563, 0, 0, 1842.11, -1714.26, 5209.94, 0, 0, -0.5563, -1, -1, '', 1),
(64, 2945, 3, 0, 1824.52, -1724.36, 5210.04, 0, 0, 90.4699, 0, 0, 1824.5, -1721.93, 5210.04, 0, 0, 90.4699, -1, -1, 'NWRPPRISON', 5),
(66, 980, 3, 0, 1043.9, -1026.01, 32.1015, 0, 0, -0.0151, 0, 0, 1043.9, -1026.01, 28.4015, 0, 0, -0.0151, -1, -1, 'ADMIN', 5),
(67, 980, 3, 0, 2071.56, -1834.2, 14.6668, 0, 0, 89.7654, 0, 0, 2071.56, -1834.2, 9.7268, 0, 0, 89.7654, -1, -1, 'ADMIN', 5),
(68, 980, 3, 0, 1024.91, -1029.38, 32.4786, 0, 0, 0.0422, 0, 0, 1024.91, -1029.38, 28.4286, 0, 0, 0.0422, -1, -1, 'ADMIN', 5),
(69, 980, 3, 0, 488.499, -1735.3, 11.8919, 0, 0, 172.137, 0, 0, 488.499, -1735.3, 7.3919, 0, 0, 172.137, -1, -1, 'ADMIN', 5),
(70, 980, 3, 0, 1843.24, -1852.66, 13.2328, 0, 0, 89.9752, 0, 0, 1843.24, -1852.66, 9.6228, 0, 0, 89.9752, -1, -1, '8ballautos', 5),
(71, 980, 3, 0, 2643.23, -2039.15, 13.554, 0, 0, 0.1352, 0, 0, 2643.23, -2039.15, 9.814, 0, 0, 0.1352, -1, -1, 'lowride', 5),
(76, 2933, 3, 0, 1003.33, -644.343, 122.177, 0, -1.8998, -157.937, 0, 0, 1003.17, -644.407, 117, 0, -1.8998, -157.937, 13, -1, '123', 15),
(77, 980, 3, 0, 786.141, -1152.43, 25.3463, 0, 0, 270.963, 0, 0, 786.141, -1152.43, 18.9662, 0, 0, 270.963, -1, -1, 'NICKYYY', 5),
(78, 16775, 0, 0, 659.892, -1227.13, 15.5876, 0, 0, 66.4244, 0, 0, 659.892, -1227.13, 5.5876, -1000, -1000, -1000, -1, -1, '', 0),
(81, 980, 3, 0, 1590.3, -1638.12, 14.7629, 0, 0, -0.0478, 0, 0, 1590.3, -1638.12, 6.7628, 0, 0, -0.0478, -1, 1, '', 5),
(94, 19913, 0, 0, 727.154, -1526.03, -6.2685, 0, 0, 179.867, 0, 0, 727.154, -1526.17, -10.5684, -1000, -1000, -1000, -1, -1, '', 0),
(97, 980, 3, 0, 261.883, -1231.48, 74.3485, 0, -5.5, 35.305, 0, 0, 262.224, -1231.24, 70.0085, 0, -5.5, 35.305, -1, -1, 'nxpsolid', 5),
(99, 980, 3, 0, 283.309, -1542.59, 26.3263, 0, 0, 145.113, 0, 0, 291.214, -1548.09, 26.3263, 0, 0, 145.113, -1, 6, '', 5),
(100, 980, 3, 0, 321.163, -1488.52, 26.2837, 0, 0, -34.6674, 0, 0, 313.308, -1483.09, 26.2837, 0, 0, -34.6674, -1, 6, '', 5),
(106, 980, 3, 0, 263.762, -1333.96, 55.008, 0, 0, 37.798, 0, 0, 256.231, -1339.8, 54.848, 0, 0, 37.798, -1, -1, '2003', 5),
(108, 980, 3, 0, 321.587, -1188.12, 77.2244, 0, 0, 216.111, 0, 0, 321.587, -1188.12, 67.2244, -1000, -1000, -1000, -1, -1, '0425', 5),
(111, 980, 3, 0, 2345.41, -873.645, 114.521, 0, 0, 7.461, 0, 0, 2345.41, -873.645, 109.921, 0, 0, 7.461, -1, -1, 'sicario', 5),
(112, 980, 3, 0, 2185.11, -1776.37, 15.1682, 0, 0, 0.3386, 0, 0, 2185.11, -1776.37, 9.6484, 0, 0, 0.3386, -1, -1, 'COGRP', 5),
(125, 980, 3, 0, 777.759, -1384.64, 13.9604, 0, 0, 179.907, 0, 0, 777.759, -1384.64, 9.9704, 0, 0, 179.907, -1, 3, '', 5),
(126, 980, 3, 0, 777.729, -1330.33, 13.7529, 0, 0, -0.2932, 0, 0, 777.729, -1330.33, 9.7829, 0, 0, -0.2932, -1, 3, '', 5),
(127, 980, 3, 0, 708.296, -1417.2, 15.1415, 0, 0, -0.4726, 0, 0, 708.296, -1417.2, 9.7915, 0, 0, -0.4726, -1, 5, 'hitman', 5),
(128, 980, 3, 0, 745.594, -1475.85, 6.1985, 0, 0, 190.733, 0, 0, 745.594, -1475.85, -3.8014, -1000, -1000, -1000, -1, -1, 'DM4LIFE', 5),
(129, 980, 3, 0, -2424.98, 1027.95, 51.8406, 0, 0, 179.467, 0, 0, -2424.98, 1027.95, 50.2906, 0, 0, 179.467, -1, -1, '', 5),
(131, 8229, 3, 0, -2045.92, -102.567, 36.684, 0, 0, -0.8983, 0, 0, -2045.92, -102.567, 32.034, 0, 0, -0.8983, -1, 7, 'mech999', 20),
(133, 980, 3, 0, -2596.41, 328.775, 2.5284, 0, 0, 90.1387, 0, 0, -2596.41, 328.775, 0.5984, 0, 0, 90.1387, -1, -1, '1', 5),
(134, 980, 3, 0, -2548.95, 320.394, 17.7462, 0, 0, -91.4054, 0, 0, -2548.95, 320.394, 15.8562, 0, 0, -91.4054, -1, -1, '2', 5),
(135, 980, 10, 0, 135.37, 1941.3, 20.9062, 0, 0, 1.1576, 0, 0, 146.708, 1941.53, 20.9062, 0, 0, 1.1576, -1, 9, 'cogrp', 5),
(136, 980, 3, 0, 2335.56, 2443.64, 7.1138, 0, 0, -119.184, 0, 0, 2335.56, 2443.64, 2.0838, 0, 0, -119.184, -1, 12, '', 5),
(137, 980, 3, 0, 2237.43, 2453.05, 9.6718, 0, 0, 89.7891, 0, 0, 2237.47, 2463.57, 9.6718, 0, 0, 89.7891, -1, 12, '', 5),
(138, 980, 3, 0, -57.8677, -1589.4, 4.0053, 0, 0, 226.585, 0, 0, -57.8677, -1589.4, -1.3446, 0, 0, 226.585, -1, -1, '', 5),
(139, 980, 3, 0, -2811.28, -1524, 140.844, 0, 0, -89.5768, 0, 0, -2811.28, -1524, 136.884, 0, 0, -89.5768, -1, 8, '', 5),
(140, 980, 3, 0, -2821.11, -1520.98, 140.844, 0, 0, 90.998, 0, 0, -2821.11, -1520.98, 136.684, 0, 0, 90.998, -1, 8, '', 5),
(141, 980, 5, 0, 553.708, -1886.78, 5.3143, 0, 0, -5.3642, 0, 0, 553.708, -1886.78, -0.2755, 0, 0, -5.3642, -1, -1, '', 5),
(142, 1506, 3, 0, 547.915, -1947.97, 13.9112, 0, 0, 85.8607, 0, 0, 547.871, -1947.9, 4.8612, -1000, -1000, -1000, -1, -1, '', 5),
(143, 1506, 3, 0, 547.749, -1949.47, 13.8409, 0, -0.2999, 87.4606, 0, 0, 549.693, -1950.73, 4.8612, -1000, -1000, -1000, -1, -1, '', 5),
(146, 710, 3, 0, 1540.14, -1671.65, 13.3828, 0, 0, 272.395, 0, 0, 1540.14, -1671.65, 3.3828, -1000, -1000, -1000, -1, -1, '', 5),
(147, 710, 3, 0, 1540.44, -1679.39, 13.3828, 0, 0, 269.881, 0, 0, 1540.44, -1679.39, 3.3828, -1000, -1000, -1000, -1, -1, 'ahaahahh', 5),
(149, 710, 3, 0, 1137.9, -1381.03, 14.2812, 0, 0, 287.282, 0, 0, 1137.9, -1381.03, 4.2812, -1000, -1000, -1000, -1, -1, 'hhhhhahhaa', 5),
(150, 710, 3, 0, 1110.36, -1378.14, 13.7812, 0, 0, 325.317, 0, 0, 1110.36, -1378.14, 3.7812, -1000, -1000, -1000, -1, -1, 'ahhahahhahh', 5),
(151, 3657, 3, 0, 1131.29, -1382.38, 13.7542, 0, 0, 359.185, 0, 0, 1133.15, -1381.88, 3.7812, -1000, -1000, -1000, -1, -1, 'grims', 5),
(152, 710, 3, 0, 1126.05, -1380.36, 14.2812, 0, 0, 353.703, 0, 0, 1126.05, -1380.36, 4.2812, -1000, -1000, -1000, -1, -1, 'grims', 5),
(153, 3472, 3, 0, 1135.19, -1476.5, 15.7552, 0, 0, 89.7683, 0, 0, 1131.01, -1382.23, 3.7812, -1000, -1000, -1000, -1, -1, '', 5),
(154, 1331, 3, 0, 1136.63, -1383, 13.7798, 0, 0, 0.4515, 0, 0, 1136.63, -1383, 3.7798, -1000, -1000, -1000, -1, -1, 'grims', 5),
(163, 710, 3, 0, 379.492, -2088.9, 7.8359, 0, 0, 178.79, 0, 0, 378.308, -2089.61, -2.164, -1000, -1000, -1000, -1, -1, 'grims', 5),
(164, 710, 3, 0, 386.555, -2088.71, 7.8359, 0, 0, 175.59, 0, 0, 386.983, -2089.05, -2.164, -1000, -1000, -1000, -1, -1, 'grims', 5),
(165, 710, 3, 0, 394.313, -2088.55, 7.8359, 0, 0, 183.363, 0, 0, 394.313, -2088.55, -2.164, -1000, -1000, -1000, -1, -1, 'grims', 5),
(166, 710, 3, 0, 401.493, -2088.58, 7.8359, 0, 0, 182.694, 0, 0, 401.493, -2088.58, -2.164, -1000, -1000, -1000, -1, -1, 'grims', 5),
(168, 710, 3, 0, 364.636, -2088.7, 7.8359, 0, 0, 179.076, 0, 0, 364.636, -2088.7, -2.164, -1000, -1000, -1000, -1, -1, 'grims', 5),
(169, 710, 3, 0, 860.341, -1201.42, 16.9765, 0, 0, 102.922, 0, 0, 860.341, -1201.42, 6.9765, -1000, -1000, -1000, -1, -1, 'hhahhah', 5),
(173, 711, 3, 0, 928.753, -1235.44, 17.968, 0, 0, 130.18, 0, 0, 927.512, -1220.92, 6.9141, -1000, -1000, -1000, -1, -1, 'grims', 5),
(176, 980, 5, 5000, 1012.56, -2068.13, 14.7566, 0, 0, -10.199, 0, 0, 1012.56, -2068.13, 9.4864, 0, 0, -10.199, 3, -1, '2003', 10),
(179, 980, 3, 0, 1270.58, -1652.84, 13.5468, 0, 0, 271.788, 0, 0, 1270.58, -1652.84, 3.5468, -1000, -1000, -1000, -1, -1, '', 5),
(181, 980, 3, 0, 1257.78, -1653.03, 14.7418, 0, 0, 269.894, 0, 4000232, 1258.8, -1652.79, 2.6717, -1000, -1000, -1000, -1, -1, '2003', 5),
(185, 13590, 3, 0, 749.257, -465.17, 16.3359, 0, 0, 358.331, 0, 0, 727.336, -479.852, 6.3359, -1000, -1000, -1000, -1, -1, '128344544433333338', 5),
(187, 715, 3, 0, 709.383, -473.88, 22.3773, 0, 0, 51.8739, 0, 0, 709.637, -476.457, 6.3359, -1000, -1000, -1000, -1, -1, '17374748338', 5),
(188, 715, 3, 0, 694.329, -473.303, 22.8448, 0, 0, 88.9504, 0, 0, 693.321, -474.936, 6.3359, -1000, -1000, -1000, -1, -1, '1273737383838', 5),
(190, 19870, 3, 0, 717.63, -462.532, 16.7159, 0, 0, 0.0766, 0, 0, 730.912, -626.252, 20.7759, 0, 0, -143.051, -1, -1, '2627222999227333928(7332229', 5),
(191, 711, 3, 0, 739.714, -480.091, 21.2158, 0, 0, 268.915, 0, 0, 739.714, -480.091, 6.3358, -1000, -1000, -1000, -1, -1, '128292727', 5),
(192, 711, 3, 0, 729.833, -467.188, 19.3307, 0, 0, 46.9357, 0, 0, 729.833, -467.188, 9.3307, -1000, -1000, -1000, -1, -1, '2628928272', 5),
(194, 715, 3, 0, 726.164, -469.852, 22.8953, 0, 0, 272.465, 0, 0, 724.357, -471.556, 6.3359, -1000, -1000, -1000, -1, -1, 'hessjsiesjsis', 5),
(196, 715, 3, 0, 731.486, -481.226, 22.7292, 0, 0, 287.183, 0, 0, 720.959, -481.632, 6.3359, -1000, -1000, -1000, -1, -1, 'jduudidi', 5),
(201, 980, 5, 0, 702.098, -471.96, 18.0733, 0, 0, 181.705, 0, 0, 701.754, -471.749, 7.4212, -1000, -1000, -1000, -1, 7, 'mech', 5),
(202, 980, 10, 0, 110.974, -1701.06, 10.8043, 0, 0, 102.629, 0, 0, 110.974, -1701.06, 5.6843, 0, 0, 102.629, -1, -1, '', 5),
(204, 715, 3, 0, 823.431, -516.949, 21.9237, 0, 0, 358.01, 0, 0, 821.834, -519.137, 6.3359, -1000, -1000, -1000, -1, -1, '182739299$>;2::8>#9', 5),
(211, 980, 3, 0, 2539.52, 2823.17, 12.6103, 0, 0, 90.0841, 0, 0, 2539.82, 2823.17, 0.8203, -1000, -1000, -1000, -1, -1, '', 5);

-- --------------------------------------------------------

--
-- Table structure for table `graffiti`
--

CREATE TABLE `graffiti` (
  `graffitiID` int(12) DEFAULT NULL,
  `graffitiX` float DEFAULT 0,
  `graffitiY` float DEFAULT 0,
  `graffitiZ` float DEFAULT 0,
  `graffitiAngle` float DEFAULT 0,
  `graffitiColor` int(12) DEFAULT 0,
  `graffitiText` varchar(64) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `houses`
--

CREATE TABLE `houses` (
  `id` int(10) NOT NULL,
  `ownerid` int(10) DEFAULT 0,
  `owner` varchar(24) DEFAULT 'Nobody',
  `type` tinyint(2) DEFAULT 0,
  `price` int(10) DEFAULT 0,
  `rentprice` int(10) DEFAULT 0,
  `level` tinyint(2) DEFAULT 0,
  `locked` tinyint(1) DEFAULT 0,
  `timestamp` int(10) DEFAULT 0,
  `pos_x` float DEFAULT 0,
  `pos_y` float DEFAULT 0,
  `pos_z` float DEFAULT 0,
  `pos_a` float DEFAULT 0,
  `int_x` float DEFAULT 0,
  `int_y` float DEFAULT 0,
  `int_z` float DEFAULT 0,
  `int_a` float DEFAULT 0,
  `interior` tinyint(2) DEFAULT 0,
  `world` int(10) DEFAULT 0,
  `outsideint` int(10) DEFAULT 0,
  `outsidevw` int(10) DEFAULT 0,
  `cash` int(10) DEFAULT 0,
  `materials` int(10) DEFAULT 0,
  `pot` int(10) DEFAULT 0,
  `crack` int(10) DEFAULT 0,
  `meth` int(10) DEFAULT 0,
  `painkillers` int(10) DEFAULT 0,
  `weapon_1` tinyint(2) DEFAULT 0,
  `weapon_2` tinyint(2) DEFAULT 0,
  `weapon_3` tinyint(2) DEFAULT 0,
  `weapon_4` tinyint(2) DEFAULT 0,
  `weapon_5` tinyint(2) DEFAULT 0,
  `weapon_6` tinyint(2) DEFAULT 0,
  `weapon_7` tinyint(2) DEFAULT 0,
  `weapon_8` tinyint(2) DEFAULT 0,
  `weapon_9` tinyint(2) DEFAULT 0,
  `weapon_10` tinyint(2) DEFAULT 0,
  `ammo_1` smallint(5) DEFAULT 0,
  `ammo_2` smallint(5) DEFAULT 0,
  `ammo_3` smallint(5) DEFAULT 0,
  `ammo_4` smallint(5) DEFAULT 0,
  `ammo_5` smallint(5) DEFAULT 0,
  `ammo_6` tinyint(2) DEFAULT 0,
  `ammo_7` tinyint(2) DEFAULT 0,
  `ammo_8` tinyint(2) DEFAULT 0,
  `ammo_9` tinyint(2) DEFAULT 0,
  `ammo_10` tinyint(2) DEFAULT 0,
  `pistolammo` smallint(5) DEFAULT 0,
  `shotgunammo` smallint(5) DEFAULT 0,
  `smgammo` smallint(5) DEFAULT 0,
  `arammo` smallint(5) DEFAULT 0,
  `rifleammo` smallint(5) DEFAULT 0,
  `hpammo` smallint(5) DEFAULT 0,
  `poisonammo` smallint(5) DEFAULT 0,
  `fmjammo` smallint(5) DEFAULT 0,
  `robbed` smallint(6) NOT NULL DEFAULT 3,
  `robbing` smallint(6) NOT NULL DEFAULT 3
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `houses`
--

INSERT INTO `houses` (`id`, `ownerid`, `owner`, `type`, `price`, `rentprice`, `level`, `locked`, `timestamp`, `pos_x`, `pos_y`, `pos_z`, `pos_a`, `int_x`, `int_y`, `int_z`, `int_a`, `interior`, `world`, `outsideint`, `outsidevw`, `cash`, `materials`, `pot`, `crack`, `meth`, `painkillers`, `weapon_1`, `weapon_2`, `weapon_3`, `weapon_4`, `weapon_5`, `weapon_6`, `weapon_7`, `weapon_8`, `weapon_9`, `weapon_10`, `ammo_1`, `ammo_2`, `ammo_3`, `ammo_4`, `ammo_5`, `ammo_6`, `ammo_7`, `ammo_8`, `ammo_9`, `ammo_10`, `pistolammo`, `shotgunammo`, `smgammo`, `arammo`, `rifleammo`, `hpammo`, `poisonammo`, `fmjammo`, `robbed`, `robbing`) VALUES
(3, 1, 'Kovalchin_Bolkov', -1, 14000000, 0, 0, 0, 1656994545, 991.624, -2112.35, 13.269, -112.099, 1237.16, -667.273, 1085.69, 171.327, 0, 1000003, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(4, 15, 'Lyell_Frost', 17, 10000000, 0, 0, 0, 1656779037, -222.879, -1225.71, 17.598, -108.212, 925.01, -496.81, 843.895, 90, 7, 1000004, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(6, 33, 'Don_Marko', 18, 1, 0, 0, 0, 1656745943, 298.679, -1337.87, 53.008, -93.059, 1298.87, -796.205, 1084.01, 0, 5, 1000006, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(7, 12, 'JneL_Badger', 17, 10000000, 0, 0, 1, 1657012432, 1093.89, -807.141, 107.42, 191.624, 925.01, -496.81, 843.895, 90, 7, 1000007, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(8, 54, 'Gustavo_Shady', 16, 12000000, 10000, 0, 0, 1656683700, 1112.2, -791.503, 107.648, 52, 1834.24, -1278.77, 832.16, 180, 1, 1000008, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(11, 0, 'Nobody', 5, 15000, 0, 0, 0, 0, 165.517, -2212.75, 13.843, 74.604, 2217.98, -1076.25, 1050.48, 90, 1, 1000011, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(12, 0, 'Nobody', 5, 15000, 0, 0, 0, 0, 145.825, -2203.61, 14.001, -88.417, 2217.98, -1076.25, 1050.48, 90, 1, 1000012, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(13, 0, 'Nobody', 5, 15000, 0, 0, 0, 0, 145.242, -2216.35, 14.001, -102.517, 2217.98, -1076.25, 1050.48, 90, 1, 1000013, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(14, 83, 'Yuki_Chyper', 5, 15000, 0, 0, 0, 1656663641, 165.741, -2225.75, 13.843, 86.801, 2217.98, -1076.25, 1050.48, 90, 1, 1000014, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(15, 0, 'Nobody', 5, 15000, 0, 0, 0, 0, 145.348, -2228.07, 14.001, -87.289, 2217.98, -1076.25, 1050.48, 90, 1, 1000015, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(16, 0, 'Nobody', 5, 15000, 0, 0, 0, 0, 145.572, -2239.56, 14.001, -78.265, 2217.98, -1076.25, 1050.48, 90, 1, 1000016, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(17, 32, 'Senichi_Oda', 14, 15000, 0, 0, 1, 1656785546, 181.339, -2263.58, 15.602, 101.254, 2324.39, -1148.88, 1050.71, 0, 12, 1000017, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(18, 0, 'Nobody', 4, 15000, 0, 0, 0, 0, 181.4, -2291.17, 15.602, 88.824, 2233.65, -1114.78, 1050.88, 0, 5, 1000018, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(19, 0, 'Nobody', 4, 15000, 0, 0, 0, 0, 181.389, -2318.8, 15.602, 87.296, 2233.65, -1114.78, 1050.88, 0, 5, 1000019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(20, 0, 'Nobody', 3, 12000, 0, 0, 0, 0, 151.32, -2351.17, 14.981, 76.016, 2008.83, -1698.85, 1165.7, 90, 8, 1000020, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(21, 0, 'Nobody', 3, 12000, 0, 0, 0, 0, 162.986, -2351.31, 14.981, 99.704, 2008.83, -1698.85, 1165.7, 90, 8, 1000021, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(22, 0, 'Nobody', 3, 12000, 0, 0, 0, 0, 174.459, -2351.24, 14.981, 103.088, 2008.83, -1698.85, 1165.7, 90, 8, 1000022, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(23, 0, 'Nobody', 3, 12000, 0, 0, 0, 0, 185.674, -2351.07, 14.981, 88.612, 2008.83, -1698.85, 1165.7, 90, 8, 1000023, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(24, 0, 'Nobody', 3, 12000, 0, 0, 0, 0, 197.277, -2351.23, 14.981, 98.764, 2008.83, -1698.85, 1165.7, 90, 8, 1000024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(25, 0, 'Nobody', 3, 12000, 0, 0, 0, 0, 208.893, -2351.14, 14.981, 79.212, 2008.83, -1698.85, 1165.7, 90, 8, 1000025, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(26, 0, 'Nobody', 3, 12000, 0, 0, 0, 0, 220.777, -2351.1, 14.981, 94.064, 2008.83, -1698.85, 1165.7, 90, 8, 1000026, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(27, 0, 'Nobody', 3, 12000, 0, 0, 0, 0, 233.408, -2351.24, 14.981, 103.276, 2008.83, -1698.85, 1165.7, 90, 8, 1000027, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(28, 0, 'Nobody', 3, 12000, 0, 0, 0, 0, 246.516, -2351.15, 14.981, 76.768, 2008.83, -1698.85, 1165.7, 90, 8, 1000028, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(29, 0, 'Nobody', 3, 12000, 0, 0, 0, 0, 259.865, -2351.22, 14.981, 86.168, 2008.83, -1698.85, 1165.7, 90, 8, 1000029, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(30, 0, 'Nobody', 9, 1200000, 0, 0, 0, 0, 253.281, -2376.18, 16.201, 173.378, 1363.76, -2145.7, 1050.59, 0, 3, 1000030, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(31, 0, 'Nobody', 9, 1200000, 0, 0, 0, 0, 231.817, -2376.33, 16.201, -159.55, 1363.76, -2145.7, 1050.59, 0, 3, 1000031, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(32, 0, 'Nobody', 9, 1200000, 0, 0, 0, 0, 210.559, -2376.35, 16.201, -166.882, 1363.76, -2145.7, 1050.59, 0, 3, 1000032, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(33, 0, 'Nobody', 9, 1200000, 0, 0, 0, 0, 188.863, -2376.34, 16.201, -171.206, 1363.76, -2145.7, 1050.59, 0, 3, 1000033, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(34, 0, 'Nobody', 9, 1200000, 0, 0, 0, 0, 167.547, -2376.33, 16.201, 177.49, 1363.76, -2145.7, 1050.59, 0, 3, 1000034, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(35, 0, 'Nobody', 3, 12000, 0, 0, 0, 0, 129.895, -2362.62, 15.602, -4.307, 2008.83, -1698.85, 1165.7, 90, 8, 1000035, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(36, 0, 'Nobody', 3, 12000, 0, 0, 0, 0, 104.781, -2362.69, 15.602, -2.427, 2008.83, -1698.85, 1165.7, 90, 8, 1000036, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(37, 0, 'Nobody', 3, 12000, 0, 0, 0, 0, 134.705, -2314.11, 15.602, -179.525, 2008.83, -1698.85, 1165.7, 90, 8, 1000037, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(38, 0, 'Nobody', 3, 12000, 0, 0, 0, 0, 109.266, -2314.24, 15.602, 169.947, 2008.83, -1698.85, 1165.7, 90, 8, 1000038, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(39, 0, 'Nobody', 0, 8000, 0, 0, 0, 0, 74.944, -2311.84, 14.038, 178.595, 244.2, 305.068, 999.148, 270.219, 1, 1000039, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(40, 0, 'Nobody', 0, 8000, 0, 0, 0, 0, 68.9, -2312.26, 13.843, -172.005, 244.2, 305.068, 999.148, 270.219, 1, 1000040, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(41, 0, 'Nobody', 0, 8000, 0, 0, 0, 0, 62.958, -2312.2, 14.038, -179.149, 244.2, 305.068, 999.148, 270.219, 1, 1000041, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(42, 0, 'Nobody', 0, 8000, 0, 0, 0, 0, 2067.05, -1731.66, 14.207, -93.804, 244.2, 305.068, 999.148, 270.219, 1, 1000042, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(43, 0, 'Nobody', 1, 8000, 0, 0, 0, 0, 2066.24, -1717.07, 14.136, -88.773, 1434.08, -1832.79, 1313.56, 270, 2, 1000043, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(44, 0, 'Nobody', 2, 12000, 0, 0, 0, 0, 2065.1, -1703.59, 14.148, -91.104, 2259.76, -1135.88, 1050.63, 270, 10, 1000044, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(45, 0, 'Nobody', 3, 12000, 0, 0, 0, 0, 2066.74, -1656.48, 14.133, -86.686, 2008.83, -1698.85, 1165.7, 90, 8, 1000045, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(46, 0, 'Nobody', 4, 15000, 0, 0, 0, 0, 2067.56, -1643.77, 14.136, -91.718, 2233.65, -1114.78, 1050.88, 0, 5, 1000046, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(47, 0, 'Nobody', 5, 15000, 0, 0, 0, 0, 2067.7, -1628.91, 14.207, -94.173, 2217.98, -1076.25, 1050.48, 90, 1, 1000047, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(71, 89, 'Stephanie_Shady', 17, 12000000, 0, 0, 1, 1656988616, 827.793, -857.991, 70.331, -163.58, 925.01, -496.81, 843.895, 90, 7, 1000071, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(72, 32, 'Admiral', 14, 2800000, 0, 0, 0, 1656996018, -80.407, -1569.04, 5.879, -135.102, 2324.39, -1148.88, 1050.71, 0, 12, 1000072, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(73, 0, 'Nobody', 0, 8000, 0, 0, 0, 0, 1179.81, -1227.17, 18.555, -78.401, 244.2, 305.068, 999.148, 270.219, 1, 1000073, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(74, 0, 'Nobody', 1, 8000, 0, 0, 0, 0, 1187.36, -1226.99, 18.555, 80.158, 1434.08, -1832.79, 1313.56, 270, 2, 1000074, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(75, 0, 'Nobody', 2, 12000, 0, 0, 0, 0, 1187.44, -1233.3, 18.555, 92.921, 2259.76, -1135.88, 1050.63, 270, 10, 1000075, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(76, 0, 'Nobody', 3, 12000, 0, 0, 0, 0, 1179.92, -1233.45, 18.555, -93.916, 2008.83, -1698.85, 1165.7, 90, 8, 1000076, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(77, 0, 'Nobody', 4, 15000, 0, 0, 0, 0, 1179.89, -1233.32, 22.141, -90.234, 2233.65, -1114.78, 1050.88, 0, 5, 1000077, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(78, 0, 'Nobody', 5, 15000, 0, 0, 0, 0, 1187.39, -1233.21, 22.141, 83.717, 2217.98, -1076.25, 1050.48, 90, 1, 1000078, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(79, 0, 'Nobody', 3, 12000, 0, 0, 0, 0, 1187.36, -1227.05, 22.133, 93.044, 2008.83, -1698.85, 1165.7, 90, 8, 1000079, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(80, 0, 'Nobody', 4, 15000, 0, 0, 0, 0, 1179.81, -1227.15, 22.133, -90.427, 2233.65, -1114.78, 1050.88, 0, 5, 1000080, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(81, 0, 'Nobody', 0, 8000, 0, 0, 0, 0, 1179.81, -1254.82, 15.18, -94.775, 244.2, 305.068, 999.148, 270.219, 1, 1000081, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(82, 0, 'Nobody', 1, 8000, 0, 0, 0, 0, 1179.89, -1261.04, 15.18, -94.284, 1434.08, -1832.79, 1313.56, 270, 2, 1000082, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(83, 109, 'Kairi_X_Sicaro', 2, 12000, 0, 0, 1, 1656720454, 1187.41, -1260.92, 15.18, 90.537, 2259.76, -1135.88, 1050.63, 270, 10, 1000083, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(84, 0, 'Nobody', 3, 12000, 0, 0, 0, 0, 1187.36, -1254.7, 15.18, 91.028, 2008.83, -1698.85, 1165.7, 90, 8, 1000084, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(85, 0, 'Nobody', 3, 12000, 0, 0, 0, 0, 1187.36, -1254.69, 18.891, 84.646, 2008.83, -1698.85, 1165.7, 90, 8, 1000085, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(86, 0, 'Nobody', 4, 15000, 0, 0, 0, 0, 1179.81, -1254.76, 18.891, -87.535, 2233.65, -1114.78, 1050.88, 0, 5, 1000086, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(87, 0, 'Nobody', 2, 12000, 0, 0, 0, 0, 1187.44, -1260.84, 18.898, 81.701, 2259.76, -1135.88, 1050.63, 270, 10, 1000087, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(88, 0, 'Nobody', 1, 8000, 0, 0, 0, 0, 1179.89, -1261.08, 18.898, -92.075, 1434.08, -1832.79, 1313.56, 270, 2, 1000088, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(90, 0, 'Nobody', 9, 9999999, 20000, 0, 0, 0, 736.775, -556.784, 18.013, -1.118, 1363.76, -2145.7, 1050.59, 0, 3, 1000090, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(91, 0, 'Nobody', 12, 9999999, 0, 0, 0, 0, 745.192, -556.785, 18.013, 1.95, 2269.91, -1210.5, 1047.56, 90, 10, 1000091, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(92, 61, 'Alex_H._Shady', 13, 1000000, 0, 0, 0, 1657086735, 743.253, -509.318, 18.013, -179.242, 1749.64, -1822.45, 1000.34, 0, 6, 1000092, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(96, 16, 'Uno_E_Guirero', 13, 9999999, 0, 0, 1, 1656994914, 766.598, -556.784, 18.013, 3.003, 1749.64, -1822.45, 1000.34, 0, 6, 1000096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(101, 95, 'Brian_Oconner', 11, 1410065407, 0, 0, 1, 1656948885, 267.624, -54.556, 2.777, 179.498, 2184.1, -1130.39, 1128.77, 270, 11, 1000101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(102, 5, 'Dom_Toretto', 10, 1410065407, 0, 0, 1, 1656948883, 295.059, -54.549, 2.777, 174.032, 2654.45, -1023.78, 929.927, 180, 5, 1000102, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(103, 155, 'Makoy_Kush', 4, 15000, 0, 0, 1, 1656935656, 745.675, -591.094, 18.013, 90.887, 2233.65, -1114.78, 1050.88, 0, 5, 1000103, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(104, 12, 'JneL_Badger', 5, 15000, 0, 0, 0, 1657012277, 759.297, -592.031, 18.013, 1.544, 2217.98, -1076.25, 1050.48, 90, 1, 1000104, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(105, 0, 'Nobody', 6, 800000, 0, 0, 0, 0, 746.106, -570.364, 18.013, 91.062, 1178.34, -419.083, 1234.7, 180, 9, 1000105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(107, 66, 'Marlon_Bautista', 4, 15000, 0, 0, 1, 1657020493, 524.29, -690.448, 17.647, 176.003, 2233.65, -1114.78, 1050.88, 0, 5, 1000107, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(109, 144, 'Lil_Jizz', 15, 100000, 0, 0, 1, 1657109069, 513.854, -699.812, 18.814, 41.043, 1282.06, -1140.21, 980.052, 0, 4, 1000109, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(111, 0, 'Nobody', 6, 1000000, 0, 0, 0, 0, 515.422, -711.614, 19.125, -42.813, 1178.34, -419.083, 1234.7, 180, 9, 1000111, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(112, 95, 'Brian_Oconner', 4, 15000, 0, 0, 0, 1657006290, 768.307, -503.481, 18.013, -175.739, 2233.65, -1114.78, 1050.88, 0, 5, 1000112, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(113, 5, 'Dom_Toretto', 3, 1000000, 0, 0, 0, 1657108015, 776.737, -503.481, 18.013, 177.143, 2008.83, -1698.85, 1165.7, 90, 8, 1000113, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(114, 56, 'Amaru_Crawford', 18, 14000000, 0, 0, 0, 1656916876, 924.444, -595.566, 114.319, 56.261, 1298.87, -796.205, 1084.01, 0, 5, 1000114, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(115, 32, 'Senichi_Oda', 12, 2300000, 0, 0, 1, 1657004861, 818.232, -509.318, 18.013, 179.514, 2269.91, -1210.5, 1047.56, 90, 10, 1000115, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(116, 60, 'Ryder_Wilson', -1, 21000000, 0, 0, 0, 1656995642, 867.51, -717.588, 105.68, -31.902, -794.967, 489.373, 1376.19, 353.69, 1, 1000116, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(118, 33, 'Don_Marko', 12, 1, 0, 5, 0, 1657009037, 794.932, -506.154, 18.013, 176.292, 2269.91, -1210.5, 1047.56, 90, 10, 1000118, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(119, 0, 'Nobody', 7, 1000000, 0, 0, 0, 0, 518.783, -714.891, 19.125, -49.849, 828.632, -1014, 799.966, 270, 3, 1000119, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(120, 0, 'Nobody', 8, 850000, 0, 0, 0, 0, 736.878, -473.027, 16.336, 132.335, 1320.11, -167.617, 1088.07, 90, 5, 1000120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(122, 0, 'Nobody', 13, 2300000, 0, 0, 0, 0, 796.096, -492.557, 18.013, 94.932, 1749.64, -1822.45, 1000.34, 0, 6, 1000122, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(123, 0, 'Nobody', 14, 2500000, 0, 0, 0, 0, 817.313, -495.663, 18.013, -84.377, 2324.39, -1148.88, 1050.71, 0, 12, 1000123, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(124, 0, 'Nobody', 14, 2500000, 0, 0, 0, 0, 742.317, -495.681, 18.013, -86.257, 2324.39, -1148.88, 1050.71, 0, 12, 1000124, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `kills`
--

CREATE TABLE `kills` (
  `id` int(10) NOT NULL,
  `killer_uid` int(10) DEFAULT NULL,
  `target_uid` int(10) DEFAULT NULL,
  `killer` varchar(24) DEFAULT NULL,
  `target` varchar(24) DEFAULT NULL,
  `reason` varchar(24) DEFAULT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kills`
--

INSERT INTO `kills` (`id`, `killer_uid`, `target_uid`, `killer`, `target`, `reason`, `date`) VALUES
(1, 27, 16, 'Dinh_Hung', 'Uno_E_Guirero', 'Fists', '2022-06-30 04:00:10'),
(2, 27, 16, 'Dinh_Hung', 'Uno_E_Guirero', 'Fists', '2022-06-30 04:00:40'),
(3, 15, 15, 'Lyell_Tsukino', 'Lyell_Tsukino', 'Explosion', '2022-06-30 04:59:25'),
(4, 20, 20, 'Cidss_Tsukino', 'Cidss_Tsukino', 'Explosion', '2022-06-30 05:00:49'),
(5, 20, 20, 'Cidss_Tsukino', 'Cidss_Tsukino', 'Explosion', '2022-06-30 05:06:03'),
(6, 31, 31, 'Eve_Lennox', 'Eve_Lennox', 'Explosion', '2022-06-30 05:07:00'),
(7, 16, 25, 'Uno_E_Guirero', 'Rojelo_Erin', 'Splat', '2022-06-30 05:08:04'),
(8, 25, 25, 'Rojelo_Erin', 'Rojelo_Erin', 'Explosion', '2022-06-30 05:08:20'),
(9, 15, 15, 'Lyell_Tsukino', 'Lyell_Tsukino', 'Explosion', '2022-06-30 05:14:28'),
(10, 15, 20, 'Lyell_Tsukino', 'Cidss_Tsukino', 'Fists', '2022-06-30 05:15:34'),
(11, 20, 20, 'Cidss_Tsukino', 'Cidss_Tsukino', 'Explosion', '2022-06-30 05:15:55'),
(12, 25, 25, 'Rojelo_Erin', 'Rojelo_Erin', 'Explosion', '2022-06-30 07:07:01'),
(13, 25, 25, 'Rojelo_Erin', 'Rojelo_Erin', 'Explosion', '2022-06-30 07:07:16'),
(14, 38, 38, 'Kratos_Bolkov', 'Kratos_Bolkov', 'Splat', '2022-06-30 08:09:05'),
(15, 38, 38, 'Kratos_Bolkov', 'Kratos_Bolkov', 'Explosion', '2022-06-30 08:09:37'),
(16, 15, 15, 'Lyell_Tsukino', 'Lyell_Tsukino', 'Explosion', '2022-06-30 10:01:50'),
(17, 20, 20, 'Cidss_Tsukino', 'Cidss_Tsukino', 'Explosion', '2022-06-30 10:50:50'),
(18, 56, 12, 'Morgan_Armstrong', 'JneL_Marley', 'Fists', '2022-06-30 13:47:25'),
(19, 12, 12, 'JneL_Marley', 'JneL_Marley', 'Explosion', '2022-06-30 13:48:29'),
(20, 12, 15, 'JneL_Marley', 'Lyell_Tsukino', 'Deagle', '2022-06-30 13:57:29'),
(21, 20, 20, 'Cidss_Tsukino', 'Cidss_Tsukino', 'Explosion', '2022-06-30 14:45:39'),
(22, 7, 7, 'Jace_Wayland', 'Jace_Wayland', 'Explosion', '2022-06-30 14:50:07'),
(23, 7, 7, 'Jace_Wayland', 'Jace_Wayland', 'Explosion', '2022-06-30 14:50:26'),
(24, 54, 61, 'Gustavo_Shady', 'Alex_Fellas', 'Sniper', '2022-06-30 17:19:03'),
(25, 54, 12, 'Gustavo_Shady', 'Jay_Shady', 'Sniper', '2022-06-30 17:23:46'),
(26, 54, 61, 'Gustavo_Shady', 'Alex_Fellas', 'Sniper', '2022-06-30 17:46:56'),
(27, 12, 61, 'JneL_Davinci', 'Alex_Fellas', 'Sniper', '2022-06-30 17:55:20'),
(28, 32, 61, 'Senichi_Oxford', 'Alex_Fellas', 'Sniper', '2022-06-30 18:03:55'),
(29, 32, 61, 'Senichi_Oxford', 'Alex_Fellas', 'M4', '2022-06-30 18:19:47'),
(30, 54, 61, 'Gustavo_Shady', 'Alex_Fellas', 'Sniper', '2022-06-30 18:25:43'),
(31, 1, 56, 'Kovalchin_Bolkov', 'Slim_Shady', 'Explosion', '2022-07-01 06:15:19'),
(32, 1, 66, 'Kovalchin_Bolkov', 'Marlon_Bautista', 'Explosion', '2022-07-01 06:15:39'),
(33, 56, 56, 'Slim_Shady', 'Slim_Shady', 'Explosion', '2022-07-01 06:16:31'),
(34, 1, 45, 'Kovalchin_Bolkov', 'Dan_Tsukino', 'Sniper', '2022-07-01 06:45:11'),
(35, 1, 42, 'Kovalchin_Bolkov', 'Moly_Dela_Cruz', 'Rocket launcher', '2022-07-01 06:45:59'),
(36, 1, 42, 'Kovalchin_Bolkov', 'Moly_Dela_Cruz', 'Rocket launcher', '2022-07-01 06:46:52'),
(37, 61, 1, 'Alex_Fellas', 'Kovalchin_Bolkov', 'M4', '2022-07-01 06:50:13'),
(38, 1, 1, 'Kovalchin_Bolkov', 'Kovalchin_Bolkov', 'Explosion', '2022-07-01 06:50:53'),
(39, 45, 42, 'Dan_Tsukino', 'Moly_Dela_Cruz', 'AK-47', '2022-07-01 07:03:15'),
(40, 61, 45, 'Alex_Fellas', 'Dan_Tsukino', 'M4', '2022-07-01 07:03:29'),
(41, 45, 45, 'Dan_Tsukino', 'Dan_Tsukino', 'Explosion', '2022-07-01 07:05:00'),
(42, 1, 12, 'Kovalchin_Bolkov', 'JneL_Davinci', 'Rocket launcher', '2022-07-01 07:05:18'),
(43, 1, 7, 'Kovalchin_Bolkov', 'Jace_Wayland', 'Rocket launcher', '2022-07-01 07:05:18'),
(44, 7, 7, 'Jace_Wayland', 'Jace_Wayland', 'Explosion', '2022-07-01 07:05:52'),
(45, 12, 12, 'JneL_Davinci', 'JneL_Davinci', 'Explosion', '2022-07-01 07:06:17'),
(46, 45, 12, 'Dan_Tsukino', 'JneL_Davinci', 'AK-47', '2022-07-01 07:15:37'),
(47, 56, 45, 'Slim_Shady', 'Dan_Tsukino', 'M4', '2022-07-01 07:15:39'),
(48, 56, 83, 'Slim_Shady', 'Yuki_Chyper', 'M4', '2022-07-01 07:15:44'),
(49, 61, 42, 'Alex_Fellas', 'Moly_Dela_Cruz', 'Deagle', '2022-07-01 07:15:51'),
(50, 83, 83, 'Yuki_Chyper', 'Yuki_Chyper', 'Explosion', '2022-07-01 07:16:57'),
(51, 61, 61, 'Alex_Fellas', 'Alex_Fellas', 'Explosion', '2022-07-01 07:17:42'),
(52, 1, 61, 'Kovalchin_Bolkov', 'Alex_Fellas', 'Sniper', '2022-07-01 07:18:25'),
(53, 83, 7, 'Yuki_Chyper', 'Jace_Wayland', 'M4', '2022-07-01 07:48:11'),
(54, 7, 7, 'Jace_Wayland', 'Jace_Wayland', 'Explosion', '2022-07-01 07:50:35'),
(55, 42, 61, 'Moly_Dela_Cruz', 'Alex_Fellas', 'M4', '2022-07-01 07:50:50'),
(56, 42, 61, 'Moly_Dela_Cruz', 'Alex_Fellas', 'Deagle', '2022-07-01 07:51:10'),
(57, 42, 7, 'Moly_Dela_Cruz', 'Jace_Wayland', 'M4', '2022-07-01 07:55:14'),
(58, 42, 7, 'Moly_Dela_Cruz', 'Jace_Wayland', 'Deagle', '2022-07-01 07:55:27'),
(59, 42, 7, 'Moly_Dela_Cruz', 'Jace_Wayland', 'M4', '2022-07-01 08:05:31'),
(60, 42, 7, 'Moly_Dela_Cruz', 'Jace_Wayland', 'Deagle', '2022-07-01 08:05:58'),
(61, 42, 12, 'Moly_Dela_Cruz', 'JneL_Davinci', 'M4', '2022-07-01 08:14:29'),
(62, 83, 12, 'Yuki_Chyper', 'JneL_Davinci', 'M4', '2022-07-01 08:14:41'),
(63, 1, 25, 'Kovalchin_Bolkov', 'Rojelo_Erin', 'Deagle', '2022-07-01 09:01:36'),
(64, 32, 61, 'Senichi_Oxford', 'Alex_Fellas', 'Combat shotgun', '2022-07-01 09:07:52'),
(65, 65, 32, 'Danzil_Zavaroni', 'Senichi_Oxford', 'M4', '2022-07-01 09:07:53'),
(66, 32, 32, 'Senichi_Oxford', 'Senichi_Oxford', 'Explosion', '2022-07-01 09:08:08'),
(67, 91, 91, 'Yoshi_Tsukino', 'Yoshi_Tsukino', 'Explosion', '2022-07-01 09:31:48'),
(68, 1, 12, 'Kovalchin_Bolkov', 'JneL_Davinci', 'Rocket launcher', '2022-07-01 09:37:50'),
(69, 1, 7, 'Kovalchin_Bolkov', 'Jace_Wayland', 'Rocket launcher', '2022-07-01 09:37:56'),
(70, 1, 7, 'Kovalchin_Bolkov', 'Jace_Wayland', 'Rocket launcher', '2022-07-01 09:38:06'),
(71, 1, 12, 'Kovalchin_Bolkov', 'JneL_Davinci', 'Rocket launcher', '2022-07-01 09:38:06'),
(72, 1, 15, 'Kovalchin_Bolkov', 'Lyell_Tsukino', 'M4', '2022-07-01 10:25:26'),
(73, 15, 15, 'Lyell_Tsukino', 'Lyell_Tsukino', 'Explosion', '2022-07-01 11:03:16'),
(74, 83, 46, 'Yuki_Chyper', 'Steve_Tsukino', 'M4', '2022-07-01 11:06:38'),
(75, 83, 15, 'Yuki_Chyper', 'Lyell_Tsukino', 'M4', '2022-07-01 11:07:12'),
(76, 15, 15, 'Lyell_Tsukino', 'Lyell_Tsukino', 'Explosion', '2022-07-01 11:07:37'),
(77, 83, 32, 'Yuki_Chyper', 'Senichi_Oda', 'Shotgun', '2022-07-01 11:10:34'),
(78, 83, 25, 'Yuki_Chyper', 'Rojelo_Erin', 'M4', '2022-07-01 12:10:22'),
(79, 83, 61, 'Yuki_Chyper', 'Alex_Fellas', 'Combat shotgun', '2022-07-01 12:27:13'),
(80, 83, 61, 'Yuki_Chyper', 'Alex_Fellas', 'M4', '2022-07-01 12:27:43'),
(81, 83, 65, 'Yuki_Chyper', 'Danzil_Zavaroni', 'Knife', '2022-07-01 12:44:52'),
(82, 83, 61, 'Yuki_Chyper', 'Alex_Fellas', 'Knife', '2022-07-01 12:46:25'),
(83, 61, 61, 'Alex_Fellas', 'Alex_Fellas', 'Explosion', '2022-07-01 12:47:11'),
(84, 65, 65, 'Danzil_Zavaroni', 'Danzil_Zavaroni', 'Explosion', '2022-07-01 12:47:25'),
(85, 42, 61, 'Moly_Dela_Cruz', 'Alex_Fellas', 'M4', '2022-07-01 12:52:02'),
(86, 42, 61, 'Moly_Dela_Cruz', 'Alex_Fellas', 'Deagle', '2022-07-01 12:52:22'),
(87, 54, 89, 'Gustavo_Shady', 'Stephanie_Shady', 'Sniper', '2022-07-01 12:59:25'),
(88, 54, 7, 'Gustavo_Shady', 'Jace_Wayland', 'Sniper', '2022-07-01 14:00:25'),
(89, 7, 7, 'Jace_Wayland', 'Jace_Wayland', 'Explosion', '2022-07-01 14:01:36'),
(90, 82, 82, 'Casper_Dale', 'Casper_Dale', 'Explosion', '2022-07-01 14:10:09'),
(91, 93, 106, 'Xavion_Ikari', 'Xyfer_liam', 'Fists', '2022-07-01 14:46:18'),
(92, 93, 107, 'Xavion_Ikari', 'Angelo_Sambrana', 'Fists', '2022-07-01 14:47:05'),
(93, 106, 106, 'Xyfer_liam', 'Xyfer_liam', 'Explosion', '2022-07-01 15:22:38'),
(94, 56, 56, 'Slim_Shady', 'Slim_Shady', 'Explosion', '2022-07-01 15:23:00'),
(95, 59, 107, 'Dolf_Gonzales', 'Angelo_Sambrana', 'Fists', '2022-07-01 15:25:52'),
(96, 56, 56, 'Slim_Shady', 'Slim_Shady', 'Explosion', '2022-07-01 15:26:37'),
(97, 56, 56, 'Slim_Shady', 'Slim_Shady', 'Explosion', '2022-07-01 15:30:27'),
(98, 56, 56, 'Slim_Shady', 'Slim_Shady', 'Explosion', '2022-07-01 15:30:50'),
(99, 56, 56, 'Slim_Shady', 'Slim_Shady', 'Explosion', '2022-07-01 15:31:55'),
(100, 15, 15, 'Lyell_Frost', 'Lyell_Frost', 'Explosion', '2022-07-01 15:44:02'),
(101, 99, 99, 'Don_Xeno', 'Don_Xeno', 'Explosion', '2022-07-01 16:31:20'),
(102, 99, 99, 'Don_Xeno', 'Don_Xeno', 'Explosion', '2022-07-01 16:31:33'),
(103, 16, 16, 'Uno_E_Guirero', 'Uno_E_Guirero', 'Explosion', '2022-07-01 16:46:05'),
(104, 1, 111, 'Kovalchin_Bolkov', 'Mj_Cenita', 'Combat shotgun', '2022-07-02 01:59:49'),
(105, 42, 61, 'Moly_Dela_Cruz', 'Alex_Fellas', 'AK-47', '2022-07-02 05:24:37'),
(106, 61, 61, 'Alex_Fellas', 'Alex_Fellas', 'Explosion', '2022-07-02 05:25:08'),
(107, 61, 61, 'Alex_Fellas', 'Alex_Fellas', 'Explosion', '2022-07-02 05:25:49'),
(108, 25, 42, 'Rojelo_Erin', 'Moly_Dela_Cruz', 'AK-47', '2022-07-02 06:00:00'),
(109, 25, 42, 'Rojelo_Erin', 'Moly_Dela_Cruz', 'AK-47', '2022-07-02 06:00:18'),
(110, 25, 25, 'Rojelo_Erin', 'Rojelo_Erin', 'Explosion', '2022-07-02 06:01:29'),
(111, 42, 61, 'Moly_Dela_Cruz', 'Alex_Fellas', 'Deagle', '2022-07-02 06:08:39'),
(112, 42, 61, 'Moly_Dela_Cruz', 'Alex_Fellas', 'Deagle', '2022-07-02 06:09:01'),
(113, 25, 42, 'Rojelo_Erin', 'Moly_Dela_Cruz', 'Deagle', '2022-07-02 06:11:35'),
(114, 25, 42, 'Rojelo_Erin', 'Moly_Dela_Cruz', 'Deagle', '2022-07-02 06:11:43'),
(115, 25, 117, 'Rojelo_Erin', 'Charles_Dela_Cruz', 'Deagle', '2022-07-02 06:11:48'),
(116, 25, 117, 'Rojelo_Erin', 'Charles_Dela_Cruz', 'Deagle', '2022-07-02 06:11:59'),
(117, 42, 25, 'Moly_Dela_Cruz', 'Rojelo_Erin', 'Deagle', '2022-07-02 06:23:19'),
(118, 42, 25, 'Moly_Dela_Cruz', 'Rojelo_Erin', 'Deagle', '2022-07-02 06:23:30'),
(119, 1, 1, 'Kovalchin_Bolkov', 'Kovalchin_Bolkov', 'Explosion', '2022-07-02 07:30:56'),
(120, 1, 1, 'Kovalchin_Bolkov', 'Kovalchin_Bolkov', 'Explosion', '2022-07-02 07:31:11'),
(121, 1, 1, 'Kovalchin_Bolkov', 'Kovalchin_Bolkov', 'Explosion', '2022-07-02 07:57:13'),
(122, 1, 1, 'Kovalchin_Bolkov', 'Kovalchin_Bolkov', 'Explosion', '2022-07-02 07:57:31'),
(123, 1, 1, 'Kovalchin_Bolkov', 'Kovalchin_Bolkov', 'Explosion', '2022-07-02 08:00:41'),
(124, 1, 1, 'Kovalchin_Bolkov', 'Kovalchin_Bolkov', 'Explosion', '2022-07-02 08:00:57'),
(125, 1, 1, 'Kovalchin_Bolkov', 'Kovalchin_Bolkov', 'Explosion', '2022-07-02 08:13:29'),
(126, 1, 1, 'Kovalchin_Bolkov', 'Kovalchin_Bolkov', 'Explosion', '2022-07-02 08:13:54'),
(127, 1, 1, 'Kovalchin_Bolkov', 'Kovalchin_Bolkov', 'Explosion', '2022-07-02 08:28:57'),
(128, 1, 1, 'Kovalchin_Bolkov', 'Kovalchin_Bolkov', 'Explosion', '2022-07-02 08:29:10'),
(129, 1, 1, 'Kovalchin_Bolkov', 'Kovalchin_Bolkov', 'Explosion', '2022-07-02 08:35:34'),
(130, 1, 1, 'Kovalchin_Bolkov', 'Kovalchin_Bolkov', 'Explosion', '2022-07-02 08:36:05'),
(131, 1, 1, 'Kovalchin_Bolkov', 'Kovalchin_Bolkov', 'Explosion', '2022-07-02 08:42:10'),
(132, 1, 1, 'Kovalchin_Bolkov', 'Kovalchin_Bolkov', 'Explosion', '2022-07-02 08:42:27'),
(133, 1, 1, 'Kovalchin_Bolkov', 'Kovalchin_Bolkov', 'Explosion', '2022-07-02 08:57:20'),
(134, 32, 32, 'Senichi_Oda', 'Senichi_Oda', 'Explosion', '2022-07-02 09:00:35'),
(135, 32, 32, 'Senichi_Oda', 'Senichi_Oda', 'Explosion', '2022-07-02 09:00:55'),
(136, 1, 6, 'Kovalchin_Bolkov', 'Gab_Velmarco', 'Sniper', '2022-07-02 09:12:26'),
(137, 95, 95, 'Sung_Jinwoo', 'Sung_Jinwoo', 'Explosion', '2022-07-02 11:21:16'),
(138, 95, 95, 'Sung_Jinwoo', 'Sung_Jinwoo', 'Explosion', '2022-07-02 11:21:30'),
(139, 73, 73, 'John_Skie', 'John_Skie', 'Explosion', '2022-07-02 13:55:26'),
(140, 95, 95, 'Sung_Jinwoo', 'Sung_Jinwoo', 'Explosion', '2022-07-02 13:59:50'),
(141, 32, 32, 'Takihiro_Oda', 'Takihiro_Oda', 'Explosion', '2022-07-03 12:07:35'),
(142, 32, 32, 'Takihiro_Oda', 'Takihiro_Oda', 'Explosion', '2022-07-03 12:07:52'),
(143, 56, 61, 'Rowdy_Shady', 'Alex_Fellas', 'Sniper', '2022-07-03 12:50:47'),
(144, 56, 61, 'Rowdy_Shady', 'Alex_Fellas', 'Deagle', '2022-07-03 12:51:22'),
(145, 56, 144, 'Rowdy_Shady', 'Lil_Jizz', 'Sniper', '2022-07-03 14:14:49'),
(146, 144, 54, 'Lil_Jizz', 'Gustavo_Shady', 'Knife', '2022-07-03 14:33:22'),
(147, 54, 54, 'Gustavo_Shady', 'Gustavo_Shady', 'Explosion', '2022-07-03 14:35:03'),
(148, 32, 32, 'Senichi_Oda', 'Senichi_Oda', 'Explosion', '2022-07-03 16:14:01'),
(149, 32, 32, 'Senichi_Oda', 'Senichi_Oda', 'Explosion', '2022-07-03 16:14:15'),
(150, 56, 38, 'Rowdy_Shady', 'Kratos_Bolkov', 'M4', '2022-07-03 16:40:35'),
(151, 61, 12, 'Alex_H._Shady', 'JneL_Badger', 'Deagle', '2022-07-03 18:56:01'),
(152, 61, 12, 'Alex_H._Shady', 'JneL_Badger', 'M4', '2022-07-03 19:00:11'),
(153, 61, 61, 'Alex_H._Shady', 'Alex_H._Shady', 'Explosion', '2022-07-03 19:05:07'),
(154, 56, 12, 'Rowdy_Shady', 'JneL_Badger', 'Sniper', '2022-07-03 19:05:36'),
(155, 12, 56, 'JneL_Badger', 'Rowdy_Shady', 'Sniper', '2022-07-03 19:05:58'),
(156, 56, 12, 'Rowdy_Shady', 'JneL_Badger', 'Explosion', '2022-07-03 19:06:12'),
(157, 12, 61, 'JneL_Badger', 'Alex_H._Shady', 'Sniper', '2022-07-03 19:07:57'),
(158, 56, 32, 'Rowdy_Shady', 'Senichi_Oda', 'Sniper', '2022-07-03 19:16:21'),
(159, 56, 61, 'Rowdy_Shady', 'Alex_H._Shady', 'Sniper', '2022-07-03 19:19:47'),
(160, 56, 32, 'Rowdy_Shady', 'Senichi_Oda', 'Explosion', '2022-07-03 19:31:26'),
(161, 56, 32, 'Rowdy_Shady', 'Senichi_Oda', 'Explosion', '2022-07-03 19:31:29'),
(162, 56, 12, 'Rowdy_Shady', 'JneL_Badger', 'Explosion', '2022-07-03 19:32:11'),
(163, 56, 15, 'Rowdy_Shady', 'Lyell_Frost', 'M4', '2022-07-04 02:16:23'),
(164, 16, 15, 'Uno_E_Guirero', 'Lyell_Frost', 'M4', '2022-07-04 02:16:37'),
(165, 56, 15, 'Rowdy_Shady', 'Lyell_Frost', 'Explosion', '2022-07-04 02:19:00'),
(166, 16, 56, 'Bot', 'Rowdy_Shady', 'Sniper', '2022-07-04 02:19:25'),
(167, 144, 56, 'Lil_Jizz', 'Rowdy_Shady', 'Knife', '2022-07-04 02:21:13'),
(168, 16, 15, 'Uno_E_Guirero', 'Lyell_Frost', 'Sniper', '2022-07-04 02:24:17'),
(169, 56, 16, 'Rowdy_Shady', 'Uno_E_Guirero', 'Knife', '2022-07-04 02:26:22'),
(170, 16, 16, 'Uno_E_Guirero', 'Uno_E_Guirero', 'Explosion', '2022-07-04 02:27:20'),
(171, 56, 38, 'Rowdy_Shady', 'Kratos_Bolkov', 'Knife', '2022-07-04 04:38:39'),
(172, 56, 61, 'Rowdy_Shady', 'Alex_H._Shady', 'Knife', '2022-07-04 04:39:52'),
(173, 56, 61, 'Rowdy_Shady', 'Alex_H._Shady', 'Sniper', '2022-07-04 04:43:20'),
(174, 56, 12, 'Rowdy_Shady', 'JneL_Badger', 'Sniper', '2022-07-04 04:43:23'),
(175, 1, 56, 'Kovalchin_Bolkov', 'Rowdy_Shady', 'Sniper', '2022-07-04 05:08:57'),
(176, 61, 1, 'Alex_H._Shady', 'Kovalchin_Bolkov', 'Combat shotgun', '2022-07-04 05:29:31'),
(177, 1, 1, 'Kovalchin_Bolkov', 'Kovalchin_Bolkov', 'Explosion', '2022-07-04 05:29:50'),
(178, 56, 61, 'Rowdy_Shady', 'Alex_H._Shady', 'Knife', '2022-07-04 06:43:23'),
(179, 56, 61, 'Rowdy_Shady', 'Alex_H._Shady', 'Knife', '2022-07-04 06:43:53'),
(180, 56, 144, 'Rowdy_Shady', 'Lil_Jizz', 'Knife', '2022-07-04 06:45:00'),
(181, 56, 144, 'Rowdy_Shady', 'Lil_Jizz', 'Knife', '2022-07-04 06:45:20'),
(182, 56, 61, 'Rowdy_Shady', 'Alex_H._Shady', 'Knife', '2022-07-04 06:46:04'),
(183, 56, 61, 'Rowdy_Shady', 'Alex_H._Shady', 'Knife', '2022-07-04 06:46:42'),
(184, 56, 113, 'Rowdy_Shady', 'Brianna_Villamonte', 'Sniper', '2022-07-04 06:49:24'),
(185, 56, 61, 'Rowdy_Shady', 'Alex_H._Shady', 'Explosion', '2022-07-04 06:53:39'),
(186, 144, 144, 'Lil_Jizz', 'Lil_Jizz', 'Explosion', '2022-07-04 06:59:09'),
(187, 144, 144, 'Lil_Jizz', 'Lil_Jizz', 'Explosion', '2022-07-04 07:03:22'),
(188, 56, 144, 'Pain', 'Lil_Jizz', 'Knife', '2022-07-04 07:54:37'),
(189, 144, 56, 'Lil_Jizz', 'Rowdy_Shady', 'Knife', '2022-07-04 07:56:46'),
(190, 16, 60, 'Bot', 'Ryder_Wilson', 'Deagle', '2022-07-04 10:29:14'),
(191, 60, 16, 'Ryder_Wilson', 'Uno_E_Guirero', 'Deagle', '2022-07-04 10:31:24'),
(192, 60, 16, 'Ryder_Wilson', 'Uno_E_Guirero', 'M4', '2022-07-04 10:31:59'),
(193, 60, 16, 'Ryder_Wilson', 'Uno_E_Guirero', 'Deagle', '2022-07-04 10:32:34'),
(194, 60, 16, 'Ryder_Wilson', 'Uno_E_Guirero', 'Deagle', '2022-07-04 10:32:40'),
(195, 61, 61, 'Alex_H._Shady', 'Alex_H._Shady', 'Explosion', '2022-07-04 12:03:44'),
(196, 60, 95, 'Ryder_Wilson', 'Sung_Jinwoo', 'Deagle', '2022-07-04 12:19:07'),
(197, 95, 95, 'Sung_Jinwoo', 'Sung_Jinwoo', 'Explosion', '2022-07-04 12:21:54'),
(198, 95, 95, 'Sung_Jinwoo', 'Sung_Jinwoo', 'Explosion', '2022-07-04 12:24:22'),
(199, 144, 15, 'Lil_Jizz', 'Lyell_Frost', 'Sniper', '2022-07-04 13:53:12'),
(200, 15, 15, 'Lyell_Frost', 'Lyell_Frost', 'Explosion', '2022-07-04 13:54:30'),
(201, 144, 61, 'Lil_Jizz', 'Alex_H._Shady', 'Sniper', '2022-07-04 14:10:57'),
(202, 61, 61, 'Alex_H._Shady', 'Alex_H._Shady', 'Explosion', '2022-07-04 14:12:20'),
(203, 144, 160, 'Lil_Jizz', 'Kenji_Guyabano', 'Sniper', '2022-07-04 14:12:31'),
(204, 56, 61, 'Pain', 'Alex_H._Shady', 'Knife', '2022-07-04 14:24:02'),
(205, 56, 61, 'Pain', 'Alex_H._Shady', 'Knife', '2022-07-04 14:25:02'),
(206, 5, 5, 'han_lue', 'han_lue', 'Explosion', '2022-07-04 15:58:23'),
(207, 12, 12, 'JneL_Badger', 'JneL_Badger', 'Explosion', '2022-07-05 01:29:17'),
(208, 165, 165, 'Jelo_Taniman', 'Jelo_Taniman', 'Explosion', '2022-07-05 02:34:24'),
(209, 165, 165, 'Jelo_Taniman', 'Jelo_Taniman', 'Explosion', '2022-07-05 02:34:40'),
(210, 16, 16, 'Uno_E_Guirero', 'Uno_E_Guirero', 'Explosion', '2022-07-05 04:01:09'),
(211, 56, 56, 'Rowdy_Shady', 'Rowdy_Shady', 'Explosion', '2022-07-05 04:54:36'),
(212, 60, 56, 'Ryder_Wilson', 'Rowdy_Shady', 'Deagle', '2022-07-05 05:56:48'),
(213, 32, 32, 'Senichi_Oda', 'Senichi_Oda', 'Explosion', '2022-07-05 06:55:23'),
(214, 16, 12, 'Uno_E_Guirero', 'JneL_Badger', 'Sniper', '2022-07-05 08:01:05'),
(215, 56, 61, 'Slim_Shady', 'Alex_H._Shady', 'Knife', '2022-07-05 14:18:50'),
(216, 61, 56, 'Alex_H._Shady', 'Slim_Shady', 'Sniper', '2022-07-05 14:43:43'),
(217, 56, 32, 'Datu_Ismael', 'Senichi_Oda', 'Knife', '2022-07-05 15:12:35'),
(218, 32, 32, 'Senichi_Oda', 'Senichi_Oda', 'Explosion', '2022-07-05 15:17:59'),
(219, 119, 119, 'Dale_Enzo_Villamonte', 'Dale_Enzo_Villamonte', 'Explosion', '2022-07-05 15:34:39'),
(220, 61, 56, 'Alex_H._Shady', 'Amaru_Sy', 'Fists', '2022-07-05 16:08:20'),
(221, 61, 56, 'Alex_H._Shady', 'Amaru_Sy', 'Fists', '2022-07-05 16:12:06'),
(222, 56, 56, 'Amaru_Crawford', 'Amaru_Crawford', 'Explosion', '2022-07-05 17:52:06'),
(223, 1, 56, 'Kovalchin_Bolkov', 'Amaru_Crawford', 'Sniper', '2022-07-06 03:38:05'),
(224, 1, 89, 'Kovalchin_Bolkov', 'Stephanie_Shady', 'Sniper', '2022-07-06 03:38:23'),
(225, 1, 66, 'Kovalchin_Bolkov', 'Marlon_Bautista', 'Sniper', '2022-07-06 03:40:57'),
(226, 1, 61, 'Kovalchin_Bolkov', 'Alex_H._Shady', 'M4', '2022-07-06 03:43:39'),
(227, 1, 56, 'Kovalchin_Bolkov', 'Amaru_Crawford', 'M4', '2022-07-06 03:44:10'),
(228, 1, 56, 'Kovalchin_Bolkov', 'Amaru_Crawford', 'Sniper', '2022-07-06 03:45:25'),
(229, 1, 89, 'Kovalchin_Bolkov', 'Stephanie_Shady', 'Sniper', '2022-07-06 03:45:29'),
(230, 1, 89, 'Kovalchin_Bolkov', 'Stephanie_Shady', 'Sniper', '2022-07-06 03:46:32'),
(231, 1, 56, 'Kovalchin_Bolkov', 'Amaru_Crawford', 'Sniper', '2022-07-06 03:47:23'),
(232, 1, 56, 'Kovalchin_Bolkov', 'Amaru_Crawford', 'Combat shotgun', '2022-07-06 03:47:32'),
(233, 61, 12, 'Alex_H._Shady', 'JneL_Badger', 'Deagle', '2022-07-06 04:18:28'),
(234, 144, 144, 'Lil_Jizz', 'Lil_Jizz', 'Explosion', '2022-07-06 05:00:30'),
(235, 1, 1, 'Kovalchin_Bolkov', 'Kovalchin_Bolkov', 'Explosion', '2022-07-06 07:08:04'),
(236, 1, 1, 'Kovalchin_Bolkov', 'Kovalchin_Bolkov', 'Explosion', '2022-07-06 07:08:18'),
(237, 184, 184, 'Kim_Se_Villamonte', 'Kim_Se_Villamonte', 'Explosion', '2022-07-06 08:34:27'),
(238, 16, 16, 'Uno_E_Guirero', 'Uno_E_Guirero', 'Explosion', '2022-07-06 08:38:12'),
(239, 89, 89, 'Stephanie_Shady', 'Stephanie_Shady', 'Explosion', '2022-07-06 08:43:41'),
(240, 16, 16, 'Uno_E_Guirero', 'Uno_E_Guirero', 'Explosion', '2022-07-06 10:04:44'),
(241, 144, 144, 'Lil_Jizz', 'Lil_Jizz', 'Explosion', '2022-07-06 11:35:05'),
(242, 205, 60, '_Justine_', 'Ryder_Wilson', 'Deagle', '2022-07-12 13:01:50'),
(243, 73, 73, 'John_Skie', 'John_Skie', 'Explosion', '2022-07-13 13:05:13'),
(244, 1, 56, 'Kovalchin_Bolkov', 'Amaru_Crawford', 'Deagle', '2022-07-14 00:30:38'),
(245, 1, 213, 'Kovalchin_Bolkov', 'New_Player', 'Sniper', '2022-07-15 04:15:01'),
(246, 1, 213, 'Kovalchin_Bolkov', 'New_Player', 'Sniper', '2022-07-15 04:16:03'),
(247, 221, 221, 'Jerry_Villaruel', 'Jerry_Villaruel', 'Explosion', '2022-07-17 12:12:21'),
(248, 222, 221, 'Way_Jie', 'Jerry_Villaruel', 'Fists', '2022-07-17 12:19:34');

-- --------------------------------------------------------

--
-- Table structure for table `landobjects`
--

CREATE TABLE `landobjects` (
  `id` int(10) NOT NULL,
  `landid` int(10) DEFAULT NULL,
  `modelid` smallint(5) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `price` int(10) DEFAULT NULL,
  `pos_x` float DEFAULT NULL,
  `pos_y` float DEFAULT NULL,
  `pos_z` float DEFAULT NULL,
  `rot_x` float DEFAULT NULL,
  `rot_y` float DEFAULT NULL,
  `rot_z` float DEFAULT NULL,
  `door_opened` tinyint(1) DEFAULT 0,
  `door_locked` tinyint(1) DEFAULT 0,
  `move_x` float DEFAULT 0,
  `move_y` float DEFAULT 0,
  `move_z` float DEFAULT 0,
  `move_rx` float DEFAULT 0,
  `move_ry` float DEFAULT 0,
  `move_rz` float DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lands`
--

CREATE TABLE `lands` (
  `id` int(10) NOT NULL,
  `ownerid` int(10) DEFAULT 0,
  `owner` varchar(24) DEFAULT 'Nobody',
  `price` int(10) DEFAULT 0,
  `min_x` float DEFAULT 0,
  `min_y` float DEFAULT 0,
  `max_x` float DEFAULT 0,
  `max_y` float DEFAULT 0,
  `height` float DEFAULT 0,
  `lx` float NOT NULL,
  `ly` float NOT NULL,
  `lz` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `log_admin`
--

CREATE TABLE `log_admin` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log_admin`
--

INSERT INTO `log_admin` (`id`, `date`, `description`) VALUES
(1, '2022-06-30 14:59:39', 'Kovalchin_Bolkov (uid: 1) has used /givecarvoucher to give 5 to Julian_Allain (uid: 34).'),
(2, '2022-06-30 15:21:40', 'Shady (uid: 56) has used /removecarvoucher to give 5 to Julian_Allain (uid: 34).'),
(3, '2022-07-03 12:50:18', 'Rowdy_Shady (uid: 56) has used /giveweaponvoucher to give 1 to Rowdy_Shady (uid: 56).'),
(4, '2022-07-05 05:03:37', 'Rowdy_Shady (uid: 56) has used /giveweaponvoucher to give 1 to Rowdy_Shady (uid: 56).'),
(5, '2022-07-05 15:22:29', 'Datu_Ismael (uid: 56) has used /giveweaponvoucher to give 1 to Datu_Ismael (uid: 56).'),
(6, '2022-07-05 17:45:26', 'Amaru_Crawford (uid: 56) has used /giveweaponvoucher to give 2 to Amaru_Crawford (uid: 56).'),
(7, '2022-07-13 00:53:25', 'Ariane_Smith (uid: 206) has used /givehousevoucher to give 1 to Marco_Costello (uid: 207).');

-- --------------------------------------------------------

--
-- Table structure for table `log_bans`
--

CREATE TABLE `log_bans` (
  `id` int(10) NOT NULL,
  `uid` int(10) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log_bans`
--

INSERT INTO `log_bans` (`id`, `uid`, `date`, `description`) VALUES
(1, 59, '2022-07-01 15:47:19', 'Dolf_Gonzales (IP: 120.29.77.144) was banned by Anti-Cheat, reason: Airbreak'),
(2, 5, '2022-07-06 12:02:41', 'Dom_Toretto (IP: 175.176.5.104) was banned by Anti-Cheat, reason: Car warping');

-- --------------------------------------------------------

--
-- Table structure for table `log_cheat`
--

CREATE TABLE `log_cheat` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log_cheat`
--

INSERT INTO `log_cheat` (`id`, `date`, `description`) VALUES
(1, '2022-06-30 03:40:39', 'Paul_Suarez (uid: 26) had a desynced AK-47 with -31073 ammunition.'),
(2, '2022-06-30 04:00:40', 'Paul_Suarez (uid: 26) had a desynced M4 with -31073 ammunition.'),
(3, '2022-06-30 06:07:06', 'Paul_Suarez (uid: 26) had a desynced AK-47 with -31073 ammunition.'),
(4, '2022-06-30 06:10:32', 'Paul_Suarez (uid: 26) had a desynced M4 with -31073 ammunition.'),
(5, '2022-06-30 07:00:18', 'Paul_Suarez (uid: 26) had a desynced M4 with -31073 ammunition.'),
(6, '2022-06-30 17:31:59', 'Alex_Fellas (uid: 61) had a desynced Shotgun with 5 ammunition.'),
(7, '2022-06-30 17:44:17', 'Alex_Fellas (uid: 61) had a desynced Shotgun with 5 ammunition.'),
(8, '2022-06-30 17:50:30', 'Alex_Fellas (uid: 61) had a desynced Shotgun with 5 ammunition.'),
(9, '2022-07-01 05:53:31', 'Alex_Fellas (uid: 61) had a desynced Shotgun with 5 ammunition.'),
(10, '2022-07-01 05:53:35', 'Alex_Fellas (uid: 61) had a desynced Shotgun with 5 ammunition.'),
(11, '2022-07-01 06:28:57', 'Jace_Wayland (uid: 7) had a desynced Shotgun with 5 ammunition.'),
(12, '2022-07-01 06:46:27', 'Jace_Wayland (uid: 7) had a desynced Shotgun with 5 ammunition.'),
(13, '2022-07-01 06:46:57', 'Alex_Fellas (uid: 61) had a desynced Shotgun with 5 ammunition.'),
(14, '2022-07-01 06:54:21', 'Alex_Fellas (uid: 61) had a desynced Shotgun with 5 ammunition.'),
(15, '2022-07-01 07:01:59', 'Alex_Fellas (uid: 61) had a desynced Shotgun with 5 ammunition.'),
(16, '2022-07-01 07:13:39', 'Jace_Wayland (uid: 7) had a desynced Shotgun with 5 ammunition.'),
(17, '2022-07-01 07:16:47', 'Jace_Wayland (uid: 7) had a desynced Shotgun with 5 ammunition.'),
(18, '2022-07-01 07:24:33', 'Marta_Swan (uid: 86) had a desynced AK-47 with -31073 ammunition.'),
(19, '2022-07-01 07:25:53', 'Jace_Wayland (uid: 7) had a desynced Shotgun with 5 ammunition.'),
(20, '2022-07-01 07:26:15', 'Jace_Wayland (uid: 7) had a desynced Shotgun with 5 ammunition.'),
(21, '2022-07-01 07:26:57', 'Kaito_Cruz (uid: 85) had a desynced Minigun with 500 ammunition.'),
(22, '2022-07-01 07:27:00', 'Marta_Swan (uid: 86) had a desynced Tec-9 with -31073 ammunition.'),
(23, '2022-07-01 07:27:05', 'Marta_Swan (uid: 86) had a desynced Tec-9 with -31073 ammunition.'),
(24, '2022-07-01 07:48:08', 'Jace_Wayland (uid: 7) had a desynced Shotgun with 5 ammunition.'),
(25, '2022-07-01 07:52:49', 'Marta_Swan (uid: 86) had a desynced Tec-9 with -31073 ammunition.'),
(26, '2022-07-01 07:56:57', 'Alex_Fellas (uid: 61) had a desynced Shotgun with 5 ammunition.'),
(27, '2022-07-01 07:57:20', 'Alex_Fellas (uid: 61) had a desynced Shotgun with 5 ammunition.'),
(28, '2022-07-01 08:16:33', 'Alex_Fellas (uid: 61) had a desynced Shotgun with 5 ammunition.'),
(29, '2022-07-01 08:23:15', 'Alex_Fellas (uid: 61) had a desynced Shotgun with 5 ammunition.'),
(30, '2022-07-01 08:42:47', 'Alex_Fellas (uid: 61) had a desynced Shotgun with 5 ammunition.'),
(31, '2022-07-01 08:43:00', 'Alex_Fellas (uid: 61) had a desynced Shotgun with 5 ammunition.'),
(32, '2022-07-01 09:34:36', 'Alex_Fellas (uid: 61) had a desynced Shotgun with 5 ammunition.'),
(33, '2022-07-01 09:35:03', 'Alex_Fellas (uid: 61) had a desynced Shotgun with 5 ammunition.'),
(34, '2022-07-01 09:44:36', 'Alex_Fellas (uid: 61) had a desynced Shotgun with 5 ammunition.'),
(35, '2022-07-01 09:59:17', 'Jace_Wayland (uid: 7) had a desynced Shotgun with 10 ammunition.'),
(36, '2022-07-01 10:01:49', 'Jace_Wayland (uid: 7) had a desynced Shotgun with 10 ammunition.'),
(37, '2022-07-01 12:24:51', 'Alex_Fellas (uid: 61) had a desynced Shotgun with 5 ammunition.'),
(38, '2022-07-01 13:13:15', 'Rojelo_Erin (uid: 25) had a desynced Satchel with 100 ammunition.'),
(39, '2022-07-01 13:13:19', 'Rojelo_Erin (uid: 25) had a desynced Satchel with 100 ammunition.'),
(40, '2022-07-01 13:14:26', 'Alex_Fellas (uid: 61) had a desynced Shotgun with 5 ammunition.'),
(41, '2022-07-01 16:24:55', 'Alex_Fellas (uid: 61) had a desynced Shotgun with 5 ammunition.'),
(42, '2022-07-01 16:28:22', 'Alex_Fellas (uid: 61) had a desynced Shotgun with 5 ammunition.'),
(43, '2022-07-03 17:07:58', 'Jace_Wayland (uid: 7) had a desynced Shotgun with 10 ammunition.'),
(44, '2022-07-03 17:07:58', 'Jace_Wayland (uid: 7) had a desynced Shotgun with 10 ammunition.'),
(45, '2022-07-05 02:59:13', 'Lil_Jizz (uid: 144) had a desynced Pool cue with 1 ammunition.'),
(46, '2022-07-05 02:59:20', 'Lil_Jizz (uid: 144) had a desynced Pool cue with 1 ammunition.'),
(47, '2022-07-05 15:16:23', 'Ryu_Yagami (uid: 175) had a desynced Deagle with -31073 ammunition.'),
(48, '2022-07-05 15:16:30', 'Ryu_Yagami (uid: 175) had a desynced Deagle with -31073 ammunition.'),
(49, '2022-07-06 01:13:08', 'Ryu_Yagami (uid: 175) had a desynced Nightstick with -31073 ammunition.'),
(50, '2022-07-06 01:13:10', 'Ryu_Yagami (uid: 175) had a desynced Knife with -31073 ammunition.'),
(51, '2022-07-11 12:32:16', 'Zei_Angel (uid: 199) had a desynced Pool cue with 1 ammunition.'),
(52, '2022-07-11 12:32:26', 'Zei_Angel (uid: 199) had a desynced Pool cue with 1 ammunition.'),
(53, '2022-07-14 15:08:21', 'Ching_Chinc (uid: 211) had a desynced Pool cue with 1 ammunition.'),
(54, '2022-07-14 15:09:49', 'Ching_Chinc (uid: 211) had a desynced Pool cue with 2 ammunition.');

-- --------------------------------------------------------

--
-- Table structure for table `log_contracts`
--

CREATE TABLE `log_contracts` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `log_faction`
--

CREATE TABLE `log_faction` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log_faction`
--

INSERT INTO `log_faction` (`id`, `date`, `description`) VALUES
(1, '2022-06-30 10:15:32', 'Don_Marko (uid: 33) has invited Gab_Velmarco (uid: 6) to Grim Mechanic and Autoparts (id: 4).'),
(2, '2022-06-30 10:16:00', 'Sadboy (uid: 33) has invited Lyell_Tsukino (uid: 15) to Grim Mechanic and Autoparts (id: 4).'),
(3, '2022-06-30 10:27:12', 'Lyell (uid: 15) has invited Steve_Tsukino (uid: 46) to Grim Mechanic and Autoparts (id: 4).'),
(4, '2022-06-30 10:44:19', 'Lyell_Tsukino (uid: 15) has invited Cidss_Tsukino (uid: 20) to Grim Mechanic and Autoparts (id: 4).'),
(5, '2022-06-30 10:54:13', 'Lyell_Tsukino (uid: 15) has invited Moly_Dela_Cruz (uid: 42) to Grim Mechanic and Autoparts (id: 4).'),
(6, '2022-07-01 06:39:17', 'Slim_Shady (uid: 56) has taken Rojelo_Erin\'s (uid: 25) weapons.'),
(7, '2022-07-01 07:40:20', 'Alex_Fellas (uid: 61) has arrested Dan_Tsukino (uid: 45) for 10 minutes, fine: $10000.'),
(8, '2022-07-01 12:18:13', 'Gustavo_Shady (uid: 54) has invited Yuki_Chyper (uid: 83) to Hitman Corporation (id: 7).'),
(9, '2022-07-01 13:11:53', 'Wancho_Cruz (uid: 56) has taken Moly_Dela_Cruz\'s (uid: 42) weapons.'),
(10, '2022-07-01 13:13:51', 'Alex_Fellas (uid: 61) has arrested Moly_Dela_Cruz (uid: 42) for 15 minutes, fine: $10000.'),
(11, '2022-07-01 14:47:40', 'Lyell_Tsukino (uid: 15) has invited Sung_Jinwoo (uid: 95) to Grim Mechanic and Autoparts (id: 4).'),
(12, '2022-07-01 15:33:29', 'Lyell_Frost (uid: 15) has invited han_lue (uid: 5) to Grim Mechanic and Autoparts (id: 4).'),
(13, '2022-07-03 13:29:30', 'Danzil_Zavaroni (uid: 65) has taken Alex_Fellas\'s (uid: 61) weapons.'),
(14, '2022-07-03 14:11:40', 'Gustavo_Shady (uid: 54) has invited Lil_Jizz (uid: 144) to Hitman Corporation (id: 7).'),
(15, '2022-07-04 12:42:29', 'Alex_H._Shady (uid: 61) has given Sung_Jinwoo (uid: 95) a ticket for $500.'),
(16, '2022-07-04 12:42:37', 'Alex_H._Shady (uid: 61) has given Sung_Jinwoo (uid: 95) a ticket for $500.'),
(17, '2022-07-04 12:42:50', 'Alex_H._Shady (uid: 61) has given Sung_Jinwoo (uid: 95) a ticket for $500.'),
(18, '2022-07-04 13:34:57', 'Alex_H._Shady (uid: 61) has arrested Shane_Guiset (uid: 156) for 5 minutes, fine: $5000.');

-- --------------------------------------------------------

--
-- Table structure for table `log_gang`
--

CREATE TABLE `log_gang` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log_gang`
--

INSERT INTO `log_gang` (`id`, `date`, `description`) VALUES
(1, '2022-07-04 14:05:40', 'Issac_Constantine (uid: 157) has invited Don_Marko (uid: 33) to Familia De Vallas (id: 1).');

-- --------------------------------------------------------

--
-- Table structure for table `log_give`
--

CREATE TABLE `log_give` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log_give`
--

INSERT INTO `log_give` (`id`, `date`, `description`) VALUES
(1, '2022-07-01 15:52:51', 'Alex Fellas has transfer $20,000 to Stephanie Shady, their balance now is: $345,574'),
(2, '2022-07-01 15:52:51', 'Alex Fellas (uid: 61) (IP: 175.176.40.44) transferred $20000 to Stephanie Shady (uid: 89) (IP: 112.201.171.189)'),
(3, '2022-07-01 16:09:00', 'Lyell Frost has transfer $750,000 to Alex Fellas, their balance now is: $10,530,032'),
(4, '2022-07-01 16:09:00', 'Lyell Frost (uid: 15) (IP: 49.149.137.126) transferred $750000 to Alex Fellas (uid: 61) (IP: 175.176.40.44)'),
(5, '2022-07-03 05:11:40', 'Lyell has transfer $100,000 to Steve Tsukino, their balance now is: $11,708,214'),
(6, '2022-07-03 05:11:40', 'Lyell (uid: 15) (IP: 49.149.137.126) transferred $100000 to Steve Tsukino (uid: 46) (IP: 175.176.63.49)'),
(7, '2022-07-03 05:15:26', 'Lyell has transfer $50,000 to Steve Tsukino, their balance now is: $11,658,214'),
(8, '2022-07-03 05:15:26', 'Lyell (uid: 15) (IP: 49.149.137.126) transferred $50000 to Steve Tsukino (uid: 46) (IP: 175.176.63.49)'),
(9, '2022-07-04 04:54:55', 'Alex H. Shady has transfer $3,000,000 to Kovalchin Bolkov, their balance now is: $1,328,037'),
(10, '2022-07-04 04:54:55', 'Alex H. Shady (uid: 61) (IP: 175.176.40.87) transferred $3000000 to Kovalchin Bolkov (uid: 1) (IP: 49.145.115.6)'),
(11, '2022-07-04 05:36:49', 'Alex H. Shady has transfer $60,000 to Senichi Oda, their balance now is: $1,291,661'),
(12, '2022-07-04 05:36:49', 'Alex H. Shady (uid: 61) (IP: 175.176.40.87) transferred $60000 to Senichi Oda (uid: 32) (IP: 175.176.4.166)'),
(13, '2022-07-04 13:56:58', 'Alex H. Shady has transfer $140,000 to han lue, their balance now is: $1,176,539'),
(14, '2022-07-04 13:56:58', 'Alex H. Shady (uid: 61) (IP: 175.176.41.2) transferred $140000 to han lue (uid: 5) (IP: 175.176.5.8)'),
(15, '2022-07-05 03:53:29', 'Kovalchin Bolkov has transfer $1,500,000 to Makarov K Juice, their balance now is: $11,947,133'),
(16, '2022-07-05 03:53:29', 'Kovalchin Bolkov (uid: 1) (IP: 49.145.115.6) transferred $1500000 to Makarov K Juice (uid: 167) (IP: 136.158.10.97)'),
(17, '2022-07-06 05:43:36', 'Alex H. Shady has transfer $150,000 to Lil Jizz, their balance now is: $431,441'),
(18, '2022-07-06 05:43:36', 'Alex H. Shady (uid: 61) (IP: 175.176.40.201) transferred $150000 to Lil Jizz (uid: 144) (IP: 112.202.254.35)');

-- --------------------------------------------------------

--
-- Table structure for table `log_namechanges`
--

CREATE TABLE `log_namechanges` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `log_property`
--

CREATE TABLE `log_property` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log_property`
--

INSERT INTO `log_property` (`id`, `date`, `description`) VALUES
(1, '2022-06-30 08:37:43', 'Don_Marko (uid: 33) purchased House (id: 6) for $1.'),
(2, '2022-06-30 09:58:36', 'Lyell_Tsukino (uid: 15) purchased Clothing Line (id: 1) for $1000000.'),
(3, '2022-06-30 10:03:38', 'Lyell_Tsukino (uid: 15) purchased 7/11 (id: 2) for $250000.'),
(4, '2022-06-30 10:21:01', 'Don_Marko (uid: 33) upgraded the stash of their Bullet (id: 94) to level 1/3.'),
(5, '2022-06-30 10:21:08', 'Don_Marko (uid: 33) upgraded the stash of their Bullet (id: 94) to level 2/3.'),
(6, '2022-06-30 10:21:10', 'Don_Marko (uid: 33) upgraded the stash of their Bullet (id: 94) to level 3/3.'),
(7, '2022-06-30 10:21:28', 'Don_Marko (uid: 33) purchased red neon for their Bullet (id: 94)'),
(8, '2022-06-30 10:26:42', 'Don_Marko (uid: 33) upgraded the stash of their Sultan (id: 89) to level 1/3.'),
(9, '2022-06-30 10:26:43', 'Don_Marko (uid: 33) upgraded the stash of their Sultan (id: 89) to level 2/3.'),
(10, '2022-06-30 10:26:44', 'Don_Marko (uid: 33) upgraded the stash of their Sultan (id: 89) to level 3/3.'),
(11, '2022-06-30 10:26:50', 'Don_Marko (uid: 33) purchased yellow neon for their Sultan (id: 89)'),
(12, '2022-06-30 10:46:49', 'Lyell (uid: 15) purchased a Sultan for $7000000.'),
(13, '2022-06-30 11:00:31', 'Lyell (uid: 15) purchased pink neon for their Sultan (id: 108)'),
(14, '2022-06-30 11:03:12', 'Lyell (uid: 15) purchased pink neon for their Bullet (id: 74)'),
(15, '2022-06-30 11:07:01', 'Lyell (uid: 15) purchased pink neon for their Uranus (id: 79)'),
(16, '2022-06-30 11:10:52', 'Lyell (uid: 15) purchased pink neon for their Turismo (id: 75)'),
(17, '2022-06-30 12:07:07', 'Rojelo_Erin (uid: 25) purchased a FCR-900 for $300000.'),
(18, '2022-06-30 14:14:22', 'Lyell_Tsukino (uid: 15) sold their Clothing Line business (id: 1) to the state for $750000'),
(19, '2022-06-30 14:14:46', 'Lyell_Tsukino (uid: 15) sold their 7/11 business (id: 2) to the state for $187500'),
(20, '2022-06-30 14:46:01', 'Admiral (uid: 32) purchased pink neon for their Uranus (id: 123)'),
(21, '2022-06-30 14:53:28', 'Cidss_Tsukino (uid: 20) sold their Faggio (id: 19) to the dealership for $0'),
(22, '2022-06-30 14:58:05', 'Lyell_Tsukino (uid: 15) purchased yellow neon for their Elegy (id: 5)'),
(23, '2022-06-30 15:05:03', 'Kovalchin_Bolkov (uid: 1) (IP: 49.145.118.140) sold their NRG-500 (id: 2) for $5000000 to Lyell_Tsukino (uid: 15) (IP: 49.149.137.126)'),
(24, '2022-06-30 15:06:53', 'Kovalchin_Bolkov (uid: 1) (IP: 49.145.118.140) sold their Bloodring Banger (id: 125) for $5000000 to Lyell_Tsukino (uid: 15) (IP: 49.149.137.126)'),
(25, '2022-06-30 15:14:32', 'Lyell_Tsukino (uid: 15) purchased pink neon for their Uranus (id: 134)'),
(26, '2022-06-30 15:34:26', 'Cidss_Tsukino (uid: 20) purchased red neon for their Sultan (id: 115)'),
(27, '2022-06-30 17:01:16', 'Lyell_Tsukino (uid: 15) purchased red neon for their Sultan (id: 135)'),
(28, '2022-06-30 17:01:17', 'Admiral (uid: 32) purchased red neon for their Uranus (id: 123)'),
(29, '2022-06-30 17:01:25', 'Admiral (uid: 32) purchased blue neon for their Uranus (id: 123)'),
(30, '2022-06-30 17:02:42', 'Admiral (uid: 32) purchased pink neon for their Uranus (id: 123)'),
(31, '2022-06-30 17:06:05', 'Lyell_Tsukino (uid: 15) purchased red neon for their Infernus (id: 73)'),
(32, '2022-07-01 03:20:38', 'Lyell (uid: 15) purchased yellow neon for their Infernus (id: 83)'),
(33, '2022-07-01 03:24:10', 'Cidss_Tsukino (uid: 20) purchased a Blade for $310000.'),
(34, '2022-07-01 03:26:21', 'Lyell (uid: 15) purchased a Phoenix for $1000000.'),
(35, '2022-07-01 03:28:11', 'Lyell (uid: 15) purchased pink neon for their Phoenix (id: 158)'),
(36, '2022-07-01 03:40:33', 'Lyell (uid: 15) purchased a Euros for $1000000.'),
(37, '2022-07-01 03:41:07', 'Lyell_Tsukino (uid: 15) sold their Euros (id: 159) to the dealership for $750000'),
(38, '2022-07-01 03:42:55', 'Cidss_Tsukino (uid: 20) sold their Blade (id: 157) to the dealership for $232500'),
(39, '2022-07-01 03:45:51', 'Cidss_Tsukino (uid: 20) sold their Sanchez (id: 116) to the dealership for $0'),
(40, '2022-07-01 03:46:32', 'Cidss_Tsukino (uid: 20) purchased a FCR-900 for $300000.'),
(41, '2022-07-01 04:20:48', 'Moly_Dela_Cruz (uid: 42) purchased a Huntley for $240000.'),
(42, '2022-07-01 04:45:09', 'Moly_Dela_Cruz (uid: 42) purchased red neon for their Sultan (id: 80)'),
(43, '2022-07-01 05:30:28', 'Don_Marko (uid: 33) upgraded the stash of their Sultan (id: 93) to level 1/3.'),
(44, '2022-07-01 05:30:29', 'Don_Marko (uid: 33) upgraded the stash of their Sultan (id: 93) to level 2/3.'),
(45, '2022-07-01 05:30:31', 'Don_Marko (uid: 33) upgraded the stash of their Sultan (id: 93) to level 3/3.'),
(46, '2022-07-01 06:12:55', 'Kovalchin_Bolkov (uid: 1) (IP: 49.145.115.6) sold their Monster (id: 170) for $1300000 to Lyell_Tsukino (uid: 15) (IP: 49.149.137.126)'),
(47, '2022-07-01 08:20:41', 'Yuki_Chyper (uid: 83) purchased House (id: 14) for $15000.'),
(48, '2022-07-01 08:37:24', 'Tadas_Tavo (uid: 88) purchased Apartment (id: 61) for $8000.'),
(49, '2022-07-01 11:25:04', 'Yuki_Chyper (uid: 83) purchased a Sunrise for $230000.'),
(50, '2022-07-01 11:28:26', 'Admiral (uid: 32) purchased pink neon for their Sultan (id: 194)'),
(51, '2022-07-01 11:33:12', 'Admiral (uid: 32) purchased blue neon for their Sultan (id: 197)'),
(52, '2022-07-01 13:34:25', 'Tadas_Tavo (uid: 88) purchased a Vincent for $12000.'),
(53, '2022-07-01 14:26:35', 'Uno_E_Guirero (uid: 16) purchased House (id: 50) for $12000.'),
(54, '2022-07-01 14:26:44', 'Uno_E_Guirero (uid: 16) purchased House (id: 49) for $8000.'),
(55, '2022-07-01 14:30:43', 'Uno_E_Guirero (uid: 16) purchased Apartment (id: 48) for $8000.'),
(56, '2022-07-01 14:30:54', 'Uno_E_Guirero (uid: 16) purchased House (id: 51) for $12000.'),
(57, '2022-07-01 14:31:12', 'Uno_E_Guirero (uid: 16) purchased House (id: 52) for $15000.'),
(58, '2022-07-01 14:52:49', 'han_lue (uid: 5) purchased a Landstalker for $120000.'),
(59, '2022-07-01 16:08:45', 'Alex_Fellas (uid: 61) (IP: 175.176.40.44) sold their Bullet (id: 136) for $1 to Lyell_Frost (uid: 15) (IP: 49.149.137.126)'),
(60, '2022-07-01 16:10:02', 'Slim_Shady (uid: 56) upgraded the stash of their Sultan (id: 138) to level 1/3.'),
(61, '2022-07-01 16:10:03', 'Slim_Shady (uid: 56) upgraded the stash of their Sultan (id: 138) to level 2/3.'),
(62, '2022-07-01 16:15:12', 'Lyell (uid: 15) sold their Bullet (id: 136) to the dealership for $0'),
(63, '2022-07-01 16:19:01', 'Alex_Fellas (uid: 61) purchased a Wayfarer for $50000.'),
(64, '2022-07-01 17:09:20', 'Alex_Fellas (uid: 61) purchased 7/11 (id: 18) for $250000.'),
(65, '2022-07-02 00:07:34', 'Kairi_X_Sicaro (uid: 109) purchased House (id: 83) for $12000.'),
(66, '2022-07-02 02:22:55', 'Drey_Winchester (uid: 48) purchased House (id: 57) for $12000.'),
(67, '2022-07-02 04:59:29', 'Lyell (uid: 15) purchased a Phoenix for $1000000.'),
(68, '2022-07-02 04:59:59', 'Lyell_Frost (uid: 15) sold their Phoenix (id: 232) to the dealership for $750000'),
(69, '2022-07-02 05:51:55', 'Lyell (uid: 15) purchased red neon for their Monster (id: 170)'),
(70, '2022-07-02 07:23:23', 'Don_Marko (uid: 33) upgraded the stash of their Turismo (id: 90) to level 1/3.'),
(71, '2022-07-02 07:23:25', 'Don_Marko (uid: 33) upgraded the stash of their Turismo (id: 90) to level 2/3.'),
(72, '2022-07-02 07:23:26', 'Don_Marko (uid: 33) upgraded the stash of their Turismo (id: 90) to level 3/3.'),
(73, '2022-07-02 09:11:22', 'Senichi_Oda (uid: 32) purchased white neon for their Uranus (id: 123)'),
(74, '2022-07-02 17:14:24', 'Marlon_Bautista (uid: 66) purchased House (id: 69) for $15000.'),
(75, '2022-07-04 03:53:40', 'Rowdy_Shady (uid: 56) upgraded the stash of their Camper (id: 279) to level 1/3.'),
(76, '2022-07-04 03:53:52', 'Rowdy_Shady (uid: 56) upgraded the stash of their Camper (id: 279) to level 2/3.'),
(77, '2022-07-04 03:53:53', 'Rowdy_Shady (uid: 56) upgraded the stash of their Camper (id: 279) to level 3/3.'),
(78, '2022-07-04 04:55:27', 'Kovalchin_Bolkov (uid: 1) (IP: 49.145.115.6) sold their Sultan (id: 280) for $1 to Alex_H._Shady (uid: 61) (IP: 175.176.40.87)'),
(79, '2022-07-04 05:31:35', 'Oda (uid: 32) purchased blue neon for their Sultan (id: 280)'),
(80, '2022-07-04 07:26:25', 'Tom_Sawyer (uid: 154) purchased House (id: 103) for $15000.'),
(81, '2022-07-04 07:27:36', 'Tom_Sawyer (uid: 154) sold their house (id: 103) to the state for $11250'),
(82, '2022-07-04 11:54:08', 'Makoy_Kush (uid: 155) purchased House (id: 103) for $15000.'),
(83, '2022-07-04 14:00:39', 'han_lue (uid: 5) (IP: 175.176.5.8) sold their Landstalker (id: 212) for $1 to Alex_H._Shady (uid: 61) (IP: 175.176.41.2)'),
(84, '2022-07-04 14:03:56', 'han_lue (uid: 5) purchased white neon for their Landstalker (id: 212)'),
(85, '2022-07-04 14:32:46', 'han_lue (uid: 5) purchased a Sunrise for $230000.'),
(86, '2022-07-04 14:51:53', 'Sung_Jinwoo (uid: 95) (IP: 175.176.5.8) sold their Sultan (id: 194) for $50000 to han_lue (uid: 5) (IP: 175.176.5.8)'),
(87, '2022-07-04 14:52:25', 'han_lue (uid: 5) (IP: 175.176.5.8) sold their Sultan (id: 194) for $1 to Sung_Jinwoo (uid: 95) (IP: 175.176.5.8)'),
(88, '2022-07-04 14:55:06', 'Sung_Jinwoo (uid: 95) purchased a Sabre for $210000.'),
(89, '2022-07-04 16:20:02', 'Marlon_Bautista (uid: 66) purchased House (id: 107) for $15000.'),
(90, '2022-07-04 17:29:38', 'Don_Marko (uid: 33) purchased House (id: 118) for $1.'),
(91, '2022-07-05 04:37:07', 'Lil_Jizz (uid: 144) purchased House (id: 109) for $100000.'),
(92, '2022-07-05 04:44:52', 'Marlon_Bautista (uid: 66) purchased a Bobcat for $410000.'),
(93, '2022-07-05 05:24:21', 'Sung_Jinwoo (uid: 95) purchased a Mesa for $410000.'),
(94, '2022-07-05 06:46:05', 'Sung_Jinwoo (uid: 95) purchased House (id: 108) for $12000.'),
(95, '2022-07-05 06:46:26', 'Sung_Jinwoo (uid: 95) purchased House (id: 110) for $12000.'),
(96, '2022-07-05 08:44:25', 'Lil_Jizz (uid: 144) purchased a Freeway for $65000.'),
(97, '2022-07-05 09:11:12', 'JneL_Badger (uid: 12) purchased House (id: 104) for $15000.'),
(98, '2022-07-05 10:31:42', 'Oda (uid: 32) purchased a Alpha for $500000.'),
(99, '2022-07-05 11:10:18', 'Senichi_Oda (uid: 32) (IP: 175.176.4.137) sold their Alpha (id: 313) for $80000 to han_lue (uid: 5) (IP: 175.176.5.104)'),
(100, '2022-07-05 15:15:44', 'Ryu_Yagami (uid: 175) sold their Faggio (id: 325) to the dealership for $0'),
(101, '2022-07-05 16:04:03', 'Alex_H._Shady (uid: 61) purchased House (id: 92) for $1000000.'),
(102, '2022-07-05 16:42:41', 'Amaru_Sy (uid: 56) purchased a Voodoo for $180000.'),
(103, '2022-07-06 01:09:17', 'Ryu_Yagami (uid: 175) purchased a Faggio for $15000.'),
(104, '2022-07-06 04:02:38', 'Alex_H._Shady (uid: 61) sold their house (id: 92) to the state for $750000'),
(105, '2022-07-06 04:12:26', 'Alex_H._Shady (uid: 61) (IP: 175.176.40.201) sold their house (id: 92) for $1 to Lil_Jizz (uid: 144) (IP: 124.106.235.90)'),
(106, '2022-07-06 05:52:15', 'Lil_Jizz (uid: 144) (IP: 112.202.254.35) sold their house (id: 92) for $1 to Alex_H._Shady (uid: 61) (IP: 175.176.40.201)'),
(107, '2022-07-06 05:56:39', 'Amaru_Crawford (uid: 56) purchased a Freeway for $65000.'),
(108, '2022-07-06 05:57:06', 'Amaru_Crawford (uid: 56) (IP: 119.94.13.111) sold their Freeway (id: 338) for $1 to Lil_Jizz (uid: 144) (IP: 112.202.254.35)'),
(109, '2022-07-06 12:02:46', 'Oda (uid: 32) purchased a ZR-350 for $560000.'),
(110, '2022-07-06 12:07:38', 'Oda (uid: 32) purchased a Mesa for $410000.'),
(111, '2022-07-06 12:09:08', 'Oda (uid: 32) (IP: 175.176.3.8) sold their ZR-350 (id: 343) for $1 to Brian_Oconner (uid: 95) (IP: 175.176.3.250)'),
(112, '2022-07-14 00:49:32', 'Amaru_Crawford (uid: 56) purchased a land (id: 3) in Red County for $1.');

-- --------------------------------------------------------

--
-- Table structure for table `log_punishments`
--

CREATE TABLE `log_punishments` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log_punishments`
--

INSERT INTO `log_punishments` (`id`, `date`, `description`) VALUES
(1, '2022-06-30 08:21:20', 'Senichi_oda (uid: 32) kicked Roberto_Locco (uid: 29), reason: abuse report'),
(2, '2022-06-30 14:15:02', 'Senichi_oda (uid: 32) has banned IP: 112.198.66.128, reason: wannabe ryder'),
(3, '2022-06-30 16:52:44', 'SERVER prisoned Alex_Fellas (uid: 61) for 15 minutes, reason: quitting during arrest'),
(4, '2022-06-30 17:11:52', 'SERVER prisoned Jace_Wayland (uid: 7) for 15 minutes, reason: quitting during arrest'),
(5, '2022-07-01 04:30:44', 'Slim_Shady (uid: 56) has banned IP: 91.245.252.60, reason: Using cheats.'),
(6, '2022-07-01 06:49:01', 'SERVER prisoned Lyell_Tsukino (uid: 15) for 15 minutes, reason: quitting during arrest'),
(7, '2022-07-01 07:29:19', 'Kovalchin_Bolkov (uid: 1) kicked Kaito_Cruz (uid: 85), reason: packyyo'),
(8, '2022-07-01 10:02:00', 'Kovalchin_Bolkov (uid: 1) kicked Yoshi_Tsukino (uid: 91), reason: off mo yan naka tuwad ka sheesh last warning'),
(9, '2022-07-01 11:23:15', 'Admiral (uid: 32) kicked Yuki_Chyper (uid: 83), reason: disrespecting admin'),
(10, '2022-07-01 15:04:43', 'Senichi_Oda (uid: 32) kicked Sung_Jinwoo (uid: 95), reason: desynced'),
(11, '2022-07-02 06:30:03', 'Senichi_Oda (uid: 32) has banned IP: 49.149.131.244, reason: disrespecting admin'),
(12, '2022-07-05 19:12:59', 'Amaru_Crawford (uid: 56) has banned IP: 203.189.116.182, reason: N/A'),
(13, '2022-07-06 02:27:16', 'Amaru_Crawford (uid: 56) kicked Amaru_Crawford (uid: 56), reason: Relog'),
(14, '2022-07-06 02:58:08', 'Amaru_Crawford (uid: 56) kicked Amaru_Crawford (uid: 56), reason: relog'),
(15, '2022-07-06 12:35:54', 'Senichi_Oda (uid: 32) offline prisoned Brian_Oconner for 1 minutes, reason: test'),
(16, '2022-07-15 04:45:57', 'SERVER prisoned New_Player (uid: 213) for 15 minutes, reason: quitting during arrest');

-- --------------------------------------------------------

--
-- Table structure for table `log_referrals`
--

CREATE TABLE `log_referrals` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `log_vip`
--

CREATE TABLE `log_vip` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `object`
--

CREATE TABLE `object` (
  `mobjID` int(11) NOT NULL,
  `mobjModel` int(11) NOT NULL DEFAULT 980,
  `mobjInterior` int(11) NOT NULL DEFAULT 0,
  `mobjWorld` int(11) NOT NULL DEFAULT 0,
  `mobjX` float NOT NULL DEFAULT 0,
  `mobjY` float NOT NULL DEFAULT 0,
  `mobjZ` float NOT NULL DEFAULT 0,
  `mobjRX` float NOT NULL DEFAULT 0,
  `mobjRY` float NOT NULL DEFAULT 0,
  `mobjRZ` float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `object`
--

INSERT INTO `object` (`mobjID`, `mobjModel`, `mobjInterior`, `mobjWorld`, `mobjX`, `mobjY`, `mobjZ`, `mobjRX`, `mobjRY`, `mobjRZ`) VALUES
(1, 9482, 0, 0, 641.787, -440.393, 21.5851, 0, 0, 272.062),
(3, 19989, 0, 0, 603.914, -408.259, 18.7474, 0, 0, -89.8662),
(4, 9482, 0, 0, 681.928, -674.426, 21.4574, 0, 0, -90.1008),
(5, 19989, 0, 0, 675.625, -686.27, 15.2003, 0, 0, -0.9567),
(20, 8674, 0, 0, 706.589, -437.643, 17.7506, 0, 0, 180),
(21, 8674, 0, 0, 696.309, -437.643, 17.7506, 0, 0, 180),
(22, 8674, 0, 0, 686.018, -437.633, 17.7506, 0, 0, 180),
(23, 8674, 0, 0, 675.728, -437.643, 17.7506, 0, 0, 180),
(24, 8674, 0, 0, 665.438, -437.643, 17.7506, 0, 0, 180),
(25, 8674, 0, 0, 656.708, -437.643, 17.7506, 0, 0, 180),
(30, 1411, 0, 0, 692.393, -671.457, 16.8876, 0, 0, 90.7753),
(31, 1411, 0, 0, 692.324, -666.287, 16.8876, 0, 0, 90.7753),
(32, 1411, 0, 0, 692.254, -661.117, 16.8876, 0, 0, 90.7753),
(33, 1411, 0, 0, 692.184, -655.958, 16.8876, 0, 0, 90.7753),
(34, 1411, 0, 0, 692.115, -650.788, 16.8876, 0, 0, 90.7753),
(35, 1411, 0, 0, 692.045, -645.619, 16.8876, 0, 0, 90.7753),
(36, 19425, 0, 0, 680.185, -674.483, 15.1874, 0, 0, 1.6138),
(37, 19425, 0, 0, 683.352, -674.395, 15.1874, 0, 0, 1.6138),
(38, 19335, 0, 0, 660.383, -686.582, 35.7303, 0, 0, 20.703),
(40, 8210, 0, 0, 633.794, -640.457, 18.6136, 0, 0, -21.068),
(41, 8210, 0, 0, 593.399, -607.213, 18.6159, 0, 0, 302.163),
(42, 8210, 0, 0, 576.135, -556.202, 18.6111, 0, 0, -84.8177),
(43, 8210, 0, 0, 582.152, -502.267, 18.6153, 0, 0, 252.093),
(44, 8210, 0, 0, 610.985, -459.346, 18.1789, 0, 0, -137.74),
(45, 9482, 0, 0, 641.791, -441.067, 21.6474, 0, 0, 87.4735),
(46, 19425, 0, 0, 639.109, -440.924, 15.1874, 0, 0, 176.792),
(47, 19425, 0, 0, 644.165, -441.156, 15.1874, 0, 0, 176.792),
(48, 750, 0, 0, 649.858, -440.784, 15.3958, 0, 0, 178.878),
(49, 750, 0, 0, 634.055, -440.754, 15.3958, 0, 0, 178.878),
(50, 18749, 0, 0, 636.271, -440.456, 16.6559, 0, 0, 179.471),
(51, 19123, 0, 0, 647.292, -443.405, 15.8174, 0, 0, 271.146),
(52, 19123, 0, 0, 647.361, -446.865, 15.8174, 0, 0, 271.146),
(53, 19123, 0, 0, 647.432, -450.434, 15.8174, 0, 0, 271.146),
(54, 19123, 0, 0, 636.182, -443.538, 15.8174, 0, 0, 271.146),
(55, 19123, 0, 0, 636.25, -446.948, 15.8174, 0, 0, 271.146),
(56, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(58, 19056, 0, 0, 673.239, -538.808, 15.8159, 0, 0, 1.2952),
(62, 10244, 0, 0, 608.884, -553.403, 18.0559, 0, 0, -90.4954),
(64, 3241, 0, 0, 738.737, -470.314, 15.8859, 0, 0, 42.5398),
(66, 3605, 0, 0, 730.912, -626.252, 20.7759, 0, 0, -143.051),
(68, 8210, 0, 0, 610.784, -459.182, 18.5843, 0, 0, -138.204),
(69, 8210, 0, 0, 715.806, -660.015, 16.2023, 0, 0, 31.0596),
(70, 8210, 0, 0, 763.367, -631.371, 16.2023, 0, 0, 31.0596),
(72, 966, 0, 0, 685.232, -674.327, 15.1493, 0, 0, 0.7362),
(73, 968, 0, 0, 685.227, -674.323, 15.9974, 0, 0, 359.754),
(74, 4514, 0, 0, 660.099, -658.285, 17.1089, 0, 0, -96.9959),
(75, 11499, 0, 0, 669.423, -666.942, 15.5663, 0, -0.6, 119.862),
(78, 1537, 0, 0, 623.032, -566.347, 25.1231, 0, 0, 88.6373),
(82, 1423, 0, 0, 661.914, -668.213, 16.1571, 0, 0, 294.275),
(83, 1423, 0, 0, 663.176, -671.012, 16.1571, 0, 0, 294.275),
(84, 1423, 0, 0, 664.401, -673.728, 16.1571, 0, 0, 294.275),
(85, 840, 0, 0, 705.89, -680.448, 16.434, 0, 0, 277.953),
(86, 840, 0, 0, 706.339, -684.524, 16.6746, 0, 0, 157.141),
(87, 840, 0, 0, 711.288, -679.855, 16.5101, 0, 0, 48.0779),
(89, 9833, 0, 0, 673.425, -679.611, 16.2731, 0, 0, 23.6819),
(90, 9833, 0, 0, 689.096, -679.364, 16.2731, 0, 0, 20.8819),
(91, 1283, 0, 0, 683.682, -701.747, 18.2343, 0, 0, 2.4502),
(92, 3171, 0, 0, 512.237, -699.169, 17.6792, 1.6, -1.5, 136.62),
(93, 3175, 0, 0, 529.251, -716.167, 16.924, -6.6, 0, -75.4478),
(94, 3168, 0, 0, 523.664, -688.676, 16.4963, 3.6999, 0, 87.903),
(95, 3172, 0, 0, 515.029, -713.666, 17.9298, 0, 0, -134.295),
(100, 1463, 0, 0, 523.777, -701.978, 17.1699, -1.6, 0, 263.889),
(102, 18691, 0, 0, 523.827, -702.037, 16.2409, 0, 0, 146.811),
(103, 18689, 0, 0, 523.813, -702.047, 15.9175, 0, 0, 288.557),
(104, 1362, 0, 0, 521.983, -701.94, 17.5926, 0, 0, 219.587),
(105, 1362, 0, 0, 521.613, -701.214, 17.5883, 0, 0, 106.681),
(106, 1645, 0, 0, 516.438, -693.786, 17.4029, 0, 6.5999, 44.8126),
(107, 3496, 0, 0, 671.04, -584.286, 15.4559, 0, 0, 91.8256),
(108, 2114, 0, 0, 665.105, -584.396, 15.4659, 0, 0, 277.057),
(111, 3253, 0, 0, 981.933, -78.1216, 20.165, 0, 0, 330.39),
(115, 3601, 0, 0, 551.11, -837.445, 96.2836, 0, 0, 131.344),
(117, 3486, 0, 0, 924.832, -601.636, 120.272, 0, 0, -123.662),
(118, 19913, 0, 0, 905.819, -633.818, 115.459, 0, 0, 3.8413),
(119, 19913, 0, 0, 953.241, -621.295, 115.459, 0, 0, 25.7414),
(120, 19913, 0, 0, 956.408, -594.548, 115.459, 0, 0, 140.541),
(127, 1281, 0, 0, 652.721, -589.25, 16.1259, 0, 0, 88.4675),
(129, 2964, 0, 0, 658.551, -448.393, 15.3358, 0, 0, 359.446),
(130, 2964, 0, 0, 663.031, -448.437, 15.3358, 0, 0, 359.446),
(131, 2964, 0, 0, 667.79, -448.483, 15.3358, 0, 0, 359.446),
(132, 338, 0, 0, 658.517, -449.139, 15.6136, 0, -20.4, 324.189),
(133, 338, 0, 0, 658.225, -449.241, 15.5788, 0, -20.4, -119.111),
(134, 338, 0, 0, 658.517, -449.139, 15.6136, 0, -20.4, 324.189),
(135, 338, 0, 0, 662.929, -449.203, 15.5605, 0, -20.4, 324.189),
(136, 338, 0, 0, 662.567, -449.287, 15.5339, 0, -20.4, -139.711),
(137, 3092, 0, 0, 869.287, -24.453, 64.5508, 0, 0, 159.972),
(138, 19087, 0, 0, 865.467, -20.982, 65.2552, 0, 0, 339.348),
(139, 3092, 0, 0, 865.445, -21.1844, 63.7853, 0, 0, 166.517),
(142, 8640, 0, 0, 736.37, -885.622, 47.9954, -1.1999, 0, -39.0961),
(143, 3110, 0, 0, 721.148, -850.273, 50.4321, 0, 0, 30.1575),
(144, 1259, 0, 0, 719.996, -850.234, 50.1054, 0, 0, 100.371),
(145, 7313, 0, 0, 738.199, -887.471, 50.1405, 0, 0.8999, 50.8055),
(146, 4003, 0, 0, 739.268, -887.853, 51.8285, 0, -2.7999, -125.372),
(148, 19425, 0, 0, 735.851, -883.067, 42.0448, 0, 2.5999, 57.8236),
(149, 1237, 0, 0, 734.563, -885.202, 42.1237, 0, 0, 57.2418),
(150, 966, 0, 0, 738.416, -878.863, 42.0839, 0, 0, 57.4329),
(151, 968, 0, 0, 738.401, -878.881, 42.6625, 0, -39.1, 57.563),
(152, 966, 0, 0, 730.466, -891.45, 42.5211, 0, -3.1999, -122.33),
(153, 968, 0, 0, 730.451, -891.484, 43.3217, 0, 91.7, 57.7997),
(154, 1425, 0, 0, 738.542, -890.743, 42.7162, 0, 0, 58.7521),
(161, 711, 0, 0, 720.43, -888.965, 48.6044, 0, 0, 53.1913),
(162, 711, 0, 0, 714.014, -883.893, 48.6044, 0, 0, 66.9912),
(163, 711, 0, 0, 707.742, -878.808, 48.6044, 0, 0, 66.9912),
(164, 711, 0, 0, 701.202, -873.152, 48.6044, 0, 0, 66.9912),
(165, 711, 0, 0, 695.081, -866.771, 48.6044, 0, 0, 54.0912),
(168, 19966, 0, 0, 766.363, -909.169, 42.526, 0, 0, 59.7506),
(169, 19989, 0, 0, 713.976, -863.778, 42.0116, 0, 0, 36.6266),
(170, 1259, 0, 0, 687.134, -801.587, 49.8874, 0, 0, 100.309),
(171, 7909, 0, 0, 688.331, -801.864, 55.9389, 0, 0, 10.6048),
(173, 19338, 0, 0, 712.964, -730.655, 64.0546, 0, 0, 353.815),
(177, 19123, 0, 0, 636.265, -450.188, 15.8173, 0, 0, 271.146),
(179, 11714, 0, 0, 869.739, -601.534, 18.6718, 0, 0, 179.64),
(180, 1736, 6, 1000092, 1757.65, -1810.21, 1002.79, 0, 0, 4.7586),
(185, 3276, 0, 0, 533.43, -682.45, 17.0042, 0, -3.1, -179.846),
(186, 3276, 0, 0, 521.836, -682.481, 17.6121, 0, -3.1, -179.846),
(187, 3276, 0, 0, 510.978, -685.092, 18.2843, 0, -3.1, -153.546),
(189, 3276, 0, 0, 500.57, -690.215, 18.9526, 0, -2.7, -153.546),
(190, 3276, 0, 0, 490.177, -695.386, 19.48, 0, -2.7, -153.546),
(191, 3276, 0, 0, 485.079, -703.703, 19.592, 0, 1.8999, -90.046),
(193, 3276, 0, 0, 484.517, -715.193, 19.6853, 0, -2.7, -95.446),
(194, 3276, 0, 0, 542.771, -716.898, 16.5403, 0, 3.2999, 68.3355),
(195, 3276, 0, 0, 547.049, -706.127, 15.872, 0, 3.2999, 68.3355),
(197, 7033, 0, 0, 629.945, -695.097, 16.2864, -4.7999, 0, 89.8957),
(199, 19949, 0, 0, 676.218, -703.859, 15.1726, 0, 0, 359.446),
(200, 19966, 0, 0, 638.563, -695.111, 12.3493, 0, 0, 90.4069),
(201, 19972, 0, 0, 643.767, -702.261, 12.8375, 0, 0, 92.4026),
(203, 19833, 0, 0, 542.143, -668.459, 16.0731, 0, 0, 127.669),
(204, 19833, 0, 0, 543.794, -664.482, 16.0449, 0, 0, 8.7418),
(205, 19833, 0, 0, 547.031, -669.856, 15.5794, 0, 0, 172.619),
(206, 19833, 0, 0, 543.757, -664.029, 16.3432, -23.1, 0, 7.5335),
(207, 8313, 0, 0, 617.152, -804.436, 22.9288, 0, 0, 102.034),
(208, 3092, 4, 1000109, 1283.13, -1136.83, 984.558, 0, 0, 2.1573);

-- --------------------------------------------------------

--
-- Table structure for table `phonebook`
--

CREATE TABLE `phonebook` (
  `name` varchar(24) DEFAULT NULL,
  `number` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `points`
--

CREATE TABLE `points` (
  `id` tinyint(2) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `capturedby` varchar(24) DEFAULT 'No-one',
  `capturedgang` tinyint(2) DEFAULT -1,
  `type` tinyint(2) DEFAULT 0,
  `profits` int(10) DEFAULT 0,
  `time` tinyint(2) DEFAULT 10,
  `point_x` float DEFAULT 0,
  `point_y` float DEFAULT 0,
  `point_z` float DEFAULT 0,
  `pointinterior` tinyint(2) DEFAULT 0,
  `pointworld` int(10) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pumps`
--

CREATE TABLE `pumps` (
  `ID` int(11) DEFAULT 0,
  `pumpID` int(11) NOT NULL,
  `pumpPosX` float DEFAULT 0,
  `pumpPosY` float DEFAULT 0,
  `pumpPosZ` float DEFAULT 0,
  `pumpPosA` float DEFAULT 0,
  `pumpFuel` float DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pumps`
--

INSERT INTO `pumps` (`ID`, `pumpID`, `pumpPosX`, `pumpPosY`, `pumpPosZ`, `pumpPosA`, `pumpFuel`) VALUES
(50, 2, 655.682, -570.158, 15.35, -2.292, 1999);

-- --------------------------------------------------------

--
-- Table structure for table `rp_atms`
--

CREATE TABLE `rp_atms` (
  `atmID` int(11) DEFAULT NULL,
  `atmX` float DEFAULT 0,
  `atmY` float DEFAULT 0,
  `atmZ` float DEFAULT 0,
  `atmA` float DEFAULT 0,
  `atmInterior` int(11) DEFAULT 0,
  `atmWorld` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shots`
--

CREATE TABLE `shots` (
  `id` int(10) NOT NULL,
  `playerid` smallint(3) DEFAULT NULL,
  `weaponid` tinyint(2) DEFAULT NULL,
  `hittype` tinyint(2) DEFAULT NULL,
  `hitid` int(10) DEFAULT NULL,
  `hitplayer` varchar(24) DEFAULT NULL,
  `pos_x` float DEFAULT NULL,
  `pos_y` float DEFAULT NULL,
  `pos_z` float DEFAULT NULL,
  `timestamp` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `speedcameras`
--

CREATE TABLE `speedcameras` (
  `speedID` int(11) NOT NULL,
  `speedRange` float DEFAULT 0,
  `speedLimit` float DEFAULT 0,
  `speedX` float DEFAULT 0,
  `speedY` float DEFAULT 0,
  `speedZ` float DEFAULT 0,
  `speedAngle` float DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `speedcameras`
--

INSERT INTO `speedcameras` (`speedID`, `speedRange`, `speedLimit`, `speedX`, `speedY`, `speedZ`, `speedAngle`) VALUES
(8, 8, 40, 676.213, -538.578, 15.1359, 358.991),
(9, 8, 40, 682.533, -479.785, 15.1359, 269.168),
(11, 8, 40, 676.037, -493.579, 15.1359, 358.132),
(12, 8, 40, 731.295, -535.653, 15.1359, 90.9744),
(15, 8, 40, 899.394, -543.764, 23.4094, 303.77),
(17, 7, 30, 675.943, -609.595, 15.1359, 358.331),
(18, 8, 40, 694.061, -855.74, 42.3328, 24.8319),
(19, 8, 30, 675.778, -608.306, 15.1359, 0.3626),
(20, 8, 30, 705.768, -870.657, 42.3473, 41.6214),
(21, 8, 30, 617.207, -420.597, 16.341, 88.3),
(22, 10, 40, 483.512, -612.229, 34.6042, 74.8079),
(23, 10, 40, 357.919, -761.527, 15.7938, 343.15),
(24, 8, 30, 675.987, -609.13, 15.1359, 0.7984),
(27, 8, 40, 680.732, -799.001, 35.4249, 6.9393),
(28, 8, 30, 676.008, -608.84, 15.1359, 359.434);

-- --------------------------------------------------------

--
-- Table structure for table `surgery`
--

CREATE TABLE `surgery` (
  `id` int(11) NOT NULL,
  `pos_x` float DEFAULT NULL,
  `pos_y` float DEFAULT NULL,
  `pos_z` float DEFAULT NULL,
  `pos_r` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `surgery`
--

INSERT INTO `surgery` (`id`, `pos_x`, `pos_y`, `pos_z`, `pos_r`) VALUES
(1, 1258.31, -1316.58, 1061.15, 185.238),
(2, 1250.89, -1316.6, 1061.15, 173.394);

-- --------------------------------------------------------

--
-- Table structure for table `texts`
--

CREATE TABLE `texts` (
  `id` int(10) NOT NULL,
  `sender_number` int(10) DEFAULT NULL,
  `recipient_number` int(10) DEFAULT NULL,
  `sender` varchar(24) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `texts`
--

INSERT INTO `texts` (`id`, `sender_number`, `recipient_number`, `sender`, `date`, `message`) VALUES
(2, 976983, 912780, 'Xavion_Ikari', '2022-07-02 05:52:17', 'saan ka po');

-- --------------------------------------------------------

--
-- Table structure for table `turfs`
--

CREATE TABLE `turfs` (
  `id` tinyint(2) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `capturedby` varchar(24) DEFAULT 'No-one',
  `capturedgang` tinyint(2) DEFAULT -1,
  `type` tinyint(2) DEFAULT 0,
  `time` tinyint(2) DEFAULT 12,
  `min_x` float DEFAULT 0,
  `min_y` float DEFAULT 0,
  `max_x` float DEFAULT 0,
  `max_y` float DEFAULT 0,
  `height` float DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `turfs`
--

INSERT INTO `turfs` (`id`, `name`, `capturedby`, `capturedgang`, `type`, `time`, `min_x`, `min_y`, `max_x`, `max_y`, `height`) VALUES
(1, 'Mall', 'No-one', -1, 4, 0, 1040.26, -1569.4, 1192.41, -1408.47, 13.442),
(2, 'Market', 'No-one', -1, 2, 0, 945.092, -1319.92, 1053.41, -1222.8, 13.383),
(3, 'Temple', 'No-one', -1, 3, 0, 965.037, -1139.69, 1080.3, -1042.2, 24.111),
(4, 'Marina', 'No-one', -1, 1, 0, 799.862, -1509.94, 915.411, -1408.1, 13.383),
(5, 'Idlewood', 'No-one', -1, 7, 0, 1824.41, -1929.53, 1958.53, -1754.65, 13.383),
(6, 'Scate park', 'No-one', -1, 9, 0, 1853.26, -1459.69, 1984.58, -1343.3, 13.397),
(7, 'Glen park', 'No-one', -1, 4, 0, 1854.43, -1258.44, 2065.98, -1137.86, 23.731),
(8, 'East LS', 'No-one', -1, 6, 0, 2305.67, -1298.29, 2368.64, -1154.27, 26.781),
(9, 'Willowfield', 'No-one', -1, 4, 0, 2416.74, -1930.06, 2514.01, -1734.71, 13.383),
(10, 'Ganton', 'No-one', -1, 5, 0, 2220.71, -1827.93, 2411.36, -1750.58, 13.383),
(11, 'East beach', 'No-one', -1, 10, 0, 2642.96, -1889.58, 2853.63, -1659.75, 10.703);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` int(10) NOT NULL,
  `username` varchar(24) DEFAULT NULL,
  `password` varchar(129) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  `lastlogin` datetime DEFAULT NULL,
  `login_date` date DEFAULT NULL,
  `ip` varchar(16) DEFAULT NULL,
  `setup` tinyint(1) DEFAULT 1,
  `gender` tinyint(1) DEFAULT 1,
  `age` tinyint(3) DEFAULT 18,
  `skin` smallint(3) DEFAULT 299,
  `camera_x` float DEFAULT 0,
  `camera_y` float DEFAULT 0,
  `camera_z` float DEFAULT 0,
  `pos_x` float DEFAULT 0,
  `pos_y` float DEFAULT 0,
  `pos_z` float DEFAULT 0,
  `pos_a` float DEFAULT 0,
  `interior` tinyint(2) DEFAULT 0,
  `world` int(10) DEFAULT 0,
  `cash` int(10) DEFAULT 500,
  `bank` int(10) DEFAULT 500,
  `paycheck` int(10) DEFAULT 0,
  `level` int(10) DEFAULT 1,
  `exp` int(10) DEFAULT 0,
  `minutes` smallint(3) DEFAULT 0,
  `hours` int(10) DEFAULT 0,
  `adminlevel` int(10) DEFAULT 0,
  `adminname` varchar(24) DEFAULT 'None',
  `helperlevel` tinyint(2) DEFAULT 0,
  `health` float DEFAULT 100,
  `armor` float DEFAULT 0,
  `upgradepoints` int(10) DEFAULT 0,
  `warnings` tinyint(3) DEFAULT 0,
  `injured` tinyint(1) DEFAULT 0,
  `hospital` tinyint(1) DEFAULT 0,
  `spawnhealth` float DEFAULT 50,
  `spawnarmor` float DEFAULT 0,
  `jailtype` tinyint(1) DEFAULT 0,
  `jailtime` int(10) DEFAULT 0,
  `newbiemuted` tinyint(1) DEFAULT 0,
  `helpmuted` tinyint(1) DEFAULT 0,
  `admuted` tinyint(1) DEFAULT 0,
  `livemuted` tinyint(1) DEFAULT 0,
  `globalmuted` tinyint(1) DEFAULT 0,
  `reportmuted` tinyint(2) DEFAULT 0,
  `reportwarns` tinyint(2) DEFAULT 0,
  `fightstyle` tinyint(2) DEFAULT 4,
  `locked` tinyint(1) DEFAULT 0,
  `accent` varchar(16) DEFAULT 'None',
  `cookies` int(10) DEFAULT 0,
  `phone` int(10) DEFAULT 0,
  `job` int(10) DEFAULT -1,
  `secondjob` tinyint(2) DEFAULT -1,
  `crimes` int(10) DEFAULT 0,
  `arrested` int(10) DEFAULT 0,
  `wantedlevel` tinyint(2) DEFAULT 0,
  `materials` int(10) DEFAULT 0,
  `pot` int(10) DEFAULT 0,
  `crack` int(10) DEFAULT 0,
  `meth` int(10) DEFAULT 0,
  `painkillers` int(10) DEFAULT 0,
  `seeds` int(10) DEFAULT 0,
  `ephedrine` int(10) DEFAULT 0,
  `muriaticacid` int(10) DEFAULT 0,
  `bakingsoda` int(10) DEFAULT 0,
  `cigars` int(10) DEFAULT 0,
  `walkietalkie` tinyint(1) DEFAULT 0,
  `channel` int(10) DEFAULT 0,
  `rentinghouse` int(10) DEFAULT 0,
  `spraycans` int(10) DEFAULT 0,
  `boombox` tinyint(1) DEFAULT 0,
  `mp3player` tinyint(1) DEFAULT 0,
  `phonebook` tinyint(1) DEFAULT 0,
  `fishingrod` tinyint(1) DEFAULT 0,
  `fishingbait` int(10) DEFAULT 0,
  `fishweight` int(10) DEFAULT 0,
  `components` int(10) DEFAULT 0,
  `courierskill` int(10) DEFAULT 0,
  `fishingskill` int(10) DEFAULT 0,
  `guardskill` int(10) DEFAULT 0,
  `weaponskill` int(10) DEFAULT 0,
  `mechanicskill` int(10) DEFAULT 0,
  `lawyerskill` int(10) DEFAULT 0,
  `smugglerskill` int(10) DEFAULT 0,
  `toggletextdraws` tinyint(1) DEFAULT 0,
  `toggleooc` tinyint(1) DEFAULT 0,
  `togglephone` tinyint(1) DEFAULT 0,
  `toggleadmin` tinyint(1) DEFAULT 0,
  `togglehelper` tinyint(1) DEFAULT 0,
  `togglenewbie` tinyint(1) DEFAULT 0,
  `togglewt` tinyint(1) DEFAULT 0,
  `toggleradio` tinyint(1) DEFAULT 0,
  `togglevip` tinyint(1) DEFAULT 0,
  `togglemusic` tinyint(1) DEFAULT 0,
  `togglefaction` tinyint(1) DEFAULT 0,
  `togglegang` tinyint(1) DEFAULT 0,
  `togglenews` tinyint(1) DEFAULT 0,
  `toggleglobal` tinyint(1) DEFAULT 0,
  `togglecam` tinyint(1) DEFAULT 0,
  `carlicense` tinyint(1) DEFAULT 0,
  `pilotlicense` tinyint(1) DEFAULT 0,
  `boatlicense` tinyint(1) DEFAULT 0,
  `facemask` int(10) DEFAULT 0,
  `fmtime` int(10) DEFAULT 0,
  `vippackage` tinyint(2) NOT NULL DEFAULT 2,
  `viptime` int(10) DEFAULT 1290000,
  `vipcooldown` int(10) DEFAULT 0,
  `weapon_0` tinyint(2) DEFAULT 0,
  `weapon_1` tinyint(2) DEFAULT 0,
  `weapon_2` tinyint(2) DEFAULT 0,
  `weapon_3` tinyint(2) DEFAULT 0,
  `weapon_4` tinyint(2) DEFAULT 0,
  `weapon_5` tinyint(2) DEFAULT 0,
  `weapon_6` tinyint(2) DEFAULT 0,
  `weapon_7` tinyint(2) DEFAULT 0,
  `weapon_8` tinyint(2) DEFAULT 0,
  `weapon_9` tinyint(2) DEFAULT 0,
  `weapon_10` tinyint(2) DEFAULT 0,
  `weapon_11` tinyint(2) DEFAULT 0,
  `weapon_12` tinyint(2) DEFAULT 0,
  `ammo_0` smallint(5) DEFAULT 0,
  `ammo_1` smallint(5) DEFAULT 0,
  `ammo_2` smallint(5) DEFAULT 0,
  `ammo_3` smallint(5) DEFAULT 0,
  `ammo_4` smallint(5) DEFAULT 0,
  `ammo_5` smallint(5) DEFAULT 0,
  `ammo_6` smallint(5) DEFAULT 0,
  `ammo_7` smallint(5) DEFAULT 0,
  `ammo_8` smallint(5) DEFAULT 0,
  `ammo_9` smallint(5) DEFAULT 0,
  `ammo_10` smallint(5) DEFAULT 0,
  `ammo_11` smallint(5) DEFAULT 0,
  `ammo_12` smallint(5) DEFAULT 0,
  `faction` tinyint(2) DEFAULT -1,
  `gang` tinyint(2) DEFAULT -1,
  `factionrank` tinyint(2) DEFAULT 0,
  `gangrank` tinyint(2) DEFAULT 0,
  `division` tinyint(2) DEFAULT -1,
  `contracted` int(10) DEFAULT 0,
  `contractby` varchar(24) DEFAULT 'Nobody',
  `bombs` int(10) DEFAULT 0,
  `completedhits` int(10) DEFAULT 0,
  `failedhits` int(10) DEFAULT 0,
  `reports` int(10) DEFAULT 0,
  `helprequests` int(10) DEFAULT 0,
  `speedometer` tinyint(1) DEFAULT 1,
  `factionmod` tinyint(1) DEFAULT 0,
  `gangmod` tinyint(1) DEFAULT 0,
  `banappealer` tinyint(1) DEFAULT 0,
  `potplanted` tinyint(1) DEFAULT 0,
  `pottime` int(10) DEFAULT 0,
  `potgrams` int(10) DEFAULT 0,
  `pot_x` float DEFAULT 0,
  `pot_y` float DEFAULT 0,
  `pot_z` float DEFAULT 0,
  `pot_a` float DEFAULT 0,
  `inventoryupgrade` int(10) DEFAULT 0,
  `addictupgrade` int(10) DEFAULT 0,
  `traderupgrade` int(10) DEFAULT 0,
  `assetupgrade` int(10) DEFAULT 0,
  `laborupgrade` int(11) NOT NULL DEFAULT 0,
  `pistolammo` smallint(5) DEFAULT 0,
  `shotgunammo` smallint(5) DEFAULT 0,
  `smgammo` smallint(5) DEFAULT 0,
  `arammo` smallint(5) DEFAULT 0,
  `rifleammo` smallint(5) DEFAULT 0,
  `hpammo` smallint(5) DEFAULT 0,
  `poisonammo` smallint(5) DEFAULT 0,
  `fmjammo` smallint(5) DEFAULT 0,
  `ammotype` tinyint(2) DEFAULT 0,
  `ammoweapon` tinyint(2) DEFAULT 0,
  `dmwarnings` tinyint(2) DEFAULT 0,
  `weaponrestricted` int(10) DEFAULT 0,
  `referral_uid` int(10) DEFAULT 0,
  `refercount` int(10) DEFAULT 0,
  `watch` tinyint(1) DEFAULT 0,
  `gps` tinyint(1) DEFAULT 0,
  `prisonedby` varchar(24) DEFAULT 'No-one',
  `prisonreason` varchar(128) DEFAULT 'None',
  `togglehud` tinyint(1) DEFAULT 1,
  `clothes` smallint(3) DEFAULT -1,
  `showturfs` tinyint(1) DEFAULT 0,
  `showlands` tinyint(1) DEFAULT 0,
  `watchon` tinyint(1) DEFAULT 0,
  `gpson` tinyint(1) DEFAULT 0,
  `doublexp` int(10) DEFAULT 0,
  `couriercooldown` int(10) DEFAULT 0,
  `pizzacooldown` int(10) DEFAULT 0,
  `detectivecooldown` int(10) DEFAULT 0,
  `duty` int(10) DEFAULT 0,
  `bandana` int(10) NOT NULL DEFAULT 0,
  `detectiveskill` int(11) DEFAULT 0,
  `gascan` int(11) DEFAULT 0,
  `refunded` int(11) DEFAULT 0,
  `backpack` int(11) DEFAULT 0,
  `bpcash` int(11) DEFAULT 0,
  `bpmaterials` int(11) DEFAULT 0,
  `bppot` int(11) DEFAULT 0,
  `bpcrack` int(11) DEFAULT 0,
  `bpmeth` int(11) DEFAULT 0,
  `bppainkillers` int(11) DEFAULT 0,
  `bpweapon_0` int(11) DEFAULT 0,
  `bpweapon_1` int(11) DEFAULT 0,
  `bpweapon_2` int(11) DEFAULT 0,
  `bpweapon_3` int(11) DEFAULT 0,
  `bpweapon_4` int(11) DEFAULT 0,
  `bpweapon_5` int(11) DEFAULT 0,
  `bpweapon_6` int(11) DEFAULT 0,
  `bpweapon_7` int(11) DEFAULT 0,
  `bpweapon_8` int(11) DEFAULT 0,
  `bpweapon_9` int(11) DEFAULT 0,
  `bpweapon_10` int(11) DEFAULT 0,
  `bpweapon_11` int(11) DEFAULT 0,
  `bpweapon_12` int(11) DEFAULT 0,
  `bpweapon_13` int(11) DEFAULT 0,
  `bpweapon_14` int(11) DEFAULT 0,
  `bphpammo` int(11) DEFAULT 0,
  `bppoisonammo` int(11) DEFAULT 0,
  `bpfmjammo` int(11) DEFAULT 0,
  `formeradmin` int(2) NOT NULL DEFAULT 0,
  `deathcooldown` int(10) NOT NULL DEFAULT 0,
  `hunger` int(10) NOT NULL DEFAULT 100,
  `hungertimer` int(10) NOT NULL DEFAULT 0,
  `thirst` int(11) NOT NULL DEFAULT 100,
  `thirsttimer` int(11) NOT NULL DEFAULT 0,
  `totalpatients` int(10) NOT NULL DEFAULT 0,
  `totalfires` int(10) NOT NULL DEFAULT 0,
  `rarecooldown` int(10) NOT NULL DEFAULT 0,
  `vipdlcooldown` int(11) NOT NULL DEFAULT 0,
  `customtitle` varchar(64) NOT NULL DEFAULT '0',
  `customcolor` varchar(16) NOT NULL DEFAULT '0',
  `mask` int(10) NOT NULL DEFAULT 0,
  `diamonds` int(11) NOT NULL DEFAULT 0,
  `ecoin` int(11) NOT NULL DEFAULT 0,
  `blindfold` int(10) NOT NULL DEFAULT 0,
  `rope` int(10) NOT NULL DEFAULT 0,
  `insurance` int(10) NOT NULL DEFAULT 0,
  `passport` int(10) NOT NULL DEFAULT 0,
  `passportname` varchar(64) DEFAULT NULL,
  `passportlevel` int(10) NOT NULL DEFAULT 0,
  `passportskin` int(10) NOT NULL DEFAULT 0,
  `passportphone` int(10) NOT NULL DEFAULT 0,
  `marriedto` int(10) NOT NULL DEFAULT -1,
  `newbies` int(10) NOT NULL DEFAULT 0,
  `chatanim` tinyint(2) NOT NULL DEFAULT 0,
  `Lottery` int(11) NOT NULL DEFAULT 0,
  `LotteryB` int(11) NOT NULL DEFAULT 0,
  `flashlight` tinyint(2) NOT NULL DEFAULT 0,
  `candy` int(11) NOT NULL DEFAULT 0,
  `gunlicense` tinyint(2) NOT NULL DEFAULT 0,
  `thiefskill` int(11) DEFAULT 0,
  `thiefcooldown` int(11) DEFAULT 0,
  `cocainecooldown` int(11) DEFAULT 0,
  `teacher` tinyint(2) NOT NULL DEFAULT 0,
  `course` tinyint(2) NOT NULL DEFAULT 0,
  `citizen` tinyint(2) NOT NULL DEFAULT 0,
  `repairkit` int(11) NOT NULL DEFAULT 0,
  `firstaid` int(11) NOT NULL DEFAULT 0,
  `nationalid` int(10) NOT NULL DEFAULT 0,
  `dirtycash` int(11) NOT NULL DEFAULT 0,
  `comserv` int(11) NOT NULL DEFAULT 0,
  `groupleader` tinyint(11) NOT NULL DEFAULT 0,
  `pgroup` tinyint(11) NOT NULL DEFAULT 0,
  `task1` int(10) NOT NULL DEFAULT 0,
  `task2` int(10) NOT NULL DEFAULT 0,
  `task3` int(10) NOT NULL DEFAULT 0,
  `task4` int(10) NOT NULL DEFAULT 0,
  `task5` int(10) NOT NULL DEFAULT 0,
  `claimed1` int(10) NOT NULL DEFAULT 0,
  `claimed2` int(10) NOT NULL DEFAULT 0,
  `claimed3` int(10) NOT NULL DEFAULT 0,
  `claimed4` int(10) NOT NULL DEFAULT 0,
  `claimed5` int(10) NOT NULL DEFAULT 0,
  `loadexpire` int(10) DEFAULT 1290000,
  `loads` int(2) DEFAULT 0,
  `bindslot1` varchar(128) DEFAULT 'None',
  `bindslot2` varchar(128) DEFAULT 'None',
  `bindslot3` varchar(128) DEFAULT 'None',
  `bindslot4` varchar(128) DEFAULT 'None',
  `bindslot5` varchar(128) DEFAULT 'None',
  `bindslot6` varchar(128) DEFAULT 'None',
  `bindslot7` varchar(128) DEFAULT 'None',
  `bindslot8` varchar(128) DEFAULT 'None',
  `Voucher0` int(11) DEFAULT 0,
  `Voucher1` int(11) DEFAULT 0,
  `Voucher2` int(11) DEFAULT 0,
  `Voucher3` int(11) DEFAULT 0,
  `Voucher4` int(11) DEFAULT 0,
  `Voucher5` int(11) DEFAULT 0,
  `voicechat` int(11) DEFAULT NULL,
  `discordtag` int(10) DEFAULT 0,
  `discordname` varchar(128) DEFAULT 'None',
  `parts` tinyint(15) DEFAULT 0,
  `vest` int(11) DEFAULT 0,
  `medkit` int(11) DEFAULT 0,
  `brokenleg` int(1) NOT NULL DEFAULT 0,
  `bedtype` tinyint(1) DEFAULT 0,
  `bedtime` tinyint(10) DEFAULT 0,
  `lastgift` tinyint(10) DEFAULT 0,
  `lastgifttimer` int(8) NOT NULL DEFAULT 18000000
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `username`, `password`, `regdate`, `lastlogin`, `login_date`, `ip`, `setup`, `gender`, `age`, `skin`, `camera_x`, `camera_y`, `camera_z`, `pos_x`, `pos_y`, `pos_z`, `pos_a`, `interior`, `world`, `cash`, `bank`, `paycheck`, `level`, `exp`, `minutes`, `hours`, `adminlevel`, `adminname`, `helperlevel`, `health`, `armor`, `upgradepoints`, `warnings`, `injured`, `hospital`, `spawnhealth`, `spawnarmor`, `jailtype`, `jailtime`, `newbiemuted`, `helpmuted`, `admuted`, `livemuted`, `globalmuted`, `reportmuted`, `reportwarns`, `fightstyle`, `locked`, `accent`, `cookies`, `phone`, `job`, `secondjob`, `crimes`, `arrested`, `wantedlevel`, `materials`, `pot`, `crack`, `meth`, `painkillers`, `seeds`, `ephedrine`, `muriaticacid`, `bakingsoda`, `cigars`, `walkietalkie`, `channel`, `rentinghouse`, `spraycans`, `boombox`, `mp3player`, `phonebook`, `fishingrod`, `fishingbait`, `fishweight`, `components`, `courierskill`, `fishingskill`, `guardskill`, `weaponskill`, `mechanicskill`, `lawyerskill`, `smugglerskill`, `toggletextdraws`, `toggleooc`, `togglephone`, `toggleadmin`, `togglehelper`, `togglenewbie`, `togglewt`, `toggleradio`, `togglevip`, `togglemusic`, `togglefaction`, `togglegang`, `togglenews`, `toggleglobal`, `togglecam`, `carlicense`, `pilotlicense`, `boatlicense`, `facemask`, `fmtime`, `vippackage`, `viptime`, `vipcooldown`, `weapon_0`, `weapon_1`, `weapon_2`, `weapon_3`, `weapon_4`, `weapon_5`, `weapon_6`, `weapon_7`, `weapon_8`, `weapon_9`, `weapon_10`, `weapon_11`, `weapon_12`, `ammo_0`, `ammo_1`, `ammo_2`, `ammo_3`, `ammo_4`, `ammo_5`, `ammo_6`, `ammo_7`, `ammo_8`, `ammo_9`, `ammo_10`, `ammo_11`, `ammo_12`, `faction`, `gang`, `factionrank`, `gangrank`, `division`, `contracted`, `contractby`, `bombs`, `completedhits`, `failedhits`, `reports`, `helprequests`, `speedometer`, `factionmod`, `gangmod`, `banappealer`, `potplanted`, `pottime`, `potgrams`, `pot_x`, `pot_y`, `pot_z`, `pot_a`, `inventoryupgrade`, `addictupgrade`, `traderupgrade`, `assetupgrade`, `laborupgrade`, `pistolammo`, `shotgunammo`, `smgammo`, `arammo`, `rifleammo`, `hpammo`, `poisonammo`, `fmjammo`, `ammotype`, `ammoweapon`, `dmwarnings`, `weaponrestricted`, `referral_uid`, `refercount`, `watch`, `gps`, `prisonedby`, `prisonreason`, `togglehud`, `clothes`, `showturfs`, `showlands`, `watchon`, `gpson`, `doublexp`, `couriercooldown`, `pizzacooldown`, `detectivecooldown`, `duty`, `bandana`, `detectiveskill`, `gascan`, `refunded`, `backpack`, `bpcash`, `bpmaterials`, `bppot`, `bpcrack`, `bpmeth`, `bppainkillers`, `bpweapon_0`, `bpweapon_1`, `bpweapon_2`, `bpweapon_3`, `bpweapon_4`, `bpweapon_5`, `bpweapon_6`, `bpweapon_7`, `bpweapon_8`, `bpweapon_9`, `bpweapon_10`, `bpweapon_11`, `bpweapon_12`, `bpweapon_13`, `bpweapon_14`, `bphpammo`, `bppoisonammo`, `bpfmjammo`, `formeradmin`, `deathcooldown`, `hunger`, `hungertimer`, `thirst`, `thirsttimer`, `totalpatients`, `totalfires`, `rarecooldown`, `vipdlcooldown`, `customtitle`, `customcolor`, `mask`, `diamonds`, `ecoin`, `blindfold`, `rope`, `insurance`, `passport`, `passportname`, `passportlevel`, `passportskin`, `passportphone`, `marriedto`, `newbies`, `chatanim`, `Lottery`, `LotteryB`, `flashlight`, `candy`, `gunlicense`, `thiefskill`, `thiefcooldown`, `cocainecooldown`, `teacher`, `course`, `citizen`, `repairkit`, `firstaid`, `nationalid`, `dirtycash`, `comserv`, `groupleader`, `pgroup`, `task1`, `task2`, `task3`, `task4`, `task5`, `claimed1`, `claimed2`, `claimed3`, `claimed4`, `claimed5`, `loadexpire`, `loads`, `bindslot1`, `bindslot2`, `bindslot3`, `bindslot4`, `bindslot5`, `bindslot6`, `bindslot7`, `bindslot8`, `Voucher0`, `Voucher1`, `Voucher2`, `Voucher3`, `Voucher4`, `Voucher5`, `voicechat`, `discordtag`, `discordname`, `parts`, `vest`, `medkit`, `brokenleg`, `bedtype`, `bedtime`, `lastgift`, `lastgifttimer`) VALUES
(1, 'Kovalchin_Bolkov', 'ECEF370E0EC4A702808FF6FFE379D6428C3E858CF217D3A0D0C186D29B653B0C90B1AC810354D770C0DBCF9649959B820E2C0B1D980AB061B6EE2CD43066AD2A', '2022-06-30 00:41:04', '2022-07-18 06:10:50', NULL, '49.145.124.50', 0, 1, 21, 141, 1107.54, -1440.31, 17.251, 1104.42, -1439.26, 15.798, 26.313, 0, 0, 610, 12223716, 0, 5, 13, 97, 56, 7, 'HydraX', 0, 97.69, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 936765, 10, -1, 0, 0, 0, 2329, 150, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 27, 0, 31, 34, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, -1, 9, 0, -1, 0, 'Nobody', 0, 0, 0, 3, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 90, 165, 84, 45, 0, 0, 0, 0, 'MAPPER', '-1347440641', 1, 0, 0, 0, 1, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1657520407, 2, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 1, 0, 0, 0, 0, 0, 0, 17997150),
(2, 'Honcho_Mirano', '7605B69E66B126FB432D78369B4CC1722163AF9620570163E04ABB7DF8F760E0B8A0FB4A4175D1736B04848B3CD730F0E81531508927E1528EAE6671CC79001C', '2022-06-30 00:59:14', '2022-06-30 00:59:14', NULL, '175.176.10.15', 1, 1, 18, 299, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 500, 0, 1, 0, 0, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Auto-BOT', 'Quitting During Arrest', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 1, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(3, 'Herbo_Lyve', 'E43D001BB6240B8B0374688C8383C78E242EF46BFC6315F82C6F5B0593C3F994FD546912D6EA44EEE0FD4154BD8F0E7B0422A0406F06115F181A22D2BED819E0', '2022-06-30 01:15:09', '2022-06-30 01:18:52', NULL, '49.144.2.134', 0, 1, 15, 299, 1314.86, -1407.12, 14.346, 1329.92, -1406.49, 12.954, 87.169, 0, 0, 20500, 500, 0, 1, 0, 5, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657156526, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Auto-BOT', 'Quitting During Arrest', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99, 152, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(4, 'Tobias_Harris', '69A7C1A08E5EAD629F78AE0203B34C19CAE37F432218713AFF8A9BFCFA06A731D56CE9BB93F36366EDFF76682B6E3C9A73CA3F6919E12E8E9DB686D6F13E1103', '2022-06-30 01:24:24', '2022-06-30 01:24:24', NULL, '49.149.65.218', 0, 1, 23, 299, 2235.89, -1281.56, 26.128, 2234.82, -1284.81, 25.367, 151.431, 0, 0, 20500, 500, 0, 1, 0, 1, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657157077, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 38, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(5, 'Dom_Toretto', '16057E753658C6697FD305D139FA55EAF4D3C106501BAF73B2E59EC0F9B8262271F6577F2A07E24E9168362756797DEBB8B7862CE69F035203E0E15EC4215BB4', '2022-06-30 01:29:54', '2022-07-06 22:43:29', NULL, '175.176.4.247', 0, 1, 18, 292, 767.331, -518.597, 17.214, 770.153, -520.648, 16.336, 91.134, 0, 0, 5093, 297661, 0, 3, 5, 6, 17, 0, 'None', 0, 98.68, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 971088, 2, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1421, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657157583, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Server', 'Failing to change their name', 1, -1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 6, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 68, 59, 100, 0, 0, 0, 0, 0, '0', '0', 0, 2, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 1, 1, 0, 0, 0, 0, 18000000),
(6, 'Gab_Velmarco', '84BAD7B558DFE8CFB8BE3C58533B716C78EB5C79360D49F59653560629C5247811E962171F70D837EDB31657B4E2D8A1E71E7A25DD29252ADD1CF823E63FC97D', '2022-06-30 01:35:29', '2022-07-02 08:59:54', NULL, '119.92.143.16', 0, 1, 19, 3, -520.699, -1616.46, 8.975, -518.333, -1617.45, 9.173, 263.15, 0, 0, 173919, 56648, 28699, 2, 3, 34, 3, 0, 'None', 1, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 924437, 4, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 10, 1, 0, 0, 10, 0, 0, 1, 1, 0, 449, 0, 0, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 3, 1657157741, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 43, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99, 68, 100, 0, 0, 0, 0, 0, '0', '0', 1, 0, 0, 2, 2, 0, 0, NULL, 0, 0, 0, -1, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(7, 'Jace_Wayland', 'DB04BF2123BF8895F0D1C83A43A148949346BAB6245281ED051CE2D59CB5A83A5E8F742B6EC6F3D7F5E70813C24AE618AB1621B145C5465187C5DB81C7733B0D', '2022-06-30 01:36:03', '2022-07-11 05:14:40', NULL, '110.54.174.104', 0, 1, 22, 282, 626.992, -573.193, 18.747, 626.967, -571.785, 17.914, 92.633, 0, 0, 86952, 830088, 0, 3, 7, 8, 15, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 925861, 2, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 29, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1, 5, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, 106, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 30, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 87, 14, 100, 0, 0, 0, 0, 0, '0', '0', 1, 2, 0, 0, 0, 2, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1657533120, 2, 'Takes his weapon from his back and ready to shoot anytime', 'Extend right hand and get the tazer in duty belt', 'Wears a pair of latex glove as he attempts to frisk the suspect', 'Raises his right hand as he performs salute ', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 1, 0, 0, 0, 0, 0, 0, 17999976),
(8, 'Wibbie_Xen', 'EECF4E5E5682CDAD29A177EA88208238316A29809E60AA0FD93A8FA3D3DE64A28646E88EEEB639989E4C132799FEBF4DC1406D469F5B03E595A58A9023622A49', '2022-06-30 01:39:41', '2022-06-30 01:39:41', NULL, '49.149.70.123', 0, 1, 18, 299, 2245.21, -1259.49, 25.067, 2243.94, -1262.68, 23.945, 250.262, 0, 0, 20500, 500, 0, 1, 0, 1, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657157998, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 44, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(9, 'JneL_Carter', '3B92B1C45901CBC5FC051AD0F819F2E228FAF3393AF6D9D28DC3D2D1518C1A15DC5A28C1AB3FB475176F84B893296FC040E059DFBDB7E08B18AC462950316C0E', '2022-06-30 01:41:01', '2022-06-30 01:41:01', NULL, '136.158.28.104', 1, 1, 18, 299, 1347.11, -1301.59, 47.366, 1529.6, -1691.2, 14.8, 1, 0, 0, 500, 500, 0, 1, 0, 1, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 47, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(10, 'Akira_Mondragon', '3033D63760A3E8A241FBCA08D2E68260C2146415F3FF3BF2668AA3F99F92CE98C31C661FAE5546B2888677DDCDF6202CFFD75FB3F642FCC03491711B35AF783D', '2022-06-30 01:42:33', '2022-07-03 23:11:29', NULL, '130.105.194.47', 0, 1, 22, 299, 1185.37, -1321.76, 14.636, 1187.95, -1324.02, 13.567, 246.14, 0, 0, 50500, 500, 0, 1, 0, 3, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657158187, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99, 26, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(11, 'Don_Chip', '50BA8DB118C50BB2635FAEDB6077AE37B8192F4C0DAF0F472B6FB179DD48F5F6380C082266DC22B4F303323FBD2D01A837D2A4226CC00A0312E5F0085ED47010', '2022-06-30 01:42:53', '2022-07-01 02:57:45', NULL, '120.29.97.96', 0, 1, 23, 1, 1280.3, -1651.59, 14.641, 1283.16, -1650.51, 13.547, 334.357, 0, 0, 50000, 504, 0, 1, 1, 4, 1, 0, 'None', 0, 98.68, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 928689, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657158207, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 85, 22, 100, 0, 0, 0, 0, 0, '0', '0', 1, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(12, 'JneL_Badger', '3B92B1C45901CBC5FC051AD0F819F2E228FAF3393AF6D9D28DC3D2D1518C1A15DC5A28C1AB3FB475176F84B893296FC040E059DFBDB7E08B18AC462950316C0E', '2022-06-30 01:43:11', '2022-07-16 01:47:47', NULL, '136.158.28.158', 0, 1, 18, 283, 680.859, -559.689, 16.962, 683.437, -557.329, 16.188, 325.632, 0, 0, 73800, 3344460, 0, 6, 2, 47, 22, 3, 'Vincent', 0, 100, 75, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 982646, 1, -1, 0, 0, 0, 3000, 149, 100, 0, 0, 0, 0, 0, 1, 10, 1, 0, 0, 10, 0, 1, 1, 1, 9, 513, 0, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 24, 0, 0, 31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1, 7, 0, -1, 0, 'Nobody', 0, 0, 0, 4, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 'No-one', 'None', 1, -1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 15, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 29, 158, 35, 101, 0, 0, 0, 0, '0', '0', 1, 5, 0, 0, 2, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 6, 1, 2, 0, 1, 0, 0, 0, 0, 10, 2, 1, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'get his gun his side wrist [ON/OFF] for safety,Ready to shoot anytime', 'extend hand right hand and get the tazer in duty belt', 'take out latex gloves and start to frisk to this stranger', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 1, 0, 0, 0, 0, 1, 17992113),
(13, 'Amber_Leonidas', '8A781916319991E1902058D02A01CF6B3AEBB6E748EE1E81B3AF2A2FFDC010CD7F5F22FC611710391F4F98DD93C71A4EB171691AFD5651F62CF9B6FDBF1A3FB8', '2022-06-30 01:56:37', '2022-06-30 11:56:34', NULL, '120.29.109.223', 0, 1, 21, 299, 2170.18, -1116.75, 39.325, 1235.97, -1572.58, 13.383, 0, 0, 0, 20000, 500, 0, 1, 0, 6, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657159018, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 98, 14, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(14, 'John_David', '7ADEA86E751025F23119DC3CE228FF183BA4B4E1D5232EB6C35A9367280CA018E8BE5F4844FD58573520C8122735DB71A028A2903F4F371277A55B57D77074D3', '2022-06-30 02:04:51', '2022-06-30 02:04:51', NULL, '112.205.66.69', 0, 1, 21, 299, 1098.6, -1380.95, 14.983, 1096.06, -1378.64, 13.781, 89.094, 0, 0, 20500, 500, 0, 1, 0, 3, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657159503, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 170, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(15, 'Lyell_Frost', 'F48EAC1AB0FB1FE77D9719B113A0383A6E2055AB03C2BEB9EEF93B080834AA353AD33E7BB90834AB1751A3A833D4D914D6988541E652F6C6FC7894706ED4B6F5', '2022-06-30 02:05:29', '2022-07-12 16:10:39', NULL, '49.149.138.30', 0, 1, 17, 19, 648.953, -568.596, 18.882, 653.54, -570.578, 15.905, 16.963, 0, 0, 48266, 12568966, 0, 4, 6, 6, 30, 2, 'Lyell', 0, 98.68, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 0, 'None', 0, 973822, 2, -1, 0, 0, 0, 6000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 14, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, -1, 4, 0, -1, 15000, 'Amaru_Crawford', 0, 0, 0, 15, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 'Server', 'Logging to avoid arrest', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1, 1, 2004, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50, 179, 97, 0, 0, 0, 0, 0, '0', '0', 1, 1, 0, 0, 0, 1, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 25, 0, 1, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1657450627, 2, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 2, 1, 0, 0, 0, 1, 17999671),
(16, 'Uno_E_Guirero', 'DC91659D53E544734FFEB44CEDEB7CF9995498A7B9666F7FDCF255870CD93A29EE02C629980EC597C7DF2EFAF26E6C7A6E35ADDAB5CF3916BAF68AAE2ED1AAB6', '2022-06-30 02:08:47', '2022-07-11 13:24:52', NULL, '49.151.114.93', 0, 1, 17, 21, 765.883, -548.857, 22.541, 765.64, -554.285, 20.599, 180, 0, 0, 53557, 1883327, 0, 5, 3, 0, 45, 3, 'Uno', 0, 100, 100, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 'None', 0, 929822, 10, -1, 0, 0, 0, 3000, 100, 25, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, -1, 6, 0, -1, 15000, 'Pain', 0, 0, 0, 14, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 'No-one', 'None', 1, 106, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 5, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 173, 100, 109, 0, 0, 0, 0, '0', '0', 1, 9, 0, 2, 2, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 10, 0, 5, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'Reaches his backpack and takes out the heavy weapon [Flicking the safety off]', 'Put back the heavy weapon to his backpack [Flicking the safety on]', 'Grab his pair of latex gloves in his pocket and put them on.', 'Took the wallet out of the right pocket and pulled out the citizen id and the drivers license', 'Pointed the gun at the man lying on the floor and shoot him to death', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 3, 2, 1, 0, 0, 0, 0, 1657545828),
(17, 'Lucas_Dwight', '41104B36EF85CFCC0C077DFA7BB73B17D0C22D7AE2456879C6FFFC551DEA3F3217FC5526771A66FBA8A65098AF63184D8A276818F9C2095B575DAB0B1B06C8F4', '2022-06-30 02:15:07', '2022-06-30 02:24:23', NULL, '120.28.252.85', 0, 1, 21, 299, 1310.3, -1370.63, 14.739, 1310.2, -1367.18, 13.565, 1.627, 0, 0, 500, 500, 0, 1, 0, 7, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 98, 28, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(18, 'James_Andurson', '2F9959B230A44678DD2DC29F037BA1159F233AA9AB183CE3A0678EAAE002E5AA6F27F47144A1A4365116D3DB1B58EC47896623B92D85CB2F191705DAF11858B8', '2022-06-30 02:22:56', '2022-07-01 05:14:55', NULL, '124.104.189.47', 0, 1, 23, 299, 1309.94, -1368.55, 14.639, 1310.31, -1366.8, 13.559, 347.926, 0, 0, 20500, 500, 0, 1, 0, 6, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657160610, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 98, 21, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(19, 'Pablo_Tsukino', '261CA4AE1C530465459E68B61868BD23A315A4771DE1BDB05A9ACB772B7DB062AA6170130FE92D1D77EC7E43441A08852BE08FE8E873D55935779A9943328714', '2022-06-30 02:29:43', '2022-06-30 02:29:43', NULL, '103.89.237.101', 0, 1, 16, 299, 2264.13, -1266.69, 24.74, 2265.14, -1269.78, 23.977, 215.505, 0, 0, 500, 500, 0, 1, 0, 1, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 51, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(20, 'Cidss_Tsukino', '98980D89FE45B47DE1EDE1C92E3C7DCB7BD28B794804A12C2DF467884A4C134834A522B44986AA674093F88F5F6C34394F05CE23E29F18A21242AD592DC68147', '2022-06-30 02:32:33', '2022-07-01 04:49:58', NULL, '112.198.216.141', 0, 1, 17, 292, 1138.81, -1410.06, 14.436, 1136.5, -1405.02, 13.475, 67.093, 0, 0, 9892, 934392, 262904, 2, 3, 22, 9, 0, 'None', 0, 80.2, 93.4, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 'None', 0, 957694, 2, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 1, 14, 0, 0, 0, 0, 0, 1, 6, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 3, 1657161187, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, -1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 73, 118, 100, 0, 0, 0, 0, 0, '0', '0', 1, 1, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 0, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1657450627, 2, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 1, 2, 0, 0, 0, 0, 18000000),
(21, 'Jinggoy_Estrada', 'EAA18FA9CAA3AED6BD5784C8BF8F052035E0883BBDB3F0ACE470920D543AEDB61A016E1422D39D20584AEBDAD97C163756D1871A2CC715410B23F89C01C14ED9', '2022-06-30 02:44:39', '2022-06-30 02:44:39', NULL, '111.90.206.229', 0, 1, 23, 299, 964.057, -1395.64, 13.834, 967.651, -1393.21, 13.049, 284.954, 0, 0, 20500, 500, 0, 1, 0, 4, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657161911, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99, 53, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(22, 'Gardo_Dalisay', 'FD9D94340DBD72C11B37EBB0D2A19B4D05E00FD78E4E2CE8923B9EA3A54E900DF181CFB112A8A73228D1F3551680E2AD9701A4FCFB248FA7FA77B95180628BB2', '2022-06-30 02:47:07', '2022-07-12 16:26:09', NULL, '175.176.77.131', 0, 1, 19, 299, 2262.14, -1254.84, 24.788, 2264.98, -1256.86, 23.977, 85.126, 0, 0, 500, 500, 0, 1, 0, 1, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 108, 100, 35, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 17999965),
(23, 'Datu_Nhur', '9F36BC066D9493725D0B278AA30C57920AE0B4DF33D632E9D28E6F11BB81CB2FB9A6B3979E773A3FA31A85A80BC731C607ACCC8A9FFE7A6B18FB372E426538BA', '2022-06-30 02:56:50', '2022-07-03 15:44:47', NULL, '119.111.147.137', 0, 1, 19, 299, 1128.2, -1415.67, 14.811, 1128.14, -1412.23, 13.614, 267, 0, 0, 20500, 500, 0, 1, 0, 12, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657162635, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 96, 116, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(24, 'Andrei_Portrusgoss', 'C7F3A9EC8DA13278939EE4673A46F76D3AF8664A2B5D080A527FA56629666596E23EFAB0FE5E5BC411CA843D263A9944163A714DF3B1D7CAF94ADDF9FA546384', '2022-06-30 03:00:04', '2022-06-30 03:00:04', NULL, '112.206.114.213', 0, 1, 19, 299, 2241.35, -1260.9, 26.724, 2240.59, -1264.35, 25.367, 180.088, 0, 0, 500, 500, 0, 1, 0, 0, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 31, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(25, 'Rojelo_Erin', 'A6828B292C1B8F1A7881B32F1ACD935287B0FBABFCA3D94B02FD0498469960526EE1B58A8CCCD432CDE1C049D9CDFC1543495FAEE491F5361DF1066D33806210', '2022-06-30 03:14:53', '2022-07-02 10:30:35', NULL, '103.137.204.194', 0, 1, 99, 22, 1132.29, -1377.46, 16.346, 1132.78, -1381.68, 14.281, 186.445, 0, 0, 50000, 819090, 0, 3, 12, 2, 12, 0, 'None', 0, 100, 100, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 'None', 0, 943182, 4, -1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 3, 1657163785, 0, 0, 0, 24, 25, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 'Senichi_Oda', 'rp without reason', 1, -1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 103, 100, 0, 0, 0, 0, 0, '0', '0', 1, 0, 0, 0, 0, 2, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 2, 1, 1, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'grabs his/her gun from his/her back and the safety switch is turn [ON]', 'hold his/her gun using both of his/her hands and switch the safety switch to [OFF]', 'slings out my gun and aimed it to the enemies head and shoots about 5-10 bullets and finishes his/her life', 'None', 'reloaded and ready to shoot anytime', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(26, 'Paul_Suarez', 'B5F791545B457E51776EB19D87D6F1DB3FB3D430618F0FA9F81B4C5E7539F1CFFF5719F62937300753C7447D0571C264F46E31D4D705833B6EE9DD8AED1E106C', '2022-06-30 03:40:10', '2022-06-30 06:59:56', NULL, '136.158.25.218', 0, 1, 23, 299, 1152.36, -1436, 16.705, 1153.95, -1437.9, 15.798, 213.508, 0, 0, 500, 500, 0, 1, 0, 2, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99, 37, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(27, 'Dinh_Hung', '0B0AB44003A2F6FA09EC9C87DBCAC3E70A92AD08E797E84DEBCB7279897B009FB035D25A96C4E886B8637109524CB3EDCDE35DFFB2B730AB067F09BEBA3CA95E', '2022-06-30 03:52:51', '2022-06-30 03:52:51', NULL, '14.226.94.80', 0, 1, 22, 299, 1360.18, -1275.59, 14.674, 1362.11, -1276.52, 13.383, 244.4, 0, 0, 20000, 500, 0, 1, 0, 9, 0, 0, 'None', 0, 90.1, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657165993, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 97, 112, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(28, 'Okata_Yao', '09347196BFDAD40E1C5D7EEB65A539ED93C7E57F488140288E4CCB087B3147C60AB18F99153E994535F2E2FE11EDEA01C25DA0D5544494E542F7B2C14F6E89EB', '2022-06-30 04:03:55', '2022-06-30 04:03:55', NULL, '119.94.239.214', 0, 1, 16, 299, 1226.7, -1648.81, 14.413, 1226.65, -1645.53, 12.654, 358.567, 0, 0, 20500, 500, 0, 1, 0, 3, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657166675, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99, 20, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(29, 'Roberto_Locco', 'F7C2EC69367813170E011FEB79B892026218FBA70229CE09E49BB69DBEBE055D44EAB0521F4577E1C7515493F149E41A47108961DF182055BD6D3A761DA36EB6', '2022-06-30 04:39:12', '2022-06-30 08:19:24', NULL, '119.94.73.157', 0, 1, 29, 299, 1066.32, -1392.77, 14.852, 1066.21, -1390.08, 13.594, 226.75, 0, 0, 20500, 500, 0, 1, 0, 5, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657168811, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99, 136, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(30, 'andrei_santos', 'CCE08BBA3F2E3C029CD257104B06D4B075772D5F514CF1B7789506F9A69D53C51464881D2C18445AB290553B302F67A24B1C69E3E737A46215DEAF43517E4960', '2022-06-30 04:39:19', '2022-06-30 04:42:20', NULL, '124.107.37.17', 0, 1, 18, 299, -1110.98, 1995.9, -58.156, -1110.38, 1996.6, -58.92, 357.349, 0, 2, 20500, 500, 0, 1, 0, 12, 0, 0, 'None', 0, 98.68, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657168827, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 96, 54, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(31, 'Eve_Lennox', '54E17A50B0338886D8945A72BDF4E730B88ACFEBB695C714B20541B510A36AD170D0900F3696769AFC0D80ECD2C70BA04EE2D40259C94D3C4C4F9B31061B61F7', '2022-06-30 04:41:50', '2022-06-30 10:24:21', NULL, '161.49.193.17', 0, 2, 20, 12, -960.391, 1952.47, 9.775, -959.53, 1953.15, 9, 175.195, 0, 0, 19000, 500, 0, 1, 0, 19, 0, 0, 'None', 0, 50, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657168939, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50, 70, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(32, 'Senichi_Oda', 'EA267A03420046448CB0895D82C30289D6D8BDAC6EA8F904345B7BF0575DDD93F534A746CB556846DE12B292E312F0E9A401238C57BFF05CE8181D701EB4EAD8', '2022-06-30 04:48:38', '2022-07-12 15:13:32', NULL, '175.176.4.113', 0, 1, 21, 293, 675.25, -534.227, 17.291, 674.361, -537.025, 16.336, 338.726, 0, 0, 754625, 102947, 6630, 4, 17, 29, 24, 7, 'OGloc', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 987042, 2, -1, 0, 0, 0, 6000, 0, 100, 0, 0, 100, 0, 0, 0, 0, 1, 1421, 0, 10, 1, 0, 1, 1, 13, 0, 0, 0, 26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 0, 0, 31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, -1, 14, 0, -1, 10000, 'JneL_Badger', 0, 1, 0, 7, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 54, 21, 97, 68, 0, 0, 0, 0, 'Head Admin', '16776192', 1, 1, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 6, 1, 0, 1, 1, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1657535322, 2, 'take the gun reload aim to enemy and ready to shoot with no mercy', 'None', 'None', 'None', 'finish the injured enemy', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 1, 0, 0, 0, 0, 0, 0, 1657550510),
(33, 'Don_Marko', '24DB95F3FE1FE6D9AECBC449AE28943B1C31D1287D36BE39A67A444A7B220308D5664E6B090227EFD3D96B581D8D61DA46611BD649B990EA043C65C2539A2E0E', '2022-06-30 05:13:50', '2022-07-06 03:40:59', NULL, '222.127.63.192', 0, 1, 25, 102, 1248.36, -1304.21, 1062.47, 1251.12, -1305.37, 1061.87, 359.121, 1, 1, 143110, 45756, 0, 2, 4, 44, 4, 2, 'Sadboy', 0, 50, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 917113, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657182708, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, -1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25, 79, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 3, 0, 2, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(34, 'Julian_Allain', 'C18D438DC09A86D407AF48AC887C3ACFE794CDA849AC692EFDEB7686C63D5D15EF861DF980F5C74B78B141376139C7E48678750056FE74ABB24D80BADFDF47DD', '2022-06-30 05:49:01', '2022-07-03 01:47:44', NULL, '124.83.8.98', 0, 1, 18, 2, 1131.34, -1387.66, 14.8, 1131.16, -1384.39, 14.281, 169.957, 0, 0, 2520500, 504, 0, 1, 1, 13, 1, 0, 'None', 4, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657173011, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 75, 63, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(35, 'Max_Lopez', '89F501DA9545AE20CCA97943C1D92EB7CA30F16AE8C880F3CBCB53FCDC3239E0DCA02A8479CA6EC5CDEC2245981E65201BA44C01433B94E3EDB317A54B0492A3', '2022-06-30 06:31:32', '2022-06-30 06:31:32', NULL, '120.28.216.10', 0, 1, 25, 299, 2079.91, -1294.18, 25.478, 2075.28, -1291.73, 23.404, 273.444, 0, 0, 20500, 500, 0, 1, 0, 1, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657175511, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 82, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000);
INSERT INTO `users` (`uid`, `username`, `password`, `regdate`, `lastlogin`, `login_date`, `ip`, `setup`, `gender`, `age`, `skin`, `camera_x`, `camera_y`, `camera_z`, `pos_x`, `pos_y`, `pos_z`, `pos_a`, `interior`, `world`, `cash`, `bank`, `paycheck`, `level`, `exp`, `minutes`, `hours`, `adminlevel`, `adminname`, `helperlevel`, `health`, `armor`, `upgradepoints`, `warnings`, `injured`, `hospital`, `spawnhealth`, `spawnarmor`, `jailtype`, `jailtime`, `newbiemuted`, `helpmuted`, `admuted`, `livemuted`, `globalmuted`, `reportmuted`, `reportwarns`, `fightstyle`, `locked`, `accent`, `cookies`, `phone`, `job`, `secondjob`, `crimes`, `arrested`, `wantedlevel`, `materials`, `pot`, `crack`, `meth`, `painkillers`, `seeds`, `ephedrine`, `muriaticacid`, `bakingsoda`, `cigars`, `walkietalkie`, `channel`, `rentinghouse`, `spraycans`, `boombox`, `mp3player`, `phonebook`, `fishingrod`, `fishingbait`, `fishweight`, `components`, `courierskill`, `fishingskill`, `guardskill`, `weaponskill`, `mechanicskill`, `lawyerskill`, `smugglerskill`, `toggletextdraws`, `toggleooc`, `togglephone`, `toggleadmin`, `togglehelper`, `togglenewbie`, `togglewt`, `toggleradio`, `togglevip`, `togglemusic`, `togglefaction`, `togglegang`, `togglenews`, `toggleglobal`, `togglecam`, `carlicense`, `pilotlicense`, `boatlicense`, `facemask`, `fmtime`, `vippackage`, `viptime`, `vipcooldown`, `weapon_0`, `weapon_1`, `weapon_2`, `weapon_3`, `weapon_4`, `weapon_5`, `weapon_6`, `weapon_7`, `weapon_8`, `weapon_9`, `weapon_10`, `weapon_11`, `weapon_12`, `ammo_0`, `ammo_1`, `ammo_2`, `ammo_3`, `ammo_4`, `ammo_5`, `ammo_6`, `ammo_7`, `ammo_8`, `ammo_9`, `ammo_10`, `ammo_11`, `ammo_12`, `faction`, `gang`, `factionrank`, `gangrank`, `division`, `contracted`, `contractby`, `bombs`, `completedhits`, `failedhits`, `reports`, `helprequests`, `speedometer`, `factionmod`, `gangmod`, `banappealer`, `potplanted`, `pottime`, `potgrams`, `pot_x`, `pot_y`, `pot_z`, `pot_a`, `inventoryupgrade`, `addictupgrade`, `traderupgrade`, `assetupgrade`, `laborupgrade`, `pistolammo`, `shotgunammo`, `smgammo`, `arammo`, `rifleammo`, `hpammo`, `poisonammo`, `fmjammo`, `ammotype`, `ammoweapon`, `dmwarnings`, `weaponrestricted`, `referral_uid`, `refercount`, `watch`, `gps`, `prisonedby`, `prisonreason`, `togglehud`, `clothes`, `showturfs`, `showlands`, `watchon`, `gpson`, `doublexp`, `couriercooldown`, `pizzacooldown`, `detectivecooldown`, `duty`, `bandana`, `detectiveskill`, `gascan`, `refunded`, `backpack`, `bpcash`, `bpmaterials`, `bppot`, `bpcrack`, `bpmeth`, `bppainkillers`, `bpweapon_0`, `bpweapon_1`, `bpweapon_2`, `bpweapon_3`, `bpweapon_4`, `bpweapon_5`, `bpweapon_6`, `bpweapon_7`, `bpweapon_8`, `bpweapon_9`, `bpweapon_10`, `bpweapon_11`, `bpweapon_12`, `bpweapon_13`, `bpweapon_14`, `bphpammo`, `bppoisonammo`, `bpfmjammo`, `formeradmin`, `deathcooldown`, `hunger`, `hungertimer`, `thirst`, `thirsttimer`, `totalpatients`, `totalfires`, `rarecooldown`, `vipdlcooldown`, `customtitle`, `customcolor`, `mask`, `diamonds`, `ecoin`, `blindfold`, `rope`, `insurance`, `passport`, `passportname`, `passportlevel`, `passportskin`, `passportphone`, `marriedto`, `newbies`, `chatanim`, `Lottery`, `LotteryB`, `flashlight`, `candy`, `gunlicense`, `thiefskill`, `thiefcooldown`, `cocainecooldown`, `teacher`, `course`, `citizen`, `repairkit`, `firstaid`, `nationalid`, `dirtycash`, `comserv`, `groupleader`, `pgroup`, `task1`, `task2`, `task3`, `task4`, `task5`, `claimed1`, `claimed2`, `claimed3`, `claimed4`, `claimed5`, `loadexpire`, `loads`, `bindslot1`, `bindslot2`, `bindslot3`, `bindslot4`, `bindslot5`, `bindslot6`, `bindslot7`, `bindslot8`, `Voucher0`, `Voucher1`, `Voucher2`, `Voucher3`, `Voucher4`, `Voucher5`, `voicechat`, `discordtag`, `discordname`, `parts`, `vest`, `medkit`, `brokenleg`, `bedtype`, `bedtime`, `lastgift`, `lastgifttimer`) VALUES
(36, 'Oliver_Mendeleev', '48440060CB6207F1E4E115A316E50E1BBD4E8FFCF1D7E51240E8F27E01019E59DE6DE6B9AFD49ABCD9390B9C254BBFC00C354B19EDFDB1AC97C1B617E44D6E3C', '2022-06-30 06:35:33', '2022-06-30 06:35:33', NULL, '120.29.78.36', 0, 1, 99, 299, 1464.47, -1027.26, 25.177, 1462.46, -1027.62, 23.828, 78.085, 0, 0, 20500, 500, 0, 1, 0, 11, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657175773, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 97, 140, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(37, 'Yg_Yowgin', 'DF3E2A725564005E57FF89A1499F0F4AA1B8D585A5764223FBFE813457B639A691AA7033363B2A93F4FAC76F2DBBBA7A5ABA75613804887FB0CFC29C6D39684F', '2022-06-30 06:58:07', '2022-06-30 06:58:07', NULL, '110.54.154.109', 0, 1, 18, 299, 2693.72, -1705.02, 12.607, 2695.29, -1704.85, 11.844, 251.462, 0, 0, 20500, 500, 0, 1, 0, 9, 0, 0, 'None', 0, 66.992, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657177171, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 97, 65, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(38, 'Kratos_Bolkov', '775A969556FF71AFD0509D407C90ECE07E7F3AF4A47842310BBC7A74E89F89B7B781EBCA31AA3D2EBD4D9DD64FE40C6AA72E414342BE6655C4F456212ABFF910', '2022-06-30 08:06:35', '2022-07-15 15:22:51', NULL, '180.191.232.68', 0, 1, 34, 261, 639.307, -385.918, 25.752, 639.872, -382.543, 25.023, 350.489, 0, 0, 18800, 504, 0, 1, 1, 22, 1, 4, 'Kratos', 0, 98.68, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 24, 27, 32, 30, 34, 0, 0, 43, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 83, 30, 94, 99, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 17999181),
(39, 'Ryder_Willson', '85FF434C24F646010C7D34883A7BB4AA21E1C3578CFF1331CB711CE71931DF08CEC4D3506D1F256706848D28CB7B0A349C37667B426E270EA0436C17EA9A8A09', '2022-06-30 08:20:22', '2022-07-04 17:22:17', NULL, '110.54.172.60', 0, 1, 25, 299, 785.871, -505.548, 18.349, 787.405, -510.885, 16.344, 15.131, 0, 0, 500, 500, 0, 1, 0, 21, 0, 7, 'None', 0, 97.69, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 94, 54, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(40, 'Choi_Nha_Ghara', '46D6BD41E59715BA87AB4D1B73C74DB6AF30129B94B0F11144D9974ADD42F99003D5E4080E14C8E30A727E0E6464CC85E0A78132E170BFDDE3EB02CEE0EDAAF7', '2022-06-30 08:57:16', '2022-07-04 09:30:57', NULL, '49.149.71.182', 0, 1, 16, 19, 1310.33, -1373.97, 15.285, 1310.23, -1368.36, 13.583, 1.039, 0, 0, 19100, 504, 0, 1, 1, 15, 1, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 932653, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657184278, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 81, 4, 100, 0, 0, 0, 0, 0, '0', '0', 1, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(41, 'Arns_Faulkerson', '3A98A2719F07D6670C0B4628465957CDD9C034F3903484D20F258E7915914DB87E7DCF3ABCCAF41A927700404C6B5282F8FE9056A3D6A5D5B75CA78F68F1B932', '2022-06-30 08:57:29', '2022-07-05 11:39:40', NULL, '161.49.193.235', 0, 1, 32, 299, 1126.46, -1389.06, 14.443, 1123.09, -1389.54, 13.668, 157.237, 0, 0, 20500, 500, 0, 1, 0, 4, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657184267, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99, 118, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(42, 'Moly_Dela_Cruz', '31193835D6BFFD2978AC4DE0248FFC62E57CD3B0873E3C29694E3B76EAD9FE473E909B341AA0D4A0876C3D10B1599209F554EE69B5A50D66626BCA88C3958555', '2022-06-30 09:05:33', '2022-07-02 06:21:41', NULL, '49.149.131.244', 0, 1, 22, 104, -2784.38, 1312.92, 3132.36, -2784.2, 1310.01, 3130.65, 183.517, 6, 1, 235743, 24424, 0, 2, 4, 25, 8, 0, 'None', 0, 61.4, 0, 0, 0, 0, 0, 50, 0, 2, 321, 0, 0, 0, 0, 0, 0, 0, 6, 0, 'None', 0, 988123, -1, -1, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657184762, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Senichi_Oda', 'rp without reason', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 45, 76, 100, 0, 0, 0, 0, 0, '0', '0', 1, 0, 0, 0, 2, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'Take a Bigweapon at the bag and ready to shoot any time.', 'Take A Deagle to Smallbackpack and executing This Guy', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 1, 1, 0, 0, 0, 0, 18000000),
(43, 'Padrino_Locco', '10CA9571695F2F020988ADC383EB2885706F23A73FEC294D6D4F0F10BBFE28CF70ACE3C8846BA4B83064461535F487C4F073D86D527BB45D1F829B8F3BAF5A42', '2022-06-30 09:32:43', '2022-07-03 12:59:39', NULL, '180.190.14.176', 0, 1, 24, 299, 2280.74, -1276.07, 25.215, 2277.73, -1275.37, 23.989, 322.358, 0, 0, 500, 500, 0, 1, 0, 3, 0, 0, 'None', 0, 95.05, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99, 43, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(44, 'Jeremy_Myller', 'B103CF9ECCD22E8D96A9A554DFC61CA1792258C3CA6899D94E46FBC14D962803DF45D2A8B9669EE4A69B4DF156CFDC7D0E31262A78E2080D31471FDEEB5A7D54', '2022-06-30 09:41:48', '2022-06-30 09:41:48', NULL, '175.176.7.169', 0, 1, 25, 299, 2349.24, -1618.83, 20.792, 2348.91, -1611.53, 20.703, 202.708, 0, 0, 20500, 500, 0, 1, 0, 5, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657187013, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99, 97, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(45, 'Dan_Tsukino', 'FD9D94340DBD72C11B37EBB0D2A19B4D05E00FD78E4E2CE8923B9EA3A54E900DF181CFB112A8A73228D1F3551680E2AD9701A4FCFB248FA7FA77B95180628BB2', '2022-06-30 10:12:13', '2022-07-02 03:27:20', NULL, '49.149.131.244', 0, 1, 23, 113, 1233.19, -1665.81, 13.464, 1236.54, -1663.49, 12.654, 269.641, 0, 1, 2100, 508, 0, 1, 2, 33, 2, 0, 'None', 0, 100, 100, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 942952, -1, -1, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657188805, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 27, 96, 100, 0, 0, 0, 0, 0, '0', '0', 1, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(46, 'Steve_Frost', '28C94DE0B1F1467A800F9A04DB623C84133730FF9245FC74FCBEDBBA6C2ACB6F91E13DBCA61A9093181F84F5148FB33A0C30EFF4E751A014B0FD10433EE4CF2C', '2022-06-30 10:17:14', '2022-07-06 13:26:16', NULL, '175.176.63.43', 0, 1, 23, 208, -142.572, -1244.94, 3.943, -143.186, -1248.33, 2.695, 239.672, 0, 0, 85700, 1059608, 0, 2, 2, 33, 21, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 978858, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 1, 14, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657189071, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, 208, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 93, 15, 100, 0, 0, 0, 0, 0, '0', '0', 1, 0, 0, 0, 0, 2, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 8, 0, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1657450626, 2, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 1, 0, 0, 0, 0, 0, 18000000),
(47, 'Ask_D._Question', '82100BAC3152D981591D7A241817D65D4B4E0E2097B06F6278233AE1746BAA2B919266F055AB8EBFF250B2FCAF2E833969B5F67D7BCD6A6169D7AFEA9B9B0186', '2022-06-30 10:19:27', '2022-06-30 10:19:27', NULL, '136.158.11.196', 0, 1, 23, 299, 1440.41, -1614.1, 15.038, 1439.04, -1609, 13.547, 18.837, 0, 0, 500, 500, 0, 1, 0, 4, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99, 35, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(48, 'Drey_Winchester', 'FA65FE1BE640DE20179E5FC41AE527C64F2202B5FA38D86CB43498E4409491AB15466BE0C315C26D372319F490C408D5CA40E17C22F200BAEFFF54A7DD6122B1', '2022-06-30 10:55:21', '2022-07-05 03:41:16', NULL, '131.226.67.39', 0, 1, 18, 29, 1126.07, -1382.12, 15.079, 1126.22, -1383.99, 14.281, 188.155, 0, 0, 8000, 504, 0, 1, 1, 37, 1, 0, 'None', 0, 98.68, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 925042, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1, 0, 0, 10, 0, 1, 1, 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657191342, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 43, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 76, 16, 100, 0, 0, 0, 0, 0, '0', '0', 1, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(49, 'Jay_Davinci', '3B92B1C45901CBC5FC051AD0F819F2E228FAF3393AF6D9D28DC3D2D1518C1A15DC5A28C1AB3FB475176F84B893296FC040E059DFBDB7E08B18AC462950316C0E', '2022-06-30 11:23:58', '2022-06-30 11:23:58', NULL, '136.158.28.104', 1, 1, 18, 299, 1714.82, -1861.35, 16.56, 1529.6, -1691.2, 13.775, 1, 0, 0, 500, 500, 0, 1, 0, 0, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 15, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(50, 'Kelly_laz', '321A65A05B34327EB625931DDCD3FCEA6BFC3F94964E88CF2E2EFFAFAFDCE1FC2392C17F51A9532A9C46482098FDABA38179726BC0F6F7CEF79F85138939EA1D', '2022-06-30 11:45:39', '2022-07-01 09:51:55', NULL, '111.125.106.120', 0, 1, 19, 299, 2416.08, -1944.99, 14.643, 2421.65, -1937.7, 13.947, 322.468, 0, 0, 10500, 10500, 0, 1, 0, 8, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657194388, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 98, 1, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(51, 'Ken_Escobar', '2F9959B230A44678DD2DC29F037BA1159F233AA9AB183CE3A0678EAAE002E5AA6F27F47144A1A4365116D3DB1B58EC47896623B92D85CB2F191705DAF11858B8', '2022-06-30 11:56:03', '2022-06-30 12:03:20', NULL, '136.158.39.75', 0, 1, 20, 29, 434.803, -859.184, 28.678, 435.462, -859.284, 27.986, 117.028, 0, 0, 0, 21000, 0, 1, 0, 13, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 985161, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657195015, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 96, 156, 100, 0, 0, 0, 0, 0, '0', '0', 1, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(52, 'Ashley_Fury', '8B49917C3C3DD215B0F080DA1A0615344E3D33AC9298C2BF434389D0DD02B1D8445BEDC3C6EF9D8998D7372706778BF64DF4FD5A812426F7BC884D303BDE3B60', '2022-06-30 12:20:38', '2022-06-30 12:20:38', NULL, '110.54.151.186', 0, 2, 22, 12, 2260.47, -1262.24, 24.751, 2263.73, -1263.5, 23.977, 248.906, 0, 0, 500, 500, 0, 1, 0, 1, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 57, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(53, 'Carl_Lorce', '70EF83FB9A94C55825CCB9FA9845EB08C938C632007ABBC7DF0A2FE890741FB78C3244049E396C2E900C6685D8635F8AB14A3F2D34C39624E089C42FCB73AB46', '2022-06-30 12:27:36', '2022-06-30 12:35:30', NULL, '52.221.230.131', 0, 1, 20, 299, 1274.53, -48.24, 1003.37, 1277.19, -53.429, 1003.25, 208, 18, 1000, 20500, 500, 0, 1, 0, 7, 0, 0, 'None', 0, 100, 100, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657196910, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 98, 102, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(54, 'Gustavo_Shady', 'EC4A2A2AB00B3CA14307CEDBC03DE1DB151118EA61F22A3C5EDAE4909D20D48C8C64C2859D3E188840520A28769801589FA5FE48CB01A399F799A5A5D25B48F4', '2022-06-30 12:36:03', '2022-07-03 14:53:41', NULL, '136.158.44.147', 0, 1, 25, 113, 1131.77, -1379.93, 15.906, 1130.79, -1383.01, 14.281, 179.265, 0, 0, 412230, 2930, 0, 4, 24, 54, 13, 0, 'None', 0, 100, 75, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 'None', 0, 977135, 9, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 8, 79, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657200298, 0, 0, 4, 0, 0, 0, 31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, -1, 4, 0, -1, 0, 'Nobody', 0, 6, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 97, 138, 100, 0, 0, 0, 0, 0, '0', '0', 1, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 8, 2, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'reaches for his gun click the safety [On-Off] ready to shoot anytime', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(55, 'Devon_Miles', '3433A3B6E3F9B596AFD9BB511649CA03EB99F521A3C589999AC37762BEBC5564144BC1406272CE8EBF35E9DD5246FD719EFB4EC28D98FE52F7FC4FB307AC49E9', '2022-06-30 13:01:25', '2022-07-02 07:57:23', NULL, '110.54.136.117', 0, 1, 18, 86, 1255.68, -1436.28, 14.378, 1252.09, -1436.94, 13.612, 123.245, 0, 0, 42366, 101304, 1256, 1, 1, 7, 1, 3, 'Devon', 0, 90.1, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, 2, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657198899, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 79, 178, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(56, 'Amaru_Crawford', 'DE14F98B6A5FD42FBE7AEBBD5892EABC86616DF93B86B068940EDA761E7B4379F1A369FE83C9EDDF0397AD254E9FBADE37A39CBBEC33B2226A84DAB364A9DCA2', '2022-06-30 13:09:48', '2022-07-18 16:05:56', NULL, '119.94.13.111', 0, 1, 24, 111, 1383.59, -1847.89, 55.828, 1407.65, -1846, 53.129, 273.019, 0, 0, 207986, 10963704, 0, 10, 30, 101, 107, 7, 'Pain', 0, 86.73, 0, 0, 0, 0, 0, 50, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 'None', 0, 924244, 2, -1, 0, 0, 0, 26000, 300, 50, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 1, 2, 432, 0, 2, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, -1, 19, 0, -1, 2000, 'Alex_H._Shady', 0, 0, 0, 12, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, 100, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 86, 145, 78, 25, 0, 0, 0, 0, 'MAPPER', '16773120', 1, 2, 0, 0, 0, 1, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 6, 1, 1, 3, 1, 0, 0, 0, 0, 10, 2, 1, 0, 0, 0, 0, 0, 0, 0, 1656924360, 1, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 1, 0, NULL, 0, 'None', 1, 0, 0, 0, 0, 0, 0, 17996293),
(57, 'borgo_aguak', '88B089F25060471043495A0692A96BD388ED2624CBE781317F6811A086083C2E92435066F923D1683ADBAA13F7CFF10AA6E6468CC18C52109CB9D08C14894321', '2022-06-30 13:15:22', '2022-06-30 13:15:22', NULL, '203.177.161.51', 0, 1, 26, 299, 2347.06, -1163.6, 28.675, 2341.68, -1162.51, 27.175, 66.887, 0, 0, 500, 500, 0, 1, 0, 14, 0, 0, 'None', 0, 95.05, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 96, 130, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(58, 'DonAce_Zalagrietos', '7605B69E66B126FB432D78369B4CC1722163AF9620570163E04ABB7DF8F760E0B8A0FB4A4175D1736B04848B3CD730F0E81531508927E1528EAE6671CC79001C', '2022-06-30 13:22:12', '2022-06-30 13:22:12', NULL, '175.176.10.15', 0, 1, 18, 299, 2266.13, -1260.56, 25.859, 2262.87, -1260.53, 23.977, 264.609, 0, 0, 20500, 500, 0, 1, 0, 4, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657200172, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99, 8, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(59, 'Dolf_Gonzales', '4925DA7DA7A56260BAF1C37925A8FA24E46AD8B107DCD21F44E39E4751BAE1304FC70DE7ACB847FFA96126BB372DE005F5320F1EDE6F9DF07C7D53F9C160F022', '2022-06-30 14:30:20', '2022-07-01 15:22:35', NULL, '120.29.77.144', 0, 1, 18, 299, -1953.96, -841.321, 4440.62, -1951.79, -840.601, 4439.8, 254.172, 1, 1, 39500, 500, 0, 1, 0, 46, 0, 0, 'None', 0, 74.26, 98.68, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657204240, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 85, 97, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(60, 'Ryder_Wilson', 'BCC396099B4EA2198056AC7100A9C8036469C31D0D738CA737C7E004D99683A98FC10B913C64A5240AD417A3506B57C431C4E2B700894882210490433BD20F9E', '2022-06-30 14:32:11', '2022-07-12 19:50:28', NULL, '175.176.66.75', 0, 1, 30, 294, 861.848, -949.865, 45.905, 846.605, -948.77, 48.989, 11.822, 0, 0, 3901, 122332, 0, 1, 7, 11, 7, 7, 'Ryder', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 24, 27, 0, 31, 34, 0, 0, 42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, -1, 7, 0, -1, 0, 'Nobody', 0, 0, 0, 2, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, 165, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 285, 97, 65, 95, 5, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 1, 0, 0, 0, 0, 17998978),
(61, 'Alex_H._Shady', '27069A8A7FB75F470913C63CE307BDB3E65A27E317F11B75D7529FAA22B70EA25817C0BAB8D114968AC5295CDDD4F56386C5AA65B6187F6677CCF8F681170F1F', '2022-06-30 14:45:51', '2022-07-06 10:10:02', NULL, '175.176.40.201', 0, 1, 21, 2, 654.972, -574.207, 24.694, 652.231, -573.291, 22.148, 99.564, 0, 0, 83775, 1397537, 0, 4, 17, 19, 36, 0, 'None', 0, 100, 91.09, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 'None', 0, 911938, 2, -1, 0, 0, 0, 6000, 100, 100, 0, 2, 0, 0, 0, 0, 18, 0, 0, 0, 0, 0, 0, 1, 1, 13, 0, 0, 0, 107, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 3, 1657205175, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1, 6, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Amaru_Crawford', 'Random punching', 1, 2, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 20, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 76, 15, 100, 0, 0, 0, 0, 0, '0', '0', 1, 7, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 10, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1657529127, 2, 'Extend his right hand and get tha weapon in his backside and Ready to shot anywhere.', 'Take out two pair of latex gloves and wear it in his both hand and starting to frisk tha stranger', 'Take out tha tazer in his duty belt and aim tha stranger ready to shot any where', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 3, 4, 0, 0, 0, 0, 18000000),
(62, 'Romel_Wang', '454905C4E445C49CA31FAFA16FD2AE31AD070CA46036BBD080D10C3176394DAD1757860183B8E9FFC2769F78310A56EFE834BDF3B8D943BE40F0F8863E17B283', '2022-06-30 16:16:36', '2022-06-30 16:16:36', NULL, '112.201.252.232', 0, 1, 23, 116, 1121.32, -1383.02, 15.466, 1120.95, -1386.29, 13.707, 204.851, 0, 0, 20500, 500, 0, 1, 0, 14, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657210659, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 96, 74, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(63, 'Patrick_mabilangan', '632C3A693B19180B2170960AF763CAED72EC5183E9A645BC38085AD7E9FE33D85B89417D8B7561F5A2F7D4A5B1BD49823393E0259F91DBC32FE511A37B08D327', '2022-06-30 16:23:00', '2022-07-02 14:40:15', NULL, '49.144.12.52', 0, 1, 20, 299, 1751.48, -1860.34, 15.366, 1748.9, -1861.83, 13.576, 91.306, 0, 0, 0, 500, 0, 1, 0, 31, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 90, 40, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(64, 'Jaycee_Chyper', '659FF81F3CAA604E136F7042EB81AEA42F0462B575DCEFED18F9F97C1C5D10948CD79A5D7FA460572D4CF55A6A6F2191C7D4DC1FB31BC456D94C781E0C7580FD', '2022-06-30 20:01:49', '2022-06-30 20:01:49', NULL, '180.190.103.99', 0, 1, 20, 3, 1135.46, -1386.57, 15.733, 1136.54, -1383.29, 15.67, 195.771, 0, 0, 5000, 500, 0, 1, 0, 8, 0, 0, 'None', 0, 98.68, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 981671, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657224133, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 98, 118, 100, 0, 0, 0, 0, 0, '0', '0', 1, 0, 0, 2, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(65, 'Danzil_Zavaroni', '5AA95AA3E34F966A1DF9961445E28D876F33900DFFECACA6BA1FA09116B6EDF38EDB08C05CE160DD1497F105F89D6EE9FF6448265C341D1B013888019658696A', '2022-06-30 23:38:49', '2022-07-05 13:29:49', NULL, '131.226.65.225', 0, 1, 19, 286, 679.745, -669.49, 17.01, 680.184, -673.542, 16.188, 147.941, 0, 0, 173951, 0, 148068, 2, 7, 53, 7, 2, 'Hope', 0, 98.68, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 935716, 4, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657237146, 0, 0, 0, 24, 25, 29, 30, 0, 0, 0, 0, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, -1, 14, 0, -1, 0, 'Nobody', 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, 186, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 82, 113, 100, 0, 0, 0, 0, 0, 'HEAD OF FBI', '0', 0, 2, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(66, 'Marlon_Bautista', '1EBE4A27842D1CC4183DA97836E715742EDA614AFCF7EA2A1EF1D93472533DDEC1B95F7F2B32763BB090FDB30D64D09069D290BD9BAF23E487A142F97AD689FB', '2022-07-01 00:35:56', '2022-07-12 10:11:41', NULL, '112.198.69.176', 0, 1, 25, 161, 1164.69, -745.448, 63.324, 1162.95, -743.589, 60.475, 352.679, 0, 0, 63680, 601701, 0, 3, 2, 41, 14, 0, 'None', 0, 74.39, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 936035, 4, -1, 0, 0, 0, 11000, 400, 125, 0, 0, 0, 0, 0, 0, 9, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99, 88, 96, 10, 0, 0, 0, 0, '0', '0', 1, 8, 0, 0, 0, 1, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 0, 1, 0, 0, 0, 0, 10, 3, 2, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 17999510),
(67, 'Ero_Gum', '0A6ACBD9AA4CD13552AEF2A0AA3AC53B083D9F581AAC1E968648C212BF8B8A54A0D7C31C49303552AE7C7FBF5EEECC646444D1804AE2E382BA749CC603EF6993', '2022-07-01 00:42:04', '2022-07-01 00:42:04', NULL, '49.149.70.123', 0, 1, 17, 295, 1173.24, -1444.93, 17.918, 1170.08, -1442.39, 15.801, 31.368, 0, 0, 20500, 500, 0, 1, 0, 3, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657240938, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99, 38, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(68, 'Feng_V_Rito', 'A1C9DE0A8A0FCBCDE288A78FF10D50F0E26E2F76F91F9D18703ECB7EC48A1BFCAF050055337C155E0094577A60D2FDBAAF8F9D616DD13D931F15D8F78327F00A', '2022-07-01 01:03:20', '2022-07-01 01:03:20', NULL, '103.252.35.90', 0, 1, 18, 299, 2269.75, -1268.83, 25.507, 2267.53, -1263.9, 23.802, 23.925, 0, 0, 20500, 500, 0, 1, 0, 1, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657242228, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 52, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(69, 'Joseph_Hermes', '77C890615F0A8E1F1625E51D3FCF1BF604FAFF1D851D0B3CB7E472CB21EA50DF1347D7D1EFDAD25322D94DE432204482F97DC24770B47941A06A248DB1D777B2', '2022-07-01 01:58:34', '2022-07-01 18:29:06', NULL, '119.94.8.220', 0, 1, 20, 136, 2065.59, -1751.67, 13.649, 2061.4, -1755.18, 13.388, 102.398, 0, 0, 20000, 500, 0, 1, 0, 7, 0, 0, 'None', 0, 100, 100, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657245555, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 98, 131, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(70, 'John_Raiven', '82CEAE00157D76685D3069E98EFC34BC53FD4C8BAFBAC4CDD6C0CCF0D4EF30F27F39D6E44913454481E91E4F9C26D44F732E807324EB2504751B6C8D5A64570F', '2022-07-01 02:22:06', '2022-07-04 09:38:23', NULL, '112.200.224.86', 0, 1, 27, 294, -1111.42, 1957.52, -58.242, -1111.42, 1957.93, -58.914, 185.912, 0, 0, 40065, 679293, 46782, 2, 6, 20, 10, 0, 'None', 0, 90.1, 100, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 'None', 0, 900952, 4, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 10, 20, 1, 0, 0, 10, 0, 1, 1, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 3, 1657246979, 0, 0, 6, 0, 25, 0, 0, 0, 0, 0, 43, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 'No-one', 'None', 1, -1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 5, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 65, 115, 100, 0, 0, 0, 427, 0, '0', '0', 1, 4, 0, 2, 2, 2, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1657529147, 2, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 1, 0, 0, 0, 0, 18000000);
INSERT INTO `users` (`uid`, `username`, `password`, `regdate`, `lastlogin`, `login_date`, `ip`, `setup`, `gender`, `age`, `skin`, `camera_x`, `camera_y`, `camera_z`, `pos_x`, `pos_y`, `pos_z`, `pos_a`, `interior`, `world`, `cash`, `bank`, `paycheck`, `level`, `exp`, `minutes`, `hours`, `adminlevel`, `adminname`, `helperlevel`, `health`, `armor`, `upgradepoints`, `warnings`, `injured`, `hospital`, `spawnhealth`, `spawnarmor`, `jailtype`, `jailtime`, `newbiemuted`, `helpmuted`, `admuted`, `livemuted`, `globalmuted`, `reportmuted`, `reportwarns`, `fightstyle`, `locked`, `accent`, `cookies`, `phone`, `job`, `secondjob`, `crimes`, `arrested`, `wantedlevel`, `materials`, `pot`, `crack`, `meth`, `painkillers`, `seeds`, `ephedrine`, `muriaticacid`, `bakingsoda`, `cigars`, `walkietalkie`, `channel`, `rentinghouse`, `spraycans`, `boombox`, `mp3player`, `phonebook`, `fishingrod`, `fishingbait`, `fishweight`, `components`, `courierskill`, `fishingskill`, `guardskill`, `weaponskill`, `mechanicskill`, `lawyerskill`, `smugglerskill`, `toggletextdraws`, `toggleooc`, `togglephone`, `toggleadmin`, `togglehelper`, `togglenewbie`, `togglewt`, `toggleradio`, `togglevip`, `togglemusic`, `togglefaction`, `togglegang`, `togglenews`, `toggleglobal`, `togglecam`, `carlicense`, `pilotlicense`, `boatlicense`, `facemask`, `fmtime`, `vippackage`, `viptime`, `vipcooldown`, `weapon_0`, `weapon_1`, `weapon_2`, `weapon_3`, `weapon_4`, `weapon_5`, `weapon_6`, `weapon_7`, `weapon_8`, `weapon_9`, `weapon_10`, `weapon_11`, `weapon_12`, `ammo_0`, `ammo_1`, `ammo_2`, `ammo_3`, `ammo_4`, `ammo_5`, `ammo_6`, `ammo_7`, `ammo_8`, `ammo_9`, `ammo_10`, `ammo_11`, `ammo_12`, `faction`, `gang`, `factionrank`, `gangrank`, `division`, `contracted`, `contractby`, `bombs`, `completedhits`, `failedhits`, `reports`, `helprequests`, `speedometer`, `factionmod`, `gangmod`, `banappealer`, `potplanted`, `pottime`, `potgrams`, `pot_x`, `pot_y`, `pot_z`, `pot_a`, `inventoryupgrade`, `addictupgrade`, `traderupgrade`, `assetupgrade`, `laborupgrade`, `pistolammo`, `shotgunammo`, `smgammo`, `arammo`, `rifleammo`, `hpammo`, `poisonammo`, `fmjammo`, `ammotype`, `ammoweapon`, `dmwarnings`, `weaponrestricted`, `referral_uid`, `refercount`, `watch`, `gps`, `prisonedby`, `prisonreason`, `togglehud`, `clothes`, `showturfs`, `showlands`, `watchon`, `gpson`, `doublexp`, `couriercooldown`, `pizzacooldown`, `detectivecooldown`, `duty`, `bandana`, `detectiveskill`, `gascan`, `refunded`, `backpack`, `bpcash`, `bpmaterials`, `bppot`, `bpcrack`, `bpmeth`, `bppainkillers`, `bpweapon_0`, `bpweapon_1`, `bpweapon_2`, `bpweapon_3`, `bpweapon_4`, `bpweapon_5`, `bpweapon_6`, `bpweapon_7`, `bpweapon_8`, `bpweapon_9`, `bpweapon_10`, `bpweapon_11`, `bpweapon_12`, `bpweapon_13`, `bpweapon_14`, `bphpammo`, `bppoisonammo`, `bpfmjammo`, `formeradmin`, `deathcooldown`, `hunger`, `hungertimer`, `thirst`, `thirsttimer`, `totalpatients`, `totalfires`, `rarecooldown`, `vipdlcooldown`, `customtitle`, `customcolor`, `mask`, `diamonds`, `ecoin`, `blindfold`, `rope`, `insurance`, `passport`, `passportname`, `passportlevel`, `passportskin`, `passportphone`, `marriedto`, `newbies`, `chatanim`, `Lottery`, `LotteryB`, `flashlight`, `candy`, `gunlicense`, `thiefskill`, `thiefcooldown`, `cocainecooldown`, `teacher`, `course`, `citizen`, `repairkit`, `firstaid`, `nationalid`, `dirtycash`, `comserv`, `groupleader`, `pgroup`, `task1`, `task2`, `task3`, `task4`, `task5`, `claimed1`, `claimed2`, `claimed3`, `claimed4`, `claimed5`, `loadexpire`, `loads`, `bindslot1`, `bindslot2`, `bindslot3`, `bindslot4`, `bindslot5`, `bindslot6`, `bindslot7`, `bindslot8`, `Voucher0`, `Voucher1`, `Voucher2`, `Voucher3`, `Voucher4`, `Voucher5`, `voicechat`, `discordtag`, `discordname`, `parts`, `vest`, `medkit`, `brokenleg`, `bedtype`, `bedtime`, `lastgift`, `lastgifttimer`) VALUES
(71, 'Primo_Huxley', '05A88FFE244B50B58D7DDF12D21A0BEAFFAB6F8DC0446FFC043A742FA0B4329C2D7EB86C0B483EAC1C988F50FD31D7802166EB8C55F122CC0FD79C95A2C1DDAD', '2022-07-01 02:28:13', '2022-07-01 02:28:13', NULL, '110.54.133.167', 0, 1, 21, 299, 1982.25, -2016.76, 57.084, 1894.81, -2098.98, 43.116, 341.232, 0, 0, 20500, 500, 0, 1, 0, 2, 0, 0, 'None', 0, 69.307, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657247313, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 130, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(72, 'Kenji_Hashimato', '220EE0691BBAAAE63ED315B49F533337E873EB2BAD463D825693D265E15ACD2DA1BC02E8FBEB81C82C402E46E08FE13435F60B977C02E3A6F089CC5EC3FAD5C4', '2022-07-01 02:31:35', '2022-07-02 02:21:18', NULL, '180.190.244.18', 0, 1, 24, 299, 1126.64, -1422.16, 17.071, 1126.55, -1417.35, 15.499, 0, 0, 0, 20000, 500, 0, 1, 0, 12, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 956230, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657247583, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 43, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 96, 70, 100, 0, 0, 0, 0, 0, '0', '0', 1, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(73, 'John_Skie', 'F868F15DC371B1C11CDFD590063107926B37D40457F7EEC423F56DD6AD258AC68E1CBDCD3473060F5A062962D09522EBAB857DC6D53C20B2922E5BBD21A97AE7', '2022-07-01 04:08:01', '2022-07-13 12:46:43', NULL, '131.226.64.176', 0, 1, 23, 120, 677.595, -538.558, 17.385, 678.792, -539.104, 16.175, 285.867, 0, 4000248, 94530, 443838, 0, 2, 6, 5, 10, 0, 'None', 0, 87, 0, 0, 0, 1, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 909161, 4, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 10, 1, 0, 0, 10, 0, 1, 1, 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 70, 0, 1, 1, 'No-one', 'None', 1, -1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 5, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 834, 86, 122, 90, 80, 0, 0, 0, 0, '0', '0', 1, 3, 0, 2, 2, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 1657717390),
(74, 'Cheo_Ma', '325E9B80B92D5C722296756BA6C6AF3CB9ACE2879562EF09A35CE435A8FCA3C754CAE51F041BD3D490D8C8E5E48ABF8E8FD992F78A74830D81785E7E83865E0A', '2022-07-01 04:23:26', '2022-07-01 04:26:54', NULL, '91.245.252.60', 0, 1, 14, 299, 1142.73, -1315.11, 15.107, 1142.75, -1318.04, 13.116, 76.288, 0, 0, 500, 500, 0, 1, 0, 5, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99, 106, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(75, 'Xtian_Obra', '7B609A4D5DCFE839E02C3FAFFB1F80836FC2674B16D50BDC44B50C359D1A303806E00D91C0FBB4BA2C0A5D95D9E674040AF63BBA4284A05552C6468EA8678653', '2022-07-01 05:15:04', '2022-07-01 16:07:33', NULL, '136.158.46.220', 0, 1, 21, 59, 373.576, -2072.63, 9.346, 372.438, -2075.1, 7.836, 244.734, 0, 0, 4539, 240500, 48752, 1, 0, 56, 0, 0, 'None', 0, 90.1, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 918049, 2, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 3, 1657257320, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 82, 142, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(76, 'Don_Harvey', 'EF49C411F2F98059CBF7CBA33A63FBF229A068D283F0681C7142C4E0CF1D605DBE553BAAEF9C68FA64ADB4E95CE2692ABE89A3B10796F1FCAF6D2932016E69C6', '2022-07-01 05:49:45', '2022-07-01 05:49:45', NULL, '120.29.97.206', 0, 1, 17, 129, 1542.27, -1676.38, 14.726, 1545.36, -1675.27, 13.559, 104.746, 0, 0, 13500, 500, 0, 1, 0, 12, 0, 0, 'None', 0, 100, 100, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 967596, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657259413, 0, 0, 0, 22, 25, 0, 0, 33, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 96, 34, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(77, 'Kelyo_Chyper', '1CBFC881AD6C21CA06288338611F4570D34D66DDE49FF4F604A76847E953F45998BC5A7F43C716292DC3A9923CAD92F8159D230353DF32332DA8E0273B2361D9', '2022-07-01 05:51:20', '2022-07-01 08:21:22', NULL, '120.29.88.18', 0, 1, 19, 113, 150.04, -2001.22, 14.028, 147.994, -2003.58, 11.888, 86.603, 0, 0, 7000, 500, 0, 1, 0, 28, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 908805, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657259544, 0, 0, 0, 0, 0, 0, 31, 0, 0, 0, 0, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 91, 64, 100, 0, 0, 0, 0, 0, '0', '0', 1, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(78, 'Ryu_Takeuchi', 'CCE08BBA3F2E3C029CD257104B06D4B075772D5F514CF1B7789506F9A69D53C51464881D2C18445AB290553B302F67A24B1C69E3E737A46215DEAF43517E4960', '2022-07-01 05:55:38', '2022-07-01 06:04:37', NULL, '120.29.86.113', 0, 1, 19, 299, 898.025, -1215.69, 19.827, 899.433, -1218.85, 18.752, 203.671, 0, 0, 14500, 500, 0, 1, 0, 10, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657260033, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 97, 161, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(79, 'Helena_Kath', 'B913D5BBB8E461C2C5961CBE0EDCDADFD29F068225CEB37DA6DEFCF89849368F8C6C2EB6A4C4AC75775D032A0ECFDFE8550573062B653FE92FC7B8FB3B7BE8D6', '2022-07-01 05:59:41', '2022-07-02 02:25:37', NULL, '49.148.129.118', 0, 1, 17, 299, 1248.85, -1322.28, 14.674, 1245.46, -1321.53, 13.613, 80.251, 0, 0, 20500, 500, 0, 1, 0, 5, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657260020, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 98, 15, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(80, 'Maximus_Gypavelli', 'E1BC6B1D374689DC4F4B0C3CAEA9488DC7859B6F3D2AD0831C0E35C8C3F859ECF37C6C333646F4271F48A59A8F6CB3BDF687061ECAFA4C51ED70AB1CDDAFD321', '2022-07-01 06:28:49', '2022-07-01 06:28:49', NULL, '112.198.253.176', 1, 1, 18, 299, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 500, 0, 1, 0, 0, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 10, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(81, 'Kentaro_Takashi', 'E1BC6B1D374689DC4F4B0C3CAEA9488DC7859B6F3D2AD0831C0E35C8C3F859ECF37C6C333646F4271F48A59A8F6CB3BDF687061ECAFA4C51ED70AB1CDDAFD321', '2022-07-01 06:29:38', '2022-07-01 06:29:38', NULL, '112.198.253.176', 0, 1, 18, 299, 2015.35, -1463.56, 14.916, 1990.7, -1462.43, 12.989, 273.444, 0, 0, 20500, 500, 0, 1, 0, 1, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657261795, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 89, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(82, 'Casper_Dale', 'DA62EF4EFFA47A9B7AA15B95CC31BDA442AC3F0A3E3FAEF12856004482CA179A4A81084A6ED62C9752BA3B1826C9B2D0FB84C8857F1759C5F56AF31A3AC1C2FB', '2022-07-01 06:30:51', '2022-07-01 15:03:16', NULL, '175.176.3.68', 0, 1, 19, 294, 1145.36, -1373.69, 16.752, 1140.69, -1374.47, 13.389, 87.201, 0, 0, 24677, 504, 0, 2, 1, 2, 1, 0, 'None', 0, 98.68, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 992792, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 3, 1657261899, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 86, 60, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1657548985, 2, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(83, 'Yuki_Chyper', '1814FD443F8654CF0D99817A02292742C07F512504EAEF294D06C5E404E77E1596E9FB82290216CE6B684F9369BDC78F9E85804C9EDBE7E38DBBC3CA69A75DFF', '2022-07-01 06:55:29', '2022-07-05 01:26:36', NULL, '136.158.42.252', 0, 1, 20, 113, 1149.86, -1392.93, 13.943, 1153.32, -1392.45, 13.579, 277.726, 0, 0, 4655550, 504, 0, 1, 1, 102, 5, 0, 'None', 0, 84.82, 75, 0, 1, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 'None', 0, 972770, -1, -1, 0, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, 0, 10, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657263349, 0, 0, 4, 24, 27, 0, 31, 34, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, -1, 2, 0, -1, 0, 'Nobody', 3, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 92, 100, 0, 0, 0, 0, 0, '0', '0', 1, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 989, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'reaches for his gun click the safety [On-Off] ready to shoot anytime', 'None', 'None', 'None', 'None', 'ESCAPE IN POLICE', 'Get my knife in my pucket and aim this guy ang kill', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(84, 'Tyler_Rivera', 'EA69A3E9AF57818300F58415B5B231D316B216C5ABEFE603215A668D0937DFBDE0E0ACE1549C0A2AF896189093A84B7D05775C3F856AB4DF7847D2935DE52997', '2022-07-01 07:17:02', '2022-07-01 18:11:21', NULL, '155.137.108.32', 0, 1, 21, 180, 1138.36, -1401.76, 14.802, 1135.48, -1401.78, 13.479, 28.884, 0, 0, 18500, 500, 0, 1, 0, 48, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657264818, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 85, 173, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(85, 'Kaito_Cruz', 'A1C9DE0A8A0FCBCDE288A78FF10D50F0E26E2F76F91F9D18703ECB7EC48A1BFCAF050055337C155E0094577A60D2FDBAAF8F9D616DD13D931F15D8F78327F00A', '2022-07-01 07:18:30', '2022-07-01 07:28:08', NULL, '128.14.66.73', 0, 1, 15, 299, 1115.59, -1385.83, 14.991, 1119.33, -1384.02, 13.397, 291.397, 0, 0, 20500, 500, 0, 1, 0, 9, 0, 0, 'None', 0, 91.75, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657264810, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 97, 2, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(86, 'Marta_Swan', '7182842A0DD3594B58378AADCDF67235ACCFC15F09C748381811C236D2BC2F7FFEC62F922D944506424DA8305E059AECCF9F2ADA4AFA20DD36BD2ED582EAF81B', '2022-07-01 07:23:55', '2022-07-01 09:39:24', NULL, '180.191.145.192', 0, 1, 19, 113, 1295.69, -1654.61, 13.224, 1291.38, -1654.53, 13.547, 66.115, 0, 0, 20500, 500, 0, 1, 0, 17, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657265053, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 95, 177, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(87, 'Slim_Shawty', 'A1C9DE0A8A0FCBCDE288A78FF10D50F0E26E2F76F91F9D18703ECB7EC48A1BFCAF050055337C155E0094577A60D2FDBAAF8F9D616DD13D931F15D8F78327F00A', '2022-07-01 07:38:34', '2022-07-01 07:38:34', NULL, '128.14.66.32', 0, 1, 14, 299, 1128.17, -1422.02, 17.488, 1130.55, -1427.76, 15.372, 60.185, 0, 0, 20500, 500, 0, 1, 0, 5, 0, 0, 'None', 0, 100, 100, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657265975, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99, 113, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(88, 'Tadas_Tavo', '7CFF947EF273D0CA4C187730EAD2447156D6603E5D1500070520D1BAB65277DF882F8892E9F5E4B5202422CF28F206EF9EDE58259EEED5884914629587A27B30', '2022-07-01 07:39:52', '2022-07-12 18:55:49', NULL, '5.20.114.247', 0, 1, 15, 299, 887.498, -1223.88, 17.758, 891.691, -1226.34, 16.977, 234.794, 0, 0, 8068, 28026, 0, 1, 2, 46, 2, 0, 'None', 0, 100, 100, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 908433, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1, 0, 0, 10, 0, 1, 1, 1, 9, 3676, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, -1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 43, 165, 100, 116, 0, 0, 0, 0, '0', '0', 1, 1, 0, 0, 2, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 2, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 17999884),
(89, 'Stephanie_Shady', '30E1FB8B173976081950656015C5DC75D433B59B39CE1A7B611EAD151B26919EC2A82968F54BE93ADC2AD183319158F2E1596E573F134E7FAF49349CF3534414', '2022-07-01 08:03:14', '2022-07-06 13:50:45', NULL, '112.201.171.228', 0, 2, 25, 93, 831.875, -596.259, 18.335, 831.313, -599.158, 16.336, 171.929, 0, 0, 136853, 1011120, 0, 3, 16, 0, 16, 0, 'None', 0, 100, 75, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 995655, 4, 1, 0, 0, 0, 0, 100, 50, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 3, 1657267433, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, -1, 7, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 'Server', 'Failing to change their name', 1, 12, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 20, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 64, 93, 100, 0, 4, 0, 0, 0, '0', '0', 0, 3, 0, 0, 9, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 0, 1, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1656924415, 1, 'gets a patient from the list.', 'checking the injuries of the patient.', 'puts the patient in the stretcher and loads into the ambulance.', 'gets the patient from the ambulance and puts in the stretcher to perform a surgery inside the hospital.', 'Sanitized the hands and wears a gloves to start the operation.', 'Checking the vitals of the patient.', 'Will I able to begin the surgery of the patient?', 'The doctor finished the surgery and puts the used surgical gloves in the trash can.', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 2, 1, 0, 0, 0, 0, 18000000),
(90, 'Herbo_Dwight', '8B002E79BA7194FB252426602A24D4D361F99FA60D74BB6DE077910153C1021548FB8EEA5C32ACED6677213DEE1962EA95D7BFC4A7F5CA9BCCD295439925B5AA', '2022-07-01 08:20:24', '2022-07-01 08:20:24', NULL, '158.62.1.255', 0, 1, 18, 299, 1319.85, -1399.02, 14.759, 1315.99, -1398.54, 13.292, 82.918, 0, 0, 20500, 500, 0, 1, 0, 4, 0, 0, 'None', 0, 65.665, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657268448, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99, 51, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(91, 'Yoshi_Tsukino', 'C4C91CCB63A36FFD29192D7CC925CAFDA52BDE2831DCDF3CCB67FF7BB6F29831880DE5C99DC133A993042139FB7ABB4F22FAE9D502D8235F6D407CC48B09337F', '2022-07-01 09:29:24', '2022-07-01 09:58:02', NULL, '112.202.219.215', 0, 1, 44, 299, 1243.57, -1274.36, 14.813, 1240.25, -1274.64, 13.547, 277.628, 0, 0, 18000, 504, 0, 1, 1, 1, 1, 0, 'None', 0, 95.05, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657272961, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 42, 59, 100, 0, 0, 0, 0, 0, '0', '0', 1, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(92, 'Zae_Ikari', '219DDDA0978215CDE01E8A9902DC48D822295307702BAABD9D5510DC3913B6739E2DAC6772B457C0501CDC5250EAB16FEA011B566C50EB38279C7EBEB2C72F82', '2022-07-01 09:46:17', '2022-07-02 12:52:28', NULL, '155.137.110.93', 0, 2, 21, 169, 1210.08, -1420.66, 14.88, 1203.96, -1424.27, 13.452, 137.775, 0, 0, 138336, 67637, 0, 1, 3, 49, 3, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 912780, 2, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 3, 1657273607, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, -1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 75, 97, 100, 0, 0, 0, 0, 0, '0', '0', 1, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1657341769, 1, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(93, 'Xavion_Ikari', '380C22AB8342146F5330B91FC59073D37215C90DE97CECBAF8567E3E2633839C54311FF1ABB1EE4CBC20160C750DA54CF528D7C114B12B256CA28EF26E9DB007', '2022-07-01 10:14:19', '2022-07-02 12:50:43', NULL, '130.105.210.142', 0, 1, 20, 115, 1500.74, -1745.21, 14.728, 1495.78, -1746.53, 13.547, 198.522, 0, 0, 32222, 763800, 0, 2, 1, 56, 5, 0, 'None', 0, 100, 72.824, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 976983, 2, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 10, 0, 1, 1, 1, 10, 0, 0, 0, 52, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657275337, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 43, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 75, 36, 100, 0, 0, 0, 0, 0, '0', '0', 1, 2, 0, 2, 2, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 1, 1, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1657600665, 2, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(94, 'Minx_Adler', 'E66052D83AB97FAF606908C9A4AD0E92B5696D9E495146A4D846D76FF0BEB6DF0167DAAE14D6ADB87CC6EA9760A39BE2B7B48DC6AF64E5604F7034C38288D9A8', '2022-07-01 10:18:51', '2022-07-05 11:22:58', NULL, '49.144.160.61', 0, 1, 23, 126, 1130.54, -1436.33, 16.685, 1131.08, -1439.58, 15.798, 189.27, 0, 0, 42500, 504, 0, 1, 1, 55, 1, 0, 'None', 0, 41.154, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 'None', 0, 927245, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 10, 1, 0, 0, 10, 0, 1, 1, 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657275594, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 43, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 0, 1, 1, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 70, 6, 100, 0, 0, 0, 0, 0, '0', '0', 1, 0, 0, 2, 2, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(95, 'Brian_Oconner', '5FC22E888F43B1F2FC7E7DC7719B530BC9084036B738FF110B8936F10C02BFBB7F3385CF12CC465D8580E3104F150F1C7075A033527728C4FF3DAEF49B0FB9CB', '2022-07-01 10:57:05', '2022-07-15 15:25:21', NULL, '175.176.3.63', 0, 1, 20, 240, 703.287, -449.765, 17.565, 702.633, -453.128, 16.336, 176.901, 0, 0, 4573, 380395, 0, 3, 1, 5, 13, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 918918, 2, -1, 0, 0, 0, 0, 99, 50, 0, 0, 0, 0, 0, 0, 10, 1, 1421, 0, 10, 0, 0, 1, 1, 0, 149, 0, 0, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, -1, 1, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 'Senichi_Oda', 'test', 1, 240, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 151, 97, 44, 0, 0, 0, 0, '0', '0', 1, 4, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 10, 0, 2, 0, 0, 0, 0, 0, 0, 0, 1657549015, 2, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 1, 1, 0, 0, 0, 0, 0, 17999596),
(96, 'Don_Xen', 'CBDE9ED97DEBD3A52119013B0D7D490E79193346A94B425163DABA32B039C67BC6E7C15555B13BC7895C9E9C44DFDDEEB279AB6C1276E7E53457A5AE1A61C148', '2022-07-01 11:01:27', '2022-07-14 06:34:46', NULL, '49.149.64.85', 0, 1, 20, 299, 1280.05, -1400.3, 14.282, 1279.99, -1396.85, 13.083, 287.123, 0, 0, 500, 500, 0, 1, 0, 30, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 90, 132, 100, 34, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 17999966),
(97, 'Andrea_Recana', '9970624E847D23549F4D322B7A437241834DD9E580A562AA17B704B4FF127E733A7DDBDF072B400F1CE036D41DDF67DAF521043CBC14A2E8100763DC51C68623', '2022-07-01 11:03:15', '2022-07-01 11:03:15', NULL, '112.198.127.225', 0, 2, 18, 12, 2233.26, -1262.99, 25.962, 2232.78, -1260.11, 23.923, 268.663, 0, 0, 20500, 500, 0, 1, 0, 6, 0, 0, 'None', 0, 98.68, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657278261, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 98, 3, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(98, 'Zanny_Clee', '2C5875994450F89BD82DC0E13F6EC908FE4E1635A0939E92D85E1B4C4C61C3E0E26B77357D0F325BF16666004B63E4D64B5B63B5B758299AD381060CD9C03E24', '2022-07-01 11:04:09', '2022-07-01 13:32:38', NULL, '112.198.127.225', 0, 1, 23, 117, 810.461, -1398.61, 14.293, 810.4, -1395.12, 13.441, 1, 0, 0, 1500, 500, 0, 1, 0, 13, 0, 0, 'None', 0, 58.75, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 985575, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657278410, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 96, 38, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 24, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(99, 'Don_Xeno', 'CBDE9ED97DEBD3A52119013B0D7D490E79193346A94B425163DABA32B039C67BC6E7C15555B13BC7895C9E9C44DFDDEEB279AB6C1276E7E53457A5AE1A61C148', '2022-07-01 11:35:03', '2022-07-14 06:32:04', NULL, '49.149.64.85', 0, 1, 20, 299, 1973.11, -1663.3, 99.493, -1110.36, 2001.04, -58.92, 357.85, 18, 2, -1000, 501, 0, 1, 1, 10, 1, 0, 'None', 0, 50, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50, 132, 100, 10, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 17999990),
(100, 'James_Ruzzel', '49DC5AA5A4D1C6C4D5A114C3927F83419F1129E518049860475B265DC69D245A5F2DB8A234ADC2464114EAE3999A1A24B3BA062E47250A4545794468F40BB45B', '2022-07-01 11:56:38', '2022-07-04 05:30:09', NULL, '120.29.106.115', 0, 1, 19, 299, 2033.48, -1413.9, 19.239, 2036, -1412.38, 17.433, 300.977, 0, 0, 18900, 504, 0, 1, 1, 29, 1, 0, 'None', 0, 95.194, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 3, 1657281524, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 71, 103, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(101, 'Yoriichi_Tsugikuni', 'C357E37DB6A434EE51A30A6521A603DD2DF84B9A314CA5F54E165E09EA88DED8362ECE2424B7940FDA787B7FB38DA8A76233D122BD1223BFB5A21CF0D735482C', '2022-07-01 12:24:11', '2022-07-01 12:24:11', NULL, '112.200.165.142', 0, 1, 14, 299, 1126.92, -1382.78, 15.098, 1130.38, -1383.23, 14.281, 231.719, 0, 0, 20500, 500, 0, 1, 0, 16, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657283118, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 95, 31, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(102, 'Ero_Jin', '0A6ACBD9AA4CD13552AEF2A0AA3AC53B083D9F581AAC1E968648C212BF8B8A54A0D7C31C49303552AE7C7FBF5EEECC646444D1804AE2E382BA749CC603EF6993', '2022-07-01 12:30:58', '2022-07-03 11:44:13', NULL, '49.149.70.216', 0, 1, 17, 97, 385.77, -1865.5, 8.708, 382.713, -1865.54, 7.836, 88.026, 0, 0, 20500, 500, 0, 1, 0, 19, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 910944, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 19, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657283478, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 94, 41, 100, 0, 0, 0, 0, 0, '0', '0', 1, 0, 0, 10, 10, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(103, 'Freya_R._Vercetti', '30E1FB8B173976081950656015C5DC75D433B59B39CE1A7B611EAD151B26919EC2A82968F54BE93ADC2AD183319158F2E1596E573F134E7FAF49349CF3534414', '2022-07-01 12:34:40', '2022-07-01 12:34:40', NULL, '112.201.171.189', 1, 1, 18, 299, 1350.08, -1188.05, 60.789, 131.994, -67.285, 2.564, 1, 0, 0, 500, 500, 0, 1, 0, 2, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 88, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(104, 'Paeng_Estrada', 'A1C9DE0A8A0FCBCDE288A78FF10D50F0E26E2F76F91F9D18703ECB7EC48A1BFCAF050055337C155E0094577A60D2FDBAAF8F9D616DD13D931F15D8F78327F00A', '2022-07-01 12:59:03', '2022-07-01 12:59:03', NULL, '112.206.77.161', 0, 1, 17, 299, 2202.76, -1304.72, 25.654, 2200.33, -1309.65, 23.984, 108.779, 0, 0, 20500, 500, 0, 1, 0, 2, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657285163, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99, 1, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(105, 'Wesley_Valencia', 'C4C91CCB63A36FFD29192D7CC925CAFDA52BDE2831DCDF3CCB67FF7BB6F29831880DE5C99DC133A993042139FB7ABB4F22FAE9D502D8235F6D407CC48B09337F', '2022-07-01 13:41:30', '2022-07-01 13:41:30', NULL, '112.202.219.215', 0, 1, 19, 299, -4399.72, 870.544, 987.294, -4401.07, 871.033, 986.38, 103.701, 0, 0, 20500, 500, 0, 1, 0, 6, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657287706, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99, 146, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000);
INSERT INTO `users` (`uid`, `username`, `password`, `regdate`, `lastlogin`, `login_date`, `ip`, `setup`, `gender`, `age`, `skin`, `camera_x`, `camera_y`, `camera_z`, `pos_x`, `pos_y`, `pos_z`, `pos_a`, `interior`, `world`, `cash`, `bank`, `paycheck`, `level`, `exp`, `minutes`, `hours`, `adminlevel`, `adminname`, `helperlevel`, `health`, `armor`, `upgradepoints`, `warnings`, `injured`, `hospital`, `spawnhealth`, `spawnarmor`, `jailtype`, `jailtime`, `newbiemuted`, `helpmuted`, `admuted`, `livemuted`, `globalmuted`, `reportmuted`, `reportwarns`, `fightstyle`, `locked`, `accent`, `cookies`, `phone`, `job`, `secondjob`, `crimes`, `arrested`, `wantedlevel`, `materials`, `pot`, `crack`, `meth`, `painkillers`, `seeds`, `ephedrine`, `muriaticacid`, `bakingsoda`, `cigars`, `walkietalkie`, `channel`, `rentinghouse`, `spraycans`, `boombox`, `mp3player`, `phonebook`, `fishingrod`, `fishingbait`, `fishweight`, `components`, `courierskill`, `fishingskill`, `guardskill`, `weaponskill`, `mechanicskill`, `lawyerskill`, `smugglerskill`, `toggletextdraws`, `toggleooc`, `togglephone`, `toggleadmin`, `togglehelper`, `togglenewbie`, `togglewt`, `toggleradio`, `togglevip`, `togglemusic`, `togglefaction`, `togglegang`, `togglenews`, `toggleglobal`, `togglecam`, `carlicense`, `pilotlicense`, `boatlicense`, `facemask`, `fmtime`, `vippackage`, `viptime`, `vipcooldown`, `weapon_0`, `weapon_1`, `weapon_2`, `weapon_3`, `weapon_4`, `weapon_5`, `weapon_6`, `weapon_7`, `weapon_8`, `weapon_9`, `weapon_10`, `weapon_11`, `weapon_12`, `ammo_0`, `ammo_1`, `ammo_2`, `ammo_3`, `ammo_4`, `ammo_5`, `ammo_6`, `ammo_7`, `ammo_8`, `ammo_9`, `ammo_10`, `ammo_11`, `ammo_12`, `faction`, `gang`, `factionrank`, `gangrank`, `division`, `contracted`, `contractby`, `bombs`, `completedhits`, `failedhits`, `reports`, `helprequests`, `speedometer`, `factionmod`, `gangmod`, `banappealer`, `potplanted`, `pottime`, `potgrams`, `pot_x`, `pot_y`, `pot_z`, `pot_a`, `inventoryupgrade`, `addictupgrade`, `traderupgrade`, `assetupgrade`, `laborupgrade`, `pistolammo`, `shotgunammo`, `smgammo`, `arammo`, `rifleammo`, `hpammo`, `poisonammo`, `fmjammo`, `ammotype`, `ammoweapon`, `dmwarnings`, `weaponrestricted`, `referral_uid`, `refercount`, `watch`, `gps`, `prisonedby`, `prisonreason`, `togglehud`, `clothes`, `showturfs`, `showlands`, `watchon`, `gpson`, `doublexp`, `couriercooldown`, `pizzacooldown`, `detectivecooldown`, `duty`, `bandana`, `detectiveskill`, `gascan`, `refunded`, `backpack`, `bpcash`, `bpmaterials`, `bppot`, `bpcrack`, `bpmeth`, `bppainkillers`, `bpweapon_0`, `bpweapon_1`, `bpweapon_2`, `bpweapon_3`, `bpweapon_4`, `bpweapon_5`, `bpweapon_6`, `bpweapon_7`, `bpweapon_8`, `bpweapon_9`, `bpweapon_10`, `bpweapon_11`, `bpweapon_12`, `bpweapon_13`, `bpweapon_14`, `bphpammo`, `bppoisonammo`, `bpfmjammo`, `formeradmin`, `deathcooldown`, `hunger`, `hungertimer`, `thirst`, `thirsttimer`, `totalpatients`, `totalfires`, `rarecooldown`, `vipdlcooldown`, `customtitle`, `customcolor`, `mask`, `diamonds`, `ecoin`, `blindfold`, `rope`, `insurance`, `passport`, `passportname`, `passportlevel`, `passportskin`, `passportphone`, `marriedto`, `newbies`, `chatanim`, `Lottery`, `LotteryB`, `flashlight`, `candy`, `gunlicense`, `thiefskill`, `thiefcooldown`, `cocainecooldown`, `teacher`, `course`, `citizen`, `repairkit`, `firstaid`, `nationalid`, `dirtycash`, `comserv`, `groupleader`, `pgroup`, `task1`, `task2`, `task3`, `task4`, `task5`, `claimed1`, `claimed2`, `claimed3`, `claimed4`, `claimed5`, `loadexpire`, `loads`, `bindslot1`, `bindslot2`, `bindslot3`, `bindslot4`, `bindslot5`, `bindslot6`, `bindslot7`, `bindslot8`, `Voucher0`, `Voucher1`, `Voucher2`, `Voucher3`, `Voucher4`, `Voucher5`, `voicechat`, `discordtag`, `discordname`, `parts`, `vest`, `medkit`, `brokenleg`, `bedtype`, `bedtime`, `lastgift`, `lastgifttimer`) VALUES
(106, 'Xyfer_liam', 'A6EF8DA08DD2A6F2AA975BD83B8A5300A61A7B7DD11F133C321CDF121D3C1D7C022FE963DA6A40256C8631689FEEC9E68AE296E01F59BFC23D9AB15D01AB4871', '2022-07-01 14:27:59', '2022-07-01 15:22:18', NULL, '120.29.77.144', 0, 1, 18, 299, -1948.04, -841.419, 4440.71, -1947.63, -840.062, 4439.8, 351.063, 1, 1, 38000, 500, 0, 1, 0, 41, 0, 0, 'None', 0, 17, 100, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657290586, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 43, 119, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(107, 'Angelo_Sambrana', 'FBE2E0DE3D008AE5D1462B27AB5A2349727BACD6420A263F5D73FC821D5308A291E3A2912BBC32C312BA591F1AB0CEE7277B3D1E067CD4842AB889F4275CBFED', '2022-07-01 14:28:29', '2022-07-01 15:44:43', NULL, '120.29.77.144', 0, 1, 18, 299, -1947.06, -840.017, 4440.92, -1947.97, -838.477, 4439.8, 359.98, 1, 1, 38500, 500, 0, 1, 0, 43, 0, 0, 'None', 0, 72.28, 98.68, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657290570, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 44, 39, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(108, 'Killua_Zoldyck', '22EEB4C810F62FC140C69F5E22A35F0C2A7643FB787E71C1FE09DEBD2F01EE90F0171C73E1BC52A3F0A8887ECBFFB4C9A5077A1FF8F8E73BC38CFCF7CF7D6DD0', '2022-07-01 18:15:53', '2022-07-02 12:27:00', NULL, '103.137.206.58', 0, 1, 19, 294, 1160.75, -1436.74, 17.581, 1160.18, -1439.82, 15.801, 263.491, 0, 0, 10708, 231432, 177621, 1, 1, 59, 1, 0, 'None', 0, 100, 88.12, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 998720, 4, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657305104, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, -1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 67, 68, 100, 0, 0, 0, 0, 0, '0', '0', 0, 2, 0, 0, 2, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1656962701, 1, 'None', 'None', 'None', 'None', 'None', 'None', 'None', '3', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(109, 'Kairi_X_Sicaro', 'ABFEFC64D6220C7DCFD07DA08C9BA1D231717CFAFFB7990C9C8EE21B7275F856A2F4FF9C5B6FBE472E6AF64EE07CC4F024AF9040B803F62C27FC01FAD6FD0D62', '2022-07-02 00:00:05', '2022-07-02 00:00:05', NULL, '175.176.52.13', 0, 1, 19, 299, 1131.72, -1411.34, 14.319, 1129.19, -1412.93, 13.618, 171.502, 0, 0, 8500, 500, 0, 1, 0, 8, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657324832, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 97, 0, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(110, 'Ace_Zavierre', 'C45309BA3C9082EC09A925367B4C8C6421C8F15EDD5C28A75D1517F1E6F02CF8FF429313BF1FCE9A605AE17AFBD4B258DC90CFF78E7B20D218D6581947F8DA86', '2022-07-02 01:13:09', '2022-07-03 05:49:54', NULL, '136.158.30.29', 0, 1, 20, 294, 549.702, -621.707, 221.288, 509.502, -634.527, 231.478, 3.124, 0, 0, 2000, 500, 0, 1, 0, 8, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 977079, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657329211, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 43, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 98, 57, 100, 0, 0, 0, 0, 0, '0', '0', 1, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(111, 'Mj_Cenita', '6293578B2418455F153E9E34726B2D40AD62A4A636A376466228E7FD689E7FB85E9A1145DC64E68428615A983ADC48805764CFD8DC6C4999A6674148ACBF348C', '2022-07-02 01:48:57', '2022-07-02 03:48:17', NULL, '124.105.198.111', 0, 1, 35, 299, 1127.31, -1378.21, 15.758, 1130.3, -1379.12, 14.281, 259.399, 0, 0, 50500, 500, 0, 1, 0, 17, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657331396, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 98, 119, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(112, 'Kaori_Itoshi', '219DDDA0978215CDE01E8A9902DC48D822295307702BAABD9D5510DC3913B6739E2DAC6772B457C0501CDC5250EAB16FEA011B566C50EB38279C7EBEB2C72F82', '2022-07-02 02:12:33', '2022-07-02 02:12:33', NULL, '155.137.111.43', 1, 1, 18, 299, 0.641, -2.336, -0.228, 0, 0, -3.354, 1, 0, 0, 500, 500, 0, 1, 0, 0, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 18, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(113, 'Brianna_Villamonte', '38202EA1F03E2939846D7C4A5D12D8F7E90D748323437EA51CF73EA89286D23BDF589C641B33F176A857EF8B3F43C431B12FF16AC7F53698958F352310473293', '2022-07-02 03:06:08', '2022-07-12 01:08:05', NULL, '49.150.33.218', 0, 2, 20, 193, 1046.1, -312.002, 84.806, 1044.9, -315.111, 83.975, 157.385, 0, 0, 305000, 0, 0, 1, 6, 5, 6, 0, 'None', 0, 98.68, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 976083, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 'Dale_Enzo_Villamonte', 'DM', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 62, 64, 100, 112, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 17999888),
(114, 'Caiden_Sy', 'D5A2F6B526DEAC114B83B981C02D6A8385435A0420065322870071AF2AE59CB23EE3BC8BBB0859E06F3AB220BEF4F39EFFE403784CC0B2A4B0C54F02F0A6D1DC', '2022-07-02 03:09:08', '2022-07-02 09:45:14', NULL, '111.90.196.124', 0, 1, 22, 23, 439.782, -862.822, 29.817, 438.75, -864.218, 27.839, 115.234, 0, 0, 20000, 500, 49708, 1, 0, 20, 0, 0, 'None', 0, 96.04, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, 4, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657336243, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 94, 45, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(115, 'Bry_Escobar', '623AFCB9AA4459892B67E970E1AC1BFD913CA78D2FB5D1208605C17092AE20E2F1E85426EDF4BC991C2B473DD6365F40B1773EA6B0A9D349263809FCADB24819', '2022-07-02 03:12:28', '2022-07-02 03:12:28', NULL, '152.32.107.33', 0, 1, 19, 299, 1086.71, -1402.22, 13.811, 1091.78, -1404.04, 13.069, 285.517, 0, 0, 20500, 500, 0, 1, 0, 6, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657336375, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 98, 42, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(116, 'Trike_Mendoza', 'CCE08BBA3F2E3C029CD257104B06D4B075772D5F514CF1B7789506F9A69D53C51464881D2C18445AB290553B302F67A24B1C69E3E737A46215DEAF43517E4960', '2022-07-02 03:26:06', '2022-07-12 05:26:03', NULL, '136.158.37.72', 0, 1, 16, 29, 674.261, -540.58, 17.937, 671.563, -542.681, 18.425, 90, 0, 0, 51281, 504, 0, 1, 1, 28, 1, 0, 'None', 0, 90.1, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 971488, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, -1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 80, 81, 96, 117, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1657597029, 2, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 1657515868),
(117, 'Charles_Dela_Cruz', '21D5CB651222C347EA1284C0ACF162000B4D3E34766F0D00312E3480F633088822809B6A54BA7EDFA17E8FCB5713F8912EE3A218DD98D88C38BBF611B1B1ED2B', '2022-07-02 03:29:26', '2022-07-02 06:20:51', NULL, '49.149.131.244', 0, 1, 66, 113, 1990.92, -1448.22, 14.88, 1994.04, -1445.97, 13.559, 283.086, 0, 0, 16500, 500, 0, 1, 0, 34, 0, 0, 'None', 0, 50, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657337801, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 49, 158, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(118, 'Amaru_Shady', 'DE14F98B6A5FD42FBE7AEBBD5892EABC86616DF93B86B068940EDA761E7B4379F1A369FE83C9EDDF0397AD254E9FBADE37A39CBBEC33B2226A84DAB364A9DCA2', '2022-07-02 03:35:14', '2022-07-02 03:35:14', NULL, '119.94.5.111', 0, 1, 24, 299, 2222.47, -1261.94, 24.677, 2219.06, -1261.3, 23.894, 79.391, 0, 0, 20500, 500, 0, 1, 0, 8, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657337756, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 98, 73, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(119, 'Dale_Enzo_Villamonte', '5F6BE59DD28A13E2B149B36F358A3E0BA7D816135646E7BFF74C593F3F0AD92A6323BD26DAA195F31E2DBD827B7A7A074543932BF5F56EAC0F6F7124562BC967', '2022-07-02 03:37:57', '2022-07-06 05:45:45', NULL, '112.198.120.48', 0, 1, 18, 294, 1255.24, -1304.7, 1062.63, 1255.16, -1301.56, 1061.14, 175.729, 1, 1, 12997, 520, 0, 1, 5, 0, 5, 2, 'Crispy', 0, 50, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 990970, 9, -1, 0, 0, 0, 3000, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657338052, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25, 51, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(120, 'Ace_Spender', '2F9959B230A44678DD2DC29F037BA1159F233AA9AB183CE3A0678EAAE002E5AA6F27F47144A1A4365116D3DB1B58EC47896623B92D85CB2F191705DAF11858B8', '2022-07-02 05:10:21', '2022-07-02 05:10:21', NULL, '120.28.213.69', 0, 1, 18, 299, 2271.99, -1252.56, 24.706, 2272.64, -1255.94, 23.812, 183.253, 0, 0, 20500, 500, 0, 1, 0, 2, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657343553, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 151, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(121, 'Arturo_Balagtas', 'C18904F18239D82306F141E01641DFEDE5DF0657D8C2CDC7DD52612621BE480716617C349635DED6060DE6CFC2B0A9213F41CA096AB535EC9DE77603A26AE244', '2022-07-02 07:24:22', '2022-07-02 07:24:22', NULL, '112.206.189.3', 0, 1, 21, 21, 1187.46, -1338.92, 15.104, 1188.35, -1335.68, 13.57, 1.028, 0, 0, 20500, 500, 0, 1, 0, 3, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657351475, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99, 28, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(122, 'Satsujin_Shi', 'FD9D94340DBD72C11B37EBB0D2A19B4D05E00FD78E4E2CE8923B9EA3A54E900DF181CFB112A8A73228D1F3551680E2AD9701A4FCFB248FA7FA77B95180628BB2', '2022-07-02 09:40:32', '2022-07-03 01:57:42', NULL, '110.54.152.188', 0, 1, 20, 299, 1133.2, -1387.04, 16.563, 1131.99, -1384.22, 14.281, 177.259, 0, 0, 1000, 500, 0, 1, 0, 19, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 979221, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657359666, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 94, 31, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(123, 'Hanna_Mason', 'FCA07709D0070FEABB5CA68ED07B3B5591F9F318B4AD119DC2455CC17D05902BDC646F88F4B6EDD69E142FC9768233E7DCDA1428EB852285D689F668592BC25C', '2022-07-02 09:51:02', '2022-07-02 09:55:40', NULL, '131.226.67.236', 0, 2, 20, 12, 1760.65, -1866.33, 16.873, 1761.12, -1866.41, 16.205, 279.016, 0, 0, 19476, 500, 0, 1, 0, 27, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657360285, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 96, 151, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(124, 'Jepoy_Kalaboso', 'B5F791545B457E51776EB19D87D6F1DB3FB3D430618F0FA9F81B4C5E7539F1CFFF5719F62937300753C7447D0571C264F46E31D4D705833B6EE9DD8AED1E106C', '2022-07-02 13:41:02', '2022-07-04 13:03:49', NULL, '175.176.5.8', 0, 1, 50, 299, -2783.27, 1311.53, 3131.51, -2784.66, 1310.8, 3130.65, 169.246, 6, 1, 20500, 500, 0, 1, 0, 17, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 2, 215, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657374105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'JneL_Davinci', 'car raming', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 95, 92, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(125, 'Jhay_Vercetti', 'E5E43102BB3AA220B28763F07069495813FC62E3E8F282252BF793E1CFC63EBB9D07146C05672FB454B04320BDEF6323858DF5EE128E5763ED6842680356C65B', '2022-07-02 13:52:58', '2022-07-02 13:52:58', NULL, '180.190.40.123', 0, 1, 20, 299, 1717.71, -1357.3, 14.478, 1718.1, -1359.09, 13.383, 183.981, 0, 0, 500, 500, 0, 1, 0, 4, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99, 84, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(126, 'Krave_Leonidas', '9F36BC066D9493725D0B278AA30C57920AE0B4DF33D632E9D28E6F11BB81CB2FB9A6B3979E773A3FA31A85A80BC731C607ACCC8A9FFE7A6B18FB372E426538BA', '2022-07-02 14:47:29', '2022-07-02 14:47:29', NULL, '119.111.147.137', 0, 1, 19, 299, 2039.15, -1413.95, -14.516, 2038.24, -1415.85, -20.27, 284.857, 0, 0, 20500, 500, 0, 1, 0, 2, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657378066, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 65, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(127, 'Miyaru_Aznos', 'DF3B09217F798FC03A4CC76D06B2FC047DC76A660783C8355351BE9C782999A72BC65731CED0AD7F7287A83FD0223601FAA3BAF46E5D2EC2BE8E1AC25F479027', '2022-07-02 15:32:57', '2022-07-02 15:32:57', NULL, '119.94.231.65', 0, 2, 41, 12, 2265.27, -1301.93, 24.851, 2265.44, -1305.15, 23.828, 182.896, 0, 0, 500, 500, 0, 1, 0, 1, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 38, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(128, 'Gadfrii_Vizenti', '294860D6F86A2D45C7EF98EC9836F70F29F4930A1B0C155E73C6C70320622C89B8FE97FA1A260CEF24EF94B85B5357A6E6ED90BCF0782DF9615F74D80E865878', '2022-07-02 18:57:47', '2022-07-02 18:57:47', NULL, '175.176.3.249', 0, 1, 15, 299, 1288.18, -1420.77, 16.218, 1284.9, -1421.86, 15.955, 98.883, 0, 0, 20500, 500, 0, 1, 0, 3, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657393089, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 139, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(129, 'Gello_Ashford', 'E7F56CC669A1A2CA1CE54DDC804BF9D1517DC3E54283E74BE3AF19911240765BDA36C8F21F57EC6E2B85D69E90DA5F02C5288B7183AF73E18CD51BE33558772F', '2022-07-03 01:35:42', '2022-07-03 01:35:42', NULL, '49.144.36.80', 0, 1, 19, 299, 2276.41, -1494.06, 23.555, 2275.8, -1497.51, 23.079, 170.666, 0, 0, 20500, 500, 0, 1, 0, 4, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657416960, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99, 58, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(130, 'Ariza_Vio', '64BBC1049722742FABB6531958032FFCAF8B75B0C6B9D21F79668078AC243D9D6AFD81FF29198E43D898FD2A19D0C70D14FB735EA3FEB6DB342E161EC6C2F8AD', '2022-07-03 01:58:45', '2022-07-03 02:02:26', NULL, '124.104.114.70', 0, 2, 18, 12, 2106.84, -1485.88, 23.863, 2103.7, -1484.56, 23.989, 88.041, 0, 0, 50200, 800, 0, 1, 0, 12, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657418390, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 96, 24, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(131, 'Zuez_Sanchez', '08B6AA564EB39839BFEA36DEE21885E9C3ACBD61E6B3C99CA578D795BA46A225C9B4846C2FEE14F269423E1C88EB2B04922939B7651F88A3DA6D227C83A4EFE7', '2022-07-03 02:50:11', '2022-07-03 02:50:11', NULL, '180.191.56.186', 0, 1, 20, 299, 1119.6, -1371.78, 14.92, 1119.15, -1370.03, 13.984, 2.477, 0, 0, 20000, 500, 0, 1, 0, 9, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657421539, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 98, 170, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(132, 'Astro_Dmitry', '1E97BDF303A5CDEB2B88CFCFB7C4BDFE0D6988240D20C84345076141A76B1506AD6E4478629DA0E2B00C4595F8C4AFCEF2FFC16ADF0F907E8FF9E3C712541913', '2022-07-03 03:13:43', '2022-07-03 03:13:43', NULL, '136.158.64.191', 0, 1, 22, 299, 2342.72, -1415.13, 24.87, 2340.52, -1420, 23.402, 273.444, 0, 0, 20500, 500, 0, 1, 0, 2, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657422859, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 104, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(133, 'JM_GALAN', 'E0352DD8B9E2F82FDC9D5719D9DCFD9A251AF573DE992D05C058FB5CD6929562A6F0B978AFF3676CEBF5CF1FC1E5A23C492C7A0D0BF45BBEC9BBAEC09ADFB927', '2022-07-03 05:00:29', '2022-07-03 05:00:29', NULL, '136.158.46.95', 0, 1, 20, 299, 2272.71, -1174.02, 26.847, 2273.99, -1180.02, 25.477, 181.753, 0, 0, 600, 399, 0, 1, 0, 19, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 94, 93, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(134, 'Wancho_K_Juice', '33C0724BFC2FDE5C0146D1042E124562C562CC311D1621052408DFD6C38B62D25C63664CDC0BE7A8D6C593751C9EB5F9EDA57C81651145836D85655AC71FD310', '2022-07-03 07:17:51', '2022-07-04 14:46:36', NULL, '131.226.67.13', 0, 1, 99, 299, 1299.14, -1711.22, 14.894, 1298.15, -1705.04, 13.383, 9.147, 0, 0, 20500, 500, 0, 1, 0, 3, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657437501, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99, 12, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(135, 'Pikachu_S_Cartel', '0B949E3D3280A8F4D3991F5C0791DAFC4893CBFB99DCF974D365DAAD97BA3FBD8E1E110A07436AB301BCCBA07A172B7E48115FD7EBC9A624AD21EE67A094EE14', '2022-07-03 09:13:34', '2022-07-03 09:13:34', NULL, '61.9.110.82', 0, 1, 99, 299, 2237.93, -1260.58, 24.374, 2240.99, -1262.08, 23.939, 267.136, 0, 0, 500, 500, 0, 1, 0, 0, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 49, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(136, 'Zhao_S_Cartel', '9A42E59418C82A7EEC93C2E0380A461CB6EC0C94D85425095ED20795DBC853CD2D1E0505C5B7D7CD0A69FAD77F9EC8A15F844178A2134273110E7D7D002D2622', '2022-07-03 09:13:55', '2022-07-03 09:13:55', NULL, '112.203.119.144', 0, 1, 19, 299, 1167.81, -1439.61, 16.702, 1171.29, -1439.63, 15.801, 266.993, 0, 0, 20500, 500, 0, 1, 0, 4, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657444468, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99, 88, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(137, 'Lux_S_Cartel', 'CEDA8913C6E902F0ECF544C2E7F660902D1097EEA549E76824C753DB11FEBC506CB323711D071E5859457F629F8CA1C65AC2E7CBBD93D72FC30903A61162E200', '2022-07-03 09:14:15', '2022-07-03 09:14:15', NULL, '112.201.73.242', 0, 1, 21, 293, 1310.83, -1368.28, 14.679, 1309.86, -1366.8, 13.559, 343.158, 0, 0, 18500, 500, 0, 1, 0, 9, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 951892, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657444479, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 98, 161, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(138, 'Senu_V._Batumbakal', 'BF4B27F752387094E07F0F68FFA3436646A3C8B911C5CA413B6A01DE9FE0198223CD18B452E1E4D9345DC7A9D9EC80551720469830B68472A07C68A2ECC68EE7', '2022-07-03 10:57:25', '2022-07-03 12:07:31', NULL, '49.150.209.247', 0, 1, 20, 2, 1134.11, -1384.68, 14.535, 1132.38, -1390, 13.732, 161.909, 0, 0, 20500, 500, 0, 1, 0, 12, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657450668, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 96, 61, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(139, 'Zero_DollarBills', 'C1D6373083E2EFD2C69427B02B2DED2B2A93175531AC4CF96FC45AE661FE8603D32FEECCFB60839FBE656A993896C886094D509F192D779C2ADA06CE4E065097', '2022-07-03 11:13:37', '2022-07-03 11:13:37', NULL, '120.29.111.14', 0, 1, 22, 299, 2233.25, -1159.42, 27.383, 2232.01, -1158.33, 25.891, 115.57, 0, 0, 20500, 500, 0, 1, 0, 2, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657451665, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 100, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(140, 'Mang_Sins', '306AE5D04041897C4F5A2C1178DF3BA16E3037C27299F00AB1F9C9F46EAE68267C8429AF3BAF092DF539D31F9077747D664642AB4F88CCAD7F78887AA57C0A00', '2022-07-03 12:21:06', '2022-07-03 12:23:36', NULL, '110.54.142.143', 0, 1, 18, 299, 2073.64, -1706.49, 14.572, 2070.34, -1705.56, 13.547, 62.74, 0, 0, 20500, 500, 0, 1, 0, 3, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657455751, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99, 32, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(141, 'Saichi_Smith', '21E3987189477F971299DA965CB9400A8A28147AB59B97F65990BB7CE94CF96CE004F6D94B99699421519B3C41A78A6F741F1FE16273FFE377C0EF3DC1690AC8', '2022-07-03 12:32:41', '2022-07-04 13:27:20', NULL, '136.158.17.123', 0, 1, 14, 299, 2111.77, -1506.15, 24.449, 2117.19, -1515.3, 23.798, 197.208, 0, 0, 500, 500, 0, 1, 0, 14, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 95, 36, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000);
INSERT INTO `users` (`uid`, `username`, `password`, `regdate`, `lastlogin`, `login_date`, `ip`, `setup`, `gender`, `age`, `skin`, `camera_x`, `camera_y`, `camera_z`, `pos_x`, `pos_y`, `pos_z`, `pos_a`, `interior`, `world`, `cash`, `bank`, `paycheck`, `level`, `exp`, `minutes`, `hours`, `adminlevel`, `adminname`, `helperlevel`, `health`, `armor`, `upgradepoints`, `warnings`, `injured`, `hospital`, `spawnhealth`, `spawnarmor`, `jailtype`, `jailtime`, `newbiemuted`, `helpmuted`, `admuted`, `livemuted`, `globalmuted`, `reportmuted`, `reportwarns`, `fightstyle`, `locked`, `accent`, `cookies`, `phone`, `job`, `secondjob`, `crimes`, `arrested`, `wantedlevel`, `materials`, `pot`, `crack`, `meth`, `painkillers`, `seeds`, `ephedrine`, `muriaticacid`, `bakingsoda`, `cigars`, `walkietalkie`, `channel`, `rentinghouse`, `spraycans`, `boombox`, `mp3player`, `phonebook`, `fishingrod`, `fishingbait`, `fishweight`, `components`, `courierskill`, `fishingskill`, `guardskill`, `weaponskill`, `mechanicskill`, `lawyerskill`, `smugglerskill`, `toggletextdraws`, `toggleooc`, `togglephone`, `toggleadmin`, `togglehelper`, `togglenewbie`, `togglewt`, `toggleradio`, `togglevip`, `togglemusic`, `togglefaction`, `togglegang`, `togglenews`, `toggleglobal`, `togglecam`, `carlicense`, `pilotlicense`, `boatlicense`, `facemask`, `fmtime`, `vippackage`, `viptime`, `vipcooldown`, `weapon_0`, `weapon_1`, `weapon_2`, `weapon_3`, `weapon_4`, `weapon_5`, `weapon_6`, `weapon_7`, `weapon_8`, `weapon_9`, `weapon_10`, `weapon_11`, `weapon_12`, `ammo_0`, `ammo_1`, `ammo_2`, `ammo_3`, `ammo_4`, `ammo_5`, `ammo_6`, `ammo_7`, `ammo_8`, `ammo_9`, `ammo_10`, `ammo_11`, `ammo_12`, `faction`, `gang`, `factionrank`, `gangrank`, `division`, `contracted`, `contractby`, `bombs`, `completedhits`, `failedhits`, `reports`, `helprequests`, `speedometer`, `factionmod`, `gangmod`, `banappealer`, `potplanted`, `pottime`, `potgrams`, `pot_x`, `pot_y`, `pot_z`, `pot_a`, `inventoryupgrade`, `addictupgrade`, `traderupgrade`, `assetupgrade`, `laborupgrade`, `pistolammo`, `shotgunammo`, `smgammo`, `arammo`, `rifleammo`, `hpammo`, `poisonammo`, `fmjammo`, `ammotype`, `ammoweapon`, `dmwarnings`, `weaponrestricted`, `referral_uid`, `refercount`, `watch`, `gps`, `prisonedby`, `prisonreason`, `togglehud`, `clothes`, `showturfs`, `showlands`, `watchon`, `gpson`, `doublexp`, `couriercooldown`, `pizzacooldown`, `detectivecooldown`, `duty`, `bandana`, `detectiveskill`, `gascan`, `refunded`, `backpack`, `bpcash`, `bpmaterials`, `bppot`, `bpcrack`, `bpmeth`, `bppainkillers`, `bpweapon_0`, `bpweapon_1`, `bpweapon_2`, `bpweapon_3`, `bpweapon_4`, `bpweapon_5`, `bpweapon_6`, `bpweapon_7`, `bpweapon_8`, `bpweapon_9`, `bpweapon_10`, `bpweapon_11`, `bpweapon_12`, `bpweapon_13`, `bpweapon_14`, `bphpammo`, `bppoisonammo`, `bpfmjammo`, `formeradmin`, `deathcooldown`, `hunger`, `hungertimer`, `thirst`, `thirsttimer`, `totalpatients`, `totalfires`, `rarecooldown`, `vipdlcooldown`, `customtitle`, `customcolor`, `mask`, `diamonds`, `ecoin`, `blindfold`, `rope`, `insurance`, `passport`, `passportname`, `passportlevel`, `passportskin`, `passportphone`, `marriedto`, `newbies`, `chatanim`, `Lottery`, `LotteryB`, `flashlight`, `candy`, `gunlicense`, `thiefskill`, `thiefcooldown`, `cocainecooldown`, `teacher`, `course`, `citizen`, `repairkit`, `firstaid`, `nationalid`, `dirtycash`, `comserv`, `groupleader`, `pgroup`, `task1`, `task2`, `task3`, `task4`, `task5`, `claimed1`, `claimed2`, `claimed3`, `claimed4`, `claimed5`, `loadexpire`, `loads`, `bindslot1`, `bindslot2`, `bindslot3`, `bindslot4`, `bindslot5`, `bindslot6`, `bindslot7`, `bindslot8`, `Voucher0`, `Voucher1`, `Voucher2`, `Voucher3`, `Voucher4`, `Voucher5`, `voicechat`, `discordtag`, `discordname`, `parts`, `vest`, `medkit`, `brokenleg`, `bedtype`, `bedtime`, `lastgift`, `lastgifttimer`) VALUES
(142, 'Don_A_Nathan', 'CCE08BBA3F2E3C029CD257104B06D4B075772D5F514CF1B7789506F9A69D53C51464881D2C18445AB290553B302F67A24B1C69E3E737A46215DEAF43517E4960', '2022-07-03 13:01:09', '2022-07-03 23:07:38', NULL, '111.90.205.60', 0, 1, 18, 299, 982.791, -1321.83, 14.581, 982.73, -1318.34, 13.378, 1, 0, 0, 600, 504, 26093, 1, 1, 17, 1, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, 4, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657458101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, -1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 77, 157, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, '/me Take My [WEAPON] On My Belt And Click [ON/OFF] Aim it And Ready To Shoot AnyTime AnyWhere', '/me extend my hand and salute on front of major alex', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(143, 'Kai_scarpio', 'CECA7D57D7DAD23D8A031F3D6CC07FD360D5C06B6BCB621B25A3EAF8719006A8CCF57DDECFDD526F24DFC5A7EA2ABAB7767347F9BC1B42D23E255869272209CA', '2022-07-03 13:14:10', '2022-07-03 13:14:10', NULL, '203.189.116.182', 0, 1, 19, 113, 1129.95, -1443.08, 16.879, 1307.46, -1380.99, 13.714, 178.642, 0, 0, -2000, 500, 0, 1, 0, 10, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 97, 26, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(144, 'Lil_Jizz', 'CCE08BBA3F2E3C029CD257104B06D4B075772D5F514CF1B7789506F9A69D53C51464881D2C18445AB290553B302F67A24B1C69E3E737A46215DEAF43517E4960', '2022-07-03 13:52:51', '2022-07-14 14:20:49', NULL, '115.147.57.183', 0, 1, 21, 163, 2279.71, -1388.49, 25.555, 2278.46, -1385.42, 23.966, 254.994, 0, 0, 111916, 902389, 0, 3, 9, 15, 21, 0, 'None', 0, 100, 100, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 993657, 4, -1, 0, 0, 0, 6000, 99, 50, 0, 0, 0, 0, 0, 0, 29, 1, 0, 0, 0, 0, 0, 1, 1, 5, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, -1, 3, 0, -1, 0, 'Nobody', 1, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 'No-one', 'None', 1, -1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 19, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 120, 99, 12, 0, 0, 0, 0, '0', '0', 1, 11, 0, 2, 2, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 10, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'reaches for his gun click the safety [On-Off] ready to shoot anytime.', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 17999868),
(145, 'Liquid_Schmdt', '2CC16BDC487DA3E45FE96A33458F1E7106B247991B80D2B3912A5CECCCE60B194310C164EFADB23CA52893228DF40AE0051511A8316048EF2FB5762C54A756AC', '2022-07-03 14:00:42', '2022-07-12 02:08:30', NULL, '49.149.238.27', 0, 1, 18, 287, 1259.27, -1284.78, 1062.06, 1256.47, -1283.04, 1061.15, 178.553, 0, 1, 20000, 500, 9302, 3, 0, 83, 5, 7, 'Liquid', 0, 100, 100, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, 1, -1, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, -1, 19, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, 123, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 151, 97, 17, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 17999623),
(146, 'Charlie_Chaplin', '91D2D7594FF29E4AD8FFDEEAE69D90F80704F7627B0C1D0ED13D1291DE8C98508C4F8AAC295A7007D7865E00E5971FDC15D7A700C2B91941A5572F41A286F05A', '2022-07-03 17:42:15', '2022-07-03 17:42:15', NULL, '112.207.115.109', 0, 1, 99, 299, 620.778, -584.149, 18.703, 621.726, -587.319, 17.233, 231.87, 0, 0, 21500, 500, 0, 1, 0, 5, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657474982, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99, 56, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(147, 'Marcial_Perez.', '4925DA7DA7A56260BAF1C37925A8FA24E46AD8B107DCD21F44E39E4751BAE1304FC70DE7ACB847FFA96126BB372DE005F5320F1EDE6F9DF07C7D53F9C160F022', '2022-07-03 19:21:00', '2022-07-03 19:21:00', NULL, '103.196.105.252', 0, 1, 21, 299, 716.361, -480.49, 17.546, 717.938, -475.16, 16.336, 278.914, 0, 0, 20500, 500, 0, 1, 0, 6, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657480890, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99, 125, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(148, 'Mark_Villar', '7ADEA86E751025F23119DC3CE228FF183BA4B4E1D5232EB6C35A9367280CA018E8BE5F4844FD58573520C8122735DB71A028A2903F4F371277A55B57D77074D3', '2022-07-03 23:56:45', '2022-07-03 23:56:45', NULL, '112.205.66.69', 0, 1, 31, 299, 2245.4, -1262.95, 25.724, 2240.62, -1260.91, 23.528, 273.444, 0, 0, 20500, 500, 0, 1, 0, 1, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657497415, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 50, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(149, 'Happy_Cartel', 'CCE08BBA3F2E3C029CD257104B06D4B075772D5F514CF1B7789506F9A69D53C51464881D2C18445AB290553B302F67A24B1C69E3E737A46215DEAF43517E4960', '2022-07-04 01:44:22', '2022-07-04 01:44:22', NULL, '122.54.92.233', 1, 1, 18, 299, 1714.9, -1869.23, 16.301, 1529.6, -1691.2, 14.26, 1, 0, 0, 500, 500, 0, 1, 0, 0, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 52, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(150, 'Ashka_Ogawa', 'E0B44E4AA926C8A63AC9C0C0FB963253C08903AE837308BBA2EDFB642DBAA2E2D728396186A9AED624B52561A0DABFA4A1A396247078BB32C069FE23886A959F', '2022-07-04 03:41:12', '2022-07-04 03:41:12', NULL, '175.176.9.250', 0, 1, 22, 299, 1057.6, -1243.24, 16.703, 1057.82, -1268.45, 13.533, 330.194, 0, 0, 20500, 500, 0, 1, 0, 5, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657510945, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99, 97, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(151, 'Kudo_V._Chyper', 'FF52BF20C3D6A59467B2CF7EF1E3F2A71DF2B27CD90A7E26D86FE6E3FFAAAD0F372D6A5AEA44F0786EB34E21A0230F3248170D559B3C7CEE02B4A10CE9526DD2', '2022-07-04 05:33:09', '2022-07-07 01:02:01', NULL, '49.150.170.55', 0, 1, 20, 2, 642.88, -570.879, 17.071, 644.568, -578.542, 16.188, 192.425, 0, 0, 19800, 500, 0, 1, 0, 39, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657517607, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 87, 156, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(152, 'Deym_Lee', '2F9959B230A44678DD2DC29F037BA1159F233AA9AB183CE3A0678EAAE002E5AA6F27F47144A1A4365116D3DB1B58EC47896623B92D85CB2F191705DAF11858B8', '2022-07-04 06:16:41', '2022-07-17 05:17:30', NULL, '111.125.107.46', 0, 1, 18, 299, 1155.35, -1404.44, 14.252, 1158.64, -1403.36, 13.453, 286.141, 0, 0, 11200, 500, 0, 1, 0, 32, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 953533, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89, 1, 93, 31, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 17999129),
(153, 'Miles_Garcia', 'FA5738C98FDCEDD02CE6205F011B07BECAEC7B4BA6206B938A51B12AA878C4B95111EF60D79EBEF6513397197FE165E677A963B8601B10B8CCCE85D9412E6FA0', '2022-07-04 06:57:41', '2022-07-04 10:42:31', NULL, '49.145.229.75', 0, 1, 22, 276, 847.002, -592.79, 18.882, 845.423, -595.913, 18.264, 193.361, 0, 0, 20500, 500, 0, 1, 0, 76, 0, 0, 'None', 0, 100, 100, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'American', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657522685, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, -1, 1, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, 299, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 75, 112, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 1, 1, 0, 0, 0, 0, 18000000),
(154, 'Tom_Sawyer', 'E47A0742CBA8F2D4A19933DA8966E7B94F4B6E2C62975BFB1AD74AC730FA934862C3A6FC10DF8C81D8372B9F364D613CEC9629520ED38694584BC05D9214FBEE', '2022-07-04 07:22:31', '2022-07-04 07:22:31', NULL, '175.176.7.169', 0, 1, 25, 299, 676.257, -677.005, 17.027, 674.064, -674.641, 16.266, 46.33, 0, 0, 16250, 500, 0, 1, 0, 9, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657524328, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 98, 179, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(155, 'Makoy_Kush', 'ABEAA9AE3F7F94CC9A0752D287766F022D7E3371D75397F475C5BEAB0BE44ADB4304EFA64BF11DE8DBBFC16E388BFFDE59849EB0D723CB706D1C896BE60C352F', '2022-07-04 11:48:04', '2022-07-04 13:54:39', NULL, '112.201.109.209', 0, 1, 21, 270, 723.403, -613.116, 16.875, 722.121, -612.52, 15.953, 7.865, 0, 1, 5301, 500, 0, 1, 0, 32, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 944411, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 69, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657540113, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, -1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 90, 158, 100, 0, 0, 0, 0, 0, '0', '0', 1, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(156, 'Shane_Guiset', 'B5F791545B457E51776EB19D87D6F1DB3FB3D430618F0FA9F81B4C5E7539F1CFFF5719F62937300753C7447D0571C264F46E31D4D705833B6EE9DD8AED1E106C', '2022-07-04 13:05:29', '2022-07-04 13:24:28', NULL, '175.176.5.8', 0, 2, 20, 12, -1920.76, -841.408, 4436.57, -1920.38, -843.139, 4435.6, 196.183, 1, 1, 15150, 500, 0, 1, 0, 27, 0, 0, 'None', 0, 9, 0, 0, 0, 0, 0, 50, 0, 3, 249, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657544771, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 97, 22, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(157, 'Issac_Constantine', '6FA663E52B3D7DA9780204FACB3032F889B243A82185D0EF4E21D1C3669896ACCA8AAE3325DCE8E72F82E9ACDE04F8C139B811423CA9732333FF31D75FBD9230', '2022-07-04 13:13:42', '2022-07-04 14:49:30', NULL, '110.54.202.81', 0, 1, 17, 103, 708.45, -464.571, 17.312, 709.719, -463.977, 16.336, 245.68, 0, 0, 20300, 501, 0, 1, 1, 12, 1, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657551219, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 0, 6, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 84, 35, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(158, 'Ron_Tanon', '518F797D36B59140D25BA1B5BDDA4D14C2227B57033EBF65472BFBC4ACC5A7C27B65027D5914F36C6E52CEC7C28D720D438F02A8747F46740AA249BBC127699A', '2022-07-04 13:24:27', '2022-07-04 13:24:27', NULL, '180.191.69.57', 0, 1, 19, 299, 1121.55, -1408.17, 15.759, 1117.99, -1407.7, 12.981, 94.001, 0, 0, 20500, 500, 0, 1, 0, 12, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657545925, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 97, 136, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(159, 'Blaze_Chyper', '1E97BDF303A5CDEB2B88CFCFB7C4BDFE0D6988240D20C84345076141A76B1506AD6E4478629DA0E2B00C4595F8C4AFCEF2FFC16ADF0F907E8FF9E3C712541913', '2022-07-04 13:31:12', '2022-07-04 13:31:12', NULL, '175.176.61.17', 0, 1, 22, 299, 677.656, -666.806, 17.495, 673.067, -664.433, 15.749, 355.291, 0, 0, 20500, 500, 0, 1, 0, 1, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657546314, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 81, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(160, 'Kenji_Guyabano', 'B5F791545B457E51776EB19D87D6F1DB3FB3D430618F0FA9F81B4C5E7539F1CFFF5719F62937300753C7447D0571C264F46E31D4D705833B6EE9DD8AED1E106C', '2022-07-04 14:10:38', '2022-07-04 14:10:38', NULL, '175.176.5.8', 0, 1, 13, 299, 664.443, -594.833, 18.465, 665.649, -592.65, 16.274, 355.877, 0, 0, 20500, 500, 0, 1, 0, 7, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657548657, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99, 24, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(161, 'Don_Latigo', '7E46FAB6C0E04084F37B885005761C2F0F6FB3AD54B04FC977B4236D561846C8FE763C67B8E19835FE44C266ED147FB85A000280B8DE1BFC46DD4802EE119559', '2022-07-04 14:13:08', '2022-07-04 14:13:08', NULL, '155.137.110.60', 0, 1, 15, 299, 663.542, -593.763, 17.563, 666.484, -592.93, 16.285, 5.148, 0, 0, 21500, 500, 0, 1, 0, 16, 0, 0, 'None', 0, 98.68, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657548813, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 95, 47, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(162, 'Grey_Fullbuster', '7D1452C3FA35CA0E857025A06884F28186601B069DA94598F3976C196453511C93898CE18EC556D6A714B5DA903124F21843AFC1D8405DFA887C31486C9A8851', '2022-07-04 14:17:12', '2022-07-06 14:52:17', NULL, '103.137.206.38', 0, 1, 22, 185, 618.956, -592.104, 18.688, 617.821, -589.083, 17.233, 82.06, 0, 0, 21000, -9, 0, 1, 1, 0, 1, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 931935, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 3, 20, 1, 0, 0, 10, 0, 1, 1, 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657549974, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 85, 116, 100, 0, 0, 0, 0, 0, '0', '0', 1, 0, 0, 2, 2, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(163, 'Grecko_Locco', 'B4DC4295EF4DFA534438C3DC15ADE9D1D5262F9D933660125FD9BA36BE1EABA740E131B7306811B0FE081851E45161A641F23206281940378ECB8F62049A64AB', '2022-07-04 18:03:55', '2022-07-04 18:03:55', NULL, '112.200.207.62', 0, 1, 18, 188, 2701.36, -1423.92, 17.773, 2696.16, -1425.74, 16.25, 109.905, 0, 0, 19800, 500, 0, 1, 0, 13, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 960307, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657562690, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 43, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 96, 109, 100, 0, 0, 0, 0, 0, '0', '0', 1, 0, 0, 0, 2, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(164, 'Don_Pacheco', '2C7024AB0C7DCFE663B36D9EFF50E28B5CFCAD55DE431864ECA534D3856C104FA9BD01D43E2007DA365A485AA8A850347F6F4577C16349943A395F493B938832', '2022-07-05 00:51:13', '2022-07-05 00:51:13', NULL, '112.204.242.85', 0, 1, 19, 299, 1547.94, -1675.51, 14.334, 1544.44, -1675.55, 13.557, 90, 0, 0, 19850, 500, 0, 1, 0, 23, 0, 7, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657587770, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 94, 139, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(165, 'Jelo_Taniman', '65D033B9C6157C40E8BAC55E1E9E7D4B6A95E5C69DEB6B6EF3054511C54BB4896126C943D6A03F21E2B3EDFC2C4038B49BF6016652B70787486124DF8DE25B4B', '2022-07-05 02:29:07', '2022-07-05 02:53:37', NULL, '112.206.37.233', 0, 1, 20, 299, 629.27, -573.711, 17.596, 701.491, -474.638, 15.9, 26.614, 0, 0, 48750, 504, 8911, 1, 1, 26, 1, 0, 'None', 0, 50, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 920548, 4, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 3, 1657592992, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 6, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(166, 'Juncliff_Huxly', 'BEF49EA041E1DA80ADE54A207E76F199A4C21648F90DC8C300E95001645E64CFB65C0CB401EE4A24B514EDAA99880A0B44506F852CFDC4E2D983CE6F54523A91', '2022-07-05 02:42:30', '2022-07-05 02:42:30', NULL, '120.29.105.9', 0, 1, 23, 299, 679.128, -480.641, 17.509, 682.806, -480.847, 16.188, 274.558, 0, 0, 20500, 500, 0, 1, 0, 2, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657593790, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 154, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(167, 'Makarov_K_Juice', '42EFAF73D6F05FE066F4F933DCEFEEDB5593FE107D15882DB1D5970940BDB55DD0C2D022567ABE38AB0F286DB7E87B7BFDDD93E0517D11B8C43FF7BAC9D184B3', '2022-07-05 03:17:03', '2022-07-05 04:22:41', NULL, '136.158.10.97', 0, 1, 22, 136, 927.667, -657.625, 119.81, 927.421, -655.172, 118.745, 342.105, 0, 0, 17565, 1503501, 0, 1, 1, 23, 1, 3, 'SecretAdmin', 0, 100, 100, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 903021, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 27, 0, 31, 34, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, -1, 4, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 79, 63, 100, 0, 0, 0, 0, 0, '0', '0', 1, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'take outs his [WEAPON] as he would flict the safety [ON/OFF] and cock the squeeze the trigger a several time', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(168, 'Tyke_Ortega', '10F9BC65462E3947F10E7B14F53479D7DEBBD7BE32780EE944CE9C18EEC0A35988C563DC5C453D14A8458545FA1CE8D1C2C058D3969376B498B15F616B22E2CA', '2022-07-05 06:04:13', '2022-07-05 06:04:13', NULL, '120.29.87.189', 1, 1, 18, 299, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 500, 0, 1, 0, 0, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 13, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(169, 'Lazarus_Elchapo', 'CAC435E0142DA8C6A0D14CAFFCDCD58E678C3C4085C1A703E061D67E817664F5B3106EBDDE65D0EB26BEF9EC0C0A002B69EA78A5B1BF85A4FFECD48DC093DF58', '2022-07-05 07:36:08', '2022-07-06 04:29:04', NULL, '49.149.139.4', 0, 1, 17, 299, 449, -853.643, 30.688, 446.52, -854.005, 29.805, 113.104, 0, 0, 2565, 500, 28640, 1, 0, 14, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 978852, 4, -1, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657627007, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 95, 26, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(170, 'Jackson_Lee', '3231A257A25CA3183845627E940EF085408817AFAFD4014295D9E6D891DDC3DFB16F51B6176AF97C41F718F295E5411957100F0157766485B1E200CA87C75D14', '2022-07-05 08:14:52', '2022-07-12 03:52:24', NULL, '120.29.76.242', 0, 1, 22, 299, 650.512, -529.464, 17.456, 649.284, -526.304, 16.188, 21.301, 0, 0, 3565, 500, 0, 1, 0, 16, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657613750, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 95, 61, 98, 10, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 17999750),
(171, 'toks_foxy', 'AB6330E0782663AD296C93B7A54C71B90E1C175A730550144BD21AA50074EFC35CA143D0E201694EC3C71A0B17BD7ED2067F8A1BB681FA8BF65EFF4D4A191969', '2022-07-05 11:42:23', '2022-07-05 11:42:23', NULL, '131.226.66.98', 0, 1, 30, 299, 447.712, -852.602, 31.366, 446.345, -855.789, 29.805, 140.274, 0, 0, 20300, 0, 51270, 1, 0, 33, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, 4, -1, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657627026, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89, 82, 100, 0, 0, 0, 759, 0, '0', '0', 0, 1, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(172, 'Rain_Velasquez', 'C45A2DA143AE63396F3D182C75F9C1D4C5CEFD1163FD6F247392013DEC4EC859F97D997A301C9E6D50E43C41C172A9E8AFBBAF5C6BDB3D8812F425FCC4D7B100', '2022-07-05 11:50:05', '2022-07-05 11:51:57', NULL, '152.32.98.230', 0, 1, 21, 113, 655.244, -581.303, 17.754, 647.37, -575.447, 16.207, 29.344, 0, 0, 15200, 500, 0, 1, 0, 3, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99, 35, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(173, 'Pito_Guzimo', '5722791BB5A29ADA0DBF63A40D1AF0F170520790F7361C0161A52CAC229B37D3C82457510B63E25F26781494872F08735437EDC40855004918FD060D1304CCE7', '2022-07-05 13:51:33', '2022-07-05 13:53:54', NULL, '222.127.171.128', 0, 1, 22, 113, 211.467, -101.021, 1006.21, 211.201, -103.346, 1005.26, 173.464, 15, 3000048, 20300, 500, 0, 1, 0, 4, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657633918, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 174, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(174, 'Keiko_Smith', '9EE45A0F28A69E313E48B8C9DE91A87C3CB1AA23212E4B6C6E74E93F30118F10FD9A59C190E82FD1A7F26E6B62959F5B58B756F157660B8191FBCDE398978BAB', '2022-07-05 13:59:41', '2022-07-05 13:59:41', NULL, '223.25.63.104', 0, 1, 23, 299, 207.633, -111.481, 1005.84, 207.633, -110.767, 1005.13, 0, 15, 3000048, 49400, 500, 0, 1, 0, 9, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657634400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 97, 50, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(175, 'Ryu_Yagami', 'B12DAC92BB88F9BF307E7CE8A602356A591F177F9CD9DEA3E9AF8C28B1ED35560B3233977EFF85812ED36F6CB741FB813A0B47001EF4644FC3BE717336940004', '2022-07-05 14:30:45', '2022-07-06 12:29:49', NULL, '175.176.13.162', 0, 1, 25, 299, 1538.83, -1313.12, 430.25, 715.884, -598.741, 16.188, 1, 0, 0, 15244, 16484, 0, 1, 2, 3, 2, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 913236, 12, 2, 0, 0, 0, 0, 50, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 6, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657636298, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 82, 132, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(176, 'Bart_Trese', 'CECA7D57D7DAD23D8A031F3D6CC07FD360D5C06B6BCB621B25A3EAF8719006A8CCF57DDECFDD526F24DFC5A7EA2ABAB7767347F9BC1B42D23E255869272209CA', '2022-07-05 18:41:03', '2022-07-05 18:41:03', NULL, '203.189.116.182', 0, 1, 19, 299, 408.125, -842.778, 26.915, 450.939, -850.513, 44.362, 98.332, 0, 0, 19600, 500, 46794, 1, 0, 29, 0, 0, 'None', 0, 74, 0, 0, 0, 1, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, 4, -1, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657651293, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 90, 7, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 1, 0, 0, 0, 18000000);
INSERT INTO `users` (`uid`, `username`, `password`, `regdate`, `lastlogin`, `login_date`, `ip`, `setup`, `gender`, `age`, `skin`, `camera_x`, `camera_y`, `camera_z`, `pos_x`, `pos_y`, `pos_z`, `pos_a`, `interior`, `world`, `cash`, `bank`, `paycheck`, `level`, `exp`, `minutes`, `hours`, `adminlevel`, `adminname`, `helperlevel`, `health`, `armor`, `upgradepoints`, `warnings`, `injured`, `hospital`, `spawnhealth`, `spawnarmor`, `jailtype`, `jailtime`, `newbiemuted`, `helpmuted`, `admuted`, `livemuted`, `globalmuted`, `reportmuted`, `reportwarns`, `fightstyle`, `locked`, `accent`, `cookies`, `phone`, `job`, `secondjob`, `crimes`, `arrested`, `wantedlevel`, `materials`, `pot`, `crack`, `meth`, `painkillers`, `seeds`, `ephedrine`, `muriaticacid`, `bakingsoda`, `cigars`, `walkietalkie`, `channel`, `rentinghouse`, `spraycans`, `boombox`, `mp3player`, `phonebook`, `fishingrod`, `fishingbait`, `fishweight`, `components`, `courierskill`, `fishingskill`, `guardskill`, `weaponskill`, `mechanicskill`, `lawyerskill`, `smugglerskill`, `toggletextdraws`, `toggleooc`, `togglephone`, `toggleadmin`, `togglehelper`, `togglenewbie`, `togglewt`, `toggleradio`, `togglevip`, `togglemusic`, `togglefaction`, `togglegang`, `togglenews`, `toggleglobal`, `togglecam`, `carlicense`, `pilotlicense`, `boatlicense`, `facemask`, `fmtime`, `vippackage`, `viptime`, `vipcooldown`, `weapon_0`, `weapon_1`, `weapon_2`, `weapon_3`, `weapon_4`, `weapon_5`, `weapon_6`, `weapon_7`, `weapon_8`, `weapon_9`, `weapon_10`, `weapon_11`, `weapon_12`, `ammo_0`, `ammo_1`, `ammo_2`, `ammo_3`, `ammo_4`, `ammo_5`, `ammo_6`, `ammo_7`, `ammo_8`, `ammo_9`, `ammo_10`, `ammo_11`, `ammo_12`, `faction`, `gang`, `factionrank`, `gangrank`, `division`, `contracted`, `contractby`, `bombs`, `completedhits`, `failedhits`, `reports`, `helprequests`, `speedometer`, `factionmod`, `gangmod`, `banappealer`, `potplanted`, `pottime`, `potgrams`, `pot_x`, `pot_y`, `pot_z`, `pot_a`, `inventoryupgrade`, `addictupgrade`, `traderupgrade`, `assetupgrade`, `laborupgrade`, `pistolammo`, `shotgunammo`, `smgammo`, `arammo`, `rifleammo`, `hpammo`, `poisonammo`, `fmjammo`, `ammotype`, `ammoweapon`, `dmwarnings`, `weaponrestricted`, `referral_uid`, `refercount`, `watch`, `gps`, `prisonedby`, `prisonreason`, `togglehud`, `clothes`, `showturfs`, `showlands`, `watchon`, `gpson`, `doublexp`, `couriercooldown`, `pizzacooldown`, `detectivecooldown`, `duty`, `bandana`, `detectiveskill`, `gascan`, `refunded`, `backpack`, `bpcash`, `bpmaterials`, `bppot`, `bpcrack`, `bpmeth`, `bppainkillers`, `bpweapon_0`, `bpweapon_1`, `bpweapon_2`, `bpweapon_3`, `bpweapon_4`, `bpweapon_5`, `bpweapon_6`, `bpweapon_7`, `bpweapon_8`, `bpweapon_9`, `bpweapon_10`, `bpweapon_11`, `bpweapon_12`, `bpweapon_13`, `bpweapon_14`, `bphpammo`, `bppoisonammo`, `bpfmjammo`, `formeradmin`, `deathcooldown`, `hunger`, `hungertimer`, `thirst`, `thirsttimer`, `totalpatients`, `totalfires`, `rarecooldown`, `vipdlcooldown`, `customtitle`, `customcolor`, `mask`, `diamonds`, `ecoin`, `blindfold`, `rope`, `insurance`, `passport`, `passportname`, `passportlevel`, `passportskin`, `passportphone`, `marriedto`, `newbies`, `chatanim`, `Lottery`, `LotteryB`, `flashlight`, `candy`, `gunlicense`, `thiefskill`, `thiefcooldown`, `cocainecooldown`, `teacher`, `course`, `citizen`, `repairkit`, `firstaid`, `nationalid`, `dirtycash`, `comserv`, `groupleader`, `pgroup`, `task1`, `task2`, `task3`, `task4`, `task5`, `claimed1`, `claimed2`, `claimed3`, `claimed4`, `claimed5`, `loadexpire`, `loads`, `bindslot1`, `bindslot2`, `bindslot3`, `bindslot4`, `bindslot5`, `bindslot6`, `bindslot7`, `bindslot8`, `Voucher0`, `Voucher1`, `Voucher2`, `Voucher3`, `Voucher4`, `Voucher5`, `voicechat`, `discordtag`, `discordname`, `parts`, `vest`, `medkit`, `brokenleg`, `bedtype`, `bedtime`, `lastgift`, `lastgifttimer`) VALUES
(177, 'ThaN_ThaN', '2F9959B230A44678DD2DC29F037BA1159F233AA9AB183CE3A0678EAAE002E5AA6F27F47144A1A4365116D3DB1B58EC47896623B92D85CB2F191705DAF11858B8', '2022-07-06 00:01:10', '2022-07-06 00:01:10', NULL, '112.203.19.121', 0, 1, 25, 299, 1159.93, -1473.09, 16.785, 1154.99, -1473.93, 15.797, 99.584, 0, 0, 20500, 500, 0, 1, 0, 8, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657670513, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 98, 124, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(178, 'Fujin_Nishikawa', '5AF95170CCEC0231C4387CA5F918FBAB40FEF9AEBF832993084847438CEAF1106A82D86CB9F54E5009CFB80001FCDB8F976798EAC035BA67C6062BFADDBFF1EA', '2022-07-06 03:39:18', '2022-07-06 13:56:12', NULL, '120.29.68.142', 0, 1, 20, 299, 821.757, -582.311, 20.257, 823.563, -584.229, 19.153, 90, 0, 0, 0, 500, 0, 1, 0, 13, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 96, 31, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(179, 'Calvs_Etich', 'D33C747FA0AE6EF7C2503B47439B4D25DD7BDCC8BFF2A70B45E343D044BDCFAF80BD9A223F0B2AEED41CDCECFE3915BA9CD19DBA3BCF808C2E18B4C842DC2E3C', '2022-07-06 03:55:52', '2022-07-06 03:55:52', NULL, '175.176.5.104', 0, 1, 13, 299, 1381.18, -1893.14, 15.877, 1380.53, -1897.42, 13.488, 171.211, 0, 0, 20500, 500, 0, 1, 0, 11, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657684596, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 96, 8, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(180, 'Andrei_Verscxx', '404733CAA6EBFD96AE5E206F279F0D4A437653A5B0F91D8956E124AC5A7E0EB1591B683DE69F7F55357DCD9B5B99D8DDBB36DDEE8B6620589595D490DAAD9C31', '2022-07-06 05:01:54', '2022-07-06 05:02:44', NULL, '175.176.7.156', 0, 1, 14, 299, 674.657, -534.613, 18.489, 671.602, -535.255, 16.336, 103.768, 0, 0, 500, 500, 0, 1, 0, 2, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99, 3, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(181, 'samp_255', '2BA3893C61E30AB8E5A466C9B28A03CA8BBFEA66FAED3793355CC8722D13654244F7A883D04F8C9DBDC2644FC621A274CA29CD7188F18D0081C6C0392DAF23D0', '2022-07-06 06:02:01', '2022-07-06 06:02:01', NULL, '112.198.66.8', 0, 1, 20, 299, -2785.47, 1306.47, 3132.31, -2785.62, 1301.3, 3127.16, 178.362, 6, 1, 500, 500, 0, 1, 0, 2, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 2, 585, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Server', 'Failing to change their name', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 136, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(182, 'Johnwayne_Cartel', 'C74F9025E09F0F8BCCF956FAF42973C595EBC2DA4E2B5953AB62C65D04E5ABE0EC152D483B08DCAD2B3B9F25EE3CC1C66499EE17623C5D6953EA0048A3EE08C9', '2022-07-06 06:27:55', '2022-07-06 06:32:19', NULL, '136.158.34.138', 0, 1, 13, 299, 674.698, -542.555, 17.533, 674.636, -539.128, 16.336, 97.618, 0, 0, 500, 500, 0, 1, 0, 4, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99, 26, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(183, 'Kirigaya_Kazuto', '44F9DF41ED75684AC0AEF8E8A06F0368700423BAC3608E6E046D5B63CA44AEC08A1F9CB79A0B410A12DA38DED42D9C199CF472F328FF8316A6C5CE325F3F5514', '2022-07-06 07:00:28', '2022-07-06 07:08:44', NULL, '110.54.245.115', 0, 1, 50, 299, 789.157, -1314.48, 14.208, 787.393, -1318.87, 12.991, 149.393, 0, 0, 365, 21000, 0, 1, 0, 14, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 902160, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657695762, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 96, 55, 100, 0, 0, 0, 0, 0, '0', '0', 1, 0, 0, 2, 2, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(184, 'Kim_Se_Villamonte', '3EA86237337DFF79EBA41BC3B0AD6F56351F3EBF5A91FA8FF5F0C821C70E02E913CACFF12F9880FB0B30B98E0852540AD75783716A57247ADEBEAA8768F24481', '2022-07-06 07:01:15', '2022-07-06 08:32:49', NULL, '1.37.89.1', 0, 1, 18, 299, 687.569, -598.383, 18.374, 684.273, -596.039, 15.789, 254.889, 0, 0, 276700, 37254, 0, 1, 1, 32, 1, 0, 'None', 0, 100, 100, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 961864, 4, -1, 0, 0, 0, 5000, 100, 75, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657695724, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 43, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 'No-one', 'None', 1, -1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99, 83, 100, 0, 0, 0, 0, 0, '0', '0', 1, 2, 0, 0, 0, 1, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 2, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(185, 'Jun_G._War', 'D14C395D801571503C4CF1DFF93DCBD3E566CD9BE5E73B9289B0682AA0E14F26087C8F3174340A12C738BDFF756244D352BC325CDE89BCA58A10C2E1711EB2D8', '2022-07-06 07:24:20', '2022-07-06 08:37:17', NULL, '136.158.41.87', 0, 1, 16, 299, 55.855, -2251.32, 16.09, 61.434, -2256.22, 14.489, 210.382, 0, 0, 39000, 501, 0, 1, 1, 26, 1, 0, 'None', 0, 100, 100, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 5000, 100, 75, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 80, 32, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(186, 'Carl_Andrei', '818DADAFCAE5919ACB562E9FAAA9556E3E483E8C2429A76CB3767CFD3E4670B21D4A085F51AC43FD1EAC0C0EA159433F4D574C2FE599C6852FBD4E6BE0C2C697', '2022-07-06 08:07:15', '2022-07-06 12:56:36', NULL, '110.54.190.52', 0, 1, 21, 299, 1461.44, -810.306, 77.579, 677.353, -645.943, 16.188, 305.927, 0, 0, 0, 500, 0, 1, 0, 8, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 98, 62, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(187, 'jun_G_WARG', 'D14C395D801571503C4CF1DFF93DCBD3E566CD9BE5E73B9289B0682AA0E14F26087C8F3174340A12C738BDFF756244D352BC325CDE89BCA58A10C2E1711EB2D8', '2022-07-06 08:32:03', '2022-07-06 08:32:03', NULL, '136.158.41.87', 0, 1, 15, 299, 672.931, -722.63, 19.538, 674.412, -723.94, 16.06, 105.767, 0, 0, 500, 500, 0, 1, 0, 1, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 76, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(188, 'Ruki_G._Wang', 'ACE83EB076E3D63628C2A58B54F3D8B2936DEB5412FAE9D18D8E108AD6575757719BD29C672628DBAE3D538FDEE3DD7C18A72B39BB4FC0C079F6C4731DA3DA7C', '2022-07-06 09:23:09', '2022-07-06 12:48:19', NULL, '112.198.253.109', 0, 1, 23, 299, 1473.49, -839.268, 74.695, 616, -524.116, 16.336, 91.293, 0, 0, 93216, 0, 700, 1, 1, 28, 1, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 958592, 12, -1, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 3, 1657704216, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, -1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 10, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 79, 62, 100, 0, 0, 0, 0, 0, '0', '0', 0, 1, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(189, 'Haruchiyo_Sanzu', '6C326D0F226AF5D89ADB74C4C675A28D40B256CAAEC93923751E7ADE4D2A63BAF60A03E616C95EE62074B85E6E1646E61C729A44874D247CEF9CBFC675D71F81', '2022-07-06 09:30:45', '2022-07-06 09:36:05', NULL, '175.176.41.5', 0, 1, 18, 299, 447.571, -858.076, 31.268, 444.3, -858.913, 29.805, 77.146, 0, 0, 55065, 500, 19280, 1, 0, 12, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 903952, 4, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657705054, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 97, 160, 100, 0, 0, 0, 0, 0, '0', '0', 1, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(190, 'Ruki_g_Wang', 'ACE83EB076E3D63628C2A58B54F3D8B2936DEB5412FAE9D18D8E108AD6575757719BD29C672628DBAE3D538FDEE3DD7C18A72B39BB4FC0C079F6C4731DA3DA7C', '2022-07-06 12:46:44', '2022-07-06 12:46:44', NULL, '112.198.253.109', 1, 1, 18, 299, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 500, 0, 1, 0, 0, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 16, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(191, 'Ben_tambling', '557C75493D122781404075299710A8194707B7935BFA3BB7B61E9983A6C2BBAD6839058E6CA12E09B702E660C00F3790509AF719CAC3C3D38322EA711C37E5ED', '2022-07-06 13:51:05', '2022-07-06 13:53:48', NULL, '136.158.11.235', 0, 1, 27, 299, 1715.34, -1910.22, 14.952, 707.954, -602.555, 16.188, 345.988, 0, 0, 20500, 500, 0, 1, 0, 3, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657720297, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 138, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(192, 'Seunick_Kzma.', 'D58FCC77F727176B76970FD407AD3631D43E62F4005AF0D0843D992F0A3756C932B2D3C980926CB95F3E86FDC27E9C5E905545256307DB8CEFAD2D9C1F0B9D5E', '2022-07-06 14:27:34', '2022-07-06 14:34:20', NULL, '130.105.154.130', 0, 1, 18, 299, 851.356, -1780.81, 18.534, 674.89, -724.534, 16.039, 346, 0, 0, 500, 500, 0, 1, 0, 0, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 65, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(193, 'Dave_Salazar', '5B9B7E8F9C78277F10F66B6C6525DC68E62342A2957D24A3A10623121BCFB5B9FD53C70A6594F7AC17F0D6360049B1F4E124F770E9964DD8E3469FE073001ACD', '2022-07-06 17:32:19', '2022-07-15 15:37:50', NULL, '182.18.227.25', 0, 1, 20, 113, 207.304, -105.748, 1006.28, 207.84, -109.15, 1005.13, 171.728, 15, 3000048, 200, 500, 0, 1, 0, 3, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 162, 100, 105, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 17999895),
(194, 'Frank_Tenpenny', 'DFB15884CECA9D13A98E5E7ECBC0ABC37A1ED6EDC787F6DDA2343AAA66D4B6E3DF180CBFF8A54A3AD25C5313C30408917E42859D126976D72DFF2FD2BBE87BD7', '2022-07-07 00:38:09', '2022-07-07 00:38:09', NULL, '112.204.231.66', 0, 1, 47, 299, 655.788, -571.479, 17.318, 656.753, -573.196, 16.336, 45.365, 0, 0, 13965, 500, 0, 1, 0, 4, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 920809, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1657759142, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 43, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99, 53, 100, 0, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 18000000),
(195, 'Zamazu_Olympus', '8948BE73477A78B89F1F20EBE12F4C16BDDA97938BF775595B076F8D7807899675DBC4F8A05CD025E47C56ACD13CDB2B044F6CA023DA86AF04F5A89BD8E4E89F', '2022-07-11 05:22:48', '2022-07-11 05:22:48', NULL, '120.29.97.90', 0, 1, 23, 299, 623.044, -606.825, 18.593, 619.322, -606.703, 16.742, 183.301, 0, 0, 18100, 500, 0, 1, 0, 7, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 949169, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1658121798, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 98, 13, 97, 13, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 1657517014),
(196, 'Minang_Neng', '61047B9C09D1BD831D2426A549A88F5E0B0B7DFFF829B545846C1A224BB8F29FA09BFF2F02CF61A17320E7BC9EA9997280BFABCD2B0EF8C66C8F67EFC26A945B', '2022-07-11 06:48:16', '2022-07-11 06:48:16', NULL, '131.226.65.16', 0, 1, 25, 299, -4384.98, 862.2, 987.377, -4389.54, 859.995, 986.38, 90.908, 0, 0, 1600, 500, 0, 1, 0, 6, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 909891, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1658126914, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, -1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 10, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 98, 47, 97, 47, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 17999593),
(197, 'Kawaragi_Senju', 'B0BEA0935B0C61755F308E5994CEF36F9E76C39064F983E8A67CD110E0DB886D73B2D477EAA0698E10A98812CF73BBAD894B21C95045784FD8EDBA73B146401D', '2022-07-11 07:10:17', '2022-07-11 07:15:57', NULL, '115.147.37.2', 0, 2, 20, 12, 297.214, -1695.62, 7.913, 301.86, -1692.97, 6.512, 183.055, 0, 0, 15100, 500, 1694, 1, 0, 10, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 953174, 4, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1658128246, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 'No-one', 'None', 1, -1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 97, 68, 95, 8, 0, 0, 0, 0, '0', '0', 1, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 17999392),
(198, 'Holy_Crus', 'B14B6F031956CA8E71271A4872185B4A2FC030E9D5AABF709F62EB32C5F4991A1272A99B63CEDB6C895FD41D350501E562A248FF6DDD4698669674558B3109DE', '2022-07-11 09:05:56', '2022-07-11 09:10:39', NULL, '110.54.195.185', 0, 2, 99, 12, 683.544, -600.496, 17.176, 683.259, -603.725, 16.185, 174.98, 0, 0, 20500, 500, 0, 1, 0, 4, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1658135183, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99, 94, 98, 34, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 17999726),
(199, 'Zei_Angel', 'ECD799ADC6E6E234171A1A576F6E7115BE30B4B4321A45C1308D60E0C8B67111503065D8553818A59A305F89014ACA2765BFD15A51D48F9CD1D7BEBD8A1647AF', '2022-07-11 12:23:36', '2022-07-11 12:23:36', NULL, '131.226.65.117', 0, 2, 20, 12, 1055.33, -77.633, 1005.39, 1054.58, -79.327, 1003.85, 332.203, 1, 0, 20000, 500, 0, 1, 0, 9, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1658147034, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 98, 142, 96, 22, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 17999498),
(200, 'John_Suarez', '3F53FFBE4F6DE35E16FA827271D54DA9CF2C0D20F62CA470C632034BC8C583D5FB09AD74F8E6ACE64B8BE5AAFD6F473DD4A34C0856A1A4E23BF117FA4C823AF5', '2022-07-12 09:09:28', '2022-07-12 09:20:39', NULL, '120.29.76.242', 0, 1, 20, 299, 539.692, -1956.25, 20.567, 536.327, -1953.64, 18.797, 54.241, 0, 0, 19100, 500, 1591, 1, 0, 15, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, 4, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1658221810, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 96, 151, 93, 31, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 17999129),
(201, 'Monte_Wesley', '9FA04681575FA677238C3D11A5090A807B42563F5656319D3EFDE39175C68C34E088F8793F0945BAE083BE94B2A1D50D291A9403FFE76EB520CBA0CF1FDF7AC5', '2022-07-12 09:38:45', '2022-07-12 09:59:18', NULL, '175.176.3.177', 0, 1, 19, 299, 649.827, -520.619, 17.11, 651.99, -523.353, 16.336, 239.913, 0, 0, 16500, 500, 0, 1, 0, 27, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 907502, 10, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 3, 1658223545, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 91, 55, 87, 115, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 1657617308),
(202, 'Haarper_Deux_Modfedd', '4459DBE0BCB0A5C4A4249AB8A6347AEBF6E45432F65A263998DE13900AF11903363A17B35C7C67252A52E4E463208C89F3F04BEA68CD4D6D9701169BDA95CC55', '2022-07-12 10:51:23', '2022-07-12 10:51:23', NULL, '136.158.82.207', 0, 1, 22, 299, 716.742, -614.798, 16.844, 720.051, -614.404, 15.808, 276.784, 0, 0, 500, 500, 0, 1, 0, 5, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99, 107, 98, 47, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 1657623014),
(203, 'Zoe_Luiz', '3D68825D93CFDADF0014224B38A5336C428CFD529832EB57B41204560CBE7329AB47D8085DAE97BD287B0507CD38CABFB46BE288439BE3860F2D4E1A83038FBB', '2022-07-12 12:37:56', '2022-07-12 12:37:56', NULL, '112.210.228.135', 0, 2, 18, 12, 671.025, -713.446, 16.783, 672.028, -718.909, 16.177, 187.007, 0, 0, 20500, 500, 0, 1, 0, 2, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1658234374, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 139, 99, 19, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 17999861),
(204, 'Kish_V._Broadus', '6123E5DCEE43CC42677FE1235803A948F324CA5BC795E55807B2AA8BDDD048498DE5C61DD350DE1348340D17E09FF0991815D314A0AB64122392C9719A838544', '2022-07-12 12:55:56', '2022-07-12 12:55:56', NULL, '49.145.41.88', 0, 1, 24, 299, 675.492, -530.872, 16.702, 679.19, -535.065, 16.18, 42.519, 0, 0, 20500, 500, 0, 1, 0, 5, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1658235373, 0, 0, 0, 24, 27, 0, 31, 34, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 98, 3, 97, 3, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 17999637),
(205, '_Justine_', '13F5ED6B84B4694FC7AFBF7EFE72B911D292856122127C09C4545DD01F67639818EAE6C3A4BEB9D04D03F79313365D16883F920BE408EB94E0AD79058E5E341B', '2022-07-12 13:00:51', '2022-07-12 13:00:51', NULL, '110.54.134.4', 0, 1, 22, 299, 1676.45, -332.021, 33.35, 1735.32, -344.759, 44.599, 143.964, 0, 0, 20500, 500, 0, 1, 0, 8, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1658235668, 0, 0, 0, 24, 27, 0, 31, 34, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 98, 142, 96, 22, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 1657630589),
(206, 'Ariane_Smith', 'CCE08BBA3F2E3C029CD257104B06D4B075772D5F514CF1B7789506F9A69D53C51464881D2C18445AB290553B302F67A24B1C69E3E737A46215DEAF43517E4960', '2022-07-13 00:26:52', '2022-07-13 00:55:59', NULL, '136.158.24.121', 0, 1, 18, 299, 1479.33, -1770.36, 14.304, 1481.89, -1768.32, 13.763, 343.927, 0, 0, 19301, 500, 0, 1, 0, 23, 0, 7, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 2, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1658276859, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1, 8, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 93, 68, 89, 8, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1658537857, 2, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 17998672),
(207, 'Marco_Costello', 'B3DD21E098359B27FD1FB88EEE9C16FC633D0F0EF27339DCB8798FAA615F06333C08465532E7B684FBE3A053F1D8C1B34D3C45915E38D2E8948D3CA2F509F8A9', '2022-07-13 00:38:08', '2022-07-13 00:38:08', NULL, '110.54.141.174', 0, 1, 18, 299, 1541.5, -1675.67, 14.396, 1544.96, -1675.39, 13.558, 265.888, 0, 0, 19407, 500, 0, 1, 0, 20, 0, 7, 'None', 0, 92.41, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1658277507, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1, 8, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 95, 121, 98, 6, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1658105848, 2, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 1, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 17998771),
(208, 'Vance_Jozo', 'DC715175F189277BD074BB6A7A0FF1C87ECC50D39485A059E47F954089DA208739EDE5E0FE09A401F2FE90EB367E66874A96042AC909F8304CA73D99F81D06E7', '2022-07-13 09:34:09', '2022-07-13 09:34:09', NULL, '103.137.204.194', 0, 1, 13, 299, 643.078, -601.089, 18.29, 639.73, -598.703, 16.336, 54.527, 0, 0, 20500, 500, 0, 1, 0, 8, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1658309660, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 98, 132, 96, 12, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 17999508),
(209, 'Mitsuwagi_B_Yoshisa', 'D55E391C5F12D5D7093D43E2B0108DF3F75C91C0D1533862D07FCFA1C6C0405106596229DACB90E59183523ECCDBFC12C808A0B5A2DDA91683367C233FF1222B', '2022-07-13 15:36:41', '2022-07-13 15:36:41', NULL, '111.125.106.222', 0, 1, 20, 299, 1187.25, -1404.31, 16.869, 1185.94, -1405.33, 13.193, 84.53, 0, 0, 20500, 500, 0, 1, 0, 14, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1658331446, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 96, 121, 93, 1, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 1657726059),
(210, 'Chong_Chinh', '2F9959B230A44678DD2DC29F037BA1159F233AA9AB183CE3A0678EAAE002E5AA6F27F47144A1A4365116D3DB1B58EC47896623B92D85CB2F191705DAF11858B8', '2022-07-14 07:15:52', '2022-07-14 09:46:24', NULL, '111.125.107.46', 0, 1, 18, 299, 842.171, -573.613, 17.541, 840.369, -567.964, 15.782, 99.556, 0, 0, 20500, 500, 0, 1, 0, 3, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1658396794, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99, 24, 99, 84, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 17999796),
(211, 'Ching_Chinc', '2F9959B230A44678DD2DC29F037BA1159F233AA9AB183CE3A0678EAAE002E5AA6F27F47144A1A4365116D3DB1B58EC47896623B92D85CB2F191705DAF11858B8', '2022-07-14 14:59:33', '2022-07-15 01:35:30', NULL, '111.125.107.46', 0, 1, 18, 299, 2018.66, -1429.56, -91.908, 2019.12, -1429.38, 13.908, 297.394, 0, 0, 18078, 500, 0, 1, 0, 29, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 987793, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1658415603, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, -1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 90, 35, 85, 35, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 1657810284),
(212, 'Arthur_Diaz', 'DB7292347AC98B009C3651C4D2C5588ADD3D0F7CC36BD3161B9AC7A810F92FB3618D2B6B450886BE241855456BBF4C88E894212169D4E5D85F6BAA695346B683', '2022-07-14 23:03:03', '2022-07-14 23:03:03', NULL, '112.200.103.26', 0, 1, 14, 299, 687.205, -741.078, 17.716, 686.427, -743.324, 18.345, 257.047, 0, 0, 500, 500, 0, 1, 0, 1, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 74, 100, 74, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 17999926);
INSERT INTO `users` (`uid`, `username`, `password`, `regdate`, `lastlogin`, `login_date`, `ip`, `setup`, `gender`, `age`, `skin`, `camera_x`, `camera_y`, `camera_z`, `pos_x`, `pos_y`, `pos_z`, `pos_a`, `interior`, `world`, `cash`, `bank`, `paycheck`, `level`, `exp`, `minutes`, `hours`, `adminlevel`, `adminname`, `helperlevel`, `health`, `armor`, `upgradepoints`, `warnings`, `injured`, `hospital`, `spawnhealth`, `spawnarmor`, `jailtype`, `jailtime`, `newbiemuted`, `helpmuted`, `admuted`, `livemuted`, `globalmuted`, `reportmuted`, `reportwarns`, `fightstyle`, `locked`, `accent`, `cookies`, `phone`, `job`, `secondjob`, `crimes`, `arrested`, `wantedlevel`, `materials`, `pot`, `crack`, `meth`, `painkillers`, `seeds`, `ephedrine`, `muriaticacid`, `bakingsoda`, `cigars`, `walkietalkie`, `channel`, `rentinghouse`, `spraycans`, `boombox`, `mp3player`, `phonebook`, `fishingrod`, `fishingbait`, `fishweight`, `components`, `courierskill`, `fishingskill`, `guardskill`, `weaponskill`, `mechanicskill`, `lawyerskill`, `smugglerskill`, `toggletextdraws`, `toggleooc`, `togglephone`, `toggleadmin`, `togglehelper`, `togglenewbie`, `togglewt`, `toggleradio`, `togglevip`, `togglemusic`, `togglefaction`, `togglegang`, `togglenews`, `toggleglobal`, `togglecam`, `carlicense`, `pilotlicense`, `boatlicense`, `facemask`, `fmtime`, `vippackage`, `viptime`, `vipcooldown`, `weapon_0`, `weapon_1`, `weapon_2`, `weapon_3`, `weapon_4`, `weapon_5`, `weapon_6`, `weapon_7`, `weapon_8`, `weapon_9`, `weapon_10`, `weapon_11`, `weapon_12`, `ammo_0`, `ammo_1`, `ammo_2`, `ammo_3`, `ammo_4`, `ammo_5`, `ammo_6`, `ammo_7`, `ammo_8`, `ammo_9`, `ammo_10`, `ammo_11`, `ammo_12`, `faction`, `gang`, `factionrank`, `gangrank`, `division`, `contracted`, `contractby`, `bombs`, `completedhits`, `failedhits`, `reports`, `helprequests`, `speedometer`, `factionmod`, `gangmod`, `banappealer`, `potplanted`, `pottime`, `potgrams`, `pot_x`, `pot_y`, `pot_z`, `pot_a`, `inventoryupgrade`, `addictupgrade`, `traderupgrade`, `assetupgrade`, `laborupgrade`, `pistolammo`, `shotgunammo`, `smgammo`, `arammo`, `rifleammo`, `hpammo`, `poisonammo`, `fmjammo`, `ammotype`, `ammoweapon`, `dmwarnings`, `weaponrestricted`, `referral_uid`, `refercount`, `watch`, `gps`, `prisonedby`, `prisonreason`, `togglehud`, `clothes`, `showturfs`, `showlands`, `watchon`, `gpson`, `doublexp`, `couriercooldown`, `pizzacooldown`, `detectivecooldown`, `duty`, `bandana`, `detectiveskill`, `gascan`, `refunded`, `backpack`, `bpcash`, `bpmaterials`, `bppot`, `bpcrack`, `bpmeth`, `bppainkillers`, `bpweapon_0`, `bpweapon_1`, `bpweapon_2`, `bpweapon_3`, `bpweapon_4`, `bpweapon_5`, `bpweapon_6`, `bpweapon_7`, `bpweapon_8`, `bpweapon_9`, `bpweapon_10`, `bpweapon_11`, `bpweapon_12`, `bpweapon_13`, `bpweapon_14`, `bphpammo`, `bppoisonammo`, `bpfmjammo`, `formeradmin`, `deathcooldown`, `hunger`, `hungertimer`, `thirst`, `thirsttimer`, `totalpatients`, `totalfires`, `rarecooldown`, `vipdlcooldown`, `customtitle`, `customcolor`, `mask`, `diamonds`, `ecoin`, `blindfold`, `rope`, `insurance`, `passport`, `passportname`, `passportlevel`, `passportskin`, `passportphone`, `marriedto`, `newbies`, `chatanim`, `Lottery`, `LotteryB`, `flashlight`, `candy`, `gunlicense`, `thiefskill`, `thiefcooldown`, `cocainecooldown`, `teacher`, `course`, `citizen`, `repairkit`, `firstaid`, `nationalid`, `dirtycash`, `comserv`, `groupleader`, `pgroup`, `task1`, `task2`, `task3`, `task4`, `task5`, `claimed1`, `claimed2`, `claimed3`, `claimed4`, `claimed5`, `loadexpire`, `loads`, `bindslot1`, `bindslot2`, `bindslot3`, `bindslot4`, `bindslot5`, `bindslot6`, `bindslot7`, `bindslot8`, `Voucher0`, `Voucher1`, `Voucher2`, `Voucher3`, `Voucher4`, `Voucher5`, `voicechat`, `discordtag`, `discordname`, `parts`, `vest`, `medkit`, `brokenleg`, `bedtype`, `bedtime`, `lastgift`, `lastgifttimer`) VALUES
(213, 'New_Player', '7FD950FB83EA39074293E16F138918ACDA39BC5104A71B4B4AC26BF3A59205C377F32810E5AF006DA4F6A2F4E2C35547CEC8594E80B08F732A378B76F3A0DA08', '2022-07-15 02:19:47', '2022-07-15 10:44:07', NULL, '111.125.107.46', 0, 2, 18, 0, 724.385, -582.644, 16.729, 724.941, -586.081, 16.188, 117.389, 0, 0, 15431, 504, 0, 1, 1, 18, 1, 7, 'None', 0, 100, 100, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 903475, 10, -1, 0, 0, 0, 0, 0, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1658456414, 0, 0, 0, 24, 27, 0, 31, 34, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'New_Player', '!', 1, -1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 96, 142, 94, 29, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1658723017, 2, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 17994440),
(214, 'Shawn_Z._McKington', '76F6CAC806575037FCDA1830F66173FF19B1A874EAF4752579E7222C8A7E2E70DBF6682DA21DDE1B95203885AE469B641342F28CB1409CC2C06817C793817D68', '2022-07-15 10:45:38', '2022-07-15 11:38:06', NULL, '61.9.110.59', 0, 1, 19, 299, 542.398, -1288.22, 18.452, 543, -1291.56, 17.242, 175.958, 0, 0, 20500, 500, 0, 1, 0, 28, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1658486805, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 91, 76, 86, 16, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 1657880399),
(215, 'Ixha_Ong', '27E0FFC23251E58E668081B81A93FF99A47330D9988685089B0FC9BAFFDDBF12122082A462BC3F6A764324B5848410188BB50D6B5920EAF26C067DACCD35A58A', '2022-07-16 02:34:42', '2022-07-16 02:40:10', NULL, '112.200.3.235', 0, 1, 20, 299, 850.717, -594.727, 19.468, 852.8, -597.449, 18.421, 188.543, 0, 0, 500, 500, 0, 1, 0, 5, 0, 7, 'None', 0, 54, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99, 130, 98, 70, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 1, 0, 0, 0, 17999690),
(216, 'Icon_Inoc', '3E1ED33F6D05BB9D74A4CCA471C6AB0582E276FF0CF98B81BCED192267F292AD0288AC03BBB6B16A380593D470D37E07ADB4D6BB5634C73D5EF81F3ED30BC7AF', '2022-07-16 03:06:34', '2022-07-16 03:09:20', NULL, '49.148.38.175', 0, 1, 25, 299, 1293.7, -930.399, 42.985, 1288.43, -931.882, 40.652, 25.855, 0, 0, 451, 500, 0, 1, 0, 10, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 97, 67, 95, 7, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 1657940778),
(217, 'Jake_Delatorre', '2F2BEA24BCC3DA17D263BE1C7AC46751EB1284CD19E00888468C7B64E1F87635ED4E62A05AE1246471140CC64765A5CCDFA11351AA5EB7AA2F9DEC9C73555AB8', '2022-07-16 07:41:21', '2022-07-16 07:41:21', NULL, '112.206.241.177', 0, 1, 20, 299, 316.287, -170.484, 1000.33, 316.287, -169.647, 999.601, 0, 6, 3000059, 20500, 500, 0, 1, 0, 2, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1658562102, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 172, 99, 52, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 17999828),
(218, 'Don_Santos', '7F14F90A03F83D467A9F688BE1E86464B27AE3B9F7D2037F23F6E53DEB68E71467770BA546AEBEC277F88A0C108FAA578FF01D70F9E5DD9E49DD8420C0057EB2', '2022-07-16 09:13:14', '2022-07-16 09:13:14', NULL, '112.205.52.236', 0, 1, 15, 299, 674.049, -619.493, 17.05, 674.499, -616.052, 16.336, 233.145, 0, 0, 500, 500, 0, 1, 0, 2, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 124, 99, 4, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 17999876),
(219, 'Gian_Maneys', 'CEDA8913C6E902F0ECF544C2E7F660902D1097EEA549E76824C753DB11FEBC506CB323711D071E5859457F629F8CA1C65AC2E7CBBD93D72FC30903A61162E200', '2022-07-16 10:12:17', '2022-07-16 10:12:17', NULL, '112.201.69.171', 0, 1, 21, 250, 718.414, -487.566, 17.489, 718.238, -484.142, 16.188, 159.814, 0, 0, 200, 500, 0, 1, 0, 3, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 163, 99, 43, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 1657966243),
(220, 'Lexi_Cuevas', '952FFBDFE6548F539477808854AD5167AFAC2500EA1D5B4DD7BEFBD336BD0C25707F40B41D7A45AE58052787F8C5AA09C79A7E1117CE2DF9964FBB89D46C938C', '2022-07-16 10:27:48', '2022-07-16 10:27:48', NULL, '49.145.127.217', 1, 1, 18, 299, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 500, 0, 1, 0, 1, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 11, 100, 11, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 17999989),
(221, 'Jerry_Villaruel', '237329C2C6669CB3932895D6A14FEE62418BEBCB889224DF4FB107563E039668C21668B3600C0A7B01945F06DF08234B554F05C9AB683E19D3105F8E60FA035E', '2022-07-17 08:40:14', '2022-07-18 06:28:33', NULL, '209.35.170.222', 0, 1, 30, 102, 1165.45, -1506.63, 17.319, 1166.26, -1505.87, 15.795, 107.677, 0, 0, 13500, 500, 0, 1, 0, 82, 0, 0, 'None', 0, 78.68, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 919546, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1658652060, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 79, 3, 12, 0, 0, 0, 0, '0', '0', 1, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 1658042471),
(222, 'Way_Jie', '7A1DEC0A955152D4B84DD3CA8476665898C44F1E3525A9959BD5660BD9F98094FF899E1EF8B08255FF9CE0A7A79A13F68D8D60030338502A3F407EFBC1740EDB', '2022-07-17 08:41:50', '2022-07-17 12:33:51', NULL, '122.2.43.186', 0, 1, 21, 299, 2424.92, 1220.69, 14.525, 2428.76, 1213.3, 10.237, 116.64, 0, 0, 19000, 500, 0, 1, 0, 49, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 901534, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1658652157, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 84, 141, 75, 21, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 1658044393),
(223, 'Yoshi_Racu', 'F9AD2013FC7A693B227E443F66A6BD2D57B1A09EC52780F06B9F0D167C67EE5DC216CF32777FDBFA2BED4CB86F72D7E5F6ABCDA4D03B48EB584836B8F3FB724E', '2022-07-17 11:55:53', '2022-07-17 11:55:53', NULL, '49.144.100.82', 0, 1, 18, 299, 1144.69, -1439.97, 17.13, 932.072, -1148.92, 23.165, 246.198, 0, 0, 20500, 500, 0, 1, 0, 7, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1658663798, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 98, 150, 96, 30, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 17999490),
(224, 'Neo_El_Premo', 'CCE08BBA3F2E3C029CD257104B06D4B075772D5F514CF1B7789506F9A69D53C51464881D2C18445AB290553B302F67A24B1C69E3E737A46215DEAF43517E4960', '2022-07-18 09:39:15', '2022-07-18 09:39:15', NULL, '49.150.33.218', 1, 1, 18, 299, 133.63, -68.671, 2.893, 144.222, -83.812, 1.578, 212.95, 0, 0, 500, 500, 0, 1, 0, 1, 0, 0, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 37, 100, 37, 0, 0, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1290000, 0, 'None', 'None', 'None', 'None', 'None', 'None', 'None', 'None', 0, 0, 0, 0, 0, 0, NULL, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 17999963);

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` int(10) NOT NULL,
  `ownerid` int(10) DEFAULT 0,
  `owner` varchar(24) DEFAULT 'Nobody',
  `modelid` smallint(3) DEFAULT 0,
  `price` int(10) DEFAULT 0,
  `tickets` int(10) DEFAULT 0,
  `locked` tinyint(1) DEFAULT 0,
  `dlock` tinyint(1) DEFAULT 0,
  `dlocked` tinyint(1) DEFAULT 0,
  `plate` varchar(32) DEFAULT 'None',
  `fuel` tinyint(3) DEFAULT 100,
  `health` float DEFAULT 1000,
  `pos_x` float DEFAULT 0,
  `pos_y` float DEFAULT 0,
  `pos_z` float DEFAULT 0,
  `pos_a` float DEFAULT 0,
  `color1` smallint(3) DEFAULT 0,
  `color2` smallint(3) DEFAULT 0,
  `paintjob` smallint(3) DEFAULT -1,
  `registered` int(11) DEFAULT NULL,
  `interior` tinyint(2) DEFAULT 0,
  `world` int(10) DEFAULT 0,
  `neon` smallint(5) DEFAULT 0,
  `neonenabled` tinyint(1) DEFAULT 0,
  `alarm` int(11) NOT NULL DEFAULT 0,
  `trunk` tinyint(1) DEFAULT 0,
  `mod_1` smallint(4) DEFAULT 0,
  `mod_2` smallint(4) DEFAULT 0,
  `mod_3` smallint(4) DEFAULT 0,
  `mod_4` smallint(4) DEFAULT 0,
  `mod_5` smallint(4) DEFAULT 0,
  `mod_6` smallint(4) DEFAULT 0,
  `mod_7` smallint(4) DEFAULT 0,
  `mod_8` smallint(4) DEFAULT 0,
  `mod_9` smallint(4) DEFAULT 0,
  `mod_10` smallint(4) DEFAULT 0,
  `mod_11` smallint(4) DEFAULT 0,
  `mod_12` smallint(4) DEFAULT 0,
  `mod_13` smallint(4) DEFAULT 0,
  `mod_14` smallint(4) DEFAULT 0,
  `cash` int(10) DEFAULT 0,
  `materials` int(10) DEFAULT 0,
  `pot` int(10) DEFAULT 0,
  `crack` int(10) DEFAULT 0,
  `meth` int(10) DEFAULT 0,
  `painkillers` int(10) DEFAULT 0,
  `weapon_1` tinyint(2) DEFAULT 0,
  `weapon_2` tinyint(2) DEFAULT 0,
  `weapon_3` tinyint(2) DEFAULT 0,
  `ammo_1` smallint(5) DEFAULT 0,
  `ammo_2` smallint(5) DEFAULT 0,
  `ammo_3` smallint(5) DEFAULT 0,
  `gangid` tinyint(2) DEFAULT -1,
  `factiontype` tinyint(2) DEFAULT 0,
  `job` tinyint(2) DEFAULT -1,
  `respawndelay` int(10) DEFAULT 0,
  `impounded` tinyint(1) NOT NULL DEFAULT 0,
  `pistolammo` smallint(5) DEFAULT 0,
  `shotgunammo` smallint(5) DEFAULT 0,
  `smgammo` smallint(5) DEFAULT 0,
  `arammo` smallint(5) DEFAULT 0,
  `rifleammo` smallint(5) DEFAULT 0,
  `hpammo` smallint(5) DEFAULT 0,
  `poisonammo` smallint(5) DEFAULT 0,
  `fmjammo` smallint(5) DEFAULT 0,
  `broken` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`id`, `ownerid`, `owner`, `modelid`, `price`, `tickets`, `locked`, `dlock`, `dlocked`, `plate`, `fuel`, `health`, `pos_x`, `pos_y`, `pos_z`, `pos_a`, `color1`, `color2`, `paintjob`, `registered`, `interior`, `world`, `neon`, `neonenabled`, `alarm`, `trunk`, `mod_1`, `mod_2`, `mod_3`, `mod_4`, `mod_5`, `mod_6`, `mod_7`, `mod_8`, `mod_9`, `mod_10`, `mod_11`, `mod_12`, `mod_13`, `mod_14`, `cash`, `materials`, `pot`, `crack`, `meth`, `painkillers`, `weapon_1`, `weapon_2`, `weapon_3`, `ammo_1`, `ammo_2`, `ammo_3`, `gangid`, `factiontype`, `job`, `respawndelay`, `impounded`, `pistolammo`, `shotgunammo`, `smgammo`, `arammo`, `rifleammo`, `hpammo`, `poisonammo`, `fmjammo`, `broken`) VALUES
(1, 1, 'Kovalchin_Bolkov', 411, 0, 0, 0, 0, 0, 'None', 82, 1000, 980.961, -2145.45, 12.927, 168.797, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 15, 'Lyell_Frost', 522, 0, 5215, 0, 0, 0, 'None', 100, 686.579, -97.409, -1183.37, 1.625, 16.917, 0, 3, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 3, 'Herbo_Lyve', 462, 0, 0, 0, 0, 0, 'None', 90, 990.045, 1133.5, -1408.91, 13.068, 87.176, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 4, 'Tobias_Harris', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 2240.62, -1260.8, 23.937, 273.45, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 1, 'Kovalchin_Bolkov', 562, 0, 0, 0, 0, 0, 'None', 0, 1000, 975.952, -2130.08, 12.898, 239.519, 0, 0, 1, NULL, 0, 0, 18650, 1, 0, 0, 1147, 0, 1038, 1040, 0, 1010, 0, 1080, 0, 1087, 1171, 1149, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 5, 'Dom_Toretto', 462, 0, 0, 0, 0, 0, 'None', 90, 969.779, 2246.08, -1260.49, 23.945, 280.741, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7, 6, 'Gab_Velmarco', 462, 0, 0, 1, 0, 0, 'None', 98, 986.529, 836.645, -2147.62, 1.964, 180.037, 3, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8, 7, 'Jace_Wayland', 462, 0, 0, 0, 0, 0, 'None', 91, 931, 631.847, -608.773, 15.93, 183.651, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9, 8, 'Wibbie_Xen', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 2240.62, -1260.8, 23.937, 273.45, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10, 6, 'Gab_Velmarco', 541, 0, 0, 1, 0, 0, 'None', 87, 513.328, 1214.82, -1334.92, 13.214, 357.539, 1, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1009, 0, 1080, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11, 6, 'Gab_Velmarco', 550, 0, 0, 1, 0, 0, 'None', 91, 669.878, 875.808, -1268.62, 14.593, 177.546, 1, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 1003, 1004, 1006, 0, 0, 1009, 1018, 0, 0, 1087, 0, 0, 1142, 1143, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12, 10, 'Akira_Mondragon', 462, 0, 0, 0, 0, 0, 'None', 99, 992.648, 1211.53, -1337.87, 13.158, 351.171, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(13, 11, 'Don_Chip', 462, 0, 0, 1, 0, 0, 'None', 98, 963.53, 1283.41, -1649.84, 13.144, 78.178, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14, 13, 'Amber_Leonidas', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 2253.14, -1261.4, 23.958, 267.538, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(15, 14, 'John_David', 462, 0, 0, 1, 0, 0, 'None', 99, 998.203, 1096.31, -1378.58, 13.376, 89.094, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(16, 16, 'Uno_E_Guirero', 462, 0, 0, 1, 0, 0, 'None', 100, 1000, 761.654, -550.533, 16.525, 177.895, 0, 0, -1, NULL, 0, 0, 18650, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17, 15, 'Lyell_Frost', 462, 0, 0, 0, 0, 0, 'None', 90, 934.605, 541.955, -1293.15, 16.837, 156.255, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(18, 18, 'James_Andurson', 462, 0, 0, 0, 0, 0, 'None', 88, 948.24, 2240.62, -1260.8, 23.942, 273.45, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(20, 21, 'Jinggoy_Estrada', 462, 0, 0, 0, 0, 0, 'None', 99, 982.854, 1128.49, -1387.97, 13.295, 116.578, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(21, 23, 'Datu_Nhur', 462, 0, 0, 0, 0, 0, 'None', 96, 1000, 1124.19, -1388.99, 13.28, 75.759, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(22, 25, 'Rojelo_Erin', 462, 0, 0, 1, 0, 0, 'None', 94, 975.141, 1172.92, -1327.62, 14.952, 278.289, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(23, 27, 'Dinh_Hung', 462, 0, 0, 0, 0, 0, 'None', 94, 988.432, 2216.28, -2661.78, 13.153, 254.426, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(24, 28, 'Okata_Yao', 462, 0, 0, 0, 0, 0, 'None', 98, 1000, 1226.58, -1647.65, 12.252, 358.567, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(25, 29, 'Roberto_Locco', 462, 0, 0, 1, 0, 0, 'None', 99, 1000, 2273.6, -1362.24, 23.828, 174.428, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(26, 30, 'andrei_santos', 462, 0, 0, 1, 0, 0, 'None', 100, 958.473, 1218.71, -1363.42, 13.155, 100.842, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27, 31, 'Eve_Lennox', 462, 0, 0, 0, 0, 0, 'None', 72, 969.089, 1222.29, -1336.74, 13.149, 266.98, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(28, 32, 'Senichi_Oda', 462, 0, 0, 0, 0, 0, 'None', 91, 965.149, -378.388, -1424, 25.323, 157.253, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(29, 34, 'Julian_Allain', 462, 0, 0, 0, 0, 0, 'None', 99, 1000, 1219.85, -1338.09, 13.152, 262.38, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(30, 35, 'Max_Lopez', 462, 0, 0, 1, 0, 0, 'None', 91, 1000, 2240.62, -1260.8, 23.937, 273.45, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(31, 36, 'Oliver_Mendeleev', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 2240.62, -1260.8, 23.937, 273.45, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(32, 37, 'Yg_Yowgin', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 2271.44, -1242.13, 23.806, 203.661, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(33, 38, 'Kratos_Bolkov', 462, 0, 0, 0, 0, 0, 'None', 100, 977.874, 2260.08, -1260.91, 23.974, 180.04, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(34, 33, 'Don_Marko', 462, 0, 0, 0, 0, 0, 'None', 52, 991.344, 940.529, -1407.56, 12.865, 261.363, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(35, 0, 'Nobody', 596, 0, 0, 0, 0, 0, 'None', 100, 1000, 1601.16, -1704.26, 5.612, 89.475, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36, 0, 'Nobody', 596, 0, 0, 0, 0, 0, 'None', 100, 1000, 1601.21, -1700.24, 5.612, 89.669, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(37, 0, 'Nobody', 523, 0, 0, 0, 0, 0, 'None', 100, 1000, 1595.61, -1710.39, 5.456, 178.145, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(38, 0, 'Nobody', 596, 0, 0, 0, 0, 0, 'None', 100, 1000, 1601.2, -1695.89, 5.612, 90.565, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(39, 0, 'Nobody', 596, 0, 0, 0, 0, 0, 'None', 100, 1000, 1601.14, -1692, 5.612, 90.411, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(40, 0, 'Nobody', 523, 0, 0, 0, 0, 0, 'None', 100, 1000, 1591.56, -1710.65, 5.463, 178.625, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(41, 0, 'Nobody', 523, 0, 0, 0, 0, 0, 'None', 100, 1000, 1587.1, -1710.86, 5.457, 181.816, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(42, 0, 'Nobody', 523, 0, 0, 0, 0, 0, 'None', 100, 1000, 1583.57, -1711, 5.456, 177.851, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(43, 0, 'Nobody', 528, 0, 0, 0, 0, 0, 'None', 100, 1000, 1574.44, -1710.96, 5.934, 179.493, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(44, 0, 'Nobody', 528, 0, 0, 0, 0, 0, 'None', 100, 1000, 1570.21, -1710.93, 5.935, 181.14, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45, 0, 'Nobody', 599, 0, 0, 0, 0, 0, 'None', 100, 1000, 1565.52, -1710.96, 6.079, 179.214, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(46, 0, 'Nobody', 599, 0, 0, 0, 0, 0, 'None', 100, 1000, 1561.14, -1710.9, 6.08, 179.271, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(47, 0, 'Nobody', 525, 0, 0, 0, 0, 0, 'None', 100, 1000, 865.572, -1208.3, 16.85, 268.486, 229, 229, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 7, -1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(48, 0, 'Nobody', 525, 0, 0, 0, 0, 0, 'None', 100, 1000, 865.656, -1203.94, 16.856, 267.418, 229, 229, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 7, -1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(49, 0, 'Nobody', 525, 0, 0, 0, 0, 0, 'None', 100, 1000, 865.435, -1212.28, 16.854, 268.598, 229, 229, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 7, -1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(50, 0, 'Nobody', 461, 0, 0, 0, 0, 0, 'None', 100, 1000, 866.526, -1200.68, 16.563, 270.644, 229, 229, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 7, -1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(51, 0, 'Nobody', 461, 0, 0, 0, 0, 0, 'None', 100, 1000, 866.373, -1198.72, 16.558, 271.797, 229, 229, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 7, -1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(52, 0, 'Nobody', 461, 0, 0, 0, 0, 0, 'None', 100, 1000, 866.13, -1196.75, 16.561, 274.063, 229, 229, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 7, -1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(53, 0, 'Nobody', 487, 0, 0, 0, 0, 0, 'None', 100, 1000, 865.041, -1218.62, 17.154, 272.209, 229, 1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 7, -1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(54, 41, 'Arns_Faulkerson', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 2239.58, -1273.09, 25.367, 178.587, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(55, 40, 'Choi_Nha_Ghara', 462, 0, 0, 0, 0, 0, 'None', 98, 978.868, 1135.43, -1409.9, 13.074, 90.324, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56, 0, 'Nobody', 497, 0, 0, 0, 0, 0, 'None', 100, 1000, 1598.73, -1615.83, 13.625, 91.989, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(57, 0, 'Nobody', 497, 0, 0, 0, 0, 0, 'None', 100, 1000, 1599.26, -1626.19, 13.631, 92.769, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(58, 0, 'Nobody', 596, 0, 0, 0, 0, 0, 'None', 100, 1000, 1601.13, -1687.83, 5.612, 89.696, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(59, 0, 'Nobody', 523, 0, 0, 0, 0, 0, 'None', 100, 1000, 1578.7, -1711.32, 5.46, 179.588, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(60, 42, 'Moly_Dela_Cruz', 462, 0, 0, 0, 0, 0, 'None', 98, 983.813, 854.748, -2146.19, 1.846, 63.783, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(61, 0, 'Nobody', 416, 0, 0, 0, 0, 0, 'None', 100, 1000, 1178.08, -1338.1, 14.021, 271.274, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 2, -1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(62, 0, 'Nobody', 416, 0, 0, 0, 0, 0, 'None', 100, 1000, 1177.39, -1308.65, 14.007, 269.462, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 2, -1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(63, 0, 'Nobody', 416, 0, 0, 0, 0, 0, 'None', 100, 1000, 1133.32, -1331.56, 13.764, 270.957, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 2, -1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(64, 0, 'Nobody', 416, 0, 0, 0, 0, 0, 'None', 100, 1000, 1133.29, -1327.58, 13.77, 269.958, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 2, -1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(65, 0, 'Nobody', 407, 0, 0, 0, 0, 0, 'None', 100, 1000, 1132.88, -1322.88, 13.938, 270.099, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 2, -1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(66, 0, 'Nobody', 407, 0, 0, 0, 0, 0, 'None', 100, 1000, 1132.7, -1318.43, 13.914, 270.307, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 2, -1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(67, 0, 'Nobody', 490, 0, 0, 0, 0, 0, 'None', 100, 1000, 282.592, -1531.41, 24.721, 237.222, 255, 255, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 6, -1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(68, 0, 'Nobody', 490, 0, 0, 0, 0, 0, 'None', 100, 1000, 285.384, -1526.94, 24.722, 236.171, 255, 255, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 6, -1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(69, 0, 'Nobody', 490, 0, 0, 0, 0, 0, 'None', 100, 1000, 288.247, -1522.36, 24.722, 235.511, 255, 255, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 6, -1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(70, 0, 'Nobody', 490, 0, 0, 0, 0, 0, 'None', 100, 1000, 279.316, -1536.13, 24.722, 235.508, 255, 255, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 6, -1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(71, 0, 'Nobody', 490, 0, 0, 0, 0, 0, 'None', 100, 1000, 291.178, -1517.75, 24.721, 237.562, 255, 255, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 6, -1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(72, 44, 'Jeremy_Myller', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 2263.63, -1259.55, 23.977, 278.951, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(73, 15, 'Lyell', 411, 0, 0, 0, 0, 0, 'None', 95, 1000, 1132.16, -1388.23, 13.324, 278.923, 3, 3, -1, NULL, 0, 0, 18647, 1, 0, 0, 0, 0, 0, 0, 0, 1010, 0, 0, 0, 1087, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(74, 15, 'Lyell', 541, 0, 0, 0, 0, 0, 'None', 95, 963.157, -186.752, -1245.68, 10.843, 250.478, 126, 0, -1, NULL, 0, 0, 18651, 1, 0, 0, 0, 0, 0, 0, 0, 1010, 0, 1080, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(75, 15, 'Lyell', 451, 0, 0, 0, 0, 0, 'None', 98, 998.888, 1122.64, -1391.83, 13.151, 266.202, 1, 1, -1, NULL, 0, 0, 18651, 1, 0, 0, 0, 0, 0, 0, 0, 1010, 0, 1080, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(76, 15, 'Lyell', 559, 0, 0, 0, 0, 0, 'None', 96, 1000, -185.601, -1243.34, 10.762, 257.497, 0, 0, 2, NULL, 0, 0, 0, 0, 0, 0, 1162, 0, 0, 1071, 0, 0, 1065, 1080, 0, 0, 1160, 1159, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(77, 0, 'Nobody', 433, 0, 0, 0, 0, 0, 'None', 100, 1000, -480.149, -487.256, 25.96, 180.191, 119, 119, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 9, -1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(78, 0, 'Nobody', 433, 0, 0, 0, 0, 0, 'None', 100, 1000, -485.181, -487.228, 25.96, 179.683, 119, 119, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 9, -1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79, 15, 'Lyell', 558, 0, 0, 0, 0, 0, 'None', 98, 980.224, -185.094, -1240.5, 10.659, 251.401, 0, 0, 1, NULL, 0, 0, 18651, 1, 0, 0, 1164, 0, 1088, 1094, 0, 0, 1089, 1080, 0, 0, 1166, 1168, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(80, 42, 'Moly_Dela_Cruz', 560, 0, 800, 0, 0, 0, 'None', 75, 517.029, 1198.48, -1486.19, 13.18, 348.777, 3, 3, 1, NULL, 0, 0, 18647, 1, 0, 0, 1139, 0, 1032, 1030, 0, 1010, 1028, 1080, 0, 1087, 1170, 1140, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(81, 0, 'Nobody', 433, 0, 0, 0, 0, 0, 'None', 100, 1000, -490.341, -487.108, 25.96, 180.215, 119, 119, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 9, -1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(82, 0, 'Nobody', 433, 0, 0, 0, 0, 0, 'None', 100, 1000, -495.365, -487.117, 25.96, 180, 119, 119, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 9, -1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(83, 15, 'Lyell', 411, 0, 0, 0, 0, 0, 'None', 95, 705.093, 1126.51, -1386.74, 13.46, 266.907, 6, 6, -1, NULL, 0, 0, 18650, 1, 0, 0, 0, 0, 0, 0, 0, 1010, 0, 1080, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(84, 0, 'Nobody', 461, 0, 0, 0, 0, 0, 'None', 100, 1000, -499.365, -485.572, 25.11, 177.426, 119, 119, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 9, -1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(85, 0, 'Nobody', 461, 0, 0, 0, 0, 0, 'None', 100, 1000, -501.69, -485.668, 25.105, 180.701, 119, 119, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 9, -1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(86, 0, 'Nobody', 461, 0, 0, 0, 0, 0, 'None', 100, 1000, -501.725, -489.555, 25.11, 179.972, 119, 119, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 9, -1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(87, 0, 'Nobody', 461, 0, 0, 0, 0, 0, 'None', 100, 1000, -499.404, -489.727, 25.109, 182.603, 119, 119, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 9, -1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(88, 0, 'Nobody', 487, 0, 0, 0, 0, 0, 'None', 100, 1000, -472.771, -488.075, 25.701, 174.871, 119, 119, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 9, -1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(89, 33, 'Don_Marko', 560, 0, 0, 0, 0, 0, 'None', 68, 673.161, 429.135, -1323.61, 14.582, 121.732, 0, 0, 1, NULL, 0, 0, 18650, 1, 0, 3, 1138, 0, 1032, 1030, 0, 1010, 1028, 1080, 0, 0, 1169, 1141, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(90, 33, 'Don_Marko', 451, 0, 0, 0, 0, 0, 'None', 98, 972.224, 293.227, -1337.2, 53.146, 219.507, 6, 6, -1, NULL, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 1010, 0, 1080, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(91, 33, 'Don_Marko', 411, 0, 0, 0, 0, 0, 'None', 100, 1000, 414.583, -1330.9, 14.494, 282.632, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(92, 33, 'Don_Marko', 506, 0, 0, 0, 0, 0, 'None', 100, 1000, 423.108, -1331.28, 14.536, 153.193, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(93, 33, 'Don_Marko', 560, 0, 1800, 0, 0, 0, 'None', 70, 461.021, 715.505, -479.233, 15.939, 91.306, 6, 6, -1, NULL, 0, 0, 0, 0, 0, 3, 1138, 0, 1032, 1027, 0, 1010, 1028, 1080, 0, 0, 1169, 1141, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(94, 33, 'Don_Marko', 541, 0, 0, 0, 0, 0, 'None', 98, 910.828, 424.049, -1329.98, 14.464, 120.718, 3, 3, -1, NULL, 0, 0, 18647, 1, 0, 3, 0, 0, 0, 0, 0, 1010, 0, 1075, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(97, 45, 'Dan_Tsukino', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 2235.21, -1258.1, 23.526, 270.391, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(98, 0, 'Nobody', 582, 0, 0, 0, 0, 0, 'None', 100, 1000, 758.844, -1333.75, 13.589, 180, 135, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 3, -1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(99, 0, 'Nobody', 582, 0, 0, 0, 0, 0, 'None', 100, 1000, 753.583, -1333.66, 13.592, 179.803, 135, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 3, -1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(100, 0, 'Nobody', 582, 0, 0, 0, 0, 0, 'None', 100, 1000, 749.662, -1333.69, 13.596, 180.91, 135, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 3, -1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(101, 0, 'Nobody', 582, 0, 0, 0, 0, 0, 'None', 100, 1000, 745.6, -1333.86, 13.589, 180.548, 135, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 3, -1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(102, 0, 'Nobody', 461, 0, 0, 0, 0, 0, 'None', 100, 1000, 762.678, -1331.44, 13.125, 179.847, 135, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 3, -1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(103, 0, 'Nobody', 461, 0, 0, 0, 0, 0, 'None', 100, 1000, 764.757, -1331.49, 13.123, 181.983, 135, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 3, -1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(104, 46, 'Steve_Frost', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 2266.85, -1259.82, 23.977, 245.627, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(105, 0, 'Nobody', 461, 0, 0, 0, 0, 0, 'None', 100, 1000, 767.03, -1331.63, 13.128, 178.796, 135, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 3, -1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(106, 0, 'Nobody', 461, 0, 0, 0, 0, 0, 'None', 100, 1000, 769.084, -1331.65, 13.126, 180.604, 135, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 3, -1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(107, 0, 'Nobody', 487, 0, 0, 0, 0, 0, 'None', 100, 1000, 744.817, -1370.11, 25.87, 0.619, 135, 135, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 3, -1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(108, 15, 'Lyell', 560, 7000000, 0, 0, 0, 0, 'None', 87, 649.635, 649.83, -549.834, 15.934, 359.797, 0, 0, 2, NULL, 0, 0, 18651, 1, 0, 0, 1138, 0, 0, 1027, 0, 1010, 1028, 1080, 0, 1087, 1169, 1141, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(109, 48, 'Drey_Winchester', 462, 0, 0, 0, 0, 0, 'None', 86, 1000, 1120.76, -1388.52, 13.24, 359.136, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(110, 12, 'JneL_Badger', 462, 0, 0, 0, 0, 0, 'None', 99, 980.423, 1130.35, -1388.47, 13.342, 279.848, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(111, 50, 'Kelly_laz', 462, 0, 0, 0, 0, 0, 'None', 87, 992.876, 2346.86, -1162.52, 26.893, 255.529, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(112, 51, 'Ken_Escobar', 462, 0, 0, 0, 0, 0, 'None', 89, 931.348, 435.294, -858.254, 27.643, 30.026, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(113, 25, 'Rojelo_Erin', 521, 300000, 0, 1, 0, 0, 'None', 95, 961.815, 1088.49, -1364.74, 13.345, 347.671, 2, 2, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(114, 53, 'Carl_Lorce', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 2265.39, -1261.91, 23.977, 259.977, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(115, 20, 'Cidss_Tsukino', 560, 0, 0, 0, 0, 0, 'None', 92, 1000, 1143.9, -1388.26, 13.487, 270.458, 0, 0, 1, NULL, 0, 0, 18647, 1, 0, 0, 1138, 0, 1033, 1027, 0, 1010, 0, 1078, 0, 1087, 1169, 1141, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(117, 55, 'Devon_Miles', 462, 0, 0, 0, 0, 0, 'None', 91, 874.015, 1125.28, -1385.18, 13.347, 291.397, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(118, 56, 'Amaru_Crawford', 462, 0, 0, 0, 0, 0, 'None', 74, 903.906, 1100.81, -1379.18, 13.376, 71.414, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(119, 58, 'DonAce_Zalagrietos', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 2240.62, -1260.8, 23.942, 273.45, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(120, 54, 'Gustavo_Shady', 462, 0, 0, 0, 0, 0, 'None', 85, 896.704, 2238.67, 2234.61, 10.403, 82.072, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(121, 59, 'Dolf_Gonzales', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 2264.61, -1260.98, 23.977, 271.241, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(122, 60, 'Ryder_Wilson', 462, 0, 0, 0, 0, 0, 'None', 93, 1000, 2265.31, -1260.99, 23.977, 264.482, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123, 32, 'Senichi_Oda', 558, 0, 0, 0, 0, 0, 'None', 0, 1000, 701.695, -475.504, 15.931, 180.705, 3, 8, 1, NULL, 0, 0, 18652, 1, 0, 0, 1164, 0, 1091, 1094, 0, 1010, 1089, 1080, 0, 1087, 1166, 1168, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(124, 61, 'Alex_H._Shady', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 2257.47, -1261.52, 23.56, 270.307, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(125, 15, 'Lyell_Frost', 504, 0, 0, 0, 0, 0, 'None', 90, 907, -184.068, -1237.76, 10.764, 251.89, 0, 3, 3, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1010, 0, 1080, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(126, 34, 'Julian_Allain', 411, 0, 0, 0, 0, 0, 'None', 100, 1000, 817.25, -1348.14, 13.236, 63.426, 1, 1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(127, 34, 'Julian_Allain', 562, 0, 0, 0, 0, 0, 'None', 100, 1000, 823.52, -1347.65, 13.182, 27.198, 1, 1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(128, 34, 'Julian_Allain', 541, 0, 0, 0, 0, 0, 'None', 100, 1000, 810.749, -1343.95, 13.352, 35.804, 1, 1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(129, 34, 'Julian_Allain', 558, 0, 0, 0, 0, 0, 'None', 100, 1000, 818.596, -1351.78, 13.561, 38.823, 1, 1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(130, 34, 'Julian_Allain', 559, 0, 0, 0, 0, 0, 'None', 100, 1000, 813.52, -1349.28, 13.196, 20.694, 1, 1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(131, 34, 'Julian_Allain', 434, 0, 0, 0, 0, 0, 'None', 100, 1000, 816.078, -1350.74, 13.919, 20.07, 1, 1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(132, 34, 'Julian_Allain', 586, 0, 0, 0, 0, 0, 'None', 97, 928.062, 1132.6, -1386.36, 13.285, 273.879, 1, 1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(133, 1, 'Kovalchin_Bolkov', 482, 0, 0, 0, 0, 0, 'None', 99, 1000, 978.727, -2136.92, 13.226, 216.378, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(134, 1, 'Kovalchin_Bolkov', 558, 0, 0, 1, 0, 0, 'None', 99, 1000, 1005.52, -2121.76, 12.652, 189.252, 0, 0, 2, NULL, 0, 0, 18651, 1, 0, 0, 1163, 0, 1088, 0, 0, 1010, 1089, 1080, 0, 1087, 1166, 1168, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(135, 54, 'Gustavo_Shady', 560, 0, 0, 0, 0, 0, 'None', 85, 887.885, 1137.93, -1405.5, 13.233, 302.337, 1, 2, 0, NULL, 0, 0, 18647, 1, 0, 0, 1138, 0, 1032, 1027, 0, 1010, 1028, 1080, 0, 1087, 1169, 1141, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(137, 56, 'Shady', 565, 0, 296, 0, 0, 0, 'SHADY', 81, 747.087, 2504.23, -1940.4, 13.124, 268.469, 3, 3, 1, NULL, 0, 0, 18649, 1, 0, 3, 1049, 0, 1054, 1051, 0, 1010, 1046, 1080, 0, 1087, 1153, 1150, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(138, 56, 'Shady', 560, 0, 0, 0, 0, 0, 'None', 47, 853.944, 2502.02, -1936.28, 13.225, 259.904, 9, 1, 2, NULL, 0, 0, 18649, 1, 0, 2, 1139, 0, 1032, 1027, 0, 1010, 1028, 1083, 0, 1087, 1169, 1141, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(139, 56, 'Shady', 487, 0, 0, 0, 0, 0, 'None', 96, 660.016, 610.783, -604.065, 22.863, 178.88, 0, 0, -1, NULL, 0, 0, 18647, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(140, 62, 'Romel_Wang', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 2259.47, -1261.37, 23.562, 270.281, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(141, 56, 'Amaru_Crawford', 522, 0, 0, 0, 0, 0, 'None', 93, 1000, 856.535, -585.672, 17.632, 181.449, 0, 0, -1, NULL, 0, 0, 18649, 1, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(142, 64, 'Jaycee_Chyper', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 1129.49, -1385.39, 13.336, 7.289, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(143, 60, 'Ryder_Wilson', 415, 0, 0, 0, 0, 0, 'None', 99, 1000, 902.397, -1211.4, 16.693, 8.603, 1, 1, 2, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(144, 65, 'Danzil_Zavaroni', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 2243.21, -1260.98, 23.94, 266.488, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(145, 66, 'Marlon_Bautista', 462, 0, 0, 1, 0, 0, 'None', 90, 877.475, 2211.54, -2663.61, 13.144, 136.453, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(146, 67, 'Ero_Gum', 462, 0, 1000, 0, 0, 0, 'None', 99, 998.66, 1128.81, -1414.7, 13.204, 81.548, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(147, 68, 'Feng_V_Rito', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 2243.03, -1260.6, 23.939, 276.004, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(148, 69, 'Joseph_Hermes', 462, 0, 0, 0, 0, 0, 'None', 99, 1000, 2240.62, -1260.8, 23.942, 273.45, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(149, 70, 'John_Raiven', 462, 0, 0, 0, 0, 0, 'None', 72, 732.811, 1175.24, -1316.83, 13.572, 262.353, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(150, 71, 'Primo_Huxley', 462, 0, 0, 0, 0, 0, 'None', 91, 736.216, 2255.83, -1259.87, 23.965, 274.584, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(151, 72, 'Kenji_Hashimato', 462, 0, 0, 0, 0, 0, 'None', 99, 991.663, 1109.55, -1381.03, 13.56, 86.941, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(152, 12, 'JneL_Badger', 603, 0, 0, 1, 0, 0, 'JneL', 39, 931.337, 755.62, -583.568, 17.093, 270.255, 3, 1, 2, NULL, 0, 0, 18651, 1, 0, 3, 1023, 0, 1006, 0, 0, 1010, 1020, 1080, 0, 1087, 0, 0, 1142, 1143, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(153, 12, 'JneL_Badger', 540, 0, 0, 0, 0, 0, 'None', 97, 1000, 1087.05, -1360.42, 13.599, 341.012, 5, 1, 2, NULL, 0, 0, 18651, 1, 0, 3, 0, 0, 0, 0, 0, 1010, 0, 1080, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(154, 12, 'JneL_Badger', 560, 0, 0, 1, 0, 0, 'None', 90, 999.649, 756.352, -580.289, 17.103, 269.761, 1, 1, 1, NULL, 0, 0, 18647, 1, 0, 3, 1139, 0, 1033, 1027, 0, 1010, 1028, 1080, 0, 1087, 1169, 1141, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(158, 15, 'Lyell', 603, 1000000, 0, 0, 0, 0, 'None', 96, 999.089, 1132.32, -1395.04, 13.288, 276.272, 126, 0, -1, NULL, 0, 0, 18651, 1, 0, 0, 1001, 0, 1006, 1017, 0, 1010, 1018, 1080, 0, 1087, 0, 0, 1144, 1145, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(160, 20, 'Cidss_Tsukino', 521, 300000, 0, 0, 0, 0, 'None', 89, 840.194, 1127.82, -1390.46, 13.138, 279.134, 3, 1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(161, 73, 'John_Skie', 462, 0, 0, 0, 0, 1, 'None', 56, 774.899, 430.122, -861.318, 27.216, 194.977, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(162, 42, 'Moly_Dela_Cruz', 579, 240000, 1000, 0, 0, 0, 'None', 65, 996.45, 2502.24, -1948.01, 13.134, 87.343, 3, 3, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1010, 0, 1080, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(163, 75, 'Xtian_Obra', 462, 0, 0, 1, 0, 0, 'None', 99, 1000, 2465.42, -1939.39, 13.139, 263.41, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(164, 75, 'Xtian_Obra', 550, 0, 800, 1, 0, 0, 'None', 90, 958.288, 367.253, -2043.1, 7.488, 359.781, 1, 1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(165, 76, 'Don_Harvey', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 2240.62, -1260.8, 23.937, 273.45, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(166, 77, 'Kelyo_Chyper', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 2240.62, -1260.8, 23.937, 273.45, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(167, 60, 'Ryder_Wilson', 558, 0, 0, 0, 0, 0, 'None', 70, 1000, 894.24, -1210.22, 16.721, 1.316, 0, 0, 1, NULL, 0, 0, 0, 0, 0, 0, 1163, 0, 0, 0, 0, 1009, 0, 1080, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(168, 79, 'Helena_Kath', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 2264.55, -1278.26, 23.977, 187.573, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(169, 78, 'Ryu_Takeuchi', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 1132.72, -1463.88, 15.381, 97.701, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(170, 15, 'Lyell_Frost', 444, 0, 0, 0, 0, 0, 'None', 91, 868.846, 698.545, -461.957, 16.707, 80.318, 0, 0, -1, NULL, 0, 0, 18647, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1080, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(171, 60, 'Ryder_Wilson', 562, 0, 0, 0, 0, 0, 'None', 91, 1000, 899.113, -1207.03, 16.977, 4.231, 0, 0, 2, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(172, 81, 'Kentaro_Takashi', 462, 0, 0, 0, 0, 0, 'None', 91, 1000, 2240.62, -1260.8, 23.937, 273.45, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(173, 82, 'Casper_Dale', 462, 0, 0, 0, 0, 0, 'None', 86, 963, 1140.69, -1374.47, 13.389, 357.841, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(174, 83, 'Yuki_Chyper', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 2225.05, -1256.11, 24.705, 359.931, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(175, 1, 'Kovalchin_Bolkov', 522, 0, 0, 0, 0, 0, 'None', 87, 1000, 984.485, -2133.96, 13.2, 233.793, 0, 3, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(176, 85, 'Kaito_Cruz', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 2277, -1386.45, 23.456, 183.082, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(177, 84, 'Tyler_Rivera', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 1306.54, -1413.93, 13.484, 97.997, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(178, 86, 'Marta_Swan', 462, 0, 0, 0, 0, 0, 'None', 98, 997.389, 1967.39, -1304.59, 23.571, 162.681, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(179, 87, 'Slim_Shawty', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 2272.9, -1338.35, 23.399, 185.638, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(180, 88, 'Tadas_Tavo', 462, 0, 0, 1, 0, 0, 'None', 100, 884.325, 1750.66, -1862.28, 13.176, 255.13, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(181, 89, 'Stephanie_Shady', 462, 0, 126, 0, 0, 1, 'None', 99, 873.189, 844.618, -589.891, 17.255, 168.843, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(182, 90, 'Herbo_Dwight', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 2240.62, -1260.8, 23.942, 273.45, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(183, 0, 'Nobody', 416, 0, 0, 0, 0, 0, 'None', 100, 1000, 1221.42, -1313.51, 13.694, 269.797, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 2, -1, 1410065407, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(184, 0, 'Nobody', 416, 0, 0, 0, 0, 0, 'None', 100, 1000, 1221.31, -1318.54, 13.697, 269.883, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 2, -1, 1410065407, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(185, 46, 'Steve_Frost', 550, 0, 0, 0, 0, 0, 'None', 96, 932.901, 864.582, -1240.7, 14.64, 95.52, 171, 172, -1, NULL, 0, 0, 0, 0, 0, 0, 1001, 1004, 0, 0, 0, 0, 0, 1085, 0, 0, 0, 0, 1144, 1145, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(186, 46, 'Steve_Frost', 560, 0, 0, 0, 0, 0, 'None', 99, 989.468, 866.889, -1238.69, 14.657, 266.777, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(187, 46, 'Steve_Frost', 540, 0, 0, 0, 0, 0, 'None', 100, 1000, 2283.69, 2422.42, 10.82, 91.254, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(188, 91, 'Yoshi_Tsukino', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 1072.51, -1301.03, 13.547, 329.068, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(189, 92, 'Zae_Ikari', 462, 0, 0, 0, 0, 1, 'None', 100, 827.448, 2502.71, -1940.67, 13.144, 261.88, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(190, 93, 'Xavion_Ikari', 462, 0, 0, 0, 0, 1, 'None', 77, 888, 446.571, -853.5, 29.405, 288.599, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(191, 1, 'Kovalchin_Bolkov', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, -1862.68, -1572.21, 21.41, 30.951, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(192, 94, 'Minx_Adler', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 2240.62, -1260.8, 23.942, 273.45, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(193, 95, 'Brian_Oconner', 462, 0, 0, 0, 0, 0, 'None', 99, 994.39, 2068.53, -2487.96, 15.547, 94.942, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(194, 95, 'Brian_Oconner', 560, 0, 0, 0, 0, 0, 'None', 35, 635.069, 758.408, -531.564, 15.844, 299.61, 5, 5, 3, NULL, 0, 0, 18651, 1, 0, 0, 1139, 0, 1033, 1027, 0, 1010, 1029, 1080, 0, 1087, 1169, 1140, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(195, 97, 'Andrea_Recana', 462, 0, 0, 0, 0, 0, 'None', 97, 997.812, 2232.06, -1260, 23.517, 266.573, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(196, 98, 'Zanny_Clee', 462, 0, 0, 0, 0, 0, 'None', 91, 971.5, 1131.27, -1414.91, 13.213, 225.253, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(197, 5, 'Dom_Toretto', 560, 0, 0, 0, 0, 0, 'None', 22, 734, 274.86, -62.267, 1.238, 146.031, 0, 0, 1, NULL, 0, 0, 18648, 1, 0, 0, 1139, 0, 1033, 1030, 0, 1010, 1029, 1080, 0, 1087, 1169, 1141, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(198, 83, 'Yuki_Chyper', 550, 230000, 0, 1, 0, 0, 'None', 94, 910.805, 1138.31, -1392.36, 13.39, 271.755, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(199, 100, 'James_Ruzzel', 462, 0, 0, 0, 0, 0, 'None', 29, 584.049, 1181.8, -1321.85, 13.185, 119.803, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `vehicles` (`id`, `ownerid`, `owner`, `modelid`, `price`, `tickets`, `locked`, `dlock`, `dlocked`, `plate`, `fuel`, `health`, `pos_x`, `pos_y`, `pos_z`, `pos_a`, `color1`, `color2`, `paintjob`, `registered`, `interior`, `world`, `neon`, `neonenabled`, `alarm`, `trunk`, `mod_1`, `mod_2`, `mod_3`, `mod_4`, `mod_5`, `mod_6`, `mod_7`, `mod_8`, `mod_9`, `mod_10`, `mod_11`, `mod_12`, `mod_13`, `mod_14`, `cash`, `materials`, `pot`, `crack`, `meth`, `painkillers`, `weapon_1`, `weapon_2`, `weapon_3`, `ammo_1`, `ammo_2`, `ammo_3`, `gangid`, `factiontype`, `job`, `respawndelay`, `impounded`, `pistolammo`, `shotgunammo`, `smgammo`, `arammo`, `rifleammo`, `hpammo`, `poisonammo`, `fmjammo`, `broken`) VALUES
(200, 101, 'Yoriichi_Tsugikuni', 462, 0, 0, 0, 0, 0, 'None', 99, 1000, 1125.17, -1388.53, 13.301, 299.052, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(201, 102, 'Ero_Jin', 462, 0, 0, 0, 0, 0, 'None', 98, 891.674, 386.551, -1865.17, 7.434, 180.824, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(202, 104, 'Paeng_Estrada', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 2259.57, -1260.53, 23.97, 266.974, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(203, 88, 'Tadas_Tavo', 540, 12000, 0, 0, 0, 0, 'None', 100, 1000, 563.467, -1275.7, 17.103, 14.456, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(204, 105, 'Wesley_Valencia', 462, 0, 0, 0, 0, 0, 'None', 77, 1000, 2240.62, -1260.8, 23.942, 273.45, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(205, 107, 'Angelo_Sambrana', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 2267.07, -1257.82, 23.793, 342.97, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(206, 106, 'Xyfer_liam', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 2238.84, -1261.2, 23.939, 82.31, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(207, 16, 'Uno_E_Guirero', 506, 0, 0, 1, 0, 0, 'None', 100, 1000, 777.73, -550.427, 16.652, 87.211, 6, 6, 1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(208, 16, 'Uno_E_Guirero', 541, 0, 0, 1, 0, 0, 'None', 100, 1000, 778.256, -543.694, 16.211, 88.161, 6, 6, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(209, 16, 'Uno_E_Guirero', 461, 0, 117, 0, 0, 0, 'Uno', 56, 888.728, 599.074, -1723.85, 13.28, 86.506, 0, 0, -1, NULL, 0, 0, 18650, 1, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(210, 16, 'Uno_E_Guirero', 558, 0, 0, 0, 0, 0, 'None', 99, 1000, 777.888, -547.192, 16.392, 89.917, 6, 6, 1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(211, 16, 'Uno_E_Guirero', 560, 0, 0, 0, 0, 0, 'Uno', 99, 1000, 778.048, -553.575, 16.877, 89.026, 6, 6, 3, NULL, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(212, 61, 'Alex_H._Shady', 400, 120000, 0, 0, 0, 0, 'None', 100, 976.986, 2502.24, -1948.01, 13.134, 87.343, 2, 2, -1, NULL, 0, 0, 18652, 1, 0, 0, 0, 0, 0, 0, 0, 1009, 0, 1080, 0, 1087, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(213, 61, 'Alex_H._Shady', 586, 50000, 448, 0, 0, 0, 'None', 87, 994.481, 667.98, -549.326, 15.856, 276.261, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(214, 15, 'Lyell_Frost', 541, 0, 0, 0, 0, 0, 'None', 100, 1000, 1132.06, -1391.78, 13.2, 278.745, 1, 1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(215, 89, 'Stephanie_Shady', 541, 0, 0, 0, 0, 1, 'None', 92, 731.899, 831.604, -604.534, 15.961, 174.06, 1, 1, -1, NULL, 0, 0, 18651, 1, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(216, 0, 'Nobody', 416, 0, 0, 0, 0, 0, 'None', 100, 1000, 2036.77, -1439.13, 17.455, 359.664, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 2, -1, -1593835521, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(217, 0, 'Nobody', 416, 0, 0, 0, 0, 0, 'None', 100, 1000, 2017.27, -1409.61, 17.133, 270.679, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 2, -1, -1593835521, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(218, 0, 'Nobody', 416, 0, 0, 0, 0, 0, 'None', 100, 1000, 2009.44, -1409.55, 17.136, 269.872, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 2, -1, -1593835521, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(219, 108, 'Killua_Zoldyck', 462, 0, 0, 0, 0, 0, 'None', 98, 992.225, 2031.18, -1409.09, 16.608, 339.763, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(220, 109, 'Kairi_X_Sicaro', 462, 0, 0, 0, 0, 0, 'None', 98, 1000, 1221.43, -1313.69, 13.149, 266.444, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(221, 110, 'Ace_Zavierre', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 1186.44, -1330.52, 13.135, 3.124, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(222, 111, 'Mj_Cenita', 462, 0, 0, 0, 0, 0, 'None', 97, 966.836, 1085.48, -1380.83, 13.378, 170.837, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(223, 113, 'Brianna_Villamonte', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 2251.3, -1225.2, 23.975, 310.149, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(224, 114, 'Caiden_Sy', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 1127.35, -1411.38, 13.454, 144.309, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(225, 115, 'Bry_Escobar', 462, 0, 0, 0, 0, 0, 'None', 87, 964.004, 2265.14, -1259.3, 23.977, 280.093, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(226, 116, 'Trike_Mendoza', 462, 0, 0, 1, 0, 0, 'None', 90, 976.122, 2255.72, -1260.31, 23.965, 271.136, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(227, 118, 'Amaru_Shady', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 2240.62, -1260.8, 23.937, 273.45, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(228, 117, 'Charles_Dela_Cruz', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 1173.29, -1440.38, 15.801, 268.924, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(229, 119, 'Dale_Enzo_Villamonte', 462, 0, 0, 0, 0, 0, 'None', 0, 964.988, 2268.52, -1264.01, 23.809, 2.204, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(230, 93, 'Xavion_Ikari', 495, 0, 0, 1, 0, 1, 'None', 67, 994.669, 1493.28, -1747.54, 13.783, 179.526, 1, 1, -1, NULL, 0, 0, 18651, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1087, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(231, 92, 'Zae_Ikari', 500, 0, 0, 0, 0, 1, 'None', 92, 960.816, 1212.79, -1423.63, 13.419, 136.621, 0, 0, -1, NULL, 0, 0, 18648, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1087, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(233, 120, 'Ace_Spender', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 2240.62, -1260.8, 23.937, 273.45, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(234, 121, 'Arturo_Balagtas', 462, 0, 0, 1, 0, 0, 'None', 100, 1000, 1189.01, -1335.46, 13.142, 1.028, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(235, 122, 'Satsujin_Shi', 462, 0, 0, 0, 0, 0, 'None', 98, 957.589, 2244.51, -1261.47, 23.942, 265.032, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(236, 123, 'Hanna_Mason', 462, 0, 0, 0, 0, 0, 'None', 89, 828.127, 1761.46, -1866.43, 13.166, 279.016, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(237, 124, 'Jepoy_Kalaboso', 462, 0, 0, 0, 0, 0, 'None', 85, 971.393, 2240.62, -1260.8, 23.937, 273.45, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(238, 126, 'Krave_Leonidas', 462, 0, 0, 0, 0, 0, 'None', 91, 1000, 2240.62, -1260.8, 23.937, 273.45, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(239, 128, 'Gadfrii_Vizenti', 462, 0, 0, 0, 0, 0, 'None', 98, 1000, 1284.8, -1421.81, 14.55, 98.883, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(240, 129, 'Gello_Ashford', 462, 0, 0, 0, 0, 0, 'None', 100, 993.353, 2275.73, -1497.43, 21.686, 170.672, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(241, 130, 'Ariza_Vio', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 2262.32, -1233.66, 23.977, 9.527, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(242, 131, 'Zuez_Sanchez', 462, 0, 0, 0, 0, 0, 'None', 99, 1000, 2265.59, -1280.58, 23.977, 2.802, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(243, 132, 'Astro_Dmitry', 462, 0, 0, 0, 0, 0, 'None', 91, 1000, 2240.62, -1260.8, 23.937, 273.45, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(244, 134, 'Wancho_K_Juice', 462, 0, 0, 0, 0, 0, 'None', 91, 971.965, 2248.76, -1254.4, 25.448, 74.192, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(245, 136, 'Zhao_S_Cartel', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 2243.79, -1260.21, 23.941, 287.942, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(246, 137, 'Lux_S_Cartel', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 2243.4, -1259.29, 23.94, 288.791, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(247, 138, 'Senu_V._Batumbakal', 462, 0, 0, 0, 0, 0, 'None', 97, 1000, 1124.09, -1409.61, 13.028, 97.797, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(248, 139, 'Zero_DollarBills', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 2306.77, -1270.44, 23.843, 116.07, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(249, 140, 'Mang_Sins', 462, 0, 0, 0, 0, 0, 'None', 89, 1000, 2241.22, -1260.43, 23.938, 294.66, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(250, 142, 'Don_A_Nathan', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 2262.03, -1260.59, 23.974, 262.499, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(251, 0, 'Nobody', 416, 0, 0, 1, 0, 0, 'None', 100, 1000, 866.534, -582.049, 18.324, 179.72, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 2, -1, -402653185, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(252, 0, 'Nobody', 416, 0, 0, 0, 0, 0, 'None', 100, 1000, 862.816, -582.054, 18.326, 180.612, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 2, -1, -402653185, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(253, 0, 'Nobody', 596, 0, 0, 0, 0, 0, 'None', 100, 1000, 621.857, -611.659, 16.887, 270.456, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -1, -402653185, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(255, 0, 'Nobody', 596, 0, 0, 0, 0, 0, 'None', 100, 1000, 621.819, -608.693, 16.89, 272.266, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -1, -402653185, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(256, 0, 'Nobody', 523, 0, 0, 0, 0, 0, 'None', 100, 1000, 626.321, -611.291, 16.31, 359.097, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -1, -402653185, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(257, 0, 'Nobody', 523, 0, 0, 0, 0, 0, 'None', 100, 1000, 628.191, -611.309, 16.095, 0.93, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -1, -402653185, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(258, 144, 'Lil_Jizz', 462, 0, 0, 0, 0, 0, 'None', 96, 966.493, 2270.48, -1263.19, 23.416, 359.126, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(259, 145, 'Liquid_Schmdt', 462, 0, 0, 0, 0, 0, 'None', 84, 959.657, 2251.86, -1259.85, 23.959, 276.27, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(260, 0, 'Nobody', 525, 0, 0, 0, 0, 0, 'None', 100, 1000, 713.27, -441.166, 16.216, 180.219, 0, 229, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 7, -1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(261, 0, 'Nobody', 525, 0, 0, 0, 0, 0, 'None', 100, 1000, 718.715, -441.107, 16.188, 180, 0, 229, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 7, -1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(262, 0, 'Nobody', 468, 0, 0, 0, 0, 0, 'None', 100, 1000, 725.609, -439.164, 16.007, 183.998, 229, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 7, -1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(263, 0, 'Nobody', 468, 0, 0, 0, 0, 0, 'None', 100, 1000, 724.279, -439.083, 16.005, 183.141, 229, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 7, -1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(264, 0, 'Nobody', 468, 0, 0, 0, 0, 0, 'None', 100, 1000, 722.793, -439.052, 16.006, 181.572, 229, 229, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 7, -1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(265, 0, 'Nobody', 468, 0, 0, 0, 0, 0, 'None', 100, 1000, 721.362, -439.12, 16.005, 180, 229, 229, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 7, -1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(266, 0, 'Nobody', 407, 0, 0, 0, 0, 0, 'None', 100, 1000, 858.686, -581.33, 18.433, 180.914, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 2, -1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(267, 0, 'Nobody', 407, 0, 0, 0, 0, 0, 'None', 100, 1000, 854.187, -581.485, 18.43, 183.129, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 2, -1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(270, 0, 'Nobody', 599, 0, 0, 0, 0, 0, 'None', 100, 1000, 622.274, -604.789, 17.31, 269.529, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(271, 0, 'Nobody', 599, 0, 0, 0, 0, 0, 'None', 100, 1000, 622.252, -600.801, 17.316, 270.506, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(272, 0, 'Nobody', 497, 0, 0, 0, 0, 0, 'None', 100, 1000, 613.894, -574.489, 26.756, 271.452, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -1, 1241513983, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(273, 0, 'Nobody', 497, 0, 0, 0, 0, 0, 'None', 100, 1000, 616.078, -551.026, 23.673, 179.266, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -1, 1241513983, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(274, 146, 'Charlie_Chaplin', 462, 0, 0, 0, 0, 0, 'None', 100, 999.241, 620.343, -587.887, 16.829, 90.882, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(275, 32, 'Senichi_Oda', 481, 0, 0, 0, 0, 0, 'None', 100, 1000, 675.231, -536.472, 15.697, 102.758, 6, 6, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(276, 147, 'Marcial_Perez.', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 1249.75, -1309.2, 1061.15, 83.557, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(277, 148, 'Mark_Villar', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 2240.62, -1260.8, 23.937, 273.45, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(278, 150, 'Ashka_Ogawa', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 2220.46, -1155.67, 25.751, 147.063, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(279, 144, 'Lil_Jizz', 483, 0, 990, 0, 0, 0, 'None', 100, 788.377, 2502.24, -1948.01, 13.134, 87.343, 0, 1, 1, NULL, 0, 0, 18649, 1, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30, 25, 34, 0, 0, 0, -1, 0, -1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(280, 61, 'Alex_H._Shady', 560, 0, 0, 0, 0, 0, 'None', 93, 625.511, 2502.24, -1948.01, 13.134, 87.343, 1, 1, 3, NULL, 0, 0, 18648, 1, 0, 0, 1138, 0, 1032, 1027, 0, 1010, 0, 1080, 0, 0, 1169, 1141, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(281, 151, 'Kudo_V._Chyper', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 675.374, -722.593, 16.046, 346, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(282, 152, 'Deym_Lee', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, -28.658, -27.838, 1003.56, 26.71, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(283, 153, 'Miles_Garcia', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 675.584, -720.731, 16.055, 346.313, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(284, 154, 'Tom_Sawyer', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 1276.38, -649.271, 1090.79, 87.924, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(285, 155, 'Makoy_Kush', 462, 0, 0, 0, 0, 0, 'None', 96, 978.708, 749.196, -582.018, 16.836, 93.031, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(286, 156, 'Shane_Guiset', 462, 0, 800, 0, 0, 0, 'None', 80, 1000, 2502.24, -1948.01, 13.134, 87.343, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(287, 158, 'Ron_Tanon', 462, 0, 0, 0, 0, 0, 'None', 100, 962.882, 641.659, -571.747, 16.188, 53.477, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(288, 159, 'Blaze_Chyper', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 677.914, -695.855, 16.185, 355.291, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(289, 160, 'Kenji_Guyabano', 462, 0, 0, 0, 0, 0, 'None', 79, 930.442, 674.881, -592.568, 15.925, 324.205, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(290, 161, 'Don_Latigo', 462, 0, 0, 0, 0, 0, 'None', 98, 1000, 667.082, -591.259, 15.933, 211.506, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(291, 5, 'Dom_Toretto', 550, 230000, 0, 0, 0, 0, 'None', 66, 1000, 1514.95, -1643.81, 1374.28, 180, 1, 1, -1, NULL, 2, 2000011, 0, 0, 0, 0, 1001, 1004, 1006, 0, 0, 1010, 1019, 1080, 0, 0, 0, 0, 1144, 1145, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(292, 162, 'Grey_Fullbuster', 462, 0, 322, 1, 0, 0, 'None', 88, 946.257, 625.664, -585.851, 16.426, 92.342, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(293, 157, 'Issac_Constantine', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 624.802, -421.805, 16.547, 19.101, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(294, 95, 'Brian_Oconner', 475, 210000, 0, 0, 0, 0, 'None', 87, 1000, 761.988, -510.12, 16.927, 181.691, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1010, 0, 1080, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(295, 0, 'Nobody', 433, 0, 0, 0, 0, 0, 'None', 100, 1000, 755.083, -888.185, 43.406, 240.285, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 9, -1, 1661992959, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(296, 0, 'Nobody', 433, 0, 0, 0, 0, 0, 'None', 100, 1000, 766.712, -894.808, 43.406, 240.477, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 9, -1, 1661992959, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(297, 0, 'Nobody', 470, 0, 0, 0, 0, 0, 'None', 100, 1000, 747.151, -901.066, 43.52, 240.297, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 9, -1, -727379969, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(298, 0, 'Nobody', 470, 0, 0, 0, 0, 0, 'None', 100, 1000, 755.642, -905.834, 43.662, 241.372, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 9, -1, -727379969, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(299, 163, 'Grecko_Locco', 462, 0, 0, 0, 0, 0, 'None', 86, 963.012, 672.022, -550.009, 16.336, 4.807, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(300, 164, 'Don_Pacheco', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 155.207, -1857.56, 3.477, 8.67, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(301, 1, 'Kovalchin_Bolkov', 522, 0, 0, 0, 0, 0, 'None', 100, 1000, -1858.95, -1575.64, 21.75, 0.162, 0, 3, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(302, 0, 'Nobody', 470, 0, 0, 0, 0, 0, 'None', 100, 1000, 275.717, 1961.57, 17.637, 268.415, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 9, -1, 99, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(303, 0, 'Nobody', 470, 0, 0, 0, 0, 0, 'None', 100, 1000, 275.724, 1956.28, 17.635, 269.964, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 9, -1, 99, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(304, 0, 'Nobody', 470, 0, 0, 0, 0, 0, 'None', 100, 1000, 276.513, 1950.85, 17.666, 271.408, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 9, -1, 99, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(305, 0, 'Nobody', 433, 0, 0, 0, 0, 0, 'None', 100, 1000, 278.032, 1986.8, 18.107, 265.792, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 9, -1, 99, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(306, 0, 'Nobody', 433, 0, 0, 0, 0, 0, 'None', 100, 1000, 278.178, 1993.91, 18.108, 264.852, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 9, -1, 99, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(307, 165, 'Jelo_Taniman', 462, 0, 0, 1, 0, 0, 'None', 100, 890.78, 1356.58, -1022.79, 26.119, 359.066, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(308, 166, 'Juncliff_Huxly', 462, 0, 0, 0, 0, 0, 'None', 100, 996.534, 682.575, -480.94, 15.784, 274.547, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(309, 66, 'Marlon_Bautista', 422, 410000, 127, 1, 0, 0, 'None', 52, 838.121, 2200.03, -2641.76, 13.53, 359.707, 13, 2, -1, NULL, 0, 0, 18649, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(310, 95, 'Brian_Oconner', 500, 410000, 0, 0, 0, 0, 'None', 77, 788.784, 765.999, -520.216, 16.467, 59.798, 99, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1010, 0, 1080, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(311, 170, 'Jackson_Lee', 462, 0, 0, 0, 0, 0, 'None', 98, 967.519, 536.454, -1275.59, 16.831, 302.125, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(313, 5, 'Dom_Toretto', 602, 500000, 0, 0, 0, 0, 'None', 81, 902.666, 1514.95, -1642.99, 1374.27, 180, 65, 65, -1, NULL, 2, 2000011, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1010, 0, 1080, 0, 1087, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(314, 169, 'Lazarus_Elchapo', 462, 0, 209, 1, 0, 0, 'None', 95, 1000, 441.004, -867.171, 27.003, 18.471, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(315, 171, 'toks_foxy', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 628.831, -600.519, 16.626, 231.2, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(316, 0, 'Nobody', 481, 0, 0, 0, 0, 0, 'None', 100, 1000, 666.746, -707.783, 15.807, 264.604, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, -1610612737, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(317, 0, 'Nobody', 481, 0, 0, 0, 0, 0, 'None', 100, 1000, 666.801, -709.331, 15.948, 269.087, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, -1610612737, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(318, 0, 'Nobody', 482, 0, 0, 0, 0, 0, 'None', 100, 1000, 214.042, -140.642, 1.698, 358.276, 167, 167, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, -1, -1981284352, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(319, 0, 'Nobody', 482, 0, 0, 0, 0, 0, 'None', 100, 1000, 220.2, -140.422, 1.698, 1.917, 167, 167, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, -1, -1486618624, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(320, 0, 'Nobody', 426, 0, 0, 0, 0, 0, 'None', 100, 1000, 209.913, -139.915, 1.322, 359.229, 167, 167, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, -1, 1661992960, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(321, 0, 'Nobody', 468, 0, 0, 0, 0, 0, 'None', 100, 1000, 205.837, -139.403, 1.11, 0.915, 167, 167, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, -1, 1569325056, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(322, 0, 'Nobody', 468, 0, 0, 0, 0, 0, 'None', 100, 1000, 203.912, -139.209, 1.109, 357.716, 167, 167, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, -1, -1530494976, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(323, 173, 'Pito_Guzimo', 462, 0, 0, 0, 0, 0, 'None', 90, 1000, 669.836, -710.851, 16.264, 22.694, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(324, 174, 'Keiko_Smith', 462, 0, 0, 0, 0, 0, 'None', 89, 1000, 675.374, -722.593, 16.039, 346, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(328, 0, 'Nobody', 509, 0, 0, 0, 0, 0, 'None', 100, 1000, 697.413, -522.809, 15.848, 180.054, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, -1304428545, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(329, 0, 'Nobody', 509, 0, 0, 0, 0, 0, 'None', 100, 1000, 698.968, -522.71, 15.848, 179.219, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, -1304428545, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(330, 0, 'Nobody', 510, 0, 0, 0, 0, 0, 'None', 100, 1000, 700.536, -522.711, 15.944, 181.413, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 1410065407, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(331, 0, 'Nobody', 510, 0, 0, 0, 0, 0, 'None', 100, 1000, 702.147, -522.668, 15.944, 177.036, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 1410065407, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(332, 0, 'Nobody', 481, 0, 0, 0, 0, 0, 'None', 100, 1000, 694.333, -522.81, 15.851, 178.803, -1, -1, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 1410065407, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(333, 56, 'Amaru_Crawford', 412, 180000, 0, 1, 0, 0, 'None', 95, 1000, 652.857, -546.384, 16.161, 267.548, 0, 0, 3, NULL, 0, 0, 18647, 1, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 74, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(334, 176, 'Bart_Trese', 462, 0, 108, 0, 0, 0, 'None', 71, 1000, 676.48, -695.057, 16.179, 1.263, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(335, 177, 'ThaN_ThaN', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 680.229, -694.41, 16.188, 283.56, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(336, 175, 'Ryu_Yagami', 462, 15000, 0, 0, 0, 0, 'None', 99, 1000, 659.891, -593.057, 15.842, 83.431, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(337, 179, 'Calvs_Etich', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 131.959, -65.292, 1.578, 1, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(338, 144, 'Lil_Jizz', 463, 65000, 113, 0, 0, 0, 'None', 100, 975.839, 486.561, -717.612, 19.37, 345.276, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(339, 184, 'Kim_Se_Villamonte', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 673.263, -705.039, 16.237, 154.302, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(340, 183, 'Kirigaya_Kazuto', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 685.029, -606.15, 15.703, 269.01, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(341, 188, 'Ruki_G._Wang', 462, 0, 320, 0, 0, 0, 'None', 74, 1000, 653.73, -574.973, 21.743, 73.944, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(342, 189, 'Haruchiyo_Sanzu', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 653.428, -586.934, 16.336, 82.89, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(343, 95, 'Brian_Oconner', 477, 560000, 0, 0, 0, 0, 'None', 96, 971.948, 704.382, -460.937, 16.091, 329.66, 1, 1, -1, NULL, 0, 0, 0, 0, 0, 0, 1003, 0, 0, 0, 0, 0, 0, 1080, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(344, 32, 'Oda', 500, 410000, 0, 0, 0, 0, 'None', 100, 1000, 557.867, -1283.98, 17.0007, 0, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(345, 191, 'Ben_tambling', 462, 0, 103, 0, 0, 0, 'None', 0, 1000, 675.374, -722.593, 16.039, 346, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(346, 194, 'Frank_Tenpenny', 462, 0, 105, 0, 0, 0, 'None', 90, 1000, 674.496, -722.914, 16.032, 19.066, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(347, 195, 'Zamazu_Olympus', 462, 0, 0, 0, 0, 0, 'None', 99, 987.304, 658.556, -569.537, 15.936, 184.955, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(348, 196, 'Minang_Neng', 462, 0, 0, 0, 0, 0, 'None', 87, 968.306, 675.374, -722.593, 16.039, 346, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(349, 197, 'Kawaragi_Senju', 462, 0, 0, 0, 0, 0, 'None', 88, 977.593, 675.462, -721.076, 16.045, 350.191, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(350, 198, 'Holy_Crus', 462, 0, 0, 0, 0, 0, 'None', 87, 1000, 675.374, -722.593, 16.039, 346, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(351, 199, 'Zei_Angel', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 675.374, -722.593, 16.039, 346, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(352, 200, 'John_Suarez', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 680.327, -704.247, 16.143, 355.337, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(353, 201, 'Monte_Wesley', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 675.374, -722.593, 16.039, 346, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(354, 203, 'Zoe_Luiz', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 675.374, -722.593, 16.039, 346, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(355, 204, 'Kish_V._Broadus', 462, 0, 0, 0, 0, 0, 'None', 100, 251, 675.374, -722.593, 16.039, 346, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(356, 205, '_Justine_', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 678.325, -531.865, 16.181, 70.12, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(357, 206, 'Ariane_Smith', 462, 0, 0, 0, 0, 0, 'None', 68, 996, 668.803, -709.402, 15.922, 269.138, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(358, 207, 'Marco_Costello', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 675.374, -722.593, 16.039, 346, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(359, 208, 'Vance_Jozo', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 673.215, -720.185, 16.082, 24.227, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(360, 209, 'Mitsuwagi_B_Yoshisa', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 676.88, -724.735, 16.546, 264.228, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(361, 210, 'Chong_Chinh', 462, 0, 0, 0, 0, 0, 'None', 91, 1000, 652.96, -581.823, 16.336, 14.034, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(362, 211, 'Ching_Chinc', 462, 0, 0, 0, 0, 0, 'None', 77, 906.387, 691.994, -495.934, 15.935, 171.577, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(363, 213, 'New_Player', 462, 0, 0, 0, 0, 0, 'None', 100, 921.805, 674.906, -721.975, 16.039, 5.848, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(364, 214, 'Shawn_Z._McKington', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 643.655, -536.469, 15.748, 177.49, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(365, 217, 'Jake_Delatorre', 462, 0, 0, 0, 0, 0, 'None', 90, 1000, 675.374, -722.593, 16.039, 346, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(366, 221, 'Jerry_Villaruel', 462, 0, 0, 0, 0, 0, 'None', 76, 959.451, 1451.95, -1026.89, 23.427, 85.592, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(367, 222, 'Way_Jie', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 677.191, -539.919, 15.766, 179.67, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(368, 223, 'Yoshi_Racu', 462, 0, 0, 0, 0, 0, 'None', 100, 1000, 674.707, -721.854, 16.066, 344.05, 0, 0, -1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `vendorID` int(12) NOT NULL,
  `vendorModel` int(12) DEFAULT 980,
  `vendorPosX` float DEFAULT 0,
  `vendorPosY` float DEFAULT 0,
  `vendorPosZ` float DEFAULT 0,
  `vendorInterior` int(12) DEFAULT 0,
  `vendorWorld` int(12) DEFAULT 0,
  `vendorAngle` int(12) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `weapons`
--

CREATE TABLE `weapons` (
  `uid` int(10) DEFAULT NULL,
  `slot` tinyint(2) DEFAULT NULL,
  `weaponid` tinyint(2) DEFAULT NULL,
  `ammo` smallint(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anticheat_settings`
--
ALTER TABLE `anticheat_settings`
  ADD UNIQUE KEY `ac_code` (`ac_code`);

--
-- Indexes for table `bans`
--
ALTER TABLE `bans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `businesses`
--
ALTER TABLE `businesses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `changes`
--
ALTER TABLE `changes`
  ADD UNIQUE KEY `slot` (`slot`);

--
-- Indexes for table `charges`
--
ALTER TABLE `charges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clothing`
--
ALTER TABLE `clothing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crates`
--
ALTER TABLE `crates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD UNIQUE KEY `id` (`id`,`divisionid`);

--
-- Indexes for table `entrances`
--
ALTER TABLE `entrances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `factionpay`
--
ALTER TABLE `factionpay`
  ADD UNIQUE KEY `id` (`id`,`rank`);

--
-- Indexes for table `factionranks`
--
ALTER TABLE `factionranks`
  ADD UNIQUE KEY `id` (`id`,`rank`);

--
-- Indexes for table `factions`
--
ALTER TABLE `factions`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `factionskins`
--
ALTER TABLE `factionskins`
  ADD UNIQUE KEY `id` (`id`,`slot`);

--
-- Indexes for table `flags`
--
ALTER TABLE `flags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `furniture`
--
ALTER TABLE `furniture`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gangranks`
--
ALTER TABLE `gangranks`
  ADD UNIQUE KEY `id` (`id`,`rank`);

--
-- Indexes for table `gangskins`
--
ALTER TABLE `gangskins`
  ADD UNIQUE KEY `id` (`id`,`slot`);

--
-- Indexes for table `garages`
--
ALTER TABLE `garages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gates`
--
ALTER TABLE `gates`
  ADD PRIMARY KEY (`gateID`);

--
-- Indexes for table `houses`
--
ALTER TABLE `houses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kills`
--
ALTER TABLE `kills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `landobjects`
--
ALTER TABLE `landobjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lands`
--
ALTER TABLE `lands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_admin`
--
ALTER TABLE `log_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_bans`
--
ALTER TABLE `log_bans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_cheat`
--
ALTER TABLE `log_cheat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_contracts`
--
ALTER TABLE `log_contracts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_faction`
--
ALTER TABLE `log_faction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_gang`
--
ALTER TABLE `log_gang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_give`
--
ALTER TABLE `log_give`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_namechanges`
--
ALTER TABLE `log_namechanges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_property`
--
ALTER TABLE `log_property`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_punishments`
--
ALTER TABLE `log_punishments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_referrals`
--
ALTER TABLE `log_referrals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_vip`
--
ALTER TABLE `log_vip`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `object`
--
ALTER TABLE `object`
  ADD PRIMARY KEY (`mobjID`);

--
-- Indexes for table `phonebook`
--
ALTER TABLE `phonebook`
  ADD UNIQUE KEY `number` (`number`);

--
-- Indexes for table `points`
--
ALTER TABLE `points`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `pumps`
--
ALTER TABLE `pumps`
  ADD PRIMARY KEY (`pumpID`);

--
-- Indexes for table `shots`
--
ALTER TABLE `shots`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `speedcameras`
--
ALTER TABLE `speedcameras`
  ADD PRIMARY KEY (`speedID`);

--
-- Indexes for table `surgery`
--
ALTER TABLE `surgery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `texts`
--
ALTER TABLE `texts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `turfs`
--
ALTER TABLE `turfs`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`vendorID`);

--
-- Indexes for table `weapons`
--
ALTER TABLE `weapons`
  ADD UNIQUE KEY `uid` (`uid`,`slot`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
