<?php
    session_start();
    $chinhanh_id = 1;
    if(isset($_SESSION['chinhanh_id']))
        $chinhanh_id = $_SESSION['chinhanh_id'];
        
    //Require các tập tin cần thiết
    require 'configs/config.php';
    require 'libraries/connect.php';
    require 'models/category.php';
    require 'models/product.php';
    require 'models/search.php';
    require 'models/chinhanh.php';
    $chinhanh_active_list = get_chinhanh_list($connect);
    $category_active_list = get_category_active_list($connect);
    $category_list = get_category_active_list($connect);
    
    $limit = 8;
    $current_page = isset($_GET['page'])?$_GET['page']:1;
    //Lấy category_id từ URL
    $category_id = isset($_GET['category_id']) ? $_GET['category_id'] : null;
    $total_record = get_total_record_by_category_id($chinhanh_id, $category_id, $connect);
    $total_page = ceil($total_record / $limit);
    if ($current_page > $total_page && $total_page!=0){
        $current_page = $total_page;
    }
    else if ($current_page < 1){
        $current_page = 1;
    }
    $start = ($current_page - 1) * $limit;

    $product_active_list = get_product_active_list($chinhanh_id, $category_id,$start,$limit, $connect);

    $name = get_name_category($category_id, $connect);
    
    //Require tập tin giao diện (View)
    require 'views/front/product/list.tpl.php';
?>