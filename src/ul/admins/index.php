<?php
include_once './controllers/database/connectDB.php';
if(!isset($_GET['src']) || (isset($_GET['src']) && $_GET['src'] == 'dashBoard')){
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
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <title>Admins page</title>
        
    </head>
    <body>
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
    </body>
</html>
