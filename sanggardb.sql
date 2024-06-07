-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2024 at 05:50 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sanggardb`
--

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `client_id` int(5) NOT NULL,
  `client_name` varchar(50) NOT NULL,
  `client_phone` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`client_id`, `client_name`, `client_phone`) VALUES
(1, 'Client 1', '02020202020');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `USER_ID` varchar(30) NOT NULL,
  `NAME` varchar(30) NOT NULL,
  `EMAIL` varchar(30) DEFAULT NULL,
  `SUGGESTION` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`USER_ID`, `NAME`, `EMAIL`, `SUGGESTION`) VALUES
('a1', 'Arif', 'arif@gmail.com', 'Cant wait to go visit the restaurant');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(30) NOT NULL,
  `DESC_MENU` varchar(100) NOT NULL,
  `PRICE` decimal(9,2) DEFAULT NULL,
  `IMAGE_URL` VARCHAR(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`ID`, `NAME`, `DESC_MENU`, `PRICE`, `IMAGE_URL`) VALUES
(1, 'Banana Milkshake', 'Banana, Ice Cream, Milk.', 6.00, '/Sanggar Project/Image/Banana Milkshake.jpg'),
(2, 'Chicken Chop', 'Fried Chicken Chop, Fries, Coleslaw, Chips, Black Pepper Sauce.', 12.90, '/Sanggar Project/Image/chickenChop.jpg'),
(3, 'Grilled Beef Burger', '100% Australian Beef Patty, Homemade Bun, Sliced Cheese, Special Sauce.', 12.00, '/Sanggar Project/Image/burger.jpg'),
(4, 'Grilled Salmon', 'Grilled Salmon, Fries, Coleslaw, Chips, Black Pepper Sauce.', 20.99, '/Sanggar Project/Image/grilledSalmon.jpg' ),
(5, 'Lamb Chop', 'Grilled Lamb Chop, Fries, Coleslaw, Chips, Black Pepper Sauce.', 17.90, '/Sanggar Project/Image/lamb%20chop.jpg'),
(6, 'Spaghetti Carbonara', 'Spaghetti with Carbonara Sauce, Chicken Slice, Chicken Sausage.', 12.00, '/Sanggar Project/Image/spaghetti.jpg' ),
(7, 'Steak Platter', 'Grilled Steak, Fries, Coleslaw, Nuggets, Spaghetti Carbonara, Black Pepper Sauce.', 24.00, '/Sanggar Project/Image/steakPlatter.jpeg' ),
(8, 'Teh Madu Ais', 'Tea, Honey, Condensed Milk, Ice.', 4.50, '/Sanggar Project/Image/teh%20ais%20madu.jpg'),
(9, 'Watermelon Juice', 'Watermelon, Sugarcane, Ice.', 5.00, '/Sanggar Project/Image/Watermelon%20Juice.jpg' );

-- --------------------------------------------------------

--
-- Table structure for table `tables`
--

CREATE TABLE `tables` (
  `table_id` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tables`
--

INSERT INTO `tables` (`table_id`) VALUES
(1),
(2),
(3),
(4),
(5),
(6);

-- --------------------------------------------------------

--
-- Table structure for table `table1`
--

CREATE TABLE `table1` (
  `CART_ID` int(11) NOT NULL,
  `NAME` varchar(30) NOT NULL,
  `QUANTITY` int(11) DEFAULT NULL,
  `PRICE` decimal(9,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `table2`
--

CREATE TABLE `table2` (
  `CART_ID` int(11) NOT NULL,
  `NAME` varchar(30) NOT NULL,
  `QUANTITY` int(11) DEFAULT NULL,
  `PRICE` decimal(9,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `table3`
--

CREATE TABLE `table3` (
  `CART_ID` int(11) NOT NULL,
  `NAME` varchar(30) NOT NULL,
  `QUANTITY` int(11) DEFAULT NULL,
  `PRICE` decimal(9,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `table4`
--

CREATE TABLE `table4` (
  `CART_ID` int(11) NOT NULL,
  `NAME` varchar(30) NOT NULL,
  `QUANTITY` int(11) DEFAULT NULL,
  `PRICE` decimal(9,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `table5`
--

CREATE TABLE `table5` (
  `CART_ID` int(11) NOT NULL,
  `NAME` varchar(30) NOT NULL,
  `QUANTITY` int(11) DEFAULT NULL,
  `PRICE` decimal(9,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `table6`
--

CREATE TABLE `table6` (
  `CART_ID` int(11) NOT NULL,
  `NAME` varchar(30) NOT NULL,
  `QUANTITY` int(11) DEFAULT NULL,
  `PRICE` decimal(9,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `TRANSACTION_ID` int(11) NOT NULL,
  `ACCNUM` varchar(20) NOT NULL,
  `ACCNAME` varchar(30) NOT NULL,
  `AMOUNT` decimal(9,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `ID` varchar(30) NOT NULL,
  `NAME` varchar(30) NOT NULL,
  `USERNAME` varchar(30) DEFAULT NULL,
  `PASSWORD` varchar(30) DEFAULT NULL,
  `ROLE` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`ID`, `NAME`, `USERNAME`, `PASSWORD`, `ROLE`) VALUES
('a1', 'Arif', 'arif', '1234', 'Admin'),
('b2', 'Hazim', 'margo', '5678', 'SuperAdmin');

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `reservation_id` int(5) NOT NULL,
  `date_created` datetime NOT NULL,
  `client_id` int(5) NOT NULL,
  `selected_time` datetime NOT NULL,
  `nbr_guests` int(2) NOT NULL,
  `table_id` int(3) NOT NULL,
  `liberated` tinyint(1) NOT NULL DEFAULT 0,
  `canceled` tinyint(1) NOT NULL DEFAULT 0,
  `cancellation_reason` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`reservation_id`, `date_created`, `client_id`, `selected_time`, `nbr_guests`, `table_id`, `liberated`, `canceled`, `cancellation_reason`) VALUES
(1, '2020-07-18 09:07:00', 13, '2020-07-30 09:07:00', 0, 1, 0, 0, NULL),
(2, '2020-07-18 09:11:00', 14, '2020-07-29 13:00:00', 4, 1, 0, 0, NULL),
(3, '2023-07-01 04:01:00', 15, '2023-07-02 05:00:00', 2, 1, 0, 0, NULL),
(4, '2023-10-30 20:03:00', 17, '2023-11-08 20:03:00', 1, 1, 0, 0, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`client_id`);
  
--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`USER_ID`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `table1`
--
ALTER TABLE `table1`
  ADD PRIMARY KEY (`CART_ID`),
  ADD UNIQUE KEY `NAME` (`NAME`);

--
-- Indexes for table `table2`
--
ALTER TABLE `table2`
  ADD PRIMARY KEY (`CART_ID`),
  ADD UNIQUE KEY `NAME` (`NAME`);

--
-- Indexes for table `table3`
--
ALTER TABLE `table3`
  ADD PRIMARY KEY (`CART_ID`),
  ADD UNIQUE KEY `NAME` (`NAME`);

--
-- Indexes for table `table4`
--
ALTER TABLE `table4`
  ADD PRIMARY KEY (`CART_ID`),
  ADD UNIQUE KEY `NAME` (`NAME`);

--
-- Indexes for table `table5`
--
ALTER TABLE `table5`
  ADD PRIMARY KEY (`CART_ID`),
  ADD UNIQUE KEY `NAME` (`NAME`);

--
-- Indexes for table `table6`
--
ALTER TABLE `table6`
  ADD PRIMARY KEY (`CART_ID`),
  ADD UNIQUE KEY `NAME` (`NAME`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`TRANSACTION_ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`);
  
--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`reservation_id`);

--
-- Indexes for table `tables`
--
ALTER TABLE `tables`
  ADD PRIMARY KEY (`table_id`);
  
--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `client_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tables`
--
ALTER TABLE `tables`
  MODIFY `table_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
  
--
-- AUTO_INCREMENT for table `table1`
--
ALTER TABLE `table1`
  MODIFY `CART_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `table2`
--
ALTER TABLE `table2`
  MODIFY `CART_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `table3`
--
ALTER TABLE `table3`
  MODIFY `CART_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `table4`
--
ALTER TABLE `table4`
  MODIFY `CART_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `table5`
--
ALTER TABLE `table5`
  MODIFY `CART_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `table6`
--
ALTER TABLE `table6`
  MODIFY `CART_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `TRANSACTION_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `reservation_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
  
--
-- Constraints for dumped tables
--

--
-- Constraints for table `contact`
--
ALTER TABLE `contact`
  ADD CONSTRAINT `User` FOREIGN KEY (`USER_ID`) REFERENCES `user` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
