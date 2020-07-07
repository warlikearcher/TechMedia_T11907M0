<?php

include_once '../../controllers/database/connectDB.php';
if (isset($_POST['tableName'])) {
    $table = $_POST["tableName"];

    $r = mysqli_query($link, "Select * from $table");
    while ($field = mysqli_fetch_field($r)) {
        $field_name[] = $field->name;
        $field_type[] = $field->type;
    }

    $count = mysqli_num_fields($r);
    $name = array();
    $value = array();
    foreach (range(0, $count - 1) as $i) {
        if ($i < $count - 1) {
            $name[] = " $field_name[$i]" . ",";
        } else {
            $name[] = " $field_name[$i]";
        }
    }
    foreach (range(0, $count - 1) as $i) {
        if ($field_type[$i] == 3 || $field_type[$i] == 4) {
            $a = $_POST[$field_name[$i]];
            if ($i == 0) {
                $value[] = " $a" . ",";
            } else {
                $value[] = " $a";
            }
        } else {
            $a = "'" . $_POST[$field_name[$i]] . "'";
            if ($i == 0) {
                $value[] = " $a" . ",";
            } else {
                $value[] = " $a";
            }
        }
    }
    $sql = "insert into $table (var_dump($name)) values (var_dump($value))";
    echo $sql;
//    $r = mysqli_query($link, $sql);
//    if ($r == FALSE) {
//        echo $sql;
//        exit();
//    } else {
//        echo "sussses";
//    }
}
?>
