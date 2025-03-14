-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 14, 2025 at 03:41 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tasklist`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2023_03_28_162430_create_tasks_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `long_description` text DEFAULT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `title`, `description`, `long_description`, `completed`, `created_at`, `updated_at`) VALUES
(1, 'Temporibus est impedit nam ea voluptatem.', 'Tenetur enim debitis pariatur ducimus corrupti qui. Voluptatum tempore vel odit rerum. Minus eius est tenetur explicabo facere aliquam. Dolores facilis eius odio tenetur explicabo veritatis.', 'Consequatur rerum quae id eos ut deserunt ut sequi. Eum doloribus cum quia tempore ea nobis delectus consequatur. Ut repellendus pariatur praesentium id velit. Molestiae sint suscipit incidunt nobis cumque tempore. Quam fugiat consectetur explicabo sit aliquid dignissimos eaque. Natus velit aut iusto. Recusandae vitae suscipit amet saepe aut. Temporibus aut labore voluptatem rerum nostrum ut eligendi aut.', 1, '2025-03-14 13:39:22', '2025-03-14 13:39:22'),
(2, 'Perspiciatis voluptate dicta ullam quo et.', 'Et voluptatibus quidem temporibus quia nobis. Vel autem illo rerum est eaque nihil est. Consequatur quia qui modi. Porro laudantium porro hic facere et.', 'Sapiente deserunt dolorem quas quia est qui eligendi. Est sed temporibus et quia et ex rerum. Culpa consequuntur sint temporibus eveniet error nihil. Dolorum minima enim quia facilis rerum. Minima alias maxime voluptatem est omnis assumenda laudantium. Qui saepe alias non magnam atque delectus. Ipsam eos ut quae labore optio a neque.', 0, '2025-03-14 13:39:22', '2025-03-14 13:39:22'),
(3, 'Temporibus in mollitia fuga itaque velit consequatur soluta et.', 'Delectus exercitationem aliquid et fugit est voluptatum mollitia. Ratione beatae dolore modi qui nihil perferendis aliquam. Veniam adipisci reprehenderit aliquid accusantium eaque est numquam. Aut temporibus est et sit et nostrum totam.', 'Est et et sit asperiores enim ratione. Temporibus deserunt reprehenderit perspiciatis repellat impedit ullam. Et quo aut modi ut quae sit voluptatem. Repudiandae dolor cum sint consequuntur. Expedita non non velit eaque nisi ut. Molestiae blanditiis corporis ex.', 1, '2025-03-14 13:39:22', '2025-03-14 13:39:22'),
(4, 'Nobis optio iure rerum molestias quod dicta.', 'Qui quia iusto odit voluptates. Nostrum quia quisquam eos dolores ipsum. Earum vel possimus et iusto quas aliquam reiciendis. Eos magnam voluptatem excepturi quasi consequatur ex. Repellat sit animi veniam ab reiciendis quis.', 'Iusto ipsum natus laboriosam non. Quia expedita quas perferendis ipsum odit iusto occaecati aspernatur. Quas ratione qui ipsum. Autem fugiat nisi quia modi deserunt porro necessitatibus rerum. At perferendis provident quo voluptatem et culpa. Occaecati et dolorem natus dolorem aut voluptatem laudantium.', 0, '2025-03-14 13:39:22', '2025-03-14 13:39:22'),
(5, 'Consequatur veritatis dicta molestiae facilis laudantium ab molestias eveniet.', 'Eos deleniti quidem expedita aut et nulla. Neque aspernatur et vel sunt. Qui deleniti esse facilis et molestiae voluptatem qui. Ut fuga non amet sit ducimus.', 'Et qui beatae est officiis voluptatum. Quis a enim fuga possimus a. Qui expedita quasi tenetur labore consequatur tempora. Dolor eaque aut expedita eos culpa recusandae omnis. Odit dolor ut sunt. Debitis consequuntur amet aut ut libero omnis quis. Nam omnis error autem amet molestias explicabo doloremque. Aperiam a voluptatem in accusamus non.', 0, '2025-03-14 13:39:22', '2025-03-14 13:39:22'),
(6, 'Reprehenderit quae sequi qui.', 'Commodi est nihil officia mollitia quam repellat. Ut vel doloremque animi debitis voluptas beatae necessitatibus est. Animi et aut magni sint dolores quia voluptatibus. Est libero sed ipsum molestiae aliquam voluptatem.', 'Qui ullam sed et repellat. Fuga et quia qui optio omnis perferendis laborum. Nobis explicabo ut repellat tempora assumenda recusandae. Delectus enim incidunt nam fugit. Quibusdam sapiente aliquam reprehenderit iure deserunt doloribus. Tempore earum et culpa perferendis quas dolores. Aliquam sunt voluptas quis. Quis corporis qui quo saepe. Ipsam id ipsam deserunt a. Vel ea impedit exercitationem ut maxime.', 1, '2025-03-14 13:39:22', '2025-03-14 13:39:22'),
(7, 'Quia fugiat perspiciatis dignissimos dolorem error ducimus.', 'Accusantium optio rem sit consectetur sequi. Accusamus sint non beatae unde sunt sit qui ut. Quo dolores ut natus officiis dignissimos id incidunt eveniet. Qui nesciunt ut distinctio voluptate dolorem sed repudiandae.', 'Qui ut ex eligendi iste officiis est sit. Et et deleniti nisi et sed aspernatur. Ipsam libero esse illum repellendus impedit pariatur aspernatur iure. Nisi sunt est eaque laboriosam vel voluptatem. Accusamus nisi autem sunt laboriosam et. Saepe et quam consequatur ab. Sit autem facere commodi aut necessitatibus fugit. Soluta nesciunt fugit minima minus quasi ut nisi. Debitis optio tempore iusto magni. Eos molestiae ullam laudantium voluptatibus quidem eos officia.', 0, '2025-03-14 13:39:22', '2025-03-14 13:39:22'),
(8, 'Quis aperiam sed doloremque sunt a.', 'Ut necessitatibus repudiandae quis facilis in autem nihil. Tempora voluptatum et tempora impedit nihil. Repellendus inventore occaecati est voluptas quibusdam vitae quidem libero.', 'Fugiat autem ducimus ex dolorem atque. Accusamus aspernatur dolorem non provident consequatur sequi vel sit. Est animi excepturi maiores. Quasi voluptatum consequatur vero. Ea modi laudantium consequuntur odit eaque odit numquam. Iusto pariatur laboriosam voluptas. Aut dolorem aut incidunt vitae laborum atque. Aut atque labore ab illo.', 0, '2025-03-14 13:39:22', '2025-03-14 13:39:22'),
(9, 'Sunt natus qui aliquam natus aut atque.', 'Recusandae praesentium molestiae aliquam quia qui consequatur. Sed praesentium temporibus vel explicabo. Sit maxime qui dolores ipsum dolores repudiandae eos voluptas. Sunt reprehenderit debitis placeat voluptatibus voluptatem et saepe.', 'Error eveniet laboriosam rerum delectus laboriosam. Accusantium qui accusantium voluptatem. Sapiente et quisquam totam aliquam. Deserunt hic quia exercitationem corrupti minus. Molestiae error ut quo beatae nobis ipsam distinctio. Cum doloribus odio enim maxime est ut. Quidem aperiam vel minus fugiat et eius enim.', 0, '2025-03-14 13:39:22', '2025-03-14 13:39:22'),
(10, 'Repellendus qui esse culpa.', 'Quasi tempore eaque et aut laudantium quasi aperiam consectetur. Non error dolor voluptatem tempora eos. Eius aut voluptas quae occaecati laboriosam eligendi molestiae. Consequatur necessitatibus eligendi tenetur iusto modi molestiae et.', 'Autem dolores molestiae aut pariatur quod. Quia deserunt rerum et doloribus. Tempora aperiam quis reprehenderit nihil earum mollitia. Est quia numquam quibusdam aperiam. Dolore sit non accusantium eaque consectetur non. Ut nulla voluptatem rerum et quam consequatur molestiae enim.', 1, '2025-03-14 13:39:22', '2025-03-14 13:39:22'),
(11, 'Distinctio qui architecto earum aut eum minus.', 'Et cupiditate molestiae asperiores earum sit hic. Ratione aliquid est quaerat ipsa in non et voluptas. Suscipit maxime commodi sed beatae sapiente eveniet quis ut. Architecto aut accusamus quia nesciunt facilis qui error debitis. Repellendus qui et occaecati et deserunt assumenda.', 'Eveniet eum eaque ut dolorem. Saepe harum velit ratione modi quia nemo. Mollitia eos cum cum omnis consequatur facilis dolorum molestiae. Est dolor voluptatem est repellat in. Recusandae quae omnis explicabo tempora. Qui adipisci at possimus expedita dolores similique. Possimus iusto delectus quia accusamus animi ut rerum sapiente. Maxime ducimus aut eveniet unde iure sed omnis. Dolorem similique minima ipsum.', 1, '2025-03-14 13:39:22', '2025-03-14 13:39:22'),
(12, 'Culpa id minus ut est.', 'Dolore id modi qui ratione est corporis. Voluptatem maiores alias voluptas cumque libero. Error et pariatur at architecto.', 'Natus voluptas maxime sed esse. Magnam iusto dignissimos quis molestias mollitia dolorem. Dolor dolor tempore aut est accusantium et impedit. Et officiis recusandae amet nam doloremque aspernatur. Quia accusamus similique qui ut eligendi. Recusandae quis dolor et esse. Dolorem similique voluptas tenetur porro dicta sit quia. Voluptatem fugit commodi autem fugit repudiandae.', 1, '2025-03-14 13:39:22', '2025-03-14 13:39:22'),
(13, 'Ut placeat molestiae quae quo rerum et.', 'Iure harum quidem labore quaerat et vitae. Enim ex explicabo laudantium dolores. Placeat voluptatibus beatae at repudiandae sit aut cupiditate.', 'Sunt ipsa velit adipisci rerum nihil quam dolore. Voluptates dolorum consectetur perspiciatis explicabo et qui possimus. Inventore eum labore quidem et tempora voluptas repellat veritatis. At autem odio eos exercitationem ducimus illum voluptatibus. Sint magnam recusandae ut consequatur. Quis nostrum quia et adipisci similique eum reprehenderit. Cum consequatur est sed eos sunt et. Omnis quo quia ea excepturi natus.', 0, '2025-03-14 13:39:22', '2025-03-14 13:39:22'),
(14, 'Provident est omnis optio sed.', 'Sint enim tempora consequatur iure. Qui doloribus laudantium asperiores quae velit provident. Sit earum ut molestiae.', 'Culpa modi quod consequatur aut odit soluta. Suscipit ex vel ex nulla et sunt non. Ipsum non consectetur est quidem excepturi. Nisi architecto animi illum amet eaque ipsam aut. Est id quidem dolore at.', 0, '2025-03-14 13:39:22', '2025-03-14 13:39:22'),
(15, 'Et perferendis dolorem vero fugit doloremque.', 'Accusamus consequatur quo laborum ad. Molestiae occaecati et magnam ut corrupti ut dicta. Aut saepe soluta illum numquam nam. Quisquam est quod velit ipsa dolores beatae omnis.', 'Perspiciatis quam sint est. Ea neque sunt aspernatur iusto et consequatur officiis. Pariatur esse delectus vel eveniet porro. Doloremque et alias eveniet accusantium quam qui non. Ut et nobis voluptates ipsum iusto consectetur impedit facilis. Distinctio aut veniam sit tenetur. Et aut fugiat nihil voluptatem alias qui.', 0, '2025-03-14 13:39:22', '2025-03-14 13:39:22'),
(16, 'Quisquam impedit quia dignissimos placeat occaecati et.', 'Illum minus sint recusandae vel iusto temporibus sapiente. Accusamus sit in minus vero. Recusandae et quae sint distinctio ut perferendis. Sunt quod repellendus et quidem ea.', 'Velit repellendus nihil dolorum rem odit corrupti minima. Fugit voluptas sapiente ex veritatis. Doloremque velit quia non ut doloribus explicabo labore. Culpa ipsam dolor odit illum. Eum dolores qui mollitia sint sed voluptatem perferendis.', 1, '2025-03-14 13:39:22', '2025-03-14 13:39:22'),
(17, 'Assumenda ipsa voluptas a ullam voluptatem rerum rerum sed.', 'Illo unde voluptatem non pariatur dolorum illum excepturi. Ex voluptatem vero non quo aut est laborum.', 'Molestiae eos rerum aliquid in fuga veritatis et alias. Soluta illo mollitia libero ut quasi voluptatem recusandae velit. Voluptatum magni tenetur occaecati debitis sed. Reprehenderit et deleniti magnam qui inventore delectus fugiat qui. Nobis explicabo sed illo nihil aliquid tenetur deserunt. Quisquam ullam perspiciatis et a et qui aut. Dolorem et deserunt officiis molestiae eius sapiente vitae reprehenderit. Est et iure suscipit iste. Vitae officia deserunt nemo.', 0, '2025-03-14 13:39:22', '2025-03-14 13:39:22'),
(18, 'Qui et nam ipsam possimus quia.', 'Quasi quos ut qui et voluptatem. Enim eum numquam laboriosam aut voluptas et molestiae. Deleniti itaque ullam voluptatibus occaecati omnis aliquam qui. Cupiditate vero expedita recusandae.', 'Architecto et fugiat dignissimos illum voluptatibus ea beatae. A sed aliquam maxime iste minus quae illo. Ut ut magnam culpa ea. Quidem rerum odit fuga dolores. Perferendis quidem alias cum. Voluptatem vel minus et non. Nam doloribus itaque omnis nostrum consequatur delectus omnis natus.', 1, '2025-03-14 13:39:22', '2025-03-14 13:39:22'),
(19, 'In ducimus et voluptas assumenda hic ut.', 'Aut sint in magnam voluptatem est suscipit voluptate delectus. Odit hic voluptatibus reprehenderit. Possimus sed iste quo reprehenderit expedita qui. Autem doloremque quidem omnis sit.', 'Autem magni quaerat consequatur facere architecto temporibus enim. Blanditiis fugiat aut ut sapiente. Sequi explicabo et odio doloremque. Ut occaecati voluptatem repellat quas repudiandae laudantium corrupti. Praesentium distinctio est ullam non quae quam. Voluptatum provident doloremque unde dolor eos. Facere dicta dolorum ea. Recusandae voluptatem saepe tempora voluptatibus veritatis qui.', 0, '2025-03-14 13:39:22', '2025-03-14 13:39:22'),
(20, 'Magni praesentium deserunt tempora voluptatibus delectus eos deserunt.', 'Incidunt accusantium voluptas qui dolor aut. Hic iure est architecto sequi est maiores suscipit. Enim ab tempora aut enim dolorum eveniet. Cumque est aut inventore deserunt.', 'Rerum eum quo voluptatem sit facere fuga. Sit dolor temporibus natus quae. Iusto ipsum et ut enim perspiciatis dignissimos placeat. Provident ut quam qui amet. Cum sed dolores cupiditate deserunt. Accusamus ut sequi qui eius aspernatur. Tempora ad ipsa ut enim nulla debitis aut.', 1, '2025-03-14 13:39:22', '2025-03-14 13:39:22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Marques Zboncak I', 'nella92@example.org', '2025-03-14 13:39:22', '$2y$12$kw1kKFHjUAqDEq2YcAbvQ.Tf5bQroVoNWsEln510J4kP11gVOg4F6', 'W8DmBBLyl1', '2025-03-14 13:39:22', '2025-03-14 13:39:22'),
(2, 'Ms. Viola Kunze Sr.', 'melyssa91@example.com', '2025-03-14 13:39:22', '$2y$12$kw1kKFHjUAqDEq2YcAbvQ.Tf5bQroVoNWsEln510J4kP11gVOg4F6', 'dhfXSSUx3D', '2025-03-14 13:39:22', '2025-03-14 13:39:22'),
(3, 'Lillian Grady', 'ptremblay@example.com', '2025-03-14 13:39:22', '$2y$12$kw1kKFHjUAqDEq2YcAbvQ.Tf5bQroVoNWsEln510J4kP11gVOg4F6', 'UTmeVLFZRM', '2025-03-14 13:39:22', '2025-03-14 13:39:22'),
(4, 'Tara Flatley IV', 'rau.torrance@example.org', '2025-03-14 13:39:22', '$2y$12$kw1kKFHjUAqDEq2YcAbvQ.Tf5bQroVoNWsEln510J4kP11gVOg4F6', 'ndJo6rhNQC', '2025-03-14 13:39:22', '2025-03-14 13:39:22'),
(5, 'Carli Towne', 'dawson.hettinger@example.org', '2025-03-14 13:39:22', '$2y$12$kw1kKFHjUAqDEq2YcAbvQ.Tf5bQroVoNWsEln510J4kP11gVOg4F6', 'rTzS7VmaBj', '2025-03-14 13:39:22', '2025-03-14 13:39:22'),
(6, 'Bridie Schoen', 'simonis.eugene@example.com', '2025-03-14 13:39:22', '$2y$12$kw1kKFHjUAqDEq2YcAbvQ.Tf5bQroVoNWsEln510J4kP11gVOg4F6', 'RAh9fAA3SJ', '2025-03-14 13:39:22', '2025-03-14 13:39:22'),
(7, 'Lola Feil', 'pascale21@example.org', '2025-03-14 13:39:22', '$2y$12$kw1kKFHjUAqDEq2YcAbvQ.Tf5bQroVoNWsEln510J4kP11gVOg4F6', 'HBLx4xwQep', '2025-03-14 13:39:22', '2025-03-14 13:39:22'),
(8, 'Helga Barrows Sr.', 'jason54@example.net', '2025-03-14 13:39:22', '$2y$12$kw1kKFHjUAqDEq2YcAbvQ.Tf5bQroVoNWsEln510J4kP11gVOg4F6', 'dNF6CYhUkB', '2025-03-14 13:39:22', '2025-03-14 13:39:22'),
(9, 'Beatrice Moen', 'kelsie39@example.net', '2025-03-14 13:39:22', '$2y$12$kw1kKFHjUAqDEq2YcAbvQ.Tf5bQroVoNWsEln510J4kP11gVOg4F6', 'j5ab0f0xIw', '2025-03-14 13:39:22', '2025-03-14 13:39:22'),
(10, 'Dr. Myles Rosenbaum', 'angelita.reichert@example.com', '2025-03-14 13:39:22', '$2y$12$kw1kKFHjUAqDEq2YcAbvQ.Tf5bQroVoNWsEln510J4kP11gVOg4F6', 'q1UjmjRWAF', '2025-03-14 13:39:22', '2025-03-14 13:39:22'),
(11, 'Joan Braun', 'fred52@example.org', NULL, '$2y$12$kw1kKFHjUAqDEq2YcAbvQ.Tf5bQroVoNWsEln510J4kP11gVOg4F6', '0aD3nIcBRX', '2025-03-14 13:39:22', '2025-03-14 13:39:22'),
(12, 'Nova Herman', 'malika.stark@example.net', NULL, '$2y$12$kw1kKFHjUAqDEq2YcAbvQ.Tf5bQroVoNWsEln510J4kP11gVOg4F6', 'WXRnfEkIlr', '2025-03-14 13:39:22', '2025-03-14 13:39:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
