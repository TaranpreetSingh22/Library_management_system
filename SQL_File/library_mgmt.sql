-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 28, 2023 at 09:41 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library_mgmt`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_signup_info`
--

CREATE TABLE `admin_signup_info` (
  `id` int(11) NOT NULL,
  `username` varchar(35) NOT NULL,
  `password` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_signup_info`
--

INSERT INTO `admin_signup_info` (`id`, `username`, `password`) VALUES
(4, 'admin@admin.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_id` int(11) NOT NULL,
  `book_img` varchar(100) NOT NULL,
  `book_name` varchar(35) NOT NULL,
  `book_author` varchar(35) NOT NULL,
  `book_desc` varchar(100) NOT NULL,
  `publish_year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_id`, `book_img`, `book_name`, `book_author`, `book_desc`, `publish_year`) VALUES
(4, 'images/books/397d8eda-b7f5-4565-b5b0-5483cf611ee9_WhatsApp Image 2023-08-18 at 11.03.34 AM (2).jpeg', 'C++', 'muddi', 'complete guide to c++', 2001),
(5, 'images/books/ba66a003-ea66-41b3-acd5-e6f28a5facfb_bookimg.webp', 'geography', 'xyz', 'complete guide to geography', 2019),
(6, 'images/books/04bb568a-cfe5-49c0-a740-01b567845835_WhatsApp Image 2023-08-18 at 11.03.34 AM (2).jpeg', 'c++', 'xyz', 'complete guide to c++', 2000),
(7, 'images/books/bdee651e-06ec-40c9-9bde-5db68ad1211a_WhatsApp Image 2023-08-18 at 11.03.34 AM.jpeg', 'wordpress', 'xyz', 'complete guide to wordpress', 2020),
(8, 'images/books/c6438921-3cea-463f-9468-2f6a72f31034_WhatsApp Image 2023-08-18 at 11.03.35 AM (1).jpeg', 'mysql', 'xyz', 'complete guide to mysql', 2002),
(9, 'images/books/2f780cce-5d91-4dbd-82ae-b31f45d00e08_WhatsApp Image 2023-08-18 at 11.03.36 AM (2).jpeg', 'physics', 'xyz', 'complete guide to physics', 2005);

-- --------------------------------------------------------

--
-- Table structure for table `borrowed_books`
--

CREATE TABLE `borrowed_books` (
  `borrow_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `borrow_date` datetime NOT NULL,
  `return_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `borrowed_books`
--

INSERT INTO `borrowed_books` (`borrow_id`, `book_id`, `user_id`, `borrow_date`, `return_date`) VALUES
(1, 4, 4, '2023-08-22 11:07:51', '2023-09-05 11:07:51'),
(2, 4, 4, '2023-08-28 10:42:28', '2023-09-11 10:42:28'),
(3, 9, 4, '2023-08-28 11:55:55', '2023-09-11 11:55:55'),
(4, 5, 4, '2023-08-28 11:56:05', '2023-09-11 11:56:05'),
(5, 6, 4, '2023-08-28 12:22:59', '2023-09-11 12:22:59'),
(6, 4, 6, '2023-08-28 12:42:34', '2023-09-11 12:42:34'),
(7, 7, 4, '2023-08-28 12:51:12', '2023-09-11 12:51:12');

-- --------------------------------------------------------

--
-- Table structure for table `contact_details`
--

CREATE TABLE `contact_details` (
  `contact_id` int(11) NOT NULL,
  `email_id` varchar(35) NOT NULL,
  `cid` int(11) NOT NULL,
  `phno` double NOT NULL,
  `address` varchar(65) NOT NULL,
  `message` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_details`
--

INSERT INTO `contact_details` (`contact_id`, `email_id`, `cid`, `phno`, `address`, `message`) VALUES
(2, 'test@gmail.com', 4, 2364747558, 'dfsdfsv', 'vsvsvv');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `uid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `fname` varchar(35) NOT NULL,
  `lname` varchar(35) NOT NULL,
  `dob` date NOT NULL,
  `email` varchar(35) NOT NULL,
  `instname` varchar(35) NOT NULL,
  `gender` varchar(35) NOT NULL,
  `phno` bigint(12) NOT NULL,
  `password` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`uid`, `cid`, `fname`, `lname`, `dob`, `email`, `instname`, `gender`, `phno`, `password`) VALUES
(3, 4, 'tushar', 'patil', '2023-08-06', 'test5@gmail.com', 'some4', 'Male', 2355, '1234'),
(4, 7, 'tushar', 'patel', '2023-08-01', 'test@gmail.com', 'some', 'select', 1234567890, '1234'),
(5, 6, 'Rakesh', 'roshan', '2023-05-04', 'test8@gmail.com', 'xyz', 'Male', 9873821389, '1234'),
(6, 6, 'Rakesh', 'patel', '2023-08-03', 'test7@gmail.com', 'abc', 'select', 1234567890, '5678');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_signup_info`
--
ALTER TABLE `admin_signup_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `borrowed_books`
--
ALTER TABLE `borrowed_books`
  ADD PRIMARY KEY (`borrow_id`),
  ADD KEY `book_id` (`book_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `contact_details`
--
ALTER TABLE `contact_details`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_signup_info`
--
ALTER TABLE `admin_signup_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `borrowed_books`
--
ALTER TABLE `borrowed_books`
  MODIFY `borrow_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `contact_details`
--
ALTER TABLE `contact_details`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `borrowed_books`
--
ALTER TABLE `borrowed_books`
  ADD CONSTRAINT `borrowed_books_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `books` (`book_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `borrowed_books_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
