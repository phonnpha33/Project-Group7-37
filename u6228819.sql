-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 28, 2022 at 09:14 AM
-- Server version: 8.0.27-0ubuntu0.20.04.1
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u6228819`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `name`, `created_at`, `updated_at`) VALUES
(1, 'ผัด', 'ข้าวผัดไข่', '2021-12-21 06:07:13', '2021-12-21 06:07:41'),
(3, 'ทอด', 'ไก่ทอด', '2021-12-22 12:30:48', '2021-12-22 12:30:48'),
(4, 'ต้ม', 'ต้มจืด', '2021-12-22 12:31:01', '2021-12-22 12:31:01');

-- --------------------------------------------------------

--
-- Table structure for table `content1`
--

CREATE TABLE `content1` (
  `content_id` int UNSIGNED NOT NULL,
  `contentname` varchar(255) NOT NULL,
  `detail` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_08_17_093251_create_products_table', 1),
(5, '2021_08_26_111211_create_categories_table', 1),
(6, '2021_11_17_104621_content1', 1),
(7, '2021_12_22_174810_admin_field', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id_product` bigint UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `category_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id_product`, `name`, `description`, `image`, `price`, `category_id`, `created_at`, `updated_at`) VALUES
(2, 'ข้าวผัดไข่', 'ข้าวผัดไข่', 'MhrOTI9pyg.jpg', '40.00', 1, '2021-12-21 06:10:23', '2021-12-21 06:10:23'),
(7, 'ต้มจืด', 'sdaf', 'u9J1lVyVax.jpg', '40.00', 1, '2021-12-21 07:52:56', '2021-12-21 07:52:56'),
(8, 'ผัดซีอิ๊ว', 'ผัด', 'H2HM3OpwOE.jpg', '40.00', 1, '2021-12-22 10:35:45', '2022-01-15 11:17:27'),
(9, 'ผัดกระเพรา', 'ผัด', 'VvYI1GV3L5.jpg', '40.00', 1, '2021-12-22 10:36:41', '2022-01-15 11:17:49'),
(10, 'ผัดหอยลาย', 'ผัด', 'PM0CxtCbAv.jpg', '40.00', 2, '2021-12-22 10:37:47', '2022-01-15 11:18:11'),
(11, 'ไก่ทอด', 'ทอด', 'LuUZ33wyTA.jpg', '35.00', 2, '2021-12-22 10:39:25', '2022-01-15 11:18:28'),
(12, 'หมูทอดพริกไทยดำ', 'ทอด', 'oiZk12MKS4.jpg', '45.00', 1, '2021-12-22 10:41:09', '2022-01-15 11:18:53'),
(13, 'ไข่เจียว', 'ทอด', 'b3fQ5S31KO.jpg', '35.00', 2, '2021-12-22 10:41:40', '2022-01-15 11:19:09'),
(17, 'ต้มยำกุ้ง', 'ต้ม', '0RG1rOf6aU.jpg', '60.00', 1, '2022-01-15 11:20:04', '2022-01-15 11:20:04'),
(18, 'ทอดมัน', 'ทอด', 'WnIOavJGB7.jpg', '40.00', 1, '2022-01-15 11:20:34', '2022-01-15 11:20:34'),
(19, 'แกงเขียวหวาน', 'ต้ม', 'BeLXOZBmr2.jpg', '50.00', 1, '2022-01-15 11:21:14', '2022-01-15 11:21:14'),
(20, 'ผัดผัก', 'ผัด', 'ZCF5ObzInw.jpg', '40.00', 1, '2022-01-15 11:22:00', '2022-01-15 11:22:00'),
(21, 'ต้มเล้ง', 'ต้ม', 'wwfS4QCMvT.jpg', '50.00', 2, '2022-01-15 11:22:29', '2022-01-15 11:22:29'),
(22, 'ผัดเผ็ด', 'ผัด', 'wrSycbJQvF.jpg', '40.00', 1, '2022-01-15 11:24:16', '2022-01-15 11:24:16');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `isAdmin` tinyint(1) NOT NULL DEFAULT '0',
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `phone`, `address`, `isAdmin`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(7, 'admin', 'admin', '0638496842', '10/9', 1, 'admin@gmail.com', NULL, '$2y$10$LRe3zJ41QG8K5Ad5/XVVWuXMcQjUb8bgTKOdl4w8ftkM01UGsmDXy', NULL, '2022-01-21 02:27:28', '2022-01-21 02:27:28'),
(8, 'user', 'user', '0925744834', '11/37', 0, 'user@gmail.com', NULL, '$2y$10$.iegQiq2va/4sDHGLh5Oo.BqQln0Uc3qTTDWRKTPTBJwULCu82ySu', NULL, '2022-01-21 02:28:05', '2022-01-21 02:28:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `content1`
--
ALTER TABLE `content1`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id_product`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `content1`
--
ALTER TABLE `content1`
  MODIFY `content_id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id_product` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
