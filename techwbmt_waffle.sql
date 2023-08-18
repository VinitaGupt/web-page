-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 18, 2023 at 07:04 PM
-- Server version: 5.7.23-23
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `techwbmt_waffle`
--

-- --------------------------------------------------------

--
-- Table structure for table `doc_verification`
--

CREATE TABLE `doc_verification` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL COMMENT '1-pasport 2-driver licence 3-identify card',
  `side` varchar(255) DEFAULT NULL COMMENT '1-front_img 2-back_img',
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doc_verification`
--

INSERT INTO `doc_verification` (`id`, `type`, `side`, `image`) VALUES
(1, '1', '1', 'ggg.png'),
(2, '1', '2', 'c2DEWUTd2mvYxKraelrrKtm1R0zI12hPQWQqPwe9.png'),
(3, '2', '1', 'ggg1.png'),
(4, '2', '2', 'c2DEWUTd2mvYxKraelrrKtm1R0zI12hPQWQqPwe91.png'),
(5, '3', '1', 'ggg2.png'),
(6, '3', '2', 'c2DEWUTd2mvYxKraelrrKtm1R0zI12hPQWQqPwe92.png'),
(7, '3', '1', 'buck.jpeg'),
(8, '3', '2', 'profile_2_man.png'),
(9, '3', '1', 'buck1.jpeg'),
(10, '3', '1', 'buck2.jpeg'),
(11, '3', '2', 'profile_2_man1.png'),
(12, '3', '1', 'buck3.jpeg'),
(13, '3', '2', 'profile_2_man2.png'),
(14, '3', '1', 'ggg3.png'),
(15, '3', '2', 'c2DEWUTd2mvYxKraelrrKtm1R0zI12hPQWQqPwe93.png'),
(16, '3', '1', 'ggg4.png'),
(17, '3', '2', 'c2DEWUTd2mvYxKraelrrKtm1R0zI12hPQWQqPwe94.png'),
(18, '3', '1', 'ggg5.png'),
(19, '3', '2', 'c2DEWUTd2mvYxKraelrrKtm1R0zI12hPQWQqPwe95.png'),
(20, '3', '1', 'profile_2_man3.png'),
(21, '3', '2', 'profile_man.jpeg'),
(22, '3', '1', 'ggg6.png'),
(23, '3', '2', 'c2DEWUTd2mvYxKraelrrKtm1R0zI12hPQWQqPwe96.png'),
(24, '3', '1', 'ggg7.png'),
(25, '3', '2', 'c2DEWUTd2mvYxKraelrrKtm1R0zI12hPQWQqPwe97.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `image` text,
  `role` int(1) NOT NULL DEFAULT '1' COMMENT '1=user,2=bussines,3=admin',
  `lattitude` double DEFAULT NULL COMMENT 'NULL=No lattitude',
  `longitude` double DEFAULT NULL COMMENT 'NULL=No longitude',
  `device_type` int(1) DEFAULT NULL COMMENT '1-IOS,2-Android',
  `device_token` varchar(100) DEFAULT NULL,
  `session_key` varchar(255) DEFAULT NULL,
  `social_type` int(1) DEFAULT NULL COMMENT '1=google,2=facebook',
  `social_id` double DEFAULT NULL COMMENT 'NULL=no social id',
  `gmail_social_id` int(255) DEFAULT NULL COMMENT 'NULL=no social id',
  `apple_social_id` int(255) DEFAULT NULL COMMENT 'NULL=no social id',
  `otp` int(4) DEFAULT NULL,
  `otp_at` datetime DEFAULT NULL COMMENT 'time otp',
  `token` varchar(200) DEFAULT NULL,
  `is_active` int(1) DEFAULT '1' COMMENT '1=active,0=deleted'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `phone`, `image`, `role`, `lattitude`, `longitude`, `device_type`, `device_token`, `session_key`, `social_type`, `social_id`, `gmail_social_id`, `apple_social_id`, `otp`, `otp_at`, `token`, `is_active`) VALUES
(1, 'manisha', 'manisha@gmail.com', '3d2172418ce305c7d16d4b05597c6a59', '8679567989', NULL, 1, NULL, NULL, 1, 'user3433', '3cb8eb43e3c4bfb69f11f3f6f61d8e1e', NULL, NULL, NULL, 4556786, NULL, NULL, NULL, 1),
(2, 'a', 'a@yopmail.com', '25d55ad283aa400af464c76d713c07ad', '8679560089', NULL, 1, NULL, NULL, 1, 'user3433', 'f0b32c1752830f0962cf5e1c8071003d', NULL, NULL, NULL, NULL, 4920, '2023-08-14 07:00:12', NULL, 1),
(3, 'manisha879', 'manisha@gmail.com', '3d2172418ce305c7d16d4b05597c6a59', '8679567989', NULL, 1, NULL, NULL, 1, 'user3433', '1d362bde21028ac37e5bc061e9299bd2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(5, 'aaa', 'aa@yopmail.com', '3d2172418ce305c7d16d4b05597c6a59', '8679567989', NULL, 1, NULL, NULL, 1, 'user3433', 'd50ac6f76e8901ecd708b15e0f88ca84', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(6, 'aaaa', 'a@yopmail.com', '3d2172418ce305c7d16d4b05597c6a59', '8679567989', NULL, 1, NULL, NULL, 1, 'user3433', '18e058248f5307210711cf1a2c187aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(7, 'manisha8798', 'manisha7@gmail.com', '3d2172418ce305c7d16d4b05597c6a59', '8679567989', NULL, 1, NULL, NULL, 1, 'user3433', '5dd7bae66f789fdbfe3dca92c52e3e9e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(8, 'as', 'a@gmail.com', '3d2172418ce305c7d16d4b05597c6a59', '8679567989', NULL, 1, NULL, NULL, 1, 'user3433', '398d63832c59f82af6a049d7ce93af74', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(9, 'xyz567', 'xyz@gmail.com', '3d2172418ce305c7d16d4b05597c6a59', '8679567989', NULL, 1, NULL, NULL, 1, 'user3433', '47305300ee2c82826834cdb0194f1ae1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(10, '123', '12@gmail.com', '3d2172418ce305c7d16d4b05597c6a59', '8679567989', NULL, 1, NULL, NULL, 1, 'user3433', '6e87dbda797ed3879c9d51e81bfed9a0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(11, 'qwert', 'qwert@gmail.com', '3d2172418ce305c7d16d4b05597c6a59', '8679567989', NULL, 1, NULL, NULL, 1, 'user3433', '253bc5f6d4bae62c64f1f775a820db8d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(12, 'Honey1', 'honey1@yopmail.com', 'e10adc3949ba59abbe56e057f20f883e', '8679567989', NULL, 1, NULL, NULL, 1, 'user3433', '0f7f762203a8b24874a75ed17307af5f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(13, 'Honey2', 'honey2@yopmail.com', 'e10adc3949ba59abbe56e057f20f883e', '8679567989', NULL, 1, NULL, NULL, 1, 'user3433', '2104eabdf50287d8c50f9212473dab2e', NULL, NULL, NULL, 455678, NULL, NULL, NULL, 1),
(14, 'Honey3', 'honey3@yopmail.com', 'e10adc3949ba59abbe56e057f20f883e', '8679567989', NULL, 1, NULL, NULL, 1, 'user3433', '931ec1879e3d956078cc708932a8b946', NULL, NULL, 5894667, NULL, NULL, NULL, NULL, 1),
(16, 'vinita', 'vinita@gmail.com', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 'd07ef2ce6cae2b647ac2a50a0fd43332', NULL, NULL, 58946, NULL, NULL, NULL, NULL, 1),
(17, 'vinita', 'vinita@gmail.com', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '79e66398e25de4232346f821a88f1475', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(18, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 'b813c8c0dcd52bf22198a81f7dcfff5e', NULL, NULL, 5894667, NULL, NULL, NULL, NULL, 1),
(19, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '0b9f884ed68cbb04618df92b7bac3ed0', NULL, NULL, 5894667, NULL, NULL, NULL, NULL, 1),
(20, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '7d6a69576e81b1e303106acea453acd4', NULL, NULL, 5894667, NULL, NULL, NULL, NULL, 1),
(21, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '5958e78778b80a5d40878274e1852da7', NULL, NULL, 5894667, NULL, NULL, NULL, NULL, 1),
(22, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 'ee1328595c699899b88ca21fc14feacb', NULL, NULL, 5894667, NULL, NULL, NULL, NULL, 1),
(23, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '1ef333c613c5a957e12056b76e3f483d', NULL, NULL, 5894667, NULL, NULL, NULL, NULL, 1),
(24, 'vihgtue', 'tomyadav647@gmail.com', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '9be2915bee3aff4fba8e57486066ef0f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(25, 'vihgtue', 'tomyadav647@gmail.com', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 'f917fbcf158c9a55ace739b68bdf8aae', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(26, 'tom647', 'tomyadav647@gmail.com', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '11cba37e9b73d1c0bbaf6427aeb2ac2d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(27, 'vihgtue', 'aaaa@gmail.com', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 'ef8e13df7f38dcf55011cdcf5c4aa42e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(28, 'Honey00', 'honey00@yopmail.com', 'e10adc3949ba59abbe56e057f20f883e', '8679567966', NULL, 1, NULL, NULL, 1, 'user3433', 'f0f73419840b1167973299c18287e188', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(29, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 'fa2c17c9621a7b8010c4b75f306a3dad', NULL, NULL, 5894667, NULL, NULL, NULL, NULL, 1),
(30, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, '56234', '28ff0eae702bbee8ca2330e26d32d916', NULL, NULL, 5894667, NULL, NULL, NULL, NULL, 1),
(31, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, '56234', '3247d28961590f289dc45564559f089c', NULL, NULL, 5894667, NULL, NULL, NULL, NULL, 1),
(32, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, '56234', '65b4a4d285d63f8702c8f5cc17b0a0ca', NULL, NULL, 5894667, NULL, NULL, NULL, NULL, 1),
(33, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, '56234', 'ecb4239c2e156c034d49503d9ca7a6ec', NULL, NULL, 5894667, NULL, NULL, NULL, NULL, 1),
(34, 'vihgtue', 'aaaa@gmail.com', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 'ada6d5290844e5e2e6deb3a55edf5ae1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(35, 'tom', 'tomyadav647@gmail.com', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '738beba37cd73d019822d5a0c837f6b2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(36, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, '56234', 'd3e2c3ca1e841fcfb64833b815223260', NULL, NULL, 5894667, NULL, NULL, NULL, NULL, 1),
(37, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, '56234', '2c21992cae7f22962139ac80d4e7438b', NULL, NULL, 5894667, NULL, NULL, NULL, NULL, 1),
(38, 'tom', 'tomyadav647@gmail.com', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '1e33e13bac46fe31f614691a41b86a31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(39, 'tom', 'tomyadav@gmail.com', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 'b9b566a27b48166ee13ad8b2fa3a0b40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(40, 'vihgtue', 'aaaa@gmail.com', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '3f65e224328b4d4cfd9a0364039edbc6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(41, 'demo1', 'demp1@yopmail.com', 'e10adc3949ba59abbe56e057f20f883e', '8679567989', NULL, 1, NULL, NULL, 1, 'user3433', '967c821cdb7cd15e2c769b138e76ab9f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(42, 'demo12', 'demo12@yopmail.com', 'e10adc3949ba59abbe56e057f20f883e', '8679567989', NULL, 1, NULL, NULL, 1, 'user3433', '86b32ffdd48e77fb724967e01bb00727', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(43, 'bb', 'bb@yopmail.com', 'e10adc3949ba59abbe56e057f20f883e', '8600567989', NULL, 1, NULL, NULL, 1, 'user3433', '91af5147d73d7a3e2fe99cdcc88f134a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(44, 'vinita', 'vinita@gmail.com', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '48d31c5cd8dbdd3b441d775a2b67db19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doc_verification`
--
ALTER TABLE `doc_verification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `doc_verification`
--
ALTER TABLE `doc_verification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
