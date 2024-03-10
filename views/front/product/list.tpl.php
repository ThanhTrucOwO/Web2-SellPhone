<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Danh mục <?php echo $name; ?></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="templates/front/common/menu.css">
    <link rel="stylesheet" href="templates/front/product/list.css">
    <link rel="stylesheet" href="templates/front/common/footer.css">
    <link rel="stylesheet" href="templates/front/product/phantrang.css">
    <link rel="shortcut icon" type="image/png" href="<?php echo SITE_URL . 'doan/userfiles/favicon-32x32.png'; ?>"/>
</head>
<body>
    <?php require 'views/front/common/menu.tpl.php'; ?>
    <div class="main">
        <div class="timkiem">
            <h4>Bộ lọc</h4>
            <form name="timkiem" method="get" action="product-find.php">
                <div>
                    <p class="type_find">Tên sản phẩm</p>
                    <input type="text" name="keyword_advanced" value="">
                </div>
                <div>
                    <p class="type_find">Khoảng giá từ</p>
                    <input type="number" value="" name="price_start">
                    <p class="type_find">Đến</p>
                    <input type="number" value="" name="price_end">
                </div>
                <div>
                    <p class="type_find">Danh mục</p>
                    <?php while($cate = mysqli_fetch_assoc($category_active_list)): ?>
                    <div>
                        <input type="radio" id="<?php echo $cate['category_id']; ?>" name="drone" value="<?php echo $cate['category_id']; ?>" <?php echo $cate['category_id']==$category_id ? 'checked' : ''?>>
                        <label for="<?php echo $cate['category_id']; ?>" ><?php echo $cate['name']; ?></label>
                    </div>
                    <?php endwhile; ?>
                </div>
            <input type="submit" name="btnTimKiem" id="" value="Tìm kiếm" class="submit_inp">
            </form>
        </div>
        <div class="product">
            <div class="product_hot">
                <div class="view_all_prd">
                    <h3 class="title">DANH MỤC <?php echo $name; ?></h3>
                </div> 
                <div class=" product_list">
                <?php while($product = mysqli_fetch_assoc($product_active_list)): ?>    
                    <div class="prd-items prd-not-sale">
                        <a href="<?php echo SITE_URL . 'doan/product-detail.php?product_id=' . $product['product_id']; ?>">
                            <div class="prd-img">
                                <img src="<?php echo SITE_URL . 'doan/userfiles/' . $product['image']; ?>" alt="">
                            </div> 
                            <div class="prd-info">
                                <h5 class="prd-name"><?php echo $product['name']; ?></h5>
                                <?php if($product['price']!=$product['price_sale']): ?>
                                    <h4 class="prd-price-sale"><s><?php echo number_format($product['price'], 0, '', '.'); ?> VNĐ</s></h4> 
                                <?php endif; ?>
                                <h4 class="prd-price"><?php echo number_format($product['price_sale'], 0, '', '.'); ?> VNĐ</h4>
                            </div>
                        </a>
                    </div>
                <?php endwhile; ?>
                </div>
            </div>
            <div class="phantrang">
                <ul class="phantrang_list">
                <?php if($current_page > 1 && $total_page > 1): ?>
                    <li><a href="product-list.php?category_id=<?php echo $category_id; ?>&page=<?php echo $current_page - 1; ?>">Prev</a></li>
                <?php endif; ?>    
                <?php $i = 1; while($i<=$total_page): ?>
                    <li><a class="<?php echo $i==$current_page?"select":""; ?>" href="product-list.php?category_id=<?php echo $category_id; ?>&page=<?php echo $i; ?>"><?php echo $i; ?></a></li>
                <?php $i = $i + 1; endwhile; ?>
                <?php if($current_page < $total_page && $total_page > 1): ?>
                    <li><a href="product-list.php?category_id=<?php echo $category_id; ?>&page=<?php echo $current_page + 1; ?>">Next</a></li>
                <?php endif; ?>
                </ul>            
            </div>          
        </div>

    </div>
    <?php require 'views/front/common/footer.tpl.php'; ?>
</body>
</html>