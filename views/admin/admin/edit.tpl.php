<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Chỉnh sửa thông tin nhân viên</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="../../templates/admin/common/menu.css">
<link rel="stylesheet" href="../../templates/admin/admin/edit.css">
<link rel="shortcut icon" type="image/png" href="<?php echo SITE_URL . 'doan/userfiles/favicon-32x32.png'; ?>"/>
</head>
<body>
<?php require '../../views/admin/common/menu.tpl.php'; ?>
<h3 class="title">CHỈNH SỬA THÔNG TIN NHÂN VIÊN</h3>
<form name="edit" method="post" action="">
    <p>
        <label>Tên đăng nhập:</label>
        <input type="text" name="username" value="<?php echo $admin['username']; ?>">
    </p>
    <p>
        <label>Mật khẩu:</label>
        <input type="text" name="password" value="">
    </p>
    <p>
        <label>Họ và tên:</label>
        <input type="text" name="fullname" value="<?php echo $admin['fullname']; ?>">
    </p>
    <p>
        <label>Chức vụ:</label>          
        <select name="vaitro_id">
            <?php while($vaitro = mysqli_fetch_assoc($vaitro_list)):?>
                <option value="<?php echo $vaitro['vaitro_id']; ?>" <?php echo $vaitro['vaitro_id']==$vaitroID?'selected':''?>>
                    <?php echo $vaitro['tenvaitro']; ?>
                </option>
            <?php endwhile; ?>
        </select>            
    </p>
    <p>
        <label>Email:</label>
        <input type="email" name="email" value="<?php echo $admin['email']; ?>">
    </p>
    <p>
        <label>Trạng thái:</label>
        <input type="checkbox" name="status" value="1" <?php echo ($admin['status'] == 1) ? 'checked="checked"' : ''; ?>>
    </p>
    <p>
        <input type="submit" value="Chỉnh sửa" class="submit">
    </p>
</form>
</body>
</html>