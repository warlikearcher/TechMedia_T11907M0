<?php

include_once '../controllers/database/connectDB.php';

if (isset($_POST["btnOk"]) == FALSE) {
    header("location:new_blog.html");
    exit();
}

$linkImage = $_POST["linkImage"];
$title = $_POST["title"];
$post = $_POST["post"];
$tacgia = $_POST['author'];
$date = $_POST["date"];

$sql = "insert into tbarticles(title, linkImage, post,author,date)  values ('$title','$linkImage','$post','$tacgia','$date');";

//thuc hien lenh truy van SQL
$r = mysqli_query($link, $sql);


//kiem tra xem co dong du lieu dc tra ve tu cau linh Select SQL ?
if ($r == TRUE) {
    //Open trang index_blog
    ?>
    <script>
        window.location.href = '.././index.php?src=news';
        alert("Thêm bài thành công");

    </script>
    <?php

    exit();
}

echo "<h3>Lỗi sai DB : Không thể thêm bài viết mới !</h3>";
?>

