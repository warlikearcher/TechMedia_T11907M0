<?php
require __DIR__ . "/../../config/model/load_history.php";
$numberColumn = mysqli_num_fields($r);
?>
<div class="caption_history">
    <h1 class="text-gray-800">Lịch sử</h1>
</div>
<div class="table-area">
    <div class="double-func">
        <div class="search-product">
            <form method="POST">
                <i>Nhập mã đơn hàng (Yêu cầu chính xác) </i>
                <input id="txtSearch" name="txtSearch">
                <button type="submit" id="Submit-Search" name="Submit-Search">Tìm Kiếm</button>
            </form>
        </div>
        <div class="report-sort">
            <?php
            if ($numberRow <= 1) {
                echo '<h5>Xắp sếp không khả dụng</h5>';
            } else {
                if (isset($_GET['sort']) && $_GET['sort'] == 'ASC') {
                    $characterSort = "&#x25B2";
                } else if (isset($_GET['sort']) && $_GET['sort'] == 'DESC') {
                    $characterSort = "&#x25BC";
                } else {
                    $characterSort = "";
                }
                switch ($columns) {
                    case "idProduct":
                        $nameSort = "ID";
                        break;
                    case "nameProduct":
                        $nameSort = "Tên đơn hàng";
                        break;
                    case "rate":
                        $nameSort = "Tiền";
                        break;
                    default :
                        $nameSort = "";
                        break;
                }
                ?>
                <h3>
                    <span>
                        <?php
                        echo $repost;
                        echo $characterSort;
                        ?>
                    </span>
                </h3>

            <?php } ?>
        </div>
    </div>
    <div class="table-display-area">
        <table border="2" id="dtBasicExample" class="table table-striped table-bordered table-sm table-history myFormat" cellspacing="0" width="100%" >

            <thead>
                <tr>
                    <?php if ($numberRow <= 1 || (isset($txtSearch)) && $txtSearch != NULL) { ?>
                        <th class="th-sm">Mã đơn hàng</th>
                        <th class="th-sm">ID khách hàng</th>
                        <th class="th-sm">Tên khách hàng</th>
                        <th class="th-sm">Số điện thoại</th>
                        <th class="th-sm">Email</th>
                        <th class="th-sm">Địa chỉ</th>
                        <th class="th-sm">Thành phố</th>
                        <th class="th-sm">Tỉnh</th>
                        <th class="th-sm">Mã bưu điện</th>
                        <th class="th-sm">Tổng giá trị</th>
                        <th class="th-sm">Mã giảm giá (nếu có)</th>
                        <th class="th-sm">Danh sách  sản phẩm</th>
                        <th class="th-sm">Số lượng</th>
                        <th class="th-sm">Ngày đặt hàng</th>

                    <?php } else { ?>
                        <th class="th-sm"><a href="?src=History&column=order_id&&sort=<?php echo $sort; ?>" style="text-decoration: none;">Mã đơn hàng </a></th>
                        <th class="th-sm"><a href="?src=History&column=customer_id&&sort=<?php echo $sort; ?>">ID khách hàng</a></th>
                        <th class="th-sm"><a href="?src=History&column=name&&sort=<?php echo $sort; ?>">Tên khách hàng</a></th>
                        <th class="th-sm"><a href="?src=History&column=phone&&sort=<?php echo $sort; ?>">Số điện thoại</a></th>
                        <th class="th-sm"><a href="?src=History&column=email&&sort=<?php echo $sort; ?>">Email</a></th>
                        <th class="th-sm">Địa chỉ</th>
                        <th class="th-sm">Thành phố</th>
                        <th class="th-sm">Tỉnh</th>
                        <th class="th-sm">Mã bưu điện</th>
                        <th class="th-sm"><a href="?src=History&column=total_price&&sort=<?php echo $sort; ?>">Tổng giá trị</a></th>
                        <th class="th-sm">Mã giảm giá (nếu có)</th>
                        <th class="th-sm"><a href="?src=History&column=nameProduct&&sort=<?php echo $sort; ?>">Danh sách sản phẩm</a></th>
                        <th class="th-sm"><a href="?src=History&column=quantity&&sort=<?php echo $sort; ?>">Số lượng</a></th>
                        <th class="th-sm"><a href="?src=History&column=order_date&&sort=<?php echo $sort; ?>">Ngày đặt hàng</a></th>
                    <?php } ?>

                </tr>
            </thead>
            <tbody>

                <?php
                if (isset($_POST["txtSearch"]) && $_POST["txtSearch"] != NULL) {
                    if ($numberRow > 1) {
                        $listProduct = mysqli_fetch_all($r);
                        foreach ($listProduct as $item) {
                            echo '<tr>';
                            echo "<td> $item[0] </td>";
                            echo "<td> $item[1] </td>";
                            echo "<td> $item[2] </td>";
                            echo "<td> $item[3] </td>";
                            echo "<td> $item[4] </td>";
                            echo "<td> $item[5] </td>";
                            echo "<td> $item[6] </td>";
                            echo "<td> $item[7] </td>";
                            echo "<td> $item[8] </td>";
                            echo "<td>" . number_format($item[9], 0) . "</td>";
                            echo "<td> $item[10] </td>";
                            echo "<td> $item[13] </td>";
                            echo "<td> $item[14] </td>";
                            echo "<td> $item[12] </td>";
                            echo '</tr>';
                        }
                    } else if ($numberRow == 1) {
                        $listProduct = mysqli_fetch_row($r);
                        echo '<tr>';
                        echo "<td> $listProduct[0] </td>";
                        echo "<td> $listProduct[1] </td>";
                        echo "<td> $listProduct[2] </td>";
                        echo "<td> $listProduct[3] </td>";
                        echo "<td> $listProduct[4] </td>";
                        echo "<td> $listProduct[5] </td>";
                        echo "<td> $listProduct[6] </td>";
                        echo "<td> $listProduct[7] </td>";
                        echo "<td> $listProduct[8] </td>";
                        echo "<td>" . number_format($listProduct[9], 0) . "</td>";
                        echo "<td> $listProduct[10] </td>";
                        echo "<td> $listProduct[13] </td>";
                        echo "<td> $listProduct[14] </td>";
                        echo "<td> $listProduct[12] </td>";
                        echo '</tr>';
                    } else {
                        ?>
                        <tr>
                            <td colspan="14" style="text-align: center">
                                <div>
                                    <h2>Không tìm thấy đơn hàng</h2>
                                    <a href="index.php?src=History">Reset trong (<span id="time"></span>)</a>
                                </div>
                            </td>
                        </tr>
                    <script>
                        function startTimer(duration, display) {
                            var timer = duration, seconds;
                            setInterval(function () {
                                seconds = parseInt(timer % 60, 10);
                                seconds = seconds < 10 ? "0" + seconds : seconds;

                                display.textContent = seconds;

                                if (--timer < 0) {
                                    window.location.href = './index.php?src=History';
                                }
                            }, 1000);
                        }

                        window.onload = function () {
                            var twenty = 5,
                                    display = document.querySelector('#time');
                            startTimer(twenty, display);
                        };
                    </script>
                    <?php
                }
            } else {
                $listProduct = mysqli_fetch_all($r);
                foreach ($listProduct as $item) {
                    echo '<tr>';
                    echo "<td> $item[0] </td>";
                    echo "<td> $item[1] </td>";
                    echo "<td> $item[2] </td>";
                    echo "<td> $item[3] </td>";
                    echo "<td> $item[4] </td>";
                    echo "<td> $item[5] </td>";
                    echo "<td> $item[6] </td>";
                    echo "<td> $item[7] </td>";
                    echo "<td> $item[8] </td>";
                    echo "<td>" . number_format($item[9], 0) . "đ</td>";
                    echo "<td> $item[10] </td>";

                    echo "<td> $item[13] </td>";
                    echo "<td> $item[14] </td>";
                    echo "<td> $item[12] </td>";
                    echo '</tr>';
                }
            }
            ?>
            </tbody>
            <tfoot>
                <tr>
                    <?php if ($numberRow <= 1 || (isset($txtSearch)) && $txtSearch != NULL) { ?>
                        <th class="th-sm">Mã đơn hàng</th>
                        <th class="th-sm">ID khách hàng</th>
                        <th class="th-sm">Tên khách hàng</th>
                        <th class="th-sm">Số điện thoại</th>
                        <th class="th-sm">Email</th>
                        <th class="th-sm">Địa chỉ</th>
                        <th class="th-sm">Thành phố</th>
                        <th class="th-sm">Tỉnh</th>
                        <th class="th-sm">Mã bưu điện</th>
                        <th class="th-sm">Tổng giá trị</th>
                        <th class="th-sm">Mã giảm giá (nếu có)</th>
                        <th class="th-sm">Danh sách  sản phẩm</th>
                        <th class="th-sm">Số lượng</th>
                        <th class="th-sm">Ngày đặt hàng</th>

                    <?php } else { ?>
                        <th class="th-sm"><a href="?src=History&column=order_id&&sort=<?php echo $sort; ?>">Mã đơn hàng </a></th>
                        <th class="th-sm"><a href="?src=History&column=customer_id&&sort=<?php echo $sort; ?>">ID khách hàng</a></th>
                        <th class="th-sm"><a href="?src=History&column=name&&sort=<?php echo $sort; ?>">Tên khách hàng</a></th>
                        <th class="th-sm"><a href="?src=History&column=phone&&sort=<?php echo $sort; ?>">Số điện thoại</a></th>
                        <th class="th-sm"><a href="?src=History&column=email&&sort=<?php echo $sort; ?>">Email</a></th>
                        <th class="th-sm">Địa chỉ</th>
                        <th class="th-sm">Thành phố</th>
                        <th class="th-sm">Tỉnh</th>
                        <th class="th-sm">Mã bưu điện</th>
                        <th class="th-sm"><a href="?src=History&column=total_price&&sort=<?php echo $sort; ?>">Tổng giá trị</a></th>
                        <th class="th-sm">Mã giảm giá (nếu có)</th>
                        <th class="th-sm"><a href="?src=History&column=nameProduct&&sort=<?php echo $sort; ?>">Danh sách sản phẩm</a></th>
                        <th class="th-sm"><a href="?src=History&column=quantity&&sort=<?php echo $sort; ?>">Số lượng</a></th>
                        <th class="th-sm"><a href="?src=History&column=order_date&&sort=<?php echo $sort; ?>">Ngày đặt hàng</a></th>
                        <?php } ?>

                </tr>
            </tfoot>
        </table>
    </div>



</div>