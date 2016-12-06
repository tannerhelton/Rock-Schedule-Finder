-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 06, 2016 at 02:25 PM
-- Server version: 5.7.12-0ubuntu1.1
-- PHP Version: 7.0.8-0ubuntu0.16.04.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `heltons`
--

-- --------------------------------------------------------

--
-- Table structure for table `Students`
--

CREATE TABLE `Students` (
  `LastName` varchar(255) DEFAULT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `StudentID` int(11) DEFAULT NULL,
  `Grade` int(11) DEFAULT NULL,
  `ClassID` varchar(12) DEFAULT NULL,
  `Term` int(11) DEFAULT NULL,
  `CourseName` varchar(255) DEFAULT NULL,
  `Period` int(11) DEFAULT NULL,
  `Day` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Students`
--

INSERT INTO `Students` (`LastName`, `FirstName`, `Email`, `StudentID`, `Grade`, `ClassID`, `Term`, `CourseName`, `Period`, `Day`) VALUES
('Helton', 'TJ', 'timothyhelton@amdg.rockhursths.edu', 201001139, 12, '41 - 1', 1, 'English 4', 8, 'C\r'),
('Helton', 'TJ', 'timothyhelton@amdg.rockhursths.edu', 201001139, 12, '41 - 1', 1, 'English 4', 3, 'D\r'),
('Helton', 'TJ', 'timothyhelton@amdg.rockhursths.edu', 201001139, 12, '41 - 1', 1, 'English 4', 7, 'E\r'),
('Helton', 'TJ', 'timothyhelton@amdg.rockhursths.edu', 201001139, 12, '41 - 1', 1, 'English 4', 3, 'A\r'),
('Helton', 'TJ', 'timothyhelton@amdg.rockhursths.edu', 201001139, 12, '41 - 1', 1, 'English 4', 8, 'F\r'),
('Helton', 'TJ', 'timothyhelton@amdg.rockhursths.edu', 201001139, 12, '144 - 5', 1, 'Pre-Calculus', 2, 'A\r'),
('Helton', 'TJ', 'timothyhelton@amdg.rockhursths.edu', 201001139, 12, '144 - 5', 1, 'Pre-Calculus', 2, 'B\r'),
('Helton', 'TJ', 'timothyhelton@amdg.rockhursths.edu', 201001139, 12, '144 - 5', 1, 'Pre-Calculus', 2, 'D\r'),
('Helton', 'TJ', 'timothyhelton@amdg.rockhursths.edu', 201001139, 12, '144 - 5', 1, 'Pre-Calculus', 2, 'E\r'),
('Helton', 'TJ', 'timothyhelton@amdg.rockhursths.edu', 201001139, 12, '144 - 5', 1, 'Pre-Calculus', 2, 'C\r'),
('Helton', 'TJ', 'timothyhelton@amdg.rockhursths.edu', 201001139, 12, '953 - 1', 1, 'Automated Accounting', 5, 'B\r'),
('Helton', 'TJ', 'timothyhelton@amdg.rockhursths.edu', 201001139, 12, '953 - 1', 1, 'Automated Accounting', 5, 'F\r'),
('Helton', 'TJ', 'timothyhelton@amdg.rockhursths.edu', 201001139, 12, '953 - 1', 1, 'Automated Accounting', 5, 'C\r'),
('Helton', 'TJ', 'timothyhelton@amdg.rockhursths.edu', 201001139, 12, '953 - 1', 1, 'Automated Accounting', 5, 'D\r'),
('Helton', 'TJ', 'timothyhelton@amdg.rockhursths.edu', 201001139, 12, '953 - 1', 1, 'Automated Accounting', 5, 'E\r'),
('Helton', 'TJ', 'timothyhelton@amdg.rockhursths.edu', 201001139, 12, '447 - 9', 1, 'Catholic Faith in Practice 1', 1, 'A\r'),
('Helton', 'TJ', 'timothyhelton@amdg.rockhursths.edu', 201001139, 12, '447 - 9', 1, 'Catholic Faith in Practice 1', 1, 'D\r'),
('Helton', 'TJ', 'timothyhelton@amdg.rockhursths.edu', 201001139, 12, '447 - 9', 1, 'Catholic Faith in Practice 1', 1, 'E\r'),
('Helton', 'TJ', 'timothyhelton@amdg.rockhursths.edu', 201001139, 12, '447 - 9', 1, 'Catholic Faith in Practice 1', 1, 'C\r'),
('Helton', 'TJ', 'timothyhelton@amdg.rockhursths.edu', 201001139, 12, '447 - 9', 1, 'Catholic Faith in Practice 1', 1, 'B\r'),
('Helton', 'TJ', 'timothyhelton@amdg.rockhursths.edu', 201001139, 12, '347 - 2', 1, 'United States Government', 7, 'A\r'),
('Helton', 'TJ', 'timothyhelton@amdg.rockhursths.edu', 201001139, 12, '347 - 2', 1, 'United States Government', 8, 'B\r'),
('Helton', 'TJ', 'timothyhelton@amdg.rockhursths.edu', 201001139, 12, '347 - 2', 1, 'United States Government', 3, 'C\r'),
('Helton', 'TJ', 'timothyhelton@amdg.rockhursths.edu', 201001139, 12, '347 - 2', 1, 'United States Government', 7, 'D\r'),
('Helton', 'TJ', 'timothyhelton@amdg.rockhursths.edu', 201001139, 12, '347 - 2', 1, 'United States Government', 8, 'E\r'),
('Helton', 'TJ', 'timothyhelton@amdg.rockhursths.edu', 201001139, 12, '975 - 1', 1, 'Software Application Development', 3, 'B\r'),
('Helton', 'TJ', 'timothyhelton@amdg.rockhursths.edu', 201001139, 12, '975 - 1', 1, 'Software Application Development', 8, 'D\r'),
('Helton', 'TJ', 'timothyhelton@amdg.rockhursths.edu', 201001139, 12, '975 - 1', 1, 'Software Application Development', 7, 'C\r'),
('Helton', 'TJ', 'timothyhelton@amdg.rockhursths.edu', 201001139, 12, '975 - 1', 1, 'Software Application Development', 8, 'A\r'),
('Helton', 'TJ', 'timothyhelton@amdg.rockhursths.edu', 201001139, 12, '975 - 1', 1, 'Software Application Development', 7, 'F\r'),
('Helton', 'TJ', 'timothyhelton@amdg.rockhursths.edu', 201001139, 12, '808 - 1', 1, 'Drawing & Design for Industry', 4, 'B\r'),
('Helton', 'TJ', 'timothyhelton@amdg.rockhursths.edu', 201001139, 12, '808 - 1', 1, 'Drawing & Design for Industry', 4, 'F\r'),
('Helton', 'TJ', 'timothyhelton@amdg.rockhursths.edu', 201001139, 12, '808 - 1', 1, 'Drawing & Design for Industry', 4, 'E\r'),
('Helton', 'TJ', 'timothyhelton@amdg.rockhursths.edu', 201001139, 12, '808 - 1', 1, 'Drawing & Design for Industry', 4, 'D\r'),
('Helton', 'TJ', 'timothyhelton@amdg.rockhursths.edu', 201001139, 12, '808 - 1', 1, 'Drawing & Design for Industry', 4, 'C\r'),
('Helton', 'Tanner', 'TannerHelton@amdg.rockhursths.edu', 2225, 9, '12 - 8', 1, 'English 1', 1, 'A\r'),
('Helton', 'Tanner', 'TannerHelton@amdg.rockhursths.edu', 2225, 9, '12 - 8', 1, 'English 1', 1, 'B\r'),
('Helton', 'Tanner', 'TannerHelton@amdg.rockhursths.edu', 2225, 9, '12 - 8', 1, 'English 1', 1, 'C\r'),
('Helton', 'Tanner', 'TannerHelton@amdg.rockhursths.edu', 2225, 9, '12 - 8', 1, 'English 1', 1, 'D\r'),
('Helton', 'Tanner', 'TannerHelton@amdg.rockhursths.edu', 2225, 9, '12 - 8', 1, 'English 1', 1, 'E\r'),
('Helton', 'Tanner', 'TannerHelton@amdg.rockhursths.edu', 2225, 9, '12 - 8', 1, 'English 1', 1, 'F\r'),
('Helton', 'Tanner', 'TannerHelton@amdg.rockhursths.edu', 2225, 9, '121 - 1', 1, 'Geometry/Algebra 2 (Advanced)', 2, 'A\r'),
('Helton', 'Tanner', 'TannerHelton@amdg.rockhursths.edu', 2225, 9, '121 - 1', 1, 'Geometry/Algebra 2 (Advanced)', 2, 'B\r'),
('Helton', 'Tanner', 'TannerHelton@amdg.rockhursths.edu', 2225, 9, '121 - 1', 1, 'Geometry/Algebra 2 (Advanced)', 2, 'C\r'),
('Helton', 'Tanner', 'TannerHelton@amdg.rockhursths.edu', 2225, 9, '121 - 1', 1, 'Geometry/Algebra 2 (Advanced)', 2, 'D\r'),
('Helton', 'Tanner', 'TannerHelton@amdg.rockhursths.edu', 2225, 9, '121 - 1', 1, 'Geometry/Algebra 2 (Advanced)', 2, 'E\r'),
('Helton', 'Tanner', 'TannerHelton@amdg.rockhursths.edu', 2225, 9, '121 - 1', 1, 'Geometry/Algebra 2 (Advanced)', 2, 'F\r'),
('Helton', 'Tanner', 'TannerHelton@amdg.rockhursths.edu', 2225, 9, '223 - 1', 1, 'Honors Biology', 5, 'B\r'),
('Helton', 'Tanner', 'TannerHelton@amdg.rockhursths.edu', 2225, 9, '223 - 1', 1, 'Honors Biology', 5, 'E\r'),
('Helton', 'Tanner', 'TannerHelton@amdg.rockhursths.edu', 2225, 9, '223 - 1', 1, 'Honors Biology', 5, 'F\r'),
('Helton', 'Tanner', 'TannerHelton@amdg.rockhursths.edu', 2225, 9, '223 - 1', 1, 'Honors Biology', 5, 'C\r'),
('Helton', 'Tanner', 'TannerHelton@amdg.rockhursths.edu', 2225, 9, '223 - 1', 1, 'Honors Biology', 5, 'A\r'),
('Helton', 'Tanner', 'TannerHelton@amdg.rockhursths.edu', 2225, 9, '223 - 1', 1, 'Honors Biology', 6, 'C\r'),
('Helton', 'Tanner', 'TannerHelton@amdg.rockhursths.edu', 2225, 9, '721 - 2', 1, 'Advanced Spanish 2', 8, 'B\r'),
('Helton', 'Tanner', 'TannerHelton@amdg.rockhursths.edu', 2225, 9, '721 - 2', 1, 'Advanced Spanish 2', 7, 'D\r'),
('Helton', 'Tanner', 'TannerHelton@amdg.rockhursths.edu', 2225, 9, '721 - 2', 1, 'Advanced Spanish 2', 8, 'E\r'),
('Helton', 'Tanner', 'TannerHelton@amdg.rockhursths.edu', 2225, 9, '721 - 2', 1, 'Advanced Spanish 2', 3, 'F\r'),
('Helton', 'Tanner', 'TannerHelton@amdg.rockhursths.edu', 2225, 9, '721 - 2', 1, 'Advanced Spanish 2', 3, 'C\r'),
('Helton', 'Tanner', 'TannerHelton@amdg.rockhursths.edu', 2225, 9, '417 - 1', 1, 'Systematic Theology 1', 6, 'A\r'),
('Helton', 'Tanner', 'TannerHelton@amdg.rockhursths.edu', 2225, 9, '417 - 1', 1, 'Systematic Theology 1', 6, 'B\r'),
('Helton', 'Tanner', 'TannerHelton@amdg.rockhursths.edu', 2225, 9, '417 - 1', 1, 'Systematic Theology 1', 6, 'D\r'),
('Helton', 'Tanner', 'TannerHelton@amdg.rockhursths.edu', 2225, 9, '417 - 1', 1, 'Systematic Theology 1', 6, 'E\r'),
('Helton', 'Tanner', 'TannerHelton@amdg.rockhursths.edu', 2225, 9, '417 - 1', 1, 'Systematic Theology 1', 6, 'F\r'),
('Helton', 'Tanner', 'TannerHelton@amdg.rockhursths.edu', 2225, 9, '315 - 2', 1, 'Ancient Civilizations', 3, 'A\r'),
('Helton', 'Tanner', 'TannerHelton@amdg.rockhursths.edu', 2225, 9, '315 - 2', 1, 'Ancient Civilizations', 8, 'F\r'),
('Helton', 'Tanner', 'TannerHelton@amdg.rockhursths.edu', 2225, 9, '315 - 2', 1, 'Ancient Civilizations', 3, 'D\r'),
('Helton', 'Tanner', 'TannerHelton@amdg.rockhursths.edu', 2225, 9, '315 - 2', 1, 'Ancient Civilizations', 7, 'E\r'),
('Helton', 'Tanner', 'TannerHelton@amdg.rockhursths.edu', 2225, 9, '315 - 2', 1, 'Ancient Civilizations', 7, 'B\r'),
('Helton', 'Tanner', 'TannerHelton@amdg.rockhursths.edu', 2225, 9, '975 - 1', 1, 'Software Application Development', 3, 'B\r'),
('Helton', 'Tanner', 'TannerHelton@amdg.rockhursths.edu', 2225, 9, '975 - 1', 1, 'Software Application Development', 8, 'D\r'),
('Helton', 'Tanner', 'TannerHelton@amdg.rockhursths.edu', 2225, 9, '975 - 1', 1, 'Software Application Development', 7, 'C\r'),
('Helton', 'Tanner', 'TannerHelton@amdg.rockhursths.edu', 2225, 9, '975 - 1', 1, 'Software Application Development', 8, 'A\r'),
('Helton', 'Tanner', 'TannerHelton@amdg.rockhursths.edu', 2225, 9, '975 - 1', 1, 'Software Application Development', 7, 'F\r'),
('Helton', 'Tanner', 'TannerHelton@amdg.rockhursths.edu', 2225, 9, 'FS - 2', 1, 'Freshman Seminar', 8, 'C\r'),
('Helton', 'Tanner', 'TannerHelton@amdg.rockhursths.edu', 2225, 9, 'SG - 10', 1, 'Small Group', 5, 'D\r'),
('Helton', 'Tanner', 'TannerHelton@amdg.rockhursths.edu', 2225, 9, 'STH - 7', 1, 'Study Hall', 7, 'A\r'),
('Helton', 'Tanner', 'TannerHelton@amdg.rockhursths.edu', 2225, 9, 'STH - 46', 1, 'Study Hall', 3, 'E\r');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
