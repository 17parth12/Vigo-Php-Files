-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 31, 2019 at 08:17 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vigo`
--

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `dep_name` varchar(30) NOT NULL,
  `start_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `dep_name`, `start_date`) VALUES
(1, 'Development', '2018-05-08'),
(2, 'Marketing', '2018-04-10'),
(3, 'Development', '2016-06-14'),
(4, 'Development', '2017-12-12'),
(5, 'Marketing', '2016-10-04'),
(6, 'Development', '2018-08-08'),
(7, 'Networking', '2018-05-08'),
(8, 'Development', '2018-04-10'),
(9, 'Development', '2016-10-04'),
(10, 'Designer', '2018-08-08'),
(11, 'Development', '2016-10-04'),
(12, 'Marketing', '2018-08-08'),
(13, 'Development', '2016-10-04'),
(14, 'Marketing', '2018-04-10'),
(15, 'Marketing', '2016-06-14'),
(16, 'Development', '2017-09-14'),
(17, 'Testing', '2018-05-08'),
(18, 'Web', '2018-04-10'),
(19, 'Development', '2018-05-08'),
(20, 'Graphics', '2017-09-14');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(50) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(14) NOT NULL,
  `position` varchar(30) NOT NULL,
  `cmppost` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `fname`, `lname`, `email`, `phone`, `position`, `cmppost`) VALUES
(1, 'Don', 'Brayshaw', 'don@gmail.com', '07470709653', 'Web developer', 'B97 6QL'),
(2, 'Martin', 'Breen', 'martin@gmail.com', '78786543', 'App Designer', 'B692DX'),
(3, 'Sara', 'Boothroyd', 'sara@yahoo.com', '8976546567', 'Web Designer', 'W1T 1JY'),
(4, 'Edward', 'Grundy', 'edward@gmail.com', '89897654', 'SEO', 'W1T 1JY'),
(5, 'Andrea', 'Hudson', 'andrea@yahoo.com', '787865436', 'Digital Marketing', 'B692DX'),
(6, 'Joseph', 'Harris', 'joseph@gmail.com', '898765676', 'Software', 'B97 6QL'),
(7, 'John', 'Lauder', 'john@gamil.com', '787909076', 'Networking', 'B97 6QL'),
(8, 'Layton', 'Richards', 'layton@yahoo.com', '898978767', 'Trainee', 'B692DX'),
(9, 'Elizabeth', 'Waddell', 'eli@yahoo.com', '787865544', 'Developer', 'B97 6QL'),
(10, 'Adrian', 'White', 'adrian@yahoo.com', '787898768', 'Web Designer', 'W1T 1JY'),
(11, 'Maureen', 'Noble', 'maureen@gmail.com', '767689876', 'Trainee', 'B97 6QL'),
(12, 'Anurag', 'Pinto', 'anu@yahoo.com', '898976546', 'Web Developer', 'B97 6QL'),
(13, 'Zoya', 'White', 'zoya@gmail.com', '787898765', 'Senior Developer', 'B97 6QL'),
(14, 'Krishna', 'Thakkar', 'krishna@yahoo.com', '8989766566', 'Developer', 'B97 6QL'),
(15, 'Shawn', 'Mars', 'shawn@yahoo.com', '7678786756', 'Senior Developer', 'B97 6QL'),
(16, 'Chris', 'Jericho', 'chris@yahoo.com', '787898676', 'Web developer', 'B97 6QL'),
(17, 'Matt', 'Hardy', 'matt@gmail.com', '787876544', 'Senior Developer', 'B692DX');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `id` int(11) NOT NULL,
  `f_name` varchar(30) NOT NULL,
  `l_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`id`, `f_name`, `l_name`) VALUES
(1, 'James ', 'Ford'),
(2, 'Toby ', 'Jefferies '),
(3, 'James ', 'Ford'),
(4, 'James ', 'Ford'),
(5, 'James', 'Ford'),
(6, 'Robin ', 'Goldsmith '),
(7, 'James', 'Ford'),
(8, 'Toby ', 'Jefferies '),
(9, 'James', 'Ford'),
(10, 'James', 'Ford'),
(11, 'Toby ', 'Jefferies '),
(12, 'James', 'Ford'),
(13, 'Toby', 'Jefferies '),
(14, 'James', 'Ford'),
(15, 'James', 'Ford'),
(16, 'Toby', 'Jefferies '),
(17, 'Robin', 'Goldsmith'),
(18, 'Toby', 'Jefferies '),
(19, 'James', 'Ford'),
(20, 'Robin', 'Goldsmith '),
(21, 'James', 'Ford'),
(22, 'Toby', 'Jefferies '),
(23, 'Robin', 'Goldsmith'),
(24, 'James', 'Ford');

-- --------------------------------------------------------

--
-- Table structure for table `office`
--

CREATE TABLE `office` (
  `id` int(11) NOT NULL,
  `cmp_phone` varchar(15) NOT NULL,
  `postcode` varchar(15) NOT NULL,
  `addr` varchar(100) NOT NULL,
  `city` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `office`
--

INSERT INTO `office` (`id`, `cmp_phone`, `postcode`, `addr`, `city`) VALUES
(1, '76768987', 'B97 6QL', 'The Old Forge, Hewell Ln, Tardebigge, Re', 'Birmingham'),
(2, '78786543', 'B692DX', '38 Saint James ROad, Oldbury', 'Birmingham'),
(3, '87876543', 'W1T 1JY', '14 Tottenham Court Road', 'London'),
(4, '87876543', 'W1T 1JY', '14 Tottenham Court Road', 'London'),
(5, '78786543', 'B692DX', '38 Saint James ROad, Oldbury', 'Birmingham'),
(6, '76768987', 'B97 6QL', 'The Old Forge, Hewell Ln, Tardebigge, Re', 'Birmingham'),
(7, '76768987', 'B97 6QL', 'The Old Forge, Hewell Ln, Tardebigge, Re', 'Birmingham'),
(8, '78786543', 'B692DX', '38 Saint James ROad, Oldbury', 'Birmingham'),
(9, '76768987', 'B97 6QL', 'The Old Forge, Hewell Ln, Tardebigge, Re', 'Birmingham'),
(10, '87876543', 'W1T 1JY', '14 Tottenham Court Road', 'London'),
(11, '76768987', 'B97 6QL', 'The Old Forge, Hewell Ln, Tardebigge, Re', 'Birmingham'),
(12, '76768987', 'B97 6QL', 'The Old Forge, Hewell Ln, Tardebigge, Re', 'Birmingham'),
(13, '76768987', 'B97 6QL', 'The Old Forge, Hewell Ln, Tardebigge, Re', 'Birmingham'),
(14, '76768987', 'B97 6QL', 'The Old Forge, Hewell Ln, Tardebigge, Re', 'Birmingham'),
(15, '76768987', 'B97 6QL', 'The Old Forge, Hewell Ln, Tardebigge, Re', 'Birmingham'),
(16, '76768987', 'B97 6QL', 'The Old Forge, Hewell Ln, Tardebigge, Re', 'Birmingham'),
(17, '78786543', 'B692DX', '38 Saint James ROad, Oldbury', 'Birmingham');

-- --------------------------------------------------------

--
-- Table structure for table `office2`
--

CREATE TABLE `office2` (
  `id` int(11) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `postcode` varchar(15) NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `office2`
--

INSERT INTO `office2` (`id`, `phone`, `postcode`, `address`, `city`) VALUES
(1, '76768987', 'B97 6QL', 'The Old Forge, Hewell Ln, Tardebigge, Re', 'Birmingham'),
(2, '78786543', 'B692DX', '38 Saint James ROad, Oldbury', 'Birmingham'),
(3, '87876543', 'W1T 1JY', '14 Tottenham Court Road', 'London'),
(4, '07470709653', 'B69HG8', '38 Saint James ROad, Oldbury', 'Birmingham'),
(5, '07470709653', 'B692DX', '38 Saint James ROad, Oldbury', 'Birmingham');

-- --------------------------------------------------------

--
-- Table structure for table `salaries`
--

CREATE TABLE `salaries` (
  `id` int(11) NOT NULL,
  `salary` int(10) NOT NULL,
  `level` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `salaries`
--

INSERT INTO `salaries` (`id`, `salary`, `level`) VALUES
(1, 25000, 'Senior'),
(2, 22000, 'Mid '),
(3, 21000, 'Junior'),
(4, 21000, 'Junior'),
(5, 38000, 'Senior'),
(6, 28000, 'Senior'),
(7, 27000, 'Senior'),
(8, 30000, 'Senior'),
(9, 16000, 'Trainee'),
(10, 16000, 'Trainee'),
(11, 30000, 'Senior'),
(12, 22000, 'Junior'),
(13, 18000, 'Trainee'),
(14, 30000, 'Senior'),
(15, 18000, 'Trainee'),
(16, 22000, 'Junior'),
(17, 30000, 'Senior'),
(18, 22000, 'Junior'),
(19, 30000, 'Senior'),
(20, 22000, 'Junior'),
(21, 23000, 'Junior'),
(22, 26000, 'Mid '),
(23, 27000, 'Senior'),
(24, 26000, 'Mid ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `office`
--
ALTER TABLE `office`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `office2`
--
ALTER TABLE `office2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salaries`
--
ALTER TABLE `salaries`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `manager`
--
ALTER TABLE `manager`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `office`
--
ALTER TABLE `office`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `office2`
--
ALTER TABLE `office2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `salaries`
--
ALTER TABLE `salaries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
