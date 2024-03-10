<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Sản phẩm - Chi tiết</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="templates/front/common/menu.css">
<link rel="stylesheet" href="templates/front/product/detail.css">
<link rel="stylesheet" href="templates/front/common/footer.css">
<link rel="shortcut icon" type="image/png" href="<?php echo SITE_URL . 'doan/userfiles/favicon-32x32.png'; ?>"/>
</head>
<body>
<?php require 'views/front/common/menu.tpl.php'; ?>
<div class="main">
    <div class="anh">
        <img src="<?php echo SITE_URL . 'doan/userfiles/' . $product_active['image']; ?>" alt="">
    </div>
    <div class="thongtin">
        <h2 class="prd-name"><?php echo $product_active['name']; ?></h2>
        <p class="prd-detail"><?php echo $product_active['detail']; ?></p>
        <?php if ($product_active['price']!=$product_active['price_sale']): ?>
            <h4 class="prd-price-sale">Giá gốc: <s><?php echo number_format($product_active['price'], 0, '', '.'); ?> VNĐ</s></h4>
            <h4 class="prd-price">Chỉ còn: <?php echo number_format($product_active['price_sale'], 0, '', '.'); ?> VNĐ</h4>
        <?php else: ?>
            <h4 class="prd-price">Giá: <?php echo number_format($product_active['price_sale'], 0, '', '.'); ?> VNĐ</h4>
        <?php endif; ?>
        <form method="post" action="shopping/cart-detail/add.php?product_id=<?php echo $product_active['product_id']; ?>">
            Số lượng : <input type="number" class="quantity" name="quantity" value="1" min="1" max ="<?php echo get_quantity_by_chinhanh_id_and_product_id($chinhanh_id,$product_id, $connect) ?>">
            <input type="submit" class="muangay" value="Mua ngay">
        </form>
    </div>
    <?php
        if(isset($_SESSION['success'])){
            if($_SESSION['success'] == true){
                echo "<script type='text/javascript'>alert('Sản phẩm đã được thêm vào giỏ hàng');</script>";
                unset($_SESSION['success']);
            }
            else
            {
                echo "<script type='text/javascript'>alert('Sản phẩm đã tồn tại trong giỏ hàng');</script>";
                unset($_SESSION['success']);
            }
        }
    ?>
</div>
</body>
</html>