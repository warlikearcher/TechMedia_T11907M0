<?php
session_start();
include'../database/connectDB.php';
?>

<!DOCTYPE html>
<!--
    Kiểm tra tài khoản đang nhập trong trang [Ass04_Login] có hợp lệ không?
    Bằng cách đối chiếu bộ dữ liệu nhập với các mẩu tin trong bảng [tbusers]
    Nếu có, thông báo thành công. Ngược lại thông báo thất bại
-->
<html>
    <head>
        <meta charset="UTF-8">
        <title>Login</title>

    </head>
    <body>
        <?php
        $pass = $_POST["user-password"];
        $email =$_POST["user-email"];
        $sql = "select * from tbusers where EMAIL='$email' and PASSWORD='$pass'";
        //thuc hien linh truy van SQL
        $r = mysqli_query($link, $sql);

        //kiem tra xem co dong du lieu dc tra ve tu cau linh Select SQL ?

            $acc = mysqli_fetch_row($r);
            $role = $acc[3];
            if ((isset($_POST["checkbox-remem"]))&&($_POST["checkbox-remem"]="yes")) {
                setcookie("user-email", $email, time() + (86400*30), "/");
                setcookie("user-pass", $pass, time() + (86400*30), "/"); 
                setcookie("user-role", $role, time() + (86400*30),"/");
            }
            $_SESSION["user-email"]=$email;
            $_SESSION["user-pass"]=$pass;
            $_SESSION["user-role"]=$role;

            if ($acc[3] == 0) {
                header("Location:../../index.php");
            } else {
                header("location:../../src/ul/admins/index.php");
            }
        ?>
    </body>
</html>
