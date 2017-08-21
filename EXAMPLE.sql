-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 21, 2017 at 10:51 PM
-- Server version: 10.1.24-MariaDB
-- PHP Version: 7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pro`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee_info`
--

CREATE TABLE `employee_info` (
  `serial_id` int(11) NOT NULL,
  `employee_id` varchar(50) DEFAULT NULL,
  `employee_firstname` varchar(50) DEFAULT NULL,
  `employee_lastname` varchar(50) DEFAULT NULL,
  `employee_photo` varchar(50) DEFAULT NULL,
  `employee_designation` varchar(50) DEFAULT NULL,
  `employee_department` varchar(50) DEFAULT NULL,
  `employee_dob` varchar(50) DEFAULT NULL,
  `employee_NID` varchar(50) DEFAULT NULL,
  `employee_leave` int(11) DEFAULT NULL,
  `employee_salary` float DEFAULT NULL,
  `employee_phone` varchar(50) DEFAULT NULL,
  `employee_address` varchar(50) DEFAULT NULL,
  `login_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_info`
--

INSERT INTO `employee_info` (`serial_id`, `employee_id`, `employee_firstname`, `employee_lastname`, `employee_photo`, `employee_designation`, `employee_department`, `employee_dob`, `employee_NID`, `employee_leave`, `employee_salary`, `employee_phone`, `employee_address`, `login_id`) VALUES
(1, '123rrs', 'nazir', 'ahmmed', 'uploads/Lighthouse.jpg', 'super admin', 'Administration', '10/21/2016', '420', 28, 28000, '01687554', 'barmuda', '123rrs'),
(11, '007ebea75', 'Genghis', 'Khan', 'uploads/GKhan.PNG', 'operator', 'Employee', '06/14/2016', NULL, NULL, 15000, '01814054', 'bd', '007ebea75'),
(12, '5491deec', 'Adolf', 'Hitler', 'uploads/AHitler.PNG', 'admin', 'Administration', '07/04/2016', NULL, NULL, 20000, '0191097', 'austria', '5491deec'),
(13, '0e607237e', 'Mister', 'Bean', 'uploads/bean.jpg', 'operator', 'Employee', '', NULL, NULL, 15000, '+9992260815', 'africa', '0e607237e'),
(14, 'c69c565e', 'Sakib', 'Vai', 'uploads/S.jpg', NULL, 'Administration', '04/05/2016', NULL, NULL, NULL, '01747912', 'Bangladesh', 'c69c565e'),
(15, '9c5d3fd5', 'Nazir', 'Ahmmed', 'uploads/VUBON.jpg', NULL, 'Management', '10/21/2016', NULL, NULL, NULL, '01688554', 'Lalbag', '9c5d3fd5'),
(16, 'f16f3fd5', 'Tuhin', 'Vai', 'uploads/tuhin.jpg', NULL, 'Employee', '08/01/2016', NULL, NULL, NULL, '01687499', 'Dhaka', 'f16f3fd5');

-- --------------------------------------------------------

--
-- Table structure for table `employee_service_info`
--

CREATE TABLE `employee_service_info` (
  `serial_id` int(11) NOT NULL,
  `service_date` varchar(30) DEFAULT NULL,
  `login_time` varchar(20) DEFAULT NULL,
  `logout_time` varchar(20) DEFAULT '',
  `late_reason` varchar(255) DEFAULT NULL,
  `early_reason` varchar(255) DEFAULT NULL,
  `over_time` int(11) DEFAULT NULL,
  `less_time` int(11) DEFAULT NULL,
  `daily_salary` float DEFAULT NULL,
  `asked_leave` varchar(21) DEFAULT NULL,
  `leave_reason` text,
  `approve_overtime` tinyint(1) DEFAULT '0',
  `approve_leave` tinyint(1) DEFAULT '0',
  `login_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_service_info`
--

INSERT INTO `employee_service_info` (`serial_id`, `service_date`, `login_time`, `logout_time`, `late_reason`, `early_reason`, `over_time`, `less_time`, `daily_salary`, `asked_leave`, `leave_reason`, `approve_overtime`, `approve_leave`, `login_id`) VALUES
(160, '18/08/2017', '02:50:00 AM', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '9c5d3fd5'),
(161, '18/08/2017', '03:03:06 AM', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'c69c565e'),
(162, '18/08/2017', '03:03:16 AM', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'f16f3fd5'),
(163, '22/08/2017', '00:23:49 AM', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'f16f3fd5'),
(164, '22/08/2017', '01:58:26 AM', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '9c5d3fd5');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `login_unique_id` varchar(20) NOT NULL,
  `employee_email` varchar(100) DEFAULT NULL,
  `employee_password` varchar(150) NOT NULL,
  `employee_role` varchar(50) DEFAULT NULL,
  `employee_status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`login_unique_id`, `employee_email`, `employee_password`, `employee_role`, `employee_status`) VALUES
('007ebea75', 'sumu@g.com', 'a223f3fec3c0d51f40869e68af87c6df', 'operator', 1),
('0e607237e', 'add@g.com', '34ec78fcc91ffb1e54cd85e4a0924332', 'operator', 1),
('123rrs', 'admin@g.com', '21232f297a57a5a743894a0e4a801fc3', 'super admin', 1),
('5491deec', 'goodvubo@gmail.com', '004a2dc31dea0c514e8ab6d4a9d2f3b1', 'admin', 1),
('9c5d3fd5', 'vubon@g.com', '151d18eb7d1acfbdefb8da9a76cc38ad', NULL, 1),
('c69c565e', 'sakib.cse@gmail.com', '2e0f8da76641999656b58351040a5d01', NULL, 1),
('f16f3fd5', 'tuhin@vai.com', 'b43ae3359bac8c4fa6c4a58f0ee16e5e', NULL, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee_info`
--
ALTER TABLE `employee_info`
  ADD PRIMARY KEY (`serial_id`),
  ADD UNIQUE KEY `employee_id` (`employee_id`),
  ADD KEY `login_id` (`login_id`);

--
-- Indexes for table `employee_service_info`
--
ALTER TABLE `employee_service_info`
  ADD PRIMARY KEY (`serial_id`),
  ADD KEY `login_id` (`login_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`login_unique_id`),
  ADD UNIQUE KEY `employee_email` (`employee_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee_info`
--
ALTER TABLE `employee_info`
  MODIFY `serial_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `employee_service_info`
--
ALTER TABLE `employee_service_info`
  MODIFY `serial_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee_info`
--
ALTER TABLE `employee_info`
  ADD CONSTRAINT `employee_info_ibfk_1` FOREIGN KEY (`login_id`) REFERENCES `login` (`login_unique_id`);

--
-- Constraints for table `employee_service_info`
--
ALTER TABLE `employee_service_info`
  ADD CONSTRAINT `employee_service_info_ibfk_1` FOREIGN KEY (`login_id`) REFERENCES `login` (`login_unique_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
