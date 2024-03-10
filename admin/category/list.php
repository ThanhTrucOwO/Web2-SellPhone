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
    require '../../models/category.php';
    require '../../models/chitietphanquyen.php';
    $maAdmin = $_SESSION['admin']['admin_id'];
    $maPhanQuyenXoaDanhMuc = 6;
    $xoaDanhMuc = get_phanquyen_to_access_by_admin($maAdmin ,$maPhanQuyenXoaDanhMuc ,$connect);
    $maPhanQuyenSuaDanhMuc = 5;
    $suaDanhMuc = get_phanquyen_to_access_by_admin($maAdmin ,$maPhanQuyenSuaDanhMuc ,$connect);
    //Lấy danh sách danh mục sản phẩm
    $category_list = get_category_list($connect);

    //Require tập tin giao diện (View)
    require '../../views/admin/category/list.tpl.php';
?>