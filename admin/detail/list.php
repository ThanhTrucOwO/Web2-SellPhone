<?php
    //Khởi động session
    session_start();

    //Kiểm tra nếu chưa đăng nhập thì quay về trang đăng nhập
    if (!isset($_SESSION['admin'])) {
        header('location:../login.php');
    }
    $order_id = $_GET['order_id'];
    //Require các tập tin cần thiết
    require '../../configs/config.php';
    require '../../libraries/connect.php';
    require '../../models/detail.php';

    //Lấy danh sách danh mục sản phẩm
    $detail_list = get_detail_list_by_order_id($order_id, $connect);

    //Require tập tin giao diện (View)
    require '../../views/admin/detail/list.tpl.php';
?>