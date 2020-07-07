
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
//            $sql = "SELECT COLUMN_NAME, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH 
//    FROM information_schema.columns 
//    WHERE table_schema = 'project' 
//    AND table_name = '$table';";
//            $columnType = mysqli_fetch_all($r);
//
////           get Class & ID
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
//            $Listcol = mysqli_query($link, $sql);
            $sql = "select * from $table";
            $r = mysqli_query($link, $sql);
            while ($field = mysqli_fetch_field($r)) {
                $field_name[] = $field->name;
            }
            $count = count($field_name);
            ?>

            <div id="formAdd" class="shadow-lg">
                <form method="POST" action="././config/model/run_addProduct.php">
                    <input type="hidden" name="tableName" value="<?php echo $table; ?>">
                    <h2 class="content_column">Thông số chung</h2>
                    <?php
                    $numCol = mysqli_num_fields($r);
                    ?>
                    <table class="user-input-table">
                        <tbody>
                            <?php
                            for ($i = 0; $i < $count-2; $i++) {
                                if ($i == 0) {
                                    echo "<tr>";
                                    echo '<td class = "user-input-lable"><label>' . $field_name[$i] . '</label></td>';
                                    echo '<td class = "user-input-field"><input class = "input-field" type = "text" id = "' . $field_name[$i] . '" name = "' . $field_name[$i] . '" value = "' . ($idProduct = $idClass . "_A" . ($numRow+1)) . '"></td>';
                                    echo "</tr>";
                                }else if($i == 1){
                                    echo "<tr>";
                                    echo '<td class = "user-input-lable"><label>' . $field_name[$i] . '</label></td>';
                                    echo '<td class = "user-input-field"><input class = "input-field" type = "text" id = "' . $field_name[$i] . '" name = "' . $field_name[$i] . '" value = "' .$idClass. '"></td>';
                                    echo "</tr>";
                                }
                                else {
                                    echo "<tr>";
                                    echo '<td class = "user-input-lable"><label>' . $field_name[$i] . '</label></td>';
                                    echo '<td class = "user-input-field"><input class = "input-field" type = "text" id = "' . $field_name[$i] . '" name = "' . $field_name[$i] . '"></td>';
                                    echo "</tr>";
                                }
                            }
                            ?>
                        </tbody>
                    </table>

                    <br>
                    <button class="btn btn-success buttonSubmit" name="btnOK" type="submit">Xác nhận thêm sản phẩm</button>
                </form>
            </div>
        <?php } ?>
    </div>
</div>
