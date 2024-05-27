-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 27, 2024 lúc 04:03 AM
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
-- Cấu trúc bảng cho bảng `chitietloainguoidung_thoidiem`
--

CREATE TABLE `chitietloainguoidung_thoidiem` (
  `ctlnd_td_ma` int(11) NOT NULL,
  `lnd_ma` int(11) DEFAULT NULL,
  `td_ma` int(11) DEFAULT NULL,
  `ctlnd_td_gia` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietloainguoidung_thoidiem`
--

INSERT INTO `chitietloainguoidung_thoidiem` (`ctlnd_td_ma`, `lnd_ma`, `td_ma`, `ctlnd_td_gia`) VALUES
(1, 1, 5, 40000),
(2, 2, 5, 28000),
(3, 3, 5, 30000),
(4, 4, 5, 150000),
(5, 5, 5, 100000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietnhanvien`
--

CREATE TABLE `chitietnhanvien` (
  `nv_role` int(50) NOT NULL,
  `nv_ten` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietnhanvien`
--

INSERT INTO `chitietnhanvien` (`nv_role`, `nv_ten`) VALUES
(0, 'Admin'),
(1, 'Nhân Viên');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `hd_ma` int(11) NOT NULL,
  `nd_ma` varchar(11) DEFAULT NULL,
  `nv_ma` varchar(11) DEFAULT NULL,
  `hd_soluong` int(11) DEFAULT NULL,
  `hd_tongtien` int(11) DEFAULT NULL,
  `hd_ngaylap` date DEFAULT NULL,
  `hd_ngaythu` date DEFAULT NULL,
  `hd_trangthai` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`hd_ma`, `nd_ma`, `nv_ma`, `hd_soluong`, `hd_tongtien`, `hd_ngaylap`, `hd_ngaythu`, `hd_trangthai`) VALUES
(1, 'ND024000001', 'NV024000001', 40, 1000000, '2024-05-01', NULL, 'Chưa Đóng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `huyen`
--

CREATE TABLE `huyen` (
  `h_ma` int(11) NOT NULL,
  `h_ten` varchar(255) NOT NULL,
  `t_ma` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `huyen`
--

INSERT INTO `huyen` (`h_ma`, `h_ten`, `t_ma`) VALUES
(1, 'HUYỆN GÒ CÔNG ĐÔNG', 1),
(2, 'HUYỆN GÒ CÔNG TÂY', 1),
(3, 'HUYỆN CHỢ GẠO', 1),
(4, 'HUYỆN CHÂU THÀNH', 1),
(5, 'HUYỆN TÂN PHƯỚC', 1),
(6, 'HUYỆN CAI LẬY', 1),
(7, 'HUYỆN CÁI BÈ', 1),
(8, 'HUYỆN TÂN PHÚ ĐÔNG', 1),
(9, 'THÀNH PHỐ MỸ THO', 1),
(10, 'THỊ XÃ GÒ CÔNG', 1),
(11, 'THỊ XÃ CAI LẬY', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loainguoidung`
--

CREATE TABLE `loainguoidung` (
  `lnd_ma` int(11) NOT NULL,
  `lnd_ten` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `loainguoidung`
--

INSERT INTO `loainguoidung` (`lnd_ma`, `lnd_ten`) VALUES
(1, 'Hộ kinh doanh'),
(2, 'Hộ không kinh doanh'),
(3, 'Nhà Trọ'),
(4, 'Doanh nghiệp nhỏ'),
(5, 'Doanh nghiệp lớn');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoidung`
--

CREATE TABLE `nguoidung` (
  `nd_ma` varchar(11) NOT NULL,
  `nd_ten` varchar(255) NOT NULL,
  `nd_sdt` varchar(20) DEFAULT NULL,
  `nd_diachi` varchar(255) DEFAULT NULL,
  `lnd_ma` int(11) DEFAULT NULL,
  `tdg_ma` int(11) DEFAULT NULL,
  `nd_trangthai` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `nguoidung`
--

INSERT INTO `nguoidung` (`nd_ma`, `nd_ten`, `nd_sdt`, `nd_diachi`, `lnd_ma`, `tdg_ma`, `nd_trangthai`) VALUES
('ND024000001', 'Nhà Trọ Hải Vy', '0123456789', 'Số 39/2, Đường Trần Nguyên Hãn, xã An Cư, HUYỆN CÁI BÈ, Tiềng Giang', 3, 72, 0),
('ND024000002', 'minh', '05441986498498', 'h3lehongphong', 5, 14, 0),
('ND024000003', 'minh duc', '0949405622', 'h3 lê hồng phong', 1, 18, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

CREATE TABLE `nhanvien` (
  `nv_ma` varchar(11) NOT NULL,
  `nv_ten` varchar(255) NOT NULL,
  `nv_diachi` varchar(255) DEFAULT NULL,
  `nv_sdt` varchar(20) DEFAULT NULL,
  `nv_matkhau` varchar(255) DEFAULT NULL,
  `nv_role` int(50) DEFAULT NULL,
  `nv_trangthai` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `nhanvien`
--

INSERT INTO `nhanvien` (`nv_ma`, `nv_ten`, `nv_diachi`, `nv_sdt`, `nv_matkhau`, `nv_role`, `nv_trangthai`) VALUES
('NV024000001', 'Nguyễn Quốc Vĩnh', 'Số 318/2 CMT8, P3, TP.Cao Lãnh, Đồng Tháp', '0898020991', 'e10adc3949ba59abbe56e057f20f883e', 1, 1),
('NV024000002', 'minh', 'h12', '0949405622', 'e10adc3949ba59abbe56e057f20f883e', 1, 0),
('NV024000003', 'minh ', 'h3 lê hồng phong', '0949405622', 'e10adc3949ba59abbe56e057f20f883e', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phancongcongviec`
--

CREATE TABLE `phancongcongviec` (
  `pccv_ma` int(11) NOT NULL,
  `nv_ma` varchar(11) DEFAULT NULL,
  `tdg_ma` int(11) DEFAULT NULL,
  `pccv_ngaybatdau` date DEFAULT NULL,
  `pccv_ngayketthuc` date DEFAULT NULL,
  `pccv_trangthai` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `phancongcongviec`
--

INSERT INTO `phancongcongviec` (`pccv_ma`, `nv_ma`, `tdg_ma`, `pccv_ngaybatdau`, `pccv_ngayketthuc`, `pccv_trangthai`) VALUES
(1, 'NV024000001', 72, '2024-05-01', '2024-05-25', 'Sẵn Sàng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thoidiem`
--

CREATE TABLE `thoidiem` (
  `td_ma` int(11) NOT NULL,
  `td_ten` varchar(255) NOT NULL,
  `td_ngaybatdau` date DEFAULT NULL,
  `td_ngayketthuc` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `thoidiem`
--

INSERT INTO `thoidiem` (`td_ma`, `td_ten`, `td_ngaybatdau`, `td_ngayketthuc`) VALUES
(1, 'Tháng 1/2024', '2024-01-01', '2024-01-31'),
(2, 'Tháng 2/2024', '2024-02-01', '2024-02-29'),
(3, 'Tháng 3/2024', '2024-03-01', '2024-03-31'),
(4, 'Tháng 4/2024', '2024-04-01', '2024-04-30'),
(5, 'Tháng 5/2024', '2024-05-01', '2024-05-31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tinh`
--

CREATE TABLE `tinh` (
  `t_ma` int(11) NOT NULL,
  `t_ten` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tinh`
--

INSERT INTO `tinh` (`t_ma`, `t_ten`) VALUES
(1, 'Tiền Giang');

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

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `xa`
--

CREATE TABLE `xa` (
  `x_ma` int(11) NOT NULL,
  `x_ten` varchar(255) NOT NULL,
  `h_ma` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `xa`
--

INSERT INTO `xa` (`x_ma`, `x_ten`, `h_ma`) VALUES
(1, 'xã Tân Phước', 1),
(2, 'thị trấn Tân Hòa', 1),
(3, 'xã Phước Trung', 1),
(4, 'xã Bình Nghị', 1),
(5, 'xã Bình Ân', 1),
(6, 'xã Tăng Hòa', 1),
(7, 'xã Gia Thuận', 1),
(8, 'xã Tân Thành', 1),
(9, 'xã Kiểng Phước', 1),
(10, 'thị trấn Vàm Láng', 1),
(11, 'xã Bình Tân', 2),
(12, 'xã Long Vĩnh', 2),
(13, 'xã Thạnh Nhựt', 2),
(14, 'thị trấn Vĩnh Bình', 2),
(15, 'xã Vĩnh Hựu', 2),
(16, 'xã Thành Công', 2),
(17, 'xã Đồng Thạnh', 2),
(18, 'xã Bình Phú', 2),
(19, 'xã Yên Luông', 2),
(20, 'xã Thạnh Trị', 2),
(21, 'xã Long Bình', 2),
(22, 'xã Bình Nhì', 2),
(23, 'xã Đồng Sơn', 2),
(24, 'xã An Thạnh Thủy', 3),
(25, 'xã Bình Phục Nhứt', 3),
(26, 'thị trấn Chợ Gạo', 3),
(27, 'xã Hòa Định', 3),
(28, 'xã Bình Ninh', 3),
(29, 'xã Xuân Đông', 3),
(30, 'xã Song Bình', 3),
(31, 'xã Long Bình Điền', 3),
(32, 'xã Quơn Long', 3),
(33, 'xã Tân Thuận Bình', 3),
(34, 'xã Đăng Hưng Phước', 3),
(35, 'xã Thanh Bình', 3),
(36, 'xã Lương Hòa Lạc', 3),
(37, 'xã Phú Kiết', 3),
(38, 'xã Mỹ Tịnh An', 3),
(39, 'xã Tân Bình Thạnh', 3),
(40, 'xã Trung Hòa', 3),
(41, 'xã Hòa Tịnh', 3),
(42, 'xã Tân Hương', 4),
(43, 'xã Tân Hội Đông', 4),
(44, 'thị trấn Tân Hiệp', 4),
(45, 'xã Thân Cửu Nghĩa', 4),
(46, 'xã Long Hưng', 4),
(47, 'xã Thạnh Phú - Bình Đức', 4),
(48, 'xã Bàn Long', 4),
(49, 'xã Dưỡng Điềm', 4),
(50, 'xã Bình Trưng', 4),
(51, 'xã Tân Lý Đông', 4),
(52, 'xã Long Định', 4),
(53, 'xã Điềm Hy', 4),
(54, 'xã Tam Hiệp', 4),
(55, 'xã Tân Hòa Đông', 5),
(56, 'xã Thạnh Hòa', 5),
(57, 'xã Hưng Thạnh', 5),
(58, 'xã Tân Hòa Tây', 5),
(59, 'xã Tân Lập 2', 5),
(60, 'xã Phước Lập', 5),
(61, 'xã Tân Lập 1', 5),
(62, 'xã Phú Mỹ', 5),
(63, 'xã Thạnh Tân', 5),
(64, 'thị trấn Mỹ Phước', 5),
(65, 'xã Tân Hòa Thành', 5);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitietloainguoidung_thoidiem`
--
ALTER TABLE `chitietloainguoidung_thoidiem`
  ADD PRIMARY KEY (`ctlnd_td_ma`),
  ADD KEY `lnd_ma` (`lnd_ma`),
  ADD KEY `td_ma` (`td_ma`);

--
-- Chỉ mục cho bảng `chitietnhanvien`
--
ALTER TABLE `chitietnhanvien`
  ADD PRIMARY KEY (`nv_role`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`hd_ma`),
  ADD KEY `nd_ma` (`nd_ma`),
  ADD KEY `nv_ma` (`nv_ma`);

--
-- Chỉ mục cho bảng `huyen`
--
ALTER TABLE `huyen`
  ADD PRIMARY KEY (`h_ma`),
  ADD KEY `t_ma` (`t_ma`);

--
-- Chỉ mục cho bảng `loainguoidung`
--
ALTER TABLE `loainguoidung`
  ADD PRIMARY KEY (`lnd_ma`);

--
-- Chỉ mục cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`nd_ma`),
  ADD KEY `lnd_ma` (`lnd_ma`),
  ADD KEY `tdg_ma` (`tdg_ma`);

--
-- Chỉ mục cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`nv_ma`),
  ADD KEY `nv_role` (`nv_role`);

--
-- Chỉ mục cho bảng `phancongcongviec`
--
ALTER TABLE `phancongcongviec`
  ADD PRIMARY KEY (`pccv_ma`),
  ADD KEY `nv_ma` (`nv_ma`),
  ADD KEY `tdg_ma` (`tdg_ma`);

--
-- Chỉ mục cho bảng `thoidiem`
--
ALTER TABLE `thoidiem`
  ADD PRIMARY KEY (`td_ma`);

--
-- Chỉ mục cho bảng `tinh`
--
ALTER TABLE `tinh`
  ADD PRIMARY KEY (`t_ma`);

--
-- Chỉ mục cho bảng `tuyenduong`
--
ALTER TABLE `tuyenduong`
  ADD PRIMARY KEY (`tdg_ma`);

--
-- Chỉ mục cho bảng `xa`
--
ALTER TABLE `xa`
  ADD PRIMARY KEY (`x_ma`),
  ADD KEY `h_ma` (`h_ma`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chitietloainguoidung_thoidiem`
--
ALTER TABLE `chitietloainguoidung_thoidiem`
  MODIFY `ctlnd_td_ma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `hd_ma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `huyen`
--
ALTER TABLE `huyen`
  MODIFY `h_ma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `loainguoidung`
--
ALTER TABLE `loainguoidung`
  MODIFY `lnd_ma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `phancongcongviec`
--
ALTER TABLE `phancongcongviec`
  MODIFY `pccv_ma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `thoidiem`
--
ALTER TABLE `thoidiem`
  MODIFY `td_ma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tinh`
--
ALTER TABLE `tinh`
  MODIFY `t_ma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tuyenduong`
--
ALTER TABLE `tuyenduong`
  MODIFY `tdg_ma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT cho bảng `xa`
--
ALTER TABLE `xa`
  MODIFY `x_ma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitietloainguoidung_thoidiem`
--
ALTER TABLE `chitietloainguoidung_thoidiem`
  ADD CONSTRAINT `chitietloainguoidung_thoidiem_ibfk_1` FOREIGN KEY (`lnd_ma`) REFERENCES `loainguoidung` (`lnd_ma`),
  ADD CONSTRAINT `chitietloainguoidung_thoidiem_ibfk_2` FOREIGN KEY (`td_ma`) REFERENCES `thoidiem` (`td_ma`);

--
-- Các ràng buộc cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`nd_ma`) REFERENCES `nguoidung` (`nd_ma`),
  ADD CONSTRAINT `hoadon_ibfk_2` FOREIGN KEY (`nv_ma`) REFERENCES `nhanvien` (`nv_ma`);

--
-- Các ràng buộc cho bảng `huyen`
--
ALTER TABLE `huyen`
  ADD CONSTRAINT `huyen_ibfk_1` FOREIGN KEY (`t_ma`) REFERENCES `tinh` (`t_ma`);

--
-- Các ràng buộc cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD CONSTRAINT `nguoidung_ibfk_1` FOREIGN KEY (`lnd_ma`) REFERENCES `loainguoidung` (`lnd_ma`),
  ADD CONSTRAINT `nguoidung_ibfk_2` FOREIGN KEY (`tdg_ma`) REFERENCES `tuyenduong` (`tdg_ma`);

--
-- Các ràng buộc cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD CONSTRAINT `nhanvien_ibfk_1` FOREIGN KEY (`nv_role`) REFERENCES `chitietnhanvien` (`nv_role`);

--
-- Các ràng buộc cho bảng `phancongcongviec`
--
ALTER TABLE `phancongcongviec`
  ADD CONSTRAINT `phancongcongviec_ibfk_1` FOREIGN KEY (`nv_ma`) REFERENCES `nhanvien` (`nv_ma`),
  ADD CONSTRAINT `phancongcongviec_ibfk_2` FOREIGN KEY (`tdg_ma`) REFERENCES `tuyenduong` (`tdg_ma`);

--
-- Các ràng buộc cho bảng `xa`
--
ALTER TABLE `xa`
  ADD CONSTRAINT `xa_ibfk_1` FOREIGN KEY (`h_ma`) REFERENCES `huyen` (`h_ma`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
