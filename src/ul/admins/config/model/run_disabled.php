<?php

include_once '../../controllers/database/connectDB.php';
$id = $_GET["hidden_disabled_id"];


$sql = "UPDATE tbusers SET ROLE=NULL WHERE IDUser= '$id' ;";


$r = mysqli_query($link, $sql);

if ($r == FALSE) {
    echo "<h3 style='color:blue'>Lỗi sai id sản phẩm</h3>";
    exit();
} else {
    ?>
    <script>
        window.location.href = '../../index.php';
        alert('Đã vô hiệu hóa!!!');
    </script>

<?php } ?>
