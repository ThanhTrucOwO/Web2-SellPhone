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
<h3 class="title">QUẢN LÝ đơn hàng <?php echo $tenchinhanh; ?></h3>
<table width="100%" cellpadding="10">
    <tr>
        <th>ID</th>
        <th>ID Khách Hàng</th>
        <th>Trạng thái</th>
        <th>Ngày tạo</th>
        <th>Địa chỉ</th>
        <th>Tổng tiền</th>
        <th>Xem chi tiết</th>
        <th>Tác vụ</th>
    </tr>
    <?php while ($order = mysqli_fetch_assoc($order_list)): ?>
        <tr>
            <td>
                <a href="<?php echo SITE_URL . 'doan/admin/order/edit.php?order_id=' . $order['order_id']; ?>"><?php echo $order['order_id']; ?></a>
            </td>
            <td>
                <?php echo $order['user_id']; ?>
            </td>
            <td>
                <?php switch ($order['state_id'])
                {
                    case 1:
                        echo "Chưa xử lý";
                        break;
                    case 2:
                        echo "Đã xử lý";
                        break;
                    case 3:
                        echo "Đã thanh toán";
                        break;
                    default:
                        break;
                }
                ?>
            </td>
            <td>
                <?php echo date('d/m/Y', strtotime($order['created'])); ?>
            </td>
            <td>
                <?php echo $order['address']?>
            </td>
            <td>
                <?php echo number_format($order['total'], 0, '', '.'); ?> VNĐ
            </td>
            <td>
                <a href="<?php echo SITE_URL . 'doan/admin/detail/list.php?order_id=' . $order['order_id']; ?>">Xem chi tiết</a>
            </td>      
            <td>
                <a href="<?php echo SITE_URL . 'doan/admin/order/delete.php?order_id=' . $order['order_id']; ?>">Xóa</a>
            </td>
        </tr>
    <?php endwhile; ?>
</table>
</body>
</html>