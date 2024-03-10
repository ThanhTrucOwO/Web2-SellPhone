<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Xem lại đơn hàng</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="../../templates/front/common/menu.css">
<link rel="stylesheet" href="../../templates/front/order/view.css">
<link rel="stylesheet" href="../../templates/front/common/footer.css">
<link rel="shortcut icon" type="image/png" href="<?php echo SITE_URL . 'doan/userfiles/favicon-32x32.png'; ?>"/>
</head>
<body>
<?php require '../../views/front/common/menu.tpl.php'; ?>
<div class="order_main">
        <h3 class="order_title">Xác nhận đặt hàng</h3>
        <div class="order_table">
            <div class="order_column order_row">
                <span class="order_prd_name">Tên sản phẩm</span >
                <span class="order_prd_price">Đơn giá</span >
                <span class="order_prd_quantity">Số lượng</span >
                <span class="order_prd_total_sm">Thành tiền</span>
            </div>
            <?php while ($cart_detail = mysqli_fetch_assoc($cart_list)): ?>
            <div class="order_row">
                <div class="order_prd_name">
                    <div class="order_prd_image">
                        <img src="<?php echo SITE_URL . 'doan/userfiles/' . $cart_detail['image']; ?>" alt="">
                    </div>
                    <span class="order_prd_name_details"><?php echo $cart_detail['name']; ?></span>
                </div>
                <span class="order_prd_price"><?php echo number_format($cart_detail['price'], 0, '', '.'); ?> VNĐ</span>
                <div class="order_prd_quantity">
                    <span class="order_span_prd_quantity"><?php echo $cart_detail['quantity']; ?></span>
                </div>
                <span class="order_prd_total_sm"><?php echo number_format($cart_detail['total'], 0, '', '.'); ?> VNĐ</span>
            </div>
        <?php endwhile; ?>
        </div>
        <div class="order_total">
            <p class="order_p_total">Tổng tiền: <?php echo number_format($tongtien, 0, '', '.'); ?> VNĐ</p>
        </div>

        <form method="post" action="orderNow.php?cart_id=<?php echo $cart_id; ?>">
        <div class="order_address_ship">
            <span>Địa chỉ giao hàng: </span>
            <input type="text" name="address" value="" class="order_input_address_ship">
        </div>
        <div class="order_footer">
            <a href="" class="order_btn_back">Quay lại giỏ hàng</a>
            <input type="submit" value="Đặt mua" class="order_btn_order">
        </div>
        </form>

    </div>
</body>
<?php
    if(isset($_SESSION['success'])){
        if($_SESSION['success'] == false){
            echo "<script type='text/javascript'>alert('Chưa nhập địa chỉ');</script>";
            unset($_SESSION['success']);
        }
    }
    ?>
<?php require '../../views/front/common/footer.tpl.php'; ?>
</html>