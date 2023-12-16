-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Des 2023 pada 17.11
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pps`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bab_materi`
--

CREATE TABLE `bab_materi` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `id_mata_kuliah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `bab_materi`
--

INSERT INTO `bab_materi` (`id`, `nama`, `id_mata_kuliah`) VALUES
(1, 'Biologi dan peranannya dalam kehidupan', 1),
(2, 'Virus dan peranannya dalam kehidupan', 1),
(3, 'Pertidaksamaan', 2),
(4, 'Fungsi Kuadrat', 2),
(5, 'Sistem Persamaan Linear', 2),
(6, 'Persamaan Garis Lurus', 2),
(7, 'Fungsi Kuadrat', 2),
(8, 'Persamaan Kuadrat', 2),
(9, 'Trigonometri', 2),
(10, 'Relasi dan Fungsi', 2),
(11, 'Organisme Prokariotik dan Peranannya dalam kehidupan', 1),
(12, 'Protista dan Peranannya dalam kehidupan', 1),
(13, 'Keanekaragman hayati', 1),
(14, 'Kingdom plantae dan peranannya dalam kehidupan', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jawaban_soal`
--

CREATE TABLE `jawaban_soal` (
  `id` int(11) NOT NULL,
  `id_soal` int(11) NOT NULL,
  `jawaban` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jawaban_soal`
--

INSERT INTO `jawaban_soal` (`id`, `id_soal`, `jawaban`) VALUES
(1, 4, 'pilihan_1'),
(2, 5, 'pilihan_2'),
(3, 6, 'pilihan_1'),
(4, 7, 'pilihan_1'),
(5, 8, 'pilihan_1'),
(6, 9, 'pilihan_1'),
(7, 10, 'pilihan_1'),
(8, 11, 'pilihan_1'),
(9, 12, 'pilihan_1'),
(10, 13, 'pilihan_1'),
(11, 14, 'pilihan_1'),
(12, 15, 'pilihan_1'),
(13, 16, 'pilihan_1'),
(14, 17, 'pilihan_2'),
(15, 18, 'pilihan_2'),
(16, 19, 'pilihan_2'),
(17, 20, 'pilihan_2'),
(18, 21, 'pilihan_2'),
(19, 22, 'pilihan_2'),
(20, 23, 'pilihan_2'),
(21, 24, 'pilihan_2'),
(22, 25, 'pilihan_2'),
(23, 26, 'pilihan_2'),
(24, 27, 'pilihan_3'),
(25, 28, 'pilihan_3'),
(26, 29, 'pilihan_3'),
(27, 30, 'pilihan_3'),
(28, 31, 'pilihan_3'),
(29, 32, 'pilihan_3'),
(30, 33, 'pilihan_3'),
(31, 34, 'pilihan_3'),
(32, 35, 'pilihan_3'),
(33, 36, 'pilihan_3'),
(34, 37, 'pilihan_4'),
(35, 38, 'pilihan_4'),
(36, 39, 'pilihan_4'),
(37, 40, 'pilihan_4'),
(38, 41, 'pilihan_4'),
(39, 42, 'pilihan_4'),
(40, 43, 'pilihan_4'),
(41, 44, 'pilihan_4'),
(42, 45, 'pilihan_4'),
(43, 46, 'pilihan_4'),
(44, 47, 'pilihan_1'),
(45, 48, 'pilihan_1'),
(46, 49, 'pilihan_1'),
(47, 50, 'pilihan_1'),
(48, 51, 'pilihan_1'),
(49, 52, 'pilihan_1'),
(50, 53, 'pilihan_1'),
(51, 54, 'pilihan_1'),
(52, 55, 'pilihan_1'),
(53, 56, 'pilihan_1'),
(54, 57, 'pilihan_2'),
(55, 58, 'pilihan_2'),
(56, 59, 'pilihan_2'),
(57, 60, 'pilihan_2'),
(58, 61, 'pilihan_2'),
(59, 62, 'pilihan_2'),
(60, 63, 'pilihan_2'),
(61, 64, 'pilihan_2'),
(62, 65, 'pilihan_2'),
(63, 66, 'pilihan_2'),
(64, 67, 'pilihan_1'),
(65, 68, 'pilihan_1'),
(66, 69, 'pilihan_1'),
(67, 70, 'pilihan_1'),
(68, 71, 'pilihan_1'),
(69, 72, 'pilihan_1'),
(70, 73, 'pilihan_1'),
(71, 74, 'pilihan_1'),
(72, 75, 'pilihan_1'),
(73, 76, 'pilihan_1'),
(74, 77, 'pilihan_2'),
(75, 78, 'pilihan_2'),
(76, 79, 'pilihan_2'),
(77, 80, 'pilihan_2'),
(78, 81, 'pilihan_2'),
(79, 82, 'pilihan_2'),
(80, 83, 'pilihan_2'),
(81, 84, 'pilihan_2'),
(82, 85, 'pilihan_2'),
(83, 86, 'pilihan_2'),
(84, 87, 'pilihan_3'),
(85, 88, 'pilihan_3'),
(86, 89, 'pilihan_3'),
(87, 90, 'pilihan_3'),
(88, 91, 'pilihan_3'),
(89, 92, 'pilihan_3'),
(90, 93, 'pilihan_3'),
(91, 94, 'pilihan_3'),
(92, 95, 'pilihan_3'),
(93, 96, 'pilihan_3'),
(94, 97, 'pilihan_4'),
(95, 98, 'pilihan_4'),
(96, 99, 'pilihan_4'),
(97, 100, 'pilihan_1'),
(98, 101, 'pilihan_4'),
(99, 102, 'pilihan_4'),
(100, 103, 'pilihan_4'),
(101, 104, 'pilihan_4'),
(102, 105, 'pilihan_4'),
(103, 106, 'pilihan_4'),
(104, 107, 'pilihan_1'),
(105, 108, 'pilihan_1'),
(106, 109, 'pilihan_1'),
(107, 110, 'pilihan_1'),
(108, 111, 'pilihan_1'),
(109, 112, 'pilihan_1'),
(110, 113, 'pilihan_1'),
(111, 114, 'pilihan_1'),
(112, 115, 'pilihan_1'),
(113, 116, 'pilihan_1'),
(114, 117, 'pilihan_2'),
(115, 118, 'pilihan_2'),
(116, 119, 'pilihan_2'),
(117, 120, 'pilihan_2'),
(118, 121, 'pilihan_2'),
(119, 122, 'pilihan_2'),
(120, 123, 'pilihan_2'),
(121, 124, 'pilihan_2'),
(122, 125, 'pilihan_2'),
(123, 126, 'pilihan_2'),
(124, 127, 'pilihan_1'),
(125, 128, 'pilihan_1'),
(126, 3, 'pilihan_2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kumpul_soal`
--

CREATE TABLE `kumpul_soal` (
  `id_paket_soal` int(11) NOT NULL,
  `id_soal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kumpul_soal`
--

INSERT INTO `kumpul_soal` (`id_paket_soal`, `id_soal`) VALUES
(1, 29),
(1, 17),
(1, 10),
(1, 9),
(1, 18),
(1, 28),
(1, 27),
(1, 19),
(1, 6),
(1, 30),
(1, 31),
(1, 20),
(1, 21),
(1, 7),
(1, 8),
(1, 5),
(1, 14),
(1, 4),
(1, 34),
(1, 24),
(1, 33),
(1, 32),
(1, 13),
(1, 12),
(1, 35),
(1, 25),
(1, 15),
(1, 36),
(1, 26),
(1, 16),
(2, 78),
(2, 100),
(2, 88),
(2, 69),
(2, 111),
(2, 97),
(2, 81),
(2, 87),
(2, 80),
(2, 108),
(2, 67),
(2, 101),
(2, 90),
(2, 98),
(2, 77),
(2, 89),
(2, 107),
(2, 70),
(2, 71),
(2, 110),
(2, 109),
(2, 79),
(2, 91),
(2, 68),
(2, 99),
(2, 114),
(2, 94),
(2, 84),
(2, 112),
(2, 102),
(2, 104),
(2, 74),
(2, 72),
(2, 83),
(2, 93),
(2, 92),
(2, 3),
(2, 73),
(2, 82),
(2, 103),
(2, 86),
(2, 95),
(2, 96),
(2, 105),
(2, 75),
(2, 106),
(2, 85),
(2, 115),
(2, 116),
(2, 76),
(4, 8),
(4, 20),
(4, 11),
(4, 27),
(4, 21),
(4, 17),
(4, 9),
(4, 39),
(4, 37),
(4, 7),
(4, 18),
(4, 40),
(4, 6),
(4, 28),
(4, 29),
(4, 30),
(4, 19),
(4, 38),
(4, 41),
(4, 10),
(4, 32),
(4, 4),
(4, 12),
(4, 43),
(4, 24),
(4, 42),
(4, 33),
(4, 5),
(4, 14),
(4, 34),
(4, 44),
(4, 23),
(4, 36),
(4, 46),
(4, 45),
(4, 35),
(4, 15),
(4, 25),
(4, 26),
(4, 16),
(5, 68),
(5, 100),
(5, 111),
(5, 80),
(5, 99),
(5, 3),
(5, 81),
(5, 87),
(5, 88),
(5, 67),
(5, 71),
(5, 89),
(5, 91),
(5, 110),
(5, 97),
(5, 109),
(5, 69),
(5, 78),
(5, 70),
(5, 108),
(5, 98),
(5, 101),
(5, 107),
(5, 77),
(5, 79),
(5, 93),
(5, 73),
(5, 82),
(5, 104),
(5, 84),
(5, 83),
(5, 113),
(5, 102),
(5, 94),
(5, 114),
(5, 103),
(5, 92),
(5, 72),
(5, 112),
(5, 74),
(5, 95),
(5, 105),
(5, 116),
(5, 76),
(5, 86),
(5, 85),
(5, 106),
(5, 115),
(5, 96),
(5, 75),
(6, 88),
(6, 98),
(6, 19),
(6, 21),
(6, 99),
(6, 17),
(6, 100),
(6, 20),
(6, 90),
(6, 91),
(6, 18),
(6, 97),
(6, 89),
(6, 24),
(6, 104),
(6, 94),
(6, 93),
(6, 92),
(6, 103),
(6, 102),
(6, 95),
(6, 26),
(6, 106),
(6, 96),
(6, 105),
(7, 57),
(7, 48),
(7, 60),
(7, 51),
(7, 38),
(7, 21),
(7, 49),
(7, 61),
(7, 40),
(7, 18),
(7, 39),
(7, 20),
(7, 19),
(7, 50),
(7, 47),
(7, 59),
(7, 41),
(7, 58),
(7, 37),
(7, 17),
(7, 62),
(7, 22),
(7, 24),
(7, 54),
(7, 52),
(7, 64),
(7, 23),
(7, 53),
(7, 42),
(7, 63),
(7, 44),
(7, 43),
(7, 26),
(7, 66),
(7, 65),
(7, 45),
(7, 25),
(7, 46),
(7, 55),
(7, 56);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nrp` int(11) NOT NULL,
  `mhs_name` varchar(30) DEFAULT NULL,
  `mhs_addr` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`nrp`, `mhs_name`, `mhs_addr`) VALUES
(11, 'Adi Husada', 'Jl Mangga 123 Surabaya'),
(22, 'Budi Santosa', 'Jl Nanas 54 Surabaya'),
(33, 'Edi Darmadi', 'Jl. Pangsud 2A Surabaya'),
(44, 'Farida Pasha', 'Jl. Gatsu 65 Surabaya'),
(55, 'Gigih Perkasa', 'Jl. ARH 73 Surabaya'),
(66, 'Alvi', 'Jl. Wonokromo Dist.'),
(1333, 'ALVIN', 'ITS');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mata_kuliah`
--

CREATE TABLE `mata_kuliah` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `semester` tinyint(2) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `mata_kuliah`
--

INSERT INTO `mata_kuliah` (`id`, `nama`, `semester`, `updated_at`, `deleted_at`) VALUES
(1, 'Biologi', 1, NULL, NULL),
(2, 'Matematika', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `notifikasi`
--

CREATE TABLE `notifikasi` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `pesan` text NOT NULL,
  `terbaca` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `notifikasi`
--

INSERT INTO `notifikasi` (`id`, `id_user`, `pesan`, `terbaca`) VALUES
(1, 1, 'Telah berhasil menambah paket soal', 0),
(2, 1, 'Telah berhasil menambah paket soal', 0),
(3, 1, 'Telah berhasil menambah paket soal', 0),
(4, 1, 'Telah berhasil menambah paket soal', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `paket_soal`
--

CREATE TABLE `paket_soal` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `banyak_soal` tinyint(3) NOT NULL,
  `id_mata_kuliah` int(11) NOT NULL,
  `waktu_pengerjaan` smallint(3) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `paket_soal`
--

INSERT INTO `paket_soal` (`id`, `nama`, `banyak_soal`, `id_mata_kuliah`, `waktu_pengerjaan`, `updated_at`, `deleted_at`) VALUES
(1, 'Paket Soal Biologi', 30, 1, 60, '2023-11-15 14:37:23', NULL),
(2, 'Paket Soal Matematika', 50, 2, 90, NULL, NULL),
(4, 'Nama Paket Soal', 40, 1, 60, NULL, NULL),
(5, 'Nama Paket Soal 2', 50, 2, 30, NULL, NULL),
(6, 'Paket Soal PPS', 25, 2, 10, NULL, NULL),
(7, 'Paket Soal 224', 40, 1, 20, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(250) NOT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`id`, `username`, `password`, `nama`) VALUES
(1, 'A_L_T', '$2y$10$Dl7Nk9cAsNZPU/VjKhfUjeStuLep5Bh3xBG2Ld9efzV1LTLG40gtS', 'Alvin Tarisa Akbar');

-- --------------------------------------------------------

--
-- Struktur dari tabel `soal`
--

CREATE TABLE `soal` (
  `id` int(11) NOT NULL,
  `soal` varchar(255) NOT NULL,
  `pilihan_1` varchar(255) NOT NULL,
  `pilihan_2` varchar(255) NOT NULL,
  `pilihan_3` varchar(255) NOT NULL,
  `pilihan_4` varchar(255) NOT NULL,
  `pilihan_5` varchar(255) DEFAULT NULL,
  `id_mata_kuliah` int(11) NOT NULL,
  `id_bab_materi` int(11) NOT NULL,
  `kesulitan` tinyint(1) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `soal`
--

INSERT INTO `soal` (`id`, `soal`, `pilihan_1`, `pilihan_2`, `pilihan_3`, `pilihan_4`, `pilihan_5`, `id_mata_kuliah`, `id_bab_materi`, `kesulitan`, `updated_at`, `deleted_at`) VALUES
(3, 'Pertanyaan?', 'S', 'I', 'A', 'P', NULL, 2, 3, 1, '2023-11-15 15:28:26', NULL),
(4, 'Pertanyaan 2?', 'S', 'I', 'A', 'P', NULL, 1, 1, 2, '2023-11-15 15:28:37', NULL),
(5, 'Pertanyaan 3?', 'S', 'I', 'A', 'P', NULL, 1, 1, 2, '2023-11-15 15:28:44', NULL),
(6, 'Soal Baru?', 'A', 'B', 'C', 'D', NULL, 1, 1, 1, NULL, NULL),
(7, 'Pertanyaan Bab 1 Biologi?', 'Benar', 'Salah', 'Salah', 'Salah', NULL, 1, 1, 1, NULL, NULL),
(8, 'Pertanyaan Bab 1 Biologi?', 'Benar', 'Salah', 'Salah', 'Salah', NULL, 1, 1, 1, NULL, NULL),
(9, 'Pertanyaan Bab 1 Biologi?', 'Benar', 'Salah', 'Salah', 'Salah', NULL, 1, 1, 1, NULL, NULL),
(10, 'Pertanyaan Bab 1 Biologi?', 'Benar', 'Salah', 'Salah', 'Salah', NULL, 1, 1, 1, NULL, NULL),
(11, 'Pertanyaan Bab 1 Biologi?', 'Benar', 'Salah', 'Salah', 'Salah', NULL, 1, 1, 1, NULL, NULL),
(12, 'Pertanyaan Bab 1 Biologi?', 'Benar', 'Salah', 'Salah', 'Salah', NULL, 1, 1, 2, NULL, NULL),
(13, 'Pertanyaan Bab 1 Biologi?', 'Benar', 'Salah', 'Salah', 'Salah', NULL, 1, 1, 2, NULL, NULL),
(14, 'Pertanyaan Bab 1 Biologi?', 'Benar', 'Salah', 'Salah', 'Salah', NULL, 1, 1, 2, NULL, NULL),
(15, 'Pertanyaan Bab 1 Biologi?', 'Benar', 'Salah', 'Salah', 'Salah', NULL, 1, 1, 3, NULL, NULL),
(16, 'Pertanyaan Bab 1 Biologi?', 'Benar', 'Salah', 'Salah', 'Salah', NULL, 1, 1, 3, NULL, NULL),
(17, 'Pertanyaan Bab 2 Biologi?', 'Salah', 'Benar', 'Salah', 'Salah', NULL, 1, 2, 1, NULL, NULL),
(18, 'Pertanyaan Bab 2 Biologi?', 'Salah', 'Benar', 'Salah', 'Salah', NULL, 1, 2, 1, NULL, NULL),
(19, 'Pertanyaan Bab 2 Biologi?', 'Salah', 'Benar', 'Salah', 'Salah', NULL, 1, 2, 1, NULL, NULL),
(20, 'Pertanyaan Bab 2 Biologi?', 'Salah', 'Benar', 'Salah', 'Salah', NULL, 1, 2, 1, NULL, NULL),
(21, 'Pertanyaan Bab 2 Biologi?', 'Salah', 'Benar', 'Salah', 'Salah', NULL, 1, 2, 1, NULL, NULL),
(22, 'Pertanyaan Bab 2 Biologi?', 'Salah', 'Benar', 'Salah', 'Salah', NULL, 1, 2, 2, NULL, NULL),
(23, 'Pertanyaan Bab 2 Biologi?', 'Salah', 'Benar', 'Salah', 'Salah', NULL, 1, 2, 2, NULL, NULL),
(24, 'Pertanyaan Bab 2 Biologi?', 'Salah', 'Benar', 'Salah', 'Salah', NULL, 1, 2, 2, NULL, NULL),
(25, 'Pertanyaan Bab 2 Biologi?', 'Salah', 'Benar', 'Salah', 'Salah', NULL, 1, 2, 3, NULL, NULL),
(26, 'Pertanyaan Bab 2 Biologi?', 'Salah', 'Benar', 'Salah', 'Salah', NULL, 1, 2, 3, NULL, NULL),
(27, 'Pertanyaan Bab 3 Biologi?', 'Salah', 'Salah', 'Benar', 'Salah', NULL, 1, 11, 1, NULL, NULL),
(28, 'Pertanyaan Bab 3 Biologi?', 'Salah', 'Salah', 'Benar', 'Salah', NULL, 1, 11, 1, NULL, NULL),
(29, 'Pertanyaan Bab 3 Biologi?', 'Salah', 'Salah', 'Benar', 'Salah', NULL, 1, 11, 1, NULL, NULL),
(30, 'Pertanyaan Bab 3 Biologi?', 'Salah', 'Salah', 'Benar', 'Salah', NULL, 1, 11, 1, NULL, NULL),
(31, 'Pertanyaan Bab 3 Biologi?', 'Salah', 'Salah', 'Benar', 'Salah', NULL, 1, 11, 1, NULL, NULL),
(32, 'Pertanyaan Bab 3 Biologi?', 'Salah', 'Salah', 'Benar', 'Salah', NULL, 1, 11, 2, NULL, NULL),
(33, 'Pertanyaan Bab 3 Biologi?', 'Salah', 'Salah', 'Benar', 'Salah', NULL, 1, 11, 2, NULL, NULL),
(34, 'Pertanyaan Bab 3 Biologi?', 'Salah', 'Salah', 'Benar', 'Salah', NULL, 1, 11, 2, NULL, NULL),
(35, 'Pertanyaan Bab 3 Biologi?', 'Salah', 'Salah', 'Benar', 'Salah', NULL, 1, 11, 3, NULL, NULL),
(36, 'Pertanyaan Bab 3 Biologi?', 'Salah', 'Salah', 'Benar', 'Salah', NULL, 1, 11, 3, NULL, NULL),
(37, 'Pertanyaan Bab 4 Biologi?', 'Salah', 'Salah', 'Salah', 'Benar', NULL, 1, 12, 1, NULL, NULL),
(38, 'Pertanyaan Bab 4 Biologi?', 'Salah', 'Salah', 'Salah', 'Benar', NULL, 1, 12, 1, NULL, NULL),
(39, 'Pertanyaan Bab 4 Biologi?', 'Salah', 'Salah', 'Salah', 'Benar', NULL, 1, 12, 1, NULL, NULL),
(40, 'Pertanyaan Bab 4 Biologi?', 'Salah', 'Salah', 'Salah', 'Benar', NULL, 1, 12, 1, NULL, NULL),
(41, '5. Pertanyaan Bab 4 Biologi?', 'Salah', 'Salah', 'Salah', 'Benar', NULL, 1, 12, 1, NULL, NULL),
(42, '6. Pertanyaan Bab 4 Biologi?', 'Salah', 'Salah', 'Salah', 'Benar', NULL, 1, 12, 2, NULL, NULL),
(43, '7. Pertanyaan Bab 4 Biologi?', 'Salah', 'Salah', 'Salah', 'Benar', NULL, 1, 12, 2, NULL, NULL),
(44, '8. Pertanyaan Bab 4 Biologi?', 'Salah', 'Salah', 'Salah', 'Benar', NULL, 1, 12, 2, NULL, NULL),
(45, '9. Pertanyaan Bab 4 Biologi?', 'Salah', 'Salah', 'Salah', 'Benar', NULL, 1, 12, 3, NULL, NULL),
(46, '10. Pertanyaan Bab 4 Biologi?', 'Salah', 'Salah', 'Salah', 'Benar', NULL, 1, 12, 3, NULL, NULL),
(47, '1. Pertanyaan Bab 5 Biologi?', 'Benar', 'Salah', 'Salah', 'Salah', NULL, 1, 13, 1, NULL, NULL),
(48, '2. Pertanyaan Bab 5 Biologi?', 'Benar', 'Salah', 'Salah', 'Salah', NULL, 1, 13, 1, NULL, NULL),
(49, '3. Pertanyaan Bab 5 Biologi?', 'Benar', 'Salah', 'Salah', 'Salah', NULL, 1, 13, 1, NULL, NULL),
(50, '4. Pertanyaan Bab 5 Biologi?', 'Benar', 'Salah', 'Salah', 'Salah', NULL, 1, 13, 1, NULL, NULL),
(51, '5. Pertanyaan Bab 5 Biologi?', 'Benar', 'Salah', 'Salah', 'Salah', NULL, 1, 13, 1, NULL, NULL),
(52, '6. Pertanyaan Bab 5 Biologi?', 'Benar', 'Salah', 'Salah', 'Salah', NULL, 1, 13, 2, NULL, NULL),
(53, '7. Pertanyaan Bab 5 Biologi?', 'Benar', 'Salah', 'Salah', 'Salah', NULL, 1, 13, 2, NULL, NULL),
(54, '8. Pertanyaan Bab 5 Biologi?', 'Benar', 'Salah', 'Salah', 'Salah', NULL, 1, 13, 2, NULL, NULL),
(55, '9. Pertanyaan Bab 5 Biologi?', 'Benar', 'Salah', 'Salah', 'Salah', NULL, 1, 13, 3, NULL, NULL),
(56, '10. Pertanyaan Bab 5 Biologi?', 'Benar', 'Salah', 'Salah', 'Salah', NULL, 1, 13, 3, NULL, NULL),
(57, '1. Pertanyaan Bab 6 Biologi?', 'Salah', 'Benar', 'Salah', 'Salah', NULL, 1, 14, 1, NULL, NULL),
(58, '2. Pertanyaan Bab 6 Biologi?', 'Salah', 'Benar', 'Salah', 'Salah', NULL, 1, 14, 1, NULL, NULL),
(59, '3. Pertanyaan Bab 6 Biologi?', 'Salah', 'Benar', 'Salah', 'Salah', NULL, 1, 14, 1, NULL, NULL),
(60, '4. Pertanyaan Bab 6 Biologi?', 'Salah', 'Benar', 'Salah', 'Salah', NULL, 1, 14, 1, NULL, NULL),
(61, '5. Pertanyaan Bab 6 Biologi?', 'Salah', 'Benar', 'Salah', 'Salah', NULL, 1, 14, 1, NULL, NULL),
(62, '6. Pertanyaan Bab 6 Biologi?', 'Salah', 'Benar', 'Salah', 'Salah', NULL, 1, 14, 2, NULL, NULL),
(63, '7. Pertanyaan Bab 6 Biologi?', 'Salah', 'Benar', 'Salah', 'Salah', NULL, 1, 14, 2, NULL, NULL),
(64, '8. Pertanyaan Bab 6 Biologi?', 'Salah', 'Benar', 'Salah', 'Salah', NULL, 1, 14, 2, NULL, NULL),
(65, '9. Pertanyaan Bab 6 Biologi?', 'Salah', 'Benar', 'Salah', 'Salah', NULL, 1, 14, 3, NULL, NULL),
(66, '10. Pertanyaan Bab 6 Biologi?', 'Salah', 'Benar', 'Salah', 'Salah', NULL, 1, 14, 3, NULL, NULL),
(67, '1. Pertanyaan Bab 1 Matematika?', 'Benar', 'Salah', 'Salah', 'Salah', NULL, 2, 3, 1, NULL, NULL),
(68, '2. Pertanyaan Bab 1 Matematika?', 'Benar', 'Salah', 'Salah', 'Salah', NULL, 2, 3, 1, NULL, NULL),
(69, '3. Pertanyaan Bab 1 Matematika?', 'Benar', 'Salah', 'Salah', 'Salah', NULL, 2, 3, 1, NULL, NULL),
(70, '4. Pertanyaan Bab 1 Matematika?', 'Benar', 'Salah', 'Salah', 'Salah', NULL, 2, 3, 1, NULL, NULL),
(71, '5. Pertanyaan Bab 1 Matematika?', 'Benar', 'Salah', 'Salah', 'Salah', NULL, 2, 3, 1, NULL, NULL),
(72, '6. Pertanyaan Bab 1 Matematika?', 'Benar', 'Salah', 'Salah', 'Salah', NULL, 2, 3, 2, NULL, NULL),
(73, '7. Pertanyaan Bab 1 Matematika?', 'Benar', 'Salah', 'Salah', 'Salah', NULL, 2, 3, 2, NULL, NULL),
(74, '8. Pertanyaan Bab 1 Matematika?', 'Benar', 'Salah', 'Salah', 'Salah', NULL, 2, 3, 2, NULL, NULL),
(75, '9. Pertanyaan Bab 1 Matematika?', 'Benar', 'Salah', 'Salah', 'Salah', NULL, 2, 3, 3, NULL, NULL),
(76, '10. Pertanyaan Bab 1 Matematika?', 'Benar', 'Salah', 'Salah', 'Salah', NULL, 2, 3, 3, NULL, NULL),
(77, '1. Pertanyaan Bab 2 Matematika?', 'Salah', 'Benar', 'Salah', 'Salah', NULL, 2, 4, 1, NULL, NULL),
(78, '2. Pertanyaan Bab 2 Matematika?', 'Salah', 'Benar', 'Salah', 'Salah', NULL, 2, 4, 1, NULL, NULL),
(79, '3. Pertanyaan Bab 2 Matematika?', 'Salah', 'Benar', 'Salah', 'Salah', NULL, 2, 4, 1, NULL, NULL),
(80, '4. Pertanyaan Bab 2 Matematika?', 'Salah', 'Benar', 'Salah', 'Salah', NULL, 2, 4, 1, NULL, NULL),
(81, '5. Pertanyaan Bab 2 Matematika?', 'Salah', 'Benar', 'Salah', 'Salah', NULL, 2, 4, 1, NULL, NULL),
(82, '6. Pertanyaan Bab 2 Matematika?', 'Salah', 'Benar', 'Salah', 'Salah', NULL, 2, 4, 2, NULL, NULL),
(83, '7. Pertanyaan Bab 2 Matematika?', 'Salah', 'Benar', 'Salah', 'Salah', NULL, 2, 4, 2, NULL, NULL),
(84, '8. Pertanyaan Bab 2 Matematika?', 'Salah', 'Benar', 'Salah', 'Salah', NULL, 2, 4, 2, NULL, NULL),
(85, '9. Pertanyaan Bab 2 Matematika?', 'Salah', 'Benar', 'Salah', 'Salah', NULL, 2, 4, 3, NULL, NULL),
(86, '10. Pertanyaan Bab 2 Matematika?', 'Salah', 'Benar', 'Salah', 'Salah', NULL, 2, 4, 3, NULL, NULL),
(87, '1. Pertanyaan Bab 3 Matematika?', 'Salah', 'Salah', 'Benar', 'Salah', NULL, 2, 5, 1, NULL, NULL),
(88, '2. Pertanyaan Bab 3 Matematika?', 'Salah', 'Salah', 'Benar', 'Salah', NULL, 2, 5, 1, NULL, NULL),
(89, '3. Pertanyaan Bab 3 Matematika?', 'Salah', 'Salah', 'Benar', 'Salah', NULL, 2, 5, 1, NULL, NULL),
(90, '4. Pertanyaan Bab 3 Matematika?', 'Salah', 'Salah', 'Benar', 'Salah', NULL, 2, 5, 1, NULL, NULL),
(91, '5. Pertanyaan Bab 3 Matematika?', 'Salah', 'Salah', 'Benar', 'Salah', NULL, 2, 5, 1, NULL, NULL),
(92, '6. Pertanyaan Bab 3 Matematika?', 'Salah', 'Salah', 'Benar', 'Salah', NULL, 2, 5, 2, NULL, NULL),
(93, '7. Pertanyaan Bab 3 Matematika?', 'Salah', 'Salah', 'Benar', 'Salah', NULL, 2, 5, 2, NULL, NULL),
(94, '8. Pertanyaan Bab 3 Matematika?', 'Salah', 'Salah', 'Benar', 'Salah', NULL, 2, 5, 2, NULL, NULL),
(95, '9. Pertanyaan Bab 3 Matematika?', 'Salah', 'Salah', 'Benar', 'Salah', NULL, 2, 5, 3, NULL, NULL),
(96, '10. Pertanyaan Bab 3 Matematika?', 'Salah', 'Salah', 'Benar', 'Salah', NULL, 2, 5, 3, NULL, NULL),
(97, '1. Pertanyaan Bab 4 Matematika?', 'Salah', 'Salah', 'Salah', 'Benar', NULL, 2, 6, 1, NULL, NULL),
(98, '2. Pertanyaan Bab 4 Matematika?', 'Salah', 'Salah', 'Salah', 'Benar', NULL, 2, 6, 1, NULL, NULL),
(99, '3. Pertanyaan Bab 4 Matematika?', 'Salah', 'Salah', 'Salah', 'Benar', NULL, 2, 6, 1, NULL, NULL),
(100, 'Pertanyaan Bab 4 Matematika?', 'Salah', 'Salah', 'Salah', 'Benar', NULL, 2, 6, 1, '2023-11-15 09:33:36', NULL),
(101, '5. Pertanyaan Bab 4 Matematika?', 'Salah', 'Salah', 'Salah', 'Benar', NULL, 2, 6, 1, NULL, NULL),
(102, '6. Pertanyaan Bab 4 Matematika?', 'Salah', 'Salah', 'Salah', 'Benar', NULL, 2, 6, 2, NULL, NULL),
(103, '7. Pertanyaan Bab 4 Matematika?', 'Salah', 'Salah', 'Salah', 'Benar', NULL, 2, 6, 2, NULL, NULL),
(104, '8. Pertanyaan Bab 4 Matematika?', 'Salah', 'Salah', 'Salah', 'Benar', NULL, 2, 6, 2, NULL, NULL),
(105, '9. Pertanyaan Bab 4 Matematika?', 'Salah', 'Salah', 'Salah', 'Benar', NULL, 2, 6, 3, NULL, NULL),
(106, '10. Pertanyaan Bab 4 Matematika?', 'Salah', 'Salah', 'Salah', 'Benar', NULL, 2, 6, 3, NULL, NULL),
(107, '1. Pertanyaan Bab 5 Matematika?', 'Benar', 'Salah', 'Salah', 'Salah', NULL, 2, 7, 1, NULL, NULL),
(108, '2. Pertanyaan Bab 5 Matematika?', 'Benar', 'Salah', 'Salah', 'Salah', NULL, 2, 7, 1, NULL, NULL),
(109, '3. Pertanyaan Bab 5 Matematika?', 'Benar', 'Salah', 'Salah', 'Salah', NULL, 2, 7, 1, NULL, NULL),
(110, '4. Pertanyaan Bab 5 Matematika?', 'Benar', 'Salah', 'Salah', 'Salah', NULL, 2, 7, 1, NULL, NULL),
(111, '5. Pertanyaan Bab 5 Matematika?', 'Benar', 'Salah', 'Salah', 'Salah', NULL, 2, 7, 1, NULL, NULL),
(112, '6. Pertanyaan Bab 5 Matematika?', 'Benar', 'Salah', 'Salah', 'Salah', NULL, 2, 7, 2, NULL, NULL),
(113, '7. Pertanyaan Bab 5 Matematika?', 'Benar', 'Salah', 'Salah', 'Salah', NULL, 2, 7, 2, NULL, NULL),
(114, '8. Pertanyaan Bab 5 Matematika?', 'Benar', 'Salah', 'Salah', 'Salah', NULL, 2, 7, 2, NULL, NULL),
(115, '9. Pertanyaan Bab 5 Matematika?', 'Benar', 'Salah', 'Salah', 'Salah', NULL, 2, 7, 3, NULL, NULL),
(116, '10. Pertanyaan Bab 5 Matematika?', 'Benar', 'Salah', 'Salah', 'Salah', NULL, 2, 7, 3, NULL, NULL),
(117, '1. Pertanyaan Bab 6 Matematika?', 'Salah', 'Benar', 'Salah', 'Salah', NULL, 2, 8, 1, NULL, NULL),
(118, '2. Pertanyaan Bab 6 Matematika?', 'Salah', 'Benar', 'Salah', 'Salah', NULL, 2, 8, 1, NULL, NULL),
(119, '3. Pertanyaan Bab 6 Matematika?', 'Salah', 'Benar', 'Salah', 'Salah', NULL, 2, 8, 1, NULL, NULL),
(120, '4. Pertanyaan Bab 6 Matematika?', 'Salah', 'Benar', 'Salah', 'Salah', NULL, 2, 8, 1, NULL, NULL),
(121, '5. Pertanyaan Bab 6 Matematika?', 'Salah', 'Benar', 'Salah', 'Salah', NULL, 2, 8, 1, NULL, NULL),
(122, '6. Pertanyaan Bab 6 Matematika?', 'Salah', 'Benar', 'Salah', 'Salah', NULL, 2, 8, 2, NULL, NULL),
(123, '7. Pertanyaan Bab 6 Matematika?', 'Salah', 'Benar', 'Salah', 'Salah', NULL, 2, 8, 2, NULL, NULL),
(124, '8. Pertanyaan Bab 6 Matematika?', 'Salah', 'Benar', 'Salah', 'Salah', NULL, 2, 8, 2, NULL, NULL),
(125, '9. Pertanyaan Bab 6 Matematika?', 'Salah', 'Benar', 'Salah', 'Salah', NULL, 2, 8, 3, NULL, NULL),
(126, '10. Pertanyaan Bab 6 Matematika?', 'Salah', 'Benar', 'Salah', 'Salah', NULL, 2, 8, 3, NULL, NULL),
(127, 'Soal', 'A', 'B', 'C', 'D', NULL, 2, 9, 1, NULL, NULL),
(128, 'Soal', 'A', 'B', 'C', 'D', NULL, 2, 9, 2, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `bab_materi`
--
ALTER TABLE `bab_materi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_matakuliah` (`id_mata_kuliah`);

--
-- Indeks untuk tabel `jawaban_soal`
--
ALTER TABLE `jawaban_soal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_soal` (`id_soal`);

--
-- Indeks untuk tabel `kumpul_soal`
--
ALTER TABLE `kumpul_soal`
  ADD KEY `id_paket_soal` (`id_paket_soal`),
  ADD KEY `id_soal` (`id_soal`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nrp`);

--
-- Indeks untuk tabel `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `notifikasi`
--
ALTER TABLE `notifikasi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `paket_soal`
--
ALTER TABLE `paket_soal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_mataKuliah` (`id_mata_kuliah`);

--
-- Indeks untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `soal`
--
ALTER TABLE `soal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mataKuliahID` (`id_mata_kuliah`),
  ADD KEY `id_bab_materi` (`id_bab_materi`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `bab_materi`
--
ALTER TABLE `bab_materi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `jawaban_soal`
--
ALTER TABLE `jawaban_soal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT untuk tabel `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `notifikasi`
--
ALTER TABLE `notifikasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `paket_soal`
--
ALTER TABLE `paket_soal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `soal`
--
ALTER TABLE `soal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `bab_materi`
--
ALTER TABLE `bab_materi`
  ADD CONSTRAINT `bab_materi_ibfk_1` FOREIGN KEY (`id_mata_kuliah`) REFERENCES `mata_kuliah` (`id`);

--
-- Ketidakleluasaan untuk tabel `jawaban_soal`
--
ALTER TABLE `jawaban_soal`
  ADD CONSTRAINT `jawaban_soal_ibfk_1` FOREIGN KEY (`id_soal`) REFERENCES `soal` (`id`);

--
-- Ketidakleluasaan untuk tabel `kumpul_soal`
--
ALTER TABLE `kumpul_soal`
  ADD CONSTRAINT `kumpul_soal_ibfk_1` FOREIGN KEY (`id_paket_soal`) REFERENCES `paket_soal` (`id`),
  ADD CONSTRAINT `kumpul_soal_ibfk_2` FOREIGN KEY (`id_soal`) REFERENCES `soal` (`id`);

--
-- Ketidakleluasaan untuk tabel `notifikasi`
--
ALTER TABLE `notifikasi`
  ADD CONSTRAINT `notifikasi_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `pengguna` (`id`);

--
-- Ketidakleluasaan untuk tabel `paket_soal`
--
ALTER TABLE `paket_soal`
  ADD CONSTRAINT `paket_soal_ibfk_1` FOREIGN KEY (`id_mata_kuliah`) REFERENCES `mata_kuliah` (`id`);

--
-- Ketidakleluasaan untuk tabel `soal`
--
ALTER TABLE `soal`
  ADD CONSTRAINT `soal_ibfk_1` FOREIGN KEY (`id_mata_kuliah`) REFERENCES `mata_kuliah` (`id`),
  ADD CONSTRAINT `soal_ibfk_2` FOREIGN KEY (`id_bab_materi`) REFERENCES `bab_materi` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
