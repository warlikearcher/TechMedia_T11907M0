<?php

/* 
Ham ket noi den  CSDL ten [1907db], tia khoan dang nhap: root, password: 
 */

$serverDB = "localhost:3308";
$dbName = "project";
$username ="root";
$password ="";

$link = mysqli_connect($serverDB, $username, $password, $dbName);

if($link == NULL){
    echo " Loi sai ket noi !!!!";
}
?>

