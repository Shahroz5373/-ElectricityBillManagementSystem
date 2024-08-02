-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2024 at 08:20 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `electricitybillmanagementsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `phone_no` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `Customer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `name`, `phone_no`, `email`, `address`, `Customer_id`) VALUES
(1, 'Admin1', '123-456-7890', 'admin1@email.com', '123 Admin St', 1),
(2, 'Admin2', '987-654-3210', 'admin2@email.com', '456 Admin Ave', 2),
(3, 'Admin3', '555-123-4567', 'admin3@email.com', '789 Admin Rd', 3),
(4, 'Admin4', '111-222-3333', 'admin4@email.com', '321 Admin Ln', 4),
(5, 'Admin5', '444-555-6666', 'admin5@email.com', '567 Admin Dr', 5),
(6, 'Admin6', '777-888-9999', 'admin6@email.com', '890 Admin Ct', 6),
(7, 'Admin7', '222-333-4444', 'admin7@email.com', '234 Admin Pl', 7),
(8, 'Admin8', '666-777-8888', 'admin8@email.com', '678 Admin Ave', 8),
(9, 'Admin9', '999-000-1111', 'admin9@email.com', '345 Admin Rd', 9),
(10, 'Admin10', '444-555-6666', 'admin10@email.com', '789 Admin Dr', 10),
(11, 'Admin11', '111-222-3333', 'admin11@email.com', '123 Adminwood Ln', 11),
(12, 'Admin12', '777-888-9999', 'admin12@email.com', '456 Admincrest Rd', 12),
(13, 'Admin13', '555-123-4567', 'admin13@email.com', '789 Adminwood Ave', 13),
(14, 'Admin14', '222-333-4444', 'admin14@email.com', '234 Adminhill Pl', 14),
(15, 'Admin15', '999-000-1111', 'admin15@email.com', '567 Adminwood Rd', 15),
(16, 'Admin16', '444-555-6666', 'admin16@email.com', '890 Admin Ave', 16),
(17, 'Admin17', '111-222-3333', 'admin17@email.com', '321 Admin Rd', 17),
(18, 'Admin18', '777-888-9999', 'admin18@email.com', '678 Admin Pl', 18),
(19, 'Admin19', '555-123-4567', 'admin19@email.com', '123 Adminwood Dr', 19),
(20, 'Admin20', '222-333-4444', 'admin20@email.com', '456 Admincrest Ln', 20),
(21, 'Admin21', '999-000-1111', 'admin21@email.com', '789 Adminwood Rd', 21),
(22, 'Admin22', '444-555-6666', 'admin22@email.com', '234 Adminhill Ave', 22),
(23, 'Admin23', '111-222-3333', 'admin23@email.com', '567 Adminwood Pl', 23),
(24, 'Admin24', '777-888-9999', 'admin24@email.com', '890 Admincrest Rd', 24),
(25, 'Admin25', '555-123-4567', 'admin25@email.com', '321 Adminwood Ln', 25),
(26, 'Admin26', '222-333-4444', 'admin26@email.com', '678 Adminhill Ave', 26),
(27, 'Admin27', '999-000-1111', 'admin27@email.com', '123 Adminwood Rd', 27),
(28, 'Admin28', '444-555-6666', 'admin28@email.com', '456 Admincrest Pl', 28),
(29, 'Admin29', '111-222-3333', 'admin29@email.com', '789 Adminwood Dr', 29),
(30, 'Admin30', '777-888-9999', 'admin30@email.com', '890 Adminhill Ave', 30);

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `bill_id` int(11) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `amount_due` decimal(10,0) DEFAULT NULL,
  `Bill_Status` varchar(10) DEFAULT NULL,
  `meter_reading_start` decimal(10,0) DEFAULT NULL,
  `meter_reading_end` decimal(10,0) DEFAULT NULL,
  `usage_units` int(11) DEFAULT NULL,
  `Customer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`bill_id`, `start_date`, `end_date`, `due_date`, `amount_due`, `Bill_Status`, `meter_reading_start`, `meter_reading_end`, `usage_units`, `Customer_id`) VALUES
(1, '2023-01-01', '2023-01-31', '2023-02-15', 151, 'Paid', 1000, 1100, 100, 1),
(2, '2023-02-01', '2023-02-28', '2023-03-15', 146, 'Unpaid', 1100, 1200, 100, 2),
(3, '2023-03-01', '2023-03-31', '2023-04-15', 160, 'Paid', 1200, 1320, 120, 3),
(4, '2023-04-01', '2023-04-30', '2023-05-15', 170, 'Unpaid', 1320, 1450, 130, 4),
(5, '2023-05-01', '2023-05-31', '2023-06-15', 156, 'Paid', 1450, 1570, 120, 5),
(6, '2023-06-01', '2023-06-30', '2023-07-15', 165, 'Unpaid', 1570, 1700, 130, 6),
(7, '2023-07-01', '2023-07-31', '2023-08-15', 158, 'Paid', 1700, 1820, 120, 7),
(8, '2023-08-01', '2023-08-31', '2023-09-15', 163, 'Unpaid', 1820, 1950, 130, 8),
(9, '2023-09-01', '2023-09-30', '2023-10-15', 175, 'Paid', 1950, 2080, 130, 9),
(10, '2023-10-01', '2023-10-31', '2023-11-15', 181, 'Unpaid', 2080, 2210, 130, 10),
(11, '2023-11-01', '2023-11-30', '2023-12-15', 191, 'Paid', 2210, 2350, 140, 11),
(12, '2023-12-01', '2023-12-31', '2024-01-15', 200, 'Unpaid', 2350, 2500, 150, 12),
(13, '2024-01-01', '2024-01-31', '2024-02-15', 211, 'Paid', 2500, 2650, 150, 13),
(14, '2024-02-01', '2024-02-29', '2024-03-15', 216, 'Unpaid', 2650, 2800, 150, 14),
(15, '2024-03-01', '2024-03-31', '2024-04-15', 225, 'Paid', 2800, 2950, 150, 15),
(16, '2024-04-01', '2024-04-30', '2024-05-15', 230, 'Unpaid', 2950, 3100, 150, 16),
(17, '2024-05-01', '2024-05-31', '2024-06-15', 241, 'Paid', 3100, 3250, 150, 17),
(18, '2024-06-01', '2024-06-30', '2024-07-15', 250, 'Unpaid', 3250, 3400, 150, 18),
(19, '2024-07-01', '2024-07-31', '2024-08-15', 258, 'Paid', 3400, 3550, 150, 19),
(20, '2024-08-01', '2024-08-31', '2024-09-15', 263, 'Unpaid', 3550, 3700, 150, 20),
(21, '2024-09-01', '2024-09-30', '2024-10-15', 275, 'Paid', 3700, 3850, 150, 21),
(22, '2024-10-01', '2024-10-31', '2024-11-15', 281, 'Unpaid', 3850, 4000, 150, 22),
(23, '2024-11-01', '2024-11-30', '2024-12-15', 291, 'Paid', 4000, 4150, 150, 23),
(24, '2024-12-01', '2024-12-31', '2025-01-15', 300, 'Unpaid', 4150, 4300, 150, 24),
(25, '2025-01-01', '2025-01-31', '2025-02-15', 311, 'Paid', 4300, 4450, 150, 25),
(26, '2025-02-01', '2025-02-28', '2025-03-15', 316, 'Unpaid', 4450, 4600, 150, 26),
(27, '2025-03-01', '2025-03-31', '2025-04-15', 325, 'Paid', 4600, 4750, 150, 27),
(28, '2025-04-01', '2025-04-30', '2025-05-15', 330, 'Unpaid', 4750, 4900, 150, 28),
(29, '2025-05-01', '2025-05-31', '2025-06-15', 341, 'Paid', 4900, 5050, 150, 29),
(30, '2025-06-01', '2025-06-30', '2025-07-15', 350, 'Unpaid', 5050, 5200, 150, 30);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Customer_id` int(11) NOT NULL,
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `phone_no` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Customer_id`, `first_name`, `last_name`, `phone_no`, `email`, `address`) VALUES
(1, 'John', 'Doe', '123-456-7890', 'john.doe@email.com', '123 Main St'),
(2, 'Jane', 'Smith', '987-654-3210', 'jane.smith@email.com', '456 Elm Ave'),
(3, 'Alice', 'Johnson', '555-123-4567', 'alice.johnson@email.com', '789 Oak Rd'),
(4, 'Bob', 'Williams', '111-222-3333', 'bob.williams@email.com', '321 Maple Ln'),
(5, 'Eva', 'Brown', '444-555-6666', 'eva.brown@email.com', '567 Pine Dr'),
(6, 'David', 'Lee', '777-888-9999', 'david.lee@email.com', '890 Cedar Ct'),
(7, 'Sophia', 'Garcia', '222-333-4444', 'sophia.garcia@email.com', '234 Birch Pl'),
(8, 'Michael', 'Martinez', '666-777-8888', 'michael.martinez@email.com', '678 Willow Ave'),
(9, 'Olivia', 'Rodriguez', '999-000-1111', 'olivia.rodriguez@email.com', '345 Oakwood Rd'),
(10, 'William', 'Lopez', '444-555-6666', 'william.lopez@email.com', '789 Elmwood Dr'),
(11, 'Emma', 'Hernandez', '111-222-3333', 'emma.hernandez@email.com', '123 Cedarwood Ln'),
(12, 'James', 'Gonzalez', '777-888-9999', 'james.gonzalez@email.com', '456 Pinecrest Rd'),
(13, 'Ava', 'Perez', '555-123-4567', 'ava.perez@email.com', '789 Maplewood Ave'),
(14, 'Alexander', 'Smith', '222-333-4444', 'alexander.smith@email.com', '234 Oakhill Pl'),
(15, 'Isabella', 'Davis', '999-000-1111', 'isabella.davis@email.com', '567 Birchwood Rd'),
(16, 'Daniel', 'Brown', '444-555-6666', 'daniel.brown@email.com', '890 Elm Ave'),
(17, 'Mia', 'Taylor', '111-222-3333', 'mia.taylor@email.com', '321 Cedar Rd'),
(18, 'Ethan', 'Anderson', '777-888-9999', 'ethan.anderson@email.com', '678 Pine Pl'),
(19, 'Sophia', 'Thomas', '555-123-4567', 'sophia.thomas@email.com', '123 Oakwood Dr'),
(20, 'Oliver', 'Harris', '222-333-4444', 'oliver.harris@email.com', '456 Maple Ln'),
(21, 'Amelia', 'Jackson', '999-000-1111', 'amelia.jackson@email.com', '789 Cedarwood Rd'),
(22, 'Lucas', 'White', '444-555-6666', 'lucas.white@email.com', '234 Pinecrest Ave'),
(23, 'Charlotte', 'Martin', '111-222-3333', 'charlotte.martin@email.com', '567 Elmwood Pl'),
(24, 'Liam', 'Thompson', '777-888-9999', 'liam.thompson@email.com', '890 Oakhill Rd'),
(25, 'Aria', 'Garcia', '555-123-4567', 'aria.garcia@email.com', '321 Birchwood Ln'),
(26, 'Noah', 'Rodriguez', '222-333-4444', 'noah.rodriguez@email.com', '678 Cedar Ave'),
(27, 'Grace', 'Lopez', '999-000-1111', 'grace.lopez@email.com', '123 Elm Ave'),
(28, 'Logan', 'Hernandez', '444-555-6666', 'logan.hernandez@email.com', '456 Maplewood Rd'),
(29, 'Harper', 'Gonzalez', '111-222-3333', 'harper.gonzalez@email.com', '789 Pinecrest Pl'),
(30, 'Jhon', 'Badar', '786-999-1234', 'jhon.Badar@email.com', '456 eden Rd');

-- --------------------------------------------------------

--
-- Table structure for table `meter`
--

CREATE TABLE `meter` (
  `meter_id` int(11) NOT NULL,
  `connection_date` date DEFAULT NULL,
  `meter_status` varchar(20) DEFAULT NULL,
  `meter_type` varchar(20) DEFAULT NULL,
  `reading_start` int(11) DEFAULT NULL,
  `reading_end` int(11) DEFAULT NULL,
  `Customer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `meter`
--

INSERT INTO `meter` (`meter_id`, `connection_date`, `meter_status`, `meter_type`, `reading_start`, `reading_end`, `Customer_id`) VALUES
(1, '2022-01-15', 'active', 'residential', 1000, 1500, 1),
(2, '2021-03-22', 'inactive', 'commercial', 1200, 1600, 2),
(3, '2020-05-18', 'active', 'industrial', 900, 1400, 3),
(4, '2019-07-12', 'active', 'residential', 1100, 1700, 4),
(5, '2022-02-27', 'inactive', 'commercial', 950, 1350, 5),
(6, '2021-11-10', 'active', 'residential', 1300, 1800, 6),
(7, '2020-08-05', 'active', 'industrial', 1250, 1650, 7),
(8, '2019-10-01', 'inactive', 'residential', 1050, 1450, 8),
(9, '2022-04-14', 'active', 'commercial', 1400, 1900, 9),
(10, '2021-06-19', 'inactive', 'industrial', 1150, 1550, 10),
(11, '2020-09-27', 'active', 'residential', 1000, 1400, 11),
(12, '2019-11-22', 'active', 'commercial', 900, 1300, 12),
(13, '2022-03-15', 'inactive', 'industrial', 1100, 1500, 13),
(14, '2021-01-09', 'active', 'residential', 1300, 1700, 14),
(15, '2020-06-30', 'active', 'commercial', 1250, 1600, 15),
(16, '2019-02-12', 'inactive', 'industrial', 1050, 1450, 16),
(17, '2022-07-07', 'active', 'residential', 950, 1350, 17),
(18, '2021-04-25', 'inactive', 'commercial', 1200, 1550, 18),
(19, '2020-10-18', 'active', 'industrial', 1150, 1500, 19),
(20, '2019-05-26', 'active', 'residential', 1000, 1300, 20),
(21, '2022-08-14', 'inactive', 'commercial', 1400, 1700, 21),
(22, '2021-07-09', 'active', 'industrial', 1100, 1450, 22),
(23, '2020-11-30', 'active', 'residential', 1250, 1550, 23),
(24, '2019-12-10', 'inactive', 'commercial', 1050, 1400, 24),
(25, '2022-05-21', 'active', 'industrial', 950, 1250, 25),
(26, '2021-08-03', 'active', 'residential', 1350, 1700, 26),
(27, '2020-12-14', 'inactive', 'commercial', 1200, 1500, 27),
(28, '2019-01-20', 'active', 'industrial', 1150, 1450, 28),
(29, '2022-09-30', 'active', 'residential', 1100, 1350, 29),
(30, '2021-10-22', 'inactive', 'commercial', 1300, 1650, 30);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `payment_date` date DEFAULT NULL,
  `payment_amount` decimal(10,0) DEFAULT NULL,
  `Bill_id` int(11) DEFAULT NULL,
  `Customer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `payment_date`, `payment_amount`, `Bill_id`, `Customer_id`) VALUES
(1, '2023-01-10', 121, 1, 1),
(2, '2023-02-15', 75, 2, 2),
(3, '2023-03-20', 100, 3, 3),
(4, '2023-04-25', 200, 4, 4),
(5, '2023-05-30', 151, 5, 5),
(6, '2023-06-05', 180, 6, 6),
(7, '2023-07-10', 96, 7, 7),
(8, '2023-08-15', 210, 8, 8),
(9, '2023-09-20', 86, 9, 9),
(10, '2023-10-25', 125, 10, 10),
(11, '2023-11-30', 140, 11, 11),
(12, '2023-12-05', 175, 12, 12),
(13, '2024-01-10', 221, 13, 13),
(14, '2024-02-15', 195, 14, 14),
(15, '2024-03-20', 105, 15, 15),
(16, '2024-04-25', 165, 16, 16),
(17, '2024-05-30', 136, 17, 17),
(18, '2024-06-05', 190, 18, 18),
(19, '2024-07-10', 161, 19, 19),
(20, '2024-08-15', 175, 20, 20),
(21, '2024-09-20', 131, 21, 21),
(22, '2024-10-25', 125, 22, 22),
(23, '2024-11-30', 145, 23, 23),
(24, '2024-12-05', 180, 24, 24),
(25, '2025-01-10', 201, 25, 25),
(26, '2025-02-15', 150, 26, 26),
(27, '2025-03-20', 115, 27, 27),
(28, '2025-04-25', 165, 28, 28),
(29, '2025-05-30', 131, 29, 29),
(30, '2025-06-05', 170, 30, 30);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD KEY `Customer_id` (`Customer_id`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`bill_id`),
  ADD KEY `Customer_id` (`Customer_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Customer_id`);

--
-- Indexes for table `meter`
--
ALTER TABLE `meter`
  ADD PRIMARY KEY (`meter_id`),
  ADD KEY `Customer_id` (`Customer_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `Customer_id` (`Customer_id`),
  ADD KEY `Bill_id` (`Bill_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`Customer_id`) REFERENCES `customer` (`Customer_id`);

--
-- Constraints for table `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `bill_ibfk_1` FOREIGN KEY (`Customer_id`) REFERENCES `customer` (`Customer_id`);

--
-- Constraints for table `meter`
--
ALTER TABLE `meter`
  ADD CONSTRAINT `meter_ibfk_1` FOREIGN KEY (`Customer_id`) REFERENCES `customer` (`Customer_id`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`Customer_id`) REFERENCES `customer` (`Customer_id`),
  ADD CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`Bill_id`) REFERENCES `bill` (`bill_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
