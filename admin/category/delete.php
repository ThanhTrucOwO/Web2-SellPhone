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
    $maAdmin = $_SESSION['admin']['admin_id'];
    $maPhanQuyen = 6;
    if(!get_phanquyen_to_access_by_admin($maAdmin ,$maPhanQuyen ,$connect))
        header('location:../error/display.php');
    //Lấy category_id từ URL
    $category_id = $_GET['category_id'];
    //Xóa
    delete_category($category_id, $connect);

    //Quay về trang danh sách danh mục sản phẩm
    header('location:list.php');
?>