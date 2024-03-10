<?php
    session_start();
    //Kiểm tra nếu chưa đăng nhập thì quay về trang đăng nhập
    if (!isset($_SESSION['admin'])) {
        header('location:../login.php');
    }

    //Require các tập tin cần thiết
    require '../../configs/config.php';
    require '../../libraries/connect.php';
    require '../../models/category.php';
    require '../../models/admin.php';
    require '../../models/phanquyen.php';
    require '../../models/chitietphanquyen.php';
    require '../../models/vaitro.php';
    $vaitro_list = get_vaitro_list($connect);
    $maAdmin = $_SESSION['admin']['admin_id'];
    $maPhanQuyen = 17;
    if(!get_phanquyen_to_access_by_admin($maAdmin ,$maPhanQuyen ,$connect))
        header('location:../error/display.php');
    $admin_id = $_GET['admin_id'];
    if($_SESSION['admin']['admin_id']!=get_quan_ly_id_of_admin($admin_id, $connect))
        header('location:../error/display.php');
    if ($_POST) {
        $data = array(
            'username' => $_POST['username'],
            'password' => empty($_POST['password']) ? null : md5($_POST['password']),
            'fullname' => $_POST['fullname'],
            'vaitro_id' => $_POST['vaitro_id'],
            'email' => $_POST['email'],
            'status' => isset($_POST['status']) ? 1 : 0,
            'modified' => date('Y-m-d')
        );
        if (edit_admin($data, $admin_id, $connect))
            header('location:list.php');
    }

    $admin = get_admin_by_id($admin_id, $connect);
    $vaitroID = get_vaitro_id_by_admin_id($admin_id,$connect);
    //Require tập tin giao diện (View)
    require '../../views/admin/admin/edit.tpl.php';
?>