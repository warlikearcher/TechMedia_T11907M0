<?php 
    //Kiểm tra xem trang này có được chuyển từ trang [index_blog.php]
    if(isset($_GET["id"])==FALSE){
        //Quay về lại trang quản lý bài viết
        header("location:index_blog.php");
        exit();
    }
    
    //Lấy connection
    include_once '../controllers/database/connectDB.php';
    
    //Lấy mã bài viết muốn xem thông tin chi tiết
    $id=$_GET["id"];
    
    //Viết câu lệnh sql,Trích mẫu tin có id_articles trùng với biến id
    $sql ="select * from tbarticles where id_articles = '$id' ; ";
    
   
    //Thi hành lệnh truy vấn từ biến connection
    $r= mysqli_query($link, $sql);
    
    
    if ($r == FALSE || mysqli_num_rows($r) == 0) {
    echo "<h3 style='color:blue'>Lỗi Sai !!! Không thể xem thông tin lớp học !!</h3>";
    exit();
}
        
    //Xuất thông tin bài viết muốn xem ra
$tin = mysqli_fetch_row($r);
    
?>

<!DOCTYPE html>

<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
    </head>
    <body>
        <h2>Thông tin bài viết</h2>
        <hr>
        <?php
            echo "<p><b>Mã bài viết:</b> $tin[0]</p>";
            echo "<p><b>Tiêu Đề Bài Viết:</b> $tin[1]</p>";
            echo "<p><b>Ảnh Đại Diện:</b> $tin[2]</p>";
            echo "<p><b>Nội dung bài viết:</b> $tin[3]</p>";
            echo "<p><b>Tác giả:</b> $tin[3]</p>";
            echo "<p><b>Ngày đăng bài:</b> $tin[3]</p>";
        ?>
        <hr>
        <a href='../index.php?src=news' class="btn btn-info" style="width: 200px; height: 40px">Về lại trang trước </a>
    </body>
</html>
