-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:5222
-- Generation Time: Oct 21, 2024 at 12:30 PM
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
-- Database: `rental`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `id` int(11) NOT NULL,
  `BookingNumber` bigint(12) DEFAULT NULL,
  `userEmail` varchar(100) DEFAULT NULL,
  `VehicleId` int(11) DEFAULT NULL,
  `FromDate` varchar(20) DEFAULT NULL,
  `ToDate` varchar(20) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `LastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblbrands`
--

CREATE TABLE `tblbrands` (
  `id` int(11) NOT NULL,
  `BrandName` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbrands`
--

INSERT INTO `tblbrands` (`id`, `BrandName`, `CreationDate`, `UpdationDate`) VALUES
(1, 'Mahindra', '2024-10-21 07:07:05', NULL),
(2, 'Hyundai', '2024-10-21 07:08:13', NULL),
(3, 'Ford', '2024-10-21 07:08:45', NULL),
(4, 'Toyota', '2024-10-21 07:09:09', NULL),
(5, 'Maruti', '2024-10-21 07:08:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext DEFAULT NULL,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscribers`
--

CREATE TABLE `tblsubscribers` (
  `id` int(11) NOT NULL,
  `SubscriberEmail` varchar(120) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbltestimonial`
--

CREATE TABLE `tbltestimonial` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `Testimonial` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblvehicles`
--

CREATE TABLE `tblvehicles` (
  `id` int(11) NOT NULL,
  `VehiclesTitle` varchar(150) DEFAULT NULL,
  `VehiclesBrand` int(11) DEFAULT NULL,
  `VehiclesOverview` longtext DEFAULT NULL,
  `PricePerDay` int(11) DEFAULT NULL,
  `FuelType` varchar(100) DEFAULT NULL,
  `ModelYear` int(6) DEFAULT NULL,
  `SeatingCapacity` int(11) DEFAULT NULL,
  `Vimage1` varchar(120) DEFAULT NULL,
  `Vimage2` varchar(120) DEFAULT NULL,
  `Vimage3` varchar(120) DEFAULT NULL,
  `Vimage4` varchar(120) DEFAULT NULL,
  `Vimage5` varchar(120) DEFAULT NULL,
  `AirConditioner` int(11) DEFAULT NULL,
  `PowerDoorLocks` int(11) DEFAULT NULL,
  `AntiLockBrakingSystem` int(11) DEFAULT NULL,
  `BrakeAssist` int(11) DEFAULT NULL,
  `PowerSteering` int(11) DEFAULT NULL,
  `DriverAirbag` int(11) DEFAULT NULL,
  `PassengerAirbag` int(11) DEFAULT NULL,
  `PowerWindows` int(11) DEFAULT NULL,
  `CDPlayer` int(11) DEFAULT NULL,
  `CentralLocking` int(11) DEFAULT NULL,
  `CrashSensor` int(11) DEFAULT NULL,
  `LeatherSeats` int(11) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblvehicles`
--

INSERT INTO `tblvehicles` (`id`, `VehiclesTitle`, `VehiclesBrand`, `VehiclesOverview`, `PricePerDay`, `FuelType`, `ModelYear`, `SeatingCapacity`, `Vimage1`, `Vimage2`, `Vimage3`, `Vimage4`, `Vimage5`, `AirConditioner`, `PowerDoorLocks`, `AntiLockBrakingSystem`, `BrakeAssist`, `PowerSteering`, `DriverAirbag`, `PassengerAirbag`, `PowerWindows`, `CDPlayer`, `CentralLocking`, `CrashSensor`, `LeatherSeats`, `RegDate`, `UpdationDate`) VALUES
(10, 'Mahindra Scorpio', 1, 'Mahindra Scorpio Classic S11', 3000, 'Diesel', 2023, 7, 'C:\\xampp\\htdocs\\TYBCA_PROJECT\\Car images\\Scorpio\\main image.jpg', 'C:\\xampp\\htdocs\\TYBCA_PROJECT\\Car images\\Scorpio\\main image.jpg', 'C:\\xampp\\htdocs\\TYBCA_PROJECT\\Car images\\Scorpio.jpg', 'C:\\xampp\\htdocs\\TYBCA_PROJECT\\Car images\\Scorpio.jpg', 'C:\\xampp\\htdocs\\TYBCA_PROJECT\\Car images\\Scorpio.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2024-10-21 04:38:19', NULL),
(12, 'Hyundai Creta', 2, 'Hyundai Creta', 2500, 'Diesel + Cng', 2022, 5, 'C:\\xampp\\htdocs\\TYBCA_PROJECT\\Car images\\Creta\\main.jpg', 'C:\\xampp\\htdocs\\TYBCA_PROJECT\\Car images\\Creta.jpg', 'C:\\xampp\\htdocs\\TYBCA_PROJECT\\Car images\\Creta.jpg', 'C:\\xampp\\htdocs\\TYBCA_PROJECT\\Car images\\Creta.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-21 06:08:03', NULL),
(13, 'Ford Endeavour', 3, 'Ford Endeavour 4WD', 3500, 'Diesel', 2020, 7, 'C:\\xampp\\htdocs\\TYBCA_PROJECT\\Car images\\Endeavour\\main image.jpg', 'C:\\xampp\\htdocs\\TYBCA_PROJECT\\Car images\\Endeavour.jpg', 'C:\\xampp\\htdocs\\TYBCA_PROJECT\\Car images\\Endeavour.jpg', 'C:\\xampp\\htdocs\\TYBCA_PROJECT\\Car images\\Endeavour.jpg', 'C:\\xampp\\htdocs\\TYBCA_PROJECT\\Car images\\Endeavour.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, '2024-10-21 06:11:51', NULL),
(14, 'Toyota Innova', 4, 'Toyota Innova Crysta', 3500, 'Diesel', 2022, 7, 'C:\\xampp\\htdocs\\TYBCA_PROJECT\\Car images\\Innova.jpg', 'C:\\xampp\\htdocs\\TYBCA_PROJECT\\Car images\\Innova\\New folder.jpg\r\n', 'c:\\xampp\\htdocs\\TYBCA_PROJECT\\Car images\\Innova.jpg', 'C:\\xampp\\htdocs\\TYBCA_PROJECT\\Car images\\Innova.jpg', 'C:\\xampp\\htdocs\\TYBCA_PROJECT\\Car images\\Innova.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, '2024-10-21 06:14:01', NULL),
(15, 'Maruti Swift', 5, 'Maruti Suziki Swift', 1500, 'Petrol + Cng', 2024, 5, 'C:\\xampp\\htdocs\\TYBCA_PROJECT\\Car images\\Swift.jpg', 'C:\\xampp\\htdocs\\TYBCA_PROJECT\\Car images\\Swift.jpg', 'C:\\xampp\\htdocs\\TYBCA_PROJECT\\Car images\\Swift.jpg', 'C:\\xampp\\htdocs\\TYBCA_PROJECT\\Car images\\Swift.jpg', NULL, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, '2024-10-21 06:18:49', NULL),
(16, 'Mahindra Thar', 1, 'Mahindra Thar 4*4', 3000, 'Petrol', 2022, 4, 'C:\\xampp\\htdocs\\TYBCA_PROJECT\\Car images\\Thar.jpg', 'C:\\xampp\\htdocs\\TYBCA_PROJECT\\Car images\\Thar.jpg', 'C:\\xampp\\htdocs\\TYBCA_PROJECT\\Car images\\Thar.jpg', 'C:\\xampp\\htdocs\\TYBCA_PROJECT\\Car images\\Thar.jpg', NULL, 1, 1, 1, 0, 1, 1, 1, 1, 0, 1, 1, 1, '2024-10-21 06:22:34', NULL),
(17, 'Hyundai Verana', 2, 'Hyundai Verana', 2000, 'Petrol', 2023, 5, 'C:\\xampp\\htdocs\\TYBCA_PROJECT\\Car images\\verna\\main.jpg', 'C:\\xampp\\htdocs\\TYBCA_PROJECT\\Car images\\verna.jpg', 'C:\\xampp\\htdocs\\TYBCA_PROJECT\\Car images\\verna.jpg', 'C:\\xampp\\htdocs\\TYBCA_PROJECT\\Car images\\verna.jpg', 'C:\\xampp\\htdocs\\TYBCA_PROJECT\\Car images\\verna.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, '2024-10-21 06:25:29', NULL),
(18, 'Volkswagen Virtus', 6, 'Volkswagen Virtus', 2000, 'Petrol', 2022, 5, 'C:\\xampp\\htdocs\\TYBCA_PROJECT\\Car images\\Virtus.jpg', 'C:\\xampp\\htdocs\\TYBCA_PROJECT\\Car images\\Virtus.jpg', 'C:\\xampp\\htdocs\\TYBCA_PROJECT\\Car images\\Virtus.jpg', 'C:\\xampp\\htdocs\\TYBCA_PROJECT\\Car images\\Virtus.jpg', NULL, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, '2024-10-21 07:00:36', NULL),
(19, 'Maruti WagonR', 5, 'Maruti Suzuki WagonR', 1000, 'Petrol + Cng', 2022, 5, 'C:\\xampp\\htdocs\\TYBCA_PROJECT\\Car images\\WagonR.jpg', 'C:\\xampp\\htdocs\\TYBCA_PROJECT\\Car images\\WagonR.jpg', 'C:\\xampp\\htdocs\\TYBCA_PROJECT\\Car images\\WagonR.jpg', NULL, NULL, 1, 0, 0, 0, 1, 1, 1, 0, 0, 1, 0, 1, '2024-10-21 07:03:23', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbrands`
--
ALTER TABLE `tblbrands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`);

--
-- Indexes for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblbrands`
--
ALTER TABLE `tblbrands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
