<?php

//Kiểm tra xem form điều chỉnh trang [edit_blog.php]
if (isset($_POST["btnOk"]) == FALSE) {
    header("location:edit_blog.php");
    exit();
}
include_once '../controllers/database/connectDB.php ';
$id = $_POST["hidden_id"];

$linkImage = $_POST["linkImage"];
$title = $_POST["title"];
$post = $_POST["post"];
$tacgia = $_POST['author'];

$sql = "UPDATE tbarticles SET title = '$title', linkImage = '$linkImage', post = '$post', author = '$tacgia' where id_articles = '$id'; ";

//Thi hành lệnh truy vấn từ biến connection
$r = mysqli_query($link, $sql);

if ($r == FALSE) {
    echo "<h3 style='color:blue'>Lỗi sai Điều Chỉnh thông tin tin tức</h3>";
    exit();
} else {
    //Open trang index_blog
    ?>
    <script>
        window.location.href = '.././index.php?src=news';
        alert("Cập nhật bài thành công");

    </script>
    <?php

    exit();
}
?>


