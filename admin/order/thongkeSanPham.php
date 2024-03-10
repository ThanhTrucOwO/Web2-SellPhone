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
    require '../../models/order.php';
    require '../../models/chitietphanquyen.php';
    require '../../models/detail.php';
    $chinhanh_id = $_SESSION['admin']['chinhanh_id'];
    $maAdmin = $_SESSION['admin']['admin_id'];
    $maPhanQuyen = 18;
    if(!get_phanquyen_to_access_by_admin($maAdmin ,$maPhanQuyen ,$connect))
        header('location:../error/display.php');
    if($_GET)
        $statistic_sanPham = get_statistic_sanPham($chinhanh_id,$_GET['product_id'],$connect);

    //Require tập tin giao diện (View)
    require '../../views/admin/order/thongkeSanPham.tpl.php';
?>