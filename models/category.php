<?php
    function get_category_list($connect)
    {
        $sql = "SELECT * FROM tbl_category";
        return mysqli_query($connect, $sql);
    }
    function add_category($data, $connect)
    {
        $sql = "INSERT INTO tbl_category(name, status, created, modified,class_icon) VALUES ('{$data['name']}', {$data['status']}, '{$data['created']}', '{$data['modified']}', '{$data['class_icon']}')";
        return mysqli_query($connect, $sql);
    }
    function get_category_by_id($category_id, $connect)
    {
        $sql = "SELECT * FROM tbl_category WHERE category_id = $category_id AND";
        $query = mysqli_query($connect, $sql);
        return mysqli_fetch_assoc($query);
    }
    
    function edit_category($data, $category_id, $connect)
    {
        $sql = "UPDATE tbl_category SET name = '{$data['name']}', status = {$data['status']}, modified = '{$data['modified']}', class_icon = '{$data['class_icon']}' WHERE category_id = $category_id";
        return mysqli_query($connect, $sql);
    }

    function get_category_active_list($connect)
    {
        $sql = "SELECT * FROM tbl_category WHERE status = 1";
        return mysqli_query($connect, $sql);
    }
    function delete_category($category_id, $connect)
    {

        $sql = "UPDATE tbl_category SET status = 0 WHERE category_id = $category_id";
        
        return mysqli_query($connect, $sql);
    }
    function get_name_category($category_id, $connect)
    {

        $sql = "SELECT name FROM tbl_category WHERE category_id = $category_id";
        $query =  mysqli_query($connect, $sql);
        $get_category = mysqli_fetch_assoc($query);
        return $get_category['name'];
    }
    function get_total_record_by_category_id($chinhanh_id, $category_id, $connect)
    {

        $sql = "SELECT COUNT(*) as totalrc FROM tbl_product as pr, tbl_chitietsanpham as ct WHERE pr.product_id = ct.product_id AND ct.chinhanh_id = $chinhanh_id AND pr.category_id = $category_id AND ct.quantity > 0";
        $query =  mysqli_query($connect, $sql);
        $get_total = mysqli_fetch_assoc($query);
        return $get_total['totalrc'];
    }
?>