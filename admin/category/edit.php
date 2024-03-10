<?php
    session_start();
    //Kiểm tra nếu chưa đăng nhập thì quay về trang đăng nhập
    if (!isset($_SESSION['admin'])) {
        header('location:../login.php');
    }

    //Require các tập tin cần thiết
    require '../../configs/config.php';
    require '../../libraries/connect.php';
    require '../../models/category.php';
    require '../../models/chitietphanquyen.php';
    $maAdmin = $_SESSION['admin']['admin_id'];
    $maPhanQuyen = 5;
    if(!get_phanquyen_to_access_by_admin($maAdmin ,$maPhanQuyen ,$connect))
        header('location:../error/display.php');
    //Lấy category_id từ URL
    $category_id = $_GET['category_id'];

    //Nếu có post dữ liệu lên thì xử lý cập nhật
    if ($_POST) {
        //Nhận dữ liệu từ form và gán vào một mãng
        $data = array(
            'name' => $_POST['name'],
            'class_icon' => $_POST['class_icon'],
            'status' => isset($_POST['status']) ? 1 : 0,
            'modified' => date('Y-m-d')
        );

        //Cập nhật
        if (edit_category($data, $category_id, $connect))
        {
            header('location:list.php');
        }
    }

    //Lấy thông tin danh mục sản phẩm để trình bày trên form
    $category = get_category_by_id($category_id, $connect);

    //Require tập tin giao diện (View)
    require '../../views/admin/category/edit.tpl.php';
?>