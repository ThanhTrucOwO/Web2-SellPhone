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
    $maAdmin = $_SESSION['admin']['admin_id'];
    $chinhanh_id = $_SESSION['admin']['chinhanh_id'];
    $maPhanQuyen = 7;
    if(!get_phanquyen_to_access_by_admin($maAdmin ,$maPhanQuyen ,$connect))
        header('location:../error/display.php');
    $maPhanQuyenXoaKhachHang = 9;
    $xoaKhachHang = get_phanquyen_to_access_by_admin($maAdmin ,$maPhanQuyenXoaKhachHang ,$connect);
    $maPhanQuyenSuaKhachHang = 10;
    $suaKhachHang = get_phanquyen_to_access_by_admin($maAdmin ,$maPhanQuyenSuaKhachHang ,$connect);

    $user_list = get_user_list($connect);
    $tenchinhanh = get_tenchinhanh_by_chinhanh_id($chinhanh_id, $connect);
    require '../../views/admin/user/list.tpl.php';
?>