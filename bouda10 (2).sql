-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2021 at 06:36 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bouda10`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `ID` int(11) NOT NULL,
  `User_ID` int(11) NOT NULL,
  `Event_ID` int(11) NOT NULL,
  `Payment_method_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`ID`, `User_ID`, `Event_ID`, `Payment_method_ID`) VALUES
(1, 3, 1, 3),
(2, 3, 2, 3),
(3, 2, 3, 3),
(6, 5, 1, 3),
(7, 5, 1, 3),
(8, 5, 1, 3),
(9, 3, 1, 3),
(10, 3, 1, 3),
(11, 17, 3, 3),
(12, 3, 1, 3),
(13, 3, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `card_info`
--

CREATE TABLE `card_info` (
  `ID` int(11) NOT NULL,
  `Card_number` text NOT NULL,
  `card_Holder_name` text NOT NULL,
  `exp_date` date NOT NULL,
  `ccv` int(11) NOT NULL,
  `User_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `card_info`
--

INSERT INTO `card_info` (`ID`, `Card_number`, `card_Holder_name`, `exp_date`, `ccv`, `User_ID`) VALUES
(1, '4564684868797', 'khaled elgindy', '2022-02-09', 456, 2),
(2, '8878464648848', 'mostafa ali', '2021-12-29', 585, 2),
(3, '884588558875', 'khaled elgindy', '2022-01-26', 878, 2);

-- --------------------------------------------------------

--
-- Table structure for table `equipments_avilability`
--

CREATE TABLE `equipments_avilability` (
  `ID` int(11) NOT NULL,
  `Avilability` int(11) NOT NULL,
  `Event_Creation_Equipment_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `ID` int(11) NOT NULL,
  `name` text NOT NULL,
  `Date` datetime NOT NULL,
  `location_ID` int(11) NOT NULL,
  `ticket_type_ID` int(11) NOT NULL,
  `max_capacity` int(11) NOT NULL,
  `ticket_price` int(11) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`ID`, `name`, `Date`, `location_ID`, `ticket_type_ID`, `max_capacity`, `ticket_price`, `image`) VALUES
(1, 'halloween', '2021-10-31 00:00:00', 8, 4, 4000, 150, 'halowwen.jpg'),
(2, 'Battle of the burger cairokee and sharmoofers', '2021-12-28 00:00:00', 2, 4, 8000, 150, 'battle.jpg'),
(3, 'Astrologers day', '2022-01-27 00:00:00', 8, 4, 5000, 150, 'asto2.jpeg'),
(4, 'ahmed and farah', '2021-11-19 00:00:00', 2, 5, 1000, 0, ''),
(5, 'ahmed and farah', '2021-11-19 00:00:00', 2, 5, 1000, 0, ''),
(6, 'ahmed and farah', '2021-11-19 00:00:00', 2, 5, 1000, 0, ''),
(7, 'ahmed and farah', '2021-11-19 00:00:00', 2, 5, 1000, 0, ''),
(8, 'ahmed and farah', '2021-11-19 00:00:00', 2, 5, 1000, 0, ''),
(9, 'khaled and farah', '2021-11-20 00:00:00', 4, 5, 500, 0, ''),
(10, 'khaled and farah', '2021-11-20 00:00:00', 4, 5, 500, 0, ''),
(11, 'khaled and farah', '2021-11-20 00:00:00', 4, 5, 500, 0, ''),
(12, 'cairokee', '2021-11-20 00:00:00', 3, 4, 5000, 150, ''),
(13, 'cairokee', '2021-11-20 00:00:00', 3, 4, 5000, 150, ''),
(14, 'cairokee', '2021-11-20 00:00:00', 3, 4, 5000, 150, ''),
(15, 'sharmofers', '2021-11-23 00:00:00', 7, 4, 4200, 150, ''),
(16, 'sharmofers', '2021-11-23 00:00:00', 7, 4, 4200, 150, ''),
(17, 'sharmofers', '2021-11-23 00:00:00', 7, 4, 4200, 150, ''),
(18, 'sharmofers', '2021-11-23 00:00:00', 7, 4, 4200, 150, ''),
(19, 'sharmofers', '2021-11-23 00:00:00', 7, 4, 4200, 150, ''),
(21, 'mohamedramdan', '2021-12-30 00:00:00', 1, 4, 5000, 150, ''),
(23, 'hoba', '2021-12-13 00:00:00', 2, 4, 200, 150, '');

-- --------------------------------------------------------

--
-- Table structure for table `event_category`
--

CREATE TABLE `event_category` (
  `ID` int(11) NOT NULL,
  `category` text NOT NULL,
  `ticket_type_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event_category`
--

INSERT INTO `event_category` (`ID`, `category`, `ticket_type_ID`) VALUES
(1, 'concert', 4),
(2, 'prom', 5),
(3, 'Wedding', 5),
(4, 'party', 4);

-- --------------------------------------------------------

--
-- Table structure for table `event_creation`
--

CREATE TABLE `event_creation` (
  `ID` int(11) NOT NULL,
  `User_ID` int(11) NOT NULL,
  `Event_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event_creation`
--

INSERT INTO `event_creation` (`ID`, `User_ID`, `Event_ID`) VALUES
(1, 2, 1),
(2, 2, 2),
(3, 2, 4),
(4, 3, 13),
(5, 3, 14),
(6, 3, 15),
(7, 3, 16),
(8, 3, 17),
(9, 3, 18),
(10, 3, 19),
(11, 17, 23);

-- --------------------------------------------------------

--
-- Table structure for table `event_creation_equipment`
--

CREATE TABLE `event_creation_equipment` (
  `ID` int(11) NOT NULL,
  `Event_creation_ID` int(11) NOT NULL,
  `Event_Equipment_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event_creation_equipment`
--

INSERT INTO `event_creation_equipment` (`ID`, `Event_creation_ID`, `Event_Equipment_ID`) VALUES
(1, 1, 2),
(2, 1, 4),
(3, 2, 1),
(4, 2, 1),
(5, 3, 6),
(6, 3, 7),
(7, 3, 5),
(19, 4, 2),
(20, 4, 4),
(21, 4, 12),
(22, 5, 2),
(23, 5, 4),
(24, 5, 12),
(25, 6, 1),
(26, 6, 2),
(27, 6, 8),
(28, 7, 1),
(29, 7, 2),
(30, 7, 8),
(31, 8, 1),
(32, 8, 2),
(33, 8, 8),
(34, 9, 1),
(35, 9, 2),
(36, 9, 8),
(37, 10, 1),
(38, 10, 2),
(39, 10, 8),
(40, 11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `event_creation_payment`
--

CREATE TABLE `event_creation_payment` (
  `ID` int(11) NOT NULL,
  `Event_creation_Relation_ID` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  `Payment_method_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event_creation_payment`
--

INSERT INTO `event_creation_payment` (`ID`, `Event_creation_Relation_ID`, `total_price`, `Payment_method_ID`) VALUES
(1, 1, 60000, 2),
(2, 2, 70000, 3),
(3, 3, 100000, 1),
(4, 9, 6000, 1),
(5, 10, 4500, 3);

-- --------------------------------------------------------

--
-- Table structure for table `event_creation_relation`
--

CREATE TABLE `event_creation_relation` (
  `ID` int(11) NOT NULL,
  `Event_ID` int(11) NOT NULL,
  `Event_Creation_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event_creation_relation`
--

INSERT INTO `event_creation_relation` (`ID`, `Event_ID`, `Event_Creation_ID`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 14, 5),
(5, 15, 6),
(6, 16, 7),
(7, 17, 8),
(8, 18, 9),
(9, 19, 10),
(10, 23, 11);

-- --------------------------------------------------------

--
-- Table structure for table `event_description`
--

CREATE TABLE `event_description` (
  `ID` int(11) NOT NULL,
  `Event _ID` int(11) NOT NULL,
  `Description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event_description`
--

INSERT INTO `event_description` (`ID`, `Event _ID`, `Description`) VALUES
(1, 1, 'dj issa and assoud with your own costumes '),
(2, 2, 'choosing best burger restaurant performing cairokee and sharmoofers '),
(3, 3, 'feel at the space with dj saab and baghdat');

-- --------------------------------------------------------

--
-- Table structure for table `event_equipments`
--

CREATE TABLE `event_equipments` (
  `ID` int(11) NOT NULL,
  `type` text NOT NULL,
  `Price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event_equipments`
--

INSERT INTO `event_equipments` (`ID`, `type`, `Price`) VALUES
(1, 'Lighting system RGB4', 4500),
(2, 'DJ mixer Pioneer 3000', 1000),
(3, 'sound system sony 4000', 4800),
(4, 'dancefloor 40*80', 3100),
(5, 'stage 200*180', 6500),
(6, 'soundsystem JBL 900', 3000),
(7, 'mic setup 18', 2000),
(8, 'Drums yamaha', 500),
(9, 'stage 100*1000', 2400),
(10, 'centerpiece1', 5000),
(11, 'centerpiece2', 6000),
(12, 'centerpiece3', 8000);

-- --------------------------------------------------------

--
-- Table structure for table `event_location`
--

CREATE TABLE `event_location` (
  `ID` int(11) NOT NULL,
  `adress` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event_location`
--

INSERT INTO `event_location` (`ID`, `adress`) VALUES
(1, 'elmanara tagmoo hall1'),
(2, 'Hilton Sheraton hall1'),
(3, 'Dandy mall'),
(4, 'Kempinski hall2 '),
(5, 'Kempinski hall 3'),
(6, 'Hilton Sheraton hall 2 '),
(7, 'villa gamyt ahmed orabi 849'),
(8, 'atrium club Sheraton');

-- --------------------------------------------------------

--
-- Table structure for table `location_avilability`
--

CREATE TABLE `location_avilability` (
  `ID` int(11) NOT NULL,
  `Event_ID` int(11) NOT NULL,
  `location_ID` int(11) NOT NULL,
  `Availability` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payment_method`
--

CREATE TABLE `payment_method` (
  `ID` int(11) NOT NULL,
  `Method` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_method`
--

INSERT INTO `payment_method` (`ID`, `Method`) VALUES
(1, 'Cash'),
(2, 'Creditcard'),
(3, 'Fawry');

-- --------------------------------------------------------

--
-- Table structure for table `process`
--

CREATE TABLE `process` (
  `ID` int(11) NOT NULL,
  `process_type_ID` int(11) NOT NULL,
  `level_indecator` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `process_type`
--

CREATE TABLE `process_type` (
  `ID` int(11) NOT NULL,
  `type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `recipt`
--

CREATE TABLE `recipt` (
  `ID` int(11) NOT NULL,
  `Booking_ID` int(11) NOT NULL,
  `Total_Price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recipt`
--

INSERT INTO `recipt` (`ID`, `Booking_ID`, `Total_Price`) VALUES
(1, 1, 200),
(2, 2, 180),
(3, 3, 250);

-- --------------------------------------------------------

--
-- Table structure for table `ticket/invitation`
--

CREATE TABLE `ticket/invitation` (
  `ID` int(11) NOT NULL,
  `Type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ticket/invitation`
--

INSERT INTO `ticket/invitation` (`ID`, `Type`) VALUES
(4, 'Ticket'),
(5, 'Invitation ');

-- --------------------------------------------------------

--
-- Table structure for table `tickets_price`
--

CREATE TABLE `tickets_price` (
  `ID` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `ID` int(11) NOT NULL,
  `First_Name` text NOT NULL,
  `Last_Name` text NOT NULL,
  `Email` text NOT NULL,
  `Date_Of_Birth` date NOT NULL,
  `password` text NOT NULL,
  `Finger_Verification` int(11) NOT NULL,
  `Phone_Number` varchar(255) NOT NULL,
  `UserTypeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`ID`, `First_Name`, `Last_Name`, `Email`, `Date_Of_Birth`, `password`, `Finger_Verification`, `Phone_Number`, `UserTypeID`) VALUES
(1, 'Bassem', 'Khaled', 'Bassem@gmail.com', '1997-10-31', 'bassem123', 0, '01128444182', 1),
(2, 'bassem', 'elgindy', 'bibo-ua@hotmail.com', '1997-10-31', 'ghvjkbln.m', 1, '1128444182', 2),
(3, 'mahmoud', 'salah', 'salah99997@gmail.com', '1999-02-04', 'salah1234', 0, '0123456789', 2),
(4, 'abdelrahman', 'waleed', 'abdulrahman_wa@hotmail.com', '1999-05-18', 'waleed123', 0, '1156524610', 2),
(5, 'kareemm', 'azzab', 'kareem.1999@hotmail.com', '1999-04-15', 'kiki123', 0, '1141899150', 2),
(6, '', 'ahmed', 'ahmed@hotmail.com', '2021-11-04', 'ahmed123', 1, '1128444182', 2),
(7, '', 'amr', 'aloo@yahoo.com', '1998-01-11', 'ali123', 1, '1128444178', 2),
(8, '', 'amr', 'r.m@yahoo.com', '1996-12-12', 'randa123', 1, '112844789', 2),
(9, '', 'elgindy', 'mona.el@gmail.com', '1994-05-06', 'mona123', 1, '112889894', 2),
(10, 'nour', 'rosstom', 'nour1234@gmail.com', '1999-06-12', 'nour123', 1, '1128444258', 2),
(11, '', 'mohamed', 'Tarekmohamedelshahawy@gmail.com', '1997-08-08', 'tarek123', 1, '1127444159', 2),
(12, '', 'mekawy', 'nermin.mekawy@hotmail.com', '1993-06-22', 'nermun123', 1, '2147483647', 2),
(13, '', 'hesham', 'aliaa.h@hotmail.com', '1999-06-08', 'aliaa123', 1, '1128444888', 2),
(14, '', 'hesham', 'mous.h@hotmail.com', '1999-06-07', 'mostafa123', 1, '1128444887', 2),
(15, '', 'ahmed', 'mous.a@hotmail.com', '1999-06-12', 'darsh123', 1, '2147483647', 2),
(16, 'sherine', 'reda', 'sherin_reda99@yahoo.com', '1991-05-15', 'sheryy123', 1, '1000000002', 2),
(17, 'alaa', 'ahmed', 'alaa.eldin@hotmail.com', '1998-06-17', 'alaa123', 1, '01000626951', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_type`
--

CREATE TABLE `user_type` (
  `ID` int(11) NOT NULL,
  `Type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_type`
--

INSERT INTO `user_type` (`ID`, `Type`) VALUES
(1, 'Admin'),
(2, 'Customer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `User_ID` (`User_ID`),
  ADD KEY `Event_ID` (`Event_ID`),
  ADD KEY `Payment-method_ID` (`Payment_method_ID`);

--
-- Indexes for table `card_info`
--
ALTER TABLE `card_info`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `User_ID` (`User_ID`);

--
-- Indexes for table `equipments_avilability`
--
ALTER TABLE `equipments_avilability`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Equipment_ID` (`Event_Creation_Equipment_ID`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `location` (`location_ID`),
  ADD KEY `ticket_price` (`ticket_type_ID`);

--
-- Indexes for table `event_category`
--
ALTER TABLE `event_category`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ticket_type_ID` (`ticket_type_ID`);

--
-- Indexes for table `event_creation`
--
ALTER TABLE `event_creation`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Category_ID` (`Event_ID`),
  ADD KEY `User_ID` (`User_ID`);

--
-- Indexes for table `event_creation_equipment`
--
ALTER TABLE `event_creation_equipment`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Event_creation_ID` (`Event_creation_ID`),
  ADD KEY `Event_Equipment_ID` (`Event_Equipment_ID`);

--
-- Indexes for table `event_creation_payment`
--
ALTER TABLE `event_creation_payment`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Event_creation_ID` (`Event_creation_Relation_ID`),
  ADD KEY `Payment-method_ID` (`Payment_method_ID`);

--
-- Indexes for table `event_creation_relation`
--
ALTER TABLE `event_creation_relation`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Event _ID` (`Event_ID`),
  ADD KEY `Event_Creation_ID` (`Event_Creation_ID`);

--
-- Indexes for table `event_description`
--
ALTER TABLE `event_description`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Event _ID` (`Event _ID`);

--
-- Indexes for table `event_equipments`
--
ALTER TABLE `event_equipments`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `event_location`
--
ALTER TABLE `event_location`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `location_avilability`
--
ALTER TABLE `location_avilability`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Event_ID` (`Event_ID`),
  ADD KEY `locatiom_ID` (`location_ID`);

--
-- Indexes for table `payment_method`
--
ALTER TABLE `payment_method`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `process`
--
ALTER TABLE `process`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `process_type_ID` (`process_type_ID`);

--
-- Indexes for table `process_type`
--
ALTER TABLE `process_type`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `recipt`
--
ALTER TABLE `recipt`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Booking_ID` (`Booking_ID`),
  ADD KEY `Total_Price` (`Total_Price`);

--
-- Indexes for table `ticket/invitation`
--
ALTER TABLE `ticket/invitation`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tickets_price`
--
ALTER TABLE `tickets_price`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user-type-id` (`UserTypeID`);

--
-- Indexes for table `user_type`
--
ALTER TABLE `user_type`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `card_info`
--
ALTER TABLE `card_info`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `equipments_avilability`
--
ALTER TABLE `equipments_avilability`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `event_category`
--
ALTER TABLE `event_category`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `event_creation`
--
ALTER TABLE `event_creation`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `event_creation_equipment`
--
ALTER TABLE `event_creation_equipment`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `event_creation_payment`
--
ALTER TABLE `event_creation_payment`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `event_creation_relation`
--
ALTER TABLE `event_creation_relation`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `event_description`
--
ALTER TABLE `event_description`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `event_equipments`
--
ALTER TABLE `event_equipments`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `event_location`
--
ALTER TABLE `event_location`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `location_avilability`
--
ALTER TABLE `location_avilability`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_method`
--
ALTER TABLE `payment_method`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `process`
--
ALTER TABLE `process`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `process_type`
--
ALTER TABLE `process_type`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recipt`
--
ALTER TABLE `recipt`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ticket/invitation`
--
ALTER TABLE `ticket/invitation`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tickets_price`
--
ALTER TABLE `tickets_price`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `user_type`
--
ALTER TABLE `user_type`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`Event_ID`) REFERENCES `events` (`ID`),
  ADD CONSTRAINT `booking_ibfk_3` FOREIGN KEY (`User_ID`) REFERENCES `user` (`ID`),
  ADD CONSTRAINT `booking_ibfk_4` FOREIGN KEY (`Payment_method_ID`) REFERENCES `payment_method` (`ID`);

--
-- Constraints for table `card_info`
--
ALTER TABLE `card_info`
  ADD CONSTRAINT `card_info_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `user` (`ID`);

--
-- Constraints for table `equipments_avilability`
--
ALTER TABLE `equipments_avilability`
  ADD CONSTRAINT `equipments_avilability_ibfk_1` FOREIGN KEY (`Event_Creation_Equipment_ID`) REFERENCES `event_equipments` (`ID`);

--
-- Constraints for table `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_ibfk_1` FOREIGN KEY (`location_ID`) REFERENCES `event_location` (`ID`),
  ADD CONSTRAINT `events_ibfk_2` FOREIGN KEY (`ticket_type_ID`) REFERENCES `ticket/invitation` (`ID`);

--
-- Constraints for table `event_category`
--
ALTER TABLE `event_category`
  ADD CONSTRAINT `event_category_ibfk_1` FOREIGN KEY (`ticket_type_ID`) REFERENCES `ticket/invitation` (`ID`);

--
-- Constraints for table `event_creation`
--
ALTER TABLE `event_creation`
  ADD CONSTRAINT `event_creation_ibfk_5` FOREIGN KEY (`Event_ID`) REFERENCES `events` (`ID`),
  ADD CONSTRAINT `event_creation_ibfk_6` FOREIGN KEY (`User_ID`) REFERENCES `user` (`ID`);

--
-- Constraints for table `event_creation_equipment`
--
ALTER TABLE `event_creation_equipment`
  ADD CONSTRAINT `event_creation_equipment_ibfk_1` FOREIGN KEY (`Event_creation_ID`) REFERENCES `event_creation` (`ID`),
  ADD CONSTRAINT `event_creation_equipment_ibfk_2` FOREIGN KEY (`Event_Equipment_ID`) REFERENCES `event_equipments` (`ID`);

--
-- Constraints for table `event_creation_payment`
--
ALTER TABLE `event_creation_payment`
  ADD CONSTRAINT `event_creation_payment_ibfk_4` FOREIGN KEY (`Payment_method_ID`) REFERENCES `payment_method` (`ID`),
  ADD CONSTRAINT `event_creation_payment_ibfk_5` FOREIGN KEY (`Event_creation_Relation_ID`) REFERENCES `event_creation_relation` (`ID`);

--
-- Constraints for table `event_creation_relation`
--
ALTER TABLE `event_creation_relation`
  ADD CONSTRAINT `event_creation_relation_ibfk_1` FOREIGN KEY (`Event_Creation_ID`) REFERENCES `event_creation` (`ID`),
  ADD CONSTRAINT `event_creation_relation_ibfk_2` FOREIGN KEY (`Event_ID`) REFERENCES `events` (`ID`);

--
-- Constraints for table `event_description`
--
ALTER TABLE `event_description`
  ADD CONSTRAINT `event_description_ibfk_1` FOREIGN KEY (`Event _ID`) REFERENCES `events` (`ID`);

--
-- Constraints for table `location_avilability`
--
ALTER TABLE `location_avilability`
  ADD CONSTRAINT `location_avilability_ibfk_1` FOREIGN KEY (`Event_ID`) REFERENCES `events` (`ID`),
  ADD CONSTRAINT `location_avilability_ibfk_2` FOREIGN KEY (`location_ID`) REFERENCES `event_location` (`ID`);

--
-- Constraints for table `process`
--
ALTER TABLE `process`
  ADD CONSTRAINT `process_ibfk_1` FOREIGN KEY (`process_type_ID`) REFERENCES `process_type` (`ID`);

--
-- Constraints for table `recipt`
--
ALTER TABLE `recipt`
  ADD CONSTRAINT `recipt_ibfk_1` FOREIGN KEY (`Booking_ID`) REFERENCES `booking` (`ID`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`UserTypeID`) REFERENCES `user_type` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
