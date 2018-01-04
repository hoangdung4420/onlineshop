-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 02, 2018 lúc 10:29 AM
-- Phiên bản máy phục vụ: 10.1.26-MariaDB
-- Phiên bản PHP: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ttcn_bookshop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `abouts`
--

CREATE TABLE `abouts` (
  `id_about` int(255) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `detail` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `abouts`
--

INSERT INTO `abouts` (`id_about`, `title`, `detail`) VALUES
(1, 'Liên hệ', '-34/145 K82 Nguyễn Lương Bằng, Liên Chiểu, Đà Nằng\n- VP Hồ Chí Minh: Lầu 6 Tòa nhà Thịnh Phát - 178/8 Đường D1, Phường 25, Quận Bình Thạnh, TP Hồ Chí Minh\n- VP Hà Nội: Tầng 6, Tòa Nhà Viện Công Nghệ - 25 Vũ Ngọc Phan, Phường Láng Hạ, Quận Đống Đa, TP Hà Nội'),
(2, 'Giờ mở cửa', '7h Sáng- 17h Chiều từ thứ 2-thứ 6\n7h Sáng- 19h30\' Chiều vào chủ nhật'),
(3, 'Số điện thoại', '0978262380'),
(4, 'email', 'tramnhien4420@gmail.com'),
(5, 'google', 'https://www.google.com.vn/'),
(6, 'facebook', 'https://vi-vn.facebook.com/'),
(7, 'twitter', 'https://twitter.com/?lang=vi'),
(9, 'youtobe', 'https://www.youtube.com/?gl=VN');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bills`
--

CREATE TABLE `bills` (
  `id_bill` int(255) NOT NULL,
  `id_user` int(255) NOT NULL,
  `total` float NOT NULL,
  `payment_id` int(255) NOT NULL,
  `check_payment` int(1) NOT NULL,
  `status_id` int(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bills`
--

INSERT INTO `bills` (`id_bill`, `id_user`, `total`, `payment_id`, `check_payment`, `status_id`, `created_at`, `updated_at`) VALUES
(1, 33, 1.5, 1, 1, 3, '2016-12-09 16:49:34', '2016-12-09 16:49:34'),
(21, 35, 31, 1, 1, 3, '2017-12-06 18:08:50', '2017-12-06 18:10:54'),
(23, 2, 3.6, 1, 1, 3, '2017-12-06 18:13:16', '2017-12-13 15:49:57'),
(34, 3, 4.6, 1, 1, 3, '2017-12-07 10:02:13', '2017-12-13 15:50:21'),
(35, 3, 5.6, 2, 1, 3, '2017-12-07 10:03:50', '2017-12-07 11:51:15'),
(36, 3, 4.6, 1, 1, 3, '2017-12-07 10:05:34', '2017-12-13 15:52:03'),
(37, 3, 70.6, 1, 1, 3, '2017-12-07 10:43:58', '2017-12-13 15:52:22'),
(38, 3, 10, 2, 1, 1, '2017-12-07 10:50:41', '2017-12-07 10:50:41'),
(39, 3, 10, 2, 1, 1, '2017-12-07 11:23:58', '2017-12-07 11:23:58'),
(40, 3, 8.42, 1, 0, 1, '2017-12-07 13:12:43', '2017-12-07 13:12:43'),
(41, 3, 245.7, 1, 0, 1, '2017-12-07 13:35:42', '2017-12-07 13:35:42'),
(42, 3, 180, 1, 0, 1, '2017-12-07 13:36:12', '2017-12-07 13:36:12'),
(43, 3, 10, 2, 1, 1, '2017-12-08 07:00:32', '2017-12-08 07:00:32'),
(44, 35, 14.25, 1, 0, 2, '2017-12-08 07:47:43', '2017-12-08 17:50:04'),
(45, 35, 7, 2, 1, 1, '2017-12-08 07:56:02', '2017-12-08 07:56:02'),
(46, 35, 0.45, 1, 0, 1, '2017-12-08 08:13:12', '2017-12-08 08:13:12'),
(47, 35, 11, 2, 1, 1, '2017-12-08 09:48:30', '2017-12-08 09:48:30'),
(48, 35, 9, 2, 1, 3, '2017-12-08 10:13:11', '2017-12-08 17:34:03'),
(49, 35, 9, 1, 0, 1, '2017-12-08 10:18:37', '2017-12-08 10:18:37'),
(51, 3, 0.9, 1, 1, 3, '2017-12-08 10:31:59', '2017-12-08 17:49:38'),
(52, 3, 3.24, 1, 1, 3, '2017-12-08 10:32:51', '2017-12-08 17:49:28'),
(53, 3, 3.24, 1, 0, 2, '2017-12-08 10:35:51', '2017-12-08 17:44:56'),
(54, 35, 3.24, 2, 1, 3, '2017-12-08 11:24:34', '2017-12-08 17:15:49'),
(55, 35, 3.6, 1, 1, 3, '2017-12-08 12:26:04', '2017-12-08 17:49:14'),
(62, 35, 9, 1, 0, 1, '2017-12-09 18:14:10', '2017-12-09 18:14:10'),
(63, 34, 2.187, 1, 1, 3, '2017-12-09 18:36:36', '2017-12-13 18:01:51'),
(64, 35, 11, 2, 1, 3, '2017-12-09 18:38:11', '2017-12-15 12:28:12'),
(65, 3, 0.5, 2, 1, 1, '2017-12-10 13:00:16', '2017-12-10 13:00:16'),
(66, 36, 0.9, 2, 1, 1, '2017-12-10 13:25:20', '2017-12-10 13:25:20'),
(67, 3, 0.5, 2, 1, 1, '2017-12-10 13:32:34', '2017-12-10 13:32:34'),
(68, 3, 0.9, 1, 1, 3, '2017-12-10 16:53:32', '2017-12-13 18:01:18'),
(69, 3, 9.9, 1, 0, 1, '2017-12-15 14:07:38', '2017-12-15 14:07:38'),
(70, 3, 9, 1, 0, 1, '2017-12-18 07:22:58', '2017-12-18 07:22:58'),
(71, 3, 3.24, 1, 0, 1, '2017-12-18 07:28:46', '2017-12-18 07:28:46'),
(72, 3, 0.9, 2, 1, 1, '2017-12-18 07:33:12', '2017-12-18 07:33:12'),
(73, 3, 0.9, 2, 1, 1, '2017-12-18 07:37:09', '2017-12-18 07:37:09'),
(74, 3, 20.2275, 1, 0, 1, '2017-12-18 12:24:23', '2017-12-18 12:24:23'),
(75, 1, 10, 1, 0, 1, '2017-12-19 19:09:42', '2017-12-19 19:09:42'),
(76, 1, 42.75, 1, 0, 1, '2017-12-19 19:12:06', '2017-12-19 19:12:06'),
(77, 1, 1, 1, 0, 1, '2017-12-19 19:12:54', '2017-12-19 19:12:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill_details`
--

CREATE TABLE `bill_details` (
  `id_bd` int(255) NOT NULL,
  `bill_id` int(255) NOT NULL,
  `book_id` int(255) NOT NULL,
  `quantity` int(255) NOT NULL,
  `price` float NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bill_details`
--

INSERT INTO `bill_details` (`id_bd`, `bill_id`, `book_id`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 20, 1, 1.5, '2016-12-09 16:49:34', '2016-12-09 16:49:34'),
(15, 21, 34, 1, 1, '2017-12-06 18:08:50', '2017-12-06 18:08:50'),
(16, 21, 33, 3, 30, '2017-12-06 18:08:50', '2017-12-06 18:08:50'),
(18, 23, 8, 1, 3.6, '2017-12-06 18:13:16', '2017-12-06 18:13:16'),
(42, 34, 30, 1, 3.6, '2017-12-07 10:02:13', '2017-12-07 10:02:13'),
(43, 34, 31, 1, 1, '2017-12-07 10:02:13', '2017-12-07 10:02:13'),
(44, 35, 30, 1, 3.6, '2017-12-07 10:03:50', '2017-12-07 10:03:50'),
(45, 35, 31, 1, 1, '2017-12-07 10:03:50', '2017-12-07 10:03:50'),
(46, 35, 32, 1, 1, '2017-12-07 10:03:51', '2017-12-07 10:03:51'),
(47, 36, 31, 1, 1, '2017-12-07 10:05:34', '2017-12-07 10:05:34'),
(48, 36, 30, 1, 3.6, '2017-12-07 10:05:34', '2017-12-07 10:05:34'),
(49, 37, 34, 1, 1, '2017-12-07 10:43:58', '2017-12-07 10:43:58'),
(50, 37, 33, 1, 10, '2017-12-07 10:43:58', '2017-12-07 10:43:58'),
(51, 37, 31, 1, 1, '2017-12-07 10:43:58', '2017-12-07 10:43:58'),
(52, 37, 30, 1, 3.6, '2017-12-07 10:43:58', '2017-12-07 10:43:58'),
(53, 37, 32, 1, 1, '2017-12-07 10:43:58', '2017-12-07 10:43:58'),
(54, 37, 11, 4, 54, '2017-12-07 10:43:58', '2017-12-07 10:43:58'),
(55, 38, 34, 5, 5, '2017-12-07 10:50:41', '2017-12-07 10:50:41'),
(56, 38, 31, 5, 5, '2017-12-07 10:50:41', '2017-12-07 10:50:41'),
(57, 39, 33, 1, 10, '2017-12-07 11:23:58', '2017-12-07 11:23:58'),
(58, 40, 16, 1, 0.81, '2017-12-07 13:12:43', '2017-12-07 13:12:43'),
(59, 40, 15, 1, 0.81, '2017-12-07 13:12:43', '2017-12-07 13:12:43'),
(60, 40, 19, 1, 0.5, '2017-12-07 13:12:43', '2017-12-07 13:12:43'),
(61, 40, 17, 1, 2.7, '2017-12-07 13:12:43', '2017-12-07 13:12:43'),
(62, 40, 29, 1, 3.6, '2017-12-07 13:12:43', '2017-12-07 13:12:43'),
(63, 41, 11, 16, 216, '2017-12-07 13:35:42', '2017-12-07 13:35:42'),
(64, 41, 13, 11, 29.7, '2017-12-07 13:35:42', '2017-12-07 13:35:42'),
(65, 42, 8, 50, 180, '2017-12-07 13:36:12', '2017-12-07 13:36:12'),
(66, 43, 33, 1, 10, '2017-12-08 07:00:32', '2017-12-08 07:00:32'),
(67, 44, 14, 1, 14.25, '2017-12-08 07:47:43', '2017-12-08 07:47:43'),
(68, 45, 19, 14, 7, '2017-12-08 07:56:02', '2017-12-08 07:56:02'),
(69, 46, 19, 1, 0.5, '2017-12-08 08:13:12', '2017-12-08 08:13:12'),
(70, 47, 34, 1, 1, '2017-12-08 09:48:30', '2017-12-08 09:48:30'),
(71, 47, 33, 1, 10, '2017-12-08 09:48:30', '2017-12-08 09:48:30'),
(72, 48, 33, 1, 10, '2017-12-08 10:13:11', '2017-12-08 10:13:11'),
(73, 49, 33, 1, 10, '2017-12-08 10:18:37', '2017-12-08 10:18:37'),
(77, 51, 31, 1, 1, '2017-12-08 10:31:59', '2017-12-08 10:31:59'),
(78, 52, 30, 1, 3.6, '2017-12-08 10:32:51', '2017-12-08 10:32:51'),
(79, 53, 8, 1, 3.6, '2017-12-08 10:35:51', '2017-12-08 10:35:51'),
(80, 54, 12, 1, 3.6, '2017-12-08 11:24:34', '2017-12-08 11:24:34'),
(81, 55, 29, 1, 3.6, '2017-12-08 12:26:04', '2017-12-08 12:26:04'),
(88, 62, 33, 1, 10, '2017-12-09 18:14:10', '2017-12-09 18:14:10'),
(89, 63, 15, 2, 1.62, '2017-12-09 18:36:37', '2017-12-09 18:36:37'),
(90, 63, 16, 1, 0.81, '2017-12-09 18:36:37', '2017-12-09 18:36:37'),
(91, 64, 33, 1, 10, '2017-12-09 18:38:11', '2017-12-09 18:38:11'),
(92, 64, 32, 1, 1, '2017-12-09 18:38:11', '2017-12-09 18:38:11'),
(93, 65, 19, 1, 0.5, '2017-12-10 13:00:16', '2017-12-10 13:00:16'),
(94, 66, 36, 1, 0.9, '2017-12-10 13:25:21', '2017-12-10 13:25:21'),
(95, 67, 19, 1, 0.5, '2017-12-10 13:32:34', '2017-12-10 13:32:34'),
(96, 68, 32, 1, 1, '2017-12-10 16:53:32', '2017-12-10 16:53:32'),
(97, 69, 33, 1, 10, '2017-12-15 14:07:38', '2017-12-15 14:07:38'),
(98, 69, 32, 1, 1, '2017-12-15 14:07:38', '2017-12-15 14:07:38'),
(99, 70, 33, 1, 10, '2017-12-18 07:22:58', '2017-12-18 07:22:58'),
(100, 71, 8, 1, 3.6, '2017-12-18 07:28:46', '2017-12-18 07:28:46'),
(101, 72, 9, 1, 0.9, '2017-12-18 07:33:12', '2017-12-18 07:33:12'),
(102, 73, 9, 1, 0.9, '2017-12-18 07:37:09', '2017-12-18 07:37:09'),
(103, 74, 36, 17, 11.475, '2017-12-18 12:24:23', '2017-12-18 12:24:23'),
(104, 74, 33, 1, 10, '2017-12-18 12:24:23', '2017-12-18 12:24:23'),
(105, 74, 32, 1, 1, '2017-12-18 12:24:23', '2017-12-18 12:24:23'),
(106, 75, 33, 1, 10, '2017-12-19 19:09:43', '2017-12-19 19:09:43'),
(107, 76, 14, 3, 42.75, '2017-12-19 19:12:06', '2017-12-19 19:12:06'),
(108, 77, 34, 1, 1, '2017-12-19 19:12:54', '2017-12-19 19:12:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `books`
--

CREATE TABLE `books` (
  `id_book` int(255) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `translator` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cat_id` int(255) NOT NULL,
  `publish` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_release` date NOT NULL,
  `cover` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `size` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(255) NOT NULL,
  `unit_price` float NOT NULL,
  `promotion_price` float NOT NULL,
  `preview` text COLLATE utf8_unicode_ci NOT NULL,
  `detail` text COLLATE utf8_unicode_ci NOT NULL,
  `pages` int(255) NOT NULL,
  `count_number` int(255) NOT NULL,
  `active` int(1) NOT NULL,
  `created_by` int(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `books`
--

INSERT INTO `books` (`id_book`, `name`, `author`, `translator`, `cat_id`, `publish`, `picture`, `date_release`, `cover`, `size`, `quantity`, `unit_price`, `promotion_price`, `preview`, `detail`, `pages`, `count_number`, `active`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'quantity', 'quantity', 'quantity', 5, '1', '', '2017-11-18', 'mem', '11', 11, 0.5, 10, 'quantity', '<p>quantity</p>', 11, 5, 0, 1, '2017-11-21 17:52:20', '2017-11-22 17:16:42'),
(4, 'họ tên', 'hoten', 'hoten', 5, '1', 'aIHjbqtBGdhkMMulHyQW4VwIVl1n0g201POuMV1a.jpeg', '2017-11-04', 'mem', '67X3', 123, 123, 10, 'hotenhotenhotenhotenhoten', '<p>hotenhotenhotenhotenhoten</p>', 123, 8, 0, 1, '2017-11-21 18:07:20', '2017-11-22 17:16:39'),
(5, 'họ tênccccccccccc', 'hoten', '', 4, '1', 'hTRhbnU7VKBsTq2yhuuULycTJftubnGZOUx3x64f.jpeg', '2017-11-04', 'mem', '67X3', 123, 123, 10, '<p>hotenhotenhotenhotenhoten</p>', '<p>hotenhotenhotenhotenhoten</p>', 123, 8, 0, 1, '2017-11-21 18:09:35', '2017-12-06 06:32:11'),
(6, 'Cơm tất niên thời điểm', 'Cơm tất niên thời điểm', 'Cơm tất niên thời điểm', 5, '1', '', '2017-11-04', 'mem', '12X23', 123, 123, 10, '<p>Cơm tất ni&ecirc;n thời điểm</p>', '<p>Cơm tất ni&ecirc;n thời điểm</p>', 123, 4, 0, 1, '2017-11-21 18:11:27', '2017-11-22 17:16:35'),
(8, 'Đấu Trường Sinh Tử', 'Suzanne Collins', 'Trần Quốc Tân', 9, 'NXB Kim Đồng', 'MS0hWwAfKhdIIKmj37310LqBXckyNHNGpukeFKkH.jpeg', '2017-04-22', '14 x 20.5 cm', '14 x 20', 49, 4, 10, '<p>Một thế giới t&agrave;n nhẫn trong tương lai...</p>\r\n\r\n<p>Đ&oacute; l&agrave; khi Bắc Mỹ đang dần kh&ocirc;i phục lại sau nhiều năm ch&igrave;m trong nội chiến. Sau khi nh&agrave; nước Panem trấn &aacute;p được cuộc nổi dậy của mười ba quận, ph&aacute; hủy quận 13, những người đứng đầu bộ m&aacute;y cai trị đặt ra một h&igrave;nh phạt t&agrave;n nhẫn cho mười hai quận c&ograve;n lại. Mỗi năm từ mỗi quận một nam v&agrave; một nữ bị chọn l&agrave;m vật tế, bị gom lại tr&ecirc;n một chiến trường, phải ti&ecirc;u diệt lẫn nhau cho đến khi chỉ c&ograve;n một người duy nhất sống s&oacute;t.</p>\r\n\r\n<p>Trong một lần xả th&acirc;n cứu em g&aacute;i, Katniss sa ch&acirc;n v&agrave;o đấu trường sinh tử. C&ocirc; v&agrave; Peeta trở th&agrave;nh một cặp đồng h&agrave;nh, c&ugrave;ng phi&ecirc;u lưu v&agrave;o thế giới đầy chết ch&oacute;c, nơi m&agrave; đường v&agrave;o c&oacute; 24 lối d&agrave;nh cho 24 con người nhưng đường ra th&igrave; chỉ c&oacute; 1. Katniss sẽ phải l&agrave;m g&igrave;, khi c&aacute;c đối thủ của c&ocirc; l&agrave; một ch&agrave;ng trai c&oacute; t&igrave;nh cảm với c&ocirc; v&agrave; một người c&ocirc; coi như em g&aacute;i?</p>\r\n\r\n<p>B&iacute; ẩn, gai g&oacute;c nhưng m&atilde;nh liệt đầy chất thơ, l&agrave;m người đọc hồi hộp đến từng thớ chữ, kh&ocirc;ng phải ngẫu nhi&ecirc;n khi Đấu trường sinh tử lọt v&agrave;o danh s&aacute;ch s&aacute;ch b&aacute;n chạy nhất của tờ The New York Times trong suốt 60 tuần, v&agrave; mang lại vinh danh từ tạp ch&iacute; Time cho t&aacute;c giả Suzanne Collins như một trong những người c&oacute; ảnh hưởng nhất thế giới năm 2010.</p>\r\n\r\n<p><strong>***</strong></p>', '<p><strong>Tr&iacute;ch đoạn:</strong></p>\r\n\r\n<p><strong>Phần 1: VẬT TẾ</strong></p>\r\n\r\n<p><strong>Chương 1</strong></p>\r\n\r\n<p>...</p>\r\n\r\n<p>Một giờ, ch&uacute;ng t&ocirc;i ra b&atilde;i đất trống. Ai cũng phải c&oacute; mặt, trừ khi đang hấp hối. Đến tối, hội gi&aacute;m s&aacute;t sẽ đi v&ograve;ng quanh để kiểm tra. Ai trốn sẽ bị bỏ t&ugrave;.</p>\r\n\r\n<p>Thật kh&ocirc;ng thể tệ hơn khi buổi chi&ecirc;u qu&acirc;n được tổ chức tại b&atilde;i đất trống, một trong số &iacute;t c&aacute;c địa điểm đẹp ở Quận 12. Xung quanh b&atilde;i đất trống l&agrave; những cửa h&agrave;ng, v&agrave; trong những ng&agrave;y khu chợ mở cửa, đặc biệt khi thời tiết tốt, đến đ&acirc;y c&oacute; cảm gi&aacute;c như đi hội. Nhưng h&ocirc;m nay, mặc d&ugrave; biểu ngữ giăng sặc sỡ tr&ecirc;n c&aacute;c t&ograve;a nh&agrave;, kh&ocirc;ng kh&iacute; ở đ&acirc;y vẫn thật nặng nề. C&aacute;c đo&agrave;n quay phim vờn quanh như bầy &oacute; tr&ecirc;n n&oacute;c nh&agrave;, chỉ c&agrave;ng l&agrave;m tăng th&ecirc;m cảm gi&aacute;c nặng nề đ&oacute;.</p>\r\n\r\n<p>Người ta xếp h&agrave;ng trong im lặng v&agrave; k&yacute; t&ecirc;n. Ng&agrave;y chi&ecirc;u qu&acirc;n cũng l&agrave; một dịp tốt cho Capitol điều tra d&acirc;n số. Những đứa trẻ từ mười hai đến mười t&aacute;m được qu&acirc;y lại trong những khu vực chăng d&acirc;y chia theo độ tuổi; lớn nhất đứng trước, nhỏ nhất, như Prim, đứng về ph&iacute;a sau. Những người th&acirc;n trong gia đ&igrave;nh xếp h&agrave;ng xung quanh, nắm chặt tay nhau. Nhưng cũng c&oacute; những người kh&aacute;c kh&ocirc;ng c&oacute; người th&acirc;n trong số bọn trẻ, tổ chức đ&aacute;nh cược t&ecirc;n hai đứa trẻ sẽ được chọn. Tỷ lệ cược phụ thuộc v&agrave;o độ tuổi, v&agrave;o việc bọn trẻ thuộc khu Vỉa than hay con nh&agrave; l&aacute;i thương, hay v&agrave;o việc ch&uacute;ng c&oacute; ng&atilde; quỵ v&agrave; kh&oacute;c l&oacute;c hay kh&ocirc;ng. Hầu hết mọi người đều từ chối c&aacute; cược với lũ bịp bợm, nhưng biết đ&acirc;u đấy. Những kẻ n&agrave;y lu&ocirc;n tỏ ra m&igrave;nh l&agrave; người trong nghề, v&agrave; khi nắm ch&oacute;p ai lại kh&ocirc;ng ph&aacute; luật cơ chứ? T&ocirc;i c&oacute; thể bị bắt quả tang trong một chuyến đi săn h&agrave;ng ng&agrave;y, nhưng khi đ&oacute; lũ quan chức th&egrave;m thịt th&uacute; vẫn c&oacute; thể bảo vệ t&ocirc;i. Tuy nhi&ecirc;n, kh&ocirc;ng phải ai cũng như thế.</p>\r\n\r\n<p>D&ugrave; sao, cả Gale v&agrave; t&ocirc;i đều đồng &yacute; rằng giữa chết v&igrave; đ&oacute;i v&agrave; v&igrave; một vi&ecirc;n đạn găm v&agrave;o đầu, c&aacute;i chết thứ hai đến nhanh hơn nhiều.</p>\r\n\r\n<p>Kh&ocirc;ng gian c&agrave;ng l&uacute;c c&agrave;ng chật chội v&agrave; bức bối khi d&ograve;ng người &ugrave;n &ugrave;n k&eacute;o tới. B&atilde;i đất rộng m&ecirc;nh m&ocirc;ng, nhưng kh&ocirc;ng đủ để chứa hết t&aacute;m ngh&igrave;n người của Quận 12. Những người đến trễ đứng ở giữa con đường xung quanh, nơi họ c&oacute; thể xem qua m&agrave;n h&igrave;nh v&igrave; sự kiện n&agrave;y được ch&iacute;nh quyền truyền h&igrave;nh trực tiếp.</p>\r\n\r\n<p>T&ocirc;i đứng trong nh&oacute;m những đứa từ mười s&aacute;u tuổi đến từ khu Vỉa than. Ch&uacute;ng t&ocirc;i khẽ gật đầu ch&agrave;o nhau rồi tập trung mọi &aacute;nh nh&igrave;n l&ecirc;n s&acirc;n khấu vừa được dựng l&ecirc;n trước T&ograve;a Tư ph&aacute;p. Tr&ecirc;n đ&oacute; c&oacute; ba chiếc ghế, một chiếc bục, v&agrave; hai lồng cầu thủy tinh lớn để bốc thăm, một cho con trai v&agrave; một cho con g&aacute;i.. Hai mươi mảnh giấy trong số đ&oacute; được viết cẩn thận c&aacute;i t&ecirc;n Katniss Everdeen.</p>\r\n\r\n<p>Hai trong ba chiếc ghế tr&ecirc;n s&acirc;n khấu đ&atilde; c&oacute; người ngồi. Một l&agrave; Madge, Thị trưởng Undersee, một người đ&agrave;n &ocirc;ng cao, tr&aacute;n h&oacute; v&agrave; b&agrave; Effie Trinket, gi&aacute;m s&aacute;t vi&ecirc;n Quận 12, đến từ Capitol với nụ cười trắng nhớn đ&aacute;ng sợ, m&aacute;i t&oacute;c hồng v&agrave; bộ đồ m&agrave;u xanh mầm. Họ th&igrave; thầm với nhau rồi nh&igrave;n chiếc ghế trống một c&aacute;ch &aacute;i ngại.</p>\r\n\r\n<p>Ngay khi chiếc đồng hồ của thị trấn điểm hai giờ, ng&agrave;y thị trưởng đứng tr&ecirc;n bục bắt đầu đọc diễn văn. Năm n&agrave;o cũng như năm n&agrave;o. &Ocirc;ng kể về lịch sử của Panem, đất nước đứng l&ecirc;n từ đống đổ n&aacute;t từng c&oacute; t&ecirc;n l&agrave; Bắc Mỹ. &Ocirc;ng liệt k&ecirc; những thảm họa, những đợt hạn h&aacute;n, b&atilde;o lụt, hỏa hoạn, nước biển x&acirc;m thực nhấn ch&igrave;m nhiều v&ugrave;ng đất, những chiến &aacute;c liệt khiến hầu hết phương tiện sống bị t&agrave;n ph&aacute;. Sau c&ugrave;ng Panem được sinh ra, với Capitol ch&oacute;i lọi được bao quanh bởi mười ba quận, bảo đảm h&ograve;a b&igrave;nh v&agrave; thịnh vượng cho c&ocirc;ng d&acirc;n của m&igrave;nh. Tiếp theo l&agrave; Kỳ Đen tối, thời điểm c&aacute;c quận nồi loạn chống lại Capitol. Mười hai quận bị đ&aacute;nh bại, quận thứ mười ba bị x&oacute;a sổ. Hiệp ước Phản trắc mang đến những điều luật mới nhằm giữ vững h&ograve;a b&igrave;nh, đồng thời l&agrave; lời nhắc nhở ch&uacute;ng t&ocirc;i h&agrave;ng năm rằng Kỳ Đen tối sẽ kh&ocirc;ng bao giờ được lặp lại, khi đưa ch&uacute;ng t&ocirc;i đến với Đấu trường Sinh tử.</p>\r\n\r\n<p>Luật lệ của Đấu trường Sinh tử kh&aacute; đơn giản. Để trừng phạt việc nổi loạn, mỗi quận phải chọn ra một trai v&agrave; một g&aacute;i, gọi l&agrave; vật tế. Hai mươi bốn người chơi sẽ bị giam cầm trong một trường đấu ngo&agrave;i trời rộng lớn, nơi c&oacute; thể tồn tại mọi thứ, từ sa mạc n&oacute;ng bỏng cho đến v&ugrave;ng hoang vu lạnh gi&aacute;. Vật tế sống s&oacute;t cuối c&ugrave;ng sẽ thắng.</p>\r\n\r\n<p>Chọn những đứa trẻ từ c&aacute;c quận, bắt ch&uacute;ng t&agrave;n s&aacute;t lẫn nhau c&ograve;n những người c&ograve;n lại theo d&otilde;i, đ&oacute; l&agrave; c&aacute;ch Capitol nhắc nhở ch&uacute;ng t&ocirc;i rằng số phận của tất cả bị họ định đoạt như thế n&agrave;o, v&agrave; cơ hội sống s&oacute;t của mọi người &iacute;t ỏi ra sao nếu d&aacute;m nổi loạn một lần nữa. D&ugrave; họ c&oacute; n&oacute;i g&igrave; đi nữa, th&ocirc;ng điệp ch&iacute;nh vẫn r&otilde; r&agrave;ng.&nbsp;&quot;H&atilde;y nh&igrave;n xem, ch&uacute;ng ta lấy những đứa trẻ rồi đem ch&uacute;ng hiến tế trong khi c&aacute;c người bất lực đến mức n&agrave;o. Chỉ cần c&aacute;c ngươi động một ng&oacute;n tay, bọn ta sẽ ti&ecirc;n diệt cho đến đứa cuối c&ugrave;ng. Như c&aacute;ch bọn ta l&agrave;m với Quận 13.&quot;</p>\r\n\r\n<p>Để hạ nhục v&agrave; tra tấn bọn t&ocirc;i, Capitol buộc tất cả phải xem Đấu trường Sinh tử như một ng&agrave;y hội, một cuộc thượng đ&agrave;i giữa c&aacute;c quận với nhau. Người chơi sống s&oacute;t cuối c&ugrave;ng sẽ được hưởng cuộc sống sung t&uacute;c khi trở về, v&agrave; quận của họ sẽ nhận cơ man l&agrave; phần thưởng, chủ yếu l&agrave; thức ăn. Trong v&ograve;ng một năm, Capitol sẽ trao cho quận chiến thắng ngũ cốc,&nbsp;<a href=\"https://tiki.vn/dau-an/c5477\">dầu ăn</a>&nbsp;v&agrave; thậm ch&iacute; thứ đ&aacute;ng gi&aacute; hơn như đường trong khi c&aacute;c quận c&ograve;n lại vật lộn với đ&oacute;i kh&aacute;t.</p>\r\n\r\n<p>...</p>\r\n\r\n<p>Qua đ&aacute;m đ&ocirc;ng, t&ocirc;i nhận ra Gale đang nh&igrave;n t&ocirc;i với nụ cười thấp tho&aacute;ng. Trong ng&agrave;y chi&ecirc;u qu&acirc;n, điều đ&oacute; &iacute;t ra cũng mang lại cho cho t&ocirc;i ch&uacute;t cảm gi&aacute;c nhẹ nh&otilde;m. Nhưng bất chợt t&ocirc;i nghĩ về Gale với bốn mươi hai mảnh giấy c&oacute; t&ecirc;n anh trong lồng cầu thủy tinh kia v&agrave; x&aacute;c suất anh kh&ocirc;ng bị bốc tr&uacute;ng. Việc c&ograve;n h&agrave;ng ngh&igrave;n đứa con trai kh&aacute;c kh&ocirc;ng quan trọng. C&oacute; lẽ anh cũng đang nghĩ điều tương tự về t&ocirc;i, bởi gương mặt Gale tối sầm lại v&agrave; quay đi chỗ kh&aacute;c.&nbsp;&quot;Nhưng c&oacute; đến h&agrave;ng ngh&igrave;n mảnh giấy cơ m&agrave;,&quot;&nbsp;ước g&igrave; t&ocirc;i c&oacute; thể n&oacute;i khẽ với anh ấy.</p>\r\n\r\n<p>Đ&atilde; đến giờ bốc thăm. Effie Trinket n&oacute;i như mọi lần,&nbsp;&quot;Phụ nữ trước!&quot;&nbsp;v&agrave; đến chỗ lồng cầu thủy tinh chứa t&ecirc;n con g&aacute;i. B&agrave; lại gần, thọc tay s&acirc;u v&agrave;o lồng lấy ra một mảnh giấy. Đ&aacute;m đ&ocirc;ng đồng loạt n&iacute;n thở đến độ tưởng như c&oacute; thể nghe tiếng ngay cả một chiếc ghim rơi xuống đất, t&ocirc;i cảm thấy thắt ruột v&agrave; hy vọng nhen nh&oacute;m rằng đ&oacute; kh&ocirc;ng phải l&agrave; t&ocirc;i, đ&oacute; kh&ocirc;ng phải l&agrave; t&ocirc;i, đ&oacute; kh&ocirc;ng phải l&agrave; t&ocirc;i.</p>\r\n\r\n<p>Effie Trinket quay trở lại chiếc bục, vuốt mảnh giấy cho thẳng v&agrave; xướng t&ecirc;n bằng một giọng d&otilde;ng dạc. Kh&ocirc;ng phải t&ocirc;i.</p>\r\n\r\n<p>Đ&oacute; l&agrave; Primrose Everdeen.</p>', 400, 4, 1, 1, '2017-11-21 18:33:26', '2017-12-18 07:28:46'),
(9, 'chuyen-vat-cua-muc', 'chuyen-vat-cua-muc', '', 20, 'NXB Trẻ', '7hyHupdAEaKeWMd8GLmF2lZLwOpGGoYG2ninjwcM.jpeg', '2017-11-25', 'bìa mềm', '20X12cm', 47, 1, 10, '<p><strong>Chuyện Vặt Của M&uacute;c 2&nbsp;</strong></p>\r\n\r\n<p>M&uacute;c l&agrave; c&ocirc; n&agrave;ng 20 tuổi rất tưng tửng</p>\r\n\r\n<p>M&uacute;c c&oacute; hơn 200 lượt fan tr&ecirc;n Facebook</p>\r\n\r\n<p>M&uacute;c nổi danh với t&agrave;i vẽ đủ thứ tr&ecirc;n đời, to&agrave;n chuyện ngốc x&iacute;t m&agrave; ngẫm ra đ&uacute;ng phết</p>\r\n\r\n<p>C&oacute; lẽ kh&ocirc;ng cần giới thiệu nhiều về M&uacute;c, bởi những mẩu chuyện dở dở ương ương của M&uacute;c bấy l&acirc;u nay đ&atilde; trở th&agrave;nh lựa chọn y&ecirc;u th&iacute;ch của &ldquo;cư d&acirc;n&rdquo; to&agrave;n c&otilde;i Facebook.</p>\r\n\r\n<p>N&agrave;o th&igrave; chuyện b&ocirc;i xấu &quot;anh&quot; người y&ecirc;u cứ đ&ograve;i được gọi bằng anh nhưng động c&atilde;i nhau l&agrave; nhệch mồm &ldquo;Chị hơn em một tuổi&rdquo;, l&agrave; chuyện gia đ&igrave;nh c&oacute; cậu em trai b&eacute; xiu x&iacute;u khiến M&uacute;c đ&ocirc;i l&uacute;c phụng phịu v&igrave; bị cho &ldquo;ra r&igrave;a&rdquo;, l&agrave; đứa bạn th&acirc;n hiểu m&igrave;nh hiểu cả những điều m&igrave;nh c&ograve;n chưa n&oacute;i&hellip;</p>\r\n\r\n<p>Từng mẩu truyện, l&agrave; từng khoảnh khắc &ndash; kh&ocirc;ng ph&acirc;n biệt giản đơn hay phức tạp, lớn lao hay nhỏ b&eacute;, được c&ocirc; g&aacute;i mới chớm hai mươi lưu giữ lại bằng h&igrave;nh ảnh, m&agrave;u sắc, v&agrave; cả tiếng cười m&agrave; n&oacute; tạo ra nơi người đọc.</p>\r\n\r\n<p>Chuyện vặt của M&uacute;c l&agrave; cuốn truyện tranh giản dị, nhưng sẽ gi&uacute;p bạn cảm nhận ch&acirc;n thực c&aacute;ch m&agrave; một c&ocirc; g&aacute;i trẻ y&ecirc;u thương cuồng nhiệt từng chi tiết nhỏ nhất của cuộc sống xung quanh m&igrave;nh. Đ&acirc;y cũng sẽ l&agrave; cuốn s&aacute;ch truyền cho bạn niềm vui, sự lạc quan y&ecirc;u đời v&agrave; điểm th&ecirc;m ch&uacute;t &quot;m&agrave;u hồng&quot; v&agrave;o cuộc sống ngổn ngang bận rộn.</p>\r\n\r\n<p>H&atilde;y dừng lại v&agrave; cầm Chuyện vặt của M&uacute;c l&ecirc;n cho những ng&agrave;y cần lắm một động lực để cười tươi với cuộc đời</p>', '<p>___</p>', 12, 3, 1, 1, '2017-11-22 01:48:08', '2017-12-18 07:37:09'),
(11, 'Quảng Cáo Không Nói Láo', 'We Create', '', 2, 'NXB Văn Hóa-Văn Nghệ', 'MG2BeQr0aWm8zdGdNa540B1X0fyP43Z8G8LLcuZ7.jpeg', '2017-07-31', 'Bìa mềm', '14 x 20.5 cm', 1, 15, 10, '<p>C&oacute; 3 l&yacute; do tại sao mọi người lại hay tin rằng &ldquo;quảng c&aacute;o n&oacute;i l&aacute;o&rdquo;:</p>\r\n\r\n<p>(1) Ngo&agrave;i kia đang c&oacute; nhiều quảng c&aacute;o thực sự đang... n&oacute;i l&aacute;o. V&igrave; họ đang l&agrave;m quảng c&aacute;o một c&aacute;ch cảm t&iacute;nh, thiếu khoa học v&agrave; thiếu kiến thức. Vậy mới thấy, để n&oacute;i thật kh&ocirc;ng hề dễ.</p>\r\n\r\n<p>(2) Nhiều người đang nh&igrave;n quảng c&aacute;o dưới g&oacute;c nh&igrave;n qu&aacute; nghi&ecirc;m t&uacute;c (thậm ch&iacute; nghi&ecirc;m trọng).&nbsp;Quảng c&aacute;o giống B&aacute;c Ba Phi vậy, c&oacute; n&oacute;i qu&aacute; l&ecirc;n một ch&uacute;t nhưng vẫn l&agrave; sự thật, vẫn để nhắc lại những kỷ niệm đẹp để mọi người nhớ m&igrave;nh đ&atilde; từng tin v&agrave; d&ugrave;ng sản phẩm ra sao. Nếu quảng c&aacute;o chỉ n&oacute;i về sản phẩm th&igrave; chẳng kh&aacute;c g&igrave;&hellip; phim t&agrave;i liệu.</p>\r\n\r\n<p>(3) Cuối c&ugrave;ng, c&oacute; thể bạn đang kh&ocirc;ng thấu &quot;nỗi l&ograve;ng&quot; m&agrave; quảng c&aacute;o cố nhắm tới</p>\r\n\r\n<p>Quảng c&aacute;o ch&iacute;nh l&agrave; phản &aacute;nh &ldquo;nỗi l&ograve;ng&rdquo; của người ti&ecirc;u d&ugrave;ng, bởi c&aacute;c c&ocirc;ng ty quảng c&aacute;o d&agrave;nh rất nhiều t&acirc;m sức v&agrave; tiền bạc để thấu hiểu người ti&ecirc;u d&ugrave;ng. Vậy n&ecirc;n những điều bạn thấy tr&ecirc;n quảng c&aacute;o, c&oacute; thể lạ với bạn, c&oacute; thể bạn chưa nghe bao giờ, nhưng chắc chắn n&oacute; đang n&oacute;i hộ &quot;nỗi l&ograve;ng&quot; của một bộ phận người ti&ecirc;u d&ugrave;ng kh&ocirc;ng nhỏ (m&agrave; c&oacute; thể bạn kh&ocirc;ng phải mục ti&ecirc;u).&nbsp;<br />\r\nQuảng c&aacute;o l&agrave; vậy đ&oacute; v&agrave; chẳng bao giờ thiếu được những tranh c&atilde;i. Ch&iacute;nh sự tranh c&atilde;i n&agrave;y đ&atilde; l&agrave; động lực cho anh Hồ C&ocirc;ng Ho&agrave;i Phương (Strategic Planning Director tại c&ocirc;ng ty quảng c&aacute;o Dentsu One) &ndash; chắp b&uacute;t &quot;Quảng C&aacute;o Kh&ocirc;ng N&oacute;i L&aacute;o&quot;, với mong muốn chia sẻ ch&acirc;n dung thật ch&iacute;nh x&aacute;c về một ng&agrave;nh quảng c&aacute;o b&iacute; ẩn v&agrave; &iacute;t người hiểu.</p>\r\n\r\n<p>Quyển s&aacute;ch giống như một thế giới quảng c&aacute;o thu nhỏ: c&oacute; l&yacute; thuyết &amp; thực nghiệm khoa học, c&oacute; chiến lược sắc sảo, &yacute; tưởng s&aacute;ng tạo bay bổng v&agrave; cũng c&oacute; cả những c&acirc;u chuyện b&acirc;ng quơ về nghề, về người.</p>', '<p><em>&ldquo;Quyển s&aacute;ch n&agrave;y l&agrave; sự kết tinh của những quan điểm th&uacute; vị từ một Planner th&uacute; vị. Một phần do c&aacute; t&iacute;nh kết hợp với bản chất c&ocirc;ng việc của một Planner. Phương sống nhiều, trải nghiệm nhiều, c&oacute; nhiều quan điểm, tư duy chặt chẽ, cởi mở v&agrave; bảo thủ đồng thời, quyết đo&aacute;n v&agrave; nhạy cảm với thay đổi. Bạn sẽ cảm nhận hết tất cả những điều đ&oacute; trong một quyển s&aacute;ch.</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Bạn c&oacute; thể đồng &yacute; hoặc kh&ocirc;ng đồng với quan điểm của Phương, nhưng bạn đơn giản l&agrave; kh&ocirc;ng n&ecirc;n bỏ qua những điều th&uacute; vị: thế giới quảng c&aacute;o qua lăng k&iacute;nh của một Planner. Vậy bạn c&ograve;n chờ g&igrave; nữa?&rdquo;</em></p>\r\n\r\n<p>Nguyễn Hữu Nghị - Nh&agrave; s&aacute;ng lập BrandsVietnam</p>\r\n\r\n<p>------</p>\r\n\r\n<p><em>&ldquo;T&ocirc;i nghĩ đ&acirc;y l&agrave; một trong những cuốn s&aacute;ch &quot;gi&aacute;o khoa&quot; thực tiễn nhất về ng&agrave;nh tiếp thị v&agrave; quảng c&aacute;o tại Việt Nam hiện nay.</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>S&aacute;ch được viết dưới lăng k&iacute;nh của người c&oacute; nền tảng khoa học vững chắc n&ecirc;n rất thực tế, chặt chẽ v&agrave; đi thẳng v&agrave;o vấn đề.</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Đ&acirc;y chắc chắn kh&ocirc;ng phải l&agrave; cuốn s&aacute;ch gối đầu giường để bạn b&acirc;ng quơ đọc v&agrave;i trang mỗi đ&ecirc;m trước khi ngủ, m&agrave; đ&ograve;i hỏi bạn d&agrave;nh đủ thời gian để tập trung nghi&ecirc;n cứu v&agrave; ghi ch&uacute;.</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>V&agrave; cho d&ugrave; bạn đang l&agrave;m ở bộ phận marketing ở c&ocirc;ng ty kh&aacute;ch h&agrave;ng hay c&aacute;c agency quảng c&aacute;o hoặc nghi&ecirc;n cứu thị trường, th&igrave; t&ocirc;i tin chắc chắn rằng bạn sẽ t&igrave;m thấy nhiều &yacute; tưởng mang t&iacute;nh chiến lược cho nh&atilde;n h&agrave;ng bạn đang phụ tr&aacute;ch khi đọc cuốn s&aacute;ch n&agrave;y.&rdquo;</em></p>\r\n\r\n<p>L&ecirc; Phan Qu&yacute; Hiền - Senior Insights Manager - Nutrition Category - PepsiCo Asia Pacific</p>', 32, 6, 1, 2, '2017-11-22 02:12:20', '2017-12-13 17:41:41'),
(12, 'Những Cấm Kị Khi Giao Tiếp Với Khách Hàng', 'Phạm Ái Minh', '', 2, 'NXB Đại Học Sư Phạm', '9Iqtj2OjzSn8cg4AG7sgHLJMTrLxPANWkPge3xw2.jpeg', '2016-11-26', 'Bìa mềm', '16 x 23 cm', 99, 4, 10, '<p>Trong b&aacute;n h&agrave;ng v&agrave; phục vụ kh&aacute;ch h&agrave;ng tồn tại rất nhiều cấm kị, chỉ c&oacute; hiểu r&otilde; những cấm kị dễ phạm phải khi giao tiếp với kh&aacute;ch h&agrave;ng mới kh&ocirc;ng vi phạm, mới c&oacute; thể giao dịch th&agrave;nh c&ocirc;ng v&agrave; phục vụ kh&aacute;ch h&agrave;ng tốt hơn. Cuốn s&aacute;ch đ&atilde; tổng kết những cấm kị dễ phạm phải khi giao tiếp với kh&aacute;ch h&agrave;ng, cơ bản gồm c&aacute;c phương diện: tiếp đ&oacute;n v&agrave; gặp gỡ kh&aacute;ch h&agrave;ng; giới thiệu sản phẩm; giao dịch v&agrave; sau giao dịch với kh&aacute;ch h&agrave;ng; phục vụ v&agrave; xử l&iacute; &yacute; kiến bất đồng, khiếu nại, ph&agrave;n n&agrave;n của kh&aacute;ch h&agrave;ng; t&acirc;m th&aacute;i khi giao tiếp với kh&aacute;ch h&agrave;ng; lễ nghi khi giao tiếp với kh&aacute;ch h&agrave;ng...</p>\r\n\r\n<p>Cuốn s&aacute;ch c&oacute; g&oacute;c nh&igrave;n độc đ&aacute;o, bắt đầu từ g&oacute;c độ của việc cấm kị, hướng dẫn nh&acirc;n vi&ecirc;n b&aacute;n h&agrave;ng v&agrave; phục vụ kh&aacute;ch h&agrave;ng c&aacute;ch l&agrave;m việc đ&uacute;ng đắn. Mỗi nội dung trong s&aacute;ch được dẫn dắt bằng t&igrave;nh huống v&agrave; v&iacute; dụ cụ thể, đồng thời ph&acirc;n t&iacute;ch r&otilde; r&agrave;ng những điều cấm kị dễ phạm phải trong qu&aacute; tr&igrave;nh b&aacute;n h&agrave;ng hoặc phục vụ kh&aacute;ch h&agrave;ng, t&igrave;m hiểu nguy&ecirc;n nh&acirc;n v&agrave; cung cấp phương ph&aacute;p tr&aacute;nh những điều cấm kị với kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p>Ngo&agrave;i ra, cuốn s&aacute;ch c&oacute; nội dung gần với thực tế, kh&ocirc;ng c&oacute; những kh&aacute;i niệm phức tạp, kh&ocirc;ng c&oacute; l&iacute; luận thuyết gi&aacute;o kh&ocirc; khan m&agrave; dựa v&agrave;o v&iacute; dụ thực tế, giải th&iacute;ch một c&aacute;ch trực tiếp, r&otilde; r&agrave;ng những vấn đề dễ xuất hiện trong qu&aacute; tr&igrave;nh giao lưu với kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p>Cuốn s&aacute;ch th&iacute;ch hợp với mọi nh&acirc;n vi&ecirc;n trong c&aacute;c doanh nghiệp, c&oacute; gi&aacute; trị tham khảo v&agrave; &yacute; nghĩa chỉ đạo rất lớn với việc n&acirc;ng cao năng lực giao tiếp của nh&acirc;n vi&ecirc;n, h&igrave;nh th&agrave;nh tố chất nghề nghiệp, n&acirc;ng cao tr&igrave;nh độ văn h&oacute;a nghề nghiệp, n&acirc;ng cao hiệu suất l&agrave;m việc v&agrave; chiếm được l&ograve;ng tin của kh&aacute;ch h&agrave;ng.</p>', '<p>***</p>', 311, 10, 1, 2, '2017-11-22 02:25:38', '2017-12-08 11:24:34'),
(13, 'Nếu Tôi Biết Được Khi Còn 20 (Tái Bản)', 'Tina Seelig', '', 18, 'NXB Trẻ', 'iO0RgU1JUzJv0HeLEPLW9YbZnwQ9w9MVUGukRq6V.jpeg', '2017-07-01', 'Bìa mềm', '13 x 20.5 cm', 200, 3, 10, '<p>Bạn c&oacute; 5 đ&ocirc; la v&agrave; 2 giờ đồng hồ để kinh doanh. Bạn sẽ l&agrave;m g&igrave;? - Đ&acirc;y l&agrave; một trong những v&iacute; dụ minh hoạ được nhắc đến trong cuốn s&aacute;ch Nếu T&ocirc;i Biết Được Khi C&ograve;n 20. Trả lời cho c&acirc;u hỏi n&agrave;y c&oacute; rất nhiều c&aacute;ch v&agrave; với mỗi c&aacute;ch, t&aacute;c giả lại chỉ ra những b&agrave;i học nhỏ th&ocirc;i nhưng hữu &iacute;ch.</p>\r\n\r\n<p>Cuốn s&aacute;ch được chia th&agrave;nh 10 chương với những vấn đề kh&aacute;ch nhau theo một tr&igrave;nh tự r&otilde; r&agrave;ng.</p>\r\n\r\n<p>Trong cả cuốn s&aacute;ch, những triết l&yacute; kinh doanh đơn giản được minh hoạ bằng những v&iacute; dụ cụ thể v&agrave; s&aacute;ng tạo. Những t&igrave;nh huống kinh doanh được đặt ra, c&oacute; th&agrave;nh c&ocirc;ng v&agrave; c&oacute; cả thất bại, vấn đề l&agrave; c&aacute;ch đối mặt với n&oacute;.</p>\r\n\r\n<p>Nếu T&ocirc;i Biết Được Khi C&ograve;n 20 gần gũi với những b&agrave;i học bổ &iacute;ch. Ng&ocirc;n từ đơn giản, dễ hiểu chuyển tải một c&aacute;ch trọn vẹn những h&agrave;m &yacute; s&acirc;u sắc của t&aacute;c giả.</p>\r\n\r\n<p>&copy;</p>\r\n\r\n<p>Những bước ngoặt lớn của cuộc đời như rời xa giảng đường &ecirc;m ả hoặc khởi đầu một sự nghiệp mới thường khiến ta nhụt ch&iacute;. Phải đối mặt với một rừng những lựa chọn trong khi hiểu rằng sẽ chẳng c&oacute; ai cho ta biết m&igrave;nh đang lựa chọn đ&uacute;ng hay sai thật đ&aacute;ng sợ. Chẳng c&oacute; con đường vẽ sẵn hay c&ocirc;ng thức viết sẵn n&agrave;o cho th&agrave;nh c&ocirc;ng, thậm ch&iacute; việc quyết định m&igrave;nh n&ecirc;n bắt đầu thế n&agrave;o v&agrave; ở đ&acirc;u cũng đ&atilde; rất kh&oacute; khăn rồi.</p>\r\n\r\n<p>Hiểu được những kh&oacute; khăn, đặc biệt của những người trẻ, trước c&aacute;c bước ngoặt như thế trong cuộc đời, t&aacute;c giả &ndash; một&nbsp;<a href=\"http://tiki.vn/doanh-nhan/c483\">doanh nh&acirc;n</a>, một gi&aacute;o vi&ecirc;n, một nh&agrave; khoa học &ndash; đ&atilde; dồn t&acirc;m huyết viết n&ecirc;n những chia sẻ tuy nhẹ nh&agrave;ng v&agrave; khi&ecirc;m nhường, nhưng thật s&acirc;u sắc. Những trang s&aacute;ch chứa đầy v&iacute; dụ th&uacute; vị, cả trong ph&ograve;ng học lẫn trong ph&ograve;ng họp, về những con người sẵn s&agrave;ng phấn đấu để vượt xa c&aacute;c ti&ecirc;u chuẩn ở mức &ldquo;vừa đủ&rdquo;, th&aacute;ch thức c&aacute;c giả định hay quan điểm đ&atilde; th&agrave;nh lối m&ograve;n, kh&ocirc;ng bao giờ bỏ lỡ cơ hội để vươn tới tiềm năng cao nhất, v&agrave; nhờ đ&oacute; đạt tới những th&agrave;nh c&ocirc;ng vang dội.</p>\r\n\r\n<p>Th&ocirc;ng qua quyển s&aacute;ch, t&aacute;c giả c&ograve;n muốn c&aacute;c độc giả, đặc biệt l&agrave; độc giả trẻ, sẽ được trang bị đủ sự tự tin để biến căng thẳng th&agrave;nh sự h&agrave;o hứng, biến thử th&aacute;ch th&agrave;nh c&aacute;c cơ hội, v&agrave; cứ sau mỗi lần vấp ng&atilde; lại đứng l&ecirc;n trưởng th&agrave;nh hơn.</p>\r\n\r\n<p>Th&ocirc;ng điệp cốt l&otilde;i của quyển s&aacute;ch c&oacute; thể t&oacute;m gọn như sau: &ldquo;H&atilde;y cho ph&eacute;p m&igrave;nh t&aacute;o bạo v&agrave; xuất sắc!&rdquo;</p>', '<p>***</p>', 252, 9, 1, 2, '2017-11-22 02:30:01', '2017-12-07 13:35:42'),
(14, 'Hiểu Số Để Tăng Số', 'Dimitri Maex', '', 16, 'NXB Hồng Đức', 'D2yfq1itoVZIzwHoAHgdE001BbT3MRdpubCU4gUb.jpeg', '2017-11-08', 'Bìa mềm', '14.5 x 20.5', 26, 15, 5, '<p>B&iacute; quyết sống s&oacute;t trong kỷ nguy&ecirc;n digital - viết bởi Ogilvy &amp; Mather, tập đo&agrave;n s&aacute;ng tạo h&agrave;ng đầu thế giới.</p>\r\n\r\n<p>&quot;We sell or else&quot; (tạm dịch: &quot;Kh&ocirc;ng b&aacute;n được h&agrave;ng th&igrave; qu&ecirc;n đi!&quot;) l&agrave; t&ocirc;n chỉ s&aacute;ng tạo của&nbsp;<strong>David Ogilvy</strong>, người được mệnh danh l&agrave; cha đẻ của ng&agrave;nh quảng c&aacute;o s&aacute;ng tạo hiện đại. Ở thế kỷ 20, bạn cần một sản phẩm tốt, một &iacute;t s&aacute;ng tạo v&agrave; ng&acirc;n s&aacute;ch để l&agrave;m truyền th&ocirc;ng marketing l&agrave; c&oacute; thể b&aacute;n được h&agrave;ng. Nhưng ở thế kỷ 21 - kỷ nguy&ecirc;n của digital, để b&aacute;n h&agrave;ng v&agrave; tồn tại, bạn cần nhiều hơn thế v&agrave; kỹ năng tương t&aacute;c với dữ liệu (data) l&agrave; kh&ocirc;ng thể thiếu.</p>\r\n\r\n<p><strong>David Ogilvy&nbsp;</strong>c&oacute; lẽ l&agrave; chuy&ecirc;n gia s&aacute;ng tạo hiếm hoi xuất th&acirc;n từ nghi&ecirc;n cứu thị trường, v&agrave; điều l&agrave;m Ogilvy kh&aacute;c biệt ch&iacute;nh l&agrave; sự hiệu quả trong s&aacute;ng tạo. Trong thế kỷ 21, tiếp nối tư duy &quot;s&aacute;ng tạo vị mục ti&ecirc;u&quot; đ&oacute; - tập đo&agrave;n Ogilvy &amp; Mather đ&atilde; đ&uacute;c kết một c&ocirc;ng thức th&agrave;nh c&ocirc;ng - để bất kỳ ai cũng c&oacute; thể &quot;sống chung&quot; với dữ liệu (data). Trong thời buổi m&agrave; dữ liệu (data) lu&ocirc;n được nhắc đến rất &ldquo;đao to b&uacute;a lớn&rdquo;, tập đo&agrave;n Ogilvy tin rằng c&oacute; một &quot;c&ocirc;ng thức th&agrave;nh c&ocirc;ng&quot; chung cho những thương hiệu h&agrave;ng đầu như Coca-Cola, Cisco đến c&aacute;c startup mới (thậm ch&iacute; chưa) th&agrave;nh lập. Với Ogilvy, &quot;dữ liệu&quot; kh&ocirc;ng phải l&agrave; một kh&aacute;i niệm tĩnh v&agrave; cao-si&ecirc;u, đ&oacute; l&agrave; một phương ph&aacute;p suy nghĩ v&agrave; kỹ năng, sống động - cụ thể v&agrave; c&oacute;-thể-học-được v&igrave;vậy họ viết hẳn một quyển s&aacute;ch về điều đ&oacute;, đơn giản - mạch lạc như &quot;s&aacute;ch dạy nấu ăn&quot;, bạn c&oacute; thể cầm l&ecirc;n, đọc một chương v&agrave; ứng dụng ngay v&agrave;o c&ocirc;ng việc. Tất cả những điều đ&oacute; được diễn đạt mạch lạc v&agrave; logic ở đẳng-cấp-Ogilvy.</p>\r\n\r\n<p>B&iacute; quyết sống s&oacute;t v&agrave; ph&aacute;t triển trong kỷ nguy&ecirc;n digital chưa bao giờ được đ&uacute;c kết thanh tho&aacute;t v&agrave; tinh tế đến vậy.</p>\r\n\r\n<p>&nbsp;</p>', '<p>Quyển s&aacute;ch n&agrave;y sẽ gi&uacute;p bạn:</p>\r\n\r\n<p>* HẾT SỢ: bản chất cốt l&otilde;i của tất cả những thứ to t&aacute;t kiểu &quot;big data&quot;, &quot;internet of things&quot; đều được đ&uacute;c kết ngắn gọn v&agrave; đi k&egrave;m hướng-dẫn-sử-dụng chi tiết.</p>\r\n\r\n<p>* T&Igrave;M VUI: dữ liệu v&agrave; c&aacute;c c&ocirc;ng cụ digital cho ph&eacute;p bạn l&agrave;m nhiều thứ hơn, nhanh hơn v&agrave; rẻ hơn - h&atilde;y t&igrave;m niềm vui trong việc &quot;vọc&quot;, thử nghiệm v&agrave; thấy sự kh&aacute;c biệt r&otilde; rệt th&ocirc;ng qua những hướng dẫn si&ecirc;u-cụ-thể trong quyển s&aacute;ch.</p>\r\n\r\n<p>* TĂNG TỐC ĐỘ: gi&uacute;p bạn n&acirc;ng cao DATA-IQ (khả năng thu thập v&agrave; xử l&yacute; dữ liệu) để cạnh tranh hiệu quả hơn. Mấy thứ hay ho đ&acirc;u chỉ d&agrave;nh ri&ecirc;ng cho Google v&agrave; Facebook!</p>\r\n\r\n<p>* MỞ KẾT NỐI: gi&uacute;p bạn hiểu, trao đổi v&agrave; l&agrave;m việc chung hiệu quả với những đồng nghiệp n&atilde;o tr&aacute;i, kh&ocirc;ng-n&oacute;i-tiếng-người (d&acirc;n kỹ thuật hay t&agrave;i ch&iacute;nh ấy).</p>\r\n\r\n<p><strong>Nhận định</strong></p>\r\n\r\n<p>&quot;Bất kỳ ai đều c&oacute; thể n&acirc;ng cao khả năng đ&oacute; (tương t&aacute;c v&agrave; thấu hiệu dữ liệu) th&ocirc;ng qua quyển s&aacute;ch tuyệt vời n&agrave;y, vốn chứa đầy những con số minh hoạ quyến rũ. C&ocirc;ng thức sử dụng số liệu để kể những c&acirc;u chuyện thương hiệu th&agrave;nh c&ocirc;ng cũng sẽ được chia sẻ trong quyển s&aacute;ch n&agrave;y th&ocirc;ng qua nhiều thấu hiểu tinh tế, v&iacute; dụ thực hiện lẫn danh s&aacute;ch c&aacute;c c&ocirc;ng cụ hữu dụng.&quot;&nbsp;<strong>- &Ocirc;ng Alex Clegg, nguy&ecirc;n Chủ tịch v&agrave; CEO tập đo&agrave;n Ogilvy, người đ&atilde; gắn b&oacute; 11 năm với m&ocirc;i trường kinh doanh tại Việt Nam.</strong></p>\r\n\r\n<p>&quot;C&aacute;ch bạn xử l&yacute; những dữ liệu đang c&oacute; c&ograve;n quan trọng hơn nỗ lực thu thập th&ecirc;m nhiều dữ liệu. V&agrave; tương lai của marketing thuộc về 2 nh&oacute;m: kỹ thuật gia (technician) v&agrave; ảo thuật gia (magician). Kỹ thuật gia bảo đảm dữ liệu tươi mới v&agrave; dồi d&agrave;o, ảo thuật gia sẽ chuyển h&oacute;a n&oacute; th&agrave;nh những &yacute; tưởng mang lại lợi nhuận vượt trội. V&agrave; c&aacute;ch thực hiện điều đ&oacute; sẽ được m&ocirc; tả trong quyển s&aacute;ch n&agrave;y - một t&agrave;i liệu qu&yacute; m&agrave; kh&ocirc;ng c&oacute; người l&agrave;m kinh doanh n&agrave;o được ph&eacute;p bỏ qua.&quot;&nbsp;<strong>- Sir Martin Sorrell, Chủ tịch v&agrave; CEO WPP.</strong></p>\r\n\r\n<p>&quot;Quy m&ocirc; của dữ liệu (ch&uacute;ng ta) đang tiếp nhận mỗi ng&agrave;y rất dễ l&agrave;m cho ch&uacute;ng ta sợ h&atilde;i. Đừng lo, Dimitri đ&atilde; mang đến những nền tảng suy nghĩ v&agrave; ph&acirc;n t&iacute;ch gi&uacute;p ch&uacute;ng ta vĩnh biệt sự qu&aacute; tải v&agrave; th&ocirc;ng tin&quot;<strong>- tạp ch&iacute; Fast Company.</strong></p>\r\n\r\n<p>&quot;Một quyển s&aacute;ch được viết chuẩn-mực-Ogilvy k&egrave;m theo những v&iacute; dụ tuyệt vời để kiến giải chủ đề h&oacute;c b&uacute;a. Dễ đọc, dễ hiểu, dễ ứng dụng v&agrave; c&oacute; thể thấy kết quả chỉ sau 1 tuần!&quot;&nbsp;<strong>- tạp ch&iacute; Marketing Daily.</strong></p>\r\n\r\n<p>&nbsp;</p>', 423, 3, 1, 2, '2017-11-22 02:36:45', '2017-12-19 19:12:06'),
(15, 'Shaman King (Tập 7)', 'Hiroyuki Takei', '', 5, 'NXB Kim Đồng', 'F5PEGSayezFCnPR33vnjB6cNB4ifZdK4AEjqDiX8.jpeg', '2017-11-04', 'Bìa mềm', '11.3 x 17.6 cm', 97, 0.9, 10, '<p>Trong thế giới của Shaman King (Vua Pháp sư) có những pháp sư có thể điều khiển được các linh hồn. Mỗi pháp sư có một linh hồn đi kèm để hỗ trợ. Cứ 500 năm 1 lần sẽ có một đại hội thi đấu giữa các pháp sư để chọn ra một vua pháp sư. Người này sẽ có được linh hồn vĩ đại của Trái Đất để giúp thế giới. Tuy nhiên 2 cuộc thi đấu gần đây nhất đã bị phá hoại bởi một pháp sư tên là Asakura Hao. Manta là một cậu bé đang học trung học ở Tokyo. Cậu tình cờ làm quen với Yoh, một pháp sư mới chuyển đến cùng lớp. Manta lần lượt gặp những pháp sư khác như Anna, Ryu, Tao Ren, Tao Jun. Shaman King kể về cuộc phiêu lưu của Yoh, Anna, và các bạn qua lời kể của Manta.</p>', '<p>***</p>', 200, 7, 1, 2, '2017-11-22 02:51:38', '2017-12-13 15:35:16'),
(16, 'Shaman King (Tập 20)', 'Hiroyuki Takei', '', 5, 'NXB Kim Đồng', 'kFptzFgRmUEckGt9mlnQK63S44cykLpY6SZZvzJF.jpeg', '2017-11-04', 'Bìa mềm', '11.3 x 17.6 cm', 98, 0.9, 10, '<p>Trong thế giới của Shaman King (Vua Pháp sư) có những pháp sư có thể điều khiển được các linh hồn. Mỗi pháp sư có một linh hồn đi kèm để hỗ trợ. Cứ 500 năm 1 lần sẽ có một đại hội thi đấu giữa các pháp sư để chọn ra một vua pháp sư. Người này sẽ có được linh hồn vĩ đại của Trái Đất để giúp thế giới. Tuy nhiên 2 cuộc thi đấu gần đây nhất đã bị phá hoại bởi một pháp sư tên là Asakura Hao. Manta là một cậu bé đang học trung học ở Tokyo. Cậu tình cờ làm quen với Yoh, một pháp sư mới chuyển đến cùng lớp. Manta lần lượt gặp những pháp sư khác như Anna, Ryu, Tao Ren, Tao Jun. Shaman King kể về cuộc phiêu lưu của Yoh, Anna, và các bạn qua lời kể của Manta.</p>', '<p>***</p>', 200, 7, 1, 2, '2017-11-22 02:51:38', '2017-12-09 18:36:37'),
(17, 'Inuyasha - Bản Đặc Biệt (Tập 3)', 'Rumiko Takahashi', '', 5, 'NXB Trẻ', 'MDf7rN4uYtj7Rqx0SpE5Qy8uJjxPa7xysoxuALKN.jpeg', '2017-11-01', 'Bìa mềm', '11.3 x 17.6 cm', 19, 3, 10, 'Cô nữ sinh Kagome vô tình bị lạc về thời Chiến quốc và gặp gỡ bán yêu Inuyasha. Do một sự cố không mong muốn, viên ngọc Tứ Hồn có khả năng mang đến sức mạnh vô biên cho yêu quái đã bị vỡ tan thành trăm mảnh và phân tán khắp nơi. Không còn cách nào khác, Kagome cùng Inuyasha phải hợp lực với nhau để truy tìm các mảnh vỡ ấy.\r\n\r\nKhác với bản trước đây, phiên bản đặc được in với khổ lớn, mỗi tập dày bình quân 350 trang, bìa rời, cán mờ, ép kim tựa và số tập trên bìa và gáy sách. Mỗi tập có  2 trang màu. Cuối mỗi tập truyện có bổ sung những trang phỏng vấn tác giả Rumiko Takahashi về quá trình sáng tác bộ truyện ở mỗi tập. Ngoài ra, tập cuối của bộ truyện còn có thêm một ngoại truyện ngắn kể về cuộc sống của các nhân vật sau khi bộ truyện đã kết thúc', '***', 300, 10, 1, 2, '2017-11-22 03:00:28', '2017-12-13 15:31:15'),
(18, 'Sailormoon - Thủy Thủ Mặt Trăng - Tập 12', 'Naoko Takeuchi', '', 5, 'NXB Kim Đồng', 'C63vHVTZV1gCTWioR5OPGEaE0qe5L6zyrRsBUZcF.jpeg', '2017-11-05', 'Bìa mềm', '13 x 17 cm', 50, 1.25, 10, '<p>Thủy Thủ Mặt Trăng (Sailor Moon) l&agrave; một t&aacute;c phẩm truyện tranh&nbsp;để đời của nữ t&aacute;c giả Naoko Takeuchi.</p>\r\n\r\n<p>Bối cảnh ch&iacute;nh của truyện l&agrave; ở th&agrave;nh phố Tokyo, Nhật Bản thời hiện đại. Usagi Tsukino nổi tiếng l&agrave; một c&ocirc; b&eacute; hậu đậu, học k&eacute;m, l&agrave;m việc g&igrave; cũng kh&ocirc;ng n&ecirc;n th&acirc;n, hay đi học muộn đ&atilde; vậy c&ograve;n hay kh&oacute;c nh&egrave;. Sau cuộc gặp gỡ định mệnh với m&egrave;o Luna, Usagi đ&atilde; trở th&agrave;nh Thủy thủ Mặt Trăng, nữ chiến binh xinh đẹp bảo vệ t&igrave;nh y&ecirc;u&nbsp;v&agrave; c&ocirc;ng l&iacute;. Qua c&aacute;c cuộc chiến, c&ocirc; đ&atilde; c&oacute; th&ecirc;m những đồng đội đ&aacute;ng tin cậy l&agrave; Thủy thủ Sao Thủy (Sailor Mercury), Thủy thủ Sao Hỏa (Sailor Mars), Thủy thủ Sao Mộc (Sailor Jupiter), Thủy thủ Sao Kim (Sailor Venus) v&agrave; Tuxedo Mặt nạ. Họ c&ugrave;ng nhau chiến đấu bảo vệ Tr&aacute;i Đất khỏi sự x&acirc;m lăng của những thế lực xấu xa.</p>\r\n\r\n<p>Từ khi ra đời đến nay, t&aacute;c phẩm đ&atilde; trở th&agrave;nh biểu tượng của d&ograve;ng truyện tranh thiếu nữ. Lần t&aacute;i bản n&agrave;y, bộ truyện tranh Sailormoon phi&ecirc;n bản Shinsoban được tr&igrave;nh b&agrave;y với h&igrave;nh thức v&ocirc; c&ugrave;ng đẹp mắt, trọn bộ gồm 12 tập.</p>', '<p>***</p>', 180, 9, 1, 2, '2017-11-22 03:02:34', '2017-11-22 03:14:46'),
(19, 'Hunter X Hunter - Tập 10', 'Yoshihiro Togashi', '', 5, 'NXB Kim Đồng', '15l2RF3XXk32QXdmMe0oNxYAfZs0JGqPI2qGQ96f.jpeg', '2017-11-26', 'Bìa mềm', '13 x 17 cm', 182, 1, 50, '<p>&nbsp;</p>\r\n\r\n<p>10 năm trước khi c&acirc;u chuyện bắt đầu, Ging Freeccs để lại đứa con trai của m&igrave;nh, Gon Freecss, với d&igrave; của Gon, Mito ở Đảo C&aacute; Voi. Cả cuộc đời n&agrave;y, Gon đ&atilde; được kể rằng cha mẹ cậu đ&atilde; qua đời, cho đến khi cậu ph&aacute;t hiện ra từ một học nghề của Ging, Kaito, l&agrave; cha cậu vẫn c&ograve;n sống v&agrave; đ&atilde; trở th&agrave;nh một&nbsp;Hunter&nbsp;thực thụ.&nbsp;Hunters&nbsp;&nbsp;l&agrave; những th&agrave;nh vi&ecirc;n ưu t&uacute; của nh&acirc;n loại, được chứng nhận qua cuộc thử th&aacute;ch đầy khắc nghiệt. Hunter được hưởng rất nhiều ưu đ&atilde;i, đa phần đều gi&agrave;u c&oacute;, c&oacute; thể gi&uacute;p đỡ cho x&atilde; hội hoặc ngược lại, hoạt động bất chấp luật ph&aacute;p ngoại trừ 10 điều luật của&nbsp;Hunter&nbsp;. Gon rời nh&agrave; của m&igrave;nh để trở th&agrave;nh một&nbsp;Hunter giống như cha cậu bằng c&aacute;ch tham gia cuộc thi Hunter.</p>', '<p>**</p>', 255, 2, 1, 1, '2017-11-22 03:04:50', '2017-12-13 15:34:53'),
(20, 'nghỉ đông', 'nghỉ đông', '', 19, 'NXB Đại Học Sư Phạm', 'e8pBCWSCevg1wBJ5GfKkePDIT5BPz9Ss7opjvho1.jpeg', '2017-11-26', 'mem', '12X12', 11, 3, 50, '<p>nghỉ đ&ocirc;ng</p>', '<p>nghỉ đ&ocirc;ng</p>', 12, 7, 1, 1, '2017-11-21 18:03:16', '2017-12-09 16:49:34'),
(21, 'họ tên', 'hoten', 'hoten', 5, '1', 'aIHjbqtBGdhkMMulHyQW4VwIVl1n0g201POuMV1a.jpeg', '2017-11-04', 'mem', '67X3', 123, 123, 10, 'hotenhotenhotenhotenhoten', '<p>hotenhotenhotenhotenhoten</p>', 123, 8, 0, 1, '2017-11-21 18:07:20', '2017-11-22 17:16:03'),
(22, 'họ tên', 'hoten', 'hoten', 5, '1', 'hTRhbnU7VKBsTq2yhuuULycTJftubnGZOUx3x64f.jpeg', '2017-11-04', 'mem', '67X3', 123, 123, 10, 'hotenhotenhotenhotenhoten', '<p>hotenhotenhotenhotenhoten</p>', 123, 8, 0, 1, '2017-11-21 18:09:35', '2017-12-07 14:59:49'),
(23, 'Cơm tất niên thời điểm', 'Cơm tất niên thời điểm', 'Cơm tất niên thời điểm', 5, '1', '', '2017-11-04', 'mem', '12X23', 123, 123, 10, '<p>Cơm tất ni&ecirc;n thời điểm</p>', '<p>Cơm tất ni&ecirc;n thời điểm</p>', 123, 4, 0, 2, '2017-11-21 18:11:27', '2017-11-22 17:16:02'),
(24, 'Công Chúa Sứa (Tập 7)', 'Akiko Higashimura', '', 5, 'NXB Trẻ', 'ZtQjPvD27KrECCkmh5z4Xu4lhEoKEno4fzX6JHdz.jpeg', '2017-11-01', 'Bìa mềm', '11.3 x 17.6 cm', 90, 1, 10, '<p>Kurashita Tsukimi - một hủ nữ ch&iacute;nh gốc c&oacute; sở th&iacute;ch k&igrave; lạ đ&oacute; l&agrave; m&ecirc; những b&eacute; sứa v&agrave; rất e ngại khi tiếp x&uacute;c với những người &quot;s&agrave;nh điệu&quot;. Một ng&agrave;y t&igrave;nh cờ c&ocirc; n&agrave;ng gặp được bậc thầy ph&ugrave; thủy c&oacute; khả năng ph&ugrave; ph&eacute;p biến c&ocirc; trở th&agrave;nh một n&agrave;ng c&ocirc;ng ch&uacute;a xinh đẹp. C&oacute; điều ph&ugrave; thủy n&agrave;y cũng c&oacute; một sở th&iacute;ch kh&ocirc;ng giống ai. Liệu những con ngưởi kỳ quặc n&agrave;y khi kết hợp c&ugrave;ng nhau sẽ trở th&agrave;nh g&igrave; đ&acirc;y???<br />\r\n<br />\r\nĐ&oacute;n đọc &quot;C&ocirc;ng Ch&uacute;a Sứa&quot; để kh&aacute;m ph&aacute; những nh&acirc;n vật c&oacute; t&iacute;nh c&aacute;ch độc đ&aacute;o n&agrave;y nh&eacute; mọi người!</p>', '<p>***</p>', 200, 7, 1, 2, '2017-11-22 03:10:35', '2017-12-07 16:32:39'),
(25, 'Công Chúa Sứa (Tập 14)', 'Akiko Higashimura', '', 5, 'NXB Trẻ', 'xkXiwCba1UqRPuhIOTxI3EWMTW8DVUYJ1nGESoNF.jpeg', '2017-11-01', 'Bìa mềm', '11.3 x 17.6 cm', 90, 1, 10, '<p>Kurashita Tsukimi - một hủ nữ ch&iacute;nh gốc c&oacute; sở th&iacute;ch k&igrave; lạ đ&oacute; l&agrave; m&ecirc; những b&eacute; sứa v&agrave; rất e ngại khi tiếp x&uacute;c với những người &quot;s&agrave;nh điệu&quot;. Một ng&agrave;y t&igrave;nh cờ c&ocirc; n&agrave;ng gặp được bậc thầy ph&ugrave; thủy c&oacute; khả năng ph&ugrave; ph&eacute;p biến c&ocirc; trở th&agrave;nh một n&agrave;ng c&ocirc;ng ch&uacute;a xinh đẹp. C&oacute; điều ph&ugrave; thủy n&agrave;y cũng c&oacute; một sở th&iacute;ch kh&ocirc;ng giống ai. Liệu những con ngưởi kỳ quặc n&agrave;y khi kết hợp c&ugrave;ng nhau sẽ trở th&agrave;nh g&igrave; đ&acirc;y???<br />\r\n<br />\r\nĐ&oacute;n đọc &quot;C&ocirc;ng Ch&uacute;a Sứa&quot; để kh&aacute;m ph&aacute; những nh&acirc;n vật c&oacute; t&iacute;nh c&aacute;ch độc đ&aacute;o n&agrave;y nh&eacute; mọi người!</p>', '<p>***</p>', 200, 7, 1, 2, '2017-11-22 03:10:35', '2017-11-22 03:14:23');
INSERT INTO `books` (`id_book`, `name`, `author`, `translator`, `cat_id`, `publish`, `picture`, `date_release`, `cover`, `size`, `quantity`, `unit_price`, `promotion_price`, `preview`, `detail`, `pages`, `count_number`, `active`, `created_by`, `created_at`, `updated_at`) VALUES
(26, 'nhap', 'Suzanne Collins', 'Trần Quốc Tân', 9, '0', '', '2017-04-22', '14 x 20.5 cm', '14 x 20', 100, 4, 10, '<p>Một thế giới t&agrave;n nhẫn trong tương lai...</p>\r\n\r\n<p>Đ&oacute; l&agrave; khi Bắc Mỹ đang dần kh&ocirc;i phục lại sau nhiều năm ch&igrave;m trong nội chiến. Sau khi nh&agrave; nước Panem trấn &aacute;p được cuộc nổi dậy của mười ba quận, ph&aacute; hủy quận 13, những người đứng đầu bộ m&aacute;y cai trị đặt ra một h&igrave;nh phạt t&agrave;n nhẫn cho mười hai quận c&ograve;n lại. Mỗi năm từ mỗi quận một nam v&agrave; một nữ bị chọn l&agrave;m vật tế, bị gom lại tr&ecirc;n một chiến trường, phải ti&ecirc;u diệt lẫn nhau cho đến khi chỉ c&ograve;n một người duy nhất sống s&oacute;t.</p>\r\n\r\n<p>Trong một lần xả th&acirc;n cứu em g&aacute;i, Katniss sa ch&acirc;n v&agrave;o đấu trường sinh tử. C&ocirc; v&agrave; Peeta trở th&agrave;nh một cặp đồng h&agrave;nh, c&ugrave;ng phi&ecirc;u lưu v&agrave;o thế giới đầy chết ch&oacute;c, nơi m&agrave; đường v&agrave;o c&oacute; 24 lối d&agrave;nh cho 24 con người nhưng đường ra th&igrave; chỉ c&oacute; 1. Katniss sẽ phải l&agrave;m g&igrave;, khi c&aacute;c đối thủ của c&ocirc; l&agrave; một ch&agrave;ng trai c&oacute; t&igrave;nh cảm với c&ocirc; v&agrave; một người c&ocirc; coi như em g&aacute;i?</p>\r\n\r\n<p>B&iacute; ẩn, gai g&oacute;c nhưng m&atilde;nh liệt đầy chất thơ, l&agrave;m người đọc hồi hộp đến từng thớ chữ, kh&ocirc;ng phải ngẫu nhi&ecirc;n khi Đấu trường sinh tử lọt v&agrave;o danh s&aacute;ch s&aacute;ch b&aacute;n chạy nhất của tờ The New York Times trong suốt 60 tuần, v&agrave; mang lại vinh danh từ tạp ch&iacute; Time cho t&aacute;c giả Suzanne Collins như một trong những người c&oacute; ảnh hưởng nhất thế giới năm 2010.</p>\r\n\r\n<p><strong>***</strong></p>', '<p><strong>Tr&iacute;ch đoạn:</strong></p>\r\n\r\n<p><strong>Phần 1: VẬT TẾ</strong></p>\r\n\r\n<p><strong>Chương 1</strong></p>\r\n\r\n<p>...</p>\r\n\r\n<p>Một giờ, ch&uacute;ng t&ocirc;i ra b&atilde;i đất trống. Ai cũng phải c&oacute; mặt, trừ khi đang hấp hối. Đến tối, hội gi&aacute;m s&aacute;t sẽ đi v&ograve;ng quanh để kiểm tra. Ai trốn sẽ bị bỏ t&ugrave;.</p>\r\n\r\n<p>Thật kh&ocirc;ng thể tệ hơn khi buổi chi&ecirc;u qu&acirc;n được tổ chức tại b&atilde;i đất trống, một trong số &iacute;t c&aacute;c địa điểm đẹp ở Quận 12. Xung quanh b&atilde;i đất trống l&agrave; những cửa h&agrave;ng, v&agrave; trong những ng&agrave;y khu chợ mở cửa, đặc biệt khi thời tiết tốt, đến đ&acirc;y c&oacute; cảm gi&aacute;c như đi hội. Nhưng h&ocirc;m nay, mặc d&ugrave; biểu ngữ giăng sặc sỡ tr&ecirc;n c&aacute;c t&ograve;a nh&agrave;, kh&ocirc;ng kh&iacute; ở đ&acirc;y vẫn thật nặng nề. C&aacute;c đo&agrave;n quay phim vờn quanh như bầy &oacute; tr&ecirc;n n&oacute;c nh&agrave;, chỉ c&agrave;ng l&agrave;m tăng th&ecirc;m cảm gi&aacute;c nặng nề đ&oacute;.</p>\r\n\r\n<p>Người ta xếp h&agrave;ng trong im lặng v&agrave; k&yacute; t&ecirc;n. Ng&agrave;y chi&ecirc;u qu&acirc;n cũng l&agrave; một dịp tốt cho Capitol điều tra d&acirc;n số. Những đứa trẻ từ mười hai đến mười t&aacute;m được qu&acirc;y lại trong những khu vực chăng d&acirc;y chia theo độ tuổi; lớn nhất đứng trước, nhỏ nhất, như Prim, đứng về ph&iacute;a sau. Những người th&acirc;n trong gia đ&igrave;nh xếp h&agrave;ng xung quanh, nắm chặt tay nhau. Nhưng cũng c&oacute; những người kh&aacute;c kh&ocirc;ng c&oacute; người th&acirc;n trong số bọn trẻ, tổ chức đ&aacute;nh cược t&ecirc;n hai đứa trẻ sẽ được chọn. Tỷ lệ cược phụ thuộc v&agrave;o độ tuổi, v&agrave;o việc bọn trẻ thuộc khu Vỉa than hay con nh&agrave; l&aacute;i thương, hay v&agrave;o việc ch&uacute;ng c&oacute; ng&atilde; quỵ v&agrave; kh&oacute;c l&oacute;c hay kh&ocirc;ng. Hầu hết mọi người đều từ chối c&aacute; cược với lũ bịp bợm, nhưng biết đ&acirc;u đấy. Những kẻ n&agrave;y lu&ocirc;n tỏ ra m&igrave;nh l&agrave; người trong nghề, v&agrave; khi nắm ch&oacute;p ai lại kh&ocirc;ng ph&aacute; luật cơ chứ? T&ocirc;i c&oacute; thể bị bắt quả tang trong một chuyến đi săn h&agrave;ng ng&agrave;y, nhưng khi đ&oacute; lũ quan chức th&egrave;m thịt th&uacute; vẫn c&oacute; thể bảo vệ t&ocirc;i. Tuy nhi&ecirc;n, kh&ocirc;ng phải ai cũng như thế.</p>\r\n\r\n<p>D&ugrave; sao, cả Gale v&agrave; t&ocirc;i đều đồng &yacute; rằng giữa chết v&igrave; đ&oacute;i v&agrave; v&igrave; một vi&ecirc;n đạn găm v&agrave;o đầu, c&aacute;i chết thứ hai đến nhanh hơn nhiều.</p>\r\n\r\n<p>Kh&ocirc;ng gian c&agrave;ng l&uacute;c c&agrave;ng chật chội v&agrave; bức bối khi d&ograve;ng người &ugrave;n &ugrave;n k&eacute;o tới. B&atilde;i đất rộng m&ecirc;nh m&ocirc;ng, nhưng kh&ocirc;ng đủ để chứa hết t&aacute;m ngh&igrave;n người của Quận 12. Những người đến trễ đứng ở giữa con đường xung quanh, nơi họ c&oacute; thể xem qua m&agrave;n h&igrave;nh v&igrave; sự kiện n&agrave;y được ch&iacute;nh quyền truyền h&igrave;nh trực tiếp.</p>\r\n\r\n<p>T&ocirc;i đứng trong nh&oacute;m những đứa từ mười s&aacute;u tuổi đến từ khu Vỉa than. Ch&uacute;ng t&ocirc;i khẽ gật đầu ch&agrave;o nhau rồi tập trung mọi &aacute;nh nh&igrave;n l&ecirc;n s&acirc;n khấu vừa được dựng l&ecirc;n trước T&ograve;a Tư ph&aacute;p. Tr&ecirc;n đ&oacute; c&oacute; ba chiếc ghế, một chiếc bục, v&agrave; hai lồng cầu thủy tinh lớn để bốc thăm, một cho con trai v&agrave; một cho con g&aacute;i.. Hai mươi mảnh giấy trong số đ&oacute; được viết cẩn thận c&aacute;i t&ecirc;n Katniss Everdeen.</p>\r\n\r\n<p>Hai trong ba chiếc ghế tr&ecirc;n s&acirc;n khấu đ&atilde; c&oacute; người ngồi. Một l&agrave; Madge, Thị trưởng Undersee, một người đ&agrave;n &ocirc;ng cao, tr&aacute;n h&oacute; v&agrave; b&agrave; Effie Trinket, gi&aacute;m s&aacute;t vi&ecirc;n Quận 12, đến từ Capitol với nụ cười trắng nhớn đ&aacute;ng sợ, m&aacute;i t&oacute;c hồng v&agrave; bộ đồ m&agrave;u xanh mầm. Họ th&igrave; thầm với nhau rồi nh&igrave;n chiếc ghế trống một c&aacute;ch &aacute;i ngại.</p>\r\n\r\n<p>Ngay khi chiếc đồng hồ của thị trấn điểm hai giờ, ng&agrave;y thị trưởng đứng tr&ecirc;n bục bắt đầu đọc diễn văn. Năm n&agrave;o cũng như năm n&agrave;o. &Ocirc;ng kể về lịch sử của Panem, đất nước đứng l&ecirc;n từ đống đổ n&aacute;t từng c&oacute; t&ecirc;n l&agrave; Bắc Mỹ. &Ocirc;ng liệt k&ecirc; những thảm họa, những đợt hạn h&aacute;n, b&atilde;o lụt, hỏa hoạn, nước biển x&acirc;m thực nhấn ch&igrave;m nhiều v&ugrave;ng đất, những chiến &aacute;c liệt khiến hầu hết phương tiện sống bị t&agrave;n ph&aacute;. Sau c&ugrave;ng Panem được sinh ra, với Capitol ch&oacute;i lọi được bao quanh bởi mười ba quận, bảo đảm h&ograve;a b&igrave;nh v&agrave; thịnh vượng cho c&ocirc;ng d&acirc;n của m&igrave;nh. Tiếp theo l&agrave; Kỳ Đen tối, thời điểm c&aacute;c quận nồi loạn chống lại Capitol. Mười hai quận bị đ&aacute;nh bại, quận thứ mười ba bị x&oacute;a sổ. Hiệp ước Phản trắc mang đến những điều luật mới nhằm giữ vững h&ograve;a b&igrave;nh, đồng thời l&agrave; lời nhắc nhở ch&uacute;ng t&ocirc;i h&agrave;ng năm rằng Kỳ Đen tối sẽ kh&ocirc;ng bao giờ được lặp lại, khi đưa ch&uacute;ng t&ocirc;i đến với Đấu trường Sinh tử.</p>\r\n\r\n<p>Luật lệ của Đấu trường Sinh tử kh&aacute; đơn giản. Để trừng phạt việc nổi loạn, mỗi quận phải chọn ra một trai v&agrave; một g&aacute;i, gọi l&agrave; vật tế. Hai mươi bốn người chơi sẽ bị giam cầm trong một trường đấu ngo&agrave;i trời rộng lớn, nơi c&oacute; thể tồn tại mọi thứ, từ sa mạc n&oacute;ng bỏng cho đến v&ugrave;ng hoang vu lạnh gi&aacute;. Vật tế sống s&oacute;t cuối c&ugrave;ng sẽ thắng.</p>\r\n\r\n<p>Chọn những đứa trẻ từ c&aacute;c quận, bắt ch&uacute;ng t&agrave;n s&aacute;t lẫn nhau c&ograve;n những người c&ograve;n lại theo d&otilde;i, đ&oacute; l&agrave; c&aacute;ch Capitol nhắc nhở ch&uacute;ng t&ocirc;i rằng số phận của tất cả bị họ định đoạt như thế n&agrave;o, v&agrave; cơ hội sống s&oacute;t của mọi người &iacute;t ỏi ra sao nếu d&aacute;m nổi loạn một lần nữa. D&ugrave; họ c&oacute; n&oacute;i g&igrave; đi nữa, th&ocirc;ng điệp ch&iacute;nh vẫn r&otilde; r&agrave;ng.&nbsp;&quot;H&atilde;y nh&igrave;n xem, ch&uacute;ng ta lấy những đứa trẻ rồi đem ch&uacute;ng hiến tế trong khi c&aacute;c người bất lực đến mức n&agrave;o. Chỉ cần c&aacute;c ngươi động một ng&oacute;n tay, bọn ta sẽ ti&ecirc;n diệt cho đến đứa cuối c&ugrave;ng. Như c&aacute;ch bọn ta l&agrave;m với Quận 13.&quot;</p>\r\n\r\n<p>Để hạ nhục v&agrave; tra tấn bọn t&ocirc;i, Capitol buộc tất cả phải xem Đấu trường Sinh tử như một ng&agrave;y hội, một cuộc thượng đ&agrave;i giữa c&aacute;c quận với nhau. Người chơi sống s&oacute;t cuối c&ugrave;ng sẽ được hưởng cuộc sống sung t&uacute;c khi trở về, v&agrave; quận của họ sẽ nhận cơ man l&agrave; phần thưởng, chủ yếu l&agrave; thức ăn. Trong v&ograve;ng một năm, Capitol sẽ trao cho quận chiến thắng ngũ cốc,&nbsp;<a href=\"https://tiki.vn/dau-an/c5477\">dầu ăn</a>&nbsp;v&agrave; thậm ch&iacute; thứ đ&aacute;ng gi&aacute; hơn như đường trong khi c&aacute;c quận c&ograve;n lại vật lộn với đ&oacute;i kh&aacute;t.</p>\r\n\r\n<p>...</p>\r\n\r\n<p>Qua đ&aacute;m đ&ocirc;ng, t&ocirc;i nhận ra Gale đang nh&igrave;n t&ocirc;i với nụ cười thấp tho&aacute;ng. Trong ng&agrave;y chi&ecirc;u qu&acirc;n, điều đ&oacute; &iacute;t ra cũng mang lại cho cho t&ocirc;i ch&uacute;t cảm gi&aacute;c nhẹ nh&otilde;m. Nhưng bất chợt t&ocirc;i nghĩ về Gale với bốn mươi hai mảnh giấy c&oacute; t&ecirc;n anh trong lồng cầu thủy tinh kia v&agrave; x&aacute;c suất anh kh&ocirc;ng bị bốc tr&uacute;ng. Việc c&ograve;n h&agrave;ng ngh&igrave;n đứa con trai kh&aacute;c kh&ocirc;ng quan trọng. C&oacute; lẽ anh cũng đang nghĩ điều tương tự về t&ocirc;i, bởi gương mặt Gale tối sầm lại v&agrave; quay đi chỗ kh&aacute;c.&nbsp;&quot;Nhưng c&oacute; đến h&agrave;ng ngh&igrave;n mảnh giấy cơ m&agrave;,&quot;&nbsp;ước g&igrave; t&ocirc;i c&oacute; thể n&oacute;i khẽ với anh ấy.</p>\r\n\r\n<p>Đ&atilde; đến giờ bốc thăm. Effie Trinket n&oacute;i như mọi lần,&nbsp;&quot;Phụ nữ trước!&quot;&nbsp;v&agrave; đến chỗ lồng cầu thủy tinh chứa t&ecirc;n con g&aacute;i. B&agrave; lại gần, thọc tay s&acirc;u v&agrave;o lồng lấy ra một mảnh giấy. Đ&aacute;m đ&ocirc;ng đồng loạt n&iacute;n thở đến độ tưởng như c&oacute; thể nghe tiếng ngay cả một chiếc ghim rơi xuống đất, t&ocirc;i cảm thấy thắt ruột v&agrave; hy vọng nhen nh&oacute;m rằng đ&oacute; kh&ocirc;ng phải l&agrave; t&ocirc;i, đ&oacute; kh&ocirc;ng phải l&agrave; t&ocirc;i, đ&oacute; kh&ocirc;ng phải l&agrave; t&ocirc;i.</p>\r\n\r\n<p>Effie Trinket quay trở lại chiếc bục, vuốt mảnh giấy cho thẳng v&agrave; xướng t&ecirc;n bằng một giọng d&otilde;ng dạc. Kh&ocirc;ng phải t&ocirc;i.</p>\r\n\r\n<p>Đ&oacute; l&agrave; Primrose Everdeen.</p>', 400, 4, 0, 2, '2017-11-21 18:33:26', '2017-11-22 17:15:58'),
(27, 'nhap', 'Suzanne Collins', 'Trần Quốc Tân', 9, '0', '', '2017-04-22', '14 x 20.5 cm', '14 x 20', 100, 4, 10, '<p>Một thế giới t&agrave;n nhẫn trong tương lai...</p>\r\n\r\n<p>Đ&oacute; l&agrave; khi Bắc Mỹ đang dần kh&ocirc;i phục lại sau nhiều năm ch&igrave;m trong nội chiến. Sau khi nh&agrave; nước Panem trấn &aacute;p được cuộc nổi dậy của mười ba quận, ph&aacute; hủy quận 13, những người đứng đầu bộ m&aacute;y cai trị đặt ra một h&igrave;nh phạt t&agrave;n nhẫn cho mười hai quận c&ograve;n lại. Mỗi năm từ mỗi quận một nam v&agrave; một nữ bị chọn l&agrave;m vật tế, bị gom lại tr&ecirc;n một chiến trường, phải ti&ecirc;u diệt lẫn nhau cho đến khi chỉ c&ograve;n một người duy nhất sống s&oacute;t.</p>\r\n\r\n<p>Trong một lần xả th&acirc;n cứu em g&aacute;i, Katniss sa ch&acirc;n v&agrave;o đấu trường sinh tử. C&ocirc; v&agrave; Peeta trở th&agrave;nh một cặp đồng h&agrave;nh, c&ugrave;ng phi&ecirc;u lưu v&agrave;o thế giới đầy chết ch&oacute;c, nơi m&agrave; đường v&agrave;o c&oacute; 24 lối d&agrave;nh cho 24 con người nhưng đường ra th&igrave; chỉ c&oacute; 1. Katniss sẽ phải l&agrave;m g&igrave;, khi c&aacute;c đối thủ của c&ocirc; l&agrave; một ch&agrave;ng trai c&oacute; t&igrave;nh cảm với c&ocirc; v&agrave; một người c&ocirc; coi như em g&aacute;i?</p>\r\n\r\n<p>B&iacute; ẩn, gai g&oacute;c nhưng m&atilde;nh liệt đầy chất thơ, l&agrave;m người đọc hồi hộp đến từng thớ chữ, kh&ocirc;ng phải ngẫu nhi&ecirc;n khi Đấu trường sinh tử lọt v&agrave;o danh s&aacute;ch s&aacute;ch b&aacute;n chạy nhất của tờ The New York Times trong suốt 60 tuần, v&agrave; mang lại vinh danh từ tạp ch&iacute; Time cho t&aacute;c giả Suzanne Collins như một trong những người c&oacute; ảnh hưởng nhất thế giới năm 2010.</p>\r\n\r\n<p><strong>***</strong></p>', '<p><strong>Tr&iacute;ch đoạn:</strong></p>\r\n\r\n<p><strong>Phần 1: VẬT TẾ</strong></p>\r\n\r\n<p><strong>Chương 1</strong></p>\r\n\r\n<p>...</p>\r\n\r\n<p>Một giờ, ch&uacute;ng t&ocirc;i ra b&atilde;i đất trống. Ai cũng phải c&oacute; mặt, trừ khi đang hấp hối. Đến tối, hội gi&aacute;m s&aacute;t sẽ đi v&ograve;ng quanh để kiểm tra. Ai trốn sẽ bị bỏ t&ugrave;.</p>\r\n\r\n<p>Thật kh&ocirc;ng thể tệ hơn khi buổi chi&ecirc;u qu&acirc;n được tổ chức tại b&atilde;i đất trống, một trong số &iacute;t c&aacute;c địa điểm đẹp ở Quận 12. Xung quanh b&atilde;i đất trống l&agrave; những cửa h&agrave;ng, v&agrave; trong những ng&agrave;y khu chợ mở cửa, đặc biệt khi thời tiết tốt, đến đ&acirc;y c&oacute; cảm gi&aacute;c như đi hội. Nhưng h&ocirc;m nay, mặc d&ugrave; biểu ngữ giăng sặc sỡ tr&ecirc;n c&aacute;c t&ograve;a nh&agrave;, kh&ocirc;ng kh&iacute; ở đ&acirc;y vẫn thật nặng nề. C&aacute;c đo&agrave;n quay phim vờn quanh như bầy &oacute; tr&ecirc;n n&oacute;c nh&agrave;, chỉ c&agrave;ng l&agrave;m tăng th&ecirc;m cảm gi&aacute;c nặng nề đ&oacute;.</p>\r\n\r\n<p>Người ta xếp h&agrave;ng trong im lặng v&agrave; k&yacute; t&ecirc;n. Ng&agrave;y chi&ecirc;u qu&acirc;n cũng l&agrave; một dịp tốt cho Capitol điều tra d&acirc;n số. Những đứa trẻ từ mười hai đến mười t&aacute;m được qu&acirc;y lại trong những khu vực chăng d&acirc;y chia theo độ tuổi; lớn nhất đứng trước, nhỏ nhất, như Prim, đứng về ph&iacute;a sau. Những người th&acirc;n trong gia đ&igrave;nh xếp h&agrave;ng xung quanh, nắm chặt tay nhau. Nhưng cũng c&oacute; những người kh&aacute;c kh&ocirc;ng c&oacute; người th&acirc;n trong số bọn trẻ, tổ chức đ&aacute;nh cược t&ecirc;n hai đứa trẻ sẽ được chọn. Tỷ lệ cược phụ thuộc v&agrave;o độ tuổi, v&agrave;o việc bọn trẻ thuộc khu Vỉa than hay con nh&agrave; l&aacute;i thương, hay v&agrave;o việc ch&uacute;ng c&oacute; ng&atilde; quỵ v&agrave; kh&oacute;c l&oacute;c hay kh&ocirc;ng. Hầu hết mọi người đều từ chối c&aacute; cược với lũ bịp bợm, nhưng biết đ&acirc;u đấy. Những kẻ n&agrave;y lu&ocirc;n tỏ ra m&igrave;nh l&agrave; người trong nghề, v&agrave; khi nắm ch&oacute;p ai lại kh&ocirc;ng ph&aacute; luật cơ chứ? T&ocirc;i c&oacute; thể bị bắt quả tang trong một chuyến đi săn h&agrave;ng ng&agrave;y, nhưng khi đ&oacute; lũ quan chức th&egrave;m thịt th&uacute; vẫn c&oacute; thể bảo vệ t&ocirc;i. Tuy nhi&ecirc;n, kh&ocirc;ng phải ai cũng như thế.</p>\r\n\r\n<p>D&ugrave; sao, cả Gale v&agrave; t&ocirc;i đều đồng &yacute; rằng giữa chết v&igrave; đ&oacute;i v&agrave; v&igrave; một vi&ecirc;n đạn găm v&agrave;o đầu, c&aacute;i chết thứ hai đến nhanh hơn nhiều.</p>\r\n\r\n<p>Kh&ocirc;ng gian c&agrave;ng l&uacute;c c&agrave;ng chật chội v&agrave; bức bối khi d&ograve;ng người &ugrave;n &ugrave;n k&eacute;o tới. B&atilde;i đất rộng m&ecirc;nh m&ocirc;ng, nhưng kh&ocirc;ng đủ để chứa hết t&aacute;m ngh&igrave;n người của Quận 12. Những người đến trễ đứng ở giữa con đường xung quanh, nơi họ c&oacute; thể xem qua m&agrave;n h&igrave;nh v&igrave; sự kiện n&agrave;y được ch&iacute;nh quyền truyền h&igrave;nh trực tiếp.</p>\r\n\r\n<p>T&ocirc;i đứng trong nh&oacute;m những đứa từ mười s&aacute;u tuổi đến từ khu Vỉa than. Ch&uacute;ng t&ocirc;i khẽ gật đầu ch&agrave;o nhau rồi tập trung mọi &aacute;nh nh&igrave;n l&ecirc;n s&acirc;n khấu vừa được dựng l&ecirc;n trước T&ograve;a Tư ph&aacute;p. Tr&ecirc;n đ&oacute; c&oacute; ba chiếc ghế, một chiếc bục, v&agrave; hai lồng cầu thủy tinh lớn để bốc thăm, một cho con trai v&agrave; một cho con g&aacute;i.. Hai mươi mảnh giấy trong số đ&oacute; được viết cẩn thận c&aacute;i t&ecirc;n Katniss Everdeen.</p>\r\n\r\n<p>Hai trong ba chiếc ghế tr&ecirc;n s&acirc;n khấu đ&atilde; c&oacute; người ngồi. Một l&agrave; Madge, Thị trưởng Undersee, một người đ&agrave;n &ocirc;ng cao, tr&aacute;n h&oacute; v&agrave; b&agrave; Effie Trinket, gi&aacute;m s&aacute;t vi&ecirc;n Quận 12, đến từ Capitol với nụ cười trắng nhớn đ&aacute;ng sợ, m&aacute;i t&oacute;c hồng v&agrave; bộ đồ m&agrave;u xanh mầm. Họ th&igrave; thầm với nhau rồi nh&igrave;n chiếc ghế trống một c&aacute;ch &aacute;i ngại.</p>\r\n\r\n<p>Ngay khi chiếc đồng hồ của thị trấn điểm hai giờ, ng&agrave;y thị trưởng đứng tr&ecirc;n bục bắt đầu đọc diễn văn. Năm n&agrave;o cũng như năm n&agrave;o. &Ocirc;ng kể về lịch sử của Panem, đất nước đứng l&ecirc;n từ đống đổ n&aacute;t từng c&oacute; t&ecirc;n l&agrave; Bắc Mỹ. &Ocirc;ng liệt k&ecirc; những thảm họa, những đợt hạn h&aacute;n, b&atilde;o lụt, hỏa hoạn, nước biển x&acirc;m thực nhấn ch&igrave;m nhiều v&ugrave;ng đất, những chiến &aacute;c liệt khiến hầu hết phương tiện sống bị t&agrave;n ph&aacute;. Sau c&ugrave;ng Panem được sinh ra, với Capitol ch&oacute;i lọi được bao quanh bởi mười ba quận, bảo đảm h&ograve;a b&igrave;nh v&agrave; thịnh vượng cho c&ocirc;ng d&acirc;n của m&igrave;nh. Tiếp theo l&agrave; Kỳ Đen tối, thời điểm c&aacute;c quận nồi loạn chống lại Capitol. Mười hai quận bị đ&aacute;nh bại, quận thứ mười ba bị x&oacute;a sổ. Hiệp ước Phản trắc mang đến những điều luật mới nhằm giữ vững h&ograve;a b&igrave;nh, đồng thời l&agrave; lời nhắc nhở ch&uacute;ng t&ocirc;i h&agrave;ng năm rằng Kỳ Đen tối sẽ kh&ocirc;ng bao giờ được lặp lại, khi đưa ch&uacute;ng t&ocirc;i đến với Đấu trường Sinh tử.</p>\r\n\r\n<p>Luật lệ của Đấu trường Sinh tử kh&aacute; đơn giản. Để trừng phạt việc nổi loạn, mỗi quận phải chọn ra một trai v&agrave; một g&aacute;i, gọi l&agrave; vật tế. Hai mươi bốn người chơi sẽ bị giam cầm trong một trường đấu ngo&agrave;i trời rộng lớn, nơi c&oacute; thể tồn tại mọi thứ, từ sa mạc n&oacute;ng bỏng cho đến v&ugrave;ng hoang vu lạnh gi&aacute;. Vật tế sống s&oacute;t cuối c&ugrave;ng sẽ thắng.</p>\r\n\r\n<p>Chọn những đứa trẻ từ c&aacute;c quận, bắt ch&uacute;ng t&agrave;n s&aacute;t lẫn nhau c&ograve;n những người c&ograve;n lại theo d&otilde;i, đ&oacute; l&agrave; c&aacute;ch Capitol nhắc nhở ch&uacute;ng t&ocirc;i rằng số phận của tất cả bị họ định đoạt như thế n&agrave;o, v&agrave; cơ hội sống s&oacute;t của mọi người &iacute;t ỏi ra sao nếu d&aacute;m nổi loạn một lần nữa. D&ugrave; họ c&oacute; n&oacute;i g&igrave; đi nữa, th&ocirc;ng điệp ch&iacute;nh vẫn r&otilde; r&agrave;ng.&nbsp;&quot;H&atilde;y nh&igrave;n xem, ch&uacute;ng ta lấy những đứa trẻ rồi đem ch&uacute;ng hiến tế trong khi c&aacute;c người bất lực đến mức n&agrave;o. Chỉ cần c&aacute;c ngươi động một ng&oacute;n tay, bọn ta sẽ ti&ecirc;n diệt cho đến đứa cuối c&ugrave;ng. Như c&aacute;ch bọn ta l&agrave;m với Quận 13.&quot;</p>\r\n\r\n<p>Để hạ nhục v&agrave; tra tấn bọn t&ocirc;i, Capitol buộc tất cả phải xem Đấu trường Sinh tử như một ng&agrave;y hội, một cuộc thượng đ&agrave;i giữa c&aacute;c quận với nhau. Người chơi sống s&oacute;t cuối c&ugrave;ng sẽ được hưởng cuộc sống sung t&uacute;c khi trở về, v&agrave; quận của họ sẽ nhận cơ man l&agrave; phần thưởng, chủ yếu l&agrave; thức ăn. Trong v&ograve;ng một năm, Capitol sẽ trao cho quận chiến thắng ngũ cốc,&nbsp;<a href=\"https://tiki.vn/dau-an/c5477\">dầu ăn</a>&nbsp;v&agrave; thậm ch&iacute; thứ đ&aacute;ng gi&aacute; hơn như đường trong khi c&aacute;c quận c&ograve;n lại vật lộn với đ&oacute;i kh&aacute;t.</p>\r\n\r\n<p>...</p>\r\n\r\n<p>Qua đ&aacute;m đ&ocirc;ng, t&ocirc;i nhận ra Gale đang nh&igrave;n t&ocirc;i với nụ cười thấp tho&aacute;ng. Trong ng&agrave;y chi&ecirc;u qu&acirc;n, điều đ&oacute; &iacute;t ra cũng mang lại cho cho t&ocirc;i ch&uacute;t cảm gi&aacute;c nhẹ nh&otilde;m. Nhưng bất chợt t&ocirc;i nghĩ về Gale với bốn mươi hai mảnh giấy c&oacute; t&ecirc;n anh trong lồng cầu thủy tinh kia v&agrave; x&aacute;c suất anh kh&ocirc;ng bị bốc tr&uacute;ng. Việc c&ograve;n h&agrave;ng ngh&igrave;n đứa con trai kh&aacute;c kh&ocirc;ng quan trọng. C&oacute; lẽ anh cũng đang nghĩ điều tương tự về t&ocirc;i, bởi gương mặt Gale tối sầm lại v&agrave; quay đi chỗ kh&aacute;c.&nbsp;&quot;Nhưng c&oacute; đến h&agrave;ng ngh&igrave;n mảnh giấy cơ m&agrave;,&quot;&nbsp;ước g&igrave; t&ocirc;i c&oacute; thể n&oacute;i khẽ với anh ấy.</p>\r\n\r\n<p>Đ&atilde; đến giờ bốc thăm. Effie Trinket n&oacute;i như mọi lần,&nbsp;&quot;Phụ nữ trước!&quot;&nbsp;v&agrave; đến chỗ lồng cầu thủy tinh chứa t&ecirc;n con g&aacute;i. B&agrave; lại gần, thọc tay s&acirc;u v&agrave;o lồng lấy ra một mảnh giấy. Đ&aacute;m đ&ocirc;ng đồng loạt n&iacute;n thở đến độ tưởng như c&oacute; thể nghe tiếng ngay cả một chiếc ghim rơi xuống đất, t&ocirc;i cảm thấy thắt ruột v&agrave; hy vọng nhen nh&oacute;m rằng đ&oacute; kh&ocirc;ng phải l&agrave; t&ocirc;i, đ&oacute; kh&ocirc;ng phải l&agrave; t&ocirc;i, đ&oacute; kh&ocirc;ng phải l&agrave; t&ocirc;i.</p>\r\n\r\n<p>Effie Trinket quay trở lại chiếc bục, vuốt mảnh giấy cho thẳng v&agrave; xướng t&ecirc;n bằng một giọng d&otilde;ng dạc. Kh&ocirc;ng phải t&ocirc;i.</p>\r\n\r\n<p>Đ&oacute; l&agrave; Primrose Everdeen.</p>', 400, 4, 0, 2, '2017-11-21 18:33:26', '2017-11-22 17:15:57'),
(28, 'Sổ Tay Artbook - Singin\'s', 'Suzanne Collins', '', 10, 'NXB Kim Đồng', 'B5G8d0lSVCz9YtuPedbX1zgrtyhi6dPasioUIa3n.jpeg', '2017-04-22', '14 x 20.5 cm', '14 x 20', 100, 3, 10, '<p><strong>Sổ Tay Artbook - Singin&#39;s</strong>&nbsp;l&agrave; d&ograve;ng sổ b&igrave;a cứng c&oacute; thiết kế đẹp mắt với m&agrave;u sắc tươi s&aacute;ng. Ruột sổ sử dụng chất liệu giấy n&acirc;u, l&aacute;ng mịn, chống ch&oacute;i, chống thấm cao, độ b&aacute;m chữ tốt, th&acirc;n thiện với m&ocirc;i trường. Với 192 trang, k&iacute;ch thước 12.5 x 18 cm nhỏ gọn, sản phẩm thuận tiện cho bạn mang theo ghi ch&eacute;p mọi l&uacute;c mọi nơi.</p>\r\n\r\n<p>&nbsp;</p>', '<p><img alt=\"AB_Notebook No 6_Singin\'s\" src=\"https://tikicdn.com/media/catalog/product/d/s/dsc_0001_5000000058259.u634.d20160527.t110709.jpg\" style=\"height:700px; width:700px\" title=\"AB_Notebook No 6_Singin\'s\" /></p>', 400, 4, 1, 2, '2017-11-21 18:33:26', '2017-12-14 04:20:15'),
(29, 'Số Tay Artbook No1- Totoro', 'Suzanne Collins', '', 10, 'NXB Kim Đồng', 'vFk8RnRFw7IatCS50nXrwTgcxrEC2eZAJvdh3UoL.jpeg', '2017-04-22', '14 x 20.5 cm', '14 x 20', 96, 4, 10, '<p><strong>Số Tay Artbook No1- Totoro</strong>&nbsp;l&agrave; d&ograve;ng sổ b&igrave;a cứng c&oacute; thiết kế v&ocirc; c&ugrave;ng dễ thương v&agrave; đ&aacute;ng y&ecirc;u. Ruột sổ sử dụng chất liệu giấy n&acirc;u, l&aacute;ng mịn, chống ch&oacute;i, chống thấm cao, độ b&aacute;m chữ tốt, th&acirc;n thiện với m&ocirc;i trường. Với 192 trang, k&iacute;ch thước 12.5 x 18 cm nhỏ gọn, sản phẩm thuận tiện cho bạn mang theo ghi ch&eacute;p mọi l&uacute;c mọi nơi.</p>', '<p><img alt=\"AB_Notebook No 1_Totoro\" src=\"https://tikicdn.com/media/catalog/product/d/s/dsc_0001_5000000058204.u634.d20160527.t110307.jpg\" style=\"height:700px; width:700px\" title=\"AB_Notebook No 1_Totoro\" /></p>', 400, 4, 1, 1, '2017-11-21 18:33:26', '2017-12-14 04:20:15'),
(30, 'Sổ Tay Artbook Frozen', 'Suzanne Collins', '', 10, 'NXB Kim Đồng', '9JZNOLOdbiHc1gEgwS1PA3Em9nXDIvSElvbCis0W.jpeg', '2017-04-22', 'Bìa mềm', '12 x 19 cm', 96, 4, 10, '<p><strong>AB_Notebook 12x19_54</strong>&nbsp;sở hữu h&igrave;nh ảnh b&igrave;a v&ocirc; c&ugrave;ng ấn tượng v&agrave; đẹp mắt. Sản phẩm được đ&oacute;ng g&aacute;y kim chắc chắn, sử dụng chất liệu giấy tốt, l&aacute;ng mịn, chống thấm cao, th&acirc;n thiện với m&ocirc;i trường. Với 80 trang giấy c&ugrave;ng k&iacute;ch thước 12 x 19 cm nhỏ gọn, sổ tay thuận tiện cho bạn mang theo ghi ch&eacute;p mọi l&uacute;c mọi nơi.</p>', '<p><img alt=\"AB_Notebook 12x19_54\" src=\"https://tikicdn.com/media/catalog/product/d/s/dsc_0001_5000000094950.u634.d20160530.t162149.jpg\" style=\"height:700px; width:700px\" title=\"AB_Notebook 12x19_54\" /></p>', 123, 4, 1, 1, '2017-11-21 18:33:26', '2017-12-14 04:20:15'),
(31, 'Yona - Công Chúa Bình Minh (Tập 6)', 'Mizuho Kusanagi', '', 5, 'NXB Trẻ', 'nDNubHFlk9mgqgdhC3cfcLTqLkGyUO5Dzrrc3cMA.jpeg', '2017-04-22', 'Bìa mềm', '14 x 20.5 cm', 74, 1, 0, '<p><strong>Yona - C&ocirc;ng Ch&uacute;a B&igrave;nh Minh (Tập 6)</strong></p>\r\n\r\n<p>N&agrave;ng c&ocirc;ng ch&uacute;a Yona độc nhất của nước Kouka lớn l&ecirc;n trong sự bảo bọc của vua cha c&ugrave;ng người bạn th&acirc;n từ thuở nhỏ ki&ecirc;m hộ vệ - Hak. V&agrave;o ng&agrave;y sinh nhật 16 tuổi, người anh họ Soo Won m&agrave; n&agrave;ng thầm thương trộm nhớ đ&atilde; đến ch&uacute;c mừng khiến Yona rất đỗi vui mừng. Nhưng vận mệnh nghiệt ng&atilde; được b&aacute;o trước đang chờ đ&oacute;n n&agrave;ng&hellip;!? V&agrave; từ đ&acirc;y, c&acirc;u chuyện l&atilde;ng mạn giả tưởng về n&agrave;ng c&ocirc;ng ch&uacute;a vong quốc bắt đầu.</p>\r\n\r\n<p>B&iacute; ẩn, gai g&oacute;c nhưng m&atilde;nh liệt đầy chất thơ, l&agrave;m người đọc hồi hộp đến từng thớ chữ, kh&ocirc;ng phải ngẫu nhi&ecirc;n khi Đấu trường sinh tử lọt v&agrave;o danh s&aacute;ch s&aacute;ch b&aacute;n chạy nhất của tờ The New York Times trong suốt 60 tuần, v&agrave; mang lại vinh danh từ tạp ch&iacute; Time cho t&aacute;c giả Suzanne Collins như một trong những người c&oacute; ảnh hưởng nhất thế giới năm 2010.</p>\r\n\r\n<p><strong>***</strong></p>', '<p>***</p>', 200, 4, 1, 1, '2017-11-21 18:33:26', '2017-12-08 10:31:59'),
(32, 'Yona - Công Chúa Bình Minh (Tập 12)', 'Mizuho Kusanagi', '', 5, 'NXB Trẻ', 'xhzTthfLAy790fJDDu9UWFIDEUgtWdd75KuQ3OzR.jpeg', '2017-04-28', 'Bìa mềm', '14 x 20.5 cm', 96, 1, 0, '<p><strong>Yona - C&ocirc;ng Ch&uacute;a B&igrave;nh Minh (Tập 6)</strong></p>\r\n\r\n<p>N&agrave;ng c&ocirc;ng ch&uacute;a Yona độc nhất của nước Kouka lớn l&ecirc;n trong sự bảo bọc của vua cha c&ugrave;ng người bạn th&acirc;n từ thuở nhỏ ki&ecirc;m hộ vệ - Hak. V&agrave;o ng&agrave;y sinh nhật 16 tuổi, người anh họ Soo Won m&agrave; n&agrave;ng thầm thương trộm nhớ đ&atilde; đến ch&uacute;c mừng khiến Yona rất đỗi vui mừng. Nhưng vận mệnh nghiệt ng&atilde; được b&aacute;o trước đang chờ đ&oacute;n n&agrave;ng&hellip;!? V&agrave; từ đ&acirc;y, c&acirc;u chuyện l&atilde;ng mạn giả tưởng về n&agrave;ng c&ocirc;ng ch&uacute;a vong quốc bắt đầu.</p>\r\n\r\n<p>B&iacute; ẩn, gai g&oacute;c nhưng m&atilde;nh liệt đầy chất thơ, l&agrave;m người đọc hồi hộp đến từng thớ chữ, kh&ocirc;ng phải ngẫu nhi&ecirc;n khi Đấu trường sinh tử lọt v&agrave;o danh s&aacute;ch s&aacute;ch b&aacute;n chạy nhất của tờ The New York Times trong suốt 60 tuần, v&agrave; mang lại vinh danh từ tạp ch&iacute; Time cho t&aacute;c giả Suzanne Collins như một trong những người c&oacute; ảnh hưởng nhất thế giới năm 2010.</p>\r\n\r\n<p><strong>***</strong></p>', '<p>***</p>', 200, 4, 1, 1, '2017-11-21 18:33:26', '2017-12-18 12:24:23'),
(33, 'Những Nàng Công Chúa Bí Ẩn (Artbook)', 'Khoa Lê', '', 10, 'NXB Kim Đồng', 'qVmp8EqIrZ2W0dhptTPMQDSV5WCKSTtCxKRzH6e7.jpeg', '2017-11-01', 'Bìa mềm', '24.5 x 33 cm', 187, 10, 0, '<p>C&acirc;u chuyện đầy mơ mộng về cuộc phi&ecirc;u lưu của c&aacute;c n&agrave;ng c&ocirc;ng ch&uacute;a với những quyền năng b&iacute; ẩn, để bảo vệ vương quốc ph&eacute;p thuật khỏi ch&uacute; rồng lửa hung hăng.</p>\r\n\r\n<p>Với những h&igrave;nh vẽ minh họa đầy chất thơ, huyền diệu v&agrave; lung linh như được rắc những hạt l&acirc;n tinh lấp l&aacute;nh, cuốn s&aacute;ch sẽ l&agrave; c&acirc;u chuyện thần ti&ecirc;n th&uacute; vị d&agrave;nh cho c&aacute;c b&eacute; trước giờ đi ngủ.</p>', '<p><img alt=\"Những Nàng Công Chúa Bí Ẩn (Artbook)\" src=\"https://tikicdn.com/media/catalog/product/p/r/princesses_vnese-16.jpg\" style=\"height:400px; width:591px\" title=\"Những Nàng Công Chúa Bí Ẩn (Artbook)\" /></p>', 48, 5, 1, 1, '2017-11-22 03:30:00', '2017-12-19 19:09:43'),
(34, 'Shaman King (Tập 14)', 'Hiroyuki Takei', '', 5, 'NXB Kim Đồng', 'SyfdoM8RERnyH2hrfFmYa5uzStfoU65a0HRQp7yD.jpeg', '2017-11-04', 'Bìa mềm', '11.3 x 17.6 cm', 90, 1, 0, '<p>Trong thế giới của&nbsp;Shaman King&nbsp;(Vua Ph&aacute;p sư) c&oacute; những ph&aacute;p sư c&oacute; thể điều khiển được c&aacute;c linh hồn. Mỗi ph&aacute;p sư c&oacute; một linh hồn đi k&egrave;m để hỗ trợ. Cứ 500 năm 1 lần sẽ c&oacute; một đại hội thi đấu giữa c&aacute;c ph&aacute;p sư để chọn ra một vua ph&aacute;p sư. Người n&agrave;y sẽ c&oacute; được linh hồn vĩ đại của Tr&aacute;i Đất để gi&uacute;p thế giới. Tuy nhi&ecirc;n 2 cuộc thi đấu gần đ&acirc;y nhất đ&atilde; bị ph&aacute; hoại bởi một ph&aacute;p sư t&ecirc;n l&agrave; Asakura Hao. Manta l&agrave; một cậu b&eacute; đang học trung học ở Tokyo. Cậu t&igrave;nh cờ l&agrave;m quen với Yoh, một ph&aacute;p sư mới chuyển đến c&ugrave;ng lớp. Manta lần lượt gặp những ph&aacute;p sư kh&aacute;c như Anna, Ryu, Tao Ren, Tao Jun. Shaman King kể về cuộc phi&ecirc;u lưu của Yoh, Anna, v&agrave; c&aacute;c bạn qua lời kể của Manta.</p>', '<p>***</p>', 200, 7, 1, 1, '2017-11-22 02:51:38', '2017-12-19 19:12:54'),
(36, 'Shaman King (Tập 16 )', 'Hiroyuki Takei', '', 5, 'NXB Kim Đồng', 'hsLTPeQdtsjClwlSm8eJR2CpFAKgAvhGlKPx0s1t.jpeg', '2017-11-04', 'Bìa mềm', '11.3 x 17.6 cm', 16, 0.9, 25, '<p>Trong thế giới của&nbsp;Shaman King&nbsp;(Vua Ph&aacute;p sư) c&oacute; những ph&aacute;p sư c&oacute; thể điều khiển được c&aacute;c linh hồn. Mỗi ph&aacute;p sư c&oacute; một linh hồn đi k&egrave;m để hỗ trợ. Cứ 500 năm 1 lần sẽ c&oacute; một đại hội thi đấu giữa c&aacute;c ph&aacute;p sư để chọn ra một vua ph&aacute;p sư. Người n&agrave;y sẽ c&oacute; được linh hồn vĩ đại của Tr&aacute;i Đất để gi&uacute;p thế giới. Tuy nhi&ecirc;n 2 cuộc thi đấu gần đ&acirc;y nhất đ&atilde; bị ph&aacute; hoại bởi một ph&aacute;p sư t&ecirc;n l&agrave; Asakura Hao. Manta l&agrave; một cậu b&eacute; đang học trung học ở Tokyo. Cậu t&igrave;nh cờ l&agrave;m quen với Yoh, một ph&aacute;p sư mới chuyển đến c&ugrave;ng lớp. Manta lần lượt gặp những ph&aacute;p sư kh&aacute;c như Anna, Ryu, Tao Ren, Tao Jun. Shaman King kể về cuộc phi&ecirc;u lưu của Yoh, Anna, v&agrave; c&aacute;c bạn qua lời kể của Manta.</p>', '<p>***</p>', 200, 7, 1, 1, '2017-11-22 19:51:38', '2017-12-18 12:24:23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id_cat` int(255) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id_cat`, `name`, `parent_id`) VALUES
(1, 'Kinh tế', 0),
(2, 'Sách Makerting-Bán hàng', 1),
(3, 'Văn học', 0),
(4, 'Văn học nước ngoài', 3),
(5, 'Truyện tranh', 0),
(9, 'Tiểu thuyết tình cảm', 3),
(10, 'Artbook', 0),
(11, 'Sách quản trị, lãnh đạo', 1),
(12, 'Sách tài chính, kế toán', 1),
(13, 'Truyện kinh dị', 3),
(14, 'Truyện trinh thám', 3),
(15, 'Tiểu thuyết lịch sử', 3),
(16, 'Sách giáo khoa', 0),
(17, 'Truyện kiếm hiệp', 3),
(18, 'Kỹ năng sống', 0),
(19, 'ebook', 0),
(20, 'Học tiếng anh', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id_comment` int(255) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `book_id` int(255) NOT NULL,
  `parent_id` int(255) NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id_comment`, `fullname`, `email`, `book_id`, `parent_id`, `content`, `status`, `created_at`, `updated_at`) VALUES
(1, 'lam', 'lan@gmail.com', 33, 0, 'ai mua sách này chưa?màu rõ nét ko?', 1, '2017-12-10 05:10:38', '2017-12-10 06:04:54'),
(3, 'hoa', 'hoa@gmail.com', 33, 1, 'Sách đẹp lắm', 1, '2017-12-10 05:10:38', '2017-12-16 00:34:44'),
(14, 'An An', 'hoa@gmail.com', 33, 0, 'câu chuyện thần tiên thú vị dành cho các bé trước giờ đi ngủ', 1, '2017-12-10 09:26:15', '2017-12-10 14:29:16'),
(15, 'vi cam', 'admin@gmail.com', 33, 0, 'Những Nàng Công Chúa Bí Ẩn (Artbook)', 0, '2017-12-10 09:57:08', '2017-12-10 09:57:08'),
(24, 'hoa quỳnh', 'quynh@gmail.com', 33, 0, 'Sách đắt quá', 0, '2017-12-10 10:37:26', '2017-12-10 10:37:26'),
(26, 'duong', 'duong@gmail.com', 33, 25, 'sách chất lượng mà bạn', 0, '2017-12-10 10:40:01', '2017-12-10 10:40:01'),
(27, 'yeuvetranh', 'abcxyz@gmail.com', 30, 0, 'bia xấu quá', 1, '2017-12-10 10:41:19', '2017-12-16 00:34:56'),
(28, 'khongthichche', 'mnv@gmail.com', 30, 27, 'đồng ý', 0, '2017-12-10 10:42:33', '2017-12-10 10:42:33'),
(29, 'mailan', 'a@gmail.com', 30, 27, 'đồng ý+1', 0, '2017-12-10 10:42:56', '2017-12-10 10:42:56'),
(30, 'abc', 'abc@gmail.com', 14, 0, 'sách hay không?', 0, '2017-12-10 10:43:28', '2017-12-10 10:43:28'),
(31, 'like', 'like@gmail.com', 14, 0, 'sách đắt quá', 0, '2017-12-10 10:45:03', '2017-12-10 10:45:03'),
(32, 'nomoney', 'aa@gmail.com', 14, 0, 'Sách đắt quá', 0, '2017-12-10 10:46:59', '2017-12-10 10:46:59'),
(39, 'mai', 'hoa@gmail.com', 13, 0, 'sách hay đó', 1, '2017-12-13 02:22:55', '2017-12-15 12:28:42'),
(40, 'maihoalan', 'a@gmail.com', 13, 39, 'ok', 0, '2017-12-13 02:23:06', '2017-12-13 02:23:06'),
(41, 'mai', 'mmmmm@gmail.com', 32, 0, 'truyện hay lắm', 0, '2017-12-13 02:34:32', '2017-12-13 02:34:32'),
(57, 'lam', 'mmmmm@gmail.com', 33, 1, 'thanks bạn', 0, '2017-12-13 17:24:51', '2017-12-13 17:24:51'),
(58, 'mai', 'hoa@gmail.com', 36, 0, 'sach hay', 1, '2017-12-18 12:16:47', '2017-12-18 13:02:57'),
(59, 'linh', 'a@gmail.com', 36, 58, 'ok', 0, '2017-12-18 12:17:01', '2017-12-18 12:17:01'),
(60, 'tramnhien', 'tramnhien2210@gmail.com', 18, 0, 'sach hay', 0, '2017-12-18 12:45:27', '2017-12-18 12:45:27'),
(61, 'tramnhien', 'tramnhien2210@gmail.com', 18, 60, 'ok', 0, '2017-12-18 12:45:32', '2017-12-18 12:45:32');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id_contact` int(255) NOT NULL,
  `fullname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `contacts`
--

INSERT INTO `contacts` (`id_contact`, `fullname`, `email`, `phone`, `subject`, `content`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Mai Hoa', 'hoa@gmail.com', '0987678543', 'khen ngợi', 'tôi rất hài lòng về chất lượng sản phẩm', '2017-11-20 13:20:09', '2017-12-15 12:55:48', 1),
(9, 'abcxyz', 'a@gmail.com', '1234567890', 'n Lương Bằng, Liên Ch', '4/145 K82 Nguyễn Lương Bằng, Liên Chiểu, Đà Nằng\r\n- VP Hồ Chí Minh: Lầu 6 Tòa nhà Thịnh Phát - 178/8 Đường D1, Phường 25, Quận Bình Thạnh, TP Hồ Chí Minh\r\n- VP Hà Nội: Tầng 6, Tòa Nhà Viện Công Nghệ - 25 Vũ Ngọc Phan, Phường Láng Hạ, Quận Đống Đa, TP Hà Nội', '2017-12-06 18:06:44', '2017-12-15 12:55:44', 1),
(10, 'abc', 'hoa@gmail.com', '1234567890', 'test 12345', 'VP Hà Nội: Tầng 6, Tòa Nhà Viện Công Nghệ - 25 Vũ Ngọc Phan, Phường Láng Hạ, Quận Đống Đa, TP Hà Nội', '2017-12-09 17:55:00', '2017-12-15 12:30:31', 1),
(11, 'hoahong', 'hoangdung4420@gmail.com', '1234567890', '- VP Hà Nội: Tầng 6, Tòa Nhà Viện Công Nghệ - 25 Vũ', '- VP Hà Nội: Tầng 6, Tòa Nhà Viện Công Nghệ - 25 Vũ - VP Hà Nội: Tầng 6, Tòa Nhà Viện Công Nghệ - 25 Vũ', '2017-12-13 18:39:29', '2017-12-09 18:43:15', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payments`
--

CREATE TABLE `payments` (
  `id_payment` int(255) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `payments`
--

INSERT INTO `payments` (`id_payment`, `name`) VALUES
(1, 'Thanh toán khi nhận hàng'),
(2, 'paypal');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slides`
--

CREATE TABLE `slides` (
  `id_slide` int(255) NOT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slides`
--

INSERT INTO `slides` (`id_slide`, `picture`, `link`, `active`) VALUES
(1, 'iUaqeqjR4tsSCQUvTHCGpKYiGIAeMyVxi3Vhq0Qb.jpeg', '#', 1),
(2, '9sd2lzJfVrDQCG1iOhwyLCwmyrlviV2cUGgAENDD.jpeg', '#', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `status_bill`
--

CREATE TABLE `status_bill` (
  `id_status` int(255) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `status_bill`
--

INSERT INTO `status_bill` (`id_status`, `name`) VALUES
(1, 'Đang chờ'),
(2, 'Đã được gửi đi'),
(3, 'Hoàn tất'),
(4, 'Từ chối');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(255) NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fullname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(1) NOT NULL,
  `gender` int(1) NOT NULL,
  `phone` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `picture` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `active` int(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `fullname`, `level`, `gender`, `phone`, `address`, `picture`, `active`, `created_at`, `updated_at`) VALUES
(1, 'tramnhien2210@gmail.com', '$2y$10$WNqotDj3fvsfTAnHhj3dKOU/776OpbCIVndNhVbghjRaPpf8q231K', 'tramnhien2210@gmail.com', 1, 0, '1234567890', '45 hàng mã', 'o7sCqSBdjgbOZYmTGnqGbqjawLvG1SU7nrimFoVB.jpeg', 1, '2017-12-07 07:13:38', '2017-12-18 12:52:18'),
(2, 'mod@gmail.com', '$2y$10$fV7v94XjJMR2V2YV7i/NgOnjo//NQghh7q0FpSWaygKBYfD.qOlQ.', 'mod vip', 2, 0, '1234567890', 'k83, Trần Phú, Hải Châu, Đà Nẵng', 'fYXLEVIFzvK5nocIoakKOAKTZDdRWjuXAbmtshTQ.jpeg', 1, '2017-11-30 04:10:18', '2017-12-15 12:28:30'),
(3, 'hoangdung4420@gmail.com', '$2y$10$tWDL0CDOwriU3vyNQvaDE.PCX1wVdQA5nA9mUvfaEpAo7Q9nBSD2a', 'hoangdung4420@gmail.com', 3, 1, '0978767456', '52 Phố Hàng Bạc, Hà Nội, Việt Nam', 'k8VTESfkzvJxZ63s8GvMDG0QcMXGmMKdFzjJ52MZ.jpeg', 1, '2017-11-22 06:31:26', '2017-12-18 07:13:18');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id_about`);

--
-- Chỉ mục cho bảng `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id_bill`);

--
-- Chỉ mục cho bảng `bill_details`
--
ALTER TABLE `bill_details`
  ADD PRIMARY KEY (`id_bd`);

--
-- Chỉ mục cho bảng `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id_book`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id_cat`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id_comment`);

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id_contact`);

--
-- Chỉ mục cho bảng `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id_payment`);

--
-- Chỉ mục cho bảng `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id_slide`);

--
-- Chỉ mục cho bảng `status_bill`
--
ALTER TABLE `status_bill`
  ADD PRIMARY KEY (`id_status`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id_about` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `bills`
--
ALTER TABLE `bills`
  MODIFY `id_bill` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT cho bảng `bill_details`
--
ALTER TABLE `bill_details`
  MODIFY `id_bd` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT cho bảng `books`
--
ALTER TABLE `books`
  MODIFY `id_book` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id_cat` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id_comment` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id_contact` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `payments`
--
ALTER TABLE `payments`
  MODIFY `id_payment` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `slides`
--
ALTER TABLE `slides`
  MODIFY `id_slide` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `status_bill`
--
ALTER TABLE `status_bill`
  MODIFY `id_status` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
