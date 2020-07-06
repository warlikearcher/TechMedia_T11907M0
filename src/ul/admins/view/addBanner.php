
<div class="update-body">
    <div class="update-top-bar padding-0">
        <div class="banner-top top-content-update shadow">
            <div class="card-body">
                <div class=" no-gutters align-content-center">
                    <div class="card-font">
                        <h1>Thêm banner Q.C</h1>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <hr>
    <div class="container-fluid">

        <div id="formAdd" class="shadow-lg">
            <form method="POST">
                <h2 class="content_column">Nhập đường dẫn đến hình</h2>
                <h4 class="example">Ví dụ: <span>image/Image_Product/Banner/banner1.jpg</span></h4>
                <input type="text" id="url" name="url">
                
                <button class="btn btn-success buttonSubmit" name="btnOK" type="submit">Xác nhận thêm sản phẩm</button>
            </form>
        </div>
    </div>
</div>
<?php 
if(isset($_POST["url"])){
    $url = $_POST['url'];
    $sql = "INSERT INTO tbbanner(url) VALUES ('$url');";
    


    $r = mysqli_query($link, $sql);
    if($r == TRUE){
        echo '<script>';
        echo "alert('Thêm banner Quảng cáo thành công');";
        echo "</script>";
    }
}


?>