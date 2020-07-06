
<?php

//Kiểm tra xem form điều chỉnh trang [index_blog.php]
if (isset($_GET["id"]) == FALSE) {
    header("location:index_blog.php");
    exit();
}
require '../controllers/database/connectDB.php';

$id = $_GET['id'];
//Viết câu lệnh sql,Trích mẫu tin có id_articles trùng với biến id
$sql = "select * from tbarticles where id_articles = '$id' ; ";

$sql = "DELETE FROM tbarticles WHERE id_articles = '$id'";
//Thi hành lệnh truy vấn từ biến connection
$r = mysqli_query($link, $sql);

if ($r == FALSE) {
    echo "<h3 style='color:blue'>Lỗi sai khi xóa bài viết</h3>";
    exit();
} else {
    //Open trang index_blog
    ?>
    <script>
        window.location.href = '.././index.php?src=news';
        alert("Bài đã xóa thành công");

    </script>
    <?php

    exit();
}
?>