<div class="header">
    <div class="hd_1">
        <div class="hd_logo">
            <a href="<?php echo SITE_URL . 'doan/admin/index.php'; ?>"><img src="<?php echo SITE_URL.'doan/userfiles/logo-ddv.png'; ?>" alt=""></a>
        </div>
        <a href="#" class="hd_1_bdr">
        <i class="fa fa-unlock-alt" aria-hidden="true"></i>
            <div>
                <span>Trang Quản lý</span>
            </div>
        </a>
        <a href="#" class="hd_1_bdr">
            <i class="fa fa-user" aria-hidden="true"></i>
            <div>
                <span>Xin chào</span>
                <h6><?php echo $_SESSION['admin']['fullname']; ?></h6>
            </div>
        </a>
            <a href="<?php echo SITE_URL . 'doan/admin/logout.php'; ?>" class="hd_1_bdr">
            <i class="fa fa-sign-out" aria-hidden="true"></i>
            <div>
                <h6>Đăng xuất</h6>
            </div>
        </a>
    </div>
    <div class="hd_2">
        <ul class="main_menu">
            <li><a href="#"><i class="fa fa-product-hunt" aria-hidden="true"></i>Quản lý sản phẩm</a>
                <ul class="sub_menu">
                    <li><a href="<?php echo SITE_URL . 'doan/admin/product/list.php'; ?>">Danh sách sản phẩm</a></li>
                    <li><a href="<?php echo SITE_URL . 'doan/admin/product/add.php'; ?>">Thêm sản phẩm</a></li>
                </ul>
            </li>
            <li><a href="#"><i class="fa fa-list-alt" aria-hidden="true"></i>Quản lý danh mục</a>
                <ul class="sub_menu">
                    <li><a href="<?php echo SITE_URL . 'doan/admin/category/list.php'; ?>">Danh sách danh mục</a></li>
                    <li><a href="<?php echo SITE_URL . 'doan/admin/category/add.php'; ?>">Thêm danh mục</a></li>
                </ul>
            </li>
            <li><a href="#"><i class="fa fa-user" aria-hidden="true"></i>Quản lý nhân viên</a>
                <ul class="sub_menu">
                    <li><a href="<?php echo SITE_URL . 'doan/admin/admin/list.php'; ?>">Danh sách nhân viên</a></li>
                    <li><a href="<?php echo SITE_URL . 'doan/admin/admin/add.php'; ?>">Thêm nhân viên</a></li>
                </ul>
            </li> 
            <li><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Quản lý đơn hàng</a>
                <ul class="sub_menu">
                    <li><a href="<?php echo SITE_URL . 'doan/admin/order/list.php'; ?>">Danh sách đơn hàng</a></li>
                </ul>
            </li> 
            <li><a href="#"><i class="fa fa-user" aria-hidden="true"></i>Quản lý khách hàng</a>
                <ul class="sub_menu">
                    <li><a href="<?php echo SITE_URL . 'doan/admin/user/list.php'; ?>">Danh sách khách hàng</a></li>
                    <li><a href="<?php echo SITE_URL . 'doan/admin/user/add.php'; ?>">Thêm khách hàng</a></li>
                </ul>
            </li>
            <li><a href="#"><i class="fa fa-chevron-circle-down" aria-hidden="true"></i>Quản lý khác</a>
                <ul class="sub_menu">
                    <li><a href="<?php echo SITE_URL . 'doan/admin/khuyenmai/list.php'; ?>">Danh sách khuyến mãi</a></li>
                    <li><a href="<?php echo SITE_URL . 'doan/admin/khuyenmai/add.php'; ?>">Thêm khuyến mãi</a></li>
                    <li><a href="<?php echo SITE_URL . 'doan/admin/order/statistic.php'; ?>">Lọc đơn hàng</a></li>
                    <li><a href="<?php echo SITE_URL . 'doan/admin/order/thongkeSanPham.php'; ?>">Thống kê sản phẩm</a></li>
                    <li><a href="<?php echo SITE_URL . 'doan/admin/order/thongkeLoaiSanPham.php'; ?>">Thống kê loại sản phẩm</a></li>
                </ul>
            </li>
        </ul>
    </div>
    </div>