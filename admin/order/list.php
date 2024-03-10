<?php
    //Khởi động session
    session_start();

    //Kiểm tra nếu chưa đăng nhập thì quay về trang đăng nhập
    if (!isset($_SESSION['admin'])) {
        header('location:../login.php');
    }
    $chinhanh_id = $_SESSION['admin']['chinhanh_id'];
    //Require các tập tin cần thiết
    require '../../configs/config.php';
    require '../../libraries/connect.php';
    require '../../models/order.php';
    require '../../models/chitietphanquyen.php';
    require '../../models/chinhanh.php';
    $maAdmin = $_SESSION['admin']['admin_id'];
    $chinhanh_id = $_SESSION['admin']['chinhanh_id'];
    $maPhanQuyen = 11;
    if(!get_phanquyen_to_access_by_admin($maAdmin ,$maPhanQuyen ,$connect))
        header('location:../error/display.php');
    $order_list = get_order_list_of_chinhanh($chinhanh_id,$connect);
    $tenchinhanh = get_tenchinhanh_by_chinhanh_id($chinhanh_id, $connect);
    //Require tập tin giao diện (View)
    require '../../views/admin/order/list.tpl.php';
?>