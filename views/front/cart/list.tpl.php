<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Giỏ hàng của bạn</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="../../templates/front/common/menu.css">
<link rel="stylesheet" href="../../templates/front/cart/list.css">
<link rel="stylesheet" href="../../templates/front/common/footer.css">
<link rel="shortcut icon" type="image/png" href="<?php echo SITE_URL . 'doan/userfiles/favicon-32x32.png'; ?>"/>
</head>
<body>
<?php require '../../views/front/common/menu.tpl.php'; ?>
<div class="cart_main">
        <h3 class="cart_title">Giỏ hàng của bạn</h3>
        <div class="cart_table">
            <div class="cart_column cart_row">
                <span class="cart_prd_name">Giỏ hàng</span >
                <span class="cart_prd_price">Chi Nhánh</span >
                <span class="cart_prd_quantity">Số Lượng</span >
                <span class="cart_prd_total_sm">Thao Tác</span>
            </div>
            <?php while ($cart = mysqli_fetch_assoc($cart_list)): ?>
            <div class="cart_row">
                <div class="cart_prd_name">
                    <span class="cart_prd_name_details"><?php echo $cart['cart_id']; ?></span>
                </div>
                <span class="cart_prd_price"><?php echo $cart['tenchinhanh']; ?></span>
                <div class="cart_prd_quantity">
                    <span><?php echo $cart['quantity']; ?></span>
                </div>
                <div class="cart_prd_del">
                    <a href="<?php echo SITE_URL . 'doan/shopping/cart/listOfChiNhanh.php?cart_id=' . $cart['cart_id']; ?>">Xem chi tiết</a>
                </div>    
            </div>
            <?php endwhile; ?>
        </div>
    </div>
<?php require '../../views/front/common/footer.tpl.php'; ?>
</body>
</html>