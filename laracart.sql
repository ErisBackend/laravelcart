-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Sep 2022 pada 09.35
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laracart`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `categori`
--

CREATE TABLE `categori` (
  `prdcatid` int(10) UNSIGNED NOT NULL,
  `catname` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` int(10) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(13, '2019_08_19_000000_create_failed_jobs_table', 1),
(14, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(17, '2014_10_12_200000_add_two_factor_columns_to_users_table', 2),
(22, '2014_10_12_000000_create_users_table', 3),
(23, '2014_10_12_100000_create_password_resets_table', 3),
(24, '2018_11_07_092708_create_category_table', 3),
(25, '2022_07_26_204914_create_products_table', 3),
(29, '2021_01_10_064234_create_sessions_table', 4),
(30, '2022_09_03_121914_create_orders_table', 4),
(31, '2022_09_03_123500_create_order_details_table', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `ordersidencytpe` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usersid` int(11) NOT NULL,
  `ordfullname` char(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordmail` char(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordnohp` char(13) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordalamat` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordkota` char(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordprovinsi` char(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordbyr` char(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordstatus` char(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ordmethod` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`id`, `ordersidencytpe`, `usersid`, `ordfullname`, `ordmail`, `ordnohp`, `ordalamat`, `ordkota`, `ordprovinsi`, `ordbyr`, `ordstatus`, `ordmethod`, `created_at`, `updated_at`) VALUES
(1, 't1L626hCkY0xT7i.v', 2, 'e', 'e@gmail.com', '12345678', 'dada', 'adawd', 'ada', '4,000,000.00', NULL, 'TF', '2022-09-03 06:50:15', '2022-09-03 06:50:15'),
(2, 'Dz.fkaO5SYNyjgVeZ', 2, 'e', 'e@gmail.com', '12345678', 'srsrd', 'bekasi', '12312', '4,000,000.00', NULL, 'COD', '2022-09-03 06:53:55', '2022-09-03 06:53:55'),
(3, 'NYs2rC9xWqdQvXhuf', 2, 'e', 'e@gmail.com', '12345678', 'dawd', 'bekasi', 'adaw', '4,000,000.00', NULL, 'COD', '2022-09-03 06:55:55', '2022-09-03 06:55:55'),
(4, 'vDgIz3pKQhi1nNx.A', 2, 'e', 'e@gmail.com', '12345678', 'ftf', 'bekasi', 'sa', '4,000,000.00', NULL, 'COD', '2022-09-03 06:58:27', '2022-09-03 06:58:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `order_details`
--

CREATE TABLE `order_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `ordersid` int(11) NOT NULL,
  `prdid` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `order_details`
--

INSERT INTO `order_details` (`id`, `ordersid`, `prdid`, `qty`, `created_at`, `updated_at`) VALUES
(1, 2, '2', 1, '2022-09-03 06:55:55', '2022-09-03 06:55:55'),
(2, 200, '200', 3, '2022-09-03 06:55:55', '2022-09-03 06:55:55'),
(3, 2, '2', 1, '2022-09-03 06:58:27', '2022-09-03 06:58:27'),
(4, 200, '200', 3, '2022-09-03 06:58:27', '2022-09-03 06:58:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_id` int(10) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `prdid` int(10) UNSIGNED NOT NULL,
  `prdname` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prdcatid` int(11) NOT NULL,
  `prdsize` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prdprice` int(7) NOT NULL,
  `prddesc` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prdstock` int(11) NOT NULL,
  `prdthumb` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prdslug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `prdid`, `prdname`, `prdcatid`, `prdsize`, `prdprice`, `prddesc`, `prdstock`, `prdthumb`, `prdslug`, `created_at`, `updated_at`) VALUES
(200, 2, 'Samsung Galaxy 1', 1, '', 1000000, 'Cras at nisl et justo sodales tincidunt. Vestibulum rhoncus aliquam mauris, in posuere ex sagittis pellentesque. Curabitur ultrices purus quis nibh vehicula, ut facilisis turpis porttitor. Fusce sed luctus ipsum. Maecenas viverra leo bibendum augue tincid', 23, 'dummyimg.png', 'samsung-galaxi-1', NULL, NULL),
(2, 4, 'Samsung Galaxy2', 2, '', 1000000, 'Cras at nisl et justo sodales tincidunt. Vestibulum rhoncus aliquam mauris, in posuere ex sagittis pellentesque. Curabitur ultrices purus quis nibh vehicula, ut facilisis turpis porttitor. Fusce sed luctus ipsum. Maecenas viverra leo bibendum augue tincid', 23, 'dummyimg.png', 'samsung-galaxi-2', NULL, NULL),
(0, 6, 'Samsung Galaxy', 2, '', 1000000, 'Cras at nisl et justo sodales tincidunt. Vestibulum rhoncus aliquam mauris, in posuere ex sagittis pellentesque. Curabitur ultrices purus quis nibh vehicula, ut facilisis turpis porttitor. Fusce sed luctus ipsum. Maecenas viverra leo bibendum augue tincid', 23, 'dummyimg.png', '0', NULL, NULL),
(0, 8, 'Samsung Galaxy', 2, '', 1000000, 'Cras at nisl et justo sodales tincidunt. Vestibulum rhoncus aliquam mauris, in posuere ex sagittis pellentesque. Curabitur ultrices purus quis nibh vehicula, ut facilisis turpis porttitor. Fusce sed luctus ipsum. Maecenas viverra leo bibendum augue tincid', 23, 'dummyimg.png', '0', NULL, NULL),
(0, 10, 'Samsung Galaxy', 2, '', 1000000, 'Cras at nisl et justo sodales tincidunt. Vestibulum rhoncus aliquam mauris, in posuere ex sagittis pellentesque. Curabitur ultrices purus quis nibh vehicula, ut facilisis turpis porttitor. Fusce sed luctus ipsum. Maecenas viverra leo bibendum augue tincid', 23, 'dummyimg.png', '0', NULL, NULL),
(0, 12, 'Samsung Galaxy', 2, '', 1000000, 'Cras at nisl et justo sodales tincidunt. Vestibulum rhoncus aliquam mauris, in posuere ex sagittis pellentesque. Curabitur ultrices purus quis nibh vehicula, ut facilisis turpis porttitor. Fusce sed luctus ipsum. Maecenas viverra leo bibendum augue tincid', 23, 'dummyimg.png', '0', NULL, NULL),
(0, 14, 'Samsung Galaxy', 2, '', 1000000, 'Cras at nisl et justo sodales tincidunt. Vestibulum rhoncus aliquam mauris, in posuere ex sagittis pellentesque. Curabitur ultrices purus quis nibh vehicula, ut facilisis turpis porttitor. Fusce sed luctus ipsum. Maecenas viverra leo bibendum augue tincid', 23, 'dummyimg.png', '0', NULL, NULL),
(0, 16, 'Samsung Galaxy', 2, '', 1000000, 'Cras at nisl et justo sodales tincidunt. Vestibulum rhoncus aliquam mauris, in posuere ex sagittis pellentesque. Curabitur ultrices purus quis nibh vehicula, ut facilisis turpis porttitor. Fusce sed luctus ipsum. Maecenas viverra leo bibendum augue tincid', 23, 'dummyimg.png', '0', NULL, NULL),
(0, 18, 'Samsung Galaxy', 2, '', 1000000, 'Cras at nisl et justo sodales tincidunt. Vestibulum rhoncus aliquam mauris, in posuere ex sagittis pellentesque. Curabitur ultrices purus quis nibh vehicula, ut facilisis turpis porttitor. Fusce sed luctus ipsum. Maecenas viverra leo bibendum augue tincid', 23, 'dummyimg.png', '0', NULL, NULL),
(0, 20, 'Samsung Galaxy', 2, '', 1000000, 'Cras at nisl et justo sodales tincidunt. Vestibulum rhoncus aliquam mauris, in posuere ex sagittis pellentesque. Curabitur ultrices purus quis nibh vehicula, ut facilisis turpis porttitor. Fusce sed luctus ipsum. Maecenas viverra leo bibendum augue tincid', 23, 'dummyimg.png', '0', NULL, NULL),
(0, 22, 'Samsung Galaxy', 2, '', 1000000, 'Cras at nisl et justo sodales tincidunt. Vestibulum rhoncus aliquam mauris, in posuere ex sagittis pellentesque. Curabitur ultrices purus quis nibh vehicula, ut facilisis turpis porttitor. Fusce sed luctus ipsum. Maecenas viverra leo bibendum augue tincid', 23, 'dummyimg.png', '0', NULL, NULL),
(0, 24, 'Samsung Galaxy', 2, '', 1000000, 'Cras at nisl et justo sodales tincidunt. Vestibulum rhoncus aliquam mauris, in posuere ex sagittis pellentesque. Curabitur ultrices purus quis nibh vehicula, ut facilisis turpis porttitor. Fusce sed luctus ipsum. Maecenas viverra leo bibendum augue tincid', 23, 'dummyimg.png', '0', NULL, NULL),
(0, 26, 'Sepatu', 1, '', 1000000, 'Cras at nisl et justo sodales tincidunt. Vestibulum rhoncus aliquam mauris, in posuere ex sagittis pellentesque. Curabitur ultrices purus quis nibh vehicula, ut facilisis turpis porttitor. Fusce sed luctus ipsum. Maecenas viverra leo bibendum augue tincid', 23, '1.png', '0', NULL, NULL),
(0, 28, 'Sepatu', 1, '', 1000000, 'Cras at nisl et justo sodales tincidunt. Vestibulum rhoncus aliquam mauris, in posuere ex sagittis pellentesque. Curabitur ultrices purus quis nibh vehicula, ut facilisis turpis porttitor. Fusce sed luctus ipsum. Maecenas viverra leo bibendum augue tincid', 23, '1.png', '0', NULL, NULL),
(0, 30, 'Sepatu', 1, '', 1000000, 'Cras at nisl et justo sodales tincidunt. Vestibulum rhoncus aliquam mauris, in posuere ex sagittis pellentesque. Curabitur ultrices purus quis nibh vehicula, ut facilisis turpis porttitor. Fusce sed luctus ipsum. Maecenas viverra leo bibendum augue tincid', 23, '1.png', '0', NULL, NULL),
(0, 32, 'Sepatu', 1, '', 1000000, 'Cras at nisl et justo sodales tincidunt. Vestibulum rhoncus aliquam mauris, in posuere ex sagittis pellentesque. Curabitur ultrices purus quis nibh vehicula, ut facilisis turpis porttitor. Fusce sed luctus ipsum. Maecenas viverra leo bibendum augue tincid', 23, '1.png', '0', NULL, NULL),
(0, 34, 'Sepatu', 1, '', 1000000, 'Cras at nisl et justo sodales tincidunt. Vestibulum rhoncus aliquam mauris, in posuere ex sagittis pellentesque. Curabitur ultrices purus quis nibh vehicula, ut facilisis turpis porttitor. Fusce sed luctus ipsum. Maecenas viverra leo bibendum augue tincid', 23, '1.png', '0', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin1@gmail.com', NULL, '5f4dcc3b5aa765d61d8327deb882cf99', NULL, NULL, NULL, NULL, NULL),
(2, 'eris', 'e@mail.com', NULL, '$2y$10$zEi0n4nHlXtrrJSIoV5h1OYx8bK/WU8hcAsu5/l3bbwQl/EWIpGim', 'iNz1JspmNRl7jhmWsbROlBAg6WTAGlNnT0twyFGND1ebs0BBCzJM70IXEi2l', NULL, NULL, '2022-09-03 05:00:24', '2022-09-03 05:00:24'),
(3, 'admin', 'admin@gmail.com', NULL, '$2y$10$/kW/s.r58RhcfwR77h2zQuU.22LSCAxaxn8mU4QG6J/7IZ6/vCo/.', 'C7OorT6tUIBHFE4r7ID1i3GI0oCHEQPvBfYBVdFbjAfXI8jDbFGHUQXQt8oN', NULL, NULL, '2022-09-03 05:16:40', '2022-09-03 05:16:40');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `categori`
--
ALTER TABLE `categori`
  ADD PRIMARY KEY (`prdcatid`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_id_tokenable_type_index` (`tokenable_id`,`tokenable_type`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`prdid`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `categori`
--
ALTER TABLE `categori`
  MODIFY `prdcatid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `prdid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
