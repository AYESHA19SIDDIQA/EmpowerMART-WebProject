-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 29, 2024 at 08:18 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_dashboards`
--

CREATE TABLE `admin_dashboards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `config` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_dashboards`
--

INSERT INTO `admin_dashboards` (`id`, `user_id`, `config`, `created_at`, `updated_at`) VALUES
(1, 2, '[]', '2024-12-29 12:47:04', '2024-12-29 12:47:04'),
(2, 4, '[]', '2024-12-29 13:01:08', '2024-12-29 13:01:08'),
(3, 5, '[]', '2024-12-29 13:13:54', '2024-12-29 13:13:54');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `cover` text DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `cover`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Fruits', 'fruits', NULL, NULL, '2024-12-29 12:48:28', '2024-12-29 12:48:28'),
(2, 'Vegetables', 'vegetables', NULL, NULL, '2024-12-29 12:52:38', '2024-12-29 12:52:38'),
(3, 'Dry Fruits', 'dry-fruits', NULL, NULL, '2024-12-29 13:02:30', '2024-12-29 13:02:30'),
(4, 'Juices', 'juices', NULL, NULL, '2024-12-29 13:24:32', '2024-12-29 13:24:32');

-- --------------------------------------------------------

--
-- Table structure for table `checkouts`
--

CREATE TABLE `checkouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `postcode` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `order_notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) DEFAULT NULL,
  `collection_name` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(255) DEFAULT NULL,
  `disk` varchar(255) NOT NULL,
  `conversions_disk` varchar(255) DEFAULT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `manipulations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`manipulations`)),
  `custom_properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`custom_properties`)),
  `generated_conversions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`generated_conversions`)),
  `responsive_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`responsive_images`)),
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `custom_properties`, `generated_conversions`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\Category', 1, '06973412-4cfc-4a48-b3a8-adf9036581a9', 'photo', '67718b6533acf_360_F_956942184_Cwr3rUoEDwFJQCbhczRmIymOElzS8jtS', '67718b6533acf_360_F_956942184_Cwr3rUoEDwFJQCbhczRmIymOElzS8jtS.jpg', 'image/jpeg', 'public', 'public', 74501, '[]', '[]', '[]', '[]', 1, '2024-12-29 12:48:28', '2024-12-29 12:48:28'),
(2, 'App\\Models\\Product', 1, '01a5e7d2-8f67-4834-8782-b797b9349f3d', 'gallery', '67718ba7a33ed_mango', '67718ba7a33ed_mango.jpg', 'image/jpeg', 'public', 'public', 62436, '[]', '[]', '[]', '[]', 1, '2024-12-29 12:49:29', '2024-12-29 12:49:29'),
(3, 'App\\Models\\Category', 2, '9307df53-19cb-4d4a-805e-bcb808468c7c', 'photo', '67718c64997b4_vegetable', '67718c64997b4_vegetable.png', 'application/octet-stream', 'public', 'public', 56468, '[]', '[]', '[]', '[]', 1, '2024-12-29 12:52:38', '2024-12-29 12:52:38'),
(4, 'App\\Models\\Product', 2, '48932ba8-e0b2-4c6f-a97d-cd509b311092', 'gallery', '67718d3e641ff_grapes', '67718d3e641ff_grapes.jpeg', 'image/jpeg', 'public', 'public', 10929, '[]', '[]', '[]', '[]', 1, '2024-12-29 12:56:16', '2024-12-29 12:56:16'),
(5, 'App\\Models\\Product', 3, 'f5a07235-e8c6-439a-b54c-fe2a1ddf7792', 'gallery', '67718d6e204de_banana', '67718d6e204de_banana.jpeg', 'image/jpeg', 'public', 'public', 4972, '[]', '[]', '[]', '[]', 1, '2024-12-29 12:57:03', '2024-12-29 12:57:03'),
(6, 'App\\Models\\Product', 4, '96e97c67-3a42-42d9-9be8-8713f6feec97', 'gallery', '67718d9c0a3e0_apple', '67718d9c0a3e0_apple.jpg', 'image/jpeg', 'public', 'public', 214863, '[]', '[]', '[]', '[]', 1, '2024-12-29 12:57:49', '2024-12-29 12:57:49'),
(7, 'App\\Models\\Product', 5, '2e0b7c0f-caa7-49cd-bbba-ea546abebd95', 'gallery', '67718dd652cc1_pineapple', '67718dd652cc1_pineapple.jpg', 'image/jpeg', 'public', 'public', 202384, '[]', '[]', '[]', '[]', 1, '2024-12-29 12:58:50', '2024-12-29 12:58:50'),
(8, 'App\\Models\\Product', 6, '803f6171-c8c2-42c5-9f95-d4acdaa516ea', 'gallery', '67718e12710e5_strawberry', '67718e12710e5_strawberry.jpg', 'image/jpeg', 'public', 'public', 56517, '[]', '[]', '[]', '[]', 1, '2024-12-29 12:59:47', '2024-12-29 12:59:47'),
(9, 'App\\Models\\Category', 3, 'ba21af30-e315-4815-afe3-707b52db928a', 'photo', '67718eb4d7cfa_dry', '67718eb4d7cfa_dry.png', 'image/webp', 'public', 'public', 192036, '[]', '[]', '[]', '[]', 1, '2024-12-29 13:02:30', '2024-12-29 13:02:30'),
(10, 'App\\Models\\Product', 7, '5922d1aa-0cef-4df8-bde1-d3584dc54878', 'gallery', '6771901860698_tomato', '6771901860698_tomato.jpg', 'image/jpeg', 'public', 'public', 24568, '[]', '[]', '[]', '[]', 1, '2024-12-29 13:08:26', '2024-12-29 13:08:26'),
(11, 'App\\Models\\Product', 8, '06940d3f-c75a-4922-bd01-71a003884974', 'gallery', '6771904070d4b_cabbage', '6771904070d4b_cabbage.jpg', 'image/jpeg', 'public', 'public', 19970, '[]', '[]', '[]', '[]', 1, '2024-12-29 13:09:14', '2024-12-29 13:09:14'),
(12, 'App\\Models\\Product', 9, '2354e9ff-e5d8-4d8a-8d8a-013b1187a333', 'gallery', '677190935bbf2_eggplant', '677190935bbf2_eggplant.jpg', 'image/jpeg', 'public', 'public', 22484, '[]', '[]', '[]', '[]', 1, '2024-12-29 13:10:29', '2024-12-29 13:10:29'),
(13, 'App\\Models\\Product', 10, '33a5e0ff-ee7f-4140-af05-338e1846d582', 'gallery', '6771910a6bd50_cucumber', '6771910a6bd50_cucumber.jpg', 'image/jpeg', 'public', 'public', 34862, '[]', '[]', '[]', '[]', 1, '2024-12-29 13:12:27', '2024-12-29 13:12:27'),
(14, 'App\\Models\\Product', 11, '39444b28-12ac-46e8-9616-9ffb2ec407c7', 'gallery', '677192a9cd319_almond', '677192a9cd319_almond.jpg', 'image/jpeg', 'public', 'public', 6950, '[]', '[]', '[]', '[]', 1, '2024-12-29 13:19:22', '2024-12-29 13:19:22'),
(15, 'App\\Models\\Product', 12, 'c3ed0e10-01d5-46b1-8a4d-2414718790f2', 'gallery', '677192cf821a7_apricot', '677192cf821a7_apricot.jpg', 'image/jpeg', 'public', 'public', 4785, '[]', '[]', '[]', '[]', 1, '2024-12-29 13:20:01', '2024-12-29 13:20:01'),
(16, 'App\\Models\\Product', 13, 'addd3055-d80c-4899-96a1-c6e5fd1bbb4e', 'gallery', '6771933333860_anjeer', '6771933333860_anjeer.jpg', 'image/jpeg', 'public', 'public', 8620, '[]', '[]', '[]', '[]', 1, '2024-12-29 13:21:40', '2024-12-29 13:21:40'),
(17, 'App\\Models\\Product', 14, '8deeed24-3bc2-492d-888e-c5e2e5d0c6f0', 'gallery', '677193789f36d_pisatchio', '677193789f36d_pisatchio.jpg', 'image/jpeg', 'public', 'public', 8889, '[]', '[]', '[]', '[]', 1, '2024-12-29 13:22:50', '2024-12-29 13:22:50'),
(18, 'App\\Models\\Category', 4, '30af0375-cf66-44c1-ac7b-de2f52160a01', 'photo', '677193df728e4_juice', '677193df728e4_juice.jpg', 'image/jpeg', 'public', 'public', 77567, '[]', '[]', '[]', '[]', 1, '2024-12-29 13:24:33', '2024-12-29 13:24:33');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_03_30_011648_create_categories_table', 1),
(6, '2022_04_19_071658_create_media_table', 1),
(7, '2022_04_27_063355_create_tags_table', 1),
(8, '2022_04_28_210054_create_products_table', 1),
(9, '2022_05_05_055458_create_product_tag_table', 1),
(10, '2022_08_15_055828_create_orders_table', 1),
(11, '2022_08_16_053218_create_order_items_table', 1),
(12, '2022_08_16_053450_create_shipments_table', 1),
(13, '2022_08_16_053945_create_payments_table', 1),
(14, '2024_12_29_131815_create_dashboards_table', 1),
(15, '2024_12_29_131833_add_dashboard_id_foreign_key_to_users_table', 1),
(16, '2024_12_29_153333_create_checkouts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `order_date` datetime DEFAULT NULL,
  `payment_due` datetime DEFAULT NULL,
  `payment_status` varchar(255) DEFAULT NULL,
  `payment_token` varchar(255) DEFAULT NULL,
  `payment_url` varchar(255) DEFAULT NULL,
  `base_total_price` decimal(16,2) DEFAULT 0.00,
  `tax_amount` decimal(16,2) DEFAULT 0.00,
  `tax_percent` decimal(16,2) DEFAULT 0.00,
  `discount_amount` decimal(16,2) DEFAULT 0.00,
  `discount_percent` decimal(16,2) DEFAULT 0.00,
  `shipping_cost` decimal(16,2) DEFAULT 0.00,
  `grand_total` decimal(16,2) DEFAULT 0.00,
  `notes` text DEFAULT NULL,
  `customer_first_name` varchar(255) DEFAULT NULL,
  `customer_address` varchar(255) DEFAULT NULL,
  `customer_address2` varchar(255) DEFAULT NULL,
  `customer_phone` varchar(255) DEFAULT NULL,
  `customer_email` varchar(255) DEFAULT NULL,
  `customer_city_id` varchar(255) DEFAULT NULL,
  `customer_province_id` varchar(255) DEFAULT NULL,
  `customer_postcode` int(11) DEFAULT NULL,
  `shipping_courier` varchar(255) DEFAULT NULL,
  `shipping_service_name` varchar(255) DEFAULT NULL,
  `approved_by` bigint(20) UNSIGNED DEFAULT NULL,
  `approved_at` datetime DEFAULT NULL,
  `cancelled_by` bigint(20) UNSIGNED DEFAULT NULL,
  `cancelled_at` datetime DEFAULT NULL,
  `cancellation_note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `base_price` decimal(16,2) NOT NULL DEFAULT 0.00,
  `base_total` decimal(16,2) NOT NULL DEFAULT 0.00,
  `tax_amount` decimal(16,2) NOT NULL DEFAULT 0.00,
  `tax_percent` decimal(16,2) NOT NULL DEFAULT 0.00,
  `discount_amount` decimal(16,2) NOT NULL DEFAULT 0.00,
  `discount_percent` decimal(16,2) NOT NULL DEFAULT 0.00,
  `sub_total` decimal(16,2) NOT NULL DEFAULT 0.00,
  `name` varchar(255) NOT NULL,
  `weight` varchar(255) NOT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `number` varchar(255) NOT NULL,
  `amount` decimal(16,2) NOT NULL DEFAULT 0.00,
  `method` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `payloads` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`payloads`)),
  `payment_type` varchar(255) DEFAULT NULL,
  `va_number` varchar(255) DEFAULT NULL,
  `vendor_name` varchar(255) DEFAULT NULL,
  `biller_code` varchar(255) DEFAULT NULL,
  `bill_key` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `description` text NOT NULL,
  `details` text NOT NULL,
  `weight` decimal(8,2) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `price`, `quantity`, `description`, `details`, `weight`, `category_id`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'Mango', 'mango', 200, 40, 'Mangoes are tropical stone fruits known for their sweet, juicy, and aromatic flavor. They are often referred to as the \"king of fruits.\" Mangoes are rich in vitamins and minerals, making them a healthy and delicious treat.', 'Eaten fresh as a snack\r\nBlended into mango smoothies or lassi\r\nUsed in desserts like mango pudding or mango ice cream', 30.00, 1, '2024-12-29 12:49:29', '2024-12-29 12:49:29', 2),
(2, 'Grapes', 'grapes', 400, 20, 'Grapes are small, sweet, or tart fruits that grow in clusters. Available in green, red, or black varieties, they are versatile and widely used in fresh, dried, and processed forms.', 'Enjoyed fresh as a snack\r\nUsed in fruit salads or smoothies\r\nProcessed into wine, grape juice, or raisins', 40.00, 1, '2024-12-29 12:56:16', '2024-12-29 12:56:16', 2),
(3, 'Bananas', 'bananas', 300, 50, 'Bananas are soft, sweet, and energy-rich fruits. Their natural sugars and easy digestibility make them a convenient snack and a staple in many cuisines.', 'Eaten raw as a snack\r\nBlended into smoothies or shakes\r\nMashed and used in banana bread or pancakes', 60.00, 1, '2024-12-29 12:57:03', '2024-12-29 12:57:03', 2),
(4, 'Apple', 'apple', 230, 30, 'Apples are crisp, juicy fruits available in red, green, and yellow varieties. They are widely regarded as a symbol of health due to their numerous nutritional benefits.', 'Eaten fresh as a healthy snack\r\nSliced into fruit salads\r\nUsed in apple pies or juices', 40.00, 1, '2024-12-29 12:57:49', '2024-12-29 12:57:49', 2),
(5, 'Pineapple', 'pineapple', 300, 30, 'Pineapples are tropical fruits with a sweet and tangy flavor. Their spiky exterior hides juicy, golden flesh packed with nutrients.', 'Eaten fresh in chunks\r\nBlended into pineapple juice\r\nGrilled and served as a dessert or pizza topping', 20.00, 1, '2024-12-29 12:58:50', '2024-12-29 12:58:50', 2),
(6, 'Strawberry', 'strawberry', 400, 30, 'Strawberries are bright red, juicy fruits with a sweet-tart flavor. They are a favorite in desserts and beverages and are also packed with antioxidants.', 'Eaten fresh as a snack\r\nUsed in desserts like strawberry shortcake or tarts\r\nBlended into smoothies or served with whipped cream', 20.00, 1, '2024-12-29 12:59:47', '2024-12-29 12:59:47', 2),
(7, 'Tomato', 'tomato', 100, 40, 'Tomatoes are botanically classified as fruits but are commonly used as vegetables in cooking. Originating from South America, they are one of the most widely cultivated vegetables globally, with numerous varieties in different sizes, shapes, and colors, such as red, yellow, orange, and green. Tomatoes have a distinct flavor, ranging from tangy to slightly sweet, and are widely used in salads, sauces, soups, and many other dishes. They are rich in vitamins, antioxidants, and minerals, making them a popular and nutritious addition to meals.', 'Size: Typically 4 to 6 cm in diameter.\r\nColor: Ranges from red, yellow, orange, to green depending on the variety.\r\nNutrient Content: High in Vitamin C, potassium, and lycopene.', 300.00, 2, '2024-12-29 13:08:26', '2024-12-29 13:08:26', 4),
(8, 'Cabbage', 'cabbage', 500, 30, 'Cabbage is a leafy vegetable widely known for its dense head of layered leaves. It belongs to the Brassica family and is often found in green, purple, or white varieties. Cultivated globally, cabbage is used in a wide range of culinary applications, such as salads, coleslaw, soups, and pickled products like sauerkraut.', 'Size: Head weight ranges from 1 to 3 kg.\r\nColor: Green, purple, or white.\r\nNutrient Content: Rich in Vitamin K, Vitamin C, and fiber.', 400.00, 2, '2024-12-29 13:09:14', '2024-12-29 13:11:01', 4),
(9, 'Eggplant', 'eggplant', 400, 30, 'Eggplants, also known as aubergines, are a member of the nightshade family, native to India and Southeast Asia. They are widely used in Mediterranean, Middle Eastern, and Asian cuisines. Eggplants typically have a glossy purple skin but can come in other colors like white or green.', 'Size: Typically 15 to 25 cm in length.\r\nColor: Primarily dark purple, though white and green varieties exist.\r\nNutrient Content: Contains fiber, antioxidants, Vitamin B1, Vitamin B6, and potassium.', 200.00, 2, '2024-12-29 13:10:29', '2024-12-29 13:11:13', 4),
(10, 'Cucumber', 'cucumber', 500, 80, 'Cucumbers are a refreshing vegetable with a high water content, making them popular in salads, sandwiches, and pickles. Native to South Asia, cucumbers belong to the gourd family and are known for their mild, slightly sweet flavor. The most commonly consumed varieties are slicing cucumbers, but there are also pickling varieties and burpless varieties, which have fewer seeds and a thinner skin. Cucumbers are low in calories and are hydrating due to their high water content, making them a healthy, low-calorie snack.', 'Size: Typically 20 to 30 cm in length.\r\nColor: Usually green, turning yellow when overripe.\r\nNutrient Content: 95% water, with small amounts of Vitamin K and potassium.', 300.00, 2, '2024-12-29 13:12:27', '2024-12-29 13:12:27', 4),
(11, 'Almond', 'almond', 200, 300, 'Almonds are the seeds of the fruit of the almond tree, scientifically known as Prunus dulcis. They are primarily consumed in their dried, edible form, either raw or roasted, and are commonly used in cooking, baking, and as snacks. Almonds are rich in healthy fats, fiber, vitamins (especially Vitamin E), and minerals like magnesium and calcium. They have a mildly sweet and nutty flavor and are known for their potential health benefits, including heart health and weight management.', 'Size: Typically 1 to 1.5 cm in length.\r\nColor: Light brown with a smooth outer shell.\r\nNutrient Content: Rich in Vitamin E, healthy fats, fiber, magnesium, and antioxidants.', 20.00, 3, '2024-12-29 13:19:22', '2024-12-29 13:20:20', 5),
(12, 'Apricot', 'apricot', 300, 200, 'Apricots are small, soft fruits with a tart-sweet flavor, originating from China but now grown in many parts of the world. They have a golden-orange skin with a smooth, velvety texture, and a pit inside. Apricots are usually eaten fresh but can also be dried to preserve them for longer periods. They are an excellent source of Vitamin A, Vitamin C, and fiber. Apricots are often used in jams, jellies, salads, and desserts, and they are known for their high antioxidant content.', 'Size: Typically 4 to 6 cm in diameter.\r\nColor: Golden-yellow to orange.\r\nNutrient Content: High in Vitamin A, Vitamin C, fiber, and antioxidants.', 10.00, 3, '2024-12-29 13:20:01', '2024-12-29 13:20:35', 5),
(13, 'Anjeer', 'anjeer', 200, 80, 'Anjeer, commonly known as Fig, is a sweet and succulent fruit from the Ficus carica tree, which is native to the Middle East and Western Asia. Figs are unique in that they have a soft, chewy texture with a sweet, honey-like taste. Fresh figs are highly perishable, so they are often dried to extend shelf life. Figs are packed with essential nutrients, including fiber, potassium, calcium, and iron. They are commonly consumed dried or fresh, used in jams, desserts, and salads.', 'Size: Typically 3 to 5 cm in diameter.\r\nColor: Varies from green, yellow, to purple, with a soft, edible skin.\r\nNutrient Content: High in fiber, potassium, calcium, iron, and antioxidants.', 100.00, 3, '2024-12-29 13:21:40', '2024-12-29 13:21:56', 5),
(14, 'Pistachio', 'pistachio', 900, 20, 'Pistachios are small, edible seeds from the fruit of the Pistacia vera tree, native to Central Asia and the Middle East. Known for their unique green and purple hues, pistachios are often consumed as a snack, used in cooking, or incorporated into desserts like baklava and ice cream. These nuts have a rich, buttery flavor and are rich in healthy fats, protein, fiber, and antioxidants. Pistachios are also a good source of vitamins and minerals, including Vitamin B6, copper, and magnesium. They are commonly consumed roasted, salted, or in their raw form.', 'Size: Typically 1 to 1.5 cm in length.\r\nColor: Light brown outer shell with greenish kernels inside.\r\nNutrient Content: High in protein, healthy fats, Vitamin B6, copper, fiber, and antioxidants.', 60.00, 3, '2024-12-29 13:22:49', '2024-12-29 13:22:49', 5);

-- --------------------------------------------------------

--
-- Table structure for table `product_tag`
--

CREATE TABLE `product_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_tag`
--

INSERT INTO `product_tag` (`id`, `product_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 2, NULL, NULL),
(3, 3, 2, NULL, NULL),
(4, 4, 1, NULL, NULL),
(5, 5, 5, NULL, NULL),
(6, 6, 4, NULL, NULL),
(7, 7, 2, NULL, NULL),
(9, 9, 2, NULL, NULL),
(10, 10, 5, NULL, NULL),
(11, 8, 3, NULL, NULL),
(12, 11, 4, NULL, NULL),
(14, 12, 4, NULL, NULL),
(15, 13, 5, NULL, NULL),
(16, 14, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shipments`
--

CREATE TABLE `shipments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `track_number` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `total_qty` int(11) NOT NULL,
  `total_weight` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `city_id` varchar(255) DEFAULT NULL,
  `province_id` varchar(255) DEFAULT NULL,
  `postcode` int(11) DEFAULT NULL,
  `shipped_at` datetime DEFAULT NULL,
  `shipped_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Organic', 'organic', '2024-12-29 12:48:41', '2024-12-29 12:48:41'),
(2, 'Imported', 'imported', '2024-12-29 12:52:51', '2024-12-29 12:52:51'),
(3, 'Fresh', 'fresh', '2024-12-29 12:53:26', '2024-12-29 13:12:47'),
(4, 'Local', 'local', '2024-12-29 12:54:14', '2024-12-29 12:54:14'),
(5, 'Natural', 'natural', '2024-12-29 12:54:26', '2024-12-29 12:54:26');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `dashboard_id` bigint(20) UNSIGNED DEFAULT NULL,
  `address` text DEFAULT NULL,
  `address2` text DEFAULT NULL,
  `province_id` varchar(255) DEFAULT NULL,
  `city_id` varchar(255) DEFAULT NULL,
  `postcode` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `email_verified_at`, `password`, `is_admin`, `dashboard_id`, `address`, `address2`, `province_id`, `city_id`, `postcode`, `phone`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@example.com', NULL, '$2y$10$HrodgRlT4A8aq8ZiHHEjCezhHLj55BcPf71r79LvTBy/8GFH.juya', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Amna Ahmed', 'amna@gmail.com', NULL, '$2y$10$UYRivzSNrEJNl/ATJ.EaVuHFgMglJBFHquczMmMnEei7PcWGKY6Oi', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-29 12:47:04', '2024-12-29 12:47:04'),
(3, 'Ayesha', 'ayesha@gmail.com', NULL, '$2y$10$8rY9Rn43zy3GiXEhLBjnx.5BGzQK5hx97Z1WQsslK6VvnUDsGLkAa', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-29 12:50:07', '2024-12-29 12:50:07'),
(4, 'Navaal Iqbal', 'navaal@gmail.com', NULL, '$2y$10$LZDNe9T4Hcyvm9zEM9SUeeHfHkbECluJhqDH53PEhwb8jEb5gA7za', 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-29 13:01:08', '2024-12-29 13:01:08'),
(5, 'Mahnoor', 'mahnoor@gmail.com', NULL, '$2y$10$kZEumWyxNZrXVbDoPWvnG.uOh4vOvr3ymzYfmSHuZe1qarjraal82', 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-29 13:13:54', '2024-12-29 13:13:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_dashboards`
--
ALTER TABLE `admin_dashboards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_dashboards_user_id_foreign` (`user_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `checkouts`
--
ALTER TABLE `checkouts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `checkouts_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_uuid_unique` (`uuid`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`),
  ADD KEY `media_order_column_index` (`order_column`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_code_unique` (`code`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_approved_by_foreign` (`approved_by`),
  ADD KEY `orders_cancelled_by_foreign` (`cancelled_by`),
  ADD KEY `orders_payment_token_index` (`payment_token`),
  ADD KEY `orders_code_index` (`code`),
  ADD KEY `orders_code_order_date_index` (`code`,`order_date`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`),
  ADD KEY `order_items_name_index` (`name`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payments_number_unique` (`number`),
  ADD KEY `payments_order_id_foreign` (`order_id`),
  ADD KEY `payments_number_index` (`number`),
  ADD KEY `payments_method_index` (`method`),
  ADD KEY `payments_token_index` (`token`),
  ADD KEY `payments_payment_type_index` (`payment_type`);

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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_user_id_foreign` (`user_id`);

--
-- Indexes for table `product_tag`
--
ALTER TABLE `product_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_tag_product_id_foreign` (`product_id`),
  ADD KEY `product_tag_tag_id_foreign` (`tag_id`);

--
-- Indexes for table `shipments`
--
ALTER TABLE `shipments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shipments_user_id_foreign` (`user_id`),
  ADD KEY `shipments_order_id_foreign` (`order_id`),
  ADD KEY `shipments_shipped_by_foreign` (`shipped_by`),
  ADD KEY `shipments_track_number_index` (`track_number`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_name_unique` (`name`),
  ADD UNIQUE KEY `tags_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_dashboard_id_index` (`dashboard_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_dashboards`
--
ALTER TABLE `admin_dashboards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `checkouts`
--
ALTER TABLE `checkouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `product_tag`
--
ALTER TABLE `product_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `shipments`
--
ALTER TABLE `shipments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_dashboards`
--
ALTER TABLE `admin_dashboards`
  ADD CONSTRAINT `admin_dashboards_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `checkouts`
--
ALTER TABLE `checkouts`
  ADD CONSTRAINT `checkouts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_approved_by_foreign` FOREIGN KEY (`approved_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `orders_cancelled_by_foreign` FOREIGN KEY (`cancelled_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_tag`
--
ALTER TABLE `product_tag`
  ADD CONSTRAINT `product_tag_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shipments`
--
ALTER TABLE `shipments`
  ADD CONSTRAINT `shipments_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `shipments_shipped_by_foreign` FOREIGN KEY (`shipped_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `shipments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_dashboard_id_foreign` FOREIGN KEY (`dashboard_id`) REFERENCES `admin_dashboards` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
