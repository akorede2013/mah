-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 19, 2026 at 12:33 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school`
--

-- --------------------------------------------------------

--
-- Table structure for table `new students`
--

CREATE TABLE `new students` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `age` varchar(30) NOT NULL,
  `class` varchar(40) NOT NULL,
  `address` varchar(45) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `new students`
--

INSERT INTO `new students` (`id`, `name`, `age`, `class`, `address`, `email`) VALUES
(1, 'daniel', '20', 'sss1', 'tudun fulani', 'daniel.gomati123@gamil.com'),
(2, 'abdulhamid', '19', 'sss1', 'barangoni bwari top hill villa', 'abdul.musty134@gmail.com'),
(3, 'mahdiyah', '20', 'sss1', 'barangoni bwari top hill villa', 'mahdiya.temi345@gmail.com'),
(4, 'sameeha', '10', 'jss2', 'barangoni bwari top hill villa', 'sameeha.titi678@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `principal`
--

CREATE TABLE `principal` (
  `id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `age` varchar(30) NOT NULL,
  `address` varchar(40) NOT NULL,
  `position` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `principal`
--

INSERT INTO `principal` (`id`, `name`, `age`, `address`, `position`) VALUES
(6, '`james', '20', 'old viva hospital', '20'),
(8, 'jasper', '21', 'ushafa', '5'),
(9, 'eric', '20', 'ushafa bwari abuja', '15'),
(11, 'Judith J', '47', 'Bwari', 'Manager'),
(12, 'princess joanna', '80', 'near queen and king school', 'actress'),
(13, 'Jema', '40', 'Bwari', '12');

-- --------------------------------------------------------

--
-- Table structure for table `pupils`
--

CREATE TABLE `pupils` (
  `id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `age` varchar(30) NOT NULL,
  `class` varchar(40) NOT NULL,
  `address` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pupils`
--

INSERT INTO `pupils` (`id`, `name`, `age`, `class`, `address`, `email`) VALUES
(2, 'abdulhamid', '19', 'sss1', 'barangoni bwari top ', 'abdul.musty134@gmail.com'),
(5, 'hamidu', '13', 'sss1', 'BwariHH', 'hamidu@gmail.com'),
(6, 'Judith James', '13', 'sss1', 'SCC ROAD', 'email'),
(7, 'mira Matthew', '23', 's.s.2', 'Bwari scc road', 'miracool@gmail.com'),
(8, 'mahdiyah', '6', 'basic2', 'Bwari', 'email');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `age` varchar(30) NOT NULL,
  `class` varchar(40) NOT NULL,
  `address` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `age`, `class`, `address`, `email`) VALUES
(2, 'abdulhamid', '19', 'sss1', 'barangoni bwari top ', 'abdul.musty134@gmail.com'),
(5, 'leny miracle', '15', 'sss1', 'tudun fulani kubwa', 'ememessien197@gmail.com'),
(6, 'abdulqudus', '12', 'sss1', 'bragoni', 'ememessien197@gmail.com'),
(7, 'abdulqudus', '12', 'sss1', 'bragoni', 'ememessien197@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `age` varchar(30) NOT NULL,
  `address` varchar(40) NOT NULL,
  `position` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `name`, `age`, `address`, `position`) VALUES
(1, 'hamid', '20', 'old viva hospital', '20'),
(3, 'HAMID jpy', '30000', 'bragoni', '12888'),
(5, 'Emem Essien', '10', 'tudun fulani', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `new students`
--
ALTER TABLE `new students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `principal`
--
ALTER TABLE `principal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pupils`
--
ALTER TABLE `pupils`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `new students`
--
ALTER TABLE `new students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `principal`
--
ALTER TABLE `principal`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `pupils`
--
ALTER TABLE `pupils`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
