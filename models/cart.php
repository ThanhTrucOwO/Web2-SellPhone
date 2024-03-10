<?php
    function get_cart_id_by_user_id_and_chinhanh_id($user_id, $chinhanh_id, $connect)
    {
        $sql = "SELECT cart_id FROM tbl_cart WHERE user_id = $user_id AND chinhanh_id = $chinhanh_id";
        $query = mysqli_query($connect, $sql);
        return mysqli_fetch_assoc($query);
    }
    function get_total_quantity_of_cart($cart_id, $connect)
    {
        $sql = "SELECT SUM(ct.quantity) as total_quantity FROM tbl_cart as c, tbl_cart_detail as ct WHERE c.cart_id = ct.cart_id AND c.cart_id = $cart_id";
        $query = mysqli_query($connect, $sql);
        $get_quantity = mysqli_fetch_assoc($query);
        if(empty($get_quantity['total_quantity']))
            return 0;
        return $get_quantity['total_quantity'];
    }
    function set_total_quantity_of_cart($cart_id,$connect)
    {
        $total_quantity = get_total_quantity_of_cart($cart_id, $connect);
        $sql = "UPDATE tbl_cart SET quantity = $total_quantity WHERE cart_id = $cart_id";
        return mysqli_query($connect, $sql);       
    }
    function get_chinhanh_id_of_cart_id($cart_id, $connect)
    {
        $sql = "SELECT chinhanh_id FROM tbl_cart where cart_id = $cart_id";
        $query =  mysqli_query($connect, $sql);
        $get_chinhanh_id = mysqli_fetch_assoc($query);
        return $get_chinhanh_id['chinhanh_id'];       
    }
    function get_chi_nhanh($connect)
    {
        $sql = "SELECT chinhanh_id FROM tbl_chinhanh";
        return mysqli_query($connect,$sql);
    }
    function create_three_cart($user_id, $connect)
    {
        $chinhanh_list = get_chi_nhanh($connect);
        while($get_chinhanh = mysqli_fetch_assoc($chinhanh_list)){
            $sql = "INSERT INTO tbl_cart VALUES(NULL,$user_id,'{$get_chinhanh['chinhanh_id']}',0)";
            mysqli_query($connect, $sql);
        }
    }
?>