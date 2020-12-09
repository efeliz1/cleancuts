-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2020 at 01:53 PM
-- Server version: 10.1.39-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `barbershop`
--
CREATE DATABASE IF NOT EXISTS `barbershop` DEFAULT CHARACTER SET utf16 COLLATE utf16_general_ci;
USE `barbershop`;
-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `apptID` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `paymentType` varchar(100) NOT NULL,
  `apptDate` varchar(200) NOT NULL,
  `barber` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `clientID` int(11) NOT NULL,
  `barberID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`apptID`, `fname`, `lname`, `username`, `paymentType`, `apptDate`, `barber`, `status`, `clientID`, `barberID`) VALUES
(40, 'john', 'smith', 'jsmith', 'Cash', '2020-12-10', 'dbond', 'Confirmed', 8, 2),
(41, 'john', 'smith', 'jsmith', 'Bitcoin', '2020-12-11', 'dbond', 'Confirmed', 8, 2);

-- --------------------------------------------------------

--
-- Table structure for table `barber`
--

CREATE TABLE `barber` (
  `barberID` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `fName` varchar(25) NOT NULL,
  `lName` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `barber`
--

INSERT INTO `barber` (`barberID`, `username`, `password`, `fName`, `lName`, `email`) VALUES
(1, 'efeliz', 'hello', 'edwin', 'feliz', 'efeliz@clean.com'),
(2, 'dbond', 'hello', 'david', 'bond', 'dbond@clean.com'),
(8, 'jdilo', 'dilo', 'james', 'dilo', 'jdilo@barber.com'),
(9, 'gmilo', 'hello', 'gorge', 'milo', 'gmilo@hello.edu');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `clientID` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `fName` varchar(25) NOT NULL,
  `lName` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`clientID`, `username`, `password`, `fName`, `lName`, `email`) VALUES
(8, 'jsmith', 'hello', 'john', 'smith', 'jsmith@client.com'),
(15, 'sjean', 'hello', 'sarah', 'jean', 'sjean@lilo.com'),
(22, 'molivo', 'hello', 'micheal', 'olivo', 'molivo@client.edu');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `serviceID` int(11) NOT NULL,
  `serviceName` varchar(25) NOT NULL,
  `price` float NOT NULL,
  `apptID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`apptID`),
  ADD KEY `barberID` (`barberID`) USING BTREE,
  ADD KEY `clientID` (`clientID`) USING BTREE;

--
-- Indexes for table `barber`
--
ALTER TABLE `barber`
  ADD PRIMARY KEY (`barberID`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`clientID`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`serviceID`),
  ADD KEY `apptID` (`apptID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `apptID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `barber`
--
ALTER TABLE `barber`
  MODIFY `barberID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `clientID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `serviceID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointment`
--
ALTER TABLE `appointment`
  ADD CONSTRAINT `appointment_ibfk_2` FOREIGN KEY (`clientID`) REFERENCES `client` (`clientID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `appointment_ibfk_3` FOREIGN KEY (`barberID`) REFERENCES `barber` (`barberID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `services_ibfk_1` FOREIGN KEY (`apptID`) REFERENCES `appointment` (`apptID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
