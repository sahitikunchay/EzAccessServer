-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2017 at 07:18 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `work`
--

-- --------------------------------------------------------

--
-- Table structure for table `resources`
--

CREATE TABLE IF NOT EXISTS `resources` (
  `EMPLOYEE_ID` varchar(256) NOT NULL,
  `EMPLOYEE_NAME` varchar(256) NOT NULL,
  `SKILLSET` varchar(256) NOT NULL,
  `WORK_HAND` float NOT NULL,
  `EXPERIENCE` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `resources`
--

INSERT INTO `resources` (`EMPLOYEE_ID`, `EMPLOYEE_NAME`, `SKILLSET`, `WORK_HAND`, `EXPERIENCE`) VALUES
('1', 'Sahiti Kunchay', 'C,C++,PYTHON,BOBJ', 12, '2'),
('10', 'Sushant Bansal', 'MSAS', 12, '9'),
('11', 'Sahiti Kunchay', 'GDSL', 46, '3'),
('12', 'Sushant Bansal', 'GDSL', 79, '13'),
('13', 'Susobit P', 'MSTR', 36, '10'),
('14', 'Sahiti Kunchay', 'SSRS', 21, '7'),
('15', 'Susobit P', 'Toad-TIC', 23, '11'),
('16', 'Sahiti Kunchay', 'MSTR', 75, '1'),
('17', 'Sushant Bansal', 'PORTAL', 2, '5'),
('18', 'Sahiti Kunchay', 'D3', 45, '3'),
('19', 'Susobit P', 'BOBJ', 6, '7'),
('2', 'Sushant Bansal', 'C,C++,PYTHON,BOBJ', 34, '10'),
('20', 'Susobit P', 'Toad-TIC', 65, '4'),
('21', 'Sahiti Kunchay', 'MSTR', 123, '6'),
('22', 'Sushant Bansal', 'D3', 54, '12'),
('23', 'Sahiti Kunchay', 'GDSL', 76, '14'),
('24', 'Susobit P', 'BOBJ4.1', 98, '11'),
('25', 'Sushant Bansal', 'SSRS', 23, '7'),
('26', 'Sahiti Kunchay', 'PORTAL', 45, '6'),
('27', 'Susobit P', 'MSAS', 87, '4'),
('28', 'Sahiti Kunchay', 'D3', 86, '17'),
('29', 'Sushant Bansal', 'D3', 4, '8'),
('3', 'Susobit P', 'BOBJ4.1', 5, '4'),
('30', 'Sahiti Kunchay', 'PORTAL', 32, '10'),
('4', 'Sahiti Kunchay', 'EBI', 6, '10'),
('5', 'E', 'EBI', 74, ''),
('6', 'F', 'EBI', 34, ''),
('7', 'G', 'PORTAL', 56, ''),
('8', 'H', 'D3', 78, ''),
('9', 'I', 'MSAS', 24, ''),
('EMPLOYEE ID', 'EMPLOYEE NAME', 'SKILLSET', 0, 'EXPERIENCE');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `resources`
--
ALTER TABLE `resources`
 ADD PRIMARY KEY (`EMPLOYEE_ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
