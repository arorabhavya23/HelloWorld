-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 11, 2018 at 08:38 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookseller`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `bookID` varchar(100) NOT NULL COMMENT 'ISBN number of book',
  `publisherID` varchar(200) NOT NULL,
  `categoryID` varchar(100) NOT NULL,
  `writer` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `pages` int(11) NOT NULL,
  `about` varchar(5000) NOT NULL,
  `lang` varchar(100) NOT NULL,
  `bname` varchar(200) NOT NULL,
  `PopularityIndex` int(11) NOT NULL,
  `RatingNegitive` int(11) DEFAULT NULL,
  `RatingPositive` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`bookID`, `publisherID`, `categoryID`, `writer`, `image`, `pages`, `about`, `lang`, `bname`, `PopularityIndex`, `RatingNegitive`, `RatingPositive`) VALUES
('8174506691', 'LP', 'GEE', 'NCERT', 'img/TB1HtgAl2BNTKJjy0FdXXcPpVXa-990-400.jpg', 350, 'NCERT Book for class 7 mathematics', 'ENGLISH', 'Mathematics Class 7 NCERT', 4, 24, 56),
('8174506692', 'LP', 'GEE', 'NCERT', 'img/TB1HtgAl2BNTKJjy0FdXXcPpVXa-990-400.jpg', 290, 'NCERT Book for class 8', 'ENGLISH', 'Hindi Class 7 NCERT', 5, 24, 56),
('8174506793', 'LP', 'GEE', 'NCERT', 'img/TB1HtgAl2BNTKJjy0FdXXcPpVXa-990-400.jpg', 290, 'NCERT Book for class 9', 'ENGLISH', 'English Class 9 NCERT', 6, 24, 56),
('9780211616166666546', 'AP', 'CE', 'Jatta', 'img/TB1HtgAl2BNTKJjy0FdXXcPpVXa-990-400.jpg', 450, 'this is nice book....', 'English', 'NDA Book', 1, 24, 56),
('9780211616166666547', 'GK', 'CE', 'Jatta 2', 'img/TB1HtgAl2BNTKJjy0FdXXcPpVXa-990-400.jpg', 451, 'thi is nice', 'English', 'NDA Book 2', 2, 24, 56),
('9780211616166666548', 'LP', 'GEE', 'Jatta 3', 'img/TB1HtgAl2BNTKJjy0FdXXcPpVXa-990-400.jpg', 454, 'this is book no. 3', 'English', 'NDA Book 3', 3, 24, 56),
('989587493245664', 'LP', 'GEE', 'nkwefjv', 'img/TB1HtgAl2BNTKJjy0FdXXcPpVXa-990-400.jpg', 908, 'jbhiuh', 'BJBU', 'BJBHBBHUUUUUUUU', 7, 24, 56),
('989587493657664', 'LP', 'GEE', 'Harsh', 'img/TB1HtgAl2BNTKJjy0FdXXcPpVXa-990-400.jpg', 208, 'ARORAaroraArora', 'HINDI', 'BookNAME', 8, 24, 56),
('989587493893464', 'LP', 'GEE', 'nkwefjv', 'img/TB1HtgAl2BNTKJjy0FdXXcPpVXa-990-400.jpg', 108, 'JNjknjNJNJnjhiuh', 'BJBSQWKDPLSCLKU', 'JKDCDKVUUUUUUU', 8, 24, 56);

-- --------------------------------------------------------

--
-- Table structure for table `book_reviews`
--

CREATE TABLE `book_reviews` (
  `reviewID` varchar(20) NOT NULL,
  `stars` float DEFAULT NULL,
  `userID` varchar(100) NOT NULL,
  `bookID` varchar(45) NOT NULL,
  `comments` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `bookID` varchar(200) NOT NULL,
  `UserID` varchar(200) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `sellerID` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`bookID`, `UserID`, `Quantity`, `sellerID`) VALUES
('9780211616166666546', 'BhavyaArora768877', 1, 'kumar@jatta'),
('8174506691', 'BhavyaArora768877', 1, 'kumar@jatta'),
('8174506692', 'BhavyaArora768877', 1, 'kumar@jatta');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categoryID` varchar(50) NOT NULL,
  `categoryName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categoryID`, `categoryName`) VALUES
('CE', 'Competitive Exams'),
('CSE', 'Civil Services Exam'),
('DSE', 'Defense Services Exam'),
('EEE', 'Engineering Entrance Exams'),
('GEE', 'Government Entrance Exams'),
('LEE', 'Law Entrance Exams'),
('MEE', 'Medical Entrance Exams'),
('TWELFTH', '10+2');

-- --------------------------------------------------------

--
-- Table structure for table `dilevrypincode`
--

CREATE TABLE `dilevrypincode` (
  `no.` varchar(2) DEFAULT NULL,
  `Place` varchar(14) DEFAULT NULL,
  `Pincode` varchar(6) DEFAULT NULL,
  `Time` varchar(7) DEFAULT NULL,
  `PriceRs` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dilevrypincode`
--

INSERT INTO `dilevrypincode` (`no.`, `Place`, `Pincode`, `Time`, `PriceRs`) VALUES
('1', 'muzaffarnagar', '251001', '24 hour', '30'),
('1', 'muzaffarnagar', '251002', '24 hour', '30'),
('2', 'khatuli', '251201', '24 hour', '30'),
('3', 'charthawal', '251311', '24 hour', '30'),
('4', 'purkazi', '251327', '24 hour', '30'),
('5', 'Bhokarhedi', '251316', '24 hour', '30'),
('6', 'sisoli', '251319', '24 hour', '30'),
('7', 'budhana', '251305', '24 hour', '40'),
('8', 'shahpur', '251318', '24 hour', '30'),
('9', 'meerapur', '251315', '24 hour', '30'),
('10', 'jansath', '251314', '24 hour', '30'),
('11', 'sikri', '251308', '24 hour', '30'),
('12', 'mansurpur', '251203', '24 hour', '30'),
('13', 'sherpur', '251327', '24 hour', '30'),
('14', 'jaula', '251305', '24 hour', '30'),
('15', 'vahelna', '251003', '24 hour', '30'),
('16', 'badheri', '251307', '24 hour', '30'),
('17', 'maleera', '251202', '24 hour', '30'),
('', '', '', '', ''),
('', '', '', '', ''),
('1', 'saharanpur', '247001', '24 hour', '30'),
('2', 'deoband', '247554', '24 hour', '30'),
('3', 'gangoh', '247341', '24 hour', '40'),
('4', 'Nakur', '247342', '24 hour', '40'),
('5', 'sarsawa', '247232', '24 hour', '40'),
('6', 'ambehta', '247340', '24 hour', '30'),
('7', 'rampur', '247451', '24 hour', '40'),
('8', 'nanauta', '247452', '24 hour', '40'),
('9', 'chilkana', '247231', '24 hour', '40'),
('10', 'titron', '247343', '24 hour', '40'),
('11', 'behat', '247121', '24 hour', '40'),
('', '', '', '', ''),
('', '', '', '', ''),
('1', 'Shamli', '247776', '24 hour', '30'),
('2', 'thanabhawan', '247777', '24 hour', '30'),
('3', 'jalalabad', '247772', '24 hour', '30'),
('4', 'jhinjhana', '247773', '24 hour', '40'),
('5', 'Un', '247778', '24 hour', '40'),
('6', 'Banat', '247776', '24 hour', '40'),
('7', 'kandhala', '247775', '24 hour', '30'),
('8', 'kairana', '247774', '24 hour', '30'),
('', '', '', '', ''),
('', '', '', '', ''),
('1', 'bijnor', '246701', '24 hour', '30'),
('2', 'nehtaur', '246733', '24 hour', '40'),
('3', 'najibabad', '246763', '24 hour', '40'),
('4', 'seohara', '246746', '24 hour', '40'),
('5', 'kiratpur', '246731', '24 hour', '40'),
('6', 'noorpur', '246734', '24 hour', '40'),
('7', 'chandpur', '246725', '24 hour', '40'),
('8', 'sherkot', '246747', '24 hour', '40'),
('9', 'nagina', '246762', '24 hour', '40'),
('10', 'haldaur', '246726', '24 hour', '40'),
('11', 'afzalgarh', '246722', '24 hour', ''),
('12', 'dhampur', '246761', '24 hour', '40'),
('13', 'badhapur', '246724', '24 hour', '40'),
('14', 'sahanpur', '246749', '24 hour', '40'),
('15', 'mandawar', '246721', '24 hour', '40'),
('16', 'sahaspur', '246745', '24 hour', '40'),
('17', 'jalalabad', '246768', '24 hour', '40'),
('18', 'jhalu', '246728', '24 hour', '30'),
('', '', '', '', ''),
('', '', '', '', ''),
('1', 'Meerut', '250002', '24 hour', '30'),
('1', 'Meerut', '250001', '24 hour', '30'),
('1', 'Meerut', '250003', '24 hour', '30'),
('2', 'karnawal', '250344', '24 hour', '40'),
('3', 'hastinapur', '250404', '24 hour', '40'),
('4', 'siwal', '250501', '24 hour', '30'),
('5', 'shahjahanpur', '250104', '24 hour', '40'),
('6', 'kharkhuda', '245206', '24 hour', '40'),
('7', 'lawar', '250222', '24 hour', '40'),
('8', 'phalauda', '250401', '24 hour', '40'),
('9', 'harra', '250344', '24 hour', '40'),
('10', 'kithore', '250104', '24 hour', '40'),
('11', 'khiwai', '250344', '24 hour', '40'),
('12', 'daurala', '250221', '24 hour', '30'),
('13', 'behsuma', '250404', '24 hour', '40'),
('14', 'parikshatgarh', '250406', '24 hour', '40'),
('15', 'sardhana', '250342', '24 hour', '40'),
('16', 'mawana', '250401', '24 hour', '40'),
('', '', '', '', ''),
('', '', '', '', ''),
('1', 'roorkee', '247667', '24 hour', '40'),
('2', 'manglour', '247656', '24 hour', '40'),
('3', 'and all places', '247000', '24 hour', '40');

-- --------------------------------------------------------

--
-- Table structure for table `myorderdetails`
--

CREATE TABLE `myorderdetails` (
  `OrderId` varchar(200) NOT NULL,
  `UserID` varchar(200) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `OrderStatus` varchar(200) NOT NULL,
  `PurchaseMode` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `myorderdetails`
--

INSERT INTO `myorderdetails` (`OrderId`, `UserID`, `Date`, `OrderStatus`, `PurchaseMode`) VALUES
('1515229587768877', 'BhavyaArora768877', '2018-01-06 09:06:26', 'Placed', 'COD'),
('1515229622768877', 'BhavyaArora768877', '2018-01-06 09:07:01', 'Placed', 'COD'),
('1515234820768877', 'BhavyaArora768877', '2018-01-06 10:33:37', 'Placed', 'COD'),
('1515237232101965', 'Mukul107887Kumar101965', '2018-01-06 11:13:49', 'Placed', 'COD'),
('1515239386101965', 'Mukul107887Kumar101965', '2018-01-06 11:49:45', 'Placed', 'Online');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `bookID` varchar(100) NOT NULL,
  `quantity` smallint(5) UNSIGNED NOT NULL,
  `userID` varchar(100) NOT NULL,
  `sellerID` varchar(100) NOT NULL,
  `OrderId` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`bookID`, `quantity`, `userID`, `sellerID`, `OrderId`) VALUES
('8174506692', 1, 'BhavyaArora768877', 'kumar@jatta', '1515229587768877'),
('8174506692', 1, 'BhavyaArora768877', 'kumar@jatta', '1515229622768877'),
('9780211616166666546', 3, 'BhavyaArora768877', 'kumar@jatta', '1515234820768877'),
('8174506691', 3, 'BhavyaArora768877', 'kumar@jatta', '1515234820768877'),
('8174506692', 3, 'BhavyaArora768877', 'kumar@jatta', '1515234820768877'),
('8174506692', 1, 'Mukul107887Kumar101965', 'kumar@jatta', '1515237232101965'),
('9780211616166666548', 1, 'Mukul107887Kumar101965', 'kumar@jatta', '1515237232101965'),
('989587493893464', 1, 'Mukul107887Kumar101965', 'kumar@jatta', '1515237232101965'),
('9780211616166666546', 1, 'Mukul107887Kumar101965', 'kumar@jatta', '1515239386101965');

-- --------------------------------------------------------

--
-- Table structure for table `publishers`
--

CREATE TABLE `publishers` (
  `publisherID` varchar(50) NOT NULL,
  `publisherName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `publishers`
--

INSERT INTO `publishers` (`publisherID`, `publisherName`) VALUES
('AP', 'Arihant Publications'),
('GK', 'GK Publications'),
('GP', 'Genius Publications'),
('LP', 'Lead Start Publishing'),
('ME', 'Made Easy'),
('NP', 'Notion Press'),
('PHIL', 'PHI Learning'),
('TP', 'Taxmann Publication');

-- --------------------------------------------------------

--
-- Table structure for table `seller`
--

CREATE TABLE `seller` (
  `bookID` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `binding` varchar(100) NOT NULL,
  `sellerID` varchar(100) NOT NULL,
  `price` int(10) UNSIGNED DEFAULT NULL,
  `Edition` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seller`
--

INSERT INTO `seller` (`bookID`, `type`, `binding`, `sellerID`, `price`, `Edition`, `quantity`) VALUES
('9780211616166666546', 'New', 'Paper Back', 'kumar@jatta', 580, '2017', 10),
('9780211616166666547', 'New', 'Paper Back', 'kumar@jatta', 585, '2017', 20),
('9780211616166666548', 'New', 'Hard Copy', 'kumar@jatta', 588, '2017', 50),
('8174506691', 'new', 'Paperback', 'kumar@jatta', 876, '2017', 100),
('8174506692', 'OLD', 'Hard', 'kumar@jatta', 767, '2000', 23),
('8174506793', 'old', 'hard', 'kumar@jatta', 887, 'een vj', 78),
('989587493245664', 'jvd', 'jiefc', 'kumar@jatta', 9089, '980', 98),
('989587493657664', 'ksnfd', 'jfebwkj', 'kumar@jatta', 9807, 'mbjk', 98),
('989587493893464', 'ifibvu', 'hgiuiyu', 'kumar@jatta', 457, '567', 345),
('8174506691', 'NEW', 'aby', 'bhavya1234', 500, '2018', 200);

-- --------------------------------------------------------

--
-- Table structure for table `seller_profile`
--

CREATE TABLE `seller_profile` (
  `sellerID` varchar(100) NOT NULL,
  `seller_Name` varchar(100) NOT NULL,
  `stars` tinyint(3) UNSIGNED NOT NULL,
  `no_of_ratings` int(10) UNSIGNED ZEROFILL NOT NULL,
  `return_policy` varchar(100) NOT NULL,
  `pinCode` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seller_profile`
--

INSERT INTO `seller_profile` (`sellerID`, `seller_Name`, `stars`, `no_of_ratings`, `return_policy`, `pinCode`) VALUES
('bhavya1234', 'Bhavya Arora', 5, 0000009878, 'no', 251001),
('kumar@jatta', 'Mukul Kumar', 5, 0000000005, 'true', 251001);

-- --------------------------------------------------------

--
-- Table structure for table `userlogin`
--

CREATE TABLE `userlogin` (
  `UserID` varchar(200) NOT NULL,
  `MobileNumber` varchar(14) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `Password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlogin`
--

INSERT INTO `userlogin` (`UserID`, `MobileNumber`, `Email`, `Password`) VALUES
('BhavyaArora768877', '98765432109', 'arorabhavya23@ghghgh.com', '123456789'),
('Bhavya11721Arora59956', '9999999999', 'arorabhavya23@gmail.com', 'bhavya1234'),
('suhail97047alvi25181', '8445677643', 'mhodsuhail@gmail.com', '8445677643'),
('Mukul107887Kumar101965', '8449806003', 'mukulk133@gmail.com', 'bhavya');

-- --------------------------------------------------------

--
-- Table structure for table `user_data`
--

CREATE TABLE `user_data` (
  `UserID` varchar(100) NOT NULL,
  `Name` varchar(500) NOT NULL,
  `Address_L1` varchar(500) DEFAULT NULL,
  `Address_L2` varchar(500) DEFAULT NULL,
  `Address_L3` varchar(500) DEFAULT NULL,
  `State` varchar(200) DEFAULT NULL,
  `PinCode` int(11) UNSIGNED DEFAULT NULL,
  `landmark` varchar(500) DEFAULT NULL,
  `alternateNumber` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_data`
--

INSERT INTO `user_data` (`UserID`, `Name`, `Address_L1`, `Address_L2`, `Address_L3`, `State`, `PinCode`, `landmark`, `alternateNumber`) VALUES
('Bhavya11721Arora59956', 'Bhavya Arora', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('BhavyaArora768877', 'Bhavya Arora', 'State Bank Colony', 'Patel Nagar', 'Muzaffarnagar', 'Uttar Pradesh', 251001, 'anything', '1234567890'),
('Mukul107887Kumar101965', 'Mukul Kumar', 'Bhartiya Colony', 'New Mandi', 'muzaffarnagar', 'UP', 251001, 'Balaji Mandir', '9898989'),
('Mukul87909Kumar73451', 'Mukul Kumar', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('suhail97047alvi25181', 'suhail alvi', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`bookID`),
  ADD KEY `fk_books_2_idx` (`publisherID`),
  ADD KEY `fk_books_1_idx` (`categoryID`);

--
-- Indexes for table `book_reviews`
--
ALTER TABLE `book_reviews`
  ADD PRIMARY KEY (`reviewID`),
  ADD KEY `fk_book_reviews_1_idx` (`userID`),
  ADD KEY `fk_book_reviews_2_idx` (`bookID`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD KEY `bookID` (`bookID`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `sellerID` (`sellerID`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categoryID`);

--
-- Indexes for table `myorderdetails`
--
ALTER TABLE `myorderdetails`
  ADD PRIMARY KEY (`OrderId`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD KEY `sellerID` (`sellerID`),
  ADD KEY `bookID` (`bookID`),
  ADD KEY `userID` (`userID`),
  ADD KEY `OrderId` (`OrderId`);

--
-- Indexes for table `publishers`
--
ALTER TABLE `publishers`
  ADD PRIMARY KEY (`publisherID`);

--
-- Indexes for table `seller`
--
ALTER TABLE `seller`
  ADD KEY `bookID` (`bookID`),
  ADD KEY `sellerID` (`sellerID`);

--
-- Indexes for table `seller_profile`
--
ALTER TABLE `seller_profile`
  ADD PRIMARY KEY (`sellerID`);

--
-- Indexes for table `userlogin`
--
ALTER TABLE `userlogin`
  ADD PRIMARY KEY (`Email`),
  ADD UNIQUE KEY `MobileNumber` (`MobileNumber`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD KEY `MobileNumber_2` (`MobileNumber`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `user_data`
--
ALTER TABLE `user_data`
  ADD PRIMARY KEY (`UserID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `fk_books_1` FOREIGN KEY (`categoryID`) REFERENCES `categories` (`categoryID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_books_2` FOREIGN KEY (`publisherID`) REFERENCES `publishers` (`publisherID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `book_reviews`
--
ALTER TABLE `book_reviews`
  ADD CONSTRAINT `fk_book_reviews_1` FOREIGN KEY (`userID`) REFERENCES `user_data` (`UserID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_book_reviews_2` FOREIGN KEY (`bookID`) REFERENCES `books` (`bookID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`bookID`) REFERENCES `books` (`bookID`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`UserID`) REFERENCES `user_data` (`UserID`),
  ADD CONSTRAINT `cart_ibfk_3` FOREIGN KEY (`sellerID`) REFERENCES `seller_profile` (`sellerID`);

--
-- Constraints for table `myorderdetails`
--
ALTER TABLE `myorderdetails`
  ADD CONSTRAINT `myorderdetails_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `user_data` (`UserID`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`sellerID`) REFERENCES `seller_profile` (`sellerID`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`bookID`) REFERENCES `books` (`bookID`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`userID`) REFERENCES `user_data` (`UserID`),
  ADD CONSTRAINT `orders_ibfk_4` FOREIGN KEY (`userID`) REFERENCES `user_data` (`UserID`),
  ADD CONSTRAINT `orders_ibfk_5` FOREIGN KEY (`OrderId`) REFERENCES `myorderdetails` (`OrderId`);

--
-- Constraints for table `seller`
--
ALTER TABLE `seller`
  ADD CONSTRAINT `seller_ibfk_1` FOREIGN KEY (`bookID`) REFERENCES `books` (`bookID`),
  ADD CONSTRAINT `seller_ibfk_2` FOREIGN KEY (`sellerID`) REFERENCES `seller_profile` (`sellerID`);

--
-- Constraints for table `userlogin`
--
ALTER TABLE `userlogin`
  ADD CONSTRAINT `userlogin_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `user_data` (`UserID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
