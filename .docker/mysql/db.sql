-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 11, 2018 at 11:03 PM
-- Server version: 5.6.40-84.0-log
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `homestead`
--
CREATE DATABASE IF NOT EXISTS `homestead` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `homestead`;

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Truncate table before insert `wp_commentmeta`
--

TRUNCATE TABLE `wp_commentmeta`;
-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10)),
  KEY `woo_idx_comment_type` (`comment_type`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Truncate table before insert `wp_comments`
--

TRUNCATE TABLE `wp_comments`;
-- --------------------------------------------------------

--
-- Table structure for table `wp_contacts`
--

DROP TABLE IF EXISTS `wp_contacts`;
CREATE TABLE IF NOT EXISTS `wp_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

--
-- Truncate table before insert `wp_contacts`
--

TRUNCATE TABLE `wp_contacts`;
--
-- Dumping data for table `wp_contacts`
--

INSERT INTO `wp_contacts` (`id`, `email`, `created_at`) VALUES
(9, 'diego.feliud@gmail.com', '2018-10-23 00:13:38'),
(10, 'diego.feliud@gmail.com', '2018-10-23 00:13:38'),
(11, 'ocodesigninfo@gmail.com', '2018-10-23 08:42:16');

-- --------------------------------------------------------

--
-- Table structure for table `wp_failed_jobs`
--

DROP TABLE IF EXISTS `wp_failed_jobs`;
CREATE TABLE IF NOT EXISTS `wp_failed_jobs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `job` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `failed_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Truncate table before insert `wp_failed_jobs`
--

TRUNCATE TABLE `wp_failed_jobs`;
-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Truncate table before insert `wp_links`
--

TRUNCATE TABLE `wp_links`;
-- --------------------------------------------------------

--
-- Table structure for table `wp_mailchimp_carts`
--

DROP TABLE IF EXISTS `wp_mailchimp_carts`;
CREATE TABLE IF NOT EXISTS `wp_mailchimp_carts` (
  `id` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `cart` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Truncate table before insert `wp_mailchimp_carts`
--

TRUNCATE TABLE `wp_mailchimp_carts`;
-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=2712 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Truncate table before insert `wp_options`
--

TRUNCATE TABLE `wp_options`;
--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(3, 'siteurl', 'http://localhost/', 'yes'),
(4, 'home', 'http://localhost/', 'yes'),
(5, 'blogname', 'Ocodesing', 'yes'),
(6, 'blogdescription', 'Diseño multifuncional', 'yes'),
(7, 'users_can_register', '0', 'yes'),
(8, 'admin_email', 'diego.feliud@gmail.com', 'yes'),
(9, 'start_of_week', '1', 'yes'),
(10, 'use_balanceTags', '0', 'yes'),
(11, 'use_smilies', '1', 'yes'),
(12, 'require_name_email', '1', 'yes'),
(13, 'comments_notify', '1', 'yes'),
(14, 'posts_per_rss', '10', 'yes'),
(15, 'rss_use_excerpt', '0', 'yes'),
(16, 'mailserver_url', 'mail.example.com', 'yes'),
(17, 'mailserver_login', 'login@example.com', 'yes'),
(18, 'mailserver_pass', 'password', 'yes'),
(19, 'mailserver_port', '110', 'yes'),
(20, 'default_category', '1', 'yes'),
(21, 'default_comment_status', 'open', 'yes'),
(22, 'default_ping_status', 'open', 'yes'),
(23, 'default_pingback_flag', '1', 'yes'),
(24, 'posts_per_page', '6', 'yes'),
(25, 'date_format', 'jS F Y', 'yes'),
(26, 'time_format', 'g:i a', 'yes'),
(27, 'links_updated_date_format', 'jS F Y g:i a', 'yes'),
(28, 'comment_moderation', '', 'yes'),
(29, 'moderation_notify', '1', 'yes'),
(30, 'permalink_structure', '/%category%/%postname%/', 'yes'),
(31, 'rewrite_rules', 'a:189:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:9:\"tienda/?$\";s:27:\"index.php?post_type=product\";s:39:\"tienda/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:34:\"tienda/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:26:\"tienda/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:25:\"tr_json_api/v1/([^/]*)/?$\";s:40:\"index.php?tr_json_controller=$matches[1]\";s:33:\"tr_json_api/v1/([^/]*)/([^/]*)/?$\";s:65:\"index.php?tr_json_controller=$matches[1]&tr_json_item=$matches[2]\";s:43:\"tr_matrix_api/v1/([^/]*)/([^/]*)/([^/]*)/?$\";s:93:\"index.php?tr_matrix_group=$matches[1]&tr_matrix_type=$matches[2]&tr_matrix_folder=$matches[3]\";s:44:\"tr_builder_api/v1/([^/]*)/([^/]*)/([^/]*)/?$\";s:96:\"index.php?tr_builder_group=$matches[1]&tr_builder_type=$matches[2]&tr_builder_folder=$matches[3]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:57:\"categoria-producto/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:52:\"categoria-producto/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:33:\"categoria-producto/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:45:\"categoria-producto/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:27:\"categoria-producto/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:58:\"etiqueta-producto/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:53:\"etiqueta-producto/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:34:\"etiqueta-producto/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:46:\"etiqueta-producto/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:28:\"etiqueta-producto/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:35:\"product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:36:\"product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:51:\"publishers/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?publisher=$matches[1]&feed=$matches[2]\";s:46:\"publishers/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?publisher=$matches[1]&feed=$matches[2]\";s:27:\"publishers/([^/]+)/embed/?$\";s:42:\"index.php?publisher=$matches[1]&embed=true\";s:39:\"publishers/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?publisher=$matches[1]&paged=$matches[2]\";s:21:\"publishers/([^/]+)/?$\";s:31:\"index.php?publisher=$matches[1]\";s:35:\"project/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"project/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"project/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"project/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"project/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"project/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"project/([^/]+)/embed/?$\";s:40:\"index.php?project=$matches[1]&embed=true\";s:28:\"project/([^/]+)/trackback/?$\";s:34:\"index.php?project=$matches[1]&tb=1\";s:36:\"project/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?project=$matches[1]&paged=$matches[2]\";s:43:\"project/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?project=$matches[1]&cpage=$matches[2]\";s:33:\"project/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?project=$matches[1]&wc-api=$matches[3]\";s:39:\"project/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"project/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"project/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?project=$matches[1]&page=$matches[2]\";s:24:\"project/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"project/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"project/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"project/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"project/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"project/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=36&cpage=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:31:\".+?/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\".+?/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\".+?/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\".+?/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\".+?/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\".+?/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"(.+?)/([^/]+)/embed/?$\";s:63:\"index.php?category_name=$matches[1]&name=$matches[2]&embed=true\";s:26:\"(.+?)/([^/]+)/trackback/?$\";s:57:\"index.php?category_name=$matches[1]&name=$matches[2]&tb=1\";s:46:\"(.+?)/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:41:\"(.+?)/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:34:\"(.+?)/([^/]+)/page/?([0-9]{1,})/?$\";s:70:\"index.php?category_name=$matches[1]&name=$matches[2]&paged=$matches[3]\";s:41:\"(.+?)/([^/]+)/comment-page-([0-9]{1,})/?$\";s:70:\"index.php?category_name=$matches[1]&name=$matches[2]&cpage=$matches[3]\";s:31:\"(.+?)/([^/]+)/wc-api(/(.*))?/?$\";s:71:\"index.php?category_name=$matches[1]&name=$matches[2]&wc-api=$matches[4]\";s:35:\".+?/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:46:\".+?/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:30:\"(.+?)/([^/]+)(?:/([0-9]+))?/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&page=$matches[3]\";s:20:\".+?/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:30:\".+?/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:50:\".+?/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\".+?/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\".+?/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:26:\".+?/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:38:\"(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:14:\"(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:26:\"(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:33:\"(.+?)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&cpage=$matches[2]\";s:23:\"(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:8:\"(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";}', 'yes'),
(32, 'hack_file', '0', 'yes'),
(33, 'blog_charset', 'UTF-8', 'yes'),
(34, 'moderation_keys', '', 'no'),
(35, 'active_plugins', 'a:3:{i:0;s:23:\"gutenberg/gutenberg.php\";i:1;s:69:\"woo-gutenberg-products-block/woocommerce-gutenberg-products-block.php\";i:2;s:27:\"woocommerce/woocommerce.php\";}', 'yes'),
(36, 'category_base', '', 'yes'),
(37, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(38, 'comment_max_links', '2', 'yes'),
(39, 'gmt_offset', '', 'yes'),
(40, 'default_email_category', '1', 'yes'),
(41, 'recently_edited', 'a:3:{i:0;s:64:\"/home/vagrant/code/typerocket/resources/themes/templates/404.php\";i:1;s:66:\"/home/vagrant/code/typerocket/resources/themes/templates/style.css\";i:2;s:0:\"\";}', 'no'),
(42, 'template', 'templates', 'yes'),
(43, 'stylesheet', 'templates', 'yes'),
(44, 'comment_whitelist', '1', 'yes'),
(45, 'blacklist_keys', '', 'no'),
(46, 'comment_registration', '', 'yes'),
(47, 'html_type', 'text/html', 'yes'),
(48, 'use_trackback', '0', 'yes'),
(49, 'default_role', 'subscriber', 'yes'),
(50, 'db_version', '38590', 'yes'),
(51, 'uploads_use_yearmonth_folders', '1', 'yes'),
(52, 'upload_path', '', 'yes'),
(53, 'blog_public', '0', 'yes'),
(54, 'default_link_category', '2', 'yes'),
(55, 'show_on_front', 'page', 'yes'),
(56, 'tag_base', '', 'yes'),
(57, 'show_avatars', '1', 'yes'),
(58, 'avatar_rating', 'G', 'yes'),
(59, 'upload_url_path', '', 'yes'),
(60, 'thumbnail_size_w', '150', 'yes'),
(61, 'thumbnail_size_h', '150', 'yes'),
(62, 'thumbnail_crop', '1', 'yes'),
(63, 'medium_size_w', '300', 'yes'),
(64, 'medium_size_h', '300', 'yes'),
(65, 'avatar_default', 'gravatar_default', 'yes'),
(66, 'large_size_w', '1024', 'yes'),
(67, 'large_size_h', '1024', 'yes'),
(68, 'image_default_link_type', 'none', 'yes'),
(69, 'image_default_size', '', 'yes'),
(70, 'image_default_align', '', 'yes'),
(71, 'close_comments_for_old_posts', '', 'yes'),
(72, 'close_comments_days_old', '14', 'yes'),
(73, 'thread_comments', '1', 'yes'),
(74, 'thread_comments_depth', '5', 'yes'),
(75, 'page_comments', '', 'yes'),
(76, 'comments_per_page', '50', 'yes'),
(77, 'default_comments_page', 'newest', 'yes'),
(78, 'comment_order', 'asc', 'yes'),
(79, 'sticky_posts', 'a:0:{}', 'yes'),
(80, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(82, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(83, 'uninstall_plugins', 'a:1:{s:45:\"woocommerce-services/woocommerce-services.php\";a:2:{i:0;s:17:\"WC_Connect_Loader\";i:1;s:16:\"plugin_uninstall\";}}', 'no'),
(84, 'timezone_string', 'Europe/Madrid', 'yes'),
(86, 'page_on_front', '36', 'yes'),
(87, 'default_post_format', '0', 'yes'),
(88, 'link_manager_enabled', '0', 'yes'),
(89, 'finished_splitting_shared_terms', '1', 'yes'),
(90, 'site_icon', '0', 'yes'),
(91, 'medium_large_size_w', '768', 'yes'),
(92, 'medium_large_size_h', '0', 'yes'),
(93, 'wp_page_for_privacy_policy', '3', 'yes'),
(94, 'show_comments_cookies_opt_in', '', 'yes'),
(95, 'initial_db_version', '38590', 'yes'),
(96, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:126:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:11:\"edit_blocks\";b:1;s:18:\"edit_others_blocks\";b:1;s:14:\"publish_blocks\";b:1;s:19:\"read_private_blocks\";b:1;s:11:\"read_blocks\";b:1;s:13:\"delete_blocks\";b:1;s:21:\"delete_private_blocks\";b:1;s:23:\"delete_published_blocks\";b:1;s:20:\"delete_others_blocks\";b:1;s:19:\"edit_private_blocks\";b:1;s:21:\"edit_published_blocks\";b:1;s:13:\"create_blocks\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:46:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:11:\"edit_blocks\";b:1;s:18:\"edit_others_blocks\";b:1;s:14:\"publish_blocks\";b:1;s:19:\"read_private_blocks\";b:1;s:11:\"read_blocks\";b:1;s:13:\"delete_blocks\";b:1;s:21:\"delete_private_blocks\";b:1;s:23:\"delete_published_blocks\";b:1;s:20:\"delete_others_blocks\";b:1;s:19:\"edit_private_blocks\";b:1;s:21:\"edit_published_blocks\";b:1;s:13:\"create_blocks\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:17:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:11:\"edit_blocks\";b:1;s:14:\"publish_blocks\";b:1;s:11:\"read_blocks\";b:1;s:13:\"delete_blocks\";b:1;s:23:\"delete_published_blocks\";b:1;s:21:\"edit_published_blocks\";b:1;s:13:\"create_blocks\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:6:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:11:\"read_blocks\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'yes'),
(97, 'fresh_site', '0', 'yes'),
(98, 'WPLANG', 'es_ES', 'yes'),
(99, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:6:{s:19:\"wp_inactive_widgets\";a:0:{}s:20:\"blog_archive_sidebar\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:19:\"blog_single_sidebar\";a:0:{}s:15:\"archive_sidebar\";a:0:{}s:27:\"woocommerce_archive_sidebar\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'cron', 'a:13:{i:1544557925;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:0:{}s:8:\"interval\";i:60;}}}i:1544558085;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1544558696;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1544567206;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1544569200;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1544573096;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1544573116;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1544578006;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1544616866;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1544642806;a:1:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1544642816;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1546516800;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2635200;}}}s:7:\"version\";i:2;}', 'yes'),
(115, 'theme_mods_templates', 'a:1:{s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(131, 'can_compress_scripts', '1', 'no'),
(217, 'recently_activated', 'a:0:{}', 'yes'),
(271, 'new_admin_email', 'diego.feliud@gmail.com', 'yes'),
(279, 'category_children', 'a:0:{}', 'yes'),
(315, 'tr_theme_options', 'a:6:{s:12:\"company_name\";s:10:\"OCO Design\";s:13:\"company_email\";s:22:\"diego.feliud@gmail.com\";s:13:\"company_phone\";s:11:\"55555555555\";s:10:\"terms_page\";s:0:\"\";s:12:\"company_open\";s:1:\"1\";s:19:\"google_maps_api_key\";s:0:\"\";}', 'yes'),
(329, 'template_root', '/home/vagrant/code/typerocket/resources/themes', 'yes'),
(330, 'stylesheet_root', '/home/vagrant/code/typerocket/resources/themes', 'yes'),
(331, 'current_theme', 'Oodesign', 'yes'),
(332, 'theme_mods_brix-portfolio', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1539279862;s:4:\"data\";a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:20:\"blog_archive_sidebar\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:19:\"blog_single_sidebar\";a:0:{}s:15:\"archive_sidebar\";a:0:{}s:27:\"woocommerce_archive_sidebar\";a:0:{}}}}', 'yes'),
(333, 'theme_switched', '', 'yes'),
(336, 'theme_switch_menu_locations', 'a:0:{}', 'yes'),
(337, 'theme_switched_via_customizer', '', 'yes'),
(338, 'customize_stashed_theme_mods', 'a:0:{}', 'no'),
(392, 'page_for_posts', '43', 'yes'),
(402, 'gender', '1', 'yes'),
(403, 'maintenance_mode', '1', 'yes'),
(540, 'woocommerce_store_address', 'Calle Caracas 5', 'yes'),
(541, 'woocommerce_store_address_2', 'Calle Caracas 5', 'yes'),
(542, 'woocommerce_store_city', 'Tres Cantos', 'yes'),
(543, 'woocommerce_default_country', 'ES:M', 'yes'),
(544, 'woocommerce_store_postcode', '28760', 'yes'),
(545, 'woocommerce_allowed_countries', 'all', 'yes'),
(546, 'woocommerce_all_except_countries', '', 'yes'),
(547, 'woocommerce_specific_allowed_countries', '', 'yes'),
(548, 'woocommerce_ship_to_countries', '', 'yes'),
(549, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(550, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(551, 'woocommerce_calc_taxes', 'yes', 'yes'),
(552, 'woocommerce_enable_coupons', 'yes', 'yes'),
(553, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(554, 'woocommerce_currency', 'EUR', 'yes'),
(555, 'woocommerce_currency_pos', 'right', 'yes'),
(556, 'woocommerce_price_thousand_sep', '.', 'yes'),
(557, 'woocommerce_price_decimal_sep', ',', 'yes'),
(558, 'woocommerce_price_num_decimals', '2', 'yes'),
(559, 'woocommerce_shop_page_id', '51', 'yes'),
(560, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(561, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(562, 'woocommerce_weight_unit', 'kg', 'yes'),
(563, 'woocommerce_dimension_unit', 'cm', 'yes'),
(564, 'woocommerce_enable_reviews', 'yes', 'yes'),
(565, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(566, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(567, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(568, 'woocommerce_review_rating_required', 'yes', 'no'),
(569, 'woocommerce_manage_stock', 'yes', 'yes'),
(570, 'woocommerce_hold_stock_minutes', '60', 'no'),
(571, 'woocommerce_notify_low_stock', 'yes', 'no'),
(572, 'woocommerce_notify_no_stock', 'yes', 'no'),
(573, 'woocommerce_stock_email_recipient', 'diego.feliud@gmail.com', 'no'),
(574, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(575, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(576, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(577, 'woocommerce_stock_format', '', 'yes'),
(578, 'woocommerce_file_download_method', 'force', 'no'),
(579, 'woocommerce_downloads_require_login', 'no', 'no'),
(580, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(581, 'woocommerce_prices_include_tax', 'no', 'yes'),
(582, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(583, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(584, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(585, 'woocommerce_tax_classes', 'Tasa reducida\nTasa cero', 'yes'),
(586, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(587, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(588, 'woocommerce_price_display_suffix', '', 'yes'),
(589, 'woocommerce_tax_total_display', 'itemized', 'no'),
(590, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(591, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(592, 'woocommerce_ship_to_destination', 'billing', 'no'),
(593, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(594, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(595, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(596, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(597, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(598, 'woocommerce_registration_generate_username', 'yes', 'no'),
(599, 'woocommerce_registration_generate_password', 'yes', 'no'),
(600, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(601, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(602, 'woocommerce_registration_privacy_policy_text', 'Tus datos personales se utilizarán para procesar tu pedido, mejorar tu experiencia en esta web, gestionar el acceso a tu cuenta y otros propósitos descritos en nuestra [privacy_policy].', 'yes'),
(603, 'woocommerce_checkout_privacy_policy_text', 'Tus datos personales se utilizarán para procesar tu pedido, mejorar tu experiencia en esta web y otros propósitos descritos en nuestra [privacy_policy].', 'yes'),
(604, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(605, 'woocommerce_trash_pending_orders', '', 'no'),
(606, 'woocommerce_trash_failed_orders', '', 'no'),
(607, 'woocommerce_trash_cancelled_orders', '', 'no'),
(608, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(609, 'woocommerce_email_from_name', 'Ocodesing', 'no'),
(610, 'woocommerce_email_from_address', 'diego.feliud@gmail.com', 'no'),
(611, 'woocommerce_email_header_image', '', 'no'),
(612, 'woocommerce_email_footer_text', '{site_title}', 'no'),
(613, 'woocommerce_email_base_color', '#96588a', 'no'),
(614, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(615, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(616, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(617, 'woocommerce_cart_page_id', '52', 'yes'),
(618, 'woocommerce_checkout_page_id', '53', 'yes'),
(619, 'woocommerce_myaccount_page_id', '54', 'yes'),
(620, 'woocommerce_terms_page_id', '', 'no'),
(621, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(622, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(623, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(624, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(625, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(626, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(627, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(628, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(629, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(630, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(631, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(632, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(633, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(634, 'woocommerce_api_enabled', 'no', 'yes'),
(635, 'woocommerce_single_image_width', '600', 'yes'),
(636, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(637, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(638, 'woocommerce_demo_store', 'no', 'no'),
(639, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:8:\"producto\";s:13:\"category_base\";s:18:\"categoria-producto\";s:8:\"tag_base\";s:17:\"etiqueta-producto\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(640, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(641, 'product_cat_children', 'a:0:{}', 'yes'),
(642, 'default_product_cat', '16', 'yes'),
(647, 'woocommerce_admin_notices', 'a:0:{}', 'yes'),
(648, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(649, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(650, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(651, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(652, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(653, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(654, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(655, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(656, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(657, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(658, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(659, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(660, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(661, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(662, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(664, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(673, 'woocommerce_product_type', 'both', 'yes'),
(674, 'woocommerce_sell_in_person', '1', 'yes'),
(675, 'woocommerce_allow_tracking', 'no', 'yes'),
(676, 'woocommerce_stripe_settings', 'a:3:{s:7:\"enabled\";s:2:\"no\";s:14:\"create_account\";b:0;s:5:\"email\";b:0;}', 'yes'),
(677, 'woocommerce_ppec_paypal_settings', 'a:2:{s:16:\"reroute_requests\";b:0;s:5:\"email\";b:0;}', 'yes'),
(678, 'woocommerce_cheque_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(679, 'woocommerce_bacs_settings', 'a:1:{s:7:\"enabled\";s:3:\"yes\";}', 'yes'),
(680, 'woocommerce_cod_settings', 'a:1:{s:7:\"enabled\";s:3:\"yes\";}', 'yes'),
(681, '_transient_shipping-transient-version', '1540057834', 'yes'),
(682, 'woocommerce_setup_automated_taxes', '1', 'yes'),
(685, 'mailchimp_woocommerce_plugin_do_activation_redirect', '', 'yes'),
(689, 'jetpack_activated', '1', 'yes'),
(692, 'jetpack_activation_source', 'a:2:{i:0;s:7:\"unknown\";i:1;N;}', 'yes'),
(695, 'jetpack_available_modules', 'a:1:{s:5:\"6.6.1\";a:44:{s:18:\"after-the-deadline\";s:3:\"1.1\";s:8:\"carousel\";s:3:\"1.5\";s:13:\"comment-likes\";s:3:\"5.1\";s:8:\"comments\";s:3:\"1.4\";s:12:\"contact-form\";s:3:\"1.3\";s:20:\"custom-content-types\";s:3:\"3.1\";s:10:\"custom-css\";s:3:\"1.7\";s:21:\"enhanced-distribution\";s:3:\"1.2\";s:16:\"google-analytics\";s:3:\"4.5\";s:19:\"gravatar-hovercards\";s:3:\"1.1\";s:15:\"infinite-scroll\";s:3:\"2.0\";s:8:\"json-api\";s:3:\"1.9\";s:5:\"latex\";s:3:\"1.1\";s:11:\"lazy-images\";s:5:\"5.6.0\";s:5:\"likes\";s:3:\"2.2\";s:6:\"manage\";s:3:\"3.4\";s:8:\"markdown\";s:3:\"2.8\";s:9:\"masterbar\";s:3:\"4.8\";s:9:\"minileven\";s:3:\"1.8\";s:7:\"monitor\";s:3:\"2.6\";s:5:\"notes\";s:3:\"1.9\";s:10:\"photon-cdn\";s:3:\"6.6\";s:6:\"photon\";s:3:\"2.0\";s:13:\"post-by-email\";s:3:\"2.0\";s:7:\"protect\";s:3:\"3.4\";s:9:\"publicize\";s:3:\"2.0\";s:3:\"pwa\";s:5:\"5.6.0\";s:13:\"related-posts\";s:3:\"2.9\";s:6:\"search\";s:3:\"5.0\";s:9:\"seo-tools\";s:3:\"4.4\";s:10:\"sharedaddy\";s:3:\"1.1\";s:10:\"shortcodes\";s:3:\"1.1\";s:10:\"shortlinks\";s:3:\"1.1\";s:8:\"sitemaps\";s:3:\"3.9\";s:3:\"sso\";s:3:\"2.6\";s:5:\"stats\";s:3:\"1.1\";s:13:\"subscriptions\";s:3:\"1.2\";s:13:\"tiled-gallery\";s:3:\"2.1\";s:10:\"vaultpress\";s:5:\"0:1.2\";s:18:\"verification-tools\";s:3:\"3.0\";s:10:\"videopress\";s:3:\"2.5\";s:17:\"widget-visibility\";s:3:\"2.4\";s:7:\"widgets\";s:3:\"1.2\";s:7:\"wordads\";s:5:\"4.5.0\";}}', 'yes'),
(696, 'jetpack_options', 'a:2:{s:7:\"version\";s:16:\"6.6.1:1540057846\";s:11:\"old_version\";s:16:\"6.6.1:1540057846\";}', 'yes'),
(697, 'mailchimp_woocommerce_version', '2.1.11', 'no'),
(698, 'mailchimp-woocommerce', 'a:0:{}', 'yes'),
(699, 'mailchimp-woocommerce-store_id', '5bcb6af8d9dda', 'yes'),
(702, 'do_activate', '0', 'yes'),
(707, 'mailchimp_woocommerce_db_mailchimp_carts', '1', 'no'),
(711, 'jetpack_tos_agreed', '1', 'yes'),
(713, 'wc_connect_options', 'a:1:{s:12:\"tos_accepted\";b:1;}', 'yes'),
(719, 'sharing-options', 'a:1:{s:6:\"global\";a:5:{s:12:\"button_style\";s:9:\"icon-text\";s:13:\"sharing_label\";s:11:\"Share this:\";s:10:\"open_links\";s:4:\"same\";s:4:\"show\";a:0:{}s:6:\"custom\";a:0:{}}}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(720, 'stats_options', 'a:7:{s:9:\"admin_bar\";b:1;s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:11:\"count_roles\";a:0:{}s:7:\"blog_id\";b:0;s:12:\"do_not_track\";b:1;s:10:\"hide_smile\";b:1;s:7:\"version\";s:1:\"9\";}', 'yes'),
(738, 'jetpack_sync_settings_disable', '0', 'yes'),
(741, 'jpsq_sync-1540057996.270335-708055-1', 'a:6:{i:0;s:18:\"deactivated_plugin\";i:1;a:2:{i:0;s:19:\"jetpack/jetpack.php\";i:1;b:0;}i:2;i:1;i:3;d:1540057996.2702701091766357421875;i:4;b:0;i:5;a:14:{s:13:\"wpcom_user_id\";N;s:16:\"external_user_id\";i:1;s:12:\"display_name\";s:5:\"admin\";s:10:\"user_email\";s:22:\"diego.feliud@gmail.com\";s:10:\"user_roles\";a:1:{i:0;s:13:\"administrator\";}s:15:\"translated_role\";s:13:\"administrator\";s:7:\"is_cron\";b:0;s:7:\"is_rest\";b:0;s:9:\"is_xmlrpc\";b:0;s:10:\"is_wp_rest\";b:0;s:7:\"is_ajax\";b:0;s:11:\"is_wp_admin\";b:1;s:6:\"is_cli\";b:0;s:8:\"from_url\";s:136:\"http://localhost//wp-admin/plugins.php?action=deactivate&plugin=jetpack%2Fjetpack.php&plugin_status=all&paged=1&s&_wpnonce=24d2958ad1\";}}', 'no'),
(742, 'jpsq_sync-1540057996.271168-708055-2', 'a:6:{i:0;s:14:\"updated_option\";i:1;a:3:{i:0;s:14:\"active_plugins\";i:1;a:6:{i:0;s:23:\"gutenberg/gutenberg.php\";i:1;s:19:\"jetpack/jetpack.php\";i:2;s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";i:3;s:69:\"woo-gutenberg-products-block/woocommerce-gutenberg-products-block.php\";i:4;s:45:\"woocommerce-services/woocommerce-services.php\";i:5;s:27:\"woocommerce/woocommerce.php\";}i:2;a:5:{i:0;s:23:\"gutenberg/gutenberg.php\";i:2;s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";i:3;s:69:\"woo-gutenberg-products-block/woocommerce-gutenberg-products-block.php\";i:4;s:45:\"woocommerce-services/woocommerce-services.php\";i:5;s:27:\"woocommerce/woocommerce.php\";}}i:2;i:1;i:3;d:1540057996.2711451053619384765625;i:4;b:0;i:5;a:14:{s:13:\"wpcom_user_id\";N;s:16:\"external_user_id\";i:1;s:12:\"display_name\";s:5:\"admin\";s:10:\"user_email\";s:22:\"diego.feliud@gmail.com\";s:10:\"user_roles\";a:1:{i:0;s:13:\"administrator\";}s:15:\"translated_role\";s:13:\"administrator\";s:7:\"is_cron\";b:0;s:7:\"is_rest\";b:0;s:9:\"is_xmlrpc\";b:0;s:10:\"is_wp_rest\";b:0;s:7:\"is_ajax\";b:0;s:11:\"is_wp_admin\";b:1;s:6:\"is_cli\";b:0;s:8:\"from_url\";s:136:\"http://localhost//wp-admin/plugins.php?action=deactivate&plugin=jetpack%2Fjetpack.php&plugin_status=all&paged=1&s&_wpnonce=24d2958ad1\";}}', 'no'),
(745, 'jpsq_sync-1540057996.274196-708055-3', 'a:6:{i:0;s:21:\"jetpack_sync_constant\";i:1;a:2:{i:0;s:16:\"EMPTY_TRASH_DAYS\";i:1;i:30;}i:2;i:1;i:3;d:1540057996.274158954620361328125;i:4;b:0;i:5;a:14:{s:13:\"wpcom_user_id\";N;s:16:\"external_user_id\";i:1;s:12:\"display_name\";s:5:\"admin\";s:10:\"user_email\";s:22:\"diego.feliud@gmail.com\";s:10:\"user_roles\";a:1:{i:0;s:13:\"administrator\";}s:15:\"translated_role\";s:13:\"administrator\";s:7:\"is_cron\";b:0;s:7:\"is_rest\";b:0;s:9:\"is_xmlrpc\";b:0;s:10:\"is_wp_rest\";b:0;s:7:\"is_ajax\";b:0;s:11:\"is_wp_admin\";b:1;s:6:\"is_cli\";b:0;s:8:\"from_url\";s:136:\"http://localhost//wp-admin/plugins.php?action=deactivate&plugin=jetpack%2Fjetpack.php&plugin_status=all&paged=1&s&_wpnonce=24d2958ad1\";}}', 'no'),
(746, 'jpsq_sync-1540057996.274697-708055-4', 'a:6:{i:0;s:21:\"jetpack_sync_constant\";i:1;a:2:{i:0;s:17:\"WP_POST_REVISIONS\";i:1;b:1;}i:2;i:1;i:3;d:1540057996.274674892425537109375;i:4;b:0;i:5;a:14:{s:13:\"wpcom_user_id\";N;s:16:\"external_user_id\";i:1;s:12:\"display_name\";s:5:\"admin\";s:10:\"user_email\";s:22:\"diego.feliud@gmail.com\";s:10:\"user_roles\";a:1:{i:0;s:13:\"administrator\";}s:15:\"translated_role\";s:13:\"administrator\";s:7:\"is_cron\";b:0;s:7:\"is_rest\";b:0;s:9:\"is_xmlrpc\";b:0;s:10:\"is_wp_rest\";b:0;s:7:\"is_ajax\";b:0;s:11:\"is_wp_admin\";b:1;s:6:\"is_cli\";b:0;s:8:\"from_url\";s:136:\"http://localhost//wp-admin/plugins.php?action=deactivate&plugin=jetpack%2Fjetpack.php&plugin_status=all&paged=1&s&_wpnonce=24d2958ad1\";}}', 'no'),
(747, 'jpsq_sync-1540057996.274883-708055-5', 'a:6:{i:0;s:21:\"jetpack_sync_constant\";i:1;a:2:{i:0;s:7:\"ABSPATH\";i:1;s:37:\"/home/ocodesig/public_html/wordpress/\";}i:2;i:1;i:3;d:1540057996.2748630046844482421875;i:4;b:0;i:5;a:14:{s:13:\"wpcom_user_id\";N;s:16:\"external_user_id\";i:1;s:12:\"display_name\";s:5:\"admin\";s:10:\"user_email\";s:22:\"diego.feliud@gmail.com\";s:10:\"user_roles\";a:1:{i:0;s:13:\"administrator\";}s:15:\"translated_role\";s:13:\"administrator\";s:7:\"is_cron\";b:0;s:7:\"is_rest\";b:0;s:9:\"is_xmlrpc\";b:0;s:10:\"is_wp_rest\";b:0;s:7:\"is_ajax\";b:0;s:11:\"is_wp_admin\";b:1;s:6:\"is_cli\";b:0;s:8:\"from_url\";s:136:\"http://localhost//wp-admin/plugins.php?action=deactivate&plugin=jetpack%2Fjetpack.php&plugin_status=all&paged=1&s&_wpnonce=24d2958ad1\";}}', 'no'),
(748, 'jpsq_sync-1540057996.275069-708055-6', 'a:6:{i:0;s:21:\"jetpack_sync_constant\";i:1;a:2:{i:0;s:14:\"WP_CONTENT_DIR\";i:1;s:47:\"/home/ocodesig/public_html/wordpress/wp-content\";}i:2;i:1;i:3;d:1540057996.2750499248504638671875;i:4;b:0;i:5;a:14:{s:13:\"wpcom_user_id\";N;s:16:\"external_user_id\";i:1;s:12:\"display_name\";s:5:\"admin\";s:10:\"user_email\";s:22:\"diego.feliud@gmail.com\";s:10:\"user_roles\";a:1:{i:0;s:13:\"administrator\";}s:15:\"translated_role\";s:13:\"administrator\";s:7:\"is_cron\";b:0;s:7:\"is_rest\";b:0;s:9:\"is_xmlrpc\";b:0;s:10:\"is_wp_rest\";b:0;s:7:\"is_ajax\";b:0;s:11:\"is_wp_admin\";b:1;s:6:\"is_cli\";b:0;s:8:\"from_url\";s:136:\"http://localhost//wp-admin/plugins.php?action=deactivate&plugin=jetpack%2Fjetpack.php&plugin_status=all&paged=1&s&_wpnonce=24d2958ad1\";}}', 'no'),
(749, 'jpsq_sync-1540057996.275256-708055-7', 'a:6:{i:0;s:21:\"jetpack_sync_constant\";i:1;a:2:{i:0;s:16:\"JETPACK__VERSION\";i:1;s:5:\"6.6.1\";}i:2;i:1;i:3;d:1540057996.27523708343505859375;i:4;b:0;i:5;a:14:{s:13:\"wpcom_user_id\";N;s:16:\"external_user_id\";i:1;s:12:\"display_name\";s:5:\"admin\";s:10:\"user_email\";s:22:\"diego.feliud@gmail.com\";s:10:\"user_roles\";a:1:{i:0;s:13:\"administrator\";}s:15:\"translated_role\";s:13:\"administrator\";s:7:\"is_cron\";b:0;s:7:\"is_rest\";b:0;s:9:\"is_xmlrpc\";b:0;s:10:\"is_wp_rest\";b:0;s:7:\"is_ajax\";b:0;s:11:\"is_wp_admin\";b:1;s:6:\"is_cli\";b:0;s:8:\"from_url\";s:136:\"http://localhost//wp-admin/plugins.php?action=deactivate&plugin=jetpack%2Fjetpack.php&plugin_status=all&paged=1&s&_wpnonce=24d2958ad1\";}}', 'no'),
(750, 'jpsq_sync-1540057996.275447-708055-8', 'a:6:{i:0;s:21:\"jetpack_sync_constant\";i:1;a:2:{i:0;s:20:\"WP_CRON_LOCK_TIMEOUT\";i:1;i:60;}i:2;i:1;i:3;d:1540057996.2754280567169189453125;i:4;b:0;i:5;a:14:{s:13:\"wpcom_user_id\";N;s:16:\"external_user_id\";i:1;s:12:\"display_name\";s:5:\"admin\";s:10:\"user_email\";s:22:\"diego.feliud@gmail.com\";s:10:\"user_roles\";a:1:{i:0;s:13:\"administrator\";}s:15:\"translated_role\";s:13:\"administrator\";s:7:\"is_cron\";b:0;s:7:\"is_rest\";b:0;s:9:\"is_xmlrpc\";b:0;s:10:\"is_wp_rest\";b:0;s:7:\"is_ajax\";b:0;s:11:\"is_wp_admin\";b:1;s:6:\"is_cli\";b:0;s:8:\"from_url\";s:136:\"http://localhost//wp-admin/plugins.php?action=deactivate&plugin=jetpack%2Fjetpack.php&plugin_status=all&paged=1&s&_wpnonce=24d2958ad1\";}}', 'no'),
(751, 'jpsq_sync-1540057996.275617-708055-9', 'a:6:{i:0;s:21:\"jetpack_sync_constant\";i:1;a:2:{i:0;s:11:\"PHP_VERSION\";i:1;s:6:\"7.1.23\";}i:2;i:1;i:3;d:1540057996.275598049163818359375;i:4;b:0;i:5;a:14:{s:13:\"wpcom_user_id\";N;s:16:\"external_user_id\";i:1;s:12:\"display_name\";s:5:\"admin\";s:10:\"user_email\";s:22:\"diego.feliud@gmail.com\";s:10:\"user_roles\";a:1:{i:0;s:13:\"administrator\";}s:15:\"translated_role\";s:13:\"administrator\";s:7:\"is_cron\";b:0;s:7:\"is_rest\";b:0;s:9:\"is_xmlrpc\";b:0;s:10:\"is_wp_rest\";b:0;s:7:\"is_ajax\";b:0;s:11:\"is_wp_admin\";b:1;s:6:\"is_cli\";b:0;s:8:\"from_url\";s:136:\"http://localhost//wp-admin/plugins.php?action=deactivate&plugin=jetpack%2Fjetpack.php&plugin_status=all&paged=1&s&_wpnonce=24d2958ad1\";}}', 'no'),
(752, 'jpsq_sync-1540057996.275786-708055-10', 'a:6:{i:0;s:21:\"jetpack_sync_constant\";i:1;a:2:{i:0;s:15:\"WP_MEMORY_LIMIT\";i:1;s:3:\"40M\";}i:2;i:1;i:3;d:1540057996.2757670879364013671875;i:4;b:0;i:5;a:14:{s:13:\"wpcom_user_id\";N;s:16:\"external_user_id\";i:1;s:12:\"display_name\";s:5:\"admin\";s:10:\"user_email\";s:22:\"diego.feliud@gmail.com\";s:10:\"user_roles\";a:1:{i:0;s:13:\"administrator\";}s:15:\"translated_role\";s:13:\"administrator\";s:7:\"is_cron\";b:0;s:7:\"is_rest\";b:0;s:9:\"is_xmlrpc\";b:0;s:10:\"is_wp_rest\";b:0;s:7:\"is_ajax\";b:0;s:11:\"is_wp_admin\";b:1;s:6:\"is_cli\";b:0;s:8:\"from_url\";s:136:\"http://localhost//wp-admin/plugins.php?action=deactivate&plugin=jetpack%2Fjetpack.php&plugin_status=all&paged=1&s&_wpnonce=24d2958ad1\";}}', 'no'),
(753, 'jpsq_sync-1540057996.275953-708055-11', 'a:6:{i:0;s:21:\"jetpack_sync_constant\";i:1;a:2:{i:0;s:19:\"WP_MAX_MEMORY_LIMIT\";i:1;s:4:\"768M\";}i:2;i:1;i:3;d:1540057996.2759349346160888671875;i:4;b:0;i:5;a:14:{s:13:\"wpcom_user_id\";N;s:16:\"external_user_id\";i:1;s:12:\"display_name\";s:5:\"admin\";s:10:\"user_email\";s:22:\"diego.feliud@gmail.com\";s:10:\"user_roles\";a:1:{i:0;s:13:\"administrator\";}s:15:\"translated_role\";s:13:\"administrator\";s:7:\"is_cron\";b:0;s:7:\"is_rest\";b:0;s:9:\"is_xmlrpc\";b:0;s:10:\"is_wp_rest\";b:0;s:7:\"is_ajax\";b:0;s:11:\"is_wp_admin\";b:1;s:6:\"is_cli\";b:0;s:8:\"from_url\";s:136:\"http://localhost//wp-admin/plugins.php?action=deactivate&plugin=jetpack%2Fjetpack.php&plugin_status=all&paged=1&s&_wpnonce=24d2958ad1\";}}', 'no'),
(754, 'jpsq_sync-1540057996.276190-708055-12', 'a:6:{i:0;s:21:\"jetpack_sync_constant\";i:1;a:2:{i:0;s:14:\"WC_PLUGIN_FILE\";i:1;s:83:\"/home/ocodesig/public_html/wordpress/wp-content/plugins/woocommerce/woocommerce.php\";}i:2;i:1;i:3;d:1540057996.2761719226837158203125;i:4;b:0;i:5;a:14:{s:13:\"wpcom_user_id\";N;s:16:\"external_user_id\";i:1;s:12:\"display_name\";s:5:\"admin\";s:10:\"user_email\";s:22:\"diego.feliud@gmail.com\";s:10:\"user_roles\";a:1:{i:0;s:13:\"administrator\";}s:15:\"translated_role\";s:13:\"administrator\";s:7:\"is_cron\";b:0;s:7:\"is_rest\";b:0;s:9:\"is_xmlrpc\";b:0;s:10:\"is_wp_rest\";b:0;s:7:\"is_ajax\";b:0;s:11:\"is_wp_admin\";b:1;s:6:\"is_cli\";b:0;s:8:\"from_url\";s:136:\"http://localhost//wp-admin/plugins.php?action=deactivate&plugin=jetpack%2Fjetpack.php&plugin_status=all&paged=1&s&_wpnonce=24d2958ad1\";}}', 'no'),
(755, 'jpsq_sync-1540057996.276362-708055-13', 'a:6:{i:0;s:21:\"jetpack_sync_constant\";i:1;a:2:{i:0;s:10:\"WC_ABSPATH\";i:1;s:68:\"/home/ocodesig/public_html/wordpress/wp-content/plugins/woocommerce/\";}i:2;i:1;i:3;d:1540057996.2763440608978271484375;i:4;b:0;i:5;a:14:{s:13:\"wpcom_user_id\";N;s:16:\"external_user_id\";i:1;s:12:\"display_name\";s:5:\"admin\";s:10:\"user_email\";s:22:\"diego.feliud@gmail.com\";s:10:\"user_roles\";a:1:{i:0;s:13:\"administrator\";}s:15:\"translated_role\";s:13:\"administrator\";s:7:\"is_cron\";b:0;s:7:\"is_rest\";b:0;s:9:\"is_xmlrpc\";b:0;s:10:\"is_wp_rest\";b:0;s:7:\"is_ajax\";b:0;s:11:\"is_wp_admin\";b:1;s:6:\"is_cli\";b:0;s:8:\"from_url\";s:136:\"http://localhost//wp-admin/plugins.php?action=deactivate&plugin=jetpack%2Fjetpack.php&plugin_status=all&paged=1&s&_wpnonce=24d2958ad1\";}}', 'no'),
(756, 'jpsq_sync-1540057996.276529-708055-14', 'a:6:{i:0;s:21:\"jetpack_sync_constant\";i:1;a:2:{i:0;s:18:\"WC_PLUGIN_BASENAME\";i:1;s:27:\"woocommerce/woocommerce.php\";}i:2;i:1;i:3;d:1540057996.2765109539031982421875;i:4;b:0;i:5;a:14:{s:13:\"wpcom_user_id\";N;s:16:\"external_user_id\";i:1;s:12:\"display_name\";s:5:\"admin\";s:10:\"user_email\";s:22:\"diego.feliud@gmail.com\";s:10:\"user_roles\";a:1:{i:0;s:13:\"administrator\";}s:15:\"translated_role\";s:13:\"administrator\";s:7:\"is_cron\";b:0;s:7:\"is_rest\";b:0;s:9:\"is_xmlrpc\";b:0;s:10:\"is_wp_rest\";b:0;s:7:\"is_ajax\";b:0;s:11:\"is_wp_admin\";b:1;s:6:\"is_cli\";b:0;s:8:\"from_url\";s:136:\"http://localhost//wp-admin/plugins.php?action=deactivate&plugin=jetpack%2Fjetpack.php&plugin_status=all&paged=1&s&_wpnonce=24d2958ad1\";}}', 'no'),
(757, 'jpsq_sync-1540057996.276700-708055-15', 'a:6:{i:0;s:21:\"jetpack_sync_constant\";i:1;a:2:{i:0;s:10:\"WC_VERSION\";i:1;s:5:\"3.4.7\";}i:2;i:1;i:3;d:1540057996.2766819000244140625;i:4;b:0;i:5;a:14:{s:13:\"wpcom_user_id\";N;s:16:\"external_user_id\";i:1;s:12:\"display_name\";s:5:\"admin\";s:10:\"user_email\";s:22:\"diego.feliud@gmail.com\";s:10:\"user_roles\";a:1:{i:0;s:13:\"administrator\";}s:15:\"translated_role\";s:13:\"administrator\";s:7:\"is_cron\";b:0;s:7:\"is_rest\";b:0;s:9:\"is_xmlrpc\";b:0;s:10:\"is_wp_rest\";b:0;s:7:\"is_ajax\";b:0;s:11:\"is_wp_admin\";b:1;s:6:\"is_cli\";b:0;s:8:\"from_url\";s:136:\"http://localhost//wp-admin/plugins.php?action=deactivate&plugin=jetpack%2Fjetpack.php&plugin_status=all&paged=1&s&_wpnonce=24d2958ad1\";}}', 'no'),
(758, 'jpsq_sync-1540057996.276864-708055-16', 'a:6:{i:0;s:21:\"jetpack_sync_constant\";i:1;a:2:{i:0;s:19:\"WOOCOMMERCE_VERSION\";i:1;s:5:\"3.4.7\";}i:2;i:1;i:3;d:1540057996.2768459320068359375;i:4;b:0;i:5;a:14:{s:13:\"wpcom_user_id\";N;s:16:\"external_user_id\";i:1;s:12:\"display_name\";s:5:\"admin\";s:10:\"user_email\";s:22:\"diego.feliud@gmail.com\";s:10:\"user_roles\";a:1:{i:0;s:13:\"administrator\";}s:15:\"translated_role\";s:13:\"administrator\";s:7:\"is_cron\";b:0;s:7:\"is_rest\";b:0;s:9:\"is_xmlrpc\";b:0;s:10:\"is_wp_rest\";b:0;s:7:\"is_ajax\";b:0;s:11:\"is_wp_admin\";b:1;s:6:\"is_cli\";b:0;s:8:\"from_url\";s:136:\"http://localhost//wp-admin/plugins.php?action=deactivate&plugin=jetpack%2Fjetpack.php&plugin_status=all&paged=1&s&_wpnonce=24d2958ad1\";}}', 'no'),
(759, 'jpsq_sync-1540057996.277036-708055-17', 'a:6:{i:0;s:21:\"jetpack_sync_constant\";i:1;a:2:{i:0;s:21:\"WC_ROUNDING_PRECISION\";i:1;i:6;}i:2;i:1;i:3;d:1540057996.277017116546630859375;i:4;b:0;i:5;a:14:{s:13:\"wpcom_user_id\";N;s:16:\"external_user_id\";i:1;s:12:\"display_name\";s:5:\"admin\";s:10:\"user_email\";s:22:\"diego.feliud@gmail.com\";s:10:\"user_roles\";a:1:{i:0;s:13:\"administrator\";}s:15:\"translated_role\";s:13:\"administrator\";s:7:\"is_cron\";b:0;s:7:\"is_rest\";b:0;s:9:\"is_xmlrpc\";b:0;s:10:\"is_wp_rest\";b:0;s:7:\"is_ajax\";b:0;s:11:\"is_wp_admin\";b:1;s:6:\"is_cli\";b:0;s:8:\"from_url\";s:136:\"http://localhost//wp-admin/plugins.php?action=deactivate&plugin=jetpack%2Fjetpack.php&plugin_status=all&paged=1&s&_wpnonce=24d2958ad1\";}}', 'no'),
(760, 'jpsq_sync-1540057996.277238-708055-18', 'a:6:{i:0;s:21:\"jetpack_sync_constant\";i:1;a:2:{i:0;s:25:\"WC_DISCOUNT_ROUNDING_MODE\";i:1;i:2;}i:2;i:1;i:3;d:1540057996.2772200107574462890625;i:4;b:0;i:5;a:14:{s:13:\"wpcom_user_id\";N;s:16:\"external_user_id\";i:1;s:12:\"display_name\";s:5:\"admin\";s:10:\"user_email\";s:22:\"diego.feliud@gmail.com\";s:10:\"user_roles\";a:1:{i:0;s:13:\"administrator\";}s:15:\"translated_role\";s:13:\"administrator\";s:7:\"is_cron\";b:0;s:7:\"is_rest\";b:0;s:9:\"is_xmlrpc\";b:0;s:10:\"is_wp_rest\";b:0;s:7:\"is_ajax\";b:0;s:11:\"is_wp_admin\";b:1;s:6:\"is_cli\";b:0;s:8:\"from_url\";s:136:\"http://localhost//wp-admin/plugins.php?action=deactivate&plugin=jetpack%2Fjetpack.php&plugin_status=all&paged=1&s&_wpnonce=24d2958ad1\";}}', 'no'),
(761, 'jpsq_sync-1540057996.277457-708055-19', 'a:6:{i:0;s:21:\"jetpack_sync_constant\";i:1;a:2:{i:0;s:20:\"WC_TAX_ROUNDING_MODE\";i:1;i:1;}i:2;i:1;i:3;d:1540057996.277439117431640625;i:4;b:0;i:5;a:14:{s:13:\"wpcom_user_id\";N;s:16:\"external_user_id\";i:1;s:12:\"display_name\";s:5:\"admin\";s:10:\"user_email\";s:22:\"diego.feliud@gmail.com\";s:10:\"user_roles\";a:1:{i:0;s:13:\"administrator\";}s:15:\"translated_role\";s:13:\"administrator\";s:7:\"is_cron\";b:0;s:7:\"is_rest\";b:0;s:9:\"is_xmlrpc\";b:0;s:10:\"is_wp_rest\";b:0;s:7:\"is_ajax\";b:0;s:11:\"is_wp_admin\";b:1;s:6:\"is_cli\";b:0;s:8:\"from_url\";s:136:\"http://localhost//wp-admin/plugins.php?action=deactivate&plugin=jetpack%2Fjetpack.php&plugin_status=all&paged=1&s&_wpnonce=24d2958ad1\";}}', 'no'),
(762, 'jpsq_sync-1540057996.277622-708055-20', 'a:6:{i:0;s:21:\"jetpack_sync_constant\";i:1;a:2:{i:0;s:12:\"WC_DELIMITER\";i:1;s:1:\"|\";}i:2;i:1;i:3;d:1540057996.2776050567626953125;i:4;b:0;i:5;a:14:{s:13:\"wpcom_user_id\";N;s:16:\"external_user_id\";i:1;s:12:\"display_name\";s:5:\"admin\";s:10:\"user_email\";s:22:\"diego.feliud@gmail.com\";s:10:\"user_roles\";a:1:{i:0;s:13:\"administrator\";}s:15:\"translated_role\";s:13:\"administrator\";s:7:\"is_cron\";b:0;s:7:\"is_rest\";b:0;s:9:\"is_xmlrpc\";b:0;s:10:\"is_wp_rest\";b:0;s:7:\"is_ajax\";b:0;s:11:\"is_wp_admin\";b:1;s:6:\"is_cli\";b:0;s:8:\"from_url\";s:136:\"http://localhost//wp-admin/plugins.php?action=deactivate&plugin=jetpack%2Fjetpack.php&plugin_status=all&paged=1&s&_wpnonce=24d2958ad1\";}}', 'no'),
(763, 'jpsq_sync-1540057996.277872-708055-21', 'a:6:{i:0;s:21:\"jetpack_sync_constant\";i:1;a:2:{i:0;s:10:\"WC_LOG_DIR\";i:1;s:64:\"/home/ocodesig/public_html/wordpress/wp-content/uploads/wc-logs/\";}i:2;i:1;i:3;d:1540057996.27785396575927734375;i:4;b:0;i:5;a:14:{s:13:\"wpcom_user_id\";N;s:16:\"external_user_id\";i:1;s:12:\"display_name\";s:5:\"admin\";s:10:\"user_email\";s:22:\"diego.feliud@gmail.com\";s:10:\"user_roles\";a:1:{i:0;s:13:\"administrator\";}s:15:\"translated_role\";s:13:\"administrator\";s:7:\"is_cron\";b:0;s:7:\"is_rest\";b:0;s:9:\"is_xmlrpc\";b:0;s:10:\"is_wp_rest\";b:0;s:7:\"is_ajax\";b:0;s:11:\"is_wp_admin\";b:1;s:6:\"is_cli\";b:0;s:8:\"from_url\";s:136:\"http://localhost//wp-admin/plugins.php?action=deactivate&plugin=jetpack%2Fjetpack.php&plugin_status=all&paged=1&s&_wpnonce=24d2958ad1\";}}', 'no'),
(764, 'jpsq_sync-1540057996.278050-708055-22', 'a:6:{i:0;s:21:\"jetpack_sync_constant\";i:1;a:2:{i:0;s:22:\"WC_SESSION_CACHE_GROUP\";i:1;s:13:\"wc_session_id\";}i:2;i:1;i:3;d:1540057996.2780320644378662109375;i:4;b:0;i:5;a:14:{s:13:\"wpcom_user_id\";N;s:16:\"external_user_id\";i:1;s:12:\"display_name\";s:5:\"admin\";s:10:\"user_email\";s:22:\"diego.feliud@gmail.com\";s:10:\"user_roles\";a:1:{i:0;s:13:\"administrator\";}s:15:\"translated_role\";s:13:\"administrator\";s:7:\"is_cron\";b:0;s:7:\"is_rest\";b:0;s:9:\"is_xmlrpc\";b:0;s:10:\"is_wp_rest\";b:0;s:7:\"is_ajax\";b:0;s:11:\"is_wp_admin\";b:1;s:6:\"is_cli\";b:0;s:8:\"from_url\";s:136:\"http://localhost//wp-admin/plugins.php?action=deactivate&plugin=jetpack%2Fjetpack.php&plugin_status=all&paged=1&s&_wpnonce=24d2958ad1\";}}', 'no'),
(765, 'jpsq_sync-1540057996.278223-708055-23', 'a:6:{i:0;s:21:\"jetpack_sync_constant\";i:1;a:2:{i:0;s:22:\"WC_TEMPLATE_DEBUG_MODE\";i:1;b:0;}i:2;i:1;i:3;d:1540057996.2782039642333984375;i:4;b:0;i:5;a:14:{s:13:\"wpcom_user_id\";N;s:16:\"external_user_id\";i:1;s:12:\"display_name\";s:5:\"admin\";s:10:\"user_email\";s:22:\"diego.feliud@gmail.com\";s:10:\"user_roles\";a:1:{i:0;s:13:\"administrator\";}s:15:\"translated_role\";s:13:\"administrator\";s:7:\"is_cron\";b:0;s:7:\"is_rest\";b:0;s:9:\"is_xmlrpc\";b:0;s:10:\"is_wp_rest\";b:0;s:7:\"is_ajax\";b:0;s:11:\"is_wp_admin\";b:1;s:6:\"is_cli\";b:0;s:8:\"from_url\";s:136:\"http://localhost//wp-admin/plugins.php?action=deactivate&plugin=jetpack%2Fjetpack.php&plugin_status=all&paged=1&s&_wpnonce=24d2958ad1\";}}', 'no'),
(766, 'jetpack_constants_sync_checksum', 'a:31:{s:16:\"EMPTY_TRASH_DAYS\";i:2473281379;s:17:\"WP_POST_REVISIONS\";i:4261170317;s:26:\"AUTOMATIC_UPDATER_DISABLED\";i:634125391;s:7:\"ABSPATH\";i:981598762;s:14:\"WP_CONTENT_DIR\";i:3383006500;s:9:\"FS_METHOD\";i:634125391;s:18:\"DISALLOW_FILE_EDIT\";i:634125391;s:18:\"DISALLOW_FILE_MODS\";i:634125391;s:19:\"WP_AUTO_UPDATE_CORE\";i:634125391;s:22:\"WP_HTTP_BLOCK_EXTERNAL\";i:634125391;s:19:\"WP_ACCESSIBLE_HOSTS\";i:634125391;s:16:\"JETPACK__VERSION\";i:2637301983;s:12:\"IS_PRESSABLE\";i:634125391;s:15:\"DISABLE_WP_CRON\";i:634125391;s:17:\"ALTERNATE_WP_CRON\";i:634125391;s:20:\"WP_CRON_LOCK_TIMEOUT\";i:3994858278;s:11:\"PHP_VERSION\";i:1415256521;s:15:\"WP_MEMORY_LIMIT\";i:3065409971;s:19:\"WP_MAX_MEMORY_LIMIT\";i:2267546353;s:14:\"WC_PLUGIN_FILE\";i:3551118068;s:10:\"WC_ABSPATH\";i:1387059052;s:18:\"WC_PLUGIN_BASENAME\";i:1149093810;s:10:\"WC_VERSION\";i:833418849;s:19:\"WOOCOMMERCE_VERSION\";i:833418849;s:21:\"WC_ROUNDING_PRECISION\";i:498629140;s:25:\"WC_DISCOUNT_ROUNDING_MODE\";i:450215437;s:20:\"WC_TAX_ROUNDING_MODE\";i:2212294583;s:12:\"WC_DELIMITER\";i:2455911554;s:10:\"WC_LOG_DIR\";i:3265196468;s:22:\"WC_SESSION_CACHE_GROUP\";i:4278978988;s:22:\"WC_TEMPLATE_DEBUG_MODE\";i:734881840;}', 'yes'),
(769, 'jetpack_sync_https_history_main_network_site_url', 'a:1:{i:0;s:5:\"https\";}', 'yes'),
(770, 'jetpack_sync_https_history_site_url', 'a:2:{i:0;s:5:\"https\";i:1;s:5:\"https\";}', 'yes'),
(771, 'jetpack_sync_https_history_home_url', 'a:2:{i:0;s:5:\"https\";i:1;s:5:\"https\";}', 'yes'),
(774, 'jpsq_sync-1540057996.287405-708055-24', 'a:6:{i:0;s:21:\"jetpack_sync_callable\";i:1;a:2:{i:0;s:18:\"wp_max_upload_size\";i:1;i:134217728;}i:2;i:1;i:3;d:1540057996.2873809337615966796875;i:4;b:0;i:5;a:14:{s:13:\"wpcom_user_id\";N;s:16:\"external_user_id\";i:1;s:12:\"display_name\";s:5:\"admin\";s:10:\"user_email\";s:22:\"diego.feliud@gmail.com\";s:10:\"user_roles\";a:1:{i:0;s:13:\"administrator\";}s:15:\"translated_role\";s:13:\"administrator\";s:7:\"is_cron\";b:0;s:7:\"is_rest\";b:0;s:9:\"is_xmlrpc\";b:0;s:10:\"is_wp_rest\";b:0;s:7:\"is_ajax\";b:0;s:11:\"is_wp_admin\";b:1;s:6:\"is_cli\";b:0;s:8:\"from_url\";s:136:\"http://localhost//wp-admin/plugins.php?action=deactivate&plugin=jetpack%2Fjetpack.php&plugin_status=all&paged=1&s&_wpnonce=24d2958ad1\";}}', 'no'),
(775, 'jpsq_sync-1540057996.288021-708055-25', 'a:6:{i:0;s:21:\"jetpack_sync_callable\";i:1;a:2:{i:0;s:15:\"is_main_network\";i:1;b:0;}i:2;i:1;i:3;d:1540057996.287993907928466796875;i:4;b:0;i:5;a:14:{s:13:\"wpcom_user_id\";N;s:16:\"external_user_id\";i:1;s:12:\"display_name\";s:5:\"admin\";s:10:\"user_email\";s:22:\"diego.feliud@gmail.com\";s:10:\"user_roles\";a:1:{i:0;s:13:\"administrator\";}s:15:\"translated_role\";s:13:\"administrator\";s:7:\"is_cron\";b:0;s:7:\"is_rest\";b:0;s:9:\"is_xmlrpc\";b:0;s:10:\"is_wp_rest\";b:0;s:7:\"is_ajax\";b:0;s:11:\"is_wp_admin\";b:1;s:6:\"is_cli\";b:0;s:8:\"from_url\";s:136:\"http://localhost//wp-admin/plugins.php?action=deactivate&plugin=jetpack%2Fjetpack.php&plugin_status=all&paged=1&s&_wpnonce=24d2958ad1\";}}', 'no'),
(776, 'jpsq_sync-1540057996.288214-708055-26', 'a:6:{i:0;s:21:\"jetpack_sync_callable\";i:1;a:2:{i:0;s:13:\"is_multi_site\";i:1;b:0;}i:2;i:1;i:3;d:1540057996.2881929874420166015625;i:4;b:0;i:5;a:14:{s:13:\"wpcom_user_id\";N;s:16:\"external_user_id\";i:1;s:12:\"display_name\";s:5:\"admin\";s:10:\"user_email\";s:22:\"diego.feliud@gmail.com\";s:10:\"user_roles\";a:1:{i:0;s:13:\"administrator\";}s:15:\"translated_role\";s:13:\"administrator\";s:7:\"is_cron\";b:0;s:7:\"is_rest\";b:0;s:9:\"is_xmlrpc\";b:0;s:10:\"is_wp_rest\";b:0;s:7:\"is_ajax\";b:0;s:11:\"is_wp_admin\";b:1;s:6:\"is_cli\";b:0;s:8:\"from_url\";s:136:\"http://localhost//wp-admin/plugins.php?action=deactivate&plugin=jetpack%2Fjetpack.php&plugin_status=all&paged=1&s&_wpnonce=24d2958ad1\";}}', 'no'),
(777, 'jpsq_sync-1540057996.288609-708055-27', 'a:6:{i:0;s:21:\"jetpack_sync_callable\";i:1;a:2:{i:0;s:17:\"main_network_site\";i:1;s:20:\"http://localhost/\";}i:2;i:1;i:3;d:1540057996.288587093353271484375;i:4;b:0;i:5;a:14:{s:13:\"wpcom_user_id\";N;s:16:\"external_user_id\";i:1;s:12:\"display_name\";s:5:\"admin\";s:10:\"user_email\";s:22:\"diego.feliud@gmail.com\";s:10:\"user_roles\";a:1:{i:0;s:13:\"administrator\";}s:15:\"translated_role\";s:13:\"administrator\";s:7:\"is_cron\";b:0;s:7:\"is_rest\";b:0;s:9:\"is_xmlrpc\";b:0;s:10:\"is_wp_rest\";b:0;s:7:\"is_ajax\";b:0;s:11:\"is_wp_admin\";b:1;s:6:\"is_cli\";b:0;s:8:\"from_url\";s:136:\"http://localhost//wp-admin/plugins.php?action=deactivate&plugin=jetpack%2Fjetpack.php&plugin_status=all&paged=1&s&_wpnonce=24d2958ad1\";}}', 'no'),
(778, 'jpsq_sync-1540057996.288982-708055-28', 'a:6:{i:0;s:21:\"jetpack_sync_callable\";i:1;a:2:{i:0;s:8:\"site_url\";i:1;s:20:\"http://localhost/\";}i:2;i:1;i:3;d:1540057996.2889630794525146484375;i:4;b:0;i:5;a:14:{s:13:\"wpcom_user_id\";N;s:16:\"external_user_id\";i:1;s:12:\"display_name\";s:5:\"admin\";s:10:\"user_email\";s:22:\"diego.feliud@gmail.com\";s:10:\"user_roles\";a:1:{i:0;s:13:\"administrator\";}s:15:\"translated_role\";s:13:\"administrator\";s:7:\"is_cron\";b:0;s:7:\"is_rest\";b:0;s:9:\"is_xmlrpc\";b:0;s:10:\"is_wp_rest\";b:0;s:7:\"is_ajax\";b:0;s:11:\"is_wp_admin\";b:1;s:6:\"is_cli\";b:0;s:8:\"from_url\";s:136:\"http://localhost//wp-admin/plugins.php?action=deactivate&plugin=jetpack%2Fjetpack.php&plugin_status=all&paged=1&s&_wpnonce=24d2958ad1\";}}', 'no'),
(779, 'jpsq_sync-1540057996.289174-708055-29', 'a:6:{i:0;s:21:\"jetpack_sync_callable\";i:1;a:2:{i:0;s:8:\"home_url\";i:1;s:20:\"http://localhost/\";}i:2;i:1;i:3;d:1540057996.289154052734375;i:4;b:0;i:5;a:14:{s:13:\"wpcom_user_id\";N;s:16:\"external_user_id\";i:1;s:12:\"display_name\";s:5:\"admin\";s:10:\"user_email\";s:22:\"diego.feliud@gmail.com\";s:10:\"user_roles\";a:1:{i:0;s:13:\"administrator\";}s:15:\"translated_role\";s:13:\"administrator\";s:7:\"is_cron\";b:0;s:7:\"is_rest\";b:0;s:9:\"is_xmlrpc\";b:0;s:10:\"is_wp_rest\";b:0;s:7:\"is_ajax\";b:0;s:11:\"is_wp_admin\";b:1;s:6:\"is_cli\";b:0;s:8:\"from_url\";s:136:\"http://localhost//wp-admin/plugins.php?action=deactivate&plugin=jetpack%2Fjetpack.php&plugin_status=all&paged=1&s&_wpnonce=24d2958ad1\";}}', 'no'),
(780, 'jpsq_sync-1540057996.289344-708055-30', 'a:6:{i:0;s:21:\"jetpack_sync_callable\";i:1;a:2:{i:0;s:16:\"single_user_site\";i:1;b:1;}i:2;i:1;i:3;d:1540057996.2893249988555908203125;i:4;b:0;i:5;a:14:{s:13:\"wpcom_user_id\";N;s:16:\"external_user_id\";i:1;s:12:\"display_name\";s:5:\"admin\";s:10:\"user_email\";s:22:\"diego.feliud@gmail.com\";s:10:\"user_roles\";a:1:{i:0;s:13:\"administrator\";}s:15:\"translated_role\";s:13:\"administrator\";s:7:\"is_cron\";b:0;s:7:\"is_rest\";b:0;s:9:\"is_xmlrpc\";b:0;s:10:\"is_wp_rest\";b:0;s:7:\"is_ajax\";b:0;s:11:\"is_wp_admin\";b:1;s:6:\"is_cli\";b:0;s:8:\"from_url\";s:136:\"http://localhost//wp-admin/plugins.php?action=deactivate&plugin=jetpack%2Fjetpack.php&plugin_status=all&paged=1&s&_wpnonce=24d2958ad1\";}}', 'no'),
(781, 'jpsq_sync-1540057996.289511-708055-31', 'a:6:{i:0;s:21:\"jetpack_sync_callable\";i:1;a:2:{i:0;s:7:\"updates\";i:1;a:5:{s:7:\"plugins\";i:0;s:6:\"themes\";i:0;s:9:\"wordpress\";i:0;s:12:\"translations\";i:0;s:5:\"total\";i:0;}}i:2;i:1;i:3;d:1540057996.289493083953857421875;i:4;b:0;i:5;a:14:{s:13:\"wpcom_user_id\";N;s:16:\"external_user_id\";i:1;s:12:\"display_name\";s:5:\"admin\";s:10:\"user_email\";s:22:\"diego.feliud@gmail.com\";s:10:\"user_roles\";a:1:{i:0;s:13:\"administrator\";}s:15:\"translated_role\";s:13:\"administrator\";s:7:\"is_cron\";b:0;s:7:\"is_rest\";b:0;s:9:\"is_xmlrpc\";b:0;s:10:\"is_wp_rest\";b:0;s:7:\"is_ajax\";b:0;s:11:\"is_wp_admin\";b:1;s:6:\"is_cli\";b:0;s:8:\"from_url\";s:136:\"http://localhost//wp-admin/plugins.php?action=deactivate&plugin=jetpack%2Fjetpack.php&plugin_status=all&paged=1&s&_wpnonce=24d2958ad1\";}}', 'no'),
(782, 'jpsq_sync-1540057996.289680-708055-32', 'a:6:{i:0;s:21:\"jetpack_sync_callable\";i:1;a:2:{i:0;s:28:\"has_file_system_write_access\";i:1;b:1;}i:2;i:1;i:3;d:1540057996.289661884307861328125;i:4;b:0;i:5;a:14:{s:13:\"wpcom_user_id\";N;s:16:\"external_user_id\";i:1;s:12:\"display_name\";s:5:\"admin\";s:10:\"user_email\";s:22:\"diego.feliud@gmail.com\";s:10:\"user_roles\";a:1:{i:0;s:13:\"administrator\";}s:15:\"translated_role\";s:13:\"administrator\";s:7:\"is_cron\";b:0;s:7:\"is_rest\";b:0;s:9:\"is_xmlrpc\";b:0;s:10:\"is_wp_rest\";b:0;s:7:\"is_ajax\";b:0;s:11:\"is_wp_admin\";b:1;s:6:\"is_cli\";b:0;s:8:\"from_url\";s:136:\"http://localhost//wp-admin/plugins.php?action=deactivate&plugin=jetpack%2Fjetpack.php&plugin_status=all&paged=1&s&_wpnonce=24d2958ad1\";}}', 'no'),
(783, 'jpsq_sync-1540057996.289847-708055-33', 'a:6:{i:0;s:21:\"jetpack_sync_callable\";i:1;a:2:{i:0;s:21:\"is_version_controlled\";i:1;b:0;}i:2;i:1;i:3;d:1540057996.2898290157318115234375;i:4;b:0;i:5;a:14:{s:13:\"wpcom_user_id\";N;s:16:\"external_user_id\";i:1;s:12:\"display_name\";s:5:\"admin\";s:10:\"user_email\";s:22:\"diego.feliud@gmail.com\";s:10:\"user_roles\";a:1:{i:0;s:13:\"administrator\";}s:15:\"translated_role\";s:13:\"administrator\";s:7:\"is_cron\";b:0;s:7:\"is_rest\";b:0;s:9:\"is_xmlrpc\";b:0;s:10:\"is_wp_rest\";b:0;s:7:\"is_ajax\";b:0;s:11:\"is_wp_admin\";b:1;s:6:\"is_cli\";b:0;s:8:\"from_url\";s:136:\"http://localhost//wp-admin/plugins.php?action=deactivate&plugin=jetpack%2Fjetpack.php&plugin_status=all&paged=1&s&_wpnonce=24d2958ad1\";}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(784, 'jpsq_sync-1540057996.290232-708055-34', 'a:6:{i:0;s:21:\"jetpack_sync_callable\";i:1;a:2:{i:0;s:10:\"taxonomies\";i:1;a:11:{s:8:\"category\";O:8:\"stdClass\":23:{s:4:\"name\";s:8:\"category\";s:5:\"label\";s:11:\"Categorías\";s:6:\"labels\";O:8:\"stdClass\":23:{s:4:\"name\";s:11:\"Categorías\";s:13:\"singular_name\";s:10:\"Categoría\";s:12:\"search_items\";s:18:\"Buscar categorías\";s:13:\"popular_items\";N;s:9:\"all_items\";s:21:\"Todas las categorías\";s:11:\"parent_item\";s:19:\"Categoría superior\";s:17:\"parent_item_colon\";s:20:\"Categoría superior:\";s:9:\"edit_item\";s:17:\"Editar Categoría\";s:9:\"view_item\";s:14:\"Ver categoría\";s:11:\"update_item\";s:21:\"Actualizar categoría\";s:12:\"add_new_item\";s:24:\"Añadir nueva categoría\";s:13:\"new_item_name\";s:29:\"Nombre de la nueva categoría\";s:26:\"separate_items_with_commas\";N;s:19:\"add_or_remove_items\";N;s:21:\"choose_from_most_used\";N;s:9:\"not_found\";s:30:\"No se encontraron categorías.\";s:8:\"no_terms\";s:18:\"No hay categorías\";s:21:\"items_list_navigation\";s:39:\"Navegación por la lista de categorías\";s:10:\"items_list\";s:20:\"Lista de categorías\";s:9:\"most_used\";s:15:\"Más utilizadas\";s:13:\"back_to_items\";s:27:\"&larr; Volver a categorías\";s:9:\"menu_name\";s:11:\"Categorías\";s:14:\"name_admin_bar\";s:8:\"category\";}s:11:\"description\";s:0:\"\";s:6:\"public\";b:1;s:18:\"publicly_queryable\";b:1;s:12:\"hierarchical\";b:1;s:7:\"show_ui\";b:1;s:12:\"show_in_menu\";b:1;s:17:\"show_in_nav_menus\";b:1;s:13:\"show_tagcloud\";b:1;s:18:\"show_in_quick_edit\";b:1;s:17:\"show_admin_column\";b:1;s:11:\"meta_box_cb\";s:24:\"post_categories_meta_box\";s:11:\"object_type\";a:1:{i:0;s:4:\"post\";}s:3:\"cap\";O:8:\"stdClass\":4:{s:12:\"manage_terms\";s:17:\"manage_categories\";s:10:\"edit_terms\";s:15:\"edit_categories\";s:12:\"delete_terms\";s:17:\"delete_categories\";s:12:\"assign_terms\";s:17:\"assign_categories\";}s:7:\"rewrite\";O:8:\"stdClass\":4:{s:10:\"with_front\";b:1;s:12:\"hierarchical\";b:1;s:7:\"ep_mask\";i:512;s:4:\"slug\";s:8:\"category\";}s:9:\"query_var\";s:13:\"category_name\";s:21:\"update_count_callback\";N;s:12:\"show_in_rest\";b:1;s:9:\"rest_base\";s:10:\"categories\";s:21:\"rest_controller_class\";s:24:\"WP_REST_Terms_Controller\";s:8:\"_builtin\";b:1;}s:8:\"post_tag\";O:8:\"stdClass\":23:{s:4:\"name\";s:8:\"post_tag\";s:5:\"label\";s:9:\"Etiquetas\";s:6:\"labels\";O:8:\"stdClass\":23:{s:4:\"name\";s:9:\"Etiquetas\";s:13:\"singular_name\";s:8:\"Etiqueta\";s:12:\"search_items\";s:16:\"Buscar etiquetas\";s:13:\"popular_items\";s:19:\"Etiquetas populares\";s:9:\"all_items\";s:19:\"Todas las etiquetas\";s:11:\"parent_item\";N;s:17:\"parent_item_colon\";N;s:9:\"edit_item\";s:15:\"Editar etiqueta\";s:9:\"view_item\";s:12:\"Ver etiqueta\";s:11:\"update_item\";s:19:\"Actualizar etiqueta\";s:12:\"add_new_item\";s:22:\"Añadir nueva etiqueta\";s:13:\"new_item_name\";s:27:\"Nombre de la nueva etiqueta\";s:26:\"separate_items_with_commas\";s:31:\"Separa las etiquetas con comas.\";s:19:\"add_or_remove_items\";s:26:\"Añadir o quitar etiquetas\";s:21:\"choose_from_most_used\";s:41:\"Elige entre las etiquetas más utilizadas\";s:9:\"not_found\";s:31:\"No se han encontrado etiquetas.\";s:8:\"no_terms\";s:13:\"Sin etiquetas\";s:21:\"items_list_navigation\";s:37:\"Navegación por la lista de etiquetas\";s:10:\"items_list\";s:18:\"Lista de etiquetas\";s:9:\"most_used\";s:15:\"Más utilizadas\";s:13:\"back_to_items\";s:25:\"&larr; Volver a etiquetas\";s:9:\"menu_name\";s:9:\"Etiquetas\";s:14:\"name_admin_bar\";s:8:\"post_tag\";}s:11:\"description\";s:0:\"\";s:6:\"public\";b:1;s:18:\"publicly_queryable\";b:1;s:12:\"hierarchical\";b:0;s:7:\"show_ui\";b:1;s:12:\"show_in_menu\";b:1;s:17:\"show_in_nav_menus\";b:1;s:13:\"show_tagcloud\";b:1;s:18:\"show_in_quick_edit\";b:1;s:17:\"show_admin_column\";b:1;s:11:\"meta_box_cb\";s:18:\"post_tags_meta_box\";s:11:\"object_type\";a:1:{i:0;s:4:\"post\";}s:3:\"cap\";O:8:\"stdClass\":4:{s:12:\"manage_terms\";s:16:\"manage_post_tags\";s:10:\"edit_terms\";s:14:\"edit_post_tags\";s:12:\"delete_terms\";s:16:\"delete_post_tags\";s:12:\"assign_terms\";s:16:\"assign_post_tags\";}s:7:\"rewrite\";O:8:\"stdClass\":4:{s:10:\"with_front\";b:1;s:12:\"hierarchical\";b:0;s:7:\"ep_mask\";i:1024;s:4:\"slug\";s:3:\"tag\";}s:9:\"query_var\";s:3:\"tag\";s:21:\"update_count_callback\";N;s:12:\"show_in_rest\";b:1;s:9:\"rest_base\";s:4:\"tags\";s:21:\"rest_controller_class\";s:24:\"WP_REST_Terms_Controller\";s:8:\"_builtin\";b:1;}s:8:\"nav_menu\";O:8:\"stdClass\":23:{s:4:\"name\";s:8:\"nav_menu\";s:5:\"label\";s:21:\"Menús de navegación\";s:6:\"labels\";O:8:\"stdClass\":24:{s:4:\"name\";s:21:\"Menús de navegación\";s:13:\"singular_name\";s:20:\"Menú de Navegación\";s:12:\"search_items\";s:16:\"Buscar etiquetas\";s:13:\"popular_items\";s:19:\"Etiquetas populares\";s:9:\"all_items\";s:21:\"Menús de navegación\";s:11:\"parent_item\";N;s:17:\"parent_item_colon\";N;s:9:\"edit_item\";s:15:\"Editar etiqueta\";s:9:\"view_item\";s:12:\"Ver etiqueta\";s:11:\"update_item\";s:19:\"Actualizar etiqueta\";s:12:\"add_new_item\";s:22:\"Añadir nueva etiqueta\";s:13:\"new_item_name\";s:27:\"Nombre de la nueva etiqueta\";s:26:\"separate_items_with_commas\";s:31:\"Separa las etiquetas con comas.\";s:19:\"add_or_remove_items\";s:26:\"Añadir o quitar etiquetas\";s:21:\"choose_from_most_used\";s:41:\"Elige entre las etiquetas más utilizadas\";s:9:\"not_found\";s:31:\"No se han encontrado etiquetas.\";s:8:\"no_terms\";s:13:\"Sin etiquetas\";s:21:\"items_list_navigation\";s:37:\"Navegación por la lista de etiquetas\";s:10:\"items_list\";s:18:\"Lista de etiquetas\";s:9:\"most_used\";s:15:\"Más utilizadas\";s:13:\"back_to_items\";s:25:\"&larr; Volver a etiquetas\";s:9:\"menu_name\";s:21:\"Menús de navegación\";s:14:\"name_admin_bar\";s:20:\"Menú de Navegación\";s:8:\"archives\";s:21:\"Menús de navegación\";}s:11:\"description\";s:0:\"\";s:6:\"public\";b:0;s:18:\"publicly_queryable\";b:0;s:12:\"hierarchical\";b:0;s:7:\"show_ui\";b:0;s:12:\"show_in_menu\";b:0;s:17:\"show_in_nav_menus\";b:0;s:13:\"show_tagcloud\";b:0;s:18:\"show_in_quick_edit\";b:0;s:17:\"show_admin_column\";b:0;s:11:\"meta_box_cb\";s:18:\"post_tags_meta_box\";s:11:\"object_type\";a:1:{i:0;s:13:\"nav_menu_item\";}s:3:\"cap\";O:8:\"stdClass\":4:{s:12:\"manage_terms\";s:17:\"manage_categories\";s:10:\"edit_terms\";s:17:\"manage_categories\";s:12:\"delete_terms\";s:17:\"manage_categories\";s:12:\"assign_terms\";s:10:\"edit_posts\";}s:7:\"rewrite\";b:0;s:9:\"query_var\";b:0;s:21:\"update_count_callback\";N;s:12:\"show_in_rest\";b:0;s:9:\"rest_base\";b:0;s:21:\"rest_controller_class\";N;s:8:\"_builtin\";b:1;}s:13:\"link_category\";O:8:\"stdClass\":23:{s:4:\"name\";s:13:\"link_category\";s:5:\"label\";s:22:\"Categorías de enlaces\";s:6:\"labels\";O:8:\"stdClass\":24:{s:4:\"name\";s:22:\"Categorías de enlaces\";s:13:\"singular_name\";s:21:\"Categoría de enlaces\";s:12:\"search_items\";s:29:\"Buscar categorías de enlaces\";s:13:\"popular_items\";N;s:9:\"all_items\";s:32:\"Todas las categorías de enlaces\";s:11:\"parent_item\";N;s:17:\"parent_item_colon\";N;s:9:\"edit_item\";s:28:\"Editar categoría del enlace\";s:9:\"view_item\";s:12:\"Ver etiqueta\";s:11:\"update_item\";s:32:\"Actualizar categoría de enlaces\";s:12:\"add_new_item\";s:35:\"Añadir nueva categoría de enlaces\";s:13:\"new_item_name\";s:37:\"Nuevo nombre de categoría de enlaces\";s:26:\"separate_items_with_commas\";N;s:19:\"add_or_remove_items\";N;s:21:\"choose_from_most_used\";N;s:9:\"not_found\";s:31:\"No se han encontrado etiquetas.\";s:8:\"no_terms\";s:13:\"Sin etiquetas\";s:21:\"items_list_navigation\";s:37:\"Navegación por la lista de etiquetas\";s:10:\"items_list\";s:18:\"Lista de etiquetas\";s:9:\"most_used\";s:15:\"Más utilizadas\";s:13:\"back_to_items\";s:37:\"&larr; Volver a categorías de enlace\";s:9:\"menu_name\";s:22:\"Categorías de enlaces\";s:14:\"name_admin_bar\";s:21:\"Categoría de enlaces\";s:8:\"archives\";s:32:\"Todas las categorías de enlaces\";}s:11:\"description\";s:0:\"\";s:6:\"public\";b:0;s:18:\"publicly_queryable\";b:0;s:12:\"hierarchical\";b:0;s:7:\"show_ui\";b:1;s:12:\"show_in_menu\";b:1;s:17:\"show_in_nav_menus\";b:0;s:13:\"show_tagcloud\";b:1;s:18:\"show_in_quick_edit\";b:1;s:17:\"show_admin_column\";b:0;s:11:\"meta_box_cb\";s:18:\"post_tags_meta_box\";s:11:\"object_type\";a:1:{i:0;s:4:\"link\";}s:3:\"cap\";O:8:\"stdClass\":4:{s:12:\"manage_terms\";s:12:\"manage_links\";s:10:\"edit_terms\";s:12:\"manage_links\";s:12:\"delete_terms\";s:12:\"manage_links\";s:12:\"assign_terms\";s:12:\"manage_links\";}s:7:\"rewrite\";b:0;s:9:\"query_var\";b:0;s:21:\"update_count_callback\";N;s:12:\"show_in_rest\";b:0;s:9:\"rest_base\";b:0;s:21:\"rest_controller_class\";N;s:8:\"_builtin\";b:1;}s:11:\"post_format\";O:8:\"stdClass\":23:{s:4:\"name\";s:11:\"post_format\";s:5:\"label\";s:7:\"Formato\";s:6:\"labels\";O:8:\"stdClass\":24:{s:4:\"name\";s:7:\"Formato\";s:13:\"singular_name\";s:7:\"Formato\";s:12:\"search_items\";s:16:\"Buscar etiquetas\";s:13:\"popular_items\";s:19:\"Etiquetas populares\";s:9:\"all_items\";s:7:\"Formato\";s:11:\"parent_item\";N;s:17:\"parent_item_colon\";N;s:9:\"edit_item\";s:15:\"Editar etiqueta\";s:9:\"view_item\";s:12:\"Ver etiqueta\";s:11:\"update_item\";s:19:\"Actualizar etiqueta\";s:12:\"add_new_item\";s:22:\"Añadir nueva etiqueta\";s:13:\"new_item_name\";s:27:\"Nombre de la nueva etiqueta\";s:26:\"separate_items_with_commas\";s:31:\"Separa las etiquetas con comas.\";s:19:\"add_or_remove_items\";s:26:\"Añadir o quitar etiquetas\";s:21:\"choose_from_most_used\";s:41:\"Elige entre las etiquetas más utilizadas\";s:9:\"not_found\";s:31:\"No se han encontrado etiquetas.\";s:8:\"no_terms\";s:13:\"Sin etiquetas\";s:21:\"items_list_navigation\";s:37:\"Navegación por la lista de etiquetas\";s:10:\"items_list\";s:18:\"Lista de etiquetas\";s:9:\"most_used\";s:15:\"Más utilizadas\";s:13:\"back_to_items\";s:25:\"&larr; Volver a etiquetas\";s:9:\"menu_name\";s:7:\"Formato\";s:14:\"name_admin_bar\";s:7:\"Formato\";s:8:\"archives\";s:7:\"Formato\";}s:11:\"description\";s:0:\"\";s:6:\"public\";b:1;s:18:\"publicly_queryable\";b:1;s:12:\"hierarchical\";b:0;s:7:\"show_ui\";b:0;s:12:\"show_in_menu\";b:0;s:17:\"show_in_nav_menus\";b:0;s:13:\"show_tagcloud\";b:0;s:18:\"show_in_quick_edit\";b:0;s:17:\"show_admin_column\";b:0;s:11:\"meta_box_cb\";s:18:\"post_tags_meta_box\";s:11:\"object_type\";a:1:{i:0;s:4:\"post\";}s:3:\"cap\";O:8:\"stdClass\":4:{s:12:\"manage_terms\";s:17:\"manage_categories\";s:10:\"edit_terms\";s:17:\"manage_categories\";s:12:\"delete_terms\";s:17:\"manage_categories\";s:12:\"assign_terms\";s:10:\"edit_posts\";}s:7:\"rewrite\";O:8:\"stdClass\":4:{s:10:\"with_front\";b:1;s:12:\"hierarchical\";b:0;s:7:\"ep_mask\";i:0;s:4:\"slug\";s:4:\"type\";}s:9:\"query_var\";s:11:\"post_format\";s:21:\"update_count_callback\";N;s:12:\"show_in_rest\";b:0;s:9:\"rest_base\";b:0;s:21:\"rest_controller_class\";N;s:8:\"_builtin\";b:1;}s:12:\"product_type\";O:8:\"stdClass\":23:{s:4:\"name\";s:12:\"product_type\";s:5:\"label\";s:9:\"Etiquetas\";s:6:\"labels\";O:8:\"stdClass\":23:{s:4:\"name\";s:9:\"Etiquetas\";s:13:\"singular_name\";s:8:\"Etiqueta\";s:12:\"search_items\";s:16:\"Buscar etiquetas\";s:13:\"popular_items\";s:19:\"Etiquetas populares\";s:9:\"all_items\";s:19:\"Todas las etiquetas\";s:11:\"parent_item\";N;s:17:\"parent_item_colon\";N;s:9:\"edit_item\";s:15:\"Editar etiqueta\";s:9:\"view_item\";s:12:\"Ver etiqueta\";s:11:\"update_item\";s:19:\"Actualizar etiqueta\";s:12:\"add_new_item\";s:22:\"Añadir nueva etiqueta\";s:13:\"new_item_name\";s:27:\"Nombre de la nueva etiqueta\";s:26:\"separate_items_with_commas\";s:31:\"Separa las etiquetas con comas.\";s:19:\"add_or_remove_items\";s:26:\"Añadir o quitar etiquetas\";s:21:\"choose_from_most_used\";s:41:\"Elige entre las etiquetas más utilizadas\";s:9:\"not_found\";s:31:\"No se han encontrado etiquetas.\";s:8:\"no_terms\";s:13:\"Sin etiquetas\";s:21:\"items_list_navigation\";s:37:\"Navegación por la lista de etiquetas\";s:10:\"items_list\";s:18:\"Lista de etiquetas\";s:9:\"most_used\";s:15:\"Más utilizadas\";s:13:\"back_to_items\";s:25:\"&larr; Volver a etiquetas\";s:9:\"menu_name\";s:9:\"Etiquetas\";s:14:\"name_admin_bar\";s:12:\"product_type\";}s:11:\"description\";s:0:\"\";s:6:\"public\";b:0;s:18:\"publicly_queryable\";b:0;s:12:\"hierarchical\";b:0;s:7:\"show_ui\";b:0;s:12:\"show_in_menu\";b:0;s:17:\"show_in_nav_menus\";b:0;s:13:\"show_tagcloud\";b:0;s:18:\"show_in_quick_edit\";b:0;s:17:\"show_admin_column\";b:0;s:11:\"meta_box_cb\";s:18:\"post_tags_meta_box\";s:11:\"object_type\";a:1:{i:0;s:7:\"product\";}s:3:\"cap\";O:8:\"stdClass\":4:{s:12:\"manage_terms\";s:17:\"manage_categories\";s:10:\"edit_terms\";s:17:\"manage_categories\";s:12:\"delete_terms\";s:17:\"manage_categories\";s:12:\"assign_terms\";s:10:\"edit_posts\";}s:7:\"rewrite\";b:0;s:9:\"query_var\";s:12:\"product_type\";s:21:\"update_count_callback\";N;s:12:\"show_in_rest\";b:0;s:9:\"rest_base\";b:0;s:21:\"rest_controller_class\";N;s:8:\"_builtin\";b:0;}s:18:\"product_visibility\";O:8:\"stdClass\":23:{s:4:\"name\";s:18:\"product_visibility\";s:5:\"label\";s:9:\"Etiquetas\";s:6:\"labels\";O:8:\"stdClass\":23:{s:4:\"name\";s:9:\"Etiquetas\";s:13:\"singular_name\";s:8:\"Etiqueta\";s:12:\"search_items\";s:16:\"Buscar etiquetas\";s:13:\"popular_items\";s:19:\"Etiquetas populares\";s:9:\"all_items\";s:19:\"Todas las etiquetas\";s:11:\"parent_item\";N;s:17:\"parent_item_colon\";N;s:9:\"edit_item\";s:15:\"Editar etiqueta\";s:9:\"view_item\";s:12:\"Ver etiqueta\";s:11:\"update_item\";s:19:\"Actualizar etiqueta\";s:12:\"add_new_item\";s:22:\"Añadir nueva etiqueta\";s:13:\"new_item_name\";s:27:\"Nombre de la nueva etiqueta\";s:26:\"separate_items_with_commas\";s:31:\"Separa las etiquetas con comas.\";s:19:\"add_or_remove_items\";s:26:\"Añadir o quitar etiquetas\";s:21:\"choose_from_most_used\";s:41:\"Elige entre las etiquetas más utilizadas\";s:9:\"not_found\";s:31:\"No se han encontrado etiquetas.\";s:8:\"no_terms\";s:13:\"Sin etiquetas\";s:21:\"items_list_navigation\";s:37:\"Navegación por la lista de etiquetas\";s:10:\"items_list\";s:18:\"Lista de etiquetas\";s:9:\"most_used\";s:15:\"Más utilizadas\";s:13:\"back_to_items\";s:25:\"&larr; Volver a etiquetas\";s:9:\"menu_name\";s:9:\"Etiquetas\";s:14:\"name_admin_bar\";s:18:\"product_visibility\";}s:11:\"description\";s:0:\"\";s:6:\"public\";b:0;s:18:\"publicly_queryable\";b:0;s:12:\"hierarchical\";b:0;s:7:\"show_ui\";b:0;s:12:\"show_in_menu\";b:0;s:17:\"show_in_nav_menus\";b:0;s:13:\"show_tagcloud\";b:0;s:18:\"show_in_quick_edit\";b:0;s:17:\"show_admin_column\";b:0;s:11:\"meta_box_cb\";s:18:\"post_tags_meta_box\";s:11:\"object_type\";a:2:{i:0;s:7:\"product\";i:1;s:17:\"product_variation\";}s:3:\"cap\";O:8:\"stdClass\":4:{s:12:\"manage_terms\";s:17:\"manage_categories\";s:10:\"edit_terms\";s:17:\"manage_categories\";s:12:\"delete_terms\";s:17:\"manage_categories\";s:12:\"assign_terms\";s:10:\"edit_posts\";}s:7:\"rewrite\";b:0;s:9:\"query_var\";s:18:\"product_visibility\";s:21:\"update_count_callback\";N;s:12:\"show_in_rest\";b:0;s:9:\"rest_base\";b:0;s:21:\"rest_controller_class\";N;s:8:\"_builtin\";b:0;}s:11:\"product_cat\";O:8:\"stdClass\":23:{s:4:\"name\";s:11:\"product_cat\";s:5:\"label\";s:24:\"Categorías de productos\";s:6:\"labels\";O:8:\"stdClass\":24:{s:4:\"name\";s:24:\"Categorías de productos\";s:13:\"singular_name\";s:10:\"Categoría\";s:12:\"search_items\";s:18:\"Buscar categorías\";s:13:\"popular_items\";N;s:9:\"all_items\";s:21:\"Todas las categorías\";s:11:\"parent_item\";s:16:\"Categoría padre\";s:17:\"parent_item_colon\";s:17:\"Categoría padre:\";s:9:\"edit_item\";s:17:\"Editar categoría\";s:9:\"view_item\";s:14:\"Ver categoría\";s:11:\"update_item\";s:21:\"Actualizar categoría\";s:12:\"add_new_item\";s:24:\"Añadir nueva categoría\";s:13:\"new_item_name\";s:29:\"Nombre de la nueva categoría\";s:26:\"separate_items_with_commas\";N;s:19:\"add_or_remove_items\";N;s:21:\"choose_from_most_used\";N;s:9:\"not_found\";s:29:\"No se encontraron categorías\";s:8:\"no_terms\";s:18:\"No hay categorías\";s:21:\"items_list_navigation\";s:39:\"Navegación por la lista de categorías\";s:10:\"items_list\";s:20:\"Lista de categorías\";s:9:\"most_used\";s:15:\"Más utilizadas\";s:13:\"back_to_items\";s:27:\"&larr; Volver a categorías\";s:9:\"menu_name\";s:11:\"Categorías\";s:14:\"name_admin_bar\";s:10:\"Categoría\";s:8:\"archives\";s:21:\"Todas las categorías\";}s:11:\"description\";s:0:\"\";s:6:\"public\";b:1;s:18:\"publicly_queryable\";b:1;s:12:\"hierarchical\";b:1;s:7:\"show_ui\";b:1;s:12:\"show_in_menu\";b:1;s:17:\"show_in_nav_menus\";b:1;s:13:\"show_tagcloud\";b:1;s:18:\"show_in_quick_edit\";b:1;s:17:\"show_admin_column\";b:0;s:11:\"meta_box_cb\";s:24:\"post_categories_meta_box\";s:11:\"object_type\";a:1:{i:0;s:7:\"product\";}s:3:\"cap\";O:8:\"stdClass\":4:{s:12:\"manage_terms\";s:20:\"manage_product_terms\";s:10:\"edit_terms\";s:18:\"edit_product_terms\";s:12:\"delete_terms\";s:20:\"delete_product_terms\";s:12:\"assign_terms\";s:20:\"assign_product_terms\";}s:7:\"rewrite\";O:8:\"stdClass\":4:{s:10:\"with_front\";b:0;s:12:\"hierarchical\";b:1;s:7:\"ep_mask\";i:0;s:4:\"slug\";s:18:\"categoria-producto\";}s:9:\"query_var\";s:11:\"product_cat\";s:21:\"update_count_callback\";N;s:12:\"show_in_rest\";b:0;s:9:\"rest_base\";b:0;s:21:\"rest_controller_class\";N;s:8:\"_builtin\";b:0;}s:11:\"product_tag\";O:8:\"stdClass\":23:{s:4:\"name\";s:11:\"product_tag\";s:5:\"label\";s:22:\"Etiquetas del producto\";s:6:\"labels\";O:8:\"stdClass\":24:{s:4:\"name\";s:22:\"Etiquetas del producto\";s:13:\"singular_name\";s:8:\"Etiqueta\";s:12:\"search_items\";s:16:\"Buscar etiquetas\";s:13:\"popular_items\";s:19:\"Etiquetas populares\";s:9:\"all_items\";s:19:\"Todas las etiquetas\";s:11:\"parent_item\";N;s:17:\"parent_item_colon\";N;s:9:\"edit_item\";s:15:\"Editar etiqueta\";s:9:\"view_item\";s:12:\"Ver etiqueta\";s:11:\"update_item\";s:19:\"Actualizar etiqueta\";s:12:\"add_new_item\";s:22:\"Añadir nueva etiqueta\";s:13:\"new_item_name\";s:27:\"Nombre de la nueva etiqueta\";s:26:\"separate_items_with_commas\";s:27:\"Separar etiquetas con comas\";s:19:\"add_or_remove_items\";s:28:\"Añadir o eliminar etiquetas\";s:21:\"choose_from_most_used\";s:38:\"Elige de las etiquetas más utilizadas\";s:9:\"not_found\";s:27:\"No se encontraron etiquetas\";s:8:\"no_terms\";s:13:\"Sin etiquetas\";s:21:\"items_list_navigation\";s:37:\"Navegación por la lista de etiquetas\";s:10:\"items_list\";s:18:\"Lista de etiquetas\";s:9:\"most_used\";s:15:\"Más utilizadas\";s:13:\"back_to_items\";s:25:\"&larr; Volver a etiquetas\";s:9:\"menu_name\";s:9:\"Etiquetas\";s:14:\"name_admin_bar\";s:8:\"Etiqueta\";s:8:\"archives\";s:19:\"Todas las etiquetas\";}s:11:\"description\";s:0:\"\";s:6:\"public\";b:1;s:18:\"publicly_queryable\";b:1;s:12:\"hierarchical\";b:0;s:7:\"show_ui\";b:1;s:12:\"show_in_menu\";b:1;s:17:\"show_in_nav_menus\";b:1;s:13:\"show_tagcloud\";b:1;s:18:\"show_in_quick_edit\";b:1;s:17:\"show_admin_column\";b:0;s:11:\"meta_box_cb\";s:18:\"post_tags_meta_box\";s:11:\"object_type\";a:1:{i:0;s:7:\"product\";}s:3:\"cap\";O:8:\"stdClass\":4:{s:12:\"manage_terms\";s:20:\"manage_product_terms\";s:10:\"edit_terms\";s:18:\"edit_product_terms\";s:12:\"delete_terms\";s:20:\"delete_product_terms\";s:12:\"assign_terms\";s:20:\"assign_product_terms\";}s:7:\"rewrite\";O:8:\"stdClass\":4:{s:10:\"with_front\";b:0;s:12:\"hierarchical\";b:0;s:7:\"ep_mask\";i:0;s:4:\"slug\";s:17:\"etiqueta-producto\";}s:9:\"query_var\";s:11:\"product_tag\";s:21:\"update_count_callback\";N;s:12:\"show_in_rest\";b:0;s:9:\"rest_base\";b:0;s:21:\"rest_controller_class\";N;s:8:\"_builtin\";b:0;}s:22:\"product_shipping_class\";O:8:\"stdClass\":23:{s:4:\"name\";s:22:\"product_shipping_class\";s:5:\"label\";s:29:\"Clases de envío del producto\";s:6:\"labels\";O:8:\"stdClass\":24:{s:4:\"name\";s:29:\"Clases de envío del producto\";s:13:\"singular_name\";s:15:\"Clase de envío\";s:12:\"search_items\";s:23:\"Buscar clases de envío\";s:13:\"popular_items\";s:19:\"Etiquetas populares\";s:9:\"all_items\";s:26:\"Todas las clases de envío\";s:11:\"parent_item\";s:24:\"Clase de envío superior\";s:17:\"parent_item_colon\";s:25:\"Clase de envío superior:\";s:9:\"edit_item\";s:25:\"Modificar clase de envío\";s:9:\"view_item\";s:12:\"Ver etiqueta\";s:11:\"update_item\";s:26:\"Actualizar clase de envío\";s:12:\"add_new_item\";s:33:\"Añadir una nueva clase de envío\";s:13:\"new_item_name\";s:37:\"Nombre de la nueva de clase de envío\";s:26:\"separate_items_with_commas\";s:31:\"Separa las etiquetas con comas.\";s:19:\"add_or_remove_items\";s:26:\"Añadir o quitar etiquetas\";s:21:\"choose_from_most_used\";s:41:\"Elige entre las etiquetas más utilizadas\";s:9:\"not_found\";s:31:\"No se han encontrado etiquetas.\";s:8:\"no_terms\";s:13:\"Sin etiquetas\";s:21:\"items_list_navigation\";s:37:\"Navegación por la lista de etiquetas\";s:10:\"items_list\";s:18:\"Lista de etiquetas\";s:9:\"most_used\";s:15:\"Más utilizadas\";s:13:\"back_to_items\";s:25:\"&larr; Volver a etiquetas\";s:9:\"menu_name\";s:17:\"Clases de envíos\";s:14:\"name_admin_bar\";s:15:\"Clase de envío\";s:8:\"archives\";s:26:\"Todas las clases de envío\";}s:11:\"description\";s:0:\"\";s:6:\"public\";b:1;s:18:\"publicly_queryable\";b:1;s:12:\"hierarchical\";b:0;s:7:\"show_ui\";b:0;s:12:\"show_in_menu\";b:0;s:17:\"show_in_nav_menus\";b:0;s:13:\"show_tagcloud\";b:0;s:18:\"show_in_quick_edit\";b:0;s:17:\"show_admin_column\";b:0;s:11:\"meta_box_cb\";s:18:\"post_tags_meta_box\";s:11:\"object_type\";a:2:{i:0;s:7:\"product\";i:1;s:17:\"product_variation\";}s:3:\"cap\";O:8:\"stdClass\":4:{s:12:\"manage_terms\";s:20:\"manage_product_terms\";s:10:\"edit_terms\";s:18:\"edit_product_terms\";s:12:\"delete_terms\";s:20:\"delete_product_terms\";s:12:\"assign_terms\";s:20:\"assign_product_terms\";}s:7:\"rewrite\";b:0;s:9:\"query_var\";s:22:\"product_shipping_class\";s:21:\"update_count_callback\";N;s:12:\"show_in_rest\";b:0;s:9:\"rest_base\";b:0;s:21:\"rest_controller_class\";N;s:8:\"_builtin\";b:0;}s:9:\"publisher\";O:8:\"stdClass\":23:{s:4:\"name\";s:9:\"publisher\";s:5:\"label\";s:10:\"Publishers\";s:6:\"labels\";O:8:\"stdClass\":24:{s:4:\"name\";s:10:\"Publishers\";s:13:\"singular_name\";s:9:\"Publisher\";s:12:\"search_items\";s:17:\"Search Publishers\";s:13:\"popular_items\";s:18:\"Popular Publishers\";s:9:\"all_items\";s:14:\"All Publishers\";s:11:\"parent_item\";s:16:\"Parent Publisher\";s:17:\"parent_item_colon\";s:17:\"Parent Publisher:\";s:9:\"edit_item\";s:14:\"Edit Publisher\";s:9:\"view_item\";s:14:\"View Publisher\";s:11:\"update_item\";s:16:\"Update Publisher\";s:12:\"add_new_item\";s:17:\"Add New Publisher\";s:13:\"new_item_name\";s:18:\"New Publisher Name\";s:26:\"separate_items_with_commas\";s:31:\"Separate publishers with commas\";s:19:\"add_or_remove_items\";s:24:\"Add or remove publishers\";s:21:\"choose_from_most_used\";s:36:\"Choose from the most used publishers\";s:9:\"not_found\";s:20:\"No publishers found.\";s:8:\"no_terms\";s:18:\"No hay categorías\";s:21:\"items_list_navigation\";s:39:\"Navegación por la lista de categorías\";s:10:\"items_list\";s:20:\"Lista de categorías\";s:9:\"most_used\";s:15:\"Más utilizadas\";s:13:\"back_to_items\";s:27:\"&larr; Volver a categorías\";s:9:\"menu_name\";s:10:\"Publishers\";s:14:\"name_admin_bar\";s:9:\"Publisher\";s:8:\"archives\";s:14:\"All Publishers\";}s:11:\"description\";s:0:\"\";s:6:\"public\";b:1;s:18:\"publicly_queryable\";b:1;s:12:\"hierarchical\";b:1;s:7:\"show_ui\";b:1;s:12:\"show_in_menu\";b:1;s:17:\"show_in_nav_menus\";b:1;s:13:\"show_tagcloud\";b:1;s:18:\"show_in_quick_edit\";b:1;s:17:\"show_admin_column\";b:0;s:11:\"meta_box_cb\";s:24:\"post_categories_meta_box\";s:11:\"object_type\";a:2:{i:0;s:7:\"project\";i:1;s:7:\"product\";}s:3:\"cap\";O:8:\"stdClass\":4:{s:12:\"manage_terms\";s:17:\"manage_categories\";s:10:\"edit_terms\";s:17:\"manage_categories\";s:12:\"delete_terms\";s:17:\"manage_categories\";s:12:\"assign_terms\";s:10:\"edit_posts\";}s:7:\"rewrite\";O:8:\"stdClass\":4:{s:10:\"with_front\";b:1;s:12:\"hierarchical\";b:0;s:7:\"ep_mask\";i:0;s:4:\"slug\";s:10:\"publishers\";}s:9:\"query_var\";s:9:\"publisher\";s:21:\"update_count_callback\";N;s:12:\"show_in_rest\";b:0;s:9:\"rest_base\";b:0;s:21:\"rest_controller_class\";N;s:8:\"_builtin\";b:0;}}}i:2;i:1;i:3;d:1540057996.2902109622955322265625;i:4;b:0;i:5;a:14:{s:13:\"wpcom_user_id\";N;s:16:\"external_user_id\";i:1;s:12:\"display_name\";s:5:\"admin\";s:10:\"user_email\";s:22:\"diego.feliud@gmail.com\";s:10:\"user_roles\";a:1:{i:0;s:13:\"administrator\";}s:15:\"translated_role\";s:13:\"administrator\";s:7:\"is_cron\";b:0;s:7:\"is_rest\";b:0;s:9:\"is_xmlrpc\";b:0;s:10:\"is_wp_rest\";b:0;s:7:\"is_ajax\";b:0;s:11:\"is_wp_admin\";b:1;s:6:\"is_cli\";b:0;s:8:\"from_url\";s:136:\"http://localhost//wp-admin/plugins.php?action=deactivate&plugin=jetpack%2Fjetpack.php&plugin_status=all&paged=1&s&_wpnonce=24d2958ad1\";}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(785, 'jpsq_sync-1540057996.292102-708055-35', 'a:6:{i:0;s:21:\"jetpack_sync_callable\";i:1;a:2:{i:0;s:10:\"post_types\";i:1;a:16:{s:4:\"post\";O:8:\"stdClass\":26:{s:4:\"name\";s:4:\"post\";s:5:\"label\";s:8:\"Entradas\";s:6:\"labels\";O:8:\"stdClass\":26:{s:4:\"name\";s:8:\"Entradas\";s:13:\"singular_name\";s:7:\"Entrada\";s:7:\"add_new\";s:13:\"Añadir nueva\";s:12:\"add_new_item\";s:21:\"Añadir nueva entrada\";s:9:\"edit_item\";s:14:\"Editar entrada\";s:8:\"new_item\";s:13:\"Nueva entrada\";s:9:\"view_item\";s:11:\"Ver entrada\";s:10:\"view_items\";s:12:\"Ver entradas\";s:12:\"search_items\";s:15:\"Buscar entradas\";s:9:\"not_found\";s:27:\"No se encontraron entradas.\";s:18:\"not_found_in_trash\";s:39:\"Ningún post encontrado en la papelera.\";s:17:\"parent_item_colon\";N;s:9:\"all_items\";s:18:\"Todas las entradas\";s:8:\"archives\";s:20:\"Archivos de entradas\";s:10:\"attributes\";s:20:\"Atributos de entrada\";s:16:\"insert_into_item\";s:22:\"Insertar en la entrada\";s:21:\"uploaded_to_this_item\";s:21:\"Subido a esta entrada\";s:14:\"featured_image\";s:16:\"Imagen destacada\";s:18:\"set_featured_image\";s:27:\"Establecer imagen destacada\";s:21:\"remove_featured_image\";s:23:\"Borrar imagen destacada\";s:18:\"use_featured_image\";s:26:\"Usar como imagen destacada\";s:17:\"filter_items_list\";s:27:\"Lista de entradas filtradas\";s:21:\"items_list_navigation\";s:38:\"Navegación por el listado de entradas\";s:10:\"items_list\";s:17:\"Lista de entradas\";s:9:\"menu_name\";s:8:\"Entradas\";s:14:\"name_admin_bar\";s:7:\"Entrada\";}s:11:\"description\";s:0:\"\";s:6:\"public\";b:1;s:12:\"hierarchical\";b:0;s:19:\"exclude_from_search\";b:0;s:18:\"publicly_queryable\";b:1;s:7:\"show_ui\";b:1;s:12:\"show_in_menu\";b:1;s:17:\"show_in_nav_menus\";b:1;s:17:\"show_in_admin_bar\";b:1;s:13:\"menu_position\";i:5;s:15:\"capability_type\";s:4:\"post\";s:3:\"cap\";O:8:\"stdClass\":15:{s:9:\"edit_post\";s:9:\"edit_post\";s:9:\"read_post\";s:9:\"read_post\";s:11:\"delete_post\";s:11:\"delete_post\";s:10:\"edit_posts\";s:10:\"edit_posts\";s:17:\"edit_others_posts\";s:17:\"edit_others_posts\";s:13:\"publish_posts\";s:13:\"publish_posts\";s:18:\"read_private_posts\";s:18:\"read_private_posts\";s:4:\"read\";s:4:\"read\";s:12:\"delete_posts\";s:12:\"delete_posts\";s:20:\"delete_private_posts\";s:20:\"delete_private_posts\";s:22:\"delete_published_posts\";s:22:\"delete_published_posts\";s:19:\"delete_others_posts\";s:19:\"delete_others_posts\";s:18:\"edit_private_posts\";s:18:\"edit_private_posts\";s:20:\"edit_published_posts\";s:20:\"edit_published_posts\";s:12:\"create_posts\";s:10:\"edit_posts\";}s:12:\"map_meta_cap\";b:1;s:10:\"taxonomies\";a:0:{}s:11:\"has_archive\";b:0;s:7:\"rewrite\";b:0;s:9:\"query_var\";b:0;s:10:\"can_export\";b:1;s:16:\"delete_with_user\";b:1;s:12:\"show_in_rest\";b:1;s:9:\"rest_base\";s:5:\"posts\";s:8:\"_builtin\";b:1;s:10:\"_edit_link\";s:16:\"post.php?post=%d\";}s:4:\"page\";O:8:\"stdClass\":26:{s:4:\"name\";s:4:\"page\";s:5:\"label\";s:8:\"Páginas\";s:6:\"labels\";O:8:\"stdClass\":26:{s:4:\"name\";s:8:\"Páginas\";s:13:\"singular_name\";s:7:\"Página\";s:7:\"add_new\";s:13:\"Añadir nueva\";s:12:\"add_new_item\";s:21:\"Añadir nueva página\";s:9:\"edit_item\";s:14:\"Editar página\";s:8:\"new_item\";s:13:\"Nueva página\";s:9:\"view_item\";s:11:\"Ver página\";s:10:\"view_items\";s:12:\"Ver páginas\";s:12:\"search_items\";s:15:\"Buscar páginas\";s:9:\"not_found\";s:27:\"No se encontraron páginas.\";s:18:\"not_found_in_trash\";s:42:\"Ninguna página encontrada en la papelera.\";s:17:\"parent_item_colon\";s:17:\"Página superior:\";s:9:\"all_items\";s:18:\"Todas las páginas\";s:8:\"archives\";s:20:\"Archivos de páginas\";s:10:\"attributes\";s:20:\"Atributos de página\";s:16:\"insert_into_item\";s:22:\"Insertar en la página\";s:21:\"uploaded_to_this_item\";s:21:\"Subido a esta página\";s:14:\"featured_image\";s:16:\"Imagen destacada\";s:18:\"set_featured_image\";s:27:\"Establecer imagen destacada\";s:21:\"remove_featured_image\";s:23:\"Borrar imagen destacada\";s:18:\"use_featured_image\";s:26:\"Usar como imagen destacada\";s:17:\"filter_items_list\";s:27:\"Lista de páginas filtradas\";s:21:\"items_list_navigation\";s:38:\"Navegación por el listado de páginas\";s:10:\"items_list\";s:17:\"Lista de páginas\";s:9:\"menu_name\";s:8:\"Páginas\";s:14:\"name_admin_bar\";s:7:\"Página\";}s:11:\"description\";s:0:\"\";s:6:\"public\";b:1;s:12:\"hierarchical\";b:1;s:19:\"exclude_from_search\";b:0;s:18:\"publicly_queryable\";b:0;s:7:\"show_ui\";b:1;s:12:\"show_in_menu\";b:1;s:17:\"show_in_nav_menus\";b:1;s:17:\"show_in_admin_bar\";b:1;s:13:\"menu_position\";i:20;s:15:\"capability_type\";s:4:\"page\";s:3:\"cap\";O:8:\"stdClass\":15:{s:9:\"edit_post\";s:9:\"edit_page\";s:9:\"read_post\";s:9:\"read_page\";s:11:\"delete_post\";s:11:\"delete_page\";s:10:\"edit_posts\";s:10:\"edit_pages\";s:17:\"edit_others_posts\";s:17:\"edit_others_pages\";s:13:\"publish_posts\";s:13:\"publish_pages\";s:18:\"read_private_posts\";s:18:\"read_private_pages\";s:4:\"read\";s:4:\"read\";s:12:\"delete_posts\";s:12:\"delete_pages\";s:20:\"delete_private_posts\";s:20:\"delete_private_pages\";s:22:\"delete_published_posts\";s:22:\"delete_published_pages\";s:19:\"delete_others_posts\";s:19:\"delete_others_pages\";s:18:\"edit_private_posts\";s:18:\"edit_private_pages\";s:20:\"edit_published_posts\";s:20:\"edit_published_pages\";s:12:\"create_posts\";s:10:\"edit_pages\";}s:12:\"map_meta_cap\";b:1;s:10:\"taxonomies\";a:0:{}s:11:\"has_archive\";b:0;s:7:\"rewrite\";b:0;s:9:\"query_var\";b:0;s:10:\"can_export\";b:1;s:16:\"delete_with_user\";b:1;s:12:\"show_in_rest\";b:1;s:9:\"rest_base\";s:5:\"pages\";s:8:\"_builtin\";b:1;s:10:\"_edit_link\";s:16:\"post.php?post=%d\";}s:10:\"attachment\";O:8:\"stdClass\":25:{s:4:\"name\";s:10:\"attachment\";s:5:\"label\";s:6:\"Medios\";s:6:\"labels\";O:8:\"stdClass\":26:{s:4:\"name\";s:6:\"Medios\";s:13:\"singular_name\";s:6:\"Medios\";s:7:\"add_new\";s:13:\"Añadir nuevo\";s:12:\"add_new_item\";s:21:\"Añadir nueva entrada\";s:9:\"edit_item\";s:13:\"Editar medios\";s:8:\"new_item\";s:13:\"Nueva entrada\";s:9:\"view_item\";s:26:\"Ver la página del adjunto\";s:10:\"view_items\";s:12:\"Ver entradas\";s:12:\"search_items\";s:15:\"Buscar entradas\";s:9:\"not_found\";s:27:\"No se encontraron entradas.\";s:18:\"not_found_in_trash\";s:39:\"Ningún post encontrado en la papelera.\";s:17:\"parent_item_colon\";N;s:9:\"all_items\";s:6:\"Medios\";s:8:\"archives\";s:6:\"Medios\";s:10:\"attributes\";s:21:\"Atributos de adjuntos\";s:16:\"insert_into_item\";s:22:\"Insertar en la entrada\";s:21:\"uploaded_to_this_item\";s:21:\"Subido a esta entrada\";s:14:\"featured_image\";s:16:\"Imagen destacada\";s:18:\"set_featured_image\";s:27:\"Establecer imagen destacada\";s:21:\"remove_featured_image\";s:23:\"Borrar imagen destacada\";s:18:\"use_featured_image\";s:26:\"Usar como imagen destacada\";s:17:\"filter_items_list\";s:27:\"Lista de entradas filtradas\";s:21:\"items_list_navigation\";s:38:\"Navegación por el listado de entradas\";s:10:\"items_list\";s:17:\"Lista de entradas\";s:9:\"menu_name\";s:6:\"Medios\";s:14:\"name_admin_bar\";s:5:\"Medio\";}s:11:\"description\";s:0:\"\";s:6:\"public\";b:1;s:12:\"hierarchical\";b:0;s:19:\"exclude_from_search\";b:0;s:18:\"publicly_queryable\";b:1;s:7:\"show_ui\";b:1;s:12:\"show_in_menu\";b:1;s:17:\"show_in_nav_menus\";b:0;s:17:\"show_in_admin_bar\";b:1;s:15:\"capability_type\";s:4:\"post\";s:3:\"cap\";O:8:\"stdClass\":15:{s:9:\"edit_post\";s:9:\"edit_post\";s:9:\"read_post\";s:9:\"read_post\";s:11:\"delete_post\";s:11:\"delete_post\";s:10:\"edit_posts\";s:10:\"edit_posts\";s:17:\"edit_others_posts\";s:17:\"edit_others_posts\";s:13:\"publish_posts\";s:13:\"publish_posts\";s:18:\"read_private_posts\";s:18:\"read_private_posts\";s:4:\"read\";s:4:\"read\";s:12:\"delete_posts\";s:12:\"delete_posts\";s:20:\"delete_private_posts\";s:20:\"delete_private_posts\";s:22:\"delete_published_posts\";s:22:\"delete_published_posts\";s:19:\"delete_others_posts\";s:19:\"delete_others_posts\";s:18:\"edit_private_posts\";s:18:\"edit_private_posts\";s:20:\"edit_published_posts\";s:20:\"edit_published_posts\";s:12:\"create_posts\";s:12:\"upload_files\";}s:12:\"map_meta_cap\";b:1;s:10:\"taxonomies\";a:0:{}s:11:\"has_archive\";b:0;s:7:\"rewrite\";b:0;s:9:\"query_var\";b:0;s:10:\"can_export\";b:1;s:16:\"delete_with_user\";b:1;s:12:\"show_in_rest\";b:1;s:9:\"rest_base\";s:5:\"media\";s:8:\"_builtin\";b:1;s:10:\"_edit_link\";s:16:\"post.php?post=%d\";}s:8:\"revision\";O:8:\"stdClass\":25:{s:4:\"name\";s:8:\"revision\";s:5:\"label\";s:10:\"Revisiones\";s:6:\"labels\";O:8:\"stdClass\":26:{s:4:\"name\";s:10:\"Revisiones\";s:13:\"singular_name\";s:9:\"Revisión\";s:7:\"add_new\";s:13:\"Añadir nueva\";s:12:\"add_new_item\";s:21:\"Añadir nueva entrada\";s:9:\"edit_item\";s:14:\"Editar entrada\";s:8:\"new_item\";s:13:\"Nueva entrada\";s:9:\"view_item\";s:11:\"Ver entrada\";s:10:\"view_items\";s:12:\"Ver entradas\";s:12:\"search_items\";s:15:\"Buscar entradas\";s:9:\"not_found\";s:27:\"No se encontraron entradas.\";s:18:\"not_found_in_trash\";s:39:\"Ningún post encontrado en la papelera.\";s:17:\"parent_item_colon\";N;s:9:\"all_items\";s:10:\"Revisiones\";s:8:\"archives\";s:10:\"Revisiones\";s:10:\"attributes\";s:20:\"Atributos de entrada\";s:16:\"insert_into_item\";s:22:\"Insertar en la entrada\";s:21:\"uploaded_to_this_item\";s:21:\"Subido a esta entrada\";s:14:\"featured_image\";s:16:\"Imagen destacada\";s:18:\"set_featured_image\";s:27:\"Establecer imagen destacada\";s:21:\"remove_featured_image\";s:23:\"Borrar imagen destacada\";s:18:\"use_featured_image\";s:26:\"Usar como imagen destacada\";s:17:\"filter_items_list\";s:27:\"Lista de entradas filtradas\";s:21:\"items_list_navigation\";s:38:\"Navegación por el listado de entradas\";s:10:\"items_list\";s:17:\"Lista de entradas\";s:9:\"menu_name\";s:10:\"Revisiones\";s:14:\"name_admin_bar\";s:9:\"Revisión\";}s:11:\"description\";s:0:\"\";s:6:\"public\";b:0;s:12:\"hierarchical\";b:0;s:19:\"exclude_from_search\";b:1;s:18:\"publicly_queryable\";b:0;s:7:\"show_ui\";b:0;s:12:\"show_in_menu\";b:0;s:17:\"show_in_nav_menus\";b:0;s:17:\"show_in_admin_bar\";b:0;s:15:\"capability_type\";s:4:\"post\";s:3:\"cap\";O:8:\"stdClass\":15:{s:9:\"edit_post\";s:9:\"edit_post\";s:9:\"read_post\";s:9:\"read_post\";s:11:\"delete_post\";s:11:\"delete_post\";s:10:\"edit_posts\";s:10:\"edit_posts\";s:17:\"edit_others_posts\";s:17:\"edit_others_posts\";s:13:\"publish_posts\";s:13:\"publish_posts\";s:18:\"read_private_posts\";s:18:\"read_private_posts\";s:4:\"read\";s:4:\"read\";s:12:\"delete_posts\";s:12:\"delete_posts\";s:20:\"delete_private_posts\";s:20:\"delete_private_posts\";s:22:\"delete_published_posts\";s:22:\"delete_published_posts\";s:19:\"delete_others_posts\";s:19:\"delete_others_posts\";s:18:\"edit_private_posts\";s:18:\"edit_private_posts\";s:20:\"edit_published_posts\";s:20:\"edit_published_posts\";s:12:\"create_posts\";s:10:\"edit_posts\";}s:12:\"map_meta_cap\";b:1;s:10:\"taxonomies\";a:0:{}s:11:\"has_archive\";b:0;s:7:\"rewrite\";b:0;s:9:\"query_var\";b:0;s:10:\"can_export\";b:0;s:16:\"delete_with_user\";b:1;s:12:\"show_in_rest\";b:0;s:9:\"rest_base\";b:0;s:8:\"_builtin\";b:1;s:10:\"_edit_link\";s:24:\"revision.php?revision=%d\";}s:13:\"nav_menu_item\";O:8:\"stdClass\":26:{s:4:\"name\";s:13:\"nav_menu_item\";s:5:\"label\";s:34:\"Elementos del menú de navegación\";s:6:\"labels\";O:8:\"stdClass\":26:{s:4:\"name\";s:34:\"Elementos del menú de navegación\";s:13:\"singular_name\";s:33:\"Elemento del menú de navegación\";s:7:\"add_new\";s:13:\"Añadir nueva\";s:12:\"add_new_item\";s:21:\"Añadir nueva entrada\";s:9:\"edit_item\";s:14:\"Editar entrada\";s:8:\"new_item\";s:13:\"Nueva entrada\";s:9:\"view_item\";s:11:\"Ver entrada\";s:10:\"view_items\";s:12:\"Ver entradas\";s:12:\"search_items\";s:15:\"Buscar entradas\";s:9:\"not_found\";s:27:\"No se encontraron entradas.\";s:18:\"not_found_in_trash\";s:39:\"Ningún post encontrado en la papelera.\";s:17:\"parent_item_colon\";N;s:9:\"all_items\";s:34:\"Elementos del menú de navegación\";s:8:\"archives\";s:34:\"Elementos del menú de navegación\";s:10:\"attributes\";s:20:\"Atributos de entrada\";s:16:\"insert_into_item\";s:22:\"Insertar en la entrada\";s:21:\"uploaded_to_this_item\";s:21:\"Subido a esta entrada\";s:14:\"featured_image\";s:16:\"Imagen destacada\";s:18:\"set_featured_image\";s:27:\"Establecer imagen destacada\";s:21:\"remove_featured_image\";s:23:\"Borrar imagen destacada\";s:18:\"use_featured_image\";s:26:\"Usar como imagen destacada\";s:17:\"filter_items_list\";s:27:\"Lista de entradas filtradas\";s:21:\"items_list_navigation\";s:38:\"Navegación por el listado de entradas\";s:10:\"items_list\";s:17:\"Lista de entradas\";s:9:\"menu_name\";s:34:\"Elementos del menú de navegación\";s:14:\"name_admin_bar\";s:33:\"Elemento del menú de navegación\";}s:11:\"description\";s:0:\"\";s:6:\"public\";b:0;s:12:\"hierarchical\";b:0;s:19:\"exclude_from_search\";b:1;s:18:\"publicly_queryable\";b:0;s:7:\"show_ui\";b:0;s:12:\"show_in_menu\";b:0;s:17:\"show_in_nav_menus\";b:0;s:17:\"show_in_admin_bar\";b:0;s:8:\"supports\";a:0:{}s:15:\"capability_type\";s:4:\"post\";s:3:\"cap\";O:8:\"stdClass\":15:{s:9:\"edit_post\";s:9:\"edit_post\";s:9:\"read_post\";s:9:\"read_post\";s:11:\"delete_post\";s:11:\"delete_post\";s:10:\"edit_posts\";s:10:\"edit_posts\";s:17:\"edit_others_posts\";s:17:\"edit_others_posts\";s:13:\"publish_posts\";s:13:\"publish_posts\";s:18:\"read_private_posts\";s:18:\"read_private_posts\";s:4:\"read\";s:4:\"read\";s:12:\"delete_posts\";s:12:\"delete_posts\";s:20:\"delete_private_posts\";s:20:\"delete_private_posts\";s:22:\"delete_published_posts\";s:22:\"delete_published_posts\";s:19:\"delete_others_posts\";s:19:\"delete_others_posts\";s:18:\"edit_private_posts\";s:18:\"edit_private_posts\";s:20:\"edit_published_posts\";s:20:\"edit_published_posts\";s:12:\"create_posts\";s:10:\"edit_posts\";}s:12:\"map_meta_cap\";b:1;s:10:\"taxonomies\";a:0:{}s:11:\"has_archive\";b:0;s:7:\"rewrite\";b:0;s:9:\"query_var\";b:0;s:10:\"can_export\";b:1;s:16:\"delete_with_user\";b:0;s:12:\"show_in_rest\";b:0;s:9:\"rest_base\";b:0;s:8:\"_builtin\";b:1;s:10:\"_edit_link\";s:0:\"\";}s:10:\"custom_css\";O:8:\"stdClass\":25:{s:4:\"name\";s:10:\"custom_css\";s:5:\"label\";s:17:\"CSS personalizado\";s:6:\"labels\";O:8:\"stdClass\":26:{s:4:\"name\";s:17:\"CSS personalizado\";s:13:\"singular_name\";s:17:\"CSS personalizado\";s:7:\"add_new\";s:13:\"Añadir nueva\";s:12:\"add_new_item\";s:21:\"Añadir nueva entrada\";s:9:\"edit_item\";s:14:\"Editar entrada\";s:8:\"new_item\";s:13:\"Nueva entrada\";s:9:\"view_item\";s:11:\"Ver entrada\";s:10:\"view_items\";s:12:\"Ver entradas\";s:12:\"search_items\";s:15:\"Buscar entradas\";s:9:\"not_found\";s:27:\"No se encontraron entradas.\";s:18:\"not_found_in_trash\";s:39:\"Ningún post encontrado en la papelera.\";s:17:\"parent_item_colon\";N;s:9:\"all_items\";s:17:\"CSS personalizado\";s:8:\"archives\";s:17:\"CSS personalizado\";s:10:\"attributes\";s:20:\"Atributos de entrada\";s:16:\"insert_into_item\";s:22:\"Insertar en la entrada\";s:21:\"uploaded_to_this_item\";s:21:\"Subido a esta entrada\";s:14:\"featured_image\";s:16:\"Imagen destacada\";s:18:\"set_featured_image\";s:27:\"Establecer imagen destacada\";s:21:\"remove_featured_image\";s:23:\"Borrar imagen destacada\";s:18:\"use_featured_image\";s:26:\"Usar como imagen destacada\";s:17:\"filter_items_list\";s:27:\"Lista de entradas filtradas\";s:21:\"items_list_navigation\";s:38:\"Navegación por el listado de entradas\";s:10:\"items_list\";s:17:\"Lista de entradas\";s:9:\"menu_name\";s:17:\"CSS personalizado\";s:14:\"name_admin_bar\";s:17:\"CSS personalizado\";}s:11:\"description\";s:0:\"\";s:6:\"public\";b:0;s:12:\"hierarchical\";b:0;s:19:\"exclude_from_search\";b:1;s:18:\"publicly_queryable\";b:0;s:7:\"show_ui\";b:0;s:12:\"show_in_menu\";b:0;s:17:\"show_in_nav_menus\";b:0;s:17:\"show_in_admin_bar\";b:0;s:15:\"capability_type\";s:4:\"post\";s:3:\"cap\";O:8:\"stdClass\":13:{s:9:\"edit_post\";s:8:\"edit_css\";s:9:\"read_post\";s:4:\"read\";s:11:\"delete_post\";s:18:\"edit_theme_options\";s:10:\"edit_posts\";s:8:\"edit_css\";s:17:\"edit_others_posts\";s:8:\"edit_css\";s:13:\"publish_posts\";s:18:\"edit_theme_options\";s:18:\"read_private_posts\";s:4:\"read\";s:12:\"delete_posts\";s:18:\"edit_theme_options\";s:22:\"delete_published_posts\";s:18:\"edit_theme_options\";s:20:\"delete_private_posts\";s:18:\"edit_theme_options\";s:19:\"delete_others_posts\";s:18:\"edit_theme_options\";s:20:\"edit_published_posts\";s:8:\"edit_css\";s:12:\"create_posts\";s:8:\"edit_css\";}s:12:\"map_meta_cap\";b:0;s:10:\"taxonomies\";a:0:{}s:11:\"has_archive\";b:0;s:7:\"rewrite\";b:0;s:9:\"query_var\";b:0;s:10:\"can_export\";b:1;s:16:\"delete_with_user\";b:0;s:12:\"show_in_rest\";b:0;s:9:\"rest_base\";b:0;s:8:\"_builtin\";b:1;s:10:\"_edit_link\";s:0:\"\";}s:19:\"customize_changeset\";O:8:\"stdClass\":25:{s:4:\"name\";s:19:\"customize_changeset\";s:5:\"label\";s:17:\"Grupos de cambios\";s:6:\"labels\";O:8:\"stdClass\":26:{s:4:\"name\";s:17:\"Grupos de cambios\";s:13:\"singular_name\";s:16:\"Grupo de cambios\";s:7:\"add_new\";s:13:\"Añadir nuevo\";s:12:\"add_new_item\";s:30:\"Añadir nuevo grupo de cambios\";s:9:\"edit_item\";s:23:\"Editar grupo de cambios\";s:8:\"new_item\";s:22:\"Nuevo grupo de cambios\";s:9:\"view_item\";s:23:\"Ver el grupo de cambios\";s:10:\"view_items\";s:12:\"Ver entradas\";s:12:\"search_items\";s:24:\"Buscar grupos de cambios\";s:9:\"not_found\";s:39:\"No se han encontrado grupos de cambios.\";s:18:\"not_found_in_trash\";s:57:\"No se han encontrado conjuntos de cambios en la papelera.\";s:17:\"parent_item_colon\";N;s:9:\"all_items\";s:24:\"Todo el grupo de cambios\";s:8:\"archives\";s:24:\"Todo el grupo de cambios\";s:10:\"attributes\";s:20:\"Atributos de entrada\";s:16:\"insert_into_item\";s:22:\"Insertar en la entrada\";s:21:\"uploaded_to_this_item\";s:21:\"Subido a esta entrada\";s:14:\"featured_image\";s:16:\"Imagen destacada\";s:18:\"set_featured_image\";s:27:\"Establecer imagen destacada\";s:21:\"remove_featured_image\";s:23:\"Borrar imagen destacada\";s:18:\"use_featured_image\";s:26:\"Usar como imagen destacada\";s:17:\"filter_items_list\";s:27:\"Lista de entradas filtradas\";s:21:\"items_list_navigation\";s:38:\"Navegación por el listado de entradas\";s:10:\"items_list\";s:17:\"Lista de entradas\";s:9:\"menu_name\";s:16:\"Grupo de cambios\";s:14:\"name_admin_bar\";s:16:\"Grupo de cambios\";}s:11:\"description\";s:0:\"\";s:6:\"public\";b:0;s:12:\"hierarchical\";b:0;s:19:\"exclude_from_search\";b:1;s:18:\"publicly_queryable\";b:0;s:7:\"show_ui\";b:0;s:12:\"show_in_menu\";b:0;s:17:\"show_in_nav_menus\";b:0;s:17:\"show_in_admin_bar\";b:0;s:15:\"capability_type\";s:19:\"customize_changeset\";s:3:\"cap\";O:8:\"stdClass\":15:{s:9:\"edit_post\";s:9:\"customize\";s:9:\"read_post\";s:9:\"customize\";s:11:\"delete_post\";s:9:\"customize\";s:10:\"edit_posts\";s:9:\"customize\";s:17:\"edit_others_posts\";s:9:\"customize\";s:13:\"publish_posts\";s:9:\"customize\";s:18:\"read_private_posts\";s:9:\"customize\";s:4:\"read\";s:4:\"read\";s:12:\"delete_posts\";s:9:\"customize\";s:20:\"delete_private_posts\";s:9:\"customize\";s:22:\"delete_published_posts\";s:9:\"customize\";s:19:\"delete_others_posts\";s:9:\"customize\";s:18:\"edit_private_posts\";s:9:\"customize\";s:20:\"edit_published_posts\";s:12:\"do_not_allow\";s:12:\"create_posts\";s:9:\"customize\";}s:12:\"map_meta_cap\";b:1;s:10:\"taxonomies\";a:0:{}s:11:\"has_archive\";b:0;s:7:\"rewrite\";b:0;s:9:\"query_var\";b:0;s:10:\"can_export\";b:0;s:16:\"delete_with_user\";b:0;s:12:\"show_in_rest\";b:0;s:9:\"rest_base\";b:0;s:8:\"_builtin\";b:1;s:10:\"_edit_link\";s:0:\"\";}s:12:\"oembed_cache\";O:8:\"stdClass\":26:{s:4:\"name\";s:12:\"oembed_cache\";s:5:\"label\";s:17:\"Respuestas oEmbed\";s:6:\"labels\";O:8:\"stdClass\":26:{s:4:\"name\";s:17:\"Respuestas oEmbed\";s:13:\"singular_name\";s:16:\"Respuesta oEmbed\";s:7:\"add_new\";s:13:\"Añadir nueva\";s:12:\"add_new_item\";s:21:\"Añadir nueva entrada\";s:9:\"edit_item\";s:14:\"Editar entrada\";s:8:\"new_item\";s:13:\"Nueva entrada\";s:9:\"view_item\";s:11:\"Ver entrada\";s:10:\"view_items\";s:12:\"Ver entradas\";s:12:\"search_items\";s:15:\"Buscar entradas\";s:9:\"not_found\";s:27:\"No se encontraron entradas.\";s:18:\"not_found_in_trash\";s:39:\"Ningún post encontrado en la papelera.\";s:17:\"parent_item_colon\";N;s:9:\"all_items\";s:17:\"Respuestas oEmbed\";s:8:\"archives\";s:17:\"Respuestas oEmbed\";s:10:\"attributes\";s:20:\"Atributos de entrada\";s:16:\"insert_into_item\";s:22:\"Insertar en la entrada\";s:21:\"uploaded_to_this_item\";s:21:\"Subido a esta entrada\";s:14:\"featured_image\";s:16:\"Imagen destacada\";s:18:\"set_featured_image\";s:27:\"Establecer imagen destacada\";s:21:\"remove_featured_image\";s:23:\"Borrar imagen destacada\";s:18:\"use_featured_image\";s:26:\"Usar como imagen destacada\";s:17:\"filter_items_list\";s:27:\"Lista de entradas filtradas\";s:21:\"items_list_navigation\";s:38:\"Navegación por el listado de entradas\";s:10:\"items_list\";s:17:\"Lista de entradas\";s:9:\"menu_name\";s:17:\"Respuestas oEmbed\";s:14:\"name_admin_bar\";s:16:\"Respuesta oEmbed\";}s:11:\"description\";s:0:\"\";s:6:\"public\";b:0;s:12:\"hierarchical\";b:0;s:19:\"exclude_from_search\";b:1;s:18:\"publicly_queryable\";b:0;s:7:\"show_ui\";b:0;s:12:\"show_in_menu\";b:0;s:17:\"show_in_nav_menus\";b:0;s:17:\"show_in_admin_bar\";b:0;s:8:\"supports\";a:0:{}s:15:\"capability_type\";s:4:\"post\";s:3:\"cap\";O:8:\"stdClass\":15:{s:9:\"edit_post\";s:9:\"edit_post\";s:9:\"read_post\";s:9:\"read_post\";s:11:\"delete_post\";s:11:\"delete_post\";s:10:\"edit_posts\";s:10:\"edit_posts\";s:17:\"edit_others_posts\";s:17:\"edit_others_posts\";s:13:\"publish_posts\";s:13:\"publish_posts\";s:18:\"read_private_posts\";s:18:\"read_private_posts\";s:4:\"read\";s:4:\"read\";s:12:\"delete_posts\";s:12:\"delete_posts\";s:20:\"delete_private_posts\";s:20:\"delete_private_posts\";s:22:\"delete_published_posts\";s:22:\"delete_published_posts\";s:19:\"delete_others_posts\";s:19:\"delete_others_posts\";s:18:\"edit_private_posts\";s:18:\"edit_private_posts\";s:20:\"edit_published_posts\";s:20:\"edit_published_posts\";s:12:\"create_posts\";s:10:\"edit_posts\";}s:12:\"map_meta_cap\";b:1;s:10:\"taxonomies\";a:0:{}s:11:\"has_archive\";b:0;s:7:\"rewrite\";b:0;s:9:\"query_var\";b:0;s:10:\"can_export\";b:0;s:16:\"delete_with_user\";b:0;s:12:\"show_in_rest\";b:0;s:9:\"rest_base\";b:0;s:8:\"_builtin\";b:1;s:10:\"_edit_link\";s:0:\"\";}s:12:\"user_request\";O:8:\"stdClass\":26:{s:4:\"name\";s:12:\"user_request\";s:5:\"label\";s:21:\"Peticiones de usuario\";s:6:\"labels\";O:8:\"stdClass\":26:{s:4:\"name\";s:21:\"Peticiones de usuario\";s:13:\"singular_name\";s:20:\"Petición de usuario\";s:7:\"add_new\";s:13:\"Añadir nueva\";s:12:\"add_new_item\";s:21:\"Añadir nueva entrada\";s:9:\"edit_item\";s:14:\"Editar entrada\";s:8:\"new_item\";s:13:\"Nueva entrada\";s:9:\"view_item\";s:11:\"Ver entrada\";s:10:\"view_items\";s:12:\"Ver entradas\";s:12:\"search_items\";s:15:\"Buscar entradas\";s:9:\"not_found\";s:27:\"No se encontraron entradas.\";s:18:\"not_found_in_trash\";s:39:\"Ningún post encontrado en la papelera.\";s:17:\"parent_item_colon\";N;s:9:\"all_items\";s:21:\"Peticiones de usuario\";s:8:\"archives\";s:21:\"Peticiones de usuario\";s:10:\"attributes\";s:20:\"Atributos de entrada\";s:16:\"insert_into_item\";s:22:\"Insertar en la entrada\";s:21:\"uploaded_to_this_item\";s:21:\"Subido a esta entrada\";s:14:\"featured_image\";s:16:\"Imagen destacada\";s:18:\"set_featured_image\";s:27:\"Establecer imagen destacada\";s:21:\"remove_featured_image\";s:23:\"Borrar imagen destacada\";s:18:\"use_featured_image\";s:26:\"Usar como imagen destacada\";s:17:\"filter_items_list\";s:27:\"Lista de entradas filtradas\";s:21:\"items_list_navigation\";s:38:\"Navegación por el listado de entradas\";s:10:\"items_list\";s:17:\"Lista de entradas\";s:9:\"menu_name\";s:21:\"Peticiones de usuario\";s:14:\"name_admin_bar\";s:20:\"Petición de usuario\";}s:11:\"description\";s:0:\"\";s:6:\"public\";b:0;s:12:\"hierarchical\";b:0;s:19:\"exclude_from_search\";b:1;s:18:\"publicly_queryable\";b:0;s:7:\"show_ui\";b:0;s:12:\"show_in_menu\";b:0;s:17:\"show_in_nav_menus\";b:0;s:17:\"show_in_admin_bar\";b:0;s:8:\"supports\";a:0:{}s:15:\"capability_type\";s:4:\"post\";s:3:\"cap\";O:8:\"stdClass\":15:{s:9:\"edit_post\";s:9:\"edit_post\";s:9:\"read_post\";s:9:\"read_post\";s:11:\"delete_post\";s:11:\"delete_post\";s:10:\"edit_posts\";s:10:\"edit_posts\";s:17:\"edit_others_posts\";s:17:\"edit_others_posts\";s:13:\"publish_posts\";s:13:\"publish_posts\";s:18:\"read_private_posts\";s:18:\"read_private_posts\";s:4:\"read\";s:4:\"read\";s:12:\"delete_posts\";s:12:\"delete_posts\";s:20:\"delete_private_posts\";s:20:\"delete_private_posts\";s:22:\"delete_published_posts\";s:22:\"delete_published_posts\";s:19:\"delete_others_posts\";s:19:\"delete_others_posts\";s:18:\"edit_private_posts\";s:18:\"edit_private_posts\";s:20:\"edit_published_posts\";s:20:\"edit_published_posts\";s:12:\"create_posts\";s:10:\"edit_posts\";}s:12:\"map_meta_cap\";b:1;s:10:\"taxonomies\";a:0:{}s:11:\"has_archive\";b:0;s:7:\"rewrite\";b:0;s:9:\"query_var\";b:0;s:10:\"can_export\";b:0;s:16:\"delete_with_user\";b:0;s:12:\"show_in_rest\";b:0;s:9:\"rest_base\";b:0;s:8:\"_builtin\";b:1;s:10:\"_edit_link\";s:0:\"\";}s:7:\"product\";O:8:\"stdClass\":24:{s:4:\"name\";s:7:\"product\";s:5:\"label\";s:8:\"Products\";s:6:\"labels\";O:8:\"stdClass\":26:{s:4:\"name\";s:8:\"Products\";s:13:\"singular_name\";s:7:\"Product\";s:7:\"add_new\";s:7:\"Add New\";s:12:\"add_new_item\";s:15:\"Add New Product\";s:9:\"edit_item\";s:12:\"Edit Product\";s:8:\"new_item\";s:11:\"New Product\";s:9:\"view_item\";s:12:\"View Product\";s:10:\"view_items\";s:12:\"Ver entradas\";s:12:\"search_items\";s:15:\"Search Products\";s:9:\"not_found\";s:17:\"No products found\";s:18:\"not_found_in_trash\";s:26:\"No products found in Trash\";s:17:\"parent_item_colon\";s:0:\"\";s:9:\"all_items\";s:8:\"Products\";s:8:\"archives\";s:8:\"Products\";s:10:\"attributes\";s:20:\"Atributos de entrada\";s:16:\"insert_into_item\";s:22:\"Insertar en la entrada\";s:21:\"uploaded_to_this_item\";s:21:\"Subido a esta entrada\";s:14:\"featured_image\";s:16:\"Imagen destacada\";s:18:\"set_featured_image\";s:27:\"Establecer imagen destacada\";s:21:\"remove_featured_image\";s:23:\"Borrar imagen destacada\";s:18:\"use_featured_image\";s:26:\"Usar como imagen destacada\";s:17:\"filter_items_list\";s:27:\"Lista de entradas filtradas\";s:21:\"items_list_navigation\";s:38:\"Navegación por el listado de entradas\";s:10:\"items_list\";s:17:\"Lista de entradas\";s:9:\"menu_name\";s:8:\"Products\";s:14:\"name_admin_bar\";s:7:\"Product\";}s:11:\"description\";s:8:\"products\";s:6:\"public\";b:1;s:12:\"hierarchical\";b:0;s:19:\"exclude_from_search\";b:0;s:18:\"publicly_queryable\";b:1;s:7:\"show_ui\";b:1;s:12:\"show_in_menu\";b:1;s:17:\"show_in_nav_menus\";b:1;s:17:\"show_in_admin_bar\";b:1;s:15:\"capability_type\";s:4:\"post\";s:3:\"cap\";O:8:\"stdClass\":15:{s:9:\"edit_post\";s:9:\"edit_post\";s:9:\"read_post\";s:9:\"read_post\";s:11:\"delete_post\";s:11:\"delete_post\";s:10:\"edit_posts\";s:10:\"edit_posts\";s:17:\"edit_others_posts\";s:17:\"edit_others_posts\";s:13:\"publish_posts\";s:13:\"publish_posts\";s:18:\"read_private_posts\";s:18:\"read_private_posts\";s:4:\"read\";s:4:\"read\";s:12:\"delete_posts\";s:12:\"delete_posts\";s:20:\"delete_private_posts\";s:20:\"delete_private_posts\";s:22:\"delete_published_posts\";s:22:\"delete_published_posts\";s:19:\"delete_others_posts\";s:19:\"delete_others_posts\";s:18:\"edit_private_posts\";s:18:\"edit_private_posts\";s:20:\"edit_published_posts\";s:20:\"edit_published_posts\";s:12:\"create_posts\";s:10:\"edit_posts\";}s:12:\"map_meta_cap\";b:1;s:10:\"taxonomies\";a:1:{i:0;s:9:\"publisher\";}s:11:\"has_archive\";b:0;s:7:\"rewrite\";a:5:{s:4:\"slug\";s:7:\"product\";s:10:\"with_front\";b:1;s:5:\"pages\";b:1;s:5:\"feeds\";b:0;s:7:\"ep_mask\";i:1;}s:9:\"query_var\";s:7:\"product\";s:10:\"can_export\";b:1;s:12:\"show_in_rest\";b:0;s:9:\"rest_base\";b:0;s:8:\"_builtin\";b:0;s:10:\"_edit_link\";s:16:\"post.php?post=%d\";}s:17:\"product_variation\";O:8:\"stdClass\":25:{s:4:\"name\";s:17:\"product_variation\";s:5:\"label\";s:11:\"Variaciones\";s:6:\"labels\";O:8:\"stdClass\":26:{s:4:\"name\";s:11:\"Variaciones\";s:13:\"singular_name\";s:11:\"Variaciones\";s:7:\"add_new\";s:13:\"Añadir nueva\";s:12:\"add_new_item\";s:21:\"Añadir nueva entrada\";s:9:\"edit_item\";s:14:\"Editar entrada\";s:8:\"new_item\";s:13:\"Nueva entrada\";s:9:\"view_item\";s:11:\"Ver entrada\";s:10:\"view_items\";s:12:\"Ver entradas\";s:12:\"search_items\";s:15:\"Buscar entradas\";s:9:\"not_found\";s:27:\"No se encontraron entradas.\";s:18:\"not_found_in_trash\";s:39:\"Ningún post encontrado en la papelera.\";s:17:\"parent_item_colon\";N;s:9:\"all_items\";s:11:\"Variaciones\";s:8:\"archives\";s:11:\"Variaciones\";s:10:\"attributes\";s:20:\"Atributos de entrada\";s:16:\"insert_into_item\";s:22:\"Insertar en la entrada\";s:21:\"uploaded_to_this_item\";s:21:\"Subido a esta entrada\";s:14:\"featured_image\";s:16:\"Imagen destacada\";s:18:\"set_featured_image\";s:27:\"Establecer imagen destacada\";s:21:\"remove_featured_image\";s:23:\"Borrar imagen destacada\";s:18:\"use_featured_image\";s:26:\"Usar como imagen destacada\";s:17:\"filter_items_list\";s:27:\"Lista de entradas filtradas\";s:21:\"items_list_navigation\";s:38:\"Navegación por el listado de entradas\";s:10:\"items_list\";s:17:\"Lista de entradas\";s:9:\"menu_name\";s:11:\"Variaciones\";s:14:\"name_admin_bar\";s:11:\"Variaciones\";}s:11:\"description\";s:0:\"\";s:6:\"public\";b:0;s:12:\"hierarchical\";b:0;s:19:\"exclude_from_search\";b:1;s:18:\"publicly_queryable\";b:0;s:7:\"show_ui\";b:0;s:12:\"show_in_menu\";b:0;s:17:\"show_in_nav_menus\";b:0;s:17:\"show_in_admin_bar\";b:0;s:8:\"supports\";b:0;s:15:\"capability_type\";s:7:\"product\";s:3:\"cap\";O:8:\"stdClass\":8:{s:9:\"edit_post\";s:12:\"edit_product\";s:9:\"read_post\";s:12:\"read_product\";s:11:\"delete_post\";s:14:\"delete_product\";s:10:\"edit_posts\";s:13:\"edit_products\";s:17:\"edit_others_posts\";s:20:\"edit_others_products\";s:13:\"publish_posts\";s:16:\"publish_products\";s:18:\"read_private_posts\";s:21:\"read_private_products\";s:12:\"create_posts\";s:13:\"edit_products\";}s:12:\"map_meta_cap\";b:0;s:10:\"taxonomies\";a:0:{}s:11:\"has_archive\";b:0;s:7:\"rewrite\";b:0;s:9:\"query_var\";s:17:\"product_variation\";s:10:\"can_export\";b:1;s:12:\"show_in_rest\";b:0;s:9:\"rest_base\";b:0;s:8:\"_builtin\";b:0;s:10:\"_edit_link\";s:0:\"\";}s:10:\"shop_order\";O:8:\"stdClass\":24:{s:4:\"name\";s:10:\"shop_order\";s:5:\"label\";s:7:\"Pedidos\";s:6:\"labels\";O:8:\"stdClass\":28:{s:4:\"name\";s:7:\"Pedidos\";s:13:\"singular_name\";s:6:\"Pedido\";s:7:\"add_new\";s:14:\"Añadir pedido\";s:12:\"add_new_item\";s:20:\"Añadir nuevo pedido\";s:9:\"edit_item\";s:13:\"Editar pedido\";s:8:\"new_item\";s:12:\"Nuevo pedido\";s:9:\"view_item\";s:10:\"Ver pedido\";s:10:\"view_items\";s:12:\"Ver entradas\";s:12:\"search_items\";s:14:\"Buscar pedidos\";s:9:\"not_found\";s:25:\"No se encontraron pedidos\";s:18:\"not_found_in_trash\";s:43:\"No se han encontrado pedidos en la papelera\";s:17:\"parent_item_colon\";N;s:9:\"all_items\";s:7:\"Pedidos\";s:8:\"archives\";s:7:\"Pedidos\";s:10:\"attributes\";s:20:\"Atributos de entrada\";s:16:\"insert_into_item\";s:22:\"Insertar en la entrada\";s:21:\"uploaded_to_this_item\";s:21:\"Subido a esta entrada\";s:14:\"featured_image\";s:16:\"Imagen destacada\";s:18:\"set_featured_image\";s:27:\"Establecer imagen destacada\";s:21:\"remove_featured_image\";s:23:\"Borrar imagen destacada\";s:18:\"use_featured_image\";s:26:\"Usar como imagen destacada\";s:17:\"filter_items_list\";s:15:\"Filtrar pedidos\";s:21:\"items_list_navigation\";s:22:\"Navegación de pedidos\";s:10:\"items_list\";s:16:\"Lista de pedidos\";s:9:\"menu_name\";s:7:\"Pedidos\";s:4:\"edit\";s:6:\"Editar\";s:6:\"parent\";s:13:\"Pedidos padre\";s:14:\"name_admin_bar\";s:6:\"Pedido\";}s:11:\"description\";s:51:\"Aquí es donde se guardan los pedidos de la tienda.\";s:6:\"public\";b:0;s:12:\"hierarchical\";b:0;s:19:\"exclude_from_search\";b:1;s:18:\"publicly_queryable\";b:0;s:7:\"show_ui\";b:1;s:12:\"show_in_menu\";s:11:\"woocommerce\";s:17:\"show_in_nav_menus\";b:0;s:17:\"show_in_admin_bar\";b:1;s:15:\"capability_type\";s:10:\"shop_order\";s:3:\"cap\";O:8:\"stdClass\":15:{s:9:\"edit_post\";s:15:\"edit_shop_order\";s:9:\"read_post\";s:15:\"read_shop_order\";s:11:\"delete_post\";s:17:\"delete_shop_order\";s:10:\"edit_posts\";s:16:\"edit_shop_orders\";s:17:\"edit_others_posts\";s:23:\"edit_others_shop_orders\";s:13:\"publish_posts\";s:19:\"publish_shop_orders\";s:18:\"read_private_posts\";s:24:\"read_private_shop_orders\";s:4:\"read\";s:4:\"read\";s:12:\"delete_posts\";s:18:\"delete_shop_orders\";s:20:\"delete_private_posts\";s:26:\"delete_private_shop_orders\";s:22:\"delete_published_posts\";s:28:\"delete_published_shop_orders\";s:19:\"delete_others_posts\";s:25:\"delete_others_shop_orders\";s:18:\"edit_private_posts\";s:24:\"edit_private_shop_orders\";s:20:\"edit_published_posts\";s:26:\"edit_published_shop_orders\";s:12:\"create_posts\";s:16:\"edit_shop_orders\";}s:12:\"map_meta_cap\";b:1;s:10:\"taxonomies\";a:0:{}s:11:\"has_archive\";b:0;s:7:\"rewrite\";b:0;s:9:\"query_var\";b:0;s:10:\"can_export\";b:1;s:12:\"show_in_rest\";b:0;s:9:\"rest_base\";b:0;s:8:\"_builtin\";b:0;s:10:\"_edit_link\";s:16:\"post.php?post=%d\";}s:17:\"shop_order_refund\";O:8:\"stdClass\":25:{s:4:\"name\";s:17:\"shop_order_refund\";s:5:\"label\";s:10:\"Reembolsos\";s:6:\"labels\";O:8:\"stdClass\":26:{s:4:\"name\";s:10:\"Reembolsos\";s:13:\"singular_name\";s:10:\"Reembolsos\";s:7:\"add_new\";s:13:\"Añadir nueva\";s:12:\"add_new_item\";s:21:\"Añadir nueva entrada\";s:9:\"edit_item\";s:14:\"Editar entrada\";s:8:\"new_item\";s:13:\"Nueva entrada\";s:9:\"view_item\";s:11:\"Ver entrada\";s:10:\"view_items\";s:12:\"Ver entradas\";s:12:\"search_items\";s:15:\"Buscar entradas\";s:9:\"not_found\";s:27:\"No se encontraron entradas.\";s:18:\"not_found_in_trash\";s:39:\"Ningún post encontrado en la papelera.\";s:17:\"parent_item_colon\";N;s:9:\"all_items\";s:10:\"Reembolsos\";s:8:\"archives\";s:10:\"Reembolsos\";s:10:\"attributes\";s:20:\"Atributos de entrada\";s:16:\"insert_into_item\";s:22:\"Insertar en la entrada\";s:21:\"uploaded_to_this_item\";s:21:\"Subido a esta entrada\";s:14:\"featured_image\";s:16:\"Imagen destacada\";s:18:\"set_featured_image\";s:27:\"Establecer imagen destacada\";s:21:\"remove_featured_image\";s:23:\"Borrar imagen destacada\";s:18:\"use_featured_image\";s:26:\"Usar como imagen destacada\";s:17:\"filter_items_list\";s:27:\"Lista de entradas filtradas\";s:21:\"items_list_navigation\";s:38:\"Navegación por el listado de entradas\";s:10:\"items_list\";s:17:\"Lista de entradas\";s:9:\"menu_name\";s:10:\"Reembolsos\";s:14:\"name_admin_bar\";s:10:\"Reembolsos\";}s:11:\"description\";s:0:\"\";s:6:\"public\";b:0;s:12:\"hierarchical\";b:0;s:19:\"exclude_from_search\";b:1;s:18:\"publicly_queryable\";b:0;s:7:\"show_ui\";b:0;s:12:\"show_in_menu\";b:0;s:17:\"show_in_nav_menus\";b:0;s:17:\"show_in_admin_bar\";b:0;s:8:\"supports\";b:0;s:15:\"capability_type\";s:10:\"shop_order\";s:3:\"cap\";O:8:\"stdClass\":8:{s:9:\"edit_post\";s:15:\"edit_shop_order\";s:9:\"read_post\";s:15:\"read_shop_order\";s:11:\"delete_post\";s:17:\"delete_shop_order\";s:10:\"edit_posts\";s:16:\"edit_shop_orders\";s:17:\"edit_others_posts\";s:23:\"edit_others_shop_orders\";s:13:\"publish_posts\";s:19:\"publish_shop_orders\";s:18:\"read_private_posts\";s:24:\"read_private_shop_orders\";s:12:\"create_posts\";s:16:\"edit_shop_orders\";}s:12:\"map_meta_cap\";b:0;s:10:\"taxonomies\";a:0:{}s:11:\"has_archive\";b:0;s:7:\"rewrite\";b:0;s:9:\"query_var\";s:17:\"shop_order_refund\";s:10:\"can_export\";b:1;s:12:\"show_in_rest\";b:0;s:9:\"rest_base\";b:0;s:8:\"_builtin\";b:0;s:10:\"_edit_link\";s:0:\"\";}s:11:\"shop_coupon\";O:8:\"stdClass\":24:{s:4:\"name\";s:11:\"shop_coupon\";s:5:\"label\";s:7:\"Cupones\";s:6:\"labels\";O:8:\"stdClass\":28:{s:4:\"name\";s:7:\"Cupones\";s:13:\"singular_name\";s:6:\"Cupón\";s:7:\"add_new\";s:14:\"Añadir cupón\";s:12:\"add_new_item\";s:20:\"Añadir nuevo cupón\";s:9:\"edit_item\";s:13:\"Editar cupón\";s:8:\"new_item\";s:12:\"Nuevo cupón\";s:9:\"view_item\";s:10:\"Ver cupón\";s:10:\"view_items\";s:12:\"Ver entradas\";s:12:\"search_items\";s:14:\"Buscar cupones\";s:9:\"not_found\";s:25:\"Ningún cupón encontrado\";s:18:\"not_found_in_trash\";s:43:\"No se han encontrado cupones en la papelera\";s:17:\"parent_item_colon\";N;s:9:\"all_items\";s:7:\"Cupones\";s:8:\"archives\";s:7:\"Cupones\";s:10:\"attributes\";s:20:\"Atributos de entrada\";s:16:\"insert_into_item\";s:22:\"Insertar en la entrada\";s:21:\"uploaded_to_this_item\";s:21:\"Subido a esta entrada\";s:14:\"featured_image\";s:16:\"Imagen destacada\";s:18:\"set_featured_image\";s:27:\"Establecer imagen destacada\";s:21:\"remove_featured_image\";s:23:\"Borrar imagen destacada\";s:18:\"use_featured_image\";s:26:\"Usar como imagen destacada\";s:17:\"filter_items_list\";s:15:\"Filtrar cupones\";s:21:\"items_list_navigation\";s:22:\"Navegación de cupones\";s:10:\"items_list\";s:16:\"Lista de cupones\";s:9:\"menu_name\";s:7:\"Cupones\";s:4:\"edit\";s:6:\"Editar\";s:6:\"parent\";s:12:\"Cupón padre\";s:14:\"name_admin_bar\";s:6:\"Cupón\";}s:11:\"description\";s:92:\"Aquí es donde puedes añadir nuevos cupones que los clientes podrán utilizar en tu tienda.\";s:6:\"public\";b:0;s:12:\"hierarchical\";b:0;s:19:\"exclude_from_search\";b:1;s:18:\"publicly_queryable\";b:0;s:7:\"show_ui\";b:1;s:12:\"show_in_menu\";s:11:\"woocommerce\";s:17:\"show_in_nav_menus\";b:0;s:17:\"show_in_admin_bar\";b:1;s:15:\"capability_type\";s:11:\"shop_coupon\";s:3:\"cap\";O:8:\"stdClass\":15:{s:9:\"edit_post\";s:16:\"edit_shop_coupon\";s:9:\"read_post\";s:16:\"read_shop_coupon\";s:11:\"delete_post\";s:18:\"delete_shop_coupon\";s:10:\"edit_posts\";s:17:\"edit_shop_coupons\";s:17:\"edit_others_posts\";s:24:\"edit_others_shop_coupons\";s:13:\"publish_posts\";s:20:\"publish_shop_coupons\";s:18:\"read_private_posts\";s:25:\"read_private_shop_coupons\";s:4:\"read\";s:4:\"read\";s:12:\"delete_posts\";s:19:\"delete_shop_coupons\";s:20:\"delete_private_posts\";s:27:\"delete_private_shop_coupons\";s:22:\"delete_published_posts\";s:29:\"delete_published_shop_coupons\";s:19:\"delete_others_posts\";s:26:\"delete_others_shop_coupons\";s:18:\"edit_private_posts\";s:25:\"edit_private_shop_coupons\";s:20:\"edit_published_posts\";s:27:\"edit_published_shop_coupons\";s:12:\"create_posts\";s:17:\"edit_shop_coupons\";}s:12:\"map_meta_cap\";b:1;s:10:\"taxonomies\";a:0:{}s:11:\"has_archive\";b:0;s:7:\"rewrite\";b:0;s:9:\"query_var\";b:0;s:10:\"can_export\";b:1;s:12:\"show_in_rest\";b:0;s:9:\"rest_base\";b:0;s:8:\"_builtin\";b:0;s:10:\"_edit_link\";s:16:\"post.php?post=%d\";}s:8:\"wp_block\";O:8:\"stdClass\":25:{s:4:\"name\";s:8:\"wp_block\";s:5:\"label\";s:7:\"Bloques\";s:6:\"labels\";O:8:\"stdClass\":26:{s:4:\"name\";s:7:\"Bloques\";s:13:\"singular_name\";s:6:\"Bloque\";s:7:\"add_new\";s:13:\"Añadir nueva\";s:12:\"add_new_item\";s:21:\"Añadir nueva entrada\";s:9:\"edit_item\";s:14:\"Editar entrada\";s:8:\"new_item\";s:13:\"Nueva entrada\";s:9:\"view_item\";s:11:\"Ver entrada\";s:10:\"view_items\";s:12:\"Ver entradas\";s:12:\"search_items\";s:14:\"Buscar bloques\";s:9:\"not_found\";s:27:\"No se encontraron entradas.\";s:18:\"not_found_in_trash\";s:39:\"Ningún post encontrado en la papelera.\";s:17:\"parent_item_colon\";N;s:9:\"all_items\";s:7:\"Bloques\";s:8:\"archives\";s:7:\"Bloques\";s:10:\"attributes\";s:20:\"Atributos de entrada\";s:16:\"insert_into_item\";s:22:\"Insertar en la entrada\";s:21:\"uploaded_to_this_item\";s:21:\"Subido a esta entrada\";s:14:\"featured_image\";s:16:\"Imagen destacada\";s:18:\"set_featured_image\";s:27:\"Establecer imagen destacada\";s:21:\"remove_featured_image\";s:23:\"Borrar imagen destacada\";s:18:\"use_featured_image\";s:26:\"Usar como imagen destacada\";s:17:\"filter_items_list\";s:27:\"Lista de entradas filtradas\";s:21:\"items_list_navigation\";s:38:\"Navegación por el listado de entradas\";s:10:\"items_list\";s:17:\"Lista de entradas\";s:9:\"menu_name\";s:7:\"Bloques\";s:14:\"name_admin_bar\";s:6:\"Bloque\";}s:11:\"description\";s:0:\"\";s:6:\"public\";b:0;s:12:\"hierarchical\";b:0;s:19:\"exclude_from_search\";b:1;s:18:\"publicly_queryable\";b:0;s:7:\"show_ui\";b:1;s:12:\"show_in_menu\";b:0;s:17:\"show_in_nav_menus\";b:0;s:17:\"show_in_admin_bar\";b:0;s:8:\"supports\";b:0;s:15:\"capability_type\";s:5:\"block\";s:3:\"cap\";O:8:\"stdClass\":15:{s:9:\"edit_post\";s:10:\"edit_block\";s:9:\"read_post\";s:10:\"read_block\";s:11:\"delete_post\";s:12:\"delete_block\";s:10:\"edit_posts\";s:11:\"edit_blocks\";s:17:\"edit_others_posts\";s:18:\"edit_others_blocks\";s:13:\"publish_posts\";s:14:\"publish_blocks\";s:18:\"read_private_posts\";s:19:\"read_private_blocks\";s:4:\"read\";s:11:\"read_blocks\";s:12:\"delete_posts\";s:13:\"delete_blocks\";s:20:\"delete_private_posts\";s:21:\"delete_private_blocks\";s:22:\"delete_published_posts\";s:23:\"delete_published_blocks\";s:19:\"delete_others_posts\";s:20:\"delete_others_blocks\";s:18:\"edit_private_posts\";s:19:\"edit_private_blocks\";s:20:\"edit_published_posts\";s:21:\"edit_published_blocks\";s:12:\"create_posts\";s:13:\"create_blocks\";}s:12:\"map_meta_cap\";b:1;s:10:\"taxonomies\";a:0:{}s:11:\"has_archive\";b:0;s:7:\"rewrite\";b:0;s:9:\"query_var\";s:8:\"wp_block\";s:10:\"can_export\";b:1;s:12:\"show_in_rest\";b:1;s:9:\"rest_base\";s:6:\"blocks\";s:8:\"_builtin\";b:0;s:10:\"_edit_link\";s:16:\"post.php?post=%d\";}s:7:\"project\";O:8:\"stdClass\":24:{s:4:\"name\";s:7:\"project\";s:5:\"label\";s:8:\"Projects\";s:6:\"labels\";O:8:\"stdClass\":26:{s:4:\"name\";s:8:\"Projects\";s:13:\"singular_name\";s:7:\"Project\";s:7:\"add_new\";s:7:\"Add New\";s:12:\"add_new_item\";s:15:\"Add New Project\";s:9:\"edit_item\";s:12:\"Edit Project\";s:8:\"new_item\";s:11:\"New Project\";s:9:\"view_item\";s:12:\"View Project\";s:10:\"view_items\";s:12:\"Ver entradas\";s:12:\"search_items\";s:15:\"Search Projects\";s:9:\"not_found\";s:17:\"No projects found\";s:18:\"not_found_in_trash\";s:26:\"No projects found in Trash\";s:17:\"parent_item_colon\";s:0:\"\";s:9:\"all_items\";s:8:\"Projects\";s:8:\"archives\";s:8:\"Projects\";s:10:\"attributes\";s:20:\"Atributos de entrada\";s:16:\"insert_into_item\";s:22:\"Insertar en la entrada\";s:21:\"uploaded_to_this_item\";s:21:\"Subido a esta entrada\";s:14:\"featured_image\";s:16:\"Imagen destacada\";s:18:\"set_featured_image\";s:27:\"Establecer imagen destacada\";s:21:\"remove_featured_image\";s:23:\"Borrar imagen destacada\";s:18:\"use_featured_image\";s:26:\"Usar como imagen destacada\";s:17:\"filter_items_list\";s:27:\"Lista de entradas filtradas\";s:21:\"items_list_navigation\";s:38:\"Navegación por el listado de entradas\";s:10:\"items_list\";s:17:\"Lista de entradas\";s:9:\"menu_name\";s:8:\"Projects\";s:14:\"name_admin_bar\";s:7:\"Project\";}s:11:\"description\";s:8:\"projects\";s:6:\"public\";b:1;s:12:\"hierarchical\";b:0;s:19:\"exclude_from_search\";b:0;s:18:\"publicly_queryable\";b:1;s:7:\"show_ui\";b:1;s:12:\"show_in_menu\";b:1;s:17:\"show_in_nav_menus\";b:1;s:17:\"show_in_admin_bar\";b:1;s:15:\"capability_type\";s:4:\"post\";s:3:\"cap\";O:8:\"stdClass\":15:{s:9:\"edit_post\";s:9:\"edit_post\";s:9:\"read_post\";s:9:\"read_post\";s:11:\"delete_post\";s:11:\"delete_post\";s:10:\"edit_posts\";s:10:\"edit_posts\";s:17:\"edit_others_posts\";s:17:\"edit_others_posts\";s:13:\"publish_posts\";s:13:\"publish_posts\";s:18:\"read_private_posts\";s:18:\"read_private_posts\";s:4:\"read\";s:4:\"read\";s:12:\"delete_posts\";s:12:\"delete_posts\";s:20:\"delete_private_posts\";s:20:\"delete_private_posts\";s:22:\"delete_published_posts\";s:22:\"delete_published_posts\";s:19:\"delete_others_posts\";s:19:\"delete_others_posts\";s:18:\"edit_private_posts\";s:18:\"edit_private_posts\";s:20:\"edit_published_posts\";s:20:\"edit_published_posts\";s:12:\"create_posts\";s:10:\"edit_posts\";}s:12:\"map_meta_cap\";b:1;s:10:\"taxonomies\";a:1:{i:0;s:9:\"publisher\";}s:11:\"has_archive\";b:0;s:7:\"rewrite\";a:5:{s:4:\"slug\";s:7:\"project\";s:10:\"with_front\";b:1;s:5:\"pages\";b:1;s:5:\"feeds\";b:0;s:7:\"ep_mask\";i:1;}s:9:\"query_var\";s:7:\"project\";s:10:\"can_export\";b:1;s:12:\"show_in_rest\";b:1;s:9:\"rest_base\";s:7:\"project\";s:8:\"_builtin\";b:0;s:10:\"_edit_link\";s:16:\"post.php?post=%d\";}}}i:2;i:1;i:3;d:1540057996.2920749187469482421875;i:4;b:0;i:5;a:14:{s:13:\"wpcom_user_id\";N;s:16:\"external_user_id\";i:1;s:12:\"display_name\";s:5:\"admin\";s:10:\"user_email\";s:22:\"diego.feliud@gmail.com\";s:10:\"user_roles\";a:1:{i:0;s:13:\"administrator\";}s:15:\"translated_role\";s:13:\"administrator\";s:7:\"is_cron\";b:0;s:7:\"is_rest\";b:0;s:9:\"is_xmlrpc\";b:0;s:10:\"is_wp_rest\";b:0;s:7:\"is_ajax\";b:0;s:11:\"is_wp_admin\";b:1;s:6:\"is_cli\";b:0;s:8:\"from_url\";s:136:\"http://localhost//wp-admin/plugins.php?action=deactivate&plugin=jetpack%2Fjetpack.php&plugin_status=all&paged=1&s&_wpnonce=24d2958ad1\";}}', 'no'),
(786, 'jpsq_sync-1540057996.294101-708055-36', 'a:6:{i:0;s:21:\"jetpack_sync_callable\";i:1;a:2:{i:0;s:18:\"post_type_features\";i:1;a:15:{s:4:\"post\";a:10:{s:5:\"title\";b:1;s:6:\"editor\";b:1;s:6:\"author\";b:1;s:9:\"thumbnail\";b:1;s:7:\"excerpt\";b:1;s:10:\"trackbacks\";b:1;s:13:\"custom-fields\";b:1;s:8:\"comments\";b:1;s:9:\"revisions\";b:1;s:12:\"post-formats\";b:1;}s:4:\"page\";a:8:{s:5:\"title\";b:1;s:6:\"editor\";b:1;s:6:\"author\";b:1;s:9:\"thumbnail\";b:1;s:15:\"page-attributes\";b:1;s:13:\"custom-fields\";b:1;s:8:\"comments\";b:1;s:9:\"revisions\";b:1;}s:10:\"attachment\";a:3:{s:5:\"title\";b:1;s:6:\"author\";b:1;s:8:\"comments\";b:1;}s:16:\"attachment:audio\";a:1:{s:9:\"thumbnail\";b:1;}s:16:\"attachment:video\";a:1:{s:9:\"thumbnail\";b:1;}s:8:\"revision\";a:1:{s:6:\"author\";b:1;}s:13:\"nav_menu_item\";a:2:{s:5:\"title\";b:1;s:6:\"editor\";b:1;}s:10:\"custom_css\";a:2:{s:5:\"title\";b:1;s:9:\"revisions\";b:1;}s:19:\"customize_changeset\";a:2:{s:5:\"title\";b:1;s:6:\"author\";b:1;}s:12:\"oembed_cache\";a:2:{s:5:\"title\";b:1;s:6:\"editor\";b:1;}s:12:\"user_request\";a:2:{s:5:\"title\";b:1;s:6:\"editor\";b:1;}s:7:\"product\";a:10:{s:9:\"thumbnail\";b:1;s:5:\"title\";b:1;s:6:\"editor\";b:1;s:7:\"excerpt\";b:1;s:13:\"custom-fields\";b:1;s:9:\"publicize\";b:1;s:14:\"wpcom-markdown\";b:1;s:8:\"comments\";b:1;s:8:\"pictures\";b:1;s:6:\"prizes\";b:1;}s:10:\"shop_order\";a:3:{s:5:\"title\";b:1;s:8:\"comments\";b:1;s:13:\"custom-fields\";b:1;}s:11:\"shop_coupon\";a:1:{s:5:\"title\";b:1;}s:7:\"project\";a:3:{s:5:\"title\";b:1;s:6:\"editor\";b:1;s:17:\"extra_information\";b:1;}}}i:2;i:1;i:3;d:1540057996.29407405853271484375;i:4;b:0;i:5;a:14:{s:13:\"wpcom_user_id\";N;s:16:\"external_user_id\";i:1;s:12:\"display_name\";s:5:\"admin\";s:10:\"user_email\";s:22:\"diego.feliud@gmail.com\";s:10:\"user_roles\";a:1:{i:0;s:13:\"administrator\";}s:15:\"translated_role\";s:13:\"administrator\";s:7:\"is_cron\";b:0;s:7:\"is_rest\";b:0;s:9:\"is_xmlrpc\";b:0;s:10:\"is_wp_rest\";b:0;s:7:\"is_ajax\";b:0;s:11:\"is_wp_admin\";b:1;s:6:\"is_cli\";b:0;s:8:\"from_url\";s:136:\"http://localhost//wp-admin/plugins.php?action=deactivate&plugin=jetpack%2Fjetpack.php&plugin_status=all&paged=1&s&_wpnonce=24d2958ad1\";}}', 'no'),
(787, 'jpsq_sync-1540057996.294460-708055-37', 'a:6:{i:0;s:21:\"jetpack_sync_callable\";i:1;a:2:{i:0;s:10:\"shortcodes\";i:1;a:27:{i:0;s:10:\"wp_caption\";i:1;s:7:\"caption\";i:2;s:7:\"gallery\";i:3;s:8:\"playlist\";i:4;s:5:\"audio\";i:5;s:5:\"video\";i:6;s:5:\"embed\";i:7;s:7:\"product\";i:8;s:12:\"product_page\";i:9;s:16:\"product_category\";i:10;s:18:\"product_categories\";i:11;s:11:\"add_to_cart\";i:12;s:15:\"add_to_cart_url\";i:13;s:8:\"products\";i:14;s:15:\"recent_products\";i:15;s:13:\"sale_products\";i:16;s:21:\"best_selling_products\";i:17;s:18:\"top_rated_products\";i:18;s:17:\"featured_products\";i:19;s:17:\"product_attribute\";i:20;s:16:\"related_products\";i:21;s:13:\"shop_messages\";i:22;s:26:\"woocommerce_order_tracking\";i:23;s:16:\"woocommerce_cart\";i:24;s:20:\"woocommerce_checkout\";i:25;s:22:\"woocommerce_my_account\";i:26;s:20:\"woocommerce_messages\";}}i:2;i:1;i:3;d:1540057996.294437885284423828125;i:4;b:0;i:5;a:14:{s:13:\"wpcom_user_id\";N;s:16:\"external_user_id\";i:1;s:12:\"display_name\";s:5:\"admin\";s:10:\"user_email\";s:22:\"diego.feliud@gmail.com\";s:10:\"user_roles\";a:1:{i:0;s:13:\"administrator\";}s:15:\"translated_role\";s:13:\"administrator\";s:7:\"is_cron\";b:0;s:7:\"is_rest\";b:0;s:9:\"is_xmlrpc\";b:0;s:10:\"is_wp_rest\";b:0;s:7:\"is_ajax\";b:0;s:11:\"is_wp_admin\";b:1;s:6:\"is_cli\";b:0;s:8:\"from_url\";s:136:\"http://localhost//wp-admin/plugins.php?action=deactivate&plugin=jetpack%2Fjetpack.php&plugin_status=all&paged=1&s&_wpnonce=24d2958ad1\";}}', 'no'),
(788, 'jpsq_sync-1540057996.294671-708055-38', 'a:6:{i:0;s:21:\"jetpack_sync_callable\";i:1;a:2:{i:0;s:27:\"rest_api_allowed_post_types\";i:1;a:4:{i:0;s:4:\"post\";i:1;s:4:\"page\";i:2;s:8:\"revision\";i:3;s:7:\"product\";}}i:2;i:1;i:3;d:1540057996.294651031494140625;i:4;b:0;i:5;a:14:{s:13:\"wpcom_user_id\";N;s:16:\"external_user_id\";i:1;s:12:\"display_name\";s:5:\"admin\";s:10:\"user_email\";s:22:\"diego.feliud@gmail.com\";s:10:\"user_roles\";a:1:{i:0;s:13:\"administrator\";}s:15:\"translated_role\";s:13:\"administrator\";s:7:\"is_cron\";b:0;s:7:\"is_rest\";b:0;s:9:\"is_xmlrpc\";b:0;s:10:\"is_wp_rest\";b:0;s:7:\"is_ajax\";b:0;s:11:\"is_wp_admin\";b:1;s:6:\"is_cli\";b:0;s:8:\"from_url\";s:136:\"http://localhost//wp-admin/plugins.php?action=deactivate&plugin=jetpack%2Fjetpack.php&plugin_status=all&paged=1&s&_wpnonce=24d2958ad1\";}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(789, 'jpsq_sync-1540057996.294848-708055-39', 'a:6:{i:0;s:21:\"jetpack_sync_callable\";i:1;a:2:{i:0;s:32:\"rest_api_allowed_public_metadata\";i:1;a:0:{}}i:2;i:1;i:3;d:1540057996.294828891754150390625;i:4;b:0;i:5;a:14:{s:13:\"wpcom_user_id\";N;s:16:\"external_user_id\";i:1;s:12:\"display_name\";s:5:\"admin\";s:10:\"user_email\";s:22:\"diego.feliud@gmail.com\";s:10:\"user_roles\";a:1:{i:0;s:13:\"administrator\";}s:15:\"translated_role\";s:13:\"administrator\";s:7:\"is_cron\";b:0;s:7:\"is_rest\";b:0;s:9:\"is_xmlrpc\";b:0;s:10:\"is_wp_rest\";b:0;s:7:\"is_ajax\";b:0;s:11:\"is_wp_admin\";b:1;s:6:\"is_cli\";b:0;s:8:\"from_url\";s:136:\"http://localhost//wp-admin/plugins.php?action=deactivate&plugin=jetpack%2Fjetpack.php&plugin_status=all&paged=1&s&_wpnonce=24d2958ad1\";}}', 'no'),
(790, 'jpsq_sync-1540057996.295040-708055-40', 'a:6:{i:0;s:21:\"jetpack_sync_callable\";i:1;a:2:{i:0;s:24:\"sso_is_two_step_required\";i:1;b:0;}i:2;i:1;i:3;d:1540057996.2950038909912109375;i:4;b:0;i:5;a:14:{s:13:\"wpcom_user_id\";N;s:16:\"external_user_id\";i:1;s:12:\"display_name\";s:5:\"admin\";s:10:\"user_email\";s:22:\"diego.feliud@gmail.com\";s:10:\"user_roles\";a:1:{i:0;s:13:\"administrator\";}s:15:\"translated_role\";s:13:\"administrator\";s:7:\"is_cron\";b:0;s:7:\"is_rest\";b:0;s:9:\"is_xmlrpc\";b:0;s:10:\"is_wp_rest\";b:0;s:7:\"is_ajax\";b:0;s:11:\"is_wp_admin\";b:1;s:6:\"is_cli\";b:0;s:8:\"from_url\";s:136:\"http://localhost//wp-admin/plugins.php?action=deactivate&plugin=jetpack%2Fjetpack.php&plugin_status=all&paged=1&s&_wpnonce=24d2958ad1\";}}', 'no'),
(791, 'jpsq_sync-1540057996.295217-708055-41', 'a:6:{i:0;s:21:\"jetpack_sync_callable\";i:1;a:2:{i:0;s:26:\"sso_should_hide_login_form\";i:1;b:0;}i:2;i:1;i:3;d:1540057996.295197963714599609375;i:4;b:0;i:5;a:14:{s:13:\"wpcom_user_id\";N;s:16:\"external_user_id\";i:1;s:12:\"display_name\";s:5:\"admin\";s:10:\"user_email\";s:22:\"diego.feliud@gmail.com\";s:10:\"user_roles\";a:1:{i:0;s:13:\"administrator\";}s:15:\"translated_role\";s:13:\"administrator\";s:7:\"is_cron\";b:0;s:7:\"is_rest\";b:0;s:9:\"is_xmlrpc\";b:0;s:10:\"is_wp_rest\";b:0;s:7:\"is_ajax\";b:0;s:11:\"is_wp_admin\";b:1;s:6:\"is_cli\";b:0;s:8:\"from_url\";s:136:\"http://localhost//wp-admin/plugins.php?action=deactivate&plugin=jetpack%2Fjetpack.php&plugin_status=all&paged=1&s&_wpnonce=24d2958ad1\";}}', 'no'),
(792, 'jpsq_sync-1540057996.295384-708055-42', 'a:6:{i:0;s:21:\"jetpack_sync_callable\";i:1;a:2:{i:0;s:18:\"sso_match_by_email\";i:1;b:1;}i:2;i:1;i:3;d:1540057996.2953660488128662109375;i:4;b:0;i:5;a:14:{s:13:\"wpcom_user_id\";N;s:16:\"external_user_id\";i:1;s:12:\"display_name\";s:5:\"admin\";s:10:\"user_email\";s:22:\"diego.feliud@gmail.com\";s:10:\"user_roles\";a:1:{i:0;s:13:\"administrator\";}s:15:\"translated_role\";s:13:\"administrator\";s:7:\"is_cron\";b:0;s:7:\"is_rest\";b:0;s:9:\"is_xmlrpc\";b:0;s:10:\"is_wp_rest\";b:0;s:7:\"is_ajax\";b:0;s:11:\"is_wp_admin\";b:1;s:6:\"is_cli\";b:0;s:8:\"from_url\";s:136:\"http://localhost//wp-admin/plugins.php?action=deactivate&plugin=jetpack%2Fjetpack.php&plugin_status=all&paged=1&s&_wpnonce=24d2958ad1\";}}', 'no'),
(793, 'jpsq_sync-1540057996.295549-708055-43', 'a:6:{i:0;s:21:\"jetpack_sync_callable\";i:1;a:2:{i:0;s:21:\"sso_new_user_override\";i:1;b:0;}i:2;i:1;i:3;d:1540057996.2955310344696044921875;i:4;b:0;i:5;a:14:{s:13:\"wpcom_user_id\";N;s:16:\"external_user_id\";i:1;s:12:\"display_name\";s:5:\"admin\";s:10:\"user_email\";s:22:\"diego.feliud@gmail.com\";s:10:\"user_roles\";a:1:{i:0;s:13:\"administrator\";}s:15:\"translated_role\";s:13:\"administrator\";s:7:\"is_cron\";b:0;s:7:\"is_rest\";b:0;s:9:\"is_xmlrpc\";b:0;s:10:\"is_wp_rest\";b:0;s:7:\"is_ajax\";b:0;s:11:\"is_wp_admin\";b:1;s:6:\"is_cli\";b:0;s:8:\"from_url\";s:136:\"http://localhost//wp-admin/plugins.php?action=deactivate&plugin=jetpack%2Fjetpack.php&plugin_status=all&paged=1&s&_wpnonce=24d2958ad1\";}}', 'no'),
(794, 'jpsq_sync-1540057996.295715-708055-44', 'a:6:{i:0;s:21:\"jetpack_sync_callable\";i:1;a:2:{i:0;s:29:\"sso_bypass_default_login_form\";i:1;b:0;}i:2;i:1;i:3;d:1540057996.2956969738006591796875;i:4;b:0;i:5;a:14:{s:13:\"wpcom_user_id\";N;s:16:\"external_user_id\";i:1;s:12:\"display_name\";s:5:\"admin\";s:10:\"user_email\";s:22:\"diego.feliud@gmail.com\";s:10:\"user_roles\";a:1:{i:0;s:13:\"administrator\";}s:15:\"translated_role\";s:13:\"administrator\";s:7:\"is_cron\";b:0;s:7:\"is_rest\";b:0;s:9:\"is_xmlrpc\";b:0;s:10:\"is_wp_rest\";b:0;s:7:\"is_ajax\";b:0;s:11:\"is_wp_admin\";b:1;s:6:\"is_cli\";b:0;s:8:\"from_url\";s:136:\"http://localhost//wp-admin/plugins.php?action=deactivate&plugin=jetpack%2Fjetpack.php&plugin_status=all&paged=1&s&_wpnonce=24d2958ad1\";}}', 'no'),
(795, 'jpsq_sync-1540057996.295883-708055-45', 'a:6:{i:0;s:21:\"jetpack_sync_callable\";i:1;a:2:{i:0;s:10:\"wp_version\";i:1;s:5:\"4.9.8\";}i:2;i:1;i:3;d:1540057996.295864105224609375;i:4;b:0;i:5;a:14:{s:13:\"wpcom_user_id\";N;s:16:\"external_user_id\";i:1;s:12:\"display_name\";s:5:\"admin\";s:10:\"user_email\";s:22:\"diego.feliud@gmail.com\";s:10:\"user_roles\";a:1:{i:0;s:13:\"administrator\";}s:15:\"translated_role\";s:13:\"administrator\";s:7:\"is_cron\";b:0;s:7:\"is_rest\";b:0;s:9:\"is_xmlrpc\";b:0;s:10:\"is_wp_rest\";b:0;s:7:\"is_ajax\";b:0;s:11:\"is_wp_admin\";b:1;s:6:\"is_cli\";b:0;s:8:\"from_url\";s:136:\"http://localhost//wp-admin/plugins.php?action=deactivate&plugin=jetpack%2Fjetpack.php&plugin_status=all&paged=1&s&_wpnonce=24d2958ad1\";}}', 'no'),
(796, 'jpsq_sync-1540057996.296321-708055-46', 'a:6:{i:0;s:21:\"jetpack_sync_callable\";i:1;a:2:{i:0;s:11:\"get_plugins\";i:1;a:9:{s:19:\"akismet/akismet.php\";a:13:{s:20:\"WC requires at least\";s:0:\"\";s:15:\"WC tested up to\";s:0:\"\";s:4:\"Name\";s:17:\"Akismet Anti-Spam\";s:9:\"PluginURI\";s:20:\"https://akismet.com/\";s:7:\"Version\";s:5:\"4.0.8\";s:11:\"Description\";s:279:\"Used by millions, Akismet is quite possibly the best way in the world to <strong>protect your blog from spam</strong>. It keeps your site protected even while you sleep. To get started: activate the Akismet plugin and then go to your Akismet Settings page to set up your API key.\";s:6:\"Author\";s:10:\"Automattic\";s:9:\"AuthorURI\";s:41:\"https://automattic.com/wordpress-plugins/\";s:10:\"TextDomain\";s:7:\"akismet\";s:10:\"DomainPath\";s:0:\"\";s:7:\"Network\";b:0;s:5:\"Title\";s:17:\"Akismet Anti-Spam\";s:10:\"AuthorName\";s:10:\"Automattic\";}s:41:\"wpcat2tag-importer/wpcat2tag-importer.php\";a:13:{s:20:\"WC requires at least\";s:0:\"\";s:15:\"WC tested up to\";s:0:\"\";s:4:\"Name\";s:37:\"Categories to Tags Converter Importer\";s:9:\"PluginURI\";s:55:\"http://wordpress.org/extend/plugins/wpcat2tag-importer/\";s:7:\"Version\";s:3:\"0.5\";s:11:\"Description\";s:71:\"Convert existing categories to tags or tags to categories, selectively.\";s:6:\"Author\";s:15:\"wordpressdotorg\";s:9:\"AuthorURI\";s:21:\"http://wordpress.org/\";s:10:\"TextDomain\";s:18:\"wpcat2tag-importer\";s:10:\"DomainPath\";s:0:\"\";s:7:\"Network\";b:0;s:5:\"Title\";s:37:\"Categories to Tags Converter Importer\";s:10:\"AuthorName\";s:15:\"wordpressdotorg\";}s:23:\"gutenberg/gutenberg.php\";a:13:{s:20:\"WC requires at least\";s:0:\"\";s:15:\"WC tested up to\";s:0:\"\";s:4:\"Name\";s:9:\"Gutenberg\";s:9:\"PluginURI\";s:38:\"https://github.com/WordPress/gutenberg\";s:7:\"Version\";s:5:\"4.0.0\";s:11:\"Description\";s:85:\"Printing since 1440. This is the development plugin for the new block editor in core.\";s:6:\"Author\";s:14:\"Gutenberg Team\";s:9:\"AuthorURI\";s:0:\"\";s:10:\"TextDomain\";s:9:\"gutenberg\";s:10:\"DomainPath\";s:0:\"\";s:7:\"Network\";b:0;s:5:\"Title\";s:9:\"Gutenberg\";s:10:\"AuthorName\";s:14:\"Gutenberg Team\";}s:9:\"hello.php\";a:13:{s:20:\"WC requires at least\";s:0:\"\";s:15:\"WC tested up to\";s:0:\"\";s:4:\"Name\";s:11:\"Hello Dolly\";s:9:\"PluginURI\";s:41:\"http://wordpress.org/plugins/hello-dolly/\";s:7:\"Version\";s:3:\"1.7\";s:11:\"Description\";s:295:\"This is not just a plugin, it symbolizes the hope and enthusiasm of an entire generation summed up in two words sung most famously by Louis Armstrong: Hello, Dolly. When activated you will randomly see a lyric from <cite>Hello, Dolly</cite> in the upper right of your admin screen on every page.\";s:6:\"Author\";s:14:\"Matt Mullenweg\";s:9:\"AuthorURI\";s:13:\"http://ma.tt/\";s:10:\"TextDomain\";s:0:\"\";s:10:\"DomainPath\";s:0:\"\";s:7:\"Network\";b:0;s:5:\"Title\";s:11:\"Hello Dolly\";s:10:\"AuthorName\";s:14:\"Matt Mullenweg\";}s:19:\"jetpack/jetpack.php\";a:13:{s:20:\"WC requires at least\";s:0:\"\";s:15:\"WC tested up to\";s:0:\"\";s:4:\"Name\";s:24:\"Jetpack by WordPress.com\";s:9:\"PluginURI\";s:19:\"https://jetpack.com\";s:7:\"Version\";s:5:\"6.6.1\";s:11:\"Description\";s:218:\"Bring the power of the WordPress.com cloud to your self-hosted WordPress. Jetpack enables you to connect your blog to a WordPress.com account to use the powerful features normally only available to WordPress.com users.\";s:6:\"Author\";s:10:\"Automattic\";s:9:\"AuthorURI\";s:19:\"https://jetpack.com\";s:10:\"TextDomain\";s:7:\"jetpack\";s:10:\"DomainPath\";s:11:\"/languages/\";s:7:\"Network\";b:0;s:5:\"Title\";s:24:\"Jetpack by WordPress.com\";s:10:\"AuthorName\";s:10:\"Automattic\";}s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";a:13:{s:20:\"WC requires at least\";s:0:\"\";s:15:\"WC tested up to\";s:0:\"\";s:4:\"Name\";s:25:\"Mailchimp for WooCommerce\";s:9:\"PluginURI\";s:41:\"https://mailchimp.com/connect-your-store/\";s:7:\"Version\";s:6:\"2.1.11\";s:11:\"Description\";s:30:\"Mailchimp - WooCommerce plugin\";s:6:\"Author\";s:9:\"Mailchimp\";s:9:\"AuthorURI\";s:21:\"https://mailchimp.com\";s:10:\"TextDomain\";s:21:\"mailchimp-woocommerce\";s:10:\"DomainPath\";s:10:\"/languages\";s:7:\"Network\";b:0;s:5:\"Title\";s:25:\"Mailchimp for WooCommerce\";s:10:\"AuthorName\";s:9:\"Mailchimp\";}s:27:\"woocommerce/woocommerce.php\";a:13:{s:20:\"WC requires at least\";s:0:\"\";s:15:\"WC tested up to\";s:0:\"\";s:4:\"Name\";s:11:\"WooCommerce\";s:9:\"PluginURI\";s:24:\"https://woocommerce.com/\";s:7:\"Version\";s:5:\"3.4.7\";s:11:\"Description\";s:63:\"An eCommerce toolkit that helps you sell anything. Beautifully.\";s:6:\"Author\";s:10:\"Automattic\";s:9:\"AuthorURI\";s:23:\"https://woocommerce.com\";s:10:\"TextDomain\";s:11:\"woocommerce\";s:10:\"DomainPath\";s:16:\"/i18n/languages/\";s:7:\"Network\";b:0;s:5:\"Title\";s:11:\"WooCommerce\";s:10:\"AuthorName\";s:10:\"Automattic\";}s:69:\"woo-gutenberg-products-block/woocommerce-gutenberg-products-block.php\";a:13:{s:20:\"WC requires at least\";s:3:\"3.3\";s:15:\"WC tested up to\";s:3:\"3.4\";s:4:\"Name\";s:36:\"WooCommerce Gutenberg Products Block\";s:9:\"PluginURI\";s:67:\"https://github.com/woocommerce/woocommerce-gutenberg-products-block\";s:7:\"Version\";s:5:\"1.1.2\";s:11:\"Description\";s:52:\"WooCommerce Products block for the Gutenberg editor.\";s:6:\"Author\";s:10:\"Automattic\";s:9:\"AuthorURI\";s:23:\"https://woocommerce.com\";s:10:\"TextDomain\";s:11:\"woocommerce\";s:10:\"DomainPath\";s:10:\"/languages\";s:7:\"Network\";b:0;s:5:\"Title\";s:36:\"WooCommerce Gutenberg Products Block\";s:10:\"AuthorName\";s:10:\"Automattic\";}s:45:\"woocommerce-services/woocommerce-services.php\";a:13:{s:20:\"WC requires at least\";s:5:\"3.0.0\";s:15:\"WC tested up to\";s:5:\"3.4.3\";s:4:\"Name\";s:20:\"WooCommerce Services\";s:9:\"PluginURI\";s:24:\"https://woocommerce.com/\";s:7:\"Version\";s:6:\"1.16.1\";s:11:\"Description\";s:133:\"Hosted services for WooCommerce: automated tax calculation, live shipping rates, shipping label printing, and smoother payment setup.\";s:6:\"Author\";s:10:\"Automattic\";s:9:\"AuthorURI\";s:24:\"https://woocommerce.com/\";s:10:\"TextDomain\";s:20:\"woocommerce-services\";s:10:\"DomainPath\";s:16:\"/i18n/languages/\";s:7:\"Network\";b:0;s:5:\"Title\";s:20:\"WooCommerce Services\";s:10:\"AuthorName\";s:10:\"Automattic\";}}}i:2;i:1;i:3;d:1540057996.2963008880615234375;i:4;b:0;i:5;a:14:{s:13:\"wpcom_user_id\";N;s:16:\"external_user_id\";i:1;s:12:\"display_name\";s:5:\"admin\";s:10:\"user_email\";s:22:\"diego.feliud@gmail.com\";s:10:\"user_roles\";a:1:{i:0;s:13:\"administrator\";}s:15:\"translated_role\";s:13:\"administrator\";s:7:\"is_cron\";b:0;s:7:\"is_rest\";b:0;s:9:\"is_xmlrpc\";b:0;s:10:\"is_wp_rest\";b:0;s:7:\"is_ajax\";b:0;s:11:\"is_wp_admin\";b:1;s:6:\"is_cli\";b:0;s:8:\"from_url\";s:136:\"http://localhost//wp-admin/plugins.php?action=deactivate&plugin=jetpack%2Fjetpack.php&plugin_status=all&paged=1&s&_wpnonce=24d2958ad1\";}}', 'no'),
(797, 'jpsq_sync-1540057996.296712-708055-47', 'a:6:{i:0;s:21:\"jetpack_sync_callable\";i:1;a:2:{i:0;s:24:\"get_plugins_action_links\";i:1;a:0:{}}i:2;i:1;i:3;d:1540057996.29669189453125;i:4;b:0;i:5;a:14:{s:13:\"wpcom_user_id\";N;s:16:\"external_user_id\";i:1;s:12:\"display_name\";s:5:\"admin\";s:10:\"user_email\";s:22:\"diego.feliud@gmail.com\";s:10:\"user_roles\";a:1:{i:0;s:13:\"administrator\";}s:15:\"translated_role\";s:13:\"administrator\";s:7:\"is_cron\";b:0;s:7:\"is_rest\";b:0;s:9:\"is_xmlrpc\";b:0;s:10:\"is_wp_rest\";b:0;s:7:\"is_ajax\";b:0;s:11:\"is_wp_admin\";b:1;s:6:\"is_cli\";b:0;s:8:\"from_url\";s:136:\"http://localhost//wp-admin/plugins.php?action=deactivate&plugin=jetpack%2Fjetpack.php&plugin_status=all&paged=1&s&_wpnonce=24d2958ad1\";}}', 'no'),
(798, 'jpsq_sync-1540057996.296891-708055-48', 'a:6:{i:0;s:21:\"jetpack_sync_callable\";i:1;a:2:{i:0;s:14:\"active_modules\";i:1;a:0:{}}i:2;i:1;i:3;d:1540057996.2968719005584716796875;i:4;b:0;i:5;a:14:{s:13:\"wpcom_user_id\";N;s:16:\"external_user_id\";i:1;s:12:\"display_name\";s:5:\"admin\";s:10:\"user_email\";s:22:\"diego.feliud@gmail.com\";s:10:\"user_roles\";a:1:{i:0;s:13:\"administrator\";}s:15:\"translated_role\";s:13:\"administrator\";s:7:\"is_cron\";b:0;s:7:\"is_rest\";b:0;s:9:\"is_xmlrpc\";b:0;s:10:\"is_wp_rest\";b:0;s:7:\"is_ajax\";b:0;s:11:\"is_wp_admin\";b:1;s:6:\"is_cli\";b:0;s:8:\"from_url\";s:136:\"http://localhost//wp-admin/plugins.php?action=deactivate&plugin=jetpack%2Fjetpack.php&plugin_status=all&paged=1&s&_wpnonce=24d2958ad1\";}}', 'no'),
(799, 'jpsq_sync-1540057996.297135-708055-49', 'a:6:{i:0;s:21:\"jetpack_sync_callable\";i:1;a:2:{i:0;s:16:\"hosting_provider\";i:1;s:7:\"unknown\";}i:2;i:1;i:3;d:1540057996.2971160411834716796875;i:4;b:0;i:5;a:14:{s:13:\"wpcom_user_id\";N;s:16:\"external_user_id\";i:1;s:12:\"display_name\";s:5:\"admin\";s:10:\"user_email\";s:22:\"diego.feliud@gmail.com\";s:10:\"user_roles\";a:1:{i:0;s:13:\"administrator\";}s:15:\"translated_role\";s:13:\"administrator\";s:7:\"is_cron\";b:0;s:7:\"is_rest\";b:0;s:9:\"is_xmlrpc\";b:0;s:10:\"is_wp_rest\";b:0;s:7:\"is_ajax\";b:0;s:11:\"is_wp_admin\";b:1;s:6:\"is_cli\";b:0;s:8:\"from_url\";s:136:\"http://localhost//wp-admin/plugins.php?action=deactivate&plugin=jetpack%2Fjetpack.php&plugin_status=all&paged=1&s&_wpnonce=24d2958ad1\";}}', 'no'),
(800, 'jpsq_sync-1540057996.297325-708055-50', 'a:6:{i:0;s:21:\"jetpack_sync_callable\";i:1;a:2:{i:0;s:6:\"locale\";i:1;s:5:\"es_ES\";}i:2;i:1;i:3;d:1540057996.29730701446533203125;i:4;b:0;i:5;a:14:{s:13:\"wpcom_user_id\";N;s:16:\"external_user_id\";i:1;s:12:\"display_name\";s:5:\"admin\";s:10:\"user_email\";s:22:\"diego.feliud@gmail.com\";s:10:\"user_roles\";a:1:{i:0;s:13:\"administrator\";}s:15:\"translated_role\";s:13:\"administrator\";s:7:\"is_cron\";b:0;s:7:\"is_rest\";b:0;s:9:\"is_xmlrpc\";b:0;s:10:\"is_wp_rest\";b:0;s:7:\"is_ajax\";b:0;s:11:\"is_wp_admin\";b:1;s:6:\"is_cli\";b:0;s:8:\"from_url\";s:136:\"http://localhost//wp-admin/plugins.php?action=deactivate&plugin=jetpack%2Fjetpack.php&plugin_status=all&paged=1&s&_wpnonce=24d2958ad1\";}}', 'no'),
(801, 'jpsq_sync-1540057996.297491-708055-51', 'a:6:{i:0;s:21:\"jetpack_sync_callable\";i:1;a:2:{i:0;s:13:\"site_icon_url\";i:1;b:0;}i:2;i:1;i:3;d:1540057996.29747295379638671875;i:4;b:0;i:5;a:14:{s:13:\"wpcom_user_id\";N;s:16:\"external_user_id\";i:1;s:12:\"display_name\";s:5:\"admin\";s:10:\"user_email\";s:22:\"diego.feliud@gmail.com\";s:10:\"user_roles\";a:1:{i:0;s:13:\"administrator\";}s:15:\"translated_role\";s:13:\"administrator\";s:7:\"is_cron\";b:0;s:7:\"is_rest\";b:0;s:9:\"is_xmlrpc\";b:0;s:10:\"is_wp_rest\";b:0;s:7:\"is_ajax\";b:0;s:11:\"is_wp_admin\";b:1;s:6:\"is_cli\";b:0;s:8:\"from_url\";s:136:\"http://localhost//wp-admin/plugins.php?action=deactivate&plugin=jetpack%2Fjetpack.php&plugin_status=all&paged=1&s&_wpnonce=24d2958ad1\";}}', 'no'),
(802, 'jpsq_sync-1540057996.297830-708055-52', 'a:6:{i:0;s:21:\"jetpack_sync_callable\";i:1;a:2:{i:0;s:5:\"roles\";i:1;a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:126:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:11:\"edit_blocks\";b:1;s:18:\"edit_others_blocks\";b:1;s:14:\"publish_blocks\";b:1;s:19:\"read_private_blocks\";b:1;s:11:\"read_blocks\";b:1;s:13:\"delete_blocks\";b:1;s:21:\"delete_private_blocks\";b:1;s:23:\"delete_published_blocks\";b:1;s:20:\"delete_others_blocks\";b:1;s:19:\"edit_private_blocks\";b:1;s:21:\"edit_published_blocks\";b:1;s:13:\"create_blocks\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:46:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:11:\"edit_blocks\";b:1;s:18:\"edit_others_blocks\";b:1;s:14:\"publish_blocks\";b:1;s:19:\"read_private_blocks\";b:1;s:11:\"read_blocks\";b:1;s:13:\"delete_blocks\";b:1;s:21:\"delete_private_blocks\";b:1;s:23:\"delete_published_blocks\";b:1;s:20:\"delete_others_blocks\";b:1;s:19:\"edit_private_blocks\";b:1;s:21:\"edit_published_blocks\";b:1;s:13:\"create_blocks\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:17:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:11:\"edit_blocks\";b:1;s:14:\"publish_blocks\";b:1;s:11:\"read_blocks\";b:1;s:13:\"delete_blocks\";b:1;s:23:\"delete_published_blocks\";b:1;s:21:\"edit_published_blocks\";b:1;s:13:\"create_blocks\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:6:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:11:\"read_blocks\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}}i:2;i:1;i:3;d:1540057996.297811031341552734375;i:4;b:0;i:5;a:14:{s:13:\"wpcom_user_id\";N;s:16:\"external_user_id\";i:1;s:12:\"display_name\";s:5:\"admin\";s:10:\"user_email\";s:22:\"diego.feliud@gmail.com\";s:10:\"user_roles\";a:1:{i:0;s:13:\"administrator\";}s:15:\"translated_role\";s:13:\"administrator\";s:7:\"is_cron\";b:0;s:7:\"is_rest\";b:0;s:9:\"is_xmlrpc\";b:0;s:10:\"is_wp_rest\";b:0;s:7:\"is_ajax\";b:0;s:11:\"is_wp_admin\";b:1;s:6:\"is_cli\";b:0;s:8:\"from_url\";s:136:\"http://localhost//wp-admin/plugins.php?action=deactivate&plugin=jetpack%2Fjetpack.php&plugin_status=all&paged=1&s&_wpnonce=24d2958ad1\";}}', 'no'),
(803, 'jpsq_sync-1540057996.298308-708055-53', 'a:6:{i:0;s:21:\"jetpack_sync_callable\";i:1;a:2:{i:0;s:8:\"timezone\";i:1;s:13:\"Europe/Madrid\";}i:2;i:1;i:3;d:1540057996.2982881069183349609375;i:4;b:0;i:5;a:14:{s:13:\"wpcom_user_id\";N;s:16:\"external_user_id\";i:1;s:12:\"display_name\";s:5:\"admin\";s:10:\"user_email\";s:22:\"diego.feliud@gmail.com\";s:10:\"user_roles\";a:1:{i:0;s:13:\"administrator\";}s:15:\"translated_role\";s:13:\"administrator\";s:7:\"is_cron\";b:0;s:7:\"is_rest\";b:0;s:9:\"is_xmlrpc\";b:0;s:10:\"is_wp_rest\";b:0;s:7:\"is_ajax\";b:0;s:11:\"is_wp_admin\";b:1;s:6:\"is_cli\";b:0;s:8:\"from_url\";s:136:\"http://localhost//wp-admin/plugins.php?action=deactivate&plugin=jetpack%2Fjetpack.php&plugin_status=all&paged=1&s&_wpnonce=24d2958ad1\";}}', 'no'),
(804, 'jetpack_callables_sync_checksum', 'a:30:{s:18:\"wp_max_upload_size\";i:3564436882;s:15:\"is_main_network\";i:734881840;s:13:\"is_multi_site\";i:734881840;s:17:\"main_network_site\";i:3329199255;s:8:\"site_url\";i:3329199255;s:8:\"home_url\";i:3329199255;s:16:\"single_user_site\";i:4261170317;s:7:\"updates\";i:3425443202;s:28:\"has_file_system_write_access\";i:4261170317;s:21:\"is_version_controlled\";i:734881840;s:10:\"taxonomies\";i:937232550;s:10:\"post_types\";i:4117580463;s:18:\"post_type_features\";i:248599941;s:10:\"shortcodes\";i:1978426851;s:27:\"rest_api_allowed_post_types\";i:2759734118;s:32:\"rest_api_allowed_public_metadata\";i:223132457;s:24:\"sso_is_two_step_required\";i:734881840;s:26:\"sso_should_hide_login_form\";i:734881840;s:18:\"sso_match_by_email\";i:4261170317;s:21:\"sso_new_user_override\";i:734881840;s:29:\"sso_bypass_default_login_form\";i:734881840;s:10:\"wp_version\";i:1499136715;s:11:\"get_plugins\";i:1687717027;s:24:\"get_plugins_action_links\";i:223132457;s:14:\"active_modules\";i:223132457;s:16:\"hosting_provider\";i:769900095;s:6:\"locale\";i:2194467985;s:13:\"site_icon_url\";i:734881840;s:5:\"roles\";i:704346316;s:8:\"timezone\";i:3458270792;}', 'no'),
(805, 'jpsq_sync_checkout', '0:0', 'no'),
(808, 'jetpack_next_sync_time_sync', '1540058056', 'yes'),
(809, 'jetpack_next_sync_time_full-sync-enqueue', '1540058006', 'yes'),
(1086, 'woocommerce_placeholder_image', '', 'yes'),
(1116, 'pb_enable_welcome_message', '', 'yes'),
(1117, 'pb_application_id', '5bd87f0e0540a320a16cfa82', 'yes'),
(1118, 'pb_application_secret', 'ee51b1e59c740c182442c178fab96600', 'yes'),
(1119, 'pb_gcm_sender_id', '', 'yes'),
(1120, 'pb_website_url', 'http://localhost/', 'yes'),
(1121, 'pb_safari_push_id', '', 'yes'),
(1122, 'pb_welcome_title', '', 'yes'),
(1123, 'pb_welcome_message', '', 'yes'),
(1539, 'woocommerce_version', '3.5.1', 'yes'),
(1540, 'woocommerce_db_version', '3.5.1', 'yes'),
(1790, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:0;s:3:\"all\";i:0;s:9:\"moderated\";i:0;s:8:\"approved\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(1791, '_transient_as_comment_count', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:0;s:3:\"all\";i:0;s:9:\"moderated\";i:0;s:8:\"approved\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(2341, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:3:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:63:\"https://downloads.wordpress.org/release/es_ES/wordpress-5.0.zip\";s:6:\"locale\";s:5:\"es_ES\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:63:\"https://downloads.wordpress.org/release/es_ES/wordpress-5.0.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.0\";s:7:\"version\";s:3:\"5.0\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.0.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.0.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.0-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.0-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.0\";s:7:\"version\";s:3:\"5.0\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.0.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.0.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.0-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.0-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.0\";s:7:\"version\";s:3:\"5.0\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1544533601;s:15:\"version_checked\";s:5:\"4.9.8\";s:12:\"translations\";a:0:{}}', 'no'),
(2342, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1544533602;s:7:\"checked\";a:1:{s:14:\"brix-portfolio\";s:6:\"1.0.16\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(2701, '_site_transient_timeout_theme_roots', '1544535401', 'no'),
(2702, '_site_transient_theme_roots', 'a:2:{s:14:\"brix-portfolio\";s:7:\"/themes\";s:9:\"templates\";s:43:\"/home/ocodesig/public_html/resources/themes\";}', 'no'),
(2703, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1544533602;s:7:\"checked\";a:11:{s:19:\"akismet/akismet.php\";s:5:\"4.0.8\";s:41:\"wpcat2tag-importer/wpcat2tag-importer.php\";s:3:\"0.5\";s:23:\"gutenberg/gutenberg.php\";s:5:\"4.4.0\";s:9:\"hello.php\";s:3:\"1.7\";s:19:\"jetpack/jetpack.php\";s:3:\"6.7\";s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";s:6:\"2.1.11\";s:41:\"pushbots-web-push-notifications/index.php\";s:5:\"1.0.7\";s:27:\"woocommerce/woocommerce.php\";s:5:\"3.5.1\";s:69:\"woo-gutenberg-products-block/woocommerce-gutenberg-products-block.php\";s:5:\"1.1.2\";s:45:\"woocommerce-services/woocommerce-services.php\";s:6:\"1.17.1\";s:24:\"wordpress-seo/wp-seo.php\";s:3:\"9.1\";}s:8:\"response\";a:7:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"4.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.4.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.0\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:23:\"gutenberg/gutenberg.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:23:\"w.org/plugins/gutenberg\";s:4:\"slug\";s:9:\"gutenberg\";s:6:\"plugin\";s:23:\"gutenberg/gutenberg.php\";s:11:\"new_version\";s:5:\"4.6.1\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/gutenberg/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/gutenberg.4.6.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:62:\"https://ps.w.org/gutenberg/assets/icon-256x256.jpg?rev=1776042\";s:2:\"1x\";s:62:\"https://ps.w.org/gutenberg/assets/icon-128x128.jpg?rev=1776042\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/gutenberg/assets/banner-1544x500.jpg?rev=1718710\";s:2:\"1x\";s:64:\"https://ps.w.org/gutenberg/assets/banner-772x250.jpg?rev=1718710\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.8\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:19:\"jetpack/jetpack.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/jetpack\";s:4:\"slug\";s:7:\"jetpack\";s:6:\"plugin\";s:19:\"jetpack/jetpack.php\";s:11:\"new_version\";s:5:\"6.8.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/jetpack/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/jetpack.6.8.1.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:60:\"https://ps.w.org/jetpack/assets/icon-256x256.png?rev=1791404\";s:2:\"1x\";s:52:\"https://ps.w.org/jetpack/assets/icon.svg?rev=1791404\";s:3:\"svg\";s:52:\"https://ps.w.org/jetpack/assets/icon.svg?rev=1791404\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/jetpack/assets/banner-1544x500.png?rev=1791404\";s:2:\"1x\";s:62:\"https://ps.w.org/jetpack/assets/banner-772x250.png?rev=1791404\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.0\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.5.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.3.5.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=1440831\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=1440831\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=1629184\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=1629184\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.0\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:69:\"woo-gutenberg-products-block/woocommerce-gutenberg-products-block.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:42:\"w.org/plugins/woo-gutenberg-products-block\";s:4:\"slug\";s:28:\"woo-gutenberg-products-block\";s:6:\"plugin\";s:69:\"woo-gutenberg-products-block/woocommerce-gutenberg-products-block.php\";s:11:\"new_version\";s:5:\"1.2.0\";s:3:\"url\";s:59:\"https://wordpress.org/plugins/woo-gutenberg-products-block/\";s:7:\"package\";s:77:\"https://downloads.wordpress.org/plugin/woo-gutenberg-products-block.1.2.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:81:\"https://ps.w.org/woo-gutenberg-products-block/assets/icon-256x256.png?rev=1863757\";s:2:\"1x\";s:81:\"https://ps.w.org/woo-gutenberg-products-block/assets/icon-128x128.png?rev=1863757\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:83:\"https://ps.w.org/woo-gutenberg-products-block/assets/banner-772x250.png?rev=1863757\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.0\";s:12:\"requires_php\";s:3:\"5.2\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:45:\"woocommerce-services/woocommerce-services.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:34:\"w.org/plugins/woocommerce-services\";s:4:\"slug\";s:20:\"woocommerce-services\";s:6:\"plugin\";s:45:\"woocommerce-services/woocommerce-services.php\";s:11:\"new_version\";s:6:\"1.18.0\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/woocommerce-services/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/woocommerce-services.1.18.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/woocommerce-services/assets/icon-256x256.png?rev=1910075\";s:2:\"1x\";s:73:\"https://ps.w.org/woocommerce-services/assets/icon-128x128.png?rev=1910075\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/woocommerce-services/assets/banner-1544x500.png?rev=1962920\";s:2:\"1x\";s:75:\"https://ps.w.org/woocommerce-services/assets/banner-772x250.png?rev=1962920\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.0\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:24:\"wordpress-seo/wp-seo.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:27:\"w.org/plugins/wordpress-seo\";s:4:\"slug\";s:13:\"wordpress-seo\";s:6:\"plugin\";s:24:\"wordpress-seo/wp-seo.php\";s:11:\"new_version\";s:5:\"9.2.1\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wordpress-seo/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/wordpress-seo.9.2.1.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:66:\"https://ps.w.org/wordpress-seo/assets/icon-256x256.png?rev=1834347\";s:2:\"1x\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1946641\";s:3:\"svg\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1946641\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=1843435\";s:2:\"1x\";s:68:\"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=1843435\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=1843435\";s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=1843435\";}s:6:\"tested\";s:3:\"5.0\";s:12:\"requires_php\";s:5:\"5.2.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:41:\"wpcat2tag-importer/wpcat2tag-importer.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/wpcat2tag-importer\";s:4:\"slug\";s:18:\"wpcat2tag-importer\";s:6:\"plugin\";s:41:\"wpcat2tag-importer/wpcat2tag-importer.php\";s:11:\"new_version\";s:3:\"0.5\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/wpcat2tag-importer/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/wpcat2tag-importer.0.5.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:71:\"https://ps.w.org/wpcat2tag-importer/assets/icon-256x256.jpg?rev=1908362\";s:2:\"1x\";s:63:\"https://ps.w.org/wpcat2tag-importer/assets/icon.svg?rev=1908362\";s:3:\"svg\";s:63:\"https://ps.w.org/wpcat2tag-importer/assets/icon.svg?rev=1908362\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:72:\"https://ps.w.org/wpcat2tag-importer/assets/banner-772x250.png?rev=547690\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:39:\"w.org/plugins/mailchimp-for-woocommerce\";s:4:\"slug\";s:25:\"mailchimp-for-woocommerce\";s:6:\"plugin\";s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";s:11:\"new_version\";s:6:\"2.1.11\";s:3:\"url\";s:56:\"https://wordpress.org/plugins/mailchimp-for-woocommerce/\";s:7:\"package\";s:75:\"https://downloads.wordpress.org/plugin/mailchimp-for-woocommerce.2.1.11.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/mailchimp-for-woocommerce/assets/icon-256x256.png?rev=1509501\";s:2:\"1x\";s:78:\"https://ps.w.org/mailchimp-for-woocommerce/assets/icon-256x256.png?rev=1509501\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:81:\"https://ps.w.org/mailchimp-for-woocommerce/assets/banner-1544x500.png?rev=1950415\";s:2:\"1x\";s:80:\"https://ps.w.org/mailchimp-for-woocommerce/assets/banner-772x250.jpg?rev=1950415\";}s:11:\"banners_rtl\";a:0:{}}s:41:\"pushbots-web-push-notifications/index.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:45:\"w.org/plugins/pushbots-web-push-notifications\";s:4:\"slug\";s:31:\"pushbots-web-push-notifications\";s:6:\"plugin\";s:41:\"pushbots-web-push-notifications/index.php\";s:11:\"new_version\";s:5:\"1.0.7\";s:3:\"url\";s:62:\"https://wordpress.org/plugins/pushbots-web-push-notifications/\";s:7:\"package\";s:80:\"https://downloads.wordpress.org/plugin/pushbots-web-push-notifications.1.0.7.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:84:\"https://ps.w.org/pushbots-web-push-notifications/assets/icon-128x128.png?rev=1764777\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:86:\"https://ps.w.org/pushbots-web-push-notifications/assets/banner-772x250.png?rev=1764777\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(2711, '_transient_doing_cron', '1544557977.9235188961029052734375', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Truncate table before insert `wp_postmeta`
--

TRUNCATE TABLE `wp_postmeta`;
--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_wp_attached_file', '2018/10/Edited-Image-2014-10-4-18_21_40.png'),
(4, 5, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:469;s:6:\"height\";i:522;s:4:\"file\";s:43:\"2018/10/Edited-Image-2014-10-4-18_21_40.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:43:\"Edited-Image-2014-10-4-18_21_40-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:43:\"Edited-Image-2014-10-4-18_21_40-270x300.png\";s:5:\"width\";i:270;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(5, 6, '_wp_attached_file', '2018/10/Edited-Image-2013-6-27-11_14_32.png'),
(6, 6, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:356;s:6:\"height\";i:340;s:4:\"file\";s:43:\"2018/10/Edited-Image-2013-6-27-11_14_32.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:43:\"Edited-Image-2013-6-27-11_14_32-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:43:\"Edited-Image-2013-6-27-11_14_32-300x287.png\";s:5:\"width\";i:300;s:6:\"height\";i:287;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(7, 6, '_wp_attachment_image_alt', 'logotipo'),
(8, 7, '_oembed_fb03bb0b9c9e7bf69eccd1e749e55745', '<iframe src=\"https://player.vimeo.com/video/22439234?app_id=122963\" width=\"500\" height=\"281\" frameborder=\"0\" title=\"The Mountain\" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>'),
(9, 7, '_oembed_time_fb03bb0b9c9e7bf69eccd1e749e55745', '1538828102'),
(12, 24, '_edit_last', '1'),
(15, 24, 'seo', 'a:1:{s:4:\"meta\";a:14:{s:5:\"title\";s:0:\"\";s:11:\"description\";s:0:\"\";s:8:\"og_title\";s:0:\"\";s:7:\"og_desc\";s:0:\"\";s:8:\"meta_img\";s:0:\"\";s:7:\"tw_site\";s:0:\"\";s:7:\"tw_card\";s:7:\"summary\";s:8:\"tw_title\";s:0:\"\";s:7:\"tw_desc\";s:0:\"\";s:6:\"tw_img\";s:0:\"\";s:9:\"canonical\";s:0:\"\";s:8:\"redirect\";s:0:\"\";s:6:\"follow\";s:4:\"none\";s:5:\"index\";s:4:\"none\";}}'),
(16, 24, '_edit_lock', '1539213999:1'),
(23, 24, '_pingme', '1'),
(24, 24, '_encloseme', '1'),
(25, 29, '_wp_attached_file', '2018/10/cropped-Edited-Image-2013-6-27-11_14_32.png'),
(26, 29, '_wp_attachment_context', 'site-icon'),
(27, 29, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:51:\"2018/10/cropped-Edited-Image-2013-6-27-11_14_32.png\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:51:\"cropped-Edited-Image-2013-6-27-11_14_32-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:51:\"cropped-Edited-Image-2013-6-27-11_14_32-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:4:\"card\";a:4:{s:4:\"file\";s:51:\"cropped-Edited-Image-2013-6-27-11_14_32-512x350.png\";s:5:\"width\";i:512;s:6:\"height\";i:350;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:51:\"cropped-Edited-Image-2013-6-27-11_14_32-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:51:\"cropped-Edited-Image-2013-6-27-11_14_32-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:51:\"cropped-Edited-Image-2013-6-27-11_14_32-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:49:\"cropped-Edited-Image-2013-6-27-11_14_32-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(37, 36, '_edit_last', '1'),
(38, 36, 'seo', 'a:1:{s:4:\"meta\";a:14:{s:5:\"title\";s:0:\"\";s:11:\"description\";s:0:\"\";s:8:\"og_title\";s:0:\"\";s:7:\"og_desc\";s:0:\"\";s:8:\"meta_img\";s:0:\"\";s:7:\"tw_site\";s:0:\"\";s:7:\"tw_card\";s:7:\"summary\";s:8:\"tw_title\";s:0:\"\";s:7:\"tw_desc\";s:0:\"\";s:6:\"tw_img\";s:0:\"\";s:9:\"canonical\";s:0:\"\";s:8:\"redirect\";s:0:\"\";s:6:\"follow\";s:4:\"none\";s:5:\"index\";s:4:\"none\";}}'),
(39, 36, '_edit_lock', '1539475344:1'),
(43, 42, '_edit_last', '1'),
(44, 42, 'seo', 'a:1:{s:4:\"meta\";a:14:{s:5:\"title\";s:0:\"\";s:11:\"description\";s:0:\"\";s:8:\"og_title\";s:0:\"\";s:7:\"og_desc\";s:0:\"\";s:8:\"meta_img\";s:0:\"\";s:7:\"tw_site\";s:0:\"\";s:7:\"tw_card\";s:7:\"summary\";s:8:\"tw_title\";s:0:\"\";s:7:\"tw_desc\";s:0:\"\";s:6:\"tw_img\";s:0:\"\";s:9:\"canonical\";s:0:\"\";s:8:\"redirect\";s:0:\"\";s:6:\"follow\";s:4:\"none\";s:5:\"index\";s:4:\"none\";}}'),
(45, 42, '_edit_lock', '1539544691:1'),
(49, 43, '_edit_last', '1'),
(50, 43, 'seo', 'a:1:{s:4:\"meta\";a:14:{s:5:\"title\";s:8:\"Projects\";s:11:\"description\";s:0:\"\";s:8:\"og_title\";s:0:\"\";s:7:\"og_desc\";s:0:\"\";s:8:\"meta_img\";s:0:\"\";s:7:\"tw_site\";s:0:\"\";s:7:\"tw_card\";s:7:\"summary\";s:8:\"tw_title\";s:0:\"\";s:7:\"tw_desc\";s:0:\"\";s:6:\"tw_img\";s:0:\"\";s:9:\"canonical\";s:8:\"projects\";s:8:\"redirect\";s:0:\"\";s:6:\"follow\";s:6:\"follow\";s:5:\"index\";s:5:\"index\";}}'),
(51, 43, '_edit_lock', '1539477945:1'),
(52, 43, 'use_builder', '0'),
(53, 46, '_wp_attached_file', '2018/10/2-5.jpg'),
(54, 46, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:1063;s:4:\"file\";s:15:\"2018/10/2-5.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"2-5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"2-5-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"2-5-768x510.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"2-5-1024x680.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:680;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"full-width\";a:4:{s:4:\"file\";s:16:\"2-5-1200x800.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:15:\"2-5-800x650.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"card\";a:4:{s:4:\"file\";s:15:\"2-5-600x350.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(55, 42, 'profile_picture', '46'),
(56, 42, 'favourite_color', '#ce10a5'),
(57, 47, '_edit_last', '1'),
(58, 47, 'seo', 'a:1:{s:4:\"meta\";a:14:{s:5:\"title\";s:0:\"\";s:11:\"description\";s:0:\"\";s:8:\"og_title\";s:0:\"\";s:7:\"og_desc\";s:0:\"\";s:8:\"meta_img\";s:0:\"\";s:7:\"tw_site\";s:0:\"\";s:7:\"tw_card\";s:7:\"summary\";s:8:\"tw_title\";s:0:\"\";s:7:\"tw_desc\";s:0:\"\";s:6:\"tw_img\";s:0:\"\";s:9:\"canonical\";s:0:\"\";s:8:\"redirect\";s:0:\"\";s:6:\"follow\";s:4:\"none\";s:5:\"index\";s:4:\"none\";}}'),
(59, 47, '_edit_lock', '1539479513:1'),
(60, 48, '_wp_attached_file', '2018/10/recibidor-1-4-e1539557330351.jpg'),
(61, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:969;s:4:\"file\";s:40:\"2018/10/recibidor-1-4-e1539557330351.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"recibidor-1-4-e1539557330351-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"recibidor-1-4-e1539557330351-300x151.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:151;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:40:\"recibidor-1-4-e1539557330351-768x388.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:388;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:41:\"recibidor-1-4-e1539557330351-1024x517.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:517;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"full-width\";a:4:{s:4:\"file\";s:41:\"recibidor-1-4-e1539557330351-1200x800.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:40:\"recibidor-1-4-e1539557330351-800x650.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"card\";a:4:{s:4:\"file\";s:40:\"recibidor-1-4-e1539557330351-600x350.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(62, 48, '_edit_lock', '1539633224:1'),
(63, 48, '_edit_last', '1'),
(64, 48, '_wp_attachment_backup_sizes', 'a:8:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:1920;s:6:\"height\";i:969;s:4:\"file\";s:17:\"recibidor-1-4.jpg\";}s:14:\"thumbnail-orig\";a:4:{s:4:\"file\";s:25:\"recibidor-1-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"medium-orig\";a:4:{s:4:\"file\";s:25:\"recibidor-1-4-300x151.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:151;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"medium_large-orig\";a:4:{s:4:\"file\";s:25:\"recibidor-1-4-768x388.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:388;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"large-orig\";a:4:{s:4:\"file\";s:26:\"recibidor-1-4-1024x517.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:517;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"full-width-orig\";a:4:{s:4:\"file\";s:26:\"recibidor-1-4-1200x800.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"post-thumbnail-orig\";a:4:{s:4:\"file\";s:25:\"recibidor-1-4-800x650.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"card-orig\";a:4:{s:4:\"file\";s:25:\"recibidor-1-4-600x350.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}}'),
(65, 49, '_wp_attached_file', '2018/10/salon2-4-2-sin-tv.jpg'),
(66, 49, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:969;s:4:\"file\";s:29:\"2018/10/salon2-4-2-sin-tv.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"salon2-4-2-sin-tv-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"salon2-4-2-sin-tv-300x151.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:151;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"salon2-4-2-sin-tv-768x388.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:388;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:30:\"salon2-4-2-sin-tv-1024x517.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:517;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"full-width\";a:4:{s:4:\"file\";s:30:\"salon2-4-2-sin-tv-1200x800.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:29:\"salon2-4-2-sin-tv-800x650.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"card\";a:4:{s:4:\"file\";s:29:\"salon2-4-2-sin-tv-600x350.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Truncate table before insert `wp_posts`
--

TRUNCATE TABLE `wp_posts`;
--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-09-08 01:04:55', '2018-09-08 00:04:55', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-09-08 01:04:55', '2018-09-08 00:04:55', '', 0, 'http://ocodesign.es//?p=1', 0, 'post', '', 0),
(3, 1, '2018-09-08 01:04:55', '2018-09-08 00:04:55', '<h2>Who we are</h2><p>Our website address is: http://ocodesign.es/.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymised string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognise and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2018-09-08 01:04:55', '2018-09-08 00:04:55', '', 0, 'http://ocodesign.es//?page_id=3', 0, 'page', '', 0),
(5, 1, '2018-10-05 20:29:19', '2018-10-05 19:29:19', '', 'Edited Image 2014-10-4-18_21_40', '', 'inherit', 'open', 'closed', '', 'edited-image-2014-10-4-18_21_40', '', '', '2018-10-05 20:29:19', '2018-10-05 19:29:19', '', 0, 'http://ocodesign.es//wp-content/uploads/2018/10/Edited-Image-2014-10-4-18_21_40.png', 0, 'attachment', 'image/png', 0),
(6, 1, '2018-10-05 20:29:21', '2018-10-05 19:29:21', '', 'logotipo', '', 'inherit', 'open', 'closed', '', 'edited-image-2013-6-27-11_14_32', '', '', '2018-10-05 20:29:35', '2018-10-05 19:29:35', '', 0, 'http://ocodesign.es//wp-content/uploads/2018/10/Edited-Image-2013-6-27-11_14_32.png', 0, 'attachment', 'image/png', 0),
(7, 1, '2018-10-06 13:15:02', '0000-00-00 00:00:00', '<!-- wp:cover-image {\"url\":\"https://cldup.com/Fz-ASbo2s3.jpg\",\"align\":\"wide\"} -->\n<div class=\"wp-block-cover-image has-background-dim alignwide\" style=\"background-image:url(https://cldup.com/Fz-ASbo2s3.jpg)\"><p class=\"wp-block-cover-image-text\">Of Mountains &amp; Printing Presses</p></div>\n<!-- /wp:cover-image -->\n\n<!-- wp:paragraph -->\n<p>The goal of this new editor is to make adding rich content to WordPress simple and enjoyable. This whole post is composed of <em>pieces of content</em>—somewhat similar to LEGO bricks—that you can move around and interact with. Move your cursor around and you’ll notice the different blocks light up with outlines and arrows. Press the arrows to reposition blocks quickly, without fearing about losing things in the process of copying and pasting.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>What you are reading now is a <strong>text block</strong> the most basic block of all. The text block has its own controls to be moved freely around the post...</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"right\"} -->\n<p style=\"text-align:right\">... like this one, which is right-aligned.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Headings are separate blocks as well, which helps with the outline and organisation of your content.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>A Picture is Worth a Thousand Words</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Handling images and media with the utmost care is a primary focus of the new editor. Hopefully, you’ll find aspects of adding captions or going full-width with your pictures much easier and robust than before.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"align\":\"center\"} -->\n<figure class=\"wp-block-image aligncenter\"><img src=\"https://cldup.com/cXyG__fTLN.jpg\" alt=\"Beautiful landscape\"/><figcaption>If your theme supports it, you’ll see the \"wide\" button on the image toolbar. Give it a try.</figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Try selecting and removing or editing the caption, now you don’t have to be careful about selecting the image or other text by mistake and ruining the presentation.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>The <em>Inserter</em> Tool</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Imagine everything that WordPress can do is available to you quickly and in the same place on the interface. No need to figure out HTML tags, classes, or remember complicated shortcode syntax. That’s the spirit behind the inserter—the <code>(+)</code> button you’ll see around the editor—which allows you to browse all available content blocks and add them into your post. Plugins and themes are able to register their own, opening up all sort of possibilities for rich editing and publishing.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Go give it a try, you may discover things WordPress can already add into your posts that you didn’t know about. Here’s a short list of what you can currently find there:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul>\n	<li>Text &amp; Headings</li>\n	<li>Images &amp; Videos</li>\n	<li>Galleries</li>\n	<li>Embeds, like YouTube, Tweets, or other WordPress posts.</li>\n	<li>Layout blocks, like Buttons, Hero Images, Separators, etc.</li>\n	<li>And <em>Lists</em> like this one of course :)</li>\n</ul>\n<!-- /wp:list -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator\"/>\n<!-- /wp:separator -->\n\n<!-- wp:heading -->\n<h2>Visual Editing</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>A huge benefit of blocks is that you can edit them in place and manipulate your content directly. Instead of having fields for editing things like the source of a quote, or the text of a button, you can directly change the content. Try editing the following quote:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The editor will endeavour to create a new page and post building experience that makes writing rich posts effortless, and has “blocks” to make it easy what today might take shortcodes, custom HTML, or “mystery meat” embed discovery.</p><cite>Matt Mullenweg, 2017</cite></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>The information corresponding to the source of the quote is a separate text field, similar to captions under images, so the structure of the quote is protected even if you select, modify, or remove the source. It’s always easy to add it back.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Blocks can be anything you need. For instance, you may want to add a subdued quote as part of the composition of your text, or you may prefer to display a giant stylised one. All of these options are available in the inserter.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:gallery {\"columns\":2} -->\n<ul class=\"wp-block-gallery columns-2 is-cropped\"><li class=\"blocks-gallery-item\"><figure><img src=\"https://cldup.com/n0g6ME5VKC.jpg\" alt=\"\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"https://cldup.com/ZjESfxPI3R.jpg\" alt=\"\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"https://cldup.com/EKNF8xD2UM.jpg\" alt=\"\"/></figure></li></ul>\n<!-- /wp:gallery -->\n\n<!-- wp:paragraph -->\n<p>You can change the number of columns in your galleries by dragging a slider in the block inspector in the sidebar.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Media Rich</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you combine the new <strong>wide</strong> and <strong>full-wide</strong> alignments with galleries, you can create a very media-rich layout, very quickly:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"align\":\"full\"} -->\n<figure class=\"wp-block-image alignfull\"><img src=\"https://cldup.com/8lhI-gKnI2.jpg\" alt=\"Accessibility is important — don’t forget image alt attribute\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Sure, the full-wide image can be pretty big. But sometimes the image is worth it.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:gallery {\"align\":\"wide\"} -->\n<ul class=\"wp-block-gallery alignwide columns-2 is-cropped\"><li class=\"blocks-gallery-item\"><figure><img src=\"https://cldup.com/_rSwtEeDGD.jpg\" alt=\"\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"https://cldup.com/L-cC3qX2DN.jpg\" alt=\"\"/></figure></li></ul>\n<!-- /wp:gallery -->\n\n<!-- wp:paragraph -->\n<p>The above is a gallery with just two images. It’s an easier way to create visually appealing layouts, without having to deal with floats. You can also easily convert the gallery back to individual images again, by using the block switcher.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Any block can opt into these alignments. The embed block has them also, and is responsive out of the box:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:core-embed/vimeo {\"url\":\"https://vimeo.com/22439234\",\"type\":\"video\",\"providerNameSlug\":\"vimeo\",\"align\":\"wide\"} -->\n<figure class=\"wp-block-embed-vimeo alignwide wp-block-embed is-type-video is-provider-vimeo\">\nhttps://vimeo.com/22439234\n</figure>\n<!-- /wp:core-embed/vimeo -->\n\n<!-- wp:paragraph -->\n<p>You can build any block you like, static or dynamic, decorative or plain. Here’s a pullquote block:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:pullquote -->\n<blockquote class=\"wp-block-pullquote\"><p>Code is Poetry</p><cite>The WordPress community</cite></blockquote>\n<!-- /wp:pullquote -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p style=\"text-align:center\">\n	<em>\n		If you want to learn more about how to build additional blocks, or if you are interested in helping with the project, head over to the <a href=\"%s\">GitHub repository</a>.	</em>\n</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:button {\"align\":\"center\"} -->\n<div class=\"wp-block-button aligncenter\"><a class=\"wp-block-button__link\" href=\"https://github.com/WordPress/gutenberg\">Help build Gutenberg</a></div>\n<!-- /wp:button -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator\"/>\n<!-- /wp:separator -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p style=\"text-align:center\">Thanks for testing Gutenberg!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p style=\"text-align:center\"><img draggable=\"false\" class=\"emoji\" alt=\"👋\" src=\"https://s.w.org/images/core/emoji/2.3/svg/1f44b.svg\"/></p>\n<!-- /wp:paragraph -->', 'Welcome to the Gutenberg Editor', '', 'draft', 'open', 'open', '', '', '', '', '2018-10-06 13:15:02', '2018-10-06 12:15:02', '', 0, 'http://ocodesign.es//?p=7', 0, 'post', '', 0),
(24, 1, '2018-10-10 23:33:20', '2018-10-10 22:33:20', '<!-- wp:paragraph -->\n<p>This is a testing post for testing wordpress and typerocket frameword</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns has-2-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph -->\n<p>This is part of the column 1</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph -->\n<p>Column 2</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:image {\"id\":5} -->\n<figure class=\"wp-block-image\"><img src=\"http://ocodesign.es//wp-content/uploads/2018/10/Edited-Image-2014-10-4-18_21_40.png\" alt=\"\" class=\"wp-image-5\"/></figure>\n<!-- /wp:image -->', 'Testing post', '', 'publish', 'open', 'open', '', 'testing-post', '', '', '2018-10-11 00:26:38', '2018-10-10 23:26:38', '', 0, 'http://ocodesign.es//?p=24', 0, 'post', '', 0),
(25, 1, '2018-10-10 23:33:20', '2018-10-10 22:33:20', '<!-- wp:paragraph -->\n<p>This is a testing post for testing wordpress and typerocket frameword</p>\n<!-- /wp:paragraph -->', 'Testing post', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2018-10-10 23:33:20', '2018-10-10 22:33:20', '', 24, 'http://ocodesign.es//admin/uncategorised/24-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2018-10-11 00:26:14', '2018-10-10 23:26:14', '<!-- wp:paragraph -->\n<p>This is a testing post for testing wordpress and typerocket frameword</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns has-2-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph -->\n<p>This is part of the column 1</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph -->\n<p>Column 2</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:image {\"id\":5} -->\n<figure class=\"wp-block-image\"><img src=\"http://ocodesign.es//wp-content/uploads/2018/10/Edited-Image-2014-10-4-18_21_40.png\" alt=\"\" class=\"wp-image-5\"/></figure>\n<!-- /wp:image -->', 'Testing post', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2018-10-11 00:26:14', '2018-10-10 23:26:14', '', 24, 'http://ocodesign.es//admin/uncategorised/24-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2018-10-11 18:40:44', '2018-10-11 17:40:44', 'http://ocodesign.es//wp-content/uploads/2018/10/cropped-Edited-Image-2013-6-27-11_14_32.png', 'cropped-Edited-Image-2013-6-27-11_14_32.png', '', 'inherit', 'open', 'closed', '', 'cropped-edited-image-2013-6-27-11_14_32-png', '', '', '2018-10-11 18:40:44', '2018-10-11 17:40:44', '', 0, 'http://ocodesign.es//wp-content/uploads/2018/10/cropped-Edited-Image-2013-6-27-11_14_32.png', 0, 'attachment', 'image/png', 0),
(36, 1, '2018-10-14 00:55:09', '2018-10-13 23:55:09', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-10-14 01:02:24', '2018-10-14 00:02:24', '', 0, 'http://ocodesign.es//?page_id=36', 0, 'page', '', 0),
(37, 1, '2018-10-14 00:55:09', '2018-10-13 23:55:09', '', 'Home Page', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2018-10-14 00:55:09', '2018-10-13 23:55:09', '', 36, 'http://ocodesign.es//uncategorised/36-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2018-10-14 00:55:20', '2018-10-13 23:55:20', '', 'Homepage', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2018-10-14 00:55:20', '2018-10-13 23:55:20', '', 36, 'http://ocodesign.es//uncategorised/36-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2018-10-14 01:02:24', '2018-10-14 00:02:24', '', 'Home', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2018-10-14 01:02:24', '2018-10-14 00:02:24', '', 36, 'http://ocodesign.es//uncategorised/36-revision-v1/', 0, 'revision', '', 0),
(42, 0, '2018-10-14 01:16:37', '2018-10-14 00:16:37', '<!-- wp:paragraph {\"fontSize\":\"small\"} -->\n<p class=\"has-small-font-size\">Este es e contenido del post número 1</p>\n<!-- /wp:paragraph -->', 'Projecto Uno', '', 'publish', 'closed', 'closed', '', 'projecto-1', '', '', '2018-10-14 20:18:10', '2018-10-14 19:18:10', '', 0, 'http://ocodesign.es//?post_type=project&#038;p=42', 0, 'project', '', 0),
(43, 1, '2018-10-14 01:18:01', '2018-10-14 00:18:01', '', 'Projects', '', 'publish', 'closed', 'closed', '', 'projects', '', '', '2018-10-14 01:47:59', '2018-10-14 00:47:59', '', 0, 'http://ocodesign.es//?page_id=43', 0, 'page', '', 0),
(44, 1, '2018-10-14 01:18:01', '2018-10-14 00:18:01', '', 'Projects', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2018-10-14 01:18:01', '2018-10-14 00:18:01', '', 43, 'http://ocodesign.es//uncategorised/43-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2018-10-14 02:07:18', '2018-10-14 01:07:18', '', '2 (5)', '', 'inherit', 'open', 'closed', '', '2-5', '', '', '2018-10-14 02:07:18', '2018-10-14 01:07:18', '', 42, 'http://ocodesign.es//wp-content/uploads/2018/10/2-5.jpg', 0, 'attachment', 'image/jpeg', 0),
(47, 0, '2018-10-14 02:11:52', '2018-10-14 01:11:52', '<!-- wp:image {\"id\":46} -->\n<figure class=\"wp-block-image\"><img src=\"http://ocodesign.es//wp-content/uploads/2018/10/2-5.jpg\" alt=\"\" class=\"wp-image-46\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns has-2-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph -->\n<p>Esto es el pie de página</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph {\"className\":\"text-right\"} -->\n<p class=\"text-right\">Este texto puede ir a la derecha</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'Proyecto Dos', '', 'publish', 'closed', 'closed', '', 'proyecto-dos', '', '', '2018-10-14 02:11:53', '2018-10-14 01:11:53', '', 0, 'http://ocodesign.es//?post_type=project&#038;p=47', 0, 'project', '', 0),
(48, 1, '2018-10-14 04:06:20', '2018-10-14 03:06:20', '', 'recibidor-1-4', '', 'inherit', 'open', 'closed', '', 'recibidor-1-4', '', '', '2018-10-14 23:49:04', '2018-10-14 22:49:04', '', 0, 'http://ocodesign.es//wp-content/uploads/2018/10/recibidor-1-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2018-10-15 23:21:58', '2018-10-15 22:21:58', '', 'salon2-4-2-sin-tv', '', 'inherit', 'open', 'closed', '', 'salon2-4-2-sin-tv', '', '', '2018-10-15 23:21:58', '2018-10-15 22:21:58', '', 0, 'http://ocodesign.es//wp-content/uploads/2018/10/salon2-4-2-sin-tv.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2018-10-20 19:49:49', '2018-10-20 17:49:49', '', 'Tienda', '', 'publish', 'closed', 'closed', '', 'tienda', '', '', '2018-10-20 19:49:49', '2018-10-20 17:49:49', '', 0, 'http://localhost//tienda/', 0, 'page', '', 0),
(52, 1, '2018-10-20 19:49:49', '2018-10-20 17:49:49', '[woocommerce_cart]', 'Carrito', '', 'publish', 'closed', 'closed', '', 'carrito', '', '', '2018-10-20 19:49:49', '2018-10-20 17:49:49', '', 0, 'http://localhost//carrito/', 0, 'page', '', 0),
(53, 1, '2018-10-20 19:49:49', '2018-10-20 17:49:49', '[woocommerce_checkout]', 'Finalizar compra', '', 'publish', 'closed', 'closed', '', 'finalizar-compra', '', '', '2018-10-20 19:49:49', '2018-10-20 17:49:49', '', 0, 'http://localhost//finalizar-compra/', 0, 'page', '', 0),
(54, 1, '2018-10-20 19:49:49', '2018-10-20 17:49:49', '[woocommerce_my_account]', 'Mi cuenta', '', 'publish', 'closed', 'closed', '', 'mi-cuenta', '', '', '2018-10-20 19:49:49', '2018-10-20 17:49:49', '', 0, 'http://localhost//mi-cuenta/', 0, 'page', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_queue`
--

DROP TABLE IF EXISTS `wp_queue`;
CREATE TABLE IF NOT EXISTS `wp_queue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `job` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attempts` tinyint(1) NOT NULL DEFAULT '0',
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `locked_at` datetime DEFAULT NULL,
  `available_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Truncate table before insert `wp_queue`
--

TRUNCATE TABLE `wp_queue`;
-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Truncate table before insert `wp_termmeta`
--

TRUNCATE TABLE `wp_termmeta`;
-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Truncate table before insert `wp_terms`
--

TRUNCATE TABLE `wp_terms`;
--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorised', 'uncategorised', 0),
(2, 'Testing', 'testing', 0),
(3, 'simple', 'simple', 0),
(4, 'grouped', 'grouped', 0),
(5, 'variable', 'variable', 0),
(6, 'external', 'external', 0),
(7, 'exclude-from-search', 'exclude-from-search', 0),
(8, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(9, 'featured', 'featured', 0),
(10, 'outofstock', 'outofstock', 0),
(11, 'rated-1', 'rated-1', 0),
(12, 'rated-2', 'rated-2', 0),
(13, 'rated-3', 'rated-3', 0),
(14, 'rated-4', 'rated-4', 0),
(15, 'rated-5', 'rated-5', 0),
(16, 'Sin categoría', 'sin-categoria', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Truncate table before insert `wp_term_relationships`
--

TRUNCATE TABLE `wp_term_relationships`;
--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(7, 1, 0),
(24, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Truncate table before insert `wp_term_taxonomy`
--

TRUNCATE TABLE `wp_term_taxonomy`;
--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'category', '', 0, 1),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_type', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_visibility', '', 0, 0),
(16, 16, 'product_cat', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Truncate table before insert `wp_usermeta`
--

TRUNCATE TABLE `wp_usermeta`;
--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', 'Administrator'),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'midnight'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', 'en_GB'),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy,theme_editor_notice'),
(15, 1, 'show_welcome_panel', '0'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '61'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:11:\"37.11.193.0\";}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse'),
(20, 1, 'wp_user-settings-time', '1539213971'),
(24, 1, 'jetpack_tracks_anon_id', 'jetpack:xfCUA9i8T336tuOLSzqgr99D'),
(25, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:0:{}}'),
(26, 1, 'wc_last_active', '1542412800'),
(27, 1, 'show_try_gutenberg_panel', '0'),
(28, 1, 'meta-box-order_dashboard', 'a:4:{s:6:\"normal\";s:41:\"dashboard_right_now,dashboard_quick_press\";s:4:\"side\";s:18:\"dashboard_activity\";s:7:\"column3\";s:65:\"woocommerce_dashboard_status,woocommerce_dashboard_recent_reviews\";s:7:\"column4\";s:29:\"maintenance,dashboard_primary\";}'),
(29, 1, 'closedpostboxes_dashboard', 'a:0:{}'),
(30, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(31, 1, 'billing_first_name', ''),
(32, 1, 'billing_last_name', ''),
(33, 1, 'billing_company', ''),
(34, 1, 'billing_address_1', ''),
(35, 1, 'billing_address_2', ''),
(36, 1, 'billing_city', ''),
(37, 1, 'billing_postcode', ''),
(38, 1, 'billing_country', ''),
(39, 1, 'billing_state', ''),
(40, 1, 'billing_phone', ''),
(41, 1, 'billing_email', 'diego.feliud@gmail.com'),
(42, 1, 'shipping_first_name', ''),
(43, 1, 'shipping_last_name', ''),
(44, 1, 'shipping_company', ''),
(45, 1, 'shipping_address_1', ''),
(46, 1, 'shipping_address_2', ''),
(47, 1, 'shipping_city', ''),
(48, 1, 'shipping_postcode', ''),
(49, 1, 'shipping_country', ''),
(50, 1, 'shipping_state', ''),
(51, 1, 'last_update', '1540916723'),
(52, 1, 'session_tokens', 'a:1:{s:64:\"d86fbbdf28eebd1bb799ba23667801edc2258002da7afa70b68ddc8b9d490b99\";a:4:{s:10:\"expiration\";i:1542667660;s:2:\"ip\";s:12:\"37.11.193.74\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36\";s:5:\"login\";i:1542494860;}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Truncate table before insert `wp_users`
--

TRUNCATE TABLE `wp_users`;
--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', MD5('secret'), 'admin', 'diego.feliud@gmail.com', 'https://www.ocodesign.es/', '2018-09-08 00:04:55', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_download_log`
--

DROP TABLE IF EXISTS `wp_wc_download_log`;
CREATE TABLE IF NOT EXISTS `wp_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  PRIMARY KEY (`download_log_id`),
  KEY `permission_id` (`permission_id`),
  KEY `timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Truncate table before insert `wp_wc_download_log`
--

TRUNCATE TABLE `wp_wc_download_log`;
-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_webhooks`
--

DROP TABLE IF EXISTS `wp_wc_webhooks`;
CREATE TABLE IF NOT EXISTS `wp_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`webhook_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Truncate table before insert `wp_wc_webhooks`
--

TRUNCATE TABLE `wp_wc_webhooks`;
-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_api_keys`
--

DROP TABLE IF EXISTS `wp_woocommerce_api_keys`;
CREATE TABLE IF NOT EXISTS `wp_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_520_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_access` datetime DEFAULT NULL,
  PRIMARY KEY (`key_id`),
  KEY `consumer_key` (`consumer_key`),
  KEY `consumer_secret` (`consumer_secret`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Truncate table before insert `wp_woocommerce_api_keys`
--

TRUNCATE TABLE `wp_woocommerce_api_keys`;
-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_attribute_taxonomies`
--

DROP TABLE IF EXISTS `wp_woocommerce_attribute_taxonomies`;
CREATE TABLE IF NOT EXISTS `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`attribute_id`),
  KEY `attribute_name` (`attribute_name`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Truncate table before insert `wp_woocommerce_attribute_taxonomies`
--

TRUNCATE TABLE `wp_woocommerce_attribute_taxonomies`;
-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_downloadable_product_permissions`
--

DROP TABLE IF EXISTS `wp_woocommerce_downloadable_product_permissions`;
CREATE TABLE IF NOT EXISTS `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`permission_id`),
  KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Truncate table before insert `wp_woocommerce_downloadable_product_permissions`
--

TRUNCATE TABLE `wp_woocommerce_downloadable_product_permissions`;
-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_log`
--

DROP TABLE IF EXISTS `wp_woocommerce_log`;
CREATE TABLE IF NOT EXISTS `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`log_id`),
  KEY `level` (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Truncate table before insert `wp_woocommerce_log`
--

TRUNCATE TABLE `wp_woocommerce_log`;
-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_itemmeta`
--

DROP TABLE IF EXISTS `wp_woocommerce_order_itemmeta`;
CREATE TABLE IF NOT EXISTS `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `order_item_id` (`order_item_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Truncate table before insert `wp_woocommerce_order_itemmeta`
--

TRUNCATE TABLE `wp_woocommerce_order_itemmeta`;
-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_items`
--

DROP TABLE IF EXISTS `wp_woocommerce_order_items`;
CREATE TABLE IF NOT EXISTS `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_item_name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Truncate table before insert `wp_woocommerce_order_items`
--

TRUNCATE TABLE `wp_woocommerce_order_items`;
-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokenmeta`
--

DROP TABLE IF EXISTS `wp_woocommerce_payment_tokenmeta`;
CREATE TABLE IF NOT EXISTS `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `payment_token_id` (`payment_token_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Truncate table before insert `wp_woocommerce_payment_tokenmeta`
--

TRUNCATE TABLE `wp_woocommerce_payment_tokenmeta`;
-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokens`
--

DROP TABLE IF EXISTS `wp_woocommerce_payment_tokens`;
CREATE TABLE IF NOT EXISTS `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`token_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Truncate table before insert `wp_woocommerce_payment_tokens`
--

TRUNCATE TABLE `wp_woocommerce_payment_tokens`;
-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_sessions`
--

DROP TABLE IF EXISTS `wp_woocommerce_sessions`;
CREATE TABLE IF NOT EXISTS `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `session_key` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`session_id`),
  UNIQUE KEY `session_key` (`session_key`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Truncate table before insert `wp_woocommerce_sessions`
--

TRUNCATE TABLE `wp_woocommerce_sessions`;
-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zones`
--

DROP TABLE IF EXISTS `wp_woocommerce_shipping_zones`;
CREATE TABLE IF NOT EXISTS `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`zone_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Truncate table before insert `wp_woocommerce_shipping_zones`
--

TRUNCATE TABLE `wp_woocommerce_shipping_zones`;
--
-- Dumping data for table `wp_woocommerce_shipping_zones`
--

INSERT INTO `wp_woocommerce_shipping_zones` (`zone_id`, `zone_name`, `zone_order`) VALUES
(1, 'España', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_locations`
--

DROP TABLE IF EXISTS `wp_woocommerce_shipping_zone_locations`;
CREATE TABLE IF NOT EXISTS `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `location_id` (`location_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Truncate table before insert `wp_woocommerce_shipping_zone_locations`
--

TRUNCATE TABLE `wp_woocommerce_shipping_zone_locations`;
--
-- Dumping data for table `wp_woocommerce_shipping_zone_locations`
--

INSERT INTO `wp_woocommerce_shipping_zone_locations` (`location_id`, `zone_id`, `location_code`, `location_type`) VALUES
(1, 1, 'ES', 'country');

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_methods`
--

DROP TABLE IF EXISTS `wp_woocommerce_shipping_zone_methods`;
CREATE TABLE IF NOT EXISTS `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`instance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Truncate table before insert `wp_woocommerce_shipping_zone_methods`
--

TRUNCATE TABLE `wp_woocommerce_shipping_zone_methods`;
--
-- Dumping data for table `wp_woocommerce_shipping_zone_methods`
--

INSERT INTO `wp_woocommerce_shipping_zone_methods` (`zone_id`, `instance_id`, `method_id`, `method_order`, `is_enabled`) VALUES
(1, 1, 'free_shipping', 1, 1),
(0, 2, 'free_shipping', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rates`
--

DROP TABLE IF EXISTS `wp_woocommerce_tax_rates`;
CREATE TABLE IF NOT EXISTS `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`tax_rate_id`),
  KEY `tax_rate_country` (`tax_rate_country`),
  KEY `tax_rate_state` (`tax_rate_state`(2)),
  KEY `tax_rate_class` (`tax_rate_class`(10)),
  KEY `tax_rate_priority` (`tax_rate_priority`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Truncate table before insert `wp_woocommerce_tax_rates`
--

TRUNCATE TABLE `wp_woocommerce_tax_rates`;
-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rate_locations`
--

DROP TABLE IF EXISTS `wp_woocommerce_tax_rate_locations`;
CREATE TABLE IF NOT EXISTS `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `tax_rate_id` (`tax_rate_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Truncate table before insert `wp_woocommerce_tax_rate_locations`
--

TRUNCATE TABLE `wp_woocommerce_tax_rate_locations`;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD CONSTRAINT `fk_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `wp_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
