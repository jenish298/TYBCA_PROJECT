-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:5222
-- Generation Time: Oct 21, 2024 at 03:32 PM
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
(1, 'Mahindra Scorpio', 1, 'Mahindra Scorpio Classic S11', 3000, 'Diesel', 2023, 7, 's1.jpg', 's3.jpg', 's4.jpg', 's2.jpg', 's5.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2024-10-21 04:38:19', NULL),
(2, 'Hyundai Creta', 2, 'Hyundai Creta', 2500, 'Diesel + Cng', 2022, 5, 'c1.jpeg', 'c3.jpeg', 'c4.jpeg', 'c2.jpeg', NULL, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, '2024-10-21 06:08:03', NULL),
(3, 'Ford Endeavour', 3, 'Ford Endeavour 4WD', 3500, 'Diesel', 2020, 7, 'e1.jpg', 'e3.jpg', 'e2.jpg', 'e5.jpg', 'e4.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, '2024-10-21 06:11:51', NULL),
(4, 'Toyota Innova', 4, 'Toyota Innova Crysta', 3500, 'Diesel', 2022, 7, 'i1.jpeg', 'i3.jpg', 'i4.jpg', 'i2.jpeg', 'i5.jpeg', 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, '2024-10-21 06:14:01', NULL),
(5, 'Maruti Swift', 5, 'Maruti Suziki Swift', 1500, 'Petrol + Cng', 2024, 5, 's1.jpg', 's3.jpg', 's2.jpg', 's4.jpg', NULL, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, '2024-10-21 06:18:49', NULL),
(6, 'Mahindra Thar', 1, 'Mahindra Thar 4*4', 3000, 'Petrol', 2022, 4, 't1.jpeg', 't2.jpeg', 't3.jpeg', 't4.jpeg', NULL, 1, 1, 1, 0, 1, 1, 1, 1, 0, 1, 1, 1, '2024-10-21 06:22:34', NULL),
(7, 'Hyundai Verana', 2, 'Hyundai Verana', 2000, 'Petrol', 2023, 5, 'v1.jpg', 'v2.jpg', 'v3.jpg', 'v4.jpg', 'v5.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, '2024-10-21 06:25:29', NULL),
(8, 'Volkswagen Virtus', 6, 'Volkswagen Virtus', 2000, 'Petrol', 2022, 5, 'vi1.jpg', 'vi2.jpg', 'vi3.jpg', 'vi4.jpg', NULL, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, '2024-10-21 07:00:36', NULL),
(9, 'Maruti WagonR', 5, 'Maruti Suzuki WagonR', 1000, 'Petrol + Cng', 2022, 5, 'w1.jpeg', 'w2.jpeg', 'w3.jpeg', NULL, NULL, 1, 0, 0, 0, 1, 1, 1, 0, 0, 1, 0, 1, '2024-10-21 07:03:23', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
