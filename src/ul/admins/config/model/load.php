<?php

$columns = 'idProduct';
$sort_order = 'ASC';
if (isset($_GET['sort'])) {
    $sort_order = $_GET['sort'];
}
$txtSearch = '';
if (isset($_POST["txtSearch"]) && $_POST["txtSearch"] != NULL) {
    $txtSearch = $_POST["txtSearch"];
    $sqli = "SELECT
    *
FROM
    (
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
)
    ) AS r  WHERE r.idProduct = '$txtSearch' OR r.nameProduct LIKE '%$txtSearch%' ORDER BY `r`." . $columns . '   ' . $sort_order . " LIMIT $start, $limit ";
    $r = mysqli_query($link, $sqli);
} else {
    //('SELECT * FROM students ORDER BY ' .  $column . ' ' . $sort_order)
    $sqli = "SELECT
    *
FROM
    (
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
)
    ) AS r ORDER BY `r`." . $columns . '   ' . $sort_order . " LIMIT $start, $limit ";
    $r = mysqli_query($link, $sqli);
}

$r = mysqli_query($link, $sqli);
$numberRow = mysqli_num_rows($r);
