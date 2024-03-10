<?php
    //Khởi động session
    session_start();

    //Kiểm tra nếu chưa đăng nhập thì quay về trang đăng nhập
    if (!isset($_SESSION['user'])) {
        header('location:../../admin/user/login.php');
    }

    //Require các tập tin cần thiết
    require '../../configs/config.php';
    require '../../libraries/connect.php';
    require '../../models/cart.php';
    require '../../models/cart-detail.php';
    $cart_id = $_GET['cart_id'];
    $product_id = $_GET['product_id'];

    if(delete_cart_detail_by_cart_id_and_product_id($cart_id, $product_id, $connect))
    {
        set_total_quantity_of_cart($cart_id,$connect);        
    }
    if(get_total_quantity_of_cart($cart_id, $connect)==0)
        header('location:../cart/list.php');
    else
        header('location:../cart/listOfChiNhanh.php?cart_id='.$cart_id);
?>