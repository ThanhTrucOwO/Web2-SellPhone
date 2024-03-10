<?php
    function get_khuyenmai_list_by_chinhanh_id($chinhanh_id, $connect)
    {
        $sql = "SELECT * FROM tbl_khuyenmai WHERE chinhanh_id = $chinhanh_id";
        return mysqli_query($connect, $sql);
    }
    function add_khuyenmai_by_chinhanh_id($chinhanh_id,$data, $connect)
    {
        $sql = "INSERT INTO tbl_khuyenmai VALUES(NULL, $chinhanh_id,'{$data['tenkhuyenmai']}','{$data['giatri']}','{$data['status']}')";
        return mysqli_query($connect, $sql);
    }
    function update_khuyenmai_by_khuyenmai_id($khuyenmai_id,$data, $connect)
    {
        $sql = "UPDATE tbl_khuyenmai SET tenkhuyenmai = '{$data['tenkhuyenmai']}', status = '{$data['status']}'";
        if($data['giatri']!=null)
            $sql .= ", giatri = '{$data['giatri']}'";
        $sql .= " WHERE khuyenmai_id = $khuyenmai_id";
        return mysqli_query($connect, $sql);
    }
    function delete_khuyenmai_by_khuyenmai_id($khuyenmai_id, $connect)
    {
        $sql = "DELETE FROM tbl_khuyenmai WHERE khuyenmai_id = $khuyenmai_id";
        return mysqli_query($connect, $sql);
    }
    function get_khuyenmai_by_khuyenmai_id($khuyenmai_id, $connect)
    {
        $sql = "SELECT * FROM tbl_khuyenmai WHERE khuyenmai_id = $khuyenmai_id";
        $query =  mysqli_query($connect, $sql);
        return mysqli_fetch_assoc($query);
    }
    function set_off_all_khuyenmai_by_of_chinhanh_id($chinhanh_id, $connect)
    {
        $sql = "UPDATE tbl_khuyenmai SET status = 0 WHERE chinhanh_id = $chinhanh_id";
        return mysqli_query($connect, $sql);
    }
?>