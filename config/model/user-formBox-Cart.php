
<div class="user-form-title">
    Giỏ Hàng
</div>
<?php
$r = mysqli_query($link, "SELECT nameProduct,code,SUM(quantity) as quantitySUM,SUM(price) as priceSUM FROM cart WHERE email = '$email' GROUP BY nameProduct");

//var_dump($r);
//exit();
if (($item = mysqli_num_rows($r)) > 0) {
    $total_price = 0;
    ?>
    <div class="his-box">
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th style="text-align:left;">Tên sản phẩm</th>
                    <th style="text-align:right;" >Số lượng</th>
                    <th style="text-align:right;">Giá tổng</th>
                    <th style="text-align:center;" >Hành động</th>
                </tr>
            </thead>
            <tbody>
                <?php while ($rowItem = mysqli_fetch_array($r)) { ?>

                    <tr>
                        <td><?php echo $rowItem["nameProduct"]; ?></td>
                        <td style="text-align:right;"><?php echo $rowItem["quantitySUM"]; ?></td>
                        <td  style="text-align:right;"><?php echo "$ " . number_format($rowItem["priceSUM"], 0); ?></td>
                        <td style="text-align:center;"><a href="customer_info.php?action=remove&id=<?php echo $rowItem["code"]; ?>" class="fa fa-close">Xóa</a></td>
                    </tr>                  
                    <?php
                    $total_price += $rowItem["priceSUM"];
                }
                ?>
            </tbody>
            <tfoot>
                <tr>
                    <td colspan="4" style="text-align: center">Tổng : <?php echo number_format($total_price, 0); ?> đ</td>
                </tr>      
            </tfoot>




        </table>
    </div>
<?php } else {
    ?>
    <div  style = "text-align: center">
        <div class = "no-records" style = "font-size: 35px;color: gray;">Giỏ hàng của bạn trống</div>
        <a href = "../../index.php">Quay lại Trang Chủ để mua hàng ngay</a>
    </div>
    <?php
}