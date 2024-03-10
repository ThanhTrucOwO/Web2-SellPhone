<?php
    //Khởi động session
    session_start();;
    //Kiểm tra nếu chưa đăng nhập thì quay về trang đăng nhập
    if (!isset($_SESSION['admin'])) {
        header('location:../login.php');
    }

    //Require các tập tin cần thiết
    require '../../configs/config.php';
    require '../../libraries/connect.php';
    require '../../models/category.php';
    require '../../models/chitietphanquyen.php';
    require '../../models/admin.php';
    $maAdmin = $_SESSION['admin']['admin_id'];
    $maPhanQuyen = 16;
    if(!get_phanquyen_to_access_by_admin($maAdmin ,$maPhanQuyen ,$connect))
        header('location:../error/display.php');
    //Lấy admin_id từ URL
    $admin_id = $_GET['admin_id'];
    //Xóa
    delete_admin($admin_id, $connect);

    //Quay về trang danh sách danh mục sản phẩm
    header('location:list.php');
?>