<?php
    //Khởi động session
    session_start();

    //Kiểm tra nếu chưa đăng nhập thì quay về trang đăng nhập
    if (!isset($_SESSION['admin'])) {
        header('location:../login.php');
    }
    if($_SESSION['admin']['vaitro_id']!=4)
        header('location:listByChiNhanh.php');
    else
        header('location:listAll.php');
?>