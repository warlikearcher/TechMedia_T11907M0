<?php
include_once (__DIR__ . "\..\config\database\connectDB.php");

require (__DIR__ . "\..\config\model\load.php");
$result = mysqli_query($link, $sql);
$rows = mysqli_fetch_all($result, MYSQLI_ASSOC);
$check = mysqli_num_rows($result);
?>
<div class="second-menu">
    <div class="container">
        <div class="row">
            <!-- Left Section-->

            <div class="col-md-3 padding-0">
                <!-- Start menu list-->
                <div class="menu-container">
                    <div class="menu-inside">
                        <ul class="nav-area">
                            <li><a  href="index.php?view=product&ref=laptop">Laptop</a><span class="glyphicon" id="icon-menu-open">&#xe080;</span>
                                <div class="sub-nav padding-0">
                                    <div class="sub-menu grid-container">
                                        <div class="line-1 grid-item item1">
                                            <h3>Laptop theo hãng</h3>
                                            <ul>
                                                <li><a  href="index.php?view=product&ref=laptopAsus">Asus</a></li>
                                                <li><a  href="index.php?view=product&ref=laptopAcer">Acer</a></li>
                                                <li><a  href="index.php?view=product&ref=laptopDell">Dell</a></li>
                                                <li><a  href="index.php?view=product&ref=laptopHP">HP</a></li>
                                                <li><a  href="index.php?view=product&ref=laptopLenovo">Lenovo</a></li>
                                            </ul>
                                        </div>
                                        <div class="line-2 grid-item item2">
                                            <h3>Giá khoảng từ</h3>
                                            <ul>
                                                <li><a  href="index.php?view=product&ref=laptop1020">Từ 10 triệu đến 20 triệu</a></li>
                                                <li><a  href="index.php?view=product&ref=laptop2040">Trên 20 triệu đến 40 triệu</a></li>
                                            </ul>
                                        </div>
                                        <div class="line-3 grid-item item3">
                                            <h3>Dựa vào CPU</h3>
                                            <ul>
                                                <li><a  href="index.php?view=product&ref=laptopInteli3">Intel core i3</a></li>
                                                <li><a  href="index.php?view=product&ref=laptopInteli5">Intel core i5</a></li>
                                                <li><a  href="index.php?view=product&ref=laptopInteli7">Intel core i7</a></li>
                                                <li><a  href="index.php?view=product&ref=laptopInteli9">Intel core i9</a></li>
                                                <li><a  href="index.php?view=product&ref=laptopAMD3">AMD Ryzen 3</a></li>
                                                <li><a  href="index.php?view=product&ref=laptopAMD5">AMD Ryzen 5</a></li>
                                                <li><a  href="index.php?view=product&ref=laptopAMD7">AMD Ryzen 7</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li><a  href="index.php?view=product&ref=monitor">Màn hình</a><span class="glyphicon" id="icon-menu-open">&#xe080;</span>
                                <div class="sub-nav">
                                    <div class="sub-menu">
                                        <div class="line-1 grid-item item1">
                                            <h3>Dựa vào giá</h3>
                                            <ul>
                                                <li><a  href="index.php?view=product&ref=monitor2">Dưới 2 triệu</a></li>
                                                <li><a  href="index.php?view=product&ref=monitor26">Từ 2 đến 6 triệu</a></li>
                                                <li><a  href="index.php?view=product&ref=monitor6h">Trên 6 triệu</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li><a  href="index.php?view=product&ref=mainboard">MainBoard</a><span class="glyphicon" id="icon-menu-open">&#xe080;</span>
                                <div class="sub-nav">
                                    <div class="sub-menu">
                                        <div class="line-1 grid-item item1">
                                            <h3>Theo nhà sản xuất</h3>
                                            <ul>
                                                <li><a  href="index.php?view=product&ref=mainboardAsus">Asus</a></li>
                                                <li><a  href="index.php?view=product&ref=mainboardAcer">Acer</a></li>
                                                <li><a  href="index.php?view=product&ref=mainboarDell">Dell</a></li>
                                                <li><a  href="index.php?view=product&ref=mainboardMSI">MSI</a></li>
                                            </ul>
                                        </div>
                                        <div class="line-2 grid-item item2">
                                            <h3>Theo thông tin</h3>
                                            <ul>
                                                <li><a  href="index.php?view=product&ref=mainboardIntel">MainBoard Intel</a></li>
                                                <li><a  href="index.php?view=product&ref=mainboardAMD">MainBoard AMD </a></li>
                                            </ul>
                                        </div>

                                    </div>
                                </div>
                            </li>
                            <li><a  href="index.php?view=product&ref=cpu">CPU</a><span class="glyphicon" id="icon-menu-open">&#xe080;</span>
                                <div class="sub-nav">
                                    <div class="sub-menu">
                                        <div class="line-1 grid-item item1">
                                            <h3>Dựa vào phiên bản</h3>
                                            <ul>
                                                <li><a  href="index.php?view=product&ref=CPUAMD">AMD</a></li>
                                                <li><a  href="index.php?view=product&ref=CPUIntel">Intel</a></li>
                                            </ul>
                                        </div>
                                        <div class="line-2 grid-item item2">
                                            <h3>Dựa vào giá</h3>
                                            <ul>
                                                <li><a  href="index.php?view=product&ref=CPU2">Dưới 2 triệu</a></li>
                                                <li><a  href="index.php?view=product&ref=CPU26">Từ 2 đến 6 triệu</a></li>
                                                <li><a  href="index.php?view=product&ref=CPU6h">Trên 6 triệu</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li><a  href="index.php?view=product&ref=pccase">Thùng PC</a><span class="glyphicon" id="icon-menu-open">&#xe080;</span>
                                <div class="sub-nav">
                                    <div class="sub-menu">
                                        <div class="line-1 grid-item item1">
                                            <h3>Phân loại theo hãng</h3>
                                            <ul>
                                                <li><a  href="index.php?view=product&ref=pccaseCorsair">Corsair</a></li>
                                                <li><a  href="index.php?view=product&ref=pccaseThermaltake">Thermaltake</a></li>
                                                <li><a  href="index.php?view=product&ref=pccaseXigmatek">Xigmatek</a></li>
                                            </ul>
                                        </div>
                                        <div class="line-2 grid-item item2">
                                            <h3>Phân loại theo giá</h3>
                                            <ul>
                                                <li><a  href="index.php?view=product&ref=pccase1">Dưới 1 triệu</a></li>
                                                <li><a  href="index.php?view=product&ref=pccase13">Từ 1 đến 3 triệu</a></li>
                                                <li><a  href="index.php?view=product&ref=pccase3h">Trên 3 triệu</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li><a  href="index.php?view=product&ref=radiator">Tản nhiệt</a><span class="glyphicon" id="icon-menu-open">&#xe080;</span>
                                <div class="sub-nav">
                                    <div class="sub-menu">
                                        <div class="line-1 grid-item item1">
                                            <h3>Theo giá</h3>
                                            <ul>
                                                <li><a  href="index.php?view=product&ref=radiator2">dưới 2 Triệu</a></li>
                                                <li><a  href="index.php?view=product&ref=radiator24">2 đến 4 triệu</a></li>
                                                <li><a  href="index.php?view=product&ref=radiator4h">Trên 4 triệu</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li><a  href="index.php?view=product&ref=ram">Ram</a><span class="glyphicon" id="icon-menu-open">&#xe080;</span>
                                <div class="sub-nav">
                                    <div class="sub-menu">
                                        <div class="line-1 grid-item item1">
                                            <h3>Theo hãng</h3>
                                            <ul>
                                                <li><a  href="index.php?view=product&ref=ramCorsair">Corsair</a></li>
                                                <li><a  href="index.php?view=product&ref=ramGSkill">G Skill</a></li>
                                                <li><a  href="index.php?view=product&ref=ramGalax">Galax</a></li>
                                                <li><a  href="index.php?view=product&ref=ramKing">King</a></li>
                                                <li><a  href="index.php?view=product&ref=ramTeamgroup">Teamgroup</a></li>
                                                <li><a  href="index.php?view=product&ref=ramPatriot">Patriot</a></li>
                                            </ul>
                                        </div>
                                        <div class="line-2 grid-item item2">
                                            <h3>Theo giá</h3>
                                            <ul>
                                                <li><a  href="index.php?view=product&ref=ram1">Dưới 1 triệu</a></li>
                                                <li><a  href="index.php?view=product&ref=ram12">Từ 1 đến 2 triệu</a></li>
                                                <li><a  href="index.php?view=product&ref=ram24">Từ 2 đến 4 triệu</a></li>
                                                <li><a  href="index.php?view=product&ref=ram4h">Trên 4 triệu</a></li>
                                            </ul>
                                        </div>
                                        <div class="line-2 grid-item item3">
                                            <h3>Theo GB</h3>
                                            <ul>
                                                <li><a  href="index.php?view=product&ref=ram4GB">4GB</a></li>
                                                <li><a  href="index.php?view=product&ref=ram8GB">8GB</a></li>
                                                <li><a  href="index.php?view=product&ref=ram16GB">16GB</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li><a  href="index.php?view=product&ref=speak">Loa</a><span class="glyphicon" id="icon-menu-open">&#xe080;</span>
                                <div class="sub-nav">
                                    <div class="sub-menu">
                                        <div class="line-1 grid-item item1">
                                            <h3>Theo hãng</h3>
                                            <ul>
                                                <li><a  href="index.php?view=product&ref=speakAudioengine">Audioengine</a></li>
                                                <li><a  href="index.php?view=product&ref=speakCreative">Creative</a></li>
                                            </ul>
                                        </div>
                                        <div class="line-2 grid-item item2">
                                            <h3>Theo Giá</h3>
                                            <ul>
                                                <li><a  href="index.php?view=product&ref=speak2">dưới 2 Triệu</a></li>
                                                <li><a  href="index.php?view=product&ref=speak210">Trên 2 triệu dưới 10 triệu</a></li>
                                                <li><a  href="index.php?view=product&ref=speak10">Từ 10 triệu trở lên</a></li>
                                            </ul>
                                        </div>

                                    </div>
                                </div>
                            </li>
                            <li><a  href="index.php?view=product&ref=graphics">Card Đồ họa</a><span class="glyphicon" id="icon-menu-open">&#xe080;</span>
                                <div class="sub-nav">
                                    <div class="sub-menu">
                                        <div class="line-1 grid-item item1">
                                            <h3>Theo hãng</h3>
                                            <ul>
                                                <li><a  href="index.php?view=product&ref=graphicsAsus">Asus</a></li>
                                                <li><a  href="index.php?view=product&ref=graphicsGalax">Galax</a></li>
                                                <li><a  href="index.php?view=product&ref=graphicsGigabyte">Gigabyte</a></li>
                                                <li><a  href="index.php?view=product&ref=graphicsMSI">MSI</a></li>
                                                <li><a  href="index.php?view=product&ref=graphicsPalit">Palit</a></li>
                                            </ul>
                                        </div>
                                        <div class="line-2 grid-item item2">
                                            <h3>Theo card</h3>
                                            <ul>
                                                <li><a  href="index.php?view=product&ref=graphicsNVIDIA">NVIDIA</a></li>
                                                <li><a  href="index.php?view=product&ref=graphicsGeForce">GeForce</a></li>
                                                <li><a  href="index.php?view=product&ref=graphicsRadeon">Radeon</a></li>
                                            </ul>
                                        </div>
                                        <div class="line-2 grid-item item3">
                                            <h3>Giá khoảng từ</h3>
                                            <ul>
                                                <li><a  href="index.php?view=product&ref=graphics1">Dưới 5 triệu</a></li>
                                                <li><a  href="index.php?view=product&ref=graphics13">Từ 5 đến 10 triệu</a></li>
                                                <li><a  href="index.php?view=product&ref=graphics3h">Trên 10 triệu</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <!-- End menu list-->
            </div>
            <!-- End left section-->
            <!-- Right Section-->

            <div class="col-md-9 padding-0">
                <div class="col-sm-6 right-ct-list padding-0">
                    <!--Start Sort bar-->
                    <div class="sort-bar">
                        <div class="click-sort">
                            <form action="POST">
                                <!--Sort A-Z -->
                                <div class="sort-content" >
                                    <a href="index.php?view=product&ref=<?php echo $ref; ?>&sortby=sortAZ"><input type="button" value="sortAZ" name="sortAZ"></a>
                                </div>
                                <!--End Sort A-Z -->

                                <!-- Sort price Low-hight-->
                                <div class="sort-content">
                                    <a href="index.php?view=product&ref=<?php echo $ref; ?>&sortby=sortLowHight"><input type="button" value=" Giá Thấp -> Cao " name="sort"></a>
                                </div>
                                <!--End sort price Low-Height -->

                                <!--Sort Hight-low -->
                                <div class="sort-content">
                                    <a href="index.php?view=product&ref=<?php echo $ref; ?>&sortby=sortHightLow"><input type="button" value="Giá Cao -> Thấp" name="sort"></a>
                                </div>
                                <!--End sort Hight-low -->
                            </form>
                        </div>
                    </div>
                    <!-- End Sort bar-->

                    <!-- Start Display product-->
                    <?php if ($check > 0) { ?>
                        <div class="grid-container">

                            <?php foreach ((array) $rows as $values) : ?>
                                <form method="POST" action="index.php?view=product&ref=<?php echo $ref; ?>&action=add&id=<?php echo $values["idProduct"]; ?>">
                                    <div class="grid-item">
                                        <div class="block_item height">
                                            <ul class="item-inf padding-0">
                                                <li>
                                                    <figure>
                                                        <input type="hidden" name="quantity" value="1" class="form-control" />
                                                        <input type="hidden" name="hidden_name" value="<?php echo $values["nameProduct"]; ?>" />
                                                        <input type="hidden" name="hidden_price" value="<?php echo $values["rate"]; ?>" />
                                                        <a class="item-img" href="?view=detail&id=<?php echo $values['idProduct']; ?>"><img src="<?php echo $values["photo1"]; ?>" alt="Image Product"></a>

                                                        <a class="add-card-btn" name="add_to_cart" href="index.php?action=add&id=<?php echo $values['idProduct']; ?>"><span class="fa fa-shopping-cart"></span><input type="submit" name="add_to_cart" value="Thêm vào giỏ hàng"></a>
                                                        <figcaption >
                                                            <div class="name-pr">
                                                                <h4 class="item-title"><a href="#"><?php echo $values['nameProduct']; ?></a></h4>
                                                            </div>

                                                            <div class="span-price">
                                                                <span class="item-price"><?php echo number_format($values["rate"], 0); ?></span><span
                                                                    class="item-price-del"><del><?php echo number_format($del_price = $values['rate'] + round($values['rate'] * 0.2, -4), 0); ?></del></span>
                                                            </div>
                                                        </figcaption>
                                                    </figure>

                                                </li>
                                            </ul> 
                                        </div>
                                    </div>
                                </form>

                            <?php endforeach; ?>

                        </div>
                        <!-- End display product-->

                        <!-- Start pagination-->
                        <div class="pagination-container" align ="center">
                            <div class="paginationss">
                                <?php
                                if ($current_page > 1 && $total_page > 1) {
                                    echo '<a href="index.php?view=product&ref=' . $ref . '&page=' . ($current_page - 1) . '">Prev</a> | ';
                                }

                                for ($i = 1; $i <= $total_page; $i++) {
                                    if ($i == $current_page) {
                                        echo '<span>' . $i . '</span> |';
                                    } else {
                                        echo '<a href="index.php?view=product&ref=' . $ref . '&page=' . $i . '">' . $i . '</a> | ';
                                    }
                                }

                                if ($current_page < $total_page && $total_page > 1) {
                                    echo '<a href="index.php?view=product&ref=' . $ref . '&page=' . ($current_page + 1) . '">Next</a>';
                                }
                                ?>
                            </div>

                        </div>
                        <!-- End pagiantion-->
                    <?php } else { ?>
                        <div style="text-align: center">
                            <h3>Không tìm thấy sản phẩm phù hợp!!</h3>
                        </div>
                    <?php } ?>
                </div>            
            </div>
            <!-- End right section-->
        </div>
    </div>
</div>