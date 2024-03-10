<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Quản trị - Sản phẩm - Chỉnh sửa</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="../../templates/admin/common/menu.css">
<link rel="stylesheet" href="../../templates/admin/product/add.css">
<link rel="shortcut icon" type="image/png" href="<?php echo SITE_URL . 'doan/userfiles/favicon-32x32.png'; ?>"/>
</head>
<body>
<?php require '../../views/admin/common/menu.tpl.php'; ?>
<form name="edit" method="post" enctype="multipart/form-data" action="#">    
    <p>
        <label>Danh mục:</label>
        <select name="category_id">
            <?php while ($category_active = mysqli_fetch_assoc($category_active_list)): ?>
                <option value="<?php echo $category_active['category_id']; ?>" <?php echo ($category_active['category_id'] == $product['category_id']) ? 'selected="selected"' : ''; ?>>
                    <?php echo $category_active['name']; ?>
                </option>
            <?php endwhile; ?>
        </select>
    </p>
    <p>
        <label>Tên sản phẩm:</label>
        <input type="text" name="name" value="<?php echo $product['name']; ?>">
    </p>
    <p>
        <label>Chi tiết:</label>
        <textarea name="detail"><?php echo $product['detail']; ?></textarea>
    </p>
    <p>
        <label>Hình ảnh:</label>
        <input type="file" name="image">
    </p>
    <p>
        <label>Giá bán:</label>
        <input type="text" name="price" value="<?php echo $product['price']; ?>">
    </p>
    <p>
        <label>Trạng thái:</label>
        <input type="checkbox" name="status" value="1" <?php echo ($product['status'] == 1) ? 'checked="checked"' : ''; ?>>
    </p>
    <p>
        <input type="submit" value="Chỉnh sửa" class="submit">
    </p>
</form>
</body>
</html>