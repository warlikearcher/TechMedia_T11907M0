<ul class="navbar-nav sidebar padding-0" id="accordionSidebar">

    <!-- Dashboard Brand -->
    <li class="slidebar-brand-li padding-0 ">
        <a class="sidebar-brand" href="../admins/index.php">TechMedia</a>
    </li>
    <!-- end Dashboard Brand -->


    <!-- Nav Item - Dashboard -->
    <li class="nav-item padding-0 dashboard-item">
        <a class="collapse-item" href="index.php?src=dashBoard">
            <i class="fas fa-fw fa-tachometer-alt"></i>
            <span>Bản điều khiển</span></a>
    </li>
    <li class="nav-item padding-0 content-adm">
        <hr>
        <i>Quản lý</i>
        <hr>
    </li>
    <li class="nav-item padding-0 dashboard-item">
        <a class="collapse-item"<?php if ($role==1||$role==2) {echo 'href="index.php?src=userTable"';}?>>
            <i class="fas fa-users"></i>
            <span>Tài khoản khách</span></a>
    </li>
    <li class="nav-item padding-0 dashboard-item">
        <a class="collapse-item" <?php if ($role==1) {echo 'href="index.php?src=adminTable"';}?> >
            <i class="fas fa-users-cog"></i>
            <span>Quản trị viên</span></a>
    </li>
    <li class="nav-item padding-0 dashboard-item">
        <a class="collapse-item" <?php if ($role==1||$role==3) {echo 'href="index.php?src=productTable"';}?> >
            <i class="fas fa-fw fa-table"></i>
            <span>Sản phẩm</span></a>
    </li>
    <li class="nav-item padding-0 dashboard-item">
        <a class="collapse-item" <?php if ($role==1||$role==3) {echo 'href="index.php?src=news"';}?> >
            <i class="far fa-newspaper"></i>
            <span>Viết tin tức</span></a>
    </li>
    <li class="nav-item padding-0 dashboard-item">
        <a class="collapse-item" <?php if ($role==1||$role==2) {echo 'href="index.php?src=History"';}?> >
            <i class="fas fa-history"></i>
            <span>Lịch sử đặt hàng</span></a>
    </li>
    <li class="nav-item padding-0 dashboard-item">
        <a class="collapse-item" href="config/model/logout_func.php">
            <i class="fas fa-sign-out-alt"></i>
            <span>Đăng xuất</span></a>
    </li>
    
    

</ul>