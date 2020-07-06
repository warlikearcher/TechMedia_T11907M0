<?php
    include_once './../../admin/controllers/database/connectDB.php';
    
   
        $title = $_POST['title'];
        $linkImage = $_POST['linkImage'];
        $post = $_POST['post'];
        $author = $_POST['tacgia'];

        $sql = "INSERT INTO tbarticles (title, linkImage, post, author, date) VALUES ('$title', '$linkImage', '$post', '$author')";
       mysqli_query($link, $sql);
?>

