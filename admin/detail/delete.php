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
    require '../../models/detail.php';
    require '../../models/order.php';

    //Lấy category_id từ URL
    $order_id = $_GET['order_id'];
    $product_id = $_GET['product_id'];
 
    //Xóa
    delete_detail($order_id, $product_id, $connect);
    set_total_by_order_id($order_id,$connect);
    //Quay về trang danh sách danh mục sản phẩm
    header('location:'.SITE_URL.'doan/admin/detail/list.php?order_id='.$order_id);
?>