<?php
    function get_product_list($connect)
    {
        $sql = "SELECT * FROM tbl_product";
        return mysqli_query($connect, $sql);
    }
    function get_product_list_by_chinhanh_id($chinhanh_id, $connect)
    {
        $sql = "SELECT pr.product_id, pr.name, pr.image, pr.price, ct.quantity FROM tbl_product as pr, tbl_chitietsanpham as ct WHERE pr.product_id = ct.product_id AND ct.chinhanh_id = $chinhanh_id";
        return mysqli_query($connect, $sql);
    }
    function add_product($data, $connect)
    {
        $sql = "INSERT INTO tbl_product(category_id, name, price, detail, image, status, created, modified) VALUES ({$data['category_id']}, '{$data['name']}', '{$data['price']}', '{$data['detail']}', '{$data['image']}', '{$data['status']}', '{$data['created']}', '{$data['modified']}')";
        return mysqli_query($connect, $sql);
    }
    function get_product_by_id($product_id, $connect)
    {
        $sql = "SELECT * FROM tbl_product WHERE product_id = $product_id";

        $query = mysqli_query($connect, $sql);
    
        return mysqli_fetch_assoc($query);
    }
    
    function edit_product($data, $product_id, $connect)
    {
        $sql = "UPDATE tbl_product SET category_id = {$data['category_id']}, name = '{$data['name']}', detail = '{$data['detail']}', price = {$data['price']}, status = {$data['status']}, modified = '{$data['modified']}'";
    

        if ($data['image'] !== null) {
            $sql .= ", image = '{$data['image']}'";
        }
    
        //Điều kiện
        $sql .= " WHERE product_id = $product_id";
    
        //Return
        return mysqli_query($connect, $sql);
    }
    function edit_quantity_product_of_chinhanh_id($chinhanh_id, $quantity, $product_id, $connect)
    {
        $sql = "UPDATE tbl_chitietsanpham SET quantity = $quantity WHERE chinhanh_id = $chinhanh_id AND product_id = $product_id";
        return mysqli_query($connect, $sql);
    }
    function get_product_latest_list($chinhanh_id,$limit, $connect)
    {
        $sql = "SELECT pr.product_id, pr.name, pr.price, ct.quantity, pr.detail, pr.image FROM tbl_product as pr, tbl_chitietsanpham as ct WHERE ct.chinhanh_id = $chinhanh_id AND ct.product_id = pr.product_id AND ct.quantity > 0 AND pr.status = 1 ORDER BY pr.product_id ASC LIMIT 0, $limit";
        return mysqli_query($connect, $sql);
    }
    function get_product_active_list($chinhanh_id, $category_id,$start, $limit, $connect)
    {
        $giatri_khuyenmai = get_gia_tri_khuyen_mai_by_chinhanh_id($chinhanh_id,$connect);
        $sql = "SELECT pr.product_id, pr.name, pr.price, (pr.price * (100 - $giatri_khuyenmai) / 100) as price_sale, ct.quantity, pr.image FROM tbl_product as pr, tbl_chitietsanpham as ct, tbl_category as cate WHERE pr.status = 1 AND pr.product_id = ct.product_id AND pr.category_id = cate.category_id AND ct.chinhanh_id = $chinhanh_id AND ct.quantity > 0";
        if ($category_id !== null) {
            $sql .= " AND cate.category_id = $category_id";
        }
        $sql .= " LIMIT $start,$limit";
        return mysqli_query($connect, $sql);
    }
    function get_gia_tri_khuyen_mai_by_chinhanh_id($chinhanh_id,$connect)
    {
        $sql = "SELECT km.giatri FROM tbl_khuyenmai as km , tbl_chinhanh as cn WHERE cn.chinhanh_id = km.chinhanh_id AND cn.chinhanh_id = $chinhanh_id AND km.status = 1";
        $query = mysqli_query($connect, $sql);
        $get_khuyen_mai =  mysqli_fetch_assoc($query);
        return empty($get_khuyen_mai['giatri']) ? 0 : $get_khuyen_mai['giatri'];
    }
    
    function get_product_active_by_id($chinhanh_id, $product_id, $connect)
    {
        $giatri_khuyenmai = get_gia_tri_khuyen_mai_by_chinhanh_id($chinhanh_id,$connect);
        $sql = "SELECT pr.product_id, pr.name, pr.price, (pr.price * (100 - $giatri_khuyenmai) / 100) as price_sale, ct.quantity, pr.detail, pr.image FROM tbl_chitietsanpham as ct, tbl_product as pr WHERE pr.product_id = ct.product_id AND ct.chinhanh_id = $chinhanh_id AND pr.product_id = $product_id";
    
        $query = mysqli_query($connect, $sql);
    
        return mysqli_fetch_assoc($query);
    }
    function delete_product($product_id, $connect)
    {
        $sql = "UPDATE tbl_product SET status = 0 WHERE product_id = $product_id";
        return mysqli_query($connect, $sql);
    }
    function get_quantity_by_chinhanh_id_and_product_id($chinhanh_id,$product_id, $connect)
    {
        $sql = "SELECT ct.quantity FROM tbl_product as pr, tbl_chitietsanpham as ct WHERE ct.chinhanh_id = $chinhanh_id AND pr.product_id = $product_id";
        $query = mysqli_query($connect, $sql);
        $prd = mysqli_fetch_assoc($query);
        return $prd['quantity'];
    }
    function get_five_product_by_chinhanh_id_and_category_id($chinhanh_id,$category_id, $connect)
    {
        $giatri_khuyenmai = get_gia_tri_khuyen_mai_by_chinhanh_id($chinhanh_id,$connect);
        $sql = "SELECT pr.product_id, pr.category_id, pr.name, pr.price,(pr.price * (100 - $giatri_khuyenmai) / 100) as price_sale, ct.quantity, pr.detail, pr.image FROM tbl_product as pr, tbl_chitietsanpham as ct, tbl_category as cate WHERE pr.status = 1 AND cate.category_id = pr.category_id AND cate.category_id = $category_id AND pr.product_id = ct.product_id AND ct.chinhanh_id = $chinhanh_id AND ct.quantity > 0 LIMIT 0,5";
        return mysqli_query($connect, $sql);
    }
    function get_five_product_hot_sale_by_chinhanh_id_and_category_id($chinhanh_id, $connect)
    {
        $giatri_khuyenmai = get_gia_tri_khuyen_mai_by_chinhanh_id($chinhanh_id,$connect);
        $sql = "SELECT pr.product_id, pr.category_id, pr.name, pr.price,(pr.price * (100 - $giatri_khuyenmai) / 100) as price_sale, ct.quantity, pr.detail, pr.image FROM tbl_product as pr, tbl_chitietsanpham as ct WHERE pr.status = 1 AND pr.product_id = ct.product_id AND ct.chinhanh_id = $chinhanh_id AND ct.quantity > 0 ORDER BY price_sale DESC LIMIT 0,5";
        return mysqli_query($connect, $sql);
    }
    function get_lastest_product($connect)
    {
        $sql = "SELECT * FROM tbl_product ORDER BY product_id DESC LIMIT 0,1";
        $query = mysqli_query($connect, $sql);
        $lastest_prd = mysqli_fetch_assoc($query);
        return $lastest_prd['product_id'];
    }  
?>