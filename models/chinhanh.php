<?php
    function get_chinhanh_list($connect)
    {
        $sql = "SELECT * FROM tbl_chinhanh";
        return mysqli_query($connect, $sql);
    }
    function get_tenchinhanh_by_chinhanh_id($chinhanh_id, $connect)
    {
        $sql = "SELECT * FROM tbl_chinhanh WHERE chinhanh_id = $chinhanh_id";
        $query =  mysqli_query($connect, $sql);
        $get_chinhanh = mysqli_fetch_assoc($query);
        return $get_chinhanh['tenchinhanh'];
    }
    function add_chitietsanpham($product_id, $connect)
    {
        $chinhanh_list = get_chinhanh_list($connect);
        while($chinhanh = mysqli_fetch_assoc($chinhanh_list))
        {
            $sql = "INSERT INTO tbl_chitietsanpham VALUES($product_id,'{$chinhanh['chinhanh_id']}',0)";
            mysqli_query($connect, $sql);
        }
    }
?>