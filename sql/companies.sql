-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 13, 2020 at 01:52 PM
-- Server version: 10.3.23-MariaDB
-- PHP Version: 7.2.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iot5_dev`
--

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `lat` varchar(100) DEFAULT NULL,
  `lng` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `type` enum('amc','fmc','authority','paying_customer','operator') DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT 0,
  `max_users` int(11) DEFAULT 5,
  `city_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `user_id`, `parent_id`, `address`, `lat`, `lng`, `city`, `country`, `created_at`, `updated_at`, `type`, `is_deleted`, `max_users`, `city_id`) VALUES
(1, 'amc-1', NULL, 348, 'Abu Dhabi - United Arab Emirates', '24.453884', '54.3773438', 'Ajman', 'United Arab Emirates', '2020-05-07 01:00:55', '2020-08-20 06:59:58', 'amc', 0, 40, 3426),
(2, 'fmc-1', NULL, 1, 'Dubai - United Arab Emirates', '25.2048493', '55.2707828', 'Dubai', 'United Arab Emirates', '2020-05-07 01:02:27', '2020-05-13 10:22:37', 'fmc', 0, 5, 3427),
(3, 'auth-1', NULL, 1, 'Dubai - United Arab Emirates', '25.2048493', '55.2707828', 'Dubai', 'United Arab Emirates', '2020-05-07 10:10:42', '2020-05-13 11:29:35', 'authority', 0, 5, 3427),
(4, 'paycus001', NULL, 1, 'Ajman - United Arab Emirates', '25.40521649999999', '55.5136433', 'Abu Dhabi', 'United Arab Emirates', '2020-05-07 10:12:42', '2020-08-10 17:34:18', 'paying_customer', 0, 5, 3426),
(5, 'testtest', NULL, 1, 'Manhattan, New York, NY, USA', '40.7830603', '-73.9712488', 'Alabama', 'United States', '2020-05-09 03:55:02', '2020-05-13 10:47:29', 'amc', 1, 5, 3649),
(6, 'testtest', NULL, 1, 'NYC, NY, USA', '40.7127753', '-74.0059728', 'Alabama', 'United States', '2020-05-09 03:57:13', '2020-05-13 10:47:13', 'amc', 0, 5, 3649),
(7, 'testtest', NULL, 1, 'NYC, NY, USA', '40.7127753', '-74.0059728', 'Alabama', 'United States', '2020-05-09 03:59:10', '2020-05-13 10:46:41', 'amc', 0, 5, 3649),
(8, 'testtest', NULL, 1, 'NYC, NY, USA', '40.7127753', '-74.0059728', 'Alabama', 'United States', '2020-05-09 04:01:05', NULL, 'amc', 0, 5, 3649),
(9, 'testtest', NULL, 1, 'NYC, NY, USA', '40.7127753', '-74.0059728', 'Alabama', 'United States', '2020-05-09 04:02:47', '2020-05-13 14:52:52', 'amc', 0, 5, 3649),
(10, 'testtest', NULL, 1, 'NYC, NY, USA', '40.7127753', '-74.0059728', 'Alabama', 'United States', '2020-05-09 04:05:39', NULL, 'amc', 0, 5, 3649),
(11, 'ASDFG', NULL, 1, 'NYC, NY, USA', '40.7127753', '-74.0059728', 'Alabama', 'United States', '2020-05-09 04:07:12', NULL, 'amc', 0, 5, 3649),
(12, 'hgfd', NULL, 1, 'NYC, NY, USA', '40.7127753', '-74.0059728', 'Alabama', 'United States', '2020-05-09 04:07:54', NULL, 'amc', 0, 5, 3649),
(13, 'hgfdfgh', NULL, 1, 'NYC, NY, USA', '40.7127753', '-74.0059728', 'Alabama', 'United States', '2020-05-09 04:09:32', NULL, 'amc', 0, 5, 3649),
(14, 'sdghfgds', NULL, 1, 'NYC, NY, USA', '40.7127753', '-74.0059728', 'Alabama', 'United States', '2020-05-09 04:10:57', '2020-05-13 13:02:47', 'amc', 0, 5, 3649),
(15, 'dfgfds', NULL, 1, 'NYC, NY, USA', '40.7127753', '-74.0059728', 'Alabama', 'United States', '2020-05-09 04:12:39', NULL, 'amc', 0, 5, 3649),
(16, 'sdgfsdf', NULL, 1, 'NYC, NY, USA', '40.7127753', '-74.0059728', 'Alabama', 'United States', '2020-05-09 04:14:08', NULL, 'amc', 0, 5, 3649),
(17, 'dfgfd', NULL, 1, 'NYC, NY, USA', '40.7127753', '-74.0059728', 'Alabama', 'United States', '2020-05-09 04:15:21', NULL, 'amc', 0, 5, 3649),
(18, 'dfgfrdesdfgh', NULL, 1, 'NYC, NY, USA', '40.7127753', '-74.0059728', 'Dubai', 'United Arab Emirates', '2020-05-09 04:16:01', '2020-07-28 20:02:41', 'amc', 0, 5, 3427),
(19, 'ghgfds', NULL, 1, 'NYC, NY, USA', '40.7127753', '-74.0059728', 'Alabama', 'United States', '2020-05-09 04:16:37', NULL, 'amc', 0, 5, 3649),
(20, 'erfghgfddfg', NULL, 1, 'NYC, NY, USA', '40.7127753', '-74.0059728', 'Alabama', 'United States', '2020-05-09 04:17:20', NULL, 'amc', 0, 5, 3649),
(21, 'edrftgfre', NULL, 1, 'NYC, NY, USA', '40.7127753', '-74.0059728', 'Alabama', 'United States', '2020-05-09 04:17:58', NULL, 'amc', 0, 5, 3649),
(22, 'wertgyhujhygt', NULL, 1, 'NYC, NY, USA', '40.7127753', '-74.0059728', 'Alabama', 'United States', '2020-05-09 04:18:48', NULL, 'amc', 0, 5, 3649),
(23, 'sdfghgfdsa', NULL, 1, 'NYC, NY, USA', '40.7127753', '-74.0059728', 'Alabama', 'United States', '2020-05-09 04:19:35', NULL, 'amc', 0, 5, 3649),
(24, 'dfghjhgf', NULL, 1, 'NYC, NY, USA', '40.7127753', '-74.0059728', 'Alabama', 'United States', '2020-05-09 11:47:13', NULL, 'amc', 0, 5, 3649),
(25, 'ertjhgfd', NULL, 1, 'NYC, NY, USA', '40.7127753', '-74.0059728', 'Alabama', 'United States', '2020-05-09 11:48:21', NULL, 'amc', 0, 5, 3649),
(26, 'sdfgffhh', NULL, 1, 'NYC, NY, USA', '40.7127753', '-74.0059728', 'Alabama', 'United States', '2020-05-09 11:49:12', '2020-05-09 12:29:22', 'amc', 0, 5, 3649),
(27, 'rtyujkjhgfd', NULL, 1, 'NYC, NY, USA', '40.7127753', '-74.0059728', 'Alabama', 'United States', '2020-05-09 11:49:51', NULL, 'amc', 0, 5, 3649),
(28, 'qwertyuiuytre', NULL, 1, 'NYC, NY, USA', '40.7127753', '-74.0059728', 'Alabama', 'United States', '2020-05-09 11:50:33', NULL, 'amc', 0, 5, 3649),
(29, 'rtyuijhgfd', NULL, 1, 'NYC, NY, USA', '40.7127753', '-74.0059728', 'Alabama', 'United States', '2020-05-09 11:51:22', NULL, 'amc', 0, 5, 3649),
(30, 'wertyhgfd', NULL, 1, 'NYC, NY, USA', '40.7127753', '-74.0059728', 'Alabama', 'United States', '2020-05-09 11:53:07', NULL, 'amc', 0, 5, 3649),
(31, 'wertrewsd', NULL, 1, 'NYC, NY, USA', '40.7127753', '-74.0059728', 'Alabama', 'United States', '2020-05-09 11:53:54', NULL, 'amc', 0, 5, 3649),
(32, 'dfgjkjhgf', NULL, 1, 'NYC, NY, USA', '40.7127753', '-74.0059728', 'Alabama', 'United States', '2020-05-09 11:55:21', NULL, 'amc', 0, 5, 3649),
(33, 'ghgfdfg', NULL, 1, 'NYC, NY, USA', '40.7127753', '-74.0059728', 'Alabama', 'United States', '2020-05-09 12:00:57', NULL, 'amc', 0, 5, 3649),
(34, 'fghjhgfd', NULL, 1, 'NYC, NY, USA', '40.7127753', '-74.0059728', 'Alabama', 'United States', '2020-05-09 12:01:57', NULL, 'amc', 0, 5, 3649),
(35, 'dfghjhtr', NULL, 1, 'NYC, NY, USA', '40.7127753', '-74.0059728', 'Alabama', 'United States', '2020-05-09 12:04:06', '2020-05-09 12:29:47', 'amc', 0, 5, 3649),
(36, 'amjad', NULL, 1, 'NYC, NY, USA', '40.7127753', '-74.0059728', 'Alabama', 'United States', '2020-05-09 12:06:08', '2020-05-09 12:07:06', 'authority', 0, 5, 3649),
(37, 'sdfghjk', NULL, 1, 'NYC, NY, USA', '40.7127753', '-74.0059728', 'Alabama', 'United States', '2020-05-09 12:08:11', NULL, 'paying_customer', 0, 5, 3649),
(38, 'am', NULL, 1, 'NYC, NY, USA', '40.7127753', '-74.0059728', 'Alabama', 'United States', '2020-05-11 00:57:28', NULL, 'amc', 0, 5, 3649),
(39, 'amc-2', NULL, 1, 'Dorval, QC, Canada', '45.4503213', '-73.7500486', 'Quebec', 'Canada', '2020-05-11 14:33:01', NULL, 'amc', 0, 5, 539),
(40, 'amc-5', NULL, 1, 'Dorval, QC, Canada', '45.4503213', '-73.7500486', 'Quebec', 'Canada', '2020-05-11 15:30:07', NULL, 'amc', 0, 5, 539),
(41, 'smart solutions', NULL, 1, 'As Suwayda, Syria', '32.71289679999999', '36.5662858', 'As Suwayda\'', 'Syrian Arab Republic', '2020-05-13 19:06:00', NULL, 'amc', 0, 5, 3156),
(42, 'FMC Technologies AG', NULL, 1, 'Dubai - United Arab Emirates', '25.2048493', '55.2707828', 'Dubai', 'United Arab Emirates', '2020-05-13 19:26:31', NULL, 'fmc', 0, 5, 3427),
(43, 'EOS authority', NULL, 1, 'Sharjah - United Arab Emirates', '25.3462553', '55.4209317', 'Sharjah', 'United Arab Emirates', '2020-05-13 19:37:32', NULL, 'authority', 0, 5, 3430),
(44, 'cnn auth', NULL, 1, 'Dubai - United Arab Emirates', '25.2048493', '55.2707828', 'Dubai', 'United Arab Emirates', '2020-05-13 19:40:46', NULL, 'authority', 0, 5, 3427),
(45, 'newAuth', NULL, 1, 'Sharjah - United Arab Emirates', '25.3462553', '55.4209317', 'Sharjah', 'United Arab Emirates', '2020-05-13 19:44:13', NULL, 'authority', 0, 5, 3430),
(46, 'beauty swimming pool', NULL, 1, 'Ajman - United Arab Emirates', '25.40521649999999', '55.5136433', 'Ajman', 'United Arab Emirates', '2020-05-13 19:46:52', NULL, 'paying_customer', 0, 5, 3426),
(47, 'star hotel', NULL, 1, 'Abu Dhabi - United Arab Emirates', '24.453884', '54.3773438', 'Abu Dhabi', 'United Arab Emirates', '2020-05-13 20:25:31', NULL, 'paying_customer', 0, 5, 3425),
(48, 'fmc-new tech', NULL, 1, 'Ajman City Centre - Al Ittihad Street - Ajman - United Arab Emirates', '25.3995441', '55.4792204', 'Ajman', 'United Arab Emirates', '2020-05-13 20:28:42', NULL, 'fmc', 0, 5, 3426),
(49, 'rotana swimming pool', NULL, 1, 'Dubai - United Arab Emirates', '25.2048493', '55.2707828', 'Dubai', 'United Arab Emirates', '2020-05-13 20:32:38', NULL, 'paying_customer', 0, 5, 3427),
(50, 'ufo', NULL, 1, 'Dubai - United Arab Emirates', '25.2048493', '55.2707828', 'Dubai', 'United Arab Emirates', '2020-05-13 20:51:43', NULL, 'authority', 0, 5, 3427),
(51, 'Rachela Cruz', NULL, 1, 'Al Jadaf Heights - Dubai - United Arab Emirates', '25.222687', '55.3334677', 'Dubai', 'United Arab Emirates', '2020-05-29 07:49:30', NULL, 'amc', 0, 5, 3427),
(52, 'operator-01', NULL, 1, 'Fujairah - United Arab Emirates', '25.1288099', '56.3264849', 'Fujairah', 'United Arab Emirates', '2020-06-01 06:55:00', '2020-06-07 15:11:13', 'operator', 0, 5, 3428),
(53, 'op-02', NULL, 1, 'Dubai - United Arab Emirates', '25.2048493', '55.2707828', 'Dubai', 'United Arab Emirates', '2020-06-01 07:09:15', NULL, 'operator', 0, 5, 3427),
(54, 'ela', NULL, 1, 'West 22nd Street, Olongapo, Zambales, Philippines', '14.8423769', '120.2854244', 'Zambales', 'Philippines', '2020-06-02 14:15:42', '2020-06-02 14:18:41', 'amc', 0, 5, 2395),
(55, 'ely', NULL, 1, 'West 22nd Street, Olongapo, Zambales, Philippines', '14.8423769', '120.2854244', 'Zambales', 'Philippines', '2020-06-03 10:42:22', NULL, 'amc', 0, 5, 2395),
(56, 'amc-test', NULL, 343, 'Damascus, Syria', '33.5138073', '36.2765279', 'Dimashq', 'Syrian Arab Republic', '2020-06-14 22:05:28', '2020-07-11 13:47:03', 'amc', 0, 6, 3159),
(57, 'amc676', NULL, 345, 'Bur Dubai - Dubai - United Arab Emirates', '25.2145565', '55.30329059999999', 'Dubai', 'United Arab Emirates', '2020-06-21 20:26:23', NULL, 'amc', 0, 5, 3427),
(58, 'test', NULL, 1, 'Damascus, Syria', '33.5138073', '36.2765279', 'Dimashq', 'Syrian Arab Republic', '2020-06-27 11:19:39', NULL, 'paying_customer', 0, 5, 3159),
(59, 'rrrrrrr-testupdare', NULL, 1, 'Dubai - United Arab Emirates', '25.2048493', '55.2707828', 'Dubai', 'United Arab Emirates', '2020-06-27 11:56:14', '2020-06-27 11:57:55', 'amc', 0, 5, 3427),
(60, 'test-image', NULL, 1, 'Dubai - United Arab Emirates', '25.2048493', '55.2707828', 'Dubai', 'United Arab Emirates', '2020-06-27 12:45:04', '2020-06-27 12:46:16', 'amc', 0, 5, 3427),
(61, 'amc-test', NULL, 1, 'Damascus, Syria', '33.5138073', '36.2765279', 'Dimashq', 'Syrian Arab Republic', '2020-06-27 12:58:47', NULL, 'amc', 0, 5, 3159),
(62, 'test', NULL, 1, 'Damascus, Syria', '33.5138073', '36.2765279', 'Dimashq', 'Syrian Arab Republic', '2020-06-27 17:04:17', NULL, 'fmc', 0, 5, 3159),
(63, 'final final test', NULL, 1, 'Damascus, Syria', '33.5138073', '36.2765279', 'Dimashq', 'Syrian Arab Republic', '2020-06-27 22:55:29', NULL, 'amc', 0, 5, 3159),
(64, 'TEsTinG', NULL, 341, 'Lattakia, Syria', '35.5407103', '35.7952667', 'Al Ladhiqiyah', 'Syrian Arab Republic', '2020-07-06 17:09:12', NULL, 'paying_customer', 0, 5, 3153),
(65, 'customer - test', NULL, 391, 'Damascus, Syria', '33.5138073', '36.2765279', 'Dimashq', 'Syrian Arab Republic', '2020-07-15 17:36:21', NULL, 'paying_customer', 0, 20, 3159),
(66, 'fm-amc', NULL, 390, 'Dubai - United Arab Emirates', '25.2048493', '55.2707828', 'Dubai', 'United Arab Emirates', '2020-07-15 22:32:27', NULL, 'amc', 0, 2, 3427),
(67, 'fm-fmc', NULL, 390, 'Dubai - United Arab Emirates', '25.2048493', '55.2707828', 'Dubai', 'United Arab Emirates', '2020-07-15 22:33:36', NULL, 'fmc', 0, 2, 3427),
(68, 'fm-auth', NULL, 390, 'Ajman - United Arab Emirates', '25.40521649999999', '55.5136433', 'Ajman', 'United Arab Emirates', '2020-07-15 22:35:52', NULL, 'authority', 0, 2, 3426),
(69, 'fm-customer', NULL, 390, 'Dubai - United Arab Emirates', '25.2048493', '55.2707828', 'Dubai', 'United Arab Emirates', '2020-07-15 22:39:08', NULL, 'paying_customer', 0, 2, 3427),
(70, 'fm-op', NULL, 390, 'Dubai - United Arab Emirates', '25.2048493', '55.2707828', 'Dubai', 'United Arab Emirates', '2020-07-15 22:53:49', NULL, 'operator', 0, 2, 3427),
(71, 'AbbsCompany', NULL, 1, 'The Omayad Mosque, Damascus, Syria', '33.5116912', '36.3066528', 'Dimashq', 'Syrian Arab Republic', '2020-09-10 16:58:11', NULL, 'amc', 0, 5, 3159);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_companies_users` (`user_id`),
  ADD KEY `fk_companies_parent_users` (`parent_id`),
  ADD KEY `city_id` (`city_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `companies`
--
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
COMMIT;