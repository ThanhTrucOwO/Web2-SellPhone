<?php
    //Khởi động session
    session_start();

    //Kiểm tra nếu chưa đăng nhập thì quay về trang đăng nhập
    if (!isset($_SESSION['admin'])) {
        header('location:../login.php');
    }

    //Require các tập tin cần thiết
    require '../../configs/config.php';
    require '../../libraries/connect.php';
    require '../../models/category.php';
    require '../../models/product.php';
    require '../../models/chitietphanquyen.php';
    $maAdmin = $_SESSION['admin']['admin_id'];
    $maPhanQuyen = 19;
    if(!get_phanquyen_to_access_by_admin($maAdmin ,$maPhanQuyen ,$connect))
        header('location:../error/display.php');
    //Lấy product_id từ URL
    $product_id = $_GET['product_id'];

    //Nếu có post dữ liệu lên thì xử lý cập nhật
    if ($_POST) {
        //Tải hình ảnh lên máy chủ (Upload)
        if (($image = $_FILES['image']['name']) != null) {
            move_uploaded_file($_FILES['image']['tmp_name'], 'userfiles/' . $image);
        } else {
            $image = null;
        }

        //Nhận dữ liệu từ form và gán vào một mãng
        $data = array(
            'category_id' => $_POST['category_id'],
            'name' => $_POST['name'],
            'detail' => $_POST['detail'],
            'image' => $image,
            'price' => $_POST['price'],
            'status' => isset($_POST['status']) ? 1 : 0,
            'modified' => date('Y-m-d H:i:s')
        );

        //Cập nhật
        if (edit_product($data, $product_id, $connect)) {
            //Tải lại trang (Mục đích là để tải lại thông tin mới)
            header('location:listAll.php');
        }
    }

    //Lấy thông tin sản phẩm để trình bày trên form
    $product = get_product_by_id($product_id, $connect);

    //Lấy danh sách danh mục sản phẩm có trạng thái kích hoạt (Status = 1)
    $category_active_list = get_category_active_list($connect);

    //Require tập tin giao diện (View)
    require '../../views/admin/product/editInformation.tpl.php';
?>