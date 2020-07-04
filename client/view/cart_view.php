
<div class="container">
    <?php
    if (isset($_SESSION["cart_item"])) {
        $total_price = 0;
        ?>
        <div class="row row_cart">
            <div class="col-md-6 padding-1">

                <form id="formCart">
                    <div>
                        <h3>Giỏ hàng</h3>
                        <a id="btnEmpty" href="index.php?action=empty">Xóa toàn bộ giỏ hàng</a>
                    </div>

                    <div class="table-responsive">
                        <table class="table table-bordered">
                            <tr>
                                <th style="text-align:left;">Tên sản phẩm</th>
                                <th style="text-align:right;" >Số lượng</th>
                                <th style="text-align:right;">Giá tổng</th>
                                <th style="text-align:center;" >Xóa</th>
                            </tr>
                            <?php
                            foreach ($_SESSION["cart_item"] as $item) {
                                $item_price = $item["quantity"] * $item["price"];
                                ?>
                                <tr>
                                    <td><?php echo $item["name"]; ?></td>
                                    <td style="text-align:right;"><?php echo $item["quantity"]; ?></td>
                                    <td  style="text-align:right;"><?php echo "$ " . number_format($item_price, 0); ?></td>
                                    <td style="text-align:center;"><a href="index.php?action=remove&id=<?php echo $item["code"]; ?>" class="fa fa-close">Xóa</a></td>
                                </tr>
                                <?php
                                $total_price += ($item["price"] * $item["quantity"]);
                            }
                            ?>


                        </table>

                    </div>
                </form>
                <div class="promo_cart">
                    <div class="row">
                        <div class="col-md-6 promo_area">
                            <form method="post" action="">
                                <div class="input_promo_code">
                                    <h3>Nhập mã giảm giá:</h3>
                                    <input class="promo_in" name="promo_code" <?php if (isset($code_promo)) {
                            echo 'value="' . $code_promo . '"';
                        } ?> <?php if (!isset($_SESSION['user'])) {
                            echo 'disabled';
                            } ?> >
                                    <button class=" btn-danger" name="add_promo" type="submit">Xác nhận</button>
                                    <i>Nhập mã giảm giá chỉ khả dụng với thành viên: <a href="?view=register" style="color: blue;">Đăng ký ngay</a></i>


                                </div>
                            </form>
                        </div>
                        <div class="col-md-6">
                            <div class="total_pay">
                                <form method="post">
                                    <table class="table table-bordered">
    <?php if (isset($promo_percent) && $promo_percent != 0) { ?>
                                            <tr>
                                                <th width="40%">Tổng đơn hàng sau khi nhập mã</th>
                                            </tr>

                                            <tr>
                                                <th><?php echo number_format($total_promo = $total_price - ($total_price * $promo_percent), 0); ?> đ</th>

                                            </tr>
    <?php } else { ?>
                                            <tr>
                                                <th width="40%">Tổng đơn hàng</th>
                                            </tr>

                                            <tr>
                                                <th><?php echo number_format($total_promo = $total_price, 0); ?> đ</th>

                                            </tr>
    <?php } ?>
                                    </table>
                                </form>

                            </div>
                        </div>
                    </div>


                    <div class="button_sub">
                        <?php
                        if (isset($promo_percent)) {
                            $total_promo = $total_price - ($total_price * $promo_percent);
                        } else {
                            $total_promo = $total_price;
                        }
                        ?>
                        <form method="post" action="?view=payment">
                            <input class="total_pro" type="hidden" name="total_pro" value="<?php echo $total_promo; ?>">
                            <button class="btn btn-success" type="submit" name="submitCart" id="submitCart" value="Thanh Toán">Thanh Toán</button>
                        </form>

                    </div>
                </div>
            </div>
            <div class="col-md-6 img_cart">
                <div class="imgLeft">
                    <img src="/TechMedia/image/Screen_Image/cart-list.png"/>
                </div>

            </div>
        </div>
    <?php
} else {
    ?>
        <div class="container" style="text-align: center">
            <div class="no-records" style="font-size: 35px;color: green;">Giỏ hàng của bạn trống</div>
            <a href="./index.php">Quay lại Trang Chủ (<span id="time"></span>)</a>
        </div>
        <script>
            function startTimer(duration, display) {
                var timer = duration, seconds;
                setInterval(function () {
                    seconds = parseInt(timer % 60, 10);
    //                    seconds = seconds < 10 ? "0" + seconds : seconds;

                    display.textContent = seconds;

                    if (--timer < 0) {
                        window.location.href = './index.php';
                    }
                }, 1000);
            }

            window.onload = function () {
                var twenty = 10,
                        display = document.querySelector('#time');
                startTimer(twenty, display);
            };
        </script>

    <?php
}
?>
</div>




