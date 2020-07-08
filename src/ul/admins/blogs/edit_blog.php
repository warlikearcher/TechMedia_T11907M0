<?php
if (isset($_GET["id"]) == FALSE) {
    //Quay về lại trang quản lý bài viết
    header("location:index_blog.php");
    exit();
}

include_once '../controllers/database/connectDB.php';
$id = $_GET["id"];
$sql = "select * from tbarticles where id_articles = '$id' ; ";

//Thi hành lệnh truy vấn từ biến connection
$r = mysqli_query($link, $sql);

if ($r == FALSE || mysqli_num_rows($r) == 0) {
    echo "<h3>Không tồn tại id tin tức</h3>";
    exit();
}
//Lấy thông tin tin muốn sửa ra
$tin = mysqli_fetch_row($r);
?>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <style>

        </style>
        <title>Cập nhật tin tức</title>
    </head>

    <body>

         <div style="background-color: #D3D3D3; width: 900px; margin-left: 50px; border-radius: 20px;">
            <div id="createpost">
                <h2>Sửa bài viết</h2>
                <br/>

                <form method="post" action="edit_blogs_DB.php">
                    <input type="hidden" name="hidden_id" id="hidden_id" value="<?php echo $id;?>" hidden/>
                    <label for="title">Tiêu Đề Bài Viết:</label>
                    <input type="text" name="title" id="title" placeholder="Nhập Tiêu Đề Bài Viết" class="form-control" value="<?php echo $tin[1]?>" required>
                    <br/>
                    
                    <label for="linkImage">Ảnh Đại Diện: </label><br/>
                    <input type="text" name="linkImage" class="form-control" placeholder="Dán Link Ảnh Đại Diện Vào Đây" value="<?php echo $tin[2]?>" required/>
                    <br/>
                    
                    <label for="posts">Chỉnh sửa Nội Dung Bài Viết:</label><br>
                    <textarea rows="5" cols="100" id="post" name="post"><?php echo $tin[3];?></textarea>
                    <script>
                        CKEDITOR.replace('posts');
                    </script>
                    <br/>
                    <label for="tacgia">Người Đăng: </label><br/>
                    <input type="text" name="tacgia"  class="form-control" value="<?php echo $tin[4]?>" required/>
                    <br/>
                    <label for="date">Ngày Đăng: </label><br/>
                    <input type="text" name="date"  class="form-control" value="<?php echo $tin[5]?>" required/>
                    <br/>
                    <input type="submit" id="btnOk" name="btnOk" value="Đăng Bài" class="btn btn-info" style="width: 90px; height: 40px">
                    <a href="../index.php?src=news" class="btn btn-info" style="width: 200px; height: 40px"> Trở về trang trước</a>
                </form>
            </div>
        </div>


    </body>

</html>
