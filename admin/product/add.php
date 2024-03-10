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
    require '../../models/chinhanh.php';
    require '../../models/chitietphanquyen.php';
    $maAdmin = $_SESSION['admin']['admin_id'];
    $maPhanQuyen = 1;
    if(!get_phanquyen_to_access_by_admin($maAdmin ,$maPhanQuyen ,$connect))
        header('location:../error/display.php');
    //Nếu có post dữ liệu lên thì xử lý
    if ($_POST) {
        //Tải hình ảnh lên máy chủ (Upload)
        if (($image = $_FILES['image']['name']) != null) {
            move_uploaded_file($_FILES['image']['tmp_name'], 'userfiles/' . $image);
        } else {
            $image = '';
        }
        
        //Nhận dữ liệu từ form và gán vào một mãng
        $data = array(
            'category_id' => $_POST['category_id'],
            'name' => $_POST['name'],
            'detail' => $_POST['detail'],
            'image' => $image,
            'price' => $_POST['price'],
            'status' => isset($_POST['status']) ? 1 : 0,
            'created' => date('Y-m-d'),
            'modified' => date('Y-m-d')
        );

        //Thêm mới
        if (add_product($data, $connect)) {
            $product_id = get_lastest_product($connect);
            add_chitietsanpham($product_id, $connect);
            header('location:list.php');
        }
    }

    //Lấy danh sách danh mục sản phẩm có trạng thái kích hoạt (Status = 1)
    $category_active_list = get_category_active_list($connect);

    //Require tập tin giao diện (View)
    require '../../views/admin/product/add.tpl.php';
?>