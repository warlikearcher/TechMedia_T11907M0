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
            <div class="col-md-1" id="btnTable"></div>
            <div class="col-md-1" id="btnTable"><button type="submit" id="btnClass" class="btn-success">Card Đồ họa</button></div>
            <div class="col-md-1" id="btnTable"><button type="submit" id="btnClass1" class="btn-success">Tản nhiệt</button></div>
            <div class="col-md-1" id="btnTable"><button type="submit" id="btnClass2" class="btn-success">CPU</button></div>
            <div class="col-md-1" id="btnTable"><button type="submit" id="btnClass3" class="btn-success">Laptop</button></div>
            <div class="col-md-1" id="btnTable"><button type="submit" id="btnClass4" class="btn-success">Loa</button></div>
            <div class="col-md-1" id="btnTable"><button type="submit" id="btnClass5" class="btn-success">MainBoard</button></div>
            <div class="col-md-1" id="btnTable"><button type="submit" id="btnClass6" class="btn-success">Case máy tính</button> </div>
            <div class="col-md-1" id="btnTable"><button type="submit" id="btnClass7" class="btn-success">Màn Hình</button></div>
            <div class="col-md-1" id="btnTable"><button type="submit" id="btnClass8" class="btn-success">Ram</button></div>
            <div class="col-md-1" id="btnTable"><button type="submit" id="btnClass9" class="btn-success">Tai nghe</button></div>
            <div class="col-md-1" id="btnTable">
                <form method="POST" action="index.php?action=add_product&table=1" style="height: 100%;width: 100%;">
                    <button type="submit" id="btnClass" class="btn-success">123</button>
                </form>
            </div>
        </div>
    </div>
    <hr>
    <div class="container-fluid">
        <?php if(!isset($_GET['table'])){?>
        <div class="AlertSelect" id="myDIV">
            <h3>Vui lòng chọn phân loại sản phẩm trước</h3>
        </div>
        <?php }else{ ?>
        <div id="formAdd">
            <h1>123</h1>
        </div>
        <?php } ?>
    </div>
</div>
