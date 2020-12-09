-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 18, 2020 at 06:20 PM
-- Server version: 8.0.22-0ubuntu0.20.04.2
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
-- Database: `barbershop`
--
CREATE DATABASE IF NOT EXISTS `barbershop` DEFAULT CHARACTER SET utf16 COLLATE utf16_general_ci;
USE `barbershop`;

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
CREATE TABLE IF NOT EXISTS `appointment` (
  `apptID` int NOT NULL AUTO_INCREMENT,
  `paymentType` varchar(5) NOT NULL,
  `apptDate` date NOT NULL,
  `clientID` int NOT NULL,
  `barberID` int NOT NULL,
  PRIMARY KEY (`apptID`),
  UNIQUE KEY `clientID` (`clientID`),
  KEY `barberID` (`barberID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

-- --------------------------------------------------------

--
-- Table structure for table `barber`
--

DROP TABLE IF EXISTS `barber`;
CREATE TABLE IF NOT EXISTS `barber` (
  `barberID` int NOT NULL AUTO_INCREMENT,
  `username` varchar(25) CHARACTER SET utf16 COLLATE utf16_general_ci NOT NULL,
  `password` varchar(25) CHARACTER SET utf16 COLLATE utf16_general_ci NOT NULL,
  `fName` varchar(25) NOT NULL,
  `lName` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  PRIMARY KEY (`barberID`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf16;

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

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `clientID` int NOT NULL AUTO_INCREMENT,
  `username` varchar(25) CHARACTER SET utf16 COLLATE utf16_general_ci NOT NULL,
  `password` varchar(25) CHARACTER SET utf16 COLLATE utf16_general_ci NOT NULL,
  `fName` varchar(25) NOT NULL,
  `lName` varchar(25) NOT NULL,
  `email` varchar(25) CHARACTER SET utf16 COLLATE utf16_general_ci NOT NULL,
  PRIMARY KEY (`clientID`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf16;

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

DROP TABLE IF EXISTS `services`;
CREATE TABLE IF NOT EXISTS `services` (
  `serviceID` int NOT NULL AUTO_INCREMENT,
  `serviceName` varchar(25) NOT NULL,
  `price` float NOT NULL,
  `apptID` int NOT NULL,
  PRIMARY KEY (`serviceID`),
  KEY `apptID` (`apptID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

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
