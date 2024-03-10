<?php
    //Khởi động session
    session_start();

    //Kiểm tra nếu chưa đăng nhập thì quay về trang đăng nhập
    if (!isset($_SESSION['user'])) {
        header('location:../../admin/user/login.php');
    }
    $chinhanh_id = 1;
    if(isset($_SESSION['chinhanh_id']))
        $chinhanh_id = $_SESSION['chinhanh_id'];
    //Require các tập tin cần thiết
    require '../../configs/config.php';
    require '../../libraries/connect.php';
    require '../../models/category.php';
    require '../../models/cart.php';
    require '../../models/product.php';
    require '../../models/chinhanh.php';
    require '../../models/cart-detail.php';
    $category_active_list = get_category_active_list($connect);
    $chinhanh_active_list = get_chinhanh_list($connect);
    
    $cart_id = $_GET['cart_id'];
    $cart_detail_list = get_cart_detail_list_by_cart_id($cart_id, $connect);
    if(isset($_POST['saveNow'])){
        while ($cart_detail = mysqli_fetch_assoc($cart_detail_list)){
            $soLuong = $_POST['quantity_'.$cart_detail['product_id']];
            set_quantity_cart_detail_by_cart_id_and_product_id($cart_detail['cart_id'], $cart_detail['product_id'], $soLuong, $connect);
        }
        set_total_quantity_of_cart($cart_id,$connect);
        $cart_detail_list = get_cart_detail_list_by_cart_id($cart_id, $connect);
    }
    $tongtien = calculate_sum_cart_detail_by_cart_id($cart_id, $connect);
    $category_list = get_category_active_list($connect);
    //Require tập tin giao diện (View)
    require '../../views/front/cart/listOfChiNhanh.tpl.php';
?>