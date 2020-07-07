<?php

$sql_a = "(
    SELECT
        tbgraphicslist.idProduct,
        tbgraphicslist.nameProduct,
        tbgraphicslist.rate,
        tbgraphicslist.photo1
    FROM
        tbgraphicslist
)
UNION
    (
    SELECT
        tbramlist.idProduct,
        tbramlist.nameProduct,
        tbramlist.rate,
        tbramlist.photo1
    FROM
        tbramlist
)
UNION
    (
    SELECT
        tbradiatorslist.idProduct,
        tbradiatorslist.nameProduct,
        tbradiatorslist.rate,
        tbradiatorslist.photo1
    FROM
        tbradiatorslist
)
UNION
    (
    SELECT
        tbmainboard.idProduct,
        tbmainboard.nameProduct,
        tbmainboard.rate,
        tbmainboard.photo1
    FROM
        tbmainboard
)
UNION
    (
    SELECT
        tbpccaselist.idProduct,
        tbpccaselist.nameProduct,
        tbpccaselist.rate,
        tbpccaselist.photo1
    FROM
        tbpccaselist
)
UNION
    (
    SELECT
        tbspeaklist.idProduct,
        tbspeaklist.nameProduct,
        tbspeaklist.rate,
        tbspeaklist.photo1
    FROM
        tbspeaklist
)
ORDER BY
    RAND()
LIMIT 0, 6;";

$sql_b = "(
    SELECT
        tbcpulist.idProduct,
        tbcpulist.nameProduct,
        tbcpulist.rate,
        tbcpulist.photo1
    FROM
        tbcpulist
)
UNION
    (
    SELECT
        tblaptoplist.idProduct,
        tblaptoplist.nameProduct,
        tblaptoplist.rate,
        tblaptoplist.photo1
    FROM
        tblaptoplist
)
UNION
    (
    SELECT
        tbpcmonitor.idProduct,
        tbpcmonitor.nameProduct,
        tbpcmonitor.rate,
        tbpcmonitor.photo1
    FROM
        tbpcmonitor
)
ORDER BY
    RAND()
LIMIT 0, 6;";


//load_top 4 
$sql_test = "SELECT idProduct,COUNT(*) as count FROM orders_item GROUP BY nameProduct ORDER BY count DESC limit 0,4";
$result_t = mysqli_query($link, $sql_test);




