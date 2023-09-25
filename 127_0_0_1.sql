-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 25, 2023 at 08:33 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `filingseva_db`
--
CREATE DATABASE IF NOT EXISTS `filingseva_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `filingseva_db`;

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_depositwallet`
--

CREATE TABLE `adminapp_depositwallet` (
  `id` bigint(20) NOT NULL,
  `ClientName` varchar(500) NOT NULL,
  `BalanceAmount` varchar(1000) NOT NULL,
  `ReferenceNo` varchar(1000) NOT NULL,
  `BankName` varchar(1000) NOT NULL,
  `Signup_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_depositwallet`
--

INSERT INTO `adminapp_depositwallet` (`id`, `ClientName`, `BalanceAmount`, `ReferenceNo`, `BankName`, `Signup_id`) VALUES
(1, 'amrutha', '11111111111', '11111111', 'qqqqqqqq', 14);

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_gstfiling`
--

CREATE TABLE `adminapp_gstfiling` (
  `id` bigint(20) NOT NULL,
  `ReferenceNo` int(11) NOT NULL,
  `CompanyName` varchar(100) NOT NULL,
  `Contact` varchar(100) NOT NULL,
  `Email` varchar(254) NOT NULL,
  `Username` varchar(500) NOT NULL,
  `Password` varchar(500) NOT NULL,
  `Files` varchar(500) NOT NULL,
  `Remarks` varchar(800) NOT NULL,
  `Signup_id` bigint(20) NOT NULL,
  `Status` varchar(500) NOT NULL,
  `Frequency` varchar(500) NOT NULL,
  `Terms` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_gstfiling`
--

INSERT INTO `adminapp_gstfiling` (`id`, `ReferenceNo`, `CompanyName`, `Contact`, `Email`, `Username`, `Password`, `Files`, `Remarks`, `Signup_id`, `Status`, `Frequency`, `Terms`) VALUES
(1, 1, 'my', '1111111111', 'admin1@gmail.com', 'admin1', '1111', '[]', 'qqqqqqqq', 1, 'Submitted', '', ''),
(12, 2, 'New company', '99999999', 'admin1@gmail.com', 'admin@gmail.com', '1111', '2/GSTF/23/File/1', 'hi', 4, 'On Processing', '', ''),
(13, 1, 'my', '1111111111', 'admin1@gmail.com', 'admin1', '1111', '3/GSTF/23/File/1', '', 1, 'Submitted', '1', '5'),
(14, 1, 'my', '1111111111', 'admin1@gmail.com', 'admin1', '1111', '2/GSTF/23/File/1', '', 1, 'Submitted', '1', '4');

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_gstregistration`
--

CREATE TABLE `adminapp_gstregistration` (
  `id` bigint(20) NOT NULL,
  `ReferenceNo` int(11) NOT NULL,
  `CompanyName` varchar(100) NOT NULL,
  `Contact` varchar(100) NOT NULL,
  `Email` varchar(254) NOT NULL,
  `Aadhar` varchar(500) NOT NULL,
  `PANCard` varchar(500) NOT NULL,
  `ElectricityBill` varchar(500) NOT NULL,
  `Photograph` varchar(500) NOT NULL,
  `RentAgreement` varchar(500) NOT NULL,
  `TaxReceipt` varchar(500) NOT NULL,
  `SubmittedDate` date NOT NULL,
  `CompletedDate` date NOT NULL,
  `Status` varchar(500) NOT NULL,
  `Remarks` varchar(800) NOT NULL,
  `Signup_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_gstregistration`
--

INSERT INTO `adminapp_gstregistration` (`id`, `ReferenceNo`, `CompanyName`, `Contact`, `Email`, `Aadhar`, `PANCard`, `ElectricityBill`, `Photograph`, `RentAgreement`, `TaxReceipt`, `SubmittedDate`, `CompletedDate`, `Status`, `Remarks`, `Signup_id`) VALUES
(1, 1, 'New company', '99999999', 'admin1@gmail.com', '01/GST/23/AadharFile', '01/GST/23/PANCardFile', '01/GST/23/ElectricityBillFile', '01/GST/23/PhotographFile', '01/GST/23/RentAgreementFile', '01/GST/23/TaxReceiptFile', '2023-09-15', '2023-09-15', 'On Processing', '', 1),
(25, 2, 'my nnnnnnnnnnn', '99999999', 'admin1@gmail.com', '2/GSTR/23/Aadhar', '2/GSTR/23/PANCard', '2/GSTR/23/ElectricityBill', '2/GSTR/23/Photograph', '2/GSTR/23/RentAgreement', '2/GSTR/23/TaxReceipt', '2023-09-19', '2023-09-19', 'Half way', '', 4);

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_signup`
--

CREATE TABLE `adminapp_signup` (
  `id` bigint(20) NOT NULL,
  `AgentName` varchar(100) NOT NULL,
  `Contact` varchar(100) NOT NULL,
  `Email` varchar(254) NOT NULL,
  `Password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_signup`
--

INSERT INTO `adminapp_signup` (`id`, `AgentName`, `Contact`, `Email`, `Password`) VALUES
(1, 'Ram', '99999999', 'admin@gmail.com', '1111'),
(4, 'Daya', '99999999', 'amruthajun@gmail.com', '1111'),
(14, 'amrutha', '99999999', 'amrutha91jun@gmail.com', '1111');

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_trademarkregistration`
--

CREATE TABLE `adminapp_trademarkregistration` (
  `id` bigint(20) NOT NULL,
  `ReferenceNo` int(11) NOT NULL,
  `TradeName` varchar(100) NOT NULL,
  `Contact` varchar(100) NOT NULL,
  `Email` varchar(254) NOT NULL,
  `Aadhar` varchar(500) NOT NULL,
  `PANCard` varchar(500) NOT NULL,
  `BusinessObjective` varchar(500) NOT NULL,
  `Logo` varchar(500) NOT NULL,
  `MSMECertificate` varchar(500) NOT NULL,
  `SubmittedDate` date NOT NULL,
  `CompletedDate` date NOT NULL,
  `Status` varchar(500) NOT NULL,
  `Remarks` varchar(800) NOT NULL,
  `Signup_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_trademarkregistration`
--

INSERT INTO `adminapp_trademarkregistration` (`id`, `ReferenceNo`, `TradeName`, `Contact`, `Email`, `Aadhar`, `PANCard`, `BusinessObjective`, `Logo`, `MSMECertificate`, `SubmittedDate`, `CompletedDate`, `Status`, `Remarks`, `Signup_id`) VALUES
(1, 1, 'tttttttt', '99999999', 'admin1@gmail.com', '1/GSTR/23/Aadhar', '1/GSTR/23/PANCard', '1/GSTR/23/BusinessObjective', '1/GSTR/23/Logo', '1/GSTR/23/MSMECertificate', '2023-09-18', '2023-09-18', 'Submitted', 'hi', 1),
(3, 2, 'tttttttt', '99999999', 'admin1@gmail.com', '2/TMF/23/Aadhar', '2/TMF/23/PANCard', '2/TMF/23/BusinessObjective', '2/TMF/23/Logo', '2/TMF/23/MSMECertificate', '2023-09-19', '2023-09-19', 'Processing', 'nnnnnnnnnn', 4);

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_walletdata`
--

CREATE TABLE `adminapp_walletdata` (
  `id` bigint(20) NOT NULL,
  `ClientName` varchar(500) NOT NULL,
  `BalanceAmount` varchar(1000) NOT NULL,
  `Category` varchar(1000) NOT NULL,
  `ReferenceNo` varchar(1000) NOT NULL,
  `BankName` varchar(1000) NOT NULL,
  `Signup_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_walletdata`
--

INSERT INTO `adminapp_walletdata` (`id`, `ClientName`, `BalanceAmount`, `Category`, `ReferenceNo`, `BankName`, `Signup_id`) VALUES
(7, 'amrutha', '0', 'None', '0', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(25, 'Can add gst registration', 7, 'add_gstregistration'),
(26, 'Can change gst registration', 7, 'change_gstregistration'),
(27, 'Can delete gst registration', 7, 'delete_gstregistration'),
(28, 'Can view gst registration', 7, 'view_gstregistration'),
(29, 'Can add trademark registration', 8, 'add_trademarkregistration'),
(30, 'Can change trademark registration', 8, 'change_trademarkregistration'),
(31, 'Can delete trademark registration', 8, 'delete_trademarkregistration'),
(32, 'Can view trademark registration', 8, 'view_trademarkregistration'),
(33, 'Can add gst filing', 9, 'add_gstfiling'),
(34, 'Can change gst filing', 9, 'change_gstfiling'),
(35, 'Can delete gst filing', 9, 'delete_gstfiling'),
(36, 'Can view gst filing', 9, 'view_gstfiling'),
(37, 'Can add signup', 10, 'add_signup'),
(38, 'Can change signup', 10, 'change_signup'),
(39, 'Can delete signup', 10, 'delete_signup'),
(40, 'Can view signup', 10, 'view_signup'),
(41, 'Can add wallet data', 11, 'add_walletdata'),
(42, 'Can change wallet data', 11, 'change_walletdata'),
(43, 'Can delete wallet data', 11, 'delete_walletdata'),
(44, 'Can view wallet data', 11, 'view_walletdata'),
(45, 'Can add deposit wallet', 12, 'add_depositwallet'),
(46, 'Can change deposit wallet', 12, 'change_depositwallet'),
(47, 'Can delete deposit wallet', 12, 'delete_depositwallet'),
(48, 'Can view deposit wallet', 12, 'view_depositwallet');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(12, 'adminapp', 'depositwallet'),
(9, 'adminapp', 'gstfiling'),
(7, 'adminapp', 'gstregistration'),
(10, 'adminapp', 'signup'),
(8, 'adminapp', 'trademarkregistration'),
(11, 'adminapp', 'walletdata'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-09-15 09:25:11.656188'),
(2, 'auth', '0001_initial', '2023-09-15 09:25:12.094143'),
(3, 'admin', '0001_initial', '2023-09-15 09:25:12.261484'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-09-15 09:25:12.270484'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-09-15 09:25:12.287832'),
(6, 'adminapp', '0001_initial', '2023-09-15 09:25:12.316708'),
(7, 'contenttypes', '0002_remove_content_type_name', '2023-09-15 09:25:12.446890'),
(8, 'auth', '0002_alter_permission_name_max_length', '2023-09-15 09:25:12.507093'),
(9, 'auth', '0003_alter_user_email_max_length', '2023-09-15 09:25:12.534087'),
(10, 'auth', '0004_alter_user_username_opts', '2023-09-15 09:25:12.541276'),
(11, 'auth', '0005_alter_user_last_login_null', '2023-09-15 09:25:12.588176'),
(12, 'auth', '0006_require_contenttypes_0002', '2023-09-15 09:25:12.593174'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2023-09-15 09:25:12.603194'),
(14, 'auth', '0008_alter_user_username_max_length', '2023-09-15 09:25:12.624235'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2023-09-15 09:25:12.666556'),
(16, 'auth', '0010_alter_group_name_max_length', '2023-09-15 09:25:12.690907'),
(17, 'auth', '0011_update_proxy_permissions', '2023-09-15 09:25:12.705241'),
(18, 'auth', '0012_alter_user_first_name_max_length', '2023-09-15 09:25:12.728028'),
(19, 'sessions', '0001_initial', '2023-09-15 09:25:12.805469'),
(20, 'adminapp', '0002_alter_gstregistration_referenceno', '2023-09-15 11:12:02.619433'),
(21, 'adminapp', '0003_gstregistration_remarks', '2023-09-18 06:48:28.754655'),
(22, 'adminapp', '0004_trademarkregistration', '2023-09-18 07:30:49.044992'),
(23, 'adminapp', '0005_gstfiling', '2023-09-18 10:59:04.111634'),
(24, 'adminapp', '0006_signup', '2023-09-19 07:00:39.253642'),
(25, 'adminapp', '0007_gstfiling_signup_gstregistration_signup_and_more', '2023-09-19 08:45:28.610138'),
(26, 'adminapp', '0008_gstfiling_status', '2023-09-19 10:40:46.937970'),
(27, 'adminapp', '0009_gstfiling_frequency_gstfiling_terms', '2023-09-22 05:57:31.366805'),
(28, 'adminapp', '0010_walletdata', '2023-09-22 06:50:52.605757'),
(29, 'adminapp', '0011_walletdata_bankname', '2023-09-22 10:34:10.145894'),
(30, 'adminapp', '0012_walletdata_signup', '2023-09-22 10:35:56.936679'),
(31, 'adminapp', '0013_depositwallet', '2023-09-22 10:45:27.934924');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('41bw8tcw9hd723rynuajmsfyfuu1rm4i', '.eJxFjcsKwjAQRf_lroOYCqXJyj-RIY4aMQ_SSbuQ_rsjWDzLw7ncN3q8wluDIhX-NEzjcTLIlBgelFqXB8EglCwURJ37oZITxdc_c_bZ8_n-lYdQkgaV5nktTQ9glX1yWbjFW2T10jpvH3cCKd8:1qjcwd:JCG-fd51Z2JC-utPk0yyawfWxuuquHEkKt6HVRAvoxw', '2023-09-22 10:59:31.390797'),
('gwea09c608wrgn6ym2pxn36724j7xiyj', 'eyJ1aWQiOjF9:1qkdFJ:zCHYsp93gcpKFcaNB1EEGvVWa2eGyvGRNnQZwJ7y3IU', '2023-09-25 05:30:57.791118'),
('jnxcjdj6plwo07nidn1n8jyb2tsspqov', '.eJyrVirNTFGyMtRRyi8pANKm5pYWRjpKeYm5qUpWSom5RaUlGYlKOkrJ-XklicklQDFLKAAKpuYmZuYglFkaZpXmOaSDBPWS83OBCgoSi4vL84uAFigZAgFMS3xZalFmWmYqULykqDS1FgB5RCnk:1qjYwJ:wPiKfl2nLaniFJX6UkmizZA83X7EE9zJTwPav4DYyjc', '2023-09-22 06:42:55.437253'),
('k3yjs70wzkwvmvoo9vyheegz33gnd3hz', '.eJxFi8sKgzAQRf9l1qE0rQpm1T8pQ5zWiHkQZ3Qh_nun0OJZXQ7n7pC5gGu72_XeGEgYCRxgrMIjggGfE6Nndf0PlRQxzGfW20nS4_2VF5-jBgWXZct10MYq_8tzpRpegdRzFTIgQadtjg_PESoM:1qjeYo:6-mRhVnoYdXZU6CBm90CeKua3yWhHWAX1ysY2VWJyYo', '2023-09-22 12:43:02.416209'),
('qjl2atd6e7otanxioibpvadxornw976q', 'eyJ1aWQiOjF9:1qjbbV:982FtX-x3aqw-rLCj_dYf9Dv3NsI890gIgHm2T0Lyzo', '2023-09-22 09:33:37.705084'),
('w051djc61ew5cxnj29mzzff3kjy8rx05', 'eyJ1aWQiOjF9:1qjaVg:Dpz6Omz-snIynXyBlDBEm-iPyeoDYS6qXA93FvPjlXE', '2023-09-22 08:23:32.534680');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminapp_depositwallet`
--
ALTER TABLE `adminapp_depositwallet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_depositwallet_Signup_id_1731742c_fk_adminapp_signup_id` (`Signup_id`);

--
-- Indexes for table `adminapp_gstfiling`
--
ALTER TABLE `adminapp_gstfiling`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_gstfiling_Signup_id_3a33cf62_fk_adminapp_signup_id` (`Signup_id`);

--
-- Indexes for table `adminapp_gstregistration`
--
ALTER TABLE `adminapp_gstregistration`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_gstregistra_Signup_id_b5b0106e_fk_adminapp_` (`Signup_id`);

--
-- Indexes for table `adminapp_signup`
--
ALTER TABLE `adminapp_signup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adminapp_trademarkregistration`
--
ALTER TABLE `adminapp_trademarkregistration`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_trademarkre_Signup_id_aed65181_fk_adminapp_` (`Signup_id`);

--
-- Indexes for table `adminapp_walletdata`
--
ALTER TABLE `adminapp_walletdata`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_walletdata_Signup_id_c8b9708d_fk_adminapp_signup_id` (`Signup_id`);

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
-- AUTO_INCREMENT for table `adminapp_depositwallet`
--
ALTER TABLE `adminapp_depositwallet`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `adminapp_gstfiling`
--
ALTER TABLE `adminapp_gstfiling`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `adminapp_gstregistration`
--
ALTER TABLE `adminapp_gstregistration`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `adminapp_signup`
--
ALTER TABLE `adminapp_signup`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `adminapp_trademarkregistration`
--
ALTER TABLE `adminapp_trademarkregistration`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `adminapp_walletdata`
--
ALTER TABLE `adminapp_walletdata`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `adminapp_depositwallet`
--
ALTER TABLE `adminapp_depositwallet`
  ADD CONSTRAINT `adminapp_depositwallet_Signup_id_1731742c_fk_adminapp_signup_id` FOREIGN KEY (`Signup_id`) REFERENCES `adminapp_signup` (`id`);

--
-- Constraints for table `adminapp_gstfiling`
--
ALTER TABLE `adminapp_gstfiling`
  ADD CONSTRAINT `adminapp_gstfiling_Signup_id_3a33cf62_fk_adminapp_signup_id` FOREIGN KEY (`Signup_id`) REFERENCES `adminapp_signup` (`id`);

--
-- Constraints for table `adminapp_gstregistration`
--
ALTER TABLE `adminapp_gstregistration`
  ADD CONSTRAINT `adminapp_gstregistra_Signup_id_b5b0106e_fk_adminapp_` FOREIGN KEY (`Signup_id`) REFERENCES `adminapp_signup` (`id`);

--
-- Constraints for table `adminapp_trademarkregistration`
--
ALTER TABLE `adminapp_trademarkregistration`
  ADD CONSTRAINT `adminapp_trademarkre_Signup_id_aed65181_fk_adminapp_` FOREIGN KEY (`Signup_id`) REFERENCES `adminapp_signup` (`id`);

--
-- Constraints for table `adminapp_walletdata`
--
ALTER TABLE `adminapp_walletdata`
  ADD CONSTRAINT `adminapp_walletdata_Signup_id_c8b9708d_fk_adminapp_signup_id` FOREIGN KEY (`Signup_id`) REFERENCES `adminapp_signup` (`id`);

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
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
--
-- Database: `foottour_db`
--
CREATE DATABASE IF NOT EXISTS `foottour_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `foottour_db`;

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_dates`
--

CREATE TABLE `adminapp_dates` (
  `id` bigint(20) NOT NULL,
  `Startdate` date NOT NULL,
  `Enddate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_dates`
--

INSERT INTO `adminapp_dates` (`id`, `Startdate`, `Enddate`) VALUES
(1, '2023-10-04', '2023-10-14');

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_result`
--

CREATE TABLE `adminapp_result` (
  `id` bigint(20) NOT NULL,
  `TeamName1` varchar(500) NOT NULL,
  `TeamName2` varchar(500) NOT NULL,
  `TeamScore1` varchar(500) NOT NULL,
  `TeamScore2` varchar(500) NOT NULL,
  `Match_date` date DEFAULT NULL,
  `Match_time` time(6) DEFAULT NULL,
  `Schedule_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_result`
--

INSERT INTO `adminapp_result` (`id`, `TeamName1`, `TeamName2`, `TeamScore1`, `TeamScore2`, `Match_date`, `Match_time`, `Schedule_id`) VALUES
(2, 'Royal Challengers', 'Stringy Strikers', '1', '1', '2023-10-04', '18:00:00.000000', 76);

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_schedule`
--

CREATE TABLE `adminapp_schedule` (
  `id` bigint(20) NOT NULL,
  `Venue_id` bigint(20) NOT NULL,
  `Match_date` date NOT NULL,
  `Match_time` time(6) NOT NULL,
  `Team1_id` bigint(20) NOT NULL,
  `Team2_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_schedule`
--

INSERT INTO `adminapp_schedule` (`id`, `Venue_id`, `Match_date`, `Match_time`, `Team1_id`, `Team2_id`) VALUES
(76, 1, '2023-10-04', '18:00:00.000000', 1, 2),
(77, 3, '2023-10-05', '21:00:00.000000', 3, 4),
(78, 5, '2023-10-06', '18:00:00.000000', 5, 6),
(79, 2, '2023-10-07', '21:00:00.000000', 7, 8),
(80, 4, '2023-10-08', '18:00:00.000000', 9, 10);

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_teamregistration`
--

CREATE TABLE `adminapp_teamregistration` (
  `id` bigint(20) NOT NULL,
  `TeamName` varchar(500) NOT NULL,
  `Coach` varchar(500) NOT NULL,
  `Contact` varchar(500) NOT NULL,
  `Manager` varchar(500) NOT NULL,
  `Goalkeeper` varchar(500) NOT NULL,
  `Centreback` varchar(500) NOT NULL,
  `Sweeper` varchar(500) NOT NULL,
  `Wingback` varchar(500) NOT NULL,
  `Fullback` varchar(500) NOT NULL,
  `Central` varchar(500) NOT NULL,
  `Attacking` varchar(500) NOT NULL,
  `Wide` varchar(500) NOT NULL,
  `Secondstriker` varchar(500) NOT NULL,
  `Centreforward` varchar(500) NOT NULL,
  `Winger` varchar(500) NOT NULL,
  `Substitute1` varchar(500) NOT NULL,
  `Substitute2` varchar(500) NOT NULL,
  `Substitute3` varchar(500) NOT NULL,
  `Substitute4` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_teamregistration`
--

INSERT INTO `adminapp_teamregistration` (`id`, `TeamName`, `Coach`, `Contact`, `Manager`, `Goalkeeper`, `Centreback`, `Sweeper`, `Wingback`, `Fullback`, `Central`, `Attacking`, `Wide`, `Secondstriker`, `Centreforward`, `Winger`, `Substitute1`, `Substitute2`, `Substitute3`, `Substitute4`) VALUES
(1, 'Royal Challengers', 'David', '99999999', 'Mathew', 'Player1', 'Player2', 'Player3', 'Player4', 'Player5', 'Player6', 'Player7', 'Player8', 'Player9', 'Player10', 'Player11', 'Player12', 'Player13', 'Player14', 'Player15'),
(2, 'Stringy Strikers', 'David', '99999999', 'Mathew', 'Player1', 'Player2', 'Player3', 'Player4', 'Player5', 'Player6', 'Player7', 'Player8', 'Player9', 'Player10', 'Player11', 'Player12', 'Player13', 'Player14', 'Player15'),
(3, 'Team Milk Away', 'David', '99999999', 'Mathew', 'Player1', 'Player2', 'Player3', 'Player4', 'Player5', 'Player6', 'Player7', 'Player8', 'Player9', 'Player10', 'Player11', 'Player12', 'Player13', 'Player14', 'Player15'),
(4, 'ImmortalKiller', 'David', '99999999', 'Mathew', 'Player1', 'Player2', 'Player3', 'Player4', 'Player5', 'Player6', 'Player7', 'Player8', 'Player9', 'Player10', 'Player11', 'Player12', 'Player13', 'Player14', 'Player15'),
(5, 'Real Chill', 'David', '99999999', 'Mathew', 'Player1', 'Player2', 'Player3', 'Player4', 'Player5', 'Player6', 'Player7', 'Player8', 'Player9', 'Player10', 'Player11', 'Player12', 'Player13', 'Player14', 'Player15'),
(6, 'Demon Kongs', 'David', '99999999', 'Mathew', 'Player1', 'Player2', 'Player3', 'Player4', 'Player5', 'Player6', 'Player7', 'Player8', 'Player9', 'Player10', 'Player11', 'Player12', 'Player13', 'Player14', 'Player15'),
(7, 'Frenzy Shooters', 'David', '99999999', 'Mathew', 'Player1', 'Player2', 'Player3', 'Player4', 'Player5', 'Player6', 'Player7', 'Player8', 'Player9', 'Player10', 'Player11', 'Player12', 'Player13', 'Player14', 'Player15'),
(8, 'Dark Spirits', 'David', '99999999', 'Mathew', 'Player1', 'Player2', 'Player3', 'Player4', 'Player5', 'Player6', 'Player7', 'Player8', 'Player9', 'Player10', 'Player11', 'Player12', 'Player13', 'Player14', 'Player15'),
(9, 'Championofseas', 'David', '99999999', 'Mathew', 'Player1', 'Player2', 'Player3', 'Player4', 'Player5', 'Player6', 'Player7', 'Player8', 'Player9', 'Player10', 'Player11', 'Player12', 'Player13', 'Player14', 'Player15'),
(10, 'Gangsters', 'David', '99999999', 'Mathew', 'Player1', 'Player2', 'Player3', 'Player4', 'Player5', 'Player6', 'Player7', 'Player8', 'Player9', 'Player10', 'Player11', 'Player12', 'Player13', 'Player14', 'Player15');

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_times`
--

CREATE TABLE `adminapp_times` (
  `id` bigint(20) NOT NULL,
  `Firstmatch` time(6) NOT NULL,
  `Secondmatch` time(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_times`
--

INSERT INTO `adminapp_times` (`id`, `Firstmatch`, `Secondmatch`) VALUES
(1, '18:00:00.000000', '21:00:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_venue`
--

CREATE TABLE `adminapp_venue` (
  `id` bigint(20) NOT NULL,
  `VenueName` varchar(500) NOT NULL,
  `Location` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_venue`
--

INSERT INTO `adminapp_venue` (`id`, `VenueName`, `Location`) VALUES
(1, 'Rajiv Gandhi Stadium', 'Kochi'),
(2, 'Jawahar Stadium Complex', 'Kannur'),
(3, 'University Stadium', 'Thiruvananthapuram'),
(4, 'Nehru Stadium', 'Kottayam'),
(5, 'EMS Stadium', 'Kozhikode');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(25, 'Can add team registration', 7, 'add_teamregistration'),
(26, 'Can change team registration', 7, 'change_teamregistration'),
(27, 'Can delete team registration', 7, 'delete_teamregistration'),
(28, 'Can view team registration', 7, 'view_teamregistration'),
(29, 'Can add venue', 8, 'add_venue'),
(30, 'Can change venue', 8, 'change_venue'),
(31, 'Can delete venue', 8, 'delete_venue'),
(32, 'Can view venue', 8, 'view_venue'),
(33, 'Can add results', 9, 'add_results'),
(34, 'Can change results', 9, 'change_results'),
(35, 'Can delete results', 9, 'delete_results'),
(36, 'Can view results', 9, 'view_results'),
(37, 'Can add schedule', 10, 'add_schedule'),
(38, 'Can change schedule', 10, 'change_schedule'),
(39, 'Can delete schedule', 10, 'delete_schedule'),
(40, 'Can view schedule', 10, 'view_schedule'),
(41, 'Can add dates', 11, 'add_dates'),
(42, 'Can change dates', 11, 'change_dates'),
(43, 'Can delete dates', 11, 'delete_dates'),
(44, 'Can view dates', 11, 'view_dates'),
(45, 'Can add times', 12, 'add_times'),
(46, 'Can change times', 12, 'change_times'),
(47, 'Can delete times', 12, 'delete_times'),
(48, 'Can view times', 12, 'view_times'),
(49, 'Can add result', 13, 'add_result'),
(50, 'Can change result', 13, 'change_result'),
(51, 'Can delete result', 13, 'delete_result'),
(52, 'Can view result', 13, 'view_result');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(11, 'adminapp', 'dates'),
(13, 'adminapp', 'result'),
(9, 'adminapp', 'results'),
(10, 'adminapp', 'schedule'),
(7, 'adminapp', 'teamregistration'),
(12, 'adminapp', 'times'),
(8, 'adminapp', 'venue'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(25, 'contenttypes', '0001_initial', '2023-09-25 05:44:58.594243'),
(26, 'auth', '0001_initial', '2023-09-25 05:44:58.623211'),
(27, 'admin', '0001_initial', '2023-09-25 05:44:58.638714'),
(28, 'admin', '0002_logentry_remove_auto_add', '2023-09-25 05:44:58.650711'),
(29, 'admin', '0003_logentry_add_action_flag_choices', '2023-09-25 05:44:58.663709'),
(30, 'adminapp', '0001_initial', '2023-09-25 05:44:58.677620'),
(31, 'contenttypes', '0002_remove_content_type_name', '2023-09-25 05:46:01.303943'),
(32, 'auth', '0002_alter_permission_name_max_length', '2023-09-25 05:46:01.323489'),
(33, 'auth', '0003_alter_user_email_max_length', '2023-09-25 05:46:01.344929'),
(34, 'auth', '0004_alter_user_username_opts', '2023-09-25 05:46:01.355629'),
(35, 'auth', '0005_alter_user_last_login_null', '2023-09-25 05:46:01.384776'),
(36, 'auth', '0006_require_contenttypes_0002', '2023-09-25 05:46:01.387932'),
(37, 'auth', '0007_alter_validators_add_error_messages', '2023-09-25 05:46:01.400537'),
(38, 'auth', '0008_alter_user_username_max_length', '2023-09-25 05:46:01.430108'),
(39, 'auth', '0009_alter_user_last_name_max_length', '2023-09-25 05:46:01.455148'),
(40, 'auth', '0010_alter_group_name_max_length', '2023-09-25 05:46:01.481456'),
(41, 'auth', '0011_update_proxy_permissions', '2023-09-25 05:46:01.494818'),
(42, 'auth', '0012_alter_user_first_name_max_length', '2023-09-25 05:46:01.527738'),
(43, 'sessions', '0001_initial', '2023-09-25 05:46:01.533940'),
(44, 'adminapp', '0002_result', '2023-09-25 05:50:15.683925'),
(45, 'adminapp', '0003_delete_results', '2023-09-25 05:51:32.556915');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminapp_dates`
--
ALTER TABLE `adminapp_dates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adminapp_result`
--
ALTER TABLE `adminapp_result`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_result_Schedule_id_a0487924_fk_adminapp_schedule_id` (`Schedule_id`);

--
-- Indexes for table `adminapp_schedule`
--
ALTER TABLE `adminapp_schedule`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_schedule_Team1_id_fea00001_fk_adminapp_` (`Team1_id`),
  ADD KEY `adminapp_schedule_Team2_id_516103ab_fk_adminapp_` (`Team2_id`),
  ADD KEY `adminapp_schedule_Venue_id_86b683dd_fk_adminapp_venue_id` (`Venue_id`);

--
-- Indexes for table `adminapp_teamregistration`
--
ALTER TABLE `adminapp_teamregistration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adminapp_times`
--
ALTER TABLE `adminapp_times`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adminapp_venue`
--
ALTER TABLE `adminapp_venue`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `adminapp_dates`
--
ALTER TABLE `adminapp_dates`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `adminapp_result`
--
ALTER TABLE `adminapp_result`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `adminapp_schedule`
--
ALTER TABLE `adminapp_schedule`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `adminapp_teamregistration`
--
ALTER TABLE `adminapp_teamregistration`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `adminapp_times`
--
ALTER TABLE `adminapp_times`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `adminapp_venue`
--
ALTER TABLE `adminapp_venue`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `adminapp_result`
--
ALTER TABLE `adminapp_result`
  ADD CONSTRAINT `adminapp_result_Schedule_id_a0487924_fk_adminapp_schedule_id` FOREIGN KEY (`Schedule_id`) REFERENCES `adminapp_schedule` (`id`);

--
-- Constraints for table `adminapp_schedule`
--
ALTER TABLE `adminapp_schedule`
  ADD CONSTRAINT `adminapp_schedule_Team1_id_fea00001_fk_adminapp_` FOREIGN KEY (`Team1_id`) REFERENCES `adminapp_teamregistration` (`id`),
  ADD CONSTRAINT `adminapp_schedule_Team2_id_516103ab_fk_adminapp_` FOREIGN KEY (`Team2_id`) REFERENCES `adminapp_teamregistration` (`id`),
  ADD CONSTRAINT `adminapp_schedule_Venue_id_86b683dd_fk_adminapp_venue_id` FOREIGN KEY (`Venue_id`) REFERENCES `adminapp_venue` (`id`);

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
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2019-10-21 13:37:09', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `travcountstoredb`
--
CREATE DATABASE IF NOT EXISTS `travcountstoredb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `travcountstoredb`;

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_aboutus`
--

CREATE TABLE `adminapp_aboutus` (
  `id` bigint(20) NOT NULL,
  `Description` longtext NOT NULL,
  `BannerImage` varchar(100) NOT NULL,
  `Subimage` longtext DEFAULT NULL,
  `Quotes` longtext NOT NULL,
  `Heading` varchar(200) NOT NULL,
  `Facebook` varchar(100) NOT NULL,
  `Twitter` varchar(100) NOT NULL,
  `Google` varchar(100) NOT NULL,
  `Instagram` varchar(100) NOT NULL,
  `Category_id` bigint(20) NOT NULL,
  `Signup_id` bigint(20) NOT NULL,
  `ThemeImages_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_aboutus`
--

INSERT INTO `adminapp_aboutus` (`id`, `Description`, `BannerImage`, `Subimage`, `Quotes`, `Heading`, `Facebook`, `Twitter`, `Google`, `Instagram`, `Category_id`, `Signup_id`, `ThemeImages_id`) VALUES
(1, 'At Our Travel Agency, we are passionate about creating unforgettable travel experiences for our valued customers. With years of industry expertise and a team of experienced travel professionals, we are committed to providing exceptional service, personalized attention, and tailored travel solutions to suit your needs.', 'about/about-banner.jpg', NULL, 'Travel far, travel wide, travel with us by your side.', 'Life is short, travel often', 'agency@fb.com', 'agency@twitter.com', 'agency@gmail.com', 'agency@instagram.com', 1, 1, 1),
(2, 'At Our Travel Agency, we are passionate about creating unforgettable travel experiences for our valued customers. With years of industry expertise and a team of experienced travel professionals, we are committed to providing exceptional service, personalized attention, and tailored travel solutions to suit your needs.', 'about/about-banner.jpg', NULL, 'Travel far, travel wide, travel with us by your side.', 'Life is short, travel often', 'agency@fb.com', 'agency@twitter.com', 'agency@gmail.com', 'agency@instagram.com', 1, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_addactivities`
--

CREATE TABLE `adminapp_addactivities` (
  `id` bigint(20) NOT NULL,
  `Activities` varchar(1000) NOT NULL,
  `Category_id` bigint(20) NOT NULL,
  `Signup_id` bigint(20) NOT NULL,
  `ThemeImages_id` bigint(20) NOT NULL,
  `ActivityIcon` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_addactivities`
--

INSERT INTO `adminapp_addactivities` (`id`, `Activities`, `Category_id`, `Signup_id`, `ThemeImages_id`, `ActivityIcon`) VALUES
(1, 'Swimmiing', 2, 9, 9, 'activity/icon-3.png'),
(2, 'Fitness Gym', 2, 9, 9, 'activity/icon-2_rIFhqey.png'),
(3, 'Restaurant', 2, 9, 9, 'activity/icon-1.png'),
(4, 'Luxury Spa', 2, 9, 9, 'activity/icon-3.png');

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_addamenities`
--

CREATE TABLE `adminapp_addamenities` (
  `id` bigint(20) NOT NULL,
  `Amenities` varchar(100) NOT NULL,
  `Amenities_Image` varchar(100) NOT NULL,
  `Category_id` bigint(20) NOT NULL,
  `Signup_id` bigint(20) NOT NULL,
  `ThemeImages_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_addamenities`
--

INSERT INTO `adminapp_addamenities` (`id`, `Amenities`, `Amenities_Image`, `Category_id`, `Signup_id`, `ThemeImages_id`) VALUES
(1, 'Free WiFi', 'amenities/freewifi_7myqmXk.jpg', 2, 9, 9),
(2, 'Restaurant', 'amenities/5.jpg', 2, 9, 9),
(3, 'Games', 'amenities/gameroom.jpg', 2, 9, 9),
(4, 'Restaurants', 'amenities/restaurants.jpg', 2, 9, 9);

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_addbedtype`
--

CREATE TABLE `adminapp_addbedtype` (
  `id` bigint(20) NOT NULL,
  `Bed_Type` varchar(100) NOT NULL,
  `Bed_Image` varchar(100) NOT NULL,
  `Category_id` bigint(20) NOT NULL,
  `Signup_id` bigint(20) NOT NULL,
  `ThemeImages_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_addbedtype`
--

INSERT INTO `adminapp_addbedtype` (`id`, `Bed_Type`, `Bed_Image`, `Category_id`, `Signup_id`, `ThemeImages_id`) VALUES
(1, 'Single', 'room/singlebed_IuIs4Fy.jpg', 2, 9, 9),
(2, 'Double', 'room/doublebed.jpg', 2, 9, 9),
(3, 'King', 'room/kingbed.jpg', 2, 9, 9),
(4, 'Queen', 'room/queenbed.jpg', 2, 9, 9);

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_addfacility`
--

CREATE TABLE `adminapp_addfacility` (
  `id` bigint(20) NOT NULL,
  `Facility` varchar(100) NOT NULL,
  `Facility_Description` longtext NOT NULL,
  `Facility_Image` varchar(100) NOT NULL,
  `Category_id` bigint(20) NOT NULL,
  `Signup_id` bigint(20) NOT NULL,
  `ThemeImages_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_addfacility`
--

INSERT INTO `adminapp_addfacility` (`id`, `Facility`, `Facility_Description`, `Facility_Image`, `Category_id`, `Signup_id`, `ThemeImages_id`) VALUES
(1, 'Swimming pool', 'Pool facility for swimming, diving, recreational bathing, and therapy.', 'facility/swimmingpool_X6aWAid_4XZlMvD.jpg', 2, 9, 9),
(2, 'Spa and Sauna', 'Both sauna and spa use heat as a method to clean and refresh your body.', 'facility/spasauna_fUcpAzR.jpg', 2, 9, 9),
(3, 'Airport Transfer', 'Airport shuttle service is available for extra charge', 'facility/air_Gpd6i1v.jpg', 2, 9, 9),
(4, 'Room Service', '24-hour in-room dining is available for extra charge', 'facility/448x448_img4_azrbEXt.jpg', 2, 9, 9),
(8, 'Restaurant', 'Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non.', 'facility/cityview.jpg', 2, 9, 9);

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_addfloor`
--

CREATE TABLE `adminapp_addfloor` (
  `id` bigint(20) NOT NULL,
  `Floor` varchar(100) NOT NULL,
  `Category_id` bigint(20) NOT NULL,
  `Signup_id` bigint(20) NOT NULL,
  `ThemeImages_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_addfloor`
--

INSERT INTO `adminapp_addfloor` (`id`, `Floor`, `Category_id`, `Signup_id`, `ThemeImages_id`) VALUES
(1, 'Floor-1', 2, 1, 1),
(2, 'Floor-2', 2, 1, 1),
(3, 'Floor-3', 2, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_addviews`
--

CREATE TABLE `adminapp_addviews` (
  `id` bigint(20) NOT NULL,
  `Views_Name` varchar(100) NOT NULL,
  `Views_Description` longtext NOT NULL,
  `Views_Image` varchar(100) NOT NULL,
  `Category_id` bigint(20) NOT NULL,
  `Signup_id` bigint(20) NOT NULL,
  `ThemeImages_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_addviews`
--

INSERT INTO `adminapp_addviews` (`id`, `Views_Name`, `Views_Description`, `Views_Image`, `Category_id`, `Signup_id`, `ThemeImages_id`) VALUES
(1, 'Bay View', 'A resort (North American English) is a self-contained commercial establishment that tries to provide most of a vacationer\'s wants, such as food, drink, swimming, lodging, sports, entertainment, and shopping, on the premises', 'views/bayview_ZY1Bp7H.jpg', 2, 9, 9),
(2, 'Sea View', 'A resort (North American English) is a self-contained commercial establishment that tries to provide most of a vacationer\'s wants, such as food, drink, swimming, lodging, sports, entertainment, and shopping, on the premises', 'views/seaview_SLup835.jpg', 2, 9, 9),
(4, 'Mount View', 'A resort (North American English) is a self-contained commercial establishment that tries to provide most of a vacationer\'s wants, such as food, drink, swimming, lodging, sports, entertainment, and shopping, on the premises', 'views/mountainview_5Agc9JT.jpg', 2, 9, 9),
(5, 'City View', 'A resort (North American English) is a self-contained commercial establishment that tries to provide most of a vacationer\'s wants, such as food, drink, swimming, lodging, sports, entertainment, and shopping, on the premises', 'views/cityview_L6yTcKn.jpg', 2, 9, 9),
(6, 'Lake View', 'A resort (North American English) is a self-contained commercial establishment that tries to provide most of a vacationer\'s wants, such as food, drink, swimming, lodging, sports, entertainment, and shopping, on the premises...', 'views/lakeview_yuCgY8X.jpg', 2, 9, 9);

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_agencydetail`
--

CREATE TABLE `adminapp_agencydetail` (
  `id` bigint(20) NOT NULL,
  `AgencyName` varchar(200) NOT NULL,
  `Email` varchar(254) NOT NULL,
  `Contact` varchar(300) NOT NULL,
  `WhatsappNumber` varchar(20) NOT NULL,
  `Address` varchar(80) NOT NULL,
  `Street` varchar(80) NOT NULL,
  `City` varchar(80) NOT NULL,
  `District` varchar(80) NOT NULL,
  `State` varchar(80) NOT NULL,
  `Pincode` varchar(80) NOT NULL,
  `DomainName` varchar(80) NOT NULL,
  `Banner` varchar(100) NOT NULL,
  `Logo` varchar(100) NOT NULL,
  `WhiteLogo` varchar(100) NOT NULL,
  `Favicon` varchar(100) NOT NULL,
  `Category_id` bigint(20) NOT NULL,
  `Signup_id` bigint(20) NOT NULL,
  `ThemeImages_id` bigint(20) NOT NULL,
  `NotificationEmail` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_agencydetail`
--

INSERT INTO `adminapp_agencydetail` (`id`, `AgencyName`, `Email`, `Contact`, `WhatsappNumber`, `Address`, `Street`, `City`, `District`, `State`, `Pincode`, `DomainName`, `Banner`, `Logo`, `WhiteLogo`, `Favicon`, `Category_id`, `Signup_id`, `ThemeImages_id`, `NotificationEmail`) VALUES
(1, 'TravCountWebStore', 'travcountwebstore@gmail.com', '9876543210|8666667778', '7897897654', 'Valamkottil Towers', 'Judgemukku', 'Kakkanad', 'Ernakulam', 'Kerala', '682021', 'travcountwebstore.com', 'banner/new-bg1.jpg', 'logo/tc_web_store_new.png', 'logo/tc_webstore_white.png', 'favicon/favicon.ico', 1, 1, 1, ''),
(3, 'trav', 'vyshnav@gmail.com', '9876543210', '7890987654', 'Karthika', 'Payangodanpara', 'Kannur', 'kannur', 'Kerala', '670005', 'travcount.com', 'banner/new-bg1_0vUeckt.jpg', 'logo/tc_web_store_new_LNyq4J6.png', 'logo/tc_webstore_white_0CUmTXh.png', 'favicon/favicon_R3C7183.ico', 1, 3, 2, ''),
(4, '1', 'amrutha91jun@gmail.com', '9876543210', '7897897654', 'Karthika', 'Payangodanpara', 'Kannur', 'Kannur', 'Kerala', '670005', 'agency.com', 'banner/mountainview.jpg', 'logo/cityview.jpg', 'logo/queenbed.jpg', 'favicon/lakeview.jpg', 1, 5, 3, '');

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_blackoutday`
--

CREATE TABLE `adminapp_blackoutday` (
  `id` bigint(20) NOT NULL,
  `From_date` date NOT NULL,
  `To_date` date NOT NULL,
  `Remarks` varchar(200) NOT NULL,
  `Category_id` bigint(20) NOT NULL,
  `Signup_id` bigint(20) NOT NULL,
  `ThemeImages_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_blackoutday`
--

INSERT INTO `adminapp_blackoutday` (`id`, `From_date`, `To_date`, `Remarks`, `Category_id`, `Signup_id`, `ThemeImages_id`) VALUES
(1, '2023-05-10', '2023-05-20', 'Vacation', 2, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_booking`
--

CREATE TABLE `adminapp_booking` (
  `id` bigint(20) NOT NULL,
  `Roomcount` int(11) NOT NULL,
  `GuestName` varchar(50) NOT NULL,
  `check_in_date` date NOT NULL,
  `check_out_date` date NOT NULL,
  `Property_id` bigint(20) NOT NULL,
  `RoomList_id` bigint(20) NOT NULL,
  `Category_id` bigint(20) NOT NULL,
  `Signup_id` bigint(20) NOT NULL,
  `ThemeImages_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_cancellationpolicy`
--

CREATE TABLE `adminapp_cancellationpolicy` (
  `id` bigint(20) NOT NULL,
  `Policy_type` varchar(50) NOT NULL,
  `Description` longtext NOT NULL,
  `Cancellation_fee` decimal(8,2) DEFAULT NULL,
  `Cancellation_deadline` datetime(6) DEFAULT NULL,
  `Is_active` tinyint(1) NOT NULL,
  `Created_at` datetime(6) NOT NULL,
  `Updated_at` datetime(6) NOT NULL,
  `Category_id` bigint(20) NOT NULL,
  `Signup_id` bigint(20) NOT NULL,
  `ThemeImages_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_category`
--

CREATE TABLE `adminapp_category` (
  `id` bigint(20) NOT NULL,
  `Category_Name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_category`
--

INSERT INTO `adminapp_category` (`id`, `Category_Name`) VALUES
(1, 'Travel'),
(2, 'Resort'),
(3, 'Tour'),
(4, 'General');

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_conciergelist`
--

CREATE TABLE `adminapp_conciergelist` (
  `id` bigint(20) NOT NULL,
  `ConciergeName` varchar(100) NOT NULL,
  `ConciergeCode` varchar(100) NOT NULL,
  `ConciergeJoiningDate` date NOT NULL,
  `ConciergeJobdesk` longtext NOT NULL,
  `ConciergeSchedule` varchar(500) NOT NULL,
  `ConciergeContact` varchar(500) NOT NULL,
  `ConciergeStatus` varchar(200) NOT NULL,
  `ConciergeImage` varchar(100) NOT NULL,
  `Category_id` bigint(20) NOT NULL,
  `Signup_id` bigint(20) NOT NULL,
  `ThemeImages_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_directorprofile`
--

CREATE TABLE `adminapp_directorprofile` (
  `id` bigint(20) NOT NULL,
  `Directordescription` longtext NOT NULL,
  `Directorcontact` varchar(100) NOT NULL,
  `Directoremail` varchar(254) NOT NULL,
  `Directorname` varchar(200) NOT NULL,
  `Directordesignation` varchar(200) NOT NULL,
  `Directorfacebook` varchar(100) NOT NULL,
  `Directorlinkedin` varchar(100) NOT NULL,
  `Directorinstagram` varchar(100) NOT NULL,
  `Directorimage` varchar(100) NOT NULL,
  `Category_id` bigint(20) NOT NULL,
  `Signup_id` bigint(20) NOT NULL,
  `ThemeImages_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_directorprofile`
--

INSERT INTO `adminapp_directorprofile` (`id`, `Directordescription`, `Directorcontact`, `Directoremail`, `Directorname`, `Directordesignation`, `Directorfacebook`, `Directorlinkedin`, `Directorinstagram`, `Directorimage`, `Category_id`, `Signup_id`, `ThemeImages_id`) VALUES
(1, 'As a travel agency, our Director is a seasoned professional with a wealth of experience and a passion for the travel industry. With a strong background in travel planning and management, our Director brings a strategic and visionary leadership approach to our agency.', '8967452336', 'director@gmail.com', 'Mathew', 'Manager', 'director@facebook.com', 'director@linkedin.com', 'director@instagram.com', 'director/about2_Lsy1lcD_rhq1oDW.jpg', 1, 1, 1),
(2, 'asaaaaaaaaa', '8967452335', 'director@gmail.com', 'Clara', 'Accountant', 'dir@fb.com', 'director@linkedin.com', 'director1@instagram.com', 'director/about2_Lsy1lcD_rhq1oDW.jpg', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_generalaboutus`
--

CREATE TABLE `adminapp_generalaboutus` (
  `id` bigint(20) NOT NULL,
  `Description` longtext NOT NULL,
  `Image` varchar(100) NOT NULL,
  `Subimage` longtext DEFAULT NULL,
  `Quotes` longtext NOT NULL,
  `Heading` varchar(200) NOT NULL,
  `Facebook` varchar(100) NOT NULL,
  `Twitter` varchar(100) NOT NULL,
  `Google` varchar(100) NOT NULL,
  `Instagram` varchar(100) NOT NULL,
  `Yahoo` varchar(100) NOT NULL,
  `Category_id` bigint(20) NOT NULL,
  `Signup_id` bigint(20) NOT NULL,
  `ThemeImages_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_generalaboutus`
--

INSERT INTO `adminapp_generalaboutus` (`id`, `Description`, `Image`, `Subimage`, `Quotes`, `Heading`, `Facebook`, `Twitter`, `Google`, `Instagram`, `Yahoo`, `Category_id`, `Signup_id`, `ThemeImages_id`) VALUES
(3, 'We are a digital and branding company that believes in the power of creative strategy and along with great design.\r\n\r\nCum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Praesent commodo cursus magna, vel scelerisque nisl consectetur et.', 'about/bg12.jpg', NULL, 'Quotes', 'Heading', 'general@fb.com', 'general@twitter.com', 'general@google.com', 'general@instagram.com', 'general@yahoo.com', 4, 8, 8);

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_generalcompanydetail`
--

CREATE TABLE `adminapp_generalcompanydetail` (
  `id` bigint(20) NOT NULL,
  `CompanyName` varchar(200) NOT NULL,
  `Email` varchar(254) NOT NULL,
  `Contact` varchar(300) NOT NULL,
  `WhatsappNumber` varchar(20) NOT NULL,
  `Address` varchar(80) NOT NULL,
  `Street` varchar(80) NOT NULL,
  `City` varchar(80) NOT NULL,
  `District` varchar(80) NOT NULL,
  `State` varchar(80) NOT NULL,
  `Pincode` varchar(80) NOT NULL,
  `DomainName` varchar(80) NOT NULL,
  `Banner` varchar(100) NOT NULL,
  `Logo` varchar(100) NOT NULL,
  `WhiteLogo` varchar(100) NOT NULL,
  `Favicon` varchar(100) NOT NULL,
  `Category_id` bigint(20) NOT NULL,
  `Signup_id` bigint(20) NOT NULL,
  `ThemeImages_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_generalcompanydetail`
--

INSERT INTO `adminapp_generalcompanydetail` (`id`, `CompanyName`, `Email`, `Contact`, `WhatsappNumber`, `Address`, `Street`, `City`, `District`, `State`, `Pincode`, `DomainName`, `Banner`, `Logo`, `WhiteLogo`, `Favicon`, `Category_id`, `Signup_id`, `ThemeImages_id`) VALUES
(2, 'TravCountWebStore', 'travcountwebstore@gmail.com', '9876543210', '7897897654', 'Valamkottil Towers', 'Judgemukku', 'Kakkanad', 'Ernakulam', 'Kerala', '682021', 'travcountwebstore.com', 'banner/bg12.jpg', 'logo/tc_web_store_new_qJTcgGs.png', 'logo/tc_webstore_white_qVfmFSX.png', 'favicon/favicon_GtHrAug.ico', 4, 8, 8);

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_generaldirectorprofile`
--

CREATE TABLE `adminapp_generaldirectorprofile` (
  `id` bigint(20) NOT NULL,
  `Directordescription` longtext NOT NULL,
  `Directorcontact` varchar(100) NOT NULL,
  `Directoremail` varchar(254) NOT NULL,
  `Directorname` varchar(200) NOT NULL,
  `Directordesignation` varchar(200) NOT NULL,
  `Directorfacebook` varchar(100) NOT NULL,
  `Directorlinkedin` varchar(100) NOT NULL,
  `Directorinstagram` varchar(100) NOT NULL,
  `Directorimage` varchar(100) NOT NULL,
  `Category_id` bigint(20) NOT NULL,
  `Signup_id` bigint(20) NOT NULL,
  `ThemeImages_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_generaldirectorprofile`
--

INSERT INTO `adminapp_generaldirectorprofile` (`id`, `Directordescription`, `Directorcontact`, `Directoremail`, `Directorname`, `Directordesignation`, `Directorfacebook`, `Directorlinkedin`, `Directorinstagram`, `Directorimage`, `Category_id`, `Signup_id`, `ThemeImages_id`) VALUES
(1, 'Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Vestibulum ligula porta felis euismod semper. Cras justo odio consectetur adipiscing dapibus curabitur blandit.', '8967452335', 'director@gmail.com', 'Corris Ambady', 'Manager', 'director@facebook.com', 'director@linkedin.com', 'director@instagram.com', 'director/about4.jpg', 4, 8, 8);

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_generalimage`
--

CREATE TABLE `adminapp_generalimage` (
  `id` bigint(20) NOT NULL,
  `Subimage` varchar(100) NOT NULL,
  `related_model_id` bigint(20) NOT NULL,
  `Subdescription` longtext NOT NULL,
  `Subhead` varchar(100) NOT NULL,
  `Vision` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_generalimage`
--

INSERT INTO `adminapp_generalimage` (`id`, `Subimage`, `related_model_id`, `Subdescription`, `Subhead`, `Vision`) VALUES
(2, 'about/about3_hgLyxtT.jpg', 3, 'Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Nullam quis risus eget urna mollis ornare.', 'Save your time and money.', 'Vision');

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_generalproduct`
--

CREATE TABLE `adminapp_generalproduct` (
  `id` bigint(20) NOT NULL,
  `Head` varchar(100) NOT NULL,
  `Description` longtext NOT NULL,
  `Image` varchar(100) NOT NULL,
  `Category_id` bigint(20) NOT NULL,
  `Signup_id` bigint(20) NOT NULL,
  `ThemeImages_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_generalproduct`
--

INSERT INTO `adminapp_generalproduct` (`id`, `Head`, `Description`, `Image`, `Category_id`, `Signup_id`, `ThemeImages_id`) VALUES
(1, 'Quam Mollis Bibendum', 'Maecenas sed diam eget risus varius blandit sit amet non magna. Donec ullamcorper nulla non metus auctor fringilla. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur. Curabitur blandit tempus porttitor. Praesent commodo cursus magna, vel scelerisque nisl consectetur et.', 'product/pd7.jpg', 4, 8, 8),
(2, 'Commodo Dolor Bibendum', 'Cras mattis consectetur purus sit amet fermentum. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis.', 'product/pd9.jpg', 4, 8, 8),
(3, 'Parturient Cursus Mollis', 'Donec id elit non mi porta gravida at eget metus. Cras mattis consectetur purus sit amet fermentum. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Aenean eu leo quam. ', 'product/pd10.jpg', 4, 8, 8),
(4, 'Maecenas faucibus mollis', 'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Sed posuere consectetur est at lobortis. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.', 'product/pd11.jpg', 4, 8, 8);

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_generalseodata`
--

CREATE TABLE `adminapp_generalseodata` (
  `id` bigint(20) NOT NULL,
  `SEOTitle` varchar(100) NOT NULL,
  `SEODescription` longtext NOT NULL,
  `SEOPrimaryKeyword` varchar(255) NOT NULL,
  `SEOSecondaryKeywords` varchar(255) NOT NULL,
  `Category_id` bigint(20) NOT NULL,
  `Signup_id` bigint(20) NOT NULL,
  `ThemeImages_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_generalseodata`
--

INSERT INTO `adminapp_generalseodata` (`id`, `SEOTitle`, `SEODescription`, `SEOPrimaryKeyword`, `SEOSecondaryKeywords`, `Category_id`, `Signup_id`, `ThemeImages_id`) VALUES
(1, 'Travcountwebstore', 'Travcountwebstore', 'Travcount', 'webstore', 4, 8, 8);

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_generalservice`
--

CREATE TABLE `adminapp_generalservice` (
  `id` bigint(20) NOT NULL,
  `Description` longtext NOT NULL,
  `Image` varchar(100) NOT NULL,
  `Category_id` bigint(20) NOT NULL,
  `Signup_id` bigint(20) NOT NULL,
  `ThemeImages_id` bigint(20) NOT NULL,
  `Head` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_generaltestimonial`
--

CREATE TABLE `adminapp_generaltestimonial` (
  `id` bigint(20) NOT NULL,
  `TestimonialDescription` longtext NOT NULL,
  `TestimonialName` varchar(100) NOT NULL,
  `TestimonialImage` varchar(100) NOT NULL,
  `Category_id` bigint(20) NOT NULL,
  `Signup_id` bigint(20) NOT NULL,
  `ThemeImages_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_generaltestimonial`
--

INSERT INTO `adminapp_generaltestimonial` (`id`, `TestimonialDescription`, `TestimonialName`, `TestimonialImage`, `Category_id`, `Signup_id`, `ThemeImages_id`) VALUES
(1, 'Testimonials are often written by the business based on specific questions they ask satisfied customers. They usually show impact through before-and-after comparisons or provide specific improvement statistics.', 'Coris More', 'testimonial/about2_rwfLsdP.jpg', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_image`
--

CREATE TABLE `adminapp_image` (
  `id` bigint(20) NOT NULL,
  `Subimage` varchar(100) NOT NULL,
  `related_model_id` bigint(20) NOT NULL,
  `Subdescription` longtext NOT NULL,
  `Subhead` varchar(100) NOT NULL,
  `Vision` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_image`
--

INSERT INTO `adminapp_image` (`id`, `Subimage`, `related_model_id`, `Subdescription`, `Subhead`, `Vision`) VALUES
(1, 'about/lakeview_i6nEAo6.jpg', 1, 'Welcome to [Travel Agency Name], where we specialize in crafting tailor-made travel experiences that leave a lasting impression. As avid travelers ourselves, we understand the power of travel to inspire, enlighten, and transform. With our passion for exploration and unwavering commitment to customer satisfaction, we have been providing exceptional travel services to our valued clients for [number of years] years.', 'Creating Unforgettable Journeys Around the World', ''),
(2, 'about/about3_axUU0bN.jpg', 1, 'Welcome to [Travel Agency Name], where we specialize in crafting tailor-made travel experiences that leave a lasting impression. As avid travelers ourselves, we understand the power of travel to inspire, enlighten, and transform. With our passion for exploration and unwavering commitment to customer satisfaction, we have been providing exceptional travel services to our valued clients for [number of years] years.', 'Your Travel Dreams, Our Expertise', 'To become the leading provider of unforgettable travel experiences, inspiring wanderlust and creating lifelong memories. We strive to exceed customer expectations by offering exceptional services, personalized itineraries, and a seamless travel journey');

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_meals`
--

CREATE TABLE `adminapp_meals` (
  `id` bigint(20) NOT NULL,
  `MealsItem` varchar(500) NOT NULL,
  `Category_id` bigint(20) NOT NULL,
  `Signup_id` bigint(20) NOT NULL,
  `ThemeImages_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_meals`
--

INSERT INTO `adminapp_meals` (`id`, `MealsItem`, `Category_id`, `Signup_id`, `ThemeImages_id`) VALUES
(1, 'Breakfast', 2, 1, 1),
(2, 'Lunch', 2, 1, 1),
(3, 'Dinner', 2, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_mealslist`
--

CREATE TABLE `adminapp_mealslist` (
  `id` bigint(20) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `MealItem` varchar(1000) NOT NULL,
  `Rate` int(11) NOT NULL,
  `Category_id` bigint(20) NOT NULL,
  `Signup_id` bigint(20) NOT NULL,
  `ThemeImages_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_mealslist`
--

INSERT INTO `adminapp_mealslist` (`id`, `Name`, `MealItem`, `Rate`, `Category_id`, `Signup_id`, `ThemeImages_id`) VALUES
(1, 'European Plan', '1|2|3', 2000, 2, 1, 1),
(2, 'Continental Plan', '1|2|3', 3000, 2, 1, 1),
(3, 'American Plan', '1|2|3', 4000, 2, 1, 1),
(4, 'Modified American Plan', '1|2|3', 5000, 2, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_mealslist_mealsitem`
--

CREATE TABLE `adminapp_mealslist_mealsitem` (
  `id` bigint(20) NOT NULL,
  `mealslist_id` bigint(20) NOT NULL,
  `meals_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_mealslist_mealsitem`
--

INSERT INTO `adminapp_mealslist_mealsitem` (`id`, `mealslist_id`, `meals_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 2, 1),
(5, 2, 2),
(6, 2, 3),
(7, 3, 1),
(8, 3, 2),
(9, 3, 3),
(10, 4, 1),
(11, 4, 2),
(12, 4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_newgallery`
--

CREATE TABLE `adminapp_newgallery` (
  `id` bigint(20) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `GalleryImage` varchar(100) NOT NULL,
  `Category_id` bigint(20) NOT NULL,
  `Signup_id` bigint(20) NOT NULL,
  `ThemeImages_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_newgallery`
--

INSERT INTO `adminapp_newgallery` (`id`, `Title`, `GalleryImage`, `Category_id`, `Signup_id`, `ThemeImages_id`) VALUES
(15, 'Gallery1', 'gallery/1_rM1x3EN_qWroKxx.jpg', 2, 9, 9),
(16, 'Gallery2', 'gallery/7_gZpxwtl.jpg', 2, 9, 9),
(17, 'Gallery3', 'gallery/1_9dk4GzT.jpg', 2, 9, 9),
(18, 'Gallery4', 'gallery/inner-header2_XSBVaUi_BkTq8aI.jpg', 2, 9, 9),
(19, 'Gallery5', 'gallery/6_386bxBP.jpg', 2, 9, 9);

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_order_data`
--

CREATE TABLE `adminapp_order_data` (
  `id` bigint(20) NOT NULL,
  `Category_id` bigint(20) NOT NULL,
  `Signup_id` bigint(20) NOT NULL,
  `ThemeImages_id` bigint(20) NOT NULL,
  `Amount` varchar(300) NOT NULL,
  `Name` varchar(300) NOT NULL,
  `Order_Id` varchar(300) NOT NULL,
  `Payment_Id` varchar(300) NOT NULL,
  `Payment_Status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_package`
--

CREATE TABLE `adminapp_package` (
  `id` bigint(20) NOT NULL,
  `PackageDate` date NOT NULL,
  `PackageCode` varchar(500) NOT NULL,
  `PackageHead` varchar(100) NOT NULL,
  `PackageDayCount` varchar(100) NOT NULL,
  `PackageShift` varchar(100) NOT NULL,
  `PackageDescription` longtext NOT NULL,
  `PackagePlaceDescription` longtext NOT NULL,
  `PackageCountry` longtext NOT NULL,
  `PackageImage` varchar(100) NOT NULL,
  `PackageBannerImage` varchar(100) NOT NULL,
  `PackageSpecial` longtext NOT NULL,
  `Featured` longtext NOT NULL,
  `PackageAdultPrice` longtext NOT NULL,
  `PackageWithoutBedPrice` longtext NOT NULL,
  `PackageWithBedPrice` longtext NOT NULL,
  `PackageInfant` longtext NOT NULL,
  `PackageInclusion` longtext NOT NULL,
  `PackageExclusion` longtext NOT NULL,
  `Category_id` bigint(20) NOT NULL,
  `Signup_id` bigint(20) NOT NULL,
  `ThemeImages_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_package`
--

INSERT INTO `adminapp_package` (`id`, `PackageDate`, `PackageCode`, `PackageHead`, `PackageDayCount`, `PackageShift`, `PackageDescription`, `PackagePlaceDescription`, `PackageCountry`, `PackageImage`, `PackageBannerImage`, `PackageSpecial`, `Featured`, `PackageAdultPrice`, `PackageWithoutBedPrice`, `PackageWithBedPrice`, `PackageInfant`, `PackageInclusion`, `PackageExclusion`, `Category_id`, `Signup_id`, `ThemeImages_id`) VALUES
(1, '0000-00-00', '#122222', 'Greece', '20', 'Day', 'Explore the diverse wonders of Greece with [Travel Agency Name]. From ancient history to modern culture, stunning landscapes to iconic landmarks, Greece has something for everyone. ', '', '', 'package/package1_4dmGMEq.jpg', '', 'on', '', '', '', '', '', '', '', 1, 1, 1),
(2, '0000-00-00', '#122223', 'Europe', '15', 'night', 'Explore the diverse wonders of Europe with [Travel Agency Name]. From ancient history to modern culture, stunning landscapes to iconic landmarks, Europe has something for everyone. ', '', '', 'package/package5.jpg', '', 'on', '', '', '', '', '', '', '', 1, 1, 1),
(3, '0000-00-00', '#122224', 'Singapore', '25', 'Day', 'Explore the diverse wonders of Singapore with [Travel Agency Name]. From ancient history to modern culture, stunning landscapes to iconic landmarks, Singapore has something.', '', '', 'package/grapes_Di8b40n.jpg', '', 'on', '', '', '', '', '', '', '', 1, 1, 1),
(4, '0000-00-00', '#122225', 'Paris', '20', 'Night', 'Explore the diverse wonders of Paris with [Travel Agency Name]. From ancient history to modern culture, stunning landscapes to iconic landmarks, Paris has something for everyone. ', '', '', 'package/package3_YOYBHwO.jpg', '', 'off', '', '', '', '', '', '', '', 1, 1, 1),
(5, '0000-00-00', '#122226', 'USA', '30', 'Day', 'VisitTheUSA is the USA official guide for traveling the United States of America. Discover here all the information you need for your American holidays.', '', '', 'package/1.webp', '', 'on', '', '', '', '', '', '', '', 1, 1, 1),
(6, '2023-05-26', '#123452', 'Goa', '5', '5', 'ffffffffffff', 'fffffffffff', '6', 'package/mountainview.jpg', 'package/mountainview_JYBMa2h.jpg', 'on', 'on', '3444', '33333333', '3333333', '33333333', '33', '3', 1, 5, 3),
(8, '2023-05-26', '#123452', 'amrutha', '5', '5', 'aaaaaaaaaaa', 'aaaaaaaaaaaa', '6', 'package/grapes_jaSeNhc.jpg', 'package/lakeview_tgxJq4Q_N2kSWdc.jpg', 'on', 'on', '11111', '111', '111', '11111', '1', '1', 1, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_plan`
--

CREATE TABLE `adminapp_plan` (
  `id` bigint(20) NOT NULL,
  `Plan_Name` varchar(1000) NOT NULL,
  `Plan_Rate` varchar(1000) NOT NULL,
  `Category_id` bigint(20) NOT NULL,
  `ThemeImages_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_plan`
--

INSERT INTO `adminapp_plan` (`id`, `Plan_Name`, `Plan_Rate`, `Category_id`, `ThemeImages_id`) VALUES
(1, 'Website only', '3000', 2, 9),
(2, 'Website only', '3000', 2, 11),
(3, 'Website only', '3000', 2, 12),
(4, 'Website only', '3000', 1, 1),
(5, 'Website only', '3000', 1, 2),
(6, 'Website only', '3000', 1, 3),
(7, 'Website only', '3000', 1, 4),
(8, 'Website only', '3000', 1, 5),
(9, 'Website and Booking', '5000', 2, 9),
(10, 'Website and Booking', '5000', 2, 11),
(11, 'Website only', '2000', 4, 8),
(12, 'Website only', '3000', 2, 13);

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_property`
--

CREATE TABLE `adminapp_property` (
  `id` bigint(20) NOT NULL,
  `PropertyName` varchar(200) NOT NULL,
  `PropertyAddress` varchar(200) NOT NULL,
  `PropertyStreet` varchar(200) NOT NULL,
  `PropertyCity` varchar(200) NOT NULL,
  `PropertyDistrict` varchar(200) NOT NULL,
  `PropertyState` varchar(100) NOT NULL,
  `PropertyPincode` int(11) NOT NULL,
  `PropertyBookingType` varchar(100) NOT NULL,
  `TestimonialDescription` longtext NOT NULL,
  `TestimonialName` varchar(1000) NOT NULL,
  `PropertyActivity` varchar(1000) NOT NULL,
  `PropertyAmenity` varchar(1000) NOT NULL,
  `PropertyFacility` varchar(1000) NOT NULL,
  `PropertyImage` varchar(100) NOT NULL,
  `Category_id` bigint(20) NOT NULL,
  `Signup_id` bigint(20) NOT NULL,
  `ThemeImages_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_property`
--

INSERT INTO `adminapp_property` (`id`, `PropertyName`, `PropertyAddress`, `PropertyStreet`, `PropertyCity`, `PropertyDistrict`, `PropertyState`, `PropertyPincode`, `PropertyBookingType`, `TestimonialDescription`, `TestimonialName`, `PropertyActivity`, `PropertyAmenity`, `PropertyFacility`, `PropertyImage`, `Category_id`, `Signup_id`, `ThemeImages_id`) VALUES
(2, 'Lanka', 'Lanka', 'Karthika', 'Calicut', 'Calicut', 'Kerala', 670005, 'Offline', 'Description of resort ', 'David', '1|2|3', '1|2|3|4', '1|2', 'property/seaview.jpg', 2, 9, 9),
(3, 'Cana', 'Swaraka', 'Karthika', 'Wayanad', 'Wayanad', 'Kerala', 670005, 'OnLine', 'describe', 'Clara', '1|3|4', '1|3', '2|3|8', 'property/package5.jpg', 2, 10, 11);

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_property_propertyactivities`
--

CREATE TABLE `adminapp_property_propertyactivities` (
  `id` bigint(20) NOT NULL,
  `property_id` bigint(20) NOT NULL,
  `addactivities_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_property_propertyactivities`
--

INSERT INTO `adminapp_property_propertyactivities` (`id`, `property_id`, `addactivities_id`) VALUES
(3, 2, 1),
(4, 2, 2),
(5, 2, 3),
(6, 3, 1),
(7, 3, 3),
(8, 3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_property_propertyamenities`
--

CREATE TABLE `adminapp_property_propertyamenities` (
  `id` bigint(20) NOT NULL,
  `property_id` bigint(20) NOT NULL,
  `addamenities_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_property_propertyamenities`
--

INSERT INTO `adminapp_property_propertyamenities` (`id`, `property_id`, `addamenities_id`) VALUES
(4, 2, 1),
(3, 2, 2),
(5, 2, 3),
(6, 2, 4),
(7, 3, 1),
(8, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_property_propertyfacilities`
--

CREATE TABLE `adminapp_property_propertyfacilities` (
  `id` bigint(20) NOT NULL,
  `property_id` bigint(20) NOT NULL,
  `addfacility_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_property_propertyfacilities`
--

INSERT INTO `adminapp_property_propertyfacilities` (`id`, `property_id`, `addfacility_id`) VALUES
(1, 2, 1),
(2, 2, 2),
(4, 3, 2),
(5, 3, 3),
(3, 3, 8);

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_resortaboutus`
--

CREATE TABLE `adminapp_resortaboutus` (
  `id` bigint(20) NOT NULL,
  `Description` longtext NOT NULL,
  `Image` varchar(100) NOT NULL,
  `Subimage` longtext DEFAULT NULL,
  `Quotes` longtext NOT NULL,
  `Heading` varchar(200) NOT NULL,
  `Facebook` varchar(100) NOT NULL,
  `Twitter` varchar(100) NOT NULL,
  `Google` varchar(100) NOT NULL,
  `Instagram` varchar(100) NOT NULL,
  `Yahoo` varchar(100) NOT NULL,
  `Category_id` bigint(20) NOT NULL,
  `Signup_id` bigint(20) NOT NULL,
  `ThemeImages_id` bigint(20) NOT NULL,
  `AboutImage` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_resortaboutus`
--

INSERT INTO `adminapp_resortaboutus` (`id`, `Description`, `Image`, `Subimage`, `Quotes`, `Heading`, `Facebook`, `Twitter`, `Google`, `Instagram`, `Yahoo`, `Category_id`, `Signup_id`, `ThemeImages_id`, `AboutImage`) VALUES
(6, 'Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam.', 'about/inner-header2_2GgOhgQ.jpg', NULL, 'eque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incid dolor sit amet, consectetur, adipisci velit', 'Awaded Resort', 'resort@fb.com', 'resort@twitter.com', 'resort@gmail.com', 'resort@instagram.com', 'resort@yahoo.com', 2, 9, 9, 'about/1_mkUxl7M.jpg'),
(7, 'new description', 'about/6.jpg', NULL, 'qqqqqqq', 'hhhhhhhhh', '', '', '', '', '', 2, 10, 11, 'about/video1_ZozqqRb.jpg'),
(9, 'rrrrrrrrr', 'about/1_DdTwNhh.webp', NULL, 'rr', 'rr', '', '', '', '', '', 2, 11, 13, 'about/lakeview_3yAPd3m.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_resortdetail`
--

CREATE TABLE `adminapp_resortdetail` (
  `id` bigint(20) NOT NULL,
  `ResortName` varchar(200) NOT NULL,
  `Email` varchar(254) NOT NULL,
  `Contact` varchar(300) NOT NULL,
  `WhatsappNumber` varchar(20) NOT NULL,
  `Address` varchar(80) NOT NULL,
  `Street` varchar(80) NOT NULL,
  `City` varchar(80) NOT NULL,
  `District` varchar(80) NOT NULL,
  `State` varchar(80) NOT NULL,
  `Pincode` varchar(80) NOT NULL,
  `DomainName` varchar(80) NOT NULL,
  `Banner` varchar(100) NOT NULL,
  `Logo` varchar(100) NOT NULL,
  `WhiteLogo` varchar(100) NOT NULL,
  `Favicon` varchar(100) NOT NULL,
  `Category_id` bigint(20) NOT NULL,
  `Signup_id` bigint(20) NOT NULL,
  `ThemeImages_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_resortdetail`
--

INSERT INTO `adminapp_resortdetail` (`id`, `ResortName`, `Email`, `Contact`, `WhatsappNumber`, `Address`, `Street`, `City`, `District`, `State`, `Pincode`, `DomainName`, `Banner`, `Logo`, `WhiteLogo`, `Favicon`, `Category_id`, `Signup_id`, `ThemeImages_id`) VALUES
(1, 'TravCountWebStore', 'travcountwebstore@gmail.com', '9876543210', '6282599822', 'Valamkottil Towers', 'Judgemukku', 'Kakkanad', 'Ernakulam', 'Kerala', '682021', 'travcountwebstore.com', 'banner/1920x920_slide1.jpg', 'logo/tc_web_store_new_jQTasob.png', 'logo/tc_webstore_white_hrVHzrT_r2rrCM1.png', 'favicon/favicon_E4yCoC2.ico', 2, 9, 9),
(2, 'New Resort', 'admin@gmail.com', '9876543210', '6282599822', 'Karthika', 'Payangodanpara', 'Cochi', 'Ernakulam', 'Kerala', '670005', 'agency.com', 'banner/resorttheme.png', 'logo/tc_web_store_new_oRHdEG4.png', 'logo/tc_webstore_white_lWVOcQI.png', 'favicon/Picture1.jpg', 2, 2, 11),
(3, 'New Resort', 'admin@gmail.com', '9876543210|9978654345', '7897897654', 'Karthika', 'Payangodanpara', 'Kannur', 'kannur', 'Kerala', '670005', 'resortagency.com', 'banner/6.jpg', 'logo/tc_web_store_new_6291gI3_emsNb4k.png', 'logo/tc_webstore_white_4DoDpaf_vo4xYSK.png', 'favicon/favicon_R4LcEpO.ico', 2, 10, 11),
(5, 'ssssss', 'vyshnav@gmail.com', '9876543210', '33333333333', 'Karthika', 'Payangodanpara', 'Kannur', 'Thrissur', 'Kerala', '670005', 'resort.com', 'banner/lakeview_euSn0Ek.jpg', 'logo/lakeview_tgxJq4Q.jpg', 'logo/grapes_Di8b40n_1iaUmDx.jpg', 'favicon/lakeview_tgxJq4Q.jpg', 2, 11, 13);

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_resortimage`
--

CREATE TABLE `adminapp_resortimage` (
  `id` bigint(20) NOT NULL,
  `Subhead` varchar(100) NOT NULL,
  `Subdescription` longtext NOT NULL,
  `Vision` longtext NOT NULL,
  `Subimage` varchar(100) NOT NULL,
  `related_model_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_resortimage`
--

INSERT INTO `adminapp_resortimage` (`id`, `Subhead`, `Subdescription`, `Vision`, `Subimage`, `related_model_id`) VALUES
(7, 'WE offer 24x7 service to our customer', 'Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.', 'Awesome ', 'about/video1_HQW4iXv.jpg', 6),
(8, 'WE offer luxury service to our customer', 'Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.', 'Awesome ', 'about/1_ZDBWj3T_Bh5QyG3.jpg', 6),
(9, 'MAXIMUM CUSTOMER VALUE', 'dddddddddddddddddddddddd', 'vvvvvvvvvv', 'about/9.jpg', 7),
(11, 'Creating Unforgettable Journeys Around the World', 'rrrrrrrrrr', 'rr', 'about/lakeview_tgxJq4Q.jpg', 9);

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_resorttestimonial`
--

CREATE TABLE `adminapp_resorttestimonial` (
  `id` bigint(20) NOT NULL,
  `TestimonialDescription` longtext NOT NULL,
  `TestimonialName` varchar(100) NOT NULL,
  `TestimonialImage` varchar(100) NOT NULL,
  `Category_id` bigint(20) NOT NULL,
  `Signup_id` bigint(20) NOT NULL,
  `ThemeImages_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_resorttestimonial`
--

INSERT INTO `adminapp_resorttestimonial` (`id`, `TestimonialDescription`, `TestimonialName`, `TestimonialImage`, `Category_id`, `Signup_id`, `ThemeImages_id`) VALUES
(1, 'Nemos enim ipsam voluptatem quia voluptas sit aspern atur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem.', 'Mark John', 'testimonial/7_r7S7CNH.jpg', 2, 9, 9),
(2, 'Nemo enim ipsam voluptatem quia voluptas sit aspern atur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem.', 'Sara Elizabeth', 'testimonial/8.jpg', 2, 9, 9);

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_roomlist`
--

CREATE TABLE `adminapp_roomlist` (
  `id` bigint(20) NOT NULL,
  `RoomName` varchar(200) NOT NULL,
  `RoomCode` varchar(200) NOT NULL,
  `RoomCount` int(11) NOT NULL,
  `InitialRoomCount` int(11) NOT NULL,
  `RoomRate` varchar(200) NOT NULL,
  `RoomFacility` varchar(1000) NOT NULL,
  `RoomStatus` varchar(100) NOT NULL,
  `RoomImage` varchar(100) NOT NULL,
  `Property_id` bigint(20) NOT NULL,
  `RoomBedtype_id` bigint(20) NOT NULL,
  `Category_id` bigint(20) NOT NULL,
  `Signup_id` bigint(20) NOT NULL,
  `ThemeImages_id` bigint(20) NOT NULL,
  `RoomDescription` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_roomlist`
--

INSERT INTO `adminapp_roomlist` (`id`, `RoomName`, `RoomCode`, `RoomCount`, `InitialRoomCount`, `RoomRate`, `RoomFacility`, `RoomStatus`, `RoomImage`, `Property_id`, `RoomBedtype_id`, `Category_id`, `Signup_id`, `ThemeImages_id`, `RoomDescription`) VALUES
(15, 'Deluxe ', '#12341221', 8, 8, '2000', '2|4', 'Active', 'room/doublebed_WYOTqLP.jpg', 2, 1, 2, 9, 9, 'Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni a voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores dolores quis.'),
(16, 'Economy ', '#12341222', 4, 4, '2000', '2|4', 'Active', 'room/kingbed_sEeblRj.jpg', 2, 2, 2, 9, 9, 'Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni a voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores dolores quis.'),
(17, 'Economy ', '#12341223', 4, 4, '2000', '2|4', 'Active', 'room/queenbed_Q705Tq2.jpg', 2, 2, 2, 9, 9, 'Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni a voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores dolores quis.'),
(18, 'Deluxe ', '#12341223', 4, 4, '2000', '2|4', 'Active', 'room/singlebed_fSi34Am.jpg', 2, 2, 2, 9, 9, 'Nenim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni a voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores dolores quis.');

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_roomlist_roomfacilities`
--

CREATE TABLE `adminapp_roomlist_roomfacilities` (
  `id` bigint(20) NOT NULL,
  `roomlist_id` bigint(20) NOT NULL,
  `addfacility_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_roomlist_roomfacilities`
--

INSERT INTO `adminapp_roomlist_roomfacilities` (`id`, `roomlist_id`, `addfacility_id`) VALUES
(28, 15, 2),
(29, 15, 4),
(30, 16, 2),
(31, 16, 4),
(32, 17, 2),
(33, 17, 4),
(34, 18, 2),
(35, 18, 4);

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_seodata`
--

CREATE TABLE `adminapp_seodata` (
  `id` bigint(20) NOT NULL,
  `SEOTitle` varchar(100) NOT NULL,
  `SEODescription` longtext NOT NULL,
  `SEOPrimaryKeyword` varchar(255) NOT NULL,
  `SEOSecondaryKeywords` varchar(255) NOT NULL,
  `Category_id` bigint(20) NOT NULL,
  `Signup_id` bigint(20) NOT NULL,
  `ThemeImages_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_seodata`
--

INSERT INTO `adminapp_seodata` (`id`, `SEOTitle`, `SEODescription`, `SEOPrimaryKeyword`, `SEOSecondaryKeywords`, `Category_id`, `Signup_id`, `ThemeImages_id`) VALUES
(1, 'Travcount', 'Travel agency', 'Travcount', 'webstore|webstorefortravelagency', 1, 1, 1),
(2, '', '', '', '', 1, 3, 2),
(3, '', '', '', '', 4, 8, 8);

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_service`
--

CREATE TABLE `adminapp_service` (
  `id` bigint(20) NOT NULL,
  `ServiceHead` varchar(100) NOT NULL,
  `ServiceDescription` longtext NOT NULL,
  `ServiceImage` varchar(100) NOT NULL,
  `Category_id` bigint(20) NOT NULL,
  `Signup_id` bigint(20) NOT NULL,
  `ThemeImages_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_service`
--

INSERT INTO `adminapp_service` (`id`, `ServiceHead`, `ServiceDescription`, `ServiceImage`, `Category_id`, `Signup_id`, `ThemeImages_id`) VALUES
(1, 'AIRLINE TICKETING', 'Airline tickets are important documents that confirm a passenger has a seat on a flight. The ticket includes important information about the passenger and the flight that they will take. ', 'service/airline.jpg', 1, 1, 1),
(2, 'HOTEL BOOKING', 'Hotel booking creates a hotel reservation based on the room and rate results from a Hotel Rate and Rule Search response.', 'service/hotel.jpg', 1, 1, 1),
(3, 'TOUR PACKAGE', 'Package tour is the sum total of variety of services offered to the tourists in one price, which normally is less expensive than that of each individual items. ', 'service/tour.jpg', 1, 1, 1),
(4, 'PASSPORT', 'A formal document issued by an authorized official of a country to one of its citizens that is usually necessary for exit from and reentry into the country, that allows the citizen to travel in a foreign country in accordance with visa requirements, and that requests protection for the citizen while abroad.', 'service/passport.jpg', 1, 1, 1),
(5, 'VISA STAMPING', 'Visa Stamping is a process in which visa is endorsed in the passport.', 'service/visa_stamping.jpg', 1, 1, 1),
(6, 'CRUISE BOOKING', 'This online booking engine includes a vast amount cruise line, cruise ship and cabin descriptions linked to media files & rich content', 'service/cruise.jpg', 1, 1, 1),
(7, 'TOURIST VISA', 'A tourist visa is an official document or stamp that authorizes an individual to enter a foreign country for the purpose of leisure and tourism.', 'service/tourist_visa.jpg', 1, 1, 1),
(8, 'TRAVEL INSURANCE', 'Travel insurance helps cover financial losses associated with illness, injury, accidents, flight or other transportation delays.', 'service/travel_insurance.jpg', 1, 1, 1),
(9, 'service', 'sssssssss', 'service/1_DdTwNhh.webp', 1, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_signup`
--

CREATE TABLE `adminapp_signup` (
  `id` bigint(20) NOT NULL,
  `Category` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Contact` varchar(20) NOT NULL,
  `Email` varchar(254) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_signup`
--

INSERT INTO `adminapp_signup` (`id`, `Category`, `Name`, `Contact`, `Email`, `Password`) VALUES
(1, 1, 'TravcountAdmin', '99999999', 'admin1@gmail.com', '1111'),
(2, 2, 'TravcountAdmin', '99999999', 'admin5@gmail.com', '1111'),
(3, 1, 'new admin', '99999999', 'admin6@gmail.com', '1111'),
(4, 1, 'new admin', '99999999', 'admin7@gmail.com', '1111'),
(5, 1, 'user1', '111111111', 'amrutjun@gmail.com', '1111'),
(6, 1, 'user2', '2222222222', 'amruthajun@gmail.com', '1111'),
(7, 4, 'new user', '111111111', 'amrutha@gmail.com', '1111'),
(8, 4, 'amrutha', '99999999', 'amrutha91@gmail.com', '1111'),
(9, 2, 'adithi rao', '99999999', 'a91jun@gmail.com', '1111'),
(10, 2, 'New Resort', '99999999', 'a@gmail.com', '1111'),
(11, 2, 'newwww', '99999999', 'amruth91jun@gmail.com', '1111'),
(13, 1, 'amrutha', '99999999', 'amrutha91jun@gmail.com', '1111'),
(14, 1, 'Vyshnav', '99999999', 'ammujithu021022@gmail.com', '1111');

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_specialday`
--

CREATE TABLE `adminapp_specialday` (
  `id` bigint(20) NOT NULL,
  `From_date` date NOT NULL,
  `To_date` date NOT NULL,
  `Remarks` varchar(200) NOT NULL,
  `Category_id` bigint(20) NOT NULL,
  `Signup_id` bigint(20) NOT NULL,
  `ThemeImages_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_specialday`
--

INSERT INTO `adminapp_specialday` (`id`, `From_date`, `To_date`, `Remarks`, `Category_id`, `Signup_id`, `ThemeImages_id`) VALUES
(1, '2023-05-10', '2023-05-15', 'Vishu', 2, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_specialrate`
--

CREATE TABLE `adminapp_specialrate` (
  `id` bigint(20) NOT NULL,
  `Tariff_Id` int(11) NOT NULL,
  `From_Date` date NOT NULL,
  `To_Date` date NOT NULL,
  `Single_Rate` varchar(500) NOT NULL,
  `Double_Rate` varchar(500) NOT NULL,
  `Child_Rate` varchar(500) NOT NULL,
  `Category_id` bigint(20) NOT NULL,
  `Signup_id` bigint(20) NOT NULL,
  `ThemeImages_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_tariff`
--

CREATE TABLE `adminapp_tariff` (
  `id` bigint(20) NOT NULL,
  `SingleSpecialRate` int(11) NOT NULL,
  `SingleWeekendRate` int(11) NOT NULL,
  `SingleWeekdayRate` int(11) NOT NULL,
  `SingleSpecialDiscountRate` int(11) NOT NULL,
  `DoubleSpecialRate` int(11) NOT NULL,
  `DoubleWeekendRate` int(11) NOT NULL,
  `DoubleWeekdayRate` int(11) NOT NULL,
  `DoubleSpecialDiscountRate` int(11) NOT NULL,
  `ChildSpecialRate` int(11) NOT NULL,
  `ChildWeekendRate` int(11) NOT NULL,
  `ChildWeekdayRate` int(11) NOT NULL,
  `ChildSpecialDiscountRate` int(11) NOT NULL,
  `TravelAgencyCommission` int(11) NOT NULL,
  `RoomList_id` bigint(20) NOT NULL,
  `Category_id` bigint(20) NOT NULL,
  `Signup_id` bigint(20) NOT NULL,
  `ThemeImages_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_testimonial`
--

CREATE TABLE `adminapp_testimonial` (
  `id` bigint(20) NOT NULL,
  `TestimonialDescription` longtext NOT NULL,
  `TestimonialName` varchar(100) NOT NULL,
  `TestimonialImage` varchar(100) NOT NULL,
  `Category_id` bigint(20) NOT NULL,
  `Signup_id` bigint(20) NOT NULL,
  `ThemeImages_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_testimonial`
--

INSERT INTO `adminapp_testimonial` (`id`, `TestimonialDescription`, `TestimonialName`, `TestimonialImage`, `Category_id`, `Signup_id`, `ThemeImages_id`) VALUES
(1, 'Hi, my name is Sarah Thompson, and I\'ve been a small business owner for over a decade. I wanted to share my experience with ABC Marketing Services, as they have truly transformed my business', 'Sarah Thompson', 'testimonial/women2.jpg', 1, 1, 1),
(2, 'Hi, my name is David, and I\'ve been a small business owner for over a decade. I wanted to share my experience with ABC Marketing Services, as they have truly transformed my business', 'David', 'testimonial/1.jpg', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_testimonialimage`
--

CREATE TABLE `adminapp_testimonialimage` (
  `id` bigint(20) NOT NULL,
  `TestimonialImage` varchar(100) NOT NULL,
  `related_model_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_testimonialimage`
--

INSERT INTO `adminapp_testimonialimage` (`id`, `TestimonialImage`, `related_model_id`) VALUES
(1, 'testimonial/women2.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_themeimages`
--

CREATE TABLE `adminapp_themeimages` (
  `id` bigint(20) NOT NULL,
  `Theme_Image` varchar(100) NOT NULL,
  `Theme_Name` varchar(100) NOT NULL,
  `Background_Image` varchar(100) NOT NULL,
  `Category_id` bigint(20) NOT NULL,
  `Index_Image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_themeimages`
--

INSERT INTO `adminapp_themeimages` (`id`, `Theme_Image`, `Theme_Name`, `Background_Image`, `Category_id`, `Index_Image`) VALUES
(1, 'themes/travel1.png', 'travel1', 'themes/slider2.jpg', 1, ''),
(2, 'themes/theme2.png', 'travel2', 'themes/new-bg3.jpg', 1, ''),
(3, 'themes/theme3.png', 'travel3', 'themes/bg.png', 1, ''),
(4, 'themes/theme4.png', 'travel4', 'themes/new-bg2.jpg', 1, ''),
(5, 'themes/theme5.png', 'travel5', 'themes/bg_le6Yls5.png', 1, ''),
(8, 'themes/general1.png', 'general1', 'themes/bg12.jpg', 4, ''),
(9, 'themes/resort1.png', 'resort1', 'themes/1920x920_slide1.jpg', 2, ''),
(11, 'themes/resort2.png', 'resort2', 'themes/6.jpg', 2, ''),
(12, 'themes/resort3.png', 'resort3', 'themes/1.jpg', 2, ''),
(13, 'themes/resort4.png', 'resort4', 'themes/9.jpg', 2, ''),
(14, 'themes/resort5.png', 'resort5', 'themes/6_qZOHqEf.jpg', 2, '');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(25, 'Can add about us', 7, 'add_aboutus'),
(26, 'Can change about us', 7, 'change_aboutus'),
(27, 'Can delete about us', 7, 'delete_aboutus'),
(28, 'Can view about us', 7, 'view_aboutus'),
(29, 'Can add add activities', 8, 'add_addactivities'),
(30, 'Can change add activities', 8, 'change_addactivities'),
(31, 'Can delete add activities', 8, 'delete_addactivities'),
(32, 'Can view add activities', 8, 'view_addactivities'),
(33, 'Can add add amenities', 9, 'add_addamenities'),
(34, 'Can change add amenities', 9, 'change_addamenities'),
(35, 'Can delete add amenities', 9, 'delete_addamenities'),
(36, 'Can view add amenities', 9, 'view_addamenities'),
(37, 'Can add add bed type', 10, 'add_addbedtype'),
(38, 'Can change add bed type', 10, 'change_addbedtype'),
(39, 'Can delete add bed type', 10, 'delete_addbedtype'),
(40, 'Can view add bed type', 10, 'view_addbedtype'),
(41, 'Can add add facility', 11, 'add_addfacility'),
(42, 'Can change add facility', 11, 'change_addfacility'),
(43, 'Can delete add facility', 11, 'delete_addfacility'),
(44, 'Can view add facility', 11, 'view_addfacility'),
(45, 'Can add add floor', 12, 'add_addfloor'),
(46, 'Can change add floor', 12, 'change_addfloor'),
(47, 'Can delete add floor', 12, 'delete_addfloor'),
(48, 'Can view add floor', 12, 'view_addfloor'),
(49, 'Can add add views', 13, 'add_addviews'),
(50, 'Can change add views', 13, 'change_addviews'),
(51, 'Can delete add views', 13, 'delete_addviews'),
(52, 'Can view add views', 13, 'view_addviews'),
(53, 'Can add blackout day', 14, 'add_blackoutday'),
(54, 'Can change blackout day', 14, 'change_blackoutday'),
(55, 'Can delete blackout day', 14, 'delete_blackoutday'),
(56, 'Can view blackout day', 14, 'view_blackoutday'),
(57, 'Can add cancellation policy', 15, 'add_cancellationpolicy'),
(58, 'Can change cancellation policy', 15, 'change_cancellationpolicy'),
(59, 'Can delete cancellation policy', 15, 'delete_cancellationpolicy'),
(60, 'Can view cancellation policy', 15, 'view_cancellationpolicy'),
(61, 'Can add category', 16, 'add_category'),
(62, 'Can change category', 16, 'change_category'),
(63, 'Can delete category', 16, 'delete_category'),
(64, 'Can view category', 16, 'view_category'),
(65, 'Can add concierge list', 17, 'add_conciergelist'),
(66, 'Can change concierge list', 17, 'change_conciergelist'),
(67, 'Can delete concierge list', 17, 'delete_conciergelist'),
(68, 'Can view concierge list', 17, 'view_conciergelist'),
(69, 'Can add meals', 18, 'add_meals'),
(70, 'Can change meals', 18, 'change_meals'),
(71, 'Can delete meals', 18, 'delete_meals'),
(72, 'Can view meals', 18, 'view_meals'),
(73, 'Can add property', 19, 'add_property'),
(74, 'Can change property', 19, 'change_property'),
(75, 'Can delete property', 19, 'delete_property'),
(76, 'Can view property', 19, 'view_property'),
(77, 'Can add room list', 20, 'add_roomlist'),
(78, 'Can change room list', 20, 'change_roomlist'),
(79, 'Can delete room list', 20, 'delete_roomlist'),
(80, 'Can view room list', 20, 'view_roomlist'),
(81, 'Can add signup', 21, 'add_signup'),
(82, 'Can change signup', 21, 'change_signup'),
(83, 'Can delete signup', 21, 'delete_signup'),
(84, 'Can view signup', 21, 'view_signup'),
(85, 'Can add special day', 22, 'add_specialday'),
(86, 'Can change special day', 22, 'change_specialday'),
(87, 'Can delete special day', 22, 'delete_specialday'),
(88, 'Can view special day', 22, 'view_specialday'),
(89, 'Can add special rate', 23, 'add_specialrate'),
(90, 'Can change special rate', 23, 'change_specialrate'),
(91, 'Can delete special rate', 23, 'delete_specialrate'),
(92, 'Can view special rate', 23, 'view_specialrate'),
(93, 'Can add theme images', 24, 'add_themeimages'),
(94, 'Can change theme images', 24, 'change_themeimages'),
(95, 'Can delete theme images', 24, 'delete_themeimages'),
(96, 'Can view theme images', 24, 'view_themeimages'),
(97, 'Can add testimonial', 25, 'add_testimonial'),
(98, 'Can change testimonial', 25, 'change_testimonial'),
(99, 'Can delete testimonial', 25, 'delete_testimonial'),
(100, 'Can view testimonial', 25, 'view_testimonial'),
(101, 'Can add tariff', 26, 'add_tariff'),
(102, 'Can change tariff', 26, 'change_tariff'),
(103, 'Can delete tariff', 26, 'delete_tariff'),
(104, 'Can view tariff', 26, 'view_tariff'),
(105, 'Can add service', 27, 'add_service'),
(106, 'Can change service', 27, 'change_service'),
(107, 'Can delete service', 27, 'delete_service'),
(108, 'Can view service', 27, 'view_service'),
(109, 'Can add seo data', 28, 'add_seodata'),
(110, 'Can change seo data', 28, 'change_seodata'),
(111, 'Can delete seo data', 28, 'delete_seodata'),
(112, 'Can view seo data', 28, 'view_seodata'),
(113, 'Can add package', 29, 'add_package'),
(114, 'Can change package', 29, 'change_package'),
(115, 'Can delete package', 29, 'delete_package'),
(116, 'Can view package', 29, 'view_package'),
(117, 'Can add meals list', 30, 'add_mealslist'),
(118, 'Can change meals list', 30, 'change_mealslist'),
(119, 'Can delete meals list', 30, 'delete_mealslist'),
(120, 'Can view meals list', 30, 'view_mealslist'),
(121, 'Can add image', 31, 'add_image'),
(122, 'Can change image', 31, 'change_image'),
(123, 'Can delete image', 31, 'delete_image'),
(124, 'Can view image', 31, 'view_image'),
(125, 'Can add director profile', 32, 'add_directorprofile'),
(126, 'Can change director profile', 32, 'change_directorprofile'),
(127, 'Can delete director profile', 32, 'delete_directorprofile'),
(128, 'Can view director profile', 32, 'view_directorprofile'),
(129, 'Can add booking', 33, 'add_booking'),
(130, 'Can change booking', 33, 'change_booking'),
(131, 'Can delete booking', 33, 'delete_booking'),
(132, 'Can view booking', 33, 'view_booking'),
(133, 'Can add agency detail', 34, 'add_agencydetail'),
(134, 'Can change agency detail', 34, 'change_agencydetail'),
(135, 'Can delete agency detail', 34, 'delete_agencydetail'),
(136, 'Can view agency detail', 34, 'view_agencydetail'),
(137, 'Can add general testimonial', 35, 'add_generaltestimonial'),
(138, 'Can change general testimonial', 35, 'change_generaltestimonial'),
(139, 'Can delete general testimonial', 35, 'delete_generaltestimonial'),
(140, 'Can view general testimonial', 35, 'view_generaltestimonial'),
(141, 'Can add general image', 36, 'add_generalimage'),
(142, 'Can change general image', 36, 'change_generalimage'),
(143, 'Can delete general image', 36, 'delete_generalimage'),
(144, 'Can view general image', 36, 'view_generalimage'),
(145, 'Can add general service', 37, 'add_generalservice'),
(146, 'Can change general service', 37, 'change_generalservice'),
(147, 'Can delete general service', 37, 'delete_generalservice'),
(148, 'Can view general service', 37, 'view_generalservice'),
(149, 'Can add general about us', 38, 'add_generalaboutus'),
(150, 'Can change general about us', 38, 'change_generalaboutus'),
(151, 'Can delete general about us', 38, 'delete_generalaboutus'),
(152, 'Can view general about us', 38, 'view_generalaboutus'),
(153, 'Can add general director profile', 39, 'add_generaldirectorprofile'),
(154, 'Can change general director profile', 39, 'change_generaldirectorprofile'),
(155, 'Can delete general director profile', 39, 'delete_generaldirectorprofile'),
(156, 'Can view general director profile', 39, 'view_generaldirectorprofile'),
(157, 'Can add general seo data', 40, 'add_generalseodata'),
(158, 'Can change general seo data', 40, 'change_generalseodata'),
(159, 'Can delete general seo data', 40, 'delete_generalseodata'),
(160, 'Can view general seo data', 40, 'view_generalseodata'),
(161, 'Can add general company detail', 41, 'add_generalcompanydetail'),
(162, 'Can change general company detail', 41, 'change_generalcompanydetail'),
(163, 'Can delete general company detail', 41, 'delete_generalcompanydetail'),
(164, 'Can view general company detail', 41, 'view_generalcompanydetail'),
(165, 'Can add general product', 42, 'add_generalproduct'),
(166, 'Can change general product', 42, 'change_generalproduct'),
(167, 'Can delete general product', 42, 'delete_generalproduct'),
(168, 'Can view general product', 42, 'view_generalproduct'),
(169, 'Can add resort detail', 43, 'add_resortdetail'),
(170, 'Can change resort detail', 43, 'change_resortdetail'),
(171, 'Can delete resort detail', 43, 'delete_resortdetail'),
(172, 'Can view resort detail', 43, 'view_resortdetail'),
(173, 'Can add resort about us', 44, 'add_resortaboutus'),
(174, 'Can change resort about us', 44, 'change_resortaboutus'),
(175, 'Can delete resort about us', 44, 'delete_resortaboutus'),
(176, 'Can view resort about us', 44, 'view_resortaboutus'),
(177, 'Can add resort image', 45, 'add_resortimage'),
(178, 'Can change resort image', 45, 'change_resortimage'),
(179, 'Can delete resort image', 45, 'delete_resortimage'),
(180, 'Can view resort image', 45, 'view_resortimage'),
(181, 'Can add resort gallery', 46, 'add_resortgallery'),
(182, 'Can change resort gallery', 46, 'change_resortgallery'),
(183, 'Can delete resort gallery', 46, 'delete_resortgallery'),
(184, 'Can view resort gallery', 46, 'view_resortgallery'),
(185, 'Can add gallery', 47, 'add_gallery'),
(186, 'Can change gallery', 47, 'change_gallery'),
(187, 'Can delete gallery', 47, 'delete_gallery'),
(188, 'Can view gallery', 47, 'view_gallery'),
(189, 'Can add new gallery', 48, 'add_newgallery'),
(190, 'Can change new gallery', 48, 'change_newgallery'),
(191, 'Can delete new gallery', 48, 'delete_newgallery'),
(192, 'Can view new gallery', 48, 'view_newgallery'),
(193, 'Can add resort testimonial', 49, 'add_resorttestimonial'),
(194, 'Can change resort testimonial', 49, 'change_resorttestimonial'),
(195, 'Can delete resort testimonial', 49, 'delete_resorttestimonial'),
(196, 'Can view resort testimonial', 49, 'view_resorttestimonial'),
(197, 'Can add plan', 50, 'add_plan'),
(198, 'Can change plan', 50, 'change_plan'),
(199, 'Can delete plan', 50, 'delete_plan'),
(200, 'Can view plan', 50, 'view_plan'),
(201, 'Can add order_ data', 51, 'add_order_data'),
(202, 'Can change order_ data', 51, 'change_order_data'),
(203, 'Can delete order_ data', 51, 'delete_order_data'),
(204, 'Can view order_ data', 51, 'view_order_data');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(7, 'adminapp', 'aboutus'),
(8, 'adminapp', 'addactivities'),
(9, 'adminapp', 'addamenities'),
(10, 'adminapp', 'addbedtype'),
(11, 'adminapp', 'addfacility'),
(12, 'adminapp', 'addfloor'),
(13, 'adminapp', 'addviews'),
(34, 'adminapp', 'agencydetail'),
(14, 'adminapp', 'blackoutday'),
(33, 'adminapp', 'booking'),
(15, 'adminapp', 'cancellationpolicy'),
(16, 'adminapp', 'category'),
(17, 'adminapp', 'conciergelist'),
(32, 'adminapp', 'directorprofile'),
(47, 'adminapp', 'gallery'),
(38, 'adminapp', 'generalaboutus'),
(41, 'adminapp', 'generalcompanydetail'),
(39, 'adminapp', 'generaldirectorprofile'),
(36, 'adminapp', 'generalimage'),
(42, 'adminapp', 'generalproduct'),
(40, 'adminapp', 'generalseodata'),
(37, 'adminapp', 'generalservice'),
(35, 'adminapp', 'generaltestimonial'),
(31, 'adminapp', 'image'),
(18, 'adminapp', 'meals'),
(30, 'adminapp', 'mealslist'),
(48, 'adminapp', 'newgallery'),
(51, 'adminapp', 'order_data'),
(29, 'adminapp', 'package'),
(50, 'adminapp', 'plan'),
(19, 'adminapp', 'property'),
(44, 'adminapp', 'resortaboutus'),
(43, 'adminapp', 'resortdetail'),
(46, 'adminapp', 'resortgallery'),
(45, 'adminapp', 'resortimage'),
(49, 'adminapp', 'resorttestimonial'),
(20, 'adminapp', 'roomlist'),
(28, 'adminapp', 'seodata'),
(27, 'adminapp', 'service'),
(21, 'adminapp', 'signup'),
(22, 'adminapp', 'specialday'),
(23, 'adminapp', 'specialrate'),
(26, 'adminapp', 'tariff'),
(25, 'adminapp', 'testimonial'),
(24, 'adminapp', 'themeimages'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-05-30 10:26:07.948384'),
(2, 'auth', '0001_initial', '2023-05-30 10:26:14.761920'),
(3, 'admin', '0001_initial', '2023-05-30 10:26:16.091212'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-05-30 10:26:16.109485'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-05-30 10:26:16.369497'),
(6, 'adminapp', '0001_initial', '2023-05-30 10:26:37.470869'),
(7, 'contenttypes', '0002_remove_content_type_name', '2023-05-30 10:26:37.605565'),
(8, 'auth', '0002_alter_permission_name_max_length', '2023-05-30 10:26:37.668135'),
(9, 'auth', '0003_alter_user_email_max_length', '2023-05-30 10:26:37.695799'),
(10, 'auth', '0004_alter_user_username_opts', '2023-05-30 10:26:37.746971'),
(11, 'auth', '0005_alter_user_last_login_null', '2023-05-30 10:26:37.798777'),
(12, 'auth', '0006_require_contenttypes_0002', '2023-05-30 10:26:37.805284'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2023-05-30 10:26:37.822731'),
(14, 'auth', '0008_alter_user_username_max_length', '2023-05-30 10:26:37.852650'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2023-05-30 10:26:37.879287'),
(16, 'auth', '0010_alter_group_name_max_length', '2023-05-30 10:26:37.903465'),
(17, 'auth', '0011_update_proxy_permissions', '2023-05-30 10:26:37.945875'),
(18, 'auth', '0012_alter_user_first_name_max_length', '2023-05-30 10:26:37.968057'),
(19, 'sessions', '0001_initial', '2023-05-30 10:26:38.015589'),
(20, 'adminapp', '0002_generaltestimonial_generalservice_generalseodata_and_more', '2023-05-31 11:23:35.289486'),
(21, 'adminapp', '0003_remove_aboutus_subdescription_remove_aboutus_subhead_and_more', '2023-05-31 11:39:00.322882'),
(22, 'adminapp', '0004_alter_generalimage_related_model', '2023-06-12 06:16:46.255082'),
(23, 'adminapp', '0005_generalcompanydetail', '2023-06-12 08:54:12.770379'),
(24, 'adminapp', '0006_rename_agencyname_generalcompanydetail_companyname', '2023-06-12 09:05:10.995454'),
(25, 'adminapp', '0007_generalimage_subdescription_generalimage_subhead_and_more', '2023-06-15 13:24:33.088511'),
(26, 'adminapp', '0008_remove_generalaboutus_subdescription_and_more', '2023-06-16 04:48:11.979460'),
(27, 'adminapp', '0009_generalproduct', '2023-06-16 13:46:37.061275'),
(28, 'adminapp', '0010_rename_productdescription_generalproduct_description_and_more', '2023-06-17 06:43:19.897050'),
(29, 'adminapp', '0011_resortdetail', '2023-06-19 11:08:32.389894'),
(30, 'adminapp', '0012_resortaboutus_resortimage', '2023-06-21 04:54:09.908218'),
(31, 'adminapp', '0013_resortaboutus_aboutimage', '2023-06-21 06:31:10.153763'),
(34, 'adminapp', '0014_newgallery', '2023-06-21 09:52:33.080728'),
(35, 'adminapp', '0015_remove_newgallery_category_remove_newgallery_signup_and_more', '2023-06-21 09:58:56.039870'),
(36, 'adminapp', '0016_newgallery_category_newgallery_signup_and_more', '2023-06-21 10:01:29.489284'),
(37, 'adminapp', '0017_resorttestimonial', '2023-06-21 11:32:37.565979'),
(38, 'adminapp', '0018_addviews_category_addviews_signup_and_more', '2023-06-22 04:42:05.531038'),
(39, 'adminapp', '0019_addactivities_category_addactivities_signup_and_more', '2023-06-22 06:06:45.785251'),
(40, 'adminapp', '0020_addactivities_activityicon_and_more', '2023-06-22 06:32:48.676444'),
(41, 'adminapp', '0021_addbedtype_category_addbedtype_signup_and_more', '2023-06-22 07:11:16.065972'),
(42, 'adminapp', '0022_addamenities_category_addamenities_signup_and_more', '2023-06-22 07:27:35.984323'),
(43, 'adminapp', '0023_roomlist_roomdescription', '2023-06-23 05:10:14.480241'),
(44, 'adminapp', '0024_alter_addfacility_facility_image', '2023-06-23 10:04:47.204940'),
(45, 'adminapp', '0025_alter_signup_category', '2023-06-27 08:33:20.676347'),
(46, 'adminapp', '0026_alter_signup_category', '2023-06-27 08:42:55.483669'),
(47, 'adminapp', '0027_remove_themeimages_theme_rate_plan', '2023-06-30 11:32:19.416963'),
(48, 'adminapp', '0028_agencydetail_notificationemail', '2023-08-09 09:21:21.192453'),
(49, 'adminapp', '0029_remove_aboutus_yahoo', '2023-08-09 09:21:21.272720'),
(50, 'adminapp', '0030_order_data', '2023-08-09 09:21:21.802343'),
(51, 'adminapp', '0031_auto_20230801_1006', '2023-08-09 09:21:22.132342'),
(52, 'adminapp', '0032_auto_20230802_0729', '2023-08-09 09:21:22.511204'),
(53, 'adminapp', '0033_order_data_payment_id', '2023-08-09 09:21:22.601706'),
(54, 'adminapp', '0034_order_data_payment_status', '2023-08-09 09:21:22.681260'),
(55, 'adminapp', '0035_rename_image_aboutus_bannerimage', '2023-08-09 09:21:22.758353'),
(56, 'adminapp', '0036_themeimages_index_image', '2023-08-22 08:36:41.517196'),
(57, 'adminapp', '0037_alter_themeimages_index_image', '2023-08-22 08:36:41.566455');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('04fk3rowcqdny4vbqeyxzqccskrze1p3', 'eyJjaWQiOjIsInVpZCI6OX0:1qFTcV:XTlbX8B5Q3DJA47tqlDg_Qdno0gE-jm8E8FEifdLQ68', '2023-07-01 06:58:07.987786'),
('06jp9kx0nr8uxggalxwlnbtoq6wp0u6z', 'eyJjaWQiOjEsInVpZCI6MywidGlkIjoxfQ:1qGutA:ywUulo0A6pQJVeuRCLMN-kuOj1uZFj8NOup_i2gpjis', '2023-07-05 06:17:16.712050'),
('0yrq80ik20psly97wcpffsnd7zunpnpo', 'eyJjaWQiOjEsInVpZCI6MSwidGlkIjoxfQ:1qI1bI:GlwnDSPz54GqNMS2DgLvxuat8stg6cDEHF937WeCDhs', '2023-07-08 07:39:24.250593'),
('1dvxefwrzum4sfaybj3o5yurw708lqyp', 'eyJjaWQiOjEsInVpZCI6MSwidGlkIjoxfQ:1q8xtA:1UUVVF3ajmKir4rS-sg_ooqO7GroBgZRes2fQ3xCebY', '2023-06-13 07:52:24.067569'),
('1g7fnndwk2wt1lolp1799sclbmuhy88h', 'eyJ0aWQiOjksInVpZCI6OSwiY2lkIjoyfQ:1qHhQz:y7DwT5Mycl34ucGl9XX9YNHwfxUFRoPJD7qSxVmrUhw', '2023-07-07 10:07:25.173829'),
('2e2ylwparru37fdhpyynz62hbn8jvfhs', 'eyJ0aWQiOjEsInVpZCI6MSwiY2lkIjoxfQ:1qLI2Q:DUXN7qfTzwJdt00MGZ3NVTy4p2E0JmXe2sIGFv2vN1Y', '2023-07-17 07:48:54.500789'),
('3nwlp0jzo2hyf7pyu7wx0x8k3ptctzqf', 'eyJjaWQiOjEsInVpZCI6MSwidGlkIjoxfQ:1q8b6I:fYmXCY40Ca4NYVm53-kQ9AnWiCcrj66RsB8h9KF03NE', '2023-06-12 07:32:26.835956'),
('3yx91cwgg2ouuasxn0ylweysvum7n85u', 'eyJjaWQiOjIsInVpZCI6OSwidGlkIjo4fQ:1qCIZa:gD_dyCoNbguOhbPR4wcsHbi5Dyun7Z-SE8gnD3cSmUk', '2023-06-22 12:33:58.326748'),
('4eeh59t0vrb75ay1gzh998z90k7ez0ce', 'eyJ0aWQiOjEyLCJ1aWQiOjksImNpZCI6Mn0:1qETGu:VFUxSOQO2Wi1Xxhj4UI_4x6-misns5l_PBceGjLARbs', '2023-06-28 12:23:40.040340'),
('4je94wh6tl7xpv264hxcka85842j0xxb', 'eyJjaWQiOjIsInVpZCI6OSwidGlkIjo5fQ:1qBXQD:Rlzt60wINfxD_MaBvHG13ejqYyxKqN-61H0VAYTcKl8', '2023-06-20 10:13:09.413156'),
('4n5u0pkck1m1wyjkigahc76ol83e0x2v', 'eyJjaWQiOjIsInVpZCI6OSwidGlkIjo5fQ:1qBZ7V:9iUa9CE5JFu-e90Lc1yP344bnrPLdhlxRCV2bdhwW8w', '2023-06-20 12:01:57.389841'),
('59uopz52p1vyu5bcc8920i64jxtxf6p3', 'eyJjaWQiOjIsInVpZCI6MTAsInRpZCI6MTF9:1qGI6l:9PlxhcMNZq1xYWLEJtIclDOIELEs05_pPgfYu1XfTCw', '2023-07-03 12:52:43.067343'),
('5k2nd9pqn9jme0qpqube1pfs8dc3wgcm', 'eyJjaWQiOjIsInVpZCI6MTB9:1qGXQ7:TFKc5sKgW-YBM-Jy_UVFJUhjD_BUhLaduXJQThohgGw', '2023-07-04 05:13:43.851381'),
('69bnwoum50nepl8iq48v3gn81etqgzh7', 'eyJjaWQiOjQsInVpZCI6OCwidGlkIjo4fQ:1q9jyJ:_Ksrcp3bMg-cwCBZwIeRRzT3AB0O2O1P0Cviqqk7zDo', '2023-06-15 11:12:55.626544'),
('6w65fo12ele3gegbih9vkk4e9ecrsxpw', 'eyJjaWQiOjEsInVpZCI6MSwidGlkIjoxfQ:1qMQQR:v0yu2rHEKpp4rUFjx1zluoCIZkVy5R-JgIqULge7S6E', '2023-07-20 10:58:23.929800'),
('7gm4qwkcbx49fh1ugp0bb29ehwvt5dbz', 'eyJjaWQiOjIsInVpZCI6OSwidGlkIjo5fQ:1qBSkA:6UhKJzU4xPea-lhTkYgVPq2RWIthQO-pibQluxRcA7s', '2023-06-20 05:13:26.859132'),
('7je0c6e20wyx4un2uythxswciszlk2f2', 'eyJjaWQiOjEsInVpZCI6MX0:1qYMfm:kJv8fUKAaRiWDYtI1YLElkDHokbh3_eWAIMBRML8jYA', '2023-08-22 09:23:34.130793'),
('7rtlf6aejr5zsiu1f7eh469b5y24afpj', 'eyJjaWQiOjEsInVpZCI6MX0:1qVVNe:b0dfSOZlZQLYj9OhHySYTbwUBJLAfiOxUa31l0kDM00', '2023-08-14 12:05:02.546018'),
('7w149g529wz69lt3c5f1j3va4mq3egmo', 'eyJjaWQiOjIsInVpZCI6OX0:1qCzNF:qQOYQBe3QsD_GB3c-vE2ZphLSl8L-cyonwScvodIn7A', '2023-06-24 10:16:05.629507'),
('81lzlxdln5dprccpajzahcr6tx0pum02', '.eJw1i9EKwjAMRX9F8jyEwlDsk38ioYuzYpuRJo4h_rsRuvtyuCe5H0h5ghgGsE7tZF2c5zCevCRUmlk2iOMAFQtBhErrwRoJ-JmrYlKXYY9bKphf7rCI6QMv4Wn1Ov_lMXHxhwVbW1mmvtsntzdJvmdyr2L0_QF2ojJj:1q4Jxf:ksnEbBCtIXa9YnSlXE67HsQjCwAqNHnL2FJEeLxO4uI', '2023-05-31 12:25:51.098250'),
('86d1yna5mgpwu2dl27gvuvjijjvb6t31', '.eJw1zcEKwjAMBuBXkZyHrFMP68kn8OALjFDjrNhmpKlDxHc3G_pfEj7-kDeEeAHfNVCX6doGdF1cA6wT-MOua_emAZVGltfazZgIPJxo3pypsChYgbNiUOP-F0NKGB9GmKTqDXt3r_k4LrgNnKwwYSkzi30EZ_mfDE-SeI1krlLp8wUEojNs:1qFC78:4MfiL3zVXKSbH0PWsZSGn6jFrdktoz-o5TReGyJRunk', '2023-06-30 12:16:34.651909'),
('8nf8typmb61dcbk6pojuzfyioxerzzc5', 'eyJjaWQiOjEsInVpZCI6NywidGlkIjoxfQ:1q8vTi:HSRfr12Y_m1OMwATok6mE5up71z7NQrx8hturb00Vvg', '2023-06-13 05:17:58.220112'),
('8w8u3bata39b8z16tm9fihxkcmtm90r3', 'eyJ0aWQiOjEsImNpZCI6MX0:1qDlpy:hd0ozHsWuSjwdOmF0CCU9RxRVOfFvjLLsowQHgYOCVc', '2023-06-26 14:00:58.431223'),
('91rmi2sfkjau5oa11q4018gkeic0gvb0', 'eyJjaWQiOjEsInVpZCI6MSwidGlkIjoxfQ:1qM1XQ:TKWZBmKT-bPbBohauS6p2XJ7TR8pkEd4PUk8wlob9f4', '2023-07-19 08:23:56.020860'),
('ac497yufxg5om6fo5eb58pa0arr4aa42', 'eyJjaWQiOjEsInVpZCI6MSwidGlkIjozfQ:1qWY7C:KB-TYenQCYaiG1e3Y-EeD4bGka-56ZRYhuDRrRNx_IY', '2023-08-17 09:12:22.058473'),
('bdoarj5ox2ww6zk0xs8h43u71zdvf7ri', 'e30:1qCzNT:ZFM_1c5hVYO8Qn2ajlVjXFGoadl59CpHMmo7cH52yY0', '2023-06-24 10:16:19.484304'),
('bpeqw2y1vfz6rwtkiqd8chd1mr8p93lf', 'eyJjaWQiOjEsInVpZCI6MSwidGlkIjoxfQ:1qKZ0m:SYBFjV5XrQ7bkqa78gHyUWe3BTbf22oWop2-ru0EUxs', '2023-07-15 07:44:12.204895'),
('buizzmknnvtiv3yn4a6yvw68aquz8h2s', 'eyJjaWQiOjEsInVpZCI6OCwidGlkIjoxfQ:1q9led:IFg8mhCnx4frxVRtImAkIS07VBb5VrIoYf73Qco8xQE', '2023-06-15 13:00:43.155514'),
('clr1uuthhe7jz7bogk5o4z4n9i4qrz87', '.eJxFjdEKwjAMRf8lz0NWwcH65J9IqNmWYduRphMR_90oFe_LhXNuyBMCX8G7DmprbZ11A3_q3bEfOgioNGd5fE3CSOABo1RdEMzmpBjU2NhikCLy7T_beaWyjG6t6Tx_1CHkaLMNS7lnsZ_gLL_Dy07CE5NxlUqvN4osNLs:1qI5vM:Lo1Qxt6qx9z_pU5kzBNJtfz3Ut7B1cyEkYf7RB31FvU', '2023-07-08 12:16:24.926172'),
('coigpn8yvsvgjsaehsu78w0r04fmv3q8', 'eyJ0aWQiOjksInVpZCI6OSwiY2lkIjoyfQ:1qHNTu:x29wEjgxlbDoTjVZibhP-gWwKV41D4GgmpzMi5uxIro', '2023-07-06 12:49:06.362576'),
('dh01wooe1henwo048pqvddc5x2m9jxnx', '.eJw1y7EOwjAMBNB_8VyhOhPJxFewIiuYNggnVeIUVYh_ryvBje_uPlB0gXD26NENEEl5KnWDgANkEoYA163NmVawtmSlqGb-F0MWSi8jEunPpHMfHY7OXabDT7GIbRZq7V3q3WZo-b9uK9f0SGyutfN3B-gpLE0:1qInHd:aYuxNkZ-PwIyAu807NTZg_VPMkyoPXWGQcgn04tGsCU', '2023-07-10 10:34:17.872720'),
('dilju8faevjx38bikls2nd6hlksw6t2y', 'eyJjaWQiOjIsInVpZCI6OSwidGlkIjo5fQ:1qBrr0:l-xjaPAKSMGlgQHWFWS12qdwS-mLcVfHekO2kqgYFZ0', '2023-06-21 08:02:10.543157'),
('dp3q6oax8vzofujr4rcf75sap93icclb', 'eyJjaWQiOjEsInVpZCI6MSwidGlkIjoxfQ:1qGefV:KadV8fxYca0N0KXjI6CYN1b1Dl6Rb8ZDAeE87-N1QsQ', '2023-07-04 12:58:05.176142'),
('dqnn68vh2tws0xaxqf2vl13txaij87hb', 'eyJjaWQiOjQsInVpZCI6OCwidGlkIjo4fQ:1qAAM1:9SpVabVjvuSNrrbVT__JVvSTcNCnIJNjiXqrGOvbo_E', '2023-06-16 15:23:09.851254'),
('e5ceb43dvi5pfd0tfhlem5f9mg5v1n7t', 'eyJjaWQiOjIsInVpZCI6OX0:1qODzO:6H5g_V24q2ZIqXsIoY8GuQtGvpbsp114HkLIck7bkwg', '2023-07-25 10:05:54.262076'),
('edt7ccgbuf9v4zzu9xsm6wzrssvm1g6g', 'eyJ0aWQiOjMsImNpZCI6MSwidWlkIjoxfQ:1qWWzZ:6BX9rYddiBQPOB9hCr1NizHYZpkRbHTpAsP1nj7_N2I', '2023-08-17 08:00:25.806813'),
('ek3qqfg609cl8kjy8kbqhnq3tcg0bz9n', 'eyJ0aWQiOjQsImNpZCI6MSwidWlkIjoxfQ:1qWvoU:-Pzu7H6obE7uM4yoy2yYILKLd_Wg9bgymrkXuGcywIw', '2023-08-18 10:30:38.553096'),
('f3ndb2x5clgahe9if58wmhp31v7j5uen', 'eyJ0aWQiOjQsImNpZCI6MSwidWlkIjoxfQ:1qXySY:t_xpKKs9v7l7ofT9imGlRj53_URLXj0DQHKL7CGiBUM', '2023-08-21 07:32:18.306232'),
('fjhdckbhg9p9ocjn84jei6wrghtljmqt', 'eyJjaWQiOjIsInVpZCI6OSwidGlkIjo5fQ:1qCaiF:u9J790d-yBVOp7jez16raVUr9N8U7d_sCzNmfRTccQE', '2023-06-23 07:56:07.302319'),
('fw2a9hvvle5ffdf0z2rbm340a2zdmfws', 'eyJjaWQiOjEsInVpZCI6MSwidGlkIjoxfQ:1qLiSh:65eFxaiKZJ4z8KNsoHe7J7jhz3sjKojhXUFqCCWY9is', '2023-07-18 12:01:47.363118'),
('g0gj4o8f072okbeq9gqid65wain3mofi', 'eyJjaWQiOjEsInVpZCI6MSwidGlkIjoxfQ:1qI2Y6:sSkjxiJrZDB7hGxkAiMbXoDK28dslFtBlOim8lrd4ag', '2023-07-08 08:40:10.967393'),
('hva1oqdpvun919k2ddnnetlutaqhcv04', 'eyJ0aWQiOjksImNpZCI6MiwidWlkIjo5fQ:1qEMTU:aK6J8XUSpPApKRlXBMokY_hAhcin97IvhMNSZhFdYyg', '2023-06-28 05:08:12.293837'),
('hzd5785r3266r3vonpg96gpazr5qi8sk', 'eyJ0aWQiOjEsImNpZCI6MSwidWlkIjoxfQ:1qIjad:9SHbXplC9dMRTIJCki9v-Dc53AT2e3soCy5ghkW4SKs', '2023-07-10 06:37:39.467560'),
('i29egm9bv4pgvjyqbzsxwc6kjp21qfq7', 'eyJjaWQiOjIsInVpZCI6OSwidGlkIjo5fQ:1qBwMY:dhhts3Y8ZWMrH5YmrB4nkYLR6fD2wmcW_6PMjVrP6II', '2023-06-21 12:51:02.744561'),
('iwgp4g6c3s8w7j0vl0it26lwbzxf010a', 'eyJjaWQiOjQsInVpZCI6OCwidGlkIjo4fQ:1qA6Ta:ph-ciaDAF9AP4PWIM8s6QaoXVtZYdKvh3xqVNe-SWtw', '2023-06-16 11:14:42.130575'),
('j6azwc6mmv05602md0zn6sh3co1dyj5t', 'eyJjaWQiOjEsInVpZCI6MSwidGlkIjoxfQ:1qM3zd:XpBuyt_MhdGC0F1-EmUoVnnW7erNVW7d6G3IoCxKP7g', '2023-07-19 11:01:13.082183'),
('k1q8vn2vrx7kyz1956x9trv0dxodl7uz', 'eyJ0aWQiOjksImNpZCI6MiwidWlkIjoyfQ:1qE4YR:FZ2_AWaYij0TylMQfwKm2hjkGV4H9gbiGNUSDz4xc84', '2023-06-27 10:00:07.339198'),
('k9nqg53gdvgdw2yslnb4gcy6rbt09ck0', 'eyJjaWQiOjQsInVpZCI6OCwidGlkIjo4fQ:1qI0IB:K22T1sXjak9hfKHO5FjuzckOUdlx6aefcJ-QZd3b6R0', '2023-07-08 06:15:35.882662'),
('kej4c7b5fm08dajhb64yicm91inf9ws0', '.eJw1jcEKwjAQRH9F9hyEFi0mJ_9ElnRtV0y2pBtFxH93I3UuA483zBsijxB6B7W1d6Bbiy4QhsNw6o8OIipNUl4_M2MiCIAj68y7ggImSFaMathvMUgJ-d7MVKrO6LtbzeepwX2UZMKC6_qUYofQWf6Ty4MKX5mMa6n0-QLaGjM4:1qBDUD:ib9Il9WkOt0lPZBwHnPA-UJQYNPFCFYhEoJlMjGELMI', '2023-06-19 12:55:57.923930'),
('mecyp4wwc31ff53ahb3ahvmlreq4kh9l', 'eyJjaWQiOjQsInVpZCI6NywidGlkIjoxfQ:1q8eU0:QNLO1QgJ37IzyV_o7_T4GHV3dQDe0Q6SYYoIUpSyclg', '2023-06-12 11:09:08.234130'),
('n3q62oogiihfwcj9pdmi9lecoi8vemt2', '.eJxFjssKAjEMRf_lrovQER_tyj-RUONYse3QSUdE_HdTUbybwLknJE-EeIK3Bq3PvUGRCX5Yu-2wMwgkPJb6-BiZEsODUm1yIWhbslAQZe4bhZwo3v6as9eWD2OHq1CSChPN871UvQar-a0cF67xHFm51MYG0h_avN57cjJM:1q9KYk:KSk7pqMnR22I_L-3ZmOti_Z4rplC_YYJtj8LhuKWg9g', '2023-06-14 08:04:50.611646'),
('n41wlvz0vepoqx1ry3bopv9pre3609rz', 'eyJjaWQiOjIsInVpZCI6OSwidGlkIjo5fQ:1qBXTW:UrQ359Eukqzt5KqbVVUbYpnRHbtOtJkEKurE70az7a0', '2023-06-20 10:16:34.673516'),
('obot8iekhqe5oe59lcdcib960wdstncm', 'eyJ0aWQiOjksInVpZCI6OSwiY2lkIjoyfQ:1qHev6:4VhkeqX649oti3rGd9TW9StNFip7sBg9Bbv37DthqLg', '2023-07-07 07:26:20.502729'),
('olos2fkpb1ihpsbefhrka37tgziyekn4', 'eyJjaWQiOjEsInVpZCI6MSwidGlkIjoxfQ:1qDfIB:holidssnywIOo1IpSoDmT33JaRjBzzHLUxPDjyJkTmg', '2023-06-26 07:01:39.316236'),
('p1qcvvtsv7o07pe0ztjd8q2kloaqqikx', 'eyJjaWQiOjIsInVpZCI6OSwidGlkIjo5fQ:1qDhw1:khnNe6WTVZhWx5tr33ABuCax8cyKyphtijb6YtlywbY', '2023-06-26 09:50:57.182439'),
('p8gtp8tm5x9kxqyxobolqb0sapapyk1r', 'eyJjaWQiOjIsInVpZCI6OSwidGlkIjo5fQ:1qE76s:x8OcTyyrdMnF7gh0mZ84g_peG_NkHoA_6baMsOFcJNc', '2023-06-27 12:43:50.990061'),
('pp46oq6wqpvjb805gautghudfkl5eb3q', 'eyJjaWQiOjIsInVpZCI6MiwidGlkIjoxMX0:1qCfQh:GiN_9JUDrCn3YNV62qsmeQelJuuToQAKbio7sou3g0w', '2023-06-23 12:58:19.250872'),
('qu9do1agrov4qaa5m2xhbcvzr97i9aic', 'eyJjaWQiOjEsInVpZCI6NH0:1q4bWi:-x8ri_8fYUY50yprbOuMHC3sExazOJ3Y8pR83uKeA9E', '2023-06-01 07:11:12.448462'),
('rfci4cfvi4dp715zka25c00zedtgm8lm', 'eyJjaWQiOjIsInVpZCI6OX0:1qOVvk:IkBAIOvYHAWR4mf7cQSw9UXkAq9QyJ0A4QxPIO6NaXc', '2023-07-26 05:15:20.968549'),
('rlxbft2h9mvtg5wj3j2pizxlyhn65i9y', 'eyJjaWQiOjQsInVpZCI6OCwidGlkIjo4fQ:1qATvi:7V1vecyebbQs5aLE9-j7KzdccIeGdorCQ1FYOtCXm8Q', '2023-06-17 12:17:18.403910'),
('rri94nr5tmnsff2dtw71b2a3k5mhr8v5', 'eyJjaWQiOjQsInVpZCI6OCwidGlkIjo4fQ:1q9mu6:2KAfNaYCkd1avWKnc8fPu_AnNiOMBAl1AOR2OYwCk64', '2023-06-15 14:20:46.791024'),
('rsdvr2u58dxbirj692oqy5ybzzjpyoqu', 'eyJjaWQiOjEsInVpZCI6MSwidGlkIjozfQ:1qWCS3:gT-TUxahg-psJJ14lqlBdqewPJSjMGCQL4IN3CZrvV4', '2023-08-16 10:04:27.497021'),
('tlltf7yarwa0exh8gfry1gje13iil74n', 'eyJjaWQiOjEsInVpZCI6MTN9:1qTfOC:NB7MBi22dTimQLlTBxCRKa2DLqheRTpLFeWxEUrQecg', '2023-08-09 10:22:00.514453'),
('u2v3qiiervo7yhiotcbsmrmul2cxxa49', 'eyJjaWQiOjEsInVpZCI6MSwidGlkIjoxfQ:1qI3v8:KWDnzPfC5xmw0DjJkOO01kT90DqRqXJE9I2ZzLhSEww', '2023-07-08 10:08:02.580502'),
('ubjp5knh1j6uhodysttc0mzwdkp98y5b', 'eyJjaWQiOjIsInVpZCI6OSwidGlkIjo5fQ:1qBpmO:8rJlXVsQeLsRAB0txCTZyTS70dUDULx5ckQfV_LIyPw', '2023-06-21 05:49:16.209664'),
('uev1x85oqhtlr69v6riiu541d6oolore', 'eyJjaWQiOjEsInVpZCI6MX0:1qOXYG:UKA_17wucAaNqI6i8hKsID4QvxtaB5xRmV1T8MQwI8g', '2023-07-26 06:59:12.169691'),
('uiam6zrxaorsebuvju0vetyl9sq05x34', 'eyJjaWQiOjEsInVpZCI6MSwidGlkIjoxfQ:1q3x0e:CFYq6w_0g6kXLnzNlH51IQ6zeLnaczoL7hLQJyHHIHs', '2023-05-30 11:55:24.087475'),
('v79vnxs2h25el5zdjebh4evcki0e17dg', '.eJw9jtEKwjAMRf8lz0VoZQP75J-MULOtsrYjTRUR_91UmPflkpMbbt4Q4g28NdC6Dwak-9lAkR386AZndQgotBR-_ZIZE4GHVokd6K5kwSBK3F-KKWHcFGLiJite7L3l69LhKZSkgR1rfRbWNrCq42R6EMc5knLhRvrQSommShsFOejnC4ngOY0:1q4HNX:bO0slOo9-3WuAq6WyZjZiUXuT1QPxiunbBS37NeFVJU', '2023-05-31 09:40:23.290333'),
('wic54xnmcs363q472b6a2n9glih0o5ev', 'eyJjaWQiOjIsInVpZCI6OSwidGlkIjo5fQ:1qBtk1:U00bFKMW15_ZbWvMjSNxjaOwje11t9xbmgQ6UKCs-Bk', '2023-06-21 10:03:05.202099'),
('x99fy3wgwnn5f7gjk1qibtj667estvbb', 'eyJjaWQiOjEsInVpZCI6MSwidGlkIjozfQ:1qWEwh:hl1huwL42nwVZujxW6uagwvWAttfiF8XZ79RkbCQJYI', '2023-08-16 12:44:15.195314'),
('xefmmz5o7y83z9zpd9u0wwyw3ahv6nfx', 'eyJjaWQiOjIsInVpZCI6MTEsInRpZCI6MTN9:1qGbsj:tbscB9vPU6UruOZ00ynE0jWnUTf98DO-NzkCNRY4NJg', '2023-07-04 09:59:33.465805'),
('xp12400hs0dendtn32xj1jv9r8idr92u', 'eyJ0aWQiOjEyLCJjaWQiOjIsInVpZCI6OX0:1qF5pk:K8accDZx4Bea5eh1UkW4WzyoLp-fmB00HwEj2RTUbRI', '2023-06-30 05:34:12.756171'),
('y58uwhtb6gkglsvmowcthn6n2nsiyq6m', 'eyJ0aWQiOjksImNpZCI6Mn0:1qHcqA:DoIRpXYgIkcIkxXw-pfFQrJHPKFnEe-QYvfrW8s5poQ', '2023-07-07 05:13:06.914244'),
('ykz50jv4mg74wg3sk5bknbc3t2vp37bs', '.eJxFi0EKgzAQRe8ya5EGXTRZ9SZliFOb0mRknChSenenoPQt33__A6wThP7q_KVrIKLSyLJBcA0UzAQBMEvVJ4KtXBSjmvMHJiljev8z71613MafbCNnCyac55VlsMYZ5-W-kKRHIvMqlb47hk0r-Q:1qH3xF:BHvEzNgEXpTrjcXvqComjzAIseD73_Xe13_JHNPi7kc', '2023-07-05 15:58:05.185990'),
('zans85xt5khs8t1dsmttu9izw3fxvswz', 'eyJjaWQiOjEsInVpZCI6MSwidGlkIjoxfQ:1qOcBd:4Q7KQVdTs8arRyu8WN1KTCJ1LCfq_6ey_WgSSfPMJjo', '2023-07-26 11:56:09.115515');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminapp_aboutus`
--
ALTER TABLE `adminapp_aboutus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_aboutus_Category_id_1ea12ad2_fk_adminapp_category_id` (`Category_id`),
  ADD KEY `adminapp_aboutus_Signup_id_a887a554_fk_adminapp_signup_id` (`Signup_id`),
  ADD KEY `adminapp_aboutus_ThemeImages_id_4ba24ff5_fk_adminapp_` (`ThemeImages_id`);

--
-- Indexes for table `adminapp_addactivities`
--
ALTER TABLE `adminapp_addactivities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_addactiviti_Category_id_1fb98333_fk_adminapp_` (`Category_id`),
  ADD KEY `adminapp_addactivities_Signup_id_d65c30c2_fk_adminapp_signup_id` (`Signup_id`),
  ADD KEY `adminapp_addactiviti_ThemeImages_id_86676bf6_fk_adminapp_` (`ThemeImages_id`);

--
-- Indexes for table `adminapp_addamenities`
--
ALTER TABLE `adminapp_addamenities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_addamenitie_Category_id_aa6b564b_fk_adminapp_` (`Category_id`),
  ADD KEY `adminapp_addamenities_Signup_id_aa5f1d8c_fk_adminapp_signup_id` (`Signup_id`),
  ADD KEY `adminapp_addamenitie_ThemeImages_id_7171a739_fk_adminapp_` (`ThemeImages_id`);

--
-- Indexes for table `adminapp_addbedtype`
--
ALTER TABLE `adminapp_addbedtype`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_addbedtype_Category_id_e0bd8258_fk_adminapp_category_id` (`Category_id`),
  ADD KEY `adminapp_addbedtype_Signup_id_be313d61_fk_adminapp_signup_id` (`Signup_id`),
  ADD KEY `adminapp_addbedtype_ThemeImages_id_14692ff5_fk_adminapp_` (`ThemeImages_id`);

--
-- Indexes for table `adminapp_addfacility`
--
ALTER TABLE `adminapp_addfacility`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_addfacility_Category_id_e562c86f_fk_adminapp_` (`Category_id`),
  ADD KEY `adminapp_addfacility_Signup_id_fe13ef1a_fk_adminapp_signup_id` (`Signup_id`),
  ADD KEY `adminapp_addfacility_ThemeImages_id_87d3ad84_fk_adminapp_` (`ThemeImages_id`);

--
-- Indexes for table `adminapp_addfloor`
--
ALTER TABLE `adminapp_addfloor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_addfloor_Category_id_b3b0d755_fk_adminapp_category_id` (`Category_id`),
  ADD KEY `adminapp_addfloor_Signup_id_fe42cfc4_fk_adminapp_signup_id` (`Signup_id`),
  ADD KEY `adminapp_addfloor_ThemeImages_id_07884215_fk_adminapp_` (`ThemeImages_id`);

--
-- Indexes for table `adminapp_addviews`
--
ALTER TABLE `adminapp_addviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_addviews_Category_id_c292316a_fk_adminapp_category_id` (`Category_id`),
  ADD KEY `adminapp_addviews_Signup_id_f50bf0b7_fk_adminapp_signup_id` (`Signup_id`),
  ADD KEY `adminapp_addviews_ThemeImages_id_4e2af941_fk_adminapp_` (`ThemeImages_id`);

--
-- Indexes for table `adminapp_agencydetail`
--
ALTER TABLE `adminapp_agencydetail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_agencydetai_Category_id_9602ed3b_fk_adminapp_` (`Category_id`),
  ADD KEY `adminapp_agencydetail_Signup_id_f3c30167_fk_adminapp_signup_id` (`Signup_id`),
  ADD KEY `adminapp_agencydetai_ThemeImages_id_30563cf0_fk_adminapp_` (`ThemeImages_id`);

--
-- Indexes for table `adminapp_blackoutday`
--
ALTER TABLE `adminapp_blackoutday`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_blackoutday_Category_id_163128c3_fk_adminapp_` (`Category_id`),
  ADD KEY `adminapp_blackoutday_Signup_id_4a9a551c_fk_adminapp_signup_id` (`Signup_id`),
  ADD KEY `adminapp_blackoutday_ThemeImages_id_73c9487a_fk_adminapp_` (`ThemeImages_id`);

--
-- Indexes for table `adminapp_booking`
--
ALTER TABLE `adminapp_booking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_booking_Property_id_207d7c6c_fk_adminapp_property_id` (`Property_id`),
  ADD KEY `adminapp_booking_RoomList_id_b38f7bdc_fk_adminapp_roomlist_id` (`RoomList_id`),
  ADD KEY `adminapp_booking_Category_id_279b7a8e_fk_adminapp_category_id` (`Category_id`),
  ADD KEY `adminapp_booking_Signup_id_de3d40c3_fk_adminapp_signup_id` (`Signup_id`),
  ADD KEY `adminapp_booking_ThemeImages_id_45b3f425_fk_adminapp_` (`ThemeImages_id`);

--
-- Indexes for table `adminapp_cancellationpolicy`
--
ALTER TABLE `adminapp_cancellationpolicy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_cancellatio_Category_id_d60cf33b_fk_adminapp_` (`Category_id`),
  ADD KEY `adminapp_cancellatio_Signup_id_0e391ec6_fk_adminapp_` (`Signup_id`),
  ADD KEY `adminapp_cancellatio_ThemeImages_id_532349fb_fk_adminapp_` (`ThemeImages_id`);

--
-- Indexes for table `adminapp_category`
--
ALTER TABLE `adminapp_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adminapp_conciergelist`
--
ALTER TABLE `adminapp_conciergelist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_conciergeli_Category_id_8ff89ecc_fk_adminapp_` (`Category_id`),
  ADD KEY `adminapp_conciergelist_Signup_id_ccff0437_fk_adminapp_signup_id` (`Signup_id`),
  ADD KEY `adminapp_conciergeli_ThemeImages_id_3b1a0410_fk_adminapp_` (`ThemeImages_id`);

--
-- Indexes for table `adminapp_directorprofile`
--
ALTER TABLE `adminapp_directorprofile`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_directorpro_Category_id_586cc7cc_fk_adminapp_` (`Category_id`),
  ADD KEY `adminapp_directorpro_Signup_id_23c394d6_fk_adminapp_` (`Signup_id`),
  ADD KEY `adminapp_directorpro_ThemeImages_id_d644638b_fk_adminapp_` (`ThemeImages_id`);

--
-- Indexes for table `adminapp_generalaboutus`
--
ALTER TABLE `adminapp_generalaboutus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_generalabou_Category_id_426d8203_fk_adminapp_` (`Category_id`),
  ADD KEY `adminapp_generalaboutus_Signup_id_c6175042_fk_adminapp_signup_id` (`Signup_id`),
  ADD KEY `adminapp_generalabou_ThemeImages_id_d49b0156_fk_adminapp_` (`ThemeImages_id`);

--
-- Indexes for table `adminapp_generalcompanydetail`
--
ALTER TABLE `adminapp_generalcompanydetail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_generalcomp_Category_id_055d013f_fk_adminapp_` (`Category_id`),
  ADD KEY `adminapp_generalcomp_Signup_id_4ebddc77_fk_adminapp_` (`Signup_id`),
  ADD KEY `adminapp_generalcomp_ThemeImages_id_f59a208d_fk_adminapp_` (`ThemeImages_id`);

--
-- Indexes for table `adminapp_generaldirectorprofile`
--
ALTER TABLE `adminapp_generaldirectorprofile`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_generaldire_Category_id_046c15cf_fk_adminapp_` (`Category_id`),
  ADD KEY `adminapp_generaldire_Signup_id_515df61f_fk_adminapp_` (`Signup_id`),
  ADD KEY `adminapp_generaldire_ThemeImages_id_9a116160_fk_adminapp_` (`ThemeImages_id`);

--
-- Indexes for table `adminapp_generalimage`
--
ALTER TABLE `adminapp_generalimage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_generalimag_related_model_id_dc39b97e_fk_adminapp_` (`related_model_id`);

--
-- Indexes for table `adminapp_generalproduct`
--
ALTER TABLE `adminapp_generalproduct`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_generalprod_Category_id_b876315c_fk_adminapp_` (`Category_id`),
  ADD KEY `adminapp_generalproduct_Signup_id_416f11e0_fk_adminapp_signup_id` (`Signup_id`),
  ADD KEY `adminapp_generalprod_ThemeImages_id_e064a507_fk_adminapp_` (`ThemeImages_id`);

--
-- Indexes for table `adminapp_generalseodata`
--
ALTER TABLE `adminapp_generalseodata`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_generalseod_Category_id_89671f02_fk_adminapp_` (`Category_id`),
  ADD KEY `adminapp_generalseodata_Signup_id_5c26671b_fk_adminapp_signup_id` (`Signup_id`),
  ADD KEY `adminapp_generalseod_ThemeImages_id_33abec5d_fk_adminapp_` (`ThemeImages_id`);

--
-- Indexes for table `adminapp_generalservice`
--
ALTER TABLE `adminapp_generalservice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_generalserv_Category_id_b3ab2bb4_fk_adminapp_` (`Category_id`),
  ADD KEY `adminapp_generalservice_Signup_id_aec3fa74_fk_adminapp_signup_id` (`Signup_id`),
  ADD KEY `adminapp_generalserv_ThemeImages_id_63d14080_fk_adminapp_` (`ThemeImages_id`);

--
-- Indexes for table `adminapp_generaltestimonial`
--
ALTER TABLE `adminapp_generaltestimonial`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_generaltest_Category_id_17093501_fk_adminapp_` (`Category_id`),
  ADD KEY `adminapp_generaltest_Signup_id_3805de03_fk_adminapp_` (`Signup_id`),
  ADD KEY `adminapp_generaltest_ThemeImages_id_682eec88_fk_adminapp_` (`ThemeImages_id`);

--
-- Indexes for table `adminapp_image`
--
ALTER TABLE `adminapp_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_image_related_model_id_13547c02_fk_adminapp_aboutus_id` (`related_model_id`);

--
-- Indexes for table `adminapp_meals`
--
ALTER TABLE `adminapp_meals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_meals_Category_id_493726cb_fk_adminapp_category_id` (`Category_id`),
  ADD KEY `adminapp_meals_Signup_id_9acd32fb_fk_adminapp_signup_id` (`Signup_id`),
  ADD KEY `adminapp_meals_ThemeImages_id_80a5f36f_fk_adminapp_` (`ThemeImages_id`);

--
-- Indexes for table `adminapp_mealslist`
--
ALTER TABLE `adminapp_mealslist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_mealslist_Category_id_46a43757_fk_adminapp_category_id` (`Category_id`),
  ADD KEY `adminapp_mealslist_Signup_id_74c2a643_fk_adminapp_signup_id` (`Signup_id`),
  ADD KEY `adminapp_mealslist_ThemeImages_id_ad01fc5f_fk_adminapp_` (`ThemeImages_id`);

--
-- Indexes for table `adminapp_mealslist_mealsitem`
--
ALTER TABLE `adminapp_mealslist_mealsitem`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `adminapp_mealslist_MealsItem_mealslist_id_meals_id_d84510fd_uniq` (`mealslist_id`,`meals_id`),
  ADD KEY `adminapp_mealslist_M_meals_id_a874f8ad_fk_adminapp_` (`meals_id`);

--
-- Indexes for table `adminapp_newgallery`
--
ALTER TABLE `adminapp_newgallery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_newgallery_Signup_id_d94d8c7a_fk_adminapp_signup_id` (`Signup_id`),
  ADD KEY `adminapp_newgallery_ThemeImages_id_084f740a_fk_adminapp_` (`ThemeImages_id`),
  ADD KEY `adminapp_newgallery_Category_id_0c86074c_fk_adminapp_category_id` (`Category_id`);

--
-- Indexes for table `adminapp_order_data`
--
ALTER TABLE `adminapp_order_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_order_data_Category_id_4a661826_fk_adminapp_category_id` (`Category_id`),
  ADD KEY `adminapp_order_data_Signup_id_a8273ffd_fk_adminapp_signup_id` (`Signup_id`),
  ADD KEY `adminapp_order_data_ThemeImages_id_2bff66a3_fk_adminapp_` (`ThemeImages_id`);

--
-- Indexes for table `adminapp_package`
--
ALTER TABLE `adminapp_package`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_package_Category_id_f9f01ddf_fk_adminapp_category_id` (`Category_id`),
  ADD KEY `adminapp_package_Signup_id_b35dc9c3_fk_adminapp_signup_id` (`Signup_id`),
  ADD KEY `adminapp_package_ThemeImages_id_7f5ff66d_fk_adminapp_` (`ThemeImages_id`);

--
-- Indexes for table `adminapp_plan`
--
ALTER TABLE `adminapp_plan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_plan_Category_id_bd5ee833_fk_adminapp_category_id` (`Category_id`),
  ADD KEY `adminapp_plan_ThemeImages_id_29b1a8c6_fk_adminapp_themeimages_id` (`ThemeImages_id`);

--
-- Indexes for table `adminapp_property`
--
ALTER TABLE `adminapp_property`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_property_Category_id_a6122960_fk_adminapp_category_id` (`Category_id`),
  ADD KEY `adminapp_property_Signup_id_38e4db58_fk_adminapp_signup_id` (`Signup_id`),
  ADD KEY `adminapp_property_ThemeImages_id_9246a0a0_fk_adminapp_` (`ThemeImages_id`);

--
-- Indexes for table `adminapp_property_propertyactivities`
--
ALTER TABLE `adminapp_property_propertyactivities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `adminapp_property_Proper_property_id_addactivitie_92e5ee9a_uniq` (`property_id`,`addactivities_id`),
  ADD KEY `adminapp_property_Pr_addactivities_id_8db2e7df_fk_adminapp_` (`addactivities_id`);

--
-- Indexes for table `adminapp_property_propertyamenities`
--
ALTER TABLE `adminapp_property_propertyamenities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `adminapp_property_Proper_property_id_addamenities_356dc079_uniq` (`property_id`,`addamenities_id`),
  ADD KEY `adminapp_property_Pr_addamenities_id_8aeea2fd_fk_adminapp_` (`addamenities_id`);

--
-- Indexes for table `adminapp_property_propertyfacilities`
--
ALTER TABLE `adminapp_property_propertyfacilities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `adminapp_property_Proper_property_id_addfacility__d04159ea_uniq` (`property_id`,`addfacility_id`),
  ADD KEY `adminapp_property_Pr_addfacility_id_049cb98c_fk_adminapp_` (`addfacility_id`);

--
-- Indexes for table `adminapp_resortaboutus`
--
ALTER TABLE `adminapp_resortaboutus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_resortabout_Category_id_84aea510_fk_adminapp_` (`Category_id`),
  ADD KEY `adminapp_resortaboutus_Signup_id_fda43c1f_fk_adminapp_signup_id` (`Signup_id`),
  ADD KEY `adminapp_resortabout_ThemeImages_id_096b42a8_fk_adminapp_` (`ThemeImages_id`);

--
-- Indexes for table `adminapp_resortdetail`
--
ALTER TABLE `adminapp_resortdetail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_resortdetai_Category_id_44da38f1_fk_adminapp_` (`Category_id`),
  ADD KEY `adminapp_resortdetail_Signup_id_5e579393_fk_adminapp_signup_id` (`Signup_id`),
  ADD KEY `adminapp_resortdetai_ThemeImages_id_eb8ff048_fk_adminapp_` (`ThemeImages_id`);

--
-- Indexes for table `adminapp_resortimage`
--
ALTER TABLE `adminapp_resortimage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_resortimage_related_model_id_120964c4_fk_adminapp_` (`related_model_id`);

--
-- Indexes for table `adminapp_resorttestimonial`
--
ALTER TABLE `adminapp_resorttestimonial`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_resorttesti_Category_id_23bb0e0c_fk_adminapp_` (`Category_id`),
  ADD KEY `adminapp_resorttesti_Signup_id_c64af54a_fk_adminapp_` (`Signup_id`),
  ADD KEY `adminapp_resorttesti_ThemeImages_id_ab82c5af_fk_adminapp_` (`ThemeImages_id`);

--
-- Indexes for table `adminapp_roomlist`
--
ALTER TABLE `adminapp_roomlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_roomlist_Property_id_46adf140_fk_adminapp_property_id` (`Property_id`),
  ADD KEY `adminapp_roomlist_RoomBedtype_id_0ca8135a_fk_adminapp_` (`RoomBedtype_id`),
  ADD KEY `adminapp_roomlist_Category_id_1b3b7efc_fk_adminapp_category_id` (`Category_id`),
  ADD KEY `adminapp_roomlist_Signup_id_5ff8c703_fk_adminapp_signup_id` (`Signup_id`),
  ADD KEY `adminapp_roomlist_ThemeImages_id_cb8d5cf5_fk_adminapp_` (`ThemeImages_id`);

--
-- Indexes for table `adminapp_roomlist_roomfacilities`
--
ALTER TABLE `adminapp_roomlist_roomfacilities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `adminapp_roomlist_RoomFa_roomlist_id_addfacility__7b2cf37f_uniq` (`roomlist_id`,`addfacility_id`),
  ADD KEY `adminapp_roomlist_Ro_addfacility_id_520c1631_fk_adminapp_` (`addfacility_id`);

--
-- Indexes for table `adminapp_seodata`
--
ALTER TABLE `adminapp_seodata`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_seodata_Category_id_a404eba5_fk_adminapp_category_id` (`Category_id`),
  ADD KEY `adminapp_seodata_Signup_id_4057feb6_fk_adminapp_signup_id` (`Signup_id`),
  ADD KEY `adminapp_seodata_ThemeImages_id_740c251e_fk_adminapp_` (`ThemeImages_id`);

--
-- Indexes for table `adminapp_service`
--
ALTER TABLE `adminapp_service`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_service_Category_id_6b5617a5_fk_adminapp_category_id` (`Category_id`),
  ADD KEY `adminapp_service_Signup_id_05946e8b_fk_adminapp_signup_id` (`Signup_id`),
  ADD KEY `adminapp_service_ThemeImages_id_0a665885_fk_adminapp_` (`ThemeImages_id`);

--
-- Indexes for table `adminapp_signup`
--
ALTER TABLE `adminapp_signup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adminapp_specialday`
--
ALTER TABLE `adminapp_specialday`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_specialday_Category_id_0086e116_fk_adminapp_category_id` (`Category_id`),
  ADD KEY `adminapp_specialday_Signup_id_b814d2b9_fk_adminapp_signup_id` (`Signup_id`),
  ADD KEY `adminapp_specialday_ThemeImages_id_4cf5d136_fk_adminapp_` (`ThemeImages_id`);

--
-- Indexes for table `adminapp_specialrate`
--
ALTER TABLE `adminapp_specialrate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_specialrate_Category_id_5a2aaf48_fk_adminapp_` (`Category_id`),
  ADD KEY `adminapp_specialrate_Signup_id_fe84dc05_fk_adminapp_signup_id` (`Signup_id`),
  ADD KEY `adminapp_specialrate_ThemeImages_id_bb603169_fk_adminapp_` (`ThemeImages_id`);

--
-- Indexes for table `adminapp_tariff`
--
ALTER TABLE `adminapp_tariff`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_tariff_RoomList_id_872af6d2_fk_adminapp_roomlist_id` (`RoomList_id`),
  ADD KEY `adminapp_tariff_Category_id_6bc32450_fk_adminapp_category_id` (`Category_id`),
  ADD KEY `adminapp_tariff_Signup_id_a7328655_fk_adminapp_signup_id` (`Signup_id`),
  ADD KEY `adminapp_tariff_ThemeImages_id_53c8e75b_fk_adminapp_` (`ThemeImages_id`);

--
-- Indexes for table `adminapp_testimonial`
--
ALTER TABLE `adminapp_testimonial`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_testimonial_Category_id_66db8d3f_fk_adminapp_` (`Category_id`),
  ADD KEY `adminapp_testimonial_Signup_id_0054d63a_fk_adminapp_signup_id` (`Signup_id`),
  ADD KEY `adminapp_testimonial_ThemeImages_id_b1da691f_fk_adminapp_` (`ThemeImages_id`);

--
-- Indexes for table `adminapp_themeimages`
--
ALTER TABLE `adminapp_themeimages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_themeimages_Category_id_47204d21_fk_adminapp_` (`Category_id`);

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
-- AUTO_INCREMENT for table `adminapp_aboutus`
--
ALTER TABLE `adminapp_aboutus`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `adminapp_addactivities`
--
ALTER TABLE `adminapp_addactivities`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `adminapp_addamenities`
--
ALTER TABLE `adminapp_addamenities`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `adminapp_addbedtype`
--
ALTER TABLE `adminapp_addbedtype`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `adminapp_addfacility`
--
ALTER TABLE `adminapp_addfacility`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `adminapp_addfloor`
--
ALTER TABLE `adminapp_addfloor`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `adminapp_addviews`
--
ALTER TABLE `adminapp_addviews`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `adminapp_agencydetail`
--
ALTER TABLE `adminapp_agencydetail`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `adminapp_blackoutday`
--
ALTER TABLE `adminapp_blackoutday`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `adminapp_booking`
--
ALTER TABLE `adminapp_booking`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `adminapp_cancellationpolicy`
--
ALTER TABLE `adminapp_cancellationpolicy`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `adminapp_category`
--
ALTER TABLE `adminapp_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `adminapp_conciergelist`
--
ALTER TABLE `adminapp_conciergelist`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `adminapp_directorprofile`
--
ALTER TABLE `adminapp_directorprofile`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `adminapp_generalaboutus`
--
ALTER TABLE `adminapp_generalaboutus`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `adminapp_generalcompanydetail`
--
ALTER TABLE `adminapp_generalcompanydetail`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `adminapp_generaldirectorprofile`
--
ALTER TABLE `adminapp_generaldirectorprofile`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `adminapp_generalimage`
--
ALTER TABLE `adminapp_generalimage`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `adminapp_generalproduct`
--
ALTER TABLE `adminapp_generalproduct`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `adminapp_generalseodata`
--
ALTER TABLE `adminapp_generalseodata`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `adminapp_generalservice`
--
ALTER TABLE `adminapp_generalservice`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `adminapp_generaltestimonial`
--
ALTER TABLE `adminapp_generaltestimonial`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `adminapp_image`
--
ALTER TABLE `adminapp_image`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `adminapp_meals`
--
ALTER TABLE `adminapp_meals`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `adminapp_mealslist`
--
ALTER TABLE `adminapp_mealslist`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `adminapp_mealslist_mealsitem`
--
ALTER TABLE `adminapp_mealslist_mealsitem`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `adminapp_newgallery`
--
ALTER TABLE `adminapp_newgallery`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `adminapp_order_data`
--
ALTER TABLE `adminapp_order_data`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `adminapp_package`
--
ALTER TABLE `adminapp_package`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `adminapp_plan`
--
ALTER TABLE `adminapp_plan`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `adminapp_property`
--
ALTER TABLE `adminapp_property`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `adminapp_property_propertyactivities`
--
ALTER TABLE `adminapp_property_propertyactivities`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `adminapp_property_propertyamenities`
--
ALTER TABLE `adminapp_property_propertyamenities`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `adminapp_property_propertyfacilities`
--
ALTER TABLE `adminapp_property_propertyfacilities`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `adminapp_resortaboutus`
--
ALTER TABLE `adminapp_resortaboutus`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `adminapp_resortdetail`
--
ALTER TABLE `adminapp_resortdetail`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `adminapp_resortimage`
--
ALTER TABLE `adminapp_resortimage`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `adminapp_resorttestimonial`
--
ALTER TABLE `adminapp_resorttestimonial`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `adminapp_roomlist`
--
ALTER TABLE `adminapp_roomlist`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `adminapp_roomlist_roomfacilities`
--
ALTER TABLE `adminapp_roomlist_roomfacilities`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `adminapp_seodata`
--
ALTER TABLE `adminapp_seodata`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `adminapp_service`
--
ALTER TABLE `adminapp_service`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `adminapp_signup`
--
ALTER TABLE `adminapp_signup`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `adminapp_specialday`
--
ALTER TABLE `adminapp_specialday`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `adminapp_specialrate`
--
ALTER TABLE `adminapp_specialrate`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `adminapp_tariff`
--
ALTER TABLE `adminapp_tariff`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `adminapp_testimonial`
--
ALTER TABLE `adminapp_testimonial`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `adminapp_themeimages`
--
ALTER TABLE `adminapp_themeimages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `adminapp_aboutus`
--
ALTER TABLE `adminapp_aboutus`
  ADD CONSTRAINT `adminapp_aboutus_Category_id_1ea12ad2_fk_adminapp_category_id` FOREIGN KEY (`Category_id`) REFERENCES `adminapp_category` (`id`),
  ADD CONSTRAINT `adminapp_aboutus_Signup_id_a887a554_fk_adminapp_signup_id` FOREIGN KEY (`Signup_id`) REFERENCES `adminapp_signup` (`id`),
  ADD CONSTRAINT `adminapp_aboutus_ThemeImages_id_4ba24ff5_fk_adminapp_` FOREIGN KEY (`ThemeImages_id`) REFERENCES `adminapp_themeimages` (`id`);

--
-- Constraints for table `adminapp_addactivities`
--
ALTER TABLE `adminapp_addactivities`
  ADD CONSTRAINT `adminapp_addactiviti_Category_id_1fb98333_fk_adminapp_` FOREIGN KEY (`Category_id`) REFERENCES `adminapp_category` (`id`),
  ADD CONSTRAINT `adminapp_addactiviti_ThemeImages_id_86676bf6_fk_adminapp_` FOREIGN KEY (`ThemeImages_id`) REFERENCES `adminapp_themeimages` (`id`),
  ADD CONSTRAINT `adminapp_addactivities_Signup_id_d65c30c2_fk_adminapp_signup_id` FOREIGN KEY (`Signup_id`) REFERENCES `adminapp_signup` (`id`);

--
-- Constraints for table `adminapp_addamenities`
--
ALTER TABLE `adminapp_addamenities`
  ADD CONSTRAINT `adminapp_addamenitie_Category_id_aa6b564b_fk_adminapp_` FOREIGN KEY (`Category_id`) REFERENCES `adminapp_category` (`id`),
  ADD CONSTRAINT `adminapp_addamenitie_ThemeImages_id_7171a739_fk_adminapp_` FOREIGN KEY (`ThemeImages_id`) REFERENCES `adminapp_themeimages` (`id`),
  ADD CONSTRAINT `adminapp_addamenities_Signup_id_aa5f1d8c_fk_adminapp_signup_id` FOREIGN KEY (`Signup_id`) REFERENCES `adminapp_signup` (`id`);

--
-- Constraints for table `adminapp_addbedtype`
--
ALTER TABLE `adminapp_addbedtype`
  ADD CONSTRAINT `adminapp_addbedtype_Category_id_e0bd8258_fk_adminapp_category_id` FOREIGN KEY (`Category_id`) REFERENCES `adminapp_category` (`id`),
  ADD CONSTRAINT `adminapp_addbedtype_Signup_id_be313d61_fk_adminapp_signup_id` FOREIGN KEY (`Signup_id`) REFERENCES `adminapp_signup` (`id`),
  ADD CONSTRAINT `adminapp_addbedtype_ThemeImages_id_14692ff5_fk_adminapp_` FOREIGN KEY (`ThemeImages_id`) REFERENCES `adminapp_themeimages` (`id`);

--
-- Constraints for table `adminapp_addfacility`
--
ALTER TABLE `adminapp_addfacility`
  ADD CONSTRAINT `adminapp_addfacility_Category_id_e562c86f_fk_adminapp_` FOREIGN KEY (`Category_id`) REFERENCES `adminapp_category` (`id`),
  ADD CONSTRAINT `adminapp_addfacility_Signup_id_fe13ef1a_fk_adminapp_signup_id` FOREIGN KEY (`Signup_id`) REFERENCES `adminapp_signup` (`id`),
  ADD CONSTRAINT `adminapp_addfacility_ThemeImages_id_87d3ad84_fk_adminapp_` FOREIGN KEY (`ThemeImages_id`) REFERENCES `adminapp_themeimages` (`id`);

--
-- Constraints for table `adminapp_addfloor`
--
ALTER TABLE `adminapp_addfloor`
  ADD CONSTRAINT `adminapp_addfloor_Category_id_b3b0d755_fk_adminapp_category_id` FOREIGN KEY (`Category_id`) REFERENCES `adminapp_category` (`id`),
  ADD CONSTRAINT `adminapp_addfloor_Signup_id_fe42cfc4_fk_adminapp_signup_id` FOREIGN KEY (`Signup_id`) REFERENCES `adminapp_signup` (`id`),
  ADD CONSTRAINT `adminapp_addfloor_ThemeImages_id_07884215_fk_adminapp_` FOREIGN KEY (`ThemeImages_id`) REFERENCES `adminapp_themeimages` (`id`);

--
-- Constraints for table `adminapp_addviews`
--
ALTER TABLE `adminapp_addviews`
  ADD CONSTRAINT `adminapp_addviews_Category_id_c292316a_fk_adminapp_category_id` FOREIGN KEY (`Category_id`) REFERENCES `adminapp_category` (`id`),
  ADD CONSTRAINT `adminapp_addviews_Signup_id_f50bf0b7_fk_adminapp_signup_id` FOREIGN KEY (`Signup_id`) REFERENCES `adminapp_signup` (`id`),
  ADD CONSTRAINT `adminapp_addviews_ThemeImages_id_4e2af941_fk_adminapp_` FOREIGN KEY (`ThemeImages_id`) REFERENCES `adminapp_themeimages` (`id`);

--
-- Constraints for table `adminapp_agencydetail`
--
ALTER TABLE `adminapp_agencydetail`
  ADD CONSTRAINT `adminapp_agencydetai_Category_id_9602ed3b_fk_adminapp_` FOREIGN KEY (`Category_id`) REFERENCES `adminapp_category` (`id`),
  ADD CONSTRAINT `adminapp_agencydetai_ThemeImages_id_30563cf0_fk_adminapp_` FOREIGN KEY (`ThemeImages_id`) REFERENCES `adminapp_themeimages` (`id`),
  ADD CONSTRAINT `adminapp_agencydetail_Signup_id_f3c30167_fk_adminapp_signup_id` FOREIGN KEY (`Signup_id`) REFERENCES `adminapp_signup` (`id`);

--
-- Constraints for table `adminapp_blackoutday`
--
ALTER TABLE `adminapp_blackoutday`
  ADD CONSTRAINT `adminapp_blackoutday_Category_id_163128c3_fk_adminapp_` FOREIGN KEY (`Category_id`) REFERENCES `adminapp_category` (`id`),
  ADD CONSTRAINT `adminapp_blackoutday_Signup_id_4a9a551c_fk_adminapp_signup_id` FOREIGN KEY (`Signup_id`) REFERENCES `adminapp_signup` (`id`),
  ADD CONSTRAINT `adminapp_blackoutday_ThemeImages_id_73c9487a_fk_adminapp_` FOREIGN KEY (`ThemeImages_id`) REFERENCES `adminapp_themeimages` (`id`);

--
-- Constraints for table `adminapp_booking`
--
ALTER TABLE `adminapp_booking`
  ADD CONSTRAINT `adminapp_booking_Category_id_279b7a8e_fk_adminapp_category_id` FOREIGN KEY (`Category_id`) REFERENCES `adminapp_category` (`id`),
  ADD CONSTRAINT `adminapp_booking_Property_id_207d7c6c_fk_adminapp_property_id` FOREIGN KEY (`Property_id`) REFERENCES `adminapp_property` (`id`),
  ADD CONSTRAINT `adminapp_booking_RoomList_id_b38f7bdc_fk_adminapp_roomlist_id` FOREIGN KEY (`RoomList_id`) REFERENCES `adminapp_roomlist` (`id`),
  ADD CONSTRAINT `adminapp_booking_Signup_id_de3d40c3_fk_adminapp_signup_id` FOREIGN KEY (`Signup_id`) REFERENCES `adminapp_signup` (`id`),
  ADD CONSTRAINT `adminapp_booking_ThemeImages_id_45b3f425_fk_adminapp_` FOREIGN KEY (`ThemeImages_id`) REFERENCES `adminapp_themeimages` (`id`);

--
-- Constraints for table `adminapp_cancellationpolicy`
--
ALTER TABLE `adminapp_cancellationpolicy`
  ADD CONSTRAINT `adminapp_cancellatio_Category_id_d60cf33b_fk_adminapp_` FOREIGN KEY (`Category_id`) REFERENCES `adminapp_category` (`id`),
  ADD CONSTRAINT `adminapp_cancellatio_Signup_id_0e391ec6_fk_adminapp_` FOREIGN KEY (`Signup_id`) REFERENCES `adminapp_signup` (`id`),
  ADD CONSTRAINT `adminapp_cancellatio_ThemeImages_id_532349fb_fk_adminapp_` FOREIGN KEY (`ThemeImages_id`) REFERENCES `adminapp_themeimages` (`id`);

--
-- Constraints for table `adminapp_conciergelist`
--
ALTER TABLE `adminapp_conciergelist`
  ADD CONSTRAINT `adminapp_conciergeli_Category_id_8ff89ecc_fk_adminapp_` FOREIGN KEY (`Category_id`) REFERENCES `adminapp_category` (`id`),
  ADD CONSTRAINT `adminapp_conciergeli_ThemeImages_id_3b1a0410_fk_adminapp_` FOREIGN KEY (`ThemeImages_id`) REFERENCES `adminapp_themeimages` (`id`),
  ADD CONSTRAINT `adminapp_conciergelist_Signup_id_ccff0437_fk_adminapp_signup_id` FOREIGN KEY (`Signup_id`) REFERENCES `adminapp_signup` (`id`);

--
-- Constraints for table `adminapp_directorprofile`
--
ALTER TABLE `adminapp_directorprofile`
  ADD CONSTRAINT `adminapp_directorpro_Category_id_586cc7cc_fk_adminapp_` FOREIGN KEY (`Category_id`) REFERENCES `adminapp_category` (`id`),
  ADD CONSTRAINT `adminapp_directorpro_Signup_id_23c394d6_fk_adminapp_` FOREIGN KEY (`Signup_id`) REFERENCES `adminapp_signup` (`id`),
  ADD CONSTRAINT `adminapp_directorpro_ThemeImages_id_d644638b_fk_adminapp_` FOREIGN KEY (`ThemeImages_id`) REFERENCES `adminapp_themeimages` (`id`);

--
-- Constraints for table `adminapp_generalaboutus`
--
ALTER TABLE `adminapp_generalaboutus`
  ADD CONSTRAINT `adminapp_generalabou_Category_id_426d8203_fk_adminapp_` FOREIGN KEY (`Category_id`) REFERENCES `adminapp_category` (`id`),
  ADD CONSTRAINT `adminapp_generalabou_ThemeImages_id_d49b0156_fk_adminapp_` FOREIGN KEY (`ThemeImages_id`) REFERENCES `adminapp_themeimages` (`id`),
  ADD CONSTRAINT `adminapp_generalaboutus_Signup_id_c6175042_fk_adminapp_signup_id` FOREIGN KEY (`Signup_id`) REFERENCES `adminapp_signup` (`id`);

--
-- Constraints for table `adminapp_generalcompanydetail`
--
ALTER TABLE `adminapp_generalcompanydetail`
  ADD CONSTRAINT `adminapp_generalcomp_Category_id_055d013f_fk_adminapp_` FOREIGN KEY (`Category_id`) REFERENCES `adminapp_category` (`id`),
  ADD CONSTRAINT `adminapp_generalcomp_Signup_id_4ebddc77_fk_adminapp_` FOREIGN KEY (`Signup_id`) REFERENCES `adminapp_signup` (`id`),
  ADD CONSTRAINT `adminapp_generalcomp_ThemeImages_id_f59a208d_fk_adminapp_` FOREIGN KEY (`ThemeImages_id`) REFERENCES `adminapp_themeimages` (`id`);

--
-- Constraints for table `adminapp_generaldirectorprofile`
--
ALTER TABLE `adminapp_generaldirectorprofile`
  ADD CONSTRAINT `adminapp_generaldire_Category_id_046c15cf_fk_adminapp_` FOREIGN KEY (`Category_id`) REFERENCES `adminapp_category` (`id`),
  ADD CONSTRAINT `adminapp_generaldire_Signup_id_515df61f_fk_adminapp_` FOREIGN KEY (`Signup_id`) REFERENCES `adminapp_signup` (`id`),
  ADD CONSTRAINT `adminapp_generaldire_ThemeImages_id_9a116160_fk_adminapp_` FOREIGN KEY (`ThemeImages_id`) REFERENCES `adminapp_themeimages` (`id`);

--
-- Constraints for table `adminapp_generalimage`
--
ALTER TABLE `adminapp_generalimage`
  ADD CONSTRAINT `adminapp_generalimag_related_model_id_dc39b97e_fk_adminapp_` FOREIGN KEY (`related_model_id`) REFERENCES `adminapp_generalaboutus` (`id`);

--
-- Constraints for table `adminapp_generalproduct`
--
ALTER TABLE `adminapp_generalproduct`
  ADD CONSTRAINT `adminapp_generalprod_Category_id_b876315c_fk_adminapp_` FOREIGN KEY (`Category_id`) REFERENCES `adminapp_category` (`id`),
  ADD CONSTRAINT `adminapp_generalprod_ThemeImages_id_e064a507_fk_adminapp_` FOREIGN KEY (`ThemeImages_id`) REFERENCES `adminapp_themeimages` (`id`),
  ADD CONSTRAINT `adminapp_generalproduct_Signup_id_416f11e0_fk_adminapp_signup_id` FOREIGN KEY (`Signup_id`) REFERENCES `adminapp_signup` (`id`);

--
-- Constraints for table `adminapp_generalseodata`
--
ALTER TABLE `adminapp_generalseodata`
  ADD CONSTRAINT `adminapp_generalseod_Category_id_89671f02_fk_adminapp_` FOREIGN KEY (`Category_id`) REFERENCES `adminapp_category` (`id`),
  ADD CONSTRAINT `adminapp_generalseod_ThemeImages_id_33abec5d_fk_adminapp_` FOREIGN KEY (`ThemeImages_id`) REFERENCES `adminapp_themeimages` (`id`),
  ADD CONSTRAINT `adminapp_generalseodata_Signup_id_5c26671b_fk_adminapp_signup_id` FOREIGN KEY (`Signup_id`) REFERENCES `adminapp_signup` (`id`);

--
-- Constraints for table `adminapp_generalservice`
--
ALTER TABLE `adminapp_generalservice`
  ADD CONSTRAINT `adminapp_generalserv_Category_id_b3ab2bb4_fk_adminapp_` FOREIGN KEY (`Category_id`) REFERENCES `adminapp_category` (`id`),
  ADD CONSTRAINT `adminapp_generalserv_ThemeImages_id_63d14080_fk_adminapp_` FOREIGN KEY (`ThemeImages_id`) REFERENCES `adminapp_themeimages` (`id`),
  ADD CONSTRAINT `adminapp_generalservice_Signup_id_aec3fa74_fk_adminapp_signup_id` FOREIGN KEY (`Signup_id`) REFERENCES `adminapp_signup` (`id`);

--
-- Constraints for table `adminapp_generaltestimonial`
--
ALTER TABLE `adminapp_generaltestimonial`
  ADD CONSTRAINT `adminapp_generaltest_Category_id_17093501_fk_adminapp_` FOREIGN KEY (`Category_id`) REFERENCES `adminapp_category` (`id`),
  ADD CONSTRAINT `adminapp_generaltest_Signup_id_3805de03_fk_adminapp_` FOREIGN KEY (`Signup_id`) REFERENCES `adminapp_signup` (`id`),
  ADD CONSTRAINT `adminapp_generaltest_ThemeImages_id_682eec88_fk_adminapp_` FOREIGN KEY (`ThemeImages_id`) REFERENCES `adminapp_themeimages` (`id`);

--
-- Constraints for table `adminapp_image`
--
ALTER TABLE `adminapp_image`
  ADD CONSTRAINT `adminapp_image_related_model_id_13547c02_fk_adminapp_aboutus_id` FOREIGN KEY (`related_model_id`) REFERENCES `adminapp_aboutus` (`id`);

--
-- Constraints for table `adminapp_meals`
--
ALTER TABLE `adminapp_meals`
  ADD CONSTRAINT `adminapp_meals_Category_id_493726cb_fk_adminapp_category_id` FOREIGN KEY (`Category_id`) REFERENCES `adminapp_category` (`id`),
  ADD CONSTRAINT `adminapp_meals_Signup_id_9acd32fb_fk_adminapp_signup_id` FOREIGN KEY (`Signup_id`) REFERENCES `adminapp_signup` (`id`),
  ADD CONSTRAINT `adminapp_meals_ThemeImages_id_80a5f36f_fk_adminapp_` FOREIGN KEY (`ThemeImages_id`) REFERENCES `adminapp_themeimages` (`id`);

--
-- Constraints for table `adminapp_mealslist`
--
ALTER TABLE `adminapp_mealslist`
  ADD CONSTRAINT `adminapp_mealslist_Category_id_46a43757_fk_adminapp_category_id` FOREIGN KEY (`Category_id`) REFERENCES `adminapp_category` (`id`),
  ADD CONSTRAINT `adminapp_mealslist_Signup_id_74c2a643_fk_adminapp_signup_id` FOREIGN KEY (`Signup_id`) REFERENCES `adminapp_signup` (`id`),
  ADD CONSTRAINT `adminapp_mealslist_ThemeImages_id_ad01fc5f_fk_adminapp_` FOREIGN KEY (`ThemeImages_id`) REFERENCES `adminapp_themeimages` (`id`);

--
-- Constraints for table `adminapp_mealslist_mealsitem`
--
ALTER TABLE `adminapp_mealslist_mealsitem`
  ADD CONSTRAINT `adminapp_mealslist_M_meals_id_a874f8ad_fk_adminapp_` FOREIGN KEY (`meals_id`) REFERENCES `adminapp_meals` (`id`),
  ADD CONSTRAINT `adminapp_mealslist_M_mealslist_id_0785c072_fk_adminapp_` FOREIGN KEY (`mealslist_id`) REFERENCES `adminapp_mealslist` (`id`);

--
-- Constraints for table `adminapp_newgallery`
--
ALTER TABLE `adminapp_newgallery`
  ADD CONSTRAINT `adminapp_newgallery_Category_id_0c86074c_fk_adminapp_category_id` FOREIGN KEY (`Category_id`) REFERENCES `adminapp_category` (`id`),
  ADD CONSTRAINT `adminapp_newgallery_Signup_id_d94d8c7a_fk_adminapp_signup_id` FOREIGN KEY (`Signup_id`) REFERENCES `adminapp_signup` (`id`),
  ADD CONSTRAINT `adminapp_newgallery_ThemeImages_id_084f740a_fk_adminapp_` FOREIGN KEY (`ThemeImages_id`) REFERENCES `adminapp_themeimages` (`id`);

--
-- Constraints for table `adminapp_order_data`
--
ALTER TABLE `adminapp_order_data`
  ADD CONSTRAINT `adminapp_order_data_Category_id_4a661826_fk_adminapp_category_id` FOREIGN KEY (`Category_id`) REFERENCES `adminapp_category` (`id`),
  ADD CONSTRAINT `adminapp_order_data_Signup_id_a8273ffd_fk_adminapp_signup_id` FOREIGN KEY (`Signup_id`) REFERENCES `adminapp_signup` (`id`),
  ADD CONSTRAINT `adminapp_order_data_ThemeImages_id_2bff66a3_fk_adminapp_` FOREIGN KEY (`ThemeImages_id`) REFERENCES `adminapp_themeimages` (`id`);

--
-- Constraints for table `adminapp_package`
--
ALTER TABLE `adminapp_package`
  ADD CONSTRAINT `adminapp_package_Category_id_f9f01ddf_fk_adminapp_category_id` FOREIGN KEY (`Category_id`) REFERENCES `adminapp_category` (`id`),
  ADD CONSTRAINT `adminapp_package_Signup_id_b35dc9c3_fk_adminapp_signup_id` FOREIGN KEY (`Signup_id`) REFERENCES `adminapp_signup` (`id`),
  ADD CONSTRAINT `adminapp_package_ThemeImages_id_7f5ff66d_fk_adminapp_` FOREIGN KEY (`ThemeImages_id`) REFERENCES `adminapp_themeimages` (`id`);

--
-- Constraints for table `adminapp_plan`
--
ALTER TABLE `adminapp_plan`
  ADD CONSTRAINT `adminapp_plan_Category_id_bd5ee833_fk_adminapp_category_id` FOREIGN KEY (`Category_id`) REFERENCES `adminapp_category` (`id`),
  ADD CONSTRAINT `adminapp_plan_ThemeImages_id_29b1a8c6_fk_adminapp_themeimages_id` FOREIGN KEY (`ThemeImages_id`) REFERENCES `adminapp_themeimages` (`id`);

--
-- Constraints for table `adminapp_property`
--
ALTER TABLE `adminapp_property`
  ADD CONSTRAINT `adminapp_property_Category_id_a6122960_fk_adminapp_category_id` FOREIGN KEY (`Category_id`) REFERENCES `adminapp_category` (`id`),
  ADD CONSTRAINT `adminapp_property_Signup_id_38e4db58_fk_adminapp_signup_id` FOREIGN KEY (`Signup_id`) REFERENCES `adminapp_signup` (`id`),
  ADD CONSTRAINT `adminapp_property_ThemeImages_id_9246a0a0_fk_adminapp_` FOREIGN KEY (`ThemeImages_id`) REFERENCES `adminapp_themeimages` (`id`);

--
-- Constraints for table `adminapp_property_propertyactivities`
--
ALTER TABLE `adminapp_property_propertyactivities`
  ADD CONSTRAINT `adminapp_property_Pr_addactivities_id_8db2e7df_fk_adminapp_` FOREIGN KEY (`addactivities_id`) REFERENCES `adminapp_addactivities` (`id`),
  ADD CONSTRAINT `adminapp_property_Pr_property_id_0a8fed04_fk_adminapp_` FOREIGN KEY (`property_id`) REFERENCES `adminapp_property` (`id`);

--
-- Constraints for table `adminapp_property_propertyamenities`
--
ALTER TABLE `adminapp_property_propertyamenities`
  ADD CONSTRAINT `adminapp_property_Pr_addamenities_id_8aeea2fd_fk_adminapp_` FOREIGN KEY (`addamenities_id`) REFERENCES `adminapp_addamenities` (`id`),
  ADD CONSTRAINT `adminapp_property_Pr_property_id_df9cdd58_fk_adminapp_` FOREIGN KEY (`property_id`) REFERENCES `adminapp_property` (`id`);

--
-- Constraints for table `adminapp_property_propertyfacilities`
--
ALTER TABLE `adminapp_property_propertyfacilities`
  ADD CONSTRAINT `adminapp_property_Pr_addfacility_id_049cb98c_fk_adminapp_` FOREIGN KEY (`addfacility_id`) REFERENCES `adminapp_addfacility` (`id`),
  ADD CONSTRAINT `adminapp_property_Pr_property_id_6bc2945c_fk_adminapp_` FOREIGN KEY (`property_id`) REFERENCES `adminapp_property` (`id`);

--
-- Constraints for table `adminapp_resortaboutus`
--
ALTER TABLE `adminapp_resortaboutus`
  ADD CONSTRAINT `adminapp_resortabout_Category_id_84aea510_fk_adminapp_` FOREIGN KEY (`Category_id`) REFERENCES `adminapp_category` (`id`),
  ADD CONSTRAINT `adminapp_resortabout_ThemeImages_id_096b42a8_fk_adminapp_` FOREIGN KEY (`ThemeImages_id`) REFERENCES `adminapp_themeimages` (`id`),
  ADD CONSTRAINT `adminapp_resortaboutus_Signup_id_fda43c1f_fk_adminapp_signup_id` FOREIGN KEY (`Signup_id`) REFERENCES `adminapp_signup` (`id`);

--
-- Constraints for table `adminapp_resortdetail`
--
ALTER TABLE `adminapp_resortdetail`
  ADD CONSTRAINT `adminapp_resortdetai_Category_id_44da38f1_fk_adminapp_` FOREIGN KEY (`Category_id`) REFERENCES `adminapp_category` (`id`),
  ADD CONSTRAINT `adminapp_resortdetai_ThemeImages_id_eb8ff048_fk_adminapp_` FOREIGN KEY (`ThemeImages_id`) REFERENCES `adminapp_themeimages` (`id`),
  ADD CONSTRAINT `adminapp_resortdetail_Signup_id_5e579393_fk_adminapp_signup_id` FOREIGN KEY (`Signup_id`) REFERENCES `adminapp_signup` (`id`);

--
-- Constraints for table `adminapp_resortimage`
--
ALTER TABLE `adminapp_resortimage`
  ADD CONSTRAINT `adminapp_resortimage_related_model_id_120964c4_fk_adminapp_` FOREIGN KEY (`related_model_id`) REFERENCES `adminapp_resortaboutus` (`id`);

--
-- Constraints for table `adminapp_resorttestimonial`
--
ALTER TABLE `adminapp_resorttestimonial`
  ADD CONSTRAINT `adminapp_resorttesti_Category_id_23bb0e0c_fk_adminapp_` FOREIGN KEY (`Category_id`) REFERENCES `adminapp_category` (`id`),
  ADD CONSTRAINT `adminapp_resorttesti_Signup_id_c64af54a_fk_adminapp_` FOREIGN KEY (`Signup_id`) REFERENCES `adminapp_signup` (`id`),
  ADD CONSTRAINT `adminapp_resorttesti_ThemeImages_id_ab82c5af_fk_adminapp_` FOREIGN KEY (`ThemeImages_id`) REFERENCES `adminapp_themeimages` (`id`);

--
-- Constraints for table `adminapp_roomlist`
--
ALTER TABLE `adminapp_roomlist`
  ADD CONSTRAINT `adminapp_roomlist_Category_id_1b3b7efc_fk_adminapp_category_id` FOREIGN KEY (`Category_id`) REFERENCES `adminapp_category` (`id`),
  ADD CONSTRAINT `adminapp_roomlist_Property_id_46adf140_fk_adminapp_property_id` FOREIGN KEY (`Property_id`) REFERENCES `adminapp_property` (`id`),
  ADD CONSTRAINT `adminapp_roomlist_RoomBedtype_id_0ca8135a_fk_adminapp_` FOREIGN KEY (`RoomBedtype_id`) REFERENCES `adminapp_addbedtype` (`id`),
  ADD CONSTRAINT `adminapp_roomlist_Signup_id_5ff8c703_fk_adminapp_signup_id` FOREIGN KEY (`Signup_id`) REFERENCES `adminapp_signup` (`id`),
  ADD CONSTRAINT `adminapp_roomlist_ThemeImages_id_cb8d5cf5_fk_adminapp_` FOREIGN KEY (`ThemeImages_id`) REFERENCES `adminapp_themeimages` (`id`);

--
-- Constraints for table `adminapp_roomlist_roomfacilities`
--
ALTER TABLE `adminapp_roomlist_roomfacilities`
  ADD CONSTRAINT `adminapp_roomlist_Ro_addfacility_id_520c1631_fk_adminapp_` FOREIGN KEY (`addfacility_id`) REFERENCES `adminapp_addfacility` (`id`),
  ADD CONSTRAINT `adminapp_roomlist_Ro_roomlist_id_d98f0f59_fk_adminapp_` FOREIGN KEY (`roomlist_id`) REFERENCES `adminapp_roomlist` (`id`);

--
-- Constraints for table `adminapp_seodata`
--
ALTER TABLE `adminapp_seodata`
  ADD CONSTRAINT `adminapp_seodata_Category_id_a404eba5_fk_adminapp_category_id` FOREIGN KEY (`Category_id`) REFERENCES `adminapp_category` (`id`),
  ADD CONSTRAINT `adminapp_seodata_Signup_id_4057feb6_fk_adminapp_signup_id` FOREIGN KEY (`Signup_id`) REFERENCES `adminapp_signup` (`id`),
  ADD CONSTRAINT `adminapp_seodata_ThemeImages_id_740c251e_fk_adminapp_` FOREIGN KEY (`ThemeImages_id`) REFERENCES `adminapp_themeimages` (`id`);

--
-- Constraints for table `adminapp_service`
--
ALTER TABLE `adminapp_service`
  ADD CONSTRAINT `adminapp_service_Category_id_6b5617a5_fk_adminapp_category_id` FOREIGN KEY (`Category_id`) REFERENCES `adminapp_category` (`id`),
  ADD CONSTRAINT `adminapp_service_Signup_id_05946e8b_fk_adminapp_signup_id` FOREIGN KEY (`Signup_id`) REFERENCES `adminapp_signup` (`id`),
  ADD CONSTRAINT `adminapp_service_ThemeImages_id_0a665885_fk_adminapp_` FOREIGN KEY (`ThemeImages_id`) REFERENCES `adminapp_themeimages` (`id`);

--
-- Constraints for table `adminapp_specialday`
--
ALTER TABLE `adminapp_specialday`
  ADD CONSTRAINT `adminapp_specialday_Category_id_0086e116_fk_adminapp_category_id` FOREIGN KEY (`Category_id`) REFERENCES `adminapp_category` (`id`),
  ADD CONSTRAINT `adminapp_specialday_Signup_id_b814d2b9_fk_adminapp_signup_id` FOREIGN KEY (`Signup_id`) REFERENCES `adminapp_signup` (`id`),
  ADD CONSTRAINT `adminapp_specialday_ThemeImages_id_4cf5d136_fk_adminapp_` FOREIGN KEY (`ThemeImages_id`) REFERENCES `adminapp_themeimages` (`id`);

--
-- Constraints for table `adminapp_specialrate`
--
ALTER TABLE `adminapp_specialrate`
  ADD CONSTRAINT `adminapp_specialrate_Category_id_5a2aaf48_fk_adminapp_` FOREIGN KEY (`Category_id`) REFERENCES `adminapp_category` (`id`),
  ADD CONSTRAINT `adminapp_specialrate_Signup_id_fe84dc05_fk_adminapp_signup_id` FOREIGN KEY (`Signup_id`) REFERENCES `adminapp_signup` (`id`),
  ADD CONSTRAINT `adminapp_specialrate_ThemeImages_id_bb603169_fk_adminapp_` FOREIGN KEY (`ThemeImages_id`) REFERENCES `adminapp_themeimages` (`id`);

--
-- Constraints for table `adminapp_tariff`
--
ALTER TABLE `adminapp_tariff`
  ADD CONSTRAINT `adminapp_tariff_Category_id_6bc32450_fk_adminapp_category_id` FOREIGN KEY (`Category_id`) REFERENCES `adminapp_category` (`id`),
  ADD CONSTRAINT `adminapp_tariff_RoomList_id_872af6d2_fk_adminapp_roomlist_id` FOREIGN KEY (`RoomList_id`) REFERENCES `adminapp_roomlist` (`id`),
  ADD CONSTRAINT `adminapp_tariff_Signup_id_a7328655_fk_adminapp_signup_id` FOREIGN KEY (`Signup_id`) REFERENCES `adminapp_signup` (`id`),
  ADD CONSTRAINT `adminapp_tariff_ThemeImages_id_53c8e75b_fk_adminapp_` FOREIGN KEY (`ThemeImages_id`) REFERENCES `adminapp_themeimages` (`id`);

--
-- Constraints for table `adminapp_testimonial`
--
ALTER TABLE `adminapp_testimonial`
  ADD CONSTRAINT `adminapp_testimonial_Category_id_66db8d3f_fk_adminapp_` FOREIGN KEY (`Category_id`) REFERENCES `adminapp_category` (`id`),
  ADD CONSTRAINT `adminapp_testimonial_Signup_id_0054d63a_fk_adminapp_signup_id` FOREIGN KEY (`Signup_id`) REFERENCES `adminapp_signup` (`id`),
  ADD CONSTRAINT `adminapp_testimonial_ThemeImages_id_b1da691f_fk_adminapp_` FOREIGN KEY (`ThemeImages_id`) REFERENCES `adminapp_themeimages` (`id`);

--
-- Constraints for table `adminapp_themeimages`
--
ALTER TABLE `adminapp_themeimages`
  ADD CONSTRAINT `adminapp_themeimages_Category_id_47204d21_fk_adminapp_` FOREIGN KEY (`Category_id`) REFERENCES `adminapp_category` (`id`);

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
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
--
-- Database: `webstore_db`
--
CREATE DATABASE IF NOT EXISTS `webstore_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `webstore_db`;

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_aboutus`
--

CREATE TABLE `adminapp_aboutus` (
  `id` bigint(20) NOT NULL,
  `Description` longtext NOT NULL,
  `BannerImage` varchar(100) NOT NULL,
  `Subimage` longtext DEFAULT NULL,
  `Quotes` longtext NOT NULL,
  `Heading` varchar(200) NOT NULL,
  `Facebook` varchar(100) NOT NULL,
  `Twitter` varchar(100) NOT NULL,
  `Google` varchar(100) NOT NULL,
  `Instagram` varchar(100) NOT NULL,
  `Category_id` bigint(20) NOT NULL,
  `Signup_id` bigint(20) NOT NULL,
  `ThemeImages_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_aboutus`
--

INSERT INTO `adminapp_aboutus` (`id`, `Description`, `BannerImage`, `Subimage`, `Quotes`, `Heading`, `Facebook`, `Twitter`, `Google`, `Instagram`, `Category_id`, `Signup_id`, `ThemeImages_id`) VALUES
(1, 'At Our Travel Agency, we are passionate about creating unforgettable travel experiences for our valued customers. With years of industry expertise and a team of experienced travel professionals, we are committed to providing exceptional service, personalized attention, and tailored travel solutions to suit your needs.', 'about/bg1.jpg', NULL, 'Travel far, travel wide, travel with us by your side.', 'Life is short, travel often', 'https://www.facebook.com/travcountsolutions/', 'https://twitter.com/TravCount_', '#', 'https://www.instagram.com/travcountsolutions/', 1, 1, 1),
(2, 'At Our Tour Agency, we are passionate about creating unforgettable travel experiences for our valued customers. With years of industry expertise and a team of experienced travel professionals, we are committed to providing exceptional service, personalized attention, and tailored travel solutions to suit your needs.', 'about/bg1.jpg', NULL, 'Travel far, travel wide, travel with us by your side.', 'Life is short, travel often', 'https://www.facebook.com/travcountsolutions/', 'https://twitter.com/TravCount_', '#', 'https://www.instagram.com/travcountsolutions/', 3, 2, 22),
(4, 'Welcome to SMR Tourism!  We are your ultimate destination for unforgettable travel experiences. Whether you\'re dreaming of exotic beach getaways, thrilling adventures in the great outdoors, or exploring cultural gems, we\'ve got you covered. Our dedicated team of travel experts will tailor personalized itineraries to suit your preferences and budget, ensuring every moment of your journey is filled with joy and relaxation. Let us take care of all the details, so you can focus on creating lasting memories. Book your next adventure with us and embark on the trip of a lifetime!', 'about/peakpx.jpg', 'Null', '', '', '', '', '', 'https://instagram.com/smr_tourism_dubai?igshid=OGQ5ZDc2ODk2ZA==', 1, 25, 1),
(12, 'www', 'about/car3_FzxHOy8.jpg', 'Null', 'w', 'w', 'f@f.com', '', '', '', 1, 26, 1),
(13, 'At Our Travel Agency, we are passionate about creating unforgettable travel experiences for our valued customers. With years of industry expertise and a team of experienced travel professionals, we are committed to providing exceptional service, personalized attention, and tailored travel solutions to suit your needs.', 'about/motivational-success-programmers-programming-hd-wallpaper-preview.jpg', NULL, 'To become the leading provider of unforgettable travel experiences, inspiring wanderlust and creating lifelong memories. We strive to exceed customer expectations by offering exceptional services, personalized itineraries, and a seamless travel journey', 'Mission', 'https://facebook.com/travcountsolutions', '', '', '', 1, 28, 1);

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_addactivities`
--

CREATE TABLE `adminapp_addactivities` (
  `id` bigint(20) NOT NULL,
  `Activities` varchar(1000) NOT NULL,
  `Category_id` bigint(20) NOT NULL,
  `Signup_id` bigint(20) NOT NULL,
  `ThemeImages_id` bigint(20) NOT NULL,
  `ActivityIcon` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_addactivities`
--

INSERT INTO `adminapp_addactivities` (`id`, `Activities`, `Category_id`, `Signup_id`, `ThemeImages_id`, `ActivityIcon`) VALUES
(1, 'Swimmiing', 2, 9, 9, 'activity/icon-3.png'),
(2, 'Fitness Gym', 2, 9, 9, 'activity/icon-2_rIFhqey.png'),
(3, 'Restaurant', 2, 9, 9, 'activity/icon-1.png'),
(4, 'Luxury Spa', 2, 9, 9, 'activity/icon-3.png'),
(6, 'Fitness Gym', 2, 11, 13, 'activity/lakeview.jpg'),
(10, 'Luxury Spa', 2, 10, 11, 'activity/car2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_addamenities`
--

CREATE TABLE `adminapp_addamenities` (
  `id` bigint(20) NOT NULL,
  `Amenities` varchar(100) NOT NULL,
  `Amenities_Image` varchar(100) NOT NULL,
  `Category_id` bigint(20) NOT NULL,
  `Signup_id` bigint(20) NOT NULL,
  `ThemeImages_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_addamenities`
--

INSERT INTO `adminapp_addamenities` (`id`, `Amenities`, `Amenities_Image`, `Category_id`, `Signup_id`, `ThemeImages_id`) VALUES
(1, 'Free WiFi', 'amenities/freewifi_7myqmXk.jpg', 2, 9, 9),
(2, 'Restaurant', 'amenities/5.jpg', 2, 9, 9),
(3, 'Games', 'amenities/gameroom.jpg', 2, 9, 9),
(4, 'Restaurants', 'amenities/restaurants.jpg', 2, 9, 9),
(6, 'new', 'amenities/6.jpg', 2, 11, 13),
(9, 'www', 'amenities/car2.jpg', 2, 10, 11),
(10, 'www', 'amenities/car2_PX8RLxd.jpg', 2, 10, 11);

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_addbedtype`
--

CREATE TABLE `adminapp_addbedtype` (
  `id` bigint(20) NOT NULL,
  `Bed_Type` varchar(100) NOT NULL,
  `Bed_Image` varchar(100) NOT NULL,
  `Category_id` bigint(20) NOT NULL,
  `Signup_id` bigint(20) NOT NULL,
  `ThemeImages_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_addbedtype`
--

INSERT INTO `adminapp_addbedtype` (`id`, `Bed_Type`, `Bed_Image`, `Category_id`, `Signup_id`, `ThemeImages_id`) VALUES
(1, 'Single', 'room/singlebed_IuIs4Fy.jpg', 2, 9, 9),
(2, 'Double', 'room/doublebed.jpg', 2, 9, 9),
(3, 'King', 'room/kingbed.jpg', 2, 9, 9),
(4, 'Queen', 'room/queenbed.jpg', 2, 9, 9),
(10, 'ssssss', 'room/car6_ovdkITq.jpg', 2, 10, 11);

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_addfacility`
--

CREATE TABLE `adminapp_addfacility` (
  `id` bigint(20) NOT NULL,
  `Facility` varchar(100) NOT NULL,
  `Facility_Description` longtext NOT NULL,
  `Facility_Image` varchar(100) NOT NULL,
  `Category_id` bigint(20) NOT NULL,
  `Signup_id` bigint(20) NOT NULL,
  `ThemeImages_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_addfacility`
--

INSERT INTO `adminapp_addfacility` (`id`, `Facility`, `Facility_Description`, `Facility_Image`, `Category_id`, `Signup_id`, `ThemeImages_id`) VALUES
(1, 'Swimming pool', 'Pool facility for swimming, diving, recreational bathing, and therapy.', 'facility/swimmingpool_X6aWAid_4XZlMvD.jpg', 2, 9, 9),
(2, 'Spa and Sauna', 'Both sauna and spa use heat as a method to clean and refresh your body.', 'facility/spasauna_fUcpAzR.jpg', 2, 9, 9),
(3, 'Airport Transfer', 'Airport shuttle service is available for extra charge', 'facility/air_Gpd6i1v.jpg', 2, 9, 9),
(4, 'Room Service', '24-hour in-room dining is available for extra charge', 'facility/448x448_img4_azrbEXt.jpg', 2, 9, 9),
(8, 'Restaurant', 'Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non.', 'facility/cityview.jpg', 2, 9, 9),
(9, 'Swimming Pool', 'aaaaaaaa', 'facility/lakeview.jpg', 2, 11, 13),
(12, 'wwwwww', 'wwwwww', 'facility/car6.jpg', 2, 10, 11),
(13, 'Swimming Pool', 'aa', 'facility/car1_rhoqwEI.jpg', 2, 10, 11);

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_addfloor`
--

CREATE TABLE `adminapp_addfloor` (
  `id` bigint(20) NOT NULL,
  `Floor` varchar(100) NOT NULL,
  `Category_id` bigint(20) NOT NULL,
  `Signup_id` bigint(20) NOT NULL,
  `ThemeImages_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_addfloor`
--

INSERT INTO `adminapp_addfloor` (`id`, `Floor`, `Category_id`, `Signup_id`, `ThemeImages_id`) VALUES
(1, 'Floor-1', 2, 1, 1),
(2, 'Floor-2', 2, 1, 1),
(3, 'Floor-3', 2, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_addviews`
--

CREATE TABLE `adminapp_addviews` (
  `id` bigint(20) NOT NULL,
  `Views_Name` varchar(100) NOT NULL,
  `Views_Description` longtext NOT NULL,
  `Views_Image` varchar(100) NOT NULL,
  `Category_id` bigint(20) NOT NULL,
  `Signup_id` bigint(20) NOT NULL,
  `ThemeImages_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_addviews`
--

INSERT INTO `adminapp_addviews` (`id`, `Views_Name`, `Views_Description`, `Views_Image`, `Category_id`, `Signup_id`, `ThemeImages_id`) VALUES
(1, 'Bay View', 'A resort (North American English) is a self-contained commercial establishment that tries to provide most of a vacationer\'s wants, such as food, drink, swimming, lodging, sports, entertainment, and shopping, on the premises', 'views/bayview_ZY1Bp7H.jpg', 2, 9, 9),
(2, 'Sea View', 'A resort (North American English) is a self-contained commercial establishment that tries to provide most of a vacationer\'s wants, such as food, drink, swimming, lodging, sports, entertainment, and shopping, on the premises', 'views/seaview_SLup835.jpg', 2, 9, 9),
(4, 'Mount View', 'A resort (North American English) is a self-contained commercial establishment that tries to provide most of a vacationer\'s wants, such as food, drink, swimming, lodging, sports, entertainment, and shopping, on the premises', 'views/mountainview_5Agc9JT.jpg', 2, 9, 9),
(5, 'City View', 'A resort (North American English) is a self-contained commercial establishment that tries to provide most of a vacationer\'s wants, such as food, drink, swimming, lodging, sports, entertainment, and shopping, on the premises', 'views/cityview_L6yTcKn.jpg', 2, 9, 9),
(6, 'Lake View', 'A resort (North American English) is a self-contained commercial establishment that tries to provide most of a vacationer\'s wants, such as food, drink, swimming, lodging, sports, entertainment, and shopping, on the premises...', 'views/lakeview_yuCgY8X.jpg', 2, 9, 9),
(7, 'aaaaaaaaaa', 'aaaaaa', 'views/6.jpg', 2, 11, 13),
(9, 'x', 'x', 'views/1.png', 2, 10, 11),
(10, 'q', 'qqqqqwwwwwwww', 'views/car3.jpg', 2, 10, 11);

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_agencydetail`
--

CREATE TABLE `adminapp_agencydetail` (
  `id` bigint(20) NOT NULL,
  `AgencyName` varchar(200) NOT NULL,
  `Email` varchar(254) NOT NULL,
  `Contact` varchar(300) NOT NULL,
  `WhatsappNumber` varchar(20) NOT NULL,
  `Address` varchar(80) NOT NULL,
  `Street` varchar(80) NOT NULL,
  `City` varchar(80) NOT NULL,
  `District` varchar(80) NOT NULL,
  `State` varchar(80) NOT NULL,
  `Pincode` varchar(80) NOT NULL,
  `DomainName` varchar(80) NOT NULL,
  `Banner` varchar(100) NOT NULL,
  `Logo` varchar(100) NOT NULL,
  `WhiteLogo` varchar(100) NOT NULL,
  `Favicon` varchar(100) NOT NULL,
  `Category_id` bigint(20) NOT NULL,
  `Signup_id` bigint(20) NOT NULL,
  `ThemeImages_id` bigint(20) NOT NULL,
  `NotificationEmail` varchar(254) NOT NULL,
  `TextOnBanner` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_agencydetail`
--

INSERT INTO `adminapp_agencydetail` (`id`, `AgencyName`, `Email`, `Contact`, `WhatsappNumber`, `Address`, `Street`, `City`, `District`, `State`, `Pincode`, `DomainName`, `Banner`, `Logo`, `WhiteLogo`, `Favicon`, `Category_id`, `Signup_id`, `ThemeImages_id`, `NotificationEmail`, `TextOnBanner`) VALUES
(1, 'Your Agency Name', 'webstore@travcount.com', '+919544440338|+914842388166', '+919544440338', 'Valamkottil Towers', 'Judgemukku', 'Kakkanad', 'Ernakulam', 'Kerala', '682021', 'travel1.travcount.in', 'banner/slider2.jpg', 'logo/logohere.png', 'logo/whitelogohere.png', 'favicon/favicon.png', 1, 1, 1, 'webstore@travcount.com', 'Your Slogan will be here..'),
(2, 'Your AgencyName', 'webstore@travcount.com', '+919544440338|+914842388166', '+919544440338', 'Valamkottil Towers', 'Judgemukku', 'Kakkanad', 'Ernakulam', 'Kerala', '682021', 'tour1.travcount.in', 'banner/slider2.jpg', 'logo/logohere.png', 'logo/whitelogohere.png', 'favicon/favicon.png', 3, 2, 22, 'webstore@travcount.com', 'Your Slogan will be here..'),
(3, 'SMR TOURISM', 'smrtourismdubai@gmail.com', '+971 44225068|+971 582698783|+971 503473651', '+971561215740', 'AL SABKHA', 'DEIRA DUBAI', 'DUBAI', 'DEIRA', 'DUBAI', '16382', 'smrtourism.com', 'banner/12_4iffPgz.jpg', 'logo/SMR_LOGO_2.PNG', 'logo/smr_1.png', 'favicon/smr_1.png', 1, 25, 1, 'smrtourismdubai@gmail.com', ''),
(4, 'New agency', 'new@gmail.com', '666666666', '22222222', 'qqqq', 'qqqqqq', 'qqqqqqqqqq', 'qqqq', 'qqqqqqqq', 'qqqqqqqq', 'qqqqqq', 'banner/car4.jpg', 'logo/logohere.png', 'logo/whitelogohere.png', 'favicon/car6.jpg', 1, 26, 1, 'amrutha91jun@gmail.com', 'Your Slogan will be here..'),
(5, 'UniGO Tourism ', 'ops@unigotourism.com', '9744111136', '9744111136', 'Bilal Tower ', 'Fort Road', 'Kannur', 'Kannur', 'Kerala', '670002', 'www.unigotourism.com', 'banner/wp10611288.jpg', 'logo/logo_4619.png', 'logo/logo_4619_iISd5iy.png', 'favicon/webstore__logo.png', 1, 28, 1, 'rayeez@travcount.com', ''),
(6, 'dc', 'admin1@gmail.com', '9876543210', '3333333', 'Karthika', 'Payangodanpara', 'Kannur', 'd', 'Kerala', '670005', 'resort.com', 'banner/hero-5-triangle-2.png', 'logo/tc_web_store_new__fnl.png', 'logo/Screenshot_26.png', 'favicon/Screenshot_26.png', 1, 3, 1, 'not@gmail.com', 'cd\r\nc\r\ndc\r\nd\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_blackoutday`
--

CREATE TABLE `adminapp_blackoutday` (
  `id` bigint(20) NOT NULL,
  `From_date` date NOT NULL,
  `To_date` date NOT NULL,
  `Remarks` varchar(200) NOT NULL,
  `Category_id` bigint(20) NOT NULL,
  `Signup_id` bigint(20) NOT NULL,
  `ThemeImages_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_blackoutday`
--

INSERT INTO `adminapp_blackoutday` (`id`, `From_date`, `To_date`, `Remarks`, `Category_id`, `Signup_id`, `ThemeImages_id`) VALUES
(1, '2023-05-10', '2023-05-20', 'Vacation', 2, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_booking`
--

CREATE TABLE `adminapp_booking` (
  `id` bigint(20) NOT NULL,
  `Roomcount` int(11) NOT NULL,
  `GuestName` varchar(50) NOT NULL,
  `check_in_date` date NOT NULL,
  `check_out_date` date NOT NULL,
  `Property_id` bigint(20) NOT NULL,
  `RoomList_id` bigint(20) NOT NULL,
  `Category_id` bigint(20) NOT NULL,
  `Signup_id` bigint(20) NOT NULL,
  `ThemeImages_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_cancellationpolicy`
--

CREATE TABLE `adminapp_cancellationpolicy` (
  `id` bigint(20) NOT NULL,
  `Policy_type` varchar(50) NOT NULL,
  `Description` longtext NOT NULL,
  `Cancellation_fee` decimal(8,2) DEFAULT NULL,
  `Cancellation_deadline` datetime(6) DEFAULT NULL,
  `Is_active` tinyint(1) NOT NULL,
  `Created_at` datetime(6) NOT NULL,
  `Updated_at` datetime(6) NOT NULL,
  `Category_id` bigint(20) NOT NULL,
  `Signup_id` bigint(20) NOT NULL,
  `ThemeImages_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_category`
--

CREATE TABLE `adminapp_category` (
  `id` bigint(20) NOT NULL,
  `Category_Name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_category`
--

INSERT INTO `adminapp_category` (`id`, `Category_Name`) VALUES
(1, 'Travel Agency'),
(2, 'Resort'),
(3, 'Tour Company'),
(4, 'General Company');

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_conciergelist`
--

CREATE TABLE `adminapp_conciergelist` (
  `id` bigint(20) NOT NULL,
  `ConciergeName` varchar(100) NOT NULL,
  `ConciergeCode` varchar(100) NOT NULL,
  `ConciergeJoiningDate` date NOT NULL,
  `ConciergeJobdesk` longtext NOT NULL,
  `ConciergeSchedule` varchar(500) NOT NULL,
  `ConciergeContact` varchar(500) NOT NULL,
  `ConciergeStatus` varchar(200) NOT NULL,
  `ConciergeImage` varchar(100) NOT NULL,
  `Category_id` bigint(20) NOT NULL,
  `Signup_id` bigint(20) NOT NULL,
  `ThemeImages_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_directorprofile`
--

CREATE TABLE `adminapp_directorprofile` (
  `id` bigint(20) NOT NULL,
  `Directordescription` longtext NOT NULL,
  `Directorcontact` varchar(100) NOT NULL,
  `Directoremail` varchar(254) NOT NULL,
  `Directorname` varchar(200) NOT NULL,
  `Directordesignation` varchar(200) NOT NULL,
  `Directorfacebook` varchar(100) NOT NULL,
  `Directorlinkedin` varchar(100) NOT NULL,
  `Directorinstagram` varchar(100) NOT NULL,
  `Directorimage` varchar(100) NOT NULL,
  `Category_id` bigint(20) NOT NULL,
  `Signup_id` bigint(20) NOT NULL,
  `ThemeImages_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_directorprofile`
--

INSERT INTO `adminapp_directorprofile` (`id`, `Directordescription`, `Directorcontact`, `Directoremail`, `Directorname`, `Directordesignation`, `Directorfacebook`, `Directorlinkedin`, `Directorinstagram`, `Directorimage`, `Category_id`, `Signup_id`, `ThemeImages_id`) VALUES
(1, 'As a travel agency, our Director is a seasoned professional with a wealth of experience and a passion for the travel industry. With a strong background in travel planning and management, our Director brings a strategic and visionary leadership approach to our agency.', '+919544440338', 'director@gmail.com', 'Mathew', 'Manager', 'https://www.facebook.com/travcountsolutions/', '#', 'https://www.instagram.com/travcountsolutions/', 'director/about2_Lsy1lcD_rhq1oDW.jpg', 1, 1, 1),
(2, 'As a tour agency, our Director is a seasoned professional with a wealth of experience and a passion for the travel industry. With a strong background in travel planning and management, our Director brings a strategic and visionary leadership approach to our agency.', '+919544440338', 'director@gmail.com', 'Director Name', 'Accountant', 'https://www.facebook.com/travcountsolutions/', '#', 'https://www.instagram.com/travcountsolutions/', 'director/about2_Lsy1lcD_rhq1oDW.jpg', 3, 2, 22),
(8, 'w', 'w', 'wwwww@gmail.com', 'Clara mathew', 'Manager', '', '', '', 'director/car4_bNUqMBK.jpg', 1, 26, 1),
(9, 'ww', 'w', 'wwwww@gmail.com', 'w', 'd', '', '', '', 'director/car4.jpg', 1, 26, 1),
(11, 'Dubai', '+971 44225068', 'smrtourismdubai@gmail.com', 'SMR Group', 'Travel & Tourism', '', '', '', 'director/SMR_LOGO_2.PNG', 1, 25, 1),
(12, 'testing purpose only ', '6282599822', 'rayeez@travcount.com', 'Rayeez', 'Director', '', '', '', 'director/2517915.jpg', 1, 28, 1);

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_generalaboutus`
--

CREATE TABLE `adminapp_generalaboutus` (
  `id` bigint(20) NOT NULL,
  `Description` longtext NOT NULL,
  `Image` varchar(100) NOT NULL,
  `Subimage` longtext DEFAULT NULL,
  `Quotes` longtext NOT NULL,
  `Heading` varchar(200) NOT NULL,
  `Facebook` varchar(100) NOT NULL,
  `Twitter` varchar(100) NOT NULL,
  `Google` varchar(100) NOT NULL,
  `Instagram` varchar(100) NOT NULL,
  `Yahoo` varchar(100) NOT NULL,
  `Category_id` bigint(20) NOT NULL,
  `Signup_id` bigint(20) NOT NULL,
  `ThemeImages_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_generalaboutus`
--

INSERT INTO `adminapp_generalaboutus` (`id`, `Description`, `Image`, `Subimage`, `Quotes`, `Heading`, `Facebook`, `Twitter`, `Google`, `Instagram`, `Yahoo`, `Category_id`, `Signup_id`, `ThemeImages_id`) VALUES
(3, 'We are a digital and branding company that believes in the power of creative strategy and along with great design.\r\n\r\nCum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Praesent commodo cursus magna, vel scelerisque nisl consectetur et.', 'about/bg12.jpg', NULL, 'Quotes', 'Heading', 'general@fb.com', 'general@twitter.com', 'general@google.com', 'general@instagram.com', 'general@yahoo.com', 4, 8, 8);

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_generalcompanydetail`
--

CREATE TABLE `adminapp_generalcompanydetail` (
  `id` bigint(20) NOT NULL,
  `CompanyName` varchar(200) NOT NULL,
  `Email` varchar(254) NOT NULL,
  `Contact` varchar(300) NOT NULL,
  `WhatsappNumber` varchar(20) NOT NULL,
  `Address` varchar(80) NOT NULL,
  `Street` varchar(80) NOT NULL,
  `City` varchar(80) NOT NULL,
  `District` varchar(80) NOT NULL,
  `State` varchar(80) NOT NULL,
  `Pincode` varchar(80) NOT NULL,
  `DomainName` varchar(80) NOT NULL,
  `Banner` varchar(100) NOT NULL,
  `Logo` varchar(100) NOT NULL,
  `WhiteLogo` varchar(100) NOT NULL,
  `Favicon` varchar(100) NOT NULL,
  `Category_id` bigint(20) NOT NULL,
  `Signup_id` bigint(20) NOT NULL,
  `ThemeImages_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_generalcompanydetail`
--

INSERT INTO `adminapp_generalcompanydetail` (`id`, `CompanyName`, `Email`, `Contact`, `WhatsappNumber`, `Address`, `Street`, `City`, `District`, `State`, `Pincode`, `DomainName`, `Banner`, `Logo`, `WhiteLogo`, `Favicon`, `Category_id`, `Signup_id`, `ThemeImages_id`) VALUES
(2, 'TravCountWebStore', 'travcountwebstore@gmail.com', '9876543210', '7897897654', 'Valamkottil Towers', 'Judgemukku', 'Kakkanad', 'Ernakulam', 'Kerala', '682021', 'travcountwebstore.com', 'banner/bg12.jpg', 'logo/tc_web_store_new_qJTcgGs.png', 'logo/tc_webstore_white_qVfmFSX.png', 'favicon/favicon_GtHrAug.ico', 4, 8, 8);

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_generaldirectorprofile`
--

CREATE TABLE `adminapp_generaldirectorprofile` (
  `id` bigint(20) NOT NULL,
  `Directordescription` longtext NOT NULL,
  `Directorcontact` varchar(100) NOT NULL,
  `Directoremail` varchar(254) NOT NULL,
  `Directorname` varchar(200) NOT NULL,
  `Directordesignation` varchar(200) NOT NULL,
  `Directorfacebook` varchar(100) NOT NULL,
  `Directorlinkedin` varchar(100) NOT NULL,
  `Directorinstagram` varchar(100) NOT NULL,
  `Directorimage` varchar(100) NOT NULL,
  `Category_id` bigint(20) NOT NULL,
  `Signup_id` bigint(20) NOT NULL,
  `ThemeImages_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_generaldirectorprofile`
--

INSERT INTO `adminapp_generaldirectorprofile` (`id`, `Directordescription`, `Directorcontact`, `Directoremail`, `Directorname`, `Directordesignation`, `Directorfacebook`, `Directorlinkedin`, `Directorinstagram`, `Directorimage`, `Category_id`, `Signup_id`, `ThemeImages_id`) VALUES
(1, 'Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Vestibulum ligula porta felis euismod semper. Cras justo odio consectetur adipiscing dapibus curabitur blandit.', '8967452335', 'director@gmail.com', 'Corris Ambady', 'Manager', 'director@facebook.com', 'director@linkedin.com', 'director@instagram.com', 'director/about4.jpg', 4, 8, 8);

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_generalimage`
--

CREATE TABLE `adminapp_generalimage` (
  `id` bigint(20) NOT NULL,
  `Subimage` varchar(100) NOT NULL,
  `related_model_id` bigint(20) NOT NULL,
  `Subdescription` longtext NOT NULL,
  `Subhead` varchar(100) NOT NULL,
  `Vision` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_generalimage`
--

INSERT INTO `adminapp_generalimage` (`id`, `Subimage`, `related_model_id`, `Subdescription`, `Subhead`, `Vision`) VALUES
(2, 'about/about3_hgLyxtT.jpg', 3, 'Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Nullam quis risus eget urna mollis ornare.', 'Save your time and money.', 'Vision');

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_generalproduct`
--

CREATE TABLE `adminapp_generalproduct` (
  `id` bigint(20) NOT NULL,
  `Head` varchar(100) NOT NULL,
  `Description` longtext NOT NULL,
  `Image` varchar(100) NOT NULL,
  `Category_id` bigint(20) NOT NULL,
  `Signup_id` bigint(20) NOT NULL,
  `ThemeImages_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_generalproduct`
--

INSERT INTO `adminapp_generalproduct` (`id`, `Head`, `Description`, `Image`, `Category_id`, `Signup_id`, `ThemeImages_id`) VALUES
(1, 'Quam Mollis Bibendum', 'Maecenas sed diam eget risus varius blandit sit amet non magna. Donec ullamcorper nulla non metus auctor fringilla. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur. Curabitur blandit tempus porttitor. Praesent commodo cursus magna, vel scelerisque nisl consectetur et.', 'product/pd7.jpg', 4, 8, 8),
(2, 'Commodo Dolor Bibendum', 'Cras mattis consectetur purus sit amet fermentum. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis.', 'product/pd9.jpg', 4, 8, 8),
(3, 'Parturient Cursus Mollis', 'Donec id elit non mi porta gravida at eget metus. Cras mattis consectetur purus sit amet fermentum. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Aenean eu leo quam. ', 'product/pd10.jpg', 4, 8, 8),
(4, 'Maecenas faucibus mollis', 'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Sed posuere consectetur est at lobortis. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.', 'product/pd11.jpg', 4, 8, 8);

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_generalseodata`
--

CREATE TABLE `adminapp_generalseodata` (
  `id` bigint(20) NOT NULL,
  `SEOTitle` varchar(100) NOT NULL,
  `SEODescription` longtext NOT NULL,
  `SEOPrimaryKeyword` varchar(255) NOT NULL,
  `SEOSecondaryKeywords` varchar(255) NOT NULL,
  `Category_id` bigint(20) NOT NULL,
  `Signup_id` bigint(20) NOT NULL,
  `ThemeImages_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_generalseodata`
--

INSERT INTO `adminapp_generalseodata` (`id`, `SEOTitle`, `SEODescription`, `SEOPrimaryKeyword`, `SEOSecondaryKeywords`, `Category_id`, `Signup_id`, `ThemeImages_id`) VALUES
(1, 'Travcountwebstore', 'Travcountwebstore', 'Travcount', 'webstore', 4, 8, 8);

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_generalservice`
--

CREATE TABLE `adminapp_generalservice` (
  `id` bigint(20) NOT NULL,
  `Description` longtext NOT NULL,
  `Image` varchar(100) NOT NULL,
  `Category_id` bigint(20) NOT NULL,
  `Signup_id` bigint(20) NOT NULL,
  `ThemeImages_id` bigint(20) NOT NULL,
  `Head` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_generaltestimonial`
--

CREATE TABLE `adminapp_generaltestimonial` (
  `id` bigint(20) NOT NULL,
  `TestimonialDescription` longtext NOT NULL,
  `TestimonialName` varchar(100) NOT NULL,
  `TestimonialImage` varchar(100) NOT NULL,
  `Category_id` bigint(20) NOT NULL,
  `Signup_id` bigint(20) NOT NULL,
  `ThemeImages_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_generaltestimonial`
--

INSERT INTO `adminapp_generaltestimonial` (`id`, `TestimonialDescription`, `TestimonialName`, `TestimonialImage`, `Category_id`, `Signup_id`, `ThemeImages_id`) VALUES
(1, 'Testimonials are often written by the business based on specific questions they ask satisfied customers. They usually show impact through before-and-after comparisons or provide specific improvement statistics.', 'Coris More', 'testimonial/about2_rwfLsdP.jpg', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_image`
--

CREATE TABLE `adminapp_image` (
  `id` bigint(20) NOT NULL,
  `Subimage` varchar(100) NOT NULL,
  `related_model_id` bigint(20) NOT NULL,
  `Subdescription` longtext NOT NULL,
  `Subhead` varchar(100) NOT NULL,
  `Vision` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_image`
--

INSERT INTO `adminapp_image` (`id`, `Subimage`, `related_model_id`, `Subdescription`, `Subhead`, `Vision`) VALUES
(1, 'about/lakeview_i6nEAo6.jpg', 1, 'Welcome to [Travel Agency Name], where we specialize in crafting tailor-made travel experiences that leave a lasting impression. As avid travelers ourselves, we understand the power of travel to inspire, enlighten, and transform. With our passion for exploration and unwavering commitment to customer satisfaction, we have been providing exceptional travel services to our valued clients for [number of years] years.', 'Creating Unforgettable Journeys Around the World', ''),
(2, 'about/about3_axUU0bN.jpg', 1, 'Welcome to [Travel Agency Name], where we specialize in crafting tailor-made travel experiences that leave a lasting impression. As avid travelers ourselves, we understand the power of travel to inspire, enlighten, and transform. With our passion for exploration and unwavering commitment to customer satisfaction, we have been providing exceptional travel services to our valued clients for [number of years] years.', 'Your Travel Dreams, Our Expertise', 'To become the leading provider of unforgettable travel experiences, inspiring wanderlust and creating lifelong memories. We strive to exceed customer expectations by offering exceptional services, personalized itineraries, and a seamless travel journey'),
(3, 'about/lakeview_i6nEAo6.jpg', 2, 'Welcome to [Tour Agency Name], where we specialize in crafting tailor-made travel experiences that leave a lasting impression. As avid travelers ourselves, we understand the power of travel to inspire, enlighten, and transform. With our passion for exploration and unwavering commitment to customer satisfaction, we have been providing exceptional travel services to our valued clients for [number of years] years.', 'Creating Unforgettable Journeys Around the World', ''),
(4, 'about/about3_axUU0bN.jpg', 2, 'Welcome to [Tour Agency Name], where we specialize in crafting tailor-made travel experiences that leave a lasting impression. As avid travelers ourselves, we understand the power of travel to inspire, enlighten, and transform. With our passion for exploration and unwavering commitment to customer satisfaction, we have been providing exceptional travel services to our valued clients for [number of years] years.', 'Your Travel Dreams, Our Expertise', 'w'),
(7, 'about/wp2303515.jpg', 13, 'Welcome to [Travel Agency Name], where we specialize in crafting tailor-made travel experiences that leave a lasting impression. As avid travelers ourselves, we understand the power of travel to inspire, enlighten, and transform. With our passion for exploration and unwavering commitment to customer satisfaction, we have been providing exceptional travel services to our valued clients for [number of years] years.', 'Creating Unforgettable Journeys Around the World', 'Vision');

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_meals`
--

CREATE TABLE `adminapp_meals` (
  `id` bigint(20) NOT NULL,
  `MealsItem` varchar(500) NOT NULL,
  `Category_id` bigint(20) NOT NULL,
  `Signup_id` bigint(20) NOT NULL,
  `ThemeImages_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_meals`
--

INSERT INTO `adminapp_meals` (`id`, `MealsItem`, `Category_id`, `Signup_id`, `ThemeImages_id`) VALUES
(1, 'Breakfast', 2, 1, 1),
(2, 'Lunch', 2, 1, 1),
(3, 'Dinner', 2, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_mealslist`
--

CREATE TABLE `adminapp_mealslist` (
  `id` bigint(20) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `MealItem` varchar(1000) NOT NULL,
  `Rate` int(11) NOT NULL,
  `Category_id` bigint(20) NOT NULL,
  `Signup_id` bigint(20) NOT NULL,
  `ThemeImages_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_mealslist`
--

INSERT INTO `adminapp_mealslist` (`id`, `Name`, `MealItem`, `Rate`, `Category_id`, `Signup_id`, `ThemeImages_id`) VALUES
(1, 'European Plan', '1|2|3', 2000, 2, 1, 1),
(2, 'Continental Plan', '1|2|3', 3000, 2, 1, 1),
(3, 'American Plan', '1|2|3', 4000, 2, 1, 1),
(4, 'Modified American Plan', '1|2|3', 5000, 2, 1, 1),
(24, 'Modified American Plan', '3', 5000, 2, 10, 11);

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_mealslist_mealsitem`
--

CREATE TABLE `adminapp_mealslist_mealsitem` (
  `id` bigint(20) NOT NULL,
  `mealslist_id` bigint(20) NOT NULL,
  `meals_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_mealslist_mealsitem`
--

INSERT INTO `adminapp_mealslist_mealsitem` (`id`, `mealslist_id`, `meals_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 2, 1),
(5, 2, 2),
(6, 2, 3),
(7, 3, 1),
(8, 3, 2),
(9, 3, 3),
(10, 4, 1),
(11, 4, 2),
(12, 4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_newgallery`
--

CREATE TABLE `adminapp_newgallery` (
  `id` bigint(20) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `GalleryImage` varchar(100) NOT NULL,
  `Category_id` bigint(20) NOT NULL,
  `Signup_id` bigint(20) NOT NULL,
  `ThemeImages_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_newgallery`
--

INSERT INTO `adminapp_newgallery` (`id`, `Title`, `GalleryImage`, `Category_id`, `Signup_id`, `ThemeImages_id`) VALUES
(15, 'Gallery1', 'gallery/1_rM1x3EN_qWroKxx.jpg', 2, 9, 9),
(16, 'Gallery2', 'gallery/7_gZpxwtl.jpg', 2, 9, 9),
(17, 'Gallery3', 'gallery/1_9dk4GzT.jpg', 2, 9, 9),
(18, 'Gallery4', 'gallery/inner-header2_XSBVaUi_BkTq8aI.jpg', 2, 9, 9),
(19, 'Gallery5', 'gallery/6_386bxBP.jpg', 2, 9, 9),
(20, 'aaaaaa', 'gallery/bg27.jpg', 2, 11, 13),
(23, 'ddddd', 'gallery/3.png', 2, 10, 11);

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_order_data`
--

CREATE TABLE `adminapp_order_data` (
  `id` bigint(20) NOT NULL,
  `Category_id` bigint(20) NOT NULL,
  `Signup_id` bigint(20) NOT NULL,
  `ThemeImages_id` bigint(20) NOT NULL,
  `Amount` varchar(300) NOT NULL,
  `Name` varchar(300) NOT NULL,
  `Order_Id` varchar(300) NOT NULL,
  `Payment_Id` varchar(300) NOT NULL,
  `Payment_Status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `adminapp_order_data`
--

INSERT INTO `adminapp_order_data` (`id`, `Category_id`, `Signup_id`, `ThemeImages_id`, `Amount`, `Name`, `Order_Id`, `Payment_Id`, `Payment_Status`) VALUES
(1, 1, 1, 1, '100', 'TravcountAdmin', 'order_ML8mNhMLbPybyl', '', 1),
(2, 1, 26, 1, '3000', '0', '0', '0', 1),
(4, 2, 10, 11, '1', 'user1', 'order_MOL41SdqMrFCpZ', 'pay_MOL4CFekFIPmhV', 1),
(5, 1, 3, 1, '1', 'user1', 'order_MOLA4AbZcKHjWN', 'pay_MOLAKIbDbCTsnC', 1),
(6, 1, 28, 1, '1', 'Rayez', 'order_MOKyoXGNn6jCJF', 'pay_MOKz1GzBFAjtYu', 1),
(7, 1, 7, 1, '1', 'user2', 'order_MPtLG3jFr5XmML', 'pay_MPtLUZwFaXyNEn', 0),
(8, 1, 25, 1, '3000', 'SMR TOURISM', 'order_MRs5abaa3JUYrd', 'pay_MRs6UqZ1dIxoPm', 1),
(9, 1, 32, 1, '1', 'rahila', 'order_MOKyoXGNn6jCJF', 'pay_MOKz1GzBFAjtYu', 1);

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_package`
--

CREATE TABLE `adminapp_package` (
  `id` bigint(20) NOT NULL,
  `PackageDate` date NOT NULL,
  `PackageCode` varchar(500) NOT NULL,
  `PackageHead` varchar(100) NOT NULL,
  `PackageDayCount` varchar(100) NOT NULL,
  `PackageShift` varchar(100) NOT NULL,
  `PackageDescription` longtext NOT NULL,
  `PackagePlaceDescription` longtext NOT NULL,
  `PackageCountry` longtext NOT NULL,
  `PackageImage` varchar(100) NOT NULL,
  `PackageBannerImage` varchar(100) NOT NULL,
  `PackageSpecial` longtext NOT NULL,
  `Featured` longtext NOT NULL,
  `PackageAdultPrice` longtext NOT NULL,
  `PackageWithoutBedPrice` longtext NOT NULL,
  `PackageWithBedPrice` longtext NOT NULL,
  `PackageInfant` longtext NOT NULL,
  `PackageInclusion` longtext NOT NULL,
  `PackageExclusion` longtext NOT NULL,
  `Category_id` bigint(20) NOT NULL,
  `Signup_id` bigint(20) NOT NULL,
  `ThemeImages_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_package`
--

INSERT INTO `adminapp_package` (`id`, `PackageDate`, `PackageCode`, `PackageHead`, `PackageDayCount`, `PackageShift`, `PackageDescription`, `PackagePlaceDescription`, `PackageCountry`, `PackageImage`, `PackageBannerImage`, `PackageSpecial`, `Featured`, `PackageAdultPrice`, `PackageWithoutBedPrice`, `PackageWithBedPrice`, `PackageInfant`, `PackageInclusion`, `PackageExclusion`, `Category_id`, `Signup_id`, `ThemeImages_id`) VALUES
(1, '0000-00-00', '#122222', 'Greece', '20', 'Day', 'Explore the diverse wonders of Greece with [Travel Agency Name]. From ancient history to modern culture, stunning landscapes to iconic landmarks, Greece has something for everyone. ', '', '', 'package/package1.jpg', '', 'on', '', '', '', '', '', '', '', 1, 1, 1),
(2, '0000-00-00', '#122223', 'Europe', '15', 'night', 'Explore the diverse wonders of Europe with [Travel Agency Name]. From ancient history to modern culture, stunning landscapes to iconic landmarks, Europe has something for everyone. ', '', '', 'package/package5.jpg', '', 'on', '', '', '', '', '', '', '', 1, 1, 1),
(3, '0000-00-00', '#122224', 'Singapore', '25', 'Day', 'Explore the diverse wonders of Singapore with [Travel Agency Name]. From ancient history to modern culture, stunning landscapes to iconic landmarks, Singapore has something.', '', '', 'package/grapes_Di8b40n.jpg', '', 'on', '', '', '', '', '', '', '', 1, 1, 1),
(4, '0000-00-00', '#122225', 'Paris', '20', 'Night', 'Explore the diverse wonders of Paris with [Travel Agency Name]. From ancient history to modern culture, stunning landscapes to iconic landmarks, Paris has something for everyone. ', '', '', 'package/package3_YOYBHwO.jpg', '', 'off', '', '', '', '', '', '', '', 1, 1, 1),
(5, '0000-00-00', '#122226', 'USA', '30', 'Day', 'VisitTheUSA is the USA official guide for traveling the United States of America. Discover here all the information you need for your American holidays.', '', '', 'package/1.webp', '', 'on', '', '', '', '', '', '', '', 1, 1, 1),
(6, '0000-00-00', '#122222', 'Greece', '20', 'Day', 'Explore the diverse wonders of Greece with [Tour Agency Name]. From ancient history to modern culture, stunning landscapes to iconic landmarks, Greece has something for everyone. ', '', '', 'package/package1.jpg', '', 'on', '', '', '', '', '', '', '', 3, 2, 22),
(7, '0000-00-00', '#122223', 'Europe', '15', 'Night', 'Explore the diverse wonders of Europe with [Tour Agency Name]. From ancient history to modern culture, stunning landscapes to iconic landmarks, Europe has something for everyone. ', '', '', 'package/package5.jpg', '', 'on', '', '', '', '', '', '', '', 3, 2, 22),
(8, '0000-00-00', '#122224', 'Singapore', '25', 'Day', 'Explore the diverse wonders of Singapore with [Tour Agency Name]. From ancient history to modern culture, stunning landscapes to iconic landmarks, Singapore has something.', '', '', 'package/grapes_Di8b40n.jpg', '', 'on', '', '', '', '', '', '', '', 3, 2, 22),
(9, '0000-00-00', '#122225', 'Paris', '20', 'Night', 'Explore the diverse wonders of Paris with [Tour Agency Name]. From ancient history to modern culture, stunning landscapes to iconic landmarks, Paris has something for everyone. ', '', '', 'package/package3_YOYBHwO.jpg', '', 'off', '', '', '', '', '', '', '', 3, 2, 22),
(10, '0000-00-00', '#122226', 'USA', '30', 'Day', 'VisitTheUSA is the USA official guide for traveling the United States of America. Discover here all the information you need for your American holidays.', '', '', 'package/1.webp', '', 'on', '', '', '', '', '', '', '', 3, 2, 22);

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_plan`
--

CREATE TABLE `adminapp_plan` (
  `id` bigint(20) NOT NULL,
  `Plan_Name` varchar(1000) NOT NULL,
  `Plan_Rate` varchar(1000) NOT NULL,
  `Category_id` bigint(20) NOT NULL,
  `ThemeImages_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_plan`
--

INSERT INTO `adminapp_plan` (`id`, `Plan_Name`, `Plan_Rate`, `Category_id`, `ThemeImages_id`) VALUES
(1, 'Website only', '3000', 1, 1),
(2, 'Website only', '3000', 1, 2),
(3, 'Website only', '3000', 2, 9),
(4, 'Website only', '3000', 2, 11),
(5, 'Website only', '3000', 2, 12),
(6, 'Website Only', '3000', 2, 13),
(7, 'Website Only', '3000', 2, 14),
(9, 'Website and Booking', '3000', 1, 19),
(10, 'Website and Booking', '3000', 1, 20),
(12, 'Website only', '3000', 1, 21),
(13, 'Website Only', '3000', 3, 22),
(14, 'Website Only', '3000', 3, 23),
(15, 'Website Only', '3000', 3, 24),
(16, 'Website Only', '3000', 3, 25);

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_property`
--

CREATE TABLE `adminapp_property` (
  `id` bigint(20) NOT NULL,
  `PropertyName` varchar(200) NOT NULL,
  `PropertyAddress` varchar(200) NOT NULL,
  `PropertyStreet` varchar(200) NOT NULL,
  `PropertyCity` varchar(200) NOT NULL,
  `PropertyDistrict` varchar(200) NOT NULL,
  `PropertyState` varchar(100) NOT NULL,
  `PropertyPincode` int(11) NOT NULL,
  `PropertyBookingType` varchar(100) NOT NULL,
  `TestimonialDescription` longtext NOT NULL,
  `TestimonialName` varchar(1000) NOT NULL,
  `PropertyActivity` varchar(1000) NOT NULL,
  `PropertyAmenity` varchar(1000) NOT NULL,
  `PropertyFacility` varchar(1000) NOT NULL,
  `PropertyImage` varchar(100) NOT NULL,
  `Category_id` bigint(20) NOT NULL,
  `Signup_id` bigint(20) NOT NULL,
  `ThemeImages_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_property`
--

INSERT INTO `adminapp_property` (`id`, `PropertyName`, `PropertyAddress`, `PropertyStreet`, `PropertyCity`, `PropertyDistrict`, `PropertyState`, `PropertyPincode`, `PropertyBookingType`, `TestimonialDescription`, `TestimonialName`, `PropertyActivity`, `PropertyAmenity`, `PropertyFacility`, `PropertyImage`, `Category_id`, `Signup_id`, `ThemeImages_id`) VALUES
(2, 'Lanka', 'Lanka', 'Karthika', 'Calicut', 'Calicut', 'Kerala', 670005, 'Offline', 'Description of resort ', 'David', '1|2|3', '1|2|3|4', '1|2', 'property/seaview.jpg', 2, 9, 9),
(5, 'Cana', 'Dwaraka', 'Karthika', 'Kannur', 'Wayanad', 'Kerala', 670005, 'OnLine', 'wwwwwwww', 'zzzzzzzzzz', '2', '2', '2|11', 'property/car1.jpg', 2, 10, 11);

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_property_propertyactivities`
--

CREATE TABLE `adminapp_property_propertyactivities` (
  `id` bigint(20) NOT NULL,
  `property_id` bigint(20) NOT NULL,
  `addactivities_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_property_propertyactivities`
--

INSERT INTO `adminapp_property_propertyactivities` (`id`, `property_id`, `addactivities_id`) VALUES
(3, 2, 1),
(4, 2, 2),
(5, 2, 3),
(11, 5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_property_propertyamenities`
--

CREATE TABLE `adminapp_property_propertyamenities` (
  `id` bigint(20) NOT NULL,
  `property_id` bigint(20) NOT NULL,
  `addamenities_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_property_propertyamenities`
--

INSERT INTO `adminapp_property_propertyamenities` (`id`, `property_id`, `addamenities_id`) VALUES
(4, 2, 1),
(3, 2, 2),
(5, 2, 3),
(6, 2, 4),
(12, 5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_property_propertyfacilities`
--

CREATE TABLE `adminapp_property_propertyfacilities` (
  `id` bigint(20) NOT NULL,
  `property_id` bigint(20) NOT NULL,
  `addfacility_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_property_propertyfacilities`
--

INSERT INTO `adminapp_property_propertyfacilities` (`id`, `property_id`, `addfacility_id`) VALUES
(1, 2, 1),
(10, 5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_resortaboutus`
--

CREATE TABLE `adminapp_resortaboutus` (
  `id` bigint(20) NOT NULL,
  `Description` longtext NOT NULL,
  `Image` varchar(100) NOT NULL,
  `Subimage` longtext DEFAULT NULL,
  `Quotes` longtext NOT NULL,
  `Heading` varchar(200) NOT NULL,
  `Facebook` varchar(100) NOT NULL,
  `Twitter` varchar(100) NOT NULL,
  `Google` varchar(100) NOT NULL,
  `Instagram` varchar(100) NOT NULL,
  `Yahoo` varchar(100) NOT NULL,
  `Category_id` bigint(20) NOT NULL,
  `Signup_id` bigint(20) NOT NULL,
  `ThemeImages_id` bigint(20) NOT NULL,
  `AboutImage` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_resortaboutus`
--

INSERT INTO `adminapp_resortaboutus` (`id`, `Description`, `Image`, `Subimage`, `Quotes`, `Heading`, `Facebook`, `Twitter`, `Google`, `Instagram`, `Yahoo`, `Category_id`, `Signup_id`, `ThemeImages_id`, `AboutImage`) VALUES
(6, 'Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam.', 'about/inner-header2_2GgOhgQ.jpg', NULL, 'eque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incid dolor sit amet, consectetur, adipisci velit', 'Awaded Resort', 'resort@fb.com', 'resort@twitter.com', 'resort@gmail.com', 'resort@instagram.com', 'resort@yahoo.com', 2, 9, 9, 'about/1_mkUxl7M.jpg'),
(9, 'rrrrrrrrr', 'about/1_DdTwNhh.webp', NULL, 'rr', 'rr', '', '', '', '', '', 2, 11, 13, 'about/lakeview_3yAPd3m.jpg'),
(10, 's', 'about/car1_2yTjUGX.jpg', NULL, 's', 's', '', '', '', '', '', 2, 10, 11, 'about/car1_HHcz9mF.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_resortdetail`
--

CREATE TABLE `adminapp_resortdetail` (
  `id` bigint(20) NOT NULL,
  `ResortName` varchar(200) NOT NULL,
  `Email` varchar(254) NOT NULL,
  `Contact` varchar(300) NOT NULL,
  `WhatsappNumber` varchar(20) NOT NULL,
  `Address` varchar(80) NOT NULL,
  `Street` varchar(80) NOT NULL,
  `City` varchar(80) NOT NULL,
  `District` varchar(80) NOT NULL,
  `State` varchar(80) NOT NULL,
  `Pincode` varchar(80) NOT NULL,
  `DomainName` varchar(80) NOT NULL,
  `Banner` varchar(100) NOT NULL,
  `Logo` varchar(100) NOT NULL,
  `WhiteLogo` varchar(100) NOT NULL,
  `Favicon` varchar(100) NOT NULL,
  `Category_id` bigint(20) NOT NULL,
  `Signup_id` bigint(20) NOT NULL,
  `ThemeImages_id` bigint(20) NOT NULL,
  `TextOnBanner` varchar(500) NOT NULL,
  `NotificationEmail` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_resortdetail`
--

INSERT INTO `adminapp_resortdetail` (`id`, `ResortName`, `Email`, `Contact`, `WhatsappNumber`, `Address`, `Street`, `City`, `District`, `State`, `Pincode`, `DomainName`, `Banner`, `Logo`, `WhiteLogo`, `Favicon`, `Category_id`, `Signup_id`, `ThemeImages_id`, `TextOnBanner`, `NotificationEmail`) VALUES
(1, 'Your Resort Name', 'webstore@travcount.com', '+919544440338|+914842388166', '+919544440338', 'Valamkottil Towers', 'Judgemukku', 'Kakkanad', 'Ernakulam', 'Kerala', '682021', 'travcountwebstore.com', 'banner/1920x920_slide1.jpg', 'logo/logohere.png', 'logo/whitelogohere.png', 'favicon/favicon_E4yCoC2.ico', 2, 9, 9, 'Your slogan will be here', 'webstore@travcount.com'),
(2, 'New Resort', 'admin@gmail.com', '9876543210', '6282599822', 'Karthika', 'Payangodanpara', 'Cochi', 'Ernakulam', 'Kerala', '670005', 'agency.com', 'banner/resorttheme.png', 'logo/logo.png', 'logo/logo.png', 'favicon/Picture1.jpg', 2, 2, 11, '', ''),
(5, 'ssssss', 'vyshnav@gmail.com', '9876543210', '33333333333', 'Karthika', 'Payangodanpara', 'Kannur', 'Thrissur', 'Kerala', '670005', 'resort.com', 'banner/lakeview_euSn0Ek.jpg', 'logo/lakeview_tgxJq4Q.jpg', 'logo/grapes_Di8b40n_1iaUmDx.jpg', 'favicon/lakeview_tgxJq4Q.jpg', 2, 11, 13, '', ''),
(6, 'New Resort', 'admin3@gmail.com', '9876543210|9876543210', '3333333', 'Karthika', 'Payangodanpara', 'Kannur', 'Kannur', 'Kerala', '670005', 'Domain', 'banner/car5.jpg', 'logo/car5.jpg', 'logo/car5_RlkvAoB.jpg', 'favicon/car6.jpg', 2, 10, 11, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_resortimage`
--

CREATE TABLE `adminapp_resortimage` (
  `id` bigint(20) NOT NULL,
  `Subhead` varchar(100) NOT NULL,
  `Subdescription` longtext NOT NULL,
  `Vision` longtext NOT NULL,
  `Subimage` varchar(100) NOT NULL,
  `related_model_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_resortimage`
--

INSERT INTO `adminapp_resortimage` (`id`, `Subhead`, `Subdescription`, `Vision`, `Subimage`, `related_model_id`) VALUES
(7, 'WE offer 24x7 service to our customer', 'Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.', 'Awesome ', 'about/video1_HQW4iXv.jpg', 6),
(8, 'WE offer luxury service to our customer', 'Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.', 'Awesome ', 'about/1_ZDBWj3T_Bh5QyG3.jpg', 6),
(11, 'Creating Unforgettable Journeys Around the World', 'rrrrrrrrrr', 'rr', 'about/lakeview_tgxJq4Q.jpg', 9),
(12, 'ss', 's', 's', 'about/car5.jpg', 10),
(13, 's', 's', 's', 'about/car6_3q8ac98.jpg', 10);

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_resorttestimonial`
--

CREATE TABLE `adminapp_resorttestimonial` (
  `id` bigint(20) NOT NULL,
  `TestimonialDescription` longtext NOT NULL,
  `TestimonialName` varchar(100) NOT NULL,
  `TestimonialImage` varchar(100) NOT NULL,
  `Category_id` bigint(20) NOT NULL,
  `Signup_id` bigint(20) NOT NULL,
  `ThemeImages_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_resorttestimonial`
--

INSERT INTO `adminapp_resorttestimonial` (`id`, `TestimonialDescription`, `TestimonialName`, `TestimonialImage`, `Category_id`, `Signup_id`, `ThemeImages_id`) VALUES
(1, 'Nemos enim ipsam voluptatem quia voluptas sit aspern atur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem.', 'Mark John', 'testimonial/7_r7S7CNH.jpg', 2, 9, 9),
(2, 'Nemo enim ipsam voluptatem quia voluptas sit aspern atur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem.', 'Sara Elizabeth', 'testimonial/8.jpg', 2, 9, 9),
(3, 'aaaa', 'a', 'testimonial/bg27.jpg', 2, 11, 13),
(8, 'wwwww', 'w', 'testimonial/car1.jpg', 2, 10, 11),
(9, 'q', 'qq', 'testimonial/car2_QJo6nU3.jpg', 2, 10, 11);

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_roomlist`
--

CREATE TABLE `adminapp_roomlist` (
  `id` bigint(20) NOT NULL,
  `RoomName` varchar(200) NOT NULL,
  `RoomCode` varchar(200) NOT NULL,
  `RoomCount` int(11) NOT NULL,
  `InitialRoomCount` int(11) NOT NULL,
  `RoomRate` varchar(200) NOT NULL,
  `RoomFacility` varchar(1000) NOT NULL,
  `RoomStatus` varchar(100) NOT NULL,
  `RoomImage` varchar(100) NOT NULL,
  `Property_id` bigint(20) NOT NULL,
  `RoomBedtype_id` bigint(20) NOT NULL,
  `Category_id` bigint(20) NOT NULL,
  `Signup_id` bigint(20) NOT NULL,
  `ThemeImages_id` bigint(20) NOT NULL,
  `RoomDescription` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_roomlist`
--

INSERT INTO `adminapp_roomlist` (`id`, `RoomName`, `RoomCode`, `RoomCount`, `InitialRoomCount`, `RoomRate`, `RoomFacility`, `RoomStatus`, `RoomImage`, `Property_id`, `RoomBedtype_id`, `Category_id`, `Signup_id`, `ThemeImages_id`, `RoomDescription`) VALUES
(15, 'Deluxe 1', '#12341221', 8, 8, '2000', '2|4', 'Active', 'room/doublebed_WYOTqLP.jpg', 2, 1, 2, 9, 9, 'Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni a voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores dolores quis.'),
(16, 'Economy ', '#12341222', 4, 4, '2000', '2|4', 'Active', 'room/kingbed_sEeblRj.jpg', 2, 2, 2, 9, 9, 'Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni a voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores dolores quis.'),
(17, 'Economy ', '#12341223', 4, 4, '2000', '2|4', 'Active', 'room/queenbed_Q705Tq2.jpg', 2, 2, 2, 9, 9, 'Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni a voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores dolores quis.'),
(18, 'Deluxe 2', '#12341223', 4, 4, '2000', '2|4', 'Active', 'room/singlebed_fSi34Am.jpg', 2, 2, 2, 9, 9, 'Nenim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni a voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores dolores quis.'),
(30, 'w', 'w', 2, 2, '22', '4', 'Active', 'room/car4_pWzn9Hk.jpg', 2, 1, 2, 10, 11, 'wwww');

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_roomlist_roomfacilities`
--

CREATE TABLE `adminapp_roomlist_roomfacilities` (
  `id` bigint(20) NOT NULL,
  `roomlist_id` bigint(20) NOT NULL,
  `addfacility_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `adminapp_roomlist_roomfacilities`
--

INSERT INTO `adminapp_roomlist_roomfacilities` (`id`, `roomlist_id`, `addfacility_id`) VALUES
(28, 15, 2),
(29, 15, 4),
(30, 16, 2),
(31, 16, 4),
(32, 17, 2),
(33, 17, 4),
(34, 18, 2),
(35, 18, 4),
(49, 30, 4);

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_seodata`
--

CREATE TABLE `adminapp_seodata` (
  `id` bigint(20) NOT NULL,
  `SEOTitle` varchar(100) NOT NULL,
  `SEODescription` longtext NOT NULL,
  `SEOPrimaryKeyword` varchar(255) NOT NULL,
  `SEOSecondaryKeywords` varchar(255) NOT NULL,
  `Category_id` bigint(20) NOT NULL,
  `Signup_id` bigint(20) NOT NULL,
  `ThemeImages_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_seodata`
--

INSERT INTO `adminapp_seodata` (`id`, `SEOTitle`, `SEODescription`, `SEOPrimaryKeyword`, `SEOSecondaryKeywords`, `Category_id`, `Signup_id`, `ThemeImages_id`) VALUES
(1, 'TravCount WebStore', 'Travel agency', 'Travcount', 'webstore|webstorefortravelagency', 1, 1, 1),
(2, 'TravCount WebStore', 'Tour Agency', 'Travcount', 'webstore|webstorefortravelagency', 3, 2, 22),
(3, '', '', '', '', 4, 8, 8),
(4, 'wssssss', 'w', 'w', 'w', 1, 26, 1);

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_service`
--

CREATE TABLE `adminapp_service` (
  `id` bigint(20) NOT NULL,
  `ServiceHead` varchar(100) NOT NULL,
  `ServiceDescription` longtext NOT NULL,
  `ServiceImage` varchar(100) NOT NULL,
  `Category_id` bigint(20) NOT NULL,
  `Signup_id` bigint(20) NOT NULL,
  `ThemeImages_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_service`
--

INSERT INTO `adminapp_service` (`id`, `ServiceHead`, `ServiceDescription`, `ServiceImage`, `Category_id`, `Signup_id`, `ThemeImages_id`) VALUES
(1, 'AIRLINE TICKETING', 'Airline tickets are important documents that confirm a passenger has a seat on a flight. The ticket includes important information about the passenger and the flight that they will take. ', 'service/airline.jpg', 1, 1, 1),
(2, 'HOTEL BOOKING', 'Hotel booking creates a hotel reservation based on the room and rate results from a Hotel Rate and Rule Search response.', 'service/hotel.jpg', 1, 1, 1),
(3, 'TOUR PACKAGE', 'Package tour is the sum total of variety of services offered to the tourists in one price, which normally is less expensive than that of each individual items. ', 'service/tour.jpg', 1, 1, 1),
(4, 'PASSPORT', 'A formal document issued by an authorized official of a country to one of its citizens that is usually necessary for exit from and reentry into the country, that allows the citizen to travel in a foreign country in accordance with visa requirements, and that requests protection for the citizen while abroad.', 'service/passport.jpg', 1, 1, 1),
(5, 'VISA STAMPING', 'Visa Stamping is a process in which visa is endorsed in the passport.', 'service/visa_stamping.jpg', 1, 1, 1),
(6, 'CRUISE BOOKING', 'This online booking engine includes a vast amount cruise line, cruise ship and cabin descriptions linked to media files & rich content', 'service/cruise.jpg', 1, 1, 1),
(7, 'TOURIST VISA', 'A tourist visa is an official document or stamp that authorizes an individual to enter a foreign country for the purpose of leisure and tourism.', 'service/tourist_visa.jpg', 1, 1, 1),
(8, 'TRAVEL INSURANCE', 'Travel insurance helps cover financial losses associated with illness, injury, accidents, flight or other transportation delays.', 'service/travel_insurance.jpg', 1, 1, 1),
(9, 'AIRLINE TICKETING', 'Airline tickets are important documents that confirm a passenger has a seat on a flight. The ticket includes important information about the passenger and the flight that they will take. ', 'service/airline.jpg', 3, 2, 22),
(10, 'HOTEL BOOKING', 'Hotel booking creates a hotel reservation based on the room and rate results from a Hotel Rate and Rule Search response.', 'service/hotel.jpg', 3, 2, 22),
(11, 'TOUR PACKAGE', 'Package tour is the sum total of variety of services offered to the tourists in one price, which normally is less expensive than that of each individual items. ', 'service/tour.jpg', 3, 2, 22),
(12, 'PASSPORT', 'A formal document issued by an authorized official of a country to one of its citizens that is usually necessary for exit from and reentry into the country, that allows the citizen to travel in a foreign country in accordance with visa requirements, and that requests protection for the citizen while abroad.', 'service/passport.jpg', 3, 2, 22),
(13, 'VISA STAMPING', 'Visa Stamping is a process in which visa is endorsed in the passport.', 'service/visa_stamping.jpg', 3, 2, 22),
(14, 'CRUISE BOOKING', 'This online booking engine includes a vast amount cruise line, cruise ship and cabin descriptions linked to media files & rich content', 'service/cruise.jpg', 3, 2, 22),
(15, 'TOURIST VISA', 'This online booking engine includes a vast amount cruise line, cruise ship and cabin descriptions linked to media files & rich content', 'service/tourist_visa.jpg', 3, 2, 22),
(16, 'TRAVEL INSURANCE', 'A tourist visa is an official document or stamp that authorizes an individual to enter a foreign country for the purpose of leisure and tourism.', 'service/travel_insurance.jpg', 3, 2, 22),
(20, 'nwwwww', 'w', 'service/car3_3wtf8Ay.jpg', 1, 26, 1),
(21, 'UAE Tourist Visa', 'Fast Visa Services', 'service/Made_with_PosterMyWall_95.jpg', 1, 25, 1),
(22, 'Airline Ticketing', 'Best Affordable Fares', 'service/peakpx_1.jpg', 1, 25, 1),
(23, 'Hotel Booking', 'For More Details Contac Us', 'service/112.jpg', 1, 25, 1),
(24, 'Visa Change By Bus', 'Inclusions - 10 Days Oman Visa // UAE Visa // Transportation // Border Fee // 1 Days Stay Free // Free Wifi', 'service/WhatsApp_Image_2023-08-25_at_20.43.03.jpeg', 1, 25, 1),
(25, 'Visa Change By Flight', 'Inclusions - Two Way Airline Ticket & Uae Visa', 'service/WhatsApp_Image_2023-08-25_at_20.43.04.jpeg', 1, 25, 1),
(26, 'Yacht Tour', 'For More Information Contact Us', 'service/yacht.png', 1, 25, 1),
(27, 'Desert Safari', 'Inclusions - 4x4 Pick & Drop // Dune Bashing // Welcome Drinks // Camel Ride // Henna Painting // International & BBQ Buffet Dinner // Tanura Dance // Belly Dance // Fire Show Etc..', 'service/109.jpg', 1, 25, 1),
(28, 'Marina Cruise', 'Inclusions -Pick & Drop // International Buffet Dinner // Tanura Dance // Music & Other Entertainments also', 'service/2.jfif', 1, 25, 1),
(29, 'Burj Khalifa Tour', 'For More Information Contact Us.', 'service/13.jpg', 1, 25, 1),
(30, 'Inbound Tours Booking', 'For More Information Contact Us.', 'service/113.jpg', 1, 25, 1),
(31, 'Dibba Musandam Tour', 'For More Information Contact us.', 'service/Musandam.png', 1, 25, 1);

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_signup`
--

CREATE TABLE `adminapp_signup` (
  `id` bigint(20) NOT NULL,
  `Category` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Contact` varchar(20) NOT NULL,
  `Email` varchar(254) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_signup`
--

INSERT INTO `adminapp_signup` (`id`, `Category`, `Name`, `Contact`, `Email`, `Password`) VALUES
(1, 1, 'TravcountAdmin', '+919544440338', 'admin1@gmail.com', '1111'),
(2, 3, 'TravcountAdmin', '+919544440338', 'admin3@gmail.com', '1111'),
(3, 1, 'new admin', '99999999', 'admin6@gmail.com', '1111'),
(4, 1, 'new admin', '99999999', 'admin7@gmail.com', '1111'),
(5, 1, 'user1', '111111111', 'a@gmail.com', '1111'),
(6, 1, 'user2', '2222222222', 'amruthajun@gmail.com', '1111'),
(7, 4, 'new user', '111111111', 'amrutha@gmail.com', '1111'),
(8, 4, 'amrutha', '99999999', 'amrutha91@gmail.com', '1111'),
(9, 2, 'adithi rao', '99999999', 'a91jun@gmail.com', '1111'),
(10, 2, 'New Resort', '99999999', 'amruta91@gmail.com', '1111'),
(11, 2, 'newwww', '99999999', 'amruth91un@gmail.com', '1111'),
(23, 1, 'amrutha', '99999999', 'amrutha91', '1111'),
(24, 1, 'AR SUPER TRAVELS PRIVATE LIMITED', '9941000994', 'arsupertravels@gmail.com', 'Tamil@123'),
(25, 1, 'SMR TOURISM', '+971508961043', 'smrtourismdubai@gmail.com', 'Smr@2023'),
(26, 1, 'amrutha', '99999999', 'amruta91jun@gmail.com', '1111'),
(28, 1, 'Rayez', '88999', 'rayeezpp@outlook.com', '112233'),
(29, 1, 'Rayeez', '6282599822', 'rayeez@travcount.com', '1234567'),
(30, 1, 'Shadiq', '9033239989', 'care.flyintl@gmail.com', 'Shadiq2309'),
(31, 3, 'amrutha', '99999999', 'amrutha91jun@gmail.com', '1111'),
(32, 1, 'rahilakv2001@gmail.com', '7902591285', 'rahilakv2001@gmail.com', '12345678'),
(33, 1, 'MANSOOR', '9741893319', 'travelbee.img@gmail.com', 'Msr@123'),
(34, 1, 'TRAVRAYS', '8547046526', 'travraystravels@gmail.com', '12345678'),
(35, 1, 'Shivam Kumar Pathak', '9588101574', 'admin@travelcreators.co.in', 'Travel@123');

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_specialday`
--

CREATE TABLE `adminapp_specialday` (
  `id` bigint(20) NOT NULL,
  `From_date` date NOT NULL,
  `To_date` date NOT NULL,
  `Remarks` varchar(200) NOT NULL,
  `Category_id` bigint(20) NOT NULL,
  `Signup_id` bigint(20) NOT NULL,
  `ThemeImages_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_specialday`
--

INSERT INTO `adminapp_specialday` (`id`, `From_date`, `To_date`, `Remarks`, `Category_id`, `Signup_id`, `ThemeImages_id`) VALUES
(1, '2023-05-10', '2023-05-15', 'Vishu', 2, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_specialrate`
--

CREATE TABLE `adminapp_specialrate` (
  `id` bigint(20) NOT NULL,
  `Tariff_Id` int(11) NOT NULL,
  `From_Date` date NOT NULL,
  `To_Date` date NOT NULL,
  `Single_Rate` varchar(500) NOT NULL,
  `Double_Rate` varchar(500) NOT NULL,
  `Child_Rate` varchar(500) NOT NULL,
  `Category_id` bigint(20) NOT NULL,
  `Signup_id` bigint(20) NOT NULL,
  `ThemeImages_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_tariff`
--

CREATE TABLE `adminapp_tariff` (
  `id` bigint(20) NOT NULL,
  `SingleSpecialRate` int(11) NOT NULL,
  `SingleWeekendRate` int(11) NOT NULL,
  `SingleWeekdayRate` int(11) NOT NULL,
  `SingleSpecialDiscountRate` int(11) NOT NULL,
  `DoubleSpecialRate` int(11) NOT NULL,
  `DoubleWeekendRate` int(11) NOT NULL,
  `DoubleWeekdayRate` int(11) NOT NULL,
  `DoubleSpecialDiscountRate` int(11) NOT NULL,
  `ChildSpecialRate` int(11) NOT NULL,
  `ChildWeekendRate` int(11) NOT NULL,
  `ChildWeekdayRate` int(11) NOT NULL,
  `ChildSpecialDiscountRate` int(11) NOT NULL,
  `TravelAgencyCommission` int(11) NOT NULL,
  `RoomList_id` bigint(20) NOT NULL,
  `Category_id` bigint(20) NOT NULL,
  `Signup_id` bigint(20) NOT NULL,
  `ThemeImages_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_tariff`
--

INSERT INTO `adminapp_tariff` (`id`, `SingleSpecialRate`, `SingleWeekendRate`, `SingleWeekdayRate`, `SingleSpecialDiscountRate`, `DoubleSpecialRate`, `DoubleWeekendRate`, `DoubleWeekdayRate`, `DoubleSpecialDiscountRate`, `ChildSpecialRate`, `ChildWeekendRate`, `ChildWeekdayRate`, `ChildSpecialDiscountRate`, `TravelAgencyCommission`, `RoomList_id`, `Category_id`, `Signup_id`, `ThemeImages_id`) VALUES
(1, 2, 1400, 1200, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 15, 2, 10, 11);

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_testimonial`
--

CREATE TABLE `adminapp_testimonial` (
  `id` bigint(20) NOT NULL,
  `TestimonialDescription` longtext NOT NULL,
  `TestimonialName` varchar(100) NOT NULL,
  `TestimonialImage` varchar(100) NOT NULL,
  `Category_id` bigint(20) NOT NULL,
  `Signup_id` bigint(20) NOT NULL,
  `ThemeImages_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_testimonial`
--

INSERT INTO `adminapp_testimonial` (`id`, `TestimonialDescription`, `TestimonialName`, `TestimonialImage`, `Category_id`, `Signup_id`, `ThemeImages_id`) VALUES
(1, 'Hi, my name is Sarah Thompson, and I\'ve been a small business owner for over a decade. I wanted to share my experience with ABC Marketing Services, as they have truly transformed my business', 'Sarah Thompson', 'testimonial/women2.jpg', 1, 1, 1),
(2, 'Hi, my name is David, and I\'ve been a small business owner for over a decade. I wanted to share my experience with ABC Marketing Services, as they have truly transformed my business', 'David', 'testimonial/1.jpg', 1, 1, 1),
(3, 'Hi, my name is Sarah Thompson, and I\'ve been a small business owner for over a decade. I wanted to share my experience with ABC Marketing Services, as they have truly transformed my business', 'Sarah Thompson', 'testimonial/women2.jpg', 3, 2, 22),
(4, 'Hi, my name is David, and I\'ve been a small business owner for over a decade. I wanted to share my experience with ABC Marketing Services, as they have truly transformed my business', 'David', 'testimonial/step.png', 3, 2, 22);

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_testimonialimage`
--

CREATE TABLE `adminapp_testimonialimage` (
  `id` bigint(20) NOT NULL,
  `TestimonialImage` varchar(100) NOT NULL,
  `related_model_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_testimonialimage`
--

INSERT INTO `adminapp_testimonialimage` (`id`, `TestimonialImage`, `related_model_id`) VALUES
(1, 'testimonial/women2.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_themeimages`
--

CREATE TABLE `adminapp_themeimages` (
  `id` bigint(20) NOT NULL,
  `Theme_Image` varchar(100) NOT NULL,
  `Theme_Name` varchar(100) NOT NULL,
  `Background_Image` varchar(100) NOT NULL,
  `Category_id` bigint(20) NOT NULL,
  `Index_Image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminapp_themeimages`
--

INSERT INTO `adminapp_themeimages` (`id`, `Theme_Image`, `Theme_Name`, `Background_Image`, `Category_id`, `Index_Image`) VALUES
(1, 'themes/travel1.png', 'travel1', 'themes/slider2.jpg', 1, 'themes/scrolling_pic_qB4fU4K.png'),
(2, 'themes/travel2.png', 'travel2', 'themes/slider2.jpg', 1, 'themes/scrolling_pic2.png'),
(8, 'themes/general1.png', 'general1', 'themes/bg12.jpg', 4, 'themes/scrolling_pic3.png'),
(9, 'themes/resort1.png', 'resort1', 'themes/1920x920_slide1.jpg', 2, 'themes/scrolling_pic3.png'),
(11, 'themes/resort2.png', 'resort2', 'themes/6.jpg', 2, 'themes/scrolling_pic3.png'),
(12, 'themes/resort3.png', 'resort3', 'themes/1.jpg', 2, 'themes/scrolling_pic3.png'),
(13, 'themes/resort4.png', 'resort4', 'themes/9.jpg', 2, 'themes/scrolling_pic3.png'),
(14, 'themes/resort5.png', 'resort5', 'themes/6_qZOHqEf.jpg', 2, 'themes/scrolling_pic3.png'),
(19, 'themes/theme3.png', 'travel3', 'themes/slider2.jpg', 1, 'themes/scrolling_pic3.png'),
(20, 'themes/theme4.png', 'travel4', 'themes/slider2.jpg', 1, 'themes/scrolling_pic3.png'),
(21, 'themes/theme5_IYkOZrF.png', 'travel5', 'themes/slider2.jpg', 1, 'themes/scrolling_pic5.png'),
(22, 'themes/tour1.png', 'tour1', 'themes/slider2.jpg', 3, 'themes/scrolling_pic.png'),
(23, 'themes/tour1_ETO3Ds6.png', 'tour2', 'themes/slider2.jpg', 3, 'themes/scrolling_pic_QdTW92d.png'),
(24, 'themes/tour3.png', 'tour3', 'themes/slider2.jpg', 3, 'themes/scrolling_pic_5uU4xoF.png'),
(25, 'themes/tour4.png', 'tour4', 'themes/slider2.jpg', 3, 'themes/scrolling_pic_urCJv6x.png');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(25, 'Can add about us', 7, 'add_aboutus'),
(26, 'Can change about us', 7, 'change_aboutus'),
(27, 'Can delete about us', 7, 'delete_aboutus'),
(28, 'Can view about us', 7, 'view_aboutus'),
(29, 'Can add add activities', 8, 'add_addactivities'),
(30, 'Can change add activities', 8, 'change_addactivities'),
(31, 'Can delete add activities', 8, 'delete_addactivities'),
(32, 'Can view add activities', 8, 'view_addactivities'),
(33, 'Can add add amenities', 9, 'add_addamenities'),
(34, 'Can change add amenities', 9, 'change_addamenities'),
(35, 'Can delete add amenities', 9, 'delete_addamenities'),
(36, 'Can view add amenities', 9, 'view_addamenities'),
(37, 'Can add add bed type', 10, 'add_addbedtype'),
(38, 'Can change add bed type', 10, 'change_addbedtype'),
(39, 'Can delete add bed type', 10, 'delete_addbedtype'),
(40, 'Can view add bed type', 10, 'view_addbedtype'),
(41, 'Can add add facility', 11, 'add_addfacility'),
(42, 'Can change add facility', 11, 'change_addfacility'),
(43, 'Can delete add facility', 11, 'delete_addfacility'),
(44, 'Can view add facility', 11, 'view_addfacility'),
(45, 'Can add add floor', 12, 'add_addfloor'),
(46, 'Can change add floor', 12, 'change_addfloor'),
(47, 'Can delete add floor', 12, 'delete_addfloor'),
(48, 'Can view add floor', 12, 'view_addfloor'),
(49, 'Can add add views', 13, 'add_addviews'),
(50, 'Can change add views', 13, 'change_addviews'),
(51, 'Can delete add views', 13, 'delete_addviews'),
(52, 'Can view add views', 13, 'view_addviews'),
(53, 'Can add blackout day', 14, 'add_blackoutday'),
(54, 'Can change blackout day', 14, 'change_blackoutday'),
(55, 'Can delete blackout day', 14, 'delete_blackoutday'),
(56, 'Can view blackout day', 14, 'view_blackoutday'),
(57, 'Can add cancellation policy', 15, 'add_cancellationpolicy'),
(58, 'Can change cancellation policy', 15, 'change_cancellationpolicy'),
(59, 'Can delete cancellation policy', 15, 'delete_cancellationpolicy'),
(60, 'Can view cancellation policy', 15, 'view_cancellationpolicy'),
(61, 'Can add category', 16, 'add_category'),
(62, 'Can change category', 16, 'change_category'),
(63, 'Can delete category', 16, 'delete_category'),
(64, 'Can view category', 16, 'view_category'),
(65, 'Can add concierge list', 17, 'add_conciergelist'),
(66, 'Can change concierge list', 17, 'change_conciergelist'),
(67, 'Can delete concierge list', 17, 'delete_conciergelist'),
(68, 'Can view concierge list', 17, 'view_conciergelist'),
(69, 'Can add meals', 18, 'add_meals'),
(70, 'Can change meals', 18, 'change_meals'),
(71, 'Can delete meals', 18, 'delete_meals'),
(72, 'Can view meals', 18, 'view_meals'),
(73, 'Can add property', 19, 'add_property'),
(74, 'Can change property', 19, 'change_property'),
(75, 'Can delete property', 19, 'delete_property'),
(76, 'Can view property', 19, 'view_property'),
(77, 'Can add room list', 20, 'add_roomlist'),
(78, 'Can change room list', 20, 'change_roomlist'),
(79, 'Can delete room list', 20, 'delete_roomlist'),
(80, 'Can view room list', 20, 'view_roomlist'),
(81, 'Can add signup', 21, 'add_signup'),
(82, 'Can change signup', 21, 'change_signup'),
(83, 'Can delete signup', 21, 'delete_signup'),
(84, 'Can view signup', 21, 'view_signup'),
(85, 'Can add special day', 22, 'add_specialday'),
(86, 'Can change special day', 22, 'change_specialday'),
(87, 'Can delete special day', 22, 'delete_specialday'),
(88, 'Can view special day', 22, 'view_specialday'),
(89, 'Can add special rate', 23, 'add_specialrate'),
(90, 'Can change special rate', 23, 'change_specialrate'),
(91, 'Can delete special rate', 23, 'delete_specialrate'),
(92, 'Can view special rate', 23, 'view_specialrate'),
(93, 'Can add theme images', 24, 'add_themeimages'),
(94, 'Can change theme images', 24, 'change_themeimages'),
(95, 'Can delete theme images', 24, 'delete_themeimages'),
(96, 'Can view theme images', 24, 'view_themeimages'),
(97, 'Can add testimonial', 25, 'add_testimonial'),
(98, 'Can change testimonial', 25, 'change_testimonial'),
(99, 'Can delete testimonial', 25, 'delete_testimonial'),
(100, 'Can view testimonial', 25, 'view_testimonial'),
(101, 'Can add tariff', 26, 'add_tariff'),
(102, 'Can change tariff', 26, 'change_tariff'),
(103, 'Can delete tariff', 26, 'delete_tariff'),
(104, 'Can view tariff', 26, 'view_tariff'),
(105, 'Can add service', 27, 'add_service'),
(106, 'Can change service', 27, 'change_service'),
(107, 'Can delete service', 27, 'delete_service'),
(108, 'Can view service', 27, 'view_service'),
(109, 'Can add seo data', 28, 'add_seodata'),
(110, 'Can change seo data', 28, 'change_seodata'),
(111, 'Can delete seo data', 28, 'delete_seodata'),
(112, 'Can view seo data', 28, 'view_seodata'),
(113, 'Can add package', 29, 'add_package'),
(114, 'Can change package', 29, 'change_package'),
(115, 'Can delete package', 29, 'delete_package'),
(116, 'Can view package', 29, 'view_package'),
(117, 'Can add meals list', 30, 'add_mealslist'),
(118, 'Can change meals list', 30, 'change_mealslist'),
(119, 'Can delete meals list', 30, 'delete_mealslist'),
(120, 'Can view meals list', 30, 'view_mealslist'),
(121, 'Can add image', 31, 'add_image'),
(122, 'Can change image', 31, 'change_image'),
(123, 'Can delete image', 31, 'delete_image'),
(124, 'Can view image', 31, 'view_image'),
(125, 'Can add director profile', 32, 'add_directorprofile'),
(126, 'Can change director profile', 32, 'change_directorprofile'),
(127, 'Can delete director profile', 32, 'delete_directorprofile'),
(128, 'Can view director profile', 32, 'view_directorprofile'),
(129, 'Can add booking', 33, 'add_booking'),
(130, 'Can change booking', 33, 'change_booking'),
(131, 'Can delete booking', 33, 'delete_booking'),
(132, 'Can view booking', 33, 'view_booking'),
(133, 'Can add agency detail', 34, 'add_agencydetail'),
(134, 'Can change agency detail', 34, 'change_agencydetail'),
(135, 'Can delete agency detail', 34, 'delete_agencydetail'),
(136, 'Can view agency detail', 34, 'view_agencydetail'),
(137, 'Can add general testimonial', 35, 'add_generaltestimonial'),
(138, 'Can change general testimonial', 35, 'change_generaltestimonial'),
(139, 'Can delete general testimonial', 35, 'delete_generaltestimonial'),
(140, 'Can view general testimonial', 35, 'view_generaltestimonial'),
(141, 'Can add general image', 36, 'add_generalimage'),
(142, 'Can change general image', 36, 'change_generalimage'),
(143, 'Can delete general image', 36, 'delete_generalimage'),
(144, 'Can view general image', 36, 'view_generalimage'),
(145, 'Can add general service', 37, 'add_generalservice'),
(146, 'Can change general service', 37, 'change_generalservice'),
(147, 'Can delete general service', 37, 'delete_generalservice'),
(148, 'Can view general service', 37, 'view_generalservice'),
(149, 'Can add general about us', 38, 'add_generalaboutus'),
(150, 'Can change general about us', 38, 'change_generalaboutus'),
(151, 'Can delete general about us', 38, 'delete_generalaboutus'),
(152, 'Can view general about us', 38, 'view_generalaboutus'),
(153, 'Can add general director profile', 39, 'add_generaldirectorprofile'),
(154, 'Can change general director profile', 39, 'change_generaldirectorprofile'),
(155, 'Can delete general director profile', 39, 'delete_generaldirectorprofile'),
(156, 'Can view general director profile', 39, 'view_generaldirectorprofile'),
(157, 'Can add general seo data', 40, 'add_generalseodata'),
(158, 'Can change general seo data', 40, 'change_generalseodata'),
(159, 'Can delete general seo data', 40, 'delete_generalseodata'),
(160, 'Can view general seo data', 40, 'view_generalseodata'),
(161, 'Can add general company detail', 41, 'add_generalcompanydetail'),
(162, 'Can change general company detail', 41, 'change_generalcompanydetail'),
(163, 'Can delete general company detail', 41, 'delete_generalcompanydetail'),
(164, 'Can view general company detail', 41, 'view_generalcompanydetail'),
(165, 'Can add general product', 42, 'add_generalproduct'),
(166, 'Can change general product', 42, 'change_generalproduct'),
(167, 'Can delete general product', 42, 'delete_generalproduct'),
(168, 'Can view general product', 42, 'view_generalproduct'),
(169, 'Can add resort detail', 43, 'add_resortdetail'),
(170, 'Can change resort detail', 43, 'change_resortdetail'),
(171, 'Can delete resort detail', 43, 'delete_resortdetail'),
(172, 'Can view resort detail', 43, 'view_resortdetail'),
(173, 'Can add resort about us', 44, 'add_resortaboutus'),
(174, 'Can change resort about us', 44, 'change_resortaboutus'),
(175, 'Can delete resort about us', 44, 'delete_resortaboutus'),
(176, 'Can view resort about us', 44, 'view_resortaboutus'),
(177, 'Can add resort image', 45, 'add_resortimage'),
(178, 'Can change resort image', 45, 'change_resortimage'),
(179, 'Can delete resort image', 45, 'delete_resortimage'),
(180, 'Can view resort image', 45, 'view_resortimage'),
(181, 'Can add resort gallery', 46, 'add_resortgallery'),
(182, 'Can change resort gallery', 46, 'change_resortgallery'),
(183, 'Can delete resort gallery', 46, 'delete_resortgallery'),
(184, 'Can view resort gallery', 46, 'view_resortgallery'),
(185, 'Can add gallery', 47, 'add_gallery'),
(186, 'Can change gallery', 47, 'change_gallery'),
(187, 'Can delete gallery', 47, 'delete_gallery'),
(188, 'Can view gallery', 47, 'view_gallery'),
(189, 'Can add new gallery', 48, 'add_newgallery'),
(190, 'Can change new gallery', 48, 'change_newgallery'),
(191, 'Can delete new gallery', 48, 'delete_newgallery'),
(192, 'Can view new gallery', 48, 'view_newgallery'),
(193, 'Can add resort testimonial', 49, 'add_resorttestimonial'),
(194, 'Can change resort testimonial', 49, 'change_resorttestimonial'),
(195, 'Can delete resort testimonial', 49, 'delete_resorttestimonial'),
(196, 'Can view resort testimonial', 49, 'view_resorttestimonial'),
(197, 'Can add plan', 50, 'add_plan'),
(198, 'Can change plan', 50, 'change_plan'),
(199, 'Can delete plan', 50, 'delete_plan'),
(200, 'Can view plan', 50, 'view_plan'),
(201, 'Can add order_ data', 51, 'add_order_data'),
(202, 'Can change order_ data', 51, 'change_order_data'),
(203, 'Can delete order_ data', 51, 'delete_order_data'),
(204, 'Can view order_ data', 51, 'view_order_data');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(7, 'adminapp', 'aboutus'),
(8, 'adminapp', 'addactivities'),
(9, 'adminapp', 'addamenities'),
(10, 'adminapp', 'addbedtype'),
(11, 'adminapp', 'addfacility'),
(12, 'adminapp', 'addfloor'),
(13, 'adminapp', 'addviews'),
(34, 'adminapp', 'agencydetail'),
(14, 'adminapp', 'blackoutday'),
(33, 'adminapp', 'booking'),
(15, 'adminapp', 'cancellationpolicy'),
(16, 'adminapp', 'category'),
(17, 'adminapp', 'conciergelist'),
(32, 'adminapp', 'directorprofile'),
(47, 'adminapp', 'gallery'),
(38, 'adminapp', 'generalaboutus'),
(41, 'adminapp', 'generalcompanydetail'),
(39, 'adminapp', 'generaldirectorprofile'),
(36, 'adminapp', 'generalimage'),
(42, 'adminapp', 'generalproduct'),
(40, 'adminapp', 'generalseodata'),
(37, 'adminapp', 'generalservice'),
(35, 'adminapp', 'generaltestimonial'),
(31, 'adminapp', 'image'),
(18, 'adminapp', 'meals'),
(30, 'adminapp', 'mealslist'),
(48, 'adminapp', 'newgallery'),
(51, 'adminapp', 'order_data'),
(29, 'adminapp', 'package'),
(50, 'adminapp', 'plan'),
(19, 'adminapp', 'property'),
(44, 'adminapp', 'resortaboutus'),
(43, 'adminapp', 'resortdetail'),
(46, 'adminapp', 'resortgallery'),
(45, 'adminapp', 'resortimage'),
(49, 'adminapp', 'resorttestimonial'),
(20, 'adminapp', 'roomlist'),
(28, 'adminapp', 'seodata'),
(27, 'adminapp', 'service'),
(21, 'adminapp', 'signup'),
(22, 'adminapp', 'specialday'),
(23, 'adminapp', 'specialrate'),
(26, 'adminapp', 'tariff'),
(25, 'adminapp', 'testimonial'),
(24, 'adminapp', 'themeimages'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-05-30 10:26:07.948384'),
(2, 'auth', '0001_initial', '2023-05-30 10:26:14.761920'),
(3, 'admin', '0001_initial', '2023-05-30 10:26:16.091212'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-05-30 10:26:16.109485'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-05-30 10:26:16.369497'),
(6, 'adminapp', '0001_initial', '2023-05-30 10:26:37.470869'),
(7, 'contenttypes', '0002_remove_content_type_name', '2023-05-30 10:26:37.605565'),
(8, 'auth', '0002_alter_permission_name_max_length', '2023-05-30 10:26:37.668135'),
(9, 'auth', '0003_alter_user_email_max_length', '2023-05-30 10:26:37.695799'),
(10, 'auth', '0004_alter_user_username_opts', '2023-05-30 10:26:37.746971'),
(11, 'auth', '0005_alter_user_last_login_null', '2023-05-30 10:26:37.798777'),
(12, 'auth', '0006_require_contenttypes_0002', '2023-05-30 10:26:37.805284'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2023-05-30 10:26:37.822731'),
(14, 'auth', '0008_alter_user_username_max_length', '2023-05-30 10:26:37.852650'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2023-05-30 10:26:37.879287'),
(16, 'auth', '0010_alter_group_name_max_length', '2023-05-30 10:26:37.903465'),
(17, 'auth', '0011_update_proxy_permissions', '2023-05-30 10:26:37.945875'),
(18, 'auth', '0012_alter_user_first_name_max_length', '2023-05-30 10:26:37.968057'),
(19, 'sessions', '0001_initial', '2023-05-30 10:26:38.015589'),
(20, 'adminapp', '0002_generaltestimonial_generalservice_generalseodata_and_more', '2023-05-31 11:23:35.289486'),
(21, 'adminapp', '0003_remove_aboutus_subdescription_remove_aboutus_subhead_and_more', '2023-05-31 11:39:00.322882'),
(22, 'adminapp', '0004_alter_generalimage_related_model', '2023-06-12 06:16:46.255082'),
(23, 'adminapp', '0005_generalcompanydetail', '2023-06-12 08:54:12.770379'),
(24, 'adminapp', '0006_rename_agencyname_generalcompanydetail_companyname', '2023-06-12 09:05:10.995454'),
(25, 'adminapp', '0007_generalimage_subdescription_generalimage_subhead_and_more', '2023-06-15 13:24:33.088511'),
(26, 'adminapp', '0008_remove_generalaboutus_subdescription_and_more', '2023-06-16 04:48:11.979460'),
(27, 'adminapp', '0009_generalproduct', '2023-06-16 13:46:37.061275'),
(28, 'adminapp', '0010_rename_productdescription_generalproduct_description_and_more', '2023-06-17 06:43:19.897050'),
(29, 'adminapp', '0011_resortdetail', '2023-06-19 11:08:32.389894'),
(30, 'adminapp', '0012_resortaboutus_resortimage', '2023-06-21 04:54:09.908218'),
(31, 'adminapp', '0013_resortaboutus_aboutimage', '2023-06-21 06:31:10.153763'),
(34, 'adminapp', '0014_newgallery', '2023-06-21 09:52:33.080728'),
(35, 'adminapp', '0015_remove_newgallery_category_remove_newgallery_signup_and_more', '2023-06-21 09:58:56.039870'),
(36, 'adminapp', '0016_newgallery_category_newgallery_signup_and_more', '2023-06-21 10:01:29.489284'),
(37, 'adminapp', '0017_resorttestimonial', '2023-06-21 11:32:37.565979'),
(38, 'adminapp', '0018_addviews_category_addviews_signup_and_more', '2023-06-22 04:42:05.531038'),
(39, 'adminapp', '0019_addactivities_category_addactivities_signup_and_more', '2023-06-22 06:06:45.785251'),
(40, 'adminapp', '0020_addactivities_activityicon_and_more', '2023-06-22 06:32:48.676444'),
(41, 'adminapp', '0021_addbedtype_category_addbedtype_signup_and_more', '2023-06-22 07:11:16.065972'),
(42, 'adminapp', '0022_addamenities_category_addamenities_signup_and_more', '2023-06-22 07:27:35.984323'),
(43, 'adminapp', '0023_roomlist_roomdescription', '2023-06-23 05:10:14.480241'),
(44, 'adminapp', '0024_alter_addfacility_facility_image', '2023-06-23 10:04:47.204940'),
(45, 'adminapp', '0025_alter_signup_category', '2023-06-27 08:33:20.676347'),
(46, 'adminapp', '0026_alter_signup_category', '2023-06-27 08:42:55.483669'),
(47, 'adminapp', '0027_remove_themeimages_theme_rate_plan', '2023-06-30 11:32:19.416963'),
(48, 'adminapp', '0028_agencydetail_notificationemail', '2023-07-19 11:01:44.928307'),
(49, 'adminapp', '0029_remove_aboutus_yahoo', '2023-07-31 09:31:30.328849'),
(50, 'adminapp', '0030_order_data', '2023-08-01 09:57:43.112228'),
(51, 'adminapp', '0031_auto_20230801_1006', '2023-08-01 10:06:15.419811'),
(52, 'adminapp', '0032_auto_20230802_0729', '2023-08-02 07:29:41.714721'),
(53, 'adminapp', '0033_order_data_payment_id', '2023-08-02 07:42:05.192825'),
(54, 'adminapp', '0034_order_data_payment_status', '2023-08-04 08:07:40.343956'),
(55, 'adminapp', '0035_rename_image_aboutus_bannerimage', '2023-08-07 06:10:59.792830'),
(56, 'adminapp', '0036_themeimages_index_image', '2023-08-14 06:36:24.183441'),
(57, 'adminapp', '0037_alter_themeimages_index_image', '2023-08-14 06:53:07.045838'),
(58, 'adminapp', '0038_agencydetail_textonbanner', '2023-08-25 09:32:02.503886'),
(59, 'adminapp', '0002_resortdetail_textonbanner', '2023-09-05 09:01:35.900905'),
(60, 'adminapp', '0003_resortdetail_notificationemail', '2023-09-08 04:48:47.432626');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('02etagnam6dgdgju5bcnpy3so2ox98nu', 'eyJjaWQiOjEsInVpZCI6MSwidGlkIjoyMH0:1qZVPY:dFCJBFbpmkoOETthxPMBnUlSl2sgniLwU_sJVFIn44U', '2023-08-25 12:55:32.501596'),
('02kb8rqrzkfzpw1kya7yq9hymkvuckfd', 'eyJjaWQiOjIsInVpZCI6MTAsInRpZCI6MTF9:1qdTZf:NEcRSJ3-aWEJ2sIYxgZ0HzQXztKEaxkpPXAnsN3zayw', '2023-09-05 11:46:23.263067'),
('03ejeiqhs5ur5xtm5iubvgp0shcwpvsl', 'eyJ0aWQiOjksImNpZCI6Mn0:1qM0q2:uDRbyNtt_DtlqFm0bMpQ06yKP1f0oAhISRs1A9MNlg0', '2023-07-19 07:39:06.300929'),
('04bu15sys1y7zcck2j714ihj9smf2xte', 'eyJ0aWQiOjEsImNpZCI6MX0:1qQJXc:etE75mrHClEzukn13PHJolBinTvyNBWAYBMFPQpLYTU', '2023-07-31 04:25:52.182992'),
('04fk3rowcqdny4vbqeyxzqccskrze1p3', 'eyJjaWQiOjIsInVpZCI6OX0:1qFTcV:XTlbX8B5Q3DJA47tqlDg_Qdno0gE-jm8E8FEifdLQ68', '2023-07-01 06:58:07.987786'),
('04ljg8a4b20hinve6502fy66qs3uiooc', 'eyJ0aWQiOjEsImNpZCI6MX0:1qck1K:skoNoke0b0LknrwfqCgAgQtATdVZgNg1Vl5JB9ETlU8', '2023-09-03 11:07:54.341887'),
('06jp9kx0nr8uxggalxwlnbtoq6wp0u6z', 'eyJjaWQiOjEsInVpZCI6MywidGlkIjoxfQ:1qGutA:ywUulo0A6pQJVeuRCLMN-kuOj1uZFj8NOup_i2gpjis', '2023-07-05 06:17:16.712050'),
('09qx2tmmq12duz5zicdxtikb2n836hmv', 'eyJ0aWQiOjEsImNpZCI6MX0:1qZth8:D-9exvaxiPAh11IYWvBBY7JJO6VVh4nvKqDXmXNrnJo', '2023-08-26 14:51:18.418849'),
('0bgkd5uexwmvzdbls02p8dj9s65jpqnc', 'eyJ0aWQiOjksImNpZCI6Mn0:1qLsbU:aJ0XiXQg6TU0MNw8HkkB1pFxf9IGE8abs1wXrg9wxHE', '2023-07-18 22:51:32.696950'),
('0g29bae6yf4oh3np8jqej8gwlnsw02ui', 'eyJ0aWQiOjEsImNpZCI6MX0:1qc1yS:P-R22jNmCpJIxHzE_FSwutqdm4tqw-e8GzXI3URILOI', '2023-09-01 12:06:00.650759'),
('0gkeen95takwtf5xh58akp9lvwhpjzll', 'eyJ0aWQiOjEsImNpZCI6MX0:1qQMeR:i6VhCmr3v2uCl7YpmRHmUJbznz68ORRjXqWdTHYCJNI', '2023-07-31 07:45:07.965023'),
('0hk94w93bejsf4cl5bzitrxevfkkm2lk', '.eJxFjdEKwjAMRf8lz0PokMH65J9I6OKs2GZkqSLiv3snivclcO5J8iT1hWKP7IeOErvMag-KoaPKRSgSF2t-ZkKr1Tk52PgNoBTO1782hkurh3mDu6QFwsLreleb4ATkt3K8ieVTFnC3Jriep8_bts1-eL0BkbcwUQ:1qSGYb:LgSXVJtoGziOyKmT1B4yb9Cbtm9cGF_g1GYzt4oYXCY', '2023-08-05 13:38:57.402239'),
('0iw8s0bl28io5865lwdxxzm9jtir94v6', 'eyJ0aWQiOjgsImNpZCI6NH0:1qINI4:tIrzzu2-3B9jMBfICmVZqr529Zv1nij5ApCmcSUWZgQ', '2023-07-09 06:49:00.550642'),
('0k9va6dee3bri57h8t9mmfu6a7lg3mon', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPJhH:-Oal9LE0xE_dlMZ6T4tuhvMu1KeSWdjq6rVuHjwPNPQ', '2023-07-28 10:23:43.540846'),
('0nbomz47pyp6auyfid7bqvr83ujkipke', 'eyJ0aWQiOjEsImNpZCI6MX0:1qbvyx:k6yggZezn2VRj5ennRK1CkyK1TAkESVdZY_EIYQCK3U', '2023-09-01 05:42:07.320707'),
('0pw37vwodzwq1jevqmq6lzpfaj5utcuu', 'eyJ0aWQiOjEsImNpZCI6MX0:1qP3IS:cGVQ6EqPlNSCf3OovvzyqVOvwmpbSrzoo5pp3lVJHLA', '2023-07-27 16:53:00.837895'),
('0rhb1hhk37ahyfwusttq3bwb6kpgamrz', '.eJwdykEKwjAQRuG7_OsiTpgozapn6A2GOBTBdEIaKFW8u1O333sfWK9II19HigOydF2sHUg0YJWiSJjlUH3Do61dcnfiO3OMfIuuWuT5cmv_rdZpOeGSrXissm27tYd3Igoh4PsDuKwimw:1qZlSQ:XHcRfMhVyo08I5blMepbjVP89v7RcuLuxrBMFFMWQyA', '2023-08-26 06:03:34.239236'),
('0rtra3wyymvvclvf3jomj24cldmfaik1', 'eyJ0aWQiOjEsImNpZCI6MX0:1qRxxp:bqcd8VNDCUwY2gEs94dav9QQ3RmM_Z1i3HeGgCTbb_k', '2023-08-04 17:47:45.479209'),
('0sia47516tk37ygegulngsvp3qeh3kwc', '.eJw1jdEKwjAMRf8lz0NY57p2T36DPyChRinYdmTpZIr_bij6djnnhLyhyALzYJ2fXAcBhe6Fd5j7DjImghnOuBO9QGXJgkEUWePM6L0zRjEljA-F3LqTMG6h1CyHUJLqBdf1WfiqRW-G42in_81lI463SKqEK-mD2Cr1tS3jdcoPfr6PsTOJ:1qXGml:2kTJwTdzu_LGiOKijA45uxmfW2U_ZfyUEEIvoXwVk-0', '2023-08-19 08:54:15.951502'),
('0tpoxvrptn6wyar4gd81mrxse8fv9bdr', 'eyJ0aWQiOjEsImNpZCI6MX0:1qQtb5:IMiYLcAkVDdX8-CiW2bOaOsq6xwfh1t5WepVaYReHIw', '2023-08-01 18:55:51.033081'),
('0v3canp8nbx6ki7b4deg4dv0gxq9b5qg', 'eyJ0aWQiOjEsImNpZCI6MX0:1qa3WT:MOdlK9suEAfcYay3tPaE6yxGeo1Kz6kmPNLlmvZzdVY', '2023-08-27 01:20:57.969957'),
('0w9ict03sova4j5vt7nzuqc2wkr2m84c', 'eyJ0aWQiOjEsImNpZCI6MX0:1qbuW7:49YIebce0m8IZi4CRRjPG3soOSSfwQ35qE82e404A6M', '2023-09-01 04:08:15.286759'),
('0wcw14odg88yc32j0viwwfsd3128hnpq', 'eyJ0aWQiOjEsImNpZCI6MX0:1qSqYJ:0GMJMxV8J9HyeLTuLnkwxpGKr47eyktiG3wu1Znnu7g', '2023-08-07 04:05:03.872843'),
('0xy67y6abs9mmvcz2mhr5i5yhppy20ot', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPiwa:YpG45PyYoM9DKddwmwOygR24xqoazKyPIMKtX7tum0w', '2023-07-29 13:21:12.622084'),
('0zlgzfoylrhttf4l4pt1aw5vgzmd5wq8', 'eyJ0aWQiOjksImNpZCI6Mn0:1qLsfA:gcIs396GKY4xYucnE1Ehp7y0t8Ix-CqzVvOmFsLDGFE', '2023-07-18 22:55:20.478902'),
('106fsucr1i81500x5d8h04c0hnumcp9m', 'eyJ0aWQiOjEsImNpZCI6MX0:1qM6Ft:jWeC-sNUqcQA9dL-sPFuC9e7uE3Bcrark9KaiKpuXWY', '2023-07-19 13:26:09.414231'),
('132z73yae1rl0uciknbo4pa9dy1mck4v', 'eyJ0aWQiOjEsImNpZCI6MX0:1qaVFP:METC2j6rrNTqPhdZx5EuyqbH-GBzOQTjT4cCgUeu-W0', '2023-08-28 06:57:11.476533'),
('13g2y4hv0sb30lotrybc1jhypm0f4rh2', 'eyJ0aWQiOjksInVpZCI6OSwiY2lkIjoyfQ:1qHGdg:hWD1prtcA9z9VDxuvv1oOR_Byea1guj4DjgSD8mLiRg', '2023-07-06 05:30:44.161730'),
('14cv92euws3z1kbti8iakj5d6akk43gi', 'eyJ0aWQiOjEsImNpZCI6MX0:1qbYzK:7V1IYzbwRLxI-Qgmp8UzqwsOUVAZD12yD3DxsST9xK4', '2023-08-31 05:08:58.684395'),
('15x46kfjehdycofxz56v98mlp1v0slh8', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPLSh:Uh61tMoZLlTXimt2sDTEvCXMeyI_tHJRaeLf9yol8yk', '2023-07-28 12:16:47.049060'),
('16wn6mpy8bo2eo83gfoa0mnywybg9jmd', 'eyJ0aWQiOjEsImNpZCI6MX0:1qd4z6:uzPeEIoDmhYxWdqBK5v9h9wwlQA8cRvxelpoHwdeTOA', '2023-09-04 09:31:00.952847'),
('18m1584i7ubz2fptkc34tlus85g18ejj', 'eyJ0aWQiOjEsImNpZCI6MX0:1qQcpv:xGOMlhUBIBeqbW9ff2gfv31Hx3USZa2s9Bk5AAW1SJg', '2023-08-01 01:02:03.975654'),
('1aowmnme0qdz5xiihsz0no6l91cphidt', 'eyJ0aWQiOjIyLCJjaWQiOjN9:1qbf0d:VGrCNHjIAAuYN_0uke3IBtxYAT0oK4e7WT8GnCi1ETw', '2023-08-31 11:34:43.201038'),
('1ctpdgmkviziq30mrxsq7ddztlx5caf3', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPFZn:MWm1FEC2APo1QWOXlHwDsvrNU5lKcZBbdJJZv670w0Y', '2023-07-28 05:59:43.556568'),
('1d8zlsbdsdr9ahzoi369xgw46cne2mo6', 'eyJ0aWQiOjEsImNpZCI6MX0:1qQ1JQ:52VkcU9hu8EprJYYlxlpfcmDa4E04MK-DRdpt97lUgw', '2023-07-30 08:58:00.068673'),
('1dvxefwrzum4sfaybj3o5yurw708lqyp', 'eyJjaWQiOjEsInVpZCI6MSwidGlkIjoxfQ:1q8xtA:1UUVVF3ajmKir4rS-sg_ooqO7GroBgZRes2fQ3xCebY', '2023-06-13 07:52:24.067569'),
('1e7evpfqvj3ukorrpnyq3erkdsqkc3tm', 'eyJ0aWQiOjEsImNpZCI6MX0:1qaHVb:FMfvhJHIScpbbFh18___z3IoCiXMYyc9G_oriYxGbQQ', '2023-08-27 16:16:59.170218'),
('1ebj4hrbnhgl361v6rfmlgxadbdjvcrd', 'eyJ0aWQiOjEsImNpZCI6MX0:1qbfKY:Fw9gxB-e7XgYj_piLi8Oo8JY7L5IwUmTvq926hUIgpU', '2023-08-31 11:55:18.339949'),
('1hk03xoa7j45ini6mx9t6ilx57ersb4v', 'eyJ0aWQiOjEsImNpZCI6MX0:1qd7i4:brze38K8CfNJWbBXm2JvIfGo5ZMPchJiPSUfp3jFuHM', '2023-09-04 12:25:36.245547'),
('1i1j4ipvqpn984qcapgzg39j3rpjgltx', 'eyJ0aWQiOjEsImNpZCI6MX0:1qZrzP:knBCXHyR_kqGy7GYhg0YDuVr73cYotrRbjYI8cPQy5k', '2023-08-26 13:02:03.681743'),
('1ku0svy02gnlo2do12il6449ld890p8y', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPJbi:5sYPqJ3ZLFo4UEpLSxD5nelIfURmVLvvFk61MjPuWVo', '2023-07-28 10:17:58.941904'),
('1n5jxolhbu6873z3mksptd10uzpezkql', 'eyJ0aWQiOjEsImNpZCI6MX0:1qbFQb:cHuGQks-4Aa2WZn52gOQB_1dvmfMpJqLVQS2I7Q8ByQ', '2023-08-30 08:15:49.846070'),
('1o9jq4m3zxc72n7542al86ywcsdz01ay', 'eyJ0aWQiOjEsImNpZCI6MX0:1qQMav:Z5jB2iga5Kf-GI2G6cdkrEMqpHEENdkpNEKVKO-ThP8', '2023-07-31 07:41:29.615208'),
('1pbsrioigoonp4qwb9aqqkn92qwmmq4w', 'eyJ0aWQiOjEsImNpZCI6MX0:1qHos1:2ZshEcyM8mDB6XCLD_BnI2LZV7GUiwW_swoiyK-K9Ik', '2023-07-07 18:03:49.068518'),
('1prphv7wgovdndh8ethj8k2pdzy91tfx', 'eyJ0aWQiOjEsImNpZCI6MX0:1qbH61:Ih7udgq6XqQ_4kVVnC2-0ZX1mNCO4_ChVGp-oTtxiWU', '2023-08-30 10:02:41.336621'),
('1qw684ljt8qtmevxpdh1fm96ibxy7n0n', 'eyJ0aWQiOjEsImNpZCI6MX0:1qbfKR:9RCw4hfCmir5YlF4ESPOzNu5RVqptHC0EOpDIa-6LY4', '2023-08-31 11:55:11.720788'),
('1qzgbyjdot63uuyzy98f91nxzs6m9tfl', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPKMF:G6TRBzPDJBI3TsdpJjQJLs_pFzHUU5X0Aihf1zB17Dg', '2023-07-28 11:06:03.039456'),
('1r4e66mnjpyivteiyx6m6aqd5w624zm5', 'eyJjaWQiOjEsInVpZCI6MjUsInRpZCI6MX0:1qZaWE:rYXADqleMi5CKa_T0NBqpEJz5L7-CgSmF68ySqMI3SY', '2023-08-25 18:22:46.852146'),
('1szx2cid3sh9c1rspw7xiqn2l4usmiet', 'eyJ0aWQiOjksImNpZCI6Mn0:1qHfYK:xryG5nhhoM-Q3x_ZMEJBIf9FeQGopLhJ5iDk43RhaXY', '2023-07-07 08:06:52.317859'),
('1u42nedhl0lg3jb7admghmbefa47jukd', 'eyJ0aWQiOjIyLCJjaWQiOjN9:1qbfkx:o_eyND-rK2LSkUN72vhQJWyB4QM2x8l42_m0KPJ08-g', '2023-08-31 12:22:35.232819'),
('1u5zkc27s9hw86hzpus6qt3jiv92nf2j', 'eyJ0aWQiOjksImNpZCI6Mn0:1qLqkr:ZJWCS0YAoUMDSNPk5C_a_-DtRLsPbm-UM7AALH8exOs', '2023-07-18 20:53:05.968422'),
('1v539w7e4s52pxupejuwmqy7eea6ewro', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPjoM:J3fXlHSVcgvPrLAQ-mPK9qibo1tlcHprmgPXKO-diSQ', '2023-07-29 14:16:46.586772'),
('1wlyxc9ikw51qy9h7rm7rbk1oqc5u0lc', 'eyJ0aWQiOjIyLCJjaWQiOjN9:1qc3WU:di2u9ldbRB3vlR-nhB_8nDBsw1E-i-fN8iDRUWE2GDs', '2023-09-01 13:45:14.668148'),
('1x1bfshq1wrab63huj8yv6kjdpd9oj93', 'eyJ0aWQiOjksImNpZCI6Mn0:1qMFrI:yZJKWwZ27RNNqQ822uhSYneXdKjSeWn7FtRMFxMdoOc', '2023-07-19 23:41:24.041077'),
('1xeefghj9wz8vabu7iufmyi98za95avu', 'eyJ0aWQiOjksImNpZCI6Mn0:1qObIg:-EYFP42X6CVsk7hY5Szlt3Zp45ZanxEmT8ifgrSgeig', '2023-07-26 10:59:22.555922'),
('1xewe01lrgl9ahvk0lplguglwj8b3bn0', 'eyJjaWQiOjEsInVpZCI6MSwidGlkIjoxOX0:1qWtmW:J1pvIM82_Tnbamo5nLedo9KvK2Yr1jPSukM6x83Wc4M', '2023-08-18 08:20:28.934725'),
('1xr4eso1g5j05islf4uqwhguqfp5ug7f', 'eyJ0aWQiOjksImNpZCI6Mn0:1qMe0u:38MsqOyDQBJzFeaDCJek1R-mjKtlmY49UIZ9x7oB364', '2023-07-21 01:28:56.078340'),
('1y4yci8jqfw4ztfdrgm8hzd5wx24b17h', 'eyJ0aWQiOjksImNpZCI6Mn0:1qLsbU:aJ0XiXQg6TU0MNw8HkkB1pFxf9IGE8abs1wXrg9wxHE', '2023-07-18 22:51:32.748161'),
('1yscp2pud01flgjmt5us225q85yxg3yl', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPJuo:MxLSE2ZM9RfZKV4bSuPkg5wNcVkOTAJ4KyzN3V4cHoU', '2023-07-28 10:37:42.220308'),
('1z0lq0rxgi8y58jm5s4cw1upbr20e8qg', 'eyJ0aWQiOjEsImNpZCI6MX0:1qI97r:ensrQPRweSnQC3QLbePu-5aROPWJRs7evlWY3Qgi210', '2023-07-08 15:41:31.515765'),
('1zbpx8mqgsv3kcq3rtuzhkqiad5mb1qe', 'eyJ0aWQiOjEsImNpZCI6MX0:1qZxGZ:oXRmVWgOwRr2hf6vMAda3nTv4d-HpOMArCTPsZXGRPI', '2023-08-26 18:40:07.777239'),
('1zfl3gtgjbepxiq56qmuv0c6av4unt6d', 'eyJ0aWQiOjEsImNpZCI6MX0:1qHm6r:DGCGTSSSDrNMWPN0kIB1luTrVXUc27Aa631HH-xjIa0', '2023-07-07 15:06:57.992216'),
('20n1rkprobnedolrujr7qjjr940i8551', 'eyJjaWQiOjEsInVpZCI6MjV9:1qQoOD:_9AljZwyIGwqEjgSXZ_u6t0kWPnvbtQXmjKoQuPpvHw', '2023-08-01 13:22:13.768284'),
('20sri97qy6om42yrlug89rbd3dlaxsmo', 'eyJ0aWQiOjEsImNpZCI6MX0:1qKmF3:qhhCTDvbNCRCrADI4t4v0Bwhevwnfl6AscyVd05li9A', '2023-07-15 21:51:49.293908'),
('21p08rjcp7mqwqm2zrchllo29w7bj9rf', 'eyJ0aWQiOjEsImNpZCI6MX0:1qZs6g:_RoAktFKlzy1JCQPxV7P4ueEbAGAJVcxcGKeGRPjhdU', '2023-08-26 13:09:34.903871'),
('23hcp8m4p92xu0dywpu1q7vpgjaqsmz4', 'eyJ0aWQiOjEsImNpZCI6MX0:1qaEgw:joaPmGcq8zKhTyJ_vCa5Rk0kTCKrqdgInyypE4xoPpc', '2023-08-27 13:16:30.123062'),
('24b9afz1fe7zgtssv3d74etfpt1skiws', 'eyJ0aWQiOjEsImNpZCI6MX0:1qKLgv:21QR-7q6edyC4L5tYzh678mrI6j6SPahZ3i7EiEmasI', '2023-07-14 17:30:49.793049'),
('24h70hgech9ic3sxjvnikkqq4s0m1x0d', 'eyJ0aWQiOjEsImNpZCI6MX0:1qbFMS:J2lotSAyeMz_vM3qWdaucWc1fD76q2vfibJHYk2BSI0', '2023-08-30 08:11:32.036842'),
('25gwnl2nfj9aq1f9aq9jro0in6wyw648', 'eyJ0aWQiOjEsImNpZCI6MX0:1qZpwX:XVAj8ElVuEpQCn-YigBkIkSxIZ8uGvrY9qXza171Bdo', '2023-08-26 10:50:57.407993'),
('268uchry01aspabstd1ou33ax65wnvl8', 'eyJ0aWQiOjEsImNpZCI6MX0:1qQ0jo:Db_oTqLqwCwcViSWmwT6nsKRIDgoPpIp1CNlQll7BLc', '2023-07-30 08:21:12.957855'),
('26laf7dmazixm4ow5fxoamsz3y8lnha9', 'eyJ0aWQiOjEsImNpZCI6MX0:1qaIQM:zaX-nPiTs6ZjIe7Zm6FBSsUjZUSvnzNrMeVT4TDKR4A', '2023-08-27 17:15:38.253280'),
('29382264uxef4cp05f4gaeopjeu7avjs', 'eyJ0aWQiOjIwLCJjaWQiOjEsInVpZCI6MX0:1qYjJd:AjI2PRUFJWo6nSqJTVH37CXfTlIBxwN5nJOnqCpAyb0', '2023-08-23 09:34:13.480065'),
('2951rtnjceyl32pdg7z9uz0pnafrsuho', 'eyJ0aWQiOjIyLCJjaWQiOjN9:1qbvRF:6-1B5XNwP7nCKlPPNuRKGTpfr5plhMwHxUt9CXFWYVQ', '2023-09-01 05:07:17.785953'),
('2beftjm7pyx9jqf02889h8aew2wdg3i0', 'eyJ0aWQiOjEsImNpZCI6MX0:1qd5sn:fFwAeEAFFr6NXcFxpKwa4eWZJ2GLE96HQyC9mU0nta4', '2023-09-04 10:28:33.875299'),
('2cnvjkqn3szqk998u8agwab8ct3wjvgc', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPziA:MISJ0zZMYF98AcneLeYgYIlcUFB-GxMVkjWqfshFhwo', '2023-07-30 07:15:26.302604'),
('2cttab0khajgydp5h2jx8dpoy7u2gu6u', 'eyJ0aWQiOjEsImNpZCI6MX0:1qd1O7:hicn-OQzN9QKMWPDl9YLrZeNKMHm1OXR_6G0bKwjT_M', '2023-09-04 05:40:35.842063'),
('2de56jwxjtkgyox9s0olndws15j310nb', 'eyJ0aWQiOjgsImNpZCI6NH0:1qQgTb:mS5KWZqH5jig6BPdTlce7N6OSo02_Nd2Qf_YCbKKoqw', '2023-08-01 04:55:15.393276'),
('2ey8niq5fiks9u2mv06fmmattyxt0ywy', 'eyJ0aWQiOjEsImNpZCI6MX0:1qO1K1:nJMcZu1O0oIoWIE_s26vF0VHZ_YReMyZoRHTec-8e_g', '2023-07-24 20:34:21.462132'),
('2gutrdw8rvaoucj6azbsyhg30cx8zccg', 'eyJ0aWQiOjEsImNpZCI6MX0:1qZnoo:8rOO5Jse_8fQkXvquw8xOF_YdcgodHwHYC6MbqMZ9bE', '2023-08-26 08:34:50.436396'),
('2hgb16ai3ed6kwiigobntnekm27ihknd', 'eyJ0aWQiOjEsImNpZCI6MX0:1qZoUu:2yaaWXuOHy3ud9Fl-7TMffrkt_iPxPKtnitRNegoo5E', '2023-08-26 09:18:20.228485'),
('2i1abg05qks0ltknucib4g1x38hqbnke', 'eyJjaWQiOjEsInVpZCI6MjYsInRpZCI6MX0:1qU43P:1Rvo3ObHT9lToSNxgYGwhbM8paQFUpoBEMuZPMQY748', '2023-08-10 12:42:11.129155'),
('2i6wb7m58nrfg80t7nmb0wy5gqntztng', 'eyJ0aWQiOjEsImNpZCI6MX0:1qazXS:KwlskyswuzLw2k1AdRpdURv4gPLYcLAScR5qhMb5OxE', '2023-08-29 15:17:50.261140'),
('2ikth35sfx5bxb8hhjn9pcjj63qw6rky', 'eyJ0aWQiOjksImNpZCI6Mn0:1qLY6z:_7cxR0qPDULdsLxW4fovZ0NVWMT4drQ0nkgSuFmNudg', '2023-07-18 00:58:41.748601'),
('2js2pbc7f32h9csevgi7htfxdzx618i4', 'eyJ0aWQiOjEsImNpZCI6MX0:1qMRBj:r4aqfo5u1NsHG0kh4ItUC3fn8GCpfxtmd1vywf-KkYw', '2023-07-20 11:47:15.819730'),
('2kuaxcr554p5vchvpwtikwhnepdwetg9', 'eyJ0aWQiOjEsImNpZCI6MX0:1qcIjE:dMx0X3EriiAfY9yMExEd_z6FroXciQeRYdY3_AG8RA0', '2023-09-02 05:59:24.991066'),
('2mgye9at8jeg5v1li8zfnvwy952uzms1', 'eyJ0aWQiOjEsImNpZCI6MX0:1qaE84:hqdff58JSQpjGEpSXz1ET0Iio1i34LroIG6dN-uWs1I', '2023-08-27 12:40:28.792372'),
('2mvh3kny8g6ai7dcgi3du3sbz86ytixo', 'eyJ0aWQiOjEsImNpZCI6MX0:1qZoJc:pdebPDCNCsJJhLWqbYElaeXksOwsuXhJGX44sOlEmCw', '2023-08-26 09:06:40.930448'),
('2my8yueuprufl20e0lb0zzze8d3ixmnu', 'eyJ0aWQiOjEsImNpZCI6MX0:1qHxa8:wqE9SMyhePVPEBEp93MpQ2egFbfvFvvJq_77Q73Q1zs', '2023-07-08 03:21:56.237215'),
('2ocwx98meg2gs7j0r8u6dsed44l6wual', 'eyJjaWQiOjIsInVpZCI6OX0:1qOCo7:9jguj-mhVjoEVOsHUxhVTxzBD2PZ3NOLp9PUCuWvqXg', '2023-07-25 08:50:11.726549'),
('2qsg9xjk5i3hs2occm87gyegcwhlg1kl', 'eyJjaWQiOjEsInVpZCI6MSwidGlkIjoxfQ:1qPIxN:Ujmiv464qz63bvPnx32cuFKIdtX8Xjg21UINeEvF5E4', '2023-07-28 09:36:17.425730'),
('2ru4nt7d0ircyluvx0ldvgief83t109k', 'eyJ0aWQiOjEsImNpZCI6MX0:1qL9mo:m39kxvaLcztr_otU_7CxSG2Qn1ptVqcWUpU7MFJwJtc', '2023-07-16 23:00:14.821076'),
('2utazbz6ffqhrvhjmrektai7sxjp82e7', 'eyJ0aWQiOjgsImNpZCI6NH0:1qQggP:UdDE4LDTeYQylNlcZLPsQLzXVSqeID6QSHj3g-8N_8o', '2023-08-01 05:08:29.644412'),
('2vh0as5kmhuhd0vu2e91qlj6uzwv2nn4', 'eyJ0aWQiOjEsImNpZCI6MX0:1qa4r7:U8KMGj7Vgg5rs-nFhxqoKTiPHPpsXq92cD--CSE3O8s', '2023-08-27 02:46:21.075992'),
('2vju37jq38fun0g1tip5elndh5pkrkvr', 'eyJ0aWQiOjEsImNpZCI6MX0:1qObH0:vXaF6IjSVcSbnpjeLgPe9YECN9V1HIs2-eKeJ3PJfTw', '2023-07-26 10:57:38.254863'),
('2vy709e2dvdzy5ol4se0ini7cgburitf', 'eyJ0aWQiOjEsImNpZCI6MX0:1qJwsV:hnTQ5TCZXj3zA8v8epvAkH8UnTyXQywiDKJHmp-HVoM', '2023-07-13 15:01:07.452634'),
('2wrpuxacg3bufpk36d3gr9dlm7c6zohm', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPfHt:jDfZ0Dc_u_NpZjXuhZ23BTSsV-1vWzNykBnZM3rrw7g', '2023-07-29 09:26:57.722207'),
('2x8qlpei3auct3vk0u8fe1ir0npwcnu5', 'eyJ0aWQiOjEsImNpZCI6MX0:1qOcpZ:aS_kwID9d7nC7lisK6ryok8HFeRSAXZ9hF63WRmtaRk', '2023-07-26 12:37:25.778389'),
('2xaeeqz7yn7r8x02neeah9bii29s0mzg', 'eyJ0aWQiOjksImNpZCI6Mn0:1qLQHY:hOcyu7OkNq3XA1rczIXvxTW3y6DzZNISdO-iQ-tMuwA', '2023-07-17 16:37:04.403202'),
('2zzqh7b5spgtfi1ixxoyd8w91nzzq22x', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPNg0:k9zE2hnQIEsuMx1XEuNmvkhW6lpX_IB6KAUj2kqItPg', '2023-07-28 14:38:40.732274'),
('30dxqzowurpucmu67evkpho4cxs779a8', 'eyJ0aWQiOjksImNpZCI6Mn0:1qOXiO:pwg8ygNLY1E8fYhBRsYxK5YGQVZzOXsQPihv4ysmXpY', '2023-07-26 07:09:40.283920'),
('35f828wbsziylop55pqgbr0j4wdm7gzg', 'eyJ0aWQiOjEsImNpZCI6MX0:1qIYIB:9mp1PplREUoxlN8BlbQnD_sTr6j_8Fmpt2KUFOHtjxY', '2023-07-09 18:33:51.586780'),
('37qj4z3fcbk2w5gmyzjil8u3do46opj5', 'eyJ0aWQiOjksImNpZCI6Mn0:1qMBhm:JeYMTQz8BCELWtt6HVl2FmPWmYer-OU48B_t-TfBppE', '2023-07-19 19:15:18.755124'),
('3aeph5jfvvfupswjqevnznv4e7zrzbww', 'eyJ0aWQiOjEsImNpZCI6MX0:1qbdX2:zQNpAnoE_gdjaDQeKilWLuUUyuY4VMIqt8LUXzyQc2Y', '2023-08-31 10:00:04.739387'),
('3agif73f5ad48srfaewznec28r3om5q8', 'eyJ0aWQiOjEsImNpZCI6MX0:1qcHxh:ze79ltdKiV09Qq7tbQOGmKgcjPoengJzNXBKXZ81HjU', '2023-09-02 05:10:17.558425'),
('3ankch3rrblwb7i44b6en9q165w3rf80', 'eyJ0aWQiOjEsImNpZCI6MX0:1qZwro:pWDII8yNbgPVxuLBSlb3Hfdd5JPoMbTRT4tmKNJpUM4', '2023-08-26 18:14:32.777256'),
('3c7d2ff25bt5g1dm8jophkwrsnzjpef2', 'eyJ0aWQiOjEsImNpZCI6MX0:1qQM8P:665jBHDKJTOgTTQIDZqwEvRVaoFMZfxHy9hvVNazq34', '2023-07-31 07:12:01.092991'),
('3cakhrfxjlnk0tb1iqxocj1uv56vdd3n', 'eyJ0aWQiOjEsImNpZCI6MX0:1qauWf:vnTi84IXDvvx7BFtrZYz1YbeKSwx5SGliBGBmC76pko', '2023-08-29 09:56:41.364992'),
('3cu7569pz2ti8uha97lw72bkkpb8a7qt', 'eyJ0aWQiOjEsImNpZCI6MX0:1qLCQM:qnIjkFwtd3Qt9CNRyWNBAPZhF0ES137eOYcRkiUg8AU', '2023-07-17 01:49:14.863799'),
('3dpzbqz3r2vw12ootvgcagotke0v43qp', 'eyJ0aWQiOjEsImNpZCI6MX0:1qcadg:5rQJK7d-8mPhdUpQm2Wgqr1q3RGjmZfZnwx4pcjirWY', '2023-09-03 01:06:53.025088'),
('3er0k3bq1jjhgiet3uqxag99oyrn78lq', 'eyJ0aWQiOjEsImNpZCI6MX0:1qaHcc:j-s-rouweUIeWXsreai0Ii7UmxEh5q9qfRxappB1k70', '2023-08-27 16:24:14.211985'),
('3exjubf7esk5sjrane90oobvawrt0cn8', 'eyJ0aWQiOjEsImNpZCI6MX0:1qKQ4n:CJgl5HKfu-O5VaN8jgX3ieujjZhbRsaagfLltuvtM24', '2023-07-14 22:11:45.389347'),
('3fvm3d9qkrc9nanpj6qykn1b8v0pv8fp', 'eyJ0aWQiOjEsImNpZCI6MX0:1qZxWp:LEyaFCZ5TzEmu8W8gbuVdJ78VLPWxFAWm_0hpIOQhQo', '2023-08-26 18:56:55.363135'),
('3gnpqhzdfsdzcnfsg57wxt6huz53nf76', 'eyJ0aWQiOjksImNpZCI6Mn0:1qMTQP:AJzT_BaBnoEv6G3-XEJJyjU7Ue7pfyxi4MZE0VYuMG4', '2023-07-20 14:10:33.040525'),
('3hgljwb4qns8gfqv3yc3my587ynx3u38', 'eyJ0aWQiOjEsImNpZCI6MX0:1qa9FX:lKPD9TduwFznqMhj1KuesTxfD9gzCcmaZHJPEbJeRm4', '2023-08-27 07:27:51.056197'),
('3jky48tbn31i68alvdh6pn2xemidkzl4', 'eyJjaWQiOjEsInVpZCI6MSwidGlkIjoxfQ:1qQkbd:yTyGtGUhTGH-OlpmAoUSPmdMa1u-yaDB_5bctkUSJmE', '2023-08-01 09:19:49.345563'),
('3jwdw57ncskl9dvnc69do7m5qp4k5rru', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPMxn:K4hyA7yn5vl7wvQL50JbT-VT6ENbybAkHmCt36DCsm0', '2023-07-28 13:52:59.039466'),
('3mc0iv14cx5ndvlabryfw140wkzvi2f2', 'eyJjaWQiOjEsInVpZCI6MjgsInRpZCI6MX0:1qVUrP:D3H9gTj5FQAN_5XneY86dkWunqLqVjh5rd31LetHn7E', '2023-08-14 11:31:43.842028'),
('3mwmesz1qzy6ay0i4xfr313py1pjl0xq', 'eyJ0aWQiOjgsImNpZCI6NH0:1qQggP:UdDE4LDTeYQylNlcZLPsQLzXVSqeID6QSHj3g-8N_8o', '2023-08-01 05:08:29.979696'),
('3nwlp0jzo2hyf7pyu7wx0x8k3ptctzqf', 'eyJjaWQiOjEsInVpZCI6MSwidGlkIjoxfQ:1q8b6I:fYmXCY40Ca4NYVm53-kQ9AnWiCcrj66RsB8h9KF03NE', '2023-06-12 07:32:26.835956'),
('3pygzhjjmg5yh2j7uo1mwgn1md90oo6l', 'eyJ0aWQiOjEsImNpZCI6MX0:1qcgpU:U2AtTpgnqQQWbX5xh9ulJcQA0e_l6eNzvf-z0gw1VWU', '2023-09-03 07:43:28.791217'),
('3r488yk8z3jedgczfqgtfm5e9sh94te5', 'eyJ0aWQiOjEsImNpZCI6MX0:1qIP6V:Cub0k_bfEDUIe-2ioc8GUpK_noaF2BiUIdlgNRUCHNM', '2023-07-09 08:45:11.123304'),
('3tid6f6jici5an336gm9td2knq6z8tbg', 'eyJ0aWQiOjEsImNpZCI6MX0:1qIgsd:7IjkN6ye9Ism1buYVUO9CLxsFekkTzHFbeRaKi94omM', '2023-07-10 03:44:03.911484'),
('3trnynwtz9cdcctnhj4mw7r9l8uhx9ww', 'eyJjaWQiOjEsInVpZCI6MSwidGlkIjoxfQ:1qOXeR:EBsBj9aakJ16Rye2lGx45riRlnhT-FKVwLy9ZZarszY', '2023-07-26 07:05:35.387208'),
('3u5i631252jdlw1gc165b4aviufoqwva', 'eyJ0aWQiOjEsImNpZCI6MX0:1qKdaW:W2brCg3_hSJ3wMuZ50tSWElg8DjZKCo07XTfw4L8C0I', '2023-07-15 12:37:24.660524'),
('3ubecqleg059b922k0suwcy7o5lve871', 'eyJ0aWQiOjEsImNpZCI6MX0:1qNaQS:RRbx_46k6mbPFpNLgAY58L11KiPgei7or59E_gKOKV8', '2023-07-23 15:51:12.461232'),
('3wd8ezx11yoih3p9s5xhen0ujygpj8uh', 'eyJ0aWQiOjksImNpZCI6Mn0:1qLcir:5fzdk5DYbyDehX0E4m3-SxLj7COuYVbg8IKQy2EoWwQ', '2023-07-18 05:54:05.503962'),
('3xrfsiyxetzcu7xhzttbq1xcdev5gakb', 'eyJjaWQiOjEsInVpZCI6MSwidGlkIjoxfQ:1qR3ba:lQVVpMghyaJ1TpYxubDEVovlrsWUL7JJxQG4f6xk9gI', '2023-08-02 05:37:02.557968'),
('3yx91cwgg2ouuasxn0ylweysvum7n85u', 'eyJjaWQiOjIsInVpZCI6OSwidGlkIjo4fQ:1qCIZa:gD_dyCoNbguOhbPR4wcsHbi5Dyun7Z-SE8gnD3cSmUk', '2023-06-22 12:33:58.326748'),
('40axy6wzy18dv0ssbydswhjq58tai05h', 'eyJ0aWQiOjEsImNpZCI6MX0:1qJDxl:zK6uvzOILkWPCOz6cn2lQdCu-oQXJAd8QDkpxRzfRkI', '2023-07-11 15:03:33.196340'),
('411chkaphskwv9lvuo3xx1h3r8adsdip', '.eJw1jcEKwjAQRP9lzyKkBcGc_AqvssS1DZhs2GwrqfjvriXOZeC9gXmDxjt4d4DQe-nNWsCPbhyGk0lUmljabjImAg_XVueMK5jlrBjU2LnHICWMT0OCjWgr5TL9wDFwMlmw1heLPYGz_Oe3lSQ-IhlXWejzBXj1MPk:1qNuew:8cIHhZJGo4TyJoTFUhypVXTac7DdV_y4LGnb9KjlvLE', '2023-07-24 13:27:30.821643'),
('436hloihg7pgylltop1545gy1xj3dhet', 'eyJ0aWQiOjEsImNpZCI6MX0:1qQTfE:DuUUEypp7jjme-ffCYvzaoKpCoaV3bDpEp9x0zvwYJ0', '2023-07-31 15:14:24.815477'),
('45tug71hpci56h7rpp41nmz1yx8oxgjf', 'eyJ0aWQiOjEsImNpZCI6MX0:1qIw7C:581WRvQH2J3Cl2y_lAi1q6dv74OYV-DxYlQjXGkc2_U', '2023-07-10 20:00:06.979163'),
('46fueusyeqwojn185i0fjteurm1hje23', 'eyJ0aWQiOjEsImNpZCI6MX0:1qKQ1p:noTS5NnQU1so2LG7wo2hueOc3lQSeEqllTwm6ez8ROI', '2023-07-14 22:08:41.371030'),
('46v156rbqzxr1dqu3yfgnnbuo1q6ests', 'eyJ0aWQiOjEsImNpZCI6MX0:1qJ56P:NbeeecaCVE27rXbvgW0U1I-SUalZxRHYD-BBh2LfsiM', '2023-07-11 05:35:53.042535'),
('46wypdm2d7xvgr6tv2x8wtlhj82mvjde', 'eyJ0aWQiOjgsImNpZCI6NH0:1qQPKu:HeaFAigjDFevj1wleIOKnDVzObEWxxuqgnqp02fR_Jw', '2023-07-31 10:37:08.953255'),
('489w04f50b9jq1ein6bcgh0gb3szpr8k', 'eyJ0aWQiOjEsImNpZCI6MX0:1qNbc0:e1Jo5mBeWHKsnaSOLd52LaiygiGEJp9Cc7P99NLxJm8', '2023-07-23 17:07:12.377587'),
('4999xnzfz5wnjmcdn2210w2wcrvj4tb0', 'eyJjaWQiOjEsInVpZCI6MX0:1qOzDn:ZBo63C1ou_Q6ioK96KblLn_ESUVxDGFLHogIQrIli7U', '2023-07-27 12:31:55.206080'),
('49sjxozajwiv35ba98wsezj5iw10eult', 'eyJ0aWQiOjEsImNpZCI6MX0:1qK3jr:HBZ0aTovepq-yW33LQhEQWiBa8x2w1B0WFtIb0PCFsE', '2023-07-13 22:20:39.628884'),
('4a0gnl8yo42jwfjdkbrswij8ce4xbt85', 'eyJ0aWQiOjEsImNpZCI6MX0:1qbdIB:OXx1akVj6ITmPjc-RJFNCoYufKAqWdf_eiUbuFljAgA', '2023-08-31 09:44:43.794929'),
('4a61w6adi80bpw4cikyhejma0q3abzws', 'eyJ0aWQiOjEsImNpZCI6MX0:1qbbCZ:zT8FYys-DjAXKVX-DdBmSbMSx7DrDX1iAiyHQPThzx4', '2023-08-31 07:30:47.302045'),
('4aqqstwxl0m73jxg3dosegd7f5ayl1jd', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPkih:dVv7IdXvKEnzP92JEC3T0wEa-WQKUQbaOiX2HOS3cag', '2023-07-29 15:14:59.857506'),
('4brhxz2ktbykefxj2p96tmh0xilxxmzu', 'eyJ0aWQiOjEsImNpZCI6MX0:1qNJSf:pZi2mqeDf-LE66nfIs8o_6SN9slMchpuxbxxj5OxgRg', '2023-07-22 21:44:21.421111'),
('4cc9zci57v18c5imjuwf5h5mh2nf702h', 'eyJ0aWQiOjksImNpZCI6Mn0:1qWCQ4:ICd7stMq6Mlt4NBIlxlEWKMQ9Cqv17xmwW5p1GPdL3Y', '2023-08-16 10:02:24.567213'),
('4da54dm9un7uobhoae13cahcqav8azxf', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPQ2h:bOLre2E7BATrLb8GSTqR0vQVZMtF_xZmmUznc688tOI', '2023-07-28 17:10:15.892247'),
('4dow36w0isizv6z9ke3hhduf90dj56kt', 'eyJ0aWQiOjEsImNpZCI6MX0:1qQgkz:TpRYkWVVjazPSJaVUZPAVE5Xh1pEJI9V_MToHupGR7s', '2023-08-01 05:13:13.139057'),
('4e62j34eq205apumgmg01ts0rw3cvpvd', 'eyJ0aWQiOjEsImNpZCI6MX0:1qMRp1:w-hUpzaJPdUBqDgeyOV1T14Po-G1NqneUDakOQ61UMk', '2023-07-20 12:27:51.578363'),
('4eeh59t0vrb75ay1gzh998z90k7ez0ce', 'eyJ0aWQiOjEyLCJ1aWQiOjksImNpZCI6Mn0:1qETGu:VFUxSOQO2Wi1Xxhj4UI_4x6-misns5l_PBceGjLARbs', '2023-06-28 12:23:40.040340'),
('4gbn7p76rn8b2q9g1levbhjtfxp5fkit', 'eyJ0aWQiOjEsImNpZCI6MX0:1qbbGe:GcNaXr-yA-yhNbTzli-wQZ2dZt8qpWuTBAUIA0Kf_Jg', '2023-08-31 07:35:00.055779'),
('4gjvmfzp732ad9bivq71teejxyl34t50', 'eyJjaWQiOjEsInVpZCI6MX0:1qQsgR:LeWVwsET84Uix7hUpFEk_Y9qR47I-wOLfySm9JWPBz8', '2023-08-01 17:57:19.745274'),
('4ibtpl34gazkfbbiyacvpacn60haaa6s', 'eyJ0aWQiOjEsImNpZCI6MX0:1qdBFy:cSo_JtZ7Pgc6sKHgoQRxCL8vlKrtsUqh716z3Kc4VOw', '2023-09-04 16:12:50.180650'),
('4icqhgopx24fr1ry9gnr5k84yuqqjvpe', 'eyJ0aWQiOjEsImNpZCI6MX0:1qa3Ny:KNUW6UsMi05fyisgv4UIOPyisE9MKbYb7kHJZZMh3nk', '2023-08-27 01:12:10.004721'),
('4je94wh6tl7xpv264hxcka85842j0xxb', 'eyJjaWQiOjIsInVpZCI6OSwidGlkIjo5fQ:1qBXQD:Rlzt60wINfxD_MaBvHG13ejqYyxKqN-61H0VAYTcKl8', '2023-06-20 10:13:09.413156'),
('4l6jrp1zfhxq6y5i8sgdczvee8rerzyi', 'eyJ0aWQiOjEsImNpZCI6MX0:1qJQnP:x-9DVjpaGKqDdSCJg7_0MmRYTc9SFWD0TNc_9ll95Cs', '2023-07-12 04:45:43.711801'),
('4n5u0pkck1m1wyjkigahc76ol83e0x2v', 'eyJjaWQiOjIsInVpZCI6OSwidGlkIjo5fQ:1qBZ7V:9iUa9CE5JFu-e90Lc1yP344bnrPLdhlxRCV2bdhwW8w', '2023-06-20 12:01:57.389841'),
('4n8xnqjzkd4c9juw01e1jew0b07vkwhd', 'eyJjaWQiOjEsInVpZCI6MzIsInRpZCI6MX0:1qaaIA:lr4pObB_3GtATrbjqI2HZghHz2J6iYA-0NHJGNQ_ViQ', '2023-08-28 12:20:22.006746'),
('4ngi09hqxg7t5i8iy4qenej28oa96sbk', '.eJyrVsovKVCyMjExMjWy0FFKTixJTc8vqlSyMtRRykvMTVWyUlICCufnlSQml0A4qbmJmTkQZkFicXF5flEKiFcLAD5vFfw:1qHHqk:oB7pHe-YdnqYYR3y0AVqphY8iek0XdYAUyn-VYd32R4', '2023-07-06 06:48:18.518944'),
('4nk9k7lvo4jn9mfope00pj606z7ov049', 'eyJ0aWQiOjEsImNpZCI6MX0:1qKOSk:pMhjPFqSG-Lyxqn7FEUCMMC7t9J1Ske3xwtEyZE5-qw', '2023-07-14 20:28:22.568876'),
('4nutjz6yt6f9pdni8toy0jnbf8bspepk', 'eyJjaWQiOjEsInVpZCI6MSwidGlkIjoxfQ:1qOzCH:6ro1I4bSYazkKxcnE2vmZ_NhUOseL64RHMxrVSufs-c', '2023-07-27 12:30:21.299548'),
('4ofmw4js9pxtpz3qyvihqzagv4k6hlx1', 'eyJ0aWQiOjEsImNpZCI6MX0:1qbbm2:ck29UbfmXb1Iopdx1B4zdJZzaxIuHr2-cCEN2s5xc54', '2023-08-31 08:07:26.320243'),
('4py5iyhwlsp24frzndbzyxeqob1559v6', 'eyJ0aWQiOjEsImNpZCI6MX0:1qdEA8:BrypCyovvxDd2s8qA0nKmx3pBaSvNRelHcPYyQX63iU', '2023-09-04 19:19:00.269493'),
('4qygvlaeau12ecgf10clwjryw09pmvzi', 'eyJ0aWQiOjgsImNpZCI6NH0:1qQS0D:I4eYONQRuFn5JJdUd1C25T2q1sjpifa3IFOdKo5IioM', '2023-07-31 13:27:57.427640'),
('4s896n8r3dlae9hpx1b3mle1gbdfu2wk', 'eyJ0aWQiOjEsImNpZCI6MX0:1qIw7C:581WRvQH2J3Cl2y_lAi1q6dv74OYV-DxYlQjXGkc2_U', '2023-07-10 20:00:06.819830'),
('4ttp55cbhf5qe7vnuahu7495dmbuyg8j', 'eyJ0aWQiOjEsImNpZCI6MX0:1qKuWw:ysJK7hlH3SIVT7nBnNIGp4vyq8HKUctIABeKAXr2VYY', '2023-07-16 06:42:50.893576'),
('4ukfwowp7z5va0aj4jy9ji9s02urmwe2', 'eyJ0aWQiOjEsImNpZCI6MX0:1qOt4I:E5SCCbQm1mYYtKTlZWiNWmPCyDIVSeNp1EiAJMW1Hsk', '2023-07-27 05:57:42.881469'),
('4umbqlxgyta53eyzcxvqd0ahh1q9phpl', 'eyJjaWQiOjEsInVpZCI6MSwidGlkIjoxfQ:1qM00s:VNOCTnMk_JG6KR2tUwMZXzXdOPS7ssA8SXB80_PFRAM', '2023-07-19 06:46:14.563893'),
('4ut0s1lhivvum85yq4ky4wtk7okpqdlt', 'eyJjaWQiOjEsInVpZCI6Mjh9:1qTlML:ip0LrcJJr7am6XxZoB3ewd4-BGViYdE7d5dmmY-YWQ4', '2023-08-09 16:44:29.067465'),
('4v5o2pwpfuryxjkp0olsf4zfbcvvqjkt', '.eJw1js0Kg0AMhN8l51Kq7o_1VF9BS6GnEjSVBXVlN1qk9N2bLfQ05JsZJm_wvEBl7Nnm2QE6ZBp82KGSY8aJoIJrU9-a-t6C2H5m7FhgqZU9KaNzI5gmdKNADrgF3GNSGuNlSPzY-UkyC8b48qGXWJYXShtb_puPjYJ7OhKPw0oy4_rfA2vSQn2-Ousy4w:1qZpxX:1dKhseiUfsysbmui3Yr2oLQBGnGyGBs4rP3HT3zLuoo', '2023-08-26 10:51:59.617980'),
('4vhg20wyoejwjsnggy14od51v2690azp', 'eyJ0aWQiOjEsImNpZCI6MX0:1qIFCY:KfOkIygfI1qMBIGPSTjf_9bhyCIkB8VjfFsX-Q37clw', '2023-07-08 22:10:46.479272'),
('4vwmxua3ixo61w0wqdzmkn9p32kymds1', 'eyJ0aWQiOjEsImNpZCI6MX0:1qIl9P:tCr9cXP_yYtxsitb819OVfqr3gjxEkpbbaDXmuXRT9A', '2023-07-10 08:17:39.343952'),
('4w7dukxxk8u3ny6fvgf6u4nw2pmn1wjg', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPFcY:UrIa9AdzubxXwPonkiwlyLyf_g7IY8t1tcnhZpAM2N4', '2023-07-28 06:02:34.669319'),
('4x2isoslro8oh47q9qwtn7avibkoo1jq', 'eyJ0aWQiOjEsImNpZCI6MX0:1qKLgu:nYqsjb0KGaFQ2Kp6jdS31Uu3awmdkvJu1AudspAEGXc', '2023-07-14 17:30:48.084169'),
('4xnhyuxowjusvg612h9mefqe6dwl20mf', 'eyJ0aWQiOjksImNpZCI6Mn0:1qMdYT:MdxjtkC5hlMsSeUA2yp21935lbp4tgOCzYnXUQHidNI', '2023-07-21 00:59:33.644322'),
('4zlo6iw7lp53hi0e2vd9rnvg9ik4r7sc', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPj1K:XbC4zbLytQ9UabSyFflwdnSEJD-0QDcYnpbUQEQNcxI', '2023-07-29 13:26:06.258859'),
('51s6mfsouiml38q6tde247gpyc6y5w90', 'eyJ0aWQiOjksImNpZCI6Mn0:1qMYEO:MQHCTgjE7U58MYBgHQbMuh0_FAlm-dhQbTG0ewz08fQ', '2023-07-20 19:18:28.551258'),
('525odfm0v8ym4yeaazcs3rvcauiqvjrt', 'eyJ0aWQiOjEsImNpZCI6MX0:1qIwY4:FywtzKdt9psdxNtU9vl3pmkaQMEBLl1TVrKfkIC3Mao', '2023-07-10 20:27:52.311795'),
('526wnoscoqz4xepurbiqh7wdz4pdym18', 'eyJ0aWQiOjEsImNpZCI6MX0:1qcO4D:r_g9YwDiPM05DPCehbUYLQRRo4c9PC9enEHdANSFaE4', '2023-09-02 11:41:25.248806'),
('54il6h9egu67eugoexv2cb11ww9j1zzo', 'eyJ0aWQiOjEsImNpZCI6MX0:1qS0QF:uBFuEqJpEfRoE4a0RswSN0jwsB1aJ_ZKx2se3lmGaSY', '2023-08-04 20:25:15.702378'),
('56bxdfccbj8hk4kis1groidrbjuucm1h', 'eyJ0aWQiOjEsImNpZCI6MX0:1qRrWU:WoSpgOWj87I1-2qqFXK7YsNYJ5D0nUVxU6yAHRFDeeo', '2023-08-04 10:55:06.779661'),
('582kz3uf81r5zdpe3x26lc4rsupvpbgd', 'eyJ0aWQiOjEsImNpZCI6MX0:1qOXjt:4c7xC3bXADBm7elyldShJMLLnynQGz04SWzpqWQ1K9g', '2023-07-26 07:11:13.828418'),
('59uopz52p1vyu5bcc8920i64jxtxf6p3', 'eyJjaWQiOjIsInVpZCI6MTAsInRpZCI6MTF9:1qGI6l:9PlxhcMNZq1xYWLEJtIclDOIELEs05_pPgfYu1XfTCw', '2023-07-03 12:52:43.067343'),
('59yisfb553gntl0kabeqwkmnid7g2i5b', 'eyJ0aWQiOjksImNpZCI6Mn0:1qM7k7:sIK5EbpOqRwOfyLu6RFRyDYEOMIhDkc8Uypm7bUbXGk', '2023-07-19 15:01:27.607284'),
('5be74ocfd6vfsyyqgzii013wh6o5l5em', 'eyJ0aWQiOjksImNpZCI6Mn0:1qP69H:FV_Fj3MjSCI3oVAMDd6rB6ymVaTZlSfyp4KZB4Yyg8M', '2023-07-27 19:55:43.202575'),
('5cbws3sr3fcyu2bvon588402u7l8vogg', 'eyJ0aWQiOjksImNpZCI6Mn0:1qLIXw:ObmYQmFzpO1awlj6OhTZg_2vCe9Zh2wVynk_CPKlfeQ', '2023-07-17 08:21:28.582477'),
('5ewpp7mw8fed8p4ht89166ey0wyu3ms4', 'eyJ0aWQiOjksImNpZCI6Mn0:1qLqks:q70p-jp28k4BhZV75TMhCqYfvLsRiw8UL4awvJRS90M', '2023-07-18 20:53:06.691717'),
('5f8hmvw02fof85cxm2b8027s9ogqn39f', 'eyJ0aWQiOjEsImNpZCI6MX0:1qY6Qk:id2xkT4tJ-gIQTEvl74T69lpARWURrkCKl0UsO2HldY', '2023-08-21 16:02:58.645646'),
('5fhh7ixwevb31puklu9f4c1zjfct3f88', 'eyJ0aWQiOjEsImNpZCI6MX0:1qJVRS:tNGnjKo95E0TxBEr4yBdo91SY-LaLKsLnAPIJXYcIBA', '2023-07-12 09:43:22.104244'),
('5fmsojol1k1jaw5vnwn0fi16oxi43cft', 'eyJ0aWQiOjEsImNpZCI6MX0:1qIeGI:iAjJr_JrBREcXUdDvsuzWKP5pYamFNxgZK1n9sJdIYk', '2023-07-10 00:56:18.881006'),
('5giuoboevh7t3do56vd4qj0t2jzpymdf', 'eyJ0aWQiOjEsImNpZCI6MX0:1qbk9l:DtflrrrjS1kosfrtz-_jTN5v51m5sgsQ9hFuTGFwBTw', '2023-08-31 17:04:29.098047'),
('5go2v45bl3mschqpdz8bgyvviellctkv', 'eyJ0aWQiOjEsImNpZCI6MX0:1qM1Zz:qlWnFWaQCsi42d1XVvtqUhbnaoMWLcRh8rx7eczvlIo', '2023-07-19 08:26:35.989407'),
('5h34142jdoetx4mh0fdp9ylq7gpvqjv6', 'eyJjaWQiOjEsInVpZCI6MSwidGlkIjoxfQ:1qWAbH:QCtVWTKF1nm9gdHhZi60K4eQLVTX5PFTOHvspkT1MmE', '2023-08-16 08:05:51.109164'),
('5he3nmkoywt5dw3kt3h0cwott0tsaqzc', 'eyJ0aWQiOjksImNpZCI6Mn0:1qHX7u:vai2hCk_ceGyh6VdKCryl_fVdffp-2NtXhg6L6QrlBU', '2023-07-06 23:07:02.434200'),
('5hfiwa1fobuh6db6z7ap5jzpu2gnwmzl', 'eyJ0aWQiOjEsImNpZCI6MX0:1qQSxz:y_OYiIXZLpJXjkBmW0MhxilcsbBEyesmWDAvu2oB-Ts', '2023-07-31 14:29:43.765955'),
('5i6iywa52bvs76nacwzytrrkkloe3gp6', 'eyJ0aWQiOjEsImNpZCI6MX0:1qQPIp:-IQGvL4nD6GbKy7mHjBL_hXYofDCd94mIt7ypRoU02U', '2023-07-31 10:34:59.983333'),
('5k2nd9pqn9jme0qpqube1pfs8dc3wgcm', 'eyJjaWQiOjIsInVpZCI6MTB9:1qGXQ7:TFKc5sKgW-YBM-Jy_UVFJUhjD_BUhLaduXJQThohgGw', '2023-07-04 05:13:43.851381'),
('5kr40krupvo9mmenwjwn53goycdp9xlu', 'eyJ0aWQiOjEsImNpZCI6MX0:1qa669:_ft9qnhLErh9KCO99mTzi2gZRXAaEmW1aYDWoEDrsIg', '2023-08-27 04:05:57.809965'),
('5m075k8mm5imirk40020z9duxnsz0zgv', 'eyJ0aWQiOjEsImNpZCI6MX0:1qJfTZ:eiLRZMca0a_GP_-Kqau72Q3DZ7oegz_-trA5lLNGro4', '2023-07-12 20:26:13.189990'),
('5mxuq0fhtbx04ah07nkagfok6yywoowy', 'eyJjaWQiOjEsInVpZCI6MzJ9:1qaaS2:3sJLP1LtzxD_kxZ68_g4XoiFj89DbQOpkWprUXtaBeA', '2023-08-28 12:30:34.564506'),
('5nvaqigg4oy6r380y283oazv9ec753dt', 'eyJ0aWQiOjEsImNpZCI6MX0:1qZxGW:FwyuGDlDzDVl9D4_xbr4CuhD0I0YGlDpxcsSdE6AJ1E', '2023-08-26 18:40:04.974873'),
('5o73onuhhgkszfkxf1pc417yiidg4s1a', 'eyJ0aWQiOjEsImNpZCI6MX0:1qZtRT:FvwT7kdEb0b9J1Pl3nL7r5ZlCETeivJ76JjxetSt0hk', '2023-08-26 14:35:07.434710'),
('5qjwmuvdx3ozf7oq3pga4brdm7jlj3af', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPJun:jAdIfpVRm_38OiyPi0jdxdCKLqF3eddS60MtCHIZ2bQ', '2023-07-28 10:37:41.569140'),
('5r8oe6jshyro44swe03uc7f2r5pnzw1w', 'eyJ0aWQiOjEsImNpZCI6MX0:1qaBfh:GsFU_GpzcBP5kjkNK73AGnzGoIvDnLP_H40U12jpPPI', '2023-08-27 10:03:01.612899'),
('5rfkkeyc232syho4btj7zwz4us7lj81h', 'eyJ0aWQiOjEsImNpZCI6MX0:1qdNgY:caOamlhcV1jDedqIHnNdjcniAQZzVklrp9HKvQ1-1QE', '2023-09-05 05:29:06.464772'),
('5rgutjejifm1xp5u3lbekdt0h0tcxx52', 'eyJ0aWQiOjEsImNpZCI6MX0:1qIrXt:sH2jJpXv3cl059kDAfjN1IT5CVTTRDYDFkl0rdaPKd8', '2023-07-10 15:07:21.658338'),
('5rnlrdw8zuxawsvqf3lpjhmqczf3ugbk', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPJrw:TWty9NgnmlmNvH2rzeQXFfXCrv-im7KrTQUPkR0--SM', '2023-07-28 10:34:44.286867'),
('5tjf4e79qtup307z595s8lgl92r9uh4y', 'eyJ0aWQiOjEsImNpZCI6MX0:1qaz4T:vSl_UxdIJLvHOzX3lRcYuS0ZR3a3mNVqe6Es3TYnV1U', '2023-08-29 14:47:53.263255'),
('5vh2r8z6jfxjyf3obnswmv9dr9px3130', 'eyJ0aWQiOjEsImNpZCI6MX0:1qaIR6:Z4bKdNf076l_nWjc53aaO6DMBca8IO_LZ2TqQiNKXIE', '2023-08-27 17:16:24.522255'),
('5z34mgeuv60qxjwbot8vwi41xp13db57', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPKQp:y6s-Xkoh5FlKe3dy1JuigSrRZczXkzq7GmAE45gC23Y', '2023-07-28 11:10:47.798673'),
('5z7d8i7hddvhhmw5hpoyvh1lyzgibwm8', 'eyJ0aWQiOjEsImNpZCI6MX0:1qQ1Dk:0aU7BUgboU7mPFYkEgcM2ZHBvg-vUtJx7W1kb01ZU0c', '2023-07-30 08:52:08.547388'),
('5zl0efjvu067rkwmrc947hj0dlbrhgv6', 'eyJ0aWQiOjgsImNpZCI6NH0:1qQf6n:r0aRXDuze4sntJNjVZyMa09uIC6Wb-U9Ry33_vhab9E', '2023-08-01 03:27:37.884877'),
('650fik8mjustzyiq6m23lhf42e76awuv', 'eyJ0aWQiOjEsImNpZCI6MX0:1qbDrh:R-O1bjmlTAubuvhVxBy65Os_RNfQ4jpzIUMWx4sdmto', '2023-08-30 06:35:41.233026'),
('678g83w53s7ef6rxoavbcud3eacwk2j4', 'eyJ0aWQiOjEsImNpZCI6MX0:1qZwpQ:fJ6W3geM7pg3VX_IwNgsGKAHdOSaFXVXTdPmQhS_nRg', '2023-08-26 18:12:04.978334'),
('67m448tsc1husa4ds6fz0jbgzrwu1hee', 'eyJjaWQiOjIsInVpZCI6MTEsInRpZCI6MTN9:1qHGt2:ep7kKj_qJu9SC7mEsu0LAl_ysKNGLpzd_3_VDAfzIFU', '2023-07-06 05:46:36.463778'),
('69bnwoum50nepl8iq48v3gn81etqgzh7', 'eyJjaWQiOjQsInVpZCI6OCwidGlkIjo4fQ:1q9jyJ:_Ksrcp3bMg-cwCBZwIeRRzT3AB0O2O1P0Cviqqk7zDo', '2023-06-15 11:12:55.626544'),
('6a30h0k1wd7u30nk45i8p30a31kd49wl', 'eyJ0aWQiOjEsImNpZCI6MX0:1qbTzh:1rqcs0QtVw530oetX9NyVyeZjZIJgWBf0IPO_TlK9Q0', '2023-08-30 23:49:01.330447'),
('6a8ecmyf1yxs1kgzk2y4t6ypcwv32fhz', 'eyJ0aWQiOjEsImNpZCI6MX0:1qIfDi:rCDEFV4J71f9Co_VQhVNR9BsMpRbwS1s07Z73K4FiHE', '2023-07-10 01:57:42.903268'),
('6b38p1ziu73j2ik63sd3ygu4z8jf0lj7', 'eyJ0aWQiOjEsImNpZCI6MX0:1qIGo5:O5PQ2v4hJ_4evnBQ6xNXNr0ArmlSw6ctSiIqvNscYe0', '2023-07-08 23:53:37.965920'),
('6b87h1jhzwox8uysiyq3bv9ofledao8d', 'eyJjaWQiOjEsInVpZCI6MSwidGlkIjoxfQ:1qR4YW:atDYP-YdXA7WF3tOsihiyvDQxlHq8OyTznfp_tNLAMo', '2023-08-02 06:37:56.972601'),
('6bc6ci18kemni7y8thh0r665c859f1r8', 'eyJ0aWQiOjksImNpZCI6Mn0:1qNDqm:sLM6mUEjoBtueTUYB3IFcLGOF3b4S-ccdlIzVLEuSXI', '2023-07-22 15:44:52.804190'),
('6c2pehanwxfcndyso5wazmcg8w7xazb2', 'eyJ0aWQiOjEsImNpZCI6MX0:1qKQ3B:ZZQ60DohfVnbi_s6vYe-Ys3vi9U9LBVBJ2ZqSEH5AbE', '2023-07-14 22:10:05.135553'),
('6cfsft6uwcvvr3wsvw14yzh4watvvf6m', 'eyJ0aWQiOjksImNpZCI6Mn0:1qMJJy:j6YmclBoBtqyX9BCWciM2KV4lNTpEqu-Qpizp3MLCD4', '2023-07-20 03:23:14.984784'),
('6egk41w4pzlq80ae2kdaxwn404jjejon', 'eyJ0aWQiOjksImNpZCI6Mn0:1qHf5f:ePtpOqmCEKKKhl1gPRPW4hJ-lwkZnwsXWZN0ZEUBFbY', '2023-07-07 07:37:15.292350'),
('6emam8qyat0xpjw7kw3ir1o34p0ip26e', 'eyJ0aWQiOjEsImNpZCI6MX0:1qcimE:9rNT-Z3U1uxQUzk1uWEKipNqOqqJDs-b2E_yXKXF-tM', '2023-09-03 09:48:14.637771'),
('6gjdhj46ul284dmeu621afx7rukniggf', 'eyJ0aWQiOjEsImNpZCI6MX0:1qST0d:Zf_mqD99-jNJNI4S1EeWmj54RMFHMwwj6PcfiAtsKkQ', '2023-08-06 02:56:43.366449'),
('6iw2w6y6ze36gfy4q3cnqgcc3lxxulns', 'eyJ0aWQiOjEsImNpZCI6MX0:1qHjx2:eZ04BLEx9VI1R_8ocNIa44X6qpHkJBFZXvlb21VN_L0', '2023-07-07 12:48:40.748352'),
('6jcdrpbgefjrxap8ob9ce9s5g2l77owk', 'eyJ0aWQiOjEsImNpZCI6MX0:1qQkey:JgTtAj4dNZZSPaqRBy7Pxviw4YJRQRzoPaAoTTXoplA', '2023-08-01 09:23:16.877207'),
('6km32060g0lb96p04cqdxoe32njml7n9', 'eyJ0aWQiOjEsImNpZCI6MX0:1qbfr5:XTs6U5eyeM7Fnqm3ZQTV8GCPppTUx7JOLOZ9RBSSpCA', '2023-08-31 12:28:55.523769'),
('6libkcqxfl6ggfjxh76gjztyaqxmdsue', 'eyJ0aWQiOjksImNpZCI6Mn0:1qM94e:TYo8RmksPSTyCo4qxFfsuf905UFbUbByQbXrL4Jv7yI', '2023-07-19 16:26:44.593967'),
('6mr0y135zlneo0ory0ufalmx7u5px2kx', 'eyJ0aWQiOjEsImNpZCI6MX0:1qZoAC:HvLwwnviBOvwNxi8qNf1cvZkKqyi7NLDKzieL4qWg-E', '2023-08-26 08:56:56.446360'),
('6o55aihaqqsdyt2jmaawz94415cp8u2w', 'eyJ0aWQiOjEsImNpZCI6MX0:1qI4xq:dAcs-qde2FCE_hgNY3scZ03-WtZ5ADcXfmH8XKSPAZ8', '2023-07-08 11:14:54.377143'),
('6p0c4i1gyj6d6vax37hwpdqvssutbisk', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPumM:FO51_t54fsLdceBbZoJuPptUuM4CddzICV8RrYfWskw', '2023-07-30 01:59:26.565376'),
('6p2fuw191tsopl6dumwhss4gvkyv23bv', 'eyJjaWQiOjEsInVpZCI6MjV9:1qQkK6:HxyJuZ6DZU7LVnOyqhwuCdhYDOTD3LJzUvB8Mw5NHak', '2023-08-01 09:01:42.805414'),
('6pjuu40a78o2st9y85cbr69qjrkc615n', 'eyJ0aWQiOjIyLCJjaWQiOjN9:1qbflF:FS95eu-lOFGy4e9_fKfaaD7dAOiPbirI1g1CRjrdLXk', '2023-08-31 12:22:53.005059'),
('6pwk97zisw97f0yy3d7bnvlmy0yeu99n', 'eyJ0aWQiOjEsImNpZCI6MX0:1qNGUL:ZOj2Wj3wQ90dpCnKXCr6jOYws9co_-vY_0iIoNyLZOc', '2023-07-22 18:33:53.840142'),
('6r55ph8379exljq48nt4znz3gshfn3qx', 'eyJ0aWQiOjEsImNpZCI6MX0:1qM0my:DupcduS7rIoZtUV5aF463BF-giQjgz96_-s-aS4ZH0k', '2023-07-19 07:35:56.259416'),
('6t0k4uqfz93gez5fxbg2wmyuq1ug8h5m', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPFcZ:rpIsqkmMNP4I7_DeH8bpzzqGFy3XdUvzJVP9G2gyGS0', '2023-07-28 06:02:35.526950'),
('6tn4w0ji8nw69b4buefod785ed042f6j', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPiPC:usjirG7XiH0nkU5pQw52viJIPntOuNhaz_SIRcS9Cj8', '2023-07-29 12:46:42.889786'),
('71mrw510rp2x24x01qntguv8yave77ff', 'eyJ0aWQiOjEsImNpZCI6MX0:1qIHuQ:Sm6MIOk6NkoCLtwqvYTPtVtLPgvq_uv2ZAjVONRVfVg', '2023-07-09 01:04:14.579382'),
('72ctfq02kehd8j8hb5gg41qcy50iq817', 'eyJ0aWQiOjgsImNpZCI6NH0:1qIcII:7Y4JKCxMlS3B9VredXSOE-YBw5KbbE7whtrGPP_t_fg', '2023-07-09 22:50:14.032244'),
('731ae2zulvt6ydjfq2fpwgrgyg3mlp0g', 'eyJ0aWQiOjEsImNpZCI6MX0:1qR08r:oNQFma_e6Ddvmsoq2P0PN6LMGNrr4dzn4rNZ63-EcnA', '2023-08-02 01:55:09.647630'),
('73ffsuzyp5gabuhudzvdtsgj92o1jufs', 'eyJ0aWQiOjEsImNpZCI6MX0:1qcQWB:xv7vudog_Vhd5CM1JKnWtm5sO3SICPu1L8bpAs0vWoA', '2023-09-02 14:18:27.962756'),
('750gj3gobwo6ak8gnd6yoyn0jkdgh41n', 'eyJ0aWQiOjgsImNpZCI6NH0:1qRmUF:bXECubxV99Ikw8Nw6Y8SPnmIESl5NVgG6dgFRXwLuCA', '2023-08-04 05:32:27.580586'),
('75ano1hybpl50b1ave3zi2gczikpez7e', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPJbp:ehPcYLaZkY0cmnRkehgDww0-6cT9W5LUlyL2-s8CKC8', '2023-07-28 10:18:05.830187'),
('75mi53o0hdncw6phrc81lz27o5hqcvov', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPioG:sGn105p_tZlfUmSAPOqjq5yVZU1afTKCC8tYPkitGak', '2023-07-29 13:12:36.320788'),
('76hbymyn79x513syxclszryr4zohqes2', 'eyJ0aWQiOjEsImNpZCI6MX0:1qNJSe:iZZGmhTvoJztcxLoEzi8FZ9sy9TsGao1ODiTq7m6w5w', '2023-07-22 21:44:20.397511'),
('76wg58yiyjxs19pku3u15q6ls6qsg32s', 'eyJ0aWQiOjEsImNpZCI6MX0:1qKQ3m:7rJhgstBlIuoC2lTuWra60AnksFu7-4z9DyhzCVL9Pk', '2023-07-14 22:10:42.447953'),
('771dveaz8ibwscgj5t0qsndik1grmkd9', 'eyJ0aWQiOjEsImNpZCI6MX0:1qJfTZ:eiLRZMca0a_GP_-Kqau72Q3DZ7oegz_-trA5lLNGro4', '2023-07-12 20:26:13.230743'),
('77wof922qkuyqt9hcxcuxhtaw375wzeh', 'eyJ0aWQiOjEsImNpZCI6MX0:1qQint:r0nWGtlbs02juSAYyo0JDWErR69OvFikeX6MCOGrrXQ', '2023-08-01 07:24:21.746253'),
('79orqhfwav2v4smpjicmj10dob1mx9tk', 'eyJ0aWQiOjEsImNpZCI6MX0:1qdDNh:MIzfTbWYuP-pBicgrvDwdbh3X0lZjojd9aXpoIUHIRo', '2023-09-04 18:28:57.951029'),
('7a9jgaznknoi6nctbde89hbhuuq5tp4x', 'eyJ0aWQiOjgsImNpZCI6NH0:1qIioz:IuuwKR8gF5O3DBewoFii6rwKlL98WRZpWrvRbdlRXVY', '2023-07-10 05:48:25.498001'),
('7blzrlsjtqhd8nsny17yeaope2o97bav', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPj2X:ZjJgrSAmT0P0x787erK-nuA1AckQ8gtpGdmI6ND64ZU', '2023-07-29 13:27:21.803599'),
('7cexj3axmv2fuz06523k8cmu7kf48lg2', 'eyJ0aWQiOjEsImNpZCI6MX0:1qQjl4:UoGOKQJ4cNFQYT3i-x6BD8CJr-TtdhSMoO5Aj6xRKDE', '2023-08-01 08:25:30.695671'),
('7cjor6pq8n0tc44mlpri88q58wn0r53s', 'eyJjaWQiOjIsInVpZCI6OX0:1qWbjz:vjjR2YH-rPVQnQcXupMjDNhZJZ69S9LWdx6zd139-Uo', '2023-08-17 13:04:39.782003'),
('7csyhvby1mqc4xln8s7dc6ogdeqcuvbr', 'eyJ0aWQiOjEsImNpZCI6MX0:1qIa0S:755R4KP2l9bENktJbbxx9VDR1Bef2W0IQXcE2bF912w', '2023-07-09 20:23:40.157787'),
('7f732xvliz54hknab65pf5rcghvdp30b', 'eyJ0aWQiOjE5LCJjaWQiOjEsInVpZCI6MX0:1qWbXE:DaZOKodgdeSaWA0QeNIdKGvtfy091Sfk-9ozULNTb3s', '2023-08-17 12:51:28.942652'),
('7g5304exju0q5cs3u72oxox088onauo8', 'eyJ0aWQiOjIyLCJjaWQiOjN9:1qbm72:sp72vWGZQh-2XfAo46TsAbWtgYDibqX04kMRg_3OJSw', '2023-08-31 19:09:48.282260'),
('7gk1l02minplvvoty8g4wg0pi3ep2m0c', 'eyJ0aWQiOjEsImNpZCI6MX0:1qNeoF:TS2hNjXC2plIMjOCN6DR5gvFtfSY0YqUx9Ld1EywcmM', '2023-07-23 20:32:03.469197'),
('7gkghc6kprgu2ij116potq6masalwwr5', '.eJyrVkrOTFGyUjJU0lEqhbNKICxTpVoAiUcIEg:1qRAPL:JseZsmadnDB_HEPsw6wONmKu7AQ8WpennEwc3fHlyBk', '2023-08-02 12:52:51.527229'),
('7gm4qwkcbx49fh1ugp0bb29ehwvt5dbz', 'eyJjaWQiOjIsInVpZCI6OSwidGlkIjo5fQ:1qBSkA:6UhKJzU4xPea-lhTkYgVPq2RWIthQO-pibQluxRcA7s', '2023-06-20 05:13:26.859132'),
('7h9hgvvmz7xen3821lxx21wr316q455f', 'eyJjaWQiOjEsInVpZCI6MSwidGlkIjoxfQ:1qNET6:9LC2OdL4AUNsKsHZrYkAEHP_K07WfQuKWYwnWMcGf00', '2023-07-22 16:24:28.059357'),
('7hp9dej9vyfpqhzi2h5nik0coa5nq70j', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPKzI:b1_Im2MXRa-y_XPhEWHXxgf2XewoAyO6Q_aw3G18G3M', '2023-07-28 11:46:24.933844'),
('7ixy25wg5tjjfs3gob4hqvg4pgwdvfk2', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPqQM:0RSv58YQppHaQ5xAa1ZubSnHxe-piMhUr0TpPQI-O8U', '2023-07-29 21:20:26.773832'),
('7jibevotdq43zvdte22pqpn84k2mk9bv', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPkN0:wiXQy2PsScJG7wK0pUPtkQFF7yZk5RmjrurM3KCY3tM', '2023-07-29 14:52:34.367662'),
('7l2nc4wxji0h7tai29wnwrurrh7me8aj', 'eyJ0aWQiOjksImNpZCI6Mn0:1qMQLl:K7-UTBNKzGtrhBUDoslj60_Qph8yN-ROnHkGsH2ihvQ', '2023-07-20 10:53:33.040367'),
('7lcs7ijxr3iddfr68zywegxeixz42741', 'eyJjaWQiOjEsInVpZCI6MSwidGlkIjoxfQ:1qPL4z:t0Qeul5ZkW9oDD-xs3hovJMbPJciCdY4M-WEy5r9-ZY', '2023-07-28 11:52:17.993798'),
('7ld5lxigow0be8dus14xpq7s58l587p8', 'eyJjaWQiOjEsInVpZCI6MjgsInRpZCI6MX0:1qWDhx:Mn4PKnRwjIRhKV5FsRc-Xm9aIvKBlEepWOPARaC0ryY', '2023-08-16 11:24:57.944873'),
('7nxn0it3atynrb3rrlm5y1n51kd3dt0b', 'eyJ0aWQiOjEsImNpZCI6MX0:1qKkut:JDp9EKTgQHxPvfcbwyxzKyJAD1KgoSHB6ptIHjT5Ong', '2023-07-15 20:26:55.557248'),
('7po7s1va9zj6eicp8afpjxzasi5rtcwu', 'eyJ0aWQiOjEsImNpZCI6MX0:1qc1ly:C93V1MOcxiGHmt-yXKlXZWqg4apGe3zQRAFP8q-nkWU', '2023-09-01 11:53:06.858879'),
('7q29pi5pfeh2svu461p7har7xkm0mbst', 'eyJ0aWQiOjEsImNpZCI6MX0:1qIBoZ:CsrFVNHL095z-iywvBkyOi7-482hkcr1uOzNeDX1hqE', '2023-07-08 18:33:47.293652'),
('7solifaqfhyypycbgtmg7e8cqeu9i74i', 'eyJjaWQiOjIsInVpZCI6MTB9:1qepAR:hIsNddw6cKwSH03imOoblVSXWKk6-I-E3VSwjWa4q0E', '2023-09-09 05:01:55.559917'),
('7tn9b34e3innufypp3c97ow120uoj8la', '.eJxFitEKQEAUBf_lPEttSPbJr9zWtsju1bqS5N9dpczjzFxgWWHbum6rpoAj8YHzCWsKJIoeFhTzLiNBKychJ-q6D5U-0rT8W2fmPfXhlaXjqMNK23ZwHvQxCu4HHAUj3w:1qKWiL:eGFK3ln-Y-wJgLkG65W9gxHdhYBzXVNOa0vu0mdb5VQ', '2023-07-15 05:17:01.475555'),
('7u5e4zj0mcutd3edp6dbhos98dwpb3dk', 'eyJ0aWQiOjksImNpZCI6Mn0:1qObQ2:GCs6P5b02nQ7LHV9D1Qsr0lzzWHX-2bgiZIw6DhhWAY', '2023-07-26 11:06:58.298181'),
('7ufc3z6dummkn4p9mrc2ds3x43xjuk42', 'eyJ0aWQiOjEsImNpZCI6MX0:1qQUBC:jV5sp6Opti8n9DrwHyq6ZwFnnWpWWYGRrOhMFlz9k1c', '2023-07-31 15:47:26.165026'),
('7w149g529wz69lt3c5f1j3va4mq3egmo', 'eyJjaWQiOjIsInVpZCI6OX0:1qCzNF:qQOYQBe3QsD_GB3c-vE2ZphLSl8L-cyonwScvodIn7A', '2023-06-24 10:16:05.629507'),
('7wt2wgqqxdkfkafwwhph1zgyhogd087r', 'eyJ0aWQiOjEsImNpZCI6MX0:1qbgup:qaC0Gkc6YpFhNxvY4jwzH_lbfK4mqod07CG1XDZZuh4', '2023-08-31 13:36:51.860917'),
('7xxnbk3t4qnmufmion1omlfyucpg8zw7', 'eyJ0aWQiOjEsImNpZCI6MX0:1qZnFj:LM9yOAvolxVXoH4w7Ea9YY_otVO_307Hky2nym8bv5k', '2023-08-26 07:58:35.390019'),
('7y2tfjxt6zem6w6cx9sx18274rb0wk1j', 'eyJ0aWQiOjEsImNpZCI6MX0:1qaICo:LPz_Dd2rUHNeBTxMtdfwgDvgMxQqfgDObbkw7Q0rd-E', '2023-08-27 17:01:38.072156'),
('7ydz8d3ax5af0n43p6csh54mzef099ou', 'eyJ0aWQiOjEsImNpZCI6MSwidWlkIjoxfQ:1qMPOL:7-6b9nV8qyz6tbg1ZsOLgeAaG4W3-fiM2gw5pJQAxkk', '2023-07-20 09:52:09.080683'),
('7ypjc2k0uanzxe3orhdx1t9dki7a1a10', 'eyJ0aWQiOjksImNpZCI6Mn0:1qM31I:9GfzjOdHP8NpTLfRQyERxILeTzLPuqcTxRTktqgkyX4', '2023-07-19 09:58:52.419625'),
('7yu4y3k2nn0rp4btzmpxj4fr18mfjwa4', 'eyJ0aWQiOjEsImNpZCI6MX0:1qZq79:NO2CGwluFN_DGSkNQj5qiSEhJZEoO1MnEaHtLIjG7UQ', '2023-08-26 11:01:55.302753'),
('7ywk8wm2z39l9lwel36944rocd223blu', 'eyJ0aWQiOjEsImNpZCI6MX0:1qMQdB:ohjpEy-hEtAUea_olsKVtbEWvySaWIyxb5cd5noVHE4', '2023-07-20 11:11:33.400727'),
('7z28ije9lubnofg3ghqix9l2qainozh2', 'eyJ0aWQiOjEsImNpZCI6MX0:1qM4Ta:OGW_cgA_JSIEtU2KyfRvwIObDOMq1wUFc0NQx0co9N0', '2023-07-19 11:32:10.792370'),
('7zstfuapqkwv3fpebeijzjm94kpx4jjh', '.eJyrVkrOTFGyUjJU0lEqhbNKoKxaAIFqB90:1qSBTy:fgaMT7JhuKJq4C6gSi5tWWxvgCDCSWcrE9uPtiCYjEU', '2023-08-05 08:13:50.570925'),
('81dzey6v0dcgiki0scaaj66u1km71t5n', 'eyJ0aWQiOjEsImNpZCI6MX0:1qZnEe:usuXmsRJqrEhvUYqLVVSbuZjzSyE1CtoCk6lV3ngM10', '2023-08-26 07:57:28.165299'),
('81lzlxdln5dprccpajzahcr6tx0pum02', '.eJw1i9EKwjAMRX9F8jyEwlDsk38ioYuzYpuRJo4h_rsRuvtyuCe5H0h5ghgGsE7tZF2c5zCevCRUmlk2iOMAFQtBhErrwRoJ-JmrYlKXYY9bKphf7rCI6QMv4Wn1Ov_lMXHxhwVbW1mmvtsntzdJvmdyr2L0_QF2ojJj:1q4Jxf:ksnEbBCtIXa9YnSlXE67HsQjCwAqNHnL2FJEeLxO4uI', '2023-05-31 12:25:51.098250'),
('86d1yna5mgpwu2dl27gvuvjijjvb6t31', '.eJw1zcEKwjAMBuBXkZyHrFMP68kn8OALjFDjrNhmpKlDxHc3G_pfEj7-kDeEeAHfNVCX6doGdF1cA6wT-MOua_emAZVGltfazZgIPJxo3pypsChYgbNiUOP-F0NKGB9GmKTqDXt3r_k4LrgNnKwwYSkzi30EZ_mfDE-SeI1krlLp8wUEojNs:1qFC78:4MfiL3zVXKSbH0PWsZSGn6jFrdktoz-o5TReGyJRunk', '2023-06-30 12:16:34.651909'),
('86k84yr1wm9ueqw8vihkpg9kimycn5kh', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPJeY:Lfhz5QD_wlWyXvttNn5X1AqWbQN-wrcNTGXuqnpibrc', '2023-07-28 10:20:54.530359'),
('885canxy316ipw1cg5nt2xk1fcb1texq', 'eyJ0aWQiOjEsImNpZCI6MX0:1qaKJS:skuVHTBg_FPVHRsi7JnWi1zd_LBHBu5u99AlXeL6f8Y', '2023-08-27 19:16:38.190491'),
('88gvkjpfldjiwd19bvgpiz58pbe5qezq', 'eyJ0aWQiOjEsImNpZCI6MX0:1qcAd7:ElQOKsZNKRvn_RsALnxDLduKWEJOKPPKvJpEyCba8iw', '2023-09-01 21:20:33.217372'),
('88tnb37lutvzpsnbllzlyuc8lrvoj7mf', 'eyJ0aWQiOjksImNpZCI6Mn0:1qHee6:pW1Gdd3ckXKuvRxHMIhQ9rtoUhD1wm7E7u5omfaQiDs', '2023-07-07 07:08:46.927835'),
('89cir1nl8w9kmm3zuqqgtg3koi2xqym8', 'eyJ0aWQiOjIyLCJjaWQiOjN9:1qcIiS:8tzZ6vZ0EkcTk2NidMZx3qB07dsbn9KWJ0h2u-OHOIQ', '2023-09-02 05:58:36.018736'),
('89i58vg3t3asjjx376muu8405pzcvgk3', 'eyJ0aWQiOjEsImNpZCI6MX0:1qZxBV:IIXBQfHuxLoMyn2iTsemQWczsVqzOM9IajjGcbdQDN4', '2023-08-26 18:34:53.356808'),
('89jpsx7r8d4rvcw4o0m7o8dxfqi2i9p7', '.eJyrVkrOTFGyUjJU0lEqhbNKoKxaAIFqB90:1qSDfU:VvX-hsEkUsUMgR32KIvkW2AAOj5nBnaaK1XefyFLJHU', '2023-08-05 10:33:52.823683'),
('8ac13g9asy8kwosmx62tcanzks5x8jue', 'eyJ0aWQiOjEsImNpZCI6MX0:1qQjFZ:9epHkg7Y4AsxPDrtV6s1ICtZCKp3dJgR7PaU4u-edFU', '2023-08-01 07:52:57.076513'),
('8ad9tmc249batlalxbz8mga75g45j1e3', 'eyJ0aWQiOjEsImNpZCI6MX0:1qONma:vV1IPrGJZljUXXeWeDXT0xstk8xN2VDzvde-ixJwwIA', '2023-07-25 20:33:20.622687'),
('8bf951uvy3beprszfv42844iqrzjus4t', 'eyJjaWQiOjEsInVpZCI6MSwidGlkIjoyfQ:1qPbpW:kytViUj2w3f6Qv8P9J6NS1uSbpeylT13YEnrHtEpUQ4', '2023-07-29 05:45:26.407784'),
('8cbm39kp5z73sq31yfd5edrfd0r2q3b1', 'eyJjaWQiOjEsInVpZCI6MSwidGlkIjoyfQ:1qMkMn:HmN6H5boSv8vgYnD0UfSL-nZKIvqYn-cw0ScC4i7bJA', '2023-07-21 08:15:57.589922'),
('8cbohw324mz0pabwj5zwpxlh0vfyshcd', 'eyJ0aWQiOjEsImNpZCI6MX0:1qZpwW:1JT1t9AvEe71421zQpzBqVk9AD33ITqcbNDKfdeUt84', '2023-08-26 10:50:56.696043'),
('8cp04bad7w10v97rt1te4gdqe6ljari3', 'eyJ0aWQiOjEsImNpZCI6MX0:1qZnlV:UwwRIUpwX4b-f0xM8OZFL0KagOPdC3idosTUi074jJU', '2023-08-26 08:31:25.799644'),
('8cw60jb1m3admcehrp981h4k38f2pibw', 'eyJ0aWQiOjgsImNpZCI6NH0:1qQf82:gbMdVO68IyiNnALEVepALRQREMmMeF42cyPqR4DXtaE', '2023-08-01 03:28:54.541450'),
('8efln1thvbyujv0qkldqndeiuwzujxko', 'eyJjaWQiOjEsInVpZCI6MX0:1qa9yU:xasDXQq65Xl_hWDJLp3kPJpdIrrZRfQo7NzLv2gTB7Q', '2023-08-27 08:14:18.610572'),
('8fe9safdmmmxb67egl82daz0mbs1ti4o', 'eyJ0aWQiOjEsImNpZCI6MX0:1qXtjq:cgKpDnw7PweB3gWicu7SYvHCsDgemz5HzCQhZ_fpQYQ', '2023-08-21 02:29:50.081922'),
('8gqh7w2w9hdwybukj480f2y4hlh2gjik', 'eyJ0aWQiOjEsImNpZCI6MX0:1qaIxO:cpwHUGx1QCQklVkVpmlkx_TdA7bxBTbxsuU8jtoRrJk', '2023-08-27 17:49:46.809224'),
('8jp5rnf2dgcs29r59evdgcciq758egrs', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPfAp:6eVL7aR416hF-e170ExoJaQZqL9PJHbdRZDKxIB9lF8', '2023-07-29 09:19:39.666432'),
('8jyfaxkxrlcnnw5f28o6429deqeiozfs', 'eyJ0aWQiOjEsImNpZCI6MX0:1qQPzf:ObWaehIfxEp1Km7ItdXieUadXwe0FtEhiBGZCt8mnyE', '2023-07-31 11:19:15.710294'),
('8nf8typmb61dcbk6pojuzfyioxerzzc5', 'eyJjaWQiOjEsInVpZCI6NywidGlkIjoxfQ:1q8vTi:HSRfr12Y_m1OMwATok6mE5up71z7NQrx8hturb00Vvg', '2023-06-13 05:17:58.220112'),
('8od0oyghjkoq679af8mr71uhjz8vwts0', 'eyJ0aWQiOjEsImNpZCI6MX0:1qM5ac:TY0pA3_x3uid9v5Pn56zkIu0hiPJzAwHXUbu8LkVI4Y', '2023-07-19 12:43:30.744357'),
('8qpq6305yqdqhp66zdtp8yjq4e2un11l', 'eyJ0aWQiOjEsImNpZCI6MX0:1qQjl4:UoGOKQJ4cNFQYT3i-x6BD8CJr-TtdhSMoO5Aj6xRKDE', '2023-08-01 08:25:30.753610'),
('8qvn0p1by1wmpg8wcir9oijknd3b8xxa', 'eyJ0aWQiOjEsImNpZCI6MX0:1qKQ3i:GvcqHOsuQHqqy36u17M0CLxks8fPfmC3oR_eqs35-bI', '2023-07-14 22:10:38.181571'),
('8rgzjxjtpzepkpagbvqvsq2qbrg6db6f', 'eyJ0aWQiOjEsImNpZCI6MX0:1qZrXC:dwKwFkOi4_BZe2Wis-ZWdWe_2JCnwg0AVi5CQeso7ME', '2023-08-26 12:32:54.976017'),
('8rxu8ffzdb8uj7gq58w3zyn91vc1sg56', 'eyJ0aWQiOjEsImNpZCI6MX0:1qRBSE:Fe6fBQ_2Xlefne-VhkrlS_ank8P9nX8EmrTcYOvRVmM', '2023-08-02 13:59:54.601972'),
('8sjbdys3aw3mmu7nmagm8ssnwgl3boga', 'eyJ0aWQiOjEsImNpZCI6MX0:1qNajG:ARYfMXMXqOzN07-W_b_COjcIUhNlZx6qdIrRRnurjdY', '2023-07-23 16:10:38.753429'),
('8usacqv5p0gx974ndqtsblo71y8ag60c', '.eJxFi9EKwjAMRf8lz0NWBKF98k8k1Gyr2KakqSKyf1-EDc_jued-gbVCuJzH0fkBIirNLB8IboCCmSAAZum6INjKRTGqOb9jkjKm5z_z7tHLdf7JU-RsQcXW3ix3a5xxXG4vkjQlMq_Sad0Agzsr8w:1qLME8:leDtiCYgt2A56vYX4y2LVUmQGWclLimzBgClkZGKGuY', '2023-07-17 12:17:16.279642'),
('8w0t9297w0rni093ob9kok5043xzrtek', 'eyJ0aWQiOjIyLCJjaWQiOjN9:1qblYh:HqFt7DRSuAyB2dfac0Fup4EqW83ASsPf-f3AqvcGZAo', '2023-08-31 18:34:19.471314'),
('8w2tfxgdv03o0a9hakwty60wyur3ivlx', 'eyJjaWQiOjEsInVpZCI6MSwidGlkIjoxfQ:1qNERO:jjTy9UViekpQede284CwaUeEYzZzbxwMy9llqogT4qg', '2023-07-22 16:22:42.713780'),
('8w8u3bata39b8z16tm9fihxkcmtm90r3', 'eyJ0aWQiOjEsImNpZCI6MX0:1qDlpy:hd0ozHsWuSjwdOmF0CCU9RxRVOfFvjLLsowQHgYOCVc', '2023-06-26 14:00:58.431223'),
('8wmqmcsqnrasz4qlrw0ti3tdw1w3sxu4', 'eyJ0aWQiOjEsImNpZCI6MX0:1qa6j4:fbVaXQ69DOOxCyRNDX6u7YYKaXRVTmXO1pzSs-HfWmk', '2023-08-27 04:46:10.542387'),
('8wpw83975o9jf4ppob93u294980z6pen', 'eyJ0aWQiOjksImNpZCI6Mn0:1qLXLP:4-mVPicYiReDh2g7fBI62vyYnZT1fbZf80Sesgpp_e0', '2023-07-18 00:09:31.566387'),
('90hu0qtwbx2egtj8iglhcdusfcj1pi7s', 'eyJ0aWQiOjEsImNpZCI6MX0:1qbR3x:zzFofd0_UANYpAX2g-zkMS15pug4Q0yvhZfg3jr-DC0', '2023-08-30 20:41:13.676848'),
('91dkaxjqtr2j0r8wnvt0fxz1tqual98p', 'eyJ0aWQiOjEsImNpZCI6MX0:1qbH9R:AeyjxnB8IQ_5IsD2purBPegMSifEO23TY0HW6HLCAJI', '2023-08-30 10:06:13.121423'),
('938sim5tatmwsk13xf7405nex8qnk6z6', 'eyJ0aWQiOjEsImNpZCI6MX0:1qbnEa:yn8QElTpaNoTxtrnmFG-wjmIzIMZBfXfgRuqh7LxI8Y', '2023-08-31 20:21:40.306982'),
('940gx46xh8zwf5nn3a705zx5ev8uuu8m', 'eyJ0aWQiOjEsImNpZCI6MX0:1qa8iY:oARuKi-skJJZwGP_Tjebrmcd2HCS3h6wCMHzZmzr12U', '2023-08-27 06:53:46.672253'),
('94c7e78j87j6v75jpb1t0l66oiwb45id', 'eyJ0aWQiOjksImNpZCI6Mn0:1qMNRg:CxTNlcj82N9mfS8m8_AfPYtk1zRykxEDoQS0BCBO_Zw', '2023-07-20 07:47:28.811552'),
('94u8xxiu77spcz42z1ekq8uhggmaajm2', 'eyJjaWQiOjIsInVpZCI6MTB9:1qdo4y:tx344LT-lBv4bh2RuwYWCU0ZRrAclWbOxgAjjX_jfPU', '2023-09-06 09:40:04.873903'),
('94y915urvulkklrhcvaa6ln6l128d6d6', 'eyJ0aWQiOjEsImNpZCI6MX0:1qSqYH:gEb1l0qRYh5qWBGJ0lVf1STnyWkJB7ZS6MF-cpbtFfs', '2023-08-07 04:05:01.649085'),
('952q5hf6w8f3fiild8fxe606xu0uhgs6', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPJjS:5iOhpsgiLb4G6ynDtp9s4zbY2dHMre3eQE-ZfXaAh9o', '2023-07-28 10:25:58.225085'),
('97fjm9467jz81ttco339sfxzird35eq4', 'eyJ0aWQiOjEsImNpZCI6MX0:1qbdJ6:t9Y_1I4xoKAkR-xp2PpZjj_MXE6G6kaTe_RnJWdhNG0', '2023-08-31 09:45:40.233354'),
('97rnku7j7hz5dniw2n63wd0oz5qtqovs', 'eyJjaWQiOjEsInVpZCI6MjUsInRpZCI6MX0:1qZDgG:GLSmzaF4G2j7qTqWbe29NJ7yMsjcx8yaMM6Btoapanw', '2023-08-24 17:59:36.231498'),
('9b5u2ntzb6v7rqakteyqimde0dm4k8co', 'eyJ0aWQiOjEsImNpZCI6MX0:1qaHav:KfSqoX_KKNElKm2a16wTg1dzPZxJz2GGP3odqtoEooY', '2023-08-27 16:22:29.399341'),
('9bf4bkx46nlovdcu40a15wdgjbstln07', 'eyJ0aWQiOjgsImNpZCI6NH0:1qQggY:oQL2Fi93L4qSZjIMayKxN90sK38yEykR-jpto2XWuTQ', '2023-08-01 05:08:38.624025'),
('9bf6jlb0xf36mgrxbn1p8j2tcugolyvv', 'eyJ0aWQiOjEsImNpZCI6MX0:1qZqO8:qOeu_sUnT8eaBuJ4-Vl4HrXg56ewb_tXIe8NmrT68l4', '2023-08-26 11:19:28.530285'),
('9bt4j6l39ev7s069fni13w7fwz0d7pmu', 'eyJ0aWQiOjEsImNpZCI6MX0:1qbO33:bT6FQC-aXK3RzMnrykCa-PhyShEyUfsOdIb5u4Ce77U', '2023-08-30 17:28:05.442468'),
('9drufopdbg4bylbu8gqp2a3quqfwllc5', 'eyJ0aWQiOjEsImNpZCI6MX0:1qcimE:9rNT-Z3U1uxQUzk1uWEKipNqOqqJDs-b2E_yXKXF-tM', '2023-09-03 09:48:14.361363'),
('9eldekzpyzsq2inux3a3z52l1u06zijv', 'eyJ0aWQiOjEsImNpZCI6MX0:1qNuA8:gFYcCamzBDHkNk1K_FNq-Fp4P0st2RI-HKK-dS5DYp4', '2023-07-24 12:55:40.033886');
INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('9i8ik6ir1rpmbz0b58k7kd7v3fn78g05', 'eyJ0aWQiOjEsImNpZCI6MX0:1qHm6q:sIOKjNAx79RW1XpVdqY8aeI9gFZz63QxmEYTigh7Myg', '2023-07-07 15:06:56.512549'),
('9iosty3hzqnl4zoaxd9k223nksjuue9x', 'eyJ0aWQiOjEsImNpZCI6MX0:1qcORL:utEY-UlquFe5m5eop4hdgNo2ELT4SsF7nnbuXzhfq-8', '2023-09-02 12:05:19.580548'),
('9ipvtj9kl7bd07kkzhwn6n6n891640vc', 'eyJ0aWQiOjEsImNpZCI6MX0:1qd0A2:4AdiqPCRBL_44I-qoFqiitf-VKCXaH1ZbvZ1tESruKE', '2023-09-04 04:21:58.696943'),
('9jm8l1izia9r6ojsuinnowom7eeaok13', 'eyJ0aWQiOjgsImNpZCI6NH0:1qR0xt:t_yKU3E4eY-IxQr7zHhlaMPeTA-EMUdcBtwRG3pdPLk', '2023-08-02 02:47:53.081212'),
('9lmf0qkc51vn5r7if7rmwn0pcn6pfy31', 'eyJ0aWQiOjEsImNpZCI6MX0:1qaXbN:MV-tF7rYf_DH8Zu-CJhBa-Q5Ufg7XxAFnTTenleex5I', '2023-08-28 09:28:01.533791'),
('9nc69cbjkr2xlozodz74a1m73pbu7juw', 'eyJ0aWQiOjEsImNpZCI6MX0:1qaW4J:bEoFLTvSpyLlvAYHp_5y13nbxviEfW8TzYQxoANWQJ4', '2023-08-28 07:49:47.919008'),
('9nck83m4zvtm5cstjeps855l6jp48g51', 'eyJ0aWQiOjEsImNpZCI6MSwidWlkIjoxfQ:1qZSYz:iGpfcLtQaP6K-W2OX_9k-D1oYwHfA2qNTWzehKblc_M', '2023-08-25 09:53:05.232867'),
('9ng8gmb00iodl3uk4ul8zq9qojls432f', 'eyJ0aWQiOjEsImNpZCI6MX0:1qaBPy:FcG0RpGCFt7MvKfRPOh9DhuvmnphkWjXJnJBfI-dQzY', '2023-08-27 09:46:46.621680'),
('9o4fzcazq7z3aoi3igp9jjja6yvhc5uj', 'eyJjaWQiOiIxIiwidWlkIjoiMjgiLCJ0aWQiOiIyIn0:1qU3Ah:REKWvY7gpL8fqP4sQdMGPSVWG3TjBvt4erQIz_C7jzU', '2023-08-10 11:45:39.848903'),
('9okjhki2cayo802no1d0lpxyu9i82j0z', 'eyJ0aWQiOjEsImNpZCI6MX0:1qdIsD:IOQuTqK866ZbXLumG4nOWoCyPJZ6Yi9EIlFr_6iJxuU', '2023-09-05 00:20:49.164395'),
('9pi8phbzp140jqfu74pkjd44mj3ko77n', 'eyJ0aWQiOjEsImNpZCI6MX0:1qdDvr:Ycf74A1y8d_jqZAuRafEd1ZekNT1sHi70abZhRbX8Q0', '2023-09-04 19:04:15.353949'),
('9pj4ji1nsb7z4mhrziecyz7kaj93xus7', 'eyJ0aWQiOjEsImNpZCI6MX0:1qQTlR:DGzzhOtuebhHk6r5-MdUEyptW1jvO5AzS0sqDre9hsI', '2023-07-31 15:20:49.827361'),
('9qibx3buk8izoxiuc0govzhbkdcaaw0e', 'eyJ0aWQiOjksImNpZCI6Mn0:1qR8gs:jzzX-ZWctqLIfAzvK4zY0uIMuIlndO2iIgcUQuRzkU0', '2023-08-02 11:02:50.176151'),
('9rkrzgj2ac5arpjwiu3u22bqzual1wcb', 'eyJ0aWQiOjEsImNpZCI6MX0:1qQOa6:X6kgADDvA5qh8GhqutnKQ5WcRkVwBvFUWQUGlZQBbno', '2023-07-31 09:48:46.581425'),
('9rxpzedyhft1395r7ow97z06sa89gcer', 'eyJ0aWQiOjksImNpZCI6Mn0:1qHgHQ:tLk3BFnea6IKK6RAIKrETXRDfUMfdlXhbYPDjyQXQZg', '2023-07-07 08:53:28.501939'),
('9s57i5qoyy58pbbotphmiafsnzom6c9h', 'eyJ0aWQiOjksImNpZCI6Mn0:1qOrBi:T0qWP_86-QGYhNlURtijJ_4BQZbkLYqoFuAyxoT48MU', '2023-07-27 03:57:14.802150'),
('9sao9oludzi02g95ic5cj8vcurza6p90', 'eyJ0aWQiOjEsImNpZCI6MX0:1qa6g8:nl9ktH7E8ATs5bJdIlFwJ6ylsSb1oOBoZ9klDLXGbUo', '2023-08-27 04:43:08.169000'),
('9tsimrm90dfjim0fnn95f3ewg5yai3ze', 'eyJ0aWQiOjEsImNpZCI6MX0:1qJaPO:-85OqjaoR8TLX0y7qLuaBsZ5P7HSWWG5lrXjwURfBFc', '2023-07-12 15:01:34.170547'),
('9w693qf2jsqxhowwuatvm95swh6sqor6', 'eyJ0aWQiOjEsImNpZCI6MX0:1qZnwv:cn4HKqJVVCZ056MTkcuinyAraPlRsAFwWUqdswQ0Ze0', '2023-08-26 08:43:13.249142'),
('9wgekwby3cjhuktjm6i604qwf3a61h36', 'eyJ0aWQiOjgsImNpZCI6NH0:1qLHJp:NFDpjmCTeeTTvkT1S0k-cnVuL8CRLYPaqC8VOx80yOc', '2023-07-17 07:02:49.960920'),
('9wh3rea975wpgnefydfocd8lcxcym6vb', 'eyJ0aWQiOjEsImNpZCI6MX0:1qbH6W:zE5ARmZcVT0YFCJ32Dm4q_w53YfR7nww7Ch_0MbTFk8', '2023-08-30 10:03:12.876831'),
('9wyyfnzg1xcr4xea6qr71aa7zzrhdls6', 'eyJ0aWQiOjEsImNpZCI6MX0:1qZwrW:ZkzsvKnrf04xBbU0QmBx3GV7zHNv2-_tucnyyW9EPhU', '2023-08-26 18:14:14.018469'),
('9zip0baks3o52u7jhnbquy78k21wkexw', 'eyJ0aWQiOjEsImNpZCI6MX0:1qNnke:MZzncqviBL9Jo1lLeEgq2D3EOpF-BEpnd5KzeIecrkE', '2023-07-24 06:04:56.722030'),
('a0l6jbnspzmbarat6fflxjrcnlhahegp', 'eyJjaWQiOjIsInVpZCI6MTB9:1qe6a9:rS34zlEmPBM9UiC-UKZYnY7HGDpRN7dqW1tFWjjWjPM', '2023-09-07 05:25:29.220562'),
('a24tlvf1nf8w6d0miuss9jrfwjod08ku', 'eyJ0aWQiOjEsImNpZCI6MX0:1qQ61W:yhwbjdBKnQLqfxmUW-evJB5LdTKR-Bp94XA1VZmZgwg', '2023-07-30 13:59:50.352142'),
('a3fq7w2eeyd456ps2ukbfx410zuez4pk', 'eyJ0aWQiOjEsImNpZCI6MX0:1qbuW7:49YIebce0m8IZi4CRRjPG3soOSSfwQ35qE82e404A6M', '2023-09-01 04:08:15.179100'),
('a3g1vqe3p6p45pj4makhsfufvlphg8l6', 'eyJ0aWQiOjEsImNpZCI6MX0:1qIwgW:ueW3zOOsoDA-4LK8PcMDdG9rsWk52lAQjpx3ch7O3Vc', '2023-07-10 20:36:36.943070'),
('a3la6yfxfjskdvwxvjxflm0qp0ljn07t', 'eyJ0aWQiOjEsImNpZCI6MX0:1qazAH:QBXZglIiKWa1CPlKfnIQsBD9XSfZ_Ceho3Wj5USqgDE', '2023-08-29 14:53:53.799294'),
('a4hso7hg2fw0dwyzlysp0l1491iqqli6', 'eyJ0aWQiOjEsImNpZCI6MX0:1qZyA9:FKuUepvlHgkL-EQGWg0-hk1-DnDWKAqdkRgkeVIQUos', '2023-08-26 19:37:33.351797'),
('a5myyf26nlpql1kiljn70v1l18n3u7r4', 'eyJ0aWQiOjEsImNpZCI6MX0:1qK3kJ:asLOpRIAAyBHUDGiX7G785SbGr8I6ApKHK75mD2ju2M', '2023-07-13 22:21:07.290866'),
('a70va5aw0hiic6x6xb4hji58ayvzn2xs', 'eyJ0aWQiOjEsImNpZCI6MX0:1qQGQ8:aGRxKGwiy_wttDv12I0TxQOAHMXvuNApWWv3SjSyPRU', '2023-07-31 01:05:56.215916'),
('a7al2khuzp4flq4lio5kc82fcg50atn9', 'eyJ0aWQiOjksImNpZCI6Mn0:1qM14A:8Brh82VLRUsxKRJ_lRyCz2tYxR8V3De2dKF54vYEYh4', '2023-07-19 07:53:42.725207'),
('aa06kc6yvwm7q6yv4qm9iaavgb1ssrkj', 'eyJ0aWQiOjEsImNpZCI6MX0:1qZtRv:1T7ppDIDN1Oj6gZTQHq9w4K418MQNBUVD4x1N-JNeI4', '2023-08-26 14:35:35.050798'),
('adc603xshky0eu7c6o3geeg4yrkjy6v4', '.eJyrVsovKVCyMjY2MDE001FKTixJTc8vqlSyMtRRykvMTVWyUgpKrExNrVICSubnlSQmlyALpeYmZuYABYrAAgUFDukgAb3k_FygZEFicXF5flEKUN7QyBiIlGoBnz8jJw:1qJTYF:Onj39_uwl8MscH6onNdVf5u1oENRkR4F8V56rVo-msI', '2023-07-12 07:42:15.093829'),
('aeofjp1ao6zcx4bm266yuiz67uf791hz', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPNqZ:aAl3IgYVPkm136FJbhVdLXe826Qts_BAnPe94C0bXYE', '2023-07-28 14:49:35.990986'),
('ag7vnlqnneeejz36gknek217kjml5600', 'eyJjaWQiOjEsInVpZCI6IjI4IiwidGlkIjoyfQ:1qVCKF:hfuFlETfohd18z-CCgcVhZFEgIbt1mn9I7kzsgsrpZ0', '2023-08-13 15:44:15.772845'),
('ah29frk7wagr19txkgyapl0liyprlxv8', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPPDs:279IHJgPqeAGpi9xPHC7ffiCU4TdZHcjuO2KKEiH9tE', '2023-07-28 16:17:44.856926'),
('ah6d4ru5hgew7wf0x5fa4k4u6sfixnj4', 'eyJjaWQiOjEsInVpZCI6MjYsInRpZCI6MX0:1qSyck:ozos8vs8EE_KxzYKQtc7w4Dvtd3s1L4kB9Ol0Ca_HTY', '2023-08-07 12:42:10.501416'),
('ahyz4n2e88p08pre1q7mwl5px3njtaf9', 'eyJ0aWQiOjEsImNpZCI6MX0:1qJVgj:Lo95MgQJFyjVe48MHhbYX0glRXrciIPIc95x_pC-oHM', '2023-07-12 09:59:09.369763'),
('aihl5hqj9jl6pj40zyv2mt0rs4v8wj88', '.eJyrVkrOTFGyUjJU0lEqhbNKoKxaAIFqB90:1qUQkA:pi6i4oYyM9Nq5zLHu4S_fljrs1uCi2S6XhEExNpAVIg', '2023-08-11 12:55:50.718726'),
('aij46rfh7axwe36sd1wodlh8wcwx88uq', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPJ2f:TC8KQ8fFCz-MvqKHbkGGADIqSe1kbTb6dXi5_8GAblk', '2023-07-28 09:41:45.545401'),
('aksyjdr4evg7utv2dq9gyxfjofwpfmlr', 'eyJ0aWQiOjksImNpZCI6Mn0:1qR4Em:XS95POTKm4vg4mLOfLn3aF28_s606Usg-Hwq5ZDY45Q', '2023-08-02 06:17:32.047001'),
('akuo5dk3yij5za5krrwnxnoap5hse8gq', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPhMF:viEYCyr4nbUMaiwq3MDr_z6RFmtxwUs42f5_C06OW30', '2023-07-29 11:39:35.774381'),
('al5auvsi4im055ot8e6j7j2oaexfgxhz', 'eyJ0aWQiOjEsImNpZCI6MX0:1qQMNM:AhomGiO7k96eHK0naCFdlT5idu_Tw5LtKaDVPeFjtjE', '2023-07-31 07:27:28.510353'),
('amz56fu14hu5gbgyvn629x3e6sn1hvzg', 'eyJ0aWQiOjEsImNpZCI6MX0:1qaz8u:r9LzrI5tuh6w5O8m7q8TmLB9DBRf4WnrHUYGLxghZe8', '2023-08-29 14:52:28.095113'),
('apauq36tv6zzjxt1xhl7vknwtnkaufjq', 'eyJ0aWQiOjEsImNpZCI6MX0:1qd33Y:f8hWbTDmVhB2fKg5jycwV4D_CUuZvEqGbkxEfK7YdkU', '2023-09-04 07:27:28.504652'),
('aqn314zexog65vf3j7hglgj2sfgkekje', 'eyJ0aWQiOjgsInVpZCI6OCwiY2lkIjo0fQ:1qI0aa:aRmUloOTJPcddpaqU43pr2fgeTpviYZeOyHLUXDRsZQ', '2023-07-08 06:34:36.753451'),
('atezo49d9wbvy473y84b8fgszt3bkfxd', 'eyJ0aWQiOjEsImNpZCI6MX0:1qaBfh:GsFU_GpzcBP5kjkNK73AGnzGoIvDnLP_H40U12jpPPI', '2023-08-27 10:03:01.758431'),
('ay4a6my4yjw94e0s5h9jh0msiopc613f', 'eyJ0aWQiOjEsImNpZCI6MX0:1qd33Y:f8hWbTDmVhB2fKg5jycwV4D_CUuZvEqGbkxEfK7YdkU', '2023-09-04 07:27:28.623154'),
('ayo6i5g1l1wppt6j5o83vchl8l4qudw7', 'eyJjaWQiOiIyIiwidWlkIjoiOSIsInRpZCI6OX0:1qc2Tm:-tAI9tu1ljJ2vxn5GDARgazUMSRonUR01HXJY62s3wQ', '2023-09-01 12:38:22.822116'),
('azya5mqekvst1rx199mnyezdytl2q2wp', 'eyJ0aWQiOjEsImNpZCI6MX0:1qbbGc:pp_b4hi2HwK0JxSWtE2OZFkF97BWWcn1xwk-bHumidM', '2023-08-31 07:34:58.989952'),
('b09zi5qgi7orsgn7gkdzx6fwiz62hnt8', 'eyJ0aWQiOjEsImNpZCI6MX0:1qZwwW:R9o64yIIDUs8kfE115N2KxPH4Gv7Szomo1lJW9mlTPc', '2023-08-26 18:19:24.987562'),
('b2j25cak8vr59mqn125vwo9zfz0fscqp', 'eyJ0aWQiOjksImNpZCI6Mn0:1qR8gj:V8MDpaa2iQcWnhHhGT4l56w1bzaSijNw4uts2b5hI-o', '2023-08-02 11:02:41.736280'),
('b3ay97ahqrf4q68q16f47jmyhlqus9ma', 'eyJ0aWQiOjEsImNpZCI6MX0:1qOvoh:YH9uBXfO9Hsw5bQ5Uy0O3sfee6B6TpWtDE_5y8S4nS4', '2023-07-27 08:53:47.443198'),
('b41ho6srpnovvl5whfpzlbcz4udovyl3', 'eyJ0aWQiOjEsImNpZCI6MX0:1qMCxC:ZQkKM_8byn1Mw-neJUdv2LzQXshhcWlzrCAltaps1KY', '2023-07-19 20:35:18.608953'),
('b640mgeqve23eu5l5te2qwfw2g0uh822', 'eyJ0aWQiOjksImNpZCI6Mn0:1qLlHz:-A9s57tmspuSmGqv5az2E9s0RSbZ4-bXHBpCCp4Sd5w', '2023-07-18 15:02:55.878566'),
('b8r9ypoxcx5ygphav40czbklyp5uqp3a', 'eyJ0aWQiOjksImNpZCI6MiwidWlkIjo5fQ:1qMnVI:8aofLxxE84X_wqSIFhrbpmdNCCrct3JET1CF7P8SWK8', '2023-07-21 11:36:56.454993'),
('bawo3ihl1qoyrrax9mf4mab1iekyh3m5', 'eyJ0aWQiOjEsImNpZCI6MX0:1qZol0:-FHR7h-Y_gjpdK-lLIyYqT3nMjZ8qCwZ5IbCdDVZjSQ', '2023-08-26 09:34:58.233902'),
('bbcqgg3hyotwf3h1fm2mv3xl4wt61me9', 'eyJ0aWQiOjEsImNpZCI6MX0:1qQNiM:PwdzfWPfpdIXvliYXZ_qTit8JA_yW6Mf3ojlzyKYny8', '2023-07-31 08:53:14.023712'),
('bd64bfn0lyo1rg0kw8mc4bujegocpnnj', 'eyJ0aWQiOjEsImNpZCI6MX0:1qI2As:vtTM37Piwc0p0KZYhuJjkt80AlNoslUqGwa7itogIj0', '2023-07-08 08:16:10.594908'),
('bdfryjxc8yb9nfh9otakk9ar9rhtrnho', 'eyJ0aWQiOjgsImNpZCI6NH0:1qI2DW:5QYc8vRnQ3Jo-9l1opHOuYCYtNuE9AYFr__MziGreqk', '2023-07-08 08:18:54.213768'),
('bdoarj5ox2ww6zk0xs8h43u71zdvf7ri', 'e30:1qCzNT:ZFM_1c5hVYO8Qn2ajlVjXFGoadl59CpHMmo7cH52yY0', '2023-06-24 10:16:19.484304'),
('be77ndndgkpxtmm0lrwxvl4t0tmateiz', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPVL4:UFwOVBBrfecdtJ9IiY-Df5U23TIgJ5NNfX0ITMxmrvA', '2023-07-28 22:49:34.299766'),
('begiyfc9uddaup7kx37t41zvrhg8plk0', 'eyJ0aWQiOjksImNpZCI6Mn0:1qNDp5:KoS0WCjGpYJiI65K7LUOwlrMc__bMvgtk6LUXq3j2Nk', '2023-07-22 15:43:07.286101'),
('beuh2w4g6g22t02lmkjt4yef8dhcnhh0', 'eyJjaWQiOjEsInVpZCI6MjV9:1qQOa5:2GEX8IJdYPbcNn7DVC0NeT8ZW6y1mUmpiB5ilHwKnC0', '2023-07-31 09:48:45.870921'),
('bga4eckwgxd4514m36sakbnx4l9ws6vp', 'eyJ0aWQiOjEsImNpZCI6MX0:1qd5wF:CIRLpNf76_lT2bYEJqkYVWR-o8iNkz8H0f3Qh-9Onmk', '2023-09-04 10:32:07.391602'),
('bglh95728z6u5ict6gkwaiefa7y00eip', 'eyJ0aWQiOjEsImNpZCI6MX0:1qai6q:LO-Df1r4CzTFUiP6zdt9DKCr-v2sdgo6kR0RWuh4z2Y', '2023-08-28 20:41:12.464436'),
('bhm755ro5kzju5ggisvjmevjrcq0fv5s', 'eyJ0aWQiOjEsImNpZCI6MX0:1qaWSV:_P2cvsxnIy7QsRT2XpWEb7k8nH0jwzdbxsYbtadnynM', '2023-08-28 08:14:47.821172'),
('biapiv18o72lpydevtg2asuj8yt3h9g3', 'eyJ0aWQiOjEsImNpZCI6MX0:1qQMvL:zGAzQG0W31S3VzrPG1C3DbNEdftMo-JpuKMPloEwEQs', '2023-07-31 08:02:35.253744'),
('bj1apkup9rtq8lgwidq96hv4ug36e125', 'eyJ0aWQiOjEsImNpZCI6MSwidWlkIjoxfQ:1qZQs6:4jBLxo8wmi5RWPJF40f5dwfvlETDrAx0_VNMyJA6RYU', '2023-08-25 08:04:42.087357'),
('bjif9w5iwmf8abrfr8v37dycfb7nxgfv', 'eyJjaWQiOjEsInVpZCI6MSwidGlkIjoyMH0:1qY0Jm:nUDQJkKNRRuyBSIrWt3pPHrlZYqCwtZBL4tA486Ohqc', '2023-08-21 09:31:22.059907'),
('bmsnmyml78mwcmz7cq9ngfdvsh9t1dx9', 'eyJ0aWQiOjEsImNpZCI6MX0:1qJh5T:hqpP3zvwIX9DNcesQV58GDXuSVZI0LPK5RgEoZ5xcK4', '2023-07-12 22:09:27.102446'),
('bnjh3r2s3wi7x3a0s5qyvqiprx52gure', 'eyJ0aWQiOjEsImNpZCI6MX0:1qOWQa:3ml05ViQYd8_C0_VD0j7BfPjbaP-N8FFLj-pR6zG5JI', '2023-07-26 05:47:12.805923'),
('bo55vj0led7vundtdbaorndtknrl751w', 'eyJ0aWQiOjEsImNpZCI6MX0:1qLY2d:oG8c13a0IlB3Q8wZNtpclInauBeFy_TSY-wFs_8hcns', '2023-07-18 00:54:11.908817'),
('boct5hdz2obl1jx9lzhu0rsnlh3orsna', 'eyJjaWQiOjEsInVpZCI6MjZ9:1qVQcQ:u2BebYMFOa-LQkQWJII5zWznbFWkVg-L9-7enk5zmD0', '2023-08-14 06:59:58.506442'),
('bpbqvmqhij3ms7uac1jlnjbi491x531p', 'eyJ0aWQiOjEsImNpZCI6MX0:1qIGoh:OaWfX6azG-m2jW7vAToMlV7KjNhXVVSAjsIyyOFCR6w', '2023-07-08 23:54:15.986081'),
('bse7g2z1g2tukvsezygx8q7k149i866d', 'eyJ0aWQiOjEsImNpZCI6MX0:1qZxHR:N5qw4dgYQq6eP-IwEfpSo6c_NuJCsv5AE2QP_CGIc-0', '2023-08-26 18:41:01.284910'),
('bseyl5lmvkvfa7edh0u2dbp2htc77ui6', 'eyJ0aWQiOjEsImNpZCI6MX0:1qa8rU:1eAiFEUkdk7NncEK93SQf5J7p7dzoUkc-bOdNeTp6ho', '2023-08-27 07:03:00.527274'),
('bssr9gmdq5v8trq1blbruwcdg5u0dx51', 'eyJjaWQiOjMsInVpZCI6MzEsInRpZCI6MjJ9:1qZpX6:Lh0J399fEebyEEszGi_wEdKX0-cr9BHZ3vtC0CPEf9s', '2023-08-26 10:24:40.313097'),
('buizzmknnvtiv3yn4a6yvw68aquz8h2s', 'eyJjaWQiOjEsInVpZCI6OCwidGlkIjoxfQ:1q9led:IFg8mhCnx4frxVRtImAkIS07VBb5VrIoYf73Qco8xQE', '2023-06-15 13:00:43.155514'),
('bum1lmj7nrkemw7obo9pte2exyxnvmcp', 'eyJ0aWQiOjEsImNpZCI6MX0:1qI2As:vtTM37Piwc0p0KZYhuJjkt80AlNoslUqGwa7itogIj0', '2023-07-08 08:16:10.549838'),
('bvbl29yvveeezkdrd5b63fvu0hj4fnot', 'eyJ0aWQiOjEsImNpZCI6MX0:1qaB8x:NsZU0NIU7i4pazyV3bKTNRp5iMPsUo3XDQ2UCFPGX-k', '2023-08-27 09:29:11.554664'),
('bvfrncx7s1tb9kyoazqdod6lb9zkk73g', 'eyJ0aWQiOjEsImNpZCI6MX0:1qQD4P:0LX6SadcV7gYV-6XpcineOgWqP8zr6eV6Wuxc-4kgrU', '2023-07-30 21:31:17.483852'),
('bvspc3r2y8hm22h1ezrk1ojwb8bg8tgm', 'eyJ0aWQiOjEsImNpZCI6MX0:1qbWHp:2hr-uFo7lX-7vXnlDEQ8LXCIh7BZXpR42bdUsQVAcsU', '2023-08-31 02:15:53.834298'),
('bw1hv6uz6h1kz4wg9lrot6l5bf4lseux', 'eyJ0aWQiOjEsImNpZCI6MX0:1qaIt0:o7c7QT2vOrigNWyF9iRK1AVQUJa9735rzescuDhJaBU', '2023-08-27 17:45:14.729379'),
('bwkou7deesr5a3g5aazwgtijddcpc58i', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPk6Q:9UFLWZkPeJjbOU-SE4tAtl7S0yCYf708_mrY2lTUpco', '2023-07-29 14:35:26.091679'),
('bxs7e3r57o5l8j5aokw3a7ibfbj6t5p8', 'eyJ0aWQiOjEsImNpZCI6MX0:1qcWVW:O2dN3Zcr_agFjU_W9W1uyf4a_-mEU730yXSqGoUnido', '2023-09-02 20:42:10.084909'),
('c10jqydpki53c0qsrs4kj72s12qqpja7', 'eyJ0aWQiOjEsImNpZCI6MX0:1qcimN:iarR3hmxNwJog3gwgqR8DOjPzMWoCXPpvd3x4HVMYsU', '2023-09-03 09:48:23.870584'),
('c2d6nwarbqpvk7g4yotmqwfuzyj6kmj4', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPLEB:bQ9paxFMK8o0jekFdVGWYsLPKcv3joH7jSm3oatuFhk', '2023-07-28 12:01:47.418669'),
('c2otsyi0fb9uyjauuble52y1ksorb7ud', 'eyJ0aWQiOjEsImNpZCI6MX0:1qbaFV:5Zah7JN8W66zIVofdsxA6NqM4vGg_Res831jq1-xyf4', '2023-08-31 06:29:45.700471'),
('c77po1vanua6lh33zzfakp852i2bo7mf', 'eyJ0aWQiOjEsImNpZCI6MX0:1qNEFa:WZJVu90OTPscYkYJLYewKhNzuhc9eUhAAnve0jqHzVg', '2023-07-22 16:10:30.708260'),
('c7rg8n522ocrcsbpqxoe0sh9ogx3rju2', 'eyJ0aWQiOjEsImNpZCI6MX0:1qQkLW:dRLrvBiF0YbaBNlU1eP38FN2i7qJ1qlzw5qxtmLXJn4', '2023-08-01 09:03:10.076188'),
('c8solhd1t59bgs3a911mblnsgkvkn8nn', 'eyJjaWQiOjMsInVpZCI6MzEsInRpZCI6MjJ9:1qbbIc:groa6ZRfu4jGl4OdCaYtCJCXLX1vc7n6oa1zkJN6Q44', '2023-08-31 07:37:02.771217'),
('c8sxbrey4fl4yqqkqlxzq5zs3832780z', 'eyJ0aWQiOjEsImNpZCI6MX0:1qbihj:NDetvtCKNAu2KFmmx7bnjCIMNQFZ-M8UDz-ydXWZ4Qw', '2023-08-31 15:31:27.219301'),
('c8z8daz6b2o24kk1n0nnzb8rb7slrbyf', 'eyJ0aWQiOjEsImNpZCI6MX0:1qc4bQ:F4JCzO5a6mS6a8MzJuqrXfvzDRYJK6AsIDtJkeG0EK0', '2023-09-01 14:54:24.891926'),
('c9b1mprxn37im5u3qupfjgjdyr4o17pe', 'eyJ0aWQiOjEsImNpZCI6MX0:1qQLQD:zVNHCfrQJZW2C2UwA_d6EjzWcNq3Bd-rkXzKNWOAZho', '2023-07-31 06:26:21.080197'),
('c9pyx59phibyf4h9ai6tdjz2h67489s8', 'eyJ0aWQiOjEsImNpZCI6MX0:1qQeB0:Ub9YIqwkiMGuGSWALpouMl9B6jI70psDgvMMGS4shQs', '2023-08-01 02:27:54.710120'),
('cawdlkw9eg5zxtnejyidx8trqf33e8br', 'eyJ0aWQiOjEsImNpZCI6MX0:1qLCQN:y9QJMBzXpZk51fMRIgfA9brwHkGjqWXrlA0RDtVLfTk', '2023-07-17 01:49:15.187027'),
('cawiyy46wtsed3ycwpxwj0ohl2hf2ulb', 'eyJ0aWQiOjEsImNpZCI6MX0:1qaz3l:eWdU0bVfUPJxovK6SLzDwjSivg0pdyFIYeiIRQv6bH0', '2023-08-29 14:47:09.200812'),
('cb354vwhr0xecfvrlgqj0o5t9a10mvd4', 'eyJ0aWQiOjEsImNpZCI6MX0:1qaQuo:aOmq7SMNydcP9u7KXRP6n_z1svFqM_C7MnQTHwHY7bk', '2023-08-28 02:19:38.970299'),
('cbxg37ucxihhxql2m1v7e2yj0wpwdua1', 'eyJ0aWQiOjEsImNpZCI6MX0:1qImGT:JUecPQRKl4Y4USFWw3btUHCBfS03CYt-RZwUxQ0KzJY', '2023-07-10 09:29:01.693378'),
('ccc4m1y5ebqf6c2krar4dhhh1ppg6fjv', 'eyJ0aWQiOjEsImNpZCI6MX0:1qaBh2:fIj3cxtT2FnodAvXik83AAqIhqTZm_d6DYgBSyE1d_M', '2023-08-27 10:04:24.064545'),
('cdru0dwgo2jypzwuseybpwd5c4pg0fzc', 'eyJ0aWQiOjEsImNpZCI6MX0:1qbZ4x:KB3QYZLf69ISTpJJjIXH_MNFjE6vWYBjYiE7mkah1WI', '2023-08-31 05:14:47.453114'),
('cdtkmpc785nc6plww2y0ipy92tvqwfaj', 'eyJ0aWQiOjEsImNpZCI6MX0:1qKJNF:ak_7Y-SPxEmvSusw7Ph8vFLmvyQT0tZ-DgbM_m_su9Q', '2023-07-14 15:02:21.969710'),
('cehi1thcx5axds6q6vjapowgmvogdc5b', '.eJw1jUELgkAQRv-KzFnEVbfMk_cuQd1j0CmX3F0ZRyOi_94kdHt87w3zhigTNDbPd3WVQodC98gvaEwKAT1BA-fBreiT4-KRkxPKgA_QMgbBTtQfbF2b3Nh9pTN5dKOO2HsXWmFcaeyYUCLPWRczFzSacJ6fkXvtLlvRmqL8H19XYndzpFZ4If3kfqFRv2xUWkXZsIDPF_ZyO_U:1qaFl0:44fBLAEzHad4xH5NCJrAvqkLpIr_dq4VagoChJJ-zUE', '2023-08-27 14:24:46.883121'),
('cgnz04lxua01w3kksibx9hi1u00nx6fs', 'eyJ0aWQiOjksImNpZCI6Mn0:1qLQHa:_fh3qsS8ZxfO_HoXcuwO_SRPOXe_u00B2n4OeVTGMz8', '2023-07-17 16:37:06.645201'),
('chc295qgxyoz5juaqe2hmloze0ulvsnp', 'eyJ0aWQiOjEsImNpZCI6MX0:1qcae8:DOhnxdmnsYlnxNGJh8eVqzuHK1c5yb6D-VgxoTZWHqs', '2023-09-03 01:07:20.730413'),
('chk9r040l4j3j0wyfdnh5fc2pakn6cw5', 'eyJ0aWQiOjEsImNpZCI6MX0:1qNILN:r7L6vj12uGBKdWanlAWWHBENhpGTij4Fn3wJQPjOwjo', '2023-07-22 20:32:45.213525'),
('ci9l0gegt1a6rbnn8wc8lrz6zd32ry1w', 'eyJ0aWQiOjEsImNpZCI6MX0:1qbq6U:qQPVdbIGeMPKElLj4O0PRZ1ZnimLPJhruvuLWREXwY0', '2023-08-31 23:25:30.750590'),
('cicioodzg6mig5jur2hf7hwd07fgextq', 'eyJ0aWQiOjEsImNpZCI6MX0:1qQMry:1scq20PNnxpdtJAaPXC9RtpwE5xjTraxL_QfNmQJTfM', '2023-07-31 07:59:06.339862'),
('cipcaby5dsxpf2oxf9n550afygjg3fv3', 'eyJ0aWQiOjEsImNpZCI6MX0:1qd0qD:_J5dDnSPp1fejJItQcpFyc3hwYkboxnJnRVUjgta3Ak', '2023-09-04 05:05:33.334076'),
('cj5xhl1ja51d2lkmiv8yjvt5f07k34vx', 'eyJ0aWQiOjEsImNpZCI6MX0:1qcUV5:NqVZRjscGbCxUf2ppBlPRP_FBACLItNDYijBUb3zO1Q', '2023-09-02 18:33:35.348628'),
('cka466zlxhjpxkuyn71al5iy9erg7py2', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPjDl:l_2F9jEufHbQo3lwevrGcA0lz0Ljo28YYFhjhkPYVZQ', '2023-07-29 13:38:57.863313'),
('ckvyocm4jxmgl8h2v73i75hetoq4exlt', 'eyJ0aWQiOjksImNpZCI6Mn0:1qMDuz:wRHQY83vO23F6nxTs7Wk28CzxipDo3sYr7k9vYQkkas', '2023-07-19 21:37:05.793368'),
('cl4e65i1ykzgqaybyr0z5bnqlulzdine', 'eyJ0aWQiOjEsImNpZCI6MX0:1qbvrc:fqOfM-g8Va52e-3JpSobZL9SsEkOIlR4VsTphQSD5fo', '2023-09-01 05:34:32.426378'),
('cl50862msda3zylodyvmpq3lrxbw99p0', 'eyJjaWQiOjEsInVpZCI6MSwidGlkIjoxOX0:1qWsg4:qIvM93nhL2yPhYlOlWC65vJdT__RuXtnjscTgPSfwOo', '2023-08-18 07:09:44.398123'),
('cocsr12qi8bbc8ame0kyxol5i2zrqokx', 'eyJjaWQiOjIsInVpZCI6MTAsInRpZCI6MTF9:1qd4ml:pmYcQunaI-TB9zK00D7D1B64TDcdt1-EM3ZQ249yXgQ', '2023-09-04 09:18:15.034792'),
('coe3q9nkuajta20dfpgg8pwo04enq622', 'eyJ0aWQiOjEsImNpZCI6MX0:1qQLBC:QuHmJKNMWHEYFzrlNN125uQ8u_4GxrOH5Evj1FTUYoM', '2023-07-31 06:10:50.291515'),
('cojnq1z7dziicrk8hb0i87def4vo5ro8', 'eyJ0aWQiOjEsImNpZCI6MX0:1qc0BE:c4uJGMcGexCEaC3KgVZpsts7-jc10-za0slHDmSHkgA', '2023-09-01 10:11:04.883148'),
('cpiecqfqqc5cwa58a5qlood4u94che94', 'eyJ0aWQiOjEsImNpZCI6MX0:1qJh5Y:w7kcs8T0LGnEG3H4daMkUxi8oEjsG5NVppcfZ2HgZUo', '2023-07-12 22:09:32.567040'),
('cpn3kna1biym2dp8w4l8kq2jbp4m4cjm', 'eyJ0aWQiOjIyLCJjaWQiOjN9:1qbf05:RBhTYCDdn7gHlA1A5e-2bMIKCaZBym8HDWT7TGuC9Gc', '2023-08-31 11:34:09.163927'),
('cponn4tx92e68d9nx7ly8ka1qfzkqptt', 'eyJ0aWQiOjgsImNpZCI6NH0:1qRmUF:bXECubxV99Ikw8Nw6Y8SPnmIESl5NVgG6dgFRXwLuCA', '2023-08-04 05:32:27.628228'),
('cqcuxx5z90hrw7m6ixfe1nni9vrqdsjx', 'eyJ0aWQiOjEsImNpZCI6MX0:1qIfDQ:oKRNflGuijSWVlxOGWmgfqD44kSutPciygBMlNXTE64', '2023-07-10 01:57:24.243405'),
('cqtl9y50ukkhf2q5slbh4j8onbwkpcue', 'eyJ0aWQiOjksImNpZCI6Mn0:1qMeG1:2d2BADA_AvIbuOJoqPez5693xxeemYEd1PGq2tQoDJ4', '2023-07-21 01:44:33.267412'),
('csvln9rmfhjfhsh2064rv7mely04sjz8', 'eyJ0aWQiOjksImNpZCI6Mn0:1qMKFO:_dabSaYfamZswcU_FGHceSL65FQsHHN6vjOF0R7oLts', '2023-07-20 04:22:34.376749'),
('cswm8duxn81s9mo04wne9ozviv8v3zhs', 'eyJjaWQiOjIsInVpZCI6MTB9:1qd2r2:mzdVyOpeusdBxdaRXwzomga8Tu7ENNnlgrwUVCDOzro', '2023-09-04 07:14:32.514676'),
('ct84vjkvkf92600vfdmd35cdzqekho85', 'eyJ0aWQiOjksImNpZCI6Mn0:1qM0yS:KGGHpMPb_nM2yKJ_XePfEhOCOItK5qLOSMkT3OHCF5U', '2023-07-19 07:47:48.210213'),
('ctcwimpf2qss42pdoi4f0kbavgys90no', 'eyJjaWQiOjEsInVpZCI6MX0:1qVVFh:AvjUNZVsGxEkSnEYtAgzt5wtEjlm9aWVAJOt1qN1WzY', '2023-08-14 11:56:49.778987'),
('cw2swn8qv59010e82z2alv22u3r25x07', 'eyJ0aWQiOjEsImNpZCI6MX0:1qJVEf:PMECcYwlclJETWc6Q2-Fr1adl090Z7ibqj9slZ1GS6o', '2023-07-12 09:30:09.963532'),
('cxhdhanx1i3w0my1yi0d4v7ebu29xzu5', 'eyJ0aWQiOjEsImNpZCI6MX0:1qbdB1:C_BAa1eABGNiFWohoVvRt2EE8eAywUVz-C7FOd1LwVY', '2023-08-31 09:37:19.776490'),
('cza0hgyhx7sa1fjsbermnlxyl42k93p6', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPKTV:dr5weKIavE9nybIaKAW0-Yv0kCwadVIRLzqsJOEi97U', '2023-07-28 11:13:33.417643'),
('d07f86ocsqsmwcfd7dwpwz2ziqotgc7v', 'eyJjaWQiOjIsInVpZCI6MTB9:1qdmZx:bApBKzQAdRLSGCNqFpPCmvxMFDTHa1_RaQ5F_IybC0g', '2023-09-06 08:03:57.288763'),
('d20lv46741f44fj4pdhub53yolp539ql', 'eyJ0aWQiOjksImNpZCI6Mn0:1qLHdg:FiO7UNhYUxCXMWNbO3ON5DUplg6F88XIySsuD2d2Zyk', '2023-07-17 07:23:20.387552'),
('d2tdunndkm9fqmr6mngjbsmkov0gxia8', 'eyJ0aWQiOjEsImNpZCI6MX0:1qQZeX:RYvr-i4ifY6oaTfax98KJWIJa02ul9nOuRH62zCgASQ', '2023-07-31 21:38:05.307052'),
('d31nwzt7l9uhqqyoqh7s02c4f4opji78', 'eyJ0aWQiOjEsImNpZCI6MX0:1qatr6:jzNZ50E08m_cY-QIqI7W3dFfdnkj33cm-gpaoTV4kYA', '2023-08-29 09:13:44.880147'),
('d3gde4ho5gcted185e2eml67yz8ysjpy', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPHRq:ElHyYZTAd43DKLnQQSqYFx_4BZpaZGwL8m0IGxaT0k4', '2023-07-28 07:59:38.164025'),
('d41fdziqcb6cemnr5a08huvhrumq6nek', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPK2E:iZoXfqVvaNTrHjQ5aJjYJAWot3_nXSqdj5VWRU8PNTA', '2023-07-28 10:45:22.936709'),
('d4aa9oddy0y7ptuwrl1vr28r90drp05p', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPL2i:N39Btm0E6STAk4PtwKpkAUb72oUI_8IzpQkKCa7zDJI', '2023-07-28 11:49:56.970991'),
('d64ne21vkckns9il5affoq52cbu6rzjq', 'eyJ0aWQiOjEsImNpZCI6MX0:1qcT4r:IQMWadQX1LYkPcEaknT_7kShF9BrmtJddJas3BUDZpY', '2023-09-02 17:02:25.120971'),
('d7opvf3gpuq4vvjzn57lyhdchx50khr9', 'eyJ0aWQiOjEsImNpZCI6MX0:1qIeLg:3O86m6g4rDIEMpd3H08cKOlsnXFc7-v2zwea9PKN7cE', '2023-07-10 01:01:52.697040'),
('d87bke49kbwsjbdrltvr08m7uqiu8zv5', 'eyJ0aWQiOjEsImNpZCI6MX0:1qQOQO:dcsDQQmuFqaPwWdAMVDIwTC0UdtfrHrdW54pudinCEw', '2023-07-31 09:38:44.491047'),
('da7gdot3hp33ezr2hs9lo5d1u3u10iw8', 'eyJ0aWQiOjIyLCJjaWQiOjN9:1qc28Y:Yr0s-x8u8MnqY5NtQ1qpwevQ-BudTjIpDoM2Q4MvdQQ', '2023-09-01 12:16:26.752334'),
('dbmigq4suqs9u6td9kjzwynstsj6p2mu', 'eyJ0aWQiOjEsImNpZCI6MX0:1qXtjq:cgKpDnw7PweB3gWicu7SYvHCsDgemz5HzCQhZ_fpQYQ', '2023-08-21 02:29:50.143566'),
('dd6k74cv8gujk4nah69rwzhyzpj4aevp', 'eyJ0aWQiOjEsImNpZCI6MX0:1qbH8M:jwngil901r5w6mZ2vLQ68mLOOYDnaWoB5NnI-NDnZ44', '2023-08-30 10:05:06.313545'),
('derdkhcnewbzrz0jfnyh4xnqrf1nrtvh', 'eyJ0aWQiOjEsImNpZCI6MX0:1qck1I:IO0l7IWnh51992hJSP8akUd6HjzKP5oJKQg1GDDvDu8', '2023-09-03 11:07:52.956884'),
('dfcawnck7w3d4qxpkhws0m9a3t5skcqg', 'eyJ0aWQiOjEsImNpZCI6MX0:1qHjz5:kTvM7ufa6UUkUlKMOVqCvSPNbC3fhLGEvIQNUg2Yygs', '2023-07-07 12:50:47.646007'),
('dh5leun7315ba49qn2p55b65ms23t9as', 'eyJ0aWQiOjEsImNpZCI6MX0:1qI1L1:lvfaz3cc-HIFGW6TxVxx_0aGYY5vYf-Bh80xPcW_0e4', '2023-07-08 07:22:35.904330'),
('dhthyv8d8x4qlpcz0vrvuozy3afki0ff', 'eyJ0aWQiOjksImNpZCI6Mn0:1qObES:MrIm78N1QxG0CIdO8SNsF2EfQyFQZcTvM4FpIsytC30', '2023-07-26 10:55:00.658158'),
('dilju8faevjx38bikls2nd6hlksw6t2y', 'eyJjaWQiOjIsInVpZCI6OSwidGlkIjo5fQ:1qBrr0:l-xjaPAKSMGlgQHWFWS12qdwS-mLcVfHekO2kqgYFZ0', '2023-06-21 08:02:10.543157'),
('diueq6p4n9tpt267510vr4ay4dkde5w9', 'eyJ0aWQiOjEsImNpZCI6MX0:1qbgvP:SKTItnTaX-Tx6qVEhQnJfQgqx3ePhIDTxmu9LXNGQjs', '2023-08-31 13:37:27.437958'),
('diwpqr5bhm4g2cned4o2e1qhl3ahd4u4', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPJbK:z1hr1p5TtijPPbs4968LvgHf1dnrSwkufUUF6RT_zTY', '2023-07-28 10:17:34.118949'),
('dk8gra5mkdyl9i2gyu8zyfyeotr11ff1', 'eyJ0aWQiOjksImNpZCI6Mn0:1qLIXw:ObmYQmFzpO1awlj6OhTZg_2vCe9Zh2wVynk_CPKlfeQ', '2023-07-17 08:21:28.753358'),
('dma3t83q82uf5tefa08julh8yv9in42i', 'eyJjaWQiOjIsInVpZCI6OX0:1qODpc:Ip5jEZm8cRjudLRPDbuhtJD2RamQeHm40cYhwcYJSVY', '2023-07-25 09:55:48.037498'),
('dp3q6oax8vzofujr4rcf75sap93icclb', 'eyJjaWQiOjEsInVpZCI6MSwidGlkIjoxfQ:1qGefV:KadV8fxYca0N0KXjI6CYN1b1Dl6Rb8ZDAeE87-N1QsQ', '2023-07-04 12:58:05.176142'),
('dpjz1tv7n0zxnkuvnajj3jt535zihz1x', 'eyJ0aWQiOjEsImNpZCI6MX0:1qZtzd:3MeMLafgR5_p1YtqjcJSiNfz7XG4Iy76eSjDmREkZuQ', '2023-08-26 15:10:25.703997'),
('dq8yi7sx9iyar0bp3rs5gs0abhdezux6', 'eyJ0aWQiOjEsImNpZCI6MX0:1qZnmP:bEPD4BA2WRjVg8FQPUqx-Ah2bP-EXgFQT_hsKnAaRtg', '2023-08-26 08:32:21.144376'),
('dqnn68vh2tws0xaxqf2vl13txaij87hb', 'eyJjaWQiOjQsInVpZCI6OCwidGlkIjo4fQ:1qAAM1:9SpVabVjvuSNrrbVT__JVvSTcNCnIJNjiXqrGOvbo_E', '2023-06-16 15:23:09.851254'),
('dso6ha95to2y2tszd7qir6q5icqhlwkq', 'eyJ0aWQiOjEsImNpZCI6MX0:1qc1eC:MflklGZA6vmGG_bdyLggy19HEv1Z4pT4n95LkVOydsc', '2023-09-01 11:45:04.984055'),
('dtvl7b7son0ppshakgtwt2xxjc1pylgj', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPjH2:_2ZuQU0b9kSZ9vEW2AYNxVMjRFuzbKele36vqHp_lO8', '2023-07-29 13:42:20.000756'),
('dtzlpmso9mvm0wlwp8sjm3w7vzazu25w', 'eyJ0aWQiOjEsImNpZCI6MX0:1qQT4n:1f8EZ38GLv6F75NJ9F-furFr6ULPmmiuWe1l83MpSV0', '2023-07-31 14:36:45.415532'),
('duofbjl82essmc8rag36hoori9a4a59t', 'eyJjaWQiOjEsInVpZCI6MjUsInRpZCI6MX0:1qR7pr:usJX7B-lWBVBVlnJBlrqCypwpWd-vYIpvkUpJyGlSOM', '2023-08-02 10:08:03.247160'),
('dw3fcjcopkeb9parpl4bcfu1gkdbrbsa', 'eyJ0aWQiOjksImNpZCI6Mn0:1qLcj1:4AmosC0RyKPccawywjQsRFCgyKWW1cW0mvoAtMyI2Fg', '2023-07-18 05:54:15.163371'),
('dwxucmi57pleymyadhw6zurlsdri6062', 'eyJjaWQiOjEsInVpZCI6MSwidGlkIjoxfQ:1qI4hz:SuUsXLMVYIYxYM2p7flQa5s4c2VRqYxBxeOKg-yCbtc', '2023-07-08 10:58:31.287535'),
('dwxxrikf82am8x049wr6ezl7cv7vl124', 'eyJ1aWQiOjEsInRpZCI6IjEiLCJjaWQiOjF9:1qRszF:xVNOOTCKIvl__Wu0QsIpYTcklLFJZz0E2aSFOubwiSQ', '2023-08-04 12:28:53.878626'),
('dxjztet3y8j6gbd7gwszgtz5haepzckb', 'eyJ0aWQiOjEsImNpZCI6MX0:1qJDxl:zK6uvzOILkWPCOz6cn2lQdCu-oQXJAd8QDkpxRzfRkI', '2023-07-11 15:03:33.284400'),
('e0hgs3cabx9nu1rtc5y52y08q6yn3ng6', 'eyJ0aWQiOjksImNpZCI6Mn0:1qNAul:FcPfaPKLAkLLCkS3ZooE35oOsh241HLSUaZH9eHKnKc', '2023-07-22 12:36:47.423972'),
('e130t2n18xgybbq1umvoo1ndvnul6f3j', 'eyJ0aWQiOjksImNpZCI6Mn0:1qM2y4:5OrWZo1_taxx6Jp7ShRPrfUrIw4Vlnl0jrKdh1VvoKM', '2023-07-19 09:55:32.979756'),
('e1upysz8bmpqp1a2ancjsdho6555lrsx', 'eyJ0aWQiOjEsImNpZCI6MX0:1qKfqF:9gAwIF7dL52yYzCKZGRaXqNAl1P4LhLoCpmLrrFw8kM', '2023-07-15 15:01:47.027130'),
('e51wnk2y3lut3jihyebwjiv6n2c59ed4', 'eyJ0aWQiOjEsImNpZCI6MSwidWlkIjoyNX0:1qbvz9:LDK9oOyQqn15-EdmTTFhP8MP39ZD9baKWR3503ZtKGQ', '2023-09-01 05:42:19.213328'),
('e5oyioeorowh57siq8ysdbbywmakvlfw', 'eyJ0aWQiOjEsImNpZCI6MX0:1qbl9u:W2sghE_R9J-fSY97U9s-4iOHjZS2c703ViwaEvbVXvE', '2023-08-31 18:08:42.649204'),
('e8hj6fjum2fo5rh8y940nxaa7pckj49q', 'eyJ0aWQiOjEsImNpZCI6MX0:1qZs2o:aprIoSgGpjsnZfrRgt1CKI-sKGlo-6F2Kww3YfqjxVs', '2023-08-26 13:05:34.373497'),
('eai8jmx32j4sy58b1c8i9pbg5c7w5no3', 'eyJ0aWQiOjEsImNpZCI6MX0:1qIHuP:2vvqPS699zUfaPrtH87kQN0MXMCBW26NqbKB5czUR2I', '2023-07-09 01:04:13.463003'),
('ebhmlx1q19u8i69ly5e5odnmh621utzu', 'eyJ0aWQiOjEsImNpZCI6MX0:1qZnlp:ME-ALZEhicpQY0al31N9JSzg-Ipi0EYHQSV0W5IPaEg', '2023-08-26 08:31:45.561238'),
('eetrfyzby8elyr0irxjjcghtxdcjwtgc', 'eyJ0aWQiOjEsImNpZCI6MX0:1qbubm:BXadN4dquZ9YA-fQNt3HHQgb5dCvBmM6PzhgOIHNOQg', '2023-09-01 04:14:06.377113'),
('ef1s2uz6xxji5sn73r7lrhk1671uiyyp', 'eyJ0aWQiOjEsImNpZCI6MX0:1qd1O7:hicn-OQzN9QKMWPDl9YLrZeNKMHm1OXR_6G0bKwjT_M', '2023-09-04 05:40:35.895344'),
('ef8cu0m7sqct08i57146wyb906pacxf8', 'eyJ0aWQiOjEsImNpZCI6MX0:1qau1W:xUjRPN6OATIQa4Hqpj4OATC-7hw9BAfDlQhL3MtSCxQ', '2023-08-29 09:24:30.931581'),
('eg7md6qqkckfo0l0xyrgywqo81904atb', 'eyJ0aWQiOjEsImNpZCI6MX0:1qal5N:snezLpemGcmgBMITImATNtpI2u4eq3mC2IGs1s1aYlc', '2023-08-28 23:51:53.185250'),
('ehk0wkohsg3z1bg84mikxpnyvqloevb6', 'eyJ0aWQiOjEsImNpZCI6MX0:1qaHcc:j-s-rouweUIeWXsreai0Ii7UmxEh5q9qfRxappB1k70', '2023-08-27 16:24:14.022179'),
('ehy745fc908vnwdbulm8r2iam1fan7ov', 'eyJ0aWQiOjEsImNpZCI6MX0:1qa3WX:QbH-Qf4bviQ6qlJRcdy1BwxkQk3n9I8eTcAjqUZekNY', '2023-08-27 01:21:01.341865'),
('ej48iwxsutkood5r9xhcr8e01syd285w', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPFcX:wPvyXcZlAmPVEk6f31M5_IAMhicLIiNPZzBsPmNrl-U', '2023-07-28 06:02:33.801781'),
('eknxiofyw6tdm15ef2kkg1gq60fx0ycb', 'eyJ0aWQiOjEsImNpZCI6MX0:1qNMZ4:s6r79kZ3qR4ZJftq6PH9rhNAmPY-ACaOAsE2rGqSWzo', '2023-07-23 01:03:10.469596'),
('el79olvjye9yw5im9zeti24lr921rhq0', 'eyJ0aWQiOjEsImNpZCI6MX0:1qaBKw:GCt6LdiLAIG12wuXTw5d9UuJmIQTLw9iXmIe6PnoGQ4', '2023-08-27 09:41:34.720611'),
('endpedbltwm04ap3ejeuz40s1ukq65iy', 'eyJ0aWQiOjksImNpZCI6Mn0:1qLciy:HsIuTv3Ab0ueySB-VD5hdrMHwXRtevVl4PPBCq0GmpU', '2023-07-18 05:54:12.520630'),
('eo5qicin8yo04wrvxi6e1pz2i687wpzo', 'eyJjaWQiOjMsInVpZCI6MzEsInRpZCI6MjR9:1qZ8jo:NPfyIjGp5dK0vKrJkQ2Bz4sVOlQ4ypZv2Wo5fms2HHQ', '2023-08-24 12:42:56.300277'),
('eovcuvs8p3gbxshag7p8ozw1rbdvivw7', 'eyJ0aWQiOjEsImNpZCI6MX0:1qbvAn:FqvrjRWC1_jmrcl0Fe2wxKvFQuNCO4vHmqMseL-5JH8', '2023-09-01 04:50:17.891187'),
('eqtu66dbhpwwvcl4fgb66lt55xzig2oe', 'eyJ0aWQiOjEsImNpZCI6MX0:1qbdga:6zW9X27q4b8pKdtvsdNEJho4SdGS1nvjPhiDxY8so7Q', '2023-08-31 10:09:56.840220'),
('er6u04bdmyrvo23kchhrnyi6m9bugp2n', 'eyJ0aWQiOjgsImNpZCI6NH0:1qSrJV:rUEQnX8nrWD_6flmOpBtGrQhrvZZZIFKcv6Rj3HbJPM', '2023-08-07 04:53:49.113725'),
('erb92gjrgxm68b34a7ns7s3usczf12if', 'eyJ0aWQiOjEsImNpZCI6MX0:1qc4gw:bmM_iZKnfbkpLmIMhs1MAOI0-r7YZxqWAD-RlzKDxfI', '2023-09-01 15:00:06.521653'),
('etgfdcvg0khdffg5ujur67e397j78o1w', 'eyJ0aWQiOjgsImNpZCI6NH0:1qJPpv:liiVNoj3l7NqQxlnYDgThawLvgb4D-70g2Ec-EXWVjU', '2023-07-12 03:44:15.669204'),
('etpies0ihcwid4all9jebx9akp6aph3a', 'eyJjaWQiOjIsInVpZCI6MTAsInRpZCI6MTF9:1qdlbe:T24-FMkuEINuNAgYCvhr02bPK2FHLyhQafeVREXCYdU', '2023-09-06 07:01:38.337269'),
('eu9bz9f6flj0x9dkyvrm79h936yokil6', 'eyJ0aWQiOjEsImNpZCI6MX0:1qdL74:1UwxLf8deQxH0uk6zPoiZFUCl8Jud79ZX0qJ-oO0UYM', '2023-09-05 02:44:18.496574'),
('euxfltehr9efoterr2azcoc1wqmwsjwm', 'eyJ0aWQiOjEsImNpZCI6MX0:1qQi9z:8zN_bAfjHS9gOuV34aOGZFPh-JpxgZ8pwit_cYh37pE', '2023-08-01 06:43:07.514541'),
('ewzct9dczu1uefv19x3cry6udu2vmh0d', 'eyJ0aWQiOjEsImNpZCI6MX0:1qcHxS:V7uQ7Cq9_3BIuJ1cpS1gFtHmWiW3lN44o78DN58yFGY', '2023-09-02 05:10:02.973035'),
('ex1xaw3qtq38g26cu0p43m4gotez3p7r', 'eyJ0aWQiOjEsImNpZCI6MX0:1qbOaS:_AfENMprcaS4um2x1U01q2LtmTQpZYCmQ15FSbD63zA', '2023-08-30 18:02:36.488756'),
('ey9k408psq8l6micexo2235frxy178d6', 'eyJ0aWQiOjEsImNpZCI6MX0:1qKLgf:9--nFA1JWQ62k4jNecd1uzkXHRrIZlW0jBGnnu9t5Bw', '2023-07-14 17:30:33.227122'),
('f0dq8u52nnt2lcr71fezgmspd2aesumv', 'eyJ0aWQiOjEsImNpZCI6MX0:1qaAXY:_NQQHdFRLM_WjR-ScHsTlyBK49pPEROcUmapNpNaF_0', '2023-08-27 08:50:32.754420'),
('f0gunhj6zesarojsyqdoj40cioe3s129', 'eyJ0aWQiOjEsImNpZCI6MSwidWlkIjoxfQ:1qPfex:8QW39givrwygsAPFT3_HQNbae9fWu7cJ4RdSwcTCRjw', '2023-07-29 09:50:47.817701'),
('f0j6ug3z5wt2zzgptka1kz802vfoqzak', '.eJyrVkrOTFGyUjJU0lEqBbOMTIHMEqhgLQCJBwgT:1qWJyc:77FpWlm7VOTc_sxn5vXq5GKV003WzmXbSILijztVjfk', '2023-08-16 18:06:34.783043'),
('f18fot5xlqc6fksc389o1fp5lv8odzjx', 'eyJ0aWQiOjEsImNpZCI6MX0:1qIFCV:sWxCsuYeYbfcvQhhv6yonEUIA0tQU2v8Yyhwe7pLN-w', '2023-07-08 22:10:43.785468'),
('f25pwfobyqaobt0b6lf6xkpsf3veme9g', 'eyJ0aWQiOjgsImNpZCI6NH0:1qKYKa:u3KtmvHXIh9obIxmO8EI8QwfNg-9fixUqrLpPRT-UXs', '2023-07-15 07:00:36.488538'),
('f2qoq7039e9vzgixm04mw1bvs95qna9w', 'eyJ0aWQiOjgsImNpZCI6NH0:1qQS0B:aBHIl7IcawYFHDPrYkzbiL4TCr2jeMjBjaCudP6C-HE', '2023-07-31 13:27:55.979622'),
('f2zz24mcpyihgvfgwrdbku0vmjkj21gp', 'eyJjaWQiOjEsInVpZCI6MSwidGlkIjoxfQ:1qPmPR:Bplzb179i7700rOsTZWn6Au2VFLQXk-LMlbs1RACh1s', '2023-07-29 17:03:13.171915'),
('f37qvia9tcmsuf96hphssoan9f83btdp', 'eyJ0aWQiOjksImNpZCI6Mn0:1qMEB1:3SxsKtjqtY5o_f-RJT-4kO4Eq0VJJlRRUleNISnvtt0', '2023-07-19 21:53:39.848194'),
('f3sfhcsp1ktauanzxunscudxdh2m53dx', 'eyJ0aWQiOjksImNpZCI6Mn0:1qLsfC:QtpCxwdvmzvtr4zdViiVKg2j8fmPYlgtcTo5T5vFQxk', '2023-07-18 22:55:22.168748'),
('f5tk02vys1qcwsuvgj5fkqgzcun7xnjp', 'eyJ0aWQiOjEsImNpZCI6MX0:1qaISp:ywqNLVCA_oxJFjKLd-HtKn_VdaZ_2maYEbVY30cJPRo', '2023-08-27 17:18:11.455650'),
('f6c8qqzhon9elogcwenolvw1darbkfbx', 'eyJ0aWQiOjEsImNpZCI6MX0:1qQOfE:iBLPF3qUXlvpZ2CQRz06a2rJC_iDRVwwmZKhK--K9aQ', '2023-07-31 09:54:04.834909'),
('f8082hsgy7589etvdahx3sg5la66lsl6', 'eyJ0aWQiOjEsImNpZCI6MX0:1qIjlw:1MK2nFqpc09aBxQY5xjZYulJOls5OMEPwahXUjEIGhA', '2023-07-10 06:49:20.049496'),
('f84fgxakxx045h64ofo079tiywab9xq0', 'eyJ0aWQiOjEsImNpZCI6MX0:1qRri5:xLQuFpfJwYjCe159c4LeAGpl1t70-TfhUHoWfW6iGjE', '2023-08-04 11:07:05.625415'),
('ff2omdbfhxzglwytyxzr5zu2iky4v9vr', 'eyJjaWQiOjEsInVpZCI6MjUsInRpZCI6MX0:1qY54w:3AySEetP3MGLaDJSRAuKPQ_PS4mbjbcQ0WBrzSP6tCo', '2023-08-21 14:36:22.042856'),
('fh7gsz2qjyb2xc94nf6bppv67e9mjwxn', 'eyJ0aWQiOjksImNpZCI6Mn0:1qOjdJ:XulhqvGJ2sVnG1beXDdBSFfaru6OvNO-LtFKjbhz-kM', '2023-07-26 19:53:13.386399'),
('fjhdckbhg9p9ocjn84jei6wrghtljmqt', 'eyJjaWQiOjIsInVpZCI6OSwidGlkIjo5fQ:1qCaiF:u9J790d-yBVOp7jez16raVUr9N8U7d_sCzNmfRTccQE', '2023-06-23 07:56:07.302319'),
('fku0olpzk6mgzxl5jc0dpbfqgtv2qcul', 'eyJ0aWQiOjksImNpZCI6Mn0:1qMRQT:U9gTZB-Kc2bCmvdkku5JqfpxN3LHt9jkJmEFQ1tOvcU', '2023-07-20 12:02:29.868827'),
('fl6gnph48cyye9tfawvdz1u1517spp97', 'eyJ0aWQiOjksImNpZCI6Mn0:1qHey9:BvIpFBPDjNwqV_Zj-v9AKzdQY-bqyP55zmWM6YVz_G8', '2023-07-07 07:29:29.321973'),
('flwfavk4ignxkhxobqeaqtiruha7bb32', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPkN0:wiXQy2PsScJG7wK0pUPtkQFF7yZk5RmjrurM3KCY3tM', '2023-07-29 14:52:34.201023'),
('fmclg3ry00nfk1vg2ernfzht9q2ll40m', 'eyJ0aWQiOjEsImNpZCI6MX0:1qZnLK:G8dk6CUbb7tIxC2FJcKGB1zkP9k_VXQCT9ReiUljJ3E', '2023-08-26 08:04:22.075839'),
('fmo4725u0n1gdeb9bepbalpu10m892xq', 'eyJ0aWQiOjEsImNpZCI6MX0:1qZn9z:2WojddVG4W2Z9qRPceBTxiR9GIMgko-l4mTfLk2Rnhc', '2023-08-26 07:52:39.082698'),
('fmv6m60h7rwfm3ydsj64tkd6b5nnag4m', 'eyJ0aWQiOjEsImNpZCI6MX0:1qRb6J:0m_hXvBKzrncWGzjuA-ZNj6W_Bj5s9lGzkjrNbjXYZ4', '2023-08-03 17:22:59.805526'),
('fpea05sh8pfvl2jj646tzmxse6vsuvnt', 'eyJ0aWQiOjEsImNpZCI6MX0:1qc4Sp:CDQKdu1PE9ekDk8oAKynOfRHRvzmrLczddGPUvKkiv8', '2023-09-01 14:45:31.782346'),
('fr65y2bqxq2ga5fi5lwkapu16boyissd', 'eyJ0aWQiOjEsImNpZCI6MX0:1qLqRy:x6lwGHD7CAX4q3Tl5mkWUrQSV0YGYP6v4c9p6pZJspw', '2023-07-18 20:33:34.429914'),
('frad3653xc4xrnktuwr7j7ok4a59key9', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPL2e:W_sb08hfRB7y6D5y9evnhHNHnI0-nq89tHeRpLbSZb0', '2023-07-28 11:49:52.511587'),
('fsru41bmjuarv2ypf4gzacp2z33lpajk', 'eyJjaWQiOjEsInVpZCI6MjUsInRpZCI6MX0:1qQt36:CWvQXe-dSPHq0fBfbTQr61Kc37g6kuk9wb2zrjGfyOo', '2023-08-01 18:20:44.736247'),
('fti177emomlspl8fn7pub0d8mzv1f6ow', 'eyJ0aWQiOjEsImNpZCI6MX0:1qbdTO:ejwoYci4V6fFOBb-AlZ8EmiYEpGaWEH_xovxWkmC96s', '2023-08-31 09:56:18.986723'),
('fxgwj507ewifrlwqci7kujdqph2llyfh', 'eyJ0aWQiOjksImNpZCI6Mn0:1qLbVp:zacAFkpTeKCAPg3Hnj1YJDUWXO-iVI2RkT0qNpjcfsE', '2023-07-18 04:36:33.163789'),
('fyfn5a81pf4ja4i6rrnukhh7nvm0j5ya', 'eyJ0aWQiOjEsImNpZCI6MX0:1qHkCM:2YefqJlaCaV5DGQH9DUnEsfJ0R-mtQx3WA9lv03fH1I', '2023-07-07 13:04:30.222939'),
('fyqw3spbrsc7qbuliy7wolyhztifkw31', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPJsV:1Sgq2wbs4h3Izd10FqNd9hbERh5chntAwIqgRDhKpKs', '2023-07-28 10:35:19.765317'),
('fzg6m71bcas2a31yh4h9w4r8zj9oha5n', '.eJw1jFEKwjAQRO-y30VIWjDJl2fwArLEtQRME9Kt0op3dyz6N_Pe7L6oaKUwDL4_-o4iq4ylrRRMRxNnoUBnXmUjuDIpRwVxznsPIpnTHb1hIVutp_ELDrFkyMrz_CztCm-MtX3_P7g8pKVbEhhti-Bx2kfwy56sQ9QffH8A2Fww6A:1qTfVY:2D5LwlDzKbYkTmJTBvbUU163KO8kYy8a2jOFD3SaEMQ', '2023-08-09 10:29:36.716796'),
('fzu6g428mvwy16z4xkp2k2qlrtx2ixak', 'eyJjaWQiOjIsInVpZCI6OX0:1qcKpi:I4XaAL7V399FfdS5DDVNxNaPg0Q9UnOm0KZduVdjsu8', '2023-09-02 08:14:14.121114'),
('g1gpq1ii9z6e13a56q7lavzsz5zvkgfv', 'eyJ0aWQiOjEsImNpZCI6MX0:1qbYyt:XZarOLqi-KP7fW0DiLX2MpuZ64bOmDP_De2TuKjf2Ag', '2023-08-31 05:08:31.916661'),
('g1jn76y11qfz6ygk6qdzw7663w9oqxux', 'eyJ0aWQiOjEsImNpZCI6MX0:1qcimJ:tHFjPnOhqRK35PPTS44qf-N1sAX73jWOyfEWyucsKQA', '2023-09-03 09:48:19.420305'),
('g26d3jjj0krytvtrx4fri3pwpy1k8mhm', 'eyJ0aWQiOjEsImNpZCI6MX0:1qc1m3:ExmPWU833skADCxtIPmpiPaLKyzT4eKFE6rqzkHwZVM', '2023-09-01 11:53:11.138204'),
('g30qlv1e3y3gv5sowi3ifa0s5jea13up', 'eyJ0aWQiOjEsImNpZCI6MX0:1qJJwZ:EmEQmnT0hfowuALvDcAj0li_PB_e_kdxtlWsQE-hTzU', '2023-07-11 21:26:43.806838'),
('g38jnswq64b4tw07phgzahrjd5kgl783', 'eyJ0aWQiOjEsImNpZCI6MX0:1qZs3L:Cd39P0wjHaK0x5gvGCL4XwWccT8JTshyTs-2sPkmSes', '2023-08-26 13:06:07.155694'),
('g4ka8sftytpgt8l0z8noblu192soq11r', 'eyJ0aWQiOjEsImNpZCI6MX0:1qaBQD:EkvV82jkAlD4X9Js54E5tBw_hchM846R1pixOkrqWm0', '2023-08-27 09:47:01.283308'),
('g56tktnzmjhiufj4s7tvuvyimw3z184a', 'eyJ0aWQiOjEsImNpZCI6MX0:1qdBFy:cSo_JtZ7Pgc6sKHgoQRxCL8vlKrtsUqh716z3Kc4VOw', '2023-09-04 16:12:50.944897'),
('g5phnhbi90zsjp7xfyf3udy3pjnxzyz4', 'eyJ0aWQiOjEsImNpZCI6MX0:1qb1zd:HzSWyDgt6OV5E6wKBi_Wf5hC1qZinQlusCT9IYuCcr8', '2023-08-29 17:55:05.877884'),
('g5yjnj5kvu1o9fozbxib7nnsquhu7bdy', 'eyJ0aWQiOjgsImNpZCI6NH0:1qQPRv:ssVWi-C2L0j0EP5xXjvBNgIESl9Ve_zjRIyEMv_LbqI', '2023-07-31 10:44:23.446604'),
('g69wnps9qadraxzxxfj2johw8ji0zp1c', 'eyJ0aWQiOjksImNpZCI6Mn0:1qMEB1:3SxsKtjqtY5o_f-RJT-4kO4Eq0VJJlRRUleNISnvtt0', '2023-07-19 21:53:39.247062'),
('g7xu7e1fs429eb5qlvnku98ddsvcmwyr', 'eyJ0aWQiOjEsImNpZCI6MX0:1qZq5X:W-lezGqdjMLwEzHt24SNN39On4nivmumeDSwg6SAkK0', '2023-08-26 11:00:15.632305'),
('g8ppqkdrbtu5sd4m78bgww4cy9f4nhba', 'eyJjaWQiOjIsInVpZCI6MTAsInRpZCI6MTF9:1qd70F:iAq1IXKZIo5h3GA0oabdFKgLFToMt2D8UaaRUOvd-jw', '2023-09-04 11:40:19.253514'),
('g9eusvc5p3ijbbatzjexelijj4avsqpe', '.eJyrVkrOTFGyUjJU0lEqBbOMjYDMEqhgLQCI7ggR:1qaYNe:9ZI66P9DOChldp0i0fLdzMlk6I7O6Lq0Q48-oUZ7RhM', '2023-08-28 10:17:54.757222'),
('gakjjq0bhumm5psgdckebhstw8p4jx3a', 'eyJ0aWQiOjEsImNpZCI6MX0:1qbJ1z:gz06z1moRAvDd8NeTDIiLMHSUM59f5aLyel5xTGa6YY', '2023-08-30 12:06:39.158697'),
('gal546z02n10atzxjd9f7ul5qxdnm57q', 'eyJ0aWQiOjEsImNpZCI6MX0:1qKQ3L:QunmezPNk5NJv0ljQtNK6erHeVIDrDpcEN9m2tmQqyY', '2023-07-14 22:10:15.051729'),
('gan8qdsr16i47h510kea6xlebbqzot4q', 'eyJ0aWQiOjEsImNpZCI6MX0:1qQjkG:A46ptKg7_KsVRiADIFlgliyvoYCNlpVlJad14Jum1P0', '2023-08-01 08:24:40.880879'),
('gbydw0jwkzgx9ir0xlxuy7azue3sarvf', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPKzH:82yF7aMfCTl3SxKiYjCqMAZmATlovDWZBjB2Ayfii-c', '2023-07-28 11:46:23.663572'),
('gh71kx1gzrfp86y6qftipojhvkn85qev', 'eyJ0aWQiOjEsImNpZCI6MX0:1qIKsw:BAQlmu0Je1nnzd2PGNNaeBFCBcJy3jwG6sl6YSye3Jc', '2023-07-09 04:14:54.325549'),
('gjn8ylxm90b84igs8vd76zkvoa71le7y', 'eyJ0aWQiOjksImNpZCI6Mn0:1qPErY:P3m9KZSsavZl2Jt4R-7jGy3jtY3uVYKYg-bL9UFEmcg', '2023-07-28 05:14:00.576826'),
('glul4i6g1yh8nky0ofwyxyahzbqawwec', 'eyJ0aWQiOjEsImNpZCI6MX0:1qbk9M:8o7_DnprmET2Mc7QS7I8R6uW1meygcBiVQgSw2xvXkk', '2023-08-31 17:04:04.512741'),
('gmz8ni5n3sp9xh1p951ecb8v330qz2m1', 'eyJ0aWQiOjksImNpZCI6Mn0:1qP7q6:LWYgwobLPcWMYsCktP3s0jCbQb0oRgR2f-Mfh5WBXqs', '2023-07-27 21:44:02.315779'),
('gnmydnl58nch697h2ce542hr99gnt91w', 'eyJ0aWQiOjEsImNpZCI6MX0:1qbk7A:0h1wafxw8uHgLys8Hytdr0ElNrw9dD3WccrRNzJ51Zw', '2023-08-31 17:01:48.530180'),
('gnok2lybxzfvfvatpzg1sgatoqlj6kij', 'eyJ0aWQiOjEsImNpZCI6MX0:1qcWVT:U6Ad6kc4VBrGb6k2xFIUfpVfkQ5pkHuK4WpjvsoRrLA', '2023-09-02 20:42:07.140626'),
('gorxq8i0xpku0ml1rwatbiud93smvjpw', 'eyJ0aWQiOjEsImNpZCI6MX0:1qIgsd:7IjkN6ye9Ism1buYVUO9CLxsFekkTzHFbeRaKi94omM', '2023-07-10 03:44:03.876224'),
('goz9gilw0aepsrlpja4dv0cvainaj3gv', 'eyJ0aWQiOjksImNpZCI6Mn0:1qHPZP:zQDowE5vHB3HGJefRGEfp6KIqi6eLtQkB27IjJL9rAI', '2023-07-06 15:02:55.117231'),
('gqywzju4k4v338mvfr8xw0laxhkauctd', 'eyJjaWQiOjEsInVpZCI6IjMyIiwidGlkIjoxfQ:1qZT4G:nzEPJvQnGzd-sF3OK9JrpfuH22vFoipa0zeUUOo5dN4', '2023-08-25 10:25:24.670323'),
('gtww9k862sk2pa8uyjo7otsvfot2pc1k', 'eyJ0aWQiOjEsImNpZCI6MX0:1qa9z8:oQaXiq8rrVnYllkY5MOybPg0x0tsODRhTMcQLrUtPYs', '2023-08-27 08:14:58.354521'),
('gvgi0fixoqsyj7xsk55duonjgsx0bl2w', 'eyJ0aWQiOjEsImNpZCI6MX0:1qIW9N:u7fZ9znIO9BCn6uC4VQvskxVnRVSUZ069X_YeIV9o2k', '2023-07-09 16:16:37.663342'),
('gwe49f50q9fxk96y3amtdq6g2l0psau8', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPJeD:_FciFsEkzO_GYyHZSepctzH2NU3RtWzLGjsuuPCXXmc', '2023-07-28 10:20:33.506410'),
('gz0fvh6vnqmvrwtmsbj3gfuphcl18igy', 'eyJjaWQiOjEsInVpZCI6MSwidGlkIjoxfQ:1qbgAB:ZNqM3VxbjZJLtzSdfScF7zhJDIzzD66K4xzvqmjQdMA', '2023-08-31 12:48:39.506101'),
('h02wrh5wwdmftcg2qah4qyg4qo48ml99', 'eyJ0aWQiOjEsImNpZCI6MX0:1qcMzq:fT9Y95OoT8iv2cEaeEr73vYV9I3Ox6dSFCNdosDGPKk', '2023-09-02 10:32:50.812085'),
('h0gjqu1i5sgvdbpo4urswhv21cnqu8m3', 'eyJ0aWQiOjEsImNpZCI6MX0:1qQY4X:IRZvaPGJ3X0yfIMja5Bnt_tWRU3V4kTYLXbFHo-dGUk', '2023-07-31 19:56:49.281633'),
('h0ry2nte2wwrihap2h1jh3ecubmow39j', 'eyJ0aWQiOjEsImNpZCI6MX0:1qcNp7:d7pEr4MEvOjYCIvAlHdfZm-1iEu4zDHZUIqxtq6IoMg', '2023-09-02 11:25:49.802822'),
('h1dcjlp08d2d424x565epgetgcjccsw2', 'eyJjaWQiOjEsInVpZCI6MSwidGlkIjoyfQ:1qPFJN:a3il92EGDvuiX6n8tQHPwJ9hmA5dOecI8uHr_I1v2ik', '2023-07-28 05:42:45.260358'),
('h1fp4e7istb7k1d3tygo0fv1iw92l62c', 'eyJ0aWQiOjksImNpZCI6Mn0:1qHPZN:gK0uov1TaGmGowrnYe_T4ukCh-PPwW1oj00I3kJLtok', '2023-07-06 15:02:53.558601'),
('h1u7gpaytfnjyamm2usjteq7zqta5lfo', 'eyJ0aWQiOjEsImNpZCI6MX0:1qbJgB:s4uis4X7bv_88G-3WRyNeMtxjnQu-mb2C7jLVJYETUo', '2023-08-30 12:48:11.863518'),
('h3fvs94vjft5bhsyhid38n39s43zzewa', 'eyJ0aWQiOjEsImNpZCI6MX0:1qZxFe:Z64FYYhcmxJ9VZ01AtMfb5KKlM5tcfamBsQZ7a1XzYc', '2023-08-26 18:39:10.680011'),
('h3z9fm0sow0g1ws906uqw0a6k6gt8bv5', 'eyJ0aWQiOjEsImNpZCI6MX0:1qaEgu:ihawHQ890m-xQO-vEqE951OMT-c6F4VjUYp1pk-UF-8', '2023-08-27 13:16:28.214586'),
('h4rlih88jjqq5i4vm5195zu0dd5e2tpn', 'eyJ0aWQiOjEsImNpZCI6MX0:1qdL74:1UwxLf8deQxH0uk6zPoiZFUCl8Jud79ZX0qJ-oO0UYM', '2023-09-05 02:44:18.669851'),
('h4w03epenphz9lg4cfjgp8glzr022p1w', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPHRq:ElHyYZTAd43DKLnQQSqYFx_4BZpaZGwL8m0IGxaT0k4', '2023-07-28 07:59:38.119348'),
('h6u3od2le6ld27xyvtjxzwpsywvoj554', 'eyJjaWQiOjEsInVpZCI6MjUsInRpZCI6MX0:1qZE0p:iYA911Lbt1xlXDc7UHoEeOtW1EWukJJUt_UME2NmlDE', '2023-08-24 18:20:51.416560'),
('h726ka3acj8nh5qf01tuz4pszdy2x5jx', 'eyJ0aWQiOjEsImNpZCI6MX0:1qQNV5:iNwkURCWrO82ZPlP4sIuym1yMd3f4v2Sw6LY-FKDa90', '2023-07-31 08:39:31.893945'),
('h9il9nctsk0alxb6on7b9i5jbm80bgnp', 'eyJ0aWQiOjEsImNpZCI6MX0:1qZo0H:JXQA-ufoH0rRFonBmeYsuRrSL8ypZpD0v2NuUs1SLsE', '2023-08-26 08:46:41.047009'),
('hag6vlpcl0px69tdpcc1sgbjfjjmbe2n', 'eyJ0aWQiOjEsImNpZCI6MX0:1qcWTK:97nITHEQXdHzTsTNbKRttcjeaQ0Kz0N8eUpeXxnMOCQ', '2023-09-02 20:39:54.768141'),
('hajv0lrhomlxcogr9n0k0140ybczeia3', 'eyJ0aWQiOjEsImNpZCI6MX0:1qIeLi:o_qIp3r-LxxiM2Zqp5XTcaGkC1mhgnPaTE4z_RMsnFI', '2023-07-10 01:01:54.296237'),
('harhibfjamr8kep41q0656dc9bi0kq6t', 'eyJ0aWQiOjEsImNpZCI6MX0:1qQQmf:Ua7jWFK-IrubwLod6iUz2HRvijwdeTaVT4_9LCdNyS8', '2023-07-31 12:09:53.691140'),
('harlf5qbepzpr4nrmimcs9pfbymb4e2z', 'eyJ0aWQiOjEsImNpZCI6MX0:1qKm3V:SmmJ716xkWLW6ZlMOokic8rUSl6mzzzIlw9fFR_bklM', '2023-07-15 21:39:53.115801'),
('hasc8i8mo6p38gftvuq1rb88xaai2keb', 'eyJjaWQiOjEsInVpZCI6MSwidGlkIjoxfQ:1qZSMW:tD28chLva6Zaa85ZAwwPVBXtAH2zhhmta0-C4ZzWvg4', '2023-08-25 09:40:12.351886'),
('hb4gcxnfh1bwssjhvmhpc8kp6dqg4p7q', 'eyJ0aWQiOjEsImNpZCI6MX0:1qcNrM:Nvb2Rvr-Z8qL7GkbXHikHsJZ-gQbWP8JTUekh2cFPUQ', '2023-09-02 11:28:08.413589'),
('hbcb15yeierpfwjjp8j1srlwxr20ejie', 'eyJ0aWQiOjEsImNpZCI6MX0:1qJg2u:DIun0ezOpEVaEOzZusU5yMv9ShsR0zAt8wkDkc4hze8', '2023-07-12 21:02:44.517359'),
('hc7mffj4flju1u1a6tmhnunqgzqz999p', 'eyJ0aWQiOjksImNpZCI6Mn0:1qR4Em:XS95POTKm4vg4mLOfLn3aF28_s606Usg-Hwq5ZDY45Q', '2023-08-02 06:17:32.100073'),
('hcn7ag772d2meuph5u5devxpn7z8itqq', 'eyJ0aWQiOjEsImNpZCI6MX0:1qQLm5:id4mRGUyQltFaYHyDZVrZ4ZjNOjbCm5NG1nMCGdGVEU', '2023-07-31 06:48:57.546417'),
('hedio5ccmeno2pwubp3pe4eeksfwda6r', 'eyJ0aWQiOjEsImNpZCI6MX0:1qZodK:HXWRZi3Il2akNLUqLvJEdDiae67x66VObJPIXuEvMV8', '2023-08-26 09:27:02.080094'),
('hf2j0o2qjo2uxtqmslhbgf4c9t6v6q9v', 'eyJ0aWQiOjEsImNpZCI6MX0:1qbFQa:m_eB1fonGbzeecQ5zoochW8IvVKFZ6l2i4we8iRexVM', '2023-08-30 08:15:48.685775'),
('hggprh010go50fc9tus3at5r265z0qke', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPUUg:PdLOlbEHNtBMftuXumAyCQg7q-lYXEb8zoiRQw9Te_A', '2023-07-28 21:55:26.352519'),
('hhoyhbpgme7nvlxrdjmeyupnboxub8vw', 'eyJ0aWQiOjksImNpZCI6Mn0:1qNaPh:Dvb5-gVuTfGCY4VwzTsy5PGS4iDPUuWCplXf9GbPt68', '2023-07-23 15:50:25.904426'),
('hhtm5w1kw72z0p56vqlk1qacxdfbd2qs', 'eyJjaWQiOjEsInVpZCI6MSwidGlkIjoyfQ:1qQN1G:cmkvtRGUgh-0hdp0poz3Nc_iwAAWpbaU4Q_gMA_eDgo', '2023-07-31 08:08:42.269158'),
('hhz34k91pobyf3nq9jp8kehc2oaug66e', 'eyJ0aWQiOjksImNpZCI6Mn0:1qHTb8:e4fhKkx1PcqylyKEjlw5NtLqEfK9v3bwRFvmMerv_DE', '2023-07-06 19:20:58.082487'),
('hixfoip6sw9j1n7ehd7m6mikayh21fm5', 'eyJ0aWQiOjEsImNpZCI6MX0:1qc1ly:C93V1MOcxiGHmt-yXKlXZWqg4apGe3zQRAFP8q-nkWU', '2023-09-01 11:53:06.959399'),
('hjh13f3eexoarwdadfyjmvy9a0tterk7', 'eyJ0aWQiOjQsImNpZCI6MSwidWlkIjoxfQ:1qKcTj:lw-p_MQCBq8QydHeCZIUQEM2S7VXLEkdLGY7pwN8QDg', '2023-07-15 11:26:19.282473'),
('hmcdg87z2uy4ao1i2wgu9emm5ybr39d3', 'eyJ0aWQiOjgsImNpZCI6NH0:1qI2DU:aK10tZCa_ga0hqr5l9hwEgWSjy-o_QOUcuzrUf4XTNo', '2023-07-08 08:18:52.582516'),
('hnz1p0n3h7jbc83xpgxo3rah0r1m33gc', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPJd4:ntyeaCG9Unm5PFBFCuE84GgO0UvSNOUITN5DF4tjue0', '2023-07-28 10:19:22.276306'),
('hq8aqqch5iuzo56idut5yvdcv057rs8n', 'eyJ0aWQiOjksImNpZCI6Mn0:1qMTQh:XTpzZD9HpdgBpVGLEdsa4OdQShsRUP0yLyfFJAr1S7w', '2023-07-20 14:10:51.382837'),
('hrp1bwvfb7bj252ikj875t4cy8h8za11', 'eyJ0aWQiOjEsImNpZCI6MX0:1qZwpB:7vt51OfLE4MQs_EwlPDT0pmcTNwwXAovMrEPXeRduIg', '2023-08-26 18:11:49.723866'),
('hsqwrkmmp9lm5j6pf8xvg1xgxp76vxnu', 'eyJ0aWQiOjEsImNpZCI6MX0:1qZsWY:9NmncXqF36Z83qOmaZqlq-23C15vBXqt3ldTHOaSgB4', '2023-08-26 13:36:18.570960'),
('hu5ue9g47cb07yqkds94fmkskvx5sx3j', 'eyJ0aWQiOjEsImNpZCI6MX0:1qZtJD:1mUIW8ALorvFocMbCMxV2UFLrItE9Eg0RHtKGKgyif0', '2023-08-26 14:26:35.921243'),
('hupdf0fjlb1obugpmh884qfyqaybei0g', 'eyJ0aWQiOjEsImNpZCI6MX0:1qIl1t:VIN5jlnqFUOmBuNgOr5gTGVaUvahQgKN_rwlv9lCYmg', '2023-07-10 08:09:53.177312'),
('hva1oqdpvun919k2ddnnetlutaqhcv04', 'eyJ0aWQiOjksImNpZCI6MiwidWlkIjo5fQ:1qEMTU:aK6J8XUSpPApKRlXBMokY_hAhcin97IvhMNSZhFdYyg', '2023-06-28 05:08:12.293837'),
('hxbkc4t3howp6qdb29ynrjfbflkf7x2m', 'eyJ0aWQiOjEsImNpZCI6MX0:1qdE7J:JDjYK5bpiMj1OBo7Ltoq6mS_Q_SNalGMu-fq3rbcH-s', '2023-09-04 19:16:05.981622'),
('hxzymmp9eyiwlrup1bac9uftmcrymhkn', 'eyJjaWQiOjEsInVpZCI6MSwidGlkIjozfQ:1qMLdY:sIC53hz5VfvV0hmDhHMrr0w2YcKiaDykzxwO8tmnDgg', '2023-07-20 05:51:36.042588'),
('hygbaf05qp2kvbnc57q09z8t1s3voac1', 'eyJ0aWQiOjEsImNpZCI6MX0:1qIOxB:sQTRj58cOfKdfmlBLPVhK_m1aqgHDUqOyszrSlzZ7Ao', '2023-07-09 08:35:33.984694'),
('hzrasg102997f5c8z2w39o0lqocmo5ms', 'eyJ0aWQiOjgsImNpZCI6NH0:1qJPpv:liiVNoj3l7NqQxlnYDgThawLvgb4D-70g2Ec-EXWVjU', '2023-07-12 03:44:15.711824'),
('i1nj7avqzw97un8sv33xdiegibwrwgl7', '.eJxFjcEKwkAMRP8lZxHWg6U9-ScS1li3uJuSZpUi_rtjWXEuA-9NyIs8XWgIO4qta2v1GR26Q3eEZJdRbd1M4Sw0EGerfmOC1eIcHaxvAZTM6f6f9WGq5TR-4T5qxmDmZXmq4RsF5HdyfoilaxJwtyrvDzzVMjw:1qPJIj:o_DWDghOdrng5jsULGGpzQ5SKX27K5PMem3rmQceQCU', '2023-07-28 09:58:21.919747'),
('i29egm9bv4pgvjyqbzsxwc6kjp21qfq7', 'eyJjaWQiOjIsInVpZCI6OSwidGlkIjo5fQ:1qBwMY:dhhts3Y8ZWMrH5YmrB4nkYLR6fD2wmcW_6PMjVrP6II', '2023-06-21 12:51:02.744561'),
('i2vd5rdja7nc08ystyotol736cc2ho7r', 'eyJ0aWQiOjEsImNpZCI6MX0:1qQtfn:fhNKFUD-5-VuDCMjx_1uK27QcQTDijwy81xdgv2BHeE', '2023-08-01 19:00:43.375130'),
('i3bcr5bw4hyy76lpprjqv4jbjwtgroim', 'eyJ0aWQiOjEsImNpZCI6MX0:1qaz7b:D37m5rz5c_T9uzcXYAUGNCypfDJ_ucCDNUIhZcY2--w', '2023-08-29 14:51:07.301815'),
('i4teymgfpku4rcrw6mk7krj25s3ora70', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPFZn:MWm1FEC2APo1QWOXlHwDsvrNU5lKcZBbdJJZv670w0Y', '2023-07-28 05:59:43.600129'),
('i57nrey5k8dahhvio2njoemhifoz8pt6', 'eyJ0aWQiOjgsImNpZCI6NH0:1qLQIN:IeoDU1YZboew260FGgCIX4TchAs-ZEwEiGnMAmd-9qA', '2023-07-17 16:37:55.648167'),
('i6i7smzld1ip64kla4w2hwrrwxam2kgd', 'eyJ0aWQiOjEsImNpZCI6MX0:1qKOSk:pMhjPFqSG-Lyxqn7FEUCMMC7t9J1Ske3xwtEyZE5-qw', '2023-07-14 20:28:22.614383'),
('i8d0srzoowku68ue6r3i95qdiu1tny7q', 'eyJ0aWQiOjksImNpZCI6Mn0:1qNoOR:uqhrxR0aU63adqFVf24ghIcq3_Fd1gjv_J-dGjW2ZOg', '2023-07-24 06:46:03.561297'),
('i8z7w4zttsvxtdlypnddji7gtlsm7fm6', 'eyJjaWQiOjEsInVpZCI6MSwidGlkIjoyfQ:1qOWUu:yIqug2r1EVeTEGENgRDuWEHfndpIl0B_fHk8veePc2o', '2023-07-26 05:51:40.370520'),
('ic71bs6lzm7wcei5yd3j7szxf5jrqzd0', 'eyJ0aWQiOjEsImNpZCI6MX0:1qcvks:NDotef0Qb_mXffL1HyVBjS5nCKkVpJjZ-bEUPqSP0ao', '2023-09-03 23:39:42.873807'),
('iclsqd6in9u5vw39l5mm71a62elo133l', 'eyJjaWQiOjEsInVpZCI6MSwidGlkIjoxfQ:1qLcHM:Va_j8XXSuW8dDrIkntXwui-wFIhmICpuXOU3hLoYUb4', '2023-07-18 05:25:40.675503'),
('iic1xn19pwxyr6wfj4i234h7is9tiau3', 'eyJ0aWQiOjEsImNpZCI6MX0:1qLmVW:n1am-dVp9qeEkUrsMDkon6Gu_OcA78kmbQ88UOfNy_o', '2023-07-18 16:20:58.332366'),
('iin1mzwpgnyobkiuo482hzc9kvl4p8x4', 'eyJ0aWQiOjEsImNpZCI6MX0:1qJ56W:yKwfTX4fuvpIirk8C62w-mD_koC-IbyrcRVoPcPRRa0', '2023-07-11 05:36:00.746920'),
('ijebtym7ntly5kd9z3979jijgpqeewzn', 'eyJ0aWQiOjEsImNpZCI6MX0:1qIrVH:7-3Uuz-FizRC-N3GUFQs1k_RWVNi1o7p6JbVr0vjtIk', '2023-07-10 15:04:39.619096'),
('ikn77f353su1ugwuhcecg966vk66ec5k', 'eyJ0aWQiOjksImNpZCI6Mn0:1qHgMH:lgzitwhmgLCKWTZ-cVtyzj0ZeKHUtHdwpYzdlYMurqA', '2023-07-07 08:58:29.017835'),
('infnkjkanig3rt5tilwxdbvyxf0gyohi', 'eyJ0aWQiOjEsImNpZCI6MX0:1qdPeA:1yp5yTrKR75RFxl9MWoZoGvcwQuWCEFOLt6Hk3wFLG8', '2023-09-05 07:34:46.190796'),
('ipdzti6znq3w4ey8mmg1shriftzwfudf', 'eyJ0aWQiOjEsImNpZCI6MX0:1qbFNt:Pkblv4Yl4XdEaqQWbh0xlAPUPLhZErBLTvNI4qoABDQ', '2023-08-30 08:13:01.992477'),
('irjtxwo7ik1j96obnlk8i7qqdkavjqlu', 'eyJjaWQiOjEsInVpZCI6MSwidGlkIjoxfQ:1qLfn6:BIXtGBfYuc1BfM6bHdhaLDQpuHS8T_UAmPNYSDpBPr0', '2023-07-18 09:10:40.473304'),
('is3qwbec8yru1ggblrb7zojzw2z5hq5o', 'eyJ0aWQiOjEsImNpZCI6MX0:1qJg2u:DIun0ezOpEVaEOzZusU5yMv9ShsR0zAt8wkDkc4hze8', '2023-07-12 21:02:44.562211'),
('is83ndxuywegu11ngxmks1n8eazhrmme', 'eyJ0aWQiOjgsImNpZCI6NH0:1qQssj:frjlQhLf9CHVFfev2VqbzQAH99Ny6jJ57os3pBys44M', '2023-08-01 18:10:01.764243'),
('isd9uwlfx9f13pu12pj3tpxrb8dh8z0e', 'eyJ0aWQiOjEsImNpZCI6MX0:1qbiwP:yO_JOuk_vp_ohJw0EJ1ubdagPi3tGFh3VlYlqduUo2s', '2023-08-31 15:46:37.291712'),
('isrdtsmanfjqyu6yioh98vrkd1mkmmzo', 'eyJ0aWQiOjEsImNpZCI6MX0:1qZwuz:mQe-Za9RExxIwbmBCL7ODsZ5ud07KVuN6O8MWaWjoA4', '2023-08-26 18:17:49.775668'),
('iutyvm2a8z5dohuinnjbf1vqx7n4kohx', 'eyJ0aWQiOjEsImNpZCI6MX0:1qK3jH:DJBCEXWuZ3VQR9HKK6e8Z2pURruU8yzACP6u0k3Gsn0', '2023-07-13 22:20:03.296507'),
('iv66ah0lr64mdg8pa4uj4gsj7gtwm4sz', 'eyJ0aWQiOjEsImNpZCI6MX0:1qQNae:WyvUy8X4JUGjmL9XQazbMO7t7EgfPJAx_W1JoAsBQlI', '2023-07-31 08:45:16.163651'),
('ivbip2kjqwju4rtxzj2cbl3fwp64kqof', 'eyJ0aWQiOjksImNpZCI6Mn0:1qLXKm:vMLQyjUPHop6YHEt9Ya5mlLjy4HgdoOEX-Gk2DUYOZY', '2023-07-18 00:08:52.518482'),
('ivngy4l8kguku4aqwxw2vmc33d3gd5ur', 'eyJ0aWQiOjEsImNpZCI6MX0:1qJwsR:XNsFOf8vvK4Mljx3YDt2NUdPN_PCd-401grmMvFvuOU', '2023-07-13 15:01:03.496329'),
('ivr5sv0vah0q0gyoaulrdok70dp2vq5c', 'eyJ0aWQiOjEsImNpZCI6MX0:1qaAaP:F0XBfGh6nfJfaY0lYEWnZ_GQgN4Q3pfjOCse6582DuM', '2023-08-27 08:53:29.706228'),
('iw67e4eh4l71x6fcht6pcvz3hn4tbpem', 'eyJ0aWQiOjEsImNpZCI6MX0:1qaIUM:fYNdzak5SLyWY5aagqB5R9kalZau7LjWDi9WrFIz23U', '2023-08-27 17:19:46.153115'),
('iwgp4g6c3s8w7j0vl0it26lwbzxf010a', 'eyJjaWQiOjQsInVpZCI6OCwidGlkIjo4fQ:1qA6Ta:ph-ciaDAF9AP4PWIM8s6QaoXVtZYdKvh3xqVNe-SWtw', '2023-06-16 11:14:42.130575'),
('ixu4znijiq5eyzdpimism2ohxf04q7eb', 'eyJjaWQiOjEsInVpZCI6MSwidGlkIjo0fQ:1qOXou:YDt8w92Kty6E-s8U3FAVr6mi3_1lDJnnvUw7b26lKnk', '2023-07-26 07:16:24.027821'),
('j0bktq2bl9aqkp3q13xgowgmqtmu8jyi', 'eyJ0aWQiOjEsImNpZCI6MX0:1qIBgn:HuaF0A553gzv9sbUEecBWcY84Qgn2KFI9Xtw0a35_X4', '2023-07-08 18:25:45.384263'),
('j0riy35ouu816daln54guuqg2ieta386', 'eyJ0aWQiOjksInVpZCI6OSwiY2lkIjoyfQ:1qHg2D:u20C61s5sT36aBxzHWf4LzE4PffWwTahhOaAGu_o-Uo', '2023-07-07 08:37:45.347543'),
('j3eakk4aaoodu17bo83ggzkomgras3qk', 'eyJ0aWQiOjEsImNpZCI6MX0:1qQQ1b:ZlhlzHcb0n0pVIWinYI6s21ZL4mHJ_dq4fE9bsh-NoY', '2023-07-31 11:21:15.339547'),
('j45dlqm8rdndw8zie3jm3jdwtmlisdb9', 'eyJ0aWQiOjEsImNpZCI6MX0:1qacaV:xYwPqnQMW5VcucPB-cdTCrvm8Lgai98ZxZaU96EG8JY', '2023-08-28 14:47:27.237159'),
('j52ywd4ptfq8dkexpc8mkun4y5iy45ib', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPwZQ:vEpCO9ZwxqBqnAaudYj2-JKgnsDspW1KcGaXis_3Cks', '2023-07-30 03:54:12.747497'),
('j5ftuzijcfwdpzphaxswtraja2lt4djl', 'eyJ0aWQiOjEsImNpZCI6MX0:1qZoWn:TEqwIyMmXc8L1F4U4WmjyLC3TFt0d-jrbm2FJsfdFms', '2023-08-26 09:20:17.941218'),
('j5jv8qgh5htbei9hfxvvhqljobsuzuqa', 'eyJ0aWQiOjEsImNpZCI6MX0:1qLGlZ:3lm_eUuSN9KKY2NZYlvHTxfHROfcgWRuKMpk_y5qCeQ', '2023-07-17 06:27:25.290232'),
('j651zjlbwks23xlmmqxzsyfk8nbwqr8t', 'eyJ0aWQiOjksImNpZCI6Mn0:1qNbbH:11iqqwlVFIp6nHqMIm-meuo_OW-hYekXosm9OfBxyhg', '2023-07-23 17:06:27.769943'),
('j6inshoqi5e9b7j86jacdphg97ksarq7', 'eyJ0aWQiOjksImNpZCI6Mn0:1qHS2t:33dgHBorLf6-rmgYlTfXEQkJe0PxmpgALPtHQuR72pw', '2023-07-06 17:41:31.397430');
INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('j6ldijvu4zf2w3jogbo8aiblaskyx7fp', 'eyJ0aWQiOjEsImNpZCI6MX0:1qbvRm:wUsCUq8gi2zC579foziKYpPamBc9XskvBp7W_Hz67MY', '2023-09-01 05:07:50.053422'),
('j6w9sn58wbmbpo1y0gcr1ks4peoj13co', 'eyJ0aWQiOjEsImNpZCI6MX0:1qIUyb:MpAwXh6MojITjMnFBjlxPwBjiAs04Ywfi1zGc2Eqhl4', '2023-07-09 15:01:25.610965'),
('j7g3r954ityu1a194yfv9ztqvlvxeab6', 'eyJ0aWQiOjksImNpZCI6Mn0:1qP69H:FV_Fj3MjSCI3oVAMDd6rB6ymVaTZlSfyp4KZB4Yyg8M', '2023-07-27 19:55:43.149520'),
('j9ztzbthl8saemhqw9pwsva3jm7cd3or', 'eyJ0aWQiOjgsImNpZCI6NH0:1qLQHU:qrZYfBDtLTnI8so0m8rAa5vyDQPjxywNh0NtBNnFPyA', '2023-07-17 16:37:00.724839'),
('jeg1u4nrckz58bz7cxegv0sfsdq5q3yj', 'eyJ0aWQiOjIyLCJjaWQiOjN9:1qbvAF:wW0EdMu7QIhn5wTaA7dj1eodcmY8Av8AwEsqx2VQ8U8', '2023-09-01 04:49:43.601518'),
('jelk52jw4k6ei2g7j8z3lri9pm1dkm7c', 'eyJ0aWQiOjEsInVpZCI6MjYsImNpZCI6MX0:1qTdby:uB_vZDCTy706fGxV2HWzV2WmmIlerdTx285IHZtW3QI', '2023-08-09 08:28:06.135481'),
('jf82249khxewe8gthz6taoh396of091t', 'eyJ0aWQiOjEsImNpZCI6MX0:1qJvow:OXezNFeTyop2fHVW94wfMQ-tS3obL0EW5ittz2j33MY', '2023-07-13 13:53:22.213007'),
('jg9q42n2lorjqpkmkyr5ofqus8e2moj9', 'eyJ0aWQiOjEsImNpZCI6MX0:1qcv8S:9mXq23WrvLUhYrAMEfeLamS-Jgj8wgVFGl5rutyyg7Q', '2023-09-03 23:00:00.286397'),
('jgmxx9807y00zy81r8cj0cwnwcniyzcb', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPKWG:DILX2DoXrsViYNwhAq7NtE7uPPexff5NnmiYAFviZQs', '2023-07-28 11:16:24.430849'),
('ji14jjw4tv1n24g1r65nnnctmp80pzs5', 'eyJjaWQiOjEsInVpZCI6MjZ9:1qZ464:DQ8GB87sI9MGn-LWA8WfJ1zbUUTYlTEB3JcABA6xFpI', '2023-08-24 07:45:36.165117'),
('ji3h31vrpr2480acsyotjwdscsz1bv3b', 'eyJjaWQiOjEsInVpZCI6MX0:1qZ4GB:nIxF0dyvPB9QtMLq3S37Mpr0UGt-6ArLvS2DSemqkM8', '2023-08-24 07:56:03.310435'),
('jin7z0jk3if8tvqvckvzdpr1312cpyly', 'eyJ0aWQiOjEsImNpZCI6MSwidWlkIjoyNX0:1qY6Rh:jKJnmHlPgWCpAf_3DqPN1wpMIsJT_aq9O_izTvzTTS4', '2023-08-21 16:03:57.878532'),
('jktlhz1g1z6iw313p3b1vqc95d42xv8v', 'eyJ0aWQiOjEsImNpZCI6MX0:1qaW7h:hwn0XYlpCrMpFxxY2pP4AujgGjzg5FsXkTG9WSn6A94', '2023-08-28 07:53:17.263109'),
('jl6k3x311upc2ggflwex48mr9gykgf5p', 'eyJ0aWQiOjksImNpZCI6Mn0:1qM31K:6hQPOn1IQRZgRmAkB9G15Bb4l6EdvYK5xOpnMpd-oBA', '2023-07-19 09:58:54.420847'),
('jm6dn9lb2er3njg049397n9w7kxf7bsz', 'eyJ0aWQiOjEsImNpZCI6MX0:1qNAJm:1JKe7hz-pJBsygOiiH3XnaiRJAWa8jqhrnNoDdVgGPA', '2023-07-22 11:58:34.848126'),
('jmv57trrta063cx653guqub9713s7jpg', 'eyJ0aWQiOjEsImNpZCI6MX0:1qSqYH:gEb1l0qRYh5qWBGJ0lVf1STnyWkJB7ZS6MF-cpbtFfs', '2023-08-07 04:05:01.471860'),
('jn8flqcf2bstx6g2igfm5wal1n6jjjg5', 'eyJ0aWQiOjEsImNpZCI6MX0:1qMPSU:0veJ80OlhRnc9g7D-S7rFc3iF3bNHQ3Xu_fuJH90rS0', '2023-07-20 09:56:26.974704'),
('jot19vz0fv4i6t6q7jve0fn49oprcjac', 'eyJ0aWQiOjEsImNpZCI6MX0:1qaHWS:FJAwL4dBbKFKO6Pg7kPNbEHrJ6qwYgIckuLpsxwK4fM', '2023-08-27 16:17:52.231848'),
('joytnjo1dc61w96tkcu7hmkmodhg1b9v', 'eyJ0aWQiOjEsImNpZCI6MX0:1qJVRB:Ik1a3hKI3vKBv6AWvQENhMU8yFimPRx1itBHalfBXWc', '2023-07-12 09:43:05.431362'),
('jpf4b58kn55er67oeypnqwqcfecu2alg', 'eyJ0aWQiOjEsImNpZCI6MX0:1qcM8B:L2FgvzPmlwVh4gdXdOtyMDdVcvnvjfByIBBlK25KicQ', '2023-09-02 09:37:23.254446'),
('jq6z7ejxwbyjmlfas2felaluv3mzntvw', 'eyJ0aWQiOjEsImNpZCI6MX0:1qbaD4:qBn3uXSQLNMsMPDrLNgFB4Qpzk9jv8qsxl5yJ5lUs1k', '2023-08-31 06:27:14.181465'),
('jrjg132l9ad1bdxrrjkmx9v9jpgn2oas', 'eyJ0aWQiOjEsImNpZCI6MX0:1qP3IT:ucHcmMXnhpcAeJN_N186b_OtWjfeylyU13HaUR8v47I', '2023-07-27 16:53:01.901679'),
('jscsfuyyeqt5etfuujrm0faj0v6p2wm3', 'eyJ0aWQiOjgsImNpZCI6NH0:1qQf81:qc3oS45gDN0pSprzSH7Wwga8CRhkobIC5jJn-vbQeHA', '2023-08-01 03:28:53.658030'),
('jsm2gbss0rinsrc0oifb52v7qgq65agk', 'eyJ0aWQiOjEsImNpZCI6MX0:1qZnpR:QrdMbhBGfH3Em4KwDjhdaeNJSX-nUBkHUc8go_1Y31E', '2023-08-26 08:35:29.443411'),
('jszzvgv0kghul3l9r5ioha6qf30batyb', 'eyJ0aWQiOjksImNpZCI6Mn0:1qHYsz:a2G_9nNKOw_PSLt5XDVy2fEz6UtMrW0QfNrO_QQvX5U', '2023-07-07 00:59:45.607586'),
('jt2nk9ept0uu1s2attuvj53bpvkbl0j1', 'eyJ0aWQiOjEsImNpZCI6MX0:1qb8fI:Cf1QiXr1D1TdSK2-UTWpQflabxHMv0bqujn-tCbv1VE', '2023-08-30 01:02:32.194625'),
('jtt1ff6gmjw8xnkpmaqazrdk3drfsh8u', 'eyJjaWQiOjEsInVpZCI6MSwidGlkIjoyfQ:1qQRHu:tAhd45IqH2G9jaVekSxNIb2cbTVAecoPVy29n5PDHvk', '2023-07-31 12:42:10.772356'),
('jxj8harec3ha410lmn91wrill9txjjby', 'eyJ0aWQiOjEsImNpZCI6MX0:1qaWVg:odMqXvTVswTOAk9t5Hi16oxS7-x5KBdwUd57DM9V-tw', '2023-08-28 08:18:04.908242'),
('jxy9q7z6t1jgjp49zaltb5dzm2v3nzyb', 'eyJ0aWQiOjEsImNpZCI6MX0:1qZpu1:DojfCVr0ZP2hqH2Oiz9t_Kg3bpgIR4xn7eGRfLwxbmI', '2023-08-26 10:48:21.327284'),
('jz14i9xembbhr7qecvarzz219qf41fi3', 'eyJ0aWQiOjEsImNpZCI6MX0:1qd54Z:dQBSlBNqlnbJIcPBqDHRt5JQK5HwKusE46tpKQPCF2Q', '2023-09-04 09:36:39.395202'),
('jzbf9n481i0xv8limtm8kfg7qr9otc23', 'eyJ0aWQiOjEsImNpZCI6MX0:1qIW9N:u7fZ9znIO9BCn6uC4VQvskxVnRVSUZ069X_YeIV9o2k', '2023-07-09 16:16:37.837721'),
('jzu6x1a99n0w09vsmmd3cr5kmjqbcr6b', 'eyJ0aWQiOjEsImNpZCI6MX0:1qaEkv:GGXUqL6JwHd2YKurU1NvozML-DrTlGaoWnBvDMbfX4I', '2023-08-27 13:20:37.750882'),
('k0jq8oshghm0s220yq08sk0ok0uxpt9u', 'eyJ0aWQiOjEsImNpZCI6MX0:1qIVcm:OpAaFUpOcHQJNfheqrrDIA37T2_M38nJe2fGwCkZk3U', '2023-07-09 15:42:56.642234'),
('k1q8vn2vrx7kyz1956x9trv0dxodl7uz', 'eyJ0aWQiOjksImNpZCI6MiwidWlkIjoyfQ:1qE4YR:FZ2_AWaYij0TylMQfwKm2hjkGV4H9gbiGNUSDz4xc84', '2023-06-27 10:00:07.339198'),
('k2oulukocro5sanqae0tnsfcpmlpdmxu', 'eyJ0aWQiOjIyLCJjaWQiOjN9:1qcIiR:uEYHnHKP4wC_9VicHSsiWsFHJ46U2LU78UHZ4pbV08A', '2023-09-02 05:58:35.951187'),
('k3pf1ipsc8e7nzshgok662vj76jidjk9', 'eyJ0aWQiOjEsImNpZCI6MX0:1qdQjz:1yZllFKu3b2VbfkNqDA_e67D1vGeVNGbmpBBOK3hSDs', '2023-09-05 08:44:51.244625'),
('k3s585ze1ntbyybo624ml6f634m9q2an', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPoEb:f33qwA50Urdqsc_-SbSyWnbL6S1JGZFGTKDTPrtx_Is', '2023-07-29 19:00:09.459552'),
('k5ia4owtao6preu41vtrrpae69oa2lit', 'eyJ0aWQiOjEsImNpZCI6MX0:1qQ4yv:Zyb5yG-3YtUJW5WL4cgIzuhxxvVn3og_sqYgcqYGFCk', '2023-07-30 12:53:05.569935'),
('k65kxou4tc42korh5t88cfuym6n2cwli', 'eyJ0aWQiOjEsImNpZCI6MX0:1qKYJv:DSUs5nvEZ4yrvtq_2ylUEcMIt76POkZWyK8Pi_eMIYI', '2023-07-15 06:59:55.327606'),
('k68prfqt8qc282c1z53kq5mf9qhm57wy', 'eyJ0aWQiOjEsImNpZCI6MX0:1qI2Av:uXB96PdLSiGmkLUoQ6wcQ-MnuyXNHZOCK0lTZfWMK7w', '2023-07-08 08:16:13.917156'),
('k7hle4v7ry60xsk9otb8gmm72aze48b3', 'eyJ0aWQiOjEsImNpZCI6MX0:1qLmVW:n1am-dVp9qeEkUrsMDkon6Gu_OcA78kmbQ88UOfNy_o', '2023-07-18 16:20:58.372842'),
('k7ox43aabs0z7xw5wh6zg2xct041095p', 'eyJ0aWQiOjEsImNpZCI6MX0:1qIzwQ:y90OpTP2WCN2oVDCYQGo-hv5sSY7AVEbu0q-UqsRZw4', '2023-07-11 00:05:14.880611'),
('k813uy8msux76lez9e8ctar9v993agbo', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPKR7:WiqQLRxVPcSnfeTJzrRb3R4iTOB5LAyE1qd0CuOjn3M', '2023-07-28 11:11:05.437334'),
('kcs2gmsyq6qr6lg7k2l50mhyb3d8bgde', 'eyJ0aWQiOjEsImNpZCI6MX0:1qQObR:A64QY9ST4okkygNs07xr2k9gNiC7UZL8Db02IFjDgos', '2023-07-31 09:50:09.413467'),
('kd1dw7y7b5hs26yvmo9meo4vgswjimnm', 'eyJ0aWQiOjEsImNpZCI6MX0:1qQiNr:-7um_egNL4aVGR4XH5lOBX7KtW1gky2Qyea41RQT23I', '2023-08-01 06:57:27.033012'),
('kd7kxtynrvall8oi1w6ufu2beje3flqo', 'eyJ0aWQiOjEsImNpZCI6MX0:1qcaio:NKEPHHvFZtSvDr5IVhEOVPL2MKoUtgD3D5umJfsKQO8', '2023-09-03 01:12:10.431490'),
('kdo3po09u2404zpy0mylruxuefl5suti', 'eyJ0aWQiOjEsImNpZCI6MX0:1qLCQ7:BVNPERQdh8z0-WuOdIHjO7cCgQCm7nKqE4ot6Ginzxo', '2023-07-17 01:48:59.086162'),
('ke4s4cx4rgu7gmhtn39xvotk7yjc07by', 'eyJ0aWQiOjgsImNpZCI6NH0:1qNAVG:stQV813c11GVWhMNFFc-zO8aUZZKBAJqj6BtpjO4vTE', '2023-07-22 12:10:26.507930'),
('kej4c7b5fm08dajhb64yicm91inf9ws0', '.eJw1jcEKwjAQRH9F9hyEFi0mJ_9ElnRtV0y2pBtFxH93I3UuA483zBsijxB6B7W1d6Bbiy4QhsNw6o8OIipNUl4_M2MiCIAj68y7ggImSFaMathvMUgJ-d7MVKrO6LtbzeepwX2UZMKC6_qUYofQWf6Ty4MKX5mMa6n0-QLaGjM4:1qBDUD:ib9Il9WkOt0lPZBwHnPA-UJQYNPFCFYhEoJlMjGELMI', '2023-06-19 12:55:57.923930'),
('keomqt8bsn1uxhevkgcarvn2gtnje4lk', 'eyJjaWQiOjEsInVpZCI6MSwidGlkIjoxfQ:1qKYOc:u5cGwwKmOPh51j7L-92P1uS77RaTRg-MxkjQez6bz_8', '2023-07-15 07:04:46.203806'),
('kgo2oy47dd1tcb421605gytf3pxr79jv', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPXWp:Qimd87HTU4E-ouTlCx_g5ke8cWHhnzi_kKlmAdfbHQA', '2023-07-29 01:09:51.564668'),
('kguxsuoi7x1qk4pbr5692xflv5qf9orm', 'eyJ0aWQiOjgsImNpZCI6NH0:1qSrJV:rUEQnX8nrWD_6flmOpBtGrQhrvZZZIFKcv6Rj3HbJPM', '2023-08-07 04:53:49.050228'),
('kgzaxjvtnswil7g2fo9iorouatxpx736', 'eyJjaWQiOjEsInVpZCI6IjEiLCJ0aWQiOjJ9:1qUUSo:mn9LOWFXMsq7PuVAjtym5zBjQPqcnnHDkD7jPNZ7pao', '2023-08-11 16:54:10.009900'),
('kjs4lgyvielu0vrxx22b9a8s8g1zoprw', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPLH5:-0EtLTZORxGLbsrprRxhl5I5PR7EiwSaotstp0lFI2o', '2023-07-28 12:04:47.290994'),
('kkezxaxgq3vll1ayw55otlxpjuifx6ik', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPLEC:qEAVQcepWPAWJc3cNPMV3SbAcjvF9SrXV3_VuObgTJ8', '2023-07-28 12:01:48.437453'),
('klct5i9tcmjrs163qaj3ql1j6uo3bhgs', 'eyJ0aWQiOjEsImNpZCI6MX0:1qYrTZ:rFIMM8XxQbaClPTU468nFximcxIPLtLkJAmF8HQAU7A', '2023-08-23 18:17:01.055612'),
('kmoo174u4clu40xlyf58d4sr3v2yfqei', 'eyJ0aWQiOjEsImNpZCI6MX0:1qO9vJ:NT1m8b-EpeQ_KXtI4g2_sHRWRlbLp0mqa237mR7qHzw', '2023-07-25 05:45:25.778990'),
('kmzlyi65yyrww4itrw6ytbgslepv1z0f', 'eyJ0aWQiOjEsImNpZCI6MX0:1qaBKw:GCt6LdiLAIG12wuXTw5d9UuJmIQTLw9iXmIe6PnoGQ4', '2023-08-27 09:41:34.768868'),
('kpgpuve4vhteabz2tl7nhfa8ty8vc1ip', 'eyJ0aWQiOjEsImNpZCI6MX0:1qJBza:HwUZmVbRuLam7utBVIRZaAbBtE5nHu__S7xfHF_QFag', '2023-07-11 12:57:18.397633'),
('kpqtn6ty81qvtfdq536ls2zevsq94fta', 'eyJ0aWQiOjEsImNpZCI6MX0:1qaFLh:d05YutqIeVaSvZDDbyvBUtVwHkotCZxsX8h3Hp6toyc', '2023-08-27 13:58:37.446795'),
('kqhr285d9jjvboqv4fm5pl0xy4xq0n3a', 'eyJ0aWQiOjksImNpZCI6Mn0:1qU3X5:cpX2xfRptiSVl_RcVhTi5cwXohn3up8dxl0T1gehp7c', '2023-08-10 12:08:47.312058'),
('kqzm9b9iiqpht1gs02ba3hbfmxt6pb0n', 'eyJ0aWQiOjksImNpZCI6Mn0:1qLXKq:UMdiXnCm6knAZC-j2SAR0FSRCH3TRSAbhKMo_m5vprc', '2023-07-18 00:08:56.869120'),
('krvpzw8eq616ad94fgkumfmsvs13mtpf', 'eyJ0aWQiOjEsImNpZCI6MX0:1qaBVM:4ouj-Pl1a_E3vX4f5lSATLSENB25aTLMpDRIrcMosp4', '2023-08-27 09:52:20.611722'),
('krvqliasdi6jg2dpxcuflic981rtp1qh', 'eyJ0aWQiOjEsImNpZCI6MX0:1qc1eu:9X7jk58bDfD2Czc5edMx1lYqAy6n_PT2pjv17Tye3s8', '2023-09-01 11:45:48.063836'),
('ks1c2tvynpybiw7d12xgrejqq6f7ol8g', 'eyJjaWQiOjIsInVpZCI6OSwidGlkIjo5fQ:1qd1sc:0Ps6xVCLOGEVQMmkkVMExkTkAgdMFeX5FJcIFPJgXro', '2023-09-04 06:12:06.993568'),
('kwh63tsn7m99kj542611vy7b9we6oz69', 'eyJ0aWQiOjgsImNpZCI6NH0:1qQWGm:pO2JIied_VSItSTHxo9hKYK9UYkXxlccRBjxlnkHEu8', '2023-07-31 18:01:20.540155'),
('kx5qye5w7i9ymztz7s5bnj3vugw7is39', 'eyJ0aWQiOjEsImNpZCI6MX0:1qQgUk:24NyZDCE6od_qmz3HgtbdGdtg6bR5KwMnPFHOZiy_iA', '2023-08-01 04:56:26.631561'),
('kxnn44a1z7c6iygo8sqfrd2k7gobsrmf', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPKx2:LtIxcYsqTvfO3p8rzt8WpvIUZ-6Ync_u_6EmAQOKVTE', '2023-07-28 11:44:04.278897'),
('kxz4p5sawwxb554fsv856gpswm6xzt6i', 'eyJjaWQiOjEsInVpZCI6MSwidGlkIjoyfQ:1qPIeE:oeuAPt0PmyGV4ztdav38FCmv6adbTAf0NVa1Cve5ADE', '2023-07-28 09:16:30.124491'),
('kym6f1qto47uq7h6otc0yb9h3vln4mwi', 'eyJjaWQiOjEsInVpZCI6MjUsInRpZCI6MX0:1qYNlq:n0po3lZT2ixepw18T3AxKx1oabF6VbhmHMFAH0fuxeo', '2023-08-22 10:33:54.532493'),
('kynt1iol8dg91pxjm6ox4rf1apvr9mc1', 'eyJ0aWQiOjEsImNpZCI6MX0:1qZxGi:t9bbBCVnbwWqguwyyZnrUgQzMFE51fHHIDwJ4b19LhE', '2023-08-26 18:40:16.327425'),
('kz7lbzoa4z4hfjzsetriv62ejehjoyy7', 'eyJ0aWQiOjksImNpZCI6Mn0:1qHf5f:ePtpOqmCEKKKhl1gPRPW4hJ-lwkZnwsXWZN0ZEUBFbY', '2023-07-07 07:37:15.192486'),
('kzpjj1nid15hi11l7pkyo2o1hdvu3sbn', 'eyJ0aWQiOjksImNpZCI6Mn0:1qWE0v:KzYgNCX4rTQ7Skto3p_5Pnf88wf5ywi75ZKO32VSe-o', '2023-08-16 11:44:33.094931'),
('l0buncrp9dycifs8irgxmqgc6yakgxpo', 'eyJ0aWQiOjEsImNpZCI6MX0:1qaOLs:Z86LSm_kYX_4FCYpAzPEqnHaRqEqDD1tvSgGn_Bs7mI', '2023-08-27 23:35:24.461097'),
('l0htahvsu0h1stffhjrig0itkgaf4nd6', 'eyJ0aWQiOjEsImNpZCI6MX0:1qJBza:HwUZmVbRuLam7utBVIRZaAbBtE5nHu__S7xfHF_QFag', '2023-07-11 12:57:18.357767'),
('l1flx5eqv235nlsg9xhb3spd09ohed1e', 'eyJ0aWQiOjEsImNpZCI6MX0:1qQM0n:odnrAThgZ9wT6Z3bfMy_61q9Iax1EOs1kLLD_qEiOos', '2023-07-31 07:04:09.555735'),
('l1mul6hvjx5s41w1lmr52hwgxk9nb8r2', 'eyJ0aWQiOjEsImNpZCI6MX0:1qQX4Q:yhOTBV1I0B91myLx965T1gCGcPwktx3ev8RUykxCpvU', '2023-07-31 18:52:38.470904'),
('l2rs0srj3j949chcs1y3qtm0o53m825n', 'eyJ0aWQiOjEsImNpZCI6MX0:1qcORL:utEY-UlquFe5m5eop4hdgNo2ELT4SsF7nnbuXzhfq-8', '2023-09-02 12:05:19.413799'),
('l34q8x2myagnkifsmzz4vwgynzouy6pp', 'eyJ0aWQiOjEsImNpZCI6MX0:1qIdaD:t1ZFeQZZkMJcOGWp_Gfrk3KUF1RNWEMlFv7Fm8D0unI', '2023-07-10 00:12:49.359881'),
('l3856l4p7q9z70u1irjnlp4zvzg1j8l2', 'eyJ0aWQiOjEsImNpZCI6MX0:1qaBTS:R-GjZcKu5B5FWzJYrsowvbFJsW0eelXPrC3vewaiuBI', '2023-08-27 09:50:22.529533'),
('l5rxevrqlkqdatp7tl2feutm6cv0om00', 'eyJ0aWQiOjksImNpZCI6Mn0:1qHf5f:ePtpOqmCEKKKhl1gPRPW4hJ-lwkZnwsXWZN0ZEUBFbY', '2023-07-07 07:37:15.397727'),
('l68iwaaz9r1mkv0hkyonswe2oj4ronwf', 'eyJ0aWQiOjEsImNpZCI6MX0:1qbFQb:cHuGQks-4Aa2WZn52gOQB_1dvmfMpJqLVQS2I7Q8ByQ', '2023-08-30 08:15:49.772601'),
('l6jezgxgkykwqdg7jrarirn6f8eksucz', 'eyJ0aWQiOjEsImNpZCI6MX0:1qI97q:CJGXdvC5XjLiOQjL4NmCRf3r7wuQpSHn3wrzFD6iQSE', '2023-07-08 15:41:30.297465'),
('l8doprlngdygwnfp3fyoslczexr5t2xp', 'eyJ0aWQiOjEsImNpZCI6MX0:1qQCpD:CnruXixipmpwIazSLlHv_qbHfu4iiuC-RooerYBiy6Q', '2023-07-30 21:15:35.376746'),
('l8n3jkm4w0dqfwp5kqxjksutiabwu1v0', 'eyJ0aWQiOjEsImNpZCI6MX0:1qbqD4:OlcWhpO_Q3_Pxm4tAjka62GtvmBm4E-ZQkHt93dlMoc', '2023-08-31 23:32:18.898631'),
('l9p45mpiw5i91brr1fk56c73964a7u4b', 'eyJ0aWQiOjEsImNpZCI6MX0:1qaIua:0dRL50rDTWwm9VgHWGKq-2UI65KIeAuaRpMJJyCYMms', '2023-08-27 17:46:52.698149'),
('ldutbi7l6446nhlau8r2q89xobugvn4f', 'eyJ0aWQiOjEsImNpZCI6MX0:1qKm3J:ZxWMYzME-NmDFqKopwhcn-x_tkPci8FtYTB2vo-Dk2M', '2023-07-15 21:39:41.940941'),
('legfrem88ta9hw9jnkmjle2ajvrcq4lc', 'eyJ0aWQiOjEsImNpZCI6MX0:1qcyft:roB94rdMAh1chvRgSJ7zalPTjBHU33ibUNOFDzDKw48', '2023-09-04 02:46:45.923145'),
('lfey6ykrg4tnxcgde5mdvy6gq8dw7xzy', 'eyJjaWQiOjEsInVpZCI6MjgsInRpZCI6MX0:1qY707:qzzDh-ZpmsxJJmvl8204YTYncOnRyJWATTM9Eh5Kv3E', '2023-08-21 16:39:31.675295'),
('lg9jrtl5pq6pv8keyms9tz83a1k4rfu5', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPJlV:a754uDYtQDCUS8OZhvobbYPCWP5qI-jGaPFx1lZBKAQ', '2023-07-28 10:28:05.216563'),
('lgk85ahr3kkmk6nxc8p9o52qeubfhx4l', 'eyJjaWQiOjEsInVpZCI6MSwidGlkIjoyMX0:1qZE6Y:8l-mNmpgfHc_4rCEQcqKDtZJiE2BOcSYrqm2bN39y9U', '2023-08-24 18:26:46.076008'),
('lic6ncik1m8tcydrnjl5on8rhxcl4d7x', 'eyJ0aWQiOjgsImNpZCI6NH0:1qQggO:50FWJUVj1nwHsxWtK1u98jqAIhFiIt4Lc-GD9GqSNDo', '2023-08-01 05:08:28.673906'),
('lk4fjmrbdj08nthyexkyyoyf181kfbns', 'eyJ0aWQiOjEsImNpZCI6MX0:1qcWSs:lzzRNwGfCoBKnfVpIJd_I979AB5HoQz2MRoNcYwTsnc', '2023-09-02 20:39:26.527274'),
('lm0pmp2yasgefexiuoy0txc3ysfzppep', 'eyJ0aWQiOjksImNpZCI6Mn0:1qMe0v:6yowmlJrkPlSVh4iNQMYRXt-qzn4o201SQ7QtmBGhZQ', '2023-07-21 01:28:57.803525'),
('ln0m6lhqg0nm4xtku4ukne7go75u0v0h', 'eyJ0aWQiOjIyLCJjaWQiOjN9:1qbvAF:wW0EdMu7QIhn5wTaA7dj1eodcmY8Av8AwEsqx2VQ8U8', '2023-09-01 04:49:43.512478'),
('lo5lei53bo1zcpoq1rpegn82u2970v6z', 'eyJ0aWQiOjEsImNpZCI6MX0:1qHngH:sxDYLpr6sOWwR6Guz415i7o9wH-lUx97ENsd9a8tcc8', '2023-07-07 16:47:37.016474'),
('locnab7j95f4ec4etjdq5gqg2hh84hv2', 'eyJ0aWQiOjEsImNpZCI6MX0:1qblO9:mBB222plW9GOhVkALHi4FZCTu0uBbWvbcEQ43HOWuUw', '2023-08-31 18:23:25.788885'),
('loxwyz8b4d8h7m6advl2bdqk0ny6tshi', 'eyJ0aWQiOjEsImNpZCI6MX0:1qbH8i:xnXsKmxm5JDDoSyZJ1M0V2SDbEdfLljMIDplQDkvT40', '2023-08-30 10:05:28.497482'),
('lpidcrajtce7jx14q30gf2itomrsx1zt', 'eyJ0aWQiOjEsImNpZCI6MX0:1qbgub:3rJCVVJvLBZiyN6aOHCSlJ8dFpE63gvTIZiijbYNQ-Q', '2023-08-31 13:36:37.825411'),
('lqpyu1elsaqkn108ffp3bgg2x8pmnme5', 'eyJ0aWQiOjEsImNpZCI6MX0:1qbk7F:6tOtiSOYrhATgQBR_UISWfruIWIMBFHutVUeDpOYJhg', '2023-08-31 17:01:53.269941'),
('lr5rcdwnrvccfuxdlfbfqmli1glogwcc', 'eyJ0aWQiOjEsImNpZCI6MX0:1qOyYl:mB2vAOdiduKfGWGgV_-twIbIqGxDdd5xh79fVoJIGos', '2023-07-27 11:49:31.461620'),
('lrxv1m92z2tvlxfugr6lo5vbtwnw2b0d', 'eyJ0aWQiOjEsImNpZCI6MX0:1qb1ze:RH8B0qpcrEKN6hc8u7RZMB0WG1yS9juJWHw1s0YJ6Iw', '2023-08-29 17:55:06.055771'),
('lsfdkbm28vp87gt5sgdsabexbs4p85xh', 'eyJ0aWQiOjEsImNpZCI6MX0:1qQhVR:eSQU4mZENArSd29kibjk-VrE_FaBWPJV19f7H1ZsJ88', '2023-08-01 06:01:13.725361'),
('lsqqccxd7ob0aqydgof1s5bftdzowohb', 'eyJ0aWQiOjksImNpZCI6Mn0:1qZvRr:xQmtRppX11NVvPEQGeUNMzj-KmOj4YnFKkDk7T96-VE', '2023-08-26 16:43:39.638311'),
('lti6rdz8hok8u2u5rfedzk8vin8ma3jx', 'eyJ0aWQiOjEsImNpZCI6MX0:1qIol3:Oc66Af1ivRrUR0BZFqaXqFYFqujjMftGUJQUalGkJMk', '2023-07-10 12:08:45.772198'),
('lu9e0yt3akd8jwc5bkm4hpixsipifcza', 'eyJ0aWQiOjEsImNpZCI6MX0:1qZpu1:DojfCVr0ZP2hqH2Oiz9t_Kg3bpgIR4xn7eGRfLwxbmI', '2023-08-26 10:48:21.238550'),
('lxb84s6yk935j0y4kr7189rt1knmkn6y', 'eyJjaWQiOjIsInVpZCI6OSwidGlkIjo5fQ:1qGzPo:OFXWSdUfJUuP09Ki0rwSJiXn0dZf58mWeGSQNUemyNw', '2023-07-05 11:07:16.209250'),
('m0pgtzdu4row3pylbcvzlk2cxtxcxsan', 'eyJ0aWQiOjEsImNpZCI6MX0:1qOXkc:aqiwXvp7IO9ieLJaZCa9_EUYJJ-H2JnIKJvAublPW5A', '2023-07-26 07:11:58.392754'),
('m1dm2r30pd475t3svdiegv84dih56as3', 'eyJ0aWQiOjksImNpZCI6Mn0:1qObIQ:1gui39nFLpfJRVjZcc7EOLXOBKZPZx7u-jGBBqDei5g', '2023-07-26 10:59:06.564111'),
('m2zxd7sbj995i3177zawasdn3gc4uouj', 'eyJ0aWQiOjEsImNpZCI6MX0:1qdET9:HSSC5h2Ilpy0MSmGJOm9mqqakFbQmZdTSDuAZ3WJ7-c', '2023-09-04 19:38:39.070699'),
('m54qpmc5yc528yfhi142dmpr9tkam6gf', 'eyJjaWQiOjEsInVpZCI6IjEiLCJ0aWQiOjF9:1qUjM8:Zvq9dPMo5rw8s4Xy76WEbWuOpHcPYhNBu366rpCqg8M', '2023-08-12 08:48:16.182732'),
('m5wypsxv2h93f4rpcpymxn0snva6ub2n', 'eyJ0aWQiOjksImNpZCI6Mn0:1qMFAk:ftWt_qn9S1k0sjPzCimIOk-FMMbvvESQR5YQPpalo4k', '2023-07-19 22:57:26.655118'),
('m6879gnib80md2irde8upwpopdp6r5d3', 'eyJjaWQiOjEsInVpZCI6MSwidGlkIjoxfQ:1qR5kQ:Z_-l7bLI2RFehRB6yv7s3PXTPBI_dR-VwfIm9XuhcVw', '2023-08-02 07:54:18.598052'),
('m7cueioc1h14ah4kp3qvqou4wqk6mbik', '.eJyrVsovKVCyMjE1MTQ011FKTixJTc8vqlSyMtRRykvMTVWyUvLyjHRUCPEPDQpWUFMICXIMc_UJVgIqzc8rSUwuASowNzU0MDY0tjSwBAqn5iZm5gAFszIrE0uKEstSc4qNDAzNHNJB4nrJ-blANQWJxcXl-UUpIMOBygyNjJVqAajnKME:1qPLAl:zLyyhg842sJBGSNqWxSdWhVJoG3vetru9pJLbo1LBn4', '2023-07-28 11:58:15.735819'),
('m7iul65hy6fhussnts22ynsyqb1e0xyf', 'eyJ0aWQiOjEsImNpZCI6MX0:1qIwge:yVU-IKp7ICURrjroUrcM_GlWydE_h4pO41Ya6LwkPtA', '2023-07-10 20:36:44.223645'),
('m8j8849s84hvep5suovyuue34lx2oe68', 'eyJ0aWQiOjEsImNpZCI6MX0:1qQUfh:TcMKyJASE4MgCaN45mecGQfeCOb75QZFPitDl3FHpY4', '2023-07-31 16:18:57.246933'),
('m9qcfk8vbezcy64kkn7mhwr6y6ctnw33', 'eyJ0aWQiOjgsImNpZCI6NH0:1qIBnR:GJg4xcGVzHl0TFwkZtxdwMSOJCB0Cj6qRedKh01IIv4', '2023-07-08 18:32:37.158938'),
('mact53noldy72mie6tefqqsr3jrvq25x', 'eyJ0aWQiOjEsImNpZCI6MX0:1qbuW7:49YIebce0m8IZi4CRRjPG3soOSSfwQ35qE82e404A6M', '2023-09-01 04:08:15.363049'),
('mdw90sxa1m51gdx5r3hnngnwmx546doo', 'eyJ0aWQiOjksImNpZCI6Mn0:1qM7k7:sIK5EbpOqRwOfyLu6RFRyDYEOMIhDkc8Uypm7bUbXGk', '2023-07-19 15:01:27.515841'),
('mecyp4wwc31ff53ahb3ahvmlreq4kh9l', 'eyJjaWQiOjQsInVpZCI6NywidGlkIjoxfQ:1q8eU0:QNLO1QgJ37IzyV_o7_T4GHV3dQDe0Q6SYYoIUpSyclg', '2023-06-12 11:09:08.234130'),
('mfnkzib1wmdqkin8vj15805zl0usqn50', 'eyJ0aWQiOjksImNpZCI6Mn0:1qHOXK:eDzIApl__3q-u6NT-p_7UJnsWw4CNjonqlMtz6OZslM', '2023-07-06 13:56:42.537038'),
('mhi0nwxcyqp3wit70r5hv3lyq9vsrjfs', 'eyJ0aWQiOjksImNpZCI6Mn0:1qM2y3:4maOdQVzJjSIX22qyHN4KucABLOmmk9gJu0d3OhMYMs', '2023-07-19 09:55:31.930122'),
('mknfu8tufsw7olrathbzjbz6fcjschk5', 'eyJ0aWQiOjEsImNpZCI6MX0:1qRPJ0:KeOL0N0Xt470nHGyYNshf9wK45MGxH_dZzpbpuJkMx0', '2023-08-03 04:47:18.561304'),
('mlmb0ilpwklyxdo2gl8gcwut4r54nsw2', 'eyJ0aWQiOjIyLCJjaWQiOjN9:1qcRbC:v7dodKEotRPV5sy-ECSiV63gCPSDht9_jTsLi509qCg', '2023-09-02 15:27:42.024607'),
('mlzxrygb620dihy2mrk3tc8u1p896s5i', 'eyJ0aWQiOjksImNpZCI6Mn0:1qHeZH:1pPaXYK1-Up_4AjlNxhzRTQR5aaCz6vz-p4xE7Bxxag', '2023-07-07 07:03:47.654389'),
('mmpvv3saamrrrg82g847n93nwu2t6v4a', 'eyJ0aWQiOjEsImNpZCI6MX0:1qKQ4a:otP0sOOZ31p8zLBUDU0i7zU1kqlXWPojX1tUTuCcPGM', '2023-07-14 22:11:32.378365'),
('mpyykej31q8jlw411mup80yylvp23ihf', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPiI3:FaLOuEbGmZqLRKhm1KOkGd6nmxKXPivK3a-buzpa2w4', '2023-07-29 12:39:19.677069'),
('mqquhmywnfrnynojculi0cg12qam2k8e', 'eyJ0aWQiOjIyLCJjaWQiOjN9:1qbwDq:VNj5VVsyIGGF2yzagQaZ9PY-RoVScKpgEDjzVFCUpac', '2023-09-01 05:57:30.947865'),
('msh0alpke893rn05oju51nawjddlvzbc', 'eyJ0aWQiOjEsImNpZCI6MX0:1qbl9Q:Jbvl1vkcLz03VEEyjKrfRYWaTC_wyi54VOlrzhJmtAU', '2023-08-31 18:08:12.452740'),
('mt7qmdwc0r3gdp2v4qw3166kxhdwd03b', 'eyJ0aWQiOjEsImNpZCI6MX0:1qJNGT:rKlQGVd5zXujccsw-CiAjVGKzXuSwAKiGh3XzZO-8G0', '2023-07-12 00:59:29.707140'),
('mt8a4e8kkpfxobmgh3vfsvi8uvr9dsfe', 'eyJ0aWQiOjEsImNpZCI6MX0:1qZwuP:qej9SLG0LcZbXfvS81be-iTJjGgDmPSfeIDcKRrFGAc', '2023-08-26 18:17:13.365571'),
('muwfbr4hk8qvpcxdmvcr2x3g74r369uh', 'eyJ0aWQiOjEsImNpZCI6MX0:1qcWVU:6rt18khb-M6P3htzcFTBQp657fCzfwt2cwMFuUnhWA8', '2023-09-02 20:42:08.746266'),
('mw7bxc2viugvgnmi1x35uh9mh06df8d6', 'eyJjaWQiOjEsInVpZCI6MjV9:1qRD2a:XSXicLAgC_WYEOwNfYRQPMFWM6L2WxRTvjpN5MLgoSs', '2023-08-02 15:41:32.899721'),
('mx08xpl10fq7maug9n7w6qnvy3cxcgam', 'eyJ0aWQiOjksImNpZCI6Mn0:1qLOmm:LQbU89aaHQ-CTh5WBXLYPgrfjAI1VcIgreMRQwodcnI', '2023-07-17 15:01:12.002658'),
('mxr3dcot401brf09fmhvr1bzqu79oe3z', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPkGm:-YSG2Dxf28tLy0G4gs2jpNK9qDPXFuun2VAH5Y8CXMc', '2023-07-29 14:46:08.494598'),
('my9ii2e0ukfa0vzrx8w15ki6myo71yp5', 'eyJ0aWQiOjEsImNpZCI6MX0:1qcUV5:NqVZRjscGbCxUf2ppBlPRP_FBACLItNDYijBUb3zO1Q', '2023-09-02 18:33:35.430137'),
('n0y0rcdcvwncrihfcq70a4aoz0er2e8n', 'eyJjaWQiOjEsInVpZCI6MSwidGlkIjoyMH0:1qY1hu:UqVBu8r2PiHJS-XZJkWqMqKhXgX_tMxIBcDIuFG1RtQ', '2023-08-21 11:00:22.264501'),
('n1qmmgm89g7fvzo5dq3ixy12hvmp3aya', 'eyJ0aWQiOjEsImNpZCI6MX0:1qbubm:BXadN4dquZ9YA-fQNt3HHQgb5dCvBmM6PzhgOIHNOQg', '2023-09-01 04:14:06.971949'),
('n2ipkifi1gqdbtvowcxnx7tbyitva0cw', 'eyJ0aWQiOjEsImNpZCI6MX0:1qIfDi:rCDEFV4J71f9Co_VQhVNR9BsMpRbwS1s07Z73K4FiHE', '2023-07-10 01:57:42.557228'),
('n2vpscr1w5rhs794duxwg26g0stmuuwd', 'eyJ0aWQiOjEsImNpZCI6MX0:1qcZxA:7_PuMx_u-Bn4TXHTHshQhEfZNV_WTvxrPkh6Lzkyf5Y', '2023-09-03 00:22:56.106369'),
('n2x795ikugqbadvbz8tj1qr2uc8a3w6x', 'eyJ0aWQiOjEsImNpZCI6MX0:1qL2Jz:dDwo8kJC5pMbaQ638lCieSVtcu8_Z4DccTOI_-Exkps', '2023-07-16 15:01:59.758114'),
('n32luqkyl5f7dmbhus87ogg054frcnrj', 'eyJ0aWQiOjEsImNpZCI6MX0:1qNAJT:e499sck9GSBk70qpJD6RAxiaDgnHoo-zhtPiW7r_hrU', '2023-07-22 11:58:15.631502'),
('n3ohgd2vtb0wcj5h2he2p0or5w6oe89n', 'eyJ0aWQiOjEsImNpZCI6MX0:1qL2Ju:bXwZ-M3NlynRY2TWGv-YNGAZQVdGotreSh143_rw23k', '2023-07-16 15:01:54.665019'),
('n3q62oogiihfwcj9pdmi9lecoi8vemt2', '.eJxFjssKAjEMRf_lrovQER_tyj-RUONYse3QSUdE_HdTUbybwLknJE-EeIK3Bq3PvUGRCX5Yu-2wMwgkPJb6-BiZEsODUm1yIWhbslAQZe4bhZwo3v6as9eWD2OHq1CSChPN871UvQar-a0cF67xHFm51MYG0h_avN57cjJM:1q9KYk:KSk7pqMnR22I_L-3ZmOti_Z4rplC_YYJtj8LhuKWg9g', '2023-06-14 08:04:50.611646'),
('n41wlvz0vepoqx1ry3bopv9pre3609rz', 'eyJjaWQiOjIsInVpZCI6OSwidGlkIjo5fQ:1qBXTW:UrQ359Eukqzt5KqbVVUbYpnRHbtOtJkEKurE70az7a0', '2023-06-20 10:16:34.673516'),
('n46hjnrs4xzy4sum5ja8lkztugixjvab', 'eyJ0aWQiOjEsImNpZCI6MX0:1qOZCX:Vx0AXmGC6m13w5OQgUDhZdftVsWg0znG6zkUSTKJaKw', '2023-07-26 08:44:53.285272'),
('n4b0yvryhngm0bv2l1ldm2h5xtada2e1', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPYQB:4xDcr_J94QbOjowVrzRQxNR-FpxOBOCxJQNzz3exk78', '2023-07-29 02:07:03.003738'),
('n63ha0i3l8yg46v9lz8f7m0m9wc5ymrd', 'eyJ0aWQiOjEsImNpZCI6MX0:1qZnoK:310kKwY9T6JU9jBshLHu6jyh08AYKM5g-4_ynZg0Jtg', '2023-08-26 08:34:20.171934'),
('n91adoh3bsnraa36axl8ue180hki1p3a', 'eyJjaWQiOjEsInVpZCI6MSwidGlkIjoxOX0:1qWrZ7:cnCsgeFZ4PhHl99QeQZOQ0F0zrBtbkCdYg_pPxL2Zb0', '2023-08-18 05:58:29.078638'),
('n9xxp5zcndh1oecgtur2hok19w78f2yv', 'eyJ0aWQiOjEsImNpZCI6MX0:1qa9z8:oQaXiq8rrVnYllkY5MOybPg0x0tsODRhTMcQLrUtPYs', '2023-08-27 08:14:58.459825'),
('ndx0efasfb2tsdwvbd3499ucf8cagnpv', 'eyJ0aWQiOjEsImNpZCI6MX0:1qaXd6:hSyK43D8ocOhb86zZWT7CxEZyW6gIqp0mfp5jyxJ4cg', '2023-08-28 09:29:48.451931'),
('nf6hs38itnectk26758i8tbue1a5tq8j', 'eyJ0aWQiOjksImNpZCI6Mn0:1qOjdJ:XulhqvGJ2sVnG1beXDdBSFfaru6OvNO-LtFKjbhz-kM', '2023-07-26 19:53:13.450313'),
('nfuk5atvs6y1an813dwxjz3nbf1gmuxd', 'eyJ0aWQiOjEsInVpZCI6MSwiY2lkIjoxfQ:1qHjvg:9OHjvDtAIXynGC3MT31-LGgzMxRwrcZS4t-v7O3rrso', '2023-07-07 12:47:16.266510'),
('ngeh0nsrr7hp2mhd3tl88orlm4lp6hd7', 'eyJ0aWQiOjksImNpZCI6Mn0:1qMGQD:zE9YB1titzPe432H3R2DBob2rFM5jbhmeT-ZgizPAYo', '2023-07-20 00:17:29.247316'),
('ngfty9ah8cuglvjymt9icy4gtpgl7le4', 'eyJ0aWQiOjEsImNpZCI6MX0:1qa8go:D_gq5tak4A4d0MOhyWToIfQMlcDBDmbvlkst4zg3eKE', '2023-08-27 06:51:58.999457'),
('ngrrbq43gf1loamt2nkb95w99njzq9r7', 'eyJ0aWQiOjEsImNpZCI6MSwidWlkIjoxfQ:1qMl9e:Qi7JupeoRplhilJXlvf7A2R7o0WHUOWZOUBLOs_G4YE', '2023-07-21 09:06:26.460412'),
('ngsp8kpzef1b5q1kj9kh8nxeuorkfloz', 'eyJ0aWQiOjEsImNpZCI6MX0:1qKJNf:TI3HZzhv69uZ6rYZIEOuewWaf21susJW1G-piV9nnZ8', '2023-07-14 15:02:47.105269'),
('nhdf3h2j39qzz3zzye6wgg6sk62tgcrg', 'eyJ0aWQiOjEsImNpZCI6MX0:1qbfq5:GrXQ88KwuVlRlVWwXqOKhTRDNcPpFo8ff43Uulhrh2Y', '2023-08-31 12:27:53.767845'),
('ni234jc2dy5q9xgehy1s4wvbur4t2l9a', 'eyJ0aWQiOjEsImNpZCI6MX0:1qa3rH:JCrQAORkdCSGF0vr0Q7fIL1A_cPwWKNZhm5DHclS85s', '2023-08-27 01:42:27.706710'),
('nizv2g0luxirecshh7le4mgtux2558n0', 'eyJ0aWQiOjksImNpZCI6Mn0:1qHhy9:v8LNiX-XtFHA--2AoGOQw2CQg0Zo03EZlNq5KYJborI', '2023-07-07 10:41:41.136924'),
('nj0qaplv33mefxab8zqvvz8luzpuqfzg', 'eyJ0aWQiOjEsImNpZCI6MX0:1qSDpR:tK-etgTcEJURG6uARF4CkdVcv57todp-o2bCIt_zmUI', '2023-08-05 10:44:09.816351'),
('nj4t1ggtmetopjkktkgcg32gyo7j7ujt', 'eyJ0aWQiOjksImNpZCI6Mn0:1qHNug:hAx_FdPst_ikvh6l6Oci_9r9601siSlZPY8c7_Nsd64', '2023-07-06 13:16:46.309609'),
('njpk827i9plkjokis3skn6opsh75awws', 'eyJ0aWQiOjEsImNpZCI6MX0:1qZq5g:9xvbE-kbOWgsQ5hdaqpyB2xIkHPSFu-yeNdzJKkTFGk', '2023-08-26 11:00:24.348225'),
('nks9ms71665x5o21ecmhot890twapddd', 'eyJ0aWQiOjgsImNpZCI6NH0:1qKYKa:u3KtmvHXIh9obIxmO8EI8QwfNg-9fixUqrLpPRT-UXs', '2023-07-15 07:00:36.541590'),
('nli3loa7xr2t88yxfug6zkno67tubxst', 'eyJ0aWQiOjksImNpZCI6Mn0:1qP7q6:LWYgwobLPcWMYsCktP3s0jCbQb0oRgR2f-Mfh5WBXqs', '2023-07-27 21:44:02.171601'),
('nljuz9iepsmj0iogqd4c0e4r23oxwfnk', 'eyJjaWQiOjEsInVpZCI6MSwidGlkIjoxfQ:1qQnly:EU3IN0RI5vN1hcRe0m2B3B1g4W23ol7KgMWZ2WA0Or0', '2023-08-01 12:42:42.826102'),
('nlo8di2yxb6q0nrkcsuee1msm7sbcenq', 'eyJ0aWQiOjEsImNpZCI6MX0:1qaHRq:k6VD6gnU7UxPNS8bzVuHDguCdufH4Gznk8V3OOAuvT4', '2023-08-27 16:13:06.645755'),
('nlrxg4jpq4kn1osg4912sq70plzfdrfx', 'eyJ0aWQiOjgsImNpZCI6NH0:1qQggN:T7-bUTkMdMqC1Kg57jHLyNWuxQyUozy1psqGNArbxS0', '2023-08-01 05:08:27.347777'),
('nm2v597laccd7fudxx7knp93cumg15qk', 'eyJ0aWQiOjEsImNpZCI6MX0:1qZwG9:naw_7BGYUat7qYjeFKWGSjfznw7xV558cghBV7k8YTI', '2023-08-26 17:35:37.488669'),
('noe5q8yj7wej765z48qfhl6jy0s5eza9', 'eyJ0aWQiOjEsImNpZCI6MX0:1qbH8K:SvkN34EjC5U146bH3XhdtJunDlVT0oaf5UF-OQeaJLY', '2023-08-30 10:05:04.898559'),
('npjdotbi78ipy506m0ww376zlkdlp9qd', 'eyJ0aWQiOjEsImNpZCI6MX0:1qRaJo:N4Wh4gJ4Hxp8wS2Oiw-Es2FEuv5oDu8I-Iy2vrSSfJE', '2023-08-03 16:32:52.288112'),
('nraec9bfwlcd7d1idy9uv78ay3aao6jy', 'eyJ0aWQiOjIyLCJjaWQiOjN9:1qcRbB:Wx9YZ3qeclvCeuuz5T05ySCQNOjkdLxZYCPPWW5dL7A', '2023-09-02 15:27:41.917785'),
('nskiyrzdms1nl1bvhqdwxwjab673ca3g', 'eyJ0aWQiOjEsImNpZCI6MX0:1qaW3K:OkA7b64T6t-qsMcwRctBZsUBb9wZrzuyz_-eHycVSwU', '2023-08-28 07:48:46.542736'),
('nv7ytkgzx3wbep5dwddek6kq7m3vzfen', 'eyJ0aWQiOjEsImNpZCI6MX0:1qaz8o:kMSJmxdMc5g5WYX7djhnFRwzrHQzbuTsXy5gA3n8BH4', '2023-08-29 14:52:22.517941'),
('nwmbhq7wb632mj5o0clxd68utk1cdrok', 'eyJ0aWQiOjEsImNpZCI6MX0:1qbHmP:9wkt8WdfpmZ1Acd6WhKct4FKXsM2lZuGL8bRi_16rbk', '2023-08-30 10:46:29.926572'),
('nx55vdwx6jfrw60rj06dzr77otwgjva1', 'eyJ0aWQiOjEsImNpZCI6MX0:1qICpP:ZUiW3fylx-a4gCEs5wMGXPf8j1kjPPfUrpYjbiwMIio', '2023-07-08 19:38:43.548301'),
('nyx3wi0m5gltj4afqsqi9dc4eug13sk2', 'eyJjaWQiOjEsInVpZCI6MzIsInRpZCI6MX0:1qaZvT:_LLIB5Vz54LdlXK9wdklpw4X4kZdmOgXiR8NZ7X7Z7I', '2023-08-28 11:56:55.149162'),
('nzt2myj8gth9c604vfv8fizollwhjpw6', 'eyJ0aWQiOjEsImNpZCI6MX0:1qQMVH:oxYAKu-H9fqfBCEV7wRwILoWl2cfLF39Xl1ZSY1W3U8', '2023-07-31 07:35:39.198545'),
('o3s64hx2jivzwu88vl4iiwtqdqlwli6u', 'eyJ0aWQiOjksImNpZCI6Mn0:1qHOXJ:NZMqEWRG2PmFubLLH5brRV0e5QYGZNx0gqopBFf361Q', '2023-07-06 13:56:41.827819'),
('o4mkr1w6szmxz33njr7bjg5vua4qhtt5', 'eyJ0aWQiOjEsImNpZCI6MX0:1qaz9v:ZVfWFOBCFpnzNmXycTvAHcHuHdbf79j5MoVpx35Tzdk', '2023-08-29 14:53:31.491226'),
('o4zqc3ekf1qugwabyrov76rkdr4ekxk6', 'eyJ0aWQiOjEsImNpZCI6MX0:1qaW7e:oiCWpqvHaMIKSZ8cY1A9XAPe6F3Bg62JDVz89P04Ynk', '2023-08-28 07:53:14.918790'),
('o6z6z362tgw8owh8x13d8vuckzqmj40n', 'eyJ0aWQiOjEsImNpZCI6MX0:1qZn9V:nnyfGSNPkJDhULa4LSd8OZ_9qb1stcCVYP-_Q9OYCsE', '2023-08-26 07:52:09.465801'),
('ob2yqvv2qxnxa6e4l2iiol8l1djctjyg', 'eyJjaWQiOjEsInVpZCI6MX0:1qbzxt:PNQVFPMDUi5-i4n-IDPKM5Xjkdp2__DVs9f5Ul1QH_k', '2023-09-01 09:57:17.774795'),
('ob7xwn3ba2hd9j50ulplxouhi17qth1n', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPJzN:STboxnoPwbuNU4rZTfu3urMNRDKcOvSUGxBvkyqcNxk', '2023-07-28 10:42:25.893521'),
('obdfldqvdnpx0c34n32f4eh3nu5myoxv', 'eyJ0aWQiOjEsImNpZCI6MX0:1qLY2d:oG8c13a0IlB3Q8wZNtpclInauBeFy_TSY-wFs_8hcns', '2023-07-18 00:54:11.822651'),
('obh89fs6143wrkx4wocsj5iasbcx48lh', 'eyJ0aWQiOjEsImNpZCI6MX0:1qZxiN:dr9aJioPi3k7TRmRBWTHXzZL3eycAkwaEOwFc280GlA', '2023-08-26 19:08:51.879740'),
('obw56rxp8h6iwvccztges4ttb8zmanyw', 'eyJ0aWQiOjEsImNpZCI6MX0:1qLavV:To_neefRq3TvK-lGM4zo5ASiAu6Y_wOFZ5MO6ElPWYo', '2023-07-18 03:59:01.336049'),
('ofsqtpijw8gkxmvfqr2pjbrv8px0924h', 'eyJ0aWQiOjEsImNpZCI6MX0:1qQPaz:RLQxu4YVa7GTf8kClXBI-m3U-Fhw3AaTtSqyx4JxouI', '2023-07-31 10:53:45.436996'),
('ogeic8frqtk6ez0hs4idgogodfiftdo6', 'eyJ0aWQiOjEsImNpZCI6MX0:1qc4KB:aA1WGqwJsfnt9DlvoyJHdmz6bZ-LLgWDI8ccLpAQx4g', '2023-09-01 14:36:35.079155'),
('ogwzvb6ywjqlyya0sotk828a8qpht1v0', 'eyJ0aWQiOjEsImNpZCI6MSwidWlkIjoxfQ:1qW9DN:Ocjfe9kWGBV0Ww09qDC6NXATnwq-7LOT3O1gf4PhePg', '2023-08-16 06:37:05.943354'),
('oizvinfsmf44zeomw6n3waupp9ez3lop', 'eyJ0aWQiOjEsImNpZCI6MX0:1qJZ8B:gu0drEGD_A1G0DqesnB9uOTotz3HL92uQl3uw_wuwz0', '2023-07-12 13:39:43.487798'),
('ojvspt8wbt8wctnnecu5japou5hk7mrl', 'eyJ0aWQiOjIyLCJjaWQiOjN9:1qbfkm:xFc5ZAsLZU11Mrg7UHlHgwvdqijaDvXAs7HxyP41z4A', '2023-08-31 12:22:24.289238'),
('okfpbikqson5jappxvib6rnbpnn1z293', 'eyJ0aWQiOjEsImNpZCI6MX0:1qaZLR:FbraR-iEpFlW7FOrt94g9vXThhSalJl-0TrKrXhN5_8', '2023-08-28 11:19:41.662829'),
('ol2860eotuzimsm4ikaieav6553t9r0c', 'eyJ0aWQiOjksImNpZCI6Mn0:1qXCeo:4z_-jA7xjS578sN2v6nMIRgL1NmOF3E6WjxdSdz0QQ0', '2023-08-19 04:29:46.886783'),
('olos2fkpb1ihpsbefhrka37tgziyekn4', 'eyJjaWQiOjEsInVpZCI6MSwidGlkIjoxfQ:1qDfIB:holidssnywIOo1IpSoDmT33JaRjBzzHLUxPDjyJkTmg', '2023-06-26 07:01:39.316236'),
('olwq0sskw96uv9mivv7zrr617tzvr8v5', 'eyJjaWQiOiIxIiwidWlkIjoiMjQiLCJ0aWQiOiIxNSJ9:1qTQGJ:XQUqfIf42S-eNtWgEqXL79IsHvY3fEIUUpnX1bQSCs8', '2023-08-08 18:12:51.572761'),
('onkbl7ybiaf4ngkn39zyfv3o14zw05vm', 'eyJ0aWQiOjEsImNpZCI6MX0:1qR0Kb:2q3lc8GzZppwRpLqGWeX7EYSI2EGJSAcMIk7Ug7FCGM', '2023-08-02 02:07:17.782095'),
('onpm9aggqqo2skwqqebsh2vmjxmbd580', 'eyJjaWQiOjEsInVpZCI6MSwidGlkIjoxfQ:1qZrt2:KMYdAihqKF2UxmcX3CGua0BkT0H_g-UO5iy77WeoJYI', '2023-08-26 12:55:28.242544'),
('opoljgot035ictb4da3da8voy4ppipck', 'eyJ0aWQiOjEsImNpZCI6MX0:1qIVcm:OpAaFUpOcHQJNfheqrrDIA37T2_M38nJe2fGwCkZk3U', '2023-07-09 15:42:56.602398'),
('opu2lckk0ce4kmfl9t7p76wdhqk7rc0a', '.eJyrVsovKVCysjCxtDAy1lFKTixJTc8vqlSyMtRRykvMTVWyUooszUssVvBWAsrm55UkJpcAxSzNDEwNDIyBACicmpuYmQMUTMupzE0tyCtyyMgvAQnpJefnAqULEouLy_OLUmAqHEwNjUyUagHPNyWx:1qParE:pq4t-sD3QxuvdFMTve3PUD6LFIo5b5u605eeKc2EOJM', '2023-07-29 04:43:08.836993'),
('opvqlee7tjxevldb7li40xwwthtzc0te', 'eyJ0aWQiOjEsImNpZCI6MX0:1qR08r:oNQFma_e6Ddvmsoq2P0PN6LMGNrr4dzn4rNZ63-EcnA', '2023-08-02 01:55:09.751375'),
('or7v1li603s2j727qz99cty1kpggafaz', 'eyJ0aWQiOjksImNpZCI6Mn0:1qPErY:P3m9KZSsavZl2Jt4R-7jGy3jtY3uVYKYg-bL9UFEmcg', '2023-07-28 05:14:00.525694'),
('ova0gsho9ckmtnawfeqf7uqacu666wkg', 'eyJ0aWQiOjEsImNpZCI6MX0:1qaXti:wY_OECQZnUho1mb3n8L4Kau3-INLQzMeD20kSAOpcjI', '2023-08-28 09:46:58.468008'),
('ozg8xyfiah0fjqyc5ojhf23ufjex9i9z', 'eyJ0aWQiOjksImNpZCI6Mn0:1qHfEW:B6NSccY9lyU3_sAsryCb4ODu6eFknQHN2wPGE2RyhNk', '2023-07-07 07:46:24.011682'),
('p1qcvvtsv7o07pe0ztjd8q2kloaqqikx', 'eyJjaWQiOjIsInVpZCI6OSwidGlkIjo5fQ:1qDhw1:khnNe6WTVZhWx5tr33ABuCax8cyKyphtijb6YtlywbY', '2023-06-26 09:50:57.182439'),
('p226hym18xcabfojfdbl0qlddq1y231h', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPKsV:aDeFDYemefzhRnTHWlHH2zeUkPmn_vOOWQo0PXkCpR8', '2023-07-28 11:39:23.708053'),
('p2dzgj7kymegse40hzm96bo33h1g5r1h', 'eyJ0aWQiOjEsImNpZCI6MX0:1qcM8B:L2FgvzPmlwVh4gdXdOtyMDdVcvnvjfByIBBlK25KicQ', '2023-09-02 09:37:23.312738'),
('p2tvr8zbs7b9oa3lq3k68bafg6bxo0mu', 'eyJ0aWQiOjEsImNpZCI6MX0:1qQSzG:Gaf7-YHV6oqNeWnh8wPc_K4GNYM-mGiqjJIHRfAyu-A', '2023-07-31 14:31:02.625799'),
('p2xg1invky8prvyj2doknowjskffja9a', 'eyJ0aWQiOjEsImNpZCI6MX0:1qNERx:4AWict06UCznTBofoe5C_Sesy1NiGItoEY3Sxgr82YI', '2023-07-22 16:23:17.599569'),
('p3efjd86usvh4fx3mn2pgkgr9z4j2nl6', 'eyJ0aWQiOjEsImNpZCI6MX0:1qaXcS:q-u-iXjvU2wwR3H-lfY9_pH0FLWzhlvGtcKDAjFmoFw', '2023-08-28 09:29:08.194156'),
('p3lcyiu4isez0pwevihuse8ikzy79njc', 'eyJ0aWQiOjEsImNpZCI6MX0:1qZuDw:A1liuaZbViOxkrlkPm93TaYZOGx6Ch3E8AGPB2GKKbw', '2023-08-26 15:25:12.760711'),
('p5ig7aiuhkq78kdv7qd1xtejnao5dcju', 'eyJ0aWQiOjEsImNpZCI6MX0:1qZtQ5:09oh7eWV9SlsGdFUiA-bTGyy5mRb8AuIoQdCwTF7eaA', '2023-08-26 14:33:41.293152'),
('p6mnj3h9behu3mz1xmyl3vtvadnwxvt3', 'eyJjaWQiOjEsInVpZCI6MSwidGlkIjoxfQ:1qI6Em:17WLtotFTkURGaam7A86xk6NtQGNsczQ1I3IZ6V8QnE', '2023-07-08 12:36:28.168794'),
('p6rcn3164wbn763rwrrtzifpmsgtmef4', 'eyJ0aWQiOjEsImNpZCI6MX0:1qP20G:YK04boXJqes_5oVG2iKTclwP9kffwnQGh_SZesOP7wc', '2023-07-27 15:30:08.054460'),
('p79ylperhit4kfgi442tuh34xrpl1wg2', 'eyJ0aWQiOjEsImNpZCI6MX0:1qbgGJ:siE6Ap9FurvsDCr8rLIMaFGWakc1u76FaUivaI7w4lQ', '2023-08-31 12:54:59.816008'),
('p7dgzjpn11kwrwdk76vjeby1q0qphkvl', 'eyJ0aWQiOjEsImNpZCI6MX0:1qa3WS:zMYY6-WwWxJKRgTjhNs6HVzOQ-GiDtDMp_CqsckILZY', '2023-08-27 01:20:56.793805'),
('p7qb2a2aepe32iwqroqofkvgt0rdohbr', 'eyJ0aWQiOjksImNpZCI6Mn0:1qMUE7:Mn4C7zdcyEIpwDtNVFID2s0QSQntQtxkuKtz3plWoJM', '2023-07-20 15:01:55.584175'),
('p8gtp8tm5x9kxqyxobolqb0sapapyk1r', 'eyJjaWQiOjIsInVpZCI6OSwidGlkIjo5fQ:1qE76s:x8OcTyyrdMnF7gh0mZ84g_peG_NkHoA_6baMsOFcJNc', '2023-06-27 12:43:50.990061'),
('p8k173b017kxzgoo2bqpxgb45unxe89k', 'eyJ0aWQiOjEsImNpZCI6MX0:1qHos8:vZ3nnpgfcDaGbNnYnCtrq9TfBuZGLhkIBwTPvWh6PvQ', '2023-07-07 18:03:56.307340'),
('p92xpg95k89p8iq8foq1osh4zghh3bcq', 'eyJ0aWQiOjEsImNpZCI6MX0:1qZwyH:SWS2YsiqZ_TW32kb6Tj2lFwr5DSPUiQcN-7B_CGIsbQ', '2023-08-26 18:21:13.027279'),
('p93h97rfy4tyqr5u4pv3px3n1cybrr3l', '.eJxFjcEKgzAQRP9lzlKMVYo5-StLDNbSZCVuEBH_3a0EOpeB9wbmgJtHWFMhl5bSLAvss21edVfBkfiJ036bSMHDgkLK8iao5SjkRFlfotAHmr__WW8-OQ7TDz4cBx0stK4bJ32D0eC8AET_Kho:1qInOf:ARs4AM3SyXpwrDIyep4yIDj8wEX-LcYPYdYquzVh24k', '2023-07-10 10:41:33.386768'),
('paptgof418e40j8uywx9x3ke98umskun', 'eyJ0aWQiOjEsImNpZCI6MX0:1qauWf:vnTi84IXDvvx7BFtrZYz1YbeKSwx5SGliBGBmC76pko', '2023-08-29 09:56:41.006666'),
('pc9ngc507gldbtw32n3nhgd5otze1tq7', 'eyJjaWQiOjEsInVpZCI6MSwidGlkIjoxfQ:1qKZiW:aIuUUKmuf8niKOWMmR7hhv4hVr3SDOaisqhkid-fhDI', '2023-07-15 08:29:24.381415'),
('pck56gpwjk31vuiz4j8hcc31lkqjdjza', 'eyJ0aWQiOjgsImNpZCI6NH0:1qQf6n:r0aRXDuze4sntJNjVZyMa09uIC6Wb-U9Ry33_vhab9E', '2023-08-01 03:27:37.009665'),
('pdhmguj1qkn2m21wqk3j51d8jolrqan9', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPL72:aeCoJvpSuqO9y1uIF6ElzHbUvBMzc8TwVewDQqS5dXY', '2023-07-28 11:54:24.518905'),
('pe6besvv0ekrul6luvg66z6vhxesh50y', 'eyJ0aWQiOjEsImNpZCI6MX0:1qQSyv:hVjAeXuu0bxxSK2ThUt6JaVQhA3bm2dOixINMt2sKtI', '2023-07-31 14:30:41.838722'),
('pf3kh8nxsn7vbph8c5t49v9lrazka3bn', 'eyJ0aWQiOjksImNpZCI6Mn0:1qMiIH:fOKZXeX2jQxq3VIo_E_3LypxsdxfjWvOJ_AOhsl298c', '2023-07-21 06:03:09.074467'),
('pfcdgw0p8pw8rnktj3kfqbr953box47o', 'eyJ0aWQiOjEsImNpZCI6MX0:1qbbGk:1lv2xg8zKDgEmdrcb4ePtIjVxnNlSzxDc97QixN8xD0', '2023-08-31 07:35:06.512304'),
('pforyr6s05q92ax6ura99r730pj3tzh2', 'eyJ0aWQiOjEsImNpZCI6MX0:1qcIjF:HfOn59m5jE80__Cof3iBNEdaQY83w7E_PcKYQz72HJs', '2023-09-02 05:59:25.066878'),
('pgbjo54vtz3be5ojwmej3irv486v18pd', 'eyJ0aWQiOjEsImNpZCI6MX0:1qQBZ6:c4O-KA8dg0jNLTfu8Ashb9nx5HahEhofBZS3G-bOjBs', '2023-07-30 19:54:52.881100'),
('phlk8x2zvbihmc522frotoad1p5wx9c2', 'eyJ0aWQiOjEsImNpZCI6MX0:1qQkee:wjD2ZSkHE5EarkEJ-OfIgy0fjrYb7cMlQXMpB1XBTjA', '2023-08-01 09:22:56.605869'),
('pjcnm4u8rwvlnwwlvwqsklzuntnljksz', 'eyJ0aWQiOjEsImNpZCI6MX0:1qa6mc:Gr8IsFHTLh5wHEGjGYaIw7ZJVhsCeKELhlceHnSbEMA', '2023-08-27 04:49:50.122417'),
('pjqac97o0aqb49qbr0fff8tmxn9zbh8u', 'eyJjaWQiOjEsInVpZCI6MjUsInRpZCI6MX0:1qXHwP:xvXZPekjlOctqHyACVh7XaoL4_wFNlimaEdxh-B-VQU', '2023-08-19 10:08:17.185263'),
('plrp4zdzwuofvid4kd5vdr64c1yd3pd8', 'eyJ0aWQiOjEsImNpZCI6MX0:1qOyZ7:GKK5uhZuU5RM96vTMRlNjGNleCRLS8zIYPbbe8jnioE', '2023-07-27 11:49:53.038942'),
('pme3i7cxv93lhsdpb62a3qq13dabisg5', 'eyJ0aWQiOjEsImNpZCI6MX0:1qIFCF:7n6Cy3Dyrh6gNcJ83VOZo4mj9ZqBRccBcU_w0kxtwlo', '2023-07-08 22:10:27.852830'),
('pnngpwl6g76zzg4by2skqx4pg7kl2i0i', '.eJwVi70OwiAQgF_F3NyYgkArkx1IHOpiJ0eCpBql18A1TWN8d8_1-_kA0gxWq0Ye6wqCpzhi3sCKCiafIlgYzt3FuevO9f2tG4AjnMgHYtXyVyujpWEck3--GZYHfzG_FqJNnMY_3QdMXMy-lBXznSMhD0qbpoXvD73bJq4:1qZo9D:twoIhKUYp03QOs0acXaJGns0NULfvwZ0kgq4uia9D9s', '2023-08-26 08:55:55.247015'),
('po2edvufpiwin1rpbsxebw7wk0r2luyu', 'eyJjaWQiOjEsInVpZCI6MSwidGlkIjoxfQ:1qYNKt:07eKVQ-pFOOprGER4nu86LadzfKtxSy4A-jCL0Z1oas', '2023-08-22 10:06:03.513617'),
('pp46oq6wqpvjb805gautghudfkl5eb3q', 'eyJjaWQiOjIsInVpZCI6MiwidGlkIjoxMX0:1qCfQh:GiN_9JUDrCn3YNV62qsmeQelJuuToQAKbio7sou3g0w', '2023-06-23 12:58:19.250872'),
('pqcxtkray676qidunzmp676kx38uc94n', 'eyJ0aWQiOjEsImNpZCI6MX0:1qd6Ns:BabSHB7JbIdzGlu0dKFTON0J9ZduCNHYRHk3XWVMvTw', '2023-09-04 11:00:40.870455'),
('psuaaco3fr5stfsabjct2jv70rjk6y0j', 'eyJ0aWQiOjEsImNpZCI6MX0:1qaSA0:Lv392JgQ3OQ-I_rr1YOwTTfbaHp46MjFEO5iDXFNIX0', '2023-08-28 03:39:24.553495'),
('pu0qnnt30l3t6ripd4c6jypjkop9k314', 'eyJ0aWQiOjEsImNpZCI6MX0:1qbbGC:Eod0E8O9V9JWiEld6F33qwJATA6Lf8CNpHO1A8WVANE', '2023-08-31 07:34:32.693379'),
('pv181jocjz201x96bjtm0rorhgaqyzfk', 'eyJ0aWQiOjEsInVpZCI6MSwiY2lkIjoxfQ:1qaIun:Gp18qcWTdPqm_Et2LQPFITvuXzFWpABnEFN0CnAhSEQ', '2023-08-27 17:47:05.765633'),
('pwqa1ia3lc2t0h4ehbbp5uvzzt6vhgr7', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPk2o:MWoFaB53pR08hTaKtUQg3Ds5ctLgy56F27sFc15MYic', '2023-07-29 14:31:42.205962'),
('pxvtybwcr864jsbyvg9bj917b1rnzjyt', 'eyJ0aWQiOjEsImNpZCI6MX0:1qJvod:Tup6xZYdHC4Q-Hkdsc3LyKQ_CY2fHYip_iYW0bne8eQ', '2023-07-13 13:53:03.317744'),
('py0rkohmvhbi6h5dkr3e283jk6crv33u', 'eyJ0aWQiOjEsImNpZCI6MX0:1qaEho:kAM6AZZywrprTfqTE2QqcUwDSAiRfqkJkA1Qz3vekSk', '2023-08-27 13:17:24.599169'),
('pzepmschdfvd8ldp6ajpmlvy9zvof6of', 'eyJ0aWQiOjEsImNpZCI6MSwidWlkIjoyNX0:1qbHc7:pJ7icrKewBysJPyFN07V5UABTR8UFeD597Hx5Q26vDs', '2023-08-30 10:35:51.192896'),
('pzj8tfc9y3ylk4gr8o8f4g1uw6m4f2bk', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPk71:MhQRQrDlj4IxlGsXJ_fip-55Rmp01ClOxhDqArHsrvI', '2023-07-29 14:36:03.900899'),
('pzpzshwblrihhaugxjz27xdpk22vhjqe', 'eyJjaWQiOjEsInVpZCI6IjEiLCJ0aWQiOjE1fQ:1qS0aL:Qa_rI8G_Qpk4lEOmmyDsur4pl5u1X3uO6CIqtEKAjiA', '2023-08-04 20:35:41.241758'),
('q00xtmiraz0mhq1shtr29355ozb97sie', 'eyJ0aWQiOjgsImNpZCI6NH0:1qQgTb:mS5KWZqH5jig6BPdTlce7N6OSo02_Nd2Qf_YCbKKoqw', '2023-08-01 04:55:15.528943'),
('q0bhs8rf6b6b0ef7gznup0z5ql6zil00', 'eyJ0aWQiOjksImNpZCI6Mn0:1qHiHb:y0QbuY96RlwySrgjvDjTpLrN4PJRoP4S0lsruRFD-Gk', '2023-07-07 11:01:47.146167'),
('q0ogx5c93ap8aae5wyikun7mwcgia7xd', 'eyJjaWQiOjIsInVpZCI6MTEsInRpZCI6MTN9:1qHLmI:SB0V-7Qzi8STKqj8cpwJGQk4Yvkg8GsXSCnnS-C4H8k', '2023-07-06 10:59:58.171903'),
('q1qqsi26fnix21qq2w78o8tgruawb0ye', 'eyJ0aWQiOjEsImNpZCI6MX0:1qQTxz:IIlq880MEA__kIgKKJltWpCU3aqHVQKhQf-GmvhzoVs', '2023-07-31 15:33:47.416045'),
('q6bj9oppxjjzo6443bybqoh34uhjxpzc', 'eyJjaWQiOjEsInVpZCI6MX0:1qSFvv:ximg4P4YUVUR3vNqgESQKk4dkEGZjiz2-cZomvEwfOs', '2023-08-05 12:58:59.221818'),
('q6xpbszhhgp9nstycb8czmlhcnfvkuxd', 'eyJjaWQiOjEsInVpZCI6MjUsInRpZCI6MX0:1qSE0j:OIJ16fS1dOoFog8v3RtxZsS20rG6SvQXBHYY7gpHalc', '2023-08-05 10:55:49.494362'),
('q9whgjh5h9ym0asw0bjnzb9n6ircytkt', 'eyJ0aWQiOjksImNpZCI6Mn0:1qLsby:nS5w9c7KOh7j4cldVSa2UV80MWaiueYXg3dMj20ZK3s', '2023-07-18 22:52:02.775527'),
('qa6i3m3wzj7q5ivj6pgs0eg78zkeibm8', 'eyJ0aWQiOjksImNpZCI6Mn0:1qHf5h:e7uBtU4i2rr6uQrQPmMYINwU9pcg6eiAtCmmyTyf7fI', '2023-07-07 07:37:17.273342'),
('qaqmjufccqqfv34qvbb689v92shqxduw', 'eyJ0aWQiOjksImNpZCI6Mn0:1qYpjn:aaoW-ElX5uUvT1wmAFlwhoZRkOECjINvpWwI2_kTCcU', '2023-08-23 16:25:39.107067'),
('qbk2g0610thgoior6i88ldwoups9s6yn', 'eyJ0aWQiOjEsImNpZCI6MX0:1qIUyb:MpAwXh6MojITjMnFBjlxPwBjiAs04Ywfi1zGc2Eqhl4', '2023-07-09 15:01:25.648364'),
('qcy0y7xpn6fzm8cqvktok21018bhhnfj', 'eyJ0aWQiOjksImNpZCI6Mn0:1qMUE6:Pm5VLL0mmxTYI_YqqJNDuKT4QbeYyBsuWHk4II9mAeM', '2023-07-20 15:01:54.957314'),
('qfo89qm4upfy5eorc1h41lpixaxxgha6', 'eyJ0aWQiOjgsImNpZCI6NH0:1qQaaw:6yYU9P2dUlzKhqQBTi8HXtcSxXTKHZqXPxgCs6ctSbw', '2023-07-31 22:38:26.520176'),
('qhyrvnwkj99kipzcdwbx8bfl4n0cbmwg', 'eyJ0aWQiOjgsImNpZCI6NH0:1qQS0G:aM4i9ChrHNSECMNLGrs-bvoWb1HG6QhhLftzkwrvxN8', '2023-07-31 13:28:00.216977'),
('qjavf50blroivep75veqhr6l72mx1kxs', 'eyJ0aWQiOjEsImNpZCI6MX0:1qKQ61:4LlKWoHSI15ZCuJQb7YuzXg7z7w5v4zEbC2iriQ_d-E', '2023-07-14 22:13:01.995232'),
('qkg8iwym457l84jb8k5sfy4fshj7is8k', 'eyJ0aWQiOjEsImNpZCI6MX0:1qd2jO:dz-U1y3wHTPsd1WGpeoI43BXowCrtrO0dNJYos_gCWk', '2023-09-04 07:06:38.680062'),
('qmbryynz5u4al97209xewme1ox4dewmw', 'eyJ0aWQiOjEsImNpZCI6MX0:1qNsme:gMB-kad1Hl3eE2QSzfMNq_PJyYgnMcq15AZr02TbwNk', '2023-07-24 11:27:20.775981'),
('qng54g36ge52cczqzykbkq1ii0cmyk29', 'eyJ0aWQiOjEsImNpZCI6MX0:1qdIGa:vl9S1krl42VHuCbO9C6UdExl41SCpSKOHffTeRCuIXY', '2023-09-04 23:41:56.845200'),
('qoh310jwrtmova7gshd7724ea9j5zpoq', 'eyJ0aWQiOjEsImNpZCI6MX0:1qKQ62:R01gIjcUgu7edKuG8-fnHKbIP8boYAj7hZOybKueeEo', '2023-07-14 22:13:02.948376'),
('qp6lg4ml40i5m0ggdijfqloe8kjnw59i', 'eyJjaWQiOjEsInVpZCI6MSwidGlkIjoxfQ:1qM54N:OuIHUK9Rn9H1xip6oV23myXQwWLFmCw2vs-mnCpXGTs', '2023-07-19 12:10:11.220618'),
('qpdahhrlogv926gcncpabd708x41yio3', 'eyJ0aWQiOjEsImNpZCI6MX0:1qICpR:UcvmrlI82Squinys00BoTjK6W-rIyDDbmYaPOfkOrIo', '2023-07-08 19:38:45.698853'),
('qpt3kvgs4px8k0g18v5otlmv2u3ltglr', 'eyJ0aWQiOjEsImNpZCI6MX0:1qS0QF:uBFuEqJpEfRoE4a0RswSN0jwsB1aJ_ZKx2se3lmGaSY', '2023-08-04 20:25:15.777706'),
('qq6h9b730kr7d7vltsmpv0ao3t65bjvd', 'eyJ0aWQiOjEsImNpZCI6MX0:1qc2hQ:yTSkXfIxnl9P3eniWzx6s6yAxQ9YSerWihhtm4cQxpo', '2023-09-01 12:52:28.354293'),
('qqkxerl07zhlfxdiqxs6wk4pvh93p6y7', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPziP:5jgjSShP7ok000w-Efer-m4kOx2C6PgIa6nt939M63U', '2023-07-30 07:15:41.466084'),
('qqpt43nphn84r4k4mmpjbj4kbo05ez7s', 'eyJ0aWQiOjEsImNpZCI6MX0:1qJvou:vjpfh1QAAzwHTBrrwakRV0GD5YZnotHnQR8SQmMjec0', '2023-07-13 13:53:20.283760'),
('qqujbz6nc44098m2it0zj5jlq1onimdy', 'eyJ0aWQiOjksImNpZCI6Mn0:1qM0yT:GDhBMHr52ODaBUJ_Yg1E1tl3rGKHi26mBSo_AIOb6LA', '2023-07-19 07:47:49.278004'),
('qslzpnsf5n2qhyqtac6z2hgvbzuh3kqe', 'eyJjaWQiOjEsInVpZCI6MSwidGlkIjoxOX0:1qWZxI:W7yAnPkm9cSu6rUG1z2-w-fTln4_ZSgRFfsKC5P-T2w', '2023-08-17 11:10:16.036205'),
('qtnrmgv54r9jqvrh5n7a6851nmncbvpz', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPK06:KHayngjheT_GhzDWjKw1vx4fyQKCIyrEUuUvMPuTOUg', '2023-07-28 10:43:10.645194'),
('qu9do1agrov4qaa5m2xhbcvzr97i9aic', 'eyJjaWQiOjEsInVpZCI6NH0:1q4bWi:-x8ri_8fYUY50yprbOuMHC3sExazOJ3Y8pR83uKeA9E', '2023-06-01 07:11:12.448462'),
('qw3bo380q0buvpz7wzq2glas0pdza366', 'eyJ0aWQiOjEsImNpZCI6MX0:1qZwQJ:OE5jgaEww_mu_h__tBHa_haUsSM_qYC88zIpxd3asVc', '2023-08-26 17:46:07.001894'),
('r12x65ezang5590nas870lk482t7beew', 'eyJ0aWQiOjEsImNpZCI6MX0:1qQUGZ:DIH_1swUCMeItX-ZXvre6iiygruCmRSF79_0BU4jsKY', '2023-07-31 15:52:59.754380'),
('r1s9fmfus61lrflw9hdfx204hgj50edm', 'eyJ0aWQiOjEsImNpZCI6MX0:1qZqyW:7YTzBaN2sRc6WeQE5HZxQgHadcIgQEnVZ1N8dIsLQyg', '2023-08-26 11:57:04.582676'),
('r3v5ha16vyqo04ncutacp15rlyfm9auq', 'eyJ0aWQiOjEsImNpZCI6MX0:1qJEtJ:exlNKTnvIkFBoJfwYf_XGMniiau9Qqcuj4BIYkCj3_4', '2023-07-11 16:03:01.580497'),
('r4xsxnrsl6kcm7745yuld6oro68x85bj', 'eyJ1aWQiOjI4LCJ0aWQiOjIsImNpZCI6MX0:1qU3bb:JWqi_B2jXJ8uIK2cgqj5VGnwHlUVAenqAPKguOCPjhw', '2023-08-10 12:13:27.149810'),
('r5cp6smlppoct0afmtaym2npfga5lrum', 'eyJ0aWQiOjEsImNpZCI6MX0:1qbiZN:OcmMbqIiBcjSgCx3B18cKgZUpmF6grcZdpBA3-uBMNk', '2023-08-31 15:22:49.795764'),
('r5cwun2bueamt1npf3oaha1hcld3zpl4', 'eyJ0aWQiOjEsImNpZCI6MX0:1qbguy:KT3UmCGmTHXq1Dgyfd0V0aMuxW0te9Mz-IFqLh3HTFI', '2023-08-31 13:37:00.912481'),
('r6rhsrjtx2422xxfxonij1ft89zt71a7', 'eyJ0aWQiOjEsImNpZCI6MX0:1qMZNx:MNkQCI5vXCyo1L--YyZnk4snTrjJWTNSoHjcmO7KZTo', '2023-07-20 20:32:25.434645'),
('r7cb4485ntr8zya7jkbfrr45twvu0o19', 'eyJ0aWQiOjEsImNpZCI6MX0:1qHqvj:5XQ77QNvw6LvWesdqLCMXqcaTKch6hc-eJHRlHvXzXk', '2023-07-07 20:15:47.432403'),
('r7r9kyb8fpl58xh8eg9oi2ru83zq5hmu', 'eyJ0aWQiOjEsImNpZCI6MX0:1qc0C4:k0G4RlMVgT3Fz3Ynl7fZfvFeMQbQBWsL5sYv1zUzmLs', '2023-09-01 10:11:56.865476'),
('r8xvyx9ervm8e6uij26ljy174vbek1a9', 'eyJ0aWQiOjEsImNpZCI6MX0:1qIwY4:FywtzKdt9psdxNtU9vl3pmkaQMEBLl1TVrKfkIC3Mao', '2023-07-10 20:27:52.348452'),
('r99j2r7an02nbgobr1svj6zrqkb2ud3l', 'eyJjaWQiOjEsInVpZCI6IjMzIiwidGlkIjoxOX0:1qZhQG:Jg1BRX2w9kX9AQQkRujtcjX818hZKNvN5GZLUa6rtpE', '2023-08-26 01:45:04.762672'),
('rb4pftehqyp8z29htdv6h4q6s3lgl25h', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPj4N:SRb-3e0Yq9fKRTe7peCg3xNvoA9jcsd7Ov0cPpi0_3U', '2023-07-29 13:29:15.852132'),
('ree9m0ag4t433lb2ycrusdccf0voy3lr', 'eyJ0aWQiOjgsImNpZCI6NH0:1qIcIK:6hJamIwAfHsy1KmjVQlqL6sOQhgxiv-xYJAWK3-rQ1g', '2023-07-09 22:50:16.065282'),
('repl70ha7p90b0cxrgjch2epyvahnae3', 'eyJ0aWQiOjEsImNpZCI6MX0:1qdFGg:tN2NIwj6xqAZCWJ8Lzlpd64rINAXnlgDG_BokIM-G8I', '2023-09-04 20:29:50.135166'),
('rfpq5wbr8f3ohtgglc5s74xfjgdb199a', 'eyJ0aWQiOjEsImNpZCI6MX0:1qZwkK:N3ilxervLLW5Q7Hi7D0mu3Uj9wiN5aY1ftXn13W2qMo', '2023-08-26 18:06:48.837231'),
('rgv8y5d1djl3cp1rhtez3z7vgook5nls', 'eyJ0aWQiOjEsImNpZCI6MX0:1qc2NR:zfUCoNdcWDPYqVky7pZT8fQ2y3bhYwufoTWVXhZ8fbo', '2023-09-01 12:31:49.350118'),
('rgzwk9bcmf8a7hmv9wxbpenqpm2le1g6', 'eyJ0aWQiOjEsImNpZCI6MX0:1qLG9g:CNW0Vf40oUEOQdj_c16iqRmNm00kjeIcYQ_luCHk1Jw', '2023-07-17 05:48:16.484058'),
('rheeqqdevjk2u52jw4ir5pib9vh3xa9t', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPjr5:VVxnn_3rF9YVGH3UiucT1-C09p88EyXcHx_ffLtz5N0', '2023-07-29 14:19:35.657268'),
('rhgjws19pkoikm1x4w3lzr7zssq68dgv', 'eyJjaWQiOjEsInVpZCI6MX0:1qGyHd:6H1rlK_XC5G1nmeALMpeOW9glnpDIj9oB_c7VsHP0os', '2023-07-05 09:54:45.125512'),
('rjzjta4gq5eicdynhlhb76fyqcbxc3a7', 'eyJ0aWQiOjksImNpZCI6Mn0:1qQ1GS:wgdqChXFqAzGEbsVohl7xhSlXYi4y_czXLMI38vDk_8', '2023-07-30 08:54:56.893452'),
('rkb4hnasvtvmqkq6n3w1awhk3x0t0ypq', 'eyJ0aWQiOjEsImNpZCI6MX0:1qQTCX:iAHoyGAhY5nOQWoh9xPJcRfgp2Wymy0DUdi3Hm08adQ', '2023-07-31 14:44:45.301221'),
('rkdzo5coft0hkxi877fniopzj10cv53b', 'eyJjaWQiOjEsInVpZCI6MSwidGlkIjoyfQ:1qMloh:1dF0jqcJtReV6dHTAnBkF5RPBmxWhdeMqZ6tsbDYgqw', '2023-07-21 09:48:51.476201'),
('rlxbft2h9mvtg5wj3j2pizxlyhn65i9y', 'eyJjaWQiOjQsInVpZCI6OCwidGlkIjo4fQ:1qATvi:7V1vecyebbQs5aLE9-j7KzdccIeGdorCQ1FYOtCXm8Q', '2023-06-17 12:17:18.403910'),
('rngpn73p46xs92t5hmdm64g3gg2cc5oz', 'eyJ0aWQiOjEsImNpZCI6MX0:1qa9sR:VRzOzluJyZbdir7xleOf6tOv0ZxMbYO-aBUi3IqzkW0', '2023-08-27 08:08:03.437467'),
('rq4ubwf2rb9p8vrsnwh0a1qapu7pii9k', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPLRH:OXGm2uzcQdBU__mea3AObQpdhp-qSerjWYAx0ZgtWWQ', '2023-07-28 12:15:19.787230'),
('rq9wknbigg3pdpw0rwr1ychmkxd4qv6v', 'eyJ0aWQiOjEsImNpZCI6MX0:1qNaj9:b779-x2EruBiOnvRLSceG8c4gXX51_iRiFsGXxdJ9PM', '2023-07-23 16:10:31.308928'),
('rri94nr5tmnsff2dtw71b2a3k5mhr8v5', 'eyJjaWQiOjQsInVpZCI6OCwidGlkIjo4fQ:1q9mu6:2KAfNaYCkd1avWKnc8fPu_AnNiOMBAl1AOR2OYwCk64', '2023-06-15 14:20:46.791024'),
('rueq1koxeip9tx5w2s4udg4zwr38nkld', 'eyJ0aWQiOjgsImNpZCI6NH0:1qQssj:frjlQhLf9CHVFfev2VqbzQAH99Ny6jJ57os3pBys44M', '2023-08-01 18:10:01.919789'),
('rurwcob4x1nukxmvugbgq8nlun42fprz', 'eyJ0aWQiOjksImNpZCI6Mn0:1qMLZT:M1k7R3CwJonZV19-bw-kTVJaXtAxfVjG78hgveGUylI', '2023-07-20 05:47:23.316840'),
('rwwcsqlx65d6hjvlm1qo641iqoqxcop1', 'eyJ0aWQiOjEsImNpZCI6MX0:1qbabS:cAS7mYBoKjospMBY8Xp56k0x2AUYvblb40w5NwfBRm8', '2023-08-31 06:52:26.932395'),
('rxsm29f68aktzbtnqbwobf4ssewog04p', 'eyJ0aWQiOjEsImNpZCI6MX0:1qZo2v:WTB3MM2p-6MF0gzjAtvjQEevySTGa8LPP3nCRNaleV4', '2023-08-26 08:49:25.641666'),
('ryjzgxqteow8vqng04ulyklqw0bgcuec', 'eyJ0aWQiOjEsImNpZCI6MX0:1qIwgW:ueW3zOOsoDA-4LK8PcMDdG9rsWk52lAQjpx3ch7O3Vc', '2023-07-10 20:36:36.902059'),
('s0cedlz7079q7rbepnl5zy0uf3p4asxa', 'eyJ0aWQiOjEsImNpZCI6MX0:1qQm5X:fHVdGNjWvSEJvjb0Nz5NU5crwAWWUYi__AeZeB2K2yk', '2023-08-01 10:54:47.314314'),
('s0gt8jh9xv3xmssmsqvpm4y22bmiaf3s', 'eyJ0aWQiOjEsImNpZCI6MX0:1qREXM:cw5N3bbsaGJyAbtDkpKhGQ2Kj3_tmXrz_zY__t804hU', '2023-08-02 17:17:24.998015'),
('s0k1fclvpa5m1w6xn03yrtrrzt4jthtm', 'eyJ0aWQiOjEsImNpZCI6MX0:1qaKlE:-bnc5MK-cB86HxFZVE0E3mceRz8gmTxMccDxDbu_PNI', '2023-08-27 19:45:20.084593'),
('s12fa52d7lhvvjdvya3u870cwnpc4feu', 'eyJ0aWQiOjEsImNpZCI6MX0:1qNAmQ:kAslg9RSps2ptJuJ0oHEWSjm-CAUkTnDrsXROoU1364', '2023-07-22 12:28:10.785302'),
('s28vb719u20kpohs8pe1fp0lla5dhykw', 'eyJ0aWQiOjEsImNpZCI6MX0:1qcimH:r2luwOuQHXFf198vjedINKlCNewB1HTFC2p0kHfOeHU', '2023-09-03 09:48:17.625595'),
('s4b3u4z3n5ypr2lbcn9gmctpqfsszxd9', 'eyJ0aWQiOjEsImNpZCI6MX0:1qHlV3:EmJhCsuRuev3cnzziXQrSCAvw78rfbKaz15F4ksfclQ', '2023-07-07 14:27:53.783322'),
('s56a8wmgxdzrhl8repjc6m8v1eii2mlj', 'eyJ0aWQiOjEsImNpZCI6MX0:1qP5Bk:ehuxWGYSRrWXDhPbJ6pWGB-QvgSr8uQD8eiU-ZeSldE', '2023-07-27 18:54:12.821826'),
('s8uy4r0j23b2whcu9eoaa1f4830c8y92', 'eyJ0aWQiOjEsImNpZCI6MX0:1qO1K1:nJMcZu1O0oIoWIE_s26vF0VHZ_YReMyZoRHTec-8e_g', '2023-07-24 20:34:21.417999'),
('s998b5et46jyublrvy87eri6ti129418', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPn3e:KFrPMf9YqPDs1uuvwuy8uXa9ndY8sWAJVxHPwKdH-7E', '2023-07-29 17:44:46.404850'),
('s9j0g7t32deu433h7hjk9ybkh61ceq4b', 'eyJ0aWQiOjEsImNpZCI6MX0:1qOajK:LhxlLFZWyFYzZHJIodKiewqa7dqtlX_0B9kEW6iJ0uA', '2023-07-26 10:22:50.754495'),
('s9mdgowxm167lnuweeg8vvrkz5w241a0', 'eyJ0aWQiOjIyLCJjaWQiOjN9:1qbhpw:VS8ev7zYOJc6wVDLipxZmdvn8M_ouitTcBxrE22cOE0', '2023-08-31 14:35:52.447550'),
('sa8hf7p6s2c0g3bqt3qw2ldp86hk8e2l', 'eyJ0aWQiOjksImNpZCI6Mn0:1qHhz2:mPnGWnEsdZO1o-4nBPe0oJsM0T3yrUpEwFmDl81Hwc4', '2023-07-07 10:42:36.957706'),
('sam7i1wuv7mj0hfiwjdfn1q6559dufjh', 'eyJ0aWQiOjksImNpZCI6Mn0:1qNoMG:CmblMsA9fbExyMQpNb3Htk-eNZZVtz60avra3GISfgs', '2023-07-24 06:43:48.524920'),
('sc3fozxwy683ssx7yx4n4qs2wd7hn5x2', 'eyJjaWQiOjEsInVpZCI6MX0:1qXFbN:065tUQLAl7bUWKK3Qw6NS_XPUII_bWwVNZOZMzkFo6I', '2023-08-19 07:38:25.188755'),
('sd6myxez8ewts5317k35bjllf2maeiht', 'eyJ0aWQiOjEsImNpZCI6MX0:1qbk91:1VBhy0QdzotP-DUuXUB-WP5Ng1j-q_qR1ZSYoxMRH9A', '2023-08-31 17:03:43.401023'),
('sgqwy167pvgc423g0efgfpf622nv0hzp', 'eyJ0aWQiOjEsImNpZCI6MX0:1qJ56V:qi9B7K2uUgfWcT5ftYfbpKkIUGVuAY2IYcr7YXK3Q9M', '2023-07-11 05:35:59.985216'),
('shf9z8te2elc26f7tkiqodher1fjeut8', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPLqL:vNeoybj3UGhxK-hPG5r6DaASblOAWqw8Nlse5KNSrA8', '2023-07-28 12:41:13.173865'),
('sit64fa55nxpbkvqt6nj5y6upajnuyx9', 'eyJ0aWQiOjEsImNpZCI6MX0:1qacWM:m3pRy6YkfzW4iPksR_Y9Qb18kpFgTCWuVXekWNfd0g8', '2023-08-28 14:43:10.287494'),
('siwvjufznzufj93yruvux88nvs9o0v0f', '.eJw1jssKgzAQRX8lZC0lPgrVlUKzECxItG7LoKkEjJEkWkrpv3cUurpw5lzmfqjxC80uETvHSUB78HI09k2zMKAzaEkzWgjS3GsuSCuKjlcNqUXZFS0nVXkrW36lWDOzh96jnKZJyBjDQCw1qAkhWLcu0noLm5xcPu741BuNygLOvYwd0GpBqykPo_jffGzSqqeSePR2lfhGDcewdc8I5_oDfH-xazwL:1qPJnr:-uxXN4q8JDlDjpElHSVGrSLGSr-2sjGGxXZqbcU8AKE', '2023-07-28 10:30:31.010239'),
('sjeujqk9qsrdzl00tc61irnn7i3dpw6x', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPJkc:glSDaLhc_85fhRKacum9OaXI4zEcWEg8JPWRmvi7Xt4', '2023-07-28 10:27:10.495012'),
('skp72gkwlhfmb5iyneqxj6vvw0lm54j3', '.eJwtikEKgCAQRe8y6wjdpavu0AkGEzPSMZ2IiO7eBL3df__dQFzADkoZoztwyD5QvcDKyJg8WJhiDlioepCfMqNjseZHpE8YN1GY6sELGr0eeQyf7B0lCQq2dlKdpdkFeF5uQiWS:1qIoqA:qyGi-mEykUnLcxQ7SGpWkck9E2w-ITxxHamYA1LeDIE', '2023-07-10 12:14:02.479745'),
('smtjuu3mt1u1bvlmlcvtukk7o4lhh9j6', 'eyJ0aWQiOjgsImNpZCI6NH0:1qNDse:xdgHxf7pJGM64EGf7kUzsIjHY-RfM5YPffuhhHipoUI', '2023-07-22 15:46:48.357324'),
('spywasiw1rb1dxwenyl4mac6bdjsq1dh', 'eyJ0aWQiOjEsImNpZCI6MX0:1qNngy:ip4T31hdIjL6lSTp8e08Cb2EW3nlSpebG6pYHhUETZ4', '2023-07-24 06:01:08.372925'),
('srq5m6ut2xm6yx21sxl4m6pi0bdydm8o', 'eyJ0aWQiOjEsImNpZCI6MX0:1qaAnk:nFfNcWRFBKpswhsLCVMR3ccrYX81EJOVvHbDjDrlFFs', '2023-08-27 09:07:16.022740'),
('ss6ciaw4j4wgvj18c9cn9ld72ns811fw', 'eyJ0aWQiOjEsImNpZCI6MX0:1qKOSm:pbCrFRxQpsXRC3m7hA1nztizi9piZzfrQbHJq8bhUu8', '2023-07-14 20:28:24.067843');
INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('su5by9u50zufxao42425mcxbygazkxzg', 'eyJ0aWQiOjEsImNpZCI6MX0:1qOswr:3tmRZmyVXG3v6wiJaM8MgzBi4BNNewb3kUrKekxCIFw', '2023-07-27 05:50:01.428532'),
('sydtam64ojhbao0lrznwne8e71yd6bf7', 'eyJ0aWQiOjEsImNpZCI6MX0:1qbY9y:fTAYSZ5_BpbNzezc0i9INeY6Mk2Wiaw6O4Az87hoSaw', '2023-08-31 04:15:54.907858'),
('sz7dxggazpo4r9vnp2q6jw8qsyrcfxkx', 'eyJ0aWQiOjEsImNpZCI6MX0:1qIwgc:rBaBD9-eWgCQFt-Kd96hE36lQVPRLcAkf-QiJ0qTG4U', '2023-07-10 20:36:42.828232'),
('szclajqfpphwfw892lf9hwhq33zawvgj', 'eyJjaWQiOjEsInVpZCI6MSwidGlkIjo5fQ:1qLHx8:jz-DK9Tu3yCDG69x0u25Jp-Yb-ERC8GEZ3jpYO37WYA', '2023-07-17 07:43:26.409796'),
('t22o673d3t7lix58fuengqf5cp1rfd1e', 'eyJ0aWQiOjksImNpZCI6Mn0:1qMboE:R8T83dDt29EsCuFMwi8A0Yqw6v65NXm0yrlrzQjwv60', '2023-07-20 23:07:42.648900'),
('t2m4mrn01ktyvj3yqh0a24mzhq9g3ej3', 'eyJ0aWQiOjEsImNpZCI6MX0:1qST0d:Zf_mqD99-jNJNI4S1EeWmj54RMFHMwwj6PcfiAtsKkQ', '2023-08-06 02:56:43.419664'),
('t42w8nwuis1gl87fv7vra8do4ps6rbhx', 'eyJ0aWQiOjgsImNpZCI6NH0:1qQgTc:sfeFU9jjeDgGoAAooUuD3QYacByNhbiJyHXzQ9D9jzs', '2023-08-01 04:55:16.686467'),
('t44zpb5vzfmrwtrfkajuspszr03t0jw2', 'eyJjaWQiOjIsInVpZCI6OX0:1qbx1c:hVu9oqKe7E726yOFrn7PnU50L9j9ZD0rKgiTqohhQS8', '2023-09-01 06:48:56.206333'),
('t4lq5kjrmm1psey2x7m4r9qahhahi46x', 'eyJ0aWQiOjEsImNpZCI6MX0:1qKfqE:UCkhZHBzd7gMMG5By8i778apqKTbdXX7NGO6eu03JZU', '2023-07-15 15:01:46.986571'),
('t6nizbzez539g4rxi6gpnqx5i7fpuqo8', 'eyJ0aWQiOjEsImNpZCI6MX0:1qMZNx:MNkQCI5vXCyo1L--YyZnk4snTrjJWTNSoHjcmO7KZTo', '2023-07-20 20:32:25.385565'),
('t6y799eamiab1t1largo8n4r422x61zz', 'eyJ0aWQiOjEsImNpZCI6MX0:1qZo5u:ucTr3j81ZdLEHWrGBUPpizLaWIPYNQftdDpcjq738fE', '2023-08-26 08:52:30.981319'),
('t81aip7mmr9vybm5a3kql72oz0e4ldf0', 'eyJ0aWQiOjEsImNpZCI6MX0:1qbbGC:Eod0E8O9V9JWiEld6F33qwJATA6Lf8CNpHO1A8WVANE', '2023-08-31 07:34:32.581783'),
('t8nkizpydbe904035alraaxtslaehn3v', 'eyJ0aWQiOjEsImNpZCI6MX0:1qOZGI:nVkmPJoTE3o2QO79QDzQA8L_gtbuWxj5GqZ_mh1InlY', '2023-07-26 08:48:46.591314'),
('t94r4t45iz277tdpvtiodmiwlgjnjbgi', 'eyJ0aWQiOjEsImNpZCI6MX0:1qOpQU:sot7fksJ4gDY_2mUnKT7el5yLFulIUEqvIRIwIHLFT4', '2023-07-27 02:04:22.491810'),
('t9eikazywt7a3ck0a3aacn4ag0jwet3i', 'eyJ0aWQiOjEsImNpZCI6MX0:1qQtZc:9eFnqOEyEs1U-jUQGO4QjrWht14XDK2LowMxXDQjfZA', '2023-08-01 18:54:20.364181'),
('taoaxsz5tin64qxhnxm9hhrd6ej8hxqm', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPJ1R:yNV-Noib2be8rC-ucTnh-QZaFacs9nqpVfy06cTwNQs', '2023-07-28 09:40:29.688161'),
('tccc4hnmh7wr564vpnmx82pg4f7srug7', 'eyJ0aWQiOjEsImNpZCI6MX0:1qLQTN:Fiha5Zgo0CeOdOqtUBYszgUAPayCnUAxHHBU28s47_M', '2023-07-17 16:49:17.350835'),
('tewazsn66ktwzcbqtrcz78yeregu9ps6', 'eyJ0aWQiOjEsImNpZCI6MX0:1qOymS:3E6D-yCDqitTeoMRXuMDi0jJUAnCvoovo4bU6VWsPY4', '2023-07-27 12:03:40.929942'),
('tf11bj05oqp1bdln8s85gfuncmmcr0tl', 'eyJjaWQiOjEsInVpZCI6MSwidGlkIjoxfQ:1qPhFl:AqeDBHOQeRoCBu1A5TbNMzbAU0DZR4uiYgLkc_ATgVA', '2023-07-29 11:32:53.062319'),
('tf9unj68q6rk12nh7p12rfby0c75kivl', 'eyJ0aWQiOjEsImNpZCI6MX0:1qaFo0:e_7Y7A5Yl5DPOZzkwoOwrHJSF1Id4E6pjPVOsfavz4Y', '2023-08-27 14:27:52.983450'),
('tfidzex4gbkdi71uz3uelnxh1alq3ozf', 'eyJ0aWQiOjIxLCJjaWQiOjF9:1qZYdl:x9J7-5QmnDRfJQJrdMNiOUmIrw6xt2zjQ4SJOX32i08', '2023-08-25 16:22:25.359008'),
('tfvg5r9fqo0oqiaq3ejy5q1zsnvtfx4y', 'eyJ0aWQiOjEsImNpZCI6MX0:1qbHcG:FFlqACCI7Fa_VCYcje6cIk5-1e-HQkKXE5QtEwZQx68', '2023-08-30 10:36:00.575754'),
('th77siw7ir6ynwyp5fnnkn46lgonmkw4', 'eyJ0aWQiOjEsImNpZCI6MX0:1qJJvx:HnnmhsyqSDS3R2TA_PvXad0QicXeWS6tIRV8TmHx8HE', '2023-07-11 21:26:05.192309'),
('thyxe168llrbtsiqctx83bown4ffbhas', 'eyJ0aWQiOjksImNpZCI6Mn0:1qM4N9:HOzLujnTQhNXDG3f4tQBBVVvDB0dhITnSvzGt1lnOoU', '2023-07-19 11:25:31.410374'),
('tii40jh8otu2gn94rrha7bdvamujcdcu', 'eyJ0aWQiOjEsImNpZCI6MX0:1qJh4w:nEHD2gIH03zEzxlhiE8pFlq-YPVBFmdU0e2wpVIr8f8', '2023-07-12 22:08:54.218398'),
('tk2vihr1gwhf1khyf7c7wwftnlca7adb', 'eyJjaWQiOjEsInVpZCI6MSwidGlkIjoxfQ:1qOaiV:ek3eJibIkTCNfPxHazh2fEJ1YH5e3BH9Cn47d5bop2Y', '2023-07-26 10:21:59.996329'),
('tokym67psoej8p5plb72b3638dizgg04', 'eyJ0aWQiOjEsImNpZCI6MX0:1qJVEd:5NUvrU6-0m62u3wa3hTzg_sKEelCI4pA1wYi2GE3CUk', '2023-07-12 09:30:07.995117'),
('tt8vs1ubi927zkl9bws0b4y2gcd483f8', 'eyJ0aWQiOjEsImNpZCI6MX0:1qL9mS:PPfDGbv-3q1cSU-3VSUmGkwmm9qic7Q545c0cgi04bg', '2023-07-16 22:59:52.464696'),
('tusqpju45boobobmr9y1vfocsu6p7xk3', 'eyJ0aWQiOjEsImNpZCI6MX0:1qaDEN:BSedXIo-mZnYElkYvjaN70cfGQ4h5ir59a_laN967T0', '2023-08-27 11:42:55.918241'),
('tvhd0xrm6w6m995p8k0odrhydqhf5go9', 'eyJ0aWQiOjEsImNpZCI6MX0:1qIiJA:Yof_qEh3Amh__4OAo4ZbVlTdTj_zeb1FSlc1GoZiFlc', '2023-07-10 05:15:32.777168'),
('tvmmavpgdmmc75j02782gfnf96x991ed', 'eyJjaWQiOjEsInVpZCI6MjYsInRpZCI6MX0:1qSwMr:1KKdzjwzLF6kmQK3khk7XnBZlJC_v7hYkvmlR0QIPg4', '2023-08-07 10:17:37.253810'),
('tx2bcmpwcwd2fbajns0eaft9wb8bcbo4', 'eyJ0aWQiOjEsImNpZCI6MX0:1qcqMS:T0WcyfXDPnpcKP1HOJXtcgrrc-Fgp9IlhX8sSTNVIKk', '2023-09-03 17:54:08.899434'),
('u1czio1rfrjspxazw68ancojuo6bsppa', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPumM:FO51_t54fsLdceBbZoJuPptUuM4CddzICV8RrYfWskw', '2023-07-30 01:59:26.611420'),
('u3l1myd8ifwvnm9vp1qhgadi1um49smg', 'eyJ0aWQiOjEsImNpZCI6MX0:1qa8hA:NWN9UymiK9EpoKi-krXzN2NjcI1SvXj2VM5tOfbdMLA', '2023-08-27 06:52:20.052793'),
('u6aqhrxqtvs9ygkco2aai72ziuz141yd', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPioF:7gMBDPKzHuAqSRHdQsgYRt7rSCf3xozjr_EPHSyON_c', '2023-07-29 13:12:35.047328'),
('u726xg2sc46dlnnx82z4jb7bm3qvvfik', 'eyJ0aWQiOjEsImNpZCI6MX0:1qd54T:BL_rF5Foz3By9YQ7_KWF3Y96InlEaWtQjE9H2eVOvuc', '2023-09-04 09:36:33.055975'),
('u8vz0b9vnecgue8rilh01gomentjqyaf', 'eyJ0aWQiOjgsImNpZCI6NH0:1qIowt:qMS2RPsZreCmCAJdpKOFqCJF6PbXz63frLl8E74sk50', '2023-07-10 12:20:59.159452'),
('ubevc99qaymeccbm9enk5jqya6blngh4', 'eyJ0aWQiOjEsImNpZCI6MX0:1qcvbM:Joco2R94Zf4cR5FaF6mXi7mDuDt3Xam9fP1k0g6S2dI', '2023-09-03 23:29:52.806888'),
('ubjp5knh1j6uhodysttc0mzwdkp98y5b', 'eyJjaWQiOjIsInVpZCI6OSwidGlkIjo5fQ:1qBpmO:8rJlXVsQeLsRAB0txCTZyTS70dUDULx5ckQfV_LIyPw', '2023-06-21 05:49:16.209664'),
('udz4fs5f0qf4d3wutq6sx2cqh29koqqv', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPLUf:_HhhQGnMp1OKfTIqGnRmAKtXH4fJ2iD0KCY6GwXYVNE', '2023-07-28 12:18:49.593322'),
('ueydbw7veqo1urxpxiuxuizmwkmptswb', 'eyJjaWQiOjEsInVpZCI6IjI4IiwidGlkIjoyfQ:1qUPZT:HxJqv5DDdr-5Ksa-vqERKhZ163TMSQAOj2yi7YIC3xg', '2023-08-11 11:40:43.784105'),
('ufxb3tp5qffaci3dhu2e5qorgqtn1ews', 'eyJjaWQiOjIsInVpZCI6OX0:1qby5G:jmPT9lvp7w1COzp_YBQNp9upIo2Awu1D7tF4pvEpeRY', '2023-09-01 07:56:46.199028'),
('ui7n42jzv58bdscv12h1xgjblxbsr5ks', '.eJw9zcEKgzAMBuB3yblItTBsT3uHPcAIbXSF1roaHTL27osePAW-P8n_hcIzuJs2Xdsr8Mg0lrqDaxVMmAkcPF4Y4hskLBOjZyGrjemMtb0VpowxCXqs1AxpjxOn-3hg40uWhRmX5VNquH51Rl-Hz41qHCJJynUlaYnhbF-PabQCPsH-_pyeNOA:1qXLUy:J6fKFtol0a3EWWRTvZ5-cb2tmskIVxZMkIU9GvZsga8', '2023-08-19 13:56:12.852326'),
('uiam6zrxaorsebuvju0vetyl9sq05x34', 'eyJjaWQiOjEsInVpZCI6MSwidGlkIjoxfQ:1q3x0e:CFYq6w_0g6kXLnzNlH51IQ6zeLnaczoL7hLQJyHHIHs', '2023-05-30 11:55:24.087475'),
('uiqdjs3ev3ivio2djhajhwfgc51etdyv', 'eyJ0aWQiOjksImNpZCI6Mn0:1qM0xy:Efy4TuNqU8xn6K3Nce--_haG9eZnDfA14p2lb4EjXxU', '2023-07-19 07:47:18.214293'),
('uj11rjyhufhj9bbn8jpc5zfz36vaanjf', 'eyJ0aWQiOjEsImNpZCI6MX0:1qI8VG:Chktu5ezwLCJhE4bJ3tXbc6-VoumNl913MXpHFgbIQM', '2023-07-08 15:01:38.659397'),
('uj7dfbuxtdlhw5nsp9lg2jq3pthub950', 'eyJ0aWQiOjEsImNpZCI6MX0:1qbdB1:C_BAa1eABGNiFWohoVvRt2EE8eAywUVz-C7FOd1LwVY', '2023-08-31 09:37:19.729701'),
('uj8u427e60a332l5efei6mc339vfd5oo', 'eyJ0aWQiOjEsImNpZCI6MX0:1qP0va:Rv86I8a4PdB1XsP6-hJtRNQGFUsTnXta-W_ta9ZrqHM', '2023-07-27 14:21:14.657076'),
('ukblmsmc66wc5vu8mbwi95asdsva3rgf', 'eyJ0aWQiOjEsImNpZCI6MX0:1qST0f:jVFANxKyHDmuM0SEQW3Ultgo6Nhlmp_2p-JlpK4EMC8', '2023-08-06 02:56:45.898397'),
('umvx2kzfe1wpg1z01moy7xhd7znva2o1', 'eyJjaWQiOjEsInVpZCI6MjUsInRpZCI6MX0:1qXI26:CJxenD95BBmSy9ShvA36LGRjYIJOkg9kxgONSrlKw4k', '2023-08-19 10:14:10.438659'),
('uoyw6hyj6i1vrhnsmbayggh5rqbaspfn', 'eyJ0aWQiOjEsImNpZCI6MX0:1qcSD6:m_dijS0AaWru-t2N2Eob7wunHE2bCVGiT2-XWJSZ6Ds', '2023-09-02 16:06:52.217580'),
('upmx2q2slfjxibujf6zw6lupiplag24k', 'eyJ0aWQiOjEsImNpZCI6MSwidWlkIjoxfQ:1qTL4J:huz3NGC1IcppC5QbQA5PcI7cgbY7misrX-WYWO3sOoY', '2023-08-08 12:40:07.713223'),
('uu0m54uepgjavucg37cs022mv1fihg2p', 'eyJ0aWQiOjEsImNpZCI6MX0:1qaz8r:V3JHQ5DD-VqS1mhbrI_hC8k4MY6VpeYz4PntXmszUI4', '2023-08-29 14:52:25.279768'),
('uuwjua5eyqv73gq9nfcasyfuozbeh21p', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPkdb:1dKAv2fdqqPAzcz8vxiakyDTy0QZlqUqFuMM8LgVirw', '2023-07-29 15:09:43.320288'),
('uvmwg48ywv02djn0w9ppwvl7zp1h6zjn', 'eyJ0aWQiOjEsImNpZCI6MX0:1qIBOX:AvO9UsoGH-kt3Hddvh6JcmMkxz8N1sbpF1ppLJ3t1NE', '2023-07-08 18:06:53.462856'),
('uvspuhghmha4g7rd0t4s9ze5dxxqbven', '.eJw1jVEKwjAQRO-y36WQrlrTr3qAWtADSEzXEmiakmwrIt7djeDXDm9mdt4QeIFmjwfEugBrmMYQX9CoAmbjCRroTudr319A3DCzsSxM1zt11IhKCyZv3CSQo9louhOVzo_tmGlpg5fEYlJ6hjjkbym2qsJ_7bZRdA9HYnFcSTbc8Btf80UsgLOo1OcLHZcz4Q:1qZV2j:Rj1tAPIA9o0GysX2K2SHx-gGHL36Ka6rVYbWFV6BaLI', '2023-08-25 12:31:57.827148'),
('uyt3kpr1hvrmmwsu480k5tobidzh9pwi', 'eyJ0aWQiOjEsImNpZCI6MX0:1qLG9g:CNW0Vf40oUEOQdj_c16iqRmNm00kjeIcYQ_luCHk1Jw', '2023-07-17 05:48:16.439556'),
('uzuuo3cs28luv99zag3ew5hzx8pxnxpc', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPL2b:nvFOJP8ZqTU1wefNxpStAB1Rv8xUq7rvOxC8EXh3EJU', '2023-07-28 11:49:49.807303'),
('v01f9k6pt8flhy8jd3o1isnj6dngs18x', '.eJyrVkrOTFGyUjJU0lEqBbOMTIHMEqhgLQCJBwgT:1qVTe9:63R8VcR6qO2xMB6_MPaZgPIgsK8pJ0CkS0ddQ4Q4-W8', '2023-08-14 10:13:57.180456'),
('v10rfk1icardxhvwg86dqm02q0sml63n', 'eyJjaWQiOjEsInVpZCI6MX0:1qZ3in:HWTNdqasovOSAqfE6G20nMHJsaD3wQxdLoW6XjCBudM', '2023-08-24 07:21:33.989024'),
('v22lzcvje1pt8mtgp3k71ebin4rzauk6', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPJkt:q9hXoqvsdNdxyYTFOr8mrkn5arBvpwfP71qCuOlaTvA', '2023-07-28 10:27:27.990108'),
('v2whsd1asbcfldq0oxslzdumsldz5wek', 'eyJ0aWQiOjEsImNpZCI6MX0:1qP1gz:6IMxEkxusRKHiliB9uwQJBL4m3Xrv20hHvmxqtyZqoU', '2023-07-27 15:10:13.847272'),
('v4glmfa8b8eyh0efqvkaepcmh1r1nldk', 'eyJ0aWQiOjEsImNpZCI6MX0:1qLQIY:UBCQMPX7ZW9E78cRCXsUxPzGvag6UmIy5590oTV7018', '2023-07-17 16:38:06.950765'),
('v584lu6ptfvrdm74r88avr2snxcxuxpb', 'eyJ0aWQiOjIyLCJjaWQiOjN9:1qc3WU:di2u9ldbRB3vlR-nhB_8nDBsw1E-i-fN8iDRUWE2GDs', '2023-09-01 13:45:14.315443'),
('v6nrsq2a05q653dueoi9fqae50qtm4uh', 'eyJ0aWQiOjEsImNpZCI6MX0:1qbirX:HEyGNSNE_BGwsRWjFnOhw_bzLiTgznU93ruEXwrW5CE', '2023-08-31 15:41:35.118047'),
('v79j4ebfk9kn4s4utbf9vsfbjwajg8yr', 'eyJ0aWQiOjEsImNpZCI6MX0:1qZtHT:vzCYjxWXW3tWwJrFkF9RlL__PvNoLZPheTcG0NykcGQ', '2023-08-26 14:24:47.390716'),
('v79vnxs2h25el5zdjebh4evcki0e17dg', '.eJw9jtEKwjAMRf8lz0VoZQP75J-MULOtsrYjTRUR_91UmPflkpMbbt4Q4g28NdC6Dwak-9lAkR386AZndQgotBR-_ZIZE4GHVokd6K5kwSBK3F-KKWHcFGLiJite7L3l69LhKZSkgR1rfRbWNrCq42R6EMc5knLhRvrQSommShsFOejnC4ngOY0:1q4HNX:bO0slOo9-3WuAq6WyZjZiUXuT1QPxiunbBS37NeFVJU', '2023-05-31 09:40:23.290333'),
('v7j9ulhmyh2lmmesvrqe0w5tznwho790', 'eyJ0aWQiOjEsImNpZCI6MX0:1qL6pG:HtdMHhZN_hjy8A_o1ZeAdeuQVBExiY-FLYusC9GQtBg', '2023-07-16 19:50:34.811922'),
('v7p1cj20naayk6dtjaup8faijjssfxee', 'eyJ0aWQiOjEsImNpZCI6MX0:1qc0BE:c4uJGMcGexCEaC3KgVZpsts7-jc10-za0slHDmSHkgA', '2023-09-01 10:11:04.981002'),
('va5sult0wp9i6n9fuf4cpvcgm72bs0zf', 'eyJ0aWQiOjIsImNpZCI6MX0:1qVDzx:FG-qlsacDo4pDM9IIU-RCVBjljuuu8W4VliK_VtPuBk', '2023-08-13 17:31:25.682886'),
('vcedgd0txnjd7tfllyg3gidppp1x7vv1', 'eyJ0aWQiOjEsImNpZCI6MX0:1qcV1E:0GE_zguploM-KrzvKuI_UfbKSg8s106hgK54sLVqdQI', '2023-09-02 19:06:48.371152'),
('ve0ep6tengu2assrbv7xgmuxl850mrno', 'eyJ0aWQiOjEsImNpZCI6MX0:1qI2Ar:4Fmmh4FGLJ7-7QpXWpYcdsCp6sxnfFAUiesvNB1brWo', '2023-07-08 08:16:09.287700'),
('vhnn0acy9j1e187ldt5hte9wfnmahf9f', 'eyJ0aWQiOjEsImNpZCI6MX0:1qcAd7:ElQOKsZNKRvn_RsALnxDLduKWEJOKPPKvJpEyCba8iw', '2023-09-01 21:20:33.138667'),
('vmkla961qcq154q4c8g05tc5ruv3sirm', 'eyJ0aWQiOjEsImNpZCI6MX0:1qObH0:vXaF6IjSVcSbnpjeLgPe9YECN9V1HIs2-eKeJ3PJfTw', '2023-07-26 10:57:38.300416'),
('vorykaxfxhm82rf40xil6gds4suqudd4', 'eyJ0aWQiOjEsImNpZCI6MX0:1qbMGV:B1IJn9hJpSRyul2TV0lDhQGVOEFdO_bWGSA3R4TJWNI', '2023-08-30 15:33:51.437234'),
('vql7lgm1azf8l43fmfmv99puiaju6llq', 'eyJ0aWQiOjEsImNpZCI6MX0:1qQkes:9GOSgigyutLjJQDOgQV-w4kfK5FyUtJUnx8JDpSIbVk', '2023-08-01 09:23:10.249905'),
('vrzmrjovphggnfi4mivi50z5lshe9au7', 'eyJ0aWQiOjEsImNpZCI6MX0:1qQiFZ:zH8GSv6Prxye83Hfu1_ZyvuGzVs2k3Mrkqwygxlz2F4', '2023-08-01 06:48:53.444013'),
('vttd3z244mu130yfpo2a08e0t0poeoov', 'eyJ0aWQiOjEsImNpZCI6MX0:1qM02i:pZrbcRuUHqpued5NLHb_rNaf6UztBRQ5run--K2Vpbk', '2023-07-19 06:48:08.352874'),
('vvrsgkzxq9erubtwmf13ncwr1z9acdvi', 'eyJjaWQiOjIsInVpZCI6MTAsInRpZCI6IjEifQ:1qdPV2:TtS1EeB1KUobRj9sdNnX5Jdbw3vRnTJDJsr1oYnXIMw', '2023-09-05 07:25:20.539705'),
('vxy3rjkkdrpncytal5asnys14cmj29l0', 'eyJ0aWQiOjEsImNpZCI6MX0:1qcORN:mYFbgza-ILpmopgCFKN6siTDRj7T8yrBciPuY8i0bgU', '2023-09-02 12:05:21.197603'),
('w0cj2bn2dv6f6a4rb8860z3th7sfh5dl', 'eyJjaWQiOjEsInVpZCI6MSwidGlkIjoxNX0:1qQsgo:PxCgdsJ7fzvPk4PiS4SawYiaJcyVQUrUSBsZlL4h4PA', '2023-08-01 17:57:42.816643'),
('w1mgj7kx57944oajjnqlprr0xb9okwlr', 'eyJ0aWQiOjEsImNpZCI6MX0:1qNoYs:ditTvBDv-bGWew7hPUfn-ZcpB4l5P3GHUftgSrkmHvM', '2023-07-24 06:56:50.807893'),
('w27b813y2jv812mx87gyo5nn2j4g6iet', 'eyJ0aWQiOjEsImNpZCI6MX0:1qQ8El:v-NwZu6cQVHw2VYgLt2SPRe073bpBvWLbdhpgCL4nqY', '2023-07-30 16:21:39.179097'),
('w4apio8rmvi7ggah82wfued25p1o26jq', 'eyJ0aWQiOjEsImNpZCI6MX0:1qRDCm:MxHfrac4-WMcevKl8QuDJpXszh1SOtfaShbSpdPwupA', '2023-08-02 15:52:04.397893'),
('w7smky9t727nsz988zlol0bkt0uzf028', 'eyJ0aWQiOjEsImNpZCI6MX0:1qbbQt:nE5-Mapk--ub3yThJYGpvOPqbXWnBw0l9fJTBqCrOV4', '2023-08-31 07:45:35.411734'),
('w8d43kmtini4bezmql5ocsch9eibpotw', 'eyJ1aWQiOjV9:1qU3KT:GCWzADkdJ2nZ1ESL8hc4TqtA7ACsFNEJGhc-XCZ2rGI', '2023-08-10 11:55:45.202250'),
('w8tu8wzp13tfbvzsuuk5fqqwjoydypmx', 'eyJ0aWQiOjEsImNpZCI6MX0:1qNCXw:obZ2cDw6n2iIrA-laKuNjHcGI69VrmN61k4b9J31GYk', '2023-07-22 14:21:20.268077'),
('wak8fcelfkffjdg3y1tk19kj1eu916aa', 'eyJ0aWQiOjEsImNpZCI6MX0:1qZnKF:jwUPPOh9l470dixi0B3noBcY3cTMEodjobL4uShEX5A', '2023-08-26 08:03:15.037286'),
('wbh1ven7nuv6r878gpnn5f6bg6n170l6', 'eyJ0aWQiOjEsImNpZCI6MX0:1qQB8S:DVVEuD5A2i4gx2uFzKfmujeV5YJwhLNgLvylNcbt-8c', '2023-07-30 19:27:20.910756'),
('wc8moce6j3so9648cxkjcylpmos4tsh2', 'eyJ0aWQiOjEsImNpZCI6MX0:1qaQup:UpHEDHO8Dv5ptYeoqmr8kn9NjaBUXznH7u_IhRVYkYg', '2023-08-28 02:19:39.044736'),
('wcxlq1fi3q6z5oh66j0yns2xrqb1xomi', 'eyJ0aWQiOjEsImNpZCI6MX0:1qJaPO:-85OqjaoR8TLX0y7qLuaBsZ5P7HSWWG5lrXjwURfBFc', '2023-07-12 15:01:34.376207'),
('wd7jfzbnq3tjzcu6ws298rj2j4bhso7v', 'eyJ0aWQiOjEsImNpZCI6MX0:1qKmFt:RO000raL457k80gdQLn8ILkFRfz01kanfnwJnB2PXs0', '2023-07-15 21:52:41.188479'),
('wdnnzlqyx1ubw9nlqdytjtnvvuz7k379', 'eyJ0aWQiOjgsImNpZCI6NH0:1qIowt:qMS2RPsZreCmCAJdpKOFqCJF6PbXz63frLl8E74sk50', '2023-07-10 12:20:59.190403'),
('weuqlhfeamo2venhkk75c5kn136cfjov', 'eyJjaWQiOjEsInVpZCI6MSwidGlkIjoxfQ:1qWCVg:i6J6KG07rxIm_bKqRFQQ-fF7QLMF7-_e5FjPOMlW8TE', '2023-08-16 10:08:12.407306'),
('wexxax8zqeabd6sitbfm3vpn2svodaeq', 'eyJ0aWQiOjEsImNpZCI6MX0:1qaXfS:Vqe4_0T_uF9h5tPvCmKQ0cukVAmbN6SMC6RIrX3D27Q', '2023-08-28 09:32:14.740782'),
('wfm39ktiy55t2l9m696waww685icv91e', 'eyJjaWQiOjEsInVpZCI6MSwidGlkIjoxfQ:1qQnIt:XzcFDjqlhKQkQvfeb5-wj7w6LgBQE_2xdd8-VXZJ3cE', '2023-08-01 12:12:39.683157'),
('wfovwa5wzjk7t4mbe74f18p8jgy0n54l', 'eyJ0aWQiOjEsImNpZCI6MX0:1qcU3A:o2rUeQexYKUxhbxKHhBxCS5ljrgiic0xSo6lPvPaPGM', '2023-09-02 18:04:44.983652'),
('wgu4bnywvchn448p8qy22527s9zi9jzo', 'eyJ0aWQiOjksImNpZCI6Mn0:1qM312:SiLrdwv3owLpxDe7U3TJLELgTq2R1RNJcq0QxxPdBT0', '2023-07-19 09:58:36.893357'),
('wic54xnmcs363q472b6a2n9glih0o5ev', 'eyJjaWQiOjIsInVpZCI6OSwidGlkIjo5fQ:1qBtk1:U00bFKMW15_ZbWvMjSNxjaOwje11t9xbmgQ6UKCs-Bk', '2023-06-21 10:03:05.202099'),
('wjoml9mjzaqcgtg2ar4h08nvljnicj0r', 'eyJ0aWQiOjEsImNpZCI6MX0:1qI8VG:Chktu5ezwLCJhE4bJ3tXbc6-VoumNl913MXpHFgbIQM', '2023-07-08 15:01:38.620002'),
('wl5jg2hdepnp86fogsn0t1o7rafj7of2', 'eyJ0aWQiOjksImNpZCI6Mn0:1qOmDM:eJI1SPQXTORKLGTPhKW8GkNfMUgewPvcT3ud-SyNLx4', '2023-07-26 22:38:36.325322'),
('wlwspqibop2z21e45x1citsmcwskd8kl', 'eyJ0aWQiOjEsImNpZCI6MX0:1qZrEi:yZ3cWLLq0LCl8i7Xkce252jQR7PdzHA91d0st84Tfxw', '2023-08-26 12:13:48.885730'),
('wnml8r4yw4gyzlwaailkm8zcd72f6lkj', 'eyJ0aWQiOjEsImNpZCI6MX0:1qd9uH:mDz-LkgL61uUyRPrk42yvTOASeaagmkKlCpSYOFgJow', '2023-09-04 14:46:21.846180'),
('wpcp4mu299xgp50rsqndrqie0htj3aky', 'eyJjaWQiOjEsInVpZCI6MSwidGlkIjoyMH0:1qY2nj:ghHlcjhNCi0yZqm_hlQeB-l790FMJf426s-nIG3pZEI', '2023-08-21 12:10:27.678756'),
('wpybcvkjjzbkoxvwkznr0ytge7jj01f5', 'eyJjaWQiOjEsInVpZCI6MjV9:1qRuCV:RqSFxYp-0TAcozbjsEPBCncrX1uNUcWnoE2tyQxQqlU', '2023-08-04 13:46:39.253270'),
('wqj8hbm1amvcj0hms6mss21wh8sx4u3d', 'eyJ0aWQiOjEsImNpZCI6MX0:1qM1G3:tmOKUHszZw6pecR9DyQT-gYCj7T8RlME_yIWDIr1Jfo', '2023-07-19 08:05:59.809283'),
('wu2tczt7ftgyupq2nwlsb1f9iszy3cee', 'eyJ0aWQiOjEsImNpZCI6MX0:1qQ4nR:vArWJqO8n6NQLLBeRfKSulStynhK51IrPwgUo8rD080', '2023-07-30 12:41:13.770694'),
('wuz5906xj3zmh8mnzl7hfov4lrqoelh3', 'eyJ0aWQiOjksImNpZCI6Mn0:1qHNRu:xfDw183ASFBXoGPymj_LpNremz_KsUu790Gz6_42vBo', '2023-07-06 12:47:02.031740'),
('wv2e3uk7yjtw20iqbawq9uba3bh77kda', 'eyJ0aWQiOjksImNpZCI6Mn0:1qMMya:nKGJnRWImH_1F9thVE3OXpjIN3tzcJJZ-AgEHEf0ZRg', '2023-07-20 07:17:24.125844'),
('wwoafpcbigt9uxi2v4kcmpke4eua8rp9', 'eyJ0aWQiOjEsImNpZCI6MX0:1qa9Bj:zqpTBYXKzIds5_WqrN-TvUq9V7L98aEUVYCyz1ctUkM', '2023-08-27 07:23:55.682290'),
('wx9rogot62csxtl237x04sz7lmd1fvqb', 'eyJ0aWQiOjEsImNpZCI6MX0:1qOpQU:sot7fksJ4gDY_2mUnKT7el5yLFulIUEqvIRIwIHLFT4', '2023-07-27 02:04:22.435788'),
('wxbxo067b1wi2cgafp546nj0gney2fo6', 'eyJ0aWQiOjEsImNpZCI6MX0:1qJh4i:7XIJwH-t-8sQx7mrR6xy9nT-SK_INMVJ-FzNIeM4M-Y', '2023-07-12 22:08:40.927928'),
('wxf5lmczt7ygsp0ho93zn8zxi00ns3n8', 'eyJ0aWQiOjEsImNpZCI6MX0:1qQOK5:xa9xUdci_X31VpZAFXh7vHIqW--DyaLIPPzwXzk-f_g', '2023-07-31 09:32:13.373909'),
('wxje1p6uew38idqh7y6vyo2pg2nc0ldu', 'eyJ0aWQiOjEsImNpZCI6MX0:1qL9it:NW-V2MPr6RhvSyFr_IxoeLmzzTj4ZpJ8zndoJQVvSYA', '2023-07-16 22:56:11.053862'),
('wyre0vq7e1ss948sv24nfhw5lbw0ovwg', 'eyJ0aWQiOjksImNpZCI6Mn0:1qWE0v:KzYgNCX4rTQ7Skto3p_5Pnf88wf5ywi75ZKO32VSe-o', '2023-08-16 11:44:33.010560'),
('wz08ck2snebx9h2wqs62966aw6bx060w', 'eyJ0aWQiOjEsImNpZCI6MX0:1qOy4j:PVe9-ff81Jc07QLZNfdBuZM-4KNZt_3zvilwk9eatek', '2023-07-27 11:18:29.951791'),
('x2t8thrd1amtgyza03lamy8uwujdmdco', 'eyJ0aWQiOjksImNpZCI6Mn0:1qMD36:O5zb1kZ4k1YllXYmvdwLPeflc4d5LWnqgc4ciNsY114', '2023-07-19 20:41:24.898945'),
('x35gqlwejrmamrupi3almozuq9wde7di', 'eyJ0aWQiOjEsImNpZCI6MX0:1qbrEM:dVl82TfgIHfUG3kNLUCnXx_aUHMJSph8uEhuTJpM6rI', '2023-09-01 00:37:42.503549'),
('x37skidccl6xq4x5ui40y6otd6llibk4', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPlQ8:mkSq_pP7cNcb7dhU8shd5XsCQpYYqJ75LmfHbjEe6hI', '2023-07-29 15:59:52.666751'),
('x47z3gutdyfmodsu6xmswgmwbnia0wfx', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPCLG:wr3VKGNGtmEXCQU_5EmA6_TLZd6fhxx8c4j561IkNAA', '2023-07-28 02:32:30.938367'),
('x5hjtwk7b0a1i8ibdbk0xh3rqaq7e57e', 'eyJ0aWQiOjEsImNpZCI6MX0:1qaz8s:_vRWBTyto9z1R7Ry286SgUjQN8uQa6N_WvCeqCCvFRM', '2023-08-29 14:52:26.875008'),
('x5mw4pzu5p8oz5xr9v04wxpvop0v3f5t', 'eyJ0aWQiOjEsImNpZCI6MX0:1qaLAK:BoiN7ewqgsuSsNlaIxwQSIBsRF2ess2kwg6ePFldIOA', '2023-08-27 20:11:16.610119'),
('x67bqukw7blzjtc35scv81ryfwmokvlh', 'eyJjaWQiOjEsInVpZCI6MjYsInRpZCI6MX0:1qTeqg:i2UegN0e5SEbl-l42RMijSI_r95Gl8JtEZZDF-sqfS0', '2023-08-09 09:47:22.293122'),
('x6wm5wcbfboz4qvoilf4ix8dwoljwbug', 'eyJ0aWQiOjksImNpZCI6Mn0:1qLXLS:b3HbUlt_vUEzXxX25A3weKxdarEkdegzvjPeVIdVfLo', '2023-07-18 00:09:34.899306'),
('x8ey403j67mv7wr8mgodwamvxurnggbd', 'eyJ0aWQiOjIyLCJjaWQiOjN9:1qbgGq:Vdafo1gSBY-aCqQc8GyV3BhMNK1DhJQUTep7Vk9akzk', '2023-08-31 12:55:32.507590'),
('x8v1husbjstod98v2ilz4lf1fteuty92', 'eyJ0aWQiOjEsImNpZCI6MX0:1qHos7:NAFEuTlsxzkfFO_Pi4qt7BxMVvXqnMgR2NeaFFK9XvQ', '2023-07-07 18:03:55.591512'),
('xad3ybgcaaah47ujqyifbrb3t3pdf5r1', 'eyJ0aWQiOjEsImNpZCI6MX0:1qZxVo:HxLq54LOGdB8OLevx0AvT1_2Hzowc8Nv4kn8q-eM-1Q', '2023-08-26 18:55:52.379090'),
('xcbeqqwn18k4ckgcn7lwwx9ltorpjz8f', 'eyJ0aWQiOjEsImNpZCI6MX0:1qK1yo:bqRPcCDPqp3sxZbAowo81eev5rrC08jUQwq7mCWIAj0', '2023-07-13 20:27:58.209168'),
('xchamglqn1ityqla4ifrsu71yexxqq54', 'eyJjaWQiOjEsInVpZCI6MSwidGlkIjoyMH0:1qYPpA:pzsqjuTwyFxNG-bbfkxjpyJkmA9EZOA4J6wpXj87kU0', '2023-08-22 12:45:28.519131'),
('xdrhvlg9201ggzzf4umpzr4y71unfjxf', 'eyJjaWQiOjEsInVpZCI6MSwidGlkIjoxfQ:1qQjPy:Qa64dO9H8jHnZo6uQ7v6XRQLJrRc0YNrAc5jiA_El3c', '2023-08-01 08:03:42.835382'),
('xefmmz5o7y83z9zpd9u0wwyw3ahv6nfx', 'eyJjaWQiOjIsInVpZCI6MTEsInRpZCI6MTN9:1qGbsj:tbscB9vPU6UruOZ00ynE0jWnUTf98DO-NzkCNRY4NJg', '2023-07-04 09:59:33.465805'),
('xf9jrw5bk7yea2hmg79f4q5wxku4z2jx', 'eyJ0aWQiOjEsImNpZCI6MX0:1qKkut:JDp9EKTgQHxPvfcbwyxzKyJAD1KgoSHB6ptIHjT5Ong', '2023-07-15 20:26:55.601013'),
('xfajnbc9v78e4h6al69lk4ariq88mx6u', 'eyJ0aWQiOjEsImNpZCI6MX0:1qbEOH:FQ2YW65x1CONaDjftFNB0R5kr4A9x5V0Y4IOwqVa248', '2023-08-30 07:09:21.151555'),
('xh32yudbxghjg3wqna3mts2ddakb24ah', '.eJxFitEKQEAUBf_lPEtRbPbJr9zWtsju1bqS5N9dpczjzFxgWWGb1pjaFHAkPnA-YesCiaKHBcW8y0jQyknIibruQ6WPNC3_1lXznvrwytJx1GGlbTs4D_pUCu4HHgYj5A:1qJ7b7:RZvxoHF5mwqPesEbH6fVyHFMLohzhiCjjn4VmZS1LgQ', '2023-07-11 08:15:45.269732'),
('xifddsvzuqj5ey198s8syb8k7b0udr9o', 'eyJjaWQiOjEsInVpZCI6MSwidGlkIjoxfQ:1qPiDE:zg6x4NZ-2Sfzeq_oZUa7svLCMVDd9KS9NUnEMJmSNhk', '2023-07-29 12:34:20.818884'),
('xjfdxrzrmzlgrusaer37ei36xwve26dn', 'eyJ0aWQiOjEsImNpZCI6MX0:1qKmEg:iR7NwGhnx8n4FnBn-MGTadBVYcbZikdKcK7IYdS0buk', '2023-07-15 21:51:26.464877'),
('xjnmvtua61nwgbr9eqqwtn3wargmnj66', 'eyJ0aWQiOjEsImNpZCI6MX0:1qQTMW:YPn2OqPoE8kn2UwFHgZqVEdwiS4Vrp2X3SoDZCzQRxk', '2023-07-31 14:55:04.644867'),
('xk5km3iz2py53d9mpts8guqx95qpjeo4', 'eyJ0aWQiOjksImNpZCI6Mn0:1qM1Hi:9s_haekDgex4CM7H5kmW7VbsM7kANbyuOKRWc_pbNUo', '2023-07-19 08:07:42.589695'),
('xkovzi8uh3y9xqdj8m9oq14jhcu6vwto', 'eyJ0aWQiOjEsImNpZCI6MX0:1qZp14:LbteH5ekqpwJ5750WIqpSy4iJsVUJJ41GYFY0dKixNk', '2023-08-26 09:51:34.574466'),
('xlmjev9jxm391322f8toynqqrequ3d7u', 'eyJ0aWQiOjEsImNpZCI6MX0:1qOZCZ:H9lNGtUsAdIgxylJmzRzOinlmp5l0o3iImq_PCOAOcI', '2023-07-26 08:44:55.808875'),
('xp12400hs0dendtn32xj1jv9r8idr92u', 'eyJ0aWQiOjEyLCJjaWQiOjIsInVpZCI6OX0:1qF5pk:K8accDZx4Bea5eh1UkW4WzyoLp-fmB00HwEj2RTUbRI', '2023-06-30 05:34:12.756171'),
('xphp2ogbcx6mqfpopdp6vlhwq3itc7st', 'eyJ0aWQiOjEsImNpZCI6MX0:1qQMJt:pVMhCRLsJDGGrCsS3jfNmCUdkl2ZXsOyUwt09mdvlXo', '2023-07-31 07:23:53.230321'),
('xpnhuefuc4b760y29ovrp3q9hvmrba3r', 'eyJ0aWQiOjEsImNpZCI6MX0:1qaXKn:xnoP5jyudnGBWnaFH2IuhCXdecsJe9BFNI4_MCtKUXM', '2023-08-28 09:10:53.534804'),
('xps77rjkh0m8jcsfbq5fuizbtr7k6uwd', 'eyJ0aWQiOjIsImNpZCI6MX0:1qVDzx:FG-qlsacDo4pDM9IIU-RCVBjljuuu8W4VliK_VtPuBk', '2023-08-13 17:31:25.667205'),
('xsceg06dycmvhv95ax3yzor78hq3veb0', 'eyJ0aWQiOjEsImNpZCI6MX0:1qaUAw:1xMGaSOIZv0ugHCKaNTUxVpaVAu8aPXs0MEwsSVdz38', '2023-08-28 05:48:30.958652'),
('xsjrdx17urwrny20opxiy93x290upiud', '.eJyrVkrOTFGyUjJU0lEqBbOMTIHMEqhgLQCJBwgT:1qWXkG:kwyPJSd7YL1-5DONSiwHj09Ua_tDuc6UXm37pE_cOaI', '2023-08-17 08:48:40.046998'),
('xsr2iwni5jwd264vqyoya5xefxnyv2x7', 'eyJ0aWQiOjEsInVpZCI6MSwiY2lkIjoxfQ:1qbZtJ:TkiNK8p1a9kARL3VNNEVzZhQRTDCIVhai3d4yc8HPf8', '2023-08-31 06:06:49.710365'),
('xsv4yb61vr3ci4fzmwbk5qzm548f7mj8', 'eyJ0aWQiOjksImNpZCI6Mn0:1qLlHz:-A9s57tmspuSmGqv5az2E9s0RSbZ4-bXHBpCCp4Sd5w', '2023-07-18 15:02:55.928148'),
('xtryjd4azxtmh2hlkc9xyfn5itzhxf94', 'eyJ0aWQiOjEsImNpZCI6MX0:1qa669:_ft9qnhLErh9KCO99mTzi2gZRXAaEmW1aYDWoEDrsIg', '2023-08-27 04:05:57.899735'),
('xtt0uoy706szp9rcesyqdtgug0qic9qr', 'eyJ0aWQiOjEsImNpZCI6MX0:1qONma:vV1IPrGJZljUXXeWeDXT0xstk8xN2VDzvde-ixJwwIA', '2023-07-25 20:33:20.575664'),
('xvtsbjs2y3x5xri4ofkwthar2u06qn3o', 'eyJ0aWQiOjEsImNpZCI6MX0:1qIR3x:Aaa23DGUGxbPGO6MkNmcfaVTuOAZgj-w1cfrtkqZLKw', '2023-07-09 10:50:41.800417'),
('xvwrkq46sh0ix0t6gb140qglu9jcky5s', 'eyJ0aWQiOjksImNpZCI6Mn0:1qHf5g:xpZO7WxEpHlP5bUB8uW3Osr2_R-3xP974yXNAXMJNEY', '2023-07-07 07:37:16.422716'),
('xw3pltbtlvhq19nth6xdqgryz8uxykf3', 'eyJ0aWQiOjksImNpZCI6Mn0:1qMKFN:mTlUFvk8oJ1DwK4V-30s1F1sx0K2GXe9-wYYKefg78A', '2023-07-20 04:22:33.019393'),
('xxcd2w5x2lu43qf9r4azu30mszcyefub', 'eyJ0aWQiOjEsImNpZCI6MX0:1qZzca:U1tVKpsSy6mqO2htV-gR-o_PNnmP-kq7rISPzkkS2Mk', '2023-08-26 21:11:00.745704'),
('xykbyzk3a7do4jmzya0chr78va4q0li6', 'eyJ0aWQiOjEsImNpZCI6MX0:1qaIQi:qqPqG8cT1hqHcHRz4BPooKzxLiV7jCTb4jZx_OQhwp0', '2023-08-27 17:16:00.835751'),
('xyr378mb1hrm78rzp5gpdb8dujh5ju6e', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPeDE:xDFYFdGGpCy0A9QtoDQ3WamCsCNd1JjC3QIW9N9Y3qk', '2023-07-29 08:18:04.772888'),
('xyu8yabopyjxhkiw78md2muormk576i4', 'eyJjaWQiOjEsInVpZCI6MSwidGlkIjoxOX0:1qZQbk:SN3RFAQxM4d4aO-L7uCMQ2H7tN0krfaFGnjhK7E248M', '2023-08-25 07:47:48.459810'),
('y05letmbxc3x3lh5cyq5dvibwt6f5us7', '.eJyrVkrOTFGyUjJU0lEqhbNKoKxaAIFqB90:1qRBIW:PEQFUnr2xDRMnOYy02vu1kpjwhhSpdi_CS3IPS0LwKw', '2023-08-02 13:49:52.858520'),
('y2rw3zyrhhxa0kw3eujokqchh71gpme5', '.eJxFisEKgzAQBf_lnaUQbC3JyV9Z0qCWblaSDUWK_-4KBec4Mz-IrgjP3t-HR4dImiYpG4LrkIkTAohL05lgVbJSVHP-j8nEtHyuzbt3y-N0ylsUtmGlWr9SXvY4A_sBHa0j4w:1qLK9Z:Psz-msUr0u4HhZIbzp9mceCXn_Sd-bHTakZ_vPSTwgY', '2023-07-17 10:04:25.132795'),
('y34m0qbpo1wb7punvrprpn9v7xkwwtxi', 'eyJ0aWQiOjEsImNpZCI6MX0:1qck1J:Sl9kkKzkC5eDYslETOmD6wi8KNvwVHtig0UzSM7xr5I', '2023-09-03 11:07:53.116265'),
('y38pxa40vh6v1gh5ypf0eblefckuttsz', '.eJyrVkrOTFGyUjJU0lEqBbNMgawSqFgtAIGeB-E:1qU3L9:ceBelEY7BCEvMkaE8A_WiSBm1vc_QTuK1xk12jGixzE', '2023-08-10 11:56:27.187975'),
('y5w7prfgxgse35619jwv145g4h0erogb', 'eyJ0aWQiOjEsImNpZCI6MX0:1qZnOQ:Y4kJvT8kNbOJm32tYtMa5ZvDsRX0gAJidhwRwLEjsvI', '2023-08-26 08:07:34.791546'),
('y6scvde3j5uoy22ms4t98pbz0s1916a5', 'eyJ0aWQiOjEsImNpZCI6MX0:1qZnlk:5h8MBGE8u0gXhkurVhraKJXpVXbIw5ShWJP7LYpu1GE', '2023-08-26 08:31:40.233664'),
('y6v1yrun28fmxpinmxmqughza7075jyi', 'eyJjaWQiOjEsInVpZCI6MjgsInRpZCI6MX0:1qZmoB:3MuZrw2yUDuAPj50sV9kzrj9vCVI1UhJU86m4SKO6x8', '2023-08-26 07:30:07.747875'),
('y7td6jxvkowfjaq5luafldtcjglzkk43', '.eJyrVkrOTFGyUjJU0lEqhbNKoKxaAIFqB90:1qRtul:okvhHG0q9CaJce8rCC7L0nzr48W2y2TPkcJop7ghnws', '2023-08-04 13:28:19.589426'),
('y8nh9qbmoksfb25t1lo2uhib0qhiaqcn', 'eyJ0aWQiOjEsImNpZCI6MX0:1qNEPd:dA5-S-5FUa4VwW9IIFvAH2lTOM3-qWWM8TstDsqZhSQ', '2023-07-22 16:20:53.702042'),
('y8ozogzznpb3hyvj6dd4f09839ptxupi', 'eyJ0aWQiOjEsImNpZCI6MX0:1qc4cK:MNRmv8cv9h9yASU4fGL8CzJPM6tvsWFSGlAO3dZ9P0s', '2023-09-01 14:55:20.054799'),
('yb4amkfv9mjn52a0arwe5tlehwv8pxm9', 'eyJ0aWQiOjgsImNpZCI6NH0:1qQggO:50FWJUVj1nwHsxWtK1u98jqAIhFiIt4Lc-GD9GqSNDo', '2023-08-01 05:08:28.230735'),
('yd8w5jgvq49zjj2il2mkjputs4kabovq', 'eyJ0aWQiOjEsImNpZCI6MX0:1qK3k6:vr5dNWKg2SJF62sghSFNItDFuAX5P9ulcLVFuYLOFOg', '2023-07-13 22:20:54.054597'),
('yegd6zhzx1vzaewxzj13ymmtvmsg8qw2', 'eyJ0aWQiOjEsImNpZCI6MX0:1qcnVy:rWVQEWQcAe4LEQjmu-7Cf9rQOPhZYmtp-hOFBC8QzyQ', '2023-09-03 14:51:46.482351'),
('yekvglurk37957tbty7ssddr3yt6h198', '.eJxFiksKgDAMBe_y1iLUjaQrrxJq8YNtpEZExLsbQXCWM3NBdIWnhsi1FQJrHKSc8K5C5hThwansOjKsSlYOao4-TMbE0_Jv5OY9d8Mr6yDJhpW37ZDS2-MM3A8e8CPm:1qHKMh:32KWzLnhBMCeR59Ko99XJSo0QkwQCuQsK5q841gUhSA', '2023-07-06 09:29:27.477290'),
('ygeu4pdcrs4hfajrj18rbl6xckvf5zn5', 'eyJjaWQiOjIsInVpZCI6OSwidGlkIjo5fQ:1qcIZx:Y5OugSjz39B6BU6n63kFd-AdYQUIbSVsk_abHlHnn5A', '2023-09-02 05:49:49.166527'),
('yh3vmyljdoc5swbwapgdyc8t4gan2ok9', 'eyJ0aWQiOjEsImNpZCI6MX0:1qbf8S:sDU0GOFaSxwr6lIE2y3i5qTUdZ-Js1msBbBd1Xp0NIs', '2023-08-31 11:42:48.487037'),
('yk6xdolidtg1ee7ezjigegwh77bb9kg7', 'eyJ0aWQiOjEsImNpZCI6MX0:1qKYJv:DSUs5nvEZ4yrvtq_2ylUEcMIt76POkZWyK8Pi_eMIYI', '2023-07-15 06:59:55.372615'),
('ykwhn8puzicucab9c9lqf3ydo0zoqeah', 'eyJ0aWQiOjEsImNpZCI6MX0:1qcyit:7VmVsp9keKj_NoQJ0tnkAjAP7aiYxBwbqGIUA85Muw0', '2023-09-04 02:49:51.554908'),
('yl4tpvwz89nijzxaofllunmovj1yyb73', 'eyJ0aWQiOjEsImNpZCI6MX0:1qK1yo:bqRPcCDPqp3sxZbAowo81eev5rrC08jUQwq7mCWIAj0', '2023-07-13 20:27:58.153475'),
('yly7ifdfj63smqzv656scjks7susl5cs', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPSVb:QWfV8qQ745adFg6msx4_411Us5DLvbx4hujDZ0_y5VI', '2023-07-28 19:48:15.549041'),
('ym6vpvayzseb83ayua2oo2k7ziyrqpls', 'eyJ0aWQiOjEsImNpZCI6MX0:1qJVRS:tNGnjKo95E0TxBEr4yBdo91SY-LaLKsLnAPIJXYcIBA', '2023-07-12 09:43:22.143616'),
('ymvmzs5frul4evo4inl26wf7ox458utq', 'eyJ0aWQiOjksImNpZCI6Mn0:1qLOmm:LQbU89aaHQ-CTh5WBXLYPgrfjAI1VcIgreMRQwodcnI', '2023-07-17 15:01:12.669498'),
('yoptgsuho2aiy3bi1whss7azyqxzsh29', 'eyJ0aWQiOjgsImNpZCI6NH0:1qI2DZ:QBcBat-j_ELe6sZ7WjWT5ev88rZ8jdok3CbtBRNQ9pA', '2023-07-08 08:18:57.094287'),
('yqjmtlklprekk99u0fstk8k2l8akoxqs', '.eJw1jcEKg0AMRP8l5yIuRdA9-SclrKlucTcSs5VS-u9GsblM5jGZfIF1Ad-0dXd3NwioNLJ8wJvJmAg8ODDOWTHo5ShhnG3HJEUn7Nyr5H48YBU4WWDBdd1YhiNv8z95vEniM5JxlUJWG4fzU7lUT_3tU0ct5g:1qTK40:m4iRiDMaVVNJMtE4lPy0u7R_BYbH1MQr061KXdUaS24', '2023-08-08 11:35:44.495182'),
('yrvee8tvvhbaypgjhl3cq5c1p5c3prye', 'eyJ0aWQiOjEsImNpZCI6MX0:1qZx4p:JegPVAO4DESmwW8I9ZNXsMhA4SYbOfo0VTRepCs73ns', '2023-08-26 18:27:59.633769'),
('yrz6bf6fqk9o2ow407pt2cqx1blfjoij', 'eyJ0aWQiOjksImNpZCI6Mn0:1qHiT6:x0XekOaD5Nbg2t-1cpQ1ZJbmRUFI1uwbCkZw1eV04XQ', '2023-07-07 11:13:40.436709'),
('ys5igbcymk2me5tdss9afzgvt2l1kd3g', 'eyJ0aWQiOjEsImNpZCI6MX0:1qZo89:czgEH7CHywkONYRmbSyKJ3E89OeaQ6HATJQ25Q5llEQ', '2023-08-26 08:54:49.259936'),
('yvf8il3mtv7ewiv9gdjsncrcerqpddbs', 'eyJjaWQiOjEsInVpZCI6MSwidGlkIjoxfQ:1qZ1rt:QKfUIIfcRHqJaQofp1wD40rtRESDm4Wr4B9wxuy9M-c', '2023-08-24 05:22:49.432076'),
('ywql9d1q0ko9mdcgq7ki0382ptzjc0yv', 'eyJ0aWQiOjksImNpZCI6Mn0:1qMYEP:-vxx2g6CKYrgAsSeLzc2jYqfP4CSQgq7NhtQ0yx0Abo', '2023-07-20 19:18:29.573764'),
('yxr720ld1r1nwvtyez286mw8czij5jag', 'eyJ0aWQiOjEsImNpZCI6MX0:1qZoem:RUQP3Ksao87qIYdZoUph9vzCHxFAuLcvLgm63vY90ok', '2023-08-26 09:28:32.844137'),
('yye5l91fceu992xpvj83usm20n7zf2it', 'eyJ0aWQiOjEsImNpZCI6MSwidWlkIjoyNn0:1qTdff:i7o98E7NebKBfDLHQa9iqS8fzM0zhYkloic4XT6lu2c', '2023-08-09 08:31:55.089391'),
('yzzm1gd3u8j7l7iex8haw0kaklwxufyv', 'eyJ0aWQiOjEsImNpZCI6MX0:1qILpr:nJ7owB0l32fgrDSlWhW2faSyRmCfIjAjrxag2gBhups', '2023-07-09 05:15:47.316835'),
('z10ody3jlduj1dlaj0pvip0p4slcmdw7', 'eyJ0aWQiOjksImNpZCI6Mn0:1qHOqX:B0Pf3iMx4QNRBKdYy-p7ppbiKCDuRYNpAM4WTSGcswQ', '2023-07-06 14:16:33.962235'),
('z1ppncrecyw8tl7i8cvhjq68k231t8ax', 'eyJ0aWQiOjEsImNpZCI6MX0:1qcJqK:np6YAkUk6JfcC6QypHaVQLf82OZjbflX9beh5el4Q1c', '2023-09-02 07:10:48.588532'),
('z3f6xgag9i57hmo2xpq6o39gokzz84j6', 'eyJ0aWQiOjEsImNpZCI6MX0:1qcNpe:pLnF1Z2ab_Ah2NC8oU1yVVIJUmSRiKlBAtXUf-sFi2o', '2023-09-02 11:26:22.633855'),
('z44y0ko59xfqca2jer8gbta5sp3x0wkl', 'eyJ0aWQiOjEsImNpZCI6MX0:1qL6pF:nB76OGpcV4I6KwtmlECR8Xp6ds2oxSG6kBnENs4jxlU', '2023-07-16 19:50:33.265959'),
('z4ww90bynk4pokkv0jyezhmdlvxs6pa5', 'eyJ0aWQiOjEsImNpZCI6MX0:1qaZTR:n_8samW_c9jZ_fjyRVfjkcfIYEPO7RGiDyX4F21xy_Y', '2023-08-28 11:27:57.985302'),
('z5c3401olf92ojb8nxz5vze8jq7z2upa', 'eyJ0aWQiOjEsImNpZCI6MX0:1qZwrV:G6BKMZLpkJMwElWxXGTPcIwld_DEywgR8hkdwLbqd2c', '2023-08-26 18:14:13.517841'),
('z88dqq30k3k4h9jimkx5v4af41eqdxv6', 'eyJ0aWQiOjEsImNpZCI6MX0:1qQCpC:6KEEefo8FjQtrQd0V6LwVSy-F7hypXyQ8yw9sgXcUn8', '2023-07-30 21:15:34.667150'),
('z89ebzprkqealr3wt33ueh0uu2rzxilk', 'eyJ0aWQiOjksImNpZCI6Mn0:1qMTQk:lr7Uae1ARqtN4TAMDSK1UugMBplFSgwXufib1F2Hj3c', '2023-07-20 14:10:54.157639'),
('z8z6bzuy7cdh7yid0buekfmj5tvystxk', 'eyJjaWQiOjIsInVpZCI6IjkiLCJ0aWQiOjl9:1qeDOf:3JgylBXLyyuHFf4a5dxUZmihCKOPkWXQjSyZLveQ9rU', '2023-09-07 12:42:05.315452'),
('z9odamx5uxhc8bf83lkkb2y14uzmojfv', 'eyJ0aWQiOjEsImNpZCI6MX0:1qd9rJ:RycR6UyDvN69Qdchh0D0VAaKdxFNTBLlEdL78fEZG-g', '2023-09-04 14:43:17.562413'),
('za8r8bv7je3owr09z07jogg7fp5j0fbd', 'eyJ0aWQiOjEsImNpZCI6MX0:1qbmW1:G3zuHNOErxx9mLEyrv0TkE7Kd_HD9-SFXUCVEvk_9WE', '2023-08-31 19:35:37.368001'),
('zb745tevaa3v5ztdqtlg7g3ncdgtevuw', 'eyJ0aWQiOjEsImNpZCI6MX0:1qKm3Z:Kz4dIa5IbSD9I2G5DFmMYFWPZ8PO5TieBuYGqxjthr8', '2023-07-15 21:39:57.199596'),
('zcujebpwf0sf8mud9mxqpnf44s6dyi2y', 'eyJ0aWQiOjEsImNpZCI6MX0:1qZws9:OQuVeTWKvCKmPzrIlk5cvZewGTGU9lWF_RsyjR9W6iE', '2023-08-26 18:14:53.449889'),
('zd7r70z19agxnj1o6weapz6sl0ef2wei', 'eyJ0aWQiOjIyLCJjaWQiOjN9:1qbvAG:MRbIB_zXysiYhJJyAU-RTRso5GgV_C3Gab00BYhppts', '2023-09-01 04:49:44.976330'),
('zds89u9cjfgakaktho3jdntg5f0u65q8', 'eyJjaWQiOjEsInVpZCI6MSwidGlkIjoxfQ:1qMQg5:1zf1paBIyxmD1MOYMvjASPTOsMYpw85Sqifo1pV24CU', '2023-07-20 11:14:33.015742'),
('zec8gxze04buzdjjp2nud4o0jyrwk5yq', 'eyJjaWQiOjEsInVpZCI6MSwidGlkIjoxfQ:1qPgEI:7U2cSp_Pxn2hroUk024SBY1K8JRSMPbo4tnZtrp5TnQ', '2023-07-29 10:27:18.246708'),
('zgrmpom8rfebx81srx3mxcz03mwxwgkd', 'eyJ0aWQiOjEsImNpZCI6MX0:1qQTZn:9OiS302T-IhaaO1gljMMHa_G39uEiQm0ahCGTrZok6c', '2023-07-31 15:08:47.481100'),
('zhwyo9gyjn39gjyrpea4xmn1a058vb5j', 'eyJ0aWQiOjEsImNpZCI6MX0:1qcU3A:o2rUeQexYKUxhbxKHhBxCS5ljrgiic0xSo6lPvPaPGM', '2023-09-02 18:04:44.891678'),
('zioh1xe2tx7i4wf92i4dunapq1cgyadh', 'eyJ0aWQiOjEsImNpZCI6MX0:1qa4YE:WWMs3SvQuCJs5yJmawdzgEFvzzeWIojrUIUEw4mIqJ8', '2023-08-27 02:26:50.474628'),
('zjmgwpurye8z74a1hr230e7jqpmnvbr1', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPJs0:7nXzWDMxvFr3UtEdX5UZPi1FSecWnIZ-tO-Iz-JvgII', '2023-07-28 10:34:48.945856'),
('zktx3xjvc317inz6gzhrsk2zw3m8ej24', 'eyJ0aWQiOjEsImNpZCI6MX0:1qOu8s:FU9IlehU7oLTdAW-moe_pdz4lvjdmlkUXV68bHP7hEE', '2023-07-27 07:06:30.769218'),
('zl1u42t7wrlf3f4xxq0k7jt40cntd12o', 'eyJ0aWQiOjEsImNpZCI6MX0:1qbCla:DwgY9GqYod-cNhFD6I0VTDDCA3zTw2xpUCQJt6N2GUI', '2023-08-30 05:25:18.174786'),
('zm2jtpvwfe0vlfhn75e0kch7m6l5lhwz', 'eyJ0aWQiOjEsImNpZCI6MSwidWlkIjoyNX0:1qZqqb:uyFTaDTE27SWHpHqt0RumVXqJGJ02TuMTxX-PakJ5Hg', '2023-08-26 11:48:53.263282'),
('znml92d36ds7zycciq2fkilwmbj6nxph', 'eyJjaWQiOjIsInVpZCI6OSwidGlkIjo5fQ:1qeYHD:Q6f3xx8vqO9pAy4G2MSbfB8BrcBGeKGsB7m2Depth8I', '2023-09-08 10:59:47.688174'),
('znn079bnitt2uqyueovn3vn2pthfgxjs', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPJon:2mgGiAw5zcPOLq7A_7NWB7Kl_kwB4OdwVQUSP0E-7fE', '2023-07-28 10:31:29.587845'),
('zq9iw83nvcwbr77yznym2r5ulpcq5gcl', 'eyJjaWQiOjEsInVpZCI6MSwidGlkIjoxfQ:1qUlJg:fdFYC2SS1J05b__owMlMFW4M0mGEy3BoHF9YLhifGt4', '2023-08-12 10:53:52.637356'),
('zqqyk4ld7g774g6a2ber2qv3qyp3efn2', 'eyJjaWQiOjIsInVpZCI6MTB9:1qd5lA:5lD7PKc0xAMrKCO7NA9qvUclyrU4IfV1jg9rlePMxKI', '2023-09-04 10:20:40.564709'),
('zr3wba3jxce2am6o44s5n09bhhuhmjp6', 'eyJ0aWQiOjEsImNpZCI6MX0:1qZnDE:sZOr5aOWywojpq2MDfPgAta8pE0QAMKEMaHcy4gvVK8', '2023-08-26 07:56:00.624467'),
('zsjghdkf1zmmq569jt2i8dxsz9lvh4wm', 'eyJ0aWQiOjEsImNpZCI6MX0:1qbbCd:s-D1c4qqBjCBNpCd3-xegl7DYscfTwtyNcyzd_TKwNo', '2023-08-31 07:30:51.906384'),
('ztaxj0ztnlevh7p468yfeuhmhycekxgi', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPjQb:AXnFIps-RztnkavZFFCIUP0JcZ0C0_HMEG-_JSz6izE', '2023-07-29 13:52:13.320819'),
('zv2qsofy9nio3xsvzigz2cp5cy0ytsk2', 'eyJ0aWQiOjEsImNpZCI6MX0:1qP3WS:QIDM6wd6A1DcEoHozzbbhmIU13trMlWbCUuDh6cgmys', '2023-07-27 17:07:28.934006'),
('zvzm08wvdf83cts9rr8ebf87q7vywy84', 'eyJ0aWQiOjEsImNpZCI6MX0:1qc83Q:X8Nwi9Y1k1piWEmb5q_qyFRujMoQCVD1cGN4M5bAcvs', '2023-09-01 18:35:32.884490'),
('zwcp3uxixflhgm2t0v11lvmwl1zczrnv', 'eyJ0aWQiOjEsImNpZCI6MX0:1qIwhD:He7WHAmxNmN2XlIPeTEoovERw-vcMdULh53auDnvE0A', '2023-07-10 20:37:19.485010'),
('zwki34xlyjelx2cdnenjpf6epc7wowmx', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPkSd:VtKqsW2P2g9gAF4rMGJFMCinbeebpVNgJ9_bITcaFz0', '2023-07-29 14:58:23.443881'),
('zzb61q8q10w6ojbj0js3ydszzxsyc82q', 'eyJ0aWQiOjEsImNpZCI6MX0:1qPJ4k:Tlrd84vYpMFmSyu9Im62yHFat-vE91M1VwQ29B8eXJ8', '2023-07-28 09:43:54.819686'),
('zzjj8gpnsut7cmnjgavnpjtt3l0u5bo4', 'eyJ0aWQiOjIyLCJjaWQiOjN9:1qbfiM:MFkoyddxJIn6C98nDGqJ-XFd3GHGjNB3kIvsqG-Jw14', '2023-08-31 12:19:54.163914');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminapp_aboutus`
--
ALTER TABLE `adminapp_aboutus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_aboutus_Category_id_1ea12ad2_fk_adminapp_category_id` (`Category_id`),
  ADD KEY `adminapp_aboutus_Signup_id_a887a554_fk_adminapp_signup_id` (`Signup_id`),
  ADD KEY `adminapp_aboutus_ThemeImages_id_4ba24ff5_fk_adminapp_` (`ThemeImages_id`);

--
-- Indexes for table `adminapp_addactivities`
--
ALTER TABLE `adminapp_addactivities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_addactiviti_Category_id_1fb98333_fk_adminapp_` (`Category_id`),
  ADD KEY `adminapp_addactivities_Signup_id_d65c30c2_fk_adminapp_signup_id` (`Signup_id`),
  ADD KEY `adminapp_addactiviti_ThemeImages_id_86676bf6_fk_adminapp_` (`ThemeImages_id`);

--
-- Indexes for table `adminapp_addamenities`
--
ALTER TABLE `adminapp_addamenities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_addamenitie_Category_id_aa6b564b_fk_adminapp_` (`Category_id`),
  ADD KEY `adminapp_addamenities_Signup_id_aa5f1d8c_fk_adminapp_signup_id` (`Signup_id`),
  ADD KEY `adminapp_addamenitie_ThemeImages_id_7171a739_fk_adminapp_` (`ThemeImages_id`);

--
-- Indexes for table `adminapp_addbedtype`
--
ALTER TABLE `adminapp_addbedtype`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_addbedtype_Category_id_e0bd8258_fk_adminapp_category_id` (`Category_id`),
  ADD KEY `adminapp_addbedtype_Signup_id_be313d61_fk_adminapp_signup_id` (`Signup_id`),
  ADD KEY `adminapp_addbedtype_ThemeImages_id_14692ff5_fk_adminapp_` (`ThemeImages_id`);

--
-- Indexes for table `adminapp_addfacility`
--
ALTER TABLE `adminapp_addfacility`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_addfacility_Category_id_e562c86f_fk_adminapp_` (`Category_id`),
  ADD KEY `adminapp_addfacility_Signup_id_fe13ef1a_fk_adminapp_signup_id` (`Signup_id`),
  ADD KEY `adminapp_addfacility_ThemeImages_id_87d3ad84_fk_adminapp_` (`ThemeImages_id`);

--
-- Indexes for table `adminapp_addfloor`
--
ALTER TABLE `adminapp_addfloor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_addfloor_Category_id_b3b0d755_fk_adminapp_category_id` (`Category_id`),
  ADD KEY `adminapp_addfloor_Signup_id_fe42cfc4_fk_adminapp_signup_id` (`Signup_id`),
  ADD KEY `adminapp_addfloor_ThemeImages_id_07884215_fk_adminapp_` (`ThemeImages_id`);

--
-- Indexes for table `adminapp_addviews`
--
ALTER TABLE `adminapp_addviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_addviews_Category_id_c292316a_fk_adminapp_category_id` (`Category_id`),
  ADD KEY `adminapp_addviews_Signup_id_f50bf0b7_fk_adminapp_signup_id` (`Signup_id`),
  ADD KEY `adminapp_addviews_ThemeImages_id_4e2af941_fk_adminapp_` (`ThemeImages_id`);

--
-- Indexes for table `adminapp_agencydetail`
--
ALTER TABLE `adminapp_agencydetail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_agencydetai_Category_id_9602ed3b_fk_adminapp_` (`Category_id`),
  ADD KEY `adminapp_agencydetail_Signup_id_f3c30167_fk_adminapp_signup_id` (`Signup_id`),
  ADD KEY `adminapp_agencydetai_ThemeImages_id_30563cf0_fk_adminapp_` (`ThemeImages_id`);

--
-- Indexes for table `adminapp_blackoutday`
--
ALTER TABLE `adminapp_blackoutday`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_blackoutday_Category_id_163128c3_fk_adminapp_` (`Category_id`),
  ADD KEY `adminapp_blackoutday_Signup_id_4a9a551c_fk_adminapp_signup_id` (`Signup_id`),
  ADD KEY `adminapp_blackoutday_ThemeImages_id_73c9487a_fk_adminapp_` (`ThemeImages_id`);

--
-- Indexes for table `adminapp_booking`
--
ALTER TABLE `adminapp_booking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_booking_Property_id_207d7c6c_fk_adminapp_property_id` (`Property_id`),
  ADD KEY `adminapp_booking_RoomList_id_b38f7bdc_fk_adminapp_roomlist_id` (`RoomList_id`),
  ADD KEY `adminapp_booking_Category_id_279b7a8e_fk_adminapp_category_id` (`Category_id`),
  ADD KEY `adminapp_booking_Signup_id_de3d40c3_fk_adminapp_signup_id` (`Signup_id`),
  ADD KEY `adminapp_booking_ThemeImages_id_45b3f425_fk_adminapp_` (`ThemeImages_id`);

--
-- Indexes for table `adminapp_cancellationpolicy`
--
ALTER TABLE `adminapp_cancellationpolicy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_cancellatio_Category_id_d60cf33b_fk_adminapp_` (`Category_id`),
  ADD KEY `adminapp_cancellatio_Signup_id_0e391ec6_fk_adminapp_` (`Signup_id`),
  ADD KEY `adminapp_cancellatio_ThemeImages_id_532349fb_fk_adminapp_` (`ThemeImages_id`);

--
-- Indexes for table `adminapp_category`
--
ALTER TABLE `adminapp_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adminapp_conciergelist`
--
ALTER TABLE `adminapp_conciergelist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_conciergeli_Category_id_8ff89ecc_fk_adminapp_` (`Category_id`),
  ADD KEY `adminapp_conciergelist_Signup_id_ccff0437_fk_adminapp_signup_id` (`Signup_id`),
  ADD KEY `adminapp_conciergeli_ThemeImages_id_3b1a0410_fk_adminapp_` (`ThemeImages_id`);

--
-- Indexes for table `adminapp_directorprofile`
--
ALTER TABLE `adminapp_directorprofile`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_directorpro_Category_id_586cc7cc_fk_adminapp_` (`Category_id`),
  ADD KEY `adminapp_directorpro_Signup_id_23c394d6_fk_adminapp_` (`Signup_id`),
  ADD KEY `adminapp_directorpro_ThemeImages_id_d644638b_fk_adminapp_` (`ThemeImages_id`);

--
-- Indexes for table `adminapp_generalaboutus`
--
ALTER TABLE `adminapp_generalaboutus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_generalabou_Category_id_426d8203_fk_adminapp_` (`Category_id`),
  ADD KEY `adminapp_generalaboutus_Signup_id_c6175042_fk_adminapp_signup_id` (`Signup_id`),
  ADD KEY `adminapp_generalabou_ThemeImages_id_d49b0156_fk_adminapp_` (`ThemeImages_id`);

--
-- Indexes for table `adminapp_generalcompanydetail`
--
ALTER TABLE `adminapp_generalcompanydetail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_generalcomp_Category_id_055d013f_fk_adminapp_` (`Category_id`),
  ADD KEY `adminapp_generalcomp_Signup_id_4ebddc77_fk_adminapp_` (`Signup_id`),
  ADD KEY `adminapp_generalcomp_ThemeImages_id_f59a208d_fk_adminapp_` (`ThemeImages_id`);

--
-- Indexes for table `adminapp_generaldirectorprofile`
--
ALTER TABLE `adminapp_generaldirectorprofile`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_generaldire_Category_id_046c15cf_fk_adminapp_` (`Category_id`),
  ADD KEY `adminapp_generaldire_Signup_id_515df61f_fk_adminapp_` (`Signup_id`),
  ADD KEY `adminapp_generaldire_ThemeImages_id_9a116160_fk_adminapp_` (`ThemeImages_id`);

--
-- Indexes for table `adminapp_generalimage`
--
ALTER TABLE `adminapp_generalimage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_generalimag_related_model_id_dc39b97e_fk_adminapp_` (`related_model_id`);

--
-- Indexes for table `adminapp_generalproduct`
--
ALTER TABLE `adminapp_generalproduct`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_generalprod_Category_id_b876315c_fk_adminapp_` (`Category_id`),
  ADD KEY `adminapp_generalproduct_Signup_id_416f11e0_fk_adminapp_signup_id` (`Signup_id`),
  ADD KEY `adminapp_generalprod_ThemeImages_id_e064a507_fk_adminapp_` (`ThemeImages_id`);

--
-- Indexes for table `adminapp_generalseodata`
--
ALTER TABLE `adminapp_generalseodata`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_generalseod_Category_id_89671f02_fk_adminapp_` (`Category_id`),
  ADD KEY `adminapp_generalseodata_Signup_id_5c26671b_fk_adminapp_signup_id` (`Signup_id`),
  ADD KEY `adminapp_generalseod_ThemeImages_id_33abec5d_fk_adminapp_` (`ThemeImages_id`);

--
-- Indexes for table `adminapp_generalservice`
--
ALTER TABLE `adminapp_generalservice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_generalserv_Category_id_b3ab2bb4_fk_adminapp_` (`Category_id`),
  ADD KEY `adminapp_generalservice_Signup_id_aec3fa74_fk_adminapp_signup_id` (`Signup_id`),
  ADD KEY `adminapp_generalserv_ThemeImages_id_63d14080_fk_adminapp_` (`ThemeImages_id`);

--
-- Indexes for table `adminapp_generaltestimonial`
--
ALTER TABLE `adminapp_generaltestimonial`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_generaltest_Category_id_17093501_fk_adminapp_` (`Category_id`),
  ADD KEY `adminapp_generaltest_Signup_id_3805de03_fk_adminapp_` (`Signup_id`),
  ADD KEY `adminapp_generaltest_ThemeImages_id_682eec88_fk_adminapp_` (`ThemeImages_id`);

--
-- Indexes for table `adminapp_image`
--
ALTER TABLE `adminapp_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_image_related_model_id_13547c02_fk_adminapp_aboutus_id` (`related_model_id`);

--
-- Indexes for table `adminapp_meals`
--
ALTER TABLE `adminapp_meals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_meals_Category_id_493726cb_fk_adminapp_category_id` (`Category_id`),
  ADD KEY `adminapp_meals_Signup_id_9acd32fb_fk_adminapp_signup_id` (`Signup_id`),
  ADD KEY `adminapp_meals_ThemeImages_id_80a5f36f_fk_adminapp_` (`ThemeImages_id`);

--
-- Indexes for table `adminapp_mealslist`
--
ALTER TABLE `adminapp_mealslist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_mealslist_Category_id_46a43757_fk_adminapp_category_id` (`Category_id`),
  ADD KEY `adminapp_mealslist_Signup_id_74c2a643_fk_adminapp_signup_id` (`Signup_id`),
  ADD KEY `adminapp_mealslist_ThemeImages_id_ad01fc5f_fk_adminapp_` (`ThemeImages_id`);

--
-- Indexes for table `adminapp_mealslist_mealsitem`
--
ALTER TABLE `adminapp_mealslist_mealsitem`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `adminapp_mealslist_MealsItem_mealslist_id_meals_id_d84510fd_uniq` (`mealslist_id`,`meals_id`),
  ADD KEY `adminapp_mealslist_M_meals_id_a874f8ad_fk_adminapp_` (`meals_id`);

--
-- Indexes for table `adminapp_newgallery`
--
ALTER TABLE `adminapp_newgallery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_newgallery_Signup_id_d94d8c7a_fk_adminapp_signup_id` (`Signup_id`),
  ADD KEY `adminapp_newgallery_ThemeImages_id_084f740a_fk_adminapp_` (`ThemeImages_id`),
  ADD KEY `adminapp_newgallery_Category_id_0c86074c_fk_adminapp_category_id` (`Category_id`);

--
-- Indexes for table `adminapp_order_data`
--
ALTER TABLE `adminapp_order_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_order_data_Category_id_4a661826_fk_adminapp_category_id` (`Category_id`),
  ADD KEY `adminapp_order_data_Signup_id_a8273ffd_fk_adminapp_signup_id` (`Signup_id`),
  ADD KEY `adminapp_order_data_ThemeImages_id_2bff66a3_fk_adminapp_` (`ThemeImages_id`);

--
-- Indexes for table `adminapp_package`
--
ALTER TABLE `adminapp_package`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_package_Category_id_f9f01ddf_fk_adminapp_category_id` (`Category_id`),
  ADD KEY `adminapp_package_Signup_id_b35dc9c3_fk_adminapp_signup_id` (`Signup_id`),
  ADD KEY `adminapp_package_ThemeImages_id_7f5ff66d_fk_adminapp_` (`ThemeImages_id`);

--
-- Indexes for table `adminapp_plan`
--
ALTER TABLE `adminapp_plan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_plan_Category_id_bd5ee833_fk_adminapp_category_id` (`Category_id`),
  ADD KEY `adminapp_plan_ThemeImages_id_29b1a8c6_fk_adminapp_themeimages_id` (`ThemeImages_id`);

--
-- Indexes for table `adminapp_property`
--
ALTER TABLE `adminapp_property`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_property_Category_id_a6122960_fk_adminapp_category_id` (`Category_id`),
  ADD KEY `adminapp_property_Signup_id_38e4db58_fk_adminapp_signup_id` (`Signup_id`),
  ADD KEY `adminapp_property_ThemeImages_id_9246a0a0_fk_adminapp_` (`ThemeImages_id`);

--
-- Indexes for table `adminapp_property_propertyactivities`
--
ALTER TABLE `adminapp_property_propertyactivities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `adminapp_property_Proper_property_id_addactivitie_92e5ee9a_uniq` (`property_id`,`addactivities_id`),
  ADD KEY `adminapp_property_Pr_addactivities_id_8db2e7df_fk_adminapp_` (`addactivities_id`);

--
-- Indexes for table `adminapp_property_propertyamenities`
--
ALTER TABLE `adminapp_property_propertyamenities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `adminapp_property_Proper_property_id_addamenities_356dc079_uniq` (`property_id`,`addamenities_id`),
  ADD KEY `adminapp_property_Pr_addamenities_id_8aeea2fd_fk_adminapp_` (`addamenities_id`);

--
-- Indexes for table `adminapp_property_propertyfacilities`
--
ALTER TABLE `adminapp_property_propertyfacilities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `adminapp_property_Proper_property_id_addfacility__d04159ea_uniq` (`property_id`,`addfacility_id`),
  ADD KEY `adminapp_property_Pr_addfacility_id_049cb98c_fk_adminapp_` (`addfacility_id`);

--
-- Indexes for table `adminapp_resortaboutus`
--
ALTER TABLE `adminapp_resortaboutus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_resortabout_Category_id_84aea510_fk_adminapp_` (`Category_id`),
  ADD KEY `adminapp_resortaboutus_Signup_id_fda43c1f_fk_adminapp_signup_id` (`Signup_id`),
  ADD KEY `adminapp_resortabout_ThemeImages_id_096b42a8_fk_adminapp_` (`ThemeImages_id`);

--
-- Indexes for table `adminapp_resortdetail`
--
ALTER TABLE `adminapp_resortdetail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_resortdetai_Category_id_44da38f1_fk_adminapp_` (`Category_id`),
  ADD KEY `adminapp_resortdetail_Signup_id_5e579393_fk_adminapp_signup_id` (`Signup_id`),
  ADD KEY `adminapp_resortdetai_ThemeImages_id_eb8ff048_fk_adminapp_` (`ThemeImages_id`);

--
-- Indexes for table `adminapp_resortimage`
--
ALTER TABLE `adminapp_resortimage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_resortimage_related_model_id_120964c4_fk_adminapp_` (`related_model_id`);

--
-- Indexes for table `adminapp_resorttestimonial`
--
ALTER TABLE `adminapp_resorttestimonial`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_resorttesti_Category_id_23bb0e0c_fk_adminapp_` (`Category_id`),
  ADD KEY `adminapp_resorttesti_Signup_id_c64af54a_fk_adminapp_` (`Signup_id`),
  ADD KEY `adminapp_resorttesti_ThemeImages_id_ab82c5af_fk_adminapp_` (`ThemeImages_id`);

--
-- Indexes for table `adminapp_roomlist`
--
ALTER TABLE `adminapp_roomlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_roomlist_Property_id_46adf140_fk_adminapp_property_id` (`Property_id`),
  ADD KEY `adminapp_roomlist_RoomBedtype_id_0ca8135a_fk_adminapp_` (`RoomBedtype_id`),
  ADD KEY `adminapp_roomlist_Category_id_1b3b7efc_fk_adminapp_category_id` (`Category_id`),
  ADD KEY `adminapp_roomlist_Signup_id_5ff8c703_fk_adminapp_signup_id` (`Signup_id`),
  ADD KEY `adminapp_roomlist_ThemeImages_id_cb8d5cf5_fk_adminapp_` (`ThemeImages_id`);

--
-- Indexes for table `adminapp_roomlist_roomfacilities`
--
ALTER TABLE `adminapp_roomlist_roomfacilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adminapp_seodata`
--
ALTER TABLE `adminapp_seodata`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_seodata_Category_id_a404eba5_fk_adminapp_category_id` (`Category_id`),
  ADD KEY `adminapp_seodata_Signup_id_4057feb6_fk_adminapp_signup_id` (`Signup_id`),
  ADD KEY `adminapp_seodata_ThemeImages_id_740c251e_fk_adminapp_` (`ThemeImages_id`);

--
-- Indexes for table `adminapp_service`
--
ALTER TABLE `adminapp_service`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_service_Category_id_6b5617a5_fk_adminapp_category_id` (`Category_id`),
  ADD KEY `adminapp_service_Signup_id_05946e8b_fk_adminapp_signup_id` (`Signup_id`),
  ADD KEY `adminapp_service_ThemeImages_id_0a665885_fk_adminapp_` (`ThemeImages_id`);

--
-- Indexes for table `adminapp_signup`
--
ALTER TABLE `adminapp_signup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adminapp_specialday`
--
ALTER TABLE `adminapp_specialday`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_specialday_Category_id_0086e116_fk_adminapp_category_id` (`Category_id`),
  ADD KEY `adminapp_specialday_Signup_id_b814d2b9_fk_adminapp_signup_id` (`Signup_id`),
  ADD KEY `adminapp_specialday_ThemeImages_id_4cf5d136_fk_adminapp_` (`ThemeImages_id`);

--
-- Indexes for table `adminapp_specialrate`
--
ALTER TABLE `adminapp_specialrate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_specialrate_Category_id_5a2aaf48_fk_adminapp_` (`Category_id`),
  ADD KEY `adminapp_specialrate_Signup_id_fe84dc05_fk_adminapp_signup_id` (`Signup_id`),
  ADD KEY `adminapp_specialrate_ThemeImages_id_bb603169_fk_adminapp_` (`ThemeImages_id`);

--
-- Indexes for table `adminapp_tariff`
--
ALTER TABLE `adminapp_tariff`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_tariff_RoomList_id_872af6d2_fk_adminapp_roomlist_id` (`RoomList_id`),
  ADD KEY `adminapp_tariff_Category_id_6bc32450_fk_adminapp_category_id` (`Category_id`),
  ADD KEY `adminapp_tariff_Signup_id_a7328655_fk_adminapp_signup_id` (`Signup_id`),
  ADD KEY `adminapp_tariff_ThemeImages_id_53c8e75b_fk_adminapp_` (`ThemeImages_id`);

--
-- Indexes for table `adminapp_testimonial`
--
ALTER TABLE `adminapp_testimonial`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_testimonial_Category_id_66db8d3f_fk_adminapp_` (`Category_id`),
  ADD KEY `adminapp_testimonial_Signup_id_0054d63a_fk_adminapp_signup_id` (`Signup_id`),
  ADD KEY `adminapp_testimonial_ThemeImages_id_b1da691f_fk_adminapp_` (`ThemeImages_id`);

--
-- Indexes for table `adminapp_themeimages`
--
ALTER TABLE `adminapp_themeimages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_themeimages_Category_id_47204d21_fk_adminapp_` (`Category_id`);

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
-- AUTO_INCREMENT for table `adminapp_aboutus`
--
ALTER TABLE `adminapp_aboutus`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `adminapp_addactivities`
--
ALTER TABLE `adminapp_addactivities`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `adminapp_addamenities`
--
ALTER TABLE `adminapp_addamenities`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `adminapp_addbedtype`
--
ALTER TABLE `adminapp_addbedtype`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `adminapp_addfacility`
--
ALTER TABLE `adminapp_addfacility`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `adminapp_addfloor`
--
ALTER TABLE `adminapp_addfloor`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `adminapp_addviews`
--
ALTER TABLE `adminapp_addviews`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `adminapp_agencydetail`
--
ALTER TABLE `adminapp_agencydetail`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `adminapp_blackoutday`
--
ALTER TABLE `adminapp_blackoutday`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `adminapp_booking`
--
ALTER TABLE `adminapp_booking`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `adminapp_cancellationpolicy`
--
ALTER TABLE `adminapp_cancellationpolicy`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `adminapp_category`
--
ALTER TABLE `adminapp_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `adminapp_conciergelist`
--
ALTER TABLE `adminapp_conciergelist`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `adminapp_directorprofile`
--
ALTER TABLE `adminapp_directorprofile`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `adminapp_generalaboutus`
--
ALTER TABLE `adminapp_generalaboutus`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `adminapp_generalcompanydetail`
--
ALTER TABLE `adminapp_generalcompanydetail`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `adminapp_generaldirectorprofile`
--
ALTER TABLE `adminapp_generaldirectorprofile`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `adminapp_generalimage`
--
ALTER TABLE `adminapp_generalimage`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `adminapp_generalproduct`
--
ALTER TABLE `adminapp_generalproduct`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `adminapp_generalseodata`
--
ALTER TABLE `adminapp_generalseodata`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `adminapp_generalservice`
--
ALTER TABLE `adminapp_generalservice`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `adminapp_generaltestimonial`
--
ALTER TABLE `adminapp_generaltestimonial`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `adminapp_image`
--
ALTER TABLE `adminapp_image`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `adminapp_meals`
--
ALTER TABLE `adminapp_meals`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `adminapp_mealslist`
--
ALTER TABLE `adminapp_mealslist`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `adminapp_mealslist_mealsitem`
--
ALTER TABLE `adminapp_mealslist_mealsitem`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `adminapp_newgallery`
--
ALTER TABLE `adminapp_newgallery`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `adminapp_order_data`
--
ALTER TABLE `adminapp_order_data`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `adminapp_package`
--
ALTER TABLE `adminapp_package`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `adminapp_plan`
--
ALTER TABLE `adminapp_plan`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `adminapp_property`
--
ALTER TABLE `adminapp_property`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `adminapp_property_propertyactivities`
--
ALTER TABLE `adminapp_property_propertyactivities`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `adminapp_property_propertyamenities`
--
ALTER TABLE `adminapp_property_propertyamenities`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `adminapp_property_propertyfacilities`
--
ALTER TABLE `adminapp_property_propertyfacilities`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `adminapp_resortaboutus`
--
ALTER TABLE `adminapp_resortaboutus`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `adminapp_resortdetail`
--
ALTER TABLE `adminapp_resortdetail`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `adminapp_resortimage`
--
ALTER TABLE `adminapp_resortimage`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `adminapp_resorttestimonial`
--
ALTER TABLE `adminapp_resorttestimonial`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `adminapp_roomlist`
--
ALTER TABLE `adminapp_roomlist`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `adminapp_roomlist_roomfacilities`
--
ALTER TABLE `adminapp_roomlist_roomfacilities`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `adminapp_seodata`
--
ALTER TABLE `adminapp_seodata`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `adminapp_service`
--
ALTER TABLE `adminapp_service`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `adminapp_signup`
--
ALTER TABLE `adminapp_signup`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `adminapp_specialday`
--
ALTER TABLE `adminapp_specialday`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `adminapp_specialrate`
--
ALTER TABLE `adminapp_specialrate`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `adminapp_tariff`
--
ALTER TABLE `adminapp_tariff`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `adminapp_testimonial`
--
ALTER TABLE `adminapp_testimonial`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `adminapp_themeimages`
--
ALTER TABLE `adminapp_themeimages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `adminapp_aboutus`
--
ALTER TABLE `adminapp_aboutus`
  ADD CONSTRAINT `adminapp_aboutus_Category_id_1ea12ad2_fk_adminapp_category_id` FOREIGN KEY (`Category_id`) REFERENCES `adminapp_category` (`id`),
  ADD CONSTRAINT `adminapp_aboutus_Signup_id_a887a554_fk_adminapp_signup_id` FOREIGN KEY (`Signup_id`) REFERENCES `adminapp_signup` (`id`),
  ADD CONSTRAINT `adminapp_aboutus_ThemeImages_id_4ba24ff5_fk_adminapp_` FOREIGN KEY (`ThemeImages_id`) REFERENCES `adminapp_themeimages` (`id`);

--
-- Constraints for table `adminapp_addactivities`
--
ALTER TABLE `adminapp_addactivities`
  ADD CONSTRAINT `adminapp_addactiviti_Category_id_1fb98333_fk_adminapp_` FOREIGN KEY (`Category_id`) REFERENCES `adminapp_category` (`id`),
  ADD CONSTRAINT `adminapp_addactiviti_ThemeImages_id_86676bf6_fk_adminapp_` FOREIGN KEY (`ThemeImages_id`) REFERENCES `adminapp_themeimages` (`id`),
  ADD CONSTRAINT `adminapp_addactivities_Signup_id_d65c30c2_fk_adminapp_signup_id` FOREIGN KEY (`Signup_id`) REFERENCES `adminapp_signup` (`id`);

--
-- Constraints for table `adminapp_addamenities`
--
ALTER TABLE `adminapp_addamenities`
  ADD CONSTRAINT `adminapp_addamenitie_Category_id_aa6b564b_fk_adminapp_` FOREIGN KEY (`Category_id`) REFERENCES `adminapp_category` (`id`),
  ADD CONSTRAINT `adminapp_addamenitie_ThemeImages_id_7171a739_fk_adminapp_` FOREIGN KEY (`ThemeImages_id`) REFERENCES `adminapp_themeimages` (`id`),
  ADD CONSTRAINT `adminapp_addamenities_Signup_id_aa5f1d8c_fk_adminapp_signup_id` FOREIGN KEY (`Signup_id`) REFERENCES `adminapp_signup` (`id`);

--
-- Constraints for table `adminapp_addbedtype`
--
ALTER TABLE `adminapp_addbedtype`
  ADD CONSTRAINT `adminapp_addbedtype_Category_id_e0bd8258_fk_adminapp_category_id` FOREIGN KEY (`Category_id`) REFERENCES `adminapp_category` (`id`),
  ADD CONSTRAINT `adminapp_addbedtype_Signup_id_be313d61_fk_adminapp_signup_id` FOREIGN KEY (`Signup_id`) REFERENCES `adminapp_signup` (`id`),
  ADD CONSTRAINT `adminapp_addbedtype_ThemeImages_id_14692ff5_fk_adminapp_` FOREIGN KEY (`ThemeImages_id`) REFERENCES `adminapp_themeimages` (`id`);

--
-- Constraints for table `adminapp_addfacility`
--
ALTER TABLE `adminapp_addfacility`
  ADD CONSTRAINT `adminapp_addfacility_Category_id_e562c86f_fk_adminapp_` FOREIGN KEY (`Category_id`) REFERENCES `adminapp_category` (`id`),
  ADD CONSTRAINT `adminapp_addfacility_Signup_id_fe13ef1a_fk_adminapp_signup_id` FOREIGN KEY (`Signup_id`) REFERENCES `adminapp_signup` (`id`),
  ADD CONSTRAINT `adminapp_addfacility_ThemeImages_id_87d3ad84_fk_adminapp_` FOREIGN KEY (`ThemeImages_id`) REFERENCES `adminapp_themeimages` (`id`);

--
-- Constraints for table `adminapp_addfloor`
--
ALTER TABLE `adminapp_addfloor`
  ADD CONSTRAINT `adminapp_addfloor_Category_id_b3b0d755_fk_adminapp_category_id` FOREIGN KEY (`Category_id`) REFERENCES `adminapp_category` (`id`),
  ADD CONSTRAINT `adminapp_addfloor_Signup_id_fe42cfc4_fk_adminapp_signup_id` FOREIGN KEY (`Signup_id`) REFERENCES `adminapp_signup` (`id`),
  ADD CONSTRAINT `adminapp_addfloor_ThemeImages_id_07884215_fk_adminapp_` FOREIGN KEY (`ThemeImages_id`) REFERENCES `adminapp_themeimages` (`id`);

--
-- Constraints for table `adminapp_addviews`
--
ALTER TABLE `adminapp_addviews`
  ADD CONSTRAINT `adminapp_addviews_Category_id_c292316a_fk_adminapp_category_id` FOREIGN KEY (`Category_id`) REFERENCES `adminapp_category` (`id`),
  ADD CONSTRAINT `adminapp_addviews_Signup_id_f50bf0b7_fk_adminapp_signup_id` FOREIGN KEY (`Signup_id`) REFERENCES `adminapp_signup` (`id`),
  ADD CONSTRAINT `adminapp_addviews_ThemeImages_id_4e2af941_fk_adminapp_` FOREIGN KEY (`ThemeImages_id`) REFERENCES `adminapp_themeimages` (`id`);

--
-- Constraints for table `adminapp_agencydetail`
--
ALTER TABLE `adminapp_agencydetail`
  ADD CONSTRAINT `adminapp_agencydetai_Category_id_9602ed3b_fk_adminapp_` FOREIGN KEY (`Category_id`) REFERENCES `adminapp_category` (`id`),
  ADD CONSTRAINT `adminapp_agencydetai_ThemeImages_id_30563cf0_fk_adminapp_` FOREIGN KEY (`ThemeImages_id`) REFERENCES `adminapp_themeimages` (`id`),
  ADD CONSTRAINT `adminapp_agencydetail_Signup_id_f3c30167_fk_adminapp_signup_id` FOREIGN KEY (`Signup_id`) REFERENCES `adminapp_signup` (`id`);

--
-- Constraints for table `adminapp_blackoutday`
--
ALTER TABLE `adminapp_blackoutday`
  ADD CONSTRAINT `adminapp_blackoutday_Category_id_163128c3_fk_adminapp_` FOREIGN KEY (`Category_id`) REFERENCES `adminapp_category` (`id`),
  ADD CONSTRAINT `adminapp_blackoutday_Signup_id_4a9a551c_fk_adminapp_signup_id` FOREIGN KEY (`Signup_id`) REFERENCES `adminapp_signup` (`id`),
  ADD CONSTRAINT `adminapp_blackoutday_ThemeImages_id_73c9487a_fk_adminapp_` FOREIGN KEY (`ThemeImages_id`) REFERENCES `adminapp_themeimages` (`id`);

--
-- Constraints for table `adminapp_booking`
--
ALTER TABLE `adminapp_booking`
  ADD CONSTRAINT `adminapp_booking_Category_id_279b7a8e_fk_adminapp_category_id` FOREIGN KEY (`Category_id`) REFERENCES `adminapp_category` (`id`),
  ADD CONSTRAINT `adminapp_booking_Property_id_207d7c6c_fk_adminapp_property_id` FOREIGN KEY (`Property_id`) REFERENCES `adminapp_property` (`id`),
  ADD CONSTRAINT `adminapp_booking_RoomList_id_b38f7bdc_fk_adminapp_roomlist_id` FOREIGN KEY (`RoomList_id`) REFERENCES `adminapp_roomlist` (`id`),
  ADD CONSTRAINT `adminapp_booking_Signup_id_de3d40c3_fk_adminapp_signup_id` FOREIGN KEY (`Signup_id`) REFERENCES `adminapp_signup` (`id`),
  ADD CONSTRAINT `adminapp_booking_ThemeImages_id_45b3f425_fk_adminapp_` FOREIGN KEY (`ThemeImages_id`) REFERENCES `adminapp_themeimages` (`id`);

--
-- Constraints for table `adminapp_cancellationpolicy`
--
ALTER TABLE `adminapp_cancellationpolicy`
  ADD CONSTRAINT `adminapp_cancellatio_Category_id_d60cf33b_fk_adminapp_` FOREIGN KEY (`Category_id`) REFERENCES `adminapp_category` (`id`),
  ADD CONSTRAINT `adminapp_cancellatio_Signup_id_0e391ec6_fk_adminapp_` FOREIGN KEY (`Signup_id`) REFERENCES `adminapp_signup` (`id`),
  ADD CONSTRAINT `adminapp_cancellatio_ThemeImages_id_532349fb_fk_adminapp_` FOREIGN KEY (`ThemeImages_id`) REFERENCES `adminapp_themeimages` (`id`);

--
-- Constraints for table `adminapp_conciergelist`
--
ALTER TABLE `adminapp_conciergelist`
  ADD CONSTRAINT `adminapp_conciergeli_Category_id_8ff89ecc_fk_adminapp_` FOREIGN KEY (`Category_id`) REFERENCES `adminapp_category` (`id`),
  ADD CONSTRAINT `adminapp_conciergeli_ThemeImages_id_3b1a0410_fk_adminapp_` FOREIGN KEY (`ThemeImages_id`) REFERENCES `adminapp_themeimages` (`id`),
  ADD CONSTRAINT `adminapp_conciergelist_Signup_id_ccff0437_fk_adminapp_signup_id` FOREIGN KEY (`Signup_id`) REFERENCES `adminapp_signup` (`id`);

--
-- Constraints for table `adminapp_directorprofile`
--
ALTER TABLE `adminapp_directorprofile`
  ADD CONSTRAINT `adminapp_directorpro_Category_id_586cc7cc_fk_adminapp_` FOREIGN KEY (`Category_id`) REFERENCES `adminapp_category` (`id`),
  ADD CONSTRAINT `adminapp_directorpro_Signup_id_23c394d6_fk_adminapp_` FOREIGN KEY (`Signup_id`) REFERENCES `adminapp_signup` (`id`),
  ADD CONSTRAINT `adminapp_directorpro_ThemeImages_id_d644638b_fk_adminapp_` FOREIGN KEY (`ThemeImages_id`) REFERENCES `adminapp_themeimages` (`id`);

--
-- Constraints for table `adminapp_generalaboutus`
--
ALTER TABLE `adminapp_generalaboutus`
  ADD CONSTRAINT `adminapp_generalabou_Category_id_426d8203_fk_adminapp_` FOREIGN KEY (`Category_id`) REFERENCES `adminapp_category` (`id`),
  ADD CONSTRAINT `adminapp_generalabou_ThemeImages_id_d49b0156_fk_adminapp_` FOREIGN KEY (`ThemeImages_id`) REFERENCES `adminapp_themeimages` (`id`),
  ADD CONSTRAINT `adminapp_generalaboutus_Signup_id_c6175042_fk_adminapp_signup_id` FOREIGN KEY (`Signup_id`) REFERENCES `adminapp_signup` (`id`);

--
-- Constraints for table `adminapp_generalcompanydetail`
--
ALTER TABLE `adminapp_generalcompanydetail`
  ADD CONSTRAINT `adminapp_generalcomp_Category_id_055d013f_fk_adminapp_` FOREIGN KEY (`Category_id`) REFERENCES `adminapp_category` (`id`),
  ADD CONSTRAINT `adminapp_generalcomp_Signup_id_4ebddc77_fk_adminapp_` FOREIGN KEY (`Signup_id`) REFERENCES `adminapp_signup` (`id`),
  ADD CONSTRAINT `adminapp_generalcomp_ThemeImages_id_f59a208d_fk_adminapp_` FOREIGN KEY (`ThemeImages_id`) REFERENCES `adminapp_themeimages` (`id`);

--
-- Constraints for table `adminapp_generaldirectorprofile`
--
ALTER TABLE `adminapp_generaldirectorprofile`
  ADD CONSTRAINT `adminapp_generaldire_Category_id_046c15cf_fk_adminapp_` FOREIGN KEY (`Category_id`) REFERENCES `adminapp_category` (`id`),
  ADD CONSTRAINT `adminapp_generaldire_Signup_id_515df61f_fk_adminapp_` FOREIGN KEY (`Signup_id`) REFERENCES `adminapp_signup` (`id`),
  ADD CONSTRAINT `adminapp_generaldire_ThemeImages_id_9a116160_fk_adminapp_` FOREIGN KEY (`ThemeImages_id`) REFERENCES `adminapp_themeimages` (`id`);

--
-- Constraints for table `adminapp_generalimage`
--
ALTER TABLE `adminapp_generalimage`
  ADD CONSTRAINT `adminapp_generalimag_related_model_id_dc39b97e_fk_adminapp_` FOREIGN KEY (`related_model_id`) REFERENCES `adminapp_generalaboutus` (`id`);

--
-- Constraints for table `adminapp_generalproduct`
--
ALTER TABLE `adminapp_generalproduct`
  ADD CONSTRAINT `adminapp_generalprod_Category_id_b876315c_fk_adminapp_` FOREIGN KEY (`Category_id`) REFERENCES `adminapp_category` (`id`),
  ADD CONSTRAINT `adminapp_generalprod_ThemeImages_id_e064a507_fk_adminapp_` FOREIGN KEY (`ThemeImages_id`) REFERENCES `adminapp_themeimages` (`id`),
  ADD CONSTRAINT `adminapp_generalproduct_Signup_id_416f11e0_fk_adminapp_signup_id` FOREIGN KEY (`Signup_id`) REFERENCES `adminapp_signup` (`id`);

--
-- Constraints for table `adminapp_generalseodata`
--
ALTER TABLE `adminapp_generalseodata`
  ADD CONSTRAINT `adminapp_generalseod_Category_id_89671f02_fk_adminapp_` FOREIGN KEY (`Category_id`) REFERENCES `adminapp_category` (`id`),
  ADD CONSTRAINT `adminapp_generalseod_ThemeImages_id_33abec5d_fk_adminapp_` FOREIGN KEY (`ThemeImages_id`) REFERENCES `adminapp_themeimages` (`id`),
  ADD CONSTRAINT `adminapp_generalseodata_Signup_id_5c26671b_fk_adminapp_signup_id` FOREIGN KEY (`Signup_id`) REFERENCES `adminapp_signup` (`id`);

--
-- Constraints for table `adminapp_generalservice`
--
ALTER TABLE `adminapp_generalservice`
  ADD CONSTRAINT `adminapp_generalserv_Category_id_b3ab2bb4_fk_adminapp_` FOREIGN KEY (`Category_id`) REFERENCES `adminapp_category` (`id`),
  ADD CONSTRAINT `adminapp_generalserv_ThemeImages_id_63d14080_fk_adminapp_` FOREIGN KEY (`ThemeImages_id`) REFERENCES `adminapp_themeimages` (`id`),
  ADD CONSTRAINT `adminapp_generalservice_Signup_id_aec3fa74_fk_adminapp_signup_id` FOREIGN KEY (`Signup_id`) REFERENCES `adminapp_signup` (`id`);

--
-- Constraints for table `adminapp_generaltestimonial`
--
ALTER TABLE `adminapp_generaltestimonial`
  ADD CONSTRAINT `adminapp_generaltest_Category_id_17093501_fk_adminapp_` FOREIGN KEY (`Category_id`) REFERENCES `adminapp_category` (`id`),
  ADD CONSTRAINT `adminapp_generaltest_Signup_id_3805de03_fk_adminapp_` FOREIGN KEY (`Signup_id`) REFERENCES `adminapp_signup` (`id`),
  ADD CONSTRAINT `adminapp_generaltest_ThemeImages_id_682eec88_fk_adminapp_` FOREIGN KEY (`ThemeImages_id`) REFERENCES `adminapp_themeimages` (`id`);

--
-- Constraints for table `adminapp_image`
--
ALTER TABLE `adminapp_image`
  ADD CONSTRAINT `adminapp_image_related_model_id_13547c02_fk_adminapp_aboutus_id` FOREIGN KEY (`related_model_id`) REFERENCES `adminapp_aboutus` (`id`);

--
-- Constraints for table `adminapp_meals`
--
ALTER TABLE `adminapp_meals`
  ADD CONSTRAINT `adminapp_meals_Category_id_493726cb_fk_adminapp_category_id` FOREIGN KEY (`Category_id`) REFERENCES `adminapp_category` (`id`),
  ADD CONSTRAINT `adminapp_meals_Signup_id_9acd32fb_fk_adminapp_signup_id` FOREIGN KEY (`Signup_id`) REFERENCES `adminapp_signup` (`id`),
  ADD CONSTRAINT `adminapp_meals_ThemeImages_id_80a5f36f_fk_adminapp_` FOREIGN KEY (`ThemeImages_id`) REFERENCES `adminapp_themeimages` (`id`);

--
-- Constraints for table `adminapp_mealslist`
--
ALTER TABLE `adminapp_mealslist`
  ADD CONSTRAINT `adminapp_mealslist_Category_id_46a43757_fk_adminapp_category_id` FOREIGN KEY (`Category_id`) REFERENCES `adminapp_category` (`id`),
  ADD CONSTRAINT `adminapp_mealslist_Signup_id_74c2a643_fk_adminapp_signup_id` FOREIGN KEY (`Signup_id`) REFERENCES `adminapp_signup` (`id`),
  ADD CONSTRAINT `adminapp_mealslist_ThemeImages_id_ad01fc5f_fk_adminapp_` FOREIGN KEY (`ThemeImages_id`) REFERENCES `adminapp_themeimages` (`id`);

--
-- Constraints for table `adminapp_mealslist_mealsitem`
--
ALTER TABLE `adminapp_mealslist_mealsitem`
  ADD CONSTRAINT `adminapp_mealslist_M_meals_id_a874f8ad_fk_adminapp_` FOREIGN KEY (`meals_id`) REFERENCES `adminapp_meals` (`id`),
  ADD CONSTRAINT `adminapp_mealslist_M_mealslist_id_0785c072_fk_adminapp_` FOREIGN KEY (`mealslist_id`) REFERENCES `adminapp_mealslist` (`id`);

--
-- Constraints for table `adminapp_newgallery`
--
ALTER TABLE `adminapp_newgallery`
  ADD CONSTRAINT `adminapp_newgallery_Category_id_0c86074c_fk_adminapp_category_id` FOREIGN KEY (`Category_id`) REFERENCES `adminapp_category` (`id`),
  ADD CONSTRAINT `adminapp_newgallery_Signup_id_d94d8c7a_fk_adminapp_signup_id` FOREIGN KEY (`Signup_id`) REFERENCES `adminapp_signup` (`id`),
  ADD CONSTRAINT `adminapp_newgallery_ThemeImages_id_084f740a_fk_adminapp_` FOREIGN KEY (`ThemeImages_id`) REFERENCES `adminapp_themeimages` (`id`);

--
-- Constraints for table `adminapp_order_data`
--
ALTER TABLE `adminapp_order_data`
  ADD CONSTRAINT `adminapp_order_data_Category_id_4a661826_fk_adminapp_category_id` FOREIGN KEY (`Category_id`) REFERENCES `adminapp_category` (`id`),
  ADD CONSTRAINT `adminapp_order_data_Signup_id_a8273ffd_fk_adminapp_signup_id` FOREIGN KEY (`Signup_id`) REFERENCES `adminapp_signup` (`id`),
  ADD CONSTRAINT `adminapp_order_data_ThemeImages_id_2bff66a3_fk_adminapp_` FOREIGN KEY (`ThemeImages_id`) REFERENCES `adminapp_themeimages` (`id`);

--
-- Constraints for table `adminapp_package`
--
ALTER TABLE `adminapp_package`
  ADD CONSTRAINT `adminapp_package_Category_id_f9f01ddf_fk_adminapp_category_id` FOREIGN KEY (`Category_id`) REFERENCES `adminapp_category` (`id`),
  ADD CONSTRAINT `adminapp_package_Signup_id_b35dc9c3_fk_adminapp_signup_id` FOREIGN KEY (`Signup_id`) REFERENCES `adminapp_signup` (`id`),
  ADD CONSTRAINT `adminapp_package_ThemeImages_id_7f5ff66d_fk_adminapp_` FOREIGN KEY (`ThemeImages_id`) REFERENCES `adminapp_themeimages` (`id`);

--
-- Constraints for table `adminapp_plan`
--
ALTER TABLE `adminapp_plan`
  ADD CONSTRAINT `adminapp_plan_Category_id_bd5ee833_fk_adminapp_category_id` FOREIGN KEY (`Category_id`) REFERENCES `adminapp_category` (`id`),
  ADD CONSTRAINT `adminapp_plan_ThemeImages_id_29b1a8c6_fk_adminapp_themeimages_id` FOREIGN KEY (`ThemeImages_id`) REFERENCES `adminapp_themeimages` (`id`);

--
-- Constraints for table `adminapp_property`
--
ALTER TABLE `adminapp_property`
  ADD CONSTRAINT `adminapp_property_Category_id_a6122960_fk_adminapp_category_id` FOREIGN KEY (`Category_id`) REFERENCES `adminapp_category` (`id`),
  ADD CONSTRAINT `adminapp_property_Signup_id_38e4db58_fk_adminapp_signup_id` FOREIGN KEY (`Signup_id`) REFERENCES `adminapp_signup` (`id`),
  ADD CONSTRAINT `adminapp_property_ThemeImages_id_9246a0a0_fk_adminapp_` FOREIGN KEY (`ThemeImages_id`) REFERENCES `adminapp_themeimages` (`id`);

--
-- Constraints for table `adminapp_property_propertyactivities`
--
ALTER TABLE `adminapp_property_propertyactivities`
  ADD CONSTRAINT `adminapp_property_Pr_addactivities_id_8db2e7df_fk_adminapp_` FOREIGN KEY (`addactivities_id`) REFERENCES `adminapp_addactivities` (`id`),
  ADD CONSTRAINT `adminapp_property_Pr_property_id_0a8fed04_fk_adminapp_` FOREIGN KEY (`property_id`) REFERENCES `adminapp_property` (`id`);

--
-- Constraints for table `adminapp_property_propertyamenities`
--
ALTER TABLE `adminapp_property_propertyamenities`
  ADD CONSTRAINT `adminapp_property_Pr_addamenities_id_8aeea2fd_fk_adminapp_` FOREIGN KEY (`addamenities_id`) REFERENCES `adminapp_addamenities` (`id`),
  ADD CONSTRAINT `adminapp_property_Pr_property_id_df9cdd58_fk_adminapp_` FOREIGN KEY (`property_id`) REFERENCES `adminapp_property` (`id`);

--
-- Constraints for table `adminapp_property_propertyfacilities`
--
ALTER TABLE `adminapp_property_propertyfacilities`
  ADD CONSTRAINT `adminapp_property_Pr_addfacility_id_049cb98c_fk_adminapp_` FOREIGN KEY (`addfacility_id`) REFERENCES `adminapp_addfacility` (`id`),
  ADD CONSTRAINT `adminapp_property_Pr_property_id_6bc2945c_fk_adminapp_` FOREIGN KEY (`property_id`) REFERENCES `adminapp_property` (`id`);

--
-- Constraints for table `adminapp_resortaboutus`
--
ALTER TABLE `adminapp_resortaboutus`
  ADD CONSTRAINT `adminapp_resortabout_Category_id_84aea510_fk_adminapp_` FOREIGN KEY (`Category_id`) REFERENCES `adminapp_category` (`id`),
  ADD CONSTRAINT `adminapp_resortabout_ThemeImages_id_096b42a8_fk_adminapp_` FOREIGN KEY (`ThemeImages_id`) REFERENCES `adminapp_themeimages` (`id`),
  ADD CONSTRAINT `adminapp_resortaboutus_Signup_id_fda43c1f_fk_adminapp_signup_id` FOREIGN KEY (`Signup_id`) REFERENCES `adminapp_signup` (`id`);

--
-- Constraints for table `adminapp_resortdetail`
--
ALTER TABLE `adminapp_resortdetail`
  ADD CONSTRAINT `adminapp_resortdetai_Category_id_44da38f1_fk_adminapp_` FOREIGN KEY (`Category_id`) REFERENCES `adminapp_category` (`id`),
  ADD CONSTRAINT `adminapp_resortdetai_ThemeImages_id_eb8ff048_fk_adminapp_` FOREIGN KEY (`ThemeImages_id`) REFERENCES `adminapp_themeimages` (`id`),
  ADD CONSTRAINT `adminapp_resortdetail_Signup_id_5e579393_fk_adminapp_signup_id` FOREIGN KEY (`Signup_id`) REFERENCES `adminapp_signup` (`id`);

--
-- Constraints for table `adminapp_resortimage`
--
ALTER TABLE `adminapp_resortimage`
  ADD CONSTRAINT `adminapp_resortimage_related_model_id_120964c4_fk_adminapp_` FOREIGN KEY (`related_model_id`) REFERENCES `adminapp_resortaboutus` (`id`);

--
-- Constraints for table `adminapp_resorttestimonial`
--
ALTER TABLE `adminapp_resorttestimonial`
  ADD CONSTRAINT `adminapp_resorttesti_Category_id_23bb0e0c_fk_adminapp_` FOREIGN KEY (`Category_id`) REFERENCES `adminapp_category` (`id`),
  ADD CONSTRAINT `adminapp_resorttesti_Signup_id_c64af54a_fk_adminapp_` FOREIGN KEY (`Signup_id`) REFERENCES `adminapp_signup` (`id`),
  ADD CONSTRAINT `adminapp_resorttesti_ThemeImages_id_ab82c5af_fk_adminapp_` FOREIGN KEY (`ThemeImages_id`) REFERENCES `adminapp_themeimages` (`id`);

--
-- Constraints for table `adminapp_roomlist`
--
ALTER TABLE `adminapp_roomlist`
  ADD CONSTRAINT `adminapp_roomlist_Category_id_1b3b7efc_fk_adminapp_category_id` FOREIGN KEY (`Category_id`) REFERENCES `adminapp_category` (`id`),
  ADD CONSTRAINT `adminapp_roomlist_Property_id_46adf140_fk_adminapp_property_id` FOREIGN KEY (`Property_id`) REFERENCES `adminapp_property` (`id`),
  ADD CONSTRAINT `adminapp_roomlist_RoomBedtype_id_0ca8135a_fk_adminapp_` FOREIGN KEY (`RoomBedtype_id`) REFERENCES `adminapp_addbedtype` (`id`),
  ADD CONSTRAINT `adminapp_roomlist_Signup_id_5ff8c703_fk_adminapp_signup_id` FOREIGN KEY (`Signup_id`) REFERENCES `adminapp_signup` (`id`),
  ADD CONSTRAINT `adminapp_roomlist_ThemeImages_id_cb8d5cf5_fk_adminapp_` FOREIGN KEY (`ThemeImages_id`) REFERENCES `adminapp_themeimages` (`id`);

--
-- Constraints for table `adminapp_seodata`
--
ALTER TABLE `adminapp_seodata`
  ADD CONSTRAINT `adminapp_seodata_Category_id_a404eba5_fk_adminapp_category_id` FOREIGN KEY (`Category_id`) REFERENCES `adminapp_category` (`id`),
  ADD CONSTRAINT `adminapp_seodata_Signup_id_4057feb6_fk_adminapp_signup_id` FOREIGN KEY (`Signup_id`) REFERENCES `adminapp_signup` (`id`),
  ADD CONSTRAINT `adminapp_seodata_ThemeImages_id_740c251e_fk_adminapp_` FOREIGN KEY (`ThemeImages_id`) REFERENCES `adminapp_themeimages` (`id`);

--
-- Constraints for table `adminapp_service`
--
ALTER TABLE `adminapp_service`
  ADD CONSTRAINT `adminapp_service_Category_id_6b5617a5_fk_adminapp_category_id` FOREIGN KEY (`Category_id`) REFERENCES `adminapp_category` (`id`),
  ADD CONSTRAINT `adminapp_service_Signup_id_05946e8b_fk_adminapp_signup_id` FOREIGN KEY (`Signup_id`) REFERENCES `adminapp_signup` (`id`),
  ADD CONSTRAINT `adminapp_service_ThemeImages_id_0a665885_fk_adminapp_` FOREIGN KEY (`ThemeImages_id`) REFERENCES `adminapp_themeimages` (`id`);

--
-- Constraints for table `adminapp_specialday`
--
ALTER TABLE `adminapp_specialday`
  ADD CONSTRAINT `adminapp_specialday_Category_id_0086e116_fk_adminapp_category_id` FOREIGN KEY (`Category_id`) REFERENCES `adminapp_category` (`id`),
  ADD CONSTRAINT `adminapp_specialday_Signup_id_b814d2b9_fk_adminapp_signup_id` FOREIGN KEY (`Signup_id`) REFERENCES `adminapp_signup` (`id`),
  ADD CONSTRAINT `adminapp_specialday_ThemeImages_id_4cf5d136_fk_adminapp_` FOREIGN KEY (`ThemeImages_id`) REFERENCES `adminapp_themeimages` (`id`);

--
-- Constraints for table `adminapp_specialrate`
--
ALTER TABLE `adminapp_specialrate`
  ADD CONSTRAINT `adminapp_specialrate_Category_id_5a2aaf48_fk_adminapp_` FOREIGN KEY (`Category_id`) REFERENCES `adminapp_category` (`id`),
  ADD CONSTRAINT `adminapp_specialrate_Signup_id_fe84dc05_fk_adminapp_signup_id` FOREIGN KEY (`Signup_id`) REFERENCES `adminapp_signup` (`id`),
  ADD CONSTRAINT `adminapp_specialrate_ThemeImages_id_bb603169_fk_adminapp_` FOREIGN KEY (`ThemeImages_id`) REFERENCES `adminapp_themeimages` (`id`);

--
-- Constraints for table `adminapp_tariff`
--
ALTER TABLE `adminapp_tariff`
  ADD CONSTRAINT `adminapp_tariff_Category_id_6bc32450_fk_adminapp_category_id` FOREIGN KEY (`Category_id`) REFERENCES `adminapp_category` (`id`),
  ADD CONSTRAINT `adminapp_tariff_RoomList_id_872af6d2_fk_adminapp_roomlist_id` FOREIGN KEY (`RoomList_id`) REFERENCES `adminapp_roomlist` (`id`),
  ADD CONSTRAINT `adminapp_tariff_Signup_id_a7328655_fk_adminapp_signup_id` FOREIGN KEY (`Signup_id`) REFERENCES `adminapp_signup` (`id`),
  ADD CONSTRAINT `adminapp_tariff_ThemeImages_id_53c8e75b_fk_adminapp_` FOREIGN KEY (`ThemeImages_id`) REFERENCES `adminapp_themeimages` (`id`);

--
-- Constraints for table `adminapp_testimonial`
--
ALTER TABLE `adminapp_testimonial`
  ADD CONSTRAINT `adminapp_testimonial_Category_id_66db8d3f_fk_adminapp_` FOREIGN KEY (`Category_id`) REFERENCES `adminapp_category` (`id`),
  ADD CONSTRAINT `adminapp_testimonial_Signup_id_0054d63a_fk_adminapp_signup_id` FOREIGN KEY (`Signup_id`) REFERENCES `adminapp_signup` (`id`),
  ADD CONSTRAINT `adminapp_testimonial_ThemeImages_id_b1da691f_fk_adminapp_` FOREIGN KEY (`ThemeImages_id`) REFERENCES `adminapp_themeimages` (`id`);

--
-- Constraints for table `adminapp_themeimages`
--
ALTER TABLE `adminapp_themeimages`
  ADD CONSTRAINT `adminapp_themeimages_Category_id_47204d21_fk_adminapp_` FOREIGN KEY (`Category_id`) REFERENCES `adminapp_category` (`id`);

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
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
