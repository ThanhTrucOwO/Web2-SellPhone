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
    require '../../models/chitietphanquyen.php';
    require '../../models/admin.php';
    require '../../models/chinhanh.php';
    $maAdmin = $_SESSION['admin']['admin_id'];
    $maPhanQuyen = 14;
    if(!get_phanquyen_to_access_by_admin($maAdmin ,$maPhanQuyen ,$connect))
        header('location:../error/display.php');
    $chiNhanhID = $_SESSION['admin']['chinhanh_id'];
    //Lấy danh sách danh mục sản phẩm
    $admin_list = get_admin_list_by_chinhanh_id($chiNhanhID, $connect);
    $tenchinhanh = get_tenchinhanh_by_chinhanh_id($chiNhanhID, $connect);
    //Require tập tin giao diện (View)
    require '../../views/admin/admin/list.tpl.php';
?>