<?php
    session_start();
    //Require các tập tin cần thiết
    if(!isset($_SESSION['user']))
        header('location:../admin/user/login.php');
    $chinhanh_id = 1;
    if(isset($_SESSION['chinhanh_id']))
        $chinhanh_id = $_SESSION['chinhanh_id'];
    require '../configs/config.php';
    require '../libraries/connect.php';
    require '../models/user.php';
    require '../models/category.php';
    require '../models/chinhanh.php';
    $user_id = $_SESSION['user']['user_id'];
    if ($_POST) {
        //Nhận dữ liệu từ form và gán vào một mãng
        $data = array(
            'username' => $_POST['username'],
            'password' => empty($_POST['password']) ? null : md5($_POST['password']),
            'fullname' => $_POST['fullname'],
            'email' => $_POST['email'],
        );
      
        //Cập nhật
        if (edit_user_user($data, $user_id, $connect)) {
    
            //Tải lại trang (Mục đíc.h là để tải lại thông tin mới)
            header('location:profile.php');
        }
    }
    
    $user = get_user_by_user_id($user_id, $connect);
    $chinhanh_active_list = get_chinhanh_list($connect);
    $category_list = get_category_active_list($connect);
    //Require tập tin giao diện (View)
    require '../views/front/user/profile.tpl.php';
?>