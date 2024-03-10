<?php
//Khởi động session
session_start();

//Kiểm tra nếu đã đăng nhập thì quay về trang chủ quản trị
if (isset($_SESSION['admin'])) {
    header('location:index.php');
}

//Require các tập tin cần thiết
require '../configs/config.php';
require '../libraries/connect.php';
require '../models/admin.php';

//Kiểm tra dữ liệu POST lên
if (isset($_POST['username']) && !empty($_POST['username']) && isset($_POST['password']) && !empty($_POST['password'])) {
    //Gán tài khoản và mật khẩu nhận được từ form vào 2 biến tương ứng
    $username = $_POST['username'];
    $password = $_POST['password'];

    //Lấy thông tin người dùng từ DB
    $admin = get_admin_by_username($username, $connect);

    //Kiểm tra sự tồn tại của người dùng và mật khẩu có trùng khớp
    if ($admin && $admin['password'] === md5($password)) {
        //Tạo session lưu thông tin người dùng đăng nhập thành công
        $_SESSION['admin'] = $admin;
   
        //Chuyển hướng về trang chủ quản trị
        header('location:index.php');
    } else {
        //Bật cờ lỗi
        $error = true;
    }
}

//Require tập tin giao diện (View)
require '../views/admin/login.tpl.php';
?>