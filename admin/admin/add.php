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
    require '../../models/category.php';
    require '../../models/vaitro.php';
    require '../../models/admin.php';
    require '../../models/chitietphanquyen.php';
    $vaitro_list = get_vaitro_list($connect);
    $maAdmin = $_SESSION['admin']['admin_id'];
    $maPhanQuyen = 15;
    if(!get_phanquyen_to_access_by_admin($maAdmin ,$maPhanQuyen ,$connect))
        header('location:../error/display.php');
    //Nếu có post dữ liệu lên thì xử lý
    if ($_POST) {
        //Nhận dữ liệu từ form và gán vào một mãng
        $data = array(
            'vaitro_id' => $_POST['vaitro_id'],
            'chinhanh_id' => $_SESSION['admin']['admin_id'],
            'username' => $_POST['username'],
            'password' => md5($_POST['password']),
            'fullname' => $_POST['fullname'],
            'email' => $_POST['email'],          
            'status' => isset($_POST['status']) ? 1 : 0,
            'created' => date('Y-m-d'),
            'modified' => date('Y-m-d')
        );

        //Thêm mới
        if (add_admin($data, $connect)) {
            //Tạo session để lưu cờ thông báo thành công
            $_SESSION['success'] = true;

            //Tải lại trang (Mục đích là để reset form)
            header('location:list.php');
        }
    }

    //Require tập tin giao diện (View)
    require '../../views/admin/admin/add.tpl.php';
?>