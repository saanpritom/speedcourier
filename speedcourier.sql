-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 13, 2018 at 09:22 PM
-- Server version: 5.7.24-0ubuntu0.18.04.1
-- PHP Version: 7.2.10-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `speedcourier`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add status data', 7, 'add_statusdata'),
(26, 'Can change status data', 7, 'change_statusdata'),
(27, 'Can delete status data', 7, 'delete_statusdata'),
(28, 'Can view status data', 7, 'view_statusdata'),
(29, 'Can add parcel data', 8, 'add_parceldata'),
(30, 'Can change parcel data', 8, 'change_parceldata'),
(31, 'Can delete parcel data', 8, 'delete_parceldata'),
(32, 'Can view parcel data', 8, 'view_parceldata'),
(33, 'Can add parcel status', 9, 'add_parcelstatus'),
(34, 'Can change parcel status', 9, 'change_parcelstatus'),
(35, 'Can delete parcel status', 9, 'delete_parcelstatus'),
(36, 'Can view parcel status', 9, 'view_parcelstatus');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$120000$b8PlK8qEzyvo$kTLoX8TkqKKRdgXSee5dCHmONdV4d7P+uDz8zq0FbX4=', '2018-12-13 20:45:27.000000', 1, 'speedadmin', 'Speed', 'Courier', 'speedadmin@gmail.com', 1, 1, '2018-12-13 18:44:20.000000');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `couriertrack_parceldata`
--

DROP TABLE IF EXISTS `couriertrack_parceldata`;
CREATE TABLE `couriertrack_parceldata` (
  `id` int(11) NOT NULL,
  `parcel_number` varchar(256) NOT NULL,
  `created_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `couriertrack_parceldata`
--

INSERT INTO `couriertrack_parceldata` (`id`, `parcel_number`, `created_at`) VALUES
(1, '236988542', '2018-12-13 20:55:44.770407'),
(2, '69855412', '2018-12-13 20:55:49.631617'),
(3, '3652214584', '2018-12-13 20:55:54.557579'),
(4, '8954112541', '2018-12-13 20:55:59.037513');

-- --------------------------------------------------------

--
-- Table structure for table `couriertrack_parcelstatus`
--

DROP TABLE IF EXISTS `couriertrack_parcelstatus`;
CREATE TABLE `couriertrack_parcelstatus` (
  `id` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `parcel_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `couriertrack_parcelstatus`
--

INSERT INTO `couriertrack_parcelstatus` (`id`, `created_at`, `parcel_id`, `status_id`) VALUES
(1, '2018-12-13 21:17:13.439220', 1, 1),
(2, '2018-12-13 21:17:21.695086', 1, 3),
(3, '2018-12-13 21:17:30.001074', 2, 2),
(4, '2018-12-13 21:17:34.787302', 2, 4),
(5, '2018-12-13 21:17:40.865886', 3, 5);

-- --------------------------------------------------------

--
-- Table structure for table `couriertrack_statusdata`
--

DROP TABLE IF EXISTS `couriertrack_statusdata`;
CREATE TABLE `couriertrack_statusdata` (
  `id` int(11) NOT NULL,
  `status_title` varchar(256) NOT NULL,
  `created_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `couriertrack_statusdata`
--

INSERT INTO `couriertrack_statusdata` (`id`, `status_title`, `created_at`) VALUES
(1, 'Depart', '2018-12-13 20:38:51.935342'),
(2, 'Receive', '2018-12-13 20:46:36.935544'),
(3, 'On the way', '2018-12-13 20:46:44.785313'),
(4, 'Delivered', '2018-12-13 20:46:52.390781'),
(5, 'Delayed', '2018-12-13 20:51:29.283768');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2018-12-13 20:38:51.935675', '1', 'Depart', 1, '[{\"added\": {}}]', 7, 1),
(2, '2018-12-13 20:39:01.955208', '1', 'Depart', 2, '[]', 7, 1),
(3, '2018-12-13 20:46:36.935913', '2', 'Receive', 1, '[{\"added\": {}}]', 7, 1),
(4, '2018-12-13 20:46:44.785690', '3', 'On the way', 1, '[{\"added\": {}}]', 7, 1),
(5, '2018-12-13 20:46:52.391077', '4', 'Delivered', 1, '[{\"added\": {}}]', 7, 1),
(6, '2018-12-13 20:51:29.284081', '5', 'Delayed', 1, '[{\"added\": {}}]', 7, 1),
(7, '2018-12-13 20:55:44.770721', '1', '236988542', 1, '[{\"added\": {}}]', 8, 1),
(8, '2018-12-13 20:55:49.631962', '2', '69855412', 1, '[{\"added\": {}}]', 8, 1),
(9, '2018-12-13 20:55:54.557988', '3', '3652214584', 1, '[{\"added\": {}}]', 8, 1),
(10, '2018-12-13 20:55:59.037839', '4', '8954112541', 1, '[{\"added\": {}}]', 8, 1),
(11, '2018-12-13 21:04:23.678724', '1', 'speedadmin', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\"]}}]', 4, 1),
(12, '2018-12-13 21:17:13.439621', '1', '1', 1, '[{\"added\": {}}]', 9, 1),
(13, '2018-12-13 21:17:21.695423', '2', '2', 1, '[{\"added\": {}}]', 9, 1),
(14, '2018-12-13 21:17:30.001430', '3', '3', 1, '[{\"added\": {}}]', 9, 1),
(15, '2018-12-13 21:17:34.787633', '4', '4', 1, '[{\"added\": {}}]', 9, 1),
(16, '2018-12-13 21:17:40.866226', '5', '5', 1, '[{\"added\": {}}]', 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(8, 'couriertrack', 'parceldata'),
(9, 'couriertrack', 'parcelstatus'),
(7, 'couriertrack', 'statusdata'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2018-12-13 18:43:30.523075'),
(2, 'auth', '0001_initial', '2018-12-13 18:43:39.773623'),
(3, 'admin', '0001_initial', '2018-12-13 18:43:41.927417'),
(4, 'admin', '0002_logentry_remove_auto_add', '2018-12-13 18:43:41.998273'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2018-12-13 18:43:42.048716'),
(6, 'contenttypes', '0002_remove_content_type_name', '2018-12-13 18:43:43.214937'),
(7, 'auth', '0002_alter_permission_name_max_length', '2018-12-13 18:43:43.356949'),
(8, 'auth', '0003_alter_user_email_max_length', '2018-12-13 18:43:43.499043'),
(9, 'auth', '0004_alter_user_username_opts', '2018-12-13 18:43:43.553679'),
(10, 'auth', '0005_alter_user_last_login_null', '2018-12-13 18:43:44.200446'),
(11, 'auth', '0006_require_contenttypes_0002', '2018-12-13 18:43:44.250393'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2018-12-13 18:43:44.306528'),
(13, 'auth', '0008_alter_user_username_max_length', '2018-12-13 18:43:44.451205'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2018-12-13 18:43:44.584986'),
(15, 'sessions', '0001_initial', '2018-12-13 18:43:45.129001'),
(16, 'couriertrack', '0001_initial', '2018-12-13 20:37:53.450895'),
(17, 'couriertrack', '0002_parceldata', '2018-12-13 20:55:22.433977'),
(18, 'couriertrack', '0003_parcelstatus', '2018-12-13 21:16:44.914955'),
(19, 'couriertrack', '0004_auto_20181214_0320', '2018-12-13 21:20:25.290519');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('gq4p6c3vgpz66zm8dqoqdrmr74psrw1z', 'MDUwNDlmNWM0MDRhOTFlODViYTUxOTg4N2EzM2ZlMTc5YWE4ZDU4Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkNWM0MmE3YzNmYTFhMWU1ZjZjMDA0MGM5ODE3OGVjYTIzMjhlZGEwIn0=', '2018-12-27 20:45:27.143803');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `couriertrack_parceldata`
--
ALTER TABLE `couriertrack_parceldata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `couriertrack_parcelstatus`
--
ALTER TABLE `couriertrack_parcelstatus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `couriertrack_parcels_parcel_id_bb0659c7_fk_couriertr` (`parcel_id`),
  ADD KEY `couriertrack_parcels_status_id_ccd541c5_fk_couriertr` (`status_id`);

--
-- Indexes for table `couriertrack_statusdata`
--
ALTER TABLE `couriertrack_statusdata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `couriertrack_parceldata`
--
ALTER TABLE `couriertrack_parceldata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `couriertrack_parcelstatus`
--
ALTER TABLE `couriertrack_parcelstatus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `couriertrack_statusdata`
--
ALTER TABLE `couriertrack_statusdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `couriertrack_parcelstatus`
--
ALTER TABLE `couriertrack_parcelstatus`
  ADD CONSTRAINT `couriertrack_parcels_parcel_id_bb0659c7_fk_couriertr` FOREIGN KEY (`parcel_id`) REFERENCES `couriertrack_parceldata` (`id`),
  ADD CONSTRAINT `couriertrack_parcels_status_id_ccd541c5_fk_couriertr` FOREIGN KEY (`status_id`) REFERENCES `couriertrack_statusdata` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
