-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 27, 2025 at 11:03 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_moviecatalog`
--

-- --------------------------------------------------------

--
-- Table structure for table `alus_g`
--

CREATE TABLE `alus_g` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `alus_g`
--

INSERT INTO `alus_g` (`id`, `name`, `description`) VALUES
(1, 'admin', 'testaa');

-- --------------------------------------------------------

--
-- Table structure for table `alus_gd`
--

CREATE TABLE `alus_gd` (
  `agd_id` int(11) NOT NULL,
  `ag_id` int(11) DEFAULT NULL,
  `enabled` int(11) DEFAULT NULL,
  `table_name` varchar(50) DEFAULT NULL,
  `table_is_filter` int(11) DEFAULT NULL,
  `table_where` varchar(50) DEFAULT NULL,
  `table_filter` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `alus_gd`
--

INSERT INTO `alus_gd` (`agd_id`, `ag_id`, `enabled`, `table_name`, `table_is_filter`, `table_where`, `table_filter`) VALUES
(1, 1, 1, 'Test Maul', NULL, NULL, '+1++2++3++5++7+'),
(2, 2, 1, 'tesst', NULL, NULL, '+24+'),
(4, 14, 1, 'teest', NULL, NULL, '+1+'),
(5, 15, 1, 'teest', NULL, NULL, NULL),
(6, 28, 1, 'teest', NULL, NULL, NULL),
(7, 17, 1, 'teest', NULL, NULL, NULL),
(8, 16, 1, 'teest', NULL, NULL, NULL),
(9, 27, 1, 'teest', NULL, NULL, NULL),
(10, 30, 1, 'teest', NULL, NULL, NULL),
(11, 29, 1, 'teest', NULL, NULL, NULL),
(12, 21, 1, 'Ma', NULL, NULL, '+2++10+'),
(13, 20, 1, 'teest', NULL, NULL, NULL),
(14, 22, 1, 'teest', NULL, NULL, NULL),
(15, 31, 1, 'teest', NULL, NULL, NULL),
(17, 24, 1, 'teest', NULL, NULL, '+49++50++51+'),
(18, 25, 1, 'teest', NULL, NULL, NULL),
(19, 26, 1, 'teest', NULL, NULL, '+5+'),
(20, 18, 1, 'teest', NULL, NULL, '+3+'),
(21, 23, 1, 'teest', NULL, NULL, '+234+'),
(22, 33, 1, 'teest', NULL, NULL, NULL),
(23, 34, 1, 'teest', NULL, NULL, NULL),
(25, 88, 1, 'Tables', NULL, NULL, '+1++5++49++50+'),
(26, 89, 1, 'Tables', NULL, NULL, '+5+'),
(27, 86, 1, 'maulanaaaaa', NULL, NULL, '+1+');

-- --------------------------------------------------------

--
-- Table structure for table `alus_la`
--

CREATE TABLE `alus_la` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `alus_mg`
--

CREATE TABLE `alus_mg` (
  `menu_id` int(11) NOT NULL,
  `menu_parent` int(11) NOT NULL,
  `menu_nama` varchar(255) NOT NULL,
  `menu_uri` varchar(255) NOT NULL,
  `menu_target` varchar(255) DEFAULT NULL,
  `menu_icon` varchar(25) DEFAULT NULL,
  `order_num` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `alus_mg`
--

INSERT INTO `alus_mg` (`menu_id`, `menu_parent`, `menu_nama`, `menu_uri`, `menu_target`, `menu_icon`, `order_num`) VALUES
(11, 30, 'Menus', 'menus', '', 'fa fa-bars fa-fw', 1),
(12, 30, 'Group', 'group', '', 'fa fa-book fa-fw', 2),
(13, 30, 'User', 'users', '', 'fa fa-book fa-fw', 3),
(30, 0, 'Master', '#', '', 'fa fa-bars fa-fw', 1),
(80, 0, 'Kategori Film', 'data_kategori_film', '', 'fa fa-bookmark fa-fw', 1),
(81, 0, 'Film', 'data_film', '', 'fa fa-database fa-fw', 2),
(82, 0, 'Komentar', 'data_comments', '', 'fa fa-comments fa-fw', 3),
(83, 0, 'Review', 'data_reviews', '', 'fa fa-star-half-empty fa-', 4);

-- --------------------------------------------------------

--
-- Table structure for table `alus_mga`
--

CREATE TABLE `alus_mga` (
  `id` int(11) NOT NULL,
  `id_group` mediumint(8) UNSIGNED NOT NULL,
  `id_menu` int(11) NOT NULL,
  `can_view` int(11) DEFAULT NULL,
  `can_edit` int(11) NOT NULL DEFAULT 0,
  `can_add` int(11) NOT NULL DEFAULT 0,
  `can_delete` int(11) NOT NULL DEFAULT 0,
  `psv` datetime DEFAULT NULL,
  `pev` datetime DEFAULT NULL,
  `psed` datetime DEFAULT NULL,
  `peed` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `alus_mga`
--

INSERT INTO `alus_mga` (`id`, `id_group`, `id_menu`, `can_view`, `can_edit`, `can_add`, `can_delete`, `psv`, `pev`, `psed`, `peed`) VALUES
(3357, 10, 11, 0, 0, 0, 0, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '1970-01-01 00:00:00', '1970-01-01 00:00:00'),
(3358, 10, 12, 0, 0, 0, 0, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '1970-01-01 00:00:00', '1970-01-01 00:00:00'),
(3359, 10, 13, 0, 0, 0, 0, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '1970-01-01 00:00:00', '1970-01-01 00:00:00'),
(3366, 10, 30, 0, 0, 0, 0, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '1970-01-01 00:00:00', '1970-01-01 00:00:00'),
(3685, 9, 11, 0, 0, 0, 0, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '1970-01-01 00:00:00', '1970-01-01 00:00:00'),
(3686, 9, 30, 1, 0, 0, 0, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '1970-01-01 00:00:00', '1970-01-01 00:00:00'),
(3687, 9, 12, 1, 0, 0, 0, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '1970-01-01 00:00:00', '1970-01-01 00:00:00'),
(3688, 9, 13, 1, 0, 0, 0, '1970-01-01 12:00:00', '1970-01-01 12:00:00', '1970-01-01 00:00:00', '1970-01-01 00:00:00'),
(3884, 1, 30, 1, 0, 0, 0, '2016-09-06 10:55:00', '2016-09-06 10:56:00', '2016-08-08 12:06:00', '2016-08-08 12:06:00'),
(3885, 1, 11, 1, 1, 1, 1, '2016-09-06 10:55:00', '2016-09-06 10:55:00', '2016-08-08 12:06:00', '2016-08-09 13:50:00'),
(3886, 1, 12, 1, 1, 1, 1, '2016-09-06 10:55:00', '2016-09-06 10:55:00', '1970-01-01 01:00:00', '1970-01-01 01:00:00'),
(3887, 1, 13, 1, 1, 1, 1, '1970-01-01 01:00:00', '1970-01-01 01:00:00', '1970-01-01 01:00:00', '1970-01-01 01:00:00'),
(3888, 1, 80, 1, 1, 1, 1, '1970-01-01 01:00:00', '1970-01-01 01:00:00', '1970-01-01 01:00:00', '1970-01-01 01:00:00'),
(3889, 1, 81, 1, 1, 1, 1, '1970-01-01 01:00:00', '1970-01-01 01:00:00', '1970-01-01 01:00:00', '1970-01-01 01:00:00'),
(3890, 1, 82, 1, 1, 1, 1, '1970-01-01 01:00:00', '1970-01-01 01:00:00', '1970-01-01 01:00:00', '1970-01-01 01:00:00'),
(3891, 1, 83, 1, 1, 1, 1, '1970-01-01 01:00:00', '1970-01-01 01:00:00', '1970-01-01 01:00:00', '1970-01-01 01:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `alus_u`
--

CREATE TABLE `alus_u` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(100) NOT NULL,
  `job_title` varchar(50) DEFAULT NULL,
  `abc` varchar(100) NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `ghi` varchar(255) NOT NULL,
  `def` varchar(255) DEFAULT NULL,
  `mno` varchar(40) DEFAULT NULL,
  `jkl` varchar(40) DEFAULT NULL,
  `stu` int(10) UNSIGNED DEFAULT NULL,
  `pqr` varchar(40) DEFAULT NULL,
  `created_on` int(10) UNSIGNED NOT NULL,
  `last_login` int(10) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `ht` int(11) DEFAULT 0,
  `picture` varchar(255) DEFAULT NULL,
  `mdo_id` int(11) DEFAULT NULL,
  `mos_id` int(11) DEFAULT NULL,
  `grup_type` int(11) DEFAULT NULL,
  `bpd_id` int(11) DEFAULT NULL,
  `bpd_id_2` int(11) DEFAULT NULL,
  `staff_pmk_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `alus_u`
--

INSERT INTO `alus_u` (`id`, `username`, `job_title`, `abc`, `ip_address`, `ghi`, `def`, `mno`, `jkl`, `stu`, `pqr`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`, `ht`, `picture`, `mdo_id`, `mos_id`, `grup_type`, `bpd_id`, `bpd_id_2`, `staff_pmk_id`) VALUES
(64, 'admins', 'admins', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+5Kixew57njDPeg==', '::1', '$2y$08$5vkhkFZ3iwpu/GcpsuKvO.1RxG.QilBBgnJziPYsLQToJCDaAfE.i', 'xEfWFClsAdO4BnNm', '', NULL, 1766803387, '', 1469523580, 1766803398, 1, 'User', '', '', '11', 0, '1496118042.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(65, 'BAGIAN PERLENGKAPAN', 'BAGIAN PERLENGKAPAN', 'MTIzNDU2Nzg5MDEyMzQ1NsGuoJM/yqy8eAN68DTNdlID3W0pjA==', '::1', '$2y$08$JoKZ4fv6BkH5WTWLwW9IfulZAbwPRhawSu5/basXlOukNzemXJuqS', 'Ih49EoG2nF0Zt38O', NULL, NULL, NULL, NULL, 1542868077, 1550670091, 1, 'BAGIAN PERLENGKAPAN', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 1, NULL, NULL, NULL, NULL),
(66, 'DINAS PENDIDIKAN', 'DINAS PENDIDIKAN', 'MTIzNDU2Nzg5MDEyMzQ1Nv2quZ4/3a+0fSdy3TLJexUMnGM=', '::1', '$2y$08$VUKn/N/Oz3h/8IB7somj3ODzqJ3cGYVnLbUw/QESB9MVhCV.zeInG', 'Qoc9aAIiYkGjg9IZ', NULL, NULL, NULL, NULL, 1542868087, 1550991198, 1, 'DINAS PENDIDIKAN', '', NULL, '0', 0, 'avatar_default.png', NULL, 2, NULL, NULL, NULL, NULL),
(67, 'KECAMATAN KAYAN HULU', 'KECAMATAN KAYAN HULU', 'MTIzNDU2Nzg5MDEyMzQ1Nva5/Iwiy6i5IlBV1z7BfldBkGEr', '::1', '$2y$08$amSFXmE4w705SSYY562IM.wr5fvtERPp7sXIFyi04MgZVY2rEhMXS', 'rrptJbn3YVDGJGOF', NULL, NULL, NULL, NULL, 1542868107, 1549440969, 1, 'KECAMATAN KAYAN HULU', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 3, NULL, NULL, NULL, NULL),
(68, 'KECAMATAN MALINAU SELATAN HULU', 'KECAMATAN MALINAU SELATAN HULU', 'MTIzNDU2Nzg5MDEyMzQ1Nvqlppk5z7y8ckkjghPHeloGnyAljoA=', '::1', '$2y$08$54yXxiB4w4TpZrfS8E4k2.8h24NaIjW9txSJQJ5lTnpmT9b.Rbqpi', 'Ftr/Tmqyey/I30FI', NULL, NULL, NULL, NULL, 1542868115, 1551275597, 1, 'KECAMATAN MALINAU SELATAN HULU', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 4, NULL, NULL, NULL, NULL),
(69, 'KECAMATAN MALINAU KOTA', 'KECAMATAN MALINAU KOTA', 'MTIzNDU2Nzg5MDEyMzQ1Nvqlppk5z7y8cidy3TLJexUMnGM=', '::1', '$2y$08$El7EPObwt.3SXLXC/Ra/Pe038PDY5nrJWQJ0Ol8H9dwGC.rU45Ed6', '60TGEWENwJbU2E.t', NULL, NULL, NULL, NULL, 1542868123, 1549271960, 1, 'KECAMATAN MALINAU KOTA', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 5, NULL, NULL, NULL, NULL),
(70, 'BADAN PERENCANAAN PEMBANGUNAN DAERAH DAN LITBANG', 'BADAN PERENCANAAN PEMBANGUNAN DAERAH DAN LITBANG', 'MTIzNDU2Nzg5MDEyMzQ1Nvqlppk5z7y8ckkn8DTNdlID3W0pjA==', '::1', '$2y$08$rxv1uLfYNkY6rsWG1FUF0eO5ai0o0b/yahX1H1cgxKRmRyCVGkKJ6', 'nZnOhCQn1ho5dbWZ', NULL, NULL, NULL, NULL, 1542868130, NULL, 1, 'BADAN PERENCANAAN PEMBANGUNAN DAERAH DAN LITBANG', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 6, NULL, NULL, NULL, NULL),
(71, 'DINAS PERHUBUNGAN', 'DINAS PERHUBUNGAN', 'MTIzNDU2Nzg5MDEyMzQ1NuuqvJsjzb2wcRJn1T3gcFYOmmJogoKq', '::1', '$2y$08$/KMY9ZSiaLqSNvbQ60A.Gu.pNmuM.rQMm6y5Fa6pgGz2xTNi/6bUu', 'UHVMoXEIQ1Jdlkc/', NULL, NULL, NULL, NULL, 1542868139, NULL, 1, 'DINAS PERHUBUNGAN', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 7, NULL, NULL, NULL, NULL),
(72, 'BAGIAN PEMBANGUNAN', 'BAGIAN PEMBANGUNAN', 'MTIzNDU2Nzg5MDEyMzQ1NsGuoJM/yqy8eAN68DTNdlID3W0pjA==', '::1', '$2y$08$Drr9MvhHhfK.mbZoJpmHgOGT2V358Y/XYbadXbqBiTBXKHGOgb68i', 'lMsDc82.X6.iY6ni', NULL, NULL, NULL, NULL, 1542868147, NULL, 1, 'BAGIAN PEMBANGUNAN', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 8, NULL, NULL, NULL, NULL),
(73, 'SEKRETARIAT DPRD', 'SEKRETARIAT DPRD', 'MTIzNDU2Nzg5MDEyMzQ1NvGut4oj0buwfVYhg33KdXsOl3wnjIyuxGBuHcI=', '::1', '$2y$08$1HRiU7/MXyYi4HGQtRlsReLbmyYbmRJVQ6WBPNp1ZCLRGmWVBp.c6', 'V.h09FO10yyZpodC', NULL, NULL, NULL, NULL, 1542868153, NULL, 1, 'SEKRETARIAT DPRD', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 9, NULL, NULL, NULL, NULL),
(74, 'BAGIAN ORGANISASI', 'BAGIAN ORGANISASI', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPnkJid40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$ZFbbTqozjtTDp0L4xJAPPen6cBfKf9F.0PSTjVLhM8a/.tNnpgX4q', 'SSH8uLPH3S1ocJ9x', NULL, NULL, NULL, NULL, 1542868160, 1549447873, 1, 'BAGIAN ORGANISASI', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 10, NULL, NULL, NULL, NULL),
(75, 'BAGIAN PENGADAAN BARANG DAN JASA', 'BAGIAN PENGADAAN BARANG DAN JASA', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPnkJyd40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$ROEnxItEW6Q/Qe4YAn6QuudF6PLNnTsAg5gjkgmQVNvaIs8cusRQG', 'E4/B7vlEUGSBt/9n', NULL, NULL, NULL, NULL, 1542868167, 1549440721, 1, 'BAGIAN PENGADAAN BARANG DAN JASA', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 11, NULL, NULL, NULL, NULL),
(76, 'BAGIAN PENGELOLAAN PERBATASAN NEGARA', 'BAGIAN PENGELOLAAN PERBATASAN NEGARA', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPnkJCd40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$gVBcpIGUsBXQXAop6ZbhnO0wkhm4grqUsikYbNzTubdRpsZsVml9i', 'ywaxdj2lO0vyjt5f', NULL, NULL, NULL, NULL, 1542868175, NULL, 1, 'BAGIAN PENGELOLAAN PERBATASAN NEGARA', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 12, NULL, NULL, NULL, NULL),
(79, 'DINAS PERIKANAN', 'DINAS PERIKANAN', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPnkIyd40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$0IY0nl2KkJMVOxNBo.rpTeTDMWI.7oN6XOp2gKqyZ.PG4EzBUMun2', 'ump1Cg244ldPc4np', NULL, NULL, NULL, NULL, 1542868195, NULL, 1, 'DINAS PERIKANAN', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 15, NULL, NULL, NULL, NULL),
(80, 'DINAS PERTANIAN', 'DINAS PERTANIAN', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPnkICd40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$DQHmsH7zE6xJtd29MauosunPBgqGN2fml8Kn0JMBxrUhSC9gODKSq', 'm/vUH.JoDbyuWmsX', NULL, NULL, NULL, NULL, 1542868201, NULL, 1, 'DINAS PERTANIAN', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 16, NULL, NULL, NULL, NULL),
(81, 'DINAS PERINDUSTRIAN DAN PERDAGANGAN', 'DINAS PERINDUSTRIAN DAN PERDAGANGAN', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPnkISd40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$AOnWtOtLE9C2kgvmIjZJJeAQPzsy6wUKYzZK14Vnvt7leqcuABjX2', 'KfwQDwpJFcsNEnHH', NULL, NULL, NULL, NULL, 1542868208, NULL, 1, 'DINAS PERINDUSTRIAN DAN PERDAGANGAN', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 17, NULL, NULL, NULL, NULL),
(82, 'DINAS KEBUDAYAAN DAN PARIWISATA', 'DINAS KEBUDAYAAN DAN PARIWISATA', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPnkLid40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$ivq3p0FOZP4/vi6kxtYc4ebkKmx3ZPzZa2qzcAXxCF51FPA6wlIz6', 'Hk6r0krOfpMlJQww', NULL, NULL, NULL, NULL, 1542868214, NULL, 1, 'DINAS KEBUDAYAAN DAN PARIWISATA', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 18, NULL, NULL, NULL, NULL),
(83, 'DINAS KEPEMUDAAN DAN OLAHRAGA', 'DINAS KEPEMUDAAN DAN OLAHRAGA', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPnkLyd40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$R/fA./V3uYPh2xLWLAC0Zedo3Fr/SRSZZNxfW1shSdYvBWOjX5xrK', 'DMIbULsgw0Cd71wb', NULL, NULL, NULL, NULL, 1542868221, NULL, 1, 'DINAS KEPEMUDAAN DAN OLAHRAGA', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 19, NULL, NULL, NULL, NULL),
(84, 'BADAN KEPEGAWAIAN, PENDIDIKAN DAN PELATIHAN', 'BADAN KEPEGAWAIAN, PENDIDIKAN DAN PELATIHAN', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPnnJid40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$1sTxGiMpQ/0C1KkU3LHbl.frJhweq1zNzA4bRaEFNRRAWp0AVZ8FK', '00k2AC7bWZWFhzE6', NULL, NULL, NULL, NULL, 1542868234, NULL, 1, 'BADAN KEPEGAWAIAN, PENDIDIKAN DAN PELATIHAN', '', NULL, '0', 0, 'avatar_default.png', NULL, 20, NULL, NULL, NULL, 11),
(85, 'BAGIAN TATA PEMERINTAHAN', 'BAGIAN TATA PEMERINTAHAN', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPnnJyd40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$.BDVTDqvas.GZO.l2HLxY.qSUrLwqvYKhOsYdFxPN8fQx39TX2.a6', 'ul0s6PLnTxEx41E2', NULL, NULL, NULL, NULL, 1542868262, NULL, 1, 'BAGIAN TATA PEMERINTAHAN', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 21, NULL, NULL, NULL, NULL),
(86, 'DINAS PEKERJAAN UMUM, PENATAAN RUANG, PERUMAHAN DAN KAWASAN PEMUKIMAN', 'DINAS PEKERJAAN UMUM, PENATAAN RUANG, PERUMAHAN DA', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPnnJCd40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$BKgKiiPmmLn.DO4P.TyOrObIK1W6dvSFiU5NQfbw.zQ5SysDqp1Fy', 'flkveMiVlkIYUuGJ', NULL, NULL, NULL, NULL, 1542868271, NULL, 1, 'DINAS PEKERJAAN UMUM, PENATAAN RUANG, PERUMAHAN DA', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 22, NULL, NULL, NULL, NULL),
(87, 'BADAN SATUAN POLISI PAMONG PRAJA DAN PEMADAM KEBAKARAN', 'BADAN SATUAN POLISI PAMONG PRAJA DAN PEMADAM KEBAK', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPnnJSd40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$x.5JfLsBq1G/SBASCV4QROlZvvGJhCcRdJ9fZ4vAqov7eKln6iRk6', '9XDKlgf/4zdQTV1y', NULL, NULL, NULL, NULL, 1542868282, NULL, 1, 'BADAN SATUAN POLISI PAMONG PRAJA DAN PEMADAM KEBAK', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 23, NULL, NULL, NULL, NULL),
(88, 'BADAN KESATUAN BANGSA DAN POLITIK', 'BADAN KESATUAN BANGSA DAN POLITIK', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPnnIid40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$VvC4T1V4iZbnc6qPviK94OXUk9eFX9XYMWHsfEEqkQcgApC6dYs0a', 'umkKYV4x1afVmu.8', NULL, NULL, NULL, NULL, 1542868343, NULL, 1, 'BADAN KESATUAN BANGSA DAN POLITIK', '', NULL, '0', 0, 'avatar_default.png', NULL, 24, NULL, NULL, NULL, NULL),
(89, 'DINAS KETAHANAN PANGAN', 'DINAS KETAHANAN PANGAN', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPnnIyd40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$bSzkJcLMD8wcD9WvDwcnR.y3gtV.tmVf6QzPOld.zxDqC1NHQvNx.', 'yXGdAECGARwCxUer', NULL, NULL, NULL, NULL, 1542868359, NULL, 1, 'DINAS KETAHANAN PANGAN', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 25, NULL, NULL, NULL, NULL),
(90, 'DINAS LINGKUNGAN HIDUP', 'DINAS LINGKUNGAN HIDUP', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPnnICd40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$zfF8fYPmWJWXOgl7o4Ng3.m3iSLK7DCHKFbCNci0kbShDMYljrQ7S', 'CQvIrGTk/.1hhglm', NULL, NULL, NULL, NULL, 1542868370, NULL, 1, 'DINAS LINGKUNGAN HIDUP', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 26, NULL, NULL, NULL, NULL),
(91, 'DINAS KOMUNIKASI DAN INFORMATIKA', 'DINAS KOMUNIKASI DAN INFORMATIKA', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPnnISd40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$wj1DM4xogVCf/mPzU5054uUxwBhjF9sByjY.gLEIhYo8RhAMEgvY2', 'oUe.j.CXcGZtxfhX', NULL, NULL, NULL, NULL, 1542868381, NULL, 1, 'DINAS KOMUNIKASI DAN INFORMATIKA', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 27, NULL, NULL, NULL, NULL),
(92, 'DINAS PEMBERDAYAAN PEREMPUAN, PERLINDUNGAN ANAK DAN SOSIAL', 'DINAS PEMBERDAYAAN PEREMPUAN, PERLINDUNGAN ANAK DA', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPnnLid40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$O.BepJnMjdf34wthDVp3X.GkVXkzyWwOt8L3ZKHuDHPqYd7jCjWkm', 'Sg0zS/LEL1CHLTzd', NULL, NULL, NULL, NULL, 1542868391, NULL, 1, 'DINAS PEMBERDAYAAN PEREMPUAN, PERLINDUNGAN ANAK DA', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 28, NULL, NULL, NULL, NULL),
(93, 'DINAS PEMBERDAYAAN MASYARAKAT DAN DESA', 'DINAS PEMBERDAYAAN MASYARAKAT DAN DESA', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPnnLyd40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$znw3goPM9pnMUmpxw/qP1OOgaKk4VC/yzFnBjYtIOY2WbNKmJud4y', '17N73VZ2I3Rn3.rd', NULL, NULL, NULL, NULL, 1542868409, NULL, 1, 'DINAS PEMBERDAYAAN MASYARAKAT DAN DESA', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 29, NULL, NULL, NULL, NULL),
(94, 'DINAS PENANAMAN MODAL, PELAYANAN TERPADU SATU PINTU DAN TENAGA KERJA', 'DINAS PENANAMAN MODAL, PELAYANAN TERPADU SATU PINT', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPnmJid40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$OythoUmfSuJtqq4wyQX6sOhTSgnz5xmIr9MMnwTyf8lA598MF.Exy', 'Wc01LUHcCerdrPyO', NULL, NULL, NULL, NULL, 1542868416, NULL, 1, 'DINAS PENANAMAN MODAL, PELAYANAN TERPADU SATU PINT', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 30, NULL, NULL, NULL, NULL),
(95, 'DINAS KEPENDUDUKAN DAN PENCATATAN SIPIL', 'DINAS KEPENDUDUKAN DAN PENCATATAN SIPIL', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPnmJyd40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$NEM0qS9YsaVAKAkXhTQgfevwrXyNKndk08HZOOvCgd3orIaUXzNcW', 'h80dJ/KkQYQeH9CN', NULL, NULL, NULL, NULL, 1542868423, NULL, 1, 'DINAS KEPENDUDUKAN DAN PENCATATAN SIPIL', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 31, NULL, NULL, NULL, NULL),
(96, 'BAGIAN EKONOMI', 'BAGIAN EKONOMI', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPnmJCd40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$2jWtOqgBvOkuX2/OgC9Eo..jiJIrAE9ZvNNDmDIgjgO73Up0blPYS', 'TN0NGU98MIG8wno/', NULL, NULL, NULL, NULL, 1542868432, NULL, 1, 'BAGIAN EKONOMI', '', NULL, '0', 0, 'avatar_default.png', NULL, 32, NULL, NULL, NULL, 11),
(97, 'BAGIAN HUKUM', 'BAGIAN HUKUM', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPnmJSd40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$HJ.ljNJqV8BIxOkT3VylXO97.FOwzh6DWJ5ldDUR8ZZUX.fClZhf.', 'LCYj.c2Mya1PSnl5', NULL, NULL, NULL, NULL, 1542868440, NULL, 1, 'BAGIAN HUKUM', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 33, NULL, NULL, NULL, NULL),
(98, 'BAGIAN HUMAS DAN PROTOKOL', 'BAGIAN HUMAS DAN PROTOKOL', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPnmIid40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$/1AvCTjQiRedBsTzc/aqBuVhIatGD2p13541Emx2CZoDXyP/r186u', 'AUWGK58J0Gjbr6KO', NULL, NULL, NULL, NULL, 1542868447, NULL, 1, 'BAGIAN HUMAS DAN PROTOKOL', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 34, NULL, NULL, NULL, NULL),
(99, 'INSPEKTORAT', 'INSPEKTORAT', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPnmIyd40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$WlqpnJ6EwAHs.PJ0q9deoOQa88T3pLVyqHoFZnoxPEYKuNEc6Vmay', 'pIYTiZ3kZYZ8h8hf', NULL, NULL, NULL, NULL, 1542868455, NULL, 1, 'INSPEKTORAT', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 35, NULL, NULL, NULL, NULL),
(100, 'SEKRETARIAT KORPRI', 'SEKRETARIAT KORPRI', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPnmICd40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$Aotlhss7LXzzizLSL4MoPuaX5PkO7NfMb3h4fzYHAJZXcU.0BUjZS', 'swwMvJxq5GGKALBC', NULL, NULL, NULL, NULL, 1542868463, NULL, 1, 'SEKRETARIAT KORPRI', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 36, NULL, NULL, NULL, NULL),
(101, 'DINAS PERPUSTAKAAN DAN KEARSIPAN DAERAH', 'DINAS PERPUSTAKAAN DAN KEARSIPAN DAERAH', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPnmISd40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$Jy9lXjAxawk6aUrrVtXjQelD9LHDDMCfAfK9ac5Kera2d5FK9hiLS', 'WYp8BxWd5OaKaYDy', NULL, NULL, NULL, NULL, 1542868469, 1551275562, 1, 'DINAS PERPUSTAKAAN DAN KEARSIPAN DAERAH', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 37, NULL, NULL, NULL, NULL),
(102, 'BADAN PENGELOLA KEUANGAN DAERAH', 'BADAN PENGELOLA KEUANGAN DAERAH', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPnmLid40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$ZS6h33lajAZAOkY.DO5.TupwYP.TzxylIA6plz1Tts5zd1aJhZ2tm', '74VeV4Lv8XixiIHJ', NULL, NULL, NULL, NULL, 1542868476, NULL, 1, 'BADAN PENGELOLA KEUANGAN DAERAH', '', NULL, '0', 0, 'avatar_default.png', NULL, 38, NULL, NULL, NULL, NULL),
(104, 'DINAS KESEHATAN, PENGENDALIAN PENDUDUK DAN KELUARGA BERENCANA', 'DINAS KESEHATAN, PENGENDALIAN PENDUDUK DAN KELUARG', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPnhJid40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$R/H2SKoGU.RC1DI5SjDvBOH82iWrv1yhuioerd1LmX39LhCQ2XlF6', '5K3KZUZQS.ym0VPj', NULL, NULL, NULL, NULL, 1542868525, NULL, 1, 'DINAS KESEHATAN, PENGENDALIAN PENDUDUK DAN KELUARG', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 39, NULL, NULL, NULL, NULL),
(105, 'BADAN PENANGGULANGAN BENCANA DAERAH', 'BADAN PENANGGULANGAN BENCANA DAERAH', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPnhJyd40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$KtxQ9aH0ZcBayXqIuBJfxuc6cBtSmgQJx8R6vk6pdtl2Jy8n..csm', 'SXX0oB7pWW5UoneL', NULL, NULL, NULL, NULL, 1542868531, NULL, 1, 'BADAN PENANGGULANGAN BENCANA DAERAH', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 40, NULL, NULL, NULL, NULL),
(106, 'BAGIAN UMUM', 'BAGIAN UMUM', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPnhJCd40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$IB9xLxRK8sK4woRk1EU0Y.kZLPcUPoGag40tmp3Qd8kSR4NQvLyTC', 'PVIY9d4vxslZlxfG', NULL, NULL, NULL, NULL, 1542868538, NULL, 1, 'BAGIAN UMUM', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 41, NULL, NULL, NULL, NULL),
(107, 'KECAMATAN MENTARANG', 'KECAMATAN MENTARANG', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPnhJSd40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$iW5Ns.EpVPu2v5x5oSBi3e1s4rpwaLk1.SzrYGaqzXgl5Qu1Jdlgq', 'eWYHreUlwLuY/UQa', NULL, NULL, NULL, NULL, 1542868549, NULL, 1, 'KECAMATAN MENTARANG', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 42, NULL, NULL, NULL, NULL),
(108, 'KECAMATAN MALINAU UTARA', 'KECAMATAN MALINAU UTARA', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPnhIid40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$AWWhTSH7ooH2Iq07QkbJg.Q5SCCrcg/XwkpE7JYG9Gd65YTrWeLkW', 'dOHgt9xCDrpnnsyR', NULL, NULL, NULL, NULL, 1542868556, NULL, 1, 'KECAMATAN MALINAU UTARA', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 43, NULL, NULL, NULL, NULL),
(109, 'KECAMATAN SUNGAI BOH', 'KECAMATAN SUNGAI BOH', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPnhIyd40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$pfZT3o.nSaQt.9QwtuG8BuivORQ1FSz9zalR9abKgAejACm0B8TgK', 'kTlvINYpqur.6i5u', NULL, NULL, NULL, NULL, 1542868565, NULL, 1, 'KECAMATAN SUNGAI BOH', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 44, NULL, NULL, NULL, NULL),
(110, 'KECAMATAN BAHAU HULU', 'KECAMATAN BAHAU HULU', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPnhICd40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$IvXDeLYUz.LP5BB.OjmKk.IVoRZ6gD4deykrN0UoMsbPK6InGLk5C', 'sVkZXp038wloNSoU', NULL, NULL, NULL, NULL, 1542868583, NULL, 1, 'KECAMATAN BAHAU HULU', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 45, NULL, NULL, NULL, NULL),
(111, 'KECAMATAN MALINAU BARAT', 'KECAMATAN MALINAU BARAT', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPnhISd40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$ejeDvgtEHd9qhANiyaQQjuxdeM/iWr8xlbcS.7Yy52gV4OMGb/HTW', 'cSrBKWYww3v2iKFh', NULL, NULL, NULL, NULL, 1542868591, NULL, 1, 'KECAMATAN MALINAU BARAT', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 46, NULL, NULL, NULL, NULL),
(112, 'KECAMATAN MALINAU SELATAN', 'KECAMATAN MALINAU SELATAN', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPnhLid40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$B/8SFxgjdcxSuAMyFVcY5.TXW6Fo8He.ebV7UPH2pYzWRQNxo/3xq', 'Kf7Uy0PttuWeiJCt', NULL, NULL, NULL, NULL, 1542868599, NULL, 1, 'KECAMATAN MALINAU SELATAN', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 47, NULL, NULL, NULL, NULL),
(113, 'KECAMATAN MENTARANG HULU', 'KECAMATAN MENTARANG HULU', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPnhLyd40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$RHAptJ3iHUpA2jZF42mMz.uE.8ESrJjm4U0osA90GreZCSyg//jVK', 'x9o48pPoBaYKvCfy', NULL, NULL, NULL, NULL, 1542868609, NULL, 1, 'KECAMATAN MENTARANG HULU', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 48, NULL, NULL, NULL, NULL),
(114, 'KECAMATAN PUJUNGAN', 'KECAMATAN PUJUNGAN', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPngJid40T/JeVoa3Wkpz4Sj', ' ', '$2y$08$GZ5ZLGrz8hD14lHfI1FCZe8mjNMK62qzYxNDCbkU1b/JLk7JvSebi', 't4J7xSm.XOc3AAPZ', NULL, NULL, NULL, NULL, 1542868617, NULL, 1, 'KECAMATAN PUJUNGAN', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 49, NULL, NULL, NULL, NULL),
(115, 'KECAMATAN KAYAN HILIR', 'KECAMATAN KAYAN HILIR', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPngJyd40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$7a5zc37Kx0NWBi2FvfFMheQ8k1tquwmgtpLe8GjLZxBJ5EeF/Krme', 'jIHOJM2UcRmSEklK', NULL, NULL, NULL, NULL, 1542868625, NULL, 1, 'KECAMATAN KAYAN HILIR', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 50, NULL, NULL, NULL, NULL),
(116, 'KECAMATAN KAYAN SELATAN', 'KECAMATAN KAYAN SELATAN', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPngJCd40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$yZk0.afzayg9f/p82OfdkOOV8pKXefAoQKKwstppRdLLUBg7ZK2Cm', 'A.rcO02QCognqnL3', NULL, NULL, NULL, NULL, 1542868633, NULL, 1, 'KECAMATAN KAYAN SELATAN', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 51, NULL, NULL, NULL, NULL),
(117, 'KECAMATAN SUNGAI TUBU', 'KECAMATAN SUNGAI TUBU', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPngJSd40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$xnnKZRlHPnMFktMj6bS1N.zMVpi.b.9CZLdjKMFxgbJVPy9xZC7na', 'GqQ/ZSi/6l3u.lJP', NULL, NULL, NULL, NULL, 1542868640, NULL, 1, 'KECAMATAN SUNGAI TUBU', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 52, NULL, NULL, NULL, NULL),
(118, 'KECAMATAN MALINAU SELATAN HILIR', 'KECAMATAN MALINAU SELATAN HILIR', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPngIid40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$zfxrHhr9tfi0gULYJkdrIutoMjQ0FwBtiSXA7WzrcJOd6cvadkOs2', 'MnOjvwLzGdWzh8xU', NULL, NULL, NULL, NULL, 1542868647, NULL, 1, 'KECAMATAN MALINAU SELATAN HILIR', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 53, NULL, NULL, NULL, NULL),
(119, 'PERWAKILAN KECAMATAN LONG SULE', 'PERWAKILAN KECAMATAN LONG SULE', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPngIyd40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$MBqguuIAnPi4o0QU.bQcruaRKwRNr7Y39P85ZeWGM6uVylz12rQTi', '.vziohki/5YWhznl', NULL, NULL, NULL, NULL, 1542868655, NULL, 1, 'PERWAKILAN KECAMATAN LONG SULE', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 54, NULL, NULL, NULL, NULL),
(120, 'KANTOR PERSIAPAN KECAMATAN MALINAU UTARA TIMUR', 'KANTOR PERSIAPAN KECAMATAN MALINAU UTARA TIMUR', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPngICd40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$mnbbvXqcDt5Dd0acGTpZrOmT3r5CvVGIhNCmNTNHwVLdl4Rs4v0zW', 'QHQ4H.vyodnM/WlS', NULL, NULL, NULL, NULL, 1542868663, NULL, 1, 'KANTOR PERSIAPAN KECAMATAN MALINAU UTARA TIMUR', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 55, NULL, NULL, NULL, NULL),
(177, 'BAGIAN KESEJAHTERAAN RAKYAT', 'BAGIAN KESEJAHTERAAN RAKYAT', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPnkJSd40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$xkLqzB427A/DorRTNQkvMuRP9pph.RV4M9iXco4gUaRXZcRjKyTym', 'jcBmBV2Nlp0J7tSu', NULL, NULL, NULL, NULL, 1542868183, NULL, 1, 'BAGIAN KESEJAHTERAAN RAKYAT', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 13, NULL, NULL, NULL, NULL),
(178, 'RSUD', 'RSUD', 'MTIzNDU2Nzg5MDEyMzQ1Nvqvv5U+lPnkIid40T/JeVoa3Wkpz4Sj', '::1', '$2y$08$yL5qQDoWOVqva0R89cPeLeQStYmnzj7kTvtakYMmGdIWVtLdwOqZa', 'JThT5.B3NQRg7qqF', NULL, NULL, NULL, NULL, 1542868189, NULL, 1, 'RSUD', NULL, NULL, '0', 0, 'avatar_default.png', NULL, 14, NULL, NULL, NULL, NULL),
(179, 'htu', 'htu', 'MTIzNDU2Nzg5MDEyMzQ1NvO/p7wxwKS8eEl23z4=', '::1', '$2y$08$hQYzRWoWHwh2UHQK68LcHuENpf3FG2htzkGGLKnAHEtVqgpjrZpjS', 'XMlDVWwcEeqsu1Kc', NULL, NULL, NULL, NULL, 1549439229, 1549439242, 1, 'HTU', '', NULL, '1', 0, 'avatar_default.png', NULL, NULL, NULL, NULL, NULL, NULL),
(180, 'user', 'user', 'MTIzNDU2Nzg5MDEyMzQ1NvaksZcl1Im0cgp83n3DeFY=', '::1', '$2y$08$0E5bLiUXEQKs6Qygvhd.vuBPebbQ/Kw/7N8LcXxRqgNmSVjiLjWo2', 'EVgXZipBo2gr1mmO', NULL, NULL, NULL, NULL, 1565064724, 1565076816, 1, 'User', '', NULL, '1', 0, 'avatar_default.png', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `alus_ug`
--

CREATE TABLE `alus_ug` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `alus_ug`
--

INSERT INTO `alus_ug` (`id`, `user_id`, `group_id`) VALUES
(1, 64, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `picture` text DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `created_by_user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `picture`, `is_active`, `deleted_at`, `updated_at`, `created_at`, `created_by_user_id`) VALUES
(1, 'Action', '', '167345125738.jpg', 1, NULL, '2023-01-24 06:32:10', '2023-01-11 15:34:17', NULL),
(2, 'Animals', '', '167345671134.jpg', 1, NULL, NULL, '2023-01-11 17:05:11', NULL),
(3, 'History', '', '167345672505.jpg', 1, NULL, NULL, '2023-01-11 17:05:25', NULL),
(4, 'Adventure', '', NULL, 1, NULL, NULL, '2023-01-24 06:34:41', NULL),
(5, 'Biography', '', NULL, 1, NULL, NULL, '2023-01-24 06:35:30', NULL),
(6, 'Comedy', '', NULL, 1, NULL, NULL, '2023-01-24 06:35:46', NULL),
(7, 'Crime', '', NULL, 1, NULL, NULL, '2023-01-24 06:36:03', NULL),
(8, 'Documentary', '', NULL, 1, NULL, NULL, '2023-01-24 06:36:29', NULL),
(9, 'Dance', '', NULL, 1, NULL, NULL, '2023-01-24 06:37:43', NULL),
(10, 'Education', '', NULL, 1, NULL, NULL, '2023-01-24 06:38:08', NULL),
(11, 'Fantasy', '', NULL, 1, NULL, NULL, '2023-01-24 06:38:50', NULL),
(12, 'History', '', NULL, 1, NULL, NULL, '2023-01-24 06:39:17', NULL),
(13, 'Horror', '', NULL, 1, NULL, NULL, '2023-01-24 06:39:28', NULL),
(14, 'Kids & Family', '', NULL, 1, NULL, NULL, '2023-01-24 06:39:52', NULL),
(15, 'War', '', NULL, 1, NULL, '2023-01-31 10:53:36', '2023-01-24 06:40:09', NULL),
(16, 'Music', '', NULL, 1, NULL, NULL, '2023-01-24 06:40:20', NULL),
(17, 'Nature', '', NULL, 1, NULL, NULL, '2023-01-24 06:40:29', NULL),
(18, 'Paranormal', '', NULL, 1, NULL, NULL, '2023-01-24 06:40:42', NULL),
(19, 'Politics', '', NULL, 1, NULL, NULL, '2023-01-24 06:41:03', NULL),
(20, 'Racing', '', NULL, 1, NULL, NULL, '2023-01-24 06:41:27', NULL),
(21, 'Romance', '', NULL, 1, NULL, NULL, '2023-01-24 06:41:34', NULL),
(22, 'Science', '', NULL, 1, NULL, NULL, '2023-01-24 06:41:46', NULL),
(23, 'Travel', '', NULL, 1, NULL, NULL, '2023-01-24 06:41:57', NULL),
(24, 'Western', '', NULL, 1, NULL, NULL, '2023-01-24 06:42:06', NULL),
(25, 'Drama', '', NULL, 1, NULL, NULL, '2023-01-25 10:29:29', NULL),
(26, 'Thriller', '', NULL, 1, NULL, NULL, '2023-01-25 12:08:51', NULL),
(27, 'Anime', '', NULL, 1, NULL, NULL, '2023-01-27 12:23:16', NULL),
(28, 'Animation', '', NULL, 1, NULL, NULL, '2023-01-30 04:46:11', NULL),
(29, 'Drama Korea', '', NULL, 1, NULL, NULL, '2023-01-31 08:23:45', NULL),
(30, 'Film Indonesia', '', NULL, 0, NULL, '2023-01-31 10:20:18', '2023-01-31 09:05:30', NULL),
(31, 'Sci-fi', '', NULL, 1, NULL, NULL, '2023-01-31 10:19:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `comment` text DEFAULT NULL,
  `movie_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `name`, `created_at`, `comment`, `movie_id`) VALUES
(2, 'Youngsta', '2023-01-21 09:49:08', 'Nice film good', 6),
(3, 'Codet', '2023-01-21 10:13:58', 'Good\r\n', 6),
(4, 'youngsta', '2023-01-27 11:57:02', 'bagus filmnya\r\n', 13),
(5, 'youngsta ', '2023-01-27 12:25:31', 'halo gud film', 7),
(6, 'LUQMAN ALY RAZAK', '2025-12-24 09:40:49', 'Bagus', 14);

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `title` text DEFAULT NULL,
  `rating` float DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `file_movie` text DEFAULT NULL,
  `picture` text DEFAULT NULL,
  `link_trailer` text DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `created_by_user_id` int(11) DEFAULT NULL,
  `is_featured` int(11) NOT NULL,
  `is_indonesian` int(11) NOT NULL,
  `is_drama_korea` int(11) NOT NULL,
  `is_coming_soon` tinyint(1) DEFAULT 0,
  `is_tv_show` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `title`, `rating`, `year`, `release_date`, `duration`, `age`, `description`, `file_movie`, `picture`, `link_trailer`, `updated_at`, `created_at`, `created_by_user_id`, `is_featured`, `is_indonesian`, `is_drama_korea`, `is_coming_soon`, `is_tv_show`) VALUES
(7, 'There’s Something Wrong with the Children (2023)', 6.3, 2025, '2026-01-01', '2jam 30menit', 18, 'Margaret and Ben take a weekend trip with longtime friends Ellie and Thomas and their two young children. Eventually, Ben begins to suspect something supernatural is occurring when the kids behave strangely after disappearing into the woods overnight.', '167454331788.mp4', '167454830588.jpg', '', '2025-12-27 04:40:00', '2023-01-20 07:12:37', NULL, 2, 0, 0, 1, 0),
(8, 'Detective Knight: Redemption (2022)', 4.8, 2025, '2025-12-28', '1 Jam 33 Menit', 18, 'In custody in New York, Detective James Knight finds himself in the middle of a jailbreak led by The Christmas Bomber, a brutal fanatic whose Santa Claus disciples are terrorizing the city. With the promised return of his badge in exchange for taking out the terrorists, the steely-eyed Knight doles out mercy for the just…and merciless justice for all the rest.', '167454724629.mp4', '167454859023.jpg', '', '2025-12-27 04:40:31', '2023-01-20 07:37:09', NULL, 3, 0, 0, 1, 0),
(9, 'Money Heist: Korea – Joint Economic Area (2022)', 9.1, 2025, '2025-12-31', '', 0, 'Synopsis\r\n??? ?: ?????? – Disguised under the shadows of a mask, a crew of desperados band together under the leadership of a criminal mastermind known only as “The Professor” to pull off the biggest heist Korea has ever seen.', NULL, '167454997346.jpg', '', '2025-12-27 04:46:41', '2023-01-20 07:37:57', NULL, 4, 0, 0, 0, 0),
(11, 'The Price We Pay (2023)', 5.3, 2023, '2025-12-31', '1Jam 25Menit', 18, 'After a pawn shop robbery goes askew, two criminals take refuge at a remote farmhouse to try to let the heat die down, but find something much more menacing.', '167446640621.mp4', '167454877764.jpg', '', '2025-12-27 04:46:59', '2023-01-23 09:33:27', NULL, 2, 0, 0, 0, 0),
(12, 'Ghosts of War (2020)', 9.2, 2020, '2025-12-29', '94 Min', 14, 'A group of World War II American soldiers encounter a supernatural enemy as they occupy a French castle previously under Nazi control.', NULL, '167464270549.jfif', '', '2025-12-27 04:47:05', '2023-01-25 10:31:45', NULL, 1, 0, 0, 0, 0),
(13, '365 Days (2020)', 7.6, 2022, NULL, '', 18, 'Laura, in order to save her relationship from falling apart, goes to Sicily, where she meets Massimo. A dangerous man, the head of a mafia family, kidnaps her and gives 365 days to love him.', NULL, '167464281696.jpg', '', '2023-01-31 02:26:14', '2023-01-25 10:33:29', NULL, 1, 0, 0, 0, 0),
(14, 'M3GAN (2022)', 8.4, 2025, NULL, '102 Min', 18, 'A brilliant toy company roboticist uses artificial intelligence to develop M3GAN, a life-like doll programmed to emotionally bond with her newly orphaned niece. But when the doll’s programming works too well, she becomes overprotective of her new friend with terrifying results.', '167505408880.mp4', '167505408880.jpg', '', '2025-12-27 03:08:21', '2023-01-30 04:48:12', NULL, 1, 0, 0, 0, 0),
(15, 'Hello World (2019)', 9.3, 2019, NULL, '98 Min', 0, 'A shy high schooler in Kyoto meets a man claiming to be his future self, who tells him he’s hacked into the past to save their first love.', '167508325269.mp4', '167508325269.jpg', '', '2023-01-30 13:01:35', '2023-01-30 12:54:13', NULL, 2, 0, 0, 0, 0),
(16, 'The Last of Us (2023)', 9.5, 2023, NULL, '60 Min', 18, 'Twenty years after modern civilization has been destroyed. Joel, a hardened survivor, is hired to smuggle Ellie, a 14-year-old girl, out of an oppressive quarantine zone. What starts as a small job soon becomes a brutal, heartbreaking journey, as they both must traverse the U.S. and depend on each other for survival.', '167512810628.mp4', '167512810628.jpg', '', NULL, '2023-01-31 01:21:47', NULL, 1, 0, 0, 0, 0),
(17, 'Vikings: Valhalla (2022)', 9.3, 2022, NULL, '51 Min', 13, 'In this sequel to “Vikings,” a hundred years have passed and a new generation of legendary heroes arises to forge its own destiny — and make history.', '167512956769.mp4', '167512956769.jpg', '', '2023-01-31 10:38:32', '2023-01-31 01:46:08', NULL, 1, 0, 0, 0, 0),
(18, 'The Old Way (2023)', 8.6, 2025, NULL, '95 Min', 18, 'An old gunslinger and his daughter must face the consequences of his past, when the son of a man he murdered years ago arrives to take his revenge.', '167515286337.mp4', '167515286337.jpg', '', '2025-12-27 03:07:45', '2023-01-31 08:14:24', NULL, 1, 0, 0, 0, 0),
(19, 'Hidayah', 8.3, 2023, NULL, '92 Min', 13, 'Di tengah imannya yang tengah goyah, BAHRI (Ajil Ditto), seorang ustadz muda, berusaha mengubur masa lalunya dengan bekerja di kota. Hingga suatu ketika, sahabat Bahri, HASAN, datang dari kampung untuk meminta tolong. Desa Mekarwangi tempat Bahri tumbuh dan berasal, mengalami gangguan gaib yang mengusik kedamaian kampung, yang dipercaya disebabkan oleh RATNA (Givina), teman lama Bahri. Ratna sakit keras dan menderita, namun tak kunjung menemui ajal. Teriakan kesakitan Ratna menghantui kampung tiap malam, disertai kemunculan sosok gaib yang mengganggu warga. Bahri kembali ke Desa Mekarwangi, dan mendapati bahwa bahaya yang harus ia hadapi lebih besar dari yang ia duga. Bahkan sesudah Ratna wafat, gangguan gaib malah semakin parah, hingga merenggut nyawa warga kampung. Bahri dituding bertanggung jawab atas itu semua, dan masa lalu Bahri sebagai narapidana terbongkar, membuat warga Mekarwangi mengusirnya. Demi menyelamatkan diri dan kampungnya, Bahri tidak punya pilihan selain meraih kembali hidayah dan memperteguh imannya.', NULL, '167515577368.jpg', '', '2023-01-31 09:15:48', '2023-01-31 09:02:54', NULL, 4, 1, 0, 0, 0),
(20, 'Transfusion (2023)', 8.9, 2023, NULL, '105 Min', 18, 'A former Special Forces operative thrust into the criminal underworld to keep his only son from being taken away from him.', '167516108225.mp4', '167516108225.jpg', '', '2023-01-31 11:06:51', '2023-01-31 10:31:22', NULL, 3, 0, 0, 0, 0),
(21, 'Kokdu: Season of Deity (2023)', 9.5, 2023, NULL, '80 Min', 18, 'A fantasy medical drama about a high-ranking grim reaper named Kkok Du, who is the only being to exist in the underworld. Every 99 years, the cold and cruel Kkok Du must take a break from his job in the underworld and spend 49 days in the mortal realm—and this time, he winds up inhabiting the body of the human Do Jin Woo. While living as Do Jin Woo, he meets Han Gye Jeol, a female doctor who has the mysterious ability to order Kkok Du around.', NULL, '167516298056.jpg', '', '2023-01-31 11:07:20', '2023-01-31 11:03:01', NULL, 4, 0, 1, 0, 0),
(22, 'The Bait (2023)', 7.7, 2023, NULL, '80 Min', 18, 'A story that digs into the truth of past unsolved cases through the heinous current events. It is predicting the birth of a more realistic and new crime thriller based on a rare event.', '167521482854.mp4', '167521513702.jpg', '', '2023-02-01 01:32:17', '2023-02-01 01:27:08', NULL, 0, 0, 1, 0, 0),
(23, 'The Bride of Habaek (2017)', 1, 2017, NULL, '80 Min', 18, 'Yoon So Ah is a pragmatic neuropsychiatrist who carries a tremendous financial burden to run her own practice. Her family has been tasked with serving Ha Baek, a reincarnated water god, for many generations, and So Ah is forced to do the same. Ha Baek starts to develop feelings for So Ah, but he has competition for her heart from Hoo Ye, the CEO of a resort company, who clashes with So Ah over a piece of land but then falls in love with her. Can a relationship between a mortal female and a god have a future?', NULL, '167521509950.jpg', '', '2023-02-01 01:37:28', '2023-02-01 01:31:39', NULL, 3, 0, 1, 0, 0),
(24, 'Délocalisés', 9, 2025, NULL, '86 Min', 18, 'A mattress factory worker who is relocated to India convinces his French girlfriend to move with him.', NULL, '176680391796.jpg', '', NULL, '2025-12-27 02:51:58', NULL, 1, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `movie_categories`
--

CREATE TABLE `movie_categories` (
  `id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `movie_categories`
--

INSERT INTO `movie_categories` (`id`, `movie_id`, `category_id`) VALUES
(1, 5, 1),
(29, 10, 1),
(35, 6, 1),
(36, 6, 3),
(50, 15, 21),
(51, 15, 27),
(52, 15, 28),
(53, 16, 1),
(54, 16, 4),
(55, 16, 11),
(56, 16, 25),
(62, 12, 11),
(63, 12, 13),
(64, 12, 15),
(65, 12, 26),
(66, 13, 25),
(67, 11, 1),
(73, 19, 13),
(78, 17, 1),
(79, 17, 4),
(80, 17, 15),
(81, 17, 19),
(82, 17, 25),
(83, 20, 7),
(84, 20, 25),
(101, 23, 6),
(102, 23, 29),
(103, 23, 31),
(104, 22, 7),
(105, 22, 29),
(106, 21, 29),
(107, 24, 6),
(108, 18, 1),
(109, 18, 24),
(110, 7, 1),
(111, 7, 26),
(112, 8, 1),
(113, 9, 1),
(114, 14, 6),
(115, 14, 13);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `title` text DEFAULT NULL,
  `review` text DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `rating` int(11) DEFAULT NULL,
  `movie_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `title`, `review`, `name`, `created_at`, `rating`, `movie_id`) VALUES
(2, 'Pengen Nonton lagi', 'kangen aja gitu', 'Youngsta', '2023-01-22 04:53:53', 10, 6);

-- --------------------------------------------------------

--
-- Table structure for table `sys_codes`
--

CREATE TABLE `sys_codes` (
  `srn_id` int(11) NOT NULL,
  `srn_code` varchar(50) DEFAULT NULL,
  `srn_value` int(11) DEFAULT 0,
  `srn_length` int(11) DEFAULT 1,
  `srn_format` varchar(50) DEFAULT NULL,
  `srn_year` int(11) DEFAULT NULL,
  `srn_month` int(11) DEFAULT NULL,
  `srn_reset_by` varchar(20) DEFAULT 'NONE'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `sys_codes`
--

INSERT INTO `sys_codes` (`srn_id`, `srn_code`, `srn_value`, `srn_length`, `srn_format`, `srn_year`, `srn_month`, `srn_reset_by`) VALUES
(1, 'SN-KLASIFIKASI-SURAT', 5, 5, 'SNKS-{VALUE}', 2017, 1, 'YEAR'),
(9, 'SN-KLASIFIKASI-FILE', 2, 5, 'SNKF-{MONTH}/{YEAR}-{VALUE}', NULL, NULL, 'NONE'),
(10, 'SN-SARANA-MEDIA', 5, 5, 'SSN-{MONTH}/{YEAR}-{VALUE}', NULL, NULL, 'NONE'),
(11, 'SN-TICKET', 76, 6, 'T{VALUE}', NULL, NULL, 'NONE'),
(13, '071.25', 3, 1, '{VALUE}', 2019, NULL, 'NONE'),
(14, '072', 3, 1, '{VALUE}', NULL, NULL, 'NONE'),
(15, '073.6', 0, 1, '{VALUE}', NULL, NULL, 'NONE'),
(16, '076.4', 1, 1, '{VALUE}', NULL, NULL, 'NONE'),
(17, '077.1', 1, 1, '{VALUE}', NULL, NULL, 'NONE'),
(18, '999.99', 38, 1, '{VALUE}', NULL, NULL, 'NONE'),
(19, '999.99', 38, 1, '{VALUE}', 2019, NULL, 'NONE');

-- --------------------------------------------------------

--
-- Table structure for table `user_bookmarks`
--

CREATE TABLE `user_bookmarks` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alus_g`
--
ALTER TABLE `alus_g`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `alus_gd`
--
ALTER TABLE `alus_gd`
  ADD PRIMARY KEY (`agd_id`) USING BTREE;

--
-- Indexes for table `alus_la`
--
ALTER TABLE `alus_la`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `alus_mg`
--
ALTER TABLE `alus_mg`
  ADD PRIMARY KEY (`menu_id`) USING BTREE;

--
-- Indexes for table `alus_mga`
--
ALTER TABLE `alus_mga`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `fk_groups_deleted` (`id_group`) USING BTREE,
  ADD KEY `fk_menu_deleted` (`id_menu`) USING BTREE;

--
-- Indexes for table `alus_u`
--
ALTER TABLE `alus_u`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `sys_users_idx1` (`id`) USING BTREE,
  ADD KEY `sys_users_idx2` (`id`) USING BTREE;

--
-- Indexes for table `alus_ug`
--
ALTER TABLE `alus_ug`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`) USING BTREE,
  ADD KEY `fk_users_groups_users1_idx` (`user_id`) USING BTREE,
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`) USING BTREE;

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `movie_categories`
--
ALTER TABLE `movie_categories`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `sys_codes`
--
ALTER TABLE `sys_codes`
  ADD PRIMARY KEY (`srn_id`) USING BTREE;

--
-- Indexes for table `user_bookmarks`
--
ALTER TABLE `user_bookmarks`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alus_g`
--
ALTER TABLE `alus_g`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `alus_gd`
--
ALTER TABLE `alus_gd`
  MODIFY `agd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `alus_la`
--
ALTER TABLE `alus_la`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `alus_mg`
--
ALTER TABLE `alus_mg`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `alus_mga`
--
ALTER TABLE `alus_mga`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3892;

--
-- AUTO_INCREMENT for table `alus_u`
--
ALTER TABLE `alus_u`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT for table `alus_ug`
--
ALTER TABLE `alus_ug`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `movie_categories`
--
ALTER TABLE `movie_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sys_codes`
--
ALTER TABLE `sys_codes`
  MODIFY `srn_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `user_bookmarks`
--
ALTER TABLE `user_bookmarks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `alus_ug`
--
ALTER TABLE `alus_ug`
  ADD CONSTRAINT `alus_ug_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `alus_g` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `alus_ug_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `alus_u` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
