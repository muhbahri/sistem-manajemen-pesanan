-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Agu 2024 pada 07.23
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rotanmanagement`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `materials`
--

CREATE TABLE `materials` (
  `id` int(11) NOT NULL,
  `subcontractor_id` int(11) DEFAULT NULL,
  `bahan` varchar(255) DEFAULT NULL,
  `kuintal` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `materials`
--

INSERT INTO `materials` (`id`, `subcontractor_id`, `bahan`, `kuintal`, `created_at`, `updated_at`) VALUES
(7, 14, 'Rotan Jawit', 7, '2024-07-22 01:32:30', '2024-07-22 01:32:30'),
(8, 14, 'Rotan Pitrit', 7, '2024-07-22 01:32:30', '2024-07-22 01:32:30'),
(9, 15, 'Rotan Jawit', 7, '2024-07-23 07:58:44', '2024-07-23 07:58:44');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(10, '0001_01_01_000000_create_users_table', 1),
(11, '0001_01_01_000001_create_cache_table', 1),
(12, '0001_01_01_000002_create_jobs_table', 1),
(13, '2024_06_17_123652_create_orders_table', 1),
(14, '2024_06_17_123701_create_subcontractors_table', 1),
(15, '2024_06_17_123704_create_stocks_table', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `image` varchar(255) NOT NULL,
  `size` varchar(255) NOT NULL,
  `quantity` int(100) UNSIGNED NOT NULL,
  `price` varchar(255) DEFAULT NULL,
  `total_price` varchar(255) DEFAULT NULL,
  `deadline` date DEFAULT NULL,
  `subkontraktor_name` text DEFAULT 'Belum Ada',
  `progress` int(100) NOT NULL DEFAULT 0,
  `customer_name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `status` text DEFAULT 'Diproses',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`id`, `product_name`, `image`, `size`, `quantity`, `price`, `total_price`, `deadline`, `subkontraktor_name`, `progress`, `customer_name`, `address`, `status`, `created_at`, `updated_at`) VALUES
(49, 'Keranjang Rotan Gantung', '1721002266.jpg', '43x32x45 cm', 150, '65000', '9750000', '2024-09-12', 'Fahrul', 150, 'Ali Baba', 'Jerman', 'Selesai', '2024-07-14 17:56:12', '2024-07-21 23:11:39'),
(50, 'Keranjang Rotan Oval', '1721002391.jpg', '46x36x30 cm', 60, '80000', '4800000', '2024-09-12', 'Fahrul', 60, '', '', 'Selesai', '2024-07-14 18:02:59', '2024-07-19 20:15:09'),
(51, 'Keranjang Bulat', '1721002472.jpg', 'D40xH40 cm', 50, '70000', '3500000', '2024-09-12', 'Fahrul', 12, '', '', 'Diproses', '2024-07-14 18:03:53', '2024-07-21 20:49:50'),
(52, 'Kursi Rotan', '1721002521.jpg', '58x58xH90 cm', 110, '175000', '19250000', '2024-09-12', 'Bahri', 34, '', '', 'Diproses', '2024-07-14 18:04:46', '2024-07-23 08:00:26'),
(53, 'Keranjang Persegi', '1721004364.jpg', '63x43x50 cm', 50, '100000', '5000000', '2024-09-12', 'Belum Ada', 0, '', '', 'Diproses', '2024-07-14 18:05:22', '2024-07-14 18:05:22'),
(54, 'Keranjang Rotan Piknik', '1721047175.jpg', '50x40x30 cm', 50, '130000', '6500000', '2024-09-10', 'Belum Ada', 0, '', '', 'Diproses', '2024-07-15 05:42:19', '2024-07-15 05:42:19'),
(55, 'Keranjang Rotan Sekat', '1721047222.jpg', '38x27xH20 cm', 120, '55000', '6600000', '2024-09-10', 'Belum Ada', 0, '', '', 'Diproses', '2024-07-15 05:42:53', '2024-07-15 05:42:53'),
(56, 'Kursi Rotan', '1721002521.jpg', '10x10', 100, '175000', '17500000', '2024-08-14', 'Fahrul', 100, 'Abdul', 'Arab', 'Selesai', '2024-08-06 01:53:57', '2024-08-06 01:58:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `order_progress_histories`
--

CREATE TABLE `order_progress_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `progress` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `order_progress_histories`
--

INSERT INTO `order_progress_histories` (`id`, `order_id`, `progress`, `created_at`, `updated_at`) VALUES
(1, 51, 10, '2024-07-21 20:37:12', '2024-07-21 20:37:12'),
(2, 51, 12, '2024-07-21 20:49:50', '2024-07-21 20:49:50'),
(3, 52, 34, '2024-07-23 08:00:26', '2024-07-23 08:00:26'),
(4, 56, 0, '2024-08-06 01:56:20', '2024-08-06 01:56:20'),
(5, 56, 50, '2024-08-06 01:56:49', '2024-08-06 01:56:49'),
(6, 56, 100, '2024-08-06 01:58:27', '2024-08-06 01:58:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_name` text NOT NULL,
  `price` varchar(100) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `product_name`, `price`, `image`, `created_at`, `updated_at`) VALUES
(7, 'Keranjang Rotan Gantung', '65000', '1721002266.jpg', '2024-07-14 17:11:06', '2024-07-14 17:11:06'),
(8, 'Keranjang Rotan Oval', '80000', '1721002391.jpg', '2024-07-14 17:13:11', '2024-07-14 17:13:11'),
(9, 'Keranjang Bulat', '70000', '1721002472.jpg', '2024-07-14 17:14:32', '2024-07-14 17:14:32'),
(10, 'Kursi Rotan', '175000', '1721002521.jpg', '2024-07-14 17:15:21', '2024-07-14 17:15:21'),
(11, 'Keranjang Persegi', '100000', '1721004364.jpg', '2024-07-14 17:46:04', '2024-07-14 17:46:04'),
(12, 'Keranjang Rotan Piknik', '130000', '1721047175.jpg', '2024-07-15 05:39:35', '2024-07-15 05:41:22'),
(13, 'Keranjang Rotan Sekat', '55000', '1721047222.jpg', '2024-07-15 05:40:22', '2024-07-15 05:40:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('vljpelRkFPtjxhSD5eTlFVtAoidbEcn1fTYGoMmi', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRVhxSGEwTkY3SGVpSkZ0Z2xMOVUwRTdvcXU4SU1Gc0dKaHIxMms4SiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9tYW5hZ2VyL2Rhc2hib2FyZCI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1722935452);

-- --------------------------------------------------------

--
-- Struktur dari tabel `stocs`
--

CREATE TABLE `stocs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `subcontractors`
--

CREATE TABLE `subcontractors` (
  `id` int(20) NOT NULL,
  `subkontraktor_name` text NOT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `employee` int(25) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `bahan_baku` varchar(255) DEFAULT NULL,
  `kuintal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `subcontractors`
--

INSERT INTO `subcontractors` (`id`, `subkontraktor_name`, `contact`, `employee`, `created_at`, `updated_at`, `bahan_baku`, `kuintal`) VALUES
(14, 'Fahrul', '083181827965', 7, '2024-07-21 23:57:40', '2024-07-22 01:31:45', NULL, NULL),
(15, 'Bahri', '083873694830', 7, '2024-07-23 07:58:44', '2024-07-23 07:58:44', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `usertype` varchar(255) NOT NULL DEFAULT 'manager',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `usertype`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'manager', 'manajer@gmail.com', 'manager', '2024-06-27 09:33:49', '$2y$12$8waryZZwDHlN58emFVJuwuvlQXXUVmocykLgKFIQeOiYNZkitIG0.', 'kx81idFMGlvLkbkdWvcx0q1OFNaThw0ZZBBt93cnBOX077p7nDZdR1Yg0eDX', '2024-06-27 09:33:20', '2024-07-22 01:47:06'),
(2, 'inventaris', 'inven@gmail.com', 'inventaris', '2024-06-27 09:34:36', '$2y$12$k0mJxfnqZeR86L5Ss48InOwIxAWRcmd.9dlOVk27e.XPvxTSQSHVO', NULL, '2024-06-27 09:34:26', '2024-06-27 09:34:36');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indeks untuk tabel `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `materials`
--
ALTER TABLE `materials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subcontractor_id` (`subcontractor_id`);

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
-- Indeks untuk tabel `order_progress_histories`
--
ALTER TABLE `order_progress_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `stocs`
--
ALTER TABLE `stocs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `subcontractors`
--
ALTER TABLE `subcontractors`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `materials`
--
ALTER TABLE `materials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT untuk tabel `order_progress_histories`
--
ALTER TABLE `order_progress_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `stocs`
--
ALTER TABLE `stocs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `subcontractors`
--
ALTER TABLE `subcontractors`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `materials`
--
ALTER TABLE `materials`
  ADD CONSTRAINT `materials_ibfk_1` FOREIGN KEY (`subcontractor_id`) REFERENCES `subcontractors` (`id`);

--
-- Ketidakleluasaan untuk tabel `order_progress_histories`
--
ALTER TABLE `order_progress_histories`
  ADD CONSTRAINT `order_progress_histories_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
