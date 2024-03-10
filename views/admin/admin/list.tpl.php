<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Quản trị - Danh mục sản phẩm - Danh sách</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="../../templates/admin/common/menu.css">
<link rel="stylesheet" href="../../templates/admin/common/table.css">
<link rel="shortcut icon" type="image/png" href="<?php echo SITE_URL . 'doan/userfiles/favicon-32x32.png'; ?>"/>
</head>
<body>
<?php require '../../views/admin/common/menu.tpl.php'; ?>
<h3 class="title">DANH SÁCH nhân viên <?php echo $tenchinhanh;?></h3>
<table width="100%" cellpadding="10">
    <tr>
        <th>ID</th>
        <th>Tên nhân viên</th>
        <th>Vai trò</th>
        <th>Email</th>
        <th>Trạng thái</th>
        <th>Ngày tạo</th>
        <th>Ngày chỉnh sửa</th>
        <th>Tác vụ</th>      
    </tr>
    <?php while ($admin = mysqli_fetch_assoc($admin_list)): ?>
        <tr>
            <td>
                <?php echo $admin['admin_id']; ?>
            </td>
            <td>
                <a href="<?php echo SITE_URL . 'doan/admin/admin/edit.php?admin_id=' . $admin['admin_id']; ?>"><?php echo $admin['fullname']; ?></a>
            </td>
            <td>
                <?php echo $admin['vaitro_id']; ?>
            </td>
            <td>
                <?php echo $admin['email']; ?>
            </td>
            <td>
                <?php echo ($admin['status'] == 1) ? 'Kích hoạt' : 'Không kích hoạt'; ?>
            </td>
            <td>
                <?php echo date('d/m/Y', strtotime($admin['created'])); ?>
            </td>
            <td>
                <?php echo date('d/m/Y', strtotime($admin['modified'])); ?>
            </td>
            <td>
                <a href="<?php echo SITE_URL . 'doan/admin/admin/delete.php?admin_id=' . $admin['admin_id']; ?>">Xóa</a>
            </td>
        </tr>
    <?php endwhile; ?>
</table>
</body>
</html>