<?php
session_start();
include_once '../database/connectDB.php';


        $email = $_POST["email"];
        $sql = "select * from tbusers where EMAIL='$email'";
        //thuc hien linh truy van SQL
        $r = mysqli_query($link, $sql);
        //kiem tra xem co dong du lieu dc tra ve tu cau linh Select SQL ?
        if (mysqli_num_rows($r) > 0) {
            echo '<div style="color:red">Email đã được sử dụng để đăng ký!</div>';
        } else {
            $pass = $_POST["pass"];
            $name = $_POST["name"];
            $phone = $_POST["phone"];
            $insert = "insert into tbusers (EMAIL, PASSWORD, ROLE, FULLNAME, PHONE) values ('$email', '$pass', '0', '$name', '$phone')";
            mysqli_query($link, $insert);
            echo '<div style="color:green">Đăng ký thành công!</div>';            
        }
        ?>