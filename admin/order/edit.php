<?php
    session_start();
    //Kiểm tra nếu chưa đăng nhập thì quay về trang đăng nhập
    if (!isset($_SESSION['admin'])) {
        header('location:../login.php');
    }

    //Require các tập tin cần thiết
    require '../../configs/config.php';
    require '../../libraries/connect.php';
    require '../../models/order.php';
    require '../../models/state.php';
    require '../../models/chitietphanquyen.php';
    $maAdmin = $_SESSION['admin']['admin_id'];
    $maPhanQuyen = 13;
    if(!get_phanquyen_to_access_by_admin($maAdmin ,$maPhanQuyen ,$connect))
        header('location:../error/display.php');
    //Lấy order_id từ URL
    $order_id = $_GET['order_id'];

    //Nếu có post dữ liệu lên thì xử lý cập nhật
    if ($_POST) {
        //Nhận dữ liệu từ form và gán vào một mãng
        $data = array(
            'address' => $_POST['address'],
            'state' => $_POST['state'],
            'modified' => date('Y-m-d')
        );

        //Cập nhật
        if (edit_order($data, $order_id, $connect)) {
            header('location:list.php');
        }
    }

    //Lấy thông tin danh mục sản phẩm để trình bày trên form
    $order = get_order_by_id($order_id, $connect);
    $state_list = get_state_list($connect);
    //Require tập tin giao diện (View)
    require '../../views/admin/order/edit.tpl.php';
?>