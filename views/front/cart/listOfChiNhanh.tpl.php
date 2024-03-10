<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Giỏ hàng của bạn</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="../../templates/front/common/menu.css">
<link rel="stylesheet" href="../../templates/front/cart/listOfChiNhanh.css">
<link rel="stylesheet" href="../../templates/front/common/footer.css">
<link rel="shortcut icon" type="image/png" href="<?php echo SITE_URL . 'doan/userfiles/favicon-32x32.png'; ?>"/>
</head>
<body>
<?php require '../../views/front/common/menu.tpl.php'; ?>
<div class="cart_main">
    <h3 class="cart_title">Giỏ hàng của bạn</h3>
    <form method="post" action="">
    <div class="cart_table">
        <div class="cart_column cart_row">
            <span class="cart_prd_name">Tên sản phẩm</span >
            <span class="cart_prd_price">Đơn giá</span >
            <span class="cart_prd_quantity">Số lượng</span >
            <span class="cart_prd_total_sm">Thành tiền</span>
            <span class="cart_prd_del">Tùy chỉnh</span>
        </div>
        <?php while ($cart_detail = mysqli_fetch_assoc($cart_detail_list)): ?>
        <div class="cart_row">
            <div class="cart_prd_name">
                <div class="cart_prd_image">
                    <img src="<?php echo SITE_URL . 'doan/userfiles/' . $cart_detail['image']; ?>" alt="">
                </div>
                <span class="cart_prd_name_details"><?php echo $cart_detail['name']; ?></span>
            </div>
            <span class="cart_prd_price"><?php echo number_format($cart_detail['price'], 0, '', '.'); ?> VNĐ</span>
            <div class="cart_prd_quantity">
                <input type="number" value="<?php echo $cart_detail['quantity']; ?>" name ="<?php echo "quantity_".$cart_detail['product_id'] ?>"  min = "1" max ="<?php echo get_quantity_by_chinhanh_id_and_product_id($chinhanh_id,$cart_detail['product_id'],$connect) ?>">
            </div>
            <span class="cart_prd_total_sm"><?php echo number_format($cart_detail['total'], 0, '', '.'); ?> VNĐ</span>
            <div class="cart_prd_del">
                <a href="<?php echo SITE_URL . 'doan/shopping/cart-detail/delete.php?product_id=' . $cart_detail['product_id'].'&cart_id='.$cart_detail['cart_id']; ?>"> Xóa </a>
            </div>         
        </div>
        <?php endwhile; ?>
    </div>
    <div class="cart_save">
        <input type="submit" name="saveNow" value="Lưu" class="save">
    </div>
    </form>
    <div class="cart_footer">
        <div class="cart_footer_right">
            <a href="list.php">Quay lại</a>
            <div class ="cart_footer_right_r">
                <span>Tổng tiền: <?php echo number_format($tongtien, 0, '', '.'); ?> VNĐ</span>
                <form method="post" action="../order/view.php?cart_id=<?php echo $cart_id; ?>">
                    <input type="submit" name="oderNow" value="Đặt hàng" class="cart_btn_pay">
                </form>
            </div>
        </div>
    </div>
</div>
<?php require '../../views/front/common/footer.tpl.php'; ?>
</body>
</html>