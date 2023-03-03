-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 03, 2023 at 05:51 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e-comm-laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `product_id`, `user_id`, `created_at`, `updated_at`) VALUES
(39, 2, 4, '2023-03-03 02:09:04', '2023-03-03 02:09:04');

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
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_02_20_183706_create_users_table', 1),
(7, '2023_02_20_184557_create_users_table', 2),
(8, '2023_02_25_041516_create_products_table', 3),
(9, '2023_02_27_233240_create_cart_table', 4),
(10, '2023_03_02_020434_create_orders_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `product_id`, `user_id`, `status`, `payment_method`, `payment_status`, `address`, `created_at`, `updated_at`) VALUES
(18, 1, 4, 'pending', 'Online Payment', 'pending', 'vnvnv', '2023-03-02 09:32:42', '2023-03-02 09:32:42'),
(19, 2, 4, 'pending', 'Online Payment', 'pending', 'vnvnv', '2023-03-02 09:32:42', '2023-03-02 09:32:42'),
(20, 3, 1, 'pending', 'EMI', 'pending', 'vnvn', '2023-03-02 09:33:32', '2023-03-02 09:33:32'),
(21, 4, 1, 'pending', 'EMI', 'pending', 'vnvn', '2023-03-02 09:33:32', '2023-03-02 09:33:32'),
(23, 2, 2, 'pending', 'Cash On Delivery', 'pending', 'vxvx', '2023-03-02 09:36:50', '2023-03-02 09:36:50');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallery` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `category`, `description`, `gallery`, `created_at`, `updated_at`) VALUES
(1, 'LG Mobile', '200', 'Mobile', ' LG mobile devices feature innovative technology and powerful operating systems that make it easy to talk, text, surf the web, access documents, track your fitness, play your favorite games and watch videos no matter where you are. And whether you want to', 'https://www.lg.com/us/images/cell-phones/ls970/gallery/large03.jpg', NULL, NULL),
(2, 'Oneplus 11', '400', 'Mobile', ' The OnePlus 11 comes with 6.7-inch AMOLED display with 120Hz refresh rate and Qualcomm Snapdragon 8 Gen 2 processor.', 'https://www.mobigyaan.com/wp-content/uploads/2023/01/OnePlus-11-5G-4.webp', NULL, NULL),
(3, 'Samsung s23', '600', 'Mobile', 'The Samsung Galaxy S23 specs are top-notch including a Snapdragon 8 Gen 2 chipset, 8GB RAM coupled with 128/256GB storage, and a 3900mAh battery.', 'https://media.cnn.com/api/v1/images/stellar/prod/galaxy-s23-product-image-lavender-backl30-hi.jpg?c=16x9&q=h_270,w_480,c_fill', NULL, NULL),
(4, 'Panasonic TV', '350', 'TV', 'From OLEDs to affordable LEDs, Panasonic is reliable name in the field of televisions, putting out consistently good sets year after year', 'https://imageio.forbes.com/specials-images/imageserve/627c2b3fd5d31355c08ee821/0x0.jpg?format=jpg&width=1200', NULL, NULL),
(5, 'Realme 10', '460', 'Mobile', 'Realme 10 4G is powered by an octa-core MediaTek Helio G99 processor. It comes with 4GB, 8GB of RAM.', 'https://cdn-files.kimovil.com/default/0008/02/thumb_701584_default_big.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'aneeta', 'aneeta@gmail.com', '$2y$10$5XdoLA8KB/XdL7aC1LgsWOAOoSDp7MS0a9.4WVsNmPn1kWnI8eKpm', NULL, NULL),
(2, 'emeeta', 'emeeta@gmail.com', '$2y$10$7GuUkvnK0Bm3.hdiqDDtNerlJvXb3tvswglHXKNotki31VoV9mJZW', NULL, NULL),
(4, 'simi', 'simi@gmail.com', '$2y$10$1917Qp2Y/2wFwKt5DHtD6OoBQB8h1.1J7sLEIy4N.TGH.eoB9.6pC', '2023-03-02 09:31:42', '2023-03-02 09:31:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
