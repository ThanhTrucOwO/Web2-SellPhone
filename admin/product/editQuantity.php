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
    require '../../models/category.php';
    require '../../models/product.php';
    require '../../models/chitietphanquyen.php';
    $maAdmin = $_SESSION['admin']['admin_id'];
    $maPhanQuyen = 3;
    if(!get_phanquyen_to_access_by_admin($maAdmin ,$maPhanQuyen ,$connect))
        header('location:../error/display.php');
    //Lấy product_id từ URL
    $product_id = $_GET['product_id'];

    //Nếu có post dữ liệu lên thì xử lý cập nhật
    if ($_POST) {
        $quantity = $_POST['quantity'];
        //Cập nhật
        if (edit_quantity_product_of_chinhanh_id($chinhanh_id,$quantity, $product_id, $connect)) {
            header('location:list.php');
        }
    }

    //Lấy thông tin sản phẩm để trình bày trên form
    $product = get_product_active_by_id($chinhanh_id, $product_id, $connect);
    $category_active_list = get_category_active_list($connect);

    //Require tập tin giao diện (View)
    require '../../views/admin/product/editQuantity.tpl.php';
?>