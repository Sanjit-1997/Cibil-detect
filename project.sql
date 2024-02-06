-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 26, 2023 at 06:10 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `loandetails`
--

CREATE TABLE `loandetails` (
  `userId` int(11) NOT NULL,
  `RequiredLoan` int(11) NOT NULL,
  `Salary` int(11) NOT NULL,
  `Period` int(11) NOT NULL,
  `Method` int(11) NOT NULL,
  `emi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `loandetails`
--

INSERT INTO `loandetails` (`userId`, `RequiredLoan`, `Salary`, `Period`, `Method`, `emi`) VALUES
(12207540, 50000, 20000, 1, 1, 4667),
(12121212, 800000, 90000, 4, 3, 24667),
(12109070, 200000, 40000, 2, 1, 9334),
(12207540, 80000, 45000, 2, 6, 24800),
(12109071, 500000, 45000, 2, 1, 25833),
(12109073, 300000, 45000, 2, 1, 15500),
(12109070, 500000, 45000, 2, 1, 25833);

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `userId` int(11) NOT NULL,
  `email-Id` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `TC` tinyint(1) NOT NULL DEFAULT 1,
  `creditScore` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`userId`, `email-Id`, `password`, `TC`, `creditScore`) VALUES
(1210987, 'abc@gmail.com', '123456', 1, 541),
(12109071, 'example@gmail.com', '@example', 1, 734),
(12109073, 'example@gmail.comn', '@example', 1, 589),
(12109077, 'abcd@gmail.com', '1234', 1, 0),
(12113258, 'allauddinmfp1999@gmail.com', '@allauddin', 1, 300),
(12121212, 'xyz@abc.com', '@xyz', 1, 810),
(12205413, 'mubarak@khan.com', 'mubarak@123', 1, 300),
(12207540, 'trideepshivam@gmail.com', 'shivam@123', 1, 573),
(12207940, 'something@gmail.com', 'falna', 1, 874),
(123456789, 'asdfgh@df.com', '@asdfgh', 1, 300);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `loandetails`
--
ALTER TABLE `loandetails`
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`userId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
