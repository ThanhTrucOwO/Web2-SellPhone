<?php
    //Khởi động session
    session_start();

    //Kiểm tra nếu chưa đăng nhập thì quay về trang đăng nhập
    if (!isset($_SESSION['admin'])) {
        header('location:../login.php');
    }

    //Require các tập tin cần thiết
    require '../../configs/config.php';
    require '../../libraries/connect.php';
    require '../../models/user.php';
    require '../../models/chitietphanquyen.php';
    require '../../models/khuyenmai.php';
    $maAdmin = $_SESSION['admin']['admin_id'];
    $maPhanQuyen = 20;
    if(!get_phanquyen_to_access_by_admin($maAdmin ,$maPhanQuyen ,$connect))
        header('location:../error/display.php');
    //Lấy user_id từ URL
    $khuyenmai_id = $_GET['khuyenmai_id'];

    //Xóa
    delete_khuyenmai_by_khuyenmai_id($khuyenmai_id, $connect);

    //Quay về trang danh sách người dùng
    header('location:list.php');
?>