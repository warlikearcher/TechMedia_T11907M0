<?php

//$array = array();
//
//foreach (range(0, 9) as $i) {
//    $array[] = 'new element';
//}
//
//print_r($array);

$name = array();
foreach (range(0, 25 - 1) as $i) {
    if ($i < 25 - 1) {
        $name[] = " SAME" . ",";
    } else {
        $name[] = " AVC";
    }
}

var_dump($name);
