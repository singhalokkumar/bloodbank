-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 27, 2020 at 08:02 AM
-- Server version: 10.4.11-MariaDB
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
-- Database: `donor`
--

-- --------------------------------------------------------

--
-- Table structure for table `donors`
--

CREATE TABLE `donors` (
  `id` int(11) NOT NULL,
  `fname` varchar(45) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `mname` varchar(30) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `lname` varchar(45) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `sex` varchar(10) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `bType` varchar(2) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `dob` date NOT NULL,
  `address` varchar(50) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `city` varchar(30) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `donationDate` date NOT NULL,
  `stats` text CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `temp` varchar(10) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `pulse` varchar(10) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `bp` varchar(10) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `weight` int(11) NOT NULL,
  `hemoglobin` varchar(25) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `hbsag` varchar(10) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `aids` varchar(15) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `malariaSmear` varchar(20) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `hematocrit` varchar(15) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `phone` varchar(10) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `mobile` varchar(11) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `f_name` varchar(35) NOT NULL,
  `m_name` varchar(15) DEFAULT NULL,
  `l_name` varchar(35) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `b_day` date NOT NULL,
  `prc_nr` int(25) NOT NULL,
  `designation` varchar(25) NOT NULL,
  `landline` varchar(10) DEFAULT NULL,
  `mobile_nr` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `f_name`, `m_name`, `l_name`, `username`, `password`, `b_day`, `prc_nr`, `designation`, `landline`, `mobile_nr`) VALUES
(11, 'Varun', NULL, 'Shrivastava', 'vs_lala', '123', '1994-07-17', 2147483647, 'Student', '2632181', '9827983762');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `last_name` varchar(50) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `email` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(10) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `b_type` varchar(10) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `address` varchar(500) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `city` varchar(100) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `mobile` varchar(13) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `dob`, `gender`, `b_type`, `address`, `city`, `mobile`, `created_at`) VALUES
(6, 'Alok', 'Singh', 'singhalokkumar430@gmail.com', '2020-10-14', 'Male', 'O+', 'House No 40 Kartik Nagar Telco Kharangajhar', 'Jamshedpur', '07461891999', '2020-10-27 04:41:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `donors`
--
ALTER TABLE `donors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `prc_nr` (`prc_nr`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `donors`
--
ALTER TABLE `donors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
