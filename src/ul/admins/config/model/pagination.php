<?php
$quer = "SELECT count(idProduct) as total FROM (
        (
        SELECT
            tbcpulist.idProduct,
            tbcpulist.nameProduct,
            tbcpulist.rate
        FROM
            tbcpulist
    )
UNION
    (
    SELECT
        tbgraphicslist.idProduct,
        tbgraphicslist.nameProduct,
        tbgraphicslist.rate
    FROM
        tbgraphicslist
)
UNION
    (
    SELECT
        tblaptoplist.idProduct,
        tblaptoplist.nameProduct,
        tblaptoplist.rate
    FROM
        tblaptoplist
)
UNION
    (
    SELECT
        tbmainboard.idProduct,
        tbmainboard.nameProduct,
        tbmainboard.rate
    FROM
        tbmainboard
)
UNION
    (
    SELECT
        tbpccaselist.idProduct,
        tbpccaselist.nameProduct,
        tbpccaselist.rate
    FROM
        tbpccaselist
)
UNION
    (
    SELECT
        tbpcmonitor.idProduct,
        tbpcmonitor.nameProduct,
        tbpcmonitor.rate
    FROM
        tbpcmonitor
)
UNION
    (
    SELECT
        tbradiatorslist.idProduct,
        tbradiatorslist.nameProduct,
        tbradiatorslist.rate
    FROM
        tbradiatorslist
)
UNION
    (
    SELECT
        tbramlist.idProduct,
        tbramlist.nameProduct,
        tbramlist.rate
    FROM
        tbramlist
)
UNION
    (
    SELECT
        tbspeaklist.idProduct,
        tbspeaklist.nameProduct,
        tbspeaklist.rate
    FROM
        tbspeaklist
) ) AS r";
$r = mysqli_query($link,$quer);
$row = mysqli_fetch_assoc($r);
$total_records = $row['total'];
$current_page = isset($_GET['page']) ? $_GET['page'] : 1;
$limit = 10;
$total_page = ceil($total_records / $limit);
if ($current_page > $total_page){
    $current_page = $total_page;
}
else if ($current_page < 1){
    $current_page = 1;
}
$start = ($current_page - 1) * $limit;
//$result = mysqli_query($conn, "SELECT * FROM news LIMIT $start, $limit");

