-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-01-2018 a las 01:55:12
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `laravel_oauth2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(15, '2014_10_12_000000_create_users_table', 1),
(16, '2014_10_12_100000_create_password_resets_table', 1),
(17, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(18, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(19, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(20, '2016_06_01_000004_create_oauth_clients_table', 1),
(21, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(22, '2018_01_28_231858_create_posts_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0ddbec6fe5829c1b97f9126460035df721648ca7d6d2ef2916a6a67acb1d3939ac4b712cd77b4f8b', 1, 1, NULL, '[]', 0, '2018-01-29 05:10:02', '2018-01-29 05:10:02', '2019-01-29 00:10:02'),
('14206f70c1750098adea6b7e8fa1a36f1af46d87f90d9eb9a14ddcd253267e420c22f1a4e5a9bcfd', 1, 1, NULL, '[]', 0, '2018-01-29 05:26:14', '2018-01-29 05:26:14', '2019-01-29 00:26:14'),
('30e9e1f2e27e0f98fa32ab7592c805b1ba2c90f59392a406e159316e2fd1ab30cab1be36ecf1e4c4', 1, 1, NULL, '[]', 0, '2018-01-29 05:44:23', '2018-01-29 05:44:23', '2019-01-29 00:44:23'),
('3c6b1b9da3bb1f332ced01b0808967e6fd848688037a8a8b2e10e11055cb19593ef4e7326bdd0ea4', 1, 1, NULL, '[]', 0, '2018-01-29 05:40:10', '2018-01-29 05:40:10', '2019-01-29 00:40:10'),
('43f93e94ed9937c4c24fb19e437f958100a591e870a12b1661be284eebc1512a8dbea74ddebed607', 1, 1, NULL, '[]', 0, '2018-01-29 05:27:10', '2018-01-29 05:27:10', '2019-01-29 00:27:10'),
('4908dc35e7488271c198f99ad962896471e28a9610c06eb6fcd2445449695771178bc9351957ec35', 1, 1, NULL, '[]', 0, '2018-01-29 05:12:09', '2018-01-29 05:12:09', '2019-01-29 00:12:09'),
('5a087d230e79fd6de98e4472d2e61d01e22372a8708f8ab93ff82fb1108f70c983e394901ce98fdb', 1, 1, NULL, '[]', 0, '2018-01-29 05:26:16', '2018-01-29 05:26:16', '2019-01-29 00:26:16'),
('5b2f8cfd71257d3c904e74b1a00bfe34e5049c72e68dd43e2e1aaba3e851751577e00a070860b1eb', 1, 1, NULL, '[]', 0, '2018-01-29 05:07:01', '2018-01-29 05:07:01', '2019-01-29 00:07:01'),
('6e488e58ebccad94b4ffe0e0fe88ac1767b8f3f55fccb252e3a9f8fa0bdb405749a52b6c9f7621dc', 1, 1, NULL, '[]', 0, '2018-01-29 05:26:16', '2018-01-29 05:26:16', '2019-01-29 00:26:16'),
('71fcd48689fcaa99693d04447239a35318129eefb9f1044b17228da0e6ce4c40519a1274c072cadf', 1, 1, NULL, '[]', 0, '2018-01-29 05:26:17', '2018-01-29 05:26:17', '2019-01-29 00:26:17'),
('80ee78972a367bc2f596c07333c63846b1cef04eb719196facd80a1031a6859d0ea7c86362902414', 1, 1, NULL, '[]', 0, '2018-01-29 05:26:17', '2018-01-29 05:26:17', '2019-01-29 00:26:17'),
('848d087eb59171749672c5c4dee16a79fcc3725a2b8d66e8d404ce9a883cb7857689589902dab497', 1, 1, NULL, '[]', 0, '2018-01-29 05:26:15', '2018-01-29 05:26:15', '2019-01-29 00:26:15'),
('995a32bee57835351434d5df299837035cc9f53cd1d66ea8ad372ce918fff7aca8138cbef3b26a62', 1, 1, NULL, '[]', 0, '2018-01-29 05:07:47', '2018-01-29 05:07:47', '2019-01-29 00:07:47'),
('b8e2b18a4fcea10fe826867541535450f34ca658f59856287a9158e56b60b34630f1091ae42cd77e', 1, 1, NULL, '[]', 0, '2018-01-29 05:11:18', '2018-01-29 05:11:18', '2019-01-29 00:11:18'),
('c08596e94897e61c6dcefd336d0ddf471c443970b02f01c083e7605ab17234b5332d98af50b1af6c', 1, 1, NULL, '[]', 0, '2018-01-29 05:11:56', '2018-01-29 05:11:56', '2019-01-29 00:11:56'),
('cf2d21740fbbf482b60e696974ee2264edd46fd6fe7aac560410dcd8c29506a5831ee0bb30d69023', 1, 1, NULL, '[]', 0, '2018-01-29 05:26:57', '2018-01-29 05:26:57', '2019-01-29 00:26:57'),
('d2d8f7dac7891d8e490b3000cea1f2747ad9050018b9dde583e8fe5ef4269e672e450b0a0a0c785f', 1, 1, NULL, '[]', 0, '2018-01-29 05:27:49', '2018-01-29 05:27:49', '2019-01-29 00:27:49'),
('db0cded47f772bbfce8e3e6fdfd6ace61b36949fcca8868735e6b14c2870611465f6f516abc60b8f', 1, 1, NULL, '[]', 0, '2018-01-29 05:25:37', '2018-01-29 05:25:37', '2019-01-29 00:25:37'),
('f547e968bf6a11352e687c7464044348c8e224aa9bbb428147b64bbc52406e5a9c4f4b76d94cef60', 1, 1, NULL, '[]', 0, '2018-01-29 05:26:15', '2018-01-29 05:26:15', '2019-01-29 00:26:15'),
('faa274d9187202d5bbbe89c4918df240839aa914659362d3d08aff0624382d6f2cfa7d2f04ce0ad1', 1, 1, NULL, '[]', 0, '2018-01-29 05:11:39', '2018-01-29 05:11:39', '2019-01-29 00:11:39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'TestApp', 'BqEGu8pwkTwJ8idItnUXDQ6DSQKJBTZYILGqqqlL', 'http://localhost', 0, 1, 0, '2018-01-29 05:04:23', '2018-01-29 05:04:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('05727e983ff4bcb3ebd52d811f9787d7210e45e9e05ed6ac56fbf27196e9553973826c40fb39644f', '5a087d230e79fd6de98e4472d2e61d01e22372a8708f8ab93ff82fb1108f70c983e394901ce98fdb', 0, '2019-01-29 00:26:16'),
('091bdf018f9919b252379124993fba6b5d384f2c7da2765965e3e91bae944ccbe996fc7355b7aed0', 'db0cded47f772bbfce8e3e6fdfd6ace61b36949fcca8868735e6b14c2870611465f6f516abc60b8f', 0, '2019-01-29 00:25:37'),
('114fb174f8b49f653ef7ca83273ef0ab8f8bb5fe157de954c3e15c49d8b89de921d2d41987688e13', 'f547e968bf6a11352e687c7464044348c8e224aa9bbb428147b64bbc52406e5a9c4f4b76d94cef60', 0, '2019-01-29 00:26:15'),
('1200a988efc31aea77d68934eb5d61249156219f3ce2e1ebc688c3b70fe803c33fffe704d417e23e', '3c6b1b9da3bb1f332ced01b0808967e6fd848688037a8a8b2e10e11055cb19593ef4e7326bdd0ea4', 0, '2019-01-29 00:40:10'),
('2d7e969d9a66cbf4c64618cab5c45a519673a9e0df7872c33f3e2ec16c145062caa260cf8305768b', '14206f70c1750098adea6b7e8fa1a36f1af46d87f90d9eb9a14ddcd253267e420c22f1a4e5a9bcfd', 0, '2019-01-29 00:26:14'),
('31c327146f2dfbcc9bda6ddb90a2e53cc20b55c86c2a417c14d9be735e5539a817acc09cdc0a86bd', '848d087eb59171749672c5c4dee16a79fcc3725a2b8d66e8d404ce9a883cb7857689589902dab497', 0, '2019-01-29 00:26:15'),
('342782bfe058f35eb82609e50fd993c9a764be18930506449cdf3273459fe59e8f178eb8483e994e', 'cf2d21740fbbf482b60e696974ee2264edd46fd6fe7aac560410dcd8c29506a5831ee0bb30d69023', 0, '2019-01-29 00:26:57'),
('3a78306f544daf0bec663c0d3b127776ecb2d13dc31413266179d9fed537024c74e98d48d192cf14', 'd2d8f7dac7891d8e490b3000cea1f2747ad9050018b9dde583e8fe5ef4269e672e450b0a0a0c785f', 0, '2019-01-29 00:27:49'),
('40bae1c5ae3298c6f8ac82b16ece34c829cfd2f587c0f5114cd06c5867abbfec2b5f599e5869f9f2', '71fcd48689fcaa99693d04447239a35318129eefb9f1044b17228da0e6ce4c40519a1274c072cadf', 0, '2019-01-29 00:26:18'),
('46a078636c43f4b76d4468c71c765143b545744bfbfb0a4b36d770fa82c24efccfb692145d3312d9', '30e9e1f2e27e0f98fa32ab7592c805b1ba2c90f59392a406e159316e2fd1ab30cab1be36ecf1e4c4', 0, '2019-01-29 00:44:24'),
('534631cc5e9b1ca8922f7b6533605076fd247864aac3d0cf2555523b98bd148bcfbbd7791cdbda1b', '6e488e58ebccad94b4ffe0e0fe88ac1767b8f3f55fccb252e3a9f8fa0bdb405749a52b6c9f7621dc', 0, '2019-01-29 00:26:16'),
('7460e0289387be34810750b0a4085685cc65673efdf9098d6be155c3243b6cfa2b990815a1475f60', '0ddbec6fe5829c1b97f9126460035df721648ca7d6d2ef2916a6a67acb1d3939ac4b712cd77b4f8b', 0, '2019-01-29 00:10:02'),
('9ca57c48a07d561ba1d7b245685378c610f35e27cded024d3f57195e4ce5a5200c17d93da8c098b2', '995a32bee57835351434d5df299837035cc9f53cd1d66ea8ad372ce918fff7aca8138cbef3b26a62', 0, '2019-01-29 00:07:47'),
('9e55f7e2fc9b6e17217b2b564d8f95c0c5ec1c046f33fa0ad3cd6c4571be3e70562ad617fd7c0e7c', '43f93e94ed9937c4c24fb19e437f958100a591e870a12b1661be284eebc1512a8dbea74ddebed607', 0, '2019-01-29 00:27:10'),
('a59d210b2808fddfea69438bc597bef4e07d46a6f23b590b2bcf7fc82da8bbe326f301a67a433357', '5b2f8cfd71257d3c904e74b1a00bfe34e5049c72e68dd43e2e1aaba3e851751577e00a070860b1eb', 0, '2019-01-29 00:07:01'),
('ae4472b6f11872a2f4b48622c2ee2393a3e20ddaa01094561b4784b292e3e6300af11b79f8340e10', '80ee78972a367bc2f596c07333c63846b1cef04eb719196facd80a1031a6859d0ea7c86362902414', 0, '2019-01-29 00:26:17'),
('b5174ca3152fc3001c2ef94dc8711da9877eb75470663bfbfd25aa40893434fed22364d8d5de5e98', 'c08596e94897e61c6dcefd336d0ddf471c443970b02f01c083e7605ab17234b5332d98af50b1af6c', 0, '2019-01-29 00:11:56'),
('cd2174df9eb64c7e26a4149a58e9f59c986ad8ba418c0651d6de7de8679ff3cc0d322607c6f14f93', 'b8e2b18a4fcea10fe826867541535450f34ca658f59856287a9158e56b60b34630f1091ae42cd77e', 0, '2019-01-29 00:11:18'),
('ea5f263dfb36d7ce89f4cd7fe0a325f0f7508b0820b642076400599135e4865aaf00623cc3f006dd', 'faa274d9187202d5bbbe89c4918df240839aa914659362d3d08aff0624382d6f2cfa7d2f04ce0ad1', 0, '2019-01-29 00:11:39'),
('ea756b590e6fe769681d5093274b7f893c7e0c7cabcbf337f7cabfb61e7457ab4c768c2e882a741b', '4908dc35e7488271c198f99ad962896471e28a9610c06eb6fcd2445449695771178bc9351957ec35', 0, '2019-01-29 00:12:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `created_at`, `updated_at`) VALUES
(1, 'Mr.', 'Ut voluptatem rem et ut. Dolorem veniam minus aliquid voluptatibus iure accusamus recusandae.', '2018-01-29 04:31:57', '2018-01-29 04:31:57'),
(2, 'Mr.', 'Sunt nulla cum architecto sed necessitatibus eum quis. Nemo omnis quas molestias at amet iste.', '2018-01-29 04:31:57', '2018-01-29 04:31:57'),
(3, 'Dr.', 'Est soluta eum est. Laudantium corrupti autem error eveniet. Magnam velit maxime illum impedit est.', '2018-01-29 04:31:58', '2018-01-29 04:31:58'),
(4, 'Ms.', 'Quaerat id velit reiciendis. Rerum quia qui et et. Quas tenetur quo omnis.', '2018-01-29 04:31:58', '2018-01-29 04:31:58'),
(5, 'Prof.', 'Aut natus ut quasi adipisci aut est sunt. Ea exercitationem est vitae.', '2018-01-29 04:31:58', '2018-01-29 04:31:58'),
(6, 'Dr.', 'Ut et nulla temporibus qui. Inventore est architecto quam aut.', '2018-01-29 04:31:58', '2018-01-29 04:31:58'),
(7, 'Prof.', 'Eos vitae perspiciatis et. Ut porro a error qui reprehenderit neque adipisci.', '2018-01-29 04:31:58', '2018-01-29 04:31:58'),
(8, 'Miss', 'Quisquam sed optio eum eos. Aliquid nobis quo quia consequatur aut rerum eius.', '2018-01-29 04:31:58', '2018-01-29 04:31:58'),
(9, 'Prof.', 'Ut quis perspiciatis et praesentium reprehenderit. Eveniet assumenda est nobis consectetur.', '2018-01-29 04:31:58', '2018-01-29 04:31:58'),
(10, 'Mrs.', 'Iste at ad quasi natus. Corrupti dolorum enim ea. Est et suscipit expedita nihil.', '2018-01-29 04:31:58', '2018-01-29 04:31:58'),
(11, 'Ms.', 'Occaecati quod natus cumque nam voluptas. Porro voluptas quo enim eius. Quidem sit impedit enim.', '2018-01-29 04:31:58', '2018-01-29 04:31:58'),
(12, 'Prof.', 'Aliquid quae consequatur aliquam laudantium non ipsum. Quia voluptates et sit.', '2018-01-29 04:31:58', '2018-01-29 04:31:58'),
(13, 'Dr.', 'Qui aspernatur labore et omnis. Vitae vero sint pariatur quia beatae eum ut.', '2018-01-29 04:31:58', '2018-01-29 04:31:58'),
(14, 'Mr.', 'Vel ut accusamus ut minima ratione animi ipsam. Sed deserunt ut quia non praesentium eos aut.', '2018-01-29 04:31:58', '2018-01-29 04:31:58'),
(15, 'Mr.', 'Deleniti voluptas quibusdam sed optio et velit. Cumque vero aut voluptas cum officia occaecati.', '2018-01-29 04:31:58', '2018-01-29 04:31:58'),
(16, 'Dr.', 'Velit totam minus est. Ipsa rem nihil ut qui nam. Minima facilis similique quas quis.', '2018-01-29 04:31:58', '2018-01-29 04:31:58'),
(17, 'Prof.', 'Dignissimos commodi amet temporibus occaecati eveniet. Qui voluptatum in nisi odio eaque.', '2018-01-29 04:31:58', '2018-01-29 04:31:58'),
(18, 'Prof.', 'Aut aspernatur ea voluptatem velit veniam. Ut quidem beatae veritatis.', '2018-01-29 04:31:58', '2018-01-29 04:31:58'),
(19, 'Prof.', 'Soluta cum cum esse dicta rerum eius. Illo harum culpa qui fugiat.', '2018-01-29 04:31:58', '2018-01-29 04:31:58'),
(20, 'Mr.', 'Minus voluptatem suscipit accusamus voluptatibus. Est animi non rem aut dignissimos aliquam natus.', '2018-01-29 04:31:58', '2018-01-29 04:31:58'),
(21, 'Dr.', 'Ut illum aut aut autem. Cumque explicabo voluptatem quae perspiciatis esse consequuntur.', '2018-01-29 04:31:58', '2018-01-29 04:31:58'),
(22, 'Prof.', 'Iusto rem ut totam inventore. Reprehenderit alias laudantium ut odio est non veniam.', '2018-01-29 04:31:58', '2018-01-29 04:31:58'),
(23, 'Prof.', 'Quod facere eum sed odio quidem doloremque. Iusto accusantium in aut autem. Sunt rem quo magnam.', '2018-01-29 04:31:58', '2018-01-29 04:31:58'),
(24, 'Miss', 'Id tempore distinctio odio voluptas itaque et. Aspernatur aut hic voluptatum tempore.', '2018-01-29 04:31:58', '2018-01-29 04:31:58'),
(25, 'Prof.', 'Quidem veniam molestiae sequi ut quos. Est quis non in.', '2018-01-29 04:31:58', '2018-01-29 04:31:58'),
(26, 'Dr.', 'Eius omnis dolores dolor. Molestiae et voluptates soluta sed. Nulla odit deserunt nam fuga.', '2018-01-29 04:31:58', '2018-01-29 04:31:58'),
(27, 'Mr.', 'Qui et et rerum quia. Ut earum enim vitae quia quo eos non. Iste est ex perspiciatis eum in sit.', '2018-01-29 04:31:58', '2018-01-29 04:31:58'),
(28, 'Mrs.', 'Illo mollitia qui non non. Vitae unde commodi perspiciatis sed tempore.', '2018-01-29 04:31:58', '2018-01-29 04:31:58'),
(29, 'Prof.', 'Libero neque corrupti aut ad. Earum libero et nisi asperiores.', '2018-01-29 04:31:58', '2018-01-29 04:31:58'),
(30, 'Prof.', 'Libero sapiente voluptatibus nihil. Voluptatem ab qui doloremque reiciendis sunt omnis.', '2018-01-29 04:31:58', '2018-01-29 04:31:58'),
(31, 'Mrs.', 'Excepturi ut in totam facere perferendis. Quasi maxime qui dolorem.', '2018-01-29 04:31:58', '2018-01-29 04:31:58'),
(32, 'Dr.', 'Suscipit quo voluptatem aliquam cumque et qui at. Deserunt excepturi non veniam accusamus.', '2018-01-29 04:31:58', '2018-01-29 04:31:58'),
(33, 'Miss', 'Nulla amet similique est recusandae voluptatem sit. Autem a mollitia nesciunt eligendi.', '2018-01-29 04:31:58', '2018-01-29 04:31:58'),
(34, 'Dr.', 'Occaecati labore enim nihil voluptas ut quaerat. Sint sit perspiciatis ducimus quia.', '2018-01-29 04:31:58', '2018-01-29 04:31:58'),
(35, 'Prof.', 'Expedita tenetur accusantium amet in. Et commodi voluptas ea. Est saepe dolore qui maxime repellat.', '2018-01-29 04:31:58', '2018-01-29 04:31:58'),
(36, 'Mrs.', 'Dolorem sit explicabo voluptatum voluptas quam quo. Ex quo et ab enim voluptas.', '2018-01-29 04:31:58', '2018-01-29 04:31:58'),
(37, 'Ms.', 'Quibusdam iste non commodi tempore. Eum velit quisquam culpa aut in rem. Maiores non quia cumque.', '2018-01-29 04:31:58', '2018-01-29 04:31:58'),
(38, 'Mr.', 'Sit labore deserunt ipsum. Ipsam qui provident velit distinctio.', '2018-01-29 04:31:58', '2018-01-29 04:31:58'),
(39, 'Mrs.', 'Nostrum nobis vitae quia ea dolor. Distinctio numquam occaecati consectetur libero.', '2018-01-29 04:31:58', '2018-01-29 04:31:58'),
(40, 'Mrs.', 'Illo sed et similique recusandae quia. Ea distinctio et dolorem qui totam facilis.', '2018-01-29 04:31:58', '2018-01-29 04:31:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'CESAR AURIS SAGA', 'perucaos@gmail.com', '$2y$10$VMk5JiD70v3PzyIjIx4tSuSJBImDES0dk4zHz.VME4/Ux85EuL/tS', NULL, '2018-01-29 05:06:13', '2018-01-29 05:06:13');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indices de la tabla `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indices de la tabla `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indices de la tabla `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT de la tabla `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
