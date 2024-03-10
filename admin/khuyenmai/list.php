<?php
    session_start();

    if(!isset($_SESSION['admin']))
    {
        header('location:../login.php');
    }

    require '../../configs/config.php';
    require '../../libraries/connect.php';
    require '../../models/user.php';
    require '../../models/chitietphanquyen.php';
    require '../../models/chinhanh.php';
    require '../../models/khuyenmai.php';
    $maAdmin = $_SESSION['admin']['admin_id'];
    $chinhanh_id = $_SESSION['admin']['chinhanh_id'];
    $maPhanQuyen = 20;
    if(!get_phanquyen_to_access_by_admin($maAdmin ,$maPhanQuyen ,$connect))
        header('location:../error/display.php');

    $khuyenmai_list = get_khuyenmai_list_by_chinhanh_id($chinhanh_id, $connect);
    $tenchinhanh = get_tenchinhanh_by_chinhanh_id($chinhanh_id, $connect);
    require '../../views/admin/khuyenmai/list.tpl.php';
?>