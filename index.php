<?php
if (isset($_SESSION["cart_item"])) {
    session_destroy();
}

session_start();

include_once (__DIR__ . "..\config\database\connectDB.php");

if (isset($_COOKIE["user-email"]) && isset($_COOKIE["user-pass"]) && isset($_COOKIE["user-role"])) {
    $_SESSION["user-email"] = $_COOKIE["user-email"];
    $_SESSION["user-pass"] = $_COOKIE["user-pass"];
    $_SESSION["user-role"] = $_COOKIE["user-role"];
}
if (isset($_SESSION["user-email"]) && isset($_SESSION["user-pass"]) && isset($_SESSION["user-role"])) {
    $role = $_SESSION["user-role"];
    $email = $_SESSION["user-email"];
    $pass = $_SESSION["user-pass"];
    $sql = "select * from tbusers where EMAIL='$email' and PASSWORD='$pass'";
    $r = mysqli_query($link, $sql);
    $acc = mysqli_fetch_row($r);
    $name = $acc[4];
}


require (__DIR__ . "..\config\model\load_random.php");
require_once("dbcontroller.php");
$db_handle = new DBController();
$result_a = mysqli_query($link, $sql_a);
$result_b = mysqli_query($link, $sql_b);
$result_test = mysqli_query($link, "select * from tblaptoplist  limit 0,4;");
$rows_test = mysqli_fetch_all($result_test, MYSQLI_ASSOC);
$rows_a = mysqli_fetch_all($result_a, MYSQLI_ASSOC);
$rows_b = mysqli_fetch_all($result_b, MYSQLI_ASSOC);
//add cart
if (isset($_SESSION["user-email"])) {
    $email = $_SESSION["user-email"];
    $sq = "SELECT nameProduct,code,SUM(quantity) as quantitySUM,SUM(price) as priceSUM FROM cart WHERE email = '$email' GROUP BY nameProduct";
    $r = mysqli_query($link, $sq);
//check cart + load cart
    if ($num = mysqli_num_rows($r) > 0) {
        while ($row = mysqli_fetch_array($r)) {
            $itemArray = array(
                'name' => $row[1],
                'code' => $row[2],
                'quantity' => $row["quantitySUM"],
                'price' => $row["priceSUM"]
                    )
            ;
        }
    } else {
        $cart_count = 0;
    }
    //    add cart
    if (isset($_GET["action"])) {
        switch ($_GET["action"]) {
            case "add":
                $code = $_GET["id"];
                $r = mysqli_query($link, "SELECT
    *
FROM
    (
        (
        SELECT
            tbcpulist.idProduct,
            tbcpulist.nameProduct,
            tbcpulist.photo1,
            tbcpulist.rate
        FROM
            tbcpulist
    )
UNION
    (
    SELECT
        tbgraphicslist.idProduct,
        tbgraphicslist.nameProduct,
        tbgraphicslist.photo1,
        tbgraphicslist.rate
    FROM
        tbgraphicslist
)
UNION
    (
    SELECT
        tblaptoplist.idProduct,
        tblaptoplist.nameProduct,
        tblaptoplist.photo1,
        tblaptoplist.rate
    FROM
        tblaptoplist
)
UNION
    (
    SELECT
        tbramlist.idProduct,
        tbramlist.nameProduct,
        tbramlist.photo1,
        tbramlist.rate
    FROM
        tbramlist
)
UNION
    (
    SELECT
        tbradiatorslist.idProduct,
        tbradiatorslist.nameProduct,
        tbradiatorslist.photo1,
        tbradiatorslist.rate
    FROM
        tbradiatorslist
)
    ) AS r
WHERE
    r.idProduct ='" . $_GET["id"] . "'");
                $item = mysqli_fetch_row($r);
                $nameProduct = $item[1];
                $code = $item[0];
                $price = $item[3];
                $quantity = 1;
                $resu = mysqli_query($link, "INSERT INTO cart (email, nameProduct,code,quantity,price)
VALUES ('$email','$nameProduct','$code',$quantity,$price);");

                break;
            case "remove":
                $idPro = $_GET['id'];
                $r = mysqli_query($link, "DELETE FROM cart WHERE code= '$idPro';");
                break;
            case "empty":
                $r = mysqli_query($link, "DELETE FROM cart WHERE email= '$email';");
                break;
        }
    }
    
//    check promo code
    if (isset($_POST["add_promo"])) {
        $code_promo = $_POST["promo_code"];
        $promoSql = "SELECT distinct * FROM `promo_code` WHERE promoCode = '$code_promo';";
        $res = mysqli_query($link, $promoSql);
        $selectRow = mysqli_fetch_row($res);
        if (($numRo = mysqli_num_rows($res)) == 1) {
            $sqlCheckUse = "SELECT COUNT(*) as count FROM orders WHERE email = '$email' AND promoCode = '$code_promo' GROUP BY promoCode;";
            $resu = mysqli_query($link, $sqlCheckUse);
            $checkRow = mysqli_fetch_array($resu);
            if ($selectRow[3] == $checkRow['count']) {
                echo "<script>";
                echo 'alert("Bạn đã sử dụng hết lượt của mã giảm giá này rồi");';
                echo "window.location.href = 'index.php?view=cart';";
                echo "</script>";
                $code_promo = "";
            } else {
                $promo_percent = $selectRow[2];
            }
        } else {
            echo "<script>";
            echo 'alert("Mã giảm giá không đúng");';
            echo "window.location.href = 'index.php?view=cart';";
            echo "</script>";
            unset($code_promo);
        }
        $promo_percent;
    }
} else {
    if (!empty($_GET["action"])) {
        switch ($_GET["action"]) {
            case "add":
                if (!empty($_POST["quantity"])) {
                    $productByCode = $db_handle->runQuery("SELECT
    *
FROM
    (
        (
        SELECT
            tbcpulist.idProduct,
            tbcpulist.nameProduct,
            tbcpulist.photo1,
            tbcpulist.rate
        FROM
            tbcpulist
    )
UNION
    (
    SELECT
        tbgraphicslist.idProduct,
        tbgraphicslist.nameProduct,
        tbgraphicslist.photo1,
        tbgraphicslist.rate
    FROM
        tbgraphicslist
)
UNION
    (
    SELECT
        tblaptoplist.idProduct,
        tblaptoplist.nameProduct,
        tblaptoplist.photo1,
        tblaptoplist.rate
    FROM
        tblaptoplist
)
UNION
    (
    SELECT
        tbramlist.idProduct,
        tbramlist.nameProduct,
        tbramlist.photo1,
        tbramlist.rate
    FROM
        tbramlist
)
UNION
    (
    SELECT
        tbradiatorslist.idProduct,
        tbradiatorslist.nameProduct,
        tbradiatorslist.photo1,
        tbradiatorslist.rate
    FROM
        tbradiatorslist
)
    ) AS r
WHERE
    r.idProduct ='" . $_GET["id"] . "'");
                    $itemArray = array($productByCode[0]["idProduct"] => array(
                            'name' => $productByCode[0]["nameProduct"],
                            'code' => $productByCode[0]["idProduct"],
                            'quantity' => $_POST["quantity"],
                            'price' => $productByCode[0]["rate"]
                        )
                    );

                    if (!empty($_SESSION["cart_item"])) {
                        if (in_array($productByCode[0]["idProduct"], array_keys($_SESSION["cart_item"]))) {
                            foreach ($_SESSION["cart_item"] as $k => $v) {
                                if ($productByCode[0]["idProduct"] == $k) {
                                    if (empty($_SESSION["cart_item"][$k]["quantity"])) {
                                        $_SESSION["cart_item"][$k]["quantity"] = 0;
                                    }
                                    $_SESSION["cart_item"][$k]["quantity"] += $_POST["quantity"];
                                }
                            }
                        } else {
                            $_SESSION["cart_item"] = array_merge($_SESSION["cart_item"], $itemArray);
                        }
                    } else {
                        $_SESSION["cart_item"] = $itemArray;
                    }
                }
                break;
            case "remove":
                if (!empty($_SESSION["cart_item"])) {
                    foreach ($_SESSION["cart_item"] as $k => $v) {
                        if ($_GET["id"] == $k)
                            unset($_SESSION["cart_item"][$k]);
                        header("Location: index.php?view=cart");
                        if (empty($_SESSION["cart_item"]))
                            unset($_SESSION["cart_item"]);
                    }
                }
                break;
            case "empty":
                unset($_SESSION["cart_item"]);
                header("location: index.php");
                break;
        }
    }
}
//end add cart
//add promo code
//
//end add promo code
//get final price
//if(isset($_POST["action"])){
//    if($_POST["action"] == 'submitCart'){
//        $_SESSION["final_total"] = $total_promo;
//    }
//}
if (isset($_POST["submitCart"])) {
    $final_total = $_POST["total_pro"] + 24000;
}
//end final price
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
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="library/css/bootstrap.min.css">
        <link rel="stylesheet" href="library/css/style.css">
        <link rel="stylesheet" href="library/css/font-awesome.min.css">

        <link rel="stylesheet" type="text/css" href="library/css/product-details.css">
        <link rel="stylesheet" type="text/css" href="library/css/owl.carousel.min.css">
        <link rel="stylesheet" type="text/css" href="library/css/smoothproducts.css">
        <script src="library/js/jquery.min.js"></script>
        <script src="library/js/jquery-3.2.1.min.js"></script>
        <script src="library/js/bootstrap.min.js"></script>
        <title>TechMedia</title>
        <script>
            function showHint(str) {
                if (str.length == 0) {
                    document.getElementById("txtHint").innerHTML = "";
                    return;
                } else {
                    var xmlhttp = new XMLHttpRequest();
                    xmlhttp.onreadystatechange = function () {
                        if (this.readyState == 4 && this.status == 200) {
                            document.getElementById("txtHint").innerHTML = this.responseText;
                        }
                    }
                    xmlhttp.open("GET", "call_ajax.php?search=" + str, true);
                    xmlhttp.send();
                }
            }

        </script>

    </head>
    <body>
<?php include 'client/view/header.php'; ?>

        <main>
        <?php
        if (!isset($_GET['view'])) {
            $view = "";
        } else {
            $view = $_GET['view'];
        }
        switch ($view) {
            case "home":
                include 'client/view/vertical_menu.php';
                include 'client/view/section.php';
                break;

            case "review":
                include 'client/view/review.php';
                break;
            case "product":
                include 'client/section_product.php';
                break;
            case "detail":
                include 'client/product_detail.php';
                break;
            case "promo":
                include 'client/view/promo.php';
                break;
            case "contact":
                include 'client/view/contact.php';
                break;
            case "user":
                include 'client/view/user.php';
                break;
            case "cart":
                include 'client/view/cart_view.php';
                break;
            case "payment":
                include 'client/view/payment.php';
                break;
            case "news":
                include 'client/view/news.php';
                break;
            case "orderQuery":
                include 'client/view/orderQuery.php';
                break;
            default :
                include 'client/view/vertical_menu.php';
                include 'client/view/section.php';
                break;
        }
//            if (isset($error) && $error = 'error') {
//                header('Location: error505.php');
//                exit();
//            }
        ?>
        </main>

            <?php
            include 'client/view/footer.php';
            ?>
        <?php
        if ($view == 'detail') {
            include './library/js/detail.js';
        }
        ?>
    </body> 
</html>
