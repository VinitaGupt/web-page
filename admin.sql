-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 21, 2023 at 11:59 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admin`
--

-- --------------------------------------------------------

--
-- Table structure for table `meditation`
--

CREATE TABLE `meditation` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `play_list_audio` varchar(200) DEFAULT NULL,
  `image` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `meditation`
--

INSERT INTO `meditation` (`id`, `name`, `play_list_audio`, `image`) VALUES
(1, 'paramjeet', 'angel_smile.gif', 'E1E98138-5229-4010-9591-990AAEDC2E612.png'),
(3, 'paramjeet', 'file_example_MP3_700KB.mp3', 'E1E98138-5229-4010-9591-990AAEDC2E614.png'),
(4, 'paramjeet', 'file_example_MP3_700KB1.mp3', 'E1E98138-5229-4010-9591-990AAEDC2E615.png'),
(5, 'Vinita', 'file_example_MP3_700KB2.mp3', 'E1E98138-5229-4010-9591-990AAEDC2E616.png'),
(6, 'fguhtfhj', 'file_example_MP3_700KB3.mp3', 'E1E98138-5229-4010-9591-990AAEDC2E617.png'),
(7, 'Testu', 'file_example_MP3_700KB4.mp3', 'E1E98138-5229-4010-9591-990AAEDC2E618.png'),
(8, 'uyteuyue', 'file_example_MP3_700KB5.mp3', 'E1E98138-5229-4010-9591-990AAEDC2E619.png'),
(9, 'paramjeet', 'file_example_MP3_700KB6.mp3', 'E1E98138-5229-4010-9591-990AAEDC2E6110.png'),
(10, 'frgjetyet', 'file_example_MP3_700KB7.mp3', 'E1E98138-5229-4010-9591-990AAEDC2E6111.png'),
(11, 'iuriui', 'file_example_MP3_700KB8.mp3', 'E1E98138-5229-4010-9591-990AAEDC2E6112.png'),
(12, 'paramjeet', 'file_example_MP3_700KB9.mp3', 'E1E98138-5229-4010-9591-990AAEDC2E6113.png');

-- --------------------------------------------------------

--
-- Table structure for table `price`
--

CREATE TABLE `price` (
  `id` int(11) NOT NULL,
  `Plan` varchar(200) NOT NULL,
  `days` varchar(200) NOT NULL,
  `price` varchar(200) NOT NULL,
  `discription` varchar(200) NOT NULL,
  `active` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `price`
--

INSERT INTO `price` (`id`, `Plan`, `days`, `price`, `discription`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Free', '2days', '$0', 'Synced across all your devices', '1', '2023-07-21 11:39:41', '2023-07-21 11:49:16'),
(2, 'Monthly', '30days', '$35', 'Send email to your journal', '1', '2023-07-21 11:39:41', '2023-07-21 11:49:18'),
(3, 'Quarterly', '90day', '$50', 'Bonus journal colors', '1', '2023-07-21 11:39:41', '2023-07-21 11:49:20'),
(4, 'Annual', '365day', '$229', '25% book printing discount', '1', '2023-07-21 11:39:41', '2023-07-21 11:49:24');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(10) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `role` varchar(50) NOT NULL,
  `block` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `phone`, `role`, `block`) VALUES
(1, 'vinita', 'vinita@gmail.com', '12345', '6787908787', '1', '0'),
(2, 'abc', 'abac@gmail.com', '12345', '7867567689', '1', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `meditation`
--
ALTER TABLE `meditation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `price`
--
ALTER TABLE `price`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `meditation`
--
ALTER TABLE `meditation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `price`
--
ALTER TABLE `price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
