-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 17, 2026 at 08:10 AM
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
-- Database: `event_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'pending',
  `event_date` date NOT NULL,
  `event_type` varchar(100) NOT NULL,
  `customer_name` varchar(150) NOT NULL,
  `customer_phone` varchar(20) NOT NULL,
  `start_time` varchar(50) DEFAULT NULL,
  `end_time` varchar(50) DEFAULT NULL,
  `transport` varchar(20) DEFAULT NULL,
  `payment_method` varchar(50) DEFAULT NULL,
  `advance_payment` decimal(10,2) DEFAULT NULL,
  `remaining_amount` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `event_id`, `vendor_id`, `status`, `event_date`, `event_type`, `customer_name`, `customer_phone`, `start_time`, `end_time`, `transport`, `payment_method`, `advance_payment`, `remaining_amount`) VALUES
(1, 22, 1, 'approved', '2026-08-11', 'Birthday', 'ali', '03789456123', NULL, NULL, NULL, NULL, NULL, NULL),
(4, 43, 1, 'pending', '2026-08-16', 'Mehfil-e-Naat', 'Rehan Maqsood Abbasi', '03123456789', NULL, NULL, NULL, NULL, NULL, NULL),
(5, 44, 1, 'pending', '2026-08-16', 'Walima', 'Rehan Maqsood Abbasi', '03123456789', NULL, NULL, NULL, NULL, NULL, NULL),
(6, 47, 1, 'pending', '2026-08-14', 'Wedding', 'Rehan Maqsood Abbasi', '03123456789', NULL, NULL, NULL, NULL, NULL, NULL),
(7, 48, 1, 'pending', '2026-08-16', 'Birthday', 'Rehan Maqsood Abbasi', '03123456789', NULL, NULL, NULL, NULL, NULL, NULL),
(8, 49, 1, 'approved', '2026-08-16', 'Other', 'Usman Khalid', '03123456789', NULL, NULL, NULL, NULL, NULL, NULL),
(9, 50, 1, 'pending', '2026-08-17', 'Wedding', 'Usman Khalid', '03123456789', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `booking1`
--

CREATE TABLE `booking1` (
  `id` int(11) NOT NULL,
  `event_id` int(11) DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `status` varchar(50) DEFAULT 'pending',
  `event_date` date DEFAULT NULL,
  `event_type` varchar(100) DEFAULT NULL,
  `customer_name` varchar(100) DEFAULT NULL,
  `customer_phone` varchar(20) DEFAULT NULL,
  `start_time` varchar(50) DEFAULT NULL,
  `end_time` varchar(50) DEFAULT NULL,
  `transport` varchar(20) DEFAULT NULL,
  `payment_method` varchar(50) DEFAULT NULL,
  `advance_payment` decimal(10,2) DEFAULT NULL,
  `remaining_amount` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking1`
--

INSERT INTO `booking1` (`id`, `event_id`, `vendor_id`, `status`, `event_date`, `event_type`, `customer_name`, `customer_phone`, `start_time`, `end_time`, `transport`, `payment_method`, `advance_payment`, `remaining_amount`) VALUES
(16, 38, 1, 'approved', '2026-08-12', 'Wedding', 'Ahmed', '03123456789', '13:00', '15:00', 'Yes', NULL, NULL, NULL),
(17, 45, 1, 'pending', '2026-08-16', 'Birthday', 'Rehan Maqsood Abbasi', '03123456789', '14:00', '17:00', 'Yes', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `booking2`
--

CREATE TABLE `booking2` (
  `id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'pending',
  `service_type` varchar(50) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `customer_phone` varchar(20) NOT NULL,
  `email` varchar(150) DEFAULT NULL,
  `cnic` varchar(20) DEFAULT NULL,
  `event_type` varchar(100) NOT NULL,
  `event_date` date NOT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `guests` int(11) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `area` varchar(100) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `package_name` varchar(100) NOT NULL,
  `package_price` decimal(10,2) DEFAULT 0.00,
  `extra_price` decimal(10,2) DEFAULT 0.00,
  `vehicle` varchar(50) DEFAULT 'None',
  `vehicle_price` decimal(10,2) DEFAULT 0.00,
  `generator` varchar(10) DEFAULT 'No',
  `generator_price` decimal(10,2) DEFAULT 0.00,
  `grand_total` decimal(10,2) DEFAULT 0.00,
  `advance_payment` decimal(10,2) DEFAULT 0.00,
  `remaining_amount` decimal(10,2) DEFAULT 0.00,
  `payment_method` varchar(50) NOT NULL,
  `confirm_via` varchar(50) NOT NULL,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking2`
--

INSERT INTO `booking2` (`id`, `event_id`, `vendor_id`, `status`, `service_type`, `customer_name`, `customer_phone`, `email`, `cnic`, `event_type`, `event_date`, `start_time`, `end_time`, `guests`, `city`, `area`, `address`, `package_name`, `package_price`, `extra_price`, `vehicle`, `vehicle_price`, `generator`, `generator_price`, `grand_total`, `advance_payment`, `remaining_amount`, `payment_method`, `confirm_via`, `notes`, `created_at`) VALUES
(1, 26, 1, 'approved', 'Sound', 'Asim', '03741258963', 'example@gmail.com', '1234567894587', 'Corporate Event', '2026-08-11', '13:00:00', '15:00:00', 100, 'Rawalpindi', 'DHA', 'RWP DHA', 'Basic Package', 15000.00, 0.00, 'None', 0.00, 'No', 0.00, 15000.00, 10000.00, 5000.00, 'Cash', 'SMS', '', '2026-08-11 15:43:58'),
(13, 39, 1, 'rejected', 'Sound', 'Ahmed', '03741258467', 'ahmed123@gmail.com', '37412-1234567-1', 'Birthday', '2026-08-12', '13:00:00', '15:00:00', 50, 'Rawalpindi', 'DHA Phase 2', 'RWP DHA Phase 2', 'Standard Package', 25000.00, 8000.00, 'Suzuki Pickup', 3000.00, 'Yes', 4000.00, 40000.00, 10000.00, 30000.00, 'Cash', 'SMS', '', '2026-08-12 09:24:44'),
(14, 40, 1, 'approved', 'Lighting', 'Ahmed', '03456789087', 'ahmed123@gmail.com', '', 'Birthday', '2026-08-12', NULL, NULL, 0, '', '', '', 'Standard', 20000.00, 3000.00, 'Suzuki Pickup', 3000.00, 'Yes', 4000.00, 30000.00, 10000.00, 20000.00, 'Cash', 'SMS', '', '2026-08-12 09:26:14'),
(15, 46, 1, 'pending', 'Sound', 'Rehan Maqsood Abbasi', '03123456789', 'rehan@gmail.com', '37412-1234567-1', 'Conference', '2026-08-11', '12:00:00', '17:00:00', 50, 'Islamabad', 'DHA  12', 'isb dha 12', 'Standard Package', 25000.00, 8000.00, 'None', 0.00, 'No', 0.00, 33000.00, 10000.00, 23000.00, 'Cash', 'SMS', '', '2026-08-16 06:30:23');

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `status` enum('new','read','replied') DEFAULT 'new',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_messages`
--

INSERT INTO `contact_messages` (`id`, `name`, `email`, `phone`, `subject`, `message`, `status`, `created_at`) VALUES
(1, 'Ahmed', 'example@gmail.com', '03123456789', 'Weddings', 'Great Decorations!', 'new', '2026-08-11 18:55:02');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `event_type` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `client_name` varchar(150) DEFAULT NULL,
  `client_phone` varchar(30) DEFAULT NULL,
  `client_email` varchar(150) DEFAULT NULL,
  `event_date` date DEFAULT NULL,
  `event_time` time DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `budget` decimal(10,2) DEFAULT NULL,
  `status` enum('pending','confirmed','completed','cancelled') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `user_id`, `title`, `event_type`, `description`, `client_name`, `client_phone`, `client_email`, `event_date`, `event_time`, `location`, `budget`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 'Mehendi', 'Wedding', '', 'Ali Khan', '03123456789', 'alikhan@gmail.com', '2026-07-23', '13:00:00', 'Pakistan', 50000.00, 'confirmed', '2026-08-15 09:22:44', '2026-08-15 15:10:39'),
(4, 3, 'Barat', 'Wedding', 'Important Event!', 'Hasnat', '03123456325', 'hasnat@gmail.com', '2026-08-01', '13:00:00', 'Pakistan', 100000.00, 'completed', '2026-08-15 09:22:44', '2026-08-15 15:13:06'),
(26, 1, 'Corporate Event', NULL, NULL, NULL, NULL, NULL, '2026-08-11', NULL, 'Rawalpindi, DHA', 15000.00, 'pending', '2026-08-15 09:22:44', '2026-08-15 09:22:44'),
(27, 1, 'Corporate Event', NULL, NULL, NULL, NULL, NULL, '2026-08-11', NULL, 'Rawalpindi, DHA', 15000.00, 'pending', '2026-08-15 09:22:44', '2026-08-15 09:22:44'),
(28, 1, 'Corporate Event', NULL, NULL, NULL, NULL, NULL, '2026-08-11', NULL, 'Rawalpindi, DHA', 15000.00, 'pending', '2026-08-15 09:22:44', '2026-08-15 09:22:44'),
(29, 1, 'Corporate Event', NULL, NULL, NULL, NULL, NULL, '2026-08-11', NULL, 'Rawalpindi, DHA', 15000.00, 'pending', '2026-08-15 09:22:44', '2026-08-15 09:22:44'),
(30, 1, 'Wedding', NULL, NULL, NULL, NULL, NULL, '2026-08-11', NULL, 'Islamabad, DHA  1', 34000.00, 'pending', '2026-08-15 09:22:44', '2026-08-15 09:22:44'),
(31, 1, 'Wedding', NULL, NULL, NULL, NULL, NULL, '2026-08-11', NULL, 'Islamabad, DHA  1', 34000.00, 'pending', '2026-08-15 09:22:44', '2026-08-15 09:22:44'),
(32, 1, 'Wedding', NULL, NULL, NULL, NULL, NULL, '2026-08-11', NULL, 'Islamabad, DHA  1', 34000.00, 'pending', '2026-08-15 09:22:44', '2026-08-15 09:22:44'),
(33, 1, 'Wedding', NULL, NULL, NULL, NULL, NULL, '2026-08-11', NULL, 'Islamabad, DHA  1', 34000.00, 'pending', '2026-08-15 09:22:44', '2026-08-15 09:22:44'),
(36, 1, 'Mehndi', NULL, NULL, NULL, NULL, NULL, '2026-08-11', NULL, 'Rawalpindi, DHA', 15000.00, 'pending', '2026-08-15 09:22:44', '2026-08-15 09:22:44'),
(37, 1, 'Wedding', '', '', '', '', '', '2026-08-11', NULL, '', 20000.00, 'cancelled', '2026-08-15 09:22:44', '2026-08-15 15:13:23'),
(39, 2, 'Birthday', NULL, NULL, NULL, NULL, NULL, '2026-08-12', NULL, 'Rawalpindi, DHA Phase 2', 40000.00, 'pending', '2026-08-15 09:22:44', '2026-08-15 09:22:44'),
(40, 2, 'Birthday', NULL, NULL, NULL, NULL, NULL, '2026-08-12', NULL, '', 30000.00, 'pending', '2026-08-15 09:22:44', '2026-08-15 09:22:44'),
(42, 1, 'Mehfil-e-Naat', NULL, NULL, NULL, NULL, NULL, '2026-08-16', NULL, 'Not provided', 0.00, 'pending', '2026-08-16 05:08:22', '2026-08-16 05:08:22'),
(43, 1, 'Mehfil-e-Naat', NULL, NULL, NULL, NULL, NULL, '2026-08-16', NULL, 'Not provided', 0.00, 'pending', '2026-08-16 05:53:20', '2026-08-16 05:53:20'),
(44, 4, 'Walima', 'Walima', NULL, 'Rehan Maqsood Abbasi', '03123456789', NULL, '2026-08-16', NULL, 'Not provided', 0.00, 'pending', '2026-08-16 06:26:25', '2026-08-16 06:26:25'),
(45, 4, 'Birthday', NULL, NULL, NULL, NULL, NULL, '2026-08-16', NULL, 'Murree', 0.00, 'pending', '2026-08-16 06:28:28', '2026-08-16 06:28:28'),
(46, 4, 'Conference', NULL, NULL, NULL, NULL, NULL, '2026-08-11', NULL, 'Islamabad, DHA  12', 33000.00, 'pending', '2026-08-16 06:30:23', '2026-08-16 06:30:23'),
(47, 4, 'Wedding', 'Wedding', NULL, 'Rehan Maqsood Abbasi', '03123456789', NULL, '2026-08-14', NULL, 'Not provided', 0.00, 'pending', '2026-08-16 06:34:26', '2026-08-16 06:34:26'),
(48, 4, 'Birthday', 'Birthday', NULL, 'Rehan Maqsood Abbasi', '03123456789', NULL, '2026-08-16', NULL, 'Not provided', 0.00, 'pending', '2026-08-16 07:22:58', '2026-08-16 07:22:58'),
(49, 5, 'Other', 'Other', '', 'Usman Khalid', '03123456789', 'usmankhalid123@gmail.com', '2026-08-16', '13:00:00', 'Rawalpindi', 72000.00, 'confirmed', '2026-08-16 12:37:09', '2026-08-16 12:41:06'),
(50, 5, 'Wedding', 'Wedding', NULL, 'Usman Khalid', '03123456789', NULL, '2026-08-17', NULL, 'Not provided', 0.00, 'pending', '2026-08-16 19:15:17', '2026-08-16 19:15:17');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `event_type` varchar(100) NOT NULL,
  `rating` tinyint(3) UNSIGNED NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `event_type`, `rating`, `message`, `created_at`) VALUES
(1, 'Ahmed', 'Wedding', 5, 'Best', '2026-08-11 18:16:35'),
(2, 'Rehan Maqsood Abbasi', 'Wedding', 5, 'Good Services', '2026-08-16 07:46:01');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `booking_id` int(10) UNSIGNED DEFAULT NULL,
  `customer_phone` varchar(30) DEFAULT NULL,
  `customer_email` varchar(150) DEFAULT NULL,
  `booking_total` decimal(12,2) NOT NULL DEFAULT 0.00,
  `vehicle_price` decimal(12,2) NOT NULL DEFAULT 0.00,
  `final_total` decimal(12,2) NOT NULL DEFAULT 0.00,
  `advance_amount` decimal(12,2) NOT NULL DEFAULT 0.00,
  `remaining_amount` decimal(12,2) NOT NULL DEFAULT 0.00,
  `payment_method` varchar(50) NOT NULL,
  `contact_method` varchar(50) NOT NULL,
  `transaction_id` varchar(150) DEFAULT NULL,
  `payment_status` varchar(30) NOT NULL DEFAULT 'pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `booking_id`, `customer_phone`, `customer_email`, `booking_total`, `vehicle_price`, `final_total`, `advance_amount`, `remaining_amount`, `payment_method`, `contact_method`, `transaction_id`, `payment_status`, `created_at`) VALUES
(1, NULL, '03123456789', 'rehan@gmail.com', 23700.00, 0.00, 23700.00, 10000.00, 13700.00, 'Cash', 'SMS', NULL, 'pending', '2026-08-16 07:28:55'),
(2, NULL, '03123456789', 'usmankhalid123@gmail.com', 70950.00, 0.00, 70950.00, 50000.00, 20950.00, 'Cash', 'SMS', NULL, 'pending', '2026-08-16 12:37:39'),
(3, NULL, '03123456789', 'usmankhalid123@gmail.com', 10000.00, 0.00, 10000.00, 5000.00, 5000.00, 'Cash', 'SMS', NULL, 'pending', '2026-08-16 19:15:27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `cnic` varchar(20) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('user','admin') NOT NULL DEFAULT 'user',
  `status` enum('pending','approved','rejected','inactive') NOT NULL DEFAULT 'approved',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `email`, `phone`, `cnic`, `password`, `role`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Ahmed', 'ahmed123@gmail.com', '03741258963', '37412-1234567-1', '$2y$10$O2qhZW4OBQldqqiIEKtbLOt1UbV4/f4Gs/gHeypGQZ021A0dj2yiW', 'user', 'approved', '2026-08-12 06:36:09', '2026-08-12 09:09:54'),
(3, 'Hassan Tent Service Admin', 'admin@gmail.com', '03001234567', '37405-1234567-1', '$2y$10$uf.EN4u7wkJgTsUhWo1UdORTm9GchfHsKW2ge/DUWVNWP1mGBZPdi', 'admin', '', '2026-08-12 16:59:52', '2026-08-12 16:59:52'),
(4, 'Rehan Maqsood Abbasi', 'rehan@gmail.com', '03123456789', '37412-1234567-1', '$2y$10$TwwaAs/faX.4OIUHdz6alOOGh0akEk8imYxpgeJwOFA7Eehid85Va', 'user', 'approved', '2026-08-15 10:00:11', '2026-08-16 05:52:10'),
(5, 'Usman Khalid', 'usmankhalid123@gmail.com', '03123456789', '37412-1234567-1', '$2y$10$f0HiHUApJvuSuuDd9.MVMepwXHrr/bA7DSvx9a9e1h/c9P9mdO.cK', 'user', 'approved', '2026-08-16 12:31:25', '2026-08-16 12:31:25');

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(150) NOT NULL,
  `service_type` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `price` decimal(12,2) NOT NULL DEFAULT 0.00,
  `status` enum('pending','approved','rejected','inactive') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`id`, `name`, `service_type`, `description`, `phone`, `email`, `price`, `status`, `created_at`) VALUES
(1, 'Hassan Tent Service', 'Tent', 'Wedding and Event Tent Services', '03001234567', 'hassan@example.com', 25000.00, 'approved', '2026-08-14 10:14:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking1`
--
ALTER TABLE `booking1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking2`
--
ALTER TABLE `booking2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_booking_id` (`booking_id`),
  ADD KEY `idx_transaction_id` (`transaction_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_email` (`email`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_service_type` (`service_type`),
  ADD KEY `idx_status` (`status`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `booking1`
--
ALTER TABLE `booking1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `booking2`
--
ALTER TABLE `booking2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
