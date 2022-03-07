-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 02, 2022 at 03:38 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `game-store`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id_cart` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  `id_games` bigint(20) UNSIGNED NOT NULL,
  `id_users` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id_cart`, `qty`, `total_price`, `id_games`, `id_users`, `created_at`, `updated_at`) VALUES
(2, 4, 2400000, 2, 4, NULL, NULL),
(3, 2, 1200000, 2, 5, '2022-03-01 18:06:41', '2022-03-01 18:06:41');

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `id_games` bigint(20) UNSIGNED NOT NULL,
  `games_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `games_category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `games_price` int(11) NOT NULL,
  `games_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`id_games`, `games_name`, `games_category`, `games_price`, `games_desc`, `created_at`, `updated_at`) VALUES
(2, 'Ring Elden', 'Action, Dating Simulator', 600000, 'I wish I could play this game bro ong', NULL, '2022-02-28 20:35:49'),
(3, 'Hades', 'Lorem, Ipsum, Dolor, Sit, Amet', 12333, 'lorem ipsum dolor sit amet', NULL, '2022-03-01 18:27:07'),
(4, 'ante. Nunc', 'dui,', 11495, 'tortor, dictum eu, placerat eget, venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer', NULL, NULL),
(5, 'mauris sapien,', 'parturient', 11976, 'Etiam bibendum fermentum metus. Aenean sed pede nec', NULL, NULL),
(6, 'sem semper', 'metus.', 20317, 'nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet odio.', NULL, NULL),
(7, 'nisl. Nulla', 'mauris', 17877, 'urna. Vivamus molestie dapibus ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas', NULL, NULL),
(8, 'vel arcu.', 'ut,', 11652, 'Quisque nonummy ipsum non arcu. Vivamus sit amet', NULL, NULL),
(9, 'lectus pede,', 'fames', 8759, 'tellus justo sit amet nulla. Donec non justo. Proin non massa non ante', NULL, NULL),
(10, 'magna et', 'velit.', 2419, 'semper et, lacinia vitae, sodales', NULL, NULL),
(11, 'gravida. Aliquam', 'accumsan', 11036, 'a, facilisis non, bibendum sed, est. Nunc laoreet lectus quis', NULL, NULL),
(12, 'et tristique', 'sit', 15699, 'fringilla, porttitor vulputate, posuere vulputate, lacus. Cras', NULL, NULL),
(13, 'Aliquam vulputate', 'Curabitur', 5916, 'at augue id ante dictum cursus. Nunc mauris elit, dictum eu, eleifend nec, malesuada', NULL, NULL),
(14, 'libero. Morbi', 'tristique', 11207, 'Nullam lobortis quam a felis ullamcorper viverra. Maecenas iaculis aliquet diam. Sed diam lorem,', NULL, NULL),
(15, 'senectus et', 'ligula.', 3003, 'ornare lectus justo eu arcu. Morbi sit amet', NULL, NULL),
(16, 'vitae, orci.', 'Cras', 7838, 'sem mollis dui, in sodales', NULL, NULL),
(17, 'odio vel', 'eu', 3480, 'nunc est, mollis non, cursus non, egestas a, dui. Cras pellentesque. Sed dictum.', NULL, NULL),
(18, 'dictum. Proin', 'eu', 22230, 'vel arcu eu odio tristique pharetra. Quisque ac libero', NULL, NULL),
(19, 'amet ante.', 'malesuada', 20195, 'torquent per conubia nostra, per inceptos hymenaeos. Mauris ut quam vel sapien imperdiet', NULL, NULL),
(20, 'lectus convallis', 'est.', 21378, 'nunc sed libero. Proin sed', NULL, NULL),
(21, 'ac, feugiat', 'Nullam', 16379, 'vehicula et, rutrum eu, ultrices sit', NULL, NULL),
(22, 'imperdiet, erat', 'urna,', 20554, 'ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada', NULL, NULL),
(23, 'quam quis', 'adipiscing', 5005, 'magna tellus faucibus leo, in lobortis tellus justo sit amet', NULL, NULL),
(24, 'Quisque imperdiet,', 'nulla.', 14338, 'Donec non justo. Proin non massa non ante bibendum ullamcorper. Duis cursus, diam at pretium', NULL, NULL),
(25, 'iaculis quis,', 'consectetuer', 2040, 'id sapien. Cras dolor dolor, tempus non, lacinia at, iaculis quis, pede. Praesent eu dui.', NULL, NULL),
(26, 'nonummy ultricies', 'volutpat.', 11222, 'Nullam enim. Sed nulla ante, iaculis nec, eleifend non,', NULL, NULL),
(27, 'turpis. In', 'sed', 22997, 'amet risus. Donec egestas. Aliquam nec enim. Nunc ut erat.', NULL, NULL),
(28, 'Etiam vestibulum', 'enim', 6017, 'eget massa. Suspendisse eleifend. Cras sed leo. Cras', NULL, NULL),
(29, 'metus. Aenean', 'molestie', 4055, 'urna. Nullam lobortis quam a felis', NULL, NULL),
(30, 'mi, ac', 'Fusce', 2033, 'vestibulum lorem, sit amet ultricies sem magna nec quam. Curabitur vel', NULL, NULL),
(31, 'netus et', 'dis', 13827, 'dapibus gravida. Aliquam tincidunt, nunc ac mattis ornare, lectus ante dictum', NULL, NULL),
(32, 'dolor, tempus', 'a', 16353, 'mus. Aenean eget magna. Suspendisse tristique neque venenatis lacus. Etiam bibendum fermentum metus. Aenean', NULL, NULL),
(33, 'vulputate, risus', 'nec', 13844, 'sollicitudin a, malesuada id, erat. Etiam vestibulum massa rutrum magna.', NULL, NULL),
(34, 'et, euismod', 'augue', 19550, 'et, eros. Proin ultrices. Duis volutpat nunc sit amet metus. Aliquam', NULL, NULL),
(35, 'erat. Sed', 'commodo', 20759, 'non lorem vitae odio sagittis semper. Nam tempor diam dictum sapien. Aenean massa.', NULL, NULL),
(36, 'Etiam ligula', 'arcu.', 11296, 'Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus.', NULL, NULL),
(37, 'ipsum. Suspendisse', 'et', 17390, 'Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus', NULL, NULL),
(38, 'imperdiet nec,', 'enim', 8460, 'Proin ultrices. Duis volutpat nunc sit', NULL, NULL),
(39, 'lorem semper', 'eu', 15305, 'eu, ligula. Aenean euismod mauris eu', NULL, NULL),
(40, 'Aliquam erat', 'ultrices', 18889, 'nulla. Donec non justo. Proin non massa non ante bibendum ullamcorper. Duis', NULL, NULL),
(41, 'In lorem.', 'ultrices', 1915, 'sit amet risus. Donec egestas. Aliquam nec enim. Nunc ut erat.', NULL, NULL),
(42, 'faucibus orci', 'vestibulum', 13930, 'nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus', NULL, NULL),
(43, 'in, hendrerit', 'Nunc', 7021, 'ullamcorper, nisl arcu iaculis enim, sit amet', NULL, NULL),
(44, 'Curabitur ut', 'Aliquam', 20040, 'faucibus orci luctus et ultrices posuere cubilia Curae', NULL, NULL),
(45, 'ullamcorper. Duis', 'tincidunt', 19282, 'quis diam luctus lobortis. Class aptent taciti sociosqu ad litora', NULL, NULL),
(46, 'nonummy ultricies', 'eget', 16271, 'egestas. Aliquam fringilla cursus purus. Nullam', NULL, NULL),
(47, 'justo. Proin', 'Quisque', 16447, 'erat eget ipsum. Suspendisse sagittis. Nullam vitae diam.', NULL, NULL),
(48, 'risus. Nunc', 'nulla.', 5707, 'magna. Sed eu eros. Nam consequat dolor vitae dolor. Donec fringilla. Donec', NULL, NULL),
(49, 'Donec est', 'orci', 6984, 'vel, vulputate eu, odio. Phasellus at augue id ante dictum', NULL, NULL),
(50, 'sem semper', 'interdum.', 10720, 'risus a ultricies adipiscing, enim mi tempor lorem, eget mollis lectus pede et risus. Quisque', NULL, NULL),
(51, 'vel arcu', 'Nunc', 6006, 'quis turpis vitae purus gravida sagittis. Duis gravida.', NULL, NULL),
(52, 'felis. Donec', 'sem', 621, 'urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida', NULL, NULL),
(53, 'et tristique', 'interdum', 5119, 'malesuada augue ut lacus. Nulla tincidunt, neque', NULL, NULL),
(54, 'diam. Pellentesque', 'pharetra', 12147, 'aliquet magna a neque. Nullam ut nisi a odio semper cursus. Integer mollis.', NULL, NULL),
(55, 'diam. Duis', 'nulla.', 288, 'Nam ligula elit, pretium et, rutrum non, hendrerit id,', NULL, NULL),
(56, 'Proin vel', 'fringilla', 5592, 'fermentum metus. Aenean sed pede nec ante blandit viverra. Donec tempus,', NULL, NULL),
(57, 'vitae, posuere', 'sodales', 22356, 'nisi dictum augue malesuada malesuada. Integer id', NULL, NULL),
(58, 'metus. In', 'neque.', 12162, 'ornare tortor at risus. Nunc ac sem', NULL, NULL),
(59, 'quis, tristique', 'justo.', 19767, 'a, malesuada id, erat. Etiam vestibulum massa rutrum magna. Cras convallis convallis dolor. Quisque', NULL, NULL),
(60, 'Nunc commodo', 'quis', 14765, 'non nisi. Aenean eget metus. In nec orci.', NULL, NULL),
(61, 'tortor nibh', 'dis', 19818, 'convallis in, cursus et, eros. Proin ultrices. Duis volutpat nunc sit amet metus.', NULL, NULL),
(62, 'Quisque nonummy', 'turpis.', 12820, 'nisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin', NULL, NULL),
(63, 'suscipit nonummy.', 'ac', 11219, 'pharetra sed, hendrerit a, arcu. Sed et libero.', NULL, NULL),
(64, 'Fusce feugiat.', 'vel', 21111, 'ullamcorper, velit in aliquet lobortis, nisi nibh lacinia', NULL, NULL),
(65, 'Suspendisse non', 'odio', 2851, 'vel, faucibus id, libero. Donec consectetuer mauris id sapien. Cras dolor dolor, tempus non, lacinia', NULL, NULL),
(67, 'Aenean gravida', 'odio.', 5127, 'fringilla mi lacinia mattis. Integer eu lacus. Quisque imperdiet, erat nonummy ultricies', NULL, NULL),
(68, 'Proin sed', 'mauris', 6159, 'lacus. Cras interdum. Nunc sollicitudin commodo ipsum.', NULL, NULL),
(69, 'mi. Aliquam', 'ad', 15478, 'orci luctus et ultrices posuere cubilia', NULL, NULL),
(70, 'placerat, augue.', 'non', 11842, 'Donec non justo. Proin non massa non ante bibendum ullamcorper. Duis', NULL, NULL),
(71, 'pede sagittis', 'diam', 21205, 'in faucibus orci luctus et ultrices posuere cubilia Curae Donec', NULL, NULL),
(72, 'luctus et', 'Nunc', 19332, 'eu, eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in', NULL, NULL),
(73, 'vitae, posuere', 'non', 2010, 'tincidunt tempus risus. Donec egestas. Duis ac arcu. Nunc mauris. Morbi non sapien molestie orci', NULL, NULL),
(74, 'placerat, augue.', 'Lorem', 17122, 'ac nulla. In tincidunt congue turpis. In condimentum. Donec at arcu. Vestibulum', NULL, NULL),
(75, 'vitae purus', 'lacinia', 2588, 'sodales. Mauris blandit enim consequat purus.', NULL, NULL),
(76, 'ornare, lectus', 'Vivamus', 20221, 'eget, volutpat ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing', NULL, NULL),
(77, 'molestie arcu.', 'dapibus', 23212, 'sit amet, risus. Donec nibh enim, gravida sit amet, dapibus', NULL, NULL),
(78, 'ut, pellentesque', 'hendrerit.', 14252, 'in, tempus eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed', NULL, NULL),
(79, 'purus. Duis', 'in', 22472, 'erat, eget tincidunt dui augue eu tellus. Phasellus elit', NULL, NULL),
(80, 'vulputate, posuere', 'molestie', 15391, 'gravida nunc sed pede. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus', NULL, NULL),
(81, 'accumsan laoreet', 'neque.', 21822, 'ut, pellentesque eget, dictum placerat, augue. Sed molestie. Sed id risus quis diam luctus', NULL, NULL),
(82, 'vehicula aliquet', 'arcu', 14500, 'Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non', NULL, NULL),
(83, 'ante. Vivamus', 'Proin', 24444, 'Etiam laoreet, libero et tristique pellentesque, tellus sem mollis dui,', NULL, NULL),
(84, 'mollis vitae,', 'eu', 1154, 'cursus in, hendrerit consectetuer, cursus et, magna. Praesent interdum ligula eu', NULL, NULL),
(85, 'Donec vitae', 'vitae', 14954, 'varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est.', NULL, NULL),
(86, 'enim. Sed', 'adipiscing', 892, 'velit egestas lacinia. Sed congue, elit sed consequat auctor, nunc nulla vulputate dui, nec tempus', NULL, NULL),
(87, 'nulla vulputate', 'lorem,', 11814, 'consectetuer rhoncus. Nullam velit dui, semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim', NULL, NULL),
(88, 'volutpat nunc', 'ac', 10588, 'lorem vitae odio sagittis semper. Nam tempor diam dictum sapien. Aenean', NULL, NULL),
(89, 'amet luctus', 'mauris', 21150, 'vel, venenatis vel, faucibus id, libero. Donec consectetuer mauris id sapien. Cras dolor dolor, tempus', NULL, NULL),
(90, 'non arcu.', 'consectetuer', 23650, 'erat volutpat. Nulla facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla. Integer vulputate, risus', NULL, NULL),
(91, 'eu, ligula.', 'Pellentesque', 12991, 'risus varius orci, in consequat enim', NULL, NULL),
(92, 'id risus', 'metus', 20935, 'in, hendrerit consectetuer, cursus et, magna. Praesent interdum ligula', NULL, NULL),
(93, 'ultricies ligula.', 'Nunc', 20037, 'pede. Suspendisse dui. Fusce diam nunc, ullamcorper eu, euismod ac, fermentum', NULL, NULL),
(94, 'ipsum. Suspendisse', 'a', 7080, 'vulputate, risus a ultricies adipiscing, enim mi tempor lorem, eget mollis lectus', NULL, NULL),
(95, 'dolor dapibus', 'ridiculus', 2970, 'habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam fringilla cursus', NULL, NULL),
(96, 'est. Nunc', 'est.', 4336, 'Etiam gravida molestie arcu. Sed eu nibh vulputate', NULL, NULL),
(97, 'faucibus leo,', 'lectus', 19591, 'interdum. Curabitur dictum. Phasellus in', NULL, NULL),
(98, 'Nam ligula', 'id', 2054, 'ultrices sit amet, risus. Donec nibh enim, gravida sit amet, dapibus id, blandit at, nisi.', NULL, NULL),
(99, 'turpis. Aliquam', 'sagittis', 17663, 'mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse aliquet, sem ut cursus', NULL, NULL),
(100, 'litora torquent', 'malesuada', 11502, 'lacus vestibulum lorem, sit amet ultricies sem', NULL, NULL),
(101, 'semper egestas,', 'pharetra', 2968, 'luctus ut, pellentesque eget, dictum placerat, augue. Sed molestie. Sed id risus quis diam', NULL, NULL),
(102, 'Hades', 'Roguelike, Action, Mythology, FastPaced', 435000, 'lorem ipsum dolor sit amet', '2022-03-01 07:43:23', '2022-03-01 07:43:23');

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
(2, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(3, '2022_02_27_153232_create_games_table', 1),
(4, '2022_02_27_153315_create_carts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'customer',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Xel', 'xel@gmail.com', NULL, '$2y$10$FW6M9upIyzCki4lGmHr3COUzb4iKEGqMDOICUxdwq/kbtjO2YVfJO', 'admin', NULL, '2022-02-28 20:18:29', '2022-02-28 20:18:29'),
(2, 'Alex', 'alex@gmail.com', NULL, '$2y$10$6jQQJm8rAmqtTbAfzgeGp.R1ciTtNMRhl/cPFyZrWZkYFnXi63v3m', 'admin', NULL, '2022-03-01 00:08:01', '2022-03-01 00:08:01'),
(3, 'Alexander', 'alexander@gmail.com', NULL, '$2y$10$tsCYhSZ0c.yTvNqGsgEbu./47ZUfm5G87hMWHm7nlQ9qbZUCrRI8y', 'customer', NULL, '2022-03-01 00:48:31', '2022-03-01 00:48:31'),
(4, 'Cassava', 'cass@gmail.com', NULL, '$2y$10$xf4mUOZ0pJZNaUvHnKPZDevVsp06K0dZO8GwgPgoCpjeNpLx2RWFa', 'staff', NULL, '2022-03-01 00:50:10', '2022-03-01 00:50:10'),
(5, 'Camelot', 'came@gmail.com', NULL, '$2y$10$hBI7WtIlwKCbk2TL3CKgjuWHsxBQg5psTnNlKY520bL833ALI1YGm', 'customer', NULL, '2022-03-01 01:05:48', '2022-03-01 01:05:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id_cart`),
  ADD KEY `carts_id_games_foreign` (`id_games`),
  ADD KEY `carts_id_users_foreign` (`id_users`);

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id_games`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id_cart` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
  MODIFY `id_games` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_id_games_foreign` FOREIGN KEY (`id_games`) REFERENCES `games` (`id_games`),
  ADD CONSTRAINT `carts_id_users_foreign` FOREIGN KEY (`id_users`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
