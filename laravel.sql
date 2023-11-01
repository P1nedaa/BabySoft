-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-10-2023 a las 07:10:48
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `laravel`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` bigint(20) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Apellido` varchar(30) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Telefono` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `Nombre`, `Apellido`, `Email`, `Telefono`, `created_at`, `updated_at`) VALUES
(1, 'Andrea', 'Garcia', 'andrea@gmail.com', 3015824752, '2023-07-05 13:53:12', '2023-07-05 13:53:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `idCompra` bigint(20) UNSIGNED NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `idReferencia` bigint(20) NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `Precio` bigint(20) NOT NULL,
  `Fecha` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `compras`
--

INSERT INTO `compras` (`idCompra`, `idUsuario`, `idReferencia`, `Cantidad`, `Precio`, `Fecha`, `created_at`, `updated_at`) VALUES
(1, 1, 1010, 15, 150000, '2023-07-05', '2023-07-05 13:52:55', '2023-07-05 13:52:55'),
(3, 1, 1010, 20, 270000, '2023-07-05', '2023-07-06 01:20:09', '2023-07-06 01:20:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_05_02_021810_clientes', 1),
(7, '2023_05_03_030907_create_permission_tables', 1),
(8, '2023_05_31_023053_proveedores', 1),
(9, '2023_05_31_023710_productos', 1),
(10, '2023_05_31_023723_compras', 1),
(11, '2023_05_31_023743_ventas', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `guard_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'modulo.dashboard', 'web', '2023-07-05 13:48:00', '2023-07-05 13:48:00'),
(2, 'modulo.configuracion', 'web', '2023-07-05 13:48:01', '2023-07-05 13:48:01'),
(3, 'modulo.proveedores', 'web', '2023-07-05 13:48:01', '2023-07-05 13:48:01'),
(4, 'modulo.productos', 'web', '2023-07-05 13:48:01', '2023-07-05 13:48:01'),
(5, 'modulo.compras', 'web', '2023-07-05 13:48:01', '2023-07-05 13:48:01'),
(6, 'modulo.ventas', 'web', '2023-07-05 13:48:01', '2023-07-05 13:48:01'),
(7, 'modulo.clientes', 'web', '2023-07-05 13:48:01', '2023-07-05 13:48:01'),
(8, 'eliminar.clientes', 'web', '2023-07-05 13:48:02', '2023-07-05 13:48:02'),
(9, 'eliminar.ventas', 'web', '2023-07-05 13:48:02', '2023-07-05 13:48:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `idReferencia` bigint(20) NOT NULL,
  `idProveedor` bigint(20) NOT NULL,
  `nombreProducto` varchar(30) NOT NULL,
  `Talla` varchar(20) NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `Categoria` varchar(30) NOT NULL,
  `Foto` blob DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`idReferencia`, `idProveedor`, `nombreProducto`, `Talla`, `Cantidad`, `Categoria`, `Foto`, `created_at`, `updated_at`) VALUES
(1010, 1, 'Pijama Millos', '3-6 meses', 40, 'Pijamas', 0xffd8ffe000104a46494600010100000100010000ffdb00840009060713131215101310151515161715151615161515151618171718161617171515181d2820181d251d151621322126292b2e2e2e18203338332d38282d2e2b010a0a0a0e0d0e1b10101a2d2520262f2d2d2f2d2d2d2f2d2d2f2d2d2d2d2d2b2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2dffc000110800c600fe03012200021101031101ffc4001c0001000007010000000000000000000000000102040506070803ffc400461000020201020207030806080505000000010200031104211231050607224151611371811423325291a1b1c11542728292d1243362a2b2b3f0f135438393c2256374a3d2ffc4001b01010002030101000000000000000000000003050204060107ffc40035110002010203060405030305000000000000010203110412210531415161b13271c1f0138191a1d12233f11472e12342526292ffda000c03010002110311003f00de311100444401111004444011110044c2bae9da0d1a06f65c06ebb878b81582aaf97b4739e1277d8027037c646756f4b769fd23713c172d2a49c2d48bb0f01c6e0b13ea31ee9bb87d9f5eb2cc959737eeff006239d58c746743192576ab7d1607dc41fc272bf4974d6a6ffebf5375a3eabd8c57e099c7dd2d2cf654dc753b203cf818a6ff00ba44dc7b1e6a3773fa2bfadfec46b109bdc760647291cce4fa3ad3ae4538d7ea40e781a8b7ff00d4da63aa3d25903f4f5b9201e7a8f2ce36b7135eaecff856cf512bf497a2666aadf72ec6dd2651f48f49d3a74f697dd5d49f5ac7541ee058ee6688eb774c749f47dc34dfa55ede2a96ce2c631c4d62f0e5b88e7b99ce7c6605a9d55b7d9ed6fb5ed6fad63339f7658f2f49252d952a894b3ab3e49faa478eb247415bdace805ab5a9b5d0b70b5c1386b5f5ef6188f5031339d36a12c50f5baba9dc3290ca7dc46c6726d3a82b9c63752a76cec79f3e465dfab1d64d5692cce9eef660eecadfd53fed290403ea37f59b35b63c72ff00a52d7af1fc7bd48a388d7f523a862617d42ebdd5af5f66d84d42805abce38878b203be078f96d334949384a9c9c64acd1b49a6ae84444c0f4444401111004444011110044440111100444401111004c23b4ceb78d151ec909f6f72b04239d6391b4f9633b799f71992f4f74aa6974f66a6cfa35a96c67058feaa8f52703e339afacfd3366aef7d4da7bcfc973b2a8fa28be807da727c6596cdc1fc7a99a5e15bfabe5f9e8415eae4565bca2b1f8bbc492db9249c939e6493cce7c64893c69bbbc17cf69ee7633ac56657b562a74fa2b1d2cb16b664ac29b180c840d90a5b1c81c1df96d28dd73336ea2f4a2e8d3536da2c0ac9570a856f9cef1070718c04763b900e47c319e96d5a5b73da94ad2ac722a53955d80c03f7f2037d801b48615272a928e5fd2ad6973d136bcd6beba9eb49453bebc8b3be976d8f3f399baf5fad23bda3a49f346e0f5faa48dc0f1de628046279570d4eaf8d1eaaad151d3fd22fabb45aea178516b0aa4b7754b11b9fda328529f01f64f62254f46370dd530dc8b10819c726079cce34a308da2b718ba8e4ca354c7bc73fcc18d89c4d81da7eb746f6108a1b541c8b2d4e154014052af8d9db2339f0f3f018057cc4f30f51d5a6a6e2e37e0cf669464d5ee5669754d5b87a9ca5887895d4e0ab7a7a636f5137cf67fd724d75215d9575283e72b070580c0f6880fea9c8ce338271e59e74a6eef997beaff4bbe92faf535eec873c39386072194fbc13eee73531f828e269dd7896efc7bdc494aaba72d771d43250472945d0fd229a8a2bd457f46c50c3cc67983ea0e41f512be722d5b42c84444011110044440111100444401111004444011131febb74d8d1e8edbf387c7055eb63ecbb78e376f7299942129c9463bde878da4aecd79daff5996d71a1ace56a6e2b181d8d8015e01fb3c473ebb7819aaef1bca9b6c2c4927249c9277249e64cf0bd769db6130f1c3d254d7f2caa9d47395d94356f68f8fe06579128f469df66f218fb7fd8cadcc9217d7cc54de9742f9575b758a8958bbba8a100e04fa0a000bcb96c37e7eb3cb5fd63d45c8f5bb8e07c6542281b10c00db23047df2d02246b0b453cca0afcecbcf9733175276b5d91888939190976e81e995d397e2d3d7771f08efe0f085273c390704838ccb4cc8fab95d2c856c44e6077d8a86ef0c9e2db929d9723241dcec0c7592c8f32baf7cbf2670bdf43d1fae1e2ba1d32b0c60fb3f01b636209e43c7cfc0e263baed51b6c6b58282e7888518507d073fb493e799b2743d5f5d4d82aa6aaf803bf7c77955011eccf1783919257c36c805b0703eb3aa0d4daa8a55558aefccf0edc4478138ce26b61a5473b508d9db5e8afa5f5defd3c89679edabd0b0bae1cfaeff03fe8ca9acc92efd53ef1f98fce7a89b8958c24ee6caec97ad469b4686c23d95a73593fab69c0e1f456c7f17ed19baa728a1337e766dd66f966982d8e0df5775f3f49976e1b31ebc89f30673bb6307965f1a2b47bfcf9fcfbf99b785ab75919994444a33704444011110044440111100444401111004d2fdb2f4e8b6eaf488d95a72d66397b56d80cf9aae7f8fd26caeb874d8d1e92dbf3de0386b1e26c6d9063dfb9f404ce70bce4e4924939249c924ee492799f5975b1b0d9e6eb3dd1dde76f4f53531552d1cbcc909f39e3734a9233e12975470274c68a5a926946cc7cdbf2ff0079ec278e87e87c4fe33dc4c23b8ca7e2642462466447721048991f56ba0eb75f946a33ecb88a57583c2d632e0b77b9ad6b900b0dc93818dc8cb68d7ba652ae1a6bf04a54563e247798fab12655e2f6b52a13c89666b7eb64be7aebd2c5b60b6357c547e25d463c1bbebe46b006655d57d1d571457bd2a51b3b390bcb7dbf9f9e7ce646f49d4b2d5654b69621417078c71103bb68efaf9f3c7983313ebaf555fa3ef084f156f96aace4481cc37930c8cfbc1f19ee1b68c317fa23784be4fe8fa6fed723c6ecea98292ced493e57fbfbd4db5a9b29d3a20d3eb28a6bf667849756f684e4f16de451403fdbb3c669febceae9b75b75b4638188391c8b60648f8cb3b5cc460b1fb7ce78664b85c0aa12cd9aef76e4baebc5bd38b352a56cead6b10bfe813e441fbff913235f2cc5a99460064e0e07af8487b1b2b6355a8c9621c3230c329f507edf8cdbce94f2f4b985bf4dcf7597eea67583e45ab4bc825374b1473646e781e241e16fdd98f567ce7a64454a71a907096e7a18c5b8bba3a8fa37a46abeb5ba970e8dc987e1e87d2564d3fd8f758f81db42e7bb61e3a89e41f1965f40c0647a83e73704e2f1587742aba6fe5d516d4e6a71b88889ae66222200888802222008888022250f4bea45745d6b1c04addcef8d9549e7f080696ed57acbf2ad47b1ace6aa0b28c727b393b7a818e11ee6f39841064c9c872d878ff3f0fbe447bb84ff00ae5e73b9a1423429aa71e1eee53ce4e6f312aa9979ea87559f5faa4ac022a42af7bf202bcfd107eb3e081f13e12d7452d63254832eecb5a2f9b310147da44e8aea7f575343a65a170cc7bd6d98c71d840c9f41b0007800269ed4c6fc0a7963e296ee8b8bf3e5f5e04f87a79a577b91a67b54a69af5cd5528a8a95d2a55005552176000d8774a4c44097fed02ce3e92d59073f3a47c542a63e0548f84c7ccdac1c72e1e0bfeabb1155779b20b263255934d9444cd81aaa38569ab90aa8a80f2cb20b1dbe2f6399eba020ec71b4f1d2a1d469eab94a801169b19dd1151ea013bcce40194557f5c9f2972e85d4f46e90fb4bf542fb06e129477ac7bdf1c2e7e207a1e73859e1eb4ab4d28b6eeefa753bea78fc351c1d3bc978568b7dedaf96bc5999753fa1384fca1c6e47cd83e00f37f88d87a13e731aed6af4b45d48dda9aa8bbf658ddec8afc52f04feec74c76ad952ba5a0a93b7b4b48c8f515ae41f89f81985eb6e61a4baeb18b59abb16b524f7996b716dae7d38d6a5f7e4784b6c0e02a539aa9515b5565c6f7f449be76396c6633e3c9b7af64b918ac8083189d19568887e1dfcb7f3e5e9e337a7687d445d7a7ca29e15d52ae031d96d5e615fc8f9378723b72d17c19047a19d47d0ba8f69a7a6d231c7556f8e78e240719f8ca3db15274a54aa41d9abfa1b98549a927d0e5cbe97adcd762323a12acac30411cc1121c426daedabab1c4abd235af79315dc078a1d91cfaa93c27d187d59a8944b2c1e29622929adfb9aebef710d5a792562b34b6104306208390412082391046e0face87ea475806b74ab61feb57e6ee1cb0e07d2c7930c30f7e3c0ce6fe3c78ff0029b5bb12e9201eed31c77d56d5f0dd7bae3d76653f0334b6c5053a3f138c7b324c34ad3cbccdbb1113972c044440111100444401111004d6bdb2f4d5b550ba644609767dadb8eef08c62a0de6c4fd831be4e3654f37ac302ac0107982320fbc192d0a8a9d4536af6e06338e64d1caa99f038f480fe537cf4d7669a0d412e11a863e3490abff6d8151eb8033305e95ecab575b9f60d5dd59d81cf058b9facaddd207986dfca751476be1a7e2795f5ddf5ff00057cb0d38eed4be7641d584e0fd216ae5cb32d19e4a8070b381f589e35cf801b733369cb7f41f468d369e9d329c8aab4af3e7c2002c7d49c9f8cafcce63135dd6ab2a8f8fd9704585382845451cbdd6960759aa3e7a9d4ff009d64b59951afb4bd8f61dcbbbb13eacc589fbe5389db524d4229f04bb1532d5b2712300484912b91b2e1d19d246a2ca516cadc01654c480e06e08237475c92ac37193cc120d70d2e99f7af5a2bfec6a2bb030ffa94abab7bf0bee12fdae5ae85353dba73a71a74f99083db1b9f4eacadf43883fb570fed38b0176feccb8aeaf457d95d2056f559769d2aa78d7281aeaf3f36ba656af09c6a7361e2e2e6c70c2b2789bb538c6567c56ee1bd4a36bdb970d3335bb6d52b68daf7f3318aebd1d3deb353f2823fe550b62a93e4d75aabc2bfb2ac7cb12dbd37aab6e2ba8b1386b606ba428e1ad52bc772b1e4bc43de5b277332dd3f48a06536ea34b7d82c069207b34aebe0b43f1b0a87b3078abe1420f0b28381839b375cb514b2d62ab45ac2db8b36dc44357a7c6582a860196c507033c24e066494aa3755269f9bddf25963f56aeedc6d7319c5657dbdb7f231789190c4de20b132ce94ea459c5d1fa439cff47a41f7aa053f78339a94ce85ecb189e8ca33e1ed47c05d66252edc8de9465c9f75fe0dbc2789ae8647d21a34bab7a6c5e24b1591c79ab02a467c36339abaddd00da1d53e9dd81000746fad5b13c248f03b107d419d3f316eb975268e903535aee8d5f100c9c392ad8c83c408e601e5e7e72ab67633fa6a9fabc2f7fa3366b53ceba9cdc5f0324e07de4f901e3364765bd53d63df56b590e9e9adb894be78ecd882ab59030a4120b1f3db3e1b33a0fa8da0d230b2ad32fb45e56b936580e3190cc4f0feee264d36717b5dd48b853564f9ef30a78751d5ef1111298d911110044440111100444401111004444013c752d84623985247c019ed287a65b145c7caab0ff74c5afa0395c9c81ee1f84288c49944fa03de5311123113c3022ec49c9249f33bf2d8482b6371b11b823f29293060f498190690260183db0064711198322226f1ec635a5f44f51ff9569e1fd9701ffc45e68e136f7620fb6a87ad3f018b77fb6566d78a9619be4d3f4f526c37ee1b5222272659088880222200888802222008888022220088880222200968eb65dc1a1d53fd5d3de7ecada5de63bda15bc3d1bab3e7532ff1e13ff299d3579a5d51e49d9339b5a0499c49677a530cc66438a38a787a0893a282a5b20631b13b9cf90f192dda81c03b832b9c91cd893b0e5eef3f84b75ce73deb1813faa9e1ef984a76d12f7f3338c2e56e644994da2b029cb7ce2ef8dca9e5c8e3919ec8769ec25757128d8f6569004cf2067a566657313dab18193367f61b6fceea47835687f8588ffc8cd56cd9da6cbec497fa55873b7c9c823fea558fcfed9a3b4d5f093f97744b43f717be0cdd511138e2cc444401111004444011110044440111100444401111004c3fb58ff85ea3df47f9f54cc260fdb03e3a35c7d6b6807fee2b7e2049f0bfbf0fee5dd1854f0bf2341b349498224009dca2a409385fca04f55d3b30240242e49c0ce06fb9f2f1fb0cf1832aecefa95f2fb0bd848d3d4471e0e1ac720e11587d1c6c49e78231cf2374e97aaba2aebf649a3a02631835ab139d8966604b1f52732d7d9668857d1b4918cd85ed638e6598819f3ee851f09984e3b1f899d6ad257d13b25e5eee59d1a6a304692ebef6569a7adf57a22dc080bdb4392d845dd9aa63b9c0ce54e76ce0f81d6804eb4b6b0ca55864104107c41d889ca9d25a1355d75383f32f621f3c2394c9fb33f7cb6d8f8a95452a7377b6abcbf9ee418985acd146c64f599e4ed0a65d1aa54a0f199ef647d242bd70ab38f6d5b56bb67bebc368cfbd6b71ef22606a479cc83a8cfc3d21a46ffde41fc4787f06335f19152c3cd3e4feda995376a91f33a4e2227125a888880222200888802222008888022220088880222200985f6bc99e8cb4f93e9cff00f720fce66930aed78ffe9968f3b34ffe721fca4f85fdf87f747b9854f03f239f24448912189dc1547a01274b5802031008df7c038f3fb4fdb25f29eda2d3fb474af971b2267cb8885fce78da8abbe1a9e1d2dd57d38af47a6ad4602d350fee0cfdf2ed3ce940aa140c003007a0d84f49c0defab2e6d6139afb4ed0353d25a8079587da8f0c8b0648f5dc1fb274a4d35dbc74681669b5639b06a5bd787be9fe27fba596c9a997129734d7afa10d75781a9b1ca7aae312561265ae7585711065f3aa9695d6699b193f28d30c7a1bab07f1967f67eb2edd535fe99a51ccfca74df75f5991d6d694bc9f667b0f12f33a7448c957949a70a5b088880222200888802222008888022220088880222200981f6cb9fd1a4838c5b4e796fdec63ed20fc267930ded67406de8cb88e75705df043defee9693e15a55e0df35dcc66af1673e309283bc9b079138f889322ff00ac4edca9228b2e3d175066aeb1c42c6b6b5523181c4ca01f7e4fdc252d7f1fbbf9cbb7546af69afd2a2eff003f531e78c23076f0f25330aced4e52e49f6b88ead23a5048c44e10b8135ff6d3a556e8ef6a57269baa71fbc7d9907d087c4d81316ed2ba31f51d1d7d558cb009605c64b7b375b0a8f5214c9f0d251af09376b35dcc66af168e6fbad0cccd80b939c0e43dd26a47899206f10a3f1fbe478bfb3f7e3f29db2562ad9333f94c87a96b8d6e9479ea28ff0031658aa51e47ee3fca65dd9ce8c59afd30c13872e723ea2b3839f0ef2afdd23c44ad466dff00c5f6621ac92ea8e8402462270c5b088880222200888802222008888022220088880222200949d29a317536d0dcacadeb3ee752a7f1957100e52d7d0d558f538c356cc8c396ea4a9fc278a3997fed1d31d27aa18e7603f6a29ccc73880f100f91207e73baa151d4a719bded27f54995328da4d23d0d846f32becbbfe2ba6e4466df81f636e0fbf6987d9727d65fbff94cc3b29a9dfa4b4aca38953db31651b0535d8b963e5c440f79916364bfa79abf07d999528bce9f53a2224048ce28b41257e47dd26880722042103636e59f5c72843320bfa93d23c4e3e4579019b9212373bf0ef83ef1299bab1ad4383a1d567ff8f69ff0a99db471549ffbd7fe97e4ac74e5c9fd0a151e026d5ec4345f39a9b4feaad683cfbc598ff8166b8fd177afd2d35ebead4daa3ed65136b762141f61a8b7070f62056fd560aa7254f8eec7713536a558bc2cb2b4ef65a799961e2fe22ba3674444e50b111110044440111100444401111004444011110044440111100b56a7abfa4b199acd250ecff4d9ea462db637246fb002792f55342318d06946361f3156dfdd888ccf99e248ada7a274ebf434f52fecd683f012a9500d8003ddb44458f49e22200888804311888804640444023111004444011110044440111100ffd9, '2023-07-05 13:52:30', '2023-07-05 13:52:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `idProveedor` bigint(20) NOT NULL,
  `Cedula` bigint(20) NOT NULL,
  `NombreProveedor` varchar(30) NOT NULL,
  `Correo` varchar(30) NOT NULL,
  `Telefono` bigint(20) NOT NULL,
  `Fecha` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`idProveedor`, `Cedula`, `NombreProveedor`, `Correo`, `Telefono`, `Fecha`, `created_at`, `updated_at`) VALUES
(1, 1075247842, 'Don Pacho', 'pacho@gmail.com', 3207516655, '2023-07-05', '2023-07-05 13:51:55', '2023-07-05 13:51:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `guard_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2023-07-05 13:48:00', '2023-07-05 13:48:00'),
(2, 'Empleado', 'web', '2023-07-05 13:48:00', '2023-07-05 13:48:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `IdConfiguracion` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`IdConfiguracion`, `permission_id`, `role_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 1),
(4, 3, 1),
(5, 4, 1),
(6, 5, 1),
(7, 6, 1),
(8, 6, 2),
(9, 7, 1),
(10, 7, 2),
(11, 8, 1),
(12, 9, 1),
(15, 2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$Ea5EVBpB3oIwPWTYoVhoZ.g65iDVaZ4sz2tzVrCfAY89wsAVUfpDC', NULL, '2023-07-05 13:48:02', '2023-07-05 13:48:02'),
(3, 'Alexis Garría Trujillo', 'garcialex380@gmail.com', NULL, '$2y$10$Njh0o2nza.VLdt5lEe9iKu1snwcJcpvEhpOnEXGkRnQ3YEXc1MRAO', NULL, '2023-07-06 01:15:41', '2023-07-06 01:15:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `idVenta` bigint(20) UNSIGNED NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `idCliente` bigint(20) NOT NULL,
  `idReferencia` bigint(20) NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `Precio` bigint(20) NOT NULL,
  `ValorTotal` bigint(20) NOT NULL,
  `Fecha` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`idVenta`, `idUsuario`, `idCliente`, `idReferencia`, `Cantidad`, `Precio`, `ValorTotal`, `Fecha`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1010, 2, 12000, 24000, '2023-07-05', '2023-07-05 13:53:37', '2023-07-05 13:53:37');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`idCompra`),
  ADD KEY `idReferencia` (`idReferencia`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`idReferencia`),
  ADD KEY `idProveedor` (`idProveedor`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`idProveedor`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`IdConfiguracion`),
  ADD KEY `role_has_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`idVenta`),
  ADD KEY `idReferencia` (`idReferencia`),
  ADD KEY `idCliente` (`idCliente`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `idCompra` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `idReferencia` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1314;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `idProveedor` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  MODIFY `IdConfiguracion` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `idVenta` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `compras`
--
ALTER TABLE `compras`
  ADD CONSTRAINT `compras_ibfk_1` FOREIGN KEY (`idReferencia`) REFERENCES `productos` (`idReferencia`);

--
-- Filtros para la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`idProveedor`) REFERENCES `proveedores` (`idProveedor`);

--
-- Filtros para la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`idReferencia`) REFERENCES `productos` (`idReferencia`),
  ADD CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`idCliente`) REFERENCES `clientes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
