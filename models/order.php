<?php
    function get_order_list_of_chinhanh($chinhanh_id, $connect)
    {
        $sql = "SELECT * FROM tbl_order WHERE chinhanh_id = $chinhanh_id";
        return mysqli_query($connect, $sql);
    }
    function edit_order($data, $order_id, $connect)
    {
        $sql = "UPDATE tbl_order SET address = '{$data['address']}', state_id = {$data['state']} WHERE order_id = $order_id";
          
        return mysqli_query($connect, $sql);       
    }
    function get_order_by_id($order_id, $connect)
    {
        $sql = "SELECT * FROM tbl_order WHERE order_id = $order_id";
        $query =  mysqli_query($connect, $sql);
        return mysqli_fetch_assoc($query);
    }
    function statistic_order($chinhanh_id,$begin, $end,$giatu, $giaden, $connect)
    {
        $sql = "SELECT * FROM tbl_order WHERE chinhanh_id = $chinhanh_id AND created BETWEEN CAST('{$begin}' AS DATE) AND CAST('{$end}' AS DATE)";
        if($giatu!="")
            $sql.=" AND total >= $giatu";
        if($giaden!="")
            $sql.=" AND total <= $giaden";
        return mysqli_query($connect, $sql);
    }
    function statisticTotal_order($begin, $end, $connect)
    {
        $sql = "SELECT * FROM tbl_order WHERE total > {$begin} and total < {$end}";
        return mysqli_query($connect, $sql);
    }
    function get_last_order($connect)
    {
        $sql = "SELECT * FROM tbl_order ORDER BY order_id DESC LIMIT 1";
        $query =  mysqli_query($connect, $sql);
        return mysqli_fetch_assoc($query);
    } 
    function add_order($user_id, $state_id,$chinhanh_id, $address, $total, $created, $connect)
    {
        $sql = "INSERT INTO tbl_order VALUES (NULL, '{$user_id}', '{$state_id}','{$chinhanh_id}', '{$address}', '{$total}', '{$created}')";
        return mysqli_query($connect, $sql);
    }
    function get_order_by_user_id($user_id, $connect)
    {
        $sql = "SELECT od.order_id, st.state, od.created, od.total FROM tbl_order as od, tbl_state as st WHERE od.state_id = st.state_id AND od.user_id = $user_id";
        return mysqli_query($connect, $sql);
    }
    function delete_order_by_order_id($order_id, $connect)
    {
        $sql = "DELETE FROM tbl_order WHERE order_id = $order_id";
        return mysqli_query($connect, $sql);
    }
    function get_total_by_order_id($order_id,$connect)
    {
        $sql = "SELECT SUM(total) as tongtien FROM tbl_detail WHERE order_id = $order_id";
        $query = mysqli_query($connect, $sql);
        $get_total = mysqli_fetch_assoc($query);
        return empty($get_total['tongtien'])?0:$get_total['tongtien'];
    }
    function set_total_by_order_id($order_id,$connect)
    {
        $total = get_total_by_order_id($order_id,$connect);
        $sql = "UPDATE tbl_order SET total = $total WHERE order_id = $order_id";
        return mysqli_query($connect, $sql);
    }
?>