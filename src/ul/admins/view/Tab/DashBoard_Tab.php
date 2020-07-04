
<div class="container-fluid">

    <!-- Page Heading -->
    <div class="align-items-center  mb-4">
        <h1 class="text-gray-800">Tổng quát</h1>
    </div>
    <!-- Content Row -->
    <div class="row">
        <!-- Earnings money money money !!!! -->
        <div class="session_card mb-4 padding-0 width-session">
            <div class="card border-left-success shadow">
                <div class="card-body">
                    <div class=" no-gutters align-items-center">
                        <div class="card-font">
                            <?php
                            if (mysqli_num_rows($resultYear) > 0) {
                                $money = mysqli_fetch_assoc($resultYear);
                            }
                            ?>
                            <div class="text-xs font-weight-bold text-success text-uppercase mb-1">Thu nhập năm</div>
                            <div class="h5 mb-0 font-weight-bold text-gray-800"><?php echo number_format($money["totalAll"], 0); ?></div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <div class="session_card mb-4 padding-0 width-session">
            <div class="card border-left-warning shadow">
                <div class="card-body">
                    <div class=" no-gutters align-items-center">
                        <div class="card-font">
                            <?php
                            if (mysqli_num_rows($resultMont) > 0) {
                                $money = mysqli_fetch_assoc($resultMont);
                            }
                            ?>
                            <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">Thu nhập tháng</div>
                            <div class="h5 mb-0 font-weight-bold text-gray-800"><?php echo number_format($money["totalAll"], 0); ?></div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <div class="session_card mb-4 padding-0 width-session">
            <div class="card border-left-danger shadow">
                <div class="card-body">
                    <div class=" no-gutters align-items-center">
                        <div class="card-font">
                            <?php
                            if (mysqli_num_rows($resultDay) > 0) {
                                $money = mysqli_fetch_assoc($resultDay);
                            }
                            ?>
                            <div class="text-xs font-weight-bold text-danger text-uppercase mb-1">Thu nhập tuần</div>
                            <div class="h5 mb-0 font-weight-bold text-gray-800"><?php echo number_format($money["totalAll"], 0); ?></div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Content Row -->

    <div class="row">
        <div class="col-xl-8 col-lg-7">
            <div class="card shadow mb-4">
                <div class="card-body">
                    <div class="chart-area">
                        <div id="line_top_x"></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xl-4 col-lg-5">
            <div class="card shadow mb-4">
                <div class="card-body">
                    <div class="chart-area">
                        <div id="piechart_3d" style="width: 100%; height: 400px;"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
//    left chart
    google.charts.load('current', {'packages': ['line']});
    google.charts.load("current", {packages: ["corechart"]});
    google.charts.setOnLoadCallback(drawChart);

    function drawChart() {

        var data = new google.visualization.DataTable();
        data.addColumn('number', 'Tháng');
        data.addColumn('number', 'Tổng thu');
        data.addRows([
//        [1,  37.8],
//        [2,  30.9],
//        [3,  25.4],
//        [4,  11.7],
//        [5,  11.9]
<?php
if (mysqli_num_rows($resultChart_1) > 0) {
    while ($row = mysqli_fetch_array($resultChart_1)) {
        echo "[" . $row['Month'] . "," . $row['SumMonth'] . "],";
    }
}
?>
        ]);
        var options = {
            chart: {
                title: 'Bảng thống kê đơn hàng',
                subtitle: 'tính theo đơn vị tiền tệ Việt Nam Đồng (VNĐ)'
            },
            width: 680,
            height: 400,
            axes: {
                x: {
                    0: {side: 'top'}
                }
            }
        };
        var chart = new google.charts.Line(document.getElementById('line_top_x'));
        chart.draw(data, google.charts.Line.convertOptions(options));
//        End left chart
//Right chart


        var data = google.visualization.arrayToDataTable([
            ['Sản phẩm', 'Chiếm thị phần'],

<?php
if (mysqli_num_rows($resultChart_2) > 0) {
    while ($row = mysqli_fetch_array($resultChart_2)) {
        echo "['" . $row['nameProduct'] . "'," . $row['count'] . "],";
    }
}
?>
        ]);
        var options = {
            title: 'Thị phần sản phẩm chiếm',
            is3D: true,
        };
        var chart = new google.visualization.PieChart(document.getElementById('piechart_3d'));
        chart.draw(data, options);

//End right chart
    }
</script>