-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Mar 20 Août 2019 à 15:42
-- Version du serveur :  5.7.27-0ubuntu0.18.04.1
-- Version de PHP :  7.2.19-0ubuntu0.18.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `ocooking`
--

-- --------------------------------------------------------

--
-- Structure de la table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
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
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un commentateur WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-05-16 11:15:14', '2019-05-16 09:15:14', 'Bonjour, ceci est un commentaire.\nPour débuter avec la modération, la modification et la suppression de commentaires, veuillez visiter l’écran des Commentaires dans le Tableau de bord.\nLes avatars des personnes qui commentent arrivent depuis <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
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
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/oclock/Teach/WP-Support-oCooking/wp', 'yes'),
(2, 'home', 'http://localhost/oclock/Teach/WP-Support-oCooking', 'yes'),
(3, 'blogname', 'oCooking', 'yes'),
(4, 'blogdescription', 'La meilleure source pour se régaler.', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'christophe@oclock.local', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(25, 'links_updated_date_format', 'j F Y G \\h i \\m\\i\\n', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:115:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:10:\"recette/?$\";s:26:\"index.php?post_type=recipe\";s:40:\"recette/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=recipe&feed=$matches[1]\";s:35:\"recette/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=recipe&feed=$matches[1]\";s:27:\"recette/page/([0-9]{1,})/?$\";s:44:\"index.php?post_type=recipe&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?type=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?type=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:37:\"index.php?type=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?type=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:26:\"index.php?type=$matches[1]\";s:35:\"recette/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"recette/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"recette/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"recette/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"recette/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"recette/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"recette/([^/]+)/embed/?$\";s:39:\"index.php?recipe=$matches[1]&embed=true\";s:28:\"recette/([^/]+)/trackback/?$\";s:33:\"index.php?recipe=$matches[1]&tb=1\";s:48:\"recette/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?recipe=$matches[1]&feed=$matches[2]\";s:43:\"recette/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?recipe=$matches[1]&feed=$matches[2]\";s:36:\"recette/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?recipe=$matches[1]&paged=$matches[2]\";s:43:\"recette/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?recipe=$matches[1]&cpage=$matches[2]\";s:32:\"recette/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?recipe=$matches[1]&page=$matches[2]\";s:24:\"recette/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"recette/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"recette/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"recette/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"recette/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"recette/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:51:\"ingredient/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?ingredient=$matches[1]&feed=$matches[2]\";s:46:\"ingredient/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?ingredient=$matches[1]&feed=$matches[2]\";s:27:\"ingredient/([^/]+)/embed/?$\";s:43:\"index.php?ingredient=$matches[1]&embed=true\";s:39:\"ingredient/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?ingredient=$matches[1]&paged=$matches[2]\";s:21:\"ingredient/([^/]+)/?$\";s:32:\"index.php?ingredient=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=31&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:31:\"query-monitor/query-monitor.php\";i:1;s:30:\"advanced-custom-fields/acf.php\";i:2;s:39:\"ocooking-settings/ocooking-settings.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'ocooking', 'yes'),
(41, 'stylesheet', 'ocooking', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:55:\"openid-connect-sso-by-gluu/gluu_openid_oxd_settings.php\";s:25:\"gluu_oxd_openid_uninstall\";}', 'no'),
(82, 'timezone_string', 'Europe/Paris', 'yes'),
(84, 'page_on_front', '31', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'wp_user_roles', 'a:6:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:81:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:10:\"loco_admin\";b:1;s:20:\"ocooking_show_recipe\";b:1;s:11:\"edit_recipe\";b:1;s:16:\"edit_recipe_taxo\";b:1;s:14:\"ure_edit_roles\";b:1;s:16:\"ure_create_roles\";b:1;s:16:\"ure_delete_roles\";b:1;s:23:\"ure_create_capabilities\";b:1;s:23:\"ure_delete_capabilities\";b:1;s:18:\"ure_manage_options\";b:1;s:15:\"ure_reset_roles\";b:1;s:14:\"delete_recipes\";b:1;s:22:\"delete_private_recipes\";b:1;s:24:\"delete_published_recipes\";b:1;s:21:\"delete_others_recipes\";b:1;s:20:\"edit_private_recipes\";b:1;s:22:\"edit_published_recipes\";b:1;s:12:\"edit_recipes\";b:1;s:15:\"publish_recipes\";b:1;s:19:\"edit_others_recipes\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:37:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:20:\"ocooking_show_recipe\";b:1;s:11:\"edit_recipe\";b:1;s:16:\"edit_recipe_taxo\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:6:\"cuisto\";a:2:{s:4:\"name\";s:34:\"Cuisinier chez oCooking Production\";s:12:\"capabilities\";a:11:{s:4:\"read\";b:1;s:12:\"upload_files\";b:1;s:14:\"delete_recipes\";b:1;s:22:\"delete_private_recipes\";b:1;s:24:\"delete_published_recipes\";b:1;s:21:\"delete_others_recipes\";b:1;s:20:\"edit_private_recipes\";b:1;s:22:\"edit_published_recipes\";b:1;s:19:\"edit_others_recipes\";b:1;s:12:\"edit_recipes\";b:1;s:15:\"publish_recipes\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'fr_FR', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'cron', 'a:6:{i:1566310515;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1566335715;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1566378914;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1566378918;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1566378919;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(104, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'recovery_keys', 'a:0:{}', 'yes'),
(118, 'theme_mods_twentynineteen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1558010732;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(130, 'can_compress_scripts', '0', 'no'),
(151, 'new_admin_email', 'jeanbonbeurre@oclock.local', 'yes'),
(158, 'theme_mods_ocooking', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:2:{s:11:\"menu_header\";i:19;s:12:\"menu_lateral\";i:23;}}', 'yes'),
(159, 'current_theme', 'oCooking', 'yes'),
(160, 'theme_switched', '', 'yes'),
(182, 'recently_activated', 'a:3:{s:37:\"user-role-editor/user-role-editor.php\";i:1566306910;s:31:\"what-the-file/what-the-file.php\";i:1566295536;s:27:\"simply-show-hooks/index.php\";i:1566295533;}', 'yes'),
(183, 'whatthefile-install-date', '2019-05-17', 'no'),
(184, 'acf_version', '5.8.3', 'yes'),
(203, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(275, 'loco_settings', 'a:4:{s:1:\"c\";s:18:\"Loco_data_Settings\";s:1:\"v\";i:0;s:1:\"d\";a:13:{s:7:\"version\";s:5:\"2.2.2\";s:8:\"gen_hash\";b:0;s:9:\"use_fuzzy\";b:1;s:11:\"num_backups\";i:1;s:9:\"pot_alias\";a:3:{i:0;s:10:\"default.po\";i:1;s:8:\"en_US.po\";i:2;s:5:\"en.po\";}s:9:\"php_alias\";a:2:{i:0;s:3:\"php\";i:1;s:4:\"twig\";}s:9:\"jsx_alias\";a:0:{}s:10:\"fs_persist\";b:0;s:10:\"fs_protect\";i:1;s:12:\"max_php_size\";s:4:\"100K\";s:11:\"po_utf8_bom\";b:0;s:8:\"po_width\";s:2:\"79\";s:10:\"jed_pretty\";b:0;}s:1:\"t\";i:1558345380;}', 'yes'),
(303, 'ure_tasks_queue', 'a:0:{}', 'yes'),
(311, 'ocooking_settings_option_name', 'a:2:{s:14:\"facebook_url_0\";s:17:\"ocooking_fan_page\";s:13:\"twitter_url_1\";s:13:\"ocooking_real\";}', 'yes'),
(419, 'openid-connect-generic-plugin-version', '3.5.0', 'yes'),
(428, 'oxd_openid_new_registration', 'true', 'yes'),
(517, 'nonce_key', 'D1sdLbIRsC*,m&?BzDsN$AwxqLADNr!c+32sl0^0IL|0b8hx}Tx%Oh&y;Y{h2)3?', 'no'),
(518, 'nonce_salt', '@kr!>6FvX2%-}c6ZGv*f;6KIf[&ydwRkvA>L:QoAr1+q({l0vI 9&wS((#VU8o]c', 'no'),
(522, 'auth_key', 'Lj>KNaI:E9j}M: +]sB^|@5b/}(-eViR()>xvm#UsmzyX-s^t >IC]i{;_E+<FVa', 'no'),
(523, 'auth_salt', 'Ex4?%bV|Sjty?S,=2F,^Y@B5!7ASm.*%0qd.#JXqM[)Ko4]EZ81FOc*kkFsci{aH', 'no'),
(524, 'logged_in_key', 'yH7(KjI(7RmxA#x&!hmn@94oMrHJgVSF1+_1`u)bim9?(n^C1JH2wTe~Vq~c,La|', 'no'),
(525, 'logged_in_salt', 'z@MkYzPXpf ,66+pRC~3fa/cT;]~7r1~|^4?M-io^aKv_>av*/+)g`/=[SzY`)%1', 'no'),
(526, '_site_transient_timeout_browser_029301d0a28ee6e9cf0a7c1cf0af170b', '1566899003', 'no'),
(527, '_site_transient_browser_029301d0a28ee6e9cf0a7c1cf0af170b', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"76.0.3809.100\";s:8:\"platform\";s:5:\"Linux\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(528, '_site_transient_timeout_php_check_eeeaddee229fff19a1ad625988841501', '1566899003', 'no'),
(529, '_site_transient_php_check_eeeaddee229fff19a1ad625988841501', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(538, '_transient_timeout_plugin_slugs', '1566393619', 'no'),
(539, '_transient_plugin_slugs', 'a:6:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:39:\"ocooking-settings/ocooking-settings.php\";i:3;s:31:\"query-monitor/query-monitor.php\";i:4;s:27:\"simply-show-hooks/index.php\";i:5;s:31:\"what-the-file/what-the-file.php\";}', 'no'),
(540, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1566306520', 'no'),
(541, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:\"stdClass\":100:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4605;}s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:3588;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2635;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2508;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:1931;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1747;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1743;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1471;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1446;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1446;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1434;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1380;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1338;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1294;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1151;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:1130;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1103;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1073;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:1030;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:944;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:856;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:844;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:841;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:809;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:750;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:742;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:732;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:725;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:718;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:703;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:701;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:687;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:680;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:665;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:664;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:654;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:634;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:629;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:623;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:621;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:602;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:595;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:573;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:572;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:560;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:559;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:550;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:546;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:536;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:528;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:527;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:522;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:517;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:516;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:512;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:505;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:496;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:477;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:477;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:477;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:477;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:475;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:459;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:456;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:447;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:438;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:431;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:422;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:417;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:415;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:415;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:411;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:404;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:402;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:394;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:394;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:387;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:386;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:385;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:380;}s:9:\"gutenberg\";a:3:{s:4:\"name\";s:9:\"gutenberg\";s:4:\"slug\";s:9:\"gutenberg\";s:5:\"count\";i:378;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:370;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:369;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:362;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:359;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:357;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:357;}s:14:\"contact-form-7\";a:3:{s:4:\"name\";s:14:\"contact form 7\";s:4:\"slug\";s:14:\"contact-form-7\";s:5:\"count\";i:353;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:350;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:347;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:343;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:334;}s:16:\"custom-post-type\";a:3:{s:4:\"name\";s:16:\"custom post type\";s:4:\"slug\";s:16:\"custom-post-type\";s:5:\"count\";i:326;}s:11:\"advertising\";a:3:{s:4:\"name\";s:11:\"advertising\";s:4:\"slug\";s:11:\"advertising\";s:5:\"count\";i:324;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:323;}s:16:\"google-analytics\";a:3:{s:4:\"name\";s:16:\"google analytics\";s:4:\"slug\";s:16:\"google-analytics\";s:5:\"count\";i:320;}s:6:\"simple\";a:3:{s:4:\"name\";s:6:\"simple\";s:4:\"slug\";s:6:\"simple\";s:5:\"count\";i:319;}s:4:\"html\";a:3:{s:4:\"name\";s:4:\"html\";s:4:\"slug\";s:4:\"html\";s:5:\"count\";i:316;}s:7:\"adsense\";a:3:{s:4:\"name\";s:7:\"adsense\";s:4:\"slug\";s:7:\"adsense\";s:5:\"count\";i:312;}s:3:\"map\";a:3:{s:4:\"name\";s:3:\"map\";s:4:\"slug\";s:3:\"map\";s:5:\"count\";i:310;}}', 'no'),
(544, '_site_transient_timeout_ure_caps_readable', '1566296421', 'no'),
(545, '_site_transient_ure_caps_readable', '1', 'no'),
(546, '_site_transient_timeout_ure_show_deprecated_caps', '1566296425', 'no'),
(547, '_site_transient_ure_show_deprecated_caps', '1', 'no'),
(549, '_site_transient_timeout_theme_roots', '1566298271', 'no'),
(550, '_site_transient_theme_roots', 'a:2:{s:8:\"ocooking\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";}', 'no'),
(551, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.2.2.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.2.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.2\";s:7:\"version\";s:5:\"5.2.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1566296477;s:15:\"version_checked\";s:5:\"5.2.2\";s:12:\"translations\";a:0:{}}', 'no'),
(552, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1566305664;s:7:\"checked\";a:7:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.8.3\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.1.4\";s:39:\"ocooking-settings/ocooking-settings.php\";s:5:\"1.0.0\";s:31:\"query-monitor/query-monitor.php\";s:5:\"3.3.7\";s:27:\"simply-show-hooks/index.php\";s:5:\"1.2.1\";s:37:\"user-role-editor/user-role-editor.php\";s:6:\"4.51.2\";s:31:\"what-the-file/what-the-file.php\";s:5:\"1.5.4\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:6:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.8.3\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.8.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.1.4\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.1.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:31:\"query-monitor/query-monitor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:27:\"w.org/plugins/query-monitor\";s:4:\"slug\";s:13:\"query-monitor\";s:6:\"plugin\";s:31:\"query-monitor/query-monitor.php\";s:11:\"new_version\";s:5:\"3.3.7\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/query-monitor/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/query-monitor.3.3.7.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:66:\"https://ps.w.org/query-monitor/assets/icon-256x256.png?rev=2056073\";s:2:\"1x\";s:58:\"https://ps.w.org/query-monitor/assets/icon.svg?rev=2056073\";s:3:\"svg\";s:58:\"https://ps.w.org/query-monitor/assets/icon.svg?rev=2056073\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/query-monitor/assets/banner-1544x500.png?rev=1629576\";s:2:\"1x\";s:68:\"https://ps.w.org/query-monitor/assets/banner-772x250.png?rev=1731469\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"simply-show-hooks/index.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:31:\"w.org/plugins/simply-show-hooks\";s:4:\"slug\";s:17:\"simply-show-hooks\";s:6:\"plugin\";s:27:\"simply-show-hooks/index.php\";s:11:\"new_version\";s:5:\"1.2.1\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/simply-show-hooks/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/simply-show-hooks.1.2.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/simply-show-hooks/assets/icon-256x256.png?rev=1513192\";s:2:\"1x\";s:70:\"https://ps.w.org/simply-show-hooks/assets/icon-128x128.png?rev=1513158\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:72:\"https://ps.w.org/simply-show-hooks/assets/banner-772x250.png?rev=1513158\";}s:11:\"banners_rtl\";a:0:{}}s:37:\"user-role-editor/user-role-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:30:\"w.org/plugins/user-role-editor\";s:4:\"slug\";s:16:\"user-role-editor\";s:6:\"plugin\";s:37:\"user-role-editor/user-role-editor.php\";s:11:\"new_version\";s:6:\"4.51.2\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/user-role-editor/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/user-role-editor.4.51.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/user-role-editor/assets/icon-256x256.jpg?rev=1020390\";s:2:\"1x\";s:69:\"https://ps.w.org/user-role-editor/assets/icon-128x128.jpg?rev=1020390\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:71:\"https://ps.w.org/user-role-editor/assets/banner-772x250.png?rev=1263116\";}s:11:\"banners_rtl\";a:0:{}}s:31:\"what-the-file/what-the-file.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:27:\"w.org/plugins/what-the-file\";s:4:\"slug\";s:13:\"what-the-file\";s:6:\"plugin\";s:31:\"what-the-file/what-the-file.php\";s:11:\"new_version\";s:5:\"1.5.4\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/what-the-file/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/what-the-file.1.5.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/what-the-file/assets/icon-256x256.png?rev=1223609\";s:2:\"1x\";s:66:\"https://ps.w.org/what-the-file/assets/icon-128x128.png?rev=1223609\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:67:\"https://ps.w.org/what-the-file/assets/banner-772x250.jpg?rev=685200\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(553, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1566296477;s:7:\"checked\";a:2:{s:8:\"ocooking\";s:5:\"1.0.0\";s:14:\"twentynineteen\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(555, 'adminhash', 'a:2:{s:4:\"hash\";s:32:\"b26d1f872647886d3df3188b8002a27f\";s:8:\"newemail\";s:26:\"jeanbonbeurre@oclock.local\";}', 'yes'),
(559, 'category_children', 'a:0:{}', 'yes'),
(567, '_site_transient_timeout_available_translations', '1566317353', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(568, '_site_transient_available_translations', 'a:117:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:5:\"5.0.4\";s:7:\"updated\";s:19:\"2019-05-16 12:52:45\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.0.4/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-08-16 22:21:56\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.2/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.7/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-22 18:59:07\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-12 20:34:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:6:\"4.9.10\";s:7:\"updated\";s:19:\"2019-05-14 14:59:20\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.9.10/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"5.2.1\";s:7:\"updated\";s:19:\"2019-06-10 20:13:25\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.1/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Напред\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2017-10-01 12:57:10\";s:12:\"english_name\";s:20:\"Bengali (Bangladesh)\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.6/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:23:\"এগিয়ে চল.\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-08-13 03:24:43\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.2/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:33:\"མུ་མཐུད་དུ།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-24 05:22:45\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-07-26 14:27:28\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.2/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-07-02 05:01:03\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-21 08:32:15\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.2/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-07-08 20:19:38\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsæt\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-19 09:56:19\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/core/5.2.2/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-08-13 08:44:30\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/5.2.2/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-08-13 13:07:53\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_AT\";a:8:{s:8:\"language\";s:5:\"de_AT\";s:7:\"version\";s:3:\"5.2\";s:7:\"updated\";s:19:\"2019-05-07 21:15:55\";s:12:\"english_name\";s:16:\"German (Austria)\";s:11:\"native_name\";s:21:\"Deutsch (Österreich)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.2/de_AT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-19 09:55:37\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-08-12 20:29:26\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.2/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-25 07:12:29\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-20 11:31:40\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"5.1.1\";s:7:\"updated\";s:19:\"2019-06-06 15:48:01\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.1.1/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-20 23:50:40\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-20 16:48:55\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-20 20:46:03\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.2/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-07-22 16:47:50\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-08-04 20:27:10\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:3:\"5.1\";s:7:\"updated\";s:19:\"2019-03-02 06:35:01\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.1/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:3:\"5.0\";s:7:\"updated\";s:19:\"2018-12-07 18:38:30\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.0/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:3:\"5.0\";s:7:\"updated\";s:19:\"2018-12-06 21:26:01\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.0/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:6:\"4.9.10\";s:7:\"updated\";s:19:\"2019-05-23 02:23:28\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.10/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-09 09:36:22\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-21 11:52:29\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-08-01 01:18:38\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:9:\"5.0-beta3\";s:7:\"updated\";s:19:\"2018-11-28 16:04:33\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.0-beta3/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-12-09 21:12:23\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.2/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-08-13 21:31:06\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-30 17:08:47\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.2/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-07-28 14:23:29\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-08-06 06:39:46\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-01-31 11:16:06\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2018-01-29 17:32:35\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.6/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-29 15:57:31\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-14 12:33:48\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"ચાલુ રાખવું\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:5:\"4.4.2\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-07-09 17:11:32\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"המשך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:5:\"4.9.7\";s:7:\"updated\";s:19:\"2018-06-17 09:33:44\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.7/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"जारी\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-08-16 15:38:56\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.2/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"5.1.1\";s:7:\"updated\";s:19:\"2019-03-19 14:36:40\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.1.1/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Folytatás\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-07-28 13:16:13\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:6:\"4.7.11\";s:7:\"updated\";s:19:\"2018-09-20 11:13:37\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.7.11/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-08-12 15:50:35\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-07-24 13:42:24\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.2/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"続ける\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-24 13:53:29\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Nerusaké\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:3:\"5.1\";s:7:\"updated\";s:19:\"2019-02-21 08:17:32\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.1/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-21 14:15:57\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.8/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Kemmel\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-12 08:08:32\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.5/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-09 07:34:10\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.0.3/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:2:\"kn\";a:8:{s:8:\"language\";s:2:\"kn\";s:7:\"version\";s:6:\"4.9.10\";s:7:\"updated\";s:19:\"2019-05-08 04:00:57\";s:12:\"english_name\";s:7:\"Kannada\";s:11:\"native_name\";s:15:\"ಕನ್ನಡ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.10/kn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kn\";i:2;s:3:\"kan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"ಮುಂದುವರೆಸಿ\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-09 14:27:41\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.3/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"4.9.9\";s:7:\"updated\";s:19:\"2018-12-18 14:32:44\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.9/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"ຕໍ່​ໄປ\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-08-07 12:10:36\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:6:\"4.7.13\";s:7:\"updated\";s:19:\"2019-05-10 10:24:08\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.13/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-01-26 15:54:41\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.7/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:43:32\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-12 07:29:35\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"Үргэлжлүүлэх\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2018-02-13 07:38:55\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.6/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-30 20:27:25\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-26 15:57:42\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.20/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ဆောင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-08-19 07:40:04\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-27 10:30:26\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:43:\"जारी राख्नुहोस्\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-30 14:24:29\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-08-15 14:36:38\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/5.2.2/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-08-16 11:16:09\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-20 11:47:07\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.3/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:7:\"Punjabi\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-07-07 06:24:50\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-29 22:19:48\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.1.20/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"دوام ورکړه\";}}s:5:\"pt_AO\";a:8:{s:8:\"language\";s:5:\"pt_AO\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-07-22 05:41:06\";s:12:\"english_name\";s:19:\"Portuguese (Angola)\";s:11:\"native_name\";s:20:\"Português de Angola\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/pt_AO.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-07-02 08:07:52\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-07-02 07:58:03\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/5.2.2/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-28 20:02:31\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-08-02 10:04:28\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-08-15 18:30:22\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-07-10 14:50:59\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:3:\"skr\";a:8:{s:8:\"language\";s:3:\"skr\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-26 11:40:37\";s:12:\"english_name\";s:7:\"Saraiki\";s:11:\"native_name\";s:14:\"سرائیکی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.2.2/skr.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"skr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"جاری رکھو\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2018-01-04 13:33:13\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Nadaljuj\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"5.1.1\";s:7:\"updated\";s:19:\"2019-04-02 15:10:17\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.1.1/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"5.2.1\";s:7:\"updated\";s:19:\"2019-05-21 18:58:08\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.1/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-08-04 23:00:24\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-30 02:47:32\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.2/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-30 02:38:08\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-08-08 09:22:35\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-12 12:31:53\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:16:\"ئۇيغۇرچە\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-08-07 20:33:07\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.2/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:5:\"5.1.1\";s:7:\"updated\";s:19:\"2019-03-31 10:39:40\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.1.1/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-23 12:32:40\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.3/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Davom etish\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-07-08 01:07:41\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.2/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-07-29 00:33:56\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-08-17 06:28:29\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-08-05 12:58:25\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:16:\"香港中文版	\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}}', 'no'),
(569, 'type_children', 'a:3:{i:3;a:5:{i:0;i:4;i:1;i:5;i:2;i:6;i:3;i:41;i:4;i:47;}i:12;a:4:{i:0;i:13;i:1;i:14;i:2;i:27;i:3;i:30;}i:2;a:4:{i:0;i:21;i:1;i:22;i:2;i:35;i:3;i:38;}}', 'yes');

-- --------------------------------------------------------

--
-- Structure de la table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 2, '_edit_lock', '1566306404:1'),
(4, 5, '_wp_attached_file', '2019/05/tarte.jpg'),
(5, 5, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1200;s:4:\"file\";s:17:\"2019/05/tarte.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"tarte-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"tarte-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"tarte-768x480.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"tarte-1024x640.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:640;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(6, 6, '_wp_attached_file', '2019/05/sandwich.jpg'),
(7, 6, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1200;s:4:\"file\";s:20:\"2019/05/sandwich.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"sandwich-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"sandwich-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"sandwich-768x480.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"sandwich-1024x640.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:640;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(8, 7, '_wp_attached_file', '2019/05/salade.jpg'),
(9, 7, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1200;s:4:\"file\";s:18:\"2019/05/salade.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"salade-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"salade-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"salade-768x480.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"salade-1024x640.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:640;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(10, 8, '_wp_attached_file', '2019/05/quiche.jpg'),
(11, 8, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1200;s:4:\"file\";s:18:\"2019/05/quiche.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"quiche-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"quiche-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"quiche-768x480.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"quiche-1024x640.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:640;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(12, 9, '_wp_attached_file', '2019/05/pizza.jpg'),
(13, 9, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1200;s:4:\"file\";s:17:\"2019/05/pizza.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"pizza-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"pizza-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"pizza-768x480.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"pizza-1024x640.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:640;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(14, 10, '_wp_attached_file', '2019/05/pesto.jpg'),
(15, 10, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1200;s:4:\"file\";s:17:\"2019/05/pesto.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"pesto-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"pesto-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"pesto-768x480.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"pesto-1024x640.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:640;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(16, 11, '_wp_attached_file', '2019/05/pave.jpg'),
(17, 11, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1200;s:4:\"file\";s:16:\"2019/05/pave.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"pave-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"pave-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"pave-768x480.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"pave-1024x640.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:640;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(18, 12, '_wp_attached_file', '2019/05/pain-perdu.jpg'),
(19, 12, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1200;s:4:\"file\";s:22:\"2019/05/pain-perdu.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"pain-perdu-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"pain-perdu-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"pain-perdu-768x480.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"pain-perdu-1024x640.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:640;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(20, 13, '_wp_attached_file', '2019/05/paella.jpg'),
(21, 13, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1200;s:4:\"file\";s:18:\"2019/05/paella.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"paella-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"paella-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"paella-768x480.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"paella-1024x640.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:640;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(22, 14, '_wp_attached_file', '2019/05/gateau.jpg'),
(23, 14, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1200;s:4:\"file\";s:18:\"2019/05/gateau.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"gateau-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"gateau-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"gateau-768x480.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"gateau-1024x640.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:640;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(24, 15, '_wp_attached_file', '2019/05/farandole.jpg'),
(25, 15, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1200;s:4:\"file\";s:21:\"2019/05/farandole.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"farandole-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"farandole-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"farandole-768x480.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"farandole-1024x640.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:640;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(26, 16, '_wp_attached_file', '2019/05/donuts.jpg'),
(27, 16, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1200;s:4:\"file\";s:18:\"2019/05/donuts.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"donuts-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"donuts-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"donuts-768x480.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"donuts-1024x640.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:640;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(28, 17, '_wp_attached_file', '2019/05/crumble.jpg'),
(29, 17, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1200;s:4:\"file\";s:19:\"2019/05/crumble.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"crumble-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"crumble-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"crumble-768x480.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"crumble-1024x640.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:640;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(30, 18, '_wp_attached_file', '2019/05/burger.jpg'),
(31, 18, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1200;s:4:\"file\";s:18:\"2019/05/burger.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"burger-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"burger-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"burger-768x480.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"burger-1024x640.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:640;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(32, 19, '_edit_last', '1'),
(33, 19, '_edit_lock', '1566302131:1'),
(34, 20, '_edit_last', '1'),
(35, 20, '_edit_lock', '1566295381:1'),
(36, 19, 'preparation', '5'),
(37, 19, '_preparation', 'field_5cde69558a9d0'),
(38, 19, 'temps_de_cuisson', '15'),
(39, 19, '_temps_de_cuisson', 'field_5cde6b158a9d1'),
(40, 19, 'prix', '5'),
(41, 19, '_prix', 'field_5cde6b618a9d2'),
(42, 19, '_thumbnail_id', '18'),
(44, 26, '_edit_last', '1'),
(45, 26, '_edit_lock', '1566295199:1'),
(46, 26, 'preparation', '30'),
(47, 26, '_preparation', 'field_5cde69558a9d0'),
(48, 26, 'temps_de_cuisson', '15'),
(49, 26, '_temps_de_cuisson', 'field_5cde6b158a9d1'),
(50, 26, 'prix', '5'),
(51, 26, '_prix', 'field_5cde6b618a9d2'),
(52, 26, '_thumbnail_id', '5'),
(53, 1, '_edit_lock', '1558092269:1'),
(54, 27, '_menu_item_type', 'post_type_archive'),
(55, 27, '_menu_item_menu_item_parent', '0'),
(56, 27, '_menu_item_object_id', '-9'),
(57, 27, '_menu_item_object', 'recipe'),
(58, 27, '_menu_item_target', ''),
(59, 27, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(60, 27, '_menu_item_xfn', ''),
(61, 27, '_menu_item_url', ''),
(63, 28, '_edit_lock', '1558095061:1'),
(64, 29, '_menu_item_type', 'post_type'),
(65, 29, '_menu_item_menu_item_parent', '0'),
(66, 29, '_menu_item_object_id', '28'),
(67, 29, '_menu_item_object', 'page'),
(68, 29, '_menu_item_target', ''),
(69, 29, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(70, 29, '_menu_item_xfn', ''),
(71, 29, '_menu_item_url', ''),
(82, 28, '_wp_page_template', 'template-random.php'),
(83, 31, '_edit_lock', '1566303553:1'),
(84, 33, '_menu_item_type', 'post_type_archive'),
(85, 33, '_menu_item_menu_item_parent', '0'),
(86, 33, '_menu_item_object_id', '-12'),
(87, 33, '_menu_item_object', 'recipe'),
(88, 33, '_menu_item_target', ''),
(89, 33, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(90, 33, '_menu_item_xfn', ''),
(91, 33, '_menu_item_url', ''),
(93, 34, '_menu_item_type', 'taxonomy'),
(94, 34, '_menu_item_menu_item_parent', '0'),
(95, 34, '_menu_item_object_id', '12'),
(96, 34, '_menu_item_object', 'type'),
(97, 34, '_menu_item_target', ''),
(98, 34, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(99, 34, '_menu_item_xfn', ''),
(100, 34, '_menu_item_url', ''),
(102, 35, '_menu_item_type', 'taxonomy'),
(103, 35, '_menu_item_menu_item_parent', '0'),
(104, 35, '_menu_item_object_id', '3'),
(105, 35, '_menu_item_object', 'type'),
(106, 35, '_menu_item_target', ''),
(107, 35, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(108, 35, '_menu_item_xfn', ''),
(109, 35, '_menu_item_url', ''),
(111, 36, '_menu_item_type', 'taxonomy'),
(112, 36, '_menu_item_menu_item_parent', '0'),
(113, 36, '_menu_item_object_id', '20'),
(114, 36, '_menu_item_object', 'type'),
(115, 36, '_menu_item_target', ''),
(116, 36, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(117, 36, '_menu_item_xfn', ''),
(118, 36, '_menu_item_url', ''),
(120, 37, '_menu_item_type', 'taxonomy'),
(121, 37, '_menu_item_menu_item_parent', '0'),
(122, 37, '_menu_item_object_id', '2'),
(123, 37, '_menu_item_object', 'type'),
(124, 37, '_menu_item_target', ''),
(125, 37, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(126, 37, '_menu_item_xfn', ''),
(127, 37, '_menu_item_url', ''),
(130, 42, '_edit_lock', '1566295199:1'),
(180, 52, '_edit_last', '1'),
(181, 52, '_edit_lock', '1566305679:1'),
(182, 52, 'preparation', '35'),
(183, 52, '_preparation', 'field_5cde69558a9d0'),
(184, 52, 'temps_de_cuisson', '30'),
(185, 52, '_temps_de_cuisson', 'field_5cde6b158a9d1'),
(186, 52, 'prix', '7'),
(187, 52, '_prix', 'field_5cde6b618a9d2'),
(188, 53, 'preparation', '35'),
(189, 53, '_preparation', 'field_5cde69558a9d0'),
(190, 53, 'temps_de_cuisson', '30'),
(191, 53, '_temps_de_cuisson', 'field_5cde6b158a9d1'),
(192, 53, 'prix', '7'),
(193, 53, '_prix', 'field_5cde6b618a9d2'),
(194, 52, '_thumbnail_id', '17'),
(195, 54, '_edit_last', '1'),
(196, 54, '_edit_lock', '1566305727:1'),
(197, 54, 'preparation', '5'),
(198, 54, '_preparation', 'field_5cde69558a9d0'),
(199, 54, 'temps_de_cuisson', '5'),
(200, 54, '_temps_de_cuisson', 'field_5cde6b158a9d1'),
(201, 54, 'prix', '1'),
(202, 54, '_prix', 'field_5cde6b618a9d2'),
(203, 55, 'preparation', '5'),
(204, 55, '_preparation', 'field_5cde69558a9d0'),
(205, 55, 'temps_de_cuisson', '5'),
(206, 55, '_temps_de_cuisson', 'field_5cde6b158a9d1'),
(207, 55, 'prix', '1'),
(208, 55, '_prix', 'field_5cde6b618a9d2'),
(209, 54, '_thumbnail_id', '16'),
(210, 56, '_edit_last', '1'),
(211, 56, '_edit_lock', '1566305788:1'),
(212, 56, 'preparation', '40'),
(213, 56, '_preparation', 'field_5cde69558a9d0'),
(214, 56, 'temps_de_cuisson', '45'),
(215, 56, '_temps_de_cuisson', 'field_5cde6b158a9d1'),
(216, 56, 'prix', '4'),
(217, 56, '_prix', 'field_5cde6b618a9d2'),
(218, 57, 'preparation', '40'),
(219, 57, '_preparation', 'field_5cde69558a9d0'),
(220, 57, 'temps_de_cuisson', '45'),
(221, 57, '_temps_de_cuisson', 'field_5cde6b158a9d1'),
(222, 57, 'prix', '4'),
(223, 57, '_prix', 'field_5cde6b618a9d2'),
(224, 56, '_thumbnail_id', '14'),
(225, 58, '_edit_last', '1'),
(226, 58, '_edit_lock', '1566305969:1'),
(227, 58, '_thumbnail_id', '13'),
(228, 58, 'preparation', '60'),
(229, 58, '_preparation', 'field_5cde69558a9d0'),
(230, 58, 'temps_de_cuisson', '45'),
(231, 58, '_temps_de_cuisson', 'field_5cde6b158a9d1'),
(232, 58, 'prix', '8'),
(233, 58, '_prix', 'field_5cde6b618a9d2'),
(234, 59, 'preparation', '60'),
(235, 59, '_preparation', 'field_5cde69558a9d0'),
(236, 59, 'temps_de_cuisson', '45'),
(237, 59, '_temps_de_cuisson', 'field_5cde6b158a9d1'),
(238, 59, 'prix', '8'),
(239, 59, '_prix', 'field_5cde6b618a9d2'),
(240, 60, '_edit_last', '1'),
(241, 60, '_edit_lock', '1566306028:1'),
(242, 60, 'preparation', '15'),
(243, 60, '_preparation', 'field_5cde69558a9d0'),
(244, 60, 'temps_de_cuisson', '5'),
(245, 60, '_temps_de_cuisson', 'field_5cde6b158a9d1'),
(246, 60, 'prix', '4'),
(247, 60, '_prix', 'field_5cde6b618a9d2'),
(248, 61, 'preparation', '15'),
(249, 61, '_preparation', 'field_5cde69558a9d0'),
(250, 61, 'temps_de_cuisson', '5'),
(251, 61, '_temps_de_cuisson', 'field_5cde6b158a9d1'),
(252, 61, 'prix', '4'),
(253, 61, '_prix', 'field_5cde6b618a9d2'),
(254, 60, '_thumbnail_id', '12'),
(255, 62, '_edit_last', '1'),
(256, 62, '_edit_lock', '1566306126:1'),
(257, 62, '_thumbnail_id', '11'),
(258, 63, 'preparation', '20'),
(259, 63, '_preparation', 'field_5cde69558a9d0'),
(260, 63, 'temps_de_cuisson', '7'),
(261, 63, '_temps_de_cuisson', 'field_5cde6b158a9d1'),
(262, 63, 'prix', '14'),
(263, 63, '_prix', 'field_5cde6b618a9d2'),
(264, 62, 'preparation', '20'),
(265, 62, '_preparation', 'field_5cde69558a9d0'),
(266, 62, 'temps_de_cuisson', '7'),
(267, 62, '_temps_de_cuisson', 'field_5cde6b158a9d1'),
(268, 62, 'prix', '14'),
(269, 62, '_prix', 'field_5cde6b618a9d2'),
(270, 64, 'preparation', '20'),
(271, 64, '_preparation', 'field_5cde69558a9d0'),
(272, 64, 'temps_de_cuisson', '7'),
(273, 64, '_temps_de_cuisson', 'field_5cde6b158a9d1'),
(274, 64, 'prix', '14'),
(275, 64, '_prix', 'field_5cde6b618a9d2'),
(276, 65, '_edit_last', '1'),
(277, 65, '_edit_lock', '1566306442:1'),
(278, 65, 'preparation', '15'),
(279, 65, '_preparation', 'field_5cde69558a9d0'),
(280, 65, 'temps_de_cuisson', '60'),
(281, 65, '_temps_de_cuisson', 'field_5cde6b158a9d1'),
(282, 65, 'prix', '4'),
(283, 65, '_prix', 'field_5cde6b618a9d2'),
(284, 66, 'preparation', '15'),
(285, 66, '_preparation', 'field_5cde69558a9d0'),
(286, 66, 'temps_de_cuisson', '60'),
(287, 66, '_temps_de_cuisson', 'field_5cde6b158a9d1'),
(288, 66, 'prix', '4'),
(289, 66, '_prix', 'field_5cde6b618a9d2'),
(290, 67, '_edit_last', '1'),
(291, 67, '_edit_lock', '1566306288:1'),
(292, 67, 'preparation', '15'),
(293, 67, '_preparation', 'field_5cde69558a9d0'),
(294, 67, 'temps_de_cuisson', '25'),
(295, 67, '_temps_de_cuisson', 'field_5cde6b158a9d1'),
(296, 67, 'prix', '7'),
(297, 67, '_prix', 'field_5cde6b618a9d2'),
(298, 68, 'preparation', '15'),
(299, 68, '_preparation', 'field_5cde69558a9d0'),
(300, 68, 'temps_de_cuisson', '25'),
(301, 68, '_temps_de_cuisson', 'field_5cde6b158a9d1'),
(302, 68, 'prix', '7'),
(303, 68, '_prix', 'field_5cde6b618a9d2'),
(304, 67, '_thumbnail_id', '9'),
(305, 69, '_edit_last', '1'),
(306, 69, '_edit_lock', '1566307079:4'),
(307, 69, '_thumbnail_id', '8'),
(308, 69, 'preparation', ''),
(309, 69, '_preparation', 'field_5cde69558a9d0'),
(310, 69, 'temps_de_cuisson', ''),
(311, 69, '_temps_de_cuisson', 'field_5cde6b158a9d1'),
(312, 69, 'prix', ''),
(313, 69, '_prix', 'field_5cde6b618a9d2'),
(314, 70, 'preparation', ''),
(315, 70, '_preparation', 'field_5cde69558a9d0'),
(316, 70, 'temps_de_cuisson', ''),
(317, 70, '_temps_de_cuisson', 'field_5cde6b158a9d1'),
(318, 70, 'prix', ''),
(319, 70, '_prix', 'field_5cde6b618a9d2'),
(320, 2, '_wp_trash_meta_status', 'publish'),
(321, 2, '_wp_trash_meta_time', '1566306551'),
(322, 2, '_wp_desired_post_slug', 'page-d-exemple'),
(323, 72, '_edit_last', '1'),
(324, 72, '_edit_lock', '1566306652:1'),
(325, 72, '_thumbnail_id', '6'),
(326, 72, 'preparation', '5'),
(327, 72, '_preparation', 'field_5cde69558a9d0'),
(328, 72, 'temps_de_cuisson', '0'),
(329, 72, '_temps_de_cuisson', 'field_5cde6b158a9d1'),
(330, 72, 'prix', '2'),
(331, 72, '_prix', 'field_5cde6b618a9d2'),
(332, 73, 'preparation', '5'),
(333, 73, '_preparation', 'field_5cde69558a9d0'),
(334, 73, 'temps_de_cuisson', '0'),
(335, 73, '_temps_de_cuisson', 'field_5cde6b158a9d1'),
(336, 73, 'prix', '2'),
(337, 73, '_prix', 'field_5cde6b618a9d2');

-- --------------------------------------------------------

--
-- Structure de la table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
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
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-05-16 11:15:14', '2019-05-16 09:15:14', '<!-- wp:paragraph -->\n<p>Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis commencez à écrire !</p>\n<!-- /wp:paragraph -->', 'Bonjour tout le monde !', '', 'publish', 'open', 'open', '', 'bonjour-tout-le-monde', '', '', '2019-05-16 11:15:14', '2019-05-16 09:15:14', '', 0, 'http://localhost/oclock/quantum/spe/WP-oCooking-christopheOclock/wp/?p=1', 0, 'post', '', 1),
(2, 1, '2019-05-16 11:15:14', '2019-05-16 09:15:14', '<!-- wp:paragraph -->\n<p>Ceci est une page d’exemple. C’est différent d’un article de blog parce qu’elle restera au même endroit et apparaîtra dans la navigation de votre site (dans la plupart des thèmes). La plupart des gens commencent par une page « À propos » qui les présente aux visiteurs du site. Cela pourrait ressembler à quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Bonjour ! Je suis un mécanicien qui aspire à devenir acteur, et voici mon site. J’habite à Bordeaux, j’ai un super chien baptisé Russell, et j’aime la vodka-ananas (ainsi qu’être surpris par la pluie soudaine lors de longues balades sur la plage au coucher du soleil).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>... ou quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>En tant que nouvel·le utilisateur ou utilisatrice de WordPress, vous devriez vous rendre sur <a href=\"http://localhost/oclock/quantum/spe/WP-oCooking-christopheOclock/wp/wp-admin/\">votre tableau de bord</a> pour supprimer cette page et créer de nouvelles pages pour votre contenu. Amusez-vous bien !</p>\n<!-- /wp:paragraph -->', 'Page d’exemple', '', 'trash', 'closed', 'open', '', 'page-d-exemple__trashed', '', '', '2019-08-20 15:09:11', '2019-08-20 13:09:11', '', 0, 'http://localhost/oclock/quantum/spe/WP-oCooking-christopheOclock/wp/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-05-16 11:15:14', '2019-05-16 09:15:14', '<!-- wp:heading --><h2>Qui sommes-nous ?</h2><!-- /wp:heading --><!-- wp:paragraph --><p>L’adresse de notre site Web est : http://localhost/oclock/quantum/spe/WP-oCooking-christopheOclock/wp.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Utilisation des données personnelles collectées</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Commentaires</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Quand vous laissez un commentaire sur notre site web, les données inscrites dans le formulaire de commentaire, mais aussi votre adresse IP et l’agent utilisateur de votre navigateur sont collectés pour nous aider à la détection des commentaires indésirables.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Une chaîne anonymisée créée à partir de votre adresse de messagerie (également appelée hash) peut être envoyée au service Gravatar pour vérifier si vous utilisez ce dernier. Les clauses de confidentialité du service Gravatar sont disponibles ici : https://automattic.com/privacy/. Après validation de votre commentaire, votre photo de profil sera visible publiquement à coté de votre commentaire.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Médias</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous êtes un utilisateur ou une utilisatrice enregistré·e et que vous téléversez des images sur le site web, nous vous conseillons d’éviter de téléverser des images contenant des données EXIF de coordonnées GPS. Les visiteurs de votre site web peuvent télécharger et extraire des données de localisation depuis ces images.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Formulaires de contact</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous déposez un commentaire sur notre site, il vous sera proposé d’enregistrer votre nom, adresse de messagerie et site web dans des cookies. C’est uniquement pour votre confort afin de ne pas avoir à saisir ces informations si vous déposez un autre commentaire plus tard. Ces cookies expirent au bout d’un an.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si vous vous rendez sur la page de connexion, un cookie temporaire sera créé afin de déterminer si votre navigateur accepte les cookies. Il ne contient pas de données personnelles et sera supprimé automatiquement à la fermeture de votre navigateur.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Lorsque vous vous connecterez, nous mettrons en place un certain nombre de cookies pour enregistrer vos informations de connexion et vos préférences d’écran. La durée de vie d’un cookie de connexion est de deux jours, celle d’un cookie d’option d’écran est d’un an. Si vous cochez « Se souvenir de moi », votre cookie de connexion sera conservé pendant deux semaines. Si vous vous déconnectez de votre compte, le cookie de connexion sera effacé.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>En modifiant ou en publiant une publication, un cookie supplémentaire sera enregistré dans votre navigateur. Ce cookie ne comprend aucune donnée personnelle. Il indique simplement l’ID de la publication que vous venez de modifier. Il expire au bout d’un jour.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contenu embarqué depuis d’autres sites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Les articles de ce site peuvent inclure des contenus intégrés (par exemple des vidéos, images, articles…). Le contenu intégré depuis d’autres sites se comporte de la même manière que si le visiteur se rendait sur cet autre site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Ces sites web pourraient collecter des données sur vous, utiliser des cookies, embarquer des outils de suivis tiers, suivre vos interactions avec ces contenus embarqués si vous disposez d’un compte connecté sur leur site web.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Statistiques et mesures d’audience</h3><!-- /wp:heading --><!-- wp:heading --><h2>Utilisation et transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:heading --><h2>Durées de stockage de vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous laissez un commentaire, le commentaire et ses métadonnées sont conservés indéfiniment. Cela permet de reconnaître et approuver automatiquement les commentaires suivants au lieu de les laisser dans la file de modération.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Pour les utilisateurs et utilisatrices qui s’enregistrent sur notre site (si cela est possible), nous stockons également les données personnelles indiquées dans leur profil. Tous les utilisateurs et utilisatrices peuvent voir, modifier ou supprimer leurs informations personnelles à tout moment (à l’exception de leur nom d’utilisateur·ice). Les gestionnaires du site peuvent aussi voir et modifier ces informations.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Les droits que vous avez sur vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous avez un compte ou si vous avez laissé des commentaires sur le site, vous pouvez demander à recevoir un fichier contenant toutes les données personnelles que nous possédons à votre sujet, incluant celles que vous nous avez fournies. Vous pouvez également demander la suppression des données personnelles vous concernant. Cela ne prend pas en compte les données stockées à des fins administratives, légales ou pour des raisons de sécurité.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Les commentaires des visiteurs peuvent être vérifiés à l’aide d’un service automatisé de détection des commentaires indésirables.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Informations de contact</h2><!-- /wp:heading --><!-- wp:heading --><h2>Informations supplémentaires</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comment nous protégeons vos données</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Procédures mises en œuvre en cas de fuite de données</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Les services tiers qui nous transmettent des données</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Opérations de marketing automatisé et/ou de profilage réalisées à l’aide des données personnelles</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Affichage des informations liées aux secteurs soumis à des régulations spécifiques</h3><!-- /wp:heading -->', 'Politique de confidentialité', '', 'draft', 'closed', 'open', '', 'politique-de-confidentialite', '', '', '2019-05-16 11:15:14', '2019-05-16 09:15:14', '', 0, 'http://localhost/oclock/quantum/spe/WP-oCooking-christopheOclock/wp/?page_id=3', 0, 'page', '', 0),
(5, 1, '2019-05-17 09:55:52', '2019-05-17 07:55:52', '', 'tarte', '', 'inherit', 'open', 'closed', '', 'tarte', '', '', '2019-05-17 09:55:52', '2019-05-17 07:55:52', '', 0, 'http://localhost/oclock/quantum/spe/WP-oCooking-christopheOclock/content/uploads/2019/05/tarte.jpg', 0, 'attachment', 'image/jpeg', 0),
(6, 1, '2019-05-17 09:55:53', '2019-05-17 07:55:53', '', 'sandwich', '', 'inherit', 'open', 'closed', '', 'sandwich', '', '', '2019-05-17 09:55:53', '2019-05-17 07:55:53', '', 0, 'http://localhost/oclock/quantum/spe/WP-oCooking-christopheOclock/content/uploads/2019/05/sandwich.jpg', 0, 'attachment', 'image/jpeg', 0),
(7, 1, '2019-05-17 09:55:53', '2019-05-17 07:55:53', '', 'salade', '', 'inherit', 'open', 'closed', '', 'salade', '', '', '2019-05-17 09:55:53', '2019-05-17 07:55:53', '', 0, 'http://localhost/oclock/quantum/spe/WP-oCooking-christopheOclock/content/uploads/2019/05/salade.jpg', 0, 'attachment', 'image/jpeg', 0),
(8, 1, '2019-05-17 09:55:53', '2019-05-17 07:55:53', '', 'quiche', '', 'inherit', 'open', 'closed', '', 'quiche', '', '', '2019-05-17 09:55:53', '2019-05-17 07:55:53', '', 0, 'http://localhost/oclock/quantum/spe/WP-oCooking-christopheOclock/content/uploads/2019/05/quiche.jpg', 0, 'attachment', 'image/jpeg', 0),
(9, 1, '2019-05-17 09:55:54', '2019-05-17 07:55:54', '', 'pizza', '', 'inherit', 'open', 'closed', '', 'pizza', '', '', '2019-05-17 09:55:54', '2019-05-17 07:55:54', '', 0, 'http://localhost/oclock/quantum/spe/WP-oCooking-christopheOclock/content/uploads/2019/05/pizza.jpg', 0, 'attachment', 'image/jpeg', 0),
(10, 1, '2019-05-17 09:55:54', '2019-05-17 07:55:54', '', 'pesto', '', 'inherit', 'open', 'closed', '', 'pesto', '', '', '2019-05-17 09:55:54', '2019-05-17 07:55:54', '', 0, 'http://localhost/oclock/quantum/spe/WP-oCooking-christopheOclock/content/uploads/2019/05/pesto.jpg', 0, 'attachment', 'image/jpeg', 0),
(11, 1, '2019-05-17 09:55:54', '2019-05-17 07:55:54', '', 'pave', '', 'inherit', 'open', 'closed', '', 'pave', '', '', '2019-05-17 09:55:54', '2019-05-17 07:55:54', '', 0, 'http://localhost/oclock/quantum/spe/WP-oCooking-christopheOclock/content/uploads/2019/05/pave.jpg', 0, 'attachment', 'image/jpeg', 0),
(12, 1, '2019-05-17 09:55:55', '2019-05-17 07:55:55', '', 'pain-perdu', '', 'inherit', 'open', 'closed', '', 'pain-perdu', '', '', '2019-05-17 09:55:55', '2019-05-17 07:55:55', '', 0, 'http://localhost/oclock/quantum/spe/WP-oCooking-christopheOclock/content/uploads/2019/05/pain-perdu.jpg', 0, 'attachment', 'image/jpeg', 0),
(13, 1, '2019-05-17 09:55:55', '2019-05-17 07:55:55', '', 'paella', '', 'inherit', 'open', 'closed', '', 'paella', '', '', '2019-05-17 09:55:55', '2019-05-17 07:55:55', '', 0, 'http://localhost/oclock/quantum/spe/WP-oCooking-christopheOclock/content/uploads/2019/05/paella.jpg', 0, 'attachment', 'image/jpeg', 0),
(14, 1, '2019-05-17 09:55:55', '2019-05-17 07:55:55', '', 'gateau', '', 'inherit', 'open', 'closed', '', 'gateau', '', '', '2019-05-17 09:55:55', '2019-05-17 07:55:55', '', 0, 'http://localhost/oclock/quantum/spe/WP-oCooking-christopheOclock/content/uploads/2019/05/gateau.jpg', 0, 'attachment', 'image/jpeg', 0),
(15, 1, '2019-05-17 09:55:55', '2019-05-17 07:55:55', '', 'farandole', '', 'inherit', 'open', 'closed', '', 'farandole', '', '', '2019-05-17 09:55:55', '2019-05-17 07:55:55', '', 0, 'http://localhost/oclock/quantum/spe/WP-oCooking-christopheOclock/content/uploads/2019/05/farandole.jpg', 0, 'attachment', 'image/jpeg', 0),
(16, 1, '2019-05-17 09:55:56', '2019-05-17 07:55:56', '', 'donuts', '', 'inherit', 'open', 'closed', '', 'donuts', '', '', '2019-05-17 09:55:56', '2019-05-17 07:55:56', '', 0, 'http://localhost/oclock/quantum/spe/WP-oCooking-christopheOclock/content/uploads/2019/05/donuts.jpg', 0, 'attachment', 'image/jpeg', 0),
(17, 1, '2019-05-17 09:55:56', '2019-05-17 07:55:56', '', 'crumble', '', 'inherit', 'open', 'closed', '', 'crumble', '', '', '2019-05-17 09:55:56', '2019-05-17 07:55:56', '', 0, 'http://localhost/oclock/quantum/spe/WP-oCooking-christopheOclock/content/uploads/2019/05/crumble.jpg', 0, 'attachment', 'image/jpeg', 0),
(18, 1, '2019-05-17 09:55:56', '2019-05-17 07:55:56', '', 'burger', '', 'inherit', 'open', 'closed', '', 'burger', '', '', '2019-05-17 09:55:56', '2019-05-17 07:55:56', '', 0, 'http://localhost/oclock/quantum/spe/WP-oCooking-christopheOclock/content/uploads/2019/05/burger.jpg', 0, 'attachment', 'image/jpeg', 0),
(19, 1, '2019-05-17 10:26:57', '2019-05-17 08:26:57', '<div class=\"recipe-instructions-content\">\r\n<ol>\r\n 	<li>Pelez l’oignon rouge puis émincez-le. Rincez et essorez la roquette. Rincez la tomate puis coupez-la en rondelles.</li>\r\n 	<li>Faites chauffer l’huile dans une poêle et faites cuire les steaks 3 à 4 min de chaque côté, selon votre goût. En fin de cuisson, salez, poivrez, disposez 1 tranche de cheddar sur chaque steak et laissez-la légèrement fondre.</li>\r\n 	<li>Fendez les petits pains en 2 et toastez-les légèrement. Montez les burgers : tartinez chaque moitié de pain de sauce puis garnissez avec la viande, les rondelles de tomate, l’oignon ciselé et les feuilles de roquette. Refermez les burgers et servez aussitôt.</li>\r\n</ol>\r\n</div>', 'Burger', 'Un savoureux burger', 'publish', 'closed', 'closed', '', 'burger', '', '', '2019-05-17 12:17:19', '2019-05-17 10:17:19', '', 0, 'http://localhost/oclock/quantum/spe/WP-oCooking-christopheOclock/?post_type=recipe&#038;p=19', 0, 'recipe', '', 0),
(20, 1, '2019-05-17 10:08:51', '2019-05-17 08:08:51', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"recipe\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Informations supplémentaires', 'informations-supplementaires', 'publish', 'closed', 'closed', '', 'group_5cde693ec3099', '', '', '2019-05-17 10:27:13', '2019-05-17 08:27:13', '', 0, 'http://localhost/oclock/quantum/spe/WP-oCooking-christopheOclock/?post_type=acf-field-group&#038;p=20', 0, 'acf-field-group', '', 0),
(21, 1, '2019-05-17 10:08:51', '2019-05-17 08:08:51', 'a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:10:\"En minutes\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:4:\"min.\";s:3:\"min\";i:0;s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";}', 'Préparation', 'preparation', 'publish', 'closed', 'closed', '', 'field_5cde69558a9d0', '', '', '2019-05-17 10:08:51', '2019-05-17 08:08:51', '', 20, 'http://localhost/oclock/quantum/spe/WP-oCooking-christopheOclock/?post_type=acf-field&p=21', 0, 'acf-field', '', 0),
(22, 1, '2019-05-17 10:08:51', '2019-05-17 08:08:51', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:34:\"Temps de cuisson en Heure : Minute\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:13:\"heure:minutes\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:4:\"min.\";s:9:\"maxlength\";s:0:\"\";}', 'Temps de cuisson', 'temps_de_cuisson', 'publish', 'closed', 'closed', '', 'field_5cde6b158a9d1', '', '', '2019-05-17 10:27:13', '2019-05-17 08:27:13', '', 20, 'http://localhost/oclock/quantum/spe/WP-oCooking-christopheOclock/?post_type=acf-field&#038;p=22', 1, 'acf-field', '', 0),
(23, 1, '2019-05-17 10:08:51', '2019-05-17 08:08:51', 'a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:21:\"En euros par personne\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:11:\"€ / pers.\";s:3:\"min\";i:0;s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";}', 'Prix', 'prix', 'publish', 'closed', 'closed', '', 'field_5cde6b618a9d2', '', '', '2019-05-17 10:08:51', '2019-05-17 08:08:51', '', 20, 'http://localhost/oclock/quantum/spe/WP-oCooking-christopheOclock/?post_type=acf-field&p=23', 2, 'acf-field', '', 0),
(26, 1, '2019-05-17 10:31:49', '2019-05-17 08:31:49', '<ol>\r\n 	<li>Préchauffez le four à 180 °C.</li>\r\n 	<li>Étalez la pâte sablée dans un moule à tarte. Piquez le fond avec une fourchette et entreposez au réfrigérateur.</li>\r\n 	<li>Épluchez les pommes, ôtez le trognon et coupez-les en tranches.</li>\r\n 	<li>Dans un saladier, fouettez l\'oeuf avec le sucre en poudre, le sucre vanillé et la crème liquide. Versez dans le fond de tarte et disposez les tranches de pommes par dessus.</li>\r\n 	<li>Enfournez à 180 °C durant 30 min environ.</li>\r\n</ol>', 'Tarte aux pommes', 'La vraie tarte aux pommes de grand maman', 'publish', 'closed', 'closed', '', 'tarte-aux-pommes', '', '', '2019-05-17 11:17:48', '2019-05-17 09:17:48', '', 0, 'http://localhost/oclock/quantum/spe/WP-oCooking-christopheOclock/?post_type=recipe&#038;p=26', 0, 'recipe', '', 0),
(27, 1, '2019-05-17 13:39:34', '2019-05-17 11:39:34', 'Recettes de cuisines', 'Recettes', '', 'publish', 'closed', 'closed', '', 'recettes', '', '', '2019-05-17 13:54:30', '2019-05-17 11:54:30', '', 0, 'http://localhost/oclock/quantum/spe/WP-oCooking-christopheOclock/?p=27', 2, 'nav_menu_item', '', 0),
(28, 1, '2019-05-17 13:41:50', '2019-05-17 11:41:50', '', 'Au hasard', '', 'publish', 'closed', 'closed', '', 'au-hasard-baltazar', '', '', '2019-05-17 14:07:34', '2019-05-17 12:07:34', '', 0, 'http://localhost/oclock/quantum/spe/WP-oCooking-christopheOclock/?page_id=28', 0, 'page', '', 0),
(29, 1, '2019-05-17 13:42:07', '2019-05-17 11:42:07', ' ', '', '', 'publish', 'closed', 'closed', '', '29', '', '', '2019-05-17 13:54:30', '2019-05-17 11:54:30', '', 0, 'http://localhost/oclock/quantum/spe/WP-oCooking-christopheOclock/?p=29', 1, 'nav_menu_item', '', 0),
(31, 1, '2019-05-17 14:10:47', '2019-05-17 12:10:47', '<!-- wp:paragraph -->\n<p>Enfin l\'été ! Retrouvez nos recettes de saison sur oCooking !</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Que vous soyez plutôt légumes ou fruits, oCooking propose tout au long de l\'année de nombreuses recettes privilégiant fruits &amp; légumes de saisons !</p>\n<!-- /wp:paragraph -->', 'Edito accueil', '', 'publish', 'closed', 'closed', '', 'edito-mai-2019', '', '', '2019-08-20 14:21:24', '2019-08-20 12:21:24', '', 0, 'http://localhost/oclock/quantum/spe/WP-oCooking-christopheOclock/?page_id=31', 0, 'page', '', 0),
(33, 1, '2019-05-17 15:01:44', '2019-05-17 13:01:44', 'Recettes de cuisines', 'Recettes', '', 'publish', 'closed', 'closed', '', 'recettes-2', '', '', '2019-05-17 15:01:44', '2019-05-17 13:01:44', '', 0, 'http://localhost/oclock/quantum/spe/WP-oCooking-christopheOclock/?p=33', 1, 'nav_menu_item', '', 0),
(34, 1, '2019-05-17 15:01:44', '2019-05-17 13:01:44', ' ', '', '', 'publish', 'closed', 'closed', '', '34', '', '', '2019-05-17 15:01:44', '2019-05-17 13:01:44', '', 0, 'http://localhost/oclock/quantum/spe/WP-oCooking-christopheOclock/?p=34', 2, 'nav_menu_item', '', 0),
(35, 1, '2019-05-17 15:01:44', '2019-05-17 13:01:44', ' ', '', '', 'publish', 'closed', 'closed', '', '35', '', '', '2019-05-17 15:01:44', '2019-05-17 13:01:44', '', 0, 'http://localhost/oclock/quantum/spe/WP-oCooking-christopheOclock/?p=35', 3, 'nav_menu_item', '', 0),
(36, 1, '2019-05-17 15:01:44', '2019-05-17 13:01:44', '', 'Petit dej\'', '', 'publish', 'closed', 'closed', '', 'petit-dej', '', '', '2019-05-17 15:01:44', '2019-05-17 13:01:44', '', 0, 'http://localhost/oclock/quantum/spe/WP-oCooking-christopheOclock/?p=36', 4, 'nav_menu_item', '', 0),
(37, 1, '2019-05-17 15:01:44', '2019-05-17 13:01:44', ' ', '', '', 'publish', 'closed', 'closed', '', '37', '', '', '2019-05-17 15:01:44', '2019-05-17 13:01:44', '', 0, 'http://localhost/oclock/quantum/spe/WP-oCooking-christopheOclock/?p=37', 5, 'nav_menu_item', '', 0),
(42, 1, '2019-05-21 13:25:15', '2019-05-21 11:25:15', '<!-- wp:paragraph -->\n<p>Une version mobile est en cours de développement !</p>\n<!-- /wp:paragraph -->', 'oCooking sur mobile', '', 'publish', 'open', 'open', '', 'ocooking-sur-mobile', '', '', '2019-05-21 13:25:15', '2019-05-21 11:25:15', '', 0, 'http://localhost/oclock/quantum/spe/WP-oCooking-christopheOclock/?p=42', 0, 'post', '', 0),
(49, 1, '2019-08-20 14:21:24', '2019-08-20 12:21:24', '<!-- wp:paragraph -->\n<p>Enfin l\'été ! Retrouvez nos recettes de saison sur oCooking !</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Que vous soyez plutôt légumes ou fruits, oCooking propose tout au long de l\'année de nombreuses recettes privilégiant fruits &amp; légumes de saisons !</p>\n<!-- /wp:paragraph -->', 'Edito accueil', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2019-08-20 14:21:24', '2019-08-20 12:21:24', '', 31, 'http://localhost/oclock/Teach/WP-Support-oCooking/31-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2019-08-20 14:56:46', '2019-08-20 12:56:46', 'Faire un crumble....', 'Crumble pomme framboise', '', 'publish', 'closed', 'closed', '', 'crumble-pomme-framboise', '', '', '2019-08-20 14:56:57', '2019-08-20 12:56:57', '', 0, 'http://localhost/oclock/Teach/WP-Support-oCooking/?post_type=recipe&#038;p=52', 0, 'recipe', '', 0),
(53, 1, '2019-08-20 14:56:46', '2019-08-20 12:56:46', 'Faire un crumble....', 'Crumble pomme framboise', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2019-08-20 14:56:46', '2019-08-20 12:56:46', '', 52, 'http://localhost/oclock/Teach/WP-Support-oCooking/52-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2019-08-20 14:57:46', '2019-08-20 12:57:46', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In tempor condimentum velit eget ornare. Quisque dignissim bibendum mauris, nec porttitor augue luctus ac. Duis eget enim commodo massa egestas placerat. Cras in tortor hendrerit ante rhoncus tempus. Morbi sagittis pulvinar pretium. Maecenas consectetur tellus diam, non lacinia dui vehicula in. Nam egestas eget odio tempor ultricies. Sed at est malesuada, rutrum sapien in, dictum urna. Suspendisse volutpat vitae magna a mollis. Quisque quis tincidunt diam. Donec vulputate egestas tincidunt. Sed pretium a ex ut tempus. Donec fringilla non felis a vehicula. Nulla nec luctus ante, eu tempus dolor. Nulla ipsum est, ultricies id lobortis non, malesuada vel diam. Maecenas viverra vestibulum justo sed interdum.\r\n\r\nNunc libero augue, sodales ac porttitor sit amet, cursus et mi. Aenean pulvinar gravida egestas. Mauris auctor neque non dui lacinia bibendum. Phasellus a lectus mollis, lacinia dolor non, tincidunt mi. Duis purus quam, elementum nec consectetur euismod, ornare et odio. Praesent dignissim velit accumsan tortor ullamcorper vestibulum. Duis urna odio, luctus vel ligula sed, dapibus iaculis augue. Praesent finibus dui nulla, eu congue libero volutpat in. Praesent ut mi at nibh sollicitudin gravida. Vestibulum tristique felis id justo sodales dapibus. Morbi sit amet est mattis, mattis enim a, eleifend metus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam placerat tincidunt neque sit amet accumsan. Morbi a nisl tortor.\r\n\r\nAliquam quis turpis est. Morbi libero orci, ullamcorper in pellentesque ac, efficitur nec sapien. In vitae volutpat sapien. Integer sollicitudin ut orci id euismod. Suspendisse lacus lacus, varius quis nisi sed, molestie vehicula nisl. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aliquam nibh enim, lacinia nec convallis vel, ornare a elit. Sed placerat accumsan posuere. Maecenas quis lorem ac enim tempor convallis. Cras at interdum enim, in vestibulum mauris. Vestibulum nec dui porttitor, vestibulum augue ac, interdum turpis. Ut maximus vitae tortor a vestibulum. Morbi in eros est.\r\n\r\nVivamus tristique congue libero vel tincidunt. Duis tortor nisl, ornare et quam sit amet, blandit varius ipsum. Nullam placerat venenatis nibh ultricies porta. Cras at finibus metus. Maecenas nec nunc imperdiet, scelerisque leo sed, porta sapien. Fusce in dui quam. Duis tempus eget eros eu faucibus. Morbi dapibus enim eu dolor laoreet tempus. Morbi ullamcorper, velit quis congue ultricies, nunc turpis hendrerit lectus, in sollicitudin nibh ante quis elit.\r\n\r\nCras mattis ex finibus, pharetra lacus ut, tempor mauris. Aenean enim dolor, ullamcorper sed elementum at, porttitor lacinia erat. Aliquam erat volutpat. Praesent facilisis auctor metus, et molestie tellus suscipit id. Phasellus ultrices neque varius nunc elementum fringilla. Vivamus lobortis ipsum a libero ultrices, vitae tincidunt urna gravida. Sed condimentum orci at sagittis feugiat. Nunc ullamcorper eu ipsum eu facilisis. Sed volutpat, lacus et maximus finibus, lacus odio mollis lectus, sed cursus mi lorem eu nibh.', 'Donuts', '', 'publish', 'closed', 'closed', '', 'donuts', '', '', '2019-08-20 14:57:51', '2019-08-20 12:57:51', '', 0, 'http://localhost/oclock/Teach/WP-Support-oCooking/?post_type=recipe&#038;p=54', 0, 'recipe', '', 0),
(55, 1, '2019-08-20 14:57:46', '2019-08-20 12:57:46', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In tempor condimentum velit eget ornare. Quisque dignissim bibendum mauris, nec porttitor augue luctus ac. Duis eget enim commodo massa egestas placerat. Cras in tortor hendrerit ante rhoncus tempus. Morbi sagittis pulvinar pretium. Maecenas consectetur tellus diam, non lacinia dui vehicula in. Nam egestas eget odio tempor ultricies. Sed at est malesuada, rutrum sapien in, dictum urna. Suspendisse volutpat vitae magna a mollis. Quisque quis tincidunt diam. Donec vulputate egestas tincidunt. Sed pretium a ex ut tempus. Donec fringilla non felis a vehicula. Nulla nec luctus ante, eu tempus dolor. Nulla ipsum est, ultricies id lobortis non, malesuada vel diam. Maecenas viverra vestibulum justo sed interdum.\r\n\r\nNunc libero augue, sodales ac porttitor sit amet, cursus et mi. Aenean pulvinar gravida egestas. Mauris auctor neque non dui lacinia bibendum. Phasellus a lectus mollis, lacinia dolor non, tincidunt mi. Duis purus quam, elementum nec consectetur euismod, ornare et odio. Praesent dignissim velit accumsan tortor ullamcorper vestibulum. Duis urna odio, luctus vel ligula sed, dapibus iaculis augue. Praesent finibus dui nulla, eu congue libero volutpat in. Praesent ut mi at nibh sollicitudin gravida. Vestibulum tristique felis id justo sodales dapibus. Morbi sit amet est mattis, mattis enim a, eleifend metus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam placerat tincidunt neque sit amet accumsan. Morbi a nisl tortor.\r\n\r\nAliquam quis turpis est. Morbi libero orci, ullamcorper in pellentesque ac, efficitur nec sapien. In vitae volutpat sapien. Integer sollicitudin ut orci id euismod. Suspendisse lacus lacus, varius quis nisi sed, molestie vehicula nisl. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aliquam nibh enim, lacinia nec convallis vel, ornare a elit. Sed placerat accumsan posuere. Maecenas quis lorem ac enim tempor convallis. Cras at interdum enim, in vestibulum mauris. Vestibulum nec dui porttitor, vestibulum augue ac, interdum turpis. Ut maximus vitae tortor a vestibulum. Morbi in eros est.\r\n\r\nVivamus tristique congue libero vel tincidunt. Duis tortor nisl, ornare et quam sit amet, blandit varius ipsum. Nullam placerat venenatis nibh ultricies porta. Cras at finibus metus. Maecenas nec nunc imperdiet, scelerisque leo sed, porta sapien. Fusce in dui quam. Duis tempus eget eros eu faucibus. Morbi dapibus enim eu dolor laoreet tempus. Morbi ullamcorper, velit quis congue ultricies, nunc turpis hendrerit lectus, in sollicitudin nibh ante quis elit.\r\n\r\nCras mattis ex finibus, pharetra lacus ut, tempor mauris. Aenean enim dolor, ullamcorper sed elementum at, porttitor lacinia erat. Aliquam erat volutpat. Praesent facilisis auctor metus, et molestie tellus suscipit id. Phasellus ultrices neque varius nunc elementum fringilla. Vivamus lobortis ipsum a libero ultrices, vitae tincidunt urna gravida. Sed condimentum orci at sagittis feugiat. Nunc ullamcorper eu ipsum eu facilisis. Sed volutpat, lacus et maximus finibus, lacus odio mollis lectus, sed cursus mi lorem eu nibh.', 'Donuts', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2019-08-20 14:57:46', '2019-08-20 12:57:46', '', 54, 'http://localhost/oclock/Teach/WP-Support-oCooking/54-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2019-08-20 14:58:41', '2019-08-20 12:58:41', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In tempor condimentum velit eget ornare. Quisque dignissim bibendum mauris, nec porttitor augue luctus ac. Duis eget enim commodo massa egestas placerat. Cras in tortor hendrerit ante rhoncus tempus. Morbi sagittis pulvinar pretium. Maecenas consectetur tellus diam, non lacinia dui vehicula in. Nam egestas eget odio tempor ultricies. Sed at est malesuada, rutrum sapien in, dictum urna. Suspendisse volutpat vitae magna a mollis. Quisque quis tincidunt diam. Donec vulputate egestas tincidunt. Sed pretium a ex ut tempus. Donec fringilla non felis a vehicula. Nulla nec luctus ante, eu tempus dolor. Nulla ipsum est, ultricies id lobortis non, malesuada vel diam. Maecenas viverra vestibulum justo sed interdum.\r\n\r\nNunc libero augue, sodales ac porttitor sit amet, cursus et mi. Aenean pulvinar gravida egestas. Mauris auctor neque non dui lacinia bibendum. Phasellus a lectus mollis, lacinia dolor non, tincidunt mi. Duis purus quam, elementum nec consectetur euismod, ornare et odio. Praesent dignissim velit accumsan tortor ullamcorper vestibulum. Duis urna odio, luctus vel ligula sed, dapibus iaculis augue. Praesent finibus dui nulla, eu congue libero volutpat in. Praesent ut mi at nibh sollicitudin gravida. Vestibulum tristique felis id justo sodales dapibus. Morbi sit amet est mattis, mattis enim a, eleifend metus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam placerat tincidunt neque sit amet accumsan. Morbi a nisl tortor.\r\n\r\nAliquam quis turpis est. Morbi libero orci, ullamcorper in pellentesque ac, efficitur nec sapien. In vitae volutpat sapien. Integer sollicitudin ut orci id euismod. Suspendisse lacus lacus, varius quis nisi sed, molestie vehicula nisl. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aliquam nibh enim, lacinia nec convallis vel, ornare a elit. Sed placerat accumsan posuere. Maecenas quis lorem ac enim tempor convallis. Cras at interdum enim, in vestibulum mauris. Vestibulum nec dui porttitor, vestibulum augue ac, interdum turpis. Ut maximus vitae tortor a vestibulum. Morbi in eros est.\r\n\r\nVivamus tristique congue libero vel tincidunt. Duis tortor nisl, ornare et quam sit amet, blandit varius ipsum. Nullam placerat venenatis nibh ultricies porta. Cras at finibus metus. Maecenas nec nunc imperdiet, scelerisque leo sed, porta sapien. Fusce in dui quam. Duis tempus eget eros eu faucibus. Morbi dapibus enim eu dolor laoreet tempus. Morbi ullamcorper, velit quis congue ultricies, nunc turpis hendrerit lectus, in sollicitudin nibh ante quis elit.\r\n\r\nCras mattis ex finibus, pharetra lacus ut, tempor mauris. Aenean enim dolor, ullamcorper sed elementum at, porttitor lacinia erat. Aliquam erat volutpat. Praesent facilisis auctor metus, et molestie tellus suscipit id. Phasellus ultrices neque varius nunc elementum fringilla. Vivamus lobortis ipsum a libero ultrices, vitae tincidunt urna gravida. Sed condimentum orci at sagittis feugiat. Nunc ullamcorper eu ipsum eu facilisis. Sed volutpat, lacus et maximus finibus, lacus odio mollis lectus, sed cursus mi lorem eu nibh.', 'Gâteau chocolat', '', 'publish', 'closed', 'closed', '', 'gateau-chocolat', '', '', '2019-08-20 14:58:51', '2019-08-20 12:58:51', '', 0, 'http://localhost/oclock/Teach/WP-Support-oCooking/?post_type=recipe&#038;p=56', 0, 'recipe', '', 0),
(57, 1, '2019-08-20 14:58:41', '2019-08-20 12:58:41', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In tempor condimentum velit eget ornare. Quisque dignissim bibendum mauris, nec porttitor augue luctus ac. Duis eget enim commodo massa egestas placerat. Cras in tortor hendrerit ante rhoncus tempus. Morbi sagittis pulvinar pretium. Maecenas consectetur tellus diam, non lacinia dui vehicula in. Nam egestas eget odio tempor ultricies. Sed at est malesuada, rutrum sapien in, dictum urna. Suspendisse volutpat vitae magna a mollis. Quisque quis tincidunt diam. Donec vulputate egestas tincidunt. Sed pretium a ex ut tempus. Donec fringilla non felis a vehicula. Nulla nec luctus ante, eu tempus dolor. Nulla ipsum est, ultricies id lobortis non, malesuada vel diam. Maecenas viverra vestibulum justo sed interdum.\r\n\r\nNunc libero augue, sodales ac porttitor sit amet, cursus et mi. Aenean pulvinar gravida egestas. Mauris auctor neque non dui lacinia bibendum. Phasellus a lectus mollis, lacinia dolor non, tincidunt mi. Duis purus quam, elementum nec consectetur euismod, ornare et odio. Praesent dignissim velit accumsan tortor ullamcorper vestibulum. Duis urna odio, luctus vel ligula sed, dapibus iaculis augue. Praesent finibus dui nulla, eu congue libero volutpat in. Praesent ut mi at nibh sollicitudin gravida. Vestibulum tristique felis id justo sodales dapibus. Morbi sit amet est mattis, mattis enim a, eleifend metus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam placerat tincidunt neque sit amet accumsan. Morbi a nisl tortor.\r\n\r\nAliquam quis turpis est. Morbi libero orci, ullamcorper in pellentesque ac, efficitur nec sapien. In vitae volutpat sapien. Integer sollicitudin ut orci id euismod. Suspendisse lacus lacus, varius quis nisi sed, molestie vehicula nisl. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aliquam nibh enim, lacinia nec convallis vel, ornare a elit. Sed placerat accumsan posuere. Maecenas quis lorem ac enim tempor convallis. Cras at interdum enim, in vestibulum mauris. Vestibulum nec dui porttitor, vestibulum augue ac, interdum turpis. Ut maximus vitae tortor a vestibulum. Morbi in eros est.\r\n\r\nVivamus tristique congue libero vel tincidunt. Duis tortor nisl, ornare et quam sit amet, blandit varius ipsum. Nullam placerat venenatis nibh ultricies porta. Cras at finibus metus. Maecenas nec nunc imperdiet, scelerisque leo sed, porta sapien. Fusce in dui quam. Duis tempus eget eros eu faucibus. Morbi dapibus enim eu dolor laoreet tempus. Morbi ullamcorper, velit quis congue ultricies, nunc turpis hendrerit lectus, in sollicitudin nibh ante quis elit.\r\n\r\nCras mattis ex finibus, pharetra lacus ut, tempor mauris. Aenean enim dolor, ullamcorper sed elementum at, porttitor lacinia erat. Aliquam erat volutpat. Praesent facilisis auctor metus, et molestie tellus suscipit id. Phasellus ultrices neque varius nunc elementum fringilla. Vivamus lobortis ipsum a libero ultrices, vitae tincidunt urna gravida. Sed condimentum orci at sagittis feugiat. Nunc ullamcorper eu ipsum eu facilisis. Sed volutpat, lacus et maximus finibus, lacus odio mollis lectus, sed cursus mi lorem eu nibh.', 'Gâteau chocolat', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2019-08-20 14:58:41', '2019-08-20 12:58:41', '', 56, 'http://localhost/oclock/Teach/WP-Support-oCooking/56-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2019-08-20 15:01:32', '2019-08-20 13:01:32', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In tempor condimentum velit eget ornare. Quisque dignissim bibendum mauris, nec porttitor augue luctus ac. Duis eget enim commodo massa egestas placerat. Cras in tortor hendrerit ante rhoncus tempus. Morbi sagittis pulvinar pretium. Maecenas consectetur tellus diam, non lacinia dui vehicula in. Nam egestas eget odio tempor ultricies. Sed at est malesuada, rutrum sapien in, dictum urna. Suspendisse volutpat vitae magna a mollis. Quisque quis tincidunt diam. Donec vulputate egestas tincidunt. Sed pretium a ex ut tempus. Donec fringilla non felis a vehicula. Nulla nec luctus ante, eu tempus dolor. Nulla ipsum est, ultricies id lobortis non, malesuada vel diam. Maecenas viverra vestibulum justo sed interdum.\r\n\r\nNunc libero augue, sodales ac porttitor sit amet, cursus et mi. Aenean pulvinar gravida egestas. Mauris auctor neque non dui lacinia bibendum. Phasellus a lectus mollis, lacinia dolor non, tincidunt mi. Duis purus quam, elementum nec consectetur euismod, ornare et odio. Praesent dignissim velit accumsan tortor ullamcorper vestibulum. Duis urna odio, luctus vel ligula sed, dapibus iaculis augue. Praesent finibus dui nulla, eu congue libero volutpat in. Praesent ut mi at nibh sollicitudin gravida. Vestibulum tristique felis id justo sodales dapibus. Morbi sit amet est mattis, mattis enim a, eleifend metus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam placerat tincidunt neque sit amet accumsan. Morbi a nisl tortor.\r\n\r\nAliquam quis turpis est. Morbi libero orci, ullamcorper in pellentesque ac, efficitur nec sapien. In vitae volutpat sapien. Integer sollicitudin ut orci id euismod. Suspendisse lacus lacus, varius quis nisi sed, molestie vehicula nisl. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aliquam nibh enim, lacinia nec convallis vel, ornare a elit. Sed placerat accumsan posuere. Maecenas quis lorem ac enim tempor convallis. Cras at interdum enim, in vestibulum mauris. Vestibulum nec dui porttitor, vestibulum augue ac, interdum turpis. Ut maximus vitae tortor a vestibulum. Morbi in eros est.\r\n\r\nVivamus tristique congue libero vel tincidunt. Duis tortor nisl, ornare et quam sit amet, blandit varius ipsum. Nullam placerat venenatis nibh ultricies porta. Cras at finibus metus. Maecenas nec nunc imperdiet, scelerisque leo sed, porta sapien. Fusce in dui quam. Duis tempus eget eros eu faucibus. Morbi dapibus enim eu dolor laoreet tempus. Morbi ullamcorper, velit quis congue ultricies, nunc turpis hendrerit lectus, in sollicitudin nibh ante quis elit.\r\n\r\nCras mattis ex finibus, pharetra lacus ut, tempor mauris. Aenean enim dolor, ullamcorper sed elementum at, porttitor lacinia erat. Aliquam erat volutpat. Praesent facilisis auctor metus, et molestie tellus suscipit id. Phasellus ultrices neque varius nunc elementum fringilla. Vivamus lobortis ipsum a libero ultrices, vitae tincidunt urna gravida. Sed condimentum orci at sagittis feugiat. Nunc ullamcorper eu ipsum eu facilisis. Sed volutpat, lacus et maximus finibus, lacus odio mollis lectus, sed cursus mi lorem eu nibh.', 'Paella', '', 'publish', 'closed', 'closed', '', 'paella', '', '', '2019-08-20 15:01:32', '2019-08-20 13:01:32', '', 0, 'http://localhost/oclock/Teach/WP-Support-oCooking/?post_type=recipe&#038;p=58', 0, 'recipe', '', 0),
(59, 1, '2019-08-20 15:01:32', '2019-08-20 13:01:32', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In tempor condimentum velit eget ornare. Quisque dignissim bibendum mauris, nec porttitor augue luctus ac. Duis eget enim commodo massa egestas placerat. Cras in tortor hendrerit ante rhoncus tempus. Morbi sagittis pulvinar pretium. Maecenas consectetur tellus diam, non lacinia dui vehicula in. Nam egestas eget odio tempor ultricies. Sed at est malesuada, rutrum sapien in, dictum urna. Suspendisse volutpat vitae magna a mollis. Quisque quis tincidunt diam. Donec vulputate egestas tincidunt. Sed pretium a ex ut tempus. Donec fringilla non felis a vehicula. Nulla nec luctus ante, eu tempus dolor. Nulla ipsum est, ultricies id lobortis non, malesuada vel diam. Maecenas viverra vestibulum justo sed interdum.\r\n\r\nNunc libero augue, sodales ac porttitor sit amet, cursus et mi. Aenean pulvinar gravida egestas. Mauris auctor neque non dui lacinia bibendum. Phasellus a lectus mollis, lacinia dolor non, tincidunt mi. Duis purus quam, elementum nec consectetur euismod, ornare et odio. Praesent dignissim velit accumsan tortor ullamcorper vestibulum. Duis urna odio, luctus vel ligula sed, dapibus iaculis augue. Praesent finibus dui nulla, eu congue libero volutpat in. Praesent ut mi at nibh sollicitudin gravida. Vestibulum tristique felis id justo sodales dapibus. Morbi sit amet est mattis, mattis enim a, eleifend metus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam placerat tincidunt neque sit amet accumsan. Morbi a nisl tortor.\r\n\r\nAliquam quis turpis est. Morbi libero orci, ullamcorper in pellentesque ac, efficitur nec sapien. In vitae volutpat sapien. Integer sollicitudin ut orci id euismod. Suspendisse lacus lacus, varius quis nisi sed, molestie vehicula nisl. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aliquam nibh enim, lacinia nec convallis vel, ornare a elit. Sed placerat accumsan posuere. Maecenas quis lorem ac enim tempor convallis. Cras at interdum enim, in vestibulum mauris. Vestibulum nec dui porttitor, vestibulum augue ac, interdum turpis. Ut maximus vitae tortor a vestibulum. Morbi in eros est.\r\n\r\nVivamus tristique congue libero vel tincidunt. Duis tortor nisl, ornare et quam sit amet, blandit varius ipsum. Nullam placerat venenatis nibh ultricies porta. Cras at finibus metus. Maecenas nec nunc imperdiet, scelerisque leo sed, porta sapien. Fusce in dui quam. Duis tempus eget eros eu faucibus. Morbi dapibus enim eu dolor laoreet tempus. Morbi ullamcorper, velit quis congue ultricies, nunc turpis hendrerit lectus, in sollicitudin nibh ante quis elit.\r\n\r\nCras mattis ex finibus, pharetra lacus ut, tempor mauris. Aenean enim dolor, ullamcorper sed elementum at, porttitor lacinia erat. Aliquam erat volutpat. Praesent facilisis auctor metus, et molestie tellus suscipit id. Phasellus ultrices neque varius nunc elementum fringilla. Vivamus lobortis ipsum a libero ultrices, vitae tincidunt urna gravida. Sed condimentum orci at sagittis feugiat. Nunc ullamcorper eu ipsum eu facilisis. Sed volutpat, lacus et maximus finibus, lacus odio mollis lectus, sed cursus mi lorem eu nibh.', 'Paella', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2019-08-20 15:01:32', '2019-08-20 13:01:32', '', 58, 'http://localhost/oclock/Teach/WP-Support-oCooking/58-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2019-08-20 15:02:38', '2019-08-20 13:02:38', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In tempor condimentum velit eget ornare. Quisque dignissim bibendum mauris, nec porttitor augue luctus ac. Duis eget enim commodo massa egestas placerat. Cras in tortor hendrerit ante rhoncus tempus. Morbi sagittis pulvinar pretium. Maecenas consectetur tellus diam, non lacinia dui vehicula in. Nam egestas eget odio tempor ultricies. Sed at est malesuada, rutrum sapien in, dictum urna. Suspendisse volutpat vitae magna a mollis. Quisque quis tincidunt diam. Donec vulputate egestas tincidunt. Sed pretium a ex ut tempus. Donec fringilla non felis a vehicula. Nulla nec luctus ante, eu tempus dolor. Nulla ipsum est, ultricies id lobortis non, malesuada vel diam. Maecenas viverra vestibulum justo sed interdum.\r\n\r\nNunc libero augue, sodales ac porttitor sit amet, cursus et mi. Aenean pulvinar gravida egestas. Mauris auctor neque non dui lacinia bibendum. Phasellus a lectus mollis, lacinia dolor non, tincidunt mi. Duis purus quam, elementum nec consectetur euismod, ornare et odio. Praesent dignissim velit accumsan tortor ullamcorper vestibulum. Duis urna odio, luctus vel ligula sed, dapibus iaculis augue. Praesent finibus dui nulla, eu congue libero volutpat in. Praesent ut mi at nibh sollicitudin gravida. Vestibulum tristique felis id justo sodales dapibus. Morbi sit amet est mattis, mattis enim a, eleifend metus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam placerat tincidunt neque sit amet accumsan. Morbi a nisl tortor.\r\n\r\nAliquam quis turpis est. Morbi libero orci, ullamcorper in pellentesque ac, efficitur nec sapien. In vitae volutpat sapien. Integer sollicitudin ut orci id euismod. Suspendisse lacus lacus, varius quis nisi sed, molestie vehicula nisl. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aliquam nibh enim, lacinia nec convallis vel, ornare a elit. Sed placerat accumsan posuere. Maecenas quis lorem ac enim tempor convallis. Cras at interdum enim, in vestibulum mauris. Vestibulum nec dui porttitor, vestibulum augue ac, interdum turpis. Ut maximus vitae tortor a vestibulum. Morbi in eros est.\r\n\r\nVivamus tristique congue libero vel tincidunt. Duis tortor nisl, ornare et quam sit amet, blandit varius ipsum. Nullam placerat venenatis nibh ultricies porta. Cras at finibus metus. Maecenas nec nunc imperdiet, scelerisque leo sed, porta sapien. Fusce in dui quam. Duis tempus eget eros eu faucibus. Morbi dapibus enim eu dolor laoreet tempus. Morbi ullamcorper, velit quis congue ultricies, nunc turpis hendrerit lectus, in sollicitudin nibh ante quis elit.\r\n\r\nCras mattis ex finibus, pharetra lacus ut, tempor mauris. Aenean enim dolor, ullamcorper sed elementum at, porttitor lacinia erat. Aliquam erat volutpat. Praesent facilisis auctor metus, et molestie tellus suscipit id. Phasellus ultrices neque varius nunc elementum fringilla. Vivamus lobortis ipsum a libero ultrices, vitae tincidunt urna gravida. Sed condimentum orci at sagittis feugiat. Nunc ullamcorper eu ipsum eu facilisis. Sed volutpat, lacus et maximus finibus, lacus odio mollis lectus, sed cursus mi lorem eu nibh.', 'Pain-Perdu (mais pas pour tout le monde)', '', 'publish', 'closed', 'closed', '', 'pain-perdu-mais-pas-pour-tout-le-monde', '', '', '2019-08-20 15:02:52', '2019-08-20 13:02:52', '', 0, 'http://localhost/oclock/Teach/WP-Support-oCooking/?post_type=recipe&#038;p=60', 0, 'recipe', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(61, 1, '2019-08-20 15:02:38', '2019-08-20 13:02:38', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In tempor condimentum velit eget ornare. Quisque dignissim bibendum mauris, nec porttitor augue luctus ac. Duis eget enim commodo massa egestas placerat. Cras in tortor hendrerit ante rhoncus tempus. Morbi sagittis pulvinar pretium. Maecenas consectetur tellus diam, non lacinia dui vehicula in. Nam egestas eget odio tempor ultricies. Sed at est malesuada, rutrum sapien in, dictum urna. Suspendisse volutpat vitae magna a mollis. Quisque quis tincidunt diam. Donec vulputate egestas tincidunt. Sed pretium a ex ut tempus. Donec fringilla non felis a vehicula. Nulla nec luctus ante, eu tempus dolor. Nulla ipsum est, ultricies id lobortis non, malesuada vel diam. Maecenas viverra vestibulum justo sed interdum.\r\n\r\nNunc libero augue, sodales ac porttitor sit amet, cursus et mi. Aenean pulvinar gravida egestas. Mauris auctor neque non dui lacinia bibendum. Phasellus a lectus mollis, lacinia dolor non, tincidunt mi. Duis purus quam, elementum nec consectetur euismod, ornare et odio. Praesent dignissim velit accumsan tortor ullamcorper vestibulum. Duis urna odio, luctus vel ligula sed, dapibus iaculis augue. Praesent finibus dui nulla, eu congue libero volutpat in. Praesent ut mi at nibh sollicitudin gravida. Vestibulum tristique felis id justo sodales dapibus. Morbi sit amet est mattis, mattis enim a, eleifend metus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam placerat tincidunt neque sit amet accumsan. Morbi a nisl tortor.\r\n\r\nAliquam quis turpis est. Morbi libero orci, ullamcorper in pellentesque ac, efficitur nec sapien. In vitae volutpat sapien. Integer sollicitudin ut orci id euismod. Suspendisse lacus lacus, varius quis nisi sed, molestie vehicula nisl. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aliquam nibh enim, lacinia nec convallis vel, ornare a elit. Sed placerat accumsan posuere. Maecenas quis lorem ac enim tempor convallis. Cras at interdum enim, in vestibulum mauris. Vestibulum nec dui porttitor, vestibulum augue ac, interdum turpis. Ut maximus vitae tortor a vestibulum. Morbi in eros est.\r\n\r\nVivamus tristique congue libero vel tincidunt. Duis tortor nisl, ornare et quam sit amet, blandit varius ipsum. Nullam placerat venenatis nibh ultricies porta. Cras at finibus metus. Maecenas nec nunc imperdiet, scelerisque leo sed, porta sapien. Fusce in dui quam. Duis tempus eget eros eu faucibus. Morbi dapibus enim eu dolor laoreet tempus. Morbi ullamcorper, velit quis congue ultricies, nunc turpis hendrerit lectus, in sollicitudin nibh ante quis elit.\r\n\r\nCras mattis ex finibus, pharetra lacus ut, tempor mauris. Aenean enim dolor, ullamcorper sed elementum at, porttitor lacinia erat. Aliquam erat volutpat. Praesent facilisis auctor metus, et molestie tellus suscipit id. Phasellus ultrices neque varius nunc elementum fringilla. Vivamus lobortis ipsum a libero ultrices, vitae tincidunt urna gravida. Sed condimentum orci at sagittis feugiat. Nunc ullamcorper eu ipsum eu facilisis. Sed volutpat, lacus et maximus finibus, lacus odio mollis lectus, sed cursus mi lorem eu nibh.', 'Pain-Perdu (mais pas pour tout le monde)', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2019-08-20 15:02:38', '2019-08-20 13:02:38', '', 60, 'http://localhost/oclock/Teach/WP-Support-oCooking/60-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2019-08-20 15:04:17', '2019-08-20 13:04:17', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In tempor condimentum velit eget ornare. Quisque dignissim bibendum mauris, nec porttitor augue luctus ac. Duis eget enim commodo massa egestas placerat. Cras in tortor hendrerit ante rhoncus tempus. Morbi sagittis pulvinar pretium. Maecenas consectetur tellus diam, non lacinia dui vehicula in. Nam egestas eget odio tempor ultricies. Sed at est malesuada, rutrum sapien in, dictum urna. Suspendisse volutpat vitae magna a mollis. Quisque quis tincidunt diam. Donec vulputate egestas tincidunt. Sed pretium a ex ut tempus. Donec fringilla non felis a vehicula. Nulla nec luctus ante, eu tempus dolor. Nulla ipsum est, ultricies id lobortis non, malesuada vel diam. Maecenas viverra vestibulum justo sed interdum.\r\n\r\nNunc libero augue, sodales ac porttitor sit amet, cursus et mi. Aenean pulvinar gravida egestas. Mauris auctor neque non dui lacinia bibendum. Phasellus a lectus mollis, lacinia dolor non, tincidunt mi. Duis purus quam, elementum nec consectetur euismod, ornare et odio. Praesent dignissim velit accumsan tortor ullamcorper vestibulum. Duis urna odio, luctus vel ligula sed, dapibus iaculis augue. Praesent finibus dui nulla, eu congue libero volutpat in. Praesent ut mi at nibh sollicitudin gravida. Vestibulum tristique felis id justo sodales dapibus. Morbi sit amet est mattis, mattis enim a, eleifend metus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam placerat tincidunt neque sit amet accumsan. Morbi a nisl tortor.\r\n\r\nAliquam quis turpis est. Morbi libero orci, ullamcorper in pellentesque ac, efficitur nec sapien. In vitae volutpat sapien. Integer sollicitudin ut orci id euismod. Suspendisse lacus lacus, varius quis nisi sed, molestie vehicula nisl. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aliquam nibh enim, lacinia nec convallis vel, ornare a elit. Sed placerat accumsan posuere. Maecenas quis lorem ac enim tempor convallis. Cras at interdum enim, in vestibulum mauris. Vestibulum nec dui porttitor, vestibulum augue ac, interdum turpis. Ut maximus vitae tortor a vestibulum. Morbi in eros est.\r\n\r\nVivamus tristique congue libero vel tincidunt. Duis tortor nisl, ornare et quam sit amet, blandit varius ipsum. Nullam placerat venenatis nibh ultricies porta. Cras at finibus metus. Maecenas nec nunc imperdiet, scelerisque leo sed, porta sapien. Fusce in dui quam. Duis tempus eget eros eu faucibus. Morbi dapibus enim eu dolor laoreet tempus. Morbi ullamcorper, velit quis congue ultricies, nunc turpis hendrerit lectus, in sollicitudin nibh ante quis elit.\r\n\r\nCras mattis ex finibus, pharetra lacus ut, tempor mauris. Aenean enim dolor, ullamcorper sed elementum at, porttitor lacinia erat. Aliquam erat volutpat. Praesent facilisis auctor metus, et molestie tellus suscipit id. Phasellus ultrices neque varius nunc elementum fringilla. Vivamus lobortis ipsum a libero ultrices, vitae tincidunt urna gravida. Sed condimentum orci at sagittis feugiat. Nunc ullamcorper eu ipsum eu facilisis. Sed volutpat, lacus et maximus finibus, lacus odio mollis lectus, sed cursus mi lorem eu nibh.', 'Pavé de boeuf à la moutarde', '', 'publish', 'closed', 'closed', '', 'pave-de-boeuf-a-la-moutarde', '', '', '2019-08-20 15:04:17', '2019-08-20 13:04:17', '', 0, 'http://localhost/oclock/Teach/WP-Support-oCooking/?post_type=recipe&#038;p=62', 0, 'recipe', '', 0),
(63, 1, '2019-08-20 15:04:15', '2019-08-20 13:04:15', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In tempor condimentum velit eget ornare. Quisque dignissim bibendum mauris, nec porttitor augue luctus ac. Duis eget enim commodo massa egestas placerat. Cras in tortor hendrerit ante rhoncus tempus. Morbi sagittis pulvinar pretium. Maecenas consectetur tellus diam, non lacinia dui vehicula in. Nam egestas eget odio tempor ultricies. Sed at est malesuada, rutrum sapien in, dictum urna. Suspendisse volutpat vitae magna a mollis. Quisque quis tincidunt diam. Donec vulputate egestas tincidunt. Sed pretium a ex ut tempus. Donec fringilla non felis a vehicula. Nulla nec luctus ante, eu tempus dolor. Nulla ipsum est, ultricies id lobortis non, malesuada vel diam. Maecenas viverra vestibulum justo sed interdum.\r\n\r\nNunc libero augue, sodales ac porttitor sit amet, cursus et mi. Aenean pulvinar gravida egestas. Mauris auctor neque non dui lacinia bibendum. Phasellus a lectus mollis, lacinia dolor non, tincidunt mi. Duis purus quam, elementum nec consectetur euismod, ornare et odio. Praesent dignissim velit accumsan tortor ullamcorper vestibulum. Duis urna odio, luctus vel ligula sed, dapibus iaculis augue. Praesent finibus dui nulla, eu congue libero volutpat in. Praesent ut mi at nibh sollicitudin gravida. Vestibulum tristique felis id justo sodales dapibus. Morbi sit amet est mattis, mattis enim a, eleifend metus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam placerat tincidunt neque sit amet accumsan. Morbi a nisl tortor.\r\n\r\nAliquam quis turpis est. Morbi libero orci, ullamcorper in pellentesque ac, efficitur nec sapien. In vitae volutpat sapien. Integer sollicitudin ut orci id euismod. Suspendisse lacus lacus, varius quis nisi sed, molestie vehicula nisl. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aliquam nibh enim, lacinia nec convallis vel, ornare a elit. Sed placerat accumsan posuere. Maecenas quis lorem ac enim tempor convallis. Cras at interdum enim, in vestibulum mauris. Vestibulum nec dui porttitor, vestibulum augue ac, interdum turpis. Ut maximus vitae tortor a vestibulum. Morbi in eros est.\r\n\r\nVivamus tristique congue libero vel tincidunt. Duis tortor nisl, ornare et quam sit amet, blandit varius ipsum. Nullam placerat venenatis nibh ultricies porta. Cras at finibus metus. Maecenas nec nunc imperdiet, scelerisque leo sed, porta sapien. Fusce in dui quam. Duis tempus eget eros eu faucibus. Morbi dapibus enim eu dolor laoreet tempus. Morbi ullamcorper, velit quis congue ultricies, nunc turpis hendrerit lectus, in sollicitudin nibh ante quis elit.\r\n\r\nCras mattis ex finibus, pharetra lacus ut, tempor mauris. Aenean enim dolor, ullamcorper sed elementum at, porttitor lacinia erat. Aliquam erat volutpat. Praesent facilisis auctor metus, et molestie tellus suscipit id. Phasellus ultrices neque varius nunc elementum fringilla. Vivamus lobortis ipsum a libero ultrices, vitae tincidunt urna gravida. Sed condimentum orci at sagittis feugiat. Nunc ullamcorper eu ipsum eu facilisis. Sed volutpat, lacus et maximus finibus, lacus odio mollis lectus, sed cursus mi lorem eu nibh.', 'Pavé de boeuf à la moutarde', '', 'inherit', 'closed', 'closed', '', '62-revision-v1', '', '', '2019-08-20 15:04:15', '2019-08-20 13:04:15', '', 62, 'http://localhost/oclock/Teach/WP-Support-oCooking/62-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2019-08-20 15:04:17', '2019-08-20 13:04:17', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In tempor condimentum velit eget ornare. Quisque dignissim bibendum mauris, nec porttitor augue luctus ac. Duis eget enim commodo massa egestas placerat. Cras in tortor hendrerit ante rhoncus tempus. Morbi sagittis pulvinar pretium. Maecenas consectetur tellus diam, non lacinia dui vehicula in. Nam egestas eget odio tempor ultricies. Sed at est malesuada, rutrum sapien in, dictum urna. Suspendisse volutpat vitae magna a mollis. Quisque quis tincidunt diam. Donec vulputate egestas tincidunt. Sed pretium a ex ut tempus. Donec fringilla non felis a vehicula. Nulla nec luctus ante, eu tempus dolor. Nulla ipsum est, ultricies id lobortis non, malesuada vel diam. Maecenas viverra vestibulum justo sed interdum.\r\n\r\nNunc libero augue, sodales ac porttitor sit amet, cursus et mi. Aenean pulvinar gravida egestas. Mauris auctor neque non dui lacinia bibendum. Phasellus a lectus mollis, lacinia dolor non, tincidunt mi. Duis purus quam, elementum nec consectetur euismod, ornare et odio. Praesent dignissim velit accumsan tortor ullamcorper vestibulum. Duis urna odio, luctus vel ligula sed, dapibus iaculis augue. Praesent finibus dui nulla, eu congue libero volutpat in. Praesent ut mi at nibh sollicitudin gravida. Vestibulum tristique felis id justo sodales dapibus. Morbi sit amet est mattis, mattis enim a, eleifend metus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam placerat tincidunt neque sit amet accumsan. Morbi a nisl tortor.\r\n\r\nAliquam quis turpis est. Morbi libero orci, ullamcorper in pellentesque ac, efficitur nec sapien. In vitae volutpat sapien. Integer sollicitudin ut orci id euismod. Suspendisse lacus lacus, varius quis nisi sed, molestie vehicula nisl. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aliquam nibh enim, lacinia nec convallis vel, ornare a elit. Sed placerat accumsan posuere. Maecenas quis lorem ac enim tempor convallis. Cras at interdum enim, in vestibulum mauris. Vestibulum nec dui porttitor, vestibulum augue ac, interdum turpis. Ut maximus vitae tortor a vestibulum. Morbi in eros est.\r\n\r\nVivamus tristique congue libero vel tincidunt. Duis tortor nisl, ornare et quam sit amet, blandit varius ipsum. Nullam placerat venenatis nibh ultricies porta. Cras at finibus metus. Maecenas nec nunc imperdiet, scelerisque leo sed, porta sapien. Fusce in dui quam. Duis tempus eget eros eu faucibus. Morbi dapibus enim eu dolor laoreet tempus. Morbi ullamcorper, velit quis congue ultricies, nunc turpis hendrerit lectus, in sollicitudin nibh ante quis elit.\r\n\r\nCras mattis ex finibus, pharetra lacus ut, tempor mauris. Aenean enim dolor, ullamcorper sed elementum at, porttitor lacinia erat. Aliquam erat volutpat. Praesent facilisis auctor metus, et molestie tellus suscipit id. Phasellus ultrices neque varius nunc elementum fringilla. Vivamus lobortis ipsum a libero ultrices, vitae tincidunt urna gravida. Sed condimentum orci at sagittis feugiat. Nunc ullamcorper eu ipsum eu facilisis. Sed volutpat, lacus et maximus finibus, lacus odio mollis lectus, sed cursus mi lorem eu nibh.', 'Pavé de boeuf à la moutarde', '', 'inherit', 'closed', 'closed', '', '62-revision-v1', '', '', '2019-08-20 15:04:17', '2019-08-20 13:04:17', '', 62, 'http://localhost/oclock/Teach/WP-Support-oCooking/62-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2019-08-20 15:05:29', '2019-08-20 13:05:29', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In tempor condimentum velit eget ornare. Quisque dignissim bibendum mauris, nec porttitor augue luctus ac. Duis eget enim commodo massa egestas placerat. Cras in tortor hendrerit ante rhoncus tempus. Morbi sagittis pulvinar pretium. Maecenas consectetur tellus diam, non lacinia dui vehicula in. Nam egestas eget odio tempor ultricies. Sed at est malesuada, rutrum sapien in, dictum urna. Suspendisse volutpat vitae magna a mollis. Quisque quis tincidunt diam. Donec vulputate egestas tincidunt. Sed pretium a ex ut tempus. Donec fringilla non felis a vehicula. Nulla nec luctus ante, eu tempus dolor. Nulla ipsum est, ultricies id lobortis non, malesuada vel diam. Maecenas viverra vestibulum justo sed interdum.\r\n\r\nNunc libero augue, sodales ac porttitor sit amet, cursus et mi. Aenean pulvinar gravida egestas. Mauris auctor neque non dui lacinia bibendum. Phasellus a lectus mollis, lacinia dolor non, tincidunt mi. Duis purus quam, elementum nec consectetur euismod, ornare et odio. Praesent dignissim velit accumsan tortor ullamcorper vestibulum. Duis urna odio, luctus vel ligula sed, dapibus iaculis augue. Praesent finibus dui nulla, eu congue libero volutpat in. Praesent ut mi at nibh sollicitudin gravida. Vestibulum tristique felis id justo sodales dapibus. Morbi sit amet est mattis, mattis enim a, eleifend metus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam placerat tincidunt neque sit amet accumsan. Morbi a nisl tortor.\r\n\r\nAliquam quis turpis est. Morbi libero orci, ullamcorper in pellentesque ac, efficitur nec sapien. In vitae volutpat sapien. Integer sollicitudin ut orci id euismod. Suspendisse lacus lacus, varius quis nisi sed, molestie vehicula nisl. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aliquam nibh enim, lacinia nec convallis vel, ornare a elit. Sed placerat accumsan posuere. Maecenas quis lorem ac enim tempor convallis. Cras at interdum enim, in vestibulum mauris. Vestibulum nec dui porttitor, vestibulum augue ac, interdum turpis. Ut maximus vitae tortor a vestibulum. Morbi in eros est.\r\n\r\nVivamus tristique congue libero vel tincidunt. Duis tortor nisl, ornare et quam sit amet, blandit varius ipsum. Nullam placerat venenatis nibh ultricies porta. Cras at finibus metus. Maecenas nec nunc imperdiet, scelerisque leo sed, porta sapien. Fusce in dui quam. Duis tempus eget eros eu faucibus. Morbi dapibus enim eu dolor laoreet tempus. Morbi ullamcorper, velit quis congue ultricies, nunc turpis hendrerit lectus, in sollicitudin nibh ante quis elit.\r\n\r\nCras mattis ex finibus, pharetra lacus ut, tempor mauris. Aenean enim dolor, ullamcorper sed elementum at, porttitor lacinia erat. Aliquam erat volutpat. Praesent facilisis auctor metus, et molestie tellus suscipit id. Phasellus ultrices neque varius nunc elementum fringilla. Vivamus lobortis ipsum a libero ultrices, vitae tincidunt urna gravida. Sed condimentum orci at sagittis feugiat. Nunc ullamcorper eu ipsum eu facilisis. Sed volutpat, lacus et maximus finibus, lacus odio mollis lectus, sed cursus mi lorem eu nibh.', 'Farfales au pesto', '', 'publish', 'closed', 'closed', '', 'farfales-au-pesto', '', '', '2019-08-20 15:09:34', '2019-08-20 13:09:34', '', 0, 'http://localhost/oclock/Teach/WP-Support-oCooking/?post_type=recipe&#038;p=65', 0, 'recipe', '', 0),
(66, 1, '2019-08-20 15:05:29', '2019-08-20 13:05:29', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In tempor condimentum velit eget ornare. Quisque dignissim bibendum mauris, nec porttitor augue luctus ac. Duis eget enim commodo massa egestas placerat. Cras in tortor hendrerit ante rhoncus tempus. Morbi sagittis pulvinar pretium. Maecenas consectetur tellus diam, non lacinia dui vehicula in. Nam egestas eget odio tempor ultricies. Sed at est malesuada, rutrum sapien in, dictum urna. Suspendisse volutpat vitae magna a mollis. Quisque quis tincidunt diam. Donec vulputate egestas tincidunt. Sed pretium a ex ut tempus. Donec fringilla non felis a vehicula. Nulla nec luctus ante, eu tempus dolor. Nulla ipsum est, ultricies id lobortis non, malesuada vel diam. Maecenas viverra vestibulum justo sed interdum.\r\n\r\nNunc libero augue, sodales ac porttitor sit amet, cursus et mi. Aenean pulvinar gravida egestas. Mauris auctor neque non dui lacinia bibendum. Phasellus a lectus mollis, lacinia dolor non, tincidunt mi. Duis purus quam, elementum nec consectetur euismod, ornare et odio. Praesent dignissim velit accumsan tortor ullamcorper vestibulum. Duis urna odio, luctus vel ligula sed, dapibus iaculis augue. Praesent finibus dui nulla, eu congue libero volutpat in. Praesent ut mi at nibh sollicitudin gravida. Vestibulum tristique felis id justo sodales dapibus. Morbi sit amet est mattis, mattis enim a, eleifend metus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam placerat tincidunt neque sit amet accumsan. Morbi a nisl tortor.\r\n\r\nAliquam quis turpis est. Morbi libero orci, ullamcorper in pellentesque ac, efficitur nec sapien. In vitae volutpat sapien. Integer sollicitudin ut orci id euismod. Suspendisse lacus lacus, varius quis nisi sed, molestie vehicula nisl. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aliquam nibh enim, lacinia nec convallis vel, ornare a elit. Sed placerat accumsan posuere. Maecenas quis lorem ac enim tempor convallis. Cras at interdum enim, in vestibulum mauris. Vestibulum nec dui porttitor, vestibulum augue ac, interdum turpis. Ut maximus vitae tortor a vestibulum. Morbi in eros est.\r\n\r\nVivamus tristique congue libero vel tincidunt. Duis tortor nisl, ornare et quam sit amet, blandit varius ipsum. Nullam placerat venenatis nibh ultricies porta. Cras at finibus metus. Maecenas nec nunc imperdiet, scelerisque leo sed, porta sapien. Fusce in dui quam. Duis tempus eget eros eu faucibus. Morbi dapibus enim eu dolor laoreet tempus. Morbi ullamcorper, velit quis congue ultricies, nunc turpis hendrerit lectus, in sollicitudin nibh ante quis elit.\r\n\r\nCras mattis ex finibus, pharetra lacus ut, tempor mauris. Aenean enim dolor, ullamcorper sed elementum at, porttitor lacinia erat. Aliquam erat volutpat. Praesent facilisis auctor metus, et molestie tellus suscipit id. Phasellus ultrices neque varius nunc elementum fringilla. Vivamus lobortis ipsum a libero ultrices, vitae tincidunt urna gravida. Sed condimentum orci at sagittis feugiat. Nunc ullamcorper eu ipsum eu facilisis. Sed volutpat, lacus et maximus finibus, lacus odio mollis lectus, sed cursus mi lorem eu nibh.', 'Farfales au pesto', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2019-08-20 15:05:29', '2019-08-20 13:05:29', '', 65, 'http://localhost/oclock/Teach/WP-Support-oCooking/65-revision-v1/', 0, 'revision', '', 0),
(67, 1, '2019-08-20 15:07:02', '2019-08-20 13:07:02', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In tempor condimentum velit eget ornare. Quisque dignissim bibendum mauris, nec porttitor augue luctus ac. Duis eget enim commodo massa egestas placerat. Cras in tortor hendrerit ante rhoncus tempus. Morbi sagittis pulvinar pretium. Maecenas consectetur tellus diam, non lacinia dui vehicula in. Nam egestas eget odio tempor ultricies. Sed at est malesuada, rutrum sapien in, dictum urna. Suspendisse volutpat vitae magna a mollis. Quisque quis tincidunt diam. Donec vulputate egestas tincidunt. Sed pretium a ex ut tempus. Donec fringilla non felis a vehicula. Nulla nec luctus ante, eu tempus dolor. Nulla ipsum est, ultricies id lobortis non, malesuada vel diam. Maecenas viverra vestibulum justo sed interdum.\r\n\r\nNunc libero augue, sodales ac porttitor sit amet, cursus et mi. Aenean pulvinar gravida egestas. Mauris auctor neque non dui lacinia bibendum. Phasellus a lectus mollis, lacinia dolor non, tincidunt mi. Duis purus quam, elementum nec consectetur euismod, ornare et odio. Praesent dignissim velit accumsan tortor ullamcorper vestibulum. Duis urna odio, luctus vel ligula sed, dapibus iaculis augue. Praesent finibus dui nulla, eu congue libero volutpat in. Praesent ut mi at nibh sollicitudin gravida. Vestibulum tristique felis id justo sodales dapibus. Morbi sit amet est mattis, mattis enim a, eleifend metus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam placerat tincidunt neque sit amet accumsan. Morbi a nisl tortor.\r\n\r\nAliquam quis turpis est. Morbi libero orci, ullamcorper in pellentesque ac, efficitur nec sapien. In vitae volutpat sapien. Integer sollicitudin ut orci id euismod. Suspendisse lacus lacus, varius quis nisi sed, molestie vehicula nisl. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aliquam nibh enim, lacinia nec convallis vel, ornare a elit. Sed placerat accumsan posuere. Maecenas quis lorem ac enim tempor convallis. Cras at interdum enim, in vestibulum mauris. Vestibulum nec dui porttitor, vestibulum augue ac, interdum turpis. Ut maximus vitae tortor a vestibulum. Morbi in eros est.\r\n\r\nVivamus tristique congue libero vel tincidunt. Duis tortor nisl, ornare et quam sit amet, blandit varius ipsum. Nullam placerat venenatis nibh ultricies porta. Cras at finibus metus. Maecenas nec nunc imperdiet, scelerisque leo sed, porta sapien. Fusce in dui quam. Duis tempus eget eros eu faucibus. Morbi dapibus enim eu dolor laoreet tempus. Morbi ullamcorper, velit quis congue ultricies, nunc turpis hendrerit lectus, in sollicitudin nibh ante quis elit.\r\n\r\nCras mattis ex finibus, pharetra lacus ut, tempor mauris. Aenean enim dolor, ullamcorper sed elementum at, porttitor lacinia erat. Aliquam erat volutpat. Praesent facilisis auctor metus, et molestie tellus suscipit id. Phasellus ultrices neque varius nunc elementum fringilla. Vivamus lobortis ipsum a libero ultrices, vitae tincidunt urna gravida. Sed condimentum orci at sagittis feugiat. Nunc ullamcorper eu ipsum eu facilisis. Sed volutpat, lacus et maximus finibus, lacus odio mollis lectus, sed cursus mi lorem eu nibh.', 'Pizza', '', 'publish', 'closed', 'closed', '', 'pizza', '', '', '2019-08-20 15:07:11', '2019-08-20 13:07:11', '', 0, 'http://localhost/oclock/Teach/WP-Support-oCooking/?post_type=recipe&#038;p=67', 0, 'recipe', '', 0),
(68, 1, '2019-08-20 15:07:02', '2019-08-20 13:07:02', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In tempor condimentum velit eget ornare. Quisque dignissim bibendum mauris, nec porttitor augue luctus ac. Duis eget enim commodo massa egestas placerat. Cras in tortor hendrerit ante rhoncus tempus. Morbi sagittis pulvinar pretium. Maecenas consectetur tellus diam, non lacinia dui vehicula in. Nam egestas eget odio tempor ultricies. Sed at est malesuada, rutrum sapien in, dictum urna. Suspendisse volutpat vitae magna a mollis. Quisque quis tincidunt diam. Donec vulputate egestas tincidunt. Sed pretium a ex ut tempus. Donec fringilla non felis a vehicula. Nulla nec luctus ante, eu tempus dolor. Nulla ipsum est, ultricies id lobortis non, malesuada vel diam. Maecenas viverra vestibulum justo sed interdum.\r\n\r\nNunc libero augue, sodales ac porttitor sit amet, cursus et mi. Aenean pulvinar gravida egestas. Mauris auctor neque non dui lacinia bibendum. Phasellus a lectus mollis, lacinia dolor non, tincidunt mi. Duis purus quam, elementum nec consectetur euismod, ornare et odio. Praesent dignissim velit accumsan tortor ullamcorper vestibulum. Duis urna odio, luctus vel ligula sed, dapibus iaculis augue. Praesent finibus dui nulla, eu congue libero volutpat in. Praesent ut mi at nibh sollicitudin gravida. Vestibulum tristique felis id justo sodales dapibus. Morbi sit amet est mattis, mattis enim a, eleifend metus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam placerat tincidunt neque sit amet accumsan. Morbi a nisl tortor.\r\n\r\nAliquam quis turpis est. Morbi libero orci, ullamcorper in pellentesque ac, efficitur nec sapien. In vitae volutpat sapien. Integer sollicitudin ut orci id euismod. Suspendisse lacus lacus, varius quis nisi sed, molestie vehicula nisl. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aliquam nibh enim, lacinia nec convallis vel, ornare a elit. Sed placerat accumsan posuere. Maecenas quis lorem ac enim tempor convallis. Cras at interdum enim, in vestibulum mauris. Vestibulum nec dui porttitor, vestibulum augue ac, interdum turpis. Ut maximus vitae tortor a vestibulum. Morbi in eros est.\r\n\r\nVivamus tristique congue libero vel tincidunt. Duis tortor nisl, ornare et quam sit amet, blandit varius ipsum. Nullam placerat venenatis nibh ultricies porta. Cras at finibus metus. Maecenas nec nunc imperdiet, scelerisque leo sed, porta sapien. Fusce in dui quam. Duis tempus eget eros eu faucibus. Morbi dapibus enim eu dolor laoreet tempus. Morbi ullamcorper, velit quis congue ultricies, nunc turpis hendrerit lectus, in sollicitudin nibh ante quis elit.\r\n\r\nCras mattis ex finibus, pharetra lacus ut, tempor mauris. Aenean enim dolor, ullamcorper sed elementum at, porttitor lacinia erat. Aliquam erat volutpat. Praesent facilisis auctor metus, et molestie tellus suscipit id. Phasellus ultrices neque varius nunc elementum fringilla. Vivamus lobortis ipsum a libero ultrices, vitae tincidunt urna gravida. Sed condimentum orci at sagittis feugiat. Nunc ullamcorper eu ipsum eu facilisis. Sed volutpat, lacus et maximus finibus, lacus odio mollis lectus, sed cursus mi lorem eu nibh.', 'Pizza', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2019-08-20 15:07:02', '2019-08-20 13:07:02', '', 67, 'http://localhost/oclock/Teach/WP-Support-oCooking/67-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2019-08-20 15:08:51', '0000-00-00 00:00:00', 'A terminer....', 'Quiche chèvre champignons', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-08-20 15:08:51', '2019-08-20 13:08:51', '', 0, 'http://localhost/oclock/Teach/WP-Support-oCooking/?post_type=recipe&#038;p=69', 0, 'recipe', '', 0),
(70, 1, '2019-08-20 15:08:51', '2019-08-20 13:08:51', 'A terminer....', 'Quiche chèvre champignons', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2019-08-20 15:08:51', '2019-08-20 13:08:51', '', 69, 'http://localhost/oclock/Teach/WP-Support-oCooking/69-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2019-08-20 15:09:11', '2019-08-20 13:09:11', '<!-- wp:paragraph -->\n<p>Ceci est une page d’exemple. C’est différent d’un article de blog parce qu’elle restera au même endroit et apparaîtra dans la navigation de votre site (dans la plupart des thèmes). La plupart des gens commencent par une page « À propos » qui les présente aux visiteurs du site. Cela pourrait ressembler à quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Bonjour ! Je suis un mécanicien qui aspire à devenir acteur, et voici mon site. J’habite à Bordeaux, j’ai un super chien baptisé Russell, et j’aime la vodka-ananas (ainsi qu’être surpris par la pluie soudaine lors de longues balades sur la plage au coucher du soleil).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>... ou quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>En tant que nouvel·le utilisateur ou utilisatrice de WordPress, vous devriez vous rendre sur <a href=\"http://localhost/oclock/quantum/spe/WP-oCooking-christopheOclock/wp/wp-admin/\">votre tableau de bord</a> pour supprimer cette page et créer de nouvelles pages pour votre contenu. Amusez-vous bien !</p>\n<!-- /wp:paragraph -->', 'Page d’exemple', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-08-20 15:09:11', '2019-08-20 13:09:11', '', 2, 'http://localhost/oclock/Teach/WP-Support-oCooking/2-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2019-08-20 15:10:52', '2019-08-20 13:10:52', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In tempor condimentum velit eget ornare. Quisque dignissim bibendum mauris, nec porttitor augue luctus ac. Duis eget enim commodo massa egestas placerat. Cras in tortor hendrerit ante rhoncus tempus. Morbi sagittis pulvinar pretium. Maecenas consectetur tellus diam, non lacinia dui vehicula in. Nam egestas eget odio tempor ultricies. Sed at est malesuada, rutrum sapien in, dictum urna. Suspendisse volutpat vitae magna a mollis. Quisque quis tincidunt diam. Donec vulputate egestas tincidunt. Sed pretium a ex ut tempus. Donec fringilla non felis a vehicula. Nulla nec luctus ante, eu tempus dolor. Nulla ipsum est, ultricies id lobortis non, malesuada vel diam. Maecenas viverra vestibulum justo sed interdum.\r\n\r\nNunc libero augue, sodales ac porttitor sit amet, cursus et mi. Aenean pulvinar gravida egestas. Mauris auctor neque non dui lacinia bibendum. Phasellus a lectus mollis, lacinia dolor non, tincidunt mi. Duis purus quam, elementum nec consectetur euismod, ornare et odio. Praesent dignissim velit accumsan tortor ullamcorper vestibulum. Duis urna odio, luctus vel ligula sed, dapibus iaculis augue. Praesent finibus dui nulla, eu congue libero volutpat in. Praesent ut mi at nibh sollicitudin gravida. Vestibulum tristique felis id justo sodales dapibus. Morbi sit amet est mattis, mattis enim a, eleifend metus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam placerat tincidunt neque sit amet accumsan. Morbi a nisl tortor.\r\n\r\nAliquam quis turpis est. Morbi libero orci, ullamcorper in pellentesque ac, efficitur nec sapien. In vitae volutpat sapien. Integer sollicitudin ut orci id euismod. Suspendisse lacus lacus, varius quis nisi sed, molestie vehicula nisl. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aliquam nibh enim, lacinia nec convallis vel, ornare a elit. Sed placerat accumsan posuere. Maecenas quis lorem ac enim tempor convallis. Cras at interdum enim, in vestibulum mauris. Vestibulum nec dui porttitor, vestibulum augue ac, interdum turpis. Ut maximus vitae tortor a vestibulum. Morbi in eros est.\r\n\r\nVivamus tristique congue libero vel tincidunt. Duis tortor nisl, ornare et quam sit amet, blandit varius ipsum. Nullam placerat venenatis nibh ultricies porta. Cras at finibus metus. Maecenas nec nunc imperdiet, scelerisque leo sed, porta sapien. Fusce in dui quam. Duis tempus eget eros eu faucibus. Morbi dapibus enim eu dolor laoreet tempus. Morbi ullamcorper, velit quis congue ultricies, nunc turpis hendrerit lectus, in sollicitudin nibh ante quis elit.\r\n\r\nCras mattis ex finibus, pharetra lacus ut, tempor mauris. Aenean enim dolor, ullamcorper sed elementum at, porttitor lacinia erat. Aliquam erat volutpat. Praesent facilisis auctor metus, et molestie tellus suscipit id. Phasellus ultrices neque varius nunc elementum fringilla. Vivamus lobortis ipsum a libero ultrices, vitae tincidunt urna gravida. Sed condimentum orci at sagittis feugiat. Nunc ullamcorper eu ipsum eu facilisis. Sed volutpat, lacus et maximus finibus, lacus odio mollis lectus, sed cursus mi lorem eu nibh.', 'Speedwich', '', 'publish', 'closed', 'closed', '', 'speedwich', '', '', '2019-08-20 15:10:52', '2019-08-20 13:10:52', '', 0, 'http://localhost/oclock/Teach/WP-Support-oCooking/?post_type=recipe&#038;p=72', 0, 'recipe', '', 0),
(73, 1, '2019-08-20 15:10:52', '2019-08-20 13:10:52', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In tempor condimentum velit eget ornare. Quisque dignissim bibendum mauris, nec porttitor augue luctus ac. Duis eget enim commodo massa egestas placerat. Cras in tortor hendrerit ante rhoncus tempus. Morbi sagittis pulvinar pretium. Maecenas consectetur tellus diam, non lacinia dui vehicula in. Nam egestas eget odio tempor ultricies. Sed at est malesuada, rutrum sapien in, dictum urna. Suspendisse volutpat vitae magna a mollis. Quisque quis tincidunt diam. Donec vulputate egestas tincidunt. Sed pretium a ex ut tempus. Donec fringilla non felis a vehicula. Nulla nec luctus ante, eu tempus dolor. Nulla ipsum est, ultricies id lobortis non, malesuada vel diam. Maecenas viverra vestibulum justo sed interdum.\r\n\r\nNunc libero augue, sodales ac porttitor sit amet, cursus et mi. Aenean pulvinar gravida egestas. Mauris auctor neque non dui lacinia bibendum. Phasellus a lectus mollis, lacinia dolor non, tincidunt mi. Duis purus quam, elementum nec consectetur euismod, ornare et odio. Praesent dignissim velit accumsan tortor ullamcorper vestibulum. Duis urna odio, luctus vel ligula sed, dapibus iaculis augue. Praesent finibus dui nulla, eu congue libero volutpat in. Praesent ut mi at nibh sollicitudin gravida. Vestibulum tristique felis id justo sodales dapibus. Morbi sit amet est mattis, mattis enim a, eleifend metus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam placerat tincidunt neque sit amet accumsan. Morbi a nisl tortor.\r\n\r\nAliquam quis turpis est. Morbi libero orci, ullamcorper in pellentesque ac, efficitur nec sapien. In vitae volutpat sapien. Integer sollicitudin ut orci id euismod. Suspendisse lacus lacus, varius quis nisi sed, molestie vehicula nisl. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aliquam nibh enim, lacinia nec convallis vel, ornare a elit. Sed placerat accumsan posuere. Maecenas quis lorem ac enim tempor convallis. Cras at interdum enim, in vestibulum mauris. Vestibulum nec dui porttitor, vestibulum augue ac, interdum turpis. Ut maximus vitae tortor a vestibulum. Morbi in eros est.\r\n\r\nVivamus tristique congue libero vel tincidunt. Duis tortor nisl, ornare et quam sit amet, blandit varius ipsum. Nullam placerat venenatis nibh ultricies porta. Cras at finibus metus. Maecenas nec nunc imperdiet, scelerisque leo sed, porta sapien. Fusce in dui quam. Duis tempus eget eros eu faucibus. Morbi dapibus enim eu dolor laoreet tempus. Morbi ullamcorper, velit quis congue ultricies, nunc turpis hendrerit lectus, in sollicitudin nibh ante quis elit.\r\n\r\nCras mattis ex finibus, pharetra lacus ut, tempor mauris. Aenean enim dolor, ullamcorper sed elementum at, porttitor lacinia erat. Aliquam erat volutpat. Praesent facilisis auctor metus, et molestie tellus suscipit id. Phasellus ultrices neque varius nunc elementum fringilla. Vivamus lobortis ipsum a libero ultrices, vitae tincidunt urna gravida. Sed condimentum orci at sagittis feugiat. Nunc ullamcorper eu ipsum eu facilisis. Sed volutpat, lacus et maximus finibus, lacus odio mollis lectus, sed cursus mi lorem eu nibh.', 'Speedwich', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2019-08-20 15:10:52', '2019-08-20 13:10:52', '', 72, 'http://localhost/oclock/Teach/WP-Support-oCooking/72-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(2, 'Plats', 'plats', 0),
(3, 'Fast Food', 'fast-food', 0),
(4, 'Burgers', 'burgers', 0),
(5, 'Tacos', 'tacos', 0),
(6, 'Kebab', 'kebab', 0),
(7, 'chedar', 'chedar', 0),
(8, 'steack haché', 'steack-hache', 0),
(9, 'bacon', 'bacon', 0),
(10, 'salade', 'salade', 0),
(11, 'bun', 'bun', 0),
(12, 'Desserts', 'desserts', 0),
(13, 'Tartes', 'tartes', 0),
(14, 'Glaces', 'glaces', 0),
(15, 'pommes', 'pommes', 0),
(16, 'pâte sablée', 'pate-sablee', 0),
(17, 'sucre', 'sucre', 0),
(18, 'oeuf', 'oeuf', 0),
(19, 'Menu du header', 'menu-du-header', 0),
(20, 'Petit dej\'', 'petit-dej', 0),
(21, 'Viandes blanches', 'viandes-blanches', 0),
(22, 'Tartes', 'tartes-plats', 0),
(23, 'Menu lateral', 'menu-lateral', 0),
(24, 'Banane', 'banane', 0),
(25, 'Rhum', 'rhum', 0),
(26, 'Citron', 'citron', 0),
(27, 'Crumble', 'crumble', 0),
(28, 'framboises', 'framboises', 0),
(29, 'Farine', 'farine', 0),
(30, 'Gâteaux', 'gateaux', 0),
(31, 'Chocolat', 'chocolat', 0),
(32, 'Riz', 'riz', 0),
(33, 'crevettes', 'crevettes', 0),
(34, 'Pain', 'pain', 0),
(35, 'Viandes rouges', 'viandes-rouges', 0),
(36, 'Pièce de bœuf', 'piece-de-boeuf', 0),
(37, 'Moutarde', 'moutarde', 0),
(38, 'Pâtes', 'pates', 0),
(39, 'Farfales', 'farfales', 0),
(40, 'Pesto', 'pesto', 0),
(41, 'Pizza', 'pizza', 0),
(42, 'Pâte à pizza', 'pate-a-pizza', 0),
(43, 'Sauce tomate', 'sauce-tomate', 0),
(44, 'basilic', 'basilic', 0),
(45, 'Champignons frais', 'champignons-frais', 0),
(46, 'chèvre frais', 'chevre-frais', 0),
(47, 'Sandwich', 'sandwich', 0),
(48, 'Pain de mie', 'pain-de-mie', 0),
(49, 'jambon', 'jambon', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(19, 3, 0),
(19, 4, 0),
(19, 7, 0),
(19, 8, 0),
(19, 9, 0),
(19, 10, 0),
(19, 11, 0),
(19, 18, 0),
(26, 12, 0),
(26, 13, 0),
(26, 15, 0),
(26, 16, 0),
(26, 17, 0),
(26, 18, 0),
(27, 19, 0),
(29, 19, 0),
(33, 23, 0),
(34, 23, 0),
(35, 23, 0),
(36, 23, 0),
(37, 23, 0),
(42, 1, 0),
(52, 12, 0),
(52, 15, 0),
(52, 27, 0),
(52, 28, 0),
(54, 12, 0),
(54, 18, 0),
(54, 29, 0),
(56, 12, 0),
(56, 30, 0),
(56, 31, 0),
(58, 2, 0),
(58, 32, 0),
(58, 33, 0),
(60, 12, 0),
(60, 24, 0),
(60, 30, 0),
(60, 34, 0),
(62, 2, 0),
(62, 35, 0),
(62, 36, 0),
(62, 37, 0),
(65, 2, 0),
(65, 38, 0),
(65, 39, 0),
(65, 40, 0),
(67, 3, 0),
(67, 41, 0),
(67, 42, 0),
(67, 43, 0),
(67, 44, 0),
(69, 2, 0),
(69, 22, 0),
(69, 45, 0),
(69, 46, 0),
(72, 3, 0),
(72, 10, 0),
(72, 47, 0),
(72, 48, 0),
(72, 49, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(2, 2, 'type', '', 0, 3),
(3, 3, 'type', '', 0, 3),
(4, 4, 'type', '', 3, 1),
(5, 5, 'type', '', 3, 0),
(6, 6, 'type', '', 3, 0),
(7, 7, 'ingredient', '', 0, 1),
(8, 8, 'ingredient', '', 0, 1),
(9, 9, 'ingredient', '', 0, 1),
(10, 10, 'ingredient', '', 0, 2),
(11, 11, 'ingredient', '', 0, 1),
(12, 12, 'type', '', 0, 5),
(13, 13, 'type', '', 12, 1),
(14, 14, 'type', '', 12, 0),
(15, 15, 'ingredient', '', 0, 2),
(16, 16, 'ingredient', '', 0, 1),
(17, 17, 'ingredient', '', 0, 1),
(18, 18, 'ingredient', '', 0, 3),
(19, 19, 'nav_menu', '', 0, 2),
(20, 20, 'type', '', 0, 0),
(21, 21, 'type', '', 2, 0),
(22, 22, 'type', '', 2, 0),
(23, 23, 'nav_menu', '', 0, 5),
(24, 24, 'ingredient', '', 0, 1),
(25, 25, 'ingredient', '', 0, 0),
(26, 26, 'ingredient', '', 0, 0),
(27, 27, 'type', '', 12, 1),
(28, 28, 'ingredient', '', 0, 1),
(29, 29, 'ingredient', '', 0, 1),
(30, 30, 'type', '', 12, 2),
(31, 31, 'ingredient', '', 0, 1),
(32, 32, 'ingredient', '', 0, 1),
(33, 33, 'ingredient', '', 0, 1),
(34, 34, 'ingredient', '', 0, 1),
(35, 35, 'type', '', 2, 1),
(36, 36, 'ingredient', '', 0, 1),
(37, 37, 'ingredient', '', 0, 1),
(38, 38, 'type', '', 2, 1),
(39, 39, 'ingredient', '', 0, 1),
(40, 40, 'ingredient', '', 0, 1),
(41, 41, 'type', '', 3, 1),
(42, 42, 'ingredient', '', 0, 1),
(43, 43, 'ingredient', '', 0, 1),
(44, 44, 'ingredient', '', 0, 1),
(45, 45, 'ingredient', '', 0, 0),
(46, 46, 'ingredient', '', 0, 0),
(47, 47, 'type', '', 3, 1),
(48, 48, 'ingredient', '', 0, 1),
(49, 49, 'ingredient', '', 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Jean Bonbeurre'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:6:\"cuisto\";b:1;}'),
(13, 1, 'wp_user_level', '0'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(20, 1, 'wp_user-settings', 'libraryContent=browse'),
(21, 1, 'wp_user-settings-time', '1558081646'),
(22, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(23, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(24, 1, 'closedpostboxes_nav-menus', 'a:0:{}'),
(25, 1, 'nav_menu_recently_edited', '23'),
(26, 1, 'closedpostboxes_recipe', 'a:0:{}'),
(27, 1, 'metaboxhidden_recipe', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(44, 1, 'meta-box-order_dashboard', 'a:4:{s:6:\"normal\";s:68:\"ocooking_dashboard_widget_pub,dashboard_right_now,dashboard_activity\";s:4:\"side\";s:39:\"dashboard_quick_press,dashboard_primary\";s:7:\"column3\";s:0:\"\";s:7:\"column4\";s:0:\"\";}'),
(45, 1, 'session_tokens', 'a:2:{s:64:\"5e3b183ecf4b95eb35492890de400e3804fe11257a698dcfece44a407557b3a9\";a:4:{s:10:\"expiration\";i:1566467003;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:105:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36\";s:5:\"login\";i:1566294203;}s:64:\"9a3d9613d897dae3a981d2f9977e5e3f236459cacf4e1b1c728698853f7722b5\";a:4:{s:10:\"expiration\";i:1566479868;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:105:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36\";s:5:\"login\";i:1566307068;}}'),
(60, 4, 'nickname', 'ocooking'),
(61, 4, 'first_name', ''),
(62, 4, 'last_name', ''),
(63, 4, 'description', ''),
(64, 4, 'rich_editing', 'true'),
(65, 4, 'syntax_highlighting', 'true'),
(66, 4, 'comment_shortcuts', 'false'),
(67, 4, 'admin_color', 'fresh'),
(68, 4, 'use_ssl', '0'),
(69, 4, 'show_admin_bar_front', 'true'),
(70, 4, 'locale', ''),
(71, 4, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(72, 4, 'wp_user_level', '10'),
(73, 4, 'dismissed_wp_pointers', ''),
(75, 4, 'session_tokens', 'a:1:{s:64:\"1e8cbe47c305f043ded5959d25f02312aeb8aa8ffb41c8bed248c93139358352\";a:4:{s:10:\"expiration\";i:1566479803;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:105:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36\";s:5:\"login\";i:1566307003;}}');

-- --------------------------------------------------------

--
-- Structure de la table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'jean', '$P$BqDr4vUaEWhowfB2gezY5QU7dNXG5l/', 'jean-bonbeurre', 'jeanbonbeurre@oclock.local', '', '2019-05-16 09:15:14', '', 0, 'Jean Bonbeurre'),
(4, 'ocooking', '$P$BxZf0Lf0bDaZ2EJ1GprywT7abbKzRv1', 'ocooking', 'ocooking@oclock.local', '', '2019-08-20 13:14:48', '', 0, 'ocooking');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Index pour la table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Index pour la table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Index pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Index pour la table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Index pour la table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Index pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Index pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=571;
--
-- AUTO_INCREMENT pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=338;
--
-- AUTO_INCREMENT pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
--
-- AUTO_INCREMENT pour la table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
--
-- AUTO_INCREMENT pour la table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
