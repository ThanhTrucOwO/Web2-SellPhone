<?php
    function add_cart_detail($cart_id, $product_id, $name, $price, $quantity, $total, $image, $connect)
    {
        $sql = "INSERT INTO tbl_cart_detail VALUES ('{$cart_id}', '{$product_id}', '{$name}', '{$price}', '{$quantity}', '{$total}', '{$image}')";
        return mysqli_query($connect, $sql);
    }
    function get_cart_detail_by_cart_id_and_product_id($cart_id, $product_id, $connect)
    {
        $sql = "SELECT * FROM tbl_cart_detail WHERE cart_id = $cart_id and product_id = $product_id";
        return mysqli_query($connect, $sql);
    }
    function get_cart_list_by_user_id($user_id, $connect)
    {
        $sql = "SELECT tbl_cart.cart_id, tbl_chinhanh.tenchinhanh, tbl_cart.quantity FROM tbl_cart, tbl_chinhanh WHERE user_id = $user_id AND tbl_cart.chinhanh_id = tbl_chinhanh.chinhanh_id AND tbl_cart.quantity > 0";
        return mysqli_query($connect, $sql);
    }
    function get_cart_detail_list_by_cart_id($cart_id, $connect)
    {
        $sql = "SELECT * FROM tbl_cart_detail WHERE cart_id = $cart_id";
        return mysqli_query($connect, $sql);      
    }
    function delete_cart_detail_by_cart_id_and_product_id($cart_id, $product_id, $connect)
    {
        $sql = "DELETE FROM tbl_cart_detail WHERE cart_id = $cart_id and product_id = $product_id";
        return mysqli_query($connect, $sql); 
    }
    function calculate_sum_cart_detail_by_cart_id($cart_id, $connect)
    {
        $sql = "SELECT SUM(total) as total FROM tbl_cart_detail WHERE cart_id = $cart_id";
        $query = mysqli_query($connect, $sql);
        $get_total = mysqli_fetch_assoc($query);
        return $get_total['total']; 
    }
    function set_quantity_cart_detail_by_cart_id_and_product_id($cart_id,$product_id,$quantity, $connect)
    {
        $sql = "UPDATE tbl_cart_detail SET quantity = $quantity, total = $quantity*tbl_cart_detail.price WHERE cart_id = $cart_id  AND product_id = $product_id";
        return mysqli_query($connect, $sql);
    }
?>