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
<h3 class="title">QUẢN LÝ KHUYẾN MÃI <?php echo $tenchinhanh; ?></h3>
<table width="100%" cellpadding="10">
    <tr>
        <th>ID</th>
        <th>Tên khuyến mãi</th>
        <th>Giá trị (%)</th>
        <th>Trạng thái</th>
        <th>Tác vụ</th>
    </tr>
    <?php while ($khuyenmai = mysqli_fetch_assoc($khuyenmai_list)): ?>
        <tr>
            <td>
                <?php echo $khuyenmai['khuyenmai_id']; ?>
            </td>
            <td>
                <a href="<?php echo SITE_URL . 'doan/admin/khuyenmai/edit.php?khuyenmai_id=' . $khuyenmai['khuyenmai_id']; ?>"><?php echo $khuyenmai['tenkhuyenmai']; ?></a>
            </td>        
            <td>
                <?php echo $khuyenmai['giatri']; ?>
            </td>
            <td>
                <?php echo ($khuyenmai['status'] == 1) ? 'Kích hoạt' : 'Không kích hoạt'; ?>
            </td>
            <td>
                <a href="<?php echo SITE_URL . 'doan/admin/khuyenmai/delete.php?khuyenmai_id=' . $khuyenmai['khuyenmai_id']; ?>">Xóa</a>
            </td>
        </tr>
    <?php endwhile; ?>
</table>
</body>
</html>