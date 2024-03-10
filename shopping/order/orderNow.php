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
    require '../../models/order.php';
    require '../../models/category.php';
    require '../../models/detail.php';
    
    $user_id = $_SESSION['user']['user_id'];

    $cart_id = $_GET['cart_id'];
    $chinhanh_id = get_chinhanh_id_of_cart_id($cart_id, $connect);
    $state_id = 1;
    $address = $_POST['address'];
    $total = calculate_sum_cart_detail_by_cart_id($cart_id, $connect);
    $created = date('Y-m-d');
    //Thêm mới đơn hàng
    add_order($user_id, $state_id,$chinhanh_id, $address, $total, $created, $connect);
    $get_last_order = get_last_order($connect);
    $order_id = $get_last_order['order_id'];

    //Lấy danh sách sản phẩm trong giỏ hàng
    $cart_detail_list = get_cart_detail_list_by_cart_id($cart_id, $connect);
    //Thêm các chi tiết đơn hàng
    while ($cart_detail = mysqli_fetch_assoc($cart_detail_list))
    {
        $product_id = $cart_detail['product_id'];
        $name = $cart_detail['name'];
        $price = $cart_detail['price'];
        $quantity = $cart_detail['quantity'];
        $total = $cart_detail['total'];
        $image = $cart_detail['image'];
        add_detail($order_id, $product_id, $name, $price, $quantity , $total, $image,$connect);
        delete_cart_detail_by_cart_id_and_product_id($cart_id, $product_id, $connect);
        set_total_quantity_of_cart($cart_id,$connect);
    }
    $category_list = get_category_active_list($connect);
    //Require tập tin giao diện (View)
    header('location:../../user/history.php');
?>