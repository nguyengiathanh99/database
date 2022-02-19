-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2022 at 06:21 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravelpro`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
(18, '2014_10_12_000000_create_users_table', 1),
(19, '2014_10_12_100000_create_password_resets_table', 1),
(20, '2019_08_19_000000_create_failed_jobs_table', 1),
(21, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(22, '2021_11_25_041202_create_posts_table', 1),
(23, '2021_11_25_042834_create_comment_table', 1),
(24, '2021_11_25_043055_create_product_table', 1),
(25, '2021_11_25_043134_create_admin_table', 1),
(27, '2021_11_25_092548_add_status_to_posts_table', 2),
(28, '2021_11_25_101205_add_title_to_posts_table', 2),
(29, '2021_11_25_104141_add_description_to_posts_table', 3),
(30, '2021_11_25_112307_add_users_id_to_posts_table', 4),
(31, '2021_11_25_152444_create_products_table', 5),
(32, '2021_11_25_160219_create_products_cat_table', 6),
(33, '2021_11_25_160648_add_attr_to_products_table', 7),
(34, '2021_11_26_161505_add_votes_to_posts_table', 8),
(36, '2021_11_29_155626_add_softdelete_to_table_posts', 9),
(37, '2021_11_30_155001_create_role_table', 10),
(38, '2021_11_30_155755_create_roles_user_table', 10),
(39, '2021_11_30_160527_create_test_table', 10),
(40, '2021_12_02_155322_add_thumbnail_to_posts_table', 11),
(41, '2021_12_11_031222_add_thumbnail_to_table', 12);

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
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `users_id` bigint(20) UNSIGNED NOT NULL,
  `votes` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `thumbnail` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `description`, `users_id`, `votes`, `created_at`, `updated_at`, `status`, `deleted_at`, `thumbnail`) VALUES
(15, 'Title-1', 'Content-1', NULL, 2, NULL, '2021-12-02 19:38:10', '2021-12-02 19:38:10', NULL, NULL, 'public/uploads/avatar.png'),
(16, 'Title-2', 'Content-2', NULL, 2, NULL, '2021-12-02 19:46:03', '2021-12-02 19:46:03', NULL, NULL, 'public/uploads/images (1).jpg'),
(17, 'Title-3', 'Content-3', NULL, 2, NULL, '2021-12-02 19:46:31', '2021-12-02 19:46:31', NULL, NULL, 'public/uploads/cua-lai-vo-bau-5-9032-1548900375.jpg'),
(18, 'Title-4', 'Content - 4', NULL, 3, NULL, '2021-12-03 19:20:11', '2021-12-03 19:20:11', NULL, NULL, 'public/uploads/anh-2.jpg'),
(19, 'Title-6', 'Content-6', NULL, 3, NULL, '2021-12-03 19:21:06', '2021-12-03 19:21:06', NULL, NULL, 'public/uploads/anhdep2.jpg'),
(20, 'Title-6', 'Content - 6', NULL, 3, NULL, '2021-12-03 19:32:31', '2021-12-03 19:32:31', NULL, NULL, 'public/uploads/anhdep4.jpg'),
(21, 'Title-7', 'Content-7', NULL, 3, NULL, '2021-12-03 19:54:15', '2021-12-03 19:54:15', NULL, NULL, 'public/uploads/hinh-nen-dep-cho-may-tinh-full-hd-6.jpg'),
(22, 'Title-8', 'Content - 8', NULL, 3, NULL, '2021-12-03 19:55:22', '2021-12-03 19:55:22', NULL, NULL, 'public/uploads/anhdep7.jpeg'),
(23, 'Title-9', 'Content-9', NULL, 3, NULL, '2021-12-03 19:56:26', '2021-12-03 19:56:26', NULL, NULL, 'public/uploads/hinh-nen-dep-cho-may-tinh-full-hd-6.jpg'),
(24, 'Title-10', 'Content-10', NULL, 3, NULL, '2021-12-06 18:45:58', '2021-12-06 18:45:58', NULL, NULL, 'public/uploads/anhdep6.jpg'),
(25, 'Title-11', 'Content-11', NULL, 3, NULL, '2021-12-06 18:48:30', '2021-12-06 18:48:30', NULL, NULL, 'public/uploads/anhdep2.jpg'),
(26, 'Title-12', 'Content-12', NULL, 3, NULL, '2021-12-06 18:48:49', '2021-12-06 18:48:49', NULL, NULL, 'public/uploads/anhdep4.jpg'),
(27, 'Title-13', 'Content-13', NULL, 3, NULL, '2021-12-06 18:49:21', '2021-12-06 18:49:21', NULL, NULL, 'public/uploads/anhdep1.jpg'),
(28, 'Title-14', 'Content-14', NULL, 3, NULL, '2021-12-06 18:49:35', '2021-12-06 18:49:35', NULL, NULL, 'public/uploads/anhdep7.jpeg'),
(29, 'Title-15', 'Content-15', NULL, 3, NULL, '2021-12-06 18:49:49', '2021-12-06 18:49:49', NULL, NULL, 'public/uploads/hinh-nen-dep-cho-may-tinh-full-hd-19.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) NOT NULL,
  `product_cat_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `content`, `thumbnail`, `price`, `product_cat_id`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 'Product-1', 'Content-1', 'images/product-1.jpg', 10000, 1, 2, NULL, NULL),
(3, 'Product-2', 'Content-2', 'images/product-2.jpg', 12000, 1, 2, NULL, NULL),
(4, 'Product-3', 'Content-3', 'images/product-3.jpg', 20000, 2, 3, NULL, NULL),
(6, 'Product-4', 'Content product-4', 'images/product-4.jpg', 650000, 2, 3, NULL, NULL),
(7, 'Product-5', 'Content-product-5', 'images/product-4.jpg', 118900, 1, 3, NULL, NULL),
(8, 'Product-6', 'Content-product-6', 'images/product-2.jpg', 15000, 2, 3, NULL, NULL),
(9, 'Product-7', 'Content-product-7', 'images/product-3.jpg', 190000, 2, 2, NULL, NULL),
(10, 'Product-8', 'Content-product-8', 'images/product-1.jpg', 20000, 2, 2, NULL, NULL),
(11, 'Product-9', 'Content-product-9', 'images/product-1.jpg', 650000, 1, 2, NULL, NULL),
(12, 'Product-10', 'Content-produuct-10', 'images/product-3.jpg', 50000, 1, 3, NULL, NULL),
(13, 'Product-11', 'Content-product-11', 'images/product-4.jpg', 190000, 2, 2, NULL, NULL),
(14, 'Product-12', 'Content-product-12', 'images/product-3.jpg', 21000, 2, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products_cat`
--

CREATE TABLE `products_cat` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_cat`
--

INSERT INTO `products_cat` (`id`, `name`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'Telephone', 1, NULL, NULL),
(2, 'Computer', 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles_user`
--

CREATE TABLE `roles_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
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
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Tran Thi Nguyen', 'Tranthinguyen1999@gmail.com', NULL, '1c50251dd2edcd3862d94d7c6b3791dc', NULL, NULL, NULL),
(3, 'Nguyen Gia Thanh', 'nguyengiathanh1999@gmail.com', NULL, '$2y$10$LhY7Hj9tT9BelteFNnmVC.AyiIo5FMIg2gH7HRRt5Rk2.qgVscwT.', NULL, NULL, NULL),
(5, 'Cityhunter', 'Cityhunter1999@gmail.com', NULL, '$2y$10$JDxdn6OeVnyoHOo93yx1p.wFUP56nBCxlUEwVFqZIuC9pZAoRCIJK', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_users_id_foreign` (`users_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_user_id_foreign` (`user_id`),
  ADD KEY `products_product_cat_id_foreign` (`product_cat_id`);

--
-- Indexes for table `products_cat`
--
ALTER TABLE `products_cat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles_user`
--
ALTER TABLE `roles_user`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `products_cat`
--
ALTER TABLE `products_cat`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles_user`
--
ALTER TABLE `roles_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_product_cat_id_foreign` FOREIGN KEY (`product_cat_id`) REFERENCES `products_cat` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
