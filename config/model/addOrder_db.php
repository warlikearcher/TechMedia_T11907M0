<?php

session_start();
include_once (__DIR__ . "\..\database\connectDB.php");
//var_dump($_SESSION["cart_item"]);
//if (isset($_SESSION["cart_item"])) {
//    echo '<pre>';
//    var_dump($_SESSION["cart_item"]);
//    echo '</pre>';
//}
if (isset($_POST["btnSubmit"]) == FALSE) {
    header("location: index.php?view=home");
    exit();
}

if (isset($_SESSION["user-email"])) {
    $email = $_SESSION["user-email"];
    do {
        $randomID = uniqid();
        $sql = "select count( distinct order_id ) = 1 as matched from orders WHERE order_id = '$randomID';";
//                    echo $sql;
        $result = mysqli_query($link, $sql);
        $rows = mysqli_fetch_row($result);
    } while ($rows[1] = 0);
    $cart = mysqli_query($link, "SELECT nameProduct,code,SUM(quantity) as quantitySUM,SUM(price) as priceSUM FROM cart WHERE email = '$email' GROUP BY nameProduct");
    $firstname = $_POST["firstname"];
    $phone = $_POST["phone"];
    $address = $_POST["address"];
    $city = $_POST["taskOption"];
    switch ($city) {
        case "HCM":
            $zip = 63000;
            break;
    }
    $phone = $_POST["phone"];

    $total_final = $_POST["total_final"];
    $code_promo = $_POST["code_promo"];
    $into = "insert into orders(order_id,name,phone,email,street,city,zip_code,total_price,promoCode) values ('$randomID','$firstname','$phone','$email','$address','$city','$zip','$total_final','$code_promo');";
    $r = mysqli_query($link, $into);
    if ($r == TRUE) {
        while ($db = mysqli_fetch_array($cart)) {
            $item_price = $db["priceSUM"];
            $idProduct = $db["code"];
            $quantity = $db["quantitySUM"];
            $name = $db["nameProduct"];
            $into1 = "insert into orders_item(order_id,idProduct,quantity,list_price,nameProduct) values ('$randomID','$idProduct',$quantity,$item_price,'$name');";

            $r1 = mysqli_query($link, $into1);
            if ($r1 == TRUE) {
                $clearCart = mysqli_query($link, "DELETE FROM cart WHERE email= '$email';");
                header("Location: finishOrder.php?idOrder=$randomID");
                exit();
            }
        }
    }
} else {
    if (isset($_SESSION["cart_item"])) {
        do {
            $randomID = uniqid();
            $sql = "select count( distinct order_id ) = 1 as matched from orders WHERE order_id = '$randomID';";
//                    echo $sql;
            $result = mysqli_query($link, $sql);
            $rows = mysqli_fetch_row($result);
        } while ($rows[1] = 0);
        $firstname = $_POST["firstname"];
        $email = $_POST["email"];
        $phone = $_POST["phone"];
        $address = $_POST["address"];
        $city = $_POST["taskOption"];
        switch ($city) {
            case "HCM":
                $zip = 63000;
                break;
            default :
                $zip = 60000;
                break;
        }
        $phone = $_POST["phone"];
        $total_final = $_POST["total_final"];

//    insert 
        $into = "insert into orders(order_id,name,phone,email,street,city,zip_code,total_price) values ('$randomID','$firstname','$phone','$email','$address','$city',$zip,$total_final);";
        $r = mysqli_query($link, $into);
        if ($r == TRUE) {

            foreach ($_SESSION["cart_item"] as $item) {
                $item_price = $item["quantity"] * $item["price"];
                $idProduct = $item["code"];
                $quantity = $item["quantity"];
                $name = $item["name"];
                $into1 = "insert into orders_item(order_id,idProduct,quantity,list_price,nameProduct) values ('$randomID','$idProduct',$quantity,$item_price,'$name');";

                $r1 = mysqli_query($link, $into1);
                if ($r1 == TRUE) {
                    unset($_SESSION["cart_item"]);
                    header("Location: finishOrder.php?idOrder=$randomID");
                    exit();
                }
            }
        }
    } else {
        header("location: index.php?view=home");
        exit();
    }
}

//echo 'Đã có lỗi xảy ra khi xác nhận đơn hàng !!';

