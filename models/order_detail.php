<?php
    function get_order_detail_by_order_id($order_id, $connect)
    {
        $sql = "SELECT * FROM tbl_detail as dt WHERE dt.order_id = $order_id";
        return mysqli_query($connect, $sql);
    }
    function get_total_order_by_order_id($order_id, $connect)
    {
        $sql = "SELECT od.total FROM tbl_order as od WHERE od.order_id = $order_id";
        $query = mysqli_query($connect, $sql);
        $get_total = mysqli_fetch_assoc($query);
        return $get_total['total'];
    }  
?>