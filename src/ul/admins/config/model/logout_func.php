<?php
session_start();
include_once '../../controllers/database/connectDB.php';
if (isset($_COOKIE["user-email"]) && isset($_COOKIE["user-pass"])) {
    setcookie("user-email", "", time() - 3600, "/");
    setcookie("user-pass", "", time() - 3600, "/");
    setcookie("user-role", "", time() - 3600, "/");
}
unset($_SESSION["user-email"]);
unset($_SESSION["user-pass"]);
unset($_SESSION["user-role"]);
?>  
<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
    </head>
    <body>
        <script>
            window.location.href = '../../../../../index.php';
            alert('Đã đăng xuất !!!');
        </script>
    </body>
</html>
