-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 17, 2022 at 12:33 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simpeg_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `agama`
--

CREATE TABLE `agama` (
  `id` bigint UNSIGNED NOT NULL,
  `nama` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deskripsi` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '0=visible,1=hidden',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `agama`
--

INSERT INTO `agama` (`id`, `nama`, `deskripsi`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Kristen Protestan', '', 0, '2022-09-26 16:58:52', '2022-09-26 21:55:24'),
(31, 'Islam', NULL, 0, '2022-09-30 03:58:28', '2022-09-30 03:58:28');

-- --------------------------------------------------------

--
-- Table structure for table `coba`
--

CREATE TABLE `coba` (
  `id` bigint UNSIGNED NOT NULL,
  `nama` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cpns`
--

CREATE TABLE `cpns` (
  `id` bigint UNSIGNED NOT NULL,
  `pegawai_id` bigint DEFAULT NULL,
  `no_sk` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_sk` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit_kerja` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tamat_cpns` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dokumen` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '0=visible,1=hidden',
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `no_kpe` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kpe` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_kk` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kk` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_taspen` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `taspen` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cpns`
--

INSERT INTO `cpns` (`id`, `pegawai_id`, `no_sk`, `tgl_sk`, `unit_kerja`, `tamat_cpns`, `dokumen`, `status`, `created_by`, `created_at`, `updated_at`, `no_kpe`, `kpe`, `no_kk`, `kk`, `no_taspen`, `taspen`) VALUES
(9, 66, '123', NULL, NULL, NULL, 'dokumen/t8GECQF0uaBb8yO55XZ3tM5HqGHOILzfvIEJdKNH.pdf', 0, 1, '2022-10-24 20:35:25', '2022-10-24 20:40:16', '123', 'kpe/etdeQ6TnimCgZne9JYWWPcgSs8mkyo4QE1OM87b5.pdf', '123', 'kk/3ngdd4yYXMW3Y3HSHErByQicB6uPXQ04ilkoDTk8.pdf', '123', 'taspen/hJmrC6q4pBuxQCpPYmzBgCQZXR75CutDkAUl146B.pdf'),
(10, 68, '12345', NULL, NULL, NULL, 'dokumen/C7HwYjLk6sXoNNzP59ZbXmQDu2rMz2sELkxTQqmR.pdf', 0, 2, '2022-10-25 00:37:01', '2022-10-25 00:37:01', '123', 'kpe/1Mz7vI1ZZyfep5xE58NWINNFM6E95DIL7BMzulxF.pdf', '456', 'kk/V1FSqNG155cgZckqUlMFpCNYW6puvw6ZU72WLmbD.pdf', '4564', 'taspen/wGTb5gQTA3X6zvK04kPr4bZFPdUOzgRr6Ewc6GLj.pdf'),
(11, 71, '12345', NULL, NULL, NULL, 'dokumen/ly8oyjtxH1VWCOQmXhObfcZ7SgtalNh9eSGJKlwA.pdf', 0, 9, '2022-10-25 00:51:31', '2022-10-25 00:51:31', '123', NULL, '12312', NULL, '123123', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gaji`
--

CREATE TABLE `gaji` (
  `id` bigint UNSIGNED NOT NULL,
  `pegawai_id` bigint DEFAULT NULL,
  `no_sk` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_sk` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tmt_gaji` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pejabat` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `masa_thn` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `masa_bln` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gaji_pokok` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gaji_berkala` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dokumen` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '0=visible,1=hidden',
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `pajak` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pot_bpjs` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gaji`
--

INSERT INTO `gaji` (`id`, `pegawai_id`, `no_sk`, `tgl_sk`, `tmt_gaji`, `pejabat`, `masa_thn`, `masa_bln`, `gaji_pokok`, `gaji_berkala`, `dokumen`, `status`, `created_by`, `created_at`, `updated_at`, `pajak`, `pot_bpjs`) VALUES
(2, 66, NULL, NULL, NULL, NULL, NULL, NULL, '2000000', NULL, 'dokumen/7thBArZA9qPMNqxqi0Lgzwcnn7l3X7lKDJc0WPeJ.pdf', 0, 1, '2022-10-24 20:58:23', '2022-10-24 20:58:23', '5%', '500000'),
(3, 68, NULL, NULL, NULL, NULL, NULL, NULL, '2000000', NULL, NULL, 0, 2, '2022-10-25 00:37:49', '2022-10-25 00:37:49', '5%', '500000'),
(4, 71, NULL, NULL, NULL, NULL, NULL, NULL, '2000000', NULL, 'dokumen/Xybbm3DcNySkCcXxuFYbCGNPBTho2kBCnzeaGbvC.pdf', 0, 9, '2022-10-25 00:51:46', '2022-10-25 00:51:46', '5%', '500000');

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan` (
  `id` bigint UNSIGNED NOT NULL,
  `pegawai_id` bigint DEFAULT NULL,
  `jenis_jabatan` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit_kerja` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jabatan` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sk_jabatan` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_sk` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_sk` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pak` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tmt` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_pelantikan` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_pelantikan` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sumpah` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `penyumpah` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_ba` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_ba` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dokumen` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '0=visible,1=hidden',
  `created_by` bigint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jenis_data_pegawai`
--

CREATE TABLE `jenis_data_pegawai` (
  `id` bigint UNSIGNED NOT NULL,
  `nama` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deskripsi` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '0=visible,1=hidden',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `keluarga`
--

CREATE TABLE `keluarga` (
  `id` bigint UNSIGNED NOT NULL,
  `pegawai_id` int DEFAULT NULL,
  `hubungan` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_bpjs` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nik` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jenis_kelamin` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agama` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tempat` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_lahir` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pendidikan` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pekerjaan` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dokumen` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bpjs` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '0=visible,1=hidden',
  `created_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `keluarga`
--

INSERT INTO `keluarga` (`id`, `pegawai_id`, `hubungan`, `no_bpjs`, `nama`, `nik`, `jenis_kelamin`, `agama`, `tempat`, `tgl_lahir`, `pendidikan`, `pekerjaan`, `alamat`, `dokumen`, `bpjs`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
(41, 66, 'Istri', NULL, 'Istri Firdaus', NULL, 'Perempuan', NULL, NULL, NULL, NULL, NULL, NULL, 'dokumen/8Cg7d1Mg4wTIxyYApedb4f1YBeFzf7XjzdRw0MYh.jpg', NULL, 0, 1, '2022-10-24 09:36:47', '2022-10-24 09:58:32'),
(42, 66, 'Ayah', NULL, 'Ayah Firdaus', NULL, 'Laki-laki', NULL, NULL, NULL, NULL, NULL, NULL, 'dokumen/7h506STimJGpcTYR2RR9iONIHWKrBGh2QUe9jFIE.jpg', NULL, 0, 1, '2022-10-24 09:55:03', '2022-10-24 10:05:38'),
(43, 68, 'Suami', NULL, 'Suami Gunting', NULL, 'Laki-laki', NULL, NULL, NULL, NULL, NULL, NULL, 'dokumen/61zq69nVjRJL8MRj4zNgPrU1p1bgXx2rvDxwxle8.jpg', NULL, 0, 1, '2022-10-24 10:08:48', '2022-10-24 10:08:48'),
(44, 68, 'Ibu', NULL, 'Ibu Gunting', NULL, 'Perempuan', NULL, NULL, NULL, NULL, NULL, NULL, 'dokumen/4ddx82oVgfzHdoozkppTm3N9QzVoQBGfVNdFT7Fn.jpg', NULL, 0, 2, '2022-10-24 10:18:08', '2022-10-24 10:18:55'),
(46, 68, 'Anak', NULL, 'Chrome', NULL, 'Laki-laki', NULL, NULL, NULL, NULL, NULL, NULL, 'dokumen/TCZVmXHQk8pX0OxtqWZHD0BI20H0rIFDdSNEIjve.jpg', NULL, 0, 2, '2022-10-24 10:36:16', '2022-10-24 10:36:29'),
(48, 68, 'Ayah', NULL, 'Ecoleator', NULL, 'Laki-laki', NULL, NULL, NULL, NULL, NULL, NULL, 'dokumen/CUwikZ4ncoa36OdDz9smOq4LDuynZFqSG9qNytPf.jpg', NULL, 0, 2, '2022-10-24 10:42:30', '2022-10-24 10:42:30'),
(49, 71, 'Ayah', NULL, 'asdf', NULL, 'Laki-laki', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 9, '2022-10-25 00:49:37', '2022-10-25 00:49:37');

-- --------------------------------------------------------

--
-- Table structure for table `laporan`
--

CREATE TABLE `laporan` (
  `id` bigint UNSIGNED NOT NULL,
  `pegawai_id` bigint DEFAULT NULL,
  `judul` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isi` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_laporan` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dokumen` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tindakan` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '0=visible,1=hidden',
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `laporan`
--

INSERT INTO `laporan` (`id`, `pegawai_id`, `judul`, `isi`, `tgl_laporan`, `dokumen`, `tindakan`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
(24, 66, 'BLOK', 'blok blok', NULL, NULL, NULL, 0, 2, '2022-10-24 10:24:15', '2022-10-24 10:24:15');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_09_18_114924_add_details_to_users_table', 2),
(6, '2022_09_26_044159_create_data_pegawai_table', 3),
(7, '2022_09_26_233407_create_agama_table', 4),
(8, '2022_09_27_043149_create_jenis_data_pegawai_table', 5),
(9, '2022_09_27_043425_create_personal_table', 6),
(10, '2022_09_30_040457_create_jabatan_table', 7),
(11, '2021_07_06_150136_create_product_table', 8),
(12, '2022_10_01_210949_create_strukturals_table', 9),
(13, '2022_10_01_211024_create_struktural_images_table', 9),
(14, '2022_10_01_224849_create_products_table', 10),
(15, '2022_10_01_224915_create_product_images_table', 10),
(16, '2022_10_02_124408_create_struktural_table', 11),
(17, '2022_10_02_235046_create_image_cruds_table', 12),
(18, '2020_12_26_175717_create_countries_table', 13),
(19, '2020_12_26_175723_create_cities_table', 13),
(20, '2021_01_02_172146_create_companies_table', 13),
(21, '2022_10_03_120111_create_members_table', 14),
(22, '2022_10_04_040733_create_keluargas_table', 15),
(23, '2022_10_04_050415_create_keluarga_table', 16),
(24, '2022_10_12_201135_create_cruds_table', 17),
(25, '2022_10_12_203205_create_cobas_table', 18),
(26, '2022_10_13_010511_create_subs_table', 19),
(27, '2022_10_15_105605_create_pegawais_table', 20),
(28, '2022_10_15_142416_create_pendidikans_table', 21),
(29, '2022_10_16_050251_create_seminars_table', 22),
(30, '2022_10_16_060307_create_pangkats_table', 23),
(31, '2022_10_16_074323_create_cpns_table', 24),
(32, '2022_10_16_092638_create_ruangans_table', 25),
(33, '2022_10_16_094406_create_gajis_table', 26),
(34, '2022_10_19_104005_create_laporans_table', 27),
(38, '2022_10_24_132709_create_ruangs_table', 28);

-- --------------------------------------------------------

--
-- Table structure for table `pangkat`
--

CREATE TABLE `pangkat` (
  `id` bigint UNSIGNED NOT NULL,
  `pegawai_id` bigint DEFAULT NULL,
  `golongan` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `angka_kredit` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tmt_pangkat` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sk_jabatan` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_sk` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_sk` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_pangkat` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dokumen` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '0=visible,1=hidden',
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `bln_masuk` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jabatan` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pangkat` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `masa_kerja` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sip` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `berlaku_sip` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keluar_sip` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `str` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keluar_str` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fungsional` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tmt_fungsional` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pangkat`
--

INSERT INTO `pangkat` (`id`, `pegawai_id`, `golongan`, `angka_kredit`, `tmt_pangkat`, `sk_jabatan`, `no_sk`, `tgl_sk`, `status_pangkat`, `dokumen`, `status`, `created_by`, `created_at`, `updated_at`, `bln_masuk`, `jabatan`, `pangkat`, `masa_kerja`, `sip`, `berlaku_sip`, `keluar_sip`, `str`, `keluar_str`, `fungsional`, `tmt_fungsional`) VALUES
(3, 66, 'Penata Muda - III/a', '12312', '123', '12312', NULL, NULL, 'PKWT', NULL, 0, 1, '2022-10-24 18:24:50', '2022-10-24 18:24:50', 'Mei', 'Kabid Yanmed', NULL, '20', NULL, '1231', '1231', '1231', '1231', 'Dokter Spesialis Orthopedi dan Traumatologi', '12312'),
(4, 68, 'Penata Muda - III/a', '9.9', NULL, NULL, NULL, NULL, 'Kontrak Daerah', NULL, 0, 1, '2022-10-25 00:02:05', '2022-10-25 00:02:58', NULL, 'Kasubag Tata Usaha & Sumber Daya Manusia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Dokter Spesialis Syaraf', NULL),
(5, 68, 'Pembina Utama Madya - IV/d', '456', '123', '456', NULL, NULL, 'THL/BLUD', 'dokumen/HlCWH4vgalrjKi5IovrrGGEnDpy29l5A5Nbsj1sT.pdf', 0, 2, '2022-10-25 00:36:10', '2022-10-25 00:36:10', 'Mei', 'Kasie Pelayanan Penunjang Non-Medik', NULL, '20', NULL, '4564', '4564', '456', '4564', 'Perawat Ahli Pertama', '456'),
(6, 71, 'Pembina Utama Muda - IV/c', '123', '123', '123', NULL, NULL, 'CPNS', 'dokumen/xPsgJmXVbw835rWBruWzygH00dWHZ7USqjmTQkE6.pdf', 0, 9, '2022-10-25 00:51:11', '2022-10-25 00:51:11', 'Mei', 'Kabid Yanmed', NULL, '20', NULL, '123', '123', '13', '123', 'Dokter Spesialis Anestesi', '123');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pegawais`
--

CREATE TABLE `pegawais` (
  `id` bigint UNSIGNED NOT NULL,
  `ruang_id` bigint DEFAULT NULL,
  `nip` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nik` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tempat` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_lahir` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_pasangan` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_ruang` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_nikah` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gelar_depan` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gelar_belakang` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kelamin` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agama` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provinsi` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kota` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kecamatan` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rt` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rw` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kode_pos` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_telp` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_hp` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_pegawai` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jabatan_pegawai` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_keahlian` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tingkat_keahlian` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jabatan_struktural` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ktp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `npwp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '0=visible,1=hidden',
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rek_bpd` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_bpjs_sehat` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_bpjs_kerja` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bpjs` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kerja` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `darah` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_npwp` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pegawais`
--

INSERT INTO `pegawais` (`id`, `ruang_id`, `nip`, `nik`, `tempat`, `tgl_lahir`, `nama`, `nama_pasangan`, `nama_ruang`, `status_nikah`, `gelar_depan`, `gelar_belakang`, `kelamin`, `agama`, `alamat`, `provinsi`, `kota`, `kecamatan`, `rt`, `rw`, `kode_pos`, `no_telp`, `no_hp`, `status_pegawai`, `jabatan_pegawai`, `status_keahlian`, `tingkat_keahlian`, `jabatan_struktural`, `foto`, `ktp`, `npwp`, `status`, `created_by`, `created_at`, `updated_at`, `rek_bpd`, `no_bpjs_sehat`, `no_bpjs_kerja`, `bpjs`, `kerja`, `email`, `darah`, `no_npwp`) VALUES
(66, NULL, NULL, NULL, NULL, NULL, 'Firdaus Fannani', NULL, 'BROMO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'foto/c6xJXBNUCescAHuIDccWEgwfQAVkuTtSxNe7NEfI.jpg', 'ktp/idLmwUkREUWBRSi4L1SV6T5yQr6JrifVQUc1OAWq.jpg', 'npwp/SrQF478WGO5rxcXDB1fyYtQegCzeWLhRXrafssjF.jpg', 0, 1, '2022-10-24 06:48:24', '2022-10-24 16:22:41', NULL, NULL, NULL, 'bpjs/U7Mtyo6BvsC8Ahj9zOJYkKbvEbDOlerDlF8iRbBJ.jpg', 'kerja/Cu35pi6x1KGL1uJyENqeCFvAFOI17XV6TzYaAgQ0.jpg', NULL, NULL, NULL),
(68, NULL, NULL, NULL, NULL, NULL, 'Gunting Epis', NULL, 'KLINIK BEDAH MULUT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'foto/EkEN6dPIeqvNe00Evz5nBFvEU2nou727v5cvnM2d.jpg', NULL, NULL, 0, 2, '2022-10-24 07:12:18', '2022-10-24 10:35:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, NULL, '123', '123', 'Malang', '2022-10-25', 'Joko Tingkir', 'Cleopatra', 'CSSD', 'Nikah', 'Dr', 'S.Cream', 'Laki-laki', 'Islam', NULL, 'Jawa Timur', 'Malang', 'Kedungkandang', '8', '3', '65134', '123', '123', NULL, NULL, NULL, NULL, NULL, 'foto/jVKahyOsqkxci5kPj31gH1MRo3tjg0jovMqkGslQ.jpg', NULL, NULL, 0, 9, '2022-10-25 00:49:10', '2022-10-25 01:11:07', '1231', '123', '5645878', NULL, NULL, 'joko@gmail.com', 'A', '12345656598'),
(73, NULL, NULL, NULL, NULL, NULL, 'dimas candra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2022-10-25 22:01:48', '2022-10-25 22:03:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pendidikan`
--

CREATE TABLE `pendidikan` (
  `id` bigint UNSIGNED NOT NULL,
  `pegawai_id` bigint DEFAULT NULL,
  `no_ijazah` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_transkrip` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tingkat` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_sekolah` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tempat` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_kepala` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_sttb` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_sttb` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `th_lulus` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `biaya` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ijazah` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transkrip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '0=visible,1=hidden',
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pendidikan`
--

INSERT INTO `pendidikan` (`id`, `pegawai_id`, `no_ijazah`, `no_transkrip`, `tingkat`, `nama_sekolah`, `tempat`, `nama_kepala`, `no_sttb`, `tgl_sttb`, `th_lulus`, `biaya`, `ijazah`, `transkrip`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
(16, 66, '45678', NULL, 'SMP', 'SMPN 3 Malang', NULL, NULL, NULL, NULL, '2022', NULL, 'ijazah/2yVDpX6mBatldWcWQJZCmYj6J0VzHPLCr2wRpiPJ.pdf', 'transkrip/mgR8O6CaqeJK7lSM05B9ZkFG0NqV34E6vHwo4Ign.pdf', 0, 1, '2022-10-24 16:21:27', '2022-10-24 16:21:27'),
(18, 68, '123', NULL, 'S1 Teknik Mesin', 'S1', NULL, NULL, NULL, NULL, '2022', NULL, NULL, NULL, 0, 2, '2022-10-25 00:34:58', '2022-10-25 00:34:58'),
(19, 71, '123123', NULL, 'S1 Pendidikan', 'S1', NULL, NULL, NULL, NULL, '2022', NULL, 'ijazah/7g1fmAy5DnraFjRqq0g703qIDyMD15B78a0enBBK.pdf', NULL, 0, 9, '2022-10-25 00:50:05', '2022-10-25 00:50:05');

-- --------------------------------------------------------

--
-- Table structure for table `personal`
--

CREATE TABLE `personal` (
  `id` bigint UNSIGNED NOT NULL,
  `NIP` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_depan` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_belakang` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gelar_depan` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gelar_belakang` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jenis_kelamin` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tempat` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_lahir` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_nikah` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provinsi` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kota` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kecamatan` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rt` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rw` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kode_pos` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_telp` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_hp` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_pegawai` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_jabatan` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_keahlian` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tingkat_keahlian` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jabatan_struktural` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ktp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '0=visible,1=hidden',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `agama_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ruang`
--

CREATE TABLE `ruang` (
  `id` bigint UNSIGNED NOT NULL,
  `nama` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '0=visible,1=hidden',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ruang`
--

INSERT INTO `ruang` (`id`, `nama`, `deskripsi`, `status`, `created_at`, `updated_at`) VALUES
(1, 'PDE', NULL, 0, '2022-10-24 06:35:46', '2022-10-24 06:35:46'),
(2, 'IGD', NULL, 0, '2022-10-24 06:35:54', '2022-10-24 06:35:54');

-- --------------------------------------------------------

--
-- Table structure for table `ruangan`
--

CREATE TABLE `ruangan` (
  `id` bigint UNSIGNED NOT NULL,
  `pegawai_id` bigint DEFAULT NULL,
  `nama_ruangan` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_ruangan` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dokumen` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '0=visible,1=hidden',
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seminar`
--

CREATE TABLE `seminar` (
  `id` bigint UNSIGNED NOT NULL,
  `pegawai_id` bigint DEFAULT NULL,
  `nama` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tempat` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kedudukan` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_seminar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `penyelenggara` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dokumen` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sertifikat` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '0=visible,1=hidden',
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seminar`
--

INSERT INTO `seminar` (`id`, `pegawai_id`, `nama`, `tempat`, `kedudukan`, `tgl_seminar`, `penyelenggara`, `dokumen`, `sertifikat`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
(4, 66, 'Pelatihan apa ya', '12345678', NULL, NULL, NULL, NULL, 'sertifikat/Ds2KS82tZca7jZ56Jb9V3swwt97nfR32DoFfXpG2.pdf', 0, 1, '2022-10-24 16:34:05', '2022-10-24 16:34:05'),
(7, 68, 'Pelatihan kebal', '123456', NULL, NULL, NULL, NULL, 'sertifikat/ePfu4o7fthdPSOjupaJ2yN3EfDLXITaynsC2bTCO.pdf', 0, 2, '2022-10-25 00:35:22', '2022-10-25 00:35:22'),
(8, 71, 'Pelatihan ilmu tenaga dalam', '123123', NULL, NULL, NULL, NULL, 'sertifikat/mpqBgLebquFtorg8XH8Vwndf24rRKdt7zoIK3v6I.pdf', 0, 9, '2022-10-25 00:50:41', '2022-10-25 00:50:41');

-- --------------------------------------------------------

--
-- Table structure for table `struktural`
--

CREATE TABLE `struktural` (
  `id` bigint UNSIGNED NOT NULL,
  `nama` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deskripsi` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub`
--

CREATE TABLE `sub` (
  `id` bigint UNSIGNED NOT NULL,
  `coba_id` bigint DEFAULT NULL,
  `nama` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ktp` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub`
--

INSERT INTO `sub` (`id`, `coba_id`, `nama`, `foto`, `ktp`, `created_at`, `updated_at`) VALUES
(5, 18, 'aaa', 'foto/0JArF9KSGyj756WZY1VSy8mXLtCpQEE0Mk0ueGm6.jpg', 'ktp/DB9cuENqnEDf3tQfsQBmH2pZ7wkrizZRqNQQZOTN.jpg', '2022-10-12 18:50:46', '2022-10-12 21:10:08'),
(6, 13, 'bbb', 'foto/PgUmFzcX99Stf1JUrHc992DG6wUQmE02Nd9y5PPL.jpg', 'ktp/nVGbAXZg8yeQ03DSIgC0pklb6MdQ4NqDLLVo4WVR.jpg', '2022-10-12 18:51:28', '2022-10-12 19:52:03'),
(8, 13, 'ccc', 'foto/oDnQfCeUTj9JK8SmpHEOEEvbqtDlfUE5NbudWZ2J.jpg', 'ktp/LchI5Y58eKriDv2fWQglPg1Duool7gBU1ow2ZTEv.jpg', '2022-10-12 19:35:09', '2022-10-12 19:52:08'),
(10, 18, 'dddd', 'foto/mY01AmJ4N9ndPzn1lu3gElazlHbcNVgU6ebmmAlL.jpg', 'ktp/B3WwsQqo0fHSJcYWjBasZYPXPP4YtefpKA3Op88M.jpg', '2022-10-12 20:04:49', '2022-10-12 20:04:49'),
(11, 18, 'a', 'foto/huRTPIIiTwx82mcnnyysVXMZJPHn5454XnYZjWuu.jpg', 'ktp/aDMDg9K29T03vTyAbORbVuciSZOwIDAF5pVXf40S.jpg', '2022-10-12 20:06:15', '2022-10-12 20:06:15'),
(12, 19, 'eee', 'foto/rXYqDaKYTxWJcBhJ9AfmpgpGSnZaOE5eBxrH3xgZ.jpg', 'ktp/dSbeyFoJ8Guhw38HMkMiXcNCbZ6ZUd6ofJeS8i8t.jpg', '2022-10-12 20:06:34', '2022-10-12 20:06:34');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_as` tinyint NOT NULL DEFAULT '0' COMMENT '0=user, 1=admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role_as`) VALUES
(1, 'admin', 'admin@example.com', NULL, '$2y$10$uNVCNtn1QTMdY2IAxN7NZujX3MNbGRwA4Vfz5n83xn6EcV29Dhraa', NULL, '2022-09-18 01:25:04', '2022-09-18 01:25:04', 1),
(2, 'user', 'user@example.com', NULL, '$2y$10$CjUfQ3sgjwQNv1lHnm5Dwu0k//vW/FtgzYqvz03Nofj8tF5SctmyO', NULL, '2022-09-18 05:03:34', '2022-09-18 05:03:34', 2),
(4, 'admin1', 'admin1@example.com', NULL, '$2y$10$Pg.WsdloLnWdcBmAZeu3z.ZW6UjKMXS.mn9pIbt.6puM6zLjs/uWC', NULL, '2022-09-30 19:12:05', '2022-09-30 19:12:05', 1),
(6, 'user1', 'user1@example.com', NULL, '$2y$10$7xQqCmIsUUHRra7kyhp9QelweVL927G917doQB/Td5b8j5Y7AHTB2', NULL, '2022-10-15 03:37:00', '2022-10-15 03:37:00', 2),
(7, 'Firdaus Fannani', 'user2@example.com', NULL, '$2y$10$qgl70SsMnO.9MAeJGFbC3u8PxGWSxZMzbEEPmJaZLZ.5oamnYWg/e', NULL, '2022-10-24 00:31:02', '2022-10-24 00:31:02', 2),
(8, 'Priyo', 'user3@example.com', NULL, '$2y$10$lTSgizsy0Te5MsaBm7669OeYekDCLtbpokh2rPBO3qbO504JDNpQC', NULL, '2022-10-24 00:33:43', '2022-10-24 00:34:09', 2),
(9, 'Joko Tingkir', 'joko@example.com', NULL, '$2y$10$dUE.68Ku1yBkFghKc5keCutROOotgn1A3llGloBnN1oyV6AorQJkS', NULL, '2022-10-25 00:46:58', '2022-10-25 00:47:19', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agama`
--
ALTER TABLE `agama`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coba`
--
ALTER TABLE `coba`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cpns`
--
ALTER TABLE `cpns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `gaji`
--
ALTER TABLE `gaji`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jenis_data_pegawai`
--
ALTER TABLE `jenis_data_pegawai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keluarga`
--
ALTER TABLE `keluarga`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laporan`
--
ALTER TABLE `laporan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pangkat`
--
ALTER TABLE `pangkat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pegawais`
--
ALTER TABLE `pegawais`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pendidikan`
--
ALTER TABLE `pendidikan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal`
--
ALTER TABLE `personal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `ruang`
--
ALTER TABLE `ruang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ruangan`
--
ALTER TABLE `ruangan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seminar`
--
ALTER TABLE `seminar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `struktural`
--
ALTER TABLE `struktural`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub`
--
ALTER TABLE `sub`
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
-- AUTO_INCREMENT for table `agama`
--
ALTER TABLE `agama`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `coba`
--
ALTER TABLE `coba`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `cpns`
--
ALTER TABLE `cpns`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gaji`
--
ALTER TABLE `gaji`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `jenis_data_pegawai`
--
ALTER TABLE `jenis_data_pegawai`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `keluarga`
--
ALTER TABLE `keluarga`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `laporan`
--
ALTER TABLE `laporan`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `pangkat`
--
ALTER TABLE `pangkat`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pegawais`
--
ALTER TABLE `pegawais`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `pendidikan`
--
ALTER TABLE `pendidikan`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `personal`
--
ALTER TABLE `personal`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ruang`
--
ALTER TABLE `ruang`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ruangan`
--
ALTER TABLE `ruangan`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `seminar`
--
ALTER TABLE `seminar`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `struktural`
--
ALTER TABLE `struktural`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `sub`
--
ALTER TABLE `sub`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
