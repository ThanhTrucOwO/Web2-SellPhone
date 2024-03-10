<?php
    //Khởi động session
    session_start();

    //Lấy chinhanh_id từ URL
    $chinhanh_id = $_GET['chinhanh_id'];

    //Xóa
    $_SESSION['chinhanh_id'] = $chinhanh_id;

    //Quay về trang chủ
    header('location:../index.php');
?>