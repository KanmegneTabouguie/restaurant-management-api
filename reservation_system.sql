-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 11, 2024 at 08:07 PM
-- Server version: 8.0.22
-- PHP Version: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `reservation_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `analytics`
--

CREATE TABLE `analytics` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `page` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `analytics`
--

INSERT INTO `analytics` (`id`, `user_id`, `page`, `action`, `timestamp`, `ip_address`, `user_agent`, `created_at`, `updated_at`) VALUES
(1, 72, 'Home', 'clicked', '2024-10-21 12:30:44', '233.3.164.254', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 5.1; Trident/5.0)', '2024-10-31 20:07:51', '2024-10-31 20:07:51'),
(2, 174, 'Home', 'clicked', '2024-10-30 09:49:35', '71.229.125.85', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_3) AppleWebKit/5330 (KHTML, like Gecko) Chrome/37.0.872.0 Mobile Safari/5330', '2024-10-31 20:07:51', '2024-10-31 20:07:51'),
(3, 14, 'Home', 'navigated', '2024-10-26 00:17:45', '30.166.161.176', 'Opera/9.24 (Windows 98; nl-NL) Presto/2.10.346 Version/10.00', '2024-10-31 20:07:51', '2024-10-31 20:07:51'),
(4, NULL, 'Reservation', 'submitted', '2024-10-12 09:35:48', '215.151.38.221', 'Opera/9.22 (Windows NT 5.1; nl-NL) Presto/2.9.352 Version/10.00', '2024-10-31 20:07:51', '2024-10-31 20:07:51'),
(5, 105, 'Home', 'clicked', '2024-10-21 01:03:49', '231.242.108.19', 'Mozilla/5.0 (Windows 98; Win 9x 4.90; sl-SI; rv:1.9.0.20) Gecko/20130209 Firefox/35.0', '2024-10-31 20:07:52', '2024-10-31 20:07:52'),
(6, NULL, 'Reservation', 'navigated', '2024-10-22 18:57:23', '79.63.41.3', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/5310 (KHTML, like Gecko) Chrome/40.0.825.0 Mobile Safari/5310', '2024-10-31 20:07:52', '2024-10-31 20:07:52'),
(7, 161, 'Home', 'clicked', '2024-10-14 14:29:04', '27.11.21.206', 'Mozilla/5.0 (Windows CE) AppleWebKit/532.1 (KHTML, like Gecko) Chrome/81.0.4008.73 Safari/532.1 Edg/81.01106.96', '2024-10-31 20:07:52', '2024-10-31 20:07:52'),
(8, NULL, 'Contact', 'navigated', '2024-10-18 08:58:09', '8.156.42.14', 'Opera/8.16 (Windows CE; nl-NL) Presto/2.9.322 Version/11.00', '2024-10-31 20:07:52', '2024-10-31 20:07:52'),
(9, NULL, 'Testimonials', 'submitted', '2024-10-24 05:18:58', '169.196.178.174', 'Mozilla/5.0 (Windows; U; Windows CE) AppleWebKit/534.4.7 (KHTML, like Gecko) Version/4.0.5 Safari/534.4.7', '2024-10-31 20:07:52', '2024-10-31 20:07:52'),
(10, NULL, 'Testimonials', 'clicked', '2024-10-10 11:15:12', '43.225.224.104', 'Mozilla/5.0 (Macintosh; PPC Mac OS X 10_7_4) AppleWebKit/5361 (KHTML, like Gecko) Chrome/36.0.875.0 Mobile Safari/5361', '2024-10-31 20:07:52', '2024-10-31 20:07:52'),
(11, 145, 'Testimonials', 'viewed', '2024-10-28 10:13:17', '210.248.83.56', 'Mozilla/5.0 (Macintosh; PPC Mac OS X 10_6_1 rv:6.0; sl-SI) AppleWebKit/534.49.5 (KHTML, like Gecko) Version/5.0.4 Safari/534.49.5', '2024-10-31 20:07:52', '2024-10-31 20:07:52'),
(12, NULL, 'Home', 'clicked', '2024-10-15 06:01:05', '157.101.127.218', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/533.1 (KHTML, like Gecko) Chrome/79.0.4368.34 Safari/533.1 EdgA/79.01126.17', '2024-10-31 20:07:52', '2024-10-31 20:07:52'),
(13, 105, 'Contact', 'navigated', '2024-10-28 03:50:58', '68.61.15.146', 'Opera/8.93 (Windows NT 5.2; en-US) Presto/2.11.235 Version/12.00', '2024-10-31 20:07:52', '2024-10-31 20:07:52'),
(14, 111, 'Contact', 'clicked', '2024-10-17 19:04:28', '186.245.244.32', 'Mozilla/5.0 (compatible; MSIE 5.0; Windows NT 5.0; Trident/4.0)', '2024-10-31 20:07:52', '2024-10-31 20:07:52'),
(15, 73, 'Menu', 'clicked', '2024-10-14 01:10:35', '36.7.172.100', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_8 rv:6.0) Gecko/20230707 Firefox/36.0', '2024-10-31 20:07:52', '2024-10-31 20:07:52'),
(16, NULL, 'Home', 'submitted', '2024-10-02 07:15:18', '171.143.96.185', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_0) AppleWebKit/5320 (KHTML, like Gecko) Chrome/40.0.865.0 Mobile Safari/5320', '2024-10-31 20:07:52', '2024-10-31 20:07:52'),
(17, 84, 'Reservation', 'clicked', '2024-10-04 14:48:39', '189.56.119.150', 'Opera/9.68 (X11; Linux x86_64; nl-NL) Presto/2.8.318 Version/12.00', '2024-10-31 20:07:52', '2024-10-31 20:07:52'),
(18, 135, 'Reservation', 'navigated', '2024-10-04 05:56:48', '186.136.54.20', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/5341 (KHTML, like Gecko) Chrome/38.0.869.0 Mobile Safari/5341', '2024-10-31 20:07:52', '2024-10-31 20:07:52'),
(19, NULL, 'Home', 'navigated', '2024-10-23 19:50:45', '195.223.18.27', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/5311 (KHTML, like Gecko) Chrome/37.0.808.0 Mobile Safari/5311', '2024-10-31 20:07:52', '2024-10-31 20:07:52'),
(20, 11, 'Home', 'submitted', '2024-10-09 20:22:27', '56.249.235.138', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/534.0 (KHTML, like Gecko) Chrome/92.0.4200.50 Safari/534.0 Edg/92.01055.91', '2024-10-31 20:07:52', '2024-10-31 20:07:52'),
(21, 75, 'Reservation', 'navigated', '2024-10-18 13:55:21', '14.146.118.97', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_4 rv:3.0) Gecko/20230929 Firefox/37.0', '2024-10-31 20:07:52', '2024-10-31 20:07:52'),
(22, NULL, 'Reservation', 'viewed', '2024-10-20 00:48:36', '233.122.77.50', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/5320 (KHTML, like Gecko) Chrome/36.0.862.0 Mobile Safari/5320', '2024-10-31 20:07:52', '2024-10-31 20:07:52'),
(23, NULL, 'Reservation', 'viewed', '2024-10-13 23:53:08', '65.212.123.210', 'Mozilla/5.0 (Windows; U; Windows NT 5.0) AppleWebKit/534.40.7 (KHTML, like Gecko) Version/4.1 Safari/534.40.7', '2024-10-31 20:07:52', '2024-10-31 20:07:52'),
(24, 56, 'Home', 'navigated', '2024-10-05 17:02:24', '52.170.120.215', 'Mozilla/5.0 (compatible; MSIE 11.0; Windows NT 6.1; Trident/5.1)', '2024-10-31 20:07:52', '2024-10-31 20:07:52'),
(25, NULL, 'Reservation', 'viewed', '2024-10-21 04:08:25', '127.41.1.168', 'Opera/9.28 (Windows NT 5.1; sl-SI) Presto/2.11.188 Version/10.00', '2024-10-31 20:07:52', '2024-10-31 20:07:52'),
(26, NULL, 'Contact', 'clicked', '2024-10-17 00:10:15', '223.133.182.109', 'Opera/8.78 (Windows NT 5.01; sl-SI) Presto/2.10.210 Version/10.00', '2024-10-31 20:07:52', '2024-10-31 20:07:52'),
(27, 73, 'Reservation', 'submitted', '2024-10-14 02:09:06', '13.230.173.244', 'Mozilla/5.0 (Windows; U; Windows NT 6.0) AppleWebKit/531.46.2 (KHTML, like Gecko) Version/4.0.5 Safari/531.46.2', '2024-10-31 20:07:52', '2024-10-31 20:07:52'),
(28, NULL, 'Menu', 'viewed', '2024-10-26 15:59:00', '21.178.134.254', 'Mozilla/5.0 (iPad; CPU OS 8_1_2 like Mac OS X; nl-NL) AppleWebKit/535.40.4 (KHTML, like Gecko) Version/4.0.5 Mobile/8B118 Safari/6535.40.4', '2024-10-31 20:07:52', '2024-10-31 20:07:52'),
(29, 173, 'Menu', 'clicked', '2024-10-31 07:50:06', '191.184.245.10', 'Opera/9.93 (Windows 98; en-US) Presto/2.10.208 Version/11.00', '2024-10-31 20:07:52', '2024-10-31 20:07:52'),
(30, NULL, 'Testimonials', 'viewed', '2024-10-31 07:37:40', '96.221.71.90', 'Mozilla/5.0 (iPad; CPU OS 8_0_1 like Mac OS X; en-US) AppleWebKit/532.21.4 (KHTML, like Gecko) Version/4.0.5 Mobile/8B114 Safari/6532.21.4', '2024-10-31 20:07:52', '2024-10-31 20:07:52'),
(31, 3, 'Contact', 'navigated', '2024-10-09 12:08:19', '28.156.144.75', 'Mozilla/5.0 (Windows; U; Windows NT 6.0) AppleWebKit/534.41.1 (KHTML, like Gecko) Version/5.0.3 Safari/534.41.1', '2024-10-31 20:07:52', '2024-10-31 20:07:52'),
(32, NULL, 'Contact', 'submitted', '2024-10-19 00:45:55', '121.191.233.11', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/534.2 (KHTML, like Gecko) Chrome/82.0.4623.71 Safari/534.2 EdgA/82.01005.1', '2024-10-31 20:07:52', '2024-10-31 20:07:52'),
(33, 21, 'Contact', 'viewed', '2024-10-20 21:03:32', '2.71.14.19', 'Mozilla/5.0 (Windows; U; Windows NT 6.2) AppleWebKit/531.5.7 (KHTML, like Gecko) Version/5.0 Safari/531.5.7', '2024-10-31 20:07:52', '2024-10-31 20:07:52'),
(34, NULL, 'Home', 'viewed', '2024-10-06 21:21:08', '17.120.250.35', 'Mozilla/5.0 (X11; Linux i686; rv:7.0) Gecko/20160207 Firefox/35.0', '2024-10-31 20:07:52', '2024-10-31 20:07:52'),
(35, NULL, 'Testimonials', 'navigated', '2024-10-16 01:31:06', '144.54.101.5', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_2 like Mac OS X) AppleWebKit/531.1 (KHTML, like Gecko) Version/15.0 EdgiOS/88.01045.64 Mobile/15E148 Safari/531.1', '2024-10-31 20:07:52', '2024-10-31 20:07:52'),
(36, NULL, 'Contact', 'viewed', '2024-10-10 09:56:02', '7.101.6.4', 'Mozilla/5.0 (iPad; CPU OS 8_0_2 like Mac OS X; en-US) AppleWebKit/533.32.3 (KHTML, like Gecko) Version/4.0.5 Mobile/8B116 Safari/6533.32.3', '2024-10-31 20:07:52', '2024-10-31 20:07:52'),
(37, NULL, 'Menu', 'clicked', '2024-10-15 16:52:41', '125.173.17.154', 'Opera/9.98 (Windows 98; Win 9x 4.90; nl-NL) Presto/2.9.165 Version/12.00', '2024-10-31 20:07:52', '2024-10-31 20:07:52'),
(38, NULL, 'Contact', 'navigated', '2024-10-09 22:12:23', '75.63.241.57', 'Mozilla/5.0 (Windows NT 5.0) AppleWebKit/5341 (KHTML, like Gecko) Chrome/37.0.850.0 Mobile Safari/5341', '2024-10-31 20:07:52', '2024-10-31 20:07:52'),
(39, NULL, 'Testimonials', 'viewed', '2024-10-26 01:56:07', '49.25.67.17', 'Mozilla/5.0 (X11; Linux x86_64; rv:7.0) Gecko/20131226 Firefox/36.0', '2024-10-31 20:07:52', '2024-10-31 20:07:52'),
(40, 56, 'Reservation', 'clicked', '2024-10-09 08:43:22', '122.8.63.29', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/536.0 (KHTML, like Gecko) Chrome/95.0.4619.82 Safari/536.0 EdgA/95.01040.83', '2024-10-31 20:07:52', '2024-10-31 20:07:52'),
(41, 52, 'Contact', 'submitted', '2024-10-09 18:11:20', '66.87.39.133', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/5342 (KHTML, like Gecko) Chrome/36.0.815.0 Mobile Safari/5342', '2024-10-31 20:07:52', '2024-10-31 20:07:52'),
(42, NULL, 'Home', 'submitted', '2024-10-29 11:57:40', '159.180.89.167', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/80.0.4060.68 Safari/537.1 EdgA/80.01063.79', '2024-10-31 20:07:52', '2024-10-31 20:07:52'),
(43, NULL, 'Menu', 'clicked', '2024-10-06 14:59:21', '49.92.55.160', 'Opera/9.81 (Windows NT 5.01; sl-SI) Presto/2.12.163 Version/11.00', '2024-10-31 20:07:52', '2024-10-31 20:07:52'),
(44, 40, 'Contact', 'submitted', '2024-10-08 02:39:40', '138.151.53.148', 'Mozilla/5.0 (Windows NT 5.2) AppleWebKit/5341 (KHTML, like Gecko) Chrome/36.0.837.0 Mobile Safari/5341', '2024-10-31 20:07:52', '2024-10-31 20:07:52'),
(45, 16, 'Home', 'navigated', '2024-10-18 14:07:52', '147.130.33.221', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/80.0.4341.97 Safari/532.0 EdgA/80.01096.18', '2024-10-31 20:07:52', '2024-10-31 20:07:52'),
(46, 185, 'Contact', 'clicked', '2024-10-18 16:07:40', '155.5.179.196', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_4 rv:4.0) Gecko/20211001 Firefox/35.0', '2024-10-31 20:07:52', '2024-10-31 20:07:52'),
(47, NULL, 'Home', 'submitted', '2024-10-30 10:19:26', '76.85.141.219', 'Mozilla/5.0 (compatible; MSIE 8.0; Windows 95; Trident/5.0)', '2024-10-31 20:07:52', '2024-10-31 20:07:52'),
(48, 89, 'Reservation', 'clicked', '2024-10-29 04:40:26', '131.145.121.206', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6) AppleWebKit/5340 (KHTML, like Gecko) Chrome/36.0.838.0 Mobile Safari/5340', '2024-10-31 20:07:52', '2024-10-31 20:07:52'),
(49, 138, 'Testimonials', 'clicked', '2024-10-02 06:38:10', '151.25.41.13', 'Mozilla/5.0 (Macintosh; PPC Mac OS X 10_7_5 rv:4.0) Gecko/20191218 Firefox/37.0', '2024-10-31 20:07:52', '2024-10-31 20:07:52'),
(50, NULL, 'Contact', 'viewed', '2024-10-15 18:23:29', '34.178.81.169', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_5_0 rv:3.0) Gecko/20160815 Firefox/36.0', '2024-10-31 20:07:52', '2024-10-31 20:07:52'),
(51, 130, 'Contact', 'navigated', '2024-10-10 00:15:44', '222.153.173.195', 'Mozilla/5.0 (Macintosh; PPC Mac OS X 10_8_1) AppleWebKit/5311 (KHTML, like Gecko) Chrome/38.0.839.0 Mobile Safari/5311', '2024-10-31 20:07:52', '2024-10-31 20:07:52'),
(52, 81, 'Reservation', 'navigated', '2024-10-18 01:13:31', '45.81.67.139', 'Opera/8.35 (Windows NT 5.0; sl-SI) Presto/2.10.226 Version/11.00', '2024-10-31 20:07:52', '2024-10-31 20:07:52'),
(53, 183, 'Menu', 'submitted', '2024-10-14 21:41:22', '14.139.182.93', 'Mozilla/5.0 (Windows; U; Windows 98; Win 9x 4.90) AppleWebKit/531.42.2 (KHTML, like Gecko) Version/5.0.5 Safari/531.42.2', '2024-10-31 20:07:52', '2024-10-31 20:07:52'),
(54, NULL, 'Menu', 'submitted', '2024-10-16 00:02:23', '164.96.63.43', 'Opera/8.34 (X11; Linux x86_64; en-US) Presto/2.10.182 Version/10.00', '2024-10-31 20:07:52', '2024-10-31 20:07:52'),
(55, NULL, 'Testimonials', 'navigated', '2024-10-27 03:07:36', '157.129.212.67', 'Mozilla/5.0 (compatible; MSIE 7.0; Windows NT 6.0; Trident/3.0)', '2024-10-31 20:07:52', '2024-10-31 20:07:52'),
(56, 156, 'Menu', 'clicked', '2024-10-20 20:32:32', '211.97.215.98', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_1 like Mac OS X) AppleWebKit/533.1 (KHTML, like Gecko) Version/15.0 EdgiOS/85.01119.62 Mobile/15E148 Safari/533.1', '2024-10-31 20:07:52', '2024-10-31 20:07:52'),
(57, 162, 'Testimonials', 'submitted', '2024-10-21 10:26:38', '140.232.17.73', 'Opera/9.68 (Windows 95; sl-SI) Presto/2.9.322 Version/12.00', '2024-10-31 20:07:52', '2024-10-31 20:07:52'),
(58, 142, 'Menu', 'submitted', '2024-10-06 12:06:01', '5.185.20.1', 'Mozilla/5.0 (Windows CE) AppleWebKit/5352 (KHTML, like Gecko) Chrome/40.0.863.0 Mobile Safari/5352', '2024-10-31 20:07:52', '2024-10-31 20:07:52'),
(59, 84, 'Contact', 'viewed', '2024-10-03 12:22:37', '4.119.140.90', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/4.1)', '2024-10-31 20:07:52', '2024-10-31 20:07:52'),
(60, 57, 'Contact', 'clicked', '2024-10-28 16:00:40', '224.30.101.223', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_4 rv:4.0; nl-NL) AppleWebKit/532.15.2 (KHTML, like Gecko) Version/5.0.1 Safari/532.15.2', '2024-10-31 20:07:52', '2024-10-31 20:07:52'),
(61, NULL, 'Reservation', 'viewed', '2024-10-18 00:44:12', '93.238.188.93', 'Mozilla/5.0 (Macintosh; PPC Mac OS X 10_6_8) AppleWebKit/5340 (KHTML, like Gecko) Chrome/38.0.874.0 Mobile Safari/5340', '2024-10-31 20:07:52', '2024-10-31 20:07:52'),
(62, 179, 'Contact', 'clicked', '2024-10-21 10:02:01', '17.94.24.36', 'Mozilla/5.0 (compatible; MSIE 11.0; Windows NT 5.0; Trident/3.1)', '2024-10-31 20:07:52', '2024-10-31 20:07:52'),
(63, NULL, 'Menu', 'navigated', '2024-10-18 01:35:32', '156.110.200.47', 'Mozilla/5.0 (Windows NT 6.2; sl-SI; rv:1.9.0.20) Gecko/20151213 Firefox/36.0', '2024-10-31 20:07:52', '2024-10-31 20:07:52'),
(64, 80, 'Reservation', 'submitted', '2024-10-03 00:20:45', '230.95.217.181', 'Opera/9.11 (X11; Linux x86_64; en-US) Presto/2.8.183 Version/12.00', '2024-10-31 20:07:52', '2024-10-31 20:07:52'),
(65, 118, 'Testimonials', 'viewed', '2024-10-30 05:01:32', '92.57.116.80', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_7_0 rv:4.0; sl-SI) AppleWebKit/532.41.6 (KHTML, like Gecko) Version/5.0.5 Safari/532.41.6', '2024-10-31 20:07:52', '2024-10-31 20:07:52'),
(66, NULL, 'Home', 'viewed', '2024-10-22 14:27:54', '83.167.82.246', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_4 rv:3.0; nl-NL) AppleWebKit/534.40.6 (KHTML, like Gecko) Version/4.0.1 Safari/534.40.6', '2024-10-31 20:07:52', '2024-10-31 20:07:52'),
(67, 162, 'Menu', 'submitted', '2024-10-03 17:53:11', '243.98.97.244', 'Mozilla/5.0 (Windows NT 6.0; en-US; rv:1.9.0.20) Gecko/20240217 Firefox/37.0', '2024-10-31 20:07:52', '2024-10-31 20:07:52'),
(68, NULL, 'Testimonials', 'submitted', '2024-10-05 01:55:03', '15.40.30.128', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_0 rv:2.0; nl-NL) AppleWebKit/535.47.2 (KHTML, like Gecko) Version/5.1 Safari/535.47.2', '2024-10-31 20:07:52', '2024-10-31 20:07:52'),
(69, 142, 'Testimonials', 'viewed', '2024-10-26 19:10:49', '106.231.10.39', 'Mozilla/5.0 (Windows NT 5.0) AppleWebKit/5351 (KHTML, like Gecko) Chrome/36.0.863.0 Mobile Safari/5351', '2024-10-31 20:07:53', '2024-10-31 20:07:53'),
(70, NULL, 'Testimonials', 'viewed', '2024-10-11 16:57:24', '155.67.217.253', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/85.0.4696.55 Safari/537.1 Edg/85.01044.4', '2024-10-31 20:07:53', '2024-10-31 20:07:53'),
(71, NULL, 'Home', 'clicked', '2024-10-18 04:32:53', '55.63.102.85', 'Mozilla/5.0 (compatible; MSIE 11.0; Windows 98; Win 9x 4.90; Trident/4.1)', '2024-10-31 20:07:53', '2024-10-31 20:07:53'),
(72, 139, 'Contact', 'navigated', '2024-10-20 20:03:27', '209.128.216.68', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_0 like Mac OS X) AppleWebKit/532.2 (KHTML, like Gecko) Version/15.0 EdgiOS/89.01016.46 Mobile/15E148 Safari/532.2', '2024-10-31 20:07:53', '2024-10-31 20:07:53'),
(73, 15, 'Home', 'submitted', '2024-10-17 03:33:50', '142.27.64.184', 'Mozilla/5.0 (X11; Linux i686; rv:5.0) Gecko/20110121 Firefox/37.0', '2024-10-31 20:07:53', '2024-10-31 20:07:53'),
(74, NULL, 'Home', 'clicked', '2024-10-25 04:00:49', '111.218.130.146', 'Mozilla/5.0 (compatible; MSIE 6.0; Windows NT 6.0; Trident/5.0)', '2024-10-31 20:07:53', '2024-10-31 20:07:53'),
(75, NULL, 'Contact', 'submitted', '2024-10-13 03:41:04', '168.117.46.135', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_9 rv:6.0; sl-SI) AppleWebKit/531.14.5 (KHTML, like Gecko) Version/4.0 Safari/531.14.5', '2024-10-31 20:07:53', '2024-10-31 20:07:53'),
(76, 17, 'Contact', 'submitted', '2024-10-24 15:59:56', '132.25.241.146', 'Opera/9.94 (X11; Linux x86_64; sl-SI) Presto/2.9.327 Version/11.00', '2024-10-31 20:07:53', '2024-10-31 20:07:53'),
(77, 18, 'Contact', 'submitted', '2024-10-29 21:53:25', '109.201.217.85', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_5_7 rv:2.0; en-US) AppleWebKit/535.19.3 (KHTML, like Gecko) Version/4.1 Safari/535.19.3', '2024-10-31 20:07:53', '2024-10-31 20:07:53'),
(78, NULL, 'Contact', 'clicked', '2024-10-05 23:54:00', '137.34.65.242', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_6) AppleWebKit/531.0 (KHTML, like Gecko) Chrome/98.0.4414.76 Safari/531.0 Edg/98.01017.23', '2024-10-31 20:07:53', '2024-10-31 20:07:53'),
(79, NULL, 'Reservation', 'viewed', '2024-10-12 02:00:03', '192.122.243.178', 'Mozilla/5.0 (X11; Linux i686; rv:6.0) Gecko/20110203 Firefox/35.0', '2024-10-31 20:07:53', '2024-10-31 20:07:53'),
(80, 109, 'Reservation', 'navigated', '2024-10-20 21:00:32', '250.121.28.32', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/5361 (KHTML, like Gecko) Chrome/40.0.860.0 Mobile Safari/5361', '2024-10-31 20:07:53', '2024-10-31 20:07:53'),
(81, 21, 'Contact', 'viewed', '2024-10-15 20:54:39', '213.196.247.221', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_5) AppleWebKit/5322 (KHTML, like Gecko) Chrome/40.0.880.0 Mobile Safari/5322', '2024-10-31 20:07:53', '2024-10-31 20:07:53'),
(82, NULL, 'Reservation', 'viewed', '2024-10-23 14:56:22', '180.183.27.210', 'Mozilla/5.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/3.1)', '2024-10-31 20:07:53', '2024-10-31 20:07:53'),
(83, NULL, 'Reservation', 'viewed', '2024-10-11 11:11:53', '93.143.195.1', 'Mozilla/5.0 (compatible; MSIE 5.0; Windows 95; Trident/3.1)', '2024-10-31 20:07:53', '2024-10-31 20:07:53'),
(84, NULL, 'Reservation', 'clicked', '2024-10-05 21:54:26', '186.170.27.41', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_6_6 rv:6.0; sl-SI) AppleWebKit/535.44.2 (KHTML, like Gecko) Version/4.1 Safari/535.44.2', '2024-10-31 20:07:53', '2024-10-31 20:07:53'),
(85, NULL, 'Testimonials', 'submitted', '2024-10-08 18:44:42', '5.84.209.197', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_7 rv:6.0) Gecko/20240407 Firefox/35.0', '2024-10-31 20:07:53', '2024-10-31 20:07:53'),
(86, 20, 'Contact', 'submitted', '2024-10-27 02:16:29', '82.12.121.31', 'Mozilla/5.0 (compatible; MSIE 5.0; Windows NT 6.0; Trident/4.1)', '2024-10-31 20:07:53', '2024-10-31 20:07:53'),
(87, 109, 'Contact', 'navigated', '2024-10-15 22:38:07', '187.193.224.201', 'Mozilla/5.0 (Macintosh; PPC Mac OS X 10_5_5) AppleWebKit/5360 (KHTML, like Gecko) Chrome/36.0.805.0 Mobile Safari/5360', '2024-10-31 20:07:53', '2024-10-31 20:07:53'),
(88, NULL, 'Contact', 'viewed', '2024-10-19 11:35:03', '141.205.151.188', 'Opera/9.65 (X11; Linux x86_64; en-US) Presto/2.9.315 Version/10.00', '2024-10-31 20:07:53', '2024-10-31 20:07:53'),
(89, 52, 'Home', 'clicked', '2024-10-11 21:08:27', '211.165.35.74', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_8_0 rv:2.0; en-US) AppleWebKit/535.41.1 (KHTML, like Gecko) Version/5.0.5 Safari/535.41.1', '2024-10-31 20:07:53', '2024-10-31 20:07:53'),
(90, 111, 'Testimonials', 'navigated', '2024-10-20 15:42:38', '159.11.30.113', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 5.0; Trident/4.1)', '2024-10-31 20:07:53', '2024-10-31 20:07:53'),
(91, NULL, 'Home', 'navigated', '2024-10-03 01:46:55', '133.159.91.38', 'Mozilla/5.0 (Windows NT 4.0) AppleWebKit/5360 (KHTML, like Gecko) Chrome/38.0.823.0 Mobile Safari/5360', '2024-10-31 20:07:53', '2024-10-31 20:07:53'),
(92, NULL, 'Home', 'viewed', '2024-10-16 19:55:22', '76.124.101.51', 'Mozilla/5.0 (iPad; CPU OS 7_2_1 like Mac OS X; sl-SI) AppleWebKit/531.41.1 (KHTML, like Gecko) Version/4.0.5 Mobile/8B111 Safari/6531.41.1', '2024-10-31 20:07:53', '2024-10-31 20:07:53'),
(93, 39, 'Reservation', 'clicked', '2024-10-04 01:37:10', '29.197.227.167', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_7 rv:2.0; en-US) AppleWebKit/535.5.3 (KHTML, like Gecko) Version/5.0 Safari/535.5.3', '2024-10-31 20:07:53', '2024-10-31 20:07:53'),
(94, NULL, 'Testimonials', 'navigated', '2024-10-13 16:10:29', '246.245.198.91', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_1 like Mac OS X) AppleWebKit/534.0 (KHTML, like Gecko) Version/15.0 EdgiOS/79.01086.36 Mobile/15E148 Safari/534.0', '2024-10-31 20:07:53', '2024-10-31 20:07:53'),
(95, NULL, 'Home', 'viewed', '2024-10-10 14:34:41', '60.69.186.48', 'Mozilla/5.0 (Windows 98; Win 9x 4.90) AppleWebKit/5320 (KHTML, like Gecko) Chrome/37.0.861.0 Mobile Safari/5320', '2024-10-31 20:07:53', '2024-10-31 20:07:53'),
(96, NULL, 'Testimonials', 'viewed', '2024-10-15 21:59:43', '204.151.88.113', 'Mozilla/5.0 (Windows 95; nl-NL; rv:1.9.0.20) Gecko/20141014 Firefox/36.0', '2024-10-31 20:07:53', '2024-10-31 20:07:53'),
(97, NULL, 'Reservation', 'clicked', '2024-10-19 17:31:46', '187.244.239.117', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_8_9) AppleWebKit/531.2 (KHTML, like Gecko) Chrome/93.0.4210.38 Safari/531.2 Edg/93.01026.18', '2024-10-31 20:07:53', '2024-10-31 20:07:53'),
(98, NULL, 'Contact', 'submitted', '2024-10-25 07:50:13', '86.216.103.143', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 4.0; Trident/4.0)', '2024-10-31 20:07:53', '2024-10-31 20:07:53'),
(99, NULL, 'Reservation', 'submitted', '2024-10-14 12:53:08', '36.215.17.140', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_5_3) AppleWebKit/5312 (KHTML, like Gecko) Chrome/39.0.878.0 Mobile Safari/5312', '2024-10-31 20:07:53', '2024-10-31 20:07:53'),
(100, NULL, 'Contact', 'submitted', '2024-10-28 18:53:12', '106.99.9.167', 'Opera/9.48 (X11; Linux i686; nl-NL) Presto/2.9.166 Version/10.00', '2024-10-31 20:07:53', '2024-10-31 20:07:53'),
(101, NULL, 'Menu', 'navigated', '2024-10-04 22:53:22', '212.186.252.44', 'Opera/9.89 (Windows NT 6.0; sl-SI) Presto/2.12.160 Version/12.00', '2024-10-31 20:07:53', '2024-10-31 20:07:53'),
(102, NULL, 'Testimonials', 'submitted', '2024-10-26 20:30:40', '134.105.28.65', 'Mozilla/5.0 (Macintosh; PPC Mac OS X 10_8_6 rv:5.0) Gecko/20111104 Firefox/35.0', '2024-10-31 20:07:53', '2024-10-31 20:07:53'),
(103, NULL, 'Menu', 'clicked', '2024-10-06 16:49:27', '254.28.74.208', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/5360 (KHTML, like Gecko) Chrome/36.0.822.0 Mobile Safari/5360', '2024-10-31 20:07:53', '2024-10-31 20:07:53'),
(104, 152, 'Home', 'clicked', '2024-10-10 00:40:09', '145.36.48.45', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/5321 (KHTML, like Gecko) Chrome/40.0.841.0 Mobile Safari/5321', '2024-10-31 20:07:53', '2024-10-31 20:07:53'),
(105, NULL, 'Contact', 'navigated', '2024-10-21 11:29:12', '140.102.188.218', 'Mozilla/5.0 (Windows CE) AppleWebKit/534.2 (KHTML, like Gecko) Chrome/89.0.4308.87 Safari/534.2 Edg/89.01046.63', '2024-10-31 20:07:53', '2024-10-31 20:07:53'),
(106, 91, 'Testimonials', 'viewed', '2024-10-18 13:46:30', '69.191.54.71', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_2 like Mac OS X) AppleWebKit/537.0 (KHTML, like Gecko) Version/15.0 EdgiOS/95.01136.55 Mobile/15E148 Safari/537.0', '2024-10-31 20:07:53', '2024-10-31 20:07:53'),
(107, NULL, 'Contact', 'clicked', '2024-10-04 10:25:31', '111.222.74.132', 'Mozilla/5.0 (Macintosh; PPC Mac OS X 10_5_7) AppleWebKit/5341 (KHTML, like Gecko) Chrome/37.0.826.0 Mobile Safari/5341', '2024-10-31 20:07:53', '2024-10-31 20:07:53'),
(108, 173, 'Testimonials', 'submitted', '2024-10-03 23:32:09', '207.244.11.219', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_5_3 rv:3.0) Gecko/20140316 Firefox/36.0', '2024-10-31 20:07:53', '2024-10-31 20:07:53'),
(109, NULL, 'Menu', 'viewed', '2024-10-25 19:17:13', '255.103.46.50', 'Opera/8.12 (X11; Linux x86_64; sl-SI) Presto/2.12.268 Version/11.00', '2024-10-31 20:07:53', '2024-10-31 20:07:53'),
(110, NULL, 'Testimonials', 'viewed', '2024-10-27 11:24:21', '38.188.148.243', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/97.0.4558.54 Safari/537.1 EdgA/97.01072.26', '2024-10-31 20:07:53', '2024-10-31 20:07:53'),
(111, 134, 'Menu', 'submitted', '2024-10-16 16:08:47', '222.168.179.3', 'Opera/8.17 (X11; Linux i686; nl-NL) Presto/2.8.308 Version/11.00', '2024-10-31 20:07:53', '2024-10-31 20:07:53'),
(112, NULL, 'Contact', 'clicked', '2024-10-11 11:06:44', '179.247.45.90', 'Mozilla/5.0 (compatible; MSIE 6.0; Windows NT 6.0; Trident/3.0)', '2024-10-31 20:07:53', '2024-10-31 20:07:53'),
(113, 115, 'Menu', 'viewed', '2024-10-25 00:14:09', '87.16.151.56', 'Mozilla/5.0 (Windows NT 5.2; sl-SI; rv:1.9.2.20) Gecko/20181222 Firefox/36.0', '2024-10-31 20:07:53', '2024-10-31 20:07:53'),
(114, NULL, 'Testimonials', 'viewed', '2024-10-26 19:02:26', '109.112.121.100', 'Opera/9.93 (X11; Linux x86_64; sl-SI) Presto/2.9.201 Version/11.00', '2024-10-31 20:07:53', '2024-10-31 20:07:53'),
(115, 41, 'Reservation', 'submitted', '2024-10-23 14:46:50', '213.58.51.203', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_8_8) AppleWebKit/5342 (KHTML, like Gecko) Chrome/40.0.866.0 Mobile Safari/5342', '2024-10-31 20:07:53', '2024-10-31 20:07:53'),
(116, 17, 'Home', 'clicked', '2024-10-04 04:24:17', '192.174.139.156', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_1) AppleWebKit/5331 (KHTML, like Gecko) Chrome/40.0.838.0 Mobile Safari/5331', '2024-10-31 20:07:53', '2024-10-31 20:07:53'),
(117, 12, 'Menu', 'viewed', '2024-10-29 23:59:47', '126.174.52.217', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_7_0 rv:4.0; sl-SI) AppleWebKit/531.34.2 (KHTML, like Gecko) Version/4.0.1 Safari/531.34.2', '2024-10-31 20:07:53', '2024-10-31 20:07:53'),
(118, NULL, 'Home', 'submitted', '2024-10-02 21:49:11', '49.4.132.244', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_0 rv:6.0) Gecko/20220810 Firefox/35.0', '2024-10-31 20:07:53', '2024-10-31 20:07:53'),
(119, NULL, 'Contact', 'submitted', '2024-10-11 09:30:41', '16.6.50.68', 'Mozilla/5.0 (iPad; CPU OS 7_2_2 like Mac OS X; nl-NL) AppleWebKit/535.25.2 (KHTML, like Gecko) Version/3.0.5 Mobile/8B116 Safari/6535.25.2', '2024-10-31 20:07:53', '2024-10-31 20:07:53'),
(120, 99, 'Home', 'navigated', '2024-10-14 06:01:26', '113.162.228.25', 'Mozilla/5.0 (Windows NT 5.0; sl-SI; rv:1.9.0.20) Gecko/20140617 Firefox/35.0', '2024-10-31 20:07:53', '2024-10-31 20:07:53'),
(121, NULL, 'Reservation', 'clicked', '2024-10-20 16:11:42', '151.156.18.255', 'Opera/9.75 (Windows NT 6.0; sl-SI) Presto/2.11.190 Version/10.00', '2024-10-31 20:07:53', '2024-10-31 20:07:53'),
(122, 46, 'Testimonials', 'submitted', '2024-10-10 02:15:38', '64.168.105.239', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/531.2 (KHTML, like Gecko) Chrome/93.0.4387.32 Safari/531.2 EdgA/93.01076.30', '2024-10-31 20:07:53', '2024-10-31 20:07:53'),
(123, 17, 'Testimonials', 'clicked', '2024-10-26 02:02:15', '12.42.252.58', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_7_0 rv:6.0; sl-SI) AppleWebKit/531.23.3 (KHTML, like Gecko) Version/4.0.2 Safari/531.23.3', '2024-10-31 20:07:53', '2024-10-31 20:07:53'),
(124, NULL, 'Menu', 'viewed', '2024-10-12 15:45:33', '165.154.46.251', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/533.0 (KHTML, like Gecko) Chrome/89.0.4143.93 Safari/533.0 EdgA/89.01003.90', '2024-10-31 20:07:53', '2024-10-31 20:07:53'),
(125, 168, 'Testimonials', 'submitted', '2024-10-12 03:26:59', '235.229.100.139', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/5320 (KHTML, like Gecko) Chrome/40.0.845.0 Mobile Safari/5320', '2024-10-31 20:07:53', '2024-10-31 20:07:53'),
(126, NULL, 'Home', 'submitted', '2024-10-19 04:35:05', '88.203.77.231', 'Opera/9.90 (X11; Linux x86_64; en-US) Presto/2.8.227 Version/10.00', '2024-10-31 20:07:53', '2024-10-31 20:07:53'),
(127, NULL, 'Testimonials', 'clicked', '2024-10-24 10:22:09', '164.243.107.108', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_2_1 like Mac OS X; en-US) AppleWebKit/535.46.5 (KHTML, like Gecko) Version/4.0.5 Mobile/8B118 Safari/6535.46.5', '2024-10-31 20:07:53', '2024-10-31 20:07:53'),
(128, 39, 'Reservation', 'navigated', '2024-10-15 02:05:21', '182.181.115.164', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0 rv:4.0; sl-SI) AppleWebKit/532.45.4 (KHTML, like Gecko) Version/5.0.4 Safari/532.45.4', '2024-10-31 20:07:53', '2024-10-31 20:07:53'),
(129, 85, 'Testimonials', 'submitted', '2024-10-21 10:02:33', '82.40.132.8', 'Opera/8.48 (Windows NT 5.01; sl-SI) Presto/2.11.266 Version/12.00', '2024-10-31 20:07:53', '2024-10-31 20:07:53'),
(130, 31, 'Contact', 'viewed', '2024-10-12 19:02:28', '172.47.95.199', 'Opera/9.10 (X11; Linux i686; en-US) Presto/2.11.220 Version/10.00', '2024-10-31 20:07:53', '2024-10-31 20:07:53'),
(131, NULL, 'Menu', 'viewed', '2024-10-10 23:14:35', '211.40.248.194', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 5.1; Trident/4.1)', '2024-10-31 20:07:53', '2024-10-31 20:07:53'),
(132, NULL, 'Home', 'submitted', '2024-10-08 02:09:06', '230.247.203.47', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_8_0) AppleWebKit/5320 (KHTML, like Gecko) Chrome/36.0.805.0 Mobile Safari/5320', '2024-10-31 20:07:53', '2024-10-31 20:07:53'),
(133, NULL, 'Home', 'navigated', '2024-10-04 12:30:20', '97.195.118.140', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/5332 (KHTML, like Gecko) Chrome/37.0.850.0 Mobile Safari/5332', '2024-10-31 20:07:54', '2024-10-31 20:07:54'),
(134, 22, 'Home', 'submitted', '2024-10-22 16:58:53', '228.157.26.120', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/5360 (KHTML, like Gecko) Chrome/36.0.844.0 Mobile Safari/5360', '2024-10-31 20:07:54', '2024-10-31 20:07:54'),
(135, 53, 'Home', 'clicked', '2024-10-26 05:04:53', '243.142.181.112', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_5_5 rv:4.0; en-US) AppleWebKit/532.47.7 (KHTML, like Gecko) Version/4.0.5 Safari/532.47.7', '2024-10-31 20:07:54', '2024-10-31 20:07:54'),
(136, NULL, 'Contact', 'viewed', '2024-10-27 22:43:45', '114.143.24.7', 'Opera/8.90 (X11; Linux x86_64; en-US) Presto/2.11.169 Version/10.00', '2024-10-31 20:07:54', '2024-10-31 20:07:54'),
(137, 65, 'Home', 'navigated', '2024-10-02 04:37:10', '120.103.43.229', 'Mozilla/5.0 (compatible; MSIE 8.0; Windows 98; Trident/3.1)', '2024-10-31 20:07:54', '2024-10-31 20:07:54'),
(138, NULL, 'Reservation', 'viewed', '2024-10-14 00:46:14', '39.187.161.140', 'Mozilla/5.0 (Windows NT 5.0) AppleWebKit/5320 (KHTML, like Gecko) Chrome/39.0.882.0 Mobile Safari/5320', '2024-10-31 20:07:54', '2024-10-31 20:07:54'),
(139, 28, 'Menu', 'submitted', '2024-10-12 21:54:28', '79.222.236.202', 'Mozilla/5.0 (Macintosh; PPC Mac OS X 10_8_8 rv:4.0; en-US) AppleWebKit/533.38.2 (KHTML, like Gecko) Version/4.0.3 Safari/533.38.2', '2024-10-31 20:07:54', '2024-10-31 20:07:54'),
(140, 173, 'Testimonials', 'clicked', '2024-10-11 11:38:18', '169.89.95.80', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_7) AppleWebKit/5311 (KHTML, like Gecko) Chrome/40.0.863.0 Mobile Safari/5311', '2024-10-31 20:07:54', '2024-10-31 20:07:54'),
(141, 165, 'Menu', 'navigated', '2024-10-28 20:40:07', '13.83.150.114', 'Mozilla/5.0 (Windows 95) AppleWebKit/5321 (KHTML, like Gecko) Chrome/40.0.852.0 Mobile Safari/5321', '2024-10-31 20:07:54', '2024-10-31 20:07:54'),
(142, NULL, 'Menu', 'viewed', '2024-10-17 15:04:37', '228.24.170.154', 'Mozilla/5.0 (compatible; MSIE 6.0; Windows NT 5.2; Trident/4.1)', '2024-10-31 20:07:54', '2024-10-31 20:07:54'),
(143, NULL, 'Testimonials', 'submitted', '2024-10-30 16:09:33', '140.213.33.44', 'Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 5.1; Trident/4.0)', '2024-10-31 20:07:54', '2024-10-31 20:07:54'),
(144, 93, 'Home', 'submitted', '2024-10-15 02:08:09', '44.61.249.235', 'Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; Trident/5.1)', '2024-10-31 20:07:54', '2024-10-31 20:07:54'),
(145, NULL, 'Home', 'submitted', '2024-10-21 02:00:57', '121.196.104.60', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_7_7 rv:4.0) Gecko/20190922 Firefox/37.0', '2024-10-31 20:07:54', '2024-10-31 20:07:54'),
(146, 53, 'Menu', 'navigated', '2024-10-17 01:53:06', '194.244.241.136', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_8_8) AppleWebKit/5310 (KHTML, like Gecko) Chrome/40.0.812.0 Mobile Safari/5310', '2024-10-31 20:07:54', '2024-10-31 20:07:54'),
(147, NULL, 'Menu', 'submitted', '2024-10-17 14:22:48', '253.125.141.14', 'Mozilla/5.0 (iPad; CPU OS 7_1_1 like Mac OS X; nl-NL) AppleWebKit/533.49.3 (KHTML, like Gecko) Version/3.0.5 Mobile/8B116 Safari/6533.49.3', '2024-10-31 20:07:54', '2024-10-31 20:07:54'),
(148, 172, 'Testimonials', 'submitted', '2024-10-26 23:47:41', '113.95.229.40', 'Mozilla/5.0 (Windows; U; Windows NT 4.0) AppleWebKit/531.17.7 (KHTML, like Gecko) Version/5.1 Safari/531.17.7', '2024-10-31 20:07:54', '2024-10-31 20:07:54'),
(149, NULL, 'Home', 'viewed', '2024-10-19 13:12:13', '59.173.42.248', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.2 (KHTML, like Gecko) Chrome/83.0.4127.90 Safari/537.2 EdgA/83.01083.42', '2024-10-31 20:07:54', '2024-10-31 20:07:54'),
(150, 86, 'Reservation', 'navigated', '2024-10-26 06:45:06', '125.239.33.133', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_0 like Mac OS X) AppleWebKit/531.2 (KHTML, like Gecko) Version/15.0 EdgiOS/81.01015.62 Mobile/15E148 Safari/531.2', '2024-10-31 20:07:54', '2024-10-31 20:07:54'),
(151, 4, 'Contact', 'viewed', '2024-10-22 16:30:39', '99.31.108.40', 'Mozilla/5.0 (X11; Linux x86_64; rv:5.0) Gecko/20110806 Firefox/37.0', '2024-10-31 20:07:54', '2024-10-31 20:07:54'),
(152, NULL, 'Menu', 'navigated', '2024-10-05 10:08:10', '87.73.135.91', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_1 like Mac OS X; nl-NL) AppleWebKit/533.47.2 (KHTML, like Gecko) Version/4.0.5 Mobile/8B114 Safari/6533.47.2', '2024-10-31 20:07:54', '2024-10-31 20:07:54'),
(153, 128, 'Home', 'navigated', '2024-10-17 00:23:50', '212.233.12.77', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_7) AppleWebKit/5330 (KHTML, like Gecko) Chrome/38.0.821.0 Mobile Safari/5330', '2024-10-31 20:07:54', '2024-10-31 20:07:54'),
(154, NULL, 'Reservation', 'submitted', '2024-10-18 14:21:01', '104.135.102.70', 'Opera/8.86 (Windows 98; Win 9x 4.90; nl-NL) Presto/2.11.272 Version/12.00', '2024-10-31 20:07:54', '2024-10-31 20:07:54'),
(155, NULL, 'Contact', 'viewed', '2024-10-08 05:47:17', '49.24.246.7', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_7_9 rv:6.0) Gecko/20140118 Firefox/37.0', '2024-10-31 20:07:54', '2024-10-31 20:07:54'),
(156, 5, 'Reservation', 'viewed', '2024-10-26 08:46:06', '117.160.142.252', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_1 like Mac OS X) AppleWebKit/532.1 (KHTML, like Gecko) Version/15.0 EdgiOS/85.01079.7 Mobile/15E148 Safari/532.1', '2024-10-31 20:07:54', '2024-10-31 20:07:54'),
(157, 59, 'Testimonials', 'navigated', '2024-10-03 20:57:30', '135.105.34.56', 'Mozilla/5.0 (Windows NT 5.0; sl-SI; rv:1.9.1.20) Gecko/20180607 Firefox/37.0', '2024-10-31 20:07:54', '2024-10-31 20:07:54'),
(158, NULL, 'Menu', 'submitted', '2024-10-15 09:34:58', '233.24.107.222', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_2 like Mac OS X) AppleWebKit/532.0 (KHTML, like Gecko) Version/15.0 EdgiOS/85.01024.20 Mobile/15E148 Safari/532.0', '2024-10-31 20:07:54', '2024-10-31 20:07:54'),
(159, NULL, 'Menu', 'viewed', '2024-10-15 12:42:48', '105.213.141.39', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/5311 (KHTML, like Gecko) Chrome/40.0.884.0 Mobile Safari/5311', '2024-10-31 20:07:54', '2024-10-31 20:07:54'),
(160, NULL, 'Reservation', 'viewed', '2024-10-06 18:58:51', '4.155.165.4', 'Mozilla/5.0 (Windows CE) AppleWebKit/531.0 (KHTML, like Gecko) Chrome/90.0.4593.74 Safari/531.0 Edg/90.01067.84', '2024-10-31 20:07:54', '2024-10-31 20:07:54'),
(161, 154, 'Menu', 'submitted', '2024-10-13 14:50:57', '6.91.82.190', 'Mozilla/5.0 (Windows CE; sl-SI; rv:1.9.0.20) Gecko/20200531 Firefox/37.0', '2024-10-31 20:07:54', '2024-10-31 20:07:54'),
(162, 164, 'Reservation', 'navigated', '2024-10-22 18:23:14', '110.88.222.24', 'Mozilla/5.0 (Windows NT 5.01) AppleWebKit/5360 (KHTML, like Gecko) Chrome/40.0.866.0 Mobile Safari/5360', '2024-10-31 20:07:54', '2024-10-31 20:07:54'),
(163, 175, 'Home', 'navigated', '2024-10-10 22:56:38', '34.18.169.160', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_5 rv:2.0; sl-SI) AppleWebKit/532.23.7 (KHTML, like Gecko) Version/4.0 Safari/532.23.7', '2024-10-31 20:07:54', '2024-10-31 20:07:54'),
(164, 81, 'Contact', 'viewed', '2024-10-21 03:49:38', '154.50.196.178', 'Mozilla/5.0 (Windows; U; Windows NT 5.0) AppleWebKit/531.15.1 (KHTML, like Gecko) Version/4.1 Safari/531.15.1', '2024-10-31 20:07:54', '2024-10-31 20:07:54'),
(165, 22, 'Home', 'viewed', '2024-10-24 11:25:13', '145.14.141.52', 'Opera/9.53 (Windows NT 5.01; sl-SI) Presto/2.12.254 Version/12.00', '2024-10-31 20:07:54', '2024-10-31 20:07:54'),
(166, 158, 'Home', 'viewed', '2024-10-19 02:14:25', '65.121.236.84', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_7_1 rv:5.0; sl-SI) AppleWebKit/531.32.3 (KHTML, like Gecko) Version/5.0.4 Safari/531.32.3', '2024-10-31 20:07:54', '2024-10-31 20:07:54'),
(167, NULL, 'Testimonials', 'submitted', '2024-10-09 20:00:56', '131.197.239.238', 'Mozilla/5.0 (Windows NT 5.0) AppleWebKit/531.2 (KHTML, like Gecko) Chrome/96.0.4695.94 Safari/531.2 Edg/96.01035.68', '2024-10-31 20:07:54', '2024-10-31 20:07:54'),
(168, NULL, 'Testimonials', 'navigated', '2024-10-12 21:44:17', '166.240.155.206', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/534.1 (KHTML, like Gecko) Chrome/99.0.4287.91 Safari/534.1 EdgA/99.01018.68', '2024-10-31 20:07:54', '2024-10-31 20:07:54'),
(169, 122, 'Home', 'submitted', '2024-10-10 02:51:34', '191.65.155.205', 'Mozilla/5.0 (Windows 98) AppleWebKit/5310 (KHTML, like Gecko) Chrome/36.0.897.0 Mobile Safari/5310', '2024-10-31 20:07:54', '2024-10-31 20:07:54'),
(170, 166, 'Contact', 'viewed', '2024-10-14 15:20:08', '158.188.170.55', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/533.1 (KHTML, like Gecko) Chrome/85.0.4657.37 Safari/533.1 EdgA/85.01102.33', '2024-10-31 20:07:54', '2024-10-31 20:07:54'),
(171, NULL, 'Testimonials', 'submitted', '2024-10-04 11:16:59', '250.7.144.25', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_9 rv:3.0; nl-NL) AppleWebKit/531.11.6 (KHTML, like Gecko) Version/4.1 Safari/531.11.6', '2024-10-31 20:07:54', '2024-10-31 20:07:54'),
(172, NULL, 'Contact', 'submitted', '2024-10-14 20:56:00', '210.27.212.178', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_0_1 like Mac OS X; sl-SI) AppleWebKit/532.35.4 (KHTML, like Gecko) Version/4.0.5 Mobile/8B112 Safari/6532.35.4', '2024-10-31 20:07:54', '2024-10-31 20:07:54'),
(173, NULL, 'Reservation', 'clicked', '2024-10-09 07:03:29', '28.185.234.2', 'Opera/8.73 (Windows NT 6.2; en-US) Presto/2.12.314 Version/10.00', '2024-10-31 20:07:54', '2024-10-31 20:07:54'),
(174, NULL, 'Menu', 'clicked', '2024-10-11 23:59:01', '173.34.222.198', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/536.1 (KHTML, like Gecko) Chrome/91.0.4779.82 Safari/536.1 EdgA/91.01104.30', '2024-10-31 20:07:54', '2024-10-31 20:07:54'),
(175, 33, 'Testimonials', 'submitted', '2024-10-30 04:15:12', '19.76.0.41', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_4) AppleWebKit/5312 (KHTML, like Gecko) Chrome/39.0.893.0 Mobile Safari/5312', '2024-10-31 20:07:54', '2024-10-31 20:07:54'),
(176, 141, 'Testimonials', 'viewed', '2024-10-31 18:50:28', '189.29.193.247', 'Opera/8.93 (X11; Linux i686; en-US) Presto/2.9.245 Version/11.00', '2024-10-31 20:07:54', '2024-10-31 20:07:54'),
(177, NULL, 'Testimonials', 'clicked', '2024-10-25 14:34:04', '211.35.24.45', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/5322 (KHTML, like Gecko) Chrome/36.0.829.0 Mobile Safari/5322', '2024-10-31 20:07:54', '2024-10-31 20:07:54'),
(178, 156, 'Menu', 'navigated', '2024-10-10 22:07:21', '34.244.141.217', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_1) AppleWebKit/536.2 (KHTML, like Gecko) Chrome/89.0.4453.47 Safari/536.2 Edg/89.01055.78', '2024-10-31 20:07:54', '2024-10-31 20:07:54'),
(179, 46, 'Home', 'navigated', '2024-10-17 10:02:51', '18.242.83.105', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_5_8) AppleWebKit/534.0 (KHTML, like Gecko) Chrome/89.0.4632.42 Safari/534.0 Edg/89.01087.78', '2024-10-31 20:07:54', '2024-10-31 20:07:54'),
(180, NULL, 'Menu', 'submitted', '2024-10-28 00:05:44', '31.183.160.207', 'Mozilla/5.0 (compatible; MSIE 7.0; Windows NT 5.01; Trident/4.1)', '2024-10-31 20:07:54', '2024-10-31 20:07:54'),
(181, 22, 'Menu', 'submitted', '2024-10-02 03:46:13', '190.193.55.126', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/534.1 (KHTML, like Gecko) Chrome/84.0.4213.22 Safari/534.1 EdgA/84.01065.42', '2024-10-31 20:07:54', '2024-10-31 20:07:54'),
(182, 42, 'Contact', 'clicked', '2024-10-18 08:26:41', '81.186.130.249', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_7_6 rv:6.0) Gecko/20210114 Firefox/37.0', '2024-10-31 20:07:54', '2024-10-31 20:07:54'),
(183, 147, 'Home', 'navigated', '2024-10-25 05:31:17', '19.225.10.104', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_5_7 rv:4.0; en-US) AppleWebKit/531.10.1 (KHTML, like Gecko) Version/4.0.2 Safari/531.10.1', '2024-10-31 20:07:54', '2024-10-31 20:07:54'),
(184, NULL, 'Testimonials', 'navigated', '2024-10-13 07:54:50', '240.14.136.245', 'Mozilla/5.0 (Macintosh; PPC Mac OS X 10_8_6) AppleWebKit/531.1 (KHTML, like Gecko) Chrome/92.0.4571.45 Safari/531.1 Edg/92.01108.14', '2024-10-31 20:07:54', '2024-10-31 20:07:54'),
(185, 126, 'Testimonials', 'clicked', '2024-10-25 21:33:00', '36.93.61.202', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_8 rv:2.0) Gecko/20100312 Firefox/37.0', '2024-10-31 20:07:54', '2024-10-31 20:07:54'),
(186, NULL, 'Testimonials', 'viewed', '2024-10-21 23:45:18', '220.71.237.247', 'Mozilla/5.0 (compatible; MSIE 8.0; Windows 95; Trident/5.0)', '2024-10-31 20:07:54', '2024-10-31 20:07:54'),
(187, 4, 'Menu', 'navigated', '2024-10-04 14:30:30', '126.151.233.241', 'Mozilla/5.0 (compatible; MSIE 6.0; Windows NT 6.0; Trident/3.0)', '2024-10-31 20:07:54', '2024-10-31 20:07:54'),
(188, NULL, 'Contact', 'submitted', '2024-10-31 11:27:07', '193.132.203.219', 'Opera/8.68 (X11; Linux x86_64; nl-NL) Presto/2.8.163 Version/10.00', '2024-10-31 20:07:54', '2024-10-31 20:07:54'),
(189, 94, 'Home', 'submitted', '2024-10-21 02:00:31', '115.171.15.34', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_2 like Mac OS X; nl-NL) AppleWebKit/533.33.4 (KHTML, like Gecko) Version/3.0.5 Mobile/8B115 Safari/6533.33.4', '2024-10-31 20:07:54', '2024-10-31 20:07:54'),
(190, 177, 'Testimonials', 'submitted', '2024-10-14 01:03:12', '45.238.174.142', 'Mozilla/5.0 (compatible; MSIE 5.0; Windows NT 5.2; Trident/3.1)', '2024-10-31 20:07:54', '2024-10-31 20:07:54'),
(191, NULL, 'Testimonials', 'viewed', '2024-10-14 09:54:49', '84.77.107.125', 'Mozilla/5.0 (Windows; U; Windows NT 5.2) AppleWebKit/533.19.2 (KHTML, like Gecko) Version/5.0.1 Safari/533.19.2', '2024-10-31 20:07:54', '2024-10-31 20:07:54'),
(192, NULL, 'Testimonials', 'clicked', '2024-10-26 00:17:15', '124.35.136.145', 'Mozilla/5.0 (Windows; U; Windows NT 5.01) AppleWebKit/531.40.6 (KHTML, like Gecko) Version/5.0.1 Safari/531.40.6', '2024-10-31 20:07:54', '2024-10-31 20:07:54'),
(193, NULL, 'Contact', 'viewed', '2024-10-28 11:07:50', '214.136.240.69', 'Opera/8.59 (Windows 95; nl-NL) Presto/2.10.307 Version/12.00', '2024-10-31 20:07:54', '2024-10-31 20:07:54'),
(194, 89, 'Reservation', 'viewed', '2024-10-04 21:57:42', '112.208.100.165', 'Mozilla/5.0 (X11; Linux x86_64; rv:6.0) Gecko/20100310 Firefox/37.0', '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(195, 120, 'Reservation', 'viewed', '2024-10-05 05:07:30', '238.244.80.74', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_7_4) AppleWebKit/537.2 (KHTML, like Gecko) Chrome/85.0.4750.46 Safari/537.2 Edg/85.01015.27', '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(196, 155, 'Reservation', 'navigated', '2024-10-27 18:29:51', '183.15.115.209', 'Mozilla/5.0 (Macintosh; PPC Mac OS X 10_5_8) AppleWebKit/536.1 (KHTML, like Gecko) Chrome/92.0.4518.86 Safari/536.1 Edg/92.01105.81', '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(197, 138, 'Reservation', 'clicked', '2024-10-16 13:20:56', '205.145.2.143', 'Mozilla/5.0 (Windows 98) AppleWebKit/5351 (KHTML, like Gecko) Chrome/38.0.871.0 Mobile Safari/5351', '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(198, 12, 'Menu', 'submitted', '2024-10-17 04:15:28', '101.237.95.192', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/5341 (KHTML, like Gecko) Chrome/36.0.884.0 Mobile Safari/5341', '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(199, NULL, 'Home', 'clicked', '2024-10-08 23:42:58', '45.210.95.88', 'Mozilla/5.0 (X11; Linux x86_64; rv:5.0) Gecko/20170622 Firefox/35.0', '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(200, 4, 'Contact', 'navigated', '2024-10-02 05:53:25', '67.40.153.241', 'Opera/9.74 (X11; Linux x86_64; en-US) Presto/2.10.216 Version/12.00', '2024-10-31 20:07:55', '2024-10-31 20:07:55');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Appetizer', '2024-10-31 20:05:26', '2024-10-31 20:05:26'),
(2, 'Main Course', '2024-10-31 20:05:26', '2024-10-31 20:05:26'),
(3, 'Dessert', '2024-10-31 20:05:26', '2024-10-31 20:05:26'),
(4, 'Beverage', '2024-10-31 20:05:26', '2024-10-31 20:05:26'),
(5, 'Salad', '2024-10-31 20:05:26', '2024-10-31 20:05:26'),
(6, 'Soup', '2024-10-31 20:05:26', '2024-10-31 20:05:26');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Lowell McGlynn', 'erdman.lillie@example.org', 'Numquam perferendis consectetur delectus iure dolor impedit voluptates.', 'Consequuntur qui distinctio expedita beatae quam libero quia. In corporis est ipsam. Dolore voluptatibus et nulla iste voluptas quo fugiat. Mollitia nihil error ullam.', '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(2, 'Dr. Emilie Cruickshank V', 'halle04@example.org', 'Autem corporis ad beatae accusamus.', 'In asperiores earum quisquam officiis nam. Non aut animi laborum eum eum vero. Asperiores similique ullam et sint consequatur.', '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(3, 'Wanda Cummings', 'leta65@example.com', 'Sunt fuga enim harum consequatur similique aliquam.', 'Et nisi dolores aut ullam excepturi eum. Odit impedit qui qui. Odio voluptas voluptate cupiditate impedit rerum. Consequatur laboriosam sunt libero in aut.', '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(4, 'Nikolas Zemlak', 'zmosciski@example.com', 'Ea aut perspiciatis debitis repudiandae.', 'Sed iusto culpa debitis. Culpa minus sint cum dolor odio rem. Quas aut nemo voluptatibus aperiam itaque. Corporis occaecati earum et possimus.', '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(5, 'Devante Thiel', 'zsatterfield@example.net', 'Qui vitae culpa sint error.', 'Laudantium mollitia debitis dolorum vitae et id occaecati. Quod voluptatem est tenetur tempora quia. Nihil laudantium sint animi. Quo dolorem accusamus corrupti non consectetur illum.', '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(6, 'Ottilie Witting', 'camila67@example.org', 'Tempore officia consequuntur vel ut numquam qui maxime.', 'Dicta dolorum non facere harum. Qui qui et non molestias. Suscipit cum quod accusantium est enim.', '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(7, 'Felicita Hane', 'plegros@example.net', 'Asperiores sit molestiae inventore ex atque laborum odit enim.', 'Officiis repudiandae debitis exercitationem velit. Velit aliquid ducimus iusto non. Quia necessitatibus sequi exercitationem placeat aut quidem aut. Vitae optio ipsam labore id voluptate omnis.', '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(8, 'Mrs. Josefina Pacocha', 'oromaguera@example.org', 'Voluptatum ut est porro dicta rerum.', 'Deserunt voluptates officia ducimus incidunt inventore non. Aut cupiditate cupiditate ut itaque eaque molestiae laboriosam. Consequatur labore magni doloribus rerum quas sunt aut aut.', '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(9, 'Mrs. Rosemary Murphy', 'joanie.huel@example.net', 'Non sit nihil quidem qui omnis quia repellat.', 'Nemo sit cumque voluptatibus eos esse. Quibusdam omnis dolor facere consequatur. Eaque aut harum unde ipsam maxime est. Molestiae qui vel earum unde dolore.', '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(10, 'Roselyn Moore', 'koss.pamela@example.org', 'Rerum rem temporibus id nihil eligendi qui quo.', 'Ipsum vitae voluptatem voluptatem atque debitis doloribus. Cum numquam exercitationem at in temporibus velit. Doloribus vel sapiente asperiores laudantium et tenetur eos. Qui hic recusandae eum quia ex in.', '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(11, 'Aisha Jakubowski', 'rogahn.amalia@example.org', 'Sed totam debitis itaque vel asperiores.', 'Adipisci aut mollitia quos voluptatem sunt. Voluptas nobis quisquam maiores maiores. Distinctio quo quis est. Voluptatibus quis tenetur maxime sit laborum qui nulla quia. Commodi quis saepe est libero distinctio quam recusandae molestias.', '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(12, 'Dr. Claudine Haag', 'savannah.nikolaus@example.com', 'Dolorem sint deserunt eum molestiae atque soluta molestiae error.', 'Praesentium aperiam ad rerum culpa. Voluptas nam ad illo maxime mollitia. Ea quaerat natus dicta porro recusandae cumque. Doloribus perferendis ducimus ad quia.', '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(13, 'Mrs. Kianna Kilback Jr.', 'vdeckow@example.com', 'Ullam aut non debitis illum.', 'Aut eligendi qui neque adipisci odit deserunt. Molestiae inventore rerum eveniet expedita suscipit eligendi et. Aut harum ut ut atque eius autem fugiat voluptatem.', '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(14, 'Mr. Lester Hamill DDS', 'leann.senger@example.com', 'Occaecati ut perspiciatis libero maiores velit est.', 'Voluptatem tenetur eveniet ut excepturi culpa. Similique consequatur iure eos rerum earum. Omnis et possimus omnis ipsum eum velit mollitia. Quis odio perspiciatis et neque qui amet accusantium.', '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(15, 'Prof. Eldora Torphy DVM', 'rosella95@example.org', 'Corrupti rerum neque nemo sit similique nulla perspiciatis.', 'Voluptatum voluptatem ut omnis neque. Quod natus quis illo. Sint voluptatibus nemo aut ut blanditiis ut molestias. Non ut unde fuga quia eaque ut.', '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(16, 'Cecile Leffler', 'green.cyril@example.org', 'Nostrum aut dignissimos sit.', 'In magnam ut vitae aliquam. Voluptas earum perspiciatis sapiente quaerat est. Eligendi nihil sequi blanditiis aperiam placeat dolores. Consequatur deleniti vel exercitationem maiores perspiciatis voluptatem.', '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(17, 'Mariana Miller', 'eryn65@example.org', 'Blanditiis beatae quod sit atque minima neque.', 'Velit accusantium iusto voluptates temporibus amet similique. In dolorem sed cumque non eos fuga incidunt. Nemo est cupiditate et laudantium nam. Veniam non iste commodi consectetur et.', '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(18, 'Dr. Maurine Pouros DVM', 'jared.thiel@example.org', 'Quod consequatur voluptates consequuntur harum non minima.', 'Dolore minima maiores at et. Quo occaecati velit et ut nostrum. Tempore cumque dolorum aut blanditiis quas alias. Similique consectetur alias deleniti dolores necessitatibus nostrum iusto.', '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(19, 'Mr. Hermann Weber', 'ctremblay@example.com', 'Quia aperiam et dolores dignissimos.', 'Suscipit iusto dolore labore minima qui est. Non quia sit ut maxime animi similique.', '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(20, 'Lisa Rohan', 'hiram.hayes@example.com', 'Velit aliquam commodi distinctio laborum iste aliquam repellendus.', 'Recusandae voluptatem rerum in voluptas cum et. Sint rerum et et dolorem eum et. Dolorem voluptatem ipsa reiciendis ullam perspiciatis nostrum. Quisquam omnis cum et non molestiae placeat.', '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(21, 'Mrs. Haylee Wehner IV', 'antone53@example.net', 'Magnam et error magnam unde commodi.', 'Deleniti vel commodi voluptas et. Aut voluptatem occaecati optio earum et molestias vel illo. Saepe culpa et sit esse nihil maxime. Sint autem in doloremque.', '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(22, 'Remington Marquardt', 'dharris@example.net', 'Perspiciatis minima dolorem libero eaque.', 'Quia dolore omnis unde laboriosam necessitatibus vel magnam. Dolorum voluptas adipisci corrupti ea est. Sed quaerat error dolorem eos maiores ducimus.', '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(23, 'Dr. Rasheed Christiansen', 'rbuckridge@example.com', 'Rerum molestias rerum voluptatibus soluta quas quisquam neque.', 'Ut quaerat et fugit. Sit omnis modi aliquid incidunt enim cupiditate non. Expedita et consectetur ducimus ea sunt in dolor sapiente. Sed quasi dolores ratione aspernatur quos sint minima.', '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(24, 'Kiarra Howe', 'jerde.ahmed@example.net', 'Odio rerum illum est fugit dolorem ut.', 'Voluptate quos nisi facere dolorem eveniet. Tenetur odit dignissimos reiciendis non recusandae id. Qui laudantium nihil voluptas dolorem nisi vitae vitae. Voluptates velit eos ut non illum. Dolorum odit saepe ad et pariatur.', '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(25, 'Dr. Louisa Barrows', 'dach.daryl@example.org', 'Tenetur deserunt illum molestias a.', 'Molestiae dolores culpa in vel saepe dolor dolor. Modi aut sequi modi possimus magnam dicta aliquam. Odio animi eveniet sed nisi rerum voluptates dolorem modi. Dolor veniam molestias assumenda itaque.', '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(26, 'Rebeka Erdman', 'rcassin@example.com', 'Optio odio est quas placeat occaecati quo dolorem.', 'Voluptatum sit aut qui rerum quo autem. Sed quia et consequuntur dolor.', '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(27, 'Prof. Alva Connelly', 'vernie.keebler@example.org', 'Sed illum officiis quis.', 'Blanditiis reprehenderit dolore consequatur consequuntur id perferendis. Ut cupiditate distinctio cumque minus. Ea ea dolore voluptates et. Molestias soluta facere sit consequatur. Eum quis libero beatae omnis maiores.', '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(28, 'Dr. Justina Feest', 'ezequiel98@example.org', 'Molestias architecto modi et aut.', 'Reprehenderit aut enim sequi et quae iusto. Nihil id aut blanditiis possimus ut porro accusantium dolor. Impedit molestiae est molestiae earum dolor. Dolore est pariatur hic tempore.', '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(29, 'Pattie Auer', 'kovacek.eleazar@example.net', 'Consequuntur esse debitis eum tenetur tempora corrupti ut.', 'Culpa excepturi perferendis sunt sed laboriosam nulla qui. Quo ipsum recusandae labore non.', '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(30, 'Vickie Adams', 'adrienne85@example.com', 'Distinctio et iusto veniam deleniti.', 'Ea qui at qui. Adipisci tempora adipisci veritatis esse rerum voluptate itaque. Ad distinctio labore laudantium tenetur amet.', '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(31, 'Eloisa Klein', 'ferne13@example.com', 'Eveniet et dolore eos.', 'Tenetur molestiae velit sit quo modi mollitia consequatur. Quo voluptatem saepe voluptatum ea similique totam tempora. Laborum deleniti nisi eos itaque neque cumque. Amet maxime est error iste.', '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(32, 'Dr. Elton Romaguera DDS', 'breanne93@example.net', 'Consectetur sunt dolor illum temporibus nemo magnam sint.', 'Ea nesciunt cum quia ut laborum. Explicabo magnam dolorum deserunt perferendis aut expedita. Corrupti quibusdam quis quas dicta ea enim dolorum. Deserunt odit eius eveniet eum.', '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(33, 'Dr. Jaylen Schumm DDS', 'franecki.lavon@example.com', 'Voluptatum aliquid ad sit reiciendis repellat.', 'Maiores totam molestiae quaerat rerum eligendi voluptatem dolores. Atque odio quam voluptatem reprehenderit id praesentium id quam. Et necessitatibus dolor et voluptatem laborum.', '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(34, 'Miles Johns', 'herzog.maximillian@example.com', 'Omnis dignissimos vel in labore.', 'Tenetur distinctio odio et tempore quo. Quos aut quisquam explicabo repudiandae ea ab.', '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(35, 'Zechariah Bogan', 'ugreenholt@example.org', 'Ut sit voluptatem nobis qui minus.', 'Neque voluptates non voluptate minus odio vitae. Porro voluptatem minima dignissimos provident.', '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(36, 'Dr. Devon Gulgowski MD', 'andres11@example.com', 'Assumenda rerum id qui corporis reprehenderit autem delectus.', 'Eveniet ab aut autem aliquam perspiciatis rerum. Dolores ut possimus porro eum. Cumque quisquam est doloremque nemo. Voluptas ratione quam animi nesciunt. Dolor et ea voluptas facilis.', '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(37, 'Ramona Zulauf I', 'nia91@example.org', 'Eum laboriosam numquam eum omnis.', 'Illo ullam labore recusandae illo non. Debitis in accusamus rerum enim. Recusandae et aut nisi temporibus. Voluptas repellendus dolor voluptatibus ut laboriosam.', '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(38, 'Ludwig Wolff', 'maggio.adrienne@example.org', 'Omnis in voluptatibus voluptatem neque.', 'Ea amet magni quasi eos nostrum expedita animi. Amet molestiae quis voluptatem voluptatem nemo commodi facilis. Ipsa rerum doloremque voluptatem sunt est.', '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(39, 'Trudie Murray', 'dzboncak@example.com', 'Ducimus itaque est expedita porro.', 'Natus beatae et sint enim ea quis. Vel a quas minus distinctio. Ea veniam fugiat ipsam sit fugit. Vitae eum consequatur voluptatum similique fugiat.', '2024-10-31 20:07:55', '2024-10-31 20:07:55');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `price` decimal(10,2) NOT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `availability` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` bigint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `name`, `description`, `price`, `image_url`, `availability`, `created_at`, `updated_at`, `category_id`) VALUES
(1, 'assumenda', 'Temporibus quia fugit ut nostrum sunt qui voluptate.', '54.37', 'https://via.placeholder.com/640x480.png/008800?text=food+Faker+delectus', 1, '2024-10-31 20:05:26', '2024-10-31 20:05:26', 1),
(2, 'ut', 'Ut accusamus ipsum aspernatur sit et labore.', '26.27', 'https://via.placeholder.com/640x480.png/00bb66?text=food+Faker+quis', 1, '2024-10-31 20:05:26', '2024-10-31 20:05:26', 6),
(3, 'inventore', 'Natus esse magnam quam neque tempore sint quia.', '25.53', 'https://via.placeholder.com/640x480.png/00eebb?text=food+Faker+voluptatem', 0, '2024-10-31 20:05:26', '2024-10-31 20:05:26', 4),
(4, 'velit', 'Voluptatem inventore iste laboriosam voluptatem vel sequi est minus.', '38.30', 'https://via.placeholder.com/640x480.png/00cccc?text=food+Faker+nulla', 0, '2024-10-31 20:05:26', '2024-10-31 20:05:26', 3),
(5, 'labore', 'Illum quae non molestias sed fugit harum.', '70.60', 'https://via.placeholder.com/640x480.png/00ffee?text=food+Faker+vel', 0, '2024-10-31 20:05:26', '2024-10-31 20:05:26', 1),
(6, 'eos', 'Minus corporis et aut ut excepturi.', '49.42', 'https://via.placeholder.com/640x480.png/0088aa?text=food+Faker+qui', 0, '2024-10-31 20:05:26', '2024-10-31 20:05:26', 5),
(7, 'nemo', 'Adipisci tempore laudantium veniam ut repellendus excepturi.', '51.19', 'https://via.placeholder.com/640x480.png/000044?text=food+Faker+ducimus', 1, '2024-10-31 20:05:26', '2024-10-31 20:05:26', 5),
(8, 'aliquid', 'Est voluptatem veniam quis.', '82.71', 'https://via.placeholder.com/640x480.png/00aa66?text=food+Faker+dolorem', 0, '2024-10-31 20:05:26', '2024-10-31 20:05:26', 6),
(9, 'blanditiis', 'Blanditiis ea qui provident iste.', '32.08', 'https://via.placeholder.com/640x480.png/00aa33?text=food+Faker+architecto', 0, '2024-10-31 20:05:26', '2024-10-31 20:05:26', 3),
(10, 'tempore', 'Accusamus omnis temporibus ut aliquid qui laboriosam.', '90.97', 'https://via.placeholder.com/640x480.png/00ee11?text=food+Faker+excepturi', 0, '2024-10-31 20:05:26', '2024-10-31 20:05:26', 5),
(11, 'quis', 'Ut cumque quas dolorem et incidunt.', '56.69', 'https://via.placeholder.com/640x480.png/008866?text=food+Faker+officia', 1, '2024-10-31 20:05:26', '2024-10-31 20:05:26', 6),
(12, 'ut', 'Fugiat quis aut est perspiciatis saepe.', '73.17', 'https://via.placeholder.com/640x480.png/0066ff?text=food+Faker+facere', 0, '2024-10-31 20:05:26', '2024-10-31 20:05:26', 1),
(13, 'facilis', 'Quia consequuntur unde fugit praesentium ut quia molestias.', '25.04', 'https://via.placeholder.com/640x480.png/006655?text=food+Faker+eos', 0, '2024-10-31 20:05:26', '2024-10-31 20:05:26', 4),
(14, 'soluta', 'Nostrum recusandae in incidunt expedita odit.', '81.97', 'https://via.placeholder.com/640x480.png/00cc00?text=food+Faker+sunt', 0, '2024-10-31 20:05:26', '2024-10-31 20:05:26', 5),
(15, 'numquam', 'Quaerat qui nisi nostrum omnis eveniet cupiditate vel.', '98.68', 'https://via.placeholder.com/640x480.png/005577?text=food+Faker+adipisci', 0, '2024-10-31 20:05:26', '2024-10-31 20:05:26', 4),
(16, 'qui', 'Unde numquam autem expedita culpa cum illum.', '99.72', 'https://via.placeholder.com/640x480.png/0022ee?text=food+Faker+nemo', 1, '2024-10-31 20:05:26', '2024-10-31 20:05:26', 5),
(17, 'deleniti', 'Sunt eligendi veritatis nulla labore facere qui laborum.', '43.50', 'https://via.placeholder.com/640x480.png/00ddcc?text=food+Faker+pariatur', 0, '2024-10-31 20:05:26', '2024-10-31 20:05:26', 3),
(18, 'eos', 'Sunt saepe est quasi.', '94.78', 'https://via.placeholder.com/640x480.png/0066cc?text=food+Faker+voluptatem', 0, '2024-10-31 20:05:26', '2024-10-31 20:05:26', 2),
(19, 'dignissimos', 'Quo architecto et autem.', '99.83', 'https://via.placeholder.com/640x480.png/00bbbb?text=food+Faker+illum', 0, '2024-10-31 20:05:26', '2024-10-31 20:05:26', 6),
(20, 'animi', 'Aut est asperiores cumque laboriosam eaque.', '26.53', 'https://via.placeholder.com/640x480.png/0055cc?text=food+Faker+sit', 0, '2024-10-31 20:05:26', '2024-10-31 20:05:26', 5);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_10_31_194148_create_reservations_table', 1),
(6, '2024_10_31_194353_create_menu_items_table', 1),
(7, '2024_10_31_194514_create_testimonials_table', 1),
(8, '2024_10_31_194626_create_analytics_table', 1),
(9, '2024_10_31_194744_create_contacts_table', 1),
(10, '2024_10_31_194848_create_reservation_menu_items_table', 1),
(11, '2024_10_31_204355_create_categories_table', 1),
(12, '2024_10_31_204603_create_notifications_table', 1),
(13, '2024_10_31_204715_create_reports_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `scheduled_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `title`, `message`, `scheduled_at`, `created_at`, `updated_at`) VALUES
(1, 92, 'Menu Update', 'Enjoy a 10% discount on your next reservation!', '2024-11-19 20:34:26', '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(2, 24, 'Menu Update', 'We have updated our menu with new dishes!', '2024-12-01 00:46:18', '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(3, 180, 'Reservation Confirmed', 'Enjoy a 10% discount on your next reservation!', '2024-11-04 18:06:12', '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(4, 171, 'Reservation Reminder', 'This is a reminder for your reservation on 2024-12-01 06:31:55.', '2024-11-19 08:47:31', '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(5, 49, 'Menu Update', 'We have updated our menu with new dishes!', NULL, '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(6, 153, 'Special Offer', 'Enjoy a 10% discount on your next reservation!', NULL, '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(7, 99, 'Special Offer', 'Your reservation has been confirmed for 2024-11-02 14:35:40.', '2024-11-30 04:55:18', '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(8, 147, 'Reservation Reminder', 'Your reservation has been confirmed for 2024-11-30 21:14:42.', NULL, '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(9, 139, 'Special Offer', 'We have updated our menu with new dishes!', NULL, '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(10, 65, 'Reservation Reminder', 'Your reservation has been confirmed for 2024-11-01 22:26:12.', '2024-11-24 04:51:14', '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(11, 21, 'Reservation Reminder', 'Your reservation has been confirmed for 2024-11-06 00:43:19.', NULL, '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(12, 112, 'Reservation Reminder', 'We have updated our menu with new dishes!', '2024-12-01 05:23:31', '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(13, 7, 'Special Offer', 'This is a reminder for your reservation on 2024-11-12 20:37:33.', '2024-11-09 08:13:39', '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(14, 45, 'Reservation Reminder', 'This is a reminder for your reservation on 2024-11-05 04:18:58.', NULL, '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(15, 176, 'Menu Update', 'This is a reminder for your reservation on 2024-11-23 21:37:29.', '2024-11-20 09:39:07', '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(16, 32, 'Special Offer', 'This is a reminder for your reservation on 2024-11-30 23:46:56.', NULL, '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(17, 1, 'Special Offer', 'Your reservation has been confirmed for 2024-11-11 22:14:24.', NULL, '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(18, 33, 'Special Offer', 'Your reservation has been confirmed for 2024-11-25 03:48:02.', '2024-11-09 09:38:49', '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(19, 173, 'Reservation Confirmed', 'Your reservation has been confirmed for 2024-11-06 06:28:45.', NULL, '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(20, 65, 'Special Offer', 'This is a reminder for your reservation on 2024-11-22 09:42:06.', '2024-11-15 20:39:42', '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(21, 88, 'Menu Update', 'This is a reminder for your reservation on 2024-11-14 12:51:52.', '2024-11-02 22:09:58', '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(22, 139, 'Reservation Confirmed', 'Your reservation has been confirmed for 2024-11-13 07:15:25.', '2024-11-10 23:28:41', '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(23, 93, 'Menu Update', 'Your reservation has been confirmed for 2024-11-13 21:11:29.', NULL, '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(24, 147, 'Reservation Reminder', 'This is a reminder for your reservation on 2024-11-23 21:01:03.', NULL, '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(25, 83, 'Reservation Reminder', 'This is a reminder for your reservation on 2024-11-13 16:19:32.', '2024-11-08 12:56:57', '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(26, 126, 'Menu Update', 'This is a reminder for your reservation on 2024-11-30 12:14:02.', NULL, '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(27, 15, 'Menu Update', 'This is a reminder for your reservation on 2024-11-04 00:38:47.', '2024-11-29 19:05:04', '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(28, 98, 'Reservation Confirmed', 'Enjoy a 10% discount on your next reservation!', '2024-11-24 15:02:50', '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(29, 47, 'Special Offer', 'Your reservation has been confirmed for 2024-11-23 23:01:30.', '2024-11-09 11:23:43', '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(30, 21, 'Reservation Reminder', 'Enjoy a 10% discount on your next reservation!', NULL, '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(31, 91, 'Reservation Confirmed', 'Enjoy a 10% discount on your next reservation!', NULL, '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(32, 152, 'Special Offer', 'Your reservation has been confirmed for 2024-11-29 18:46:14.', '2024-11-23 05:14:29', '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(33, 110, 'Reservation Reminder', 'We have updated our menu with new dishes!', '2024-11-17 08:00:11', '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(34, 176, 'Reservation Confirmed', 'Your reservation has been confirmed for 2024-11-15 19:18:18.', '2024-11-07 04:31:42', '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(35, 51, 'Reservation Reminder', 'Your reservation has been confirmed for 2024-11-28 20:02:24.', '2024-11-09 22:13:10', '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(36, 114, 'Menu Update', 'We have updated our menu with new dishes!', '2024-11-13 07:58:44', '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(37, 110, 'Special Offer', 'This is a reminder for your reservation on 2024-11-03 22:20:34.', '2024-11-25 10:52:44', '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(38, 41, 'Special Offer', 'Your reservation has been confirmed for 2024-11-22 11:40:34.', NULL, '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(39, 168, 'Reservation Confirmed', 'We have updated our menu with new dishes!', '2024-11-29 15:31:20', '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(40, 157, 'Menu Update', 'We have updated our menu with new dishes!', '2024-11-21 11:10:06', '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(41, 114, 'Menu Update', 'This is a reminder for your reservation on 2024-11-25 08:05:01.', '2024-11-06 08:53:14', '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(42, 98, 'Special Offer', 'Your reservation has been confirmed for 2024-11-23 12:33:57.', '2024-11-03 02:53:52', '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(43, 166, 'Reservation Reminder', 'This is a reminder for your reservation on 2024-11-28 15:56:28.', '2024-11-01 02:18:28', '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(44, 129, 'Reservation Confirmed', 'We have updated our menu with new dishes!', '2024-11-22 18:46:48', '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(45, 168, 'Menu Update', 'Your reservation has been confirmed for 2024-11-21 12:14:45.', NULL, '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(46, 70, 'Menu Update', 'Your reservation has been confirmed for 2024-11-12 17:27:11.', '2024-11-10 07:23:07', '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(47, 39, 'Reservation Reminder', 'Your reservation has been confirmed for 2024-11-29 08:04:07.', '2024-11-28 18:50:04', '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(48, 50, 'Reservation Confirmed', 'We have updated our menu with new dishes!', '2024-11-25 12:34:16', '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(49, 41, 'Menu Update', 'This is a reminder for your reservation on 2024-11-14 05:54:41.', '2024-11-19 22:16:59', '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(50, 172, 'Menu Update', 'This is a reminder for your reservation on 2024-11-23 13:51:56.', '2024-11-07 15:25:30', '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(51, 137, 'Reservation Reminder', 'This is a reminder for your reservation on 2024-11-17 08:47:22.', '2024-11-05 20:17:13', '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(52, 23, 'Menu Update', 'Your reservation has been confirmed for 2024-11-06 20:40:02.', '2024-11-01 04:42:37', '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(53, 37, 'Reservation Confirmed', 'Your reservation has been confirmed for 2024-11-23 05:53:16.', NULL, '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(54, 28, 'Menu Update', 'This is a reminder for your reservation on 2024-11-26 07:33:47.', NULL, '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(55, 184, 'Reservation Reminder', 'We have updated our menu with new dishes!', '2024-11-15 19:30:57', '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(56, 115, 'Menu Update', 'Your reservation has been confirmed for 2024-12-01 05:05:34.', NULL, '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(57, 169, 'Reservation Confirmed', 'Your reservation has been confirmed for 2024-11-02 19:15:28.', '2024-11-07 09:36:24', '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(58, 27, 'Special Offer', 'We have updated our menu with new dishes!', NULL, '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(59, 119, 'Special Offer', 'We have updated our menu with new dishes!', NULL, '2024-10-31 20:07:55', '2024-10-31 20:07:55'),
(60, 132, 'Reservation Reminder', 'Enjoy a 10% discount on your next reservation!', '2024-11-02 07:32:44', '2024-10-31 20:07:56', '2024-10-31 20:07:56'),
(61, 165, 'Menu Update', 'Your reservation has been confirmed for 2024-11-10 08:07:04.', NULL, '2024-10-31 20:07:56', '2024-10-31 20:07:56'),
(62, 70, 'Reservation Confirmed', 'Enjoy a 10% discount on your next reservation!', NULL, '2024-10-31 20:07:56', '2024-10-31 20:07:56'),
(63, 137, 'Special Offer', 'We have updated our menu with new dishes!', NULL, '2024-10-31 20:07:56', '2024-10-31 20:07:56'),
(64, 44, 'Reservation Reminder', 'Enjoy a 10% discount on your next reservation!', '2024-11-20 05:02:55', '2024-10-31 20:07:56', '2024-10-31 20:07:56'),
(65, 147, 'Special Offer', 'This is a reminder for your reservation on 2024-11-12 14:06:46.', '2024-11-08 00:58:22', '2024-10-31 20:07:56', '2024-10-31 20:07:56'),
(66, 9, 'Reservation Confirmed', 'Your reservation has been confirmed for 2024-11-04 21:02:32.', NULL, '2024-10-31 20:07:56', '2024-10-31 20:07:56'),
(67, 79, 'Special Offer', 'Your reservation has been confirmed for 2024-11-16 16:17:58.', '2024-11-11 21:24:40', '2024-10-31 20:07:56', '2024-10-31 20:07:56'),
(68, 89, 'Menu Update', 'Your reservation has been confirmed for 2024-11-05 13:04:16.', '2024-11-26 18:55:22', '2024-10-31 20:07:56', '2024-10-31 20:07:56'),
(69, 39, 'Special Offer', 'This is a reminder for your reservation on 2024-11-27 04:23:42.', '2024-11-16 00:41:48', '2024-10-31 20:07:56', '2024-10-31 20:07:56'),
(70, 79, 'Special Offer', 'This is a reminder for your reservation on 2024-11-29 17:00:57.', NULL, '2024-10-31 20:07:56', '2024-10-31 20:07:56'),
(71, 103, 'Menu Update', 'We have updated our menu with new dishes!', NULL, '2024-10-31 20:07:56', '2024-10-31 20:07:56'),
(72, 95, 'Reservation Reminder', 'Your reservation has been confirmed for 2024-11-07 11:48:47.', '2024-11-25 22:56:06', '2024-10-31 20:07:56', '2024-10-31 20:07:56'),
(73, 62, 'Reservation Confirmed', 'Enjoy a 10% discount on your next reservation!', '2024-11-24 16:10:58', '2024-10-31 20:07:56', '2024-10-31 20:07:56'),
(74, 5, 'Special Offer', 'We have updated our menu with new dishes!', NULL, '2024-10-31 20:07:56', '2024-10-31 20:07:56'),
(75, 126, 'Special Offer', 'We have updated our menu with new dishes!', '2024-11-24 03:33:48', '2024-10-31 20:07:56', '2024-10-31 20:07:56'),
(76, 45, 'Reservation Reminder', 'This is a reminder for your reservation on 2024-11-16 16:56:00.', NULL, '2024-10-31 20:07:56', '2024-10-31 20:07:56'),
(77, 64, 'Reservation Reminder', 'Enjoy a 10% discount on your next reservation!', NULL, '2024-10-31 20:07:56', '2024-10-31 20:07:56'),
(78, 12, 'Reservation Reminder', 'This is a reminder for your reservation on 2024-11-30 14:45:15.', '2024-11-01 20:03:21', '2024-10-31 20:07:56', '2024-10-31 20:07:56'),
(79, 12, 'Menu Update', 'Enjoy a 10% discount on your next reservation!', '2024-11-06 09:32:35', '2024-10-31 20:07:56', '2024-10-31 20:07:56'),
(80, 176, 'Special Offer', 'This is a reminder for your reservation on 2024-11-30 18:24:13.', NULL, '2024-10-31 20:07:56', '2024-10-31 20:07:56'),
(81, 134, 'Special Offer', 'This is a reminder for your reservation on 2024-11-04 08:07:14.', '2024-11-21 03:36:25', '2024-10-31 20:07:56', '2024-10-31 20:07:56'),
(82, 135, 'Reservation Reminder', 'This is a reminder for your reservation on 2024-11-28 12:56:36.', NULL, '2024-10-31 20:07:56', '2024-10-31 20:07:56'),
(83, 151, 'Special Offer', 'Your reservation has been confirmed for 2024-11-25 10:59:34.', NULL, '2024-10-31 20:07:56', '2024-10-31 20:07:56'),
(84, 91, 'Special Offer', 'Your reservation has been confirmed for 2024-11-26 17:12:01.', NULL, '2024-10-31 20:07:56', '2024-10-31 20:07:56'),
(85, 171, 'Reservation Reminder', 'This is a reminder for your reservation on 2024-11-24 21:59:46.', NULL, '2024-10-31 20:07:56', '2024-10-31 20:07:56'),
(86, 66, 'Reservation Confirmed', 'Your reservation has been confirmed for 2024-11-19 07:30:58.', '2024-11-14 14:52:22', '2024-10-31 20:07:56', '2024-10-31 20:07:56'),
(87, 181, 'Special Offer', 'Enjoy a 10% discount on your next reservation!', NULL, '2024-10-31 20:07:56', '2024-10-31 20:07:56'),
(88, 143, 'Menu Update', 'We have updated our menu with new dishes!', NULL, '2024-10-31 20:07:56', '2024-10-31 20:07:56'),
(89, 66, 'Menu Update', 'Enjoy a 10% discount on your next reservation!', NULL, '2024-10-31 20:07:56', '2024-10-31 20:07:56'),
(90, 50, 'Menu Update', 'This is a reminder for your reservation on 2024-11-07 06:21:01.', NULL, '2024-10-31 20:07:56', '2024-10-31 20:07:56'),
(91, 140, 'Special Offer', 'We have updated our menu with new dishes!', '2024-11-29 09:02:13', '2024-10-31 20:07:56', '2024-10-31 20:07:56'),
(92, 22, 'Menu Update', 'We have updated our menu with new dishes!', NULL, '2024-10-31 20:07:56', '2024-10-31 20:07:56'),
(93, 24, 'Menu Update', 'We have updated our menu with new dishes!', '2024-11-16 20:15:21', '2024-10-31 20:07:56', '2024-10-31 20:07:56'),
(94, 115, 'Menu Update', 'Enjoy a 10% discount on your next reservation!', NULL, '2024-10-31 20:07:56', '2024-10-31 20:07:56'),
(95, 7, 'Special Offer', 'Enjoy a 10% discount on your next reservation!', '2024-11-18 09:49:42', '2024-10-31 20:07:56', '2024-10-31 20:07:56'),
(96, 178, 'Reservation Confirmed', 'Enjoy a 10% discount on your next reservation!', NULL, '2024-10-31 20:07:56', '2024-10-31 20:07:56'),
(97, 96, 'Reservation Confirmed', 'This is a reminder for your reservation on 2024-11-23 23:16:20.', '2024-11-29 16:19:38', '2024-10-31 20:07:56', '2024-10-31 20:07:56'),
(98, 105, 'Menu Update', 'This is a reminder for your reservation on 2024-11-02 05:41:09.', NULL, '2024-10-31 20:07:56', '2024-10-31 20:07:56'),
(99, 126, 'Reservation Reminder', 'Enjoy a 10% discount on your next reservation!', '2024-11-10 18:18:10', '2024-10-31 20:07:56', '2024-10-31 20:07:56'),
(100, 24, 'Reservation Reminder', 'We have updated our menu with new dishes!', '2024-11-17 13:05:07', '2024-10-31 20:07:56', '2024-10-31 20:07:56'),
(101, 1, 'New Notification', 'Notification content here', NULL, '2024-11-09 08:15:08', '2024-11-09 08:15:08');

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 186, 'auth_token', 'db801c06371fe049384c53b1b66689423b1a11b6e9a7a46db0d35f6f9eb1bfed', '[\"*\"]', NULL, NULL, '2024-11-01 08:49:38', '2024-11-01 08:49:38'),
(2, 'App\\Models\\User', 186, 'auth_token', '47636d50d15a83824f227e9840cbc134a4859c6b35510820f9a41f43eee49cd0', '[\"*\"]', '2024-11-01 08:51:46', NULL, '2024-11-01 08:50:17', '2024-11-01 08:51:46'),
(8, 'App\\Models\\User', 188, 'auth_token', 'a450d3742490a7006f9e6ff0ce2a65c825867f952e7628548fe585b70593827a', '[\"*\"]', '2024-11-01 14:02:08', NULL, '2024-11-01 14:00:51', '2024-11-01 14:02:08'),
(9, 'App\\Models\\User', 188, 'auth_token', '0cc52aaff86e6f19138c0e0254f7ef0d8f0288b170c9998981e9571252ba5ac6', '[\"*\"]', '2024-11-01 14:43:26', NULL, '2024-11-01 14:09:55', '2024-11-01 14:43:26'),
(10, 'App\\Models\\User', 188, 'auth_token', '6fd4890deb95c496dd9e3732663f82325fd7aa9b2c1faa7923202288809ee45c', '[\"*\"]', '2024-11-09 08:15:08', NULL, '2024-11-09 07:38:57', '2024-11-09 08:15:08');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` bigint UNSIGNED NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id`, `type`, `data`, `created_at`, `updated_at`) VALUES
(1, 'user-activity', '{\"active_users\": 98, \"new_registrations\": 49, \"reservations_made\": 118, \"testimonials_submitted\": 51}', '2024-10-31 20:07:56', '2024-10-31 20:07:56'),
(2, 'user-activity', '{\"active_users\": 83, \"new_registrations\": 7, \"reservations_made\": 365, \"testimonials_submitted\": 81}', '2024-10-31 20:07:56', '2024-10-31 20:07:56'),
(3, 'menu-performance', '{\"top_selling_items\": [{\"name\": \"consequatur\", \"sales\": 642, \"menu_item_id\": 11}], \"least_selling_items\": [{\"name\": \"quidem\", \"sales\": 31, \"menu_item_id\": 16}]}', '2024-10-31 20:07:56', '2024-10-31 20:07:56'),
(4, 'reservations', '{\"cancelled\": 19, \"completed\": 69, \"confirmed\": 55, \"total_reservations\": 170}', '2024-10-31 20:07:56', '2024-10-31 20:07:56'),
(5, 'user-activity', '{\"active_users\": 49, \"new_registrations\": 22, \"reservations_made\": 366, \"testimonials_submitted\": 15}', '2024-10-31 20:07:56', '2024-10-31 20:07:56'),
(6, 'menu-performance', '{\"top_selling_items\": [{\"name\": \"ab\", \"sales\": 145, \"menu_item_id\": 9}], \"least_selling_items\": [{\"name\": \"qui\", \"sales\": 5, \"menu_item_id\": 2}]}', '2024-10-31 20:07:56', '2024-10-31 20:07:56'),
(7, 'menu-performance', '{\"top_selling_items\": [{\"name\": \"officia\", \"sales\": 753, \"menu_item_id\": 5}], \"least_selling_items\": [{\"name\": \"velit\", \"sales\": 23, \"menu_item_id\": 4}]}', '2024-10-31 20:07:56', '2024-10-31 20:07:56'),
(8, 'user-activity', '{\"active_users\": 83, \"new_registrations\": 26, \"reservations_made\": 198, \"testimonials_submitted\": 11}', '2024-10-31 20:07:56', '2024-10-31 20:07:56'),
(9, 'menu-performance', '{\"top_selling_items\": [{\"name\": \"vel\", \"sales\": 724, \"menu_item_id\": 5}], \"least_selling_items\": [{\"name\": \"assumenda\", \"sales\": 30, \"menu_item_id\": 13}]}', '2024-10-31 20:07:56', '2024-10-31 20:07:56'),
(10, 'reservations', '{\"cancelled\": 24, \"completed\": 55, \"confirmed\": 111, \"total_reservations\": 483}', '2024-10-31 20:07:56', '2024-10-31 20:07:56'),
(11, 'user-activity', '{\"active_users\": 40, \"new_registrations\": 50, \"reservations_made\": 388, \"testimonials_submitted\": 59}', '2024-10-31 20:07:56', '2024-10-31 20:07:56'),
(12, 'menu-performance', '{\"top_selling_items\": [{\"name\": \"beatae\", \"sales\": 438, \"menu_item_id\": 6}], \"least_selling_items\": [{\"name\": \"temporibus\", \"sales\": 0, \"menu_item_id\": 2}]}', '2024-10-31 20:07:56', '2024-10-31 20:07:56'),
(13, 'user-activity', '{\"active_users\": 22, \"new_registrations\": 28, \"reservations_made\": 271, \"testimonials_submitted\": 6}', '2024-10-31 20:07:56', '2024-10-31 20:07:56'),
(14, 'menu-performance', '{\"top_selling_items\": [{\"name\": \"aliquam\", \"sales\": 425, \"menu_item_id\": 10}], \"least_selling_items\": [{\"name\": \"blanditiis\", \"sales\": 15, \"menu_item_id\": 15}]}', '2024-10-31 20:07:56', '2024-10-31 20:07:56'),
(15, 'menu-performance', '{\"top_selling_items\": [{\"name\": \"ea\", \"sales\": 880, \"menu_item_id\": 14}], \"least_selling_items\": [{\"name\": \"quas\", \"sales\": 41, \"menu_item_id\": 13}]}', '2024-10-31 20:07:56', '2024-10-31 20:07:56'),
(16, 'reservations', '{\"cancelled\": 19, \"completed\": 237, \"confirmed\": 144, \"total_reservations\": 129}', '2024-10-31 20:07:56', '2024-10-31 20:07:56'),
(17, 'reservations', '{\"cancelled\": 44, \"completed\": 85, \"confirmed\": 304, \"total_reservations\": 111}', '2024-10-31 20:07:56', '2024-10-31 20:07:56'),
(18, 'user-activity', '{\"active_users\": 29, \"new_registrations\": 42, \"reservations_made\": 314, \"testimonials_submitted\": 91}', '2024-10-31 20:07:56', '2024-10-31 20:07:56'),
(19, 'user-activity', '{\"active_users\": 12, \"new_registrations\": 19, \"reservations_made\": 456, \"testimonials_submitted\": 33}', '2024-10-31 20:07:56', '2024-10-31 20:07:56'),
(20, 'menu-performance', '{\"top_selling_items\": [{\"name\": \"eveniet\", \"sales\": 592, \"menu_item_id\": 10}], \"least_selling_items\": [{\"name\": \"sit\", \"sales\": 26, \"menu_item_id\": 1}]}', '2024-10-31 20:07:56', '2024-10-31 20:07:56'),
(21, 'user-activity', '{\"active_users\": 67, \"new_registrations\": 10, \"reservations_made\": 300, \"testimonials_submitted\": 68}', '2024-10-31 20:07:56', '2024-10-31 20:07:56'),
(22, 'user-activity', '{\"active_users\": 24, \"new_registrations\": 19, \"reservations_made\": 160, \"testimonials_submitted\": 45}', '2024-10-31 20:07:56', '2024-10-31 20:07:56'),
(23, 'user-activity', '{\"active_users\": 86, \"new_registrations\": 15, \"reservations_made\": 456, \"testimonials_submitted\": 28}', '2024-10-31 20:07:56', '2024-10-31 20:07:56'),
(24, 'reservations', '{\"cancelled\": 25, \"completed\": 223, \"confirmed\": 450, \"total_reservations\": 276}', '2024-10-31 20:07:56', '2024-10-31 20:07:56'),
(25, 'reservations', '{\"cancelled\": 46, \"completed\": 176, \"confirmed\": 220, \"total_reservations\": 280}', '2024-10-31 20:07:56', '2024-10-31 20:07:56'),
(26, 'reservations', '{\"cancelled\": 6, \"completed\": 91, \"confirmed\": 283, \"total_reservations\": 164}', '2024-10-31 20:07:56', '2024-10-31 20:07:56'),
(27, 'reservations', '{\"cancelled\": 28, \"completed\": 144, \"confirmed\": 57, \"total_reservations\": 379}', '2024-10-31 20:07:56', '2024-10-31 20:07:56'),
(28, 'menu-performance', '{\"top_selling_items\": [{\"name\": \"corrupti\", \"sales\": 195, \"menu_item_id\": 11}], \"least_selling_items\": [{\"name\": \"repudiandae\", \"sales\": 45, \"menu_item_id\": 7}]}', '2024-10-31 20:07:56', '2024-10-31 20:07:56'),
(29, 'user-activity', '{\"active_users\": 33, \"new_registrations\": 13, \"reservations_made\": 493, \"testimonials_submitted\": 13}', '2024-10-31 20:07:56', '2024-10-31 20:07:56'),
(30, 'reservations', '{\"cancelled\": 39, \"completed\": 254, \"confirmed\": 273, \"total_reservations\": 79}', '2024-10-31 20:07:56', '2024-10-31 20:07:56');

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `reservation_date` datetime NOT NULL,
  `number_of_guests` int NOT NULL,
  `special_requests` text COLLATE utf8mb4_unicode_ci,
  `status` enum('Pending','Confirmed','Cancelled','Completed') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`id`, `user_id`, `reservation_date`, `number_of_guests`, `special_requests`, `status`, `created_at`, `updated_at`) VALUES
(1, 56, '2024-11-05 02:53:02', 10, 'Rerum dolorem ea earum nemo soluta eaque.', 'Pending', '2024-10-31 20:05:27', '2024-10-31 20:05:27'),
(2, 57, '2024-11-23 05:22:07', 1, NULL, 'Confirmed', '2024-10-31 20:05:28', '2024-10-31 20:05:28'),
(3, 58, '2024-11-29 00:07:32', 9, 'Nam optio ut at doloribus.', 'Confirmed', '2024-10-31 20:05:29', '2024-10-31 20:05:29'),
(4, 59, '2024-11-10 13:51:28', 1, 'Possimus ut qui maiores aut dolor.', 'Confirmed', '2024-10-31 20:05:30', '2024-10-31 20:05:30'),
(5, 60, '2024-11-14 03:33:00', 3, 'Sunt ut non debitis magnam veritatis.', 'Pending', '2024-10-31 20:05:31', '2024-10-31 20:05:31'),
(6, 61, '2024-11-29 01:46:54', 6, 'Adipisci voluptatem quis et hic ad quibusdam saepe doloribus.', 'Pending', '2024-10-31 20:05:32', '2024-10-31 20:05:32'),
(7, 62, '2024-11-02 13:42:35', 7, 'Voluptatem et id qui sint est nihil voluptatibus.', 'Pending', '2024-10-31 20:05:33', '2024-10-31 20:05:33'),
(8, 63, '2024-11-15 19:26:07', 5, NULL, 'Cancelled', '2024-10-31 20:05:34', '2024-10-31 20:05:34'),
(9, 64, '2024-11-12 06:50:54', 6, NULL, 'Cancelled', '2024-10-31 20:05:35', '2024-10-31 20:05:35'),
(10, 65, '2024-11-09 15:37:07', 4, 'Saepe doloribus ut ipsum.', 'Pending', '2024-10-31 20:05:36', '2024-10-31 20:05:36'),
(11, 66, '2024-11-15 03:32:06', 2, NULL, 'Cancelled', '2024-10-31 20:05:37', '2024-10-31 20:05:37'),
(12, 67, '2024-11-16 09:57:08', 8, NULL, 'Confirmed', '2024-10-31 20:05:39', '2024-10-31 20:05:39'),
(13, 68, '2024-11-27 22:18:51', 4, NULL, 'Cancelled', '2024-10-31 20:05:40', '2024-10-31 20:05:40'),
(14, 69, '2024-11-02 15:50:11', 7, NULL, 'Pending', '2024-10-31 20:05:41', '2024-10-31 20:05:41'),
(15, 70, '2024-11-30 17:26:39', 10, 'Deserunt vel sit non voluptatem eum deleniti voluptas.', 'Confirmed', '2024-10-31 20:05:42', '2024-10-31 20:05:42'),
(16, 71, '2024-11-16 07:32:12', 7, 'Quis quisquam adipisci dolore qui molestiae quas et deserunt.', 'Cancelled', '2024-10-31 20:05:43', '2024-10-31 20:05:43'),
(17, 72, '2024-11-05 09:31:00', 6, 'Dolor necessitatibus vitae dolorem quos numquam quia.', 'Cancelled', '2024-10-31 20:05:44', '2024-10-31 20:05:44'),
(18, 73, '2024-11-15 12:08:06', 6, 'Reprehenderit voluptas unde porro quas.', 'Pending', '2024-10-31 20:05:45', '2024-10-31 20:05:45'),
(19, 74, '2024-11-18 19:59:44', 10, NULL, 'Cancelled', '2024-10-31 20:05:46', '2024-10-31 20:05:46'),
(20, 75, '2024-11-03 14:13:04', 3, 'Id voluptatem aliquam illo dolorem doloremque eum nostrum.', 'Cancelled', '2024-10-31 20:05:47', '2024-10-31 20:05:47'),
(21, 76, '2024-11-30 01:33:56', 9, 'Et qui laboriosam voluptatum officiis molestias.', 'Completed', '2024-10-31 20:05:49', '2024-10-31 20:05:49'),
(22, 77, '2024-11-28 11:03:42', 10, NULL, 'Pending', '2024-10-31 20:05:50', '2024-10-31 20:05:50'),
(23, 78, '2024-11-28 19:15:10', 1, 'Fugiat distinctio veritatis debitis officia expedita omnis.', 'Pending', '2024-10-31 20:05:51', '2024-10-31 20:05:51'),
(24, 79, '2024-11-04 07:38:14', 9, 'Voluptatibus soluta iusto fuga quia facere consectetur.', 'Confirmed', '2024-10-31 20:05:52', '2024-10-31 20:05:52'),
(25, 80, '2024-11-02 17:28:20', 3, NULL, 'Completed', '2024-10-31 20:05:53', '2024-10-31 20:05:53'),
(26, 81, '2024-11-11 11:08:00', 2, 'Fugit maiores qui similique ut.', 'Confirmed', '2024-10-31 20:05:54', '2024-10-31 20:05:54'),
(27, 82, '2024-11-17 06:02:45', 8, NULL, 'Completed', '2024-10-31 20:05:55', '2024-10-31 20:05:55'),
(28, 83, '2024-11-17 15:21:37', 1, 'Dolor eligendi qui est autem qui.', 'Cancelled', '2024-10-31 20:05:56', '2024-10-31 20:05:56'),
(29, 84, '2024-11-23 11:45:15', 7, 'Laborum consectetur quod ut tenetur voluptatem est.', 'Cancelled', '2024-10-31 20:05:57', '2024-10-31 20:05:57'),
(30, 85, '2024-11-04 04:38:49', 1, 'Dolorum aut possimus corporis est autem.', 'Confirmed', '2024-10-31 20:05:59', '2024-10-31 20:05:59'),
(31, 86, '2024-11-03 15:49:32', 1, 'Et occaecati molestiae esse quae placeat ipsum odio.', 'Confirmed', '2024-10-31 20:06:00', '2024-10-31 20:06:00'),
(32, 87, '2024-11-04 13:40:37', 9, NULL, 'Completed', '2024-10-31 20:06:01', '2024-10-31 20:06:01'),
(33, 88, '2024-12-01 07:34:03', 2, NULL, 'Pending', '2024-10-31 20:06:03', '2024-10-31 20:06:03'),
(34, 89, '2024-11-18 16:25:49', 10, 'Voluptatibus vel necessitatibus quaerat quo.', 'Confirmed', '2024-10-31 20:06:04', '2024-10-31 20:06:04'),
(35, 90, '2024-12-01 19:46:05', 5, 'Qui asperiores et harum consequatur.', 'Completed', '2024-10-31 20:06:05', '2024-10-31 20:06:05'),
(36, 91, '2024-11-17 13:52:06', 4, 'Sed voluptatibus rerum nisi quas similique eveniet dolores omnis.', 'Pending', '2024-10-31 20:06:06', '2024-10-31 20:06:06'),
(37, 92, '2024-11-09 11:06:39', 3, NULL, 'Cancelled', '2024-10-31 20:06:07', '2024-10-31 20:06:07'),
(38, 93, '2024-11-17 00:37:39', 9, NULL, 'Completed', '2024-10-31 20:06:08', '2024-10-31 20:06:08'),
(39, 94, '2024-11-10 12:38:59', 7, 'Animi odit laborum accusamus voluptatibus dolores consequatur.', 'Confirmed', '2024-10-31 20:06:09', '2024-10-31 20:06:09'),
(40, 95, '2024-11-12 19:05:04', 5, NULL, 'Cancelled', '2024-10-31 20:06:10', '2024-10-31 20:06:10'),
(41, 96, '2024-11-22 11:46:26', 2, 'Est impedit dolor nostrum.', 'Cancelled', '2024-10-31 20:06:11', '2024-10-31 20:06:11'),
(42, 97, '2024-11-07 02:48:50', 6, NULL, 'Pending', '2024-10-31 20:06:12', '2024-10-31 20:06:12'),
(43, 98, '2024-11-17 17:59:40', 6, NULL, 'Confirmed', '2024-10-31 20:06:13', '2024-10-31 20:06:13'),
(44, 99, '2024-11-13 22:56:15', 5, NULL, 'Pending', '2024-10-31 20:06:15', '2024-10-31 20:06:15'),
(45, 100, '2024-11-12 14:27:57', 7, 'Et consequatur assumenda vel deleniti.', 'Completed', '2024-10-31 20:06:16', '2024-10-31 20:06:16'),
(46, 101, '2024-11-03 11:29:51', 3, NULL, 'Confirmed', '2024-10-31 20:06:17', '2024-10-31 20:06:17'),
(47, 102, '2024-11-15 15:03:20', 10, 'Animi a sunt porro non.', 'Cancelled', '2024-10-31 20:06:18', '2024-10-31 20:06:18'),
(48, 103, '2024-11-28 15:18:38', 5, 'Odio culpa minima doloremque iure.', 'Cancelled', '2024-10-31 20:06:19', '2024-10-31 20:06:19'),
(49, 104, '2024-11-13 10:16:55', 6, 'Dolor maxime est est totam velit consequatur corrupti.', 'Completed', '2024-10-31 20:06:20', '2024-10-31 20:06:20'),
(50, 105, '2024-11-02 16:48:52', 10, NULL, 'Cancelled', '2024-10-31 20:06:21', '2024-10-31 20:06:21'),
(51, 106, '2024-11-05 05:46:39', 9, NULL, 'Cancelled', '2024-10-31 20:06:22', '2024-10-31 20:06:22'),
(52, 107, '2024-11-19 19:58:20', 1, NULL, 'Confirmed', '2024-10-31 20:06:23', '2024-10-31 20:06:23'),
(53, 108, '2024-11-10 03:40:59', 5, NULL, 'Pending', '2024-10-31 20:06:24', '2024-10-31 20:06:24'),
(54, 109, '2024-11-02 00:08:44', 10, 'Dicta voluptate laboriosam incidunt.', 'Pending', '2024-10-31 20:06:25', '2024-10-31 20:06:25'),
(55, 110, '2024-11-25 01:40:12', 3, NULL, 'Completed', '2024-10-31 20:06:27', '2024-10-31 20:06:27'),
(56, 111, '2024-11-20 00:37:23', 6, NULL, 'Confirmed', '2024-10-31 20:06:28', '2024-10-31 20:06:28'),
(57, 112, '2024-11-17 04:17:29', 8, NULL, 'Pending', '2024-10-31 20:06:29', '2024-10-31 20:06:29'),
(58, 113, '2024-11-18 10:02:35', 3, NULL, 'Cancelled', '2024-10-31 20:06:30', '2024-10-31 20:06:30'),
(59, 114, '2024-11-23 00:22:37', 10, 'Voluptatem temporibus nemo sed dignissimos sint deserunt.', 'Confirmed', '2024-10-31 20:06:31', '2024-10-31 20:06:31'),
(60, 115, '2024-11-15 08:05:26', 5, NULL, 'Completed', '2024-10-31 20:06:32', '2024-10-31 20:06:32'),
(61, 116, '2024-11-15 08:57:10', 1, 'Officiis commodi harum dolorem voluptatem.', 'Cancelled', '2024-10-31 20:06:33', '2024-10-31 20:06:33'),
(62, 117, '2024-11-06 11:27:46', 10, 'Dolorum velit velit architecto veritatis aut iusto.', 'Pending', '2024-10-31 20:06:34', '2024-10-31 20:06:34'),
(63, 118, '2024-11-16 00:56:17', 8, 'Numquam ab doloribus sunt natus numquam optio.', 'Confirmed', '2024-10-31 20:06:35', '2024-10-31 20:06:35'),
(64, 119, '2024-11-28 16:18:32', 2, NULL, 'Confirmed', '2024-10-31 20:06:36', '2024-10-31 20:06:36'),
(65, 120, '2024-11-02 09:18:28', 2, NULL, 'Pending', '2024-10-31 20:06:37', '2024-10-31 20:06:37'),
(66, 121, '2024-11-27 14:19:35', 2, 'Quia necessitatibus facere excepturi eos et assumenda et.', 'Completed', '2024-10-31 20:06:38', '2024-10-31 20:06:38'),
(67, 122, '2024-11-22 02:33:41', 5, 'Asperiores iusto recusandae quos earum odit doloremque.', 'Cancelled', '2024-10-31 20:06:40', '2024-10-31 20:06:40'),
(68, 123, '2024-11-17 01:44:03', 9, 'Debitis voluptates quas rerum occaecati.', 'Cancelled', '2024-10-31 20:06:41', '2024-10-31 20:06:41'),
(69, 124, '2024-11-29 19:22:31', 4, 'Optio perferendis sunt suscipit officiis libero id eos.', 'Completed', '2024-10-31 20:06:42', '2024-10-31 20:06:42'),
(70, 125, '2024-11-25 03:49:10', 8, NULL, 'Confirmed', '2024-10-31 20:06:43', '2024-10-31 20:06:43'),
(71, 126, '2024-11-14 19:46:29', 5, NULL, 'Cancelled', '2024-10-31 20:06:44', '2024-10-31 20:06:44'),
(72, 127, '2024-11-11 00:03:18', 1, NULL, 'Confirmed', '2024-10-31 20:06:45', '2024-10-31 20:06:45'),
(73, 128, '2024-11-17 07:29:50', 4, 'Aut blanditiis quidem omnis quod in.', 'Pending', '2024-10-31 20:06:46', '2024-10-31 20:06:46'),
(74, 129, '2024-11-30 13:14:03', 10, 'Accusantium et in minima.', 'Confirmed', '2024-10-31 20:06:47', '2024-10-31 20:06:47'),
(75, 130, '2024-11-05 10:14:38', 10, NULL, 'Pending', '2024-10-31 20:06:48', '2024-10-31 20:06:48'),
(76, 131, '2024-11-23 08:44:56', 2, 'Autem et consequatur quisquam facere ut voluptas quia.', 'Pending', '2024-10-31 20:06:49', '2024-10-31 20:06:49'),
(77, 132, '2024-11-21 16:09:54', 9, 'Deleniti similique aut architecto omnis dolor.', 'Completed', '2024-10-31 20:06:50', '2024-10-31 20:06:50'),
(78, 133, '2024-11-12 08:17:33', 7, NULL, 'Pending', '2024-10-31 20:06:52', '2024-10-31 20:06:52'),
(79, 134, '2024-11-29 12:10:43', 8, NULL, 'Pending', '2024-10-31 20:06:53', '2024-10-31 20:06:53'),
(80, 135, '2024-11-03 06:10:13', 5, 'Aspernatur cumque consequatur quisquam est.', 'Completed', '2024-10-31 20:06:54', '2024-10-31 20:06:54'),
(81, 136, '2024-11-18 13:04:07', 8, NULL, 'Cancelled', '2024-10-31 20:06:55', '2024-10-31 20:06:55'),
(82, 137, '2024-11-02 12:54:25', 1, NULL, 'Cancelled', '2024-10-31 20:06:56', '2024-10-31 20:06:56'),
(83, 138, '2024-11-28 17:36:06', 9, 'Id porro qui accusamus ut aliquam a ex.', 'Completed', '2024-10-31 20:06:58', '2024-10-31 20:06:58'),
(84, 139, '2024-11-16 22:24:20', 1, NULL, 'Completed', '2024-10-31 20:06:59', '2024-10-31 20:06:59'),
(85, 140, '2024-11-26 21:15:01', 7, 'Iste facilis voluptatem excepturi error voluptatem dolorem.', 'Cancelled', '2024-10-31 20:07:00', '2024-10-31 20:07:00'),
(86, 141, '2024-11-10 16:45:34', 1, NULL, 'Pending', '2024-10-31 20:07:01', '2024-10-31 20:07:01'),
(87, 142, '2024-11-16 03:46:14', 5, 'Qui voluptatibus occaecati veniam minima.', 'Cancelled', '2024-10-31 20:07:02', '2024-10-31 20:07:02'),
(88, 143, '2024-12-01 20:02:39', 10, 'Enim et qui unde perspiciatis.', 'Confirmed', '2024-10-31 20:07:03', '2024-10-31 20:07:03'),
(89, 144, '2024-12-01 06:30:47', 4, 'Similique rem distinctio ut debitis occaecati et.', 'Confirmed', '2024-10-31 20:07:04', '2024-10-31 20:07:04'),
(90, 145, '2024-11-07 08:06:15', 9, 'Consequatur et optio aut nihil sit.', 'Confirmed', '2024-10-31 20:07:05', '2024-10-31 20:07:05'),
(91, 146, '2024-11-28 09:48:52', 10, 'Sequi commodi itaque vero deserunt et.', 'Cancelled', '2024-10-31 20:07:06', '2024-10-31 20:07:06'),
(92, 147, '2024-11-17 03:02:34', 5, 'Beatae aspernatur est molestiae at et.', 'Cancelled', '2024-10-31 20:07:07', '2024-10-31 20:07:07'),
(93, 148, '2024-11-06 13:57:58', 1, 'Eligendi quasi sapiente sed.', 'Cancelled', '2024-10-31 20:07:08', '2024-10-31 20:07:08'),
(94, 149, '2024-11-17 17:39:18', 9, NULL, 'Pending', '2024-10-31 20:07:10', '2024-10-31 20:07:10'),
(95, 150, '2024-11-10 22:34:36', 8, 'Nemo sit culpa laboriosam doloribus.', 'Confirmed', '2024-10-31 20:07:11', '2024-10-31 20:07:11'),
(96, 151, '2024-11-10 23:19:02', 2, NULL, 'Confirmed', '2024-10-31 20:07:12', '2024-10-31 20:07:12'),
(97, 152, '2024-11-29 06:16:01', 5, NULL, 'Confirmed', '2024-10-31 20:07:13', '2024-10-31 20:07:13'),
(98, 153, '2024-11-23 06:28:42', 9, NULL, 'Pending', '2024-10-31 20:07:14', '2024-10-31 20:07:14'),
(99, 154, '2024-11-03 02:15:53', 6, NULL, 'Cancelled', '2024-10-31 20:07:15', '2024-10-31 20:07:15'),
(100, 155, '2024-11-19 19:23:48', 7, NULL, 'Cancelled', '2024-10-31 20:07:16', '2024-10-31 20:07:16');

-- --------------------------------------------------------

--
-- Table structure for table `reservation_menu_items`
--

CREATE TABLE `reservation_menu_items` (
  `reservation_id` bigint UNSIGNED NOT NULL,
  `menu_item_id` bigint UNSIGNED NOT NULL,
  `quantity` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reservation_menu_items`
--

INSERT INTO `reservation_menu_items` (`reservation_id`, `menu_item_id`, `quantity`) VALUES
(1, 3, 1),
(1, 10, 1),
(1, 11, 2),
(1, 17, 2),
(2, 1, 2),
(2, 7, 1),
(2, 13, 1),
(2, 20, 3),
(3, 10, 1),
(4, 11, 2),
(4, 19, 1),
(5, 2, 3),
(5, 8, 2),
(5, 14, 3),
(6, 2, 2),
(6, 6, 3),
(6, 11, 1),
(6, 14, 2),
(6, 17, 1),
(7, 3, 3),
(7, 5, 1),
(7, 7, 2),
(7, 9, 3),
(7, 10, 2),
(8, 1, 3),
(8, 15, 1),
(8, 16, 2),
(8, 17, 1),
(9, 14, 2),
(10, 14, 2),
(10, 20, 1),
(11, 11, 3),
(11, 12, 3),
(11, 15, 2),
(11, 17, 1),
(11, 20, 2),
(12, 1, 2),
(13, 10, 1),
(13, 17, 1),
(14, 18, 3),
(15, 8, 1),
(16, 11, 2),
(17, 8, 1),
(17, 17, 1),
(18, 6, 2),
(18, 14, 1),
(18, 19, 2),
(19, 14, 1),
(19, 18, 2),
(20, 4, 3),
(20, 7, 3),
(20, 15, 1),
(20, 18, 1),
(21, 5, 3),
(21, 13, 1),
(21, 14, 3),
(21, 18, 1),
(22, 8, 3),
(23, 6, 3),
(23, 7, 3),
(24, 6, 1),
(24, 10, 1),
(24, 15, 1),
(25, 2, 3),
(26, 18, 2),
(27, 3, 2),
(27, 10, 3),
(27, 12, 2),
(28, 9, 2),
(29, 11, 3),
(29, 17, 1),
(30, 2, 3),
(30, 12, 1),
(30, 15, 2),
(31, 3, 2),
(31, 18, 1),
(32, 8, 2),
(33, 13, 1),
(34, 9, 2),
(34, 10, 2),
(34, 14, 1),
(34, 16, 1),
(34, 19, 3),
(35, 4, 2),
(35, 9, 2),
(35, 14, 2),
(35, 19, 3),
(36, 5, 2),
(37, 2, 2),
(37, 14, 3),
(37, 15, 3),
(37, 17, 2),
(37, 18, 2),
(38, 2, 1),
(39, 7, 2),
(39, 12, 2),
(40, 8, 3),
(40, 11, 1),
(40, 13, 1),
(40, 14, 1),
(41, 19, 3),
(42, 16, 1),
(43, 6, 2),
(43, 8, 3),
(43, 9, 1),
(43, 17, 2),
(43, 18, 2),
(44, 11, 1),
(44, 14, 1),
(44, 15, 3),
(44, 16, 3),
(45, 1, 3),
(45, 3, 3),
(45, 5, 2),
(45, 20, 1),
(46, 3, 3),
(46, 11, 3),
(47, 7, 3),
(47, 9, 2),
(47, 16, 3),
(47, 18, 2),
(48, 4, 3),
(48, 12, 1),
(48, 19, 3),
(49, 13, 1),
(49, 14, 3),
(49, 15, 3),
(49, 19, 1),
(49, 20, 2),
(50, 1, 1),
(50, 2, 3),
(50, 8, 2),
(50, 12, 3),
(51, 18, 1),
(52, 3, 1),
(52, 15, 3),
(52, 16, 3),
(52, 17, 2),
(53, 2, 3),
(53, 8, 3),
(53, 14, 2),
(53, 19, 3),
(54, 15, 1),
(54, 16, 2),
(55, 3, 1),
(55, 4, 1),
(55, 9, 1),
(56, 8, 2),
(56, 9, 1),
(56, 12, 1),
(56, 14, 1),
(57, 3, 2),
(57, 8, 1),
(58, 1, 1),
(58, 2, 2),
(59, 1, 2),
(59, 7, 2),
(59, 10, 1),
(59, 11, 1),
(59, 19, 2),
(60, 1, 1),
(60, 13, 3),
(60, 17, 3),
(60, 18, 3),
(60, 20, 1),
(61, 12, 2),
(62, 19, 2),
(63, 9, 3),
(63, 10, 1),
(63, 11, 1),
(63, 14, 3),
(64, 9, 2),
(64, 19, 3),
(65, 9, 2),
(66, 1, 2),
(66, 4, 1),
(66, 10, 2),
(66, 14, 1),
(67, 3, 1),
(67, 6, 2),
(67, 8, 2),
(67, 16, 1),
(67, 20, 2),
(68, 5, 1),
(68, 11, 2),
(68, 12, 2),
(69, 2, 3),
(69, 6, 3),
(70, 7, 2),
(70, 17, 2),
(71, 8, 3),
(71, 14, 2),
(71, 15, 1),
(72, 5, 3),
(72, 12, 2),
(72, 14, 1),
(72, 17, 2),
(72, 20, 1),
(73, 4, 3),
(73, 15, 2),
(74, 4, 3),
(74, 12, 3),
(75, 2, 3),
(75, 12, 3),
(75, 14, 3),
(75, 20, 3),
(76, 6, 3),
(76, 7, 2),
(76, 10, 3),
(76, 20, 2),
(77, 7, 3),
(77, 11, 2),
(77, 15, 1),
(78, 5, 2),
(79, 8, 1),
(79, 12, 2),
(79, 13, 1),
(79, 15, 1),
(80, 6, 3),
(80, 11, 1),
(80, 12, 1),
(81, 8, 1),
(81, 18, 3),
(81, 19, 2),
(82, 4, 1),
(82, 8, 2),
(82, 10, 1),
(82, 15, 3),
(83, 2, 2),
(83, 10, 2),
(83, 13, 2),
(83, 18, 3),
(84, 16, 1),
(84, 20, 1),
(85, 11, 3),
(85, 14, 3),
(85, 18, 1),
(85, 19, 2),
(85, 20, 3),
(86, 15, 2),
(86, 19, 3),
(87, 3, 3),
(87, 14, 3),
(87, 16, 1),
(87, 17, 3),
(88, 4, 1),
(88, 6, 2),
(88, 15, 3),
(89, 7, 3),
(89, 17, 1),
(89, 19, 2),
(90, 4, 3),
(90, 20, 2),
(91, 5, 3),
(91, 8, 2),
(91, 12, 3),
(91, 14, 2),
(91, 19, 1),
(92, 8, 3),
(92, 13, 2),
(92, 17, 2),
(93, 15, 1),
(93, 20, 1),
(94, 7, 3),
(95, 5, 2),
(96, 7, 1),
(96, 16, 1),
(97, 7, 2),
(98, 2, 3),
(98, 6, 2),
(98, 14, 1),
(98, 18, 2),
(99, 2, 1),
(99, 8, 1),
(99, 13, 1),
(99, 20, 1),
(100, 5, 1),
(100, 6, 2),
(100, 8, 2),
(100, 12, 2);

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `rating` tinyint UNSIGNED NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `approved` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `user_id`, `rating`, `comment`, `approved`, `created_at`, `updated_at`) VALUES
(2, 157, 3, 'Neque earum eveniet est dolores omnis ut. Deleniti illo molestiae similique autem. Minima dolor earum distinctio aut quibusdam architecto deserunt ratione. Laudantium ut ut architecto debitis.', 1, '2024-10-31 20:07:19', '2024-10-31 20:07:19'),
(3, 158, 5, 'A eos odio corporis similique eos. Commodi quam cumque eligendi inventore explicabo. Placeat dolores voluptatem iusto dolorem sed.', 1, '2024-10-31 20:07:21', '2024-10-31 20:07:21'),
(4, 159, 2, 'Voluptatibus esse unde autem modi. Magni veritatis et odit aspernatur. Et numquam quis et ut animi.', 1, '2024-10-31 20:07:22', '2024-10-31 20:07:22'),
(5, 160, 2, 'Odio voluptatem nulla ut. Animi tenetur quas amet magnam placeat consectetur occaecati. At non quo ea repellendus nobis suscipit expedita occaecati. Non qui consequatur maiores omnis qui id.', 1, '2024-10-31 20:07:23', '2024-10-31 20:07:23'),
(6, 161, 4, 'Nam quos et autem ipsum quia voluptates optio. Dolorum exercitationem error dolore reiciendis culpa. Modi est illum consequatur cupiditate non beatae quas et.', 1, '2024-10-31 20:07:24', '2024-10-31 20:07:24'),
(7, 162, 1, 'Ut odio accusantium quis sed. At et aut nihil vitae culpa consequatur. Magni voluptatem perferendis minus neque omnis quaerat. Enim assumenda odit laudantium ut ducimus.', 1, '2024-10-31 20:07:25', '2024-10-31 20:07:25'),
(8, 163, 4, 'Inventore dolores minima odit ad. Illum eligendi tempore ea cumque. Qui accusamus ut voluptatem accusamus. Nihil dolor molestiae quae debitis ut.', 0, '2024-10-31 20:07:26', '2024-10-31 20:07:26'),
(9, 164, 1, 'Aliquam aut aut earum voluptatem. Velit iure accusamus quas adipisci. Placeat et sed magni rem in praesentium porro ex. Nam porro id enim libero.', 0, '2024-10-31 20:07:27', '2024-10-31 20:07:27'),
(10, 165, 4, 'Omnis consectetur quasi tempore rem. Laborum sit aperiam illo enim vero blanditiis est. Excepturi velit deserunt aspernatur odit. Dignissimos sed et debitis nostrum mollitia velit natus.', 0, '2024-10-31 20:07:29', '2024-10-31 20:07:29'),
(11, 166, 3, 'Rerum cum rem minus voluptatem omnis. Natus earum reiciendis sunt ut atque ipsa iste.', 1, '2024-10-31 20:07:30', '2024-10-31 20:07:30'),
(12, 167, 1, 'Voluptate pariatur animi fugit delectus. Quos temporibus animi natus doloremque. Qui aut est velit incidunt explicabo enim neque. Rem minus ducimus vel.', 0, '2024-10-31 20:07:31', '2024-10-31 20:07:31'),
(13, 168, 2, 'Molestiae occaecati possimus ut et doloribus quia earum. Velit animi iure cum. Itaque aliquid sint impedit quis sunt odit.', 1, '2024-10-31 20:07:32', '2024-10-31 20:07:32'),
(14, 169, 5, 'Ut vitae eius culpa iure. Dolor nisi tempora et repellat et deleniti. Dolores assumenda fugiat omnis ducimus totam dolorem voluptate eaque. Voluptatem ut dolor et deserunt est ipsum consequatur.', 1, '2024-10-31 20:07:33', '2024-10-31 20:07:33'),
(15, 170, 5, 'Accusamus provident veritatis delectus. Saepe sequi esse necessitatibus ut aliquam eum temporibus voluptas. Ut dolorem atque cumque. Quod cupiditate cupiditate numquam.', 1, '2024-10-31 20:07:34', '2024-10-31 20:07:34'),
(16, 171, 2, 'Architecto tenetur aspernatur facilis officiis accusantium nulla dolor. Adipisci praesentium in consequuntur incidunt delectus explicabo quis sit. Rem ut architecto perspiciatis numquam laborum ea iusto. Vel praesentium excepturi maiores officiis nisi.', 1, '2024-10-31 20:07:35', '2024-10-31 20:07:35'),
(17, 172, 5, 'Autem esse laboriosam porro esse libero reiciendis aperiam. Pariatur omnis nobis suscipit odit dolore. Officiis recusandae est dignissimos placeat ipsam.', 1, '2024-10-31 20:07:36', '2024-10-31 20:07:36'),
(18, 173, 2, 'Reprehenderit beatae architecto molestias aut molestiae nobis est. Quo voluptate non dolores corrupti vel. Dolorem atque laudantium ipsum corporis porro. Et sequi rerum nesciunt deserunt rem quis non.', 1, '2024-10-31 20:07:37', '2024-10-31 20:07:37'),
(19, 174, 1, 'Non a non dolorem quia. Labore architecto debitis aut neque eius odit accusamus. Commodi qui sapiente accusantium blanditiis consequuntur. Provident sed dolores molestiae suscipit ut magni vero.', 1, '2024-10-31 20:07:38', '2024-10-31 20:07:38'),
(20, 175, 2, 'Modi sed aut mollitia fugiat ratione adipisci. Ratione fuga maiores ratione quod quibusdam blanditiis. Consequatur qui fugit earum eveniet dolor quaerat.', 1, '2024-10-31 20:07:39', '2024-10-31 20:07:39'),
(21, 176, 2, 'Ipsam et repellendus qui eum. Quae eos dolores quidem sequi voluptas recusandae. Soluta aut occaecati rem magni ipsa vel quas.', 0, '2024-10-31 20:07:40', '2024-10-31 20:07:40'),
(22, 177, 1, 'Voluptas rerum consequatur voluptatum qui inventore. Molestiae in quis maiores dignissimos quasi.', 1, '2024-10-31 20:07:42', '2024-10-31 20:07:42'),
(23, 178, 3, 'Veritatis voluptas recusandae consectetur beatae quasi in sunt. Ullam occaecati natus atque nihil exercitationem quas. Omnis ea ullam vel voluptatem.', 1, '2024-10-31 20:07:43', '2024-10-31 20:07:43'),
(24, 179, 1, 'Dignissimos vel molestiae animi. Fugiat quo voluptates cumque laboriosam. Sunt magnam veritatis iure ullam harum.', 1, '2024-10-31 20:07:44', '2024-10-31 20:07:44'),
(25, 180, 5, 'Eius at aliquid et non. Assumenda voluptatem rerum qui. Aut quis ex voluptas tenetur quas quis tempore. Eum fuga id impedit velit omnis aspernatur. Voluptatibus minima est consequatur ipsam rem.', 1, '2024-10-31 20:07:45', '2024-10-31 20:07:45'),
(26, 181, 2, 'Inventore laboriosam eos unde quia cumque dolores atque et. Hic deserunt quo nam voluptatem optio est cum. Et eos in et rem et. Quasi enim distinctio dolor mollitia molestiae saepe voluptate quis. Quisquam officiis qui eos ut eum.', 1, '2024-10-31 20:07:46', '2024-10-31 20:07:46'),
(27, 182, 5, 'Corporis qui ducimus soluta temporibus enim pariatur distinctio cupiditate. In nostrum vel at.', 1, '2024-10-31 20:07:47', '2024-10-31 20:07:47'),
(28, 183, 3, 'Eligendi facere est harum reiciendis nostrum sapiente. Et quos amet reprehenderit molestiae quas aperiam. Nulla qui magnam laudantium ab praesentium natus. Molestiae voluptatem ut voluptatibus rerum nesciunt sunt commodi. Odio molestiae quo accusamus nulla eum adipisci dolorem.', 1, '2024-10-31 20:07:48', '2024-10-31 20:07:48'),
(29, 184, 1, 'Officiis repudiandae fugit optio et. Qui veniam pariatur et quibusdam eaque et minus. Itaque accusantium qui dicta corporis necessitatibus. In nam cum consequatur pariatur quidem ut inventore.', 1, '2024-10-31 20:07:49', '2024-10-31 20:07:49'),
(30, 185, 4, 'Distinctio ex voluptatibus voluptas deserunt nobis ducimus quaerat consequatur. Reiciendis illo in officia. Delectus est dolor ut fugit est.', 1, '2024-10-31 20:07:50', '2024-10-31 20:07:50'),
(31, 188, 5, 'This restaurant is amazing!', 0, '2024-11-01 14:29:13', '2024-11-01 14:29:13');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `first_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('Customer','Admin') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Customer',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Jayden', 'Hansen', 'jenkins.layne@example.org', '+1 (385) 991-7276', '$2y$12$TrR1gCsaSN6dNmcHdwxUKebaP/WGhaV0cx32.ZVDA9EnqhhpPJpeG', 'Customer', '2024-10-31 20:04:27', '2024-10-31 20:04:27'),
(2, 'Einar', 'Gleason', 'qprice@example.com', '+1 (973) 900-1650', '$2y$12$Pr9lnk/JbEx56rkF85gYCehcth45GGG4P2CO3vo2l477FEnv.S66q', 'Admin', '2024-10-31 20:04:28', '2024-10-31 20:04:28'),
(3, 'Junior', 'Erdman', 'rosanna.erdman@example.net', '+18067993162', '$2y$12$4i.F7lXCJxJ91vniu2DOf.Jy6kf9yBrcVybV5FVjlHYTgAK3ivMR2', 'Customer', '2024-10-31 20:04:29', '2024-10-31 20:04:29'),
(4, 'Triston', 'Watsica', 'xcartwright@example.org', '+1.470.298.2216', '$2y$12$UEfiotI4jsGbJQ19sTmEqeSghAT0slFVKbM.jb1a8rH/QyS4SdNnu', 'Customer', '2024-10-31 20:04:30', '2024-10-31 20:04:30'),
(5, 'Larue', 'Mohr', 'alison.lindgren@example.net', '218-610-8645', '$2y$12$reqkY7bjv4cedricZdyFyuP2mmBoIgaRZsXQmBB6iJr6aGGPZnRV2', 'Customer', '2024-10-31 20:04:31', '2024-10-31 20:04:31'),
(6, 'Estrella', 'Hodkiewicz', 'rosemarie54@example.com', '(754) 859-8625', '$2y$12$YLvFbb4e5pK7MzePF7WFlu5qGyWv8OHSicbPIKmYGNBK1D.T2dGaK', 'Customer', '2024-10-31 20:04:32', '2024-10-31 20:04:32'),
(7, 'Prince', 'Schneider', 'sreinger@example.net', '1-972-363-7855', '$2y$12$G6pHA/re42j6czu84A2ABuBeBrrjZlLVJaNKofHrwacWTkmX6lj4K', 'Customer', '2024-10-31 20:04:33', '2024-10-31 20:04:33'),
(8, 'Marcos', 'Yost', 'bridget.steuber@example.com', '+1-678-746-1442', '$2y$12$DsYushhsp/NYx0yPOe.l2ObrmkvoYLZOQkwJOQQaczGFS7um9NVN2', 'Customer', '2024-10-31 20:04:35', '2024-10-31 20:04:35'),
(9, 'Cleora', 'Rowe', 'isabelle20@example.com', '614-887-1868', '$2y$12$uFHrZv2m.mf8K/iDQqOqm.a3CWA/v5wH3tDTrbf0BSpcezfcyjMY2', 'Admin', '2024-10-31 20:04:36', '2024-10-31 20:04:36'),
(10, 'Caroline', 'Daniel', 'zora.zieme@example.net', '(952) 623-8847', '$2y$12$fuirNA5aBbKXziPJgXUQOuIT0jTq1/vvsMHI6Ke2beVw1.ZIL3beW', 'Customer', '2024-10-31 20:04:37', '2024-10-31 20:04:37'),
(11, 'Daniela', 'Hoeger', 'tressa51@example.net', '+1.551.573.5182', '$2y$12$8rNKJYifbFPzqmRiDPYkqe/NTAEyuFU6gUFR9KLt.GVD9Jw3.r/6a', 'Admin', '2024-10-31 20:04:38', '2024-10-31 20:04:38'),
(12, 'Dedrick', 'Willms', 'adrianna.cassin@example.org', '(785) 459-9198', '$2y$12$M8/0YCdgol2x5NXOMVxRI./FKXJLOc6EOLEBlZsmRPVxEvbrHw5Zi', 'Admin', '2024-10-31 20:04:39', '2024-10-31 20:04:39'),
(13, 'Kaia', 'Reilly', 'wehner.mateo@example.net', '1-820-922-8935', '$2y$12$rOJAfQpVUPEB2rkdF.W7rOzlwpc25umUTxJ7DRd9vGCcOwefrmqkm', 'Admin', '2024-10-31 20:04:40', '2024-10-31 20:04:40'),
(14, 'Ceasar', 'Muller', 'rachael16@example.com', '+1-940-789-4518', '$2y$12$LG2.kiRcCCK6cDMwzOnSWeew6Qgpg/oxAQ/OudNYsRdznKyOnlKja', 'Admin', '2024-10-31 20:04:41', '2024-10-31 20:04:41'),
(15, 'Demarco', 'Kuphal', 'little.dannie@example.net', '+19893131464', '$2y$12$HNuNgmPSEQf1mFk6DDMVQuUeyiU53bHQBYHgVPlLxWtRpnH2Ryfla', 'Admin', '2024-10-31 20:04:42', '2024-10-31 20:04:42'),
(16, 'Arnaldo', 'Braun', 'raoul.wolf@example.org', '662-239-9513', '$2y$12$gyaojTWX3dLYKK/O5Xjanui3sZ6vSEXoTost3GwSu2/mgZrA4oFGm', 'Admin', '2024-10-31 20:04:43', '2024-10-31 20:04:43'),
(17, 'Willy', 'Hoppe', 'hbecker@example.net', '701-248-0984', '$2y$12$XSdN2pQ6WMd2BmNDqMzI4uTCM3qicLSi9gy40KleZtbJXa/LR9oM2', 'Customer', '2024-10-31 20:04:44', '2024-10-31 20:04:44'),
(18, 'Chasity', 'Kris', 'hillary57@example.org', '(940) 467-0029', '$2y$12$aRSIq5d1yu10Hqq74/Pf7ed6RMoiht/g6JZK5bUSvQNsbm43twAyO', 'Customer', '2024-10-31 20:04:46', '2024-10-31 20:04:46'),
(19, 'Rodrigo', 'Williamson', 'schimmel.vladimir@example.com', '+14356472928', '$2y$12$OSQXpStGM7Rpo71mWD6cA.2T7HwDgsFT6H38A0qoYMvmjRxFQ3U6C', 'Admin', '2024-10-31 20:04:47', '2024-10-31 20:04:47'),
(20, 'Una', 'Sporer', 'nolan45@example.org', '(754) 847-5502', '$2y$12$Ur.oXP22YoBNqS/4q1FmEuGR5HqLgimJVi/uulu0ugIR/YpuuV95G', 'Admin', '2024-10-31 20:04:48', '2024-10-31 20:04:48'),
(21, 'Tina', 'Jacobs', 'ray73@example.com', '1-434-546-1484', '$2y$12$HxvOTB/Vxiyb0H7Mg.No0uEr16EJ2lEhmRcwrt8Ehi.ARD4.aoDs6', 'Admin', '2024-10-31 20:04:49', '2024-10-31 20:04:49'),
(22, 'Oran', 'Tromp', 'reuben.walker@example.com', '+15032678333', '$2y$12$fPcNhDtlZEd1/xGbfFYgUu9DvM2VJN3JZUxioOc.htgJhq0pc4Gle', 'Customer', '2024-10-31 20:04:50', '2024-10-31 20:04:50'),
(23, 'Theo', 'Gutmann', 'rashawn42@example.com', '573.928.6539', '$2y$12$g78seq0mDFWmLfDfUmH85.yJ37AZWHV3swKxuijMGb8DQWzMaUmZG', 'Customer', '2024-10-31 20:04:51', '2024-10-31 20:04:51'),
(24, 'Bella', 'Reinger', 'ila.cremin@example.com', '+1.385.862.9235', '$2y$12$cvWFEl8GXYys9oTZiip9ZOWw7lAOSviFkSm3nsxgQ6TrDG5CRM8Qu', 'Customer', '2024-10-31 20:04:52', '2024-10-31 20:04:52'),
(25, 'Holly', 'Beer', 'bergnaum.amelia@example.com', '(617) 416-6541', '$2y$12$sB0SWF776yQsG43Fo8W6g.H9AzOgWqZ4Xx8l9tqghMLZhD9S/yvz2', 'Admin', '2024-10-31 20:04:53', '2024-10-31 20:04:53'),
(26, 'Imelda', 'Turcotte', 'dulce.beier@example.org', '+1 (769) 720-5216', '$2y$12$CIZ.Xe/cdBdtktIPVLWHoeCU25dCywiPvRMXV9TLKEngnlxrB/UCO', 'Admin', '2024-10-31 20:04:54', '2024-10-31 20:04:54'),
(27, 'Janice', 'Turner', 'cbeatty@example.com', '567.782.5302', '$2y$12$3V8fgBAXjawcNXp3dc7U5uZrewc.OGeDOXS1pWl8T529mGRNIw.Qy', 'Admin', '2024-10-31 20:04:55', '2024-10-31 20:04:55'),
(28, 'Francesca', 'Nitzsche', 'khowe@example.org', '830.430.6325', '$2y$12$fZuS2HOHLjntnPXxGnMuPu.G21qrh5imI.LM9Qiwb1GmhCt.H2D6G', 'Admin', '2024-10-31 20:04:56', '2024-10-31 20:04:56'),
(29, 'Larissa', 'Kunde', 'reynolds.felipa@example.org', '(610) 906-2851', '$2y$12$Cm85T5tkWauHa7stI1T9muyPSzj/YotVnjSUCcLdA.uGjTwSRc3PW', 'Admin', '2024-10-31 20:04:57', '2024-10-31 20:04:57'),
(30, 'Janis', 'Reynolds', 'yblick@example.net', '1-517-431-0892', '$2y$12$.Lpv3KsZpl6r2jgPuvdjXOf5mxZ8a0MTdqy11LJiMgvvFJ1LRYaIu', 'Admin', '2024-10-31 20:04:58', '2024-10-31 20:04:58'),
(31, 'Kendrick', 'O\'Kon', 'heller.raphael@example.net', '+1-305-458-0146', '$2y$12$UlSzvbvUgNhwLRDWY.QJdeTJenGeJuquQUXGbFuGAF7C2PXLAZYCO', 'Customer', '2024-10-31 20:05:00', '2024-10-31 20:05:00'),
(32, 'Veda', 'Bradtke', 'qdickens@example.org', '+1.316.913.0999', '$2y$12$.M7.e20cm8qStemnt1Yvl.SWLCVuS2YrpUDZG/bw3lByQVFeracbm', 'Admin', '2024-10-31 20:05:01', '2024-10-31 20:05:01'),
(33, 'Linnea', 'Marks', 'cartwright.jaquan@example.net', '+1-937-373-7810', '$2y$12$2LE7BS1eB.rR4vcZuzMoyu9s7QQi8LM8YHsmxLI06lgC6tolyIpHK', 'Customer', '2024-10-31 20:05:02', '2024-10-31 20:05:02'),
(34, 'Lelah', 'Hudson', 'cschumm@example.org', '734-546-8509', '$2y$12$8WKtD0dt2LJCu7WCgi6c3.RtpQaVdd26bBTAeCzfSy9ynm9ZoHJ0W', 'Customer', '2024-10-31 20:05:03', '2024-10-31 20:05:03'),
(35, 'Remington', 'Schroeder', 'name.gerlach@example.org', '820.804.8344', '$2y$12$arHWj3E0kv9F6RbImhY5v.ToPvI.wUnjrUdKCtM7aN0MKQceJhyKW', 'Customer', '2024-10-31 20:05:04', '2024-10-31 20:05:04'),
(36, 'Alden', 'Deckow', 'hokeefe@example.org', '1-401-453-2972', '$2y$12$azKX7HD0ySCxjkT58UVsfez/eRoJGKbS8qqqU7E8qJe.CTE8hDl..', 'Admin', '2024-10-31 20:05:05', '2024-10-31 20:05:05'),
(37, 'Ayana', 'Oberbrunner', 'pcormier@example.org', '+1-903-818-4799', '$2y$12$8SbWg1VTRhwRvpqykjkFje2aQb8hJVSQQo1XLBpB7B7kJK8o5Mt4O', 'Admin', '2024-10-31 20:05:06', '2024-10-31 20:05:06'),
(38, 'Mikel', 'Schulist', 'frank61@example.org', '+1 (985) 441-4907', '$2y$12$WAhhxIZ0AHCfTFAxuejBiub0WBfO26igJwEOgRxyWNcwkKfThiAh6', 'Customer', '2024-10-31 20:05:07', '2024-10-31 20:05:07'),
(39, 'Kathryn', 'Lubowitz', 'carissa06@example.com', '+1-949-349-4942', '$2y$12$JJBLoL3OQ2OAefj7sGle0eA0Ng9FGHTi75SBozUznT1M/.P1wZQmW', 'Customer', '2024-10-31 20:05:08', '2024-10-31 20:05:08'),
(40, 'Adrain', 'Upton', 'freddy.koepp@example.org', '+1 (458) 562-4246', '$2y$12$j9O0uvPdKfHN0rBlntcUIO0TrguHAlw4/Jg9riHQz10yDpRmoC6/u', 'Customer', '2024-10-31 20:05:09', '2024-10-31 20:05:09'),
(41, 'Skylar', 'Kuhlman', 'moore.abe@example.org', '+1.580.570.2889', '$2y$12$InnbYFN3A0wswj2XAScRRuiwmwqX4pG9n8oZurKxhmmusn8KMGDKW', 'Admin', '2024-10-31 20:05:11', '2024-10-31 20:05:11'),
(42, 'Clara', 'Waelchi', 'hjerde@example.net', '1-606-560-5947', '$2y$12$2bm0FWaECmUeTlRK5t71Qe4JNvOf1rDMZoX1I.fsgJ2HS7ZUdrTWW', 'Customer', '2024-10-31 20:05:12', '2024-10-31 20:05:12'),
(43, 'Mohammed', 'O\'Reilly', 'dexter31@example.com', '1-641-793-0889', '$2y$12$JlKBeOVMpA7PU9ynX2y5aensWdnIb4w1G1jsqKh0xgjGU8G57XyNa', 'Admin', '2024-10-31 20:05:13', '2024-10-31 20:05:13'),
(44, 'Chasity', 'Boyer', 'ischaefer@example.org', '+1-680-759-7796', '$2y$12$ylfDZHd1Gw2hIfOeIGbhc.6Ua0r92xl0VzoeQel7nRAYtyT24UASC', 'Admin', '2024-10-31 20:05:14', '2024-10-31 20:05:14'),
(45, 'Itzel', 'Hettinger', 'skylar.conroy@example.net', '+1.973.805.2042', '$2y$12$2Xq5W8vO64KOkuUCq2/X6uVmW3arA9x/gLHcyNg49aaIveqDUdH/e', 'Admin', '2024-10-31 20:05:15', '2024-10-31 20:05:15'),
(46, 'Kelley', 'Roberts', 'cconn@example.net', '1-857-868-0771', '$2y$12$S8wlWT.OXpHiWOf2QOHfl.deIIwQD7c5oxvjm5PdjQvWT97Ny8mG.', 'Customer', '2024-10-31 20:05:16', '2024-10-31 20:05:16'),
(47, 'Deonte', 'Mayert', 'gail29@example.net', '1-754-490-6349', '$2y$12$11jqRJ0BTmWxCJrGRjWo/uZUZAcwUV5cF.sikxOl/MxhpENKZXucC', 'Admin', '2024-10-31 20:05:17', '2024-10-31 20:05:17'),
(48, 'Misty', 'Bogisich', 'percy51@example.net', '(352) 757-3411', '$2y$12$5gPUjuwII99R/56oytXHJ.xflmDkoiVapWwhkJN8E7TFbiiCXax8q', 'Admin', '2024-10-31 20:05:18', '2024-10-31 20:05:18'),
(49, 'Lilla', 'Hoppe', 'selmer.yundt@example.com', '802-554-9753', '$2y$12$wqGIkBDTtzOv2rKYeQXhueHljR6ymuETIyYrqaYIuqZHH9.kfQ6By', 'Customer', '2024-10-31 20:05:19', '2024-10-31 20:05:19'),
(50, 'Stephan', 'White', 'rick.kautzer@example.org', '(406) 624-1648', '$2y$12$0Ufg9ji1r0qjyoDGygo/POMMAaPyhcxGH9Aajst7kg/oDydtERTm.', 'Admin', '2024-10-31 20:05:20', '2024-10-31 20:05:20'),
(51, 'Saul', 'Baumbach', 'norma99@example.com', '+1-424-373-0842', '$2y$12$jS4Ap9pVChR9Udo5Gil3UuD8ltyYKIiwVUuUKR4mlRsTnxAnzJNGu', 'Admin', '2024-10-31 20:05:22', '2024-10-31 20:05:22'),
(52, 'Warren', 'Nader', 'cgoodwin@example.com', '972.693.8290', '$2y$12$XzJ5OoMrEkZHPNOL.EQy3OyxkYNUimxesHSWsqYu7t8tyX4GuJCsK', 'Admin', '2024-10-31 20:05:23', '2024-10-31 20:05:23'),
(53, 'Ansel', 'Hilpert', 'welch.christop@example.com', '+1 (272) 525-6874', '$2y$12$ebg.ZM4B2CH8rLAB9UQZt.5/fGCKftZqpAMRviNNnpjfqAE7GR0W2', 'Admin', '2024-10-31 20:05:24', '2024-10-31 20:05:24'),
(54, 'Gilberto', 'Swift', 'gdickens@example.com', '380-972-4037', '$2y$12$UdHpGH1ZEanQkMA7B/i22OklCX1KkweVNnL1Tg2HNQUezkW8D7Gbq', 'Admin', '2024-10-31 20:05:25', '2024-10-31 20:05:25'),
(55, 'Kyla', 'Hegmann', 'sschuppe@example.com', '+1.779.875.0093', '$2y$12$owRaADywNFRpMyDylOrrqOpBX9hmfdZ1ByBdqIh1R4K3Zyaiu4wJe', 'Admin', '2024-10-31 20:05:26', '2024-10-31 20:05:26'),
(56, 'Archibald', 'Harvey', 'thalia.denesik@example.net', '445-689-4493', '$2y$12$7jru9X/pRJ0.Byj8Mb3mwu6AdIhgR4IlYJN21AlMiv.5h/MmpcyEO', 'Customer', '2024-10-31 20:05:28', '2024-10-31 20:05:28'),
(57, 'Adeline', 'Konopelski', 'jaylen32@example.net', '(360) 701-7310', '$2y$12$GCmRFWrqvOOpLId0H07q8OJCfONbjulmCvwrJrfk0UbyZptFjo4.i', 'Admin', '2024-10-31 20:05:29', '2024-10-31 20:05:29'),
(58, 'Rosamond', 'Gutkowski', 'carter.jamil@example.org', '+1.959.851.3581', '$2y$12$AhvQQgNriEV4bqy4jGAHuuB1.M0zRNLJk4nBJm5jX2bC8QJ/8f.4y', 'Admin', '2024-10-31 20:05:30', '2024-10-31 20:05:30'),
(59, 'Kiana', 'Hirthe', 'clowe@example.org', '859-468-9593', '$2y$12$3ZTkxmUqLLXpGpnjQkfwqOiyedw6BHudSZweDqDdcvLcZzEJ8qNh2', 'Customer', '2024-10-31 20:05:31', '2024-10-31 20:05:31'),
(60, 'Daisha', 'Zulauf', 'bparisian@example.org', '520-822-4530', '$2y$12$Q0g875319yXlmKQxGPKu1.qZRpvOL2MTH9PrMt4UehExwxQkJ4aVK', 'Admin', '2024-10-31 20:05:32', '2024-10-31 20:05:32'),
(61, 'Edwardo', 'Considine', 'corwin.mozell@example.org', '+1 (571) 790-7784', '$2y$12$qRVBKO7KiYOyuZqHd4P/I.sH7C3yoluA7TWNamyCfTAolZ/2BFQmO', 'Customer', '2024-10-31 20:05:33', '2024-10-31 20:05:33'),
(62, 'Elna', 'Smitham', 'baumbach.etha@example.com', '+1-458-312-3076', '$2y$12$MXPFysX7tNdgUWGw5B5Bh.O2rpxJwuBRHcON2T5fHP4pjEI/11WiK', 'Admin', '2024-10-31 20:05:34', '2024-10-31 20:05:34'),
(63, 'Olen', 'Mante', 'dwindler@example.net', '1-458-249-6551', '$2y$12$APOV6cBbi0qhb7Enfy.TJeiEG3Gkm0q0pAYgtNB/cvrn8QgF/Tcm2', 'Customer', '2024-10-31 20:05:35', '2024-10-31 20:05:35'),
(64, 'Rosella', 'Spencer', 'von.kurt@example.com', '(563) 477-5785', '$2y$12$hDAR4hLzI0UaeQYl52IHYO.EaMgqNyV.kiqiKWu90hX0euqL/xdTG', 'Admin', '2024-10-31 20:05:36', '2024-10-31 20:05:36'),
(65, 'Faye', 'Kuhic', 'chloe52@example.net', '678.728.1855', '$2y$12$b0JSyOgMGxZEaxyS36FOWOmlZc6vJgcsytIwFXsu38bVzR0i9/bse', 'Admin', '2024-10-31 20:05:37', '2024-10-31 20:05:37'),
(66, 'Adrianna', 'Smith', 'august.blanda@example.com', '+1 (283) 839-9866', '$2y$12$f2Msijsg0Ki0l.ltiP2APuWVRbBL8yp6XBFZjjM4fgvBkeFOkm.2y', 'Customer', '2024-10-31 20:05:38', '2024-10-31 20:05:38'),
(67, 'Ruben', 'Wuckert', 'darryl17@example.net', '+1 (763) 884-2531', '$2y$12$TCtplTG7LzRQcZJZ0T1yCOvkQYV8c8iWCJ./jkv2htXbuulAdd2fG', 'Admin', '2024-10-31 20:05:40', '2024-10-31 20:05:40'),
(68, 'Pierre', 'Feeney', 'bennett.hand@example.com', '(303) 856-1372', '$2y$12$YcQ7Hxnpq37o.JkiK.SyluJTrN9QSBGHRPdbP8DmoLDSBwps9ZZ7e', 'Customer', '2024-10-31 20:05:41', '2024-10-31 20:05:41'),
(69, 'Cara', 'Zemlak', 'cbeer@example.net', '+1.573.228.1780', '$2y$12$qQL.2xuLZKSTKdmUTX3/i.OQaAjdEQr2S4u3yYMLq1remXlIA/3Bu', 'Admin', '2024-10-31 20:05:42', '2024-10-31 20:05:42'),
(70, 'Chelsea', 'Lueilwitz', 'lauretta47@example.org', '+1-985-505-5217', '$2y$12$.gptLsBBKXCfzRNLO4nxyOpRKvMdgbP2a6Nmbqw7DWSDoYC7cd/wC', 'Customer', '2024-10-31 20:05:43', '2024-10-31 20:05:43'),
(71, 'Colin', 'Zboncak', 'vandervort.lillian@example.net', '+1.407.548.8522', '$2y$12$Q0Scx40rACCalA/paemavO/sUGUAMIGSfB4PlcKs74UGwA5ism2KC', 'Admin', '2024-10-31 20:05:44', '2024-10-31 20:05:44'),
(72, 'Wellington', 'Padberg', 'kenyatta.schulist@example.net', '+1.531.318.1621', '$2y$12$zAIqcV/R3Rq1ij6jaKLfDuKWbPyyH8vJptIduQbheH7VHTyg2ZQui', 'Customer', '2024-10-31 20:05:45', '2024-10-31 20:05:45'),
(73, 'Zachariah', 'Kutch', 'rowe.jovan@example.com', '1-854-516-9812', '$2y$12$j2iGA/FRsVctlU1h2iIrF./xMsMSEZNAJpqWc1E/FvG3GphSGLQQ.', 'Customer', '2024-10-31 20:05:46', '2024-10-31 20:05:46'),
(74, 'Aileen', 'Block', 'lesley.torp@example.com', '574.922.2758', '$2y$12$JOUP71puK1GXiCK4lU9GLeFJQWowt2A1jcYFceWSEOxSQiDR3nxLq', 'Customer', '2024-10-31 20:05:47', '2024-10-31 20:05:47'),
(75, 'Cory', 'Wiegand', 'koelpin.norwood@example.com', '531.664.1756', '$2y$12$nSzVtdSgAP1K5CdRPMKTkeEvXCL04zsLjpWSHHVC6FgmR9el5infi', 'Customer', '2024-10-31 20:05:49', '2024-10-31 20:05:49'),
(76, 'Waino', 'Zulauf', 'julie.mertz@example.net', '1-346-597-6263', '$2y$12$H7qvCro4hGFXzZYVr7ovquCblBM6xBvduZkXHxjZsPOEQsXypGSUG', 'Customer', '2024-10-31 20:05:50', '2024-10-31 20:05:50'),
(77, 'Ivy', 'Lynch', 'mcdermott.timmy@example.net', '1-615-420-6907', '$2y$12$XQ5/mzy1353pfMVULnpVv.XKN14T4uaaOL34IY5/PRj5r6Evpr8mW', 'Admin', '2024-10-31 20:05:51', '2024-10-31 20:05:51'),
(78, 'Rylee', 'Kunde', 'kmorissette@example.com', '+1.682.628.3450', '$2y$12$zWs0DI7BF2llNyXdNQDIUeZ0qy10eD8WCCpGbEciG/U9iHlqSVXfS', 'Admin', '2024-10-31 20:05:52', '2024-10-31 20:05:52'),
(79, 'Wendell', 'Hoppe', 'kritchie@example.net', '220.558.7810', '$2y$12$5B3IKGq7WcUQqT4Jqlx.zOtvBW.66ThMxSoPUnNLPVJY1tk44w.xe', 'Customer', '2024-10-31 20:05:53', '2024-10-31 20:05:53'),
(80, 'Aaron', 'Watsica', 'gweber@example.com', '240.834.5949', '$2y$12$JgSvJ2dv3w3nfcVd2f5z1utKcsHKsJCwgik4cu8mwdtweHxU7GRMm', 'Customer', '2024-10-31 20:05:54', '2024-10-31 20:05:54'),
(81, 'Sigurd', 'Hauck', 'kali.sipes@example.net', '+1 (251) 592-2518', '$2y$12$acrADquIu8hcFI.Y.LS15eE/pGgCu8WxbIpFJyDFgjYLplOFHpHUq', 'Customer', '2024-10-31 20:05:55', '2024-10-31 20:05:55'),
(82, 'Andres', 'Marquardt', 'schinner.marion@example.com', '+1 (551) 590-1011', '$2y$12$lgrnUNotm09aQfGPEhOxrOMyZTap.MW0yhLqN/8eeQtbc1VPd3txm', 'Customer', '2024-10-31 20:05:56', '2024-10-31 20:05:56'),
(83, 'Sadie', 'Lubowitz', 'wlueilwitz@example.org', '650.477.5089', '$2y$12$Q2eYqpobRRyEUQ6Bahnt2.hyadHwe06F2VanLZ.//yetZpyxV7O96', 'Customer', '2024-10-31 20:05:57', '2024-10-31 20:05:57'),
(84, 'Libbie', 'Donnelly', 'katarina89@example.net', '1-231-421-7706', '$2y$12$gC7SdxuMfrfvrhwxQLf92O.sT7TMupu.uw8yRVP020nKdI6swKami', 'Customer', '2024-10-31 20:05:59', '2024-10-31 20:05:59'),
(85, 'Tremayne', 'Kulas', 'satterfield.mariana@example.net', '820-648-4908', '$2y$12$XEFHUFFd87ewsAD/TDS31.LMFJzW2tMsZbyUlkAt5y.df5FtGNimm', 'Customer', '2024-10-31 20:06:00', '2024-10-31 20:06:00'),
(86, 'Velva', 'Ratke', 'bailee.thiel@example.org', '(762) 980-0339', '$2y$12$MnT8G76obnhBaF5xtHW8ue20.s01c.1W24E0ZSMtLzgycwegeRDWO', 'Admin', '2024-10-31 20:06:01', '2024-10-31 20:06:01'),
(87, 'Allie', 'O\'Conner', 'brando.waters@example.net', '+18593641408', '$2y$12$xnoEMY4LItaq1QPXELQzgu2XoZ/G29eKJLztK4NnvQfxAD7oAJQ3W', 'Admin', '2024-10-31 20:06:03', '2024-10-31 20:06:03'),
(88, 'Gia', 'Nader', 'bethel.ferry@example.com', '954-873-7632', '$2y$12$KwX7iDUI/gSMhlilZS05NeTXdUx/sZp2TaXvklkDQqiTqy5pm0GCe', 'Customer', '2024-10-31 20:06:04', '2024-10-31 20:06:04'),
(89, 'Torrance', 'Emard', 'catherine.lindgren@example.net', '423-866-1932', '$2y$12$uebrTIVRD0UjIbQPGsdbE.uLS6PTsmnjwEuASvGSvoZFBPUk1AYCy', 'Admin', '2024-10-31 20:06:05', '2024-10-31 20:06:05'),
(90, 'Letha', 'Kerluke', 'bertha89@example.com', '(609) 465-3268', '$2y$12$6gjJ997.zC/cWDKUTa8iGum2Fhkjvad8WbJ.uHl1YJrc8vpMXkFaW', 'Customer', '2024-10-31 20:06:06', '2024-10-31 20:06:06'),
(91, 'Gayle', 'Hoppe', 'grady.kiarra@example.com', '+1.608.335.8334', '$2y$12$1eA/5TOC2vLGkMwEdvunR.D1nY/D7eGjp.wCrtpr2c7ASCYhKwKIC', 'Admin', '2024-10-31 20:06:07', '2024-10-31 20:06:07'),
(92, 'Logan', 'Davis', 'hickle.christian@example.net', '303-515-3500', '$2y$12$8ao1wGVdXtkm6g0AvjAns.rEeovSL4ac2n6Mu0QjUINhrAfj.OPP2', 'Admin', '2024-10-31 20:06:08', '2024-10-31 20:06:08'),
(93, 'Era', 'Gutkowski', 'ulises07@example.net', '530.717.0789', '$2y$12$zasydLYo5pIBovLUbPU8q.5KmDOg7EvLD1T0RbJCwc56IZYYSW8/W', 'Customer', '2024-10-31 20:06:09', '2024-10-31 20:06:09'),
(94, 'Polly', 'Huels', 'mary.von@example.org', '719.540.8911', '$2y$12$pzs1wwCzFNtmcW0Aujt1YeCE3UuX/pYVOXTewYkwavsp85RqbrNoa', 'Admin', '2024-10-31 20:06:10', '2024-10-31 20:06:10'),
(95, 'Bianka', 'Walker', 'mikayla25@example.org', '+1 (720) 231-1957', '$2y$12$Yr08EVR5ya5baIlepKulJuEA5kTiBKejsdy7AuRb2B/96ba0I5mCe', 'Admin', '2024-10-31 20:06:11', '2024-10-31 20:06:11'),
(96, 'Gwendolyn', 'West', 'zdoyle@example.com', '1-219-802-7214', '$2y$12$q6d20YYdd5h0AnLFJvd2S.YjW2sfPTcOiJwVEJ4qTAYnMQJ5/vDkO', 'Customer', '2024-10-31 20:06:12', '2024-10-31 20:06:12'),
(97, 'Harold', 'Shanahan', 'sward@example.org', '+15132601213', '$2y$12$oCDqjOOXuZmAE3p.14ry7ujZVVba3B.0952Y8OIyuGKoC1Z0P9/7a', 'Customer', '2024-10-31 20:06:13', '2024-10-31 20:06:13'),
(98, 'Khalid', 'Oberbrunner', 'keshawn.turner@example.org', '+1-920-575-7832', '$2y$12$yPGk763/pWmIyeSt5lbP8uvfOhmIBPXsA7KAhhGwl1xTiWOC5tqXC', 'Admin', '2024-10-31 20:06:15', '2024-10-31 20:06:15'),
(99, 'Michele', 'Hickle', 'bonita30@example.net', '+1-843-413-8564', '$2y$12$Jnk7zOiuB3IX/zliqKkW6uvr3iAXo.toxn7pnN/i/UsOWd5rJWG6C', 'Admin', '2024-10-31 20:06:16', '2024-10-31 20:06:16'),
(100, 'Madelynn', 'Lueilwitz', 'itorp@example.org', '+1.970.952.8946', '$2y$12$g3GJtz2ujVsmM0WnBK3SRe5aEmU8UgO4eFg9HYQppfhr9DVMnJz5W', 'Customer', '2024-10-31 20:06:17', '2024-10-31 20:06:17'),
(101, 'Fredy', 'Kuhic', 'welch.michel@example.org', '316-426-0721', '$2y$12$ZsJaWbtYx6my/SS11Ew/T.QCui8Codmy5ftCr/s29MOyYRRNCG33a', 'Customer', '2024-10-31 20:06:18', '2024-10-31 20:06:18'),
(102, 'Jonathan', 'Klein', 'brooks78@example.com', '(856) 389-1848', '$2y$12$U8Dp/z7R9p98OfcIseFvae8qUYvQ8xwt2RjpRd8NWFDKwbLk9aX76', 'Customer', '2024-10-31 20:06:19', '2024-10-31 20:06:19'),
(103, 'Chauncey', 'Schaden', 'vern42@example.com', '+16515004607', '$2y$12$dUtXTqwkkdNusPlMCcybIeKZRV85h9VyMkBBpwWuXw4RZDbudsGaK', 'Admin', '2024-10-31 20:06:20', '2024-10-31 20:06:20'),
(104, 'Arturo', 'Tillman', 'myron60@example.net', '(413) 292-0467', '$2y$12$cI/6dUPTkZLfZGiO4LL3nul5QZChsgI.5.OOzHwCM33d/b/fT4yZq', 'Customer', '2024-10-31 20:06:21', '2024-10-31 20:06:21'),
(105, 'Magnolia', 'Abernathy', 'anjali83@example.org', '1-443-427-8835', '$2y$12$M9o3FQ0pd4m8LAi5bB6ATOTSrjLMOAsP5NT.zKW8adkvrpfoCGuRK', 'Admin', '2024-10-31 20:06:22', '2024-10-31 20:06:22'),
(106, 'Roxane', 'D\'Amore', 'benny36@example.org', '1-843-465-9947', '$2y$12$yIeLiivqCwm6b5e25Y4VkONawDSTqfEOcPUvfmNhgIS2gsiv8XpAy', 'Customer', '2024-10-31 20:06:23', '2024-10-31 20:06:23'),
(107, 'Malika', 'Ebert', 'roberts.chase@example.com', '1-540-569-4842', '$2y$12$3uwX72PSh.FLZqvggFulx.9Sqfv4qj7bnlIHLNRCAR14J7XzrcF4C', 'Admin', '2024-10-31 20:06:24', '2024-10-31 20:06:24'),
(108, 'Misty', 'Volkman', 'nfadel@example.org', '+1-703-344-4356', '$2y$12$Utblw7bc7.ZM52aqLtUws.kD.ZGWOQ8GM.prLjhkrHK1pWza9Kw6m', 'Admin', '2024-10-31 20:06:25', '2024-10-31 20:06:25'),
(109, 'Myrtie', 'Harber', 'tmurphy@example.org', '1-615-326-3618', '$2y$12$gUnjbQsvZzQ8NETkemOaLOXwS1x9ivkYe4kDrpTpeMcarTSqH4CDu', 'Admin', '2024-10-31 20:06:27', '2024-10-31 20:06:27'),
(110, 'Juston', 'Mohr', 'lindgren.tatum@example.net', '+1-541-223-5896', '$2y$12$G2stYA18S6v76GCZ6a/ClOgj/uus6m9Q5d/eIse6cWWVropn3yDs.', 'Customer', '2024-10-31 20:06:28', '2024-10-31 20:06:28'),
(111, 'Gunner', 'Greenfelder', 'cfeeney@example.net', '424-825-3563', '$2y$12$So8mL2ZPm40tzKdXCMnJS.iET1lnlw8JHKZnGo6EHFsSNQEPYZQFq', 'Customer', '2024-10-31 20:06:29', '2024-10-31 20:06:29'),
(112, 'Eleazar', 'Kuphal', 'kmueller@example.net', '+12102991724', '$2y$12$oSRHfiGzf2Wvq1hHejX22udhlRPotBTXIpG3C1Ik2iQoJiW9n6oxi', 'Admin', '2024-10-31 20:06:30', '2024-10-31 20:06:30'),
(113, 'Murl', 'Murray', 'arden89@example.com', '+1-570-398-8134', '$2y$12$3MWzhvkpOdQOOsZ5eeNju.kq/CkHjqBgV6Z3eObZAxhbVBs3D48dy', 'Customer', '2024-10-31 20:06:31', '2024-10-31 20:06:31'),
(114, 'Cade', 'Marvin', 'hermann.white@example.net', '+1-703-980-7588', '$2y$12$Rht.kWo1SQasj8X9PofzPeqswo185Tpl1cpgH5oiQpmjnYxFohd36', 'Admin', '2024-10-31 20:06:32', '2024-10-31 20:06:32'),
(115, 'Edyth', 'Daugherty', 'lesley77@example.net', '785-481-7682', '$2y$12$AG.lqem5C6ashVgJFiiGb.wunZ7BgjgY/We92bsjqa5afBgLfp17G', 'Admin', '2024-10-31 20:06:33', '2024-10-31 20:06:33'),
(116, 'Desiree', 'Hagenes', 'felicita.brekke@example.com', '678-493-2788', '$2y$12$0mzEt2Mo3soi3/5EolPnJOtYbk3hRWsZGByrvdZ7LDsShxilPKWQS', 'Admin', '2024-10-31 20:06:34', '2024-10-31 20:06:34'),
(117, 'Grady', 'Hyatt', 'brakus.major@example.net', '+1 (484) 755-0089', '$2y$12$0WmwiafTNtdBCq8ELbbLF.kYOFSGz2Pa0GywyZQ4wCh/OcWICZgke', 'Customer', '2024-10-31 20:06:35', '2024-10-31 20:06:35'),
(118, 'Dino', 'Dibbert', 'camylle.tremblay@example.net', '+13253640004', '$2y$12$N9LA1VnIiwBmQnf3xSlSAeyvK4mooF51eAPCdQ0zeBumLQ6MCPUH2', 'Customer', '2024-10-31 20:06:36', '2024-10-31 20:06:36'),
(119, 'Nellie', 'Stroman', 'dorothea90@example.com', '+1-570-863-1800', '$2y$12$zhZCkWYfRUOL8T0N2Zk4quRfwrjsS5Rm2a4Jn03fkPUCMUrXoS32C', 'Customer', '2024-10-31 20:06:37', '2024-10-31 20:06:37'),
(120, 'Roger', 'Aufderhar', 'brian44@example.com', '+1 (774) 472-0484', '$2y$12$pqUKLvqVVIfmanYgexKMPOlZsuFlonI2mbonwQ0Ry9fIlxSR8PhWK', 'Admin', '2024-10-31 20:06:38', '2024-10-31 20:06:38'),
(121, 'Nikita', 'Wyman', 'emelie.cormier@example.com', '585.778.5404', '$2y$12$6ruyFBHqxLj88o.xm20PJ.wxupKMd6Dp14MxEaUGaCH9FJikxDhQG', 'Admin', '2024-10-31 20:06:39', '2024-10-31 20:06:39'),
(122, 'Emma', 'Kuvalis', 'shanahan.ezra@example.net', '+19366486171', '$2y$12$XRTK/H1WtzBv1DB/AswE2uu42N4lyTbP5wEm0Lpu30W3cZL7mWYOi', 'Admin', '2024-10-31 20:06:41', '2024-10-31 20:06:41'),
(123, 'Maximus', 'Boyer', 'coralie43@example.net', '+12345900084', '$2y$12$JApiZSxc9whiM1Msq4MU.e/dQW7rbJliAaKV4Y37tbx7WuxRkoLiC', 'Admin', '2024-10-31 20:06:42', '2024-10-31 20:06:42'),
(124, 'Maximus', 'Monahan', 'lilly.grant@example.net', '+1.540.802.2165', '$2y$12$1N12ppPTcdfDKChrpIgTQuXCwAXjCXxHcOSN3oT43kWo9DebmAHGa', 'Admin', '2024-10-31 20:06:43', '2024-10-31 20:06:43'),
(125, 'Betsy', 'Kub', 'sabina42@example.org', '1-252-278-7088', '$2y$12$Z3eBJb1AIiJ4k5qFrS0.xuf/Z46z4oLOyWLl.uGDAnJq72.vU5Plm', 'Admin', '2024-10-31 20:06:44', '2024-10-31 20:06:44'),
(126, 'Thalia', 'Marquardt', 'nienow.camylle@example.org', '+1 (361) 733-6472', '$2y$12$MJz8bVY.l1n5uLw0RvD4QeEuN22N4omxss/aDbmIodXN/ipPGH5EK', 'Admin', '2024-10-31 20:06:45', '2024-10-31 20:06:45'),
(127, 'Nola', 'Erdman', 'xmueller@example.net', '+15734057580', '$2y$12$LNosGi75JCS5XVybpVey4uerOvWSnXtxLwKMII.tnigGbC0zk4aRq', 'Customer', '2024-10-31 20:06:46', '2024-10-31 20:06:46'),
(128, 'Kenna', 'Stark', 'maximillian.gerhold@example.com', '1-252-661-9487', '$2y$12$sB3EvPHRXcmw8lA6G7ppu.7oqOwnpxsB9oz3ekgwf83vn7oHrUtwK', 'Customer', '2024-10-31 20:06:47', '2024-10-31 20:06:47'),
(129, 'Flo', 'Mante', 'gboyer@example.org', '1-469-817-7324', '$2y$12$Ra4Cm5QbIlDd95ahhtJvWuItORIHaljEiiyu.Yizceo0P0y7kp3c.', 'Admin', '2024-10-31 20:06:48', '2024-10-31 20:06:48'),
(130, 'Liana', 'Mayer', 'marcia.blanda@example.com', '+1.737.548.7662', '$2y$12$yQFjnL8B1VAi2lP8puCvQOI3S4SdwNcp1Sw7DbmCZowdI227Pp.bm', 'Admin', '2024-10-31 20:06:49', '2024-10-31 20:06:49'),
(131, 'Diego', 'Torp', 'epadberg@example.com', '912.344.0080', '$2y$12$lxqLJN4ath6moWT5F0SliOf99EzSR0JjX3zmLgrmtu3a44I2a.WG6', 'Admin', '2024-10-31 20:06:50', '2024-10-31 20:06:50'),
(132, 'Aidan', 'King', 'toy.dickinson@example.net', '+1 (847) 475-5804', '$2y$12$8saC1Ix8s3wn7XpWGlQuaewPI05AztwNM1V4Ona/NRVui54uYakJ6', 'Customer', '2024-10-31 20:06:52', '2024-10-31 20:06:52'),
(133, 'Devonte', 'Lueilwitz', 'jude23@example.org', '385.975.9597', '$2y$12$xddha/OBJYtSEN7wdUGRMuhPEnQpgiIs9LGY4SF2oIv19vU.4Scum', 'Admin', '2024-10-31 20:06:53', '2024-10-31 20:06:53'),
(134, 'Kaitlyn', 'Goldner', 'fswift@example.com', '1-228-212-2834', '$2y$12$HUqP5NTZjUArVjnVZ3iLR.xYF2hzsshlQ3u5VzKEmqsidAfXspbK2', 'Admin', '2024-10-31 20:06:54', '2024-10-31 20:06:54'),
(135, 'Elmer', 'Nolan', 'harrison09@example.net', '267.545.0200', '$2y$12$CwuBgwYlB3orXe4RCx0vju03eQouMfswVa4M/riqafmZYS4ftY2Je', 'Customer', '2024-10-31 20:06:55', '2024-10-31 20:06:55'),
(136, 'Zackary', 'Veum', 'paris.gutmann@example.com', '434.328.5071', '$2y$12$Ux8E/ga0nukmZkFTEm8ouu0rN6JEIGo42A7bn.wYtMnxJgPBtbYqK', 'Admin', '2024-10-31 20:06:56', '2024-10-31 20:06:56'),
(137, 'Ilene', 'Cassin', 'isom.gusikowski@example.net', '341.496.6872', '$2y$12$dg9kLYJ/2nFOjLkhiNP/0uNf0QcISGdnoUJahx1XQI/3fbqxK7sxe', 'Customer', '2024-10-31 20:06:58', '2024-10-31 20:06:58'),
(138, 'Luisa', 'Corwin', 'mcummings@example.com', '+1 (786) 473-5831', '$2y$12$Ia2v8oEbPf2J28kaUXQSje9BLeZ.Q/FysYBZXbA11lAC4rWT41sli', 'Customer', '2024-10-31 20:06:59', '2024-10-31 20:06:59'),
(139, 'Lambert', 'Hansen', 'lyric47@example.org', '+1.601.688.0102', '$2y$12$ZAvz5.WurP4mESXQiKo5HOpd1wsJTimjb84cRF.OkNZyP5gx6EFhS', 'Customer', '2024-10-31 20:07:00', '2024-10-31 20:07:00'),
(140, 'Malinda', 'Friesen', 'vboehm@example.com', '442.758.3222', '$2y$12$8Xa.kqAJzzUf56AnrANZtOkE4mgAwZuvVkpYu8FN1/mMErx5.AqN.', 'Customer', '2024-10-31 20:07:01', '2024-10-31 20:07:01'),
(141, 'Julianne', 'Beahan', 'larkin.pauline@example.com', '+1 (205) 789-3608', '$2y$12$gKxWCikdDv5.UFbsdBxJL.J7sPs42GXKjUE2UTHvYj3zUF3geeTPy', 'Customer', '2024-10-31 20:07:02', '2024-10-31 20:07:02'),
(142, 'Bettie', 'Donnelly', 'justen.dietrich@example.net', '+14699844973', '$2y$12$cyeVb565X7QEGQuCGO2F8uPvipDpTT2Dh7GpXMa7uylspV0u/fRTO', 'Admin', '2024-10-31 20:07:03', '2024-10-31 20:07:03'),
(143, 'Clark', 'Aufderhar', 'roger.gerlach@example.com', '208.526.1753', '$2y$12$3uBp3z5h9E.NB1AYO2JZJ.KUJynn15uu.iaZ.zF.nUiFBtCjxxa76', 'Customer', '2024-10-31 20:07:04', '2024-10-31 20:07:04'),
(144, 'Philip', 'Parisian', 'vandervort.judge@example.org', '813-773-4495', '$2y$12$8wGgna3cIn9m.Kkc.DIqweaY8ZRKYqsRf7rbCdD5sP87GZnBOR9cu', 'Customer', '2024-10-31 20:07:05', '2024-10-31 20:07:05'),
(145, 'Emerson', 'Hilpert', 'loyce69@example.com', '1-534-647-2032', '$2y$12$iTZaqtH8soFCQDKv/wGzY.4N0YS32UC6E.XcoVPiHWwqW.gJzxWdG', 'Customer', '2024-10-31 20:07:06', '2024-10-31 20:07:06'),
(146, 'Alexis', 'Ankunding', 'sabryna10@example.com', '(949) 345-4488', '$2y$12$4UcXZFV4cIFwgORZXZATWO9eJsh0i./.OxTvUd8pE1BgmigorObtW', 'Admin', '2024-10-31 20:07:07', '2024-10-31 20:07:07'),
(147, 'Halie', 'Bins', 'oberbrunner.retta@example.org', '763.956.5457', '$2y$12$U.iHEQUuKPc/bYfXMmbgVecAqx7Rf9jEpfQR7G.CYvgPpaRLb7ORa', 'Admin', '2024-10-31 20:07:08', '2024-10-31 20:07:08'),
(148, 'Elliott', 'Dare', 'smith.karen@example.net', '+1 (302) 723-9791', '$2y$12$2nTn./fpdT4W9zvMgaKsJuRcyGlOaG7vWAVwaqsf/CTGJ8iSpVQze', 'Customer', '2024-10-31 20:07:10', '2024-10-31 20:07:10'),
(149, 'Corine', 'Powlowski', 'ima.becker@example.org', '(352) 355-0013', '$2y$12$q3ZfdDe1YxB4yUnFJjR0kefwMw0wzQ2uLkT84nHsJzCpFNZnkHJeO', 'Admin', '2024-10-31 20:07:11', '2024-10-31 20:07:11'),
(150, 'Kellen', 'Murazik', 'clemmie66@example.com', '848-516-0922', '$2y$12$uRXPtXbPQDA08eYq3.krseIN52dEQfuDj7FdTkZPk/n4I28uDLBpO', 'Admin', '2024-10-31 20:07:12', '2024-10-31 20:07:12'),
(151, 'Anastacio', 'Donnelly', 'ivory.effertz@example.net', '1-754-779-7923', '$2y$12$8cZWUA/PkrdBXzVRRcsbyOuzVfD9zei58oaisyZirUn0/xVZSeHia', 'Admin', '2024-10-31 20:07:13', '2024-10-31 20:07:13'),
(152, 'Harmony', 'Lueilwitz', 'meagan.barrows@example.com', '405-963-3388', '$2y$12$iDiTW5z8Y2SH5h7mq/SFh.LdbC85XYTdpS95cAtrYp9tnXX6PHsNC', 'Customer', '2024-10-31 20:07:14', '2024-10-31 20:07:14'),
(153, 'Brisa', 'Baumbach', 'nlynch@example.net', '(510) 341-2596', '$2y$12$tYeb2DkQYUsGJoVJ0N9CUeqxEFkts4JmHlO6tsWaI.JuHzTXhOBhu', 'Customer', '2024-10-31 20:07:15', '2024-10-31 20:07:15'),
(154, 'Garrison', 'Schuster', 'christelle99@example.com', '+1-541-692-2264', '$2y$12$JnZjNv3AlaIDcMkTyEH4IuiSWPeA/0ZFgX46GgwxkI2NH3g9zzDCy', 'Admin', '2024-10-31 20:07:16', '2024-10-31 20:07:16'),
(155, 'Aubree', 'Wehner', 'zrice@example.net', '+13346656781', '$2y$12$8ossl1FxtC1bq0asNsyD2O47IUZsf27aq0mF6DFIlJlJyGYlFKgOG', 'Admin', '2024-10-31 20:07:17', '2024-10-31 20:07:17'),
(156, 'Tyrell', 'Rogahn', 'madonna28@example.com', '1-865-699-9087', '$2y$12$Lek8lMgFuDWI0XfKdnNWiuah1/tUXPkgCM1eFPuRsmfG9C/Nv1Puy', 'Admin', '2024-10-31 20:07:19', '2024-10-31 20:07:19'),
(157, 'Darwin', 'Leannon', 'nabbott@example.net', '+1-907-383-0467', '$2y$12$y3h5KMDZrF4QhCOZHs5OKencfo1M1wSALed3Ra1QIXsd6JRp40PrC', 'Admin', '2024-10-31 20:07:21', '2024-10-31 20:07:21'),
(158, 'Leda', 'Heller', 'hiram.kuphal@example.org', '(443) 768-6334', '$2y$12$M9.psV1QodTPnMFtN8xPv.TV2qyM7AVrNR4wiab1ZNGIsbwmfJ6w6', 'Customer', '2024-10-31 20:07:22', '2024-10-31 20:07:22'),
(159, 'Desmond', 'Thiel', 'khettinger@example.net', '678-332-1019', '$2y$12$bhkQpp0IFZngdsnEYwo5bOwMypyNHCg4yvYk/bGcBG1FEsvFyTZkW', 'Admin', '2024-10-31 20:07:23', '2024-10-31 20:07:23'),
(160, 'Elyse', 'Gleichner', 'dubuque.hosea@example.org', '303-281-0333', '$2y$12$WBxtdnjchO5rHV.sACKtd.virPmbAa0vLNm1FLFhPuh.7XM3e..5.', 'Customer', '2024-10-31 20:07:24', '2024-10-31 20:07:24'),
(161, 'Lily', 'Sporer', 'shuel@example.net', '1-941-557-9556', '$2y$12$q57hUVhiiZfxw2m21qemAOgrJ9Gjk.5xQsjz.j9W.CsHCLZhSgs/2', 'Customer', '2024-10-31 20:07:25', '2024-10-31 20:07:25'),
(162, 'Landen', 'Ratke', 'cullen49@example.org', '616-606-0193', '$2y$12$0s6aDWLuoNWwNS35kFjg0uCXI3EkXVgLPZGCQQCRkL1wYnBaUrqqC', 'Customer', '2024-10-31 20:07:26', '2024-10-31 20:07:26'),
(163, 'Nya', 'O\'Hara', 'mraz.matilde@example.com', '+1-762-480-6976', '$2y$12$bycMEcIHiAmbGrLEZvuS5.G80/3o3THzfPAsGrexmP127JI7wzE5q', 'Admin', '2024-10-31 20:07:27', '2024-10-31 20:07:27'),
(164, 'Gordon', 'Lindgren', 'mclaughlin.janet@example.com', '541-753-6664', '$2y$12$BIzj.NmCzNh0sLx5yIzWRusXURFQhLixfNmgBUR/zEAOu9oau1sCS', 'Admin', '2024-10-31 20:07:29', '2024-10-31 20:07:29'),
(165, 'Felicia', 'King', 'nveum@example.net', '1-815-651-4984', '$2y$12$SdTvqQtD.yj4ncGp4OJxJejcuwPwhDxb7MFlXVGiEbvBHxjs9DR.K', 'Admin', '2024-10-31 20:07:30', '2024-10-31 20:07:30'),
(166, 'Guido', 'Armstrong', 'grau@example.net', '757-776-5453', '$2y$12$x6RtoVDLTOU2z2ANzRX0f.c7XewHYJO92R7erAtRj4AS6T/OP7hUC', 'Admin', '2024-10-31 20:07:31', '2024-10-31 20:07:31'),
(167, 'Lorine', 'Terry', 'pollich.lindsey@example.com', '951.656.0548', '$2y$12$7bg4blEJ/UB.8RGJspspGu3dgIuqj1PDi.Lawopk46fxGqtRkeSd6', 'Admin', '2024-10-31 20:07:32', '2024-10-31 20:07:32'),
(168, 'Eunice', 'Nader', 'lueilwitz.marisa@example.org', '(417) 328-9306', '$2y$12$ipekQcN0RehxwJ/.9lfdSuq5Y0ds2pPHOeQFYBLJzqXpRGpluWKBG', 'Customer', '2024-10-31 20:07:33', '2024-10-31 20:07:33'),
(169, 'Orlando', 'Sanford', 'sawayn.alec@example.net', '(657) 888-7085', '$2y$12$WVKcRee.NlG7whjSQfeT9ebrW2wlvHo0tbQboJxVYA2ZRemuJX.iO', 'Admin', '2024-10-31 20:07:34', '2024-10-31 20:07:34'),
(170, 'Linda', 'Greenholt', 'torp.sean@example.org', '714.393.6458', '$2y$12$Oics47kYXtVOQ6ICWOwvLeQCBf.8vOkmENR7b8au443zP9ITZfh/2', 'Admin', '2024-10-31 20:07:35', '2024-10-31 20:07:35'),
(171, 'Elza', 'Streich', 'nikolaus.nova@example.org', '641-956-5616', '$2y$12$8xDv9yERuWyTJxKgcK7KUuBrt8F.b34DylKb6pb36OF08O1vC8LC.', 'Admin', '2024-10-31 20:07:36', '2024-10-31 20:07:36'),
(172, 'Brooke', 'Little', 'parker.cierra@example.org', '1-727-387-1514', '$2y$12$BAYxiQJn2hvgAUdXEDibkO0eU/urXhsMkg2.Hp0x8agdyj7uPcYRC', 'Customer', '2024-10-31 20:07:37', '2024-10-31 20:07:37'),
(173, 'Concepcion', 'Greenfelder', 'johnpaul69@example.net', '630.230.0747', '$2y$12$3bDovy6Q3qoQUQAULb7bYOac6eurskgNM08QaUxxgcIfiN3yJX73W', 'Admin', '2024-10-31 20:07:38', '2024-10-31 20:07:38'),
(174, 'Wilhelmine', 'Lueilwitz', 'gerlach.lucious@example.org', '(413) 235-5461', '$2y$12$zz1iWYVK2uWeHN7sRLqJ8e7hKaxepWtFEcQMS7bLfmElT60KmxtWW', 'Admin', '2024-10-31 20:07:39', '2024-10-31 20:07:39'),
(175, 'Deondre', 'O\'Conner', 'hertha95@example.org', '+16126225757', '$2y$12$8QTTDvLu4G8sHvoeCJzLZuO9vcDkAa9gStcLEPWgNPBEiMxxDUEJu', 'Admin', '2024-10-31 20:07:40', '2024-10-31 20:07:40'),
(176, 'Chelsie', 'Sauer', 'clair46@example.net', '1-443-668-9325', '$2y$12$FzWPstK6wdbzoVUJJ/Effeo5ZQJq52.R2WbX53TDwNHWH/08RLc0W', 'Admin', '2024-10-31 20:07:42', '2024-10-31 20:07:42'),
(177, 'Laura', 'Kirlin', 'vwillms@example.org', '838-533-2373', '$2y$12$TyIGnIF9sQR9GsXDrdh9eucHnKoRRT0MT9J3ViPtLP0qXgPhgUhdu', 'Customer', '2024-10-31 20:07:43', '2024-10-31 20:07:43'),
(178, 'Fausto', 'Tromp', 'reece83@example.org', '+1-828-324-4792', '$2y$12$Hsg3M3F8k0wzav7bC0JT0uIwtH4pAgbTryOgWqUxnOhcQxz61Z/S2', 'Customer', '2024-10-31 20:07:44', '2024-10-31 20:07:44'),
(179, 'Verona', 'Ebert', 'fstehr@example.org', '1-346-583-8867', '$2y$12$P9eZWvsiTepGVy8Vzf077.UH.cfizBQhQZrEXPCkXxHSguWG8jyCi', 'Admin', '2024-10-31 20:07:45', '2024-10-31 20:07:45'),
(180, 'Elna', 'Cartwright', 'clinton.greenholt@example.org', '559-768-2143', '$2y$12$ba6c8/24np7b0Nt2FPfP/eClgZ.hnegcWUjbZzHZ7qpxLW51moTp2', 'Customer', '2024-10-31 20:07:46', '2024-10-31 20:07:46'),
(181, 'Sydni', 'Beatty', 'hauck.neva@example.net', '+1.231.600.4191', '$2y$12$Qdw4NaxOGAA3Auwgf4P.MeJxJwZpyGrw6RypQmnBvNJAxHQZWRa72', 'Customer', '2024-10-31 20:07:47', '2024-10-31 20:07:47'),
(182, 'Malcolm', 'Stroman', 'wunsch.guy@example.net', '+1-828-990-3758', '$2y$12$maMUbhDUqG/gUuponBPweu8CKVk8BZk0CbgEwVpG0rywBpKsGnKVC', 'Admin', '2024-10-31 20:07:48', '2024-10-31 20:07:48'),
(183, 'Nelda', 'Hegmann', 'yadams@example.org', '1-952-777-2837', '$2y$12$OpIvAt.z4WZwb40ubxZ5J.3j2RwO/dMPaOJ1aSyCGic0nsJU81Of.', 'Admin', '2024-10-31 20:07:49', '2024-10-31 20:07:49'),
(184, 'Alek', 'Zieme', 'eldridge20@example.net', '1-470-761-4408', '$2y$12$XeRCz3FmhreqB3xs35Dloujt4qSPylQeI59kiA.480FvPflzbrHbe', 'Customer', '2024-10-31 20:07:50', '2024-10-31 20:07:50'),
(185, 'Melyna', 'Carter', 'braeden39@example.com', '+17793366959', '$2y$12$b6R.gVoVeq/XCFt/omWpzeq386YZ899apBpu1XMZixT81EEa2wjbe', 'Admin', '2024-10-31 20:07:51', '2024-10-31 20:07:51'),
(186, 'Jane', 'Doe', 'jane.doe@example.com', '1234567890', '$2y$12$7yb.rzX./i8RQLbaRexo8On9cICvLk5mzv7Oy6phAYpffX/.r4RjC', 'Customer', '2024-11-01 08:49:38', '2024-11-01 08:49:38'),
(188, 'John', 'Doe', 'kanmegneandre@gmail.com', '123456789', '$2y$12$xWscf2DR2FFgLIl0eBCKZeZG4NaTGSuTKMq4KTFPNz5bI4G1LyMue', 'Admin', '2024-11-01 13:37:49', '2024-11-01 13:42:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `analytics`
--
ALTER TABLE `analytics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `analytics_user_id_foreign` (`user_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_category_id_foreign` (`category_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_user_id_foreign` (`user_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reservations_user_id_foreign` (`user_id`);

--
-- Indexes for table `reservation_menu_items`
--
ALTER TABLE `reservation_menu_items`
  ADD PRIMARY KEY (`reservation_id`,`menu_item_id`),
  ADD KEY `reservation_menu_items_menu_item_id_foreign` (`menu_item_id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `testimonials_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `analytics`
--
ALTER TABLE `analytics`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=189;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `analytics`
--
ALTER TABLE `analytics`
  ADD CONSTRAINT `analytics_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reservations`
--
ALTER TABLE `reservations`
  ADD CONSTRAINT `reservations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `reservation_menu_items`
--
ALTER TABLE `reservation_menu_items`
  ADD CONSTRAINT `reservation_menu_items_menu_item_id_foreign` FOREIGN KEY (`menu_item_id`) REFERENCES `menu_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reservation_menu_items_reservation_id_foreign` FOREIGN KEY (`reservation_id`) REFERENCES `reservations` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD CONSTRAINT `testimonials_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
