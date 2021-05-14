-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2021 at 06:01 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `exfeedback`
--

-- --------------------------------------------------------

--
-- Table structure for table `feedb`
--

CREATE TABLE `feedb` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `ContactNumber` varchar(10) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `comment` varchar(200) NOT NULL,
  `overallExperience` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedb`
--

INSERT INTO `feedb` (`ID`, `Name`, `ContactNumber`, `Email`, `comment`, `overallExperience`) VALUES
(1, 'chamara', '0775090080', 'chamara%254040gmail.com', 'kjhdsgcvjdbsj', 'kdjhbkwehb'),
(2, 'kalpa udayanga', '0719020080', 'kalpa@hotmail,com', 'asdfghjkl', 'very good'),
(4, 'mbvnldfkkmb', '0987654321', 'jjdvbfn@gmail.c0m', 'jdsh weiufgybwinf wiuebfuwh', 'good');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `feedb`
--
ALTER TABLE `feedb`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `feedb`
--
ALTER TABLE `feedb`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
