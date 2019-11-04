-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- 主機: localhost
-- 產生時間： 2018 年 03 月 09 日 04:17
-- 伺服器版本: 10.1.24-MariaDB
-- PHP 版本： 7.0.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `WebsiteCollect`
--

-- --------------------------------------------------------

--
-- 資料表結構 `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表的匯出資料 `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_04_28_014444_create_projects_table', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `projects`
--

CREATE TABLE `projects` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tpl` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` int(11) DEFAULT NULL,
  `caseName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designer` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `editor` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rd` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filename` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ver` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表的匯出資料 `projects`
--

INSERT INTO `projects` (`id`, `date`, `tpl`, `code`, `caseName`, `designer`, `editor`, `rd`, `link`, `filename`, `ver`, `remark`, `remember_token`, `created_at`, `updated_at`) VALUES
(7, NULL, 'pal', NULL, '華爾街娛樂城', 'Liying', NULL, NULL, '\\\\mcd-one\\artWeb\\(1)專案\\(1)整合站\\(2)租網\\original\\華爾街娛樂城＠pal', '1518592949.jpeg', '1.0', 'D07', NULL, '2018-02-14 07:22:30', '2018-02-22 03:27:09'),
(8, NULL, 'hz', NULL, '濠庄', 'Miona', NULL, NULL, '\\\\mcd-one\\web_project\\(1)專案\\(1)整合站\\(2)租網\\delete\\濠庄@hz', '1519207910.jpeg', '1.0', 'B07', NULL, '2018-02-14 07:23:18', '2018-02-22 03:27:15'),
(9, NULL, 'oz', NULL, '澳門金沙solaire(欧洲娱乐场)', 'Clare', NULL, NULL, '\\\\mcd-one\\web_project\\(1)專案\\(1)整合站\\(2)租網\\original\\澳門金沙solaire(歐洲娛樂場)@oz', '1519207055.jpeg', '2.0', 'A15', NULL, '2018-02-14 07:24:02', '2018-02-22 03:27:22'),
(10, NULL, 'lfg', NULL, '澳門銀河官網(罗浮宫娱乐城)', 'Wilson', NULL, NULL, '\\\\mcd-one\\web_project\\(1)專案\\(1)整合站\\(2)租網\\delete\\澳門銀河官網(羅浮宮)@lfg   ►C04', '1519207992.jpeg', '2.0', 'C04', NULL, '2018-02-14 07:50:05', '2018-02-22 03:27:28'),
(11, NULL, 'kd', NULL, '皇者娛樂@kd', 'Celia', NULL, NULL, '\\\\mcd-one\\web_project\\(1)專案\\(1)整合站\\(2)租網\\delete\\皇者娛樂@kd  ►D02\\1.0', '1519208062.jpeg', '1.0', 'D02', NULL, '2018-02-14 07:50:43', '2018-02-22 03:27:34'),
(12, NULL, 'sf', NULL, '羅斯福娛樂城@sf', 'Celia', NULL, NULL, '\\\\mcd-one\\web_project\\(1)專案\\(1)整合站\\(2)租網\\delete\\羅斯福娛樂城@sf ►C05同\\1.0', '1519208120.png', '1.0', 'C05', NULL, '2018-02-14 07:51:17', '2018-02-22 03:27:40'),
(13, NULL, 'lbf', NULL, '澳門金沙娛樂城sands casino(蘭博娛樂城 )', 'Fanny', NULL, NULL, '\\\\mcd-one\\web_project\\(1)專案\\(1)整合站\\(2)租網\\delete\\澳門金沙娛樂城sands casino(蘭博娛樂城 ) @lbf   ►A06\\2.0', '1519208209.jpeg', '2.0', 'A06', NULL, '2018-02-14 07:51:45', '2018-02-22 03:27:46'),
(14, NULL, 'net', NULL, '銀河casino', 'Peach', NULL, NULL, '\\\\mcd-one\\web_project\\(1)專案\\(1)整合站\\(2)租網\\original\\銀河casino@net', '1519207240.png', '1.0', 'A02', NULL, '2018-02-14 07:52:12', '2018-02-22 03:27:52'),
(15, '2017-02-08', 'jsx', NULL, '金沙999娛樂城', 'Peach', 'Chardin', NULL, '\\\\mcd-one\\web_project\\(1)專案\\(1)整合站\\(2)租網\\original\\金沙999娛樂城@jsx', '1519207387.jpeg', '1.0', 'D01', NULL, '2018-02-14 07:53:13', '2018-02-22 03:04:55'),
(16, '2017-02-06', 'cc8', NULL, '澳門金沙VIP GAlAXY', 'Rita', 'Chardin', NULL, '\\\\mcd-one\\web_project\\(1)專案\\(1)整合站\\(2)租網\\delete\\澳門金沙VIP GAlAXY＠cc8', '1519207613.jpeg', '1.0', 'C09', NULL, '2018-02-14 07:53:44', '2018-02-22 03:22:41'),
(17, NULL, 'jx8', NULL, '澳門鉅星', 'Peach', NULL, NULL, '\\\\mcd-one\\web_project\\(1)專案\\(1)整合站\\(2)租網\\delete\\澳門鉅星@jx8\\1.0', '1519270437.jpeg', '1.0', 'N/A', NULL, '2018-02-14 07:54:10', '2018-02-22 03:33:58'),
(18, NULL, 'ddc', NULL, '金沙大賭場', 'Wilson', NULL, NULL, '\\\\mcd-one\\web_project\\(1)專案\\(1)整合站\\(2)租網\\delete\\金沙大賭場@ddc\\1.0', '1519270515.jpeg', '1.0', 'A03', NULL, '2018-02-14 07:57:04', '2018-02-22 03:35:16'),
(19, NULL, 'dgd', NULL, '金沙國際 sands casino online', 'Celia', NULL, NULL, '\\\\mcd-one\\web_project\\(1)專案\\(1)整合站\\(2)租網\\original\\金沙國際 sands casino online(大哥大娛樂城)@dgd\\3.0', '1519270579.jpeg', '3.0', 'D07', NULL, '2018-02-14 07:57:43', '2018-02-22 03:36:20'),
(20, NULL, 'hct', NULL, '好彩頭', 'Rita', NULL, NULL, '\\\\mcd-one\\web_project\\(1)專案\\(1)整合站\\(2)租網\\original\\好彩頭@hct\\1.0', '1519270627.jpeg', '1.0', 'C05', NULL, '2018-02-14 07:58:29', '2018-02-22 03:37:09'),
(21, NULL, 'gj', NULL, '萬博國際', 'Celia', NULL, NULL, '\\\\mcd-one\\web_project\\(1)專案\\(1)整合站\\(2)租網\\original\\萬博國際@gj\\1.0', '1519270700.jpeg', '1.0', 'N/A', NULL, '2018-02-14 07:58:56', '2018-02-22 03:38:22'),
(23, NULL, 'qs', NULL, '清水國際', 'Chaos', NULL, NULL, '\\\\mcd-one\\web_project\\(1)專案\\(1)整合站\\(2)租網\\delete\\清水國際@qs\\1.0', '1519270804.jpeg', NULL, 'B02', NULL, '2018-02-14 07:59:52', '2018-02-22 03:40:05'),
(24, NULL, '567', NULL, '中東國際', 'Liying', NULL, NULL, '\\\\mcd-one\\web_project\\(1)專案\\(1)整合站\\(2)租網\\original\\中東國際@567\\2.0', '1519270837.jpeg', '2.0', 'A02', NULL, '2018-02-14 08:00:24', '2018-02-22 03:40:38'),
(25, NULL, 'won', NULL, 'Wonder Casino', 'Wilson', NULL, NULL, '\\\\mcd-one\\web_project\\(1)專案\\(1)整合站\\(2)租網\\original\\Wonder Casino@won\\1.0', '1519270886.jpeg', NULL, 'A16', NULL, '2018-02-14 08:02:18', '2018-02-22 03:41:27'),
(26, NULL, 'tt8', NULL, '天天娛樂', 'Celia', NULL, NULL, '\\\\mcd-one\\web_project\\(1)專案\\(1)整合站\\(2)租網\\original\\天天娛樂@tt8\\1.0', '1519270935.jpeg', '1.0', 'C01', NULL, '2018-02-14 08:02:41', '2018-02-22 03:42:16'),
(27, NULL, '334', NULL, '大庄家賭場', 'Liying', NULL, NULL, '\\\\mcd-one\\web_project\\(1)專案\\(1)整合站\\(2)租網\\original\\大庄家賭場(正牌澳門金沙娛樂場)@334\\3.0', '1519208717.jpeg', '3.0', 'C06', NULL, '2018-02-14 08:03:25', '2018-02-22 03:29:47'),
(28, NULL, '607', NULL, '燃典線上娛樂', 'Liying', NULL, NULL, '\\\\mcd-one\\web_project\\(1)專案\\(1)整合站\\(2)租網\\original\\燃典線上娛樂@607\\1.0', '1519208782.jpeg', '1.0', 'A15', NULL, '2018-02-14 08:04:02', '2018-02-22 03:31:24'),
(29, NULL, 'gj8', NULL, '澳門金沙賭場線上娛樂城', 'Wilson', NULL, NULL, '\\\\mcd-one\\web_project\\(1)專案\\(1)整合站\\(2)租網\\original\\澳門金沙賭場線上娛樂城(國際俱樂部)@gj8\\4.0', '1519208845.jpeg', '4.0', 'D06', NULL, '2018-02-14 08:04:27', '2018-02-22 03:31:30'),
(30, NULL, '77', NULL, '馬牌娛樂城', 'Rita', NULL, NULL, '\\\\mcd-one\\web_project\\(1)專案\\(1)整合站\\(9)公版備存\\D07\\20170717_馬牌娛樂城(三合)@77', '1519271613.jpeg', NULL, 'D07\n沒檔案', NULL, '2018-02-14 08:05:25', '2018-02-22 03:53:34'),
(31, NULL, 'hyy', NULL, '匯銀國際', 'Peach', NULL, NULL, '\\\\mcd-one\\web_project\\(1)專案\\(1)整合站\\(2)租網\\original\\匯銀國際@hyy\\1.0', '1519271000.jpeg', '1.0', 'A06', NULL, '2018-02-14 08:05:50', '2018-02-22 03:43:22'),
(32, NULL, 'ir', NULL, '新銀河(老子很有錢)', 'Clare', NULL, NULL, '\\\\mcd-one\\web_project\\(1)專案\\(1)整合站\\(2)租網\\original\\新銀河(老子很有錢)@ir\\2.0', '1519271147.jpeg', '2.0', 'C09', NULL, '2018-02-14 08:06:57', '2018-02-22 03:45:49'),
(33, NULL, 'wu', NULL, '五洲娛樂城', 'Rita', 'Miona', NULL, '\\\\mcd-one\\web_project\\(1)專案\\(1)整合站\\(2)租網\\delete\\五洲娛樂城@wu\\1.0', '1519208476.jpeg', '1.0', 'A09', NULL, '2018-02-14 08:07:17', '2018-02-22 03:25:26'),
(34, NULL, 'xx', NULL, '澳門娛樂城', 'Fanny', 'Celia', NULL, '\\\\mcd-one\\web_project\\(1)專案\\(1)整合站\\(2)租網\\delete\\澳門娛樂城＠xx\\1.0', '1519271295.jpeg', NULL, 'B02', NULL, '2018-02-14 08:08:34', '2018-02-22 03:48:16'),
(35, NULL, 'ncs', NULL, '牛車水娛樂城', 'Wilson', 'Fanny', NULL, '\\\\mcd-one\\web_project\\(1)專案\\(1)整合站\\(2)租網\\original\\牛車水娛樂城@ncs\\1.0', '1519271333.jpeg', NULL, 'D06', NULL, '2018-02-14 08:08:58', '2018-02-22 03:48:55'),
(36, NULL, 'xb', NULL, '訊搏', 'Wilson', NULL, NULL, '\\\\mcd-one\\web_project\\(1)專案\\(1)整合站\\(2)租網\\original\\訊搏＠xb\\1.0', '1519271371.jpeg', '1.0', 'A11', NULL, '2018-02-14 08:09:33', '2018-02-22 03:49:32'),
(37, NULL, NULL, NULL, '利高', 'Celia', NULL, NULL, '\\\\mcd-one\\web_project\\(1)專案\\(1)整合站\\(2)租網\\delete\\利高\\', '1519208209.jpeg', NULL, 'D02', NULL, '2018-02-14 08:09:53', '2018-02-22 03:31:50'),
(38, NULL, 'cs', NULL, '財神娛樂城', 'Fanny', NULL, NULL, '\\\\mcd-one\\web_project\\(1)專案\\(1)整合站\\(2)租網\\original\\財神娛樂城@cs\\2.0', '1519274096.jpeg', '2.0', 'N/A', NULL, '2018-02-14 08:10:35', '2018-02-22 04:34:58');

-- --------------------------------------------------------

--
-- 資料表結構 `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表的匯出資料 `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `username`) VALUES
(1, 'bbin_web', 'bbin_web@example.com', '$2y$10$uEFT3JwkMwqIeY0T7KeFeOWdlBp92DxZtRnOuco5CFCGxCZtGOaJy', 'U9TE9u12chrYAkHlXOhU3wa2qcghDW6t9StHiTnls20wRQagP8HtFUwcxtuD', '2017-07-04 09:05:35', '2017-07-04 09:05:35', 'bbin_web');

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- 資料表索引 `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- 使用資料表 AUTO_INCREMENT `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- 使用資料表 AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
