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
    <link rel="stylesheet" href="../templates/front/user/profile.css">
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
            <div class="profile_user">
                <h3>Hồ sơ tài khoản</h3>
                <form method="post" action="">
                <div class="user_inf display_inf">
                    <span>Tài khoản</span>
                    <input type="text" name="username" value="<?php echo $user['username']; ?>">
                </div>
                <div class="phone_inf display_inf">
                    <span>Họ và tên</span>
                    <input type="text" name="fullname" value="<?php echo $user['fullname']; ?>">
                </div>
                <div class="email_inf display_inf">
                    <span>Email</span>
                    <input type="email" name="email" value="<?php echo $user['email']; ?>">
                </div>
                <input type="submit" name="save" class="btn_save" value="Lưu">
            </form>
            </div>
        </div>
    </div>
    <?php require '../views/front/common/footer.tpl.php'; ?>
</body>
</html>