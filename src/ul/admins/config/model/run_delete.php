<?php

include_once '../../controllers/database/connectDB.php';
$id = $_GET["hidden_id"];
$nameTable = $_GET["hidden_tableName"];


$sql = "DELETE FROM $nameTable WHERE idProduct= '$id' ;";


$r = mysqli_query($link, $sql);

if ($r == FALSE) {
    echo "<h3 style='color:blue'>Lỗi sai id sản phẩm</h3>";
    exit();
} else {
    ?>
    <script>
        window.location.href = '../../index.php';
        alert('Xóa sản phẩm Thành Công !!!');
    </script>

<?php } ?>

