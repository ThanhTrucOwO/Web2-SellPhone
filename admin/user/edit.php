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
$maAdmin = $_SESSION['admin']['admin_id'];
$maPhanQuyen = 10;
if(!get_phanquyen_to_access_by_admin($maAdmin ,$maPhanQuyen ,$connect))
    header('location:../error/display.php');
//Lấy user_id từ URL
$user_id = $_GET['user_id'];

//Nếu có post dữ liệu lên thì xử lý cập nhật
if ($_POST) {
    //Nhận dữ liệu từ form và gán vào một mãng
    $data = array(
        'username' => $_POST['username'],
        'password' => empty($_POST['password']) ? null : md5($_POST['password']),
        'fullname' => $_POST['fullname'],
        'email' => $_POST['email'],
        'status' => isset($_POST['status']) ? 1 : 0,
        'modified' => date('Y-m-d')
    );
  
    //Cập nhật
    if (edit_user($data, $user_id, $connect)) {
        header('location:list.php');
    }
}

//Lấy thông tin người dùng để trình bày trên form
$user = get_user_by_id($user_id, $connect);

//Require tập tin giao diện (View)
require '../../views/admin/user/edit.tpl.php';
?>