<?php
    session_start();
    //Require các tập tin cần thiết
    $chinhanh_id = 1;
    if(isset($_SESSION['chinhanh_id']))
        $chinhanh_id = $_SESSION['chinhanh_id'];
    require 'configs/config.php';
    require 'libraries/connect.php';
    require 'models/category.php';
    require 'models/product.php';
    require 'models/cart.php';
    require 'models/chinhanh.php';
    require 'models/cart-detail.php';

    //Lấy product_id từ URL
    $product_id = $_GET['product_id'];
    //Lấy thông tin sản phẩm
    $product_active = get_product_active_by_id($chinhanh_id,$product_id, $connect);

    $category_active_list = get_category_active_list($connect);
    $chinhanh_active_list = get_chinhanh_list($connect);
    $category_list = get_category_active_list($connect);
    //Require tập tin giao diện (View)
    require 'views/front/product/detail.tpl.php';
?>