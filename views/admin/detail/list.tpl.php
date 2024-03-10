<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Quản trị - Hoá đơn- Danh sách</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="../../templates/admin/common/menu.css">
<link rel="stylesheet" href="../../templates/admin/common/table.css">
<link rel="shortcut icon" type="image/png" href="<?php echo SITE_URL . 'doan/userfiles/favicon-32x32.png'; ?>"/>
</head>
<body>
<?php require '../../views/admin/common/menu.tpl.php'; ?>
<h3 class="title">Chi tiết đơn hàng mã số: <?php echo $order_id; ?></h3>
<table width="100%" cellpadding="10">
    <tr>
        <th>Mã sản phẩm</th>
        <th>Tên sản phẩm</th>
        <th>Đơn giá</th>
        <th>Số lượng</th>
        <th>Tổng tiền</th>
        <th>Tác vụ</th>
    </tr>
    <?php while ($detail = mysqli_fetch_assoc($detail_list)): ?>
        <tr>
            <td>
                <?php echo $detail['product_id']; ?>
            </td>
            <td>
                <?php echo $detail['name']; ?>
            </td>
            <td>
                <?php echo number_format($detail['price'], 0, '', '.'); ?> VNĐ
            </td>
            <td>
                <?php echo $detail['quantity']; ?>
            </td>
            <td>
                <?php echo number_format($detail['total'], 0, '', '.'); ?> VNĐ
            </td>
            <td>
                <a href="<?php echo SITE_URL . 'doan/admin/detail/delete.php?order_id=' . $detail['order_id'] . '&product_id='.$detail['product_id']; ?>">Xóa</a>
            </td>
        </tr>
    <?php endwhile; ?>
</table>
</body>
</html>