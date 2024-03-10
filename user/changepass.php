<?php
    //Khởi động session
    session_start();

    //Kiểm tra nếu chưa đăng nhập thì quay về trang đăng nhập
    if (!isset($_SESSION['user'])) {
        header('location:../login.php');
    }
    $chinhanh_id = 1;
    if(isset($_SESSION['chinhanh_id']))
        $chinhanh_id = $_SESSION['chinhanh_id'];
    //Require các tập tin cần thiết
    require '../configs/config.php';
    require '../libraries/connect.php';
    require '../models/user.php';
    require '../models/category.php';
    require '../models/chitietphanquyen.php';
    require '../models/chinhanh.php';
    $user_id = $_SESSION['user']['user_id'];

    //Nếu có post dữ liệu lên thì xử lý cập nhật
    if ($_POST) {
        //Nhận dữ liệu từ form và gán vào một mãng
        $data = array(
            'passold' => $_POST['passold'],
            'newpass' => $_POST['newpass'],
            'renewpass' => $_POST['renewpass']
        );
        $error = false;
        if($data['newpass']!=$data['renewpass'])
            $error = true;
        if(get_password_of_user_id($user_id, $connect)!=md5($data['passold']))
            $error = true;
        //Cập nhật
        if(!$error)
            set_password_by_user_id($user_id,md5($data['newpass']), $connect);
    }
    $chinhanh_active_list = get_chinhanh_list($connect);
    $category_list = get_category_active_list($connect);
    //Require tập tin giao diện (View)
    require '../views/front/user/changepass.tpl.php';
?>