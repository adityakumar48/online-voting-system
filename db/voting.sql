-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 26, 2020 at 02:37 PM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `voting`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `aname` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`aid`, `username`, `password`, `aname`) VALUES
(1, 'admin@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'admin'),
(2, 'admin@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

DROP TABLE IF EXISTS `candidates`;
CREATE TABLE IF NOT EXISTS `candidates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile` bigint(20) DEFAULT NULL,
  `branch` varchar(30) DEFAULT NULL,
  `rollno` bigint(30) DEFAULT NULL,
  `enrollid` varchar(40) DEFAULT NULL,
  `approve_status` int(11) DEFAULT '0' COMMENT '0 for pending , 1 for approve 2 for reject',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `name`, `email`, `mobile`, `branch`, `rollno`, `enrollid`, `approve_status`) VALUES
(31, 'Abhay', 'mayank@gmail.com', 1234, 'Information Technology', 2314, '1324', 0),
(30, 'Abhay', 'mayank@gmail.com', 1234, 'Information Technology', 2314, '1324', 2),
(29, 'Abhay', 'mayank@gmail.com', 485, 'Information Technology', 6845, '85', 2),
(28, 'Mayank', 'mayank@gmail.com', 626887802, 'Information Technology', 205503318002, 'BF667@csvtu.ac.in', 1),
(26, 'Prakash', 'prakashverma@gmail.com', 6268882620, 'Information Technology', 525296, 'sdfsdfgr', 1),
(27, 'Aditya Kumar', 'adityakumarverified@gmail.com', 6268887802, 'Information Technology', 205503318002, 'sdfsafd', 1);

-- --------------------------------------------------------

--
-- Table structure for table `candidate_2nd`
--

DROP TABLE IF EXISTS `candidate_2nd`;
CREATE TABLE IF NOT EXISTS `candidate_2nd` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `mobile` bigint(20) DEFAULT NULL,
  `branch` varchar(200) DEFAULT NULL,
  `rollno` bigint(20) DEFAULT NULL,
  `enrollid` varchar(200) DEFAULT NULL,
  `approve_status` int(20) DEFAULT '0' COMMENT '0 for pending , 1 for approve 2 for reject',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidate_2nd`
--

INSERT INTO `candidate_2nd` (`id`, `name`, `email`, `mobile`, `branch`, `rollno`, `enrollid`, `approve_status`) VALUES
(1, 'Mayank', 'mayank@gmail.com', 1238846, 'Information Technology', 68468, 'sdfsdf', 1),
(2, 'Mayank', 'adfi8edhfousah@gmail.com', 65, 'Information Technology', 2005002, 'sdes', 1);

-- --------------------------------------------------------

--
-- Table structure for table `candidate_3rd`
--

DROP TABLE IF EXISTS `candidate_3rd`;
CREATE TABLE IF NOT EXISTS `candidate_3rd` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `mobile` bigint(20) DEFAULT NULL,
  `branch` varchar(60) DEFAULT NULL,
  `rollno` bigint(20) DEFAULT NULL,
  `enrollid` varchar(40) DEFAULT NULL,
  `approve_status` int(11) DEFAULT '0' COMMENT '	0 for pending , 1 for approve 2 for reject',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidate_3rd`
--

INSERT INTO `candidate_3rd` (`id`, `name`, `email`, `mobile`, `branch`, `rollno`, `enrollid`, `approve_status`) VALUES
(1, 'Mayank', 'mayank@gmail.com', 32412, 'Information Technology', 3342, '432', 1),
(2, 'Parinay', 'mayank@gmail.com', 6269888, 'Mechanical', 6849545, '32432', 1),
(3, 'Abhay', 'mayank@gmail.com', 626887802, 'Information Technology', 5255152, '3242134', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `message` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `message`) VALUES
(1, 'Aditya', 'adityakumarverified@gmail.com', 'nothing'),
(2, 'Aditya', 'adityakumarverified@gmail.com', 'nothing');

-- --------------------------------------------------------

--
-- Table structure for table `suggestion`
--

DROP TABLE IF EXISTS `suggestion`;
CREATE TABLE IF NOT EXISTS `suggestion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `number` bigint(20) DEFAULT NULL,
  `rollno` bigint(20) DEFAULT NULL,
  `suggestion` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suggestion`
--

INSERT INTO `suggestion` (`id`, `name`, `email`, `number`, `rollno`, `suggestion`) VALUES
(1, 'Aditya', 'adityakumarverified@gmail.com', 9898, 651, 'Nothing');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `Branch` text,
  `number` bigint(20) DEFAULT NULL,
  `candidate` varchar(60) DEFAULT NULL,
  `rollno` bigint(20) DEFAULT NULL,
  `reason` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `Branch`, `number`, `candidate`, `rollno`, `reason`) VALUES
(26, 'Aditya Kumar', 'adityakumarverified@gmail.com', 'IT', 6268887802, 'Mayank', 205503318002, 'nothing'),
(27, 'Aditya Kumar', 'adityakumarverified@gmail.com', 'IT', 6268887802, 'Prakash', 205503318002, ''),
(28, 'Aditya Kumar', 'adityakumarverified@gmail.com', 'IT', 6268887802, 'Mayank', 3453, ''),
(29, 'Aditya Kumar', 'adityakumarverified@gmail.com', 'IT', 6268887802, 'Mayank', 3242, ''),
(30, 'Aditya Kumar', 'adityakumarverified@gmail.com', 'IT', 6268887802, 'Mayank', 205503318002, ''),
(31, 'Aditya Kumar', 'adityakumarverified@gmail.com', 'IT', 6268887802, 'Mayank', 208850, ''),
(32, 'Aditya Kumar', 'adityakumarverified@gmail.com', 'IT', 6268887802, 'Mayank', 20855, ''),
(33, 'Abhay', 'adfi8edhfousah@gmail.com', 'IT', 6264874874, 'Mayank', 684985, ''),
(34, 'Mayank', 'adfi8edhfousah@gmail.com', 'IT', 95489, 'Mayank', 65456, 'tghgfh');

-- --------------------------------------------------------

--
-- Table structure for table `users_2nd`
--

DROP TABLE IF EXISTS `users_2nd`;
CREATE TABLE IF NOT EXISTS `users_2nd` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `Branch` varchar(20) DEFAULT NULL,
  `number` bigint(20) DEFAULT NULL,
  `candidate` varchar(40) DEFAULT NULL,
  `rollno` bigint(30) DEFAULT NULL,
  `reason` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_2nd`
--

INSERT INTO `users_2nd` (`id`, `name`, `email`, `Branch`, `number`, `candidate`, `rollno`, `reason`) VALUES
(1, 'Parinay', 'mayank@gmail.com', 'IT', 626289, 'Mayank', 9845, 'dsft'),
(2, 'aditya', 'mayank@gmail.com', 'IT', 6266, 'Parinay', 626887802, 'sea'),
(3, 'Mayank', 'mayank@gmail.com', 'IT', 626887802, 'Mayank', 205503318022, 'nothing');

-- --------------------------------------------------------

--
-- Table structure for table `users_3rd`
--

DROP TABLE IF EXISTS `users_3rd`;
CREATE TABLE IF NOT EXISTS `users_3rd` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `Branch` varchar(60) DEFAULT NULL,
  `number` bigint(30) DEFAULT NULL,
  `candidate` varchar(60) DEFAULT NULL,
  `rollno` bigint(30) DEFAULT NULL,
  `reason` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_3rd`
--

INSERT INTO `users_3rd` (`id`, `name`, `email`, `Branch`, `number`, `candidate`, `rollno`, `reason`) VALUES
(1, 'Abhay', 'mayank@gmail.com', 'IT', 684565, 'Parinay', 651, 'sade'),
(2, 'Aditya', 'adityakumarverified@gmail.com', 'IT', 6268887802, 'Parinay', 205503318002, 'nothing\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
