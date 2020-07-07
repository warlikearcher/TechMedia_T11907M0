<?php
session_start();
include '../../config/database/connectDB.php';
if (isset($_COOKIE["user-email"]) && isset($_COOKIE["user-pass"]) && isset($_COOKIE["user-role"])) {
    $_SESSION["user-email"] = $_COOKIE["user-email"];
    $_SESSION["user-pass"] = $_COOKIE["user-pass"];
    $_SESSION["user-role"] = $_COOKIE["user-role"];
}
if (isset($_SESSION["user-email"]) && isset($_SESSION["user-pass"]) && isset($_SESSION["user-role"])) {
    $role = $_SESSION["user-role"];
    $email = $_SESSION["user-email"];
    $pass = $_SESSION["user-pass"];
    $sql = "select * from tbusers where email ='$email' and PASSWORD='$pass'";
    $r = mysqli_query($link, $sql);
    $acc = mysqli_fetch_row($r);
    $name = $acc[4];
}
if (isset($_GET["action"])) {
    switch ($_GET["action"]) {
        case "remove":
            $idPro = $_GET['id'];
            $r = mysqli_query($link, "DELETE FROM cart WHERE code= '$idPro';");
            echo '<script>';
            echo "window.location.href = 'customer_info.php?action=cart';";
            echo '</script>';
            break;
    }
}
?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Thông tin tài khoản</title>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link href="../../library/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="../../library/css/style.css" rel="stylesheet" type="text/css"/>
        <link href="../../library/css/font-awesome.css" rel="stylesheet" type="text/css"/>
        <script src="../../library/js/bootstrap.min.js" type="text/javascript"></script>
        <link href="../../library/css/smoothproducts.css" rel="stylesheet" type="text/css"/>
        <link href="../../library/css/owl.carousel.min.css" rel="stylesheet" type="text/css"/>
        <script src="../../library/js/jquery-3.2.1.min.js" type="text/javascript"></script>
        <link href="../../library/css/css_customer_info.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <?php include'./header_1.php'; ?>
        <main style="background: rgb(241,241,241);">
            <div class="container" >
                <div class="center-div">
                    <div class="row">
                        <div class="col-12 col-lg-3 col-xl-3">
                            <?php
                            include './../../config/model/customer_info_navsidebar.php';
                            ?>
                        </div>
                        <div class="col-12 col-lg-9 col-xl-9">
                            <div class="user-form-box" id="user-form-box">
                                <?php
                                if (isset($_GET['action'])) {
                                    switch ($_GET['action']) {
                                        case 'infor': include './../../config/model/user-formBox-Infor.php';
                                            break;
                                        case 'his': include './../../config/model/user-formBox-His.php';
                                            break;
                                        case 'cart': include './../../config/model/user-formBox-Cart.php';
                                            break;
                                    }
                                } else {
                                    include './../../config/model/user-formBox-Infor.php';
                                }
                                ?>
                            </div>
                        </div>
                    </div>

                    </main>
                    <footer><?php include'./footer.php'; ?></footer>
                    </body>
                    <?php
                    include '../../library/js/customer_info.js';
                    ?>
                    </html>
                    <script>
                        document.getElementById("user-input-form").onsubmit = function () {
                            var IDUser = document.getElementById("code").value;
                            var code = document.getElementById("code").value;
                            var table = document.getElementById("table").value;
                            var EMAIL = document.getElementById("user-email").value;
                            var GENDER = document.getElementById("user-gender").value;
                            var DOB = document.getElementById("user-dob").value;
                            var PHONE = document.getElementById("user-phonenumber").value;
                            var ADDRESS = document.getElementById("user-address").value;
                            var ZIPCODE = document.getElementById("user-zipcode").value;
                            $.post("../../config/model/save_update.php", {IDUser: IDUser, code: code, table: table, EMAIL: EMAIL, GENDER: GENDER, DOB: DOB, PHONE: PHONE, ADDRESS: ADDRESS, ZIPCODE: ZIPCODE}, function (data) {
                                if (data) {
                                    document.getElementById("result").innerHTML = "Thành công!";
                                    document.getElementById("result").style.color = "green";
                                    setTimeout(function () {
                                        window.location.assign("./customer_info.php");
                                    }, 2000);
                                } else {
                                    document.getElementById("result").style.color = "red";
                                    document.getElementById("result").innerHTML = "Lỗi sai";
                                    setTimeout(function () {
                                        window.location.assign("./customer_info.php");
                                    }, 2000);
                                }
                            });
                            return false;
                        };
                    </script>