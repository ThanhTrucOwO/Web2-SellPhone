<?php
    //Khởi động session
    session_start();

    //Kiểm tra nếu chưa đăng nhập thì quay về trang đăng nhập
    if (!isset($_SESSION['admin'])) {
        header('location:../login.php');
    }
    $chinhanh_id = $_SESSION['admin']['chinhanh_id'];
    //Require các tập tin cần thiết
    require '../../configs/config.php';
    require '../../libraries/connect.php';
    require '../../models/order.php';
    require '../../models/chitietphanquyen.php';
    $maAdmin = $_SESSION['admin']['admin_id'];
    $maPhanQuyen = 18;
    if(!get_phanquyen_to_access_by_admin($maAdmin ,$maPhanQuyen ,$connect))
        header('location:../error/display.php');
    if($_GET)
    {
        $giatu = $_GET['giatu'];
        $giaden = $_GET['giaden'];
        $ngaytu = $_GET['begin']!=""?$_GET['begin']:"1970-01-01";
        $ngayden = $_GET['end']!=""?$_GET['end']:date('Y-m-d');
        $statistic_order = statistic_order($chinhanh_id,$ngaytu, $ngayden, $giatu, $giaden, $connect);
    }

    //Require tập tin giao diện (View)
    require '../../views/admin/order/statistic.tpl.php';
?>