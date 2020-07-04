
<?php

include_once '../../controllers/database/connectDB.php';
if(isset($_POST['update']) && ($_POST['update'] = 'NameRate')){
    $name = $_POST["txtName"];
    $rate = $_POST["txtRate"];
    $id = $_POST["hidden_id"];
    $nameTable = $_POST["hidden_tableName"];


    $sql = "update $nameTable set nameProduct = '$name', rate='$rate' WHERE idProduct= '$id' ;";
}
if(isset($_POST['update']) && ($_POST['update'] = 'all')){
    
}

$r = mysqli_query($link, $sql);

if ($r == FALSE) {
    echo "<h3 style='color:blue'>Lỗi sai Điều Chỉnh thông tin sản phẩm</h3>";
    exit();
} else {
    ?>
    <script>
        window.location.href = '../../index.php';
        alert('Cập nhật Thành Công !!!');
    </script>

<?php } ?>

