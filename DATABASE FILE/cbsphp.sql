-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2023 at 07:31 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cbsphp`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking_list`
--

CREATE TABLE `booking_list` (
  `id` int(30) NOT NULL,
  `ref_code` varchar(100) NOT NULL,
  `client_id` int(30) NOT NULL,
  `cab_id` int(30) NOT NULL,
  `pickup_zone` text NOT NULL,
  `drop_zone` text NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '0 = Pending,\r\n1 = Driver has Confirmed,\r\n2 = Pickup,\r\n3 = drop-off,\r\n4 = cancelled',
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking_list`
--

INSERT INTO `booking_list` (`id`, `ref_code`, `client_id`, `cab_id`, `pickup_zone`, `drop_zone`, `status`, `date_created`, `date_updated`) VALUES
(2, '202302-00003', 1, 2, 'Noida Sector 18 Metro Station', 'Anand Vihar Bus Terminal', 4, '2023-02-16 13:53:27', '2023-03-26 22:07:49'),
(3, '202302-00003', 1, 2, 'New Ashok Nagar Metro Station', 'Faridabad Bus Station', 3, '2023-02-16 15:33:10', '2023-03-26 22:08:01'),
(4, '202303-00001', 1, 2, 'Dhaula Kuan Metro Station', 'Indraprastha Metro Station', 3, '2023-03-23 19:22:40', '2023-03-26 22:08:13'),
(5, '202303-00013', 3, 14, 'Dhaula Kuan Metro Station', 'Lajpat Nagar Metro Station', 3, '2023-03-23 09:14:08', '2023-03-23 09:14:08'),
(6, '202303-00013', 3, 4, 'Mayur Vihar Phase 1 Metro Station', 'Rajiv Chowk Metro Station', 0, '2023-03-16 09:21:29', '2023-03-27 14:37:43'),
(7, '202303-00013', 4, 14, 'Delhi Airport', 'Faridabad Bus Station', 3, '2023-03-17 11:43:32', '2023-03-17 11:47:32'),
(8, '202303-00013', 5, 14, 'Connaught Place Metro Station', 'Sarita Vihar Metro Station', 3, '2023-03-17 16:44:23', '2023-03-17 16:44:23'),
(9, '202303-00013', 6, 14, 'Rajiv Chowk Metro Station', 'Anand Vihar Bus Terminal', 3, '2023-03-21 07:22:27', '2023-03-21 07:22:27'),
(10, '202303-00013', 7, 14, 'Lajpat Nagar Metro Station', 'Hauz Khas Metro Station', 3, '2023-03-21 06:38:44', '2023-03-21 06:38:44'),
(11, '202303-00013', 8, 14, 'Noida Sector 18 Metro Station', 'Lajpat Nagar Metro Station', 4, '2023-03-24 11:00:27', '2023-03-24 11:00:27'),
(12, '202303-00013', 9, 14, 'Noida Sector 18 Metro Station', 'Dhaula Kuan Metro Station', 3, '2023-03-24 14:00:15', '2023-03-24 14:00:15'),
(13, '202303-00013', 10, 14, 'Indraprastha Metro Station', 'Delhi Airport', 3, '2023-03-25 17:17:16', '2023-03-25 17:17:16'),
(14, '202303-00013', 11, 14, 'Delhi Cantonment Railway Station', 'Noida Sector 18 Metro Station', 4, '2023-03-27 07:37:12', '2023-03-27 07:37:12'),
(15, '202303-00013', 12, 3, 'New Ashok Nagar Metro Station', 'Rajiv Chowk Metro Station', 3, '2023-03-16 05:23:58', '2023-03-16 05:23:58'),
(16, '202303-00013', 12, 2, 'Delhi Airport', ' Noida Sector 18 Metro Station', 4, '2023-03-17 06:39:50', '2023-03-17 06:39:50'),
(17, '202303-00013', 12, 7, 'Gautam Buddha University', 'Galaxy Blue Sapphire', 3, '2023-03-24 17:00:44', '2023-03-24 17:00:44'),
(18, '202303-00013', 12, 8, 'The Millennium School', 'Atta Market', 3, '2023-03-24 05:57:25', '2023-03-24 05:57:25'),
(19, '202303-00013', 12, 11, 'Atta Market', 'GIP Mall', 4, '2023-03-26 19:07:56', '2023-03-26 19:07:56'),
(20, '202303-00013', 12, 9, 'The Millennium School', 'Logix City Centre', 3, '2023-03-26 09:25:13', '2023-03-26 09:25:13'),
(21, '202303-00013', 4, 9, 'Akshardham Temple', 'Logix City Centre', 2, '2023-03-27 21:42:40', '2023-03-27 21:44:22'),
(22, '202303-00013', 9, 1, 'Gautam Buddha University', 'Worlds of Wonder', 2, '2023-03-27 21:43:44', '2023-03-27 21:45:22'),
(23, '202303-00013', 12, 14, 'GIP Mall', 'Gautam Buddha University', 3, '2023-03-27 22:50:55', '2023-03-27 22:53:23'),
(24, '202303-00013', 12, 6, 'Galaxy Blue Sapphire', 'Akshardham Temple', 4, '2023-03-27 22:54:41', '2023-03-27 22:54:51');

-- --------------------------------------------------------

--
-- Table structure for table `cab_list`
--

CREATE TABLE `cab_list` (
  `id` int(30) NOT NULL,
  `reg_code` varchar(100) NOT NULL,
  `category_id` int(30) NOT NULL,
  `cab_reg_no` varchar(200) NOT NULL,
  `body_no` varchar(100) NOT NULL,
  `cab_model` text NOT NULL,
  `cab_driver` text NOT NULL,
  `driver_contact` text NOT NULL,
  `driver_address` text NOT NULL,
  `password` text NOT NULL,
  `image_path` text,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cab_list`
--

INSERT INTO `cab_list` (`id`, `reg_code`, `category_id`, `cab_reg_no`, `body_no`, `cab_model`, `cab_driver`, `driver_contact`, `driver_address`, `password`, `image_path`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(1, '202302-00002', 1, 'ASTR0306', 'Fusion-130', 'Ford Fusion', 'Rajiv', '09123456789', 'J-14, Sector 18, Noida', '5f4dcc3b5aa765d61d8327deb882cf99', 'uploads/dirvers/1.png?v=1644981064', 1, 0, '2023-03-02 10:59:12', '2023-03-27 22:04:44'),
(2, '202302-00001', 2, 'ASTR0715', 'Camry-440', 'Toyota Camry', 'Arjun', '09456987123', 'Sector 5, Pushp Vihar, New Delhi', '7ad1aea197a92805ac70f71bdec579d3', 'uploads/dirvers/2.png?v=1644981833', 1, 0, '2023-03-02 11:13:30', '2023-03-27 22:04:51'),
(3, '202303-00001', 1, 'ASTR0123', 'Prius-1010', 'Toyota Prius', 'Ranjit ', '7485658965', 'Building No. B-70, Noida', '5f4dcc3b5aa765d61d8327deb882cf99', 'uploads/dirvers/3.png?v=1648051050', 1, 0, '2023-03-02 21:42:30', '2023-03-27 22:05:00'),
(4, '202303-00002', 1, 'ASTR0770', 'Soul-009', 'Kia Soul', 'Ajay', '7896478540', 'Sector 63, Noida', '5f4dcc3b5aa765d61d8327deb882cf99', NULL, 1, 0, '2023-03-02 21:59:17', '2023-03-27 14:44:37'),
(5, '202303-00003', 1, 'ASTR0741', 'Civic-7781', 'Honda Civic', 'Rahul', '7895410000', 'E-58, Sector 11, Noida', '5f4dcc3b5aa765d61d8327deb882cf99', 'uploads/dirvers/5.png?v=1648311707', 1, 0, '2023-03-02 22:06:47', '2023-03-27 14:44:40'),
(6, '202303-00004', 2, 'ASTR0850', 'ESV-7700', 'Cadillac Escalade ESV', 'Vikram', '7850001010', 'DLF City Phase I, Gurgaon', '5f4dcc3b5aa765d61d8327deb882cf99', 'uploads/dirvers/6.png?v=1648311872', 1, 0, '2023-03-02 22:09:32', '2023-03-27 14:44:43'),
(7, '202303-00005', 1, 'ASTR0555', 'iTen-1010', 'Hyundai i10', 'Dev', '4785478500', 'C-8, Sector 7, Noida', '5f4dcc3b5aa765d61d8327deb882cf99', 'uploads/dirvers/7.png?v=1648312063', 1, 0, '2023-03-02 22:12:43', '2023-03-02 22:12:43'),
(8, '202303-00006', 1, 'ASTR0020', 'Skoda-162TSI', 'Skoda Superb 162TSI', 'Abhay', '2547854444', 'A-3, Sector 16, Noida', '5f4dcc3b5aa765d61d8327deb882cf99', NULL, 1, 0, '2023-03-02 22:16:57', '2023-03-27 14:44:48'),
(9, '202303-00007', 1, 'ASTRO0022', 'Picanto-7785', 'Kia Picanto', 'Arvind', '4558889850', 'Sector 3 Dwarka, New Delhi', '5f4dcc3b5aa765d61d8327deb882cf99', NULL, 1, 0, '2023-03-02 22:18:41', '2023-03-27 14:44:51'),
(10, '202303-00008', 3, 'ASTR0089', 'Galaxy-7777', 'Ford Galaxy', 'Sameer', '2589654570', 'MG Road, Gurgaon', '5f4dcc3b5aa765d61d8327deb882cf99', NULL, 1, 0, '2023-03-02 13:00:24', '2023-03-27 14:44:53'),
(11, '202303-00009', 1, 'ASTR0047', 'Passat-7890', 'Volkswagen Passat', 'Sanjay', '7896666666', 'Sector 3 Dwarka, New Delhi', '5f4dcc3b5aa765d61d8327deb882cf99', NULL, 1, 0, '2023-03-02 13:02:37', '2023-03-27 14:44:57'),
(12, '202303-00010', 3, 'ASTR0258', 'Touran-8989', 'Volkswagen Touran', 'Ramesh', '7412563250', 'C-8, Sector 7, Noida', '5f4dcc3b5aa765d61d8327deb882cf99', NULL, 1, 0, '2023-03-02 13:04:26', '2023-03-27 14:44:59'),
(13, '202303-00011', 1, 'ASTR0885', 'Toledo-5555', 'SEAT Toledo', 'Mahesh', '7895555540', '29 Lake Floyd Circle', '5f4dcc3b5aa765d61d8327deb882cf99', NULL, 1, 0, '2023-03-02 13:05:37', '2023-03-27 14:45:02'),
(14, '202303-00012', 1, 'ASTR0135', 'i30T-0135', 'Hyundai i30 Tourer', 'Gopal', '7412580000', 'E-58, Sector 11, Noida', '5f4dcc3b5aa765d61d8327deb882cf99', 'uploads/dirvers/14.png?v=1648366006', 1, 0, '2023-03-02 13:11:46', '2023-03-27 13:11:46');

-- --------------------------------------------------------

--
-- Table structure for table `category_list`
--

CREATE TABLE `category_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category_list`
--

INSERT INTO `category_list` (`id`, `name`, `description`, `delete_flag`, `status`, `date_created`, `date_updated`) VALUES
(1, '5 Seater', 'A 4-door passenger car with a trunk that is separate from the passengers with a three-box body: the engine, the area for passengers, and the trunk.', 0, 1, '2023-03-01 10:03:54', '2023-03-02 13:03:14'),
(2, '6 Seater', 'Quisque iaculis ipsum egestas nisi pharetra, ac laoreet felis tincidunt. Cras id gravida justo. Nulla non gravida risus, vel finibus leo. Phasellus vel eros ligula. Fusce a erat sed quam vehicula convallis.', 0, 1, '2023-03-01 10:08:10', '2023-03-27 14:45:51'),
(3, '7 Seater', 'Flexible, allowing you to switch between lots of seats or lots of boot space. The biggest manage to do both - comfortably taking six passengers and their stuff.', 0, 1, '2023-03-03 12:59:29', '2023-03-27 14:45:56');

-- --------------------------------------------------------

--
-- Table structure for table `client_list`
--

CREATE TABLE `client_list` (
  `id` int(30) NOT NULL,
  `firstname` text NOT NULL,
  `middlename` text,
  `lastname` text NOT NULL,
  `gender` text NOT NULL,
  `contact` text NOT NULL,
  `address` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` text NOT NULL,
  `image_path` text,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_added` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `client_list`
--

INSERT INTO `client_list` (`id`, `firstname`, `middlename`, `lastname`, `gender`, `contact`, `address`, `email`, `password`, `image_path`, `status`, `delete_flag`, `date_created`, `date_added`) VALUES
(1, 'Mihir', 'J.', 'Kapoor', 'Male', '1478555560', 'J-14, Sector 18, Noida', 'Mihir@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'uploads/clients/1.png?v=1644995661', 1, 0, '2023-02-27 13:06:42', '2023-03-27 21:10:54'),
(2, 'Darshan', 'M.', 'Sharma', 'Male', '7412589666', 'Sector 5, Pushp Vihar, New Delhi', 'Darshan@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'uploads/clients/2.png?v=1648043485', 1, 0, '2023-03-01 19:36:24', '2023-03-27 21:10:40'),
(3, 'Priya', 'B.', 'Bhatnagar', 'Female', '7896585555', 'Building No. B-70, Sector 63, Noida', 'lsmith@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', NULL, 1, 0, '2023-03-01 13:13:38', '2023-03-27 21:11:06'),
(4, 'Prakash', 'P.', 'Rao', 'Male', '4589658888', 'E-58, Sector 11, Noida', 'Prakashb@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', NULL, 1, 0, '2023-03-01 13:34:09', '2023-03-27 21:11:16'),
(5, 'Simran', 'P.', 'Chaudhary', 'Female', '7850000010', 'DLF City Phase I, Gurgaon', 'Simranp@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', NULL, 1, 0, '2023-03-01 13:39:25', '2023-03-27 21:11:28'),
(6, 'Aarav', 'E.', 'Saxena', 'Male', '1458965555', 'C-8, Sector 7, Noida', 'Aarave@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', NULL, 1, 0, '2023-03-01 13:41:16', '2023-03-27 21:11:37'),
(7, 'Sanjay', 'S.', 'Desai', 'Male', '7850002145', 'A-3, Sector 16, Noida', 'Sanjays@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', NULL, 1, 0, '2023-03-01 13:54:26', '2023-03-27 21:11:52'),
(8, 'Rohan', 'F.', 'Mehta', 'Male', '1458965555', 'MG Road, Gurgaon', 'Rohank@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', NULL, 1, 0, '2023-03-01 13:56:19', '2023-03-27 21:12:06'),
(9, 'Sonal', 'J.', 'Jha', 'Female', '4565550010', 'Sector 57, Noida', 'Sonal@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', NULL, 1, 0, '2023-03-01 13:59:54', '2023-03-27 21:12:17'),
(10, 'Ashish', 'D.', 'Iyer', 'Male', '1458965555', 'Sector 6, Dwarka', 'Ashish@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', NULL, 1, 0, '2023-03-01 14:09:00', '2023-03-27 21:12:31'),
(11, 'Gita', 'J.', 'Singh', 'Female', '1456854100', 'Sector 51, Noida', 'Gitac@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', NULL, 1, 0, '2023-03-01 14:14:37', '2023-03-27 21:12:47'),
(12, 'Shweta', 'J.', 'Chandra', 'Female', '4569000010', 'Sector 18, Noida', 'Shweta@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'uploads/clients/12.png?v=1648370087', 1, 0, '2023-03-01 14:19:47', '2023-03-27 21:12:59'),
(13, 'Kavita', 'J.', 'Reddy', 'Female', '1456985555', 'DLF City Phase III', 'Kavita@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', NULL, 1, 0, '2023-03-27 21:10:14', NULL),
(14, 'Jaya', 'H.', 'Patel', 'Female', '4789652210', 'Sector 27, Noida', 'Jayahm@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', NULL, 1, 0, '2023-03-27 22:20:32', NULL),
(15, 'Meera', 'J.', 'Agarwal', 'Female', '1478523655', 'Sector 3 Dwarka, New Delhi', 'Meeraj@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', NULL, 1, 0, '2023-03-27 22:21:08', NULL),
(16, 'Sushma', 'M.', 'Nair', 'Female', '1458888888', 'J-14, Sector 18, Noida', 'Sushmab@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', NULL, 1, 0, '2023-03-27 22:21:53', NULL),
(17, 'Rajesh', 'K.', 'Seth', 'Male', '1458965555', 'E-58, Sector 11, Noida', 'Rajeshk@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', NULL, 1, 0, '2023-03-27 22:24:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Cab Booking System'),
(6, 'short_name', 'CBS - PHP'),
(11, 'logo', 'uploads/1648050060_cbslg.png'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/1648048980_cbss22.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', 'Liam', 'admin', 'd00f5d5217896fb7fd601412cb890830', 'uploads/1624000_adminicn.png', NULL, 1, '2023-01-19 14:02:37', '2023-03-27 21:51:35'),
(8, 'Martha', 'Heath', 'martha', '3003051F6D158F6687B8A820C46BFA80', 'uploads/avatar-8.png?v=1648396920', NULL, 2, '2023-03-01 16:14:00', '2023-03-27 21:47:00'),
(9, 'Andrew', 'Stokes', 'andrew', '5f4dcc3b5aa765d61d8327deb882cf99', 'uploads/avatar-9.png?v=1648396901', NULL, 2, '2023-03-27 21:46:41', '2023-03-27 21:46:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking_list`
--
ALTER TABLE `booking_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cab_id` (`cab_id`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `cab_list`
--
ALTER TABLE `cab_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `category_list`
--
ALTER TABLE `category_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_list`
--
ALTER TABLE `client_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`) USING HASH;

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
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
-- AUTO_INCREMENT for table `booking_list`
--
ALTER TABLE `booking_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `cab_list`
--
ALTER TABLE `cab_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `category_list`
--
ALTER TABLE `category_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `client_list`
--
ALTER TABLE `client_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking_list`
--
ALTER TABLE `booking_list`
  ADD CONSTRAINT `booking_list_ibfk_1` FOREIGN KEY (`cab_id`) REFERENCES `cab_list` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `booking_list_ibfk_2` FOREIGN KEY (`client_id`) REFERENCES `client_list` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cab_list`
--
ALTER TABLE `cab_list`
  ADD CONSTRAINT `cab_list_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category_list` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
