-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 08, 2020 at 03:57 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hack36`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2020-02-11 12:27:34', '2020-02-11 12:27:34'),
(2, NULL, 1, 'Category 2', 'category-2', '2020-02-11 12:27:34', '2020-02-11 12:27:34');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(56, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(57, 7, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(58, 7, 'price', 'text', 'Price', 0, 1, 1, 1, 1, 1, '{}', 3),
(59, 7, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 4),
(60, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2020-02-11 12:27:32', '2020-02-11 12:27:32'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2020-02-11 12:27:32', '2020-02-11 12:27:32'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2020-02-11 12:27:32', '2020-02-11 12:27:32'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2020-02-11 12:27:34', '2020-02-11 12:27:34'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2020-02-11 12:27:34', '2020-02-11 12:27:34'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2020-02-11 12:27:35', '2020-02-11 12:27:35'),
(7, 'vegetables', 'vegetables', 'Vegetable', 'Vegetables', NULL, 'App\\Vegetable', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-02-14 14:00:19', '2020-02-14 14:00:19');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `fname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int(11) NOT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `user_id`, `fname`, `lname`, `age`, `address`, `state`, `city`, `pincode`, `rating`, `created_at`, `updated_at`) VALUES
(3, 49, 'AMANfpo', 'SHRIVAS', 22, 'PG  boys hostel, MNNIT Allahabad', 'Uttar Pradesh', 'Allahabad', 211004, 0, '2020-02-14 18:35:54', '2020-02-14 18:35:54');

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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `farmers`
--

CREATE TABLE `farmers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `fname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int(11) NOT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `loan` int(11) NOT NULL,
  `vegetable` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `farmers`
--

INSERT INTO `farmers` (`id`, `user_id`, `fname`, `lname`, `age`, `address`, `state`, `city`, `pincode`, `rating`, `loan`, `vegetable`, `created_at`, `updated_at`) VALUES
(1, 0, 'Viola Turcotte II', 'Dulce Simonis', 23, 'qYpNu6k473765LyiAEch', 'k3En9QJpU6pppYl', 'otxEU7k5hL1usRC', 23768, 4, 0, 'eb0j3h4fan', '2020-02-13 14:46:59', '2020-02-13 14:46:59'),
(2, 0, 'Ms. Taryn Corkery', 'Athena Schmidt', 32, 'BE3tzzEjdhwuAh1T7MoP', 'Q8tFBDmVxNem9Kb', '2SXwJUU0sHbDHu1', 26420, 1, 1, 'OcnGKqqNu1', '2020-02-13 14:46:59', '2020-02-13 14:46:59'),
(3, 0, 'AMANfpo', 'SHRIVAS', 23, 'PG  boys hostel, MNNIT Allahabad', 'Uttar Pradesh', 'Allahabad', 211004, 0, 0, 'oBLIjmLKLl', '2020-02-13 14:46:59', '2020-02-14 20:34:19'),
(4, 0, 'Elenor Hintz', 'Willie Ernser', 21, 'zuMwc4fXD1IjMZwFv4Al', 'IKr2yiQcKBafXky', 'cFEAKF8e16Qg99i', 29041, 4, 0, 'Y7gcSx2wjN', '2020-02-13 14:46:59', '2020-02-13 14:46:59'),
(5, 0, 'Cortney West', 'George Stiedemann', 27, '0EVXXYp9DcENtpQ15v1X', 'ztXtMvliT4Mu1Q9', 'nCKfqXYU4VkkAki', 22119, 2, 0, '1uwxmqXbng', '2020-02-13 14:46:59', '2020-02-13 14:46:59'),
(6, 0, 'Miss Lera Koelpin', 'Mr. Orval Fisher', 40, '38mcyuw39q4BQVlmMbcZ', '6yG5roMpeDuKaGh', 'ZQp0Hwmf7VNrswk', 26106, 5, 0, 'E9W44cQoQZ', '2020-02-13 14:46:59', '2020-02-13 14:46:59'),
(7, 0, 'Asa Schmidt', 'Prof. Emilio Gerhold DVM', 74, 'k8ntCSo0I6Moxj3MU0lc', 'tf4UlUaDlIQzCIF', '4GTAnkoKfG2KjRQ', 26147, 1, 1, 'mjQlpkPP86', '2020-02-13 14:46:59', '2020-02-13 14:46:59'),
(8, 0, 'Rahul Mueller III', 'Ms. Ashlynn Cronin', 39, 'izjjAXyRYZKvYoUmF19l', 'WPdhaXBoqKrEeDu', 'UnkU8J3vK4RE0Ul', 23894, 3, 0, 'G5A7GJWMuk', '2020-02-13 14:46:59', '2020-02-13 14:46:59'),
(9, 0, 'Mrs. Leora Hessel III', 'Maegan Kuphal', 60, 'epgrkKhfRNTGZAp2r0fo', 'OKZAYmRpdkYyImL', 'qg6dY9ulpcITK5B', 23566, 0, 1, 'lCAi6yHffx', '2020-02-13 14:46:59', '2020-02-13 14:46:59'),
(10, 0, 'Ollie Nienow', 'Fredrick Hamill', 88, '1pQRPsTT1VkeHcBgEyxa', 'd2ZrtlU4ta9usRa', 'cK3MniPSkSVqwdk', 29157, 2, 0, 'y9aL0fU4ZJ', '2020-02-13 14:46:59', '2020-02-13 14:46:59'),
(11, 0, 'Prof. Sofia Effertz', 'Mr. Mike Weimann', 54, '8MXdosBbi24jWgPzGro5', 'ST8FuzfTPLymwta', 'AWiZs6ZCgiLcPwt', 23238, 2, 1, 'PmyHIP18M9', '2020-02-13 14:46:59', '2020-02-13 14:46:59'),
(12, 0, 'Kali Bogisich', 'Kellie Nader', 24, '9c8DAamBA2svP8xJ7GlX', 'IMsBmcK7HPDsShc', 'DWOS3rQ4zHrAbyV', 20630, 2, 0, 'WchtABK6jf', '2020-02-13 14:46:59', '2020-02-13 14:46:59'),
(13, 0, 'Jana Keebler', 'Tabitha O\'Hara', 26, '7rTj4sCGd1FAOfx8BFPF', 'cILiv3HeNu5LGLC', 'DVUwOX6hoSoe68i', 21260, 1, 0, 'AOcqhC62Fp', '2020-02-13 14:46:59', '2020-02-13 14:46:59'),
(14, 0, 'Dolly Schuppe', 'Dr. Lonny Donnelly', 69, 'ZW3fxv6Eg9mlJOdunXLa', 'hyiWZzHR58itksS', 'OOolS86eX9rnc9u', 24947, 2, 0, 'SnrKGalGil', '2020-02-13 14:46:59', '2020-02-13 14:46:59'),
(15, 0, 'Mr. Rolando Bergnaum DDS', 'Haskell Emard', 73, 'SgyF4wvNAZBxl0ecafCC', 'pNzNxHKuz486Dj3', 'CWBhMK1g7OS43aA', 22458, 5, 1, 'VFJJJyCgpc', '2020-02-13 14:46:59', '2020-02-13 14:46:59'),
(16, 0, 'Dr. Keira Goodwin III', 'Manuel Jacobi', 23, 'TnpsZq6nimUTr4ljXXh3', 'kNtvVrGIXnsHVNO', 'CgG3bMTchWyJ1zM', 22665, 1, 1, 'Rft8P3TRgS', '2020-02-13 14:46:59', '2020-02-13 14:46:59'),
(17, 0, 'Mr. Osvaldo Oberbrunner V', 'Ms. Samantha Fahey DDS', 20, 'dS7XUafiowLxk5AYnXQU', 'JKbByIXnoFTYJiP', 'q8sK1EeeCsp8HzU', 27929, 2, 0, '26w3S2eljN', '2020-02-13 14:46:59', '2020-02-13 14:46:59'),
(18, 0, 'Miss Ashlynn Gusikowski', 'Cortney Kuphal', 62, '07J0ycrdou90nVhoI1Y0', '3sZ9NBv6619Em0n', 'OEGRWyzL17l6jxd', 29870, 0, 1, 'KzyAb99Uxf', '2020-02-13 14:46:59', '2020-02-13 14:46:59'),
(19, 0, 'Pearlie Pfannerstill', 'Mr. Rasheed Collier', 24, 'qqPEVVWsObXD6LXVIwVQ', 'Ekz0fRMjYCgoV00', 'fI62SV4QUh95Im0', 20126, 5, 1, 'wvOsdUQmSA', '2020-02-13 14:46:59', '2020-02-13 14:46:59'),
(20, 0, 'Daija Schuster', 'Kristofer Okuneva', 84, 'tZhWI0nSbK9BebG06ymm', 'rGBxn7DLb3Dq9dm', 'EijpEBS07hcGAnv', 24321, 3, 1, 'IQQynvMO2L', '2020-02-13 14:46:59', '2020-02-13 14:46:59'),
(39, 24, 'AMAN', 'SHRIVAS', 22, 'SVBH boys hostel, MNNIT Allahabad', 'Uttar Pradesh', 'prayagraj', 211004, 0, 0, 'flower', '2020-02-13 16:37:40', '2020-02-13 16:37:40'),
(40, 24, 'AMAN', 'SHRIVAS', 22, 'SVBH boys hostel, MNNIT Allahabad', 'Uttar Pradesh', 'prayagraj', 211004, 0, 0, 'flower', '2020-02-13 16:40:19', '2020-02-13 16:40:19'),
(41, 24, 'AMAN', 'SHRIVAS', 22, 'SVBH boys hostel, MNNIT Allahabad', 'Uttar Pradesh', 'prayagraj', 211004, 0, 0, 'flower', '2020-02-13 17:13:23', '2020-02-13 17:13:23'),
(47, 47, 'AMAN', 'SHRIVAS', 22, 'SVBH boys hostel, MNNIT Allahabad', 'Uttar Pradesh', 'Prayagraj', 211004, 0, 0, 'flower', '2020-02-13 18:55:20', '2020-02-13 18:55:20'),
(50, 50, 'AMANfarmer', 'SHRIVAS', 22, 'SVBH boys hostel, MNNIT Allahabad', 'Uttar Pradesh', 'Allahabad', 211004, 0, 0, 'Potato', '2020-02-14 18:41:21', '2020-02-14 18:41:21');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2020-02-11 12:27:32', '2020-02-11 12:27:32');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2020-02-11 12:27:32', '2020-02-11 12:27:32', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2020-02-11 12:27:32', '2020-02-11 12:27:32', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2020-02-11 12:27:32', '2020-02-11 12:27:32', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2020-02-11 12:27:32', '2020-02-11 12:27:32', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2020-02-11 12:27:32', '2020-02-11 12:27:32', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2020-02-11 12:27:32', '2020-02-14 14:00:58', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2020-02-11 12:27:32', '2020-02-14 14:00:58', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2020-02-11 12:27:32', '2020-02-14 14:00:58', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2020-02-11 12:27:32', '2020-02-14 14:00:58', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 10, '2020-02-11 12:27:32', '2020-02-14 14:00:58', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 8, '2020-02-11 12:27:34', '2020-02-11 12:27:34', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 6, '2020-02-11 12:27:34', '2020-02-11 12:27:34', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 7, '2020-02-11 12:27:35', '2020-02-11 12:27:35', 'voyager.pages.index', NULL),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2020-02-11 12:27:35', '2020-02-14 14:00:58', 'voyager.hooks', NULL),
(15, 1, 'Vegetables', '', '_self', 'voyager-tree', '#000000', NULL, 4, '2020-02-14 14:00:19', '2020-02-14 14:01:55', 'voyager.vegetables.index', 'null');

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
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2016_01_01_000000_create_pages_table', 2),
(25, '2016_01_01_000000_create_posts_table', 2),
(26, '2016_02_15_204651_create_categories_table', 2),
(27, '2017_04_11_000000_alter_post_nullable_fields_table', 2),
(28, '2020_02_13_195230_create_farmers_table', 3),
(29, '2020_02_13_211725_create_pocs_table', 4),
(30, '2020_02_13_223048_create_pocgroups_table', 5),
(31, '2020_02_14_203445_create_stocks_table', 6),
(32, '2020_02_14_231503_create_employees_table', 7),
(33, '2020_02_15_082853_create_retailers_table', 8),
(34, '2020_02_15_094304_create_orders_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `poc_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` int(11) NOT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `paidamount` int(11) NOT NULL,
  `vegetable` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `fname`, `lname`, `poc_id`, `address`, `state`, `city`, `pincode`, `contact`, `rating`, `quantity`, `status`, `price`, `paidamount`, `vegetable`, `created_at`, `updated_at`) VALUES
(1, '51', 'Big', 'Basket', '7', 'vada paav,mumbai', 'Maharashtra', 'Mumbai', 211006, '1234567899', 0, 10, 3, 10000, 100000, 'Orange', '2020-02-15 08:31:35', '2020-02-15 08:31:35'),
(2, '51', 'Big', 'Basket', '7', 'vada paav,mumbai', 'Maharashtra', 'Mumbai', 211006, '1234567899', 0, 10, 3, 10000, 100000, 'Orange', '2020-02-15 07:32:07', '2020-02-15 07:32:07');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2020-02-11 12:27:35', '2020-02-11 12:27:35');

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
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2020-02-11 12:27:32', '2020-02-11 12:27:32'),
(2, 'browse_bread', NULL, '2020-02-11 12:27:32', '2020-02-11 12:27:32'),
(3, 'browse_database', NULL, '2020-02-11 12:27:32', '2020-02-11 12:27:32'),
(4, 'browse_media', NULL, '2020-02-11 12:27:32', '2020-02-11 12:27:32'),
(5, 'browse_compass', NULL, '2020-02-11 12:27:32', '2020-02-11 12:27:32'),
(6, 'browse_menus', 'menus', '2020-02-11 12:27:32', '2020-02-11 12:27:32'),
(7, 'read_menus', 'menus', '2020-02-11 12:27:32', '2020-02-11 12:27:32'),
(8, 'edit_menus', 'menus', '2020-02-11 12:27:32', '2020-02-11 12:27:32'),
(9, 'add_menus', 'menus', '2020-02-11 12:27:32', '2020-02-11 12:27:32'),
(10, 'delete_menus', 'menus', '2020-02-11 12:27:32', '2020-02-11 12:27:32'),
(11, 'browse_roles', 'roles', '2020-02-11 12:27:32', '2020-02-11 12:27:32'),
(12, 'read_roles', 'roles', '2020-02-11 12:27:32', '2020-02-11 12:27:32'),
(13, 'edit_roles', 'roles', '2020-02-11 12:27:32', '2020-02-11 12:27:32'),
(14, 'add_roles', 'roles', '2020-02-11 12:27:32', '2020-02-11 12:27:32'),
(15, 'delete_roles', 'roles', '2020-02-11 12:27:32', '2020-02-11 12:27:32'),
(16, 'browse_users', 'users', '2020-02-11 12:27:32', '2020-02-11 12:27:32'),
(17, 'read_users', 'users', '2020-02-11 12:27:32', '2020-02-11 12:27:32'),
(18, 'edit_users', 'users', '2020-02-11 12:27:32', '2020-02-11 12:27:32'),
(19, 'add_users', 'users', '2020-02-11 12:27:32', '2020-02-11 12:27:32'),
(20, 'delete_users', 'users', '2020-02-11 12:27:32', '2020-02-11 12:27:32'),
(21, 'browse_settings', 'settings', '2020-02-11 12:27:32', '2020-02-11 12:27:32'),
(22, 'read_settings', 'settings', '2020-02-11 12:27:32', '2020-02-11 12:27:32'),
(23, 'edit_settings', 'settings', '2020-02-11 12:27:32', '2020-02-11 12:27:32'),
(24, 'add_settings', 'settings', '2020-02-11 12:27:32', '2020-02-11 12:27:32'),
(25, 'delete_settings', 'settings', '2020-02-11 12:27:32', '2020-02-11 12:27:32'),
(26, 'browse_categories', 'categories', '2020-02-11 12:27:34', '2020-02-11 12:27:34'),
(27, 'read_categories', 'categories', '2020-02-11 12:27:34', '2020-02-11 12:27:34'),
(28, 'edit_categories', 'categories', '2020-02-11 12:27:34', '2020-02-11 12:27:34'),
(29, 'add_categories', 'categories', '2020-02-11 12:27:34', '2020-02-11 12:27:34'),
(30, 'delete_categories', 'categories', '2020-02-11 12:27:34', '2020-02-11 12:27:34'),
(31, 'browse_posts', 'posts', '2020-02-11 12:27:34', '2020-02-11 12:27:34'),
(32, 'read_posts', 'posts', '2020-02-11 12:27:34', '2020-02-11 12:27:34'),
(33, 'edit_posts', 'posts', '2020-02-11 12:27:34', '2020-02-11 12:27:34'),
(34, 'add_posts', 'posts', '2020-02-11 12:27:34', '2020-02-11 12:27:34'),
(35, 'delete_posts', 'posts', '2020-02-11 12:27:34', '2020-02-11 12:27:34'),
(36, 'browse_pages', 'pages', '2020-02-11 12:27:35', '2020-02-11 12:27:35'),
(37, 'read_pages', 'pages', '2020-02-11 12:27:35', '2020-02-11 12:27:35'),
(38, 'edit_pages', 'pages', '2020-02-11 12:27:35', '2020-02-11 12:27:35'),
(39, 'add_pages', 'pages', '2020-02-11 12:27:35', '2020-02-11 12:27:35'),
(40, 'delete_pages', 'pages', '2020-02-11 12:27:35', '2020-02-11 12:27:35'),
(41, 'browse_hooks', NULL, '2020-02-11 12:27:35', '2020-02-11 12:27:35'),
(42, 'browse_vegetables', 'vegetables', '2020-02-14 14:00:19', '2020-02-14 14:00:19'),
(43, 'read_vegetables', 'vegetables', '2020-02-14 14:00:19', '2020-02-14 14:00:19'),
(44, 'edit_vegetables', 'vegetables', '2020-02-14 14:00:19', '2020-02-14 14:00:19'),
(45, 'add_vegetables', 'vegetables', '2020-02-14 14:00:19', '2020-02-14 14:00:19'),
(46, 'delete_vegetables', 'vegetables', '2020-02-14 14:00:19', '2020-02-14 14:00:19');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pocgroups`
--

CREATE TABLE `pocgroups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pocgroups`
--

INSERT INTO `pocgroups` (`id`, `user_id`, `city`, `created_at`, `updated_at`) VALUES
(7, '50', 'Allahabad', '2020-02-14 18:41:24', '2020-02-14 18:41:24');

-- --------------------------------------------------------

--
-- Table structure for table `pocs`
--

CREATE TABLE `pocs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pocs`
--

INSERT INTO `pocs` (`id`, `user_id`, `city`, `state`, `rating`, `created_at`, `updated_at`) VALUES
(7, 49, 'Allahabad', 'Uttar Pradesh', 2, '2020-02-14 18:35:54', '2020-02-14 18:35:54');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-02-11 12:27:34', '2020-02-11 12:27:34'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-02-11 12:27:34', '2020-02-11 12:27:34'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-02-11 12:27:35', '2020-02-11 12:27:35'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-02-11 12:27:35', '2020-02-11 12:27:35');

-- --------------------------------------------------------

--
-- Table structure for table `retailers`
--

CREATE TABLE `retailers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `fname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` int(11) NOT NULL,
  `pincode` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `retailers`
--

INSERT INTO `retailers` (`id`, `user_id`, `fname`, `lname`, `address`, `state`, `city`, `contact`, `pincode`, `created_at`, `updated_at`) VALUES
(1, 51, 'Big', 'Basket', 'vada paav,mumbai', 'Maharashtra', 'Mumbai', 1234567899, 211006, '2020-02-15 03:18:56', '2020-02-15 04:12:02'),
(2, 52, 'Akansha', 'Shukla', 'room 19 IH-B girls hostel', 'Uttar Pradesh', 'Allahabad', 895858758, 211004, '2020-02-15 12:48:31', '2020-02-15 12:48:31');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2020-02-11 12:27:32', '2020-02-11 12:27:32'),
(2, 'user', 'Normal User', '2020-02-11 12:27:32', '2020-02-11 12:27:32');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '215254843317-8ksr53l30sh6j8qruleksub4bi933hu5.apps.googleusercontent.com', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

CREATE TABLE `stocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `fname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int(11) NOT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `solded` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `remained` int(11) NOT NULL,
  `poc_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `vegetable` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stocks`
--

INSERT INTO `stocks` (`id`, `user_id`, `fname`, `lname`, `age`, `address`, `state`, `city`, `pincode`, `rating`, `solded`, `quantity`, `remained`, `poc_id`, `status`, `price`, `vegetable`, `created_at`, `updated_at`) VALUES
(1, 47, 'AMAN', 'SHRIVAS', 22, 'SVBH boys hostel, MNNIT Allahabad', 'Uttar Pradesh', 'Prayagraj', 211004, 0, 0, 15, 0, 0, 0, 300000, 'Potato', '2020-02-14 15:58:51', '2020-02-14 15:58:51'),
(2, 47, 'AMAN', 'SHRIVAS', 22, 'SVBH boys hostel, MNNIT Allahabad', 'Uttar Pradesh', 'Prayagraj', 211004, 0, 0, 15, 0, 0, 0, 300000, 'Potato', '2020-02-14 16:19:19', '2020-02-14 16:19:19'),
(3, 47, 'AMAN', 'SHRIVAS', 22, 'SVBH boys hostel, MNNIT Allahabad', 'Uttar Pradesh', 'Prayagraj', 211004, 0, 0, 15, 0, 0, 0, 300000, 'Potato', '2020-02-14 16:20:17', '2020-02-14 16:20:17'),
(4, 47, 'AMAN', 'SHRIVAS', 22, 'SVBH boys hostel, MNNIT Allahabad', 'Uttar Pradesh', 'Prayagraj', 211004, 0, 0, 15, 0, 0, 0, 300000, 'Potato', '2020-02-14 16:21:09', '2020-02-14 16:21:09'),
(5, 50, 'AMANfarmer', 'SHRIVAS', 22, 'SVBH boys hostel, MNNIT Allahabad', 'Uttar Pradesh', 'Allahabad', 211004, 0, 0, 10, 0, 49, 0, 200000, 'Potato', '2020-02-14 21:29:53', '2020-02-15 00:55:44');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2020-02-11 12:27:35', '2020-02-11 12:27:35'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2020-02-11 12:27:35', '2020-02-11 12:27:35'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2020-02-11 12:27:35', '2020-02-11 12:27:35'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2020-02-11 12:27:35', '2020-02-11 12:27:35'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2020-02-11 12:27:35', '2020-02-11 12:27:35'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2020-02-11 12:27:35', '2020-02-11 12:27:35'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2020-02-11 12:27:35', '2020-02-11 12:27:35'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2020-02-11 12:27:35', '2020-02-11 12:27:35'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2020-02-11 12:27:35', '2020-02-11 12:27:35'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2020-02-11 12:27:35', '2020-02-11 12:27:35'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2020-02-11 12:27:35', '2020-02-11 12:27:35'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2020-02-11 12:27:35', '2020-02-11 12:27:35'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2020-02-11 12:27:35', '2020-02-11 12:27:35'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2020-02-11 12:27:35', '2020-02-11 12:27:35'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2020-02-11 12:27:35', '2020-02-11 12:27:35'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2020-02-11 12:27:35', '2020-02-11 12:27:35'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2020-02-11 12:27:35', '2020-02-11 12:27:35'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2020-02-11 12:27:35', '2020-02-11 12:27:35'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2020-02-11 12:27:35', '2020-02-11 12:27:35'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2020-02-11 12:27:35', '2020-02-11 12:27:35'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2020-02-11 12:27:35', '2020-02-11 12:27:35'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2020-02-11 12:27:35', '2020-02-11 12:27:35'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2020-02-11 12:27:35', '2020-02-11 12:27:35'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2020-02-11 12:27:35', '2020-02-11 12:27:35'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2020-02-11 12:27:35', '2020-02-11 12:27:35'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2020-02-11 12:27:35', '2020-02-11 12:27:35'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2020-02-11 12:27:35', '2020-02-11 12:27:35'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2020-02-11 12:27:35', '2020-02-11 12:27:35'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2020-02-11 12:27:35', '2020-02-11 12:27:35'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2020-02-11 12:27:35', '2020-02-11 12:27:35');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int(10) NOT NULL,
  `profile` int(11) NOT NULL DEFAULT 0,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `type`, `profile`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 0, 0, 'users/default.png', NULL, '$2y$10$1WRzHQXUmUHaCj6hO5fAvu/x8CrS6jsvJSZOQBblmtEai47NxmRQa', 'CTe5gQ9kCb3b94Okl81ZOM51yKo1eqFQ6zJex7LtbMDtepVieIMV7SgCpn3V', NULL, '2020-02-11 12:27:34', '2020-02-11 12:27:34'),
(2, 2, 'AMAN SHRIVAS', 'amankumarshrivas@gmail.com', 0, 0, 'users/default.png', NULL, '$2y$10$XLVIqe19OUnPOdfBw1KRmOT1fl4daYg.e4EKLMXXMvrWe5kQpO1TC', 'PuNMQBrhNDFx1doyn5njuZLuKcdQGBqZaWWX3iYGQWzDmOXNDLUR8g0BCxSK', NULL, '2020-02-11 14:26:40', '2020-02-11 14:31:48'),
(4, 2, 'Mr. Cyril Hermiston II', 'meda65@example.com', 1, 0, 'users/default.png', '2020-02-13 14:12:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'm2LuX1wm0Q', NULL, '2020-02-13 14:12:16', '2020-02-13 14:12:16'),
(5, 2, 'Mr. Barton Harber', 'eichmann.frederick@example.com', 2, 0, 'users/default.png', '2020-02-13 14:12:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2lMgpiWrvt', NULL, '2020-02-13 14:12:16', '2020-02-13 14:12:16'),
(6, 2, 'Dr. Peter Konopelski Jr.', 'zschinner@example.org', 2, 0, 'users/default.png', '2020-02-13 14:12:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PEkfjBeijL', NULL, '2020-02-13 14:12:16', '2020-02-13 14:12:16'),
(7, 2, 'Bonnie Thompson I', 'molly09@example.com', 3, 0, 'users/default.png', '2020-02-13 14:12:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NZVOdE3rjH', NULL, '2020-02-13 14:12:16', '2020-02-13 14:12:16'),
(8, 2, 'Dr. Austen Reilly II', 'kilback.foster@example.org', 3, 0, 'users/default.png', '2020-02-13 14:12:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'AI0DTquCgS', NULL, '2020-02-13 14:12:16', '2020-02-13 14:12:16'),
(9, 2, 'Raoul Kub', 'ashton64@example.com', 1, 0, 'users/default.png', '2020-02-13 14:12:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6RKgozzTIq', NULL, '2020-02-13 14:12:16', '2020-02-13 14:12:16'),
(10, 2, 'Dr. Marcelo Goodwin', 'chanelle08@example.org', 3, 0, 'users/default.png', '2020-02-13 14:12:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OjM3rkBCeO', NULL, '2020-02-13 14:12:16', '2020-02-13 14:12:16'),
(11, 2, 'Prof. Georgianna Leannon II', 'thomas28@example.org', 3, 0, 'users/default.png', '2020-02-13 14:12:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Nri1y4NZI9', NULL, '2020-02-13 14:12:16', '2020-02-13 14:12:16'),
(12, 2, 'Cassandre Romaguera', 'gladyce.predovic@example.net', 3, 0, 'users/default.png', '2020-02-13 14:12:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TWcBCaxQPT', NULL, '2020-02-13 14:12:16', '2020-02-13 14:12:16'),
(13, 2, 'Alanis Simonis', 'madie94@example.net', 3, 0, 'users/default.png', '2020-02-13 14:12:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4LNuC5dFFg', NULL, '2020-02-13 14:12:16', '2020-02-13 14:12:16'),
(14, 2, 'Dr. Kevin Parisian', 'imelda97@example.org', 3, 0, 'users/default.png', '2020-02-13 14:12:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OMicBZ15sl', NULL, '2020-02-13 14:12:16', '2020-02-13 14:12:16'),
(15, 2, 'Tom Gusikowski', 'jspinka@example.net', 2, 0, 'users/default.png', '2020-02-13 14:12:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'x62bYNJPum', NULL, '2020-02-13 14:12:16', '2020-02-13 14:12:16'),
(16, 2, 'Jaquan Haag', 'karine48@example.net', 1, 0, 'users/default.png', '2020-02-13 14:12:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jmkBXPvPmu', NULL, '2020-02-13 14:12:16', '2020-02-13 14:12:16'),
(17, 2, 'Clifton Heaney IV', 'bernie.block@example.com', 2, 0, 'users/default.png', '2020-02-13 14:12:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LZgYubb0rX', NULL, '2020-02-13 14:12:16', '2020-02-13 14:12:16'),
(18, 2, 'Alexanne Klein', 'yboyle@example.org', 2, 0, 'users/default.png', '2020-02-13 14:12:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5bVTlYafl6', NULL, '2020-02-13 14:12:16', '2020-02-13 14:12:16'),
(19, 2, 'Nyah McGlynn', 'romaguera.veda@example.org', 2, 0, 'users/default.png', '2020-02-13 14:12:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wOyHdgQ01M', NULL, '2020-02-13 14:12:16', '2020-02-13 14:12:16'),
(20, 2, 'Mathilde Hirthe', 'vonrueden.webster@example.net', 2, 0, 'users/default.png', '2020-02-13 14:12:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FKwYHqt5RK', NULL, '2020-02-13 14:12:16', '2020-02-13 14:12:16'),
(21, 2, 'Ms. Shannon Cole Sr.', 'heber22@example.org', 3, 0, 'users/default.png', '2020-02-13 14:12:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5DuyjM2Irm', NULL, '2020-02-13 14:12:16', '2020-02-13 14:12:16'),
(22, 2, 'Stacy Bogisich', 'ellen09@example.org', 3, 0, 'users/default.png', '2020-02-13 14:12:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9WtD9kkbiy', NULL, '2020-02-13 14:12:16', '2020-02-13 14:12:16'),
(23, 2, 'Miss Amber Kuphal V', 'jarret.moen@example.com', 2, 0, 'users/default.png', '2020-02-13 14:12:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9nZhNaTM35', NULL, '2020-02-13 14:12:16', '2020-02-13 14:12:16'),
(25, 2, 'Molly Davis', 'jaskolski.zena@example.org', 1, 0, 'users/default.png', '2020-02-13 14:45:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Z2ytDyuTOq', NULL, '2020-02-13 14:45:40', '2020-02-13 14:45:40'),
(26, 2, 'Ernestine Franecki', 'streich.garfield@example.net', 3, 0, 'users/default.png', '2020-02-13 14:45:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'VanBkDGfsi', NULL, '2020-02-13 14:45:40', '2020-02-13 14:45:40'),
(27, 2, 'Dr. Edyth Hegmann PhD', 'konopelski.holden@example.com', 1, 0, 'users/default.png', '2020-02-13 14:45:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'tosXo8j0vW', NULL, '2020-02-13 14:45:40', '2020-02-13 14:45:40'),
(28, 2, 'Prof. Paul Monahan', 'kayli53@example.org', 2, 0, 'users/default.png', '2020-02-13 14:45:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'a4FVEIbE8q', NULL, '2020-02-13 14:45:40', '2020-02-13 14:45:40'),
(29, 2, 'Prof. Rex Koss', 'mozell65@example.org', 3, 0, 'users/default.png', '2020-02-13 14:45:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'DjpExy9fpS', NULL, '2020-02-13 14:45:40', '2020-02-13 14:45:40'),
(30, 2, 'Mathilde Kuhic', 'joshuah.konopelski@example.com', 2, 0, 'users/default.png', '2020-02-13 14:45:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'gAF1F2rWAP', NULL, '2020-02-13 14:45:40', '2020-02-13 14:45:40'),
(31, 2, 'Dallas Dietrich', 'cwill@example.com', 1, 0, 'users/default.png', '2020-02-13 14:45:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xM4ZetxY17', NULL, '2020-02-13 14:45:40', '2020-02-13 14:45:40'),
(32, 2, 'Margret Marvin', 'kmitchell@example.com', 2, 0, 'users/default.png', '2020-02-13 14:45:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YUVqricdjF', NULL, '2020-02-13 14:45:40', '2020-02-13 14:45:40'),
(33, 2, 'Prof. Freeda Crona V', 'ilindgren@example.com', 1, 0, 'users/default.png', '2020-02-13 14:45:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WroJuQHEMj', NULL, '2020-02-13 14:45:40', '2020-02-13 14:45:40'),
(34, 2, 'Prof. Casey Schoen II', 'nienow.dan@example.net', 2, 0, 'users/default.png', '2020-02-13 14:45:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'olrc5WYDsM', NULL, '2020-02-13 14:45:40', '2020-02-13 14:45:40'),
(35, 2, 'Mr. Baron Sawayn DDS', 'abigail.heller@example.net', 1, 0, 'users/default.png', '2020-02-13 14:45:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'E12ehyw4M6', NULL, '2020-02-13 14:45:40', '2020-02-13 14:45:40'),
(36, 2, 'Meagan Becker', 'sawayn.martin@example.com', 3, 0, 'users/default.png', '2020-02-13 14:45:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LkB6uiFNlP', NULL, '2020-02-13 14:45:40', '2020-02-13 14:45:40'),
(37, 2, 'Stefanie Mann', 'braun.freddy@example.org', 1, 0, 'users/default.png', '2020-02-13 14:45:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SHJ9PLkvUo', NULL, '2020-02-13 14:45:40', '2020-02-13 14:45:40'),
(39, 2, 'Sunny Sauer Sr.', 'hcollins@example.org', 1, 0, 'users/default.png', '2020-02-13 14:45:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '57Xv9rQKU8', NULL, '2020-02-13 14:45:40', '2020-02-13 14:45:40'),
(40, 2, 'Prof. Oleta Cremin IV', 'jamie.hauck@example.org', 3, 0, 'users/default.png', '2020-02-13 14:45:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 's6dY01QbU0', NULL, '2020-02-13 14:45:40', '2020-02-13 14:45:40'),
(41, 2, 'Candida Hand', 'austen64@example.com', 2, 0, 'users/default.png', '2020-02-13 14:45:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'F4A4zk62nO', NULL, '2020-02-13 14:45:40', '2020-02-13 14:45:40'),
(42, 2, 'Celine Spencer Sr.', 'lynch.miracle@example.org', 1, 0, 'users/default.png', '2020-02-13 14:45:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fYbGVJ4EiE', NULL, '2020-02-13 14:45:40', '2020-02-13 14:45:40'),
(44, 2, 'Carolanne Hagenes', 'alivia09@example.net', 1, 0, 'users/default.png', '2020-02-13 14:45:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sgdXIRevoY', NULL, '2020-02-13 14:45:40', '2020-02-13 14:45:40'),
(47, 2, 'AMAN SHRIVAS', 'aman@gmail.com', 1, 1, 'users/default.png', NULL, '$2y$10$pYbAPpda0Klol3kIe5sao.oV.ove/oT1dFrkf0u/3eg/Rrbl7dZu.', NULL, NULL, '2020-02-13 18:51:25', '2020-02-13 18:51:47'),
(49, 2, 'amanpoc', 'amanpoc@gmail.com', 3, 1, 'users/default.png', NULL, '$2y$10$9HKAV4GjV31pVG.JSncnCOChx/x50EflKjkSjWyLcfQDN3nrfj0J6', NULL, NULL, '2020-02-14 17:40:56', '2020-02-14 18:31:56'),
(50, 2, 'amanfarmer', 'amanfarmer@gmail.com', 1, 1, 'users/default.png', NULL, '$2y$10$2ial1sQXQTBPok.LfD6zX.o1UEDHptiLVOun3TqqkkE5Yo4oPllOe', NULL, NULL, '2020-02-14 18:36:44', '2020-02-14 18:41:14'),
(51, 2, 'amanr', 'amanr@gmail.com', 2, 1, 'users/default.png', NULL, '$2y$10$G/BmCx29wwfcxsnBEZuUDuA8THMNmG/g2xoVtwKxOUToOmucYtJ/m', NULL, NULL, '2020-02-15 02:49:21', '2020-02-15 03:18:03'),
(52, 2, 'akhilesh', 'akhil@gmail.com', 2, 1, 'users/default.png', NULL, '$2y$10$CipizuzoHXSp7DupfTSzrOnQTOMVzLjiXpAsq2mG.ty0MMaJkqWjC', NULL, NULL, '2020-02-15 12:47:54', '2020-02-15 12:48:31');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vegetables`
--

CREATE TABLE `vegetables` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vegetables`
--

INSERT INTO `vegetables` (`id`, `name`, `price`, `created_at`, `updated_at`, `state`, `district`) VALUES
(1, 'Potato', '20000', '2020-02-14 14:03:29', '2020-02-14 14:03:29', 'Uttar Pradesh', 'Prayagraj'),
(2, 'Tomato', '10000', '2020-02-14 14:03:51', '2020-02-14 14:03:51', 'Madhya Pradesh', 'Bhopal'),
(3, 'Apple', '50000', '2020-02-14 14:04:06', '2020-02-14 14:04:06', 'Kashmir', 'Kotranka'),
(4, 'Orange', '30000', '2020-02-14 14:04:22', '2020-02-14 14:04:22', 'Maharashtra', 'Nagpur'),
(5, 'Onion', '60000', '2020-02-14 14:04:37', '2020-02-14 14:04:37', 'Uttar Pradesh', 'Jhansi'),
(6, 'Orange', '10000', '2020-02-14 22:09:14', '2020-02-14 22:09:14', 'Uttar Pradesh', 'Allahabad');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `farmers`
--
ALTER TABLE `farmers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `pocgroups`
--
ALTER TABLE `pocgroups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pocs`
--
ALTER TABLE `pocs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `retailers`
--
ALTER TABLE `retailers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- Indexes for table `vegetables`
--
ALTER TABLE `vegetables`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `farmers`
--
ALTER TABLE `farmers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `pocgroups`
--
ALTER TABLE `pocgroups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pocs`
--
ALTER TABLE `pocs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `retailers`
--
ALTER TABLE `retailers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `stocks`
--
ALTER TABLE `stocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `vegetables`
--
ALTER TABLE `vegetables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
