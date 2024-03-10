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
    require '../../models/khuyenmai.php';
    $chinhanh_id = $_SESSION['admin']['chinhanh_id'];
    $maAdmin = $_SESSION['admin']['admin_id'];
    $maPhanQuyen = 20;
    if(!get_phanquyen_to_access_by_admin($maAdmin ,$maPhanQuyen ,$connect))
        header('location:../error/display.php');

    $khuyenmai_id = $_GET['khuyenmai_id'];

    //Nếu có post dữ liệu lên thì xử lý cập nhật
    if ($_POST) {
        //Nhận dữ liệu từ form và gán vào một mãng
        $data = array(
            'tenkhuyenmai' => $_POST['tenkhuyenmai'],
            'giatri' => empty($_POST['giatri']) ? null : $_POST['giatri'],
            'status' => isset($_POST['status']) ? 1 : 0
        );
        if($data['status']==1)
            set_off_all_khuyenmai_by_of_chinhanh_id($chinhanh_id, $connect);
        //Cập nhật
        if (update_khuyenmai_by_khuyenmai_id($khuyenmai_id,$data, $connect)) {
            header('location:list.php');
        }
    }

    $khuyenmai = get_khuyenmai_by_khuyenmai_id($khuyenmai_id, $connect);

    //Require tập tin giao diện (View)
    require '../../views/admin/khuyenmai/edit.tpl.php';
?>