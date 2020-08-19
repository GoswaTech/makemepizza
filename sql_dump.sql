-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  sam. 07 mars 2020 à 14:42
-- Version du serveur :  5.7.24
-- Version de PHP :  7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `ocpizza`
--

-- --------------------------------------------------------

--
-- Structure de la table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=81 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add adress', 1, 'add_adress'),
(2, 'Can change adress', 1, 'change_adress'),
(3, 'Can delete adress', 1, 'delete_adress'),
(4, 'Can view adress', 1, 'view_adress'),
(5, 'Can add store', 2, 'add_store'),
(6, 'Can change store', 2, 'change_store'),
(7, 'Can delete store', 2, 'delete_store'),
(8, 'Can view store', 2, 'view_store'),
(9, 'Can add ingredient', 3, 'add_ingredient'),
(10, 'Can change ingredient', 3, 'change_ingredient'),
(11, 'Can delete ingredient', 3, 'delete_ingredient'),
(12, 'Can view ingredient', 3, 'view_ingredient'),
(13, 'Can add supplement', 4, 'add_supplement'),
(14, 'Can change supplement', 4, 'change_supplement'),
(15, 'Can delete supplement', 4, 'delete_supplement'),
(16, 'Can view supplement', 4, 'view_supplement'),
(17, 'Can add ingredient info', 5, 'add_ingredientinfo'),
(18, 'Can change ingredient info', 5, 'change_ingredientinfo'),
(19, 'Can delete ingredient info', 5, 'delete_ingredientinfo'),
(20, 'Can view ingredient info', 5, 'view_ingredientinfo'),
(21, 'Can add stock', 6, 'add_stock'),
(22, 'Can change stock', 6, 'change_stock'),
(23, 'Can delete stock', 6, 'delete_stock'),
(24, 'Can view stock', 6, 'view_stock'),
(25, 'Can add pizza', 7, 'add_pizza'),
(26, 'Can change pizza', 7, 'change_pizza'),
(27, 'Can delete pizza', 7, 'delete_pizza'),
(28, 'Can view pizza', 7, 'view_pizza'),
(29, 'Can add ingredient pizza', 8, 'add_ingredientpizza'),
(30, 'Can change ingredient pizza', 8, 'change_ingredientpizza'),
(31, 'Can delete ingredient pizza', 8, 'delete_ingredientpizza'),
(32, 'Can view ingredient pizza', 8, 'view_ingredientpizza'),
(33, 'Can add employee', 9, 'add_employee'),
(34, 'Can change employee', 9, 'change_employee'),
(35, 'Can delete employee', 9, 'delete_employee'),
(36, 'Can view employee', 9, 'view_employee'),
(37, 'Can add credential', 10, 'add_credential'),
(38, 'Can change credential', 10, 'change_credential'),
(39, 'Can delete credential', 10, 'delete_credential'),
(40, 'Can view credential', 10, 'view_credential'),
(41, 'Can add user', 11, 'add_user'),
(42, 'Can change user', 11, 'change_user'),
(43, 'Can delete user', 11, 'delete_user'),
(44, 'Can view user', 11, 'view_user'),
(45, 'Can add order', 12, 'add_order'),
(46, 'Can change order', 12, 'change_order'),
(47, 'Can delete order', 12, 'delete_order'),
(48, 'Can view order', 12, 'view_order'),
(49, 'Can add pizza order', 13, 'add_pizzaorder'),
(50, 'Can change pizza order', 13, 'change_pizzaorder'),
(51, 'Can delete pizza order', 13, 'delete_pizzaorder'),
(52, 'Can view pizza order', 13, 'view_pizzaorder'),
(53, 'Can add supplement pizza order', 14, 'add_supplementpizzaorder'),
(54, 'Can change supplement pizza order', 14, 'change_supplementpizzaorder'),
(55, 'Can delete supplement pizza order', 14, 'delete_supplementpizzaorder'),
(56, 'Can view supplement pizza order', 14, 'view_supplementpizzaorder'),
(57, 'Can add log entry', 15, 'add_logentry'),
(58, 'Can change log entry', 15, 'change_logentry'),
(59, 'Can delete log entry', 15, 'delete_logentry'),
(60, 'Can view log entry', 15, 'view_logentry'),
(61, 'Can add permission', 16, 'add_permission'),
(62, 'Can change permission', 16, 'change_permission'),
(63, 'Can delete permission', 16, 'delete_permission'),
(64, 'Can view permission', 16, 'view_permission'),
(65, 'Can add group', 17, 'add_group'),
(66, 'Can change group', 17, 'change_group'),
(67, 'Can delete group', 17, 'delete_group'),
(68, 'Can view group', 17, 'view_group'),
(69, 'Can add user', 18, 'add_user'),
(70, 'Can change user', 18, 'change_user'),
(71, 'Can delete user', 18, 'delete_user'),
(72, 'Can view user', 18, 'view_user'),
(73, 'Can add content type', 19, 'add_contenttype'),
(74, 'Can change content type', 19, 'change_contenttype'),
(75, 'Can delete content type', 19, 'delete_contenttype'),
(76, 'Can view content type', 19, 'view_contenttype'),
(77, 'Can add session', 20, 'add_session'),
(78, 'Can change session', 20, 'change_session'),
(79, 'Can delete session', 20, 'delete_session'),
(80, 'Can view session', 20, 'view_session');

-- --------------------------------------------------------

--
-- Structure de la table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8_bin NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8_bin NOT NULL,
  `first_name` varchar(30) COLLATE utf8_bin NOT NULL,
  `last_name` varchar(150) COLLATE utf8_bin NOT NULL,
  `email` varchar(254) COLLATE utf8_bin NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$180000$cMbrdpjwirWu$fH5WE0YfoTJGr+C9OcnmTXNw4OW4GqfJwRzV9zvK0gU=', '2020-03-07 12:25:29.844919', 1, 'arthur', '', '', '', 1, 1, '2020-03-07 12:25:23.342531');

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8_bin,
  `object_repr` varchar(200) COLLATE utf8_bin NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext COLLATE utf8_bin NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8_bin NOT NULL,
  `model` varchar(100) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'pizzeria', 'adress'),
(2, 'pizzeria', 'store'),
(3, 'pizzeria', 'ingredient'),
(4, 'pizzeria', 'supplement'),
(5, 'pizzeria', 'ingredientinfo'),
(6, 'pizzeria', 'stock'),
(7, 'pizzeria', 'pizza'),
(8, 'pizzeria', 'ingredientpizza'),
(9, 'pizzeria', 'employee'),
(10, 'pizzeria', 'credential'),
(11, 'pizzeria', 'user'),
(12, 'pizzeria', 'order'),
(13, 'pizzeria', 'pizzaorder'),
(14, 'pizzeria', 'supplementpizzaorder'),
(15, 'admin', 'logentry'),
(16, 'auth', 'permission'),
(17, 'auth', 'group'),
(18, 'auth', 'user'),
(19, 'contenttypes', 'contenttype'),
(20, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Structure de la table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8_bin NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-03-07 11:27:14.389404'),
(2, 'auth', '0001_initial', '2020-03-07 11:27:14.602419'),
(3, 'admin', '0001_initial', '2020-03-07 11:27:15.029768'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-03-07 11:27:15.139137'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-03-07 11:27:15.151649'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-03-07 11:27:15.226464'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-03-07 11:27:15.264643'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-03-07 11:27:15.296115'),
(9, 'auth', '0004_alter_user_username_opts', '2020-03-07 11:27:15.307710'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-03-07 11:27:15.341358'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-03-07 11:27:15.344800'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-03-07 11:27:15.358685'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-03-07 11:27:15.394617'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-03-07 11:27:15.430387'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-03-07 11:27:15.462141'),
(16, 'auth', '0011_update_proxy_permissions', '2020-03-07 11:27:15.484839'),
(17, 'sessions', '0001_initial', '2020-03-07 11:27:15.511139'),
(18, 'pizzeria', '0001_initial', '2020-03-07 12:32:14.241568');

-- --------------------------------------------------------

--
-- Structure de la table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) COLLATE utf8_bin NOT NULL,
  `session_data` longtext COLLATE utf8_bin NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('gqjgxneb5dzcfj14hu52e2aj703iabc4', 'Y2RiNzc0ZjZkNWRjZDNiMDY2ZTM1ZDNmYzYzYzAwZjU5N2FjZjdmZTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkODQyMzUyOGY5MjlhZjkwZmQzMjM3NzU5OTgwODExZTI2NTkxMmI5In0=', '2020-03-21 12:25:29.846913');

-- --------------------------------------------------------

--
-- Structure de la table `pizzeria_adress`
--

DROP TABLE IF EXISTS `pizzeria_adress`;
CREATE TABLE IF NOT EXISTS `pizzeria_adress` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `street` varchar(63) COLLATE utf8_bin NOT NULL,
  `street_number` smallint(5) UNSIGNED NOT NULL,
  `city` varchar(63) COLLATE utf8_bin NOT NULL,
  `country` varchar(63) COLLATE utf8_bin NOT NULL,
  `code_postal` varchar(31) COLLATE utf8_bin NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `pizzeria_adress`
--

INSERT INTO `pizzeria_adress` (`id`, `street`, `street_number`, `city`, `country`, `code_postal`, `latitude`, `longitude`) VALUES
(1, 'Pratt', 1215, 'Chula Vista', 'United States', '92007', 36.247266, 154.02541),
(2, 'Tompkins', 1209, 'Kearny', 'United States', '50760', -81.241065, 17.641087),
(3, 'Brant', 725, 'Martinsburg', 'United States', '72746', -76.76804, -158.495142),
(4, 'South Hill', 405, 'Summerville', 'United States', '10392', -52.649729, 89.036051),
(5, 'Serrano', 655, 'Wilson', 'United States', '65063', 73.115755, -106.331853),
(6, 'Macalla', 1240, 'Tigard', 'United States', '70479', -5.43487, -20.781062),
(7, 'Stratford', 771, 'Baldwin Park', 'United States', '91232', -21.971762, -137.994612),
(8, 'Franklin', 1364, 'Torrington', 'United States', '79813', -67.856301, -103.100847);

-- --------------------------------------------------------

--
-- Structure de la table `pizzeria_credential`
--

DROP TABLE IF EXISTS `pizzeria_credential`;
CREATE TABLE IF NOT EXISTS `pizzeria_credential` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(63) COLLATE utf8_bin NOT NULL,
  `email` varchar(127) COLLATE utf8_bin NOT NULL,
  `password` varchar(511) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `pizzeria_credential`
--

INSERT INTO `pizzeria_credential` (`id`, `username`, `email`, `password`) VALUES
(1, 'Metatarsi.2053', 'verdurer2070@live', 'encrypted_password'),
(2, 'Bloomed-2016', 'metaluminic2037@live', 'encrypted_password'),
(3, 'compliant1982', 'timbersome2045@live', 'encrypted_password'),
(4, 'Hachment1839', 'peroxid1969@gmail', 'encrypted_password'),
(5, 'arrivisme_1978', 'cequi1905@live', 'encrypted_password'),
(6, 'AgostoChipped.1956', 'electrolysis1922@email', 'encrypted_password'),
(7, 'chambertin1987', 'ribbon2010@email', 'encrypted_password'),
(8, 'undercarter.1942', 'pelican1800@email', 'encrypted_password'),
(9, 'Cautivo-1962', 'tutelae1811@email', 'encrypted_password'),
(10, 'Pilocystic_2027', 'doodad1815@gmail', 'encrypted_password'),
(11, 'DominiumTwitty_1956', 'daymare1977@gmail', 'encrypted_password'),
(12, 'Silly_1934', 'tzarina1954@gmail', 'encrypted_password'),
(13, 'artaba.1983', 'woodenweary2004@email', 'encrypted_password'),
(14, 'combaz.1967', 'divergence1949@gmail', 'encrypted_password'),
(15, 'mongrel.1964', 'reflection1832@gmail', 'encrypted_password'),
(16, 'Trucker1919', 'bragget1812@live', 'encrypted_password'),
(17, 'syntelome-1944', 'confucius1931@live', 'encrypted_password'),
(18, 'Trust1828', 'mandrill1849@live', 'encrypted_password'),
(19, 'letdown-2017', 'starers1846@live', 'encrypted_password'),
(20, 'Coxswain2050', 'cabasset1956@email', 'encrypted_password');

-- --------------------------------------------------------

--
-- Structure de la table `pizzeria_employee`
--

DROP TABLE IF EXISTS `pizzeria_employee`;
CREATE TABLE IF NOT EXISTS `pizzeria_employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rights` varchar(255) COLLATE utf8_bin NOT NULL,
  `role` varchar(15) COLLATE utf8_bin NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pizzeria_employee_store_id_010a3669` (`store_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `pizzeria_employee`
--

INSERT INTO `pizzeria_employee` (`id`, `rights`, `role`, `store_id`) VALUES
(8, 'delivery, sale, cook', 'cooker', 3),
(7, 'delivery, sale, cook', 'deliver', 1),
(6, 'delivery, sale, cook', 'saler', 3),
(5, 'delivery, sale, cook', 'deliver', 2),
(9, 'delivery, sale, cook', 'saler', 2),
(10, 'delivery, sale, cook', 'deliver', 1),
(11, 'delivery, sale, cook', 'deliver', 1),
(12, 'delivery, sale, cook', 'cooker', 1),
(13, 'delivery, sale, cook', 'saler', 3);

-- --------------------------------------------------------

--
-- Structure de la table `pizzeria_ingredient`
--

DROP TABLE IF EXISTS `pizzeria_ingredient`;
CREATE TABLE IF NOT EXISTS `pizzeria_ingredient` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(63) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `pizzeria_ingredient`
--

INSERT INTO `pizzeria_ingredient` (`id`, `name`) VALUES
(1, 'Bitter Melon/Bitter Gourd'),
(2, 'Sweet Potato'),
(3, 'Bean Sprouts'),
(4, 'Yuca'),
(5, 'Radicchio'),
(6, 'Green peas'),
(7, 'Beet Greens'),
(8, 'Pickling Cucumbers'),
(9, 'Eggplant'),
(10, 'Celery'),
(11, 'Carrot'),
(12, 'Pak Choy'),
(13, 'Watercress'),
(14, 'Iceberg'),
(15, 'Bok Choi'),
(16, 'Bok Choy'),
(17, 'Olive'),
(18, 'Cucumber'),
(19, 'Elephant Garlic'),
(20, 'Chayote');

-- --------------------------------------------------------

--
-- Structure de la table `pizzeria_ingredientinfo`
--

DROP TABLE IF EXISTS `pizzeria_ingredientinfo`;
CREATE TABLE IF NOT EXISTS `pizzeria_ingredientinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(15) COLLATE utf8_bin NOT NULL,
  `ingredient_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pizzeria_ingredientinfo_ingredient_id_7609b9dc` (`ingredient_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `pizzeria_ingredientpizza`
--

DROP TABLE IF EXISTS `pizzeria_ingredientpizza`;
CREATE TABLE IF NOT EXISTS `pizzeria_ingredientpizza` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quantity_value` int(11) NOT NULL,
  `quantity_unity` varchar(7) COLLATE utf8_bin NOT NULL,
  `ingredient_id` int(11) NOT NULL,
  `pizza_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pizzeria_ingredientpizza_ingredient_id_eb8fdb9a` (`ingredient_id`),
  KEY `pizzeria_ingredientpizza_pizza_id_2498f4a9` (`pizza_id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `pizzeria_ingredientpizza`
--

INSERT INTO `pizzeria_ingredientpizza` (`id`, `quantity_value`, `quantity_unity`, `ingredient_id`, `pizza_id`) VALUES
(1, 8, 'g', 3, 1),
(2, 6, 'g', 8, 1),
(3, 15, 'g', 4, 1),
(4, 10, 'g', 6, 1),
(5, 5, 'g', 1, 1),
(6, 6, 'g', 10, 2),
(7, 7, 'g', 5, 2),
(8, 11, 'g', 8, 2),
(9, 11, 'g', 19, 2),
(10, 13, 'g', 2, 3),
(11, 8, 'g', 20, 3),
(12, 8, 'g', 12, 3),
(13, 13, 'g', 3, 4),
(14, 8, 'g', 6, 4),
(15, 11, 'g', 20, 4),
(16, 13, 'g', 14, 5),
(17, 8, 'g', 2, 5),
(18, 13, 'g', 3, 5),
(19, 12, 'g', 5, 6),
(20, 15, 'g', 19, 6),
(21, 11, 'g', 11, 7),
(22, 12, 'g', 2, 7),
(23, 14, 'g', 10, 8),
(24, 7, 'g', 3, 8),
(25, 11, 'g', 16, 9),
(26, 12, 'g', 3, 9),
(27, 15, 'g', 3, 10),
(28, 15, 'g', 17, 10),
(29, 11, 'g', 2, 10);

-- --------------------------------------------------------

--
-- Structure de la table `pizzeria_order`
--

DROP TABLE IF EXISTS `pizzeria_order`;
CREATE TABLE IF NOT EXISTS `pizzeria_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `paid` tinyint(1) NOT NULL,
  `state` varchar(15) COLLATE utf8_bin NOT NULL,
  `adress_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `adress_id` (`adress_id`),
  KEY `pizzeria_order_user_id_8abbb849` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `pizzeria_order`
--

INSERT INTO `pizzeria_order` (`id`, `paid`, `state`, `adress_id`, `user_id`) VALUES
(1, 0, 'delivering', 4, 3),
(2, 1, 'preparing', NULL, 16),
(3, 0, 'commanded', NULL, 9),
(4, 0, 'commanded', 5, 7),
(5, 0, 'preparing', 6, 20),
(6, 0, 'closed', NULL, 18),
(7, 1, 'commanded', NULL, 14),
(8, 0, 'preparing', NULL, 17),
(9, 1, 'preparing', 7, 6),
(10, 1, 'ready', NULL, 19),
(11, 0, 'commanded', 8, 1);

-- --------------------------------------------------------

--
-- Structure de la table `pizzeria_pizza`
--

DROP TABLE IF EXISTS `pizzeria_pizza`;
CREATE TABLE IF NOT EXISTS `pizzeria_pizza` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(63) COLLATE utf8_bin NOT NULL,
  `image` varchar(127) COLLATE utf8_bin NOT NULL,
  `label` varchar(15) COLLATE utf8_bin NOT NULL,
  `price` decimal(5,2) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pizzeria_pizza_store_id_3912206a` (`store_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `pizzeria_pizza`
--

INSERT INTO `pizzeria_pizza` (`id`, `name`, `image`, `label`, `price`, `store_id`) VALUES
(1, 'JordanianPizza', 'img_url', 'no label', '12.50', 2),
(2, 'IrishPizza', 'img_url', 'no label', '12.50', 3),
(3, 'VenezuelanPizza', 'img_url', 'no label', '12.50', 3),
(4, 'BelgianPizza', 'img_url', 'no label', '12.50', 1),
(5, 'DutchPizza', 'img_url', 'no label', '12.50', 3),
(6, 'ChileanPizza', 'img_url', 'no label', '12.50', 2),
(7, 'Costa RicanPizza', 'img_url', 'no label', '12.50', 1),
(8, 'LatvianPizza', 'img_url', 'no label', '12.50', 1),
(9, 'JordanianPizza', 'img_url', 'no label', '12.50', 1),
(10, 'BrazilianPizza', 'img_url', 'no label', '12.50', 2);

-- --------------------------------------------------------

--
-- Structure de la table `pizzeria_pizzaorder`
--

DROP TABLE IF EXISTS `pizzeria_pizzaorder`;
CREATE TABLE IF NOT EXISTS `pizzeria_pizzaorder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` decimal(7,2) NOT NULL,
  `order_id` int(11) NOT NULL,
  `pizza_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pizzeria_pizzaorder_order_id_e6bc2877` (`order_id`),
  KEY `pizzeria_pizzaorder_pizza_id_593edf2b` (`pizza_id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `pizzeria_pizzaorder`
--

INSERT INTO `pizzeria_pizzaorder` (`id`, `price`, `order_id`, `pizza_id`) VALUES
(18, '12.50', 6, 7),
(17, '12.50', 6, 8),
(16, '12.50', 5, 10),
(15, '12.50', 4, 4),
(14, '12.50', 4, 8),
(13, '12.50', 3, 9),
(12, '12.50', 2, 1),
(11, '12.50', 1, 3),
(10, '12.50', 1, 5),
(19, '12.50', 6, 9),
(20, '12.50', 7, 1),
(21, '12.50', 7, 6),
(22, '12.50', 8, 8),
(23, '12.50', 8, 7),
(24, '12.50', 9, 8),
(25, '12.50', 10, 6),
(26, '12.50', 10, 10),
(27, '12.50', 11, 3);

-- --------------------------------------------------------

--
-- Structure de la table `pizzeria_stock`
--

DROP TABLE IF EXISTS `pizzeria_stock`;
CREATE TABLE IF NOT EXISTS `pizzeria_stock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quantity_value` int(11) NOT NULL,
  `quantity_unity` varchar(7) COLLATE utf8_bin NOT NULL,
  `ingredient_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pizzeria_stock_ingredient_id_bf6365df` (`ingredient_id`),
  KEY `pizzeria_stock_store_id_90667623` (`store_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `pizzeria_stock`
--

INSERT INTO `pizzeria_stock` (`id`, `quantity_value`, `quantity_unity`, `ingredient_id`, `store_id`) VALUES
(1, 44, 'kg', 3, 1),
(2, 59, 'kg', 8, 1),
(3, 77, 'kg', 10, 1),
(4, 85, 'kg', 18, 1),
(5, 0, 'kg', 7, 1),
(6, 60, 'kg', 12, 1),
(7, 6, 'kg', 15, 2),
(8, 38, 'kg', 6, 2),
(9, 6, 'kg', 20, 2),
(10, 7, 'kg', 18, 2),
(11, 58, 'kg', 14, 2),
(12, 56, 'kg', 8, 2),
(13, 27, 'kg', 12, 2),
(14, 19, 'kg', 2, 2),
(15, 33, 'kg', 16, 2),
(16, 19, 'kg', 5, 3),
(17, 61, 'kg', 4, 3),
(18, 50, 'kg', 17, 3),
(19, 82, 'kg', 14, 3);

-- --------------------------------------------------------

--
-- Structure de la table `pizzeria_store`
--

DROP TABLE IF EXISTS `pizzeria_store`;
CREATE TABLE IF NOT EXISTS `pizzeria_store` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(63) COLLATE utf8_bin NOT NULL,
  `hourly` varchar(127) COLLATE utf8_bin NOT NULL,
  `phone` varchar(15) COLLATE utf8_bin NOT NULL,
  `adress_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `adress_id` (`adress_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `pizzeria_store`
--

INSERT INTO `pizzeria_store` (`id`, `name`, `hourly`, `phone`, `adress_id`) VALUES
(1, 'DutchShop', '12h-16h', '0606060606', 1),
(2, 'PolishShop', '12h-16h', '0606060606', 2),
(3, 'BelgianShop', '12h-16h', '0606060606', 3);

-- --------------------------------------------------------

--
-- Structure de la table `pizzeria_supplement`
--

DROP TABLE IF EXISTS `pizzeria_supplement`;
CREATE TABLE IF NOT EXISTS `pizzeria_supplement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` decimal(5,2) NOT NULL,
  `ingredient_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pizzeria_supplement_ingredient_id_3099b519` (`ingredient_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `pizzeria_supplement`
--

INSERT INTO `pizzeria_supplement` (`id`, `price`, `ingredient_id`) VALUES
(1, '0.20', 1),
(2, '0.20', 2),
(3, '0.20', 3),
(4, '0.20', 4),
(5, '0.20', 5);

-- --------------------------------------------------------

--
-- Structure de la table `pizzeria_supplementpizzaorder`
--

DROP TABLE IF EXISTS `pizzeria_supplementpizzaorder`;
CREATE TABLE IF NOT EXISTS `pizzeria_supplementpizzaorder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pizza_order_id` int(11) NOT NULL,
  `supplement_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pizzeria_supplementpizzaorder_pizza_order_id_c668deb5` (`pizza_order_id`),
  KEY `pizzeria_supplementpizzaorder_supplement_id_c4ed805a` (`supplement_id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `pizzeria_supplementpizzaorder`
--

INSERT INTO `pizzeria_supplementpizzaorder` (`id`, `pizza_order_id`, `supplement_id`) VALUES
(42, 26, 3),
(41, 24, 4),
(40, 24, 3),
(39, 23, 3),
(38, 23, 2),
(37, 23, 4),
(36, 21, 4),
(35, 21, 5),
(34, 21, 3),
(33, 19, 1),
(32, 19, 5),
(31, 17, 3),
(30, 17, 4),
(29, 14, 4),
(28, 14, 3),
(27, 12, 1),
(26, 12, 3),
(25, 12, 4),
(24, 11, 4),
(23, 10, 3),
(22, 10, 5),
(43, 26, 5);

-- --------------------------------------------------------

--
-- Structure de la table `pizzeria_user`
--

DROP TABLE IF EXISTS `pizzeria_user`;
CREATE TABLE IF NOT EXISTS `pizzeria_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(63) COLLATE utf8_bin NOT NULL,
  `lastname` varchar(63) COLLATE utf8_bin NOT NULL,
  `phone` varchar(15) COLLATE utf8_bin NOT NULL,
  `photo` varchar(127) COLLATE utf8_bin NOT NULL,
  `adress_id` int(11) DEFAULT NULL,
  `credential_id` int(11) NOT NULL,
  `employee_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `credential_id` (`credential_id`),
  UNIQUE KEY `adress_id` (`adress_id`),
  KEY `pizzeria_user_employee_id_3847da70` (`employee_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `pizzeria_user`
--

INSERT INTO `pizzeria_user` (`id`, `firstname`, `lastname`, `phone`, `photo`, `adress_id`, `credential_id`, `employee_id`) VALUES
(1, 'Armand', 'Ratliff', '0606060606', '', NULL, 1, NULL),
(2, 'Sol', 'Shields', '0606060606', '', NULL, 2, 5),
(3, 'Gregorio', 'Alvarado', '0606060606', '', NULL, 3, NULL),
(4, 'Merrill', 'Frazier', '0606060606', '', NULL, 4, 13),
(5, 'Kent', 'Padilla', '0606060606', '', NULL, 5, 9),
(6, 'Kenneth', 'Hopkins', '0606060606', '', NULL, 6, NULL),
(7, 'Ming', 'Byrd', '0606060606', '', NULL, 7, NULL),
(8, 'Samuel', 'Weber', '0606060606', '', NULL, 8, 11),
(9, 'Eusebia', 'Marshall', '0606060606', '', NULL, 9, NULL),
(10, 'Maren', 'Deleon', '0606060606', '', NULL, 10, 8),
(11, 'Britta', 'Melton', '0606060606', '', NULL, 11, 10),
(12, 'Bryanna', 'Huber', '0606060606', '', NULL, 12, 7),
(13, 'Ozie', 'Stewart', '0606060606', '', NULL, 13, 6),
(14, 'Alphonso', 'Mcdaniel', '0606060606', '', NULL, 14, NULL),
(15, 'Kathaleen', 'Collins', '0606060606', '', NULL, 15, 12),
(16, 'Lavette', 'Jennings', '0606060606', '', NULL, 16, NULL),
(17, 'Bo', 'Stein', '0606060606', '', NULL, 17, NULL),
(18, 'Emerald', 'Grant', '0606060606', '', NULL, 18, NULL),
(19, 'Raymon', 'Burt', '0606060606', '', NULL, 19, NULL),
(20, 'Tomas', 'Reynolds', '0606060606', '', NULL, 20, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
