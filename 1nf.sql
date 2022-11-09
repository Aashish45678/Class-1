-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2022 at 09:41 AM
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
-- Database: `1nf`
--

-- --------------------------------------------------------

--
-- Table structure for table `2nfi`
--

CREATE TABLE `2nfi` (
  `Membership_id` int(11) NOT NULL,
  `Full Name` varchar(255) NOT NULL,
  `Physical Address` varchar(255) NOT NULL,
  `Salutation` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `2nfi`
--

INSERT INTO `2nfi` (`Membership_id`, `Full Name`, `Physical Address`, `Salutation`) VALUES
(1, 'Jane Jones', 'First Street Plot No 4', 'Ms'),
(2, 'Robert Phill', '3rd Street 34', 'Mr'),
(3, 'Robert Phill', '5th Avenue', 'Mr');

-- --------------------------------------------------------

--
-- Table structure for table `2nfii`
--

CREATE TABLE `2nfii` (
  `Membership_id` int(11) NOT NULL,
  `Movie Rented` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `2nfii`
--

INSERT INTO `2nfii` (`Membership_id`, `Movie Rented`) VALUES
(1, 'Pirates of the Carriben'),
(1, 'Clash of Titans'),
(2, 'Forgetting Sarah'),
(2, 'Daddy\'s Little Girl'),
(3, 'Clash of Titans');

-- --------------------------------------------------------

--
-- Table structure for table `3nfi`
--

CREATE TABLE `3nfi` (
  `Membership_id` int(11) NOT NULL,
  `Full Name` varchar(255) NOT NULL,
  `Physical Address` varchar(255) NOT NULL,
  `Salutation` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `3nfi`
--

INSERT INTO `3nfi` (`Membership_id`, `Full Name`, `Physical Address`, `Salutation`) VALUES
(1, 'Jane Jones', 'First Street Plot No 4', 2),
(2, 'Robert Phill', '3rd Street 34', 1),
(3, 'Robert Phill', '5th Avenue', 1);

-- --------------------------------------------------------

--
-- Table structure for table `3nfii`
--

CREATE TABLE `3nfii` (
  `salutation_id` int(11) NOT NULL,
  `Salutation` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `3nfii`
--

INSERT INTO `3nfii` (`salutation_id`, `Salutation`) VALUES
(1, 'Mr.'),
(2, 'Ms.'),
(3, 'Mrs.'),
(4, 'Dr.');

-- --------------------------------------------------------

--
-- Table structure for table `3nfiii`
--

CREATE TABLE `3nfiii` (
  `Membership_id` int(11) NOT NULL,
  `Movie Rented` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `3nfiii`
--

INSERT INTO `3nfiii` (`Membership_id`, `Movie Rented`) VALUES
(1, 'Pirates of the Carriben'),
(1, 'Clash of Titans'),
(2, 'Forgetting Sarah'),
(2, 'Daddy\'s Little Girl'),
(3, 'Clash of Titans');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Full Name` varchar(255) NOT NULL,
  `Physical Address` varchar(255) NOT NULL,
  `Movie Rented` varchar(255) NOT NULL,
  `Salutation` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Full Name`, `Physical Address`, `Movie Rented`, `Salutation`) VALUES
('Janet Jones', 'First Street Plot NO 4', 'Pirates of the Caribbean', 'Ms'),
('Janet Jones', 'First Street Plot NO 4', 'Clash of the Titans', 'Ms'),
('Robert Phill', '3rd Street 34', 'Forgetting Sarah', 'Mr'),
('Robert Phil', '3rd Street 34', 'Daddy’s Little Girls', 'Mr'),
('Robert Phil', '5th Avenue', 'Clash of the Titans', 'Mr');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `2nfi`
--
ALTER TABLE `2nfi`
  ADD PRIMARY KEY (`Membership_id`);

--
-- Indexes for table `2nfii`
--
ALTER TABLE `2nfii`
  ADD KEY `Membership_id` (`Membership_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `2nfii`
--
ALTER TABLE `2nfii`
  ADD CONSTRAINT `2nfii_ibfk_1` FOREIGN KEY (`Membership_id`) REFERENCES `2nfi` (`Membership_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
