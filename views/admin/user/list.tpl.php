<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Quản trị - Người dùng - Danh sách</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="../../templates/admin/common/menu.css">
<link rel="stylesheet" href="../../templates/admin/common/table.css">
<link rel="shortcut icon" type="image/png" href="<?php echo SITE_URL . 'doan/userfiles/favicon-32x32.png'; ?>"/>
</head>
<body>
<?php require '../../views/admin/common/menu.tpl.php'; ?>
<h3 class="title">QUẢN LÝ khách hàng <?php echo $tenchinhanh; ?></h3>
<table width="100%" cellpadding="10">
    <tr>
        <th>ID</th>
        <th>Tài khoản</th>
        <th>Họ tên</th>
        <th>Trạng thái</th>
        <th>Ngày tạo</th>
        <th>Ngày chỉnh sửa</th>
        <?php if($xoaKhachHang): ?>
        <th>Tác vụ</th>
        <?php endif; ?>
    </tr>
    <?php while ($user = mysqli_fetch_assoc($user_list)): ?>
        <tr>
            <td>
                <?php echo $user['user_id']; ?>
            </td>
            <?php if($suaKhachHang): ?>
            <td>
                <a href="<?php echo SITE_URL . 'doan/admin/user/edit.php?user_id=' . $user['user_id']; ?>"><?php echo $user['username']; ?></a>
            </td>
            <?php else: ?>
            <td>
                <a href=""><?php echo $user['username']; ?></a>
            </td>
            <?php endif; ?>         
            <td>
                <?php echo $user['fullname']; ?>
            </td>
            <td>
                <?php echo ($user['status'] == 1) ? 'Kích hoạt' : 'Không kích hoạt'; ?>
            </td>
            <td>
                <?php echo date('d/m/Y', strtotime($user['created'])); ?>
            </td>
            <td>
                <?php echo date('d/m/Y', strtotime($user['modified'])); ?>
            </td>
            <?php if($xoaKhachHang): ?>
            <td>
                <a href="<?php echo SITE_URL . 'doan/admin/user/delete.php?user_id=' . $user['user_id']; ?>">Xóa</a>
            </td>
            <?php endif; ?>
        </tr>
    <?php endwhile; ?>
</table>
</body>
</html>