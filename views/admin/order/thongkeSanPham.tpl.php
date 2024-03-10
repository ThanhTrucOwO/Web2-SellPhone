<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Thống kê dựa vào giá tiền</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="../../templates/admin/common/menu.css">
<link rel="stylesheet" href="../../templates/admin/common/table.css">
<link rel="stylesheet" href="../../templates/admin/order/thongke.css">
<link rel="shortcut icon" type="image/png" href="<?php echo SITE_URL . 'doan/userfiles/favicon-32x32.png'; ?>"/>
</head>
<body>
<?php require '../../views/admin/common/menu.tpl.php'; ?>
<h3 class="title">Thống kê kinh doanh theo sản phẩm</h3>
<form name="thongke" method="get" action="">
    <p>
        <label>Nhập mã sản phẩm:</label>
        <input type="text" name="product_id" value="<?php if(isset($_GET['product_id'])): echo $_GET['product_id']; endif; ?>">
    </p>      
    <p>
        <input type="submit" value="Thống kê" class="submit">
    </p>
</form>
<?php if (isset($statistic_sanPham)): ?>
    <table width="100%" cellpadding="10">
        <tr>
            <th>ID Đơn hàng</th>
            <th>ID Sản Phẩm</th>
            <th>Hình ảnh</th>
            <th>Tên sản phẩm</th>
            <th>Số lượng</th>
            <th>Giá</th>
            <th>Tổng tiền</th>
            <th>Ngày</th>
        </tr>
        <?php while ($detail = mysqli_fetch_assoc($statistic_sanPham)): ?>
            <tr>
                <td>
                    <a href="<?php echo SITE_URL . 'doan/admin/detail/list.php?order_id=' . $detail['order_id']; ?>"><?php echo $detail['order_id']; ?></a>
                </td>
                <td>
                    <?php echo $detail['product_id']; ?>
                </td>
                <td>
                    <img src="<?php echo SITE_URL . 'doan/userfiles/' . $detail['image']; ?>" width="30" height="30">
                </td>
                <td>
                    <?php echo $detail['name']; ?>
                </td>
                <td>
                    <?php echo $detail['quantity']?>
                </td>
                <td>
                    <?php echo number_format($detail['price'], 0, '', '.'); ?> VNĐ
                </td>
                <td>
                    <?php echo number_format($detail['total'], 0, '', '.'); ?> VNĐ
                </td>
                <td>
                    <?php echo date('d/m/Y', strtotime($detail['created'])); ?>
                </td>
            </tr>
        <?php endwhile; ?>
    </table>
<?php endif; ?>
</body>
</html>