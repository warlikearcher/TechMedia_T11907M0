<?php
include './controllers/database/connectDB.php';
$code = $_GET["id"];
if (isset($_GET["table"])) {
    $table = $_GET["table"];
} else {
    $id_table = substr($_GET['id'], 0, 1);

    switch ($id_table) {
        case "1":
            $table = 'tbgraphicslist';
            break;
        case "2":
            $table = 'tbradiatorslist';
            break;
        case "3":
            $table = 'tbcpulist';
            break;
        case "4":
            $table = 'tblaptoplist';
            break;
        case "5":
            $table = 'tbspeaklist';
            break;
        case "6":
            $table = '';
//            $sql = "select * from $aa where idProduct = '$id' ";
            break;
        case "7":
            $table = 'tbpccaselist';
            break;
        case "8":
            $table = '';
            break;
        case "9":
            $table = 'tbramlist';
            break;
        case "10":
            $talbe = '';
//            $sql = "select * from $aa where idProduct = '$id' ";
            break;
        default: break;
    }
}


$sql = "select * from $table; ";
$r = mysqli_query($link, $sql);
if ($r == FALSE || mysqli_num_rows($r) == 0) {
    echo "false";
    exit();
}
while ($field = mysqli_fetch_field($r)) {
    $field_name[] = $field->name;
}
$sql = "select * from $table where $field_name[0]='$code'; ";
$r = mysqli_query($link, $sql);
if ($r == FALSE || mysqli_num_rows($r) == 0) {
    echo "false";
    exit();
}
$name = mysqli_fetch_row($r);
$count = count($field_name)-1;
?>
<div class="center-div">
    <div class="user-form-box" id="user-form-box">
        <div class="user-form-title">
            THÔNG TIN
        </div>
        <form class="user-input-form" id="user-input-form" method="POST">
            <table class="user-input-table">
                <tbody>
                    <?php
                    for ($i = 0; $i < $count; $i++) {
                        echo "<tr>";
                        echo '<td class = "user-input-lable"><label>' . $field_name[$i] . '</label></td>';
                        echo '<td class = "user-input-field"><input class = "input-field" type = "text" id = "' . $field_name[$i] . '" name = "' . $field_name[$i] . '" value = "' . $name[$i] . '"></td>';
                        echo "</tr>";
                    }
                    ?>
                <p id="result"></p>
                <tr>
                    <td colspan="2"><input type="submit" class="submit-btn" value="Cập nhật"></td>
                </tr>
                </tbody>
            </table>
        </form>
    </div>
</div>

