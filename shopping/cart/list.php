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

    $user_id = $_SESSION['user']['user_id'];
    $cart_list = get_cart_list_by_user_id($user_id, $connect);
    $category_list = get_category_active_list($connect);
    //Require tập tin giao diện (View)
    require '../../views/front/cart/list.tpl.php';
?>