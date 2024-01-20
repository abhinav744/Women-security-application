-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 27, 2022 at 02:00 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `women_3`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `user_id` int(100) NOT NULL,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `password` varchar(100) COLLATE utf8_bin NOT NULL,
  `mobile` varchar(100) COLLATE utf8_bin NOT NULL,
  `created_date` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`user_id`, `name`, `email`, `password`, `mobile`, `created_date`) VALUES
(2, 'Admin', 'admin@gmail.com', 'test', '1234567890', '2022-01-19');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cus_id` int(255) NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_1` varchar(100) COLLATE utf8_bin NOT NULL,
  `created_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cus_id`, `email`, `field_1`, `created_date`) VALUES
(68, '', 'Alcohol or Intoxicating', '2020-05-07'),
(70, '', 'Racing and Speeding', '2020-05-07'),
(71, '', 'Offences by Juveniles', '2020-05-07'),
(72, '', 'Dangerous / Rash Driving', '2020-05-07'),
(73, '', 'Accident Related Offences', '2020-05-07'),
(74, '', 'Enforcing Officer', '2020-05-07'),
(75, '', 'Harassment', '2022-01-05'),
(78, '', 'Social media', '2022-01-11'),
(79, '', 'Others', '2022-01-13');

-- --------------------------------------------------------

--
-- Table structure for table `cur_date`
--

CREATE TABLE `cur_date` (
  `cus_id` int(255) NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_1` varchar(100) COLLATE utf8_bin NOT NULL,
  `created_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `cur_date`
--

INSERT INTO `cur_date` (`cus_id`, `email`, `field_1`, `created_date`) VALUES
(63, '', '1', '2020-01-20');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `cus_id` int(255) NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_1` varchar(100) COLLATE utf8_bin NOT NULL,
  `created_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`cus_id`, `email`, `field_1`, `created_date`) VALUES
(60, '', 'C3 Perumalpuram', '2020-03-12'),
(61, '', 'D1 Triplicane EAST', '2020-03-12'),
(62, '', 'D3 Royapettah East', '2020-03-12'),
(63, '', 'D3 Tnagar East', '2020-03-12'),
(64, '', 'A1 Bangalore', '2022-01-05'),
(65, '', 'A1 Mumbai', '2022-01-11'),
(66, '', 'A1 Pune', '2022-01-11'),
(67, '', 'A1 Chennai', '2022-01-11'),
(68, '', 'A1 Delhi', '2022-01-13');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `cus_id` int(11) NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_1` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_2` varchar(300) COLLATE utf8_bin NOT NULL,
  `field_3` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_4` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_5` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`cus_id`, `email`, `field_1`, `field_2`, `field_3`, `field_4`, `field_5`) VALUES
(1, 'user@gmail.com', '9790675343', '9790675343', 'panner224@gmail.com', 'http://localhost/projects/women_3/web/uploads/background.jpe', '2021-09-01'),
(2, 'brinda@gmail.com', '9790675343', '9790675343', 'panner224@gmail.com', '', '2022-01-11'),
(3, 'anu@gmail.com', '9790675343', '9790675343', 'panner224@gmail.com', 'http://10.0.2.2/projects/women_3/web/uploads/1.png', '2022-01-13'),
(7, '', '1234567890', '1234567890', 'user@gmail.com', '', '2022-09-27');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `user_id` int(100) NOT NULL,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `password` varchar(100) COLLATE utf8_bin NOT NULL,
  `mobile` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_1` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_2` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_3` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_4` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_5` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_6` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_7` varchar(100) COLLATE utf8_bin NOT NULL,
  `created_date` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_8` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_9` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`user_id`, `name`, `email`, `password`, `mobile`, `field_1`, `field_2`, `field_3`, `field_4`, `field_5`, `field_6`, `field_7`, `created_date`, `field_8`, `field_9`) VALUES
(8, 'selvam', 'user@gmail.com', 'test', '1234567890', 'slik board', 'bang', 'test', 'test', '9.56622262465599', '77.96119837036132', '0', '2021-09-01', '', 'Public'),
(9, 'Police', 'police@gmail.com', 'test', '1234567890', 'police001', 'Crime', 'A1 Bangalore', 'bangalore', '123456', '11234', 'bangalore', '2022-01-05', 'Bangalore', 'Approved'),
(11, 'mumbai', 'mumbai@gmail.com', 'test', '1234567890', 'Inspector', 'Crime', 'A1 Mumbai', 'Mumbai', '612001', '2658', 'Navi Mumbai', '2022-01-11', 'maha', 'Approved');

-- --------------------------------------------------------

--
-- Table structure for table `site_results`
--

CREATE TABLE `site_results` (
  `cus_id` int(255) NOT NULL,
  `site` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_1` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_2` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_3` varchar(300) COLLATE utf8_bin NOT NULL,
  `field_4` varchar(300) COLLATE utf8_bin NOT NULL,
  `field_5` varchar(100) COLLATE utf8_bin NOT NULL,
  `created_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `site_results`
--

INSERT INTO `site_results` (`cus_id`, `site`, `field_1`, `field_2`, `field_3`, `field_4`, `field_5`, `created_date`) VALUES
(139, 'A1 Bangalore', '1', '2', '1', '', '4', '0000-00-00'),
(140, 'A1 Mumbai', '2', '2', '', '', '4', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `cus_id` int(255) NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_1` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_2` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_3` varchar(300) COLLATE utf8_bin NOT NULL,
  `field_4` varchar(300) COLLATE utf8_bin NOT NULL,
  `site` varchar(100) COLLATE utf8_bin NOT NULL,
  `area` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_5` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_6` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_7` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_8` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_9` varchar(100) COLLATE utf8_bin NOT NULL,
  `fempid` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_10` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_11` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_12` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_13` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_14` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_15` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_16` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_17` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_18` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_19` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_20` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_21` varchar(100) COLLATE utf8_bin NOT NULL,
  `rating` varchar(100) COLLATE utf8_bin NOT NULL,
  `comment` varchar(100) COLLATE utf8_bin NOT NULL,
  `delay` varchar(100) COLLATE utf8_bin NOT NULL,
  `created_date` date NOT NULL,
  `closing_date` varchar(100) COLLATE utf8_bin NOT NULL,
  `completed` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`cus_id`, `email`, `field_1`, `field_2`, `field_3`, `field_4`, `site`, `area`, `field_5`, `field_6`, `field_7`, `field_8`, `field_9`, `fempid`, `field_10`, `field_11`, `field_12`, `field_13`, `field_14`, `field_15`, `field_16`, `field_17`, `field_18`, `field_19`, `field_20`, `field_21`, `rating`, `comment`, `delay`, `created_date`, `closing_date`, `completed`) VALUES
(322, 'test-2', '2022-01-06', 'harsement', 'Nil', 'selvam', 'Nil', 'Nil', 'address', '1234567890', 'user@gmail.com', 'Nil', 'i was harrsed', '', 'A1 Bangalore', 'Nil', 'Harassment', '', '1', 'http://localhost/projects/women_3/web/uploads/readme.txt', '', 'No', '', '', '', 'Completed', '5', 'test', 'done', '2022-01-06', '2022-01-06', '2022-01-06'),
(324, 'A1 Bangalore-3', '2022-01-07', 'Harresment', 'Nil', 'selvam', 'Nil', 'Nil', 'A1 Bangalore', '1234567890', 'user@gmail.com', 'Nil', 'I have got harresed', '', 'A1 Bangalore', 'Nil', 'Enforcing Officer', '', '1', '', '', 'No', '', '', '', 'Completed', '', '', '', '2022-01-07', '2022-01-07', '2022-01-07'),
(326, 'A1 Bangalore-1', '2022-01-10', 'Harssement', 'Nil', 'selvam', 'Nil', 'Nil', 'No 1 Bangalore', '1234567890', 'user@gmail.com', 'Nil', 'Harssement', '', 'A1 Bangalore', 'Nil', 'Enforcing Officer', '', '1', '', '', 'No', '', '', '', 'Completed', '', '', '', '2022-01-10', '2022-01-10', '2022-01-10'),
(327, 'A1 Mumbai-1', '2022-01-11', 'Harassement', 'Nil', 'brinda', 'Nil', 'Nil', 'kumbakonam', '9790675343', 'brinda@gmail.com', 'Nil', 'I have got harassed', '', 'A1 Mumbai', 'Nil', 'Harassment', '', '1', '', '', 'No', '', '', '', 'Completed', '5', 'Thanks', '', '2022-01-11', '2022-01-13', '2022-01-13'),
(328, 'A1 Mumbai-1', '2022-01-13', 'Misleading', 'Nil', 'Anu', 'Nil', 'Nil', 'mumbai', '1234567890', 'anu@gmail.com', 'Nil', 'Wrong abuse content', '', 'A1 Mumbai', 'Nil', 'Social media', '', '1', 'http://10.0.2.2/projects/women_3/web/uploads/1.png', '', 'No', '', '', '', 'Completed', '5', 'Thanks', '', '2022-01-13', '2022-01-13', '2022-01-13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cus_id`);

--
-- Indexes for table `cur_date`
--
ALTER TABLE `cur_date`
  ADD PRIMARY KEY (`cus_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`cus_id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`cus_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `site_results`
--
ALTER TABLE `site_results`
  ADD PRIMARY KEY (`cus_id`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`cus_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `user_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cus_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `cur_date`
--
ALTER TABLE `cur_date`
  MODIFY `cus_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `cus_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `cus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `user_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `site_results`
--
ALTER TABLE `site_results`
  MODIFY `cus_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `cus_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=329;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
