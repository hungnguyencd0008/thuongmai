-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 28, 2019 lúc 04:53 PM
-- Phiên bản máy phục vụ: 10.1.40-MariaDB
-- Phiên bản PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `thuongmai`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_06_23_074409_vp_user', 1),
(4, '2019_06_23_094948_vp_category', 2),
(5, '2019_06_23_095653_vp_category_dienthoai', 2),
(6, '2019_06_25_010538_vp_category_tablet', 3),
(7, '2019_06_25_013839_vp_category_laptop', 4),
(8, '2019_06_25_014720_vp_category_phukien', 5),
(9, '2019_06_25_014805_vp_category_dongho', 5),
(10, '2019_06_25_014851_vp_category_dienmay', 5),
(11, '2019_06_25_030518_vp_products_dienthoai', 6),
(12, '2019_06_25_030700_vp_products_tablet', 7),
(13, '2019_06_25_030705_vp_products_laptop', 7),
(14, '2019_06_25_030714_vp_products_phukien', 7),
(15, '2019_06_25_030722_vp_products_dongho', 7),
(16, '2019_06_25_030728_vp_products_dienmay', 7),
(17, '2019_06_27_160522_vp_comment_dienthoai', 8),
(18, '2019_06_27_162009_vp_comment_tablet', 9),
(19, '2019_06_27_162017_vp_comment_laptop', 9),
(20, '2019_06_27_162024_vp_comment_phukien', 9),
(21, '2019_06_27_162029_vp_comment_dongho', 9),
(22, '2019_06_27_162034_vp_comment_dienmay', 9);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vp_category`
--

CREATE TABLE `vp_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vp_category_dienmay`
--

CREATE TABLE `vp_category_dienmay` (
  `cate_id` int(10) UNSIGNED NOT NULL,
  `cate_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cate_slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vp_category_dienmay`
--

INSERT INTO `vp_category_dienmay` (`cate_id`, `cate_name`, `cate_slug`, `created_at`, `updated_at`) VALUES
(1, 'Canon', 'canon', '2019-06-24 19:15:14', '2019-06-25 02:32:53'),
(3, 'Nikon', 'nikon', '2019-06-24 19:15:19', '2019-06-25 02:33:04'),
(4, ' Fujifilm', 'fujifilm', '2019-06-24 19:15:21', '2019-06-25 02:33:15'),
(5, 'Samsung', 'samsung', '2019-06-24 19:15:24', '2019-06-25 02:33:48'),
(6, 'Panasonic', 'panasonic', '2019-06-25 02:33:54', '2019-06-25 02:33:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vp_category_dienthoai`
--

CREATE TABLE `vp_category_dienthoai` (
  `cate_id` int(10) UNSIGNED NOT NULL,
  `cate_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cate_slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vp_category_dienthoai`
--

INSERT INTO `vp_category_dienthoai` (`cate_id`, `cate_name`, `cate_slug`, `created_at`, `updated_at`) VALUES
(1, 'iphone', 'iphone', NULL, NULL),
(2, 'samsung', 'samsung', NULL, NULL),
(5, 'Oppo', 'oppo', '2019-06-24 15:44:21', '2019-06-25 02:21:50'),
(6, 'Xiaomi', 'xiaomi', '2019-06-24 15:45:42', '2019-06-25 02:21:32'),
(7, 'Huawei', 'huawei', '2019-06-24 15:45:46', '2019-06-25 18:08:44'),
(8, 'Nokia', 'nokia', '2019-06-24 16:36:15', '2019-06-24 16:36:15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vp_category_dongho`
--

CREATE TABLE `vp_category_dongho` (
  `cate_id` int(10) UNSIGNED NOT NULL,
  `cate_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cate_slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vp_category_dongho`
--

INSERT INTO `vp_category_dongho` (`cate_id`, `cate_name`, `cate_slug`, `created_at`, `updated_at`) VALUES
(1, 'Huawei', 'huawei', '2019-06-24 19:09:36', '2019-06-25 02:30:11'),
(2, 'ZEBLAZE', 'zeblaze', '2019-06-24 19:09:39', '2019-06-25 02:30:51'),
(5, 'samsung', 'samsung', '2019-06-24 19:09:47', '2019-06-24 19:09:47'),
(6, 'Apple', 'apple', '2019-06-25 02:29:52', '2019-06-25 02:29:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vp_category_laptop`
--

CREATE TABLE `vp_category_laptop` (
  `cate_id` int(10) UNSIGNED NOT NULL,
  `cate_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cate_slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vp_category_laptop`
--

INSERT INTO `vp_category_laptop` (`cate_id`, `cate_name`, `cate_slug`, `created_at`, `updated_at`) VALUES
(6, 'Apple', 'apple', '2019-06-25 02:25:05', '2019-06-25 02:25:05'),
(7, ' Dell ', 'dell', '2019-06-25 02:25:17', '2019-06-25 02:25:17'),
(8, 'Laptop HP', 'laptop-hp', '2019-06-25 02:25:30', '2019-06-25 02:25:30'),
(9, 'Lenovo ', 'lenovo', '2019-06-25 02:25:43', '2019-06-25 02:25:43'),
(10, 'Asus', 'asus', '2019-06-25 02:26:11', '2019-06-25 02:26:11');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vp_category_phukien`
--

CREATE TABLE `vp_category_phukien` (
  `cate_id` int(10) UNSIGNED NOT NULL,
  `cate_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cate_slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vp_category_phukien`
--

INSERT INTO `vp_category_phukien` (`cate_id`, `cate_name`, `cate_slug`, `created_at`, `updated_at`) VALUES
(1, 'ỐP LƯNG', 'op-lung', '2019-06-24 19:01:22', '2019-06-25 02:29:09'),
(3, 'TAI NGHE', 'tai-nghe', '2019-06-24 19:01:29', '2019-06-25 02:28:49'),
(5, 'PIN SẠC', 'pin-sac', '2019-06-25 02:28:36', '2019-06-25 02:28:36'),
(6, 'THẺ NHỚ', 'the-nho', '2019-06-25 02:28:43', '2019-06-25 02:28:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vp_category_tablet`
--

CREATE TABLE `vp_category_tablet` (
  `cate_id` int(10) UNSIGNED NOT NULL,
  `cate_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cate_slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vp_category_tablet`
--

INSERT INTO `vp_category_tablet` (`cate_id`, `cate_name`, `cate_slug`, `created_at`, `updated_at`) VALUES
(1, 'Samsung', 'samsung', '2019-06-24 18:18:26', '2019-06-25 02:24:10'),
(3, 'Asus', 'asus', '2019-06-24 18:21:39', '2019-06-25 02:23:42'),
(4, 'Huawei', 'huawei', '2019-06-24 18:21:41', '2019-06-25 02:23:52'),
(5, 'Apple', 'apple', '2019-06-25 02:23:29', '2019-06-25 02:23:29'),
(6, 'Xiaomi', 'xiaomi', '2019-06-25 02:24:14', '2019-06-25 02:24:14');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vp_comment_dienmay`
--

CREATE TABLE `vp_comment_dienmay` (
  `com_id` int(10) UNSIGNED NOT NULL,
  `com_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `com_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `com_contend` text COLLATE utf8_unicode_ci NOT NULL,
  `com_product` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vp_comment_dienthoai`
--

CREATE TABLE `vp_comment_dienthoai` (
  `com_id` int(10) UNSIGNED NOT NULL,
  `com_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `com_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `com_contend` text COLLATE utf8_unicode_ci NOT NULL,
  `com_product` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vp_comment_dienthoai`
--

INSERT INTO `vp_comment_dienthoai` (`com_id`, `com_email`, `com_name`, `com_contend`, `com_product`, `created_at`, `updated_at`) VALUES
(1, 'admin@gmail.com', 'cuchuoi', 'Là chiếc điện thoại OPPO được nâng cấp cấu hình', 17, '2019-06-27 10:39:38', '2019-06-27 10:39:38'),
(2, 'vietpro@gmail.com', 'hung', 'màn hình tràn viền giọt nước và camera chụp chân dung tích hợp trí tuệ nhân tạo A.I hoàn hảo.', 17, '2019-06-27 10:45:46', '2019-06-27 10:45:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vp_comment_dongho`
--

CREATE TABLE `vp_comment_dongho` (
  `com_id` int(10) UNSIGNED NOT NULL,
  `com_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `com_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `com_contend` text COLLATE utf8_unicode_ci NOT NULL,
  `com_product` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vp_comment_dongho`
--

INSERT INTO `vp_comment_dongho` (`com_id`, `com_email`, `com_name`, `com_contend`, `com_product`, `created_at`, `updated_at`) VALUES
(1, 'phubui2703@gmail.com', 'cuchuoi', 'Thiết kế đơn giản tinh tế\r\nZeblaze Crystal 2 với bốn góc được bo cong kết hợp dây đeo silicone có khả năng tùy chỉnh độ rộng theo cổ tay, mang đến cảm giác thoải mái khi đeo trong thời gian dài.', 7, '2019-06-27 11:12:34', '2019-06-27 11:12:34');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vp_comment_laptop`
--

CREATE TABLE `vp_comment_laptop` (
  `com_id` int(10) UNSIGNED NOT NULL,
  `com_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `com_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `com_contend` text COLLATE utf8_unicode_ci NOT NULL,
  `com_product` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vp_comment_laptop`
--

INSERT INTO `vp_comment_laptop` (`com_id`, `com_email`, `com_name`, `com_contend`, `com_product`, `created_at`, `updated_at`) VALUES
(1, 'phubui2702@gmail.com', 'hung', 'Thiết kế truyền thống\r\nMáy vẫn mang thiết kế truyền thống của các mẫu laptop phổ thông khác với phần khung nhựa cứng cáp, bền bỉ. Tuy nhiên HP cũng khéo léo mang lại vẻ cao cấp cho chiếc laptop của mình bằng việc sử dụng màu sắc vàng đồng bắt mắt, phần kê tay được in vân cách điệu giúp chiếc laptop trông đẹp và thu hút hơn.', 8, '2019-06-27 11:12:13', '2019-06-27 11:12:13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vp_comment_phukien`
--

CREATE TABLE `vp_comment_phukien` (
  `com_id` int(10) UNSIGNED NOT NULL,
  `com_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `com_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `com_contend` text COLLATE utf8_unicode_ci NOT NULL,
  `com_product` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vp_comment_tablet`
--

CREATE TABLE `vp_comment_tablet` (
  `com_id` int(10) UNSIGNED NOT NULL,
  `com_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `com_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `com_contend` text COLLATE utf8_unicode_ci NOT NULL,
  `com_product` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vp_comment_tablet`
--

INSERT INTO `vp_comment_tablet` (`com_id`, `com_email`, `com_name`, `com_contend`, `com_product`, `created_at`, `updated_at`) VALUES
(1, 'cuchuoibothay@gmail.com', 'hung', 'Màn hình kích thước lớn, sử dụng thoải mái', 3, '2019-06-27 10:58:57', '2019-06-27 10:58:57');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vp_products_dienmay`
--

CREATE TABLE `vp_products_dienmay` (
  `prod_id` int(10) UNSIGNED NOT NULL,
  `prod_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prod_slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prod_price` int(11) NOT NULL,
  `prod_img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prod_accessories` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prod_warranty` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prod_promotion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prod_condition` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prod_status` tinyint(4) NOT NULL,
  `prod_description` text COLLATE utf8_unicode_ci NOT NULL,
  `prod_featured` tinyint(4) NOT NULL,
  `prod_cate` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vp_products_dienmay`
--

INSERT INTO `vp_products_dienmay` (`prod_id`, `prod_name`, `prod_slug`, `prod_price`, `prod_img`, `prod_accessories`, `prod_warranty`, `prod_promotion`, `prod_condition`, `prod_status`, `prod_description`, `prod_featured`, `prod_cate`, `created_at`, `updated_at`) VALUES
(1, 'Smart Tivi Samsung 32 inch UA32N4300', 'smart-tivi-samsung-32-inch-ua32n4300', 6590000, 'tivi-samsung-ua32n4300-26-550x340.jpg', 'không', 'Bảo Hành: 12 tháng', 'không', 'mới 100%', 1, '<h3>Kiểu d&aacute;ng tinh tế, sang trọng</h3>\r\n\r\n<p><a href=\"https://www.dienmayxanh.com/tivi/samsung-ua32n4300\" target=\"_blank\">Smart Tivi Samsung 32 inch UA32N4300</a>&nbsp;c&oacute; thiết kế đẹp mắt, trang nh&atilde; c&ugrave;ng đường viền mỏng mang đến sự h&agrave;i h&ograve;a cho ng&ocirc;i nh&agrave; bạn.</p>\r\n\r\n<p><a href=\"https://www.dienmayxanh.com/tivi-samsung?g=tu-32-43-inch\" target=\"_blank\">Tivi Samsung 32 inch</a>&nbsp;c&ugrave;ng ch&acirc;n đế vững chắc ph&ugrave; hợp với kh&ocirc;ng gian của ph&ograve;ng l&agrave;m việc, ph&ograve;ng kh&aacute;ch,... hay treo tường ở ph&ograve;ng ngủ.</p>\r\n', 1, 5, '2019-06-25 20:41:50', '2019-06-25 20:41:50'),
(2, 'Smart Tivi Samsung 4K 43 inch UA43NU7100', 'smart-tivi-samsung-4k-43-inch-ua43nu7100', 9900000, 'tivi-samsung-ua43nu7100-20-550x340.jpg', 'vận chuyển miễn phí', 'Bảo Hành: 12 tháng', 'Khuyến mại: Dán màn hình', 'mới 100%', 1, '<h3>Kiểu d&aacute;ng hiện đại, tinh tế</h3>\r\n\r\n<p><a href=\"https://www.dienmayxanh.com/tivi/samsung-ua43nu7100\" target=\"_blank\">Smart Tivi Samsung 43 inch UA43NU7100</a>&nbsp;l&agrave; mẫu thiết kế sang trọng với viền m&agrave;n h&igrave;nh si&ecirc;u mỏng mang đến vẻ đẹp đơn giản v&agrave; h&ograve;a hợp với bất kỳ kh&ocirc;ng gian nội thất n&agrave;o.</p>\r\n\r\n<p>K&iacute;ch thước m&agrave;n h&igrave;nh 43 inch vừa phải ph&ugrave; hợp với nhiều kh&ocirc;ng gian nội thất kh&aacute;c nhau như: ph&ograve;ng kh&aacute;ch, ph&ograve;ng họp,..</p>\r\n', 1, 5, '2019-06-25 20:42:44', '2019-06-25 20:42:44'),
(3, 'Smart Tivi Panasonic 32 inch TH-32FS500V', 'smart-tivi-panasonic-32-inch-th-32fs500v', 6890000, 'tivi-panasonic-th-32fs500v-14-550x340.jpg', 'Phụ kiện: sạc, cáp, tai nghe', 'Bảo Hành: 12 tháng', 'không', 'mới 100%', 0, '<h3>Thiết kế lịch l&atilde;m, tinh tế</h3>\r\n\r\n<p><a href=\"https://www.dienmayxanh.com/tivi/panasonic-th-32fs500v\" target=\"_blank\">Smart Tivi Panasonic 32 inch TH-32FS500V</a>&nbsp;thu h&uacute;t mọi sự ch&uacute; &yacute; với những đường n&eacute;t lịch thiệp c&ugrave;ng ch&acirc;n đế vững chắc mang đến sự sang trọng v&agrave; hiện đại cho ng&ocirc;i nh&agrave; bạn.</p>\r\n\r\n<p>Tivi với k&iacute;ch thước m&agrave;n h&igrave;nh&nbsp;<a href=\"https://www.dienmayxanh.com/tivi-panasonic?g=tu-32-43-inch\" target=\"_blank\">tivi Panasonic 32 inch</a>&nbsp;rất th&iacute;ch hợp bố tr&iacute; v&agrave; sử dụng tại c&aacute;c kh&ocirc;ng gian như ph&ograve;ng kh&aacute;ch nhỏ, ph&ograve;ng họp nhỏ hoặc cũng c&oacute; thể treo tường ngay tại ph&ograve;ng ngủ.</p>\r\n', 0, 6, '2019-06-25 20:44:50', '2019-06-25 20:44:50'),
(4, 'Android Tivi Panasonic 4K 49 inch 49FX550V', 'android-tivi-panasonic-4k-49-inch-49fx550v', 14980000, 'tivi-panasonic-49fx550v-16-550x340.jpg', 'không', 'Bảo Hành: 12 tháng', 'không', 'mới 100%', 1, '<h3>Kiểu d&aacute;ng hiện đại, tối giản</h3>\r\n\r\n<p><a href=\"https://www.dienmayxanh.com/tivi/panasonic-49fx550v\" target=\"_blank\">Android Tivi Panasonic 4K 49 inch 49FX550V</a>&nbsp;sở hữu thiết kế viền m&agrave;n h&igrave;nh mỏng, tinh tế đi c&ugrave;ng ch&acirc;n đế&nbsp;<a href=\"https://www.dienmayxanh.com/tivi\" target=\"_blank\">tivi</a>&nbsp;thanh mảnh nhưng vững chắc, gi&uacute;p tivi trụ vững tr&ecirc;n nhiều dạng mặt phẳng kh&aacute;c nhau.</p>\r\n\r\n<p><a href=\"http://www.dienmayxanh.com/tivi-panasonic?g=tu-44-55-inch\" target=\"_blank\">Tivi Panasonic 49 inch</a>&nbsp;d&ugrave; đặt ở bối cảnh n&agrave;o từ ph&ograve;ng kh&aacute;ch đến ph&ograve;ng ngủ, ph&ograve;ng l&agrave;m việc... đều&nbsp;ph&ugrave; hợp v&agrave; h&agrave;i ho&agrave; với kh&ocirc;ng gian nội thất hiện đại.</p>\r\n', 1, 6, '2019-06-25 20:45:37', '2019-06-25 20:45:37'),
(5, 'MÁY ẢNH CANON EOS 750D ỐNG KÍNH 18-55 MM', 'may-anh-canon-eos-750d-ong-kinh-18-55-mm', 12790000, '10022276-MÁY_ẢNH_KTS_CANON_EOS_750D_18-55MM_STM.jpg', 'vận chuyển miễn phí', 'Bảo Hành: 12 tháng', 'không', 'mới 100%', 1, '<h3>H&igrave;nh ảnh chất lượng cao</h3>\r\n\r\n<p><a href=\"https://www.nguyenkim.com/may-anh-chuyen-nghiep-canon/\" target=\"_blank\">M&aacute;y ảnh Canon</a>&nbsp;mang đến h&igrave;nh ảnh ưu việt với độ ph&acirc;n giải l&ecirc;n đến 24.2MP, vượt trội hơn c&aacute;c d&ograve;ng&nbsp;<a href=\"https://www.nguyenkim.com/may-anh-chuyen-nghiep/\" target=\"_blank\">m&aacute;y ảnh</a>&nbsp;trước đ&oacute; d&agrave;nh cho người mới sử dụng.</p>\r\n', 1, 1, '2019-06-25 20:50:14', '2019-06-25 20:50:14'),
(6, 'MÁY ẢNH CANON EOS M10 KIT 15-45MM', 'may-anh-canon-eos-m10-kit-15-45mm', 6390000, '10031738_MAYANH_CANON_EOS-M10-KIT15-45MM_01.jpg', 'không', 'Bảo Hành: 12 tháng', 'không', 'mới 100%', 0, '<h3>Sắc trắng nhỏ gọn trong tầm tay</h3>\r\n\r\n<p><a href=\"https://www.nguyenkim.com/may-anh-canon-eos-m10-kit-15-45mm-trang.html\" target=\"_blank\">M&aacute;y ảnh Canon EOS M10 m&agrave;u trắng</a>&nbsp;được thiết kế với kiểu d&aacute;ng mang phong c&aacute;ch cổ điển, nhỏ gọn, gam m&agrave;u trắng trang nh&atilde;, sang trọng th&iacute;ch hợp với thị hiếu&nbsp;của nhiều người.&nbsp;</p>\r\n', 0, 1, '2019-06-25 20:51:08', '2019-06-25 20:51:08'),
(7, 'MÁY ẢNH NIKON D7200 SG 18-140 VR KIT', 'may-anh-nikon-d7200-sg-18-140-vr-kit', 22100000, '10041906_MAY-ANH_NIKON_D7200-SG-18-140-VR-KIT_01.jpg', 'vận chuyển miễn phí', 'Bảo Hành: 12 tháng', 'không', 'mới 100%', 1, '<h3>Mọi chi ti&ecirc;́t đ&ecirc;̀u sắc nét và ch&acirc;n thực</h3>\r\n\r\n<p><a href=\"https://www.nguyenkim.com/may-anh-nikon-d7200-sg-18-140-vr-kit.html\" target=\"_blank\">Máy ảnh Nikon D7200 SG 18-140 VR KIT</a>&nbsp;sở hữu hệ thống lấy n&eacute;t tự động 51 điểm (AF) với m&ocirc;-đun cảm biến lấy n&eacute;t tự động đảm bảo ảnh r&otilde; nét ngay cả trong m&ocirc;i trường t&ocirc;́i, hiệu suất thu nhận chủ thể vượt trội đối với c&aacute;c đối tượng chuyển động nhanh.</p>\r\n', 1, 3, '2019-06-25 20:53:29', '2019-06-25 20:53:29'),
(8, 'MÁY ẢNH NIKON D3500 BK SG 18-55 VR KIT', 'may-anh-nikon-d3500-bk-sg-18-55-vr-kit', 11200000, '10031738_MAYANH_CANON_EOS-M10-KIT15-45MM_0123.jpg', 'vận chuyển miễn phí', 'Bảo Hành: 12 tháng', 'không', 'mới 100%', 0, '<h3>Xử l&iacute; ảnh EXPEED</h3>\r\n\r\n<p><a href=\"https://www.nguyenkim.com/may-anh-nikon-d3500-bk-sg-18-55-vr-kit.html\" target=\"_blank\">M&aacute;y ảnh Nikon D3500</a>&nbsp;c&oacute; hệ thống xử l&iacute; ảnh EXPEED, khả năng chụp 5 h&igrave;nh tr&ecirc;n gi&acirc;y, dải ISO từ 100-25600, hệ thống lấy n&eacute;t 11 điểm, quay FullHD 60fps, m&agrave;n h&igrave;nh LCD 3-inch 921.000 điểm ảnh&hellip;</p>\r\n', 0, 3, '2019-06-25 20:54:20', '2019-06-25 20:54:20'),
(9, 'MÁY ẢNH FUJIFILM X-A3/XC16-50MM BW', 'may-anh-fujifilm-x-a3xc16-50mm-bw', 8490000, '10030502.jpg', 'vận chuyển miễn phí', 'Bảo Hành: 12 tháng', 'không', 'mới 100%', 1, '<h3>Chụp ảnh sắc n&eacute;t</h3>\r\n\r\n<p><a href=\"http://www.nguyenkim.com/may-anh-kts-fuji/\">M&aacute;y ảnh Fujifilm</a>&nbsp;m&agrave;n h&igrave;nh 3 inch c&oacute; độ ph&acirc;n giải cao 24.2 MP, c&ugrave;ng cảm biến CMOS mang đến cho bạn những bức ảnh đẹp sắt n&eacute;t, r&otilde; r&agrave;ng, h&igrave;nh ảnh thi&ecirc;n nhi&ecirc;n sống động, đầy ch&acirc;n thật.</p>\r\n', 1, 4, '2019-06-25 20:56:01', '2019-06-25 20:56:01'),
(10, 'MÁY ẢNH FUJIFILM X-A10/XC16-50MM MÀU HỒNG', 'may-anh-fujifilm-x-a10xc16-50mm-mau-hong', 5900000, '10034993.jpg', 'vận chuyển miễn phí', 'Bảo Hành: 12 tháng', 'không', 'mới 100%', 0, '<ul>\r\n	<li>Cảm biến ảnh: 16.3MP</li>\r\n	<li>Tốc độ m&agrave;n trập: 1/4.000 gi&acirc;y</li>\r\n	<li>M&agrave;n h&igrave;nh: LCD 3&quot;, 1.040k điểm ảnh, lật 180 độ</li>\r\n	<li>ISO: 200 - 6.400, mở rộng 100, 12.800, 25.600</li>\r\n	<li>Kết nối: Wi-Fi, USB 2.0, Micro HDMI</li>\r\n</ul>\r\n', 0, 4, '2019-06-25 20:57:03', '2019-06-25 20:57:03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vp_products_dienthoai`
--

CREATE TABLE `vp_products_dienthoai` (
  `prod_id` int(10) UNSIGNED NOT NULL,
  `prod_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prod_slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prod_price` int(11) NOT NULL,
  `prod_img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prod_accessories` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prod_warranty` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prod_promotion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prod_condition` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prod_status` tinyint(4) NOT NULL,
  `prod_description` text COLLATE utf8_unicode_ci NOT NULL,
  `prod_featured` tinyint(4) NOT NULL,
  `prod_cate` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vp_products_dienthoai`
--

INSERT INTO `vp_products_dienthoai` (`prod_id`, `prod_name`, `prod_slug`, `prod_price`, `prod_img`, `prod_accessories`, `prod_warranty`, `prod_promotion`, `prod_condition`, `prod_status`, `prod_description`, `prod_featured`, `prod_cate`, `created_at`, `updated_at`) VALUES
(4, 'iphone 7 plus 32gb gold', 'iphone-7-plus-32gb-gold', 10280000, 'iphone-7-plus-32gb-gold.jpg', 'Phụ kiện: sạc, cáp, tai nghe', 'Bảo Hành: 12 tháng', 'Khuyến mại: Dán màn hình', 'Tình trạng: Máy mới 100%', 0, '<h2>Mặc d&ugrave; giữ nguy&ecirc;n vẻ bề ngo&agrave;i so với d&ograve;ng&nbsp;<a href=\"https://www.thegioididong.com/dtdd-apple-iphone\" target=\"_blank\">điện thoại iPhone</a>&nbsp;đời trước, b&ugrave; lại&nbsp;<a href=\"https://www.thegioididong.com/dtdd/iphone-7-plus\" target=\"_blank\">iPhone 7 Plus 32GB</a>&nbsp;lại được trang bị nhiều n&acirc;ng cấp đ&aacute;ng gi&aacute; như camera k&eacute;p đầu ti&ecirc;n cũng như cấu h&igrave;nh mạnh mẽ.</h2>\r\n\r\n<h3>Chiếc&nbsp;<a href=\"https://www.thegioididong.com/dtdd\" target=\"_blank\">điện thoại</a>&nbsp;sở hữu camera k&eacute;p đầu ti&ecirc;n của Apple</h3>\r\n\r\n<p>iPhone 7 Plus l&agrave;&nbsp;chiếc iPhone đầu ti&ecirc;n được trang bị camera k&eacute;p c&oacute; c&ugrave;ng độ ph&acirc;n giải 12 MP, đem lại khả năng chụp ảnh ở hai ti&ecirc;u cự kh&aacute;c nhau.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/78124/iphone-7-plus-32gb-tgdd-7.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại smartphone iPhone 7 Plus 32GB | Camera kép\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsQAAA7EAZUrDhsAAAANSURBVBhXYzh8+PB/AAffA0nNPuCLAAAAAElFTkSuQmCC\" /></a></p>\r\n\r\n<p>Camera ch&iacute;nh chụp h&igrave;nh g&oacute;c rộng, c&ograve;n camera phụ c&oacute; ti&ecirc;u cự ph&ugrave; hợp để chụp ch&acirc;n dung, c&oacute; t&iacute;nh năng chụp ch&acirc;n dung x&oacute;a ph&ocirc;ng (l&agrave;m mờ hậu cảnh).&nbsp;</p>\r\n\r\n<p>Với 1 chạm nhanh ch&oacute;ng bạn c&oacute; thể chuyển đổi giữa chế độ 1x v&agrave; zoom 2x, hoặc bạn c&oacute; thể k&eacute;o thanh trượt hay d&ugrave;ng 2 ng&oacute;n tay đến zoom. Apple đ&atilde; th&ecirc;m t&iacute;nh năng zoom kỹ thuật số l&ecirc;n đến 10x.</p>\r\n\r\n<p>Camera trước n&acirc;ng cấp độ ph&acirc;n giải 7MP với khẩu độ mở lớn f/2.2 hỗ trợ chụp trong điều kiện thiếu s&aacute;ng tuyệt vời với c&ocirc;ng nghệ Retina Flash, Auto HDR.</p>\r\n', 0, 1, '2019-06-24 21:08:44', '2019-06-25 18:14:38'),
(6, 'iphone 8 plus', 'iphone-8-plus', 14530000, 'iphone-8-plus-hh-400x400.jpg', 'Phụ kiện: sạc, cáp, tai nghe', 'Bảo Hành: 12 tháng', 'Khuyến mại: Dán màn hình', 'Tình trạng: Máy mới 100%', 1, '<p>Thừa hưởng những thiết kế đ&atilde; đạt đến độ chuẩn mực, thế hệ&nbsp;<a href=\"https://www.thegioididong.com/dtdd/iphone-8-plus\" target=\"_blank\">iPhone 8 Plus</a>&nbsp;thay đổi phong c&aacute;ch b&oacute;ng bẩy hơn v&agrave; bổ sung h&agrave;ng loạt t&iacute;nh năng cao cấp cho trải nghiệm sử dụng v&ocirc; c&ugrave;ng tuyệt vời.</p>\r\n', 0, 1, '2019-06-24 21:11:23', '2019-06-25 18:17:07'),
(7, 'iphone x 64gb', 'iphone-x-64gb', 21990000, 'iphone-x-64gb-21-400x400.jpg', 'Phụ kiện: sạc, cáp, tai nghe', 'Bảo Hành: 12 tháng', 'Khuyến mại: Dán màn hình', 'Tình trạng: Máy mới 100%', 0, '<h2><a href=\"https://www.thegioididong.com/dtdd/iphone-x-64gb\" target=\"_blank\">iPhone X</a>&nbsp;l&agrave; cụm từ được&nbsp;rất nhiều người mong chờ muốn biết v&agrave; t&igrave;m kiếm tr&ecirc;n Google bởi đ&acirc;y l&agrave; chiếc điện thoại m&agrave; Apple kỉ niệm 10 năm&nbsp;<a href=\"https://www.thegioididong.com/dtdd-apple-iphone\" target=\"_blank\">iPhone</a>&nbsp;đầu ti&ecirc;n được b&aacute;n ra.</h2>\r\n\r\n<h3>Thiết kế mang t&iacute;nh đột ph&aacute;</h3>\r\n\r\n<p>Như c&aacute;c bạn cũng đ&atilde; biết th&igrave; đ&atilde; 4 năm kể từ chiếc&nbsp;<a href=\"https://www.thegioididong.com/dtdd\" target=\"_blank\">điện thoại</a>&nbsp;iPhone 6 v&agrave; iPhone 6 Plus th&igrave; Apple&nbsp;vẫn chưa c&oacute; thay đổi n&agrave;o đ&aacute;ng kể trong thiết kế của m&igrave;nh.</p>\r\n', 0, 1, '2019-06-25 18:18:45', '2019-06-25 18:18:45'),
(8, 'iphone x 256gb', 'iphone-x-256gb', 27990000, 'iphone-x-256gb-20-400x400.jpg', 'Phụ kiện: sạc, cáp, tai nghe', 'Bảo Hành: 12 tháng', 'Khuyến mại: Dán màn hình', 'Tình trạng: Máy mới 100%', 0, '<h2><a href=\"https://www.thegioididong.com/dtdd/iphone-x-256gb\" target=\"_blank\">iPhone X</a>&nbsp;được đ&atilde; được&nbsp;<a href=\"https://www.thegioididong.com/dtdd-apple-iphone\" target=\"_blank\">Apple</a>&nbsp;cho ra mắt ng&agrave;y 12/9 vừa rồi đ&aacute;nh dấu chặng đường 10 năm lần đầu ti&ecirc;n iPhone ra đời. iPhone X mang tr&ecirc;n m&igrave;nh thiết kế ho&agrave;n to&agrave;n mới với m&agrave;n h&igrave;nh Super Retina viền cực mỏng v&agrave; trang bị nhiều c&ocirc;ng nghệ hiện đại như nhận diện khu&ocirc;n mặt Face ID,&nbsp;<a href=\"https://www.thegioididong.com/dtdd?f=sac-pin-nhanh\" target=\"_blank\">sạc pin nhanh</a>&nbsp;v&agrave; sạc kh&ocirc;ng d&acirc;y c&ugrave;ng khả năng&nbsp;<a href=\"https://www.thegioididong.com/dtdd?f=chong-nuoc-bui\" target=\"_blank\">chống nước bụi</a>&nbsp;cao cấp.</h2>\r\n\r\n<h3>Thiết kế lu&ocirc;n mang t&iacute;nh đi đầu v&agrave; cao cấp</h3>\r\n', 0, 1, '2019-06-25 18:21:06', '2019-06-25 18:21:06'),
(9, 'iphone xr 128gb red', 'iphone-xr-128gb-red', 173600000, 'iphone-xr-128gb-red-400x400.jpg', 'Phụ kiện: sạc, cáp, tai nghe', 'Bảo Hành: 12 tháng', 'Khuyến mại: Dán màn hình', 'Tình trạng: Máy mới 100%', 0, '<p>B&agrave;i viết đ&aacute;nh gi&aacute;</p>\r\n\r\n<h2>Được xem l&agrave; phi&ecirc;n bản&nbsp;<a href=\"https://www.thegioididong.com/dtdd-apple-iphone\" target=\"_blank\">iPhone</a>&nbsp;gi&aacute; rẻ đầy ho&agrave;n hảo,&nbsp;<a href=\"https://www.thegioididong.com/dtdd/iphone-xr-128gb\" target=\"_blank\">iPhone Xr 128GB</a>&nbsp;khiến người d&ugrave;ng c&oacute; nhiều sự lựa chọn hơn về m&agrave;u sắc&nbsp;đa dạng nhưng vẫn sở hữu cấu h&igrave;nh mạnh mẽ v&agrave; thiết kế sang trọng.</h2>\r\n\r\n<h3>M&agrave;n h&igrave;nh tr&agrave;n viền c&ocirc;ng nghệ LCD - True Tone</h3>\r\n\r\n<p>Thay v&igrave; sở hữu m&agrave;n h&igrave;nh OLED truyền thống, chiếc&nbsp;<a href=\"https://www.thegioididong.com/dtdd\" target=\"_blank\">smartphone</a>&nbsp;n&agrave;y sở hữu m&agrave;n h&igrave;nh LCD.</p>\r\n\r\n<p>B&ugrave; lại với c&ocirc;ng nghệ&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-cong-nghe-man-hinh-true-tone-992705\" target=\"_blank\">True Tone</a>&nbsp;c&ugrave;ng m&agrave;n h&igrave;nh tr&agrave;n viền rộng tới 6.1 inch, mọi trải nghiệm tr&ecirc;n m&aacute;y vẫn đem lại sự th&iacute;ch th&uacute; v&agrave; ho&agrave;n hảo, như d&ograve;ng cao cấp kh&aacute;c của Apple.</p>\r\n', 0, 1, '2019-06-25 18:23:21', '2019-06-25 18:23:21'),
(10, 'iphone xs max 512gb gold', 'iphone-xs-max-512gb-gold', 30420000, 'iphone-xs-max-512gb-gold-400x400.jpg', 'Phụ kiện: sạc, cáp, tai nghe', 'Bảo Hành: 12 tháng', 'Khuyến mại: Dán màn hình', 'Tình trạng: Máy mới 100%', 1, '<h1>Apple iPhone Xs Max 512GB V&agrave;ng kim (H&agrave;ng nhập khẩu Mỹ)</h1>\r\n\r\n<p>&nbsp;(4,5)</p>\r\n\r\n<p>Thương hiệu:&nbsp;&nbsp;<a href=\"https://www.adayroi.com/apple-br1107\">Apple</a>|&nbsp;Nh&agrave; cung cấp<a href=\"https://www.adayroi.com/tech-house-mc501026\">:&nbsp;TECH HOUSE</a></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>- M&agrave;n Retina tai thỏ 6.5&quot;, tr&agrave;n m&agrave;n h&igrave;nh, HDR sắc n&eacute;t<br />\r\n	- Chuẩn chống nước v&agrave; chống bụi IP68<br />\r\n	- Face ID nhanh nhạy hơn, 1 Nano SIM v&agrave; 1 eSIM<br />\r\n	- Tốc độ mượt m&agrave; với chip A12 Bionic 6 nh&acirc;n mạnh mẽ<br />\r\n	- Hệ thống camera k&eacute;p 12MP với cảm biến kết hợp ISP v&agrave; Neural Engine</p>\r\n	</li>\r\n</ul>\r\n', 1, 1, '2019-06-25 18:25:28', '2019-06-25 18:25:28'),
(11, 'samsung galaxy a70 black', 'samsung-galaxy-a70-black', 7310000, 'samsung-galaxy-a70-black-400x400.jpg', 'Phụ kiện: sạc, cáp, tai nghe', 'Bảo Hành: 12 tháng', 'Khuyến mại: Dán màn hình', 'Tình trạng: Máy mới 100%', 0, '<p>B&agrave;i viết đ&aacute;nh gi&aacute;</p>\r\n\r\n<h2><a href=\"https://www.thegioididong.com/dtdd/samsung-galaxy-a70\" target=\"_blank\">Samsung Galaxy A70</a>&nbsp;l&agrave; một phi&ecirc;n bản ph&oacute;ng to của chiếc&nbsp;<a href=\"https://www.thegioididong.com/dtdd/samsung-galaxy-a50\" target=\"_blank\">Samsung Galaxy A50</a>&nbsp;đ&atilde; ra mắt trước đ&oacute; với nhiều cải tiến tới từ b&ecirc;n trong.</h2>\r\n\r\n<h3>M&agrave;n h&igrave;nh k&iacute;ch thước lớn, trải nghiệm &quot;đ&atilde; hơn&quot;</h3>\r\n\r\n<p>Màn hình của chiếc Galaxy A70 có k&iacute;ch thước kh&aacute; lớn l&ecirc;n đ&ecirc;́n 6.7 inch đ&ocirc;̣ ph&acirc;n giải&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc/do-phan-giai-man-hinh-qhd-hd-fullhd-2k-4k-la-gi--592178#fullhd\" target=\"_blank\">Full HD+</a>&nbsp;tr&ecirc;n t&acirc;́m n&ecirc;̀n&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/man-hinh-super-amoled-la-gi-905770\" target=\"_blank\">Super AMOLED</a>.</p>\r\n', 0, 2, '2019-06-25 18:29:26', '2019-06-25 18:29:26'),
(12, 'samsung galaxy s9 plus 64gb vang do', 'samsung-galaxy-s9-plus-64gb-vang-do', 11440000, 'samsung-galaxy-s9-plus-64gb-vang-do.jpg', 'Phụ kiện: sạc, cáp, tai nghe', 'Bảo Hành: 12 tháng', 'Khuyến mại: Dán màn hình', 'Tình trạng: Máy mới 100%', 1, '<p>B&agrave;i viết đ&aacute;nh gi&aacute;</p>\r\n\r\n<h2><a href=\"https://www.thegioididong.com/dtdd/samsung-galaxy-s9-plus-64gb-vang-do\" target=\"_blank\">Galaxy S9+ Vang Đỏ</a>&nbsp;đ&atilde; được&nbsp;<a href=\"https://www.thegioididong.com/dtdd-samsung\" target=\"_blank\">Samsung</a>&nbsp;ch&iacute;nh thức&nbsp;mở b&aacute;n v&agrave;o dịp Noel, đầu năm mới. M&aacute;y t&iacute;ch hợp to&agrave;n bộ những t&iacute;nh năng cao cấp nhất như camera k&eacute;p điều chỉnh khẩu độ,&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/cong-nghe-quet-mong-mat-771818\" target=\"_blank\">qu&eacute;t mống mắt</a>, chống nước chống bụi v&agrave; trang bị chip&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc/exynos-9810-vuot-qua-4-000-diem-don-loi-tren-geekbench-1101678\" target=\"_blank\">Exynos 9810</a>&nbsp;đầy mạnh mẽ.</h2>\r\n\r\n<h3>Lộng lẫy m&ugrave;a lễ hội với sắc đỏ quyến rũ</h3>\r\n\r\n<p>Samsung Galaxy S9+ Vang Đỏ nổi bật với sắc m&agrave;u độc đ&aacute;o m&agrave; &iacute;t d&ograve;ng m&aacute;y kh&aacute;c hướng đến. M&agrave;u đỏ quyến rũ kết hợp với thiết kế khung kim loại v&agrave; hai mặt k&iacute;nh cường lực đem lại cho S9+ một vẻ bề ngo&agrave;i bắt mắt v&agrave; đẳng cấp nhất.</p>\r\n', 1, 2, '2019-06-25 18:30:59', '2019-06-25 18:30:59'),
(13, 'samsung galaxy s10 white', 'samsung-galaxy-s10-white', 1430000, 'samsung-galaxy-s10-white.jpg', 'Phụ kiện: sạc, cáp, tai nghe', 'Bảo Hành: 12 tháng', 'Khuyến mại: Dán màn hình', 'Tình trạng: Máy mới 100%', 1, '<p>B&agrave;i viết đ&aacute;nh gi&aacute;</p>\r\n\r\n<h2><a href=\"https://www.thegioididong.com/dtdd/samsung-galaxy-s10\" target=\"_blank\">Samsung Galaxy S10</a>&nbsp;l&agrave; chiếc&nbsp;<a href=\"https://www.thegioididong.com/dtdd\" target=\"_blank\">smartphone</a>&nbsp;kỉ niệm 10 năm ng&agrave;y kể từ ng&agrave;y đầu ti&ecirc;n Samsung ra mắt chiếc Galaxy S v&agrave; kh&ocirc;ng phụ sự chờ đợi của người d&ugrave;ng th&igrave;&nbsp;Samsung Galaxy S10 thực sự rất ấn tượng.</h2>\r\n\r\n<h3>Thiết kế lột x&aacute;c, tạo xu thế mới</h3>\r\n\r\n<p>C&aacute;i nh&igrave;n sẽ l&agrave; điểm ấn tượng đầu ti&ecirc;n tr&ecirc;n&nbsp;Samsung Galaxy S10 khi Samsung mang đến cho ch&uacute;ng ta một thiết bị cao cấp v&agrave; sang trọng như m&oacute;n đồ trang sức.</p>\r\n', 1, 2, '2019-06-25 18:32:22', '2019-06-25 18:32:22'),
(14, 'huawei nova 3i', 'huawei-nova-3i', 5490000, 'huawei-nova-3i-trang-chipu-400x400.jpg', 'Phụ kiện: sạc, cáp, tai nghe', 'Bảo Hành: 12 tháng', 'Khuyến mại: Dán màn hình', 'Tình trạng: Máy mới 100%', 1, '<h2>Với những smartphone như&nbsp;<a href=\"https://www.thegioididong.com/dtdd/huawei-nova-2i\" target=\"_blank\">Nova 2i</a>&nbsp;hay&nbsp;<a href=\"https://www.thegioididong.com/dtdd/huawei-nova-3e\" target=\"_blank\">Nova 3e</a>&nbsp;th&igrave; Huawei đ&atilde; v&agrave; đang tạo n&ecirc;n những cơn sốt rất lớn trong ph&acirc;n kh&uacute;c tầm trung v&agrave; c&aacute;i t&ecirc;n mới&nbsp;<a href=\"https://www.thegioididong.com/dtdd/huawei-nova-3i\" target=\"_blank\">Huawei Nova 3i</a>&nbsp;được cải tiến v&agrave; n&acirc;ng cấp nhiều điểm mới, hứa hẹn sẽ mang lại l&agrave;n gi&oacute; mới cho thị trường.</h2>\r\n\r\n<h3>Thiết kế bắt mắt với mặt lưng chuyển m&agrave;u</h3>\r\n\r\n<p>Nova 3i sở hữu mặt lưng k&iacute;nh chuyển m&agrave;u gradient kiểu như&nbsp;<a href=\"https://www.thegioididong.com/dtdd\" target=\"_blank\">điện thoại</a>&nbsp;Huawei P20 Pro, nhờ thiết kế mặt lưng k&iacute;nh ấn tượng đ&atilde; đem lại cho m&aacute;y một thiết kế hiện đại v&agrave; tinh tế.</p>\r\n', 1, 7, '2019-06-25 18:33:55', '2019-06-25 18:33:55'),
(15, 'huawei y6 prime 2018', 'huawei-y6-prime-2018', 1290000, 'huawei-y6-prime-2018-1-2-400x400.jpg', 'Phụ kiện: sạc, cáp, tai nghe', 'Bảo Hành: 12 tháng', 'Khuyến mại: Dán màn hình', 'Tình trạng: Máy mới 100%', 0, '<h2><a href=\"https://www.thegioididong.com/dtdd/huawei-y6-prime\" target=\"_blank\">Huawei Y6 Prime</a>&nbsp;l&agrave; chiếc&nbsp;<a href=\"https://www.thegioididong.com/dtdd\" target=\"_blank\">smartphone</a>&nbsp;gi&aacute; rẻ với m&agrave;n h&igrave;nh tr&agrave;n viền k&iacute;ch thước lớn.</h2>\r\n\r\n<h3>Thiết kế cứng c&aacute;p</h3>\r\n\r\n<p><a href=\"https://www.thegioididong.com/dtdd-huawei\" target=\"_blank\">Huawei</a>&nbsp;tiếp tục mang l&ecirc;n một chiếc smartphone gi&aacute; rẻ của m&igrave;nh m&agrave;n h&igrave;nh tr&agrave;n viền 18:9 với k&iacute;ch thước 5.7 inch.</p>\r\n', 0, 7, '2019-06-25 18:35:13', '2019-06-25 18:35:13'),
(16, 'oppo a5s red', 'oppo-a5s-red', 3150000, 'oppo-a5s-red-400x400.jpg', 'Phụ kiện: sạc, cáp, tai nghe', 'Bảo Hành: 12 tháng', 'Khuyến mại: Dán màn hình', 'Tình trạng: Máy mới 100%', 0, '<p>B&agrave;i viết đ&aacute;nh gi&aacute;</p>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2><a href=\"https://www.thegioididong.com/dtdd/oppo-a5s\" target=\"_blank\">OPPO A5s</a>&nbsp;l&agrave; một chiếc m&aacute;y gi&aacute; rẻ v&agrave; vẫn giữ được cho m&igrave;nh những ưu điểm m&agrave; người d&ugrave;ng y&ecirc;u th&iacute;ch của một chiếc smartphone tới từ&nbsp;<a href=\"https://www.thegioididong.com/dtdd-oppo\" target=\"_blank\">OPPO</a>.</h2>\r\n\r\n<h3>Nhắc đến OPPO l&agrave; nghĩ ngay về thời trang</h3>\r\n\r\n<p>Đ&oacute; l&agrave; một thiết kế thời trang, nhiều m&agrave;u sắc nổi bật gi&uacute;p c&aacute;c bạn trẻ tự tin thể hiện c&aacute; t&iacute;nh của m&igrave;nh.</p>\r\n', 0, 5, '2019-06-25 18:37:02', '2019-06-25 18:37:02'),
(17, 'oppo f9 6gb red', 'oppo-f9-6gb-red', 4410000, 'oppo-f9-6gb-red-400x400.jpg', 'Phụ kiện: sạc, cáp, tai nghe', 'Bảo Hành: 12 tháng', 'Khuyến mại: Dán màn hình', 'Tình trạng: Máy mới 100%', 1, '<p>B&agrave;i viết đ&aacute;nh gi&aacute;</p>\r\n\r\n<h2>L&agrave; chiếc&nbsp;<a href=\"https://www.thegioididong.com/dtdd-oppo\" target=\"_blank\">điện thoại OPPO</a>&nbsp;được n&acirc;ng cấp cấu h&igrave;nh, cụ thể l&agrave; RAM l&ecirc;n tới 6 GB,&nbsp;<a href=\"https://www.thegioididong.com/dtdd/oppo-f9-6gb\" target=\"_blank\">OPPO F9 6GB</a>&nbsp;c&ograve;n trang bị nhiều t&iacute;nh năng đột ph&aacute; như sở hữu c&ocirc;ng nghệ sạc VOOC mới nhất, mặt lưng chuyển m&agrave;u độc đ&aacute;o,&nbsp;m&agrave;n h&igrave;nh tr&agrave;n viền&nbsp;giọt nước v&agrave; camera chụp ch&acirc;n dung t&iacute;ch hợp&nbsp;tr&iacute; tuệ nh&acirc;n tạo A.I&nbsp;ho&agrave;n hảo.</h2>\r\n\r\n<h3>Cấu h&igrave;nh mạnh mẽ với RAM l&ecirc;n tới 6 GB v&agrave; chip&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc/mediatek-gioi-thieu-helio-p60-tai-mwc-2018-tap-trung-ai-va-hieu-suat-1069899\" target=\"_blank\">Helio P60</a></h3>\r\n', 1, 5, '2019-06-25 18:38:12', '2019-06-25 18:38:12'),
(18, 'xiaomi mi 8 black', 'xiaomi-mi-8-black', 6490000, 'xiaomi-mi-8-black-400x400 (1).jpg', 'Phụ kiện: sạc, cáp, tai nghe', 'Bảo Hành: 12 tháng', 'Khuyến mại: Dán màn hình', 'Tình trạng: Máy mới 100%', 1, '<h2><a href=\"https://www.thegioididong.com/dtdd/xiaomi-black-shark-2\" target=\"_blank\">Xiaomi Black Shark 2</a>&nbsp;l&agrave; một chiếc m&aacute;y d&agrave;nh ri&ecirc;ng cho những người th&iacute;ch chơi game với những trang bị d&agrave;nh ri&ecirc;ng cho việc &quot;chiến game&quot;.</h2>\r\n\r\n<h3>Trang bị mọi ưu điểm chỉ để &quot;game&quot;</h3>\r\n\r\n<p>Nếu bạn l&agrave; một game thủ th&igrave; chắc chắn bạn sẽ muốn sở hữu ngay cho m&igrave;nh một chiếc&nbsp;<a href=\"https://www.thegioididong.com/dtdd-xiaomi\" target=\"_blank\">smartphone Gaming Xiaomi</a>&nbsp;với những g&igrave; m&agrave; n&oacute; được trang bị.</p>\r\n', 1, 6, '2019-06-25 18:40:23', '2019-06-25 18:40:23'),
(19, 'xiaomi mi 8 lite 6gb', 'xiaomi-mi-8-lite-6gb', 7400000, 'xiaomi-mi-8-lite-6gb-18thangbh-400x400.jpg', 'Phụ kiện: sạc, cáp, tai nghe', 'Bảo Hành: 12 tháng', 'Khuyến mại: Dán màn hình', 'Tình trạng: Máy mới 100%', 0, '<h3>Được nhiều kh&aacute;ch h&agrave;ng đ&aacute;nh gi&aacute; cao bởi hiệu năng mượt m&agrave; v&agrave; ổn định nhờ RAM tới 6 GB,&nbsp;<a href=\"https://www.thegioididong.com/dtdd/xiaomi-mi-8-lite-6gb\" target=\"_blank\">Xiaomi Mi 8 Lite</a>&nbsp;c&ograve;n sở hữu những ưu điểm nổi bật kh&aacute;c như thiết kế đẹp mắt v&agrave; camera A.I hiện đại.</h3>\r\n\r\n<h3>Mạnh mẽ hơn với chip Snapdragon 660 AIE v&agrave; RAM 6 GB</h3>\r\n\r\n<p>Mi 8 Lite d&ugrave;ng chip Snapdragon 660 AIE (chuy&ecirc;n xử l&yacute; c&aacute;c t&aacute;c vụ li&ecirc;n quan đến tr&iacute; tuệ nh&acirc;n tạo) được sản xuất tr&ecirc;n quy tr&igrave;nh FinFET 10 nm, kết hợp với nh&acirc;n đồ họa Adreno 512.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Đ&acirc;y l&agrave; phi&ecirc;n bản n&acirc;ng cấp sở hữu tới 6 GB RAM v&agrave; 128 GB bộ nhớ trong mang lại trải nghiệm mượt m&agrave; với hầu hết c&aacute;c t&aacute;c vụ hằng ng&agrave;y.</p>\r\n\r\n<p>Vi&ecirc;n&nbsp;pin dung lượng 3.350 mAh với sạc nhanh Qualcomm Quick Charge 3.0 đủ đ&aacute;p ứng cho bạn nhu cầu sử dụng trong cả ng&agrave;y.</p>\r\n', 0, 6, '2019-06-25 18:41:40', '2019-06-26 07:34:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vp_products_dongho`
--

CREATE TABLE `vp_products_dongho` (
  `prod_id` int(10) UNSIGNED NOT NULL,
  `prod_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prod_slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prod_price` int(11) NOT NULL,
  `prod_img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prod_accessories` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prod_warranty` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prod_promotion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prod_condition` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prod_status` tinyint(4) NOT NULL,
  `prod_description` text COLLATE utf8_unicode_ci NOT NULL,
  `prod_featured` tinyint(4) NOT NULL,
  `prod_cate` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vp_products_dongho`
--

INSERT INTO `vp_products_dongho` (`prod_id`, `prod_name`, `prod_slug`, `prod_price`, `prod_img`, `prod_accessories`, `prod_warranty`, `prod_promotion`, `prod_condition`, `prod_status`, `prod_description`, `prod_featured`, `prod_cate`, `created_at`, `updated_at`) VALUES
(1, 'Apple Watch S3 GPS 42mm viền nhôm xám dây cao su màu đen MTF32VN/A', 'apple-watch-s3-gps-42mm-vien-nhom-xam-day-cao-su-mau-den-mtf32vna', 8490000, 'apple-watch-s3-gps-42mm-vien-nhom-day-cao-su-den-nt-400x400.jpg', 'vận chuyển miễn phí', 'Bảo Hành: 12 tháng', 'Khuyến mại: Dán màn hình', 'mới 100%', 0, '<h3>Thiết kế hiện đại năng động</h3>\r\n\r\n<p>Về mặt tổng thể&nbsp;<a href=\"https://www.thegioididong.com/dong-ho-thong-minh/apple-watch-s3-gps-42mm-vien-nhom-day-cao-su-den\" target=\"_blank\">đồng hồ th&ocirc;ng minh&nbsp;</a><a href=\"https://www.thegioididong.com/dong-ho-thong-minh/apple-watch-s3-gps-42mm-vien-nhom-day-cao-su-den\" target=\"_blank\">Apple Watch S3 GPS 42mm</a>&nbsp;c&oacute; k&iacute;ch thước tương tự như Apple Watch Series 2.&nbsp;Sản phẩm ch&uacute; trọng th&ecirc;m về mặt thẩm mỹ với thiết kế sang trọng, năng động, d&acirc;y đeo c&oacute; nhiều m&agrave;u sắc kh&aacute;c nhau.</p>\r\n', 1, 6, '2019-06-25 20:24:37', '2019-06-25 20:24:37'),
(2, 'Apple Watch S4 GPS 40mm Viền Nhôm dây cao su', 'apple-watch-s4-gps-40mm-vien-nhom-day-cao-su', 11490000, 'apple-watch-s4-gps-40mm-vien-nhom-mau-hong-nt-400x400.jpg', 'Phụ kiện: sạc, cáp, tai nghe', 'Bảo Hành: 12 tháng', 'không', 'mới 100%', 1, '<h2>Đặc điểm nổi bật của Apple Watch S4 GPS 40mm Viền Nh&ocirc;m d&acirc;y cao su</h2>\r\n', 1, 6, '2019-06-25 20:25:49', '2019-06-25 20:25:49'),
(3, 'Đồng hồ thông minh Xiaomi Amazfit Pace GPS', 'dong-ho-thong-minh-xiaomi-amazfit-pace-gps', 2400000, 'xiaomi-amazfit-pace-gps-den-nt-400x400.jpg', 'vận chuyển miễn phí', 'Bảo Hành: 12 tháng', 'không', 'mới 100%', 1, '', 1, 1, '2019-06-25 20:27:37', '2019-06-25 20:27:37'),
(4, 'Đồng hồ thông minh Huawei Watch GT Active Edition', 'dong-ho-thong-minh-huawei-watch-gt-active-edition', 3990000, 'huawei-watch-gt-xanh-la-cay-400x400.jpg', 'không', 'Bảo Hành: 12 tháng', 'không', 'mới 100%', 1, '<h2><a href=\"https://www.thegioididong.com/dong-ho-thong-minh/huawei-watch-gt-xanh-la-cay\" target=\"_blank\">Huawei Watch GT</a>&nbsp;là m&ocirc;̣t sản ph&acirc;̉m được thi&ecirc;́t k&ecirc;́ với vẻ đẹp c&ocirc;̉ đi&ecirc;̉n, đ&ocirc;̣ mỏng &acirc;́n tượng. Thời lượng pin dài l&ecirc;n đ&ecirc;́n 2 tu&acirc;̀n cùng nhi&ecirc;̀u tính năng theo dõi và rèn luy&ecirc;̣n sức khỏe.</h2>\r\n\r\n<h3>Thi&ecirc;́t k&ecirc;́ c&ocirc;̉ đi&ecirc;̉n, mỏng và đẹp mắt</h3>\r\n\r\n<p>Vỏ của&nbsp;<a href=\"https://www.thegioididong.com/dong-ho-thong-minh-huawei\" target=\"_blank\">smartwatch Huawei</a>&nbsp;được thi&ecirc;́t k&ecirc;́ đẹp mắt với vi&ecirc;̀n g&ocirc;́m, vỏ thép. Mặt đ&ocirc;̀ng h&ocirc;̀ mỏng 10.6mm. T&acirc;́m n&ecirc;̀n AMOLED 1.39&rdquo; cho ch&acirc;́t lượng hi&ecirc;̉n thị r&acirc;́t t&ocirc;́t ngay cả khi sử dụng ngoài trời.&nbsp;</p>\r\n', 1, 1, '2019-06-25 20:28:40', '2019-06-25 20:28:40'),
(5, 'Vòng đeo tay thông minh Samsung Gear Fit2 Pro', 'vong-deo-tay-thong-minh-samsung-gear-fit2-pro', 2990000, 'samsung-gear-fit2-pro-nt-1-400x400.jpg', 'không', 'Bảo Hành: 12 tháng', 'không', 'mới 100%', 1, '<h2>Mở hộp Samsung Gear Fit 2 Pro - Thiết kế v&agrave; m&agrave;u sắc đẹp, song h&agrave;nh sự tiện dụng</h2>\r\n\r\n<p>&nbsp;</p>\r\n', 1, 5, '2019-06-25 20:29:40', '2019-06-25 20:29:40'),
(6, 'Đồng hồ thông minh Samsung Galaxy watch 46mm', 'dong-ho-thong-minh-samsung-galaxy-watch-46mm', 640000, 'samsung-galaxy-watch.jpg', 'vận chuyển miễn phí', 'Bảo Hành: 12 tháng', 'không', 'mới 100%', 1, '<h3>Chuẩn mực thời trang mới</h3>\r\n\r\n<p>Tổng thể&nbsp;<a href=\"https://www.thegioididong.com/dong-ho-thong-minh/samsung-galaxy-watch-46mm\" target=\"_blank\">Samsung Galaxy Watch 46mm</a>&nbsp;c&oacute; m&agrave;u đen huyền sang trọng đi c&ugrave;ng thiết kế truyền thống với mặt đồng hồ tr&ograve;n cổ điển, v&ograve;ng xoay bezel cho khả năng điều hướng dễ d&agrave;ng.</p>\r\n', 1, 5, '2019-06-25 20:30:38', '2019-06-25 20:30:38'),
(7, 'Đồng hồ thông minh Zeblaze Crystal 2', 'dong-ho-thong-minh-zeblaze-crystal-2', 590000, 'zeblaze-crystal-2-den-nt-400x400.jpg', 'vận chuyển miễn phí', 'Bảo Hành: 12 tháng', 'không', 'mới 100%', 0, '<h2>Kh&ocirc;ng chỉ mang tr&ecirc;n m&igrave;nh vẻ ngo&agrave;i tinh tế, thời trang ph&ugrave; hợp cho cảm nam v&agrave; nữ,&nbsp;<a href=\"https://www.thegioididong.com/dong-ho-thong-minh/zeblaze-crystal-2\" target=\"_blank\">smartwatch&nbsp;Zeblaze Crystal 2</a>&nbsp;được t&iacute;ch hợp với nhiều t&iacute;nh năng th&ocirc;ng minh hỗ trợ tối đa việc tập luyện, theo d&otilde;i sức khỏe h&agrave;ng ng&agrave;y cho bạn.</h2>\r\n\r\n<h3>Thiết kế đơn giản tinh tế</h3>\r\n\r\n<p>Zeblaze Crystal 2&nbsp;với bốn g&oacute;c được bo cong kết hợp d&acirc;y đeo silicone c&oacute; khả năng t&ugrave;y chỉnh độ rộng theo cổ tay, mang đến cảm gi&aacute;c thoải m&aacute;i khi đeo trong thời gian d&agrave;i.</p>\r\n', 1, 2, '2019-06-25 20:31:47', '2019-06-25 20:31:47'),
(8, 'Vòng tay thông minh Zeblaze Plug C', 'vong-tay-thong-minh-zeblaze-plug-c', 990000, 'zeblaze-plug-c-nt-400x400.jpg', 'không', 'Bảo Hành: 12 tháng', 'không', 'mới 100%', 1, '<h2><a href=\"https://www.thegioididong.com/dong-ho-thong-minh/zeblaze-plug-c\" target=\"_blank\">V&ograve;ng tay th&ocirc;ng minh Zeblaze Plug C</a>&nbsp;được trang bị nhiều t&iacute;nh năng gi&uacute;p hỗ trợ theo d&otilde;i chế độ tập luyện hằng ng&agrave;y, c&ugrave;ng cảm biến chủ động đo nhịp tim 24/7 sẽ hỗ trợ cho bạn thể trạng sức khỏe tốt hơn.</h2>\r\n\r\n<h3>M&agrave;n h&igrave;nh lu&ocirc;n lu&ocirc;n hiển thị</h3>\r\n\r\n<p>T&iacute;nh năng lu&ocirc;n lu&ocirc;n hiển thị, kết hợp c&ugrave;ng c&ocirc;ng nghệ m&agrave;n h&igrave;nh Transflective&nbsp;LCD cho h&igrave;nh ảnh hiển thị chi tiết, dễ d&agrave;ng theo d&otilde;i th&ocirc;ng b&aacute;o kể cả khi ở ngo&agrave;i trời.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/7077/197014/zeblaze-plug-c-1-2.jpg\" onclick=\"return false;\"><img alt=\"Giao diện đa sắc màu trên Vòng tay thông minh Zeblaze Plug C\" src=\"https://cdn.tgdd.vn/Products/Images/7077/197014/zeblaze-plug-c-1-2.jpg\" /></a></p>\r\n\r\n<h3>Thay đổi mặt đồng hồ</h3>\r\n\r\n<p>Zeblaze trang bị nhiều mặt đồng hồ kh&aacute;c nhau với nhiều m&agrave;u sắc cho bạn c&oacute; nhiều sự lựa chọn ph&ugrave; hợp với c&aacute; t&iacute;nh hơn.</p>\r\n', 0, 2, '2019-06-25 20:32:58', '2019-06-25 20:32:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vp_products_laptop`
--

CREATE TABLE `vp_products_laptop` (
  `prod_id` int(10) UNSIGNED NOT NULL,
  `prod_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prod_slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prod_price` int(11) NOT NULL,
  `prod_img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prod_accessories` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prod_warranty` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prod_promotion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prod_condition` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prod_status` tinyint(4) NOT NULL,
  `prod_description` text COLLATE utf8_unicode_ci NOT NULL,
  `prod_featured` tinyint(4) NOT NULL,
  `prod_cate` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vp_products_laptop`
--

INSERT INTO `vp_products_laptop` (`prod_id`, `prod_name`, `prod_slug`, `prod_price`, `prod_img`, `prod_accessories`, `prod_warranty`, `prod_promotion`, `prod_condition`, `prod_status`, `prod_description`, `prod_featured`, `prod_cate`, `created_at`, `updated_at`) VALUES
(1, 'aptop Apple Macbook Air 2017 i5 1.8GHz/8GB/128GB (MQD32SA/A)', 'aptop-apple-macbook-air-2017-i5-18ghz8gb128gb-mqd32saa', 22490000, 'apple-macbook-air-mqd32sa-a-i5-5350u-400-1-450x300-600x600.jpg', 'Phụ kiện: sạc, cáp, tai nghe', 'Bảo Hành: 12 tháng', 'Khuyến mại: Dán màn hình', 'Tình trạng: Máy mới 100%', 1, '<h2><strong><a href=\"https://www.thegioididong.com//laptop/apple-macbook-air-mqd32sa-a-i5-5350u\">Macbook Air MQD32SA/A i5 5350U</a>&nbsp;với thiết kế vỏ nh&ocirc;m nguy&ecirc;n khối Unibody rất đẹp, chắc chắn v&agrave;&nbsp;sang trọng. Macbook Air l&agrave; một chiếc&nbsp;<a href=\"https://www.thegioididong.com/laptop?g=choi-game-khung#g:37698\" target=\"_blank\">m&aacute;y t&iacute;nh x&aacute;ch tay si&ecirc;u mỏng nhẹ</a>, hiệu năng ổn định mượt m&agrave;, thời lượng pin cực l&acirc;u, phục vụ tốt cho nhu cầu l&agrave;m việc lẫn giải tr&iacute;.</strong></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>Thiết kế si&ecirc;u mỏng v&agrave; nhẹ</strong></h3>\r\n\r\n<p>Với thiết kế đặc trưng của d&ograve;ng MacBook Air, phi&ecirc;n bản n&agrave;y chỉ mỏng&nbsp;<strong>1.7 cm</strong>&nbsp;v&agrave; trọng lượng l&agrave;&nbsp;<strong>1.35 kg</strong>, rất tiện lợi v&agrave; dễ d&agrave;ng để bạn lu&ocirc;n mang theo b&ecirc;n m&igrave;nh. Đ&acirc;y cũng l&agrave; chiếc&nbsp;<a href=\"https://www.thegioididong.com/laptop-apple-macbook\" target=\"_blank\">MacBook ch&iacute;nh h&atilde;ng</a>&nbsp;c&oacute; gi&aacute; rẻ nhất hiện tại.</p>\r\n', 1, 6, '2019-06-25 19:37:26', '2019-06-25 19:37:26'),
(2, 'Laptop Apple Macbook Air 2018 i5/8GB/128GB (MREE2SA/A)', 'laptop-apple-macbook-air-2018-i58gb128gb-mree2saa', 3190000, 'apple-macbook-air-mree2sa-a-i5-8gb-128gb-133-gold-400x400.jpg', 'Phụ kiện: sạc, cáp, tai nghe', 'Bảo Hành: 12 tháng', 'Khuyến mại: Dán màn hình', 'Tình trạng: Máy mới 100%', 1, '<h2><a href=\"https://www.thegioididong.com/laptop/apple-macbook-air-mree2sa-a-i5-8gb-128gb-133-gold\" target=\"_blank\">Macbook Air 2018</a>&nbsp;sở hữu vẻ ngo&agrave;i sang trọng v&agrave; mỏng nhẹ. Cấu h&igrave;nh đ&aacute;p ứng đầy đủ nhu cầu sử dụng văn ph&ograve;ng, giải tr&iacute; c&ugrave;ng thời lượng pin đủ để bạn sử dụng suốt cả ng&agrave;y d&agrave;i.</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Đ&aacute;p ứng tuyệt vời nhu cầu văn ph&ograve;ng</h3>\r\n\r\n<p>Dung lượng RAM 8 GB của Macbook Air 2018 cho ph&eacute;p bạn sử dụng c&ugrave;ng l&uacute;c nhiều ứng dụng, mở nhiều tab tr&igrave;nh duyệt m&agrave; kh&ocirc;ng bị đứng, giật.</p>\r\n\r\n<p>Chiếc&nbsp;<a href=\"https://www.thegioididong.com/laptop\" target=\"_blank\">laptop</a>&nbsp;<strong>Apple&nbsp;</strong>sở hữu ổ&nbsp;cứng SSD cho tốc độ khởi chạy c&aacute;c ứng dụng trong chớp mắt,&nbsp;dung lượng 128 GB l&agrave; đủ d&ugrave;ng với nhu cầu lưu trữ t&agrave;i liệu, h&igrave;nh ảnh, b&agrave;i thuyết tr&igrave;nh...</p>\r\n\r\n<p>Mẫu&nbsp;<a href=\"https://www.thegioididong.com/laptop-apple-macbook\" target=\"_blank\">Macbook</a>&nbsp;2018 c&ograve;n cho ph&eacute;p bạn c&oacute; thể sử dụng mượt m&agrave; c&aacute;c ứng dụng thiết kế chuy&ecirc;n nghiệp như Photoshop, AI,...&nbsp;</p>\r\n', 1, 6, '2019-06-25 19:38:36', '2019-06-25 19:38:36'),
(3, 'Laptop Asus VivoBook S510UN i5 8250U/4GB/1TB/ MX150/Win10/ (BQ276T)', 'laptop-asus-vivobook-s510un-i5-8250u4gb1tb-mx150win10-bq276t', 15290000, 'asus-s510un-i5-8250u-4gb-1tb-mx150-win10-bq276t-33397-thumb-400x400.jpg', 'Phụ kiện: sạc, cáp, tai nghe', 'Bảo Hành: 12 tháng', 'Khuyến mại: Dán màn hình', 'Tình trạng: Máy mới 100%', 1, '<h2><a href=\"https://www.thegioididong.com/laptop/asus-s510un-i5-8250u-4gb-1tb-mx150-win10-bq276t\" target=\"_blank\">Laptop VivoBook S510UN (BQ276T)</a>&nbsp;- Một t&acirc;n binh mới vừa được Asus tung ra thị trường với vẻ ngo&agrave;i cứng c&aacute;p, mạnh mẽ. Mẫu m&aacute;y&nbsp;<a href=\"https://www.thegioididong.com/laptop-asus?g=core-i5\" target=\"_blank\">laptop Asus core i5</a>&nbsp;xử l&yacute; tốt c&aacute;c ứng dụng đồ hoạ, v&agrave; cho trải nghiệm kh&aacute; tốt c&aacute;c game nặng, rất ph&ugrave; hợp với nh&acirc;n vi&ecirc;n văn ph&ograve;ng vừa c&oacute; thể l&agrave;m việc v&agrave; chơi game tr&ecirc;n một chiếc&nbsp;<a href=\"https://www.thegioididong.com/laptop\" target=\"_blank\">m&aacute;y t&iacute;nh x&aacute;ch tay.</a></h2>\r\n\r\n<h3>Thiết kế cứng c&aacute;p mang phong c&aacute;ch ri&ecirc;ng</h3>\r\n\r\n<p>Được ho&agrave;n thiện từ chất liệu nhựa, c&aacute;c g&oacute;c cạnh bo cong nhẹ, khớp nối giữa m&agrave;n h&igrave;nh v&agrave; th&acirc;n m&aacute;y khoẻ khoắn tạo n&ecirc;n tổng thể m&aacute;y h&agrave;i ho&agrave; kh&ocirc;ng qu&aacute; hiền ho&agrave; như c&aacute;c d&ograve;ng laptop văn ph&ograve;ng, hay mạnh mẽ như c&aacute;c d&ograve;ng&nbsp;<a href=\"https://www.thegioididong.com/laptop?g=laptop-gaming\" target=\"_blank\">laptop gaming</a>&nbsp;chuy&ecirc;n dụng.&nbsp;<a href=\"https://www.thegioididong.com/laptop/asus-s510un-i5-8250u-4gb-1tb-mx150-win10-bq276t#danhgia\" target=\"_blank\">Laptop</a><a href=\"https://www.thegioididong.com/laptop-asus\" target=\"_blank\">&nbsp;Asus</a>&nbsp;Vivobook S510UN (BQ276T) thể hiện được phong c&aacute;ch ri&ecirc;ng của bạn mỗi khi bạn muốn bứt ph&aacute;.</p>\r\n', 1, 10, '2019-06-25 19:39:37', '2019-06-25 19:39:37'),
(4, 'Laptop Apple Macbook Pro Touch MR9Q2SA/A i5 2.3GHz/8GB/256GB (2018)', 'laptop-apple-macbook-pro-touch-mr9q2saa-i5-23ghz8gb256gb-2018', 43490000, 'apple-macbook-pro-touch-mr9q2sa-a-2018-thumb-1-600x600.jpg', 'Phụ kiện: sạc, cáp, tai nghe', 'Bảo Hành: 12 tháng', 'Khuyến mại: Dán màn hình', 'Tình trạng: Máy mới 100%', 0, '<h2>Apple đ&atilde; cho ra mắt phi&ecirc;n bản&nbsp;<a href=\"https://www.thegioididong.com/laptop/apple-macbook-pro-touch-mr9q2sa-a\" target=\"_blank\">Macbook Pro 2018</a>&nbsp;vẫn l&agrave; vẻ ngo&agrave;i sang trọng, thiết kế Unibody quen thuộc của&nbsp;d&ograve;ng&nbsp;<a href=\"https://www.thegioididong.com/laptop\" target=\"_blank\">m&aacute;y t&iacute;nh x&aacute;ch tay</a>&nbsp;cao cấp đến từ thương hiệu &quot;T&aacute;o Khuyết&quot;. Sự kh&aacute;c biệt của Macbook Pro Touch so với phi&ecirc;n bản cũ phải n&oacute;i đến sự n&acirc;ng cấp cũng như c&oacute; nhiều cải tiến mới mẻ đến từ b&ecirc;n trong với một cấu h&igrave;nh mạnh mẽ hơn.</h2>\r\n\r\n<h3>Thiết kế vỏ nh&ocirc;m nguy&ecirc;n khối cao cấp</h3>\r\n\r\n<p>L&agrave; mẫu&nbsp;<a href=\"https://www.thegioididong.com/laptop-apple-macbook\" target=\"_blank\">Macbook ch&iacute;nh h&atilde;ng</a>&nbsp;cao đến từ Apple,&nbsp;Macbook Pro 13 inch 2018 được trang bị lớp vỏ nh&ocirc;m nguy&ecirc;n khối&nbsp;Unibody sang trọng, tinh tế v&agrave; chắc chắn, b&ecirc;n cạnh đ&oacute; m&aacute;y với trọng lượng chỉ 1.37 kg, người d&ugrave;ng c&oacute; thể mang m&aacute;y theo sử dụng mọi l&uacute;c mọi nơi.</p>\r\n', 1, 6, '2019-06-25 19:40:34', '2019-06-25 19:40:34'),
(5, 'Laptop Asus VivoBook X507UF i5 8250U/4GB/1TB/MX130/Win10 (EJ121T)', 'laptop-asus-vivobook-x507uf-i5-8250u4gb1tbmx130win10-ej121t', 14590000, 'asus-x507uf-i5-8250u-4gb-1tb-2gb-mx130-ej121t-thumb-1-400x400.jpg', 'Phụ kiện: sạc, cáp, tai nghe', 'Bảo Hành: 12 tháng', 'Khuyến mại: Dán màn hình', 'Tình trạng: Máy mới 100%', 1, '<h2>Laptop&nbsp;<a href=\"https://laptop%20asus%20x507uf%20i5%208250u/\" target=\"_blank\">Asus X507UF i5 8250U (EJ121T)</a>&nbsp;được thiết kế hiện đại, thanh lịch. Trọng lượng nhẹ ph&ugrave; hợp cho sinh vi&ecirc;n - nh&acirc;n vi&ecirc;n văn ph&ograve;ng khi phải mang v&aacute;c m&aacute;y t&iacute;nh hằng ng&agrave;y đến lớp, c&ocirc;ng ty. B&ecirc;n cạnh đ&oacute; m&aacute;y được trang bị cấu h&igrave;nh khoẻ để chạy tốt ứng dụng đồ hoạ, chơi game nặng ở mức cơ bản.</h2>\r\n\r\n<h3>Thiết kế hiện đại, dễ di chuyển</h3>\r\n\r\n<p><a href=\"https://www.thegioididong.com/laptop-asus\" target=\"_blank\">Laptop Asus</a>&nbsp;X507UF i5 8250U (EJ121T)&nbsp;được thiết kế hiện đại, tinh tế với chất liệu vỏ nhựa giả kim loại. C&aacute;c cạnh được bo cong nhẹ với độ d&agrave;y m&aacute;y chỉ 21,9 mm, trọng lượng 1,8 kg tiện lợi việc mang v&aacute;c, di chuyển đến c&ocirc;ng sở.</p>\r\n', 1, 10, '2019-06-25 19:41:45', '2019-06-25 19:41:45'),
(6, 'Laptop Dell Inspiron 3576 i3 7020U/4GB/1TB/ AMD 520/Win10/(C5I3133W)', 'laptop-dell-inspiron-3576-i3-7020u4gb1tb-amd-520win10c5i3133w', 11590000, 'dell-inspiron-3576-i3-7020u-450-400x400.png', 'Phụ kiện: sạc, cáp, tai nghe', 'Bảo Hành: 12 tháng', 'Khuyến mại: Dán màn hình', 'Tình trạng: Máy mới 100%', 1, '<h2>Đặc điểm nổi bật của Dell Inspiron 3576 i3 7020U/4GB/1TB/ AMD 520/Win10/(C5I3133W)</h2>\r\n\r\n<p><img src=\"https://cdn.tgdd.vn/Products/Images/44/198907/Slider/-dell-inspiron-3576-i3-7020u-4gb-1tb-2gb-amd-520-wi-33397-slider-thietke.jpg\" /></p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/hoi-dap/man-hinh-fhd-la-gi-956294\" target=\"_blank\">T&igrave;m hiểu th&ecirc;m</a></p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/hoi-dap/usb-31-la-gi-926746\" target=\"_blank\">T&igrave;m hiểu th&ecirc;m</a></p>\r\n\r\n<p>Bộ sản phẩm chuẩn: Pin,Hộp,D&acirc;y nguồn</p>\r\n\r\n<h2><a href=\"https://www.thegioididong.com/laptop/dell-inspiron-3576-i3-7020u-4gb-1tb-2gb-amd-520-wi\" target=\"_blank\">Laptop Dell Inspiron 3576&nbsp;(C5I3133W)&nbsp;</a>vừa được cho ra mắt với thiết kế mạnh mẽ nhưng cũng kh&ocirc;ng k&eacute;m phần thanh lịch. C&ugrave;ng với&nbsp;đ&oacute; l&agrave; một cấu h&igrave;nh mạnh mẽ,&nbsp;đ&aacute;p&nbsp;ứng kh&aacute; mượt m&agrave; c&aacute;c&nbsp;ứng dụng văn ph&ograve;ng cũng như xử l&yacute; tốt c&aacute;c thao t&aacute;c&nbsp;đồ họa th&igrave; chắc chắn,&nbsp;đấy sẽ l&agrave; chiếc&nbsp;<a href=\"https://www.thegioididong.com/laptop\" target=\"_blank\">m&aacute;y t&iacute;nh x&aacute;ch tay</a>&nbsp;đ&aacute;ng&nbsp;để c&acirc;n nhắc d&agrave;nh cho kh&aacute;ch h&agrave;ng l&agrave; nh&acirc;n vi&ecirc;n văn ph&ograve;ng hoặc học sinh, sinh vi&ecirc;n trong c&ugrave;ng ph&acirc;n kh&uacute;c.</h2>\r\n\r\n<h3>&nbsp;Thiết kế mạnh mẽ nhưng cũng kh&ocirc;ng k&eacute;m phần thanh lịch</h3>\r\n\r\n<p><strong>Laptop Dell Inspiron 3576 (C5I3133W)</strong>&nbsp;được trau chuốt tỉ mỉ v&agrave; ho&agrave;n thiện từ chất liệu nhựa với t&ocirc;ng m&agrave;u đen l&agrave;m chủ đạo, c&ugrave;ng với đ&oacute; l&agrave; c&aacute;c g&oacute;c cạnh được bo tr&ograve;n nhẹ tạo n&ecirc;n cho sản phẩm một sự mạnh mẽ nhưng kh&ocirc;ng k&eacute;m phần thanh lịch.</p>\r\n', 1, 7, '2019-06-25 19:42:58', '2019-06-25 19:42:58'),
(7, 'Laptop Dell Vostro 3468 i3 7020U/4GB/1TB/Win10/(70161069)', 'laptop-dell-vostro-3468-i3-7020u4gb1tbwin1070161069', 11690000, 'dell-vostro-3468-i3-7020u-70161069-ava-400x400.jpg', 'Phụ kiện: sạc, cáp, tai nghe', 'Bảo Hành: 12 tháng', 'Khuyến mại: Dán màn hình', 'Tình trạng: Máy mới 100%', 1, '<h2><a href=\"https://www.thegioididong.com/laptop/dell-vostro-3468-i3-7020u-70161069\" target=\"_blank\">Dell Vostro 3468 i3 7020U</a>&nbsp;l&agrave; chiếc&nbsp;<a href=\"https://www.thegioididong.com/laptop\" target=\"_blank\">laptop</a>&nbsp;được trang bị chip&nbsp;<a href=\"https://www.thegioididong.com/laptop-dell?g=core-i3\" target=\"_blank\">Intel Core i3</a>&nbsp;c&ugrave;ng hệ điều h&agrave;nh&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/windows-10-co-tot-khong-953411\" target=\"_blank\">Windows 10</a>&nbsp;cho hiệu năng ổn định. M&aacute;y ph&ugrave; hợp với học sinh, sinh vi&ecirc;n, c&aacute;c nh&acirc;n vi&ecirc;n văn ph&ograve;ng với nhu cầu cơ bản như&nbsp;<a href=\"https://www.thegioididong.com/laptop?g=hoc-tap-van-phong\" target=\"_blank\">học tập hay l&agrave;m việc</a>.</h2>\r\n\r\n<h3>Thiết kế truyền thống</h3>\r\n\r\n<p><a href=\"https://www.thegioididong.com/laptop\" target=\"_blank\">Laptop</a>&nbsp;Dell Vostro 3468 i3 7020U c&oacute; thiết kế vỏ nhựa chắc chắn, chống b&aacute;m bụi bẩn, v&acirc;n tay, chịu lực va chạm tốt. Độ mỏng của m&aacute;y chỉ 23.4 mm v&agrave; khối lượng l&agrave; 1.76 kg n&ecirc;n rất dễ để mang m&aacute;y đi sử dụng ở nhiều nơi.</p>\r\n', 0, 7, '2019-06-25 19:44:06', '2019-06-25 19:44:06'),
(8, 'Laptop HP 15 da0048TU N5000/4GB/500GB/Win10/(4ME63PA)', 'laptop-hp-15-da0048tu-n50004gb500gbwin104me63pa', 7390000, 'hp-15-da0048tu-4me63pa-33397-ava1-400x400.jpg', 'Phụ kiện: sạc, cáp, tai nghe', 'Bảo Hành: 12 tháng', 'Khuyến mại: Dán màn hình', 'Tình trạng: Máy mới 100%', 1, '<h2><a href=\"https://www.thegioididong.com/laptop/hp-15-da0048tu-4me63pa\" target=\"_blank\"><strong>Laptop HP 15 da0048TU N5000</strong></a>&nbsp;<strong>l&agrave; chiếc&nbsp;<a href=\"https://www.thegioididong.com/laptop\" target=\"_blank\">m&aacute;y t&iacute;nh x&aacute;ch tay</a>&nbsp;c&oacute; m&agrave;n h&igrave;nh 15.6 inch độ ph&acirc;n giải HD ph&ugrave; hợp cho người d&ugrave;ng cần một chiếc m&aacute;y để&nbsp;<a href=\"https://www.thegioididong.com/laptop?g=hoc-tap-van-phong\" target=\"_blank\">học tập, l&agrave;m việc</a>, giải tr&iacute;. Kết hợp c&ugrave;ng vi xử l&yacute; Intel Pentium v&agrave; 4 GB DDR4 m&aacute;y c&oacute; thể đ&aacute;p ứng c&aacute;c nhu cầu cơ bản một c&aacute;ch trơn tru.</strong></h2>\r\n\r\n<h3><strong>Thiết kế truyền thống</strong></h3>\r\n\r\n<p>M&aacute;y vẫn mang thiết kế truyền thống của c&aacute;c mẫu laptop phổ th&ocirc;ng kh&aacute;c với phần khung nhựa cứng c&aacute;p, bền bỉ. Tuy nhi&ecirc;n HP cũng kh&eacute;o l&eacute;o mang lại vẻ cao cấp cho chiếc laptop của m&igrave;nh bằng việc sử dụng m&agrave;u sắc v&agrave;ng đồng bắt mắt, phần k&ecirc; tay được in v&acirc;n c&aacute;ch điệu gi&uacute;p chiếc laptop tr&ocirc;ng đẹp v&agrave; thu h&uacute;t hơn.</p>\r\n', 1, 8, '2019-06-25 19:45:11', '2019-06-25 19:45:11'),
(9, 'Laptop Lenovo IdeaPad 330 15IKB i3 8130U/4GB+16GB/1TB/ (81DE020YVN)', 'laptop-lenovo-ideapad-330-15ikb-i3-8130u4gb16gb1tb-81de020yvn', 9900000, 'lenovo-ideapad-330-15ikb-i3-8130u-4gb-16gb-1tb-81-16-5-400x400.jpg', 'Phụ kiện: sạc, cáp, tai nghe', 'Bảo Hành: 12 tháng', 'Khuyến mại: Dán màn hình', 'Tình trạng: Máy mới 100%', 0, '<h2><a href=\"https://www.thegioididong.com/laptop/lenovo-ideapad-330-15ikb-i3-8130u-4gb-16gb-1tb-81\" target=\"_blank\">Lenovo IdeaPad 330 15IKB i3 81DE020YVN</a>&nbsp;l&agrave; một chiếc&nbsp;<a href=\"https://www.thegioididong.com/laptop\" target=\"_blank\">laptop</a>&nbsp;c&oacute; hiệu năng kh&aacute; ổn đối với học sinh sinh vi&ecirc;n v&agrave; d&acirc;n văn ph&ograve;ng.</h2>\r\n\r\n<h3>Thiết kế đơn giản, chắc chắn</h3>\r\n\r\n<p><a href=\"https://www.thegioididong.com/laptop-lenovo\" target=\"_blank\">Laptop Lenovo</a>&nbsp;IdeaPad 330 15IKB core i3 thế hệ thứ 8 được trang bi lớp bảo vệ đặc biệt chống m&agrave;i m&ograve;n. Đệm cao su ngay bản lề gi&uacute;p n&acirc;ng đỡ m&aacute;y th&ocirc;ng tho&aacute;ng hơn.</p>\r\n', 1, 9, '2019-06-25 19:47:07', '2019-06-25 19:47:07');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vp_products_phukien`
--

CREATE TABLE `vp_products_phukien` (
  `prod_id` int(10) UNSIGNED NOT NULL,
  `prod_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prod_slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prod_price` int(11) NOT NULL,
  `prod_img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prod_accessories` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prod_warranty` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prod_promotion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prod_condition` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prod_status` tinyint(4) NOT NULL,
  `prod_description` text COLLATE utf8_unicode_ci NOT NULL,
  `prod_featured` tinyint(4) NOT NULL,
  `prod_cate` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vp_products_phukien`
--

INSERT INTO `vp_products_phukien` (`prod_id`, `prod_name`, `prod_slug`, `prod_price`, `prod_img`, `prod_accessories`, `prod_warranty`, `prod_promotion`, `prod_condition`, `prod_status`, `prod_description`, `prod_featured`, `prod_cate`, `created_at`, `updated_at`) VALUES
(1, 'Pin sạc dự phòng Polymer 10000mAh Energizer ', 'pin-sac-du-phong-polymer-10000mah-energizer', 5500000, '357705163_pin-du-phong-energizer-ue-10032-10-000mah--3-7v-.jpg', 'không', 'Bảo Hành: 12 tháng', 'không', 'mới 100%', 0, '<h1>Pin sạc dự ph&ograve;ng Polymer 10000mAh Energizer&nbsp;</h1>\r\n', 0, 5, '2019-06-25 19:55:03', '2019-06-25 19:55:03'),
(2, 'Cáp Hoco Micro USB U3 (18cm)', 'cap-hoco-micro-usb-u3-18cm', 20000, '2984480676_hoco-cable-micro-usb-u3--18cm--.jpg', 'không', 'Bảo Hành: 12 tháng', 'không', 'mới 100%', 1, '<h2>C&aacute;p Hoco Micro USB U3 (18cm)</h2>\r\n', 0, 3, '2019-06-25 19:59:15', '2019-06-25 19:59:15'),
(3, 'Ốp lưng Memumi Ultra Thin iPhone 7 Plus', 'op-lung-memumi-ultra-thin-iphone-7-plus', 500000, '7647137041_op-lung-memumi-ultra-thin-iphone-7-.jpg', 'không', 'Bảo Hành: 12 tháng', 'không', 'mới 100%', 1, '<p><br />\r\n&nbsp; &nbsp; * Nắp sau thương hiệu cao cấp d&agrave;nh cho iPhone 7 Plus<br />\r\n&nbsp;&nbsp;&nbsp; * Thiết kế si&ecirc;u mỏng chỉ&nbsp;0.3mm &ocirc;m kh&iacute;t c&aacute;c cạnh iPhone tạo cảm gi&aacute;c liền mạch giống&nbsp;như kh&ocirc;ng mang ốp vậy<br />\r\n&nbsp;&nbsp; &nbsp;*&nbsp;Được l&agrave;m bằng nhựa PU cực bền, mỏng nhưng&nbsp;chống chịu va đập&nbsp;tốt.<br />\r\n&nbsp;&nbsp;&nbsp; * Bề mặt ốp được phủ Nano gi&uacute;p&nbsp;chống xước chống b&aacute;m v&acirc;n tay hiệu quả&nbsp;<br />\r\n&nbsp; &nbsp; *&nbsp;Kh&ocirc;ng phai, kh&ocirc;ng ố m&agrave;u, tuy mỏng nhưng cực kỳ bền bỉ.<br />\r\n&nbsp;&nbsp;&nbsp; * Dễ d&agrave;ng truy cập c&aacute;c cổng kết nối, c&aacute;c n&uacute;t điều khiển m&agrave; kh&ocirc;ng cần th&aacute;o ra<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;* Nhiều m&agrave;u sắc cho bạn lựa chọn</p>\r\n', 1, 1, '2019-06-25 20:01:39', '2019-06-25 20:01:39'),
(4, 'Ốp lưng Tết iPhone 6 Plus (2018)', 'op-lung-tet-iphone-6-plus-2018', 60000, 'op-lung-tet-iphone.jpg', 'không', 'Bảo Hành: 12 tháng', 'không', 'mới 100%', 0, '<h2><strong>Th&ocirc;ng tin Ốp lưng Tết iPhone 6 Plus (2018)</strong></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Nguy&ecirc;n hộp: 1 nắp sau cao cấp<br />\r\n<br />\r\n* Nắp sau thương hiệu cao cấp d&agrave;nh cho iPhone 6/6s Plus<br />\r\n* Thiết kế si&ecirc;u mỏng với độ bền cao<br />\r\n* Bảo vệ mặt sau cho iPhone 6/6s Plus của bạn<br />\r\n* Đế cứng chắc với g&oacute;c tr&ograve;n bảo vệ khỏi va chạm<br />\r\n* Dễ d&agrave;ng truy cập c&aacute;c cổng kết nối, c&aacute;c n&uacute;t điều khiển m&agrave; kh&ocirc;ng cần th&aacute;o ra</p>\r\n', 1, 1, '2019-06-25 20:03:20', '2019-06-25 20:03:20'),
(5, 'Tai Nghe Bluetooth Thể Thao Jabra Elite Sport 2017 - Hàng Chính Hãng', 'tai-nghe-bluetooth-the-thao-jabra-elite-sport-2017-hang-chinh-hang', 5990000, '8534218409_tai-nghe-bluetooth-jabra-elite-sport.jpg', 'vận chuyển miễn phí', 'Bảo Hành: 12 tháng', 'không', 'mới 100%', 1, '<p>Thiết kế kh&ocirc;ng d&acirc;y hiện đại</p>\r\n\r\n<p><strong>Tai Nghe Bluetooth Nh&eacute;t Tai Jabra Elite Sport</strong>&nbsp;l&agrave; chiếc tai nghe kh&ocirc;ng d&acirc;y với thiết kế ho&agrave;n to&agrave;n mới, sắc đen mạnh mẽ c&ugrave;ng kiểu d&aacute;ng si&ecirc;u nhỏ gọn, trang bị bộ đệm nhiều k&iacute;ch thước với hai cặp EarWings v&agrave; s&aacute;u cặp EarGels, hứa hẹn sẽ cho người d&ugrave;ng cảm gi&aacute;c chắc chắn khi đeo v&agrave;o tai, kh&ocirc;ng lo bị rơi rớt khi vận động, đồng thời giảm thiểu tiếng ồn xung quanh v&agrave; n&acirc;ng cao chất lượng &acirc;m thanh. Bạn cũng c&oacute; lựa chọn mang một b&ecirc;n tai hoặc mang cả hai tai nghe, tuỳ v&agrave;o hoạt động thể thao m&agrave; bạn đang tham gia.</p>\r\n\r\n<p><img alt=\"Tai Nghe Bluetooth Jabra Elite Sport - Version 2017 - Hàng Chính Hãng\" src=\"https://tikicdn.com/media/catalog/product/j/a/jabra-elite-sport.u3059.d20171026.t120127.177004.jpg\" style=\"height:567px; width:850px\" /></p>\r\n\r\n<p>Thưởng thức &acirc;m nhạc tuyệt đỉnh</p>\r\n\r\n<p>Jabra Elite Sport version 2017&nbsp;d&agrave;nh cho d&acirc;n thể thao n&ecirc;n &acirc;m thanh thi&ecirc;n về &acirc;m bass, dải trầm nhiều hơn. Nếu bạn thử nghe bản Hotel California sẽ nghe r&otilde; độ rung tạo đu&ocirc;i r&otilde; rệt của từng d&acirc;y đ&agrave;n ghita chứ kh&ocirc;ng bị ngắt đột ngột. Dải &acirc;m trung t&aacute;ch bạch, kh&ocirc;ng bị bệt. Tiếng trống nghe rất d&agrave;y v&agrave; nặng.</p>\r\n\r\n<p>Chống nước, ph&ugrave; hợp hoạt động thể thao</p>\r\n\r\n<p>Elite Sport mang thiết kế đậm chất thể thao, chống được nước v&agrave; mồ h&ocirc;i chuẩn IP67, gi&uacute;p người sử dụng thuận tiện hơn trong c&aacute;c hoạt động thể thao ngo&agrave;i trời.<br />\r\n<br />\r\n<img alt=\"Tai Nghe Bluetooth Jabra Elite Sport - Version 2017 - Hàng Chính Hãng\" src=\"data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw==\" style=\"height:567px; width:850px\" /></p>\r\n\r\n<p>Thời lượng pin l&ecirc;n đến 9 giờ</p>\r\n\r\n<p>Jabra Elite Sport hỗ trợ 3 giờ nghe nhạc v&agrave; đ&agrave;m thoại, c&ugrave;ng với đ&oacute; l&agrave; chiếc case di động c&oacute; thể hỗ trợ th&ecirc;m hai lần sạc đầy, như vậy l&agrave; tổng cộng ch&uacute;ng ta c&oacute; 9 giờ sử dụng. Tai nghe tương th&iacute;ch với smartphone Android v&agrave; iOS hoặc một số thiết bị Bluetooth th&iacute;ch hợp.<br />\r\n<br />\r\n<img alt=\"Tai Nghe Bluetooth Jabra Elite Sport - Version 2017 - Hàng Chính Hãng\" src=\"data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw==\" style=\"height:567px; width:850px\" /></p>\r\n\r\n<p>Nhận diện &acirc;m thanh th&ocirc;ng minh</p>\r\n\r\n<p>Đặc biệt, Elite Sport được trang bị loa tăng cường đ&agrave;n hồi với dải tần 20 Hz - 20 kHz. Tai nghe b&ecirc;n phải được trang bị th&ecirc;m một chip cảm ứng, nhạc sẽ tự động tắt khi th&aacute;o ra khỏi tai, khi đeo lại sẽ tự động ph&aacute;t nhạc. Nếu th&aacute;o tai b&ecirc;n tr&aacute;i, tai b&ecirc;n phải vẫn chơi nhạc b&igrave;nh thường. Ngo&agrave;i ra, bạn c&oacute; thể k&iacute;ch hoạt chế độ Hear Through để tắt tiếng nhạc khi cần phải nghe ng&oacute;ng m&ocirc;i trường xung quanh.<br />\r\n<br />\r\n<br />\r\n<img alt=\"Tai Nghe Bluetooth Jabra Elite Sport - Version 2017 - Hàng Chính Hãng\" src=\"data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw==\" style=\"height:567px; width:850px\" /></p>\r\n\r\n<p>Đo nhịp tim</p>\r\n\r\n<p>Jabra Elite Sport c&oacute; đi k&egrave;m với ứng dụng di động t&ecirc;n l&agrave; Jabra Sport Life. Cả hai sẽ c&ugrave;ng nhau đo nhịp tim v&agrave; ph&acirc;n t&iacute;ch c&aacute;c chỉ số hoạt động thể thao của bản th&acirc;n người d&ugrave;ng, ngo&agrave;i ra ứng dụng c&ograve;n đưa ra c&aacute;c lời khuy&ecirc;n tập luyện bổ &iacute;ch. B&ecirc;n cạnh đ&oacute;, Jabra Elite Sport cũng cho ph&eacute;p ta dự đo&aacute;n tốc độ chạy, thời gian ho&agrave;n th&agrave;nh đường chạy, v&agrave; những hướng dẫn gi&uacute;p hồi phục sức lực.<br />\r\n<br />\r\n<img alt=\"Tai Nghe Bluetooth Jabra Elite Sport - Version 2017 - Hàng Chính Hãng\" src=\"data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw==\" style=\"height:567px; width:850px\" /></p>\r\n\r\n<p>Ứng dụng của Jabra Elite Sport</p>\r\n\r\n<p>Th&acirc;n thiện với cả 2 hệ điều h&agrave;nh Android lẫn iOS, đ&acirc;y ch&iacute;nh l&agrave; điểm nhấn nổi bật của c&aacute;c d&ograve;ng tai nghe thể thao Jabra &ndash; Jabra Sport. Th&acirc;n thiện với cả hai hệ điều h&agrave;nh Android lẫn iOS.</p>\r\n\r\n<p>C&aacute;c ph&iacute;m bấm ngo&agrave;i chức năng điều hướng c&ograve;n d&ugrave;ng để kết nối với smartphone. Khi mở ứng dụng, Jabra sẽ hướng dẫn người d&ugrave;ng c&aacute;ch kết nối. Thao t&aacute;c kh&ocirc;ng nhiều nhưng kh&aacute; phức tạp. Khi đ&atilde; kết nối được th&igrave; c&aacute;c lần sau rất đơn giản, ứng dụng sẽ tự động tất cả, bạn chỉ cần sử dụng, kh&ocirc;ng cần thao t&aacute;c lại nữa.</p>\r\n\r\n<p>Trong ứng dụng n&agrave;y, bạn c&oacute; thể điều chỉnh v&agrave; lựa chọn &acirc;m nhạc th&ocirc;ng qua Spotify. Qua giao diện của ứng dụng cũng gi&uacute;p bạn c&oacute; thể theo d&otilde;i lịch sử r&egrave;n luyện, th&agrave;nh t&iacute;ch v&agrave; c&agrave;i đặt của m&igrave;nh.</p>\r\n\r\n<p>* Gi&aacute; sản phẩm tr&ecirc;n Tiki đ&atilde; bao gồm thuế theo luật hiện h&agrave;nh. Tuy nhi&ecirc;n tuỳ v&agrave;o từng loại sản phẩm hoặc phương thức, địa chỉ giao h&agrave;ng m&agrave; c&oacute; thể ph&aacute;t sinh th&ecirc;m chi ph&iacute; kh&aacute;c như ph&iacute; vận chuyển, phụ ph&iacute; h&agrave;ng cồng kềnh, .</p>\r\n', 1, 3, '2019-06-25 20:04:42', '2019-06-25 20:04:42'),
(6, 'ai nghe Bluetooth Baseus Magnetic Earphone', 'ai-nghe-bluetooth-baseus-magnetic-earphone', 329000, '3149617952_tai-nghe-bluetooth-baseus-magnetic.jpg', 'không', 'Bảo Hành: 12 tháng', 'không', 'mới 100%', 1, '<h1>ai nghe Bluetooth Baseus Magnetic Earphone</h1>\r\n', 1, 3, '2019-06-25 20:06:51', '2019-06-25 20:06:51'),
(7, 'Thẻ nhớ MicroSD 32GB Lexar class 10 UHS-I', 'the-nho-microsd-32gb-lexar-class-10-uhs-i', 300000, 'the-nho-microsd-32gb-lexar-class-10-uhs-i-1-600x600.jpg', 'không', 'Bảo Hành: 12 tháng', 'Khuyến mại: Dán màn hình', 'mới 100%', 1, '<h3>Giới thiệu sản phẩm</h3>\r\n\r\n<h3>Thẻ nhớ MicroSD 32GB Lexar class 10 UHS-I Chắc chắn sẽ đ&aacute;p ứng rất tốt cho nhu cầu lưu trữ dữ liệu của bạn. Với thẻ nhớ MicroSD Lexar, bạn c&oacute; thể thoải m&aacute;i lưu trữ dữ liệu m&agrave; kh&ocirc;ng cần lo lắng về vấn đề hạn chế bộ nhớ tr&ecirc;n thiết bị di động.</h3>\r\n', 1, 6, '2019-06-25 20:08:48', '2019-06-25 20:08:48'),
(8, 'Thẻ nhớ SD 8 GB Transcend Class 10', 'the-nho-sd-8-gb-transcend-class-10', 150000, 'the-nho-sdxc-sdhc-class-10-transcend-8gb-300x300.jpg', 'không', 'Bảo Hành: 12 tháng', 'không', 'mới 100%', 1, '<h3>Giới thiệu sản phẩm</h3>\r\n\r\n<h2><strong>Thẻ nhớ SD 8GB Transcend Class 10</strong></h2>\r\n\r\n<h3><strong>Thương hiệu uy t&iacute;n</strong></h3>\r\n', 0, 6, '2019-06-25 20:09:31', '2019-06-25 20:09:31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vp_products_tablet`
--

CREATE TABLE `vp_products_tablet` (
  `prod_id` int(10) UNSIGNED NOT NULL,
  `prod_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prod_slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prod_price` int(11) NOT NULL,
  `prod_img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prod_accessories` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prod_warranty` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prod_promotion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prod_condition` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prod_status` tinyint(4) NOT NULL,
  `prod_description` text COLLATE utf8_unicode_ci NOT NULL,
  `prod_featured` tinyint(4) NOT NULL,
  `prod_cate` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vp_products_tablet`
--

INSERT INTO `vp_products_tablet` (`prod_id`, `prod_name`, `prod_slug`, `prod_price`, `prod_img`, `prod_accessories`, `prod_warranty`, `prod_promotion`, `prod_condition`, `prod_status`, `prod_description`, `prod_featured`, `prod_cate`, `created_at`, `updated_at`) VALUES
(1, 'Máy tính bảng iPad Wifi 32GB (2018)', 'may-tinh-bang-ipad-wifi-32gb-2018', 7900000, 'ipad-pro-105-inch-wifi-64gb-2017-6-400x400.jpg', 'Phụ kiện: sạc, cáp, tai nghe', 'Bảo Hành: 12 tháng', 'Khuyến mại: Dán màn hình', 'Tình trạng: Máy mới 100%', 1, '<h2>Đặc điểm nổi bật của iPad Wifi 32GB (2018)</h2>\r\n\r\n<p><img src=\"https://cdn.tgdd.vn/Products/Images/522/163645/Slider/-ipad-6th-wifi-32gb-1.jpg\" /></p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/phu-kien-thong-minh/apple-pencil\" target=\"_blank\">T&igrave;m hiểu th&ecirc;m</a></p>\r\n\r\n<p>Bộ sản phẩm chuẩn: Adapter, S&aacute;ch hướng dẫn, C&aacute;p Lightning, Hộp m&aacute;y</p>\r\n\r\n<h2><strong><a href=\"https://www.thegioididong.com/may-tinh-bang/ipad-6th-wifi-32gb\" target=\"_blank\">iPad 6th Wifi 32GB</a>&nbsp;với nhiều n&acirc;ng cấp về phần cứng, đặc biệt hơn gi&aacute; của sản phẩm n&agrave;y được định h&igrave;nh ở ph&acirc;n kh&uacute;c gi&aacute; rẻ, sinh vi&ecirc;n&nbsp;sẽ l&agrave; sự lựa chọn &ldquo;kh&ocirc;ng qu&aacute; xa tầm tay&rdquo; người d&ugrave;ng.</strong></h2>\r\n\r\n<h3><strong>Thiết kế ho&agrave;n mỹ</strong></h3>\r\n\r\n<p><a href=\"https://www.thegioididong.com/may-tinh-bang-apple-ipad\" target=\"_blank\">Apple</a>&nbsp;vẫn giữ ng&ocirc;n ngữ thi&ecirc;́t k&ecirc;́ từ xa xưa tới nay, n&ecirc;n phi&ecirc;n bản iPad 6th cũng kh&ocirc;ng có gì khác lắm với những người ti&ecirc;̀n nhi&ecirc;̣m còn lại.&nbsp;</p>\r\n', 1, 5, '2019-06-25 19:07:30', '2019-06-25 19:07:30'),
(2, 'Máy tính bảng iPad Pro 11 inch Wifi 64GB (2018)', 'may-tinh-bang-ipad-pro-11-inch-wifi-64gb-2018', 21490000, 'ipad-pro-11-inch-2018-64gb-wifi-33397-thumb-400x400.jpg', 'Phụ kiện: sạc, cáp, tai nghe', 'Bảo Hành: 12 tháng', 'Khuyến mại: Dán màn hình', 'Tình trạng: Máy mới 100%', 1, '<h2>M&aacute;y t&iacute;nh bảng&nbsp;<a href=\"https://www.thegioididong.com/may-tinh-bang/ipad-pro-11-inch-2018-64gb-wifi\" target=\"_blank\">iPad Pro 11 inch 64GB Wifi (2018)</a>&nbsp;được ra mắt v&agrave;o cuối năm 2018, thu h&uacute;t nh&acirc;n vi&ecirc;n văn ph&ograve;ng, doanh nh&acirc;n bởi thiết kế hiện đại, đầy sức đột ph&aacute; v&agrave; một cấu h&igrave;nh mạnh mẽ đ&aacute;p ứng tốt tất cả c&aacute;c nhu cầu từ giải tr&iacute; đến l&agrave;m việc.</h2>\r\n\r\n<h3>Thiết kế đẳng cấp</h3>\r\n\r\n<p>iPad Pro 11 inch 64GB Wifi (2018)&nbsp;sở hữu ngoại h&igrave;nh ho&agrave;n to&agrave;n mới, viền m&agrave;n h&igrave;nh được thu hẹp hơn, 4 cạnh được v&aacute;t mạnh&nbsp;đ&atilde; khiến m&aacute;y&nbsp;trở th&agrave;nh một trong những chiếc m&aacute;y t&iacute;nh bảng đẹp nhất, đẳng cấp nhất hiện tại.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>N&uacute;t Home tr&ecirc;n thế hệ mới đ&atilde; được loại bỏ, c&aacute;c thao t&aacute;c về lại m&agrave;n h&igrave;nh ch&iacute;nh, mở thanh th&ocirc;ng b&aacute;o, mở đa nhiệm, bảng điều khiển,... đều c&oacute; thể sử dụng dễ d&agrave;ng th&ocirc;ng qua c&aacute;c thao t&aacute;c k&eacute;o vuốt thả tr&ecirc;n m&agrave;n h&igrave;nh ch&iacute;nh</p>\r\n', 0, 5, '2019-06-25 19:09:10', '2019-06-25 19:09:10'),
(3, 'Máy tính bảng Samsung Galaxy Tab', 'may-tinh-bang-samsung-galaxy-tab', 7910000, 'samsung-galaxy-tab-s5e-t725-2019-silver-400x400.jpg', 'Phụ kiện: sạc, cáp, tai nghe', 'Bảo Hành: 12 tháng', 'Khuyến mại: Dán màn hình', 'Tình trạng: Máy mới 100%', 0, '<h2><a href=\"https://www.thegioididong.com/may-tinh-bang/samsung-galaxy-tab-a-101-t515-2019\" target=\"_blank\">Samsung Galaxy Tab A 10.1 T515 (2019)</a>&nbsp;l&agrave; chiếc&nbsp;<a href=\"https://www.thegioididong.com/may-tinh-bang\" target=\"_blank\">m&aacute;y t&iacute;nh bảng</a>&nbsp;c&oacute; m&agrave;n h&igrave;nh lớn c&ugrave;ng cấu h&igrave;nh vừa phải đ&aacute;p ứng tốt cho bạn trong hầu hết c&aacute;c nhu cầu giải tr&iacute; hằng ng&agrave;y.</h2>\r\n\r\n<h3>M&agrave;n h&igrave;nh k&iacute;ch thước lớn, sử dụng thoải m&aacute;i</h3>\r\n\r\n<p>Với m&agrave;n h&igrave;nh k&iacute;ch thước lớn l&ecirc;n tới 10.1 inch th&igrave; chiếc&nbsp;<a href=\"https://www.thegioididong.com/may-tinh-bang-samsung\" target=\"_blank\">m&aacute;y t&iacute;nh bảng Samsung</a>&nbsp;gi&uacute;p bạn c&oacute; một kh&ocirc;ng gian lớn hơn để c&oacute; thể l&agrave;m việc hay giải tr&iacute;.</p>\r\n', 0, 1, '2019-06-25 19:13:01', '2019-06-25 19:13:01'),
(4, 'Máy Tính Bảng Samsung Galaxy Tab A (SM-T385) 2GB/16GB Bản Unlocked (8.0-inches) - Vàng', 'may-tinh-bang-samsung-galaxy-tab-a-sm-t385-2gb16gb-ban-unlocked-80-inches-vang', 107450000, 'samsung-galaxy-tab-a-80-2017-thumb-400x400.jpg', 'Phụ kiện: sạc, cáp, tai nghe', 'Bảo Hành: 12 tháng', 'Khuyến mại: Dán màn hình', 'Tình trạng: Máy mới 100%', 0, '<p>Thiết kế cong đẹp mắt</p>\r\n\r\n<p><strong>M&aacute;y T&iacute;nh Bảng Samsung Galaxy Tab A (SM-T385) 2GB/16GB Bản Unlocked (8.0-inches)</strong>&nbsp;được thiết kế với những đường cong mượt m&agrave;, tinh tế cuốn h&uacute;t người d&ugrave;ng ngay từ c&aacute;i nh&igrave;n đầu ti&ecirc;n. B&ecirc;n cạnh đ&oacute;, m&aacute;y mỏng v&agrave; nhẹ n&ecirc;n bạn c&oacute; thể dễ d&agrave;ng mang theo b&ecirc;n m&igrave;nh để sử dụng.</p>\r\n\r\n<p>M&agrave;n h&igrave;nh rộng 8 inch</p>\r\n\r\n<p><strong>M&aacute;y T&iacute;nh Bảng Samsung Galaxy Tab A (SM-T385) 2GB/16GB Bản Unlocked (8.0-inches)</strong>&nbsp;được trang bị m&agrave;n h&igrave;nh 8.0 inch độ ph&acirc;n giải 1280 x 800 (WXGA) cho chất lượng hiển thị ở mức kh&aacute;. Với c&ocirc;ng nghệ m&agrave;n h&igrave;nh TFT, m&aacute;y kh&ocirc;ng c&oacute; nhiều khả năng chống ch&oacute;i cũng như hỗ trợ g&oacute;c nh&igrave;n rộng như những d&ograve;ng tablet cao cấp kh&aacute;c của Samsung, nhưng b&ugrave; lại, c&ocirc;ng nghệ cảm ứng tốt gi&uacute;p c&aacute;c thao t&aacute;c tr&ecirc;n m&agrave;n h&igrave;nh c&oacute; độ ch&iacute;nh x&aacute;c cao.</p>\r\n\r\n<p>Camera chất lượng</p>\r\n\r\n<p><strong>M&aacute;y T&iacute;nh Bảng Samsung Galaxy Tab A (SM-T385) 2GB/16GB Bản Unlocked (8.0-inches)</strong>&nbsp;được trang bị camera trước với độ ph&acirc;n giải 5MP hỗ trợ bạn chụp ảnh selfie hay chat voice với bạn b&egrave; với chất lượng ổn định, t&iacute;nh năng chỉnh sửa khu&ocirc;n mặt, l&agrave;m mịn da... v&agrave; camera sau 8MP c&oacute; khả năng chạm lấy n&eacute;t, lấy n&eacute;t tự động, chỉnh s&aacute;ng tốt, chụp HDR....</p>\r\n\r\n<p>Cấu h&igrave;nh ổn định</p>\r\n\r\n<p><strong>M&aacute;y T&iacute;nh Bảng Samsung Galaxy Tab A (SM-T385) 2GB/16GB Bản Unlocked (8.0-inches)</strong>&nbsp;được trang bị vi xử l&yacute; Qualcomm MSM8917 tốc độ 1.4GHz, RAM 2 GB chạy tr&ecirc;n nền hệ điều h&agrave;nh Android 7.0. Cấu h&igrave;nh n&agrave;y đủ khả năng để đ&aacute;p ứng cho nhu cầu l&agrave;m việc cũng như giải tr&iacute; cơ bản h&agrave;ng ng&agrave;y của bạn. M&aacute;y cũng hỗ trợ đa nhiệm kh&aacute; tốt. Bộ nhớ trong 16 GB, hỗ trợ thẻ nhớ ngo&agrave;i l&ecirc;n tới 256GB cho ph&eacute;p bạn thỏa sức lưu trữ dữ liệu phục vụ cho nhu cầu l&agrave;m việc v&agrave; giải tr&iacute; h&agrave;ng ng&agrave;y của m&igrave;nh.</p>\r\n', 0, 1, '2019-06-25 19:14:39', '2019-06-25 19:14:39'),
(5, 'Máy Tính Bảng Huawei MediaPad T3 7.0 (Vàng)', 'may-tinh-bang-huawei-mediapad-t3-70-vang', 2550000, 'huawei-mediapad-t3-7-2018-33397-thumbmau-vang-400x400.png', 'Phụ kiện: sạc, cáp, tai nghe', 'Bảo Hành: 12 tháng', 'Khuyến mại: Dán màn hình', 'Tình trạng: Máy mới 100%', 1, '<p>Thiết kế đơn giản quen thuộc</p>\r\n\r\n<p><strong>M&aacute;y T&iacute;nh Bảng Huawei MediaPad T3 7.0</strong>&nbsp;sở hữu thiết kế kh&aacute; quen thuộc v&agrave; thường thấy của những chiếc m&aacute;y t&iacute;nh bảng với chất liệu nhựa c&ugrave;ng khung viền bo cong ở c&aacute;c g&oacute;c. C&aacute;c ph&iacute;m cứng tr&ecirc;n m&aacute;y được ho&agrave;n thiện kh&aacute; tốt, cho cảm gi&aacute;c bấm thoải m&aacute;i v&agrave; độ đ&agrave;n hồi cao. M&aacute;y cũng sở hữu khe cắm SIM gi&uacute;p bạn c&oacute; thể online mọi l&uacute;c mọi nơi.</p>\r\n', 1, 4, '2019-06-25 19:16:17', '2019-06-25 19:16:17'),
(6, 'Máy tính bảng Huawei Mediapad T5 10.1 inch', 'may-tinh-bang-huawei-mediapad-t5-101-inch', 5690000, 'huawei-mediapad-t5-33397-thumb123-400x400.jpg', 'Phụ kiện: sạc, cáp, tai nghe', 'Bảo Hành: 12 tháng', 'Khuyến mại: Dán màn hình', 'Tình trạng: Máy mới 100%', 0, '<h2><a href=\"https://www.thegioididong.com/may-tinh-bang/huawei-mediapad-t5\" target=\"_blank\">M&aacute;y t&iacute;nh bảng Huawei Mediapad T5</a>&nbsp;vừa được ra mắt cuối năm 2018, mang trong m&igrave;nh thiết kế trẻ trung, m&agrave;n h&igrave;nh sắc n&eacute;t v&agrave; một cấu h&igrave;nh đủ khoẻ để chơi tốt c&aacute;c tựa game cơ bản hiện nay sẽ l&agrave; sự lựa chọn đ&aacute;ng c&acirc;n nhắc trong ph&acirc;n kh&uacute;c&nbsp;<a href=\"https://www.thegioididong.com/may-tinh-bang\" target=\"_blank\">tablet</a>&nbsp;phổ th&ocirc;ng.</h2>\r\n\r\n<h3>Thiết kế hiện đại, đẹp mắt</h3>\r\n\r\n<p>Chất liệu kim loại bao bọc th&acirc;n m&aacute;y tạo sự cứng c&aacute;p, mặt trước m&aacute;y l&agrave; lớp k&iacute;nh gần ra đến viền tạo sự hiện đại v&agrave; sang trọng cho sản phẩm. C&aacute;c cạnh được bo cong nhẹ, trọng lượng m&aacute;y chỉ 470 gam gi&uacute;p bạn cầm nắm bằng 1 tay chắc chắn.</p>\r\n', 0, 4, '2019-06-25 19:17:39', '2019-06-25 19:17:39'),
(7, 'Xiaomi Mi Pad 4 Plus 4GB/64GB (4G LTE)', 'xiaomi-mi-pad-4-plus-4gb64gb-4g-lte', 70940000, 'xiaomi.jpg', 'Phụ kiện: sạc, cáp, tai nghe', 'Bảo Hành: 12 tháng', 'Khuyến mại: Dán màn hình', 'Tình trạng: Máy mới 100%', 1, '<p>Thiết kế đỉnh cao</p>\r\n\r\n<p><strong>Xiaomi Mi Pad 4 Plus 4GB/64GB (4G LTE)</strong>&nbsp;c&oacute; k&iacute;ch thước 10.1&quot;inch, lớn hơn so với bản ti&ecirc;u chuẩn khoảng 2&quot;inch. M&aacute;y vẫn c&oacute; thiết kế đơn giản nhưng lại v&ocirc; c&ugrave;ng tinh thế với sự kết hợp của kim loại v&agrave; k&iacute;nh.</p>\r\n', 1, 6, '2019-06-25 19:21:21', '2019-06-25 19:21:21'),
(8, 'Xiaomi Mi Pad 4 Plus 4GB/64GB (4G LTE)', 'xiaomi-mi-pad-4-plus-4gb64gb-4g-lte', 10790000, 'xiaomi2.jpg', 'Phụ kiện: sạc, cáp, tai nghe', 'Bảo Hành: 12 tháng', 'Khuyến mại: Dán màn hình', 'Tình trạng: Máy mới 100%', 1, '<p>Thiết kế đỉnh cao</p>\r\n\r\n<p><strong>Xiaomi Mi Pad 4 Plus 4GB/64GB (4G LTE)</strong>&nbsp;c&oacute; k&iacute;ch thước 10.1&quot;inch, lớn hơn so với bản ti&ecirc;u chuẩn khoảng 2&quot;inch. M&aacute;y vẫn c&oacute; thiết kế đơn giản nhưng lại v&ocirc; c&ugrave;ng tinh thế với sự kết hợp của kim loại v&agrave; k&iacute;nh.</p>\r\n', 1, 6, '2019-06-25 19:23:58', '2019-06-25 19:23:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vp_users`
--

CREATE TABLE `vp_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `mail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` tinyint(4) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vp_users`
--

INSERT INTO `vp_users` (`id`, `mail`, `password`, `level`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin@gmail.com', '$2y$10$AIEiljGMZFagaizKC0LCn.HWcoJjw0UDkmqsRo06w.2ESHRR2thy6', 1, 'u3kC46EUWGghDQvDvtQctzcoam1HfvGdv22c4NB1awo9VmdwkybBB9559VcP', NULL, '2019-06-23 02:20:08'),
(2, 'hung@gmail.com', '$2y$10$e1g7djmXpcx0nit94uihIeTp9KHztN3ll9krVg61o0qaYS8cqWaG2', 2, 'CpVRhyDjqHwzznIrPO14L8Wrhq1iB4fWT2GX2SWroh1YJDk5ocPekoJ0iV9V', NULL, '2019-06-23 01:23:36');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Chỉ mục cho bảng `vp_category`
--
ALTER TABLE `vp_category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `vp_category_dienmay`
--
ALTER TABLE `vp_category_dienmay`
  ADD PRIMARY KEY (`cate_id`);

--
-- Chỉ mục cho bảng `vp_category_dienthoai`
--
ALTER TABLE `vp_category_dienthoai`
  ADD PRIMARY KEY (`cate_id`);

--
-- Chỉ mục cho bảng `vp_category_dongho`
--
ALTER TABLE `vp_category_dongho`
  ADD PRIMARY KEY (`cate_id`);

--
-- Chỉ mục cho bảng `vp_category_laptop`
--
ALTER TABLE `vp_category_laptop`
  ADD PRIMARY KEY (`cate_id`);

--
-- Chỉ mục cho bảng `vp_category_phukien`
--
ALTER TABLE `vp_category_phukien`
  ADD PRIMARY KEY (`cate_id`);

--
-- Chỉ mục cho bảng `vp_category_tablet`
--
ALTER TABLE `vp_category_tablet`
  ADD PRIMARY KEY (`cate_id`);

--
-- Chỉ mục cho bảng `vp_comment_dienmay`
--
ALTER TABLE `vp_comment_dienmay`
  ADD PRIMARY KEY (`com_id`),
  ADD KEY `vp_comment_dienmay_com_product_foreign` (`com_product`);

--
-- Chỉ mục cho bảng `vp_comment_dienthoai`
--
ALTER TABLE `vp_comment_dienthoai`
  ADD PRIMARY KEY (`com_id`),
  ADD KEY `vp_comment_dienthoai_com_product_foreign` (`com_product`);

--
-- Chỉ mục cho bảng `vp_comment_dongho`
--
ALTER TABLE `vp_comment_dongho`
  ADD PRIMARY KEY (`com_id`),
  ADD KEY `vp_comment_dongho_com_product_foreign` (`com_product`);

--
-- Chỉ mục cho bảng `vp_comment_laptop`
--
ALTER TABLE `vp_comment_laptop`
  ADD PRIMARY KEY (`com_id`),
  ADD KEY `vp_comment_laptop_com_product_foreign` (`com_product`);

--
-- Chỉ mục cho bảng `vp_comment_phukien`
--
ALTER TABLE `vp_comment_phukien`
  ADD PRIMARY KEY (`com_id`),
  ADD KEY `vp_comment_phukien_com_product_foreign` (`com_product`);

--
-- Chỉ mục cho bảng `vp_comment_tablet`
--
ALTER TABLE `vp_comment_tablet`
  ADD PRIMARY KEY (`com_id`),
  ADD KEY `vp_comment_tablet_com_product_foreign` (`com_product`);

--
-- Chỉ mục cho bảng `vp_products_dienmay`
--
ALTER TABLE `vp_products_dienmay`
  ADD PRIMARY KEY (`prod_id`),
  ADD KEY `vp_products_dienmay_prod_cate_foreign` (`prod_cate`);

--
-- Chỉ mục cho bảng `vp_products_dienthoai`
--
ALTER TABLE `vp_products_dienthoai`
  ADD PRIMARY KEY (`prod_id`),
  ADD KEY `vp_products_dienthoai_prod_cate_foreign` (`prod_cate`);

--
-- Chỉ mục cho bảng `vp_products_dongho`
--
ALTER TABLE `vp_products_dongho`
  ADD PRIMARY KEY (`prod_id`),
  ADD KEY `vp_products_dongho_prod_cate_foreign` (`prod_cate`);

--
-- Chỉ mục cho bảng `vp_products_laptop`
--
ALTER TABLE `vp_products_laptop`
  ADD PRIMARY KEY (`prod_id`),
  ADD KEY `vp_products_laptop_prod_cate_foreign` (`prod_cate`);

--
-- Chỉ mục cho bảng `vp_products_phukien`
--
ALTER TABLE `vp_products_phukien`
  ADD PRIMARY KEY (`prod_id`),
  ADD KEY `vp_products_phukien_prod_cate_foreign` (`prod_cate`);

--
-- Chỉ mục cho bảng `vp_products_tablet`
--
ALTER TABLE `vp_products_tablet`
  ADD PRIMARY KEY (`prod_id`),
  ADD KEY `vp_products_tablet_prod_cate_foreign` (`prod_cate`);

--
-- Chỉ mục cho bảng `vp_users`
--
ALTER TABLE `vp_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vp_users_mail_unique` (`mail`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vp_category`
--
ALTER TABLE `vp_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vp_category_dienmay`
--
ALTER TABLE `vp_category_dienmay`
  MODIFY `cate_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `vp_category_dienthoai`
--
ALTER TABLE `vp_category_dienthoai`
  MODIFY `cate_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `vp_category_dongho`
--
ALTER TABLE `vp_category_dongho`
  MODIFY `cate_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `vp_category_laptop`
--
ALTER TABLE `vp_category_laptop`
  MODIFY `cate_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `vp_category_phukien`
--
ALTER TABLE `vp_category_phukien`
  MODIFY `cate_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `vp_category_tablet`
--
ALTER TABLE `vp_category_tablet`
  MODIFY `cate_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `vp_comment_dienmay`
--
ALTER TABLE `vp_comment_dienmay`
  MODIFY `com_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vp_comment_dienthoai`
--
ALTER TABLE `vp_comment_dienthoai`
  MODIFY `com_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `vp_comment_dongho`
--
ALTER TABLE `vp_comment_dongho`
  MODIFY `com_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `vp_comment_laptop`
--
ALTER TABLE `vp_comment_laptop`
  MODIFY `com_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `vp_comment_phukien`
--
ALTER TABLE `vp_comment_phukien`
  MODIFY `com_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vp_comment_tablet`
--
ALTER TABLE `vp_comment_tablet`
  MODIFY `com_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `vp_products_dienmay`
--
ALTER TABLE `vp_products_dienmay`
  MODIFY `prod_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `vp_products_dienthoai`
--
ALTER TABLE `vp_products_dienthoai`
  MODIFY `prod_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `vp_products_dongho`
--
ALTER TABLE `vp_products_dongho`
  MODIFY `prod_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `vp_products_laptop`
--
ALTER TABLE `vp_products_laptop`
  MODIFY `prod_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `vp_products_phukien`
--
ALTER TABLE `vp_products_phukien`
  MODIFY `prod_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `vp_products_tablet`
--
ALTER TABLE `vp_products_tablet`
  MODIFY `prod_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `vp_users`
--
ALTER TABLE `vp_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `vp_comment_dienmay`
--
ALTER TABLE `vp_comment_dienmay`
  ADD CONSTRAINT `vp_comment_dienmay_com_product_foreign` FOREIGN KEY (`com_product`) REFERENCES `vp_products_dienmay` (`prod_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `vp_comment_dienthoai`
--
ALTER TABLE `vp_comment_dienthoai`
  ADD CONSTRAINT `vp_comment_dienthoai_com_product_foreign` FOREIGN KEY (`com_product`) REFERENCES `vp_products_dienthoai` (`prod_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `vp_comment_dongho`
--
ALTER TABLE `vp_comment_dongho`
  ADD CONSTRAINT `vp_comment_dongho_com_product_foreign` FOREIGN KEY (`com_product`) REFERENCES `vp_products_dongho` (`prod_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `vp_comment_laptop`
--
ALTER TABLE `vp_comment_laptop`
  ADD CONSTRAINT `vp_comment_laptop_com_product_foreign` FOREIGN KEY (`com_product`) REFERENCES `vp_products_laptop` (`prod_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `vp_comment_phukien`
--
ALTER TABLE `vp_comment_phukien`
  ADD CONSTRAINT `vp_comment_phukien_com_product_foreign` FOREIGN KEY (`com_product`) REFERENCES `vp_products_phukien` (`prod_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `vp_comment_tablet`
--
ALTER TABLE `vp_comment_tablet`
  ADD CONSTRAINT `vp_comment_tablet_com_product_foreign` FOREIGN KEY (`com_product`) REFERENCES `vp_products_tablet` (`prod_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `vp_products_dienmay`
--
ALTER TABLE `vp_products_dienmay`
  ADD CONSTRAINT `vp_products_dienmay_prod_cate_foreign` FOREIGN KEY (`prod_cate`) REFERENCES `vp_category_dienmay` (`cate_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `vp_products_dienthoai`
--
ALTER TABLE `vp_products_dienthoai`
  ADD CONSTRAINT `vp_products_dienthoai_prod_cate_foreign` FOREIGN KEY (`prod_cate`) REFERENCES `vp_category_dienthoai` (`cate_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `vp_products_dongho`
--
ALTER TABLE `vp_products_dongho`
  ADD CONSTRAINT `vp_products_dongho_prod_cate_foreign` FOREIGN KEY (`prod_cate`) REFERENCES `vp_category_dongho` (`cate_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `vp_products_laptop`
--
ALTER TABLE `vp_products_laptop`
  ADD CONSTRAINT `vp_products_laptop_prod_cate_foreign` FOREIGN KEY (`prod_cate`) REFERENCES `vp_category_laptop` (`cate_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `vp_products_phukien`
--
ALTER TABLE `vp_products_phukien`
  ADD CONSTRAINT `vp_products_phukien_prod_cate_foreign` FOREIGN KEY (`prod_cate`) REFERENCES `vp_category_phukien` (`cate_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `vp_products_tablet`
--
ALTER TABLE `vp_products_tablet`
  ADD CONSTRAINT `vp_products_tablet_prod_cate_foreign` FOREIGN KEY (`prod_cate`) REFERENCES `vp_category_tablet` (`cate_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
