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
<h3 class="title">danh sách danh mục</h3>
<table width="100%" cellpadding="10">
    <tr>
        <th>ID Danh mục</th>
        <th>Tên danh mục</th>
        <th>Trạng thái</th>
        <th>Ngày tạo</th>
        <th>Ngày chỉnh sửa</th>
        <?php if($xoaDanhMuc): ?>
        <th>Tác vụ</th>      
        <?php endif; ?>
    </tr>
    <?php while ($category = mysqli_fetch_assoc($category_list)): ?>
        <tr>
            <td>
                <?php echo $category['category_id']; ?>
            </td>
            <td>
                <?php if($suaDanhMuc): ?>
                <a href="<?php echo SITE_URL . 'doan/admin/category/edit.php?category_id=' . $category['category_id']; ?>"><?php echo $category['name']; ?></a>
                <?php else: ?>
                    <a href="#"><?php echo $category['name']; ?></a>
                <?php endif; ?> 
            </td>
            <td>
                <?php echo ($category['status'] == 1) ? 'Kích hoạt' : 'Không kích hoạt'; ?>
            </td>
            <td>
                <?php echo date('d/m/Y', strtotime($category['created'])); ?>
            </td>
            <td>
                <?php echo date('d/m/Y', strtotime($category['modified'])); ?>
            </td>
            <?php if ($xoaDanhMuc==true): ?>
            <td>
                <a href="<?php echo SITE_URL . 'doan/admin/category/delete.php?category_id=' . $category['category_id']; ?>">Xóa</a>
            </td>
            <?php endif; ?>
        </tr>
    <?php endwhile; ?>
</table>
</body>
</html>