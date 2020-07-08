<?php
session_start();
include_once '../database/connectDB.php';


        $email = $_POST["email"];
        $pass = $_POST["pass"];
        $sql = "select * from tbusers where EMAIL='$email' and PASSWORD = '$pass'";
        //thuc hien linh truy van SQL
        $r = mysqli_query($link, $sql);
        $acc  = mysqli_fetch_row($r);

        if (mysqli_num_rows($r) > 0 && $acc[3] != NULL) {
            echo true;
        } else {
            echo false;  
        }
        ?>