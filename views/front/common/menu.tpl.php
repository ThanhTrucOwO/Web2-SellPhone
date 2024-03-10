<div class="header">
    <div class="hd_1">
        <div class="hd_logo">
            <a href="<?php echo SITE_URL.'doan/index.php'; ?>"><img src="<?php echo SITE_URL.'doan/userfiles/logo-ddv.png'; ?>" alt=""></a>
        </div>

        <select name="" onchange="location = this.value;" class="chinhanh">
            <?php while ($chinhanh = mysqli_fetch_assoc($chinhanh_active_list)): ?>
                <option value="<?php echo SITE_URL . 'doan/chinhanh/chuyenchinhanh.php?chinhanh_id=' . $chinhanh['chinhanh_id']; ?>"<?php echo $chinhanh['chinhanh_id'] == $chinhanh_id? ' selected':'';?>><?php echo $chinhanh['tenchinhanh']; ?></option>
            <?php endwhile; ?>
        </select>
        <a href="" class="hd_1_bdr">
            <i class="fa fa-phone" aria-hidden="true"></i>
            <div>
                <span>Hotline hỗ trợ</span>
                <h6>24032002</h6>
            </div>
        </a>
        <a href="<?php echo SITE_URL . 'doan/user/profile.php'; ?>" class="hd_1_bdr">
            <i class="fa fa-user" aria-hidden="true"></i>
            <?php if(isset($_SESSION['user'])): ?>
                <div>
                    <span>Xin chào</span>
                    <h6><?php echo $_SESSION['user']['fullname']; ?></h6>
                </div>
            <?php else: ?>
                <div>
                    <span>Đăng nhập/ Đăng ký</span>
                    <h6>Thành Viên</h6>
                </div>
            <?php endif; ?>
        </a>
        <?php if(isset($_SESSION['user'])): ?>
            <a href="<?php echo SITE_URL . 'doan/admin/user/logout.php'; ?>" class="hd_1_bdr">
            <i class="fa fa-sign-out" aria-hidden="true"></i>
            <div>
                <h6>Đăng xuất</h6>
            </div>
        </a>
        <?php endif; ?>
        <a href="<?php echo SITE_URL . 'doan/shopping/cart/list.php'; ?>"><i class="fa fa-shopping-bag ic_giohang"></i></a>
    </div>
    <div class="hd_2">
        <ul class="main_menu">
            <?php while($category = mysqli_fetch_assoc($category_list)): ?>
            <li><a href="<?php echo SITE_URL . 'doan/product-list.php?category_id='.$category['category_id']; ?>"><i class="<?php echo $category['class_icon']; ?>" aria-hidden="true"></i><?php echo $category['name']; ?></a></li>
            <?php endwhile; ?>
        </ul>
    </div>
    </div>