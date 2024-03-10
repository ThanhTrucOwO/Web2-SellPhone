<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quản lý</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="../templates/admin/common/login.css">
    <link rel="shortcut icon" type="image/png" href="<?php echo SITE_URL . 'doan/userfiles/favicon-32x32.png'; ?>"/>
</head>
<body>
    <div class="container">
        <div class="title">
            <h3>Quản trị viên đăng nhập</h3>
        </div>
        <div class="dang_nhap">
            <form name="login" method="post" action="">
                <div class="email_field">
                    <p>Tài khoản</p>
                    <input type="text" name="username" id="" class="inp_data" value="">
                </div>
                <div class="pass_field">
                    <p>Mật khẩu</p>
                    <input type="password" name="password" id="" class="inp_data" value="">
                </div>
                <input type="submit" value="Đăng nhập" class="btn_login">
            </form>

        <?php
            if (isset($error) && $error == true)
                echo "<span class='thongbao'>*Sai tài khoản hoặc mật khẩu </span>";
        ?>
        <a href="" class="fg_passwd">Quên mật khẩu?</a>
        </div>
    </div>
</form>
</body>
</html>