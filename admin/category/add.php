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
    require '../../models/chitietphanquyen.php';
    $maAdmin = $_SESSION['admin']['admin_id'];
    $maPhanQuyen = 4;
    if(!get_phanquyen_to_access_by_admin($maAdmin ,$maPhanQuyen ,$connect))
        header('location:../error/display.php');
    //Nếu có post dữ liệu lên thì xử lý
    if ($_POST) {
        //Nhận dữ liệu từ form và gán vào một mãng
        $data = array(
            'name' => $_POST['name'],
            'class_icon' => $_POST['class_icon'],
            'status' => isset($_POST['status']) ? 1 : 0,
            'created' => date('Y-m-d'),
            'modified' => date('Y-m-d')
        );

        if (add_category($data, $connect)) {
            header('location:list.php');
        }
    }

    //Require tập tin giao diện (View)
    require '../../views/admin/category/add.tpl.php';
?>