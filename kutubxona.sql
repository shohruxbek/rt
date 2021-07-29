-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 29, 2021 at 08:36 AM
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
(17, ' 429021  427159  427160  427161 429280  421282  429803  429804 ', 'Царственный звездочет', 'Рубен Сафаров', 'Ташкент 1994', '11', '0'),
(18, ' 16526 286155 168347 165259 ', 'Судьба', 'Ибрагим Рахим', 'Ташкент 1966', '5', '0'),
(19, ' 16526 286155 168347 165259 ', '1', '1', '1', '1', '0'),
(21, ' 123  456  789 ', '123', '123', '123', '3', '0');

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
(10, 1, 16526, '2021-07-15 09:48:26', 1, '15 July, 2021', '20 July, 2021'),
(11, 1, 286155, '2021-07-15 09:49:39', 1, '14 July, 2021', '20 July, 2021'),
(14, 1, 429021, '2021-07-16 06:09:00', 1, '16 July, 2021', '27 July, 2021'),
(15, 1, 412454, '2021-07-16 06:09:53', 1, '7 July, 2021', '7 July, 2021'),
(16, 1, 12, '2021-07-16 07:14:05', 1, '6 July, 2021', '13 July, 2021');

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
(15, 1, 'Oybek', 'Umurzaqov', '', 'Iqtisod', '101'),
(16, 123, '123', '123', '123', '123', '123');

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
(1, 'Oybek aka', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', '1'),
(2, 'a', 'a', '86f7e437faa5a7fce15d1ddcb9eaeaea377667b8', '1');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `reserv`
--
ALTER TABLE `reserv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
