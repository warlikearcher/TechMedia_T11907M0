<?php ?>
<div class="update-body">
    <div class="update-top-bar padding-0">
        <div class="banner-top top-content-update shadow">
            <div class="card-body">
                <div class=" no-gutters align-content-center">
                    <div class="card-font">
                        <h1>Thêm sản phẩm</h1>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container-fluid">
        <h4 style="font-size: 1.5em;font-weight: bold;color: #5a5c69;">Phân loại sản phẩm</h4>
        <div class="row">
            <div class="col-md-1" id="btnTable">
                <form method="POST" class="formBtn">
                    <input type="hidden" name="idClass" id="idClass" value="tbgraphicslist">
                    <button type="submit" id="btnClass" class="btn-success">Card Đồ họa</button>
                </form>
            </div>
            <div class="col-md-1" id="btnTable">
                <form method="POST" class="formBtn">
                    <input type="hidden" name="idClass" id="idClass" value="tbcpulist">
                    <button type="submit" id="btnClass2" class="btn-success">CPU</button>
                </form>
            </div>
            <div class="col-md-1" id="btnTable">
                <form method="POST" class="formBtn">
                    <input type="hidden" name="idClass" id="idClass" value="tbpccaselist">
                    <button type="submit" id="btnClass6" class="btn-success">Case máy tính</button>
                </form>
            </div>
            <div class="col-md-1" id="btnTable">
                <form method="POST" class="formBtn">
                    <input type="hidden" name="idClass" id="idClass" value="tbradiatorslist">
                    <button type="submit" id="btnClass1" class="btn-success">Tản nhiệt</button>
                </form>
            </div>

            <div class="col-md-1" id="btnTable">
                <form method="POST" class="formBtn">
                    <input type="hidden" name="idClass" id="idClass" value="tblaptoplist">
                    <button type="submit" id="btnClass3" class="btn-success">Laptop</button>
                </form>
            </div>
            <div class="col-md-1" id="btnTable">
                <form method="POST" class="formBtn">
                    <input type="hidden" name="idClass" id="idClass" value="tbspeaklist">
                    <button type="submit" id="btnClass4" class="btn-success">Loa</button>
                </form>
            </div>
            <div class="col-md-1" id="btnTable">
                <form method="POST" class="formBtn">
                    <input type="hidden" name="idClass" id="idClass" value="tbmainboard">
                    <button type="submit" id="btnClass5" class="btn-success">MainBoard</button>
                </form>
            </div>

            <div class="col-md-1" id="btnTable">
                <form method="POST" class="formBtn">
                    <input type="hidden" name="idClass" id="idClass" value="tbpcmonitor">
                    <button type="submit" id="btnClass7" class="btn-success">Màn Hình</button>
                </form>
            </div>
            <div class="col-md-1" id="btnTable">
                <form method="POST" class="formBtn">
                    <input type="hidden" name="idClass" id="idClass" value="tbramlist">
                    <button type="submit" id="btnClass8" class="btn-success">Ram</button>
                </form>
            </div>
        </div>
    </div>
    <hr>
    <div class="container-fluid">
        <?php if (!isset($_POST['idClass'])) { ?>
            <div class="AlertSelect" id="myDIV">
                <h3>Vui lòng chọn phân loại sản phẩm trước</h3>
            </div>
        <?php } else { ?>
            <?php
            $table = $_POST['idClass'];
            $sql = "SELECT COLUMN_NAME, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH 
    FROM information_schema.columns 
    WHERE table_schema = 'project' 
    AND table_name = '$table';";
            $r = mysqli_query($link, $sql);
            $columnType = mysqli_fetch_all($r);

//           get Class & ID
            switch ($table) {
                case "tbgraphicslist":
                    $idClass = "1";
                    break;
                case "tbradiatorslist":
                    $idClass = "2";
                    break;
                case "tbcpulist":
                    $idClass = "3";
                    break;
                case "tblaptoplist":
                    $idClass = "4";
                    break;
                case "tbspeaklist":
                    $idClass = "5";
                    break;
                case "tbmainboard":
                    $idClass = "6";
                    break;
                case "tbpccaselist":
                    $idClass = "7";
                    break;
                case "tbpcmonitor":
                    $idClass = "8";
                    break;
                case "tbramlist":
                    $idClass = "9";
                    break;
            }
            $res = mysqli_query($link, "SELECT * FROM $table;");
            $numRow = mysqli_num_rows($res);
            ?>
            <div id="formAdd" class="shadow-lg">
                <form>
                    <h2 class="content_column">Thông tin căn bản:</h2>
                    <h4>ID sản phẩm: <span><?php echo ($idProduct = $idClass . '_A' . ($numRow + 1)); ?></span></h4>
                    <input type="hidden" id="idProduct" name="idProduct" value="<?php echo ($idProduct = $idClass . '_A' . ($numRow + 1)); ?>" hidden>
                    <input type="hidden" id="idClass" name="idClass" value="<?php echo $idClass; ?>" hidden>
                    <h4>Tên sản phẩm</h4>
                    <input type="text" id="nameProduct" name="nameProduct" placeholder="Thông tin mới">
                    <h4>Giá sản phẩm</h4>
                    <input type="text" id="rate" name="rate" placeholder="Thông tin mới">
                    <br>
                    <h2 class="content_column">Thông số chung</h2>
                    <?php foreach ($columnType as $type) { ?>
                        <h4><?php echo $type[0]; ?></h4>
                        <i>Ví dụ:  <span></span></i>
                        <br>
                        <input type="text" id="adb" placeholder="Thông tin mới">
                    <?php } ?>
                    <br>
                    <h2 class="content_column">Hình ảnh</h2>
                    <h4>Link hình 1</h4>
                    <h5 class="example">Ví dụ: <span>image/Image_Product/Graphics_image/card_ASUS_Dual_GeForce_RTX_2060_SUPER_EVO_V2_8GB_1.png</span></h5>
                    <input type="text" id="photo1" name="photo1" placeholder="Thông tin mới">
                    <h4>Link hình 2</h4>
                    <h5 class="example">Ví dụ: <span>image/Image_Product/Graphics_image/card_ASUS_Dual_GeForce_RTX_2060_SUPER_EVO_V2_8GB_2.png</span></h5>
                    <input type="text" id="photo2" name="photo2" placeholder="Thông tin mới">
                    <h4>Link hình 3</h4>
                    <h5 class="example">Ví dụ: <span>image/Image_Product/Graphics_image/card_ASUS_Dual_GeForce_RTX_2060_SUPER_EVO_V2_8GB_3.png</span></h5>
                    <input type="text" id="photo3" name="photo3" placeholder="Thông tin mới">
                    <h4>Link hình 4</h4>
                    <h5 class="example">Ví dụ: <span>image/Image_Product/Graphics_image/card_ASUS_Dual_GeForce_RTX_2060_SUPER_EVO_V2_8GB_4.png</span></h5>
                    <input type="text" id="photo4" name="photo4" placeholder="Thông tin mới">
                    <h4>Link hình 5</h4>
                    <h5 class="example">Ví dụ: <span>image/Image_Product/Graphics_image/card_ASUS_Dual_GeForce_RTX_2060_SUPER_EVO_V2_8GB_5.png</span></h5>
                    <input type="text" id="photo5" name="photo5" placeholder="Thông tin mới">
                    <button class="btn btn-success buttonSubmit" name="btnOK" type="submit">Xác nhận thêm sản phẩm</button>
                </form>
            </div>
        <?php } ?>
    </div>
</div>
