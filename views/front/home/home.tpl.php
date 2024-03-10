<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trang chủ</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="templates/front/common/menu.css">
    <link rel="stylesheet" href="templates/front/home/index.css">
    <link rel="stylesheet" href="templates/front/common/footer.css">
    <link rel="shortcut icon" type="image/png" href="<?php echo SITE_URL . 'doan/userfiles/favicon-32x32.png'; ?>"/>
</head>
<body>
    <?php require 'views/front/common/menu.tpl.php'; ?>
    <?php require 'views/front/common/banner.tpl.php'; ?>
    <div class="product">
        <div class="product_sale">
            <h3 class="title">SALE SẬP SÀN</h3>
            <div class="prd_list_sale">
                <div class="product_list">
                <?php while($hot_sale = mysqli_fetch_assoc($hot_sale_list)): ?>    
                    <div class="prd-items prd-not-sale">
                        <a href="<?php echo SITE_URL . 'doan/product-detail.php?product_id=' . $hot_sale['product_id']; ?>">
                            <div class="prd-img">
                                <img src="<?php echo SITE_URL . 'doan/userfiles/' . $hot_sale['image']; ?>" alt="">
                            </div> 
                            <div class="prd-info">
                                <h5 class="prd-name"><?php echo $hot_sale['name']; ?></h5>
                                <?php if($hot_sale['price']!=$hot_sale['price_sale']): ?>
                                    <h4 class="prd-price-sale"><s><?php echo number_format($hot_sale['price'], 0, '', '.'); ?> VNĐ</s></h4>
                                    <h4 class="prd-price"><?php echo number_format($hot_sale['price_sale'], 0, '', '.'); ?> VNĐ</h4>
                                <?php else: ?>
                                <h4 class="prd-price"><?php echo number_format($hot_sale['price'], 0, '', '.'); ?> VNĐ</h4>
                                <?php endif; ?>
                            </div>
                        </a>
                    </div>
                <?php endwhile; ?>
                </div>
            </div>
        </div>
        <div class="product_hot_phone">
            <div class="view_all_prd">
                <h3 class="title">ĐIỆN THOẠI NỔI BẬT NHẤT</h3>
                <a href="<?php echo SITE_URL . 'doan/product-list.php?category_id=1'; ?>" class="btn_view_all">Xem tất cả</a>
            </div> 
            <div class=" product_list">
            <?php while($hot_phone = mysqli_fetch_assoc($hot_phone_list)): ?>    
                <div class="prd-items prd-not-sale">
                    <a href="<?php echo SITE_URL . 'doan/product-detail.php?product_id=' . $hot_phone['product_id']; ?>">
                        <div class="prd-img">
                            <img src="<?php echo SITE_URL . 'doan/userfiles/' . $hot_phone['image']; ?>" alt="">
                        </div> 
                        <div class="prd-info">
                            <h5 class="prd-name"><?php echo $hot_phone['name']; ?></h5>
                            <?php if($hot_phone['price']!=$hot_phone['price_sale']): ?>
                                <h4 class="prd-price-sale"><s><?php echo number_format($hot_phone['price'], 0, '', '.'); ?> VNĐ</s></h4>
                                <h4 class="prd-price"><?php echo number_format($hot_phone['price_sale'], 0, '', '.'); ?> VNĐ</h4>
                            <?php else: ?>
                            <h4 class="prd-price"><?php echo number_format($hot_phone['price'], 0, '', '.'); ?> VNĐ</h4>
                            <?php endif; ?>
                        </div>
                    </a>
                </div>
            <?php endwhile; ?>
            </div>
        </div>
        <div class="product_hot_laptop">
            <div class="view_all_prd">
                <h3 class="title">LAPTOP NỔI BẬT NHẤT</h3>
                <a href="<?php echo SITE_URL . 'doan/product-list.php?category_id=2'; ?>" class="btn_view_all">Xem tất cả</a>
            </div>      
            <div class="product_list">
            <?php while($hot_laptop = mysqli_fetch_assoc($hot_laptop_list)): ?>    
                <div class="prd-items prd-not-sale">
                    <a href="<?php echo SITE_URL . 'doan/product-detail.php?product_id=' . $hot_laptop['product_id']; ?>">
                        <div class="prd-img">
                            <img src="<?php echo SITE_URL . 'doan/userfiles/' . $hot_laptop['image']; ?>" alt="">
                        </div> 
                        <div class="prd-info">
                            <h5 class="prd-name"><?php echo $hot_laptop['name']; ?></h5>
                            <?php if($hot_laptop['price']!=$hot_laptop['price_sale']): ?>
                                <h4 class="prd-price-sale"><s><?php echo number_format($hot_laptop['price'], 0, '', '.'); ?> VNĐ</s></h4>
                                <h4 class="prd-price"><?php echo number_format($hot_laptop['price_sale'], 0, '', '.'); ?> VNĐ</h4>
                            <?php else: ?>
                            <h4 class="prd-price"><?php echo number_format($hot_laptop['price'], 0, '', '.'); ?> VNĐ</h4>
                            <?php endif; ?>
                        </div>
                    </a>
                </div>
            <?php endwhile; ?>
            </div>
        </div>
        <div class="product_hot_tablet">
            <div class="view_all_prd">
                <h3 class="title">TABLET NỔI BẬT NHẤT</h3>
                <a href="<?php echo SITE_URL . 'doan/product-list.php?category_id=3'; ?>" class="btn_view_all">Xem tất cả</a>
            </div> 
            <div class="product_list">
            <?php while($hot_tablet = mysqli_fetch_assoc($hot_tablet_list)): ?>    
                <div class="prd-items prd-not-sale">
                    <a href="<?php echo SITE_URL . 'doan/product-detail.php?product_id=' . $hot_tablet['product_id']; ?>">
                        <div class="prd-img">
                            <img src="<?php echo SITE_URL . 'doan/userfiles/' . $hot_tablet['image']; ?>" alt="">
                        </div> 
                        <div class="prd-info">
                            <h5 class="prd-name"><?php echo $hot_tablet['name']; ?></h5>
                            <?php if($hot_tablet['price']!=$hot_tablet['price_sale']): ?>
                                <h4 class="prd-price-sale"><s><?php echo number_format($hot_tablet['price'], 0, '', '.'); ?> VNĐ</s></h4>
                                <h4 class="prd-price"><?php echo number_format($hot_tablet['price_sale'], 0, '', '.'); ?> VNĐ</h4>
                            <?php else: ?>
                            <h4 class="prd-price"><?php echo number_format($hot_tablet['price'], 0, '', '.'); ?> VNĐ</h4>
                            <?php endif; ?>
                        </div>
                    </a>
                </div>
            <?php endwhile; ?>
            </div>
        </div>
        <div class="product_hot_headphone">
            <div class="view_all_prd">
                <h3 class="title">TAI NGHE NỔI BẬT NHẤT</h3>
                <a href="<?php echo SITE_URL . 'doan/product-list.php?category_id=4'; ?>" class="btn_view_all">Xem tất cả</a>
            </div> 
            <div class="product_list">
            <?php while($hot_tainghe = mysqli_fetch_assoc($hot_tainghe_list)): ?>    
                <div class="prd-items prd-not-sale">
                    <a href="<?php echo SITE_URL . 'doan/product-detail.php?product_id=' . $hot_tainghe['product_id']; ?>">
                        <div class="prd-img">
                            <img src="<?php echo SITE_URL . 'doan/userfiles/' . $hot_tainghe['image']; ?>" alt="">
                        </div> 
                        <div class="prd-info">
                            <h5 class="prd-name"><?php echo $hot_tainghe['name']; ?></h5>
                            <?php if($hot_tainghe['price']!=$hot_tainghe['price_sale']): ?>
                                <h4 class="prd-price-sale"><s><?php echo number_format($hot_tainghe['price'], 0, '', '.'); ?> VNĐ</s></h4>
                                <h4 class="prd-price"><?php echo number_format($hot_tainghe['price_sale'], 0, '', '.'); ?> VNĐ</h4>
                            <?php else: ?>
                            <h4 class="prd-price"><?php echo number_format($hot_tainghe['price'], 0, '', '.'); ?> VNĐ</h4>
                            <?php endif; ?>
                        </div>
                    </a>
                </div>
            <?php endwhile; ?>
            </div>
        </div>
    </div>
    <?php require 'views/front/common/footer.tpl.php'; ?>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>