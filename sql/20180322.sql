-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- 主機: localhost
-- 產生時間： 2018 年 03 月 22 日 10:35
-- 伺服器版本: 10.1.28-MariaDB
-- PHP 版本： 7.1.11

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
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
(1, '2015-09-18', 'esball', 'esb', 'Esball', NULL, 'Yuna', 'Felicia', '\\\\mcd-oneweb_project(1)專案(1)整合站(1)內網Esball', 'img_esball.jpg', '12.0', 'esball提供設計', NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(2, NULL, 'bmw999', 'bmw', '寶馬', NULL, NULL, NULL, '\\\\mcd-oneweb_project(1)專案(1)整合站(1)內網寶馬', 'img_bmw999.jpg', '5.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(3, NULL, 'bet9', 'b9', '博九', NULL, 'Chardin', NULL, '\\\\mcd-oneweb_project(1)專案(1)整合站(1)內網博九', 'img_bet9.jpg', '8.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(4, NULL, 'live999_simple', 'liv', '淘金盈', NULL, NULL, NULL, '\\\\mcd-oneweb_project(1)專案(1)整合站(1)內網淘金盈', 'img_live999_simple.jpg', '5.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(5, '2015-12-15', 'midoripbet', 'mdr', 'BBIN電投廳', 'Miona', 'Chardin', NULL, '\\\\mcd-oneweb_project(1)專案(1)整合站(1)內網BBIN電投廳(midori電投廳)', 'img_midoripbet.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(6, NULL, 'www555', 'liv', '盛世', NULL, NULL, NULL, '\\\\mcd-oneweb_project(1)專案(1)整合站(1)內網盛世', 'img_www555.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(7, '2013-10-29', '678', '678', '678', NULL, 'Bandy', 'Ezio', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original678@678', 'img_678.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(8, '2016-09-20', '888zr', 'cny', '888真人(嘉年華直營)', 'Miona', 'Chaos', 'Ivy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original888真人(嘉年華直營)@cny', 'img_888zr.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(9, '2016-03-07', 'tushan', 'tus', '888真人娛樂(涂山)', 'Celia', 'Wilson', 'Ivy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original888真人娛樂(涂山)@tus', 'img_tushan.jpg', '4.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(10, '2016-04-18', 'legend', '447', '888真人賭場(原傳奇)', 'Chardin', 'Celia', 'Elsa', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original888真人賭場(原傳奇)@447', 'img_legend.jpg', '3.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(11, '2014-12-24', 'dajihui', '8zr', '888真人娛樂場(大集匯)', 'Jessica', 'Celia', 'Felicia', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original888真人娛樂場(大集匯)@8zr', 'img_dajihui.jpg', '3.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(12, '2016-01-01', 'zr888d', 'szr', '888真人官網直營', 'Rita', 'Celia', 'Wendy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original888真人官網直營@szr', 'img_zr888d.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(13, '2015-10-01', '888zhenren', 'z8', '888真人國際賭場', 'Chaos', 'Chaos', 'Ezio', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original888真人國際賭場@z8', 'img_888zhenren.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(14, '2016-11-28', 'galaxy', '99', '99真人', 'Rita', 'Peach', 'Haix', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original99真人@99', 'img_galaxy.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(15, '2017-09-11', 'A8', 'a8', 'A8', 'Celia', 'Chaos', 'Alex', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網originalA8@a8', 'img_a8.jpg', '3.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(16, '2014-11-12', 'bbinfun', 'bbg', 'BBIN Fun Games', 'Jessica', NULL, 'Felicia', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網originalBBIN Fun Games@bbg', 'img_bbinfun.jpg', '1.0', 'A08，使用Rudy設計的聖地牙哥版面，logo重新設計過，用於APP審核', NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(17, '2015-01-22', 'bet888vip', 'use', 'BET888', 'Peach', 'Peach', 'Ezio', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網originalBET888@use', 'img_bet888vip.jpg', '1.0', 'A02', NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(18, '2015-06-26', 'bkkclub', 'bk2', 'BKK娛樂城', 'Wilson', 'Celia', 'Avery', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網originalBKK娛樂城@bk2', 'img_bkkclub.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(19, '2016-10-18', 'crowncasino', 'crc', 'CROWN皇冠線上娛樂', 'Chaos', 'Rita', 'ian', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網originalCROWN皇冠線上娛樂@crc', 'img_crowncasino.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(20, '2016-07-29', 'f1casino', 'F1', 'F1娛樂', 'Rita', 'Miona', 'Ivy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網originalF1娛樂@F1', 'img_f1casino.jpg', '1.0', 'C08', NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(21, NULL, 'g3', 'ggg', 'G3', NULL, NULL, 'Puding', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網originalG3@ggg', 'img_g3.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(22, '2017-03-15', 'wanda', 'wd', 'GALAXY BET 澳門銀河賭場(萬達)', 'Rita', 'Chardin', '小孟', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網originalGALAXY BET 澳門銀河賭場(萬達)@wd', 'img_wanda.jpg', '3.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(23, '2017-12-05', 'lianhe', 'mh', 'GALAXY MACAU 澳門銀河(名匯國際)', 'Miona', 'Fanny', 'Alex', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網originalGALAXY MACAU 澳門銀河(名匯國際)@mh', 'img_lianhe.jpg', '3.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(24, '2016-11-07', 'galaxy8018', 'yhe', 'GALAXY MACAU 澳門銀河賭場', 'Chardin', 'Celia', 'Mike', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網originalGALAXY MACAU 澳門銀河賭場 @yhe', 'img_galaxy8018.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(25, '2017-03-16', 'galaxymacau', '518', 'GALAXY MACAU 澳門銀河娛樂場 GALAXY MACAU CASINO', 'Chaos', 'Chaos', 'Elsa', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網originalGALAXY MACAU 澳門銀河娛樂場 GALAXY MACAU CASINO@518', 'img_galaxymacau.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(26, '2017-03-27', 'flush', 'ths', 'GALAXY MACAU 銀河國際娛樂城(同花順娛樂城)', 'Chardin', 'Fanny', '小孟', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網originalGALAXY MACAU 銀河國際娛樂城(同花順娛樂城)@ths', 'img_flush.jpg', '3.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(27, '2016-08-01', 'galaxy77', 'up', 'GALAXY MACAU 澳門銀河娛樂場', 'Clare', 'Wilson', 'Ivy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網originalGALAXY MACAU 澳門銀河娛樂場@up', 'img_galaxy77.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(28, '2015-02-09', 'yin0011', 'gmc', 'GALAXY MACAU 澳門銀河官方直營', 'Chardin', 'Chardin', 'Fenix', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網originalGALAXY MACAU 澳門銀河官方直營@gmc', 'img_yin0011.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(29, '2016-06-08', 'galaxy88', 'yh4', 'GALAXY MACAU銀河娛樂城(GALAXY MACAO銀河娛樂城)', 'Chaos', 'Liying', '小孟', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網originalGALAXY MACAU銀河娛樂城(GALAXY MACAO銀河娛樂城)@yh4', 'img_galaxy88.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(30, '2017-07-31', 'goodday', 'hrz', 'GALAXY MACAU澳門銀河賭城(好日子娛樂城)', 'Yuna', 'Celia', '小孟', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網originalGALAXY MACAU澳門銀河賭城(好日子娛樂城)@hrz', 'img_goodday.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(31, '2014-12-15', 'hl88', '757', 'GALAXY MACAU澳門銀河娛樂城(恒利)', 'Fanny', 'Wilson', 'Avery', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網originalGALAXY MACAU澳門銀河娛樂城(恒利)@757', 'img_hl88.jpg', '3.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(32, '2016-09-07', 'shangrila', 'gm', 'GALAXY MACAU澳門銀河網上賭場(香格里拉)', 'Wilson', 'Celia', 'Elsa', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網originalGALAXY MACAU澳門銀河網上賭場(香格里拉)@gm', 'img_shangrila.jpg', '5.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(33, '2016-08-24', 'hero6688', 'spc', 'GALAXY TM澳門銀河官網(金沙銀河賭場)', 'Clare', 'Chaos', 'shiang', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網originalGALAXY TM澳門銀河官網(金沙銀河賭場)@spc', 'img_hero6688.jpg', '3.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(34, '2016-12-28', 'jili', 'ji', 'GALAXY TM澳門銀河官方網(waldo華都娛樂場)', 'Miona', 'Liying', 'Haix', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網originalGALAXY TM澳門銀河官方網(waldo華都娛樂場)@ji', 'img_jili.jpg', '3.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(35, '2017-11-09', 'amyh159', '159', 'GALAXY 澳門銀河賭場 CASINO', 'Fanny', 'Wilson', 'randy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網originalGALAXY 澳門銀河賭場 CASINO@159', 'img_amyh159.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(36, '2017-06-19', 'galaxytm995', '995', 'GALAXY 澳門銀河線上真人博彩娛樂城 GALAXY TM MACAU', 'Peach', 'Celia', 'ian', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網originalGALAXY 澳門銀河線上真人博彩娛樂城 GALAXY TM MACAU@995', 'img_galaxytm995.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(37, '2017-01-18', 'xiaoyaofang', 'xyf', 'GALAXY澳門銀河CASINO®娛樂場(逍遙坊)', 'Chardin', 'Chaos', 'Wendy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網originalGALAXY澳門銀河CASINO®娛樂場(逍遙坊)@xyf', 'img_xiaoyaofang.jpg', '3.0', '已解除會員解析', NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(38, '2016-01-27', 'dplayers', 'dwj', 'GALAXY澳門銀河MACAU(大玩家)', 'Rita', 'Celia', 'Ivy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網originalGALAXY澳門銀河MACAU(大玩家)@dwj', 'img_dplayers.jpg', '4.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(39, '2016-09-26', 'wrm', '826', 'GALAXY澳門銀河casino娛樂場(bet365娛樂城)', 'Rita', 'Celia', 'Elsa', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網originalGALAXY澳門銀河casino娛樂場(bet365娛樂城)@826', 'img_wrm.jpg', '3.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(40, '2014-12-30', 'yinheyulechang', 'yhf', 'GALAXY銀河娛樂場', 'Yuna', 'Chaos', 'Nic', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網originalGALAXY銀河娛樂場@yhf', 'img_yinheyulechang.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(41, '2016-05-24', 'yinheguoji', '44', 'GALAXY澳門銀河國際', 'Rita', 'Rita', 'Elsa', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網originalGALAXY澳門銀河國際@44', 'img_yinheguoji.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(42, '2016-11-07', 'galaxyy66', 'y66', 'GALAXY澳門銀河集團', 'Peach', 'Chaos', 'Elsa', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網originalGALAXY澳門銀河集團@y66', 'img_galaxyy66.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(43, '2014-12-15', 'yh22', 'y77', 'GALAXY澳門銀河賭場', 'Chaos', 'Chardin', 'Avery', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網originalGALAXY澳門銀河賭場@y77', 'img_yh22.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(44, '2017-02-06', 'athens', '555', 'GALAXY銀河娛樂場官網(雅典娛樂城)', 'Peach', 'Chaos', 'Haix', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網originalGALAXY銀河娛樂場官網(雅典娛樂城)@555', 'img_athens.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(45, '2015-01-26', 'aa6163', '63', 'GALAXY澳門銀河娛樂場', 'Chardin', 'Chardin', 'Yicin', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網originalGALAXY澳門銀河娛樂場@63', 'img_aa6163.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(46, '2015-01-07', 'galaxy8997', 'gic', 'GALAXY銀河國際娛樂場', 'Celia', 'Celia', 'Elsa', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網originalGALAXY銀河國際娛樂場@gic', 'img_galaxy8997.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(47, '2016-11-01', 'aomenyinhe', '722', 'GALAXY澳門銀河網上賭場', 'Chaos', 'Liying', 'ian', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網originalGALAXY澳門銀河網上賭場@722', 'img_aomenyinhe.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(48, '2016-01-07', 'galaxyh9', 'h9', 'Galaxy CASINO 澳門銀河', 'Fanny', 'Miona', 'randy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網originalGalaxy CASINO 澳門銀河@h9', 'img_galaxyh9.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(49, '2017-04-10', 'dragon', 'dsy', 'Galaxy Macau 銀河賭場(大三元娛樂城)', 'Yuna', 'Liying', 'Jeff', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網originalGalaxy Macau 銀河賭場(大三元娛樂城)@dsy', 'img_dragon.jpg', '3.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(50, '2015-10-26', 'brazil', 'bx', 'Galaxy Macau銀河娛樂場 (巴西)', 'Chardin', 'Chardin', 'Wendy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網originalGalaxy Macau銀河娛樂場 (巴西)@bx', 'img_brazil.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(51, '2015-06-15', 'galaxyv68', 'v68', 'Galaxy Macau澳門銀河直營', 'Liying', 'Rita', 'Cindy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網originalGalaxy Macau澳門銀河直營@v68', 'img_galaxyv68.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(52, '2017-02-13', 'galaxycasino', '226', 'Galaxy macau澳門銀河casino娛樂場', 'Chardin', 'Chardin', 'Haix', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網originalGalaxy macau澳門銀河casino娛樂場@226', 'img_galaxycasino.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(53, '2016-07-13', 'galaxyvip', 'hh5', 'Galaxy vip room 銀河貴賓會', 'Chaos', 'Wilson', 'Yicin', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網originalGalaxy vip room 銀河貴賓會@hh5', 'img_galaxyvip.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(54, '2015-06-29', 'galaxywt', 'wt', 'Galaxy 銀河國際網投', 'Miona', 'Jessica', 'Cindy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網originalGalaxy 銀河國際網投@wt', 'img_galaxywt.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(55, '2015-06-01', 'galaxy19', 'y19', 'Galaxy澳門銀河Casino網上賭場', 'Chardin', 'Wilson', 'Felicia', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網originalGalaxy澳門銀河Casino網上賭場@y19', 'img_galaxy19.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(56, '2015-12-21', 'australian', 'a99', 'Galaxy澳門銀河casino有限公司(Galaxy 澳門銀河有限公司)', 'Wilson', 'Peach', 'Wendy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網originalGalaxy澳門銀河casino有限公司(Galaxy 澳門銀河有限公司)@a99', 'img_australian.jpg', '4.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(57, '2017-04-18', 'wancheng', 'wan', 'Galaxy澳門銀河娛樂城 Casino(萬成)', 'Celia', 'Peach', 'ian', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網originalGalaxy澳門銀河娛樂城 Casino(萬成)@wan', 'img_wancheng.jpg', '3.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(58, '2016-04-18', 'gome', 'usa', 'Galaxy澳門銀河娛樂場賭場直營(澳門銀河娛樂場Galaxy賭場直營)', 'Wilson', 'Miona', '小孟', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網originalGalaxy澳門銀河娛樂場賭場直營(澳門銀河娛樂場Galaxy賭場直營)@usa', 'img_gome.jpg', '3.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(59, '2015-05-14', 'kowloon', 'jl', 'Galxy澳門銀河真人(九龍)', 'Miona', 'Fanny', 'Wendy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網originalGalxy澳門銀河真人(九龍)@jl', 'img_kowloon.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(60, '2016-12-30', 'lezhongle', 'lzl', 'IMPERIAL PACIFIC博華太平洋(樂中樂國際娛樂城)', 'Yuna', 'Wilson', 'ian', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網originalIMPERIAL PACIFIC博華太平洋(樂中樂國際娛樂城)@lzl', 'img_lezhongle.jpg', '3.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(61, '2017-09-25', 'crownlivevip', 'g52', 'INTEGRITY FOREVER 亿信(皇冠真人貴賓會)', 'Rita', 'Liying', 'Alex', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網originalINTEGRITY FOREVER 亿信(皇冠真人貴賓會)@g52', 'img_crownlivevip.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(62, '2017-07-05', 'integrityforever', 'pp', 'INTEGRITY FOREVER永信', 'Rita', 'Chaos', 'Simon', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網originalINTEGRITY FOREVER永信@pp', 'img_integrityforever.jpg', '3.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(63, '2014-10-29', 'K7', 'top', 'K7', 'Chaos', 'Chaos', 'Ezio', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網originalK7@top', 'img_K7.jpg', '3.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(64, '2016-12-07', 'kki88', 'kk', 'KK娛樂城', 'Celia', 'Celia', 'shiang', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網originalKK娛樂城@kk', 'img_kki88.jpg', '3.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(65, '2015-09-09', 'mgmbet', 'mgm', 'MGM貴賓會(美高梅)', 'Peach', 'Rita', 'Wendy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網originalMGM貴賓會(美高梅)@mgm', 'img_mgmbet.jpg', '3.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(66, '2016-09-22', 'oly168', 'ppk', 'Macau Galaxy 銀河國際(奧林匹克)', 'Liying', 'Fanny', 'Elsa', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網originalMacau Galaxy 銀河國際(奧林匹克)@ppk', 'img_oly168.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(67, '2014-12-16', 'credit', 'fff', 'SANDS澳門金沙集團(信譽)', 'Celia', 'Celia', 'Ezio', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網originalSANDS澳門金沙集團(信譽)@fff', 'img_credit.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(68, '2017-06-05', 'macaoqaz', 'qaz', 'Sands Macau澳門金沙會', 'Peach', 'Fanny', 'chieh', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網originalSands Macau澳門金沙會@qaz', 'img_macaoqaz.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(69, '2015-07-01', 'sandsjj88', 'sjj', 'Sands 金沙娛樂場 Casino', 'Chaos', 'Peach', 'Wendy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網originalSands 金沙娛樂場 Casino@sjj', 'img_sandsjj88.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(70, '2016-04-27', 'maldives', '558', 'Sands澳門金沙CASINO娛樂城(馬爾代夫)', 'Chaos', 'Rita', 'Avery', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網originalSands澳門金沙CASINO娛樂城(馬爾代夫)@558', 'img_maldives.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(71, '2015-12-16', 'sanya', '3y', 'Sands金沙會賭場(三亞)', 'Rita', 'Liying', 'Wendy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網originalSands金沙會賭場(三亞)@3y', 'img_sanya.jpg', '3.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(72, '2014-12-24', 'solomon', 'sha', 'Sands金沙娛樂城(索羅門)', 'Chaos', 'Chaos', 'Elsa', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網originalSands金沙娛樂城(索羅門)@sha', 'img_solomon.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(73, '2015-11-04', 'wanbaolu', 'wbl', 'SandsⓇ金沙娛樂場(萬寶路娛樂城)', 'Celia', 'Rita', '小孟', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網originalSandsⓇ金沙娛樂場(萬寶路娛樂城)@wbl', 'img_wanbaolu.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(74, '2017-04-10', 'asia-pacific', 'F58', 'THE PARISIAN MACAO 澳門巴黎人(澳門金沙賭場sands)', 'Wilson', 'Fanny', 'Ivy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網originalTHE PARISIAN MACAO 澳門巴黎人(澳門金沙賭場sands)@F58', 'img_asia-pacific.jpg', '5.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(75, '2016-12-30', 'parisianmacao', 'par', 'THE PARISIAN 賭場 澳門巴黎人', 'Rita', 'Chaos', 'Haix', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網originalTHE PARISIAN 賭場 澳門巴黎人@par', 'img_parisianmacao.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(76, '2017-07-18', 'theparisianmacao', 'uu', 'THE PARISIAN 澳門巴黎人 Casino', 'Yuna', 'Wilson', 'Wendy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網originalTHE PARISIAN 澳門巴黎人 Casino@uu', 'img_theparisianmacao.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(77, '2017-04-10', 'theparisian', 'ren', 'THE PARISIAN 官網澳門巴黎人', 'Fanny', 'Peach', 'Yicin', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網originalTHE PARISIAN 官網澳門巴黎人@ren', 'img_theparisian.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(78, '2016-11-02', 'parisian', '6bv', 'THE PARISIAN 澳門巴黎人娛樂城', 'Clare', 'Rita', 'ian', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網originalTHE PARISIAN 澳門巴黎人娛樂城@6bv', 'img_parisian.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(79, '2016-12-19', 'parisian940', '940', 'THE PARISIAN澳門巴黎人', 'Peach', 'Wilson', 'ian', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網originalTHE PARISIAN澳門巴黎人@940', 'img_parisian940.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(80, '2017-05-03', 'mermaid', 'mry', 'THE PARISIAN澳門巴黎人娛樂場(美人魚)', 'Chaos', 'Fanny', '小孟', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網originalTHE PARISIAN澳門巴黎人娛樂場(美人魚)@mry', 'img_mermaid.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(81, '2014-10-31', 'w3838', 'tt', 'TT', 'Yuna', 'Yuna', '小孟', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網originalTT@tt', 'img_w3838.jpg', '4.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(82, '2017-05-15', 'macaoparisian', '773', 'The Macao Parisian澳門巴黎人', 'Liying', 'Liying', 'Elsa', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網originalThe Macao Parisian澳門巴黎人@773', 'img_macaoparisian.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(83, '2017-08-29', 'psparisian', 'ps', 'The Parisian 巴黎人', 'Wilson', 'Fanny', 'Alex', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網originalThe Parisian 巴黎人@ps', 'img_psparisian.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(84, '2016-04-11', 'vns168', 'com', 'VNS娛樂城(VNS)', 'Wilson', 'Fanny', 'Ivy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網originalVNS娛樂城(VNS)@com', 'img_vns168.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(85, '2017-04-12', 'timi', 'tm8', 'WG(澳門金沙賭場JSDC)', 'Peach', 'Wilson', 'ian', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網originalWG(澳門金沙賭場JSDC)@tm8', 'img_timi.jpg', '3.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(86, '2017-06-13', 'wonder', 'won', 'Wonder Casino', 'Wilson', 'Fanny', 'chieh', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網originalWonder Casino@won', 'img_wonder.jpg', '1.0', 'A16, 業主提供想要畫面素材, Art協助將頁面全部設計完成', NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(87, '2014-12-22', 'bet365', 'chn', 'bet365', 'Chardin', 'Celia', 'Felicia', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網originalet365@chn', 'img_bet365.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(88, '2014-12-22', 'harbour', '056', 'bet365現金網(海港城)', 'Chardin', 'Miona', 'Ezio', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網originalet365現金網(海港城)@056', 'img_harbour.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(89, '2016-04-14', 'js1222', '9js', 'sands金沙', 'Wilson', 'Miona', 'Avery', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網originalsands金沙@9js', 'img_js1222.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(90, '2017-06-05', 'quanxunwang', 'qxw', 'sands金沙VIP廳(全訊網娛樂場)', 'Peach', 'Fanny', 'Wendy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網originalsands金沙VIP廳(全訊網娛樂場)@qxw', 'img_quanxunwang.jpg', '2.0', '已解除會員解析', NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(91, '2014-12-30', 'jinshaplay', 'jsa', 'sands金沙娛樂場', 'Ruby', 'Rita', 'Avery', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網originalsands金沙娛樂場@jsa', 'img_jinshaplay.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(92, '2015-08-20', 'jsha988', 'dkk', 'sands澳門金沙娛樂場(金沙線上娛樂)', 'Chardin', 'Celia', '小孟', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網originalsands澳門金沙娛樂場(金沙線上娛樂)@dkk', 'img_jsha988.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(93, '2016-08-15', 'sands668', 'j05', 'sands澳門金沙國際娛樂場', 'Miona', 'Clare', '小孟', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網originalsands澳門金沙國際娛樂場@j05', 'img_sands668.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(94, '2014-01-22', 'sandsjs', 'js7', 'sands澳門金沙官方娛樂城', 'Ruby', 'Chardin', 'Jerry', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網originalsands澳門金沙官方娛樂城@js7', 'img_sandsjs.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(95, '2016-12-30', 'virgo', 'aaa', 'the parisian 澳門巴黎人 macao(處女星號娛樂城)', 'Clare', 'Clare', 'Ivy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original	he parisian 澳門巴黎人 macao(處女星號娛樂城)@aaa', 'img_virgo.jpg', '3.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(96, NULL, 'bete100', '100', '博E百', NULL, NULL, 'Xinru', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original博E百@100', 'img_bete100.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(97, '2017-10-23', 'betlego', '888', '利高(hk利高)', 'Celia', 'Celia', '小孟', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original利高(hk利高)@888', 'img_betlego.jpg', '4.0', 'D02', NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(98, NULL, 'starball', '058', '金花(星球)', NULL, NULL, '小孟', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original金花(星球)@058', 'img_starball.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(99, NULL, 'bentley', '66m', '亞洲(賓利)', NULL, 'Peach', 'Ezio', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original亞洲(賓利)@66m', 'img_bentley.jpg', '3.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(100, NULL, 'dj8886', 'dc', '頂級(頂尖)', NULL, 'Chaos', 'Cindy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original頂級(頂尖)@dc', 'img_dj8886.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(101, '2015-12-09', 'wanchai', 'wc', '銀河(灣仔)', 'Liying', 'Peach', 'Wendy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original銀河(灣仔)@wc', 'img_wanchai.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(102, NULL, 'zhonghua', 'yt', '一筒(中華)', NULL, NULL, 'Jeff', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original一筒(中華)@yt', 'img_zhonghua.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(103, '2017-04-17', 'shenbo138', 'yl', '申博138', 'Yuna', 'Chaos', 'Elsa', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original申博138@yl', 'img_shenbo138.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(104, '2016-10-29', 'dafa888', 'da8', '大發888娛樂城', 'Fanny', 'Chaos', 'Yicin', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original大發888娛樂城@da8', 'img_dafa888.jpg', '1.0', 'E03', NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(105, '2017-01-20', 'sands999', 'jsx', '金沙999娛樂城', 'Peach', 'Chardin', 'Ivy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original金沙999娛樂城@jsx', 'img_sands999.jpg', '1.0', 'D01', NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(106, NULL, 'kaisi', '168', '凱斯', NULL, NULL, 'Xinru', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original凱斯@168', 'img_kaisi.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(107, '2014-01-13', 'yaoji', 'app', '姚記', NULL, 'Ellen', 'Sinyi', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original姚記@app', 'img_yaoji.jpg', '4.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(108, NULL, 'dz2288', 'dz', '大眾', NULL, NULL, '小孟', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original大眾@dz', 'img_dz2288.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(109, NULL, 'ph1688', 'fc', '菲彩', NULL, NULL, 'Xinru', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original菲彩@fc', 'img_ph1688.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(110, NULL, 'fh9988', 'fh', '鳳凰', NULL, NULL, '小孟', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original鳳凰@fh', 'img_fh9988.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(111, '2016-01-18', 'gg9999', 'hc', '皇城', 'Rita', 'Rita', 'Ivy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original皇城@hc', 'img_gg9999.jpg', '3.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(112, '2015-08-10', 'hongli', 'hl', '鴻利', 'Chaos', 'Liying', 'Wendy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original鴻利@hl', 'img_hongli.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(113, '2014-04-29', 'un5588', 'hq', '環球', NULL, 'Ruby', 'Yicin', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original環球@hq', 'img_un5588.jpg', '3.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(114, NULL, '62bet', 'jb', '金榜', NULL, NULL, 'Gary', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original金榜@jb', 'img_62bet.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(115, NULL, 'taurus', 'jn', '金牛', NULL, NULL, 'Ezio', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original金牛@jn', 'img_taurus.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(116, '2017-06-13', 'lebo', 'lb8', '樂博', 'Rita', 'Fanny', 'chieh', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original樂博@lb8', 'img_lebo.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(117, '2013-10-31', 'mj88', 'mjc', '名爵', NULL, NULL, 'Jeff', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original名爵@mjc', 'img_mj88.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(118, NULL, 'milan', 'ml', '米蘭', NULL, NULL, 'Puding', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original米蘭@ml', 'img_milan.jpg', '1.0', '已解除會員解析', NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(119, '2014-02-26', 'newyork', 'ny', '紐約', NULL, NULL, 'Felicia', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original紐約@ny', 'img_newyork.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(120, '2017-04-10', 'rainbow', 'rb', '瑞博', 'Chaos', 'Rita', '小孟', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original瑞博@rb', 'img_rainbow.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(121, '2013-12-18', 'mythic', 'sh', '神話', NULL, 'Peach', 'Rex', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original神話@sh', 'img_mythic.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(122, '2015-11-02', 'tuhao', 'thj', '土豪', 'Chaos', 'Wilson', 'Ivy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original土豪@thj', 'img_tuhao.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(123, NULL, 'yl5588', 'vip', '永利', NULL, NULL, 'Gary', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original永利@vip', 'img_yl5588.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(124, '2014-09-17', 'yum', 'win', '百勝', NULL, 'Chardin', 'Rex', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original百勝@win', 'img_yum.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(125, '2017-09-18', 'newsbet', 'xb', '訊搏', 'Wilson', 'Wilson', 'Wendy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original訊搏@xb', 'img_newsbet.jpg', '1.0', 'A-11', NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(126, NULL, 'xdgj88', 'xd', '喜達', NULL, NULL, '小孟', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original喜達@xd', 'img_xdgj88.jpg', '3.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(127, '2016-09-12', 'xiliguoji', 'xle', '喜力', 'Liying', 'Liying', 'shiang', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original喜力@xle', 'img_xiliguoji.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(128, '2016-09-06', 'luckybet', 'xy', '幸運', 'Celia', 'Chaos', 'shiang', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original幸運@xy', 'img_luckybet.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(129, '2016-06-01', 'u2bet', 'yb', '優博', 'Chaos', 'Fanny', 'Yicin', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original優博@yb', 'img_u2bet.jpg', '4.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(130, '2015-08-26', 'ys3333', 'yf', '盈豐', 'Chaos', 'Chaos', 'Elsa', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original盈豐@yf', 'img_ys3333.jpg', '4.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(131, '2017-09-21', 'ygod', 'yg', '亞冠', 'Celia', 'Liying', 'Ivy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original亞冠@yg', 'img_ygod.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(132, '2017-11-30', 'yatou', 'yt8', '亞投', 'Celia', 'Celia', 'randy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original亞投@yt8', 'img_yatou.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(133, '2016-06-29', 'zy', 'zyy', '中原', 'Fanny', 'Miona', 'Yicin', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original中原@zyy', 'img_zy.jpg', '3.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(134, '2016-07-18', 'dajinhu', 'da', '金沙CASINO(大金湖娛樂城)', 'Peach', 'Miona', 'Yicin', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original金沙CASINO(大金湖娛樂城)@da', 'img_dajinhu.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(135, NULL, 'redking', 'htk', '紅桃K', NULL, NULL, 'moway', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original紅桃K@htk', 'img_redking.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(136, '2016-09-26', '5h4h8', 'mjs', '金沙Sands Macau娛樂場(五湖四海)', 'Chaos', 'Celia', 'Cindy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original金沙Sands Macau娛樂場(五湖四海)@mjs', 'img_5h4h8.jpg', '4.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(137, '2014-12-31', 'jinsha943', '943', '金沙Sands', 'Chardin', 'Chardin', 'Jeff', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original金沙Sands@943', 'img_jinsha943.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(138, '2014-12-29', 'lbjn', 'lb', '金沙Sands娛樂場(蘭博基尼)', 'Chardin', 'Chardin', 'Fenix', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original金沙Sands娛樂場(蘭博基尼)@lb', 'img_lbjn.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(139, '2015-06-30', 'sjs888', 'sjs', '金沙Sands娛樂場官網', 'Wilson', 'Rita', 'Elsa', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original金沙Sands娛樂場官網@sjs', 'img_sjs888.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(140, '2017-08-16', 'seattle', 'bo9', '優德W88 (LOBET樂博)', 'Fanny', 'Wilson', 'Alex', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original優德W88 (LOBET樂博)@bo9', 'img_seattle.jpg', '4.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(141, '2017-05-26', 'webest', 'wbo', '萬博WE BEST', 'Celia', 'Chaos', 'chieh', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original萬博WE BEST@wbo', 'img_webest.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(142, '2016-09-21', 'galaxybet', 'net', '銀河casino', 'Peach', 'Chardin', 'Yicin', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original銀河casino@net', 'img_galaxybet.jpg', '1.0', 'A02', NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(143, '2014-06-20', 'gr-shanghai', 'dsh', '金沙casino賭場(大上海)', NULL, 'Ruby', 'Fenix', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original金沙casino賭場(大上海)@dsh', 'img_gr-shanghai.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(144, '2017-08-02', 'pu1166', '16p', '金沙sands娛樂賭場(十六浦)', 'Peach', 'Chardin', 'Wendy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original金沙sands娛樂賭場(十六浦)@16p', 'img_pu1166.jpg', '3.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(145, '2015-11-02', 'fzf88', 'fzf', '金沙sands在線賭城(發中發)', 'Celia', 'Rita', 'Ivy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original金沙sands在線賭城(發中發)@fzf', 'img_fzf88.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(146, '2014-12-31', 'jin2015', '55', '澳門sands金沙娛樂場', 'Yuna', 'Peach', 'Avery', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original澳門sands金沙娛樂場@55', 'img_jin2015.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(147, '2016-04-27', 'starcasino', 'xq', '金沙sands娛樂場澳門官網(星球賭場)', 'Chardin', 'Chaos', 'Avery', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original金沙sands娛樂場澳門官網(星球賭場)@xq', 'img_starcasino.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(148, '2015-04-20', 'sb588', '138', '申博sunbet', 'Ruby', 'Chardin', 'Yicin', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original申博sunbet@138', 'img_sb588.jpg', '1.0', '已解除會員解析', NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(149, '2017-09-12', 'yubianhui', 'ybh', '御匾會 ', 'Fanny', 'Rita', 'Yicin', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original御匾會 @ybh', 'img_yubianhui.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(150, '2016-02-01', 'aomen', 'aom', '金沙會 SANDS(澳門金沙Ⓡ)', 'Chaos', 'Wilson', 'Wendy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original金沙會 SANDS(澳門金沙Ⓡ)@aom', 'img_aomen.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(151, '2015-01-16', 'dejin', 'dj', '金沙會(德晉)', 'Chardin', 'Wilson', 'Wendy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original金沙會(德晉)@dj', 'img_dejin.jpg', '3.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(152, NULL, 'goddess', 'ns', '金寶博(女神)', NULL, NULL, 'Yicin', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original金寶博(女神)@ns', 'img_goddess.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(153, '2013-08-28', 'xinjinjiang', 'eng', '英格蘭(康萊德)', NULL, 'Jessica', 'Fenix', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original英格蘭(康萊德)@eng', 'img_xinjinjiang.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(154, '2015-01-12', 'jinmumian', 'js1', '金沙城(金木棉)', 'Via', 'Fanny', '小孟', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original金沙城(金木棉)@js1', 'img_jinmumian.jpg', '3.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(155, '2016-03-23', 'dream', 'ljw', '麗景灣(新夢想)', 'Fanny', 'Celia', '小孟', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original麗景灣(新夢想)@ljw', 'img_dream.jpg', '3.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(156, '2017-08-03', 'iamrich', 'ir', '新銀河(老子很有錢)', 'Clare', 'Chardin', 'Alex', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original新銀河(老子很有錢)@ir', 'img_iamrich.jpg', '2.0', 'C09, 直接套用版面', NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(157, '2015-12-30', 'cotai', 'gam', '老虎城(金沙娛樂場Sands Macau)', 'Wilson', 'Wilson', 'Ivy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original老虎城(金沙娛樂場Sands Macau)@gam', 'img_cotai.jpg', '4.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(158, '2015-08-17', 'dabaojiang', '125', '大爆獎', NULL, 'Liying', 'Avery', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original大爆獎@125', 'img_dabaojiang.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(159, '2013-01-09', 'oceanus', '809', '海立方', NULL, NULL, 'Eric', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original海立方@809', 'img_oceanus.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(160, NULL, 'betfun', 'abc', '任你博', NULL, NULL, 'Rex', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original任你博@abc', 'img_betfun.jpg', '3.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(161, '2015-10-28', 'oscar', 'ask', 'Sands Macau金沙娛樂場(奧斯卡)', 'Chardin', 'Wilson', 'Ivy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original\'Sands Macau金沙娛樂場(奧斯卡)@ask', 'img_oscar.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(162, '2013-11-14', 'babylon', 'bbl', '巴比倫', NULL, 'Peach', 'Jeff', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original巴比倫@bbl', 'img_babylon.jpg', '3.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(163, NULL, 'bailigong', 'blg', '百利宮', NULL, NULL, 'Ezio', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original百利宮@blg', 'img_bailigong.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(164, '2015-11-16', 'broadway', 'blh', '百佬匯', 'Rita', 'Celia', 'Wendy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original百佬匯@blh', 'img_broadway.jpg', '3.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(165, '2015-11-09', 'bmw555', 'bme', '寶馬會', 'Fanny', 'Chaos', 'Fenix', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original寶馬會@bme', 'img_bmw555.jpg', '5.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(166, '2015-11-09', 'betwin999', 'bme', '永利博', 'Chaos', 'Wilson', 'Wendy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original永利博@bme', 'img_betwin999.jpg', '3.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(167, NULL, 'sleepless', 'byc', '不夜城', NULL, NULL, 'Fenix', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original不夜城@byc', 'img_sleepless.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(168, NULL, 'tycoons', 'dfh', '大富豪', NULL, NULL, '小孟', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original大富豪@dfh', 'img_tycoons.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(169, '2015-04-08', 'dfs', 'dfs', '大豐收', 'Celia', 'Peach', '小孟', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original大豐收@dfs', 'img_dfs.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(170, '2014-03-19', 'darunfa', 'drf', '大潤發', NULL, 'Chaos', 'Ezio', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original大潤發@drf', 'img_darunfa.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(171, '2014-04-02', 'pharaohs', 'flw', '法老王', NULL, 'Ruby', 'Nic', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original法老王@flw', 'img_pharaohs.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(172, '2016-07-15', 'guangdong', 'gdh', '廣東會', 'Celia', 'Rita', 'wendy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original廣東會@gdh', 'img_guangdong.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(173, '2017-08-03', 'hctbb', 'hct', '澳門國際(好彩頭)', 'Clare', 'Chardin', 'jiajing', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original澳門國際(好彩頭)@hct', 'img_hctbb.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(174, '2015-01-15', 'crown888', 'hgw', '皇冠網', 'Miona', 'Miona', 'Cindy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original皇冠網@hgw', 'img_crown888.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(175, NULL, 'gtriangle', 'jsj', '金三角', NULL, NULL, 'Ezio', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original金三角@jsj', 'img_gtriangle.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(176, '2017-08-23', 'galaxyjyh', 'jyh', '銀河城', 'Liying', 'Liying', 'Haix', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original銀河城@jyh', 'img_galaxyjyh.jpg', '1.0', 'B07', NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(177, '2014-03-14', 'lankwaifong', 'lgf', '蘭桂坊', NULL, 'Chaos', 'Felicia', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original蘭桂坊@lgf', 'img_lankwaifong.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(178, '2014-12-11', 'lukes', 'lks', '盧克索', 'Fanny', 'Fanny', 'Elsa', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original盧克索@lks', 'img_lukes.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(179, '2015-09-10', 'mgmbet', 'mgm', '美高梅', NULL, 'Rita', 'Wendy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original美高梅@mgm', 'img_mgmbet.jpg', '3.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(180, '2015-09-09', 'mgmcasino', 'mm', '美高梅', 'Peach', 'Rita', 'Wendy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original美高梅@mm', 'img_mgmcasino.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(181, '2014-03-26', 'happyday', 'rrc', '天天樂', NULL, 'Liying', 'Ezio', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original天天樂@rrc', 'img_happyday.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(182, '2014-11-24', 'westin', 't66', '威斯汀', NULL, 'Fanny', 'Elsa', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original威斯汀@t66', 'img_westin.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(183, NULL, 'vebet', 'veb', '偉易博', NULL, NULL, 'Puding', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original偉易博@veb', 'img_vebet.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(184, NULL, 'yacht', 'yth', '遊艇會', NULL, NULL, 'Rex', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original遊艇會@yth', 'img_yacht.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(185, '2014-04-01', 'duhao', 'zdh', '新賭豪', NULL, 'Peach', 'Jeff', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original新賭豪@zdh', 'img_duhao.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(186, '2017-03-29', 'heroes', 'qyh', '群英會casino(群英會娛樂城)', 'Chardin', 'Wilson', 'Wendy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original群英會casino(群英會娛樂城)@qyh', 'img_heroes.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(187, '2017-10-23', 'gunan', 'ja', '君安國際 ', NULL, NULL, 'Simon', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original君安國際 @ja', 'img_gunan.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(188, '2017-08-21', 'pandora', 'pan', '澳門金沙 CASINO 賭場(潘朵拉)', 'Wilson', 'Chaos', 'Elsa', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original澳門金沙 CASINO 賭場(潘朵拉)@pan', 'img_pandora.jpg', '3.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(189, '2017-02-06', 'gonghaiduchuan', 'dd', '公海賭船 GONGHAIDUCHUAN CASINO', 'Fanny', 'Fanny', '小孟', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original公海賭船 GONGHAIDUCHUAN CASINO@dd', 'img_gonghaiduchuan.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(190, '2017-04-12', 'dakoda', 'dgd', '金沙國際 sands casino online(大哥大娛樂城)', 'Celia', 'Rita', '小孟', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original金沙國際 sands casino online(大哥大娛樂城)@dgd', 'img_dakoda.jpg', '3.0', 'D07', NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(191, '2017-04-28', 'bkkbls08', 'bk2', '星博娛樂(BKK娛樂城)', 'Liying', 'Peach', 'Elsa', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original星博娛樂(BKK娛樂城)@bk2', 'img_bkkbls08.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(192, '2015-06-12', 'yyyl666', 'yy', '英利國際(YY娛樂城)', 'Wilson', 'Wilson', 'Fenix', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original英利國際(YY娛樂城)@yy', 'img_yyyl666.jpg', '3.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(193, '2014-07-04', 'longcheng', 'lc', 'GALAXY銀河國際(龍城)', NULL, 'Chaos', 'Avery', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網originalGALAXY銀河國際(龍城)@lc', 'img_longcheng.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(194, '2016-05-09', 'star88', 'lx', '麗星郵輪(麗星)', 'Wilson', 'Miona', 'Yicin', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original麗星郵輪(麗星)@lx', 'img_star88.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(195, '2014-08-12', 'tianmao', 'tm', '韓國賭場(天貓)', NULL, 'Jessica', 'Avery', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original韓國賭場(天貓)@tm', 'img_tianmao.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(196, '2015-04-22', 'hongshulin', 'hsl', '金沙國際(紅樹林)', 'Pixie', 'Peach', 'Avery', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original金沙國際(紅樹林)@hsl', 'img_hongshulin.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(197, '2014-12-08', 'jeju', 'js5', '金沙賭場(濟州島)', 'Rita', 'Yuna', 'Ezio', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original金沙賭場(濟州島)@js5', 'img_jeju.jpg', '3.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(198, '2014-12-22', 'xinhao99', 'xh', '新濠天地(新濠峰)', 'Fanny', 'Celia', 'Wendy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original新濠天地(新濠峰)@xh', 'img_xinhao99.jpg', '4.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(199, '2017-12-20', 'sydney', 'xn', '澳門賭場(悉尼娛樂城)', 'Liying', 'Peach', 'randy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original澳門賭場(悉尼娛樂城)@xn', 'img_sydney.jpg', '3.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(200, '2016-03-23', 'msenter', 'jsy', '澳亞國際(澳門金沙娛樂)', 'Celia', 'Chardin', 'Ivy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original澳亞國際(澳門金沙娛樂)@jsy', 'img_msenter.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(201, '2017-03-27', 'sandsmacao', '11', '澳門金沙', 'Liying', 'Liying', 'Ivy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original澳門金沙@11', 'img_sandsmacao.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(202, '2017-04-06', 'bwin437', '437', '必贏國際', 'Fanny', 'Wilson', 'jiajing', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original必贏國際@437', 'img_bwin437.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(203, '2016-08-10', 'amyh', '529', '澳門銀河', 'Chaos', 'Chaos', 'Wendy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original澳門銀河@529', 'img_amyh.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(204, '2017-05-03', 'middlet', '567', '中東國際', 'Liying', 'Peach', 'chieh', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original中東國際@567', 'img_middlet.jpg', '2.0', 'A02', NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(205, NULL, 'sea88', '590', '海洋之神', NULL, NULL, 'Kingsley', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original海洋之神@590', 'img_sea88.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(206, '2017-05-12', 'emperor605', '605', '英皇國際', 'Peach', 'Chaos', 'jiajing', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original英皇國際@605', 'img_emperor605.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(207, NULL, 'gonghaibet', '710', '公海賭船', NULL, 'Peach', 'Rex', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original公海賭船@710', 'img_gonghaibet.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(208, NULL, 'tsrj', '838', '天上人間', NULL, NULL, 'Xinru', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original天上人間@838', 'img_tsrj.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(209, NULL, 'binhai', 'bh', '濱海國際', NULL, NULL, 'Fenix', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original濱海國際@bh', 'img_binhai.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(210, '2016-02-17', 'shenbo', 'bo8', '申博亞洲', 'Celia', 'Chardin', 'Ivy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original申博亞洲@bo8', 'img_shenbo.jpg', '1.0', 'C04', NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(211, '2014-06-10', 'changjiang', 'cj', '長江國際', NULL, 'Jessica', 'Cindy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original長江國際@cj', 'img_changjiang.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(212, '2014-01-13', 'fengbo', 'fb', '豐博國際', 'Coomi', 'Yuna', 'Yicin', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original豐博國際@fb', 'img_fengbo.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(213, '2016-07-04', 'bc806', 'gb', '智博娛樂', 'Clare', 'Clare', '小孟', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original智博娛樂@gb', 'img_bc806.jpg', '2.0', 'D06, 已解除會員解析', NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(214, '2017-10-20', 'gaoboguo', 'gbo', '高博國際', 'Miona', 'Rita', '小孟', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original高博國際@gbo', 'img_gaoboguo.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(215, '2015-09-22', 'gambling', 'gh', '公海賭船', 'Celia', 'Liying', 'Ivy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original公海賭船@gh', 'img_gambling.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(216, '2017-05-10', 'huambo', 'gj', '萬博國際', 'Celia', 'Chaos', 'Ivy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original萬博國際@gj', 'img_huambo.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(217, '2013-10-29', 'brilliant', 'hh', '輝煌國際', NULL, NULL, 'Fenix', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original輝煌國際@hh', 'img_brilliant.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(218, NULL, 'royal', 'hj', '皇家金堡', NULL, NULL, 'Xinru', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original皇家金堡@hj', 'img_royal.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(219, '2016-11-01', 'hmgj', 'hm', '豪門國際', 'Peach', 'Rita', 'shiang', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original豪門國際@hm', 'img_hmgj.jpg', '3.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(220, '2013-11-05', 'huangpu', 'hp', '皇浦國際', NULL, 'Peach', 'beo', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original皇浦國際@hp', 'img_huangpu.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(221, '2017-07-17', 'richinternational', 'hyy', '匯銀國際', 'Peach', 'Celia', 'Wendy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original匯銀國際@hyy', 'img_richinternational.jpg', '1.0', 'A06', NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09');
INSERT INTO `projects` (`id`, `date`, `tpl`, `code`, `caseName`, `designer`, `editor`, `rd`, `link`, `filename`, `ver`, `remark`, `remember_token`, `created_at`, `updated_at`) VALUES
(222, NULL, 'holiday', 'jr', '假日國際', NULL, NULL, 'Kingsley', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original假日國際@jr', 'img_holiday.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(223, '2017-07-03', 'jurencasino', 'jr6', '巨人娛樂', 'Peach', 'Fanny', '小孟', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original巨人娛樂@jr6', 'img_jurencasino.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(224, '2017-09-15', 'jinzunbet', 'jz9', '金尊國際', 'Miona', 'Chaos', 'Alex', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original金尊國際@jz9', 'img_jinzunbet.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(225, '2014-04-23', 'aircity', 'kz', '空中城市', NULL, 'Ruby', 'Cindy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original空中城市@kz', 'img_aircity.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(226, '2017-07-14', 'dragongate', 'lmy', '龍門娛樂', 'Rita', 'Celia', 'ian', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original龍門娛樂@lmy', 'img_dragongate.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(227, '2014-01-27', 'max88', 'max', '最大賭城', NULL, 'Ellen', 'Felicia', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original最大賭城@max', 'img_max88.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(228, '2014-04-24', 'mingfa', 'mf', '明發國際', NULL, 'Coomi', 'Nic', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original明發國際@mf', 'img_mingfa.jpg', '1.0', 'B07', NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(229, '2013-08-23', 'rose', 'mg', '玫瑰國際', NULL, NULL, 'Emily', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original玫瑰國際@mg', 'img_rose.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(230, '2014-03-11', 'loibc', 'swt', '世外桃源', NULL, 'Miona', 'Rex', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original世外桃源@swt', 'img_loibc.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(231, NULL, 'taijimaha', 't88', '泰姬瑪哈', NULL, NULL, 'Puding', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original泰姬瑪哈@t88', 'img_taijimaha.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(232, '2017-06-19', 'tiantian', 'tt8', '天天娛樂', 'Celia', 'Wilson', '小孟', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original天天娛樂@tt8', 'img_tiantian.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(233, NULL, 'playboy', 'web', '花花公子', NULL, NULL, 'Ezio', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original花花公子@web', 'img_playboy.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(234, '2016-03-30', 'wanmei', 'wm8', '完美國際', 'Chaos', 'Chardin', 'Ivy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original完美國際@wm8', 'img_wanmei.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(235, '2017-10-23', 'yabo', 'yb8', '亞博娛樂', 'Peach', 'Peach', 'Wendy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original亞博娛樂@yb8', 'img_yabo.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(236, '2016-04-22', 'yifa', 'yf8', '億發國際', 'Chardin', 'Liying', 'Yicin', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original億發國際@yf8', 'img_yifa.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(237, '2014-11-03', 'fisherwharf', 'yr', '漁人碼頭', NULL, 'Peach', 'Elsa', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original漁人碼頭@yr', 'img_fisherwharf.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(238, '2016-05-17', 'lolyx', 'yx', '英雄聯盟', 'Liying', 'Celia', 'Ivy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original英雄聯盟@yx', 'img_lolyx.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(239, '2015-04-01', 'supreme', 'zz', '至尊國際', 'Miona', 'Jessica', 'Avery', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original至尊國際@zz', 'img_supreme.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(240, '2016-01-07', 'baden668', 'bdw', '巴登國際CLUB BADEN', 'Rita', 'Fanny', 'Yicin', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original巴登國際CLUB BADEN@bdw', 'img_baden668.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(241, '2016-07-01', 'galaxy577', '818', '澳門銀河GALAXY CASINO', 'Wilson', 'Fanny', 'Felicia', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original澳門銀河GALAXY CASINO@818', 'img_galaxy577.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(242, '2017-02-02', '95casino', '95', '九五至尊I', 'Clare', 'Clare', '小孟', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original九五至尊I@95', 'img_95casino.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(243, '2017-03-27', 'macau526', '526', '澳門賭城MACAU CASINO', 'Chardin', 'Chardin', 'Elsa', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original澳門賭城MACAU CASINO@526', 'img_macau526.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(244, '2016-11-01', 'macau698', '698', '澳門博彩MACAU CASINO', 'Chardin', 'Chaos', 'Yicin', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original澳門博彩MACAU CASINO@698', 'img_macau698.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(245, '2016-05-09', 'shishibet', 'bet', '澳門金沙MACAU SANDS CASINO(時時博)', 'Liying', 'Chaos', 'Elsa', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original澳門金沙MACAU SANDS CASINO(時時博)@bet', 'img_shishibet.jpg', '3.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(246, '2016-11-07', 'yinhe8855', 'yin', '金沙賭場MACAU', 'Clare', 'Liying', 'shiang', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original金沙賭場MACAU@yin', 'img_yinhe8855.jpg', '3.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(247, '2016-04-26', 'sandsma88', '608', '澳門金沙Sands macao', 'Rita', 'Peach', 'Elsa', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original澳門金沙Sands macao@608', 'img_sandsma88.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(248, '2016-03-21', 'hundreds', 'bjb', '澳門金沙Sands macau(百家博)', 'Chardin', 'Wilson', 'Ivy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original澳門金沙Sands macau(百家博)@bjb', 'img_hundreds.jpg', '3.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(249, '2016-08-03', 'jnh', 'jnh', '澳門金沙Sands(嘉年華娛樂城)', 'Miona', 'Clare', 'shiang', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original澳門金沙Sands(嘉年華娛樂城)@jnh', 'img_jnh.jpg', '3.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(250, '2016-09-21', 'aomenjinsha', 'jsv', '澳門金沙VIP', 'Celia', 'Miona', 'Yicin', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original澳門金沙VIP@jsv', 'img_aomenjinsha.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(251, '2013-11-08', 'lv558', 'ajs', '澳門金沙VIP廳(LV國際)', NULL, 'Ruby', 'Fenix', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original澳門金沙VIP廳(LV國際)@ajs', 'img_lv558.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(252, '2017-06-29', 'betvictor', '954', '星際娛樂場 Star casino(偉德國際)', 'Liying', 'Rita', 'randy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original星際娛樂場 Star casino(偉德國際)@954', 'img_betvictor.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(253, '2016-03-14', 'macau788', '788', '澳門賭場casino', 'Rita', 'Rita', 'Wendy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original澳門賭場casino@788', 'img_macau788.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(254, '2017-08-30', 'dasan8', 'd38', '金沙國際sands(大三巴娛樂城)', 'Celia', 'Celia', '小孟', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original金沙國際sands(大三巴娛樂城)@d38', 'img_dasan8.jpg', '3.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(255, '2016-01-06', 'sandcasino', 'scc', '澳門金沙sands娛樂場(sands金沙賭場)', 'Liying', 'Chaos', 'Felicia', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original澳門金沙sands娛樂場(sands金沙賭場)@scc', 'img_sandcasino.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(256, '2016-10-13', 'jinshasands', 'j26', '澳門金沙sands娛樂城', 'Rita', 'Chaos', '小孟', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original澳門金沙sands娛樂城@j26', 'img_jinshasands.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(257, '2016-11-09', 'ouzhou', 'oz', '澳門金沙solaire(歐洲娛樂場)', 'Clare', 'Clare', 'Haix', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original澳門金沙solaire(歐洲娛樂場)@oz', 'img_ouzhou.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(258, '2017-07-05', 'italy', 'ydl', '意大利賭場 ITALY CASINO(意大利賭場)', 'Chaos', 'Chaos', 'Haix', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original意大利賭場 ITALY CASINO(意大利賭場)@ydl', 'img_italy.jpg', '3.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(259, '2015-08-12', 'tian888', '378', '金沙娛樂城 sands asia(天成)', 'Chaos', 'Peach', 'Ezio', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original金沙娛樂城 sands asia(天成)@378', 'img_tian888.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(260, '2015-12-16', 'walker', '3u', '三優娛樂城(3U)', 'Celia', 'Peach', 'Avery', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original三優娛樂城(3U)@3u', 'img_walker.jpg', '4.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(261, '2017-07-17', 'mapai', '77 ', '馬牌娛樂城(三合)', 'Rita', 'Celia', '小孟', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original馬牌娛樂城(三合)@77 ', 'img_mapai.jpg', '4.0', 'D07', NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(262, '2015-01-07', 'haier', 'jlb', '金沙俱樂部(海爾)', 'Liying', 'Chardin', 'Jerry', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original金沙俱樂部(海爾)@jlb', 'img_haier.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(263, '2016-04-20', 'jzplay', 'jz', '金贊娛樂城(金贊)', 'Fanny', 'Wilson', 'Ivy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original金贊娛樂城(金贊)@jz', 'img_jzplay.jpg', '3.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(264, '2014-06-04', 'lswjs', 'lsw', '拉斯維加斯(大陸)', NULL, 'Yuna', 'Cindy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original拉斯維加斯(大陸)@lsw', 'img_lswjs.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(265, '2014-12-17', 'win558', 'top', '集美娛樂場(必勝)', 'Celia', 'Celia', 'Felicia', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original集美娛樂場(必勝)@top', 'img_win558.jpg', '3.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(266, '2015-01-21', 'hqr', 'gbh', '金沙貴賓會(華僑人)', NULL, 'Fanny', 'Elsa', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original金沙貴賓會(華僑人)@gbh', 'img_hqr.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(267, '2015-06-29', 'armani', 'pb', '龐博娛樂城(阿瑪尼)', 'Chardin', 'Chaos', 'Fenix', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original龐博娛樂城(阿瑪尼)@pb', 'img_armani.jpg', '3.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(268, '2015-09-22', 'djcasino', '713', '頂級貴賓會(澳門賭場 - 頂級) ', 'Fanny', 'Chaos', '小孟', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original頂級貴賓會(澳門賭場 - 頂級) @713', 'img_djcasino.jpg', '1.0', '複製頂級賭場(dj8886)', NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(269, '2017-09-27', 'fubon', 'fub', '富邦娛樂城(富邦娛樂城 FUBON CASINO) ', 'Miona', 'Miona', '小孟', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original富邦娛樂城(富邦娛樂城 FUBON CASINO) @fub', 'img_fubon.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(270, '2017-09-25', 'pinwheel', 'j88', '鑽石娛樂城(金沙娛樂城casino)', 'Fanny', 'Fanny', 'Wendy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original鑽石娛樂城(金沙娛樂城casino)@j88', 'img_pinwheel.jpg', '4.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(271, '2017-11-22', 'tigercristal', 'hu', '澳門巴黎人(水晶虎國際賭場)', 'Liying', 'Liying', 'Alex', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original澳門巴黎人(水晶虎國際賭場)@hu', 'img_tigercristal.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(272, '2017-06-14', 'rsands334', '334', '大庄家賭場(正牌澳門金沙娛樂場)', 'Liying', 'Liying', 'Wendy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original大庄家賭場(正牌澳門金沙娛樂場)@334', 'img_rsands334.jpg', '3.0', 'C06, 只設計logo', NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(273, '2014-03-27', 'rio', '557', '利澳娛樂城', NULL, 'Chaos', 'Rex', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original利澳娛樂城@557', 'img_rio.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(274, '2015-05-07', '8fcasino', '8f', '八福娛樂城', 'Jessica', 'Chardin', 'Randy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original八福娛樂城@8f', 'img_8fcasino.jpg', '2.0', '已改版', NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(275, '2016-07-14', 'galaxy907', '907', '銀河娛樂場', 'Rita', 'Celia', '小孟', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original銀河娛樂場@907', 'img_galaxy907.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(276, NULL, 'benz-club', 'bc', '奔馳俱樂部', NULL, 'Jessica', 'Kingsley', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original奔馳俱樂部@bc', 'img_benz-club.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(277, '2016-12-30', 'bojue', 'bj', '伯爵娛樂城', 'Chardin', 'Chardin', 'shiang', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original伯爵娛樂城@bj', 'img_bojue.jpg', '3.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(278, '2017-11-14', 'fortuna', 'cs', '財神娛樂城', 'Fanny', 'Fanny', 'Alex', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original財神娛樂城@cs', 'img_fortuna.jpg', '2.0', 'A16', NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(279, '2016-04-25', 'rounders', 'dw', '賭王娛樂城', 'Chaos', 'Liying', 'Cindy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original賭王娛樂城@dw', 'img_rounders.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(280, '2015-07-14', 'tongbao', 'fa', '通寶娛樂城', 'Peach', 'Chardin', 'Avery', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original通寶娛樂城@fa', 'img_tongbao.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(281, '2016-11-16', 'crownvipwill', 'g90', '皇冠貴賓會', 'Fanny', 'Chaos', 'ian', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original皇冠貴賓會@g90', 'img_crownvipwill.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(282, '2016-08-01', 'hsbc', 'hf8', '匯豐娛樂城', 'Wilson', 'Liying', '小孟', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original匯豐娛樂城@hf8', 'img_hsbc.jpg', '3.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(283, '2017-07-26', 'huayi', 'hy', '華億娛樂城', 'Yuna', 'Chardin', 'Elsa', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original華億娛樂城@hy', 'img_huayi.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(284, '2016-03-16', 'jinguan', 'jg', '金冠娛樂城', 'Celia', 'Chardin', 'Cindy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original金冠娛樂城@jg', 'img_jinguan.jpg', '4.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(285, '2015-01-05', 'js555', 'jjs', '金沙娛樂城', 'Chardin', 'Chardin', 'Fenix', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original金沙娛樂城@jjs', 'img_js555.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(286, '2016-12-12', 'sandscentre', 'jsc', '金沙城中心', 'Wilson', 'Rita', 'Haix', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original金沙城中心@jsc', 'img_sandscentre.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(287, '2016-10-03', 'mokay', 'mka', '摩卡娛樂城', 'Miona', 'Wilson', 'Felicia', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original摩卡娛樂城@mka', 'img_mokay.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(288, '2017-06-26', 'meishimgm', 'mmm', '美獅貴賓會', 'Chaos', 'Fanny', 'Ivy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original美獅貴賓會@mmm', 'img_meishimgm.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(289, '2014-12-24', 'mingshi', 'ms', '名仕娛樂城', 'Rita', 'Rita', 'Puding', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original名仕娛樂城@ms', 'img_mingshi.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(290, '2017-10-03', 'macaovip', 'new', '澳門貴賓廳', 'Fanny', 'Chaos', '小孟', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original澳門貴賓廳@new', 'img_macaovip.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(291, '2017-05-19', 'lyuvip', 'rr', '呂氏貴賓會', 'Peach', 'Rita', 'jiajing', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original呂氏貴賓會@rr', 'img_lyuvip.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(292, '2014-01-06', 'luxury', 'sc', '奢侈俱樂部', NULL, 'Jessica', 'Jeff', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original奢侈俱樂部@sc', 'img_luxury.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(293, '2017-09-26', 'sdh', 'sdh', '三打哈娛樂', 'Liying', 'Rita', 'Ivy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original三打哈娛樂@sdh', 'img_sdh.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(294, '2016-04-13', 'bohua', 'tpy', '博華娛樂城', 'Fanny', 'Celia', 'Cindy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original博華娛樂城@tpy', 'img_bohua.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(295, '2017-01-10', 'shenbotyc', 'tyc', '申博娛樂城', 'Fanny', 'Fanny', 'shiang', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original申博娛樂城@tyc', 'img_shenbotyc.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(296, NULL, 'tz', 'tz', '太子娛樂城', NULL, NULL, 'Jeff', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original太子娛樂城@tz', 'img_tz.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(297, NULL, 'xhc888', 'xhc', '星河娛樂城', NULL, NULL, 'Xinru', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original星河娛樂城@xhc', 'img_xhc888.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(298, NULL, 'lisboa_credit', 'xpj', '新葡京信用', NULL, NULL, 'Xinru', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original新葡京信用@xpj', 'img_lisboa_credit.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(299, NULL, 'lisboa', 'xpj', '新葡京娛樂', NULL, NULL, 'Xinru', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original新葡京娛樂@xpj', 'img_lisboa.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(300, NULL, 'r8866', 'xpj', '東方夏威夷', NULL, NULL, 'Xinru', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original東方夏威夷@xpj', 'img_r8866.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(301, '2017-12-04', 'ybocasino', 'ybo', '赢博娛樂城', 'Liying', 'Liying', 'Simon', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original赢博娛樂城@ybo', 'img_ybocasino.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(302, '2016-11-14', 'yunding', 'yd', '雲鼎娛樂場', 'Yuna', 'Fanny', 'Mike', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original雲鼎娛樂場@yd', 'img_yunding.jpg', '3.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(303, '2014-11-05', 'president', 'zt', '總統娛樂城', 'Lisa', 'Lisa', 'Avery', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original總統娛樂城@zt', 'img_president.jpg', '3.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(304, '2014-12-17', 'cornucopia', '126', '金沙娛樂場CASINO(金神國際)', 'Chardin', 'Rita', 'Simon', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original金沙娛樂場CASINO(金神國際)@126', 'img_cornucopia.jpg', '5.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(305, '2016-12-28', 'yin0008', 'ga', '銀河娛樂場GALAXY', 'Peach', 'Fanny', 'jiajing', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original銀河娛樂場GALAXY@ga', 'img_yin0008.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(306, '2016-06-22', 'macauvip', 'v99', '澳門貴賓會MACAU VIP CASINO', 'Wilson', 'Celia', 'Wendy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original澳門貴賓會MACAU VIP CASINO@v99', 'img_macauvip.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(307, '2017-11-23', 'amvip', '200', '澳門貴賓會MACAU VIP CLUB', 'Peach', 'Peach', 'Yicin', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original澳門貴賓會MACAU VIP CLUB@200', 'img_amvip.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(308, '2017-01-09', 'shanda', 'sd1', '金沙娛樂場Macau sands(盛大娛樂城)', 'Rita', 'Clare', 'Ivy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original金沙娛樂場Macau sands(盛大娛樂城)@sd1', 'img_shanda.jpg', '3.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(309, '2016-11-02', 'baden', '362', '金沙娛樂場R Sands(澳門362)', 'Celia', 'Chardin', 'Wendy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original金沙娛樂場R Sands(澳門362)@362', 'img_baden.jpg', '5.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(310, '2017-03-29', 'russiagame', 'eee', '俄羅斯娛樂RUSSIA GAME', 'Chaos', 'Chaos', 'ian', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original俄羅斯娛樂RUSSIA GAME@eee', 'img_russiagame.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(311, '2014-12-17', 'wealth', 'cf', '金沙娛樂場S(財富)', 'Rita', 'Celia', 'Elsa', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original金沙娛樂場S(財富)@cf', 'img_wealth.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(312, '2016-12-21', 'sandsmacaojsp', 'jsp', '金沙娛樂場Sands Macao', 'Fanny', 'Fanny', 'Ivy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original金沙娛樂場Sands Macao@jsp', 'img_sandsmacaojsp.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(313, '2014-12-25', 'sands1399', '139', '金沙娛樂場Sands(金沙Sands賭場)', 'Jessica', 'Rita', 'Wendy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original金沙娛樂場Sands(金沙Sands賭場)@139', 'img_sands1399.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(314, '2017-08-14', 'tst118', '118', '金沙娛樂場TST', 'Rita', 'Rita', 'Wendy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original金沙娛樂場TST@118', 'img_tst118.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(315, '2015-08-17', 'mixc', 'w77', '萬象城國際Wanxiangchen Casino(萬象城國際)', 'Miona', 'Wilson', 'Yicin', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original萬象城國際Wanxiangchen Casino(萬象城國際)@w77', 'img_mixc.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(316, '2015-07-15', 'santiago', 'sd', '澳門金沙會casino (聖地亞哥)', 'Fanny', 'Fanny', '小孟', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original澳門金沙會casino (聖地亞哥)@sd', 'img_santiago.jpg', '2.0', '已解除會員解析', NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(317, '2016-04-27', 'trump', 'wp', '金沙娛樂場jsylc.com(金沙娛樂場casino macao)', 'Chardin', 'Fanny', 'Ivy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original金沙娛樂場jsylc.com(金沙娛樂場casino macao)@wp', 'img_trump.jpg', '3.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(318, '2015-05-06', 'zhenbo', '22', '金沙娛樂場jinsha macao(真博)', 'Rita', 'Liying', 'Ezio', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original金沙娛樂場jinsha macao(真博)@22', 'img_zhenbo.jpg', '3.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(319, '2016-03-01', 'cashbox', 'hhh', '金沙娛樂場macao(海上皇宮)', 'Wilson', 'Liying', 'Wendy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original金沙娛樂場macao(海上皇宮)@hhh', 'img_cashbox.jpg', '3.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(320, '2017-10-17', 'sands4357', '180', '金沙娛樂場sands casino', 'Rita', 'Rita', '小孟', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original金沙娛樂場sands casino@180', 'img_sands4357.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(321, '2014-12-22', 'rolex', '909', '金沙娛樂城sands(勞力士)', 'Chardin', 'Chardin', 'Elsa', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original金沙娛樂城sands(勞力士)@909', 'img_rolex.jpg', '3.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(322, '2016-11-30', 'jinshacasino', '7js', '澳門金沙城sands(澳門金沙城)', 'Rita', 'Chardin', 'shiang', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original澳門金沙城sands(澳門金沙城)@7js', 'img_jinshacasino.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(323, '2015-06-25', 'garden', 'xhy', '金沙娛樂場©sands(新花園娛樂城)', NULL, 'Fanny', 'Elsa', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original金沙娛樂場©sands(新花園娛樂城)@xhy', 'img_garden.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(324, '2017-02-20', 'bodoggroup', '27', '博狗集團 BODOG GROUP', 'Wilson', 'Wilson', 'Elsa', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original博狗集團 BODOG GROUP@27', 'img_bodoggroup.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(325, '2015-03-09', 'manutd', 'dhy', '大紅鷹娛樂城(曼聯)', 'Lisa', 'Celia', '小孟', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original大紅鷹娛樂城(曼聯)@dhy', 'img_manutd.jpg', '3.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(326, '2014-11-19', 'emperor', 'dw8', '金沙網上賭場(帝王)', 'Liying', 'Liying', 'Ezio', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original金沙網上賭場(帝王)@dw8', 'img_emperor.jpg', '3.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(327, '2014-12-17', 'gf', 'gf8', '金沙線上賭場(廣發)', 'Rita', 'Yuna', 'Ezio', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original金沙線上賭場(廣發)@gf8', 'img_gf.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(328, '2014-12-24', 'niaochao', 'nc', '金沙官方賭場(鳥巢)', 'Wilson', 'Chardin', '小孟', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original金沙官方賭場(鳥巢)@nc', 'img_niaochao.jpg', '3.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(329, '2015-01-07', 'xinxin', 'y99', '銀河國際賭場(鑫鑫)', 'Jessica', 'Jessica', 'Elsa', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original銀河國際賭場(鑫鑫)@y99', 'img_xinxin.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(330, '2014-12-10', 'yqrylc', 'js9', '澳門金沙國際(有錢人)', 'Fanny', 'Miona', 'Felicia', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original澳門金沙國際(有錢人)@js9', 'img_yqrylc.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(331, '2016-10-11', 'septwolves', 'qpl', '澳門金沙賭場(七匹狼)', 'Celia', 'Wilson', 'Ivy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original澳門金沙賭場(七匹狼)@qpl', 'img_septwolves.jpg', '4.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(332, '2014-06-10', 'jaguar', '5t', '金沙在線賭場(原捷豹娛樂城)', NULL, 'Yuna', 'Cindy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original金沙在線賭場(原捷豹娛樂城)@5t', 'img_jaguar.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(333, '2017-07-26', 'manhattan', 'mhd', '澳門金沙集團(曼哈頓娛樂城)', 'Chaos', 'Chaos', 'Alex', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original澳門金沙集團(曼哈頓娛樂城)@mhd', 'img_manhattan.jpg', '3.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(334, '2017-10-11', 'dancewater', 'swj', '澳門銀河賭城(水舞間娛樂城)', 'Wilson', 'Fanny', 'Ivy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original澳門銀河賭城(水舞間娛樂城)@swj', 'img_dancewater.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(335, '2017-03-14', 'macaucasino', '18', '澳門博彩公司', 'Liying', 'Fanny', 'Haix', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original澳門博彩公司@18', 'img_macaucasino.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(336, '2014-04-03', 'huhelou', '587', '黃鶴樓娛樂城', NULL, 'Peach', 'Jerry', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original黃鶴樓娛樂城@587', 'img_huhelou.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(337, '2017-07-10', 'randian', '607', '燃典線上娛樂', 'Liying', 'Chaos', 'chieh', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original燃典線上娛樂@607', 'img_randian.jpg', '1.0', 'A15, 只設計logo, 已解除會員解析', NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(338, '2015-11-23', '2000sj', '88', '新世紀娛樂城', 'Peach', 'Wilson', 'Avery', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original新世紀娛樂城@88', 'img_2000sj.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(339, '2014-06-09', 'betbjn', 'bjn', '比基尼娛樂城', NULL, 'Jessica', 'Avery', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original比基尼娛樂城@bjn', 'img_betbjn.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(340, '2017-04-05', 'ococ', 'blf', '百樂坊娛樂城', 'Celia', 'Chaos', 'Jeff', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original百樂坊娛樂城@blf', 'img_ococ.jpg', '5.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(341, '2016-04-22', 'baoliying', 'bly', '寶利盈娛樂城', 'Chaos', 'Celia', 'Avery', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original寶利盈娛樂城@bly', 'img_baoliying.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(342, '2015-04-15', 'mets', 'ddh', '大都會娛樂城', 'Liying', 'Liying', '小孟', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original大都會娛樂城@ddh', 'img_mets.jpg', '3.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(343, '2017-06-15', 'banker', 'dzj', '大庄家娛樂城', 'Rita', 'Peach', 'Ivy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original大庄家娛樂城@dzj', 'img_banker.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(344, '2017-08-09', 'galaxyfa8', 'fa8', '澳門銀河國際', 'Chaos', 'Chaos', 'Haix', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original澳門銀河國際@fa8', 'img_galaxyfa8.jpg', '1.0', 'A09', NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(345, '2017-02-23', 'jscom', 'gw', '澳門金沙官網', 'Chaos', 'Chaos', '小孟', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original澳門金沙官網@gw', 'img_jscom.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(346, NULL, 'ruby', 'hbs', '紅寶石娛樂城', NULL, NULL, 'chieh', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original紅寶石娛樂城@hbs', 'img_ruby.jpg', '2.0', '3.0作廢', NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(347, '2014-12-29', 'galaxy99', 'hee', '澳門銀河賭場', 'Rita', 'Miona', 'Puding', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original澳門銀河賭場@hee', 'img_galaxy99.jpg', '1.0', '已解除會員解析', NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(348, '2016-06-20', 'jswl6', 'jsi', '金沙網絡賭場', 'Peach', 'Chardin', 'Felicia', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original金沙網絡賭場@jsi', 'img_jswl6.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(349, '2014-10-02', 'monaco', 'mng', '摩納哥娛樂城', NULL, 'Chardin', 'Fenix', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original摩納哥娛樂城@mng', 'img_monaco.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(350, '2017-09-21', 'ncs', 'ncs', '牛車水娛樂城', 'Fanny', 'Celia', '小孟', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original牛車水娛樂城@ncs', 'img_ncs.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(351, '2016-10-28', 'wallstreet806', 'pal', '華爾街娛樂城', 'Liying', 'Clare', 'Mike', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original華爾街娛樂城@pal', 'img_wallstreet806.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(352, '2015-04-10', 'saipan', 'sbd', '塞班島娛樂城', 'Rita', 'Miona', 'Jeff', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original塞班島娛樂城@sbd', 'img_saipan.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(353, '2016-04-11', 'sentosa', 'sts', '聖淘沙娛樂城', 'Chaos', 'Rita', '小孟', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original聖淘沙娛樂城@sts', 'img_sentosa.jpg', '3.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(354, '2016-11-16', 'xierdun', 'xi8', '希爾頓娛樂城', 'Clare', 'Wilson', 'shiang', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original希爾頓娛樂城@xi8', 'img_xierdun.jpg', '3.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(355, '2017-09-20', 'landrover', 'Lh8', '澳門銀河賭場GALAXY CASINO(銀河賭場GALAXY) ', 'Miona', 'Miona', 'Elsa', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original澳門銀河賭場GALAXY CASINO(銀河賭場GALAXY) @Lh8', 'img_landrover.jpg', '3.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(356, '2015-04-08', 'galaxy52001', 'ayh', '澳門銀河賭場GALAXY', 'Rita', 'Chardin', 'Ezio', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original澳門銀河賭場GALAXY@ayh', 'img_galaxy52001.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(357, '2017-10-05', 'bj9966', '045', '澳門錢莊賭場MACAO QIANZHUANG CASINO(白金國際)', 'Peach', 'Peach', 'Wendy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original澳門錢莊賭場MACAO QIANZHUANG CASINO(白金國際)@045', 'img_bj9966.jpg', '3.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(358, NULL, 'golf', 'gef', '澳門網上賭場MACAU ONLINE CASINO(高爾夫)', NULL, NULL, 'Ezio', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original澳門網上賭場MACAU ONLINE CASINO(高爾夫)@gef', 'img_golf.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(359, '2017-12-20', 'jsjt56', '56', '澳門金沙集團Macao Sands Group', 'Fanny', 'Liying', 'Simon', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original澳門金沙集團Macao Sands Group@56', 'img_jsjt56.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(360, '2016-01-11', 'jj', 'jj', '金沙娛樂場＠Sands Casino(JJ)', NULL, 'Fanny', '小孟', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original金沙娛樂場＠Sands Casino(JJ)@jj', 'img_jj.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(361, '2014-10-29', 'grandlapa', 'jlh', '澳門金沙赌城Sands(金麗華)', 'Ruby', 'Chardin', 'Elsa', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original澳門金沙赌城Sands(金麗華)@jlh', 'img_grandlapa.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(362, '2017-09-14', '369macao', '369', '澳門金沙賭場macau sands', 'Liying', 'Liying', '小孟', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original澳門金沙賭場macau sands@369', 'img_369macao.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(363, '2016-06-29', 'js111333', 'hi', '金沙國際賭場sands casino(金沙國際賭場)', 'Peach', 'Peach', 'Ivy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original金沙國際賭場sands casino(金沙國際賭場)@hi', 'img_js111333.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(364, '2016-10-20', 'macau58', '58', '澳門金沙賭場sands', 'Rita', 'Liying', 'shiang', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original澳門金沙賭場sands@58', 'img_macau58.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(365, '2016-08-15', 'marcopolo', 'mk', '馬可波羅娛樂城 (馬可波羅)', 'Fanny', 'Liying', 'shiang', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original馬可波羅娛樂城 (馬可波羅)@mk', 'img_marcopolo.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(366, '2016-07-27', 'crown059', 'qq', '澳門皇冠貴賓會 DISTINGUISHED GUEST CLUB(澳門皇冠娛樂場)', 'Fanny', 'Chaos', 'Cindy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original澳門皇冠貴賓會 DISTINGUISHED GUEST CLUB(澳門皇冠娛樂場)@qq', 'img_crown059.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(367, '2016-11-17', 'brightpearlvip', 'mzf', '鼎盛國際貴賓會 Ding Sheng Vip(原明珠坊貴賓會Bright Pearl Vip)', 'Chaos', 'Celia', 'Wendy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original鼎盛國際貴賓會 Ding Sheng Vip(原明珠坊貴賓會Bright Pearl Vip)@mzf', 'img_brightpearlvip.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(368, '2017-11-10', 'xinde88', 'xid', '澳門網上貴賓廳 Macau Online Lounge(信德國際)', 'Peach', 'Peach', 'chieh', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original澳門網上貴賓廳 Macau Online Lounge(信德國際)@xid', 'img_xinde88.jpg', '3.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(369, '2015-02-11', 'winglung', 'bk', '澳門金沙娛樂場(永隆)', 'Wilson', 'Jessica', 'Cindy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original澳門金沙娛樂場(永隆)@bk', 'img_winglung.jpg', '3.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(370, '2015-01-14', 'jiahe', 'jh', '澳門銀河娛樂城(嘉禾)', 'Adosa', 'Yuna', 'Avery', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original澳門銀河娛樂城(嘉禾)@jh', 'img_jiahe.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(371, '2016-03-28', 'subo', 'sb', '速博線上娛樂城(速博)', 'Rita', 'Liying', 'Avery', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original速博線上娛樂城(速博)@sb', 'img_subo.jpg', '2.0', '複製wanmei/ver1', NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(372, '2016-03-14', 'tianbo', 'tb', '金沙在線娛樂場(天博)', 'Liying', 'Wilson', 'Felicia', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original金沙在線娛樂場(天博)@tb', 'img_tianbo.jpg', '3.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(373, '2015-08-24', 'citic', 'xin', '澳門金沙娛樂城(中信)', 'Peach', 'Chardin', 'Avery', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original澳門金沙娛樂城(中信)@xin', 'img_citic.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(374, '2017-04-12', 'dajiawang', 'djw', '金沙國際娛樂城(大家旺)', 'Wilson', 'Fanny', 'jiajing', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original金沙國際娛樂城(大家旺)@djw', 'img_dajiawang.jpg', '3.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(375, '2014-09-03', 'xiongdi', 'y88', '澳門銀河優越會(優越會)', NULL, 'Chardin', 'Rex', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original澳門銀河優越會(優越會)@y88', 'img_xiongdi.jpg', '3.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(376, '2016-10-24', 'macau588', '588', '澳門視訊娛樂城', 'Miona', 'Chaos', 'Ivy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original澳門視訊娛樂城@588', 'img_macau588.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(377, '2015-07-17', 'amjs88', '853', '澳門金沙娛樂網', 'Miona', 'Wilson', 'Wendy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original澳門金沙娛樂網@853', 'img_amjs88.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(378, '2015-01-07', 'galaxyam7', 'am7', '澳門銀河娛樂場', 'Yuna', 'Fanny', '小孟', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original澳門銀河娛樂場@am7', 'img_galaxyam7.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(379, '2015-12-16', 'sands96', 'ao', '金沙網上娛樂場', 'Liying', 'Miona', 'Ivy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original金沙網上娛樂場@ao', 'img_sands96.jpg', '1.0', '已解除會員解析', NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(380, '2015-11-16', 'lj8288', 'dl8', '澳門銀河娛樂城(大佬)', 'Chaos', 'Celia', 'Wendy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original澳門銀河娛樂城@dl8(大佬)', 'img_lj8288.jpg', '3.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(381, '2017-03-20', 'jinsha88', 'jsw', '金沙娛樂場官網', 'Rita', 'Peach', 'Ivy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original金沙娛樂場官網@jsw', 'img_jinsha88.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(382, '2016-05-25', 'montecarlo', 'mon', '蒙特卡羅娛樂城', 'Miona', 'Liying', '小孟', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original蒙特卡羅娛樂城@mon', 'img_montecarlo.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(383, '2017-08-21', 'vitoria', 'vic', '維多利亞娛樂城', 'Liying', 'Fanny', 'chieh', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original維多利亞娛樂城@vic', 'img_vitoria.jpg', '3.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(384, '2017-06-05', 'venice', 'vns', '威尼斯人娛樂城', 'Liying', 'Wilson', '小孟', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original威尼斯人娛樂城@vns', 'img_venice.jpg', '3.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(385, '2016-09-23', 'encore', 'wl', '澳門萬利娛樂場', 'Wilson', 'Peach', 'Felicia', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original澳門萬利娛樂場@wl', 'img_encore.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(386, '2017-07-26', 'wangzhecasino', 'wz8', '王者榮耀娛樂城', 'Rita', 'Fanny', 'Yicin', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original王者榮耀娛樂城@wz8', 'img_wangzhecasino.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(387, '2015-07-29', 'jiujinshan', '966', '澳門銀河娛樂城CASINO(舊金山)', 'Chaos', 'Chaos', 'Felicia', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original澳門銀河娛樂城CASINO(舊金山)@966', 'img_jiujinshan.jpg', '3.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(388, '2015-12-23', 'donlord', 'd66', '澳門金沙娛樂城MACAU SANDS CASINO(鼎龍)', 'Fanny', 'Chardin', 'Ivy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original澳門金沙娛樂城MACAU SANDS CASINO(鼎龍)@d66', 'img_donlord.jpg', '4.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(389, '2016-11-16', 'newtimes', 'xsd', '澳門金沙娛樂場Macau Sands Casino(澳門金沙娛樂場MACAUSANDSCASINO)', 'Clare', 'Clare', 'Mike', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original澳門金沙娛樂場Macau Sands Casino(澳門金沙娛樂場MACAUSANDSCASINO)@xsd', 'img_newtimes.jpg', '5.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(390, '2017-12-06', 'jiangshan', 'js', '澳門金沙娛樂場Sands Casino(江山)', 'Peach', 'Peach', 'randy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original澳門金沙娛樂場Sands Casino(江山)@js', 'img_jiangshan.jpg', '4.0', '放棄3.0改版', NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(391, NULL, 'toronto', 'amj', '澳門金沙娛樂場Sands Macao Casino', NULL, NULL, 'Felicia', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original澳門金沙娛樂場Sands Macao Casino@amj', 'img_toronto.jpg', '2.0', '備份檔案早就不見了', NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(392, '2017-07-17', 'shuangxi', 's89', '澳門金沙娛樂場Sands Macau(雙喜賭場)', 'Yuna', 'Chaos', '小孟', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original澳門金沙娛樂場Sands Macau(雙喜賭場)@s89', 'img_shuangxi.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(393, '2017-06-30', 'amjsbn', 'bn', '澳門金沙娛樂場Sands', 'Celia', 'Wilson', 'chieh', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original澳門金沙娛樂場Sands@bn', 'img_amjsbn.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(394, '2016-08-05', 'sands3777', '377', '澳門金沙娛樂場SandsⓇ官方直營', 'Celia', 'Peach', '小孟', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original澳門金沙娛樂場SandsⓇ官方直營@377', 'img_sands3777.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(395, '2017-07-27', 'vipclub', '919', '澳門銀河貴賓會VIP CLUB', 'Yuna', 'Wilson', 'Ivy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original澳門銀河貴賓會VIP CLUB@919', 'img_vipclub.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(396, '2015-08-18', 'rolls', 'mhc', '澳門金沙娛樂場sands(夢幻之城)', 'Jessica', 'Miona', 'Avery', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original澳門金沙娛樂場sands(夢幻之城)@mhc', 'img_rolls.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(397, '2017-07-12', 'sandsmg', 'yes', '澳門金沙娱樂場sands.mg', 'Fanny', 'Wilson', 'jiajing', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original澳門金沙娱樂場sands.mg@yes', 'img_sandsmg.jpg', '2.0', '已解除會員解析', NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(398, '2014-07-10', 'roma', '478', '澳門銀河線上娛樂(羅馬)', NULL, 'Miona', 'Ezio', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original澳門銀河線上娛樂(羅馬)@478', 'img_roma.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(399, '2017-10-13', 'zealand', '456', '澳門金沙會娛樂城(新西蘭)', NULL, 'Celia', 'Ivy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original澳門金沙會娛樂城(新西蘭)@456', 'img_zealand.jpg', '3.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(400, '2014-01-24', 'fubusi', '506', '澳門銀河線上賭場(福布斯)', 'Rita', 'Miona', 'Wendy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original澳門銀河線上賭場(福布斯)@506', 'img_fubusi.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(401, '2016-09-07', 'k888666', 'kxm', '凱旋門娛樂城', 'Rita', 'Fanny', 'Ivy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original凱旋門娛樂城@kxm', 'img_k888666.jpg', '3.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(402, '2013-12-18', 'singapore', 'xjp', '新加坡金沙娛樂場(新加坡)', NULL, NULL, 'Yicin', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original新加坡金沙娛樂場(新加坡)@xjp', 'img_singapore.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(403, '2016-10-19', 'macau163', '163', '澳門金沙線上賭場', 'Celia', 'Wilson', 'Ivy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original澳門金沙線上賭場@163', 'img_macau163.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(404, '2015-04-30', 'yh855', '855', '澳門銀河在線娛樂', 'Jessica', 'Wilson', 'Avery', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original澳門銀河在線娛樂@855', 'img_yh855.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(405, '2015-01-09', 'galaxy777888', 'aa', '澳門銀河網絡賭場', 'Pixie', 'Chaos', 'Cindy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original澳門銀河網絡賭場@aa', 'img_galaxy777888.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(406, '2016-04-11', 'lions', 'sss', '獅子會線上娛樂城CASINO(獅子會娛樂城)', 'Wilson', 'Chardin', 'Avery', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original獅子會線上娛樂城CASINO(獅子會娛樂城)@sss', 'img_lions.jpg', '3.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(407, '2015-12-30', 'jinbei', '802', '澳門金沙官方賭場Sands(金杯)', 'Wilson', 'Peach', 'Cindy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original澳門金沙官方賭場Sands(金杯)@802', 'img_jinbei.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(408, '2016-04-22', 'galaxyy16', 'sj', '澳門銀河線上博彩galaxymacau', 'Miona', 'Miona', 'Yicin', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original澳門銀河線上博彩galaxymacau@sj', 'img_galaxyy16.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(409, '2016-03-07', 'aeon', 'yw', '金沙網上賭場永旺廳(永旺)', 'Fanny', 'Miona', 'Cindy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original金沙網上賭場永旺廳(永旺)@yw', 'img_aeon.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(410, '2017-10-20', 'jd598', '808', '澳門金沙線上娛樂城(金都國際)', 'Liying', 'Chaos', 'Elsa', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original澳門金沙線上娛樂城(金都國際)@808', 'img_jd598.jpg', '5.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(411, '2014-12-31', 'macau0236', '89', '澳門金沙國際娛樂場', 'Chardin', 'Rita', 'Wendy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original澳門金沙國際娛樂場@89', 'img_macau0236.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(412, '2015-02-03', 'js135', 'sds', '金沙娛樂場官方直營', 'Chardin', 'Yuna', 'Wendy', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original金沙娛樂場官方直營@sds', 'img_js135.jpg', '1.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(413, '2015-12-02', 'losangeles', '29', '澳門金沙官方線上賭城(洛杉磯娛樂城)', 'Wilson', 'Peach', '小孟', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original澳門金沙官方線上賭城(洛杉磯娛樂城)@29', 'img_losangeles.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(414, '2014-12-22', 'luodun', '088', '澳門銀河線上博彩娛樂城(羅頓)', 'Fanny', 'Liying', '小孟', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original澳門銀河線上博彩娛樂城(羅頓)@088', 'img_luodun.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(415, '2015-04-15', 'hx-bet', 'hxb', '澳門金沙大地國際娛樂場(豪享博)', 'Chaos', 'Wilson', 'Ezio', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original澳門金沙大地國際娛樂場(豪享博)@hxb', 'img_hx-bet.jpg', '2.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09'),
(416, '2017-07-14', 'huaxia', 'gj8', '澳門金沙賭場線上娛樂城(國際俱樂部)', 'Wilson', 'Liying', 'Haix', '\\\\mcd-oneweb_project(1)專案(1)整合站(2)租網original澳門金沙賭場線上娛樂城(國際俱樂部)@gj8', 'img_huaxia.jpg', '4.0', NULL, NULL, '0000-00-00 00:00:00', '2018-03-31 19:27:09');

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
(1, 'bbin_web', 'bbin_web@example.com', '$2y$10$uEFT3JwkMwqIeY0T7KeFeOWdlBp92DxZtRnOuco5CFCGxCZtGOaJy', 'vVbMkkuEmp6fs81l4hplBOHgFwaAimGepETG2WfOvX4XVYK0MFk1gtEEW93a', '2017-07-04 09:05:35', '2017-07-04 09:05:35', 'bbin_web');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=417;

--
-- 使用資料表 AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
