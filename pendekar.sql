-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Jul 2025 pada 10.50
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
-- Database: `pendekar`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin123', 'admin123'),
(3, 'admin1', '$2b$10$uBj1ShKj2jNEsxX8NjBJtOGoWQ7lVa47lS7P/NbAD4DRDRQ7JqG4u');

-- --------------------------------------------------------

--
-- Struktur dari tabel `beda_nama`
--

CREATE TABLE `beda_nama` (
  `id` int(11) NOT NULL,
  `nik` varchar(20) DEFAULT NULL,
  `no_kk` varchar(20) DEFAULT NULL,
  `nama_ktp` varchar(100) DEFAULT NULL,
  `jenis_kelamin` varchar(20) DEFAULT NULL,
  `tempat_lahir` varchar(50) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `agama` varchar(50) DEFAULT NULL,
  `pekerjaan` varchar(100) DEFAULT NULL,
  `nama_di_dokumen` varchar(100) DEFAULT NULL,
  `jenis_dokumen` varchar(100) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `rt` varchar(10) DEFAULT NULL,
  `rw` varchar(10) DEFAULT NULL,
  `desa` varchar(50) DEFAULT NULL,
  `kecamatan` varchar(50) DEFAULT NULL,
  `kab_kota` varchar(50) DEFAULT NULL,
  `provinsi` varchar(50) DEFAULT NULL,
  `kewarganegaraan` varchar(50) DEFAULT NULL,
  `keperluan` text DEFAULT NULL,
  `tambahan_keterangan` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `beda_nama`
--

INSERT INTO `beda_nama` (`id`, `nik`, `no_kk`, `nama_ktp`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `agama`, `pekerjaan`, `nama_di_dokumen`, `jenis_dokumen`, `alamat`, `rt`, `rw`, `desa`, `kecamatan`, `kab_kota`, `provinsi`, `kewarganegaraan`, `keperluan`, `tambahan_keterangan`, `created_at`) VALUES
(6, '4', '4', 'si d', 'laki-laki', 'bandung', '0000-00-00', NULL, 'ceo', 'si d', 'si d', 'jl. jalan', '4', '4', 'si d', 'si d', 'si d', 'si d', 'si d', 'si d', 'si d', '2025-07-14 08:45:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelahiran`
--

CREATE TABLE `kelahiran` (
  `id` int(11) NOT NULL,
  `nik_anak` varchar(20) NOT NULL,
  `no_kk` varchar(20) NOT NULL,
  `nama_anak` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `agama` varchar(50) DEFAULT NULL,
  `anak_ke` int(11) DEFAULT NULL,
  `alamat` text NOT NULL,
  `rt` varchar(5) DEFAULT NULL,
  `rw` varchar(5) DEFAULT NULL,
  `desa` varchar(50) DEFAULT NULL,
  `kecamatan` varchar(50) DEFAULT NULL,
  `kab_kota` varchar(50) DEFAULT NULL,
  `provinsi` varchar(50) DEFAULT NULL,
  `kewarganegaraan` varchar(50) DEFAULT NULL,
  `nama_ayah` varchar(100) DEFAULT NULL,
  `nama_ibu` varchar(100) DEFAULT NULL,
  `keperluan` text DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kelahiran`
--

INSERT INTO `kelahiran` (`id`, `nik_anak`, `no_kk`, `nama_anak`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `agama`, `anak_ke`, `alamat`, `rt`, `rw`, `desa`, `kecamatan`, `kab_kota`, `provinsi`, `kewarganegaraan`, `nama_ayah`, `nama_ibu`, `keperluan`, `keterangan`, `created_at`) VALUES
(21, '2', '2', 'si b', 'laki-laki', 'bandung', '0000-00-00', 'islam', 1, 'jl. suka suka', '2', '2', 'si b', 'si b ', NULL, 'si b', 'si b', 'si b', 'si b', 'b', 'b', '2025-07-14 08:42:36');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kematian`
--

CREATE TABLE `kematian` (
  `id` int(11) NOT NULL,
  `nik` varchar(50) DEFAULT NULL,
  `no_kk` varchar(50) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `jenis_kelamin` varchar(20) DEFAULT NULL,
  `tempat_lahir` varchar(100) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `tanggal_meninggal` date DEFAULT NULL,
  `sebab_kematian` varchar(255) DEFAULT NULL,
  `alamat_domisili` text DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `rt` varchar(10) DEFAULT NULL,
  `rw` varchar(10) DEFAULT NULL,
  `desa` varchar(100) DEFAULT NULL,
  `kecamatan` varchar(100) DEFAULT NULL,
  `kab_kota` varchar(100) DEFAULT NULL,
  `provinsi` varchar(100) DEFAULT NULL,
  `kewarganegaraan` varchar(50) DEFAULT NULL,
  `nama_pelapor` varchar(100) DEFAULT NULL,
  `hubungan_pelapor` varchar(50) DEFAULT NULL,
  `keperluan` text DEFAULT NULL,
  `tambahan_keterangan` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kematian`
--

INSERT INTO `kematian` (`id`, `nik`, `no_kk`, `nama`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `tanggal_meninggal`, `sebab_kematian`, `alamat_domisili`, `alamat`, `rt`, `rw`, `desa`, `kecamatan`, `kab_kota`, `provinsi`, `kewarganegaraan`, `nama_pelapor`, `hubungan_pelapor`, `keperluan`, `tambahan_keterangan`, `created_at`) VALUES
(6, '5', '5', 'si e', 'laki-laki', 'bandung', '0000-00-00', '0000-00-00', 'si e', NULL, 'jl. macet', '5', '5', 'si e', 'si e', 'si e', 'si e', 'si e', 'si e', 'si e', 'si e', 'si e', '2025-07-14 08:46:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `keramaian`
--

CREATE TABLE `keramaian` (
  `id` int(11) NOT NULL,
  `nik_penyelenggara` varchar(50) DEFAULT NULL,
  `no_kk` varchar(50) DEFAULT NULL,
  `nama_penyelenggara` varchar(100) DEFAULT NULL,
  `tempat_lahir` varchar(100) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `pekerjaan` varchar(100) DEFAULT NULL,
  `alamat_acara` text DEFAULT NULL,
  `tanggal_kegiatan` date DEFAULT NULL,
  `waktu_mulai` time DEFAULT NULL,
  `waktu_selesai` time DEFAULT NULL,
  `jenis_acara` varchar(100) DEFAULT NULL,
  `deskripsi_acara` text DEFAULT NULL,
  `keperluan` text DEFAULT NULL,
  `tambahan_keterangan` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `keramaian`
--

INSERT INTO `keramaian` (`id`, `nik_penyelenggara`, `no_kk`, `nama_penyelenggara`, `tempat_lahir`, `tanggal_lahir`, `pekerjaan`, `alamat_acara`, `tanggal_kegiatan`, `waktu_mulai`, `waktu_selesai`, `jenis_acara`, `deskripsi_acara`, `keperluan`, `tambahan_keterangan`, `created_at`) VALUES
(5, '6', '6', 'si f', 'bandung', '0000-00-00', 'ceo', 'jl. lumayan gede', '0000-00-00', '00:00:01', '00:00:03', 'si f', 'si f', 'si f', 'si f', '2025-07-14 08:47:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `permohonan`
--

CREATE TABLE `permohonan` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `jenis_surat` varchar(50) DEFAULT NULL,
  `nama_pemohon` varchar(100) DEFAULT NULL,
  `tanggal_permohonan` datetime DEFAULT current_timestamp(),
  `status` enum('diproses','ditolak','selesai','dikirim') DEFAULT 'diproses',
  `data_lengkap` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`data_lengkap`)),
  `tanggal_dibuat` datetime DEFAULT current_timestamp(),
  `keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `permohonan`
--

INSERT INTO `permohonan` (`id`, `user_id`, `jenis_surat`, `nama_pemohon`, `tanggal_permohonan`, `status`, `data_lengkap`, `tanggal_dibuat`, `keterangan`) VALUES
(28, NULL, 'Surat Keterangan Tidak Mampu', 'si a', '2025-07-14 15:41:08', 'dikirim', '{\"nik\":\"1\",\"no_kk\":\"1\",\"nama\":\"si a\",\"agama\":\"islam\",\"jenis_kelamin\":\"laki-laki\",\"tempat_lahir\":\"bandung\",\"tanggal_lahir\":\"2025-07-17\",\"alamat\":\"jl. sekeliling indah\",\"rt\":\"01\",\"rw\":\"01\",\"desa\":\"dana\",\"kecamatan\":\"dana\",\"kabupaten\":\"dana\",\"provinsi\":\"jawa barat\",\"kewarganegaraan\":\"indonesia\",\"pendidikan_terakhir\":\"s1\",\"pendidikan_ditempuh\":\"s2\",\"pekerjaan\":\"ceo\",\"keperluan\":\"untuk a\",\"tambahan_keterangan\":\"iya a\"}', '2025-07-14 15:41:08', 'Pengajuan sudah dikirim'),
(29, NULL, 'Surat Keterangan Kelahiran', 'si b', '2025-07-14 15:42:36', 'dikirim', '{\"nik_anak\":\"2\",\"no_kk\":\"2\",\"nama_anak\":\"si b\",\"jenis_kelamin\":\"laki-laki\",\"tempat_lahir\":\"bandung\",\"tanggal_lahir\":\"11 juli 2025\",\"agama\":\"islam\",\"anak_ke\":\"1\",\"alamat\":\"jl. suka suka\",\"rt\":\"2\",\"rw\":\"2\",\"desa\":\"si b\",\"kecamatan\":\"si b \",\"kabupaten\":\"si b\",\"provinsi\":\"si b\",\"kewarganegaraan\":\"si b\",\"nama_ayah\":\"si b\",\"nama_ibu\":\"si b\",\"keperluan\":\"b\",\"keterangan\":\"b\"}', '2025-07-14 15:42:36', 'Pengajuan sudah dikirim'),
(30, NULL, 'Surat Keterangan Usaha', 'si c', '2025-07-14 15:44:17', 'dikirim', '{\"nik\":\"3\",\"no_kk\":\"3\",\"nama\":\"si c\",\"jenis_kelamin\":\"laki-laki\",\"tempat_lahir\":\"bandung\",\"tanggal_lahir\":\"211 juli 2025\",\"agama\":\"islam\",\"pekerjaan\":\"ceo\",\"alamat\":\"jl. gede\",\"rt\":\"3\",\"rw\":\"3\",\"desa\":\"si c\",\"kecamatan\":\"si c\",\"kab_kota\":\"si c\",\"provinsi\":\"si c\",\"kewarganegaraan\":\"si c\",\"nama_usaha\":\"si c\",\"jenis_usaha\":\"si c\",\"alamat_usaha\":\"si c\",\"tahun_berdiri\":\"2025\",\"status_tempat\":\"si c\",\"keperluan\":\"si c\",\"tambahan_keterangan\":\"si c\"}', '2025-07-14 15:44:17', 'Pengajuan sudah dikirim'),
(31, NULL, 'Surat Keterangan Beda Nama', 'si d', '2025-07-14 15:45:13', 'dikirim', '{\"nik\":\"4\",\"no_kk\":\"4\",\"nama_ktp\":\"si d\",\"jenis_kelamin\":\"laki-laki\",\"tempat_lahir\":\"bandung\",\"tanggal_lahir\":\"21 juli 2025\",\"agama\":\"\",\"pekerjaan\":\"ceo\",\"nama_di_dokumen\":\"si d\",\"jenis_dokumen\":\"si d\",\"alamat\":\"jl. jalan\",\"rt\":\"4\",\"rw\":\"4\",\"desa\":\"si d\",\"kecamatan\":\"si d\",\"kab_kota\":\"si d\",\"provinsi\":\"si d\",\"kewarganegaraan\":\"si d\",\"keperluan\":\"si d\",\"tambahan_keterangan\":\"si d\"}', '2025-07-14 15:45:13', 'Pengajuan sudah dikirim'),
(32, NULL, 'Surat Keterangan Kematian', 'si e', '2025-07-14 15:46:10', 'dikirim', '{\"nik\":\"5\",\"no_kk\":\"5\",\"nama\":\"si e\",\"jenis_kelamin\":\"laki-laki\",\"tempat_lahir\":\"bandung\",\"tanggal_lahir\":\"9 juli 2025\",\"tanggal_meninggal\":\"4 mei 2022\",\"sebab_kematian\":\"si e\",\"alamat\":\"jl. macet\",\"rt\":\"5\",\"rw\":\"5\",\"desa\":\"si e\",\"kecamatan\":\"si e\",\"kab_kota\":\"si e\",\"provinsi\":\"si e\",\"kewarganegaraan\":\"si e\",\"nama_pelapor\":\"si e\",\"hubungan_pelapor\":\"si e\",\"keperluan\":\"si e\",\"tambahan_keterangan\":\"si e\"}', '2025-07-14 15:46:10', 'Pengajuan sudah dikirim'),
(33, NULL, 'Surat Izin Keramaian', 'si f', '2025-07-14 15:47:15', 'dikirim', '{\"nik_penyelenggara\":\"6\",\"no_kk\":\"6\",\"nama_penyelenggara\":\"si f\",\"tempat_lahir\":\"bandung\",\"tanggal_lahir\":\"3 juli 2025\",\"pekerjaan\":\"ceo\",\"alamat_acara\":\"jl. lumayan gede\",\"tanggal_kegiatan\":\"3 juli 2025\",\"waktu_mulai\":\"1 juli 2025\",\"waktu_selesai\":\"3 juli 2025\",\"jenis_acara\":\"si f\",\"deskripsi_acara\":\"si f\",\"keperluan\":\"si f\",\"tambahan_keterangan\":\"si f\"}', '2025-07-14 15:47:15', 'Pengajuan sudah dikirim');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tidak_mampu`
--

CREATE TABLE `tidak_mampu` (
  `id` int(11) NOT NULL,
  `nik` varchar(20) NOT NULL,
  `no_kk` varchar(20) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `agama` varchar(50) DEFAULT NULL,
  `jenis_kelamin` varchar(20) DEFAULT NULL,
  `tempat_lahir` varchar(100) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `rt` varchar(10) DEFAULT NULL,
  `rw` varchar(10) DEFAULT NULL,
  `desa` varchar(100) DEFAULT NULL,
  `kecamatan` varchar(100) DEFAULT NULL,
  `kabupaten` varchar(100) DEFAULT NULL,
  `provinsi` varchar(100) DEFAULT NULL,
  `kewarganegaraan` varchar(50) DEFAULT NULL,
  `pendidikan_terakhir` varchar(100) DEFAULT NULL,
  `pendidikan_ditempuh` varchar(100) DEFAULT NULL,
  `pekerjaan` varchar(100) DEFAULT NULL,
  `keperluan` text DEFAULT NULL,
  `tambahan_keterangan` text DEFAULT NULL,
  `status` enum('Dikirim','Diproses','Selesai','Ditolak') DEFAULT 'Dikirim',
  `tanggal_pengajuan` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tidak_mampu`
--

INSERT INTO `tidak_mampu` (`id`, `nik`, `no_kk`, `nama`, `agama`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `rt`, `rw`, `desa`, `kecamatan`, `kabupaten`, `provinsi`, `kewarganegaraan`, `pendidikan_terakhir`, `pendidikan_ditempuh`, `pekerjaan`, `keperluan`, `tambahan_keterangan`, `status`, `tanggal_pengajuan`) VALUES
(18, '1', '1', 'si a', NULL, 'laki-laki', 'bandung', '2025-07-17', 'jl. sekeliling indah', '01', '01', 'dana', 'dana', 'dana', 'jawa barat', NULL, NULL, NULL, NULL, 'untuk a', NULL, 'Dikirim', '2025-07-14 08:41:08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `usaha`
--

CREATE TABLE `usaha` (
  `id` int(11) NOT NULL,
  `nik` varchar(50) DEFAULT NULL,
  `no_kk` varchar(50) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `jenis_kelamin` varchar(20) DEFAULT NULL,
  `tempat_lahir` varchar(100) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `agama` varchar(50) DEFAULT NULL,
  `pekerjaan` varchar(100) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `rt` varchar(10) DEFAULT NULL,
  `rw` varchar(10) DEFAULT NULL,
  `desa` varchar(100) DEFAULT NULL,
  `kecamatan` varchar(100) DEFAULT NULL,
  `kab_kota` varchar(100) DEFAULT NULL,
  `provinsi` varchar(100) DEFAULT NULL,
  `kewarganegaraan` varchar(50) DEFAULT NULL,
  `nama_usaha` varchar(100) DEFAULT NULL,
  `jenis_usaha` varchar(100) DEFAULT NULL,
  `alamat_usaha` text DEFAULT NULL,
  `tahun_berdiri` varchar(20) DEFAULT NULL,
  `status_tempat` varchar(50) DEFAULT NULL,
  `keperluan` text DEFAULT NULL,
  `tambahan_keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `usaha`
--

INSERT INTO `usaha` (`id`, `nik`, `no_kk`, `nama`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `agama`, `pekerjaan`, `alamat`, `rt`, `rw`, `desa`, `kecamatan`, `kab_kota`, `provinsi`, `kewarganegaraan`, `nama_usaha`, `jenis_usaha`, `alamat_usaha`, `tahun_berdiri`, `status_tempat`, `keperluan`, `tambahan_keterangan`) VALUES
(7, '3', '3', 'si c', 'laki-laki', 'bandung', '0000-00-00', NULL, NULL, 'jl. gede', '3', '3', 'si c', 'si c', 'si c', 'si c', NULL, 'si c', 'si c', 'si c', NULL, NULL, 'si c', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nik` varchar(20) DEFAULT NULL,
  `pin` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `nik`, `pin`) VALUES
(3, '140704', '140704'),
(4, '130405', '130405');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indeks untuk tabel `beda_nama`
--
ALTER TABLE `beda_nama`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kelahiran`
--
ALTER TABLE `kelahiran`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kematian`
--
ALTER TABLE `kematian`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `keramaian`
--
ALTER TABLE `keramaian`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `permohonan`
--
ALTER TABLE `permohonan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tidak_mampu`
--
ALTER TABLE `tidak_mampu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `usaha`
--
ALTER TABLE `usaha`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nik` (`nik`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `beda_nama`
--
ALTER TABLE `beda_nama`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `kelahiran`
--
ALTER TABLE `kelahiran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `kematian`
--
ALTER TABLE `kematian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `keramaian`
--
ALTER TABLE `keramaian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `permohonan`
--
ALTER TABLE `permohonan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT untuk tabel `tidak_mampu`
--
ALTER TABLE `tidak_mampu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `usaha`
--
ALTER TABLE `usaha`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
