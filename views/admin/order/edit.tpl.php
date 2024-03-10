<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Quản trị - Danh mục sản phẩm - Chỉnh sửa</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="../../templates/admin/common/menu.css">
<link rel="stylesheet" href="../../templates/admin/order/edit.css">
<link rel="shortcut icon" type="image/png" href="<?php echo SITE_URL . 'doan/userfiles/favicon-32x32.png'; ?>"/>
</head>
<body>
<?php require '../../views/admin/common/menu.tpl.php'; ?>
<h3 class="title">Chỉnh sửa đơn hàng số: <?php echo $order_id; ?></h3>
<form name="edit" method="post" action="">
    <p>
        <label>Trạng thái:</label>
        <select name="state">
        <?php while($state = mysqli_fetch_assoc($state_list)): ?>
            <option value="<?php echo $state['state_id']; ?>" <?php echo $state['state_id']==$order['state_id']?"selected":"" ?>><?php echo $state['state']; ?></option>;
        <?php endwhile; ?>
        </select>
    </p>   
    <p>
        <label>Địa chỉ:</label>
        <input type="text" name="address" value="<?php echo $order['address']; ?>">
    </p>
    <p>
        <input type="submit" value="Chỉnh sửa" class="submit">
    </p>
</form>
</body>
</html>