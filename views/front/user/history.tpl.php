<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tài khoản người dùng</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="../templates/front/common/menu.css">
    <link rel="stylesheet" href="../templates/front/user/history.css">
    <link rel="stylesheet" href="../templates/front/common/footer.css">
    <link rel="shortcut icon" type="image/png" href="<?php echo SITE_URL . 'doan/userfiles/favicon-32x32.png'; ?>"/>
</head>
<body>
    <?php require '../views/front/common/menu.tpl.php'; ?>
    <div class="container">
        <div class="left">
            <h4>Tài khoản</h4>
            <ul class="list_choice">
                <li class="hoso"><a href="profile.php">Hồ sơ</a></li>
                <li class="ls"><a href="history.php">Lịch sử mua hàng</a></li>
                <li class="doimatkhau"><a href="changepass.php">Đổi mật khẩu</a></li>
            </ul>
        </div>
        <div class="right">
            <div class="profile_purchase_history">
                <h3>Lịch sử mua hàng</h3>
                <div class="history_table">
                    <div class="history_column history_row">
                        <span class="history_order_id">Mã đơn hàng</span >
                        <span class="history_order_day">Ngày đặt</span >
                        <span class="history_order_status">Tình trạng</span >
                        <span class="history_order_view_details">Xem chi tiết</span>
                    </div>
                    <?php while ($order = mysqli_fetch_assoc($order_list)): ?>
                    <div class="history_row">
                        <span class="history_order_id"><?php echo $order['order_id']; ?></span>
                        <span class="history_order_day"><?php echo date('d-m-Y', strtotime($order['created'])); ?></span>
                        <span class="history_order_status"><?php echo $order['state']; ?></span>
                        <a href="history_detail.php?order_id=<?php echo $order['order_id'];?>" class="history_order_view_details">Chi tiết</a>                        
                    </div>
                    <?php endwhile; ?>
                </div>
            </div>
        </div>
    </div>
    <?php require '../views/front/common/footer.tpl.php'; ?>
</body>
</html>