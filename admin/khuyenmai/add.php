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
    require '../../models/cart.php';
    require '../../models/chinhanh.php';
    require '../../models/khuyenmai.php';
    $chinhanh_id = $_SESSION['admin']['chinhanh_id'];
    $maAdmin = $_SESSION['admin']['admin_id'];
    $maPhanQuyen = 20;
    if(!get_phanquyen_to_access_by_admin($maAdmin ,$maPhanQuyen ,$connect))
        header('location:../error/display.php');
    //Nếu có post dữ liệu lên thì xử lý
    if ($_POST) {
        //Nhận dữ liệu từ form và gán vào một mãng
        $data = array(
            'tenkhuyenmai' => $_POST['tenkhuyenmai'],
            'giatri' => empty($_POST['giatri']) ? 0 : $_POST['giatri'],
            'status' => isset($_POST['status']) ? 1 : 0
        );

        //Thêm mới
        if($data['status']==1)
            set_off_all_khuyenmai_by_of_chinhanh_id($chinhanh_id, $connect);
        if(add_khuyenmai_by_chinhanh_id($chinhanh_id,$data, $connect)) {
            header('location:list.php');
        }
    }

    //Require tập tin giao diện (View)
    require '../../views/admin/khuyenmai/add.tpl.php';
?>