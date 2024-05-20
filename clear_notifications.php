<?php
session_start();
$_SESSION['thong_bao'] = []; // Xóa thông báo
echo json_encode(['success' => true]);
?>
