-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2022 at 08:34 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sahayog_mdonation`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `aid` int(11) NOT NULL,
  `aname` int(11) NOT NULL,
  `aemail` int(11) NOT NULL,
  `pass` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `uid` int(11) NOT NULL,
  `uname` int(11) NOT NULL,
  `uemail` int(11) NOT NULL,
  `reason` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pass` varchar(500) NOT NULL,
  `cpass` varchar(500) NOT NULL,
  `contact` int(10) NOT NULL,
  `desc` varchar(500) NOT NULL,
  `pic` mediumblob NOT NULL,
  `gender` varchar(50) NOT NULL,
  `licence` varchar(100) NOT NULL,
  `address` varchar(500) NOT NULL,
  `sincedate` date NOT NULL,
  `regdate` date NOT NULL,
  `roleid` int(11) NOT NULL,
  `rolename` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `med_donater`
--

CREATE TABLE `med_donater` (
  `uid` int(11) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `uemail` varchar(50) NOT NULL,
  `mid` int(11) NOT NULL,
  `mname` varchar(50) NOT NULL,
  `mqty` int(11) NOT NULL,
  `mpic` int(11) NOT NULL,
  `uaddress` varchar(100) NOT NULL,
  `donatedate` date NOT NULL,
  `nid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `med_required`
--

CREATE TABLE `med_required` (
  `mid` int(11) NOT NULL,
  `mname` varchar(100) NOT NULL,
  `mpic` longblob NOT NULL,
  `nid` int(11) NOT NULL,
  `nname` varchar(50) NOT NULL,
  `reqqty` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ngoreg`
--

CREATE TABLE `ngoreg` (
  `nid` int(11) NOT NULL,
  `nname` varchar(50) NOT NULL,
  `nemail` varchar(50) NOT NULL,
  `pass` varchar(500) NOT NULL,
  `cpass` varchar(500) NOT NULL,
  `contact` int(10) NOT NULL,
  `ndes` varchar(50) NOT NULL,
  `nlicence` varchar(50) NOT NULL,
  `npic` mediumblob NOT NULL,
  `naddress` varchar(300) NOT NULL,
  `nsincedate` date NOT NULL,
  `regdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `userreg`
--

CREATE TABLE `userreg` (
  `uid` int(11) NOT NULL,
  `uname` varchar(100) NOT NULL,
  `uemail` varchar(100) NOT NULL,
  `pass` varchar(500) NOT NULL,
  `cpass` varchar(500) NOT NULL,
  `ucon` varchar(100) NOT NULL,
  `about` varchar(200) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `upic` longblob DEFAULT NULL,
  `regdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userreg`
--

INSERT INTO `userreg` (`uid`, `uname`, `uemail`, `pass`, `cpass`, `ucon`, `about`, `gender`, `upic`, `regdate`) VALUES
(1, 'Yash ', 'yashmishra9925@gmail.com', '1234', '1234', '45646546', 'kjk', 'null', 0x7369646875206d6f6f736577616c612e6a7067, '2022-11-05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `med_donater`
--
ALTER TABLE `med_donater`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `med_required`
--
ALTER TABLE `med_required`
  ADD PRIMARY KEY (`mid`);

--
-- Indexes for table `ngoreg`
--
ALTER TABLE `ngoreg`
  ADD PRIMARY KEY (`nid`);

--
-- Indexes for table `userreg`
--
ALTER TABLE `userreg`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `med_donater`
--
ALTER TABLE `med_donater`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `med_required`
--
ALTER TABLE `med_required`
  MODIFY `mid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ngoreg`
--
ALTER TABLE `ngoreg`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userreg`
--
ALTER TABLE `userreg`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
