<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Quản trị - Sản phẩm - Chỉnh sửa</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="../../templates/admin/common/menu.css">
<link rel="stylesheet" href="../../templates/admin/product/editQuantity.css">
<link rel="shortcut icon" type="image/png" href="<?php echo SITE_URL . 'doan/userfiles/favicon-32x32.png'; ?>"/>
</head>
<body>
<?php require '../../views/admin/common/menu.tpl.php'; ?>
<h3 class="title">Chỉnh sửa số lượng sản phẩm</h3>
<form name="edit" method="post" enctype="multipart/form-data" action="">    
    <p>
        <label>Tên sản phẩm:</label>
        <span><?php echo $product['name']; ?></span>
    </p>
    <!-- <p>
        <label>Chi tiết:</label>
        <span><?php echo $product['detail']; ?></span>
    </p> -->
    <p>
        <label>Giá bán:</label>
        <span><?php echo $product['price']; ?></span>
    </p>
    <p>
        <label>Số lượng:</label>
        <input type="number" name="quantity" value="<?php echo $product['quantity']; ?>">
    </p>
    <p>
        <input type="submit" value="Chỉnh sửa" class="submit">
    </p>
</form>
</body>
</html>