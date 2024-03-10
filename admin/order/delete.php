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
    require '../../models/order.php';
    require '../../models/detail.php';
    $maAdmin = $_SESSION['admin']['admin_id'];
    $maPhanQuyen = 12;
    if(!get_phanquyen_to_access_by_admin($maAdmin ,$maPhanQuyen ,$connect))
        header('location:../error/display.php');
    //Lấy order_id từ URL
    $order_id = $_GET['order_id'];
    //Xóa
    delete_all_detail_by_order_id($order_id, $connect);
    delete_order_by_order_id($order_id, $connect);

    header('location:list.php');
?>