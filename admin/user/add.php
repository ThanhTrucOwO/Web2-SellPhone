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
    require '../../models/user.php';
    require '../../models/chitietphanquyen.php';
    require '../../models/cart.php';
    $maAdmin = $_SESSION['admin']['admin_id'];
    $maPhanQuyen = 8;
    if(!get_phanquyen_to_access_by_admin($maAdmin ,$maPhanQuyen ,$connect))
        header('location:../error/display.php');
    //Nếu có post dữ liệu lên thì xử lý
    if ($_POST) {
        //Nhận dữ liệu từ form và gán vào một mãng
        $data = array(
            'username' => $_POST['username'],
            'password' => md5($_POST['password']),
            'fullname' => $_POST['fullname'],
            'email' => $_POST['email'],
            'status' => isset($_POST['status']) ? 1 : 0,
            'created' => date('Y-m-d'),
            'modified' => date('Y-m-d')
        );

        //Thêm mới
        if(add_user($data, $connect)) {
            $user_id = get_lastest_user_id($connect);
            create_three_cart($user_id, $connect);
            header('location:list.php');
        }
    }

    //Require tập tin giao diện (View)
    require '../../views/admin/user/add.tpl.php';
?>