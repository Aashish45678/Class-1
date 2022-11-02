-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2022 at 05:20 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `table3`
--

-- --------------------------------------------------------

--
-- Table structure for table `worker`
--

CREATE TABLE `worker` (
  `Worker_Id` int(11) NOT NULL,
  `First_Name` char(25) DEFAULT NULL,
  `Last_Name` char(25) DEFAULT NULL,
  `Salary` int(15) DEFAULT NULL,
  `Joining_Date` datetime DEFAULT NULL,
  `Department` char(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `worker`
--

INSERT INTO `worker` (`Worker_Id`, `First_Name`, `Last_Name`, `Salary`, `Joining_Date`, `Department`) VALUES
(1, 'Monika', 'Arora', 100000, '2022-11-14 09:00:00', 'NCC(A)'),
(2, 'Aayush', 'Tiruwa', 90000, '2022-11-01 10:03:46', 'NCC(A)'),
(3, 'Darpan', 'Regmi', 110000, '2022-10-18 09:00:00', 'NCC(B)'),
(4, 'Prasanna', 'Poudel', 100000, '2022-10-10 10:00:47', 'NCC(B)');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `worker`
--
ALTER TABLE `worker`
  ADD PRIMARY KEY (`Worker_Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `worker`
--
ALTER TABLE `worker`
  MODIFY `Worker_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
