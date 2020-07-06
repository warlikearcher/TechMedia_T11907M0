<?php
include '../database/connectDB.php';
$code = $_POST["code"];
$table = $_POST["table"];
$sql = "select * from $table; ";
$r = mysqli_query($link, $sql);
if ($r == FALSE || mysqli_num_rows($r) == 0) {
    echo false;
    exit();
}
while ($field = mysqli_fetch_field($r)) {
    $field_name[] = $field->name;
}
$sql = "select * from $table where $field_name[0] like '$code' ; ";
$r = mysqli_query($link, $sql);
if ($r == FALSE || mysqli_num_rows($r) == 0) {
    echo false;
    exit();
}
$name = mysqli_fetch_row($r);
$count = count($name) - 2;
$sql = "UPDATE $table SET";
for ($i = $count; $i >= 0; $i--) {
    if ($i==2 || $i==3) {
        continue;
    } else {
    $name[$i] = $_POST["$field_name[$i]"];
    if ($name[$i] == "") {
        continue;
    }
    if ($i==0) {
       $sql .= " $field_name[$i]='$name[$i]'"; 
    } else {
    $sql .= " $field_name[$i]='$name[$i]',";
    }
    }
}
$sql .= " WHERE $field_name[0]='$code';";
$r = mysqli_query($link, $sql);
if ($r == FALSE) {
    echo false;
    exit();
} else {
    echo true;
}
?>

