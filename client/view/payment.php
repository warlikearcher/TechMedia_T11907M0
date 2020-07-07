<?php
if (isset($_SESSION["user-email"])) {
    $email = $_SESSION["user-email"];
    $info = mysqli_query($link, "SELECT * FROM `tbusers` WHERE EMAIL = '$email'");
    $cart = mysqli_query($link, "SELECT nameProduct,code,SUM(quantity) as quantitySUM,SUM(price) as priceSUM FROM cart WHERE email = '$email' GROUP BY nameProduct");
    $infoAddress = mysqli_fetch_row($info);
    $code_promo1 = isset($_POST['total_promo_code']) ? $_POST['total_promo_code'] : "";
    $r = mysqli_query($link, "SELECT PROVINCE FROM `tbusers` WHERE EMAIL = '$email' ");
    $ro = mysqli_fetch_row($r);
    switch ($ro[0]) {
        case "HN":
            $ship = 30000;
            $reportShip = "30.000VND";
            break;
        case "HCM":
            $ship = 0;
            $reportShip = "Miễn phí";
            break;
        default :
            $ship = 12000;
            $reportShip = "12.000VND";
    }
}
?>

<div class="container">
    <div class="row ">
        <div class="col-md-8">
            <div class="paycontainer">
                <form action="/TechMedia/config/model/addOrder_db.php" method="post">

                    <div class="row">
                        <div class="col-50">
                            <h3>Địa chỉ giao hàng</h3>
                            <?php if (isset($_SESSION["user-email"])) { ?>
                                <input type="hidden" name="total_final" value="<?php echo ($final_total + $ship); ?>">
                                <input type="hidden" name="code_promo" value="<?php echo $code_promo1; ?>">
                            <?php } else { ?>
                                <input type="hidden" name="total_final" value="<?php echo $final_total; ?>">
                            <?php } ?>
                            <label for="fname"><i class="fa fa-user"></i> Tên đầy đủ</label>
                            <input type="text" id="fname" name="firstname" placeholder="Nguyễn Văn Trần Hòa" value="<?php
                            if (isset($infoAddress)) {
                                echo $infoAddress[4];
                            }
                            ?>" >
                            <label for="email"><i class="fa fa-envelope"></i> Email</label>
                            <input type="text" id="email" name="email" placeholder="mmosuper25@gmail.com" value="<?php
                            if (isset($infoAddress)) {
                                echo $infoAddress[1];
                            }
                            ?>">
                            <label for="email"><i class="fa fa-phone"></i> Số điện thoại</label>
                            <input type="text" id="phone" name="phone" placeholder="0123456789" pattern="[0-9]{10}" value="<?php
                            if (isset($infoAddress)) {
                                echo $infoAddress[6];
                            }
                            ?>">
                            <label for="email"><i class="fa fa-address-book-o"></i> Địa chỉ đường</label>
                            <input type="text" id="adr" name="address" placeholder="590 CMT8" value="<?php
                            if (isset($infoAddress)) {
                                echo $infoAddress[5];
                            }
                            ?>">
                            <label for="city"><i class="fa fa-institution"></i>Tỉnh/Thành phố</label>
                            <select class="input-field" id="user-zipcode" name="taskOption">
                                <?php
                                if (isset($acc[9]) || $acc[9] != NULL) {
                                    switch ($acc[9]) {
                                        case "70000": echo'<option value="HCM" selected hidden>Hồ Chí Minh</option>';
                                            break;
                                        case "10000": echo'<option value="HN" selected hidden>Hà Nội</option>';
                                            break;
                                        case "61000": echo'<option value="GL" selected hidden>Gia Lai</option>';
                                            break;
                                        case "77000": echo'<option value="BT" selected hidden>Bình Thuận</option>';
                                            break;
                                        case "78000": echo'<option value="VT" selected hidden>Vũng Tàu</option>';
                                            break;
                                        case "63000": echo'<option value="DK" selected hidden>Đắk Lắk</option>';
                                            break;
                                        case "66000": echo'<option value="LD" selected hidden>Lâm Đồng</option>';
                                            break;
                                        case "91000": echo'<option value="CT" selected hidden>Cần Thơ</option>';
                                            break;
                                        case "84000": echo'<option value="TG" selected hidden>Tiền Giang</option>';
                                            break;
                                        case "81000": echo'<option value="DT" selected hidden>Đồng Tháp</option>';
                                            break;
                                        case "57000": echo'<option value="KH" selected hidden>Khánh Hòa</option>';
                                            break;
                                        case "56000": echo'<option value="PY" selected hidden>Phú Yên</option>';
                                            break;
                                    }
                                } else {
                                    echo '<option value="" selected hidden>Chọn</option>';
                                }
                                ?>

                                <option value="HCM">Hồ Chí Minh</option>
                                <option value="HN">Hà Nội</option>
                                <option value="GL">Gia Lai</option>
                                <option value="BT">Bình Thuân</option>
                                <option value="VT">Vũng Tàu</option>
                                <option value="DK">Đắk Lắk</option>
                                <option value="LD">Lâm Đồng</option>
                                <option value="CT">Cần Thơ</option>
                                <option value="TG">Tiền Giang</option>
                                <option value="DT">Đồng Tháp</option>
                                <option value="KH">Khánh Hòa</option>
                                <option value="PY">Phú Yên</option>
                            </select>
                        </div>
                        <div class="col-50">
                            <h3>Thanh toán</h3>
                            <label for="fname">Thanh toán khi nhận hàng</label>
                        </div>

                    </div>
                    <label>
                        <input type="checkbox" checked="checked" name="sameadr"> Hàng đính kèm hóa đơn 
                    </label>
                    <input type="submit" value="Xác nhận đặt hàng" name="btnSubmit" class="btn">
                </form>
            </div>
        </div>

        <div class="col-md-4">
            <div class="payment_area">
                <?php
                if (isset($_SESSION["user-email"])) {
                    $total_price = 0;
                    ?>
                    <h2>Tổng đơn hàng: </h2>
                    <div class="table-responsive">
                        <table class="table table-bordered">
                            <tr>
                                <th style="text-align:left;">Tên sản phẩm</th>
                            </tr>
                            <?php while ($rowItem = mysqli_fetch_array($cart)) { ?>
                                <tr>
                                    <td><?php echo $rowItem["nameProduct"]; ?></td>
                                </tr>
                                <?php
                                $total_price += $rowItem["priceSUM"];
                            }
                            ?>


                        </table>
                    </div>

                    <h3>Phí vận chuyển: <span class="price" style="color:red"><b><?php echo $reportShip; ?></b></span></h3>
                <?php } else { ?>
                    <?php
                    if (isset($_SESSION["cart_item"])) {
                        $total_price = 0;
                        ?>
                        <h2>Tổng đơn hàng: </h2>
                        <div class="table-responsive">
                            <table class="table table-bordered">
                                <tr>
                                    <th style="text-align:left;">Tên sản phẩm</th>
                                </tr>
                                <?php
                                foreach ($_SESSION["cart_item"] as $item) {
                                    $item_price = $item["quantity"] * $item["price"];
                                    ?>
                                    <tr>
                                        <td><?php echo $item["name"]; ?></td>
                                    </tr>
                                    <?php
                                    $total_price += ($item["price"] * $item["quantity"]);
                                }
                                ?>


                            </table>
                        </div>
                        <?php
                    }
                    ?>

                    <h3>Phí vận chuyển: <span class="price" style="color:red"><b>30.000đ</b></span></h3>
                    <h5>Miễn phí vận chuyển đổi với thành viên: <a href="client/view/user.php">Đăng ký ngay</a></h5>
                <?php } ?>
            </div>
            <hr>
            <?php if (isset($_SESSION["user-email"])) { ?>
            <h2>Tổng tiền cần thanh toán: <span class="price" style="color:red"><b><?php echo number_format($final_total+$ship, 0); ?></b></span></h2>
            <?php }else{ ?>
            <h2>Tổng tiền cần thanh toán: <span class="price" style="color:red"><b><?php echo number_format($final_total + 30000, 0); ?></b></span></h2>
            <?php } ?>
        </div>
    </div>
</div>
<!--SELECT * FROM orders LEFT JOIN orders_item ON orders.order_id = orders_item.order_id-->
