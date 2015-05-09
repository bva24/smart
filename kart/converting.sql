-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 09, 2015 at 12:16 PM
-- Server version: 5.5.37-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `converting`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_5f412f9a` (`group_id`),
  KEY `auth_group_permissions_83d7f98b` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_37ef4eb4` (`content_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add permission', 1, 'add_permission'),
(2, 'Can change permission', 1, 'change_permission'),
(3, 'Can delete permission', 1, 'delete_permission'),
(4, 'Can add group', 2, 'add_group'),
(5, 'Can change group', 2, 'change_group'),
(6, 'Can delete group', 2, 'delete_group'),
(7, 'Can add user', 3, 'add_user'),
(8, 'Can change user', 3, 'change_user'),
(9, 'Can delete user', 3, 'delete_user'),
(10, 'Can add content type', 4, 'add_contenttype'),
(11, 'Can change content type', 4, 'change_contenttype'),
(12, 'Can delete content type', 4, 'delete_contenttype'),
(13, 'Can add redirect', 5, 'add_redirect'),
(14, 'Can change redirect', 5, 'change_redirect'),
(15, 'Can delete redirect', 5, 'delete_redirect'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add site', 7, 'add_site'),
(20, 'Can change site', 7, 'change_site'),
(21, 'Can delete site', 7, 'delete_site'),
(22, 'Can add Product', 8, 'add_product'),
(23, 'Can change Product', 8, 'change_product'),
(24, 'Can delete Product', 8, 'delete_product'),
(25, 'Can add Image', 9, 'add_productimage'),
(26, 'Can change Image', 9, 'change_productimage'),
(27, 'Can delete Image', 9, 'delete_productimage'),
(28, 'Can add Product option', 10, 'add_productoption'),
(29, 'Can change Product option', 10, 'change_productoption'),
(30, 'Can delete Product option', 10, 'delete_productoption'),
(31, 'Can add product variation', 11, 'add_productvariation'),
(32, 'Can change product variation', 11, 'change_productvariation'),
(33, 'Can delete product variation', 11, 'delete_productvariation'),
(34, 'Can add Product category', 12, 'add_category'),
(35, 'Can change Product category', 12, 'change_category'),
(36, 'Can delete Product category', 12, 'delete_category'),
(37, 'Can add Order', 13, 'add_order'),
(38, 'Can change Order', 13, 'change_order'),
(39, 'Can delete Order', 13, 'delete_order'),
(40, 'Can add cart', 14, 'add_cart'),
(41, 'Can change cart', 14, 'change_cart'),
(42, 'Can delete cart', 14, 'delete_cart'),
(43, 'Can add cart item', 15, 'add_cartitem'),
(44, 'Can change cart item', 15, 'change_cartitem'),
(45, 'Can delete cart item', 15, 'delete_cartitem'),
(46, 'Can add order item', 16, 'add_orderitem'),
(47, 'Can change order item', 16, 'change_orderitem'),
(48, 'Can delete order item', 16, 'delete_orderitem'),
(49, 'Can add product action', 17, 'add_productaction'),
(50, 'Can change product action', 17, 'change_productaction'),
(51, 'Can delete product action', 17, 'delete_productaction'),
(52, 'Can add Sale', 18, 'add_sale'),
(53, 'Can change Sale', 18, 'change_sale'),
(54, 'Can delete Sale', 18, 'delete_sale'),
(55, 'Can add Discount code', 19, 'add_discountcode'),
(56, 'Can change Discount code', 19, 'change_discountcode'),
(57, 'Can delete Discount code', 19, 'delete_discountcode'),
(58, 'Can add Setting', 20, 'add_setting'),
(59, 'Can change Setting', 20, 'change_setting'),
(60, 'Can delete Setting', 20, 'delete_setting'),
(61, 'Can add Site permission', 21, 'add_sitepermission'),
(62, 'Can change Site permission', 21, 'change_sitepermission'),
(63, 'Can delete Site permission', 21, 'delete_sitepermission'),
(64, 'Can add Comment', 22, 'add_threadedcomment'),
(65, 'Can change Comment', 22, 'change_threadedcomment'),
(66, 'Can delete Comment', 22, 'delete_threadedcomment'),
(67, 'Can add Keyword', 23, 'add_keyword'),
(68, 'Can change Keyword', 23, 'change_keyword'),
(69, 'Can delete Keyword', 23, 'delete_keyword'),
(70, 'Can add assigned keyword', 24, 'add_assignedkeyword'),
(71, 'Can change assigned keyword', 24, 'change_assignedkeyword'),
(72, 'Can delete assigned keyword', 24, 'delete_assignedkeyword'),
(73, 'Can add Rating', 25, 'add_rating'),
(74, 'Can change Rating', 25, 'change_rating'),
(75, 'Can delete Rating', 25, 'delete_rating'),
(76, 'Can add Blog post', 26, 'add_blogpost'),
(77, 'Can change Blog post', 26, 'change_blogpost'),
(78, 'Can delete Blog post', 26, 'delete_blogpost'),
(79, 'Can add Blog Category', 27, 'add_blogcategory'),
(80, 'Can change Blog Category', 27, 'change_blogcategory'),
(81, 'Can delete Blog Category', 27, 'delete_blogcategory'),
(82, 'Can add Form', 28, 'add_form'),
(83, 'Can change Form', 28, 'change_form'),
(84, 'Can delete Form', 28, 'delete_form'),
(85, 'Can add Field', 29, 'add_field'),
(86, 'Can change Field', 29, 'change_field'),
(87, 'Can delete Field', 29, 'delete_field'),
(88, 'Can add Form entry', 30, 'add_formentry'),
(89, 'Can change Form entry', 30, 'change_formentry'),
(90, 'Can delete Form entry', 30, 'delete_formentry'),
(91, 'Can add Form field entry', 31, 'add_fieldentry'),
(92, 'Can change Form field entry', 31, 'change_fieldentry'),
(93, 'Can delete Form field entry', 31, 'delete_fieldentry'),
(94, 'Can add Page', 32, 'add_page'),
(95, 'Can change Page', 32, 'change_page'),
(96, 'Can delete Page', 32, 'delete_page'),
(97, 'Can add Rich text page', 33, 'add_richtextpage'),
(98, 'Can change Rich text page', 33, 'change_richtextpage'),
(99, 'Can delete Rich text page', 33, 'delete_richtextpage'),
(100, 'Can add Link', 34, 'add_link'),
(101, 'Can change Link', 34, 'change_link'),
(102, 'Can delete Link', 34, 'delete_link'),
(103, 'Can add Gallery', 35, 'add_gallery'),
(104, 'Can change Gallery', 35, 'change_gallery'),
(105, 'Can delete Gallery', 35, 'delete_gallery'),
(106, 'Can add Image', 36, 'add_galleryimage'),
(107, 'Can change Image', 36, 'change_galleryimage'),
(108, 'Can delete Image', 36, 'delete_galleryimage'),
(109, 'Can add Twitter query', 37, 'add_query'),
(110, 'Can change Twitter query', 37, 'change_query'),
(111, 'Can delete Twitter query', 37, 'delete_query'),
(112, 'Can add Tweet', 38, 'add_tweet'),
(113, 'Can change Tweet', 38, 'change_tweet'),
(114, 'Can delete Tweet', 38, 'delete_tweet'),
(115, 'Can add log entry', 39, 'add_logentry'),
(116, 'Can change log entry', 39, 'change_logentry'),
(117, 'Can delete log entry', 39, 'delete_logentry'),
(118, 'Can add comment', 40, 'add_comment'),
(119, 'Can change comment', 40, 'change_comment'),
(120, 'Can delete comment', 40, 'delete_comment'),
(121, 'Can moderate comments', 40, 'can_moderate'),
(122, 'Can add comment flag', 41, 'add_commentflag'),
(123, 'Can change comment flag', 41, 'change_commentflag'),
(124, 'Can delete comment flag', 41, 'delete_commentflag');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(2, 'pbkdf2_sha256$12000$vnLRhm6bCOD1$UE547NPUaS4VL4U0iZB51VTd/uyp71qdncSIfFhhX6A=', '2015-05-08 15:16:43', 1, 'sumitra', '', '', 's@gmail.com', 1, 1, '2015-04-25 13:36:33');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_6340c63c` (`user_id`),
  KEY `auth_user_groups_5f412f9a` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_6340c63c` (`user_id`),
  KEY `auth_user_user_permissions_83d7f98b` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `blog_blogcategory`
--

CREATE TABLE IF NOT EXISTS `blog_blogcategory` (
  `id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `slug` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_blogcategory_99732b5c` (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `blog_blogpost`
--

CREATE TABLE IF NOT EXISTS `blog_blogpost` (
  `id` int(11) NOT NULL,
  `comments_count` int(11) NOT NULL,
  `keywords_string` varchar(500) NOT NULL,
  `rating_count` int(11) NOT NULL,
  `rating_sum` int(11) NOT NULL,
  `rating_average` double NOT NULL,
  `site_id` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `slug` varchar(2000) DEFAULT NULL,
  `_meta_title` varchar(500) DEFAULT NULL,
  `description` text NOT NULL,
  `gen_description` tinyint(1) NOT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `status` int(11) NOT NULL,
  `publish_date` datetime DEFAULT NULL,
  `expiry_date` datetime DEFAULT NULL,
  `short_url` varchar(200) DEFAULT NULL,
  `in_sitemap` tinyint(1) NOT NULL,
  `content` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `allow_comments` tinyint(1) NOT NULL,
  `featured_image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_blogpost_99732b5c` (`site_id`),
  KEY `blog_blogpost_6340c63c` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `blog_blogpost_categories`
--

CREATE TABLE IF NOT EXISTS `blog_blogpost_categories` (
  `id` int(11) NOT NULL,
  `blogpost_id` int(11) NOT NULL,
  `blogcategory_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blogpost_id` (`blogpost_id`,`blogcategory_id`),
  KEY `blog_blogpost_categories_3beb7885` (`blogpost_id`),
  KEY `blog_blogpost_categories_29db1e0f` (`blogcategory_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `blog_blogpost_related_posts`
--

CREATE TABLE IF NOT EXISTS `blog_blogpost_related_posts` (
  `id` int(11) NOT NULL,
  `from_blogpost_id` int(11) NOT NULL,
  `to_blogpost_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `from_blogpost_id` (`from_blogpost_id`,`to_blogpost_id`),
  KEY `blog_blogpost_related_posts_69f74308` (`from_blogpost_id`),
  KEY `blog_blogpost_related_posts_bb78a3ca` (`to_blogpost_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `conf_setting`
--

CREATE TABLE IF NOT EXISTS `conf_setting` (
  `id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `value` varchar(2000) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `conf_setting_99732b5c` (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `core_sitepermission`
--

CREATE TABLE IF NOT EXISTS `core_sitepermission` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `core_sitepermission_sites`
--

CREATE TABLE IF NOT EXISTS `core_sitepermission_sites` (
  `id` int(11) NOT NULL,
  `sitepermission_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sitepermission_id` (`sitepermission_id`,`site_id`),
  KEY `core_sitepermission_sites_0780734a` (`sitepermission_id`),
  KEY `core_sitepermission_sites_99732b5c` (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` text,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_6340c63c` (`user_id`),
  KEY `django_admin_log_37ef4eb4` (`content_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `user_id`, `content_type_id`, `object_id`, `object_repr`, `action_flag`, `change_message`) VALUES
(1, '2015-04-27 04:26:12', 2, 12, '7', 'Shop', 3, ''),
(2, '2015-04-27 04:26:36', 2, 32, '3', 'Contact', 3, ''),
(3, '2015-04-27 04:27:10', 2, 32, '2', 'About', 3, ''),
(4, '2015-04-27 04:27:25', 2, 32, '8', 'Gallery', 3, ''),
(5, '2015-04-27 04:27:30', 2, 32, '1', 'Blog', 3, ''),
(6, '2015-04-27 04:52:44', 2, 8, '2', 'Paddy', 1, ''),
(7, '2015-04-27 04:55:03', 2, 8, '2', 'Paddy', 2, 'Changed content, description and keywords. Changed _order for Image "product/paady_-1.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Paddy Size: Medium, Colour: Yellow".'),
(8, '2015-04-27 04:56:48', 2, 8, '2', 'Paddy', 2, 'Changed content, description and keywords. Changed _order for Image "product/paady_-1.jpg".'),
(9, '2015-04-27 05:32:18', 2, 8, '3', 'BambooBasket', 1, ''),
(10, '2015-04-27 05:33:10', 2, 8, '3', 'BambooBasket', 2, 'Changed content and keywords. Changed _order for Image "product/bamboo-basket-1.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "BambooBasket Size: Medium, Colour: Yellow".'),
(11, '2015-04-27 05:33:56', 2, 8, '3', 'BambooBasket', 2, 'Changed id.'),
(12, '2015-04-27 05:38:07', 2, 8, '4', 'BambooTray', 1, ''),
(13, '2015-04-27 05:38:54', 2, 8, '4', 'BambooTray', 2, 'Changed content and keywords. Changed _order for Image "product/round_bamboo_tray1.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "BambooTray Size: Medium, Colour: Yellow".'),
(14, '2015-04-27 05:40:33', 2, 8, '3', 'BambooBasket', 3, ''),
(15, '2015-04-27 05:43:17', 2, 8, '5', 'BambooBasket', 1, ''),
(16, '2015-04-27 05:44:10', 2, 8, '5', 'BambooBasket', 2, 'Changed content and keywords. Changed _order for Image "product/bamboo-basket-1_LmjbG4a.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "BambooBasket Size: Medium, Colour: Yellow".'),
(17, '2015-04-27 05:47:39', 2, 8, '6', 'Cowdungcakes', 1, ''),
(18, '2015-04-27 05:48:47', 2, 8, '6', 'Cowdungcakes', 2, 'Changed content and keywords. Changed _order for Image "product/cowdung.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Cowdungcakes Size: Medium".'),
(19, '2015-04-27 05:51:17', 2, 8, '6', 'Cowdungcakes', 2, 'Changed content and keywords. Changed _order for Image "product/cowdung.jpg".'),
(20, '2015-04-27 05:52:25', 2, 8, '6', 'Cowdungcakes', 2, 'Changed content and keywords. Changed _order for Image "product/cowdung.jpg".'),
(21, '2015-04-27 05:54:23', 2, 8, '7', 'Gomutram', 1, ''),
(22, '2015-04-27 05:58:00', 2, 8, '7', 'Gomutram', 2, 'Changed content, option1, option2 and keywords. Changed _order for Image "product/gomutram.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Gomutram Size: Medium, Colour: Yellow".'),
(23, '2015-04-27 06:01:42', 2, 8, '8', 'Gomayam', 1, ''),
(24, '2015-04-27 06:02:50', 2, 8, '8', 'Gomayam', 2, 'Changed content and keywords. Changed _order for Image "product/cow.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Gomayam".'),
(25, '2015-04-27 06:10:23', 2, 8, '9', 'Honey Wax', 1, ''),
(26, '2015-04-27 06:10:47', 2, 8, '9', 'Honey Wax', 2, 'Changed content and id.'),
(27, '2015-04-27 06:13:25', 2, 8, '9', 'Honey Wax', 2, 'Changed content, slug, description and keywords. Changed _order for Image "product/honey.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Honey Wax Size: Medium".'),
(28, '2015-04-27 06:18:37', 2, 8, '10', 'Sandal wood', 1, ''),
(29, '2015-04-27 06:19:58', 2, 8, '10', 'Sandal wood', 2, 'Changed content and keywords. Changed _order for Image "product/sandalwood.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Sandal wood Size: Medium".'),
(30, '2015-04-27 06:24:07', 2, 8, '11', 'Coconuts', 1, ''),
(31, '2015-04-27 06:24:48', 2, 8, '11', 'Coconuts', 2, 'Changed content and keywords. Changed _order for Image "product/coconut.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Coconuts Size: Medium".'),
(32, '2015-04-27 06:29:20', 2, 8, '12', 'Darbha (Bundles)', 1, ''),
(33, '2015-04-27 06:30:38', 2, 8, '12', 'Darbha (Bundles)', 2, 'Changed content and keywords. Changed _order for Image "product/darbha.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Darbha (Bundles)".'),
(34, '2015-04-27 06:37:21', 2, 8, '13', ' Coconut(coir)', 1, ''),
(35, '2015-04-27 06:40:41', 2, 8, '13', ' Coconut(coir)', 2, 'Changed content, slug, description and keywords. Changed _order for Image "product/fullcoconut.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Coconut(coir)".'),
(36, '2015-04-27 06:44:25', 2, 8, '14', 'Samit Assorted', 1, ''),
(37, '2015-04-27 06:45:24', 2, 8, '14', 'Samit Assorted', 2, 'Changed content and keywords. Changed _order for Image "product/samit1.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Samit Assorted Size: Medium, Colour: Yellow".'),
(38, '2015-04-27 06:48:26', 2, 8, '15', 'Samit navagraha', 1, ''),
(39, '2015-04-27 06:50:01', 2, 8, '15', 'Samit navagraha', 2, 'Changed content and keywords. Changed _order for Image "product/Navagraha_samit.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Samit navagraha Size: Medium".'),
(40, '2015-04-27 07:11:19', 2, 8, '16', 'Samit Oudumbara', 1, ''),
(41, '2015-04-27 07:12:01', 2, 8, '16', 'Samit Oudumbara', 2, 'Changed content and keywords. Changed _order for Image "product/samit2.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Samit Oudumbara Size: Medium, Colour: Yellow".'),
(42, '2015-04-27 07:18:06', 2, 8, '17', 'Samit Palasham', 1, ''),
(43, '2015-04-27 07:18:52', 2, 8, '17', 'Samit Palasham', 2, 'Changed content, option1, option2 and keywords. Changed _order for Image "product/havan-samhidha-2-700x525.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Samit Palasham".'),
(44, '2015-04-27 21:18:05', 2, 8, '17', 'Samit Palasham', 2, 'Changed content, slug, description and keywords. Changed _order for Image "product/havan-samhidha-2-700x525.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Samit Palasham Size: Medium, Colour: Yellow".'),
(45, '2015-04-27 21:21:36', 2, 8, '18', 'Samit_Ashwattha', 1, ''),
(46, '2015-04-27 21:22:06', 2, 8, '18', 'Samit_Ashwattha', 2, 'Changed keywords. Changed _order for Image "product/samit.jpg". Changed num_in_stock for product variation "Samit_Ashwattha Size: Medium, Colour: Yellow".'),
(47, '2015-04-27 21:29:58', 2, 8, '18', 'Samit_Ashwattha', 2, 'Changed option1, option2 and keywords. Changed _order for Image "product/samit.jpg". Changed unit_price, sale_price, sale_from and sale_to for product variation "Samit_Ashwattha Size: Medium, Colour: Yellow".'),
(48, '2015-04-27 21:33:03', 2, 12, '1', 'Agricultural_Area', 1, ''),
(49, '2015-04-27 21:34:24', 2, 12, '1', 'Agricultural_Area', 2, 'Changed content, description and keywords.'),
(50, '2015-04-27 21:40:39', 2, 12, '2', 'Bamboo_Bazar', 1, ''),
(51, '2015-04-27 21:49:44', 2, 12, '3', 'Dairy', 1, ''),
(52, '2015-04-27 22:00:36', 2, 12, '4', 'Forest', 1, ''),
(53, '2015-04-27 22:03:27', 2, 12, '5', 'Garden', 1, ''),
(54, '2015-04-27 22:09:35', 2, 12, '5', 'Garden', 2, 'Changed content, description and keywords.'),
(55, '2015-04-27 22:10:57', 2, 8, '13', ' Coconut(coir)', 2, 'Changed content and keywords. Changed file and _order for Image "product/coconut-coir-fibre.jpg".'),
(56, '2015-04-27 22:14:35', 2, 8, '19', 'Black_Jeera', 1, ''),
(57, '2015-04-27 22:28:04', 2, 8, '19', 'Black_Jeera', 2, 'Changed content and id.'),
(58, '2015-04-27 22:32:55', 2, 8, '19', 'Black_Jeera', 2, 'Changed content and keywords. Changed _order for Image "product/black_jeera.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Black_Jeera".'),
(59, '2015-04-27 22:36:33', 2, 8, '20', 'Pachcha_Karpooram', 1, ''),
(60, '2015-04-27 22:37:51', 2, 8, '20', 'Pachcha_Karpooram', 2, 'Changed content and keywords. Changed _order for Image "product/pacha_karpooram.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Pachcha_Karpooram Size: Medium".'),
(61, '2015-04-27 22:39:59', 2, 8, '21', 'Popped_Rice_(Laja)', 1, ''),
(62, '2015-04-27 22:41:46', 2, 8, '22', 'Thread(white,red,yellow)', 1, ''),
(63, '2015-04-27 22:42:50', 2, 8, '22', 'Thread(white,red,yellow)', 2, 'Changed content and keywords. Changed _order for Image "product/thread.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Thread(white,red,yellow)".'),
(64, '2015-04-27 22:45:18', 2, 8, '23', 'Turmeric_Roots', 1, ''),
(65, '2015-04-27 22:47:12', 2, 8, '23', 'Turmeric_Roots', 2, 'Changed content, option1 and keywords. Changed _order for Image "product/turmaric_roots.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Turmeric_Roots".'),
(66, '2015-04-27 22:49:15', 2, 12, '6', 'Groceries', 1, ''),
(67, '2015-04-27 22:49:57', 2, 12, '6', 'Groceries', 2, 'Changed content, description and keywords.'),
(68, '2015-04-27 22:54:48', 2, 8, '24', 'Bell_(Ghanta)', 1, ''),
(69, '2015-04-27 22:57:31', 2, 8, '24', 'Bell_(Ghanta)', 2, 'Changed content, option1 and keywords. Changed _order for Image "product/Ghanta2.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Bell_(Ghanta) Size: Medium".'),
(70, '2015-04-27 23:40:30', 2, 8, '25', 'Brass/_Copper/_steel_plates', 1, ''),
(71, '2015-04-27 23:42:03', 2, 8, '25', 'Brass/_Copper/_steel_plates', 2, 'Changed content, option1 and keywords. Changed _order for Image "product/brassplate.png". Changed _order for Image "product/copper_plate.jpg". Changed _order for Image "product/Stainless-Steel-Dinner-Plates.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Brass/_Copper/_steel_plates".'),
(72, '2015-04-28 00:13:01', 2, 8, '26', 'Brass_vessels_with_ladle_&_lid_(half_litre)', 1, ''),
(73, '2015-04-28 00:14:04', 2, 8, '26', 'Brass_vessels_with_ladle_&_lid_(half_litre)', 2, 'Changed content, option1 and keywords. Changed _order for Image "product/brassvessels.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Brass_vessels_with_ladle_&_lid_(half_litre)".'),
(74, '2015-04-28 00:33:58', 2, 8, '27', 'Turmeric', 1, ''),
(75, '2015-04-28 00:36:41', 2, 8, '27', 'Turmeric', 2, 'Changed content and keywords. Changed _order for Image "product/Turmeric_Powder.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Turmeric Size: Medium, Colour: Yellow".'),
(76, '2015-04-28 00:38:24', 2, 8, '28', 'Vermilion_(Kunkum)', 1, ''),
(77, '2015-04-28 00:39:51', 2, 8, '28', 'Vermilion_(Kunkum)', 2, 'Changed content and keywords. Changed _order for Image "product/Vermilion_Kunkum.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Vermilion_(Kunkum)".'),
(78, '2015-04-28 00:47:40', 2, 8, '29', 'Sindhuram', 1, ''),
(79, '2015-04-28 00:48:44', 2, 8, '29', 'Sindhuram', 2, 'Changed keywords. Changed _order for Image "product/Naaga-Sindhuram-.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Sindhuram Size: Medium".'),
(80, '2015-04-28 00:50:09', 2, 8, '30', 'Gulal', 1, ''),
(81, '2015-04-28 00:51:02', 2, 8, '30', 'Gulal', 2, 'Changed content and keywords. Changed _order for Image "product/Holi-Gulal.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Gulal".'),
(82, '2015-04-28 00:52:23', 2, 8, '31', 'Vibhuthi', 1, ''),
(83, '2015-04-28 00:53:20', 2, 8, '31', 'Vibhuthi', 2, 'Changed content and keywords. Changed _order for Image "product/Vibhuthi.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Vibhuthi Size: Medium".'),
(84, '2015-04-28 00:54:09', 2, 8, '19', 'Black_Jeera', 2, 'Changed content and keywords. Changed _order for Image "product/black_jeera.jpg". Changed unit_price and sale_price for product variation "Black_Jeera".'),
(85, '2015-04-28 00:55:44', 2, 8, '32', 'Chunna', 1, ''),
(86, '2015-04-28 00:59:31', 2, 8, '32', 'Cotton_Wicks(2types)', 2, 'Changed title, content, _meta_title, slug and keywords.'),
(87, '2015-04-28 01:01:37', 2, 8, '32', 'Cotton_Wicks(2types)', 3, ''),
(88, '2015-04-28 01:03:07', 2, 8, '32', 'Cotton_Wicks(2types)', 1, ''),
(89, '2015-04-28 01:04:01', 2, 8, '32', 'Cotton_Wicks(2types)', 2, 'Changed content and keywords. Changed _order for Image "product/cotton_wicks.JPG". Changed _order for Image "product/oil-lamp-wicks-.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Cotton_Wicks(2types) Size: Medium".'),
(90, '2015-04-28 01:05:46', 2, 8, '33', 'Camphor_Block', 1, ''),
(91, '2015-04-28 01:06:53', 2, 8, '33', 'Camphor_Block', 2, 'Changed content, option1 and keywords. Changed _order for Image "product/camphorblock.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Camphor_Block".'),
(92, '2015-04-28 01:09:47', 2, 8, '34', 'Camphor_Tablets', 1, ''),
(93, '2015-04-28 01:11:16', 2, 8, '34', 'Camphor_Tablets', 2, 'Changed content and keywords. Changed _order for Image "product/Camphor_Block.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Camphor_Tablets Size: Medium".'),
(94, '2015-04-28 01:24:35', 2, 8, '33', 'Camphor_Block', 2, 'Changed content, option1 and keywords. Changed _order for Image "product/camphorblock.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Camphor_Block Size: Medium".'),
(95, '2015-04-28 01:58:30', 2, 8, '34', 'Camphor_Tablets', 2, 'Changed content, option1 and keywords. Changed _order for Image "product/Camphor_Block.jpg".'),
(96, '2015-04-28 02:11:49', 2, 8, '35', 'Areca_Nuts (White Round)', 1, ''),
(97, '2015-04-28 02:21:53', 2, 8, '35', 'Areca_Nuts (White Round)', 2, 'Changed content and keywords. Changed _order for Image "product/areca-nut.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Areca_Nuts (White Round)".'),
(98, '2015-04-28 02:26:35', 2, 8, '36', 'DryFruits_Assorted', 1, ''),
(99, '2015-04-28 02:27:11', 2, 8, '36', 'DryFruits_Assorted', 2, 'Changed content and keywords. Changed _order for Image "product/DryFruits_Assorted.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "DryFruits_Assorted".'),
(100, '2015-04-28 02:34:06', 2, 8, '37', 'Areca_Nuts (half)', 1, ''),
(101, '2015-04-28 02:35:39', 2, 8, '37', 'Areca_Nuts (half)', 2, 'Changed content and keywords. Changed _order for Image "product/A_close_up_of_Areca_nut.JPG". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Areca_Nuts (half) Size: Medium".'),
(102, '2015-04-28 02:37:48', 2, 8, '38', 'Lamancha_(vattiveru)', 1, ''),
(103, '2015-04-28 02:38:38', 2, 8, '38', 'Lamancha_(vattiveru)', 2, 'Changed content, option1 and keywords. Changed _order for Image "product/lavancha.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Lamancha_(vattiveru) Size: Medium".'),
(104, '2015-04-28 02:40:26', 2, 8, '20', 'Pachcha_Karpooram', 2, 'Changed content, option1 and keywords. Changed _order for Image "product/pacha_karpooram.jpg". Changed num_in_stock, unit_price and sale_price for product variation "Pachcha_Karpooram Size: Medium".'),
(105, '2015-04-28 02:41:57', 2, 8, '39', 'Guggilam', 1, ''),
(106, '2015-04-28 02:42:39', 2, 8, '39', 'Guggilam', 2, 'Changed content and keywords. Changed _order for Image "product/Guggilam.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Guggilam Size: Medium".'),
(107, '2015-04-28 02:46:21', 2, 8, '40', 'Sambrani', 1, ''),
(108, '2015-04-28 02:47:15', 2, 8, '40', 'Sambrani', 2, 'Changed content, option1 and keywords. Changed _order for Image "product/sambrani_dhupa.JPG". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Sambrani Size: Medium".'),
(109, '2015-04-28 02:48:31', 2, 8, '9', 'Honey Wax', 2, 'Changed content, option1 and keywords. Changed _order for Image "product/honey.jpg". Changed num_in_stock, unit_price and sale_price for product variation "Honey Wax Size: Medium".'),
(110, '2015-04-28 02:49:33', 2, 8, '11', 'Coconuts', 2, 'Changed content, option1 and keywords. Changed _order for Image "product/coconut.jpg". Changed num_in_stock, unit_price and sale_price for product variation "Coconuts Size: Medium".'),
(111, '2015-04-28 02:51:06', 2, 8, '41', 'Copra', 1, ''),
(112, '2015-04-28 02:51:55', 2, 8, '41', 'Copra', 2, 'Changed content, option1 and keywords. Changed _order for Image "product/Copra.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Copra Size: Medium".'),
(113, '2015-04-28 02:53:26', 2, 8, '23', 'Turmeric_Roots', 2, 'Changed content and keywords. Changed _order for Image "product/turmaric_roots.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Turmeric_Roots Size: Medium".'),
(114, '2015-04-28 02:55:27', 2, 8, '42', 'Leaf_Plate', 1, ''),
(115, '2015-04-28 02:56:10', 2, 8, '42', 'Leaf_Plate', 2, 'Changed content, option1 and keywords. Changed _order for Image "product/Leaf_Plate.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Leaf_Plate".'),
(116, '2015-04-28 02:58:02', 2, 8, '43', 'Jatamamsi', 1, ''),
(117, '2015-04-28 02:59:24', 2, 8, '43', 'Jatamamsi', 2, 'Changed content, option1 and keywords. Changed _order for Image "product/Jatamamsi.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Jatamamsi Size: Medium".'),
(118, '2015-04-28 03:02:27', 2, 8, '38', 'Lamancha_(vattiveru)', 2, 'Changed content and keywords. Changed _order for Image "product/lavancha.jpg".'),
(119, '2015-04-28 03:04:19', 2, 8, '44', 'Yajnopavitham', 1, ''),
(120, '2015-04-28 03:05:20', 2, 8, '44', 'Yajnopavitham', 2, 'Changed content, option1 and keywords. Changed _order for Image "product/Yagnopavitham.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Yajnopavitham".'),
(121, '2015-04-28 03:07:08', 2, 8, '45', 'Clothes', 1, ''),
(122, '2015-04-28 03:07:53', 2, 8, '45', 'Clothes', 2, 'Changed content and keywords. Changed _order for Image "product/Napkin.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Clothes".'),
(123, '2015-04-28 03:16:39', 2, 8, '46', 'Thread(Jute)', 1, ''),
(124, '2015-04-28 03:17:22', 2, 8, '46', 'Thread(Jute)', 2, 'Changed content, option1 and keywords. Changed _order for Image "product/Jute_Rope.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Thread(Jute) Size: Medium".'),
(125, '2015-04-28 03:19:00', 2, 8, '12', 'Darbha (Bundles)', 2, 'Changed content, option1 and keywords. Changed _order for Image "product/darbha.jpg". Changed num_in_stock, unit_price and sale_price for product variation "Darbha (Bundles)".'),
(126, '2015-04-28 03:21:04', 2, 8, '2', 'Paddy', 2, 'Changed content, description and keywords. Changed _order for Image "product/paady_-1.jpg". Changed num_in_stock, unit_price and sale_price for product variation "Paddy Size: Medium, Colour: Yellow".'),
(127, '2015-04-28 03:24:33', 2, 8, '18', 'Samit_Ashwattha', 2, 'Changed option1 and keywords. Changed _order for Image "product/samit.jpg". Changed num_in_stock, unit_price and sale_price for product variation "Samit_Ashwattha Size: Medium, Colour: Yellow".'),
(128, '2015-04-28 03:26:22', 2, 8, '14', 'Samit Assorted', 2, 'Changed content, option1 and keywords. Changed _order for Image "product/samit1.jpg". Changed num_in_stock, unit_price and sale_price for product variation "Samit Assorted Size: Medium, Colour: Yellow".'),
(129, '2015-04-28 03:29:07', 2, 8, '15', 'Samit navagraha', 2, 'Changed content and keywords. Changed _order for Image "product/Navagraha_samit.jpg". Changed num_in_stock, unit_price and sale_price for product variation "Samit navagraha Size: Medium".'),
(130, '2015-04-28 03:30:50', 2, 8, '7', 'Gomutram', 2, 'Changed content, option1 and keywords. Changed _order for Image "product/gomutram.jpg". Changed num_in_stock, unit_price and sale_price for product variation "Gomutram Size: Medium, Colour: Yellow".'),
(131, '2015-04-28 03:33:03', 2, 8, '8', 'Gomayam', 2, 'Changed content, option1 and keywords. Changed _order for Image "product/cow.jpg". Changed num_in_stock, unit_price and sale_price for product variation "Gomayam".'),
(132, '2015-04-28 03:34:24', 2, 8, '8', 'Gomayam', 2, 'Changed content, option1 and keywords. Changed _order for Image "product/cow.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Gomayam Size: Medium".'),
(133, '2015-04-28 03:37:34', 2, 8, '47', 'Twine_Thread', 1, ''),
(134, '2015-04-28 03:38:25', 2, 8, '47', 'Twine_Thread', 2, 'Changed content and keywords. Changed _order for Image "product/cotton-twine.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Twine_Thread".'),
(135, '2015-04-28 03:42:18', 2, 8, '48', 'Coconut_Coir', 1, ''),
(136, '2015-04-28 03:43:13', 2, 8, '48', 'Coconut_Coir', 2, 'Changed content, option1 and keywords. Changed _order for Image "product/coconut-coir-fibre_67sMOeh.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Coconut_Coir Size: Medium".'),
(137, '2015-04-28 03:44:33', 2, 8, '6', 'Cowdungcakes', 2, 'Changed content, option1 and keywords. Changed _order for Image "product/cowdung.jpg". Changed num_in_stock, unit_price and sale_price for product variation "Cowdungcakes Size: Medium".'),
(138, '2015-04-28 03:45:48', 2, 8, '49', 'Wooden_paduka_set', 1, ''),
(139, '2015-04-28 03:46:07', 2, 8, '49', 'Wooden_paduka_set', 2, 'Changed content, option1 and keywords. Changed _order for Image "product/Wooden_paduka_set.jpg".'),
(140, '2015-04-28 03:47:29', 2, 8, '49', 'Wooden_paduka_set', 2, 'Changed content, option1 and keywords. Changed _order for Image "product/Wooden_paduka_set.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Wooden_paduka_set Size: Medium".'),
(141, '2015-04-28 03:51:34', 2, 8, '24', 'Bell_(Ghanta)', 2, 'Changed content and keywords. Changed _order for Image "product/Ghanta2.jpg". Changed num_in_stock, unit_price and sale_price for product variation "Bell_(Ghanta) Size: Medium".'),
(142, '2015-04-28 03:52:14', 2, 8, '30', 'Gulal', 2, 'Changed content and keywords. Changed _order for Image "product/Holi-Gulal.jpg". Changed num_in_stock, unit_price and sale_price for product variation "Gulal".'),
(143, '2015-04-28 03:54:23', 2, 8, '50', 'Umbrella', 1, ''),
(144, '2015-04-28 03:55:07', 2, 8, '50', 'Umbrella', 2, 'Changed content, option1 and keywords. Changed _order for Image "product/umbrella.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Umbrella".'),
(145, '2015-04-28 03:58:31', 2, 8, '50', 'Umbrella', 2, 'Changed content, option1 and keywords. Changed file and _order for Image "product/sky-umbrella.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Umbrella Size: Medium".'),
(146, '2015-04-28 04:04:21', 2, 8, '5', 'BambooBasket', 2, 'Changed content and keywords. Changed _order for Image "product/bamboo-basket-1_LmjbG4a.jpg". Changed unit_price and sale_price for product variation "BambooBasket Size: Medium, Colour: Yellow".'),
(147, '2015-04-28 04:05:10', 2, 8, '4', 'BambooTray', 2, 'Changed content and keywords. Changed _order for Image "product/round_bamboo_tray1.jpg". Changed num_in_stock, unit_price and sale_price for product variation "BambooTray Size: Medium, Colour: Yellow".'),
(148, '2015-04-28 04:24:10', 2, 8, '51', 'winna', 1, ''),
(149, '2015-04-28 04:25:15', 2, 8, '51', 'winna', 2, 'Changed option1 and keywords. Changed _order for Image "product/chata.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "winna".'),
(150, '2015-04-28 04:27:22', 2, 8, '51', 'winna', 2, 'Changed option1 and keywords. Changed _order for Image "product/chata.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "winna Size: Medium".'),
(151, '2015-05-01 21:49:23', 2, 12, '1', 'Agricultural_Area', 2, 'Changed content, in_menus and keywords.'),
(152, '2015-05-01 21:51:00', 2, 12, '2', 'Bamboo_Bazar', 2, 'Changed content, in_menus and keywords.'),
(153, '2015-05-01 21:51:15', 2, 12, '3', 'Dairy', 2, 'Changed content, in_menus and keywords.'),
(154, '2015-05-01 21:51:30', 2, 12, '4', 'Forest', 2, 'Changed in_menus and keywords.'),
(155, '2015-05-01 21:51:46', 2, 12, '5', 'Garden', 2, 'Changed content, in_menus and keywords.'),
(156, '2015-05-01 21:52:02', 2, 12, '6', 'Groceries', 2, 'Changed content, products and keywords.'),
(157, '2015-05-01 22:04:53', 2, 8, '27', 'Turmeric_Powder', 2, 'Changed title, content, categories, _meta_title, slug, description and keywords. Changed _order for Image "product/Turmeric_Powder.jpg". Changed num_in_stock, unit_price and sale_price for product variation "Turmeric_Powder Size: Medium, Colour: Yellow".'),
(158, '2015-05-01 22:07:41', 2, 8, '28', 'Vermilion_(Kunkum)', 2, 'Changed content and keywords. Changed _order for Image "product/Vermilion_Kunkum.jpg". Changed unit_price and sale_price for product variation "Vermilion_(Kunkum)".'),
(159, '2015-05-01 22:08:59', 2, 8, '29', 'Sindhuram', 2, 'Changed keywords. Changed _order for Image "product/Naaga-Sindhuram-.jpg". Changed unit_price and sale_price for product variation "Sindhuram Size: Medium".'),
(160, '2015-05-01 22:10:01', 2, 8, '30', 'Gulal', 2, 'Changed content and keywords. Changed _order for Image "product/Holi-Gulal.jpg". Changed unit_price and sale_price for product variation "Gulal".'),
(161, '2015-05-01 22:12:44', 2, 8, '31', 'Vibhuthi', 2, 'Changed content and keywords. Changed _order for Image "product/Vibhuthi.jpg". Changed unit_price and sale_price for product variation "Vibhuthi Size: Medium".'),
(162, '2015-05-01 23:29:43', 2, 8, '19', 'Black_Jeera', 2, 'Changed content and keywords. Changed _order for Image "product/black_jeera.jpg". Changed unit_price and sale_price for product variation "Black_Jeera".'),
(163, '2015-05-01 23:31:39', 2, 8, '32', 'Cotton_Wicks(2types)', 2, 'Changed content and keywords. Changed _order for Image "product/cotton_wicks.JPG". Changed _order for Image "product/oil-lamp-wicks-.jpg". Changed unit_price and sale_price for product variation "Cotton_Wicks(2types) Size: Medium".'),
(164, '2015-05-01 23:33:04', 2, 8, '33', 'Camphor_Block', 2, 'Changed content and keywords. Changed _order for Image "product/camphorblock.jpg". Changed unit_price and sale_price for product variation "Camphor_Block Size: Medium".'),
(165, '2015-05-01 23:33:35', 2, 8, '34', 'Camphor_Tablets', 2, 'Changed content and keywords. Changed _order for Image "product/Camphor_Block.jpg". Changed unit_price and sale_price for product variation "Camphor_Tablets Size: Medium".'),
(166, '2015-05-01 23:34:53', 2, 8, '35', 'Areca_Nuts (White Round)', 2, 'Changed content and keywords. Changed _order for Image "product/areca-nut.jpg". Changed unit_price and sale_price for product variation "Areca_Nuts (White Round)".'),
(167, '2015-05-01 23:36:07', 2, 8, '36', 'DryFruits_Assorted', 2, 'Changed content and keywords. Changed _order for Image "product/DryFruits_Assorted.jpg". Changed unit_price and sale_price for product variation "DryFruits_Assorted".'),
(168, '2015-05-01 23:37:18', 2, 8, '37', 'Areca_Nuts (half)', 2, 'Changed content and keywords. Changed _order for Image "product/A_close_up_of_Areca_nut.JPG". Changed unit_price and sale_price for product variation "Areca_Nuts (half) Size: Medium".'),
(169, '2015-05-01 23:37:34', 2, 8, '37', 'Areca_Nuts (half)', 2, 'Changed content and keywords. Changed _order for Image "product/A_close_up_of_Areca_nut.JPG". Changed sale_price for product variation "Areca_Nuts (half) Size: Medium".'),
(170, '2015-05-01 23:40:49', 2, 8, '38', 'Lamancha_(vattiveru)', 2, 'Changed content and keywords. Changed _order for Image "product/lavancha.jpg". Changed unit_price and sale_price for product variation "Lamancha_(vattiveru) Size: Medium".'),
(171, '2015-05-01 23:42:10', 2, 8, '20', 'Pachcha_Karpooram', 2, 'Changed content and keywords. Changed _order for Image "product/pacha_karpooram.jpg". Changed unit_price and sale_price for product variation "Pachcha_Karpooram Size: Medium".'),
(172, '2015-05-01 23:47:55', 2, 8, '39', 'Guggilam', 2, 'Changed content and keywords. Changed _order for Image "product/Guggilam.jpg". Changed unit_price and sale_price for product variation "Guggilam Size: Medium".'),
(173, '2015-05-01 23:48:50', 2, 8, '40', 'Sambrani', 2, 'Changed content and keywords. Changed _order for Image "product/sambrani_dhupa.JPG". Changed unit_price and sale_price for product variation "Sambrani Size: Medium".'),
(174, '2015-05-01 23:49:45', 2, 8, '9', 'Honey Wax', 2, 'Changed content and keywords. Changed _order for Image "product/honey.jpg". Changed unit_price and sale_price for product variation "Honey Wax Size: Medium".'),
(175, '2015-05-01 23:51:30', 2, 8, '11', 'Coconuts', 2, 'Changed content and keywords. Changed _order for Image "product/coconut.jpg". Changed unit_price and sale_price for product variation "Coconuts Size: Medium".'),
(176, '2015-05-01 23:52:14', 2, 8, '41', 'Copra', 2, 'Changed content and keywords. Changed _order for Image "product/Copra.jpg". Changed unit_price and sale_price for product variation "Copra Size: Medium".'),
(177, '2015-05-01 23:53:49', 2, 8, '23', 'Turmeric_Roots', 2, 'Changed content and keywords. Changed _order for Image "product/turmaric_roots.jpg". Changed unit_price and sale_price for product variation "Turmeric_Roots Size: Medium".'),
(178, '2015-05-01 23:58:10', 2, 8, '42', 'Leaf_Plate', 2, 'Changed content and keywords. Changed _order for Image "product/Leaf_Plate.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Leaf_Plate Size: Medium".'),
(179, '2015-05-01 23:58:49', 2, 8, '43', 'Jatamamsi', 2, 'Changed content and keywords. Changed _order for Image "product/Jatamamsi.jpg". Changed unit_price and sale_price for product variation "Jatamamsi Size: Medium".'),
(180, '2015-05-02 00:00:49', 2, 8, '52', 'Yagnopaveetam', 1, ''),
(181, '2015-05-02 00:02:05', 2, 8, '52', 'Yagnopaveetam', 2, 'Changed keywords. Changed _order for Image "product/Yagnopavitham_1TkIhIk.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Yagnopaveetam".'),
(182, '2015-05-02 00:04:34', 2, 8, '45', 'Clothes', 2, 'Changed content and keywords. Changed _order for Image "product/Napkin.jpg". Changed unit_price and sale_price for product variation "Clothes".'),
(183, '2015-05-02 00:06:10', 2, 8, '46', 'Thread(Jute)', 2, 'Changed content and keywords. Changed _order for Image "product/Jute_Rope.jpg". Changed unit_price and sale_price for product variation "Thread(Jute) Size: Medium".'),
(184, '2015-05-02 00:08:42', 2, 8, '12', 'Darbha (Bundles)', 2, 'Changed content and keywords. Changed _order for Image "product/darbha.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Darbha (Bundles) Size: Medium".'),
(185, '2015-05-02 00:09:54', 2, 8, '2', 'Paddy', 2, 'Changed content, description and keywords. Changed _order for Image "product/paady_-1.jpg". Changed unit_price and sale_price for product variation "Paddy Size: Medium, Colour: Yellow".'),
(186, '2015-05-02 00:11:23', 2, 8, '16', 'Samit Oudumbara', 2, 'Changed content and keywords. Changed _order for Image "product/samit2.jpg". Changed unit_price and sale_price for product variation "Samit Oudumbara Size: Medium, Colour: Yellow".'),
(187, '2015-05-02 00:12:57', 2, 8, '16', 'Samit Oudumbara', 2, 'Changed content and keywords. Changed _order for Image "product/samit2.jpg". Changed unit_price for product variation "Samit Oudumbara Size: Medium, Colour: Yellow".'),
(188, '2015-05-02 00:22:01', 2, 8, '14', 'Samit Assorted', 2, 'Changed content and keywords. Changed _order for Image "product/samit1.jpg". Changed unit_price and sale_price for product variation "Samit Assorted Size: Medium, Colour: Yellow".'),
(189, '2015-05-02 00:23:17', 2, 8, '7', 'Gomutram', 2, 'Changed content and keywords. Changed _order for Image "product/gomutram.jpg". Changed num_in_stock, unit_price and sale_price for product variation "Gomutram Size: Medium, Colour: Yellow".'),
(190, '2015-05-02 00:24:37', 2, 8, '8', 'Gomayam', 2, 'Changed content and keywords. Changed _order for Image "product/cow.jpg". Changed unit_price and sale_price for product variation "Gomayam Size: Medium".'),
(191, '2015-05-02 00:25:43', 2, 8, '47', 'Twine_Thread', 2, 'Changed content and keywords. Changed _order for Image "product/cotton-twine.jpg". Changed unit_price and sale_price for product variation "Twine_Thread".'),
(192, '2015-05-02 00:26:42', 2, 8, '13', ' Coconut(coir)', 2, 'Changed content and keywords. Changed _order for Image "product/coconut-coir-fibre.jpg". Changed unit_price and sale_price for product variation "Coconut(coir)".'),
(193, '2015-05-02 00:28:00', 2, 8, '6', 'Cowdungcakes', 2, 'Changed content and keywords. Changed _order for Image "product/cowdung.jpg". Changed unit_price and sale_price for product variation "Cowdungcakes Size: Medium".'),
(194, '2015-05-02 00:29:32', 2, 8, '49', 'Wooden_paduka_set', 2, 'Changed content and keywords. Changed _order for Image "product/Wooden_paduka_set.jpg". Changed unit_price and sale_price for product variation "Wooden_paduka_set Size: Medium".'),
(195, '2015-05-02 00:32:40', 2, 8, '24', 'Bell_(Ghanta)', 2, 'Changed content and keywords. Changed _order for Image "product/Ghanta2.jpg". Changed num_in_stock, unit_price and sale_price for product variation "Bell_(Ghanta) Size: Medium".'),
(196, '2015-05-02 00:39:43', 2, 8, '53', 'Hand Fan', 1, ''),
(197, '2015-05-02 00:40:28', 2, 8, '53', 'Hand Fan', 2, 'Changed keywords. Changed _order for Image "product/fan.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Hand Fan".'),
(198, '2015-05-02 00:41:20', 2, 8, '50', 'Umbrella', 2, 'Changed content and keywords. Changed _order for Image "product/sky-umbrella.jpg". Changed num_in_stock, unit_price and sale_price for product variation "Umbrella Size: Medium".'),
(199, '2015-05-02 00:43:37', 2, 8, '51', 'winna', 2, 'Changed keywords. Changed _order for Image "product/chata.jpg". Changed unit_price and sale_price for product variation "winna Size: Medium".'),
(200, '2015-05-02 00:44:44', 2, 8, '5', 'BambooBasket', 2, 'Changed content and keywords. Changed _order for Image "product/bamboo-basket-1_LmjbG4a.jpg". Changed unit_price and sale_price for product variation "BambooBasket Size: Medium, Colour: Yellow".'),
(201, '2015-05-02 00:45:16', 2, 8, '4', 'BambooTray', 2, 'Changed content and keywords. Changed _order for Image "product/round_bamboo_tray1.jpg". Changed unit_price and sale_price for product variation "BambooTray Size: Medium, Colour: Yellow".'),
(202, '2015-05-02 00:54:22', 2, 8, '51', 'winna', 2, 'Changed keywords. Changed _order for Image "product/chata.jpg". Changed num_in_stock for product variation "winna Size: Medium".'),
(203, '2015-05-02 01:00:16', 2, 8, '53', 'Hand Fan', 2, 'Changed keywords. Changed _order for Image "product/fan.jpg".'),
(204, '2015-05-02 01:03:21', 2, 8, '54', 'PradhanaKalasham', 1, ''),
(205, '2015-05-02 01:03:59', 2, 8, '54', 'PradhanaKalasham', 2, 'Changed keywords. Changed _order for Image "product/kalasam.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "PradhanaKalasham".'),
(206, '2015-05-02 01:12:10', 2, 8, '55', 'Copper/Bronze_Kalasha', 1, ''),
(207, '2015-05-02 01:13:10', 2, 8, '55', 'Copper/Bronze_Kalasha', 2, 'Changed content and keywords. Changed _order for Image "product/co.jpg". Changed _order for Image "product/Bronze_Kalasam.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Copper/Bronze_Kalasha".'),
(208, '2015-05-02 01:26:18', 2, 8, '55', 'Copper/Bronze_Kalasha(small)', 2, 'Changed title, content, _meta_title, slug, description and keywords. Changed _order for Image "product/co.jpg". Changed _order for Image "product/Bronze_Kalasam.jpg". Changed unit_price and sale_price for product variation "Copper/Bronze_Kalasha(small)".'),
(209, '2015-05-02 01:31:11', 2, 8, '56', 'Copper/Bronze_Kalasha', 1, ''),
(210, '2015-05-02 01:32:12', 2, 8, '56', 'Copper/Bronze_Kalasha', 2, 'Changed content and keywords. Changed _order for Image "product/Bronze_Kalasam_LRYXhLD.jpg". Changed _order for Image "product/kal.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Copper/Bronze_Kalasha".'),
(211, '2015-05-02 17:18:05', 2, 8, '57', 'Gandham_Stone', 1, ''),
(212, '2015-05-02 17:19:21', 2, 8, '57', 'Gandham_Stone', 2, 'Changed content and keywords. Changed _order for Image "product/gon-sandalwood-paste.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Gandham_Stone".'),
(213, '2015-05-02 17:21:15', 2, 8, '58', 'Sandal_wood', 1, ''),
(214, '2015-05-02 17:22:11', 2, 8, '58', 'Sandal_wood', 2, 'Changed content and keywords. Changed _order for Image "product/sandalwood_7SY3iGP.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Sandal_wood".'),
(215, '2015-05-02 17:23:51', 2, 8, '59', 'Deepa_Stambha', 1, ''),
(216, '2015-05-02 17:25:12', 2, 8, '59', 'Deepa_Stambha', 2, 'Changed content and keywords. Changed _order for Image "product/deepastamba.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Deepa_Stambha".'),
(217, '2015-05-02 17:27:49', 2, 8, '60', 'Pancha_Patra_FullSet(1 Plate 5 Patra 5 Spoons)', 1, ''),
(218, '2015-05-02 17:28:52', 2, 8, '60', 'Pancha_Patra_FullSet(1 Plate 5 Patra 5 Spoons)', 2, 'Changed content and keywords. Changed _order for Image "product/Pancha_Patra_set.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Pancha_Patra_FullSet(1 Plate 5 Patra 5 Spoons)".'),
(219, '2015-05-02 22:06:19', 2, 8, '60', 'Pancha_Patra_FullSet', 2, 'Changed title and id.'),
(220, '2015-05-02 22:08:19', 2, 8, '60', 'Pancha_Patra_FullSet', 2, 'Changed content, slug and keywords. Changed _order for Image "product/Pancha_Patra_set.jpg".'),
(221, '2015-05-02 22:28:47', 2, 8, '61', 'Mangala_Arati', 1, ''),
(222, '2015-05-02 22:30:04', 2, 8, '61', 'Mangala_Arati', 2, 'Changed content and keywords. Changed _order for Image "product/Mangala_Arati_plate.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Mangala_Arati".'),
(223, '2015-05-02 22:32:38', 2, 8, '62', 'Buckets_Steel(10Litres)', 1, ''),
(224, '2015-05-02 22:35:38', 2, 8, '62', 'Buckets_Steel(10Litres)', 2, 'Changed content, slug, description and keywords. Changed _order for Image "product/Buckets_Steel.jpeg". Changed num_in_stock, unit_price, sale_from and sale_to for product variation "Buckets_Steel(10Litres)".'),
(225, '2015-05-02 22:36:36', 2, 8, '62', 'Buckets_Steel(10Litres)', 2, 'Changed available, expiry_date, content and keywords. Changed _order for Image "product/Buckets_Steel.jpeg".'),
(226, '2015-05-02 22:37:13', 2, 8, '62', 'Buckets_Steel', 2, 'Changed title and id.'),
(227, '2015-05-02 10:12:31', 2, 8, '63', 'Mattelu_(toe_rings)', 1, ''),
(228, '2015-05-02 10:13:33', 2, 8, '63', 'Mattelu_(toe_rings)', 2, 'Changed content and keywords. Changed _order for Image "product/Mattelu_toe_rings.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Mattelu_(toe_rings)".'),
(229, '2015-05-02 10:28:49', 2, 8, '64', 'Towels', 1, ''),
(230, '2015-05-02 10:29:39', 2, 8, '64', 'Towels', 2, 'Changed content and keywords. Changed _order for Image "product/Towels.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Towels".'),
(231, '2015-05-02 10:41:59', 2, 8, '65', 'Black_cotton_cloth', 1, ''),
(232, '2015-05-02 10:43:44', 2, 8, '65', 'Black_cotton_cloth', 2, 'Changed content and keywords. Added Image "product/Black_cotton_cloth.gif". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Black_cotton_cloth".'),
(233, '2015-05-02 10:51:17', 2, 8, '66', 'Napkin', 1, ''),
(234, '2015-05-02 10:52:38', 2, 8, '66', 'Napkin', 2, 'Changed content and keywords. Changed _order for Image "product/Napkin_jwxsEs0.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Napkin".'),
(235, '2015-05-03 05:20:01', 2, 8, '67', 'Blouse_Pieces', 1, ''),
(236, '2015-05-03 05:21:02', 2, 8, '67', 'Blouse_Pieces', 2, 'Changed content and keywords. Changed _order for Image "product/Blouse_Pieces.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Blouse_Pieces".'),
(237, '2015-05-03 05:24:12', 2, 8, '68', 'Red_silk_cloth', 1, ''),
(238, '2015-05-03 05:27:02', 2, 8, '68', 'Red_silk_cloth', 2, 'Changed content and keywords. Changed _order for Image "product/Red_silk_cloth.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Red_silk_cloth".'),
(239, '2015-05-03 05:30:26', 2, 8, '69', 'Shawl', 1, ''),
(240, '2015-05-03 05:32:28', 2, 8, '69', 'Shawl', 2, 'Changed content and keywords. Changed _order for Image "product/Shawl.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Shawl".'),
(241, '2015-05-03 05:35:30', 2, 8, '70', 'Shikara_Vastram_(silk)', 1, ''),
(242, '2015-05-03 05:36:51', 2, 8, '70', 'Shikara_Vastram_(silk)', 2, 'Changed content and keywords. Changed _order for Image "product/Shikara_Vastram_silk.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Shikara_Vastram_(silk)".'),
(243, '2015-05-03 05:43:15', 2, 8, '71', 'Mercury', 1, ''),
(244, '2015-05-03 05:44:06', 2, 8, '71', 'Mercury', 2, 'Changed content and keywords. Changed _order for Image "product/Mercury.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Mercury".'),
(245, '2015-05-03 05:48:53', 2, 8, '72', 'Sulphur', 1, ''),
(246, '2015-05-03 05:52:58', 2, 8, '72', 'Sulphur', 2, 'Changed content and keywords. Changed _order for Image "product/Sulphur.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Sulphur".'),
(247, '2015-05-03 05:56:16', 2, 8, '73', 'Nava_ratna_stones', 1, ''),
(248, '2015-05-03 05:57:37', 2, 8, '73', 'Nava_ratna_stones', 2, 'Changed content and keywords. Changed _order for Image "product/Nava_ratna_stones1.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Nava_ratna_stones".'),
(249, '2015-05-03 06:01:48', 2, 8, '74', 'Gold', 1, ''),
(250, '2015-05-03 06:05:53', 2, 8, '74', 'Gold', 2, 'Changed content and keywords. Changed _order for Image "product/Gold.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Gold".'),
(251, '2015-05-03 06:09:01', 2, 8, '75', 'Silver', 1, ''),
(252, '2015-05-03 06:15:13', 2, 8, '75', 'Silver', 2, 'Changed content and keywords. Changed _order for Image "product/Silver.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Silver".'),
(253, '2015-05-03 06:20:08', 2, 8, '76', 'Pearl', 1, ''),
(254, '2015-05-03 06:22:05', 2, 8, '76', 'Pearl', 2, 'Changed content and keywords. Changed _order for Image "product/Pearl.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Pearl".'),
(255, '2015-05-03 06:25:49', 2, 8, '77', 'Coral', 1, ''),
(256, '2015-05-03 06:27:09', 2, 8, '77', 'Coral', 2, 'Changed content and keywords. Changed _order for Image "product/Coral.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Coral".'),
(257, '2015-05-03 06:44:14', 2, 8, '78', 'Semi_Precious_Stones', 1, ''),
(258, '2015-05-03 06:54:53', 2, 8, '79', 'Tin', 1, ''),
(259, '2015-05-03 06:59:15', 2, 8, '79', 'Tin', 2, 'Changed content and keywords. Changed _order for Image "product/tin.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Tin".'),
(260, '2015-05-03 09:17:02', 2, 8, '80', 'Golden_Needle', 1, ''),
(261, '2015-05-03 09:18:04', 2, 8, '80', 'Golden_Needle', 2, 'Changed content and keywords. Changed _order for Image "product/Golden_Needle.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Golden_Needle".'),
(262, '2015-05-03 09:27:04', 2, 8, '81', 'Kurma_Yantra', 1, ''),
(263, '2015-05-03 09:29:45', 2, 8, '81', 'Kurma_Yantra', 2, 'Changed content and keywords. Changed _order for Image "product/kurma-yantra.png". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Kurma_Yantra".'),
(264, '2015-05-03 09:36:59', 2, 8, '81', 'Kurma_Yantra', 2, 'Changed content and keywords. Changed _order for Image "product/kurma-yantra.png".'),
(265, '2015-05-03 09:41:48', 2, 8, '82', 'Hanuman_Yantra', 1, ''),
(266, '2015-05-03 09:43:02', 2, 8, '82', 'Hanuman_Yantra', 2, 'Changed content and keywords. Changed _order for Image "product/Hanuman_Yantra.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Hanuman_Yantra".'),
(267, '2015-05-03 09:46:54', 2, 8, '83', 'Dattatreya_Yantra', 1, ''),
(268, '2015-05-03 09:47:47', 2, 8, '83', 'Dattatreya_Yantra', 2, 'Changed content and keywords. Changed _order for Image "product/dattatreya_yantra.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Dattatreya_Yantra".'),
(269, '2015-05-03 10:13:05', 2, 8, '84', 'Rama_Yantra', 1, ''),
(270, '2015-05-03 10:14:40', 2, 8, '84', 'Rama_Yantra', 2, 'Changed content and keywords. Changed _order for Image "product/Rama_Yantra.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Rama_Yantra".'),
(271, '2015-05-03 10:53:38', 2, 8, '85', 'Seeta_Yantra', 1, ''),
(272, '2015-05-03 10:54:57', 2, 8, '85', 'Seeta_Yantra', 2, 'Changed content and keywords. Changed _order for Image "product/Seeta_Yantra.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Seeta_Yantra".'),
(273, '2015-05-03 11:01:05', 2, 8, '86', 'Sri_Yantra', 1, ''),
(274, '2015-05-03 11:03:02', 2, 8, '86', 'Sri_Yantra', 2, 'Changed content and keywords. Changed _order for Image "product/Sri_Yantra.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Sri_Yantra".'),
(275, '2015-05-03 11:06:58', 2, 8, '87', 'Shiva_Yantra', 1, ''),
(276, '2015-05-03 11:08:10', 2, 8, '87', 'Shiva_Yantra', 2, 'Changed content and keywords. Changed _order for Image "product/Shiva_Yantra.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Shiva_Yantra".'),
(277, '2015-05-03 11:11:08', 2, 8, '88', 'Vaastu_Yantra', 1, ''),
(278, '2015-05-03 11:13:46', 2, 8, '88', 'Vaastu_Yantra', 2, 'Changed content and keywords. Changed _order for Image "product/Vaastu_Yantra.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Vaastu_Yantra".'),
(279, '2015-05-03 11:23:16', 2, 8, '89', 'Sudarshana_Yantra', 1, ''),
(280, '2015-05-03 11:25:11', 2, 8, '89', 'Sudarshana_Yantra', 2, 'Changed content and keywords. Changed _order for Image "product/Sudarshana_Yantra.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Sudarshana_Yantra".'),
(281, '2015-05-03 11:28:56', 2, 8, '90', 'Subrahmanya_Yantra', 1, ''),
(282, '2015-05-03 11:30:50', 2, 8, '90', 'Subrahmanya_Yantra', 2, 'Changed content and keywords. Changed _order for Image "product/Subrahmanya_Yantra.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Subrahmanya_Yantra".'),
(283, '2015-05-03 11:34:27', 2, 8, '91', 'Ganapati_Yantra', 1, ''),
(284, '2015-05-03 11:35:54', 2, 8, '91', 'Ganapati_Yantra', 2, 'Changed content and keywords. Changed _order for Image "product/Ganapati_Yantra.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Ganapati_Yantra".'),
(285, '2015-05-03 11:40:29', 2, 8, '92', 'Flags_in_Specified_Colours', 1, ''),
(286, '2015-05-03 11:42:22', 2, 8, '92', 'Flags_in_Specified_Colours', 2, 'Changed content and keywords. Added Image "product/Flags_in_Specified_Colours1.jpg". Changed _order for Image "product/Flags_in_Specified_Colours.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Flags_in_Specified_Colours".'),
(287, '2015-05-03 11:46:38', 2, 8, '93', 'Maha_Dhwaja', 1, ''),
(288, '2015-05-03 11:48:38', 2, 8, '93', 'Maha_Dhwaja', 2, 'Changed content, description and keywords. Changed _order for Image "product/Maha_Dhwaja.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Maha_Dhwaja".'),
(289, '2015-05-03 11:53:12', 2, 8, '94', 'Japa_Mala', 1, '');
INSERT INTO `django_admin_log` (`id`, `action_time`, `user_id`, `content_type_id`, `object_id`, `object_repr`, `action_flag`, `change_message`) VALUES
(290, '2015-05-03 11:54:06', 2, 8, '94', 'Japa_Mala', 2, 'Changed content, description and keywords. Changed _order for Image "product/Japa_Mala1.jpg". Changed _order for Image "product/Japa_Mala.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Japa_Mala".'),
(291, '2015-05-03 12:20:44', 2, 8, '95', 'Hand_Fan_small', 1, ''),
(292, '2015-05-03 12:21:47', 2, 8, '95', 'Hand_Fan_small', 2, 'Changed content and keywords. Changed _order for Image "product/Hand_Fan_small.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Hand_Fan_small".'),
(293, '2015-05-03 12:24:24', 2, 8, '96', 'Magnifying_Class', 1, ''),
(294, '2015-05-03 12:26:05', 2, 8, '96', 'Magnifying_Class', 2, 'Changed content, description and keywords. Changed _order for Image "product/Magnifying_Class.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Magnifying_Class".'),
(295, '2015-05-03 12:30:10', 2, 8, '96', 'Magnifying_Class', 2, 'Changed content and keywords. Changed _order for Image "product/Magnifying_Class.jpg".'),
(296, '2015-05-03 12:33:33', 2, 8, '97', 'Sruva', 1, ''),
(297, '2015-05-03 12:36:21', 2, 8, '97', 'Sruva', 2, 'Changed content, slug, description and keywords. Changed _order for Image "product/Sruva.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Sruva".'),
(298, '2015-05-03 12:45:01', 2, 8, '98', 'Sruk', 1, ''),
(299, '2015-05-03 12:46:14', 2, 8, '98', 'Sruk', 2, 'Changed content and keywords. Changed _order for Image "product/Sruk.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Sruk".'),
(300, '2015-05-03 13:07:11', 2, 8, '98', 'Sruk', 2, 'Changed content and keywords. Changed _order for Image "product/Sruk.jpg".'),
(301, '2015-05-03 13:11:46', 2, 8, '99', 'Bangles', 1, ''),
(302, '2015-05-03 13:11:59', 2, 8, '99', 'Bangles', 2, 'Changed content and keywords. Changed _order for Image "product/Bangles.jpg". Changed num_in_stock for product variation "Bangles".'),
(303, '2015-05-03 13:12:41', 2, 8, '99', 'Bangles', 2, 'Changed content and keywords. Changed _order for Image "product/Bangles.jpg". Changed unit_price, sale_price, sale_from and sale_to for product variation "Bangles".'),
(304, '2015-05-03 13:17:20', 2, 8, '100', 'Comb', 1, ''),
(305, '2015-05-03 13:18:20', 2, 8, '100', 'Comb', 2, 'Changed content and keywords. Changed _order for Image "product/Comb.jpg". Changed _order for Image "product/Comb1.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Comb".'),
(306, '2015-05-03 13:24:04', 2, 8, '101', 'Haldi_Kunkum_Satchets', 1, ''),
(307, '2015-05-03 13:25:01', 2, 8, '101', 'Haldi_Kunkum_Satchets', 2, 'Changed content and keywords. Changed _order for Image "product/Haldi_Kunkum_Satchets.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Haldi_Kunkum_Satchets".'),
(308, '2015-05-04 09:46:52', 2, 8, '102', 'Mirror', 1, ''),
(309, '2015-05-04 09:47:59', 2, 8, '102', 'Mirror', 2, 'Changed content and keywords. Changed _order for Image "product/Mirror.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Mirror".'),
(310, '2015-05-04 09:54:09', 2, 8, '103', 'Black_Beeds', 1, ''),
(311, '2015-05-04 10:05:02', 2, 8, '103', 'Black_Beeds', 2, 'Changed content and keywords. Changed _order for Image "product/Black_Beeds.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Black_Beeds".'),
(312, '2015-05-04 10:06:55', 2, 8, '104', 'Sandal_Powder', 1, ''),
(313, '2015-05-04 10:07:55', 2, 8, '104', 'Sandal_Powder', 2, 'Changed content and keywords. Changed _order for Image "product/Sandal_Powder.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Sandal_Powder".'),
(314, '2015-05-04 10:17:51', 2, 8, '105', 'Sumangali_Set(Small)', 1, ''),
(315, '2015-05-04 10:18:43', 2, 8, '105', 'Sumangali_Set(Small)', 2, 'Changed content and keywords. Changed _order for Image "product/Sumangali_SetSmall.jpg-c200". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Sumangali_Set(Small)".'),
(316, '2015-05-04 10:22:43', 2, 8, '102', 'Mirror', 2, 'Changed content and keywords. Changed file and _order for Image "product/Mirror_j8MVWGN.jpg".'),
(317, '2015-05-04 10:58:35', 2, 12, '7', 'Metalics', 1, ''),
(318, '2015-05-04 11:04:31', 2, 12, '8', 'Clothes', 1, ''),
(319, '2015-05-04 11:06:41', 2, 12, '9', 'Puja', 1, ''),
(320, '2015-05-04 11:07:23', 2, 12, '9', 'Puja', 2, 'Changed content, _meta_title, description and keywords.'),
(321, '2015-05-04 11:11:33', 2, 12, '10', 'Groceries', 1, ''),
(322, '2015-05-04 11:14:29', 2, 12, '9', 'Puja', 2, 'Changed content, products and keywords.'),
(323, '2015-05-04 11:14:58', 2, 12, '9', 'Puja', 2, 'Changed content, products and keywords.'),
(324, '2015-05-04 11:25:33', 2, 12, '11', 'Novelties', 1, ''),
(325, '2015-05-04 11:26:13', 2, 12, '6', 'Groceries', 3, ''),
(326, '2015-05-04 11:30:00', 2, 12, '12', 'Pansari_Shop', 1, ''),
(327, '2015-05-04 11:37:49', 2, 12, '13', 'Jewellry', 1, ''),
(328, '2015-05-04 11:40:49', 2, 12, '14', 'Bamboo_Bazar', 1, ''),
(329, '2015-05-04 11:47:05', 2, 12, '9', 'Puja', 2, 'Changed content, products and keywords.'),
(330, '2015-05-04 11:50:55', 2, 12, '7', 'Metalics', 2, 'Changed content, products and keywords.'),
(331, '2015-05-04 11:54:57', 2, 12, '15', 'Chemical_Shops', 1, ''),
(332, '2015-05-04 11:55:58', 2, 12, '7', 'Metalics', 2, 'Changed content, products and keywords.'),
(333, '2015-05-04 12:04:10', 2, 12, '8', 'Clothes', 2, 'Changed content, products and keywords.'),
(334, '2015-05-04 12:05:24', 2, 12, '9', 'Puja', 2, 'Changed content, products and keywords.'),
(335, '2015-05-04 12:32:51', 2, 12, '7', 'Metalics', 2, 'Changed content, in_menus and keywords.'),
(336, '2015-05-04 12:33:47', 2, 12, '8', 'Clothes', 2, 'Changed content, in_menus and keywords.'),
(337, '2015-05-04 12:34:11', 2, 12, '10', 'Groceries', 2, 'Changed content, in_menus and keywords.'),
(338, '2015-05-04 12:34:30', 2, 12, '11', 'Novelties', 2, 'Changed content, in_menus and keywords.'),
(339, '2015-05-04 12:34:49', 2, 12, '12', 'Pansari_Shop', 2, 'Changed content, in_menus and keywords.'),
(340, '2015-05-04 12:35:08', 2, 12, '13', 'Jewellry', 2, 'Changed content, in_menus and keywords.'),
(341, '2015-05-04 12:35:46', 2, 12, '15', 'Chemical_Shops', 2, 'Changed content, in_menus and keywords.'),
(342, '2015-05-04 12:36:31', 2, 12, '14', 'Bamboo_Bazar', 2, 'Changed content, in_menus and keywords.'),
(343, '2015-05-05 04:00:32', 2, 12, '1', 'Agricultural_Area', 2, 'Changed content, products and keywords.'),
(344, '2015-05-05 04:01:31', 2, 12, '2', 'Bamboo_Bazar', 2, 'Changed content, products and keywords.'),
(345, '2015-05-05 04:03:48', 2, 12, '3', 'Dairy', 2, 'Changed content, products and keywords.'),
(346, '2015-05-05 04:05:59', 2, 12, '4', 'Forest', 3, ''),
(347, '2015-05-05 04:07:07', 2, 12, '5', 'Garden', 2, 'Changed content, products and keywords.'),
(348, '2015-05-05 04:12:14', 2, 12, '16', 'Forest', 1, ''),
(349, '2015-05-05 04:43:39', 2, 8, '106', 'Hanging_Lamps', 1, ''),
(350, '2015-05-05 04:44:37', 2, 8, '106', 'Hanging_Lamps', 2, 'Changed content and keywords. Changed _order for Image "product/Hanging_Lamps.jpg". Changed _order for Image "product/hanging_-_lamps.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Hanging_Lamps".'),
(351, '2015-05-05 04:46:27', 2, 8, '107', 'Hanging_Bell', 1, ''),
(352, '2015-05-05 04:48:03', 2, 8, '107', 'Hanging_Bell', 2, 'Changed content and keywords. Changed _order for Image "product/hanging_bell1.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Hanging_Bell".'),
(353, '2015-05-05 04:48:39', 2, 12, '7', 'Metalics', 2, 'Changed content, products and keywords.'),
(354, '2015-05-07 17:19:13', 2, 8, '53', 'Hand Fan', 2, 'Changed content and keywords. Changed _order for Image "product/fan.jpg".'),
(355, '2015-05-07 17:23:42', 2, 12, '17', ' Hand Fan Description', 1, ''),
(356, '2015-05-07 17:31:32', 2, 8, '50', 'Umbrella Description', 2, 'Changed title, content, _meta_title, description and keywords. Changed _order for Image "product/sky-umbrella.jpg".'),
(357, '2015-05-07 17:32:49', 2, 8, '50', 'Umbrella Description', 2, 'Changed content, description and keywords. Changed _order for Image "product/sky-umbrella.jpg".'),
(358, '2015-05-07 17:39:14', 2, 8, '50', 'Umbrella ', 2, 'Changed title, content, description and keywords. Changed _order for Image "product/sky-umbrella.jpg".'),
(359, '2015-05-07 17:41:02', 2, 8, '50', 'Umbrella Desription', 2, 'Changed title, content, description and keywords. Changed _order for Image "product/sky-umbrella.jpg".'),
(360, '2015-05-07 17:42:53', 2, 8, '50', 'Umbrella Desription', 2, 'Changed content, description, gen_description and keywords. Changed _order for Image "product/sky-umbrella.jpg".'),
(361, '2015-05-07 17:42:54', 2, 8, '50', 'Umbrella Desription', 2, 'Changed content and keywords. Changed _order for Image "product/sky-umbrella.jpg".'),
(362, '2015-05-07 17:46:22', 2, 8, '95', 'Hand_Fan_small  Description', 2, 'Changed title, content, description and keywords. Changed _order for Image "product/Hand_Fan_small.jpg".'),
(363, '2015-05-07 17:48:56', 2, 8, '10', 'Sandal wood Description', 2, 'Changed title, content, description and keywords. Changed _order for Image "product/sandalwood.jpg".'),
(364, '2015-05-07 17:51:12', 2, 8, '10', 'Sandal wood Description', 2, 'Changed content, description and keywords. Changed _order for Image "product/sandalwood.jpg".'),
(365, '2015-05-07 17:52:38', 2, 8, '53', 'Hand Fan Description', 2, 'Changed title, content and keywords. Changed _order for Image "product/fan.jpg".'),
(366, '2015-05-07 17:54:26', 2, 8, '96', 'Magnifying_Class Description', 2, 'Changed title, content, description and keywords. Changed _order for Image "product/Magnifying_Class.jpg".'),
(367, '2015-05-07 17:56:20', 2, 8, '97', 'Sruva Description', 2, 'Changed title, content, description and keywords. Changed description and _order for Image "18" long Wooden Spoon to pour Ghee into the firepit.".'),
(368, '2015-05-07 17:57:25', 2, 8, '98', 'Sruk', 2, 'Changed content and keywords. Changed description and _order for Image "24" long Wooden Spoon to pour Ghee into the firepit.".'),
(369, '2015-05-07 17:58:24', 2, 8, '98', 'Sruk Description', 2, 'Changed title, content, description and keywords. Changed _order for Image "24" long Wooden Spoon to pour Ghee into the firepit.".'),
(370, '2015-05-07 18:02:09', 2, 8, '99', 'Bangles Description', 2, 'Changed title, content, description and keywords. Changed _order for Image "product/Bangles.jpg".'),
(371, '2015-05-07 18:04:02', 2, 8, '100', 'Comb Description', 2, 'Changed title, content, description and keywords. Changed _order for Image "product/Comb.jpg". Changed _order for Image "product/Comb1.jpg".'),
(372, '2015-05-07 18:09:28', 2, 8, '100', 'Comb Description', 2, 'Changed content and keywords. Changed _order for Image "product/Comb.jpg". Changed _order for Image "product/Comb1.jpg".'),
(373, '2015-05-07 18:13:38', 2, 8, '51', 'winna Description', 2, 'Changed title, content, description and keywords. Changed _order for Image "product/chata.jpg".'),
(374, '2015-05-07 18:20:43', 2, 8, '28', 'Vermilion_(Kunkum) Description', 2, 'Changed title, content, description and keywords. Changed _order for Image "product/Vermilion_Kunkum.jpg".'),
(375, '2015-05-07 18:25:41', 2, 8, '102', 'Mirror Description', 2, 'Changed title, content, _meta_title, description and keywords. Changed _order for Image "product/Mirror_j8MVWGN.jpg".'),
(376, '2015-05-07 18:27:28', 2, 8, '102', 'Mirror Description', 2, 'Changed keywords. Changed _order for Image "product/Mirror_j8MVWGN.jpg".'),
(377, '2015-05-07 18:28:23', 2, 8, '102', 'Mirror Description', 2, 'Changed content, description and keywords. Changed _order for Image "product/Mirror_j8MVWGN.jpg".'),
(378, '2015-05-07 18:30:22', 2, 8, '103', 'Black_Beeds Description', 2, 'Changed title, content, description and keywords. Changed _order for Image "product/Black_Beeds.jpg".'),
(379, '2015-05-07 18:37:35', 2, 8, '24', 'Bell_(Ghanta) Description', 2, 'Changed title, content, description and keywords. Changed _order for Image "product/Ghanta2.jpg".'),
(380, '2015-05-07 18:42:42', 2, 8, '54', 'PradhanaKalasham Description', 2, 'Changed title, content, description and keywords. Changed _order for Image "product/kalasam.jpg".'),
(381, '2015-05-07 18:49:28', 2, 8, '56', 'Copper/Bronze_Kalasha Description', 2, 'Changed title, content, description and keywords. Changed _order for Image "product/Bronze_Kalasam_LRYXhLD.jpg". Changed _order for Image "product/kal.jpg".'),
(382, '2015-05-07 18:53:15', 2, 8, '59', 'Deepa_Stambha Description', 2, 'Changed title, content, description and keywords. Changed _order for Image "product/deepastamba.jpg".'),
(383, '2015-05-07 18:55:54', 2, 8, '55', 'Copper/Bronze_Kalasha(small) Description', 2, 'Changed title, content and keywords. Changed _order for Image "product/co.jpg". Changed _order for Image "product/Bronze_Kalasam.jpg".'),
(384, '2015-05-07 18:59:24', 2, 8, '55', 'Copper/Bronze_Kalasha(small) Description', 2, 'Changed content, description and keywords. Changed _order for Image "product/co.jpg". Changed _order for Image "product/Bronze_Kalasam.jpg".'),
(385, '2015-05-07 19:13:10', 2, 8, '25', 'Brass/_Copper/_steel_plates Description', 2, 'Changed title, content, description and keywords. Changed _order for Image "product/brassplate.png". Changed _order for Image "product/copper_plate.jpg". Changed _order for Image "product/Stainless-Steel-Dinner-Plates.jpg".'),
(386, '2015-05-07 19:24:38', 2, 8, '60', 'Pancha_Patra_FullSet Description', 2, 'Changed title, content, _meta_title, description and keywords. Changed _order for Image "product/Pancha_Patra_set.jpg".'),
(387, '2015-05-07 19:34:57', 2, 8, '106', 'Hanging_Lamps Description', 2, 'Changed title, content, description and keywords. Changed _order for Image "product/Hanging_Lamps.jpg". Changed _order for Image "product/hanging_-_lamps.jpg".'),
(388, '2015-05-07 19:38:24', 2, 8, '107', 'Hanging_Bell  Description', 2, 'Changed title, content, description and keywords. Changed _order for Image "product/hanging_bell1.jpg".'),
(389, '2015-05-07 19:50:35', 2, 8, '61', 'Mangala_Arati Description', 2, 'Changed title, content, description and keywords. Changed _order for Image "product/Mangala_Arati_plate.jpg".'),
(390, '2015-05-07 19:53:18', 2, 8, '62', 'Buckets_Steel Description', 2, 'Changed title, content, description and keywords. Changed _order for Image "product/Buckets_Steel.jpeg".'),
(391, '2015-05-07 19:58:15', 2, 8, '45', 'cloth for cleaning Description', 2, 'Changed title, content, description and keywords. Changed _order for Image "product/Napkin.jpg".'),
(392, '2015-05-07 20:03:51', 2, 8, '64', 'Towels Description', 2, 'Changed title, content, description and keywords. Added Image "product/cotton_towels.jpg". Changed _order for Image "product/Towels.jpg".'),
(393, '2015-05-07 20:09:27', 2, 8, '65', 'Black_cotton_cloth Description', 2, 'Changed title, content, description and keywords. Changed _order for Image "product/Black_cotton_cloth.gif".'),
(394, '2015-05-07 20:15:57', 2, 8, '66', 'Napkin Description', 2, 'Changed title, content, description and keywords. Added Image "product/napkins.jpg". Changed _order for Image "product/Napkin_jwxsEs0.jpg".'),
(395, '2015-05-07 20:22:22', 2, 8, '108', 'Decorative_Clothes Description', 1, ''),
(396, '2015-05-07 20:24:57', 2, 8, '108', 'Decorative_Clothes Description', 2, 'Changed content, description and keywords. Added Image "product/radhakrishna-dress-DQ99_l.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Decorative_Clothes Description".'),
(397, '2015-05-07 20:27:56', 2, 8, '67', 'Blouse_Pieces Description', 2, 'Changed title, content, description and keywords. Changed _order for Image "product/Blouse_Pieces.jpg".'),
(398, '2015-05-07 20:31:49', 2, 8, '67', 'Blouse_Pieces Description', 2, 'Changed content and keywords. Added Image "product/blouse.jpg". Changed _order for Image "product/Blouse_Pieces.jpg".'),
(399, '2015-05-07 20:37:18', 2, 8, '68', 'Red_silk_cloth Description', 2, 'Changed title, content, description and keywords. Changed _order for Image "product/Red_silk_cloth.jpg".'),
(400, '2015-05-07 20:40:04', 2, 8, '69', 'Shawl Description', 2, 'Changed title, content, description and keywords. Changed _order for Image "product/Shawl.jpg".'),
(401, '2015-05-07 20:43:00', 2, 8, '70', 'Shikara_Vastram_(silk  Description', 2, 'Changed title, content, description and keywords. Changed _order for Image "product/Shikara_Vastram_silk.jpg".'),
(402, '2015-05-07 20:45:03', 2, 8, '48', 'Coconut_Coir Description', 2, 'Changed title, content, description and keywords. Changed _order for Image "product/coconut-coir-fibre_67sMOeh.jpg".'),
(403, '2015-05-07 20:46:33', 2, 8, '13', ' Coconut(coir)', 3, ''),
(404, '2015-05-07 20:48:00', 2, 8, '11', 'Coconuts Description', 2, 'Changed title, content, description and keywords. Changed _order for Image "product/coconut.jpg".'),
(405, '2015-05-07 20:54:42', 2, 8, '19', 'Black_Jeera Description', 2, 'Changed title, content, description and keywords. Changed _order for Image "product/black_jeera.jpg".'),
(406, '2015-05-07 20:56:08', 2, 8, '19', 'Black_Jeera Description', 2, 'Changed content and keywords. Changed _order for Image "product/black_jeera.jpg".'),
(407, '2015-05-07 20:59:26', 2, 8, '33', 'Camphor_Block Description', 2, 'Changed title, content, description and keywords. Changed _order for Image "product/camphorblock.jpg".'),
(408, '2015-05-07 21:03:19', 2, 8, '35', 'Areca_Nuts (White Round) Description', 2, 'Changed title, content, description and keywords. Changed _order for Image "product/areca-nut.jpg".'),
(409, '2015-05-07 21:05:37', 2, 8, '37', 'Areca_Nuts (half) Description', 2, 'Changed title, content, description and keywords. Changed _order for Image "product/A_close_up_of_Areca_nut.JPG".'),
(410, '2015-05-07 21:08:49', 2, 8, '38', 'Lamancha_(vattiveru) Description', 2, 'Changed title, content, description and keywords. Changed _order for Image "product/lavancha.jpg".'),
(411, '2015-05-07 21:11:10', 2, 8, '39', 'Guggilam Description', 2, 'Changed title, content, description and keywords. Changed _order for Image "product/Guggilam.jpg".'),
(412, '2015-05-07 21:14:11', 2, 8, '40', 'Sambrani Description', 2, 'Changed title, content, description and keywords. Changed _order for Image "product/sambrani_dhupa.JPG".'),
(413, '2015-05-07 21:18:33', 2, 8, '40', 'Sambrani Description', 2, 'Changed content, description and keywords. Changed file and _order for Image "product/sambrani.jpg".'),
(414, '2015-05-07 21:28:14', 2, 8, '9', 'Honey Wax Description', 2, 'Changed title, content, description and keywords. Changed file and _order for Image "product/natural-honey-wax-250x250.jpg".'),
(415, '2015-05-07 21:29:30', 2, 8, '9', 'Honey Wax Description', 2, 'Changed content and keywords. Changed _order for Image "product/natural-honey-wax-250x250.jpg".'),
(416, '2015-05-07 21:32:19', 2, 8, '41', 'Copra Description', 2, 'Changed title, content, description and keywords. Changed _order for Image "product/Copra.jpg".'),
(417, '2015-05-07 21:34:30', 2, 8, '42', 'Leaf_Plate Description', 2, 'Changed title, content, description and keywords. Changed _order for Image "product/Leaf_Plate.jpg".'),
(418, '2015-05-07 21:36:39', 2, 8, '43', 'Jatamamsi Description', 2, 'Changed title, content, description and keywords. Changed _order for Image "product/Jatamamsi.jpg".'),
(419, '2015-05-07 21:37:59', 2, 8, '52', 'Yagnopaveetam Description', 2, 'Changed title, content, description and keywords. Changed _order for Image "product/Yagnopavitham_1TkIhIk.jpg".'),
(420, '2015-05-07 21:39:08', 2, 8, '46', 'Thread(Jute) Description', 2, 'Changed title, content, description and keywords. Changed _order for Image "product/Jute_Rope.jpg".'),
(421, '2015-05-07 21:40:59', 2, 8, '12', 'Darbha (Bundles) Description', 2, 'Changed title, content, _meta_title, description and keywords. Changed _order for Image "product/darbha.jpg".'),
(422, '2015-05-07 21:41:54', 2, 8, '12', 'Darbha (Bundles) Description', 2, 'Changed content, description and keywords. Changed _order for Image "product/darbha.jpg".'),
(423, '2015-05-07 21:43:49', 2, 8, '2', 'Paddy Description', 2, 'Changed title, content, description and keywords. Changed _order for Image "product/paady_-1.jpg".'),
(424, '2015-05-07 21:45:41', 2, 8, '18', 'Samit_Ashwattha Description', 2, 'Changed title, content, description and keywords. Changed _order for Image "product/samit.jpg".'),
(425, '2015-05-07 21:47:58', 2, 8, '14', 'Samit Assorted Description', 2, 'Changed title, content, description and keywords. Changed _order for Image "product/samit1.jpg".'),
(426, '2015-05-07 21:50:49', 2, 8, '15', 'Samit navagraha Description', 2, 'Changed title, content, description and keywords. Changed _order for Image "product/Navagraha_samit.jpg".'),
(427, '2015-05-07 22:24:40', 2, 8, '47', 'Twine_Thread Description', 2, 'Changed title, content, description and keywords. Changed _order for Image "product/cotton-twine.jpg".'),
(428, '2015-05-07 22:26:05', 2, 8, '48', 'Coconut_Coir Description', 2, 'Changed content, description and keywords. Changed _order for Image "product/coconut-coir-fibre_67sMOeh.jpg".'),
(429, '2015-05-07 22:28:14', 2, 8, '6', 'Cowdungcakes Description', 2, 'Changed title, content, description and keywords. Changed _order for Image "product/cowdung.jpg".'),
(430, '2015-05-07 22:36:37', 2, 8, '5', 'BambooBasket Description', 2, 'Changed title, content, description and keywords. Changed _order for Image "product/bamboo-basket-1_LmjbG4a.jpg".'),
(431, '2015-05-07 22:38:03', 2, 8, '4', 'BambooTray Description', 2, 'Changed title, content, description and keywords. Changed _order for Image "product/round_bamboo_tray1.jpg".'),
(432, '2015-05-07 22:39:48', 2, 8, '104', 'Sandal_Powder Description', 2, 'Changed title, content, description and keywords. Changed _order for Image "product/Sandal_Powder.jpg".'),
(433, '2015-05-07 22:41:13', 2, 8, '105', 'Sumangali_Set(Small) Description', 2, 'Changed title, content, description and keywords. Changed _order for Image "product/Sumangali_SetSmall.jpg-c200".'),
(434, '2015-05-07 22:48:18', 2, 8, '92', 'Flags_in_Specified_Colours Description', 2, 'Changed title, content, description and keywords. Changed _order for Image "product/Flags_in_Specified_Colours.jpg". Changed _order for Image "product/Flags_in_Specified_Colours1.jpg".'),
(435, '2015-05-07 22:50:08', 2, 8, '31', 'Vibhuthi Decription', 2, 'Changed title, content, description and keywords. Changed _order for Image "product/Vibhuthi.jpg".'),
(436, '2015-05-07 22:51:30', 2, 8, '27', 'Turmeric_Powder Description', 2, 'Changed title, content, description and keywords. Changed _order for Image "product/Turmeric_Powder.jpg".'),
(437, '2015-05-07 22:53:50', 2, 8, '29', 'Sindhuram Description', 2, 'Changed title, content, description and keywords. Changed _order for Image "product/Naaga-Sindhuram-.jpg".'),
(438, '2015-05-07 22:55:56', 2, 8, '23', 'Turmeric_Roots Description', 2, 'Changed title, content, description and keywords. Changed _order for Image "product/turmaric_roots.jpg".'),
(439, '2015-05-07 22:56:57', 2, 8, '32', 'Cotton_Wicks(2types) Description', 2, 'Changed title, content, description and keywords. Changed _order for Image "product/cotton_wicks.JPG". Changed _order for Image "product/oil-lamp-wicks-.jpg".'),
(440, '2015-05-07 22:58:58', 2, 8, '63', 'Mattelu_(toe_rings) Description', 2, 'Changed title, content, description and keywords. Changed _order for Image "product/Mattelu_toe_rings.jpg".'),
(441, '2015-05-07 23:00:41', 2, 8, '73', 'Nava_ratna_stones Description', 2, 'Changed title, content, description and keywords. Changed _order for Image "product/Nava_ratna_stones1.jpg".'),
(442, '2015-05-07 23:03:18', 2, 8, '78', 'Semi_Precious_Stones Description', 2, 'Changed title, content, description and keywords. Changed _order for Image "product/Semi_Precious_Stones.jpg".'),
(443, '2015-05-07 23:04:14', 2, 8, '80', 'Golden_Needle Description', 2, 'Changed title, content, description and keywords. Changed _order for Image "product/Golden_Needle.jpg".'),
(444, '2015-05-07 23:05:24', 2, 8, '49', 'Wooden_paduka_set Description', 2, 'Changed title, content, description and keywords. Changed _order for Image "product/Wooden_paduka_set.jpg".'),
(445, '2015-05-07 23:06:43', 2, 8, '94', 'Japa_Mala Description', 2, 'Changed title, content, description and keywords. Changed _order for Image "product/Japa_Mala1.jpg". Changed _order for Image "product/Japa_Mala.jpg".'),
(446, '2015-05-07 23:07:45', 2, 8, '81', 'Kurma_Yantra Description', 2, 'Changed title, content, description and keywords. Changed _order for Image "product/kurma-yantra.png".'),
(447, '2015-05-07 23:11:33', 2, 8, '82', 'Hanuman_Yantra Description', 2, 'Changed title, content, description and keywords. Changed _order for Image "product/Hanuman_Yantra.jpg".'),
(448, '2015-05-07 23:13:17', 2, 8, '83', 'Dattatreya_Yantra Description', 2, 'Changed title, content, _meta_title, description and keywords. Changed _order for Image "product/dattatreya_yantra.jpg".'),
(449, '2015-05-07 23:14:42', 2, 8, '84', 'Rama_Yantra Description', 2, 'Changed title, content, description and keywords. Changed _order for Image "product/Rama_Yantra.jpg".'),
(450, '2015-05-07 23:18:27', 2, 8, '85', 'Seeta_Yantra Description', 2, 'Changed title, content, description and keywords. Changed _order for Image "product/Seeta_Yantra.jpg".'),
(451, '2015-05-07 23:20:03', 2, 8, '86', 'Sri_Yantra Description', 2, 'Changed title, content, description and keywords. Changed _order for Image "product/Sri_Yantra.jpg".'),
(452, '2015-05-07 23:21:31', 2, 8, '88', 'Vaastu_Yantra Description', 2, 'Changed title, content, description and keywords. Changed _order for Image "product/Vaastu_Yantra.jpg".'),
(453, '2015-05-07 23:24:12', 2, 8, '89', 'Sudarshana_Yantra Description', 2, 'Changed title, content, description and keywords. Changed _order for Image "product/Sudarshana_Yantra.jpg".'),
(454, '2015-05-07 23:25:22', 2, 8, '90', 'Subrahmanya_Yantra Description', 2, 'Changed title, content, description and keywords. Changed _order for Image "product/Subrahmanya_Yantra.jpg".'),
(455, '2015-05-07 23:27:08', 2, 8, '91', 'Ganapati_Yantra Description', 2, 'Changed title, content, description and keywords. Changed _order for Image "product/Ganapati_Yantra.jpg".'),
(456, '2015-05-07 23:40:13', 2, 8, '109', 'Copper Description', 1, ''),
(457, '2015-05-07 23:41:47', 2, 8, '109', 'Copper Description', 2, 'Changed content and keywords. Changed _order for Image "product/copr.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Copper Description".'),
(458, '2015-05-07 23:52:13', 2, 8, '110', 'Bronze Description', 1, ''),
(459, '2015-05-07 23:57:03', 2, 8, '110', 'Bronze Description', 2, 'Changed content, description and keywords. Added Image "product/bronze-gold-bellagio1_1.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Bronze Description".'),
(460, '2015-05-08 00:13:19', 2, 8, '111', 'Brass Description', 1, ''),
(461, '2015-05-08 00:16:57', 2, 8, '111', 'Brass Description', 2, 'Changed content and keywords. Changed _order for Image "product/brass1.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Brass Description".'),
(462, '2015-05-08 00:31:19', 2, 8, '112', 'Lead Description', 1, ''),
(463, '2015-05-08 00:31:54', 2, 8, '112', 'Lead Description', 2, 'Changed content and keywords. Changed _order for Image "product/lead-cut.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Lead Description".'),
(464, '2015-05-08 00:40:22', 2, 8, '113', 'Tin  Description', 1, ''),
(465, '2015-05-08 00:42:50', 2, 8, '113', 'Tin  Description', 2, 'Changed content, description and keywords. Changed _order for Image "product/tin_7bo8kWa.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Tin  Description".'),
(466, '2015-05-08 16:10:39', 2, 8, '114', 'Silver Description', 1, ''),
(467, '2015-05-08 16:11:26', 2, 8, '114', 'Silver Description', 2, 'Changed content, description and keywords. Changed _order for Image "product/Silver_jKRMoCZ.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Silver Description".'),
(468, '2015-05-08 16:49:55', 2, 8, '115', 'Gold Description', 1, ''),
(469, '2015-05-08 16:54:49', 2, 8, '115', 'Gold Description', 2, 'Changed content, description and keywords. Added Image "product/gold1.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Gold Description".'),
(470, '2015-05-08 17:29:06', 2, 8, '116', 'Mangalyam Description', 1, ''),
(471, '2015-05-08 17:43:19', 2, 8, '116', 'Mangalyam Description', 2, 'Changed content, description and keywords. Added Image "product/mangalyam.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Mangalyam Description".'),
(472, '2015-05-08 17:58:04', 2, 8, '70', 'Shikara_Vastram_(silk) Description', 2, 'Changed title, content and keywords. Changed _order for Image "product/Shikara_Vastram_silk.jpg".'),
(473, '2015-05-08 18:17:57', 2, 8, '117', '"Lamp_with_stand(30"" Height) Swan on the top  (12 Kg)" Description', 1, ''),
(474, '2015-05-08 18:19:42', 2, 8, '117', '"Lamp_with_stand(30"" Height) Swan on the top  (12 Kg)" Description', 2, 'Changed content and keywords. Added Image "product/Lamp_with_stand30.jpg".'),
(475, '2015-05-08 18:27:16', 2, 8, '117', '"Lamp_with_stand(30"" Height) Swan on the top  (12 Kg)" Description', 2, 'Changed content and keywords. Added Image "product/standing-brass-oil-lamp-AY03_l.jpg". Changed _order for Image "product/Lamp_with_stand30.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation ""Lamp_with_stand(30"" Height) Swan on the top  (12 Kg)" Description".'),
(476, '2015-05-08 18:35:45', 2, 8, '118', 'Hanging Lamps (Lakshmi Design) Description', 1, ''),
(477, '2015-05-08 18:36:14', 2, 8, '118', 'Hanging Lamps (Lakshmi Design) Description', 2, 'Changed content and keywords. Changed _order for Image "product/Hanging_Lamps_Lakshmi_Design.JPG". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Hanging Lamps (Lakshmi Design) Description".'),
(478, '2015-05-08 18:48:14', 2, 8, '119', 'Saree Description', 1, ''),
(479, '2015-05-08 18:49:00', 2, 8, '119', 'Saree Description', 2, 'Changed content and keywords. Changed _order for Image "product/saries.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Saree Description".'),
(480, '2015-05-08 19:04:50', 2, 8, '120', 'Ekaarati Description', 1, ''),
(481, '2015-05-08 19:07:39', 2, 8, '120', 'Ekaarati Description', 2, 'Changed content and keywords. Changed _order for Image "product/brass-ekarathi.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Ekaarati Description".'),
(482, '2015-05-08 19:18:25', 2, 12, '9', 'Puja', 2, 'Changed content, in_menus and keywords.'),
(483, '2015-05-08 19:18:54', 2, 12, '16', 'Forest', 2, 'Changed in_menus and keywords.'),
(484, '2015-05-09 02:48:35', 2, 8, '121', 'Black Wax Description', 1, ''),
(485, '2015-05-09 02:53:19', 2, 8, '121', 'Black Wax Description', 2, 'Changed content and keywords. Changed _order for Image "product/BlackWaxCheddar_Large.jpg". Changed num_in_stock, unit_price, sale_price, sale_from and sale_to for product variation "Black Wax Description".'),
(486, '2015-05-09 02:53:50', 2, 8, '28', 'Vermilion_(Kunkum) Description', 2, 'Changed content and keywords. Changed _order for Image "product/Vermilion_Kunkum.jpg". Changed num_in_stock for product variation "Vermilion_(Kunkum) Description".'),
(487, '2015-05-09 02:56:43', 2, 8, '95', 'Hand_Fan_small  Description', 2, 'Changed content, description and keywords. Changed file and _order for Image "product/Wholesa-font-b-fans.jpg". Changed num_in_stock for product variation "Hand_Fan_small  Description".'),
(488, '2015-05-09 02:57:00', 2, 8, '53', 'Hand Fan Description', 2, 'Changed content and keywords. Changed _order for Image "product/fan.jpg".'),
(489, '2015-05-08 15:11:21', 2, 8, '1', 'Django Pony', 3, ''),
(490, '2015-05-08 15:13:06', 2, 8, '53', 'Hand Fan ', 2, 'Changed title, content, categories and keywords. Changed _order for Image "product/fan.jpg".'),
(491, '2015-05-08 15:13:46', 2, 12, '17', ' Hand Fan ', 2, 'Changed title, content and keywords.'),
(492, '2015-05-08 15:15:14', 2, 3, '1', 'admin', 3, '');

-- --------------------------------------------------------

--
-- Table structure for table `django_comments`
--

CREATE TABLE IF NOT EXISTS `django_comments` (
  `id` int(11) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `object_pk` text NOT NULL,
  `site_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_email` varchar(75) NOT NULL,
  `user_url` varchar(200) NOT NULL,
  `comment` text NOT NULL,
  `submit_date` datetime NOT NULL,
  `ip_address` char(39) DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL,
  `is_removed` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_comments_37ef4eb4` (`content_type_id`),
  KEY `django_comments_99732b5c` (`site_id`),
  KEY `django_comments_6340c63c` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_comment_flags`
--

CREATE TABLE IF NOT EXISTS `django_comment_flags` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `flag` varchar(30) NOT NULL,
  `flag_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`comment_id`,`flag`),
  KEY `django_comment_flags_6340c63c` (`user_id`),
  KEY `django_comment_flags_3925f323` (`comment_id`),
  KEY `django_comment_flags_9f00eb17` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `name`, `app_label`, `model`) VALUES
(1, 'permission', 'auth', 'permission'),
(2, 'group', 'auth', 'group'),
(3, 'user', 'auth', 'user'),
(4, 'content type', 'contenttypes', 'contenttype'),
(5, 'redirect', 'redirects', 'redirect'),
(6, 'session', 'sessions', 'session'),
(7, 'site', 'sites', 'site'),
(8, 'Product', 'shop', 'product'),
(9, 'Image', 'shop', 'productimage'),
(10, 'Product option', 'shop', 'productoption'),
(11, 'product variation', 'shop', 'productvariation'),
(12, 'Product category', 'shop', 'category'),
(13, 'Order', 'shop', 'order'),
(14, 'cart', 'shop', 'cart'),
(15, 'cart item', 'shop', 'cartitem'),
(16, 'order item', 'shop', 'orderitem'),
(17, 'product action', 'shop', 'productaction'),
(18, 'Sale', 'shop', 'sale'),
(19, 'Discount code', 'shop', 'discountcode'),
(20, 'Setting', 'conf', 'setting'),
(21, 'Site permission', 'core', 'sitepermission'),
(22, 'Comment', 'generic', 'threadedcomment'),
(23, 'Keyword', 'generic', 'keyword'),
(24, 'assigned keyword', 'generic', 'assignedkeyword'),
(25, 'Rating', 'generic', 'rating'),
(26, 'Blog post', 'blog', 'blogpost'),
(27, 'Blog Category', 'blog', 'blogcategory'),
(28, 'Form', 'forms', 'form'),
(29, 'Field', 'forms', 'field'),
(30, 'Form entry', 'forms', 'formentry'),
(31, 'Form field entry', 'forms', 'fieldentry'),
(32, 'Page', 'pages', 'page'),
(33, 'Rich text page', 'pages', 'richtextpage'),
(34, 'Link', 'pages', 'link'),
(35, 'Gallery', 'galleries', 'gallery'),
(36, 'Image', 'galleries', 'galleryimage'),
(37, 'Twitter query', 'twitter', 'query'),
(38, 'Tweet', 'twitter', 'tweet'),
(39, 'log entry', 'admin', 'logentry'),
(40, 'comment', 'comments', 'comment'),
(41, 'comment flag', 'comments', 'commentflag');

-- --------------------------------------------------------

--
-- Table structure for table `django_redirect`
--

CREATE TABLE IF NOT EXISTS `django_redirect` (
  `id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  `old_path` varchar(200) NOT NULL,
  `new_path` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `site_id` (`site_id`,`old_path`),
  KEY `django_redirect_99732b5c` (`site_id`),
  KEY `django_redirect_acd0874a` (`old_path`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` text NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_b7b81f0c` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('cuiv1qiy3pt3aettlhjtzvo90ooqjkql', 'YzAxY2NkMzUzMDVhYWJlNTI3ZjM5ZGFiYTkwZmQ1M2RmNDdhMmZiMDp7Il9hdXRoX3VzZXJfaWQiOjIsIl9hdXRoX3VzZXJfYmFja2VuZCI6Im1lenphbmluZS5jb3JlLmF1dGhfYmFja2VuZHMuTWV6emFuaW5lQmFja2VuZCIsImNhcnQiOm51bGx9', '2015-05-15 23:19:14'),
('i3ty34t198o0r19arg034foo6yche4va', 'ZDQ4YzE4NGU0MTdhMWI2ZmNiMzhlZTlhMTI4MmE5ZDA1OGMyNjRiNTp7fQ==', '2015-05-22 15:17:23'),
('jhb2lgcob5mdc73metio5z9zhwp1twff', 'NjRkZDczNTBhZTA3OTdjZGU5MTY2OWU0ZGQ5ODFkNmY5MTlmYWIzMTp7Il9hdXRoX3VzZXJfaWQiOjIsIl9hdXRoX3VzZXJfYmFja2VuZCI6Im1lenphbmluZS5jb3JlLmF1dGhfYmFja2VuZHMuTWV6emFuaW5lQmFja2VuZCJ9', '2015-05-21 17:07:00'),
('kqxubtjran2gqpfmlhrq1fzxuxpskijp', 'NjRkZDczNTBhZTA3OTdjZGU5MTY2OWU0ZGQ5ODFkNmY5MTlmYWIzMTp7Il9hdXRoX3VzZXJfaWQiOjIsIl9hdXRoX3VzZXJfYmFja2VuZCI6Im1lenphbmluZS5jb3JlLmF1dGhfYmFja2VuZHMuTWV6emFuaW5lQmFja2VuZCJ9', '2015-05-16 16:59:39');

-- --------------------------------------------------------

--
-- Table structure for table `django_site`
--

CREATE TABLE IF NOT EXISTS `django_site` (
  `id` int(11) NOT NULL,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_site`
--

INSERT INTO `django_site` (`id`, `domain`, `name`) VALUES
(1, '127.0.0.1:8000', 'Default');

-- --------------------------------------------------------

--
-- Table structure for table `forms_field`
--

CREATE TABLE IF NOT EXISTS `forms_field` (
  `id` int(11) NOT NULL,
  `_order` int(11) DEFAULT NULL,
  `form_id` int(11) NOT NULL,
  `label` varchar(200) NOT NULL,
  `field_type` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL,
  `visible` tinyint(1) NOT NULL,
  `choices` varchar(1000) NOT NULL,
  `default` varchar(2000) NOT NULL,
  `placeholder_text` varchar(100) NOT NULL,
  `help_text` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `forms_field_c3d79a6c` (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `forms_fieldentry`
--

CREATE TABLE IF NOT EXISTS `forms_fieldentry` (
  `id` int(11) NOT NULL,
  `entry_id` int(11) NOT NULL,
  `field_id` int(11) NOT NULL,
  `value` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `forms_fieldentry_e8d920b6` (`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `forms_form`
--

CREATE TABLE IF NOT EXISTS `forms_form` (
  `page_ptr_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `button_text` varchar(50) NOT NULL,
  `response` text NOT NULL,
  `send_email` tinyint(1) NOT NULL,
  `email_from` varchar(75) NOT NULL,
  `email_copies` varchar(200) NOT NULL,
  `email_subject` varchar(200) NOT NULL,
  `email_message` text NOT NULL,
  PRIMARY KEY (`page_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `forms_formentry`
--

CREATE TABLE IF NOT EXISTS `forms_formentry` (
  `id` int(11) NOT NULL,
  `form_id` int(11) NOT NULL,
  `entry_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `forms_formentry_c3d79a6c` (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `galleries_gallery`
--

CREATE TABLE IF NOT EXISTS `galleries_gallery` (
  `page_ptr_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `zip_import` varchar(100) NOT NULL,
  PRIMARY KEY (`page_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `galleries_galleryimage`
--

CREATE TABLE IF NOT EXISTS `galleries_galleryimage` (
  `id` int(11) NOT NULL,
  `_order` int(11) DEFAULT NULL,
  `gallery_id` int(11) NOT NULL,
  `file` varchar(200) NOT NULL,
  `description` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `galleries_galleryimage_579c518c` (`gallery_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `generic_assignedkeyword`
--

CREATE TABLE IF NOT EXISTS `generic_assignedkeyword` (
  `id` int(11) NOT NULL,
  `_order` int(11) DEFAULT NULL,
  `keyword_id` int(11) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `object_pk` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `generic_assignedkeyword_0e202173` (`keyword_id`),
  KEY `generic_assignedkeyword_37ef4eb4` (`content_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `generic_assignedkeyword`
--

INSERT INTO `generic_assignedkeyword` (`id`, `_order`, `keyword_id`, `content_type_id`, `object_pk`) VALUES
(11, 0, 11, 8, 17),
(19, 0, 18, 8, 21),
(20, 0, 19, 8, 22),
(21, 1, 20, 8, 22),
(22, 2, 21, 8, 22),
(26, 0, 25, 8, 26),
(50, 0, 43, 8, 44),
(72, 0, 28, 8, 30),
(76, 0, 33, 8, 34),
(78, 0, 35, 8, 36),
(81, 0, 17, 8, 20),
(94, 0, 3, 8, 8),
(106, 0, 55, 8, 57),
(107, 0, 56, 8, 58),
(120, 0, 69, 8, 71),
(121, 0, 70, 8, 72),
(123, 0, 72, 8, 74),
(124, 0, 73, 8, 75),
(125, 0, 74, 8, 76),
(126, 0, 75, 8, 77),
(134, 0, 83, 8, 87),
(140, 0, 89, 8, 93),
(148, 0, 97, 8, 101),
(165, 0, 44, 12, 8),
(166, 0, 23, 12, 10),
(167, 0, 104, 12, 15),
(168, 0, 103, 12, 14),
(169, 0, 13, 12, 1),
(170, 0, 14, 12, 3),
(171, 0, 16, 12, 5),
(175, 0, 101, 12, 7),
(179, 0, 109, 8, 50),
(182, 0, 111, 8, 10),
(184, 0, 92, 8, 96),
(185, 0, 93, 8, 97),
(186, 0, 94, 8, 98),
(187, 0, 95, 8, 99),
(188, 0, 96, 8, 100),
(189, 0, 112, 8, 51),
(191, 0, 113, 8, 102),
(192, 0, 114, 8, 103),
(193, 0, 115, 8, 24),
(194, 0, 116, 8, 54),
(195, 1, 117, 8, 54),
(196, 0, 118, 8, 56),
(197, 1, 117, 8, 56),
(198, 0, 119, 8, 59),
(199, 1, 120, 8, 59),
(200, 0, 118, 8, 55),
(201, 1, 117, 8, 55),
(202, 0, 121, 8, 25),
(203, 0, 58, 8, 60),
(204, 0, 122, 8, 106),
(205, 1, 123, 8, 106),
(206, 2, 124, 8, 106),
(207, 0, 125, 8, 107),
(208, 1, 126, 8, 107),
(209, 2, 127, 8, 107),
(210, 3, 128, 8, 107),
(211, 0, 59, 8, 61),
(212, 0, 60, 8, 62),
(213, 0, 44, 8, 45),
(214, 0, 62, 8, 64),
(215, 0, 63, 8, 65),
(216, 0, 64, 8, 66),
(217, 0, 129, 8, 108),
(218, 0, 65, 8, 67),
(219, 0, 66, 8, 68),
(220, 0, 67, 8, 69),
(222, 0, 6, 8, 11),
(223, 0, 32, 8, 33),
(224, 0, 34, 8, 35),
(225, 0, 36, 8, 37),
(226, 0, 37, 8, 38),
(227, 0, 38, 8, 39),
(228, 0, 39, 8, 40),
(229, 0, 4, 8, 9),
(230, 0, 40, 8, 41),
(231, 0, 40, 8, 42),
(232, 0, 42, 8, 43),
(233, 0, 51, 8, 52),
(234, 0, 45, 8, 46),
(235, 0, 130, 8, 12),
(236, 0, 131, 8, 2),
(237, 0, 12, 8, 18),
(238, 0, 9, 8, 14),
(239, 0, 10, 8, 15),
(240, 0, 46, 8, 47),
(241, 0, 1, 8, 5),
(242, 0, 2, 8, 4),
(243, 0, 99, 8, 104),
(244, 0, 100, 8, 105),
(245, 0, 88, 8, 92),
(246, 0, 29, 8, 31),
(247, 0, 50, 8, 27),
(248, 0, 27, 8, 29),
(249, 0, 22, 8, 23),
(250, 0, 31, 8, 32),
(251, 0, 61, 8, 63),
(252, 0, 71, 8, 73),
(253, 0, 76, 8, 78),
(254, 0, 77, 8, 80),
(255, 0, 132, 8, 49),
(256, 0, 90, 8, 94),
(257, 0, 78, 8, 81),
(258, 0, 79, 8, 82),
(259, 0, 80, 8, 84),
(260, 0, 81, 8, 85),
(261, 0, 82, 8, 86),
(262, 0, 84, 8, 88),
(263, 0, 85, 8, 89),
(264, 0, 86, 8, 90),
(265, 0, 87, 8, 91),
(266, 0, 133, 8, 109),
(267, 0, 134, 8, 110),
(268, 0, 135, 8, 111),
(269, 0, 136, 8, 112),
(270, 0, 137, 8, 113),
(271, 0, 72, 8, 115),
(272, 0, 138, 8, 116),
(273, 0, 68, 8, 70),
(274, 0, 139, 8, 117),
(275, 0, 140, 8, 118),
(276, 0, 141, 8, 119),
(277, 0, 142, 8, 120),
(278, 0, 102, 12, 9),
(279, 0, 15, 12, 16),
(280, 0, 143, 8, 121),
(281, 0, 26, 8, 28),
(282, 0, 110, 8, 95),
(283, 1, 108, 8, 95),
(284, 0, 52, 8, 53),
(285, 0, 107, 12, 17),
(286, 1, 108, 12, 17);

-- --------------------------------------------------------

--
-- Table structure for table `generic_keyword`
--

CREATE TABLE IF NOT EXISTS `generic_keyword` (
  `id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `slug` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `generic_keyword_99732b5c` (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `generic_keyword`
--

INSERT INTO `generic_keyword` (`id`, `site_id`, `title`, `slug`) VALUES
(1, 1, 'BambooBasket', 'bamboobasket'),
(2, 1, 'BambooTray', 'bambootray'),
(3, 1, 'Gomayam', 'gomayam'),
(4, 1, 'Honey Wax', 'honey-wax'),
(5, 1, 'Sandal wood', 'sandal-wood'),
(6, 1, 'Coconuts', 'coconuts'),
(8, 1, 'Coconutcoir', 'coconutcoir'),
(9, 1, 'Samit Assorted', 'samit-assorted'),
(10, 1, 'Samit navagraha', 'samit-navagraha'),
(11, 1, 'samit-palasham', 'samit-palasham'),
(12, 1, 'SamitAshwattha', 'samitashwattha'),
(13, 1, 'AgriculturalArea', 'agriculturalarea'),
(14, 1, 'Dairy', 'dairy'),
(15, 1, 'Forest', 'forest'),
(16, 1, 'Garden', 'garden'),
(17, 1, 'PachchaKarpooram', 'pachchakarpooram'),
(18, 1, 'PoppedRiceLaja', 'poppedricelaja'),
(19, 1, 'Threadwhite', 'threadwhite'),
(20, 1, 'red', 'red'),
(21, 1, 'yellow', 'yellow'),
(22, 1, 'TurmericRoots', 'turmericroots'),
(23, 1, 'Groceries', 'groceries'),
(25, 1, 'Brassvesselswithladlelidhalflitre', 'brassvesselswithladlelidhalflitre'),
(26, 1, 'VermilionKunkum', 'vermilionkunkum'),
(27, 1, 'Sindhuram', 'sindhuram'),
(28, 1, 'Gulal', 'gulal'),
(29, 1, 'Vibhuthi', 'vibhuthi'),
(30, 1, 'Chunna', 'chunna'),
(31, 1, 'CottonWicks2types', 'cottonwicks2types'),
(32, 1, 'CamphorBlock', 'camphorblock'),
(33, 1, 'CamphorTablets', 'camphortablets'),
(34, 1, 'ArecaNuts White Round', 'arecanuts-white-round'),
(35, 1, 'DryFruitsAssorted', 'dryfruitsassorted'),
(36, 1, 'ArecaNuts half', 'arecanuts-half'),
(37, 1, 'Lamanchavattiveru', 'lamanchavattiveru'),
(38, 1, 'Guggilam', 'guggilam'),
(39, 1, 'Sambrani', 'sambrani'),
(40, 1, 'Copra', 'copra'),
(42, 1, 'Jatamamsi', 'jatamamsi'),
(43, 1, 'Yajnopavitham', 'yajnopavitham'),
(44, 1, 'Clothes', 'clothes'),
(45, 1, 'ThreadJute', 'threadjute'),
(46, 1, 'TwineThread', 'twinethread'),
(50, 1, 'TurmericPowder', 'turmericpowder'),
(51, 1, 'Yagnopaveetam', 'yagnopaveetam'),
(52, 1, 'Hand Fan', 'hand-fan'),
(55, 1, 'GandhamStone', 'gandhamstone'),
(56, 1, 'Sandalwood', 'sandalwood'),
(58, 1, 'PanchaPatraFullSet1 Plate 5 Patra 5 Spoons', 'panchapatrafullset1-plate-5-patra-5-spoons'),
(59, 1, 'MangalaArati', 'mangalaarati'),
(60, 1, 'BucketsSteel', 'bucketssteel'),
(61, 1, 'Mattelutoerings', 'mattelutoerings'),
(62, 1, 'Towels', 'towels'),
(63, 1, 'Blackcottoncloth', 'blackcottoncloth'),
(64, 1, 'Napkin', 'napkin'),
(65, 1, 'BlousePieces', 'blousepieces'),
(66, 1, 'Redsilkcloth', 'redsilkcloth'),
(67, 1, 'Shawl', 'shawl'),
(68, 1, 'ShikaraVastramsilk', 'shikaravastramsilk'),
(69, 1, 'Mercury', 'mercury'),
(70, 1, 'Sulphur', 'sulphur'),
(71, 1, 'Navaratnastones', 'navaratnastones'),
(72, 1, 'Gold', 'gold'),
(73, 1, 'Silver', 'silver'),
(74, 1, 'Pearl', 'pearl'),
(75, 1, 'Coral', 'coral'),
(76, 1, 'SemiPreciousStones', 'semipreciousstones'),
(77, 1, 'GoldenNeedle', 'goldenneedle'),
(78, 1, 'KurmaYantra', 'kurmayantra'),
(79, 1, 'HanumanYantra', 'hanumanyantra'),
(80, 1, 'RamaYantra', 'ramayantra'),
(81, 1, 'SeetaYantra', 'seetayantra'),
(82, 1, 'SriYantra', 'sriyantra'),
(83, 1, 'ShivaYantra', 'shivayantra'),
(84, 1, 'VaastuYantra', 'vaastuyantra'),
(85, 1, 'SudarshanaYantra', 'sudarshanayantra'),
(86, 1, 'SubrahmanyaYantra', 'subrahmanyayantra'),
(87, 1, 'GanapatiYantra', 'ganapatiyantra'),
(88, 1, 'FlagsinSpecifiedColours', 'flagsinspecifiedcolours'),
(89, 1, 'MahaDhwaja', 'mahadhwaja'),
(90, 1, 'JapaMala', 'japamala'),
(92, 1, 'MagnifyingClass', 'magnifyingclass'),
(93, 1, 'Sruva', 'sruva'),
(94, 1, 'Sruk', 'sruk'),
(95, 1, 'Bangles', 'bangles'),
(96, 1, 'Comb', 'comb'),
(97, 1, 'HaldiKunkumSatchets', 'haldikunkumsatchets'),
(99, 1, 'SandalPowder', 'sandalpowder'),
(100, 1, 'SumangaliSetSmall', 'sumangalisetsmall'),
(101, 1, 'Metalics', 'metalics'),
(102, 1, 'Puja', 'puja'),
(103, 1, 'BambooBazar', 'bamboobazar'),
(104, 1, 'ChemicalShops', 'chemicalshops'),
(107, 1, 'Hand Fan DecriptionHand Made Plastic Decorative Fan', 'hand-fan-decriptionhand-made-plastic-decorative-fan'),
(108, 1, 'to be used for personal comfort in the hot and humid areas including the fire places', 'to-be-used-for-personal-comfort-in-the-hot-and-humid-areas-including-the-fire-places'),
(109, 1, 'Umbrella Description Decorative Umbrella used in the consecration rituals', 'umbrella-description-decorative-umbrella-used-in-the-consecration-rituals'),
(110, 1, 'HandFansmall   Hand Made Plastic Decorative Fan', 'handfansmall-hand-made-plastic-decorative-fan'),
(111, 1, 'Pieces of Sandal Wood procured from Government Sales Depot are used in the Homa as well as making a paste by grinding on a special stone Usage Decorative Smearing on the idols', 'pieces-of-sandal-wood-procured-from-government-sales-depot-are-used-in-the-homa-as-well-as-making-a-paste-by-grinding-on-a-special-stone-usage-decorative-smearing-on-the-idols'),
(112, 1, 'SlitBamboo stripes are used to weave this special plate used as decorative item container', 'slitbamboo-stripes-are-used-to-weave-this-special-plate-used-as-decorative-item-container'),
(113, 1, 'Used as a decorative accessory and offered to the deities', 'used-as-a-decorative-accessory-and-offered-to-the-deities'),
(114, 1, 'Decorative Beeds used in the necklace', 'decorative-beeds-used-in-the-necklace'),
(115, 1, 'HandBell gives a good welcoming sound', 'handbell-gives-a-good-welcoming-sound'),
(116, 1, 'Big Brass Copper Pot used to store water', 'big-brass-copper-pot-used-to-store-water'),
(117, 1, 'energised with the chant of hymns', 'energised-with-the-chant-of-hymns'),
(118, 1, 'Brass Copper Pot used to store water', 'brass-copper-pot-used-to-store-water'),
(119, 1, 'Large Lamp Post with the provision of 5 more slots to light cotton wicks', 'large-lamp-post-with-the-provision-of-5-more-slots-to-light-cotton-wicks'),
(120, 1, 'immersed in Oil or Ghee', 'immersed-in-oil-or-ghee'),
(121, 1, 'Plates moulded in special design', 'plates-moulded-in-special-design'),
(122, 1, 'Hanging Lamps in special design', 'hanging-lamps-in-special-design'),
(123, 1, 'secured by a metal chain', 'secured-by-a-metal-chain'),
(124, 1, 'to illuminate the temple', 'to-illuminate-the-temple'),
(125, 1, 'Hanging Bell', 'hanging-bell'),
(126, 1, 'with fine acoustics', 'with-fine-acoustics'),
(127, 1, 'rung by the devotees', 'rung-by-the-devotees'),
(128, 1, 'as a mark of visit to the temple', 'as-a-mark-of-visit-to-the-temple'),
(129, 1, 'DecorativeClothes Description', 'decorativeclothes-description'),
(130, 1, 'darbha-bundles', 'darbha-bundles'),
(131, 1, 'Paddy', 'paddy'),
(132, 1, 'Woodenpadukaset', 'woodenpadukaset'),
(133, 1, 'Copper', 'copper'),
(134, 1, 'Bronze', 'bronze'),
(135, 1, 'Brass', 'brass'),
(136, 1, 'Lead', 'lead'),
(137, 1, 'Tin', 'tin'),
(138, 1, 'Mangalyam', 'mangalyam'),
(139, 1, 'Lamp with Stand 30 Height swan on the top 12kg Description', 'lamp-with-stand-30-height-swan-on-the-top-12kg-description'),
(140, 1, 'Hanging Lamps Lakshmi Design', 'hanging-lamps-lakshmi-design'),
(141, 1, 'Saree', 'saree'),
(142, 1, 'Ekaarati', 'ekaarati'),
(143, 1, 'Black wax', 'black-wax');

-- --------------------------------------------------------

--
-- Table structure for table `generic_rating`
--

CREATE TABLE IF NOT EXISTS `generic_rating` (
  `id` int(11) NOT NULL,
  `value` int(11) NOT NULL,
  `rating_date` datetime DEFAULT NULL,
  `content_type_id` int(11) NOT NULL,
  `object_pk` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `generic_rating_37ef4eb4` (`content_type_id`),
  KEY `generic_rating_6340c63c` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `generic_threadedcomment`
--

CREATE TABLE IF NOT EXISTS `generic_threadedcomment` (
  `comment_ptr_id` int(11) NOT NULL,
  `rating_count` int(11) NOT NULL,
  `rating_sum` int(11) NOT NULL,
  `rating_average` double NOT NULL,
  `by_author` tinyint(1) NOT NULL,
  `replied_to_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`comment_ptr_id`),
  KEY `generic_threadedcomment_148afc3c` (`replied_to_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pages_link`
--

CREATE TABLE IF NOT EXISTS `pages_link` (
  `page_ptr_id` int(11) NOT NULL,
  PRIMARY KEY (`page_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pages_page`
--

CREATE TABLE IF NOT EXISTS `pages_page` (
  `id` int(11) NOT NULL,
  `keywords_string` varchar(500) NOT NULL,
  `site_id` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `slug` varchar(2000) DEFAULT NULL,
  `_meta_title` varchar(500) DEFAULT NULL,
  `description` text NOT NULL,
  `gen_description` tinyint(1) NOT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `status` int(11) NOT NULL,
  `publish_date` datetime DEFAULT NULL,
  `expiry_date` datetime DEFAULT NULL,
  `short_url` varchar(200) DEFAULT NULL,
  `in_sitemap` tinyint(1) NOT NULL,
  `_order` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `in_menus` varchar(100) DEFAULT NULL,
  `titles` varchar(1000) DEFAULT NULL,
  `content_model` varchar(50) DEFAULT NULL,
  `login_required` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_page_99732b5c` (`site_id`),
  KEY `pages_page_410d0aac` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages_page`
--

INSERT INTO `pages_page` (`id`, `keywords_string`, `site_id`, `title`, `slug`, `_meta_title`, `description`, `gen_description`, `created`, `updated`, `status`, `publish_date`, `expiry_date`, `short_url`, `in_sitemap`, `_order`, `parent_id`, `in_menus`, `titles`, `content_model`, `login_required`) VALUES
(1, 'AgriculturalArea', 1, 'Agricultural_Area', 'agricultural_area', 'Agricultural_Area', '', 1, '2015-04-27 21:33:03', '2015-05-05 04:00:32', 2, '2015-04-27 21:31:40', '2016-04-27 21:31:46', NULL, 1, 0, NULL, '2', 'Agricultural_Area', 'category', 0),
(2, '', 1, 'Bamboo_Bazar', 'bamboo_bazar', 'Bamboo_Bazar', '', 1, '2015-04-27 21:40:39', '2015-05-05 04:01:31', 2, '2015-04-27 21:39:58', '2016-04-27 21:40:06', NULL, 1, 1, NULL, '2', 'Bamboo_Bazar', 'category', 0),
(3, 'Dairy', 1, 'Dairy', 'dairy', 'Dairy', '', 1, '2015-04-27 21:49:44', '2015-05-05 04:03:48', 2, '2015-04-27 21:48:38', '2016-04-27 21:48:45', NULL, 1, 2, NULL, '2', 'Dairy', 'category', 0),
(5, 'Garden', 1, 'Garden', 'garden', 'Garden', '', 1, '2015-04-27 22:03:27', '2015-05-05 04:07:07', 2, '2015-04-27 22:01:48', '2016-04-27 22:01:54', NULL, 1, 3, NULL, '2', 'Garden', 'category', 0),
(7, 'Metalics', 1, 'Metalics', 'metalics', 'Metalics', '', 1, '2015-05-04 10:58:35', '2015-05-05 04:48:39', 2, '2015-05-04 10:25:29', '2016-04-27 10:25:57', NULL, 1, 4, NULL, '2', 'Metalics', 'category', 0),
(8, 'Clothes', 1, 'Clothes', 'clothes', 'Clothes', '', 1, '2015-05-04 11:04:31', '2015-05-04 12:33:47', 2, '2015-05-04 11:01:43', '2016-04-27 11:01:50', NULL, 1, 5, NULL, '2', 'Clothes', 'category', 0),
(9, 'Puja', 1, 'Puja', 'puja', 'Puja', '', 1, '2015-05-04 11:06:41', '2015-05-08 19:18:25', 2, '2015-05-04 11:05:02', '2016-04-27 11:05:07', NULL, 1, 6, NULL, '2', 'Puja', 'category', 0),
(10, 'Groceries', 1, 'Groceries', 'groceries-1', 'Groceries', '', 1, '2015-05-04 11:11:33', '2015-05-04 12:34:11', 2, '2015-05-04 11:08:55', '2016-04-27 11:09:05', NULL, 1, 7, NULL, '2', 'Groceries', 'category', 0),
(11, '', 1, 'Novelties', 'novelties', '', '', 1, '2015-05-04 11:25:33', '2015-05-04 12:34:30', 2, '2015-05-04 11:17:04', '2016-04-27 11:17:06', NULL, 1, 8, NULL, '2', 'Novelties', 'category', 0),
(12, '', 1, 'Pansari_Shop', 'pansari_shop', '', '', 1, '2015-05-04 11:30:00', '2015-05-04 12:34:49', 2, '2015-05-04 11:27:53', '2016-04-27 11:27:59', NULL, 1, 9, NULL, '2', 'Pansari_Shop', 'category', 0),
(13, '', 1, 'Jewellry', 'jewellry', 'Jewellry', '', 1, '2015-05-04 11:37:49', '2015-05-04 12:35:08', 2, '2015-05-04 11:30:29', '2016-04-27 11:30:30', NULL, 1, 10, NULL, '2', 'Jewellry', 'category', 0),
(14, 'BambooBazar', 1, 'Bamboo_Bazar', 'bamboo_bazar-1', 'Bamboo_Bazar', '', 1, '2015-05-04 11:40:49', '2015-05-04 12:36:31', 2, '2015-05-04 11:38:32', '2015-08-10 11:38:45', NULL, 1, 11, NULL, '2', 'Bamboo_Bazar', 'category', 0),
(15, 'ChemicalShops', 1, 'Chemical_Shops', 'chemical_shops', 'Chemical_Shops', '', 1, '2015-05-04 11:54:57', '2015-05-04 12:35:46', 2, '2015-05-04 11:52:32', '2016-04-27 11:52:37', NULL, 1, 12, NULL, '2', 'Chemical_Shops', 'category', 0),
(16, 'Forest', 1, 'Forest', 'forest', 'Forest', 'Forest', 1, '2015-05-05 04:12:14', '2015-05-08 19:18:54', 2, '2015-05-05 04:10:30', '2016-04-28 04:10:33', NULL, 1, 13, NULL, '2', 'Forest', 'category', 0),
(17, 'Hand Fan DecriptionHand Made Plastic Decorative Fan to be used for personal comfort in the hot and humid areas including the fire places', 1, ' Hand Fan ', 'hand-fan-description', 'Hand Fan Description', 'Hand Fan Description', 1, '2015-05-07 17:23:42', '2015-05-08 15:13:46', 2, '2015-05-07 17:20:43', '2016-04-27 17:20:52', NULL, 1, 14, NULL, '2', ' Hand Fan ', 'category', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pages_richtextpage`
--

CREATE TABLE IF NOT EXISTS `pages_richtextpage` (
  `page_ptr_id` int(11) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`page_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shop_cart`
--

CREATE TABLE IF NOT EXISTS `shop_cart` (
  `id` int(11) NOT NULL,
  `last_updated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shop_cart`
--

INSERT INTO `shop_cart` (`id`, `last_updated`) VALUES
(3, '2015-05-08 15:16:23');

-- --------------------------------------------------------

--
-- Table structure for table `shop_cartitem`
--

CREATE TABLE IF NOT EXISTS `shop_cartitem` (
  `id` int(11) NOT NULL,
  `sku` varchar(20) NOT NULL,
  `description` varchar(2000) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` decimal(10,0) DEFAULT NULL,
  `total_price` decimal(10,0) DEFAULT NULL,
  `cart_id` int(11) NOT NULL,
  `url` varchar(2000) NOT NULL,
  `image` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `shop_cartitem_8a7b7230` (`cart_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shop_cartitem`
--

INSERT INTO `shop_cartitem` (`id`, `sku`, `description`, `quantity`, `unit_price`, `total_price`, `cart_id`, `url`, `image`) VALUES
(1, '121', 'Hand_Fan_small  Description', 1, 1, 1, 3, '/shop/product/hand_fan_small/', 'product/Wholesa-font-b-fans.jpg'),
(2, '13', 'Paddy Description Size: Medium, Colour: Yellow', 1, 1, 1, 3, '/shop/product/paddy/', 'product/paady_-1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `shop_category`
--

CREATE TABLE IF NOT EXISTS `shop_category` (
  `page_ptr_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `featured_image` varchar(255) DEFAULT NULL,
  `sale_id` int(11) DEFAULT NULL,
  `price_min` decimal(10,0) DEFAULT NULL,
  `price_max` decimal(10,0) DEFAULT NULL,
  `combined` tinyint(1) NOT NULL,
  PRIMARY KEY (`page_ptr_id`),
  KEY `shop_category_b5707445` (`sale_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shop_category`
--

INSERT INTO `shop_category` (`page_ptr_id`, `content`, `featured_image`, `sale_id`, `price_min`, `price_max`, `combined`) VALUES
(1, '<table border="0" cellpadding="0" cellspacing="0">\n<tbody>\n<tr height="25">\n<td class="xl65" height="25" width="137">Agricultural_Area</td>\n</tr>\n</tbody>\n</table>', NULL, NULL, NULL, NULL, 1),
(2, '<table border="0" cellpadding="0" cellspacing="0">\n<tbody>\n<tr height="25">\n<td class="xl65" height="25" width="137">Bamboo_Bazar</td>\n</tr>\n</tbody>\n</table>', NULL, NULL, NULL, NULL, 1),
(3, '<table border="0" cellpadding="0" cellspacing="0">\n<tbody>\n<tr height="25">\n<td class="xl65" height="25" width="137">Dairy</td>\n</tr>\n</tbody>\n</table>', NULL, NULL, NULL, NULL, 1),
(5, '<table border="0" cellpadding="0" cellspacing="0">\n<tbody>\n<tr height="25">\n<td class="xl65" height="25" width="137">Garden</td>\n</tr>\n</tbody>\n</table>', NULL, NULL, NULL, NULL, 1),
(7, '<table border="0" cellpadding="0" cellspacing="0">\n<tbody>\n<tr height="25">\n<td class="xl65" height="25" width="124">Metalics</td>\n</tr>\n</tbody>\n</table>', NULL, NULL, NULL, NULL, 1),
(8, '<table border="0" cellpadding="0" cellspacing="0">\n<tbody>\n<tr height="41">\n<td class="xl65" height="41" width="124">Clothes</td>\n</tr>\n</tbody>\n</table>', NULL, NULL, NULL, NULL, 1),
(9, '<table border="0" cellpadding="0" cellspacing="0">\n<tbody>\n<tr height="25">\n<td class="xl65" height="25" width="124">Puja</td>\n</tr>\n</tbody>\n</table>', NULL, NULL, NULL, NULL, 1),
(10, '<table border="0" cellpadding="0" cellspacing="0">\n<tbody>\n<tr height="25">\n<td class="xl65" height="25" width="124">Groceries</td>\n</tr>\n</tbody>\n</table>', NULL, NULL, NULL, NULL, 1),
(11, '<table border="0" cellpadding="0" cellspacing="0">\n<tbody>\n<tr height="25">\n<td class="xl65" height="25" width="124">Novelties</td>\n</tr>\n</tbody>\n</table>', NULL, NULL, NULL, NULL, 1),
(12, '<table border="0" cellpadding="0" cellspacing="0">\n<tbody>\n<tr height="25">\n<td class="xl65" height="25" width="124">Pansari_Shop</td>\n</tr>\n</tbody>\n</table>', NULL, NULL, NULL, NULL, 1),
(13, '<table border="0" cellpadding="0" cellspacing="0">\n<tbody>\n<tr height="25">\n<td class="xl65" height="25" width="124">Jewellry</td>\n</tr>\n</tbody>\n</table>', NULL, NULL, NULL, NULL, 1),
(14, '<table border="0" cellpadding="0" cellspacing="0">\n<tbody>\n<tr height="25">\n<td class="xl65" height="25" width="124">Bamboo_Bazar</td>\n</tr>\n</tbody>\n</table>', NULL, NULL, NULL, NULL, 1),
(15, '<table border="0" cellpadding="0" cellspacing="0">\n<tbody>\n<tr height="25">\n<td class="xl65" height="25" width="124">Chemical_Shops</td>\n</tr>\n</tbody>\n</table>', NULL, NULL, NULL, NULL, 1),
(16, '<p>Forest</p>', NULL, NULL, NULL, NULL, 1),
(17, '<p>Hand Fan <span>Description</span></p>\n<table border="0" cellpadding="0" cellspacing="0">\n<tbody>\n<tr height="75">\n<td align="left" class="xl65" height="75" width="458">Hand Made Plastic Decorative Fan, to be used for personal comfort in the hot and humid areas including the fire places</td>\n</tr>\n</tbody>\n</table>\n<p><span><br></span></p>', NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `shop_category_options`
--

CREATE TABLE IF NOT EXISTS `shop_category_options` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `productoption_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `category_id` (`category_id`,`productoption_id`),
  KEY `shop_category_options_6f33f001` (`category_id`),
  KEY `shop_category_options_1e2923a7` (`productoption_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shop_discountcode`
--

CREATE TABLE IF NOT EXISTS `shop_discountcode` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `discount_deduct` decimal(10,0) DEFAULT NULL,
  `discount_percent` decimal(10,0) DEFAULT NULL,
  `discount_exact` decimal(10,0) DEFAULT NULL,
  `valid_from` datetime DEFAULT NULL,
  `valid_to` datetime DEFAULT NULL,
  `code` varchar(20) NOT NULL,
  `min_purchase` decimal(10,0) DEFAULT NULL,
  `free_shipping` tinyint(1) NOT NULL,
  `uses_remaining` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shop_discountcode_categories`
--

CREATE TABLE IF NOT EXISTS `shop_discountcode_categories` (
  `id` int(11) NOT NULL,
  `discountcode_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `discountcode_id` (`discountcode_id`,`category_id`),
  KEY `shop_discountcode_categories_6581840f` (`discountcode_id`),
  KEY `shop_discountcode_categories_6f33f001` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shop_discountcode_products`
--

CREATE TABLE IF NOT EXISTS `shop_discountcode_products` (
  `id` int(11) NOT NULL,
  `discountcode_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `discountcode_id` (`discountcode_id`,`product_id`),
  KEY `shop_discountcode_products_6581840f` (`discountcode_id`),
  KEY `shop_discountcode_products_7f1b40ad` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shop_order`
--

CREATE TABLE IF NOT EXISTS `shop_order` (
  `id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  `billing_detail_first_name` varchar(100) NOT NULL,
  `billing_detail_last_name` varchar(100) NOT NULL,
  `billing_detail_street` varchar(100) NOT NULL,
  `billing_detail_city` varchar(100) NOT NULL,
  `billing_detail_state` varchar(100) NOT NULL,
  `billing_detail_postcode` varchar(10) NOT NULL,
  `billing_detail_country` varchar(100) NOT NULL,
  `billing_detail_phone` varchar(20) NOT NULL,
  `billing_detail_email` varchar(75) NOT NULL,
  `shipping_detail_first_name` varchar(100) NOT NULL,
  `shipping_detail_last_name` varchar(100) NOT NULL,
  `shipping_detail_street` varchar(100) NOT NULL,
  `shipping_detail_city` varchar(100) NOT NULL,
  `shipping_detail_state` varchar(100) NOT NULL,
  `shipping_detail_postcode` varchar(10) NOT NULL,
  `shipping_detail_country` varchar(100) NOT NULL,
  `shipping_detail_phone` varchar(20) NOT NULL,
  `additional_instructions` text NOT NULL,
  `time` datetime DEFAULT NULL,
  `key` varchar(40) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `shipping_type` varchar(50) NOT NULL,
  `shipping_total` decimal(10,0) DEFAULT NULL,
  `tax_type` varchar(50) NOT NULL,
  `tax_total` decimal(10,0) DEFAULT NULL,
  `item_total` decimal(10,0) DEFAULT NULL,
  `discount_code` varchar(20) NOT NULL,
  `discount_total` decimal(10,0) DEFAULT NULL,
  `total` decimal(10,0) DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `shop_order_99732b5c` (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shop_orderitem`
--

CREATE TABLE IF NOT EXISTS `shop_orderitem` (
  `id` int(11) NOT NULL,
  `sku` varchar(20) NOT NULL,
  `description` varchar(2000) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` decimal(10,0) DEFAULT NULL,
  `total_price` decimal(10,0) DEFAULT NULL,
  `order_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `shop_orderitem_68d25c7a` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shop_product`
--

CREATE TABLE IF NOT EXISTS `shop_product` (
  `id` int(11) NOT NULL,
  `keywords_string` varchar(500) NOT NULL,
  `rating_count` int(11) NOT NULL,
  `rating_sum` int(11) NOT NULL,
  `rating_average` double NOT NULL,
  `site_id` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `slug` varchar(2000) DEFAULT NULL,
  `_meta_title` varchar(500) DEFAULT NULL,
  `description` text NOT NULL,
  `gen_description` tinyint(1) NOT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `status` int(11) NOT NULL,
  `publish_date` datetime DEFAULT NULL,
  `expiry_date` datetime DEFAULT NULL,
  `short_url` varchar(200) DEFAULT NULL,
  `in_sitemap` tinyint(1) NOT NULL,
  `content` text NOT NULL,
  `unit_price` decimal(10,0) DEFAULT NULL,
  `sale_id` int(11) DEFAULT NULL,
  `sale_price` decimal(10,0) DEFAULT NULL,
  `sale_from` datetime DEFAULT NULL,
  `sale_to` datetime DEFAULT NULL,
  `sku` varchar(20) DEFAULT NULL,
  `num_in_stock` int(11) DEFAULT NULL,
  `available` tinyint(1) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sku` (`sku`),
  KEY `shop_product_99732b5c` (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shop_product`
--

INSERT INTO `shop_product` (`id`, `keywords_string`, `rating_count`, `rating_sum`, `rating_average`, `site_id`, `title`, `slug`, `_meta_title`, `description`, `gen_description`, `created`, `updated`, `status`, `publish_date`, `expiry_date`, `short_url`, `in_sitemap`, `content`, `unit_price`, `sale_id`, `sale_price`, `sale_from`, `sale_to`, `sku`, `num_in_stock`, `available`, `image`, `date_added`) VALUES
(2, '', 0, 0, 0, 1, 'Paddy Description', 'paddy', 'Paddy', 'Paddy Description', 1, '2015-04-27 04:52:44', '2015-05-07 21:43:49', 2, '2015-04-27 04:49:44', '2016-04-28 04:49:59', NULL, 1, '<p><strong>Paddy Description</strong></p>\n<table border="0" cellpadding="0" cellspacing="0" style="">\n<tbody>\n<tr height="50">\n<td align="left" class="xl65" height="50" width="458">Unmilled Rice, from the farms used as a spread on the floor to place the idols.</td>\n</tr>\n</tbody>\n</table>\n<p><strong><br></strong></p>', 1, NULL, 1, '2015-04-27 04:53:50', '2016-04-28 04:54:23', '13', 300, 1, 'product/paady_-1.jpg', '2015-04-27 04:52:44'),
(4, '', 0, 0, 0, 1, 'BambooTray Description', 'bambootray', 'BambooTray', 'BambooTray Description', 1, '2015-04-27 05:38:07', '2015-05-07 22:38:03', 2, '2015-04-27 05:36:19', '2016-04-28 05:36:25', NULL, 1, '<p>BambooTray Description</p>\n<table border="0" cellpadding="0" cellspacing="0" style="">\n<tbody>\n<tr height="50">\n<td align="left" class="xl65" height="50" width="458">Slit_Bamboo stripes are used to weave this special tray used as decorative item container.</td>\n</tr>\n</tbody>\n</table>', 2, NULL, 2, '2015-04-27 05:38:37', '2016-04-28 05:38:51', '15', 10, 1, 'product/round_bamboo_tray1.jpg', '2015-04-27 05:38:07'),
(5, '', 0, 0, 0, 1, 'BambooBasket Description', 'bamboobasket', 'BambooBasket', 'BambooBasket Description', 1, '2015-04-27 05:43:17', '2015-05-07 22:36:37', 2, '2015-04-27 05:41:33', '2016-04-28 05:41:41', NULL, 1, '<p>BambooBasket Description</p>\n<table border="0" cellpadding="0" cellspacing="0" style="">\n<tbody>\n<tr height="50">\n<td align="left" class="xl65" height="50" width="458">Slit_Bamboo stripes are used to weave this special Container used as decorative item container.</td>\n</tr>\n</tbody>\n</table>', 3, NULL, 3, '2015-04-27 05:43:49', '2016-04-28 05:44:07', '16', 10, 1, 'product/bamboo-basket-1_LmjbG4a.jpg', '2015-04-27 05:43:17'),
(6, '', 0, 0, 0, 1, 'Cowdungcakes Description', 'cowdungcakes', 'Cowdungcakes', '\n\n\n\nCowdungcakes Description', 1, '2015-04-27 05:47:38', '2015-05-07 22:28:14', 2, '2015-04-27 05:45:18', '2016-04-28 05:45:26', NULL, 1, '<table border="0" cellpadding="0" cellspacing="0" style="">\n<tbody>\n<tr height="50">\n<td align="left" class="xl65" height="50" width="458">\n<p>Cowdungcakes Description</p>\n<p>lamp Post with the provision of 5 more slots to light cotton wicks, immersed in Oil or Ghee.</p>\n</td>\n</tr>\n</tbody>\n</table>', 1, NULL, 1, '2015-04-27 05:48:25', '2016-04-28 05:48:41', '17', 1, 1, 'product/cowdung.jpg', '2015-04-27 05:47:38'),
(7, '', 0, 0, 0, 1, 'Gomutram', 'gomutram', 'Gomutram', '', 1, '2015-04-27 05:54:23', '2015-05-02 00:23:17', 2, '2015-04-27 05:53:04', '2016-04-28 05:53:16', NULL, 1, '<table border="0" cellpadding="0" cellspacing="0">\n<tbody>\n<tr height="25">\n<td class="xl65" height="25" width="161">Gomutram</td>\n</tr>\n</tbody>\n</table>', 0, NULL, 0, '2015-04-27 05:57:02', '2015-08-11 05:57:17', '18', 5, 1, 'product/gomutram.jpg', '2015-04-27 05:54:23'),
(8, '', 0, 0, 0, 1, 'Gomayam', 'gomayam', 'Gomayam', '', 1, '2015-04-27 06:01:41', '2015-05-02 00:24:37', 2, '2015-04-27 05:59:26', '2016-04-28 05:59:46', NULL, 1, '<table border="0" cellpadding="0" cellspacing="0">\n<tbody>\n<tr height="25">\n<td class="xl65" height="25" width="161">Gomayam</td>\n</tr>\n</tbody>\n</table>', 0, NULL, 0, '2015-04-28 03:34:09', '2016-04-28 03:34:16', '69', 1, 1, 'product/cow.jpg', '2015-04-27 06:01:41'),
(9, '', 0, 0, 0, 1, 'Honey Wax Description', 'honey-wax', 'Honey Wax', 'Honey Wax Description', 1, '2015-04-27 06:10:23', '2015-05-07 21:29:30', 2, '2015-04-27 06:04:31', '2016-04-28 06:05:04', NULL, 1, '<p><strong>Honey Wax Description</strong></p>\n<table border="0" cellpadding="0" cellspacing="0">\n<tbody>\n<tr height="50">\n<td align="left" class="xl65" height="50" width="458">Used as a glue to close the gaps/ holes on the idols for decorations.</td>\n</tr>\n</tbody>\n</table>', 10, NULL, 7, '2015-04-27 06:13:01', '2015-04-27 06:13:13', '20', 5, 1, 'product/natural-honey-wax-250x250.jpg', '2015-04-27 06:10:23'),
(10, '', 0, 0, 0, 1, 'Sandal wood Description', 'sandal-wood', 'Sandal wood', 'Sandal Wood Description', 1, '2015-04-27 06:18:37', '2015-05-07 17:51:12', 2, '2015-04-27 06:14:50', '2016-04-28 06:15:09', NULL, 1, '<p>Sandal Wood Description</p>\n<table border="0" cellpadding="0" cellspacing="0" style="">\n<tbody>\n<tr height="100">\n<td align="left" class="xl65" height="100" width="458">Pieces of Sandal Wood procured from Government Sales Depot are used in the Homa as well as making a paste by grinding on a special stone. Usage: Decorative Smearing on the idols.</td>\n</tr>\n</tbody>\n</table>', 200, NULL, 170, '2015-04-27 06:19:22', '2016-04-28 06:19:30', '21', 150, 1, 'product/sandalwood.jpg', '2015-04-27 06:18:37'),
(11, '', 0, 0, 0, 1, 'Coconuts Description', 'coconuts', 'Coconuts', '', 1, '2015-04-27 06:24:07', '2015-05-07 20:48:00', 2, '2015-04-27 06:21:28', '2016-04-28 06:21:43', NULL, 1, '<table border="0" cellpadding="0" cellspacing="0">\n<tbody>\n<tr height="25">\n<td class="xl65" height="25" width="161">Coconuts Description</td>\n</tr>\n</tbody>\n</table>\n<table border="0" cellpadding="0" cellspacing="0" style="">\n<tbody>\n<tr height="50">\n<td align="left" class="xl65" height="50" width="458">Used as on offering.</td>\n</tr>\n</tbody>\n</table>', 2, NULL, 0, '2015-04-27 06:24:32', '2016-04-28 06:24:46', '22', 250, 1, 'product/coconut.jpg', '2015-04-27 06:24:07'),
(12, '', 0, 0, 0, 1, 'Darbha (Bundles) Description', 'darbha-bundles', 'darbha-bundles', 'Darbha (Bundles) Description', 1, '2015-04-27 06:29:20', '2015-05-07 21:41:54', 2, '2015-04-27 06:28:15', '2016-04-28 06:28:27', NULL, 1, '<p><strong>Darbha (Bundles) Description</strong></p>\n<table border="0" cellpadding="0" cellspacing="0" style="">\n<tbody>\n<tr height="50">\n<td align="left" class="xl65" height="50" width="458">Desmostachya bipinnata is a type of tropical grass used for rituals, as spread around fire pit.</td>\n</tr>\n</tbody>\n</table>', 1, NULL, 0, '2015-05-02 00:07:27', '2016-04-28 00:08:40', '65', 0, 1, 'product/darbha.jpg', '2015-04-27 06:29:20'),
(14, '', 0, 0, 0, 1, 'Samit Assorted Description', 'samit-assorted', 'Samit Assorted', 'Samit Assorted Description', 1, '2015-04-27 06:44:25', '2015-05-07 21:47:58', 2, '2015-04-27 06:43:09', '2016-04-28 06:43:16', NULL, 1, '<p><strong>Samit Assorted Description</strong></p>\n<table border="0" cellpadding="0" cellspacing="0" style="">\n<tbody>\n<tr height="50">\n<td align="left" class="xl65" height="50" width="458">Dried Twigs from Ficus racemosa  Tree, used to light the religious fire.</td>\n</tr>\n</tbody>\n</table>\n<p><strong><br></strong></p>', 0, NULL, 0, '2015-04-27 06:45:02', '2016-04-28 06:45:19', '25', 10000, 1, 'product/samit1.jpg', '2015-04-27 06:44:25'),
(15, '', 0, 0, 0, 1, 'Samit navagraha Description', 'samit-navagraha', 'Samit navagraha', 'Samit navagraha Description', 1, '2015-04-27 06:48:26', '2015-05-07 21:50:49', 2, '2015-04-27 06:46:47', '2016-04-28 06:47:17', NULL, 1, '<p><strong>Samit navagraha Description</strong></p>\n<table border="0" cellpadding="0" cellspacing="0" style="">\n<tbody>\n<tr height="250">\n<td align="left" class="xl65" height="250" width="458">Dried Twigs from 1) Calotropis gigantea (Plant)<br> 2) Butea_monosperma (Tree)<br> 3) Acacia chundra (Tree)<br> 4) Achyranthes aspera (Shrub)<br> 5) Ficus_religiosa Tree<br> 6) Ficus racemosa  Tree<br> 7) Prosopis cineraria Tree<br> 8) Cynodon dactylon Grass<br> 9) Desmostachya bipinnata plants, <br> , used to light the religious fire.</td>\n</tr>\n</tbody>\n</table>\n<p><strong><br></strong></p>', 0, NULL, 0, '2015-04-27 06:49:46', '2016-04-28 06:49:55', '26', 5000, 1, 'product/Navagraha_samit.jpg', '2015-04-27 06:48:26'),
(16, '', 0, 0, 0, 1, 'Samit Oudumbara', 'samit-oudumbara', 'Samit Oudumbara', '', 1, '2015-04-27 07:11:19', '2015-05-02 00:12:57', 2, '2015-04-27 07:10:14', '2016-04-27 07:10:22', NULL, 1, '<table border="0" cellpadding="0" cellspacing="0">\n<tbody>\n<tr height="25">\n<td class="xl65" height="25" width="161">Samit Oudumbara</td>\n</tr>\n</tbody>\n</table>', 0, NULL, 0, '2015-04-27 07:11:50', '2016-04-27 07:11:58', '27', 50, 1, 'product/samit2.jpg', '2015-04-27 07:11:19'),
(17, '', 0, 0, 0, 1, 'Samit Palasham', 'samit-palasham', 'Samit Palasham', '', 1, '2015-04-27 07:18:06', '2015-04-27 21:18:05', 2, '2015-04-27 07:14:58', '2016-04-27 07:15:04', NULL, 1, '<table border="0" cellpadding="0" cellspacing="0">\n<tbody>\n<tr height="25">\n<td class="xl65" height="25" width="161">Samit Palasham</td>\n</tr>\n</tbody>\n</table>', 50, NULL, 40, '2015-04-27 21:17:50', '2016-04-27 21:18:01', '29', 50, 1, 'product/havan-samhidha-2-700x525.jpg', '2015-04-27 07:18:06'),
(18, '', 0, 0, 0, 1, 'Samit_Ashwattha Description', 'samit_ashwattha', 'Samit_Ashwattha', 'Samit_Ashwattha Description', 1, '2015-04-27 21:21:36', '2015-05-07 21:45:41', 2, '2015-04-27 21:19:28', '2016-04-27 21:19:45', NULL, 1, '<p><strong><span style="">Samit_Ashwattha Description</span></strong></p>\n<p><strong><span style=""></span></strong></p>\n<table border="0" cellpadding="0" cellspacing="0" style="">\n<tbody>\n<tr height="50">\n<td align="left" class="xl65" height="50" width="458">Dried Twigs from Ficus_religiosa Tree, used to light the religious fire.</td>\n</tr>\n</tbody>\n</table>\n<p><strong><span style=""><br></span></strong></p>', 0, NULL, 0, '2015-04-27 21:29:41', '2016-04-27 21:29:54', '30', 5000, 1, 'product/samit.jpg', '2015-04-27 21:21:36'),
(19, '', 0, 0, 0, 1, 'Black_Jeera Description', 'black_jeera', 'Black_Jeera', 'Black_Jeera Description', 1, '2015-04-27 22:14:35', '2015-05-07 20:56:08', 2, '2015-04-27 22:13:20', '2016-04-27 22:13:36', NULL, 1, '<p>Black_Jeera Description</p>\n<table border="0" cellpadding="0" cellspacing="0">\n<tbody>\n<tr height="50">\n<td align="left" class="xl65" height="50" width="458">Dried Cumins offered in minimal quantity in the firepit.</td>\n</tr>\n</tbody>\n</table>', 7, NULL, 5, '2015-04-27 22:31:53', '2016-04-27 22:32:10', '31', 50, 1, 'product/black_jeera.jpg', '2015-04-27 22:14:35'),
(20, '', 0, 0, 0, 1, 'Pachcha_Karpooram', 'pachcha_karpooram', 'Pachcha_Karpooram', '', 1, '2015-04-27 22:36:33', '2015-05-01 23:42:10', 2, '2015-04-27 22:34:40', '2016-04-27 22:34:47', NULL, 1, '<table border="0" cellpadding="0" cellspacing="0">\n<tbody>\n<tr height="50">\n<td class="xl65" height="50" width="161">Pachcha_Karpooram</td>\n</tr>\n</tbody>\n</table>', 11, NULL, 10, '2015-04-27 22:37:37', '2016-04-27 22:37:48', '32', 5, 1, 'product/pacha_karpooram.jpg', '2015-04-27 22:36:33'),
(21, '', 0, 0, 0, 1, 'Popped_Rice_(Laja)', 'popped_rice_laja', 'Popped_Rice_(Laja)', '', 1, '2015-04-27 22:39:59', '2015-04-27 22:39:59', 2, '2015-04-27 22:38:30', '2016-04-27 22:38:36', NULL, 1, '<table border="0" cellpadding="0" cellspacing="0" style="">\n<tbody>\n<tr height="50">\n<td class="xl65" height="50" width="161">Popped_Rice_(Laja)</td>\n</tr>\n</tbody>\n</table>', NULL, NULL, NULL, NULL, NULL, '33', NULL, 1, 'product/popped_rice.jpg', '2015-04-27 22:39:59'),
(22, '', 0, 0, 0, 1, 'Thread(white,red,yellow)', 'threadwhiteredyellow', 'Thread(white,red,yellow)', '', 1, '2015-04-27 22:41:46', '2015-04-27 22:42:50', 2, '2015-04-27 22:41:00', '2016-04-27 22:41:05', NULL, 1, '<table border="0" cellpadding="0" cellspacing="0">\n<tbody>\n<tr height="72">\n<td class="xl65" height="72" width="161">Thread(white,red,yellow)</td>\n</tr>\n</tbody>\n</table>', 150, NULL, 100, '2015-04-27 22:42:33', '2016-04-27 22:42:43', '34', 50, 1, 'product/thread.jpg', '2015-04-27 22:41:46'),
(23, '', 0, 0, 0, 1, 'Turmeric_Roots Description', 'turmeric_roots', 'Turmeric_Roots', 'Turmeric_Roots Description', 1, '2015-04-27 22:45:18', '2015-05-07 22:55:56', 2, '2015-04-27 22:44:04', '2016-04-27 22:44:12', NULL, 1, '<p>Turmeric_Roots Description</p>\n<table border="0" cellpadding="0" cellspacing="0" style="">\n<tbody>\n<tr height="50">\n<td align="left" class="xl65" height="50" width="458">Used for worship in the Temple of Goddess</td>\n</tr>\n</tbody>\n</table>', 3, NULL, 2, '2015-04-28 02:53:11', '2016-04-28 02:53:21', '36', 20, 1, 'product/turmaric_roots.jpg', '2015-04-27 22:45:18'),
(24, '', 0, 0, 0, 1, 'Bell_(Ghanta) Description', 'bell_ghanta', 'Bell_(Ghanta)', 'Bell_(Ghanta) Description', 1, '2015-04-27 22:54:48', '2015-05-07 18:37:35', 2, '2015-04-27 22:53:44', '2016-04-27 22:53:52', NULL, 1, '<p>Bell_(Ghanta) Description</p>\n<table border="0" cellpadding="0" cellspacing="0" style="">\n<tbody>\n<tr height="25">\n<td align="left" class="xl65" height="25" width="458">Hand_Bell gives a good welcoming sound</td>\n</tr>\n</tbody>\n</table>', 8, NULL, 8, '2015-04-27 22:56:44', '2016-04-27 22:57:09', '37', 10, 1, 'product/Ghanta2.jpg', '2015-04-27 22:54:48'),
(25, '', 0, 0, 0, 1, 'Brass/_Copper/_steel_plates Description', 'brass_copper_steel_plates', 'Brass/_Copper/_steel_plates', 'Brass/_Copper/_steel_plates Description', 1, '2015-04-27 23:40:30', '2015-05-07 19:13:10', 2, '2015-04-27 23:27:00', '2016-04-27 23:27:06', NULL, 1, '<p>Brass/_Copper/_steel_plates Description</p>\n<table border="0" cellpadding="0" cellspacing="0" style="">\n<tbody>\n<tr height="75">\n<td align="left" class="xl65" height="75" width="458">Plates moulded in special design</td>\n</tr>\n</tbody>\n</table>', NULL, NULL, NULL, NULL, NULL, '39', NULL, 1, 'product/brassplate.png', '2015-04-27 23:40:30'),
(26, '', 0, 0, 0, 1, 'Brass_vessels_with_ladle_&_lid_(half_litre)', 'brass_vessels_with_ladle__lid_half_litre', 'Brass_vessels_with_ladle_&_lid_(half_litre)', '', 1, '2015-04-28 00:13:01', '2015-04-28 00:14:04', 2, '2015-04-28 00:11:56', '2016-04-28 00:12:07', NULL, 1, '<table border="0" cellpadding="0" cellspacing="0">\n<tbody>\n<tr height="75">\n<td class="xl65" height="75" width="161">Brass_vessels_with_ladle_&amp;_lid_(half_litre)</td>\n</tr>\n</tbody>\n</table>', NULL, NULL, NULL, NULL, NULL, '41', NULL, 1, 'product/brassvessels.jpg', '2015-04-28 00:13:01'),
(27, '', 0, 0, 0, 1, 'Turmeric_Powder Description', 'Turmeric_Powder', 'Turmeric_Powder', 'Turmeric_Powder Description', 1, '2015-04-28 00:33:58', '2015-05-07 22:51:30', 2, '2015-04-28 00:32:55', '2016-04-28 00:33:01', NULL, 1, '<p>Turmeric_Powder Description</p>\n<table border="0" cellpadding="0" cellspacing="0" style="">\n<tbody>\n<tr height="25">\n<td align="left" class="xl65" height="25" width="458">Used as decorative items.</td>\n</tr>\n</tbody>\n</table>', 5, NULL, 2, '2015-04-28 00:34:30', '2016-04-28 00:36:37', '42', 20, 1, 'product/Turmeric_Powder.jpg', '2015-04-28 00:33:58'),
(28, '', 0, 0, 0, 1, 'Vermilion_(Kunkum) Description', 'vermilion_kunkum', 'Vermilion_(Kunkum)', 'Vermilion_(Kunkum) Description', 1, '2015-04-28 00:38:24', '2015-05-09 02:53:50', 2, '2015-04-28 00:37:44', '2016-04-28 00:37:49', NULL, 1, '<p>Vermilion_(Kunkum) Description</p>\n<table border="0" cellpadding="0" cellspacing="0">\n<tbody>\n<tr height="75">\n<td align="left" class="xl65" height="75" width="458">Small_pockets of red powder which is applied as a dot on the forehead by devotees.</td>\n</tr>\n</tbody>\n</table>', 5, NULL, 2, '2015-04-28 00:39:20', '2016-04-28 00:39:33', '43', 1000, 1, 'product/Vermilion_Kunkum.jpg', '2015-04-28 00:38:24'),
(29, '', 0, 0, 0, 1, 'Sindhuram Description', 'sindhuram', 'Sindhuram', 'Sindhuram Description', 1, '2015-04-28 00:47:40', '2015-05-07 22:53:50', 2, '2015-04-28 00:42:24', '2016-04-28 00:42:31', NULL, 1, '<p>Sindhuram Description</p>\n<table border="0" cellpadding="0" cellspacing="0" style="">\n<tbody>\n<tr height="75">\n<td align="left" class="xl65" height="75" width="458">Minion (Red Powder made of lead tetroxide), used for decoration in the Temple.</td>\n</tr>\n</tbody>\n</table>', 8, NULL, 6, '2015-04-28 00:48:28', '2016-04-28 00:48:40', '44', 20, 1, 'product/Naaga-Sindhuram-.jpg', '2015-04-28 00:47:40'),
(30, '', 0, 0, 0, 1, 'Gulal', 'gulal', 'Gulal', '', 1, '2015-04-28 00:50:09', '2015-05-01 22:10:01', 2, '2015-04-28 00:49:21', '2016-04-28 00:49:29', NULL, 1, '<table border="0" cellpadding="0" cellspacing="0">\n<tbody>\n<tr height="28">\n<td class="xl66" height="28" width="332">Gulal</td>\n</tr>\n</tbody>\n</table>', 2, NULL, 1, '2015-04-28 00:50:45', '2016-04-28 00:50:59', '45', 15, 1, 'product/Holi-Gulal.jpg', '2015-04-28 00:50:09'),
(31, '', 0, 0, 0, 1, 'Vibhuthi Decription', 'vibhuthi', 'Vibhuthi', 'Vibhuthi Decription', 1, '2015-04-28 00:52:23', '2015-05-07 22:50:08', 2, '2015-04-28 00:51:37', '2016-04-28 00:51:43', NULL, 1, '<p>Vibhuthi Decription</p>\n<table border="0" cellpadding="0" cellspacing="0" style="">\n<tbody>\n<tr height="50">\n<td align="left" class="xl65" height="50" width="458">CowDung Ash, refined and scented with perfumery, used to smear the forehead, usually by male devotees.</td>\n</tr>\n</tbody>\n</table>', 4, NULL, 2, '2015-04-28 00:53:03', '2016-04-28 00:53:13', '46', 20, 1, 'product/Vibhuthi.jpg', '2015-04-28 00:52:23'),
(32, '', 0, 0, 0, 1, 'Cotton_Wicks(2types) Description', 'cotton_wicks2types', 'Cotton_Wicks(2types)', 'Cotton_Wicks(2types) Description', 1, '2015-04-28 01:03:07', '2015-05-07 22:56:57', 2, '2015-04-28 01:01:54', '2016-04-28 01:01:59', NULL, 1, '<p>Cotton_Wicks(2types) Description</p>', 2, NULL, 0, '2015-04-28 01:03:42', '2016-04-28 01:03:56', '47', 50, 1, 'product/cotton_wicks.JPG', '2015-04-28 01:03:07'),
(33, '', 0, 0, 0, 1, 'Camphor_Block Description', 'camphor_block', 'Camphor_Block', 'Camphor_Block Description', 1, '2015-04-28 01:05:46', '2015-05-07 20:59:26', 2, '2015-04-28 01:05:07', '2016-04-28 01:05:14', NULL, 1, '<p>Camphor_Block Description</p>\n<table border="0" cellpadding="0" cellspacing="0" style="">\n<tbody>\n<tr height="50">\n<td align="left" class="xl65" height="50" width="458">Used in the Temples as an pest repellent and bright effulgence when lit.</td>\n</tr>\n</tbody>\n</table>', 7, NULL, 6, '2015-04-28 01:24:06', '2016-04-28 01:24:24', '49', 20, 1, 'product/camphorblock.jpg', '2015-04-28 01:05:46'),
(34, '', 0, 0, 0, 1, 'Camphor_Tablets', 'camphor_tablets', 'Camphor_Tablets', '', 1, '2015-04-28 01:09:46', '2015-05-01 23:33:35', 2, '2015-04-28 01:07:38', '2016-04-28 01:07:46', NULL, 1, '<table border="0" cellpadding="0" cellspacing="0">\n<tbody>\n<tr height="28">\n<td class="xl66" height="28" width="332">Camphor_Tablets</td>\n</tr>\n</tbody>\n</table>', 7, NULL, 6, '2015-04-28 01:11:03', '2016-04-28 01:11:13', '50', 20, 1, 'product/Camphor_Block.jpg', '2015-04-28 01:09:46'),
(35, '', 0, 0, 0, 1, 'Areca_Nuts (White Round) Description', 'areca_nuts-white-round', 'Areca_Nuts (White Round)', 'Areca_Nuts (White Round) Description', 1, '2015-04-28 02:11:48', '2015-05-07 21:03:19', 2, '2015-04-28 02:06:54', '2016-04-28 02:07:00', NULL, 1, '<p>Areca_Nuts (White Round) Description</p>\n<table border="0" cellpadding="0" cellspacing="0" style="">\n<tbody>\n<tr height="50">\n<td align="left" class="xl65" height="50" width="458">Used as decorative items.</td>\n</tr>\n</tbody>\n</table>', 8, NULL, 7, '2015-04-28 02:21:47', '2016-04-28 02:21:51', '51', 20, 1, 'product/areca-nut.jpg', '2015-04-28 02:11:48'),
(36, '', 0, 0, 0, 1, 'DryFruits_Assorted', 'dryfruits_assorted', 'DryFruits_Assorted', '', 1, '2015-04-28 02:26:35', '2015-05-01 23:36:07', 2, '2015-04-28 02:25:46', '2016-04-28 02:25:50', NULL, 1, '<table border="0" cellpadding="0" cellspacing="0">\n<tbody>\n<tr height="28">\n<td class="xl66" height="28" width="332">DryFruits_Assorted</td>\n</tr>\n</tbody>\n</table>', 4, NULL, 3, '2015-04-28 02:27:01', '2016-04-28 02:27:09', '52', 15, 1, 'product/DryFruits_Assorted.jpg', '2015-04-28 02:26:35'),
(37, '', 0, 0, 0, 1, 'Areca_Nuts (half) Description', 'areca_nuts-half', 'Areca_Nuts (half)', 'Areca_Nuts (half) Description', 1, '2015-04-28 02:34:06', '2015-05-07 21:05:37', 2, '2015-04-28 02:29:14', '2016-04-28 02:29:19', NULL, 1, '<p>Areca_Nuts (half) Description</p>\n<table border="0" cellpadding="0" cellspacing="0" style="">\n<tbody>\n<tr height="50">\n<td align="left" class="xl65" height="50" width="458">Used for worship and offering in the firepit.</td>\n</tr>\n</tbody>\n</table>', 7, NULL, 6, '2015-04-28 02:35:25', '2016-04-28 02:35:37', '53', 15, 1, 'product/A_close_up_of_Areca_nut.JPG', '2015-04-28 02:34:06'),
(38, '', 0, 0, 0, 1, 'Lamancha_(vattiveru) Description', 'lamancha_vattiveru', 'Lamancha_(vattiveru)', 'Lamancha_(vattiveru) Description', 1, '2015-04-28 02:37:48', '2015-05-07 21:08:49', 2, '2015-04-28 02:36:51', '2016-04-28 02:36:58', NULL, 1, '<p>Lamancha_(vattiveru) Description</p>\n<table border="0" cellpadding="0" cellspacing="0" style="">\n<tbody>\n<tr height="50">\n<td align="left" class="xl65" height="50" width="458">Chrysopogon_zizanioides, an aromatic dried grass, used for offering in the fire pit.</td>\n</tr>\n</tbody>\n</table>', 10, NULL, 8, '2015-04-28 02:38:20', '2016-04-28 02:38:28', '54', 2, 1, 'product/lavancha.jpg', '2015-04-28 02:37:48'),
(39, '', 0, 0, 0, 1, 'Guggilam Description', 'guggilam', 'Guggilam', 'Guggilam Description', 1, '2015-04-28 02:41:57', '2015-05-07 21:11:10', 2, '2015-04-28 02:41:07', '2016-04-28 02:41:16', NULL, 1, '<p>Guggilam Description</p>\n<table border="0" cellpadding="0" cellspacing="0" style="">\n<tbody>\n<tr height="50">\n<td align="left" class="xl65" height="50" width="458">Vanilla-scented resin from various trees of the genus Styrax, offered in the firepit.</td>\n</tr>\n</tbody>\n</table>', 17, NULL, 15, '2015-04-28 02:42:26', '2016-04-28 02:42:34', '55', 3, 1, 'product/Guggilam.jpg', '2015-04-28 02:41:57'),
(40, '', 0, 0, 0, 1, 'Sambrani Description', 'sambrani', 'Sambrani', 'Sambrani Description', 1, '2015-04-28 02:46:21', '2015-05-07 21:18:33', 2, '2015-04-28 02:44:58', '2016-04-28 02:43:45', NULL, 1, '<p>Sambrani Description</p>\n<table border="0" cellpadding="0" cellspacing="0">\n<tbody>\n<tr height="25">\n<td align="left" class="xl65" height="25" width="458">Benzoin is an organic compound, used a incense stick.</td>\n</tr>\n</tbody>\n</table>', 6, NULL, 5, '2015-04-28 02:47:00', '2016-04-28 02:47:07', '56', 5, 1, 'product/sambrani.jpg', '2015-04-28 02:46:21'),
(41, '', 0, 0, 0, 1, 'Copra Description', 'copra', 'Copra', 'Copra Description', 1, '2015-04-28 02:51:06', '2015-05-07 21:32:19', 2, '2015-04-28 02:50:13', '2016-04-28 02:50:19', NULL, 1, '<p><strong>Copra Description</strong></p>\n<table border="0" cellpadding="0" cellspacing="0" style="">\n<tbody>\n<tr height="50">\n<td align="left" class="xl65" height="50" width="458">Copra dried kernel, of the coconut used for offering in the fire pit.</td>\n</tr>\n</tbody>\n</table>\n<p><strong><br></strong></p>', 3, NULL, 1, '2015-04-28 02:51:45', '2016-04-28 02:51:52', '57', 50, 1, 'product/Copra.jpg', '2015-04-28 02:51:06'),
(42, '', 0, 0, 0, 1, 'Leaf_Plate Description', 'leaf_plate', 'Leaf_Plate', 'Leaf_Plate Description', 1, '2015-04-28 02:55:27', '2015-05-07 21:34:30', 2, '2015-04-28 02:54:44', '2016-04-28 02:54:50', NULL, 1, '<p><strong>Leaf_Plate Description</strong></p>\n<table border="0" cellpadding="0" cellspacing="0" style="">\n<tbody>\n<tr height="50">\n<td align="left" class="xl65" height="50" width="458">Used for putting flours and flowers.</td>\n</tr>\n</tbody>\n</table>\n<p><strong><br></strong></p>', 4, NULL, 3, '2015-05-01 23:55:16', '2016-04-27 23:55:26', '59', 20, 1, 'product/Leaf_Plate.jpg', '2015-04-28 02:55:27'),
(43, '', 0, 0, 0, 1, 'Jatamamsi Description', 'jatamamsi', 'Jatamamsi', 'Jatamamsi Description', 1, '2015-04-28 02:58:02', '2015-05-07 21:36:39', 2, '2015-04-28 02:57:15', '2016-04-28 02:57:20', NULL, 1, '<p><strong><span style="">Jatamamsi Description</span></strong></p>\n<p><strong><span style=""></span></strong></p>\n<table border="0" cellpadding="0" cellspacing="0" style="">\n<tbody>\n<tr height="100">\n<td align="left" class="xl65" height="100" width="458">Nardostachys jatamansi is a flowering plant of the Valerian family that grows in the Himalayas. It is a source of a type of intensely aromatic amber-colored essential oil, spikenard</td>\n</tr>\n</tbody>\n</table>\n<p><strong><span style=""><br></span></strong></p>', 11, NULL, 9, '2015-04-28 02:58:40', '2016-04-28 02:59:18', '60', 1, 1, 'product/Jatamamsi.jpg', '2015-04-28 02:58:02'),
(44, '', 0, 0, 0, 1, 'Yajnopavitham', 'yajnopavitham', 'Yajnopavitham', '', 1, '2015-04-28 03:04:19', '2015-04-28 03:05:20', 2, '2015-04-28 03:03:25', '2016-04-28 03:03:35', NULL, 1, '<table border="0" cellpadding="0" cellspacing="0">\n<tbody>\n<tr height="28">\n<td class="xl66" height="28" width="332">Yajnopavitham</td>\n</tr>\n</tbody>\n</table>', NULL, NULL, NULL, NULL, NULL, '62', NULL, 1, 'product/Yagnopavitham.jpg', '2015-04-28 03:04:19'),
(45, '', 0, 0, 0, 1, 'cloth for cleaning Description', 'clothes', 'Clothes', 'cloth for cleaning Description', 1, '2015-04-28 03:07:08', '2015-05-07 19:58:15', 2, '2015-04-28 03:06:16', '2016-04-28 03:06:23', NULL, 1, '<p>cloth for cleaning Description</p>\n<table border="0" cellpadding="0" cellspacing="0" style="">\n<tbody>\n<tr height="50">\n<td align="left" class="xl65" height="50" width="458">Cleaning Purpose</td>\n</tr>\n</tbody>\n</table>', 0, NULL, 0, '2015-04-28 03:07:38', '2016-04-28 03:07:51', '63', 200, 1, 'product/Napkin.jpg', '2015-04-28 03:07:08'),
(46, '', 0, 0, 0, 1, 'Thread(Jute) Description', 'threadjute', 'Thread(Jute)', 'Thread(Jute) Description', 1, '2015-04-28 03:16:39', '2015-05-07 21:39:08', 2, '2015-04-28 03:15:51', '2016-04-28 03:15:58', NULL, 1, '<p><strong>Thread(Jute) Description</strong></p>\n<table border="0" cellpadding="0" cellspacing="0" style="">\n<tbody>\n<tr height="50">\n<td align="left" class="xl65" height="50" width="458">Jute Thread used to tie small objects and packaging</td>\n</tr>\n</tbody>\n</table>\n<p><strong><br></strong></p>', 1, NULL, 1, '2015-04-28 03:17:05', '2016-04-28 03:17:13', '64', 1, 1, 'product/Jute_Rope.jpg', '2015-04-28 03:16:39'),
(47, '', 0, 0, 0, 1, 'Twine_Thread Description', 'twine_thread', 'Twine_Thread', 'Twine_Thread Description', 1, '2015-04-28 03:37:34', '2015-05-07 22:24:40', 2, '2015-04-28 03:36:48', '2016-04-28 03:36:55', NULL, 1, '<p>Twine_Thread Description</p>\n<table border="0" cellpadding="0" cellspacing="0" style="">\n<tbody>\n<tr height="25">\n<td align="left" class="xl65" height="25" width="458">Strong thread used for packaging</td>\n</tr>\n</tbody>\n</table>', 1, NULL, 1, '2015-04-28 03:38:07', '2016-04-28 03:38:23', '70', 50, 1, 'product/cotton-twine.jpg', '2015-04-28 03:37:34'),
(48, '', 0, 0, 0, 1, 'Coconut_Coir Description', 'coconut_coir', 'Coconut_Coir', 'Coconut_Coir Description', 1, '2015-04-28 03:42:18', '2015-05-07 22:26:05', 2, '2015-04-28 03:40:31', '2016-04-28 03:40:37', NULL, 1, '<p>Coconut_Coir Description</p>\n<table border="0" cellpadding="0" cellspacing="0" style="">\n<tbody>\n<tr height="50">\n<td align="left" class="xl65" height="50" width="458">Packaging and Lighting the fire in the fire pit.</td>\n</tr>\n</tbody>\n</table>', 100, NULL, 100, '2015-04-28 03:42:52', '2016-04-28 03:43:03', '71', 10, 1, 'product/coconut-coir-fibre_67sMOeh.jpg', '2015-04-28 03:42:18'),
(49, '', 0, 0, 0, 1, 'Wooden_paduka_set Description', 'wooden_paduka_set', 'Wooden_paduka_set', 'Wooden_paduka_set Description', 1, '2015-04-28 03:45:48', '2015-05-07 23:05:24', 2, '2015-04-28 03:45:03', '2016-04-28 03:45:10', NULL, 1, '<p>Wooden_paduka_set Description</p>\n<table border="0" cellpadding="0" cellspacing="0" style="">\n<tbody>\n<tr height="50">\n<td align="left" class="xl65" height="50" width="458">Decorative Item, made of wooden Sandals offered to the deities</td>\n</tr>\n</tbody>\n</table>', 4, NULL, 3, '2015-04-28 03:46:44', '2016-04-28 03:47:14', '73', 5, 1, 'product/Wooden_paduka_set.jpg', '2015-04-28 03:45:48'),
(50, '', 0, 0, 0, 1, 'Umbrella Desription', 'umbrella', 'Umbrella Description', '\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n Umbrella Description', 0, '2015-04-28 03:54:23', '2015-05-07 17:42:54', 2, '2015-04-28 03:53:40', '2016-04-28 03:53:45', NULL, 1, '<table border="0" cellpadding="0" cellspacing="0">\n<tbody>\n<tr height="25">\n<td class="xl65" height="25" width="192">\n<table border="0" cellpadding="0" cellspacing="0">\n<tbody>\n<tr height="36">\n<td class="xl65" height="36" width="458">\n<p> Umbrella Description</p>\n<table border="0" cellpadding="0" cellspacing="0">\n<tbody>\n<tr height="25">\n<td align="left" class="xl65" height="25" width="458">\n<p></p>\n<table border="0" cellpadding="0" cellspacing="0">\n<tbody>\n<tr height="25">\n<td align="left" class="xl65" height="25" width="458">Decorative Umbrella used in the consecration rituals</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>', 5, NULL, 4, '2015-04-28 03:58:14', '2016-04-28 03:58:24', '75', 10, 1, 'product/sky-umbrella.jpg', '2015-04-28 03:54:23'),
(51, '', 0, 0, 0, 1, 'winna Description', 'winna', 'winna', 'winna Description', 1, '2015-04-28 04:24:10', '2015-05-07 18:13:38', 2, '2015-04-28 04:05:49', '2016-04-28 04:05:55', NULL, 1, '<p>winna Description</p>\n<table border="0" cellpadding="0" cellspacing="0" style="">\n<tbody>\n<tr height="50">\n<td align="left" class="xl65" height="50" width="458">Slit_Bamboo stripes are used to weave this special plate used as decorative item container.</td>\n</tr>\n</tbody>\n</table>', 2, NULL, 2, '2015-04-28 04:26:51', '2016-04-28 04:27:07', '77', 10, 1, 'product/chata.jpg', '2015-04-28 04:24:10'),
(52, '', 0, 0, 0, 1, 'Yagnopaveetam Description', 'yagnopaveetam', 'Yagnopaveetam', 'Yagnopaveetam Description', 1, '2015-05-02 00:00:49', '2015-05-07 21:37:59', 2, '2015-05-01 23:59:49', '2016-04-27 23:59:54', NULL, 1, '<p><strong>Yagnopaveetam Description</strong></p>\n<table border="0" cellpadding="0" cellspacing="0" style="">\n<tbody>\n<tr height="75">\n<td align="left" class="xl65" height="75" width="458">Cotton Yarn, woven according to religious methodology. Used by Gentle Men/ Priests to signify their religious initiation.</td>\n</tr>\n</tbody>\n</table>\n<p><strong><br></strong></p>', 0, NULL, 0, '2015-05-02 00:01:27', '2016-04-28 00:01:43', '78', 20, 1, 'product/Yagnopavitham_1TkIhIk.jpg', '2015-05-02 00:00:49'),
(53, '', 0, 0, 0, 1, 'Hand Fan ', 'hand-fan', 'Hand Fan', 'Hand Fan Description', 1, '2015-05-02 00:39:43', '2015-05-08 15:13:06', 2, '2015-05-02 00:37:53', '2016-04-28 00:37:59', NULL, 1, '<p>Hand Fan Description</p>\n<table border="0" cellpadding="0" cellspacing="0">\n<tbody>\n<tr height="75">\n<td align="left" class="xl63" height="75" width="458">Hand Made Plastic Decorative Fan, to be used for personal comfort in the hot and humid areas including the fire places</td>\n</tr>\n</tbody>\n</table>', 2, NULL, 1, '2015-05-02 00:40:10', '2016-04-28 00:40:22', '79', 20, 1, 'product/fan.jpg', '2015-05-02 00:39:43'),
(54, '', 0, 0, 0, 1, 'PradhanaKalasham Description', 'pradhanakalasham', 'PradhanaKalasham', 'PradhanaKalasham Description', 1, '2015-05-02 01:03:21', '2015-05-07 18:42:42', 2, '2015-05-02 01:01:53', '2016-04-28 01:01:58', NULL, 1, '<p>PradhanaKalasham Description</p>\n<table border="0" cellpadding="0" cellspacing="0" style="">\n<tbody>\n<tr height="75">\n<td align="left" class="xl65" height="75" width="458">Big Brass/ Copper Pot used to store water, energised with the chant of hymns</td>\n</tr>\n</tbody>\n</table>', 30, NULL, 25, '2015-05-02 01:03:47', '2016-04-28 01:03:56', '80', 10, 1, 'product/kalasam.jpg', '2015-05-02 01:03:21'),
(55, '', 0, 0, 0, 1, 'Copper/Bronze_Kalasha(small) Description', 'copperbronze_kalasha(small)', 'Copper/Bronze_Kalasha(small)', 'Copper/Bronze_Kalasha(small) Description', 1, '2015-05-02 01:12:10', '2015-05-07 18:59:24', 2, '2015-05-02 01:05:58', '2016-04-28 01:06:04', NULL, 1, '<p>Copper/Bronze_Kalasha(small) Description</p>\n<table border="0" cellpadding="0" cellspacing="0" style="">\n<tbody>\n<tr height="50">\n<td align="left" class="xl65" height="50" width="458">Brass/ Copper Pot used to store water, energised with the chant of hymns</td>\n</tr>\n</tbody>\n</table>', 4, NULL, 3, '2015-05-02 01:12:38', '2016-04-28 01:12:45', '81', 10, 1, 'product/co.jpg', '2015-05-02 01:12:10'),
(56, '', 0, 0, 0, 1, 'Copper/Bronze_Kalasha Description', 'copperbronze_kalasha', 'Copper/Bronze_Kalasha', 'Copper/Bronze_Kalasha Description', 1, '2015-05-02 01:31:11', '2015-05-07 18:49:28', 2, '2015-05-02 01:30:08', '2016-04-28 01:30:14', NULL, 1, '<p>Copper/Bronze_Kalasha Description</p>\n<table border="0" cellpadding="0" cellspacing="0" style="">\n<tbody>\n<tr height="50">\n<td align="left" class="xl65" height="50" width="458">Brass/ Copper Pot used to store water, energised with the chant of hymns</td>\n</tr>\n</tbody>\n</table>', 30, NULL, 21, '2015-05-02 01:31:52', '2016-04-28 01:32:02', '82', 5, 1, 'product/Bronze_Kalasam_LRYXhLD.jpg', '2015-05-02 01:31:11'),
(57, '', 0, 0, 0, 1, 'Gandham_Stone', 'gandham_stone', 'Gandham_Stone', '', 1, '2015-05-02 17:18:05', '2015-05-02 17:19:21', 2, '2015-05-02 17:17:00', '2016-04-27 17:17:01', NULL, 1, '<table border="0" cellpadding="0" cellspacing="0">\n<tbody>\n<tr height="25">\n<td class="xl64" height="25" width="192">Gandham_Stone</td>\n</tr>\n</tbody>\n</table>', 7, NULL, 5, '2015-05-02 17:18:52', '2016-04-27 17:19:04', '83', 10, 1, 'product/gon-sandalwood-paste.jpg', '2015-05-02 17:18:05'),
(58, '', 0, 0, 0, 1, 'Sandal_wood', 'sandal_wood', 'Sandal_wood', '', 1, '2015-05-02 17:21:15', '2015-05-02 17:22:11', 2, '2015-05-02 17:20:14', '2016-04-27 17:20:21', NULL, 1, '<table border="0" cellpadding="0" cellspacing="0">\n<tbody>\n<tr height="25">\n<td class="xl66" height="25" width="192">Sandal_wood</td>\n</tr>\n</tbody>\n</table>', 80, NULL, 67, '2015-05-02 17:21:54', '2016-04-27 17:22:05', '84', 10, 1, 'product/sandalwood_7SY3iGP.jpg', '2015-05-02 17:21:15'),
(59, '', 0, 0, 0, 1, 'Deepa_Stambha Description', 'deepa_stambha', 'Deepa_Stambha', 'Deepa_Stambha Description', 1, '2015-05-02 17:23:51', '2015-05-07 18:53:15', 2, '2015-05-02 17:22:54', '2016-04-27 17:23:00', NULL, 1, '<p>Deepa_Stambha Description</p>\n<table border="0" cellpadding="0" cellspacing="0" style="">\n<tbody>\n<tr height="50">\n<td align="left" class="xl65" height="50" width="458">Large Lamp Post with the provision of 5 more slots to light cotton wicks, immersed in Oil or Ghee.</td>\n</tr>\n</tbody>\n</table>', 12, NULL, 11, '2015-05-02 17:24:32', '2016-04-27 17:24:43', '85', 10, 1, 'product/deepastamba.jpg', '2015-05-02 17:23:51'),
(60, '', 0, 0, 0, 1, 'Pancha_Patra_FullSet Description', 'pancha_patra_fullset', 'Brass/ Copper tumbler, spoon and smaller pot set, used for drinking water.', 'Pancha_Patra_FullSet Description', 1, '2015-05-02 17:27:49', '2015-05-07 19:24:38', 2, '2015-05-02 17:26:39', '2016-04-27 17:26:46', NULL, 1, '<p>Pancha_Patra_FullSet Description</p>\n<table border="0" cellpadding="0" cellspacing="0" style="">\n<tbody>\n<tr height="50">\n<td align="left" class="xl65" height="50" width="458">Brass/ Copper tumbler, spoon and smaller pot set, used for drinking water.</td>\n</tr>\n</tbody>\n</table>', 56, NULL, 33, '2015-05-02 17:28:31', '2016-04-27 17:28:40', '86', 10, 1, 'product/Pancha_Patra_set.jpg', '2015-05-02 17:27:49'),
(61, '', 0, 0, 0, 1, 'Mangala_Arati Description', 'mangala_arati', 'Mangala_Arati', 'Mangala_Arati Description', 1, '2015-05-02 22:28:47', '2015-05-07 19:50:35', 2, '2015-05-02 22:18:43', '2016-04-27 22:18:51', NULL, 1, '<p>Mangala_Arati Description</p>\n<table border="0" cellpadding="0" cellspacing="0" style="">\n<tbody>\n<tr height="50">\n<td align="left" class="xl65" height="50" width="458">Special Design lamp welded on a plate to light the Oil Lamp in the Temple, to illuminate the idol.</td>\n</tr>\n</tbody>\n</table>', 15, NULL, 10, '2015-05-02 22:29:49', '2016-04-27 22:30:01', '87', 10, 1, 'product/Mangala_Arati_plate.jpg', '2015-05-02 22:28:47'),
(62, '', 0, 0, 0, 1, 'Buckets_Steel Description', 'buckets_steel', 'Buckets_Steel', 'Buckets_Steel Description', 1, '2015-05-02 22:32:37', '2015-05-07 19:53:18', 2, '2015-05-02 22:32:37', '2016-04-27 22:36:19', NULL, 1, '<p>Buckets_Steel Description</p>\n<table border="0" cellpadding="0" cellspacing="0" style="">\n<tbody>\n<tr height="100">\n<td align="left" class="xl65" height="100" width="458">Steel Buckets to hold water/ milk.</td>\n</tr>\n</tbody>\n</table>', 7, NULL, NULL, '2015-05-02 22:35:23', '2016-04-27 22:35:35', '88', 10, 1, 'product/Buckets_Steel.jpeg', '2015-05-02 22:32:37'),
(63, '', 0, 0, 0, 1, 'Mattelu_(toe_rings) Description', 'mattelu_toe_rings', 'Mattelu_(toe_rings)', 'Mattelu_(toe_rings) Description', 1, '2015-05-02 10:12:31', '2015-05-07 22:58:58', 2, '2015-05-02 10:08:42', '2015-08-10 10:08:49', NULL, 1, '<p>Mattelu_(toe_rings) Description</p>\n<table border="0" cellpadding="0" cellspacing="0" style="">\n<tbody>\n<tr height="75">\n<td align="left" class="xl65" height="75" width="458">Small Silver Rings (for Foot Toes), a mandatory accessory for a married lady, used as an offering to Goddess.</td>\n</tr>\n</tbody>\n</table>', 6, NULL, 3, '2015-05-02 10:13:19', '2016-04-27 10:13:30', '89', 10, 1, 'product/Mattelu_toe_rings.jpg', '2015-05-02 10:12:31'),
(64, '', 0, 0, 0, 1, 'Towels Description', 'towels', 'Towels', 'Towels Description', 1, '2015-05-02 10:28:49', '2015-05-07 20:03:51', 2, '2015-05-02 10:19:46', '2016-04-27 10:27:01', NULL, 1, '<p>Towels Description</p>\n<table border="0" cellpadding="0" cellspacing="0" style="">\n<tbody>\n<tr height="25">\n<td align="left" class="xl65" height="25" width="458">Cotton Towels Domestic Usage</td>\n</tr>\n</tbody>\n</table>', 1, NULL, 1, '2015-05-02 10:29:25', '2016-04-27 10:29:36', '90', 10, 1, 'product/Towels.jpg', '2015-05-02 10:28:49'),
(65, '', 0, 0, 0, 1, 'Black_cotton_cloth Description', 'black_cotton_cloth', 'Black_cotton_cloth', 'Black_cotton_cloth Description', 1, '2015-05-02 10:41:59', '2015-05-07 20:09:27', 2, '2015-05-02 10:40:56', '2016-04-27 10:41:02', NULL, 1, '<p>Black_cotton_cloth Description</p>\n<table border="0" cellpadding="0" cellspacing="0" style="">\n<tbody>\n<tr height="50">\n<td align="left" class="xl65" height="50" width="458">To be offered near the idol of Saturn.</td>\n</tr>\n</tbody>\n</table>', 1, NULL, 0, '2015-05-02 10:42:54', '2016-04-27 10:43:07', '91', 10, 1, 'product/Black_cotton_cloth.gif', '2015-05-02 10:41:59'),
(66, '', 0, 0, 0, 1, 'Napkin Description', 'napkin', 'Napkin', 'Napkin Description', 1, '2015-05-02 10:51:17', '2015-05-07 20:15:57', 2, '2015-05-02 10:50:25', '2016-04-27 10:50:30', NULL, 1, '<p>Napkin Description</p>\n<table border="0" cellpadding="0" cellspacing="0" style="">\n<tbody>\n<tr height="25">\n<td align="left" class="xl65" height="25" width="458">Cleaning piece.</td>\n</tr>\n</tbody>\n</table>', 1, NULL, 1, '2015-05-02 10:52:22', '2016-04-27 10:52:33', '92', 10, 1, 'product/Napkin_jwxsEs0.jpg', '2015-05-02 10:51:17'),
(67, '', 0, 0, 0, 1, 'Blouse_Pieces Description', 'blouse_pieces', 'Blouse_Pieces', 'Blouse_Pieces Description', 1, '2015-05-03 05:20:01', '2015-05-07 20:31:49', 2, '2015-05-03 05:17:48', '2016-04-28 05:17:54', NULL, 1, '<p>Blouse_Pieces Description</p>\n<table border="0" cellpadding="0" cellspacing="0">\n<tbody>\n<tr height="50">\n<td align="left" class="xl65" height="50" width="458">33" to 36" Long cloth, used as decorative material in the worship.</td>\n</tr>\n</tbody>\n</table>', 2, NULL, 1, '2015-05-03 05:20:41', '2016-04-28 05:20:51', '93', 10, 1, 'product/Blouse_Pieces.jpg', '2015-05-03 05:20:01'),
(68, '', 0, 0, 0, 1, 'Red_silk_cloth Description', 'red_silk_cloth', 'Red_silk_cloth', 'Red_silk_cloth Description', 1, '2015-05-03 05:24:11', '2015-05-07 20:37:18', 2, '2015-05-03 05:22:08', '2016-04-28 05:22:15', NULL, 1, '<p><strong>Red_silk_cloth Description</strong></p>\n<table border="0" cellpadding="0" cellspacing="0" style="">\n<tbody>\n<tr height="50">\n<td align="left" class="xl65" height="50" width="458"><strong>Pieces of Cloth used as a decorative item.</strong></td>\n</tr>\n</tbody>\n</table>\n<p><strong><br></strong></p>', 2, NULL, 1, '2015-05-03 05:26:37', '2016-04-28 05:26:51', '94', 10, 1, 'product/Red_silk_cloth.jpg', '2015-05-03 05:24:11'),
(69, '', 0, 0, 0, 1, 'Shawl Description', 'shawl', 'Shawl', 'Shawl Description', 1, '2015-05-03 05:30:26', '2015-05-07 20:40:04', 2, '2015-05-03 05:28:58', '2016-04-28 05:29:07', NULL, 1, '<p><span style="">Shawl Description</span></p>\n<table border="0" cellpadding="0" cellspacing="0" style="">\n<tbody>\n<tr height="25">\n<td align="left" class="xl65" height="25" width="458">3 Metre Synthetic Cloth used for decoration.</td>\n</tr>\n</tbody>\n</table>\n<p><span style=""><br></span></p>', 6, NULL, 5, '2015-05-03 05:31:49', '2016-04-28 05:32:21', '95', 10, 1, 'product/Shawl.jpg', '2015-05-03 05:30:26'),
(70, '', 0, 0, 0, 1, 'Shikara_Vastram_(silk) Description', 'shikara_vastram_silk', 'Shikara_Vastram_(silk)', 'Shikara_Vastram_(silk)  Description', 1, '2015-05-03 05:35:30', '2015-05-08 17:58:04', 2, '2015-05-03 05:33:13', '2016-04-28 05:33:24', NULL, 1, '<p>Shikara_Vastram_(silk)  Description</p>\n<table border="0" cellpadding="0" cellspacing="0">\n<tbody>\n<tr height="75">\n<td align="left" class="xl65" height="75" width="458">2 Metre Synthetic Cloth used for decoration on the Designer Brass Pots on the Temple Towers.</td>\n</tr>\n</tbody>\n</table>', 7, NULL, 5, '2015-05-03 05:36:32', '2016-04-28 05:36:44', '96', 10, 1, 'product/Shikara_Vastram_silk.jpg', '2015-05-03 05:35:30'),
(71, '', 0, 0, 0, 1, 'Mercury', 'mercury', 'Mercury', '', 1, '2015-05-03 05:43:15', '2015-05-03 05:44:06', 2, '2015-05-03 05:40:38', '2016-04-28 05:40:44', NULL, 1, '<table border="0" cellpadding="0" cellspacing="0">\n<tbody>\n<tr height="25">\n<td class="xl65" height="25" width="192">Mercury</td>\n</tr>\n</tbody>\n</table>', 150, NULL, 100, '2015-05-03 05:43:51', '2016-04-28 05:44:01', '97', 10, 1, 'product/Mercury.jpg', '2015-05-03 05:43:15'),
(72, '', 0, 0, 0, 1, 'Sulphur', 'sulphur', 'Sulphur', '', 1, '2015-05-03 05:48:53', '2015-05-03 05:52:58', 2, '2015-05-03 05:46:24', '2016-04-28 05:46:30', NULL, 1, '<table border="0" cellpadding="0" cellspacing="0">\n<tbody>\n<tr height="25">\n<td class="xl65" height="25" width="192">Sulphur</td>\n</tr>\n</tbody>\n</table>', 2, NULL, 2, '2015-05-03 05:52:14', '2016-04-28 05:52:54', '98', 10, 1, 'product/Sulphur.jpg', '2015-05-03 05:48:53'),
(73, '', 0, 0, 0, 1, 'Nava_ratna_stones Description', 'nava_ratna_stones', 'Nava_ratna_stones', 'Nava_ratna_stones Description', 1, '2015-05-03 05:56:16', '2015-05-07 23:00:41', 2, '2015-05-03 05:54:26', '2016-04-28 05:54:40', NULL, 1, '<p>Nava_ratna_stones Description</p>\n<table border="0" cellpadding="0" cellspacing="0" style="">\n<tbody>\n<tr height="150">\n<td align="left" class="xl65" height="150" width="458">Ruby for Surya (Sun), Pearl for Chandra (Moon), Red Coral for Mangala (Mars), Emerald for Budha (Mercury), Yellow sapphire for B?haspati (Jupiter), Diamond for Shukra (Venus), Blue sapphire for Shani (Saturn), Hessonite for Rahu (the ascending node of the Moon) Cat''s Eye for Ketu (the descending node of the Moon)</td>\n</tr>\n</tbody>\n</table>', 5, NULL, 4, '2015-05-03 05:57:02', '2015-05-03 05:57:28', '99', 10, 1, 'product/Nava_ratna_stones1.jpg', '2015-05-03 05:56:16'),
(74, '', 0, 0, 0, 1, 'Gold', 'gold', 'Gold', '', 1, '2015-05-03 06:01:48', '2015-05-03 06:05:53', 2, '2015-05-03 06:00:44', '2016-04-28 06:00:56', NULL, 1, '<table border="0" cellpadding="0" cellspacing="0">\n<tbody>\n<tr height="25">\n<td class="xl65" height="25" width="192">Gold</td>\n</tr>\n</tbody>\n</table>', 60, NULL, 50, '2015-05-03 06:04:51', '2016-04-28 06:05:17', '100', 10, 1, 'product/Gold.jpg', '2015-05-03 06:01:48'),
(75, '', 0, 0, 0, 1, 'Silver', 'silver', 'Silver', '', 1, '2015-05-03 06:09:01', '2015-05-03 06:15:13', 2, '2015-05-03 06:06:59', '2016-04-28 06:07:40', NULL, 1, '<table border="0" cellpadding="0" cellspacing="0">\n<tbody>\n<tr height="25">\n<td class="xl65" height="25" width="192">Silver</td>\n</tr>\n</tbody>\n</table>', 70, NULL, 1, '2015-05-03 06:14:30', '2016-04-28 06:15:09', '101', 10, 1, 'product/Silver.jpg', '2015-05-03 06:09:01'),
(76, '', 0, 0, 0, 1, 'Pearl', 'pearl', 'Pearl', '', 1, '2015-05-03 06:20:08', '2015-05-03 06:22:05', 2, '2015-05-03 06:18:30', '2016-04-28 06:19:14', NULL, 1, '<table border="0" cellpadding="0" cellspacing="0">\n<tbody>\n<tr height="25">\n<td class="xl65" height="25" width="192">Pearl</td>\n</tr>\n</tbody>\n</table>', 2, NULL, 2, '2015-05-03 06:20:56', '2016-04-28 06:22:01', '102', 10, 1, 'product/Pearl.jpg', '2015-05-03 06:20:08'),
(77, '', 0, 0, 0, 1, 'Coral', 'coral', 'Coral', '', 1, '2015-05-03 06:25:49', '2015-05-03 06:27:09', 2, '2015-05-03 06:24:45', '2016-04-28 06:24:52', NULL, 1, '<table border="0" cellpadding="0" cellspacing="0">\n<tbody>\n<tr height="25">\n<td class="xl65" height="25" width="192">Coral</td>\n</tr>\n</tbody>\n</table>', 2, NULL, 2, '2015-05-03 06:26:45', '2016-04-28 06:26:59', '103', 10, 1, 'product/Coral.jpg', '2015-05-03 06:25:49'),
(78, '', 0, 0, 0, 1, 'Semi_Precious_Stones Description', 'semi_precious_stones', 'Semi_Precious_Stones', 'Semi_Precious_Stones Description', 1, '2015-05-03 06:44:14', '2015-05-07 23:03:18', 2, '2015-05-03 06:42:57', '2016-04-28 06:43:08', NULL, 1, '<p>Semi_Precious_Stones Description</p>\n<table border="0" cellpadding="0" cellspacing="0" style="">\n<tbody>\n<tr height="50">\n<td align="left" class="xl65" height="50" width="458">Used to be placed on the pedestal of the idol</td>\n</tr>\n</tbody>\n</table>', NULL, NULL, NULL, NULL, NULL, '104', NULL, 1, 'product/Semi_Precious_Stones.jpg', '2015-05-03 06:44:14'),
(79, '', 0, 0, 0, 1, 'Tin', 'tin', 'TinTun', '', 1, '2015-05-03 06:54:53', '2015-05-03 06:59:15', 2, '2015-05-03 06:51:54', '2016-04-28 06:49:22', NULL, 1, '<p></p>\n<p>Tin</p>', 2, NULL, 2, '2015-05-03 06:58:37', '2016-04-28 06:58:49', '105', 10, 1, 'product/tin.jpg', '2015-05-03 06:54:53'),
(80, '', 0, 0, 0, 1, 'Golden_Needle Description', 'golden_needle', 'Golden_Needle', 'Golden_Needle Description', 1, '2015-05-03 09:17:02', '2015-05-07 23:04:14', 2, '2015-05-03 09:16:02', '2016-04-27 09:16:11', NULL, 1, '<p>Golden_Needle Description</p>\n<table border="0" cellpadding="0" cellspacing="0" style="">\n<tbody>\n<tr height="50">\n<td align="left" class="xl65" height="50" width="458">To decorate the idols.</td>\n</tr>\n</tbody>\n</table>', 90, NULL, 83, '2015-05-03 09:17:48', '2016-04-27 09:18:01', '106', 10, 1, 'product/Golden_Needle.jpg', '2015-05-03 09:17:02'),
(81, '', 0, 0, 0, 1, 'Kurma_Yantra Description', 'kurma_yantra', 'Kurma_Yantra', 'Kurma_Yantra Description', 1, '2015-05-03 09:27:04', '2015-05-07 23:07:45', 2, '2015-05-03 09:26:13', '2016-04-27 09:26:20', NULL, 1, '<p>Kurma_Yantra Description</p>\n<table border="0" cellpadding="0" cellspacing="0" style="">\n<tbody>\n<tr height="50">\n<td align="left" class="xl65" height="50" width="458">Gold Coated Brass plate with the design</td>\n</tr>\n</tbody>\n</table>', 30, NULL, 25, '2015-05-03 09:28:43', '2016-04-27 09:28:53', '107', 10, 1, 'product/kurma-yantra.png', '2015-05-03 09:27:04'),
(82, '', 0, 0, 0, 1, 'Hanuman_Yantra Description', 'hanuman_yantra', 'Hanuman_Yantra', 'Hanuman_Yantra Description', 1, '2015-05-03 09:41:48', '2015-05-07 23:11:33', 2, '2015-05-03 09:38:07', '2016-04-27 09:38:13', NULL, 1, '<p>Hanuman_Yantra Description</p>\n<table border="0" cellpadding="0" cellspacing="0" style="">\n<tbody>\n<tr height="50">\n<td align="left" class="xl65" height="50" width="458">Gold Coated Brass plate with the design</td>\n</tr>\n</tbody>\n</table>', 30, NULL, 25, '2015-05-03 09:42:45', '2016-04-27 09:42:58', '108', 10, 1, 'product/Hanuman_Yantra.jpg', '2015-05-03 09:41:48'),
(83, '', 0, 0, 0, 1, 'Dattatreya_Yantra Description', 'dattatreya_yantra', 'dattatreya_yantra', 'Dattatreya_Yantra Description', 1, '2015-05-03 09:46:54', '2015-05-07 23:13:17', 2, '2015-05-03 09:46:23', '2016-04-27 09:46:29', NULL, 1, '<p>Dattatreya_Yantra Description</p>\n<table border="0" cellpadding="0" cellspacing="0" style="">\n<tbody>\n<tr height="50">\n<td align="left" class="xl65" height="50" width="458">Gold Coated Brass plate with the design</td>\n</tr>\n</tbody>\n</table>', 30, NULL, 25, '2015-05-03 09:47:18', '2016-04-27 09:47:44', '109', 10, 1, 'product/dattatreya_yantra.jpg', '2015-05-03 09:46:54'),
(84, '', 0, 0, 0, 1, 'Rama_Yantra Description', 'rama_yantra', 'Rama_Yantra', 'Rama_Yantra Description', 1, '2015-05-03 10:13:05', '2015-05-07 23:14:42', 2, '2015-05-03 09:48:44', '2016-04-27 09:48:49', NULL, 1, '<p>Rama_Yantra Description</p>\n<table border="0" cellpadding="0" cellspacing="0" style="">\n<tbody>\n<tr height="50">\n<td align="left" class="xl65" height="50" width="458">Gold Coated Brass plate with the design</td>\n</tr>\n</tbody>\n</table>', 30, NULL, 30, '2015-05-03 10:14:28', '2016-04-27 10:14:37', '110', 10, 1, 'product/Rama_Yantra.jpg', '2015-05-03 10:13:05'),
(85, '', 0, 0, 0, 1, 'Seeta_Yantra Description', 'seeta_yantra', 'Seeta_Yantra', 'Seeta_Yantra Description', 1, '2015-05-03 10:53:38', '2015-05-07 23:18:27', 2, '2015-05-03 10:52:05', '2016-04-27 10:52:12', NULL, 1, '<p>Seeta_Yantra Description</p>\n<p>Gold Coated Brass plate with the design</p>\n<p></p>\n<p></p>\n<p></p>', 25, NULL, 25, '2015-05-03 10:54:41', '2016-04-27 10:54:54', '111', 10, 1, 'product/Seeta_Yantra.jpg', '2015-05-03 10:53:38');
INSERT INTO `shop_product` (`id`, `keywords_string`, `rating_count`, `rating_sum`, `rating_average`, `site_id`, `title`, `slug`, `_meta_title`, `description`, `gen_description`, `created`, `updated`, `status`, `publish_date`, `expiry_date`, `short_url`, `in_sitemap`, `content`, `unit_price`, `sale_id`, `sale_price`, `sale_from`, `sale_to`, `sku`, `num_in_stock`, `available`, `image`, `date_added`) VALUES
(86, '', 0, 0, 0, 1, 'Sri_Yantra Description', 'sri_yantra', 'Sri_Yantra', 'Sri_Yantra Description', 1, '2015-05-03 11:01:05', '2015-05-07 23:20:03', 2, '2015-05-03 10:59:53', '2016-04-27 11:00:00', NULL, 1, '<p>Sri_Yantra Description</p>\n<table border="0" cellpadding="0" cellspacing="0" style="">\n<tbody>\n<tr height="50">\n<td align="left" class="xl65" height="50" width="458">Gold Coated Brass plate with the design</td>\n</tr>\n</tbody>\n</table>', 25, NULL, 25, '2015-05-03 11:02:03', '2016-04-27 11:02:56', '112', 10, 1, 'product/Sri_Yantra.jpg', '2015-05-03 11:01:05'),
(87, '', 0, 0, 0, 1, 'Shiva_Yantra', 'shiva_yantra', 'Shiva_Yantra', '', 1, '2015-05-03 11:06:58', '2015-05-03 11:08:10', 2, '2015-05-03 11:05:59', '2016-04-27 11:06:08', NULL, 1, '<table border="0" cellpadding="0" cellspacing="0">\n<tbody>\n<tr height="25">\n<td class="xl65" height="25" width="192">Shiva_Yantra</td>\n</tr>\n</tbody>\n</table>', 30, NULL, 25, '2015-05-03 11:07:46', '2015-05-03 11:08:03', '113', 10, 1, 'product/Shiva_Yantra.jpg', '2015-05-03 11:06:58'),
(88, '', 0, 0, 0, 1, 'Vaastu_Yantra Description', 'vaastu_yantra', 'Vaastu_Yantra', 'Vaastu_Yantra Description', 1, '2015-05-03 11:11:08', '2015-05-07 23:21:31', 2, '2015-05-03 11:10:07', '2016-04-27 11:10:14', NULL, 1, '<p>Vaastu_Yantra Description</p>\n<table border="0" cellpadding="0" cellspacing="0" style="">\n<tbody>\n<tr height="50">\n<td align="left" class="xl65" height="50" width="458">Gold Coated Brass plate with the design</td>\n</tr>\n</tbody>\n</table>', 30, NULL, 25, '2015-05-03 11:11:51', '2016-04-27 11:12:16', '114', 10, 1, 'product/Vaastu_Yantra.jpg', '2015-05-03 11:11:08'),
(89, '', 0, 0, 0, 1, 'Sudarshana_Yantra Description', 'sudarshana_yantra', 'Sudarshana_Yantra', 'Sudarshana_Yantra Description', 1, '2015-05-03 11:23:16', '2015-05-07 23:24:12', 2, '2015-05-03 11:22:05', '2016-04-27 11:22:06', NULL, 1, '<p>Sudarshana_Yantra Description</p>\n<table border="0" cellpadding="0" cellspacing="0" style="">\n<tbody>\n<tr height="50">\n<td align="left" class="xl65" height="50" width="458">Gold Coated Brass plate with the design</td>\n</tr>\n</tbody>\n</table>\n<p><br><br></p>', 30, NULL, 25, '2015-05-03 11:23:56', '2016-04-27 11:24:11', '115', 10, 1, 'product/Sudarshana_Yantra.jpg', '2015-05-03 11:23:16'),
(90, '', 0, 0, 0, 1, 'Subrahmanya_Yantra Description', 'subrahmanya_yantra', 'Subrahmanya_Yantra', 'Subrahmanya_Yantra Description', 1, '2015-05-03 11:28:56', '2015-05-07 23:25:22', 2, '2015-05-03 11:25:41', '2016-04-27 11:25:46', NULL, 1, '<p>Subrahmanya_Yantra Description</p>\n<table border="0" cellpadding="0" cellspacing="0" style="">\n<tbody>\n<tr height="75">\n<td align="left" class="xl65" height="75" width="458">Gold Coated Brass plate with the design</td>\n</tr>\n</tbody>\n</table>', 30, NULL, 25, '2015-05-03 11:30:29', '2016-04-27 11:30:48', '116', 10, 1, 'product/Subrahmanya_Yantra.jpg', '2015-05-03 11:28:56'),
(91, '', 0, 0, 0, 1, 'Ganapati_Yantra Description', 'ganapati_yantra', 'Ganapati_Yantra', 'Ganapati_Yantra Description', 1, '2015-05-03 11:34:27', '2015-05-07 23:27:08', 2, '2015-05-03 11:32:57', '2016-04-27 11:33:03', NULL, 1, '<p>Ganapati_Yantra Description</p>\n<table border="0" cellpadding="0" cellspacing="0" style="">\n<tbody>\n<tr height="50">\n<td align="left" class="xl65" height="50" width="458">Gold Coated Brass plate with the design</td>\n</tr>\n</tbody>\n</table>', 30, NULL, 25, '2015-05-03 11:35:39', '2016-04-27 11:35:50', '117', 10, 1, 'product/Ganapati_Yantra.jpg', '2015-05-03 11:34:27'),
(92, '', 0, 0, 0, 1, 'Flags_in_Specified_Colours Description', 'flags_in_specified_colours', 'Flags_in_Specified_Colours', 'Flags_in_Specified_Colours Description', 1, '2015-05-03 11:40:29', '2015-05-07 22:48:18', 2, '2015-05-03 11:39:39', '2016-04-27 11:39:45', NULL, 1, '<p>Flags_in_Specified_Colours Description</p>\n<table border="0" cellpadding="0" cellspacing="0" style="">\n<tbody>\n<tr height="50">\n<td align="left" class="xl65" height="50" width="458">Small Flags made with synthetic cloth to decorate the poles/ pillars of the Temple.</td>\n</tr>\n</tbody>\n</table>', 2, NULL, 2, '2015-05-03 11:42:10', '2016-04-27 11:42:19', '118', 10, 1, 'product/Flags_in_Specified_Colours.jpg', '2015-05-03 11:40:29'),
(93, '', 0, 0, 0, 1, 'Maha_Dhwaja', 'maha_dhwaja', 'Maha_Dhwaja', '', 1, '2015-05-03 11:46:38', '2015-05-03 11:48:38', 2, '2015-05-03 11:43:44', '2016-04-27 11:43:51', NULL, 1, '<table border="0" cellpadding="0" cellspacing="0">\n<tbody>\n<tr height="25">\n<td class="xl65" height="25" width="192">Maha_Dhwaja</td>\n</tr>\n</tbody>\n</table>', 17, NULL, 17, '2015-05-03 11:48:20', '2016-04-27 11:48:31', '119', 10, 1, 'product/Maha_Dhwaja.jpg', '2015-05-03 11:46:38'),
(94, '', 0, 0, 0, 1, 'Japa_Mala Description', 'japa_mala', 'Japa_Mala', 'Japa_Mala Description', 1, '2015-05-03 11:53:12', '2015-05-07 23:06:43', 2, '2015-05-03 11:49:58', '2016-04-27 11:49:59', NULL, 1, '<p>Japa_Mala Description</p>\n<table border="0" cellpadding="0" cellspacing="0" style="">\n<tbody>\n<tr height="25">\n<td align="left" class="xl65" height="25" width="458">Rosary made of beeds of Ficus Racemosa wood.</td>\n</tr>\n</tbody>\n</table>', 2, NULL, 2, '2015-05-03 11:53:55', '2016-04-27 11:54:03', '120', 10, 1, 'product/Japa_Mala1.jpg', '2015-05-03 11:53:12'),
(95, '', 0, 0, 0, 1, 'Hand_Fan_small  Description', 'hand_fan_small', 'Hand_Fan_small', '\n\n\nHand_Fan_small    \n\n\n\nDescription\n\n\n\n \n\n\n\nHand Made Plastic Decorative Fan, to be used for personal comfort in the hot and humid areas including the fire places\n\n\n\n\n\n\n\n', 1, '2015-05-03 12:20:44', '2015-05-09 02:56:43', 2, '2015-05-03 12:03:45', '2016-04-27 12:03:47', NULL, 1, '<table border="0" cellpadding="0" cellspacing="0">\n<tbody>\n<tr height="25">\n<td class="xl65" height="25" width="192">Hand_Fan_small    \n<table border="0" cellpadding="0" cellspacing="0">\n<tbody>\n<tr height="36">\n<td class="xl65" height="36" width="458">Description</td>\n</tr>\n</tbody>\n</table>\n \n<table border="0" cellpadding="0" cellspacing="0">\n<tbody>\n<tr height="75">\n<td align="left" class="xl65" height="75" width="458">Hand Made Plastic Decorative Fan, to be used for personal comfort in the hot and humid areas including the fire places</td>\n</tr>\n</tbody>\n</table>\n<table border="0" cellpadding="0" cellspacing="0">\n<tbody>\n<tr height="36">\n<td class="xl65" height="36" width="458">\n<p></p>\n<p></p>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>', 1, NULL, 0, '2015-05-03 12:21:26', '2015-05-03 12:21:40', '121', 15, 1, 'product/Wholesa-font-b-fans.jpg', '2015-05-03 12:20:44'),
(96, '', 0, 0, 0, 1, 'Magnifying_Class Description', 'magnifying_class', 'Magnifying_Class', 'Magnifying_Class Description', 1, '2015-05-03 12:24:24', '2015-05-07 17:54:26', 2, '2015-05-03 12:23:21', '2016-04-27 12:23:28', NULL, 1, '<p>Magnifying_Class Description</p>\n<table border="0" cellpadding="0" cellspacing="0" style="">\n<tbody>\n<tr height="75">\n<td align="left" class="xl65" height="75" width="458">Hand Made Synthetic Decorative Fan covered with pieces of cloth, to be used for personal comfort in the hot and humid areas including the fire places</td>\n</tr>\n</tbody>\n</table>', 4, NULL, 3, '2015-05-03 12:25:24', '2016-04-27 12:25:52', '122', 10, 1, 'product/Magnifying_Class.jpg', '2015-05-03 12:24:24'),
(97, '', 0, 0, 0, 1, 'Sruva Description', 'sruva', 'Sruva', 'Sruva Description', 1, '2015-05-03 12:33:33', '2015-05-07 17:56:20', 2, '2015-05-03 12:32:37', '2016-04-27 12:32:46', NULL, 1, '<p>Sruva Description</p>\n<table border="0" cellpadding="0" cellspacing="0" style="">\n<tbody>\n<tr height="50">\n<td align="left" class="xl65" height="50" width="458">18" long Wooden Spoon to pour Ghee into the firepit.</td>\n</tr>\n</tbody>\n</table>', 10, NULL, 8, '2015-05-03 12:35:33', '2016-04-27 12:35:48', '123', 10, 1, 'product/Sruva.jpg', '2015-05-03 12:33:33'),
(98, '', 0, 0, 0, 1, 'Sruk Description', 'sruk', 'Sruk', 'Sruk Description', 1, '2015-05-03 12:45:01', '2015-05-07 17:58:24', 2, '2015-05-03 12:37:16', '2016-04-27 12:37:21', NULL, 1, '<p>Sruk Description</p>\n<table border="0" cellpadding="0" cellspacing="0" style="">\n<tbody>\n<tr height="50">\n<td align="left" class="xl65" height="50" width="458">24" long Wooden Spoon to pour Ghee into the firepit.</td>\n</tr>\n</tbody>\n</table>', 18, NULL, 17, '2015-05-03 12:45:46', '2016-04-27 12:45:56', '124', 10, 1, 'product/Sruk.jpg', '2015-05-03 12:45:01'),
(99, '', 0, 0, 0, 1, 'Bangles Description', 'bangles', 'Bangles', 'Bangles Description', 1, '2015-05-03 13:11:46', '2015-05-07 18:02:09', 2, '2015-05-03 13:07:25', '2016-04-27 13:07:31', NULL, 1, '<p>Bangles Description</p>\n<table border="0" cellpadding="0" cellspacing="0" style="">\n<tbody>\n<tr height="50">\n<td align="left" class="xl65" height="50" width="458">Decorative braces made of mud, to be presented to married ladies as a respect.</td>\n</tr>\n</tbody>\n</table>', 1, NULL, 0, '2015-05-03 13:12:24', '2016-04-27 13:12:38', '125', 10, 1, 'product/Bangles.jpg', '2015-05-03 13:11:46'),
(100, '', 0, 0, 0, 1, 'Comb Description', 'comb', 'Comb', 'Comb Description', 1, '2015-05-03 13:17:20', '2015-05-07 18:09:28', 2, '2015-05-03 13:13:37', '2016-04-27 13:13:54', NULL, 1, '<p>Comb Description</p>\n<table border="0" cellpadding="0" cellspacing="0">\n<tbody>\n<tr height="50">\n<td align="left" class="xl65" height="50" width="458">Decorative Combs, to be presented to married ladies as a respect.</td>\n</tr>\n</tbody>\n</table>', 1, NULL, 0, '2015-05-03 13:17:56', '2016-04-27 13:18:15', '126', 10, 1, 'product/Comb.jpg', '2015-05-03 13:17:20'),
(101, '', 0, 0, 0, 1, 'Haldi_Kunkum_Satchets', 'haldi_kunkum_satchets', 'Haldi_Kunkum_Satchets', '', 1, '2015-05-03 13:24:04', '2015-05-03 13:25:01', 2, '2015-05-03 13:23:15', '2016-04-27 13:23:17', NULL, 1, '<table border="0" cellpadding="0" cellspacing="0">\n<tbody>\n<tr height="41">\n<td class="xl65" height="41" width="192">Haldi_Kunkum_Satchets</td>\n</tr>\n</tbody>\n</table>', 1, NULL, 0, '2015-05-03 13:24:45', '2016-04-27 13:24:59', '127', 10, 1, 'product/Haldi_Kunkum_Satchets.jpg', '2015-05-03 13:24:04'),
(102, '', 0, 0, 0, 1, 'Mirror Description', 'mirror', 'Mirror', 'Mirror Description', 1, '2015-05-04 09:46:51', '2015-05-07 18:28:23', 2, '2015-05-04 09:46:18', '2016-04-27 09:46:24', NULL, 1, '<p>Mirror Description</p>\n<table border="0" cellpadding="0" cellspacing="0" style="">\n<tbody>\n<tr height="25">\n<td align="left" class="xl65" height="25" width="458">Used as a decorative accessory and offered to the deities.</td>\n</tr>\n</tbody>\n</table>', 9, NULL, 8, '2015-05-04 09:47:38', '2016-04-27 09:47:53', '128', 10, 1, 'product/Mirror_j8MVWGN.jpg', '2015-05-04 09:46:51'),
(103, '', 0, 0, 0, 1, 'Black_Beeds Description', 'black_beeds', 'Black_Beeds', 'Black_Beeds Description', 1, '2015-05-04 09:54:09', '2015-05-07 18:30:22', 2, '2015-05-04 09:48:48', '2016-04-27 09:49:11', NULL, 1, '<p>Black_Beeds Description</p>\n<table border="0" cellpadding="0" cellspacing="0" style="">\n<tbody>\n<tr height="50">\n<td align="left" class="xl65" height="50" width="458">Decorative Beeds used in the necklace.</td>\n</tr>\n</tbody>\n</table>', 1, NULL, 0, '2015-05-04 09:56:06', '2016-04-27 09:59:02', '129', 10, 1, 'product/Black_Beeds.jpg', '2015-05-04 09:54:09'),
(104, '', 0, 0, 0, 1, 'Sandal_Powder Description', 'sandal_powder', 'Sandal_Powder', 'Sandal_Powder Description', 1, '2015-05-04 10:06:55', '2015-05-07 22:39:48', 2, '2015-05-04 10:05:58', '2016-04-27 10:06:00', NULL, 1, '<p>Sandal_Powder Description</p>\n<table border="0" cellpadding="0" cellspacing="0" style="">\n<tbody>\n<tr height="50">\n<td align="left" class="xl65" height="50" width="458">Sandal Wood Colored Powder, used as Topical Application, mixed with water.</td>\n</tr>\n</tbody>\n</table>', 2, NULL, 2, '2015-05-04 10:07:35', '2016-04-27 10:07:53', '130', 10, 1, 'product/Sandal_Powder.jpg', '2015-05-04 10:06:55'),
(105, '', 0, 0, 0, 1, 'Sumangali_Set(Small) Description', 'sumangali_setsmall', 'Sumangali_Set(Small)', 'Sumangali_Set(Small) Description', 1, '2015-05-04 10:17:51', '2015-05-07 22:41:13', 2, '2015-05-04 10:14:45', '2016-04-27 10:14:51', NULL, 1, '<p>Sumangali_Set(Small) Description</p>\n<table border="0" cellpadding="0" cellspacing="0" style="">\n<tbody>\n<tr height="150">\n<td align="left" class="xl65" height="150" width="458">Set of items, presented to respected ladies, containing 1) Small_boxes of Vermillion, Turmeric Powder, Turmeric Roots, Decorative wax, Decorative braces made of mud, Decorative Combs, Pieces of Cloth (Usable for stitching blowse) are decoratively packed in two plates woven with Slit_Bamboo strips.</td>\n</tr>\n</tbody>\n</table>', 7, NULL, 5, '2015-05-04 10:18:32', '2016-04-27 10:18:40', '131', 10, 1, 'product/Sumangali_SetSmall.jpg-c200', '2015-05-04 10:17:51'),
(106, '', 0, 0, 0, 1, 'Hanging_Lamps Description', 'hanging_lamps', 'Hanging_Lamps', 'Hanging_Lamps Description', 1, '2015-05-05 04:43:39', '2015-05-07 19:34:57', 2, '2015-05-05 04:41:36', '2016-04-28 04:41:41', NULL, 1, '<p>Hanging_Lamps Description</p>\n<table border="0" cellpadding="0" cellspacing="0" style="">\n<tbody>\n<tr height="50">\n<td align="left" class="xl65" height="50" width="458">Hanging Lamps in special design, secured by a metal chain, to illuminate the temple.</td>\n</tr>\n</tbody>\n</table>', 25, NULL, 20, '2015-05-05 04:44:27', '2016-04-28 04:44:35', '132', 10, 1, 'product/Hanging_Lamps.jpg', '2015-05-05 04:43:39'),
(107, '', 0, 0, 0, 1, 'Hanging_Bell  Description', 'hanging_bell', 'Hanging_Bell', 'Hanging_Bell  Description ', 1, '2015-05-05 04:46:27', '2015-05-07 19:38:24', 2, '2015-05-05 04:45:17', '2016-04-28 04:45:18', NULL, 1, '<p>Hanging_Bell  Description </p>\n<table border="0" cellpadding="0" cellspacing="0" style="">\n<tbody>\n<tr height="50">\n<td align="left" class="xl65" height="50" width="458">Hanging Bell, with fine acoustics, rung by the devotees, as a mark of visit to the temple.</td>\n</tr>\n</tbody>\n</table>', 40, NULL, 33, '2015-05-05 04:47:46', '2016-04-28 04:48:00', '133', 10, 1, 'product/hanging_bell1.jpg', '2015-05-05 04:46:27'),
(108, '', 0, 0, 0, 1, 'Decorative_Clothes Description', 'decorative_clothes-description', 'Decorative_Clothes Description', 'Decorative_Clothes Description', 1, '2015-05-07 20:22:22', '2015-05-07 20:24:57', 2, '2015-05-07 20:21:52', '2016-04-27 20:21:58', NULL, 1, '<p>Decorative_Clothes Description</p>\n<table border="0" cellpadding="0" cellspacing="0" style="">\n<tbody>\n<tr height="50">\n<td align="left" class="xl65" height="50" width="458">Used for idols.</td>\n</tr>\n</tbody>\n</table>', 30, NULL, 25, '2015-05-07 20:24:46', '2016-04-27 20:24:55', '134', 10, 1, 'product/radhakrishna-dress-DQ99_l.jpg', '2015-05-07 20:22:22'),
(109, '', 0, 0, 0, 1, 'Copper Description', 'copper-description', 'Copper ', 'Copper Description', 1, '2015-05-07 23:40:13', '2015-05-07 23:41:47', 2, '2015-05-07 23:38:35', '2016-04-27 23:38:47', NULL, 1, '<p>Copper Description</p>\n<table border="0" cellpadding="0" cellspacing="0">\n<tbody>\n<tr height="50">\n<td align="left" class="xl65" height="50" width="458">Small piece of metal placed on the pedestal of the idol</td>\n</tr>\n</tbody>\n</table>', 2, NULL, 2, '2015-05-07 23:41:27', '2016-04-27 23:41:45', '135', 10, 1, 'product/copr.jpg', '2015-05-07 23:40:13'),
(110, '', 0, 0, 0, 1, 'Bronze Description', 'bronze-description', 'Bronze', 'Bronze Description', 1, '2015-05-07 23:52:13', '2015-05-07 23:57:03', 2, '2015-05-07 23:50:44', '2016-04-27 23:50:49', NULL, 1, '<p>Bronze Description</p>\n<table border="0" cellpadding="0" cellspacing="0">\n<tbody>\n<tr height="50">\n<td align="left" class="xl65" height="50" width="458">Small piece of metal placed on the pedestal of the idol</td>\n</tr>\n</tbody>\n</table>', 2, NULL, 2, '2015-05-07 23:54:58', '2016-04-27 23:55:20', '136', 10, 1, 'product/bronze-gold-bellagio1_1.jpg', '2015-05-07 23:52:13'),
(111, '', 0, 0, 0, 1, 'Brass Description', 'brass-description', 'Brass', 'Brass Description', 1, '2015-05-08 00:13:19', '2015-05-08 00:16:57', 2, '2015-05-08 00:11:52', '2016-04-28 00:11:58', NULL, 1, '<p>Brass Description</p>\n<table border="0" cellpadding="0" cellspacing="0">\n<tbody>\n<tr height="50">\n<td align="left" class="xl65" height="50" width="458">Small piece of metal placed on the pedestal of the idol</td>\n</tr>\n</tbody>\n</table>', 2, NULL, 2, '2015-05-08 00:16:44', '2016-04-28 00:16:55', '137', 10, 1, 'product/brass1.jpg', '2015-05-08 00:13:19'),
(112, '', 0, 0, 0, 1, 'Lead Description', 'lead-description', 'Lead', 'Lead Description', 1, '2015-05-08 00:31:19', '2015-05-08 00:31:54', 2, '2015-05-08 00:20:05', '2016-04-28 00:20:10', NULL, 1, '<p>Lead Description</p>\n<table border="0" cellpadding="0" cellspacing="0">\n<tbody>\n<tr height="50">\n<td align="left" class="xl65" height="50" width="458">Small piece of metal placed on the pedestal of the idol</td>\n</tr>\n</tbody>\n</table>', 2, NULL, 2, '2015-05-08 00:31:42', '2016-04-28 00:31:50', '138', 10, 1, 'product/lead-cut.jpg', '2015-05-08 00:31:19'),
(113, '', 0, 0, 0, 1, 'Tin  Description', 'tin-description', 'Tin', 'Tin  Description', 1, '2015-05-08 00:40:22', '2015-05-08 00:42:50', 2, '2015-05-08 00:39:20', '2016-04-28 00:39:25', NULL, 1, '<p>Tin  Description</p>\n<table border="0" cellpadding="0" cellspacing="0">\n<tbody>\n<tr height="50">\n<td align="left" class="xl65" height="50" width="458">Small piece of metal placed on the pedestal of the idol</td>\n</tr>\n</tbody>\n</table>', 2, NULL, 2, '2015-05-08 00:42:38', '2016-04-28 00:42:47', '139', 10, 1, 'product/tin_7bo8kWa.jpg', '2015-05-08 00:40:22'),
(114, '', 0, 0, 0, 1, 'Silver Description', 'silver-description', 'Silver ', '\n\n\n\nSilver Description', 1, '2015-05-08 16:10:39', '2015-05-08 16:11:26', 2, '2015-05-08 00:48:08', '2016-04-27 16:09:50', NULL, 1, '<table border="0" cellpadding="0" cellspacing="0">\n<tbody>\n<tr height="25">\n<td align="left" class="xl65" height="25" width="458">\n<p>Silver Description</p>\n<p>Small piece of metal placed on the pedestal of the idol</p>\n</td>\n</tr>\n</tbody>\n</table>', 2, NULL, 2, '2015-05-08 16:10:59', '2016-04-27 16:11:07', '140', 10, 1, 'product/Silver_jKRMoCZ.jpg', '2015-05-08 16:10:39'),
(115, '', 0, 0, 0, 1, 'Gold Description', 'gold-description', 'Gold', '\n\n\n\nGold Description', 1, '2015-05-08 16:49:55', '2015-05-08 16:54:49', 2, '2015-05-08 16:46:08', '2016-04-27 16:46:17', NULL, 1, '<table border="0" cellpadding="0" cellspacing="0">\n<tbody>\n<tr height="25">\n<td align="left" class="xl65" height="25" width="458">\n<p>Gold Description</p>\n<p>Small piece of metal placed on the pedestal of the idol</p>\n</td>\n</tr>\n</tbody>\n</table>', 60, NULL, 50, '2015-05-08 16:54:22', '2016-04-27 16:54:33', '141', 10, 1, 'product/gold1.jpg', '2015-05-08 16:49:55'),
(116, '', 0, 0, 0, 1, 'Mangalyam Description', 'mangalyam-description', 'Mangalyam', 'Mangalyam', 1, '2015-05-08 17:29:06', '2015-05-08 17:43:19', 2, '2015-05-08 17:26:16', '2016-04-27 17:26:26', NULL, 1, '<p>Mangalyam</p>\n<table border="0" cellpadding="0" cellspacing="0">\n<tbody>\n<tr height="50">\n<td align="left" class="xl65" height="50" width="458">Golden_Ornament, a mandatory accessory for a married lady, used as an offering to Goddess.</td>\n</tr>\n</tbody>\n</table>', 60, NULL, 50, '2015-05-08 17:43:07', '2016-04-27 17:43:16', '142', 10, 1, 'product/mangalyam.jpg', '2015-05-08 17:29:06'),
(117, '', 0, 0, 0, 1, '"Lamp_with_stand(30"" Height) Swan on the top  (12 Kg)" Description', 'lamp_with_stand30-height-swan-on-the-top-12-kg-description', 'Lamp with Stand (30 Height) swan on the top (12kg) Description', 'Lamp with Stand (30 Height) swan on the top (12kg) Description', 1, '2015-05-08 18:17:57', '2015-05-08 18:27:16', 2, '2015-05-08 18:15:09', '2016-04-27 18:15:15', NULL, 1, '<p>Lamp with Stand (30 Height) swan on the top (12kg) Description</p>\n<table border="0" cellpadding="0" cellspacing="0">\n<tbody>\n<tr height="100">\n<td align="left" class="xl65" height="100" width="458">Lamp Post with the provision of 5 more slots to light cotton wicks, immersed in Oil or Ghee.</td>\n</tr>\n</tbody>\n</table>', 30, NULL, 25, '2015-05-08 18:24:57', '2016-04-27 18:27:13', '143', 10, 1, 'product/Lamp_with_stand30.jpg', '2015-05-08 18:17:57'),
(118, '', 0, 0, 0, 1, 'Hanging Lamps (Lakshmi Design) Description', 'hanging-lamps-lakshmi-design-description', 'Hanging Lamps (Lakshmi Design) ', 'Hanging Lamps (Lakshmi Design) Description', 1, '2015-05-08 18:35:44', '2015-05-08 18:36:14', 2, '2015-05-08 18:32:14', '2016-04-27 18:32:19', NULL, 1, '<p>Hanging Lamps (Lakshmi Design) Description</p>\n<table border="0" cellpadding="0" cellspacing="0">\n<tbody>\n<tr height="50">\n<td align="left" class="xl65" height="50" width="458">Hanging Lamps in special design, secured by a metal chain, to illuminate the temple.</td>\n</tr>\n</tbody>\n</table>', 30, NULL, 20, '2015-05-08 18:36:03', '2016-04-27 18:36:12', '144', 10, 1, 'product/Hanging_Lamps_Lakshmi_Design.JPG', '2015-05-08 18:35:44'),
(119, '', 0, 0, 0, 1, 'Saree Description', 'saree-description', 'Saree', 'Saree Description', 1, '2015-05-08 18:48:14', '2015-05-08 18:49:00', 2, '2015-05-08 18:40:02', '2016-04-27 18:40:11', NULL, 1, '<p>Saree Description</p>\n<table border="0" cellpadding="0" cellspacing="0">\n<tbody>\n<tr height="25">\n<td align="left" class="xl65" height="25" width="458">7 Yard Cloth, draped by ladies in Indian Style</td>\n</tr>\n</tbody>\n</table>', 9, NULL, 8, '2015-05-08 18:48:45', '2016-04-27 18:48:54', '145', 10, 1, 'product/saries.jpg', '2015-05-08 18:48:14'),
(120, '', 0, 0, 0, 1, 'Ekaarati Description', 'ekaarati-description', 'Ekaarati', 'Ekaarati Description', 1, '2015-05-08 19:04:50', '2015-05-08 19:07:39', 2, '2015-05-08 18:59:41', '2016-04-27 18:59:47', NULL, 1, '<p>Ekaarati Description</p>\n<table border="0" cellpadding="0" cellspacing="0">\n<tbody>\n<tr height="25">\n<td align="left" class="xl65" height="25" width="458">Metal Plate to hold cotton wick.</td>\n</tr>\n</tbody>\n</table>\n<p></p>\n<table border="0" cellpadding="0" cellspacing="0">\n<tbody>\n<tr height="25">\n<td align="left" class="xl67" height="25" width="189">\n<p></p>\n</td>\n</tr>\n</tbody>\n</table>', 4, NULL, 3, '2015-05-08 19:07:27', '2016-04-27 19:07:37', '146', 10, 1, 'product/brass-ekarathi.jpg', '2015-05-08 19:04:50'),
(121, '', 0, 0, 0, 1, 'Black Wax Description', 'black-wax-description', 'Black Wax', 'Black Wax Description', 1, '2015-05-09 02:48:35', '2015-05-09 02:53:19', 2, '2015-05-09 02:46:42', '2016-04-28 02:46:49', NULL, 1, '<p>Black Wax Description</p>\n<table border="0" cellpadding="0" cellspacing="0">\n<tbody>\n<tr height="25">\n<td align="left" class="xl65" height="25" width="458">Decorative wax to be used to colour the idols.</td>\n</tr>\n</tbody>\n</table>', 10, NULL, 8, '2015-05-09 02:53:07', '2016-04-28 02:53:17', '147', 10, 1, 'product/BlackWaxCheddar_Large.jpg', '2015-05-09 02:48:35');

-- --------------------------------------------------------

--
-- Table structure for table `shop_productaction`
--

CREATE TABLE IF NOT EXISTS `shop_productaction` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `total_cart` int(11) NOT NULL,
  `total_purchase` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_id` (`product_id`,`timestamp`),
  KEY `shop_productaction_7f1b40ad` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shop_productaction`
--

INSERT INTO `shop_productaction` (`id`, `product_id`, `timestamp`, `total_cart`, `total_purchase`) VALUES
(1, 2, 735714, 1, 0),
(2, 4, 735714, 1, 0),
(3, 5, 735719, 1, 0),
(4, 2, 735726, 2, 0),
(5, 91, 735726, 1, 0),
(6, 53, 735726, 1, 0),
(7, 95, 735726, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `shop_productimage`
--

CREATE TABLE IF NOT EXISTS `shop_productimage` (
  `id` int(11) NOT NULL,
  `_order` int(11) DEFAULT NULL,
  `file` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `shop_productimage_7f1b40ad` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shop_productimage`
--

INSERT INTO `shop_productimage` (`id`, `_order`, `file`, `description`, `product_id`) VALUES
(5, 0, 'product/paady_-1.jpg', '', 2),
(7, 0, 'product/round_bamboo_tray1.jpg', '', 4),
(8, 0, 'product/bamboo-basket-1_LmjbG4a.jpg', '', 5),
(9, 0, 'product/cowdung.jpg', '', 6),
(10, 0, 'product/gomutram.jpg', '', 7),
(11, 0, 'product/cow.jpg', '', 8),
(12, 0, 'product/natural-honey-wax-250x250.jpg', '', 9),
(13, 0, 'product/sandalwood.jpg', '', 10),
(14, 0, 'product/coconut.jpg', '', 11),
(15, 0, 'product/darbha.jpg', '', 12),
(17, 0, 'product/samit1.jpg', '', 14),
(18, 0, 'product/Navagraha_samit.jpg', '', 15),
(19, 0, 'product/samit2.jpg', '', 16),
(20, 0, 'product/havan-samhidha-2-700x525.jpg', '', 17),
(21, 0, 'product/samit.jpg', '', 18),
(22, 0, 'product/black_jeera.jpg', '', 19),
(23, 0, 'product/pacha_karpooram.jpg', '', 20),
(24, 0, 'product/popped_rice.jpg', '', 21),
(25, 0, 'product/thread.jpg', '', 22),
(26, 0, 'product/turmaric_roots.jpg', '', 23),
(27, 0, 'product/Ghanta2.jpg', '', 24),
(28, 0, 'product/brassplate.png', '', 25),
(29, 1, 'product/copper_plate.jpg', '', 25),
(30, 2, 'product/Stainless-Steel-Dinner-Plates.jpg', '', 25),
(31, 0, 'product/brassvessels.jpg', '', 26),
(32, 0, 'product/Turmeric_Powder.jpg', '', 27),
(33, 0, 'product/Vermilion_Kunkum.jpg', '', 28),
(34, 0, 'product/Naaga-Sindhuram-.jpg', '', 29),
(35, 0, 'product/Holi-Gulal.jpg', '', 30),
(36, 0, 'product/Vibhuthi.jpg', '', 31),
(37, 0, 'product/cotton_wicks.JPG', '', 32),
(38, 1, 'product/oil-lamp-wicks-.jpg', '', 32),
(39, 0, 'product/camphorblock.jpg', '', 33),
(40, 0, 'product/Camphor_Block.jpg', '', 34),
(41, 0, 'product/areca-nut.jpg', '', 35),
(42, 0, 'product/DryFruits_Assorted.jpg', '', 36),
(43, 0, 'product/A_close_up_of_Areca_nut.JPG', '', 37),
(44, 0, 'product/lavancha.jpg', '', 38),
(45, 0, 'product/Guggilam.jpg', '', 39),
(46, 0, 'product/sambrani.jpg', '', 40),
(47, 0, 'product/Copra.jpg', '', 41),
(48, 0, 'product/Leaf_Plate.jpg', '', 42),
(49, 0, 'product/Jatamamsi.jpg', '', 43),
(50, 0, 'product/Yagnopavitham.jpg', '', 44),
(51, 0, 'product/Napkin.jpg', '', 45),
(52, 0, 'product/Jute_Rope.jpg', '', 46),
(53, 0, 'product/cotton-twine.jpg', '', 47),
(54, 0, 'product/coconut-coir-fibre_67sMOeh.jpg', '', 48),
(55, 0, 'product/Wooden_paduka_set.jpg', '', 49),
(56, 0, 'product/sky-umbrella.jpg', '', 50),
(57, 0, 'product/chata.jpg', '', 51),
(58, 0, 'product/Yagnopavitham_1TkIhIk.jpg', '', 52),
(59, 0, 'product/fan.jpg', '', 53),
(60, 0, 'product/kalasam.jpg', '', 54),
(61, 0, 'product/co.jpg', '', 55),
(62, 1, 'product/Bronze_Kalasam.jpg', '', 55),
(63, 0, 'product/Bronze_Kalasam_LRYXhLD.jpg', '', 56),
(64, 1, 'product/kal.jpg', '', 56),
(65, 0, 'product/gon-sandalwood-paste.jpg', '', 57),
(66, 0, 'product/sandalwood_7SY3iGP.jpg', '', 58),
(67, 0, 'product/deepastamba.jpg', '', 59),
(68, 0, 'product/Pancha_Patra_set.jpg', '', 60),
(69, 0, 'product/Mangala_Arati_plate.jpg', '', 61),
(70, 0, 'product/Buckets_Steel.jpeg', '', 62),
(71, 0, 'product/Mattelu_toe_rings.jpg', '', 63),
(72, 0, 'product/Towels.jpg', '', 64),
(73, 0, 'product/Black_cotton_cloth.gif', '', 65),
(74, 0, 'product/Napkin_jwxsEs0.jpg', '', 66),
(75, 0, 'product/Blouse_Pieces.jpg', '', 67),
(76, 0, 'product/Red_silk_cloth.jpg', '', 68),
(77, 0, 'product/Shawl.jpg', '', 69),
(78, 0, 'product/Shikara_Vastram_silk.jpg', '', 70),
(79, 0, 'product/Mercury.jpg', '', 71),
(80, 0, 'product/Sulphur.jpg', '', 72),
(81, 0, 'product/Nava_ratna_stones1.jpg', '', 73),
(82, 0, 'product/Gold.jpg', '', 74),
(83, 0, 'product/Silver.jpg', '', 75),
(84, 0, 'product/Pearl.jpg', '', 76),
(85, 0, 'product/Coral.jpg', '', 77),
(86, 0, 'product/Semi_Precious_Stones.jpg', '', 78),
(87, 0, 'product/tin.jpg', '', 79),
(88, 0, 'product/Golden_Needle.jpg', '', 80),
(89, 0, 'product/kurma-yantra.png', '', 81),
(90, 0, 'product/Hanuman_Yantra.jpg', '', 82),
(91, 0, 'product/dattatreya_yantra.jpg', '', 83),
(92, 0, 'product/Rama_Yantra.jpg', '', 84),
(93, 0, 'product/Seeta_Yantra.jpg', '', 85),
(94, 0, 'product/Sri_Yantra.jpg', '', 86),
(95, 0, 'product/Shiva_Yantra.jpg', '', 87),
(96, 0, 'product/Vaastu_Yantra.jpg', '', 88),
(97, 0, 'product/Sudarshana_Yantra.jpg', '', 89),
(98, 0, 'product/Subrahmanya_Yantra.jpg', '', 90),
(99, 0, 'product/Ganapati_Yantra.jpg', '', 91),
(100, 0, 'product/Flags_in_Specified_Colours.jpg', '', 92),
(101, 1, 'product/Flags_in_Specified_Colours1.jpg', '', 92),
(102, 0, 'product/Maha_Dhwaja.jpg', '', 93),
(103, 0, 'product/Japa_Mala1.jpg', '', 94),
(104, 1, 'product/Japa_Mala.jpg', '', 94),
(105, 0, 'product/Wholesa-font-b-fans.jpg', '', 95),
(106, 0, 'product/Magnifying_Class.jpg', '', 96),
(107, 0, 'product/Sruva.jpg', '18" long Wooden Spoon to pour Ghee into the firepit.', 97),
(108, 0, 'product/Sruk.jpg', '24" long Wooden Spoon to pour Ghee into the firepit.', 98),
(109, 0, 'product/Bangles.jpg', '', 99),
(110, 0, 'product/Comb.jpg', '', 100),
(111, 1, 'product/Comb1.jpg', '', 100),
(112, 0, 'product/Haldi_Kunkum_Satchets.jpg', '', 101),
(113, 0, 'product/Mirror_j8MVWGN.jpg', '', 102),
(114, 0, 'product/Black_Beeds.jpg', '', 103),
(115, 0, 'product/Sandal_Powder.jpg', '', 104),
(116, 0, 'product/Sumangali_SetSmall.jpg-c200', '', 105),
(117, 0, 'product/Hanging_Lamps.jpg', '', 106),
(118, 1, 'product/hanging_-_lamps.jpg', '', 106),
(119, 0, 'product/hanging_bell1.jpg', '', 107),
(120, 1, 'product/cotton_towels.jpg', '', 64),
(121, 1, 'product/napkins.jpg', '', 66),
(122, 0, 'product/radhakrishna-dress-DQ99_l.jpg', '', 108),
(123, 1, 'product/blouse.jpg', '', 67),
(124, 0, 'product/copr.jpg', '', 109),
(125, 0, 'product/bronze-gold-bellagio1_1.jpg', '', 110),
(126, 0, 'product/brass1.jpg', '', 111),
(127, 0, 'product/lead-cut.jpg', '', 112),
(128, 0, 'product/tin_7bo8kWa.jpg', '', 113),
(129, 0, 'product/Silver_jKRMoCZ.jpg', '', 114),
(130, 0, 'product/gold1.jpg', '', 115),
(131, 0, 'product/mangalyam.jpg', '', 116),
(132, 0, 'product/Lamp_with_stand30.jpg', '', 117),
(133, 1, 'product/standing-brass-oil-lamp-AY03_l.jpg', '', 117),
(134, 0, 'product/Hanging_Lamps_Lakshmi_Design.JPG', '', 118),
(135, 0, 'product/saries.jpg', '', 119),
(136, 0, 'product/brass-ekarathi.jpg', '', 120),
(137, 0, 'product/BlackWaxCheddar_Large.jpg', '', 121);

-- --------------------------------------------------------

--
-- Table structure for table `shop_productoption`
--

CREATE TABLE IF NOT EXISTS `shop_productoption` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shop_productoption`
--

INSERT INTO `shop_productoption` (`id`, `type`, `name`) VALUES
(1, 1, 'Small'),
(2, 1, 'Medium'),
(3, 1, 'Large'),
(4, 2, 'Red'),
(5, 2, 'Yellow'),
(6, 2, 'Green'),
(7, 2, 'Blue');

-- --------------------------------------------------------

--
-- Table structure for table `shop_productvariation`
--

CREATE TABLE IF NOT EXISTS `shop_productvariation` (
  `id` int(11) NOT NULL,
  `unit_price` decimal(10,0) DEFAULT NULL,
  `sale_id` int(11) DEFAULT NULL,
  `sale_price` decimal(10,0) DEFAULT NULL,
  `sale_from` datetime DEFAULT NULL,
  `sale_to` datetime DEFAULT NULL,
  `sku` varchar(20) DEFAULT NULL,
  `num_in_stock` int(11) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `default` tinyint(1) NOT NULL,
  `image_id` int(11) DEFAULT NULL,
  `option1` varchar(50) DEFAULT NULL,
  `option2` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sku` (`sku`),
  KEY `shop_productvariation_7f1b40ad` (`product_id`),
  KEY `shop_productvariation_06df7330` (`image_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shop_productvariation`
--

INSERT INTO `shop_productvariation` (`id`, `unit_price`, `sale_id`, `sale_price`, `sale_from`, `sale_to`, `sku`, `num_in_stock`, `product_id`, `default`, `image_id`, `option1`, `option2`) VALUES
(13, 1, NULL, 1, '2015-04-27 04:53:50', '2016-04-28 04:54:23', '13', 300, 2, 1, 5, 'Medium', 'Yellow'),
(15, 2, NULL, 2, '2015-04-27 05:38:37', '2016-04-28 05:38:51', '15', 10, 4, 1, 7, 'Medium', 'Yellow'),
(16, 3, NULL, 3, '2015-04-27 05:43:49', '2016-04-28 05:44:07', '16', 10, 5, 1, 8, 'Medium', 'Yellow'),
(17, 1, NULL, 1, '2015-04-27 05:48:25', '2016-04-28 05:48:41', '17', 1, 6, 1, 9, 'Medium', NULL),
(18, 0, NULL, 0, '2015-04-27 05:57:02', '2015-08-11 05:57:17', '18', 5, 7, 1, 10, 'Medium', 'Yellow'),
(20, 10, NULL, 7, '2015-04-27 06:13:01', '2015-04-27 06:13:13', '20', 5, 9, 1, 12, 'Medium', NULL),
(21, 200, NULL, 170, '2015-04-27 06:19:22', '2016-04-28 06:19:30', '21', 150, 10, 1, 13, 'Medium', NULL),
(22, 2, NULL, 0, '2015-04-27 06:24:32', '2016-04-28 06:24:46', '22', 250, 11, 1, 14, 'Medium', NULL),
(25, 0, NULL, 0, '2015-04-27 06:45:02', '2016-04-28 06:45:19', '25', 10000, 14, 1, 17, 'Medium', 'Yellow'),
(26, 0, NULL, 0, '2015-04-27 06:49:46', '2016-04-28 06:49:55', '26', 5000, 15, 1, 18, 'Medium', NULL),
(27, 0, NULL, 0, '2015-04-27 07:11:50', '2016-04-27 07:11:58', '27', 50, 16, 1, 19, 'Medium', 'Yellow'),
(29, 50, NULL, 40, '2015-04-27 21:17:50', '2016-04-27 21:18:01', '29', 50, 17, 1, 20, 'Medium', 'Yellow'),
(30, 0, NULL, 0, '2015-04-27 21:29:41', '2016-04-27 21:29:54', '30', 5000, 18, 1, 21, 'Medium', 'Yellow'),
(31, 7, NULL, 5, '2015-04-27 22:31:53', '2016-04-27 22:32:10', '31', 50, 19, 1, 22, NULL, NULL),
(32, 11, NULL, 10, '2015-04-27 22:37:37', '2016-04-27 22:37:48', '32', 5, 20, 1, 23, 'Medium', NULL),
(33, NULL, NULL, NULL, NULL, NULL, '33', NULL, 21, 1, 24, 'Medium', NULL),
(34, 150, NULL, 100, '2015-04-27 22:42:33', '2016-04-27 22:42:43', '34', 50, 22, 1, 25, NULL, NULL),
(36, 3, NULL, 2, '2015-04-28 02:53:11', '2016-04-28 02:53:21', '36', 20, 23, 1, 26, 'Medium', NULL),
(37, 8, NULL, 8, '2015-04-27 22:56:44', '2016-04-27 22:57:09', '37', 10, 24, 1, 27, 'Medium', NULL),
(39, NULL, NULL, NULL, NULL, NULL, '39', NULL, 25, 1, 28, 'Medium', NULL),
(41, NULL, NULL, NULL, NULL, NULL, '41', NULL, 26, 1, 31, 'Medium', NULL),
(42, 5, NULL, 2, '2015-04-28 00:34:30', '2016-04-28 00:36:37', '42', 20, 27, 1, 32, 'Medium', 'Yellow'),
(43, 5, NULL, 2, '2015-04-28 00:39:20', '2016-04-28 00:39:33', '43', 1000, 28, 1, 33, NULL, NULL),
(44, 8, NULL, 6, '2015-04-28 00:48:28', '2016-04-28 00:48:40', '44', 20, 29, 1, 34, 'Medium', NULL),
(45, 2, NULL, 1, '2015-04-28 00:50:45', '2016-04-28 00:50:59', '45', 15, 30, 1, 35, NULL, NULL),
(46, 4, NULL, 2, '2015-04-28 00:53:03', '2016-04-28 00:53:13', '46', 20, 31, 1, 36, 'Medium', NULL),
(47, 2, NULL, 0, '2015-04-28 01:03:42', '2016-04-28 01:03:56', '47', 50, 32, 1, 37, 'Medium', NULL),
(49, 7, NULL, 6, '2015-04-28 01:24:06', '2016-04-28 01:24:24', '49', 20, 33, 1, 39, 'Medium', NULL),
(50, 7, NULL, 6, '2015-04-28 01:11:03', '2016-04-28 01:11:13', '50', 20, 34, 1, 40, 'Medium', NULL),
(51, 8, NULL, 7, '2015-04-28 02:21:47', '2016-04-28 02:21:51', '51', 20, 35, 1, 41, NULL, NULL),
(52, 4, NULL, 3, '2015-04-28 02:27:01', '2016-04-28 02:27:09', '52', 15, 36, 1, 42, NULL, NULL),
(53, 7, NULL, 6, '2015-04-28 02:35:25', '2016-04-28 02:35:37', '53', 15, 37, 1, 43, 'Medium', NULL),
(54, 10, NULL, 8, '2015-04-28 02:38:20', '2016-04-28 02:38:28', '54', 2, 38, 1, 44, 'Medium', NULL),
(55, 17, NULL, 15, '2015-04-28 02:42:26', '2016-04-28 02:42:34', '55', 3, 39, 1, 45, 'Medium', NULL),
(56, 6, NULL, 5, '2015-04-28 02:47:00', '2016-04-28 02:47:07', '56', 5, 40, 1, 46, 'Medium', NULL),
(57, 3, NULL, 1, '2015-04-28 02:51:45', '2016-04-28 02:51:52', '57', 50, 41, 1, 47, 'Medium', NULL),
(59, 4, NULL, 3, '2015-05-01 23:55:16', '2016-04-27 23:55:26', '59', 20, 42, 1, 48, 'Medium', NULL),
(60, 11, NULL, 9, '2015-04-28 02:58:40', '2016-04-28 02:59:18', '60', 1, 43, 1, 49, 'Medium', NULL),
(62, NULL, NULL, NULL, NULL, NULL, '62', NULL, 44, 1, 50, 'Medium', NULL),
(63, 0, NULL, 0, '2015-04-28 03:07:38', '2016-04-28 03:07:51', '63', 200, 45, 1, 51, NULL, NULL),
(64, 1, NULL, 1, '2015-04-28 03:17:05', '2016-04-28 03:17:13', '64', 1, 46, 1, 52, 'Medium', NULL),
(65, 1, NULL, 0, '2015-05-02 00:07:27', '2016-04-28 00:08:40', '65', 0, 12, 1, 15, 'Medium', NULL),
(66, NULL, NULL, NULL, NULL, NULL, '66', NULL, 18, 0, 21, 'Medium', NULL),
(67, NULL, NULL, NULL, NULL, NULL, '67', NULL, 14, 0, 17, 'Medium', NULL),
(68, NULL, NULL, NULL, NULL, NULL, '68', NULL, 7, 0, 10, 'Medium', NULL),
(69, 0, NULL, 0, '2015-04-28 03:34:09', '2016-04-28 03:34:16', '69', 1, 8, 1, 11, 'Medium', NULL),
(70, 1, NULL, 1, '2015-04-28 03:38:07', '2016-04-28 03:38:23', '70', 50, 47, 1, 53, NULL, NULL),
(71, 100, NULL, 100, '2015-04-28 03:42:52', '2016-04-28 03:43:03', '71', 10, 48, 1, 54, 'Medium', NULL),
(73, 4, NULL, 3, '2015-04-28 03:46:44', '2016-04-28 03:47:14', '73', 5, 49, 1, 55, 'Medium', NULL),
(75, 5, NULL, 4, '2015-04-28 03:58:14', '2016-04-28 03:58:24', '75', 10, 50, 1, 56, 'Medium', NULL),
(77, 2, NULL, 2, '2015-04-28 04:26:51', '2016-04-28 04:27:07', '77', 10, 51, 1, 57, 'Medium', NULL),
(78, 0, NULL, 0, '2015-05-02 00:01:27', '2016-04-28 00:01:43', '78', 20, 52, 1, 58, NULL, NULL),
(79, 2, NULL, 1, '2015-05-02 00:40:10', '2016-04-28 00:40:22', '79', 20, 53, 1, 59, NULL, NULL),
(80, 30, NULL, 25, '2015-05-02 01:03:47', '2016-04-28 01:03:56', '80', 10, 54, 1, 60, NULL, NULL),
(81, 4, NULL, 3, '2015-05-02 01:12:38', '2016-04-28 01:12:45', '81', 10, 55, 1, 61, NULL, NULL),
(82, 30, NULL, 21, '2015-05-02 01:31:52', '2016-04-28 01:32:02', '82', 5, 56, 1, 63, NULL, NULL),
(83, 7, NULL, 5, '2015-05-02 17:18:52', '2016-04-27 17:19:04', '83', 10, 57, 1, 65, NULL, NULL),
(84, 80, NULL, 67, '2015-05-02 17:21:54', '2016-04-27 17:22:05', '84', 10, 58, 1, 66, NULL, NULL),
(85, 12, NULL, 11, '2015-05-02 17:24:32', '2016-04-27 17:24:43', '85', 10, 59, 1, 67, NULL, NULL),
(86, 56, NULL, 33, '2015-05-02 17:28:31', '2016-04-27 17:28:40', '86', 10, 60, 1, 68, NULL, NULL),
(87, 15, NULL, 10, '2015-05-02 22:29:49', '2016-04-27 22:30:01', '87', 10, 61, 1, 69, NULL, NULL),
(88, 7, NULL, NULL, '2015-05-02 22:35:23', '2016-04-27 22:35:35', '88', 10, 62, 1, 70, NULL, NULL),
(89, 6, NULL, 3, '2015-05-02 10:13:19', '2016-04-27 10:13:30', '89', 10, 63, 1, 71, NULL, NULL),
(90, 1, NULL, 1, '2015-05-02 10:29:25', '2016-04-27 10:29:36', '90', 10, 64, 1, 72, NULL, NULL),
(91, 1, NULL, 0, '2015-05-02 10:42:54', '2016-04-27 10:43:07', '91', 10, 65, 1, 73, NULL, NULL),
(92, 1, NULL, 1, '2015-05-02 10:52:22', '2016-04-27 10:52:33', '92', 10, 66, 1, 74, NULL, NULL),
(93, 2, NULL, 1, '2015-05-03 05:20:41', '2016-04-28 05:20:51', '93', 10, 67, 1, 75, NULL, NULL),
(94, 2, NULL, 1, '2015-05-03 05:26:37', '2016-04-28 05:26:51', '94', 10, 68, 1, 76, NULL, NULL),
(95, 6, NULL, 5, '2015-05-03 05:31:49', '2016-04-28 05:32:21', '95', 10, 69, 1, 77, NULL, NULL),
(96, 7, NULL, 5, '2015-05-03 05:36:32', '2016-04-28 05:36:44', '96', 10, 70, 1, 78, NULL, NULL),
(97, 150, NULL, 100, '2015-05-03 05:43:51', '2016-04-28 05:44:01', '97', 10, 71, 1, 79, NULL, NULL),
(98, 2, NULL, 2, '2015-05-03 05:52:14', '2016-04-28 05:52:54', '98', 10, 72, 1, 80, NULL, NULL),
(99, 5, NULL, 4, '2015-05-03 05:57:02', '2015-05-03 05:57:28', '99', 10, 73, 1, 81, NULL, NULL),
(100, 60, NULL, 50, '2015-05-03 06:04:51', '2016-04-28 06:05:17', '100', 10, 74, 1, 82, NULL, NULL),
(101, 70, NULL, 1, '2015-05-03 06:14:30', '2016-04-28 06:15:09', '101', 10, 75, 1, 83, NULL, NULL),
(102, 2, NULL, 2, '2015-05-03 06:20:56', '2016-04-28 06:22:01', '102', 10, 76, 1, 84, NULL, NULL),
(103, 2, NULL, 2, '2015-05-03 06:26:45', '2016-04-28 06:26:59', '103', 10, 77, 1, 85, NULL, NULL),
(104, NULL, NULL, NULL, NULL, NULL, '104', NULL, 78, 1, 86, NULL, NULL),
(105, 2, NULL, 2, '2015-05-03 06:58:37', '2016-04-28 06:58:49', '105', 10, 79, 1, 87, NULL, NULL),
(106, 90, NULL, 83, '2015-05-03 09:17:48', '2016-04-27 09:18:01', '106', 10, 80, 1, 88, NULL, NULL),
(107, 30, NULL, 25, '2015-05-03 09:28:43', '2016-04-27 09:28:53', '107', 10, 81, 1, 89, NULL, NULL),
(108, 30, NULL, 25, '2015-05-03 09:42:45', '2016-04-27 09:42:58', '108', 10, 82, 1, 90, NULL, NULL),
(109, 30, NULL, 25, '2015-05-03 09:47:18', '2016-04-27 09:47:44', '109', 10, 83, 1, 91, NULL, NULL),
(110, 30, NULL, 30, '2015-05-03 10:14:28', '2016-04-27 10:14:37', '110', 10, 84, 1, 92, NULL, NULL),
(111, 25, NULL, 25, '2015-05-03 10:54:41', '2016-04-27 10:54:54', '111', 10, 85, 1, 93, NULL, NULL),
(112, 25, NULL, 25, '2015-05-03 11:02:03', '2016-04-27 11:02:56', '112', 10, 86, 1, 94, NULL, NULL),
(113, 30, NULL, 25, '2015-05-03 11:07:46', '2015-05-03 11:08:03', '113', 10, 87, 1, 95, NULL, NULL),
(114, 30, NULL, 25, '2015-05-03 11:11:51', '2016-04-27 11:12:16', '114', 10, 88, 1, 96, NULL, NULL),
(115, 30, NULL, 25, '2015-05-03 11:23:56', '2016-04-27 11:24:11', '115', 10, 89, 1, 97, NULL, NULL),
(116, 30, NULL, 25, '2015-05-03 11:30:29', '2016-04-27 11:30:48', '116', 10, 90, 1, 98, NULL, NULL),
(117, 30, NULL, 25, '2015-05-03 11:35:39', '2016-04-27 11:35:50', '117', 10, 91, 1, 99, NULL, NULL),
(118, 2, NULL, 2, '2015-05-03 11:42:10', '2016-04-27 11:42:19', '118', 10, 92, 1, 100, NULL, NULL),
(119, 17, NULL, 17, '2015-05-03 11:48:20', '2016-04-27 11:48:31', '119', 10, 93, 1, 102, NULL, NULL),
(120, 2, NULL, 2, '2015-05-03 11:53:55', '2016-04-27 11:54:03', '120', 10, 94, 1, 103, NULL, NULL),
(121, 1, NULL, 0, '2015-05-03 12:21:26', '2015-05-03 12:21:40', '121', 15, 95, 1, 105, NULL, NULL),
(122, 4, NULL, 3, '2015-05-03 12:25:24', '2016-04-27 12:25:52', '122', 10, 96, 1, 106, NULL, NULL),
(123, 10, NULL, 8, '2015-05-03 12:35:33', '2016-04-27 12:35:48', '123', 10, 97, 1, 107, NULL, NULL),
(124, 18, NULL, 17, '2015-05-03 12:45:46', '2016-04-27 12:45:56', '124', 10, 98, 1, 108, NULL, NULL),
(125, 1, NULL, 0, '2015-05-03 13:12:24', '2016-04-27 13:12:38', '125', 10, 99, 1, 109, NULL, NULL),
(126, 1, NULL, 0, '2015-05-03 13:17:56', '2016-04-27 13:18:15', '126', 10, 100, 1, 110, NULL, NULL),
(127, 1, NULL, 0, '2015-05-03 13:24:45', '2016-04-27 13:24:59', '127', 10, 101, 1, 112, NULL, NULL),
(128, 9, NULL, 8, '2015-05-04 09:47:38', '2016-04-27 09:47:53', '128', 10, 102, 1, 113, NULL, NULL),
(129, 1, NULL, 0, '2015-05-04 09:56:06', '2016-04-27 09:59:02', '129', 10, 103, 1, 114, NULL, NULL),
(130, 2, NULL, 2, '2015-05-04 10:07:35', '2016-04-27 10:07:53', '130', 10, 104, 1, 115, NULL, NULL),
(131, 7, NULL, 5, '2015-05-04 10:18:32', '2016-04-27 10:18:40', '131', 10, 105, 1, 116, NULL, NULL),
(132, 25, NULL, 20, '2015-05-05 04:44:27', '2016-04-28 04:44:35', '132', 10, 106, 1, 117, NULL, NULL),
(133, 40, NULL, 33, '2015-05-05 04:47:46', '2016-04-28 04:48:00', '133', 10, 107, 1, 119, NULL, NULL),
(134, 30, NULL, 25, '2015-05-07 20:24:46', '2016-04-27 20:24:55', '134', 10, 108, 1, 122, NULL, NULL),
(135, 2, NULL, 2, '2015-05-07 23:41:27', '2016-04-27 23:41:45', '135', 10, 109, 1, 124, NULL, NULL),
(136, 2, NULL, 2, '2015-05-07 23:54:58', '2016-04-27 23:55:20', '136', 10, 110, 1, 125, NULL, NULL),
(137, 2, NULL, 2, '2015-05-08 00:16:44', '2016-04-28 00:16:55', '137', 10, 111, 1, 126, NULL, NULL),
(138, 2, NULL, 2, '2015-05-08 00:31:42', '2016-04-28 00:31:50', '138', 10, 112, 1, 127, NULL, NULL),
(139, 2, NULL, 2, '2015-05-08 00:42:38', '2016-04-28 00:42:47', '139', 10, 113, 1, 128, NULL, NULL),
(140, 2, NULL, 2, '2015-05-08 16:10:59', '2016-04-27 16:11:07', '140', 10, 114, 1, 129, NULL, NULL),
(141, 60, NULL, 50, '2015-05-08 16:54:22', '2016-04-27 16:54:33', '141', 10, 115, 1, 130, NULL, NULL),
(142, 60, NULL, 50, '2015-05-08 17:43:07', '2016-04-27 17:43:16', '142', 10, 116, 1, 131, NULL, NULL),
(143, 30, NULL, 25, '2015-05-08 18:24:57', '2016-04-27 18:27:13', '143', 10, 117, 1, 132, NULL, NULL),
(144, 30, NULL, 20, '2015-05-08 18:36:03', '2016-04-27 18:36:12', '144', 10, 118, 1, 134, NULL, NULL),
(145, 9, NULL, 8, '2015-05-08 18:48:45', '2016-04-27 18:48:54', '145', 10, 119, 1, 135, NULL, NULL),
(146, 4, NULL, 3, '2015-05-08 19:07:27', '2016-04-27 19:07:37', '146', 10, 120, 1, 136, NULL, NULL),
(147, 10, NULL, 8, '2015-05-09 02:53:07', '2016-04-28 02:53:17', '147', 10, 121, 1, 137, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shop_product_categories`
--

CREATE TABLE IF NOT EXISTS `shop_product_categories` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_id` (`product_id`,`category_id`),
  KEY `shop_product_categories_7f1b40ad` (`product_id`),
  KEY `shop_product_categories_6f33f001` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shop_product_categories`
--

INSERT INTO `shop_product_categories` (`id`, `product_id`, `category_id`) VALUES
(313, 2, 1),
(321, 4, 2),
(322, 4, 14),
(319, 5, 2),
(320, 5, 14),
(318, 6, 3),
(244, 7, 3),
(242, 8, 3),
(362, 10, 16),
(299, 11, 5),
(312, 12, 5),
(315, 14, 5),
(316, 15, 5),
(250, 16, 5),
(251, 17, 5),
(314, 18, 5),
(300, 19, 10),
(216, 20, 10),
(343, 22, 9),
(344, 23, 9),
(288, 25, 7),
(261, 26, 7),
(345, 27, 9),
(363, 28, 9),
(347, 29, 9),
(228, 30, 11),
(348, 31, 9),
(349, 32, 9),
(350, 33, 9),
(351, 34, 9),
(352, 35, 9),
(353, 36, 9),
(354, 37, 9),
(355, 38, 9),
(305, 39, 12),
(357, 40, 9),
(307, 41, 10),
(308, 42, 12),
(309, 43, 12),
(292, 45, 8),
(359, 46, 9),
(317, 47, 11),
(360, 49, 9),
(273, 50, 11),
(281, 51, 11),
(361, 52, 9),
(366, 53, 11),
(367, 53, 14),
(285, 54, 7),
(287, 55, 7),
(286, 56, 7),
(289, 60, 7),
(331, 63, 13),
(293, 64, 8),
(294, 65, 8),
(295, 66, 8),
(296, 67, 8),
(297, 68, 8),
(298, 69, 11),
(236, 72, 15),
(332, 78, 13),
(333, 80, 13),
(336, 82, 7),
(337, 83, 7),
(338, 84, 7),
(339, 86, 7),
(258, 87, 7),
(340, 88, 7),
(341, 90, 7),
(342, 91, 7),
(325, 92, 8),
(335, 94, 11),
(365, 95, 11),
(368, 95, 17),
(279, 99, 11),
(280, 100, 11),
(356, 101, 9),
(283, 102, 11),
(284, 103, 11),
(358, 104, 9),
(324, 105, 11),
(290, 106, 7),
(291, 107, 7);

-- --------------------------------------------------------

--
-- Table structure for table `shop_product_related_products`
--

CREATE TABLE IF NOT EXISTS `shop_product_related_products` (
  `id` int(11) NOT NULL,
  `from_product_id` int(11) NOT NULL,
  `to_product_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `from_product_id` (`from_product_id`,`to_product_id`),
  KEY `shop_product_related_products_f8955233` (`from_product_id`),
  KEY `shop_product_related_products_61e9a379` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shop_product_related_products`
--

INSERT INTO `shop_product_related_products` (`id`, `from_product_id`, `to_product_id`) VALUES
(436, 2, 5),
(420, 2, 6),
(378, 2, 7),
(379, 2, 10),
(380, 2, 11),
(400, 2, 15),
(443, 4, 5),
(444, 4, 6),
(445, 4, 7),
(446, 4, 10),
(447, 4, 11),
(448, 4, 15),
(428, 5, 2),
(449, 5, 4),
(430, 5, 6),
(431, 5, 7),
(432, 5, 10),
(433, 5, 11),
(434, 5, 15),
(412, 6, 2),
(450, 6, 4),
(438, 6, 5),
(415, 6, 7),
(416, 6, 10),
(417, 6, 11),
(418, 6, 15),
(384, 7, 2),
(451, 7, 4),
(439, 7, 5),
(423, 7, 6),
(343, 7, 10),
(363, 7, 11),
(404, 7, 15),
(344, 8, 10),
(364, 8, 11),
(405, 8, 15),
(368, 9, 10),
(369, 9, 11),
(406, 9, 15),
(385, 10, 2),
(452, 10, 4),
(440, 10, 5),
(424, 10, 6),
(333, 10, 7),
(334, 10, 8),
(371, 10, 9),
(366, 10, 11),
(407, 10, 15),
(386, 11, 2),
(453, 11, 4),
(441, 11, 5),
(425, 11, 6),
(353, 11, 7),
(354, 11, 8),
(372, 11, 9),
(356, 11, 10),
(408, 11, 15),
(409, 12, 15),
(410, 14, 15),
(388, 15, 2),
(454, 15, 4),
(442, 15, 5),
(426, 15, 6),
(392, 15, 7),
(393, 15, 8),
(394, 15, 9),
(395, 15, 10),
(396, 15, 11),
(397, 15, 12),
(398, 15, 14);

-- --------------------------------------------------------

--
-- Table structure for table `shop_product_upsell_products`
--

CREATE TABLE IF NOT EXISTS `shop_product_upsell_products` (
  `id` int(11) NOT NULL,
  `from_product_id` int(11) NOT NULL,
  `to_product_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `from_product_id` (`from_product_id`,`to_product_id`),
  KEY `shop_product_upsell_products_f8955233` (`from_product_id`),
  KEY `shop_product_upsell_products_61e9a379` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shop_product_upsell_products`
--

INSERT INTO `shop_product_upsell_products` (`id`, `from_product_id`, `to_product_id`) VALUES
(684, 2, 5),
(664, 2, 6),
(587, 2, 7),
(588, 2, 10),
(589, 2, 11),
(615, 2, 14),
(641, 2, 15),
(592, 2, 17),
(693, 4, 5),
(694, 4, 6),
(695, 4, 7),
(696, 4, 10),
(697, 4, 11),
(698, 4, 14),
(699, 4, 15),
(700, 4, 17),
(674, 5, 2),
(701, 5, 4),
(676, 5, 6),
(677, 5, 7),
(678, 5, 10),
(679, 5, 11),
(680, 5, 14),
(681, 5, 15),
(682, 5, 17),
(654, 6, 2),
(702, 6, 4),
(686, 6, 5),
(657, 6, 7),
(658, 6, 10),
(659, 6, 11),
(660, 6, 14),
(661, 6, 15),
(662, 6, 17),
(595, 7, 2),
(703, 7, 4),
(687, 7, 5),
(667, 7, 6),
(538, 7, 10),
(562, 7, 11),
(619, 7, 14),
(645, 7, 15),
(438, 7, 17),
(539, 8, 10),
(563, 8, 11),
(620, 8, 14),
(646, 8, 15),
(449, 8, 17),
(570, 9, 10),
(571, 9, 11),
(621, 9, 14),
(647, 9, 15),
(569, 9, 17),
(596, 10, 2),
(704, 10, 4),
(688, 10, 5),
(668, 10, 6),
(526, 10, 7),
(527, 10, 8),
(575, 10, 9),
(565, 10, 11),
(622, 10, 14),
(648, 10, 15),
(532, 10, 17),
(597, 11, 2),
(705, 11, 4),
(689, 11, 5),
(669, 11, 6),
(550, 11, 7),
(551, 11, 8),
(576, 11, 9),
(553, 11, 10),
(623, 11, 14),
(649, 11, 15),
(556, 11, 17),
(624, 12, 14),
(650, 12, 15),
(579, 12, 17),
(602, 14, 2),
(706, 14, 4),
(690, 14, 5),
(670, 14, 6),
(606, 14, 7),
(607, 14, 8),
(608, 14, 9),
(609, 14, 10),
(610, 14, 11),
(611, 14, 12),
(651, 14, 15),
(613, 14, 17),
(628, 15, 2),
(707, 15, 4),
(691, 15, 5),
(671, 15, 6),
(632, 15, 7),
(633, 15, 8),
(634, 15, 9),
(635, 15, 10),
(636, 15, 11),
(637, 15, 12),
(638, 15, 14),
(639, 15, 17),
(399, 16, 17),
(600, 17, 2),
(708, 17, 4),
(692, 17, 5),
(672, 17, 6),
(448, 17, 7),
(454, 17, 8),
(574, 17, 9),
(544, 17, 10),
(568, 17, 11),
(582, 17, 12),
(626, 17, 14),
(652, 17, 15),
(400, 17, 16);

-- --------------------------------------------------------

--
-- Table structure for table `shop_sale`
--

CREATE TABLE IF NOT EXISTS `shop_sale` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `discount_deduct` decimal(10,0) DEFAULT NULL,
  `discount_percent` decimal(10,0) DEFAULT NULL,
  `discount_exact` decimal(10,0) DEFAULT NULL,
  `valid_from` datetime DEFAULT NULL,
  `valid_to` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shop_sale`
--

INSERT INTO `shop_sale` (`id`, `title`, `active`, `discount_deduct`, `discount_percent`, `discount_exact`, `valid_from`, `valid_to`) VALUES
(1, '50% off ponies.', 1, NULL, 50, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shop_sale_categories`
--

CREATE TABLE IF NOT EXISTS `shop_sale_categories` (
  `id` int(11) NOT NULL,
  `sale_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sale_id` (`sale_id`,`category_id`),
  KEY `shop_sale_categories_b5707445` (`sale_id`),
  KEY `shop_sale_categories_6f33f001` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shop_sale_products`
--

CREATE TABLE IF NOT EXISTS `shop_sale_products` (
  `id` int(11) NOT NULL,
  `sale_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sale_id` (`sale_id`,`product_id`),
  KEY `shop_sale_products_b5707445` (`sale_id`),
  KEY `shop_sale_products_7f1b40ad` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `twitter_query`
--

CREATE TABLE IF NOT EXISTS `twitter_query` (
  `id` int(11) NOT NULL,
  `type` varchar(10) NOT NULL,
  `value` varchar(140) NOT NULL,
  `interested` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `twitter_query`
--

INSERT INTO `twitter_query` (`id`, `type`, `value`, `interested`) VALUES
(1, 'search', 'from:stephen_mcd mezzanine', 1);

-- --------------------------------------------------------

--
-- Table structure for table `twitter_tweet`
--

CREATE TABLE IF NOT EXISTS `twitter_tweet` (
  `id` int(11) NOT NULL,
  `remote_id` varchar(50) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `text` text,
  `profile_image_url` varchar(200) DEFAULT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `retweeter_profile_image_url` varchar(200) DEFAULT NULL,
  `retweeter_user_name` varchar(100) DEFAULT NULL,
  `retweeter_full_name` varchar(100) DEFAULT NULL,
  `query_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `twitter_tweet_1f3ceafc` (`query_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `twitter_tweet`
--

INSERT INTO `twitter_tweet` (`id`, `remote_id`, `created_at`, `text`, `profile_image_url`, `user_name`, `full_name`, `retweeter_profile_image_url`, `retweeter_user_name`, `retweeter_full_name`, `query_id`) VALUES
(1, '590709482898006017', '2015-04-18 19:13:02', 'Are any Mezzanine or Widgy CMS project authors coming to DjangoCon? Drop us a line if so. Thanks. \n\n<a href="http://twitter.com/MezzanineCMS">@MezzanineCMS</a> <a href="http://twitter.com/fusionbox">@fusionbox</a>', 'http://pbs.twimg.com/profile_images/538335145455931393/JWJHCh-S_normal.png', 'DjangoConEurope', 'DjangoCon Europe', 'http://pbs.twimg.com/profile_images/591915345264283648/nxrtn_Up_normal.jpg', 'stephen_mcd', 'Stephen McDonald', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
