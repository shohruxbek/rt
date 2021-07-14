-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 14, 2021 at 10:41 AM
-- Server version: 10.3.13-MariaDB-log
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kutubxona`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `number` mediumtext DEFAULT NULL,
  `name` mediumtext DEFAULT NULL,
  `author` mediumtext DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  `gettotal` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `number`, `name`, `author`, `year`, `total`, `gettotal`) VALUES
(1, 'adf', '', NULL, '', '', '0'),
(2, '1412 34 34 ', 'dffd', NULL, '234532', '23', '0'),
(3, '1412 34 34 ', 'dffd', NULL, '234532', '23', '0'),
(4, '123 1232 ', 'qwe', 'ad', '12', 'ad', '0'),
(5, '234 234 234 ', 'sdf', 'sgd', 'sdg', 'sdg', '0'),
(6, '234 23 324 ', 'dsf', 'fds', 'dsf', 'dfs', '0'),
(7, '2345 235 23 ', 'wqd', 'asf', 'af', 'af', '0');

-- --------------------------------------------------------

--
-- Table structure for table `reserv`
--

CREATE TABLE `reserv` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `book_id` int(11) DEFAULT NULL,
  `bookdate` varchar(255) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `issue_date` varchar(255) DEFAULT NULL,
  `return_date` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reserv`
--

INSERT INTO `reserv` (`id`, `student_id`, `book_id`, `bookdate`, `total`, `issue_date`, `return_date`) VALUES
(1, 1, 34, '2021-07-14 08:43:56', 1, '7 July, 2021', '15 July, 2021'),
(2, 2, 34, '2021-07-14 09:14:21', 1, '6 July, 2021', '16 July, 2021');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `numbers` int(11) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `sharifname` varchar(255) DEFAULT NULL,
  `direction` varchar(255) DEFAULT NULL,
  `groups` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `numbers`, `firstname`, `lastname`, `sharifname`, `direction`, `groups`) VALUES
(1, 1, 'Oybek', 'Umurzaqov', 'Shakarboy o\'g\'li', 'Iqtisod', '101'),
(2, 2, '1', '2', '2', '2', '2'),
(3, 1, 'Oybek', 'Umurzaqov', 'Shakarboy o\'g\'li', 'Iqtisod', '101'),
(4, 2, '1', '2', '2', '2', '2'),
(5, 1, 'Oybek', 'Umurzaqov', 'Shakarboy o\'g\'li', 'Iqtisod', '101'),
(6, 1, 'Oybek', 'Umurzaqov', 'Shakarboy o\'g\'li', 'Iqtisod', '101'),
(7, 1, 'Oybek', 'Umurzaqov', 'Shakarboy o\'g\'li', 'Iqtisod', '101'),
(8, 1, 'Oybek', 'Umurzaqov', 'Shakarboy o\'g\'li', 'Iqtisod', '101'),
(9, 2, '1', '2', '2', '2', '2'),
(10, 1, 'Oybek', 'Umurzaqov', 'Shakarboy o\'g\'li', 'Iqtisod', '101'),
(11, 2, '1', '2', '2', '2', '2'),
(12, 1, 'Oybek', 'Umurzaqov', 'Shakarboy o\'g\'li', 'Iqtisod', '101'),
(13, 1, 'Oybek', 'Umurzaqov', 'Shakarboy o\'g\'li', 'Iqtisod', '101'),
(14, 1, 'Oybek', 'Umurzaqov', 'Shakarboy o\'g\'li', 'Iqtisod', '101');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `login` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `login`, `password`, `status`) VALUES
(1, 'Oybek aka', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reserv`
--
ALTER TABLE `reserv`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `reserv`
--
ALTER TABLE `reserv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
