-- phpMyAdmin SQL Dump
-- version 3.2.0
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306

-- Generation Time: Aug 05, 2015 at 04:51 PM
-- Server version: 5.1.35
-- PHP Version: 5.2.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `shs`
--

-- --------------------------------------------------------

--
-- Table structure for table `disease`
--

CREATE TABLE `disease` (
  `d_id` int(12) NOT NULL AUTO_INCREMENT,
  `test_id` int(12) NOT NULL,
  `remarks` varchar(30) COLLATE utf8_bin NOT NULL,
  `disease` varchar(30) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`d_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=5 ;

--
-- Dumping data for table `disease`
--

INSERT INTO `disease` VALUES(1, 1, 'low', 'anemia');
INSERT INTO `disease` VALUES(2, 2, 'high', 'diabetes');
INSERT INTO `disease` VALUES(3, 3, 'high', 'hypertension');
INSERT INTO `disease` VALUES(4, 4, 'high', 'infection');

-- --------------------------------------------------------

--
-- Table structure for table `institute`
--

CREATE TABLE `institute` (
  `IID` int(12) NOT NULL AUTO_INCREMENT,
  `Inst_Name` varchar(100) COLLATE utf8_bin NOT NULL,
  `Location` varchar(500) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`IID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=4 ;

--
-- Dumping data for table `institute`
--

INSERT INTO `institute` VALUES(1, 'Health ministry', 'Bangladesh secretariate');
INSERT INTO `institute` VALUES(2, 'Lab aid Hospital', 'Dhanmondi ');
INSERT INTO `institute` VALUES(3, 'Square Hospital', 'Panthapath');

-- --------------------------------------------------------

--
-- Table structure for table `lifestyle_factors`
--

CREATE TABLE `lifestyle_factors` (
  `Factor_ID` int(12) NOT NULL AUTO_INCREMENT,
  `Factor` varchar(20) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`Factor_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=6 ;

--
-- Dumping data for table `lifestyle_factors`
--

INSERT INTO `lifestyle_factors` VALUES(1, 'food');
INSERT INTO `lifestyle_factors` VALUES(2, 'age');
INSERT INTO `lifestyle_factors` VALUES(3, 'work');
INSERT INTO `lifestyle_factors` VALUES(4, 'area');

-- --------------------------------------------------------

--
-- Table structure for table `lifestyle_records`
--

CREATE TABLE `lifestyle_records` (
  `LR_ID` int(20) NOT NULL AUTO_INCREMENT,
  `PID` int(12) NOT NULL,
  `Date` date NOT NULL,
  `UID` int(12) NOT NULL,
  `Factor_ID` int(12) NOT NULL,
  `Q_ID` int(12) NOT NULL,
  `Option_ID` int(12) NOT NULL,
  PRIMARY KEY (`LR_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=170 ;

--
-- Dumping data for table `lifestyle_records`
--

INSERT INTO `lifestyle_records` VALUES(1, 1, '2012-12-12', 3, 1, 1, 3);
INSERT INTO `lifestyle_records` VALUES(2, 1, '2012-12-12', 3, 1, 2, 6);
INSERT INTO `lifestyle_records` VALUES(3, 1, '2012-12-12', 3, 1, 3, 10);
INSERT INTO `lifestyle_records` VALUES(4, 1, '2012-12-12', 3, 2, 4, 17);
INSERT INTO `lifestyle_records` VALUES(5, 1, '2012-12-12', 3, 3, 5, 19);
INSERT INTO `lifestyle_records` VALUES(6, 1, '2012-12-12', 3, 3, 6, 22);
INSERT INTO `lifestyle_records` VALUES(7, 1, '2012-12-12', 3, 4, 7, 26);
INSERT INTO `lifestyle_records` VALUES(9, 2, '2013-05-14', 3, 1, 1, 4);
INSERT INTO `lifestyle_records` VALUES(10, 2, '2013-05-14', 3, 1, 2, 5);
INSERT INTO `lifestyle_records` VALUES(11, 2, '2013-05-14', 3, 1, 3, 10);
INSERT INTO `lifestyle_records` VALUES(12, 2, '2013-05-14', 3, 2, 4, 16);
INSERT INTO `lifestyle_records` VALUES(13, 2, '2013-05-14', 3, 3, 5, 21);
INSERT INTO `lifestyle_records` VALUES(14, 2, '2013-05-14', 3, 3, 6, 23);
INSERT INTO `lifestyle_records` VALUES(15, 2, '2013-05-14', 3, 4, 7, 26);
INSERT INTO `lifestyle_records` VALUES(17, 3, '2013-06-04', 3, 1, 1, 1);
INSERT INTO `lifestyle_records` VALUES(18, 3, '2013-06-04', 3, 1, 2, 7);
INSERT INTO `lifestyle_records` VALUES(19, 3, '2013-06-04', 3, 1, 3, 11);
INSERT INTO `lifestyle_records` VALUES(20, 3, '2013-06-04', 3, 2, 4, 18);
INSERT INTO `lifestyle_records` VALUES(21, 3, '2013-06-04', 3, 3, 5, 21);
INSERT INTO `lifestyle_records` VALUES(22, 3, '2013-06-04', 3, 3, 6, 23);
INSERT INTO `lifestyle_records` VALUES(23, 3, '2013-06-04', 3, 4, 7, 26);
INSERT INTO `lifestyle_records` VALUES(25, 4, '2013-06-04', 3, 1, 1, 3);
INSERT INTO `lifestyle_records` VALUES(26, 4, '2013-06-04', 3, 1, 2, 5);
INSERT INTO `lifestyle_records` VALUES(27, 4, '2013-06-04', 3, 1, 3, 11);
INSERT INTO `lifestyle_records` VALUES(28, 4, '2013-06-04', 3, 2, 4, 17);
INSERT INTO `lifestyle_records` VALUES(29, 4, '2013-06-04', 3, 3, 5, 20);
INSERT INTO `lifestyle_records` VALUES(30, 4, '2013-06-04', 3, 3, 6, 24);
INSERT INTO `lifestyle_records` VALUES(31, 4, '2013-06-04', 3, 4, 7, 26);
INSERT INTO `lifestyle_records` VALUES(33, 5, '2013-06-04', 3, 1, 1, 4);
INSERT INTO `lifestyle_records` VALUES(34, 5, '2013-06-04', 3, 1, 2, 6);
INSERT INTO `lifestyle_records` VALUES(35, 5, '2013-06-04', 3, 1, 3, 10);
INSERT INTO `lifestyle_records` VALUES(36, 5, '2013-06-04', 3, 2, 4, 15);
INSERT INTO `lifestyle_records` VALUES(37, 5, '2013-06-04', 3, 3, 5, 19);
INSERT INTO `lifestyle_records` VALUES(38, 5, '2013-06-04', 3, 3, 6, 22);
INSERT INTO `lifestyle_records` VALUES(39, 5, '2013-06-04', 3, 4, 7, 27);
INSERT INTO `lifestyle_records` VALUES(41, 6, '2013-06-05', 3, 1, 1, 4);
INSERT INTO `lifestyle_records` VALUES(42, 6, '2013-06-05', 3, 1, 2, 7);
INSERT INTO `lifestyle_records` VALUES(43, 6, '2013-06-05', 3, 1, 3, 11);
INSERT INTO `lifestyle_records` VALUES(44, 6, '2013-06-05', 3, 2, 4, 18);
INSERT INTO `lifestyle_records` VALUES(45, 6, '2013-06-05', 3, 3, 5, 20);
INSERT INTO `lifestyle_records` VALUES(46, 6, '2013-06-05', 3, 3, 6, 24);
INSERT INTO `lifestyle_records` VALUES(47, 6, '2013-06-05', 3, 4, 7, 26);
INSERT INTO `lifestyle_records` VALUES(49, 7, '2014-09-08', 3, 1, 1, 3);
INSERT INTO `lifestyle_records` VALUES(50, 7, '2014-09-08', 3, 1, 2, 5);
INSERT INTO `lifestyle_records` VALUES(51, 7, '2014-09-08', 3, 1, 3, 12);
INSERT INTO `lifestyle_records` VALUES(52, 7, '2014-09-08', 3, 2, 4, 13);
INSERT INTO `lifestyle_records` VALUES(53, 7, '2014-09-08', 3, 3, 5, 19);
INSERT INTO `lifestyle_records` VALUES(54, 7, '2014-09-08', 3, 3, 6, 22);
INSERT INTO `lifestyle_records` VALUES(55, 7, '2014-09-08', 3, 4, 7, 27);
INSERT INTO `lifestyle_records` VALUES(57, 8, '2015-07-01', 3, 1, 1, 3);
INSERT INTO `lifestyle_records` VALUES(58, 8, '2015-07-01', 3, 1, 2, 6);
INSERT INTO `lifestyle_records` VALUES(59, 8, '2015-07-01', 3, 1, 3, 11);
INSERT INTO `lifestyle_records` VALUES(60, 8, '2015-07-01', 3, 2, 4, 16);
INSERT INTO `lifestyle_records` VALUES(61, 8, '2015-07-01', 3, 3, 5, 21);
INSERT INTO `lifestyle_records` VALUES(62, 8, '2015-07-01', 3, 3, 6, 24);
INSERT INTO `lifestyle_records` VALUES(63, 8, '2015-07-01', 3, 4, 7, 26);
INSERT INTO `lifestyle_records` VALUES(65, 9, '2015-03-15', 3, 1, 1, 2);
INSERT INTO `lifestyle_records` VALUES(66, 9, '2015-03-15', 3, 1, 2, 5);
INSERT INTO `lifestyle_records` VALUES(67, 9, '2015-03-15', 3, 1, 3, 10);
INSERT INTO `lifestyle_records` VALUES(68, 9, '2015-03-15', 3, 2, 4, 18);
INSERT INTO `lifestyle_records` VALUES(69, 9, '2015-03-15', 3, 3, 5, 19);
INSERT INTO `lifestyle_records` VALUES(70, 9, '2015-03-15', 3, 3, 6, 22);
INSERT INTO `lifestyle_records` VALUES(71, 9, '2015-03-15', 3, 4, 7, 27);
INSERT INTO `lifestyle_records` VALUES(73, 10, '2015-07-07', 3, 1, 1, 2);
INSERT INTO `lifestyle_records` VALUES(74, 10, '2015-07-07', 3, 1, 2, 6);
INSERT INTO `lifestyle_records` VALUES(75, 10, '2015-07-07', 3, 1, 3, 10);
INSERT INTO `lifestyle_records` VALUES(76, 10, '2015-07-07', 3, 2, 4, 15);
INSERT INTO `lifestyle_records` VALUES(77, 10, '2015-07-07', 3, 3, 5, 21);
INSERT INTO `lifestyle_records` VALUES(78, 10, '2015-07-07', 3, 3, 6, 24);
INSERT INTO `lifestyle_records` VALUES(79, 10, '2015-07-07', 3, 4, 7, 26);
INSERT INTO `lifestyle_records` VALUES(80, 11, '2012-09-09', 3, 1, 1, 3);
INSERT INTO `lifestyle_records` VALUES(81, 11, '2012-09-09', 3, 1, 2, 6);
INSERT INTO `lifestyle_records` VALUES(82, 11, '2012-09-09', 3, 1, 3, 10);
INSERT INTO `lifestyle_records` VALUES(83, 11, '2012-09-09', 3, 2, 4, 17);
INSERT INTO `lifestyle_records` VALUES(84, 11, '2012-09-09', 3, 3, 5, 19);
INSERT INTO `lifestyle_records` VALUES(85, 11, '2012-09-09', 3, 3, 6, 23);
INSERT INTO `lifestyle_records` VALUES(86, 11, '2012-09-09', 3, 4, 7, 26);
INSERT INTO `lifestyle_records` VALUES(87, 12, '2012-09-09', 3, 1, 1, 3);
INSERT INTO `lifestyle_records` VALUES(88, 12, '2012-09-09', 3, 1, 2, 6);
INSERT INTO `lifestyle_records` VALUES(89, 12, '2012-09-09', 3, 1, 3, 10);
INSERT INTO `lifestyle_records` VALUES(90, 12, '2012-09-09', 3, 2, 4, 17);
INSERT INTO `lifestyle_records` VALUES(91, 12, '2012-09-09', 3, 3, 5, 20);
INSERT INTO `lifestyle_records` VALUES(92, 12, '2012-09-09', 3, 3, 6, 23);
INSERT INTO `lifestyle_records` VALUES(93, 12, '2012-09-09', 3, 4, 7, 26);
INSERT INTO `lifestyle_records` VALUES(94, 13, '2012-09-09', 3, 1, 1, 3);
INSERT INTO `lifestyle_records` VALUES(95, 13, '2012-09-09', 3, 1, 2, 6);
INSERT INTO `lifestyle_records` VALUES(96, 13, '2012-09-09', 3, 1, 3, 10);
INSERT INTO `lifestyle_records` VALUES(97, 13, '2012-09-09', 3, 2, 4, 18);
INSERT INTO `lifestyle_records` VALUES(98, 13, '2012-09-09', 3, 3, 5, 21);
INSERT INTO `lifestyle_records` VALUES(99, 13, '2012-09-09', 3, 3, 6, 22);
INSERT INTO `lifestyle_records` VALUES(100, 13, '2012-09-09', 3, 4, 7, 26);
INSERT INTO `lifestyle_records` VALUES(101, 14, '2012-09-09', 3, 1, 1, 1);
INSERT INTO `lifestyle_records` VALUES(102, 14, '2012-09-09', 3, 1, 2, 6);
INSERT INTO `lifestyle_records` VALUES(103, 14, '2012-09-09', 3, 1, 3, 11);
INSERT INTO `lifestyle_records` VALUES(104, 14, '2012-09-09', 3, 2, 4, 18);
INSERT INTO `lifestyle_records` VALUES(105, 14, '2012-09-09', 3, 3, 5, 20);
INSERT INTO `lifestyle_records` VALUES(106, 14, '2012-09-09', 3, 3, 6, 22);
INSERT INTO `lifestyle_records` VALUES(107, 14, '2012-09-09', 3, 4, 7, 26);
INSERT INTO `lifestyle_records` VALUES(108, 15, '2012-09-09', 3, 1, 1, 1);
INSERT INTO `lifestyle_records` VALUES(109, 15, '2012-09-09', 3, 1, 2, 7);
INSERT INTO `lifestyle_records` VALUES(110, 15, '2012-09-09', 3, 1, 3, 11);
INSERT INTO `lifestyle_records` VALUES(111, 15, '2012-09-09', 3, 2, 4, 18);
INSERT INTO `lifestyle_records` VALUES(112, 15, '2012-09-09', 3, 3, 5, 20);
INSERT INTO `lifestyle_records` VALUES(113, 15, '2012-09-09', 3, 3, 6, 22);
INSERT INTO `lifestyle_records` VALUES(114, 15, '2012-09-09', 3, 4, 7, 26);
INSERT INTO `lifestyle_records` VALUES(115, 16, '2012-09-09', 3, 1, 1, 1);
INSERT INTO `lifestyle_records` VALUES(116, 16, '2012-09-09', 3, 1, 2, 7);
INSERT INTO `lifestyle_records` VALUES(117, 16, '2012-09-09', 3, 1, 3, 10);
INSERT INTO `lifestyle_records` VALUES(118, 16, '2012-09-09', 3, 2, 4, 18);
INSERT INTO `lifestyle_records` VALUES(119, 16, '2012-09-09', 3, 3, 5, 21);
INSERT INTO `lifestyle_records` VALUES(120, 16, '2012-09-09', 3, 3, 6, 23);
INSERT INTO `lifestyle_records` VALUES(121, 16, '2012-09-09', 3, 4, 7, 27);
INSERT INTO `lifestyle_records` VALUES(122, 17, '2012-09-09', 3, 1, 1, 3);
INSERT INTO `lifestyle_records` VALUES(123, 17, '2012-09-09', 3, 1, 2, 5);
INSERT INTO `lifestyle_records` VALUES(124, 17, '2012-09-09', 3, 1, 3, 12);
INSERT INTO `lifestyle_records` VALUES(125, 17, '2012-09-09', 3, 2, 4, 13);
INSERT INTO `lifestyle_records` VALUES(126, 17, '2012-09-09', 3, 3, 5, 19);
INSERT INTO `lifestyle_records` VALUES(127, 17, '2012-09-09', 3, 3, 6, 22);
INSERT INTO `lifestyle_records` VALUES(128, 17, '2012-09-09', 3, 4, 7, 27);
INSERT INTO `lifestyle_records` VALUES(129, 18, '2012-09-09', 3, 1, 1, 3);
INSERT INTO `lifestyle_records` VALUES(130, 18, '2012-09-09', 3, 1, 2, 5);
INSERT INTO `lifestyle_records` VALUES(131, 18, '2012-09-09', 3, 1, 3, 12);
INSERT INTO `lifestyle_records` VALUES(132, 18, '2012-09-09', 3, 2, 4, 13);
INSERT INTO `lifestyle_records` VALUES(133, 18, '2012-09-09', 3, 3, 5, 21);
INSERT INTO `lifestyle_records` VALUES(134, 18, '2012-09-09', 3, 3, 6, 22);
INSERT INTO `lifestyle_records` VALUES(135, 18, '2012-09-09', 3, 4, 7, 26);
INSERT INTO `lifestyle_records` VALUES(169, 2, '2015-08-05', 13, 1, 3, 8);
INSERT INTO `lifestyle_records` VALUES(168, 2, '2015-08-05', 13, 1, 2, 5);
INSERT INTO `lifestyle_records` VALUES(167, 2, '2015-08-05', 13, 1, 1, 1);
INSERT INTO `lifestyle_records` VALUES(166, 2, '2015-08-05', 13, 1, 1, 3);
INSERT INTO `lifestyle_records` VALUES(165, 19, '2014-12-01', 3, 4, 7, 26);
INSERT INTO `lifestyle_records` VALUES(164, 19, '2014-12-01', 3, 3, 6, 22);
INSERT INTO `lifestyle_records` VALUES(163, 19, '2014-12-01', 3, 3, 5, 20);
INSERT INTO `lifestyle_records` VALUES(162, 19, '2014-12-01', 3, 2, 4, 15);

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `Option_ID` int(12) NOT NULL AUTO_INCREMENT,
  `Factor_ID` int(12) NOT NULL,
  `Q_ID` int(12) NOT NULL,
  `options` varchar(50) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`Option_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=30 ;

--
-- Dumping data for table `options`
--

INSERT INTO `options` VALUES(1, 1, 1, 'meat-fish based');
INSERT INTO `options` VALUES(2, 1, 1, 'vegetable based');
INSERT INTO `options` VALUES(3, 1, 1, 'carbohydrate ');
INSERT INTO `options` VALUES(4, 1, 1, 'all');
INSERT INTO `options` VALUES(5, 1, 2, 'home based');
INSERT INTO `options` VALUES(6, 1, 2, 'fast food');
INSERT INTO `options` VALUES(7, 1, 2, 'beverage');
INSERT INTO `options` VALUES(8, 1, 3, 'once');
INSERT INTO `options` VALUES(9, 1, 3, 'twice');
INSERT INTO `options` VALUES(10, 1, 3, 'thrice');
INSERT INTO `options` VALUES(11, 1, 3, 'four times');
INSERT INTO `options` VALUES(12, 1, 3, 'five times');
INSERT INTO `options` VALUES(13, 2, 4, '0-8');
INSERT INTO `options` VALUES(14, 2, 4, '8-12');
INSERT INTO `options` VALUES(15, 2, 4, '12-18');
INSERT INTO `options` VALUES(16, 2, 4, '18-30');
INSERT INTO `options` VALUES(17, 2, 4, '30-50');
INSERT INTO `options` VALUES(18, 2, 4, '50-100');
INSERT INTO `options` VALUES(19, 3, 5, 'physical');
INSERT INTO `options` VALUES(20, 3, 5, 'mental');
INSERT INTO `options` VALUES(21, 3, 5, 'both');
INSERT INTO `options` VALUES(22, 3, 6, '0-3');
INSERT INTO `options` VALUES(23, 3, 6, '3-6');
INSERT INTO `options` VALUES(24, 3, 6, '6-8');
INSERT INTO `options` VALUES(25, 3, 6, '8-15');
INSERT INTO `options` VALUES(26, 4, 7, 'city');
INSERT INTO `options` VALUES(27, 4, 7, 'village');

-- --------------------------------------------------------

--
-- Table structure for table `option_bound`
--

CREATE TABLE `option_bound` (
  `Option_ID` varchar(12) COLLATE utf8_bin NOT NULL,
  `Lower` int(10) NOT NULL,
  `Upper` int(10) NOT NULL,
  PRIMARY KEY (`Option_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `option_bound`
--

INSERT INTO `option_bound` VALUES('13', 0, 8);
INSERT INTO `option_bound` VALUES('14', 8, 12);
INSERT INTO `option_bound` VALUES('15', 12, 18);
INSERT INTO `option_bound` VALUES('16', 18, 30);
INSERT INTO `option_bound` VALUES('17', 30, 50);
INSERT INTO `option_bound` VALUES('18', 50, 100);
INSERT INTO `option_bound` VALUES('22', 0, 3);
INSERT INTO `option_bound` VALUES('23', 3, 6);
INSERT INTO `option_bound` VALUES('24', 6, 8);
INSERT INTO `option_bound` VALUES('25', 8, 15);

-- --------------------------------------------------------

--
-- Table structure for table `option_string`
--

CREATE TABLE `option_string` (
  `Option_ID` int(12) NOT NULL,
  `Option` varchar(50) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`Option_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `option_string`
--

INSERT INTO `option_string` VALUES(1, 'meat-fish based');
INSERT INTO `option_string` VALUES(2, 'vegetable based');
INSERT INTO `option_string` VALUES(3, 'carbohydrate (rice,bread,sugar,potato)');
INSERT INTO `option_string` VALUES(4, 'all');
INSERT INTO `option_string` VALUES(5, 'home based');
INSERT INTO `option_string` VALUES(6, 'fast food');
INSERT INTO `option_string` VALUES(7, 'beverage ');
INSERT INTO `option_string` VALUES(8, 'once');
INSERT INTO `option_string` VALUES(9, 'twice');
INSERT INTO `option_string` VALUES(10, 'thrice');
INSERT INTO `option_string` VALUES(11, 'four times');
INSERT INTO `option_string` VALUES(12, 'five times');
INSERT INTO `option_string` VALUES(19, 'physical');
INSERT INTO `option_string` VALUES(20, 'mental');
INSERT INTO `option_string` VALUES(21, 'both');
INSERT INTO `option_string` VALUES(26, 'city');
INSERT INTO `option_string` VALUES(27, 'village');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `PID` int(12) NOT NULL AUTO_INCREMENT,
  `Password` varchar(50) COLLATE utf8_bin NOT NULL,
  `gender` varchar(20) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`PID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=20 ;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` VALUES(1, 'aa', 'male');
INSERT INTO `patient` VALUES(2, 'bb', 'female');
INSERT INTO `patient` VALUES(3, 'cc', 'male');
INSERT INTO `patient` VALUES(4, 'dd', 'male');
INSERT INTO `patient` VALUES(5, 'ee', 'female');
INSERT INTO `patient` VALUES(6, 'ff', 'male');
INSERT INTO `patient` VALUES(7, 'gg', 'male');
INSERT INTO `patient` VALUES(8, 'hh', 'female');
INSERT INTO `patient` VALUES(9, 'ii', 'female');
INSERT INTO `patient` VALUES(10, 'jj', 'female');
INSERT INTO `patient` VALUES(11, 'kk', 'male');
INSERT INTO `patient` VALUES(12, 'll', 'female');
INSERT INTO `patient` VALUES(13, 'mm', 'male');
INSERT INTO `patient` VALUES(14, 'nn', 'male');
INSERT INTO `patient` VALUES(15, 'oo', 'female');
INSERT INTO `patient` VALUES(16, 'pp', 'male');
INSERT INTO `patient` VALUES(17, 'qq', 'male');
INSERT INTO `patient` VALUES(18, 'rr', 'female');
INSERT INTO `patient` VALUES(19, 'ss', 'male');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `Q_ID` int(12) NOT NULL AUTO_INCREMENT,
  `Factor_ID` int(12) NOT NULL,
  `Question` varchar(500) COLLATE utf8_bin NOT NULL,
  `bound` int(1) NOT NULL,
  PRIMARY KEY (`Q_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=9 ;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` VALUES(1, 1, 'What types of food', 0);
INSERT INTO `questions` VALUES(2, 1, 'What kind of food', 0);
INSERT INTO `questions` VALUES(3, 1, 'How many times you take your meals a day', 1);
INSERT INTO `questions` VALUES(4, 2, 'What is your age range', 1);
INSERT INTO `questions` VALUES(5, 3, 'What is your work type', 0);
INSERT INTO `questions` VALUES(6, 3, 'How long do you work in a day', 1);
INSERT INTO `questions` VALUES(7, 4, 'Where do you live ', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

CREATE TABLE `tests` (
  `Test_ID` int(12) NOT NULL AUTO_INCREMENT,
  `Test_Name` varchar(50) COLLATE utf8_bin NOT NULL,
  `Test_Type` varchar(50) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`Test_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tests`
--

INSERT INTO `tests` VALUES(1, 'Hemoglobin', 'blood ');
INSERT INTO `tests` VALUES(2, 'Blood sugar', 'blood ');
INSERT INTO `tests` VALUES(3, 'Cholesterol', 'blood');
INSERT INTO `tests` VALUES(4, 'ESR', 'blood');

-- --------------------------------------------------------

--
-- Table structure for table `test_nr`
--

CREATE TABLE `test_nr` (
  `test_nr_id` int(12) NOT NULL AUTO_INCREMENT,
  `test_id` int(12) NOT NULL,
  `lower` float NOT NULL,
  `upper` float NOT NULL,
  `gender` varchar(12) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`test_nr_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=6 ;

--
-- Dumping data for table `test_nr`
--

INSERT INTO `test_nr` VALUES(1, 1, 12, 18, 'male');
INSERT INTO `test_nr` VALUES(2, 1, 11, 16, 'female');
INSERT INTO `test_nr` VALUES(3, 2, 5.5, 7, 'both');
INSERT INTO `test_nr` VALUES(4, 3, 100, 200, 'both');
INSERT INTO `test_nr` VALUES(5, 4, 0, 20, 'both');

-- --------------------------------------------------------

--
-- Table structure for table `test_records`
--

CREATE TABLE `test_records` (
  `TR_ID` int(20) NOT NULL AUTO_INCREMENT,
  `PID` int(12) NOT NULL,
  `Date` date NOT NULL,
  `UID` int(12) NOT NULL,
  `Test_ID` int(12) NOT NULL,
  `Result` double NOT NULL,
  `remark` varchar(30) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`TR_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=87 ;

--
-- Dumping data for table `test_records`
--

INSERT INTO `test_records` VALUES(1, 1, '2012-12-12', 3, 1, 9.8, 'low');
INSERT INTO `test_records` VALUES(2, 1, '2012-12-12', 3, 2, 6.5, 'higher marginal');
INSERT INTO `test_records` VALUES(3, 1, '2012-12-12', 3, 3, 235, 'higher marginal');
INSERT INTO `test_records` VALUES(4, 1, '2012-12-12', 3, 4, 25, 'higher marginal');
INSERT INTO `test_records` VALUES(5, 2, '2013-05-14', 3, 1, 11, 'normal');
INSERT INTO `test_records` VALUES(6, 2, '2013-05-14', 3, 2, 5.7, 'normal');
INSERT INTO `test_records` VALUES(7, 2, '2013-05-14', 3, 3, 160, 'normal');
INSERT INTO `test_records` VALUES(8, 2, '2013-05-14', 3, 4, 21, 'normal');
INSERT INTO `test_records` VALUES(9, 3, '2013-06-04', 3, 1, 8.2, 'low');
INSERT INTO `test_records` VALUES(10, 3, '2013-06-04', 3, 2, 7.2, 'high');
INSERT INTO `test_records` VALUES(11, 3, '2013-06-04', 3, 3, 250, 'high');
INSERT INTO `test_records` VALUES(12, 3, '2013-06-04', 3, 4, 84, 'high');
INSERT INTO `test_records` VALUES(13, 4, '2013-06-04', 3, 2, 6.9, 'higher marginal');
INSERT INTO `test_records` VALUES(14, 5, '2013-06-04', 3, 1, 9.6, 'lower marginal');
INSERT INTO `test_records` VALUES(15, 6, '2013-06-05', 3, 2, 7.3, 'high');
INSERT INTO `test_records` VALUES(16, 6, '2013-06-06', 3, 3, 245, 'higher marginal');
INSERT INTO `test_records` VALUES(17, 7, '2014-09-08', 3, 1, 10, 'lower marginal');
INSERT INTO `test_records` VALUES(18, 7, '2014-09-08', 3, 2, 7.3, 'high');
INSERT INTO `test_records` VALUES(19, 7, '2014-12-08', 3, 4, 98, 'high');
INSERT INTO `test_records` VALUES(20, 9, '2015-03-15', 3, 1, 8.4, 'low');
INSERT INTO `test_records` VALUES(21, 9, '2015-04-16', 3, 4, 73, 'high');
INSERT INTO `test_records` VALUES(22, 8, '2015-07-01', 3, 2, 6.9, 'higher marginal');
INSERT INTO `test_records` VALUES(23, 10, '2015-07-07', 3, 1, 7.5, 'low');
INSERT INTO `test_records` VALUES(24, 11, '2012-09-09', 3, 1, 7.5, 'low');
INSERT INTO `test_records` VALUES(25, 11, '2012-09-09', 3, 2, 7.9, 'high');
INSERT INTO `test_records` VALUES(26, 11, '2012-09-09', 3, 3, 221, 'higher marginal');
INSERT INTO `test_records` VALUES(27, 11, '2012-09-09', 3, 4, 57, 'high');
INSERT INTO `test_records` VALUES(28, 12, '2012-09-09', 3, 1, 7.5, 'low');
INSERT INTO `test_records` VALUES(29, 12, '2012-09-09', 3, 2, 7.9, 'high');
INSERT INTO `test_records` VALUES(31, 12, '2012-09-09', 3, 4, 57, 'high');
INSERT INTO `test_records` VALUES(32, 13, '2012-09-09', 3, 1, 7.2, 'low');
INSERT INTO `test_records` VALUES(33, 13, '2012-09-09', 3, 2, 8.6, 'high');
INSERT INTO `test_records` VALUES(34, 13, '2012-09-09', 3, 3, 400, 'high');
INSERT INTO `test_records` VALUES(35, 13, '2012-09-09', 3, 4, 68, 'high');
INSERT INTO `test_records` VALUES(30, 12, '2012-09-09', 3, 3, 221, 'higher marginal');
INSERT INTO `test_records` VALUES(36, 14, '2012-09-09', 3, 1, 12.3, 'normal');
INSERT INTO `test_records` VALUES(37, 14, '2012-09-09', 3, 2, 8.6, 'high');
INSERT INTO `test_records` VALUES(38, 14, '2012-09-09', 3, 3, 400, 'high');
INSERT INTO `test_records` VALUES(39, 14, '2012-09-09', 3, 4, 68, 'high');
INSERT INTO `test_records` VALUES(40, 15, '2012-09-09', 3, 1, 12.3, 'normal');
INSERT INTO `test_records` VALUES(41, 15, '2012-09-09', 3, 2, 8.6, 'high');
INSERT INTO `test_records` VALUES(42, 15, '2012-09-09', 3, 3, 400, 'high');
INSERT INTO `test_records` VALUES(43, 15, '2012-09-09', 3, 4, 68, 'high');
INSERT INTO `test_records` VALUES(44, 16, '2012-09-09', 3, 1, 12.3, 'normal');
INSERT INTO `test_records` VALUES(45, 16, '2012-09-09', 3, 2, 8.6, 'high');
INSERT INTO `test_records` VALUES(46, 16, '2012-09-09', 3, 3, 400, 'high');
INSERT INTO `test_records` VALUES(47, 16, '2012-09-09', 3, 4, 68, 'high');
INSERT INTO `test_records` VALUES(48, 17, '2012-09-09', 3, 4, 84, 'high');
INSERT INTO `test_records` VALUES(49, 18, '2012-09-09', 3, 4, 82, 'high');
INSERT INTO `test_records` VALUES(50, 6, '2015-07-26', 0, 1, 10, 'lower margin');
INSERT INTO `test_records` VALUES(51, 6, '2015-07-26', 0, 2, 6.8, 'higher margin');
INSERT INTO `test_records` VALUES(52, 6, '2015-07-26', 0, 3, 240, 'high');
INSERT INTO `test_records` VALUES(53, 6, '2015-07-26', 0, 4, 60, 'high');
INSERT INTO `test_records` VALUES(63, 19, '2015-08-05', 3, 2, 6.1, 'higher marginal');
INSERT INTO `test_records` VALUES(62, 19, '2015-08-05', 3, 1, 13, 'normal');
INSERT INTO `test_records` VALUES(61, 19, '2015-04-05', 3, 4, 35, 'higher marginal');
INSERT INTO `test_records` VALUES(60, 19, '2015-04-05', 3, 3, 230, 'higher marginal');
INSERT INTO `test_records` VALUES(59, 19, '2015-04-05', 3, 2, 7.1, 'high');
INSERT INTO `test_records` VALUES(58, 19, '2015-04-05', 3, 1, 9.9, 'lower marginal');
INSERT INTO `test_records` VALUES(57, 19, '2014-12-01', 3, 4, 50, 'higher marginal');
INSERT INTO `test_records` VALUES(56, 19, '2014-12-01', 3, 3, 224, 'higher marginal');
INSERT INTO `test_records` VALUES(55, 19, '2014-12-01', 3, 2, 7.4, 'high');
INSERT INTO `test_records` VALUES(54, 19, '2014-12-01', 3, 1, 8.2, 'low');
INSERT INTO `test_records` VALUES(64, 19, '2015-08-05', 3, 3, 260, 'high ');
INSERT INTO `test_records` VALUES(65, 19, '2015-08-05', 3, 4, 19, 'normal');
INSERT INTO `test_records` VALUES(78, 1, '2015-08-05', 13, 3, 220, 'higher margin');
INSERT INTO `test_records` VALUES(77, 1, '2015-08-05', 13, 2, 8, 'high');
INSERT INTO `test_records` VALUES(76, 1, '2015-08-05', 13, 1, 7, 'low');
INSERT INTO `test_records` VALUES(79, 1, '2015-08-05', 13, 4, 3, 'normal');
INSERT INTO `test_records` VALUES(80, 1, '2015-08-05', 13, 1, 7, 'low');
INSERT INTO `test_records` VALUES(81, 1, '2015-08-05', 13, 2, 8, 'high');
INSERT INTO `test_records` VALUES(82, 1, '2015-08-05', 13, 3, 240, 'high');
INSERT INTO `test_records` VALUES(83, 1, '2015-08-05', 13, 4, 78, 'high');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UID` int(12) NOT NULL AUTO_INCREMENT,
  `NID` int(20) NOT NULL,
  `UserName` varchar(50) COLLATE utf8_bin NOT NULL,
  `Phone` int(11) NOT NULL,
  `E_mail` varchar(60) COLLATE utf8_bin NOT NULL,
  `Privilege` varchar(10) COLLATE utf8_bin NOT NULL,
  `IID` int(12) NOT NULL,
  PRIMARY KEY (`UID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=4 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` VALUES(1, 12324455, 'abc', 1828968659, 'abc@gmail.com', 'admin', 1);
INSERT INTO `users` VALUES(2, 14213534, 'def', 1685467390, 'def@gmail.com', 'HospitalAd', 1);
INSERT INTO `users` VALUES(3, 32513465, 'ghi', 1927635990, 'ghi@yahoo.com', 'Staff', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_auth`
--

CREATE TABLE `user_auth` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(10) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `contact_num` varchar(12) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `city` int(11) DEFAULT NULL,
  `area` int(11) DEFAULT NULL,
  `user_cat_id` int(11) DEFAULT NULL,
  `prev` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `user_auth`
--

INSERT INTO `user_auth` VALUES(7, 'admin', '21232f297a57a5a743894a0e4a801fc3', '01670021785', 'kk@kk.com', 1, 1, 1, 'admin');
INSERT INTO `user_auth` VALUES(13, 'omar', '202cb962ac59075b964b07152d234b70', '016788888888', 'om@om.copm', 1, 2, 3, 'nuser');
INSERT INTO `user_auth` VALUES(14, 'rat', '202cb962ac59075b964b07152d234b70', '2323', 'omar@trivooz.com', NULL, NULL, NULL, 'nuser');
INSERT INTO `user_auth` VALUES(20, 'kiron', '202cb962ac59075b964b07152d234b70', '1212', 'tajul.islam.3576224@gmail.com', 1, 1, 2, 'admin');
INSERT INTO `user_auth` VALUES(23, 'oo', '123', '213', '32332', 2, 2, 3, 'asd');
INSERT INTO `user_auth` VALUES(24, 'ismail', '123456', '12312313', 'ismailkironn5@gmail.com', NULL, NULL, NULL, 'nuser');
INSERT INTO `user_auth` VALUES(26, 'labib', 'a01610228fe998f515a72dd730294d87', '01978787575', 'omar@trivooz.com', NULL, NULL, NULL, 'nuser');
INSERT INTO `user_auth` VALUES(27, 'dip', '202cb962ac59075b964b07152d234b70', '019212', 'ismai@gmail.com', NULL, NULL, NULL, 'nuser');
INSERT INTO `user_auth` VALUES(29, 'mahsa', '202cb962ac59075b964b07152d234b70', 'i@gmail.com', '2132132', NULL, NULL, NULL, 'nuser');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
