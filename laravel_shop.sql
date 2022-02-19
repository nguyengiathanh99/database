-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2022 at 03:57 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `customer_id`, `product_id`, `qty`, `price`, `created_at`, `updated_at`) VALUES
(4, 5, 45, 5, '99000', NULL, NULL),
(5, 5, 53, 1, '180000', NULL, NULL),
(6, 5, 54, 2, '500000', NULL, NULL),
(7, 6, 43, 1, '800000', NULL, NULL),
(8, 6, 48, 2, '300000', NULL, NULL),
(10, 8, 45, 1, '99000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `phone`, `address`, `email`, `content`, `created_at`, `updated_at`) VALUES
(5, 'Gia Thành', '0985117370', 'Hà Nội', 'Nguyengiathanh1999@gmail.com', 'aaa', '2022-02-17 21:05:01', '2022-02-17 21:05:01'),
(6, 'Trần Thị Nguyên', '0985117370', 'Ba Vì', 'nguyentran247@gmail.com', 'Nhận hàng giờ hành chính', '2022-02-17 21:13:06', '2022-02-17 21:13:06'),
(8, 'Gia Thành 99', '0985117370', 'Hà Nội', 'Nguyengiathanh1999@gmail.com', 'admin', '2022-02-17 22:27:33', '2022-02-17 22:27:33');

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
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `parent_id`, `description`, `content`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Nước Hoa Nam', 0, 'Nước Hoa Nam', '<p>Nước Hoa Nam</p>', 1, '2022-01-04 08:45:04', '2022-01-04 08:45:04'),
(9, 'Nước Hoa Nữ', 0, 'Nước Hoa Nữ', '<p>Nước Hoa Nữ</p>', 1, '2022-01-07 07:59:09', '2022-01-07 07:59:09'),
(12, 'Nước Hoa Nam 1', 1, 'Nước Hoa Nam 1', '<p>Nước Hoa Nam 1</p>', 1, '2022-01-25 20:46:32', '2022-01-25 20:46:32'),
(13, 'Quần áo', 0, 'Quần áo đẹp', '<p>Quần &aacute;o đẹp</p>', 1, '2022-02-06 19:11:04', '2022-02-06 19:11:04');

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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_01_04_044638_create_menus_table', 2),
(6, '2022_01_09_082004_create_products_table', 3),
(7, '2022_01_17_150214_create_sliders_table', 4),
(8, '2022_02_17_093905_create_customers_table', 5),
(9, '2022_02_17_094117_create_carts_table', 5);

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_id` int(11) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `price_sale` int(11) DEFAULT NULL,
  `active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `thumb`, `description`, `content`, `menu_id`, `price`, `price_sale`, `active`, `created_at`, `updated_at`) VALUES
(7, 'Esprit Ruffle Shirt', 'public/uploads/product-01.jpg', '\r\n\r\nEsprit Ruffle Shirt', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam asperiores aspernatur at autem beatae\n            consequuntur culpa cum est exercitationem explicabo facilis fugit id illo in, ipsam laboriosam magnam neque\n            nesciunt pariatur perspiciatis possimus, praesentium quaerat quia quo reprehenderit tempore, voluptatum. A\n            architecto assumenda cupiditate enim fugit laborum libero non provident, tempora, tempore totam voluptate.\n            Illo ipsa iusto magnam similique tempore. Excepturi explicabo iure laudantium nesciunt nobis odit voluptate\n            voluptatem. Assumenda deleniti dignissimos, dolor error fugit illo inventore, nostrum numquam optio quaerat\n            quis unde, voluptates? Asperiores atque consectetur delectus dicta eligendi eos esse harum itaque laudantium\n            magnam, numquam odit perferendis provident quae, qui quis sequi soluta velit veniam voluptate. Doloribus\n            magnam nemo suscipit! Alias amet aperiam corporis culpa cupiditate debitis dicta ducimus ea eum\n            exercitationem facere fuga hic in ipsam magni molestias mollitia, numquam officia perspiciatis provident\n            quia quisquam quod repellendus reprehenderit repudiandae, sed sequi sit, tempore ullam ut vel velit vitae\n            voluptates. A alias architecto cumque delectus dicta doloribus eius illo inventore ipsa laboriosam laborum\n            maxime minima modi molestiae, molestias mollitia nihil numquam perferendis praesentium qui quod sed tempora\n            tempore veritatis voluptas voluptatibus voluptatum. Aperiam eius est fuga fugit, incidunt modi molestiae\n            officia perspiciatis quae quia repellat similique sunt voluptatibus?', 1, 520000, 500000, 1, '2022-02-07 19:18:53', '2022-02-07 19:18:53'),
(8, 'Square Neck Back', 'public/uploads/product-16.jpg', 'Square Neck Back', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam asperiores aspernatur at autem beatae\r\n            consequuntur culpa cum est exercitationem explicabo facilis fugit id illo in, ipsam laboriosam magnam neque\r\n            nesciunt pariatur perspiciatis possimus, praesentium quaerat quia quo reprehenderit tempore, voluptatum. A\r\n            architecto assumenda cupiditate enim fugit laborum libero non provident, tempora, tempore totam voluptate.\r\n            Illo ipsa iusto magnam similique tempore. Excepturi explicabo iure laudantium nesciunt nobis odit voluptate\r\n            voluptatem. Assumenda deleniti dignissimos, dolor error fugit illo inventore, nostrum numquam optio quaerat\r\n            quis unde, voluptates? Asperiores atque consectetur delectus dicta eligendi eos esse harum itaque laudantium\r\n            magnam, numquam odit perferendis provident quae, qui quis sequi soluta velit veniam voluptate. Doloribus\r\n            magnam nemo suscipit! Alias amet aperiam corporis culpa cupiditate debitis dicta ducimus ea eum\r\n            exercitationem facere fuga hic in ipsam magni molestias mollitia, numquam officia perspiciatis provident\r\n            quia quisquam quod repellendus reprehenderit repudiandae, sed sequi sit, tempore ullam ut vel velit vitae\r\n            voluptates. A alias architecto cumque delectus dicta doloribus eius illo inventore ipsa laboriosam laborum\r\n            maxime minima modi molestiae, molestias mollitia nihil numquam perferendis praesentium qui quod sed tempora\r\n            tempore veritatis voluptas voluptatibus voluptatum. Aperiam eius est fuga fugit, incidunt modi molestiae\r\n            officia perspiciatis quae quia repellat similique sunt voluptatibus?', 13, 200000, 150000, 1, '2022-02-07 19:19:38', '2022-02-07 19:19:38'),
(9, 'Mini Silver Mesh Watch', 'public/uploads/product-15.jpg', 'Mini Silver Mesh Watch', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam asperiores aspernatur at autem beatae\r\n            consequuntur culpa cum est exercitationem explicabo facilis fugit id illo in, ipsam laboriosam magnam neque\r\n            nesciunt pariatur perspiciatis possimus, praesentium quaerat quia quo reprehenderit tempore, voluptatum. A\r\n            architecto assumenda cupiditate enim fugit laborum libero non provident, tempora, tempore totam voluptate.\r\n            Illo ipsa iusto magnam similique tempore. Excepturi explicabo iure laudantium nesciunt nobis odit voluptate\r\n            voluptatem. Assumenda deleniti dignissimos, dolor error fugit illo inventore, nostrum numquam optio quaerat\r\n            quis unde, voluptates? Asperiores atque consectetur delectus dicta eligendi eos esse harum itaque laudantium\r\n            magnam, numquam odit perferendis provident quae, qui quis sequi soluta velit veniam voluptate. Doloribus\r\n            magnam nemo suscipit! Alias amet aperiam corporis culpa cupiditate debitis dicta ducimus ea eum\r\n            exercitationem facere fuga hic in ipsam magni molestias mollitia, numquam officia perspiciatis provident\r\n            quia quisquam quod repellendus reprehenderit repudiandae, sed sequi sit, tempore ullam ut vel velit vitae\r\n            voluptates. A alias architecto cumque delectus dicta doloribus eius illo inventore ipsa laboriosam laborum\r\n            maxime minima modi molestiae, molestias mollitia nihil numquam perferendis praesentium qui quod sed tempora\r\n            tempore veritatis voluptas voluptatibus voluptatum. Aperiam eius est fuga fugit, incidunt modi molestiae\r\n            officia perspiciatis quae quia repellat similique sunt voluptatibus?', 1, 300000, 200000, 1, '2022-02-07 19:20:09', '2022-02-07 19:20:09'),
(10, 'Pretty Little Thing', 'public/uploads/product-14.jpg', 'Pretty Little Thing', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto doloribus eius esse sed. Beatae commodi\r\n            delectus dignissimos dolorum explicabo fugiat hic id illum libero magni minus, nemo nobis, possimus quam\r\n            quasi quidem quos reprehenderit tenetur ut veritatis! Accusantium adipisci architecto aspernatur beatae\r\n            blanditiis consectetur culpa cum cumque debitis deserunt dicta eius eligendi et eum excepturi in ipsam modi\r\n            necessitatibus nesciunt, numquam officiis perspiciatis quam quas quos reprehenderit repudiandae, sed\r\n            suscipit tempora temporibus tenetur totam veritatis vitae voluptatum! Adipisci asperiores beatae dicta,\r\n            error harum incidunt libero nesciunt odit placeat praesentium quia ratione reiciendis totam! Accusamus aut\r\n            autem consequuntur, cum cupiditate dignissimos eligendi fuga inventore maxime perferendis provident\r\n            repellendus veritatis voluptate. Ad aliquam aperiam dolorem dolores facere modi mollitia rem. A aut\r\n            blanditiis, eum excepturi fuga fugiat in iste laboriosam magni minima molestiae nemo quo, tempore veniam\r\n            vitae! A asperiores autem explicabo ipsa maiores, maxime qui. Adipisci aliquid architecto consectetur cumque\r\n            deleniti dolore dolorem, eum explicabo ipsum iste laborum libero non officia quasi, similique soluta tempore\r\n            ullam? Dolorem fugit illum officiis veritatis voluptatum! Accusantium adipisci aliquid enim eum odio\r\n            quaerat! Adipisci aliquam, aliquid aperiam autem beatae consequuntur eos id illo nesciunt odit quam\r\n            quibusdam quod saepe sunt, tempore temporibus vero! Amet, dolore.', 13, 200000, 190000, 1, '2022-02-07 19:22:31', '2022-02-07 19:22:31'),
(11, 'T-Shirt with Sleeve', 'public/uploads/product-13.jpg', 'T-Shirt with Sleeve', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam asperiores aspernatur at autem beatae\r\n            consequuntur culpa cum est exercitationem explicabo facilis fugit id illo in, ipsam laboriosam magnam neque\r\n            nesciunt pariatur perspiciatis possimus, praesentium quaerat quia quo reprehenderit tempore, voluptatum. A\r\n            architecto assumenda cupiditate enim fugit laborum libero non provident, tempora, tempore totam voluptate.\r\n            Illo ipsa iusto magnam similique tempore. Excepturi explicabo iure laudantium nesciunt nobis odit voluptate\r\n            voluptatem. Assumenda deleniti dignissimos, dolor error fugit illo inventore, nostrum numquam optio quaerat\r\n            quis unde, voluptates? Asperiores atque consectetur delectus dicta eligendi eos esse harum itaque laudantium\r\n            magnam, numquam odit perferendis provident quae, qui quis sequi soluta velit veniam voluptate. Doloribus\r\n            magnam nemo suscipit! Alias amet aperiam corporis culpa cupiditate debitis dicta ducimus ea eum\r\n            exercitationem facere fuga hic in ipsam magni molestias mollitia, numquam officia perspiciatis provident\r\n            quia quisquam quod repellendus reprehenderit repudiandae, sed sequi sit, tempore ullam ut vel velit vitae\r\n            voluptates. A alias architecto cumque delectus dicta doloribus eius illo inventore ipsa laboriosam laborum\r\n            maxime minima modi molestiae, molestias mollitia nihil numquam perferendis praesentium qui quod sed tempora\r\n            tempore veritatis voluptas voluptatibus voluptatum. Aperiam eius est fuga fugit, incidunt modi molestiae\r\n            officia perspiciatis quae quia repellat similique sunt voluptatibus?', 13, 300000, 200000, 1, '2022-02-07 19:23:16', '2022-02-07 19:23:16'),
(12, 'Converse All Star Hi Plimsolls', 'public/uploads/product-09.jpg', 'Converse All Star Hi Plimsolls', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam asperiores aspernatur at autem beatae\r\n            consequuntur culpa cum est exercitationem explicabo facilis fugit id illo in, ipsam laboriosam magnam neque\r\n            nesciunt pariatur perspiciatis possimus, praesentium quaerat quia quo reprehenderit tempore, voluptatum. A\r\n            architecto assumenda cupiditate enim fugit laborum libero non provident, tempora, tempore totam voluptate.\r\n            Illo ipsa iusto magnam similique tempore. Excepturi explicabo iure laudantium nesciunt nobis odit voluptate\r\n            voluptatem. Assumenda deleniti dignissimos, dolor error fugit illo inventore, nostrum numquam optio quaerat\r\n            quis unde, voluptates? Asperiores atque consectetur delectus dicta eligendi eos esse harum itaque laudantium\r\n            magnam, numquam odit perferendis provident quae, qui quis sequi soluta velit veniam voluptate. Doloribus\r\n            magnam nemo suscipit! Alias amet aperiam corporis culpa cupiditate debitis dicta ducimus ea eum\r\n            exercitationem facere fuga hic in ipsam magni molestias mollitia, numquam officia perspiciatis provident\r\n            quia quisquam quod repellendus reprehenderit repudiandae, sed sequi sit, tempore ullam ut vel velit vitae\r\n            voluptates. A alias architecto cumque delectus dicta doloribus eius illo inventore ipsa laboriosam laborum\r\n            maxime minima modi molestiae, molestias mollitia nihil numquam perferendis praesentium qui quod sed tempora\r\n            tempore veritatis voluptas voluptatibus voluptatum. Aperiam eius est fuga fugit, incidunt modi molestiae\r\n            officia perspiciatis quae quia repellat similique sunt voluptatibus?', 13, 1000000, 900000, 1, '2022-02-07 19:24:30', '2022-02-07 19:24:30'),
(13, 'Femme T-Shirt In Stripe', 'public/uploads/product-10.jpg', 'Femme T-Shirt In Stripe', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam asperiores aspernatur at autem beatae\r\n            consequuntur culpa cum est exercitationem explicabo facilis fugit id illo in, ipsam laboriosam magnam neque\r\n            nesciunt pariatur perspiciatis possimus, praesentium quaerat quia quo reprehenderit tempore, voluptatum. A\r\n            architecto assumenda cupiditate enim fugit laborum libero non provident, tempora, tempore totam voluptate.\r\n            Illo ipsa iusto magnam similique tempore. Excepturi explicabo iure laudantium nesciunt nobis odit voluptate\r\n            voluptatem. Assumenda deleniti dignissimos, dolor error fugit illo inventore, nostrum numquam optio quaerat\r\n            quis unde, voluptates? Asperiores atque consectetur delectus dicta eligendi eos esse harum itaque laudantium\r\n            magnam, numquam odit perferendis provident quae, qui quis sequi soluta velit veniam voluptate. Doloribus\r\n            magnam nemo suscipit! Alias amet aperiam corporis culpa cupiditate debitis dicta ducimus ea eum\r\n            exercitationem facere fuga hic in ipsam magni molestias mollitia, numquam officia perspiciatis provident\r\n            quia quisquam quod repellendus reprehenderit repudiandae, sed sequi sit, tempore ullam ut vel velit vitae\r\n            voluptates. A alias architecto cumque delectus dicta doloribus eius illo inventore ipsa laboriosam laborum\r\n            maxime minima modi molestiae, molestias mollitia nihil numquam perferendis praesentium qui quod sed tempora\r\n            tempore veritatis voluptas voluptatibus voluptatum. Aperiam eius est fuga fugit, incidunt modi molestiae\r\n            officia perspiciatis quae quia repellat similique sunt voluptatibus?', 13, 800000, NULL, 1, '2022-02-07 19:24:56', '2022-02-07 19:24:56'),
(14, 'Herschel supply', 'public/uploads/product-11.jpg', 'Herschel supply', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam asperiores aspernatur at autem beatae\r\n            consequuntur culpa cum est exercitationem explicabo facilis fugit id illo in, ipsam laboriosam magnam neque\r\n            nesciunt pariatur perspiciatis possimus, praesentium quaerat quia quo reprehenderit tempore, voluptatum. A\r\n            architecto assumenda cupiditate enim fugit laborum libero non provident, tempora, tempore totam voluptate.\r\n            Illo ipsa iusto magnam similique tempore. Excepturi explicabo iure laudantium nesciunt nobis odit voluptate\r\n            voluptatem. Assumenda deleniti dignissimos, dolor error fugit illo inventore, nostrum numquam optio quaerat\r\n            quis unde, voluptates? Asperiores atque consectetur delectus dicta eligendi eos esse harum itaque laudantium\r\n            magnam, numquam odit perferendis provident quae, qui quis sequi soluta velit veniam voluptate. Doloribus\r\n            magnam nemo suscipit! Alias amet aperiam corporis culpa cupiditate debitis dicta ducimus ea eum\r\n            exercitationem facere fuga hic in ipsam magni molestias mollitia, numquam officia perspiciatis provident\r\n            quia quisquam quod repellendus reprehenderit repudiandae, sed sequi sit, tempore ullam ut vel velit vitae\r\n            voluptates. A alias architecto cumque delectus dicta doloribus eius illo inventore ipsa laboriosam laborum\r\n            maxime minima modi molestiae, molestias mollitia nihil numquam perferendis praesentium qui quod sed tempora\r\n            tempore veritatis voluptas voluptatibus voluptatum. Aperiam eius est fuga fugit, incidunt modi molestiae\r\n            officia perspiciatis quae quia repellat similique sunt voluptatibus?', 1, 600000, NULL, 1, '2022-02-07 19:25:38', '2022-02-07 19:25:38'),
(15, 'Herschel supply', 'public/uploads/product-12.jpg', 'Herschel supply', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam asperiores aspernatur at autem beatae\r\n            consequuntur culpa cum est exercitationem explicabo facilis fugit id illo in, ipsam laboriosam magnam neque\r\n            nesciunt pariatur perspiciatis possimus, praesentium quaerat quia quo reprehenderit tempore, voluptatum. A\r\n            architecto assumenda cupiditate enim fugit laborum libero non provident, tempora, tempore totam voluptate.\r\n            Illo ipsa iusto magnam similique tempore. Excepturi explicabo iure laudantium nesciunt nobis odit voluptate\r\n            voluptatem. Assumenda deleniti dignissimos, dolor error fugit illo inventore, nostrum numquam optio quaerat\r\n            quis unde, voluptates? Asperiores atque consectetur delectus dicta eligendi eos esse harum itaque laudantium\r\n            magnam, numquam odit perferendis provident quae, qui quis sequi soluta velit veniam voluptate. Doloribus\r\n            magnam nemo suscipit! Alias amet aperiam corporis culpa cupiditate debitis dicta ducimus ea eum\r\n            exercitationem facere fuga hic in ipsam magni molestias mollitia, numquam officia perspiciatis provident\r\n            quia quisquam quod repellendus reprehenderit repudiandae, sed sequi sit, tempore ullam ut vel velit vitae\r\n            voluptates. A alias architecto cumque delectus dicta doloribus eius illo inventore ipsa laboriosam laborum\r\n            maxime minima modi molestiae, molestias mollitia nihil numquam perferendis praesentium qui quod sed tempora\r\n            tempore veritatis voluptas voluptatibus voluptatum. Aperiam eius est fuga fugit, incidunt modi molestiae\r\n            officia perspiciatis quae quia repellat similique sunt voluptatibus?', 13, 99000, NULL, 1, '2022-02-07 19:26:17', '2022-02-07 19:26:17'),
(16, 'Pieces Metallic Printed', 'public/uploads/product-08.jpg', 'Pieces Metallic Printed', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto doloribus eius esse sed. Beatae commodi\r\n            delectus dignissimos dolorum explicabo fugiat hic id illum libero magni minus, nemo nobis, possimus quam\r\n            quasi quidem quos reprehenderit tenetur ut veritatis! Accusantium adipisci architecto aspernatur beatae\r\n            blanditiis consectetur culpa cum cumque debitis deserunt dicta eius eligendi et eum excepturi in ipsam modi\r\n            necessitatibus nesciunt, numquam officiis perspiciatis quam quas quos reprehenderit repudiandae, sed\r\n            suscipit tempora temporibus tenetur totam veritatis vitae voluptatum! Adipisci asperiores beatae dicta,\r\n            error harum incidunt libero nesciunt odit placeat praesentium quia ratione reiciendis totam! Accusamus aut\r\n            autem consequuntur, cum cupiditate dignissimos eligendi fuga inventore maxime perferendis provident\r\n            repellendus veritatis voluptate. Ad aliquam aperiam dolorem dolores facere modi mollitia rem. A aut\r\n            blanditiis, eum excepturi fuga fugiat in iste laboriosam magni minima molestiae nemo quo, tempore veniam\r\n            vitae! A asperiores autem explicabo ipsa maiores, maxime qui. Adipisci aliquid architecto consectetur cumque\r\n            deleniti dolore dolorem, eum explicabo ipsum iste laborum libero non officia quasi, similique soluta tempore\r\n            ullam? Dolorem fugit illum officiis veritatis voluptatum! Accusantium adipisci aliquid enim eum odio\r\n            quaerat! Adipisci aliquam, aliquid aperiam autem beatae consequuntur eos id illo nesciunt odit quam\r\n            quibusdam quod saepe sunt, tempore temporibus vero! Amet, dolore.', 1, 700000, 650000, 1, '2022-02-07 19:26:50', '2022-02-07 19:26:50'),
(17, 'Shirt in Stretch Cotton', 'public/uploads/product-07.jpg', 'Shirt in Stretch Cotton', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto doloribus eius esse sed. Beatae commodi\r\n            delectus dignissimos dolorum explicabo fugiat hic id illum libero magni minus, nemo nobis, possimus quam\r\n            quasi quidem quos reprehenderit tenetur ut veritatis! Accusantium adipisci architecto aspernatur beatae\r\n            blanditiis consectetur culpa cum cumque debitis deserunt dicta eius eligendi et eum excepturi in ipsam modi\r\n            necessitatibus nesciunt, numquam officiis perspiciatis quam quas quos reprehenderit repudiandae, sed\r\n            suscipit tempora temporibus tenetur totam veritatis vitae voluptatum! Adipisci asperiores beatae dicta,\r\n            error harum incidunt libero nesciunt odit placeat praesentium quia ratione reiciendis totam! Accusamus aut\r\n            autem consequuntur, cum cupiditate dignissimos eligendi fuga inventore maxime perferendis provident\r\n            repellendus veritatis voluptate. Ad aliquam aperiam dolorem dolores facere modi mollitia rem. A aut\r\n            blanditiis, eum excepturi fuga fugiat in iste laboriosam magni minima molestiae nemo quo, tempore veniam\r\n            vitae! A asperiores autem explicabo ipsa maiores, maxime qui. Adipisci aliquid architecto consectetur cumque\r\n            deleniti dolore dolorem, eum explicabo ipsum iste laborum libero non officia quasi, similique soluta tempore\r\n            ullam? Dolorem fugit illum officiis veritatis voluptatum! Accusantium adipisci aliquid enim eum odio\r\n            quaerat! Adipisci aliquam, aliquid aperiam autem beatae consequuntur eos id illo nesciunt odit quam\r\n            quibusdam quod saepe sunt, tempore temporibus vero! Amet, dolore.', 13, 600000, 555000, 1, '2022-02-07 19:27:36', '2022-02-07 19:27:36'),
(18, 'Vintage Inspired Classic', 'public/uploads/product-06.jpg', 'Vintage Inspired Classic', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto doloribus eius esse sed. Beatae commodi\r\n            delectus dignissimos dolorum explicabo fugiat hic id illum libero magni minus, nemo nobis, possimus quam\r\n            quasi quidem quos reprehenderit tenetur ut veritatis! Accusantium adipisci architecto aspernatur beatae\r\n            blanditiis consectetur culpa cum cumque debitis deserunt dicta eius eligendi et eum excepturi in ipsam modi\r\n            necessitatibus nesciunt, numquam officiis perspiciatis quam quas quos reprehenderit repudiandae, sed\r\n            suscipit tempora temporibus tenetur totam veritatis vitae voluptatum! Adipisci asperiores beatae dicta,\r\n            error harum incidunt libero nesciunt odit placeat praesentium quia ratione reiciendis totam! Accusamus aut\r\n            autem consequuntur, cum cupiditate dignissimos eligendi fuga inventore maxime perferendis provident\r\n            repellendus veritatis voluptate. Ad aliquam aperiam dolorem dolores facere modi mollitia rem. A aut\r\n            blanditiis, eum excepturi fuga fugiat in iste laboriosam magni minima molestiae nemo quo, tempore veniam\r\n            vitae! A asperiores autem explicabo ipsa maiores, maxime qui. Adipisci aliquid architecto consectetur cumque\r\n            deleniti dolore dolorem, eum explicabo ipsum iste laborum libero non officia quasi, similique soluta tempore\r\n            ullam? Dolorem fugit illum officiis veritatis voluptatum! Accusantium adipisci aliquid enim eum odio\r\n            quaerat! Adipisci aliquam, aliquid aperiam autem beatae consequuntur eos id illo nesciunt odit quam\r\n            quibusdam quod saepe sunt, tempore temporibus vero! Amet, dolore.', 13, 300000, NULL, 1, '2022-02-07 19:28:14', '2022-02-07 19:28:14'),
(19, 'Front Pocket Jumper', 'public/uploads/product-05.jpg', 'Front Pocket Jumper', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto doloribus eius esse sed. Beatae commodi\r\n            delectus dignissimos dolorum explicabo fugiat hic id illum libero magni minus, nemo nobis, possimus quam\r\n            quasi quidem quos reprehenderit tenetur ut veritatis! Accusantium adipisci architecto aspernatur beatae\r\n            blanditiis consectetur culpa cum cumque debitis deserunt dicta eius eligendi et eum excepturi in ipsam modi\r\n            necessitatibus nesciunt, numquam officiis perspiciatis quam quas quos reprehenderit repudiandae, sed\r\n            suscipit tempora temporibus tenetur totam veritatis vitae voluptatum! Adipisci asperiores beatae dicta,\r\n            error harum incidunt libero nesciunt odit placeat praesentium quia ratione reiciendis totam! Accusamus aut\r\n            autem consequuntur, cum cupiditate dignissimos eligendi fuga inventore maxime perferendis provident\r\n            repellendus veritatis voluptate. Ad aliquam aperiam dolorem dolores facere modi mollitia rem. A aut\r\n            blanditiis, eum excepturi fuga fugiat in iste laboriosam magni minima molestiae nemo quo, tempore veniam\r\n            vitae! A asperiores autem explicabo ipsa maiores, maxime qui. Adipisci aliquid architecto consectetur cumque\r\n            deleniti dolore dolorem, eum explicabo ipsum iste laborum libero non officia quasi, similique soluta tempore\r\n            ullam? Dolorem fugit illum officiis veritatis voluptatum! Accusantium adipisci aliquid enim eum odio\r\n            quaerat! Adipisci aliquam, aliquid aperiam autem beatae consequuntur eos id illo nesciunt odit quam\r\n            quibusdam quod saepe sunt, tempore temporibus vero! Amet, dolore.', 13, 200000, NULL, 1, '2022-02-07 19:28:51', '2022-02-07 19:28:51'),
(20, 'Classic Trench Coat', 'public/uploads/product-04.jpg', 'Classic Trench Coat', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto doloribus eius esse sed. Beatae commodi\r\n            delectus dignissimos dolorum explicabo fugiat hic id illum libero magni minus, nemo nobis, possimus quam\r\n            quasi quidem quos reprehenderit tenetur ut veritatis! Accusantium adipisci architecto aspernatur beatae\r\n            blanditiis consectetur culpa cum cumque debitis deserunt dicta eius eligendi et eum excepturi in ipsam modi\r\n            necessitatibus nesciunt, numquam officiis perspiciatis quam quas quos reprehenderit repudiandae, sed\r\n            suscipit tempora temporibus tenetur totam veritatis vitae voluptatum! Adipisci asperiores beatae dicta,\r\n            error harum incidunt libero nesciunt odit placeat praesentium quia ratione reiciendis totam! Accusamus aut\r\n            autem consequuntur, cum cupiditate dignissimos eligendi fuga inventore maxime perferendis provident\r\n            repellendus veritatis voluptate. Ad aliquam aperiam dolorem dolores facere modi mollitia rem. A aut\r\n            blanditiis, eum excepturi fuga fugiat in iste laboriosam magni minima molestiae nemo quo, tempore veniam\r\n            vitae! A asperiores autem explicabo ipsa maiores, maxime qui. Adipisci aliquid architecto consectetur cumque\r\n            deleniti dolore dolorem, eum explicabo ipsum iste laborum libero non officia quasi, similique soluta tempore\r\n            ullam? Dolorem fugit illum officiis veritatis voluptatum! Accusantium adipisci aliquid enim eum odio\r\n            quaerat! Adipisci aliquam, aliquid aperiam autem beatae consequuntur eos id illo nesciunt odit quam\r\n            quibusdam quod saepe sunt, tempore temporibus vero! Amet, dolore.', 1, 450000, 300000, 1, '2022-02-07 19:29:28', '2022-02-07 19:29:28'),
(21, 'Only Check Trouser', 'public/uploads/product-03.jpg', 'Only Check Trouser', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto doloribus eius esse sed. Beatae commodi\r\n            delectus dignissimos dolorum explicabo fugiat hic id illum libero magni minus, nemo nobis, possimus quam\r\n            quasi quidem quos reprehenderit tenetur ut veritatis! Accusantium adipisci architecto aspernatur beatae\r\n            blanditiis consectetur culpa cum cumque debitis deserunt dicta eius eligendi et eum excepturi in ipsam modi\r\n            necessitatibus nesciunt, numquam officiis perspiciatis quam quas quos reprehenderit repudiandae, sed\r\n            suscipit tempora temporibus tenetur totam veritatis vitae voluptatum! Adipisci asperiores beatae dicta,\r\n            error harum incidunt libero nesciunt odit placeat praesentium quia ratione reiciendis totam! Accusamus aut\r\n            autem consequuntur, cum cupiditate dignissimos eligendi fuga inventore maxime perferendis provident\r\n            repellendus veritatis voluptate. Ad aliquam aperiam dolorem dolores facere modi mollitia rem. A aut\r\n            blanditiis, eum excepturi fuga fugiat in iste laboriosam magni minima molestiae nemo quo, tempore veniam\r\n            vitae! A asperiores autem explicabo ipsa maiores, maxime qui. Adipisci aliquid architecto consectetur cumque\r\n            deleniti dolore dolorem, eum explicabo ipsum iste laborum libero non officia quasi, similique soluta tempore\r\n            ullam? Dolorem fugit illum officiis veritatis voluptatum! Accusantium adipisci aliquid enim eum odio\r\n            quaerat! Adipisci aliquam, aliquid aperiam autem beatae consequuntur eos id illo nesciunt odit quam\r\n            quibusdam quod saepe sunt, tempore temporibus vero! Amet, dolore.', 1, 180000, NULL, 1, '2022-02-07 19:30:03', '2022-02-07 19:30:03'),
(22, 'Herschel supply', 'public/uploads/product-02.jpg', 'Herschel supply', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto doloribus eius esse sed. Beatae commodi\r\n            delectus dignissimos dolorum explicabo fugiat hic id illum libero magni minus, nemo nobis, possimus quam\r\n            quasi quidem quos reprehenderit tenetur ut veritatis! Accusantium adipisci architecto aspernatur beatae\r\n            blanditiis consectetur culpa cum cumque debitis deserunt dicta eius eligendi et eum excepturi in ipsam modi\r\n            necessitatibus nesciunt, numquam officiis perspiciatis quam quas quos reprehenderit repudiandae, sed\r\n            suscipit tempora temporibus tenetur totam veritatis vitae voluptatum! Adipisci asperiores beatae dicta,\r\n            error harum incidunt libero nesciunt odit placeat praesentium quia ratione reiciendis totam! Accusamus aut\r\n            autem consequuntur, cum cupiditate dignissimos eligendi fuga inventore maxime perferendis provident\r\n            repellendus veritatis voluptate. Ad aliquam aperiam dolorem dolores facere modi mollitia rem. A aut\r\n            blanditiis, eum excepturi fuga fugiat in iste laboriosam magni minima molestiae nemo quo, tempore veniam\r\n            vitae! A asperiores autem explicabo ipsa maiores, maxime qui. Adipisci aliquid architecto consectetur cumque\r\n            deleniti dolore dolorem, eum explicabo ipsum iste laborum libero non officia quasi, similique soluta tempore\r\n            ullam? Dolorem fugit illum officiis veritatis voluptatum! Accusantium adipisci aliquid enim eum odio\r\n            quaerat! Adipisci aliquam, aliquid aperiam autem beatae consequuntur eos id illo nesciunt odit quam\r\n            quibusdam quod saepe sunt, tempore temporibus vero! Amet, dolore.', 1, 600000, 500000, 1, '2022-02-07 19:30:28', '2022-02-07 19:30:28'),
(23, 'Esprit Ruffle Shirt', 'public/uploads/product-01.jpg', 'Esprit Ruffle Shirt', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto doloribus eius esse sed. Beatae commodi\r\n            delectus dignissimos dolorum explicabo fugiat hic id illum libero magni minus, nemo nobis, possimus quam\r\n            quasi quidem quos reprehenderit tenetur ut veritatis! Accusantium adipisci architecto aspernatur beatae\r\n            blanditiis consectetur culpa cum cumque debitis deserunt dicta eius eligendi et eum excepturi in ipsam modi\r\n            necessitatibus nesciunt, numquam officiis perspiciatis quam quas quos reprehenderit repudiandae, sed\r\n            suscipit tempora temporibus tenetur totam veritatis vitae voluptatum! Adipisci asperiores beatae dicta,\r\n            error harum incidunt libero nesciunt odit placeat praesentium quia ratione reiciendis totam! Accusamus aut\r\n            autem consequuntur, cum cupiditate dignissimos eligendi fuga inventore maxime perferendis provident\r\n            repellendus veritatis voluptate. Ad aliquam aperiam dolorem dolores facere modi mollitia rem. A aut\r\n            blanditiis, eum excepturi fuga fugiat in iste laboriosam magni minima molestiae nemo quo, tempore veniam\r\n            vitae! A asperiores autem explicabo ipsa maiores, maxime qui. Adipisci aliquid architecto consectetur cumque\r\n            deleniti dolore dolorem, eum explicabo ipsum iste laborum libero non officia quasi, similique soluta tempore\r\n            ullam? Dolorem fugit illum officiis veritatis voluptatum! Accusantium adipisci aliquid enim eum odio\r\n            quaerat! Adipisci aliquam, aliquid aperiam autem beatae consequuntur eos id illo nesciunt odit quam\r\n            quibusdam quod saepe sunt, tempore temporibus vero! Amet, dolore.', 1, 520000, 500000, 1, '2022-02-07 12:18:53', '2022-02-07 12:18:53'),
(24, 'Square Neck Back', 'public/uploads/product-16.jpg', 'Square Neck Back', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto doloribus eius esse sed. Beatae commodi\r\n            delectus dignissimos dolorum explicabo fugiat hic id illum libero magni minus, nemo nobis, possimus quam\r\n            quasi quidem quos reprehenderit tenetur ut veritatis! Accusantium adipisci architecto aspernatur beatae\r\n            blanditiis consectetur culpa cum cumque debitis deserunt dicta eius eligendi et eum excepturi in ipsam modi\r\n            necessitatibus nesciunt, numquam officiis perspiciatis quam quas quos reprehenderit repudiandae, sed\r\n            suscipit tempora temporibus tenetur totam veritatis vitae voluptatum! Adipisci asperiores beatae dicta,\r\n            error harum incidunt libero nesciunt odit placeat praesentium quia ratione reiciendis totam! Accusamus aut\r\n            autem consequuntur, cum cupiditate dignissimos eligendi fuga inventore maxime perferendis provident\r\n            repellendus veritatis voluptate. Ad aliquam aperiam dolorem dolores facere modi mollitia rem. A aut\r\n            blanditiis, eum excepturi fuga fugiat in iste laboriosam magni minima molestiae nemo quo, tempore veniam\r\n            vitae! A asperiores autem explicabo ipsa maiores, maxime qui. Adipisci aliquid architecto consectetur cumque\r\n            deleniti dolore dolorem, eum explicabo ipsum iste laborum libero non officia quasi, similique soluta tempore\r\n            ullam? Dolorem fugit illum officiis veritatis voluptatum! Accusantium adipisci aliquid enim eum odio\r\n            quaerat! Adipisci aliquam, aliquid aperiam autem beatae consequuntur eos id illo nesciunt odit quam\r\n            quibusdam quod saepe sunt, tempore temporibus vero! Amet, dolore.', 13, 200000, 150000, 1, '2022-02-07 12:19:38', '2022-02-07 12:19:38'),
(25, 'Mini Silver Mesh Watch', 'public/uploads/product-15.jpg', 'Mini Silver Mesh Watch', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam asperiores aspernatur at autem beatae\r\n            consequuntur culpa cum est exercitationem explicabo facilis fugit id illo in, ipsam laboriosam magnam neque\r\n            nesciunt pariatur perspiciatis possimus, praesentium quaerat quia quo reprehenderit tempore, voluptatum. A\r\n            architecto assumenda cupiditate enim fugit laborum libero non provident, tempora, tempore totam voluptate.\r\n            Illo ipsa iusto magnam similique tempore. Excepturi explicabo iure laudantium nesciunt nobis odit voluptate\r\n            voluptatem. Assumenda deleniti dignissimos, dolor error fugit illo inventore, nostrum numquam optio quaerat\r\n            quis unde, voluptates? Asperiores atque consectetur delectus dicta eligendi eos esse harum itaque laudantium\r\n            magnam, numquam odit perferendis provident quae, qui quis sequi soluta velit veniam voluptate. Doloribus\r\n            magnam nemo suscipit! Alias amet aperiam corporis culpa cupiditate debitis dicta ducimus ea eum\r\n            exercitationem facere fuga hic in ipsam magni molestias mollitia, numquam officia perspiciatis provident\r\n            quia quisquam quod repellendus reprehenderit repudiandae, sed sequi sit, tempore ullam ut vel velit vitae\r\n            voluptates. A alias architecto cumque delectus dicta doloribus eius illo inventore ipsa laboriosam laborum\r\n            maxime minima modi molestiae, molestias mollitia nihil numquam perferendis praesentium qui quod sed tempora\r\n            tempore veritatis voluptas voluptatibus voluptatum. Aperiam eius est fuga fugit, incidunt modi molestiae\r\n            officia perspiciatis quae quia repellat similique sunt voluptatibus?', 1, 300000, 200000, 1, '2022-02-07 12:20:09', '2022-02-14 09:38:18'),
(26, 'Pretty Little Thing', 'public/uploads/product-14.jpg', 'Pretty Little Thing', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto doloribus eius esse sed. Beatae commodi\r\n            delectus dignissimos dolorum explicabo fugiat hic id illum libero magni minus, nemo nobis, possimus quam\r\n            quasi quidem quos reprehenderit tenetur ut veritatis! Accusantium adipisci architecto aspernatur beatae\r\n            blanditiis consectetur culpa cum cumque debitis deserunt dicta eius eligendi et eum excepturi in ipsam modi\r\n            necessitatibus nesciunt, numquam officiis perspiciatis quam quas quos reprehenderit repudiandae, sed\r\n            suscipit tempora temporibus tenetur totam veritatis vitae voluptatum! Adipisci asperiores beatae dicta,\r\n            error harum incidunt libero nesciunt odit placeat praesentium quia ratione reiciendis totam! Accusamus aut\r\n            autem consequuntur, cum cupiditate dignissimos eligendi fuga inventore maxime perferendis provident\r\n            repellendus veritatis voluptate. Ad aliquam aperiam dolorem dolores facere modi mollitia rem. A aut\r\n            blanditiis, eum excepturi fuga fugiat in iste laboriosam magni minima molestiae nemo quo, tempore veniam\r\n            vitae! A asperiores autem explicabo ipsa maiores, maxime qui. Adipisci aliquid architecto consectetur cumque\r\n            deleniti dolore dolorem, eum explicabo ipsum iste laborum libero non officia quasi, similique soluta tempore\r\n            ullam? Dolorem fugit illum officiis veritatis voluptatum! Accusantium adipisci aliquid enim eum odio\r\n            quaerat! Adipisci aliquam, aliquid aperiam autem beatae consequuntur eos id illo nesciunt odit quam\r\n            quibusdam quod saepe sunt, tempore temporibus vero! Amet, dolore.', 13, 200000, 190000, 1, '2022-02-07 12:22:31', '2022-02-07 12:22:31'),
(27, 'T-Shirt with Sleeve', 'public/uploads/product-13.jpg', 'T-Shirt with Sleeve', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam asperiores aspernatur at autem beatae\r\n            consequuntur culpa cum est exercitationem explicabo facilis fugit id illo in, ipsam laboriosam magnam neque\r\n            nesciunt pariatur perspiciatis possimus, praesentium quaerat quia quo reprehenderit tempore, voluptatum. A\r\n            architecto assumenda cupiditate enim fugit laborum libero non provident, tempora, tempore totam voluptate.\r\n            Illo ipsa iusto magnam similique tempore. Excepturi explicabo iure laudantium nesciunt nobis odit voluptate\r\n            voluptatem. Assumenda deleniti dignissimos, dolor error fugit illo inventore, nostrum numquam optio quaerat\r\n            quis unde, voluptates? Asperiores atque consectetur delectus dicta eligendi eos esse harum itaque laudantium\r\n            magnam, numquam odit perferendis provident quae, qui quis sequi soluta velit veniam voluptate. Doloribus\r\n            magnam nemo suscipit! Alias amet aperiam corporis culpa cupiditate debitis dicta ducimus ea eum\r\n            exercitationem facere fuga hic in ipsam magni molestias mollitia, numquam officia perspiciatis provident\r\n            quia quisquam quod repellendus reprehenderit repudiandae, sed sequi sit, tempore ullam ut vel velit vitae\r\n            voluptates. A alias architecto cumque delectus dicta doloribus eius illo inventore ipsa laboriosam laborum\r\n            maxime minima modi molestiae, molestias mollitia nihil numquam perferendis praesentium qui quod sed tempora\r\n            tempore veritatis voluptas voluptatibus voluptatum. Aperiam eius est fuga fugit, incidunt modi molestiae\r\n            officia perspiciatis quae quia repellat similique sunt voluptatibus?', 13, 300000, 200000, 1, '2022-02-07 12:23:16', '2022-02-14 09:38:35'),
(28, 'Converse All Star Hi Plimsolls', 'public/uploads/product-09.jpg', 'Converse All Star Hi Plimsolls', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto doloribus eius esse sed. Beatae commodi\r\n            delectus dignissimos dolorum explicabo fugiat hic id illum libero magni minus, nemo nobis, possimus quam\r\n            quasi quidem quos reprehenderit tenetur ut veritatis! Accusantium adipisci architecto aspernatur beatae\r\n            blanditiis consectetur culpa cum cumque debitis deserunt dicta eius eligendi et eum excepturi in ipsam modi\r\n            necessitatibus nesciunt, numquam officiis perspiciatis quam quas quos reprehenderit repudiandae, sed\r\n            suscipit tempora temporibus tenetur totam veritatis vitae voluptatum! Adipisci asperiores beatae dicta,\r\n            error harum incidunt libero nesciunt odit placeat praesentium quia ratione reiciendis totam! Accusamus aut\r\n            autem consequuntur, cum cupiditate dignissimos eligendi fuga inventore maxime perferendis provident\r\n            repellendus veritatis voluptate. Ad aliquam aperiam dolorem dolores facere modi mollitia rem. A aut\r\n            blanditiis, eum excepturi fuga fugiat in iste laboriosam magni minima molestiae nemo quo, tempore veniam\r\n            vitae! A asperiores autem explicabo ipsa maiores, maxime qui. Adipisci aliquid architecto consectetur cumque\r\n            deleniti dolore dolorem, eum explicabo ipsum iste laborum libero non officia quasi, similique soluta tempore\r\n            ullam? Dolorem fugit illum officiis veritatis voluptatum! Accusantium adipisci aliquid enim eum odio\r\n            quaerat! Adipisci aliquam, aliquid aperiam autem beatae consequuntur eos id illo nesciunt odit quam\r\n            quibusdam quod saepe sunt, tempore temporibus vero! Amet, dolore.', 13, 1000000, 900000, 1, '2022-02-07 12:24:30', '2022-02-07 12:24:30'),
(29, 'Femme T-Shirt In Stripe', 'public/uploads/product-10.jpg', 'Femme T-Shirt In Stripe', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto doloribus eius esse sed. Beatae commodi\r\n            delectus dignissimos dolorum explicabo fugiat hic id illum libero magni minus, nemo nobis, possimus quam\r\n            quasi quidem quos reprehenderit tenetur ut veritatis! Accusantium adipisci architecto aspernatur beatae\r\n            blanditiis consectetur culpa cum cumque debitis deserunt dicta eius eligendi et eum excepturi in ipsam modi\r\n            necessitatibus nesciunt, numquam officiis perspiciatis quam quas quos reprehenderit repudiandae, sed\r\n            suscipit tempora temporibus tenetur totam veritatis vitae voluptatum! Adipisci asperiores beatae dicta,\r\n            error harum incidunt libero nesciunt odit placeat praesentium quia ratione reiciendis totam! Accusamus aut\r\n            autem consequuntur, cum cupiditate dignissimos eligendi fuga inventore maxime perferendis provident\r\n            repellendus veritatis voluptate. Ad aliquam aperiam dolorem dolores facere modi mollitia rem. A aut\r\n            blanditiis, eum excepturi fuga fugiat in iste laboriosam magni minima molestiae nemo quo, tempore veniam\r\n            vitae! A asperiores autem explicabo ipsa maiores, maxime qui. Adipisci aliquid architecto consectetur cumque\r\n            deleniti dolore dolorem, eum explicabo ipsum iste laborum libero non officia quasi, similique soluta tempore\r\n            ullam? Dolorem fugit illum officiis veritatis voluptatum! Accusantium adipisci aliquid enim eum odio\r\n            quaerat! Adipisci aliquam, aliquid aperiam autem beatae consequuntur eos id illo nesciunt odit quam\r\n            quibusdam quod saepe sunt, tempore temporibus vero! Amet, dolore.', 13, 800000, NULL, 1, '2022-02-07 12:24:56', '2022-02-07 12:24:56'),
(30, 'Herschel supply', 'public/uploads/product-11.jpg', 'Herschel supply', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto doloribus eius esse sed. Beatae commodi\r\n            delectus dignissimos dolorum explicabo fugiat hic id illum libero magni minus, nemo nobis, possimus quam\r\n            quasi quidem quos reprehenderit tenetur ut veritatis! Accusantium adipisci architecto aspernatur beatae\r\n            blanditiis consectetur culpa cum cumque debitis deserunt dicta eius eligendi et eum excepturi in ipsam modi\r\n            necessitatibus nesciunt, numquam officiis perspiciatis quam quas quos reprehenderit repudiandae, sed\r\n            suscipit tempora temporibus tenetur totam veritatis vitae voluptatum! Adipisci asperiores beatae dicta,\r\n            error harum incidunt libero nesciunt odit placeat praesentium quia ratione reiciendis totam! Accusamus aut\r\n            autem consequuntur, cum cupiditate dignissimos eligendi fuga inventore maxime perferendis provident\r\n            repellendus veritatis voluptate. Ad aliquam aperiam dolorem dolores facere modi mollitia rem. A aut\r\n            blanditiis, eum excepturi fuga fugiat in iste laboriosam magni minima molestiae nemo quo, tempore veniam\r\n            vitae! A asperiores autem explicabo ipsa maiores, maxime qui. Adipisci aliquid architecto consectetur cumque\r\n            deleniti dolore dolorem, eum explicabo ipsum iste laborum libero non officia quasi, similique soluta tempore\r\n            ullam? Dolorem fugit illum officiis veritatis voluptatum! Accusantium adipisci aliquid enim eum odio\r\n            quaerat! Adipisci aliquam, aliquid aperiam autem beatae consequuntur eos id illo nesciunt odit quam\r\n            quibusdam quod saepe sunt, tempore temporibus vero! Amet, dolore.', 1, 600000, NULL, 1, '2022-02-07 12:25:38', '2022-02-07 12:25:38'),
(31, 'Herschel supply', 'public/uploads/product-12.jpg', 'Herschel supply', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto doloribus eius esse sed. Beatae commodi\r\n            delectus dignissimos dolorum explicabo fugiat hic id illum libero magni minus, nemo nobis, possimus quam\r\n            quasi quidem quos reprehenderit tenetur ut veritatis! Accusantium adipisci architecto aspernatur beatae\r\n            blanditiis consectetur culpa cum cumque debitis deserunt dicta eius eligendi et eum excepturi in ipsam modi\r\n            necessitatibus nesciunt, numquam officiis perspiciatis quam quas quos reprehenderit repudiandae, sed\r\n            suscipit tempora temporibus tenetur totam veritatis vitae voluptatum! Adipisci asperiores beatae dicta,\r\n            error harum incidunt libero nesciunt odit placeat praesentium quia ratione reiciendis totam! Accusamus aut\r\n            autem consequuntur, cum cupiditate dignissimos eligendi fuga inventore maxime perferendis provident\r\n            repellendus veritatis voluptate. Ad aliquam aperiam dolorem dolores facere modi mollitia rem. A aut\r\n            blanditiis, eum excepturi fuga fugiat in iste laboriosam magni minima molestiae nemo quo, tempore veniam\r\n            vitae! A asperiores autem explicabo ipsa maiores, maxime qui. Adipisci aliquid architecto consectetur cumque\r\n            deleniti dolore dolorem, eum explicabo ipsum iste laborum libero non officia quasi, similique soluta tempore\r\n            ullam? Dolorem fugit illum officiis veritatis voluptatum! Accusantium adipisci aliquid enim eum odio\r\n            quaerat! Adipisci aliquam, aliquid aperiam autem beatae consequuntur eos id illo nesciunt odit quam\r\n            quibusdam quod saepe sunt, tempore temporibus vero! Amet, dolore.', 13, 99000, NULL, 1, '2022-02-07 12:26:17', '2022-02-07 12:26:17'),
(32, 'Pieces Metallic Printed', 'public/uploads/product-08.jpg', 'Pieces Metallic Printed', 'Pieces Metallic Printed', 1, 700000, 650000, 1, '2022-02-07 12:26:50', '2022-02-07 12:26:50'),
(33, 'Shirt in Stretch Cotton', 'public/uploads/product-07.jpg', 'Shirt in Stretch Cotton', 'Shirt in Stretch Cotton', 13, 600000, 555000, 1, '2022-02-07 12:27:36', '2022-02-07 12:27:36'),
(34, 'Vintage Inspired Classic', 'public/uploads/product-06.jpg', 'Vintage Inspired Classic', 'Vintage Inspired Classic', 13, 300000, NULL, 1, '2022-02-07 12:28:14', '2022-02-07 12:28:14');
INSERT INTO `products` (`id`, `name`, `thumb`, `description`, `content`, `menu_id`, `price`, `price_sale`, `active`, `created_at`, `updated_at`) VALUES
(35, 'Front Pocket Jumper', 'public/uploads/product-05.jpg', 'Front Pocket Jumper', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam asperiores aspernatur at autem beatae\r\n            consequuntur culpa cum est exercitationem explicabo facilis fugit id illo in, ipsam laboriosam magnam neque\r\n            nesciunt pariatur perspiciatis possimus, praesentium quaerat quia quo reprehenderit tempore, voluptatum. A\r\n            architecto assumenda cupiditate enim fugit laborum libero non provident, tempora, tempore totam voluptate.\r\n            Illo ipsa iusto magnam similique tempore. Excepturi explicabo iure laudantium nesciunt nobis odit voluptate\r\n            voluptatem. Assumenda deleniti dignissimos, dolor error fugit illo inventore, nostrum numquam optio quaerat\r\n            quis unde, voluptates? Asperiores atque consectetur delectus dicta eligendi eos esse harum itaque laudantium\r\n            magnam, numquam odit perferendis provident quae, qui quis sequi soluta velit veniam voluptate. Doloribus\r\n            magnam nemo suscipit! Alias amet aperiam corporis culpa cupiditate debitis dicta ducimus ea eum\r\n            exercitationem facere fuga hic in ipsam magni molestias mollitia, numquam officia perspiciatis provident\r\n            quia quisquam quod repellendus reprehenderit repudiandae, sed sequi sit, tempore ullam ut vel velit vitae\r\n            voluptates. A alias architecto cumque delectus dicta doloribus eius illo inventore ipsa laboriosam laborum\r\n            maxime minima modi molestiae, molestias mollitia nihil numquam perferendis praesentium qui quod sed tempora\r\n            tempore veritatis voluptas voluptatibus voluptatum. Aperiam eius est fuga fugit, incidunt modi molestiae\r\n            officia perspiciatis quae quia repellat similique sunt voluptatibus?', 13, 200000, NULL, 1, '2022-02-07 12:28:51', '2022-02-14 09:38:55'),
(36, 'Classic Trench Coat', 'public/uploads/product-04.jpg', 'Classic Trench Coat', 'Classic Trench Coat', 1, 450000, 300000, 1, '2022-02-07 12:29:28', '2022-02-07 12:29:28'),
(37, 'Esprit Ruffle Shirt', 'public/uploads/product-01.jpg', 'Esprit Ruffle Shirt', 'Esprit Ruffle Shirt', 1, 520000, 500000, 1, '2022-02-07 12:18:53', '2022-02-07 12:18:53'),
(38, 'Square Neck Back', 'public/uploads/product-16.jpg', 'Square Neck Back', 'Square Neck Back', 13, 200000, 150000, 1, '2022-02-07 12:19:38', '2022-02-07 12:19:38'),
(39, 'Mini Silver Mesh Watch', 'public/uploads/product-15.jpg', 'Mini Silver Mesh Watch', 'Mini Silver Mesh Watch', 1, 300000, 200000, 1, '2022-02-07 12:20:09', '2022-02-07 12:20:09'),
(40, 'Pretty Little Thing', 'public/uploads/product-14.jpg', 'Pretty Little Thing', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam asperiores aspernatur at autem beatae\r\n            consequuntur culpa cum est exercitationem explicabo facilis fugit id illo in, ipsam laboriosam magnam neque\r\n            nesciunt pariatur perspiciatis possimus, praesentium quaerat quia quo reprehenderit tempore, voluptatum. A\r\n            architecto assumenda cupiditate enim fugit laborum libero non provident, tempora, tempore totam voluptate.\r\n            Illo ipsa iusto magnam similique tempore. Excepturi explicabo iure laudantium nesciunt nobis odit voluptate\r\n            voluptatem. Assumenda deleniti dignissimos, dolor error fugit illo inventore, nostrum numquam optio quaerat\r\n            quis unde, voluptates? Asperiores atque consectetur delectus dicta eligendi eos esse harum itaque laudantium\r\n            magnam, numquam odit perferendis provident quae, qui quis sequi soluta velit veniam voluptate. Doloribus\r\n            magnam nemo suscipit! Alias amet aperiam corporis culpa cupiditate debitis dicta ducimus ea eum\r\n            exercitationem facere fuga hic in ipsam magni molestias mollitia, numquam officia perspiciatis provident\r\n            quia quisquam quod repellendus reprehenderit repudiandae, sed sequi sit, tempore ullam ut vel velit vitae\r\n            voluptates. A alias architecto cumque delectus dicta doloribus eius illo inventore ipsa laboriosam laborum\r\n            maxime minima modi molestiae, molestias mollitia nihil numquam perferendis praesentium qui quod sed tempora\r\n            tempore veritatis voluptas voluptatibus voluptatum. Aperiam eius est fuga fugit, incidunt modi molestiae\r\n            officia perspiciatis quae quia repellat similique sunt voluptatibus?', 13, 200000, 190000, 1, '2022-02-07 12:22:31', '2022-02-14 09:37:53'),
(41, 'T-Shirt with Sleeve', 'public/uploads/product-13.jpg', 'T-Shirt with Sleeve', 'T-Shirt with Sleeve', 13, 300000, 200000, 1, '2022-02-07 12:23:16', '2022-02-07 12:23:16'),
(42, 'Converse All Star Hi Plimsolls', 'public/uploads/product-09.jpg', 'Converse All Star Hi Plimsolls', 'Converse All Star Hi Plimsolls', 13, 1000000, 900000, 1, '2022-02-07 12:24:30', '2022-02-07 12:24:30'),
(43, 'Femme T-Shirt In Stripe', 'public/uploads/product-10.jpg', 'Femme T-Shirt In Stripe', 'Femme T-Shirt In Stripe', 13, 800000, NULL, 1, '2022-02-07 12:24:56', '2022-02-07 12:24:56'),
(44, 'Herschel supply', 'public/uploads/product-11.jpg', 'Herschel supply', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam asperiores aspernatur at autem beatae\r\n            consequuntur culpa cum est exercitationem explicabo facilis fugit id illo in, ipsam laboriosam magnam neque\r\n            nesciunt pariatur perspiciatis possimus, praesentium quaerat quia quo reprehenderit tempore, voluptatum. A\r\n            architecto assumenda cupiditate enim fugit laborum libero non provident, tempora, tempore totam voluptate.\r\n            Illo ipsa iusto magnam similique tempore. Excepturi explicabo iure laudantium nesciunt nobis odit voluptate\r\n            voluptatem. Assumenda deleniti dignissimos, dolor error fugit illo inventore, nostrum numquam optio quaerat\r\n            quis unde, voluptates? Asperiores atque consectetur delectus dicta eligendi eos esse harum itaque laudantium\r\n            magnam, numquam odit perferendis provident quae, qui quis sequi soluta velit veniam voluptate. Doloribus\r\n            magnam nemo suscipit! Alias amet aperiam corporis culpa cupiditate debitis dicta ducimus ea eum\r\n            exercitationem facere fuga hic in ipsam magni molestias mollitia, numquam officia perspiciatis provident\r\n            quia quisquam quod repellendus reprehenderit repudiandae, sed sequi sit, tempore ullam ut vel velit vitae\r\n            voluptates. A alias architecto cumque delectus dicta doloribus eius illo inventore ipsa laboriosam laborum\r\n            maxime minima modi molestiae, molestias mollitia nihil numquam perferendis praesentium qui quod sed tempora\r\n            tempore veritatis voluptas voluptatibus voluptatum. Aperiam eius est fuga fugit, incidunt modi molestiae\r\n            officia perspiciatis quae quia repellat similique sunt voluptatibus?', 1, 600000, NULL, 1, '2022-02-07 12:25:38', '2022-02-14 09:36:32'),
(45, 'Herschel supply', 'public/uploads/product-12.jpg', 'Herschel supply', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam asperiores aspernatur at autem beatae\r\n            consequuntur culpa cum est exercitationem explicabo facilis fugit id illo in, ipsam laboriosam magnam neque\r\n            nesciunt pariatur perspiciatis possimus, praesentium quaerat quia quo reprehenderit tempore, voluptatum. A\r\n            architecto assumenda cupiditate enim fugit laborum libero non provident, tempora, tempore totam voluptate.\r\n            Illo ipsa iusto magnam similique tempore. Excepturi explicabo iure laudantium nesciunt nobis odit voluptate\r\n            voluptatem. Assumenda deleniti dignissimos, dolor error fugit illo inventore, nostrum numquam optio quaerat\r\n            quis unde, voluptates? Asperiores atque consectetur delectus dicta eligendi eos esse harum itaque laudantium\r\n            magnam, numquam odit perferendis provident quae, qui quis sequi soluta velit veniam voluptate. Doloribus\r\n            magnam nemo suscipit! Alias amet aperiam corporis culpa cupiditate debitis dicta ducimus ea eum\r\n            exercitationem facere fuga hic in ipsam magni molestias mollitia, numquam officia perspiciatis provident\r\n            quia quisquam quod repellendus reprehenderit repudiandae, sed sequi sit, tempore ullam ut vel velit vitae\r\n            voluptates. A alias architecto cumque delectus dicta doloribus eius illo inventore ipsa laboriosam laborum\r\n            maxime minima modi molestiae, molestias mollitia nihil numquam perferendis praesentium qui quod sed tempora\r\n            tempore veritatis voluptas voluptatibus voluptatum. Aperiam eius est fuga fugit, incidunt modi molestiae\r\n            officia perspiciatis quae quia repellat similique sunt voluptatibus?', 13, 99000, NULL, 1, '2022-02-07 12:26:17', '2022-02-14 09:36:16'),
(46, 'Pieces Metallic Printed', 'public/uploads/product-08.jpg', 'Pieces Metallic Printed', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam asperiores aspernatur at autem beatae\r\n            consequuntur culpa cum est exercitationem explicabo facilis fugit id illo in, ipsam laboriosam magnam neque\r\n            nesciunt pariatur perspiciatis possimus, praesentium quaerat quia quo reprehenderit tempore, voluptatum. A\r\n            architecto assumenda cupiditate enim fugit laborum libero non provident, tempora, tempore totam voluptate.\r\n            Illo ipsa iusto magnam similique tempore. Excepturi explicabo iure laudantium nesciunt nobis odit voluptate\r\n            voluptatem. Assumenda deleniti dignissimos, dolor error fugit illo inventore, nostrum numquam optio quaerat\r\n            quis unde, voluptates? Asperiores atque consectetur delectus dicta eligendi eos esse harum itaque laudantium\r\n            magnam, numquam odit perferendis provident quae, qui quis sequi soluta velit veniam voluptate. Doloribus\r\n            magnam nemo suscipit! Alias amet aperiam corporis culpa cupiditate debitis dicta ducimus ea eum\r\n            exercitationem facere fuga hic in ipsam magni molestias mollitia, numquam officia perspiciatis provident\r\n            quia quisquam quod repellendus reprehenderit repudiandae, sed sequi sit, tempore ullam ut vel velit vitae\r\n            voluptates. A alias architecto cumque delectus dicta doloribus eius illo inventore ipsa laboriosam laborum\r\n            maxime minima modi molestiae, molestias mollitia nihil numquam perferendis praesentium qui quod sed tempora\r\n            tempore veritatis voluptas voluptatibus voluptatum. Aperiam eius est fuga fugit, incidunt modi molestiae\r\n            officia perspiciatis quae quia repellat similique sunt voluptatibus?', 1, 700000, 650000, 1, '2022-02-07 12:26:50', '2022-02-14 09:35:35'),
(47, 'Shirt in Stretch Cotton', 'public/uploads/product-07.jpg', 'Shirt in Stretch Cotton', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam asperiores aspernatur at autem beatae\r\n            consequuntur culpa cum est exercitationem explicabo facilis fugit id illo in, ipsam laboriosam magnam neque\r\n            nesciunt pariatur perspiciatis possimus, praesentium quaerat quia quo reprehenderit tempore, voluptatum. A\r\n            architecto assumenda cupiditate enim fugit laborum libero non provident, tempora, tempore totam voluptate.\r\n            Illo ipsa iusto magnam similique tempore. Excepturi explicabo iure laudantium nesciunt nobis odit voluptate\r\n            voluptatem. Assumenda deleniti dignissimos, dolor error fugit illo inventore, nostrum numquam optio quaerat\r\n            quis unde, voluptates? Asperiores atque consectetur delectus dicta eligendi eos esse harum itaque laudantium\r\n            magnam, numquam odit perferendis provident quae, qui quis sequi soluta velit veniam voluptate. Doloribus\r\n            magnam nemo suscipit! Alias amet aperiam corporis culpa cupiditate debitis dicta ducimus ea eum\r\n            exercitationem facere fuga hic in ipsam magni molestias mollitia, numquam officia perspiciatis provident\r\n            quia quisquam quod repellendus reprehenderit repudiandae, sed sequi sit, tempore ullam ut vel velit vitae\r\n            voluptates. A alias architecto cumque delectus dicta doloribus eius illo inventore ipsa laboriosam laborum\r\n            maxime minima modi molestiae, molestias mollitia nihil numquam perferendis praesentium qui quod sed tempora\r\n            tempore veritatis voluptas voluptatibus voluptatum. Aperiam eius est fuga fugit, incidunt modi molestiae\r\n            officia perspiciatis quae quia repellat similique sunt voluptatibus?', 13, 600000, 555000, 1, '2022-02-07 12:27:36', '2022-02-14 09:35:25'),
(48, 'Vintage Inspired Classic', 'public/uploads/product-06.jpg', 'Vintage Inspired Classic', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam asperiores aspernatur at autem beatae\r\n            consequuntur culpa cum est exercitationem explicabo facilis fugit id illo in, ipsam laboriosam magnam neque\r\n            nesciunt pariatur perspiciatis possimus, praesentium quaerat quia quo reprehenderit tempore, voluptatum. A\r\n            architecto assumenda cupiditate enim fugit laborum libero non provident, tempora, tempore totam voluptate.\r\n            Illo ipsa iusto magnam similique tempore. Excepturi explicabo iure laudantium nesciunt nobis odit voluptate\r\n            voluptatem. Assumenda deleniti dignissimos, dolor error fugit illo inventore, nostrum numquam optio quaerat\r\n            quis unde, voluptates? Asperiores atque consectetur delectus dicta eligendi eos esse harum itaque laudantium\r\n            magnam, numquam odit perferendis provident quae, qui quis sequi soluta velit veniam voluptate. Doloribus\r\n            magnam nemo suscipit! Alias amet aperiam corporis culpa cupiditate debitis dicta ducimus ea eum\r\n            exercitationem facere fuga hic in ipsam magni molestias mollitia, numquam officia perspiciatis provident\r\n            quia quisquam quod repellendus reprehenderit repudiandae, sed sequi sit, tempore ullam ut vel velit vitae\r\n            voluptates. A alias architecto cumque delectus dicta doloribus eius illo inventore ipsa laboriosam laborum\r\n            maxime minima modi molestiae, molestias mollitia nihil numquam perferendis praesentium qui quod sed tempora\r\n            tempore veritatis voluptas voluptatibus voluptatum. Aperiam eius est fuga fugit, incidunt modi molestiae\r\n            officia perspiciatis quae quia repellat similique sunt voluptatibus?', 13, 300000, NULL, 1, '2022-02-07 12:28:14', '2022-02-14 09:35:18'),
(49, 'Front Pocket Jumper', 'public/uploads/product-05.jpg', 'Front Pocket Jumper', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam asperiores aspernatur at autem beatae\r\n            consequuntur culpa cum est exercitationem explicabo facilis fugit id illo in, ipsam laboriosam magnam neque\r\n            nesciunt pariatur perspiciatis possimus, praesentium quaerat quia quo reprehenderit tempore, voluptatum. A\r\n            architecto assumenda cupiditate enim fugit laborum libero non provident, tempora, tempore totam voluptate.\r\n            Illo ipsa iusto magnam similique tempore. Excepturi explicabo iure laudantium nesciunt nobis odit voluptate\r\n            voluptatem. Assumenda deleniti dignissimos, dolor error fugit illo inventore, nostrum numquam optio quaerat\r\n            quis unde, voluptates? Asperiores atque consectetur delectus dicta eligendi eos esse harum itaque laudantium\r\n            magnam, numquam odit perferendis provident quae, qui quis sequi soluta velit veniam voluptate. Doloribus\r\n            magnam nemo suscipit! Alias amet aperiam corporis culpa cupiditate debitis dicta ducimus ea eum\r\n            exercitationem facere fuga hic in ipsam magni molestias mollitia, numquam officia perspiciatis provident\r\n            quia quisquam quod repellendus reprehenderit repudiandae, sed sequi sit, tempore ullam ut vel velit vitae\r\n            voluptates. A alias architecto cumque delectus dicta doloribus eius illo inventore ipsa laboriosam laborum\r\n            maxime minima modi molestiae, molestias mollitia nihil numquam perferendis praesentium qui quod sed tempora\r\n            tempore veritatis voluptas voluptatibus voluptatum. Aperiam eius est fuga fugit, incidunt modi molestiae\r\n            officia perspiciatis quae quia repellat similique sunt voluptatibus?', 13, 200000, NULL, 1, '2022-02-07 12:28:51', '2022-02-14 09:35:00'),
(50, 'Classic Trench Coat', 'public/uploads/product-04.jpg', 'Classic Trench Coat', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam asperiores aspernatur at autem beatae\r\n            consequuntur culpa cum est exercitationem explicabo facilis fugit id illo in, ipsam laboriosam magnam neque\r\n            nesciunt pariatur perspiciatis possimus, praesentium quaerat quia quo reprehenderit tempore, voluptatum. A\r\n            architecto assumenda cupiditate enim fugit laborum libero non provident, tempora, tempore totam voluptate.\r\n            Illo ipsa iusto magnam similique tempore. Excepturi explicabo iure laudantium nesciunt nobis odit voluptate\r\n            voluptatem. Assumenda deleniti dignissimos, dolor error fugit illo inventore, nostrum numquam optio quaerat\r\n            quis unde, voluptates? Asperiores atque consectetur delectus dicta eligendi eos esse harum itaque laudantium\r\n            magnam, numquam odit perferendis provident quae, qui quis sequi soluta velit veniam voluptate. Doloribus\r\n            magnam nemo suscipit! Alias amet aperiam corporis culpa cupiditate debitis dicta ducimus ea eum\r\n            exercitationem facere fuga hic in ipsam magni molestias mollitia, numquam officia perspiciatis provident\r\n            quia quisquam quod repellendus reprehenderit repudiandae, sed sequi sit, tempore ullam ut vel velit vitae\r\n            voluptates. A alias architecto cumque delectus dicta doloribus eius illo inventore ipsa laboriosam laborum\r\n            maxime minima modi molestiae, molestias mollitia nihil numquam perferendis praesentium qui quod sed tempora\r\n            tempore veritatis voluptas voluptatibus voluptatum. Aperiam eius est fuga fugit, incidunt modi molestiae\r\n            officia perspiciatis quae quia repellat similique sunt voluptatibus?', 1, 450000, 300000, 1, '2022-02-07 12:29:28', '2022-02-14 09:34:48'),
(51, 'Only Check Trouser', 'public/uploads/product-03.jpg', 'Only Check Trouser', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam asperiores aspernatur at autem beatae\r\n            consequuntur culpa cum est exercitationem explicabo facilis fugit id illo in, ipsam laboriosam magnam neque\r\n            nesciunt pariatur perspiciatis possimus, praesentium quaerat quia quo reprehenderit tempore, voluptatum. A\r\n            architecto assumenda cupiditate enim fugit laborum libero non provident, tempora, tempore totam voluptate.\r\n            Illo ipsa iusto magnam similique tempore. Excepturi explicabo iure laudantium nesciunt nobis odit voluptate\r\n            voluptatem. Assumenda deleniti dignissimos, dolor error fugit illo inventore, nostrum numquam optio quaerat\r\n            quis unde, voluptates? Asperiores atque consectetur delectus dicta eligendi eos esse harum itaque laudantium\r\n            magnam, numquam odit perferendis provident quae, qui quis sequi soluta velit veniam voluptate. Doloribus\r\n            magnam nemo suscipit! Alias amet aperiam corporis culpa cupiditate debitis dicta ducimus ea eum\r\n            exercitationem facere fuga hic in ipsam magni molestias mollitia, numquam officia perspiciatis provident\r\n            quia quisquam quod repellendus reprehenderit repudiandae, sed sequi sit, tempore ullam ut vel velit vitae\r\n            voluptates. A alias architecto cumque delectus dicta doloribus eius illo inventore ipsa laboriosam laborum\r\n            maxime minima modi molestiae, molestias mollitia nihil numquam perferendis praesentium qui quod sed tempora\r\n            tempore veritatis voluptas voluptatibus voluptatum. Aperiam eius est fuga fugit, incidunt modi molestiae\r\n            officia perspiciatis quae quia repellat similique sunt voluptatibus?', 1, 180000, NULL, 1, '2022-02-07 12:30:03', '2022-02-14 09:34:38'),
(52, 'Herschel supply', 'public/uploads/product-02.jpg', 'Herschel supply', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam asperiores aspernatur at autem beatae\r\n            consequuntur culpa cum est exercitationem explicabo facilis fugit id illo in, ipsam laboriosam magnam neque\r\n            nesciunt pariatur perspiciatis possimus, praesentium quaerat quia quo reprehenderit tempore, voluptatum. A\r\n            architecto assumenda cupiditate enim fugit laborum libero non provident, tempora, tempore totam voluptate.\r\n            Illo ipsa iusto magnam similique tempore. Excepturi explicabo iure laudantium nesciunt nobis odit voluptate\r\n            voluptatem. Assumenda deleniti dignissimos, dolor error fugit illo inventore, nostrum numquam optio quaerat\r\n            quis unde, voluptates? Asperiores atque consectetur delectus dicta eligendi eos esse harum itaque laudantium\r\n            magnam, numquam odit perferendis provident quae, qui quis sequi soluta velit veniam voluptate. Doloribus\r\n            magnam nemo suscipit! Alias amet aperiam corporis culpa cupiditate debitis dicta ducimus ea eum\r\n            exercitationem facere fuga hic in ipsam magni molestias mollitia, numquam officia perspiciatis provident\r\n            quia quisquam quod repellendus reprehenderit repudiandae, sed sequi sit, tempore ullam ut vel velit vitae\r\n            voluptates. A alias architecto cumque delectus dicta doloribus eius illo inventore ipsa laboriosam laborum\r\n            maxime minima modi molestiae, molestias mollitia nihil numquam perferendis praesentium qui quod sed tempora\r\n            tempore veritatis voluptas voluptatibus voluptatum. Aperiam eius est fuga fugit, incidunt modi molestiae\r\n            officia perspiciatis quae quia repellat similique sunt voluptatibus?', 1, 600000, 500000, 1, '2022-02-07 12:30:28', '2022-02-14 09:34:22'),
(53, 'Only Check Trouser', 'public/uploads/product-03.jpg', 'Only Check Trouser', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam asperiores aspernatur at autem beatae\r\n            consequuntur culpa cum est exercitationem explicabo facilis fugit id illo in, ipsam laboriosam magnam neque\r\n            nesciunt pariatur perspiciatis possimus, praesentium quaerat quia quo reprehenderit tempore, voluptatum. A\r\n            architecto assumenda cupiditate enim fugit laborum libero non provident, tempora, tempore totam voluptate.\r\n            Illo ipsa iusto magnam similique tempore. Excepturi explicabo iure laudantium nesciunt nobis odit voluptate\r\n            voluptatem. Assumenda deleniti dignissimos, dolor error fugit illo inventore, nostrum numquam optio quaerat\r\n            quis unde, voluptates? Asperiores atque consectetur delectus dicta eligendi eos esse harum itaque laudantium\r\n            magnam, numquam odit perferendis provident quae, qui quis sequi soluta velit veniam voluptate. Doloribus\r\n            magnam nemo suscipit! Alias amet aperiam corporis culpa cupiditate debitis dicta ducimus ea eum\r\n            exercitationem facere fuga hic in ipsam magni molestias mollitia, numquam officia perspiciatis provident\r\n            quia quisquam quod repellendus reprehenderit repudiandae, sed sequi sit, tempore ullam ut vel velit vitae\r\n            voluptates. A alias architecto cumque delectus dicta doloribus eius illo inventore ipsa laboriosam laborum\r\n            maxime minima modi molestiae, molestias mollitia nihil numquam perferendis praesentium qui quod sed tempora\r\n            tempore veritatis voluptas voluptatibus voluptatum. Aperiam eius est fuga fugit, incidunt modi molestiae\r\n            officia perspiciatis quae quia repellat similique sunt voluptatibus?', 1, 180000, NULL, 1, '2022-02-07 12:30:03', '2022-02-14 09:34:15'),
(54, 'Herschel supply', 'public/uploads/product-02.jpg', 'Herschel supply', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam asperiores aspernatur at autem beatae\r\n            consequuntur culpa cum est exercitationem explicabo facilis fugit id illo in, ipsam laboriosam magnam neque\r\n            nesciunt pariatur perspiciatis possimus, praesentium quaerat quia quo reprehenderit tempore, voluptatum. A\r\n            architecto assumenda cupiditate enim fugit laborum libero non provident, tempora, tempore totam voluptate.\r\n            Illo ipsa iusto magnam similique tempore. Excepturi explicabo iure laudantium nesciunt nobis odit voluptate\r\n            voluptatem. Assumenda deleniti dignissimos, dolor error fugit illo inventore, nostrum numquam optio quaerat\r\n            quis unde, voluptates? Asperiores atque consectetur delectus dicta eligendi eos esse harum itaque laudantium\r\n            magnam, numquam odit perferendis provident quae, qui quis sequi soluta velit veniam voluptate. Doloribus\r\n            magnam nemo suscipit! Alias amet aperiam corporis culpa cupiditate debitis dicta ducimus ea eum\r\n            exercitationem facere fuga hic in ipsam magni molestias mollitia, numquam officia perspiciatis provident\r\n            quia quisquam quod repellendus reprehenderit repudiandae, sed sequi sit, tempore ullam ut vel velit vitae\r\n            voluptates. A alias architecto cumque delectus dicta doloribus eius illo inventore ipsa laboriosam laborum\r\n            maxime minima modi molestiae, molestias mollitia nihil numquam perferendis praesentium qui quod sed tempora\r\n            tempore veritatis voluptas voluptatibus voluptatum. Aperiam eius est fuga fugit, incidunt modi molestiae\r\n            officia perspiciatis quae quia repellat similique sunt voluptatibus?', 1, 600000, 500000, 1, '2022-02-07 12:30:28', '2022-02-14 09:32:46');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_by` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `name`, `url`, `thumb`, `sort_by`, `active`, `created_at`, `updated_at`) VALUES
(8, 'Quần áo 1', '#', 'public/uploads/slide-03.jpg', 1, 1, '2022-02-07 07:23:45', '2022-02-07 07:23:45'),
(9, 'Quần áo 2', '#', 'public/uploads/slide-02.jpg', 1, 1, '2022-02-07 07:24:00', '2022-02-07 07:24:00'),
(10, 'Quần áo 3', '#', 'public/uploads/slide-01.jpg', 1, 1, '2022-02-07 07:24:18', '2022-02-07 07:24:18');

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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin123@gmail.com', NULL, '$2y$10$ClGztM/E03xAO1Bs9M7Hee1TiDREzIYPQNrU/102Gn9vXafchmHNS', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
