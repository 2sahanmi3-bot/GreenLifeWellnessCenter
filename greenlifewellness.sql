-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2025 at 08:15 PM
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
-- Database: `greenlifewellness`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `login_id` varchar(10) DEFAULT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `nic` varchar(20) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `profile_picture` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `login_id`, `full_name`, `email`, `phone`, `nic`, `address`, `password`, `created_at`, `profile_picture`) VALUES
(2, 'AD001', 'Super Admin', 'admin@greenlife.com', '07712345678', '991234567V', 'Colombo', '$2y$10$1AfJN9gwL9kSuvFS5xqWYu/y8pI3bnhdEnaOYtcFS0u.7zdNbZpg6', '2025-06-19 16:45:29', 'uploads/admin_686269b9d7571.png'),
(3, 'AD002', 'Vishvanath', 'maddumage19@gmail.com', '0776468899', '200750301020', '256/42, Hulangamuwa Road, Matale', '$2y$10$K/aUm3RFhONrmxfuFW/SM.0nGuOULfxrk.d5YpWr6lT.hAqIKGzPe', '2025-06-29 14:01:38', 'uploads/686147421cd54.png'),
(4, 'AD003', 'Sankanath', 'maddumage199@gmail.com', '0776468899', '200750301020', '256/42, Hulangamuwa Road, Matale', '$2y$10$YgWcPkKC8QtVkbSL5gjVfO/.q66NwAfpm8N1QjvWvlb7lghHsBneO', '2025-06-29 14:08:59', 'uploads/686148fba7747.png');

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` int(11) NOT NULL,
  `client_id` varchar(10) DEFAULT NULL,
  `therapist_id` varchar(10) DEFAULT NULL,
  `service_name` varchar(100) DEFAULT NULL,
  `appointment_date` date DEFAULT NULL,
  `appointment_time` time DEFAULT NULL,
  `status` varchar(20) DEFAULT 'Pending',
  `notes` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `client_id`, `therapist_id`, `service_name`, `appointment_date`, `appointment_time`, `status`, `notes`, `created_at`) VALUES
(8, 'CL001', 'TH003', 'Ayurvedic Massage', '2025-07-12', '10:31:00', 'Confirmed', NULL, '2025-06-29 18:01:28'),
(10, '0', '0', 'yoga', '2025-06-28', '08:00:00', 'Pending', NULL, '2025-06-30 02:30:10'),
(11, '0', '0', NULL, NULL, NULL, 'Pending', NULL, '2025-06-30 02:35:34'),
(15, 'CL001', 'TH003', 'Spa & Detox Therapy', '2025-07-12', '11:21:00', 'Pending', NULL, '2025-06-30 05:47:00'),
(16, 'CL006', 'TH003', 'Nutritional Consultation', '2025-06-14', '17:23:00', 'Cancelled', NULL, '2025-06-30 05:47:50'),
(17, 'CL006', 'TH003', 'Nutritional Consultation', '2025-06-14', '17:23:00', 'Cancelled', NULL, '2025-06-30 05:49:00'),
(18, 'CL006', 'TH003', 'Nutritional Consultation', '2025-06-14', '17:23:00', 'Cancelled', NULL, '2025-06-30 05:49:26'),
(19, 'CL001', 'TH001', ' Herbal Medicine', '2025-06-30', '16:00:00', 'Confirmed', NULL, '2025-06-30 10:49:15'),
(20, 'CL002', 'TH001', 'Nutritional Consultation', '2025-07-07', '16:00:00', 'Pending', NULL, '2025-06-30 10:50:16');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `login_id` varchar(20) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `profile_pic` varchar(255) DEFAULT 'default.png',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `profile_picture` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `login_id`, `full_name`, `email`, `password`, `phone`, `profile_pic`, `created_at`, `profile_picture`) VALUES
(1, 'CL001', 'Sahanmi', '2sahanmi3@gmail.com', '$2y$10$sZ5H2VXx/h2KWnrS3hNte.QUhTYOGuqKGOIHUgMTpWmNBb65Gx6Be', '0776468899', '../../uploads/images.jpg', '2025-06-16 12:37:02', '../uploads/profile_6860d66b28b05.png'),
(2, 'CL002', 'Hiranya', 'spotifydp441@gmail.com', '$2y$10$hXsuXUQXDKvtjiuKC/uRf.SdlrNAJDbh1N9Ue8/RT54eVj3/F0.gW', '0776468899', 'default.png', '2025-06-16 12:40:55', '../uploads/profile_6861071e2e670.png'),
(6, 'CL006', 'Jananath', 'jananath@gmail.com', '$2y$10$MQnWONCyHUMo9H6mJBWcjus5Cs.qzzF7nPtsgX7Rljhp46vYZf/xa', '0776468899', 'default.png', '2025-06-29 03:12:46', '../uploads/profile_6861088b9fdbe.jpg'),
(7, 'CL007', 'Vishvanath', 'Marketing@engineerinc.io', '$2y$10$p2tR4rDN5bNC6Vg/IRMGeu7ZrGz0BXgRBw77vDsU6uhmT0aYIYwmi', '0776468899', 'default.png', '2025-06-29 18:27:39', NULL),
(8, 'CL008', 'Methmina', 'methmina@engineerinc.io', '', '07712345678', 'default.png', '2025-06-30 13:35:17', NULL),
(9, 'CL009', 'Helarisi', 'maddumage3@gmail.com', '$2y$10$nGTqk4.FXquMo1be9Mq3PuTklWGUOPK/zJBndjKhvMRKQ8h4y8tji', '07712345678', 'default.png', '2025-06-30 13:42:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `message`, `created_at`) VALUES
(1, 'Sahanmi', '2sahanmi3@gmail.com', 'hey', '2025-06-19 11:13:02'),
(2, 'Sahanmi', '2sahanmi3@gmail.com', 'hi\r\n', '2025-06-28 19:33:44');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `sender_id` varchar(20) NOT NULL,
  `receiver_id` varchar(20) NOT NULL,
  `message` text DEFAULT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `timestamp` datetime DEFAULT current_timestamp(),
  `read_status` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `service_name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `duration` varchar(50) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `service_name`, `description`, `duration`, `price`) VALUES
(1, 'Ayurvedic Massage', 'Relaxing full-body massage with herbal oils.', '60 min', 3500.00),
(2, 'Yoga Therapy', 'Personalized yoga session with breathing guidance.', '45 min', 2500.00),
(3, 'Nutritional Consultation', 'One-on-one diet and nutrition guidance.', '30 min', 2000.00),
(4, 'Physiotherapy', 'Therapeutic session with exercises and techniques.', '50 min', 3000.00),
(6, ' Spa & Detox Therapy', 'Gentle cleansing treatments to rejuvenate your skin, body, and mind.', '60 min', 3200.00),
(7, ' Sleep Therapy', 'Personalized techniques and routines to improve sleep quality and restore energy.', '45 min', 2800.00),
(8, ' Herbal Medicine', 'Natural remedies using traditional herbs to support holistic healing.', '50 min', 3000.00);

-- --------------------------------------------------------

--
-- Table structure for table `therapists`
--

CREATE TABLE `therapists` (
  `id` int(11) NOT NULL,
  `login_id` varchar(10) DEFAULT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `nic` varchar(20) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `profile_picture` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `therapists`
--

INSERT INTO `therapists` (`id`, `login_id`, `full_name`, `email`, `phone`, `nic`, `address`, `profile_picture`, `password`, `created_at`) VALUES
(2, 'TH001', 'Sahanmi', '2sahanmi3@gmail.com', '0776468899', '200750301020', '256/42, Hulangamuwa Road, Matale', 'uploads/profile_68616fd1e2862.png', '$2y$10$tKf1bh8C364QyRhf8LvJDuXfBDV0ztV2fuaXLmNk6soRk8p.kACBu', '2025-06-28 09:59:12'),
(4, 'TH003', 'Elanoer', 'elanor@gmail.com', '0776468899', '200750301020', '256/42, Hulangamuwa Road, Matale', 'uploads/profile_68614dfcc3006.png', '$2y$10$B9yUc45lkJCbZ.9tnsAAm.mn396s/4HWKDoZ/XtSOBcdNi84hmHri', '2025-06-29 03:15:45'),
(6, 'TH004', 'Thanuja', 'maddumage93@gmail.com', '07712345678', '20008090909', 'Colombo', 'uploads/profile_68614e2a2e7ed.png', '$2y$10$UkQTbM2mRUUGCgLLP4chgursj5cyD4Jj9SFirjiJo5/JW1V/nbQxu', '2025-06-29 14:10:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login_id` (`login_id`);

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login_id` (`login_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `therapists`
--
ALTER TABLE `therapists`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login_id` (`login_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `therapists`
--
ALTER TABLE `therapists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
