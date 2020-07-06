<?php
$id = isset($_GET['id']) ? $_GET['id'] : '';
$id_table = substr($id, 0, 1);
$nameTable = '';
switch ($id_table) {
    case "1":
        $nameTable = 'tbgraphicslist';
        break;
    case "2":
        $nameTable = 'tbradiatorslist';
        break;
    case "3":
        $nameTable = 'tbcpulist';
        break;
    case "4":
        $nameTable = 'tblaptoplist';
        break;
    case "5":
        $nameTable = 'tbspeaklist';
        break;
    case "6":
        $nameTable = '';
        break;
    case "7":
        $nameTable = 'tbpccaselist';
        break;
    case "8":
        $nameTable = '';
//            $sql = "select * from $aa where idProduct = '$id' ";
        break;
    case "9":
        $nameTable = 'tbramlist';
        break;
}
$sql = "select * from $nameTable where idProduct = '$id'; ";
$sql_same = "select idProduct,nameProduct,rate,photo1 from $nameTable";

$result = mysqli_query($link, $sql);
$result_same = mysqli_query($link, $sql_same);

$row = mysqli_fetch_assoc($result);
$row_same = mysqli_fetch_all($result_same);
?>
<div class="container main">
    <div class="product-detail">
        <div class="container">
            <div class="product-detail-left">
                <div class="sp-loading">
                    <img src="image/Screen_Image/sp-loading.gif">
                    Loading Images
                </div>
                <div class="sp-wrap">
                    <a href="<?php echo $row["photo1"]; ?>"><img src="<?php echo $row["photo1"]; ?>" alt=""></a>
                    <a href="<?php echo $row["photo2"]; ?>"><img src="<?php echo $row["photo2"]; ?>" alt=""></a>
                    <a href="<?php echo $row["photo3"]; ?>"><img src="<?php echo $row["photo3"]; ?>" alt=""></a>
                    <a href="<?php echo $row["photo4"]; ?>"><img src="<?php echo $row["photo4"]; ?>" alt=""></a>
                    <a href="<?php echo $row["photo5"]; ?>"><img src="<?php echo $row["photo5"]; ?>" alt=""></a>
                </div>
            </div>
            <div class="product-detail-right">
                <form method="post" action="?view=detail&action=add&&id=<?php echo $row["idProduct"]; ?>">
                    <input type="hidden" name="quantity" value="1" class="form-control" />
                    <input type="hidden" name="hidden_name" value="<?php echo $row["nameProduct"]; ?>" />
                    <input type="hidden" name="hidden_price" value="<?php echo $row["rate"]; ?>" />
                    <h3><?php echo $row["nameProduct"]; ?><br><small>Code : <?php echo $row["idProduct"]; ?></small></h3>
                    <h5><b>Giá :</b> <i class="fas fa-dollar-sign"></i> <?php echo number_format($row["rate"], 0); ?> đ</h5>
                    <h5><b>Thương Hiệu : </b> <?php echo ($manufacturer = isset($row["manufacturer"]) ? $row["manufacturer"] : 'Chưa cập nhật'); ?></h5>
                    <br>
                    <a class="buynow" name="add_to_cart" href="?view=detail&action=add&&id=<?php echo $row["idProduct"]; ?>">
                        <span class="fa fa-shopping-cart"></span>
                        <input type="submit" name="add_to_cart" value="Thêm vào giỏ hàng">
                    </a>
                </form>


            </div>
            <?php
            $mysql = "select * from $nameTable where idProduct = '$id'; ";
            $rs = mysqli_query($link, $mysql);
            $numCol = mysqli_num_fields($rs);
            $row = mysqli_fetch_row($rs);
            ?>
            <div class="product-detail-feature">
                <h3>Thông số</h3>
                <?php
                for ($i = 0; $i < $numCol; $i++) {
                    if (($i == "0") || ($i == "1") || ($i == "2") || ($i == "3") || ($i == $numCol - 7) || ($i == $numCol - 6) || ($i == $numCol - 5) || ($i == $numCol - 4) || ($i == $numCol - 3) || ($i == $numCol - 2) || ($i == $numCol - 1)) {
                        continue;
                    } else {
                        ?>
                        <p><?php echo $row[$i]; ?></p>
                    <?php }
                }
                ?>
            </div>
        </div>
    </div>

    <div class="news">
        <div class="container">
            <h3>Sản phẩm tương tự</h3>
            <div class="owl-carousel">
<?php foreach ($row_same as $item): ?>
                    <div class="item">
                        <img src="<?php echo $item[3]; ?>">
                        <div class="name-pr">
                            <h4 class="item-title"><a href="?view=detail&id=<?php echo $item[0]; ?>"><?php echo $item[1]; ?></a></h4>
                        </div>
                        <div class="span-price">
                            <span class="item-price"><?php echo number_format($item[2], 0); ?> đ</span>
                        </div>
                    </div>
<?php endforeach; ?>
            </div>
        </div>
    </div>

</div>

