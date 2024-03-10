<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Quản trị - Sản phẩm - Danh sách</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="../../templates/admin/common/menu.css">
<link rel="stylesheet" href="../../templates/admin/common/table.css">
<link rel="shortcut icon" type="image/png" href="<?php echo SITE_URL . 'doan/userfiles/favicon-32x32.png'; ?>"/>
</head>
<body>
<?php require '../../views/admin/common/menu.tpl.php'; ?>
<h3 class="title">danh sách SẢN PHẨM <?php echo $tenchinhanh; ?></h3>
<table width="100%" cellpadding="10">
    <tr>
        <th>ID</th>
        <th>Hình ảnh</th>
        <th>Tên sản phẩm</th>
        <th>Giá bán</th>
        <th>Số lượng </th>
    </tr>
    <?php while ($product = mysqli_fetch_assoc($product_list)): ?>
        <tr>
            <td>
                <?php echo $product['product_id']; ?>
            </td>
            <td>
                <img src="<?php echo SITE_URL . 'doan/userfiles/' . $product['image']; ?>" width="30" height="30">
            </td>
            <td>
                <a href="<?php echo SITE_URL . 'doan/admin/product/editQuantity.php?product_id=' . $product['product_id']; ?>"><?php echo $product['name']; ?></a>
            </td>
            <td>
                <?php echo number_format($product['price'], 0, '', '.'); ?> VNĐ
            </td>
            <td>
                <?php echo $product['quantity']; ?>
            </td>
        </tr>
    <?php endwhile; ?>
</table>
</body>
</html>