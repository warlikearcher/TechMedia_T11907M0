<?php

require __DIR__ . "/../../config/model/load.php";
require __DIR__ . "/../../config/model/sort.php";
?>
<div class="container-fluid">
    <div class="button-area">
        <div class="row">
            <div class="col-md-4">
                <div class="session_card mb-4 padding-0">
                    <div class="card border-left-success shadow">
                        <div class="card-body">
                            <div class=" no-gutters align-items-center">
                                <div class="card-font">
                                    <a href="?action=add_product">Thêm sản phẩm</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="session_card mb-4 padding-0">
                    <div class="card border-left-warning shadow">
                        <div class="card-body">
                            <div class=" no-gutters align-items-center">
                                <div class="card-font">
                                    <a href="?action=addBanner">Thêm Banner</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <div class="table-area">
        <div class="double-func">
            <div class="search-product">
                <form method="POST">
                    <i>Nhập mã sản phẩm (Yêu cầu chính xác) hoặc tên sản phẩm </i>
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
                            $nameSort = "Tên sản phẩm";
                            break;
                        case "rate":
                            $nameSort = "Giá";
                            break;
                        default :
                            $nameSort = "";
                            break;
                    }
                    ?>
                    <h5>Sắp xếp cột: <span><?php echo $nameSort; ?></span></h5>

                    <span><?php
                        echo $repost;
                        echo $characterSort;
                        ?></span>

                <?php } ?>
            </div>
        </div>

        <table border="2" id="dtBasicExample" class="table table-striped table-bordered table-sm" cellspacing="0" width="100%">

            <thead>
                <tr>
                    <?php if ($numberRow <= 1 || (isset($txtSearch)) && $txtSearch != NULL) { ?>
                        <th class="th-sm">ID sản phẩm</th>
                        <th class="th-sm">Tên sản phẩm</th>
                        <th class="th-sm">Giá sản phẩm</th>
                        <th class="th-sm">Hành động</th>
                    <?php } else { ?>
                        <th class="th-sm"><a href="?src=productTable&column=idProduct&&sort=<?php echo $sort; ?>">ID sản phẩm </a></th>
                        <th class="th-sm"><a href="?src=productTable&column=nameProduct&&sort=<?php echo $sort; ?>">Tên sản phẩm</a></th>
                        <th class="th-sm"><a href="?src=productTable&column=rate&&sort=<?php echo $sort; ?>">Giá sản phẩm</a></th>
                        <th class="th-sm">Hành động</th>
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
                            echo "<td>" . number_format($item[2], 0) . "</td>";
                            echo "<td>";
                            echo "<a href='?action=update&id=$item[0]'>Thay đổi</a> | ";
                            echo "<a href='?action=delete&id=$item[0]&&name=$item[1]'>Xóa</a>";
                            echo "</td>";
                            echo '</tr>';
                        }
                    } else if ($numberRow == 1) {
                        $listProduct = mysqli_fetch_row($r);
                        echo '<tr>';
                        echo "<td>" . $listProduct[0] . "</td>";
                        echo "<td>" . $listProduct[1] . "</td>";
                        echo "<td>" . number_format($listProduct[2], 0) . "</td>";
                        echo "<td>";
                        echo "<a href='?action=update&id=$listProduct[0]'>Change</a> | ";
                        echo "<a href='?action=delete&id=$listProduct[0]&&name=$listProduct[1]'>Delete</a>";
                        echo "</td>";
                        echo '</tr>';
                    } else {
                        ?>
                        <tr>
                            <td colspan="4" style="text-align: center">
                                <div>
                                    <h2>Không tìm thấy sản phẩm</h2>
                                    <i>Reset trong (<span id="time"></span>)</i>
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
                                    window.location.href = './index.php?src=productTable';
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
                    echo "<td>" . number_format($item[2], 0) . "</td>";
                    echo "<td>";
                    echo "<a href='?action=update&id=$item[0]'>Thay đổi</a> | ";
                    echo "<a href='?action=delete&id=$item[0]&&name=$item[1]'>Xóa</a>";
                    echo "</td>";
                    echo '</tr>';
                }
            }
            ?>
            </tbody>
            <?php
            if ($numberRow <= 1) {
                
            } else {
                ?>
                <tfoot>
                    <tr>
                        <td colspan="4" style="text-align: center">
                            <div class="pagination">
                                <?php
                                if ($current_page > 1 && $total_page > 1) {
                                    echo '<a href="index.php?src=productTable&page=' . ($current_page - 1) . '">Prev</a> | ';
                                }

                                for ($i = 1; $i <= $total_page; $i++) {
                                    if ($i == $current_page) {
                                        echo '<span>' . $i . '</span> |';
                                    } else {
                                        echo '<a href="index.php?src=productTable&page=' . $i . '">' . $i . '</a> | ';
                                    }
                                }

                                if ($current_page < $total_page && $total_page > 1) {
                                    echo '<a href="index.php?src=productTable&page=' . ($current_page + 1) . '">Next</a>';
                                }
                                ?>
                            </div>
                        </td>
                    </tr>
                </tfoot>
            <?php } ?>

        </table>

    </div>
</div>