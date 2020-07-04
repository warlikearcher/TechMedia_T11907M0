<?php

$columns = 'order_id';
$sort_order = 'ASC';
if (isset($_GET['sort'])) {
    $sort_order = $_GET['sort'];
}
$txtSearch = '';
if (isset($_POST["txtSearch"]) && $_POST["txtSearch"] != NULL) {
    $txtSearch = $_POST["txtSearch"];
    $sqli = "SELECT * FROM (SELECT orders.*,orders_item.nameProduct,orders_item.quantity FROM orders JOIN orders_item where orders.order_id = orders_item.order_id) AS r  WHERE r.order_id = '$txtSearch' ORDER BY `r`." . $columns . '   ' . $sort_order . " LIMIT $start, $limit ";
    $r = mysqli_query($link, $sqli);
} else {
    //('SELECT * FROM students ORDER BY ' .  $column . ' ' . $sort_order)
    $sqli = "SELECT * FROM (SELECT orders.*,orders_item.nameProduct,orders_item.quantity FROM orders JOIN orders_item where orders.order_id = orders_item.order_id) AS r ORDER BY `r`." . $columns . '   ' . $sort_order . " LIMIT $start, $limit ";
    $r = mysqli_query($link, $sqli);
}

$r = mysqli_query($link, $sqli);
$numberRow = mysqli_num_rows($r);
//$columns = isset($_GET['column']) && ($_GET['column']) == 'idProduct' ? 'nameProduct' : 'rate';
if (isset($_GET['column'])) {
    $columns = $_GET['column'];
}
//$sort_order = isset($_GET['sort']) && ($_GET['sort']) == 'ASC' ? 'DESC' : 'ASC';

$repost = '';
if (isset($_GET['sort']) && $_GET['sort'] == 'DESC') {
    $repost = 'Giảm dần';
} else {
    $repost = 'Tăng dần';
}
if ($sort_order == 'DESC') {
    $sort = 'ASC';
} else {
    $sort = 'DESC';
}