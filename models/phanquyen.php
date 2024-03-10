<?php
    function get_phan_quyen_list($username, $connect)
    {
        $sql = "SELECT * FROM tbl_phanquyen";
        return mysqli_query($connect, $sql);
    }
?>