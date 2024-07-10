-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 10, 2024 at 07:54 AM
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
-- Database: `starmedica`
--

-- --------------------------------------------------------

--
-- Table structure for table `doctorhas_pharma_stores`
--

CREATE TABLE `doctorhas_pharma_stores` (
  `id` int(11) NOT NULL,
  `doctor_id` int(11) DEFAULT NULL,
  `pharma_store_id` int(11) DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `dob` datetime DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `degree` varchar(255) DEFAULT NULL,
  `license_no` varchar(255) DEFAULT NULL,
  `profile` varchar(255) DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `fname`, `lname`, `email`, `dob`, `gender`, `password`, `address`, `contact`, `degree`, `license_no`, `profile`, `deletedAt`, `createdAt`, `updatedAt`) VALUES
(1, ' John', ' Doe', 'john.doe@example.com', '1980-01-01 00:00:00', ' Male', '$2b$05$YTHMd8LVlG.768fREZ83ueVVEB8Vnu7y/NPt448TDCRZ8AU0hXpQu', ' 123 Main St, Anytown, USA', ' 1234567890', ' MD', ' A1234567', NULL, NULL, '2024-06-25 17:50:44', '2024-06-25 17:50:44'),
(2, ' John', ' Doe', 'john.doe1@example.com', '1980-01-01 00:00:00', ' Male', '$2b$05$HZaGSMfaXiv56qZDXzeeDOy3SADlnsjzKRXWFTuVw/m6m6M3mtMfq', ' 123 Main St, Anytown, USA', ' 1234567890', ' MD', ' A1234567', 'asad', NULL, '2024-06-25 18:15:00', '2024-06-25 18:15:00'),
(3, ' John', ' Doe', ' john.doe1@example.com', '1980-01-01 00:00:00', ' Male', '$2b$05$uJSaQQ2By/h1CsWZCSsVwuYBfMNDlUo9GcmHPjh5gkHKdfLu9Fyu6', ' 123 Main St, Anytown, USA', ' 1234567890', ' MD', ' A1234567', 'asad', NULL, '2024-06-28 16:24:28', '2024-06-28 16:24:28'),
(4, ' John', ' Doe', ' john.doe2@example.com', '1980-01-01 00:00:00', ' Male', '$2b$05$sUf/ZsKzuBUkEo8rdsHSv.KXl6bdKkHgdQlhGup5dxtHVRbE1SCr.', ' 123 Main St, Anytown, USA', ' 1234567890', ' MD', ' A1234567', 'asad', NULL, '2024-06-28 16:43:31', '2024-06-28 16:43:31'),
(5, ' John', ' Doe', ' john.doe3@example.com', '1980-01-01 00:00:00', ' Male', '$2b$05$EXesM0CnbsznfAHXYLImPOKGPP26Pe7rrsNv36Wvy40S1l3iGDzdu', ' 123 Main St, Anytown, USA', ' 1234567890', ' MD', ' A1234567', 'asad', NULL, '2024-06-28 16:48:50', '2024-06-28 16:48:50'),
(6, 'John', 'Doe', 'John.doe4@example.com', '1980-01-01 00:00:00', 'Male', '$2b$05$Y/Go.ehFHtlODC.55GH9keOskReN6Y2fUBO6xwmZnTXjN70Bvx9.q', '123 Main St, Anytown, USA', '1234567890', 'MD', 'A1234567', 'asad', NULL, '2024-06-28 16:50:48', '2024-06-28 16:50:48'),
(7, ' fname', ' lname', ' a@gmail.com', '2024-06-27 00:00:00', ' Male', '$2b$05$u0Di2xtfG2bYtrYn0tnkZurG7EwSUZdfVFSVUeTBJSzVtF9FyipXK', ' aa', ' 1234567890', ' abc', ' 123', ' aas', NULL, '2024-06-28 17:29:38', '2024-06-28 17:29:38'),
(8, ' John', ' Doe', ' john.doe5@example.com', '1980-01-01 00:00:00', ' Male', '$2b$05$ilPZcpcKkDWyOt2f6Y1Jeu0otODfKbpyRHi.g4YlPkH9dCvPL3YBW', ' 123 Main St, Anytown, USA', ' 1234567890', ' MD', ' A1234567', 'asad', NULL, '2024-06-29 07:24:26', '2024-06-29 07:24:26'),
(9, ' John', ' Doe', ' john.doe6@example.com', '1980-01-01 00:00:00', ' Male', '$2b$05$T1vTojdlChWm1IuFgiEOk.kMb6qP7169CkTbWWJGT4TvW3xJIrPye', ' 123 Main St, Anytown, USA', ' 1234567890', ' MD', ' A1234567', 'asad', NULL, '2024-06-29 07:41:53', '2024-06-29 07:41:53'),
(10, 'fname', 'lname', 'a1@gmail.com', '2024-02-07 00:00:00', 'male', '$2b$05$8Jc2YY6aVCthvNp.eclX3.zjM9oKahLS2tRJrP70GdRVrztbfwJIS', '123, asdf', '1234567890', 'degree', '123', NULL, NULL, '2024-07-02 17:41:23', '2024-07-02 17:41:23'),
(11, 'fname', 'lname', 'a12345@gmail.com', '2024-04-07 00:00:00', 'male', '$2b$05$ekxfw4rH.vUxP4DZUdkDUeoi.0mT3VWd7YeeyvM8qgkS0n7AtOJFG', 'a', '123456123', NULL, 'a', NULL, NULL, '2024-07-04 17:05:40', '2024-07-04 17:05:40'),
(12, 'fname', 'lname', 'a123456@gmail.com', '2024-04-07 00:00:00', 'male', '$2b$05$NsxWjfGcrRLGsXPaHo1O5e9f2tMVAUTiYZ0Ek1seIv.PryzyQmq7K', 'a', '123456123', NULL, '132', NULL, NULL, '2024-07-04 17:26:58', '2024-07-04 17:26:58'),
(13, 'f', 'l', 'a5678@gmail.com', '2024-06-07 00:00:00', 'male', '$2b$05$Pb6wdNnwLBeAWbDDYavy.OlycGzb0wo6ja7HjUVcYcAbYDSHNV7zC', '123, abc', '12331', 'd', '123', NULL, NULL, '2024-07-06 16:46:03', '2024-07-06 16:46:03'),
(14, 'f', 'l', 'a@g.c', '2024-07-07 00:00:00', 'male', '$2b$05$rHpGy7hwfsBg9VRBcgssZeBlL9/4PhQ/aPYnQhiOKZ93GSO3nKZne', 'a', '1234567890', 'd', 'l', NULL, NULL, '2024-07-07 15:42:26', '2024-07-07 15:42:26'),
(15, 'f', 'l', 'qa12@g.c', '2024-07-07 00:00:00', 'male', '$2b$05$joz8Y4.P1h3MWb5UL4UXTush1DxdTDIALy5cl/uwp0MygicNS7J3q', 'a', '1234567890', 'd', '1', NULL, NULL, '2024-07-07 17:06:03', '2024-07-07 17:06:03'),
(16, 'f', 'l', 'qa13@g.c', '2024-07-07 00:00:00', 'male', '$2b$05$.dbgQEBMFISOfedFbmayJut1L.bSAZ4DC9xsKzBYP/Y7G.SqHFy5.', 'a', '1234567890', 'a', '1', NULL, NULL, '2024-07-07 17:10:19', '2024-07-07 17:10:19');

-- --------------------------------------------------------

--
-- Table structure for table `doctors_has_departments`
--

CREATE TABLE `doctors_has_departments` (
  `id` int(11) NOT NULL,
  `doctor_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `doctor_departments`
--

CREATE TABLE `doctor_departments` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctor_departments`
--

INSERT INTO `doctor_departments` (`id`, `name`, `deletedAt`, `createdAt`, `updatedAt`) VALUES
(1, 'asd', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_sessions`
--

CREATE TABLE `doctor_sessions` (
  `id` int(11) NOT NULL,
  `doctor_id` int(11) DEFAULT NULL,
  `sessions` varchar(255) DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctor_sessions`
--

INSERT INTO `doctor_sessions` (`id`, `doctor_id`, `sessions`, `deletedAt`, `createdAt`, `updatedAt`) VALUES
(5, 9, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6OSwiaWF0IjoxNzE5NjQ2OTU2LCJleHAiOjE3MTk2NTA1NTZ9.RViKUKz1OZMgpYMawc62Asgutq8HDgePu_FYxdaQ_Mw', NULL, '2024-06-29 07:42:36', '2024-06-29 07:42:36'),
(6, 9, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6OSwiaWF0IjoxNzE5NjUwNzM1LCJleHAiOjE3MTk2NTQzMzV9.oYT1reWWXwoMHVAoEXFANcp9-pnhSDbZsGo-mlbdokk', NULL, '2024-06-29 08:45:35', '2024-06-29 08:45:35'),
(7, 3, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MywiaWF0IjoxNzE5ODUxNzk3LCJleHAiOjE3MTk4NTUzOTd9.ZbYZJztuhZtE3naq83YcVamqdVDY0w4QB54YnzkXpJ8', NULL, '2024-07-01 16:36:37', '2024-07-01 16:36:37'),
(8, 3, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MywiaWF0IjoxNzE5ODUyMDI4LCJleHAiOjE3MTk4NTU2Mjh9.im-DE3D9Jh46irY_PcJADSwZ3jGSluEsSu_mZVWMgt0', NULL, '2024-07-01 16:40:28', '2024-07-01 16:40:28'),
(9, 3, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MywiaWF0IjoxNzE5ODUyNjIwLCJleHAiOjE3MTk4NTYyMjB9.CDaGv1DHk1BD3waAkjobi51tENUVNyhr_9zHBFJiEz4', NULL, '2024-07-01 16:50:20', '2024-07-01 16:50:20'),
(10, 3, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MywiaWF0IjoxNzE5OTM3MzM1LCJleHAiOjE3MTk5NDA5MzV9.HcJA-pGj0-gTqDq-FX9n1LcWST-1mKe_h4K2TwzBrx4', NULL, '2024-07-02 16:22:15', '2024-07-02 16:22:15'),
(11, 3, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MywiaWF0IjoxNzE5OTM3MzY1LCJleHAiOjE3MTk5NDA5NjV9.iCInZV8or6A0AldptqFAf4YLI7p-jFMSqqwgwhi79w8', NULL, '2024-07-02 16:22:45', '2024-07-02 16:22:45'),
(12, 3, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MywiaWF0IjoxNzE5OTM3NDI4LCJleHAiOjE3MTk5NDEwMjh9.HEOEpSY5OdmUJb6szC09IQ1QrYJkGptoMlbjOZqLhDs', NULL, '2024-07-02 16:23:48', '2024-07-02 16:23:48'),
(13, 3, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MywiaWF0IjoxNzE5OTM3NzM3LCJleHAiOjE3MTk5NDEzMzd9.HjQHVgIK44GZFyDXMgyI834lXGAevHn6J92OYADoip8', NULL, '2024-07-02 16:28:57', '2024-07-02 16:28:57'),
(14, 3, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MywiaWF0IjoxNzE5OTM3NzQyLCJleHAiOjE3MTk5NDEzNDJ9._Dj16va6EcCelzSBkTPFiPk-xBpsKfgtdBvKemdZAmo', NULL, '2024-07-02 16:29:02', '2024-07-02 16:29:02'),
(15, 3, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MywiaWF0IjoxNzE5OTM3NzQ0LCJleHAiOjE3MTk5NDEzNDR9.Bwl1-RZgoN0EMblOHMnOUFeEMjBNZYFpPq-1zJmONns', NULL, '2024-07-02 16:29:04', '2024-07-02 16:29:04'),
(16, 3, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MywiaWF0IjoxNzE5OTM3NzQ2LCJleHAiOjE3MTk5NDEzNDZ9.u6mMqceNeDhOHgH37S9ySG9GXUfDnJloEYlY5zlNOZM', NULL, '2024-07-02 16:29:06', '2024-07-02 16:29:06'),
(17, 3, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MywiaWF0IjoxNzE5OTM3NzQ4LCJleHAiOjE3MTk5NDEzNDh9.AJR1L0RzEQUhdznLWx6yM-KlHnk9abeyHLCtWky1ftE', NULL, '2024-07-02 16:29:08', '2024-07-02 16:29:08'),
(18, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MiwiaWF0IjoxNzE5OTM3NzkxLCJleHAiOjE3MTk5NDEzOTF9.4EOcxesuQf-Dk1P--hboFyRalUyCBJZQ0kB18rj5-NM', NULL, '2024-07-02 16:29:51', '2024-07-02 16:29:51'),
(19, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MiwiaWF0IjoxNzE5OTQwMjc1LCJleHAiOjE3MTk5NDM4NzV9.jEJ3bCD64LfRtPo-vfEHnEYmAMOLsHR-8PTfcbVuJtY', NULL, '2024-07-02 17:11:15', '2024-07-02 17:11:15'),
(20, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MiwiaWF0IjoxNzE5OTQwNjEyLCJleHAiOjE3MTk5NDQyMTJ9.LgcYUw-EQ4NZ286vo6GsNtli2omcw2V11-BPgkUn7dw', NULL, '2024-07-02 17:16:52', '2024-07-02 17:16:52'),
(21, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MiwiaWF0IjoxNzE5OTQwNzE4LCJleHAiOjE3MTk5NDQzMTh9.SLa2LJP4F9msZOpqwVCNeeGAlpE8NT9GiE3PO3KKgNY', NULL, '2024-07-02 17:18:38', '2024-07-02 17:18:38'),
(22, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MiwiaWF0IjoxNzIwMDI4NjYyLCJleHAiOjE3MjAwMzIyNjJ9.buon31ZxHP2GxnH1-V3xP7vEHnZgsydMRqDAxQACad4', NULL, '2024-07-03 17:44:22', '2024-07-03 17:44:22'),
(23, 3, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MywiaWF0IjoxNzIwMjgzOTEyLCJleHAiOjE3MjAyODc1MTJ9.T2WWoRogXyR-no9fxoCxjgvB-d4c3RatbwPLPRhHYIs', NULL, '2024-07-06 16:38:32', '2024-07-06 16:38:32'),
(24, 3, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MywiaWF0IjoxNzIwMjg0MDU5LCJleHAiOjE3MjAyODc2NTl9.7hz_D-x2U6BD82qaH2YOaOZtikSoaSojV9wlybPb-mQ', NULL, '2024-07-06 16:40:59', '2024-07-06 16:40:59');

-- --------------------------------------------------------

--
-- Table structure for table `medicine_categories`
--

CREATE TABLE `medicine_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `medicine_category_subcategories`
--

CREATE TABLE `medicine_category_subcategories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `medicine_companies`
--

CREATE TABLE `medicine_companies` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `company_id` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `medicine_details`
--

CREATE TABLE `medicine_details` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `medicine_category_id` int(11) DEFAULT NULL,
  `medicine_subcategory_id` int(11) DEFAULT NULL,
  `pharmacy_distribution_id` int(11) DEFAULT NULL,
  `image` int(11) DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy_distribution_types`
--

CREATE TABLE `pharmacy_distribution_types` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy_owner_sessions`
--

CREATE TABLE `pharmacy_owner_sessions` (
  `id` int(11) NOT NULL,
  `pharmacy_owner_id` int(11) DEFAULT NULL,
  `sessions` varchar(255) DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pharmacy_owner_sessions`
--

INSERT INTO `pharmacy_owner_sessions` (`id`, `pharmacy_owner_id`, `sessions`, `deletedAt`, `createdAt`, `updatedAt`) VALUES
(1, NULL, NULL, NULL, '2024-07-06 17:18:04', '2024-07-06 17:18:04'),
(2, NULL, NULL, NULL, '2024-07-06 17:18:06', '2024-07-06 17:18:06'),
(3, NULL, NULL, NULL, '2024-07-06 17:18:07', '2024-07-06 17:18:07'),
(4, NULL, NULL, NULL, '2024-07-06 17:18:09', '2024-07-06 17:18:09'),
(5, NULL, NULL, NULL, '2024-07-06 17:26:21', '2024-07-06 17:26:21'),
(6, 1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiaWF0IjoxNzIwMjg2ODE2LCJleHAiOjE3MjAyOTA0MTZ9.5i3j2CTGeNZBLnvKFm6qDVdSB65nsZsW097PPglO5nM', NULL, '2024-07-06 17:26:56', '2024-07-06 17:26:56'),
(7, 1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiaWF0IjoxNzIwMzI5OTE5LCJleHAiOjE3MjAzMzM1MTl9.kIszJu8jc5C6HnApAm7BJ5f9KQMbwxCd-nd7iQY4ang', NULL, '2024-07-07 05:25:19', '2024-07-07 05:25:19'),
(8, 1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiaWF0IjoxNzIwMzI5OTMzLCJleHAiOjE3MjAzMzM1MzN9.nlCCOKZRB8l4haiLmcLHuWqGK3jNl6VmyL9ZZTK4CS8', NULL, '2024-07-07 05:25:33', '2024-07-07 05:25:33'),
(9, 1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiaWF0IjoxNzIwMzI5OTYzLCJleHAiOjE3MjAzMzM1NjN9.elKLHqbWepJ0eS_2yXSw_4w6EVPprz-B3mB8dl2mHSE', NULL, '2024-07-07 05:26:03', '2024-07-07 05:26:03'),
(10, 1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiaWF0IjoxNzIwMzMwMTIwLCJleHAiOjE3MjAzMzM3MjB9.SyXQjQ2e79Zc4FxbMMo2SfZh__qkpD2yoKZyPzbU6XU', NULL, '2024-07-07 05:28:40', '2024-07-07 05:28:40'),
(11, 1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiaWF0IjoxNzIwMzMwMTM4LCJleHAiOjE3MjAzMzM3Mzh9.E_BnMw6eSzi0P_2twfw-_kHpu6tWtzdFiWzkwBlU7DI', NULL, '2024-07-07 05:28:58', '2024-07-07 05:28:58'),
(12, 1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiaWF0IjoxNzIwMzMwMzI4LCJleHAiOjE3MjAzMzM5Mjh9.Y_17OrSzFmf6hBOPf0pHvjmN9mIjjFl6JiDXT4EvmWs', NULL, '2024-07-07 05:32:08', '2024-07-07 05:32:08'),
(13, 1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiaWF0IjoxNzIwMzMwNDU4LCJleHAiOjE3MjAzMzQwNTh9.oHkoB-xPGrlDUIm_M7FmaGI0y0s49zRpc635VFFGuKI', NULL, '2024-07-07 05:34:18', '2024-07-07 05:34:18'),
(14, 1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiaWF0IjoxNzIwMzcyNTQ5LCJleHAiOjE3MjAzNzYxNDl9.dwXSL2FM-sGjmxmpWCsKAdrwi-fvxh4S0LdENY5SVc4', NULL, '2024-07-07 17:15:49', '2024-07-07 17:15:49');

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy_stores`
--

CREATE TABLE `pharmacy_stores` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `license_no` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy_store_owners`
--

CREATE TABLE `pharmacy_store_owners` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `dob` datetime DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `profile` varchar(255) DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pharmacy_store_owners`
--

INSERT INTO `pharmacy_store_owners` (`id`, `fname`, `lname`, `email`, `dob`, `gender`, `password`, `address`, `contact`, `profile`, `deletedAt`, `createdAt`, `updatedAt`) VALUES
(1, 'fname', 'lname', 'a@gmail.com', '2024-06-27 00:00:00', NULL, '$2b$05$XzRPtxZOMvytj5IQLiQyL.O0oTX8DsqUUJbA8Hluby64EvXmsSWP.', NULL, NULL, NULL, NULL, '2024-06-28 17:41:26', '2024-06-28 17:41:26'),
(2, 'f', 'l', 'patelaryankumar123@gmail.com', '2024-06-28 00:00:00', NULL, '$2b$05$Z7RR39azjvLdg69XxVB9Ce8Ymy.10NCRt3TKQWly8LMbjMQhkyXj.', NULL, NULL, NULL, NULL, '2024-06-28 17:42:56', '2024-06-28 17:42:56'),
(3, 'fname', 'lname', 'a11111@gmail.com', '2024-06-27 00:00:00', NULL, '$2b$05$oOOXVl2gMNMvJnFzwp8hUOR4al6CjuExMOpOpDHMwh7mbLFnMThO6', NULL, NULL, NULL, NULL, '2024-07-03 17:35:27', '2024-07-03 17:35:27'),
(4, 'fname1', 'lname1', 'a12345@gmail.com', '2024-04-07 00:00:00', NULL, '$2b$05$SHjmtzmZq7k4btlzmofYa.l./W1LZHUmzdbzeYrMc4c3Fj0mBqDVm', NULL, NULL, NULL, NULL, '2024-07-04 16:35:18', '2024-07-04 16:35:18'),
(5, 'fname', 'lname', 'a11121@gmail.com', '2024-06-27 00:00:00', NULL, '$2b$05$FbkHIQupXmmIL2hS9i/Cn.MV3pAiwyUxSnxRMkhfrcH1ZkQ5FTg.e', NULL, NULL, NULL, NULL, '2024-07-04 17:07:42', '2024-07-04 17:07:42'),
(6, 'fname', 'lname', 'a123123@gmail.com', '2024-04-07 00:00:00', NULL, '$2b$05$zwK5yWLm4p02ZnE10ByJtuUsZOhK9XwRejcBvab5.Doi7gDXF4Rou', NULL, NULL, NULL, NULL, '2024-07-04 17:38:11', '2024-07-04 17:38:11'),
(7, 'fname', 'lname', 'a1285@gmail.com', '2024-06-27 00:00:00', NULL, '$2b$05$7Tk0Ema/vqwIG0eaadWiHuhynsjH8NyjPuGQrvyG9tVbn3BKD522W', NULL, NULL, NULL, NULL, '2024-07-06 17:29:06', '2024-07-06 17:29:06'),
(8, 'fname', 'lname', 'patel123@gmail.com', '2024-07-07 00:00:00', NULL, '$2b$05$5UBm0tSCWSoypd4ricehQetEs/q6mtCRXKat6ykiXptqabRXTN0OO', NULL, NULL, NULL, NULL, '2024-07-07 06:10:29', '2024-07-07 06:10:29'),
(9, 'fname', 'lname', 'abcd@gmail.com', '2024-06-27 00:00:00', NULL, '$2b$05$eeZgDMUV7D6E2CS4MJVhQO7EpLAT9t3bYteRd/8ot4l7M4ozf9TLS', NULL, NULL, NULL, NULL, '2024-07-07 06:45:23', '2024-07-07 06:45:23'),
(10, 'fname', 'lname', 'abcd1@gmail.com', '2024-06-27 00:00:00', NULL, '$2b$05$o1Qr0.t.RMtq2xMilTncZecQsiKTa5iFxLJRaFvOsowI1o7lrhDPq', NULL, NULL, NULL, NULL, '2024-07-07 06:46:33', '2024-07-07 06:46:33'),
(11, 'fname', 'lname', 'abcd2@gmail.com', '2024-06-27 00:00:00', NULL, '$2b$05$CVM61jiWFnMzV1Xl1UrCH.ChReO4H/l9EIz6d5J4PKew88lawO5Sq', NULL, '1234567890', NULL, NULL, '2024-07-07 06:52:12', '2024-07-07 06:52:12'),
(12, 'a', 'b', 'a', '2024-07-07 00:00:00', NULL, '$2b$05$Cya9JG31wPJ7RYgvjDbeGOfC/XGat0JnmRgHCG0Z7c/R9emWpl70q', NULL, 'a', NULL, NULL, '2024-07-07 07:07:14', '2024-07-07 07:07:14'),
(13, 'f', 'l', 'abc121@g.c', '2024-07-07 00:00:00', NULL, '$2b$05$fFjOBFpvgBjqcYydj1szTu45uy4IzYUSQZhrzClzKie/4tTZTXTvC', NULL, '1234567890', NULL, NULL, '2024-07-07 07:19:49', '2024-07-07 07:19:49'),
(14, 'f', 'l', 'abc122@g.c', '2024-07-07 00:00:00', NULL, '$2b$05$NG8iR.HbbFAXQAiVuaKZe.NEvUTLjTc/.7lQ2h4Yh10wKCPlivcOW', NULL, '1234567890', NULL, NULL, '2024-07-07 07:23:53', '2024-07-07 07:23:53'),
(15, 'f', 'l', 'abc123@g.c', '2024-07-07 00:00:00', NULL, '$2b$05$eE/GFaVXkOGW.b9OmvNmJOhfRCWBS1.iBom0.bYUU5syZlSp/OTYC', NULL, '1234567890', NULL, NULL, '2024-07-07 07:26:14', '2024-07-07 07:26:14');

-- --------------------------------------------------------

--
-- Table structure for table `sequelizemeta`
--

CREATE TABLE `sequelizemeta` (
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('20240621173122-create-pharmacy-store-owner.js'),
('20240621173735-create-pharmacy-store.js'),
('20240621175341-create-doctor-departments.js'),
('20240621175549-create-doctors.js'),
('20240621180520-create-doctors-has-departments.js'),
('20240621181428-create-doctor-sessions.js'),
('20240621182240-create-pharmacy-owner-sessions.js'),
('20240622080251-create-pharmacy-distribution-types.js'),
('20240622080403-create-medicine-categories.js'),
('20240622080924-create-medicine-companies.js'),
('20240622081310-create-medicine-category-subcategories.js'),
('20240622081443-create-medicine-details.js'),
('20240629062237-create-doctorhas-pharma-stores.js');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctorhas_pharma_stores`
--
ALTER TABLE `doctorhas_pharma_stores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk12` (`doctor_id`),
  ADD KEY `fk13` (`pharma_store_id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors_has_departments`
--
ALTER TABLE `doctors_has_departments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk2` (`department_id`),
  ADD KEY `fk1` (`doctor_id`);

--
-- Indexes for table `doctor_departments`
--
ALTER TABLE `doctor_departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor_sessions`
--
ALTER TABLE `doctor_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctor_sessions_doctor_id_doctors_fk` (`doctor_id`);

--
-- Indexes for table `medicine_categories`
--
ALTER TABLE `medicine_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicine_category_subcategories`
--
ALTER TABLE `medicine_category_subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicine_companies`
--
ALTER TABLE `medicine_companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicine_details`
--
ALTER TABLE `medicine_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk6` (`company_id`),
  ADD KEY `fk7` (`medicine_category_id`),
  ADD KEY `fk8` (`medicine_subcategory_id`);

--
-- Indexes for table `pharmacy_distribution_types`
--
ALTER TABLE `pharmacy_distribution_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pharmacy_owner_sessions`
--
ALTER TABLE `pharmacy_owner_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk5` (`pharmacy_owner_id`);

--
-- Indexes for table `pharmacy_stores`
--
ALTER TABLE `pharmacy_stores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pharmacy_stores_owner_id_pharmacy_store_owners_fk` (`owner_id`);

--
-- Indexes for table `pharmacy_store_owners`
--
ALTER TABLE `pharmacy_store_owners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `doctorhas_pharma_stores`
--
ALTER TABLE `doctorhas_pharma_stores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `doctors_has_departments`
--
ALTER TABLE `doctors_has_departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `doctor_departments`
--
ALTER TABLE `doctor_departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `doctor_sessions`
--
ALTER TABLE `doctor_sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `medicine_categories`
--
ALTER TABLE `medicine_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `medicine_category_subcategories`
--
ALTER TABLE `medicine_category_subcategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `medicine_companies`
--
ALTER TABLE `medicine_companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `medicine_details`
--
ALTER TABLE `medicine_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pharmacy_distribution_types`
--
ALTER TABLE `pharmacy_distribution_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pharmacy_owner_sessions`
--
ALTER TABLE `pharmacy_owner_sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `pharmacy_stores`
--
ALTER TABLE `pharmacy_stores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pharmacy_store_owners`
--
ALTER TABLE `pharmacy_store_owners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `doctorhas_pharma_stores`
--
ALTER TABLE `doctorhas_pharma_stores`
  ADD CONSTRAINT `fk12` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk13` FOREIGN KEY (`pharma_store_id`) REFERENCES `pharmacy_stores` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `doctors_has_departments`
--
ALTER TABLE `doctors_has_departments`
  ADD CONSTRAINT `fk1` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk2` FOREIGN KEY (`department_id`) REFERENCES `doctor_departments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `doctor_sessions`
--
ALTER TABLE `doctor_sessions`
  ADD CONSTRAINT `doctor_sessions_doctor_id_doctors_fk` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `medicine_details`
--
ALTER TABLE `medicine_details`
  ADD CONSTRAINT `fk6` FOREIGN KEY (`company_id`) REFERENCES `medicine_companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk7` FOREIGN KEY (`medicine_category_id`) REFERENCES `medicine_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk8` FOREIGN KEY (`medicine_subcategory_id`) REFERENCES `medicine_category_subcategories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pharmacy_owner_sessions`
--
ALTER TABLE `pharmacy_owner_sessions`
  ADD CONSTRAINT `fk5` FOREIGN KEY (`pharmacy_owner_id`) REFERENCES `pharmacy_store_owners` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pharmacy_stores`
--
ALTER TABLE `pharmacy_stores`
  ADD CONSTRAINT `pharmacy_stores_owner_id_pharmacy_store_owners_fk` FOREIGN KEY (`owner_id`) REFERENCES `pharmacy_store_owners` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
