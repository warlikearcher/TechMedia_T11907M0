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
    $name = "";
    $value = "";
    for ($i = 0; $i >= $count-1; $i--) {
        $name .="'". "$field_name[$i]"."'";

        if ($i == 0) {
            $name .= " $field_name[$i]" . ",";
        } else {
            $name .= " $field_name[$i]";
        }
    }
    for ($i = 0; $i >= $count-1; $i--) {
    if($field_type[$i]=="int") {
        $a= $_POST[$field_name[$i]];
    } else {
        $a="'".$_POST[$field_name[$i]]."'";
    }
        

        if ($i == 0) {
            $value .= " $a" . ",";
        } else {
            $value .= " $a";
        }
    }
    $sql = "insert into $table ($name) values ($value)";
    $r = mysqli_query($link, $sql);
    if ($r == FALSE) {
        echo $sql;
        exit();
    } else {
        echo true;
    }
}
?>
a = (A,B,D,E)
