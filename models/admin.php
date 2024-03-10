<?php
    function get_admin_by_username($username, $connect)
    {
        $sql = "SELECT * FROM tbl_admin WHERE username = '$username' AND status = 1";
        $query = mysqli_query($connect, $sql);
        return mysqli_fetch_assoc($query);
    }
    function get_admin_list_by_chinhanh_id($chiNhanhID, $connect)
    {
        $sql = "SELECT * FROM tbl_admin WHERE chinhanh_id = $chiNhanhID";
        return mysqli_query($connect, $sql);
    }
    function edit_admin($data, $admin_id, $connect)
    {
        $sql = "UPDATE tbl_admin SET username = '{$data['username']}', fullname = '{$data['fullname']}',vaitro_id= '{$data['vaitro_id']}', email = '{$data['email']}', status = {$data['status']}, modified = '{$data['modified']}'";
    
        if ($data['password'] != null) {
            $sql .= ", password = '{$data['password']}'";
        }
    
        $sql .= " WHERE admin_id = $admin_id";
        return mysqli_query($connect, $sql);
    }
    function get_admin_by_id($admin_id, $connect)
    {

        $sql = "SELECT * FROM tbl_admin WHERE admin_id = $admin_id";
        $query = mysqli_query($connect, $sql);
        return mysqli_fetch_assoc($query);
    }
    function add_admin($data, $connect)
    {
        $sql = "INSERT INTO tbl_admin(vaitro_id,chinhanh_id,username, password, fullname, email, status, created, modified) VALUES ({$data['vaitro_id']}, {$data['chinhanh_id']},'{$data['username']}', '{$data['password']}', '{$data['fullname']}', '{$data['email']}', {$data['status']}, '{$data['created']}', '{$data['modified']}')";
        return mysqli_query($connect, $sql);
    }
    function get_quan_ly_chi_nhanh_id_of_admin($admin_id, $connect)
    {
        $sql = "SELECT ql.admin_id as MAQUANLY FROM tbl_admin as ad, tbl_admin as ql WHERE ad.admin_id = $admin_id AND ad.chinhanh_id = ql.chinhanh_id AND ql.vaitro_id = 3";
        $query = mysqli_query($connect, $query);
        $get_quanly_chinhanh = mysqli_fetch_assoc($query);
        $maQuanLy = $get_quanly_chinhanh['MAQUANLY'];
        return $maQuanLy;
    }
    function get_quan_ly_id_of_admin($admin_id, $connect)
    {
        $sql = "SELECT ql.admin_id FROM tbl_admin as nv, tbl_admin as ql WHERE nv.chinhanh_id = ql.chinhanh_id AND nv.admin_id = $admin_id AND ql.vaitro_id = 3 ";
        $query = mysqli_query($connect, $sql);
        $get_quanly_id  = mysqli_fetch_assoc($query);
        return $get_quanly_id['admin_id'];
    }
    function get_vaitro_id_by_admin_id($admin_id,$connect)
    {
        $sql = "SELECT * FROM tbl_admin WHERE admin_id = $admin_id";
        $query = mysqli_query($connect, $sql);
        $get_vaitro = mysqli_fetch_assoc($query);
        return $get_vaitro['vaitro_id'];
    }
    function delete_admin($admin_id,$connect)
    {
        $sql = "UPDATE tbl_admin SET status = 0  WHERE admin_id = $admin_id";
        return mysqli_query($connect, $sql);
    }
?>