-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2020 at 10:30 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `sl_no` int(255) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`sl_no`, `user_name`, `password`) VALUES
(1, 'Admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `sl_no` int(255) NOT NULL,
  `author_name` varchar(300) NOT NULL,
  `profile` varchar(100) DEFAULT NULL,
  `added_on` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`sl_no`, `author_name`, `profile`, `added_on`) VALUES
(1, 'Martin Wickramasinghe', '', '18-May-2020 07:41:45 PM'),
(2, 'Denagama Siriwardana', '', '18-May-2020 09:10:58 PM'),
(3, 'Mahagama Sekara', '', '18-May-2020 09:17:59 PM'),
(4, 'Ven.Ahalepola Mahinda himi', '', '18-May-2020 09:22:42 PM'),
(5, '	Ediriweera Sarachchandra', '', '18-May-2020 09:29:13 PM'),
(6, '	Aruna Shantha', '', '18-May-2020 09:33:01 PM'),
(7, '	Anoma P. Aapa Senevirathna', '', '18-May-2020 10:22:30 PM'),
(8, '	Piyasena Rathuwithana', '', '18-May-2020 10:23:25 PM'),
(9, '	Prof. R. Sivakanesan', '', '18-May-2020 10:24:20 PM'),
(10, '	Dr. Nilanthi Dassanayaka', '', '18-May-2020 10:25:49 PM'),
(11, '	A. Chandradasa', '', '18-May-2020 10:27:08 PM');

-- --------------------------------------------------------

--
-- Table structure for table `book_table`
--

CREATE TABLE `book_table` (
  `book_sl_no` varchar(300) NOT NULL,
  `book_title` varchar(300) NOT NULL,
  `category_name` varchar(300) DEFAULT NULL,
  `category_num` varchar(10) DEFAULT NULL,
  `author_name` varchar(300) DEFAULT NULL,
  `author_num` varchar(10) DEFAULT NULL,
  `publisher_name` varchar(300) DEFAULT NULL,
  `publisher_num` varchar(10) DEFAULT NULL,
  `edition` varchar(100) DEFAULT NULL,
  `volume` varchar(100) DEFAULT NULL,
  `ean_code` varchar(300) DEFAULT NULL,
  `isbn` varchar(300) DEFAULT NULL,
  `price` varchar(300) DEFAULT NULL,
  `purchase_date` varchar(300) DEFAULT NULL,
  `language` varchar(300) DEFAULT NULL,
  `total_book_in_library` int(255) DEFAULT NULL,
  `total_book_available` int(255) DEFAULT NULL,
  `description` varchar(10000) DEFAULT NULL,
  `added_on` varchar(100) DEFAULT NULL,
  `edited_on` varchar(100) DEFAULT NULL,
  `added_by` varchar(100) DEFAULT NULL,
  `edited_by` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book_table`
--

INSERT INTO `book_table` (`book_sl_no`, `book_title`, `category_name`, `category_num`, `author_name`, `author_num`, `publisher_name`, `publisher_num`, `edition`, `volume`, `ean_code`, `isbn`, `price`, `purchase_date`, `language`, `total_book_in_library`, `total_book_available`, `description`, `added_on`, `edited_on`, `added_by`, `edited_by`) VALUES
('1002', 'Wahi Walawa 1', 'Drama', '2', 'Denagama Siriwardana', '2', 'sinhalaebooks', '2', NULL, '1', NULL, NULL, '250', NULL, 'Sinhala', 0, 0, NULL, '18-May-2020 09:10:58 PM', NULL, 'ADMIN', NULL),
('1003', 'SINHALA GADYA PADYA', 'Sinhala Poetry', '3', 'Mahagama Sekara', '3', 'S.Godage and Brothers', '3', '1', '1', NULL, '9552042887', '500', NULL, 'Sinhala', 0, 0, NULL, '18-May-2020 09:17:59 PM', NULL, 'ADMIN', NULL),
('1004', 'Heta Irak Payayi', 'Sinhala Poetry', '3', 'Mahagama Sekara', '3', 'S.Godage and Brothers', '3', '1', '1', NULL, '955-20-4391-3', '400', NULL, 'Sinhala', 0, 0, NULL, '18-May-2020 09:20:08 PM', NULL, 'ADMIN', NULL),
('1005', 'Bodima', 'Sinhala Poetry', '3', 'Mahagama Sekara', '3', 'S.Godage and Brothers', '3', '2', '1', NULL, '	955-20-4390-5', '230', NULL, 'Sinhala', 0, 0, NULL, '18-May-2020 09:21:08 PM', NULL, 'ADMIN', NULL),
('1006', 'Pali Shithyaya Wivaranaya', 'Buddhism', '4', 'Ven.Ahalepola Mahinda himi', '4', 'S.Godage and Brothers', '3', '1', '1', '456 789', '978-624-00-0393-3', '450', NULL, 'Sinhala', 0, 0, NULL, '18-May-2020 09:22:42 PM', NULL, 'ADMIN', NULL),
('1007', 'Chanakyanithi Pali', 'Buddhism', '4', 'Ven.Ahalepola Mahinda himi', '4', 'S.Godage and Brothers', '3', '2', '3', NULL, '978-624-00-0394-0', '420', NULL, 'Sinhala', 0, 0, NULL, '18-May-2020 09:26:15 PM', NULL, 'ADMIN', NULL),
('1008', 'WALMATH WE HASARAK DUTUWEMI', 'Fictions, Novels', '5', '	Ediriweera Sarachchandra', '5', 'S.Godage and Brothers', '3', '3', '1', '569 126', '955200666X', '150', NULL, 'Sinhala', 0, 0, NULL, '18-May-2020 09:29:13 PM', NULL, 'ADMIN', NULL),
('1009', ' PRANSA KETI KATHA', 'Fictions, Novels', '5', '	Ediriweera Sarachchandra', '5', 'S.Godage and Brothers', '3', '1', '1', '456 785', '	9552043093', '450', NULL, 'Sinhala', 0, 0, NULL, '18-May-2020 09:30:28 PM', NULL, 'ADMIN', NULL),
('1010', 'Malawunge Awurudu daa', 'Fictions, Novels', '5', '	Ediriweera Sarachchandra', '5', 'S.Godage and Brothers', '3', '5', '2', '458126', '	955-20-2159-6', '230', NULL, 'Sinhala', 0, 0, NULL, '18-May-2020 09:31:57 PM', NULL, 'ADMIN', NULL),
('1011', 'Henannegala Bithu Sithuwam', 'Archaeology', '6', '	Aruna Shantha', '6', 'S.Godage and Brothers', '3', '2', '3', '456 788', '	978-955-30-8668-6', '500', NULL, 'Sinhala', 0, 0, NULL, '18-May-2020 09:33:01 PM', NULL, 'ADMIN', NULL),
('1012', 'Nopenena Balawega Boru Nowei samaga thawath lipi', '	Astrology', '7', '	Anoma P. Aapa Senevirathna', '7', 'S.Godage and Brothers', '3', '2', '2', '456 745', '	978-624-00-0498-5', '500', NULL, 'Sinhala', 0, 0, NULL, '18-May-2020 10:22:30 PM', NULL, 'ADMIN', NULL),
('1013', 'Jothisha Siddhantha', '	Astrology', '7', '	Piyasena Rathuwithana', '8', 'S.Godage and Brothers', '3', '3', '1', '456 785', '	978-624-00-0046-8', '400', NULL, 'Sinhala', 0, 0, NULL, '18-May-2020 10:23:25 PM', NULL, 'ADMIN', NULL),
('1014', 'Biochemistry Made Easy', '	Biology', '8', '	Prof. R. Sivakanesan', '9', 'S.Godage and Brothers', '3', '3', '3', '456 787', '	978-955-30-6736-4', '230', NULL, 'Sinhala', 0, 0, NULL, '18-May-2020 10:24:20 PM', NULL, 'ADMIN', NULL),
('1015', 'Jaana Thakshanaya', '	Biology', '8', '	Dr. Nilanthi Dassanayaka', '10', 'S.Godage and Brothers', '3', '2', '3', '569 124', '978-955-30-2862-4', NULL, NULL, 'Sinhala', 0, 0, NULL, '18-May-2020 10:25:49 PM', NULL, 'ADMIN', NULL),
('1016', ' Mahadanamuththage Thawath Katha ', '	Children\'s Books', '9', '	A. Chandradasa', '11', NULL, '0', '1', '8', NULL, '	978-955-30-0879-4', '80', NULL, 'Sinhala', 0, 0, NULL, '18-May-2020 10:27:08 PM', NULL, 'ADMIN', NULL),
('1017', 'Madol Duwa', 'Novel', '1', 'Martin Wickramasinghe', '1', 'sinhalaebooks', '2', '1', '1', '456 788', '978-624-00-0393-2', '450', NULL, 'Sinhala', 0, 0, NULL, '18-May-2020 10:28:32 PM', NULL, 'ADMIN', NULL),
('1018', 'Gamperaliya', 'Novel', '1', 'Martin Wickramasinghe', '1', 'sinhalaebooks', '2', '1', '1', '569 146', '955-20-5891-3', '230', NULL, 'Sinhala', 0, 0, NULL, '18-May-2020 10:29:16 PM', NULL, 'ADMIN', NULL),
('1019', 'KATHA PAHAK', '	Short Stories', '10', '	A. Chandradasa', '11', '	Godage International Publisher', '4', '1', '1', NULL, '9553003980', '450', NULL, 'Sinhala', 0, 0, NULL, '18-May-2020 10:33:05 PM', '20-May-2020 01:20:32 AM', 'ADMIN', NULL),
('1020', 'Mahadanamuttage thawat katha', '	Children\'s Books', '9', '	A. Chandradasa', '11', NULL, '0', '7', '2', NULL, '	978-955-30-0878-7', '250', NULL, 'Sinhala', 0, 0, NULL, '18-May-2020 10:36:24 PM', NULL, 'ADMIN', NULL),
('1021', 'Wiragaya', 'Novel', '1', 'Martin Wickramasinghe', '1', 'MW Foundation', '5', '1', '1', '216 982', '2121-12-311-2', '250', NULL, 'Sinhala', 0, 0, NULL, '20-May-2020 01:50:20 AM', NULL, 'ADMIN', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `sl_no` int(255) NOT NULL,
  `category_name` varchar(300) NOT NULL,
  `profile` varchar(100) DEFAULT NULL,
  `added_on` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`sl_no`, `category_name`, `profile`, `added_on`) VALUES
(1, 'Novel', '', '18-May-2020 07:41:45 PM'),
(2, 'Drama', '', '18-May-2020 09:10:58 PM'),
(3, 'Sinhala Poetry', '', '18-May-2020 09:17:59 PM'),
(4, 'Buddhism', '', '18-May-2020 09:22:42 PM'),
(5, 'Fictions, Novels', '', '18-May-2020 09:29:13 PM'),
(6, 'Archaeology', '', '18-May-2020 09:33:01 PM'),
(7, '	Astrology', '', '18-May-2020 10:22:30 PM'),
(8, '	Biology', '', '18-May-2020 10:24:20 PM'),
(9, '	Children\'s Books', '', '18-May-2020 10:27:08 PM'),
(10, '	Short Stories', '', '18-May-2020 10:33:05 PM');

-- --------------------------------------------------------

--
-- Table structure for table `inventry_table`
--

CREATE TABLE `inventry_table` (
  `sl_no` varchar(300) NOT NULL,
  `book_sl_no` varchar(300) NOT NULL,
  `book_title` varchar(500) NOT NULL,
  `count` int(255) NOT NULL,
  `added_on` varchar(100) NOT NULL,
  `added_by` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inventry_table`
--

INSERT INTO `inventry_table` (`sl_no`, `book_sl_no`, `book_title`, `count`, `added_on`, `added_by`) VALUES
('1', '1018', 'Gamperaliya', 2, '20-May-2020 12:59:10 AM', '1018'),
('2', '1016', ' Mahadanamuththage Thawath Katha ', 4, '20-May-2020 01:19:55 AM', '1016'),
('3', '1009', ' PRANSA KETI KATHA', 5, '20-May-2020 01:20:07 AM', '1009'),
('4', '1017', 'Madol Duwa', 10, '20-May-2020 01:25:59 AM', '1017'),
('5', '1017', 'Madol Duwa', 2, '20-May-2020 01:39:12 AM', '1017'),
('6', '1021', 'Wiragaya', 5, '20-May-2020 01:51:11 AM', '1021');

-- --------------------------------------------------------

--
-- Table structure for table `issue_book`
--

CREATE TABLE `issue_book` (
  `issue_sl_no` varchar(50) NOT NULL,
  `student_id` varchar(300) NOT NULL,
  `admission_no` varchar(300) NOT NULL,
  `student_name` varchar(300) NOT NULL,
  `book_title` varchar(500) NOT NULL,
  `book_sl_no` varchar(100) NOT NULL,
  `barcode` varchar(300) NOT NULL,
  `issue_date` varchar(300) NOT NULL,
  `renew_date1` varchar(300) DEFAULT NULL,
  `renew_date2` varchar(300) DEFAULT NULL,
  `renew_date3` varchar(300) DEFAULT NULL,
  `renew_date4` varchar(300) DEFAULT NULL,
  `renew_date5` varchar(300) DEFAULT NULL,
  `return_date` varchar(300) DEFAULT NULL,
  `returned_date` varchar(300) DEFAULT NULL,
  `status` varchar(300) NOT NULL,
  `description` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `issue_book`
--

INSERT INTO `issue_book` (`issue_sl_no`, `student_id`, `admission_no`, `student_name`, `book_title`, `book_sl_no`, `barcode`, `issue_date`, `renew_date1`, `renew_date2`, `renew_date3`, `renew_date4`, `renew_date5`, `return_date`, `returned_date`, `status`, `description`) VALUES
('IS1', 'MESSTU5', '10023517', 'Ransara Wijayasundara', 'Gamperaliya', '1018', '101810', '20-05-2020', NULL, NULL, NULL, NULL, NULL, '25-05-2020', NULL, 'Returned', NULL),
('IS2', 'MESSTU3', '10026003', 'Hasith Gunathilake', ' Mahadanamuththage Thawath Katha ', '1016', '101690', '12-05-2020', NULL, NULL, NULL, NULL, NULL, '19-05-2020', NULL, 'Pending', NULL),
('IS3', 'MESSTU2', '10024149', 'Nipun Imbuldeniya', 'Madol Duwa', '1017', '101712', '20-05-2020', NULL, NULL, NULL, NULL, NULL, '14-05-2020', NULL, 'Returned', NULL),
('IS5', 'MESSTU1', '10026026', 'Kasun Rukmaldeniya', ' Mahadanamuththage Thawath Katha ', '1016', '101692', '20-05-2020', NULL, NULL, NULL, NULL, NULL, '25-05-2020', NULL, 'Pending', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `last_inventry`
--

CREATE TABLE `last_inventry` (
  `sl_no` int(255) NOT NULL,
  `bar_code` int(255) NOT NULL,
  `book_sl_no` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `last_inventry`
--

INSERT INTO `last_inventry` (`sl_no`, `bar_code`, `book_sl_no`) VALUES
(1, 2, '1018'),
(2, 4, '1016'),
(3, 5, '1009'),
(4, 12, '1017'),
(5, 5, '1021');

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `sl_no` int(255) NOT NULL,
  `publisher_name` varchar(300) NOT NULL,
  `profile` varchar(100) DEFAULT NULL,
  `added_on` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`sl_no`, `publisher_name`, `profile`, `added_on`) VALUES
(1, 'Godage', '', '18-May-2020 07:41:45 PM'),
(2, 'sinhalaebooks', '', '18-May-2020 09:10:58 PM'),
(3, 'S.Godage and Brothers', '', '18-May-2020 09:17:59 PM'),
(4, '	Godage International Publisher', '', '18-May-2020 10:33:05 PM'),
(5, 'MW Foundation', '', '20-May-2020 01:50:20 AM');

-- --------------------------------------------------------

--
-- Table structure for table `sequence_book_id`
--

CREATE TABLE `sequence_book_id` (
  `sl_no` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sequence_book_id`
--

INSERT INTO `sequence_book_id` (`sl_no`) VALUES
(1022);

-- --------------------------------------------------------

--
-- Table structure for table `sequence_inventry_id`
--

CREATE TABLE `sequence_inventry_id` (
  `sl_no` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sequence_inventry_id`
--

INSERT INTO `sequence_inventry_id` (`sl_no`) VALUES
(7);

-- --------------------------------------------------------

--
-- Table structure for table `sequence_issue_id`
--

CREATE TABLE `sequence_issue_id` (
  `sl_no` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sequence_issue_id`
--

INSERT INTO `sequence_issue_id` (`sl_no`) VALUES
(6);

-- --------------------------------------------------------

--
-- Table structure for table `sequence_student_id`
--

CREATE TABLE `sequence_student_id` (
  `sl_no` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sequence_student_id`
--

INSERT INTO `sequence_student_id` (`sl_no`) VALUES
(12);

-- --------------------------------------------------------

--
-- Table structure for table `serial_number`
--

CREATE TABLE `serial_number` (
  `sl_no` int(255) NOT NULL,
  `invertry_sl_no` varchar(300) NOT NULL,
  `book_title` varchar(500) DEFAULT NULL,
  `book_sl_no` varchar(300) NOT NULL,
  `bar_code` varchar(300) NOT NULL,
  `book_status` varchar(300) NOT NULL,
  `added_on` varchar(100) NOT NULL,
  `description` mediumtext DEFAULT NULL,
  `shelf` varchar(300) DEFAULT NULL,
  `rack` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `serial_number`
--

INSERT INTO `serial_number` (`sl_no`, `invertry_sl_no`, `book_title`, `book_sl_no`, `bar_code`, `book_status`, `added_on`, `description`, `shelf`, `rack`) VALUES
(1, '1', 'Gamperaliya', '1018', '101810', 'Available', '20-May-2020 12:59:10 AM', NULL, '1', '1'),
(2, '1', 'Gamperaliya', '1018', '101811', 'Available', '20-May-2020 12:59:10 AM', NULL, '1', '1'),
(3, '2', ' Mahadanamuththage Thawath Katha ', '1016', '101690', 'Not Available', '20-May-2020 01:19:55 AM', NULL, '1', '1'),
(4, '2', ' Mahadanamuththage Thawath Katha ', '1016', '101691', 'Available', '20-May-2020 01:19:55 AM', NULL, '1', '1'),
(5, '2', ' Mahadanamuththage Thawath Katha ', '1016', '101692', 'Not Available', '20-May-2020 01:19:55 AM', NULL, '1', '1'),
(6, '2', ' Mahadanamuththage Thawath Katha ', '1016', '101693', 'Available', '20-May-2020 01:19:55 AM', NULL, '1', '1'),
(7, '3', ' PRANSA KETI KATHA', '1009', '100950', 'Available', '20-May-2020 01:20:07 AM', NULL, '1', '2'),
(8, '3', ' PRANSA KETI KATHA', '1009', '100951', 'Available', '20-May-2020 01:20:07 AM', NULL, '1', '2'),
(9, '3', ' PRANSA KETI KATHA', '1009', '100952', 'Available', '20-May-2020 01:20:07 AM', NULL, '1', '2'),
(10, '3', ' PRANSA KETI KATHA', '1009', '100953', 'Available', '20-May-2020 01:20:07 AM', NULL, '1', '2'),
(11, '3', ' PRANSA KETI KATHA', '1009', '100954', 'Available', '20-May-2020 01:20:07 AM', NULL, '1', '2'),
(12, '4', 'Madol Duwa', '1017', '101710', 'Not Available', '20-May-2020 01:25:59 AM', NULL, '2', '4'),
(13, '4', 'Madol Duwa', '1017', '101711', 'Available', '20-May-2020 01:25:59 AM', NULL, '2', '4'),
(14, '4', 'Madol Duwa', '1017', '101712', 'Available', '20-May-2020 01:25:59 AM', NULL, '2', '4'),
(15, '4', 'Madol Duwa', '1017', '101713', 'Available', '20-May-2020 01:25:59 AM', NULL, '2', '4'),
(16, '4', 'Madol Duwa', '1017', '101714', 'Available', '20-May-2020 01:25:59 AM', NULL, '2', '4'),
(17, '4', 'Madol Duwa', '1017', '101715', 'Available', '20-May-2020 01:25:59 AM', NULL, '2', '4'),
(18, '4', 'Madol Duwa', '1017', '101716', 'Available', '20-May-2020 01:25:59 AM', NULL, '2', '4'),
(19, '4', 'Madol Duwa', '1017', '101717', 'Available', '20-May-2020 01:25:59 AM', NULL, '2', '4'),
(20, '4', 'Madol Duwa', '1017', '101718', 'Available', '20-May-2020 01:25:59 AM', NULL, '2', '4'),
(21, '4', 'Madol Duwa', '1017', '101719', 'Available', '20-May-2020 01:25:59 AM', NULL, '2', '4'),
(22, '5', 'Madol Duwa', '1017', '1017110', 'Available', '20-May-2020 01:39:12 AM', NULL, '2', '3'),
(23, '5', 'Madol Duwa', '1017', '1017111', 'Available', '20-May-2020 01:39:12 AM', NULL, '2', '3'),
(24, '6', 'Wiragaya', '1021', '102110', 'Available', '20-May-2020 01:51:11 AM', NULL, '2', '4'),
(25, '6', 'Wiragaya', '1021', '102111', 'Available', '20-May-2020 01:51:11 AM', NULL, '2', '4'),
(26, '6', 'Wiragaya', '1021', '102112', 'Available', '20-May-2020 01:51:11 AM', NULL, '2', '4'),
(27, '6', 'Wiragaya', '1021', '102113', 'Available', '20-May-2020 01:51:11 AM', NULL, '2', '4'),
(28, '6', 'Wiragaya', '1021', '102114', 'Available', '20-May-2020 01:51:11 AM', NULL, '2', '4');

-- --------------------------------------------------------

--
-- Table structure for table `student_table`
--

CREATE TABLE `student_table` (
  `student_id` varchar(300) NOT NULL,
  `admission_no` varchar(300) NOT NULL,
  `student_name` varchar(300) NOT NULL,
  `profile` mediumtext DEFAULT NULL,
  `batch` varchar(300) DEFAULT NULL,
  `course` varchar(300) DEFAULT NULL,
  `added_by` varchar(300) DEFAULT NULL,
  `added_on` varchar(300) DEFAULT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_table`
--

INSERT INTO `student_table` (`student_id`, `admission_no`, `student_name`, `profile`, `batch`, `course`, `added_by`, `added_on`, `status`) VALUES
('MESSTU1', '10026026', 'Kasun Rukmaldeniya', NULL, '18.1', 'Plymouth SE', NULL, '18-May-2020 07:53:02 PM', 1),
('MESSTU11', '10023517', 'Ransara Wijayasundara', NULL, '18.1', 'Plymouth SE', NULL, '20-May-2020 01:53:52 AM', 1),
('MESSTU2', '10024149', 'Nipun Imbuldeniya', NULL, '18.1', 'Plymouth SE', NULL, '20-May-2020 12:46:47 AM', 1),
('MESSTU3', '10026003', 'Hasith Gunathilake', NULL, '18.1', 'Plymouth SE', NULL, '20-May-2020 12:56:59 AM', 1),
('MESSTU4', '10024599', 'Anushka Hapuarachchi', NULL, '18.1', 'Plymouth SE', NULL, '20-May-2020 12:57:48 AM', 1),
('MESSTU6', '10023875', 'Senu Sandeepa', NULL, '18.1', 'Plymouth SE', NULL, '20-May-2020 12:58:27 AM', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`sl_no`);

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`sl_no`);

--
-- Indexes for table `book_table`
--
ALTER TABLE `book_table`
  ADD PRIMARY KEY (`book_sl_no`),
  ADD UNIQUE KEY `book_title` (`book_title`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`sl_no`),
  ADD UNIQUE KEY `category_name` (`category_name`);

--
-- Indexes for table `inventry_table`
--
ALTER TABLE `inventry_table`
  ADD PRIMARY KEY (`sl_no`),
  ADD KEY `book_sl_no` (`book_sl_no`);

--
-- Indexes for table `issue_book`
--
ALTER TABLE `issue_book`
  ADD PRIMARY KEY (`issue_sl_no`),
  ADD UNIQUE KEY `issue_sl_no` (`issue_sl_no`);

--
-- Indexes for table `last_inventry`
--
ALTER TABLE `last_inventry`
  ADD PRIMARY KEY (`sl_no`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`sl_no`);

--
-- Indexes for table `sequence_book_id`
--
ALTER TABLE `sequence_book_id`
  ADD PRIMARY KEY (`sl_no`);

--
-- Indexes for table `sequence_inventry_id`
--
ALTER TABLE `sequence_inventry_id`
  ADD PRIMARY KEY (`sl_no`);

--
-- Indexes for table `sequence_issue_id`
--
ALTER TABLE `sequence_issue_id`
  ADD PRIMARY KEY (`sl_no`);

--
-- Indexes for table `sequence_student_id`
--
ALTER TABLE `sequence_student_id`
  ADD PRIMARY KEY (`sl_no`);

--
-- Indexes for table `serial_number`
--
ALTER TABLE `serial_number`
  ADD PRIMARY KEY (`sl_no`),
  ADD UNIQUE KEY `bar_code` (`bar_code`);

--
-- Indexes for table `student_table`
--
ALTER TABLE `student_table`
  ADD PRIMARY KEY (`student_id`),
  ADD UNIQUE KEY `student_id` (`student_id`),
  ADD UNIQUE KEY `admission_no` (`admission_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `sl_no` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `sl_no` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `sl_no` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `last_inventry`
--
ALTER TABLE `last_inventry`
  MODIFY `sl_no` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `publisher`
--
ALTER TABLE `publisher`
  MODIFY `sl_no` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `serial_number`
--
ALTER TABLE `serial_number`
  MODIFY `sl_no` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `inventry_table`
--
ALTER TABLE `inventry_table`
  ADD CONSTRAINT `inventry_table_ibfk_1` FOREIGN KEY (`book_sl_no`) REFERENCES `book_table` (`book_sl_no`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
