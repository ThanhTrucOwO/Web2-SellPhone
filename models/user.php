<?php
    function get_user_by_username($username, $connect)
    {
        $sql = "SELECT * FROM tbl_user WHERE username = '$username' AND status = 1";
        $query = mysqli_query($connect, $sql);
        return mysqli_fetch_assoc($query);
    }
    function get_user_by_user_id($user_id, $connect)
    {
        $sql = "SELECT * FROM tbl_user WHERE user_id = $user_id AND status = 1";
        $query = mysqli_query($connect, $sql);
        return mysqli_fetch_assoc($query);
    }   
    function get_user_list($connect)
    {
        $sql = "SELECT * FROM tbl_user ORDER BY user_id DESC";
        return mysqli_query($connect, $sql);
    }
    function add_user($data, $connect)
    {
        $sql = "INSERT INTO tbl_user(username, password, fullname, email, status, created, modified) VALUES ('{$data['username']}', '{$data['password']}', '{$data['fullname']}', '{$data['email']}', {$data['status']}, '{$data['created']}', '{$data['modified']}')";
        return mysqli_query($connect, $sql);
    }
    function get_user_by_id($user_id, $connect)
    {

        $sql = "SELECT * FROM tbl_user WHERE user_id = $user_id";
        $query = mysqli_query($connect, $sql);
        return mysqli_fetch_assoc($query);
    }
    
    function edit_user($data, $user_id, $connect)
    {
        $sql = "UPDATE tbl_user SET username = '{$data['username']}', fullname = '{$data['fullname']}', email = '{$data['email']}', status = {$data['status']}, modified = '{$data['modified']}'";
    
        if ($data['password'] != null) {
            $sql .= ", password = '{$data['password']}'";
        }
    
        $sql .= " WHERE user_id = $user_id";
        return mysqli_query($connect, $sql);
    }
    function edit_user_user($data, $user_id, $connect)
    {
        $sql = "UPDATE tbl_user SET username = '{$data['username']}', fullname = '{$data['fullname']}', email = '{$data['email']}'";
    
        if ($data['password'] != null) {
            $sql .= ", password = '{$data['password']}'";
        }
    
        $sql .= " WHERE user_id = $user_id";
        return mysqli_query($connect, $sql);
    }
    function delete_user($user_id, $connect)
    {
        $sql = "UPDATE tbl_user SET status = 0 WHERE user_id = $user_id";
        return mysqli_query($connect, $sql);
    }
    function get_lastest_user_id($connect)
    {
        $sql = "SELECT * FROM tbl_user ORDER BY user_id DESC LIMIT 0,1";
        $query = mysqli_query($connect, $sql);
        $get_user = mysqli_fetch_assoc($query);
        return $get_user['user_id'];
    }
    function get_password_of_user_id($user_id, $connect)
    {
        $sql = "SELECT password FROM tbl_user WHERE user_id = $user_id";
        $query = mysqli_query($connect, $sql);
        $get_user = mysqli_fetch_assoc($query);
        return $get_user['password'];
    }
    function set_password_by_user_id($user_id,$password, $connect)
    {
        $sql = "UPDATE tbl_user SET tbl_user.password = '$password' WHERE user_id = $user_id";
        return mysqli_query($connect, $sql);
    }
    function check_exist_user($username, $email, $connect)
    {
        $sql = "SELECT * FROM tbl_user WHERE username LIKE '$username' OR email LIKE '$email'";
        $query =  mysqli_query($connect, $sql);
        $get_user = mysqli_fetch_assoc($query);
        return empty($get_user)?true:false;
    }
?>