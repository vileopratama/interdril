-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 20, 2017 at 12:03 PM
-- Server version: 10.1.22-MariaDB
-- PHP Version: 7.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `interdril`
--

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `reference` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `domain` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `applications`
--

INSERT INTO `applications` (`id`, `name`, `reference`, `domain`, `enabled`) VALUES
(1, 'interdril', 'interdril', 'interdril.local', 1);

-- --------------------------------------------------------

--
-- Table structure for table `applications_domains`
--

CREATE TABLE `applications_domains` (
  `id` int(10) UNSIGNED NOT NULL,
  `application_id` int(11) NOT NULL,
  `domain` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `interdril_addons_extensions`
--

CREATE TABLE `interdril_addons_extensions` (
  `id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `installed` tinyint(1) NOT NULL DEFAULT '0',
  `enabled` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `interdril_addons_extensions`
--

INSERT INTO `interdril_addons_extensions` (`id`, `namespace`, `installed`, `enabled`) VALUES
(1, 'anomaly.extension.default_authenticator', 1, 1),
(2, 'anomaly.extension.default_page_handler', 1, 1),
(3, 'anomaly.extension.local_storage_adapter', 1, 1),
(4, 'anomaly.extension.page_link_type', 1, 1),
(5, 'anomaly.extension.robots', 1, 1),
(6, 'anomaly.extension.sitemap', 1, 1),
(7, 'anomaly.extension.throttle_security_check', 1, 1),
(8, 'anomaly.extension.url_link_type', 1, 1),
(9, 'anomaly.extension.user_security_check', 1, 1),
(10, 'anomaly.extension.xml_feed_widget', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `interdril_addons_modules`
--

CREATE TABLE `interdril_addons_modules` (
  `id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `installed` tinyint(1) NOT NULL DEFAULT '0',
  `enabled` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `interdril_addons_modules`
--

INSERT INTO `interdril_addons_modules` (`id`, `namespace`, `installed`, `enabled`) VALUES
(1, 'anomaly.module.addons', 1, 1),
(2, 'anomaly.module.configuration', 1, 1),
(3, 'anomaly.module.dashboard', 1, 1),
(4, 'anomaly.module.files', 1, 1),
(5, 'anomaly.module.navigation', 1, 1),
(6, 'anomaly.module.pages', 1, 1),
(7, 'anomaly.module.posts', 1, 1),
(8, 'anomaly.module.preferences', 1, 1),
(9, 'anomaly.module.redirects', 1, 1),
(10, 'anomaly.module.repeaters', 1, 1),
(11, 'anomaly.module.settings', 1, 1),
(12, 'anomaly.module.users', 1, 1),
(13, 'anomaly.module.variables', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `interdril_configuration_configuration`
--

CREATE TABLE `interdril_configuration_configuration` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `scope` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `interdril_configuration_configuration`
--

INSERT INTO `interdril_configuration_configuration` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `scope`, `key`, `value`) VALUES
(1, 1, '2017-07-18 03:04:52', NULL, NULL, NULL, '1', 'anomaly.extension.xml_feed_widget::url', 'http://www.pyrocms.com/posts/rss.xml');

-- --------------------------------------------------------

--
-- Table structure for table `interdril_dashboard_dashboards`
--

CREATE TABLE `interdril_dashboard_dashboards` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `layout` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `interdril_dashboard_dashboards`
--

INSERT INTO `interdril_dashboard_dashboards` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `slug`, `layout`) VALUES
(1, 1, '2017-07-18 03:04:51', NULL, NULL, NULL, NULL, 'welcome', '24');

-- --------------------------------------------------------

--
-- Table structure for table `interdril_dashboard_dashboards_allowed_roles`
--

CREATE TABLE `interdril_dashboard_dashboards_allowed_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  `sort_order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `interdril_dashboard_dashboards_translations`
--

CREATE TABLE `interdril_dashboard_dashboards_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `interdril_dashboard_dashboards_translations`
--

INSERT INTO `interdril_dashboard_dashboards_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `name`, `description`) VALUES
(1, 1, '2017-07-18 03:04:51', NULL, '2017-07-18 03:04:51', NULL, 'en', 'Welcome', 'This is the default dashboard for PyroCMS.');

-- --------------------------------------------------------

--
-- Table structure for table `interdril_dashboard_widgets`
--

CREATE TABLE `interdril_dashboard_widgets` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `extension` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `column` int(11) NOT NULL DEFAULT '1',
  `dashboard_id` int(11) NOT NULL,
  `pinned` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `interdril_dashboard_widgets`
--

INSERT INTO `interdril_dashboard_widgets` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `extension`, `column`, `dashboard_id`, `pinned`) VALUES
(1, 1, '2017-07-18 03:04:52', NULL, NULL, NULL, NULL, 'anomaly.extension.xml_feed_widget', 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `interdril_dashboard_widgets_allowed_roles`
--

CREATE TABLE `interdril_dashboard_widgets_allowed_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  `sort_order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `interdril_dashboard_widgets_translations`
--

CREATE TABLE `interdril_dashboard_widgets_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `interdril_dashboard_widgets_translations`
--

INSERT INTO `interdril_dashboard_widgets_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `title`, `description`) VALUES
(1, 1, '2017-07-18 03:04:52', NULL, '2017-07-18 03:04:52', NULL, 'en', 'Recent News', 'Recent news from http://pyrocms.com/');

-- --------------------------------------------------------

--
-- Table structure for table `interdril_failed_jobs`
--

CREATE TABLE `interdril_failed_jobs` (
  `id` int(10) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `interdril_files_about_us`
--

CREATE TABLE `interdril_files_about_us` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `interdril_files_about_us`
--

INSERT INTO `interdril_files_about_us` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`) VALUES
(1, 1, '2017-07-19 08:56:48', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `interdril_files_about_us_translations`
--

CREATE TABLE `interdril_files_about_us_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `interdril_files_about_us_translations`
--

INSERT INTO `interdril_files_about_us_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`) VALUES
(1, 1, '2017-07-19 08:56:48', NULL, '2017-07-19 08:56:48', 1, 'en');

-- --------------------------------------------------------

--
-- Table structure for table `interdril_files_disks`
--

CREATE TABLE `interdril_files_disks` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adapter` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `interdril_files_disks`
--

INSERT INTO `interdril_files_disks` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `slug`, `adapter`) VALUES
(1, 1, '2017-07-18 03:04:52', NULL, NULL, NULL, NULL, 'local', 'anomaly.extension.local_storage_adapter');

-- --------------------------------------------------------

--
-- Table structure for table `interdril_files_disks_translations`
--

CREATE TABLE `interdril_files_disks_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `interdril_files_disks_translations`
--

INSERT INTO `interdril_files_disks_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `name`, `description`) VALUES
(1, 1, '2017-07-18 03:04:52', NULL, '2017-07-18 03:04:52', NULL, 'en', 'Local', 'A local (public) storage disk.');

-- --------------------------------------------------------

--
-- Table structure for table `interdril_files_documents`
--

CREATE TABLE `interdril_files_documents` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `interdril_files_documents_translations`
--

CREATE TABLE `interdril_files_documents_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `interdril_files_files`
--

CREATE TABLE `interdril_files_files` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `disk_id` int(11) NOT NULL,
  `folder_id` int(11) NOT NULL,
  `extension` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `mime_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `entry_id` int(11) DEFAULT NULL,
  `entry_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keywords` text COLLATE utf8_unicode_ci,
  `height` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `width` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `interdril_files_files`
--

INSERT INTO `interdril_files_files` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `name`, `disk_id`, `folder_id`, `extension`, `size`, `mime_type`, `entry_id`, `entry_type`, `keywords`, `height`, `width`) VALUES
(1, 1, '2017-07-19 08:56:28', 1, '2017-07-19 08:56:48', 1, NULL, 'background1.png', 1, 3, 'png', 64076, 'image/png', 1, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesAboutUsEntryModel', 'a:1:{i:0;s:16:\"Background Image\";}', '300', '550'),
(2, 2, '2017-07-19 09:19:56', 1, '2017-07-19 09:19:56', 1, NULL, 'construction-in-china-silhouette.png', 1, 3, 'png', 299736, 'image/png', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesAboutUsEntryModel', NULL, '600', '1101'),
(3, 3, '2017-07-19 09:23:39', 1, '2017-07-19 09:23:39', 1, NULL, 'RD_sign.png', 1, 3, 'png', 4088, 'image/png', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesAboutUsEntryModel', NULL, '93', '319'),
(4, 4, '2017-07-19 09:35:01', 1, '2017-07-19 09:35:01', 1, NULL, 'RD_Work1.png', 1, 4, 'png', 154690, 'image/png', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesRotaryDrillingEntryModel', NULL, '345', '260'),
(5, 5, '2017-07-19 09:43:50', 1, '2017-07-19 09:43:51', 1, NULL, 'RD_Work2.png', 1, 4, 'png', 186792, 'image/png', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesRotaryDrillingEntryModel', NULL, '345', '260'),
(6, 6, '2017-07-19 09:44:39', 1, '2017-07-19 09:44:39', 1, NULL, 'RD_Work3.png', 1, 4, 'png', 156670, 'image/png', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesRotaryDrillingEntryModel', NULL, '345', '260'),
(7, 7, '2017-07-19 09:44:49', 1, '2017-07-19 09:44:50', 1, NULL, 'RD_Work4.png', 1, 4, 'png', 129893, 'image/png', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesRotaryDrillingEntryModel', NULL, '345', '260'),
(8, 8, '2017-07-19 09:45:29', 1, '2017-07-19 09:45:30', 1, NULL, 'RD_Work5.png', 1, 4, 'png', 153570, 'image/png', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesRotaryDrillingEntryModel', NULL, '345', '260'),
(9, 9, '2017-07-19 09:54:51', 1, '2017-07-19 09:54:52', 1, NULL, 'RD_Work6.png', 1, 4, 'png', 172920, 'image/png', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesRotaryDrillingEntryModel', NULL, '345', '260'),
(10, 10, '2017-07-19 09:55:04', 1, '2017-07-19 09:55:04', 1, NULL, 'RD_Work7.png', 1, 4, 'png', 145800, 'image/png', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesRotaryDrillingEntryModel', NULL, '345', '260'),
(11, 11, '2017-07-19 09:55:20', 1, '2017-07-19 09:55:21', 1, NULL, 'RD_Work8.png', 1, 4, 'png', 165063, 'image/png', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesRotaryDrillingEntryModel', NULL, '345', '260'),
(12, 12, '2017-07-20 03:22:53', 1, '2017-07-20 03:22:53', 1, NULL, 'CC_Work-2.png', 1, 4, 'png', 3242332, 'image/png', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesRotaryDrillingEntryModel', NULL, '1090', '1919'),
(13, 13, '2017-07-20 03:31:45', 1, '2017-07-20 03:31:46', 1, NULL, 'CC_Work-1.png', 1, 4, 'png', 1478760, 'image/png', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesRotaryDrillingEntryModel', NULL, '620', '1090'),
(14, 14, '2017-07-20 03:32:26', 1, '2017-07-20 03:32:27', 1, NULL, 'CC_Work-3.png', 1, 4, 'png', 3537468, 'image/png', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesRotaryDrillingEntryModel', NULL, '1090', '1919'),
(15, 15, '2017-07-20 03:32:42', 1, '2017-07-20 03:32:42', 1, NULL, 'CC_Work-4.png', 1, 4, 'png', 4382589, 'image/png', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesRotaryDrillingEntryModel', NULL, '1090', '1919'),
(16, 16, '2017-07-20 03:34:25', 1, '2017-07-20 03:34:25', 1, NULL, 'Loader4.jpg', 1, 4, 'jpg', 268954, 'image/jpeg', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesRotaryDrillingEntryModel', NULL, '960', '1706'),
(17, 17, '2017-07-20 03:35:00', 1, '2017-07-20 03:35:01', 1, NULL, 'Loader1.jpg', 1, 4, 'jpg', 285883, 'image/jpeg', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesRotaryDrillingEntryModel', NULL, '960', '1706'),
(18, 18, '2017-07-20 03:36:10', 1, '2017-07-20 03:36:10', 1, NULL, 'Loader2.jpg', 1, 4, 'jpg', 260826, 'image/jpeg', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesRotaryDrillingEntryModel', NULL, '960', '1706'),
(19, 19, '2017-07-20 03:36:29', 1, '2017-07-20 03:36:29', 1, NULL, 'Loader3.jpg', 1, 4, 'jpg', 273463, 'image/jpeg', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesRotaryDrillingEntryModel', NULL, '960', '1706'),
(20, 20, '2017-07-20 04:58:42', 1, '2017-07-20 04:58:44', 1, NULL, '7Ton.png', 1, 4, 'png', 3967223, 'image/png', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesRotaryDrillingEntryModel', NULL, '2304', '3072'),
(21, 21, '2017-07-20 05:00:35', 1, '2017-07-20 05:00:35', 1, NULL, 'FD100.png', 1, 4, 'png', 4050876, 'image/png', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesRotaryDrillingEntryModel', NULL, '2304', '3072'),
(22, 22, '2017-07-20 05:00:57', 1, '2017-07-20 05:00:57', 1, NULL, 'Forklift_7.png', 1, 4, 'png', 378245, 'image/png', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesRotaryDrillingEntryModel', NULL, '430', '655'),
(23, 23, '2017-07-20 05:01:44', 1, '2017-07-20 05:01:44', 1, NULL, 'Forklift_2-e1494386191367.jpg', 1, 4, 'jpg', 1663441, 'image/jpeg', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesRotaryDrillingEntryModel', NULL, '5312', '2988'),
(24, 24, '2017-07-20 05:01:52', 1, '2017-07-20 05:01:53', 1, NULL, 'Forklift_4-e1494388278744.jpg', 1, 4, 'jpg', 2021350, 'image/jpeg', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesRotaryDrillingEntryModel', NULL, '5312', '2988'),
(25, 25, '2017-07-20 07:34:36', 1, '2017-07-20 07:34:36', 1, NULL, 'Vibro.png', 1, 4, 'png', 1216660, 'image/png', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesRotaryDrillingEntryModel', NULL, '750', '750'),
(26, 26, '2017-07-20 07:45:39', 1, '2017-07-20 07:45:39', 1, NULL, '8.HSPD_1.png', 1, 4, 'png', 1391058, 'image/png', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesRotaryDrillingEntryModel', NULL, '1459', '1806'),
(27, 27, '2017-07-20 07:47:47', 1, '2017-07-20 07:47:47', 1, NULL, 'Diesel-Hammer.png', 1, 4, 'png', 33444, 'image/png', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesRotaryDrillingEntryModel', NULL, '112', '955'),
(28, 28, '2017-07-20 07:48:16', 1, '2017-07-20 07:48:16', 1, NULL, 'Sunward-Authorization.png', 1, 4, 'png', 766488, 'image/png', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesRotaryDrillingEntryModel', NULL, '1080', '775'),
(29, 29, '2017-07-20 08:02:51', 1, '2017-07-20 08:02:51', 1, NULL, 'Diesel-Hammer.jpg', 1, 4, 'jpg', 88655, 'image/jpeg', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesRotaryDrillingEntryModel', NULL, '254', '450'),
(30, 30, '2017-07-20 08:04:53', 1, '2017-07-20 08:04:54', 1, NULL, 'SmartSelectImage_2015-11-26-14-18-31.png', 1, 4, 'png', 1907671, 'image/png', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesRotaryDrillingEntryModel', NULL, '1966', '1375'),
(31, 31, '2017-07-20 08:19:25', 1, '2017-07-20 08:19:25', 1, NULL, 'WS-1024x576.jpg', 1, 5, 'jpg', 130714, 'image/jpeg', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesServicesEntryModel', NULL, '576', '1024'),
(32, 32, '2017-07-20 08:23:40', 1, '2017-07-20 08:23:41', 1, NULL, 'Flow-chart.jpg', 1, 5, 'jpg', 105895, 'image/jpeg', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesServicesEntryModel', NULL, '714', '1464'),
(33, 33, '2017-07-20 08:34:49', 1, '2017-07-20 08:34:50', 1, NULL, '112059-828x580-Topsoil.jpg', 1, 5, 'jpg', 81679, 'image/jpeg', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesServicesEntryModel', NULL, '580', '828'),
(34, 34, '2017-07-20 08:35:50', 1, '2017-07-20 08:35:50', 1, NULL, '20160323_101939-1024x576.jpg', 1, 5, 'jpg', 174635, 'image/jpeg', NULL, 'Anomaly\\Streams\\Platform\\Model\\Files\\FilesServicesEntryModel', NULL, '576', '1024');

-- --------------------------------------------------------

--
-- Table structure for table `interdril_files_folders`
--

CREATE TABLE `interdril_files_folders` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `disk_id` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `allowed_types` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `interdril_files_folders`
--

INSERT INTO `interdril_files_folders` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `disk_id`, `slug`, `allowed_types`) VALUES
(1, 1, '2017-07-18 03:04:53', NULL, NULL, NULL, NULL, 1, 'images', 'a:3:{i:0;s:3:\"png\";i:1;s:4:\"jpeg\";i:2;s:3:\"jpg\";}'),
(2, 2, '2017-07-18 03:04:54', NULL, NULL, NULL, NULL, 1, 'documents', 'a:2:{i:0;s:3:\"pdf\";i:1;s:4:\"docx\";}'),
(3, 3, '2017-07-19 08:52:49', 1, NULL, NULL, NULL, 1, 'about_us', 'a:0:{}'),
(4, 4, '2017-07-19 09:34:49', 1, NULL, NULL, NULL, 1, 'rotary_drilling', 'a:0:{}'),
(5, 5, '2017-07-20 08:06:03', 1, NULL, NULL, NULL, 1, 'services', 'a:0:{}');

-- --------------------------------------------------------

--
-- Table structure for table `interdril_files_folders_translations`
--

CREATE TABLE `interdril_files_folders_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `interdril_files_folders_translations`
--

INSERT INTO `interdril_files_folders_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `name`, `description`) VALUES
(1, 1, '2017-07-18 03:04:54', NULL, '2017-07-18 03:04:54', NULL, 'en', 'Images', 'A folder for images.'),
(2, 2, '2017-07-18 03:04:55', NULL, '2017-07-18 03:04:55', NULL, 'en', 'Documents', 'A folder for documents.'),
(3, 3, '2017-07-19 08:52:50', NULL, '2017-07-19 08:52:50', 1, 'en', 'About Us', 'About Us Images'),
(4, 4, '2017-07-19 09:34:50', NULL, '2017-07-19 09:34:50', 1, 'en', 'Rotary Drilling', 'Rotary Drilling'),
(5, 5, '2017-07-20 08:06:04', NULL, '2017-07-20 08:06:04', 1, 'en', 'Services', 'Services');

-- --------------------------------------------------------

--
-- Table structure for table `interdril_files_images`
--

CREATE TABLE `interdril_files_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `interdril_files_images_translations`
--

CREATE TABLE `interdril_files_images_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `interdril_files_rotary_drilling`
--

CREATE TABLE `interdril_files_rotary_drilling` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `interdril_files_rotary_drilling_translations`
--

CREATE TABLE `interdril_files_rotary_drilling_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `interdril_files_services`
--

CREATE TABLE `interdril_files_services` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `interdril_files_services_translations`
--

CREATE TABLE `interdril_files_services_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `interdril_jobs`
--

CREATE TABLE `interdril_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `interdril_migrations`
--

CREATE TABLE `interdril_migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `interdril_migrations`
--

INSERT INTO `interdril_migrations` (`id`, `migration`, `batch`) VALUES
(1, '2015_03_15_171404_create_applications_table', 1),
(2, '2015_03_15_171506_create_applications_domains_table', 1),
(3, '2015_03_15_171506_create_jobs_table', 2),
(4, '2015_03_15_171507_create_failed_jobs_table', 2),
(5, '2015_03_15_171508_create_sessions_table', 2),
(6, '2015_03_15_171620_create_streams_tables', 2),
(7, '2015_03_15_171646_create_fields_tables', 2),
(8, '2015_03_15_171720_create_assignments_tables', 2),
(9, '2015_03_15_171838_create_modules_table', 2),
(10, '2015_03_15_171926_create_extensions_table', 2),
(11, '2016_08_30_185635_create_notifications_table', 2),
(12, '2016_09_02_164448_add_searchable_column_to_streams', 2),
(13, '2016_11_11_154228_append_id_to_user_meta_columns', 2),
(14, '2015_03_25_091755_anomaly.module.configuration__create_configuration_fields', 3),
(15, '2015_03_25_091845_anomaly.module.configuration__create_configuration_stream', 3),
(16, '2015_11_01_164326_anomaly.module.dashboard__create_dashboard_fields', 4),
(17, '2015_11_01_170645_anomaly.module.dashboard__create_dashboards_stream', 4),
(18, '2015_11_01_170650_anomaly.module.dashboard__create_widgets_stream', 4),
(19, '2015_03_05_021725_anomaly.module.files__create_files_fields', 5),
(20, '2015_03_05_022227_anomaly.module.files__create_disks_stream', 5),
(21, '2015_06_09_031343_anomaly.module.files__create_folders_stream', 5),
(22, '2015_06_09_031351_anomaly.module.files__create_files_stream', 5),
(23, '2016_08_29_151020_anomaly.module.files__remove_required_from_entry_assignment', 5),
(24, '2016_09_02_175659_anomaly.module.files__make_files_searchable', 5),
(25, '2016_10_05_221741_anomaly.module.files__make_disks_sortable', 5),
(26, '2015_05_21_061832_anomaly.module.navigation__create_navigation_fields', 6),
(27, '2015_05_21_062115_anomaly.module.navigation__create_menus_stream', 6),
(28, '2015_05_21_064952_anomaly.module.navigation__create_links_stream', 6),
(29, '2015_03_20_171947_anomaly.module.pages__create_pages_fields', 7),
(30, '2015_03_20_171955_anomaly.module.pages__create_pages_stream', 7),
(31, '2015_04_22_150211_anomaly.module.pages__create_types_stream', 7),
(32, '2016_09_02_175135_anomaly.module.pages__make_pages_searchable', 7),
(33, '2015_03_20_184103_anomaly.module.posts__create_posts_fields', 8),
(34, '2015_03_20_184141_anomaly.module.posts__create_categories_stream', 8),
(35, '2015_03_20_184148_anomaly.module.posts__create_posts_stream', 8),
(36, '2015_05_16_050818_anomaly.module.posts__create_types_stream', 8),
(37, '2016_09_02_175531_anomaly.module.posts__make_posts_searchable', 8),
(38, '2015_02_27_101227_anomaly.module.preferences__create_preferences_fields', 9),
(39, '2015_02_27_101300_anomaly.module.preferences__create_preferences_streams', 9),
(40, '2016_11_16_151654_anomaly.module.preferences__update_user_related_config', 9),
(41, '2015_03_21_153325_anomaly.module.redirects__create_redirects_fields', 10),
(42, '2015_03_21_153326_anomaly.module.redirects__create_redirects_stream', 10),
(43, '2015_02_27_101410_anomaly.module.settings__create_settings_fields', 11),
(44, '2015_02_27_101510_anomaly.module.settings__create_settings_stream', 11),
(45, '2015_02_27_101816_anomaly.module.users__create_users_fields', 12),
(46, '2015_02_27_101851_anomaly.module.users__create_users_stream', 12),
(47, '2015_02_27_101940_anomaly.module.users__create_roles_stream', 12),
(48, '2016_09_02_175848_anomaly.module.users__make_users_searchable', 12),
(49, '2015_06_02_170526_anomaly.extension.page_link_type__create_page_link_type_fields', 13),
(50, '2015_06_02_170542_anomaly.extension.page_link_type__create_page_links_stream', 13),
(51, '2015_05_24_201105_anomaly.extension.url_link_type__create_url_link_type_fields', 14),
(52, '2015_05_24_201134_anomaly.extension.url_link_type__create_links_stream', 14);

-- --------------------------------------------------------

--
-- Table structure for table `interdril_navigation_links`
--

CREATE TABLE `interdril_navigation_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `menu_id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `entry_id` int(11) NOT NULL,
  `entry_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '_self',
  `class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `interdril_navigation_links`
--

INSERT INTO `interdril_navigation_links` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `menu_id`, `type`, `entry_id`, `entry_type`, `target`, `class`, `parent_id`) VALUES
(1, 1, '2017-07-18 03:04:57', NULL, NULL, NULL, NULL, 1, 'anomaly.extension.url_link_type', 1, 'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel', '_blank', NULL, NULL),
(2, 2, '2017-07-18 03:04:57', NULL, NULL, NULL, NULL, 1, 'anomaly.extension.url_link_type', 2, 'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel', '_blank', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `interdril_navigation_links_allowed_roles`
--

CREATE TABLE `interdril_navigation_links_allowed_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  `sort_order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `interdril_navigation_menus`
--

CREATE TABLE `interdril_navigation_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `interdril_navigation_menus`
--

INSERT INTO `interdril_navigation_menus` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `slug`) VALUES
(1, 1, '2017-07-18 03:04:56', NULL, NULL, NULL, NULL, 'footer');

-- --------------------------------------------------------

--
-- Table structure for table `interdril_navigation_menus_translations`
--

CREATE TABLE `interdril_navigation_menus_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `interdril_navigation_menus_translations`
--

INSERT INTO `interdril_navigation_menus_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `name`, `description`) VALUES
(1, 1, '2017-07-18 03:04:56', NULL, '2017-07-18 03:04:56', NULL, 'en', 'Footer', 'This is the footer.');

-- --------------------------------------------------------

--
-- Table structure for table `interdril_notifications`
--

CREATE TABLE `interdril_notifications` (
  `id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notifiable_id` int(10) UNSIGNED NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `interdril_pages_default_pages`
--

CREATE TABLE `interdril_pages_default_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `interdril_pages_default_pages`
--

INSERT INTO `interdril_pages_default_pages` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`) VALUES
(1, 1, '2017-07-18 03:05:02', NULL, NULL, NULL, NULL),
(2, 2, '2017-07-18 03:05:02', NULL, NULL, NULL, NULL),
(3, 3, '2017-07-19 09:04:13', 1, NULL, NULL, NULL),
(4, 4, '2017-07-19 09:06:27', 1, NULL, NULL, NULL),
(5, 5, '2017-07-19 09:24:28', 1, NULL, NULL, NULL),
(6, 6, '2017-07-19 09:32:59', 1, NULL, NULL, NULL),
(7, 7, '2017-07-20 07:13:54', 1, NULL, NULL, NULL),
(8, 8, '2017-07-20 07:42:48', 1, NULL, NULL, NULL),
(9, 9, '2017-07-20 07:49:33', 1, NULL, NULL, NULL),
(10, 10, '2017-07-20 08:01:40', 1, NULL, NULL, NULL),
(11, 11, '2017-07-20 08:05:13', 1, NULL, NULL, NULL),
(12, 12, '2017-07-20 08:09:02', 1, NULL, NULL, NULL),
(13, 13, '2017-07-20 08:20:15', 1, NULL, NULL, NULL),
(14, 14, '2017-07-20 08:26:24', 1, NULL, NULL, NULL),
(15, 15, '2017-07-20 08:36:35', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `interdril_pages_default_pages_translations`
--

CREATE TABLE `interdril_pages_default_pages_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `interdril_pages_default_pages_translations`
--

INSERT INTO `interdril_pages_default_pages_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `content`) VALUES
(1, 1, '2017-07-18 03:05:02', NULL, '2017-07-18 03:05:02', NULL, 'en', '<p>Welcome to PyroCMS!</p>'),
(2, 2, '2017-07-18 03:05:02', NULL, '2017-07-18 03:05:02', NULL, 'en', '<p>Drop us a line! We\'d love to hear from you!</p><p><br></p>\n<p>{{ form(\'contact\').to(\'example@domain.com\')|raw }}</p>'),
(3, 3, '2017-07-19 09:04:13', NULL, '2017-07-19 09:04:13', 1, 'en', NULL),
(4, 4, '2017-07-19 09:06:27', NULL, '2017-07-19 09:12:40', 1, 'en', '<p class=\"text-center\"><em><img src=\"/files/about_us/background1.png\"></em></p>\r\n<p>Berpengalaman didalam bidang konstruksi khususnya pondasi selama hampir dari 20 tahun,PT.INTERDRIL INDONESIA berusaha selalu untuk mengerti apa yang dibutuhkan oleh para kontraktor pondasi agar dapat membangun proyek pondasi yang aman, kokoh secara efisen. Dimulai dengan menyumplai seperti Diesel Hammer, Hydraulic Static Pile Driver(HSPD), Excavator Mounted Drilling Auger,Excavator Mounted Pile Driver, Power Winch, Motor Hoise, Rotary Drilling beserta perlengkapan yang dibutuhkan untuk segala alat yang di supply oleh PT.INTERDRIL INDONESIA.</p><p>Berkembangnya zaman membuat teknologi sampai dengan saat ini sangatlah membantu seluruh elemen masyarakat khususnya para kontraktor pondasi, PT.INTERDRIL INDONESIA sebagai supplier mesin dan alat konstruksi pondasi selalu berkomitmen untuk berkembang dan terupdate akan teknologi didunia. Full Cassing Oscillator (FCO)dan juga Soil Improvement(SI) adalah contoh metode yang dipakai pada saat ini dimana, FCO adalah metode drilling dengan menggunakan casing yang dapat berdiameter 300 mm dengan kedalaman 100 Meter. Sedangkan SI sendiri adalah metode perbaikan ingredients elemen tanah agar tanah dapat digunakan sebagai landasan mesin untuk melakukan pengeboran ataupun pembuatan pondasi agar tidak amblas.</p><p>Dibantu tenaga professional yang selalu mengutamakan keaman kerja, PT.INTERDRIL INDONESIA akan selalu berusaha untuk siap dan membawa inovasi-inovasi termodern alat-alat konstruksi pondasi dengan tetap menjaga lingkungan, kualitas, efesiensi dan juga pricing, selain itu kami juga menerima pesanan dengan design khusus alat-alat pancang sesuai kebutuhan.</p><br><br>'),
(5, 5, '2017-07-19 09:24:28', NULL, '2017-07-19 09:24:28', 1, 'en', '<p class=\"text-center\"><img src=\"/files/about_us/construction-in-china-silhouette.png\"></p>\r\n<p class=\"text-center\"><strong style=\"font-size:18px\">–Making a new hope for Indonesia construction Machinery–</strong></p><p>Salam sejahtera bagi kita semua, sekitar tahun 1990 perusahaan yang berawal dari kontraktor pondasi telah mengerjakan berbagai proyek Nasional baik berskala kecil mau pun besar dimulai dari perumahan, danau, gedung pencakar langit sampai dengan pelabuhan di Indonesia. Saat ini kami telah berkembang menjadi sebuah perusahaan berskala Nasional yang berkompeten dan focus untuk menyuplai alat-alat pancang / pondasi ke seluruh tanah air. Teknologi yang terus berkembang membuat kami terus memperbaharui efisiensi, kualitas, design, dan cost seluruh alat yang kami supply dengan besar harapan agar alat-alat yang kami supply, sangat berguna membantu dan meringankan proyek pondasi yang tepat guna baik berskala Nasional maupun Internasional.</p><p>Dengan motto TEAM yaitu Together, Environment, Achieving, Modern, kami selalu mencoba untuk memberikan sebuah peralatan kerja modern/canggih yang ramah lingkungan dan efisien,dibantu dengan tenaga professional sehingga dapat menghasilkan hasil yang optimal.<br></p><p>Kedepan kami berharap dapat selalu membantu para kontraktor pondasi untuk bersama-sama membangun Indonesia yang unggul terutama dibidang peralatan konstruksi.</p><p>Sincerely,</p><p><img src=\"/files/about_us/RD_sign.png\"><br></p><p>SAWERDY NABABAN</p><p>(PRESIDEN DIREKTOR)&nbsp;</p>'),
(6, 6, '2017-07-19 09:32:59', NULL, '2017-07-19 09:32:59', 1, 'en', NULL),
(7, 7, '2017-07-20 07:13:54', NULL, '2017-07-20 07:13:54', 1, 'en', '<p><strong>ELECTRIC POWER WINCH TIPE SINGLE & DOUBLE DRUM</strong> capacity 3ton sampai 16 ton POWER WINCH, alat ini biasanya di gunakan untuk menggulung jangkar pada kapal tetapi sering di gunakan untuk alat drop hammer atau pun di piling frame untuk pemancangan ,mesin penggerak terdiri dari 2 system yaitu dengan system electric motor dan engine power ,alat ini dapat juga di gunakan untuk piling barge(ponton) sebagai penggulung sling untuk penarik tiang atau pun diesel hammer ,dimana saat lapangan kerja ygang tidak layak di masuki crawler crane ,alat jenis ini praktis ,tidak makan tempat ,kapasitas yang besar bisa sampai mencapai 16ton untuk single line pulling force.</p>'),
(8, 8, '2017-07-20 07:42:48', NULL, '2017-07-20 07:42:48', 1, 'en', '<p class=\"text-center\"><img src=\"/files/rotary_drilling/Vibro.png\"></p><p><br></p><p>VIBRO HAMMER adalah hammer getar yg bekerja dengan hasil getar di tambah berat alat sehingga dapat memasuki tiang atau pun sheet pile ke dalam tanah ,<br> pada umumnya terdapat 2 jenis yaitu electric (menggynakan listrik sebagai penggerak ) dan hydraulic (menggunakan system hydraulic sebagai penggerak ) dalam segi harga tentunya sangat berbeda jauh mahal pada system hydraulic ,keunggulan system ini dapat bekerja walau terendam air sekalipun karena tidak menggunakan listrik yg dapat membuat konslet di waktu terendam air, system inverter adalah inovasi baru di mana alat dapat bekerja pada kapasitas dari 0-maximum alat,dengan kata lain jika alat adalah tipe 90kw maka pekerjaan yg memerluka output 0-90kw dapat dikerjakan alat ini , system ini dapat mengontrol output energy sehingga mudah dalam pekerjaan ,tidak liar pada start awal ,dan dapat di gunakan pada output energy yang kecil zero current started dengan system stepless frequency adalah pilihan paling tepat unt memudah kan dan mempercepat pekerjaan pemancangan, besar kecil getaran akan terkontrol oleh kita sendiri.</p><p><br></p>'),
(9, 9, '2017-07-20 07:49:33', NULL, '2017-07-20 07:49:33', 1, 'en', '<figure class=\"text-center\"><img src=\"/files/rotary_drilling/8.HSPD_1.png\"></figure><p><br></p><p>Hydraulic static pile driver (HSPD) adalah alat pancang jenis static sesuai namanya dimana alat tersebut bekerja tanpa getar tanpa suara kebisingan dan tanpa polusi ,saat ini alat jenis ini telah banyak di gunakan di seluruh indonesia dan juga telah populer di manca negara seperti Malaysia, Brunei, Singapore,Thailand, Myanmar, Rusia, Philipina, dan Macao.</p><p>Dengan merek T-WORKS adalah merek yang kami import dan sebagai agen tunggal dari merek tersebut ,seluruh alat yang kami import telah kami sesuaikan dengan kondisi Indonesia dan telah kami upgrade serta modifikasi sehingga kecepatan, kehandalan, kepraktisan kerja yang tidak perlu di ragukan lagi ,alat yang kami supply rata rata mempunyai 20% lebih cepat dan lebih besar kemampuan kerjanya, hingga saat ini telah mendistribusi hampir mencapai 250 unit untuk di Indonesia tersebar dari ujung Sabang sampai Marauke,untuk spare part dan after sales service yang terjamin merupakan salah satu janji kami.</p><p>Banyak alat sejenis yang meniru dari kami dalam penyempurnaan alat yang semua itu merupakan design inovasi dan teknologi kami, tetapi kami selalu menjaga kemampuan dan kehandalan alat bukan hanya penampilan alat tersebut.kami juga menerima permintaan design khusus untuk pekerjaan khusus yang tidak bisa dikerjakan alat standard.</p><img src=\"/files/rotary_drilling/Diesel-Hammer.png\"><p><br></p><p class=\"text-center\"><img src=\"/files/rotary_drilling/Sunward-Authorization.png\"><br></p><p><br></p>'),
(10, 10, '2017-07-20 08:01:40', NULL, '2017-07-20 08:01:40', 1, 'en', '<p>DRILLING diameter 300mm sampai dengan 1000mm, maximum kedalaman 24 meter.&nbsp;<strong>EXCAVATOR MOUNTED EXTENDED DRILLING AUGER&nbsp;</strong>,adalah alat bor tanah yang pertama di indonesia dengan sytem pemasangan di excavator dengan menggunakan extended bar dan concrete pump connecting valve,diameter yg dapat di kerjakan mulai dari 300mm sampai dengan 1000mm dengan kedalaman maximal 24 meter dapat di sertai dengan pengecoran semen di saat pengeboran ,alat ini juga di gunakan untuk melakukan sytem pondasi place in pile yang merupakan system baru dan pertama di indonesia tetapi telah populer di negara berkembang seperti jepang ,taiwan dan korea</p><p>system place in pile tidak menimbulkan getaran ,extrusion pada tanah di saat tiang memasuki tanah ,sytem ini cocok digunakan di area perkotaan dan terutama pada kodisi tanah yg labil ,friction yg besar dapat di peroleh pada system ini sehingga akan meningkatkan kapasitas daya dukung tiang ,lebih efesien dan murah di bandingkan dengan bore pile yang pada umumnya keterbatasan ruang gerak pada alat juga sangat cocok mempergunakan nya.</p>'),
(11, 11, '2017-07-20 08:05:13', NULL, '2017-07-20 08:05:13', 1, 'en', '<p class=\"text-center\"><img src=\"/files/rotary_drilling/Diesel-Hammer.jpg\"></p><p>Palu pemukul tiang dengan bahan bakar diesel bertipe mulai dari DD-18 sampai dengan DD-500,sehingga di sebut diesel hammer ,saat ini di indonesiaumumnya terbagi 2 tipe yaitu guide rod diesel hammer atau umumnya di sebut hammer kodok dan tube diesel hammer atau hammer tabung ,jenis guide rod (HAMMER KODOK) keunggulannya sangat cocok untuk kondisi tanah lunak, dengan me-setting kecil pengeluaran bahan bakar, diesel hammer kami akan bekerja normal walaupun dengan “perlawanan” yang kecil sekalipun, jenis ini sangat irit dalam pemakaian minyak ,hanya 20% dari hammer tabung biasa , penyempuranaan hammer INTERDRIL ini dilakukan dalam kualitas baja dan juga kepadatan pengecoran piston hammer dimana pada hammer lainnya piston ini akan menimbulkan bullbing(gelembung udara) dan juga mudah retak bahkan pecah. Tingkat pengunaan hammer tersebut telah mencapat 500 unit lebih tersebar di seluruh Indonesia, adapun hammer ini langsung di import dari pabrik dan PT.INTERDRIL INDONESIA adalah satu-satunya distributor resmi diesel hammer INTERDRIL.</p><figure><img src=\"/files/rotary_drilling/SmartSelectImage_2015-11-26-14-18-31.png\"><br></figure>'),
(12, 12, '2017-07-20 08:09:02', NULL, '2017-07-20 08:09:02', 1, 'en', NULL),
(13, 13, '2017-07-20 08:20:15', NULL, '2017-07-20 08:20:15', 1, 'en', '<p class=\"text-center\"><img src=\"/files/services/WS-1024x576.jpg\"></p><p>Sebagai salah satu perusahaan supplier alat-alat pancang, kami juga menyediakan Crane dengan berbagai variasi mulai dari 30T,50T, 80T, 100T, 150T, 200T, 280T sampai dengan 500T. Adapun Crane yang kami miliki yaitu Crawler Crane dan Rafter Crane dengan berbagai macam merek seperti SUMITOMO, KOBELCO, P&H, NIPPON SHARYO, HITACHI, FAUN, TADANO, berfasilitas kondisi Crane yang sangat FIT dalam arti siap kerja kami selalu siap untuk mensupplai kebutuhan Crane para pengguna / pembeli kami.</p>'),
(14, 14, '2017-07-20 08:26:24', NULL, '2017-07-20 08:26:24', 1, 'en', '<p>Metode pembuatan pondasi yang telah di pakai dan dipercaya dibeberapa negara maju seperti Taiwan, Macau, Hongkong ini telah terbukti sangat aman untuk dikerjakan. Casing yang dimasukkan kedalam tanah sesuai dengan kedalaman diinginkan, ditambah dengan system oscillator(mesin pemutar casing) yang di padu dengan cisel untuk mengambil seluruh tanah yang terdapat didapat didalam casing. Metode ini dapat digunakan untuk diameter 3 Meter dengan kedalaman sekitar 100 Meter. Metode ini telah terbukti dapat menghindari getaran, polusi, penurunan pondasi dan kualitas beton, dikarenakan dengan metode tersebut dapat menghasilkan sebuah tiang pancang yang bersih agar tanah tidak bercampur bersama beton sewaktu pengecoran.</p><p>Dibantu dengan Oscillator ( Mesin pengerak) yang membawa masuk casing khusus dengan ketebalan dan juga mata bor yang dirancang khusus sehingga dapat memotong lapisan batu, granite bahkan batu gunung sekalipun. Tenaga hidraulik yang di salurkan dari powerpack sehingga memastikan Oscillator memiliki tenaga yang sangat cukup untuk memasukkan casing kedalam tanah.</p><p>Adapun metode ini juga sangatlah menjaga rate / persentase pengunaan beton/concrete, dimana biaya sebuah pengerjaan bored pile sangatlah berpengaruh terhadap berbagai faktor termasuk concrete, dengan metode Full Cassing Oscillator ini dipastikan masalah miss concrete dapat ditekan lebih kecil jauh daripada alat bored pile lainnya.</p><p><img src=\"/files/services/Flow-chart.jpg\"></p>'),
(15, 15, '2017-07-20 08:36:35', NULL, '2017-07-20 08:36:35', 1, 'en', '<figure class=\"text-center\"><img src=\"/files/services/112059-828x580-Topsoil.jpg\"></figure><p>Beberapa pekerjaan proyek pastinya sering mendapatkan masalah untuk memasukkan mesin kedalam proyek dikarenakan lahan yang sangat lunak, Soil Improvement yang bertujuan untuk memperbaikin system ingredients tanah agar mendapatkan hasil tanah yang lebih keras dapat dijadikan sebagai landasan mesin pekerja proyek. Dengan system penitrasi menggunakan tekanan tinggi membuat campuran dapat bersatu dengan tanah yang lunak agar menghasilkan tanah yang suitable untuk bekerja nantinya.</p><figure><img src=\"/files/services/20160323_101939-1024x576.jpg\"><br></figure>');

-- --------------------------------------------------------

--
-- Table structure for table `interdril_pages_pages`
--

CREATE TABLE `interdril_pages_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `str_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type_id` int(11) NOT NULL,
  `entry_id` int(11) DEFAULT NULL,
  `entry_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `visible` tinyint(1) DEFAULT '1',
  `enabled` tinyint(1) DEFAULT '1',
  `exact` tinyint(1) DEFAULT '1',
  `home` tinyint(1) DEFAULT '0',
  `theme_layout` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'theme::layouts/default.twig'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `interdril_pages_pages`
--

INSERT INTO `interdril_pages_pages` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `str_id`, `slug`, `path`, `type_id`, `entry_id`, `entry_type`, `parent_id`, `visible`, `enabled`, `exact`, `home`, `theme_layout`) VALUES
(1, 1, '2017-07-18 03:05:02', NULL, '2017-07-19 08:58:37', 1, NULL, 'eLeo5kGNmIfAwYrLvS9PaSZM', 'home', '/', 1, 1, 'Anomaly\\Streams\\Platform\\Model\\Pages\\PagesDefaultPagesEntryModel', NULL, 1, 1, 1, 1, NULL),
(2, 5, '2017-07-18 03:05:02', NULL, '2017-07-20 08:09:59', 1, NULL, 'OeGKP4lQdqKwGPXQ6FeKMFxa', 'contact', '/contact', 1, 2, 'Anomaly\\Streams\\Platform\\Model\\Pages\\PagesDefaultPagesEntryModel', NULL, 1, 1, 1, 0, 'theme::layouts/default.twig'),
(3, 2, '2017-07-19 09:04:13', 1, '2017-07-19 09:06:39', 1, NULL, 'UuFpd1xQZ6GsqYmLFwG4HTqr', 'about-us', '/about-us', 1, 3, 'Anomaly\\Streams\\Platform\\Model\\Pages\\PagesDefaultPagesEntryModel', NULL, 1, 1, 1, 0, NULL),
(4, 1, '2017-07-19 09:06:27', 1, '2017-07-19 09:12:40', 1, NULL, '6Oc6Ue1Z1xNOdWi27K5TXzSy', 'background', '/about-us/background', 1, 4, 'Anomaly\\Streams\\Platform\\Model\\Pages\\PagesDefaultPagesEntryModel', 3, 1, 1, 1, 0, 'theme::layouts.default'),
(5, 2, '2017-07-19 09:24:28', 1, '2017-07-19 09:33:05', 1, NULL, 'aZ9s8SDZeZt3wntvlRs8U2xK', 'founders-greeting-s', '/about-us/founders-greeting-s', 1, 5, 'Anomaly\\Streams\\Platform\\Model\\Pages\\PagesDefaultPagesEntryModel', 3, 1, 1, 1, 0, NULL),
(6, 3, '2017-07-19 09:32:59', 1, '2017-07-19 09:33:07', 1, NULL, 'j2wxSKL2uAH2eoDuv9HaAqC1', 'product', '/product', 1, 6, 'Anomaly\\Streams\\Platform\\Model\\Pages\\PagesDefaultPagesEntryModel', NULL, 1, 1, 1, 0, 'theme::layouts.default'),
(7, 1, '2017-07-19 09:36:24', 1, '2017-07-20 08:09:09', 1, NULL, 'QJMs9Psy2J5MsA1YnBLIRIHY', 'rotary-drilling', '/product/rotary-drilling', 2, 1, 'Anomaly\\Streams\\Platform\\Model\\Pages\\PagesPageWithAnimationImagePagesEntryModel', 6, 1, 1, 1, 0, NULL),
(8, 2, '2017-07-20 03:28:09', 1, '2017-07-20 08:09:09', 1, NULL, 'nkdOnRvqyvtvRnCbQCfe14WJ', 'concrete-mixer-pump', '/product/concrete-mixer-pump', 2, 2, 'Anomaly\\Streams\\Platform\\Model\\Pages\\PagesPageWithAnimationImagePagesEntryModel', 6, 1, 1, 1, 0, NULL),
(9, 3, '2017-07-20 05:02:03', 1, '2017-07-20 08:09:10', 1, NULL, 'ujN7WtomEVldsivNpESKKj8M', 'forklift', '/product/forklift', 2, 3, 'Anomaly\\Streams\\Platform\\Model\\Pages\\PagesPageWithAnimationImagePagesEntryModel', 6, 1, 1, 1, 0, NULL),
(10, 4, '2017-07-20 07:13:54', 1, '2017-07-20 08:09:10', 1, NULL, 'GzRUNda6LAk8tMrZVlqFEafS', 'power-winch', '/product/power-winch', 1, 7, 'Anomaly\\Streams\\Platform\\Model\\Pages\\PagesDefaultPagesEntryModel', 6, 1, 1, 1, 0, NULL),
(11, 5, '2017-07-20 07:42:48', 1, '2017-07-20 08:09:10', 1, NULL, 'oQmHqcifZEa46eBshCV1gVUI', 'vibro-hammer', '/product/vibro-hammer', 1, 8, 'Anomaly\\Streams\\Platform\\Model\\Pages\\PagesDefaultPagesEntryModel', 6, 1, 1, 1, 0, NULL),
(12, 6, '2017-07-20 07:49:33', 1, '2017-07-20 08:09:11', 1, NULL, 'qMjEwvuP0XJdrI46IOFOTzYt', 'hydraulic-static-pile-driver-hspd', '/product/hydraulic-static-pile-driver-hspd', 1, 9, 'Anomaly\\Streams\\Platform\\Model\\Pages\\PagesDefaultPagesEntryModel', 6, 1, 1, 1, 0, NULL),
(13, 7, '2017-07-20 08:01:40', 1, '2017-07-20 08:09:11', 1, NULL, 'zuHzaZJGlUKLOUZKyJH6OLGn', 'excavator-mounted-drilling-auger', '/product/excavator-mounted-drilling-auger', 1, 10, 'Anomaly\\Streams\\Platform\\Model\\Pages\\PagesDefaultPagesEntryModel', 6, 1, 1, 1, 0, NULL),
(14, 8, '2017-07-20 08:05:13', 1, '2017-07-20 08:09:12', 1, NULL, '0xCEA02Z7EE35COLYX7gOgYb', 'diesel-hammer', '/product/diesel-hammer', 1, 11, 'Anomaly\\Streams\\Platform\\Model\\Pages\\PagesDefaultPagesEntryModel', 6, 1, 1, 1, 0, NULL),
(15, 4, '2017-07-20 08:09:02', 1, '2017-07-20 08:09:59', 1, NULL, 'ZOeZNucWLXUsLxrc7U0wEVWf', 'services', '/services', 1, 12, 'Anomaly\\Streams\\Platform\\Model\\Pages\\PagesDefaultPagesEntryModel', NULL, 1, 1, 1, 0, NULL),
(16, 16, '2017-07-20 08:20:16', 1, NULL, NULL, NULL, 'nnRrXRY6nHHkcEEkn2J81d0A', 'crane-rental', '/services/crane-rental', 1, 13, 'Anomaly\\Streams\\Platform\\Model\\Pages\\PagesDefaultPagesEntryModel', 15, 1, 1, 1, 0, NULL),
(17, 17, '2017-07-20 08:26:24', 1, NULL, NULL, NULL, '3got15UNkSeE8hnw264cDCfP', 'full-cassing-oscillator', '/services/full-cassing-oscillator', 1, 14, 'Anomaly\\Streams\\Platform\\Model\\Pages\\PagesDefaultPagesEntryModel', 15, 1, 1, 1, 0, NULL),
(18, 18, '2017-07-20 08:36:35', 1, NULL, NULL, NULL, '80YOgqaa5E18NZLmo577qji1', 'soil-improvement', '/services/soil-improvement', 1, 15, 'Anomaly\\Streams\\Platform\\Model\\Pages\\PagesDefaultPagesEntryModel', 15, 1, 1, 1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `interdril_pages_pages_allowed_roles`
--

CREATE TABLE `interdril_pages_pages_allowed_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  `sort_order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `interdril_pages_pages_translations`
--

CREATE TABLE `interdril_pages_pages_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `meta_keywords` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `interdril_pages_pages_translations`
--

INSERT INTO `interdril_pages_pages_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `title`, `meta_title`, `meta_description`, `meta_keywords`) VALUES
(1, 1, '2017-07-18 03:05:02', NULL, '2017-07-19 08:58:37', 1, 'en', 'Home', NULL, NULL, 'a:0:{}'),
(2, 2, '2017-07-18 03:05:03', NULL, '2017-07-18 03:05:03', NULL, 'en', 'Contact', NULL, NULL, NULL),
(3, 3, '2017-07-19 09:04:13', NULL, '2017-07-19 09:04:13', 1, 'en', 'About Us', NULL, NULL, 'a:0:{}'),
(4, 4, '2017-07-19 09:06:27', NULL, '2017-07-19 09:06:27', 1, 'en', 'Background', 'Background PT Interdril', NULL, 'a:1:{i:0;s:9:\"interdril\";}'),
(5, 5, '2017-07-19 09:24:28', NULL, '2017-07-19 09:24:28', 1, 'en', 'Founders Greeting’s', NULL, NULL, 'a:0:{}'),
(6, 6, '2017-07-19 09:32:59', NULL, '2017-07-19 09:32:59', 1, 'en', 'Product', NULL, NULL, 'a:0:{}'),
(7, 7, '2017-07-19 09:36:24', NULL, '2017-07-19 09:36:24', 1, 'en', 'Rotary Drilling', NULL, NULL, 'a:0:{}'),
(8, 8, '2017-07-20 03:28:09', NULL, '2017-07-20 03:28:09', 1, 'en', 'Concrete Mixer Pump', NULL, NULL, 'a:0:{}'),
(9, 9, '2017-07-20 05:02:05', NULL, '2017-07-20 05:02:05', 1, 'en', 'Forklift', NULL, NULL, 'a:0:{}'),
(10, 10, '2017-07-20 07:13:54', NULL, '2017-07-20 07:13:54', 1, 'en', 'Power Winch', NULL, NULL, 'a:0:{}'),
(11, 11, '2017-07-20 07:42:48', NULL, '2017-07-20 07:42:48', 1, 'en', 'Vibro Hammer', NULL, NULL, 'a:0:{}'),
(12, 12, '2017-07-20 07:49:33', NULL, '2017-07-20 07:49:33', 1, 'en', 'Hydraulic Static Pile Driver (HSPD)', NULL, NULL, 'a:0:{}'),
(13, 13, '2017-07-20 08:01:41', NULL, '2017-07-20 08:01:41', 1, 'en', 'Excavator Mounted Drilling Auger', NULL, NULL, 'a:0:{}'),
(14, 14, '2017-07-20 08:05:14', NULL, '2017-07-20 08:05:14', 1, 'en', 'Diesel Hammer', NULL, NULL, 'a:0:{}'),
(15, 15, '2017-07-20 08:09:03', NULL, '2017-07-20 08:09:03', 1, 'en', 'Services', NULL, NULL, 'a:0:{}'),
(16, 16, '2017-07-20 08:20:16', NULL, '2017-07-20 08:20:16', 1, 'en', 'Crane Rental', NULL, NULL, 'a:0:{}'),
(17, 17, '2017-07-20 08:26:24', NULL, '2017-07-20 08:26:24', 1, 'en', 'Full Cassing Oscillator', NULL, NULL, 'a:0:{}'),
(18, 18, '2017-07-20 08:36:35', NULL, '2017-07-20 08:36:35', 1, 'en', 'Soil Improvement', NULL, NULL, 'a:0:{}');

-- --------------------------------------------------------

--
-- Table structure for table `interdril_pages_page_with_animation_image_pages`
--

CREATE TABLE `interdril_pages_page_with_animation_image_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `image_class` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `interdril_pages_page_with_animation_image_pages`
--

INSERT INTO `interdril_pages_page_with_animation_image_pages` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `image_class`) VALUES
(1, 1, '2017-07-19 09:36:23', 1, '2017-07-20 04:34:52', 1, NULL, 'animated fadeInUp'),
(2, 2, '2017-07-20 03:28:08', 1, '2017-07-20 04:35:24', 1, NULL, 'animate'),
(3, 3, '2017-07-20 05:02:03', 1, NULL, NULL, NULL, 'animate');

-- --------------------------------------------------------

--
-- Table structure for table `interdril_pages_page_with_animation_image_pages_images`
--

CREATE TABLE `interdril_pages_page_with_animation_image_pages_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `file_id` int(11) NOT NULL,
  `sort_order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `interdril_pages_page_with_animation_image_pages_images`
--

INSERT INTO `interdril_pages_page_with_animation_image_pages_images` (`id`, `entry_id`, `file_id`, `sort_order`) VALUES
(79, 1, 4, 0),
(80, 1, 5, 1),
(81, 1, 6, 2),
(82, 1, 7, 3),
(83, 1, 8, 4),
(84, 1, 9, 5),
(85, 1, 10, 6),
(86, 1, 11, 7),
(87, 2, 12, 0),
(88, 2, 13, 1),
(89, 2, 14, 2),
(90, 2, 15, 3),
(91, 2, 16, 4),
(92, 2, 17, 5),
(93, 2, 18, 6),
(94, 2, 19, 7),
(95, 3, 21, 1),
(96, 3, 22, 2),
(97, 3, 23, 3),
(98, 3, 24, 4);

-- --------------------------------------------------------

--
-- Table structure for table `interdril_pages_page_with_animation_image_pages_translations`
--

CREATE TABLE `interdril_pages_page_with_animation_image_pages_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `interdril_pages_page_with_animation_image_pages_translations`
--

INSERT INTO `interdril_pages_page_with_animation_image_pages_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `content`) VALUES
(1, 1, '2017-07-19 09:36:23', NULL, '2017-07-19 09:55:30', 1, 'en', '<p>Sangatlah banyak metode untuk pembuatan pondasi, mulai dari Diesel Hammer, Jacking, Vibro sampai dengan bore pile.Bore Pile merupakan pengeboran dengan cara mengeluarkan tanah yang berada dikoordinat titik pondasi, dengan menggantikan isi tanah tersebut dengan rangkaian besi dan juga concrete beton, metode ini di percaya pada masa kini merupakan metode pembuatan pondasi yang aman untuk menghindari longsor, getaran, dan juga menaikkan tanah sekitar yang berada di titik pancang.</p>\r\n<p>Rotary Drilling alat yang digunakan untuk pengeboran digunakan untuk berbagai variasi diameter dimulai dari diameter kecil 60 Cm sampai dengan 2,5 Meter, dan juga kedalaman yang dapat mengebor sedalam lebih dari 80 Meter, dilengkapi dengan Kelly Bar INTERLOCKING yang didesigndengan ketebalan lebih tebal daripada biasanya agar tidak mudah “terpelintir” sewaktu pengeboran dilakukan,&nbsp;Ditambah dengan mata bor dirancang dengan bahan khusus yang dapat membelah batu biasa, batu gunung bahkan batu granit sekalipun.</p>\r\n<p>Disamping untuk pengerjaan diameter besar kami juga dapat men-custom “Mini Rotary Drilling” yaitu merubah fungsi Excavator untuk digunakan sebagai alat bor yang dapat mengebor antara diameter 60 Cm sampai dengan 1 Meter dan kedalaman maximum 24 Meter, alat ini sangatlah cocok untuk pengerjaan yang memerlukan waktu cepat dan juga dapat mengebor tanah keras dikarenakan kepala mata bor yang sebanding dengan mesin Rotary Drilling umumnya, pengerjaan dengan alat ini sangat efisien untuk contiguous pile, second pile.</p>'),
(2, 2, '2017-07-20 03:28:09', NULL, '2017-07-20 03:28:09', 1, 'en', '<p>Konstruksi di Indonesia yang semakin booming saat ini sangatlah memerlukan beton sebagai perangkat untama dalam pembangunan, akan tetapi perkembangan konstruksi yang pesat ini tidaklah sebanding dengan kesiapan dari sebuah tempat pensupplian beton atau yang kita lebih kenal dengan batching plant khususnya di daerah terpencil yang jauh dari hiruk biruk perkotaan dan jauh dari teknologi.Dikarenakan faktor inilah terkadang menimbulkan kesulitan untuk sewaktu pengecoran.</p>\r\n<p><strong>Concrete Mixer with Pump&nbsp;</strong>yang dirancang khusus untuk mengatasi masalah tersebut, penggunaan mesin yang sangat efisien mulai dari pengangkutan sampai dengan penggunaan mesin yang semua telah didesign dengan sistem komputerisasi yang canggih sehingga membuat alat ini sangatlah muda dipakai oleh semua orang, dengan standard value dari mesin yang dapat memproduksi 10-15 m<sup>3</sup>&nbsp;/jam dan dapat mendistribusikan beton secara horizontal sejauh 200 Meter dan vertikal setinggi 70 Meter, dipastikan sangat diperlukan untuk anda yang ingin melakukan self-mixing ataupun didaerah yang belum terjamah ready mix.<br></p>\r\n<p><strong>Stock Bin</strong>&nbsp;untuk memperkecil tingkat kesalahan dalam pengadukan sewaktu self-mixing kami juga menyediakan Stock Bin atau timbangan material yang dapat menimbang secara akurat dalam peruntukan material yang akan dimasukkan ke Concrete Mixer tersebut. Dengan sensor gantung yang sangat efisien alat tersebut pastinya memberikan tingkat akurasi penimbangan material anda.<br></p>\r\n<p><strong>Front Wheel Loader</strong>&nbsp;selain penimbang material terkadang untuk mempercepat proses pengerjaann sangatlah dibutuhkan sebuah truk pengangkat sebagai alat pendistribusian material kedalam stock bin ataupun langsung ke Mixer pump, bucket yang kecil dan juga dimensi Loader yang kecil sangatlah efisien sehingga membuat alat tersebut flexibel dalam penggunaannya.<br></p>\r\n<p><strong>Diesel Concrete Pump</strong>&nbsp;selain diperuntukkan untuk yang melakukan self-mixing, kami juga menyediakan Concrete Pump atau yang lebih dikenal dengan pompa beton, dimana alat ini sangatlah membantu jika lokasi proyek yang sempit dan tidak memungkinkan bagi kendaraan untuk masuk ke lokasi proyek, adapun alat ini didesign khusus dengan tenaga DIESEL yang sangatlah memudahkan pemakaian dimana yang biasanya harus menggunakan genset tambahan. Berbagai kebutuhan untuk alat tersebut untuk pendistribusian concrete mulai dari 30m<sup>3</sup>&nbsp;sampai dengan 90m<sup>3</sup>&nbsp;, dengan jarak vertikal 90 Meter sampai dengan 280 Meter dan jarak Horizontal 350 Meter sampai dengan 1200 Meter.<br></p>'),
(3, 3, '2017-07-20 05:02:03', NULL, '2017-07-20 05:02:03', 1, 'en', '<p class=\"text-center\"><img src=\"/files/rotary_drilling/7Ton.png\"></p><p>Truk angkat atau yang lebih di kenal dengan sebuan Forklift, sangatlah membantu pekerjaan manusia saat ini baik di pertokoan makro, pergudangan, bengkel, sampai dengan proyek konstruksi. Pentingnya komponen Forklift sangatlah mendukung awet dan efisiennya sebuah Forklift. Pada tahun 2015, PT.INTERDRIL INDONESIA menjadi distributor tunggal LIFTECH di Indonesia, dengan kapasitas mulai dari 3.5 ton – 10 ton, keunggulan Foklift LIFTECH adalah menggabungkan engine izuzu, pump hidraulik shimadzu, hose eaton dan juga valve yang diyakini dapat menjaga keawetan dan memaximalkan pemakaian Forklift LIFTECH.</p><p><br></p>');

-- --------------------------------------------------------

--
-- Table structure for table `interdril_pages_types`
--

CREATE TABLE `interdril_pages_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `theme_layout` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'theme::layouts/default.twig',
  `layout` text COLLATE utf8_unicode_ci NOT NULL,
  `handler` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'anomaly.extension.default_page_handler'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `interdril_pages_types`
--

INSERT INTO `interdril_pages_types` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `slug`, `theme_layout`, `layout`, `handler`) VALUES
(1, 1, '2017-07-18 03:04:59', NULL, '2017-07-19 09:07:37', 1, NULL, 'default', 'theme::layouts.default', '{{ page.content.render|raw }}', 'anomaly.extension.default_page_handler'),
(2, 2, '2017-07-19 09:29:21', 1, '2017-07-20 04:49:10', 1, NULL, 'page_with_animation_image', 'theme::layouts.default', '<section class=\"col-md-12 col-sm-12\">\r\n	{{ page.content|raw }}\r\n</section>\r\n<div class=\"row\" id=\"slide-image\">\r\n	<div class=\"row mx-content center\">\r\n        <h3 class=\"title\"><span>{{ page.title|raw }}</span></h3>\r\n    </div>\r\n	{% for image in page.images %}\r\n	<div class=\"col-md-3 col-sm-4\"><img id=\"{{ image.id }}\" class=\"animate\" src=\"{{ image.make().url() }}\" data-effect=\"fadeInUp\"/></div>\r\n	{% endfor %}\r\n</div>', 'anomaly.extension.default_page_handler');

-- --------------------------------------------------------

--
-- Table structure for table `interdril_pages_types_translations`
--

CREATE TABLE `interdril_pages_types_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `interdril_pages_types_translations`
--

INSERT INTO `interdril_pages_types_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `name`, `description`) VALUES
(1, 1, '2017-07-18 03:05:00', NULL, '2017-07-19 09:07:37', 1, 'en', 'Simple Page', 'A simple page type.'),
(2, 2, '2017-07-19 09:29:22', NULL, '2017-07-19 09:29:22', 1, 'en', 'Page With Animation Image', 'Page With Animation Image');

-- --------------------------------------------------------

--
-- Table structure for table `interdril_page_link_type_pages`
--

CREATE TABLE `interdril_page_link_type_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `page_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `interdril_page_link_type_pages_translations`
--

CREATE TABLE `interdril_page_link_type_pages_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `interdril_posts_categories`
--

CREATE TABLE `interdril_posts_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `interdril_posts_categories`
--

INSERT INTO `interdril_posts_categories` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `slug`) VALUES
(1, 1, '2017-07-18 03:05:08', NULL, NULL, NULL, NULL, 'news');

-- --------------------------------------------------------

--
-- Table structure for table `interdril_posts_categories_translations`
--

CREATE TABLE `interdril_posts_categories_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `interdril_posts_categories_translations`
--

INSERT INTO `interdril_posts_categories_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `name`, `description`) VALUES
(1, 1, '2017-07-18 03:05:08', NULL, '2017-07-18 03:05:08', NULL, 'en', 'News', 'Company news and updates.');

-- --------------------------------------------------------

--
-- Table structure for table `interdril_posts_default_posts`
--

CREATE TABLE `interdril_posts_default_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `interdril_posts_default_posts`
--

INSERT INTO `interdril_posts_default_posts` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`) VALUES
(1, 1, '2017-07-18 03:05:09', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `interdril_posts_default_posts_translations`
--

CREATE TABLE `interdril_posts_default_posts_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `interdril_posts_default_posts_translations`
--

INSERT INTO `interdril_posts_default_posts_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `content`) VALUES
(1, 1, '2017-07-18 03:05:09', NULL, '2017-07-18 03:05:09', NULL, 'en', '<p>Welcome to PyroCMS!</p>');

-- --------------------------------------------------------

--
-- Table structure for table `interdril_posts_posts`
--

CREATE TABLE `interdril_posts_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `str_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type_id` int(11) NOT NULL,
  `publish_at` datetime NOT NULL,
  `author_id` int(11) NOT NULL,
  `entry_id` int(11) NOT NULL,
  `entry_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `featured` tinyint(1) DEFAULT '0',
  `enabled` tinyint(1) DEFAULT '0',
  `tags` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `interdril_posts_posts`
--

INSERT INTO `interdril_posts_posts` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `str_id`, `slug`, `type_id`, `publish_at`, `author_id`, `entry_id`, `entry_type`, `category_id`, `featured`, `enabled`, `tags`) VALUES
(1, 1, '2017-07-18 03:05:09', NULL, NULL, NULL, NULL, 'CVEo0tve9068bsfM', 'welcome-to-pyrocms', 1, '2017-07-18 03:05:09', 1, 1, 'Anomaly\\Streams\\Platform\\Model\\Posts\\PostsDefaultPostsEntryModel', 1, 0, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `interdril_posts_posts_translations`
--

CREATE TABLE `interdril_posts_posts_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `summary` text COLLATE utf8_unicode_ci,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `meta_keywords` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `interdril_posts_posts_translations`
--

INSERT INTO `interdril_posts_posts_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `title`, `summary`, `meta_title`, `meta_description`, `meta_keywords`) VALUES
(1, 1, '2017-07-18 03:05:10', NULL, '2017-07-18 03:05:10', NULL, 'en', 'Welcome to PyroCMS!', 'This is an example post to demonstrate the posts module.', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `interdril_posts_types`
--

CREATE TABLE `interdril_posts_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `layout` text COLLATE utf8_unicode_ci NOT NULL,
  `theme_layout` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `interdril_posts_types`
--

INSERT INTO `interdril_posts_types` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `slug`, `layout`, `theme_layout`) VALUES
(1, 1, '2017-07-18 03:05:04', NULL, NULL, NULL, NULL, 'default', '{{ post.content.render|raw }}', 'theme::layouts/default.twig');

-- --------------------------------------------------------

--
-- Table structure for table `interdril_posts_types_translations`
--

CREATE TABLE `interdril_posts_types_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `interdril_posts_types_translations`
--

INSERT INTO `interdril_posts_types_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `name`, `description`) VALUES
(1, 1, '2017-07-18 03:05:06', NULL, '2017-07-18 03:05:06', NULL, 'en', 'Default', 'A simple post type.');

-- --------------------------------------------------------

--
-- Table structure for table `interdril_preferences_preferences`
--

CREATE TABLE `interdril_preferences_preferences` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `interdril_redirects_redirects`
--

CREATE TABLE `interdril_redirects_redirects` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `from` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `to` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '301',
  `secure` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `interdril_sessions`
--

CREATE TABLE `interdril_sessions` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8_unicode_ci,
  `payload` text COLLATE utf8_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `interdril_settings_settings`
--

CREATE TABLE `interdril_settings_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `interdril_settings_settings`
--

INSERT INTO `interdril_settings_settings` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `key`, `value`) VALUES
(1, 1, '2017-07-18 03:46:52', 1, '2017-07-18 04:53:10', 1, 'streams::name', 'Interdril Indonesia'),
(2, 2, '2017-07-18 03:46:52', 1, '2017-07-18 04:53:10', 1, 'streams::description', 'Build better Laravel websites and applications faster with Pyro.'),
(3, 3, '2017-07-18 03:46:52', 1, '2017-07-18 04:53:10', 1, 'streams::business', 'PT.INTERDRIL INDONESIA'),
(4, 4, '2017-07-18 03:46:52', 1, '2017-07-18 04:53:10', 1, 'streams::phone', NULL),
(5, 5, '2017-07-18 03:46:52', 1, '2017-07-18 04:53:11', 1, 'streams::address', NULL),
(6, 6, '2017-07-18 03:46:52', 1, '2017-07-18 04:53:11', 1, 'streams::address2', NULL),
(7, 7, '2017-07-18 03:46:52', 1, '2017-07-18 04:53:11', 1, 'streams::city', NULL),
(8, 8, '2017-07-18 03:46:52', 1, '2017-07-18 04:53:11', 1, 'streams::state', ''),
(9, 9, '2017-07-18 03:46:52', 1, '2017-07-18 04:53:11', 1, 'streams::postal_code', NULL),
(10, 10, '2017-07-18 03:46:53', 1, '2017-07-18 04:53:11', 1, 'streams::country', ''),
(11, 11, '2017-07-18 03:46:53', 1, '2017-07-18 04:53:11', 1, 'streams::timezone', 'UTC'),
(12, 12, '2017-07-18 03:46:53', 1, '2017-07-18 04:53:11', 1, 'streams::date_format', 'j F, Y'),
(13, 13, '2017-07-18 03:46:53', 1, '2017-07-18 04:53:11', 1, 'streams::time_format', 'g:i A'),
(14, 14, '2017-07-18 03:46:53', 1, '2017-07-18 04:53:12', 1, 'streams::unit_system', 'imperial'),
(15, 15, '2017-07-18 03:46:53', 1, '2017-07-18 04:53:12', 1, 'streams::currency', 'USD'),
(16, 16, '2017-07-18 03:46:53', 1, '2017-07-18 04:53:12', 1, 'streams::standard_theme', 'interdril.theme.starter'),
(17, 17, '2017-07-18 03:46:53', 1, '2017-07-18 04:53:12', 1, 'streams::admin_theme', 'pyrocms.theme.accelerant'),
(18, 18, '2017-07-18 03:46:53', 1, '2017-07-18 04:53:12', 1, 'streams::per_page', '15'),
(19, 19, '2017-07-18 03:46:53', 1, '2017-07-18 04:53:12', 1, 'streams::default_locale', 'en'),
(20, 20, '2017-07-18 03:46:53', 1, '2017-07-18 04:53:12', 1, 'streams::enabled_locales', 'a:1:{i:0;s:2:\"en\";}'),
(21, 21, '2017-07-18 03:46:54', 1, '2017-07-18 04:53:12', 1, 'streams::maintenance', '0'),
(22, 22, '2017-07-18 03:46:54', 1, '2017-07-18 04:53:12', 1, 'streams::basic_auth', '0'),
(23, 23, '2017-07-18 03:46:54', 1, '2017-07-18 04:53:13', 1, 'streams::ip_whitelist', 'a:0:{}'),
(24, 24, '2017-07-18 03:46:54', 1, '2017-07-18 04:53:13', 1, 'streams::email', 'admin@interdril-indonesia.com'),
(25, 25, '2017-07-18 03:46:54', 1, '2017-07-18 04:53:13', 1, 'streams::sender', 'PyroCMS');

-- --------------------------------------------------------

--
-- Table structure for table `interdril_streams_assignments`
--

CREATE TABLE `interdril_streams_assignments` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) NOT NULL,
  `stream_id` int(11) NOT NULL,
  `field_id` int(11) NOT NULL,
  `config` text COLLATE utf8_unicode_ci NOT NULL,
  `unique` tinyint(1) NOT NULL DEFAULT '0',
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `translatable` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `interdril_streams_assignments`
--

INSERT INTO `interdril_streams_assignments` (`id`, `sort_order`, `stream_id`, `field_id`, `config`, `unique`, `required`, `translatable`) VALUES
(1, 1, 1, 1, 'a:0:{}', 0, 1, 0),
(2, 2, 1, 2, 'a:0:{}', 0, 1, 0),
(3, 3, 1, 3, 'a:0:{}', 0, 0, 0),
(4, 4, 2, 4, 'a:0:{}', 0, 1, 1),
(5, 5, 2, 5, 'a:0:{}', 1, 1, 0),
(6, 6, 2, 6, 'a:0:{}', 0, 0, 1),
(7, 7, 2, 7, 'a:0:{}', 0, 1, 0),
(8, 8, 2, 13, 'a:0:{}', 0, 0, 0),
(9, 9, 3, 8, 'a:0:{}', 0, 1, 1),
(10, 10, 3, 6, 'a:0:{}', 0, 0, 1),
(11, 11, 3, 9, 'a:0:{}', 0, 1, 0),
(12, 12, 3, 10, 'a:0:{}', 0, 1, 0),
(13, 13, 3, 12, 'a:0:{}', 0, 1, 0),
(14, 14, 3, 13, 'a:0:{}', 0, 0, 0),
(15, 15, 3, 11, 'a:0:{}', 0, 0, 0),
(16, 16, 4, 14, 'a:0:{}', 1, 1, 1),
(17, 17, 4, 15, 'a:0:{}', 1, 1, 0),
(18, 18, 4, 16, 'a:0:{}', 0, 1, 0),
(19, 19, 4, 20, 'a:0:{}', 0, 0, 1),
(20, 20, 5, 18, 'a:0:{}', 0, 1, 0),
(21, 21, 5, 14, 'a:1:{s:3:\"max\";i:50;}', 0, 1, 1),
(22, 22, 5, 15, 'a:1:{s:3:\"max\";i:50;}', 1, 1, 0),
(23, 23, 5, 20, 'a:0:{}', 0, 0, 1),
(24, 24, 5, 21, 'a:0:{}', 0, 0, 0),
(25, 25, 6, 14, 'a:0:{}', 0, 1, 0),
(26, 26, 6, 18, 'a:0:{}', 0, 1, 0),
(27, 27, 6, 17, 'a:0:{}', 0, 1, 0),
(28, 28, 6, 23, 'a:0:{}', 0, 1, 0),
(29, 29, 6, 27, 'a:0:{}', 0, 1, 0),
(30, 30, 6, 26, 'a:0:{}', 0, 1, 0),
(31, 31, 6, 19, 'a:0:{}', 0, 0, 0),
(32, 32, 6, 22, 'a:0:{}', 0, 0, 0),
(33, 33, 6, 25, 'a:0:{}', 0, 0, 0),
(34, 34, 6, 24, 'a:0:{}', 0, 0, 0),
(35, 35, 7, 28, 'a:0:{}', 1, 1, 1),
(36, 36, 7, 32, 'a:0:{}', 1, 1, 0),
(37, 37, 7, 30, 'a:0:{}', 0, 0, 1),
(38, 38, 8, 33, 'a:0:{}', 0, 1, 0),
(39, 39, 8, 36, 'a:0:{}', 0, 1, 0),
(40, 40, 8, 31, 'a:0:{}', 0, 1, 0),
(41, 41, 8, 37, 'a:0:{}', 0, 1, 0),
(42, 42, 8, 29, 'a:0:{}', 0, 0, 0),
(43, 43, 8, 34, 'a:0:{}', 0, 0, 0),
(44, 44, 8, 35, 'a:0:{}', 0, 0, 0),
(45, 45, 9, 38, 'a:0:{}', 0, 1, 0),
(46, 46, 9, 39, 'a:0:{}', 0, 1, 1),
(47, 47, 9, 40, 'a:0:{}', 0, 1, 0),
(48, 48, 9, 42, 'a:0:{}', 0, 1, 0),
(49, 49, 9, 52, 'a:0:{}', 0, 1, 0),
(50, 50, 9, 56, 'a:0:{}', 0, 0, 0),
(51, 51, 9, 50, 'a:0:{}', 0, 0, 0),
(52, 52, 9, 54, 'a:0:{}', 0, 0, 0),
(53, 53, 9, 43, 'a:0:{}', 0, 0, 0),
(54, 54, 9, 55, 'a:0:{}', 0, 0, 0),
(55, 55, 9, 44, 'a:0:{}', 0, 0, 0),
(56, 56, 9, 45, 'a:0:{}', 0, 0, 1),
(57, 57, 9, 46, 'a:0:{}', 0, 0, 1),
(58, 58, 9, 47, 'a:0:{}', 0, 0, 1),
(59, 59, 9, 51, 'a:0:{}', 0, 0, 0),
(60, 60, 9, 49, 'a:0:{}', 0, 0, 0),
(61, 61, 10, 57, 'a:1:{s:3:\"max\";i:50;}', 1, 1, 1),
(62, 62, 10, 40, 'a:3:{s:7:\"slugify\";s:4:\"name\";s:4:\"type\";s:1:\"_\";s:3:\"max\";i:50;}', 1, 1, 0),
(63, 63, 10, 58, 'a:0:{}', 0, 0, 1),
(64, 64, 10, 51, 'a:0:{}', 0, 1, 0),
(65, 65, 10, 48, 'a:0:{}', 0, 1, 0),
(66, 66, 10, 53, 'a:0:{}', 0, 1, 0),
(67, 67, 11, 60, 'a:0:{}', 1, 1, 1),
(68, 68, 11, 62, 'a:1:{s:7:\"slugify\";s:4:\"name\";}', 1, 1, 0),
(69, 69, 11, 67, 'a:0:{}', 0, 0, 1),
(70, 70, 12, 59, 'a:0:{}', 1, 1, 0),
(71, 71, 12, 61, 'a:0:{}', 0, 1, 1),
(72, 72, 12, 66, 'a:0:{}', 0, 0, 1),
(73, 73, 12, 62, 'a:0:{}', 1, 1, 0),
(74, 74, 12, 64, 'a:0:{}', 0, 1, 0),
(75, 75, 12, 68, 'a:0:{}', 0, 1, 0),
(76, 76, 12, 70, 'a:0:{}', 0, 1, 0),
(77, 77, 12, 69, 'a:0:{}', 0, 1, 0),
(78, 78, 12, 75, 'a:0:{}', 0, 0, 1),
(79, 79, 12, 76, 'a:0:{}', 0, 0, 1),
(80, 80, 12, 77, 'a:0:{}', 0, 0, 1),
(81, 81, 12, 72, 'a:0:{}', 0, 0, 0),
(82, 82, 12, 74, 'a:0:{}', 0, 0, 0),
(83, 83, 12, 73, 'a:0:{}', 0, 0, 0),
(84, 84, 12, 65, 'a:0:{}', 0, 0, 0),
(85, 85, 13, 60, 'a:1:{s:3:\"max\";i:50;}', 1, 1, 1),
(86, 86, 13, 62, 'a:3:{s:7:\"slugify\";s:4:\"name\";s:4:\"type\";s:1:\"_\";s:3:\"max\";i:50;}', 1, 1, 0),
(87, 87, 13, 71, 'a:0:{}', 0, 1, 0),
(88, 88, 13, 79, 'a:0:{}', 0, 1, 0),
(89, 89, 13, 67, 'a:0:{}', 0, 0, 1),
(90, 90, 14, 80, 'a:0:{}', 0, 1, 0),
(91, 91, 14, 81, 'a:0:{}', 0, 1, 0),
(92, 92, 14, 82, 'a:0:{}', 0, 0, 0),
(93, 93, 15, 83, 'a:0:{}', 1, 1, 0),
(94, 94, 15, 84, 'a:0:{}', 0, 1, 0),
(95, 95, 15, 85, 'a:0:{}', 0, 1, 0),
(96, 96, 15, 86, 'a:0:{}', 0, 0, 0),
(97, 97, 16, 87, 'a:0:{}', 1, 1, 0),
(98, 98, 16, 88, 'a:0:{}', 0, 0, 0),
(99, 99, 17, 89, 'a:0:{}', 1, 1, 0),
(100, 100, 17, 90, 'a:0:{}', 1, 1, 0),
(101, 101, 17, 91, 'a:0:{}', 0, 1, 0),
(102, 102, 17, 109, 'a:0:{}', 0, 1, 0),
(103, 103, 17, 97, 'a:0:{}', 0, 1, 0),
(104, 104, 17, 98, 'a:0:{}', 0, 0, 0),
(105, 105, 17, 99, 'a:0:{}', 0, 0, 0),
(106, 106, 17, 106, 'a:0:{}', 0, 0, 0),
(107, 107, 17, 107, 'a:0:{}', 0, 0, 0),
(108, 108, 17, 96, 'a:0:{}', 0, 0, 0),
(109, 109, 17, 94, 'a:0:{}', 0, 0, 0),
(110, 110, 17, 92, 'a:0:{}', 0, 0, 0),
(111, 111, 17, 104, 'a:0:{}', 0, 0, 0),
(112, 112, 17, 102, 'a:0:{}', 0, 0, 0),
(113, 113, 17, 95, 'a:0:{}', 0, 0, 0),
(114, 114, 17, 93, 'a:0:{}', 0, 0, 0),
(115, 115, 18, 100, 'a:0:{}', 0, 1, 1),
(116, 116, 18, 108, 'a:0:{}', 1, 1, 0),
(117, 117, 18, 101, 'a:0:{}', 0, 0, 1),
(118, 118, 18, 96, 'a:0:{}', 0, 0, 0),
(119, 119, 19, 110, 'a:0:{}', 0, 0, 1),
(120, 120, 19, 111, 'a:0:{}', 0, 1, 0),
(121, 121, 19, 112, 'a:0:{}', 0, 0, 1),
(122, 122, 20, 113, 'a:0:{}', 0, 1, 1),
(123, 123, 20, 114, 'a:0:{}', 0, 1, 0),
(124, 124, 20, 115, 'a:0:{}', 0, 0, 1),
(125, 125, 23, 41, 'a:0:{}', 0, 0, 1),
(126, 126, 24, 63, 'a:0:{}', 0, 0, 1),
(127, 2, 26, 117, 'a:1:{i:0;s:6:\"a:0:{}\";}', 0, 1, 0),
(128, 1, 26, 41, 'a:1:{i:0;s:6:\"a:0:{}\";}', 0, 1, 1),
(133, 129, 26, 122, 'a:1:{i:0;s:6:\"a:0:{}\";}', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `interdril_streams_assignments_translations`
--

CREATE TABLE `interdril_streams_assignments_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `assignment_id` int(11) NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `warning` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `placeholder` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instructions` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `interdril_streams_assignments_translations`
--

INSERT INTO `interdril_streams_assignments_translations` (`id`, `assignment_id`, `locale`, `label`, `warning`, `placeholder`, `instructions`) VALUES
(1, 1, 'en', 'anomaly.module.configuration::field.scope.label.configuration', 'anomaly.module.configuration::field.scope.warning.configuration', 'anomaly.module.configuration::field.scope.placeholder.configuration', 'anomaly.module.configuration::field.scope.instructions.configuration'),
(2, 2, 'en', 'anomaly.module.configuration::field.key.label.configuration', 'anomaly.module.configuration::field.key.warning.configuration', 'anomaly.module.configuration::field.key.placeholder.configuration', 'anomaly.module.configuration::field.key.instructions.configuration'),
(3, 3, 'en', 'anomaly.module.configuration::field.value.label.configuration', 'anomaly.module.configuration::field.value.warning.configuration', 'anomaly.module.configuration::field.value.placeholder.configuration', 'anomaly.module.configuration::field.value.instructions.configuration'),
(4, 4, 'en', 'anomaly.module.dashboard::field.name.label.dashboards', 'anomaly.module.dashboard::field.name.warning.dashboards', 'anomaly.module.dashboard::field.name.placeholder.dashboards', 'anomaly.module.dashboard::field.name.instructions.dashboards'),
(5, 5, 'en', 'anomaly.module.dashboard::field.slug.label.dashboards', 'anomaly.module.dashboard::field.slug.warning.dashboards', 'anomaly.module.dashboard::field.slug.placeholder.dashboards', 'anomaly.module.dashboard::field.slug.instructions.dashboards'),
(6, 6, 'en', 'anomaly.module.dashboard::field.description.label.dashboards', 'anomaly.module.dashboard::field.description.warning.dashboards', 'anomaly.module.dashboard::field.description.placeholder.dashboards', 'anomaly.module.dashboard::field.description.instructions.dashboards'),
(7, 7, 'en', 'anomaly.module.dashboard::field.layout.label.dashboards', 'anomaly.module.dashboard::field.layout.warning.dashboards', 'anomaly.module.dashboard::field.layout.placeholder.dashboards', 'anomaly.module.dashboard::field.layout.instructions.dashboards'),
(8, 8, 'en', 'anomaly.module.dashboard::field.allowed_roles.label.dashboards', 'anomaly.module.dashboard::field.allowed_roles.warning.dashboards', 'anomaly.module.dashboard::field.allowed_roles.placeholder.dashboards', 'anomaly.module.dashboard::field.allowed_roles.instructions.dashboards'),
(9, 9, 'en', 'anomaly.module.dashboard::field.title.label.widgets', 'anomaly.module.dashboard::field.title.warning.widgets', 'anomaly.module.dashboard::field.title.placeholder.widgets', 'anomaly.module.dashboard::field.title.instructions.widgets'),
(10, 10, 'en', 'anomaly.module.dashboard::field.description.label.widgets', 'anomaly.module.dashboard::field.description.warning.widgets', 'anomaly.module.dashboard::field.description.placeholder.widgets', 'anomaly.module.dashboard::field.description.instructions.widgets'),
(11, 11, 'en', 'anomaly.module.dashboard::field.extension.label.widgets', 'anomaly.module.dashboard::field.extension.warning.widgets', 'anomaly.module.dashboard::field.extension.placeholder.widgets', 'anomaly.module.dashboard::field.extension.instructions.widgets'),
(12, 12, 'en', 'anomaly.module.dashboard::field.column.label.widgets', 'anomaly.module.dashboard::field.column.warning.widgets', 'anomaly.module.dashboard::field.column.placeholder.widgets', 'anomaly.module.dashboard::field.column.instructions.widgets'),
(13, 13, 'en', 'anomaly.module.dashboard::field.dashboard.label.widgets', 'anomaly.module.dashboard::field.dashboard.warning.widgets', 'anomaly.module.dashboard::field.dashboard.placeholder.widgets', 'anomaly.module.dashboard::field.dashboard.instructions.widgets'),
(14, 14, 'en', 'anomaly.module.dashboard::field.allowed_roles.label.widgets', 'anomaly.module.dashboard::field.allowed_roles.warning.widgets', 'anomaly.module.dashboard::field.allowed_roles.placeholder.widgets', 'anomaly.module.dashboard::field.allowed_roles.instructions.widgets'),
(15, 15, 'en', 'anomaly.module.dashboard::field.pinned.label.widgets', 'anomaly.module.dashboard::field.pinned.warning.widgets', 'anomaly.module.dashboard::field.pinned.placeholder.widgets', 'anomaly.module.dashboard::field.pinned.instructions.widgets'),
(16, 16, 'en', 'anomaly.module.files::field.name.label.disks', 'anomaly.module.files::field.name.warning.disks', 'anomaly.module.files::field.name.placeholder.disks', 'anomaly.module.files::field.name.instructions.disks'),
(17, 17, 'en', 'anomaly.module.files::field.slug.label.disks', 'anomaly.module.files::field.slug.warning.disks', 'anomaly.module.files::field.slug.placeholder.disks', 'anomaly.module.files::field.slug.instructions.disks'),
(18, 18, 'en', 'anomaly.module.files::field.adapter.label.disks', 'anomaly.module.files::field.adapter.warning.disks', 'anomaly.module.files::field.adapter.placeholder.disks', 'anomaly.module.files::field.adapter.instructions.disks'),
(19, 19, 'en', 'anomaly.module.files::field.description.label.disks', 'anomaly.module.files::field.description.warning.disks', 'anomaly.module.files::field.description.placeholder.disks', 'anomaly.module.files::field.description.instructions.disks'),
(20, 20, 'en', 'anomaly.module.files::field.disk.label.folders', 'anomaly.module.files::field.disk.warning.folders', 'anomaly.module.files::field.disk.placeholder.folders', 'anomaly.module.files::field.disk.instructions.folders'),
(21, 21, 'en', 'anomaly.module.files::field.name.label.folders', 'anomaly.module.files::field.name.warning.folders', 'anomaly.module.files::field.name.placeholder.folders', 'anomaly.module.files::field.name.instructions.folders'),
(22, 22, 'en', 'anomaly.module.files::field.slug.label.folders', 'anomaly.module.files::field.slug.warning.folders', 'anomaly.module.files::field.slug.placeholder.folders', 'anomaly.module.files::field.slug.instructions.folders'),
(23, 23, 'en', 'anomaly.module.files::field.description.label.folders', 'anomaly.module.files::field.description.warning.folders', 'anomaly.module.files::field.description.placeholder.folders', 'anomaly.module.files::field.description.instructions.folders'),
(24, 24, 'en', 'anomaly.module.files::field.allowed_types.label.folders', 'anomaly.module.files::field.allowed_types.warning.folders', 'anomaly.module.files::field.allowed_types.placeholder.folders', 'anomaly.module.files::field.allowed_types.instructions.folders'),
(25, 25, 'en', 'anomaly.module.files::field.name.label.files', 'anomaly.module.files::field.name.warning.files', 'anomaly.module.files::field.name.placeholder.files', 'anomaly.module.files::field.name.instructions.files'),
(26, 26, 'en', 'anomaly.module.files::field.disk.label.files', 'anomaly.module.files::field.disk.warning.files', 'anomaly.module.files::field.disk.placeholder.files', 'anomaly.module.files::field.disk.instructions.files'),
(27, 27, 'en', 'anomaly.module.files::field.folder.label.files', 'anomaly.module.files::field.folder.warning.files', 'anomaly.module.files::field.folder.placeholder.files', 'anomaly.module.files::field.folder.instructions.files'),
(28, 28, 'en', 'anomaly.module.files::field.extension.label.files', 'anomaly.module.files::field.extension.warning.files', 'anomaly.module.files::field.extension.placeholder.files', 'anomaly.module.files::field.extension.instructions.files'),
(29, 29, 'en', 'anomaly.module.files::field.size.label.files', 'anomaly.module.files::field.size.warning.files', 'anomaly.module.files::field.size.placeholder.files', 'anomaly.module.files::field.size.instructions.files'),
(30, 30, 'en', 'anomaly.module.files::field.mime_type.label.files', 'anomaly.module.files::field.mime_type.warning.files', 'anomaly.module.files::field.mime_type.placeholder.files', 'anomaly.module.files::field.mime_type.instructions.files'),
(31, 31, 'en', 'anomaly.module.files::field.entry.label.files', 'anomaly.module.files::field.entry.warning.files', 'anomaly.module.files::field.entry.placeholder.files', 'anomaly.module.files::field.entry.instructions.files'),
(32, 32, 'en', 'anomaly.module.files::field.keywords.label.files', 'anomaly.module.files::field.keywords.warning.files', 'anomaly.module.files::field.keywords.placeholder.files', 'anomaly.module.files::field.keywords.instructions.files'),
(33, 33, 'en', 'anomaly.module.files::field.height.label.files', 'anomaly.module.files::field.height.warning.files', 'anomaly.module.files::field.height.placeholder.files', 'anomaly.module.files::field.height.instructions.files'),
(34, 34, 'en', 'anomaly.module.files::field.width.label.files', 'anomaly.module.files::field.width.warning.files', 'anomaly.module.files::field.width.placeholder.files', 'anomaly.module.files::field.width.instructions.files'),
(35, 35, 'en', 'anomaly.module.navigation::field.name.label.menus', 'anomaly.module.navigation::field.name.warning.menus', 'anomaly.module.navigation::field.name.placeholder.menus', 'anomaly.module.navigation::field.name.instructions.menus'),
(36, 36, 'en', 'anomaly.module.navigation::field.slug.label.menus', 'anomaly.module.navigation::field.slug.warning.menus', 'anomaly.module.navigation::field.slug.placeholder.menus', 'anomaly.module.navigation::field.slug.instructions.menus'),
(37, 37, 'en', 'anomaly.module.navigation::field.description.label.menus', 'anomaly.module.navigation::field.description.warning.menus', 'anomaly.module.navigation::field.description.placeholder.menus', 'anomaly.module.navigation::field.description.instructions.menus'),
(38, 38, 'en', 'anomaly.module.navigation::field.menu.label.links', 'anomaly.module.navigation::field.menu.warning.links', 'anomaly.module.navigation::field.menu.placeholder.links', 'anomaly.module.navigation::field.menu.instructions.links'),
(39, 39, 'en', 'anomaly.module.navigation::field.type.label.links', 'anomaly.module.navigation::field.type.warning.links', 'anomaly.module.navigation::field.type.placeholder.links', 'anomaly.module.navigation::field.type.instructions.links'),
(40, 40, 'en', 'anomaly.module.navigation::field.entry.label.links', 'anomaly.module.navigation::field.entry.warning.links', 'anomaly.module.navigation::field.entry.placeholder.links', 'anomaly.module.navigation::field.entry.instructions.links'),
(41, 41, 'en', 'anomaly.module.navigation::field.target.label.links', 'anomaly.module.navigation::field.target.warning.links', 'anomaly.module.navigation::field.target.placeholder.links', 'anomaly.module.navigation::field.target.instructions.links'),
(42, 42, 'en', 'anomaly.module.navigation::field.class.label.links', 'anomaly.module.navigation::field.class.warning.links', 'anomaly.module.navigation::field.class.placeholder.links', 'anomaly.module.navigation::field.class.instructions.links'),
(43, 43, 'en', 'anomaly.module.navigation::field.parent.label.links', 'anomaly.module.navigation::field.parent.warning.links', 'anomaly.module.navigation::field.parent.placeholder.links', 'anomaly.module.navigation::field.parent.instructions.links'),
(44, 44, 'en', 'anomaly.module.navigation::field.allowed_roles.label.links', 'anomaly.module.navigation::field.allowed_roles.warning.links', 'anomaly.module.navigation::field.allowed_roles.placeholder.links', 'anomaly.module.navigation::field.allowed_roles.instructions.links'),
(45, 45, 'en', 'anomaly.module.pages::field.str_id.label.pages', 'anomaly.module.pages::field.str_id.warning.pages', 'anomaly.module.pages::field.str_id.placeholder.pages', 'anomaly.module.pages::field.str_id.instructions.pages'),
(46, 46, 'en', 'anomaly.module.pages::field.title.label.pages', 'anomaly.module.pages::field.title.warning.pages', 'anomaly.module.pages::field.title.placeholder.pages', 'anomaly.module.pages::field.title.instructions.pages'),
(47, 47, 'en', 'anomaly.module.pages::field.slug.label.pages', 'anomaly.module.pages::field.slug.warning.pages', 'anomaly.module.pages::field.slug.placeholder.pages', 'anomaly.module.pages::field.slug.instructions.pages'),
(48, 48, 'en', 'anomaly.module.pages::field.path.label.pages', 'anomaly.module.pages::field.path.warning.pages', 'anomaly.module.pages::field.path.placeholder.pages', 'anomaly.module.pages::field.path.instructions.pages'),
(49, 49, 'en', 'anomaly.module.pages::field.type.label.pages', 'anomaly.module.pages::field.type.warning.pages', 'anomaly.module.pages::field.type.placeholder.pages', 'anomaly.module.pages::field.type.instructions.pages'),
(50, 50, 'en', 'anomaly.module.pages::field.entry.label.pages', 'anomaly.module.pages::field.entry.warning.pages', 'anomaly.module.pages::field.entry.placeholder.pages', 'anomaly.module.pages::field.entry.instructions.pages'),
(51, 51, 'en', 'anomaly.module.pages::field.parent.label.pages', 'anomaly.module.pages::field.parent.warning.pages', 'anomaly.module.pages::field.parent.placeholder.pages', 'anomaly.module.pages::field.parent.instructions.pages'),
(52, 52, 'en', 'anomaly.module.pages::field.visible.label.pages', 'anomaly.module.pages::field.visible.warning.pages', 'anomaly.module.pages::field.visible.placeholder.pages', 'anomaly.module.pages::field.visible.instructions.pages'),
(53, 53, 'en', 'anomaly.module.pages::field.enabled.label.pages', 'anomaly.module.pages::field.enabled.warning.pages', 'anomaly.module.pages::field.enabled.placeholder.pages', 'anomaly.module.pages::field.enabled.instructions.pages'),
(54, 54, 'en', 'anomaly.module.pages::field.exact.label.pages', 'anomaly.module.pages::field.exact.warning.pages', 'anomaly.module.pages::field.exact.placeholder.pages', 'anomaly.module.pages::field.exact.instructions.pages'),
(55, 55, 'en', 'anomaly.module.pages::field.home.label.pages', 'anomaly.module.pages::field.home.warning.pages', 'anomaly.module.pages::field.home.placeholder.pages', 'anomaly.module.pages::field.home.instructions.pages'),
(56, 56, 'en', 'anomaly.module.pages::field.meta_title.label.pages', 'anomaly.module.pages::field.meta_title.warning.pages', 'anomaly.module.pages::field.meta_title.placeholder.pages', 'anomaly.module.pages::field.meta_title.instructions.pages'),
(57, 57, 'en', 'anomaly.module.pages::field.meta_description.label.pages', 'anomaly.module.pages::field.meta_description.warning.pages', 'anomaly.module.pages::field.meta_description.placeholder.pages', 'anomaly.module.pages::field.meta_description.instructions.pages'),
(58, 58, 'en', 'anomaly.module.pages::field.meta_keywords.label.pages', 'anomaly.module.pages::field.meta_keywords.warning.pages', 'anomaly.module.pages::field.meta_keywords.placeholder.pages', 'anomaly.module.pages::field.meta_keywords.instructions.pages'),
(59, 59, 'en', 'anomaly.module.pages::field.theme_layout.label.pages', 'anomaly.module.pages::field.theme_layout.warning.pages', 'anomaly.module.pages::field.theme_layout.placeholder.pages', 'anomaly.module.pages::field.theme_layout.instructions.pages'),
(60, 60, 'en', 'anomaly.module.pages::field.allowed_roles.label.pages', 'anomaly.module.pages::field.allowed_roles.warning.pages', 'anomaly.module.pages::field.allowed_roles.placeholder.pages', 'anomaly.module.pages::field.allowed_roles.instructions.pages'),
(61, 61, 'en', 'anomaly.module.pages::field.name.label.types', 'anomaly.module.pages::field.name.warning.types', 'anomaly.module.pages::field.name.placeholder.types', 'anomaly.module.pages::field.name.instructions.types'),
(62, 62, 'en', 'anomaly.module.pages::field.slug.label.types', 'anomaly.module.pages::field.slug.warning.types', 'anomaly.module.pages::field.slug.placeholder.types', 'anomaly.module.pages::field.slug.instructions.types'),
(63, 63, 'en', 'anomaly.module.pages::field.description.label.types', 'anomaly.module.pages::field.description.warning.types', 'anomaly.module.pages::field.description.placeholder.types', 'anomaly.module.pages::field.description.instructions.types'),
(64, 64, 'en', 'anomaly.module.pages::field.theme_layout.label.types', 'anomaly.module.pages::field.theme_layout.warning.types', 'anomaly.module.pages::field.theme_layout.placeholder.types', 'anomaly.module.pages::field.theme_layout.instructions.types'),
(65, 65, 'en', 'anomaly.module.pages::field.layout.label.types', 'anomaly.module.pages::field.layout.warning.types', 'anomaly.module.pages::field.layout.placeholder.types', 'anomaly.module.pages::field.layout.instructions.types'),
(66, 66, 'en', 'anomaly.module.pages::field.handler.label.types', 'anomaly.module.pages::field.handler.warning.types', 'anomaly.module.pages::field.handler.placeholder.types', 'anomaly.module.pages::field.handler.instructions.types'),
(67, 67, 'en', 'anomaly.module.posts::field.name.label.categories', 'anomaly.module.posts::field.name.warning.categories', 'anomaly.module.posts::field.name.placeholder.categories', 'anomaly.module.posts::field.name.instructions.categories'),
(68, 68, 'en', 'anomaly.module.posts::field.slug.label.categories', 'anomaly.module.posts::field.slug.warning.categories', 'anomaly.module.posts::field.slug.placeholder.categories', 'anomaly.module.posts::field.slug.instructions.categories'),
(69, 69, 'en', 'anomaly.module.posts::field.description.label.categories', 'anomaly.module.posts::field.description.warning.categories', 'anomaly.module.posts::field.description.placeholder.categories', 'anomaly.module.posts::field.description.instructions.categories'),
(70, 70, 'en', 'anomaly.module.posts::field.str_id.label.posts', 'anomaly.module.posts::field.str_id.warning.posts', 'anomaly.module.posts::field.str_id.placeholder.posts', 'anomaly.module.posts::field.str_id.instructions.posts'),
(71, 71, 'en', 'anomaly.module.posts::field.title.label.posts', 'anomaly.module.posts::field.title.warning.posts', 'anomaly.module.posts::field.title.placeholder.posts', 'anomaly.module.posts::field.title.instructions.posts'),
(72, 72, 'en', 'anomaly.module.posts::field.summary.label.posts', 'anomaly.module.posts::field.summary.warning.posts', 'anomaly.module.posts::field.summary.placeholder.posts', 'anomaly.module.posts::field.summary.instructions.posts'),
(73, 73, 'en', 'anomaly.module.posts::field.slug.label.posts', 'anomaly.module.posts::field.slug.warning.posts', 'anomaly.module.posts::field.slug.placeholder.posts', 'anomaly.module.posts::field.slug.instructions.posts'),
(74, 74, 'en', 'anomaly.module.posts::field.type.label.posts', 'anomaly.module.posts::field.type.warning.posts', 'anomaly.module.posts::field.type.placeholder.posts', 'anomaly.module.posts::field.type.instructions.posts'),
(75, 75, 'en', 'anomaly.module.posts::field.publish_at.label.posts', 'anomaly.module.posts::field.publish_at.warning.posts', 'anomaly.module.posts::field.publish_at.placeholder.posts', 'anomaly.module.posts::field.publish_at.instructions.posts'),
(76, 76, 'en', 'anomaly.module.posts::field.author.label.posts', 'anomaly.module.posts::field.author.warning.posts', 'anomaly.module.posts::field.author.placeholder.posts', 'anomaly.module.posts::field.author.instructions.posts'),
(77, 77, 'en', 'anomaly.module.posts::field.entry.label.posts', 'anomaly.module.posts::field.entry.warning.posts', 'anomaly.module.posts::field.entry.placeholder.posts', 'anomaly.module.posts::field.entry.instructions.posts'),
(78, 78, 'en', 'anomaly.module.posts::field.meta_title.label.posts', 'anomaly.module.posts::field.meta_title.warning.posts', 'anomaly.module.posts::field.meta_title.placeholder.posts', 'anomaly.module.posts::field.meta_title.instructions.posts'),
(79, 79, 'en', 'anomaly.module.posts::field.meta_description.label.posts', 'anomaly.module.posts::field.meta_description.warning.posts', 'anomaly.module.posts::field.meta_description.placeholder.posts', 'anomaly.module.posts::field.meta_description.instructions.posts'),
(80, 80, 'en', 'anomaly.module.posts::field.meta_keywords.label.posts', 'anomaly.module.posts::field.meta_keywords.warning.posts', 'anomaly.module.posts::field.meta_keywords.placeholder.posts', 'anomaly.module.posts::field.meta_keywords.instructions.posts'),
(81, 81, 'en', 'anomaly.module.posts::field.category.label.posts', 'anomaly.module.posts::field.category.warning.posts', 'anomaly.module.posts::field.category.placeholder.posts', 'anomaly.module.posts::field.category.instructions.posts'),
(82, 82, 'en', 'anomaly.module.posts::field.featured.label.posts', 'anomaly.module.posts::field.featured.warning.posts', 'anomaly.module.posts::field.featured.placeholder.posts', 'anomaly.module.posts::field.featured.instructions.posts'),
(83, 83, 'en', 'anomaly.module.posts::field.enabled.label.posts', 'anomaly.module.posts::field.enabled.warning.posts', 'anomaly.module.posts::field.enabled.placeholder.posts', 'anomaly.module.posts::field.enabled.instructions.posts'),
(84, 84, 'en', 'anomaly.module.posts::field.tags.label.posts', 'anomaly.module.posts::field.tags.warning.posts', 'anomaly.module.posts::field.tags.placeholder.posts', 'anomaly.module.posts::field.tags.instructions.posts'),
(85, 85, 'en', 'anomaly.module.posts::field.name.label.types', 'anomaly.module.posts::field.name.warning.types', 'anomaly.module.posts::field.name.placeholder.types', 'anomaly.module.posts::field.name.instructions.types'),
(86, 86, 'en', 'anomaly.module.posts::field.slug.label.types', 'anomaly.module.posts::field.slug.warning.types', 'anomaly.module.posts::field.slug.placeholder.types', 'anomaly.module.posts::field.slug.instructions.types'),
(87, 87, 'en', 'anomaly.module.posts::field.layout.label.types', 'anomaly.module.posts::field.layout.warning.types', 'anomaly.module.posts::field.layout.placeholder.types', 'anomaly.module.posts::field.layout.instructions.types'),
(88, 88, 'en', 'anomaly.module.posts::field.theme_layout.label.types', 'anomaly.module.posts::field.theme_layout.warning.types', 'anomaly.module.posts::field.theme_layout.placeholder.types', 'anomaly.module.posts::field.theme_layout.instructions.types'),
(89, 89, 'en', 'anomaly.module.posts::field.description.label.types', 'anomaly.module.posts::field.description.warning.types', 'anomaly.module.posts::field.description.placeholder.types', 'anomaly.module.posts::field.description.instructions.types'),
(90, 90, 'en', 'anomaly.module.preferences::field.user.label.preferences', 'anomaly.module.preferences::field.user.warning.preferences', 'anomaly.module.preferences::field.user.placeholder.preferences', 'anomaly.module.preferences::field.user.instructions.preferences'),
(91, 91, 'en', 'anomaly.module.preferences::field.key.label.preferences', 'anomaly.module.preferences::field.key.warning.preferences', 'anomaly.module.preferences::field.key.placeholder.preferences', 'anomaly.module.preferences::field.key.instructions.preferences'),
(92, 92, 'en', 'anomaly.module.preferences::field.value.label.preferences', 'anomaly.module.preferences::field.value.warning.preferences', 'anomaly.module.preferences::field.value.placeholder.preferences', 'anomaly.module.preferences::field.value.instructions.preferences'),
(93, 93, 'en', 'anomaly.module.redirects::field.from.label.redirects', 'anomaly.module.redirects::field.from.warning.redirects', 'anomaly.module.redirects::field.from.placeholder.redirects', 'anomaly.module.redirects::field.from.instructions.redirects'),
(94, 94, 'en', 'anomaly.module.redirects::field.to.label.redirects', 'anomaly.module.redirects::field.to.warning.redirects', 'anomaly.module.redirects::field.to.placeholder.redirects', 'anomaly.module.redirects::field.to.instructions.redirects'),
(95, 95, 'en', 'anomaly.module.redirects::field.status.label.redirects', 'anomaly.module.redirects::field.status.warning.redirects', 'anomaly.module.redirects::field.status.placeholder.redirects', 'anomaly.module.redirects::field.status.instructions.redirects'),
(96, 96, 'en', 'anomaly.module.redirects::field.secure.label.redirects', 'anomaly.module.redirects::field.secure.warning.redirects', 'anomaly.module.redirects::field.secure.placeholder.redirects', 'anomaly.module.redirects::field.secure.instructions.redirects'),
(97, 97, 'en', 'anomaly.module.settings::field.key.label.settings', 'anomaly.module.settings::field.key.warning.settings', 'anomaly.module.settings::field.key.placeholder.settings', 'anomaly.module.settings::field.key.instructions.settings'),
(98, 98, 'en', 'anomaly.module.settings::field.value.label.settings', 'anomaly.module.settings::field.value.warning.settings', 'anomaly.module.settings::field.value.placeholder.settings', 'anomaly.module.settings::field.value.instructions.settings'),
(99, 99, 'en', 'anomaly.module.users::field.email.label.users', 'anomaly.module.users::field.email.warning.users', 'anomaly.module.users::field.email.placeholder.users', 'anomaly.module.users::field.email.instructions.users'),
(100, 100, 'en', 'anomaly.module.users::field.username.label.users', 'anomaly.module.users::field.username.warning.users', 'anomaly.module.users::field.username.placeholder.users', 'anomaly.module.users::field.username.instructions.users'),
(101, 101, 'en', 'anomaly.module.users::field.password.label.users', 'anomaly.module.users::field.password.warning.users', 'anomaly.module.users::field.password.placeholder.users', 'anomaly.module.users::field.password.instructions.users'),
(102, 102, 'en', 'anomaly.module.users::field.roles.label.users', 'anomaly.module.users::field.roles.warning.users', 'anomaly.module.users::field.roles.placeholder.users', 'anomaly.module.users::field.roles.instructions.users'),
(103, 103, 'en', 'anomaly.module.users::field.display_name.label.users', 'anomaly.module.users::field.display_name.warning.users', 'anomaly.module.users::field.display_name.placeholder.users', 'anomaly.module.users::field.display_name.instructions.users'),
(104, 104, 'en', 'anomaly.module.users::field.first_name.label.users', 'anomaly.module.users::field.first_name.warning.users', 'anomaly.module.users::field.first_name.placeholder.users', 'anomaly.module.users::field.first_name.instructions.users'),
(105, 105, 'en', 'anomaly.module.users::field.last_name.label.users', 'anomaly.module.users::field.last_name.warning.users', 'anomaly.module.users::field.last_name.placeholder.users', 'anomaly.module.users::field.last_name.instructions.users'),
(106, 106, 'en', 'anomaly.module.users::field.activated.label.users', 'anomaly.module.users::field.activated.warning.users', 'anomaly.module.users::field.activated.placeholder.users', 'anomaly.module.users::field.activated.instructions.users'),
(107, 107, 'en', 'anomaly.module.users::field.enabled.label.users', 'anomaly.module.users::field.enabled.warning.users', 'anomaly.module.users::field.enabled.placeholder.users', 'anomaly.module.users::field.enabled.instructions.users'),
(108, 108, 'en', 'anomaly.module.users::field.permissions.label.users', 'anomaly.module.users::field.permissions.warning.users', 'anomaly.module.users::field.permissions.placeholder.users', 'anomaly.module.users::field.permissions.instructions.users'),
(109, 109, 'en', 'anomaly.module.users::field.last_login_at.label.users', 'anomaly.module.users::field.last_login_at.warning.users', 'anomaly.module.users::field.last_login_at.placeholder.users', 'anomaly.module.users::field.last_login_at.instructions.users'),
(110, 110, 'en', 'anomaly.module.users::field.remember_token.label.users', 'anomaly.module.users::field.remember_token.warning.users', 'anomaly.module.users::field.remember_token.placeholder.users', 'anomaly.module.users::field.remember_token.instructions.users'),
(111, 111, 'en', 'anomaly.module.users::field.activation_code.label.users', 'anomaly.module.users::field.activation_code.warning.users', 'anomaly.module.users::field.activation_code.placeholder.users', 'anomaly.module.users::field.activation_code.instructions.users'),
(112, 112, 'en', 'anomaly.module.users::field.reset_code.label.users', 'anomaly.module.users::field.reset_code.warning.users', 'anomaly.module.users::field.reset_code.placeholder.users', 'anomaly.module.users::field.reset_code.instructions.users'),
(113, 113, 'en', 'anomaly.module.users::field.last_activity_at.label.users', 'anomaly.module.users::field.last_activity_at.warning.users', 'anomaly.module.users::field.last_activity_at.placeholder.users', 'anomaly.module.users::field.last_activity_at.instructions.users'),
(114, 114, 'en', 'anomaly.module.users::field.ip_address.label.users', 'anomaly.module.users::field.ip_address.warning.users', 'anomaly.module.users::field.ip_address.placeholder.users', 'anomaly.module.users::field.ip_address.instructions.users'),
(115, 115, 'en', 'anomaly.module.users::field.name.label.roles', 'anomaly.module.users::field.name.warning.roles', 'anomaly.module.users::field.name.placeholder.roles', 'anomaly.module.users::field.name.instructions.roles'),
(116, 116, 'en', 'anomaly.module.users::field.slug.label.roles', 'anomaly.module.users::field.slug.warning.roles', 'anomaly.module.users::field.slug.placeholder.roles', 'anomaly.module.users::field.slug.instructions.roles'),
(117, 117, 'en', 'anomaly.module.users::field.description.label.roles', 'anomaly.module.users::field.description.warning.roles', 'anomaly.module.users::field.description.placeholder.roles', 'anomaly.module.users::field.description.instructions.roles'),
(118, 118, 'en', 'anomaly.module.users::field.permissions.label.roles', 'anomaly.module.users::field.permissions.warning.roles', 'anomaly.module.users::field.permissions.placeholder.roles', 'anomaly.module.users::field.permissions.instructions.roles'),
(119, 119, 'en', 'anomaly.extension.page_link_type::field.title.label.pages', 'anomaly.extension.page_link_type::field.title.warning.pages', 'anomaly.extension.page_link_type::field.title.placeholder.pages', 'anomaly.extension.page_link_type::field.title.instructions.pages'),
(120, 120, 'en', 'anomaly.extension.page_link_type::field.page.label.pages', 'anomaly.extension.page_link_type::field.page.warning.pages', 'anomaly.extension.page_link_type::field.page.placeholder.pages', 'anomaly.extension.page_link_type::field.page.instructions.pages'),
(121, 121, 'en', 'anomaly.extension.page_link_type::field.description.label.pages', 'anomaly.extension.page_link_type::field.description.warning.pages', 'anomaly.extension.page_link_type::field.description.placeholder.pages', 'anomaly.extension.page_link_type::field.description.instructions.pages'),
(122, 122, 'en', 'anomaly.extension.url_link_type::field.title.label.urls', 'anomaly.extension.url_link_type::field.title.warning.urls', 'anomaly.extension.url_link_type::field.title.placeholder.urls', 'anomaly.extension.url_link_type::field.title.instructions.urls'),
(123, 123, 'en', 'anomaly.extension.url_link_type::field.url.label.urls', 'anomaly.extension.url_link_type::field.url.warning.urls', 'anomaly.extension.url_link_type::field.url.placeholder.urls', 'anomaly.extension.url_link_type::field.url.instructions.urls'),
(124, 124, 'en', 'anomaly.extension.url_link_type::field.description.label.urls', 'anomaly.extension.url_link_type::field.description.warning.urls', 'anomaly.extension.url_link_type::field.description.placeholder.urls', 'anomaly.extension.url_link_type::field.description.instructions.urls'),
(125, 125, 'en', NULL, NULL, NULL, NULL),
(126, 126, 'en', NULL, NULL, NULL, NULL),
(127, 127, 'en', 'Images', 'Please Upload a Image', 'Please Upload a Image', 'Please Upload a Image'),
(128, 128, 'en', 'Content', 'Please fill a content', 'Please fill a content', 'Please fill a content'),
(133, 133, 'en', 'Image Class', 'Image Css Class', 'Image Class', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `interdril_streams_fields`
--

CREATE TABLE `interdril_streams_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `config` text COLLATE utf8_unicode_ci NOT NULL,
  `locked` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `interdril_streams_fields`
--

INSERT INTO `interdril_streams_fields` (`id`, `namespace`, `slug`, `type`, `config`, `locked`) VALUES
(1, 'configuration', 'scope', 'anomaly.field_type.text', 'a:0:{}', 1),
(2, 'configuration', 'key', 'anomaly.field_type.text', 'a:0:{}', 1),
(3, 'configuration', 'value', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(4, 'dashboard', 'name', 'anomaly.field_type.text', 'a:0:{}', 1),
(5, 'dashboard', 'slug', 'anomaly.field_type.slug', 'a:1:{s:7:\"slugify\";s:4:\"name\";}', 1),
(6, 'dashboard', 'description', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(7, 'dashboard', 'layout', 'anomaly.field_type.select', 'a:1:{s:7:\"options\";a:9:{i:24;s:48:\"anomaly.module.dashboard::field.layout.option.24\";s:5:\"12-12\";s:51:\"anomaly.module.dashboard::field.layout.option.12-12\";s:4:\"16-8\";s:50:\"anomaly.module.dashboard::field.layout.option.16-8\";s:4:\"8-16\";s:50:\"anomaly.module.dashboard::field.layout.option.8-16\";s:5:\"8-8-8\";s:51:\"anomaly.module.dashboard::field.layout.option.8-8-8\";s:6:\"6-12-6\";s:52:\"anomaly.module.dashboard::field.layout.option.6-12-6\";s:6:\"12-6-6\";s:52:\"anomaly.module.dashboard::field.layout.option.12-6-6\";s:6:\"6-6-12\";s:52:\"anomaly.module.dashboard::field.layout.option.6-6-12\";s:7:\"6-6-6-6\";s:53:\"anomaly.module.dashboard::field.layout.option.6-6-6-6\";}}', 1),
(8, 'dashboard', 'title', 'anomaly.field_type.text', 'a:0:{}', 1),
(9, 'dashboard', 'extension', 'anomaly.field_type.addon', 'a:2:{s:4:\"type\";s:9:\"extension\";s:6:\"search\";s:34:\"anomaly.module.dashboard::widget.*\";}', 1),
(10, 'dashboard', 'column', 'anomaly.field_type.integer', 'a:2:{s:3:\"min\";i:1;s:13:\"default_value\";i:1;}', 1),
(11, 'dashboard', 'pinned', 'anomaly.field_type.boolean', 'a:0:{}', 1),
(12, 'dashboard', 'dashboard', 'anomaly.field_type.relationship', 'a:1:{s:7:\"related\";s:48:\"Anomaly\\DashboardModule\\Dashboard\\DashboardModel\";}', 1),
(13, 'dashboard', 'allowed_roles', 'anomaly.field_type.multiple', 'a:1:{s:7:\"related\";s:34:\"Anomaly\\UsersModule\\Role\\RoleModel\";}', 1),
(14, 'files', 'name', 'anomaly.field_type.text', 'a:0:{}', 1),
(15, 'files', 'slug', 'anomaly.field_type.slug', 'a:1:{s:7:\"slugify\";s:4:\"name\";}', 1),
(16, 'files', 'adapter', 'anomaly.field_type.addon', 'a:2:{s:4:\"type\";s:10:\"extensions\";s:6:\"search\";s:31:\"anomaly.module.files::adapter.*\";}', 1),
(17, 'files', 'folder', 'anomaly.field_type.relationship', 'a:1:{s:7:\"related\";s:38:\"Anomaly\\FilesModule\\Folder\\FolderModel\";}', 1),
(18, 'files', 'disk', 'anomaly.field_type.relationship', 'a:1:{s:7:\"related\";s:34:\"Anomaly\\FilesModule\\Disk\\DiskModel\";}', 1),
(19, 'files', 'entry', 'anomaly.field_type.polymorphic', 'a:0:{}', 1),
(20, 'files', 'description', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(21, 'files', 'allowed_types', 'anomaly.field_type.tags', 'a:0:{}', 1),
(22, 'files', 'keywords', 'anomaly.field_type.tags', 'a:0:{}', 1),
(23, 'files', 'extension', 'anomaly.field_type.text', 'a:0:{}', 1),
(24, 'files', 'width', 'anomaly.field_type.text', 'a:0:{}', 1),
(25, 'files', 'height', 'anomaly.field_type.text', 'a:0:{}', 1),
(26, 'files', 'mime_type', 'anomaly.field_type.text', 'a:0:{}', 1),
(27, 'files', 'size', 'anomaly.field_type.integer', 'a:0:{}', 1),
(28, 'navigation', 'name', 'anomaly.field_type.text', 'a:0:{}', 1),
(29, 'navigation', 'class', 'anomaly.field_type.text', 'a:0:{}', 1),
(30, 'navigation', 'description', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(31, 'navigation', 'entry', 'anomaly.field_type.polymorphic', 'a:0:{}', 1),
(32, 'navigation', 'slug', 'anomaly.field_type.slug', 'a:1:{s:7:\"slugify\";s:4:\"name\";}', 1),
(33, 'navigation', 'menu', 'anomaly.field_type.relationship', 'a:1:{s:7:\"related\";s:39:\"Anomaly\\NavigationModule\\Menu\\MenuModel\";}', 1),
(34, 'navigation', 'parent', 'anomaly.field_type.relationship', 'a:1:{s:7:\"related\";s:39:\"Anomaly\\NavigationModule\\Link\\LinkModel\";}', 1),
(35, 'navigation', 'allowed_roles', 'anomaly.field_type.multiple', 'a:1:{s:7:\"related\";s:34:\"Anomaly\\UsersModule\\Role\\RoleModel\";}', 1),
(36, 'navigation', 'type', 'anomaly.field_type.addon', 'a:2:{s:4:\"type\";s:9:\"extension\";s:6:\"search\";s:38:\"anomaly.module.navigation::link_type.*\";}', 1),
(37, 'navigation', 'target', 'anomaly.field_type.select', 'a:2:{s:13:\"default_value\";s:5:\"_self\";s:7:\"options\";a:2:{s:5:\"_self\";s:51:\"anomaly.module.navigation::field.target.option.self\";s:6:\"_blank\";s:52:\"anomaly.module.navigation::field.target.option.blank\";}}', 1),
(38, 'pages', 'str_id', 'anomaly.field_type.text', 'a:0:{}', 1),
(39, 'pages', 'title', 'anomaly.field_type.text', 'a:0:{}', 1),
(40, 'pages', 'slug', 'anomaly.field_type.slug', 'a:2:{s:7:\"slugify\";s:5:\"title\";s:4:\"type\";s:1:\"-\";}', 1),
(41, 'pages', 'content', 'anomaly.field_type.wysiwyg', 'a:0:{}', 0),
(42, 'pages', 'path', 'anomaly.field_type.text', 'a:0:{}', 1),
(43, 'pages', 'enabled', 'anomaly.field_type.boolean', 'a:1:{s:13:\"default_value\";b:1;}', 1),
(44, 'pages', 'home', 'anomaly.field_type.boolean', 'a:1:{s:13:\"default_value\";b:0;}', 1),
(45, 'pages', 'meta_title', 'anomaly.field_type.text', 'a:0:{}', 1),
(46, 'pages', 'meta_description', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(47, 'pages', 'meta_keywords', 'anomaly.field_type.tags', 'a:0:{}', 1),
(48, 'pages', 'layout', 'anomaly.field_type.editor', 'a:2:{s:13:\"default_value\";s:25:\"<h1>{{ page.title }}</h1>\";s:4:\"mode\";s:4:\"twig\";}', 1),
(49, 'pages', 'allowed_roles', 'anomaly.field_type.multiple', 'a:1:{s:7:\"related\";s:34:\"Anomaly\\UsersModule\\Role\\RoleModel\";}', 1),
(50, 'pages', 'parent', 'anomaly.field_type.relationship', 'a:1:{s:7:\"related\";s:34:\"Anomaly\\PagesModule\\Page\\PageModel\";}', 1),
(51, 'pages', 'theme_layout', 'anomaly.field_type.select', 'a:2:{s:13:\"default_value\";s:27:\"theme::layouts/default.twig\";s:7:\"handler\";s:46:\"Anomaly\\SelectFieldType\\Handler\\Layouts@handle\";}', 1),
(52, 'pages', 'type', 'anomaly.field_type.relationship', 'a:1:{s:7:\"related\";s:34:\"Anomaly\\PagesModule\\Type\\TypeModel\";}', 1),
(53, 'pages', 'handler', 'anomaly.field_type.addon', 'a:3:{s:4:\"type\";s:9:\"extension\";s:6:\"search\";s:31:\"anomaly.module.pages::handler.*\";s:13:\"default_value\";s:38:\"anomaly.extension.default_page_handler\";}', 1),
(54, 'pages', 'visible', 'anomaly.field_type.boolean', 'a:1:{s:13:\"default_value\";b:1;}', 1),
(55, 'pages', 'exact', 'anomaly.field_type.boolean', 'a:1:{s:13:\"default_value\";b:1;}', 1),
(56, 'pages', 'entry', 'anomaly.field_type.polymorphic', 'a:0:{}', 1),
(57, 'pages', 'name', 'anomaly.field_type.text', 'a:0:{}', 1),
(58, 'pages', 'description', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(59, 'posts', 'str_id', 'anomaly.field_type.text', 'a:0:{}', 1),
(60, 'posts', 'name', 'anomaly.field_type.text', 'a:0:{}', 1),
(61, 'posts', 'title', 'anomaly.field_type.text', 'a:0:{}', 1),
(62, 'posts', 'slug', 'anomaly.field_type.slug', 'a:2:{s:7:\"slugify\";s:5:\"title\";s:4:\"type\";s:1:\"-\";}', 1),
(63, 'posts', 'content', 'anomaly.field_type.wysiwyg', 'a:0:{}', 0),
(64, 'posts', 'type', 'anomaly.field_type.relationship', 'a:1:{s:7:\"related\";s:34:\"Anomaly\\PostsModule\\Type\\TypeModel\";}', 1),
(65, 'posts', 'tags', 'anomaly.field_type.tags', 'a:0:{}', 1),
(66, 'posts', 'summary', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(67, 'posts', 'description', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(68, 'posts', 'publish_at', 'anomaly.field_type.datetime', 'a:0:{}', 1),
(69, 'posts', 'entry', 'anomaly.field_type.polymorphic', 'a:0:{}', 1),
(70, 'posts', 'author', 'anomaly.field_type.relationship', 'a:2:{s:4:\"mode\";s:6:\"lookup\";s:7:\"related\";s:34:\"Anomaly\\UsersModule\\User\\UserModel\";}', 1),
(71, 'posts', 'layout', 'anomaly.field_type.editor', 'a:2:{s:13:\"default_value\";s:22:\"{{ post.content|raw }}\";s:4:\"mode\";s:4:\"twig\";}', 1),
(72, 'posts', 'category', 'anomaly.field_type.relationship', 'a:1:{s:7:\"related\";s:42:\"Anomaly\\PostsModule\\Category\\CategoryModel\";}', 1),
(73, 'posts', 'enabled', 'anomaly.field_type.boolean', 'a:1:{s:13:\"default_value\";b:0;}', 1),
(74, 'posts', 'featured', 'anomaly.field_type.boolean', 'a:1:{s:13:\"default_value\";b:0;}', 1),
(75, 'posts', 'meta_title', 'anomaly.field_type.text', 'a:0:{}', 1),
(76, 'posts', 'meta_description', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(77, 'posts', 'meta_keywords', 'anomaly.field_type.tags', 'a:0:{}', 1),
(78, 'posts', 'ttl', 'anomaly.field_type.integer', 'a:3:{s:3:\"min\";i:0;s:4:\"step\";i:1;s:4:\"page\";i:5;}', 1),
(79, 'posts', 'theme_layout', 'anomaly.field_type.select', 'a:1:{s:7:\"handler\";s:39:\"Anomaly\\SelectFieldType\\Handler\\Layouts\";}', 1),
(80, 'preferences', 'user', 'anomaly.field_type.relationship', 'a:2:{s:4:\"mode\";s:6:\"lookup\";s:7:\"related\";s:34:\"Anomaly\\UsersModule\\User\\UserModel\";}', 1),
(81, 'preferences', 'key', 'anomaly.field_type.text', 'a:0:{}', 1),
(82, 'preferences', 'value', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(83, 'redirects', 'from', 'anomaly.field_type.text', 'a:0:{}', 1),
(84, 'redirects', 'to', 'anomaly.field_type.text', 'a:0:{}', 1),
(85, 'redirects', 'status', 'anomaly.field_type.select', 'a:2:{s:13:\"default_value\";s:3:\"301\";s:7:\"options\";a:2:{i:301;s:49:\"anomaly.module.redirects::field.status.option.301\";i:302;s:49:\"anomaly.module.redirects::field.status.option.302\";}}', 1),
(86, 'redirects', 'secure', 'anomaly.field_type.boolean', 'a:0:{}', 1),
(87, 'settings', 'key', 'anomaly.field_type.text', 'a:0:{}', 1),
(88, 'settings', 'value', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(89, 'users', 'email', 'anomaly.field_type.email', 'a:0:{}', 1),
(90, 'users', 'username', 'anomaly.field_type.slug', 'a:2:{s:4:\"type\";s:1:\"_\";s:9:\"lowercase\";b:0;}', 1),
(91, 'users', 'password', 'anomaly.field_type.text', 'a:1:{s:4:\"type\";s:8:\"password\";}', 1),
(92, 'users', 'remember_token', 'anomaly.field_type.text', 'a:0:{}', 1),
(93, 'users', 'ip_address', 'anomaly.field_type.text', 'a:0:{}', 1),
(94, 'users', 'last_login_at', 'anomaly.field_type.datetime', 'a:0:{}', 1),
(95, 'users', 'last_activity_at', 'anomaly.field_type.datetime', 'a:0:{}', 1),
(96, 'users', 'permissions', 'anomaly.field_type.checkboxes', 'a:0:{}', 1),
(97, 'users', 'display_name', 'anomaly.field_type.text', 'a:0:{}', 1),
(98, 'users', 'first_name', 'anomaly.field_type.text', 'a:0:{}', 1),
(99, 'users', 'last_name', 'anomaly.field_type.text', 'a:0:{}', 1),
(100, 'users', 'name', 'anomaly.field_type.text', 'a:0:{}', 1),
(101, 'users', 'description', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(102, 'users', 'reset_code', 'anomaly.field_type.text', 'a:0:{}', 1),
(103, 'users', 'reset_code_expires_at', 'anomaly.field_type.datetime', 'a:0:{}', 1),
(104, 'users', 'activation_code', 'anomaly.field_type.text', 'a:0:{}', 1),
(105, 'users', 'activation_code_expires_at', 'anomaly.field_type.datetime', 'a:0:{}', 1),
(106, 'users', 'activated', 'anomaly.field_type.boolean', 'a:1:{s:13:\"default_value\";b:0;}', 1),
(107, 'users', 'enabled', 'anomaly.field_type.boolean', 'a:1:{s:13:\"default_value\";b:1;}', 1),
(108, 'users', 'slug', 'anomaly.field_type.slug', 'a:1:{s:7:\"slugify\";s:4:\"name\";}', 1),
(109, 'users', 'roles', 'anomaly.field_type.multiple', 'a:1:{s:7:\"related\";s:34:\"Anomaly\\UsersModule\\Role\\RoleModel\";}', 1),
(110, 'page_link_type', 'title', 'anomaly.field_type.text', 'a:0:{}', 1),
(111, 'page_link_type', 'page', 'anomaly.field_type.relationship', 'a:2:{s:4:\"mode\";s:6:\"lookup\";s:7:\"related\";s:34:\"Anomaly\\PagesModule\\Page\\PageModel\";}', 1),
(112, 'page_link_type', 'description', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(113, 'url_link_type', 'title', 'anomaly.field_type.text', 'a:0:{}', 1),
(114, 'url_link_type', 'url', 'anomaly.field_type.text', 'a:0:{}', 1),
(115, 'url_link_type', 'description', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(116, 'files', 'data_x', 'anomaly.field_type.text', 'a:7:{s:4:\"type\";s:4:\"text\";s:4:\"mask\";N;s:3:\"min\";s:1:\"1\";s:3:\"max\";s:1:\"4\";s:12:\"show_counter\";b:0;s:9:\"suggested\";N;s:13:\"default_value\";N;}', 0),
(117, 'pages', 'images', 'anomaly.field_type.files', 'a:4:{s:7:\"folders\";N;s:3:\"min\";s:1:\"1\";s:3:\"max\";s:2:\"50\";s:4:\"mode\";s:7:\"default\";}', 0),
(122, 'pages', 'image_class', 'anomaly.field_type.text', 'a:7:{s:4:\"type\";s:4:\"text\";s:4:\"mask\";N;s:3:\"min\";s:1:\"1\";s:3:\"max\";s:3:\"100\";s:12:\"show_counter\";b:0;s:9:\"suggested\";N;s:13:\"default_value\";N;}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `interdril_streams_fields_translations`
--

CREATE TABLE `interdril_streams_fields_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `field_id` int(11) NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `placeholder` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `warning` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instructions` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `interdril_streams_fields_translations`
--

INSERT INTO `interdril_streams_fields_translations` (`id`, `field_id`, `locale`, `name`, `placeholder`, `warning`, `instructions`) VALUES
(1, 1, 'en', 'anomaly.module.configuration::field.scope.name', 'anomaly.module.configuration::field.scope.placeholder', 'anomaly.module.configuration::field.scope.warning', 'anomaly.module.configuration::field.scope.instructions'),
(2, 2, 'en', 'anomaly.module.configuration::field.key.name', 'anomaly.module.configuration::field.key.placeholder', 'anomaly.module.configuration::field.key.warning', 'anomaly.module.configuration::field.key.instructions'),
(3, 3, 'en', 'anomaly.module.configuration::field.value.name', 'anomaly.module.configuration::field.value.placeholder', 'anomaly.module.configuration::field.value.warning', 'anomaly.module.configuration::field.value.instructions'),
(4, 4, 'en', 'anomaly.module.dashboard::field.name.name', 'anomaly.module.dashboard::field.name.placeholder', 'anomaly.module.dashboard::field.name.warning', 'anomaly.module.dashboard::field.name.instructions'),
(5, 5, 'en', 'anomaly.module.dashboard::field.slug.name', 'anomaly.module.dashboard::field.slug.placeholder', 'anomaly.module.dashboard::field.slug.warning', 'anomaly.module.dashboard::field.slug.instructions'),
(6, 6, 'en', 'anomaly.module.dashboard::field.description.name', 'anomaly.module.dashboard::field.description.placeholder', 'anomaly.module.dashboard::field.description.warning', 'anomaly.module.dashboard::field.description.instructions'),
(7, 7, 'en', 'anomaly.module.dashboard::field.layout.name', 'anomaly.module.dashboard::field.layout.placeholder', 'anomaly.module.dashboard::field.layout.warning', 'anomaly.module.dashboard::field.layout.instructions'),
(8, 8, 'en', 'anomaly.module.dashboard::field.title.name', 'anomaly.module.dashboard::field.title.placeholder', 'anomaly.module.dashboard::field.title.warning', 'anomaly.module.dashboard::field.title.instructions'),
(9, 9, 'en', 'anomaly.module.dashboard::field.extension.name', 'anomaly.module.dashboard::field.extension.placeholder', 'anomaly.module.dashboard::field.extension.warning', 'anomaly.module.dashboard::field.extension.instructions'),
(10, 10, 'en', 'anomaly.module.dashboard::field.column.name', 'anomaly.module.dashboard::field.column.placeholder', 'anomaly.module.dashboard::field.column.warning', 'anomaly.module.dashboard::field.column.instructions'),
(11, 11, 'en', 'anomaly.module.dashboard::field.pinned.name', 'anomaly.module.dashboard::field.pinned.placeholder', 'anomaly.module.dashboard::field.pinned.warning', 'anomaly.module.dashboard::field.pinned.instructions'),
(12, 12, 'en', 'anomaly.module.dashboard::field.dashboard.name', 'anomaly.module.dashboard::field.dashboard.placeholder', 'anomaly.module.dashboard::field.dashboard.warning', 'anomaly.module.dashboard::field.dashboard.instructions'),
(13, 13, 'en', 'anomaly.module.dashboard::field.allowed_roles.name', 'anomaly.module.dashboard::field.allowed_roles.placeholder', 'anomaly.module.dashboard::field.allowed_roles.warning', 'anomaly.module.dashboard::field.allowed_roles.instructions'),
(14, 14, 'en', 'anomaly.module.files::field.name.name', 'anomaly.module.files::field.name.placeholder', 'anomaly.module.files::field.name.warning', 'anomaly.module.files::field.name.instructions'),
(15, 15, 'en', 'anomaly.module.files::field.slug.name', 'anomaly.module.files::field.slug.placeholder', 'anomaly.module.files::field.slug.warning', 'anomaly.module.files::field.slug.instructions'),
(16, 16, 'en', 'anomaly.module.files::field.adapter.name', 'anomaly.module.files::field.adapter.placeholder', 'anomaly.module.files::field.adapter.warning', 'anomaly.module.files::field.adapter.instructions'),
(17, 17, 'en', 'anomaly.module.files::field.folder.name', 'anomaly.module.files::field.folder.placeholder', 'anomaly.module.files::field.folder.warning', 'anomaly.module.files::field.folder.instructions'),
(18, 18, 'en', 'anomaly.module.files::field.disk.name', 'anomaly.module.files::field.disk.placeholder', 'anomaly.module.files::field.disk.warning', 'anomaly.module.files::field.disk.instructions'),
(19, 19, 'en', 'anomaly.module.files::field.entry.name', 'anomaly.module.files::field.entry.placeholder', 'anomaly.module.files::field.entry.warning', 'anomaly.module.files::field.entry.instructions'),
(20, 20, 'en', 'anomaly.module.files::field.description.name', 'anomaly.module.files::field.description.placeholder', 'anomaly.module.files::field.description.warning', 'anomaly.module.files::field.description.instructions'),
(21, 21, 'en', 'anomaly.module.files::field.allowed_types.name', 'anomaly.module.files::field.allowed_types.placeholder', 'anomaly.module.files::field.allowed_types.warning', 'anomaly.module.files::field.allowed_types.instructions'),
(22, 22, 'en', 'anomaly.module.files::field.keywords.name', 'anomaly.module.files::field.keywords.placeholder', 'anomaly.module.files::field.keywords.warning', 'anomaly.module.files::field.keywords.instructions'),
(23, 23, 'en', 'anomaly.module.files::field.extension.name', 'anomaly.module.files::field.extension.placeholder', 'anomaly.module.files::field.extension.warning', 'anomaly.module.files::field.extension.instructions'),
(24, 24, 'en', 'anomaly.module.files::field.width.name', 'anomaly.module.files::field.width.placeholder', 'anomaly.module.files::field.width.warning', 'anomaly.module.files::field.width.instructions'),
(25, 25, 'en', 'anomaly.module.files::field.height.name', 'anomaly.module.files::field.height.placeholder', 'anomaly.module.files::field.height.warning', 'anomaly.module.files::field.height.instructions'),
(26, 26, 'en', 'anomaly.module.files::field.mime_type.name', 'anomaly.module.files::field.mime_type.placeholder', 'anomaly.module.files::field.mime_type.warning', 'anomaly.module.files::field.mime_type.instructions'),
(27, 27, 'en', 'anomaly.module.files::field.size.name', 'anomaly.module.files::field.size.placeholder', 'anomaly.module.files::field.size.warning', 'anomaly.module.files::field.size.instructions'),
(28, 28, 'en', 'anomaly.module.navigation::field.name.name', 'anomaly.module.navigation::field.name.placeholder', 'anomaly.module.navigation::field.name.warning', 'anomaly.module.navigation::field.name.instructions'),
(29, 29, 'en', 'anomaly.module.navigation::field.class.name', 'anomaly.module.navigation::field.class.placeholder', 'anomaly.module.navigation::field.class.warning', 'anomaly.module.navigation::field.class.instructions'),
(30, 30, 'en', 'anomaly.module.navigation::field.description.name', 'anomaly.module.navigation::field.description.placeholder', 'anomaly.module.navigation::field.description.warning', 'anomaly.module.navigation::field.description.instructions'),
(31, 31, 'en', 'anomaly.module.navigation::field.entry.name', 'anomaly.module.navigation::field.entry.placeholder', 'anomaly.module.navigation::field.entry.warning', 'anomaly.module.navigation::field.entry.instructions'),
(32, 32, 'en', 'anomaly.module.navigation::field.slug.name', 'anomaly.module.navigation::field.slug.placeholder', 'anomaly.module.navigation::field.slug.warning', 'anomaly.module.navigation::field.slug.instructions'),
(33, 33, 'en', 'anomaly.module.navigation::field.menu.name', 'anomaly.module.navigation::field.menu.placeholder', 'anomaly.module.navigation::field.menu.warning', 'anomaly.module.navigation::field.menu.instructions'),
(34, 34, 'en', 'anomaly.module.navigation::field.parent.name', 'anomaly.module.navigation::field.parent.placeholder', 'anomaly.module.navigation::field.parent.warning', 'anomaly.module.navigation::field.parent.instructions'),
(35, 35, 'en', 'anomaly.module.navigation::field.allowed_roles.name', 'anomaly.module.navigation::field.allowed_roles.placeholder', 'anomaly.module.navigation::field.allowed_roles.warning', 'anomaly.module.navigation::field.allowed_roles.instructions'),
(36, 36, 'en', 'anomaly.module.navigation::field.type.name', 'anomaly.module.navigation::field.type.placeholder', 'anomaly.module.navigation::field.type.warning', 'anomaly.module.navigation::field.type.instructions'),
(37, 37, 'en', 'anomaly.module.navigation::field.target.name', 'anomaly.module.navigation::field.target.placeholder', 'anomaly.module.navigation::field.target.warning', 'anomaly.module.navigation::field.target.instructions'),
(38, 38, 'en', 'anomaly.module.pages::field.str_id.name', 'anomaly.module.pages::field.str_id.placeholder', 'anomaly.module.pages::field.str_id.warning', 'anomaly.module.pages::field.str_id.instructions'),
(39, 39, 'en', 'anomaly.module.pages::field.title.name', 'anomaly.module.pages::field.title.placeholder', 'anomaly.module.pages::field.title.warning', 'anomaly.module.pages::field.title.instructions'),
(40, 40, 'en', 'anomaly.module.pages::field.slug.name', 'anomaly.module.pages::field.slug.placeholder', 'anomaly.module.pages::field.slug.warning', 'anomaly.module.pages::field.slug.instructions'),
(41, 41, 'en', 'anomaly.module.pages::field.content.name', 'anomaly.module.pages::field.content.placeholder', 'anomaly.module.pages::field.content.warning', 'anomaly.module.pages::field.content.instructions'),
(42, 42, 'en', 'anomaly.module.pages::field.path.name', 'anomaly.module.pages::field.path.placeholder', 'anomaly.module.pages::field.path.warning', 'anomaly.module.pages::field.path.instructions'),
(43, 43, 'en', 'anomaly.module.pages::field.enabled.name', 'anomaly.module.pages::field.enabled.placeholder', 'anomaly.module.pages::field.enabled.warning', 'anomaly.module.pages::field.enabled.instructions'),
(44, 44, 'en', 'anomaly.module.pages::field.home.name', 'anomaly.module.pages::field.home.placeholder', 'anomaly.module.pages::field.home.warning', 'anomaly.module.pages::field.home.instructions'),
(45, 45, 'en', 'anomaly.module.pages::field.meta_title.name', 'anomaly.module.pages::field.meta_title.placeholder', 'anomaly.module.pages::field.meta_title.warning', 'anomaly.module.pages::field.meta_title.instructions'),
(46, 46, 'en', 'anomaly.module.pages::field.meta_description.name', 'anomaly.module.pages::field.meta_description.placeholder', 'anomaly.module.pages::field.meta_description.warning', 'anomaly.module.pages::field.meta_description.instructions'),
(47, 47, 'en', 'anomaly.module.pages::field.meta_keywords.name', 'anomaly.module.pages::field.meta_keywords.placeholder', 'anomaly.module.pages::field.meta_keywords.warning', 'anomaly.module.pages::field.meta_keywords.instructions'),
(48, 48, 'en', 'anomaly.module.pages::field.layout.name', 'anomaly.module.pages::field.layout.placeholder', 'anomaly.module.pages::field.layout.warning', 'anomaly.module.pages::field.layout.instructions'),
(49, 49, 'en', 'anomaly.module.pages::field.allowed_roles.name', 'anomaly.module.pages::field.allowed_roles.placeholder', 'anomaly.module.pages::field.allowed_roles.warning', 'anomaly.module.pages::field.allowed_roles.instructions'),
(50, 50, 'en', 'anomaly.module.pages::field.parent.name', 'anomaly.module.pages::field.parent.placeholder', 'anomaly.module.pages::field.parent.warning', 'anomaly.module.pages::field.parent.instructions'),
(51, 51, 'en', 'anomaly.module.pages::field.theme_layout.name', 'anomaly.module.pages::field.theme_layout.placeholder', 'anomaly.module.pages::field.theme_layout.warning', 'anomaly.module.pages::field.theme_layout.instructions'),
(52, 52, 'en', 'anomaly.module.pages::field.type.name', 'anomaly.module.pages::field.type.placeholder', 'anomaly.module.pages::field.type.warning', 'anomaly.module.pages::field.type.instructions'),
(53, 53, 'en', 'anomaly.module.pages::field.handler.name', 'anomaly.module.pages::field.handler.placeholder', 'anomaly.module.pages::field.handler.warning', 'anomaly.module.pages::field.handler.instructions'),
(54, 54, 'en', 'anomaly.module.pages::field.visible.name', 'anomaly.module.pages::field.visible.placeholder', 'anomaly.module.pages::field.visible.warning', 'anomaly.module.pages::field.visible.instructions'),
(55, 55, 'en', 'anomaly.module.pages::field.exact.name', 'anomaly.module.pages::field.exact.placeholder', 'anomaly.module.pages::field.exact.warning', 'anomaly.module.pages::field.exact.instructions'),
(56, 56, 'en', 'anomaly.module.pages::field.entry.name', 'anomaly.module.pages::field.entry.placeholder', 'anomaly.module.pages::field.entry.warning', 'anomaly.module.pages::field.entry.instructions'),
(57, 57, 'en', 'anomaly.module.pages::field.name.name', 'anomaly.module.pages::field.name.placeholder', 'anomaly.module.pages::field.name.warning', 'anomaly.module.pages::field.name.instructions'),
(58, 58, 'en', 'anomaly.module.pages::field.description.name', 'anomaly.module.pages::field.description.placeholder', 'anomaly.module.pages::field.description.warning', 'anomaly.module.pages::field.description.instructions'),
(59, 59, 'en', 'anomaly.module.posts::field.str_id.name', 'anomaly.module.posts::field.str_id.placeholder', 'anomaly.module.posts::field.str_id.warning', 'anomaly.module.posts::field.str_id.instructions'),
(60, 60, 'en', 'anomaly.module.posts::field.name.name', 'anomaly.module.posts::field.name.placeholder', 'anomaly.module.posts::field.name.warning', 'anomaly.module.posts::field.name.instructions'),
(61, 61, 'en', 'anomaly.module.posts::field.title.name', 'anomaly.module.posts::field.title.placeholder', 'anomaly.module.posts::field.title.warning', 'anomaly.module.posts::field.title.instructions'),
(62, 62, 'en', 'anomaly.module.posts::field.slug.name', 'anomaly.module.posts::field.slug.placeholder', 'anomaly.module.posts::field.slug.warning', 'anomaly.module.posts::field.slug.instructions'),
(63, 63, 'en', 'anomaly.module.posts::field.content.name', 'anomaly.module.posts::field.content.placeholder', 'anomaly.module.posts::field.content.warning', 'anomaly.module.posts::field.content.instructions'),
(64, 64, 'en', 'anomaly.module.posts::field.type.name', 'anomaly.module.posts::field.type.placeholder', 'anomaly.module.posts::field.type.warning', 'anomaly.module.posts::field.type.instructions'),
(65, 65, 'en', 'anomaly.module.posts::field.tags.name', 'anomaly.module.posts::field.tags.placeholder', 'anomaly.module.posts::field.tags.warning', 'anomaly.module.posts::field.tags.instructions'),
(66, 66, 'en', 'anomaly.module.posts::field.summary.name', 'anomaly.module.posts::field.summary.placeholder', 'anomaly.module.posts::field.summary.warning', 'anomaly.module.posts::field.summary.instructions'),
(67, 67, 'en', 'anomaly.module.posts::field.description.name', 'anomaly.module.posts::field.description.placeholder', 'anomaly.module.posts::field.description.warning', 'anomaly.module.posts::field.description.instructions'),
(68, 68, 'en', 'anomaly.module.posts::field.publish_at.name', 'anomaly.module.posts::field.publish_at.placeholder', 'anomaly.module.posts::field.publish_at.warning', 'anomaly.module.posts::field.publish_at.instructions'),
(69, 69, 'en', 'anomaly.module.posts::field.entry.name', 'anomaly.module.posts::field.entry.placeholder', 'anomaly.module.posts::field.entry.warning', 'anomaly.module.posts::field.entry.instructions'),
(70, 70, 'en', 'anomaly.module.posts::field.author.name', 'anomaly.module.posts::field.author.placeholder', 'anomaly.module.posts::field.author.warning', 'anomaly.module.posts::field.author.instructions'),
(71, 71, 'en', 'anomaly.module.posts::field.layout.name', 'anomaly.module.posts::field.layout.placeholder', 'anomaly.module.posts::field.layout.warning', 'anomaly.module.posts::field.layout.instructions'),
(72, 72, 'en', 'anomaly.module.posts::field.category.name', 'anomaly.module.posts::field.category.placeholder', 'anomaly.module.posts::field.category.warning', 'anomaly.module.posts::field.category.instructions'),
(73, 73, 'en', 'anomaly.module.posts::field.enabled.name', 'anomaly.module.posts::field.enabled.placeholder', 'anomaly.module.posts::field.enabled.warning', 'anomaly.module.posts::field.enabled.instructions'),
(74, 74, 'en', 'anomaly.module.posts::field.featured.name', 'anomaly.module.posts::field.featured.placeholder', 'anomaly.module.posts::field.featured.warning', 'anomaly.module.posts::field.featured.instructions'),
(75, 75, 'en', 'anomaly.module.posts::field.meta_title.name', 'anomaly.module.posts::field.meta_title.placeholder', 'anomaly.module.posts::field.meta_title.warning', 'anomaly.module.posts::field.meta_title.instructions'),
(76, 76, 'en', 'anomaly.module.posts::field.meta_description.name', 'anomaly.module.posts::field.meta_description.placeholder', 'anomaly.module.posts::field.meta_description.warning', 'anomaly.module.posts::field.meta_description.instructions'),
(77, 77, 'en', 'anomaly.module.posts::field.meta_keywords.name', 'anomaly.module.posts::field.meta_keywords.placeholder', 'anomaly.module.posts::field.meta_keywords.warning', 'anomaly.module.posts::field.meta_keywords.instructions'),
(78, 78, 'en', 'anomaly.module.posts::field.ttl.name', 'anomaly.module.posts::field.ttl.placeholder', 'anomaly.module.posts::field.ttl.warning', 'anomaly.module.posts::field.ttl.instructions'),
(79, 79, 'en', 'anomaly.module.posts::field.theme_layout.name', 'anomaly.module.posts::field.theme_layout.placeholder', 'anomaly.module.posts::field.theme_layout.warning', 'anomaly.module.posts::field.theme_layout.instructions'),
(80, 80, 'en', 'anomaly.module.preferences::field.user.name', 'anomaly.module.preferences::field.user.placeholder', 'anomaly.module.preferences::field.user.warning', 'anomaly.module.preferences::field.user.instructions'),
(81, 81, 'en', 'anomaly.module.preferences::field.key.name', 'anomaly.module.preferences::field.key.placeholder', 'anomaly.module.preferences::field.key.warning', 'anomaly.module.preferences::field.key.instructions'),
(82, 82, 'en', 'anomaly.module.preferences::field.value.name', 'anomaly.module.preferences::field.value.placeholder', 'anomaly.module.preferences::field.value.warning', 'anomaly.module.preferences::field.value.instructions'),
(83, 83, 'en', 'anomaly.module.redirects::field.from.name', 'anomaly.module.redirects::field.from.placeholder', 'anomaly.module.redirects::field.from.warning', 'anomaly.module.redirects::field.from.instructions'),
(84, 84, 'en', 'anomaly.module.redirects::field.to.name', 'anomaly.module.redirects::field.to.placeholder', 'anomaly.module.redirects::field.to.warning', 'anomaly.module.redirects::field.to.instructions'),
(85, 85, 'en', 'anomaly.module.redirects::field.status.name', 'anomaly.module.redirects::field.status.placeholder', 'anomaly.module.redirects::field.status.warning', 'anomaly.module.redirects::field.status.instructions'),
(86, 86, 'en', 'anomaly.module.redirects::field.secure.name', 'anomaly.module.redirects::field.secure.placeholder', 'anomaly.module.redirects::field.secure.warning', 'anomaly.module.redirects::field.secure.instructions'),
(87, 87, 'en', 'anomaly.module.settings::field.key.name', 'anomaly.module.settings::field.key.placeholder', 'anomaly.module.settings::field.key.warning', 'anomaly.module.settings::field.key.instructions'),
(88, 88, 'en', 'anomaly.module.settings::field.value.name', 'anomaly.module.settings::field.value.placeholder', 'anomaly.module.settings::field.value.warning', 'anomaly.module.settings::field.value.instructions'),
(89, 89, 'en', 'anomaly.module.users::field.email.name', 'anomaly.module.users::field.email.placeholder', 'anomaly.module.users::field.email.warning', 'anomaly.module.users::field.email.instructions'),
(90, 90, 'en', 'anomaly.module.users::field.username.name', 'anomaly.module.users::field.username.placeholder', 'anomaly.module.users::field.username.warning', 'anomaly.module.users::field.username.instructions'),
(91, 91, 'en', 'anomaly.module.users::field.password.name', 'anomaly.module.users::field.password.placeholder', 'anomaly.module.users::field.password.warning', 'anomaly.module.users::field.password.instructions'),
(92, 92, 'en', 'anomaly.module.users::field.remember_token.name', 'anomaly.module.users::field.remember_token.placeholder', 'anomaly.module.users::field.remember_token.warning', 'anomaly.module.users::field.remember_token.instructions'),
(93, 93, 'en', 'anomaly.module.users::field.ip_address.name', 'anomaly.module.users::field.ip_address.placeholder', 'anomaly.module.users::field.ip_address.warning', 'anomaly.module.users::field.ip_address.instructions'),
(94, 94, 'en', 'anomaly.module.users::field.last_login_at.name', 'anomaly.module.users::field.last_login_at.placeholder', 'anomaly.module.users::field.last_login_at.warning', 'anomaly.module.users::field.last_login_at.instructions'),
(95, 95, 'en', 'anomaly.module.users::field.last_activity_at.name', 'anomaly.module.users::field.last_activity_at.placeholder', 'anomaly.module.users::field.last_activity_at.warning', 'anomaly.module.users::field.last_activity_at.instructions'),
(96, 96, 'en', 'anomaly.module.users::field.permissions.name', 'anomaly.module.users::field.permissions.placeholder', 'anomaly.module.users::field.permissions.warning', 'anomaly.module.users::field.permissions.instructions'),
(97, 97, 'en', 'anomaly.module.users::field.display_name.name', 'anomaly.module.users::field.display_name.placeholder', 'anomaly.module.users::field.display_name.warning', 'anomaly.module.users::field.display_name.instructions'),
(98, 98, 'en', 'anomaly.module.users::field.first_name.name', 'anomaly.module.users::field.first_name.placeholder', 'anomaly.module.users::field.first_name.warning', 'anomaly.module.users::field.first_name.instructions'),
(99, 99, 'en', 'anomaly.module.users::field.last_name.name', 'anomaly.module.users::field.last_name.placeholder', 'anomaly.module.users::field.last_name.warning', 'anomaly.module.users::field.last_name.instructions'),
(100, 100, 'en', 'anomaly.module.users::field.name.name', 'anomaly.module.users::field.name.placeholder', 'anomaly.module.users::field.name.warning', 'anomaly.module.users::field.name.instructions'),
(101, 101, 'en', 'anomaly.module.users::field.description.name', 'anomaly.module.users::field.description.placeholder', 'anomaly.module.users::field.description.warning', 'anomaly.module.users::field.description.instructions'),
(102, 102, 'en', 'anomaly.module.users::field.reset_code.name', 'anomaly.module.users::field.reset_code.placeholder', 'anomaly.module.users::field.reset_code.warning', 'anomaly.module.users::field.reset_code.instructions'),
(103, 103, 'en', 'anomaly.module.users::field.reset_code_expires_at.name', 'anomaly.module.users::field.reset_code_expires_at.placeholder', 'anomaly.module.users::field.reset_code_expires_at.warning', 'anomaly.module.users::field.reset_code_expires_at.instructions'),
(104, 104, 'en', 'anomaly.module.users::field.activation_code.name', 'anomaly.module.users::field.activation_code.placeholder', 'anomaly.module.users::field.activation_code.warning', 'anomaly.module.users::field.activation_code.instructions'),
(105, 105, 'en', 'anomaly.module.users::field.activation_code_expires_at.name', 'anomaly.module.users::field.activation_code_expires_at.placeholder', 'anomaly.module.users::field.activation_code_expires_at.warning', 'anomaly.module.users::field.activation_code_expires_at.instructions'),
(106, 106, 'en', 'anomaly.module.users::field.activated.name', 'anomaly.module.users::field.activated.placeholder', 'anomaly.module.users::field.activated.warning', 'anomaly.module.users::field.activated.instructions'),
(107, 107, 'en', 'anomaly.module.users::field.enabled.name', 'anomaly.module.users::field.enabled.placeholder', 'anomaly.module.users::field.enabled.warning', 'anomaly.module.users::field.enabled.instructions'),
(108, 108, 'en', 'anomaly.module.users::field.slug.name', 'anomaly.module.users::field.slug.placeholder', 'anomaly.module.users::field.slug.warning', 'anomaly.module.users::field.slug.instructions'),
(109, 109, 'en', 'anomaly.module.users::field.roles.name', 'anomaly.module.users::field.roles.placeholder', 'anomaly.module.users::field.roles.warning', 'anomaly.module.users::field.roles.instructions'),
(110, 110, 'en', 'anomaly.extension.page_link_type::field.title.name', 'anomaly.extension.page_link_type::field.title.placeholder', 'anomaly.extension.page_link_type::field.title.warning', 'anomaly.extension.page_link_type::field.title.instructions'),
(111, 111, 'en', 'anomaly.extension.page_link_type::field.page.name', 'anomaly.extension.page_link_type::field.page.placeholder', 'anomaly.extension.page_link_type::field.page.warning', 'anomaly.extension.page_link_type::field.page.instructions'),
(112, 112, 'en', 'anomaly.extension.page_link_type::field.description.name', 'anomaly.extension.page_link_type::field.description.placeholder', 'anomaly.extension.page_link_type::field.description.warning', 'anomaly.extension.page_link_type::field.description.instructions'),
(113, 113, 'en', 'anomaly.extension.url_link_type::field.title.name', 'anomaly.extension.url_link_type::field.title.placeholder', 'anomaly.extension.url_link_type::field.title.warning', 'anomaly.extension.url_link_type::field.title.instructions'),
(114, 114, 'en', 'anomaly.extension.url_link_type::field.url.name', 'anomaly.extension.url_link_type::field.url.placeholder', 'anomaly.extension.url_link_type::field.url.warning', 'anomaly.extension.url_link_type::field.url.instructions'),
(115, 115, 'en', 'anomaly.extension.url_link_type::field.description.name', 'anomaly.extension.url_link_type::field.description.placeholder', 'anomaly.extension.url_link_type::field.description.warning', 'anomaly.extension.url_link_type::field.description.instructions'),
(116, 116, 'en', 'Data X', 'Data X only for Position Slideshow', 'Data X only for Position Slideshow', 'Data X only for Position Slideshow'),
(117, 117, 'en', 'Images', 'Please Upload a Image', 'Please Upload a Image', 'Please Upload a Image'),
(122, 122, 'en', 'Image Class', 'Image Class', 'Image Css Class', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `interdril_streams_streams`
--

CREATE TABLE `interdril_streams_streams` (
  `id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `prefix` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_column` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'id',
  `order_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'id',
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  `sortable` tinyint(1) NOT NULL DEFAULT '0',
  `searchable` tinyint(1) NOT NULL DEFAULT '0',
  `trashable` tinyint(1) NOT NULL DEFAULT '0',
  `translatable` tinyint(1) NOT NULL DEFAULT '0',
  `config` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `interdril_streams_streams`
--

INSERT INTO `interdril_streams_streams` (`id`, `namespace`, `slug`, `prefix`, `title_column`, `order_by`, `locked`, `hidden`, `sortable`, `searchable`, `trashable`, `translatable`, `config`) VALUES
(1, 'configuration', 'configuration', 'configuration_', 'id', 'id', 1, 0, 0, 0, 0, 0, 'a:0:{}'),
(2, 'dashboard', 'dashboards', 'dashboard_', 'name', 'id', 0, 0, 1, 0, 1, 1, 'a:0:{}'),
(3, 'dashboard', 'widgets', 'dashboard_', 'title', 'id', 0, 0, 1, 0, 1, 1, 'a:0:{}'),
(4, 'files', 'disks', 'files_', 'name', 'id', 0, 0, 1, 0, 1, 1, 'a:0:{}'),
(5, 'files', 'folders', 'files_', 'name', 'id', 0, 0, 1, 0, 1, 1, 'a:0:{}'),
(6, 'files', 'files', 'files_', 'name', 'id', 0, 0, 0, 1, 1, 0, 'a:0:{}'),
(7, 'navigation', 'menus', 'navigation_', 'name', 'id', 0, 0, 0, 0, 1, 1, 'a:0:{}'),
(8, 'navigation', 'links', 'navigation_', 'id', 'id', 0, 0, 1, 0, 1, 0, 'a:0:{}'),
(9, 'pages', 'pages', 'pages_', 'title', 'id', 0, 0, 1, 1, 1, 1, 'a:0:{}'),
(10, 'pages', 'types', 'pages_', 'name', 'id', 0, 0, 1, 0, 1, 1, 'a:0:{}'),
(11, 'posts', 'categories', 'posts_', 'name', 'id', 0, 0, 1, 0, 1, 1, 'a:0:{}'),
(12, 'posts', 'posts', 'posts_', 'title', 'id', 0, 0, 0, 1, 1, 1, 'a:0:{}'),
(13, 'posts', 'types', 'posts_', 'name', 'id', 0, 0, 1, 0, 1, 1, 'a:0:{}'),
(14, 'preferences', 'preferences', 'preferences_', 'id', 'id', 0, 0, 0, 0, 0, 0, 'a:0:{}'),
(15, 'redirects', 'redirects', 'redirects_', 'from', 'id', 0, 0, 1, 0, 1, 0, 'a:0:{}'),
(16, 'settings', 'settings', 'settings_', 'id', 'id', 0, 0, 0, 0, 0, 0, 'a:0:{}'),
(17, 'users', 'users', 'users_', 'display_name', 'id', 0, 0, 0, 1, 1, 0, 'a:0:{}'),
(18, 'users', 'roles', 'users_', 'name', 'id', 0, 0, 0, 0, 1, 1, 'a:0:{}'),
(19, 'page_link_type', 'pages', 'page_link_type_', 'title', 'id', 0, 0, 0, 0, 0, 1, 'a:0:{}'),
(20, 'url_link_type', 'urls', 'url_link_type_', 'title', 'id', 0, 0, 0, 0, 0, 1, 'a:0:{}'),
(21, 'files', 'images', 'files_', 'id', 'id', 0, 0, 0, 0, 1, 1, 'a:0:{}'),
(22, 'files', 'documents', 'files_', 'id', 'id', 0, 0, 0, 0, 1, 1, 'a:0:{}'),
(23, 'pages', 'default_pages', 'pages_', 'id', 'id', 0, 1, 0, 0, 1, 1, 'a:0:{}'),
(24, 'posts', 'default_posts', 'posts_', 'id', 'id', 0, 1, 0, 0, 1, 1, 'a:0:{}'),
(25, 'files', 'about_us', 'files_', 'id', 'id', 0, 0, 0, 0, 1, 1, 'a:0:{}'),
(26, 'pages', 'page_with_animation_image_pages', 'pages_', 'id', 'id', 0, 1, 0, 0, 1, 1, 'a:0:{}'),
(27, 'files', 'rotary_drilling', 'files_', 'id', 'id', 0, 0, 0, 0, 1, 1, 'a:0:{}'),
(28, 'files', 'services', 'files_', 'id', 'id', 0, 0, 0, 0, 1, 1, 'a:0:{}');

-- --------------------------------------------------------

--
-- Table structure for table `interdril_streams_streams_translations`
--

CREATE TABLE `interdril_streams_streams_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `stream_id` int(11) NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `interdril_streams_streams_translations`
--

INSERT INTO `interdril_streams_streams_translations` (`id`, `stream_id`, `locale`, `name`, `description`) VALUES
(1, 1, 'en', 'anomaly.module.configuration::stream.configuration.name', 'anomaly.module.configuration::stream.configuration.description'),
(2, 2, 'en', 'anomaly.module.dashboard::stream.dashboards.name', 'anomaly.module.dashboard::stream.dashboards.description'),
(3, 3, 'en', 'anomaly.module.dashboard::stream.widgets.name', 'anomaly.module.dashboard::stream.widgets.description'),
(4, 4, 'en', 'anomaly.module.files::stream.disks.name', 'anomaly.module.files::stream.disks.description'),
(5, 5, 'en', 'anomaly.module.files::stream.folders.name', 'anomaly.module.files::stream.folders.description'),
(6, 6, 'en', 'anomaly.module.files::stream.files.name', 'anomaly.module.files::stream.files.description'),
(7, 7, 'en', 'anomaly.module.navigation::stream.menus.name', 'anomaly.module.navigation::stream.menus.description'),
(8, 8, 'en', 'anomaly.module.navigation::stream.links.name', 'anomaly.module.navigation::stream.links.description'),
(9, 9, 'en', 'anomaly.module.pages::stream.pages.name', 'anomaly.module.pages::stream.pages.description'),
(10, 10, 'en', 'anomaly.module.pages::stream.types.name', 'anomaly.module.pages::stream.types.description'),
(11, 11, 'en', 'anomaly.module.posts::stream.categories.name', 'anomaly.module.posts::stream.categories.description'),
(12, 12, 'en', 'anomaly.module.posts::stream.posts.name', 'anomaly.module.posts::stream.posts.description'),
(13, 13, 'en', 'anomaly.module.posts::stream.types.name', 'anomaly.module.posts::stream.types.description'),
(14, 14, 'en', 'anomaly.module.preferences::stream.preferences.name', 'anomaly.module.preferences::stream.preferences.description'),
(15, 15, 'en', 'anomaly.module.redirects::stream.redirects.name', 'anomaly.module.redirects::stream.redirects.description'),
(16, 16, 'en', 'anomaly.module.settings::stream.settings.name', 'anomaly.module.settings::stream.settings.description'),
(17, 17, 'en', 'anomaly.module.users::stream.users.name', 'anomaly.module.users::stream.users.description'),
(18, 18, 'en', 'anomaly.module.users::stream.roles.name', 'anomaly.module.users::stream.roles.description'),
(19, 19, 'en', 'anomaly.extension.page_link_type::stream.pages.name', 'anomaly.extension.page_link_type::stream.pages.description'),
(20, 20, 'en', 'anomaly.extension.url_link_type::stream.urls.name', 'anomaly.extension.url_link_type::stream.urls.description'),
(21, 21, 'en', 'Images', 'A folder for images.'),
(22, 22, 'en', 'Documents', 'A folder for documents.'),
(23, 23, 'en', 'Simple Page', 'A simple page type.'),
(24, 24, 'en', 'Default', NULL),
(25, 25, 'en', 'About Us', 'About Us Images'),
(26, 26, 'en', 'Page With Animation Image', 'Page With Animation Image'),
(27, 27, 'en', 'Rotary Drilling', 'Rotary Drilling'),
(28, 28, 'en', 'Services', 'Services');

-- --------------------------------------------------------

--
-- Table structure for table `interdril_url_link_type_urls`
--

CREATE TABLE `interdril_url_link_type_urls` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `interdril_url_link_type_urls`
--

INSERT INTO `interdril_url_link_type_urls` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `url`) VALUES
(1, 1, '2017-07-18 03:04:57', NULL, NULL, NULL, 'http://pyrocms.com/'),
(2, 2, '2017-07-18 03:04:57', NULL, NULL, NULL, 'http://pyrocms.com/documentation');

-- --------------------------------------------------------

--
-- Table structure for table `interdril_url_link_type_urls_translations`
--

CREATE TABLE `interdril_url_link_type_urls_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `interdril_url_link_type_urls_translations`
--

INSERT INTO `interdril_url_link_type_urls_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `title`, `description`) VALUES
(1, 1, '2017-07-18 03:04:57', NULL, '2017-07-18 03:04:57', NULL, 'en', 'PyroCMS.com', NULL),
(2, 2, '2017-07-18 03:04:57', NULL, '2017-07-18 03:04:57', NULL, 'en', 'Documentation', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `interdril_users_roles`
--

CREATE TABLE `interdril_users_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `interdril_users_roles`
--

INSERT INTO `interdril_users_roles` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `slug`, `permissions`) VALUES
(1, 1, '2017-07-18 03:05:10', NULL, NULL, NULL, NULL, 'admin', NULL),
(2, 2, '2017-07-18 03:05:11', NULL, NULL, NULL, NULL, 'user', NULL),
(3, 3, '2017-07-18 03:05:11', NULL, NULL, NULL, NULL, 'guest', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `interdril_users_roles_translations`
--

CREATE TABLE `interdril_users_roles_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `interdril_users_roles_translations`
--

INSERT INTO `interdril_users_roles_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `name`, `description`) VALUES
(1, 1, '2017-07-18 03:05:11', NULL, '2017-07-18 03:05:11', NULL, 'en', 'Admin', 'The super admin role.'),
(2, 2, '2017-07-18 03:05:11', NULL, '2017-07-18 03:05:11', NULL, 'en', 'User', 'The default user role.'),
(3, 3, '2017-07-18 03:05:11', NULL, '2017-07-18 03:05:11', NULL, 'en', 'Guest', 'The fallback role for non-users.');

-- --------------------------------------------------------

--
-- Table structure for table `interdril_users_users`
--

CREATE TABLE `interdril_users_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activated` tinyint(1) DEFAULT '0',
  `enabled` tinyint(1) DEFAULT '1',
  `permissions` text COLLATE utf8_unicode_ci,
  `last_login_at` datetime DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activation_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_activity_at` datetime DEFAULT NULL,
  `ip_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `interdril_users_users`
--

INSERT INTO `interdril_users_users` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `email`, `username`, `password`, `display_name`, `first_name`, `last_name`, `activated`, `enabled`, `permissions`, `last_login_at`, `remember_token`, `activation_code`, `reset_code`, `last_activity_at`, `ip_address`) VALUES
(1, 1, '2017-07-18 03:05:11', NULL, '2017-07-20 07:03:48', 1, NULL, 'admin@interdril.com', 'admin', '$2y$10$IpPB/HG/IyhlVR4R0VesIefJFPTxRSieQMdT5J480OM5dtLVfTX0q', 'Administrator', NULL, NULL, 1, 1, NULL, '2017-07-20 07:03:48', NULL, NULL, NULL, NULL, NULL),
(2, 2, '2017-07-18 03:05:12', NULL, '2017-07-18 03:05:13', NULL, NULL, 'demo@pyrocms.com', 'demo', '$2y$10$Z4N8zTFxkddaxMen8uWe.e3T6FMtLHD1muBDNTLbTXMW0BIjhKP/6', 'Demo User', NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `interdril_users_users_roles`
--

CREATE TABLE `interdril_users_users_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  `sort_order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `interdril_users_users_roles`
--

INSERT INTO `interdril_users_users_roles` (`id`, `entry_id`, `related_id`, `sort_order`) VALUES
(1, 2, 2, NULL),
(2, 1, 1, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_application_references` (`reference`),
  ADD UNIQUE KEY `unique_application_domains` (`domain`);

--
-- Indexes for table `applications_domains`
--
ALTER TABLE `applications_domains`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_application_aliases` (`domain`);

--
-- Indexes for table `interdril_addons_extensions`
--
ALTER TABLE `interdril_addons_extensions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_extensions` (`namespace`);

--
-- Indexes for table `interdril_addons_modules`
--
ALTER TABLE `interdril_addons_modules`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_modules` (`namespace`);

--
-- Indexes for table `interdril_configuration_configuration`
--
ALTER TABLE `interdril_configuration_configuration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interdril_dashboard_dashboards`
--
ALTER TABLE `interdril_dashboard_dashboards`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `9e2c1f0b0af4a3796ef2922690d63a22` (`slug`);

--
-- Indexes for table `interdril_dashboard_dashboards_allowed_roles`
--
ALTER TABLE `interdril_dashboard_dashboards_allowed_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique-relations` (`entry_id`,`related_id`);

--
-- Indexes for table `interdril_dashboard_dashboards_translations`
--
ALTER TABLE `interdril_dashboard_dashboards_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_dashboards_translations_locale_index` (`locale`);

--
-- Indexes for table `interdril_dashboard_widgets`
--
ALTER TABLE `interdril_dashboard_widgets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interdril_dashboard_widgets_allowed_roles`
--
ALTER TABLE `interdril_dashboard_widgets_allowed_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique-relations` (`entry_id`,`related_id`);

--
-- Indexes for table `interdril_dashboard_widgets_translations`
--
ALTER TABLE `interdril_dashboard_widgets_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_widgets_translations_locale_index` (`locale`);

--
-- Indexes for table `interdril_failed_jobs`
--
ALTER TABLE `interdril_failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interdril_files_about_us`
--
ALTER TABLE `interdril_files_about_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interdril_files_about_us_translations`
--
ALTER TABLE `interdril_files_about_us_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_about_us_translations_locale_index` (`locale`);

--
-- Indexes for table `interdril_files_disks`
--
ALTER TABLE `interdril_files_disks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `e45e39ecdef3a3c7a5535279b117d2a4` (`slug`);

--
-- Indexes for table `interdril_files_disks_translations`
--
ALTER TABLE `interdril_files_disks_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_disks_translations_locale_index` (`locale`);

--
-- Indexes for table `interdril_files_documents`
--
ALTER TABLE `interdril_files_documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interdril_files_documents_translations`
--
ALTER TABLE `interdril_files_documents_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_documents_translations_locale_index` (`locale`);

--
-- Indexes for table `interdril_files_files`
--
ALTER TABLE `interdril_files_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interdril_files_folders`
--
ALTER TABLE `interdril_files_folders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `eb1f1e9d6c256e3428a0c6606a721cc5` (`slug`);

--
-- Indexes for table `interdril_files_folders_translations`
--
ALTER TABLE `interdril_files_folders_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_folders_translations_locale_index` (`locale`);

--
-- Indexes for table `interdril_files_images`
--
ALTER TABLE `interdril_files_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interdril_files_images_translations`
--
ALTER TABLE `interdril_files_images_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_images_translations_locale_index` (`locale`);

--
-- Indexes for table `interdril_files_rotary_drilling`
--
ALTER TABLE `interdril_files_rotary_drilling`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interdril_files_rotary_drilling_translations`
--
ALTER TABLE `interdril_files_rotary_drilling_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_rotary_drilling_translations_locale_index` (`locale`);

--
-- Indexes for table `interdril_files_services`
--
ALTER TABLE `interdril_files_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interdril_files_services_translations`
--
ALTER TABLE `interdril_files_services_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_services_translations_locale_index` (`locale`);

--
-- Indexes for table `interdril_jobs`
--
ALTER TABLE `interdril_jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_reserved_at_index` (`queue`,`reserved_at`);

--
-- Indexes for table `interdril_migrations`
--
ALTER TABLE `interdril_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interdril_navigation_links`
--
ALTER TABLE `interdril_navigation_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interdril_navigation_links_allowed_roles`
--
ALTER TABLE `interdril_navigation_links_allowed_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique-relations` (`entry_id`,`related_id`);

--
-- Indexes for table `interdril_navigation_menus`
--
ALTER TABLE `interdril_navigation_menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `b971176b13cd6738cbb5a6905fe40e9b` (`slug`);

--
-- Indexes for table `interdril_navigation_menus_translations`
--
ALTER TABLE `interdril_navigation_menus_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `navigation_menus_translations_locale_index` (`locale`);

--
-- Indexes for table `interdril_notifications`
--
ALTER TABLE `interdril_notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_id_notifiable_type_index` (`notifiable_id`,`notifiable_type`);

--
-- Indexes for table `interdril_pages_default_pages`
--
ALTER TABLE `interdril_pages_default_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interdril_pages_default_pages_translations`
--
ALTER TABLE `interdril_pages_default_pages_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pages_default_pages_translations_locale_index` (`locale`);

--
-- Indexes for table `interdril_pages_pages`
--
ALTER TABLE `interdril_pages_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interdril_pages_pages_allowed_roles`
--
ALTER TABLE `interdril_pages_pages_allowed_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique-relations` (`entry_id`,`related_id`);

--
-- Indexes for table `interdril_pages_pages_translations`
--
ALTER TABLE `interdril_pages_pages_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pages_pages_translations_locale_index` (`locale`);

--
-- Indexes for table `interdril_pages_page_with_animation_image_pages`
--
ALTER TABLE `interdril_pages_page_with_animation_image_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interdril_pages_page_with_animation_image_pages_images`
--
ALTER TABLE `interdril_pages_page_with_animation_image_pages_images`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique-files` (`entry_id`,`file_id`);

--
-- Indexes for table `interdril_pages_page_with_animation_image_pages_translations`
--
ALTER TABLE `interdril_pages_page_with_animation_image_pages_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pages_page_with_animation_image_pages_translations_locale_index` (`locale`);

--
-- Indexes for table `interdril_pages_types`
--
ALTER TABLE `interdril_pages_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `381176fc0d89ae8d97d99ce9b6109b9a` (`slug`);

--
-- Indexes for table `interdril_pages_types_translations`
--
ALTER TABLE `interdril_pages_types_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pages_types_translations_locale_index` (`locale`);

--
-- Indexes for table `interdril_page_link_type_pages`
--
ALTER TABLE `interdril_page_link_type_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interdril_page_link_type_pages_translations`
--
ALTER TABLE `interdril_page_link_type_pages_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_link_type_pages_translations_locale_index` (`locale`);

--
-- Indexes for table `interdril_posts_categories`
--
ALTER TABLE `interdril_posts_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `9a8a0682d35f9b22c741cb0536aa691f` (`slug`);

--
-- Indexes for table `interdril_posts_categories_translations`
--
ALTER TABLE `interdril_posts_categories_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_categories_translations_locale_index` (`locale`);

--
-- Indexes for table `interdril_posts_default_posts`
--
ALTER TABLE `interdril_posts_default_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interdril_posts_default_posts_translations`
--
ALTER TABLE `interdril_posts_default_posts_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_default_posts_translations_locale_index` (`locale`);

--
-- Indexes for table `interdril_posts_posts`
--
ALTER TABLE `interdril_posts_posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `a1128facbe9e8e6c2c59eddcfa495104` (`str_id`),
  ADD UNIQUE KEY `0c47b5470543e28befe49a899387ccff` (`slug`);

--
-- Indexes for table `interdril_posts_posts_translations`
--
ALTER TABLE `interdril_posts_posts_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_posts_translations_locale_index` (`locale`);

--
-- Indexes for table `interdril_posts_types`
--
ALTER TABLE `interdril_posts_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `1dc1b98be4181be266b483941a42b000` (`slug`);

--
-- Indexes for table `interdril_posts_types_translations`
--
ALTER TABLE `interdril_posts_types_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_types_translations_locale_index` (`locale`);

--
-- Indexes for table `interdril_preferences_preferences`
--
ALTER TABLE `interdril_preferences_preferences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interdril_redirects_redirects`
--
ALTER TABLE `interdril_redirects_redirects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `0cb4275c3992e35aae2a6b18f5f213c1` (`from`);

--
-- Indexes for table `interdril_sessions`
--
ALTER TABLE `interdril_sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

--
-- Indexes for table `interdril_settings_settings`
--
ALTER TABLE `interdril_settings_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `c51990785fa58fe7b8132ccb33d9b45f` (`key`);

--
-- Indexes for table `interdril_streams_assignments`
--
ALTER TABLE `interdril_streams_assignments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_assignments` (`stream_id`,`field_id`);

--
-- Indexes for table `interdril_streams_assignments_translations`
--
ALTER TABLE `interdril_streams_assignments_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `streams_assignments_translations_locale_index` (`locale`);

--
-- Indexes for table `interdril_streams_fields`
--
ALTER TABLE `interdril_streams_fields`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_fields` (`namespace`,`slug`);

--
-- Indexes for table `interdril_streams_fields_translations`
--
ALTER TABLE `interdril_streams_fields_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `streams_fields_translations_locale_index` (`locale`);

--
-- Indexes for table `interdril_streams_streams`
--
ALTER TABLE `interdril_streams_streams`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_streams` (`namespace`,`slug`);

--
-- Indexes for table `interdril_streams_streams_translations`
--
ALTER TABLE `interdril_streams_streams_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `streams_streams_translations_locale_index` (`locale`);

--
-- Indexes for table `interdril_url_link_type_urls`
--
ALTER TABLE `interdril_url_link_type_urls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interdril_url_link_type_urls_translations`
--
ALTER TABLE `interdril_url_link_type_urls_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `url_link_type_urls_translations_locale_index` (`locale`);

--
-- Indexes for table `interdril_users_roles`
--
ALTER TABLE `interdril_users_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `c8501689d10e8645dd553604c773dca2` (`slug`);

--
-- Indexes for table `interdril_users_roles_translations`
--
ALTER TABLE `interdril_users_roles_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_roles_translations_locale_index` (`locale`);

--
-- Indexes for table `interdril_users_users`
--
ALTER TABLE `interdril_users_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `f432e8a18875d82efd589bf0d89fc033` (`email`),
  ADD UNIQUE KEY `729e247f9366c049a3e2924a0a51b756` (`username`);

--
-- Indexes for table `interdril_users_users_roles`
--
ALTER TABLE `interdril_users_users_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique-relations` (`entry_id`,`related_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `applications_domains`
--
ALTER TABLE `applications_domains`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `interdril_addons_extensions`
--
ALTER TABLE `interdril_addons_extensions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `interdril_addons_modules`
--
ALTER TABLE `interdril_addons_modules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `interdril_configuration_configuration`
--
ALTER TABLE `interdril_configuration_configuration`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `interdril_dashboard_dashboards`
--
ALTER TABLE `interdril_dashboard_dashboards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `interdril_dashboard_dashboards_allowed_roles`
--
ALTER TABLE `interdril_dashboard_dashboards_allowed_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `interdril_dashboard_dashboards_translations`
--
ALTER TABLE `interdril_dashboard_dashboards_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `interdril_dashboard_widgets`
--
ALTER TABLE `interdril_dashboard_widgets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `interdril_dashboard_widgets_allowed_roles`
--
ALTER TABLE `interdril_dashboard_widgets_allowed_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `interdril_dashboard_widgets_translations`
--
ALTER TABLE `interdril_dashboard_widgets_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `interdril_failed_jobs`
--
ALTER TABLE `interdril_failed_jobs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `interdril_files_about_us`
--
ALTER TABLE `interdril_files_about_us`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `interdril_files_about_us_translations`
--
ALTER TABLE `interdril_files_about_us_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `interdril_files_disks`
--
ALTER TABLE `interdril_files_disks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `interdril_files_disks_translations`
--
ALTER TABLE `interdril_files_disks_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `interdril_files_documents`
--
ALTER TABLE `interdril_files_documents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `interdril_files_documents_translations`
--
ALTER TABLE `interdril_files_documents_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `interdril_files_files`
--
ALTER TABLE `interdril_files_files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `interdril_files_folders`
--
ALTER TABLE `interdril_files_folders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `interdril_files_folders_translations`
--
ALTER TABLE `interdril_files_folders_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `interdril_files_images`
--
ALTER TABLE `interdril_files_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `interdril_files_images_translations`
--
ALTER TABLE `interdril_files_images_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `interdril_files_rotary_drilling`
--
ALTER TABLE `interdril_files_rotary_drilling`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `interdril_files_rotary_drilling_translations`
--
ALTER TABLE `interdril_files_rotary_drilling_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `interdril_files_services`
--
ALTER TABLE `interdril_files_services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `interdril_files_services_translations`
--
ALTER TABLE `interdril_files_services_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `interdril_jobs`
--
ALTER TABLE `interdril_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `interdril_migrations`
--
ALTER TABLE `interdril_migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `interdril_navigation_links`
--
ALTER TABLE `interdril_navigation_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `interdril_navigation_links_allowed_roles`
--
ALTER TABLE `interdril_navigation_links_allowed_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `interdril_navigation_menus`
--
ALTER TABLE `interdril_navigation_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `interdril_navigation_menus_translations`
--
ALTER TABLE `interdril_navigation_menus_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `interdril_pages_default_pages`
--
ALTER TABLE `interdril_pages_default_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `interdril_pages_default_pages_translations`
--
ALTER TABLE `interdril_pages_default_pages_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `interdril_pages_pages`
--
ALTER TABLE `interdril_pages_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `interdril_pages_pages_allowed_roles`
--
ALTER TABLE `interdril_pages_pages_allowed_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `interdril_pages_pages_translations`
--
ALTER TABLE `interdril_pages_pages_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `interdril_pages_page_with_animation_image_pages`
--
ALTER TABLE `interdril_pages_page_with_animation_image_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `interdril_pages_page_with_animation_image_pages_images`
--
ALTER TABLE `interdril_pages_page_with_animation_image_pages_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;
--
-- AUTO_INCREMENT for table `interdril_pages_page_with_animation_image_pages_translations`
--
ALTER TABLE `interdril_pages_page_with_animation_image_pages_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `interdril_pages_types`
--
ALTER TABLE `interdril_pages_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `interdril_pages_types_translations`
--
ALTER TABLE `interdril_pages_types_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `interdril_page_link_type_pages`
--
ALTER TABLE `interdril_page_link_type_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `interdril_page_link_type_pages_translations`
--
ALTER TABLE `interdril_page_link_type_pages_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `interdril_posts_categories`
--
ALTER TABLE `interdril_posts_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `interdril_posts_categories_translations`
--
ALTER TABLE `interdril_posts_categories_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `interdril_posts_default_posts`
--
ALTER TABLE `interdril_posts_default_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `interdril_posts_default_posts_translations`
--
ALTER TABLE `interdril_posts_default_posts_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `interdril_posts_posts`
--
ALTER TABLE `interdril_posts_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `interdril_posts_posts_translations`
--
ALTER TABLE `interdril_posts_posts_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `interdril_posts_types`
--
ALTER TABLE `interdril_posts_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `interdril_posts_types_translations`
--
ALTER TABLE `interdril_posts_types_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `interdril_preferences_preferences`
--
ALTER TABLE `interdril_preferences_preferences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `interdril_redirects_redirects`
--
ALTER TABLE `interdril_redirects_redirects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `interdril_settings_settings`
--
ALTER TABLE `interdril_settings_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `interdril_streams_assignments`
--
ALTER TABLE `interdril_streams_assignments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;
--
-- AUTO_INCREMENT for table `interdril_streams_assignments_translations`
--
ALTER TABLE `interdril_streams_assignments_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;
--
-- AUTO_INCREMENT for table `interdril_streams_fields`
--
ALTER TABLE `interdril_streams_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;
--
-- AUTO_INCREMENT for table `interdril_streams_fields_translations`
--
ALTER TABLE `interdril_streams_fields_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;
--
-- AUTO_INCREMENT for table `interdril_streams_streams`
--
ALTER TABLE `interdril_streams_streams`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `interdril_streams_streams_translations`
--
ALTER TABLE `interdril_streams_streams_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `interdril_url_link_type_urls`
--
ALTER TABLE `interdril_url_link_type_urls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `interdril_url_link_type_urls_translations`
--
ALTER TABLE `interdril_url_link_type_urls_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `interdril_users_roles`
--
ALTER TABLE `interdril_users_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `interdril_users_roles_translations`
--
ALTER TABLE `interdril_users_roles_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `interdril_users_users`
--
ALTER TABLE `interdril_users_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `interdril_users_users_roles`
--
ALTER TABLE `interdril_users_users_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
