-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2023 at 10:29 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_livewire_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `author` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `content` mediumtext DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `category_id`, `author`, `image`, `content`, `status`, `created_at`, `updated_at`) VALUES
(5, 'FASHION', 1, 'kyle janson', '01HEARYKF92ARX62QEQ5JYQ49B.jpg', '<p>Are you ready for what we have prepared for you? We have selected the 50 best sustainable and ethical fashion quotes. We know sustainability is not a new concept&nbsp;</p><p>Lucy Siegle is a journalist that has been concerned for the fast fashion pace and how unsustainable the whole fashion cycle is. Her book “Fashion to die for” is eye-opening, to say the least. Next time you go to the mall and you find amazingly cheap deals, think of this. If it is not you paying the cost, someone is paying it for you. And that someone is the garment workers in producing countries that work under unsafe working conditions for very low pay.</p>', 1, '2023-11-03 21:20:40', '2023-11-03 21:27:55'),
(6, 'education', 2, 'virat jaiswal', '01HEAS7QD8YMYHH1WB82BWC062.png', '<p>Education is a lifelong journey. The learning never stops. There are always new things to discover, new ways to improve ourselves, and new challenges to face. Your kids might not comprehend the importance of their educational journey now, but with the below-mentioned quotes, they can surely feel inspired &amp; <a href=\"https://ahaslides.com/blog/motivational-quotes-for-students/\">motivated</a></p><p>Are you a parent trying to help your child understand the importance of education? Education quotes, in that very case, can be a great assist!&nbsp;</p><h2><em>“It is the mark of an educated mind to be able to entertain a thought without accepting it.” – Aristotle</em></h2>', 0, '2023-11-03 21:26:17', '2023-12-01 13:04:14'),
(7, 'fashion', 1, 'jenny', '01HEAS9NGAV0SAB2XR4J7HNW1X.jpg', '<p>Are you ready for what we have prepared for you? We have selected the 50 best sustainable and ethical fashion quotes. We know sustainability is not a new concept but truth to be told until recently there were not too many people voicing their care for it. Now things are different.</p><p><br></p><p>The fashion industry is the second-largest pollutant after Oil &amp; Gas. This terrible fact is something that’s often overlooked as we tend to think it is not possible to change the actual status quo. The clothes that we wear play an important role in the environment. The future generations are in our hands and it is our responsibility to make a move towards this ongoing situation.</p><p>As we are running out of time and resources, it is up to us- individuals and organizations- who genuinely care, to try and change the general mindset. We have the power to educate, influence, inspire and motivate others <a href=\"http://goshopia.com/glossary-of-sustainable-fashion-terms/\">through powerful words</a> and try to change their perspective.</p><h2>Before you scroll away into the digital black hole, we would like to share some brilliant quotes from celebrities and designers on fast, ethical and sustainable fashion which surely is thought-provoking. Oh! And please free free to share them and tell us which one is your favorite! On the side of the blog, you have all social buttons to share the 50 quotes all at once and over every image, you have Facebook, Pinterest and Twitter buttons to share that image only. Happy sharing!!!</h2>', 1, '2023-11-03 21:27:21', '2023-11-03 21:27:21'),
(8, 'education', 2, 'virat jaiswal', '01HEASCEMN8DB6GKZ7WNKJ8Z7S.jpg', '<ol><li>“An investment in knowledge pays the best interest.” – Benjamin Franklin</li><li>“Children have to be educated, but they have also to be left to educate themselves.” – Ernest Dimnet&nbsp;</li><li>“Education is what survives when what has been learned has been forgotten.” – B.F Skinner&nbsp;</li><li>“ Never be afraid to try something new.&nbsp; Remember amateurs built the ark, but professionals built the Titanic.” – Unknown</li><li>“Learning never exhausts the mind.” – Leonardo Da Vinci</li><li>&nbsp;“The mind is not a vessel to be filled but a fire to be ignited.” – Plutarch&nbsp;</li><li>&nbsp;“The beautiful thing about learning is that no one can take it away from you.” – B.B King</li><li><h2>“The only real failure in life is one not learned from.” – Anthony J. D’Angelo&nbsp;</h2></li></ol><p><br></p>', 1, '2023-11-03 21:28:52', '2023-11-03 21:28:52');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'fashion', 'fashion', 1, '2023-11-03 12:59:00', '2023-11-03 15:00:41'),
(2, 'education', 'education', 1, '2023-11-03 13:05:50', '2023-11-03 15:00:08'),
(4, 'spoats', 'spoats', 1, '2023-11-03 21:14:47', '2023-11-03 21:14:47');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `status`, `created_at`, `updated_at`) VALUES
(1, 'why the bass ohk time the ', '<p>dummy content</p>', 1, '2023-11-08 16:37:16', '2023-11-08 16:39:50'),
(2, 'jai shree ram', '<h2>jai shree ram</h2><p><br></p><p>hanuman</p>', 1, '2023-11-08 16:41:30', '2023-11-08 16:41:30'),
(3, 'Famous quotes in English', '<p>These quotes are famous enough to be recognized by most native English speakers. Some come from written English (plays, books, or poems), others come from movies, and still others come from famous figures in history. Any of these can be quoted in a conversation, in whole or in part, They are so famous that the longer quotes are more often referred to with only the first part of the quote because people know the rest. Once you know an English quote, you will see it referred to in many places. Famous quotes are often changed slightly to make jokes, since everyone will understand both the original quote and the changed version. They can also be used as jokes when you quote them in an unexpected context.</p>', 1, '2023-11-14 21:07:44', '2023-11-14 21:07:44');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `fb_url` varchar(255) DEFAULT NULL,
  `tw_url` varchar(255) DEFAULT NULL,
  `in_url` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `name`, `designation`, `fb_url`, `tw_url`, `in_url`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'virat jaiswal jais', 'web developer', 'https://www.facebook.com/', 'https://twitter.com/BeingSalmanKhan', 'https://www.instagram.com/virat_jaiswal138/', '01HE9SVWH1G736C40DB30T68C4.jpg', 1, '2023-11-03 10:50:12', '2023-11-03 12:18:03'),
(2, 'kartavya jaiswal @', 'software engineer', 'https://www.facebook.com/', 'https://twitter.com/login?lang=hi', 'https://www.instagram.com/a.j.official.786/', '01HE9N5XJ5FEWY87RZVQXQMC0T.jpg', 0, '2023-11-03 10:56:09', '2023-12-01 13:01:09'),
(5, 'ankit', 'software engineer', 'https://hi-in.facebook.com/public/Ankit-JAiswal', 'www.twitter.com', 'https://www.instagram.com/a.j.official.786/', '01HE9SABPMXKDRGAP0QCWTC5EM.avif', 1, '2023-11-03 12:08:29', '2023-11-03 12:08:29');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_11_02_060856_create_services_table', 2),
(6, '2023_11_03_033214_create_members_table', 3),
(7, '2023_11_03_053450_create_categories_table', 4),
(8, '2023_11_03_060911_create_articles_table', 5),
(9, '2023_11_08_080417_create_faqs_table', 6),
(10, '2023_11_14_114114_create_pages_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `content` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `image`, `content`, `status`, `created_at`, `updated_at`) VALUES
(1, 'about us virat', '01HF6VPV1DG6XPK1HDD8RSK4A0.png', '<h1>Famous quotes in English</h1><p>These quotes are famous enough to be recognized by most native English speakers. Some come from written English (plays, books, or poems), others come from movies, and still others come from famous figures in history. Any of these can be quoted in a conversation, in whole or in part, They are so famous that the longer quotes are more often referred to with only the first part of the quote because people know the rest. Once you know an English quote, you will see it referred to in many places. Famous quotes are often changed slightly to make jokes, since everyone will understand both the original quote and the changed version. They can also be used as jokes when you quote them in an unexpected context.</p><p><br></p>', 1, '2023-11-14 20:08:14', '2023-11-14 20:09:54'),
(3, 'motivational', '01HFXAZATX7KRC1576P2ZW2HSE.png', '<h2>What is it about <strong>motivational quotes</strong> that make them so endearing? Every driven person eventually figures out that there\'s a whole lot of feel-good time wasters out there that suck us because they feel like work, and browsing endless lists of motivational phrases are no exception. And yet, there\'s hidden value in finding a concise expression that perfectly distills our own beliefs.</h2><p>Motivational success quotes often feel like our own opinions making a return visit, just augmented by someone with writing talent. And the right quote at the right time can change things—words matter, and motivating phrases can encourage us to get up, overcome tough times, take action, <a href=\"https://www.shopify.com/in/blog/how-to-stop-procrastinating\"><span style=\"text-decoration: underline;\">stop procrastinating</span></a>, escape our comfort zone, motivate a team, invest in personal growth, <a href=\"https://www.shopify.com/in/blog/how-to-start-a-business\"><span style=\"text-decoration: underline;\">start a business</span></a>, and do the hard work that needs doing.</p>', 1, '2023-11-23 13:38:18', '2023-11-23 13:38:18'),
(4, 'Deep motivanil', '01HFXB0RBR00KCT3BM4SDX0YFM.png', '<ol><li>“It is only when we take chances, when our lives improve. The initial and the most difficult risk that we need to take is to become honest. —Walter Anderson</li><li>“Nature has given us all the pieces required to achieve exceptional wellness and health, but has left it to us to put these pieces together.”—Diane McLaren</li></ol><p><br></p>', 1, '2023-11-23 13:39:05', '2023-11-23 13:39:05'),
(5, 'privcy ', '01HFXB2JQ779C8G1XAA25GEH1G.png', '<h2>When you use our services, you’re trusting us with your information. We understand this is a big responsibility and work hard to protect your information and put you in control.</h2>', 1, '2023-11-23 13:40:04', '2023-11-23 13:40:04');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `icon_class` varchar(255) DEFAULT NULL,
  `short_desc` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `icon_class`, `short_desc`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'web design 1', 'dunny', 'lorean lipusem dokk s dssd weffew 1', '<p>lorean lipusem dokk s dssd weffew</p>', 0, '2023-11-02 13:31:17', '2023-12-01 12:58:41'),
(2, 'Facbook Ads', 'dunny', 'lorean lipusem dokk s dssd weffew', '<p>Loream ipsum dolor ait amet</p>', 1, '2023-11-02 19:00:06', '2023-11-02 19:00:06'),
(3, 'Google ADS', 'dunny', 'lorean lipusem dokk s dssd weffew', '<h2>this is a face dummy heading</h2><p>lorean lipusem dokk s dssd weffew</p>', 1, '2023-11-02 19:01:40', '2023-11-02 20:09:28'),
(4, 'Graphic Design', 'dunny', 'lorean lipusem dokk s dssd weffew', '<p>lorean lipusem dokk s dssd weffew</p>', 1, '2023-11-02 19:02:25', '2023-11-02 19:02:25'),
(5, 'Logo Design', 'dunny', 'lorean lipusem dokk s dssd weffew', '<p>lorean lipusem dokk s dssd weffew</p>', 1, '2023-11-02 19:03:14', '2023-11-02 19:03:14'),
(6, 'dummy service', NULL, 'lorean lipusem dokk s dssd weffew', '<p>lorean lipusem dokk s dssd weffew</p>', 1, '2023-12-01 12:33:26', '2023-12-01 12:33:26');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'virat jaiswal', 'admin@email.com', NULL, '$2y$12$AYEYZ7xAfwtBk9Dyv6rPSOO3CA/dEyIvObYLDaflTKdnGp0NQ2S4u', 'oG54irWGQnX0wr8rEnQvDWelzhfGeq6icmLD4mhKha6QirQfeqINtyzY1uFz', '2023-11-02 11:31:46', '2023-11-02 11:31:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_category_id_foreign` (`category_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
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
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
