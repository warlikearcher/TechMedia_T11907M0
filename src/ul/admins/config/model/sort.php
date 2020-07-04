<?php
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