<?php
session_start();
if (!isset($_SESSION["user-email"])) {
    echo "<script>";
    echo "window.location.href = '../../../index.php';";
    echo "</script>";
}
include_once './controllers/database/connectDB.php';
if (!isset($_GET['src']) || (isset($_GET['src']) && $_GET['src'] == 'dashBoard')) {
    include './config/model/take_money.php';
}
//pagination
require './config/model/pagination.php';
//end pagination
?>

<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <meta charset="UTF-8">
        <link href="library/css/main.css" rel="stylesheet">
        <link href="library/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <link href="library/css/css_customer_info.css" rel="stylesheet" type="text/css"/>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <script src="library/js/IconUser.js"></script>
        <title>Admins page</title>

    </head>
    <body>
        <?php
        if (isset($_SESSION["user-email"]) && isset($_SESSION["user-pass"]) && isset($_SESSION["user-role"])) {
            $role = $_SESSION["user-role"];
            $email = $_SESSION["user-email"];
            $pass = $_SESSION["user-pass"];
            $sql = "select * from tbusers where email='$email' and PASSWORD='$pass'";
            $r = mysqli_query($link, $sql);
            $acc = mysqli_fetch_row($r);
            $role = $acc[3];
            $name = $acc[4];
        } else {
            header("location:../../../index.php");
        }
        if ($role == 0 || $role == NULL || isset($role) == FALSE) {
            header("location:../../../index.php");
        }
        ?>
        <div id="wrapper" class="padding-0">
            <div class="container-fluid padding-0 ">
                <div class="row no-gutters">
                    <div class="col-md-2 padding-0 dashBoard-List">
                        <?php
                        include (__DIR__ . "../view/dashBoard.php");
                        ?>
                    </div>
                    <div class="col-md-10 padding-0 tab-list">
                        <?php
//                        if (!isset($_GET['action'])) {
//                            include (__DIR__ . "../view/tab.php");
//                        }
                        if (isset($_GET['action'])) {
                            $action = $_GET['action'];
                            switch ($action) {
                                case "delete":
                                    include (__DIR__ . "../view/delete.php");
                                    break;
                                case "update":
                                    include (__DIR__ . "../view/update.php");
                                    break;
                                case "add_product":
                                    include (__DIR__ . "../view/addProduct.php");
                                    break;
                                case "addBanner":
                                    include (__DIR__ . "../view/addBanner.php");
                                    break;
                                case "disabled":
                                    include (__DIR__ . "../view/disabled.php");
                                    break;
                                case "abled":
                                    include (__DIR__ . "../view/abled.php");
                                    break;
                            }
                        } else {
                            include (__DIR__ . "../view/tab.php");
                        }
                        ?>
                    </div>
                </div>
            </div>
        </div>
        <script src="../admin/library/js/copllapsible.js"></script>
        <script src="../admin/library/js/canvasjs.min.js.js"></script>
        <script>
            document.getElementById("user-input-form").onsubmit = function () {
<?php
for ($i = 0; $i < $count; $i++) {
    echo "var $field_name[$i] =" . 'document.getElementById("' . "$field_name[$i]" . '").value;';
}
?>
                $.post("save_update.php", {<?php
echo "code:$code,table:'$table'";
for ($i = 0; $i < $count; $i++) {
    echo "," . $field_name[$i] . ":" . $field_name[$i];
}
?>}, function (data) {
                    if (data) {
                        document.getElementById("result").innerHTML = "Thành công!";
                        document.getElementById("result").style.color = "green";
                        setTimeout(function () {
                            window.location.assign("?action=update&id=" + <?php echo "$field_name[0]" ?> + "&table=" + <?php echo "'$table'" ?>);
                        }, 2000);
                    } else {
                        document.getElementById("result").style.color = "red";
                        document.getElementById("result").innerHTML = "Lỗi sai";
                        setTimeout(function () {
                            window.location.assign("?action=update&id=" + <?php echo "$field_name[0]" ?> + "&table=" + <?php echo "'$table'" ?>);
                        }, 2000);
                    }
                });
                return false;
            };
        </script>
    </body>
</html>
