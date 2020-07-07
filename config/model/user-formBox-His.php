<?php
$email = $_SESSION["user-email"];
$query = "SELECT * FROM (select orders.order_id,orders.name,orders.email,orders_item.nameProduct,orders.total_price,orders.order_date from orders INNER JOIN orders_item on orders.order_id = orders_item.order_id) AS r WHERE r.email = '$email';";
$result = mysqli_query($link, $query);
$row = mysqli_fetch_all($result, MYSQLI_BOTH);
$check = mysqli_num_rows($result);
?>

<div class="user-form-title">
    Lịch sử mua hàng
</div>
<div class="his-box">
    <?php if (isset($check) && $check > 0) { ?>

        <table class="table table-sm">
            <thead>
                <tr>
                    <th class="th-sm">ID đơn hàng </th>
                    <th class="th-sm">Tên người đặt hàng</th>
                    <th class="th-sm">Danh sách sản phẩm đơn hàng</th>
                    <th class="th-sm">Tổng đơn hàng</th>
                    <th class="th-sm">Ngày đặt</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($row as $item) { ?>
                <tr>
                <td><?php echo $item[0]; ?></td>
                <td><?php echo $item[1]; ?></td>
                <td><?php echo $item[3]; ?></td>

                <td><?php echo number_format($item[4], 0); ?> VND</td>
                <td><?php echo date('M j Y g:i A', strtotime($item[5])); ?></td>
                </tr>

            <?php } ?>
            </tbody>
        </table>
    <?php } else if (isset($check) && $check == 0) {
        ?>
        <div  style = "text-align: center">
            <div class = "no-records" style = "font-size: 35px;color: gray;">Bạn chưa đặt hàng </div>
            <a href = "../../index.php">Đi mua ngay thôi</a>
        </div>
    <?php } ?>
</div>