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
<h3 class ="title">Thêm đợt khuyến mãi</h3>
<form name="add" method="post" action="">
    <p>
        <label>Tên đợt khuyến mãi:</label>
        <input type="text" name="tenkhuyenmai" value="">
    </p>
    <p>
        <label>Giá trị khuyến mãi (%):</label>
        <input type="number" name="giatri" value="">
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