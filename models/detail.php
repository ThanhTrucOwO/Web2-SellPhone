<?php
    function get_detail_list($connect)
    {
        $sql = "SELECT * FROM tbl_detail";
        return mysqli_query($connect, $sql);
    }

    function get_detail_list_by_order_id($order_id, $connect)
    {
        $sql = "SELECT * FROM tbl_detail WHERE order_id = $order_id";
        return mysqli_query($connect, $sql);
    }
    function delete_detail($order_id, $product_id, $connect)
    {
        $sql = "DELETE FROM tbl_detail WHERE order_id = $order_id AND product_id = $product_id";
        return mysqli_query($connect, $sql);
    }
    function delete_all_detail_by_order_id($order_id, $connect)
    {
        $sql = "DELETE FROM tbl_detail WHERE order_id = $order_id";
        return mysqli_query($connect, $sql);
    }
    function add_detail($order_id, $product_id, $name, $price, $quantity, $total, $image, $connect)
    {
        $sql = "INSERT INTO tbl_detail VALUES ('{$order_id}', '{$product_id}', '{$name}', '{$price}', '{$quantity}', '{$total}', '{$image}')";
        return mysqli_query($connect, $sql);
    }
    function get_statistic_loaiSanPham($chinhanh_id, $category_id, $connect)
    {
        $sql = "SELECT ct.order_id, ct.product_id, sp.name, ct.quantity, ct.price, ct.total, od.created, ct.image FROM tbl_detail as ct, tbl_category as dm, tbl_order as od, tbl_product as sp WHERE od.chinhanh_id = $chinhanh_id AND od.order_id = ct.order_id AND sp.category_id = dm.category_id AND ct.product_id = sp.product_id AND dm.category_id = $category_id";
        return mysqli_query($connect, $sql);
    }  
    function get_statistic_sanPham($chinhanh_id, $product_id, $connect)
    {
        $sql = "SELECT ct.order_id, ct.product_id, sp.name, ct.quantity, ct.price, ct.total, od.created, ct.image FROM tbl_detail as ct, tbl_order as od, tbl_product as sp WHERE od.chinhanh_id = $chinhanh_id AND od.order_id = ct.order_id AND ct.product_id = sp.product_id AND ct.product_id = $product_id";
        return mysqli_query($connect, $sql);
    }     
?>