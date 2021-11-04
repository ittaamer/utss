-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Des 2020 pada 04.28
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bibibi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barangs`
--

CREATE TABLE `barangs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(277) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `barangs`
--

INSERT INTO `barangs` (`id`, `nama_barang`, `gambar`, `harga`, `stok`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, 'the ordinary', 'ordinaryset.jpg', 1000000, 2, 'Skincare set dengan kandungan AHA dan Hyaluronic acid meremajakan dan mencerahkan kulit', '2020-11-26 13:45:15', '2020-12-17 07:21:13'),
(2, 'Barebear Acne mask', 'maskbear.jpg', 20000, 1, 'Sheet mask khusus untuk kulit berjerawat', '2020-11-26 13:45:15', '2020-12-17 07:21:13'),
(3, 'Laneige lipmask', 'lipmask.jpg', 300000, 6, 'melembabkan dan menutrisi bibir yang pecah pecah saat malam', '2020-11-26 13:52:07', '2020-12-13 21:03:09'),
(4, 'Ordinary Rosee', 'serumrose.jpg', 170000, 29, 'dengan mawar prancis risee duveit memberikan hidrasi dan melembapkan sampai 3 lapisan kulit', '2020-12-17 13:48:15', '2020-12-17 13:48:15'),
(5, 'musse banana holy', 'banana.png', 20000, 44, 'kaya akan kandungan vit a c dan e dengan super fruits\r\n', '2020-12-17 14:00:01', '2020-12-17 14:00:01'),
(6, 'essence serum AHA BHA', 'essence.jpg', 300000, 7, 'AHA BHA PHA lotion ', '2020-12-17 14:00:01', '2020-12-17 14:00:01');

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
(1, '2020_10_12_000000_create_users_table', 1),
(2, '2020_10_12_100000_create_password_resets_table', 1),
(3, '2020_11_14_012420_create_barangs_table', 1),
(4, '2020_11_14_012711_create_pesanans_table', 1),
(5, '2020_11_14_012822_create_pesanan_details_table', 1),
(6, '2020_11_25_145935_create_pesanan_detaills_table', 1);

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
-- Struktur dari tabel `pesanans`
--

CREATE TABLE `pesanans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode` int(11) NOT NULL,
  `jumlah_harga` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pesanans`
--

INSERT INTO `pesanans` (`id`, `user_id`, `tanggal`, `status`, `kode`, `jumlah_harga`, `created_at`, `updated_at`) VALUES
(1, 3, '2020-11-29', '1', 334, 20000, '2020-11-29 00:31:55', '2020-12-02 08:00:32'),
(2, 3, '2020-12-14', '1', 379, 300000, '2020-12-13 20:46:34', '2020-12-13 21:03:09'),
(3, 5, '2020-12-17', '1', 405, 1040000, '2020-12-17 07:17:02', '2020-12-17 07:21:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesanan_detaills`
--

CREATE TABLE `pesanan_detaills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesanan_details`
--

CREATE TABLE `pesanan_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `barang_id` int(11) NOT NULL,
  `pesanan_id` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `jumlah_harga` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pesanan_details`
--

INSERT INTO `pesanan_details` (`id`, `barang_id`, `pesanan_id`, `jumlah`, `jumlah_harga`, `created_at`, `updated_at`) VALUES
(6, 2, 1, 1, 20000, '2020-12-02 07:11:39', '2020-12-02 07:11:39'),
(7, 3, 2, 1, 300000, '2020-12-13 20:46:35', '2020-12-13 20:46:35'),
(9, 1, 3, 1, 1000000, '2020-12-17 07:18:34', '2020-12-17 07:18:34'),
(10, 2, 3, 2, 40000, '2020-12-17 07:19:46', '2020-12-17 07:19:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nohp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `alamat`, `nohp`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'ita merliana', 'itamerliana82@gmail.com', NULL, '$2y$10$hmpElx5FdlL9WbHgoxKohu0fHh3zfAJdlKQfmO9E1DLp4mgfADhaK', NULL, NULL, NULL, '2020-11-26 07:24:35', '2020-11-26 07:24:35'),
(2, 'ita', 'itamerliana@yahoo.com', NULL, '$2y$10$XDL/lZlYPsnlptjtKuI/3.3W9rW606pWEApG6l1rch3URiTt2qEga', NULL, NULL, NULL, '2020-11-27 00:29:25', '2020-11-27 00:29:25'),
(3, 'ita', 'i@gmail.com', NULL, '$2y$10$k69HPbsRtZzQ/H/6KHiZ1.IUctdM2BX86GGbw8tr0s/HnBmrIZUy.', 'nn', '1111111', NULL, '2020-11-27 02:49:12', '2020-12-02 07:59:54'),
(4, 'alex', 'alex@gmail.com', NULL, '$2y$10$f0NFAdOMzWVwsg/We7.D4ef1rcR66YkAYV5UJecwaAoQbWhwnxEqy', NULL, NULL, NULL, '2020-12-01 20:49:11', '2020-12-01 20:49:11'),
(5, 'itaa', 'violet1@gmail.com', NULL, '$2y$10$IkZPc2bbJrjI6kgndCgft.UmUR/ZOkVUfoGB.H9SaaQDb8qQyDKaa', 'kediri', '11111111111', NULL, '2020-12-17 07:12:06', '2020-12-17 07:20:51');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barangs`
--
ALTER TABLE `barangs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `pesanans`
--
ALTER TABLE `pesanans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pesanan_detaills`
--
ALTER TABLE `pesanan_detaills`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pesanan_details`
--
ALTER TABLE `pesanan_details`
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
-- AUTO_INCREMENT untuk tabel `barangs`
--
ALTER TABLE `barangs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `pesanans`
--
ALTER TABLE `pesanans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `pesanan_detaills`
--
ALTER TABLE `pesanan_detaills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pesanan_details`
--
ALTER TABLE `pesanan_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
