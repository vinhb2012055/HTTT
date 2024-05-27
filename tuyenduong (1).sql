-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 27, 2024 lúc 03:57 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `httt`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tuyenduong`
--

CREATE TABLE `tuyenduong` (
  `tdg_ma` int(11) NOT NULL,
  `tdg_ten` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tuyenduong`
--

INSERT INTO `tuyenduong` (`tdg_ma`, `tdg_ten`) VALUES
(1, 'Đường liên xã Tân Phước - Tân Trung'),
(2, 'Đường huyện 02'),
(3, 'Đường Thanh Nhung - xã Phước Trung'),
(4, 'Đường huyện 04'),
(5, 'Đường huyện 05'),
(6, 'Đường liên xã Hiệp Trị - Xóm Mới - Bà Lẫy 2'),
(7, 'Đường huyện 06'),
(8, 'Đường liên xã Tân Thành - Tân Điền - Kiểng Phước'),
(9, 'Đường đê cửa sông Gò Công 1'),
(10, 'Đường đê cửa sông Gò Công 1 - đê tả sông Cửa Tiểu'),
(11, 'Đường đê tả sông Cửa Tiểu'),
(12, 'Đường đê cửa sông Gò Công 1'),
(13, 'Đường huyện 11'),
(14, 'Đường đê Hòa Thạnh'),
(15, 'Đường huyện 12'),
(16, 'Đường huyện 12B'),
(17, 'Đường Nam đê Xuân Hòa - Cầu Ngang'),
(18, 'Đường huyện 13'),
(19, 'Đường trung tâm xã Bình Phú'),
(20, 'Đường huyện 15'),
(21, 'Đường Ao Dương'),
(22, 'Đường huyện 16'),
(23, 'Đường Lộ Đình (liên xã Thạnh Trị - Thành Công)'),
(24, 'Đường liên xã Vĩnh Hựu'),
(25, 'Đường huyện 18'),
(26, 'Đường huyện Lợi An'),
(27, 'Đường đê tả sông Cửa Tiểu'),
(28, 'Đường trục xã Bình Nhì'),
(29, 'Đường huyện 21'),
(30, 'Đường Bình Phan'),
(31, 'Đường Hòa Định'),
(32, 'Đường Hòa Định - Bình Ninh'),
(33, 'Đường đê Sông Tiền'),
(34, 'Đường Hòa Định - Xuân Đông'),
(35, 'Đường Lộ Xoài'),
(36, 'Đường huyện 24C'),
(37, 'Đường Tây (Bắc) kênh Chợ Gạo'),
(38, 'Đường Óc Eo'),
(39, 'Đường huyện 26 tháng 3'),
(40, 'Đường Cả Quới (Lộ Đất)'),
(41, 'Đường Ba Cà - Đê Quơn Long (Đê Rạch Tràm - Ninh Đồng) - Đường .Long Hiệp'),
(42, 'Đường số 6'),
(43, 'Đường số 7'),
(44, 'Đường Lộ Làng'),
(45, 'Đường 8 tháng 3'),
(46, 'Đường Kênh Ngang'),
(47, 'Đường huyện 28'),
(48, 'Đường Kênh Nhỏ'),
(49, 'Đường Miễu Điền'),
(50, 'Đường Thạnh Hòa'),
(51, 'Đường Trung Thạnh'),
(52, 'Đường Lộ Mới'),
(53, 'Đường huyện 31'),
(54, 'Đường Thân Cửu Nghĩa'),
(55, 'Đường Long Hưng'),
(56, 'Đường Thạnh Phú - Bàn Long'),
(57, 'Đường Dưỡng Điềm - Bình Trưng'),
(58, 'Đường Kênh Quản Thọ - Kênh Phủ Chung'),
(59, 'Đường Kênh Kháng Chiến'),
(60, 'Đường vào Khu nông nghiệp ứng dụng công nghệ cao'),
(61, 'Đường gom (bên trái tuyến) cao tốc TPHCM - Trung Lương'),
(62, 'Đường Bắc Đông'),
(63, 'Đường Nam Tràm Mù'),
(64, 'Đường Nam Trương Văn Sanh'),
(65, 'Đường Kênh 3'),
(66, 'Đường Tây Kênh Năng'),
(67, 'Đường Chín Hấn'),
(68, 'Đường Láng Cát'),
(69, 'Đường Tây Kênh Tây'),
(70, 'Đường Thanh Niên'),
(71, 'Đường Lộ Đất'),
(72, 'Đường Trần Nguyên Hãn');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tuyenduong`
--
ALTER TABLE `tuyenduong`
  ADD PRIMARY KEY (`tdg_ma`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tuyenduong`
--
ALTER TABLE `tuyenduong`
  MODIFY `tdg_ma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
