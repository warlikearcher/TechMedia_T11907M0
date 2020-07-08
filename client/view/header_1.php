<?php
$email = $_SESSION["user-email"];
$sq = "SELECT nameProduct,code,SUM(quantity) as quantitySUM,SUM(price) as priceSUM FROM cart WHERE email = '$email' GROUP BY nameProduct";
$r = mysqli_query($link, $sq);
//check cart + load cart
if ($num = mysqli_num_rows($r) > 0) {
    while ($row = mysqli_fetch_array($r)) {
        $itemArray = array(
            'name' => $row[1],
            'code' => $row[2],
            'quantity' => $row["quantitySUM"],
            'price' => $row["priceSUM"]
                )
        ;
    }
} else {
    $cart_count = 0;
}
?>  
<!--Start Header-->
<div class="web-header">
    <div class="container">
        <div id="main-header">
            <div class="col-md-3 col-sm-2 col-xs-12" id="left-header">
                <div id="logo">
                    <a href="#"><img src="../image/Screen_Image/Logoweb.png" alt="TechMedia"></a>
                </div>
            </div>
            <div class="col-md-5 col-sm-5 col-xs-12" id="center-header">
                <div class="clearfix" id="center-header-top">
                    <ul>
                        <li id="fb"><a href="https://www.facebook.com/TechMedia-107704110962045/" target="_blank"><span class="fa fa-facebook ">acebook</span></a></li>
                        <li id="tw"><a href="https://twitter.com/MinelrealEric" target="_blank"><span class="fa fa-twitter">Twitter</span></a></li>
                        <li id="gmail"><a href="mailto:warlikearcher@gmail.com" target="_blank"><span class="fa fa-google">mail</span></a></li>
                        <li id="promo"><a href="../../index.php?view=news&id=16" target="_blank"><span class="glyphicon glyphicon-gift">Khuyến mãi</span></a>
                        </li>
                    </ul>
                </div>
                <div class="clearfix" id="center-header-search">
                    <div class="wrap">
                        <form action="../../config/model/search.php" method="get">
                            <div class="bk padding-0">
                                <input type="text" id="fname" name="fname" onkeyup="showHint(this.value)" class="textbox padding-0" placeholder="What you need?" tabindex="1">
                                <button type="button" class="textbox-clr padding-0" id="textbox-clr" onClick="lightbg_clr()"></button>
                                <button type="submit" class="query-submit" tabindex="2"><i class="fa fa-search" style="color:#727272; font-size:20px"></i></button>
                                <div id="txtHint"></div>
                            </div>
                        </form>

                    </div>
                </div>
            </div>

            <div class="col-md-4 col-sm-5 col-xs-12" id="right-header">
                <div class="delivery">
                    <img src="../image/Screen_Image/fast.png" alt="giaohanglogo">
                    <span id="rg-column-1">GIAO HÀNG TOÀN QUỐC</span>
                    <span id="rg-column-2">Vận chuyển thần tốc</span>
                </div>
            </div>
        </div>
    </div>
</div>
<!--Finish Header-->
<!--Start menu-->
<div class="nav-menu navbar navbar-inverse">
    <div class="container" >
        <div class="row">
            <div class="col-md-3 left-menu ">


            </div>
            <div class="col-md-6 center-menu" >
                <div>
                    <ul class="nav navbar-nav" id="list-nav">
                        <li class="menu-list"><a href="../../index.php">Trang chủ</a></li>
                        <li class="menu-list"><a href="../../index.php?view=introduce">Giới thiệu</a></li>
                        <li class="menu-list"><a href="../../index.php?view=news&id=16">Khuyến mãi</a></li>
                        <li class="menu-list"><a href="../../index.php?view=contact">Liên hệ</a></li>                      
                        <?php
                        if (isset($_SESSION["user-email"]) && ($role == 0)) {
                            echo '<li class="menu-list"><a href="client/view/customer_info.php" style="color: white; font-family: sans-serif;">' . $name . '</a></li>';
                        } else if (isset($_SESSION["user-email"]) && ($role == 1)) {
                            echo '<li class="menu-list"><a href="././src/ul/admins/index.php">Quản lý/a></li>';
                        } else {
                            echo '<li class="menu-list"><a href="user.php">Đăng nhập</a></li>';
                        }
                        ?>
                    </ul>
                </div>
            </div>
            <div class="col-md-3 right-menu">
                <?php
                if (!isset($_SESSION["user-email"])) {
                    if (!empty($_SESSION["cart_item"])) {
                        $cart_count = count(array_keys($_SESSION["cart_item"]));
                    } else {
                        $cart_count = 0;
                    }
                } else {
                    $email = $_SESSION["user-email"];
                    $re = mysqli_query($link, "SELECT * FROM cart WHERE email = '$email' GROUP BY nameProduct");
                    $cart_count = mysqli_num_rows($re);
                }
                ?>
                <ul class="nav navbar-nav cart_div" id="list-nav">
                    <li class="cart" id="buttonCart"><a href="../../index.php?view=cart">Giỏ Hàng <span class="fa fa-shopping-cart"></span><span>(<?php echo $cart_count; ?>)</span></a></li>
                </ul>

                <ul class="nav navbar-nav cart_div" id="list-nav">
                    <li class="menu-list"><a href="../../index.php?view=orderQuery">Truy vấn đơn hàng</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!--Finish Menu-->