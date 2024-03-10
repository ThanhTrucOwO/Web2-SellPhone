<?php

    require '../../configs/config.php';
    require '../../libraries/connect.php';
    require '../../models/user.php';
    require '../../models/cart.php';

    if ($_POST)
    {
        $data = array(
            'username' => $_POST['username'],
            'fullname' => $_POST['fullname'],
            'password' => md5($_POST['password']),
            'email' => $_POST['email'],
            'status' => 1,
            'created' => date('Y-m-d'),
            'modified' => date('Y-m-d')
        );

        //Kiểm tra sự tồn tại của email và username
        if (check_exist_user($data['username'], $data['password'], $connect))
        {
            add_user($data, $connect);
            $user_id = get_lastest_user_id($connect);
            create_three_cart($user_id, $connect);
            $error = false;
        } 
        else 
        {
            $error = true;           
        }
    }
    require('../../views/admin/user/register.tpl.php');
?>