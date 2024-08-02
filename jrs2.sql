-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 02, 2024 at 01:13 AM
-- Server version: 5.7.33
-- PHP Version: 8.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alkarim`
--
CREATE DATABASE IF NOT EXISTS `alkarim` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `alkarim`;

-- --------------------------------------------------------

--
-- Table structure for table `admin_units`
--

CREATE TABLE `admin_units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `unit_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_units`
--

INSERT INTO `admin_units` (`id`, `user_id`, `unit_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(2, 2, 2, '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(3, 6, 1, '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(4, 8, 1, '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(5, 11, 2, '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(6, 14, 2, '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(7, 17, 2, '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(8, 18, 2, '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(9, 20, 1, '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(10, 22, 2, '2024-08-01 00:27:30', '2024-08-01 00:27:30');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `guru_qurans`
--

CREATE TABLE `guru_qurans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `unit_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `guru_qurans`
--

INSERT INTO `guru_qurans` (`id`, `user_id`, `unit_id`, `created_at`, `updated_at`) VALUES
(1, 4, 2, '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(2, 5, 2, '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(3, 12, 1, '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(4, 15, 2, '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(5, 19, 2, '2024-08-01 00:27:30', '2024-08-01 00:27:30');

-- --------------------------------------------------------

--
-- Table structure for table `jilids`
--

CREATE TABLE `jilids` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jml_hal` int(11) NOT NULL,
  `file_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jilids`
--

INSERT INTO `jilids` (`id`, `nama`, `deskripsi`, `jml_hal`, `file_path`, `created_at`, `updated_at`) VALUES
(1, 'Jilid PAUD', 'Mengenal huruf hijaiyah', 42, '', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(2, 'Jilid 1', 'Harakat Fathah, Huruf Bersambung, Mad Thabi’i', 60, '', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(3, 'Jilid 2', 'Harakat Kasrah, Harakat Dhammah, Tanwin, Sukun, Tasydid', 82, '', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(4, 'Jilid 3', 'Ghunnah, Nun Sakinah atau Tanwin, Mim Sakinah, Hamzah Washal', 53, '', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(5, 'Jilid 4', 'Waqaf, Idgham, Hukum Ra, Tanda Sifir, Kaidah Bacaan Khusus', 49, '', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(6, 'Gharib Tajwid', 'Kaidah Bacaan Khusus, Tajwid, Nadzam', 76, '', '2024-08-01 00:27:30', '2024-08-01 00:27:30');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `juzs`
--

CREATE TABLE `juzs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surah_id_mulai` bigint(20) UNSIGNED NOT NULL,
  `ayat_mulai` int(11) NOT NULL,
  `surah_id_selesai` bigint(20) UNSIGNED NOT NULL,
  `ayat_selesai` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, '1A', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(2, '1B', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(3, '2A', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(4, '2B', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(5, '3A', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(6, '3B', '2024-08-01 00:27:30', '2024-08-01 00:27:30');

-- --------------------------------------------------------

--
-- Table structure for table `kelompok_halaqahs`
--

CREATE TABLE `kelompok_halaqahs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `unit_id` bigint(20) UNSIGNED NOT NULL,
  `kelas_id` bigint(20) UNSIGNED NOT NULL,
  `grade` enum('A','B','C') COLLATE utf8mb4_unicode_ci NOT NULL,
  `guru_quran_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kelompok_halaqahs`
--

INSERT INTO `kelompok_halaqahs` (`id`, `unit_id`, `kelas_id`, `grade`, `guru_quran_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'A', 3, '2024-08-01 00:27:30', '2024-08-01 00:27:31'),
(2, 1, 1, 'B', 3, '2024-08-01 00:27:30', '2024-08-01 00:27:31'),
(3, 1, 1, 'C', 3, '2024-08-01 00:27:30', '2024-08-01 00:27:31'),
(4, 1, 2, 'A', 3, '2024-08-01 00:27:30', '2024-08-01 00:27:31'),
(5, 1, 2, 'B', 3, '2024-08-01 00:27:30', '2024-08-01 00:27:31'),
(6, 1, 2, 'C', 3, '2024-08-01 00:27:30', '2024-08-01 00:27:31'),
(7, 1, 3, 'A', 3, '2024-08-01 00:27:30', '2024-08-01 00:27:31'),
(8, 1, 3, 'B', 3, '2024-08-01 00:27:30', '2024-08-01 00:27:31'),
(9, 1, 3, 'C', 3, '2024-08-01 00:27:30', '2024-08-01 00:27:31'),
(10, 1, 4, 'A', 3, '2024-08-01 00:27:30', '2024-08-01 00:27:31'),
(11, 1, 4, 'B', NULL, '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(12, 1, 4, 'C', NULL, '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(13, 1, 5, 'A', NULL, '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(14, 1, 5, 'B', NULL, '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(15, 1, 5, 'C', NULL, '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(16, 1, 6, 'A', NULL, '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(17, 1, 6, 'B', NULL, '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(18, 1, 6, 'C', NULL, '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(19, 2, 1, 'A', 2, '2024-08-01 00:27:30', '2024-08-01 00:27:31'),
(20, 2, 1, 'B', 2, '2024-08-01 00:27:30', '2024-08-01 00:27:31'),
(21, 2, 1, 'C', 2, '2024-08-01 00:27:30', '2024-08-01 00:27:31'),
(22, 2, 2, 'A', 2, '2024-08-01 00:27:30', '2024-08-01 00:27:31'),
(23, 2, 2, 'B', 2, '2024-08-01 00:27:30', '2024-08-01 00:27:31'),
(24, 2, 2, 'C', 2, '2024-08-01 00:27:30', '2024-08-01 00:27:31'),
(25, 2, 3, 'A', 2, '2024-08-01 00:27:30', '2024-08-01 00:27:31'),
(26, 2, 3, 'B', 2, '2024-08-01 00:27:30', '2024-08-01 00:27:31'),
(27, 2, 3, 'C', 2, '2024-08-01 00:27:30', '2024-08-01 00:27:31'),
(28, 2, 4, 'A', 2, '2024-08-01 00:27:30', '2024-08-01 00:27:31'),
(29, 2, 4, 'B', 5, '2024-08-01 00:27:30', '2024-08-01 00:27:31'),
(30, 2, 4, 'C', 5, '2024-08-01 00:27:30', '2024-08-01 00:27:31'),
(31, 2, 5, 'A', 5, '2024-08-01 00:27:30', '2024-08-01 00:27:31'),
(32, 2, 5, 'B', 5, '2024-08-01 00:27:30', '2024-08-01 00:27:31'),
(33, 2, 5, 'C', 5, '2024-08-01 00:27:30', '2024-08-01 00:27:31'),
(34, 2, 6, 'A', 5, '2024-08-01 00:27:30', '2024-08-01 00:27:31'),
(35, 2, 6, 'B', 5, '2024-08-01 00:27:30', '2024-08-01 00:27:31'),
(36, 2, 6, 'C', 5, '2024-08-01 00:27:30', '2024-08-01 00:27:31');

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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_07_08_044500_create_units_table', 1),
(5, '2024_07_08_044501_create_guru_qurans_table', 1),
(6, '2024_07_08_044502_create_admin_units_table', 1),
(7, '2024_07_08_044502_create_surahs_table', 1),
(8, '2024_07_08_044509_create_siswa_datas_table', 1),
(9, '2024_07_08_044510_create_kelompok_halaqahs', 1),
(10, '2024_07_08_044511_create_siswas_table', 1),
(11, '2024_07_08_045554_create_mutabaahs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mutabaahs`
--

CREATE TABLE `mutabaahs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tanggal` date NOT NULL,
  `siswa_id` bigint(20) UNSIGNED NOT NULL,
  `ziyadah` json NOT NULL,
  `murojaah` int(11) NOT NULL,
  `tilawah` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mutabaahs`
--

INSERT INTO `mutabaahs` (`id`, `tanggal`, `siswa_id`, `ziyadah`, `murojaah`, `tilawah`, `created_at`, `updated_at`) VALUES
(1, '2024-01-10', 91, '{\"ayat_mulai\": 94, \"ayat_selesai\": 30, \"surah_mulai_id\": 36, \"surah_selesai_id\": 10}', 397, '{\"ayat_mulai\": 72, \"ayat_selesai\": 39, \"surah_mulai_id\": 48, \"surah_selesai_id\": 35}', '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(2, '2024-03-10', 17, '{\"ayat_mulai\": 84, \"ayat_selesai\": 74, \"surah_mulai_id\": 3, \"surah_selesai_id\": 45}', 80, '{\"ayat_mulai\": 66, \"ayat_selesai\": 41, \"surah_mulai_id\": 72, \"surah_selesai_id\": 97}', '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(3, '2024-05-26', 14, '{\"ayat_mulai\": 17, \"ayat_selesai\": 78, \"surah_mulai_id\": 52, \"surah_selesai_id\": 14}', 21, '{\"ayat_mulai\": 94, \"ayat_selesai\": 83, \"surah_mulai_id\": 63, \"surah_selesai_id\": 33}', '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(4, '2024-04-24', 24, '{\"ayat_mulai\": 49, \"ayat_selesai\": 37, \"surah_mulai_id\": 64, \"surah_selesai_id\": 66}', 757, '{\"ayat_mulai\": 45, \"ayat_selesai\": 87, \"surah_mulai_id\": 51, \"surah_selesai_id\": 35}', '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(5, '2024-06-30', 22, '{\"ayat_mulai\": 84, \"ayat_selesai\": 4, \"surah_mulai_id\": 3, \"surah_selesai_id\": 90}', 210, '{\"ayat_mulai\": 3, \"ayat_selesai\": 95, \"surah_mulai_id\": 83, \"surah_selesai_id\": 100}', '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(6, '2024-05-23', 33, '{\"ayat_mulai\": 66, \"ayat_selesai\": 7, \"surah_mulai_id\": 57, \"surah_selesai_id\": 99}', 680, '{\"ayat_mulai\": 83, \"ayat_selesai\": 30, \"surah_mulai_id\": 15, \"surah_selesai_id\": 51}', '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(7, '2024-03-30', 60, '{\"ayat_mulai\": 36, \"ayat_selesai\": 45, \"surah_mulai_id\": 107, \"surah_selesai_id\": 72}', 266, '{\"ayat_mulai\": 61, \"ayat_selesai\": 19, \"surah_mulai_id\": 113, \"surah_selesai_id\": 44}', '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(8, '2024-04-03', 86, '{\"ayat_mulai\": 39, \"ayat_selesai\": 7, \"surah_mulai_id\": 94, \"surah_selesai_id\": 64}', 639, '{\"ayat_mulai\": 42, \"ayat_selesai\": 73, \"surah_mulai_id\": 15, \"surah_selesai_id\": 8}', '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(9, '2024-04-07', 58, '{\"ayat_mulai\": 13, \"ayat_selesai\": 14, \"surah_mulai_id\": 101, \"surah_selesai_id\": 83}', 551, '{\"ayat_mulai\": 78, \"ayat_selesai\": 5, \"surah_mulai_id\": 36, \"surah_selesai_id\": 85}', '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(10, '2024-03-02', 87, '{\"ayat_mulai\": 14, \"ayat_selesai\": 19, \"surah_mulai_id\": 110, \"surah_selesai_id\": 31}', 571, '{\"ayat_mulai\": 46, \"ayat_selesai\": 48, \"surah_mulai_id\": 47, \"surah_selesai_id\": 90}', '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(11, '2024-06-26', 37, '{\"ayat_mulai\": 2, \"ayat_selesai\": 73, \"surah_mulai_id\": 106, \"surah_selesai_id\": 48}', 924, '{\"ayat_mulai\": 42, \"ayat_selesai\": 51, \"surah_mulai_id\": 24, \"surah_selesai_id\": 25}', '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(12, '2024-03-22', 17, '{\"ayat_mulai\": 13, \"ayat_selesai\": 39, \"surah_mulai_id\": 30, \"surah_selesai_id\": 21}', 174, '{\"ayat_mulai\": 96, \"ayat_selesai\": 10, \"surah_mulai_id\": 79, \"surah_selesai_id\": 54}', '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(13, '2024-03-12', 46, '{\"ayat_mulai\": 49, \"ayat_selesai\": 81, \"surah_mulai_id\": 63, \"surah_selesai_id\": 60}', 374, '{\"ayat_mulai\": 12, \"ayat_selesai\": 100, \"surah_mulai_id\": 35, \"surah_selesai_id\": 3}', '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(14, '2024-02-06', 94, '{\"ayat_mulai\": 4, \"ayat_selesai\": 68, \"surah_mulai_id\": 64, \"surah_selesai_id\": 35}', 193, '{\"ayat_mulai\": 65, \"ayat_selesai\": 62, \"surah_mulai_id\": 11, \"surah_selesai_id\": 78}', '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(15, '2024-05-28', 13, '{\"ayat_mulai\": 35, \"ayat_selesai\": 66, \"surah_mulai_id\": 106, \"surah_selesai_id\": 87}', 865, '{\"ayat_mulai\": 76, \"ayat_selesai\": 0, \"surah_mulai_id\": 69, \"surah_selesai_id\": 13}', '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(16, '2024-01-10', 93, '{\"ayat_mulai\": 7, \"ayat_selesai\": 75, \"surah_mulai_id\": 76, \"surah_selesai_id\": 47}', 4, '{\"ayat_mulai\": 85, \"ayat_selesai\": 68, \"surah_mulai_id\": 1, \"surah_selesai_id\": 104}', '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(17, '2024-05-03', 25, '{\"ayat_mulai\": 14, \"ayat_selesai\": 59, \"surah_mulai_id\": 71, \"surah_selesai_id\": 78}', 260, '{\"ayat_mulai\": 74, \"ayat_selesai\": 47, \"surah_mulai_id\": 16, \"surah_selesai_id\": 37}', '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(18, '2024-02-26', 39, '{\"ayat_mulai\": 74, \"ayat_selesai\": 32, \"surah_mulai_id\": 66, \"surah_selesai_id\": 63}', 218, '{\"ayat_mulai\": 79, \"ayat_selesai\": 40, \"surah_mulai_id\": 60, \"surah_selesai_id\": 105}', '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(19, '2024-05-18', 88, '{\"ayat_mulai\": 7, \"ayat_selesai\": 67, \"surah_mulai_id\": 112, \"surah_selesai_id\": 83}', 124, '{\"ayat_mulai\": 89, \"ayat_selesai\": 88, \"surah_mulai_id\": 13, \"surah_selesai_id\": 105}', '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(20, '2024-01-12', 13, '{\"ayat_mulai\": 31, \"ayat_selesai\": 29, \"surah_mulai_id\": 72, \"surah_selesai_id\": 28}', 387, '{\"ayat_mulai\": 95, \"ayat_selesai\": 27, \"surah_mulai_id\": 96, \"surah_selesai_id\": 82}', '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(21, '2024-02-11', 78, '{\"ayat_mulai\": 99, \"ayat_selesai\": 12, \"surah_mulai_id\": 6, \"surah_selesai_id\": 39}', 415, '{\"ayat_mulai\": 21, \"ayat_selesai\": 6, \"surah_mulai_id\": 6, \"surah_selesai_id\": 73}', '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(22, '2024-07-11', 24, '{\"ayat_mulai\": 22, \"ayat_selesai\": 32, \"surah_mulai_id\": 74, \"surah_selesai_id\": 17}', 605, '{\"ayat_mulai\": 82, \"ayat_selesai\": 79, \"surah_mulai_id\": 12, \"surah_selesai_id\": 28}', '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(23, '2024-01-14', 53, '{\"ayat_mulai\": 70, \"ayat_selesai\": 85, \"surah_mulai_id\": 35, \"surah_selesai_id\": 58}', 10, '{\"ayat_mulai\": 66, \"ayat_selesai\": 97, \"surah_mulai_id\": 83, \"surah_selesai_id\": 113}', '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(24, '2024-06-26', 18, '{\"ayat_mulai\": 58, \"ayat_selesai\": 89, \"surah_mulai_id\": 105, \"surah_selesai_id\": 29}', 362, '{\"ayat_mulai\": 18, \"ayat_selesai\": 90, \"surah_mulai_id\": 87, \"surah_selesai_id\": 96}', '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(25, '2024-04-06', 8, '{\"ayat_mulai\": 47, \"ayat_selesai\": 4, \"surah_mulai_id\": 99, \"surah_selesai_id\": 37}', 744, '{\"ayat_mulai\": 64, \"ayat_selesai\": 37, \"surah_mulai_id\": 40, \"surah_selesai_id\": 1}', '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(26, '2024-03-10', 2, '{\"ayat_mulai\": 7, \"ayat_selesai\": 63, \"surah_mulai_id\": 77, \"surah_selesai_id\": 100}', 237, '{\"ayat_mulai\": 56, \"ayat_selesai\": 21, \"surah_mulai_id\": 112, \"surah_selesai_id\": 108}', '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(27, '2024-03-10', 71, '{\"ayat_mulai\": 23, \"ayat_selesai\": 79, \"surah_mulai_id\": 93, \"surah_selesai_id\": 93}', 339, '{\"ayat_mulai\": 4, \"ayat_selesai\": 74, \"surah_mulai_id\": 59, \"surah_selesai_id\": 107}', '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(28, '2024-04-14', 91, '{\"ayat_mulai\": 37, \"ayat_selesai\": 58, \"surah_mulai_id\": 86, \"surah_selesai_id\": 82}', 430, '{\"ayat_mulai\": 67, \"ayat_selesai\": 44, \"surah_mulai_id\": 99, \"surah_selesai_id\": 67}', '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(29, '2024-04-15', 18, '{\"ayat_mulai\": 67, \"ayat_selesai\": 42, \"surah_mulai_id\": 88, \"surah_selesai_id\": 99}', 966, '{\"ayat_mulai\": 83, \"ayat_selesai\": 83, \"surah_mulai_id\": 21, \"surah_selesai_id\": 9}', '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(30, '2024-07-10', 31, '{\"ayat_mulai\": 72, \"ayat_selesai\": 45, \"surah_mulai_id\": 57, \"surah_selesai_id\": 99}', 824, '{\"ayat_mulai\": 45, \"ayat_selesai\": 58, \"surah_mulai_id\": 75, \"surah_selesai_id\": 52}', '2024-08-01 00:27:32', '2024-08-01 00:27:32'),
(31, '2024-01-03', 93, '{\"ayat_mulai\": 24, \"ayat_selesai\": 81, \"surah_mulai_id\": 76, \"surah_selesai_id\": 3}', 169, '{\"ayat_mulai\": 19, \"ayat_selesai\": 38, \"surah_mulai_id\": 5, \"surah_selesai_id\": 111}', '2024-08-01 00:27:40', '2024-08-01 00:27:40'),
(32, '2024-01-02', 89, '{\"ayat_mulai\": 38, \"ayat_selesai\": 7, \"surah_mulai_id\": 50, \"surah_selesai_id\": 19}', 737, '{\"ayat_mulai\": 34, \"ayat_selesai\": 68, \"surah_mulai_id\": 48, \"surah_selesai_id\": 104}', '2024-08-01 00:27:40', '2024-08-01 00:27:40'),
(33, '2024-06-21', 26, '{\"ayat_mulai\": 16, \"ayat_selesai\": 38, \"surah_mulai_id\": 66, \"surah_selesai_id\": 51}', 398, '{\"ayat_mulai\": 71, \"ayat_selesai\": 92, \"surah_mulai_id\": 27, \"surah_selesai_id\": 83}', '2024-08-01 00:27:40', '2024-08-01 00:27:40'),
(34, '2024-02-13', 56, '{\"ayat_mulai\": 74, \"ayat_selesai\": 72, \"surah_mulai_id\": 48, \"surah_selesai_id\": 50}', 478, '{\"ayat_mulai\": 22, \"ayat_selesai\": 3, \"surah_mulai_id\": 98, \"surah_selesai_id\": 22}', '2024-08-01 00:27:40', '2024-08-01 00:27:40'),
(35, '2024-05-26', 65, '{\"ayat_mulai\": 95, \"ayat_selesai\": 69, \"surah_mulai_id\": 3, \"surah_selesai_id\": 33}', 755, '{\"ayat_mulai\": 54, \"ayat_selesai\": 63, \"surah_mulai_id\": 109, \"surah_selesai_id\": 65}', '2024-08-01 00:27:40', '2024-08-01 00:27:40'),
(36, '2024-02-19', 20, '{\"ayat_mulai\": 92, \"ayat_selesai\": 32, \"surah_mulai_id\": 81, \"surah_selesai_id\": 52}', 517, '{\"ayat_mulai\": 16, \"ayat_selesai\": 37, \"surah_mulai_id\": 97, \"surah_selesai_id\": 17}', '2024-08-01 00:27:40', '2024-08-01 00:27:40'),
(37, '2024-05-30', 50, '{\"ayat_mulai\": 100, \"ayat_selesai\": 64, \"surah_mulai_id\": 105, \"surah_selesai_id\": 97}', 492, '{\"ayat_mulai\": 60, \"ayat_selesai\": 74, \"surah_mulai_id\": 89, \"surah_selesai_id\": 57}', '2024-08-01 00:27:40', '2024-08-01 00:27:40'),
(38, '2024-01-05', 81, '{\"ayat_mulai\": 78, \"ayat_selesai\": 15, \"surah_mulai_id\": 93, \"surah_selesai_id\": 74}', 100, '{\"ayat_mulai\": 76, \"ayat_selesai\": 99, \"surah_mulai_id\": 24, \"surah_selesai_id\": 13}', '2024-08-01 00:27:40', '2024-08-01 00:27:40'),
(39, '2024-07-13', 55, '{\"ayat_mulai\": 58, \"ayat_selesai\": 42, \"surah_mulai_id\": 19, \"surah_selesai_id\": 72}', 946, '{\"ayat_mulai\": 99, \"ayat_selesai\": 5, \"surah_mulai_id\": 19, \"surah_selesai_id\": 53}', '2024-08-01 00:27:40', '2024-08-01 00:27:40'),
(40, '2024-01-25', 97, '{\"ayat_mulai\": 87, \"ayat_selesai\": 15, \"surah_mulai_id\": 95, \"surah_selesai_id\": 36}', 585, '{\"ayat_mulai\": 66, \"ayat_selesai\": 36, \"surah_mulai_id\": 10, \"surah_selesai_id\": 77}', '2024-08-01 00:27:40', '2024-08-01 00:27:40'),
(41, '2024-02-20', 21, '{\"ayat_mulai\": 66, \"ayat_selesai\": 49, \"surah_mulai_id\": 67, \"surah_selesai_id\": 4}', 842, '{\"ayat_mulai\": 7, \"ayat_selesai\": 62, \"surah_mulai_id\": 38, \"surah_selesai_id\": 60}', '2024-08-01 00:27:40', '2024-08-01 00:27:40'),
(42, '2024-06-16', 45, '{\"ayat_mulai\": 36, \"ayat_selesai\": 53, \"surah_mulai_id\": 75, \"surah_selesai_id\": 18}', 630, '{\"ayat_mulai\": 74, \"ayat_selesai\": 93, \"surah_mulai_id\": 8, \"surah_selesai_id\": 76}', '2024-08-01 00:27:40', '2024-08-01 00:27:40'),
(43, '2024-04-04', 39, '{\"ayat_mulai\": 53, \"ayat_selesai\": 21, \"surah_mulai_id\": 42, \"surah_selesai_id\": 18}', 326, '{\"ayat_mulai\": 25, \"ayat_selesai\": 22, \"surah_mulai_id\": 83, \"surah_selesai_id\": 35}', '2024-08-01 00:27:40', '2024-08-01 00:27:40'),
(44, '2024-03-10', 96, '{\"ayat_mulai\": 77, \"ayat_selesai\": 94, \"surah_mulai_id\": 106, \"surah_selesai_id\": 70}', 726, '{\"ayat_mulai\": 13, \"ayat_selesai\": 21, \"surah_mulai_id\": 45, \"surah_selesai_id\": 88}', '2024-08-01 00:27:40', '2024-08-01 00:27:40'),
(45, '2024-01-04', 74, '{\"ayat_mulai\": 38, \"ayat_selesai\": 95, \"surah_mulai_id\": 9, \"surah_selesai_id\": 72}', 695, '{\"ayat_mulai\": 69, \"ayat_selesai\": 8, \"surah_mulai_id\": 3, \"surah_selesai_id\": 101}', '2024-08-01 00:27:40', '2024-08-01 00:27:40'),
(46, '2024-02-02', 4, '{\"ayat_mulai\": 38, \"ayat_selesai\": 69, \"surah_mulai_id\": 53, \"surah_selesai_id\": 108}', 267, '{\"ayat_mulai\": 2, \"ayat_selesai\": 63, \"surah_mulai_id\": 68, \"surah_selesai_id\": 5}', '2024-08-01 00:27:40', '2024-08-01 00:27:40'),
(47, '2024-01-27', 90, '{\"ayat_mulai\": 70, \"ayat_selesai\": 38, \"surah_mulai_id\": 50, \"surah_selesai_id\": 75}', 18, '{\"ayat_mulai\": 90, \"ayat_selesai\": 0, \"surah_mulai_id\": 22, \"surah_selesai_id\": 11}', '2024-08-01 00:27:40', '2024-08-01 00:27:40'),
(48, '2024-01-30', 12, '{\"ayat_mulai\": 84, \"ayat_selesai\": 64, \"surah_mulai_id\": 91, \"surah_selesai_id\": 101}', 921, '{\"ayat_mulai\": 81, \"ayat_selesai\": 14, \"surah_mulai_id\": 47, \"surah_selesai_id\": 3}', '2024-08-01 00:27:40', '2024-08-01 00:27:40'),
(49, '2024-03-25', 26, '{\"ayat_mulai\": 39, \"ayat_selesai\": 30, \"surah_mulai_id\": 96, \"surah_selesai_id\": 52}', 230, '{\"ayat_mulai\": 49, \"ayat_selesai\": 12, \"surah_mulai_id\": 44, \"surah_selesai_id\": 100}', '2024-08-01 00:27:40', '2024-08-01 00:27:40'),
(50, '2024-04-30', 20, '{\"ayat_mulai\": 9, \"ayat_selesai\": 30, \"surah_mulai_id\": 44, \"surah_selesai_id\": 97}', 486, '{\"ayat_mulai\": 11, \"ayat_selesai\": 3, \"surah_mulai_id\": 10, \"surah_selesai_id\": 91}', '2024-08-01 00:27:40', '2024-08-01 00:27:40'),
(51, '2024-02-01', 35, '{\"ayat_mulai\": 16, \"ayat_selesai\": 85, \"surah_mulai_id\": 57, \"surah_selesai_id\": 56}', 8, '{\"ayat_mulai\": 7, \"ayat_selesai\": 23, \"surah_mulai_id\": 87, \"surah_selesai_id\": 53}', '2024-08-01 00:27:40', '2024-08-01 00:27:40'),
(52, '2024-02-18', 14, '{\"ayat_mulai\": 59, \"ayat_selesai\": 57, \"surah_mulai_id\": 80, \"surah_selesai_id\": 64}', 93, '{\"ayat_mulai\": 42, \"ayat_selesai\": 68, \"surah_mulai_id\": 71, \"surah_selesai_id\": 60}', '2024-08-01 00:27:40', '2024-08-01 00:27:40'),
(53, '2024-06-14', 31, '{\"ayat_mulai\": 59, \"ayat_selesai\": 51, \"surah_mulai_id\": 78, \"surah_selesai_id\": 40}', 563, '{\"ayat_mulai\": 72, \"ayat_selesai\": 63, \"surah_mulai_id\": 74, \"surah_selesai_id\": 42}', '2024-08-01 00:27:40', '2024-08-01 00:27:40'),
(54, '2024-01-09', 95, '{\"ayat_mulai\": 23, \"ayat_selesai\": 74, \"surah_mulai_id\": 57, \"surah_selesai_id\": 3}', 52, '{\"ayat_mulai\": 38, \"ayat_selesai\": 13, \"surah_mulai_id\": 90, \"surah_selesai_id\": 112}', '2024-08-01 00:27:40', '2024-08-01 00:27:40'),
(55, '2024-06-25', 15, '{\"ayat_mulai\": 33, \"ayat_selesai\": 20, \"surah_mulai_id\": 58, \"surah_selesai_id\": 72}', 431, '{\"ayat_mulai\": 85, \"ayat_selesai\": 24, \"surah_mulai_id\": 14, \"surah_selesai_id\": 79}', '2024-08-01 00:27:40', '2024-08-01 00:27:40'),
(56, '2024-01-17', 29, '{\"ayat_mulai\": 82, \"ayat_selesai\": 74, \"surah_mulai_id\": 92, \"surah_selesai_id\": 45}', 391, '{\"ayat_mulai\": 83, \"ayat_selesai\": 42, \"surah_mulai_id\": 95, \"surah_selesai_id\": 70}', '2024-08-01 00:27:40', '2024-08-01 00:27:40'),
(57, '2024-03-12', 53, '{\"ayat_mulai\": 87, \"ayat_selesai\": 89, \"surah_mulai_id\": 30, \"surah_selesai_id\": 49}', 562, '{\"ayat_mulai\": 48, \"ayat_selesai\": 54, \"surah_mulai_id\": 49, \"surah_selesai_id\": 65}', '2024-08-01 00:27:40', '2024-08-01 00:27:40'),
(58, '2024-04-15', 9, '{\"ayat_mulai\": 31, \"ayat_selesai\": 69, \"surah_mulai_id\": 52, \"surah_selesai_id\": 56}', 541, '{\"ayat_mulai\": 79, \"ayat_selesai\": 56, \"surah_mulai_id\": 79, \"surah_selesai_id\": 99}', '2024-08-01 00:27:40', '2024-08-01 00:27:40'),
(59, '2024-01-23', 45, '{\"ayat_mulai\": 3, \"ayat_selesai\": 19, \"surah_mulai_id\": 46, \"surah_selesai_id\": 47}', 476, '{\"ayat_mulai\": 28, \"ayat_selesai\": 40, \"surah_mulai_id\": 14, \"surah_selesai_id\": 6}', '2024-08-01 00:27:40', '2024-08-01 00:27:40'),
(60, '2024-07-16', 14, '{\"ayat_mulai\": 50, \"ayat_selesai\": 74, \"surah_mulai_id\": 89, \"surah_selesai_id\": 96}', 600, '{\"ayat_mulai\": 73, \"ayat_selesai\": 42, \"surah_mulai_id\": 66, \"surah_selesai_id\": 64}', '2024-08-01 00:27:40', '2024-08-01 00:27:40');

-- --------------------------------------------------------

--
-- Table structure for table `nilais`
--

CREATE TABLE `nilais` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `siswa_id` bigint(20) UNSIGNED NOT NULL,
  `ujian_id` bigint(20) UNSIGNED NOT NULL,
  `deskripsi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guru_quran_id` bigint(20) UNSIGNED NOT NULL,
  `nilai` int(11) NOT NULL,
  `tanggal_ujian` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nilais`
--

INSERT INTO `nilais` (`id`, `siswa_id`, `ujian_id`, `deskripsi`, `guru_quran_id`, `nilai`, `tanggal_ujian`, `created_at`, `updated_at`) VALUES
(1, 95, 1, 'Ujian 1', 1, 63, '2024-07-05', '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(2, 78, 3, 'Ujian 9', 2, 88, '2024-01-02', '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(3, 47, 3, 'Ujian 3', 2, 90, '2024-06-29', '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(4, 56, 3, 'Ujian 1', 1, 69, '2024-06-15', '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(5, 46, 3, 'Ujian 5', 3, 35, '2024-05-27', '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(6, 84, 1, 'Ujian 8', 5, 37, '2024-01-02', '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(7, 15, 3, 'Ujian 7', 2, 39, '2024-03-04', '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(8, 62, 2, 'Ujian 5', 4, 96, '2024-02-18', '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(9, 17, 2, 'Ujian 10', 2, 39, '2024-03-27', '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(10, 55, 2, 'Ujian 8', 4, 62, '2024-01-10', '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(11, 6, 3, 'Ujian 4', 2, 42, '2024-02-23', '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(12, 39, 1, 'Ujian 2', 5, 63, '2024-07-02', '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(13, 76, 2, 'Ujian 10', 2, 73, '2024-04-30', '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(14, 3, 1, 'Ujian 10', 4, 33, '2024-03-30', '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(15, 23, 3, 'Ujian 7', 4, 39, '2024-01-21', '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(16, 18, 3, 'Ujian 7', 4, 58, '2024-06-07', '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(17, 70, 3, 'Ujian 10', 2, 47, '2024-01-24', '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(18, 15, 3, 'Ujian 9', 1, 49, '2024-04-21', '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(19, 81, 3, 'Ujian 8', 5, 33, '2024-05-29', '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(20, 25, 2, 'Ujian 10', 5, 20, '2024-03-19', '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(21, 92, 1, 'Ujian 5', 5, 84, '2024-04-03', '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(22, 72, 2, 'Ujian 4', 2, 18, '2024-03-06', '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(23, 25, 3, 'Ujian 6', 2, 15, '2024-01-05', '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(24, 5, 1, 'Ujian 8', 3, 52, '2024-05-12', '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(25, 70, 2, 'Ujian 5', 2, 41, '2024-07-04', '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(26, 35, 2, 'Ujian 10', 4, 70, '2024-05-04', '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(27, 95, 1, 'Ujian 4', 4, 97, '2024-03-18', '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(28, 45, 1, 'Ujian 2', 2, 61, '2024-03-08', '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(29, 49, 1, 'Ujian 1', 4, 39, '2024-01-21', '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(30, 51, 2, 'Ujian 9', 5, 32, '2024-03-26', '2024-08-01 00:27:31', '2024-08-01 00:27:31');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `nama`, `deskripsi`, `created_at`, `updated_at`) VALUES
(1, 'Administrator Pusat', '-', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(2, 'PPQ', '-', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(3, 'Administrator Unit', '-', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(4, 'Guru Quran', '-', '2024-08-01 00:27:30', '2024-08-01 00:27:30');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('bhJNQQeyxmnWI6byzK14xFu7d5PJ2K722pbrEhfY', 19, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTDRjam50Rm93ODdhTTZtYjVUd2FsZnI3RjkycFRBRFBmaW5yR1A0aSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9ndXJ1LXF1cmFuL25pbGFpIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTk7fQ==', 1722501289);

-- --------------------------------------------------------

--
-- Table structure for table `siswas`
--

CREATE TABLE `siswas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nisn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_id` bigint(20) UNSIGNED NOT NULL,
  `kelas_id` bigint(20) UNSIGNED NOT NULL,
  `grade` enum('A','B','C') COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelompok_halaqah_id` bigint(20) UNSIGNED DEFAULT NULL,
  `surah_id` bigint(20) UNSIGNED NOT NULL,
  `jilid_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `siswas`
--

INSERT INTO `siswas` (`id`, `nisn`, `nama`, `unit_id`, `kelas_id`, `grade`, `kelompok_halaqah_id`, `surah_id`, `jilid_id`, `created_at`, `updated_at`) VALUES
(1, '5873662190', 'Brennan Ankunding DDS', 2, 6, 'C', 36, 13, 4, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(2, '1174116697', 'Prof. Ron Greenholt I', 2, 6, 'B', 35, 100, 5, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(3, '3928345833', 'Antoinette Senger', 2, 3, 'B', 26, 25, 3, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(4, '8799543182', 'Prof. Desmond Lemke V', 2, 4, 'C', 30, 47, 3, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(5, '7855617826', 'Korey Collins', 1, 3, 'A', 7, 76, 5, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(6, '4706481900', 'Ursula Stark', 2, 5, 'A', 31, 85, 3, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(7, '1074730175', 'Mrs. Mariah Gibson I', 2, 1, 'A', 19, 97, 5, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(8, '9971923421', 'Loma Bogan Jr.', 1, 6, 'A', 16, 107, 1, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(9, '3089568165', 'Penelope Lockman', 2, 3, 'A', 25, 52, 4, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(10, '0040161472', 'Aniyah Heaney', 1, 3, 'A', 7, 80, 3, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(11, '4847254972', 'Davonte Rau PhD', 1, 5, 'C', 15, 52, 6, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(12, '1180632662', 'Reilly Bergnaum', 2, 6, 'B', 35, 35, 5, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(13, '8152231514', 'Natasha Stanton', 1, 1, 'A', 1, 89, 3, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(14, '3327679908', 'Ian Crist', 1, 3, 'A', 7, 85, 5, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(15, '9120858123', 'Demario Ryan', 1, 3, 'B', 8, 34, 3, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(16, '6022001175', 'Junius Cummings', 2, 3, 'A', 25, 44, 5, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(17, '8676505073', 'Pietro Douglas Sr.', 1, 5, 'C', 15, 51, 2, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(18, '1184914726', 'Mr. Garth Fisher DDS', 1, 5, 'A', 13, 6, 5, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(19, '6967628324', 'Bradford Ernser II', 2, 4, 'C', 30, 27, 6, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(20, '0730928282', 'Trace Tillman', 2, 6, 'C', 36, 97, 2, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(21, '1644464418', 'Prof. Preston Barton III', 2, 5, 'A', 31, 30, 4, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(22, '9512955354', 'Estell Armstrong', 2, 3, 'C', 27, 38, 3, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(23, '1157409556', 'Prof. Rolando Boehm', 2, 4, 'A', 28, 51, 3, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(24, '0808613129', 'Joyce Carter', 1, 4, 'A', 10, 16, 3, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(25, '5529519449', 'Rubie Wilkinson', 1, 4, 'A', 10, 93, 6, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(26, '6427466393', 'Mr. Aidan Greenfelder', 1, 1, 'A', 1, 17, 6, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(27, '4183144092', 'Ignacio Zieme', 1, 3, 'A', 7, 77, 1, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(28, '8581587385', 'Pascale McDermott', 1, 4, 'B', 11, 15, 2, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(29, '8595489183', 'Prof. Otho Moen', 2, 5, 'A', 31, 15, 3, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(30, '4491102306', 'Ms. Rosamond Becker II', 1, 4, 'A', 10, 56, 3, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(31, '7520371464', 'Bethany Mertz MD', 1, 2, 'A', 4, 54, 1, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(32, '4815620090', 'Miss Marcia Rau DVM', 2, 3, 'B', 26, 86, 1, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(33, '4763729168', 'Dr. Marian Bradtke', 1, 1, 'A', 1, 64, 1, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(34, '5808654222', 'Mireille Ortiz', 2, 6, 'C', 36, 28, 3, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(35, '3416827944', 'Opal Parisian', 1, 6, 'C', 18, 7, 5, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(36, '0792568847', 'Ashleigh Schuster III', 1, 4, 'B', 11, 19, 4, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(37, '8377633027', 'Prof. Tierra Boehm DDS', 1, 4, 'C', 12, 23, 6, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(38, '9617563114', 'Damon Mayer', 2, 5, 'C', 33, 113, 5, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(39, '1855470977', 'Mr. Amari Hermann', 1, 3, 'B', 8, 31, 6, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(40, '4787748301', 'Theodore Roob', 2, 4, 'B', 29, 88, 1, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(41, '9139988715', 'Kiera Kuhic', 2, 2, 'B', 23, 72, 5, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(42, '3591050605', 'Katherine Crist', 1, 1, 'A', 1, 69, 6, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(43, '3231684342', 'Hosea Boyle', 2, 2, 'C', 24, 5, 2, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(44, '2325544373', 'Alberta Maggio', 2, 3, 'B', 26, 54, 3, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(45, '3982798861', 'Gussie Koch', 2, 1, 'C', 21, 105, 4, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(46, '4686210824', 'Jean Wuckert', 1, 5, 'B', 14, 34, 6, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(47, '7590904113', 'Mr. Leland Oberbrunner', 1, 2, 'B', 5, 89, 2, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(48, '3636986277', 'Delta Grant', 2, 2, 'B', 23, 7, 6, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(49, '8056783282', 'Thalia Russel', 1, 4, 'C', 12, 65, 6, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(50, '5500723900', 'General Daugherty II', 1, 5, 'C', 15, 48, 3, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(51, '0563256111', 'Prof. Dawson Homenick IV', 2, 5, 'C', 33, 25, 5, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(52, '1868359181', 'Maxwell Frami', 2, 4, 'B', 29, 17, 3, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(53, '4748463088', 'Prof. Lonzo Rutherford', 2, 5, 'B', 32, 111, 2, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(54, '2283788516', 'Billy Stark', 2, 2, 'C', 24, 5, 3, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(55, '9691520911', 'Arnold Kulas', 2, 3, 'B', 26, 91, 4, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(56, '9306621104', 'Prof. Derrick Von Jr.', 2, 6, 'B', 35, 95, 5, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(57, '7851755833', 'Miss Carolanne Spencer DVM', 2, 1, 'B', 20, 107, 5, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(58, '7098763477', 'Prof. Tanner Collier II', 2, 3, 'C', 27, 14, 5, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(59, '5903326202', 'Clifford Schroeder', 2, 3, 'A', 25, 114, 1, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(60, '9429874138', 'Polly Langworth DVM', 2, 6, 'B', 35, 101, 5, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(61, '1675383709', 'Federico Zieme', 1, 6, 'A', 16, 16, 5, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(62, '3721183629', 'Kory Dibbert', 1, 6, 'A', 16, 80, 6, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(63, '1411875625', 'Stanford Dare', 2, 6, 'B', 35, 32, 6, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(64, '5773576689', 'Prof. Theresa Schmitt', 1, 4, 'B', 11, 3, 5, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(65, '1335699270', 'Prof. Timothy Goodwin I', 1, 1, 'C', 3, 10, 1, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(66, '3612820631', 'Madilyn Aufderhar IV', 2, 3, 'C', 27, 48, 2, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(67, '3838572594', 'Michelle Toy', 2, 6, 'A', 34, 10, 6, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(68, '8466418622', 'Mr. Wilbert Medhurst II', 2, 4, 'C', 30, 39, 2, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(69, '4895269765', 'Alberta Green', 1, 1, 'C', 3, 57, 5, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(70, '2075079179', 'Dr. Dessie Jacobson', 1, 2, 'A', 4, 49, 6, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(71, '0532300787', 'Magnolia Kessler', 2, 1, 'B', 20, 46, 4, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(72, '7486473923', 'Lydia Champlin', 2, 4, 'A', 28, 87, 3, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(73, '5579249531', 'Dr. Elfrieda Dickinson MD', 1, 2, 'C', 6, 27, 4, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(74, '7345630383', 'Kaley Hodkiewicz', 2, 2, 'C', 24, 112, 5, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(75, '2654310147', 'Prof. Daren Eichmann', 1, 6, 'A', 16, 43, 6, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(76, '5546618610', 'Miss Joannie Gorczany DDS', 1, 4, 'B', 11, 9, 4, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(77, '7609107124', 'Jovany Schowalter', 1, 3, 'C', 9, 8, 6, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(78, '0264055927', 'Adaline Waelchi I', 2, 6, 'B', 35, 23, 3, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(79, '4331534053', 'Melisa Rempel', 1, 3, 'C', 9, 33, 4, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(80, '5991587179', 'Trevor Rippin', 2, 5, 'A', 31, 54, 3, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(81, '7747221872', 'Alaina Mueller', 1, 3, 'B', 8, 44, 6, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(82, '5086741878', 'Laila Mueller', 2, 4, 'C', 30, 65, 6, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(83, '5436987271', 'Donald Auer', 1, 4, 'C', 12, 21, 6, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(84, '1676806758', 'Mossie Pagac', 2, 4, 'C', 30, 35, 2, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(85, '6658888063', 'Harmony Rutherford', 2, 4, 'B', 29, 94, 5, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(86, '5043137090', 'Dr. Bradly Barrows DDS', 1, 3, 'C', 9, 87, 2, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(87, '6773036115', 'Dr. Malachi Wuckert DVM', 2, 2, 'A', 22, 5, 6, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(88, '4963621966', 'Aisha Kreiger', 1, 5, 'C', 15, 15, 6, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(89, '7173073714', 'Kory Tromp', 2, 3, 'A', 25, 65, 6, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(90, '0146419353', 'Ms. Stephany O\'Hara', 2, 5, 'B', 32, 112, 4, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(91, '6129779692', 'Carter Batz', 1, 3, 'A', 7, 89, 3, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(92, '0151207870', 'Chanelle Walker', 1, 2, 'C', 6, 90, 4, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(93, '0381191664', 'Remington Lynch', 1, 4, 'B', 11, 91, 2, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(94, '4841700384', 'Harley Blanda', 1, 2, 'C', 6, 27, 1, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(95, '3905695923', 'Dr. Dannie Kilback DVM', 2, 4, 'C', 30, 28, 1, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(96, '2272536683', 'Prof. Cleo Mosciski MD', 2, 2, 'B', 23, 109, 6, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(97, '1229167710', 'Dr. Kareem Carter', 1, 3, 'A', 7, 111, 6, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(98, '6152650124', 'Eleonore Strosin', 2, 6, 'B', 35, 69, 4, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(99, '6115853100', 'Kayley Spencer', 2, 6, 'A', 34, 72, 3, '2024-08-01 00:27:31', '2024-08-01 00:27:31'),
(100, '7827024314', 'Prof. Brain Hills', 1, 5, 'A', 13, 61, 3, '2024-08-01 00:27:31', '2024-08-01 00:27:31');

-- --------------------------------------------------------

--
-- Table structure for table `surahs`
--

CREATE TABLE `surahs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_arab` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `arti` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipe` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jml_ayat` int(11) NOT NULL,
  `durasi` int(11) DEFAULT NULL,
  `file_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `surahs`
--

INSERT INTO `surahs` (`id`, `nama`, `nama_arab`, `arti`, `tipe`, `jml_ayat`, `durasi`, `file_path`, `created_at`, `updated_at`) VALUES
(1, 'Al Fatihah', '???????', 'Pembuka', 'Makkiyyah', 7, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(2, 'Al Baqarah', '??????', 'Sapi Betina', 'Madaniyyah', 286, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(3, 'Ali \'Imran', '??? ?????', 'Keluarga Imran', 'Madaniyyah', 200, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(4, 'An Nisa', '????????', 'Perempuan', 'Madaniyyah', 176, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(5, 'Al Maidah', '????????', 'Hidangan', 'Madaniyyah', 120, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(6, 'Al An\'am', '???????', 'Hewan Ternak', 'Makkiyyah', 165, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(7, 'Al A\'raf', '???????', 'Tempat Tertinggi', 'Makkiyyah', 206, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(8, 'Al Anfal', '???????', 'Harta Rampasan Perang', 'Madaniyyah', 75, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(9, 'At Taubah', '???????', 'Pengampunan', 'Madaniyyah', 129, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(10, 'Yunus', '????', 'Nabi Yunus', 'Makkiyyah', 109, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(11, 'Hud', '???', 'Nabi Hud', 'Makkiyyah', 123, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(12, 'Yusuf', '????', 'Nabi Yusuf', 'Makkiyyah', 111, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(13, 'Ar Ra\'d', '??????', 'Guruh', 'Makkiyyah', 43, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(14, 'Ibrahim', '???????', 'Nabi Ibrahim', 'Makkiyyah', 52, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(15, 'Al Hijr', '?????', 'Hijr', 'Makkiyyah', 99, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(16, 'An Nahl', '??????', 'Lebah', 'Makkiyyah', 128, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(17, 'Al Isra', '????????', 'Perjalanan di Malam Hari', 'Makkiyyah', 111, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(18, 'Al Kahf', '?????', 'Gua', 'Makkiyyah', 110, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(19, 'Maryam', '????', 'Maryam', 'Makkiyyah', 98, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(20, 'Thaha', '????', 'Thaha', 'Makkiyyah', 135, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(21, 'Al Anbiya', '?????????', 'Para Nabi', 'Makkiyyah', 112, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(22, 'Al Hajj', '?????', 'Haji', 'Madaniyyah', 78, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(23, 'Al Mu\'minun', '????????', 'Orang-orang Mukmin', 'Makkiyyah', 118, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(24, 'An Nur', '??????', 'Cahaya', 'Madaniyyah', 64, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(25, 'Al Furqan', '???????', 'Pembeda', 'Makkiyyah', 77, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(26, 'Asy Syu\'ara', '?????????', 'Para Penyair', 'Makkiyyah', 227, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(27, 'An Naml', '??????', 'Semut', 'Makkiyyah', 93, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(28, 'Al Qashash', '?????', 'Kisah-kisah', 'Makkiyyah', 88, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(29, 'Al Ankabut', '????????', 'Laba-laba', 'Makkiyyah', 69, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(30, 'Ar Rum', '??????', 'Bangsa Romawi', 'Makkiyyah', 60, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(31, 'Luqman', '?????', 'Keluarga Luqman', 'Makkiyyah', 34, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(32, 'As Sajdah', '???????', 'Sajdah', 'Makkiyyah', 30, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(33, 'Al Ahzab', '???????', 'Golongan yang Bersekutu', 'Madaniyyah', 73, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(34, 'Saba', '???', 'Kaum Saba', 'Makkiyyah', 54, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(35, 'Fathir', '????', 'Pencipta', 'Makkiyyah', 45, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(36, 'Yasin', '????', 'Yasin', 'Makkiyyah', 83, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(37, 'Ash Shaffat', '??????????', 'Barisan-barisan', 'Makkiyyah', 182, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(38, 'Shad', '??', 'Shad', 'Makkiyyah', 88, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(39, 'Az Zumar', '??????', 'Rombongan-rombongan', 'Makkiyyah', 75, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(40, 'Ghafir', '????', 'Yang Mengampuni', 'Makkiyyah', 85, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(41, 'Fushshilat', '?????', 'Yang Dijelaskan', 'Makkiyyah', 54, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(42, 'Asy Syura', '????????', 'Musyawarah', 'Makkiyyah', 53, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(43, 'Az Zukhruf', '???????', 'Perhiasan', 'Makkiyyah', 89, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(44, 'Ad Dukhan', '???????', 'Kabut', 'Makkiyyah', 59, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(45, 'Al Jatsiyah', '???????', 'Yang Bertekuk Lutut', 'Makkiyyah', 37, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(46, 'Al Ahqaf', '???????', 'Bukit-bukit Pasir', 'Makkiyyah', 35, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(47, 'Muhammad', '?????', 'Nabi Muhammad', 'Madaniyyah', 38, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(48, 'Al Fath', '?????', 'Kemenangan', 'Madaniyyah', 29, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(49, 'Al Hujurat', '???????', 'Kamar-kamar', 'Madaniyyah', 18, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(50, 'Qaf', '??', 'Qaf', 'Makkiyyah', 45, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(51, 'Adz Dzariyat', '?????????', 'Yang Menerbangkan', 'Makkiyyah', 60, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(52, 'At Thur', '??????', 'Bukit', 'Makkiyyah', 49, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(53, 'An Najm', '??????', 'Bintang', 'Makkiyyah', 62, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(54, 'Al Qamar', '?????', 'Bulan', 'Makkiyyah', 55, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(55, 'Ar Rahman', '????????', 'Yang Maha Pengasih', 'Makkiyyah', 78, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(56, 'Al Waqi\'ah', '???????', 'Hari Kiamat', 'Makkiyyah', 96, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(57, 'Al Hadid', '??????', 'Besi', 'Madaniyyah', 29, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(58, 'Al Mujadalah', '????????', 'Wanita yang Mengajukan Gugatan', 'Madaniyyah', 22, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(59, 'Al Hasyr', '?????', 'Pengusiran', 'Madaniyyah', 24, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(60, 'Al Mumtahanah', '????????', 'Wanita yang Diuji', 'Madaniyyah', 13, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(61, 'Ash Shaff', '??????', 'Barisan', 'Madaniyyah', 14, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(62, 'Al Jumu\'ah', '??????', 'Hari Jumat', 'Madaniyyah', 11, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(63, 'Al Munafiqun', '?????????', 'Orang-orang Munafik', 'Madaniyyah', 11, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(64, 'At Taghabun', '????????', 'Hari Dinampakkan Kesalahan', 'Madaniyyah', 18, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(65, 'Ath Thalaq', '???????', 'Talak', 'Madaniyyah', 12, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(66, 'At Tahrim', '????????', 'Pengharaman', 'Madaniyyah', 12, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(67, 'Al Mulk', '??????', 'Kerajaan', 'Makkiyyah', 30, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(68, 'Al Qalam', '?????', 'Pena', 'Makkiyyah', 52, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(69, 'Al Haqqah', '????????', 'Hari Kiamat', 'Makkiyyah', 52, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(70, 'Al Ma\'arij', '???????', 'Tempat-tempat Naik', 'Makkiyyah', 44, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(71, 'Nuh', '???', 'Nabi Nuh', 'Makkiyyah', 28, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(72, 'Al Jinn', '?????', 'Jin', 'Makkiyyah', 28, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(73, 'Al Muzzammil', '????????', 'Orang yang Berselimut', 'Makkiyyah', 20, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(74, 'Al Muddatstsir', '????????', 'Orang yang Berkemul', 'Makkiyyah', 56, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(75, 'Al Qiyamah', '???????', 'Hari Kiamat', 'Makkiyyah', 40, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(76, 'Al Insan', '???????', 'Manusia', 'Madaniyyah', 31, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(77, 'Al Mursalat', '????????', 'Malaikat-malaikat yang Diutus', 'Makkiyyah', 50, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(78, 'An Naba', '??????', 'Berita Besar', 'Makkiyyah', 40, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(79, 'An Nazi\'at', '?????????', 'Malaikat-malaikat yang Mencabut', 'Makkiyyah', 46, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(80, 'Abasa', '???', 'Berwajah Masam', 'Makkiyyah', 42, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(81, 'At Takwir', '????????', 'Menggulung', 'Makkiyyah', 29, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(82, 'Al Infithar', '????????', 'Terbelah', 'Makkiyyah', 19, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(83, 'Al Muththaffifin', '?????????', 'Orang-orang yang Curang', 'Makkiyyah', 36, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(84, 'Al Insyiqaq', '????????', 'Terbelah', 'Makkiyyah', 25, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(85, 'Al Buruj', '??????', 'Gugusan Bintang', 'Makkiyyah', 22, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(86, 'Ath Thariq', '???????', 'Yang Datang di Malam Hari', 'Makkiyyah', 17, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(87, 'Al A\'la', '??????', 'Yang Paling Tinggi', 'Makkiyyah', 19, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(88, 'Al Ghasyiyah', '???????', 'Hari Pembalasan', 'Makkiyyah', 26, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(89, 'Al Fajr', '?????', 'Fajar', 'Makkiyyah', 30, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(90, 'Al Balad', '?????', 'Negeri', 'Makkiyyah', 20, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(91, 'Asy Syams', '??????', 'Matahari', 'Makkiyyah', 15, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(92, 'Al Lail', '?????', 'Malam', 'Makkiyyah', 21, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(93, 'Adh Dhuha', '??????', 'Waktu Dhuha', 'Makkiyyah', 11, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(94, 'Asy Syarh', '??????', 'Melapangkan', 'Makkiyyah', 8, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(95, 'At Tin', '??????', 'Buah Tin', 'Makkiyyah', 8, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(96, 'Al \'Alaq', '?????', 'Segumpal Darah', 'Makkiyyah', 19, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(97, 'Al Qadr', '?????', 'Kemuliaan', 'Makkiyyah', 5, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(98, 'Al Bayyinah', '???????', 'Pembuktian', 'Madaniyyah', 8, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(99, 'Az Zalzalah', '????????', 'Guncangan', 'Madaniyyah', 8, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(100, 'Al \'Adiyat', '????????', 'Kuda Perang yang Berlari Kencang', 'Makkiyyah', 11, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(101, 'Al Qari\'ah', '???????', 'Hari Kiamat', 'Makkiyyah', 11, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(102, 'At Takatsur', '????????', 'Bermegah-megahan', 'Makkiyyah', 8, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(103, 'Al \'Ashr', '?????', 'Masa', 'Makkiyyah', 3, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(104, 'Al Humazah', '??????', 'Pengumpat', 'Makkiyyah', 9, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(105, 'Al Fil', '?????', 'Gajah', 'Makkiyyah', 5, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(106, 'Quraisy', '????', 'Suku Quraisy', 'Makkiyyah', 4, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(107, 'Al Ma\'un', '???????', 'Barang-barang yang Berguna', 'Makkiyyah', 7, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(108, 'Al Kautsar', '??????', 'Nikmat yang Banyak', 'Makkiyyah', 3, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(109, 'Al Kafirun', '????????', 'Orang-orang Kafir', 'Makkiyyah', 6, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(110, 'An Nashr', '??????', 'Pertolongan', 'Madaniyyah', 3, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(111, 'Al Lahab', '??????', 'Gejolak Api', 'Makkiyyah', 5, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(112, 'Al Ikhlash', '???????', 'Ikhlas', 'Makkiyyah', 4, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(113, 'Al Falaq', '?????', 'Waktu Shubuh', 'Madaniyyah', 5, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(114, 'An Nas', '??????', 'Manusia', 'Madaniyyah', 6, 0, 'null', '2024-08-01 00:27:30', '2024-08-01 00:27:30');

-- --------------------------------------------------------

--
-- Table structure for table `ujians`
--

CREATE TABLE `ujians` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ujians`
--

INSERT INTO `ujians` (`id`, `nama`, `deskripsi`, `created_at`, `updated_at`) VALUES
(1, 'Tahsin', 'Ujian membaca Alquran', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(2, 'Tasmi', 'Ujian tasmi juziyyah', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(3, 'Tahfidz', 'Ujian tahfidz', '2024-08-01 00:27:30', '2024-08-01 00:27:30');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `nama`, `deskripsi`, `created_at`, `updated_at`) VALUES
(1, 'SMPIT Abu Bakar Full Day School', ' ', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(2, 'SMAIT Abu Bakar Yogyakarta', ' ', '2024-08-01 00:27:30', '2024-08-01 00:27:30');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nama`, `email`, `password`, `role_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mr. Kale Hoppe V', 'aileen51@example.com', '$2y$12$g6BgARYBGw01lRlSXFKDNu9QdfjFHlQ0VY8kkw8MMEf9nGks5vq5G', 3, 'EdrcNOO5Lh', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(2, 'Prof. Ahmed Kulas IV', 'arianna84@example.net', '$2y$12$g6BgARYBGw01lRlSXFKDNu9QdfjFHlQ0VY8kkw8MMEf9nGks5vq5G', 3, 'xQt1QCGPwO', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(3, 'Ransom Kemmer III', 'hailey54@example.org', '$2y$12$1UY..uvv9sqd0ybVhhASd.VC1G8lII/YBUspnx1jKVcJRDXqQ/cwi', 1, 'QNeLwiVw77', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(4, 'Lesly Hudson', 'reilly.keeling@example.org', '$2y$12$1UY..uvv9sqd0ybVhhASd.VC1G8lII/YBUspnx1jKVcJRDXqQ/cwi', 4, 'jwGCj1To45', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(5, 'Katelin Bogisich', 'travon55@example.com', '$2y$12$1UY..uvv9sqd0ybVhhASd.VC1G8lII/YBUspnx1jKVcJRDXqQ/cwi', 4, 'V6pO07HpGA', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(6, 'Ottis Wuckert', 'kohler.alda@example.net', '$2y$12$1UY..uvv9sqd0ybVhhASd.VC1G8lII/YBUspnx1jKVcJRDXqQ/cwi', 3, 'NAvB8VB79x', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(7, 'Margaret Hettinger', 'okon.johnnie@example.net', '$2y$12$1UY..uvv9sqd0ybVhhASd.VC1G8lII/YBUspnx1jKVcJRDXqQ/cwi', 1, 'MYK7hTg4OJ', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(8, 'Maiya O\'Reilly', 'tromp.stephania@example.net', '$2y$12$1UY..uvv9sqd0ybVhhASd.VC1G8lII/YBUspnx1jKVcJRDXqQ/cwi', 3, '68UeUUjjD0', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(9, 'Cristina Dickens', 'osvaldo.pollich@example.net', '$2y$12$1UY..uvv9sqd0ybVhhASd.VC1G8lII/YBUspnx1jKVcJRDXqQ/cwi', 1, 'WG5IazqjHa', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(10, 'Saige Prosacco', 'willard.torp@example.org', '$2y$12$1UY..uvv9sqd0ybVhhASd.VC1G8lII/YBUspnx1jKVcJRDXqQ/cwi', 1, 'zX1UONgd8H', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(11, 'Greyson Roberts', 'savanna22@example.com', '$2y$12$1UY..uvv9sqd0ybVhhASd.VC1G8lII/YBUspnx1jKVcJRDXqQ/cwi', 3, 'L1dhhCT09U', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(12, 'Mrs. Duane Wisoky', 'hope75@example.com', '$2y$12$1UY..uvv9sqd0ybVhhASd.VC1G8lII/YBUspnx1jKVcJRDXqQ/cwi', 4, '0ihutIgYf8', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(13, 'Fern Barrows', 'rippin.seth@example.com', '$2y$12$1UY..uvv9sqd0ybVhhASd.VC1G8lII/YBUspnx1jKVcJRDXqQ/cwi', 1, '1L8vCsmdH5', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(14, 'Prof. Jada O\'Kon', 'mohr.maeve@example.com', '$2y$12$1UY..uvv9sqd0ybVhhASd.VC1G8lII/YBUspnx1jKVcJRDXqQ/cwi', 3, '5W9UeWRk7u', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(15, 'Dr. Douglas Torp PhD', 'alisa76@example.org', '$2y$12$1UY..uvv9sqd0ybVhhASd.VC1G8lII/YBUspnx1jKVcJRDXqQ/cwi', 4, 'oGcTTFxolU', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(16, 'Krista Boehm', 'kurtis98@example.org', '$2y$12$1UY..uvv9sqd0ybVhhASd.VC1G8lII/YBUspnx1jKVcJRDXqQ/cwi', 1, 'eGPG1prb8S', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(17, 'Gregory Graham PhD', 'jconsidine@example.net', '$2y$12$1UY..uvv9sqd0ybVhhASd.VC1G8lII/YBUspnx1jKVcJRDXqQ/cwi', 3, 'wdO19Ypcil', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(18, 'Nellie Murray', 'vinnie20@example.org', '$2y$12$1UY..uvv9sqd0ybVhhASd.VC1G8lII/YBUspnx1jKVcJRDXqQ/cwi', 3, 'kwNKhhv1mt', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(19, 'Myrtis O\'Keefe', 'tromp.lydia@example.com', '$2y$12$1UY..uvv9sqd0ybVhhASd.VC1G8lII/YBUspnx1jKVcJRDXqQ/cwi', 4, 'T9YRblIwKL', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(20, 'Ms. Jayne Abbott', 'damon.kshlerin@example.net', '$2y$12$1UY..uvv9sqd0ybVhhASd.VC1G8lII/YBUspnx1jKVcJRDXqQ/cwi', 3, 'EIeGD1ewzb', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(21, 'River Pouros', 'floyd.adams@example.org', '$2y$12$1UY..uvv9sqd0ybVhhASd.VC1G8lII/YBUspnx1jKVcJRDXqQ/cwi', 1, 'JkliecoVHe', '2024-08-01 00:27:30', '2024-08-01 00:27:30'),
(22, 'Felicita Ferry', 'rolfson.merle@example.com', '$2y$12$1UY..uvv9sqd0ybVhhASd.VC1G8lII/YBUspnx1jKVcJRDXqQ/cwi', 3, 'd0rPz9R89M', '2024-08-01 00:27:30', '2024-08-01 00:27:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_units`
--
ALTER TABLE `admin_units`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_units_user_id_foreign` (`user_id`),
  ADD KEY `admin_units_unit_id_foreign` (`unit_id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `guru_qurans`
--
ALTER TABLE `guru_qurans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `guru_qurans_user_id_foreign` (`user_id`),
  ADD KEY `guru_qurans_unit_id_foreign` (`unit_id`);

--
-- Indexes for table `jilids`
--
ALTER TABLE `jilids`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `jilids_nama_unique` (`nama`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `juzs`
--
ALTER TABLE `juzs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `juzs_nama_unique` (`nama`),
  ADD KEY `juzs_surah_id_mulai_foreign` (`surah_id_mulai`),
  ADD KEY `juzs_surah_id_selesai_foreign` (`surah_id_selesai`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kelompok_halaqahs`
--
ALTER TABLE `kelompok_halaqahs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kelompok_halaqahs_unit_id_foreign` (`unit_id`),
  ADD KEY `kelompok_halaqahs_kelas_id_foreign` (`kelas_id`),
  ADD KEY `kelompok_halaqahs_guru_quran_id_foreign` (`guru_quran_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mutabaahs`
--
ALTER TABLE `mutabaahs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mutabaahs_siswa_id_foreign` (`siswa_id`);

--
-- Indexes for table `nilais`
--
ALTER TABLE `nilais`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nilais_siswa_id_foreign` (`siswa_id`),
  ADD KEY `nilais_ujian_id_foreign` (`ujian_id`),
  ADD KEY `nilais_guru_quran_id_foreign` (`guru_quran_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `siswas`
--
ALTER TABLE `siswas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `siswas_unit_id_foreign` (`unit_id`),
  ADD KEY `siswas_kelas_id_foreign` (`kelas_id`),
  ADD KEY `siswas_kelompok_halaqah_id_foreign` (`kelompok_halaqah_id`),
  ADD KEY `siswas_surah_id_foreign` (`surah_id`),
  ADD KEY `siswas_jilid_id_foreign` (`jilid_id`);

--
-- Indexes for table `surahs`
--
ALTER TABLE `surahs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ujians`
--
ALTER TABLE `ujians`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ujians_nama_unique` (`nama`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `units_nama_unique` (`nama`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_units`
--
ALTER TABLE `admin_units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `guru_qurans`
--
ALTER TABLE `guru_qurans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `jilids`
--
ALTER TABLE `jilids`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `juzs`
--
ALTER TABLE `juzs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `kelompok_halaqahs`
--
ALTER TABLE `kelompok_halaqahs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `mutabaahs`
--
ALTER TABLE `mutabaahs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `nilais`
--
ALTER TABLE `nilais`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `siswas`
--
ALTER TABLE `siswas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `surahs`
--
ALTER TABLE `surahs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `ujians`
--
ALTER TABLE `ujians`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_units`
--
ALTER TABLE `admin_units`
  ADD CONSTRAINT `admin_units_unit_id_foreign` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`),
  ADD CONSTRAINT `admin_units_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `guru_qurans`
--
ALTER TABLE `guru_qurans`
  ADD CONSTRAINT `guru_qurans_unit_id_foreign` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`),
  ADD CONSTRAINT `guru_qurans_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `juzs`
--
ALTER TABLE `juzs`
  ADD CONSTRAINT `juzs_surah_id_mulai_foreign` FOREIGN KEY (`surah_id_mulai`) REFERENCES `surahs` (`id`),
  ADD CONSTRAINT `juzs_surah_id_selesai_foreign` FOREIGN KEY (`surah_id_selesai`) REFERENCES `surahs` (`id`);

--
-- Constraints for table `kelompok_halaqahs`
--
ALTER TABLE `kelompok_halaqahs`
  ADD CONSTRAINT `kelompok_halaqahs_guru_quran_id_foreign` FOREIGN KEY (`guru_quran_id`) REFERENCES `guru_qurans` (`id`),
  ADD CONSTRAINT `kelompok_halaqahs_kelas_id_foreign` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id`),
  ADD CONSTRAINT `kelompok_halaqahs_unit_id_foreign` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`);

--
-- Constraints for table `mutabaahs`
--
ALTER TABLE `mutabaahs`
  ADD CONSTRAINT `mutabaahs_siswa_id_foreign` FOREIGN KEY (`siswa_id`) REFERENCES `siswas` (`id`);

--
-- Constraints for table `nilais`
--
ALTER TABLE `nilais`
  ADD CONSTRAINT `nilais_guru_quran_id_foreign` FOREIGN KEY (`guru_quran_id`) REFERENCES `guru_qurans` (`id`),
  ADD CONSTRAINT `nilais_siswa_id_foreign` FOREIGN KEY (`siswa_id`) REFERENCES `siswas` (`id`),
  ADD CONSTRAINT `nilais_ujian_id_foreign` FOREIGN KEY (`ujian_id`) REFERENCES `ujians` (`id`);

--
-- Constraints for table `siswas`
--
ALTER TABLE `siswas`
  ADD CONSTRAINT `siswas_jilid_id_foreign` FOREIGN KEY (`jilid_id`) REFERENCES `jilids` (`id`),
  ADD CONSTRAINT `siswas_kelas_id_foreign` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id`),
  ADD CONSTRAINT `siswas_kelompok_halaqah_id_foreign` FOREIGN KEY (`kelompok_halaqah_id`) REFERENCES `kelompok_halaqahs` (`id`),
  ADD CONSTRAINT `siswas_surah_id_foreign` FOREIGN KEY (`surah_id`) REFERENCES `surahs` (`id`),
  ADD CONSTRAINT `siswas_unit_id_foreign` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
--
-- Database: `data`
--
CREATE DATABASE IF NOT EXISTS `data` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `data`;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inventories`
--

CREATE TABLE `inventories` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_10_25_134819_create_admins_table', 1),
(4, '2019_10_26_122431_create_inventories_table', 1);

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Bubble Buddy', 'bubble@bbmail.com', 'ifaaw1223', 'bubble bubble', NULL, '2023-01-04 20:54:33', NULL),
(2, 'admin', 'admin@mail.com', '$2y$10$ijfh4a967isj/eN1.tQuA.tWhoeY2sLdc5z2AI8CYXFmla2GyCsJ.', 'active', NULL, '2023-03-14 23:11:51', '2023-03-14 23:11:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `inventories`
--
ALTER TABLE `inventories`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inventories`
--
ALTER TABLE `inventories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `dss`
--
CREATE DATABASE IF NOT EXISTS `dss` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `dss`;

-- --------------------------------------------------------

--
-- Table structure for table `assessments`
--

CREATE TABLE `assessments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employe_id` bigint(20) UNSIGNED NOT NULL,
  `criteria_id` bigint(20) UNSIGNED NOT NULL,
  `weight` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `criterias`
--

CREATE TABLE `criterias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `criteria_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('benefit','cost') COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `criterias`
--

INSERT INTO `criterias` (`id`, `criteria_code`, `name`, `type`, `weight`, `created_at`, `updated_at`) VALUES
(1, '1', 'kriteria', 'cost', 5, '2023-01-01 13:07:51', '2023-01-01 13:07:51');

-- --------------------------------------------------------

--
-- Table structure for table `employes`
--

CREATE TABLE `employes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` enum('Male','Female') COLLATE utf8mb4_unicode_ci NOT NULL,
  `birth_place` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birth_date` date NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'admin',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employes`
--

INSERT INTO `employes` (`id`, `full_name`, `gender`, `birth_place`, `birth_date`, `address`, `position`, `created_at`, `updated_at`) VALUES
(1, 'ifa', 'Female', 'yk', '2023-01-01', 'yk', 'ceo', '2023-01-01 13:08:37', '2023-01-01 13:08:37');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
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
(4, '2020_10_06_145808_create_criterias_table', 1),
(5, '2020_10_06_145833_create_sub_criterias_table', 1),
(6, '2020_10_07_094305_create_employes_table', 1),
(7, '2020_10_07_094525_create_assessments_table', 1);

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
-- Table structure for table `sub_criterias`
--

CREATE TABLE `sub_criterias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `criteria_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` int(11) NOT NULL,
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
(1, 'ifa', 'ifa@mail.com', NULL, '$2y$10$6x3W5SMYZTvOr9FaCwWbDuracyso2oSuf2S1NDIlT0UZ5BTRvZbum', NULL, '2023-01-01 13:06:01', '2023-01-01 13:06:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assessments`
--
ALTER TABLE `assessments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assessments_employe_id_foreign` (`employe_id`),
  ADD KEY `assessments_criteria_id_foreign` (`criteria_id`);

--
-- Indexes for table `criterias`
--
ALTER TABLE `criterias`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `criterias_criteria_code_unique` (`criteria_code`);

--
-- Indexes for table `employes`
--
ALTER TABLE `employes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `sub_criterias`
--
ALTER TABLE `sub_criterias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_criterias_criteria_id_foreign` (`criteria_id`);

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
-- AUTO_INCREMENT for table `assessments`
--
ALTER TABLE `assessments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `criterias`
--
ALTER TABLE `criterias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employes`
--
ALTER TABLE `employes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
-- AUTO_INCREMENT for table `sub_criterias`
--
ALTER TABLE `sub_criterias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assessments`
--
ALTER TABLE `assessments`
  ADD CONSTRAINT `assessments_criteria_id_foreign` FOREIGN KEY (`criteria_id`) REFERENCES `criterias` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `assessments_employe_id_foreign` FOREIGN KEY (`employe_id`) REFERENCES `employes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sub_criterias`
--
ALTER TABLE `sub_criterias`
  ADD CONSTRAINT `sub_criterias_criteria_id_foreign` FOREIGN KEY (`criteria_id`) REFERENCES `criterias` (`id`) ON DELETE CASCADE;
--
-- Database: `ecommerce`
--
CREATE DATABASE IF NOT EXISTS `ecommerce` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ecommerce`;
--
-- Database: `info`
--
CREATE DATABASE IF NOT EXISTS `info` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `info`;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `produk` varchar(50) NOT NULL,
  `harga` int(11) NOT NULL,
  `jumlah` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `produk`, `harga`, `jumlah`) VALUES
(1, 'croissant', 10000, 12),
(2, 'macaroon', 10000, 15),
(3, 'tiramisu', 14000, 8),
(4, 'waffle', 12000, 9),
(5, 'cheese cake', 18000, 6),
(6, 'pretzel', 16000, 10),
(7, 'red velvet', 24000, 6),
(0, 'eclair', 28000, 7);
--
-- Database: `inv`
--
CREATE DATABASE IF NOT EXISTS `inv` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `inv`;

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `country_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
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
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(3, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(4, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(5, '2016_06_01_000004_create_oauth_clients_table', 1),
(6, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(7, '2020_06_04_000001_create_permissions_table', 1),
(8, '2020_06_04_000002_create_roles_table', 1),
(9, '2020_06_04_000003_create_users_table', 1),
(10, '2020_06_04_000004_create_countries_table', 1),
(11, '2020_06_04_000005_create_cities_table', 1),
(12, '2020_06_04_000006_create_trips_table', 1),
(13, '2020_06_04_000007_create_permission_role_pivot_table', 1),
(14, '2020_06_04_000008_create_role_user_pivot_table', 1),
(15, '2020_06_04_000009_add_relationship_fields_to_cities_table', 1),
(16, '2020_06_04_000010_add_relationship_fields_to_trips_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trips`
--

CREATE TABLE `trips` (
  `id` int(10) UNSIGNED NOT NULL,
  `date_from` date NOT NULL,
  `date_to` date NOT NULL,
  `adults` int(11) NOT NULL,
  `children` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `city_from_id` int(10) UNSIGNED NOT NULL,
  `city_to_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` datetime DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'ifa', 'ifa@gmail.com', '2022-12-27 11:50:04', 'ifa1223', '001', '2022-12-28 05:13:59', '2022-12-28 05:13:59', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country_fk_1586974` (`country_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD KEY `role_id_fk_1586949` (`role_id`),
  ADD KEY `permission_id_fk_1586949` (`permission_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD KEY `user_id_fk_1586958` (`user_id`),
  ADD KEY `role_id_fk_1586958` (`role_id`);

--
-- Indexes for table `trips`
--
ALTER TABLE `trips`
  ADD PRIMARY KEY (`id`),
  ADD KEY `city_from_fk_1587040` (`city_from_id`),
  ADD KEY `city_to_fk_1587042` (`city_to_id`);

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
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trips`
--
ALTER TABLE `trips`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `country_fk_1586974` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`);

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_id_fk_1586949` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_id_fk_1586949` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_id_fk_1586958` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_id_fk_1586958` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `trips`
--
ALTER TABLE `trips`
  ADD CONSTRAINT `city_from_fk_1587040` FOREIGN KEY (`city_from_id`) REFERENCES `cities` (`id`),
  ADD CONSTRAINT `city_to_fk_1587042` FOREIGN KEY (`city_to_id`) REFERENCES `cities` (`id`);
--
-- Database: `inventory`
--
CREATE DATABASE IF NOT EXISTS `inventory` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `inventory`;

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `nama_barang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `stok` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `barang_keluar`
--

CREATE TABLE `barang_keluar` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no_barang_keluar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_barang` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `jml_barang_keluar` int(11) DEFAULT NULL,
  `total` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `barang_masuk`
--

CREATE TABLE `barang_masuk` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no_barang_masuk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_barang` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `jml_barang_masuk` int(11) DEFAULT NULL,
  `total` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `nama_kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('admin','kasir') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_kategori` (`id_kategori`);

--
-- Indexes for table `barang_keluar`
--
ALTER TABLE `barang_keluar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_barang` (`id_barang`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `barang_masuk`
--
ALTER TABLE `barang_masuk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_barang` (`id_barang`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `barang_keluar`
--
ALTER TABLE `barang_keluar`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `barang_masuk`
--
ALTER TABLE `barang_masuk`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `barang_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `barang_keluar`
--
ALTER TABLE `barang_keluar`
  ADD CONSTRAINT `barang_keluar_ibfk_1` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `barang_keluar_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `barang_masuk`
--
ALTER TABLE `barang_masuk`
  ADD CONSTRAINT `barang_masuk_ibfk_1` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `barang_masuk_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `inventoryy`
--
CREATE DATABASE IF NOT EXISTS `inventoryy` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `inventoryy`;

-- --------------------------------------------------------

--
-- Table structure for table `criterias`
--

CREATE TABLE `criterias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_kriteria` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bobot` int(11) NOT NULL,
  `is_beneficial` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `criterias`
--

INSERT INTO `criterias` (`id`, `nama_kriteria`, `bobot`, `is_beneficial`, `created_at`, `updated_at`) VALUES
(1, 'Stok', 4, 1, '2023-01-08 14:57:32', '2023-01-08 14:57:32'),
(2, 'Terjual', 4, 1, '2023-01-08 14:57:32', '2023-01-08 14:57:32'),
(3, 'Harga Beli', 3, 0, '2023-01-08 14:57:32', '2023-01-08 14:57:32'),
(4, 'Harga Jual', 2, 1, '2023-01-08 14:57:32', '2023-01-08 14:57:32');

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
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
(5, '2021_11_17_123100_create_products_table', 1),
(6, '2021_11_17_124031_create_criterias_table', 1),
(7, '2021_11_20_165752_create_results_table', 1);

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
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stok` int(11) NOT NULL,
  `terjual` int(11) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.jpg',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `kode`, `kategori`, `stok`, `terjual`, `harga_beli`, `harga_jual`, `foto`, `created_at`, `updated_at`) VALUES
(1, 'Fidel Kuvalis', '3409928', 'kategori', 518, 4972528, 67, 9, 'default.jpg', '2023-01-08 14:46:01', '2023-01-08 14:46:01'),
(2, 'Kelli Sawayn', '0', 'kategori', 7, 26645, 5, 72, 'default.jpg', '2023-01-08 14:46:01', '2023-01-08 14:46:01'),
(3, 'Abdul Johnston', '803', 'kategori', 64490691, 4, 68, 83, 'default.jpg', '2023-01-08 14:46:01', '2023-01-08 14:46:01'),
(4, 'Hilario Carroll IV', '415593', 'kategori', 305, 51, 37, 17, 'default.jpg', '2023-01-08 14:46:01', '2023-01-08 14:46:01'),
(5, 'Ali O\'Reilly', '4210', 'kategori', 6, 6, 48, 28, 'default.jpg', '2023-01-08 14:46:01', '2023-01-08 14:46:01'),
(6, 'Demond West', '24837846', 'kategori', 2174887, 0, 43, 17, 'default.jpg', '2023-01-08 14:46:01', '2023-01-08 14:46:01'),
(7, 'Ms. Darlene Quigley', '91337', 'kategori', 16132054, 25337, 77, 12, 'default.jpg', '2023-01-08 14:46:01', '2023-01-08 14:46:01'),
(8, 'Jay Rogahn', '83135831', 'kategori', 1228, 29, 38, 1, 'default.jpg', '2023-01-08 14:46:01', '2023-01-08 14:46:01'),
(9, 'Janae Towne', '871', 'kategori', 998605782, 0, 57, 12, 'default.jpg', '2023-01-08 14:46:01', '2023-01-08 14:46:01'),
(10, 'Chasity Zulauf', '2', 'kategori', 237669814, 30432014, 87, 68, 'default.jpg', '2023-01-08 14:46:01', '2023-01-08 14:46:01'),
(11, 'Dr. Perry Waters', '5111', 'kategori', 7, 6, 97, 72, 'default.jpg', '2023-01-08 14:46:01', '2023-01-08 14:46:01'),
(12, 'Burdette Zieme', '20942', 'kategori', 46619, 259, 8, 41, 'default.jpg', '2023-01-08 14:46:01', '2023-01-08 14:46:01'),
(13, 'Prof. Norbert Champlin', '2790646', 'kategori', 40942837, 596735076, 51, 51, 'default.jpg', '2023-01-08 14:46:01', '2023-01-08 14:46:01'),
(14, 'Ms. Shany Kutch', '13729', 'kategori', 4977, 96, 60, 1, 'default.jpg', '2023-01-08 14:46:01', '2023-01-08 14:46:01'),
(15, 'Baron Gerhold MD', '481', 'kategori', 48623, 84, 97, 34, 'default.jpg', '2023-01-08 14:46:01', '2023-01-08 14:46:01'),
(16, 'Dr. Jovan Cassin PhD', '55', 'kategori', 4794, 1714, 46, 38, 'default.jpg', '2023-01-08 14:46:01', '2023-01-08 14:46:01'),
(17, 'Mrs. Rosalia Stehr', '158300', 'kategori', 10864412, 9790614, 36, 95, 'default.jpg', '2023-01-08 14:46:01', '2023-01-08 14:46:01'),
(18, 'Mr. Lawson D\'Amore', '748810', 'kategori', 636387491, 5182532, 87, 23, 'default.jpg', '2023-01-08 14:46:01', '2023-01-08 14:46:01'),
(19, 'Ms. Neoma Turcotte Jr.', '825153', 'kategori', 28696, 799, 67, 2, 'default.jpg', '2023-01-08 14:46:01', '2023-01-08 14:46:01'),
(20, 'Elroy McLaughlin', '5616124', 'kategori', 2709, 6110501, 68, 22, 'default.jpg', '2023-01-08 14:46:01', '2023-01-08 14:46:01'),
(21, 'Jacquelyn Parisian', '7933029', 'kategori', 1441, 962162, 86, 45, 'default.jpg', '2023-01-08 14:46:39', '2023-01-08 14:46:39'),
(22, 'Prof. Estevan Rau', '2953', 'kategori', 11, 3703, 92, 21, 'default.jpg', '2023-01-08 14:46:39', '2023-01-08 14:46:39'),
(23, 'Silas Walter', '50410156', 'kategori', 213, 501728, 79, 87, 'default.jpg', '2023-01-08 14:46:39', '2023-01-08 14:46:39'),
(24, 'Cody Legros', '89760907', 'kategori', 468, 0, 23, 74, 'default.jpg', '2023-01-08 14:46:39', '2023-01-08 14:46:39'),
(25, 'Consuelo Ullrich', '5', 'kategori', 712, 76, 90, 83, 'default.jpg', '2023-01-08 14:46:39', '2023-01-08 14:46:39'),
(26, 'Ansel Stanton', '96805919', 'kategori', 969554633, 337247251, 28, 51, 'default.jpg', '2023-01-08 14:46:39', '2023-01-08 14:46:39'),
(27, 'Prof. Maximillian Metz', '617691', 'kategori', 726, 4, 83, 61, 'default.jpg', '2023-01-08 14:46:39', '2023-01-08 14:46:39'),
(28, 'Nico Kihn', '8178', 'kategori', 66988, 473203591, 25, 97, 'default.jpg', '2023-01-08 14:46:39', '2023-01-08 14:46:39'),
(29, 'Eliane Bashirian', '7053346', 'kategori', 17991833, 208, 72, 45, 'default.jpg', '2023-01-08 14:46:39', '2023-01-08 14:46:39'),
(30, 'Amalia Bechtelar', '582536813', 'kategori', 3339341, 208, 71, 6, 'default.jpg', '2023-01-08 14:46:39', '2023-01-08 14:46:39'),
(31, 'Tyra Osinski', '7071019', 'kategori', 414, 40505513, 16, 77, 'default.jpg', '2023-01-08 14:46:39', '2023-01-08 14:46:39'),
(33, 'Reinhold Cormier', 'kode', 'kategori', 938398, 7601921, 84, 7, 'default.jpg', '2023-01-08 14:47:38', '2023-01-08 14:47:38'),
(35, 'Eduardo Kassulke', '865401429', 'kategori', 334495, 894759960, 36, 66, 'default.jpg', '2023-01-08 14:50:51', '2023-01-08 14:50:51'),
(36, 'Mr. Clair Bergstrom PhD', '625502', 'kategori', 9, 79269130, 57, 39, 'default.jpg', '2023-01-08 14:50:51', '2023-01-08 14:50:51'),
(37, 'Scarlett Bayer', '818', 'kategori', 0, 564, 59, 86, 'default.jpg', '2023-01-08 14:50:51', '2023-01-08 14:50:51'),
(38, 'Miss Kailee Champlin MD', '214', 'kategori', 2627249, 79411, 41, 57, 'default.jpg', '2023-01-08 14:50:51', '2023-01-08 14:50:51'),
(39, 'Dayne Nader DDS', '298', 'kategori', 4932183, 962036, 30, 45, 'default.jpg', '2023-01-08 14:50:51', '2023-01-08 14:50:51'),
(40, 'Monte Lakin III', '3533', 'kategori', 49500633, 722602, 38, 52, 'default.jpg', '2023-01-08 14:50:51', '2023-01-08 14:50:51'),
(41, 'Mrs. Katrine Kuhlman Jr.', '752305', 'kategori', 27, 56142, 28, 16, 'default.jpg', '2023-01-08 14:50:51', '2023-01-08 14:50:51'),
(42, 'Mr. Stephon Schmitt DDS', '9944', 'kategori', 860897, 31635998, 28, 86, 'default.jpg', '2023-01-08 14:50:51', '2023-01-08 14:50:51'),
(43, 'Miss Anastasia Franecki', '870444531', 'kategori', 8708127, 222956, 27, 68, 'default.jpg', '2023-01-08 14:50:51', '2023-01-08 14:50:51'),
(44, 'Rahul Ruecker', '82003006', 'kategori', 28508647, 436, 48, 74, 'default.jpg', '2023-01-08 14:50:51', '2023-01-08 14:50:51'),
(46, 'Krystina Schiller', '43116', 'kategori', 337722, 4829, 69, 24, 'default.jpg', '2023-01-08 14:56:46', '2023-01-08 14:56:46'),
(47, 'Linda Schmidt', '16926', 'kategori', 24, 353388595, 65, 100, 'default.jpg', '2023-01-08 14:56:46', '2023-01-08 14:56:46'),
(48, 'Bo Yost', '60426', 'kategori', 9345, 3356, 94, 91, 'default.jpg', '2023-01-08 14:56:46', '2023-01-08 14:56:46'),
(49, 'Ms. Maida Stiedemann', '96202', 'kategori', 0, 60845838, 48, 11, 'default.jpg', '2023-01-08 14:56:46', '2023-01-08 14:56:46'),
(50, 'Omari Labadie', '98006', 'kategori', 12, 566, 67, 47, 'default.jpg', '2023-01-08 14:56:46', '2023-01-08 14:56:46'),
(51, 'Houston Kub', '45169', 'kategori', 15, 758459, 67, 28, 'default.jpg', '2023-01-08 14:56:46', '2023-01-08 14:56:46'),
(52, 'Dr. Emely Torp', '31022', 'kategori', 9482006, 87073, 5, 9, 'default.jpg', '2023-01-08 14:56:46', '2023-01-08 14:56:46'),
(53, 'Ashlynn Wintheiser', '27183', 'kategori', 7240, 673222, 27, 51, 'default.jpg', '2023-01-08 14:56:46', '2023-01-08 14:56:46'),
(54, 'Virginia Morissette', '47246', 'kategori', 528232651, 740, 34, 29, 'default.jpg', '2023-01-08 14:56:46', '2023-01-08 14:56:46'),
(55, 'Ms. Leslie Rutherford', '53115', 'kategori', 713852609, 178, 90, 37, 'default.jpg', '2023-01-08 14:56:46', '2023-01-08 14:56:46'),
(56, 'Rebecca Kessler', '30803', 'kategori', 17788711, 3, 28, 36, 'default.jpg', '2023-01-08 14:56:46', '2023-01-08 14:56:46'),
(57, 'Mustafa Schinner II', '84503', 'kategori', 8628, 974929379, 22, 5, 'default.jpg', '2023-01-08 14:56:46', '2023-01-08 14:56:46'),
(58, 'Prof. Conner Prosacco III', '62057', 'kategori', 4361, 0, 57, 43, 'default.jpg', '2023-01-08 14:56:46', '2023-01-08 14:56:46'),
(59, 'Aaliyah Pfeffer', '39606', 'kategori', 95373, 262, 62, 37, 'default.jpg', '2023-01-08 14:56:46', '2023-01-08 14:56:46'),
(60, 'Amiya Pfeffer', '82844', 'kategori', 87, 549696, 60, 62, 'default.jpg', '2023-01-08 14:56:46', '2023-01-08 14:56:46'),
(61, 'Dr. Nat Hahn', '48536', 'kategori', 173694137, 7, 78, 70, 'default.jpg', '2023-01-08 14:56:46', '2023-01-08 14:56:46'),
(62, 'Brionna Bins', '32894', 'kategori', 561, 9, 62, 87, 'default.jpg', '2023-01-08 14:56:46', '2023-01-08 14:56:46'),
(63, 'Conrad Johnston', '61685', 'kategori', 38, 96912418, 86, 63, 'default.jpg', '2023-01-08 14:56:46', '2023-01-08 14:56:46'),
(64, 'Fanny Purdy', '31953', 'kategori', 59, 588741249, 98, 43, 'default.jpg', '2023-01-08 14:56:46', '2023-01-08 14:56:46'),
(65, 'Prof. Timothy Powlowski PhD', '92605', 'kategori', 770376789, 1019, 40, 93, 'default.jpg', '2023-01-08 14:56:46', '2023-01-08 14:56:46'),
(66, 'Marge Heaney III', '44220', 'kategori', 4024053, 74, 55, 89, 'default.jpg', '2023-01-08 14:57:32', '2023-01-08 14:57:32'),
(67, 'Annamae Wiegand', '69453', 'kategori', 9, 96386, 86, 24, 'default.jpg', '2023-01-08 14:57:32', '2023-01-08 14:57:32'),
(68, 'Samantha Stokes', '53150', 'kategori', 79491442, 68743457, 65, 58, 'default.jpg', '2023-01-08 14:57:32', '2023-01-08 14:57:32'),
(69, 'Prof. Stanton Leannon Sr.', '48664', 'kategori', 18090289, 8850, 46, 84, 'default.jpg', '2023-01-08 14:57:32', '2023-01-08 14:57:32'),
(70, 'Reagan Nitzsche', '98813', 'kategori', 44013381, 312031, 56, 52, 'default.jpg', '2023-01-08 14:57:32', '2023-01-08 14:57:32'),
(71, 'Mr. Nash Miller I', '24492', 'kategori', 200489, 219, 30, 21, 'default.jpg', '2023-01-08 14:57:32', '2023-01-08 14:57:32'),
(72, 'Miss Tiffany Wintheiser', '83048', 'kategori', 27066772, 29046, 100, 66, 'default.jpg', '2023-01-08 14:57:32', '2023-01-08 14:57:32'),
(73, 'Adonis Watsica', '69045', 'kategori', 5821, 21165, 32, 98, 'default.jpg', '2023-01-08 14:57:32', '2023-01-08 14:57:32'),
(74, 'Miss Cleora DuBuque III', '58909', 'kategori', 4107, 95584588, 15, 57, 'default.jpg', '2023-01-08 14:57:32', '2023-01-08 14:57:32'),
(75, 'Grover Runolfsson', '83503', 'kategori', 2481, 9015343, 23, 30, 'default.jpg', '2023-01-08 14:57:32', '2023-01-08 14:57:32'),
(76, 'Mrs. Antonette Stoltenberg', '40395', 'kategori', 955099030, 6656, 15, 57, 'default.jpg', '2023-01-08 14:57:32', '2023-01-08 14:57:32'),
(77, 'Laila D\'Amore', '16914', 'kategori', 8873, 77, 57, 64, 'default.jpg', '2023-01-08 14:57:32', '2023-01-08 14:57:32'),
(78, 'Serena Marks', '16973', 'kategori', 637793, 89, 99, 45, 'default.jpg', '2023-01-08 14:57:32', '2023-01-08 14:57:32'),
(79, 'Mr. Jeffry Veum Jr.', '10525', 'kategori', 93, 529993, 86, 56, 'default.jpg', '2023-01-08 14:57:32', '2023-01-08 14:57:32'),
(80, 'Valentina Deckow', '20921', 'kategori', 22, 64642172, 6, 94, 'default.jpg', '2023-01-08 14:57:32', '2023-01-08 14:57:32'),
(81, 'Mr. Kolby Effertz PhD', '83389', 'kategori', 4281, 10807, 98, 77, 'default.jpg', '2023-01-08 14:57:32', '2023-01-08 14:57:32'),
(82, 'Astrid Effertz', '31678', 'kategori', 587601, 29973, 21, 79, 'default.jpg', '2023-01-08 14:57:32', '2023-01-08 14:57:32'),
(83, 'Cristobal Walter', '81666', 'kategori', 6650, 277533, 73, 37, 'default.jpg', '2023-01-08 14:57:32', '2023-01-08 14:57:32'),
(84, 'Jason Pouros', '17948', 'kategori', 1, 903, 28, 25, 'default.jpg', '2023-01-08 14:57:32', '2023-01-08 14:57:32'),
(85, 'Everardo Cartwright II', '35708', 'kategori', 529964809, 589088829, 3, 99, 'default.jpg', '2023-01-08 14:57:32', '2023-01-08 14:57:32');

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `skor` double(3,2) NOT NULL,
  `kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `is_admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'Admin', 'admin', 'admin@mail.com', '2023-01-08 14:57:32', 'password', 0, 'v5YlAc4rKq', '2023-01-08 14:57:32', '2023-01-08 14:57:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `criterias`
--
ALTER TABLE `criterias`
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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_kode_unique` (`kode`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `criterias`
--
ALTER TABLE `criterias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `inventoryyy`
--
CREATE DATABASE IF NOT EXISTS `inventoryyy` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `inventoryyy`;

-- --------------------------------------------------------

--
-- Table structure for table `criterias`
--

CREATE TABLE `criterias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_kriteria` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bobot` int(11) NOT NULL,
  `is_beneficial` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `criterias`
--

INSERT INTO `criterias` (`id`, `nama_kriteria`, `bobot`, `is_beneficial`, `created_at`, `updated_at`) VALUES
(1, 'Stok', 4, 0, '2023-01-08 17:30:36', '2023-01-10 02:01:56'),
(2, 'Terjual', 3, 1, '2023-01-08 17:30:36', '2023-01-09 02:03:52');

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
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
(5, '2021_11_17_123100_create_products_table', 2),
(6, '2021_11_17_124031_create_criterias_table', 2),
(7, '2021_11_20_165752_create_results_table', 2);

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
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stok` int(11) NOT NULL,
  `terjual` int(11) NOT NULL,
  `harga_beli` float NOT NULL,
  `harga_jual` float NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.jpg',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `kode`, `kategori`, `stok`, `terjual`, `harga_beli`, `harga_jual`, `foto`, `created_at`, `updated_at`) VALUES
(1, 'Jellyfish Jelly', '60979', 'Makanan', 30, 11, 3, 4, 'default.jpg', '2023-01-08 17:30:36', '2023-01-08 17:30:36'),
(2, 'Seanut Butter', '83342', 'Makanan', 20, 2, 2.5, 3.5, 'default.jpg', '2023-01-08 17:30:36', '2023-01-08 17:30:36'),
(3, 'Spatula', '26363', 'Alat dan Elektronik', 15, 1, 7, 10, 'default.jpg', '2023-01-08 17:30:36', '2023-01-08 17:30:36'),
(4, 'Rocky Road', '33733', 'Makanan', 25, 6, 3.5, 4.5, 'default.jpg', '2023-01-08 17:30:36', '2023-01-08 17:30:36'),
(5, 'Hydro Dynamic Spatula', '71819', 'Alat dan Elektronik', 10, 0, 15, 20, 'default.jpg', '2023-01-08 17:30:36', '2023-01-08 17:30:36'),
(6, 'Kelpo', '89906', 'Makanan', 30, 7, 5, 6.5, '63bb6dce7e10f.webp', '2023-01-08 17:30:36', '2023-01-08 18:28:46'),
(7, 'Night Light', '65935', 'Alat dan Elektronik', 20, 10, 5, 6.5, 'default.jpg', '2023-01-08 17:30:36', '2023-01-08 17:30:36'),
(8, 'Barnacle Loaf', '18549', 'Makanan', 10, 6, 5, 6.5, 'default.jpg', '2023-01-08 17:30:36', '2023-01-08 17:30:36'),
(9, 'Canned Bread', '68471', 'Makanan', 15, 5, 3.5, 4.5, 'default.jpg', '2023-01-08 17:30:36', '2023-01-08 17:30:36'),
(10, 'Marsh King', '24370', 'Makanan', 25, 8, 4, 5, 'default.jpg', '2023-01-08 17:30:36', '2023-01-08 17:30:36'),
(11, 'Black Lemonade', '91724', 'Minuman', 25, 7, 2.5, 4.5, 'default.jpg', '2023-01-08 17:30:36', '2023-01-08 17:30:36'),
(12, 'Drinkable Sausage', '15603', 'Makanan', 10, 1, 4.5, 7, 'default.jpg', '2023-01-08 17:30:36', '2023-01-08 17:30:36'),
(13, 'Kelp Jerky', '81836', 'Makanan', 30, 16, 3, 5, '63bb768957bc3.webp', '2023-01-08 17:30:36', '2023-01-08 19:06:01'),
(14, 'Kelp Shake', '84334', 'Minuman', 25, 0, 2, 3, 'default.jpg', '2023-01-08 17:30:36', '2023-01-08 17:30:36'),
(15, 'Fizz Bomb Cola', '65334', 'Minuman', 20, 8, 2.5, 3.5, 'default.jpg', '2023-01-08 17:30:36', '2023-01-08 17:30:36'),
(16, 'Bubbly Water', '68374', 'Minuman', 30, 11, 2.5, 3, 'default.jpg', '2023-01-08 17:30:36', '2023-01-08 17:30:36'),
(17, 'Seahorse Milk', '89991', 'Minuman', 15, 6, 4, 5.5, 'default.jpg', '2023-01-08 17:30:36', '2023-01-08 17:30:36'),
(18, 'Large Fountain Drink', '12414', 'Minuman', 20, 6, 8, 10, 'default.jpg', '2023-01-08 17:30:36', '2023-01-08 17:30:36'),
(19, 'Swedish Barnacle Balls', '18664', 'Makanan', 25, 7, 3.5, 4.5, 'default.jpg', '2023-01-08 17:30:36', '2023-01-08 17:30:36'),
(20, 'Volcano Sauce', '51051', 'Makanan', 30, 17, 3, 4, 'default.jpg', '2023-01-08 17:30:36', '2023-01-08 17:30:36');

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `skor` double(3,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`id`, `slug`, `label`, `kode`, `nama`, `skor`, `created_at`, `updated_at`) VALUES
(1, 'tes', 'tes', '60979', 'Jellyfish Jelly', 0.44, '2023-01-09 02:07:30', '2023-01-09 02:07:30'),
(2, 'tes', 'tes', '83342', 'Seanut Butter', 0.27, '2023-01-09 02:07:30', '2023-01-09 02:07:30'),
(3, 'tes', 'tes', '26363', 'Spatula', 0.24, '2023-01-09 02:07:30', '2023-01-09 02:07:30'),
(4, 'tes', 'tes', '33733', 'Rocky Road', 0.38, '2023-01-09 02:07:30', '2023-01-09 02:07:30'),
(5, 'tes', 'tes', '71819', 'Hydro Dynamic Spatula', 0.00, '2023-01-09 02:07:30', '2023-01-09 02:07:30'),
(6, 'tes', 'tes', '89906', 'Kelpo', 0.36, '2023-01-09 02:07:30', '2023-01-09 02:07:30'),
(7, 'tes', 'tes', '65935', 'Night Light', 0.54, '2023-01-09 02:07:30', '2023-01-09 02:07:30'),
(8, 'tes', 'tes', '18549', 'Barnacle Loaf', 0.64, '2023-01-09 02:07:30', '2023-01-09 02:07:30'),
(9, 'tes', 'tes', '68471', 'Canned Bread', 0.47, '2023-01-09 02:07:30', '2023-01-09 02:07:30'),
(10, 'tes', 'tes', '24370', 'Marsh King', 0.42, '2023-01-09 02:07:30', '2023-01-09 02:07:30'),
(11, 'tes', 'tes', '91724', 'Black Lemonade', 0.40, '2023-01-09 02:07:30', '2023-01-09 02:07:30'),
(12, 'tes', 'tes', '15603', 'Drinkable Sausage', 0.30, '2023-01-09 02:07:30', '2023-01-09 02:07:30'),
(13, 'tes', 'tes', '81836', 'Kelp Jerky', 0.51, '2023-01-09 02:07:30', '2023-01-09 02:07:30'),
(14, 'tes', 'tes', '84334', 'Kelp Shake', 0.00, '2023-01-09 02:07:30', '2023-01-09 02:07:30'),
(15, 'tes', 'tes', '65334', 'Fizz Bomb Cola', 0.48, '2023-01-09 02:07:30', '2023-01-09 02:07:30'),
(16, 'tes', 'tes', '68374', 'Bubbly Water', 0.44, '2023-01-09 02:07:30', '2023-01-09 02:07:30'),
(17, 'tes', 'tes', '89991', 'Seahorse Milk', 0.51, '2023-01-09 02:07:30', '2023-01-09 02:07:30'),
(18, 'tes', 'tes', '12414', 'Large Fountain Drink', 0.43, '2023-01-09 02:07:30', '2023-01-09 02:07:30'),
(19, 'tes', 'tes', '18664', 'Swedish Barnacle Balls', 0.40, '2023-01-09 02:07:30', '2023-01-09 02:07:30'),
(20, 'tes', 'tes', '51051', 'Volcano Sauce', 0.53, '2023-01-09 02:07:30', '2023-01-09 02:07:30'),
(21, 'testtest', 'testtest', '60979', 'Jellyfish Jelly', 0.83, '2023-01-09 02:25:09', '2023-01-09 02:25:09'),
(22, 'testtest', 'testtest', '83342', 'Seanut Butter', 0.32, '2023-01-09 02:25:09', '2023-01-09 02:25:09'),
(23, 'testtest', 'testtest', '26363', 'Spatula', 0.20, '2023-01-09 02:25:09', '2023-01-09 02:25:09'),
(24, 'testtest', 'testtest', '33733', 'Rocky Road', 0.58, '2023-01-09 02:25:09', '2023-01-09 02:25:09'),
(25, 'testtest', 'testtest', '71819', 'Hydro Dynamic Spatula', 0.00, '2023-01-09 02:25:09', '2023-01-09 02:25:09'),
(26, 'testtest', 'testtest', '89906', 'Kelpo', 0.68, '2023-01-09 02:25:09', '2023-01-09 02:25:09'),
(27, 'testtest', 'testtest', '65935', 'Night Light', 0.64, '2023-01-09 02:25:09', '2023-01-09 02:25:09'),
(28, 'testtest', 'testtest', '18549', 'Barnacle Loaf', 0.34, '2023-01-09 02:25:09', '2023-01-09 02:25:09'),
(29, 'testtest', 'testtest', '68471', 'Canned Bread', 0.40, '2023-01-09 02:25:09', '2023-01-09 02:25:09'),
(30, 'testtest', 'testtest', '24370', 'Marsh King', 0.65, '2023-01-09 02:25:09', '2023-01-09 02:25:09'),
(31, 'testtest', 'testtest', '91724', 'Black Lemonade', 0.61, '2023-01-09 02:25:09', '2023-01-09 02:25:09'),
(32, 'testtest', 'testtest', '15603', 'Drinkable Sausage', 0.16, '2023-01-09 02:25:09', '2023-01-09 02:25:09'),
(33, 'testtest', 'testtest', '81836', 'Kelp Jerky', 0.97, '2023-01-09 02:25:09', '2023-01-09 02:25:09'),
(34, 'testtest', 'testtest', '84334', 'Kelp Shake', 0.00, '2023-01-09 02:25:09', '2023-01-09 02:25:09'),
(35, 'testtest', 'testtest', '65334', 'Fizz Bomb Cola', 0.58, '2023-01-09 02:25:09', '2023-01-09 02:25:09'),
(36, 'testtest', 'testtest', '68374', 'Bubbly Water', 0.83, '2023-01-09 02:25:09', '2023-01-09 02:25:09'),
(37, 'testtest', 'testtest', '89991', 'Seahorse Milk', 0.43, '2023-01-09 02:25:09', '2023-01-09 02:25:09'),
(38, 'testtest', 'testtest', '12414', 'Large Fountain Drink', 0.51, '2023-01-09 02:25:09', '2023-01-09 02:25:09'),
(39, 'testtest', 'testtest', '18664', 'Swedish Barnacle Balls', 0.61, '2023-01-09 02:25:09', '2023-01-09 02:25:09'),
(40, 'testtest', 'testtest', '51051', 'Volcano Sauce', 1.00, '2023-01-09 02:25:09', '2023-01-09 02:25:09'),
(41, 'testeu', 'testeu', '60979', 'Jellyfish Jelly', 0.67, '2023-01-09 18:46:04', '2023-01-09 18:46:04'),
(42, 'testeu', 'testeu', '83342', 'Seanut Butter', 0.71, '2023-01-09 18:46:04', '2023-01-09 18:46:04'),
(43, 'testeu', 'testeu', '26363', 'Spatula', 0.71, '2023-01-09 18:46:04', '2023-01-09 18:46:04'),
(44, 'testeu', 'testeu', '33733', 'Rocky Road', 0.56, '2023-01-09 18:46:04', '2023-01-09 18:46:04'),
(45, 'testeu', 'testeu', '71819', 'Hydro Dynamic Spatula', 0.62, '2023-01-09 18:46:04', '2023-01-09 18:46:04'),
(46, 'testeu', 'testeu', '89906', 'Kelpo', 0.56, '2023-01-09 18:46:04', '2023-01-09 18:46:04'),
(47, 'testeu', 'testeu', '65935', 'Night Light', 0.71, '2023-01-09 18:46:04', '2023-01-09 18:46:04'),
(48, 'testeu', 'testeu', '18549', 'Barnacle Loaf', 0.84, '2023-01-09 18:46:04', '2023-01-09 18:46:04'),
(49, 'testeu', 'testeu', '68471', 'Canned Bread', 0.71, '2023-01-09 18:46:04', '2023-01-09 18:46:04'),
(50, 'testeu', 'testeu', '24370', 'Marsh King', 0.56, '2023-01-09 18:46:04', '2023-01-09 18:46:04'),
(51, 'testeu', 'testeu', '91724', 'Black Lemonade', 0.56, '2023-01-09 18:46:04', '2023-01-09 18:46:04'),
(52, 'testeu', 'testeu', '15603', 'Drinkable Sausage', 0.84, '2023-01-09 18:46:04', '2023-01-09 18:46:04'),
(53, 'testeu', 'testeu', '81836', 'Kelp Jerky', 0.67, '2023-01-09 18:46:04', '2023-01-09 18:46:04'),
(54, 'testeu', 'testeu', '84334', 'Kelp Shake', 0.42, '2023-01-09 18:46:04', '2023-01-09 18:46:04'),
(55, 'testeu', 'testeu', '65334', 'Fizz Bomb Cola', 0.71, '2023-01-09 18:46:04', '2023-01-09 18:46:04'),
(56, 'testeu', 'testeu', '68374', 'Bubbly Water', 0.67, '2023-01-09 18:46:04', '2023-01-09 18:46:04'),
(57, 'testeu', 'testeu', '89991', 'Seahorse Milk', 0.71, '2023-01-09 18:46:04', '2023-01-09 18:46:04'),
(58, 'testeu', 'testeu', '12414', 'Large Fountain Drink', 0.71, '2023-01-09 18:46:04', '2023-01-09 18:46:04'),
(59, 'testeu', 'testeu', '18664', 'Swedish Barnacle Balls', 0.56, '2023-01-09 18:46:04', '2023-01-09 18:46:04'),
(60, 'testeu', 'testeu', '51051', 'Volcano Sauce', 0.67, '2023-01-09 18:46:04', '2023-01-09 18:46:04'),
(61, 'test', 'test', '60979', 'Jellyfish Jelly', 0.56, '2023-01-09 19:04:29', '2023-01-09 19:04:29'),
(62, 'test', 'test', '83342', 'Seanut Butter', 0.34, '2023-01-09 19:04:29', '2023-01-09 19:04:29'),
(63, 'test', 'test', '26363', 'Spatula', 0.26, '2023-01-09 19:04:29', '2023-01-09 19:04:29'),
(64, 'test', 'test', '33733', 'Rocky Road', 0.43, '2023-01-09 19:04:29', '2023-01-09 19:04:29'),
(65, 'test', 'test', '71819', 'Hydro Dynamic Spatula', 0.00, '2023-01-09 19:04:29', '2023-01-09 19:04:29'),
(66, 'test', 'test', '89906', 'Kelpo', 0.46, '2023-01-09 19:04:29', '2023-01-09 19:04:29'),
(67, 'test', 'test', '65935', 'Night Light', 0.68, '2023-01-09 19:04:29', '2023-01-09 19:04:29'),
(68, 'test', 'test', '18549', 'Barnacle Loaf', 0.64, '2023-01-09 19:04:29', '2023-01-09 19:04:29'),
(69, 'test', 'test', '68471', 'Canned Bread', 0.50, '2023-01-09 19:04:29', '2023-01-09 19:04:29'),
(70, 'test', 'test', '24370', 'Marsh King', 0.48, '2023-01-09 19:04:29', '2023-01-09 19:04:29'),
(71, 'test', 'test', '91724', 'Black Lemonade', 0.46, '2023-01-09 19:04:29', '2023-01-09 19:04:29'),
(72, 'test', 'test', '15603', 'Drinkable Sausage', 0.30, '2023-01-09 19:04:29', '2023-01-09 19:04:29'),
(73, 'test', 'test', '81836', 'Kelp Jerky', 0.65, '2023-01-09 19:04:29', '2023-01-09 19:04:29'),
(74, 'test', 'test', '84334', 'Kelp Shake', 0.00, '2023-01-09 19:04:29', '2023-01-09 19:04:29'),
(75, 'test', 'test', '65334', 'Fizz Bomb Cola', 0.61, '2023-01-09 19:04:29', '2023-01-09 19:04:29'),
(76, 'test', 'test', '68374', 'Bubbly Water', 0.56, '2023-01-09 19:04:29', '2023-01-09 19:04:29'),
(77, 'test', 'test', '89991', 'Seahorse Milk', 0.54, '2023-01-09 19:04:29', '2023-01-09 19:04:29'),
(78, 'test', 'test', '12414', 'Large Fountain Drink', 0.54, '2023-01-09 19:04:29', '2023-01-09 19:04:29'),
(79, 'test', 'test', '18664', 'Swedish Barnacle Balls', 0.46, '2023-01-09 19:04:29', '2023-01-09 19:04:29'),
(80, 'test', 'test', '51051', 'Volcano Sauce', 0.67, '2023-01-09 19:04:29', '2023-01-09 19:04:29'),
(81, 'teest', 'teest', '60979', 'Jellyfish Jelly', 0.24, '2023-01-09 20:38:46', '2023-01-09 20:38:46'),
(82, 'teest', 'teest', '83342', 'Seanut Butter', 0.07, '2023-01-09 20:38:46', '2023-01-09 20:38:46'),
(83, 'teest', 'teest', '26363', 'Spatula', 0.03, '2023-01-09 20:38:46', '2023-01-09 20:38:46'),
(84, 'teest', 'teest', '33733', 'Rocky Road', 0.13, '2023-01-09 20:38:46', '2023-01-09 20:38:46'),
(85, 'teest', 'teest', '71819', 'Hydro Dynamic Spatula', 0.00, '2023-01-09 20:38:46', '2023-01-09 20:38:46'),
(86, 'teest', 'teest', '89906', 'Kelpo', 0.15, '2023-01-09 20:38:46', '2023-01-09 20:38:46'),
(87, 'teest', 'teest', '65935', 'Night Light', 0.33, '2023-01-09 20:38:46', '2023-01-09 20:38:46'),
(88, 'teest', 'teest', '18549', 'Barnacle Loaf', 0.26, '2023-01-09 20:38:46', '2023-01-09 20:38:46'),
(89, 'teest', 'teest', '68471', 'Canned Bread', 0.16, '2023-01-09 20:38:46', '2023-01-09 20:38:46'),
(90, 'teest', 'teest', '24370', 'Marsh King', 0.18, '2023-01-09 20:38:46', '2023-01-09 20:38:46'),
(91, 'teest', 'teest', '91724', 'Black Lemonade', 0.15, '2023-01-09 20:38:46', '2023-01-09 20:38:46'),
(92, 'teest', 'teest', '15603', 'Drinkable Sausage', 0.05, '2023-01-09 20:38:46', '2023-01-09 20:38:46'),
(93, 'teest', 'teest', '81836', 'Kelp Jerky', 0.35, '2023-01-09 20:38:46', '2023-01-09 20:38:46'),
(94, 'teest', 'teest', '84334', 'Kelp Shake', 0.00, '2023-01-09 20:38:46', '2023-01-09 20:38:46'),
(95, 'teest', 'teest', '65334', 'Fizz Bomb Cola', 0.26, '2023-01-09 20:38:46', '2023-01-09 20:38:46'),
(96, 'teest', 'teest', '68374', 'Bubbly Water', 0.24, '2023-01-09 20:38:46', '2023-01-09 20:38:46'),
(97, 'teest', 'teest', '89991', 'Seahorse Milk', 0.20, '2023-01-09 20:38:46', '2023-01-09 20:38:46'),
(98, 'teest', 'teest', '12414', 'Large Fountain Drink', 0.20, '2023-01-09 20:38:46', '2023-01-09 20:38:46'),
(99, 'teest', 'teest', '18664', 'Swedish Barnacle Balls', 0.15, '2023-01-09 20:38:46', '2023-01-09 20:38:46'),
(100, 'teest', 'teest', '51051', 'Volcano Sauce', 0.38, '2023-01-09 20:38:46', '2023-01-09 20:38:46'),
(101, 'teeest', 'teeest', '60979', 'Jellyfish Jelly', 0.34, '2023-01-09 20:40:52', '2023-01-09 20:40:52'),
(102, 'teeest', 'teeest', '83342', 'Seanut Butter', 0.40, '2023-01-09 20:40:52', '2023-01-09 20:40:52'),
(103, 'teeest', 'teeest', '26363', 'Spatula', 0.61, '2023-01-09 20:40:52', '2023-01-09 20:40:52'),
(104, 'teeest', 'teeest', '33733', 'Rocky Road', 0.36, '2023-01-09 20:40:52', '2023-01-09 20:40:52'),
(105, 'teeest', 'teeest', '71819', 'Hydro Dynamic Spatula', 1.00, '2023-01-09 20:40:52', '2023-01-09 20:40:52'),
(106, 'teeest', 'teeest', '89906', 'Kelpo', 0.42, '2023-01-09 20:40:52', '2023-01-09 20:40:52'),
(107, 'teeest', 'teeest', '65935', 'Night Light', 0.53, '2023-01-09 20:40:52', '2023-01-09 20:40:52'),
(108, 'teeest', 'teeest', '18549', 'Barnacle Loaf', 0.62, '2023-01-09 20:40:52', '2023-01-09 20:40:52'),
(109, 'teeest', 'teeest', '68471', 'Canned Bread', 0.45, '2023-01-09 20:40:52', '2023-01-09 20:40:52'),
(110, 'teeest', 'teeest', '24370', 'Marsh King', 0.38, '2023-01-09 20:40:52', '2023-01-09 20:40:52'),
(111, 'teeest', 'teeest', '91724', 'Black Lemonade', 0.31, '2023-01-09 20:40:52', '2023-01-09 20:40:52'),
(112, 'teeest', 'teeest', '15603', 'Drinkable Sausage', 0.60, '2023-01-09 20:40:52', '2023-01-09 20:40:52'),
(113, 'teeest', 'teeest', '81836', 'Kelp Jerky', 0.34, '2023-01-09 20:40:52', '2023-01-09 20:40:52'),
(114, 'teeest', 'teeest', '84334', 'Kelp Shake', 0.28, '2023-01-09 20:40:52', '2023-01-09 20:40:52'),
(115, 'teeest', 'teeest', '65334', 'Fizz Bomb Cola', 0.40, '2023-01-09 20:40:52', '2023-01-09 20:40:52'),
(116, 'teeest', 'teeest', '68374', 'Bubbly Water', 0.31, '2023-01-09 20:40:52', '2023-01-09 20:40:52'),
(117, 'teeest', 'teeest', '89991', 'Seahorse Milk', 0.48, '2023-01-09 20:40:52', '2023-01-09 20:40:52'),
(118, 'teeest', 'teeest', '12414', 'Large Fountain Drink', 0.65, '2023-01-09 20:40:52', '2023-01-09 20:40:52'),
(119, 'teeest', 'teeest', '18664', 'Swedish Barnacle Balls', 0.36, '2023-01-09 20:40:52', '2023-01-09 20:40:52'),
(120, 'teeest', 'teeest', '51051', 'Volcano Sauce', 0.34, '2023-01-09 20:40:52', '2023-01-09 20:40:52'),
(121, 'test1', 'test1', '60979', 'Jellyfish Jelly', 0.67, '2023-01-09 20:41:55', '2023-01-09 20:41:55'),
(122, 'test1', 'test1', '83342', 'Seanut Butter', 0.71, '2023-01-09 20:41:55', '2023-01-09 20:41:55'),
(123, 'test1', 'test1', '26363', 'Spatula', 0.71, '2023-01-09 20:41:55', '2023-01-09 20:41:55'),
(124, 'test1', 'test1', '33733', 'Rocky Road', 0.56, '2023-01-09 20:41:55', '2023-01-09 20:41:55'),
(125, 'test1', 'test1', '71819', 'Hydro Dynamic Spatula', 0.62, '2023-01-09 20:41:55', '2023-01-09 20:41:55'),
(126, 'test1', 'test1', '89906', 'Kelpo', 0.56, '2023-01-09 20:41:55', '2023-01-09 20:41:55'),
(127, 'test1', 'test1', '65935', 'Night Light', 0.71, '2023-01-09 20:41:55', '2023-01-09 20:41:55'),
(128, 'test1', 'test1', '18549', 'Barnacle Loaf', 0.84, '2023-01-09 20:41:55', '2023-01-09 20:41:55'),
(129, 'test1', 'test1', '68471', 'Canned Bread', 0.71, '2023-01-09 20:41:55', '2023-01-09 20:41:55'),
(130, 'test1', 'test1', '24370', 'Marsh King', 0.56, '2023-01-09 20:41:55', '2023-01-09 20:41:55'),
(131, 'test1', 'test1', '91724', 'Black Lemonade', 0.56, '2023-01-09 20:41:55', '2023-01-09 20:41:55'),
(132, 'test1', 'test1', '15603', 'Drinkable Sausage', 0.84, '2023-01-09 20:41:55', '2023-01-09 20:41:55'),
(133, 'test1', 'test1', '81836', 'Kelp Jerky', 0.67, '2023-01-09 20:41:55', '2023-01-09 20:41:55'),
(134, 'test1', 'test1', '84334', 'Kelp Shake', 0.42, '2023-01-09 20:41:55', '2023-01-09 20:41:55'),
(135, 'test1', 'test1', '65334', 'Fizz Bomb Cola', 0.71, '2023-01-09 20:41:55', '2023-01-09 20:41:55'),
(136, 'test1', 'test1', '68374', 'Bubbly Water', 0.67, '2023-01-09 20:41:55', '2023-01-09 20:41:55'),
(137, 'test1', 'test1', '89991', 'Seahorse Milk', 0.71, '2023-01-09 20:41:55', '2023-01-09 20:41:55'),
(138, 'test1', 'test1', '12414', 'Large Fountain Drink', 0.71, '2023-01-09 20:41:55', '2023-01-09 20:41:55'),
(139, 'test1', 'test1', '18664', 'Swedish Barnacle Balls', 0.56, '2023-01-09 20:41:55', '2023-01-09 20:41:55'),
(140, 'test1', 'test1', '51051', 'Volcano Sauce', 0.67, '2023-01-09 20:41:55', '2023-01-09 20:41:55'),
(141, 'teeeest', 'teeeest', '60979', 'Jellyfish Jelly', 0.24, '2023-01-10 01:04:01', '2023-01-10 01:04:01'),
(142, 'teeeest', 'teeeest', '83342', 'Seanut Butter', 0.07, '2023-01-10 01:04:01', '2023-01-10 01:04:01'),
(143, 'teeeest', 'teeeest', '26363', 'Spatula', 0.03, '2023-01-10 01:04:01', '2023-01-10 01:04:01'),
(144, 'teeeest', 'teeeest', '33733', 'Rocky Road', 0.13, '2023-01-10 01:04:01', '2023-01-10 01:04:01'),
(145, 'teeeest', 'teeeest', '71819', 'Hydro Dynamic Spatula', 0.00, '2023-01-10 01:04:01', '2023-01-10 01:04:01'),
(146, 'teeeest', 'teeeest', '89906', 'Kelpo', 0.15, '2023-01-10 01:04:01', '2023-01-10 01:04:01'),
(147, 'teeeest', 'teeeest', '65935', 'Night Light', 0.33, '2023-01-10 01:04:01', '2023-01-10 01:04:01'),
(148, 'teeeest', 'teeeest', '18549', 'Barnacle Loaf', 0.26, '2023-01-10 01:04:01', '2023-01-10 01:04:01'),
(149, 'teeeest', 'teeeest', '68471', 'Canned Bread', 0.16, '2023-01-10 01:04:01', '2023-01-10 01:04:01'),
(150, 'teeeest', 'teeeest', '24370', 'Marsh King', 0.18, '2023-01-10 01:04:01', '2023-01-10 01:04:01'),
(151, 'teeeest', 'teeeest', '91724', 'Black Lemonade', 0.15, '2023-01-10 01:04:01', '2023-01-10 01:04:01'),
(152, 'teeeest', 'teeeest', '15603', 'Drinkable Sausage', 0.05, '2023-01-10 01:04:01', '2023-01-10 01:04:01'),
(153, 'teeeest', 'teeeest', '81836', 'Kelp Jerky', 0.35, '2023-01-10 01:04:01', '2023-01-10 01:04:01'),
(154, 'teeeest', 'teeeest', '84334', 'Kelp Shake', 0.00, '2023-01-10 01:04:01', '2023-01-10 01:04:01'),
(155, 'teeeest', 'teeeest', '65334', 'Fizz Bomb Cola', 0.26, '2023-01-10 01:04:01', '2023-01-10 01:04:01'),
(156, 'teeeest', 'teeeest', '68374', 'Bubbly Water', 0.24, '2023-01-10 01:04:01', '2023-01-10 01:04:01'),
(157, 'teeeest', 'teeeest', '89991', 'Seahorse Milk', 0.20, '2023-01-10 01:04:01', '2023-01-10 01:04:01'),
(158, 'teeeest', 'teeeest', '12414', 'Large Fountain Drink', 0.20, '2023-01-10 01:04:01', '2023-01-10 01:04:01'),
(159, 'teeeest', 'teeeest', '18664', 'Swedish Barnacle Balls', 0.15, '2023-01-10 01:04:01', '2023-01-10 01:04:01'),
(160, 'teeeest', 'teeeest', '51051', 'Volcano Sauce', 0.38, '2023-01-10 01:04:01', '2023-01-10 01:04:01'),
(161, 'test0', 'test0', '60979', 'Jellyfish Jelly', 0.24, '2023-01-10 02:03:43', '2023-01-10 02:03:43'),
(162, 'test0', 'test0', '83342', 'Seanut Butter', 0.07, '2023-01-10 02:03:43', '2023-01-10 02:03:43'),
(163, 'test0', 'test0', '26363', 'Spatula', 0.03, '2023-01-10 02:03:43', '2023-01-10 02:03:43'),
(164, 'test0', 'test0', '33733', 'Rocky Road', 0.13, '2023-01-10 02:03:43', '2023-01-10 02:03:43'),
(165, 'test0', 'test0', '71819', 'Hydro Dynamic Spatula', 0.00, '2023-01-10 02:03:43', '2023-01-10 02:03:43'),
(166, 'test0', 'test0', '89906', 'Kelpo', 0.15, '2023-01-10 02:03:43', '2023-01-10 02:03:43'),
(167, 'test0', 'test0', '65935', 'Night Light', 0.33, '2023-01-10 02:03:43', '2023-01-10 02:03:43'),
(168, 'test0', 'test0', '18549', 'Barnacle Loaf', 0.26, '2023-01-10 02:03:43', '2023-01-10 02:03:43'),
(169, 'test0', 'test0', '68471', 'Canned Bread', 0.16, '2023-01-10 02:03:43', '2023-01-10 02:03:43'),
(170, 'test0', 'test0', '24370', 'Marsh King', 0.18, '2023-01-10 02:03:43', '2023-01-10 02:03:43'),
(171, 'test0', 'test0', '91724', 'Black Lemonade', 0.15, '2023-01-10 02:03:43', '2023-01-10 02:03:43'),
(172, 'test0', 'test0', '15603', 'Drinkable Sausage', 0.05, '2023-01-10 02:03:43', '2023-01-10 02:03:43'),
(173, 'test0', 'test0', '81836', 'Kelp Jerky', 0.35, '2023-01-10 02:03:43', '2023-01-10 02:03:43'),
(174, 'test0', 'test0', '84334', 'Kelp Shake', 0.00, '2023-01-10 02:03:43', '2023-01-10 02:03:43'),
(175, 'test0', 'test0', '65334', 'Fizz Bomb Cola', 0.26, '2023-01-10 02:03:43', '2023-01-10 02:03:43'),
(176, 'test0', 'test0', '68374', 'Bubbly Water', 0.24, '2023-01-10 02:03:43', '2023-01-10 02:03:43'),
(177, 'test0', 'test0', '89991', 'Seahorse Milk', 0.20, '2023-01-10 02:03:43', '2023-01-10 02:03:43'),
(178, 'test0', 'test0', '12414', 'Large Fountain Drink', 0.20, '2023-01-10 02:03:43', '2023-01-10 02:03:43'),
(179, 'test0', 'test0', '18664', 'Swedish Barnacle Balls', 0.15, '2023-01-10 02:03:43', '2023-01-10 02:03:43'),
(180, 'test0', 'test0', '51051', 'Volcano Sauce', 0.38, '2023-01-10 02:03:43', '2023-01-10 02:03:43'),
(181, 'ttest', 'ttest', '60979', 'Jellyfish Jelly', 0.24, '2023-01-13 00:38:33', '2023-01-13 00:38:33'),
(182, 'ttest', 'ttest', '83342', 'Seanut Butter', 0.07, '2023-01-13 00:38:33', '2023-01-13 00:38:33'),
(183, 'ttest', 'ttest', '26363', 'Spatula', 0.03, '2023-01-13 00:38:33', '2023-01-13 00:38:33'),
(184, 'ttest', 'ttest', '33733', 'Rocky Road', 0.13, '2023-01-13 00:38:33', '2023-01-13 00:38:33'),
(185, 'ttest', 'ttest', '71819', 'Hydro Dynamic Spatula', 0.00, '2023-01-13 00:38:33', '2023-01-13 00:38:33'),
(186, 'ttest', 'ttest', '89906', 'Kelpo', 0.15, '2023-01-13 00:38:33', '2023-01-13 00:38:33'),
(187, 'ttest', 'ttest', '65935', 'Night Light', 0.33, '2023-01-13 00:38:33', '2023-01-13 00:38:33'),
(188, 'ttest', 'ttest', '18549', 'Barnacle Loaf', 0.26, '2023-01-13 00:38:33', '2023-01-13 00:38:33'),
(189, 'ttest', 'ttest', '68471', 'Canned Bread', 0.16, '2023-01-13 00:38:33', '2023-01-13 00:38:33'),
(190, 'ttest', 'ttest', '24370', 'Marsh King', 0.18, '2023-01-13 00:38:33', '2023-01-13 00:38:33'),
(191, 'ttest', 'ttest', '91724', 'Black Lemonade', 0.15, '2023-01-13 00:38:33', '2023-01-13 00:38:33'),
(192, 'ttest', 'ttest', '15603', 'Drinkable Sausage', 0.05, '2023-01-13 00:38:33', '2023-01-13 00:38:33'),
(193, 'ttest', 'ttest', '81836', 'Kelp Jerky', 0.35, '2023-01-13 00:38:33', '2023-01-13 00:38:33'),
(194, 'ttest', 'ttest', '84334', 'Kelp Shake', 0.00, '2023-01-13 00:38:33', '2023-01-13 00:38:33'),
(195, 'ttest', 'ttest', '65334', 'Fizz Bomb Cola', 0.26, '2023-01-13 00:38:33', '2023-01-13 00:38:33'),
(196, 'ttest', 'ttest', '68374', 'Bubbly Water', 0.24, '2023-01-13 00:38:33', '2023-01-13 00:38:33'),
(197, 'ttest', 'ttest', '89991', 'Seahorse Milk', 0.20, '2023-01-13 00:38:33', '2023-01-13 00:38:33'),
(198, 'ttest', 'ttest', '12414', 'Large Fountain Drink', 0.20, '2023-01-13 00:38:33', '2023-01-13 00:38:33'),
(199, 'ttest', 'ttest', '18664', 'Swedish Barnacle Balls', 0.15, '2023-01-13 00:38:33', '2023-01-13 00:38:33'),
(200, 'ttest', 'ttest', '51051', 'Volcano Sauce', 0.38, '2023-01-13 00:38:33', '2023-01-13 00:38:33');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `is_admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', 'admin@admin.com', '2023-01-08 17:30:36', '$2y$10$IbSM4YY1Rym1PsK5VAUMG.LRvSJVYjGZMhjc6pv5eXwXnLyMG7b4O', 0, 'Abe8dMABE7QCxWCbZl2jDXnnZxVvRX0uBO4n5QOmqEeA2SpbRejecX5gkfWX', '2023-01-08 17:30:36', '2023-01-08 17:30:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `criterias`
--
ALTER TABLE `criterias`
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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_kode_unique` (`kode`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `criterias`
--
ALTER TABLE `criterias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `jrs`
--
CREATE DATABASE IF NOT EXISTS `jrs` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `jrs`;

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kategoris`
--

CREATE TABLE `kategoris` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tarif` bigint(20) NOT NULL,
  `id_retribusi` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategoris`
--

INSERT INTO `kategoris` (`id`, `nama`, `tarif`, `id_retribusi`, `created_at`, `updated_at`) VALUES
(1, 'Rumah Tangga A', 10000, 1, '2024-02-21 21:40:45', '2024-02-21 21:40:45'),
(2, 'Rumah Tangga B', 7000, 1, '2024-02-21 21:40:45', '2024-02-21 21:40:45'),
(3, 'Rumah Tangga C', 4000, 1, '2024-02-21 21:40:45', '2024-02-21 21:40:45'),
(4, 'Rumah Tangga 1', 3000, 2, '2024-02-21 21:40:45', '2024-02-21 21:40:45'),
(5, 'Rumah Tangga 2', 9000, 2, '2024-02-21 21:40:45', '2024-02-21 21:40:45'),
(6, 'Rumah Tangga 3', 16000, 2, '2024-02-21 21:40:45', '2024-02-21 21:40:45');

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
(5, '2024_02_10_043745_create_retribusis_table', 1),
(6, '2024_02_10_050403_create_kategoris_table', 1),
(7, '2024_02_10_054131_create_roles_table', 1);

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
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `retribusis`
--

CREATE TABLE `retribusis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `retribusis`
--

INSERT INTO `retribusis` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Pelayanan Persampahan/Kebersihan', '2024-02-21 21:40:45', '2024-02-21 21:40:45'),
(2, 'Pengolahan Limbah Cair', '2024-02-21 21:40:45', '2024-02-21 21:40:45'),
(3, 'Perkantoran', '2024-02-21 21:44:03', '2024-02-21 21:44:03');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', '2024-02-21 21:40:45', '2024-02-21 21:40:45'),
(2, 'Administrator Organisasi Perangkat Daerah', '2024-02-21 21:40:45', '2024-02-21 21:40:45'),
(3, 'User', '2024-02-21 21:40:45', '2024-02-21 21:40:45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_role` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nama`, `email`, `password`, `id_role`, `created_at`, `updated_at`) VALUES
(1, 'Salma Hanifah', 'ifa@mail.com', 'admin123', 1, '2024-02-21 21:40:45', '2024-02-21 21:40:45'),
(2, 'Vallie Rutherford', 'murl88@hotmail.com', '#%,.2?nj\\~ZE?,4d$', 2, '2024-02-21 21:40:45', '2024-02-21 21:40:45'),
(3, 'Nayeli Harris III', 'ahmed.jaskolski@frami.com', 'B*vY)nr3t|\"`f', 2, '2024-02-21 21:40:45', '2024-02-21 21:40:45'),
(4, 'Tamara Abshire', 'malcolm20@turcotte.com', 'sukd;wV@.M-~(TG', 3, '2024-02-21 21:40:45', '2024-02-21 21:40:45'),
(5, 'Leopoldo Macejkovic', 'smitham.aylin@wyman.org', 'Wvpo\\.%eu/', 3, '2024-02-21 21:40:45', '2024-02-21 21:40:45'),
(6, 'Ernestine Price', 'allen17@gmail.com', '4+hdFj1LJ4/', 1, '2024-02-21 21:40:45', '2024-02-21 21:40:45'),
(7, 'Floy Schultz', 'andy.schowalter@cremin.net', '.p0$]ZLj0`~XhNR', 2, '2024-02-21 21:40:45', '2024-02-21 21:40:45'),
(8, 'Rafaela Hilpert Jr.', 'violette67@hotmail.com', 'D?buL?(KdIdC', 2, '2024-02-21 21:40:45', '2024-02-21 21:40:45'),
(9, 'Miss Serena Renner', 'bartholome43@howe.com', 'qq-i8?wRCL;OiM:C', 3, '2024-02-21 21:40:45', '2024-02-21 21:40:45'),
(10, 'Dr. Heber Mertz', 'heaney.lelah@yahoo.com', '%\"uvr,%)X\'93|', 1, '2024-02-21 21:40:45', '2024-02-21 21:40:45'),
(11, 'Russ Davis', 'nrau@boyer.net', 'mWq0-*v.gu)JE!i3w', 1, '2024-02-21 21:40:45', '2024-02-21 21:40:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `kategoris`
--
ALTER TABLE `kategoris`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_retribusi` (`id_retribusi`);

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
-- Indexes for table `retribusis`
--
ALTER TABLE `retribusis`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama` (`nama`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_nama_unique` (`nama`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `id_role` (`id_role`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategoris`
--
ALTER TABLE `kategoris`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
-- AUTO_INCREMENT for table `retribusis`
--
ALTER TABLE `retribusis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kategoris`
--
ALTER TABLE `kategoris`
  ADD CONSTRAINT `kategoris_ibfk_1` FOREIGN KEY (`id_retribusi`) REFERENCES `retribusis` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
--
-- Database: `jrs2`
--
CREATE DATABASE IF NOT EXISTS `jrs2` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `jrs2`;

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jenis_transaksis`
--

CREATE TABLE `jenis_transaksis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kategoris`
--

CREATE TABLE `kategoris` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tarif` bigint(20) NOT NULL,
  `id_retribusi` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategoris`
--

INSERT INTO `kategoris` (`id`, `nama`, `tarif`, `id_retribusi`, `created_at`, `updated_at`) VALUES
(1, 'Hotel Bintang 1', 10000, 1, '2024-02-21 21:53:02', '2024-02-21 21:53:02'),
(2, 'Hotel Bintang 2', 7000, 1, '2024-02-21 21:53:02', '2024-02-21 21:53:02'),
(3, 'Hotel Bintang 3', 4000, 1, '2024-02-21 21:53:02', '2024-02-21 21:53:02'),
(4, 'Rumah Tangga 1', 3000, 2, '2024-02-21 21:53:02', '2024-02-21 21:53:02'),
(5, 'Rumah Tangga 2', 9000, 2, '2024-02-21 21:53:02', '2024-02-21 21:53:02'),
(6, 'Rumah Tangga 3', 16000, 2, '2024-02-21 21:53:02', '2024-02-21 21:53:02');

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
(5, '2024_02_10_043745_create_retribusis_table', 1),
(6, '2024_02_10_050403_create_kategoris_table', 1),
(7, '2024_02_10_054131_create_roles_table', 1),
(8, '2024_02_22_212801_create_transaksis_table', 2),
(9, '2024_02_22_215706_create_jenis_transaksis_table', 2);

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
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `retribusis`
--

CREATE TABLE `retribusis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `retribusis`
--

INSERT INTO `retribusis` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Pelayanan Persampahan/Kebersihan', '2024-02-21 21:53:02', '2024-02-21 21:53:02'),
(2, 'Pengolahan Limbah Cair', '2024-02-21 21:53:02', '2024-02-21 21:53:02');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', '2024-02-21 21:53:02', '2024-02-21 21:53:02'),
(2, 'Administrator Organisasi Perangkat Daerah', '2024-02-21 21:53:02', '2024-02-21 21:53:02'),
(3, 'User', '2024-02-21 21:53:02', '2024-02-21 21:53:02');

-- --------------------------------------------------------

--
-- Table structure for table `transaksis`
--

CREATE TABLE `transaksis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) NOT NULL,
  `id_retribusi` bigint(20) NOT NULL,
  `id_kategori` bigint(20) NOT NULL,
  `bulan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun` bigint(20) NOT NULL,
  `jenis_transaksi` bigint(20) NOT NULL,
  `jumlah` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaksis`
--

INSERT INTO `transaksis` (`id`, `id_user`, `id_retribusi`, `id_kategori`, `bulan`, `tahun`, `jenis_transaksi`, `jumlah`, `created_at`, `updated_at`) VALUES
(1, 4, 1, 6, '7', 2023, 1, 6782, '2024-07-22 19:04:31', '2024-07-22 19:04:31'),
(2, 8, 1, 1, '2', 2024, 4, 6203, '2024-07-22 19:04:31', '2024-07-22 19:04:31'),
(3, 1, 2, 4, '10', 2024, 6, 23976, '2024-07-22 19:04:31', '2024-07-22 19:04:31'),
(4, 2, 2, 6, '10', 2024, 6, 16064, '2024-07-22 19:04:31', '2024-07-22 19:04:31'),
(5, 5, 1, 4, '5', 2023, 3, 16871, '2024-07-22 19:04:31', '2024-07-22 19:04:31'),
(6, 10, 1, 5, '5', 2024, 1, 21908, '2024-07-22 19:04:31', '2024-07-22 19:04:31'),
(7, 9, 2, 3, '12', 2023, 2, 11974, '2024-07-22 19:04:31', '2024-07-22 19:04:31'),
(8, 7, 1, 6, '5', 2024, 1, 23645, '2024-07-22 19:04:31', '2024-07-22 19:04:31'),
(9, 6, 2, 5, '5', 2023, 2, 15951, '2024-07-22 19:04:31', '2024-07-22 19:04:31'),
(10, 7, 2, 1, '12', 2023, 6, 6533, '2024-07-22 19:04:31', '2024-07-22 19:04:31'),
(11, 3, 2, 4, '1', 2023, 1, 5203, '2024-07-22 19:04:31', '2024-07-22 19:04:31'),
(12, 12, 2, 1, '5', 2024, 1, 26972, '2024-07-22 19:04:31', '2024-07-22 19:04:31'),
(13, 3, 2, 5, '3', 2024, 4, 13426, '2024-07-22 19:04:31', '2024-07-22 19:04:31'),
(14, 1, 2, 2, '4', 2024, 4, 4384, '2024-07-22 19:04:31', '2024-07-22 19:04:31'),
(15, 10, 1, 1, '3', 2023, 4, 6061, '2024-07-22 19:04:31', '2024-07-22 19:04:31'),
(16, 7, 1, 5, '9', 2023, 2, 18727, '2024-07-22 19:04:31', '2024-07-22 19:04:31'),
(17, 5, 2, 6, '5', 2024, 1, 20082, '2024-07-22 19:04:31', '2024-07-22 19:04:31'),
(18, 3, 1, 6, '11', 2023, 1, 12195, '2024-07-22 19:04:31', '2024-07-22 19:04:31'),
(19, 2, 2, 1, '9', 2024, 4, 9113, '2024-07-22 19:04:31', '2024-07-22 19:04:31'),
(20, 4, 1, 6, '10', 2023, 1, 17759, '2024-07-22 19:04:31', '2024-07-22 19:04:31'),
(21, 12, 1, 6, '7', 2023, 4, 16824, '2024-07-22 19:04:31', '2024-07-22 19:04:31'),
(22, 4, 1, 1, '6', 2023, 2, 16879, '2024-07-22 19:04:31', '2024-07-22 19:04:31'),
(23, 5, 2, 4, '12', 2023, 3, 14492, '2024-07-22 19:04:31', '2024-07-22 19:04:31'),
(24, 9, 1, 6, '1', 2024, 2, 7915, '2024-07-22 19:04:31', '2024-07-22 19:04:31'),
(25, 12, 2, 3, '10', 2023, 2, 6805, '2024-07-22 19:04:31', '2024-07-22 19:04:31'),
(26, 8, 2, 3, '10', 2024, 4, 23704, '2024-07-22 19:04:31', '2024-07-22 19:04:31'),
(27, 3, 1, 2, '4', 2024, 2, 24821, '2024-07-22 19:04:31', '2024-07-22 19:04:31'),
(28, 10, 1, 1, '1', 2023, 5, 16659, '2024-07-22 19:04:31', '2024-07-22 19:04:31'),
(29, 12, 1, 2, '11', 2024, 2, 16172, '2024-07-22 19:04:31', '2024-07-22 19:04:31'),
(30, 6, 1, 6, '12', 2023, 3, 22316, '2024-07-22 19:04:31', '2024-07-22 19:04:31');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_role` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nama`, `email`, `password`, `id_role`, `created_at`, `updated_at`) VALUES
(1, 'Salma Hanifah', 'ifa@mail.com', 'admin123', 1, '2024-02-21 21:53:02', '2024-02-21 21:53:02'),
(2, 'Nettie Schmitt', 'wmcdermott@hotmail.com', 'o*)VI6o%Su(#VRGT#', 1, '2024-02-21 21:53:02', '2024-02-21 21:53:02'),
(3, 'Mike Schmidt II', 'josephine.ernser@gmail.com', '$NnQNsI)=E>USehU!', 2, '2024-02-21 21:53:02', '2024-02-21 21:53:02'),
(4, 'Prof. Leopold Harber V', 'scarlett22@morissette.org', '(;n:B`K)W$xxN7', 3, '2024-02-21 21:53:02', '2024-02-21 21:53:02'),
(5, 'Sigurd Ferry', 'jarrell.kuhn@gulgowski.biz', '`=]L_W~+cK', 2, '2024-02-21 21:53:02', '2024-02-21 21:53:02'),
(6, 'Dr. Cali Wiza III', 'kyra29@hotmail.com', 'Tl6t:@', 1, '2024-02-21 21:53:02', '2024-02-21 21:53:02'),
(7, 'Ms. Claudia Parker', 'haylie33@bahringer.com', '(+N*PiS4,Cq&[@', 2, '2024-02-21 21:53:02', '2024-02-21 21:53:02'),
(8, 'Enola Connelly V', 'javier.marks@stark.com', '8~W=i6x!T4', 3, '2024-02-21 21:53:02', '2024-02-21 21:53:02'),
(9, 'Prof. Brendan Kutch', 'trau@kovacek.com', 'Slipc}0u', 2, '2024-02-21 21:53:02', '2024-02-21 21:53:02'),
(10, 'Catalina Gibson', 'wyman.fernando@renner.com', 'LvdGS32}mJ)', 1, '2024-02-21 21:53:02', '2024-02-21 21:53:02'),
(11, 'Ashlynn Beer', 'gudrun.hilpert@yahoo.com', 'j~e=WHy!l', 1, '2024-02-21 21:53:02', '2024-02-21 21:53:02'),
(12, 'Rina', 'rina@mail.com', 'rina123', 2, '2024-02-21 23:34:14', '2024-02-21 23:34:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jenis_transaksis`
--
ALTER TABLE `jenis_transaksis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategoris`
--
ALTER TABLE `kategoris`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `retribusis`
--
ALTER TABLE `retribusis`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `retribusis_nama_unique` (`nama`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_nama_unique` (`nama`);

--
-- Indexes for table `transaksis`
--
ALTER TABLE `transaksis`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jenis_transaksis`
--
ALTER TABLE `jenis_transaksis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategoris`
--
ALTER TABLE `kategoris`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `retribusis`
--
ALTER TABLE `retribusis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transaksis`
--
ALTER TABLE `transaksis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- Database: `msiproject`
--
CREATE DATABASE IF NOT EXISTS `msiproject` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `msiproject`;

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_purchases` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `total_paid` decimal(8,2) UNSIGNED NOT NULL DEFAULT '0.00',
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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
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
(5, '2022_12_28_111938_create_products_table', 1),
(6, '2022_12_28_112400_create_sold_products_table', 1),
(7, '2022_12_28_112451_create_received_products_table', 1),
(8, '2022_12_28_113909_create_clients_table', 2),
(9, '2022_12_28_114026_create_sales_table', 2),
(10, '2022_12_28_114524_create_providers_table', 3),
(11, '2022_12_28_114609_create_transactions_table', 3),
(12, '2022_12_28_121424_create_product_categories_table', 3);

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
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `product_category_id` bigint(20) UNSIGNED NOT NULL,
  `price` decimal(10,2) UNSIGNED NOT NULL,
  `stock` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `providers`
--

CREATE TABLE `providers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `received_products`
--

CREATE TABLE `received_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `receipt_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `stock` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `total_amount` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sold_products`
--

CREATE TABLE `sold_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sale_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sale_id` bigint(20) UNSIGNED DEFAULT NULL,
  `provider_id` bigint(20) UNSIGNED DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
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
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_category_id` (`product_category_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `providers`
--
ALTER TABLE `providers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `received_products`
--
ALTER TABLE `received_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `receipt_id` (`receipt_id`,`product_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`,`client_id`),
  ADD KEY `user_id_2` (`user_id`,`client_id`);

--
-- Indexes for table `sold_products`
--
ALTER TABLE `sold_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sale_id` (`sale_id`,`product_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`,`sale_id`,`provider_id`,`user_id`);

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
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `providers`
--
ALTER TABLE `providers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `received_products`
--
ALTER TABLE `received_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sold_products`
--
ALTER TABLE `sold_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
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
-- Constraints for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD CONSTRAINT `product_categories_ibfk_1` FOREIGN KEY (`id`) REFERENCES `products` (`product_category_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`id`) REFERENCES `sales` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `project`
--
CREATE DATABASE IF NOT EXISTS `project` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `project`;

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `document_type` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `document_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_purchase` timestamp NULL DEFAULT NULL,
  `total_purchases` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `total_paid` decimal(8,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `balance` decimal(8,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `document_type`, `document_id`, `name`, `email`, `phone`, `last_purchase`, `total_purchases`, `total_paid`, `created_at`, `updated_at`, `deleted_at`, `balance`) VALUES
(1, 'ID', 729012, 'Spongebob Squarepants', 'spongebob@bbmail.com', '201748', NULL, 0, 0.00, '2023-01-01 17:37:09', '2023-01-01 17:37:09', NULL, 0.00),
(2, 'DL', 928374, 'Squidward Tentacles', 'squidward@bbmail.com', '470192', NULL, 0, 0.00, '2023-01-01 17:37:43', '2023-01-01 17:37:43', NULL, 0.00),
(3, 'ID', 372890, 'Patrick Star', 'patrick@bbmail.com', '201928', NULL, 0, 0.00, '2023-01-01 17:38:51', '2023-01-01 17:38:51', NULL, 0.00),
(4, 'PP', 473829, 'Sandy Cheeks', 'sandy@bbmail.com', '303847', NULL, 0, 0.00, '2023-01-01 17:39:22', '2023-01-01 17:39:22', NULL, 0.00),
(5, 'ID', 384950, 'Sheldon Plankton', 'plankton@bbmail.com', '774859', NULL, 0, 0.00, '2023-01-01 17:39:54', '2023-01-01 17:39:54', NULL, 0.00),
(6, 'PP', 574830, 'Karen Plankton', 'karen@bbmail.com', '301928', NULL, 0, 0.00, '2023-01-01 17:40:27', '2023-01-01 17:40:27', NULL, 0.00),
(7, 'DL', 574839, 'Eugene Krabs', 'mrkrabs@bbmail.com', '019283', NULL, 0, 0.00, '2023-01-01 17:41:00', '2023-01-01 17:41:00', NULL, 0.00),
(8, 'DL', 857293, 'Larry Lobster', 'larry@bbmail.com', '375849', NULL, 0, 0.00, '2023-01-01 17:41:30', '2023-01-01 17:41:30', NULL, 0.00),
(9, 'ID', 102956, 'Pearl Krabs', 'pearl@bbmail.com', '789400', NULL, 0, 0.00, '2023-01-01 17:42:04', '2023-01-01 17:42:04', NULL, 0.00),
(10, 'DL', 860938, 'Mrs Puff', 'mrspuff@bbmail.com', '389000', NULL, 0, 0.00, '2023-01-01 17:42:32', '2023-01-01 17:42:32', NULL, 0.00),
(11, 'PP', 552819, 'Smitty Werbenjägermanjensen', 'smitty@bbmail.com', '037582', NULL, 0, 0.00, '2023-01-01 17:43:39', '2023-01-01 17:43:39', NULL, 0.00),
(12, 'DL', 746288, 'Mermaid Man', 'mermaidman@bbmail.com', '374884', NULL, 0, 0.00, '2023-01-01 17:44:12', '2023-01-01 17:44:12', NULL, 0.00),
(13, 'ID', 366201, 'Barnacle Boy', 'barnacleboy@bbmail.com', '001928', NULL, 0, 0.00, '2023-01-01 17:44:38', '2023-01-01 17:44:38', NULL, 0.00),
(14, 'ID', 928991, 'Bubble Bass', 'bubble@bbmail.com', '921012', NULL, 0, 0.00, '2023-01-01 17:45:09', '2023-01-01 17:45:09', NULL, 0.00),
(15, 'PP', 758399, 'Dirty Bubble', 'dirty@bbmail.com', '551622', NULL, 0, 0.00, '2023-01-01 17:45:51', '2023-01-01 17:45:51', NULL, 0.00),
(16, 'PP', 847738, 'Man Ray', 'man@bbmail.com', '189002', NULL, 0, 0.00, '2023-01-01 17:46:19', '2023-01-01 17:46:19', NULL, 0.00),
(17, 'ID', 261782, 'Perch Perkins', 'perch@bbmail.com', '938472', NULL, 0, 0.00, '2023-01-01 17:47:13', '2023-01-01 17:47:30', NULL, 0.00),
(18, 'PP', 666666, 'Flying Dutchman', 'flying@bbmail.com', '666666', NULL, 0, 0.00, '2023-01-01 17:48:04', '2023-01-01 17:48:04', NULL, 0.00),
(19, 'ID', 182911, 'King Neptune', 'king@bbmail.com', '782900', NULL, 0, 0.00, '2023-01-01 17:48:57', '2023-01-01 17:48:57', NULL, 0.00),
(20, 'ID', 345201, 'Hash Slinging Slasher', 'hash@bbmail.com', '401927', NULL, 0, 0.00, '2023-01-01 17:51:10', '2023-01-01 17:51:10', NULL, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_11_02_214601_create_clients_table_migration', 1),
(5, '2019_11_03_032131_create_products_categories_table_migration', 1),
(6, '2019_11_03_032233_create_products_table_migration', 1),
(7, '2019_11_04_000745_create_payment_methods_table_migration', 1),
(8, '2019_11_04_001238_create_sales_table_migration', 1),
(9, '2019_11_04_001246_create_sold_products_table_migration', 1),
(10, '2019_11_04_001339_create_providers_table_migration', 1),
(11, '2019_12_23_065221_create_transfers_table', 1),
(12, '2019_12_24_001440_create_transactions_table_migration', 1),
(13, '2020_01_15_193356_create_receipts_table', 1),
(14, '2020_01_15_193828_create_received_products_table', 1),
(15, '2020_01_20_191734_add_balance_column_clients_table', 1);

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
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `name`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Cash', 'Bayar tunai', '2023-01-01 17:54:21', '2023-01-01 17:54:30', NULL),
(2, 'E-money', 'Transfer e-money', '2023-01-01 17:54:58', '2023-01-01 17:54:58', NULL),
(3, 'Bank', 'Transfer bank', '2023-01-01 17:55:11', '2023-01-01 17:55:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `product_category_id` bigint(20) UNSIGNED NOT NULL,
  `price` decimal(10,2) UNSIGNED NOT NULL,
  `stock` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `stock_defective` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `product_category_id`, `price`, `stock`, `stock_defective`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Kelpo', 'Sekotak sereal rumput laut', 1, 5.00, 30, 0, '2023-01-01 16:22:56', '2023-01-01 16:22:56', NULL),
(2, 'Jellyfish Jelly', 'Sebotol jeli ubur-ubur', 1, 3.00, 30, 0, '2023-01-01 17:08:06', '2023-01-01 17:08:06', NULL),
(3, 'Spatula', 'Sebuah spatula', 3, 10.00, 15, 0, '2023-01-01 17:08:40', '2023-01-01 17:08:40', NULL),
(4, 'Seanut Butter', 'Sebotol mentega kacang laut', 1, 2.50, 20, 0, '2023-01-01 17:09:28', '2023-01-01 17:09:28', NULL),
(5, 'Rocky Road', 'Sebotol selai cokelat', 1, 3.50, 20, 1, '2023-01-01 17:10:12', '2023-01-01 17:10:12', NULL),
(6, 'Hydro Dynamic Spatula', 'Sebuah spatula hidro dinamis', 3, 20.00, 10, 0, '2023-01-01 17:10:53', '2023-01-01 17:10:53', NULL),
(7, 'Night Light', 'Sebuah lampu tidur kicik', 3, 5.00, 20, 0, '2023-01-01 17:11:39', '2023-01-01 17:11:39', NULL),
(8, 'Kelp Jerky', 'Sebungkus kelp jerky', 1, 3.00, 30, 0, '2023-01-01 17:15:57', '2023-01-01 17:15:57', NULL),
(9, 'Barnacle Loaf', 'Sepapan barnakel', 1, 5.00, 10, 1, '2023-01-01 17:16:45', '2023-01-01 17:16:45', NULL),
(10, 'Canned Bread', 'Sekaleng roti', 1, 3.50, 15, 1, '2023-01-01 17:17:24', '2023-01-01 17:17:24', NULL),
(11, 'Marsh King', 'Sebungkus marshmallow', 1, 4.00, 25, 0, '2023-01-01 17:18:04', '2023-01-01 17:18:04', NULL),
(12, 'Black Lemonade', 'Segelas lemonade hitam', 2, 2.50, 25, 0, '2023-01-01 17:19:23', '2023-01-01 17:19:23', NULL),
(13, 'Drinkable Sausage', 'Sekaleng sosis siap minum', 2, 4.50, 10, 0, '2023-01-01 17:20:06', '2023-01-01 17:20:06', NULL),
(14, 'Kelp Shake', 'Sebotol shake rumput laut', 2, 3.50, 50, 2, '2023-01-01 17:20:40', '2023-01-01 17:21:13', NULL),
(15, 'Fizz Bomb Cola', 'Sebotol cola', 2, 3.00, 20, 0, '2023-01-01 17:21:59', '2023-01-01 17:21:59', NULL),
(16, 'Bubbly Water', 'Sebotol air bubbly', 2, 2.50, 30, 0, '2023-01-01 17:23:13', '2023-01-01 17:23:13', NULL),
(17, 'Seahorse Milk', 'Segelas susu kuda laut', 2, 4.00, 15, 0, '2023-01-01 17:24:37', '2023-01-01 17:24:37', NULL),
(18, 'Large Fountain Drink', 'Segalon minuman', 2, 8.00, 20, 0, '2023-01-01 17:27:37', '2023-01-01 17:27:37', NULL),
(19, 'Swedish Barnacle Balls', 'Sekaleng bakso barnakel swedia', 1, 3.50, 25, 1, '2023-01-01 17:28:54', '2023-01-01 17:28:54', NULL),
(20, 'Volcano Sauce', 'Sebotol saus pedas volkano', 1, 3.00, 25, 1, '2023-01-01 17:29:53', '2023-01-01 17:29:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Makanan', '2023-01-01 16:20:46', '2023-01-01 16:20:46', NULL),
(2, 'Minuman', '2023-01-01 16:20:54', '2023-01-01 16:20:54', NULL),
(3, 'Alat & Elektronik', '2023-01-01 16:21:14', '2023-01-01 16:21:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `providers`
--

CREATE TABLE `providers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `paymentinfo` text COLLATE utf8mb4_unicode_ci,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `providers`
--

INSERT INTO `providers` (`id`, `name`, `description`, `paymentinfo`, `email`, `phone`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Eugene Krabs', 'owner Krusty Krab', 'uang uang uang uang', 'mrkrabs@bbmail.com', '019283', '2023-01-01 17:52:58', '2023-01-01 17:52:58', NULL),
(2, 'Sheldon Plankton', 'owner Chum Bucket', 'resep rahasiaaa', 'plankton@bbmail.com', '027362', '2023-01-01 17:53:44', '2023-01-01 17:53:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `receipts`
--

CREATE TABLE `receipts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `finalized_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `received_products`
--

CREATE TABLE `received_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `receipt_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `stock` int(11) NOT NULL,
  `stock_defective` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `total_amount` decimal(10,2) DEFAULT NULL,
  `finalized_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sold_products`
--

CREATE TABLE `sold_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sale_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sale_id` bigint(20) UNSIGNED DEFAULT NULL,
  `provider_id` bigint(20) UNSIGNED DEFAULT NULL,
  `transfer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payment_method_id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transfers`
--

CREATE TABLE `transfers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sender_method_id` bigint(20) UNSIGNED NOT NULL,
  `receiver_method_id` bigint(20) UNSIGNED NOT NULL,
  `sended_amount` decimal(10,2) NOT NULL,
  `received_amount` decimal(10,2) NOT NULL,
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'Bubble Buddy', 'bubble@bbmail.com', NULL, '$2y$10$dRnZG740P.REKnZoFfbxBexZaCCRN07upJmIBTPxRoDc5ptLT3xf.', NULL, '2023-01-04 14:18:25', '2023-01-04 14:18:25', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `clients_document_id_unique` (`document_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_product_category_id_foreign` (`product_category_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `providers`
--
ALTER TABLE `providers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `receipts`
--
ALTER TABLE `receipts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `receipts_provider_id_foreign` (`provider_id`),
  ADD KEY `receipts_user_id_foreign` (`user_id`);

--
-- Indexes for table `received_products`
--
ALTER TABLE `received_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `received_products_receipt_id_foreign` (`receipt_id`),
  ADD KEY `received_products_product_id_foreign` (`product_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_user_id_foreign` (`user_id`),
  ADD KEY `sales_client_id_foreign` (`client_id`);

--
-- Indexes for table `sold_products`
--
ALTER TABLE `sold_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sold_products_sale_id_foreign` (`sale_id`),
  ADD KEY `sold_products_product_id_foreign` (`product_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_payment_method_id_foreign` (`payment_method_id`),
  ADD KEY `transactions_client_id_foreign` (`client_id`),
  ADD KEY `transactions_sale_id_foreign` (`sale_id`),
  ADD KEY `transactions_provider_id_foreign` (`provider_id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`),
  ADD KEY `transactions_transfer_id_foreign` (`transfer_id`);

--
-- Indexes for table `transfers`
--
ALTER TABLE `transfers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transfers_sender_method_id_foreign` (`sender_method_id`),
  ADD KEY `transfers_receiver_method_id_foreign` (`receiver_method_id`);

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
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `providers`
--
ALTER TABLE `providers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `receipts`
--
ALTER TABLE `receipts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `received_products`
--
ALTER TABLE `received_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sold_products`
--
ALTER TABLE `sold_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transfers`
--
ALTER TABLE `transfers`
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
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_product_category_id_foreign` FOREIGN KEY (`product_category_id`) REFERENCES `product_categories` (`id`);

--
-- Constraints for table `receipts`
--
ALTER TABLE `receipts`
  ADD CONSTRAINT `receipts_provider_id_foreign` FOREIGN KEY (`provider_id`) REFERENCES `providers` (`id`),
  ADD CONSTRAINT `receipts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `received_products`
--
ALTER TABLE `received_products`
  ADD CONSTRAINT `received_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `received_products_receipt_id_foreign` FOREIGN KEY (`receipt_id`) REFERENCES `receipts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`),
  ADD CONSTRAINT `sales_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `sold_products`
--
ALTER TABLE `sold_products`
  ADD CONSTRAINT `sold_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `sold_products_sale_id_foreign` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`),
  ADD CONSTRAINT `transactions_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`),
  ADD CONSTRAINT `transactions_provider_id_foreign` FOREIGN KEY (`provider_id`) REFERENCES `providers` (`id`),
  ADD CONSTRAINT `transactions_sale_id_foreign` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_transfer_id_foreign` FOREIGN KEY (`transfer_id`) REFERENCES `transfers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `transfers`
--
ALTER TABLE `transfers`
  ADD CONSTRAINT `transfers_receiver_method_id_foreign` FOREIGN KEY (`receiver_method_id`) REFERENCES `payment_methods` (`id`),
  ADD CONSTRAINT `transfers_sender_method_id_foreign` FOREIGN KEY (`sender_method_id`) REFERENCES `payment_methods` (`id`);
--
-- Database: `salesdb`
--
CREATE DATABASE IF NOT EXISTS `salesdb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `salesdb`;

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `document_type` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'V',
  `document_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_purchase` timestamp NULL DEFAULT NULL,
  `total_purchases` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `total_paid` decimal(8,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `balance` decimal(8,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_11_02_214601_create_clients_table_migration', 1),
(5, '2019_11_03_032131_create_products_categories_table_migration', 1),
(6, '2019_11_03_032233_create_products_table_migration', 1),
(7, '2019_11_04_000745_create_payment_methods_table_migration', 1),
(8, '2019_11_04_001238_create_sales_table_migration', 1),
(9, '2019_11_04_001246_create_sold_products_table_migration', 1),
(10, '2019_11_04_001339_create_providers_table_migration', 1),
(11, '2019_12_23_065221_create_transfers_table', 1),
(12, '2019_12_24_001440_create_transactions_table_migration', 1),
(13, '2020_01_15_193356_create_receipts_table', 1),
(14, '2020_01_15_193828_create_received_products_table', 1),
(15, '2020_01_20_191734_add_balance_column_clients_table', 1);

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
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `product_category_id` bigint(20) UNSIGNED NOT NULL,
  `price` decimal(10,2) UNSIGNED NOT NULL,
  `stock` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `stock_defective` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `providers`
--

CREATE TABLE `providers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `paymentinfo` text COLLATE utf8mb4_unicode_ci,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `receipts`
--

CREATE TABLE `receipts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `finalized_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `received_products`
--

CREATE TABLE `received_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `receipt_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `stock` int(11) NOT NULL,
  `stock_defective` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `total_amount` decimal(10,2) DEFAULT NULL,
  `finalized_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sold_products`
--

CREATE TABLE `sold_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sale_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sale_id` bigint(20) UNSIGNED DEFAULT NULL,
  `provider_id` bigint(20) UNSIGNED DEFAULT NULL,
  `transfer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payment_method_id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transfers`
--

CREATE TABLE `transfers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sender_method_id` bigint(20) UNSIGNED NOT NULL,
  `receiver_method_id` bigint(20) UNSIGNED NOT NULL,
  `sended_amount` decimal(10,2) NOT NULL,
  `received_amount` decimal(10,2) NOT NULL,
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'ifa', 'ifa@gmail.com', NULL, '$2y$10$5vTlO0mi1eBMo4B8xp1L9O888u50nrPY4i.x2iRjwD6/ShQAg/7gG', NULL, '2022-12-27 18:46:18', '2022-12-27 18:46:18', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `clients_document_id_unique` (`document_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_product_category_id_foreign` (`product_category_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `providers`
--
ALTER TABLE `providers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `receipts`
--
ALTER TABLE `receipts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `receipts_provider_id_foreign` (`provider_id`),
  ADD KEY `receipts_user_id_foreign` (`user_id`);

--
-- Indexes for table `received_products`
--
ALTER TABLE `received_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `received_products_receipt_id_foreign` (`receipt_id`),
  ADD KEY `received_products_product_id_foreign` (`product_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_user_id_foreign` (`user_id`),
  ADD KEY `sales_client_id_foreign` (`client_id`);

--
-- Indexes for table `sold_products`
--
ALTER TABLE `sold_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sold_products_sale_id_foreign` (`sale_id`),
  ADD KEY `sold_products_product_id_foreign` (`product_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_payment_method_id_foreign` (`payment_method_id`),
  ADD KEY `transactions_client_id_foreign` (`client_id`),
  ADD KEY `transactions_sale_id_foreign` (`sale_id`),
  ADD KEY `transactions_provider_id_foreign` (`provider_id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`),
  ADD KEY `transactions_transfer_id_foreign` (`transfer_id`);

--
-- Indexes for table `transfers`
--
ALTER TABLE `transfers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transfers_sender_method_id_foreign` (`sender_method_id`),
  ADD KEY `transfers_receiver_method_id_foreign` (`receiver_method_id`);

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
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `providers`
--
ALTER TABLE `providers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `receipts`
--
ALTER TABLE `receipts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `received_products`
--
ALTER TABLE `received_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sold_products`
--
ALTER TABLE `sold_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transfers`
--
ALTER TABLE `transfers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_product_category_id_foreign` FOREIGN KEY (`product_category_id`) REFERENCES `product_categories` (`id`);

--
-- Constraints for table `receipts`
--
ALTER TABLE `receipts`
  ADD CONSTRAINT `receipts_provider_id_foreign` FOREIGN KEY (`provider_id`) REFERENCES `providers` (`id`),
  ADD CONSTRAINT `receipts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `received_products`
--
ALTER TABLE `received_products`
  ADD CONSTRAINT `received_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `received_products_receipt_id_foreign` FOREIGN KEY (`receipt_id`) REFERENCES `receipts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`),
  ADD CONSTRAINT `sales_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `sold_products`
--
ALTER TABLE `sold_products`
  ADD CONSTRAINT `sold_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `sold_products_sale_id_foreign` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`),
  ADD CONSTRAINT `transactions_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`),
  ADD CONSTRAINT `transactions_provider_id_foreign` FOREIGN KEY (`provider_id`) REFERENCES `providers` (`id`),
  ADD CONSTRAINT `transactions_sale_id_foreign` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_transfer_id_foreign` FOREIGN KEY (`transfer_id`) REFERENCES `transfers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `transfers`
--
ALTER TABLE `transfers`
  ADD CONSTRAINT `transfers_receiver_method_id_foreign` FOREIGN KEY (`receiver_method_id`) REFERENCES `payment_methods` (`id`),
  ADD CONSTRAINT `transfers_sender_method_id_foreign` FOREIGN KEY (`sender_method_id`) REFERENCES `payment_methods` (`id`);
--
-- Database: `scholarship`
--
CREATE DATABASE IF NOT EXISTS `scholarship` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `scholarship`;

-- --------------------------------------------------------

--
-- Table structure for table `criterias`
--

CREATE TABLE `criterias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_kriteria` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bobot` int(11) NOT NULL,
  `is_beneficial` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `criterias`
--

INSERT INTO `criterias` (`id`, `nama_kriteria`, `bobot`, `is_beneficial`, `created_at`, `updated_at`) VALUES
(1, 'IPK', 4, 1, '2023-03-09 05:35:47', '2023-03-09 05:35:47'),
(2, 'IPS', 4, 1, '2023-03-09 05:35:47', '2023-03-09 05:35:47'),
(3, 'Pendapatan orang tua', 3, 0, '2023-03-09 05:35:47', '2023-03-09 05:35:47'),
(4, 'Jumlah saudara kandung yang dibiayai', 2, 1, '2023-03-09 05:35:47', '2023-03-09 05:35:47');

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
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
(5, '2021_11_17_123100_create_students_table', 1),
(6, '2021_11_17_124031_create_criterias_table', 1),
(7, '2021_11_20_165752_create_results_table', 1);

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
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nim` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `skor` double(3,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`id`, `slug`, `label`, `nim`, `nama`, `skor`, `created_at`, `updated_at`) VALUES
(1, 'sort1', 'sort1', '79233', 'Barry Blobfish', 0.53, '2023-03-09 19:23:19', '2023-03-09 19:23:19'),
(2, 'sort1', 'sort1', '63740', 'Smitty Werbenjagermanjensen', 0.39, '2023-03-09 19:23:19', '2023-03-09 19:23:19'),
(3, 'sort1', 'sort1', '59415', 'Bob Preflumster', 0.52, '2023-03-09 19:23:19', '2023-03-09 19:23:19'),
(4, 'sort1', 'sort1', '88857', 'Barnacle Boy', 0.48, '2023-03-09 19:23:19', '2023-03-09 19:23:19'),
(5, 'sort1', 'sort1', '40670', 'Larry Lobster', 0.42, '2023-03-09 19:23:19', '2023-03-09 19:23:19'),
(6, 'sort1', 'sort1', '96577', 'Spongebob Squarepant', 0.24, '2023-03-09 19:23:19', '2023-03-09 19:23:19'),
(7, 'sort1', 'sort1', '95362', 'Man Ray', 0.33, '2023-03-09 19:23:19', '2023-03-09 19:23:19'),
(8, 'sort1', 'sort1', '58009', 'Bubble Bass', 0.56, '2023-03-09 19:23:19', '2023-03-09 19:23:19'),
(9, 'sort1', 'sort1', '60008', 'Karen Plankton', 0.40, '2023-03-09 19:23:19', '2023-03-09 19:23:19'),
(10, 'sort1', 'sort1', '69588', 'Mermaid Man', 0.18, '2023-03-09 19:23:19', '2023-03-09 19:23:19'),
(11, 'sort1', 'sort1', '30848', 'Flying Dutchman', 0.29, '2023-03-09 19:23:19', '2023-03-09 19:23:19'),
(12, 'sort1', 'sort1', '82062', 'Bubble Buddy', 0.44, '2023-03-09 19:23:19', '2023-03-09 19:23:19'),
(13, 'sort1', 'sort1', '15153', 'Sandy Cheeks', 0.65, '2023-03-09 19:23:19', '2023-03-09 19:23:19'),
(14, 'sort1', 'sort1', '70776', 'Sheldon Plankton', 0.53, '2023-03-09 19:23:19', '2023-03-09 19:23:19'),
(15, 'sort1', 'sort1', '62116', 'Eugene Krabs', 0.56, '2023-03-09 19:23:19', '2023-03-09 19:23:19'),
(16, 'sort1', 'sort1', '67958', 'Squidward Tentacles', 0.34, '2023-03-09 19:23:19', '2023-03-09 19:23:19'),
(17, 'sort1', 'sort1', '37988', 'Squilliam Fancyson', 0.30, '2023-03-09 19:23:19', '2023-03-09 19:23:19'),
(18, 'sort1', 'sort1', '69302', 'Pearl Krabs', 0.41, '2023-03-09 19:23:19', '2023-03-09 19:23:19'),
(19, 'sort1', 'sort1', '88152', 'Patrick Star', 0.47, '2023-03-09 19:23:19', '2023-03-09 19:23:19'),
(20, 'sort1', 'sort1', '90510', 'Dirty Bubble', 0.67, '2023-03-09 19:23:19', '2023-03-09 19:23:19'),
(21, 'sort2', 'sort2', '79233', 'Barry Blobfish', 0.53, '2023-03-09 20:38:55', '2023-03-09 20:38:55'),
(22, 'sort2', 'sort2', '63740', 'Smitty Werbenjagermanjensen', 0.39, '2023-03-09 20:38:55', '2023-03-09 20:38:55'),
(23, 'sort2', 'sort2', '59415', 'Bob Preflumster', 0.52, '2023-03-09 20:38:55', '2023-03-09 20:38:55'),
(24, 'sort2', 'sort2', '88857', 'Barnacle Boy', 0.48, '2023-03-09 20:38:55', '2023-03-09 20:38:55'),
(25, 'sort2', 'sort2', '40670', 'Larry Lobster', 0.42, '2023-03-09 20:38:55', '2023-03-09 20:38:55'),
(26, 'sort2', 'sort2', '96577', 'Spongebob Squarepant', 0.24, '2023-03-09 20:38:55', '2023-03-09 20:38:55'),
(27, 'sort2', 'sort2', '95362', 'Man Ray', 0.33, '2023-03-09 20:38:55', '2023-03-09 20:38:55'),
(28, 'sort2', 'sort2', '58009', 'Bubble Bass', 0.56, '2023-03-09 20:38:55', '2023-03-09 20:38:55'),
(29, 'sort2', 'sort2', '60008', 'Karen Plankton', 0.40, '2023-03-09 20:38:55', '2023-03-09 20:38:55'),
(30, 'sort2', 'sort2', '69588', 'Mermaid Man', 0.18, '2023-03-09 20:38:55', '2023-03-09 20:38:55'),
(31, 'sort2', 'sort2', '30848', 'Flying Dutchman', 0.29, '2023-03-09 20:38:55', '2023-03-09 20:38:55'),
(32, 'sort2', 'sort2', '82062', 'Bubble Buddy', 0.44, '2023-03-09 20:38:55', '2023-03-09 20:38:55'),
(33, 'sort2', 'sort2', '15153', 'Sandy Cheeks', 0.65, '2023-03-09 20:38:55', '2023-03-09 20:38:55'),
(34, 'sort2', 'sort2', '70776', 'Sheldon Plankton', 0.53, '2023-03-09 20:38:55', '2023-03-09 20:38:55'),
(35, 'sort2', 'sort2', '62116', 'Eugene Krabs', 0.56, '2023-03-09 20:38:55', '2023-03-09 20:38:55'),
(36, 'sort2', 'sort2', '67958', 'Squidward Tentacles', 0.34, '2023-03-09 20:38:55', '2023-03-09 20:38:55'),
(37, 'sort2', 'sort2', '37988', 'Squilliam Fancyson', 0.30, '2023-03-09 20:38:55', '2023-03-09 20:38:55'),
(38, 'sort2', 'sort2', '69302', 'Pearl Krabs', 0.41, '2023-03-09 20:38:55', '2023-03-09 20:38:55'),
(39, 'sort2', 'sort2', '88152', 'Patrick Star', 0.47, '2023-03-09 20:38:55', '2023-03-09 20:38:55'),
(40, 'sort2', 'sort2', '90510', 'Dirty Bubble', 0.67, '2023-03-09 20:38:55', '2023-03-09 20:38:55');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nim` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ipk` double(3,2) NOT NULL,
  `ips` double(3,2) NOT NULL,
  `pendapatan_ortu` int(11) NOT NULL,
  `jumlah_saudara` int(11) NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.jpg',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `nim`, `alamat`, `ipk`, `ips`, `pendapatan_ortu`, `jumlah_saudara`, `foto`, `created_at`, `updated_at`) VALUES
(1, 'Barry Blobfish', '79233', '4564 Rita WallKonopelskiview, NJ 68073', 3.76, 3.92, 67831292, 4, '640a9182e073e.png', '2023-01-01 13:59:25', '2023-03-09 19:10:10'),
(2, 'Smitty Werbenjagermanjensen', '63740', '51434 Shields Fields Suite 836East Federicoberg, AK 13234', 3.56, 3.75, 18046934, 5, 'default.jpg', '2023-01-01 13:59:25', '2023-01-01 15:02:38'),
(3, 'Bob Preflumster', '59415', '122 Orin Plaza Apt. 869Wolffburgh, CO 92256', 3.90, 3.77, 42924903, 1, '640a9258ca396.jpg', '2023-01-01 13:59:25', '2023-03-09 19:13:44'),
(4, 'Barnacle Boy', '88857', '9425 Nicola Ways Apt. 530Bogisichside, CA 56270-4991', 3.52, 3.95, 12459142, 4, '640a8ea9441c3.jpg', '2023-01-01 13:59:25', '2023-03-09 18:58:01'),
(5, 'Larry Lobster', '40670', '45330 Torrey Bypass Apt. 690Coyberg, CT 50630', 3.71, 3.76, 96380648, 4, 'default.jpg', '2023-01-01 13:59:25', '2023-01-01 14:51:13'),
(6, 'Spongebob Squarepant', '96577', '7115 Amir Square Suite 947East Garretside, WI 42776', 3.63, 3.54, 57638982, 4, 'default.jpg', '2023-01-01 13:59:25', '2023-01-01 14:45:26'),
(7, 'Man Ray', '95362', '789 Carey CrestFarrellshire, KY 47415', 3.80, 3.53, 21609155, 2, 'default.jpg', '2023-01-01 13:59:25', '2023-01-01 14:58:37'),
(8, 'Bubble Bass', '58009', '384 Preston SpringsWest Rhealand, ME 96223-7854', 3.63, 3.85, 15131583, 1, '640a932dcde54.png', '2023-01-01 13:59:25', '2023-03-09 19:17:17'),
(9, 'Karen Plankton', '60008', '969 Yesenia CausewayWeimannview, CT 57919', 3.70, 3.75, 54810757, 4, 'default.jpg', '2023-01-01 13:59:25', '2023-01-01 14:50:37'),
(10, 'Mermaid Man', '69588', '720 Robyn Tunnel Apt. 562Emoryborough, GA 88856-9571', 3.56, 3.52, 27355020, 2, 'default.jpg', '2023-01-01 13:59:25', '2023-01-01 14:53:48'),
(11, 'Flying Dutchman', '30848', '594 Jennings InletRaheemton, NV 07391', 3.52, 3.87, 57691218, 1, 'default.jpg', '2023-01-01 13:59:25', '2023-01-01 14:59:48'),
(12, 'Bubble Buddy', '82062', '680 Christelle Passage Apt. 135New Dylan, ME 56248-1361', 3.95, 3.62, 57925297, 1, '640a93cb23194.jpg', '2023-01-01 13:59:25', '2023-03-09 19:19:55'),
(13, 'Sandy Cheeks', '15153', '8473 Summer TrafficwayNorth Hannah, NC 10300', 4.00, 3.97, 83831655, 5, 'default.jpg', '2023-01-01 13:59:25', '2023-01-01 14:50:53'),
(14, 'Sheldon Plankton', '70776', '925 Christian Lights Apt. 292New Ellen, TX 86231-6432', 3.76, 3.81, 55040252, 4, 'default.jpg', '2023-01-01 13:59:25', '2023-01-01 14:50:08'),
(15, 'Eugene Krabs', '62116', '1503 O\'Kon RadialHyattside, VA 68264-0864', 3.95, 3.66, 19933250, 1, 'default.jpg', '2023-01-01 13:59:25', '2023-01-01 14:46:59'),
(16, 'Squidward Tentacles', '67958', '5308 Logan IsleLake Jovan, TN 88330', 3.72, 3.52, 25728808, 4, 'default.jpg', '2023-01-01 13:59:25', '2023-01-01 14:45:53'),
(17, 'Squilliam Fancyson', '37988', '190 Goyette Ville Apt. 592Kingside, AZ 92970-2876', 3.99, 3.56, 93280416, 4, 'default.jpg', '2023-01-01 13:59:25', '2023-01-01 14:49:18'),
(18, 'Pearl Krabs', '69302', '99299 Travis Neck Suite 168West Yasmeenborough, NC 93054', 3.86, 3.60, 17938743, 4, 'default.jpg', '2023-01-01 13:59:25', '2023-01-01 14:47:12'),
(19, 'Patrick Star', '88152', '93566 Cydney RanchMarcosland, CA 38777', 3.92, 3.69, 42931998, 1, 'default.jpg', '2023-01-01 13:59:25', '2023-01-01 14:45:42'),
(20, 'Dirty Bubble', '90510', '7738 Christiansen VillageLittelchester, ID 40369', 3.90, 3.78, 14508919, 1, 'default.jpg', '2023-01-01 13:59:25', '2023-01-01 14:58:21');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `is_admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', 'admin@mail.com', '2023-03-09 05:35:47', '$2y$10$zxB4TvJa2yxBjyXTmWEPw.AgvHyfVW/jLzbc/k8u0JeXh6CqS/Nw2', 0, 'dRV8TGU7gVfoYWYKCrck9IBu1ud7Gw9unVwcU6XxKgvbpFR5OWgaiWk0ZlHc', '2023-03-09 05:35:47', '2023-03-09 05:35:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `criterias`
--
ALTER TABLE `criterias`
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
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `students_nim_unique` (`nim`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `criterias`
--
ALTER TABLE `criterias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `sidata`
--
CREATE DATABASE IF NOT EXISTS `sidata` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `sidata`;

-- --------------------------------------------------------

--
-- Table structure for table `diagnosas`
--

CREATE TABLE `diagnosas` (
  `id_diagnosa` int(10) UNSIGNED NOT NULL,
  `skor_1` double NOT NULL,
  `skor_2` double NOT NULL,
  `skor_3` double NOT NULL,
  `skor_4` double NOT NULL,
  `skor_5` double NOT NULL,
  `skor_6` double NOT NULL,
  `skor_7` double NOT NULL,
  `skor_8` double NOT NULL,
  `skor_9` double NOT NULL,
  `skor_10` double NOT NULL,
  `skor_11` double NOT NULL,
  `skor_12` double NOT NULL,
  `skor_13` double NOT NULL,
  `skor_14` double NOT NULL,
  `skor_15` double NOT NULL,
  `skor_16` double NOT NULL,
  `skor_17` double NOT NULL,
  `skor_18` double NOT NULL,
  `skor_19` double NOT NULL,
  `skor_20` double NOT NULL,
  `skor_21` double NOT NULL,
  `skor_22` double NOT NULL,
  `skor_23` double NOT NULL,
  `skor_24` double NOT NULL,
  `hasil` double DEFAULT NULL,
  `persentase` double DEFAULT NULL,
  `diagnosa` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gejalas`
--

CREATE TABLE `gejalas` (
  `kode_gejala` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_gejala` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cf` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gejalas`
--

INSERT INTO `gejalas` (`kode_gejala`, `nama_gejala`, `cf`, `created_at`, `updated_at`, `remember_token`) VALUES
('G01', 'Pandangan kabur seperti berkabut', 0.4, '2023-01-01 13:53:36', '2023-01-01 13:53:36', NULL),
('G02', 'Pandangan ganda', 0.4, '2023-01-01 13:53:36', '2023-01-01 13:53:36', NULL),
('G03', 'Penurunan penglihatan pada malam hari', 0.6, '2023-01-01 13:53:36', '2023-01-01 13:53:36', NULL),
('G04', 'Rasa silau saat melihat lampu mobil, matahari, atau lampu', 0.2, '2023-01-01 13:53:36', '2023-01-01 13:53:36', NULL),
('G05', 'Sering mengganti ukuran kacamata', 0.4, '2023-01-01 13:53:36', '2023-01-01 13:53:36', NULL),
('G06', 'Warna di sekitar terlihat memudar', 0.6, '2023-01-01 13:53:36', '2023-01-01 13:53:36', NULL),
('G07', 'Melihat lingkaran di sekeliling cahaya', 0.2, '2023-01-01 13:53:36', '2023-01-01 13:53:36', NULL),
('G08', 'Nyeri pada mata', 0.6, '2023-01-01 13:53:36', '2023-01-01 13:53:36', NULL),
('G09', 'Sakit kepala', 0.6, '2023-01-01 13:53:36', '2023-01-01 13:53:36', NULL),
('G10', 'Mata memerah', 0.2, '2023-01-01 13:53:36', '2023-01-01 13:53:36', NULL),
('G11', 'Mual atau muntah', 0.2, '2023-01-01 13:53:36', '2023-01-01 13:53:36', NULL),
('G12', 'Mata berkabut (khususnya pada bayi)', 0.2, '2023-01-01 13:53:36', '2023-01-01 13:53:36', NULL),
('G13', 'Penglihatan yang makin menyempit hingga akhirnya tidak dapat melihat obyek sama sekali', 0.6, '2023-01-01 13:53:36', '2023-01-01 13:53:36', NULL),
('G14', 'Pandangan mata kabur atau berbayang', 0.2, '2023-01-01 13:53:36', '2023-01-01 13:53:36', NULL),
('G15', 'Sering menyipitkan mata untuk melihat objek dengan jelas', 0.4, '2023-01-01 13:53:36', '2023-01-01 13:53:36', NULL),
('G16', 'Sulit fokus saat membaca buku, menonton TV, dan melihat layar komputer atau gadget', 0.6, '2023-01-01 13:53:36', '2023-01-01 13:53:36', NULL),
('G17', 'Mata sensitif atau silau terhadap pencahayaan yang terlalu terang', 0.4, '2023-01-01 13:53:36', '2023-01-01 13:53:36', NULL),
('G18', 'Mata silau atau melihat lingkaran cahaya di sekitar cahaya terang', 0.2, '2023-01-01 13:53:36', '2023-01-01 13:53:36', NULL),
('G19', 'Mata tegang', 0.4, '2023-01-01 13:53:36', '2023-01-01 13:53:36', NULL),
('G20', 'Posisi kedua mata tidak sejajar', 0.6, '2023-01-01 13:53:36', '2023-01-01 13:53:36', NULL),
('G21', 'Kedua mata tidak melihat ke arah yang sama', 0.6, '2023-01-01 13:53:36', '2023-01-01 13:53:36', NULL),
('G22', 'Menutup salah satu mata saat berusaha fokus pada objek tertentu', 0.4, '2023-01-01 13:53:36', '2023-01-01 13:53:36', NULL),
('G23', 'Pergerakan mata yang tidak terkoordinasi (kedua mata tidak bergerak bersamaan)', 0.4, '2023-01-01 13:53:36', '2023-01-01 13:53:36', NULL),
('G24', 'Kehilangan penglihatan', 0.2, '2023-01-01 13:53:36', '2023-01-01 13:53:36', NULL);

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
(5, '2022_05_20_082401_gejala', 1),
(6, '2022_05_20_102542_penyakit', 1),
(7, '2022_05_24_023331_diagnosa', 1),
(8, '2022_05_25_052300_pasien', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pasiens`
--

CREATE TABLE `pasiens` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_lengkap` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usia` int(11) NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pasiens`
--

INSERT INTO `pasiens` (`id`, `nama_lengkap`, `jenis_kelamin`, `usia`, `alamat`, `created_at`, `updated_at`, `remember_token`) VALUES
(1, 'ifa', 'Perempuan', 20, 'yk', '2023-01-01 13:55:43', '2023-01-01 13:55:43', NULL);

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
-- Table structure for table `penyakits`
--

CREATE TABLE `penyakits` (
  `kode_penyakit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_penyakit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `penyakits`
--

INSERT INTO `penyakits` (`kode_penyakit`, `nama_penyakit`, `created_at`, `updated_at`, `remember_token`) VALUES
('P01', 'Katarak', '2023-01-01 13:53:36', '2023-01-01 13:53:36', NULL),
('P02', 'Glaukoma', '2023-01-01 13:53:36', '2023-01-01 13:53:36', NULL),
('P03', 'Refraksi/Rabun', '2023-01-01 13:53:36', '2023-01-01 13:53:36', NULL),
('P04', 'Strabismus/Mata Juling', '2023-01-01 13:53:36', '2023-01-01 13:53:36', NULL);

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
  `abilities` text COLLATE utf8mb4_unicode_ci,
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
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$qsYOPtDK8A4RqnaupLs.KelZH1.f0fMDD745ewGPYYjx09KkMAuvq', 'admin', NULL, '2023-01-01 13:53:36', '2023-01-01 13:53:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `diagnosas`
--
ALTER TABLE `diagnosas`
  ADD PRIMARY KEY (`id_diagnosa`);

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
-- Indexes for table `pasiens`
--
ALTER TABLE `pasiens`
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
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `diagnosas`
--
ALTER TABLE `diagnosas`
  MODIFY `id_diagnosa` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pasiens`
--
ALTER TABLE `pasiens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jenis`
--

CREATE TABLE `jenis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jenis`
--

INSERT INTO `jenis` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Pelayanan Kebersihan', '2023-06-27 01:22:11', '2023-06-27 01:22:11'),
(2, 'Pelayanan Pasar', '2023-06-27 01:22:11', '2023-06-27 01:22:11'),
(3, 'Pengolahan Limbah Cair', '2023-06-27 01:22:11', '2023-06-27 01:22:11');

-- --------------------------------------------------------

--
-- Table structure for table `kategoris`
--

CREATE TABLE `kategoris` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tarif` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategoris`
--

INSERT INTO `kategoris` (`id`, `nama`, `tarif`, `created_at`, `updated_at`) VALUES
(1, 'A', 10000, '2023-06-27 01:22:11', '2023-06-27 01:22:11'),
(2, 'B', 20000, '2023-06-27 01:22:11', '2023-06-27 01:22:11'),
(3, 'C', 30000, '2023-06-27 01:22:11', '2023-06-27 01:22:11');

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
(6, '2023_06_27_060846_create_jenis_table', 1),
(7, '2023_06_27_060928_create_kategori_table', 1),
(8, '2023_06_27_060953_create_tagihan_table', 1),
(9, '2023_06_27_061022_create_tunggakan_table', 1),
(10, '2023_06_27_061111_create_transaksi_table', 1),
(11, '2023_06_27_075945_change_users_table', 2),
(12, '2023_06_27_080713_change_users2_table', 3),
(14, '2023_06_27_082036_change_kategori_table', 5),
(15, '2023_06_27_082249_change_tagihan_table', 6),
(16, '2023_06_27_082322_change_tunggakans_table', 6),
(17, '2023_06_27_082421_change_transaksi_table', 6),
(18, '2024_02_07_020113_create_roles_table', 7),
(19, '2024_02_07_022128_create_users_table', 8);

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
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2024-02-06 19:30:32', '2024-02-06 19:30:32'),
(2, 'admin_opd', 'Administrator OPD', '2024-02-06 19:30:32', '2024-02-06 19:30:32'),
(3, 'user', 'User', '2024-02-06 19:30:32', '2024-02-06 19:30:32');

-- --------------------------------------------------------

--
-- Table structure for table `tagihans`
--

CREATE TABLE `tagihans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_retribusi` int(11) NOT NULL,
  `deskripsi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaksis`
--

CREATE TABLE `transaksis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_retribusi` int(11) NOT NULL,
  `id_tagihan` int(11) NOT NULL,
  `id_tunggakan` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tunggakans`
--

CREATE TABLE `tunggakans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_retribusi` int(11) NOT NULL,
  `deskripsi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nik` bigint(20) NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  `jumlah_tagihan` bigint(20) DEFAULT NULL,
  `jumlah_tunggakan` bigint(20) DEFAULT NULL,
  `jumlah_dibayar` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nik`, `nama`, `username`, `password`, `role_id`, `jumlah_tagihan`, `jumlah_tunggakan`, `jumlah_dibayar`, `created_at`, `updated_at`) VALUES
(1, 3199265419935164, 'Dr. Ralph Mayer', 'damore.harmony', 'admin18', 3, 62828753, 67894153, 917989318, '2024-02-06 19:30:33', '2024-02-06 19:30:33'),
(2, 4125925524036449, 'Ocie Wisozk DDS', 'darren00', 'admin18', 2, 59788969, 68747633, 224272193, '2024-02-06 19:30:33', '2024-02-06 19:30:33'),
(3, 9187663663943181, 'Lon Borer Sr.', 'edward21', 'admin18', 1, 13943640, 45951332, 976100514, '2024-02-06 19:30:33', '2024-02-06 19:30:33'),
(4, 2948187499450755, 'Anita Bins', 'hcartwright', 'admin18', 1, 63942734, 69373474, 366702231, '2024-02-06 19:30:33', '2024-02-06 19:30:33'),
(5, 2254430506932676, 'Tod Feest', 'marlen57', 'admin18', 1, 65747906, 33486282, 920180982, '2024-02-06 19:30:33', '2024-02-06 19:30:33'),
(6, 5286948073515288, 'Miss Flo Hoeger II', 'zgusikowski', 'admin18', 2, 33109999, 66938360, 703308056, '2024-02-06 19:30:33', '2024-02-06 19:30:33'),
(7, 4751973358883720, 'Timmothy Pouros', 'justyn83', 'admin18', 2, 1728020, 82495800, 906948193, '2024-02-06 19:30:33', '2024-02-06 19:30:33'),
(8, 6460215455420197, 'Dr. Mathias Crona', 'zwolf', 'admin18', 1, 25717904, 10609379, 145267813, '2024-02-06 19:30:33', '2024-02-06 19:30:33'),
(9, 660640352752504, 'Zack Stamm', 'kip.quitzon', 'admin18', 1, 6178316, 97260462, 496478788, '2024-02-06 19:30:33', '2024-02-06 19:30:33'),
(10, 4750891275198985, 'Idella Greenfelder', 'kuvalis.alexandria', 'admin18', 2, 73962373, 62551421, 406729610, '2024-02-06 19:30:33', '2024-02-06 19:30:33'),
(11, 7282935951747632, 'Serenity Will', 'huels.dana', 'admin18', 2, 83799219, 53356569, 315904127, '2024-02-06 19:30:33', '2024-02-06 19:30:33'),
(12, 2401277012325345, 'Althea Gerlach DVM', 'inolan', 'admin18', 3, 52412318, 30319259, 269319110, '2024-02-06 19:30:33', '2024-02-06 19:30:33'),
(13, 6673903652164376, 'Breanna Will', 'patsy22', 'admin18', 2, 20241550, 62219615, 162015072, '2024-02-06 19:30:33', '2024-02-06 19:30:33'),
(14, 6037544561258985, 'Percy D\'Amore', 'rodriguez.rubie', 'admin18', 3, 18022904, 94882798, 840473029, '2024-02-06 19:30:33', '2024-02-06 19:30:33'),
(15, 937408174936711, 'Willa Torphy MD', 'jones.burnice', 'admin18', 2, 88877415, 41899755, 426684076, '2024-02-06 19:30:33', '2024-02-06 19:30:33'),
(16, 9667819501171578, 'Ms. Jalyn Waelchi Sr.', 'drew26', 'admin18', 3, 85298396, 69463964, 952880213, '2024-02-06 19:30:33', '2024-02-06 19:30:33'),
(17, 8785471497106602, 'Prof. Carol Marvin', 'laverna.deckow', 'admin18', 1, 81341508, 36964874, 826125570, '2024-02-06 19:30:33', '2024-02-06 19:30:33'),
(18, 7601353917236894, 'Fannie Heidenreich', 'carter.tyra', 'admin18', 1, 46239527, 7434744, 212660241, '2024-02-06 19:30:33', '2024-02-06 19:30:33'),
(19, 3117856279789177, 'Dr. Felix Denesik', 'rcrooks', 'admin18', 3, 54574607, 58106924, 452688798, '2024-02-06 19:30:33', '2024-02-06 19:30:33'),
(20, 9682839722824004, 'Cary Schuster', 'gerda89', 'admin18', 1, 73403448, 84516292, 716855929, '2024-02-06 19:30:33', '2024-02-06 19:30:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jenis`
--
ALTER TABLE `jenis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategoris`
--
ALTER TABLE `kategoris`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `tagihans`
--
ALTER TABLE `tagihans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksis`
--
ALTER TABLE `transaksis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tunggakans`
--
ALTER TABLE `tunggakans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_nik_unique` (`nik`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jenis`
--
ALTER TABLE `jenis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kategoris`
--
ALTER TABLE `kategoris`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tagihans`
--
ALTER TABLE `tagihans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaksis`
--
ALTER TABLE `transaksis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tunggakans`
--
ALTER TABLE `tunggakans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
