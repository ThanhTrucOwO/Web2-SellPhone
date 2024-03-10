<?php
function get_product_search ($chinhanh_id, $category_id ,$keyword, $connect) {
    $giatri_khuyenmai = get_gia_tri_khuyen_mai_by_chinhanh_id($chinhanh_id,$connect);
    if (!empty($keyword)) {
        $sql =" SELECT pr.product_id, pr.name, pr.price,
               (pr.price * (100 - $giatri_khuyenmai) / 100) as price_sale, ct.quantity, pr.image
                FROM tbl_product as pr, tbl_chitietsanpham as ct, tbl_category as cate 
                WHERE pr.status = 1 AND pr.product_id = ct.product_id 
                AND pr.category_id = cate.category_id AND ct.chinhanh_id = $chinhanh_id AND ct.quantity > 0 AND pr.name LIKE '%$keyword%' 
                ";
        return mysqli_query($connect, $sql);
    }else{
        return get_product_active_list($chinhanh_id, $category_id, $connect);
        }      
}
function get_product_search_option ($chinhanh_id, $option, $connect){
    $giatri_khuyenmai = get_gia_tri_khuyen_mai_by_chinhanh_id($chinhanh_id,$connect);
    $sql =" SELECT pr.product_id, pr.name, pr.price,
               (pr.price * (100 - $giatri_khuyenmai) / 100) as price_sale, ct.quantity, pr.image
                FROM tbl_product as pr, tbl_chitietsanpham as ct, tbl_category as cate 
                WHERE pr.status = 1 AND pr.product_id = ct.product_id 
                AND pr.category_id = cate.category_id AND ct.chinhanh_id = $chinhanh_id AND ct.quantity > 0 AND pr.category_id LIKE '$option'
                ";
    return mysqli_query($connect, $sql);
}
function get_product_price_range($chinhanh_id, $price_start, $price_end, $connect){
    $giatri_khuyenmai = get_gia_tri_khuyen_mai_by_chinhanh_id($chinhanh_id,$connect);
    if($price_start > $price_end){
        $sql =" SELECT pr.product_id, pr.name, pr.price,
                (pr.price * (100 - $giatri_khuyenmai) / 100) as price_sale, ct.quantity, pr.image
                FROM tbl_product as pr, tbl_chitietsanpham as ct, tbl_category as cate 
                WHERE pr.status = 1 AND pr.product_id = ct.product_id 
                AND pr.category_id = cate.category_id AND ct.chinhanh_id = $chinhanh_id
                AND ct.quantity > 0 AND pr.price BETWEEN $price_end AND $price_start
                ";
    }else {
        $sql =" SELECT pr.product_id, pr.name, pr.price,
                (pr.price * (100 - $giatri_khuyenmai) / 100) as price_sale, ct.quantity, pr.image
                FROM tbl_product as pr, tbl_chitietsanpham as ct, tbl_category as cate 
                WHERE pr.status = 1 AND pr.product_id = ct.product_id 
                AND pr.category_id = cate.category_id AND ct.chinhanh_id = $chinhanh_id
                AND ct.quantity > 0 AND pr.price BETWEEN $price_start AND $price_end
                ";
    }
    return mysqli_query($connect, $sql);
}
function get_product_price_range_and_keyword($chinhanh_id, $keyword, $price_start, $price_end, $connect){
    $giatri_khuyenmai = get_gia_tri_khuyen_mai_by_chinhanh_id($chinhanh_id, $connect);
    if($price_start > $price_end){
        $sql =" SELECT pr.product_id, pr.name, pr.price,
                (pr.price * (100 - $giatri_khuyenmai) / 100) as price_sale, ct.quantity, pr.image
                FROM tbl_product as pr, tbl_chitietsanpham as ct, tbl_category as cate 
                WHERE pr.status = 1 AND pr.product_id = ct.product_id 
                AND pr.category_id = cate.category_id AND ct.chinhanh_id = $chinhanh_id
                AND ct.quantity > 0 AND pr.price BETWEEN $price_end AND $price_start AND pr.name LIKE '%$keyword%' 
                ";
    }else {
        $sql =" SELECT pr.product_id, pr.name, pr.price,
                (pr.price * (100 - $giatri_khuyenmai) / 100) as price_sale, ct.quantity, pr.image
                FROM tbl_product as pr, tbl_chitietsanpham as ct, tbl_category as cate 
                WHERE pr.status = 1 AND pr.product_id = ct.product_id 
                AND pr.category_id = cate.category_id AND ct.chinhanh_id = $chinhanh_id
                AND ct.quantity > 0 AND pr.price BETWEEN $price_start AND $price_end AND pr.name LIKE '%$keyword%' 
                ";
    }
    return mysqli_query($connect, $sql);
}
function get_product_price_range_and_option($chinhanh_id, $option, $price_start, $price_end, $connect){
    $giatri_khuyenmai = get_gia_tri_khuyen_mai_by_chinhanh_id($chinhanh_id, $connect);
    if($price_start > $price_end){
        $sql =" SELECT pr.product_id, pr.name, pr.price,
                (pr.price * (100 - $giatri_khuyenmai) / 100) as price_sale, ct.quantity, pr.image
                FROM tbl_product as pr, tbl_chitietsanpham as ct, tbl_category as cate 
                WHERE pr.status = 1 AND pr.product_id = ct.product_id 
                AND pr.category_id = cate.category_id AND ct.chinhanh_id = $chinhanh_id
                AND ct.quantity > 0 AND pr.price BETWEEN $price_end AND $price_start AND pr.category_id LIKE '$option'
                ";
    }else {
        $sql =" SELECT pr.product_id, pr.name, pr.price,
                (pr.price * (100 - $giatri_khuyenmai) / 100) as price_sale, ct.quantity, pr.image
                FROM tbl_product as pr, tbl_chitietsanpham as ct, tbl_category as cate 
                WHERE pr.status = 1 AND pr.product_id = ct.product_id 
                AND pr.category_id = cate.category_id AND ct.chinhanh_id = $chinhanh_id
                AND ct.quantity > 0 AND pr.price BETWEEN $price_start AND $price_end AND pr.category_id LIKE '$option'
                ";
    }
    return mysqli_query($connect, $sql);
}
function get_product_option_and_keyword($chinhanh_id, $keyword, $option, $connect){
    $giatri_khuyenmai = get_gia_tri_khuyen_mai_by_chinhanh_id($chinhanh_id, $connect);
        $sql =" SELECT pr.product_id, pr.name, pr.price,
                (pr.price * (100 - $giatri_khuyenmai) / 100) as price_sale, ct.quantity, pr.image
                FROM tbl_product as pr, tbl_chitietsanpham as ct, tbl_category as cate 
                WHERE pr.status = 1 AND pr.product_id = ct.product_id 
                AND pr.category_id = cate.category_id AND ct.chinhanh_id = $chinhanh_id
                AND ct.quantity > 0 AND pr.category_id LIKE '$option' AND pr.name LIKE '%$keyword%' 
                ";
    return mysqli_query($connect, $sql);
}
function get_product_price_range_and_keyword_and_option($chinhanh_id, $keyword, $option, $price_start, $price_end, $connect){
    $giatri_khuyenmai = get_gia_tri_khuyen_mai_by_chinhanh_id($chinhanh_id, $connect);
    if($price_start > $price_end){
        $sql =" SELECT pr.product_id, pr.name, pr.price,
                (pr.price * (100 - $giatri_khuyenmai) / 100) as price_sale, ct.quantity, pr.image
                FROM tbl_product as pr, tbl_chitietsanpham as ct, tbl_category as cate 
                WHERE pr.status = 1 AND pr.product_id = ct.product_id 
                AND pr.category_id = cate.category_id AND ct.chinhanh_id = $chinhanh_id
                AND ct.quantity > 0 AND pr.price BETWEEN $price_end AND $price_start AND pr.name LIKE '%$keyword%'
                AND pr.category_id LIKE '$option'
                ";
    }else {
        $sql =" SELECT pr.product_id, pr.name, pr.price,
                (pr.price * (100 - $giatri_khuyenmai) / 100) as price_sale, ct.quantity, pr.image
                FROM tbl_product as pr, tbl_chitietsanpham as ct, tbl_category as cate 
                WHERE pr.status = 1 AND pr.product_id = ct.product_id 
                AND pr.category_id = cate.category_id AND ct.chinhanh_id = $chinhanh_id
                AND ct.quantity > 0 AND pr.price BETWEEN $price_start AND $price_end AND pr.name LIKE '%$keyword%'
                AND pr.category_id LIKE '$option'
                ";
    }
    return mysqli_query($connect, $sql);
}

function get_product_search_advanced($chinhanh_id, $keyword, $option, $price_start, $price_end, $category_id, $connect) {
    if((empty($price_end)&&!empty($price_start))||(!empty($price_end)&&empty($price_start))){
        echo '<script>alert("Vui lòng nhập đầy đủ khoảng giá");</script>';
        return get_product_active_list($chinhanh_id, $category_id, $connect);
    }
    if(empty($option) and empty($keyword) and empty($price_start or $price_end)){
        return get_product_search ($chinhanh_id, $category_id, $keyword, $connect);
    }else if(empty($option) and empty($price_start or $price_end)){
            return get_product_search ($chinhanh_id, $category_id, $keyword, $connect);
    }else if(empty($keyword) and empty($price_start or $price_end)){
            return get_product_search_option ($chinhanh_id, $option, $connect);
    }else if(empty($keyword) and empty($option) and !empty($price_start and $price_end)){
            return get_product_price_range($chinhanh_id, $price_start, $price_end, $connect);
    }else if(empty($price_start or $price_end)) {
            return get_product_option_and_keyword($chinhanh_id, $keyword, $option, $connect);
    }else if(empty($option)) {
            return get_product_price_range_and_keyword($chinhanh_id, $keyword, $price_start, $price_end, $connect);
    }else if(empty($keyword)) {
            return get_product_price_range_and_option($chinhanh_id, $option, $price_start, $price_end, $connect);
    }else {
        return get_product_price_range_and_keyword_and_option($chinhanh_id, $keyword, $option, $price_start, $price_end, $connect);
    }
        
}

?>