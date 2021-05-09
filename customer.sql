-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2021 at 06:43 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `node_crud`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Country` varchar(100) NOT NULL,
  `Phone` int(10) NOT NULL,
  `Created_on` datetime NOT NULL DEFAULT current_timestamp(),
  `Updated_on` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Id`, `Name`, `Address`, `Country`, `Phone`, `Created_on`, `Updated_on`) VALUES
(1, 'Kishan Kotadiya', 'Lajai', 'india', 9824407, '2021-05-04 07:44:09', '2021-05-04 07:44:09'),
(2, 'harsh kagathara', 'Modpar', 'usa', 9874561, '2021-05-04 07:45:52', '2021-05-04 07:45:52'),
(3, 'Parag kavar', 'Modpar', 'canada', 8523691, '2021-05-04 07:46:31', '2021-05-04 07:46:31'),
(4, 'MD Sarkar', 'Biliya', 'india', 7852363, '2021-05-04 09:27:52', '2021-05-04 09:27:52'),
(5, 'Jk bhai', 'bagathara', 'india', 9865323, '2021-05-04 09:28:32', '2021-05-04 09:28:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
