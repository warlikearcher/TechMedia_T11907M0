<?php
//$sql = "select SUM(total_price) as totalAll from `orders`";
//Get day-month-years
$dayEnd = date("d");
$dayFrom = $dayEnd - 7;

$montEnd = date("m");
$montFrom = $montEnd - 1;

$yearEnd = date("Y");
$yearFrom = $yearEnd - 1;

//End day-mon-years
//
//query
$queryDay = "SELECT SUM(total_price) as totalAll FROM orders WHERE DAY(order_date) BETWEEN $dayFrom AND $dayEnd";
$queryMonth = "SELECT SUM(total_price) as totalAll FROM orders WHERE MONTH(order_date) BETWEEN $montFrom AND $montEnd";
$queryYear = "SELECT SUM(total_price) as totalAll FROM orders WHERE YEAR(order_date) BETWEEN $yearFrom AND $yearEnd";


$queryChart_1 = "SELECT
    SUM(total_price) as SumMonth,MONTH(order_date) as Month
FROM
    orders
WHERE
    YEAR(order_date) = '2020'
GROUP BY
    MONTH(order_date)";
//$queryChart_1 = "SELECT
//    SUM(total_price) as SumMonth,DAYOFMONTH(order_date) as Month
//FROM
//    orders
//WHERE
//    YEAR(order_date) = '2020'
//GROUP BY
//    DAYOFMONTH(order_date)";


$queryChart_2_SUM = "SELECT SUM(count) as sumCount FROM (SELECT nameProduct,COUNT(*) as count 
FROM orders_item 
GROUP BY nameProduct 
ORDER BY count DESC) as r;";
$queryChart_2 = "SELECT nameProduct,COUNT(*) as count FROM orders_item GROUP BY nameProduct ORDER BY count DESC;";
//end query


//run query
$resultDay = mysqli_query($link, $queryDay);
$resultMont = mysqli_query($link, $queryMonth);
$resultYear = mysqli_query($link, $queryYear);

$resultChart_1 = mysqli_query($link, $queryChart_1);
$resultChart_2_SUM = mysqli_query($link, $queryChart_2_SUM);
$resultChart_2 = mysqli_query($link, $queryChart_2);

//end run
