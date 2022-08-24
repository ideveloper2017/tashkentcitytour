-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Aug 24, 2022 at 05:10 AM
-- Server version: 5.7.34
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tashkentcitytour`
--

-- --------------------------------------------------------

--
-- Table structure for table `activations`
--

CREATE TABLE `activations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activations`
--

INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'KSO1c7xMqEJZuPiRSYVH1tb7OQG3y4aL', 1, '2022-08-23 15:27:18', '2022-08-23 15:27:18', '2022-08-23 15:27:18');

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint(20) NOT NULL DEFAULT '0',
  `order` int(11) DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `audit_histories`
--

CREATE TABLE `audit_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` text COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` int(10) UNSIGNED NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audit_histories`
--

INSERT INTO `audit_histories` (`id`, `user_id`, `module`, `request`, `action`, `user_agent`, `ip_address`, `reference_user`, `reference_id`, `reference_name`, `type`, `created_at`, `updated_at`) VALUES
(1, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '::1', 0, 1, 'Bahrom Parpiyev', 'info', '2022-08-23 15:28:22', '2022-08-23 15:28:22'),
(2, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '::1', 0, 1, 'Bahrom Parpiyev', 'info', '2022-08-23 21:18:45', '2022-08-23 21:18:45'),
(3, 1, 'menu', '{\"name\":\"mainmenu\",\"submit\":\"save\",\"status\":\"published\"}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '::1', 1, 1, 'mainmenu', 'info', '2022-08-23 22:06:41', '2022-08-23 22:06:41'),
(4, 1, 'category', '{\"name\":\"Yangiliklar\",\"slug\":null,\"slug_id\":\"0\",\"is_slug_editable\":\"1\",\"model\":\"Botble\\\\Blog\\\\Models\\\\Category\",\"parent_id\":\"0\",\"description\":null,\"is_default\":\"0\",\"icon\":null,\"order\":\"0\",\"is_featured\":\"0\",\"status\":\"published\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\"}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '::1', 1, 1, 'Yangiliklar', 'info', '2022-08-23 22:08:16', '2022-08-23 22:08:16'),
(5, 1, 'menu', '{\"name\":\"mainmenu\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"Home\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"custom-link\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"Home\",\"custom-url\":null,\"icon-font\":null,\"class\":null,\"submit\":\"apply\",\"language\":\"uz_UZ\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '::1', 1, 1, 'mainmenu', 'primary', '2022-08-23 22:08:37', '2022-08-23 22:08:37'),
(6, 1, 'menu', '{\"name\":\"mainmenu\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/\\\",\\\"id\\\":1,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"Home\\\",\\\"referenceId\\\":0,\\\"referenceType\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"Home\",\"custom-url\":\"\\/\",\"icon-font\":null,\"class\":null,\"locations\":[\"main-menu\"],\"submit\":\"apply\",\"language\":\"uz_UZ\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '::1', 1, 1, 'mainmenu', 'primary', '2022-08-23 22:08:49', '2022-08-23 22:08:49'),
(7, 1, 'menu_location', '{\"name\":\"mainmenu\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/\\\",\\\"id\\\":1,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"Home\\\",\\\"referenceId\\\":0,\\\"referenceType\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"Home\",\"custom-url\":\"\\/\",\"icon-font\":null,\"class\":null,\"locations\":[\"main-menu\"],\"submit\":\"apply\",\"language\":\"uz_UZ\",\"ref_from\":null,\"status\":\"published\"}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '::1', 1, 1, 'ID: 1', 'info', '2022-08-23 22:08:49', '2022-08-23 22:08:49'),
(8, 1, 'menu', '{\"name\":\"main-menu\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/\\\",\\\"id\\\":1,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"Home\\\",\\\"referenceId\\\":0,\\\"referenceType\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"Home\",\"custom-url\":\"\\/\",\"icon-font\":null,\"class\":null,\"locations\":[\"main-menu\"],\"submit\":\"apply\",\"language\":\"uz_UZ\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '::1', 1, 1, 'main-menu', 'primary', '2022-08-23 22:09:52', '2022-08-23 22:09:52'),
(9, 1, 'menu_location', '{\"name\":\"main-menu\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/\\\",\\\"id\\\":1,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"Home\\\",\\\"referenceId\\\":0,\\\"referenceType\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"Home\",\"custom-url\":\"\\/\",\"icon-font\":null,\"class\":null,\"locations\":[\"main-menu\"],\"submit\":\"apply\",\"language\":\"uz_UZ\",\"ref_from\":null,\"status\":\"published\"}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '::1', 1, 1, 'ID: 1', 'info', '2022-08-23 22:09:52', '2022-08-23 22:09:52'),
(10, 1, 'page', '{\"name\":\"Home page\",\"slug\":\"home-page\",\"slug_id\":\"0\",\"is_slug_editable\":\"1\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":null,\"is_featured\":\"0\",\"content\":\"<shortcode class=\\\"bb-shortcode\\\">[blog-posts paginate=\\\"12\\\"][\\/blog-posts]<\\/shortcode>\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"apply\",\"status\":\"published\",\"template\":\"default\",\"image\":null}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '::1', 1, 1, 'Home page', 'info', '2022-08-23 22:11:00', '2022-08-23 22:11:00'),
(11, 1, 'page', '{\"name\":\"Home page\",\"slug\":\"home-page\",\"slug_id\":\"2\",\"is_slug_editable\":\"1\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":null,\"is_featured\":\"0\",\"content\":\"<shortcode class=\\\"bb-shortcode\\\">[blog-posts paginate=\\\"12\\\"][\\/blog-posts]<\\/shortcode>\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"uz_UZ\",\"status\":\"published\",\"template\":\"default\",\"image\":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '::1', 1, 1, 'Home page', 'primary', '2022-08-23 22:11:03', '2022-08-23 22:11:03'),
(12, 1, 'page', '{\"name\":\"\\u041e \\u041d\\u0410\\u0421\",\"slug\":\"o-nas\",\"slug_id\":\"0\",\"is_slug_editable\":\"1\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":null,\"is_featured\":\"0\",\"content\":\"<h3 style=\\\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansLight, Arial, sans-serif;font-size:30px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:500;letter-spacing:normal;line-height:1.1;margin-bottom:10px;margin-top:20px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\\\">\\u0424\\u043e\\u0440\\u043c\\u0430 \\u043e\\u043f\\u043b\\u0430\\u0442\\u044b \\u043b\\u044e\\u0431\\u0430\\u044f!<\\/h3><p style=\\\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\\\">\\u041d\\u0430\\u0447\\u0430\\u043b\\u043e \\u0441\\u0438\\u0442\\u0438 \\u0442\\u0443\\u0440\\u0430 \\u043e\\u0442 \\u0421\\u043a\\u0432\\u0435\\u0440\\u0430 \\u0410\\u043c\\u0438\\u0440\\u0430 \\u0422\\u0435\\u043c\\u0443\\u0440\\u0430 \\u043d\\u0430\\u043f\\u0440\\u043e\\u0442\\u0438\\u0432 \\u0433\\u043e\\u0441\\u0442\\u0438\\u043d\\u0438\\u0446\\u044b \\u0423\\u0437\\u0431\\u0435\\u043a\\u0438\\u0441\\u0442\\u0430\\u043d.<\\/p><p style=\\\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\\\">\\u0411\\u0438\\u043b\\u0435\\u0442\\u044b \\u0432\\u044b\\u043a\\u0443\\u043f\\u0430\\u0435\\u0442\\u0435 \\u043f\\u0440\\u044f\\u043c\\u043e \\u0432 \\u0430\\u0432\\u0442\\u043e\\u0431\\u0443\\u0441\\u0435 \\u0437\\u0430 15 \\u043c\\u0438\\u043d\\u0443\\u0442 \\u043e\\u0442 \\u0432\\u044b\\u0431\\u0440\\u0430\\u043d\\u043d\\u043e\\u0433\\u043e \\u0432\\u0440\\u0435\\u043c\\u0435\\u043d\\u0438.<\\/p><p style=\\\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\\\">\\u041f\\u043e\\u0440\\u044f\\u0434\\u043e\\u043a \\u0436\\u0438\\u0432\\u043e\\u0439 \\u043e\\u0447\\u0435\\u0440\\u0435\\u0434\\u0438, \\u043c\\u044b \\u043d\\u0435 \\u0431\\u0440\\u043e\\u043d\\u0438\\u0440\\u0443\\u0435\\u043c \\u043c\\u0435\\u0441\\u0442\\u0430.<\\/p><p style=\\\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\\\">\\u0410\\u0432\\u0442\\u043e\\u0431\\u0443\\u0441 \\u043f\\u043e\\u0435\\u0434\\u0435\\u0442 \\u0441\\u0442\\u0440\\u043e\\u0433\\u043e \\u043f\\u043e \\u0433\\u0440\\u0430\\u0444\\u0438\\u043a\\u0443 \\u043f\\u0440\\u0438 \\u043d\\u0430\\u0431\\u043e\\u0440\\u0435 \\u043c\\u0438\\u043d\\u0438\\u043c\\u0430\\u043b\\u044c\\u043d\\u043e\\u0433\\u043e \\u043a\\u043e\\u043b\\u0438\\u0447\\u0435\\u0441\\u0442\\u0432\\u0430 6 \\u0447\\u0435\\u043b\\u043e\\u0432\\u0435\\u043a! \\u0412 \\u0441\\u043b\\u0443\\u0447\\u0430\\u0435 \\u043d\\u0435\\u0434\\u043e\\u0431\\u043e\\u0440\\u0430 \\u043e\\u0436\\u0438\\u0434\\u0430\\u043d\\u0438\\u0435 \\u0434\\u043e \\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0435\\u0433\\u043e \\u0440\\u0435\\u0439\\u0441\\u0430!!!<\\/p><p style=\\\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\\\">\\u041f\\u0440\\u043e\\u0434\\u043e\\u043b\\u0436\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u044c 2 \\u0447\\u0430\\u0441\\u0430, 3 \\u043e\\u0441\\u0442\\u0430\\u043d\\u043e\\u0432\\u043a\\u0438:<br>&nbsp;<\\/p><ul><li style=\\\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin-bottom:10px;margin-top:0px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\\\">\\u041c\\u0435\\u043c\\u043e\\u0440\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u043a\\u043e\\u043c\\u043f\\u043b\\u0435\\u043a\\u0441 \\u00ab\\u0428\\u0430\\u0445\\u0438\\u0434\\u043b\\u0430\\u0440 \\u043c\\u0430\\u0439\\u0434\\u043e\\u043d\\u0438\\u00bb-10 \\u043c\\u0438\\u043d\\u0443\\u0442<\\/li><li style=\\\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin-bottom:10px;margin-top:0px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\\\">\\u041c\\u0435\\u0447\\u0435\\u0442\\u044c \\u041c\\u0438\\u043d\\u043e\\u0440-10 \\u043c\\u0438\\u043d\\u0443\\u0442<\\/li><li style=\\\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin-bottom:10px;margin-top:0px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\\\">\\u041a\\u043e\\u043c\\u043f\\u043b\\u0435\\u043a\\u0441 \\u00ab\\u0425\\u0430\\u0441\\u0442 \\u0418\\u043c\\u0430\\u043c\\u00bb -20 \\u043c\\u0438\\u043d\\u0443\\u0442<\\/li><\\/ul><p style=\\\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\\\">\\u0412 \\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u044c \\u0432\\u0445\\u043e\\u0434\\u0438\\u0442 \\u044d\\u043a\\u0441\\u043a\\u0443\\u0440\\u0441\\u0438\\u044f \\u0441 \\u0430\\u0443\\u0434\\u0438\\u043e \\u0433\\u0438\\u0434\\u043e\\u043c \\u043d\\u0430 8 \\u044f\\u0437\\u044b\\u043a\\u0430\\u0445.<\\/p><p style=\\\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\\\">\\u0413\\u0440\\u0430\\u0444\\u0438\\u043a: \\u041e\\u0442\\u043f\\u0440\\u0430\\u0432\\u043a\\u0430 \\u043e\\u0442 \\u0433\\u043e\\u0441\\u0442\\u0438\\u043d\\u0438\\u0446\\u044b \\u0423\\u0437\\u0431\\u0435\\u043a\\u0438\\u0441\\u0442\\u0430\\u043d \\u043a\\u0430\\u0436\\u0434\\u044b\\u0439 \\u0434\\u0435\\u043d\\u044c \\u0441 10:00 \\u0434\\u043e 17:00 \\u043a\\u0430\\u0436\\u0434\\u044b\\u0439 \\u0447\\u0430\\u0441<\\/p><h4 style=\\\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansLight, Arial, sans-serif;font-size:18px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:500;letter-spacing:normal;line-height:1.1;margin-bottom:10px;margin-top:10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\\\">\\u041d\\u0430\\u0448\\u0438 \\u0442\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d\\u044b:<br><br>+998 99 945-13-13<br><br>+998 90 843-13-13<\\/h4>\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"template\":\"default\",\"image\":null}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '::1', 1, 2, 'О НАС', 'info', '2022-08-23 22:16:54', '2022-08-23 22:16:54'),
(13, 1, 'menu', '{\"name\":\"main-menu\",\"deleted_nodes\":\"1\",\"menu_nodes\":\"[{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"\\u0411\\u043e\\u0448 \\u0441\\u0430\\u0445\\u0438\\u0444\\u0430\\\",\\\"referenceId\\\":\\\"1\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"\\u041e \\u041d\\u0410\\u0421\\\",\\\"referenceId\\\":\\\"2\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":1,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"\\u041e \\u041d\\u0410\\u0421\",\"icon-font\":null,\"class\":null,\"locations\":[\"main-menu\"],\"submit\":\"apply\",\"language\":\"uz_UZ\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '::1', 1, 1, 'main-menu', 'primary', '2022-08-23 22:18:21', '2022-08-23 22:18:21'),
(14, 1, 'menu_location', '{\"name\":\"main-menu\",\"deleted_nodes\":\"1\",\"menu_nodes\":\"[{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"\\u0411\\u043e\\u0448 \\u0441\\u0430\\u0445\\u0438\\u0444\\u0430\\\",\\\"referenceId\\\":\\\"1\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"\\u041e \\u041d\\u0410\\u0421\\\",\\\"referenceId\\\":\\\"2\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":1,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"\\u041e \\u041d\\u0410\\u0421\",\"icon-font\":null,\"class\":null,\"locations\":[\"main-menu\"],\"submit\":\"apply\",\"language\":\"uz_UZ\",\"ref_from\":null,\"status\":\"published\"}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '::1', 1, 1, 'ID: 1', 'info', '2022-08-23 22:18:21', '2022-08-23 22:18:21'),
(15, 1, 'menu', '{\"name\":\"main-menu\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"title\\\":\\\"\\u0411\\u041e\\u0428 \\u0421\\u0410\\u0425\\u0418\\u0424\\u0410\\\",\\\"id\\\":\\\"2\\\",\\\"referenceId\\\":\\\"1\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"customUrl\\\":\\\"http:\\/\\/tashkentcitytour.loc\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"id\\\":\\\"3\\\",\\\"title\\\":\\\"\\u041e \\u041d\\u0410\\u0421\\\",\\\"referenceId\\\":\\\"2\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"customUrl\\\":\\\"\\/uz\\/o-nas\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":1,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"\\u041e \\u041d\\u0410\\u0421\",\"icon-font\":null,\"class\":null,\"locations\":[\"main-menu\"],\"submit\":\"apply\",\"language\":\"uz_UZ\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '::1', 1, 1, 'main-menu', 'primary', '2022-08-23 22:18:42', '2022-08-23 22:18:42'),
(16, 1, 'menu_location', '{\"name\":\"main-menu\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"title\\\":\\\"\\u0411\\u041e\\u0428 \\u0421\\u0410\\u0425\\u0418\\u0424\\u0410\\\",\\\"id\\\":\\\"2\\\",\\\"referenceId\\\":\\\"1\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"customUrl\\\":\\\"http:\\/\\/tashkentcitytour.loc\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"id\\\":\\\"3\\\",\\\"title\\\":\\\"\\u041e \\u041d\\u0410\\u0421\\\",\\\"referenceId\\\":\\\"2\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"customUrl\\\":\\\"\\/uz\\/o-nas\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":1,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"\\u041e \\u041d\\u0410\\u0421\",\"icon-font\":null,\"class\":null,\"locations\":[\"main-menu\"],\"submit\":\"apply\",\"language\":\"uz_UZ\",\"ref_from\":null,\"status\":\"published\"}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '::1', 1, 1, 'ID: 1', 'info', '2022-08-23 22:18:42', '2022-08-23 22:18:42'),
(17, 1, 'menu', '{\"name\":\"main-menu\",\"deleted_nodes\":\"2\",\"menu_nodes\":\"[{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/uz\\/o-nas\\\",\\\"id\\\":3,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"\\u041e \\u041d\\u0410\\u0421\\\",\\\"referenceId\\\":2,\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"position\\\":0,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"\\u041e \\u041d\\u0410\\u0421\",\"icon-font\":null,\"class\":null,\"locations\":[\"main-menu\"],\"submit\":\"save\",\"language\":\"uz_UZ\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '::1', 1, 1, 'main-menu', 'primary', '2022-08-23 22:18:57', '2022-08-23 22:18:57'),
(18, 1, 'menu_location', '{\"name\":\"main-menu\",\"deleted_nodes\":\"2\",\"menu_nodes\":\"[{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/uz\\/o-nas\\\",\\\"id\\\":3,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"\\u041e \\u041d\\u0410\\u0421\\\",\\\"referenceId\\\":2,\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"position\\\":0,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"\\u041e \\u041d\\u0410\\u0421\",\"icon-font\":null,\"class\":null,\"locations\":[\"main-menu\"],\"submit\":\"save\",\"language\":\"uz_UZ\",\"ref_from\":null,\"status\":\"published\"}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '::1', 1, 1, 'ID: 1', 'info', '2022-08-23 22:18:57', '2022-08-23 22:18:57'),
(19, 1, 'menu', '{\"name\":\"main-menu\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"id\\\":\\\"3\\\",\\\"title\\\":\\\"\\u041e \\u041d\\u0410\\u0421\\\",\\\"referenceId\\\":\\\"2\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"customUrl\\\":\\\"\\/uz\\/o-nas\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"\\u041c\\u0410\\u0420\\u0428\\u0420\\u0423\\u0422\\u042b\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"custom-link\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"\\u0420\\u0410\\u0421\\u041f\\u0418\\u0421\\u0410\\u041d\\u0418\\u0415\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"custom-link\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":2,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"\\u0420\\u0410\\u0421\\u041f\\u0418\\u0421\\u0410\\u041d\\u0418\\u0415\",\"icon-font\":null,\"class\":null,\"custom-url\":null,\"locations\":[\"main-menu\"],\"submit\":\"apply\",\"language\":\"uz_UZ\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '::1', 1, 1, 'main-menu', 'primary', '2022-08-23 22:19:26', '2022-08-23 22:19:26'),
(20, 1, 'menu_location', '{\"name\":\"main-menu\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"id\\\":\\\"3\\\",\\\"title\\\":\\\"\\u041e \\u041d\\u0410\\u0421\\\",\\\"referenceId\\\":\\\"2\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"customUrl\\\":\\\"\\/uz\\/o-nas\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"\\u041c\\u0410\\u0420\\u0428\\u0420\\u0423\\u0422\\u042b\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"custom-link\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"\\u0420\\u0410\\u0421\\u041f\\u0418\\u0421\\u0410\\u041d\\u0418\\u0415\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"custom-link\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":2,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"\\u0420\\u0410\\u0421\\u041f\\u0418\\u0421\\u0410\\u041d\\u0418\\u0415\",\"icon-font\":null,\"class\":null,\"custom-url\":null,\"locations\":[\"main-menu\"],\"submit\":\"apply\",\"language\":\"uz_UZ\",\"ref_from\":null,\"status\":\"published\"}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '::1', 1, 1, 'ID: 1', 'info', '2022-08-23 22:19:26', '2022-08-23 22:19:26'),
(21, 1, 'menu', '{\"name\":\"main-menu\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"id\\\":\\\"3\\\",\\\"title\\\":\\\"\\u041e \\u041d\\u0410\\u0421\\\",\\\"referenceId\\\":\\\"2\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"customUrl\\\":\\\"\\/uz\\/o-nas\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"id\\\":\\\"4\\\",\\\"title\\\":\\\"\\u041c\\u0410\\u0420\\u0428\\u0420\\u0423\\u0422\\u042b\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"id\\\":\\\"5\\\",\\\"title\\\":\\\"\\u0420\\u0410\\u0421\\u041f\\u0418\\u0421\\u0410\\u041d\\u0418\\u0415\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":2,\\\"children\\\":[]},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"\\u0426\\u0415\\u041d\\u042b\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"custom-link\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":3,\\\"children\\\":[]},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"\\u0420\\u0415\\u041a\\u041b\\u0410\\u041c\\u0410\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"custom-link\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":4,\\\"children\\\":[]},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"\\u0410\\u0420\\u0415\\u041d\\u0414\\u0410\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"custom-link\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":5,\\\"children\\\":[]},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"\\u041d\\u0410\\u0428\\u0418 \\u0413\\u0418\\u0414\\u042b\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"custom-link\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":6,\\\"children\\\":[]},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"\\u041a\\u041e\\u041d\\u0422\\u0410\\u041a\\u0422\\u042b\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"custom-link\\\",\\\"customUrl\\\":\\\"\\/contact\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":7,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"\\u041a\\u041e\\u041d\\u0422\\u0410\\u041a\\u0422\\u042b\",\"icon-font\":null,\"class\":null,\"custom-url\":\"\\/contact\",\"locations\":[\"main-menu\"],\"submit\":\"apply\",\"language\":\"uz_UZ\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '::1', 1, 1, 'main-menu', 'primary', '2022-08-23 22:20:35', '2022-08-23 22:20:35'),
(22, 1, 'menu_location', '{\"name\":\"main-menu\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"id\\\":\\\"3\\\",\\\"title\\\":\\\"\\u041e \\u041d\\u0410\\u0421\\\",\\\"referenceId\\\":\\\"2\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"customUrl\\\":\\\"\\/uz\\/o-nas\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"id\\\":\\\"4\\\",\\\"title\\\":\\\"\\u041c\\u0410\\u0420\\u0428\\u0420\\u0423\\u0422\\u042b\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"id\\\":\\\"5\\\",\\\"title\\\":\\\"\\u0420\\u0410\\u0421\\u041f\\u0418\\u0421\\u0410\\u041d\\u0418\\u0415\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":2,\\\"children\\\":[]},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"\\u0426\\u0415\\u041d\\u042b\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"custom-link\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":3,\\\"children\\\":[]},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"\\u0420\\u0415\\u041a\\u041b\\u0410\\u041c\\u0410\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"custom-link\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":4,\\\"children\\\":[]},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"\\u0410\\u0420\\u0415\\u041d\\u0414\\u0410\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"custom-link\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":5,\\\"children\\\":[]},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"\\u041d\\u0410\\u0428\\u0418 \\u0413\\u0418\\u0414\\u042b\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"custom-link\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":6,\\\"children\\\":[]},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"\\u041a\\u041e\\u041d\\u0422\\u0410\\u041a\\u0422\\u042b\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"custom-link\\\",\\\"customUrl\\\":\\\"\\/contact\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":7,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"\\u041a\\u041e\\u041d\\u0422\\u0410\\u041a\\u0422\\u042b\",\"icon-font\":null,\"class\":null,\"custom-url\":\"\\/contact\",\"locations\":[\"main-menu\"],\"submit\":\"apply\",\"language\":\"uz_UZ\",\"ref_from\":null,\"status\":\"published\"}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '::1', 1, 1, 'ID: 1', 'info', '2022-08-23 22:20:35', '2022-08-23 22:20:35'),
(23, 1, 'page', '{\"name\":\"\\u041a\\u041e\\u041d\\u0422\\u0410\\u041a\\u0422\\u042b\",\"slug\":\"kontakty\",\"slug_id\":\"0\",\"is_slug_editable\":\"1\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":null,\"is_featured\":\"0\",\"content\":\"<shortcode class=\\\"bb-shortcode\\\">[google-map][\\/google-map]<\\/shortcode><shortcode class=\\\"bb-shortcode\\\">[contact-form][\\/contact-form]<\\/shortcode>\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"apply\",\"status\":\"published\",\"template\":\"default\",\"image\":null}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '::1', 1, 3, 'КОНТАКТЫ', 'info', '2022-08-23 22:23:38', '2022-08-23 22:23:38'),
(24, 1, 'menu', '{\"name\":\"main-menu\",\"deleted_nodes\":\"10\",\"menu_nodes\":\"[{\\\"id\\\":\\\"3\\\",\\\"title\\\":\\\"\\u041e \\u041d\\u0410\\u0421\\\",\\\"referenceId\\\":\\\"2\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"customUrl\\\":\\\"\\/uz\\/o-nas\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"id\\\":\\\"4\\\",\\\"title\\\":\\\"\\u041c\\u0410\\u0420\\u0428\\u0420\\u0423\\u0422\\u042b\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"id\\\":\\\"5\\\",\\\"title\\\":\\\"\\u0420\\u0410\\u0421\\u041f\\u0418\\u0421\\u0410\\u041d\\u0418\\u0415\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":2,\\\"children\\\":[]},{\\\"id\\\":\\\"6\\\",\\\"title\\\":\\\"\\u0426\\u0415\\u041d\\u042b\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":3,\\\"children\\\":[]},{\\\"id\\\":\\\"7\\\",\\\"title\\\":\\\"\\u0420\\u0415\\u041a\\u041b\\u0410\\u041c\\u0410\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":4,\\\"children\\\":[]},{\\\"id\\\":\\\"8\\\",\\\"title\\\":\\\"\\u0410\\u0420\\u0415\\u041d\\u0414\\u0410\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":5,\\\"children\\\":[]},{\\\"id\\\":\\\"9\\\",\\\"title\\\":\\\"\\u041d\\u0410\\u0428\\u0418 \\u0413\\u0418\\u0414\\u042b\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":6,\\\"children\\\":[]},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"\\u041a\\u041e\\u041d\\u0422\\u0410\\u041a\\u0422\\u042b\\\",\\\"referenceId\\\":\\\"3\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":7,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"\\u041a\\u041e\\u041d\\u0422\\u0410\\u041a\\u0422\\u042b\",\"icon-font\":null,\"class\":null,\"custom-url\":\"\\/\",\"locations\":[\"main-menu\"],\"submit\":\"apply\",\"language\":\"uz_UZ\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '::1', 1, 1, 'main-menu', 'primary', '2022-08-23 22:23:57', '2022-08-23 22:23:57'),
(25, 1, 'menu_location', '{\"name\":\"main-menu\",\"deleted_nodes\":\"10\",\"menu_nodes\":\"[{\\\"id\\\":\\\"3\\\",\\\"title\\\":\\\"\\u041e \\u041d\\u0410\\u0421\\\",\\\"referenceId\\\":\\\"2\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"customUrl\\\":\\\"\\/uz\\/o-nas\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"id\\\":\\\"4\\\",\\\"title\\\":\\\"\\u041c\\u0410\\u0420\\u0428\\u0420\\u0423\\u0422\\u042b\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"id\\\":\\\"5\\\",\\\"title\\\":\\\"\\u0420\\u0410\\u0421\\u041f\\u0418\\u0421\\u0410\\u041d\\u0418\\u0415\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":2,\\\"children\\\":[]},{\\\"id\\\":\\\"6\\\",\\\"title\\\":\\\"\\u0426\\u0415\\u041d\\u042b\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":3,\\\"children\\\":[]},{\\\"id\\\":\\\"7\\\",\\\"title\\\":\\\"\\u0420\\u0415\\u041a\\u041b\\u0410\\u041c\\u0410\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":4,\\\"children\\\":[]},{\\\"id\\\":\\\"8\\\",\\\"title\\\":\\\"\\u0410\\u0420\\u0415\\u041d\\u0414\\u0410\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":5,\\\"children\\\":[]},{\\\"id\\\":\\\"9\\\",\\\"title\\\":\\\"\\u041d\\u0410\\u0428\\u0418 \\u0413\\u0418\\u0414\\u042b\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":6,\\\"children\\\":[]},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"\\u041a\\u041e\\u041d\\u0422\\u0410\\u041a\\u0422\\u042b\\\",\\\"referenceId\\\":\\\"3\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":7,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"\\u041a\\u041e\\u041d\\u0422\\u0410\\u041a\\u0422\\u042b\",\"icon-font\":null,\"class\":null,\"custom-url\":\"\\/\",\"locations\":[\"main-menu\"],\"submit\":\"apply\",\"language\":\"uz_UZ\",\"ref_from\":null,\"status\":\"published\"}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '::1', 1, 1, 'ID: 1', 'info', '2022-08-23 22:23:57', '2022-08-23 22:23:57'),
(26, 1, 'page', '{\"name\":\"Home page\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":null,\"is_featured\":\"0\",\"content\":\"<shortcode class=\\\"bb-shortcode\\\">[section-area]A Luxury Stay[\\/section-area]<\\/shortcode><shortcode class=\\\"bb-shortcode\\\">[blog-posts paginate=\\\"12\\\"][\\/blog-posts]<\\/shortcode>\",\"gallery\":null,\"submit\":\"apply\",\"language\":\"uz_UZ\",\"status\":\"published\",\"template\":\"default\",\"image\":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '::1', 1, 1, 'Home page', 'primary', '2022-08-23 22:37:38', '2022-08-23 22:37:38'),
(27, 1, 'page', '{\"name\":\"Home page\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":null,\"is_featured\":\"0\",\"content\":\"<shortcode class=\\\"bb-shortcode\\\">[section-area]A Luxury Stay[\\/section-area]<\\/shortcode><shortcode class=\\\"bb-shortcode\\\">[blog-posts paginate=\\\"12\\\"][\\/blog-posts]<\\/shortcode>\",\"gallery\":null,\"submit\":\"apply\",\"language\":\"uz_UZ\",\"status\":\"published\",\"template\":\"default\",\"image\":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '::1', 1, 1, 'Home page', 'primary', '2022-08-23 22:38:44', '2022-08-23 22:38:44'),
(28, 1, 'page', '{\"name\":\"Home page\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":null,\"is_featured\":\"0\",\"content\":\"<shortcode class=\\\"bb-shortcode\\\">[section-area]A Luxury Stay[\\/section-area]<\\/shortcode><shortcode class=\\\"bb-shortcode\\\">[search-filter][\\/search-filter]<\\/shortcode><shortcode class=\\\"bb-shortcode\\\">[blog-posts paginate=\\\"12\\\"][\\/blog-posts]<\\/shortcode>\",\"gallery\":null,\"submit\":\"apply\",\"language\":\"uz_UZ\",\"status\":\"published\",\"template\":\"default\",\"image\":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '::1', 1, 1, 'Home page', 'primary', '2022-08-23 22:52:21', '2022-08-23 22:52:21'),
(29, 1, 'page', '{\"name\":\"Home page\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":null,\"is_featured\":\"0\",\"content\":\"<shortcode class=\\\"bb-shortcode\\\">[section-area]A Luxury Stay[\\/section-area]<\\/shortcode><shortcode class=\\\"bb-shortcode\\\">[search-filter][\\/search-filter]<\\/shortcode><shortcode class=\\\"bb-shortcode\\\">[section-intro][\\/section-intro]<\\/shortcode><shortcode class=\\\"bb-shortcode\\\">[blog-posts paginate=\\\"12\\\"][\\/blog-posts]<\\/shortcode>\",\"gallery\":null,\"submit\":\"apply\",\"language\":\"uz_UZ\",\"status\":\"published\",\"template\":\"default\",\"image\":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '::1', 1, 1, 'Home page', 'primary', '2022-08-23 22:54:23', '2022-08-23 22:54:23'),
(30, 1, 'page', '{\"name\":\"Home page\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":null,\"is_featured\":\"0\",\"content\":\"<shortcode class=\\\"bb-shortcode\\\">[section-area]A Luxury Stay[\\/section-area]<\\/shortcode><shortcode class=\\\"bb-shortcode\\\">[search-filter][\\/search-filter]<\\/shortcode><shortcode class=\\\"bb-shortcode\\\">[section-intro][\\/section-intro]<\\/shortcode><shortcode class=\\\"bb-shortcode\\\">[section-facilities][\\/section-facilities]<\\/shortcode><shortcode class=\\\"bb-shortcode\\\">[blog-posts paginate=\\\"12\\\"][\\/blog-posts]<\\/shortcode>\",\"gallery\":null,\"submit\":\"apply\",\"language\":\"uz_UZ\",\"status\":\"published\",\"template\":\"default\",\"image\":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '::1', 1, 1, 'Home page', 'primary', '2022-08-23 22:56:53', '2022-08-23 22:56:53'),
(31, 1, 'page', '{\"name\":\"Home page\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":null,\"is_featured\":\"0\",\"content\":\"<shortcode class=\\\"bb-shortcode\\\">[section-area]A Luxury Stay[\\/section-area]<\\/shortcode><shortcode class=\\\"bb-shortcode\\\">[search-filter][\\/search-filter]<\\/shortcode><shortcode class=\\\"bb-shortcode\\\">[section-intro][\\/section-intro]<\\/shortcode><shortcode class=\\\"bb-shortcode\\\">[section-facilities][\\/section-facilities]<\\/shortcode><shortcode class=\\\"bb-shortcode\\\">[section-testimonial][\\/section-testimonial]<\\/shortcode><shortcode class=\\\"bb-shortcode\\\">[section-video][\\/section-video]<\\/shortcode><shortcode class=\\\"bb-shortcode\\\">[blog-posts paginate=\\\"12\\\"][\\/blog-posts]<\\/shortcode>\",\"gallery\":null,\"submit\":\"apply\",\"language\":\"uz_UZ\",\"status\":\"published\",\"template\":\"default\",\"image\":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '::1', 1, 1, 'Home page', 'primary', '2022-08-23 23:07:57', '2022-08-23 23:07:57'),
(32, 1, 'page', '{\"name\":\"Home page\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":null,\"is_featured\":\"0\",\"content\":\"<shortcode class=\\\"bb-shortcode\\\">[section-area]A Luxury Stay[\\/section-area]<\\/shortcode><shortcode class=\\\"bb-shortcode\\\">[search-filter][\\/search-filter]<\\/shortcode><shortcode class=\\\"bb-shortcode\\\">[section-intro][\\/section-intro]<\\/shortcode><shortcode class=\\\"bb-shortcode\\\">[section-facilities][\\/section-facilities]<\\/shortcode><shortcode class=\\\"bb-shortcode\\\">[section-testimonial][\\/section-testimonial]<\\/shortcode><shortcode class=\\\"bb-shortcode\\\">[section-video][\\/section-video]<\\/shortcode><shortcode class=\\\"bb-shortcode\\\">[homepage-about][\\/homepage-about]<\\/shortcode><shortcode class=\\\"bb-shortcode\\\">[blog-posts paginate=\\\"12\\\"][\\/blog-posts]<\\/shortcode>\",\"gallery\":null,\"submit\":\"apply\",\"language\":\"uz_UZ\",\"status\":\"published\",\"template\":\"default\",\"image\":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '::1', 1, 1, 'Home page', 'primary', '2022-08-23 23:14:27', '2022-08-23 23:14:27');
INSERT INTO `audit_histories` (`id`, `user_id`, `module`, `request`, `action`, `user_agent`, `ip_address`, `reference_user`, `reference_id`, `reference_name`, `type`, `created_at`, `updated_at`) VALUES
(33, 1, 'page', '{\"name\":\"\\u0420\\u0415\\u041a\\u041b\\u0410\\u041c\\u0410\",\"slug\":\"reklama\",\"slug_id\":\"0\",\"is_slug_editable\":\"1\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":null,\"is_featured\":\"0\",\"content\":\"<p style=\\\"-webkit-text-stroke-width:0px;background-color:rgb(243, 243, 243);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\\\"><strong style=\\\"box-sizing:border-box;font-family:OpenSansBold, Arial, sans-serif;font-weight:normal;outline:none;\\\"><u style=\\\"box-sizing:border-box;outline:none;\\\">\\u0420\\u0435\\u043a\\u043b\\u0430\\u043c\\u0430 \\u0434\\u0432\\u0438\\u0433\\u0430\\u0442\\u0435\\u043b\\u044c \\u0442\\u043e\\u0440\\u0433\\u043e\\u0432\\u043b\\u0438! \\u0410 \\u0434\\u0432\\u0438\\u0436\\u0443\\u0449\\u0430\\u044f\\u0441\\u044f&nbsp; \\u0440\\u0435\\u043a\\u043b\\u0430\\u043c\\u0430 \\u0434\\u0432\\u0438\\u0433\\u0430\\u0442\\u0435\\u043b\\u044c \\u0432\\u0434\\u0432\\u043e\\u0439\\u043d\\u0435 !<\\/u><\\/strong><\\/p><p style=\\\"-webkit-text-stroke-width:0px;background-color:rgb(243, 243, 243);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\\\">\\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u00abAZNUR TARVEL\\u00bb \\u0438\\u043c\\u0435\\u0435\\u0442 \\u0447\\u0435\\u0441\\u0442\\u044c \\u043f\\u0440\\u0435\\u0434\\u043b\\u043e\\u0436\\u0438\\u0442\\u044c \\u0412\\u0430\\u043c \\u0440\\u0430\\u0437\\u043c\\u0435\\u0449\\u0435\\u043d\\u0438\\u0435 \\u0440\\u0435\\u043a\\u043b\\u0430\\u043c\\u044b \\u043d\\u0430 \\u043d\\u0430\\u0448\\u0438\\u0445 \\u044d\\u043a\\u0441\\u043a\\u0443\\u0440\\u0441\\u0438\\u043e\\u043d\\u043d\\u044b\\u0445 \\u0430\\u0432\\u0442\\u043e\\u0431\\u0443\\u0441\\u0430\\u0445.<\\/p><p style=\\\"-webkit-text-stroke-width:0px;background-color:rgb(243, 243, 243);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\\\">\\u041d\\u0435 \\u0441\\u0442\\u043e\\u0438\\u0442 \\u0433\\u043e\\u0432\\u043e\\u0440\\u0438\\u0442\\u044c \\u043e \\u043f\\u043e\\u043f\\u0443\\u043b\\u044f\\u0440\\u043d\\u043e\\u0441\\u0442\\u0438 \\u0434\\u0430\\u043d\\u043d\\u044b\\u0445 \\u043c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442\\u043e\\u0432 \\u0443 \\u0433\\u043e\\u0441\\u0442\\u0435\\u0439 \\u0438 \\u0436\\u0438\\u0442\\u0435\\u043b\\u0435\\u0439 \\u0433\\u043e\\u0440\\u043e\\u0434\\u0430!<\\/p><p style=\\\"-webkit-text-stroke-width:0px;background-color:rgb(243, 243, 243);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\\\">\\u0410\\u0432\\u0442\\u043e\\u0431\\u0443\\u0441\\u044b \\u0441\\u043e\\u0432\\u0435\\u0440\\u0448\\u0430\\u044e\\u0442 \\u0441\\u0432\\u043e\\u0439 \\u043c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442 \\u043a\\u0430\\u0436\\u0434\\u044b\\u0439 \\u0447\\u0430\\u0441&nbsp; \\u043f\\u043e \\u0441\\u0430\\u043c\\u044b\\u043c \\u043b\\u0443\\u0447\\u0448\\u0438\\u043c \\u0438 \\u043f\\u043e\\u043f\\u0443\\u043b\\u044f\\u0440\\u043d\\u044b\\u043c \\u043c\\u0435\\u0441\\u0442\\u0430\\u043c \\u043d\\u0430\\u0448\\u0435\\u0433\\u043e&nbsp; \\u0433\\u043e\\u0440\\u043e\\u0434\\u0430. \\u0412\\u0430\\u0448\\u0443 \\u0440\\u0435\\u043a\\u043b\\u0430\\u043c\\u0443 \\u0443\\u0432\\u0438\\u0434\\u044f\\u0442 \\u043c\\u0438\\u043b\\u043b\\u0438\\u043e\\u043d\\u044b \\u0436\\u0438\\u0442\\u0435\\u043b\\u0435\\u0439 \\u0441\\u0442\\u043e\\u043b\\u0438\\u0446\\u044b . \\u041f\\u0440\\u0438 \\u044d\\u0442\\u043e\\u043c \\u043e\\u043d\\u0430 \\u0431\\u0443\\u0434\\u0435\\u0442 \\u0443 \\u043d\\u0438\\u0445 \\u043d\\u0430 \\u0432\\u0438\\u0434\\u0443 \\u043f\\u043e\\u0441\\u0442\\u043e\\u044f\\u043d\\u043d\\u043e \\u0438 \\u043a\\u0430\\u0436\\u0434\\u044b\\u0439 \\u0434\\u0435\\u043d\\u044c!<\\/p><p style=\\\"-webkit-text-stroke-width:0px;background-color:rgb(243, 243, 243);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\\\">\\u041d\\u0435 \\u0443\\u043f\\u0443\\u0441\\u0442\\u0438\\u0442\\u0435 \\u0432\\u043e\\u0437\\u043c\\u043e\\u0436\\u043d\\u043e\\u0441\\u0442\\u044c \\u0441\\u0434\\u0435\\u043b\\u0430\\u0442\\u044c \\u0412\\u0430\\u0448\\u0443 \\u0440\\u0435\\u043a\\u043b\\u0430\\u043c\\u0443 \\u043c\\u043e\\u0431\\u0438\\u043b\\u044c\\u043d\\u043e\\u0439 \\u0438 \\u043f\\u0440\\u0438\\u0432\\u043b\\u0435\\u043a\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0439 ! \\u041c\\u044b \\u0433\\u043e\\u0442\\u043e\\u0432\\u044b \\u043e\\u0431\\u0441\\u0443\\u0434\\u0438\\u0442\\u044c \\u0441 \\u0412\\u0430\\u043c\\u0438 \\u0434\\u0438\\u0437\\u0430\\u0439\\u043d \\u0412\\u0430\\u0448\\u0435\\u0439 \\u0440\\u0435\\u043a\\u043b\\u0430\\u043c\\u044b \\u0438\\u043b\\u0438 \\u0438\\u0437\\u0433\\u043e\\u0442\\u043e\\u0432\\u0438\\u0442\\u044c \\u0435\\u0433\\u043e \\u0441\\u0430\\u043c\\u0438 \\u043f\\u043e \\u0412\\u0430\\u0448\\u0435\\u043c\\u0443 \\u0437\\u0430\\u043a\\u0430\\u0437\\u0443.<\\/p><p style=\\\"-webkit-text-stroke-width:0px;background-color:rgb(243, 243, 243);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\\\">\\u0412\\u044b \\u043c\\u043e\\u0436\\u0435\\u0442\\u0435 \\u0440\\u0430\\u0437\\u043c\\u0435\\u0441\\u0442\\u0438\\u0442\\u044c&nbsp; \\u0441\\u0432\\u043e\\u044e \\u0440\\u0435\\u043a\\u043b\\u0430\\u043c\\u0443 \\u043d\\u0430 \\u0431\\u043e\\u0440\\u0442\\u0430\\u0445 \\u043d\\u0430\\u0448\\u0435\\u0433\\u043e \\u044d\\u043a\\u0441\\u043a\\u0443\\u0440\\u0441\\u0438\\u043e\\u043d\\u043d\\u043e\\u0433\\u043e \\u0430\\u0432\\u0442\\u043e\\u0431\\u0443\\u0441\\u0430.&nbsp; \\u0418 \\u0442\\u043e\\u0433\\u0434\\u0430 \\u0412\\u0430\\u0448\\u0443 \\u0440\\u0435\\u043a\\u043b\\u0430\\u043c\\u0443 \\u0443\\u0432\\u0438\\u0434\\u044f\\u0442 \\u043d\\u0435 \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e \\u043d\\u0430 \\u0443\\u043b\\u0438\\u0446\\u0430\\u0445 \\u0433\\u043e\\u0440\\u043e\\u0434\\u0430 \\u0432\\u043e \\u0432\\u0440\\u0435\\u043c\\u044f \\u043f\\u043e\\u0435\\u0437\\u0434\\u043a\\u0438 \\u043d\\u0430\\u0448\\u0438\\u0445 \\u0430\\u0432\\u0442\\u043e\\u0431\\u0443\\u0441\\u043e\\u0432 \\u043d\\u043e \\u0438 \\u043e\\u043d\\u0430 \\u0431\\u0443\\u0434\\u0435\\u0442 \\u043f\\u0440\\u0438\\u0441\\u0443\\u0442\\u0441\\u0442\\u0432\\u043e\\u0432\\u0430\\u0442\\u044c \\u043d\\u0430 \\u0441\\u043e\\u0442\\u043d\\u044f\\u0445 \\u0444\\u043e\\u0442\\u043e\\u0433\\u0440\\u0430\\u0444\\u0438\\u044f\\u0445 \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0435 \\u0440\\u0430\\u0437\\u043c\\u0435\\u0449\\u0430\\u044e\\u0442 \\u0432 \\u0438\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442\\u0435 \\u0432\\u0441\\u0435 \\u043a\\u0442\\u043e \\u0444\\u043e\\u0442\\u043e\\u0433\\u0440\\u0430\\u0444\\u0438\\u0440\\u0443\\u0435\\u0442\\u0441\\u044f \\u0440\\u0430\\u0434\\u043e\\u043c \\u0441 \\u0430\\u0432\\u0442\\u043e\\u0431\\u0443\\u0441\\u0430\\u043c\\u0438!<\\/p><p style=\\\"-webkit-text-stroke-width:0px;background-color:rgb(243, 243, 243);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\\\">\\u0421\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u044c \\u0440\\u0435\\u043a\\u043b\\u0430\\u043c\\u044b \\u043d\\u0430 \\u043e\\u0434\\u043d\\u043e\\u043c \\u0431\\u043e\\u0440\\u0442\\u0443 \\u043e\\u0434\\u043d\\u043e\\u0433\\u043e \\u0430\\u0432\\u0442\\u043e\\u0431\\u0443\\u0441\\u0430 \\u0441\\u043e\\u0441\\u0442\\u0430\\u0432\\u043b\\u044f\\u0435\\u0442 3&nbsp;000&nbsp;000 \\u0441\\u0443\\u043c \\u0432 \\u043c\\u0435\\u0441\\u044f\\u0446. \\u041c\\u0438\\u043d\\u0438\\u043c\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0437\\u0430\\u043a\\u0430\\u0437 3 \\u043c\\u0435\\u0441\\u044f\\u0446\\u0430 !<\\/p><p style=\\\"-webkit-text-stroke-width:0px;background-color:rgb(243, 243, 243);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\\\">\\u0412\\u043e\\u0437\\u043c\\u043e\\u0436\\u043d\\u044b \\u0441\\u043a\\u0438\\u0434\\u043a\\u0438 , \\u043c\\u044b \\u0433\\u043e\\u0442\\u043e\\u0432\\u044b \\u043a \\u043b\\u044e\\u0431\\u044b\\u043c \\u0432\\u0437\\u0430\\u0438\\u043c\\u043e\\u0432\\u044b\\u0433\\u043e\\u0434\\u043d\\u044b\\u043c \\u043f\\u0440\\u0435\\u0434\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u044f\\u043c!<\\/p><p style=\\\"-webkit-text-stroke-width:0px;background-color:rgb(243, 243, 243);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\\\">\\u0422\\u0430\\u043a\\u0436\\u0435 \\u0412\\u044b \\u043c\\u043e\\u0436\\u0435\\u0442\\u0435 \\u0440\\u0430\\u0437\\u043c\\u0435\\u0441\\u0442\\u0438\\u0442\\u044c \\u0440\\u0435\\u043a\\u043b\\u0430\\u043c\\u0443 \\u0432\\u043d\\u0443\\u0442\\u0440\\u0438 \\u0430\\u0432\\u0442\\u043e\\u0431\\u0443\\u0441\\u0430&nbsp; \\u0430 \\u0432 \\u0447\\u0430\\u0441\\u0442\\u043d\\u043e\\u0441\\u0442\\u0438:<\\/p><figure class=\\\"table\\\" style=\\\"width:1000px;\\\"><table style=\\\"background-color:rgb(255, 255, 255);border:1px solid rgb(221, 221, 221);\\\" width=\\\"569\\\" border=\\\"2px\\\"><tbody style=\\\"box-sizing:border-box;outline:none;\\\"><tr style=\\\"box-sizing:border-box;outline:none;\\\"><td style=\\\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\\\" width=\\\"84\\\"><p style=\\\"box-sizing:border-box;margin:0px;outline:none;\\\"><strong style=\\\"box-sizing:border-box;font-family:OpenSansBold, Arial, sans-serif;font-weight:normal;outline:none;\\\">\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430<\\/strong><\\/p><\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\\\" width=\\\"137\\\"><p style=\\\"box-sizing:border-box;margin:0px;outline:none;\\\"><strong style=\\\"box-sizing:border-box;font-family:OpenSansBold, Arial, sans-serif;font-weight:normal;outline:none;\\\">\\u041c\\u0435\\u0441\\u0442\\u043e \\u0440\\u0430\\u0441\\u043f\\u043e\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u044f<\\/strong><\\/p><\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\\\" width=\\\"109\\\"><p style=\\\"box-sizing:border-box;margin:0px;outline:none;\\\"><strong style=\\\"box-sizing:border-box;font-family:OpenSansBold, Arial, sans-serif;font-weight:normal;outline:none;\\\">\\u0420\\u0430\\u0437\\u043c\\u0435\\u0440\\u044b<\\/strong><\\/p><\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\\\" width=\\\"84\\\"><p style=\\\"box-sizing:border-box;margin:0px;outline:none;\\\"><strong style=\\\"box-sizing:border-box;font-family:OpenSansBold, Arial, sans-serif;font-weight:normal;outline:none;\\\">\\u041a\\u043e\\u043b-\\u0432\\u043e \\u043c\\u0435\\u0441\\u0442<\\/strong><\\/p><\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\\\" width=\\\"155\\\"><p style=\\\"box-sizing:border-box;margin:0px;outline:none;\\\"><strong style=\\\"box-sizing:border-box;font-family:OpenSansBold, Arial, sans-serif;font-weight:normal;outline:none;\\\">\\u0426\\u0435\\u043d\\u0430 \\u0437\\u0430 1 \\u043c\\u0435\\u0441\\u0442\\u043e<\\/strong><\\/p><\\/td><\\/tr><tr style=\\\"box-sizing:border-box;outline:none;\\\"><td style=\\\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\\\" width=\\\"84\\\"><p style=\\\"box-sizing:border-box;margin:0px;outline:none;\\\">1<\\/p><\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\\\" width=\\\"137\\\"><p style=\\\"box-sizing:border-box;margin:0px;outline:none;\\\">\\u043e\\u0442\\u043a\\u0440\\u044b\\u0442\\u0430\\u044f \\u0447\\u0430\\u0441\\u0442\\u044c 2 \\u044d\\u0442\\u0430\\u0436 \\u0437\\u0430\\u0434\\u043d\\u044f\\u044f \\u0432\\u0435\\u0440\\u0445\\u043d\\u044f\\u044f \\u043f\\u0430\\u043d\\u0435\\u043b\\u044c<\\/p><\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\\\" width=\\\"109\\\"><p style=\\\"box-sizing:border-box;margin:0px;outline:none;\\\">\\u04105<\\/p><\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\\\" width=\\\"84\\\"><p style=\\\"box-sizing:border-box;margin:0px;outline:none;\\\">6<\\/p><\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\\\" width=\\\"155\\\"><p style=\\\"box-sizing:border-box;margin:0px;outline:none;\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 120 000,00&nbsp;&nbsp;<\\/p><\\/td><\\/tr><tr style=\\\"box-sizing:border-box;outline:none;\\\"><td style=\\\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\\\" width=\\\"84\\\"><p style=\\\"box-sizing:border-box;margin:0px;outline:none;\\\">2<\\/p><\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\\\" width=\\\"137\\\"><p style=\\\"box-sizing:border-box;margin:0px;outline:none;\\\">2 \\u044d\\u0442\\u0430\\u0436 \\u043e\\u0442\\u043a\\u0440\\u044b\\u0442\\u0430\\u044f \\u0447\\u0430\\u0441\\u0442\\u044c \\u043b\\u0435\\u0432\\u0430\\u044f \\u043f\\u0435\\u0440\\u0435\\u0434\\u043d\\u044f\\u044f \\u043f\\u0430\\u043d\\u0435\\u043b\\u044c<\\/p><\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\\\" width=\\\"109\\\"><p style=\\\"box-sizing:border-box;margin:0px;outline:none;\\\">\\u04103,\\u04104,\\u04105<\\/p><\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\\\" width=\\\"84\\\"><p style=\\\"box-sizing:border-box;margin:0px;outline:none;\\\">1<\\/p><\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\\\" width=\\\"155\\\"><p style=\\\"box-sizing:border-box;margin:0px;outline:none;\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 340 000,00&nbsp;&nbsp;<\\/p><\\/td><\\/tr><tr style=\\\"box-sizing:border-box;outline:none;\\\"><td style=\\\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\\\" width=\\\"84\\\"><p style=\\\"box-sizing:border-box;margin:0px;outline:none;\\\">3<\\/p><\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\\\" width=\\\"137\\\"><p style=\\\"box-sizing:border-box;margin:0px;outline:none;\\\">1 \\u044d\\u0442\\u0430\\u0436 \\u0441\\u0442\\u0435\\u043d\\u043a\\u0430 \\u043f\\u0435\\u0440\\u0435\\u0434 \\u043b\\u0435\\u0441\\u0442\\u043d\\u0438\\u0446\\u0435\\u0439<\\/p><\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\\\" width=\\\"109\\\"><p style=\\\"box-sizing:border-box;margin:0px;outline:none;\\\">\\u04105<\\/p><\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\\\" width=\\\"84\\\"><p style=\\\"box-sizing:border-box;margin:0px;outline:none;\\\">4<\\/p><\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\\\" width=\\\"155\\\"><p style=\\\"box-sizing:border-box;margin:0px;outline:none;\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 120 000,00&nbsp;&nbsp;<\\/p><\\/td><\\/tr><tr style=\\\"box-sizing:border-box;outline:none;\\\"><td style=\\\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\\\" width=\\\"84\\\"><p style=\\\"box-sizing:border-box;margin:0px;outline:none;\\\">4<\\/p><\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\\\" width=\\\"137\\\"><p style=\\\"box-sizing:border-box;margin:0px;outline:none;\\\">1 \\u044d\\u0442\\u0430\\u0436 \\u043a\\u043e\\u043d\\u0435\\u0446 \\u0441\\u0430\\u043b\\u043e\\u043d\\u0430 \\u043f\\u0430\\u043d\\u0435\\u043b\\u044c \\u043f\\u0435\\u0440\\u0435\\u0434 \\u0432\\u043e\\u0437\\u0432\\u044b\\u0448\\u0435\\u043d\\u0438\\u0435\\u043c<\\/p><\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\\\" width=\\\"109\\\"><p style=\\\"box-sizing:border-box;margin:0px;outline:none;\\\">\\u04103,\\u04104,\\u04105<\\/p><\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\\\" width=\\\"84\\\"><p style=\\\"box-sizing:border-box;margin:0px;outline:none;\\\">1<\\/p><\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\\\" width=\\\"155\\\"><p style=\\\"box-sizing:border-box;margin:0px;outline:none;\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 430 000,00&nbsp;&nbsp;<\\/p><\\/td><\\/tr><tr style=\\\"box-sizing:border-box;outline:none;\\\"><td style=\\\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\\\" width=\\\"84\\\"><p style=\\\"box-sizing:border-box;margin:0px;outline:none;\\\">5<\\/p><\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\\\" width=\\\"137\\\"><p style=\\\"box-sizing:border-box;margin:0px;outline:none;\\\">1 \\u044d\\u0442\\u0430\\u0436 \\u0441\\u0438\\u0434\\u0435\\u043d\\u044c\\u044f<\\/p><\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\\\" width=\\\"109\\\"><p style=\\\"box-sizing:border-box;margin:0px;outline:none;\\\">\\u04105<\\/p><\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\\\" width=\\\"84\\\"><p style=\\\"box-sizing:border-box;margin:0px;outline:none;\\\">5<\\/p><\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\\\" width=\\\"155\\\"><p style=\\\"box-sizing:border-box;margin:0px;outline:none;\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 120 000,00&nbsp;&nbsp;<\\/p><\\/td><\\/tr><tr style=\\\"box-sizing:border-box;outline:none;\\\"><td style=\\\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\\\" width=\\\"84\\\"><p style=\\\"box-sizing:border-box;margin:0px;outline:none;\\\">6 \\u0417\\u0410\\u041a\\u0420<\\/p><\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\\\" width=\\\"137\\\"><p style=\\\"box-sizing:border-box;margin:0px;outline:none;\\\">2 \\u044d\\u0442\\u0430\\u0436 \\u0441\\u0438\\u0434\\u0435\\u043d\\u044c\\u044f \\u0437\\u0430\\u043a\\u0440\\u044b\\u0442\\u0430\\u044f \\u0447\\u0430\\u0441\\u0442\\u044c<\\/p><\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\\\" width=\\\"109\\\"><p style=\\\"box-sizing:border-box;margin:0px;outline:none;\\\">110\\u0425 50<\\/p><\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\\\" width=\\\"84\\\"><p style=\\\"box-sizing:border-box;margin:0px;outline:none;\\\">10<\\/p><\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\\\" width=\\\"155\\\"><p style=\\\"box-sizing:border-box;margin:0px;outline:none;\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 45 000,00&nbsp;&nbsp;<\\/p><\\/td><\\/tr><tr style=\\\"box-sizing:border-box;outline:none;\\\"><td style=\\\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\\\" width=\\\"84\\\"><p style=\\\"box-sizing:border-box;margin:0px;outline:none;\\\">6 \\u041e\\u0422\\u041a\\u0420<\\/p><\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\\\" width=\\\"137\\\"><p style=\\\"box-sizing:border-box;margin:0px;outline:none;\\\">2 \\u044d\\u0442\\u0430\\u0436 \\u0441\\u0438\\u0434\\u0435\\u043d\\u044c\\u044f \\u043e\\u0442\\u043a\\u0440\\u044b\\u0442\\u0430\\u044f \\u0447\\u0430\\u0441\\u0442\\u044c<\\/p><\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\\\" width=\\\"109\\\"><p style=\\\"box-sizing:border-box;margin:0px;outline:none;\\\">110\\u0425100<\\/p><\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\\\" width=\\\"84\\\"><p style=\\\"box-sizing:border-box;margin:0px;outline:none;\\\">23<\\/p><\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\\\" width=\\\"155\\\"><p style=\\\"box-sizing:border-box;margin:0px;outline:none;\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 55 000,00&nbsp;&nbsp;<\\/p><\\/td><\\/tr><tr style=\\\"box-sizing:border-box;outline:none;\\\"><td style=\\\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\\\" width=\\\"84\\\"><p style=\\\"box-sizing:border-box;margin:0px;outline:none;\\\">7<\\/p><\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\\\" width=\\\"137\\\"><p style=\\\"box-sizing:border-box;margin:0px;outline:none;\\\">2 \\u044d\\u0442\\u0430\\u0436 \\u043f\\u0430\\u043d\\u0435\\u043b\\u044c \\u043d\\u0430 \\u043f\\u043e\\u0434\\u044c\\u0435\\u043c\\u0435 \\u043f\\u043e \\u043b\\u0435\\u0441\\u0442\\u043d\\u0438\\u0446\\u0435<\\/p><\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\\\" width=\\\"109\\\"><p style=\\\"box-sizing:border-box;margin:0px;outline:none;\\\">\\u04104, \\u04105<\\/p><\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\\\" width=\\\"84\\\"><p style=\\\"box-sizing:border-box;margin:0px;outline:none;\\\">1<\\/p><\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\\\" width=\\\"155\\\"><p style=\\\"box-sizing:border-box;margin:0px;outline:none;\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 230 000,00&nbsp;&nbsp;<\\/p><\\/td><\\/tr><tr style=\\\"box-sizing:border-box;outline:none;\\\"><td style=\\\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\\\" width=\\\"84\\\"><p style=\\\"box-sizing:border-box;margin:0px;outline:none;\\\">8<\\/p><\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\\\" width=\\\"137\\\"><p style=\\\"box-sizing:border-box;margin:0px;outline:none;\\\">\\u041b\\u0435\\u0441\\u0442\\u043d\\u0438\\u0446\\u0430 \\u043f\\u0430\\u043d\\u0435\\u043b\\u044c \\u043f\\u0435\\u0440\\u0435\\u0434 \\u0441\\u043f\\u0443\\u0441\\u043a\\u043e\\u043c<\\/p><\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\\\" width=\\\"109\\\"><p style=\\\"box-sizing:border-box;margin:0px;outline:none;\\\">\\u041043,\\u04104, \\u04105<\\/p><\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\\\" width=\\\"84\\\"><p style=\\\"box-sizing:border-box;margin:0px;outline:none;\\\">1<\\/p><\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\\\" width=\\\"155\\\"><p style=\\\"box-sizing:border-box;margin:0px;outline:none;\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 615 000,00&nbsp;&nbsp;<\\/p><\\/td><\\/tr><tr style=\\\"box-sizing:border-box;outline:none;\\\"><td style=\\\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\\\" width=\\\"84\\\"><p style=\\\"box-sizing:border-box;margin:0px;outline:none;\\\">9<\\/p><\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\\\" width=\\\"137\\\"><p style=\\\"box-sizing:border-box;margin:0px;outline:none;\\\">\\u0420\\u0443\\u0447\\u043a\\u0438<\\/p><\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\\\" width=\\\"109\\\"><p style=\\\"box-sizing:border-box;margin:0px;outline:none;\\\">11,8 \\u0425 65<\\/p><\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\\\" width=\\\"84\\\"><p style=\\\"box-sizing:border-box;margin:0px;outline:none;\\\">35<\\/p><\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\\\" width=\\\"155\\\"><p style=\\\"box-sizing:border-box;margin:0px;outline:none;\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 50 000,00&nbsp;&nbsp;<\\/p><\\/td><\\/tr><tr style=\\\"box-sizing:border-box;outline:none;\\\"><td style=\\\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\\\" width=\\\"84\\\"><p style=\\\"box-sizing:border-box;margin:0px;outline:none;\\\">10<\\/p><\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\\\" width=\\\"137\\\"><p style=\\\"box-sizing:border-box;margin:0px;outline:none;\\\">2 \\u044d\\u0442\\u0430\\u0436 \\u043f\\u0430\\u043d\\u0435\\u043b\\u044c \\u043f\\u0435\\u0440\\u0435\\u0434 \\u0441\\u043f\\u0443\\u0441\\u043a\\u043e\\u043c \\u043d\\u0430 \\u043b\\u0435\\u0441\\u0442\\u043d\\u0438\\u0446\\u0435<\\/p><\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\\\" width=\\\"109\\\"><p style=\\\"box-sizing:border-box;margin:0px;outline:none;\\\">\\u0410 5<\\/p><\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\\\" width=\\\"84\\\"><p style=\\\"box-sizing:border-box;margin:0px;outline:none;\\\">1<\\/p><\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\\\" width=\\\"155\\\"><p style=\\\"box-sizing:border-box;margin:0px;outline:none;\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 120 000,00&nbsp;&nbsp;<\\/p><\\/td><\\/tr><\\/tbody><\\/table><\\/figure><p style=\\\"-webkit-text-stroke-width:0px;background-color:rgb(243, 243, 243);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\\\">&nbsp;<\\/p><p style=\\\"-webkit-text-stroke-width:0px;background-color:rgb(243, 243, 243);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\\\"><strong style=\\\"box-sizing:border-box;font-family:OpenSansBold, Arial, sans-serif;font-weight:normal;outline:none;\\\">\\u041d\\u0435 \\u0443\\u043f\\u0443\\u0441\\u0442\\u0438\\u0442\\u0435 \\u0441\\u0432\\u043e\\u0439 \\u0448\\u0430\\u043d\\u0441 !<\\/strong><\\/p><p style=\\\"-webkit-text-stroke-width:0px;background-color:rgb(243, 243, 243);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\\\">\\u041f\\u043e \\u0432\\u0441\\u0435\\u043c \\u0438\\u043d\\u0442\\u0435\\u0440\\u0435\\u0441\\u0443\\u044e\\u0449\\u0438\\u043c \\u0432\\u043e\\u043f\\u0440\\u043e\\u0441\\u0430\\u043c \\u043f\\u043e \\u0440\\u0430\\u0437\\u043c\\u0435\\u0449\\u0435\\u043d\\u0438\\u044e \\u0440\\u0435\\u043a\\u043b\\u0430\\u043c\\u044b \\u043e\\u0431\\u0440\\u0430\\u0449\\u0430\\u0439\\u0442\\u0435\\u0441\\u044c \\u0432 \\u043d\\u0430\\u0448 \\u043e\\u0444\\u0438\\u0441 \\u043f\\u043e \\u0430\\u0434\\u0440\\u0435\\u0441\\u0443:<\\/p><p style=\\\"-webkit-text-stroke-width:0px;background-color:rgb(243, 243, 243);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\\\">\\u0443\\u043b\\u0438\\u0446\\u0430 \\u0422\\u0430\\u0440\\u0440\\u0430\\u043a\\u043a\\u0438\\u0451\\u0442 45,&nbsp;100047 \\u0422\\u0430\\u0448\\u043a\\u0435\\u043d\\u0442. \\u0418\\u043b\\u0438 \\u043d\\u0430 \\u0435\\u043c\\u0430\\u0438\\u043b : <a style=\\\"background-color:transparent;box-sizing:border-box;color:rgb(51, 122, 183);outline:none;text-decoration:none;\\\" href=\\\"mailto:aznur2010@mail.ru\\\">aznur2010@mail.ru<\\/a>.<\\/p><p style=\\\"-webkit-text-stroke-width:0px;background-color:rgb(243, 243, 243);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\\\">\\u041d\\u0430\\u0448\\u0438 \\u0442\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d\\u044b : +998 - 98 - 808 - 26 - 26.<\\/p>\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"apply\",\"status\":\"published\",\"template\":\"default\",\"image\":null}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '::1', 1, 4, 'РЕКЛАМА', 'info', '2022-08-23 23:23:12', '2022-08-23 23:23:12');
INSERT INTO `audit_histories` (`id`, `user_id`, `module`, `request`, `action`, `user_agent`, `ip_address`, `reference_user`, `reference_id`, `reference_name`, `type`, `created_at`, `updated_at`) VALUES
(34, 1, 'page', '{\"name\":\"\\u0420\\u0415\\u041a\\u041b\\u0410\\u041c\\u0410\",\"slug\":\"reklama\",\"slug_id\":\"5\",\"is_slug_editable\":\"1\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":null,\"is_featured\":\"0\",\"content\":\"<p style=\\\"background-color:rgb(243,243,243);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\\\"><strong style=\\\"font-family:OpenSansBold, Arial, sans-serif;font-weight:normal;\\\"><u>\\u0420\\u0435\\u043a\\u043b\\u0430\\u043c\\u0430 \\u0434\\u0432\\u0438\\u0433\\u0430\\u0442\\u0435\\u043b\\u044c \\u0442\\u043e\\u0440\\u0433\\u043e\\u0432\\u043b\\u0438! \\u0410 \\u0434\\u0432\\u0438\\u0436\\u0443\\u0449\\u0430\\u044f\\u0441\\u044f&nbsp; \\u0440\\u0435\\u043a\\u043b\\u0430\\u043c\\u0430 \\u0434\\u0432\\u0438\\u0433\\u0430\\u0442\\u0435\\u043b\\u044c \\u0432\\u0434\\u0432\\u043e\\u0439\\u043d\\u0435 !<\\/u><\\/strong><\\/p><p style=\\\"background-color:rgb(243,243,243);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\\\">\\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u00abAZNUR TARVEL\\u00bb \\u0438\\u043c\\u0435\\u0435\\u0442 \\u0447\\u0435\\u0441\\u0442\\u044c \\u043f\\u0440\\u0435\\u0434\\u043b\\u043e\\u0436\\u0438\\u0442\\u044c \\u0412\\u0430\\u043c \\u0440\\u0430\\u0437\\u043c\\u0435\\u0449\\u0435\\u043d\\u0438\\u0435 \\u0440\\u0435\\u043a\\u043b\\u0430\\u043c\\u044b \\u043d\\u0430 \\u043d\\u0430\\u0448\\u0438\\u0445 \\u044d\\u043a\\u0441\\u043a\\u0443\\u0440\\u0441\\u0438\\u043e\\u043d\\u043d\\u044b\\u0445 \\u0430\\u0432\\u0442\\u043e\\u0431\\u0443\\u0441\\u0430\\u0445.<\\/p><p style=\\\"background-color:rgb(243,243,243);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\\\">\\u041d\\u0435 \\u0441\\u0442\\u043e\\u0438\\u0442 \\u0433\\u043e\\u0432\\u043e\\u0440\\u0438\\u0442\\u044c \\u043e \\u043f\\u043e\\u043f\\u0443\\u043b\\u044f\\u0440\\u043d\\u043e\\u0441\\u0442\\u0438 \\u0434\\u0430\\u043d\\u043d\\u044b\\u0445 \\u043c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442\\u043e\\u0432 \\u0443 \\u0433\\u043e\\u0441\\u0442\\u0435\\u0439 \\u0438 \\u0436\\u0438\\u0442\\u0435\\u043b\\u0435\\u0439 \\u0433\\u043e\\u0440\\u043e\\u0434\\u0430!<\\/p><p style=\\\"background-color:rgb(243,243,243);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\\\">\\u0410\\u0432\\u0442\\u043e\\u0431\\u0443\\u0441\\u044b \\u0441\\u043e\\u0432\\u0435\\u0440\\u0448\\u0430\\u044e\\u0442 \\u0441\\u0432\\u043e\\u0439 \\u043c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442 \\u043a\\u0430\\u0436\\u0434\\u044b\\u0439 \\u0447\\u0430\\u0441&nbsp; \\u043f\\u043e \\u0441\\u0430\\u043c\\u044b\\u043c \\u043b\\u0443\\u0447\\u0448\\u0438\\u043c \\u0438 \\u043f\\u043e\\u043f\\u0443\\u043b\\u044f\\u0440\\u043d\\u044b\\u043c \\u043c\\u0435\\u0441\\u0442\\u0430\\u043c \\u043d\\u0430\\u0448\\u0435\\u0433\\u043e&nbsp; \\u0433\\u043e\\u0440\\u043e\\u0434\\u0430. \\u0412\\u0430\\u0448\\u0443 \\u0440\\u0435\\u043a\\u043b\\u0430\\u043c\\u0443 \\u0443\\u0432\\u0438\\u0434\\u044f\\u0442 \\u043c\\u0438\\u043b\\u043b\\u0438\\u043e\\u043d\\u044b \\u0436\\u0438\\u0442\\u0435\\u043b\\u0435\\u0439 \\u0441\\u0442\\u043e\\u043b\\u0438\\u0446\\u044b . \\u041f\\u0440\\u0438 \\u044d\\u0442\\u043e\\u043c \\u043e\\u043d\\u0430 \\u0431\\u0443\\u0434\\u0435\\u0442 \\u0443 \\u043d\\u0438\\u0445 \\u043d\\u0430 \\u0432\\u0438\\u0434\\u0443 \\u043f\\u043e\\u0441\\u0442\\u043e\\u044f\\u043d\\u043d\\u043e \\u0438 \\u043a\\u0430\\u0436\\u0434\\u044b\\u0439 \\u0434\\u0435\\u043d\\u044c!<\\/p><p style=\\\"background-color:rgb(243,243,243);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\\\">\\u041d\\u0435 \\u0443\\u043f\\u0443\\u0441\\u0442\\u0438\\u0442\\u0435 \\u0432\\u043e\\u0437\\u043c\\u043e\\u0436\\u043d\\u043e\\u0441\\u0442\\u044c \\u0441\\u0434\\u0435\\u043b\\u0430\\u0442\\u044c \\u0412\\u0430\\u0448\\u0443 \\u0440\\u0435\\u043a\\u043b\\u0430\\u043c\\u0443 \\u043c\\u043e\\u0431\\u0438\\u043b\\u044c\\u043d\\u043e\\u0439 \\u0438 \\u043f\\u0440\\u0438\\u0432\\u043b\\u0435\\u043a\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0439 ! \\u041c\\u044b \\u0433\\u043e\\u0442\\u043e\\u0432\\u044b \\u043e\\u0431\\u0441\\u0443\\u0434\\u0438\\u0442\\u044c \\u0441 \\u0412\\u0430\\u043c\\u0438 \\u0434\\u0438\\u0437\\u0430\\u0439\\u043d \\u0412\\u0430\\u0448\\u0435\\u0439 \\u0440\\u0435\\u043a\\u043b\\u0430\\u043c\\u044b \\u0438\\u043b\\u0438 \\u0438\\u0437\\u0433\\u043e\\u0442\\u043e\\u0432\\u0438\\u0442\\u044c \\u0435\\u0433\\u043e \\u0441\\u0430\\u043c\\u0438 \\u043f\\u043e \\u0412\\u0430\\u0448\\u0435\\u043c\\u0443 \\u0437\\u0430\\u043a\\u0430\\u0437\\u0443.<\\/p><p style=\\\"background-color:rgb(243,243,243);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\\\">\\u0412\\u044b \\u043c\\u043e\\u0436\\u0435\\u0442\\u0435 \\u0440\\u0430\\u0437\\u043c\\u0435\\u0441\\u0442\\u0438\\u0442\\u044c&nbsp; \\u0441\\u0432\\u043e\\u044e \\u0440\\u0435\\u043a\\u043b\\u0430\\u043c\\u0443 \\u043d\\u0430 \\u0431\\u043e\\u0440\\u0442\\u0430\\u0445 \\u043d\\u0430\\u0448\\u0435\\u0433\\u043e \\u044d\\u043a\\u0441\\u043a\\u0443\\u0440\\u0441\\u0438\\u043e\\u043d\\u043d\\u043e\\u0433\\u043e \\u0430\\u0432\\u0442\\u043e\\u0431\\u0443\\u0441\\u0430.&nbsp; \\u0418 \\u0442\\u043e\\u0433\\u0434\\u0430 \\u0412\\u0430\\u0448\\u0443 \\u0440\\u0435\\u043a\\u043b\\u0430\\u043c\\u0443 \\u0443\\u0432\\u0438\\u0434\\u044f\\u0442 \\u043d\\u0435 \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e \\u043d\\u0430 \\u0443\\u043b\\u0438\\u0446\\u0430\\u0445 \\u0433\\u043e\\u0440\\u043e\\u0434\\u0430 \\u0432\\u043e \\u0432\\u0440\\u0435\\u043c\\u044f \\u043f\\u043e\\u0435\\u0437\\u0434\\u043a\\u0438 \\u043d\\u0430\\u0448\\u0438\\u0445 \\u0430\\u0432\\u0442\\u043e\\u0431\\u0443\\u0441\\u043e\\u0432 \\u043d\\u043e \\u0438 \\u043e\\u043d\\u0430 \\u0431\\u0443\\u0434\\u0435\\u0442 \\u043f\\u0440\\u0438\\u0441\\u0443\\u0442\\u0441\\u0442\\u0432\\u043e\\u0432\\u0430\\u0442\\u044c \\u043d\\u0430 \\u0441\\u043e\\u0442\\u043d\\u044f\\u0445 \\u0444\\u043e\\u0442\\u043e\\u0433\\u0440\\u0430\\u0444\\u0438\\u044f\\u0445 \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0435 \\u0440\\u0430\\u0437\\u043c\\u0435\\u0449\\u0430\\u044e\\u0442 \\u0432 \\u0438\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442\\u0435 \\u0432\\u0441\\u0435 \\u043a\\u0442\\u043e \\u0444\\u043e\\u0442\\u043e\\u0433\\u0440\\u0430\\u0444\\u0438\\u0440\\u0443\\u0435\\u0442\\u0441\\u044f \\u0440\\u0430\\u0434\\u043e\\u043c \\u0441 \\u0430\\u0432\\u0442\\u043e\\u0431\\u0443\\u0441\\u0430\\u043c\\u0438!<\\/p><p style=\\\"background-color:rgb(243,243,243);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\\\">\\u0421\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u044c \\u0440\\u0435\\u043a\\u043b\\u0430\\u043c\\u044b \\u043d\\u0430 \\u043e\\u0434\\u043d\\u043e\\u043c \\u0431\\u043e\\u0440\\u0442\\u0443 \\u043e\\u0434\\u043d\\u043e\\u0433\\u043e \\u0430\\u0432\\u0442\\u043e\\u0431\\u0443\\u0441\\u0430 \\u0441\\u043e\\u0441\\u0442\\u0430\\u0432\\u043b\\u044f\\u0435\\u0442 3&nbsp;000&nbsp;000 \\u0441\\u0443\\u043c \\u0432 \\u043c\\u0435\\u0441\\u044f\\u0446. \\u041c\\u0438\\u043d\\u0438\\u043c\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0437\\u0430\\u043a\\u0430\\u0437 3 \\u043c\\u0435\\u0441\\u044f\\u0446\\u0430 !<\\/p><p style=\\\"background-color:rgb(243,243,243);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\\\">\\u0412\\u043e\\u0437\\u043c\\u043e\\u0436\\u043d\\u044b \\u0441\\u043a\\u0438\\u0434\\u043a\\u0438 , \\u043c\\u044b \\u0433\\u043e\\u0442\\u043e\\u0432\\u044b \\u043a \\u043b\\u044e\\u0431\\u044b\\u043c \\u0432\\u0437\\u0430\\u0438\\u043c\\u043e\\u0432\\u044b\\u0433\\u043e\\u0434\\u043d\\u044b\\u043c \\u043f\\u0440\\u0435\\u0434\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u044f\\u043c!<\\/p><p style=\\\"background-color:rgb(243,243,243);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\\\">\\u0422\\u0430\\u043a\\u0436\\u0435 \\u0412\\u044b \\u043c\\u043e\\u0436\\u0435\\u0442\\u0435 \\u0440\\u0430\\u0437\\u043c\\u0435\\u0441\\u0442\\u0438\\u0442\\u044c \\u0440\\u0435\\u043a\\u043b\\u0430\\u043c\\u0443 \\u0432\\u043d\\u0443\\u0442\\u0440\\u0438 \\u0430\\u0432\\u0442\\u043e\\u0431\\u0443\\u0441\\u0430&nbsp; \\u0430 \\u0432 \\u0447\\u0430\\u0441\\u0442\\u043d\\u043e\\u0441\\u0442\\u0438:<\\/p><figure class=\\\"table\\\" style=\\\"width:1000px;\\\"><table style=\\\"background-color:rgb(255,255,255);border:1px solid rgb(221, 221, 221);\\\" border=\\\"2\\\" width=\\\"569\\\"><tbody><tr><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"84\\\"><strong style=\\\"font-family:OpenSansBold, Arial, sans-serif;font-weight:normal;\\\">\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430<\\/strong><\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"137\\\"><strong style=\\\"font-family:OpenSansBold, Arial, sans-serif;font-weight:normal;\\\">\\u041c\\u0435\\u0441\\u0442\\u043e \\u0440\\u0430\\u0441\\u043f\\u043e\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u044f<\\/strong><\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"109\\\"><strong style=\\\"font-family:OpenSansBold, Arial, sans-serif;font-weight:normal;\\\">\\u0420\\u0430\\u0437\\u043c\\u0435\\u0440\\u044b<\\/strong><\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"84\\\"><strong style=\\\"font-family:OpenSansBold, Arial, sans-serif;font-weight:normal;\\\">\\u041a\\u043e\\u043b-\\u0432\\u043e \\u043c\\u0435\\u0441\\u0442<\\/strong><\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"155\\\"><strong style=\\\"font-family:OpenSansBold, Arial, sans-serif;font-weight:normal;\\\">\\u0426\\u0435\\u043d\\u0430 \\u0437\\u0430 1 \\u043c\\u0435\\u0441\\u0442\\u043e<\\/strong><\\/td><\\/tr><tr><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"84\\\">1<\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"137\\\">\\u043e\\u0442\\u043a\\u0440\\u044b\\u0442\\u0430\\u044f \\u0447\\u0430\\u0441\\u0442\\u044c 2 \\u044d\\u0442\\u0430\\u0436 \\u0437\\u0430\\u0434\\u043d\\u044f\\u044f \\u0432\\u0435\\u0440\\u0445\\u043d\\u044f\\u044f \\u043f\\u0430\\u043d\\u0435\\u043b\\u044c<\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"109\\\">\\u04105<\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"84\\\">6<\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"155\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 120 000,00&nbsp;&nbsp;<\\/td><\\/tr><tr><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"84\\\">2<\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"137\\\">2 \\u044d\\u0442\\u0430\\u0436 \\u043e\\u0442\\u043a\\u0440\\u044b\\u0442\\u0430\\u044f \\u0447\\u0430\\u0441\\u0442\\u044c \\u043b\\u0435\\u0432\\u0430\\u044f \\u043f\\u0435\\u0440\\u0435\\u0434\\u043d\\u044f\\u044f \\u043f\\u0430\\u043d\\u0435\\u043b\\u044c<\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"109\\\">\\u04103,\\u04104,\\u04105<\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"84\\\">1<\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"155\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 340 000,00&nbsp;&nbsp;<\\/td><\\/tr><tr><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"84\\\">3<\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"137\\\">1 \\u044d\\u0442\\u0430\\u0436 \\u0441\\u0442\\u0435\\u043d\\u043a\\u0430 \\u043f\\u0435\\u0440\\u0435\\u0434 \\u043b\\u0435\\u0441\\u0442\\u043d\\u0438\\u0446\\u0435\\u0439<\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"109\\\">\\u04105<\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"84\\\">4<\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"155\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 120 000,00&nbsp;&nbsp;<\\/td><\\/tr><tr><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"84\\\">4<\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"137\\\">1 \\u044d\\u0442\\u0430\\u0436 \\u043a\\u043e\\u043d\\u0435\\u0446 \\u0441\\u0430\\u043b\\u043e\\u043d\\u0430 \\u043f\\u0430\\u043d\\u0435\\u043b\\u044c \\u043f\\u0435\\u0440\\u0435\\u0434 \\u0432\\u043e\\u0437\\u0432\\u044b\\u0448\\u0435\\u043d\\u0438\\u0435\\u043c<\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"109\\\">\\u04103,\\u04104,\\u04105<\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"84\\\">1<\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"155\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 430 000,00&nbsp;&nbsp;<\\/td><\\/tr><tr><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"84\\\">5<\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"137\\\">1 \\u044d\\u0442\\u0430\\u0436 \\u0441\\u0438\\u0434\\u0435\\u043d\\u044c\\u044f<\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"109\\\">\\u04105<\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"84\\\">5<\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"155\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 120 000,00&nbsp;&nbsp;<\\/td><\\/tr><tr><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"84\\\">6 \\u0417\\u0410\\u041a\\u0420<\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"137\\\">2 \\u044d\\u0442\\u0430\\u0436 \\u0441\\u0438\\u0434\\u0435\\u043d\\u044c\\u044f \\u0437\\u0430\\u043a\\u0440\\u044b\\u0442\\u0430\\u044f \\u0447\\u0430\\u0441\\u0442\\u044c<\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"109\\\">110\\u0425 50<\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"84\\\">10<\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"155\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 45 000,00&nbsp;&nbsp;<\\/td><\\/tr><tr><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"84\\\">6 \\u041e\\u0422\\u041a\\u0420<\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"137\\\">2 \\u044d\\u0442\\u0430\\u0436 \\u0441\\u0438\\u0434\\u0435\\u043d\\u044c\\u044f \\u043e\\u0442\\u043a\\u0440\\u044b\\u0442\\u0430\\u044f \\u0447\\u0430\\u0441\\u0442\\u044c<\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"109\\\">110\\u0425100<\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"84\\\">23<\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"155\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 55 000,00&nbsp;&nbsp;<\\/td><\\/tr><tr><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"84\\\">7<\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"137\\\">2 \\u044d\\u0442\\u0430\\u0436 \\u043f\\u0430\\u043d\\u0435\\u043b\\u044c \\u043d\\u0430 \\u043f\\u043e\\u0434\\u044c\\u0435\\u043c\\u0435 \\u043f\\u043e \\u043b\\u0435\\u0441\\u0442\\u043d\\u0438\\u0446\\u0435<\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"109\\\">\\u04104, \\u04105<\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"84\\\">1<\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"155\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 230 000,00&nbsp;&nbsp;<\\/td><\\/tr><tr><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"84\\\">8<\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"137\\\">\\u041b\\u0435\\u0441\\u0442\\u043d\\u0438\\u0446\\u0430 \\u043f\\u0430\\u043d\\u0435\\u043b\\u044c \\u043f\\u0435\\u0440\\u0435\\u0434 \\u0441\\u043f\\u0443\\u0441\\u043a\\u043e\\u043c<\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"109\\\">\\u041043,\\u04104, \\u04105<\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"84\\\">1<\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"155\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 615 000,00&nbsp;&nbsp;<\\/td><\\/tr><tr><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"84\\\">9<\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"137\\\">\\u0420\\u0443\\u0447\\u043a\\u0438<\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"109\\\">11,8 \\u0425 65<\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"84\\\">35<\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"155\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 50 000,00&nbsp;&nbsp;<\\/td><\\/tr><tr><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"84\\\">10<\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"137\\\">2 \\u044d\\u0442\\u0430\\u0436 \\u043f\\u0430\\u043d\\u0435\\u043b\\u044c \\u043f\\u0435\\u0440\\u0435\\u0434 \\u0441\\u043f\\u0443\\u0441\\u043a\\u043e\\u043c \\u043d\\u0430 \\u043b\\u0435\\u0441\\u0442\\u043d\\u0438\\u0446\\u0435<\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"109\\\">\\u0410 5<\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"84\\\">1<\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"155\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 120 000,00&nbsp;&nbsp;<\\/td><\\/tr><\\/tbody><\\/table><\\/figure><p style=\\\"background-color:rgb(243,243,243);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\\\">&nbsp;<\\/p><p style=\\\"background-color:rgb(243,243,243);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\\\"><strong style=\\\"font-family:OpenSansBold, Arial, sans-serif;font-weight:normal;\\\">\\u041d\\u0435 \\u0443\\u043f\\u0443\\u0441\\u0442\\u0438\\u0442\\u0435 \\u0441\\u0432\\u043e\\u0439 \\u0448\\u0430\\u043d\\u0441 !<\\/strong><\\/p><p style=\\\"background-color:rgb(243,243,243);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\\\">\\u041f\\u043e \\u0432\\u0441\\u0435\\u043c \\u0438\\u043d\\u0442\\u0435\\u0440\\u0435\\u0441\\u0443\\u044e\\u0449\\u0438\\u043c \\u0432\\u043e\\u043f\\u0440\\u043e\\u0441\\u0430\\u043c \\u043f\\u043e \\u0440\\u0430\\u0437\\u043c\\u0435\\u0449\\u0435\\u043d\\u0438\\u044e \\u0440\\u0435\\u043a\\u043b\\u0430\\u043c\\u044b \\u043e\\u0431\\u0440\\u0430\\u0449\\u0430\\u0439\\u0442\\u0435\\u0441\\u044c \\u0432 \\u043d\\u0430\\u0448 \\u043e\\u0444\\u0438\\u0441 \\u043f\\u043e \\u0430\\u0434\\u0440\\u0435\\u0441\\u0443:<\\/p><p style=\\\"background-color:rgb(243,243,243);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\\\">\\u0443\\u043b\\u0438\\u0446\\u0430 \\u0422\\u0430\\u0440\\u0440\\u0430\\u043a\\u043a\\u0438\\u0451\\u0442 45,&nbsp;100047 \\u0422\\u0430\\u0448\\u043a\\u0435\\u043d\\u0442. \\u0418\\u043b\\u0438 \\u043d\\u0430 \\u0435\\u043c\\u0430\\u0438\\u043b : <a style=\\\"background-color:transparent;color:rgb(51,122,183);text-decoration:none;\\\" href=\\\"mailto:aznur2010@mail.ru\\\">aznur2010@mail.ru<\\/a>.<\\/p><p style=\\\"background-color:rgb(243,243,243);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\\\">\\u041d\\u0430\\u0448\\u0438 \\u0442\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d\\u044b : +998 - 98 - 808 - 26 - 26.<\\/p>\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"uz_UZ\",\"status\":\"published\",\"template\":\"default\",\"image\":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '::1', 1, 4, 'РЕКЛАМА', 'primary', '2022-08-23 23:23:17', '2022-08-23 23:23:17'),
(35, 1, 'page', '{\"name\":\"\\u0410\\u0420\\u0415\\u041d\\u0414\\u0410\",\"slug\":\"arenda\",\"slug_id\":\"0\",\"is_slug_editable\":\"1\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":null,\"is_featured\":\"0\",\"content\":\"<p style=\\\"text-align:justify;\\\"><span style=\\\"background-color:rgb(243,243,243);color:rgb(79,65,66);\\\"><span>\\u0410\\u0440\\u0435\\u043d\\u0434\\u0430 \\u0434\\u0432\\u0443\\u0445\\u044d\\u0442\\u0430\\u0436\\u043d\\u043e\\u0433\\u043e \\u0430\\u0432\\u0442\\u043e\\u0431\\u0443\\u0441\\u0430 \\u0441\\u043e\\u0441\\u0442\\u0430\\u0432\\u043b\\u044f\\u0435\\u0442 1 000&nbsp;000 \\u0441\\u0443\\u043c \\u0437\\u0430 \\u043e\\u0434\\u0438\\u043d \\u0447\\u0430\\u0441 \\u043f\\u0440\\u0438 \\u0443\\u0441\\u043b\\u043e\\u0432\\u0438\\u0438, \\u0447\\u0442\\u043e \\u043f\\u043e\\u0441\\u0430\\u0434\\u043a\\u0430 \\u0433\\u0440\\u0430\\u0436\\u0434\\u0430\\u043d \\u0438 \\u043a\\u043e\\u043d\\u0435\\u0447\\u043d\\u0430\\u044f \\u0442\\u043e\\u0447\\u043a\\u0430 \\u043c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442\\u0430 \\u043f\\u0435\\u0440\\u0435\\u0434 \\u0433\\u043b\\u0430\\u0432\\u043d\\u044b\\u043c \\u0432\\u0445\\u043e\\u0434\\u043e\\u043c \\u0432&nbsp; \\u0433\\u043e\\u0441\\u0442\\u0438\\u043d\\u0438\\u0446\\u0443 \\u0423\\u0437\\u0431\\u0435\\u043a\\u0438\\u0441\\u0442\\u0430\\u043d, \\u0432 \\u0441\\u043b\\u0443\\u0447\\u0430\\u0435 \\u0435\\u0441\\u043b\\u0438 \\u043f\\u043e\\u0441\\u0430\\u0434\\u043a\\u0430 \\u0433\\u0440\\u0430\\u0436\\u0434\\u0430\\u043d \\u0438 \\u043a\\u043e\\u043d\\u0435\\u0447\\u043d\\u0430\\u044f \\u0442\\u043e\\u0447\\u043a\\u0430 \\u043c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442\\u0430 \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0434\\u0440\\u0443\\u0433\\u0438\\u043c \\u043c\\u0435\\u0441\\u0442\\u043e\\u0440\\u0430\\u0441\\u043f\\u043e\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u0435\\u043c, \\u0432 \\u044d\\u0442\\u043e\\u043c \\u0441\\u043b\\u0443\\u0447\\u0430\\u0435 \\u043a \\u043e\\u0441\\u043d\\u043e\\u0432\\u043d\\u043e\\u0439 \\u0441\\u0443\\u043c\\u043c\\u0435 \\u043f\\u0440\\u0438\\u0431\\u0430\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f 500&nbsp;000 \\u0441\\u0443\\u043c. \\u041c\\u0438\\u043d\\u0438\\u043c\\u0430\\u043b\\u044c\\u043d\\u043e\\u0435 \\u0432\\u0440\\u0435\\u043c\\u044f \\u0437\\u0430\\u043a\\u0430\\u0437\\u0430 \\u0432 \\u0430\\u0440\\u0435\\u043d\\u0434\\u0443 \\u0434\\u0432\\u0443\\u0445\\u044d\\u0442\\u0430\\u0436\\u043d\\u043e\\u0433\\u043e \\u0430\\u0432\\u0442\\u043e\\u0431\\u0443\\u0441\\u0430 \\u0441\\u043e\\u0441\\u0442\\u0430\\u0432\\u043b\\u044f\\u0435\\u0442 3 \\u0447\\u0430\\u0441\\u0430.<\\/span><\\/span><\\/p>\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"apply\",\"status\":\"published\",\"template\":\"default\",\"image\":null}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '::1', 1, 5, 'АРЕНДА', 'info', '2022-08-23 23:23:50', '2022-08-23 23:23:50'),
(36, 1, 'page', '{\"name\":\"\\u0410\\u0420\\u0415\\u041d\\u0414\\u0410\",\"slug\":\"arenda\",\"slug_id\":\"6\",\"is_slug_editable\":\"1\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":null,\"is_featured\":\"0\",\"content\":\"<p style=\\\"text-align:justify;\\\"><span style=\\\"background-color:rgb(243,243,243);color:rgb(79,65,66);\\\"><span>\\u0410\\u0440\\u0435\\u043d\\u0434\\u0430 \\u0434\\u0432\\u0443\\u0445\\u044d\\u0442\\u0430\\u0436\\u043d\\u043e\\u0433\\u043e \\u0430\\u0432\\u0442\\u043e\\u0431\\u0443\\u0441\\u0430 \\u0441\\u043e\\u0441\\u0442\\u0430\\u0432\\u043b\\u044f\\u0435\\u0442 1 000&nbsp;000 \\u0441\\u0443\\u043c \\u0437\\u0430 \\u043e\\u0434\\u0438\\u043d \\u0447\\u0430\\u0441 \\u043f\\u0440\\u0438 \\u0443\\u0441\\u043b\\u043e\\u0432\\u0438\\u0438, \\u0447\\u0442\\u043e \\u043f\\u043e\\u0441\\u0430\\u0434\\u043a\\u0430 \\u0433\\u0440\\u0430\\u0436\\u0434\\u0430\\u043d \\u0438 \\u043a\\u043e\\u043d\\u0435\\u0447\\u043d\\u0430\\u044f \\u0442\\u043e\\u0447\\u043a\\u0430 \\u043c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442\\u0430 \\u043f\\u0435\\u0440\\u0435\\u0434 \\u0433\\u043b\\u0430\\u0432\\u043d\\u044b\\u043c \\u0432\\u0445\\u043e\\u0434\\u043e\\u043c \\u0432&nbsp; \\u0433\\u043e\\u0441\\u0442\\u0438\\u043d\\u0438\\u0446\\u0443 \\u0423\\u0437\\u0431\\u0435\\u043a\\u0438\\u0441\\u0442\\u0430\\u043d, \\u0432 \\u0441\\u043b\\u0443\\u0447\\u0430\\u0435 \\u0435\\u0441\\u043b\\u0438 \\u043f\\u043e\\u0441\\u0430\\u0434\\u043a\\u0430 \\u0433\\u0440\\u0430\\u0436\\u0434\\u0430\\u043d \\u0438 \\u043a\\u043e\\u043d\\u0435\\u0447\\u043d\\u0430\\u044f \\u0442\\u043e\\u0447\\u043a\\u0430 \\u043c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442\\u0430 \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0434\\u0440\\u0443\\u0433\\u0438\\u043c \\u043c\\u0435\\u0441\\u0442\\u043e\\u0440\\u0430\\u0441\\u043f\\u043e\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u0435\\u043c, \\u0432 \\u044d\\u0442\\u043e\\u043c \\u0441\\u043b\\u0443\\u0447\\u0430\\u0435 \\u043a \\u043e\\u0441\\u043d\\u043e\\u0432\\u043d\\u043e\\u0439 \\u0441\\u0443\\u043c\\u043c\\u0435 \\u043f\\u0440\\u0438\\u0431\\u0430\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f 500&nbsp;000 \\u0441\\u0443\\u043c. \\u041c\\u0438\\u043d\\u0438\\u043c\\u0430\\u043b\\u044c\\u043d\\u043e\\u0435 \\u0432\\u0440\\u0435\\u043c\\u044f \\u0437\\u0430\\u043a\\u0430\\u0437\\u0430 \\u0432 \\u0430\\u0440\\u0435\\u043d\\u0434\\u0443 \\u0434\\u0432\\u0443\\u0445\\u044d\\u0442\\u0430\\u0436\\u043d\\u043e\\u0433\\u043e \\u0430\\u0432\\u0442\\u043e\\u0431\\u0443\\u0441\\u0430 \\u0441\\u043e\\u0441\\u0442\\u0430\\u0432\\u043b\\u044f\\u0435\\u0442 3 \\u0447\\u0430\\u0441\\u0430.&nbsp;<\\/span><\\/span><\\/p>\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"uz_UZ\",\"status\":\"published\",\"template\":\"default\",\"image\":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '::1', 1, 5, 'АРЕНДА', 'primary', '2022-08-23 23:23:52', '2022-08-23 23:23:52'),
(37, 1, 'page', '{\"name\":\"\\u041d\\u0410\\u0428\\u0418 \\u0413\\u0418\\u0414\\u042b\",\"slug\":\"nasi-gidy\",\"slug_id\":\"0\",\"is_slug_editable\":\"1\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":null,\"is_featured\":\"0\",\"content\":\"<p style=\\\"-webkit-text-stroke-width:0px;background-color:rgb(243, 243, 243);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\\\"><strong style=\\\"box-sizing:border-box;font-family:OpenSansBold, Arial, sans-serif;font-weight:normal;outline:none;\\\">\\u041d\\u0430\\u0448\\u0438 \\u0433\\u0438\\u0434\\u044b:<\\/strong><\\/p><p style=\\\"-webkit-text-stroke-width:0px;background-color:rgb(243, 243, 243);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\\\">\\u041a\\u0430\\u043c\\u0430\\u043b\\u043e\\u0432 \\u0420\\u0430\\u0445\\u043c\\u0430\\u0442\\u0445\\u043e\\u043d \\u0410\\u043a\\u0437\\u0430\\u043c\\u043e\\u0432\\u0438\\u0447 \\u2013 \\u0443\\u0437\\u0431\\u0435\\u043a\\u0441\\u043a\\u0438\\u0439 \\u044f\\u0437\\u044b\\u043a.<\\/p><p style=\\\"-webkit-text-stroke-width:0px;background-color:rgb(243, 243, 243);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\\\">\\u0410\\u0443\\u0434\\u0438\\u043d\\u043e\\u0432\\u0430 \\u0410\\u044d\\u043b\\u0438\\u0442\\u0430 \\u0410\\u0440\\u043a\\u0430\\u0434\\u0438\\u0435\\u0432\\u043d\\u0430 \\u2013 \\u0440\\u0443\\u0441\\u0441\\u043a\\u0438\\u0439, \\u0438\\u0442\\u0430\\u043b\\u044c\\u044f\\u043d\\u0441\\u043a\\u0438\\u0439 \\u044f\\u0437\\u044b\\u043a\\u0438.<\\/p><p style=\\\"-webkit-text-stroke-width:0px;background-color:rgb(243, 243, 243);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\\\">\\u0410\\u0440\\u0438\\u043f\\u043e\\u0432\\u0430 \\u0414\\u0438\\u043b\\u044c\\u043d\\u043e\\u0437\\u0430 \\u041c\\u0430\\u043a\\u0441\\u0443\\u0434\\u043e\\u0432\\u043d\\u0430- \\u0440\\u0443\\u0441\\u0441\\u043a\\u0438\\u0439, \\u0430\\u043d\\u0433\\u043b\\u0438\\u0439\\u0441\\u043a\\u0438\\u0439 \\u044f\\u0437\\u044b\\u043a\\u0438.<\\/p><p style=\\\"-webkit-text-stroke-width:0px;background-color:rgb(243, 243, 243);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\\\">&nbsp;\\u041a\\u0430\\u0441\\u043a\\u0435\\u043d\\u043e\\u0432 \\u0422\\u0438\\u043c\\u0443\\u0440 \\u0413\\u0430\\u0439\\u0434\\u0430\\u0440\\u043e\\u0432\\u0438\\u0447 - \\u0430\\u043d\\u0433\\u043b\\u0438\\u0439\\u0441\\u043a\\u0438\\u0439 \\u044f\\u0437\\u044b\\u043a.<\\/p><p style=\\\"-webkit-text-stroke-width:0px;background-color:rgb(243, 243, 243);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\\\">\\u0428\\u043e\\u043c\\u0430\\u043d\\u0441\\u0443\\u0440\\u043e\\u0432 \\u0428\\u043e\\u0430\\u0441\\u0438\\u043b \\u2013 \\u043d\\u0435\\u043c\\u0435\\u0446\\u043a\\u0438\\u0439 \\u044f\\u0437\\u044b\\u043a.<\\/p><p style=\\\"-webkit-text-stroke-width:0px;background-color:rgb(243, 243, 243);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\\\">\\u0410\\u043b\\u0430\\u0443\\u0434\\u0438\\u043d\\u043e\\u0432 \\u0410\\u043b\\u0435\\u043a\\u0441\\u0430\\u043d\\u0434\\u0440 - \\u0444\\u0440\\u0430\\u043d\\u0446\\u0443\\u0437\\u0441\\u043a\\u0438\\u0439 \\u044f\\u0437\\u044b\\u043a.<\\/p><p style=\\\"-webkit-text-stroke-width:0px;background-color:rgb(243, 243, 243);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\\\">\\u041c\\u0438\\u0440\\u0430\\u0431\\u0434\\u0443\\u043b\\u043b\\u0430\\u0435\\u0432 \\u0410\\u043a\\u043c\\u0430\\u043b\\u044c- \\u043a\\u0438\\u0442\\u0430\\u0439\\u0441\\u043a\\u0438\\u0439 \\u044f\\u0437\\u044b\\u043a.<\\/p>\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"template\":\"default\",\"image\":null}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '::1', 1, 6, 'НАШИ ГИДЫ', 'info', '2022-08-23 23:24:15', '2022-08-23 23:24:15'),
(38, 1, 'page', '{\"name\":\"\\u0426\\u0415\\u041d\\u042b\",\"slug\":\"ceny\",\"slug_id\":\"0\",\"is_slug_editable\":\"1\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":null,\"is_featured\":\"0\",\"content\":\"<p style=\\\"-webkit-text-stroke-width:0px;background-color:rgb(243, 243, 243);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\\\">\\u0421\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u044c \\u0431\\u0438\\u043b\\u0435\\u0442\\u0430 \\u0434\\u043b\\u044f \\u0438\\u043d\\u043e\\u0441\\u0442\\u0440\\u0430\\u043d\\u043d\\u044b\\u0445 \\u0433\\u0440\\u0430\\u0436\\u0434\\u0430\\u043d \\u0438 \\u0433\\u0440\\u0430\\u0436\\u0434\\u0430\\u043d \\u0421\\u041d\\u0413 150 000 \\u0441\\u0443\\u043c.<\\/p><p style=\\\"-webkit-text-stroke-width:0px;background-color:rgb(243, 243, 243);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\\\">&nbsp;\\u0414\\u043b\\u044f \\u0433\\u0440\\u0430\\u0436\\u0434\\u0430\\u043d \\u0423\\u0437\\u0431\\u0435\\u043a\\u0438\\u0441\\u0442\\u0430\\u043d\\u0430:<\\/p><p style=\\\"-webkit-text-stroke-width:0px;background-color:rgb(243, 243, 243);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\\\">\\u0421\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u044c \\u0432\\u0437\\u0440\\u043e\\u0441\\u043b\\u043e\\u0433\\u043e \\u0431\\u0438\\u043b\\u0435\\u0442\\u0430 \\u043e\\u0442 12 \\u043b\\u0435\\u0442 \\u0434\\u043e 75 \\u043b\\u0435\\u0442&nbsp; &nbsp;\\u0441\\u043e\\u0441\\u0442\\u0430\\u0432\\u043b\\u044f\\u0435\\u0442 100 000 \\u0441\\u0443\\u043c.<\\/p><p style=\\\"-webkit-text-stroke-width:0px;background-color:rgb(243, 243, 243);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\\\">\\u0421\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u044c \\u0434\\u0435\\u0442\\u0441\\u043a\\u043e\\u0433\\u043e \\u0431\\u0438\\u043b\\u0435\\u0442\\u0430 \\u043e\\u0442 6 \\u043b\\u0435\\u0442 \\u0434\\u043e 12 \\u043b\\u0435\\u0442&nbsp; &nbsp;\\u0441\\u043e\\u0441\\u0442\\u0430\\u0432\\u043b\\u044f\\u0435\\u0442 50&nbsp;000 \\u0441\\u0443\\u043c.<\\/p><p style=\\\"-webkit-text-stroke-width:0px;background-color:rgb(243, 243, 243);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\\\">\\u0410 \\u0442\\u0430\\u043a \\u0436\\u0435 \\u0438\\u043d\\u0432\\u0430\\u043b\\u0438\\u0434\\u0430\\u043c \\u043f\\u0435\\u0440\\u0432\\u043e\\u0439 \\u0433\\u0440\\u0443\\u043f\\u043f\\u044b, \\u0411\\u0415\\u0421\\u041f\\u041b\\u0410\\u0422\\u041d\\u041e!!!<\\/p>\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"status\":\"published\",\"template\":\"default\",\"image\":null}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '::1', 1, 7, 'ЦЕНЫ', 'info', '2022-08-23 23:24:43', '2022-08-23 23:24:43'),
(39, 1, 'menu', '{\"name\":\"main-menu\",\"deleted_nodes\":\"8\",\"menu_nodes\":\"[{\\\"id\\\":\\\"3\\\",\\\"title\\\":\\\"\\u041e \\u041d\\u0410\\u0421\\\",\\\"referenceId\\\":\\\"2\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"customUrl\\\":\\\"\\/uz\\/o-nas\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"id\\\":\\\"4\\\",\\\"title\\\":\\\"\\u041c\\u0410\\u0420\\u0428\\u0420\\u0423\\u0422\\u042b\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"id\\\":\\\"5\\\",\\\"title\\\":\\\"\\u0420\\u0410\\u0421\\u041f\\u0418\\u0421\\u0410\\u041d\\u0418\\u0415\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":2,\\\"children\\\":[]},{\\\"id\\\":\\\"6\\\",\\\"title\\\":\\\"\\u0426\\u0415\\u041d\\u042b\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":3,\\\"children\\\":[]},{\\\"id\\\":\\\"7\\\",\\\"title\\\":\\\"\\u0420\\u0415\\u041a\\u041b\\u0410\\u041c\\u0410\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":4,\\\"children\\\":[]},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"\\u0410\\u0420\\u0415\\u041d\\u0414\\u0410\\\",\\\"referenceId\\\":\\\"5\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":5,\\\"children\\\":[]},{\\\"id\\\":\\\"9\\\",\\\"title\\\":\\\"\\u041d\\u0410\\u0428\\u0418 \\u0413\\u0418\\u0414\\u042b\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":6,\\\"children\\\":[]},{\\\"id\\\":\\\"11\\\",\\\"title\\\":\\\"\\u041a\\u041e\\u041d\\u0422\\u0410\\u041a\\u0422\\u042b\\\",\\\"referenceId\\\":\\\"3\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"customUrl\\\":\\\"\\/uz\\/kontakty\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":7,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"\\u041a\\u041e\\u041d\\u0422\\u0410\\u041a\\u0422\\u042b\",\"icon-font\":null,\"class\":null,\"custom-url\":\"\\/\",\"locations\":[\"main-menu\"],\"submit\":\"apply\",\"language\":\"uz_UZ\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '::1', 1, 1, 'main-menu', 'primary', '2022-08-23 23:50:21', '2022-08-23 23:50:21'),
(40, 1, 'menu_location', '{\"name\":\"main-menu\",\"deleted_nodes\":\"8\",\"menu_nodes\":\"[{\\\"id\\\":\\\"3\\\",\\\"title\\\":\\\"\\u041e \\u041d\\u0410\\u0421\\\",\\\"referenceId\\\":\\\"2\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"customUrl\\\":\\\"\\/uz\\/o-nas\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"id\\\":\\\"4\\\",\\\"title\\\":\\\"\\u041c\\u0410\\u0420\\u0428\\u0420\\u0423\\u0422\\u042b\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"id\\\":\\\"5\\\",\\\"title\\\":\\\"\\u0420\\u0410\\u0421\\u041f\\u0418\\u0421\\u0410\\u041d\\u0418\\u0415\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":2,\\\"children\\\":[]},{\\\"id\\\":\\\"6\\\",\\\"title\\\":\\\"\\u0426\\u0415\\u041d\\u042b\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":3,\\\"children\\\":[]},{\\\"id\\\":\\\"7\\\",\\\"title\\\":\\\"\\u0420\\u0415\\u041a\\u041b\\u0410\\u041c\\u0410\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":4,\\\"children\\\":[]},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"\\u0410\\u0420\\u0415\\u041d\\u0414\\u0410\\\",\\\"referenceId\\\":\\\"5\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":5,\\\"children\\\":[]},{\\\"id\\\":\\\"9\\\",\\\"title\\\":\\\"\\u041d\\u0410\\u0428\\u0418 \\u0413\\u0418\\u0414\\u042b\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":6,\\\"children\\\":[]},{\\\"id\\\":\\\"11\\\",\\\"title\\\":\\\"\\u041a\\u041e\\u041d\\u0422\\u0410\\u041a\\u0422\\u042b\\\",\\\"referenceId\\\":\\\"3\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"customUrl\\\":\\\"\\/uz\\/kontakty\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":7,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"\\u041a\\u041e\\u041d\\u0422\\u0410\\u041a\\u0422\\u042b\",\"icon-font\":null,\"class\":null,\"custom-url\":\"\\/\",\"locations\":[\"main-menu\"],\"submit\":\"apply\",\"language\":\"uz_UZ\",\"ref_from\":null,\"status\":\"published\"}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '::1', 1, 1, 'ID: 1', 'info', '2022-08-23 23:50:21', '2022-08-23 23:50:21'),
(41, 1, 'menu', '{\"name\":\"main-menu\",\"deleted_nodes\":\"9 6 7\",\"menu_nodes\":\"[{\\\"id\\\":\\\"3\\\",\\\"title\\\":\\\"\\u041e \\u041d\\u0410\\u0421\\\",\\\"referenceId\\\":\\\"2\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"customUrl\\\":\\\"\\/uz\\/o-nas\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"id\\\":\\\"4\\\",\\\"title\\\":\\\"\\u041c\\u0410\\u0420\\u0428\\u0420\\u0423\\u0422\\u042b\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"id\\\":\\\"5\\\",\\\"title\\\":\\\"\\u0420\\u0410\\u0421\\u041f\\u0418\\u0421\\u0410\\u041d\\u0418\\u0415\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":2,\\\"children\\\":[]},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"\\u0426\\u0415\\u041d\\u042b\\\",\\\"referenceId\\\":\\\"7\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":3,\\\"children\\\":[]},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"\\u0420\\u0415\\u041a\\u041b\\u0410\\u041c\\u0410\\\",\\\"referenceId\\\":\\\"4\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":4,\\\"children\\\":[]},{\\\"id\\\":\\\"12\\\",\\\"title\\\":\\\"\\u0410\\u0420\\u0415\\u041d\\u0414\\u0410\\\",\\\"referenceId\\\":\\\"5\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"customUrl\\\":\\\"\\/uz\\/arenda\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":5,\\\"children\\\":[]},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"\\u041d\\u0410\\u0428\\u0418 \\u0413\\u0418\\u0414\\u042b\\\",\\\"referenceId\\\":\\\"6\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":6,\\\"children\\\":[]},{\\\"id\\\":\\\"11\\\",\\\"title\\\":\\\"\\u041a\\u041e\\u041d\\u0422\\u0410\\u041a\\u0422\\u042b\\\",\\\"referenceId\\\":\\\"3\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"customUrl\\\":\\\"\\/uz\\/kontakty\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":7,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"\\u041a\\u041e\\u041d\\u0422\\u0410\\u041a\\u0422\\u042b\",\"icon-font\":null,\"class\":null,\"custom-url\":\"\\/\",\"locations\":[\"main-menu\"],\"submit\":\"save\",\"language\":\"uz_UZ\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '::1', 1, 1, 'main-menu', 'primary', '2022-08-23 23:51:05', '2022-08-23 23:51:05');
INSERT INTO `audit_histories` (`id`, `user_id`, `module`, `request`, `action`, `user_agent`, `ip_address`, `reference_user`, `reference_id`, `reference_name`, `type`, `created_at`, `updated_at`) VALUES
(42, 1, 'menu_location', '{\"name\":\"main-menu\",\"deleted_nodes\":\"9 6 7\",\"menu_nodes\":\"[{\\\"id\\\":\\\"3\\\",\\\"title\\\":\\\"\\u041e \\u041d\\u0410\\u0421\\\",\\\"referenceId\\\":\\\"2\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"customUrl\\\":\\\"\\/uz\\/o-nas\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"id\\\":\\\"4\\\",\\\"title\\\":\\\"\\u041c\\u0410\\u0420\\u0428\\u0420\\u0423\\u0422\\u042b\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"id\\\":\\\"5\\\",\\\"title\\\":\\\"\\u0420\\u0410\\u0421\\u041f\\u0418\\u0421\\u0410\\u041d\\u0418\\u0415\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":2,\\\"children\\\":[]},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"\\u0426\\u0415\\u041d\\u042b\\\",\\\"referenceId\\\":\\\"7\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":3,\\\"children\\\":[]},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"\\u0420\\u0415\\u041a\\u041b\\u0410\\u041c\\u0410\\\",\\\"referenceId\\\":\\\"4\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":4,\\\"children\\\":[]},{\\\"id\\\":\\\"12\\\",\\\"title\\\":\\\"\\u0410\\u0420\\u0415\\u041d\\u0414\\u0410\\\",\\\"referenceId\\\":\\\"5\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"customUrl\\\":\\\"\\/uz\\/arenda\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":5,\\\"children\\\":[]},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"\\u041d\\u0410\\u0428\\u0418 \\u0413\\u0418\\u0414\\u042b\\\",\\\"referenceId\\\":\\\"6\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":6,\\\"children\\\":[]},{\\\"id\\\":\\\"11\\\",\\\"title\\\":\\\"\\u041a\\u041e\\u041d\\u0422\\u0410\\u041a\\u0422\\u042b\\\",\\\"referenceId\\\":\\\"3\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"customUrl\\\":\\\"\\/uz\\/kontakty\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":7,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"\\u041a\\u041e\\u041d\\u0422\\u0410\\u041a\\u0422\\u042b\",\"icon-font\":null,\"class\":null,\"custom-url\":\"\\/\",\"locations\":[\"main-menu\"],\"submit\":\"save\",\"language\":\"uz_UZ\",\"ref_from\":null,\"status\":\"published\"}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '::1', 1, 1, 'ID: 1', 'info', '2022-08-23 23:51:05', '2022-08-23 23:51:05'),
(43, 1, 'page', '{\"name\":\"\\u041e \\u041d\\u0410\\u0421\",\"slug\":\"o-nas\",\"slug_id\":\"3\",\"is_slug_editable\":\"1\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":null,\"is_featured\":\"0\",\"content\":\"<shortcode class=\\\"bb-shortcode\\\">[section-area][\\/section-area]<\\/shortcode><shortcode class=\\\"bb-shortcode\\\">[search-filter][\\/search-filter]<\\/shortcode><h3 style=\\\"background-color:rgb(255,255,255);color:rgb(79,65,66);font-family:OpenSansLight, Arial, sans-serif;font-size:30px;font-style:normal;font-weight:500;line-height:1.1;word-spacing:0px;\\\">\\u0424\\u043e\\u0440\\u043c\\u0430 \\u043e\\u043f\\u043b\\u0430\\u0442\\u044b \\u043b\\u044e\\u0431\\u0430\\u044f!<\\/h3><p style=\\\"background-color:rgb(255,255,255);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\\\">\\u041d\\u0430\\u0447\\u0430\\u043b\\u043e \\u0441\\u0438\\u0442\\u0438 \\u0442\\u0443\\u0440\\u0430 \\u043e\\u0442 \\u0421\\u043a\\u0432\\u0435\\u0440\\u0430 \\u0410\\u043c\\u0438\\u0440\\u0430 \\u0422\\u0435\\u043c\\u0443\\u0440\\u0430 \\u043d\\u0430\\u043f\\u0440\\u043e\\u0442\\u0438\\u0432 \\u0433\\u043e\\u0441\\u0442\\u0438\\u043d\\u0438\\u0446\\u044b \\u0423\\u0437\\u0431\\u0435\\u043a\\u0438\\u0441\\u0442\\u0430\\u043d.<\\/p><p style=\\\"background-color:rgb(255,255,255);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\\\">\\u0411\\u0438\\u043b\\u0435\\u0442\\u044b \\u0432\\u044b\\u043a\\u0443\\u043f\\u0430\\u0435\\u0442\\u0435 \\u043f\\u0440\\u044f\\u043c\\u043e \\u0432 \\u0430\\u0432\\u0442\\u043e\\u0431\\u0443\\u0441\\u0435 \\u0437\\u0430 15 \\u043c\\u0438\\u043d\\u0443\\u0442 \\u043e\\u0442 \\u0432\\u044b\\u0431\\u0440\\u0430\\u043d\\u043d\\u043e\\u0433\\u043e \\u0432\\u0440\\u0435\\u043c\\u0435\\u043d\\u0438.<\\/p><p style=\\\"background-color:rgb(255,255,255);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\\\">\\u041f\\u043e\\u0440\\u044f\\u0434\\u043e\\u043a \\u0436\\u0438\\u0432\\u043e\\u0439 \\u043e\\u0447\\u0435\\u0440\\u0435\\u0434\\u0438, \\u043c\\u044b \\u043d\\u0435 \\u0431\\u0440\\u043e\\u043d\\u0438\\u0440\\u0443\\u0435\\u043c \\u043c\\u0435\\u0441\\u0442\\u0430.<\\/p><p style=\\\"background-color:rgb(255,255,255);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\\\">\\u0410\\u0432\\u0442\\u043e\\u0431\\u0443\\u0441 \\u043f\\u043e\\u0435\\u0434\\u0435\\u0442 \\u0441\\u0442\\u0440\\u043e\\u0433\\u043e \\u043f\\u043e \\u0433\\u0440\\u0430\\u0444\\u0438\\u043a\\u0443 \\u043f\\u0440\\u0438 \\u043d\\u0430\\u0431\\u043e\\u0440\\u0435 \\u043c\\u0438\\u043d\\u0438\\u043c\\u0430\\u043b\\u044c\\u043d\\u043e\\u0433\\u043e \\u043a\\u043e\\u043b\\u0438\\u0447\\u0435\\u0441\\u0442\\u0432\\u0430 6 \\u0447\\u0435\\u043b\\u043e\\u0432\\u0435\\u043a! \\u0412 \\u0441\\u043b\\u0443\\u0447\\u0430\\u0435 \\u043d\\u0435\\u0434\\u043e\\u0431\\u043e\\u0440\\u0430 \\u043e\\u0436\\u0438\\u0434\\u0430\\u043d\\u0438\\u0435 \\u0434\\u043e \\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0435\\u0433\\u043e \\u0440\\u0435\\u0439\\u0441\\u0430!!!<\\/p><p style=\\\"background-color:rgb(255,255,255);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\\\">\\u041f\\u0440\\u043e\\u0434\\u043e\\u043b\\u0436\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u044c 2 \\u0447\\u0430\\u0441\\u0430, 3 \\u043e\\u0441\\u0442\\u0430\\u043d\\u043e\\u0432\\u043a\\u0438:<br>&nbsp;<\\/p><ul><li style=\\\"background-color:rgb(255,255,255);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\\\">\\u041c\\u0435\\u043c\\u043e\\u0440\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u043a\\u043e\\u043c\\u043f\\u043b\\u0435\\u043a\\u0441 \\u00ab\\u0428\\u0430\\u0445\\u0438\\u0434\\u043b\\u0430\\u0440 \\u043c\\u0430\\u0439\\u0434\\u043e\\u043d\\u0438\\u00bb-10 \\u043c\\u0438\\u043d\\u0443\\u0442<\\/li><li style=\\\"background-color:rgb(255,255,255);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\\\">\\u041c\\u0435\\u0447\\u0435\\u0442\\u044c \\u041c\\u0438\\u043d\\u043e\\u0440-10 \\u043c\\u0438\\u043d\\u0443\\u0442<\\/li><li style=\\\"background-color:rgb(255,255,255);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\\\">\\u041a\\u043e\\u043c\\u043f\\u043b\\u0435\\u043a\\u0441 \\u00ab\\u0425\\u0430\\u0441\\u0442 \\u0418\\u043c\\u0430\\u043c\\u00bb -20 \\u043c\\u0438\\u043d\\u0443\\u0442<\\/li><\\/ul><p style=\\\"background-color:rgb(255,255,255);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\\\">\\u0412 \\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u044c \\u0432\\u0445\\u043e\\u0434\\u0438\\u0442 \\u044d\\u043a\\u0441\\u043a\\u0443\\u0440\\u0441\\u0438\\u044f \\u0441 \\u0430\\u0443\\u0434\\u0438\\u043e \\u0433\\u0438\\u0434\\u043e\\u043c \\u043d\\u0430 8 \\u044f\\u0437\\u044b\\u043a\\u0430\\u0445.<\\/p><p style=\\\"background-color:rgb(255,255,255);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\\\">\\u0413\\u0440\\u0430\\u0444\\u0438\\u043a: \\u041e\\u0442\\u043f\\u0440\\u0430\\u0432\\u043a\\u0430 \\u043e\\u0442 \\u0433\\u043e\\u0441\\u0442\\u0438\\u043d\\u0438\\u0446\\u044b \\u0423\\u0437\\u0431\\u0435\\u043a\\u0438\\u0441\\u0442\\u0430\\u043d \\u043a\\u0430\\u0436\\u0434\\u044b\\u0439 \\u0434\\u0435\\u043d\\u044c \\u0441 10:00 \\u0434\\u043e 17:00 \\u043a\\u0430\\u0436\\u0434\\u044b\\u0439 \\u0447\\u0430\\u0441<\\/p><h4 style=\\\"background-color:rgb(255,255,255);color:rgb(79,65,66);font-family:OpenSansLight, Arial, sans-serif;font-size:18px;font-style:normal;font-weight:500;line-height:1.1;word-spacing:0px;\\\">\\u041d\\u0430\\u0448\\u0438 \\u0442\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d\\u044b:<br><br>+998 99 945-13-13<br><br>+998 90 843-13-13<\\/h4>\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"uz_UZ\",\"status\":\"published\",\"template\":\"default\",\"image\":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '::1', 1, 2, 'О НАС', 'primary', '2022-08-23 23:52:07', '2022-08-23 23:52:07'),
(44, 1, 'page', '{\"name\":\"\\u041e \\u041d\\u0410\\u0421\",\"slug\":\"o-nas\",\"slug_id\":\"3\",\"is_slug_editable\":\"1\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":null,\"is_featured\":\"0\",\"content\":\"<shortcode class=\\\"bb-shortcode\\\">[section-area style=\\\"other-page\\\"][\\/section-area]<\\/shortcode><shortcode class=\\\"bb-shortcode\\\">[search-filter][\\/search-filter]<\\/shortcode><h3 style=\\\"background-color:rgb(255,255,255);color:rgb(79,65,66);font-family:OpenSansLight, Arial, sans-serif;font-size:30px;font-style:normal;font-weight:500;line-height:1.1;word-spacing:0px;\\\">\\u0424\\u043e\\u0440\\u043c\\u0430 \\u043e\\u043f\\u043b\\u0430\\u0442\\u044b \\u043b\\u044e\\u0431\\u0430\\u044f!<\\/h3><p style=\\\"background-color:rgb(255,255,255);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\\\">\\u041d\\u0430\\u0447\\u0430\\u043b\\u043e \\u0441\\u0438\\u0442\\u0438 \\u0442\\u0443\\u0440\\u0430 \\u043e\\u0442 \\u0421\\u043a\\u0432\\u0435\\u0440\\u0430 \\u0410\\u043c\\u0438\\u0440\\u0430 \\u0422\\u0435\\u043c\\u0443\\u0440\\u0430 \\u043d\\u0430\\u043f\\u0440\\u043e\\u0442\\u0438\\u0432 \\u0433\\u043e\\u0441\\u0442\\u0438\\u043d\\u0438\\u0446\\u044b \\u0423\\u0437\\u0431\\u0435\\u043a\\u0438\\u0441\\u0442\\u0430\\u043d.<\\/p><p style=\\\"background-color:rgb(255,255,255);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\\\">\\u0411\\u0438\\u043b\\u0435\\u0442\\u044b \\u0432\\u044b\\u043a\\u0443\\u043f\\u0430\\u0435\\u0442\\u0435 \\u043f\\u0440\\u044f\\u043c\\u043e \\u0432 \\u0430\\u0432\\u0442\\u043e\\u0431\\u0443\\u0441\\u0435 \\u0437\\u0430 15 \\u043c\\u0438\\u043d\\u0443\\u0442 \\u043e\\u0442 \\u0432\\u044b\\u0431\\u0440\\u0430\\u043d\\u043d\\u043e\\u0433\\u043e \\u0432\\u0440\\u0435\\u043c\\u0435\\u043d\\u0438.<\\/p><p style=\\\"background-color:rgb(255,255,255);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\\\">\\u041f\\u043e\\u0440\\u044f\\u0434\\u043e\\u043a \\u0436\\u0438\\u0432\\u043e\\u0439 \\u043e\\u0447\\u0435\\u0440\\u0435\\u0434\\u0438, \\u043c\\u044b \\u043d\\u0435 \\u0431\\u0440\\u043e\\u043d\\u0438\\u0440\\u0443\\u0435\\u043c \\u043c\\u0435\\u0441\\u0442\\u0430.<\\/p><p style=\\\"background-color:rgb(255,255,255);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\\\">\\u0410\\u0432\\u0442\\u043e\\u0431\\u0443\\u0441 \\u043f\\u043e\\u0435\\u0434\\u0435\\u0442 \\u0441\\u0442\\u0440\\u043e\\u0433\\u043e \\u043f\\u043e \\u0433\\u0440\\u0430\\u0444\\u0438\\u043a\\u0443 \\u043f\\u0440\\u0438 \\u043d\\u0430\\u0431\\u043e\\u0440\\u0435 \\u043c\\u0438\\u043d\\u0438\\u043c\\u0430\\u043b\\u044c\\u043d\\u043e\\u0433\\u043e \\u043a\\u043e\\u043b\\u0438\\u0447\\u0435\\u0441\\u0442\\u0432\\u0430 6 \\u0447\\u0435\\u043b\\u043e\\u0432\\u0435\\u043a! \\u0412 \\u0441\\u043b\\u0443\\u0447\\u0430\\u0435 \\u043d\\u0435\\u0434\\u043e\\u0431\\u043e\\u0440\\u0430 \\u043e\\u0436\\u0438\\u0434\\u0430\\u043d\\u0438\\u0435 \\u0434\\u043e \\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0435\\u0433\\u043e \\u0440\\u0435\\u0439\\u0441\\u0430!!!<\\/p><p style=\\\"background-color:rgb(255,255,255);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\\\">\\u041f\\u0440\\u043e\\u0434\\u043e\\u043b\\u0436\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u044c 2 \\u0447\\u0430\\u0441\\u0430, 3 \\u043e\\u0441\\u0442\\u0430\\u043d\\u043e\\u0432\\u043a\\u0438:<br>&nbsp;<\\/p><ul><li style=\\\"background-color:rgb(255,255,255);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\\\">\\u041c\\u0435\\u043c\\u043e\\u0440\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u043a\\u043e\\u043c\\u043f\\u043b\\u0435\\u043a\\u0441 \\u00ab\\u0428\\u0430\\u0445\\u0438\\u0434\\u043b\\u0430\\u0440 \\u043c\\u0430\\u0439\\u0434\\u043e\\u043d\\u0438\\u00bb-10 \\u043c\\u0438\\u043d\\u0443\\u0442<\\/li><li style=\\\"background-color:rgb(255,255,255);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\\\">\\u041c\\u0435\\u0447\\u0435\\u0442\\u044c \\u041c\\u0438\\u043d\\u043e\\u0440-10 \\u043c\\u0438\\u043d\\u0443\\u0442<\\/li><li style=\\\"background-color:rgb(255,255,255);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\\\">\\u041a\\u043e\\u043c\\u043f\\u043b\\u0435\\u043a\\u0441 \\u00ab\\u0425\\u0430\\u0441\\u0442 \\u0418\\u043c\\u0430\\u043c\\u00bb -20 \\u043c\\u0438\\u043d\\u0443\\u0442<\\/li><\\/ul><p style=\\\"background-color:rgb(255,255,255);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\\\">\\u0412 \\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u044c \\u0432\\u0445\\u043e\\u0434\\u0438\\u0442 \\u044d\\u043a\\u0441\\u043a\\u0443\\u0440\\u0441\\u0438\\u044f \\u0441 \\u0430\\u0443\\u0434\\u0438\\u043e \\u0433\\u0438\\u0434\\u043e\\u043c \\u043d\\u0430 8 \\u044f\\u0437\\u044b\\u043a\\u0430\\u0445.<\\/p><p style=\\\"background-color:rgb(255,255,255);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\\\">\\u0413\\u0440\\u0430\\u0444\\u0438\\u043a: \\u041e\\u0442\\u043f\\u0440\\u0430\\u0432\\u043a\\u0430 \\u043e\\u0442 \\u0433\\u043e\\u0441\\u0442\\u0438\\u043d\\u0438\\u0446\\u044b \\u0423\\u0437\\u0431\\u0435\\u043a\\u0438\\u0441\\u0442\\u0430\\u043d \\u043a\\u0430\\u0436\\u0434\\u044b\\u0439 \\u0434\\u0435\\u043d\\u044c \\u0441 10:00 \\u0434\\u043e 17:00 \\u043a\\u0430\\u0436\\u0434\\u044b\\u0439 \\u0447\\u0430\\u0441<\\/p><h4 style=\\\"background-color:rgb(255,255,255);color:rgb(79,65,66);font-family:OpenSansLight, Arial, sans-serif;font-size:18px;font-style:normal;font-weight:500;line-height:1.1;word-spacing:0px;\\\">\\u041d\\u0430\\u0448\\u0438 \\u0442\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d\\u044b:<br><br>+998 99 945-13-13<br><br>+998 90 843-13-13<\\/h4>\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"uz_UZ\",\"status\":\"published\",\"template\":\"default\",\"image\":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '::1', 1, 2, 'О НАС', 'primary', '2022-08-23 23:54:59', '2022-08-23 23:54:59'),
(45, 1, 'page', '{\"name\":\"\\u041e \\u041d\\u0410\\u0421\",\"slug\":\"o-nas\",\"slug_id\":\"3\",\"is_slug_editable\":\"1\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":null,\"is_featured\":\"0\",\"content\":\"<shortcode class=\\\"bb-shortcode\\\">[section-area style=\\\"other-page\\\"][\\/section-area]<\\/shortcode><shortcode class=\\\"bb-shortcode\\\">[search-filter style=\\\"other-page-filter\\\"][\\/search-filter]<\\/shortcode><h3 style=\\\"background-color:rgb(255,255,255);color:rgb(79,65,66);font-family:OpenSansLight, Arial, sans-serif;font-size:30px;font-style:normal;font-weight:500;line-height:1.1;word-spacing:0px;\\\">\\u0424\\u043e\\u0440\\u043c\\u0430 \\u043e\\u043f\\u043b\\u0430\\u0442\\u044b \\u043b\\u044e\\u0431\\u0430\\u044f!<\\/h3><p style=\\\"background-color:rgb(255,255,255);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\\\">\\u041d\\u0430\\u0447\\u0430\\u043b\\u043e \\u0441\\u0438\\u0442\\u0438 \\u0442\\u0443\\u0440\\u0430 \\u043e\\u0442 \\u0421\\u043a\\u0432\\u0435\\u0440\\u0430 \\u0410\\u043c\\u0438\\u0440\\u0430 \\u0422\\u0435\\u043c\\u0443\\u0440\\u0430 \\u043d\\u0430\\u043f\\u0440\\u043e\\u0442\\u0438\\u0432 \\u0433\\u043e\\u0441\\u0442\\u0438\\u043d\\u0438\\u0446\\u044b \\u0423\\u0437\\u0431\\u0435\\u043a\\u0438\\u0441\\u0442\\u0430\\u043d.<\\/p><p style=\\\"background-color:rgb(255,255,255);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\\\">\\u0411\\u0438\\u043b\\u0435\\u0442\\u044b \\u0432\\u044b\\u043a\\u0443\\u043f\\u0430\\u0435\\u0442\\u0435 \\u043f\\u0440\\u044f\\u043c\\u043e \\u0432 \\u0430\\u0432\\u0442\\u043e\\u0431\\u0443\\u0441\\u0435 \\u0437\\u0430 15 \\u043c\\u0438\\u043d\\u0443\\u0442 \\u043e\\u0442 \\u0432\\u044b\\u0431\\u0440\\u0430\\u043d\\u043d\\u043e\\u0433\\u043e \\u0432\\u0440\\u0435\\u043c\\u0435\\u043d\\u0438.<\\/p><p style=\\\"background-color:rgb(255,255,255);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\\\">\\u041f\\u043e\\u0440\\u044f\\u0434\\u043e\\u043a \\u0436\\u0438\\u0432\\u043e\\u0439 \\u043e\\u0447\\u0435\\u0440\\u0435\\u0434\\u0438, \\u043c\\u044b \\u043d\\u0435 \\u0431\\u0440\\u043e\\u043d\\u0438\\u0440\\u0443\\u0435\\u043c \\u043c\\u0435\\u0441\\u0442\\u0430.<\\/p><p style=\\\"background-color:rgb(255,255,255);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\\\">\\u0410\\u0432\\u0442\\u043e\\u0431\\u0443\\u0441 \\u043f\\u043e\\u0435\\u0434\\u0435\\u0442 \\u0441\\u0442\\u0440\\u043e\\u0433\\u043e \\u043f\\u043e \\u0433\\u0440\\u0430\\u0444\\u0438\\u043a\\u0443 \\u043f\\u0440\\u0438 \\u043d\\u0430\\u0431\\u043e\\u0440\\u0435 \\u043c\\u0438\\u043d\\u0438\\u043c\\u0430\\u043b\\u044c\\u043d\\u043e\\u0433\\u043e \\u043a\\u043e\\u043b\\u0438\\u0447\\u0435\\u0441\\u0442\\u0432\\u0430 6 \\u0447\\u0435\\u043b\\u043e\\u0432\\u0435\\u043a! \\u0412 \\u0441\\u043b\\u0443\\u0447\\u0430\\u0435 \\u043d\\u0435\\u0434\\u043e\\u0431\\u043e\\u0440\\u0430 \\u043e\\u0436\\u0438\\u0434\\u0430\\u043d\\u0438\\u0435 \\u0434\\u043e \\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0435\\u0433\\u043e \\u0440\\u0435\\u0439\\u0441\\u0430!!!<\\/p><p style=\\\"background-color:rgb(255,255,255);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\\\">\\u041f\\u0440\\u043e\\u0434\\u043e\\u043b\\u0436\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u044c 2 \\u0447\\u0430\\u0441\\u0430, 3 \\u043e\\u0441\\u0442\\u0430\\u043d\\u043e\\u0432\\u043a\\u0438:<br>&nbsp;<\\/p><ul><li style=\\\"background-color:rgb(255,255,255);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\\\">\\u041c\\u0435\\u043c\\u043e\\u0440\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u043a\\u043e\\u043c\\u043f\\u043b\\u0435\\u043a\\u0441 \\u00ab\\u0428\\u0430\\u0445\\u0438\\u0434\\u043b\\u0430\\u0440 \\u043c\\u0430\\u0439\\u0434\\u043e\\u043d\\u0438\\u00bb-10 \\u043c\\u0438\\u043d\\u0443\\u0442<\\/li><li style=\\\"background-color:rgb(255,255,255);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\\\">\\u041c\\u0435\\u0447\\u0435\\u0442\\u044c \\u041c\\u0438\\u043d\\u043e\\u0440-10 \\u043c\\u0438\\u043d\\u0443\\u0442<\\/li><li style=\\\"background-color:rgb(255,255,255);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\\\">\\u041a\\u043e\\u043c\\u043f\\u043b\\u0435\\u043a\\u0441 \\u00ab\\u0425\\u0430\\u0441\\u0442 \\u0418\\u043c\\u0430\\u043c\\u00bb -20 \\u043c\\u0438\\u043d\\u0443\\u0442<\\/li><\\/ul><p style=\\\"background-color:rgb(255,255,255);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\\\">\\u0412 \\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u044c \\u0432\\u0445\\u043e\\u0434\\u0438\\u0442 \\u044d\\u043a\\u0441\\u043a\\u0443\\u0440\\u0441\\u0438\\u044f \\u0441 \\u0430\\u0443\\u0434\\u0438\\u043e \\u0433\\u0438\\u0434\\u043e\\u043c \\u043d\\u0430 8 \\u044f\\u0437\\u044b\\u043a\\u0430\\u0445.<\\/p><p style=\\\"background-color:rgb(255,255,255);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\\\">\\u0413\\u0440\\u0430\\u0444\\u0438\\u043a: \\u041e\\u0442\\u043f\\u0440\\u0430\\u0432\\u043a\\u0430 \\u043e\\u0442 \\u0433\\u043e\\u0441\\u0442\\u0438\\u043d\\u0438\\u0446\\u044b \\u0423\\u0437\\u0431\\u0435\\u043a\\u0438\\u0441\\u0442\\u0430\\u043d \\u043a\\u0430\\u0436\\u0434\\u044b\\u0439 \\u0434\\u0435\\u043d\\u044c \\u0441 10:00 \\u0434\\u043e 17:00 \\u043a\\u0430\\u0436\\u0434\\u044b\\u0439 \\u0447\\u0430\\u0441<\\/p><h4 style=\\\"background-color:rgb(255,255,255);color:rgb(79,65,66);font-family:OpenSansLight, Arial, sans-serif;font-size:18px;font-style:normal;font-weight:500;line-height:1.1;word-spacing:0px;\\\">\\u041d\\u0430\\u0448\\u0438 \\u0442\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d\\u044b:<br><br>+998 99 945-13-13<br><br>+998 90 843-13-13<\\/h4>\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"uz_UZ\",\"status\":\"published\",\"template\":\"default\",\"image\":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '::1', 1, 2, 'О НАС', 'primary', '2022-08-23 23:59:28', '2022-08-23 23:59:28'),
(46, 1, 'page', '{\"name\":\"\\u041d\\u0410\\u0428\\u0418 \\u0413\\u0418\\u0414\\u042b\",\"slug\":\"nasi-gidy\",\"slug_id\":\"7\",\"is_slug_editable\":\"1\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":null,\"is_featured\":\"0\",\"content\":\"<shortcode class=\\\"bb-shortcode\\\">[section-area style=\\\"other-page\\\"][\\/section-area]<\\/shortcode><shortcode class=\\\"bb-shortcode\\\">[search-filter style=\\\"other-page-filter\\\"][\\/search-filter]<\\/shortcode><p style=\\\"background-color:rgb(243,243,243);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\\\"><strong style=\\\"font-family:OpenSansBold, Arial, sans-serif;font-weight:normal;\\\">\\u041d\\u0430\\u0448\\u0438 \\u0433\\u0438\\u0434\\u044b:<\\/strong><\\/p><p style=\\\"background-color:rgb(243,243,243);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\\\">\\u041a\\u0430\\u043c\\u0430\\u043b\\u043e\\u0432 \\u0420\\u0430\\u0445\\u043c\\u0430\\u0442\\u0445\\u043e\\u043d \\u0410\\u043a\\u0437\\u0430\\u043c\\u043e\\u0432\\u0438\\u0447 \\u2013 \\u0443\\u0437\\u0431\\u0435\\u043a\\u0441\\u043a\\u0438\\u0439 \\u044f\\u0437\\u044b\\u043a.<\\/p><p style=\\\"background-color:rgb(243,243,243);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\\\">\\u0410\\u0443\\u0434\\u0438\\u043d\\u043e\\u0432\\u0430 \\u0410\\u044d\\u043b\\u0438\\u0442\\u0430 \\u0410\\u0440\\u043a\\u0430\\u0434\\u0438\\u0435\\u0432\\u043d\\u0430 \\u2013 \\u0440\\u0443\\u0441\\u0441\\u043a\\u0438\\u0439, \\u0438\\u0442\\u0430\\u043b\\u044c\\u044f\\u043d\\u0441\\u043a\\u0438\\u0439 \\u044f\\u0437\\u044b\\u043a\\u0438.<\\/p><p style=\\\"background-color:rgb(243,243,243);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\\\">\\u0410\\u0440\\u0438\\u043f\\u043e\\u0432\\u0430 \\u0414\\u0438\\u043b\\u044c\\u043d\\u043e\\u0437\\u0430 \\u041c\\u0430\\u043a\\u0441\\u0443\\u0434\\u043e\\u0432\\u043d\\u0430- \\u0440\\u0443\\u0441\\u0441\\u043a\\u0438\\u0439, \\u0430\\u043d\\u0433\\u043b\\u0438\\u0439\\u0441\\u043a\\u0438\\u0439 \\u044f\\u0437\\u044b\\u043a\\u0438.<\\/p><p style=\\\"background-color:rgb(243,243,243);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\\\">&nbsp;\\u041a\\u0430\\u0441\\u043a\\u0435\\u043d\\u043e\\u0432 \\u0422\\u0438\\u043c\\u0443\\u0440 \\u0413\\u0430\\u0439\\u0434\\u0430\\u0440\\u043e\\u0432\\u0438\\u0447 - \\u0430\\u043d\\u0433\\u043b\\u0438\\u0439\\u0441\\u043a\\u0438\\u0439 \\u044f\\u0437\\u044b\\u043a.<\\/p><p style=\\\"background-color:rgb(243,243,243);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\\\">\\u0428\\u043e\\u043c\\u0430\\u043d\\u0441\\u0443\\u0440\\u043e\\u0432 \\u0428\\u043e\\u0430\\u0441\\u0438\\u043b \\u2013 \\u043d\\u0435\\u043c\\u0435\\u0446\\u043a\\u0438\\u0439 \\u044f\\u0437\\u044b\\u043a.<\\/p><p style=\\\"background-color:rgb(243,243,243);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\\\">\\u0410\\u043b\\u0430\\u0443\\u0434\\u0438\\u043d\\u043e\\u0432 \\u0410\\u043b\\u0435\\u043a\\u0441\\u0430\\u043d\\u0434\\u0440 - \\u0444\\u0440\\u0430\\u043d\\u0446\\u0443\\u0437\\u0441\\u043a\\u0438\\u0439 \\u044f\\u0437\\u044b\\u043a.<\\/p><p style=\\\"background-color:rgb(243,243,243);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\\\">\\u041c\\u0438\\u0440\\u0430\\u0431\\u0434\\u0443\\u043b\\u043b\\u0430\\u0435\\u0432 \\u0410\\u043a\\u043c\\u0430\\u043b\\u044c- \\u043a\\u0438\\u0442\\u0430\\u0439\\u0441\\u043a\\u0438\\u0439 \\u044f\\u0437\\u044b\\u043a.<\\/p>\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"uz_UZ\",\"status\":\"published\",\"template\":\"default\",\"image\":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '::1', 1, 6, 'НАШИ ГИДЫ', 'primary', '2022-08-24 00:01:13', '2022-08-24 00:01:13'),
(47, 1, 'page', '{\"name\":\"\\u0410\\u0420\\u0415\\u041d\\u0414\\u0410\",\"slug\":\"arenda\",\"slug_id\":\"6\",\"is_slug_editable\":\"1\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":null,\"is_featured\":\"0\",\"content\":\"<shortcode class=\\\"bb-shortcode\\\">[section-area style=\\\"other-page\\\"][\\/section-area]<\\/shortcode><shortcode class=\\\"bb-shortcode\\\">[search-filter style=\\\"other-page-filter\\\"][\\/search-filter]<\\/shortcode><p style=\\\"text-align:justify;\\\"><span style=\\\"background-color:rgb(243,243,243);color:rgb(79,65,66);\\\"><span>\\u0410\\u0440\\u0435\\u043d\\u0434\\u0430 \\u0434\\u0432\\u0443\\u0445\\u044d\\u0442\\u0430\\u0436\\u043d\\u043e\\u0433\\u043e \\u0430\\u0432\\u0442\\u043e\\u0431\\u0443\\u0441\\u0430 \\u0441\\u043e\\u0441\\u0442\\u0430\\u0432\\u043b\\u044f\\u0435\\u0442 1 000&nbsp;000 \\u0441\\u0443\\u043c \\u0437\\u0430 \\u043e\\u0434\\u0438\\u043d \\u0447\\u0430\\u0441 \\u043f\\u0440\\u0438 \\u0443\\u0441\\u043b\\u043e\\u0432\\u0438\\u0438, \\u0447\\u0442\\u043e \\u043f\\u043e\\u0441\\u0430\\u0434\\u043a\\u0430 \\u0433\\u0440\\u0430\\u0436\\u0434\\u0430\\u043d \\u0438 \\u043a\\u043e\\u043d\\u0435\\u0447\\u043d\\u0430\\u044f \\u0442\\u043e\\u0447\\u043a\\u0430 \\u043c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442\\u0430 \\u043f\\u0435\\u0440\\u0435\\u0434 \\u0433\\u043b\\u0430\\u0432\\u043d\\u044b\\u043c \\u0432\\u0445\\u043e\\u0434\\u043e\\u043c \\u0432&nbsp; \\u0433\\u043e\\u0441\\u0442\\u0438\\u043d\\u0438\\u0446\\u0443 \\u0423\\u0437\\u0431\\u0435\\u043a\\u0438\\u0441\\u0442\\u0430\\u043d, \\u0432 \\u0441\\u043b\\u0443\\u0447\\u0430\\u0435 \\u0435\\u0441\\u043b\\u0438 \\u043f\\u043e\\u0441\\u0430\\u0434\\u043a\\u0430 \\u0433\\u0440\\u0430\\u0436\\u0434\\u0430\\u043d \\u0438 \\u043a\\u043e\\u043d\\u0435\\u0447\\u043d\\u0430\\u044f \\u0442\\u043e\\u0447\\u043a\\u0430 \\u043c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442\\u0430 \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0434\\u0440\\u0443\\u0433\\u0438\\u043c \\u043c\\u0435\\u0441\\u0442\\u043e\\u0440\\u0430\\u0441\\u043f\\u043e\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u0435\\u043c, \\u0432 \\u044d\\u0442\\u043e\\u043c \\u0441\\u043b\\u0443\\u0447\\u0430\\u0435 \\u043a \\u043e\\u0441\\u043d\\u043e\\u0432\\u043d\\u043e\\u0439 \\u0441\\u0443\\u043c\\u043c\\u0435 \\u043f\\u0440\\u0438\\u0431\\u0430\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f 500&nbsp;000 \\u0441\\u0443\\u043c. \\u041c\\u0438\\u043d\\u0438\\u043c\\u0430\\u043b\\u044c\\u043d\\u043e\\u0435 \\u0432\\u0440\\u0435\\u043c\\u044f \\u0437\\u0430\\u043a\\u0430\\u0437\\u0430 \\u0432 \\u0430\\u0440\\u0435\\u043d\\u0434\\u0443 \\u0434\\u0432\\u0443\\u0445\\u044d\\u0442\\u0430\\u0436\\u043d\\u043e\\u0433\\u043e \\u0430\\u0432\\u0442\\u043e\\u0431\\u0443\\u0441\\u0430 \\u0441\\u043e\\u0441\\u0442\\u0430\\u0432\\u043b\\u044f\\u0435\\u0442 3 \\u0447\\u0430\\u0441\\u0430.&nbsp;&nbsp;<\\/span><\\/span><\\/p>\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"uz_UZ\",\"status\":\"published\",\"template\":\"default\",\"image\":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '::1', 1, 5, 'АРЕНДА', 'primary', '2022-08-24 00:01:23', '2022-08-24 00:01:23');
INSERT INTO `audit_histories` (`id`, `user_id`, `module`, `request`, `action`, `user_agent`, `ip_address`, `reference_user`, `reference_id`, `reference_name`, `type`, `created_at`, `updated_at`) VALUES
(48, 1, 'page', '{\"name\":\"\\u0420\\u0415\\u041a\\u041b\\u0410\\u041c\\u0410\",\"slug\":\"reklama\",\"slug_id\":\"5\",\"is_slug_editable\":\"1\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":null,\"is_featured\":\"0\",\"content\":\"<shortcode class=\\\"bb-shortcode\\\">[section-area style=\\\"other-page\\\"][\\/section-area]<\\/shortcode><shortcode class=\\\"bb-shortcode\\\">[search-filter style=\\\"other-page-filter\\\"][\\/search-filter]<\\/shortcode><p style=\\\"background-color:rgb(243,243,243);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\\\"><strong style=\\\"font-family:OpenSansBold, Arial, sans-serif;font-weight:normal;\\\"><u>\\u0420\\u0435\\u043a\\u043b\\u0430\\u043c\\u0430 \\u0434\\u0432\\u0438\\u0433\\u0430\\u0442\\u0435\\u043b\\u044c \\u0442\\u043e\\u0440\\u0433\\u043e\\u0432\\u043b\\u0438! \\u0410 \\u0434\\u0432\\u0438\\u0436\\u0443\\u0449\\u0430\\u044f\\u0441\\u044f&nbsp; \\u0440\\u0435\\u043a\\u043b\\u0430\\u043c\\u0430 \\u0434\\u0432\\u0438\\u0433\\u0430\\u0442\\u0435\\u043b\\u044c \\u0432\\u0434\\u0432\\u043e\\u0439\\u043d\\u0435 !<\\/u><\\/strong><\\/p><p style=\\\"background-color:rgb(243,243,243);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\\\">\\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u00abAZNUR TARVEL\\u00bb \\u0438\\u043c\\u0435\\u0435\\u0442 \\u0447\\u0435\\u0441\\u0442\\u044c \\u043f\\u0440\\u0435\\u0434\\u043b\\u043e\\u0436\\u0438\\u0442\\u044c \\u0412\\u0430\\u043c \\u0440\\u0430\\u0437\\u043c\\u0435\\u0449\\u0435\\u043d\\u0438\\u0435 \\u0440\\u0435\\u043a\\u043b\\u0430\\u043c\\u044b \\u043d\\u0430 \\u043d\\u0430\\u0448\\u0438\\u0445 \\u044d\\u043a\\u0441\\u043a\\u0443\\u0440\\u0441\\u0438\\u043e\\u043d\\u043d\\u044b\\u0445 \\u0430\\u0432\\u0442\\u043e\\u0431\\u0443\\u0441\\u0430\\u0445.<\\/p><p style=\\\"background-color:rgb(243,243,243);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\\\">\\u041d\\u0435 \\u0441\\u0442\\u043e\\u0438\\u0442 \\u0433\\u043e\\u0432\\u043e\\u0440\\u0438\\u0442\\u044c \\u043e \\u043f\\u043e\\u043f\\u0443\\u043b\\u044f\\u0440\\u043d\\u043e\\u0441\\u0442\\u0438 \\u0434\\u0430\\u043d\\u043d\\u044b\\u0445 \\u043c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442\\u043e\\u0432 \\u0443 \\u0433\\u043e\\u0441\\u0442\\u0435\\u0439 \\u0438 \\u0436\\u0438\\u0442\\u0435\\u043b\\u0435\\u0439 \\u0433\\u043e\\u0440\\u043e\\u0434\\u0430!<\\/p><p style=\\\"background-color:rgb(243,243,243);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\\\">\\u0410\\u0432\\u0442\\u043e\\u0431\\u0443\\u0441\\u044b \\u0441\\u043e\\u0432\\u0435\\u0440\\u0448\\u0430\\u044e\\u0442 \\u0441\\u0432\\u043e\\u0439 \\u043c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442 \\u043a\\u0430\\u0436\\u0434\\u044b\\u0439 \\u0447\\u0430\\u0441&nbsp; \\u043f\\u043e \\u0441\\u0430\\u043c\\u044b\\u043c \\u043b\\u0443\\u0447\\u0448\\u0438\\u043c \\u0438 \\u043f\\u043e\\u043f\\u0443\\u043b\\u044f\\u0440\\u043d\\u044b\\u043c \\u043c\\u0435\\u0441\\u0442\\u0430\\u043c \\u043d\\u0430\\u0448\\u0435\\u0433\\u043e&nbsp; \\u0433\\u043e\\u0440\\u043e\\u0434\\u0430. \\u0412\\u0430\\u0448\\u0443 \\u0440\\u0435\\u043a\\u043b\\u0430\\u043c\\u0443 \\u0443\\u0432\\u0438\\u0434\\u044f\\u0442 \\u043c\\u0438\\u043b\\u043b\\u0438\\u043e\\u043d\\u044b \\u0436\\u0438\\u0442\\u0435\\u043b\\u0435\\u0439 \\u0441\\u0442\\u043e\\u043b\\u0438\\u0446\\u044b . \\u041f\\u0440\\u0438 \\u044d\\u0442\\u043e\\u043c \\u043e\\u043d\\u0430 \\u0431\\u0443\\u0434\\u0435\\u0442 \\u0443 \\u043d\\u0438\\u0445 \\u043d\\u0430 \\u0432\\u0438\\u0434\\u0443 \\u043f\\u043e\\u0441\\u0442\\u043e\\u044f\\u043d\\u043d\\u043e \\u0438 \\u043a\\u0430\\u0436\\u0434\\u044b\\u0439 \\u0434\\u0435\\u043d\\u044c!<\\/p><p style=\\\"background-color:rgb(243,243,243);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\\\">\\u041d\\u0435 \\u0443\\u043f\\u0443\\u0441\\u0442\\u0438\\u0442\\u0435 \\u0432\\u043e\\u0437\\u043c\\u043e\\u0436\\u043d\\u043e\\u0441\\u0442\\u044c \\u0441\\u0434\\u0435\\u043b\\u0430\\u0442\\u044c \\u0412\\u0430\\u0448\\u0443 \\u0440\\u0435\\u043a\\u043b\\u0430\\u043c\\u0443 \\u043c\\u043e\\u0431\\u0438\\u043b\\u044c\\u043d\\u043e\\u0439 \\u0438 \\u043f\\u0440\\u0438\\u0432\\u043b\\u0435\\u043a\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0439 ! \\u041c\\u044b \\u0433\\u043e\\u0442\\u043e\\u0432\\u044b \\u043e\\u0431\\u0441\\u0443\\u0434\\u0438\\u0442\\u044c \\u0441 \\u0412\\u0430\\u043c\\u0438 \\u0434\\u0438\\u0437\\u0430\\u0439\\u043d \\u0412\\u0430\\u0448\\u0435\\u0439 \\u0440\\u0435\\u043a\\u043b\\u0430\\u043c\\u044b \\u0438\\u043b\\u0438 \\u0438\\u0437\\u0433\\u043e\\u0442\\u043e\\u0432\\u0438\\u0442\\u044c \\u0435\\u0433\\u043e \\u0441\\u0430\\u043c\\u0438 \\u043f\\u043e \\u0412\\u0430\\u0448\\u0435\\u043c\\u0443 \\u0437\\u0430\\u043a\\u0430\\u0437\\u0443.<\\/p><p style=\\\"background-color:rgb(243,243,243);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\\\">\\u0412\\u044b \\u043c\\u043e\\u0436\\u0435\\u0442\\u0435 \\u0440\\u0430\\u0437\\u043c\\u0435\\u0441\\u0442\\u0438\\u0442\\u044c&nbsp; \\u0441\\u0432\\u043e\\u044e \\u0440\\u0435\\u043a\\u043b\\u0430\\u043c\\u0443 \\u043d\\u0430 \\u0431\\u043e\\u0440\\u0442\\u0430\\u0445 \\u043d\\u0430\\u0448\\u0435\\u0433\\u043e \\u044d\\u043a\\u0441\\u043a\\u0443\\u0440\\u0441\\u0438\\u043e\\u043d\\u043d\\u043e\\u0433\\u043e \\u0430\\u0432\\u0442\\u043e\\u0431\\u0443\\u0441\\u0430.&nbsp; \\u0418 \\u0442\\u043e\\u0433\\u0434\\u0430 \\u0412\\u0430\\u0448\\u0443 \\u0440\\u0435\\u043a\\u043b\\u0430\\u043c\\u0443 \\u0443\\u0432\\u0438\\u0434\\u044f\\u0442 \\u043d\\u0435 \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e \\u043d\\u0430 \\u0443\\u043b\\u0438\\u0446\\u0430\\u0445 \\u0433\\u043e\\u0440\\u043e\\u0434\\u0430 \\u0432\\u043e \\u0432\\u0440\\u0435\\u043c\\u044f \\u043f\\u043e\\u0435\\u0437\\u0434\\u043a\\u0438 \\u043d\\u0430\\u0448\\u0438\\u0445 \\u0430\\u0432\\u0442\\u043e\\u0431\\u0443\\u0441\\u043e\\u0432 \\u043d\\u043e \\u0438 \\u043e\\u043d\\u0430 \\u0431\\u0443\\u0434\\u0435\\u0442 \\u043f\\u0440\\u0438\\u0441\\u0443\\u0442\\u0441\\u0442\\u0432\\u043e\\u0432\\u0430\\u0442\\u044c \\u043d\\u0430 \\u0441\\u043e\\u0442\\u043d\\u044f\\u0445 \\u0444\\u043e\\u0442\\u043e\\u0433\\u0440\\u0430\\u0444\\u0438\\u044f\\u0445 \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0435 \\u0440\\u0430\\u0437\\u043c\\u0435\\u0449\\u0430\\u044e\\u0442 \\u0432 \\u0438\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442\\u0435 \\u0432\\u0441\\u0435 \\u043a\\u0442\\u043e \\u0444\\u043e\\u0442\\u043e\\u0433\\u0440\\u0430\\u0444\\u0438\\u0440\\u0443\\u0435\\u0442\\u0441\\u044f \\u0440\\u0430\\u0434\\u043e\\u043c \\u0441 \\u0430\\u0432\\u0442\\u043e\\u0431\\u0443\\u0441\\u0430\\u043c\\u0438!<\\/p><p style=\\\"background-color:rgb(243,243,243);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\\\">\\u0421\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u044c \\u0440\\u0435\\u043a\\u043b\\u0430\\u043c\\u044b \\u043d\\u0430 \\u043e\\u0434\\u043d\\u043e\\u043c \\u0431\\u043e\\u0440\\u0442\\u0443 \\u043e\\u0434\\u043d\\u043e\\u0433\\u043e \\u0430\\u0432\\u0442\\u043e\\u0431\\u0443\\u0441\\u0430 \\u0441\\u043e\\u0441\\u0442\\u0430\\u0432\\u043b\\u044f\\u0435\\u0442 3&nbsp;000&nbsp;000 \\u0441\\u0443\\u043c \\u0432 \\u043c\\u0435\\u0441\\u044f\\u0446. \\u041c\\u0438\\u043d\\u0438\\u043c\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0437\\u0430\\u043a\\u0430\\u0437 3 \\u043c\\u0435\\u0441\\u044f\\u0446\\u0430 !<\\/p><p style=\\\"background-color:rgb(243,243,243);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\\\">\\u0412\\u043e\\u0437\\u043c\\u043e\\u0436\\u043d\\u044b \\u0441\\u043a\\u0438\\u0434\\u043a\\u0438 , \\u043c\\u044b \\u0433\\u043e\\u0442\\u043e\\u0432\\u044b \\u043a \\u043b\\u044e\\u0431\\u044b\\u043c \\u0432\\u0437\\u0430\\u0438\\u043c\\u043e\\u0432\\u044b\\u0433\\u043e\\u0434\\u043d\\u044b\\u043c \\u043f\\u0440\\u0435\\u0434\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u044f\\u043c!<\\/p><p style=\\\"background-color:rgb(243,243,243);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\\\">\\u0422\\u0430\\u043a\\u0436\\u0435 \\u0412\\u044b \\u043c\\u043e\\u0436\\u0435\\u0442\\u0435 \\u0440\\u0430\\u0437\\u043c\\u0435\\u0441\\u0442\\u0438\\u0442\\u044c \\u0440\\u0435\\u043a\\u043b\\u0430\\u043c\\u0443 \\u0432\\u043d\\u0443\\u0442\\u0440\\u0438 \\u0430\\u0432\\u0442\\u043e\\u0431\\u0443\\u0441\\u0430&nbsp; \\u0430 \\u0432 \\u0447\\u0430\\u0441\\u0442\\u043d\\u043e\\u0441\\u0442\\u0438:<\\/p><figure class=\\\"table\\\" style=\\\"width:1000px;\\\"><table style=\\\"background-color:rgb(255,255,255);border:1px solid rgb(221, 221, 221);\\\" border=\\\"2\\\" width=\\\"569\\\"><tbody><tr><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"84\\\"><strong style=\\\"font-family:OpenSansBold, Arial, sans-serif;font-weight:normal;\\\">\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430<\\/strong><\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"137\\\"><strong style=\\\"font-family:OpenSansBold, Arial, sans-serif;font-weight:normal;\\\">\\u041c\\u0435\\u0441\\u0442\\u043e \\u0440\\u0430\\u0441\\u043f\\u043e\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u044f<\\/strong><\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"109\\\"><strong style=\\\"font-family:OpenSansBold, Arial, sans-serif;font-weight:normal;\\\">\\u0420\\u0430\\u0437\\u043c\\u0435\\u0440\\u044b<\\/strong><\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"84\\\"><strong style=\\\"font-family:OpenSansBold, Arial, sans-serif;font-weight:normal;\\\">\\u041a\\u043e\\u043b-\\u0432\\u043e \\u043c\\u0435\\u0441\\u0442<\\/strong><\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"155\\\"><strong style=\\\"font-family:OpenSansBold, Arial, sans-serif;font-weight:normal;\\\">\\u0426\\u0435\\u043d\\u0430 \\u0437\\u0430 1 \\u043c\\u0435\\u0441\\u0442\\u043e<\\/strong><\\/td><\\/tr><tr><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"84\\\">1<\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"137\\\">\\u043e\\u0442\\u043a\\u0440\\u044b\\u0442\\u0430\\u044f \\u0447\\u0430\\u0441\\u0442\\u044c 2 \\u044d\\u0442\\u0430\\u0436 \\u0437\\u0430\\u0434\\u043d\\u044f\\u044f \\u0432\\u0435\\u0440\\u0445\\u043d\\u044f\\u044f \\u043f\\u0430\\u043d\\u0435\\u043b\\u044c<\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"109\\\">\\u04105<\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"84\\\">6<\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"155\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 120 000,00&nbsp;&nbsp;<\\/td><\\/tr><tr><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"84\\\">2<\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"137\\\">2 \\u044d\\u0442\\u0430\\u0436 \\u043e\\u0442\\u043a\\u0440\\u044b\\u0442\\u0430\\u044f \\u0447\\u0430\\u0441\\u0442\\u044c \\u043b\\u0435\\u0432\\u0430\\u044f \\u043f\\u0435\\u0440\\u0435\\u0434\\u043d\\u044f\\u044f \\u043f\\u0430\\u043d\\u0435\\u043b\\u044c<\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"109\\\">\\u04103,\\u04104,\\u04105<\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"84\\\">1<\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"155\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 340 000,00&nbsp;&nbsp;<\\/td><\\/tr><tr><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"84\\\">3<\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"137\\\">1 \\u044d\\u0442\\u0430\\u0436 \\u0441\\u0442\\u0435\\u043d\\u043a\\u0430 \\u043f\\u0435\\u0440\\u0435\\u0434 \\u043b\\u0435\\u0441\\u0442\\u043d\\u0438\\u0446\\u0435\\u0439<\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"109\\\">\\u04105<\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"84\\\">4<\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"155\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 120 000,00&nbsp;&nbsp;<\\/td><\\/tr><tr><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"84\\\">4<\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"137\\\">1 \\u044d\\u0442\\u0430\\u0436 \\u043a\\u043e\\u043d\\u0435\\u0446 \\u0441\\u0430\\u043b\\u043e\\u043d\\u0430 \\u043f\\u0430\\u043d\\u0435\\u043b\\u044c \\u043f\\u0435\\u0440\\u0435\\u0434 \\u0432\\u043e\\u0437\\u0432\\u044b\\u0448\\u0435\\u043d\\u0438\\u0435\\u043c<\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"109\\\">\\u04103,\\u04104,\\u04105<\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"84\\\">1<\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"155\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 430 000,00&nbsp;&nbsp;<\\/td><\\/tr><tr><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"84\\\">5<\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"137\\\">1 \\u044d\\u0442\\u0430\\u0436 \\u0441\\u0438\\u0434\\u0435\\u043d\\u044c\\u044f<\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"109\\\">\\u04105<\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"84\\\">5<\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"155\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 120 000,00&nbsp;&nbsp;<\\/td><\\/tr><tr><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"84\\\">6 \\u0417\\u0410\\u041a\\u0420<\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"137\\\">2 \\u044d\\u0442\\u0430\\u0436 \\u0441\\u0438\\u0434\\u0435\\u043d\\u044c\\u044f \\u0437\\u0430\\u043a\\u0440\\u044b\\u0442\\u0430\\u044f \\u0447\\u0430\\u0441\\u0442\\u044c<\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"109\\\">110\\u0425 50<\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"84\\\">10<\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"155\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 45 000,00&nbsp;&nbsp;<\\/td><\\/tr><tr><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"84\\\">6 \\u041e\\u0422\\u041a\\u0420<\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"137\\\">2 \\u044d\\u0442\\u0430\\u0436 \\u0441\\u0438\\u0434\\u0435\\u043d\\u044c\\u044f \\u043e\\u0442\\u043a\\u0440\\u044b\\u0442\\u0430\\u044f \\u0447\\u0430\\u0441\\u0442\\u044c<\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"109\\\">110\\u0425100<\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"84\\\">23<\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"155\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 55 000,00&nbsp;&nbsp;<\\/td><\\/tr><tr><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"84\\\">7<\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"137\\\">2 \\u044d\\u0442\\u0430\\u0436 \\u043f\\u0430\\u043d\\u0435\\u043b\\u044c \\u043d\\u0430 \\u043f\\u043e\\u0434\\u044c\\u0435\\u043c\\u0435 \\u043f\\u043e \\u043b\\u0435\\u0441\\u0442\\u043d\\u0438\\u0446\\u0435<\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"109\\\">\\u04104, \\u04105<\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"84\\\">1<\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"155\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 230 000,00&nbsp;&nbsp;<\\/td><\\/tr><tr><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"84\\\">8<\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"137\\\">\\u041b\\u0435\\u0441\\u0442\\u043d\\u0438\\u0446\\u0430 \\u043f\\u0430\\u043d\\u0435\\u043b\\u044c \\u043f\\u0435\\u0440\\u0435\\u0434 \\u0441\\u043f\\u0443\\u0441\\u043a\\u043e\\u043c<\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"109\\\">\\u041043,\\u04104, \\u04105<\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"84\\\">1<\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"155\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 615 000,00&nbsp;&nbsp;<\\/td><\\/tr><tr><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"84\\\">9<\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"137\\\">\\u0420\\u0443\\u0447\\u043a\\u0438<\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"109\\\">11,8 \\u0425 65<\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"84\\\">35<\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"155\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 50 000,00&nbsp;&nbsp;<\\/td><\\/tr><tr><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"84\\\">10<\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"137\\\">2 \\u044d\\u0442\\u0430\\u0436 \\u043f\\u0430\\u043d\\u0435\\u043b\\u044c \\u043f\\u0435\\u0440\\u0435\\u0434 \\u0441\\u043f\\u0443\\u0441\\u043a\\u043e\\u043c \\u043d\\u0430 \\u043b\\u0435\\u0441\\u0442\\u043d\\u0438\\u0446\\u0435<\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"109\\\">\\u0410 5<\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"84\\\">1<\\/td><td style=\\\"border:1px solid rgb(221, 221, 221);text-align:center;\\\" width=\\\"155\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 120 000,00&nbsp;&nbsp;<\\/td><\\/tr><\\/tbody><\\/table><\\/figure><p style=\\\"background-color:rgb(243,243,243);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\\\">&nbsp;<\\/p><p style=\\\"background-color:rgb(243,243,243);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\\\"><strong style=\\\"font-family:OpenSansBold, Arial, sans-serif;font-weight:normal;\\\">\\u041d\\u0435 \\u0443\\u043f\\u0443\\u0441\\u0442\\u0438\\u0442\\u0435 \\u0441\\u0432\\u043e\\u0439 \\u0448\\u0430\\u043d\\u0441 !<\\/strong><\\/p><p style=\\\"background-color:rgb(243,243,243);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\\\">\\u041f\\u043e \\u0432\\u0441\\u0435\\u043c \\u0438\\u043d\\u0442\\u0435\\u0440\\u0435\\u0441\\u0443\\u044e\\u0449\\u0438\\u043c \\u0432\\u043e\\u043f\\u0440\\u043e\\u0441\\u0430\\u043c \\u043f\\u043e \\u0440\\u0430\\u0437\\u043c\\u0435\\u0449\\u0435\\u043d\\u0438\\u044e \\u0440\\u0435\\u043a\\u043b\\u0430\\u043c\\u044b \\u043e\\u0431\\u0440\\u0430\\u0449\\u0430\\u0439\\u0442\\u0435\\u0441\\u044c \\u0432 \\u043d\\u0430\\u0448 \\u043e\\u0444\\u0438\\u0441 \\u043f\\u043e \\u0430\\u0434\\u0440\\u0435\\u0441\\u0443:<\\/p><p style=\\\"background-color:rgb(243,243,243);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\\\">\\u0443\\u043b\\u0438\\u0446\\u0430 \\u0422\\u0430\\u0440\\u0440\\u0430\\u043a\\u043a\\u0438\\u0451\\u0442 45,&nbsp;100047 \\u0422\\u0430\\u0448\\u043a\\u0435\\u043d\\u0442. \\u0418\\u043b\\u0438 \\u043d\\u0430 \\u0435\\u043c\\u0430\\u0438\\u043b : <a style=\\\"background-color:transparent;color:rgb(51,122,183);text-decoration:none;\\\" href=\\\"mailto:aznur2010@mail.ru\\\">aznur2010@mail.ru<\\/a>.<\\/p><p style=\\\"background-color:rgb(243,243,243);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\\\">\\u041d\\u0430\\u0448\\u0438 \\u0442\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d\\u044b : +998 - 98 - 808 - 26 - 26.<\\/p>\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"uz_UZ\",\"status\":\"published\",\"template\":\"default\",\"image\":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '::1', 1, 4, 'РЕКЛАМА', 'primary', '2022-08-24 00:01:34', '2022-08-24 00:01:34'),
(49, 1, 'page', '{\"name\":\"\\u0426\\u0415\\u041d\\u042b\",\"slug\":\"ceny\",\"slug_id\":\"8\",\"is_slug_editable\":\"1\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":null,\"is_featured\":\"0\",\"content\":\"<shortcode class=\\\"bb-shortcode\\\">[section-area style=\\\"other-page\\\"][\\/section-area]<\\/shortcode><shortcode class=\\\"bb-shortcode\\\">[search-filter style=\\\"other-page-filter\\\"][\\/search-filter]<\\/shortcode><p style=\\\"background-color:rgb(243,243,243);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\\\">\\u0421\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u044c \\u0431\\u0438\\u043b\\u0435\\u0442\\u0430 \\u0434\\u043b\\u044f \\u0438\\u043d\\u043e\\u0441\\u0442\\u0440\\u0430\\u043d\\u043d\\u044b\\u0445 \\u0433\\u0440\\u0430\\u0436\\u0434\\u0430\\u043d \\u0438 \\u0433\\u0440\\u0430\\u0436\\u0434\\u0430\\u043d \\u0421\\u041d\\u0413 150 000 \\u0441\\u0443\\u043c.<\\/p><p style=\\\"background-color:rgb(243,243,243);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\\\">&nbsp;\\u0414\\u043b\\u044f \\u0433\\u0440\\u0430\\u0436\\u0434\\u0430\\u043d \\u0423\\u0437\\u0431\\u0435\\u043a\\u0438\\u0441\\u0442\\u0430\\u043d\\u0430:<\\/p><p style=\\\"background-color:rgb(243,243,243);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\\\">\\u0421\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u044c \\u0432\\u0437\\u0440\\u043e\\u0441\\u043b\\u043e\\u0433\\u043e \\u0431\\u0438\\u043b\\u0435\\u0442\\u0430 \\u043e\\u0442 12 \\u043b\\u0435\\u0442 \\u0434\\u043e 75 \\u043b\\u0435\\u0442&nbsp; &nbsp;\\u0441\\u043e\\u0441\\u0442\\u0430\\u0432\\u043b\\u044f\\u0435\\u0442 100 000 \\u0441\\u0443\\u043c.<\\/p><p style=\\\"background-color:rgb(243,243,243);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\\\">\\u0421\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u044c \\u0434\\u0435\\u0442\\u0441\\u043a\\u043e\\u0433\\u043e \\u0431\\u0438\\u043b\\u0435\\u0442\\u0430 \\u043e\\u0442 6 \\u043b\\u0435\\u0442 \\u0434\\u043e 12 \\u043b\\u0435\\u0442&nbsp; &nbsp;\\u0441\\u043e\\u0441\\u0442\\u0430\\u0432\\u043b\\u044f\\u0435\\u0442 50&nbsp;000 \\u0441\\u0443\\u043c.<\\/p><p style=\\\"background-color:rgb(243,243,243);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\\\">\\u0410 \\u0442\\u0430\\u043a \\u0436\\u0435 \\u0438\\u043d\\u0432\\u0430\\u043b\\u0438\\u0434\\u0430\\u043c \\u043f\\u0435\\u0440\\u0432\\u043e\\u0439 \\u0433\\u0440\\u0443\\u043f\\u043f\\u044b, \\u0411\\u0415\\u0421\\u041f\\u041b\\u0410\\u0422\\u041d\\u041e!!!<\\/p>\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"uz_UZ\",\"status\":\"published\",\"template\":\"default\",\"image\":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '::1', 1, 7, 'ЦЕНЫ', 'primary', '2022-08-24 00:02:13', '2022-08-24 00:02:13');

-- --------------------------------------------------------

--
-- Table structure for table `bb_comments`
--

CREATE TABLE `bb_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `like_count` int(11) NOT NULL DEFAULT '0',
  `reply_count` int(11) NOT NULL DEFAULT '0',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bb_comment_likes`
--

CREATE TABLE `bb_comment_likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bb_comment_ratings`
--

CREATE TABLE `bb_comment_ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rating` int(11) NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bb_comment_recommends`
--

CREATE TABLE `bb_comment_recommends` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blocks`
--

CREATE TABLE `blocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blocks_translations`
--

CREATE TABLE `blocks_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blocks_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint(4) NOT NULL DEFAULT '0',
  `is_featured` tinyint(4) NOT NULL DEFAULT '0',
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `description`, `status`, `author_id`, `author_type`, `icon`, `order`, `is_featured`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'Yangiliklar', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2022-08-23 22:08:16', '2022-08-23 22:08:16');

-- --------------------------------------------------------

--
-- Table structure for table `categories_translations`
--

CREATE TABLE `categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories_translations`
--

INSERT INTO `categories_translations` (`lang_code`, `categories_id`, `name`, `description`) VALUES
('en_US', 1, 'Yangiliklar', NULL),
('ru_RU', 1, 'Yangiliklar', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_replies`
--

CREATE TABLE `contact_replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields`
--

CREATE TABLE `custom_fields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `use_for` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `use_for_id` int(10) UNSIGNED NOT NULL,
  `field_item_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_widgets`
--

CREATE TABLE `dashboard_widgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dashboard_widgets`
--

INSERT INTO `dashboard_widgets` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'widget_total_themes', '2022-08-23 15:28:23', '2022-08-23 15:28:23'),
(2, 'widget_total_users', '2022-08-23 15:28:23', '2022-08-23 15:28:23'),
(3, 'widget_total_pages', '2022-08-23 15:28:23', '2022-08-23 15:28:23'),
(4, 'widget_total_plugins', '2022-08-23 15:28:23', '2022-08-23 15:28:23'),
(5, 'widget_analytics_general', '2022-08-23 15:28:23', '2022-08-23 15:28:23'),
(6, 'widget_analytics_page', '2022-08-23 15:28:23', '2022-08-23 15:28:23'),
(7, 'widget_analytics_browser', '2022-08-23 15:28:23', '2022-08-23 15:28:23'),
(8, 'widget_posts_recent', '2022-08-23 15:28:23', '2022-08-23 15:28:23'),
(9, 'widget_analytics_referrer', '2022-08-23 15:28:23', '2022-08-23 15:28:23'),
(10, 'widget_audit_logs', '2022-08-23 15:28:23', '2022-08-23 15:28:23'),
(11, 'widget_request_errors', '2022-08-23 15:28:23', '2022-08-23 15:28:23');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_widget_settings`
--

CREATE TABLE `dashboard_widget_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` int(10) UNSIGNED NOT NULL,
  `widget_id` int(10) UNSIGNED NOT NULL,
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs_translations`
--

CREATE TABLE `faqs_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faqs_id` int(11) NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci,
  `answer` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faq_categories`
--

CREATE TABLE `faq_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint(4) NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faq_categories_translations`
--

CREATE TABLE `faq_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_categories_id` int(11) NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favorite_posts`
--

CREATE TABLE `favorite_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `type` enum('favorite','bookmark') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `field_groups`
--

CREATE TABLE `field_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rules` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '0',
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `field_items`
--

CREATE TABLE `field_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `field_group_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instructions` text COLLATE utf8mb4_unicode_ci,
  `options` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries_translations`
--

CREATE TABLE `galleries_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `galleries_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gallery_meta`
--

CREATE TABLE `gallery_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gallery_meta`
--

INSERT INTO `gallery_meta` (`id`, `images`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES
(4, NULL, 3, 'Botble\\Page\\Models\\Page', '2022-08-23 22:23:38', '2022-08-23 22:23:38'),
(11, NULL, 1, 'Botble\\Page\\Models\\Page', '2022-08-23 23:14:27', '2022-08-23 23:14:27'),
(20, NULL, 2, 'Botble\\Page\\Models\\Page', '2022-08-23 23:59:28', '2022-08-23 23:59:28'),
(21, NULL, 6, 'Botble\\Page\\Models\\Page', '2022-08-24 00:01:13', '2022-08-24 00:01:13'),
(22, NULL, 5, 'Botble\\Page\\Models\\Page', '2022-08-24 00:01:23', '2022-08-24 00:01:23'),
(23, NULL, 4, 'Botble\\Page\\Models\\Page', '2022-08-24 00:01:34', '2022-08-24 00:01:34'),
(24, NULL, 7, 'Botble\\Page\\Models\\Page', '2022-08-24 00:02:13', '2022-08-24 00:02:13');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `lang_id` int(10) UNSIGNED NOT NULL,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `lang_order` int(11) NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`lang_id`, `lang_name`, `lang_locale`, `lang_code`, `lang_flag`, `lang_is_default`, `lang_order`, `lang_is_rtl`) VALUES
(1, 'Oʻzbek', 'uz', 'uz_UZ', 'uz', 1, 0, 0),
(2, 'English', 'en', 'en_US', 'us', 0, 0, 0),
(3, 'Русский', 'ru', 'ru_RU', 'ru', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `language_meta`
--

CREATE TABLE `language_meta` (
  `lang_meta_id` int(10) UNSIGNED NOT NULL,
  `lang_meta_code` text COLLATE utf8mb4_unicode_ci,
  `lang_meta_origin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `language_meta`
--

INSERT INTO `language_meta` (`lang_meta_id`, `lang_meta_code`, `lang_meta_origin`, `reference_id`, `reference_type`) VALUES
(1, 'uz_UZ', '73339b04d213332ea874f7f5c25623e2', 1, 'Botble\\Menu\\Models\\Menu'),
(2, 'uz_UZ', '659436b8b805c0bb7832bcfa659503dd', 1, 'Botble\\Menu\\Models\\MenuLocation');

-- --------------------------------------------------------

--
-- Table structure for table `media_files`
--

CREATE TABLE `media_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_files`
--

INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'logo', 0, 'image/png', 2860, 'logo.png', '[]', '2022-08-23 22:04:51', '2022-08-23 22:04:51', NULL),
(2, 1, 'logo-1', 0, 'image/png', 3958, 'logo-1.png', '[]', '2022-08-23 23:25:28', '2022-08-23 23:25:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media_folders`
--

CREATE TABLE `media_folders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media_settings`
--

CREATE TABLE `media_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `gender` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar_id` int(10) UNSIGNED DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `favorite_posts` json DEFAULT NULL,
  `bookmark_posts` json DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `member_activity_logs`
--

CREATE TABLE `member_activity_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `reference_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `member_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `member_password_resets`
--

CREATE TABLE `member_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'main-menu', 'mainmenu', 'published', '2022-08-23 22:06:41', '2022-08-23 22:09:52');

-- --------------------------------------------------------

--
-- Table structure for table `menu_locations`
--

CREATE TABLE `menu_locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_locations`
--

INSERT INTO `menu_locations` (`id`, `menu_id`, `location`, `created_at`, `updated_at`) VALUES
(1, 1, 'main-menu', '2022-08-23 22:08:49', '2022-08-23 22:08:49');

-- --------------------------------------------------------

--
-- Table structure for table `menu_nodes`
--

CREATE TABLE `menu_nodes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `reference_id` int(10) UNSIGNED DEFAULT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_nodes`
--

INSERT INTO `menu_nodes` (`id`, `menu_id`, `parent_id`, `reference_id`, `reference_type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `has_child`, `created_at`, `updated_at`) VALUES
(3, 1, 0, 2, 'Botble\\Page\\Models\\Page', '/uz/o-nas', '', 0, 'О НАС', '', '_self', 0, '2022-08-23 22:18:21', '2022-08-23 22:18:57'),
(4, 1, 0, 0, NULL, '/', '', 1, 'МАРШРУТЫ', '', '_self', 0, '2022-08-23 22:19:26', '2022-08-23 22:20:35'),
(5, 1, 0, 0, NULL, '/', '', 2, 'РАСПИСАНИЕ', '', '_self', 0, '2022-08-23 22:19:26', '2022-08-23 22:20:35'),
(11, 1, 0, 3, 'Botble\\Page\\Models\\Page', '/uz/kontakty', '', 7, 'КОНТАКТЫ', '', '_self', 0, '2022-08-23 22:23:57', '2022-08-23 23:50:21'),
(12, 1, 0, 5, 'Botble\\Page\\Models\\Page', '/uz/arenda', '', 5, 'АРЕНДА', '', '_self', 0, '2022-08-23 23:50:21', '2022-08-23 23:51:05'),
(13, 1, 0, 7, 'Botble\\Page\\Models\\Page', '/uz/ceny', NULL, 3, 'ЦЕНЫ', NULL, '_self', 0, '2022-08-23 23:51:05', '2022-08-23 23:51:05'),
(14, 1, 0, 4, 'Botble\\Page\\Models\\Page', '/uz/reklama', NULL, 4, 'РЕКЛАМА', NULL, '_self', 0, '2022-08-23 23:51:05', '2022-08-23 23:51:05'),
(15, 1, 0, 6, 'Botble\\Page\\Models\\Page', '/uz/nasi-gidy', NULL, 6, 'НАШИ ГИДЫ', NULL, '_self', 0, '2022-08-23 23:51:05', '2022-08-23 23:51:05');

-- --------------------------------------------------------

--
-- Table structure for table `meta_boxes`
--

CREATE TABLE `meta_boxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(1, '2013_04_09_032329_create_base_tables', 1),
(2, '2013_04_09_062329_create_revisions_table', 1),
(3, '2014_10_12_000000_create_users_table', 1),
(4, '2014_10_12_100000_create_password_resets_table', 1),
(5, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(6, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(7, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(8, '2016_06_01_000004_create_oauth_clients_table', 1),
(9, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(10, '2016_06_10_230148_create_acl_tables', 1),
(11, '2016_06_14_230857_create_menus_table', 1),
(12, '2016_06_28_221418_create_pages_table', 1),
(13, '2016_10_05_074239_create_setting_table', 1),
(14, '2016_11_28_032840_create_dashboard_widget_tables', 1),
(15, '2016_12_16_084601_create_widgets_table', 1),
(16, '2017_05_09_070343_create_media_tables', 1),
(17, '2017_11_03_070450_create_slug_table', 1),
(18, '2019_01_05_053554_create_jobs_table', 1),
(19, '2019_08_19_000000_create_failed_jobs_table', 1),
(20, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(21, '2021_12_26_024330_update_theme_options_social_links', 1),
(22, '2022_04_20_100851_add_index_to_media_table', 1),
(23, '2022_04_20_101046_add_index_to_menu_table', 1),
(24, '2020_11_18_150916_ads_create_ads_table', 2),
(25, '2015_06_29_025744_create_audit_history', 3),
(26, '2017_02_13_034601_create_blocks_table', 4),
(27, '2021_12_03_081327_create_blocks_translations', 4),
(28, '2015_06_18_033822_create_blog_table', 5),
(29, '2021_02_16_092633_remove_default_value_for_author_type', 5),
(30, '2021_12_03_030600_create_blog_translations', 5),
(31, '2022_04_19_113923_add_index_to_table_posts', 5),
(32, '2021_07_08_140130_comment_create_comment_table', 6),
(33, '2021_07_26_132731_create_comment_ratings_table', 6),
(34, '2016_06_17_091537_create_contacts_table', 7),
(37, '2017_03_27_150646_re_create_custom_field_tables', 9),
(38, '2018_07_09_221238_create_faq_table', 10),
(39, '2021_12_03_082134_create_faq_translations', 10),
(40, '2016_10_13_150201_create_galleries_table', 11),
(41, '2021_12_03_082953_create_gallery_translations', 11),
(42, '2016_10_03_032336_create_languages_table', 12),
(43, '2021_10_25_021023_fix-priority-load-for-language-advanced', 13),
(44, '2021_12_03_075608_create_page_translations', 13),
(45, '2017_10_04_140938_create_member_table', 14),
(46, '2017_10_24_154832_create_newsletter_table', 15),
(47, '2021_08_25_122708_post_collection_create_post_collection_table', 16),
(48, '2021_07_14_043820_add_publised_at_table_posts', 17),
(49, '2021_10_16_043705_pro_posts_create_favorite_posts_table', 18),
(50, '2021_10_16_105007_add_bookmark_posts_column_to_members_table', 18),
(51, '2016_05_28_112028_create_system_request_logs_table', 19),
(53, '2017_07_11_140018_create_simple_slider_table', 21),
(55, '2016_10_07_193005_create_translations_table', 23);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(4) NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `content`, `user_id`, `image`, `template`, `is_featured`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Home page', '<shortcode class=\"bb-shortcode\">[section-area]A Luxury Stay[/section-area]</shortcode><shortcode class=\"bb-shortcode\">[search-filter][/search-filter]</shortcode><shortcode class=\"bb-shortcode\">[section-intro][/section-intro]</shortcode><shortcode class=\"bb-shortcode\">[section-facilities][/section-facilities]</shortcode><shortcode class=\"bb-shortcode\">[section-testimonial][/section-testimonial]</shortcode><shortcode class=\"bb-shortcode\">[section-video][/section-video]</shortcode><shortcode class=\"bb-shortcode\">[homepage-about][/homepage-about]</shortcode><shortcode class=\"bb-shortcode\">[blog-posts paginate=\"12\"][/blog-posts]</shortcode>', 1, NULL, 'default', 0, NULL, 'published', '2022-08-23 22:11:00', '2022-08-23 23:14:27'),
(2, 'О НАС', '<shortcode class=\"bb-shortcode\">[section-area style=\"other-page\"][/section-area]</shortcode><shortcode class=\"bb-shortcode\">[search-filter style=\"other-page-filter\"][/search-filter]</shortcode><h3 style=\"background-color:rgb(255,255,255);color:rgb(79,65,66);font-family:OpenSansLight, Arial, sans-serif;font-size:30px;font-style:normal;font-weight:500;line-height:1.1;word-spacing:0px;\">Форма оплаты любая!</h3><p style=\"background-color:rgb(255,255,255);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\">Начало сити тура от Сквера Амира Темура напротив гостиницы Узбекистан.</p><p style=\"background-color:rgb(255,255,255);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\">Билеты выкупаете прямо в автобусе за 15 минут от выбранного времени.</p><p style=\"background-color:rgb(255,255,255);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\">Порядок живой очереди, мы не бронируем места.</p><p style=\"background-color:rgb(255,255,255);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\">Автобус поедет строго по графику при наборе минимального количества 6 человек! В случае недобора ожидание до следующего рейса!!!</p><p style=\"background-color:rgb(255,255,255);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\">Продолжительность 2 часа, 3 остановки:<br>&nbsp;</p><ul><li style=\"background-color:rgb(255,255,255);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\">Мемориальный комплекс «Шахидлар майдони»-10 минут</li><li style=\"background-color:rgb(255,255,255);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\">Мечеть Минор-10 минут</li><li style=\"background-color:rgb(255,255,255);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\">Комплекс «Хаст Имам» -20 минут</li></ul><p style=\"background-color:rgb(255,255,255);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\">В стоимость входит экскурсия с аудио гидом на 8 языках.</p><p style=\"background-color:rgb(255,255,255);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\">График: Отправка от гостиницы Узбекистан каждый день с 10:00 до 17:00 каждый час</p><h4 style=\"background-color:rgb(255,255,255);color:rgb(79,65,66);font-family:OpenSansLight, Arial, sans-serif;font-size:18px;font-style:normal;font-weight:500;line-height:1.1;word-spacing:0px;\">Наши телефоны:<br><br>+998 99 945-13-13<br><br>+998 90 843-13-13</h4>', 1, NULL, 'default', 0, NULL, 'published', '2022-08-23 22:16:54', '2022-08-23 23:59:28'),
(3, 'КОНТАКТЫ', '<shortcode class=\"bb-shortcode\">[google-map][/google-map]</shortcode><shortcode class=\"bb-shortcode\">[contact-form][/contact-form]</shortcode>', 1, NULL, 'default', 0, NULL, 'published', '2022-08-23 22:23:38', '2022-08-23 22:23:38'),
(4, 'РЕКЛАМА', '<shortcode class=\"bb-shortcode\">[section-area style=\"other-page\"][/section-area]</shortcode><shortcode class=\"bb-shortcode\">[search-filter style=\"other-page-filter\"][/search-filter]</shortcode><p style=\"background-color:rgb(243,243,243);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\"><strong style=\"font-family:OpenSansBold, Arial, sans-serif;font-weight:normal;\"><u>Реклама двигатель торговли! А движущаяся&nbsp; реклама двигатель вдвойне !</u></strong></p><p style=\"background-color:rgb(243,243,243);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\">Компания «AZNUR TARVEL» имеет честь предложить Вам размещение рекламы на наших экскурсионных автобусах.</p><p style=\"background-color:rgb(243,243,243);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\">Не стоит говорить о популярности данных маршрутов у гостей и жителей города!</p><p style=\"background-color:rgb(243,243,243);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\">Автобусы совершают свой маршрут каждый час&nbsp; по самым лучшим и популярным местам нашего&nbsp; города. Вашу рекламу увидят миллионы жителей столицы . При этом она будет у них на виду постоянно и каждый день!</p><p style=\"background-color:rgb(243,243,243);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\">Не упустите возможность сделать Вашу рекламу мобильной и привлекательной ! Мы готовы обсудить с Вами дизайн Вашей рекламы или изготовить его сами по Вашему заказу.</p><p style=\"background-color:rgb(243,243,243);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\">Вы можете разместить&nbsp; свою рекламу на бортах нашего экскурсионного автобуса.&nbsp; И тогда Вашу рекламу увидят не только на улицах города во время поездки наших автобусов но и она будет присутствовать на сотнях фотографиях которые размещают в интернете все кто фотографируется радом с автобусами!</p><p style=\"background-color:rgb(243,243,243);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\">Стоимость рекламы на одном борту одного автобуса составляет 3&nbsp;000&nbsp;000 сум в месяц. Минимальный заказ 3 месяца !</p><p style=\"background-color:rgb(243,243,243);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\">Возможны скидки , мы готовы к любым взаимовыгодным предложениям!</p><p style=\"background-color:rgb(243,243,243);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\">Также Вы можете разместить рекламу внутри автобуса&nbsp; а в частности:</p><figure class=\"table\" style=\"width:1000px;\"><table style=\"background-color:rgb(255,255,255);border:1px solid rgb(221, 221, 221);\" border=\"2\" width=\"569\"><tbody><tr><td style=\"border:1px solid rgb(221, 221, 221);text-align:center;\" width=\"84\"><strong style=\"font-family:OpenSansBold, Arial, sans-serif;font-weight:normal;\">Страница</strong></td><td style=\"border:1px solid rgb(221, 221, 221);text-align:center;\" width=\"137\"><strong style=\"font-family:OpenSansBold, Arial, sans-serif;font-weight:normal;\">Место расположения</strong></td><td style=\"border:1px solid rgb(221, 221, 221);text-align:center;\" width=\"109\"><strong style=\"font-family:OpenSansBold, Arial, sans-serif;font-weight:normal;\">Размеры</strong></td><td style=\"border:1px solid rgb(221, 221, 221);text-align:center;\" width=\"84\"><strong style=\"font-family:OpenSansBold, Arial, sans-serif;font-weight:normal;\">Кол-во мест</strong></td><td style=\"border:1px solid rgb(221, 221, 221);text-align:center;\" width=\"155\"><strong style=\"font-family:OpenSansBold, Arial, sans-serif;font-weight:normal;\">Цена за 1 место</strong></td></tr><tr><td style=\"border:1px solid rgb(221, 221, 221);text-align:center;\" width=\"84\">1</td><td style=\"border:1px solid rgb(221, 221, 221);text-align:center;\" width=\"137\">открытая часть 2 этаж задняя верхняя панель</td><td style=\"border:1px solid rgb(221, 221, 221);text-align:center;\" width=\"109\">А5</td><td style=\"border:1px solid rgb(221, 221, 221);text-align:center;\" width=\"84\">6</td><td style=\"border:1px solid rgb(221, 221, 221);text-align:center;\" width=\"155\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 120 000,00&nbsp;&nbsp;</td></tr><tr><td style=\"border:1px solid rgb(221, 221, 221);text-align:center;\" width=\"84\">2</td><td style=\"border:1px solid rgb(221, 221, 221);text-align:center;\" width=\"137\">2 этаж открытая часть левая передняя панель</td><td style=\"border:1px solid rgb(221, 221, 221);text-align:center;\" width=\"109\">А3,А4,А5</td><td style=\"border:1px solid rgb(221, 221, 221);text-align:center;\" width=\"84\">1</td><td style=\"border:1px solid rgb(221, 221, 221);text-align:center;\" width=\"155\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 340 000,00&nbsp;&nbsp;</td></tr><tr><td style=\"border:1px solid rgb(221, 221, 221);text-align:center;\" width=\"84\">3</td><td style=\"border:1px solid rgb(221, 221, 221);text-align:center;\" width=\"137\">1 этаж стенка перед лестницей</td><td style=\"border:1px solid rgb(221, 221, 221);text-align:center;\" width=\"109\">А5</td><td style=\"border:1px solid rgb(221, 221, 221);text-align:center;\" width=\"84\">4</td><td style=\"border:1px solid rgb(221, 221, 221);text-align:center;\" width=\"155\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 120 000,00&nbsp;&nbsp;</td></tr><tr><td style=\"border:1px solid rgb(221, 221, 221);text-align:center;\" width=\"84\">4</td><td style=\"border:1px solid rgb(221, 221, 221);text-align:center;\" width=\"137\">1 этаж конец салона панель перед возвышением</td><td style=\"border:1px solid rgb(221, 221, 221);text-align:center;\" width=\"109\">А3,А4,А5</td><td style=\"border:1px solid rgb(221, 221, 221);text-align:center;\" width=\"84\">1</td><td style=\"border:1px solid rgb(221, 221, 221);text-align:center;\" width=\"155\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 430 000,00&nbsp;&nbsp;</td></tr><tr><td style=\"border:1px solid rgb(221, 221, 221);text-align:center;\" width=\"84\">5</td><td style=\"border:1px solid rgb(221, 221, 221);text-align:center;\" width=\"137\">1 этаж сиденья</td><td style=\"border:1px solid rgb(221, 221, 221);text-align:center;\" width=\"109\">А5</td><td style=\"border:1px solid rgb(221, 221, 221);text-align:center;\" width=\"84\">5</td><td style=\"border:1px solid rgb(221, 221, 221);text-align:center;\" width=\"155\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 120 000,00&nbsp;&nbsp;</td></tr><tr><td style=\"border:1px solid rgb(221, 221, 221);text-align:center;\" width=\"84\">6 ЗАКР</td><td style=\"border:1px solid rgb(221, 221, 221);text-align:center;\" width=\"137\">2 этаж сиденья закрытая часть</td><td style=\"border:1px solid rgb(221, 221, 221);text-align:center;\" width=\"109\">110Х 50</td><td style=\"border:1px solid rgb(221, 221, 221);text-align:center;\" width=\"84\">10</td><td style=\"border:1px solid rgb(221, 221, 221);text-align:center;\" width=\"155\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 45 000,00&nbsp;&nbsp;</td></tr><tr><td style=\"border:1px solid rgb(221, 221, 221);text-align:center;\" width=\"84\">6 ОТКР</td><td style=\"border:1px solid rgb(221, 221, 221);text-align:center;\" width=\"137\">2 этаж сиденья открытая часть</td><td style=\"border:1px solid rgb(221, 221, 221);text-align:center;\" width=\"109\">110Х100</td><td style=\"border:1px solid rgb(221, 221, 221);text-align:center;\" width=\"84\">23</td><td style=\"border:1px solid rgb(221, 221, 221);text-align:center;\" width=\"155\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 55 000,00&nbsp;&nbsp;</td></tr><tr><td style=\"border:1px solid rgb(221, 221, 221);text-align:center;\" width=\"84\">7</td><td style=\"border:1px solid rgb(221, 221, 221);text-align:center;\" width=\"137\">2 этаж панель на подьеме по лестнице</td><td style=\"border:1px solid rgb(221, 221, 221);text-align:center;\" width=\"109\">А4, А5</td><td style=\"border:1px solid rgb(221, 221, 221);text-align:center;\" width=\"84\">1</td><td style=\"border:1px solid rgb(221, 221, 221);text-align:center;\" width=\"155\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 230 000,00&nbsp;&nbsp;</td></tr><tr><td style=\"border:1px solid rgb(221, 221, 221);text-align:center;\" width=\"84\">8</td><td style=\"border:1px solid rgb(221, 221, 221);text-align:center;\" width=\"137\">Лестница панель перед спуском</td><td style=\"border:1px solid rgb(221, 221, 221);text-align:center;\" width=\"109\">А43,А4, А5</td><td style=\"border:1px solid rgb(221, 221, 221);text-align:center;\" width=\"84\">1</td><td style=\"border:1px solid rgb(221, 221, 221);text-align:center;\" width=\"155\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 615 000,00&nbsp;&nbsp;</td></tr><tr><td style=\"border:1px solid rgb(221, 221, 221);text-align:center;\" width=\"84\">9</td><td style=\"border:1px solid rgb(221, 221, 221);text-align:center;\" width=\"137\">Ручки</td><td style=\"border:1px solid rgb(221, 221, 221);text-align:center;\" width=\"109\">11,8 Х 65</td><td style=\"border:1px solid rgb(221, 221, 221);text-align:center;\" width=\"84\">35</td><td style=\"border:1px solid rgb(221, 221, 221);text-align:center;\" width=\"155\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 50 000,00&nbsp;&nbsp;</td></tr><tr><td style=\"border:1px solid rgb(221, 221, 221);text-align:center;\" width=\"84\">10</td><td style=\"border:1px solid rgb(221, 221, 221);text-align:center;\" width=\"137\">2 этаж панель перед спуском на лестнице</td><td style=\"border:1px solid rgb(221, 221, 221);text-align:center;\" width=\"109\">А 5</td><td style=\"border:1px solid rgb(221, 221, 221);text-align:center;\" width=\"84\">1</td><td style=\"border:1px solid rgb(221, 221, 221);text-align:center;\" width=\"155\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 120 000,00&nbsp;&nbsp;</td></tr></tbody></table></figure><p style=\"background-color:rgb(243,243,243);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\">&nbsp;</p><p style=\"background-color:rgb(243,243,243);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\"><strong style=\"font-family:OpenSansBold, Arial, sans-serif;font-weight:normal;\">Не упустите свой шанс !</strong></p><p style=\"background-color:rgb(243,243,243);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\">По всем интересующим вопросам по размещению рекламы обращайтесь в наш офис по адресу:</p><p style=\"background-color:rgb(243,243,243);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\">улица Тарраккиёт 45,&nbsp;100047 Ташкент. Или на емаил : <a style=\"background-color:transparent;color:rgb(51,122,183);text-decoration:none;\" href=\"mailto:aznur2010@mail.ru\">aznur2010@mail.ru</a>.</p><p style=\"background-color:rgb(243,243,243);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\">Наши телефоны : +998 - 98 - 808 - 26 - 26.</p>', 1, NULL, 'default', 0, NULL, 'published', '2022-08-23 23:23:12', '2022-08-24 00:01:34'),
(5, 'АРЕНДА', '<shortcode class=\"bb-shortcode\">[section-area style=\"other-page\"][/section-area]</shortcode><shortcode class=\"bb-shortcode\">[search-filter style=\"other-page-filter\"][/search-filter]</shortcode><p style=\"text-align:justify;\"><span style=\"background-color:rgb(243,243,243);color:rgb(79,65,66);\"><span>Аренда двухэтажного автобуса составляет 1 000&nbsp;000 сум за один час при условии, что посадка граждан и конечная точка маршрута перед главным входом в&nbsp; гостиницу Узбекистан, в случае если посадка граждан и конечная точка маршрута является другим месторасположением, в этом случае к основной сумме прибавляется 500&nbsp;000 сум. Минимальное время заказа в аренду двухэтажного автобуса составляет 3 часа.&nbsp;&nbsp;</span></span></p>', 1, NULL, 'default', 0, NULL, 'published', '2022-08-23 23:23:50', '2022-08-24 00:01:23'),
(6, 'НАШИ ГИДЫ', '<shortcode class=\"bb-shortcode\">[section-area style=\"other-page\"][/section-area]</shortcode><shortcode class=\"bb-shortcode\">[search-filter style=\"other-page-filter\"][/search-filter]</shortcode><p style=\"background-color:rgb(243,243,243);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\"><strong style=\"font-family:OpenSansBold, Arial, sans-serif;font-weight:normal;\">Наши гиды:</strong></p><p style=\"background-color:rgb(243,243,243);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\">Камалов Рахматхон Акзамович – узбекский язык.</p><p style=\"background-color:rgb(243,243,243);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\">Аудинова Аэлита Аркадиевна – русский, итальянский языки.</p><p style=\"background-color:rgb(243,243,243);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\">Арипова Дильноза Максудовна- русский, английский языки.</p><p style=\"background-color:rgb(243,243,243);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\">&nbsp;Каскенов Тимур Гайдарович - английский язык.</p><p style=\"background-color:rgb(243,243,243);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\">Шомансуров Шоасил – немецкий язык.</p><p style=\"background-color:rgb(243,243,243);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\">Алаудинов Александр - французский язык.</p><p style=\"background-color:rgb(243,243,243);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\">Мирабдуллаев Акмаль- китайский язык.</p>', 1, NULL, 'default', 0, NULL, 'published', '2022-08-23 23:24:15', '2022-08-24 00:01:13'),
(7, 'ЦЕНЫ', '<shortcode class=\"bb-shortcode\">[section-area style=\"other-page\"][/section-area]</shortcode><shortcode class=\"bb-shortcode\">[search-filter style=\"other-page-filter\"][/search-filter]</shortcode><p style=\"background-color:rgb(243,243,243);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\">Стоимость билета для иностранных граждан и граждан СНГ 150 000 сум.</p><p style=\"background-color:rgb(243,243,243);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\">&nbsp;Для граждан Узбекистана:</p><p style=\"background-color:rgb(243,243,243);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\">Стоимость взрослого билета от 12 лет до 75 лет&nbsp; &nbsp;составляет 100 000 сум.</p><p style=\"background-color:rgb(243,243,243);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\">Стоимость детского билета от 6 лет до 12 лет&nbsp; &nbsp;составляет 50&nbsp;000 сум.</p><p style=\"background-color:rgb(243,243,243);color:rgb(79,65,66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-weight:400;word-spacing:0px;\">А так же инвалидам первой группы, БЕСПЛАТНО!!!</p>', 1, NULL, 'default', 0, NULL, 'published', '2022-08-23 23:24:43', '2022-08-24 00:02:13');

-- --------------------------------------------------------

--
-- Table structure for table `pages_translations`
--

CREATE TABLE `pages_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages_translations`
--

INSERT INTO `pages_translations` (`lang_code`, `pages_id`, `name`, `description`, `content`) VALUES
('en_US', 1, 'Home page', NULL, '<shortcode class=\"bb-shortcode\">[blog-posts paginate=\"12\"][/blog-posts]</shortcode>'),
('en_US', 2, 'О НАС', NULL, '<h3 style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansLight, Arial, sans-serif;font-size:30px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:500;letter-spacing:normal;line-height:1.1;margin-bottom:10px;margin-top:20px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Форма оплаты любая!</h3><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Начало сити тура от Сквера Амира Темура напротив гостиницы Узбекистан.</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Билеты выкупаете прямо в автобусе за 15 минут от выбранного времени.</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Порядок живой очереди, мы не бронируем места.</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Автобус поедет строго по графику при наборе минимального количества 6 человек! В случае недобора ожидание до следующего рейса!!!</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Продолжительность 2 часа, 3 остановки:<br>&nbsp;</p><ul><li style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin-bottom:10px;margin-top:0px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Мемориальный комплекс «Шахидлар майдони»-10 минут</li><li style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin-bottom:10px;margin-top:0px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Мечеть Минор-10 минут</li><li style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin-bottom:10px;margin-top:0px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Комплекс «Хаст Имам» -20 минут</li></ul><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">В стоимость входит экскурсия с аудио гидом на 8 языках.</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">График: Отправка от гостиницы Узбекистан каждый день с 10:00 до 17:00 каждый час</p><h4 style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansLight, Arial, sans-serif;font-size:18px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:500;letter-spacing:normal;line-height:1.1;margin-bottom:10px;margin-top:10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Наши телефоны:<br><br>+998 99 945-13-13<br><br>+998 90 843-13-13</h4>'),
('en_US', 3, 'КОНТАКТЫ', NULL, '<shortcode class=\"bb-shortcode\">[google-map][/google-map]</shortcode><shortcode class=\"bb-shortcode\">[contact-form][/contact-form]</shortcode>'),
('en_US', 4, 'РЕКЛАМА', NULL, '<p style=\"-webkit-text-stroke-width:0px;background-color:rgb(243, 243, 243);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><strong style=\"box-sizing:border-box;font-family:OpenSansBold, Arial, sans-serif;font-weight:normal;outline:none;\"><u style=\"box-sizing:border-box;outline:none;\">Реклама двигатель торговли! А движущаяся&nbsp; реклама двигатель вдвойне !</u></strong></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(243, 243, 243);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Компания «AZNUR TARVEL» имеет честь предложить Вам размещение рекламы на наших экскурсионных автобусах.</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(243, 243, 243);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Не стоит говорить о популярности данных маршрутов у гостей и жителей города!</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(243, 243, 243);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Автобусы совершают свой маршрут каждый час&nbsp; по самым лучшим и популярным местам нашего&nbsp; города. Вашу рекламу увидят миллионы жителей столицы . При этом она будет у них на виду постоянно и каждый день!</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(243, 243, 243);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Не упустите возможность сделать Вашу рекламу мобильной и привлекательной ! Мы готовы обсудить с Вами дизайн Вашей рекламы или изготовить его сами по Вашему заказу.</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(243, 243, 243);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Вы можете разместить&nbsp; свою рекламу на бортах нашего экскурсионного автобуса.&nbsp; И тогда Вашу рекламу увидят не только на улицах города во время поездки наших автобусов но и она будет присутствовать на сотнях фотографиях которые размещают в интернете все кто фотографируется радом с автобусами!</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(243, 243, 243);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Стоимость рекламы на одном борту одного автобуса составляет 3&nbsp;000&nbsp;000 сум в месяц. Минимальный заказ 3 месяца !</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(243, 243, 243);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Возможны скидки , мы готовы к любым взаимовыгодным предложениям!</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(243, 243, 243);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Также Вы можете разместить рекламу внутри автобуса&nbsp; а в частности:</p><figure class=\"table\" style=\"width:1000px;\"><table style=\"background-color:rgb(255, 255, 255);border:1px solid rgb(221, 221, 221);\" width=\"569\" border=\"2px\"><tbody style=\"box-sizing:border-box;outline:none;\"><tr style=\"box-sizing:border-box;outline:none;\"><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"84\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\"><strong style=\"box-sizing:border-box;font-family:OpenSansBold, Arial, sans-serif;font-weight:normal;outline:none;\">Страница</strong></p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"137\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\"><strong style=\"box-sizing:border-box;font-family:OpenSansBold, Arial, sans-serif;font-weight:normal;outline:none;\">Место расположения</strong></p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"109\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\"><strong style=\"box-sizing:border-box;font-family:OpenSansBold, Arial, sans-serif;font-weight:normal;outline:none;\">Размеры</strong></p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"84\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\"><strong style=\"box-sizing:border-box;font-family:OpenSansBold, Arial, sans-serif;font-weight:normal;outline:none;\">Кол-во мест</strong></p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"155\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\"><strong style=\"box-sizing:border-box;font-family:OpenSansBold, Arial, sans-serif;font-weight:normal;outline:none;\">Цена за 1 место</strong></p></td></tr><tr style=\"box-sizing:border-box;outline:none;\"><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"84\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">1</p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"137\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">открытая часть 2 этаж задняя верхняя панель</p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"109\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">А5</p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"84\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">6</p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"155\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 120 000,00&nbsp;&nbsp;</p></td></tr><tr style=\"box-sizing:border-box;outline:none;\"><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"84\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">2</p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"137\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">2 этаж открытая часть левая передняя панель</p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"109\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">А3,А4,А5</p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"84\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">1</p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"155\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 340 000,00&nbsp;&nbsp;</p></td></tr><tr style=\"box-sizing:border-box;outline:none;\"><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"84\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">3</p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"137\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">1 этаж стенка перед лестницей</p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"109\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">А5</p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"84\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">4</p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"155\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 120 000,00&nbsp;&nbsp;</p></td></tr><tr style=\"box-sizing:border-box;outline:none;\"><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"84\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">4</p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"137\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">1 этаж конец салона панель перед возвышением</p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"109\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">А3,А4,А5</p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"84\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">1</p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"155\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 430 000,00&nbsp;&nbsp;</p></td></tr><tr style=\"box-sizing:border-box;outline:none;\"><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"84\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">5</p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"137\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">1 этаж сиденья</p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"109\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">А5</p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"84\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">5</p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"155\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 120 000,00&nbsp;&nbsp;</p></td></tr><tr style=\"box-sizing:border-box;outline:none;\"><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"84\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">6 ЗАКР</p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"137\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">2 этаж сиденья закрытая часть</p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"109\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">110Х 50</p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"84\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">10</p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"155\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 45 000,00&nbsp;&nbsp;</p></td></tr><tr style=\"box-sizing:border-box;outline:none;\"><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"84\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">6 ОТКР</p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"137\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">2 этаж сиденья открытая часть</p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"109\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">110Х100</p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"84\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">23</p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"155\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 55 000,00&nbsp;&nbsp;</p></td></tr><tr style=\"box-sizing:border-box;outline:none;\"><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"84\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">7</p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"137\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">2 этаж панель на подьеме по лестнице</p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"109\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">А4, А5</p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"84\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">1</p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"155\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 230 000,00&nbsp;&nbsp;</p></td></tr><tr style=\"box-sizing:border-box;outline:none;\"><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"84\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">8</p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"137\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">Лестница панель перед спуском</p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"109\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">А43,А4, А5</p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"84\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">1</p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"155\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 615 000,00&nbsp;&nbsp;</p></td></tr><tr style=\"box-sizing:border-box;outline:none;\"><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"84\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">9</p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"137\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">Ручки</p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"109\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">11,8 Х 65</p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"84\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">35</p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"155\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 50 000,00&nbsp;&nbsp;</p></td></tr><tr style=\"box-sizing:border-box;outline:none;\"><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"84\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">10</p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"137\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">2 этаж панель перед спуском на лестнице</p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"109\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">А 5</p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"84\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">1</p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"155\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 120 000,00&nbsp;&nbsp;</p></td></tr></tbody></table></figure><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(243, 243, 243);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">&nbsp;</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(243, 243, 243);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><strong style=\"box-sizing:border-box;font-family:OpenSansBold, Arial, sans-serif;font-weight:normal;outline:none;\">Не упустите свой шанс !</strong></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(243, 243, 243);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">По всем интересующим вопросам по размещению рекламы обращайтесь в наш офис по адресу:</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(243, 243, 243);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">улица Тарраккиёт 45,&nbsp;100047 Ташкент. Или на емаил : <a style=\"background-color:transparent;box-sizing:border-box;color:rgb(51, 122, 183);outline:none;text-decoration:none;\" href=\"mailto:aznur2010@mail.ru\">aznur2010@mail.ru</a>.</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(243, 243, 243);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Наши телефоны : +998 - 98 - 808 - 26 - 26.</p>'),
('en_US', 5, 'АРЕНДА', NULL, '<p style=\"text-align:justify;\"><span style=\"background-color:rgb(243,243,243);color:rgb(79,65,66);\"><span>Аренда двухэтажного автобуса составляет 1 000&nbsp;000 сум за один час при условии, что посадка граждан и конечная точка маршрута перед главным входом в&nbsp; гостиницу Узбекистан, в случае если посадка граждан и конечная точка маршрута является другим месторасположением, в этом случае к основной сумме прибавляется 500&nbsp;000 сум. Минимальное время заказа в аренду двухэтажного автобуса составляет 3 часа.</span></span></p>'),
('en_US', 6, 'НАШИ ГИДЫ', NULL, '<p style=\"-webkit-text-stroke-width:0px;background-color:rgb(243, 243, 243);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><strong style=\"box-sizing:border-box;font-family:OpenSansBold, Arial, sans-serif;font-weight:normal;outline:none;\">Наши гиды:</strong></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(243, 243, 243);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Камалов Рахматхон Акзамович – узбекский язык.</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(243, 243, 243);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Аудинова Аэлита Аркадиевна – русский, итальянский языки.</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(243, 243, 243);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Арипова Дильноза Максудовна- русский, английский языки.</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(243, 243, 243);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">&nbsp;Каскенов Тимур Гайдарович - английский язык.</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(243, 243, 243);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Шомансуров Шоасил – немецкий язык.</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(243, 243, 243);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Алаудинов Александр - французский язык.</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(243, 243, 243);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Мирабдуллаев Акмаль- китайский язык.</p>'),
('en_US', 7, 'ЦЕНЫ', NULL, '<p style=\"-webkit-text-stroke-width:0px;background-color:rgb(243, 243, 243);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Стоимость билета для иностранных граждан и граждан СНГ 150 000 сум.</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(243, 243, 243);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">&nbsp;Для граждан Узбекистана:</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(243, 243, 243);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Стоимость взрослого билета от 12 лет до 75 лет&nbsp; &nbsp;составляет 100 000 сум.</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(243, 243, 243);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Стоимость детского билета от 6 лет до 12 лет&nbsp; &nbsp;составляет 50&nbsp;000 сум.</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(243, 243, 243);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">А так же инвалидам первой группы, БЕСПЛАТНО!!!</p>'),
('ru_RU', 1, 'Home page', NULL, '<shortcode class=\"bb-shortcode\">[blog-posts paginate=\"12\"][/blog-posts]</shortcode>'),
('ru_RU', 2, 'О НАС', NULL, '<h3 style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansLight, Arial, sans-serif;font-size:30px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:500;letter-spacing:normal;line-height:1.1;margin-bottom:10px;margin-top:20px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Форма оплаты любая!</h3><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Начало сити тура от Сквера Амира Темура напротив гостиницы Узбекистан.</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Билеты выкупаете прямо в автобусе за 15 минут от выбранного времени.</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Порядок живой очереди, мы не бронируем места.</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Автобус поедет строго по графику при наборе минимального количества 6 человек! В случае недобора ожидание до следующего рейса!!!</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Продолжительность 2 часа, 3 остановки:<br>&nbsp;</p><ul><li style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin-bottom:10px;margin-top:0px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Мемориальный комплекс «Шахидлар майдони»-10 минут</li><li style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin-bottom:10px;margin-top:0px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Мечеть Минор-10 минут</li><li style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin-bottom:10px;margin-top:0px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Комплекс «Хаст Имам» -20 минут</li></ul><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">В стоимость входит экскурсия с аудио гидом на 8 языках.</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">График: Отправка от гостиницы Узбекистан каждый день с 10:00 до 17:00 каждый час</p><h4 style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansLight, Arial, sans-serif;font-size:18px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:500;letter-spacing:normal;line-height:1.1;margin-bottom:10px;margin-top:10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Наши телефоны:<br><br>+998 99 945-13-13<br><br>+998 90 843-13-13</h4>'),
('ru_RU', 3, 'КОНТАКТЫ', NULL, '<shortcode class=\"bb-shortcode\">[google-map][/google-map]</shortcode><shortcode class=\"bb-shortcode\">[contact-form][/contact-form]</shortcode>');
INSERT INTO `pages_translations` (`lang_code`, `pages_id`, `name`, `description`, `content`) VALUES
('ru_RU', 4, 'РЕКЛАМА', NULL, '<p style=\"-webkit-text-stroke-width:0px;background-color:rgb(243, 243, 243);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><strong style=\"box-sizing:border-box;font-family:OpenSansBold, Arial, sans-serif;font-weight:normal;outline:none;\"><u style=\"box-sizing:border-box;outline:none;\">Реклама двигатель торговли! А движущаяся&nbsp; реклама двигатель вдвойне !</u></strong></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(243, 243, 243);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Компания «AZNUR TARVEL» имеет честь предложить Вам размещение рекламы на наших экскурсионных автобусах.</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(243, 243, 243);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Не стоит говорить о популярности данных маршрутов у гостей и жителей города!</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(243, 243, 243);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Автобусы совершают свой маршрут каждый час&nbsp; по самым лучшим и популярным местам нашего&nbsp; города. Вашу рекламу увидят миллионы жителей столицы . При этом она будет у них на виду постоянно и каждый день!</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(243, 243, 243);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Не упустите возможность сделать Вашу рекламу мобильной и привлекательной ! Мы готовы обсудить с Вами дизайн Вашей рекламы или изготовить его сами по Вашему заказу.</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(243, 243, 243);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Вы можете разместить&nbsp; свою рекламу на бортах нашего экскурсионного автобуса.&nbsp; И тогда Вашу рекламу увидят не только на улицах города во время поездки наших автобусов но и она будет присутствовать на сотнях фотографиях которые размещают в интернете все кто фотографируется радом с автобусами!</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(243, 243, 243);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Стоимость рекламы на одном борту одного автобуса составляет 3&nbsp;000&nbsp;000 сум в месяц. Минимальный заказ 3 месяца !</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(243, 243, 243);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Возможны скидки , мы готовы к любым взаимовыгодным предложениям!</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(243, 243, 243);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Также Вы можете разместить рекламу внутри автобуса&nbsp; а в частности:</p><figure class=\"table\" style=\"width:1000px;\"><table style=\"background-color:rgb(255, 255, 255);border:1px solid rgb(221, 221, 221);\" width=\"569\" border=\"2px\"><tbody style=\"box-sizing:border-box;outline:none;\"><tr style=\"box-sizing:border-box;outline:none;\"><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"84\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\"><strong style=\"box-sizing:border-box;font-family:OpenSansBold, Arial, sans-serif;font-weight:normal;outline:none;\">Страница</strong></p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"137\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\"><strong style=\"box-sizing:border-box;font-family:OpenSansBold, Arial, sans-serif;font-weight:normal;outline:none;\">Место расположения</strong></p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"109\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\"><strong style=\"box-sizing:border-box;font-family:OpenSansBold, Arial, sans-serif;font-weight:normal;outline:none;\">Размеры</strong></p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"84\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\"><strong style=\"box-sizing:border-box;font-family:OpenSansBold, Arial, sans-serif;font-weight:normal;outline:none;\">Кол-во мест</strong></p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"155\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\"><strong style=\"box-sizing:border-box;font-family:OpenSansBold, Arial, sans-serif;font-weight:normal;outline:none;\">Цена за 1 место</strong></p></td></tr><tr style=\"box-sizing:border-box;outline:none;\"><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"84\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">1</p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"137\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">открытая часть 2 этаж задняя верхняя панель</p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"109\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">А5</p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"84\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">6</p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"155\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 120 000,00&nbsp;&nbsp;</p></td></tr><tr style=\"box-sizing:border-box;outline:none;\"><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"84\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">2</p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"137\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">2 этаж открытая часть левая передняя панель</p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"109\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">А3,А4,А5</p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"84\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">1</p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"155\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 340 000,00&nbsp;&nbsp;</p></td></tr><tr style=\"box-sizing:border-box;outline:none;\"><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"84\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">3</p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"137\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">1 этаж стенка перед лестницей</p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"109\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">А5</p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"84\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">4</p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"155\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 120 000,00&nbsp;&nbsp;</p></td></tr><tr style=\"box-sizing:border-box;outline:none;\"><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"84\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">4</p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"137\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">1 этаж конец салона панель перед возвышением</p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"109\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">А3,А4,А5</p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"84\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">1</p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"155\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 430 000,00&nbsp;&nbsp;</p></td></tr><tr style=\"box-sizing:border-box;outline:none;\"><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"84\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">5</p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"137\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">1 этаж сиденья</p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"109\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">А5</p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"84\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">5</p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"155\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 120 000,00&nbsp;&nbsp;</p></td></tr><tr style=\"box-sizing:border-box;outline:none;\"><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"84\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">6 ЗАКР</p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"137\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">2 этаж сиденья закрытая часть</p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"109\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">110Х 50</p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"84\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">10</p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"155\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 45 000,00&nbsp;&nbsp;</p></td></tr><tr style=\"box-sizing:border-box;outline:none;\"><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"84\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">6 ОТКР</p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"137\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">2 этаж сиденья открытая часть</p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"109\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">110Х100</p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"84\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">23</p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"155\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 55 000,00&nbsp;&nbsp;</p></td></tr><tr style=\"box-sizing:border-box;outline:none;\"><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"84\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">7</p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"137\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">2 этаж панель на подьеме по лестнице</p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"109\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">А4, А5</p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"84\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">1</p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"155\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 230 000,00&nbsp;&nbsp;</p></td></tr><tr style=\"box-sizing:border-box;outline:none;\"><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"84\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">8</p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"137\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">Лестница панель перед спуском</p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"109\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">А43,А4, А5</p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"84\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">1</p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"155\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 615 000,00&nbsp;&nbsp;</p></td></tr><tr style=\"box-sizing:border-box;outline:none;\"><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"84\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">9</p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"137\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">Ручки</p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"109\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">11,8 Х 65</p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"84\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">35</p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"155\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 50 000,00&nbsp;&nbsp;</p></td></tr><tr style=\"box-sizing:border-box;outline:none;\"><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"84\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">10</p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"137\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">2 этаж панель перед спуском на лестнице</p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"109\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">А 5</p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"84\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">1</p></td><td style=\"border:1px solid rgb(221, 221, 221);padding:15px 30px;text-align:center;\" width=\"155\"><p style=\"box-sizing:border-box;margin:0px;outline:none;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 120 000,00&nbsp;&nbsp;</p></td></tr></tbody></table></figure><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(243, 243, 243);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">&nbsp;</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(243, 243, 243);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><strong style=\"box-sizing:border-box;font-family:OpenSansBold, Arial, sans-serif;font-weight:normal;outline:none;\">Не упустите свой шанс !</strong></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(243, 243, 243);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">По всем интересующим вопросам по размещению рекламы обращайтесь в наш офис по адресу:</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(243, 243, 243);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">улица Тарраккиёт 45,&nbsp;100047 Ташкент. Или на емаил : <a style=\"background-color:transparent;box-sizing:border-box;color:rgb(51, 122, 183);outline:none;text-decoration:none;\" href=\"mailto:aznur2010@mail.ru\">aznur2010@mail.ru</a>.</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(243, 243, 243);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Наши телефоны : +998 - 98 - 808 - 26 - 26.</p>'),
('ru_RU', 5, 'АРЕНДА', NULL, '<p style=\"text-align:justify;\"><span style=\"background-color:rgb(243,243,243);color:rgb(79,65,66);\"><span>Аренда двухэтажного автобуса составляет 1 000&nbsp;000 сум за один час при условии, что посадка граждан и конечная точка маршрута перед главным входом в&nbsp; гостиницу Узбекистан, в случае если посадка граждан и конечная точка маршрута является другим месторасположением, в этом случае к основной сумме прибавляется 500&nbsp;000 сум. Минимальное время заказа в аренду двухэтажного автобуса составляет 3 часа.</span></span></p>'),
('ru_RU', 6, 'НАШИ ГИДЫ', NULL, '<p style=\"-webkit-text-stroke-width:0px;background-color:rgb(243, 243, 243);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><strong style=\"box-sizing:border-box;font-family:OpenSansBold, Arial, sans-serif;font-weight:normal;outline:none;\">Наши гиды:</strong></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(243, 243, 243);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Камалов Рахматхон Акзамович – узбекский язык.</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(243, 243, 243);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Аудинова Аэлита Аркадиевна – русский, итальянский языки.</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(243, 243, 243);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Арипова Дильноза Максудовна- русский, английский языки.</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(243, 243, 243);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">&nbsp;Каскенов Тимур Гайдарович - английский язык.</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(243, 243, 243);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Шомансуров Шоасил – немецкий язык.</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(243, 243, 243);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Алаудинов Александр - французский язык.</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(243, 243, 243);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Мирабдуллаев Акмаль- китайский язык.</p>'),
('ru_RU', 7, 'ЦЕНЫ', NULL, '<p style=\"-webkit-text-stroke-width:0px;background-color:rgb(243, 243, 243);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Стоимость билета для иностранных граждан и граждан СНГ 150 000 сум.</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(243, 243, 243);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">&nbsp;Для граждан Узбекистана:</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(243, 243, 243);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Стоимость взрослого билета от 12 лет до 75 лет&nbsp; &nbsp;составляет 100 000 сум.</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(243, 243, 243);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Стоимость детского билета от 6 лет до 12 лет&nbsp; &nbsp;составляет 50&nbsp;000 сум.</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(243, 243, 243);box-sizing:border-box;color:rgb(79, 65, 66);font-family:OpenSansRegular, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 10px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">А так же инвалидам первой группы, БЕСПЛАТНО!!!</p>');

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts_translations`
--

CREATE TABLE `posts_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

CREATE TABLE `post_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_collections`
--

CREATE TABLE `post_collections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_collections_posts`
--

CREATE TABLE `post_collections_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_collection_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

CREATE TABLE `post_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `request_logs`
--

CREATE TABLE `request_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status_code` int(11) DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count` int(11) NOT NULL DEFAULT '0',
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `request_logs`
--

INSERT INTO `request_logs` (`id`, `status_code`, `url`, `count`, `user_id`, `referrer`, `created_at`, `updated_at`) VALUES
(1, 404, 'http://tashkentcitytour.loc/themes/ripple/js/vendor/jquery.min.js', 2, NULL, NULL, '2022-08-23 15:28:05', '2022-08-23 15:29:04'),
(2, 404, 'http://tashkentcitytour.loc/themes/ripple/js/vendor/modernizr-3.5.0.min.js', 2, NULL, NULL, '2022-08-23 15:28:05', '2022-08-23 15:29:04'),
(3, 404, 'http://tashkentcitytour.loc/themes/ripple/js/vendor/lazyload.min.js', 2, NULL, NULL, '2022-08-23 15:28:05', '2022-08-23 15:29:04'),
(4, 404, 'http://tashkentcitytour.loc/themes/ripple/js/vendor/popper.min.js', 2, NULL, NULL, '2022-08-23 15:28:06', '2022-08-23 15:29:04'),
(5, 404, 'http://tashkentcitytour.loc/themes/ripple/js/vendor/jquery.slicknav.js', 2, NULL, NULL, '2022-08-23 15:28:06', '2022-08-23 15:29:04'),
(6, 404, 'http://tashkentcitytour.loc/themes/ripple/js/vendor/slick.min.js', 2, NULL, NULL, '2022-08-23 15:28:06', '2022-08-23 15:29:04'),
(7, 404, 'http://tashkentcitytour.loc/themes/ripple/js/vendor/wow.min.js', 2, NULL, NULL, '2022-08-23 15:28:06', '2022-08-23 15:29:04'),
(8, 404, 'http://tashkentcitytour.loc/themes/ripple/js/vendor/animated.headline.js', 2, NULL, NULL, '2022-08-23 15:28:06', '2022-08-23 15:29:04'),
(9, 404, 'http://tashkentcitytour.loc/themes/ripple/js/vendor/jquery.vticker-min.js', 2, NULL, NULL, '2022-08-23 15:28:06', '2022-08-23 15:29:05'),
(10, 404, 'http://tashkentcitytour.loc/themes/ripple/js/vendor/jquery.scrollUp.min.js', 2, NULL, NULL, '2022-08-23 15:28:06', '2022-08-23 15:29:05'),
(11, 404, 'http://tashkentcitytour.loc/themes/ripple/js/vendor/jquery.sticky.js', 2, NULL, NULL, '2022-08-23 15:28:06', '2022-08-23 15:29:05'),
(12, 404, 'http://tashkentcitytour.loc/themes/ripple/js/vendor/perfect-scrollbar.js', 2, NULL, NULL, '2022-08-23 15:28:06', '2022-08-23 15:29:05'),
(13, 404, 'http://tashkentcitytour.loc/themes/ripple/js/vendor/waypoints.js', 2, NULL, NULL, '2022-08-23 15:28:07', '2022-08-23 15:29:05'),
(14, 404, 'http://tashkentcitytour.loc/themes/ripple/js/vendor/counterup.js', 2, NULL, NULL, '2022-08-23 15:28:07', '2022-08-23 15:29:05'),
(15, 404, 'http://tashkentcitytour.loc/themes/ripple/js/vendor/jquery.theia.sticky.js', 2, NULL, NULL, '2022-08-23 15:28:07', '2022-08-23 15:29:05'),
(16, 404, 'http://tashkentcitytour.loc/themes/ripple/js/script.js?v=5.26.3', 2, NULL, NULL, '2022-08-23 15:28:07', '2022-08-23 15:29:05'),
(17, 404, 'http://tashkentcitytour.loc/js/jquery-3.3.1.min.js', 11, NULL, NULL, '2022-08-23 21:20:53', '2022-08-23 21:40:27'),
(18, 404, 'http://tashkentcitytour.loc/js/jquery.nice-select.min.js', 10, NULL, NULL, '2022-08-23 21:23:35', '2022-08-23 21:40:27'),
(19, 404, 'http://tashkentcitytour.loc/js/bootstrap.min.js', 10, NULL, NULL, '2022-08-23 21:23:35', '2022-08-23 21:40:27'),
(20, 404, 'http://tashkentcitytour.loc/js/jquery-ui.min.js', 10, NULL, NULL, '2022-08-23 21:23:35', '2022-08-23 21:40:27'),
(21, 404, 'http://tashkentcitytour.loc/js/jquery.magnific-popup.min.js', 10, NULL, NULL, '2022-08-23 21:23:36', '2022-08-23 21:40:27'),
(22, 404, 'http://tashkentcitytour.loc/js/jquery.slicknav.js', 10, NULL, NULL, '2022-08-23 21:23:36', '2022-08-23 21:40:28'),
(23, 404, 'http://tashkentcitytour.loc/themes/tashkentcitytour/js/main.js', 5, NULL, NULL, '2022-08-23 21:23:36', '2022-08-23 21:32:55'),
(24, 404, 'http://tashkentcitytour.loc/js/owl.carousel.min.js', 10, NULL, NULL, '2022-08-23 21:23:36', '2022-08-23 21:40:28'),
(25, 404, 'http://tashkentcitytour.loc/themes/tashkentcitytour/css/jquery-ui.min.css', 4, NULL, NULL, '2022-08-23 21:28:46', '2022-08-23 21:32:55'),
(26, 404, 'http://tashkentcitytour.loc/themes/tashkentcitytour/css/flaticon.css', 4, NULL, NULL, '2022-08-23 21:28:46', '2022-08-23 21:32:54'),
(27, 404, 'http://tashkentcitytour.loc/themes/tashkentcitytour/css/bootstrap.min.css', 4, NULL, NULL, '2022-08-23 21:28:46', '2022-08-23 21:32:54'),
(28, 404, 'http://tashkentcitytour.loc/themes/tashkentcitytour/css/font-awesome.min.css', 4, NULL, NULL, '2022-08-23 21:28:46', '2022-08-23 21:32:54'),
(29, 404, 'http://tashkentcitytour.loc/themes/tashkentcitytour/css/owl.carousel.min.css', 4, NULL, NULL, '2022-08-23 21:28:47', '2022-08-23 21:32:55'),
(30, 404, 'http://tashkentcitytour.loc/themes/tashkentcitytour/css/magnific-popup.css', 4, NULL, NULL, '2022-08-23 21:28:47', '2022-08-23 21:32:55'),
(31, 404, 'http://tashkentcitytour.loc/themes/tashkentcitytour/css/nice-select.css', 4, NULL, NULL, '2022-08-23 21:28:47', '2022-08-23 21:32:54'),
(32, 404, 'http://tashkentcitytour.loc/themes/tashkentcitytour/css/slicknav.min.css', 4, NULL, NULL, '2022-08-23 21:28:47', '2022-08-23 21:32:55'),
(33, 404, 'http://tashkentcitytour.loc/themes/tashkentcitytour/css/bootstrap.min.css.map', 30, NULL, NULL, '2022-08-23 21:33:24', '2022-08-23 23:59:54'),
(34, 404, 'http://tashkentcitytour.loc/img/logo.png', 70, NULL, NULL, '2022-08-23 21:36:13', '2022-08-23 23:28:23'),
(35, 404, 'http://tashkentcitytour.loc/img/placeholder.png', 67, NULL, NULL, '2022-08-23 21:37:38', '2022-08-23 23:25:40'),
(36, 404, 'http://tashkentcitytour.loc/img/phone.png', 67, NULL, NULL, '2022-08-23 21:37:38', '2022-08-23 23:25:40'),
(37, 404, 'http://tashkentcitytour.loc/img/author-2.png', 19, NULL, NULL, '2022-08-23 21:43:42', '2022-08-23 23:09:11'),
(38, 404, 'http://tashkentcitytour.loc/img/author-1.png', 18, NULL, NULL, '2022-08-23 21:43:42', '2022-08-23 23:08:06'),
(39, 404, 'http://tashkentcitytour.loc/img/calendar.png', 55, NULL, NULL, '2022-08-23 21:43:42', '2022-08-24 00:03:10'),
(40, 404, 'http://tashkentcitytour.loc/img/home-about-1.jpg', 17, NULL, NULL, '2022-08-23 21:43:42', '2022-08-23 22:09:55'),
(41, 404, 'http://tashkentcitytour.loc/img/home-about-2.jpg', 17, NULL, NULL, '2022-08-23 21:43:42', '2022-08-23 22:09:55'),
(42, 404, 'http://tashkentcitytour.loc/img/hero-bg.jpg', 8, NULL, NULL, '2022-08-23 21:43:42', '2022-08-23 21:58:58'),
(43, 404, 'http://tashkentcitytour.loc/img/home-about-3.jpg', 17, NULL, NULL, '2022-08-23 21:43:42', '2022-08-23 22:09:55'),
(44, 404, 'http://tashkentcitytour.loc/img/home-about-4.jpg', 17, NULL, NULL, '2022-08-23 21:43:43', '2022-08-23 22:09:55'),
(45, 404, 'http://tashkentcitytour.loc/img/faci-1.jpg', 18, NULL, NULL, '2022-08-23 21:43:43', '2022-08-23 22:59:26'),
(46, 404, 'http://tashkentcitytour.loc/img/video-inside-bg.jpg', 21, NULL, NULL, '2022-08-23 21:43:43', '2022-08-23 23:10:01'),
(47, 404, 'http://tashkentcitytour.loc/img/video-bg.jpg', 20, NULL, NULL, '2022-08-23 21:43:43', '2022-08-23 23:09:29'),
(48, 404, 'http://tashkentcitytour.loc/img/faci-2.jpg', 19, NULL, NULL, '2022-08-23 21:43:43', '2022-08-23 23:01:40'),
(49, 404, 'http://tashkentcitytour.loc/themes/tashkentcitytour/css/images/ui-icons_444444_256x240.png', 1, NULL, NULL, '2022-08-23 21:43:44', '2022-08-23 21:43:44'),
(50, 404, 'http://tashkentcitytour.loc/contact.html', 1, '[1]', NULL, '2022-08-23 21:49:37', '2022-08-23 21:49:37'),
(51, 404, 'http://tashkentcitytour.loc/index.html', 7, '[1]', NULL, '2022-08-23 21:49:40', '2022-08-23 21:50:26'),
(52, 404, 'http://tashkentcitytour.loc/storage/img/logo-150x150.png', 4, NULL, NULL, '2022-08-23 21:58:58', '2022-08-23 22:01:10'),
(53, 404, 'http://tashkentcitytour.loc/tashkentcitytour/img/hero-bg.jpg', 1, NULL, NULL, '2022-08-23 22:00:04', '2022-08-23 22:00:04'),
(54, 404, 'http://tashkentcitytour.loc/theme/tashkentcitytour/img/hero-bg.jpg', 1, NULL, NULL, '2022-08-23 22:00:30', '2022-08-23 22:00:30'),
(55, 404, 'http://tashkentcitytour.loc/contact', 1, '[1]', NULL, '2022-08-23 22:20:44', '2022-08-23 22:20:44'),
(56, 404, 'http://tashkentcitytour.loc/contacts', 2, '[1]', NULL, '2022-08-23 22:20:50', '2022-08-23 22:23:59'),
(57, 404, 'http://tashkentcitytour.loc/admin/pages/edit/img/calendar.png', 1, NULL, NULL, '2022-08-23 23:58:53', '2022-08-23 23:58:53');

-- --------------------------------------------------------

--
-- Table structure for table `revisions`
--

CREATE TABLE `revisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_users`
--

CREATE TABLE `role_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'activated_plugins', '[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"audit-log\",\"backup\",\"block\",\"blog\",\"captcha\",\"comment\",\"contact\",\"cookie-consent\",\"custom-field\",\"faq\",\"gallery\",\"member\",\"newsletter\",\"page-builder\",\"post-collection\",\"post-scheduler\",\"pro-posts\",\"request-log\",\"rss-feed\",\"simple-slider\",\"social-login\",\"toc\",\"translation\"]', NULL, NULL),
(2, 'membership_authorization_at', '2022-08-23 20:28:25', NULL, NULL),
(3, 'theme', 'tashkentcitytour', NULL, NULL),
(4, 'theme-tashkentcitytour-site_title', '', NULL, NULL),
(5, 'theme-tashkentcitytour-show_site_name', '0', NULL, NULL),
(6, 'theme-tashkentcitytour-seo_title', '', NULL, NULL),
(7, 'theme-tashkentcitytour-seo_description', '', NULL, NULL),
(8, 'theme-tashkentcitytour-seo_og_image', '', NULL, NULL),
(9, 'theme-tashkentcitytour-copyright', '© 2022 Your Company. All right reserved.', NULL, NULL),
(10, 'theme-tashkentcitytour-primary_font', 'Montserrat', NULL, NULL),
(11, 'theme-tashkentcitytour-primary_color', '#FF2B4A', NULL, NULL),
(12, 'theme-tashkentcitytour-favicon', 'logo-1.png', NULL, NULL),
(13, 'theme-tashkentcitytour-logo', 'logo-1.png', NULL, NULL),
(14, 'theme-tashkentcitytour-blog_page_id', NULL, NULL, NULL),
(15, 'theme-tashkentcitytour-number_of_posts_in_a_category', '12', NULL, NULL),
(16, 'theme-tashkentcitytour-number_of_posts_in_a_tag', '12', NULL, NULL),
(17, 'theme-tashkentcitytour-homepage_id', '1', NULL, NULL),
(18, 'theme-tashkentcitytour-cookie_consent_enable', 'no', NULL, NULL),
(19, 'theme-tashkentcitytour-cookie_consent_style', 'full-width', NULL, NULL),
(20, 'theme-tashkentcitytour-cookie_consent_message', 'Your experience on this site will be improved by allowing cookies.', NULL, NULL),
(21, 'theme-tashkentcitytour-cookie_consent_button_text', 'Allow cookies', NULL, NULL),
(22, 'theme-tashkentcitytour-cookie_consent_learn_more_url', '', NULL, NULL),
(23, 'theme-tashkentcitytour-cookie_consent_learn_more_text', '', NULL, NULL),
(24, 'theme-tashkentcitytour-cookie_consent_background_color', '#000000', NULL, NULL),
(25, 'theme-tashkentcitytour-cookie_consent_text_color', '#FFFFFF', NULL, NULL),
(26, 'theme-tashkentcitytour-cookie_consent_max_width', '1170', NULL, NULL),
(27, 'admin_email', '[]', NULL, NULL),
(28, 'time_zone', 'UTC', NULL, NULL),
(29, 'locale_direction', 'ltr', NULL, NULL),
(30, 'enable_send_error_reporting_via_email', '0', NULL, NULL),
(31, 'admin_logo', '', NULL, NULL),
(32, 'admin_favicon', '', NULL, NULL),
(33, 'login_screen_backgrounds', '[]', NULL, NULL),
(34, 'admin_title', 'Your App', NULL, NULL),
(35, 'rich_editor', 'ckeditor', NULL, NULL),
(36, 'enable_change_admin_theme', '0', NULL, NULL),
(37, 'enable_cache', '0', NULL, NULL),
(38, 'cache_time', '10', NULL, NULL),
(39, 'cache_admin_menu_enable', '0', NULL, NULL),
(40, 'optimize_page_speed_enable', '0', NULL, NULL),
(41, 'google_site_verification', '', NULL, NULL),
(42, 'cache_time_site_map', '3600', NULL, NULL),
(43, 'show_admin_bar', '1', NULL, NULL),
(44, 'redirect_404_to_homepage', '0', NULL, NULL),
(45, 'verify_account_email', '0', NULL, NULL),
(46, 'member_enable_recaptcha_in_register_page', '0', NULL, NULL),
(47, 'enable_faq_schema', '0', NULL, NULL),
(48, 'google_analytics', '', NULL, NULL),
(49, 'analytics_view_id', '', NULL, NULL),
(50, 'analytics_service_account_credentials', '', NULL, NULL),
(51, 'newsletter_mailchimp_api_key', '', NULL, NULL),
(52, 'newsletter_mailchimp_list_id', '', NULL, NULL),
(53, 'newsletter_sendgrid_api_key', '', NULL, NULL),
(54, 'newsletter_sendgrid_list_id', '', NULL, NULL),
(55, 'enable_captcha', '0', NULL, NULL),
(56, 'captcha_type', 'v2', NULL, NULL),
(57, 'captcha_hide_badge', '0', NULL, NULL),
(58, 'captcha_site_key', '', NULL, NULL),
(59, 'captcha_secret', '', NULL, NULL),
(60, 'simple_slider_using_assets', '1', NULL, NULL),
(61, 'locale', 'uz', NULL, NULL),
(62, 'default_admin_theme', 'default', NULL, NULL),
(63, 'admin_locale_direction', 'ltr', NULL, NULL),
(64, 'theme-tashkentcitytour-address', '', NULL, NULL),
(65, 'theme-tashkentcitytour-dayofweek', '', NULL, NULL),
(66, 'theme-tashkentcitytour-phone', '', NULL, NULL),
(67, 'theme-tashkentcitytour-email', '', NULL, NULL),
(68, 'theme-tashkentcitytour-social_links', '[[{\"key\":\"social-name\",\"value\":null},{\"key\":\"social-icon\",\"value\":null},{\"key\":\"social-url\",\"value\":null},{\"key\":\"social-total-follow\",\"value\":null}]]', NULL, NULL),
(69, 'theme-tashkentcitytour-site_description', 'Dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `simple_sliders`
--

CREATE TABLE `simple_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `simple_slider_items`
--

CREATE TABLE `simple_slider_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `simple_slider_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `order` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `slugs`
--

CREATE TABLE `slugs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slugs`
--

INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES
(1, 'yangiliklar', 1, 'Botble\\Blog\\Models\\Category', '', '2022-08-23 22:08:16', '2022-08-23 22:08:16'),
(2, 'home-page', 1, 'Botble\\Page\\Models\\Page', '', '2022-08-23 22:11:00', '2022-08-23 22:11:00'),
(3, 'o-nas', 2, 'Botble\\Page\\Models\\Page', '', '2022-08-23 22:16:54', '2022-08-23 22:16:54'),
(4, 'kontakty', 3, 'Botble\\Page\\Models\\Page', '', '2022-08-23 22:23:38', '2022-08-23 22:23:38'),
(5, 'reklama', 4, 'Botble\\Page\\Models\\Page', '', '2022-08-23 23:23:12', '2022-08-23 23:23:12'),
(6, 'arenda', 5, 'Botble\\Page\\Models\\Page', '', '2022-08-23 23:23:50', '2022-08-23 23:23:50'),
(7, 'nasi-gidy', 6, 'Botble\\Page\\Models\\Page', '', '2022-08-23 23:24:15', '2022-08-23 23:24:15'),
(8, 'ceny', 7, 'Botble\\Page\\Models\\Page', '', '2022-08-23 23:24:43', '2022-08-23 23:24:43');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags_translations`
--

CREATE TABLE `tags_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` int(10) UNSIGNED DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `first_name`, `last_name`, `username`, `avatar_id`, `super_user`, `manage_supers`, `permissions`, `last_login`) VALUES
(1, 'bahrom1982@gmail.com', NULL, '$2y$10$94jyPJtvM5rF7aDBbS48FeNe4qPLD.A3TjY8TrgStWSivip42tksa', 'GfspSTnzHr88cjscZmGaShmBqny9PMUh9g6pfG931BgtzFPrx0835r2BFOwZ', '2022-08-23 15:27:18', '2022-08-23 15:28:22', 'bahrom', 'parpiyev', 'admin', NULL, 1, 1, NULL, '2022-08-23 15:28:22');

-- --------------------------------------------------------

--
-- Table structure for table `user_meta`
--

CREATE TABLE `user_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

CREATE TABLE `widgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `widgets`
--

INSERT INTO `widgets` (`id`, `widget_id`, `sidebar_id`, `theme`, `position`, `data`, `created_at`, `updated_at`) VALUES
(9, 'NewsletterWidget', 'footer_sidebar_2', 'tashkentcitytour', 0, '{\"id\":\"NewsletterWidget\",\"name\":\"Newsletter widget\"}', '2022-08-23 23:46:52', '2022-08-23 23:46:52'),
(10, 'AboutWidget', 'footer_sidebar_1', 'tashkentcitytour', 0, '{\"id\":\"AboutWidget\",\"name\":\"About me\",\"description\":\"Dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\",\"image\":\"logo-1.png\"}', '2022-08-23 23:46:52', '2022-08-23 23:46:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activations`
--
ALTER TABLE `activations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activations_user_id_index` (`user_id`);

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ads_key_unique` (`key`);

--
-- Indexes for table `audit_histories`
--
ALTER TABLE `audit_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `audit_histories_user_id_index` (`user_id`),
  ADD KEY `audit_histories_module_index` (`module`);

--
-- Indexes for table `bb_comments`
--
ALTER TABLE `bb_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bb_comment_likes`
--
ALTER TABLE `bb_comment_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bb_comment_likes_comment_id_index` (`comment_id`),
  ADD KEY `bb_comment_likes_user_id_index` (`user_id`);

--
-- Indexes for table `bb_comment_ratings`
--
ALTER TABLE `bb_comment_ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bb_comment_ratings_user_id_index` (`user_id`);

--
-- Indexes for table `bb_comment_recommends`
--
ALTER TABLE `bb_comment_recommends`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bb_comment_recommends_user_id_index` (`user_id`);

--
-- Indexes for table `blocks`
--
ALTER TABLE `blocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blocks_translations`
--
ALTER TABLE `blocks_translations`
  ADD PRIMARY KEY (`lang_code`,`blocks_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_parent_id_status_created_at_index` (`parent_id`,`status`,`created_at`);

--
-- Indexes for table `categories_translations`
--
ALTER TABLE `categories_translations`
  ADD PRIMARY KEY (`lang_code`,`categories_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_replies`
--
ALTER TABLE `contact_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_widget_settings`
--
ALTER TABLE `dashboard_widget_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  ADD KEY `dashboard_widget_settings_widget_id_index` (`widget_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs_translations`
--
ALTER TABLE `faqs_translations`
  ADD PRIMARY KEY (`lang_code`,`faqs_id`);

--
-- Indexes for table `faq_categories`
--
ALTER TABLE `faq_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faq_categories_translations`
--
ALTER TABLE `faq_categories_translations`
  ADD PRIMARY KEY (`lang_code`,`faq_categories_id`);

--
-- Indexes for table `favorite_posts`
--
ALTER TABLE `favorite_posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `favorite_posts_post_id_user_id_type_unique` (`post_id`,`user_id`,`type`);

--
-- Indexes for table `field_groups`
--
ALTER TABLE `field_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `field_items`
--
ALTER TABLE `field_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `galleries_user_id_index` (`user_id`);

--
-- Indexes for table `galleries_translations`
--
ALTER TABLE `galleries_translations`
  ADD PRIMARY KEY (`lang_code`,`galleries_id`);

--
-- Indexes for table `gallery_meta`
--
ALTER TABLE `gallery_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gallery_meta_reference_id_index` (`reference_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`lang_id`);

--
-- Indexes for table `language_meta`
--
ALTER TABLE `language_meta`
  ADD PRIMARY KEY (`lang_meta_id`),
  ADD KEY `language_meta_reference_id_index` (`reference_id`);

--
-- Indexes for table `media_files`
--
ALTER TABLE `media_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_files_user_id_index` (`user_id`),
  ADD KEY `media_files_index` (`folder_id`,`user_id`,`created_at`);

--
-- Indexes for table `media_folders`
--
ALTER TABLE `media_folders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_folders_user_id_index` (`user_id`),
  ADD KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`);

--
-- Indexes for table `media_settings`
--
ALTER TABLE `media_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `members_email_unique` (`email`);

--
-- Indexes for table `member_activity_logs`
--
ALTER TABLE `member_activity_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `member_activity_logs_member_id_index` (`member_id`);

--
-- Indexes for table `member_password_resets`
--
ALTER TABLE `member_password_resets`
  ADD KEY `member_password_resets_email_index` (`email`),
  ADD KEY `member_password_resets_token_index` (`token`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_slug_unique` (`slug`);

--
-- Indexes for table `menu_locations`
--
ALTER TABLE `menu_locations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`);

--
-- Indexes for table `menu_nodes`
--
ALTER TABLE `menu_nodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_nodes_menu_id_index` (`menu_id`),
  ADD KEY `menu_nodes_parent_id_index` (`parent_id`),
  ADD KEY `menu_nodes_index` (`parent_id`,`reference_id`,`reference_type`);

--
-- Indexes for table `meta_boxes`
--
ALTER TABLE `meta_boxes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meta_boxes_reference_id_index` (`reference_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
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
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages_translations`
--
ALTER TABLE `pages_translations`
  ADD PRIMARY KEY (`lang_code`,`pages_id`);

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_status_author_id_author_type_created_at_index` (`status`,`author_id`,`author_type`,`created_at`);

--
-- Indexes for table `posts_translations`
--
ALTER TABLE `posts_translations`
  ADD PRIMARY KEY (`lang_code`,`posts_id`);

--
-- Indexes for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_collections`
--
ALTER TABLE `post_collections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_collections_posts`
--
ALTER TABLE `post_collections_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request_logs`
--
ALTER TABLE `request_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `revisions`
--
ALTER TABLE `revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`),
  ADD KEY `roles_created_by_index` (`created_by`),
  ADD KEY `roles_updated_by_index` (`updated_by`);

--
-- Indexes for table `role_users`
--
ALTER TABLE `role_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_users_user_id_index` (`user_id`),
  ADD KEY `role_users_role_id_index` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `simple_sliders`
--
ALTER TABLE `simple_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `simple_slider_items`
--
ALTER TABLE `simple_slider_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slugs`
--
ALTER TABLE `slugs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags_translations`
--
ALTER TABLE `tags_translations`
  ADD PRIMARY KEY (`lang_code`,`tags_id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indexes for table `user_meta`
--
ALTER TABLE `user_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_meta_user_id_index` (`user_id`);

--
-- Indexes for table `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activations`
--
ALTER TABLE `activations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `audit_histories`
--
ALTER TABLE `audit_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `bb_comments`
--
ALTER TABLE `bb_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bb_comment_likes`
--
ALTER TABLE `bb_comment_likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bb_comment_ratings`
--
ALTER TABLE `bb_comment_ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bb_comment_recommends`
--
ALTER TABLE `bb_comment_recommends`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blocks`
--
ALTER TABLE `blocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_replies`
--
ALTER TABLE `contact_replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `custom_fields`
--
ALTER TABLE `custom_fields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `dashboard_widget_settings`
--
ALTER TABLE `dashboard_widget_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faq_categories`
--
ALTER TABLE `faq_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favorite_posts`
--
ALTER TABLE `favorite_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `field_groups`
--
ALTER TABLE `field_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `field_items`
--
ALTER TABLE `field_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gallery_meta`
--
ALTER TABLE `gallery_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `lang_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `language_meta`
--
ALTER TABLE `language_meta`
  MODIFY `lang_meta_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `media_files`
--
ALTER TABLE `media_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `media_folders`
--
ALTER TABLE `media_folders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media_settings`
--
ALTER TABLE `media_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `member_activity_logs`
--
ALTER TABLE `member_activity_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_locations`
--
ALTER TABLE `menu_locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_nodes`
--
ALTER TABLE `menu_nodes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `meta_boxes`
--
ALTER TABLE `meta_boxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post_categories`
--
ALTER TABLE `post_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post_collections`
--
ALTER TABLE `post_collections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post_collections_posts`
--
ALTER TABLE `post_collections_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post_tags`
--
ALTER TABLE `post_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `request_logs`
--
ALTER TABLE `request_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `revisions`
--
ALTER TABLE `revisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role_users`
--
ALTER TABLE `role_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `simple_sliders`
--
ALTER TABLE `simple_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `simple_slider_items`
--
ALTER TABLE `simple_slider_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `slugs`
--
ALTER TABLE `slugs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_meta`
--
ALTER TABLE `user_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
