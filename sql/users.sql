-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 13, 2020 at 01:54 PM
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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `permissions` varbinary(100) NOT NULL DEFAULT '\0',
  `modules` varbinary(20) NOT NULL DEFAULT '\0',
  `status` enum('active','inactive') DEFAULT NULL,
  `last_login_ip` varchar(50) DEFAULT NULL,
  `verify_token` varchar(255) DEFAULT NULL,
  `last_login_date` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `is_deleted` tinyint(1) DEFAULT 0,
  `refresh_token` binary(16) DEFAULT NULL,
  `failed_login_attempts` int(11) NOT NULL DEFAULT 0,
  `last_login_attempt` datetime DEFAULT NULL,
  `dashboard_style` varchar(200) DEFAULT NULL,
  `tfa_secret` varchar(100) DEFAULT NULL,
  `tfa_enable` tinyint(1) DEFAULT 0,
  `company_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `person_id`, `password`, `email`, `phone`, `role_id`, `permissions`, `modules`, `status`, `last_login_ip`, `verify_token`, `last_login_date`, `created_at`, `updated_at`, `is_deleted`, `refresh_token`, `failed_login_attempts`, `last_login_attempt`, `dashboard_style`, `tfa_secret`, `tfa_enable`, `company_id`) VALUES
(1, 1, '$2a$10$4vmZemt7F1s5z9fkrZn7pOe2Y5bxW6g6wBGyAbzB9VuJjYRxSMyVC', 'admin@iot.com', '+963922222277', 1, 0x00, 0x00, 'active', '104.159.37.160', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJmb28iOiJiYXIiLCJpYXQiOjE1OTQ3NjQ3OTAsImV4cCI6MTU5NDg1MTE5MH0.qPNM-2sLz_dWhq1pyA5W7Yw3RFYxVDxhoPSWXaqxXd4', '2020-09-13 13:52:24', '2020-03-07 00:00:00', '2020-09-13 13:53:47', 0, 0x89d4d79c63984527a52a68c54f539a9a, 0, '2020-09-12 08:49:18', NULL, NULL, 0, NULL),
(221, 2, '$2a$10$mwsLMsXRxq/ak/OSlbTHuOnIa8kSrlnj9GhQK26ta2sMXeMj.oc9m', 'developers@smartiot.ae', '+971555547755', 2, 0x00, 0x00, 'active', '::ffff:46.213.223.29', '17906', '2020-06-29 22:51:24', '2020-05-07 00:07:02', '2020-07-20 17:00:52', 0, 0x5dc27a331de44828b0e4727a123c57e2, 0, '2020-06-29 19:33:05', NULL, NULL, 1, NULL),
(222, 3, '$2a$10$mwsLMsXRxq/ak/OSlbTHuOnIa8kSrlnj9GhQK26ta2sMXeMj.oc9m', 'amc-1@g.com', '+971555477777', 5, 0x00, 0x00, 'active', '178.52.215.92', '69931', '2020-05-22 21:22:09', '2020-05-07 01:00:55', '2020-07-21 00:23:05', 0, NULL, 0, NULL, NULL, NULL, 0, 1),
(223, 4, NULL, 'amc-1@yahoo.com', '+971552144445', 5, 0x00, 0x00, 'active', NULL, '37615', NULL, '2020-05-07 01:00:55', '2020-07-30 16:48:07', 1, NULL, 0, NULL, NULL, NULL, 0, 1),
(224, 5, '$2a$10$mwsLMsXRxq/ak/OSlbTHuOnIa8kSrlnj9GhQK26ta2sMXeMj.oc9m', 'developers4@smartiot.ae', '+971555555544', 4, 0x00, 0x00, 'active', '185.165.241.38', '88392', '2020-05-24 22:56:12', '2020-05-07 01:02:27', '2020-07-21 00:23:05', 0, 0xefbfbdefbfbd231b45efbfbd4e39efbf, 0, NULL, NULL, NULL, 0, 2),
(225, 6, NULL, 'fmc-1@yahooo.com', '+971556556556', 4, 0x00, 0x00, 'active', NULL, '12507', NULL, '2020-05-07 01:02:27', '2020-07-21 00:23:05', 0, NULL, 0, NULL, NULL, NULL, 0, 2),
(226, 7, NULL, 'fmc-2@gh.com', '+971554745547', 4, 0x00, 0x00, 'active', NULL, '51400', NULL, '2020-05-07 01:02:27', '2020-07-21 00:23:05', 0, NULL, 0, NULL, NULL, NULL, 0, 2),
(227, 8, NULL, 'auth-1@gmail.com', '+971555544445', 3, 0x00, 0x00, 'active', NULL, '98788', NULL, '2020-05-07 10:10:42', '2020-07-21 00:23:05', 0, NULL, 0, NULL, NULL, NULL, 0, 3),
(228, 9, NULL, 'auth11@gmail.com', '+971554755475', 3, 0x00, 0x00, 'active', NULL, '19281', NULL, '2020-05-07 10:10:42', '2020-07-21 00:23:05', 0, NULL, 0, NULL, NULL, NULL, 0, 3),
(229, 10, '$2a$10$mwsLMsXRxq/ak/OSlbTHuOnIa8kSrlnj9GhQK26ta2sMXeMj.oc9m', 'developers6@smartiot.ae', '+97166555545', 6, 0x00, 0x00, 'active', '217.23.3.92', '82300', '2020-09-11 19:41:58', '2020-05-07 10:12:42', '2020-09-11 19:43:19', 0, 0x4ed604ddc2f648daa5e4eaaf51fc7adf, 0, NULL, NULL, NULL, 0, 4),
(230, 11, '$2a$10$mwsLMsXRxq/ak/OSlbTHuOnIa8kSrlnj9GhQK26ta2sMXeMj.oc9m', 'paycus001@yahoo.com', '+971745745745', 6, 0x00, 0x00, 'active', '194.59.249.202', '34417', '2020-09-10 13:32:24', '2020-05-07 10:12:42', '2020-09-10 13:33:45', 0, 0x1a5a46b8a8594017b35eecefa103110f, 0, NULL, NULL, NULL, 0, 4),
(231, 12, NULL, 'testest@gmail.com', '+17854856523', 5, 0x00, 0x00, 'active', NULL, '58409', NULL, '2020-05-09 03:55:02', '2020-07-21 00:23:05', 1, NULL, 0, NULL, NULL, NULL, 0, 5),
(232, 13, NULL, 'testest1@gmail.com', '+17754856523', 5, 0x00, 0x00, 'active', NULL, '92973', NULL, '2020-05-09 03:55:02', '2020-07-21 00:23:05', 1, NULL, 0, NULL, NULL, NULL, 0, 5),
(233, 14, NULL, 'testest2@gmail.com', '+17854856524', 5, 0x00, 0x00, 'active', NULL, '74240', NULL, '2020-05-09 03:57:13', '2020-07-21 00:23:05', 0, NULL, 0, NULL, NULL, NULL, 0, 6),
(234, 15, NULL, 'testest3@gmail.com', '+17754856524', 5, 0x00, 0x00, 'active', NULL, '89248', NULL, '2020-05-09 03:57:13', '2020-07-21 00:23:05', 0, NULL, 0, NULL, NULL, NULL, 0, 6),
(235, 16, NULL, 'testest22@gmail.com', '+17854856548', 5, 0x00, 0x00, 'active', NULL, '58420', NULL, '2020-05-09 03:59:10', '2020-07-21 00:23:05', 0, NULL, 0, NULL, NULL, NULL, 0, 7),
(236, 17, NULL, 'testest76@gmail.com', '+17754856591', 5, 0x00, 0x00, 'active', NULL, '58469', NULL, '2020-05-09 03:59:10', '2020-07-21 00:23:05', 0, NULL, 0, NULL, NULL, NULL, 0, 7),
(237, 18, NULL, 'testest16@gmail.com', '+17854756523', 5, 0x00, 0x00, 'active', NULL, '52180', NULL, '2020-05-09 04:01:05', '2020-07-21 00:23:05', 0, NULL, 0, NULL, NULL, NULL, 0, 8),
(238, 19, NULL, 'testest71@gmail.com', '+17754636523', 5, 0x00, 0x00, 'active', NULL, '32755', NULL, '2020-05-09 04:01:05', '2020-07-21 00:23:05', 0, NULL, 0, NULL, NULL, NULL, 0, 8),
(239, 20, NULL, 'testest61@gmail.com', '+17754356523', 5, 0x00, 0x00, 'active', NULL, '11327', NULL, '2020-05-09 04:02:47', '2020-07-21 00:23:05', 0, NULL, 0, NULL, NULL, NULL, 0, 9),
(240, 21, NULL, 'testest73@gmail.com', '+17854842523', 5, 0x00, 0x00, 'active', NULL, '27125', NULL, '2020-05-09 04:02:47', '2020-07-21 00:23:05', 0, NULL, 0, NULL, NULL, NULL, 0, 9),
(241, 22, NULL, 'testest17@gmail.com', '+17754853123', 5, 0x00, 0x00, 'active', NULL, '42631', NULL, '2020-05-09 04:05:39', '2020-07-21 00:23:05', 0, NULL, 0, NULL, NULL, NULL, 0, 10),
(242, 23, NULL, 'testest46@gmail.com', '+17854857323', 5, 0x00, 0x00, 'active', NULL, '90627', NULL, '2020-05-09 04:05:39', '2020-07-21 00:23:05', 0, NULL, 0, NULL, NULL, NULL, 0, 10),
(243, 24, NULL, 'ASFGHVJGF@gmail.com', '+17859685896', 5, 0x00, 0x00, 'active', NULL, '56967', NULL, '2020-05-09 04:07:12', '2020-07-21 00:23:05', 0, NULL, 0, NULL, NULL, NULL, 0, 11),
(244, 25, NULL, 'sdfgfd@gmail.com', '+17859566896', 5, 0x00, 0x00, 'active', NULL, '44632', NULL, '2020-05-09 04:07:12', '2020-07-21 00:23:05', 0, NULL, 0, NULL, NULL, NULL, 0, 11),
(245, 26, NULL, 'gfdsasdf@gmail.com', '+17855955854', 5, 0x00, 0x00, 'active', NULL, '91212', NULL, '2020-05-09 04:07:54', '2020-07-21 00:23:05', 0, NULL, 0, NULL, NULL, NULL, 0, 12),
(246, 27, NULL, 'fgfds@gmail.com', '+17855564563', 5, 0x00, 0x00, 'active', NULL, '96020', NULL, '2020-05-09 04:07:54', '2020-07-21 00:23:05', 0, NULL, 0, NULL, NULL, NULL, 0, 12),
(247, 28, NULL, 'dfgfds@gmail.com', '+17878565462', 5, 0x00, 0x00, 'active', NULL, '94990', NULL, '2020-05-09 04:09:32', '2020-07-21 00:23:05', 0, NULL, 0, NULL, NULL, NULL, 0, 13),
(248, 29, NULL, 'dfgfd@gmail.com', '+17858959856', 5, 0x00, 0x00, 'active', NULL, '25303', NULL, '2020-05-09 04:09:32', '2020-07-21 00:23:05', 0, NULL, 0, NULL, NULL, NULL, 0, 13),
(249, 30, NULL, 'asfgdf@gmail.com', '+17789898655', 5, 0x00, 0x00, 'active', NULL, '10046', NULL, '2020-05-09 04:10:57', '2020-07-21 00:23:05', 0, NULL, 0, NULL, NULL, NULL, 0, 14),
(250, 31, NULL, 'dfgds@gmail.com', '+17795695895', 5, 0x00, 0x00, 'active', NULL, '41866', NULL, '2020-05-09 04:10:57', '2020-07-21 00:23:05', 0, NULL, 0, NULL, NULL, NULL, 0, 14),
(251, 32, NULL, 'dfgfdf@gmail.com', '+17795965656', 5, 0x00, 0x00, 'active', NULL, '92211', NULL, '2020-05-09 04:12:39', '2020-07-21 00:23:05', 0, NULL, 0, NULL, NULL, NULL, 0, 15),
(252, 33, NULL, 'dfsa@gmail.com', '+17795656562', 5, 0x00, 0x00, 'active', NULL, '86860', NULL, '2020-05-09 04:12:39', '2020-07-21 00:23:05', 0, NULL, 0, NULL, NULL, NULL, 0, 15),
(253, 34, NULL, 'dfds@gmail.com', '+17785956552', 5, 0x00, 0x00, 'active', NULL, '72114', NULL, '2020-05-09 04:14:08', '2020-07-21 00:23:05', 0, NULL, 0, NULL, NULL, NULL, 0, 16),
(254, 35, NULL, 'dfgdfs@gmail.com', '+17745956555', 5, 0x00, 0x00, 'active', NULL, '37317', NULL, '2020-05-09 04:14:08', '2020-07-21 00:23:05', 0, NULL, 0, NULL, NULL, NULL, 0, 16),
(255, 36, NULL, 'sdddsddfgfd@gmail.com', '+17795648652', 5, 0x00, 0x00, 'active', NULL, '82538', NULL, '2020-05-09 04:15:21', '2020-07-21 00:23:05', 0, NULL, 0, NULL, NULL, NULL, 0, 17),
(256, 37, NULL, 'dfdsfds@gmail.com', '+17795555152', 5, 0x00, 0x00, 'active', NULL, '28087', NULL, '2020-05-09 04:15:21', '2020-07-21 00:23:05', 0, NULL, 0, NULL, NULL, NULL, 0, 17),
(257, 38, NULL, 'edfghfdsdfghn@gmail.com', '+17795565256', 5, 0x00, 0x00, 'active', NULL, '35697', NULL, '2020-05-09 04:16:01', '2020-07-21 00:23:05', 0, NULL, 0, NULL, NULL, NULL, 0, 18),
(258, 39, NULL, 'asdfghfdesdfghjhgf@gmail.com', '+17753656366', 5, 0x00, 0x00, 'active', NULL, '41555', NULL, '2020-05-09 04:16:01', '2020-07-21 00:23:05', 0, NULL, 0, NULL, NULL, NULL, 0, 18),
(259, 40, NULL, 'dfgfdsa@gmail.com', '+17742368536', 5, 0x00, 0x00, 'active', NULL, '34146', NULL, '2020-05-09 04:16:37', '2020-07-21 00:23:05', 0, NULL, 0, NULL, NULL, NULL, 0, 19),
(260, 41, NULL, 'erftgyhujytr@gmail.com', '+17725863635', 5, 0x00, 0x00, 'active', NULL, '55526', NULL, '2020-05-09 04:16:37', '2020-07-21 00:23:05', 0, NULL, 0, NULL, NULL, NULL, 0, 19),
(261, 42, NULL, 'dfgfdsdfg@gmail.com', '+17752358565', 5, 0x00, 0x00, 'active', NULL, '38792', NULL, '2020-05-09 04:17:20', '2020-07-21 00:23:05', 0, NULL, 0, NULL, NULL, NULL, 0, 20),
(262, 43, NULL, 'dfgfdsfgh@gmail.com', '+17723566854', 5, 0x00, 0x00, 'active', NULL, '31029', NULL, '2020-05-09 04:17:20', '2020-07-21 00:23:05', 0, NULL, 0, NULL, NULL, NULL, 0, 20),
(263, 44, NULL, 'fgfrdew@gmail.com', '+17796562565', 5, 0x00, 0x00, 'active', NULL, '43698', NULL, '2020-05-09 04:17:58', '2020-07-21 00:23:05', 0, NULL, 0, NULL, NULL, NULL, 0, 21),
(264, 45, NULL, 'defgfdsdfg@gmail.com', '+17795656535', 5, 0x00, 0x00, 'active', NULL, '77565', NULL, '2020-05-09 04:17:58', '2020-07-21 00:23:05', 0, NULL, 0, NULL, NULL, NULL, 0, 21),
(265, 46, NULL, 'sdfghgfds@gmail.com', '+17575685585', 5, 0x00, 0x00, 'active', NULL, '70704', NULL, '2020-05-09 04:18:48', '2020-07-21 00:23:05', 0, NULL, 0, NULL, NULL, NULL, 0, 22),
(266, 47, NULL, 'fghgfdsa@gmail.com', '+17723698536', 5, 0x00, 0x00, 'active', NULL, '22246', NULL, '2020-05-09 04:18:48', '2020-07-21 00:23:05', 0, NULL, 0, NULL, NULL, NULL, 0, 22),
(267, 48, NULL, 'sdfghjhgfds@gmail.com', '+17736526544', 5, 0x00, 0x00, 'active', NULL, '22241', NULL, '2020-05-09 04:19:35', '2020-07-21 00:23:05', 0, NULL, 0, NULL, NULL, NULL, 0, 23),
(268, 49, NULL, 'sdfgtyhtre@gmail.com', '+17756969656', 5, 0x00, 0x00, 'active', NULL, '83656', NULL, '2020-05-09 04:19:35', '2020-07-21 00:23:05', 0, NULL, 0, NULL, NULL, NULL, 0, 23),
(269, 50, NULL, 'sdgfd@gmail.com', '+17796265256', 5, 0x00, 0x00, 'active', NULL, '64237', NULL, '2020-05-09 11:47:13', '2020-07-21 00:23:05', 0, NULL, 0, NULL, NULL, NULL, 0, 24),
(270, 51, NULL, 'sdfghgfd@gmail.com', '+17795655955', 5, 0x00, 0x00, 'active', NULL, '67415', NULL, '2020-05-09 11:47:13', '2020-07-21 00:23:05', 0, NULL, 0, NULL, NULL, NULL, 0, 24),
(271, 52, NULL, 'dfgfdssfgdsa@gmail.com', '+17753585565', 5, 0x00, 0x00, 'active', NULL, '67736', NULL, '2020-05-09 11:48:21', '2020-07-21 00:23:05', 0, NULL, 0, NULL, NULL, NULL, 0, 25),
(272, 53, NULL, 'dfghgfds@gmail.com', '+17786548585', 5, 0x00, 0x00, 'active', NULL, '22393', NULL, '2020-05-09 11:48:21', '2020-07-21 00:23:05', 0, NULL, 0, NULL, NULL, NULL, 0, 25),
(273, 54, NULL, 'bhgfdsdfg@gmail.com', '+17752587565', 5, 0x00, 0x00, 'active', NULL, '20271', NULL, '2020-05-09 11:49:12', '2020-07-21 00:23:05', 0, NULL, 0, NULL, NULL, NULL, 0, 26),
(274, 55, NULL, 'dfghgfdswfg@gmail.com', '+17758668559', 5, 0x00, 0x00, 'active', NULL, '19782', NULL, '2020-05-09 11:49:12', '2020-07-21 00:23:05', 0, NULL, 0, NULL, NULL, NULL, 0, 26),
(275, 56, NULL, 'sdfghyjklkjhgfd@gmail.com', '+17785632473', 5, 0x00, 0x00, 'active', NULL, '72273', NULL, '2020-05-09 11:49:51', '2020-07-21 00:23:05', 0, NULL, 0, NULL, NULL, NULL, 0, 27),
(276, 57, NULL, 'sdfghjkloiuyt@gmail.com', '+17722532145', 5, 0x00, 0x00, 'active', NULL, '80469', NULL, '2020-05-09 11:49:51', '2020-07-21 00:23:05', 0, NULL, 0, NULL, NULL, NULL, 0, 27),
(277, 58, NULL, 'drftgytre@gmail.com', '+17786321462', 5, 0x00, 0x00, 'active', NULL, '54768', NULL, '2020-05-09 11:50:33', '2020-07-21 00:23:05', 0, NULL, 0, NULL, NULL, NULL, 0, 28),
(278, 59, NULL, 'ertyuiokjb@gmail.com', '+17789632463', 5, 0x00, 0x00, 'active', NULL, '60867', NULL, '2020-05-09 11:50:33', '2020-07-21 00:23:05', 0, NULL, 0, NULL, NULL, NULL, 0, 28),
(279, 60, NULL, 'wertyukjnbvc@gmail.com', '+17796323365', 5, 0x00, 0x00, 'active', NULL, '82936', NULL, '2020-05-09 11:51:22', '2020-07-21 00:23:05', 0, NULL, 0, NULL, NULL, NULL, 0, 29),
(280, 61, NULL, 'ert6ygfd@gmail.com', '+17796321456', 5, 0x00, 0x00, 'active', NULL, '62635', NULL, '2020-05-09 11:51:22', '2020-07-21 00:23:05', 0, NULL, 0, NULL, NULL, NULL, 0, 29),
(281, 62, NULL, 'ertyhjnbv@gmail.com', '+17796324324', 5, 0x00, 0x00, 'active', NULL, '29403', NULL, '2020-05-09 11:53:07', '2020-07-21 00:23:05', 0, NULL, 0, NULL, NULL, NULL, 0, 30),
(282, 63, NULL, 'wertygfcdxcv@gmail.com', '+17796324236', 5, 0x00, 0x00, 'active', NULL, '71348', NULL, '2020-05-09 11:53:07', '2020-07-21 00:23:05', 0, NULL, 0, NULL, NULL, NULL, 0, 30),
(283, 64, NULL, 'sdrfgfdsdfg@gmail.com', '+17796325856', 5, 0x00, 0x00, 'active', NULL, '81310', NULL, '2020-05-09 11:53:54', '2020-07-21 00:23:05', 0, NULL, 0, NULL, NULL, NULL, 0, 31),
(284, 65, NULL, 'ertyujhbvc@gmail.com', '+17796324525', 5, 0x00, 0x00, 'active', NULL, '70080', NULL, '2020-05-09 11:53:54', '2020-07-21 00:23:05', 0, NULL, 0, NULL, NULL, NULL, 0, 31),
(285, 66, NULL, 'asthyg@gmail.com', '+17789554254', 5, 0x00, 0x00, 'active', NULL, '94435', NULL, '2020-05-09 11:55:21', '2020-07-21 00:23:05', 0, NULL, 0, NULL, NULL, NULL, 0, 32),
(286, 67, NULL, 'werjk@gmail.com', '+17796566236', 5, 0x00, 0x00, 'active', NULL, '71370', NULL, '2020-05-09 11:55:21', '2020-07-21 00:23:05', 0, NULL, 0, NULL, NULL, NULL, 0, 32),
(287, 68, NULL, 'asdfhgfd@gmail.com', '+17795655632', 5, 0x00, 0x00, 'active', NULL, '37754', NULL, '2020-05-09 12:00:57', '2020-07-21 00:23:05', 0, NULL, 0, NULL, NULL, NULL, 0, 33),
(288, 69, NULL, 'dfgterd@gmail.com', '+17796542369', 5, 0x00, 0x00, 'active', NULL, '83418', NULL, '2020-05-09 12:00:57', '2020-07-21 00:23:05', 0, NULL, 0, NULL, NULL, NULL, 0, 33),
(289, 70, NULL, 'wertytgfds@gmail.com', '+17786542365', 5, 0x00, 0x00, 'active', NULL, '10791', NULL, '2020-05-09 12:01:57', '2020-07-21 00:23:05', 0, NULL, 0, NULL, NULL, NULL, 0, 34),
(290, 71, NULL, 'sdfgtrewa@gmail.com', '+17796542365', 5, 0x00, 0x00, 'active', NULL, '16104', NULL, '2020-05-09 12:01:57', '2020-07-21 00:23:05', 0, NULL, 0, NULL, NULL, NULL, 0, 34),
(291, 72, NULL, 'sdfhggfd@gmail.com', '+17786324236', 5, 0x00, 0x00, 'active', NULL, '64460', NULL, '2020-05-09 12:04:06', '2020-07-21 00:23:05', 0, NULL, 0, NULL, NULL, NULL, 0, 35),
(292, 73, NULL, 'asdfgfds@gmail.com', '+17786327436', 5, 0x00, 0x00, 'active', NULL, '45875', NULL, '2020-05-09 12:04:06', '2020-07-21 00:23:05', 0, NULL, 0, NULL, NULL, NULL, 0, 35),
(293, 74, NULL, 'am@gmail.com', '+17798552145', 3, 0x00, 0x00, 'active', NULL, '68735', NULL, '2020-05-09 12:06:08', '2020-07-21 00:23:05', 0, NULL, 0, NULL, NULL, NULL, 0, 36),
(294, 75, NULL, 'am1@gmail.com', '+17795215632', 3, 0x00, 0x00, 'active', NULL, '39959', NULL, '2020-05-09 12:06:08', '2020-07-21 00:23:05', 0, NULL, 0, NULL, NULL, NULL, 0, 36),
(295, 76, NULL, 'asdfghgf@gmail.com', '+17795321563', 6, 0x00, 0x00, 'active', NULL, '64319', NULL, '2020-05-09 12:08:11', '2020-07-21 00:23:05', 0, NULL, 0, NULL, NULL, NULL, 0, 37),
(296, 77, NULL, 'dfghytrewa@gmail.com', '+17796325236', 6, 0x00, 0x00, 'active', NULL, '41798', NULL, '2020-05-09 12:08:11', '2020-07-21 00:23:05', 0, NULL, 0, NULL, NULL, NULL, 0, 37),
(297, 78, NULL, 'tt3922724@gmail.com', '+963947925185', 2, 0x00, 0x00, 'active', NULL, '10168', NULL, '2020-05-09 13:49:58', '2020-07-20 17:00:52', 0, NULL, 0, NULL, NULL, NULL, 1, NULL),
(298, 79, NULL, 'tt8562112@gmail.com', '+963947935185', 2, 0x00, 0x00, 'active', NULL, '37600', NULL, '2020-05-09 13:51:06', '2020-07-20 17:00:52', 0, NULL, 0, NULL, NULL, NULL, 1, NULL),
(299, 80, NULL, 'rafi@yahoo.om', '+971554444443', 2, 0x00, 0x00, 'active', NULL, '80776', NULL, '2020-05-09 15:20:19', '2020-07-20 17:00:52', 0, NULL, 0, NULL, NULL, NULL, 1, NULL),
(300, 81, NULL, 'mrwan@gmail.com', '+971555544444', 2, 0x00, 0x00, 'active', NULL, '21603', NULL, '2020-05-09 15:22:28', '2020-07-20 17:00:52', 0, NULL, 0, NULL, NULL, NULL, 1, NULL),
(301, 82, NULL, 'amjadabla1@gmail.com', '+17784517154', 5, 0x00, 0x00, 'active', NULL, '99925', NULL, '2020-05-11 00:57:28', '2020-07-21 00:23:05', 0, NULL, 0, NULL, NULL, NULL, 0, 38),
(302, 83, NULL, 'amjadabla47@gmail.com', '+17784517174', 5, 0x00, 0x00, 'active', NULL, '23952', NULL, '2020-05-11 00:57:28', '2020-07-21 00:23:05', 0, NULL, 0, NULL, NULL, NULL, 0, 38),
(303, 84, NULL, 'amc-2@unifi.solutions', '+15144621125', 5, 0x00, 0x00, 'active', NULL, '23226', NULL, '2020-05-11 14:33:01', '2020-07-21 00:23:05', 0, NULL, 0, NULL, NULL, NULL, 0, 39),
(304, 85, '$2a$10$mwsLMsXRxq/ak/OSlbTHuOnIa8kSrlnj9GhQK26ta2sMXeMj.oc9m', 'developers2@smartiot.ae', '+19844621125', 5, 0x00, 0x00, 'active', '::1', '76529', '2020-07-23 22:51:51', '2020-05-11 14:33:01', '2020-07-23 21:52:35', 0, 0x89b526421a4042679b73a2377a2067aa, 0, '2020-07-23 12:26:07', NULL, NULL, 0, 39),
(305, 86, NULL, 'amc-5@unifi.solutions', '+19186663332', 5, 0x00, 0x00, 'active', NULL, '84149', NULL, '2020-05-11 15:30:07', '2020-07-21 00:23:05', 0, NULL, 0, NULL, NULL, NULL, 0, 40),
(306, 87, '$2a$10$88FvSpb09706ZnkzfXQI6uvCavMUy5YCUL/n9JNh05EsOufqWkNy2', 'amc-55@unifi.solutions', '+19186663333', 5, 0x00, 0x00, 'active', '::ffff:5.43.221.52', '79471', '2020-06-30 13:32:10', '2020-05-11 15:30:07', '2020-07-21 00:23:05', 0, 0xb38ac3ecb891493b825633a73ef8b217, 0, '2020-06-27 17:17:14', NULL, NULL, 0, 40),
(307, 88, NULL, 'newadmin@gmail.com', '+971552552552', 2, 0x00, 0x00, 'active', NULL, '22039', NULL, '2020-05-13 12:13:41', '2020-07-20 17:00:52', 0, NULL, 0, NULL, NULL, NULL, 1, NULL),
(308, 89, '$2a$10$WQd6mQOL2vSBdGVARnKGKeks/tmKNpTYBt33/hRHs5lJZcnP1tIBq', 'developers9@smartiot.ae\r\n', '+963998449784', 5, 0x00, 0x00, 'active', '194.61.127.222', '84446', '2020-05-21 10:26:19', '2020-05-13 19:06:00', '2020-07-21 00:23:05', 0, NULL, 0, NULL, NULL, NULL, 0, 41),
(309, 90, NULL, 'tesito6422@toracw.com', '+963992355545', 5, 0x00, 0x00, 'active', NULL, '69688', NULL, '2020-05-13 19:06:00', '2020-07-21 00:23:05', 0, NULL, 0, NULL, NULL, NULL, 0, 41),
(310, 91, '$2a$10$C8BuJareRxjmUJMcGEeuYOjbfDdsabmXbFahJioobEePxwEE6ZpqC', 'developers3@smartiot.ae', '+971555566555', 4, 0x00, 0x00, 'active', '::1', '32594', '2020-07-28 14:37:06', '2020-05-13 19:26:31', '2020-07-28 13:37:53', 0, 0xe388a160251a4fc4a68d09a07cf1f724, 0, NULL, NULL, NULL, 0, 42),
(311, 92, NULL, 'brecklynn11@cowboywmk.com', '+971556555555', 4, 0x00, 0x00, 'active', NULL, '97683', NULL, '2020-05-13 19:26:31', '2020-07-21 00:23:05', 0, NULL, 0, NULL, NULL, NULL, 0, 42),
(312, 93, NULL, 'yessiree@screamingfist.xyz', '+971552444565', 3, 0x00, 0x00, 'active', NULL, '85542', NULL, '2020-05-13 19:37:32', '2020-07-21 00:23:05', 0, NULL, 0, NULL, NULL, NULL, 0, 43),
(313, 94, NULL, 'yessiree-1@screamingfist.xyz', '+97125552255', 3, 0x00, 0x00, 'active', NULL, '86394', NULL, '2020-05-13 19:37:32', '2020-07-21 00:23:05', 0, NULL, 0, NULL, NULL, NULL, 0, 43),
(314, 95, NULL, 'eklod_azerty3@reitralsa.tk', '+971552525255', 3, 0x00, 0x00, 'active', NULL, '27658', NULL, '2020-05-13 19:40:46', '2020-07-21 00:23:05', 0, NULL, 0, NULL, NULL, NULL, 0, 44),
(315, 96, NULL, 'eklod_azerty4@reitralsa.tk', '+971552055200', 3, 0x00, 0x00, 'active', NULL, '86959', NULL, '2020-05-13 19:40:46', '2020-07-21 00:23:05', 0, NULL, 0, NULL, NULL, NULL, 0, 44),
(316, 97, NULL, 'qironma@amecve.gq', '+971774544544', 3, 0x00, 0x00, 'active', NULL, '40763', NULL, '2020-05-13 19:44:13', '2020-07-21 00:23:05', 0, NULL, 0, NULL, NULL, NULL, 0, 45),
(317, 98, NULL, 'qironma22@amecve.gq', '+971558856655', 3, 0x00, 0x00, 'active', NULL, '61021', NULL, '2020-05-13 19:44:13', '2020-07-21 00:23:05', 0, NULL, 0, NULL, NULL, NULL, 0, 45),
(318, 99, NULL, '9jhona@bottlacfue.gq', '+971955552555', 6, 0x00, 0x00, 'active', NULL, '94941', NULL, '2020-05-13 19:46:52', '2020-07-21 00:23:05', 0, NULL, 0, NULL, NULL, NULL, 0, 46),
(319, 100, NULL, '9jhona-2@bottlacfue.gq', '+97197799779', 6, 0x00, 0x00, 'active', NULL, '12475', NULL, '2020-05-13 19:46:52', '2020-07-21 00:23:05', 0, NULL, 0, NULL, NULL, NULL, 0, 46);

--
-- Triggers `users`
--
DELIMITER $$
CREATE TRIGGER `create_preferences` AFTER INSERT ON `users` FOR EACH ROW BEGIN
    -- statements
    INSERT INTO preferences (user_id) values (NEW.id);
END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `fk_users_roles` (`role_id`),
  ADD KEY `fk_user_people` (`person_id`),
  ADD KEY `fk_users_companies` (`company_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=420;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users`
--


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
COMMIT;