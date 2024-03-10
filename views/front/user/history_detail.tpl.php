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
    <link rel="stylesheet" href="../templates/front/user/history_detail.css">
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
            <div class="profile_history_details">
                <h3 class="title">Chi tiết đơn hàng <?php echo $order_id; ?></h3>
                <div class="history_details_table">
                    <div class="history_details_column history_details_row">
                        <span class="history_details_name">Tên sản phẩm</span >
                        <span class="history_details_price">Đơn giá</span >
                        <span class="history_details_quantity">Số lượng</span >
                        <span class="history_details_total_sm">Thành tiền</span>
                    </div>
                    <?php while ($order_detail = mysqli_fetch_assoc($order_detail_list)):?>
                    <div class="history_details_row">
                        <div class="history_details_name">
                            <div class="history_details_image">
                                <img src="<?php echo SITE_URL . 'doan/userfiles/' . $order_detail['image']; ?>" alt="">
                            </div>
                            <span class="history_details_name_details"><?php echo $order_detail['name']; ?></span>
                        </div>
                        <span class="history_details_price"><?php echo number_format($order_detail['price'], 0, '', '.'); ?> VNĐ</span>
                        <div class="history_details_quantity">
                            <span><?php echo $order_detail['quantity']; ?></span>
                        </div>
                        <span class="history_details_total_sm"><?php echo number_format($order_detail['total'], 0, '', '.'); ?> VNĐ</span>                        
                    </div>
                    <?php endwhile; ?>
                </div>
                <div class="history_details_footer">
                    <a href="history.php" class="history_details_btn_back">Quay lại</a>
                    <div class="history_details_total">
                        <span>Tổng tiền: <?php echo number_format($total,0,'','.'); ?> VNĐ</span>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <?php require '../views/front/common/footer.tpl.php'; ?>
</body>
</html>