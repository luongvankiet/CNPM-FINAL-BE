-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2019 at 08:29 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `agri_prod_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_slug`, `created_at`, `updated_at`) VALUES
(1, 'Prof. Lilyan Will Jr.', 'prof-lilyan-will-jr-1557597312', '2019-05-10 19:56:28', '2019-05-11 10:55:12'),
(2, 'Dr. Emerald Carter', 'dr-emerald-carter-1557543388', '2019-05-10 19:56:29', '2019-05-10 19:56:29'),
(3, 'Mrs. Holly Hettinger Jr.', 'mrs-holly-hettinger-jr-1557543388', '2019-05-10 19:56:29', '2019-05-10 19:56:29'),
(4, 'Twila Howe', 'twila-howe-1557543388', '2019-05-10 19:56:29', '2019-05-10 19:56:29'),
(5, 'Avery Stokes', 'avery-stokes-1557543388', '2019-05-10 19:56:29', '2019-05-10 19:56:29'),
(6, 'Jacquelyn Bergstrom V', 'jacquelyn-bergstrom-v-1557543388', '2019-05-10 19:56:29', '2019-05-10 19:56:29'),
(7, 'Catherine Bernhard', 'catherine-bernhard-1557543388', '2019-05-10 19:56:29', '2019-05-10 19:56:29'),
(8, 'Edward Bashirian', 'edward-bashirian-1557543388', '2019-05-10 19:56:29', '2019-05-10 19:56:29'),
(9, 'Mr. Cesar Pfeffer V', 'mr-cesar-pfeffer-v-1557543388', '2019-05-10 19:56:29', '2019-05-10 19:56:29'),
(11, 'Nông Sản Rau Củ Tươi', 'nong-san-rau-cu-tuoi-1557598253', '2019-05-11 11:10:53', '2019-05-11 11:10:53');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fax_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `logo_url` longtext COLLATE utf8mb4_unicode_ci,
  `website_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'undefined',
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `company_name`, `phone_number`, `fax_number`, `address`, `description`, `logo_url`, `website_url`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Konopelski-Kautzer', '1-250-665-0340', '2071418235', '84981 Cruickshank Manors Suite 338\nEast Damionburgh, IA 56819', 'Recusandae eaque dicta vel aliquid. Numquam blanditiis optio ut dolores. Earum omnis ducimus animi sit.', 'https://lorempixel.com/400/400/?81561', 'http://kub.net/ea-fuga-consequatur-quos-repellendus-nostrum-perferendis-voluptatibus-minus', 1, '2019-05-10 19:56:32', '2019-05-10 19:56:32'),
(2, 'Kuhlman and Sons', '680-592-8173 x87296', '2410127546', '1467 Armstrong Brook\nZiemeton, ME 48629-2858', 'Aut accusamus et quod vitae a cumque assumenda. Vero sit suscipit sapiente blanditiis exercitationem officiis. Quasi eum voluptates a molestiae. Velit in harum rerum totam neque.', 'https://lorempixel.com/400/400/?33477', 'http://lowe.org/', 2, '2019-05-10 19:56:32', '2019-05-10 19:56:32'),
(3, 'Block, Douglas and Pfannerstill', '(882) 473-1582', '6854273404', '800 Schaden Stream\nRohanberg, IL 69458', 'Et id itaque ea expedita corporis quae incidunt. Quos delectus ipsam voluptatem. Illum modi eaque alias sit laudantium.', 'https://lorempixel.com/400/400/?21165', 'http://www.ryan.com/sunt-ab-voluptas-quo-ipsam-minima-ea-aut-illo.html', 3, '2019-05-10 19:56:32', '2019-05-10 19:56:32'),
(4, 'Bins, Stokes and Mraz', '515-413-5710', '5970019614', '69729 Linwood Inlet Apt. 161\nNorth Cloydbury, LA 71440-2829', 'Id et id quia. Et accusantium necessitatibus est dolorem accusamus quidem modi.', 'https://lorempixel.com/400/400/?67077', 'https://www.adams.com/qui-excepturi-molestiae-sapiente-accusantium-qui-harum', 4, '2019-05-10 19:56:32', '2019-05-10 19:56:32'),
(5, 'Effertz, Marks and Windler', '(614) 636-9531 x818', '7001253944', '2271 Joan Village\nNorth Cassandra, MA 55218', 'Quaerat sit dolor odit et autem modi esse. Est quia soluta fuga non voluptatem id rerum eligendi. Aliquid rerum et consequatur aut quod laudantium saepe. Qui delectus ipsa ut et.', 'https://lorempixel.com/400/400/?40546', 'http://www.ritchie.com/error-sed-suscipit-illum-id-inventore-ipsam-dolorum', 5, '2019-05-10 19:56:32', '2019-05-10 19:56:32'),
(6, 'Adams, Mosciski and Walter', '524-892-8831', '3171203685', '881 Shakira Village Suite 662\nEast Aliya, WA 59252-5882', 'Quo id et nostrum qui et voluptas. Quia placeat qui vitae facilis. Voluptate harum dignissimos ut ut veniam dicta sequi. Perferendis distinctio quos vel aliquid rerum et non assumenda.', 'https://lorempixel.com/400/400/?71793', 'http://www.dooley.biz/eum-voluptas-aut-facilis', 6, '2019-05-10 19:56:32', '2019-05-10 19:56:32'),
(7, 'Olson-Lemke', '1-536-869-6016 x02922', '3059856924', '3049 Goyette Club\nWolfstad, MT 74425', 'In omnis aut molestias natus tempore voluptas magnam. Quidem rerum omnis incidunt error rerum. Aut explicabo est provident. Minima repellendus vel similique impedit et.', 'https://lorempixel.com/400/400/?32414', 'http://www.reichert.info/', 7, '2019-05-10 19:56:32', '2019-05-10 19:56:32'),
(8, 'Schamberger, Mueller and Pfeffer', '652-701-8209', '9806898135', '5304 Smith Gateway\nWest Florianfurt, IA 14166-0811', 'Nostrum iste cumque iusto recusandae. A vitae officiis ad neque excepturi et voluptatem. Non provident aut nisi hic.', 'https://lorempixel.com/400/400/?73893', 'http://www.runte.com/excepturi-qui-libero-ex.html', 8, '2019-05-10 19:56:32', '2019-05-10 19:56:32'),
(9, 'Hackett Inc', '+1-434-224-4792', '4622836438', '845 Stark Stravenue\nPort Malachistad, WV 29835', 'Sapiente similique quas voluptas reiciendis corrupti. Quas nemo nihil quia ea. Architecto molestias dolorem est ipsum ratione. Omnis vitae saepe est ut aut est quis.', 'https://lorempixel.com/400/400/?24824', 'https://www.jakubowski.com/expedita-quae-ratione-magni-saepe-sit-doloremque-dolorem', 9, '2019-05-10 19:56:32', '2019-05-10 19:56:32'),
(12, 'Grant-Schneider', '(225) 583-3274', '9033861681', '86880 Linda Stravenue Suite 832\nNew Gregghaven, IA 93451', 'Aut repellendus aut nulla et in eos commodi. Odit saepe est deleniti earum qui et voluptatem. Odit eveniet cum voluptatibus ut corporis omnis ea.', 'https://lorempixel.com/400/400/?60783', 'http://bauch.biz/', 12, '2019-05-10 19:56:32', '2019-05-10 19:56:32'),
(13, 'Powlowski and Sons', '384.338.2295', '8422392075', '840 Morar Tunnel Apt. 326\nHillarymouth, NY 35892', 'Et quo hic ut non ab. Et cum veniam recusandae. Ullam ut cumque sunt recusandae aut beatae. Laboriosam voluptatem facere dolorem.', 'https://lorempixel.com/400/400/?24078', 'http://dietrich.biz/', 13, '2019-05-10 19:56:32', '2019-05-10 19:56:32'),
(14, 'Kshlerin Group', '(751) 289-6568', '4024118693', '82612 Block Mount Suite 527\nNehaview, DE 98956', 'Quasi aliquid est id aut quod. Culpa ut quod voluptatem vitae est ullam laborum.', 'https://lorempixel.com/400/400/?52767', 'http://www.connelly.com/', 14, '2019-05-10 19:56:32', '2019-05-10 19:56:32'),
(15, 'Lueilwitz-Breitenberg', '429-254-8033', '2024817250', '301 Simonis Harbor\nSouth Otisshire, NV 10871', 'Ea quia et ipsa reprehenderit est libero. Vel vel ratione qui molestiae voluptas. Inventore ipsum iusto amet magnam error repellat rerum.', 'https://lorempixel.com/400/400/?56514', 'https://www.ortiz.info/et-sit-eum-et-a-aperiam-nisi-eaque', 15, '2019-05-10 19:56:32', '2019-05-10 19:56:32'),
(16, 'Kirlin-Trantow', '(662) 314-1709', '5908141986', '32251 Parker Ways\nReichertberg, ME 73188', 'Dolorum soluta est praesentium dignissimos. Rerum reiciendis provident numquam cumque doloremque magni. Exercitationem et neque magnam consequuntur.', 'https://lorempixel.com/400/400/?34781', 'https://www.shields.com/magni-qui-ut-sint-commodi-sit-in-perspiciatis', 16, '2019-05-10 19:56:32', '2019-05-10 19:56:32'),
(17, 'Lind-Paucek', '913-550-8610 x2030', '8494648161', '2578 Sarai Squares\nFraneckifort, HI 27926', 'Eos odio et explicabo alias ut non. Ipsum consequatur voluptas qui eos. Ad quas ipsam dolor laborum voluptate praesentium.', 'https://lorempixel.com/400/400/?14982', 'http://www.koepp.biz/consectetur-possimus-explicabo-quasi-placeat-facere-modi', 17, '2019-05-10 19:56:32', '2019-05-10 19:56:32'),
(18, 'Streich-Kessler', '(457) 696-8235 x2119', '1725628378', '3071 Morar Burgs\nPort Thelma, PA 24335', 'Dignissimos et totam numquam aperiam esse et iure. Deleniti corrupti quasi nihil qui sit molestias. Illo dolores atque tenetur sed praesentium quia fugit. Placeat numquam totam eaque tempora.', 'https://lorempixel.com/400/400/?11145', 'https://www.beatty.biz/voluptatum-doloribus-assumenda-et-sunt', 18, '2019-05-10 19:56:32', '2019-05-10 19:56:32'),
(19, 'Ortiz-Bergnaum', '234-935-0559 x76120', '1044822960', '533 Carroll Freeway Suite 511\nDenesikbury, ID 50222-4905', 'Dolor ad minima placeat ad omnis praesentium qui. Dolor sed ipsam dolorem blanditiis reprehenderit autem sunt. Et natus error voluptas dolor.', 'https://lorempixel.com/400/400/?35956', 'http://www.klocko.com/et-nostrum-recusandae-optio-omnis-enim-nulla-distinctio.html', 19, '2019-05-10 19:56:32', '2019-05-10 19:56:32'),
(20, 'Larson-Wilkinson', '(382) 902-2413 x95292', '8800695480', '6742 Spencer Island\nNew Misty, AR 25985', 'Perspiciatis veniam expedita asperiores eaque. Omnis vel et dolore repellat maiores aut et. Qui labore libero eos fugiat velit mollitia quos. Modi ratione alias autem et labore architecto.', 'https://lorempixel.com/400/400/?39829', 'https://schaden.biz/dignissimos-dolor-cum-enim-repellat-corrupti-vitae-voluptatem.html', 20, '2019-05-10 19:56:32', '2019-05-10 19:56:32');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `imageUrl` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `imageUrl`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 'https://lorempixel.com/640/480/?70358', 1, '2019-05-10 19:56:35', '2019-05-10 19:56:35'),
(2, 'https://lorempixel.com/640/480/?87068', 1, '2019-05-10 19:56:35', '2019-05-10 19:56:35'),
(3, 'https://lorempixel.com/640/480/?79035', 2, '2019-05-10 19:56:35', '2019-05-10 19:56:35'),
(4, 'https://lorempixel.com/640/480/?63016', 2, '2019-05-10 19:56:35', '2019-05-10 19:56:35'),
(5, 'https://lorempixel.com/640/480/?64547', 3, '2019-05-10 19:56:35', '2019-05-10 19:56:35'),
(6, 'https://lorempixel.com/640/480/?52324', 3, '2019-05-10 19:56:35', '2019-05-10 19:56:35'),
(7, 'https://lorempixel.com/640/480/?91950', 4, '2019-05-10 19:56:35', '2019-05-10 19:56:35'),
(8, 'https://lorempixel.com/640/480/?47721', 4, '2019-05-10 19:56:35', '2019-05-10 19:56:35'),
(9, 'https://lorempixel.com/640/480/?42140', 5, '2019-05-10 19:56:35', '2019-05-10 19:56:35'),
(10, 'https://lorempixel.com/640/480/?46237', 5, '2019-05-10 19:56:35', '2019-05-10 19:56:35'),
(11, 'https://lorempixel.com/640/480/?30661', 6, '2019-05-10 19:56:35', '2019-05-10 19:56:35'),
(12, 'https://lorempixel.com/640/480/?91687', 6, '2019-05-10 19:56:35', '2019-05-10 19:56:35'),
(13, 'https://lorempixel.com/640/480/?14173', 7, '2019-05-10 19:56:36', '2019-05-10 19:56:36'),
(14, 'https://lorempixel.com/640/480/?72033', 7, '2019-05-10 19:56:36', '2019-05-10 19:56:36'),
(15, 'https://lorempixel.com/640/480/?89580', 8, '2019-05-10 19:56:36', '2019-05-10 19:56:36'),
(16, 'https://lorempixel.com/640/480/?33283', 8, '2019-05-10 19:56:36', '2019-05-10 19:56:36'),
(17, 'https://lorempixel.com/640/480/?17100', 9, '2019-05-10 19:56:36', '2019-05-10 19:56:36'),
(18, 'https://lorempixel.com/640/480/?86151', 9, '2019-05-10 19:56:36', '2019-05-10 19:56:36'),
(19, 'https://lorempixel.com/640/480/?80593', 10, '2019-05-10 19:56:36', '2019-05-10 19:56:36'),
(20, 'https://lorempixel.com/640/480/?44962', 10, '2019-05-10 19:56:36', '2019-05-10 19:56:36'),
(21, 'https://lorempixel.com/640/480/?94390', 11, '2019-05-10 19:56:36', '2019-05-10 19:56:36'),
(22, 'https://lorempixel.com/640/480/?32737', 11, '2019-05-10 19:56:36', '2019-05-10 19:56:36'),
(23, 'https://lorempixel.com/640/480/?89207', 12, '2019-05-10 19:56:36', '2019-05-10 19:56:36'),
(24, 'https://lorempixel.com/640/480/?71725', 12, '2019-05-10 19:56:36', '2019-05-10 19:56:36'),
(25, 'https://lorempixel.com/640/480/?34151', 13, '2019-05-10 19:56:36', '2019-05-10 19:56:36'),
(26, 'https://lorempixel.com/640/480/?11202', 13, '2019-05-10 19:56:36', '2019-05-10 19:56:36'),
(27, 'https://lorempixel.com/640/480/?76406', 14, '2019-05-10 19:56:36', '2019-05-10 19:56:36'),
(28, 'https://lorempixel.com/640/480/?36513', 14, '2019-05-10 19:56:36', '2019-05-10 19:56:36'),
(29, 'https://lorempixel.com/640/480/?17176', 15, '2019-05-10 19:56:36', '2019-05-10 19:56:36'),
(30, 'https://lorempixel.com/640/480/?88238', 15, '2019-05-10 19:56:36', '2019-05-10 19:56:36'),
(31, 'https://lorempixel.com/640/480/?63502', 16, '2019-05-10 19:56:36', '2019-05-10 19:56:36'),
(32, 'https://lorempixel.com/640/480/?65021', 16, '2019-05-10 19:56:36', '2019-05-10 19:56:36'),
(33, 'https://lorempixel.com/640/480/?70438', 17, '2019-05-10 19:56:36', '2019-05-10 19:56:36'),
(34, 'https://lorempixel.com/640/480/?45654', 17, '2019-05-10 19:56:36', '2019-05-10 19:56:36'),
(35, 'https://lorempixel.com/640/480/?86772', 18, '2019-05-10 19:56:36', '2019-05-10 19:56:36'),
(36, 'https://lorempixel.com/640/480/?20885', 18, '2019-05-10 19:56:36', '2019-05-10 19:56:36'),
(37, 'https://lorempixel.com/640/480/?38488', 19, '2019-05-10 19:56:37', '2019-05-10 19:56:37'),
(38, 'https://lorempixel.com/640/480/?98642', 19, '2019-05-10 19:56:37', '2019-05-10 19:56:37'),
(39, 'https://lorempixel.com/640/480/?80089', 20, '2019-05-10 19:56:37', '2019-05-10 19:56:37'),
(40, 'https://lorempixel.com/640/480/?57615', 20, '2019-05-10 19:56:37', '2019-05-10 19:56:37'),
(41, 'https://lorempixel.com/640/480/?92291', 21, '2019-05-10 19:56:37', '2019-05-10 19:56:37'),
(42, 'https://lorempixel.com/640/480/?31346', 21, '2019-05-10 19:56:37', '2019-05-10 19:56:37'),
(49, 'https://lorempixel.com/640/480/?93198', 25, '2019-05-10 19:56:37', '2019-05-10 19:56:37'),
(50, 'https://lorempixel.com/640/480/?87598', 25, '2019-05-10 19:56:37', '2019-05-10 19:56:37'),
(51, 'https://lorempixel.com/640/480/?99744', 26, '2019-05-10 19:56:37', '2019-05-10 19:56:37'),
(52, 'https://lorempixel.com/640/480/?37229', 26, '2019-05-10 19:56:37', '2019-05-10 19:56:37'),
(53, 'https://lorempixel.com/640/480/?76015', 27, '2019-05-10 19:56:37', '2019-05-10 19:56:37'),
(54, 'https://lorempixel.com/640/480/?17634', 27, '2019-05-10 19:56:37', '2019-05-10 19:56:37'),
(61, 'https://lorempixel.com/640/480/?79903', 31, '2019-05-10 19:56:38', '2019-05-10 19:56:38'),
(62, 'https://lorempixel.com/640/480/?51275', 31, '2019-05-10 19:56:38', '2019-05-10 19:56:38'),
(63, 'https://lorempixel.com/640/480/?77338', 32, '2019-05-10 19:56:38', '2019-05-10 19:56:38'),
(64, 'https://lorempixel.com/640/480/?71500', 32, '2019-05-10 19:56:38', '2019-05-10 19:56:38'),
(65, 'https://lorempixel.com/640/480/?62378', 33, '2019-05-10 19:56:38', '2019-05-10 19:56:38'),
(66, 'https://lorempixel.com/640/480/?54856', 33, '2019-05-10 19:56:38', '2019-05-10 19:56:38'),
(67, 'https://lorempixel.com/640/480/?98225', 34, '2019-05-10 19:56:38', '2019-05-10 19:56:38'),
(68, 'https://lorempixel.com/640/480/?12227', 34, '2019-05-10 19:56:38', '2019-05-10 19:56:38'),
(69, 'https://lorempixel.com/640/480/?97634', 35, '2019-05-10 19:56:38', '2019-05-10 19:56:38'),
(70, 'https://lorempixel.com/640/480/?25519', 35, '2019-05-10 19:56:38', '2019-05-10 19:56:38'),
(71, 'https://lorempixel.com/640/480/?31844', 36, '2019-05-10 19:56:38', '2019-05-10 19:56:38'),
(72, 'https://lorempixel.com/640/480/?82962', 36, '2019-05-10 19:56:38', '2019-05-10 19:56:38'),
(73, 'https://lorempixel.com/640/480/?99387', 37, '2019-05-10 19:56:38', '2019-05-10 19:56:38'),
(74, 'https://lorempixel.com/640/480/?52760', 37, '2019-05-10 19:56:38', '2019-05-10 19:56:38'),
(75, 'https://lorempixel.com/640/480/?19175', 38, '2019-05-10 19:56:38', '2019-05-10 19:56:38'),
(76, 'https://lorempixel.com/640/480/?48394', 38, '2019-05-10 19:56:38', '2019-05-10 19:56:38'),
(77, 'https://lorempixel.com/640/480/?25590', 39, '2019-05-10 19:56:38', '2019-05-10 19:56:38'),
(78, 'https://lorempixel.com/640/480/?40161', 39, '2019-05-10 19:56:38', '2019-05-10 19:56:38'),
(85, 'https://lorempixel.com/640/480/?39741', 43, '2019-05-10 19:56:39', '2019-05-10 19:56:39'),
(86, 'https://lorempixel.com/640/480/?43862', 43, '2019-05-10 19:56:39', '2019-05-10 19:56:39'),
(87, 'https://lorempixel.com/640/480/?27047', 44, '2019-05-10 19:56:39', '2019-05-10 19:56:39'),
(88, 'https://lorempixel.com/640/480/?74496', 44, '2019-05-10 19:56:39', '2019-05-10 19:56:39'),
(89, 'https://lorempixel.com/640/480/?38769', 45, '2019-05-10 19:56:39', '2019-05-10 19:56:39'),
(90, 'https://lorempixel.com/640/480/?90211', 45, '2019-05-10 19:56:39', '2019-05-10 19:56:39'),
(97, 'https://lorempixel.com/640/480/?97001', 49, '2019-05-10 19:56:39', '2019-05-10 19:56:39'),
(98, 'https://lorempixel.com/640/480/?23734', 49, '2019-05-10 19:56:39', '2019-05-10 19:56:39'),
(99, 'https://lorempixel.com/640/480/?27866', 50, '2019-05-10 19:56:39', '2019-05-10 19:56:39'),
(100, 'https://lorempixel.com/640/480/?69658', 50, '2019-05-10 19:56:39', '2019-05-10 19:56:39'),
(101, 'https://lorempixel.com/640/480/?38345', 51, '2019-05-10 19:56:39', '2019-05-10 19:56:39'),
(102, 'https://lorempixel.com/640/480/?97787', 51, '2019-05-10 19:56:39', '2019-05-10 19:56:39'),
(103, 'https://lorempixel.com/640/480/?90420', 52, '2019-05-10 19:56:40', '2019-05-10 19:56:40'),
(104, 'https://lorempixel.com/640/480/?78675', 52, '2019-05-10 19:56:40', '2019-05-10 19:56:40'),
(105, 'https://lorempixel.com/640/480/?48383', 53, '2019-05-10 19:56:40', '2019-05-10 19:56:40'),
(106, 'https://lorempixel.com/640/480/?82986', 53, '2019-05-10 19:56:40', '2019-05-10 19:56:40'),
(107, 'https://lorempixel.com/640/480/?43661', 54, '2019-05-10 19:56:40', '2019-05-10 19:56:40'),
(108, 'https://lorempixel.com/640/480/?41604', 54, '2019-05-10 19:56:40', '2019-05-10 19:56:40'),
(109, 'https://lorempixel.com/640/480/?88207', 55, '2019-05-10 19:56:40', '2019-05-10 19:56:40'),
(110, 'https://lorempixel.com/640/480/?95284', 55, '2019-05-10 19:56:40', '2019-05-10 19:56:40'),
(111, 'https://lorempixel.com/640/480/?30437', 56, '2019-05-10 19:56:40', '2019-05-10 19:56:40'),
(112, 'https://lorempixel.com/640/480/?91386', 56, '2019-05-10 19:56:40', '2019-05-10 19:56:40'),
(113, 'https://lorempixel.com/640/480/?99225', 57, '2019-05-10 19:56:40', '2019-05-10 19:56:40'),
(114, 'https://lorempixel.com/640/480/?22914', 57, '2019-05-10 19:56:40', '2019-05-10 19:56:40'),
(115, 'https://lorempixel.com/640/480/?88678', 58, '2019-05-10 19:56:40', '2019-05-10 19:56:40'),
(116, 'https://lorempixel.com/640/480/?96865', 58, '2019-05-10 19:56:40', '2019-05-10 19:56:40'),
(117, 'https://lorempixel.com/640/480/?53009', 59, '2019-05-10 19:56:40', '2019-05-10 19:56:40'),
(118, 'https://lorempixel.com/640/480/?28110', 59, '2019-05-10 19:56:40', '2019-05-10 19:56:40'),
(119, 'https://lorempixel.com/640/480/?45139', 60, '2019-05-10 19:56:40', '2019-05-10 19:56:40'),
(120, 'https://lorempixel.com/640/480/?70246', 60, '2019-05-10 19:56:40', '2019-05-10 19:56:40'),
(121, 'https://lorempixel.com/640/480/?71458', 61, '2019-05-10 19:56:41', '2019-05-10 19:56:41'),
(122, 'https://lorempixel.com/640/480/?23345', 61, '2019-05-10 19:56:41', '2019-05-10 19:56:41'),
(123, 'https://lorempixel.com/640/480/?39071', 62, '2019-05-10 19:56:41', '2019-05-10 19:56:41'),
(124, 'https://lorempixel.com/640/480/?20421', 62, '2019-05-10 19:56:41', '2019-05-10 19:56:41'),
(125, 'https://lorempixel.com/640/480/?66688', 63, '2019-05-10 19:56:41', '2019-05-10 19:56:41'),
(126, 'https://lorempixel.com/640/480/?51746', 63, '2019-05-10 19:56:41', '2019-05-10 19:56:41'),
(133, 'https://lorempixel.com/640/480/?80587', 67, '2019-05-10 19:56:41', '2019-05-10 19:56:41'),
(134, 'https://lorempixel.com/640/480/?38256', 67, '2019-05-10 19:56:42', '2019-05-10 19:56:42'),
(135, 'https://lorempixel.com/640/480/?21484', 68, '2019-05-10 19:56:42', '2019-05-10 19:56:42'),
(136, 'https://lorempixel.com/640/480/?42462', 68, '2019-05-10 19:56:42', '2019-05-10 19:56:42'),
(137, 'https://lorempixel.com/640/480/?82497', 69, '2019-05-10 19:56:42', '2019-05-10 19:56:42'),
(138, 'https://lorempixel.com/640/480/?41345', 69, '2019-05-10 19:56:42', '2019-05-10 19:56:42'),
(145, 'https://lorempixel.com/640/480/?42914', 73, '2019-05-10 19:56:42', '2019-05-10 19:56:42'),
(146, 'https://lorempixel.com/640/480/?68638', 73, '2019-05-10 19:56:42', '2019-05-10 19:56:42'),
(147, 'https://lorempixel.com/640/480/?38992', 74, '2019-05-10 19:56:42', '2019-05-10 19:56:42'),
(148, 'https://lorempixel.com/640/480/?24266', 74, '2019-05-10 19:56:42', '2019-05-10 19:56:42'),
(149, 'https://lorempixel.com/640/480/?79344', 75, '2019-05-10 19:56:42', '2019-05-10 19:56:42'),
(150, 'https://lorempixel.com/640/480/?77969', 75, '2019-05-10 19:56:42', '2019-05-10 19:56:42'),
(151, 'https://lorempixel.com/640/480/?17699', 76, '2019-05-10 19:56:43', '2019-05-10 19:56:43'),
(152, 'https://lorempixel.com/640/480/?97496', 76, '2019-05-10 19:56:43', '2019-05-10 19:56:43'),
(153, 'https://lorempixel.com/640/480/?82664', 77, '2019-05-10 19:56:43', '2019-05-10 19:56:43'),
(154, 'https://lorempixel.com/640/480/?98632', 77, '2019-05-10 19:56:43', '2019-05-10 19:56:43'),
(155, 'https://lorempixel.com/640/480/?80712', 78, '2019-05-10 19:56:43', '2019-05-10 19:56:43'),
(156, 'https://lorempixel.com/640/480/?96956', 78, '2019-05-10 19:56:43', '2019-05-10 19:56:43'),
(157, 'https://lorempixel.com/640/480/?33682', 79, '2019-05-10 19:56:43', '2019-05-10 19:56:43'),
(158, 'https://lorempixel.com/640/480/?52694', 79, '2019-05-10 19:56:43', '2019-05-10 19:56:43'),
(159, 'https://lorempixel.com/640/480/?63939', 80, '2019-05-10 19:56:43', '2019-05-10 19:56:43'),
(160, 'https://lorempixel.com/640/480/?12647', 80, '2019-05-10 19:56:43', '2019-05-10 19:56:43'),
(161, 'https://lorempixel.com/640/480/?78014', 81, '2019-05-10 19:56:43', '2019-05-10 19:56:43'),
(162, 'https://lorempixel.com/640/480/?75053', 81, '2019-05-10 19:56:43', '2019-05-10 19:56:43'),
(163, 'https://lorempixel.com/640/480/?40608', 82, '2019-05-10 19:56:44', '2019-05-10 19:56:44'),
(164, 'https://lorempixel.com/640/480/?56400', 82, '2019-05-10 19:56:44', '2019-05-10 19:56:44'),
(165, 'https://lorempixel.com/640/480/?76338', 83, '2019-05-10 19:56:44', '2019-05-10 19:56:44'),
(166, 'https://lorempixel.com/640/480/?38649', 83, '2019-05-10 19:56:44', '2019-05-10 19:56:44'),
(167, 'https://lorempixel.com/640/480/?30466', 84, '2019-05-10 19:56:44', '2019-05-10 19:56:44'),
(168, 'https://lorempixel.com/640/480/?34960', 84, '2019-05-10 19:56:44', '2019-05-10 19:56:44'),
(169, 'https://lorempixel.com/640/480/?49383', 85, '2019-05-10 19:56:44', '2019-05-10 19:56:44'),
(170, 'https://lorempixel.com/640/480/?36152', 85, '2019-05-10 19:56:44', '2019-05-10 19:56:44'),
(171, 'https://lorempixel.com/640/480/?90686', 86, '2019-05-10 19:56:44', '2019-05-10 19:56:44'),
(172, 'https://lorempixel.com/640/480/?63999', 86, '2019-05-10 19:56:44', '2019-05-10 19:56:44'),
(173, 'https://lorempixel.com/640/480/?88567', 87, '2019-05-10 19:56:44', '2019-05-10 19:56:44'),
(174, 'https://lorempixel.com/640/480/?26866', 87, '2019-05-10 19:56:44', '2019-05-10 19:56:44'),
(175, 'https://lorempixel.com/640/480/?79656', 88, '2019-05-10 19:56:44', '2019-05-10 19:56:44'),
(176, 'https://lorempixel.com/640/480/?76888', 88, '2019-05-10 19:56:44', '2019-05-10 19:56:44'),
(177, 'https://lorempixel.com/640/480/?21996', 89, '2019-05-10 19:56:44', '2019-05-10 19:56:44'),
(178, 'https://lorempixel.com/640/480/?64182', 89, '2019-05-10 19:56:44', '2019-05-10 19:56:44'),
(179, 'https://lorempixel.com/640/480/?37915', 90, '2019-05-10 19:56:44', '2019-05-10 19:56:44'),
(180, 'https://lorempixel.com/640/480/?70372', 90, '2019-05-10 19:56:44', '2019-05-10 19:56:44'),
(181, 'https://lorempixel.com/640/480/?74632', 91, '2019-05-10 19:56:44', '2019-05-10 19:56:44'),
(182, 'https://lorempixel.com/640/480/?28758', 91, '2019-05-10 19:56:44', '2019-05-10 19:56:44'),
(183, 'https://lorempixel.com/640/480/?69664', 92, '2019-05-10 19:56:44', '2019-05-10 19:56:44'),
(184, 'https://lorempixel.com/640/480/?43054', 92, '2019-05-10 19:56:44', '2019-05-10 19:56:44'),
(185, 'https://lorempixel.com/640/480/?72392', 93, '2019-05-10 19:56:44', '2019-05-10 19:56:44'),
(186, 'https://lorempixel.com/640/480/?16264', 93, '2019-05-10 19:56:44', '2019-05-10 19:56:44'),
(187, 'https://lorempixel.com/640/480/?38748', 94, '2019-05-10 19:56:44', '2019-05-10 19:56:44'),
(188, 'https://lorempixel.com/640/480/?35205', 94, '2019-05-10 19:56:44', '2019-05-10 19:56:44'),
(189, 'https://lorempixel.com/640/480/?68934', 95, '2019-05-10 19:56:44', '2019-05-10 19:56:44'),
(190, 'https://lorempixel.com/640/480/?69936', 95, '2019-05-10 19:56:44', '2019-05-10 19:56:44'),
(191, 'https://lorempixel.com/640/480/?75782', 96, '2019-05-10 19:56:45', '2019-05-10 19:56:45'),
(192, 'https://lorempixel.com/640/480/?97451', 96, '2019-05-10 19:56:45', '2019-05-10 19:56:45'),
(193, 'https://lorempixel.com/640/480/?33844', 97, '2019-05-10 19:56:45', '2019-05-10 19:56:45'),
(194, 'https://lorempixel.com/640/480/?84681', 97, '2019-05-10 19:56:45', '2019-05-10 19:56:45'),
(195, 'https://lorempixel.com/640/480/?42404', 98, '2019-05-10 19:56:45', '2019-05-10 19:56:45'),
(196, 'https://lorempixel.com/640/480/?82725', 98, '2019-05-10 19:56:45', '2019-05-10 19:56:45'),
(197, 'https://lorempixel.com/640/480/?49471', 99, '2019-05-10 19:56:45', '2019-05-10 19:56:45'),
(198, 'https://lorempixel.com/640/480/?97513', 99, '2019-05-10 19:56:45', '2019-05-10 19:56:45'),
(199, 'https://lorempixel.com/640/480/?32688', 100, '2019-05-10 19:56:45', '2019-05-10 19:56:45'),
(200, 'https://lorempixel.com/640/480/?45874', 100, '2019-05-10 19:56:45', '2019-05-10 19:56:45'),
(201, 'https://lorempixel.com/640/480/?68294', 101, '2019-05-10 19:56:45', '2019-05-10 19:56:45'),
(202, 'https://lorempixel.com/640/480/?89767', 101, '2019-05-10 19:56:45', '2019-05-10 19:56:45'),
(203, 'https://lorempixel.com/640/480/?73839', 102, '2019-05-10 19:56:45', '2019-05-10 19:56:45'),
(204, 'https://lorempixel.com/640/480/?11035', 102, '2019-05-10 19:56:45', '2019-05-10 19:56:45'),
(211, 'https://lorempixel.com/640/480/?74871', 106, '2019-05-10 19:56:46', '2019-05-10 19:56:46'),
(212, 'https://lorempixel.com/640/480/?68873', 106, '2019-05-10 19:56:46', '2019-05-10 19:56:46'),
(213, 'https://lorempixel.com/640/480/?90585', 107, '2019-05-10 19:56:46', '2019-05-10 19:56:46'),
(214, 'https://lorempixel.com/640/480/?52903', 107, '2019-05-10 19:56:46', '2019-05-10 19:56:46'),
(215, 'https://lorempixel.com/640/480/?34332', 108, '2019-05-10 19:56:46', '2019-05-10 19:56:46'),
(216, 'https://lorempixel.com/640/480/?95702', 108, '2019-05-10 19:56:46', '2019-05-10 19:56:46'),
(217, 'https://lorempixel.com/640/480/?83275', 109, '2019-05-10 19:56:46', '2019-05-10 19:56:46'),
(218, 'https://lorempixel.com/640/480/?35899', 109, '2019-05-10 19:56:46', '2019-05-10 19:56:46'),
(219, 'https://lorempixel.com/640/480/?76445', 110, '2019-05-10 19:56:46', '2019-05-10 19:56:46'),
(220, 'https://lorempixel.com/640/480/?24303', 110, '2019-05-10 19:56:46', '2019-05-10 19:56:46'),
(221, 'https://lorempixel.com/640/480/?29719', 111, '2019-05-10 19:56:46', '2019-05-10 19:56:46'),
(222, 'https://lorempixel.com/640/480/?85855', 111, '2019-05-10 19:56:46', '2019-05-10 19:56:46'),
(223, 'https://lorempixel.com/640/480/?98699', 112, '2019-05-10 19:56:46', '2019-05-10 19:56:46'),
(224, 'https://lorempixel.com/640/480/?61286', 112, '2019-05-10 19:56:46', '2019-05-10 19:56:46'),
(225, 'https://lorempixel.com/640/480/?87721', 113, '2019-05-10 19:56:46', '2019-05-10 19:56:46'),
(226, 'https://lorempixel.com/640/480/?45422', 113, '2019-05-10 19:56:46', '2019-05-10 19:56:46'),
(227, 'https://lorempixel.com/640/480/?46090', 114, '2019-05-10 19:56:46', '2019-05-10 19:56:46'),
(228, 'https://lorempixel.com/640/480/?52352', 114, '2019-05-10 19:56:46', '2019-05-10 19:56:46'),
(229, 'https://lorempixel.com/640/480/?41959', 115, '2019-05-10 19:56:46', '2019-05-10 19:56:46'),
(230, 'https://lorempixel.com/640/480/?32875', 115, '2019-05-10 19:56:46', '2019-05-10 19:56:46'),
(231, 'https://lorempixel.com/640/480/?71196', 116, '2019-05-10 19:56:46', '2019-05-10 19:56:46'),
(232, 'https://lorempixel.com/640/480/?76950', 116, '2019-05-10 19:56:46', '2019-05-10 19:56:46'),
(233, 'https://lorempixel.com/640/480/?10684', 117, '2019-05-10 19:56:46', '2019-05-10 19:56:46'),
(234, 'https://lorempixel.com/640/480/?16180', 117, '2019-05-10 19:56:46', '2019-05-10 19:56:46'),
(241, 'https://lorempixel.com/640/480/?34169', 121, '2019-05-10 19:56:47', '2019-05-10 19:56:47'),
(242, 'https://lorempixel.com/640/480/?88449', 121, '2019-05-10 19:56:47', '2019-05-10 19:56:47'),
(243, 'https://lorempixel.com/640/480/?90708', 122, '2019-05-10 19:56:47', '2019-05-10 19:56:47'),
(244, 'https://lorempixel.com/640/480/?76623', 122, '2019-05-10 19:56:47', '2019-05-10 19:56:47'),
(245, 'https://lorempixel.com/640/480/?95963', 123, '2019-05-10 19:56:47', '2019-05-10 19:56:47'),
(246, 'https://lorempixel.com/640/480/?96371', 123, '2019-05-10 19:56:47', '2019-05-10 19:56:47'),
(247, 'https://lorempixel.com/640/480/?31103', 124, '2019-05-10 19:56:47', '2019-05-10 19:56:47'),
(248, 'https://lorempixel.com/640/480/?74366', 124, '2019-05-10 19:56:47', '2019-05-10 19:56:47'),
(249, 'https://lorempixel.com/640/480/?77588', 125, '2019-05-10 19:56:47', '2019-05-10 19:56:47'),
(250, 'https://lorempixel.com/640/480/?28154', 125, '2019-05-10 19:56:47', '2019-05-10 19:56:47'),
(251, 'https://lorempixel.com/640/480/?76627', 126, '2019-05-10 19:56:47', '2019-05-10 19:56:47'),
(252, 'https://lorempixel.com/640/480/?56951', 126, '2019-05-10 19:56:47', '2019-05-10 19:56:47'),
(265, 'https://lorempixel.com/640/480/?46505', 133, '2019-05-10 19:56:48', '2019-05-10 19:56:48'),
(266, 'https://lorempixel.com/640/480/?13143', 133, '2019-05-10 19:56:48', '2019-05-10 19:56:48'),
(267, 'https://lorempixel.com/640/480/?15167', 134, '2019-05-10 19:56:48', '2019-05-10 19:56:48'),
(268, 'https://lorempixel.com/640/480/?46698', 134, '2019-05-10 19:56:48', '2019-05-10 19:56:48'),
(269, 'https://lorempixel.com/640/480/?56219', 135, '2019-05-10 19:56:48', '2019-05-10 19:56:48'),
(270, 'https://lorempixel.com/640/480/?52665', 135, '2019-05-10 19:56:48', '2019-05-10 19:56:48'),
(271, 'https://lorempixel.com/640/480/?45335', 136, '2019-05-10 19:56:48', '2019-05-10 19:56:48'),
(272, 'https://lorempixel.com/640/480/?28080', 136, '2019-05-10 19:56:48', '2019-05-10 19:56:48'),
(273, 'https://lorempixel.com/640/480/?55920', 137, '2019-05-10 19:56:48', '2019-05-10 19:56:48'),
(274, 'https://lorempixel.com/640/480/?81901', 137, '2019-05-10 19:56:48', '2019-05-10 19:56:48'),
(275, 'https://lorempixel.com/640/480/?85124', 138, '2019-05-10 19:56:48', '2019-05-10 19:56:48'),
(276, 'https://lorempixel.com/640/480/?48348', 138, '2019-05-10 19:56:48', '2019-05-10 19:56:48'),
(277, 'https://lorempixel.com/640/480/?71754', 139, '2019-05-10 19:56:48', '2019-05-10 19:56:48'),
(278, 'https://lorempixel.com/640/480/?50738', 139, '2019-05-10 19:56:48', '2019-05-10 19:56:48'),
(279, 'https://lorempixel.com/640/480/?11939', 140, '2019-05-10 19:56:48', '2019-05-10 19:56:48'),
(280, 'https://lorempixel.com/640/480/?20145', 140, '2019-05-10 19:56:48', '2019-05-10 19:56:48'),
(281, 'https://lorempixel.com/640/480/?66832', 141, '2019-05-10 19:56:48', '2019-05-10 19:56:48'),
(282, 'https://lorempixel.com/640/480/?82341', 141, '2019-05-10 19:56:48', '2019-05-10 19:56:48'),
(283, 'https://lorempixel.com/640/480/?40371', 142, '2019-05-10 19:56:48', '2019-05-10 19:56:48'),
(284, 'https://lorempixel.com/640/480/?75848', 142, '2019-05-10 19:56:48', '2019-05-10 19:56:48'),
(285, 'https://lorempixel.com/640/480/?55304', 143, '2019-05-10 19:56:48', '2019-05-10 19:56:48'),
(286, 'https://lorempixel.com/640/480/?62578', 143, '2019-05-10 19:56:48', '2019-05-10 19:56:48'),
(287, 'https://lorempixel.com/640/480/?32742', 144, '2019-05-10 19:56:48', '2019-05-10 19:56:48'),
(288, 'https://lorempixel.com/640/480/?21212', 144, '2019-05-10 19:56:48', '2019-05-10 19:56:48'),
(289, 'https://lorempixel.com/640/480/?27335', 145, '2019-05-10 19:56:49', '2019-05-10 19:56:49'),
(290, 'https://lorempixel.com/640/480/?84068', 145, '2019-05-10 19:56:49', '2019-05-10 19:56:49'),
(291, 'https://lorempixel.com/640/480/?49357', 146, '2019-05-10 19:56:49', '2019-05-10 19:56:49'),
(292, 'https://lorempixel.com/640/480/?68906', 146, '2019-05-10 19:56:49', '2019-05-10 19:56:49'),
(293, 'https://lorempixel.com/640/480/?87600', 147, '2019-05-10 19:56:49', '2019-05-10 19:56:49'),
(294, 'https://lorempixel.com/640/480/?76936', 147, '2019-05-10 19:56:49', '2019-05-10 19:56:49'),
(295, 'data:image/jpeg;base64,/9j/4QAYRXhpZgAASUkqAAgAAAAAAAAAAAAAAP/sABFEdWNreQABAAQAAAA8AAD/4QMpaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLwA8P3hwYWNrZXQgYmVnaW49Iu+7vyIgaWQ9Ilc1TTBNcENlaGlIenJlU3pOVGN6a2M5ZCI/PiA8eDp4bXBtZXRhIHhtbG5zOng9ImFkb2JlOm5zOm1ldGEvIiB4OnhtcHRrPSJBZG9iZSBYTVAgQ29yZSA1LjMtYzAxMSA2Ni4xNDU2NjEsIDIwMTIvMDIvMDYtMTQ6NTY6MjcgICAgICAgICI+IDxyZGY6UkRGIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyI+IDxyZGY6RGVzY3JpcHRpb24gcmRmOmFib3V0PSIiIHhtbG5zOnhtcE1NPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvbW0vIiB4bWxuczpzdFJlZj0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL3NUeXBlL1Jlc291cmNlUmVmIyIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOkYwOThCNDFGNzlCODExRTg5RjBFRUFEOEJBNTI3NzY3IiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOkYwOThCNDFFNzlCODExRTg5RjBFRUFEOEJBNTI3NzY3IiB4bXA6Q3JlYXRvclRvb2w9IkFkb2JlIFBob3Rvc2hvcCBDUzYgV2luZG93cyI+IDx4bXBNTTpEZXJpdmVkRnJvbSBzdFJlZjppbnN0YW5jZUlEPSJ4bXAuaWlkOkYzRjlEMkU0NzlCNjExRTg4MzMzQzQ5RUZBOEFGMzFDIiBzdFJlZjpkb2N1bWVudElEPSJ4bXAuZGlkOkYzRjlEMkU1NzlCNjExRTg4MzMzQzQ5RUZBOEFGMzFDIi8+IDwvcmRmOkRlc2NyaXB0aW9uPiA8L3JkZjpSREY+IDwveDp4bXBtZXRhPiA8P3hwYWNrZXQgZW5kPSJyIj8+/+4ADkFkb2JlAGTAAAAAAf/bAIQABgQEBAUEBgUFBgkGBQYJCwgGBggL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', 148, '2019-05-11 11:13:09', '2019-05-11 11:13:09');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_04_08_135713_create_categories_table', 1),
(4, '2019_04_15_065354_create_companies_table', 1),
(5, '2019_04_15_070350_create_posts_table', 1),
(6, '2019_04_26_042308_create_products_table', 1),
(7, '2019_04_28_082803_create_images_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_content` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `user_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `post_title`, `post_content`, `post_slug`, `active`, `user_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Provident velit veniam repellat quae aperiam.', 'But here, to Alice\'s great surprise, the Duchess\'s cook. She carried the pepper-box in her own mind (as well as she could. The next witness would be worth the trouble of getting her hands up to her to wink with one finger for the Dormouse,\' thought Alice; \'only, as it\'s asleep, I suppose it were nine o\'clock in the kitchen. \'When I\'M a Duchess,\' she said these words her foot as far as they were.', 'provident-velit-veniam-repellat-quae-aperiam-1557543392', 1, 9, 4, '2019-05-10 19:56:33', '2019-05-10 19:56:33'),
(2, 'Unde magni dignissimos qui impedit qui.', 'Alice in a hoarse growl, \'the world would go through,\' thought poor Alice, who had been running half an hour or so there were a Duck and a pair of white kid gloves and the baby joined):-- \'Wow! wow! wow!\' While the Owl had the best cat in the sea. But they HAVE their tails fast in their mouths; and the m--\' But here, to Alice\'s great surprise, the Duchess\'s cook. She carried the pepper-box in.', 'unde-magni-dignissimos-qui-impedit-qui-1557543392', 1, 13, 4, '2019-05-10 19:56:33', '2019-05-10 19:56:33'),
(3, 'Cum itaque aspernatur est.', 'Gryphon. \'Then, you know,\' said Alice aloud, addressing nobody in particular. \'She\'d soon fetch it back!\' \'And who are THESE?\' said the Dormouse. \'Don\'t talk nonsense,\' said Alice doubtfully: \'it means--to--make--anything--prettier.\' \'Well, then,\' the Gryphon at the March Hare said to herself, \'Why, they\'re only a mouse that had fluttered down from the Queen to-day?\' \'I should like to be sure.', 'cum-itaque-aspernatur-est-1557543392', 1, 8, 7, '2019-05-10 19:56:33', '2019-05-10 19:56:33'),
(4, 'Odio enim itaque et sapiente ipsam.', 'Mouse with an air of great surprise. \'Of course they were\', said the Duchess; \'and the moral of that is, but I THINK I can go back and see that queer little toss of her voice, and see after some executions I have done that, you know,\' the Mock Turtle\'s heavy sobs. Lastly, she pictured to herself \'That\'s quite enough--I hope I shan\'t grow any more--As it is, I can\'t put it in the morning, just.', 'odio-enim-itaque-et-sapiente-ipsam-1557543392', 0, 7, 3, '2019-05-10 19:56:33', '2019-05-10 19:56:33'),
(5, 'Sed recusandae tempora autem velit.', 'By the use of repeating all that stuff,\' the Mock Turtle, suddenly dropping his voice; and Alice looked up, and reduced the answer to shillings and pence. \'Take off your hat,\' the King was the White Rabbit; \'in fact, there\'s nothing written on the glass table as before, \'and things are worse than ever,\' thought the whole party at once to eat or drink something or other; but the three gardeners.', 'sed-recusandae-tempora-autem-velit-1557543392', 0, 5, 4, '2019-05-10 19:56:33', '2019-05-10 19:56:33'),
(6, 'Deleniti excepturi dignissimos debitis molestiae et accusamus.', 'Dinah, and saying \"Come up again, dear!\" I shall only look up in such long ringlets, and mine doesn\'t go in ringlets at all; however, she again heard a little bottle on it, for she had peeped into the darkness as hard as she was up to her great disappointment it was quite impossible to say than his first remark, \'It was a little faster?\" said a timid voice at her own children. \'How should I.', 'deleniti-excepturi-dignissimos-debitis-molestiae-et-accusamus-1557543392', 0, 19, 4, '2019-05-10 19:56:33', '2019-05-10 19:56:33'),
(7, 'Ab ad aut unde.', 'He looked anxiously round, to make herself useful, and looking at the window, I only wish it was,\' said the Gryphon, \'she wants for to know what \"it\" means.\' \'I know what to beautify is, I can\'t see you?\' She was looking at Alice the moment she appeared on the end of the house down!\' said the King triumphantly, pointing to Alice for some time with great emphasis, looking hard at Alice as he.', 'ab-ad-aut-unde-1557543392', 0, 8, 9, '2019-05-10 19:56:33', '2019-05-10 19:56:33'),
(9, 'Error est at dolor nisi velit repellendus voluptatem.', 'Footman went on in a thick wood. \'The first thing I\'ve got back to the waving of the March Hare. \'Sixteenth,\' added the Queen. \'Can you play croquet?\' The soldiers were always getting up and bawled out, \"He\'s murdering the time! Off with his nose Trims his belt and his buttons, and turns out his toes.\' [later editions continued as follows When the sands are all pardoned.\' \'Come, THAT\'S a good.', 'error-est-at-dolor-nisi-velit-repellendus-voluptatem-1557543392', 0, 2, 1, '2019-05-10 19:56:33', '2019-05-10 19:56:33'),
(11, 'Aut eligendi cumque non.', 'However, on the end of trials, \"There was some attempts at applause, which was full of smoke from one end of his pocket, and was going on, as she leant against a buttercup to rest herself, and began to repeat it, but her head down to nine inches high. CHAPTER VI. Pig and Pepper For a minute or two she stood looking at it again: but he now hastily began again, using the ink, that was said, and.', 'aut-eligendi-cumque-non-1557543392', 0, 18, 3, '2019-05-10 19:56:33', '2019-05-10 19:56:33'),
(12, 'Repellendus velit tempora aut architecto ut sapiente officia voluptatem.', 'Then it got down off the top of her ever getting out of their wits!\' So she swallowed one of them even when they liked, so that it might end, you know,\' said Alice sadly. \'Hand it over here,\' said the Duchess; \'and most things twinkled after that--only the March Hare. The Hatter looked at her own mind (as well as pigs, and was a paper label, with the Dormouse. \'Don\'t talk nonsense,\' said Alice.', 'repellendus-velit-tempora-aut-architecto-ut-sapiente-officia-voluptatem-1557543392', 1, 6, 3, '2019-05-10 19:56:33', '2019-05-10 19:56:33'),
(13, 'Neque modi debitis unde soluta officia ut et.', 'Hatter said, turning to the Knave. The Knave did so, very carefully, with one eye; \'I seem to have got altered.\' \'It is wrong from beginning to write this down on the ground near the looking-glass. There was no time to go, for the White Rabbit; \'in fact, there\'s nothing written on the floor: in another moment that it was impossible to say anything. \'Why,\' said the Rabbit\'s little white kid.', 'neque-modi-debitis-unde-soluta-officia-ut-et-1557543392', 0, 4, 7, '2019-05-10 19:56:33', '2019-05-10 19:56:33'),
(15, 'Occaecati occaecati sed dolorum omnis.', 'Alice severely. \'What are they doing?\' Alice whispered to the jury. \'Not yet, not yet!\' the Rabbit was no one else seemed inclined to say than his first remark, \'It was the first figure!\' said the Duchess, who seemed too much overcome to do with you. Mind now!\' The poor little feet, I wonder if I was, I shouldn\'t want YOURS: I don\'t want YOU with us!\"\' \'They were learning to draw,\' the Dormouse.', 'occaecati-occaecati-sed-dolorum-omnis-1557543392', 1, 12, 2, '2019-05-10 19:56:33', '2019-05-10 19:56:33'),
(17, 'Aliquam numquam rerum est nam et qui eius eos.', 'King repeated angrily, \'or I\'ll have you executed, whether you\'re nervous or not.\' \'I\'m a poor man, your Majesty,\' said the Caterpillar. \'Not QUITE right, I\'m afraid,\' said Alice, as she could, and waited to see what this bottle was a sound of a muchness?\' \'Really, now you ask me,\' said Alice, \'and those twelve creatures,\' (she was rather doubtful whether she could even make out at the door--I.', 'aliquam-numquam-rerum-est-nam-et-qui-eius-eos-1557543392', 1, 19, 8, '2019-05-10 19:56:33', '2019-05-10 19:56:33'),
(18, 'Maiores animi velit repudiandae consequatur hic consequuntur quia.', 'The Caterpillar was the same side of WHAT? The other side of the lefthand bit. * * * * * * * * * * * * * * * \'Come, my head\'s free at last!\' said Alice thoughtfully: \'but then--I shouldn\'t be hungry for it, while the Dodo managed it.) First it marked out a box of comfits, (luckily the salt water had not as yet had any sense, they\'d take the place of the gloves, and she swam about, trying to fix.', 'maiores-animi-velit-repudiandae-consequatur-hic-consequuntur-quia-1557543392', 0, 13, 1, '2019-05-10 19:56:33', '2019-05-10 19:56:33'),
(19, 'Distinctio suscipit quis quo perspiciatis in temporibus eligendi.', 'Queen. \'Well, I can\'t be civil, you\'d better leave off,\' said the Gryphon, and the others all joined in chorus, \'Yes, please do!\' but the Mouse was swimming away from him, and said nothing. \'This here young lady,\' said the Mouse, frowning, but very politely: \'Did you say it.\' \'That\'s nothing to do: once or twice she had nibbled some more tea,\' the March Hare. Alice was very like a steam-engine.', 'distinctio-suscipit-quis-quo-perspiciatis-in-temporibus-eligendi-1557543392', 0, 13, 9, '2019-05-10 19:56:33', '2019-05-10 19:56:33'),
(20, 'Eum natus deserunt consequuntur et enim consequuntur.', 'SAID was, \'Why is a raven like a star-fish,\' thought Alice. \'I don\'t quite understand you,\' she said, without even looking round. \'I\'ll fetch the executioner myself,\' said the Queen said--\' \'Get to your tea; it\'s getting late.\' So Alice began to get her head to feel which way I want to stay in here any longer!\' She waited for some while in silence. At last the Mouse, in a hurry that she looked.', 'eum-natus-deserunt-consequuntur-et-enim-consequuntur-1557543392', 0, 9, 4, '2019-05-10 19:56:33', '2019-05-10 19:56:33'),
(21, 'Voluptatem iure iure necessitatibus molestias.', 'Why, there\'s hardly enough of me left to make out which were the cook, to see if there were ten of them, with her head! Off--\' \'Nonsense!\' said Alice, \'but I know who I am! But I\'d better take him his fan and gloves--that is, if I like being that person, I\'ll come up: if not, I\'ll stay down here! It\'ll be no doubt that it led into the Dormouse\'s place, and Alice looked all round the court and.', 'voluptatem-iure-iure-necessitatibus-molestias-1557543392', 1, 20, 8, '2019-05-10 19:56:33', '2019-05-10 19:56:33'),
(23, 'Similique dignissimos officiis excepturi minima aut aut.', 'Dormouse!\' And they pinched it on both sides of it; then Alice, thinking it was her dream:-- First, she dreamed of little Alice herself, and fanned herself with one of the ground.\' So she swallowed one of the way--\' \'THAT generally takes some time,\' interrupted the Hatter: \'it\'s very rude.\' The Hatter was out of sight: then it chuckled. \'What fun!\' said the Mouse. \'Of course,\' the Gryphon.', 'similique-dignissimos-officiis-excepturi-minima-aut-aut-1557543392', 1, 6, 5, '2019-05-10 19:56:33', '2019-05-10 19:56:33'),
(25, 'Harum assumenda repellat quia voluptatem.', 'Queen! The Queen!\' and the baby joined):-- \'Wow! wow! wow!\' \'Here! you may nurse it a minute or two, she made out that one of them say, \'Look out now, Five! Don\'t go splashing paint over me like that!\' He got behind Alice as he shook his grey locks, \'I kept all my limbs very supple By the time he was obliged to have it explained,\' said the Dodo. Then they both bowed low, and their slates and.', 'harum-assumenda-repellat-quia-voluptatem-1557543392', 1, 12, 8, '2019-05-10 19:56:33', '2019-05-10 19:56:33'),
(26, 'Repudiandae et voluptatem sunt accusamus quaerat nihil qui atque.', 'Mabel, for I know THAT well enough; and what does it to the company generally, \'You are old,\' said the Dodo, pointing to the end: then stop.\' These were the two creatures got so much about a whiting to a farmer, you know, and he hurried off. Alice thought over all she could not remember the simple rules their friends had taught them: such as, \'Sure, I don\'t believe you do lessons?\' said Alice.', 'repudiandae-et-voluptatem-sunt-accusamus-quaerat-nihil-qui-atque-1557543393', 1, 3, 8, '2019-05-10 19:56:33', '2019-05-10 19:56:33'),
(27, 'Consequatur provident nostrum natus quos debitis aut nisi.', 'Alice, looking down at once, in a low, weak voice. \'Now, I give you fair warning,\' shouted the Queen. \'Sentence first--verdict afterwards.\' \'Stuff and nonsense!\' said Alice very politely; but she knew that it is!\' As she said this, she was a good many little girls in my size; and as he wore his crown over the fire, and at once without waiting for the hedgehogs; and in another moment down went.', 'consequatur-provident-nostrum-natus-quos-debitis-aut-nisi-1557543393', 0, 19, 2, '2019-05-10 19:56:33', '2019-05-10 19:56:33'),
(28, 'Officiis asperiores autem sapiente commodi quaerat.', 'The Duchess took no notice of her or of anything to put his shoes on. \'--and just take his head sadly. \'Do I look like it?\' he said. \'Fifteenth,\' said the Caterpillar decidedly, and there was no more of it at all. However, \'jury-men\' would have made a dreadfully ugly child: but it said in a low, trembling voice. \'There\'s more evidence to come before that!\' \'Call the next thing was waving its.', 'officiis-asperiores-autem-sapiente-commodi-quaerat-1557543393', 1, 4, 7, '2019-05-10 19:56:33', '2019-05-10 19:56:33'),
(29, 'Est fuga rerum reiciendis.', 'Alice\'s elbow was pressed so closely against her foot, that there was a treacle-well.\' \'There\'s no sort of circle, (\'the exact shape doesn\'t matter,\' it said,) and then treading on my tail. See how eagerly the lobsters to the Cheshire Cat: now I shall be a letter, after all: it\'s a very respectful tone, but frowning and making faces at him as he found it made Alice quite hungry to look over.', 'est-fuga-rerum-reiciendis-1557543393', 0, 15, 4, '2019-05-10 19:56:33', '2019-05-10 19:56:33'),
(30, 'Fugit quia delectus ipsam laboriosam.', 'SOMEBODY ought to have finished,\' said the White Rabbit. She was moving them about as curious as it was empty: she did not venture to go near the centre of the court. \'What do you know about it, even if I chose,\' the Duchess and the bright eager eyes were getting so thin--and the twinkling of the cakes, and was looking down at her rather inquisitively, and seemed to be seen: she found to be.', 'fugit-quia-delectus-ipsam-laboriosam-1557543393', 1, 8, 8, '2019-05-10 19:56:34', '2019-05-10 19:56:34'),
(31, 'Corporis voluptates ducimus sapiente omnis exercitationem sit.', 'Adventures, till she heard one of the sort!\' said Alice. \'I\'m glad they\'ve begun asking riddles.--I believe I can do no more, whatever happens. What WILL become of me?\' Luckily for Alice, the little passage: and THEN--she found herself safe in a very little use, as it didn\'t much matter which way she put one arm out of sight; and an old woman--but then--always to have changed since her swim in.', 'corporis-voluptates-ducimus-sapiente-omnis-exercitationem-sit-1557543393', 0, 14, 4, '2019-05-10 19:56:34', '2019-05-10 19:56:34'),
(32, 'Quos quibusdam eligendi voluptatem eligendi laudantium mollitia.', 'Alice. \'Now we shall have somebody to talk nonsense. The Queen\'s argument was, that you think you\'re changed, do you?\' \'I\'m afraid I am, sir,\' said Alice; \'I can\'t help it,\' she thought, \'it\'s sure to make herself useful, and looking anxiously about as she went on, \'you throw the--\' \'The lobsters!\' shouted the Queen. \'Sentence first--verdict afterwards.\' \'Stuff and nonsense!\' said Alice sharply.', 'quos-quibusdam-eligendi-voluptatem-eligendi-laudantium-mollitia-1557543393', 1, 8, 2, '2019-05-10 19:56:34', '2019-05-10 19:56:34'),
(33, 'Ipsum molestiae reprehenderit occaecati sint.', 'I\'m not the smallest idea how confusing it is right?\' \'In my youth,\' said the King said gravely, \'and go on till you come to the Classics master, though. He was an uncomfortably sharp chin. However, she did not appear, and after a few yards off. The Cat seemed to be listening, so she went on for some while in silence. At last the Caterpillar sternly. \'Explain yourself!\' \'I can\'t explain it,\'.', 'ipsum-molestiae-reprehenderit-occaecati-sint-1557543393', 1, 14, 2, '2019-05-10 19:56:34', '2019-05-10 19:56:34'),
(34, 'Non aperiam at laborum quam.', 'PRECIOUS nose\'; as an explanation; \'I\'ve none of them can explain it,\' said Alice in a wondering tone. \'Why, what a wonderful dream it had entirely disappeared; so the King said to Alice; and Alice heard it before,\' said Alice,) and round Alice, every now and then, and holding it to his ear. Alice considered a little, and then said, \'It WAS a narrow escape!\' said Alice, as she could, for her to.', 'non-aperiam-at-laborum-quam-1557543393', 1, 1, 7, '2019-05-10 19:56:34', '2019-05-10 19:56:34'),
(36, 'Consequatur nobis nam esse harum fugit nemo.', 'Alice did not see anything that looked like the tone of this ointment--one shilling the box-- Allow me to him: She gave me a pair of gloves and a Long Tale They were indeed a queer-looking party that assembled on the twelfth?\' Alice went on muttering over the fire, stirring a large plate came skimming out, straight at the place where it had been, it suddenly appeared again. \'By-the-bye, what.', 'consequatur-nobis-nam-esse-harum-fugit-nemo-1557543393', 1, 3, 5, '2019-05-10 19:56:34', '2019-05-10 19:56:34'),
(37, 'Quidem et modi sit quis non odio.', 'Ann, what ARE you doing out here? Run home this moment, and fetch me a pair of gloves and the m--\' But here, to Alice\'s side as she heard a little shriek and a fan! Quick, now!\' And Alice was not going to shrink any further: she felt certain it must be the right size to do anything but sit with its arms folded, frowning like a sky-rocket!\' \'So you did, old fellow!\' said the Queen, who was.', 'quidem-et-modi-sit-quis-non-odio-1557543393', 0, 8, 6, '2019-05-10 19:56:34', '2019-05-10 19:56:34'),
(38, 'Placeat quis non repudiandae ad similique distinctio ut fugiat.', 'But the insolence of his teacup and bread-and-butter, and went on growing, and, as she could guess, she was now about a thousand times as large as the game was going on within--a constant howling and sneezing, and every now and then, \'we went to the table for it, you may stand down,\' continued the Hatter, and, just as well go in ringlets at all; and I\'m sure she\'s the best of educations--in.', 'placeat-quis-non-repudiandae-ad-similique-distinctio-ut-fugiat-1557543393', 1, 1, 2, '2019-05-10 19:56:34', '2019-05-10 19:56:34'),
(39, 'Omnis est dolorum ut est eum est.', 'Hatter hurriedly left the court, she said to herself as she could see it trying in a deep voice, \'are done with a large pool all round her once more, while the Dodo could not taste theirs, and the other ladder?--Why, I hadn\'t mentioned Dinah!\' she said this, she came upon a little more conversation with her head!\' about once in the pool, \'and she sits purring so nicely by the Queen left off.', 'omnis-est-dolorum-ut-est-eum-est-1557543393', 0, 14, 2, '2019-05-10 19:56:34', '2019-05-10 19:56:34'),
(41, 'Autem quod at est alias fugiat error.', 'Mouse was swimming away from him, and said to herself, \'I wonder what Latitude or Longitude either, but thought they were gardeners, or soldiers, or courtiers, or three pairs of tiny white kid gloves: she took courage, and went down on one knee. \'I\'m a poor man, your Majesty,\' said the Caterpillar. \'Is that the Gryphon answered, very nearly getting up and bawled out, \"He\'s murdering the time!.', 'autem-quod-at-est-alias-fugiat-error-1557543393', 1, 9, 7, '2019-05-10 19:56:34', '2019-05-10 19:56:34'),
(42, 'Nobis non sunt cum ut id ut.', 'It was, no doubt: only Alice did not dare to disobey, though she felt sure she would get up and said, \'It was the White Rabbit, who said in a trembling voice to its feet, ran round the neck of the words all coming different, and then the other, and making quite a long and a sad tale!\' said the Duchess, \'and that\'s why. Pig!\' She said this she looked up, and there was a little way out of sight.', 'nobis-non-sunt-cum-ut-id-ut-1557543393', 0, 14, 3, '2019-05-10 19:56:34', '2019-05-10 19:56:34'),
(45, 'Ut sint ut dolor laboriosam.', 'March Hare. The Hatter was out of a tree. By the time she heard a little sharp bark just over her head impatiently; and, turning to Alice, flinging the baby joined):-- \'Wow! wow! wow!\' While the Panther received knife and fork with a smile. There was a little door into that lovely garden. First, however, she again heard a voice of the guinea-pigs cheered, and was going to give the hedgehog had.', 'ut-sint-ut-dolor-laboriosam-1557543393', 1, 5, 4, '2019-05-10 19:56:35', '2019-05-10 19:56:35'),
(46, 'Expedita neque earum ut ipsam itaque.', 'I am in the same as the March Hare and his friends shared their never-ending meal, and the great wonder is, that I\'m doubtful about the temper of your flamingo. Shall I try the first figure,\' said the Duchess, digging her sharp little chin into Alice\'s shoulder as he spoke, and the pool a little more conversation with her arms round it as you go on? It\'s by far the most confusing thing I ever.', 'expedita-neque-earum-ut-ipsam-itaque-1557543393', 1, 1, 4, '2019-05-10 19:56:35', '2019-05-10 19:56:35'),
(47, 'Tempora qui ex sit et molestiae rem inventore.', 'Mock Turtle at last, and managed to swallow a morsel of the jury consider their verdict,\' the King said, with a shiver. \'I beg your acceptance of this ointment--one shilling the box-- Allow me to introduce some other subject of conversation. \'Are you--are you fond--of--of dogs?\' The Mouse looked at each other for some way, and the arm that was said, and went to school every day--\' \'I\'VE been to.', 'tempora-qui-ex-sit-et-molestiae-rem-inventore-1557543393', 0, 17, 1, '2019-05-10 19:56:35', '2019-05-10 19:56:35'),
(48, 'Quod quasi non velit.', 'Adventures of hers would, in the trial one way up as the large birds complained that they would go, and making faces at him as he spoke. \'A cat may look at all the arches are gone from this morning,\' said Alice doubtfully: \'it means--to--make--anything--prettier.\' \'Well, then,\' the Gryphon as if she could guess, she was trying to make the arches. The chief difficulty Alice found at first was in.', 'quod-quasi-non-velit-1557543393', 0, 1, 7, '2019-05-10 19:56:35', '2019-05-10 19:56:35'),
(49, 'Voluptatum tempora commodi hic et est repudiandae amet.', 'She was a dead silence instantly, and Alice was soon left alone. \'I wish you would seem to see what I used to know. Let me see: that would be QUITE as much as serpents do, you know.\' \'And what an ignorant little girl or a worm. The question is, what did the archbishop find?\' The Mouse did not sneeze, were the cook, and a fall, and a Long Tale They were indeed a queer-looking party that assembled.', 'voluptatum-tempora-commodi-hic-et-est-repudiandae-amet-1557543393', 1, 6, 7, '2019-05-10 19:56:35', '2019-05-10 19:56:35'),
(50, 'BAMBOO - Cầu nối phát triển sản phẩm nông nghiệp giữa doanh nghiệp nhập khẩu và nhà nông.', '<p><i>Chúng tôi luôn:</i>&nbsp;<br>☞ Kiểm soát các mặt hàng nông sản một cách nghiêm ngặt từ quá trình thu mua đến vận chuyển&nbsp;<br>☞ Có giấy chứng nhận xuất xứ với Hành, Tỏi, Gừng, Nghệ, Rau Tươi, Hoa Quả,.. cung cấp ra thị trường.&nbsp;<br>☞ Mang đến người tiêu dùng sự yên tâm trên từng bữa ăn nhỏ.</p>', 'bamboo-cau-noi-phat-trien-san-pham-nong-nghiep-giua-doanh-nghiep-nhap-khau-va-nha-nong-1557598389', 1, 2, 11, '2019-05-11 11:13:09', '2019-05-11 11:13:09');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `unit` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `price`, `unit`, `post_id`, `created_at`, `updated_at`) VALUES
(1, 'Sylvan Osinski', 90691, 'repellat', 1, '2019-05-10 19:56:35', '2019-05-10 19:56:35'),
(2, 'Emma McLaughlin PhD', 22687, 'quas', 1, '2019-05-10 19:56:35', '2019-05-10 19:56:35'),
(3, 'Hudson Welch', 35416, 'nihil', 1, '2019-05-10 19:56:35', '2019-05-10 19:56:35'),
(4, 'Juanita Bayer', 68672, 'voluptas', 2, '2019-05-10 19:56:35', '2019-05-10 19:56:35'),
(5, 'Ms. Dahlia Hills III', 47145, 'natus', 2, '2019-05-10 19:56:35', '2019-05-10 19:56:35'),
(6, 'Chaim Bernhard', 10633, 'et', 2, '2019-05-10 19:56:35', '2019-05-10 19:56:35'),
(7, 'Jacynthe Welch', 51739, 'magnam', 3, '2019-05-10 19:56:35', '2019-05-10 19:56:35'),
(8, 'Florence Jaskolski', 83175, 'autem', 3, '2019-05-10 19:56:36', '2019-05-10 19:56:36'),
(9, 'Marcelina Keeling', 81889, 'modi', 3, '2019-05-10 19:56:36', '2019-05-10 19:56:36'),
(10, 'Dr. Flavio Purdy', 70344, 'consectetur', 4, '2019-05-10 19:56:36', '2019-05-10 19:56:36'),
(11, 'Miss Joanne Stanton', 75250, 'ducimus', 4, '2019-05-10 19:56:36', '2019-05-10 19:56:36'),
(12, 'Mrs. Velma Rodriguez', 90683, 'quo', 4, '2019-05-10 19:56:36', '2019-05-10 19:56:36'),
(13, 'Vance Cremin', 75247, 'sunt', 5, '2019-05-10 19:56:36', '2019-05-10 19:56:36'),
(14, 'Lauretta Schmidt', 81141, 'et', 5, '2019-05-10 19:56:36', '2019-05-10 19:56:36'),
(15, 'Helena Schoen', 15150, 'necessitatibus', 5, '2019-05-10 19:56:36', '2019-05-10 19:56:36'),
(16, 'Mr. Alfredo Quigley', 42749, 'sit', 6, '2019-05-10 19:56:36', '2019-05-10 19:56:36'),
(17, 'Salma Hintz', 86740, 'et', 6, '2019-05-10 19:56:36', '2019-05-10 19:56:36'),
(18, 'Mrs. Haven Romaguera IV', 40462, 'sed', 6, '2019-05-10 19:56:36', '2019-05-10 19:56:36'),
(19, 'Miss Meda Bode I', 95021, 'quae', 7, '2019-05-10 19:56:36', '2019-05-10 19:56:36'),
(20, 'Merle Flatley', 10330, 'molestias', 7, '2019-05-10 19:56:37', '2019-05-10 19:56:37'),
(21, 'Dr. Stacey Batz', 99109, 'voluptatem', 7, '2019-05-10 19:56:37', '2019-05-10 19:56:37'),
(25, 'Demario Wintheiser', 46250, 'quisquam', 9, '2019-05-10 19:56:37', '2019-05-10 19:56:37'),
(26, 'Ms. Marcella VonRueden I', 46037, 'iusto', 9, '2019-05-10 19:56:37', '2019-05-10 19:56:37'),
(27, 'Dr. Vaughn Wunsch III', 42985, 'quas', 9, '2019-05-10 19:56:37', '2019-05-10 19:56:37'),
(31, 'Sydney Kub MD', 72167, 'enim', 11, '2019-05-10 19:56:38', '2019-05-10 19:56:38'),
(32, 'Iva Johnston', 26068, 'et', 11, '2019-05-10 19:56:38', '2019-05-10 19:56:38'),
(33, 'Prof. Alaina Kunze Jr.', 19098, 'ut', 11, '2019-05-10 19:56:38', '2019-05-10 19:56:38'),
(34, 'Prof. Craig Flatley', 32968, 'qui', 12, '2019-05-10 19:56:38', '2019-05-10 19:56:38'),
(35, 'Dr. Maximillian McClure', 45276, 'esse', 12, '2019-05-10 19:56:38', '2019-05-10 19:56:38'),
(36, 'Ms. Ludie Bosco DVM', 85723, 'quos', 12, '2019-05-10 19:56:38', '2019-05-10 19:56:38'),
(37, 'Dr. Cordell Runolfsson', 37272, 'deserunt', 13, '2019-05-10 19:56:38', '2019-05-10 19:56:38'),
(38, 'Ms. Margarett Wuckert Sr.', 33271, 'praesentium', 13, '2019-05-10 19:56:38', '2019-05-10 19:56:38'),
(39, 'Clare Monahan MD', 10197, 'quia', 13, '2019-05-10 19:56:38', '2019-05-10 19:56:38'),
(43, 'Katelyn Kunze', 42611, 'quia', 15, '2019-05-10 19:56:38', '2019-05-10 19:56:38'),
(44, 'Bernadine Bosco', 26678, 'nulla', 15, '2019-05-10 19:56:38', '2019-05-10 19:56:38'),
(45, 'Dedrick Mann', 25372, 'impedit', 15, '2019-05-10 19:56:39', '2019-05-10 19:56:39'),
(49, 'Dr. Beulah Emmerich Sr.', 11144, 'fuga', 17, '2019-05-10 19:56:39', '2019-05-10 19:56:39'),
(50, 'Mr. Clint Carroll', 11412, 'voluptatem', 17, '2019-05-10 19:56:39', '2019-05-10 19:56:39'),
(51, 'Christian Bins', 90705, 'rerum', 17, '2019-05-10 19:56:39', '2019-05-10 19:56:39'),
(52, 'Madge King IV', 91103, 'dolores', 18, '2019-05-10 19:56:40', '2019-05-10 19:56:40'),
(53, 'Delfina Tremblay Sr.', 18441, 'sit', 18, '2019-05-10 19:56:40', '2019-05-10 19:56:40'),
(54, 'Xavier Thiel', 24445, 'similique', 18, '2019-05-10 19:56:40', '2019-05-10 19:56:40'),
(55, 'Ms. Stella Daniel Sr.', 46278, 'eos', 19, '2019-05-10 19:56:40', '2019-05-10 19:56:40'),
(56, 'General Reynolds V', 26351, 'sapiente', 19, '2019-05-10 19:56:40', '2019-05-10 19:56:40'),
(57, 'Pink Blick', 17939, 'est', 19, '2019-05-10 19:56:40', '2019-05-10 19:56:40'),
(58, 'Prof. Rodrigo Cronin MD', 39513, 'perspiciatis', 20, '2019-05-10 19:56:40', '2019-05-10 19:56:40'),
(59, 'Dr. Hadley Huel', 84138, 'dolor', 20, '2019-05-10 19:56:40', '2019-05-10 19:56:40'),
(60, 'George Roberts', 35428, 'ratione', 20, '2019-05-10 19:56:40', '2019-05-10 19:56:40'),
(61, 'Dr. Myles Jenkins', 95099, 'temporibus', 21, '2019-05-10 19:56:40', '2019-05-10 19:56:40'),
(62, 'Dr. Christine Kilback III', 84376, 'nulla', 21, '2019-05-10 19:56:40', '2019-05-10 19:56:40'),
(63, 'Hassie White DDS', 28389, 'sequi', 21, '2019-05-10 19:56:41', '2019-05-10 19:56:41'),
(67, 'Ms. Deborah Weissnat I', 52553, 'facilis', 23, '2019-05-10 19:56:41', '2019-05-10 19:56:41'),
(68, 'Tatyana Kub', 61209, 'eum', 23, '2019-05-10 19:56:41', '2019-05-10 19:56:41'),
(69, 'Kendall Wiegand', 35032, 'suscipit', 23, '2019-05-10 19:56:41', '2019-05-10 19:56:41'),
(73, 'Dr. Bridgette Predovic', 36709, 'adipisci', 25, '2019-05-10 19:56:42', '2019-05-10 19:56:42'),
(74, 'Houston Waters', 67283, 'molestiae', 25, '2019-05-10 19:56:42', '2019-05-10 19:56:42'),
(75, 'Eloise Auer', 12808, 'dolore', 25, '2019-05-10 19:56:42', '2019-05-10 19:56:42'),
(76, 'Duncan Pfannerstill IV', 85637, 'ea', 26, '2019-05-10 19:56:42', '2019-05-10 19:56:42'),
(77, 'Maybell King', 41850, 'eveniet', 26, '2019-05-10 19:56:42', '2019-05-10 19:56:42'),
(78, 'Dr. Jettie Von DDS', 62573, 'quia', 26, '2019-05-10 19:56:43', '2019-05-10 19:56:43'),
(79, 'Genoveva Stokes', 63072, 'blanditiis', 27, '2019-05-10 19:56:43', '2019-05-10 19:56:43'),
(80, 'Gregorio Hermiston', 66687, 'sit', 27, '2019-05-10 19:56:43', '2019-05-10 19:56:43'),
(81, 'Dr. Nils Wilderman', 73553, 'harum', 27, '2019-05-10 19:56:43', '2019-05-10 19:56:43'),
(82, 'Calista Feeney', 63870, 'vitae', 28, '2019-05-10 19:56:43', '2019-05-10 19:56:43'),
(83, 'Dr. Reinhold Brekke I', 52891, 'facere', 28, '2019-05-10 19:56:43', '2019-05-10 19:56:43'),
(84, 'Mr. Kristofer Leuschke II', 82160, 'consequatur', 28, '2019-05-10 19:56:44', '2019-05-10 19:56:44'),
(85, 'Iliana Purdy', 14669, 'inventore', 29, '2019-05-10 19:56:44', '2019-05-10 19:56:44'),
(86, 'Maxime Sawayn IV', 60892, 'molestias', 29, '2019-05-10 19:56:44', '2019-05-10 19:56:44'),
(87, 'Willis Schmidt PhD', 84672, 'aut', 29, '2019-05-10 19:56:44', '2019-05-10 19:56:44'),
(88, 'Mohamed Larkin', 65801, 'aut', 30, '2019-05-10 19:56:44', '2019-05-10 19:56:44'),
(89, 'Kelli Pollich', 53447, 'omnis', 30, '2019-05-10 19:56:44', '2019-05-10 19:56:44'),
(90, 'Terrance Windler', 85487, 'nam', 30, '2019-05-10 19:56:44', '2019-05-10 19:56:44'),
(91, 'Dr. Tracey Bruen', 21759, 'et', 31, '2019-05-10 19:56:44', '2019-05-10 19:56:44'),
(92, 'Jordi Bernhard', 48232, 'voluptas', 31, '2019-05-10 19:56:44', '2019-05-10 19:56:44'),
(93, 'Rhiannon Waters', 64024, 'accusamus', 31, '2019-05-10 19:56:44', '2019-05-10 19:56:44'),
(94, 'Josianne Rowe', 23334, 'vitae', 32, '2019-05-10 19:56:44', '2019-05-10 19:56:44'),
(95, 'Waldo Osinski', 38619, 'expedita', 32, '2019-05-10 19:56:44', '2019-05-10 19:56:44'),
(96, 'Prof. Bette Hoeger Jr.', 94063, 'reprehenderit', 32, '2019-05-10 19:56:44', '2019-05-10 19:56:44'),
(97, 'Kira Bode', 72182, 'similique', 33, '2019-05-10 19:56:45', '2019-05-10 19:56:45'),
(98, 'Marielle Bradtke', 76533, 'debitis', 33, '2019-05-10 19:56:45', '2019-05-10 19:56:45'),
(99, 'Friedrich Kunde', 42832, 'illo', 33, '2019-05-10 19:56:45', '2019-05-10 19:56:45'),
(100, 'Lew Will', 69177, 'qui', 34, '2019-05-10 19:56:45', '2019-05-10 19:56:45'),
(101, 'Mrs. Karli Gulgowski V', 79523, 'aut', 34, '2019-05-10 19:56:45', '2019-05-10 19:56:45'),
(102, 'Dr. Payton Mohr PhD', 67727, 'cupiditate', 34, '2019-05-10 19:56:45', '2019-05-10 19:56:45'),
(106, 'Brigitte Hills', 93898, 'earum', 36, '2019-05-10 19:56:45', '2019-05-10 19:56:45'),
(107, 'Miss Marlene Langworth III', 23565, 'placeat', 36, '2019-05-10 19:56:45', '2019-05-10 19:56:45'),
(108, 'Caleigh Feeney', 84020, 'sequi', 36, '2019-05-10 19:56:45', '2019-05-10 19:56:45'),
(109, 'Shanie Stokes', 10053, 'sapiente', 37, '2019-05-10 19:56:46', '2019-05-10 19:56:46'),
(110, 'Peyton Keeling', 70731, 'quod', 37, '2019-05-10 19:56:46', '2019-05-10 19:56:46'),
(111, 'Dariana Wolf', 17289, 'et', 37, '2019-05-10 19:56:46', '2019-05-10 19:56:46'),
(112, 'Miss Alanna King DDS', 68075, 'tempore', 38, '2019-05-10 19:56:46', '2019-05-10 19:56:46'),
(113, 'Madelyn Oberbrunner', 32785, 'laborum', 38, '2019-05-10 19:56:46', '2019-05-10 19:56:46'),
(114, 'Brent Predovic', 19839, 'praesentium', 38, '2019-05-10 19:56:46', '2019-05-10 19:56:46'),
(115, 'Jedidiah Klocko', 72359, 'necessitatibus', 39, '2019-05-10 19:56:46', '2019-05-10 19:56:46'),
(116, 'Prof. Polly Feil MD', 71111, 'soluta', 39, '2019-05-10 19:56:46', '2019-05-10 19:56:46'),
(117, 'Gilbert Hettinger', 86722, 'consequuntur', 39, '2019-05-10 19:56:46', '2019-05-10 19:56:46'),
(121, 'Adelbert Ortiz', 70524, 'pariatur', 41, '2019-05-10 19:56:47', '2019-05-10 19:56:47'),
(122, 'Margarett Schroeder', 52461, 'eligendi', 41, '2019-05-10 19:56:47', '2019-05-10 19:56:47'),
(123, 'Geraldine Abbott', 95258, 'ratione', 41, '2019-05-10 19:56:47', '2019-05-10 19:56:47'),
(124, 'Cydney Bosco', 68313, 'incidunt', 42, '2019-05-10 19:56:47', '2019-05-10 19:56:47'),
(125, 'Mellie Denesik', 56497, 'sed', 42, '2019-05-10 19:56:47', '2019-05-10 19:56:47'),
(126, 'Adonis Lakin', 37983, 'mollitia', 42, '2019-05-10 19:56:47', '2019-05-10 19:56:47'),
(133, 'Prof. Georgette Casper MD', 84998, 'et', 45, '2019-05-10 19:56:48', '2019-05-10 19:56:48'),
(134, 'Hobart Jerde', 54146, 'at', 45, '2019-05-10 19:56:48', '2019-05-10 19:56:48'),
(135, 'Casimir McCullough DDS', 40372, 'blanditiis', 45, '2019-05-10 19:56:48', '2019-05-10 19:56:48'),
(136, 'Dillan Nikolaus', 78574, 'rerum', 46, '2019-05-10 19:56:48', '2019-05-10 19:56:48'),
(137, 'Dorcas Bailey', 42180, 'consequuntur', 46, '2019-05-10 19:56:48', '2019-05-10 19:56:48'),
(138, 'Maribel Gibson', 25009, 'nam', 46, '2019-05-10 19:56:48', '2019-05-10 19:56:48'),
(139, 'Genoveva Von', 26647, 'distinctio', 47, '2019-05-10 19:56:48', '2019-05-10 19:56:48'),
(140, 'Mariam Osinski Sr.', 70353, 'consequatur', 47, '2019-05-10 19:56:48', '2019-05-10 19:56:48'),
(141, 'Susie Hand', 50268, 'suscipit', 47, '2019-05-10 19:56:48', '2019-05-10 19:56:48'),
(142, 'Sheila Lemke MD', 76892, 'dolores', 48, '2019-05-10 19:56:48', '2019-05-10 19:56:48'),
(143, 'Sofia Lowe', 36746, 'officiis', 48, '2019-05-10 19:56:48', '2019-05-10 19:56:48'),
(144, 'Katlyn Luettgen', 92178, 'ea', 48, '2019-05-10 19:56:48', '2019-05-10 19:56:48'),
(145, 'Ms. Retta Tillman', 80599, 'provident', 49, '2019-05-10 19:56:49', '2019-05-10 19:56:49'),
(146, 'Rudolph Pagac', 71493, 'aperiam', 49, '2019-05-10 19:56:49', '2019-05-10 19:56:49'),
(147, 'Paolo Swift', 57308, 'dolores', 49, '2019-05-10 19:56:49', '2019-05-10 19:56:49'),
(148, 'Súp lơ trắng', 12000, 'kg', 50, '2019-05-11 11:13:09', '2019-05-11 11:13:09');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'undefine',
  `role` enum('admin','user') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `profileImg` longtext COLLATE utf8mb4_unicode_ci,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_phone`, `role`, `profileImg`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Dr. Jolie Graham Jr.', 'ernest.schinner@example.org', '$2y$10$p2IJIDr7mb3DIEk1OTdGReviIu1MFhGNF57t5Uq6XZMAch.FBn.VW', '524.798.5373 x6693', 'admin', 'https://lorempixel.com/400/400/?93418', 1, '2019-05-10 19:56:31', '2019-05-10 19:56:31'),
(2, 'Prof. Keegan Dooley', 'abayer@example.org', '$2y$10$rT.4qE3ZFQfUWpR/q2f5X.7s6ZikFsvQzFItE6Zay9EuX6CcpkJO6', '1-847-895-7980 x41301', 'user', 'https://lorempixel.com/400/400/?42361', 1, '2019-05-10 19:56:31', '2019-05-10 19:56:31'),
(3, 'Susan Kirlin', 'carley.brakus@example.org', '$2y$10$JjoId1R2MFKu/D6c2Ge6A.TT./l2q.6K4vEnV796jejWjdtmmKfYG', '994.514.5823', 'admin', 'https://lorempixel.com/400/400/?13464', 0, '2019-05-10 19:56:31', '2019-05-10 19:56:31'),
(4, 'Sterling Ferry', 'zgislason@example.com', '$2y$10$iYE4ZcgXVQP7Ib.FEHF49O4F9nbSGTKInsAchi5BU.OSNB2mM7EZi', '(850) 691-9298', 'user', 'https://lorempixel.com/400/400/?80534', 1, '2019-05-10 19:56:31', '2019-05-10 19:56:31'),
(5, 'Sean Beer II', 'gleuschke@example.com', '$2y$10$NfI3PuHseuFQWpz.1bG0TO.gDkiH48OshGVjWo/XE/cdOSb6FwfcC', '661.522.8474 x750', 'admin', 'https://lorempixel.com/400/400/?24489', 0, '2019-05-10 19:56:31', '2019-05-10 19:56:31'),
(6, 'Mr. Kamryn Swift V', 'pboyle@example.com', '$2y$10$WtoZrRtPMT4W8Q2B1Ux3eeEZYG7Cutk7IzVtUj5o1Nadeql3x01eS', '+1 (543) 431-0458', 'user', 'https://lorempixel.com/400/400/?22051', 1, '2019-05-10 19:56:32', '2019-05-10 19:56:32'),
(7, 'Yoshiko Kulas', 'kuvalis.veronica@example.org', '$2y$10$.yc2weIc.yuiBysDevMLMOCg/Dsj0WTwrr/h6enUrgtMdYzEyzVNG', '975.303.8269 x82844', 'admin', 'https://lorempixel.com/400/400/?85759', 1, '2019-05-10 19:56:32', '2019-05-10 19:56:32'),
(8, 'Dr. Hudson Barrows', 'jaskolski.martina@example.org', '$2y$10$kCWzocTkHKWPvDa2qyyH.OvT7iVgX3GRraw2LkQNV/hcCS8//ftsW', '1-454-663-1172 x72482', 'user', 'https://lorempixel.com/400/400/?46125', 0, '2019-05-10 19:56:32', '2019-05-10 19:56:32'),
(9, 'Cedrick Marks I', 'bryce.upton@example.com', '$2y$10$iiA.zCyfetzMfriizhB6HOsSUcddzQklS5fUXvRyUD3H8Ym4kHiY2', '+1 (769) 676-8236', 'user', 'https://lorempixel.com/400/400/?56821', 0, '2019-05-10 19:56:32', '2019-05-10 19:56:32'),
(12, 'Dr. Elton Ward MD', 'oscar.johnson@example.net', '$2y$10$ra7tj4OVWSsSzQSZnNKgNui.rNNXH4nmzdJgfkHV6AHaPFpDYFPPm', '+1.657.474.2408', 'admin', 'https://lorempixel.com/400/400/?83826', 0, '2019-05-10 19:56:32', '2019-05-10 19:56:32'),
(13, 'Mr. Frankie Donnelly', 'amparo27@example.com', '$2y$10$XzalMulxs1flhBQOOJICXeTGsYg6iHkIxhzYiIrDUDHHlvMbcyVVa', '1-717-998-9038 x65173', 'admin', 'https://lorempixel.com/400/400/?63441', 0, '2019-05-10 19:56:32', '2019-05-10 19:56:32'),
(14, 'Dorothea Huels II', 'qmarks@example.org', '$2y$10$DvjX8CvELtGwSjRnxkm2Y.UbdavMnXxmZ83.UTRL0kJnwLnWlmcyW', '(909) 972-6483 x2950', 'user', 'https://lorempixel.com/400/400/?55333', 1, '2019-05-10 19:56:32', '2019-05-10 19:56:32'),
(15, 'Jacquelyn Funk', 'dallin.gislason@example.org', '$2y$10$1U3dbGn0mGu/QiyLIGJgI.A87hCTXEC9xOS0Sxq4gX4CMwgk5Shma', '724-820-5878', 'user', 'https://lorempixel.com/400/400/?50258', 0, '2019-05-10 19:56:32', '2019-05-10 19:56:32'),
(16, 'Roxane Bauch', 'verner07@example.org', '$2y$10$1EHLQLH50sPYp4Uaq.C1cOEp86I6693kPZ0J71DPI.qibJg4Dijqa', '1-581-924-6703 x432', 'user', 'https://lorempixel.com/400/400/?69545', 0, '2019-05-10 19:56:32', '2019-05-10 19:56:32'),
(17, 'Justina Grady', 'iheaney@example.org', '$2y$10$8HuvK3Oa7BawN.0qX2kt3uesqe1v62yCQa3KyWiiuTZj9Fdq7NdS.', '(393) 834-2025', 'admin', 'https://lorempixel.com/400/400/?68392', 0, '2019-05-10 19:56:32', '2019-05-10 19:56:32'),
(18, 'Josiane Hansen', 'plangosh@example.org', '$2y$10$2sFs1Thyfa4gvi4r5D5M8ujLf7xAkjimFWD8jeJbDcC0ENQrZbcKu', '(498) 439-6648', 'user', 'https://lorempixel.com/400/400/?17207', 0, '2019-05-10 19:56:32', '2019-05-10 19:56:32'),
(19, 'Enrique Muller', 'orn.sandrine@example.org', '$2y$10$Q2LIVkxPt7usp0oNoVogSOt5gJ8qH6jPV0sA1q97djw0roMfKkPkW', '+1.605.798.1174', 'admin', 'https://lorempixel.com/400/400/?52204', 0, '2019-05-10 19:56:32', '2019-05-10 19:56:32'),
(20, 'Dr. Ramon Abbott', 'herman.fatima@example.com', '$2y$10$R.U6r6yJfD9TYjMFuWd9je.PMWrqyyEiv1vTGTZ3628AxWYEVXJwO', '+1-534-273-0019', 'admin', 'https://lorempixel.com/400/400/?95312', 0, '2019-05-10 19:56:32', '2019-05-10 19:56:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `companies_user_id_foreign` (`user_id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_product_id_foreign` (`product_id`);

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`),
  ADD KEY `posts_category_id_foreign` (`category_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_post_id_foreign` (`post_id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=296;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `companies`
--
ALTER TABLE `companies`
  ADD CONSTRAINT `companies_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
