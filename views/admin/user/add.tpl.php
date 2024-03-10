<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Quản trị - Người dùng - Thêm mới</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="../../templates/admin/common/menu.css">
<link rel="stylesheet" href="../../templates/admin/admin/add.css">
<link rel="shortcut icon" type="image/png" href="<?php echo SITE_URL . 'doan/userfiles/favicon-32x32.png'; ?>"/>
</head>
<body>
<?php require '../../views/admin/common/menu.tpl.php'; ?>
<form name="add" method="post" action="">
    <?php if (isset($_SESSION['success'])): ?>
        <p style="color: green;">Người dùng đã được thêm mới thành công!</p>
        <?php unset($_SESSION['success']); ?>
    <?php endif; ?>

    <p>
        <label>Tài khoản:</label>
        <input type="text" name="username" value="">
    </p>
    <p>
        <label>Mật khẩu:</label>
        <input type="password" name="password" value="">
    </p>
    <p>
        <label>Họ tên:</label>
        <input type="text" name="fullname" value="">
    </p>
    <p>
        <label>Email:</label>
        <input type="text" name="email" value="">
    </p>
    <p>
        <label>Trạng thái:</label>
        <input type="checkbox" name="status" value="1">
    </p>
    <p>
        <input type="submit" value="Thêm mới" class="submit">
    </p>
</form>
</body>
</html>