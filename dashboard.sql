-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2024 at 08:39 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stripes`
--

-- --------------------------------------------------------

--
-- Table structure for table `check_in`
--
-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `positions`
--
-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `l_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '0=admin\r\n1=user',
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `l_name`, `email`, `image`, `role`, `status`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'PNP-Admin', 'Admin', 'dev@admin.com', 'app-assets/images/profile/user-uploads/1655040488.jpeg', '0', '1', NULL, '$2y$10$ppTUzHbUe/aZi7G.ARbN2O/wegWL7X.wgdXb8QgMUj2O8gAFrYTu2', 'cES1voNcPOBPBs470FiIPTOPvPZcuQmX3yxKLTqXkD54bUgER4n6L2S20V1w', '2022-06-11 04:21:01', '2023-04-17 15:05:35', NULL),
(20, 'Khalil Urrehman', 'Urrehman', 'urrehman48@gmail.com', 'app-assets/images/profile/user-uploads/1681761966.jpg', '1', '1', NULL, '$2y$10$iVG9lOJdaVkE4IJ96Vdvl.xUNhppZxxUwXef.F0alVYlKGRu78AN2', NULL, '2022-07-22 00:16:14', '2023-04-17 15:06:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_sessions`
--

CREATE TABLE `user_sessions` (
  `id` int(11) NOT NULL,
  `hash` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` varchar(15) CHARACTER SET latin1 DEFAULT NULL COMMENT 'timestamp at what the session is created',
  `status` tinyint(1) DEFAULT 1 COMMENT '0 mean deleted\n1 mean active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `user_sessions`
--

INSERT INTO `user_sessions` (`id`, `hash`, `user_id`, `created_at`, `status`) VALUES
(1, 'ddf959a5cea29a670ca17ff280061e4d', 1, '1648152853303', 0),
(2, '4c2679ecf0cf53c0cc32f6a80e303aee', 1, '1648152879703', 0),
(3, '165ec5a767d4924209194dd45cae139e', 3, '1648153244044', 0),
(4, '542f50753a15fc6ececb2353e55e85c0', 1, '1648153459866', 0),
(5, 'b56bb3aaf576d8a5ae5b4c5509cb0023', 3, '1648153530558', 0),
(6, '76ff766f13deed81f1ab3ac30b7be868', 5, '1648190528655', 1),
(7, '2bc0abbe774b302864a0034d5c70462d', 5, '1648191627416', 1),
(8, '9a84b5961c97e69f63bf4a9c92d6da30', 1, '1648214079018', 0),
(9, '4af74e878bc783a9d6d80618922b5af1', 1, '1648216372528', 0),
(10, '8790a82e025dfa6bd551dc8d723808a0', 1, '1648233587544', 1),
(11, '1e303cbe7bb75eb8003e80023475fa70', 1, '1648291123151', 0),
(12, '0114c482fe647e7b267df886bf8792a7', 5, '1648808749541', 0),
(13, '3c95bbfe9a11f5317cdfe0d7a53df33a', 1, '1648808773574', 0),
(14, 'be744e4dc4f9eb2fe65d15a1a903f058', 5, '1649062987617', 1),
(15, '37ed2044b6cc33182a97a94c37303fd7', 5, '1649069463415', 0),
(16, '081b33840a5a78b6126c323f16a0bd02', 1, '1651440698492', 0),
(17, 'a447ea68de534548d74adf2ff5f501e6', 1, '1651440836502', 1),
(18, '9b337240ff229b5b7753b116af90a412', 1, '1651479491103', 0),
(19, '3b241384108a10d6d8a6b2e37162283a', 1, '1651480081974', 0),
(20, 'a4d2cc9b65d2a5514a9107b23f215e96', 5, '1651480168944', 0),
(21, '7b97062e28eba77c378ebccd46b61a5f', 5, '1651480721614', 1),
(22, 'bf1b3bd29ae616eec3e3f7c645126d42', 5, '1651909436482', 0),
(23, '7d435e8ce3f307b34ec2559d9c668845', 5, '1653540605757', 0),
(24, '9d7b4dc298a6e20948be1274ca200d78', 5, '1653540630097', 0),
(25, '97c3b2921348f36ad1028948033ba42f', 5, '1653544109617', 0),
(26, '0b0a0d86ed93cf58da4804b08d94bc32', 5, '1653545761229', 1),
(27, '1372fe07a8479e4343f0b141692a574d', 5, '1653546327030', 0),
(28, 'ec083dbcc3918b1d237c38f11501f43b', 5, '1653546350115', 0),
(29, 'cd349509d9c83ebae88d6f26f1e20dc3', 5, '1653546562910', 0),
(30, '7b4eb878411531ca942f4d52ce254304', 5, '1653546803286', 0),
(31, '1f90c635be25209b6691bc30a9102442', 5, '1653551626301', 0),
(32, 'a2f113e97302a7b610511f54e4e1413b', 5, '1653551637307', 0),
(33, 'dcef727f8b2e94b18ee27bb84b28f5ab', 5, '1653551858361', 0),
(34, '4f4df3a3cf60846eb9f52dd5d3aa9e8b', 1, '1653714943489', 0),
(35, '628cbe9f66d18d43a9a66416dbcc605f', 5, '1653715046131', 1),
(36, 'd204a349da4e4a85b72e4c2198777ba6', 1, '1653720112496', 1),
(37, '75d93f328c4f234e482f7c93b80a01fe', 5, '1653731498481', 1),
(38, '310442b27154ac07132f54ab29ffb319', 3, '1653732692147', 0),
(39, '298dde12c3c1174a60a2ae62b722ec33', 1, '1653825567187', 0),
(40, '3ad897d84c88049497385c5bf4379259', 7, '1654147085997', 0),
(41, 'cd34ed0af4b5c91b37bc5e35b6369b68', 7, '1654148581447', 0),
(42, '6617867e8f05fb7e293b565198c3ab29', 7, '1654149337176', 1),
(43, 'fc8a66b977ff77bd6056a0e263e60051', 7, '1654151664701', 0),
(44, '3b5ec376bdc25d53e4411e226610b0ca', 7, '1654159243369', 0),
(45, '754f1fa2a48a6e15496c7a5e8eb2efa0', 7, '1654159906497', 0),
(46, 'ffb5340a6f0e16a191c0cdd138c8cb6b', 7, '1654166397946', 0),
(47, '8a6a040109632cdde919cd129e516d0c', 7, '1654166615677', 1),
(48, '15072fe9d156e308f5cfec3e379820bd', 3, '1654167661786', 0),
(49, '231846e22cf3e9aafd0b5237f7896ac3', 7, '1654236762319', 0),
(50, 'e58f7eeaac9cd68dd377b8a8138cc40d', 7, '1654237481574', 0),
(51, '87b08adcc4fcdf52d0ad0303c8802e19', 7, '1654237844507', 0),
(52, 'f5f4404e834609a0a143e8a8c3bf3101', 7, '1654240652311', 0),
(53, 'b5467d71c707c85f555cee8a2948e43b', 7, '1654240704145', 0),
(54, 'b9d8713f90e59538e5c1bde46bfd9c19', 7, '1654240743016', 0),
(55, 'ad60da18e62b6d75b91e29c8f4dbad96', 3, '1654248292936', 0),
(56, '5ea0a07613940333024f1d5bf77ef6fb', 7, '1654405621427', 0),
(57, '031ef28fc25c3492537305eba02398c7', 7, '1654405855030', 1),
(58, '8d1060fec0ba0a5d2c49301e2b4150c3', 3, '1654491479670', 0),
(59, '4480faa087e69f24b2f8be2acf7ff004', 5, '1654497800814', 0),
(60, 'fc81de21a0beba8a6a07df13a83b7543', 3, '1654497940118', 0),
(61, '5fdd72db704ee5f08edc2e3a0d55903b', 5, '1654498463214', 0),
(62, '8b172f4f71c063e3325625c195bdc28f', 5, '1654498649571', 0),
(63, '5e873fcb104a0ee43a139aabf48f4399', 7, '1654744108292', 0),
(64, 'd29c28ac2ef96b61688f1576502a15ec', 7, '1654744415004', 0),
(65, '0818adc5ef60ce6e3b2ab638b07c10a6', 7, '1654744505044', 0),
(66, '41342317da8f0ac5c7444ee024882d1e', 7, '1654744540855', 0),
(67, '39c6d388b47b6abd2bf4b01a0f2fb943', 7, '1654744661465', 0),
(68, 'd963aedf74f03defe2f33bbf63222d5b', 7, '1654744678825', 0),
(69, '7f30405ea0092c797bff9726e86cfc1b', 7, '1654745237003', 0),
(70, 'd0c80f81000e45eb06976b6b1567624d', 7, '1654745404750', 0),
(71, '0804aa014048e8a9efe0ef84a113c511', 7, '1654745986167', 0),
(72, '209e538fb86f93dc52bdc3c01593fd32', 7, '1654746159044', 0),
(73, '5f220c1ed3a8d526868f33bc75931953', 7, '1654746223356', 0),
(74, '2240d221dbe3b097578e3e33b54bce5d', 7, '1654746265005', 0),
(75, '31796bb6b32de36925af86e06487f31c', 7, '1654746483841', 0),
(76, '7635a8af4dc9cdc149e03a0695acfd99', 7, '1654746567525', 0),
(77, 'ac931246fc2528ba2b64f203b326de56', 7, '1654746624686', 0),
(78, '7fa52fafd25991cf7c8eb0697869287d', 7, '1654746632951', 0),
(79, 'c8dbb0b6a8c8e0ca94481161a619ee76', 7, '1654746721348', 0),
(80, '67e88b8354314d09d278cf643ff11437', 7, '1654746786104', 0),
(81, '87ff3190433b08c222f6c4a8dfbc0117', 7, '1654746910289', 0),
(82, '5f1f9ffa0e73502914387b6acd93c1d2', 7, '1654747198599', 0),
(83, '606386df53ced3836a849ae856713bb9', 7, '1654747211774', 0),
(84, '92f73f454ac14fdab05cc823d2c4d996', 7, '1654747330417', 0),
(85, 'f5072def1e5a13a32873e53365ac24e2', 7, '1654747339596', 0),
(86, 'e4ebcd5df889531446915d6bf554efb0', 7, '1654747394121', 0),
(87, '35ec8bb3ea391578938ed618e2c5d62b', 7, '1654747433657', 0),
(88, '52753aa078a67e49e3f3918b79da1db8', 7, '1654747797828', 0),
(89, '43298759b6751df499478284ac3b44f7', 7, '1654747897510', 0),
(90, '7d1507c09898b50b2a4bc5a7f260a9cc', 7, '1654747908483', 0),
(91, '524a29e447f7451fcd51f993f5b89780', 7, '1654747960730', 0),
(92, 'bfe0c3ea138bcde821ca272e030d7b9b', 7, '1654747982092', 0),
(93, 'a9b981d2a9d5ebb88573b90511feffaa', 7, '1654748501420', 0),
(94, 'd6a290944be8e73d5904eeca8fa15068', 7, '1654748540093', 0),
(95, '1c75ff06cbf326f06de8865c4a3c6469', 7, '1654748590404', 0),
(96, '919b9262f0f6fbe0aa858533f7549b76', 7, '1654748597363', 0),
(97, '3b511e7b5c0745a3a7e2ac6c437d43ea', 7, '1654748802825', 0),
(98, 'f8d4e06a94a9985776aabd9dbacbab60', 7, '1654748817131', 0),
(99, 'b38dd9a914e7e944c2693b1cb02cd438', 7, '1654748830674', 0),
(100, 'a1c8ee17259257d22e5992dcdc2c36f8', 7, '1654748902309', 0),
(101, '80dd4318fb312418879a2a1f4f2a24fc', 7, '1654748967371', 0),
(102, '1ea979e60c87624240a18d5c022479d4', 7, '1654748981869', 0),
(103, '11cbfc19429658fe42aaca0ff9e6f4d3', 7, '1654749101268', 0),
(104, '0d287179ae1d601f4a1d55d379539e5f', 7, '1654749850289', 0),
(105, '8886c025a8a9f3128cb6936588114e54', 7, '1654749967183', 0),
(106, 'b7b58fa52eca5ab57faba059f3c9f056', 7, '1654750284974', 0),
(107, 'acad8eea8d64547f3a4da9f4ec9a005d', 7, '1654750302536', 0),
(108, 'b4d581e54cb13043977be1db975452b8', 7, '1654750313167', 0),
(109, 'a768e2ac2eca61c7dd00f616f751729b', 7, '1654751414572', 0),
(110, 'dedc53728aacf6c5927430a5b709b8a1', 7, '1654751444150', 0),
(111, '7b77d469e5032c35cbf802eb6ff2dda5', 7, '1654751500658', 0),
(112, '15bfeb9893f0457201babb1235eb05fa', 7, '1654751525173', 0),
(113, '9408dd22a0526c30eaade2e61b6a74ac', 7, '1654751547279', 0),
(114, 'c61efe6b62f12fb6e70f67e35db40826', 7, '1654752197198', 0),
(115, '260b071e53e5c79d3621c47d40b9840b', 7, '1654752307044', 0),
(116, '98da6880e88c8ebe0beac59425bbc493', 7, '1654752420345', 0),
(117, '49fc8f4dfb84c06dc86690ae7a0ac561', 7, '1654752517532', 0),
(118, '9e422ae61cc7c495d35460eca3f538de', 7, '1654753028704', 0),
(119, 'e2e92ae8f65f1af445e905b38276602d', 7, '1654753147240', 0),
(120, 'a44be23fcccd03746166bb0f70ea46d5', 7, '1654753322915', 0),
(121, '870fb1030071f0fdb8bd7377cfbd164a', 7, '1654753646719', 0),
(122, 'd5c56465b2a209e8d7ffe3d8a1c9054c', 7, '1654753655713', 0),
(123, '3cccb7f9b02b90220f0e03e44e35e83d', 7, '1654753675582', 0),
(124, '7bd4e4239a72b0ac2fb9f0bde7074ad4', 7, '1654753837585', 0),
(125, 'a54b70c28a618b4b23be76082f648ed3', 7, '1654753852936', 0),
(126, 'fc68460d70401ad9e396c223b64fd842', 7, '1654753871351', 0),
(127, 'f604bd7b63c93cedd89c4291a37bbfe7', 3, '1654754180098', 1),
(128, 'd379fde52ace0ea54fc694c7a6f93ccf', 7, '1654754679418', 0),
(129, 'a52da5436387c03880bc3a2ab11c4563', 7, '1654831040769', 0),
(130, '0b21f90353c83073af4afd74a01cd1ed', 7, '1654831131144', 1),
(131, 'ab3a50ad25334869bd64eef66f9594ab', 7, '1654831306067', 1),
(132, 'b885e362f42fac4579ec7119760d63d6', 7, '1654833544222', 0),
(133, '6b1357fea02e7cc9adf392bd825f0ad6', 1, '1654834227823', 0),
(134, '2cc2733806e571497bd2b862b13b60fc', 1, '1654834239047', 0),
(135, 'a24c6e5d5e2b2af50f5bfda7def62464', 1, '1654834305234', 1),
(136, '8a9017c047fe1a4f538627c30f087b37', 1, '1654834527308', 0),
(137, 'a6b74736d0c086d8342aca073250e974', 1, '1654834540047', 0),
(138, '56680ecc21e9b3edc7250f2c6eaafcec', 1, '1654834557665', 0),
(139, '3df881fa2b49a7ed5fcbda5f1abe300a', 7, '1654834658250', 0),
(140, 'c3f412357441d1e48b5a59354ab07e31', 7, '1654835366160', 1),
(141, '231097c07e2a2c31f3cdf05333545c50', 7, '1654842691527', 0),
(142, 'b6d87641117be1cfb285e28cd0066b20', 7, '1654843185962', 0),
(143, '07948ad1fbac86daf43234b87c175b1c', 7, '1654843323116', 0),
(144, 'd737f998ee0e88435e2c9c691b1da1fa', 7, '1654843433681', 0),
(145, 'db01e9e1c659fb598616d03c2b1b24e9', 7, '1654843559947', 0),
(146, 'e08f6b2582db88c4d7e73c72d83d856e', 7, '1654843655893', 0),
(147, '007670f7919ce65cc53779fc2fef663c', 7, '1654843952557', 0),
(148, '0fb4307cae0f9de764fbc2b16c52cb13', 7, '1654844152334', 0),
(149, '12ec3dfe3c913dc2a5a67c621d655d96', 7, '1654854090483', 0),
(150, '4394176dbc13d306d82df40b94251285', 7, '1654854257745', 0),
(151, '10d8fc312154d46ef24272e0df63075e', 7, '1654867174216', 0),
(152, 'e1e903b422d1c7f55792e704ed06d038', 7, '1655026737435', 0),
(153, 'ad5aef93ff8bf5931122f1b0b97ae4b9', 1, '1655228197794', 0),
(154, '03710ec6b724e1375123759a900e1d29', 1, '1655792005507', 0),
(155, 'df49f874df03de3e6567d958e0c0aa6d', 5, '1656335824512', 1),
(156, '0f38a34615c133a561be623b2a5725d4', 7, '1656406042689', 0),
(157, '6ad9a9e7511b68fc80677f2fd1943618', 11, '1656407670685', 0),
(158, '442a3fa07eab25a49cbcacb3d65d0fe5', 1, '1656407712345', 0),
(159, '9cd56b43c6ad0eeedcc697212dc37127', 1, '1656408508267', 0),
(160, 'c5999cfb747e15dea18256bab9fb7c48', 11, '1656408583648', 1),
(161, '4c1f74368a82339e0db54213425cb710', 1, '1656408980897', 0),
(162, '2e11295f51db0cce5dadadc0b27d3336', 3, '1656739768047', 0),
(163, '671c83681e4d224f171fb66a3c86be25', 3, '1656740297294', 0),
(164, '2866bda4198913f30d74a0f0924b2ed3', 3, '1656740354099', 0),
(165, '614e82fad229314ede30150209a9fcdc', 3, '1656740486007', 0),
(166, '74ad0393804f9839538169bdf8a9bb9d', 3, '1656740651136', 0),
(167, '9b16f5cea98516e65225db7c8edce9c7', 3, '1656740659477', 0),
(168, '161bd125f70ba0e301b0c272d5fa2983', 3, '1656740671202', 0),
(169, '28a0996b6b123b2aaf9cc23ff1a43171', 3, '1656740944971', 0),
(170, 'cb51e507099388e61a112e63eac9b626', 3, '1656740953401', 0),
(171, '0a834e62f68711e0b232f254449b45b3', 1, '1656745427108', 1),
(172, '8304b1dcd0f1f16a150f029208397717', 7, '1656745679339', 1),
(173, 'b335f13c9641104c0bffaac5b3bbac7f', 1, '1656759413197', 0),
(174, 'c8768b524028c52eb16aa58d22cb9d47', 1, '1656759459781', 0),
(175, '254abc84d5e587b6ba260de6e9d6fddf', 1, '1656766083341', 0),
(176, '7153d6e44d26c8d09ec5794483aff092', 1, '1656766360465', 0),
(177, 'bd6d0d6d10cb1a83b98df514db859f65', 1, '1656766872387', 1),
(178, '4d57404232360719b90b2ccc11019cc2', 11, '1656767296837', 0),
(179, 'a683b220433f6d825d6e324f21b9b3c8', 11, '1656767646513', 0),
(180, '763dc020c7762ca1d6cf351fe81499db', 7, '1656768086732', 0),
(181, 'ec7d7fc79be7189b1915faca8ada7065', 7, '1656867286160', 1),
(182, '72370c384ad7f677dc2d9dde69790a9c', 1, '1656913767580', 0),
(183, '18eb1e0104f71bf5abe8d6a455f8b141', 1, '1656913834707', 1),
(184, '05e59433e2a06179e4a0ea59e78ea53d', 7, '1657011988530', 1),
(185, '709e1208413a7b9e543197f3d42869ca', 5, '1657781554006', 1),
(186, '1539aa7ff1b7f8c8f589f87cdae3fb72', 17, '1658398081860', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `stripe_payment`
--
ALTER TABLE `stripe_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `traccar`
--
ALTER TABLE `traccar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_sessions`
--
ALTER TABLE `user_sessions`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `hash` (`hash`) USING BTREE,
  ADD KEY `user_id_session_FK` (`user_id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stripe_payment`
--
ALTER TABLE `stripe_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `traccar`
--
ALTER TABLE `traccar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=618;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `user_sessions`
--
ALTER TABLE `user_sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=187;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
