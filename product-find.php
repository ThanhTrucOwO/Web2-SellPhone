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
    $category_id = isset($_GET['category_id']) ? $_GET['category_id'] : null;
    $keyword_advanced = isset($_GET['keyword_advanced']) ? $_GET['keyword_advanced'] : "";
    $option = isset($_GET['drone']) ? $_GET['drone'] : "";
    $price_start = isset($_GET['price_start']) ? $_GET['price_start'] : "";
    $price_end = isset($_GET['price_end']) ? $_GET['price_end'] : "";
    $product_active_list = get_product_search_advanced($chinhanh_id, $keyword_advanced, $option, $price_start, $price_end, $category_id, $connect);
    $product_list = [];
    while($row = mysqli_fetch_assoc($product_active_list))
        $product_list[] = $row;
    $limit = 8;

    $current_page = isset($_GET['pagefind'])?$_GET['pagefind']:1;    
    $total_record = count($product_list);
    $total_page = ceil($total_record / $limit);
    $start = ($current_page - 1) * $limit;
    //Require tập tin giao diện (View)
    require 'views/front/product/find.tpl.php';
?>