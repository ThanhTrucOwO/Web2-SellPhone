<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đổi mật khẩu</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="../templates/front/common/menu.css">
    <link rel="stylesheet" href="../templates/front/user/changepass.css">
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
            <div class="profile_change_pass">
                <h3>Đổi mật khẩu</h3>
                <form method="post" action="">
                <div class="old_pass display_inf">
                    <span>Mật khẩu cũ</span>
                    <input type="text" name="passold">
                </div>
                <div class="new_pass display_inf">
                    <span>Mật khẩu mới</span>
                    <input type="text" name="newpass">
                </div>
                <div class="renew_pass display_inf">
                    <span>Nhập lại mật khẩu mới</span>
                    <input type="text" name="renewpass">
                </div>
                <input type="submit" name="save" class="btn_save" value="Lưu" >
                </form>
            </div>
        </div>
    </div>
    <?php require '../views/front/common/footer.tpl.php'; ?>
</body>
</html>