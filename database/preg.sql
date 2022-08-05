-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 05, 2022 at 08:12 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `asreztime`
--
CREATE DATABASE IF NOT EXISTS `asreztime` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `asreztime`;

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE `activity` (
  `id` int(10) NOT NULL,
  `name` varchar(25) NOT NULL,
  `created_at` int(10) NOT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'برنامه نویسی', 20202, NULL),
(2, 'طراحی', 54646, NULL),
(3, 'اموزش', 15, NULL),
(4, 'تفکر', 333, NULL),
(5, 'صبحانه', 55, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `code` varchar(20) NOT NULL,
  `name` varchar(25) NOT NULL,
  `created_at` int(10) NOT NULL,
  `updated_at` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `project_id`, `code`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, '1_m', 'محصول1', 202010, NULL),
(2, 1, 'm_2', 'محصول2', 202011, NULL),
(3, 2, 'm_3', 'محصول 3', 202012, NULL),
(4, 3, 'm_4', 'محصول4', 202013, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `id` int(11) NOT NULL,
  `code` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `created_at` int(10) NOT NULL,
  `updated_at` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`id`, `code`, `name`, `created_at`, `updated_at`) VALUES
(1, '1000', 'پروژه 1', 11, NULL),
(2, '1111', 'پروژه2', 12, NULL),
(3, '1001', 'پروژه3', 1222, NULL),
(4, '2222', 'پروژه4', 333, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `project_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `activity_id` int(10) NOT NULL,
  `hours_normal` int(3) NOT NULL,
  `minutes_normal` int(3) NOT NULL,
  `hours_extra` int(3) NOT NULL,
  `minutes_extra` int(3) NOT NULL,
  `created_at` int(20) NOT NULL,
  `updated_at` int(10) DEFAULT NULL,
  `time` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`id`, `user_id`, `project_id`, `product_id`, `activity_id`, `hours_normal`, `minutes_normal`, `hours_extra`, `minutes_extra`, `created_at`, `updated_at`, `time`) VALUES
(78, 1, 1, 1, 1, 0, 0, 1, 15, 1659290812, NULL, 1659290812),
(79, 1, 1, 1, 2, 0, 0, 2, 25, 1659290812, NULL, 1659290812),
(80, 1, 1, 1, 3, 0, 0, 1, 15, 1659290812, NULL, 1659290812),
(81, 1, 1, 1, 4, 0, 0, 3, 20, 1659290812, NULL, 1659290812),
(82, 1, 1, 1, 5, 0, 0, 2, 20, 1659290812, NULL, 1659290812),
(83, 1, 3, 4, 1, 0, 0, 7, 10, 1659325126, NULL, 1659325126),
(84, 1, 3, 4, 2, 0, 0, 0, 0, 1659325126, NULL, 1659325126),
(85, 1, 3, 4, 3, 0, 25, 8, 35, 1659325126, NULL, 1659325126),
(86, 1, 3, 4, 4, 0, 0, 0, 0, 1659325126, NULL, 1659325126),
(87, 1, 3, 4, 5, 0, 0, 0, 0, 1659325126, NULL, 1659325126),
(88, 1, 3, 4, 1, 0, 0, 1, 0, 1659455427, NULL, 1659455427),
(89, 1, 3, 4, 2, 0, 0, 1, 0, 1659455427, NULL, 1659455427),
(90, 1, 3, 4, 3, 0, 0, 1, 0, 1659455427, NULL, 1659455427),
(91, 1, 3, 4, 4, 0, 0, 1, 0, 1659455427, NULL, 1659455427),
(92, 1, 3, 4, 5, 0, 0, 2, 0, 1659455427, NULL, 1659455427),
(93, 1, 1, 1, 1, 0, 0, 0, 0, 1659455813, NULL, 1659455813),
(94, 1, 1, 1, 2, 0, 0, 0, 0, 1659455813, NULL, 1659455813),
(95, 1, 1, 1, 3, 0, 0, 0, 0, 1659455813, NULL, 1659455813),
(96, 1, 1, 1, 4, 0, 0, 0, 0, 1659455813, NULL, 1659455813),
(97, 1, 1, 1, 5, 0, 0, 0, 0, 1659455814, NULL, 1659455814),
(98, 1, 1, 1, 1, 0, 0, 3, 0, 1659498040, NULL, 1659498040),
(99, 1, 1, 1, 2, 0, 0, 0, 0, 1659498040, NULL, 1659498040),
(100, 1, 1, 1, 3, 0, 0, 0, 0, 1659498040, NULL, 1659498040),
(101, 1, 1, 1, 4, 0, 0, 0, 0, 1659498040, NULL, 1659498040),
(102, 1, 1, 1, 5, 0, 0, 0, 0, 1659498040, NULL, 1659498040);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `user_name` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `code_melli` int(10) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `user_name`, `password`, `first_name`, `last_name`, `code_melli`, `created_at`, `updated_at`) VALUES
(1, 'resa', '2', '3', '4', NULL, 44, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_id` (`project_id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity`
--
ALTER TABLE `activity`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`) ON DELETE CASCADE;
--
-- Database: `auth_learning`
--
CREATE DATABASE IF NOT EXISTS `auth_learning` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `auth_learning`;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `caption` longtext COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_12_17_091647_create_posts_table', 1),
(6, '2021_12_19_194416_create_comments_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caption` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `like` int(11) NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_post_id_foreign` (`post_id`),
  ADD KEY `comments_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
--
-- Database: `beata`
--
CREATE DATABASE IF NOT EXISTS `beata` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `beata`;

-- --------------------------------------------------------

--
-- Table structure for table `child`
--

CREATE TABLE `child` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `child`
--

INSERT INTO `child` (`id`, `parent_id`, `name`) VALUES
(1, 2, 'aaa'),
(2, 2, 'aaa'),
(3, 1, 'aaa'),
(4, 1, 'aaa');

-- --------------------------------------------------------

--
-- Table structure for table `parent`
--

CREATE TABLE `parent` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `parent`
--

INSERT INTO `parent` (`id`) VALUES
(1),
(2);

-- --------------------------------------------------------

--
-- Table structure for table `sad`
--

CREATE TABLE `sad` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `producer` varchar(50) NOT NULL,
  `image_path` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sad`
--

INSERT INTO `sad` (`id`, `name`, `producer`, `image_path`) VALUES
(9, 'a', 'aa', '../images/cov2.jpg'),
(10, 'v', 'v', '../images/covid.jpg'),
(11, 'a', 'aaaa', '../images/cov2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'reza', 'reza@email.com', '12345'),
(2, 'ali', 'ali@email.com', '55555'),
(3, 'hasan', 'hasan@email.com', '78945'),
(4, 'hossein', 'hossein@email.com', '987455'),
(5, 'rezzzzzzzza', 'alavi@email.com', '55555'),
(6, 'rezzzzzzzzaddd', 'dss1aasssf@email.com', 'dddd'),
(7, 'rrr', 'rrrrr', 'rrrr'),
(8, 'رضا', 'reza12@email.com', '457886587'),
(9, 'رضا', 'reza12@email.com', '457886587'),
(10, 'dsdsdsdsdsd', 'sdsds', 'dsdsd'),
(11, 'dsdsdsdsdsd', 'sdsdsd', '2322'),
(12, 'dsdsdsdsdsd', 'sdsdsd', '2322صی'),
(13, 'dsdsdsdsdsd', 'sdsdsd', 'ewewew'),
(14, 'rezaaa', 'ffgfg', 'jjjj'),
(15, 'jj', 'jjj', 'j'),
(16, 'jjqqq', 'jjj', 'j'),
(17, 'jjqqq', 'jjj', 'j'),
(18, 'jjqqq', 'jjj', 'j'),
(19, 'jjqqq', 'jjjdddd', 'j'),
(20, 'jjqqq', 'jjjdddd', 'j'),
(21, 'jjqqq', 'jjjdddd', 'j'),
(22, 'jjqqq', 'jjjdddd', 'j'),
(23, 'jjqqq', 'jjjdddd', 'j'),
(24, 'jjqqq', 'jjjdddd', 'j'),
(25, 'jjqqq', 'jjjdddd', 'j'),
(26, 'jjqqq', 'jjjdddd', 'j'),
(27, 'jjqqq', 'jjjdddd', 'j'),
(28, 'jjqqq', 'jjjdddd', 'j'),
(29, 'jjqqq', 'jjjdddd', 'j'),
(30, 'jjqqq', 'jjjdddd', 'j'),
(31, 'jjqqq', 'jjjdddd', 'j');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `child`
--
ALTER TABLE `child`
  ADD KEY `parent_id` (`parent_id`);

--
-- Indexes for table `parent`
--
ALTER TABLE `parent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sad`
--
ALTER TABLE `sad`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sad`
--
ALTER TABLE `sad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `child`
--
ALTER TABLE `child`
  ADD CONSTRAINT `child_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `parent` (`id`) ON DELETE CASCADE;
--
-- Database: `ex`
--
CREATE DATABASE IF NOT EXISTS `ex` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ex`;

-- --------------------------------------------------------

--
-- Table structure for table `beats`
--

CREATE TABLE `beats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `audio` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'بدون عنوان',
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `free` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `created_at`, `updated_at`, `title`) VALUES
(1, NULL, NULL, 'remix');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `beat_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_12_24_143558_create_categories_table', 1),
(6, '2021_12_24_143927_create_beats_table', 1),
(7, '2022_01_09_115014_create_comments_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'reza', 'reza@email.com', NULL, '12345678', NULL, NULL, NULL),
(2, 'reza', 'rez11a@email.com', NULL, '$2y$10$zdqE27xJFxXiY67OYBKZfOn/w4q37GmLDRqCv3lCMzhG4v/rggbwK', NULL, '2022-01-14 11:53:25', '2022-01-14 11:53:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `beats`
--
ALTER TABLE `beats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `beats_category_id_foreign` (`category_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `comments_content_unique` (`content`) USING HASH,
  ADD KEY `comments_beat_id_foreign` (`beat_id`),
  ADD KEY `comments_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `beats`
--
ALTER TABLE `beats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `beats`
--
ALTER TABLE `beats`
  ADD CONSTRAINT `beats_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_beat_id_foreign` FOREIGN KEY (`beat_id`) REFERENCES `beats` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
--
-- Database: `example`
--
CREATE DATABASE IF NOT EXISTS `example` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `example`;

-- --------------------------------------------------------

--
-- Table structure for table `beats`
--

CREATE TABLE `beats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'quest',
  `producer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'GVZ',
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_03_27_123512_create_beats_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `beats`
--
ALTER TABLE `beats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `beats`
--
ALTER TABLE `beats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `my_beat_shop`
--
CREATE DATABASE IF NOT EXISTS `my_beat_shop` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `my_beat_shop`;

-- --------------------------------------------------------

--
-- Table structure for table `beats`
--

CREATE TABLE `beats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'https://dummyimage.com/450x300/dee2e6/6c757d.jpg',
  `audio` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `beats`
--

INSERT INTO `beats` (`id`, `category_id`, `title`, `image`, `audio`, `created_at`, `updated_at`) VALUES
(1, 1, 'Prof.', 'https://dummyimage.com/450x300/dee2e6/6c757d.jpg', NULL, '2022-04-12 06:52:44', '2022-04-12 06:52:44'),
(2, 2, 'Dr.', 'https://dummyimage.com/450x300/dee2e6/6c757d.jpg', NULL, '2022-04-12 06:52:45', '2022-04-12 06:52:45'),
(3, 3, 'Prof.', 'https://dummyimage.com/450x300/dee2e6/6c757d.jpg', NULL, '2022-04-12 06:52:45', '2022-04-12 06:52:45'),
(4, 4, 'Mr.', 'https://dummyimage.com/450x300/dee2e6/6c757d.jpg', NULL, '2022-04-12 06:52:46', '2022-04-12 06:52:46'),
(5, 5, 'Dr.', 'https://dummyimage.com/450x300/dee2e6/6c757d.jpg', NULL, '2022-04-12 06:52:46', '2022-04-12 06:52:46'),
(6, 6, 'Ms.', 'https://dummyimage.com/450x300/dee2e6/6c757d.jpg', NULL, '2022-04-12 06:52:46', '2022-04-12 06:52:46'),
(7, 7, 'Dr.', 'https://dummyimage.com/450x300/dee2e6/6c757d.jpg', NULL, '2022-04-12 06:52:46', '2022-04-12 06:52:46'),
(8, 8, 'Ms.', 'https://dummyimage.com/450x300/dee2e6/6c757d.jpg', NULL, '2022-04-12 06:52:47', '2022-04-12 06:52:47'),
(9, 9, 'Prof.', 'https://dummyimage.com/450x300/dee2e6/6c757d.jpg', NULL, '2022-04-12 06:52:47', '2022-04-12 06:52:47'),
(10, 10, 'Miss', 'https://dummyimage.com/450x300/dee2e6/6c757d.jpg', NULL, '2022-04-12 06:52:48', '2022-04-12 06:52:48'),
(11, 10, 'aaaa', 'public/images/422124726_81329.jpg', 'public/Ali Ashabi - Mano Mishnasi.mp3', '2022-04-12 08:00:16', '2022-04-12 08:12:36');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'perferendis', '2022-04-12 06:52:44', '2022-04-12 06:52:44'),
(2, 'voluptatum', '2022-04-12 06:52:44', '2022-04-12 06:52:44'),
(3, 'in', '2022-04-12 06:52:45', '2022-04-12 06:52:45'),
(4, 'libero', '2022-04-12 06:52:45', '2022-04-12 06:52:45'),
(5, 'harum', '2022-04-12 06:52:46', '2022-04-12 06:52:46'),
(6, 'sunt', '2022-04-12 06:52:46', '2022-04-12 06:52:46'),
(7, 'unde', '2022-04-12 06:52:46', '2022-04-12 06:52:46'),
(8, 'quibusdam', '2022-04-12 06:52:46', '2022-04-12 06:52:46'),
(9, 'et', '2022-04-12 06:52:47', '2022-04-12 06:52:47'),
(10, 'tempora', '2022-04-12 06:52:48', '2022-04-12 06:52:48');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `beat_id` bigint(20) UNSIGNED NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `beat_id`, `body`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Omnis necessitatibus omnis et nisi omnis. Qui praesentium dolorem sint. Animi esse ut dolorum illum. Aut delectus assumenda libero eveniet.', '2022-04-12 06:52:44', '2022-04-12 06:52:44'),
(2, 2, 2, 'Ut eius expedita quisquam veritatis ipsam voluptas. Iusto itaque libero doloribus non est qui quod sed. Vel alias quia quas ea et quos accusantium.', '2022-04-12 06:52:45', '2022-04-12 06:52:45'),
(3, 3, 3, 'Voluptatem consequuntur sint veniam. Sunt veritatis veritatis minima ut consequuntur. Molestiae beatae maiores quo.', '2022-04-12 06:52:45', '2022-04-12 06:52:45'),
(4, 4, 4, 'Ea non sed non. Eos dolor dolore et inventore autem. Debitis qui reprehenderit quo nihil id. Cum impedit cupiditate eligendi.', '2022-04-12 06:52:46', '2022-04-12 06:52:46'),
(5, 5, 5, 'Sapiente id vel rerum neque perferendis quis asperiores. Magni consequatur accusantium suscipit. Fuga maiores pariatur eos tenetur quae soluta magni. Nostrum velit incidunt molestiae optio.', '2022-04-12 06:52:46', '2022-04-12 06:52:46'),
(6, 6, 6, 'Reiciendis vero laborum voluptas ut molestiae. Necessitatibus sit animi eligendi culpa iure nam quo. Sit provident commodi suscipit deserunt. Magni omnis vitae sequi nemo voluptas.', '2022-04-12 06:52:46', '2022-04-12 06:52:46'),
(7, 7, 7, 'Labore ea iure repellendus cupiditate ipsam. Et cum vero a illo provident. Magni reprehenderit aperiam placeat modi velit. Dolor quis quis sit facilis nihil sint eius.', '2022-04-12 06:52:46', '2022-04-12 06:52:46'),
(8, 8, 8, 'Non esse facilis libero ea aspernatur eius. Exercitationem nisi nostrum et aliquam sed expedita. Ut dolorem beatae possimus adipisci occaecati. Aut omnis ipsam explicabo.', '2022-04-12 06:52:47', '2022-04-12 06:52:47'),
(9, 9, 9, 'Commodi quae magni et voluptatem. Et explicabo et fuga a ut ex velit illum. Quia dolorum quas corporis ad nobis quis.', '2022-04-12 06:52:47', '2022-04-12 06:52:47'),
(10, 10, 10, 'Dolore autem est ducimus repellendus sit suscipit. Recusandae aut beatae est error veritatis voluptatum inventore. Sed quidem sunt occaecati rerum corrupti porro natus.', '2022-04-12 06:52:48', '2022-04-12 06:52:48');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_04_07_081643_create_categories_table', 1),
(6, '2022_04_07_090645_create_beats_table', 1),
(7, '2022_04_07_153323_create_comments_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin` tinyint(1) DEFAULT 0,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `admin`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'darren61', 0, 'wade48@example.com', '2022-04-12 06:52:44', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'XYv59Qt8kV', '2022-04-12 06:52:44', '2022-04-12 06:52:44'),
(2, 'kuhlman.pierre', 0, 'oscar27@example.org', '2022-04-12 06:52:44', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'C3Tqw46Vzs', '2022-04-12 06:52:44', '2022-04-12 06:52:44'),
(3, 'alayna.grimes', 0, 'elmer29@example.net', '2022-04-12 06:52:45', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'gQwROG4kaS', '2022-04-12 06:52:45', '2022-04-12 06:52:45'),
(4, 'isidro.stoltenberg', 0, 'nschuster@example.org', '2022-04-12 06:52:45', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2DqCkQajpJ', '2022-04-12 06:52:45', '2022-04-12 06:52:45'),
(5, 'allison.moore', 0, 'iankunding@example.org', '2022-04-12 06:52:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'KkPvdEQtKA', '2022-04-12 06:52:46', '2022-04-12 06:52:46'),
(6, 'torp.maegan', 0, 'rodrigo.hand@example.com', '2022-04-12 06:52:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dfg1A6j6vf', '2022-04-12 06:52:46', '2022-04-12 06:52:46'),
(7, 'batz.angel', 0, 'rafaela29@example.net', '2022-04-12 06:52:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'H1vU0cy7Us', '2022-04-12 06:52:46', '2022-04-12 06:52:46'),
(8, 'carol01', 0, 'ygrady@example.net', '2022-04-12 06:52:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '82itzkQKuA', '2022-04-12 06:52:46', '2022-04-12 06:52:46'),
(9, 'mario78', 0, 'hwalker@example.org', '2022-04-12 06:52:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BtHGlogvVl', '2022-04-12 06:52:47', '2022-04-12 06:52:47'),
(10, 'michel62', 0, 'hane.meda@example.org', '2022-04-12 06:52:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '95zXsqGOjZ', '2022-04-12 06:52:47', '2022-04-12 06:52:47'),
(11, 'reza', 1, 'reza11@email.com', NULL, '$2y$10$eTKSoKojvWoAFpXagDlCq.091PMOTWiUHnqALG4ySg.GnTCNqnsUm', NULL, '2022-04-12 07:09:39', '2022-04-12 07:09:39'),
(12, 'REZA sOLEYMANI', 1, 'REZA@EMAIL.COM', NULL, '123456789', NULL, NULL, NULL),
(13, 'reza2', 0, 'reza2@email.com', NULL, '$2y$10$gb8PRotAvQbgORgR1F3hs.9ZVNaCckSXaM6KC.w.dQzDUYuguyGT2', NULL, '2022-04-12 07:49:00', '2022-04-12 07:49:00'),
(14, 'rezaaa', 0, 'dss1aasssf@email.com', NULL, '$2y$10$e9.jCp.bc8LeK2hcWEOMauovkbu/1qRq4zBxrqnR.I3h/AYX0ryX.', NULL, '2022-07-20 09:44:47', '2022-07-20 09:44:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `beats`
--
ALTER TABLE `beats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `beats_category_id_foreign` (`category_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `comments_body_unique` (`body`) USING HASH,
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_beat_id_foreign` (`beat_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_name_unique` (`name`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `beats`
--
ALTER TABLE `beats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `beats`
--
ALTER TABLE `beats`
  ADD CONSTRAINT `beats_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_beat_id_foreign` FOREIGN KEY (`beat_id`) REFERENCES `beats` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

--
-- Dumping data for table `pma__central_columns`
--

INSERT INTO `pma__central_columns` (`db_name`, `col_name`, `col_type`, `col_length`, `col_collation`, `col_isNull`, `col_extra`, `col_default`) VALUES
('preg', 'description', 'longtext', '', 'utf8mb4_general_ci', 0, ',', ''),
('preg', 'entrance_time', 'varchar', '5', 'utf8mb4_general_ci', 0, ',', ''),
('preg', 'leaving_time', 'varchar', '5', 'utf8mb4_general_ci', 0, ',', ''),
('preg', 'work_time', 'varchar', '10', 'utf8mb4_general_ci', 0, ',', '');

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Dumping data for table `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"relation_lines\":\"true\",\"angular_direct\":\"direct\",\"snap_to_grid\":\"off\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Dumping data for table `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'database', 'beata', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"structure_or_data_forced\":\"0\",\"table_select[]\":[\"child\",\"parent\",\"sad\",\"users\"],\"table_structure[]\":[\"child\",\"parent\",\"sad\",\"users\"],\"table_data[]\":[\"child\",\"parent\",\"sad\",\"users\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@DATABASE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"structure_and_data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"structure_and_data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_procedure_function\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_create_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"preg\",\"table\":\"reports\"},{\"db\":\"preg\",\"table\":\"activity\"},{\"db\":\"preg\",\"table\":\"user\"},{\"db\":\"sqltest\",\"table\":\"user\"},{\"db\":\"asreztime\",\"table\":\"user\"},{\"db\":\"asreztime\",\"table\":\"report\"},{\"db\":\"preg\",\"table\":\"project\"},{\"db\":\"preg\",\"table\":\"product\"},{\"db\":\"asreztime\",\"table\":\"activity\"},{\"db\":\"asreztime\",\"table\":\"product\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'beata', 'users', '{\"sorted_col\":\"`users`.`id` ASC\"}', '2022-07-21 20:13:56');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2022-08-05 06:11:32', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `preg`
--
CREATE DATABASE IF NOT EXISTS `preg` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `preg`;

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE `activity` (
  `id` int(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `created_at` int(20) NOT NULL,
  `updated_at` int(20) DEFAULT NULL,
  `entrance_time` varchar(5) NOT NULL,
  `leaving_time` varchar(5) NOT NULL,
  `work_time` varchar(10) NOT NULL,
  `description` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`id`, `name`, `created_at`, `updated_at`, `entrance_time`, `leaving_time`, `work_time`, `description`) VALUES
(1, 'برنامه نویسی', 121212, NULL, '0', '0', '0', ''),
(2, 'طراحی', 151, NULL, '0', '0', '0', ''),
(3, 'تفکر', 4, NULL, '0', '0', '0', ''),
(4, 'صبحانه', 34, NULL, '0', '0', '0', '');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(20) NOT NULL,
  `name` varchar(25) NOT NULL,
  `created_at` varchar(10) NOT NULL,
  `updated_at` varchar(10) DEFAULT NULL,
  `project_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `created_at`, `updated_at`, `project_id`) VALUES
(1, 'm1', '1', '1', 1),
(2, 'm2', '2', '2', 1),
(3, 'm4', '1', NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `id` int(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `created_at` int(10) NOT NULL,
  `updated_at` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'p1', 1, 1),
(2, 'p2', 2, 2),
(3, 'p3', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int(20) NOT NULL,
  `user_id` int(20) NOT NULL,
  `project_id` int(20) NOT NULL,
  `product_id` int(20) NOT NULL,
  `time` int(10) NOT NULL,
  `normal_time` varchar(10) DEFAULT NULL,
  `extra_time` varchar(10) DEFAULT NULL,
  `activity_id` int(20) DEFAULT NULL,
  `entrance_time` varchar(5) NOT NULL,
  `leaving_time` varchar(5) NOT NULL,
  `work_time` varchar(5) NOT NULL,
  `activity_description` longtext NOT NULL,
  `created_at` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id`, `user_id`, `project_id`, `product_id`, `time`, `normal_time`, `extra_time`, `activity_id`, `entrance_time`, `leaving_time`, `work_time`, `activity_description`, `created_at`) VALUES
(98, 10, 2, 3, 1659620921, NULL, NULL, NULL, '8:0', '14:10', '5:50', 'dgsgsdmnnb jn vmcnmcnxbmfnbjfndbml,;lfdnklemglmbnklmbkmkb knvjksdbefl,n;rklmgbkkmas,bdlkgngiweemkrjirehiejk', 1659620921),
(99, 10, 2, 3, 1659620970, NULL, NULL, NULL, '8:0', '14:10', '5:50', 'dgsgsdmnnb jn vmcnmcnxbmfnbjfndbml,;lfdnklemglmbnklmbkmkb knvjksdbefl,n;rklmgbkkmas,bdlkgngiweemkrjirehiejk', 1659620970),
(100, 10, 2, 3, 1659621442, NULL, NULL, NULL, '8:0', '14:10', '5:50', 'dgsgsdmnnb jn vmcnmcnxbmfnbjfndbml,;lfdnklemglmbnklmbkmkb knvjksdbefl,n;rklmgbkkmas,bdlkgngiweemkrjirehiejk', 1659621442),
(101, 10, 2, 3, 1659621491, NULL, NULL, NULL, '8:0', '14:10', '5:50', 'dgsgsdmnnb jn vmcnmcnxbmfnbjfndbml,;lfdnklemglmbnklmbkmkb knvjksdbefl,n;rklmgbkkmas,bdlkgngiweemkrjirehiejk', 1659621491),
(102, 10, 2, 3, 1659621601, NULL, NULL, NULL, '8:0', '14:10', '5:50', 'dgsgsdmnnb jn vmcnmcnxbmfnbjfndbml,;lfdnklemglmbnklmbkmkb knvjksdbefl,n;rklmgbkkmas,bdlkgngiweemkrjirehiejk', 1659621601),
(103, 10, 2, 3, 1659621626, NULL, NULL, NULL, '8:0', '14:10', '5:50', 'dgsgsdmnnb jn vmcnmcnxbmfnbjfndbml,;lfdnklemglmbnklmbkmkb knvjksdbefl,n;rklmgbkkmas,bdlkgngiweemkrjirehiejk', 1659621626),
(104, 10, 2, 3, 1659621640, NULL, NULL, NULL, '8:0', '14:10', '5:50', 'dgsgsdmnnb jn vmcnmcnxbmfnbjfndbml,;lfdnklemglmbnklmbkmkb knvjksdbefl,n;rklmgbkkmas,bdlkgngiweemkrjirehiejk', 1659621640),
(105, 10, 2, 3, 1659621653, NULL, NULL, NULL, '8:0', '14:10', '5:50', 'dgsgsdmnnb jn vmcnmcnxbmfnbjfndbml,;lfdnklemglmbnklmbkmkb knvjksdbefl,n;rklmgbkkmas,bdlkgngiweemkrjirehiejk', 1659621653),
(106, 10, 2, 3, 1659621674, NULL, NULL, NULL, '8:0', '14:10', '5:50', 'dgsgsdmnnb jn vmcnmcnxbmfnbjfndbml,;lfdnklemglmbnklmbkmkb knvjksdbefl,n;rklmgbkkmas,bdlkgngiweemkrjirehiejk', 1659621674),
(107, 10, 2, 3, 1659621678, NULL, NULL, NULL, '8:0', '14:10', '5:50', 'dgsgsdmnnb jn vmcnmcnxbmfnbjfndbml,;lfdnklemglmbnklmbkmkb knvjksdbefl,n;rklmgbkkmas,bdlkgngiweemkrjirehiejk', 1659621678),
(108, 10, 2, 3, 1659621686, NULL, NULL, NULL, '8:0', '14:10', '5:50', 'dgsgsdmnnb jn vmcnmcnxbmfnbjfndbml,;lfdnklemglmbnklmbkmkb knvjksdbefl,n;rklmgbkkmas,bdlkgngiweemkrjirehiejk', 1659621686),
(109, 10, 2, 3, 1659621756, NULL, NULL, NULL, '8:0', '14:10', '5:50', 'dgsgsdmnnb jn vmcnmcnxbmfnbjfndbml,;lfdnklemglmbnklmbkmkb knvjksdbefl,n;rklmgbkkmas,bdlkgngiweemkrjirehiejk', 1659621756),
(110, 10, 2, 3, 1659621771, NULL, NULL, NULL, '8:0', '14:10', '5:50', 'dgsgsdmnnb jn vmcnmcnxbmfnbjfndbml,;lfdnklemglmbnklmbkmkb knvjksdbefl,n;rklmgbkkmas,bdlkgngiweemkrjirehiejk', 1659621771),
(111, 10, 2, 3, 1659621808, NULL, NULL, NULL, '8:0', '14:10', '5:50', 'dgsgsdmnnb jn vmcnmcnxbmfnbjfndbml,;lfdnklemglmbnklmbkmkb knvjksdbefl,n;rklmgbkkmas,bdlkgngiweemkrjirehiejk', 1659621808),
(112, 10, 2, 3, 1659621812, NULL, NULL, NULL, '8:0', '14:10', '5:50', 'dgsgsdmnnb jn vmcnmcnxbmfnbjfndbml,;lfdnklemglmbnklmbkmkb knvjksdbefl,n;rklmgbkkmas,bdlkgngiweemkrjirehiejk', 1659621812),
(113, 10, 2, 3, 1659621867, NULL, NULL, NULL, '8:0', '14:10', '5:50', 'dgsgsdmnnb jn vmcnmcnxbmfnbjfndbml,;lfdnklemglmbnklmbkmkb knvjksdbefl,n;rklmgbkkmas,bdlkgngiweemkrjirehiejk', 1659621867),
(114, 10, 2, 3, 1659621879, NULL, NULL, NULL, '8:0', '14:10', '5:50', 'dgsgsdmnnb jn vmcnmcnxbmfnbjfndbml,;lfdnklemglmbnklmbkmkb knvjksdbefl,n;rklmgbkkmas,bdlkgngiweemkrjirehiejk', 1659621879),
(115, 10, 2, 3, 1659621892, NULL, NULL, NULL, '8:0', '14:10', '5:50', 'dgsgsdmnnb jn vmcnmcnxbmfnbjfndbml,;lfdnklemglmbnklmbkmkb knvjksdbefl,n;rklmgbkkmas,bdlkgngiweemkrjirehiejk', 1659621892),
(116, 10, 2, 3, 1659621944, NULL, NULL, NULL, '8:0', '14:10', '5:50', 'dgsgsdmnnb jn vmcnmcnxbmfnbjfndbml,;lfdnklemglmbnklmbkmkb knvjksdbefl,n;rklmgbkkmas,bdlkgngiweemkrjirehiejk', 1659621944),
(117, 10, 2, 3, 1659621962, NULL, NULL, NULL, '8:0', '14:10', '5:50', 'dgsgsdmnnb jn vmcnmcnxbmfnbjfndbml,;lfdnklemglmbnklmbkmkb knvjksdbefl,n;rklmgbkkmas,bdlkgngiweemkrjirehiejk', 1659621962),
(118, 10, 2, 3, 1659621977, NULL, NULL, NULL, '8:0', '14:10', '5:50', 'dgsgsdmnnb jn vmcnmcnxbmfnbjfndbml,;lfdnklemglmbnklmbkmkb knvjksdbefl,n;rklmgbkkmas,bdlkgngiweemkrjirehiejk', 1659621977),
(119, 10, 2, 3, 1659622054, NULL, NULL, NULL, '8:0', '14:10', '5:50', 'dgsgsdmnnb jn vmcnmcnxbmfnbjfndbml,;lfdnklemglmbnklmbkmkb knvjksdbefl,n;rklmgbkkmas,bdlkgngiweemkrjirehiejk', 1659622054),
(120, 10, 2, 3, 1659622080, NULL, NULL, NULL, '8:0', '14:10', '5:50', 'dgsgsdmnnb jn vmcnmcnxbmfnbjfndbml,;lfdnklemglmbnklmbkmkb knvjksdbefl,n;rklmgbkkmas,bdlkgngiweemkrjirehiejk', 1659622080),
(121, 10, 2, 3, 1659622095, NULL, NULL, NULL, '8:0', '14:10', '5:50', 'dgsgsdmnnb jn vmcnmcnxbmfnbjfndbml,;lfdnklemglmbnklmbkmkb knvjksdbefl,n;rklmgbkkmas,bdlkgngiweemkrjirehiejk', 1659622095),
(122, 10, 2, 3, 1659622118, NULL, NULL, NULL, '8:0', '14:10', '5:50', 'dgsgsdmnnb jn vmcnmcnxbmfnbjfndbml,;lfdnklemglmbnklmbkmkb knvjksdbefl,n;rklmgbkkmas,bdlkgngiweemkrjirehiejk', 1659622118),
(123, 10, 2, 3, 1659622124, NULL, NULL, NULL, '8:0', '14:10', '5:50', 'dgsgsdmnnb jn vmcnmcnxbmfnbjfndbml,;lfdnklemglmbnklmbkmkb knvjksdbefl,n;rklmgbkkmas,bdlkgngiweemkrjirehiejk', 1659622124),
(124, 10, 2, 3, 1659622135, NULL, NULL, NULL, '8:0', '14:10', '5:50', 'dgsgsdmnnb jn vmcnmcnxbmfnbjfndbml,;lfdnklemglmbnklmbkmkb knvjksdbefl,n;rklmgbkkmas,bdlkgngiweemkrjirehiejk', 1659622135),
(125, 10, 2, 3, 1659622144, NULL, NULL, NULL, '8:0', '14:10', '5:50', 'dgsgsdmnnb jn vmcnmcnxbmfnbjfndbml,;lfdnklemglmbnklmbkmkb knvjksdbefl,n;rklmgbkkmas,bdlkgngiweemkrjirehiejk', 1659622144),
(126, 10, 2, 3, 1659622161, NULL, NULL, NULL, '8:0', '14:10', '5:50', 'dgsgsdmnnb jn vmcnmcnxbmfnbjfndbml,;lfdnklemglmbnklmbkmkb knvjksdbefl,n;rklmgbkkmas,bdlkgngiweemkrjirehiejk', 1659622161),
(127, 10, 2, 3, 1659622186, NULL, NULL, NULL, '8:0', '14:10', '5:50', 'dgsgsdmnnb jn vmcnmcnxbmfnbjfndbml,;lfdnklemglmbnklmbkmkb knvjksdbefl,n;rklmgbkkmas,bdlkgngiweemkrjirehiejk', 1659622186),
(128, 10, 2, 3, 1659622199, NULL, NULL, NULL, '8:0', '14:10', '5:50', 'dgsgsdmnnb jn vmcnmcnxbmfnbjfndbml,;lfdnklemglmbnklmbkmkb knvjksdbefl,n;rklmgbkkmas,bdlkgngiweemkrjirehiejk', 1659622199),
(129, 10, 2, 3, 1659622206, NULL, NULL, NULL, '8:0', '14:10', '5:50', 'dgsgsdmnnb jn vmcnmcnxbmfnbjfndbml,;lfdnklemglmbnklmbkmkb knvjksdbefl,n;rklmgbkkmas,bdlkgngiweemkrjirehiejk', 1659622206),
(130, 10, 2, 3, 1659622238, NULL, NULL, NULL, '8:0', '14:10', '5:50', 'dgsgsdmnnb jn vmcnmcnxbmfnbjfndbml,;lfdnklemglmbnklmbkmkb knvjksdbefl,n;rklmgbkkmas,bdlkgngiweemkrjirehiejk', 1659622238),
(131, 10, 2, 3, 1659622268, NULL, NULL, NULL, '8:0', '14:10', '5:50', 'dgsgsdmnnb jn vmcnmcnxbmfnbjfndbml,;lfdnklemglmbnklmbkmkb knvjksdbefl,n;rklmgbkkmas,bdlkgngiweemkrjirehiejk', 1659622268),
(132, 10, 2, 3, 1659622281, NULL, NULL, NULL, '8:0', '14:10', '5:50', 'dgsgsdmnnb jn vmcnmcnxbmfnbjfndbml,;lfdnklemglmbnklmbkmkb knvjksdbefl,n;rklmgbkkmas,bdlkgngiweemkrjirehiejk', 1659622281),
(133, 10, 2, 3, 1659622293, NULL, NULL, NULL, '8:0', '14:10', '5:50', 'dgsgsdmnnb jn vmcnmcnxbmfnbjfndbml,;lfdnklemglmbnklmbkmkb knvjksdbefl,n;rklmgbkkmas,bdlkgngiweemkrjirehiejk', 1659622293);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(20) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`) VALUES
(8, 'reza2', 'rez11a@email.com', '2'),
(10, 'ali', 'a', 'a'),
(11, 'amir', 'amir@email.com', '1250419212'),
(12, 'reeeeeee', 'eeeeeeeeeee', 'eeeeee'),
(13, 'de', 'fff', 'rf'),
(14, 'ss', 'fsfsf', 'sfsf'),
(21, 'ali', 'alavi', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_id` (`project_id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity`
--
ALTER TABLE `activity`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`);
--
-- Database: `sqltest`
--
CREATE DATABASE IF NOT EXISTS `sqltest` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sqltest`;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(20) NOT NULL,
  `name` varchar(85) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
