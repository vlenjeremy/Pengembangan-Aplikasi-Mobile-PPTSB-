-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 04 Jun 2024 pada 07.27
-- Versi server: 8.0.30
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_pptsb`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota`
--

CREATE TABLE `anggota` (
  `id` int NOT NULL,
  `Nama_depan` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Nama_belakang` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Gelar_depan` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Gelar_belakang` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Tempat_lahir` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Jenis_kelamin` varchar(15) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Golongan_darah` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Nomor_telepon` int DEFAULT NULL,
  `Foto` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Id_status` int DEFAULT NULL,
  `Id_hubungan_keluarga` int DEFAULT NULL,
  `Id_pekerjaan` int DEFAULT NULL,
  `Id_pendidikan` int DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota_keluarga`
--

CREATE TABLE `anggota_keluarga` (
  `id` int NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nik` int NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `beasiswa`
--

CREATE TABLE `beasiswa` (
  `id` int NOT NULL,
  `nama` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `alamat` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `foto_nilai_rapor` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `keterangan` varchar(100) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `bedahrumah`
--

CREATE TABLE `bedahrumah` (
  `id` int NOT NULL,
  `nama_pemilik` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `alamat` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `foto` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `keterangan` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `bedahrumah`
--

INSERT INTO `bedahrumah` (`id`, `nama_pemilik`, `alamat`, `foto`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, 'Samuel', 'Porsea', '', 'Saya butuh rumah yang bagus', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cabang`
--

CREATE TABLE `cabang` (
  `Id_cabang` int NOT NULL,
  `Kode_cabang` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Nama_cabang` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Alamat_cabang` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Nama_kepala_cabang` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Tanggal_berdiri` date DEFAULT NULL,
  `Id_regional` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `cabang`
--

INSERT INTO `cabang` (`Id_cabang`, `Kode_cabang`, `Nama_cabang`, `Alamat_cabang`, `Nama_kepala_cabang`, `Tanggal_berdiri`, `Id_regional`, `created_at`, `updated_at`) VALUES
(1, '77797979', 'Laguboti Simpang Empat', 'Sitoluama', 'Christian', '2024-05-02', 1, '2024-05-27 11:09:58', '2024-05-27 04:09:58'),
(2, '777900000', 'Laguboti Del', 'Sitoluamaaa', 'Christian', '2024-07-02', 1, '2024-05-27 02:45:28', '2024-05-26 19:45:28'),
(3, '9090909090', 'Borbor', 'Parsoburan', 'Andre Sinaga', '2024-05-05', 1, '2024-05-26 19:08:38', '2024-05-26 19:08:38'),
(4, '343434', 'Balige', 'Soposurung', 'Erikson', '2024-05-08', 3, '2024-05-27 04:09:31', '2024-05-27 04:09:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hubungan_keluarga`
--

CREATE TABLE `hubungan_keluarga` (
  `Id_hubungan_keluarga` int NOT NULL,
  `Keterangan` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `hubungan_keluarga`
--

INSERT INTO `hubungan_keluarga` (`Id_hubungan_keluarga`, `Keterangan`, `created_at`, `updated_at`) VALUES
(222, 'Kepala Keluarga', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kepala_keluarga`
--

CREATE TABLE `kepala_keluarga` (
  `id` int NOT NULL,
  `nama` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_06_01_144150_create_user_register_token_table', 2);

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
-- Struktur dari tabel `pekerjaan`
--

CREATE TABLE `pekerjaan` (
  `id` int NOT NULL,
  `Nama_pekerjaan` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendidikan`
--

CREATE TABLE `pendidikan` (
  `id` int NOT NULL,
  `tingkat_pendidikan` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengurus`
--

CREATE TABLE `pengurus` (
  `id` int NOT NULL,
  `nama` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `tgl_sk_pengangkatan` date NOT NULL,
  `no_sk_pengangkatan` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pusat`
--

CREATE TABLE `pusat` (
  `Id_pusat` int NOT NULL,
  `Kode_pusat` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Nama_pusat` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Alamat_pusat` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Nama_kepala_pusat` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pusat`
--

INSERT INTO `pusat` (`Id_pusat`, `Kode_pusat`, `Nama_pusat`, `Alamat_pusat`, `Nama_kepala_pusat`, `updated_at`, `created_at`) VALUES
(2, '111233', 'Pusat Baru', 'Alamat Baru', 'David Sinaga', '2024-06-03 00:30:35', '2024-05-22 07:01:05'),
(5, '3333', 'Borbor', 'Jln.Diponegoro No.56', 'Syahrial Sinaga', '2024-05-25 16:48:58', '2024-05-22 19:23:46'),
(6, '890390', 'Laguboti', 'Sitoluama', 'Felix Tua Sinaga', '2024-05-25 16:49:41', '2024-05-22 19:25:00'),
(9, '6688', 'gbg6', 'tbhyh', 'f gyg', '2024-05-26 03:44:25', '2024-05-26 03:44:25'),
(10, '12s33', 'Pusat5', 'Balige', 'Yulanda', '2024-05-27 03:50:15', '2024-05-26 06:52:48'),
(11, '223', 'Pusat1', 'Sitoluama', 'Vlen', '2024-05-27 03:49:27', '2024-05-27 03:49:27'),
(2, '111233', 'Pusat Baru', 'Alamat Baru', 'David Sinaga', '2024-06-03 00:30:35', '2024-05-22 07:01:05'),
(5, '3333', 'Borbor', 'Jln.Diponegoro No.56', 'Syahrial Sinaga', '2024-05-25 16:48:58', '2024-05-22 19:23:46'),
(6, '890390', 'Laguboti', 'Sitoluama', 'Felix Tua Sinaga', '2024-05-25 16:49:41', '2024-05-22 19:25:00'),
(9, '6688', 'gbg6', 'tbhyh', 'f gyg', '2024-05-26 03:44:25', '2024-05-26 03:44:25'),
(10, '12s33', 'Pusat5', 'Balige', 'Yulanda', '2024-05-27 03:50:15', '2024-05-26 06:52:48'),
(11, '223', 'Pusat1', 'Sitoluama', 'Vlen', '2024-05-27 03:49:27', '2024-05-27 03:49:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `regional`
--

CREATE TABLE `regional` (
  `Id_regional` int NOT NULL,
  `Kode_regional` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Nama_regional` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Alamat_regional` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Nama_kepala_regional` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Id_pusat` int DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `regional`
--

INSERT INTO `regional` (`Id_regional`, `Kode_regional`, `Nama_regional`, `Alamat_regional`, `Nama_kepala_regional`, `Id_pusat`, `updated_at`, `created_at`) VALUES
(1, 'ABC123', 'Regional A', 'Jl. Contoh No. 123', 'John Doe', 1, '2024-05-26 08:12:04', '2024-05-26 08:12:04'),
(2, '566', 'bhn', 'nn', 'njmj', 6, '2024-05-26 09:25:54', '2024-05-26 09:25:54'),
(3, '121212', 'Tarutung', 'Siborong borong', 'Budi', 10, '2024-05-27 03:52:50', '2024-05-27 03:52:31'),
(1, 'ABC123', 'Regional A', 'Jl. Contoh No. 123', 'John Doe', 1, '2024-05-26 08:12:04', '2024-05-26 08:12:04'),
(2, '566', 'bhn', 'nn', 'njmj', 6, '2024-05-26 09:25:54', '2024-05-26 09:25:54'),
(3, '121212', 'Tarutung', 'Siborong borong', 'Budi', 10, '2024-05-27 03:52:50', '2024-05-27 03:52:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sektor`
--

CREATE TABLE `sektor` (
  `Id_sektor` int NOT NULL,
  `Kode_sektor` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Nama_sektor` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Alamat_sektor` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Nama_kepala_sektor` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Tanggal_berdiri` date DEFAULT NULL,
  `Id_cabang` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `sektor`
--

INSERT INTO `sektor` (`Id_sektor`, `Kode_sektor`, `Nama_sektor`, `Alamat_sektor`, `Nama_kepala_sektor`, `Tanggal_berdiri`, `Id_cabang`, `created_at`, `updated_at`) VALUES
(2, '12345', 'Bandung', 'Jalan Sudirman', 'Michael Saragih', '2023-01-15', 2, '2024-05-26 20:45:39', '2024-05-27 04:11:25'),
(3, '67676700000', 'Simalungun', 'Pematang Siantar', 'Johannes Saragih', '2024-05-14', 3, '2024-05-26 20:47:54', '2024-05-26 20:58:11'),
(4, '7079797', 'Aekunsim', 'Kecamatan Borbor', 'Budi Simanjuntak', '2024-05-12', 2, '2024-05-26 20:57:40', '2024-05-26 20:57:40'),
(5, '121212', 'Laguboti', 'Sitoluama', 'Juan', '2024-05-01', 2, '2024-05-27 04:11:06', '2024-05-27 04:11:06'),
(6, '121212', 'Del', 'Sitoluama', 'Juan', '2024-05-31', 2, '2024-05-27 19:08:03', '2024-05-27 19:08:03'),
(2, '12345', 'Bandung', 'Jalan Sudirman', 'Michael Saragih', '2023-01-15', 2, '2024-05-26 20:45:39', '2024-05-27 04:11:25'),
(3, '67676700000', 'Simalungun', 'Pematang Siantar', 'Johannes Saragih', '2024-05-14', 3, '2024-05-26 20:47:54', '2024-05-26 20:58:11'),
(4, '7079797', 'Aekunsim', 'Kecamatan Borbor', 'Budi Simanjuntak', '2024-05-12', 2, '2024-05-26 20:57:40', '2024-05-26 20:57:40'),
(5, '121212', 'Laguboti', 'Sitoluama', 'Juan', '2024-05-01', 2, '2024-05-27 04:11:06', '2024-05-27 04:11:06'),
(6, '121212', 'Del', 'Sitoluama', 'Juan', '2024-05-31', 2, '2024-05-27 19:08:03', '2024-05-27 19:08:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sektors`
--

CREATE TABLE `sektors` (
  `id` int NOT NULL,
  `kode_sektor` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `nama_sektor` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `alamat_sektor` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `nama_kepala_sektor` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `sektors`
--

INSERT INTO `sektors` (`id`, `kode_sektor`, `nama_sektor`, `alamat_sektor`, `nama_kepala_sektor`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '1232', 'Lestari Indah', 'Makadame Raya sekitarnya', 'Prabowo Subianto', '2024-05-06 14:16:07', '2024-05-07 09:44:24', '2024-05-07 09:44:24'),
(2, '4523', 'Nusa Harapan', 'Angasana Raya sekitarnya', 'Susilo Bambang Yudhoyono', '2024-05-07 01:25:46', '2024-05-07 01:25:46', NULL),
(3, '4523f', 'Dolok Saribu', 'Koramil', 'JR Saragih', '2024-05-07 01:37:53', '2024-05-07 01:37:53', NULL),
(4, '4524', 'Tiga Dolok', 'Perumnas', 'JR Saragih', '2024-05-07 01:38:52', '2024-05-07 01:38:52', NULL),
(5, '45245', 'Tapian Dolok', 'Hosana', 'Marihot', '2024-05-07 01:48:14', '2024-05-07 01:48:14', NULL),
(7, '451245', 'Serbelawan', 'Merdeka sekitarnya', 'Dr Wahidin', '2024-05-07 09:16:15', '2024-05-07 09:16:15', NULL),
(8, '451245', 'Serbelawan', 'Merdeka sekitarnya', 'Dr Wahidin', '2024-05-07 09:16:47', '2024-05-07 09:16:47', NULL),
(9, '451245', 'Serbelawan', 'Merdeka sekitarnya', 'Dr Wahidin', '2024-05-07 09:17:00', '2024-05-07 09:17:00', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `status`
--

CREATE TABLE `status` (
  `id` int NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(15, 'Marudut Pasaribu', 'marudut@gmail.com', '$2y$10$FAw8czPaeaT5UKyGC/siYuWqEYXo3HqgG8W/J.261HTjJ9MyN7ewW', '2024-06-03 01:35:21', '2024-06-03 01:35:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_register_token`
--

CREATE TABLE `user_register_token` (
  `Id_anggota_registrasi` int NOT NULL,
  `kode_registrasi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_time` timestamp NULL DEFAULT NULL,
  `modified_time` timestamp NULL DEFAULT NULL,
  `expired_time` timestamp NULL DEFAULT NULL,
  `reedem_time` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `user_register_token`
--

INSERT INTO `user_register_token` (`Id_anggota_registrasi`, `kode_registrasi`, `created_time`, `modified_time`, `expired_time`, `reedem_time`, `created_at`, `updated_at`) VALUES
(2, 'b7f71', '2024-06-03 01:33:12', '2024-06-03 01:33:26', '2024-06-05 01:33:12', '2024-06-03 01:33:26', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, '25af5', '2024-06-03 01:34:55', '2024-06-03 01:35:09', '2024-06-05 01:34:55', '2024-06-03 01:35:09', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Id_status` (`Id_status`),
  ADD KEY `Id_hubungan_keluarga` (`Id_hubungan_keluarga`),
  ADD KEY `Id_pekerjaan` (`Id_pekerjaan`),
  ADD KEY `Id_pendidikan` (`Id_pendidikan`);

--
-- Indeks untuk tabel `anggota_keluarga`
--
ALTER TABLE `anggota_keluarga`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `beasiswa`
--
ALTER TABLE `beasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `bedahrumah`
--
ALTER TABLE `bedahrumah`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cabang`
--
ALTER TABLE `cabang`
  ADD PRIMARY KEY (`Id_cabang`),
  ADD KEY `Id_regional` (`Id_regional`);

--
-- Indeks untuk tabel `hubungan_keluarga`
--
ALTER TABLE `hubungan_keluarga`
  ADD PRIMARY KEY (`Id_hubungan_keluarga`);

--
-- Indeks untuk tabel `kepala_keluarga`
--
ALTER TABLE `kepala_keluarga`
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
-- Indeks untuk tabel `pekerjaan`
--
ALTER TABLE `pekerjaan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pendidikan`
--
ALTER TABLE `pendidikan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengurus`
--
ALTER TABLE `pengurus`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sektors`
--
ALTER TABLE `sektors`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indeks untuk tabel `user_register_token`
--
ALTER TABLE `user_register_token`
  ADD PRIMARY KEY (`Id_anggota_registrasi`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `anggota_keluarga`
--
ALTER TABLE `anggota_keluarga`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `beasiswa`
--
ALTER TABLE `beasiswa`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `bedahrumah`
--
ALTER TABLE `bedahrumah`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `kepala_keluarga`
--
ALTER TABLE `kepala_keluarga`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `pekerjaan`
--
ALTER TABLE `pekerjaan`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pendidikan`
--
ALTER TABLE `pendidikan`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pengurus`
--
ALTER TABLE `pengurus`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `sektors`
--
ALTER TABLE `sektors`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `status`
--
ALTER TABLE `status`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
