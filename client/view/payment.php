<?php
if (isset($_SESSION["user-email"])) {
    $email = $_SESSION["user-email"];
    $info = mysqli_query($link, "SELECT * FROM `tbusers` WHERE EMAIL = '$email'");
    $cart = mysqli_query($link, "SELECT nameProduct,code,SUM(quantity) as quantitySUM,SUM(price) as priceSUM FROM cart WHERE email = '$email' GROUP BY nameProduct");
}
$infoAddress = mysqli_fetch_row($info);
$code_promo1 = isset($_POST['total_promo_code']) ? $_POST['total_promo_code'] : "";
?>
<div class="container">
    <div class="row ">
        <div class="col-md-8">
            <div class="paycontainer">
                <form action="/TechMedia/config/model/addOrder_db.php" method="post">

                    <div class="row">
                        <div class="col-50">
                            <h3>Địa chỉ giao hàng</h3>
                            <input type="hidden" name="total_final" value="<?php echo $final_total; ?>">
                            <input type="hidden" name="code_promo" value="<?php echo $code_promo1; ?>">
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
                            <input type="text" id="city" name="city" placeholder="Hồ Chí Minh city" value="<?php
                            if (isset($infoAddress)) {
                                echo $infoAddress[9];
                            }
                            ?>">
                            <input type="text" list="cars" />
                            <datalist id="cars">
                                <option>HCM</option>
                                <option>HN</option>
                                <option>DN</option>
                            </datalist>
                            <input type="hidden" id="zip" name="zip" value="<?php
                            if (isset($infoAddress)) {
                                switch ($infoAddress[9]) {
                                    case "HCM":
                                        echo '630000';
                                        break;
                                }
                            }
                            ?>" hidden>
                        </div>
                        <div class="col-50">
                            <h3>Thanh toán</h3>
                            <label for="fname">Chấp nhận thanh toán</label>
                            <div class="btn_payment_icon">

                                <div class="icon-payment">
                                    <i id="momoBtn"><img src="/TechMedia/image/Screen_image/logo-momo.jpg"/></i>
                                </div>
                                <div class="icon-payment">
                                    <i id="noPayBtn">Thanh toán khi nhận hàng</i>
                                </div>
                            </div>
                            <div id="momoForm">
                                <div class="itemQR">
                                    <img src="/TechMedia/image/Image_Product/QR/QR1.png" class="imgQR">
                                </div>
                                <div>
                                    <input>
                                </div>
                            </div>
                            <div id="noPay">Bạn đã chọn thanh toán khi nhận hàng</div>

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
                <?php if (isset($_SESSION["user-email"])) {
                    $total_price = 0; ?>
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
                    <h3>Phí vận chuyển: <span class="price" style="color:red"><b>24.000đ</b></span></h3>
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
                    <h3>Phí vận chuyển: <span class="price" style="color:red"><b>24.000đ</b></span></h3>
                    <h5>Miễn phí vận chuyển đổi với thành viên: <a href="?view=register">Đăng ký ngay</a></h5>
<?php } ?>
            </div>
            <hr>
            <h2>Tổng tiền cần thanh toán: <span class="price" style="color:red"><b><?php echo number_format($final_total, 0); ?></b></span></h2>
        </div>
    </div>
</div>
<!--SELECT * FROM orders LEFT JOIN orders_item ON orders.order_id = orders_item.order_id-->
<script>


    $(document).ready(function () {
        $("#momoForm").toggle();
        $("#noPay").toggle();

        $("#momoBtn").click(function () {
            $("#momoForm").toggle();
            $("#noPay").hide();
        });
        $("#noPayBtn").click(function () {
            $("#momoForm").hide();
            $("#noPay").toggle();
        });
    });

</script>