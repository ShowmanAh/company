-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 02, 2018 at 01:56 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mng`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `commentable_id` int(10) UNSIGNED NOT NULL,
  `commentable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `body`, `url`, `user_id`, `commentable_id`, `commentable_type`, `created_at`, `updated_at`) VALUES
(1, 'ggggggggg', 'jjjjjjjjjjjj', 2, 5, 'project', '2018-01-28 23:27:31', '2018-01-28 23:27:31'),
(2, 'hhhhhhh', 'kkkkkkkkkkk', 2, 4, 'project', '2018-01-29 00:32:00', '2018-01-29 00:32:00'),
(3, 'this latest comment', 'http\\\\::www.com', 2, 4, 'project', '2018-01-29 00:38:03', '2018-01-29 00:38:03'),
(4, 'hhhhhhh', 'https://laravel.com/docs/5.5/eloquent-relationships#polymorphic-relations', 2, 4, 'App\\Project', '2018-01-29 00:38:46', '2018-01-29 00:38:46'),
(5, 'hhhhhhhhhhhhhhhhh', 'https://laravel.com/docs/5.5/eloquent-relationships#polymorphic-relations', 2, 5, 'App\\Project', '2018-01-29 00:45:17', '2018-01-29 00:45:17'),
(6, 'jjjjjjjjjjjjj', 'https://laravel.com/docs/5.5/eloquent-relationships#polymorphic-relations', 2, 5, 'App\\project', '2018-01-29 00:47:31', '2018-01-29 00:47:31'),
(7, 'jjjjjjjjjj', 'nnnnnnnnnnnnn', 2, 7, 'App\\project', '2018-01-29 00:58:32', '2018-01-29 00:58:32'),
(8, 'jjjjjjjjjjjjj', 'https://laravel.com/docs/5.5/eloquent-relationships#polymorphic-relations', 1, 6, 'App\\project', '2018-01-29 01:10:47', '2018-01-29 01:10:47'),
(9, 'hhhhhhhhhhhhhhhhhh', 'https://mail.google.com/mail/#inbox/1613d8cbbd56b636', 1, 5, 'App\\project', '2018-01-29 01:20:49', '2018-01-29 01:20:49'),
(10, 'hhhhhhhhh', 'kkkkkkkkkkkkkk', 1, 5, 'App\\project', '2018-01-29 01:28:54', '2018-01-29 01:28:54'),
(11, 'hhhhhhhh', 'https://www.w3schools.com/css/css3_2dtransforms.asp', 2, 9, 'App\\project', '2018-01-31 17:19:03', '2018-01-31 17:19:03'),
(12, 'dddddddddd', 'https://laravel.com/docs/5.5', 2, 11, 'App\\project', '2018-02-01 22:55:17', '2018-02-01 22:55:17'),
(13, 'ffffffffffff', 'hhhhhhhhhhhh', 3, 13, 'App\\project', '2018-02-01 23:00:08', '2018-02-01 23:00:08'),
(14, 'hhhhhhhhhhh', 'hhhhhhhhhhhhhh', 3, 15, 'App\\project', '2018-02-01 23:35:07', '2018-02-01 23:35:07');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `description`, `user_id`, `created_at`, `updated_at`) VALUES
(13, 'tesla2', 'hhhhhhhhhhhhhhhh', 2, '2018-01-22 17:27:29', '2018-01-22 17:27:29'),
(14, 'tesla3', 'software', 2, '2018-01-22 01:00:00', '2018-01-22 04:00:00'),
(15, 'tesl4', 'software company', 2, '2018-01-31 17:17:49', '2018-01-31 17:17:49'),
(16, 'tesla5', 'software company', 2, '2018-02-01 22:50:47', '2018-02-01 22:50:47'),
(17, 'tesla1', 'software solutions', 3, '2018-02-01 22:59:15', '2018-02-01 22:59:15');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(10, '2014_10_12_000000_create_users_table', 1),
(11, '2014_10_12_100000_create_password_resets_table', 1),
(12, '2018_01_17_211904_create_companies_table', 1),
(13, '2018_01_17_212210_create_projects_table', 1),
(14, '2018_01_17_212954_create_tasks_table', 1),
(15, '2018_01_17_214819_create_comments_table', 1),
(16, '2018_01_17_222058_create_roles_table', 1),
(17, '2018_01_18_003104_create_projects_user_table', 1),
(18, '2018_01_18_003548_create_tasks_user_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `days` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `name`, `description`, `company_id`, `user_id`, `days`, `created_at`, `updated_at`) VALUES
(1, 'blog', 'display posts and comments and like', 13, 2, 10, NULL, NULL),
(2, 'ecommerce', 'dsisplay products', 14, 1, 10, NULL, NULL),
(4, 'blog2', 'like facebook', 14, 1, 16, NULL, NULL),
(7, 'mini commerce', 'make service client', NULL, 2, NULL, '2018-01-29 00:28:37', '2018-01-29 00:28:37'),
(8, 'hotel', 'reciption quest hotel', NULL, 2, NULL, '2018-01-29 00:31:19', '2018-01-29 00:31:19'),
(9, 'blog 5', 'can create more operations', NULL, 2, NULL, '2018-01-31 17:18:33', '2018-01-31 17:18:33'),
(11, 'blog11', 'ssssssssssssss', NULL, 2, NULL, '2018-02-01 22:54:32', '2018-02-01 22:55:49'),
(14, 'blog2', 'jjjjjjjjjjjjjjjjjj', NULL, 3, NULL, '2018-02-01 23:19:05', '2018-02-01 23:19:05'),
(15, 'blog3', 'kkkkkkkkkkkkk', NULL, 3, NULL, '2018-02-01 23:34:37', '2018-02-01 23:34:37');

-- --------------------------------------------------------

--
-- Table structure for table `projects_user`
--

CREATE TABLE `projects_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `project_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', NULL, NULL),
(2, 'Moderators', NULL, NULL),
(3, 'User', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `days` int(10) UNSIGNED DEFAULT NULL,
  `hours` int(10) UNSIGNED DEFAULT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tasks_user`
--

CREATE TABLE `tasks_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `task_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `middle_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `first_name`, `middle_name`, `last_name`, `city`, `role_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Showman Ahmed', 'showman.sh.ahmed@gmail.com', '$2y$10$09ZBZH1aEmX2N2DWDjhI/.uiIHOUbFI6YLMlG8Ey69m7MnbGW1ycm', NULL, NULL, NULL, NULL, 1, 'LhdX4PPTEaaLTEQGqK08V9JojHU3CQvOOxDcefxIB2HkDu2zam1wxB6DL8bs', '2018-01-22 00:11:41', '2018-01-22 00:11:41'),
(2, 'omar', 'ahmed34@gmail.com', '$2y$10$pIxyanW2Zz1Ycwq0KjNi1.oWrOEqHFrm6H37Rv93fH/jbu2DC32k6', NULL, NULL, NULL, NULL, NULL, 'E3Tuk3dK1xsHbRIP3N4KhXQEU29qlJQfyplamicHLTF3aQMl8yJmMtHzkMiJ', '2018-01-22 16:19:46', '2018-01-22 16:19:46'),
(3, 'abdullah', 'abo@gmail.com', '$2y$10$84hgoVa4Qv8HKPq5JSvthubBnx8kjnWYptLP9PrS6UcJ9PibfPg2i', NULL, NULL, NULL, NULL, NULL, 'AgfKwR1h7h5DBNxQs3RCltCMtV7SpV6PYv5TX3Qd5191x9UXM5QCUHOQDnMv', '2018-02-01 22:57:44', '2018-02-01 22:57:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `companies_user_id_foreign` (`user_id`);

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
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projects_user_id_foreign` (`user_id`),
  ADD KEY `projects_company_id_foreign` (`company_id`);

--
-- Indexes for table `projects_user`
--
ALTER TABLE `projects_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projects_user_user_id_foreign` (`user_id`),
  ADD KEY `projects_user_project_id_foreign` (`project_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tasks_user_id_foreign` (`user_id`),
  ADD KEY `tasks_project_id_foreign` (`project_id`),
  ADD KEY `tasks_company_id_foreign` (`company_id`);

--
-- Indexes for table `tasks_user`
--
ALTER TABLE `tasks_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tasks_user_user_id_foreign` (`user_id`),
  ADD KEY `tasks_user_task_id_foreign` (`task_id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `projects_user`
--
ALTER TABLE `projects_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tasks_user`
--
ALTER TABLE `tasks_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `companies`
--
ALTER TABLE `companies`
  ADD CONSTRAINT `companies_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `projects_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `projects_user`
--
ALTER TABLE `projects_user`
  ADD CONSTRAINT `projects_user_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`),
  ADD CONSTRAINT `projects_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `tasks_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`),
  ADD CONSTRAINT `tasks_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `tasks_user`
--
ALTER TABLE `tasks_user`
  ADD CONSTRAINT `tasks_user_task_id_foreign` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`),
  ADD CONSTRAINT `tasks_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
