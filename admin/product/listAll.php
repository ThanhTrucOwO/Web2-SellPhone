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
    require '../../models/product.php';
    //Lấy danh sách sản phẩm
    $product_list = get_product_list($connect);

    //Require tập tin giao diện (View)
    require '../../views/admin/product/list.tpl.php';
?>