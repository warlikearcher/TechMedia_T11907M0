<?php
include_once './connectDB.php';
session_start();
if (isset($_COOKIE["user-email"]) && isset($_COOKIE["user-pass"]) && isset($_COOKIE["user-role"])) {
    $_SESSION["user-email"] = $_COOKIE["user-email"];
    $_SESSION["user-pass"] = $_COOKIE["user-pass"];
    $_SESSION["user-role"] = $_COOKIE["user-role"];
}
if (isset($_SESSION["user-email"]) && isset($_SESSION["user-pass"]) && isset($_SESSION["user-role"])) {
    $role = $_SESSION["user-role"];
    $email = $_SESSION["user-email"];
    $pass = $_SESSION["user-pass"];
    $sql = "select * from tbusers where email='$email' and PASSWORD='$pass'";
    $r = mysqli_query($link, $sql);
    $acc = mysqli_fetch_row($r);
    $name = $acc[4];
}
if (isset($_POST["btSend"]) == TRUE) {
    //lay thong tin nhap tren form
    $to = $_POST["txtR"];
    $from = "From:  leniaa123456@gmail.com";
    $subject = $_POST["txtSub"];
    $message = $_POST["txtBody"];
    $name = $_POST["txtName"];

    $r = mail($to, $subject, $message, $from, $name);
    if ($r == TRUE) {
        echo "<script>";
        echo "alert('Send Mail Succces!');";
        echo "window.location.href = '../../../index.php';";
        echo "</script>";
    } else {
        echo "<script>";
        echo "alert('Error: Send Mail fail!');";
        echo "window.location.href = '../../../index.php';";
        echo "</script>";
    }
}
?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie-edge">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <link rel="stylesheet" href="css/style.css"/>
        <title>Trang liĂªn há»‡</title>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-lg-6 m-auto">
                    <div class="card mt-5">
                        <div class="card-body">
                            <form method="POST">
                                <h2 class="text-center py-2">Phản ánh vấn đề và sự cố</h2>
                                <p>
                                    Họ và Tên:  <input class="form-control mb-2" type="text" name="txtName" id="txtName" <?php if (isset($name)) {
    echo "value='$name'";
} ?> placeholder="Vui lòng nhập họ tên! " required/> 
                                </p>
                                <p>
                                    Email người gửi: <input class="form-control mb-2" type="text" id="email" name="email" <?php
                                                            if (isset($email)){echo "value='$email'";}?> required/>
                                </p>
                                <p>
                                    <input class="form-control mb-2" type="text" name="txtR" id="txtR" value="Trickst6r@gmail.com" hidden/>
                                </p>
                                <p>
                                    Tiêu đề: <input class="form-control mb-2" type="text" name="txtSub" id="txtSub" placeholder="Vui lòng nhập tiêu đề! "  required/>
                                </p>
                                <p>
                                    Bạn đang gặp vấn đề gì? :
                                    <textarea class="form-control mb-2" rows="5" name="txtBody" id="txtBody" cols="30" placeholder="Vui lòng nhập vẫn đề bạn đang gặp phải!" required="" ></textarea>
                                </p>
                                <p><input  class="btn btn-success"  type="submit" name="btSend" value="Xác nhận">
                                    <input class="btn btn-danger" type="reset" name="btReset" value="Hoàn tác"></p>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>



        <script>

        </script>

    </body>
</html>