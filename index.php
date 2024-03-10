<?php
    session_start();
    //Require các tập tin cần thiết
    $chinhanh_id = 1;
    if(isset($_SESSION['chinhanh_id']))
        $chinhanh_id = $_SESSION['chinhanh_id'];
    require 'configs/config.php';
    require 'libraries/connect.php';
    require 'models/category.php';
    require 'models/chinhanh.php';
    require 'models/product.php';
    $hot_sale_list = get_five_product_hot_sale_by_chinhanh_id_and_category_id($chinhanh_id, $connect);
    $hot_phone_list = get_five_product_by_chinhanh_id_and_category_id($chinhanh_id, 1, $connect);
    $hot_laptop_list = get_five_product_by_chinhanh_id_and_category_id($chinhanh_id, 2, $connect);
    $hot_tablet_list = get_five_product_by_chinhanh_id_and_category_id($chinhanh_id, 3, $connect);
    $hot_tainghe_list = get_five_product_by_chinhanh_id_and_category_id($chinhanh_id, 4, $connect);
    $chinhanh_active_list = get_chinhanh_list($connect);
    $category_list = get_category_active_list($connect);
    //Require tập tin giao diện (View)
    require 'views/front/home/home.tpl.php';
?>