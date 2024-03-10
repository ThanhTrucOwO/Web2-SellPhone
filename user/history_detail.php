<?php
    session_start();
    //Require các tập tin cần thiết
    if(!isset($_SESSION['user']))
        header('location:../admin/user/login.php');
    $chinhanh_id = 1;
    if(isset($_SESSION['chinhanh_id']))
        $chinhanh_id = $_SESSION['chinhanh_id'];
    require '../configs/config.php';
    require '../libraries/connect.php';
    require '../models/user.php';
    require '../models/chinhanh.php';
    require '../models/order.php';
    require '../models/category.php';
    require '../models/order_detail.php';
    $user_id = $_SESSION['user']['user_id'];
    $order_id = $_GET['order_id'];
    $total = get_total_order_by_order_id($order_id, $connect);
    $order_detail_list = get_order_detail_by_order_id($order_id, $connect);
    $chinhanh_active_list = get_chinhanh_list($connect);
    $category_list = get_category_active_list($connect);
    //Require tập tin giao diện (View)
    require '../views/front/user/history_detail.tpl.php';
?>