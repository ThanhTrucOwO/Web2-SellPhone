<?php
    //Khởi động session
    session_start();

    //Kiểm tra nếu chưa đăng nhập thì quay về trang đăng nhập
    if (!isset($_SESSION['admin'])) {
        header('location:../login.php');
    }
    $chinhanh_id = $_SESSION['admin']['chinhanh_id'];
    //Require các tập tin cần thiết
    require '../../configs/config.php';
    require '../../libraries/connect.php';
    require '../../models/product.php';
    require '../../models/chinhanh.php';
    //Lấy danh sách sản phẩm
    $product_list = get_product_list_by_chinhanh_id($chinhanh_id,$connect);
    $tenchinhanh = get_tenchinhanh_by_chinhanh_id($chinhanh_id, $connect);
    //Require tập tin giao diện (View)
    require '../../views/admin/product/listByChiNhanh.tpl.php';
?>