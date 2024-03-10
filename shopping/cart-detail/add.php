<?php
    session_start();
    if (!isset($_SESSION['user'])) {
        header('location:../../admin/user/login.php');
    }
    $chinhanh_id = 1;
    if(isset($_SESSION['chinhanh_id']))
        $chinhanh_id = $_SESSION['chinhanh_id'];
    //Require các tập tin cần thiết
    require '../../configs/config.php';
    require '../../libraries/connect.php';
    require '../../models/product.php';
    require '../../models/cart.php';
    require '../../models/cart-detail.php';
    require '../../models/chinhanh.php';
    
    $product_id = $_GET['product_id'];
    $product_active = get_product_active_by_id($chinhanh_id,$product_id, $connect);
    if($_POST){
        //Lấy mã giỏ hàng của người dùng ở chi nhánh hiện tại
        $user_id = $_SESSION['user']['user_id'];
        $get_cart_id = get_cart_id_by_user_id_and_chinhanh_id($user_id, $chinhanh_id, $connect);
        $cart_id = $get_cart_id['cart_id'];
        //Kiểm tra đã có trong giỏ hàng chưa, nếu có thì không thêm nữa
        $get_cart_detail = get_cart_detail_by_cart_id_and_product_id($cart_id, $product_id, $connect);
        $cart_detail = mysqli_fetch_assoc($get_cart_detail);
        if(isset($cart_detail))
        {
            $_SESSION['success'] = false;
            header('location:../../product-detail.php?product_id=' .$product_id);
        }
        //Lấy dữ liệu để thêm vào cơ sở dữ liệu
        $name = $product_active['name'];
        $price = $product_active['price_sale'];
        $quantity = $_POST['quantity'];
        $total = $price * $quantity;
        $image = $product_active['image'];
        if(add_cart_detail($cart_id, $product_id, $name, $price, $quantity, $total, $image, $connect))
        {
            set_total_quantity_of_cart($cart_id,$connect);
            $_SESSION['success'] = true;
            header('location:../../product-detail.php?product_id=' .$product_id);
        }
    }
    header('location:../../product-detail.php?product_id=' .$product_id);
?>