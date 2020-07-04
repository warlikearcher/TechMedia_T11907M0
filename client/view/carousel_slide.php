<?php
$sql = "SELECT * FROM tbbanner ORDER BY `tbbanner`.`timeUpload` DESC LIMIT 0,3";
$result = mysqli_query($link, $sql);

$active = 0;
?>

<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner">
        <?php
        while ($row = mysqli_fetch_array($result)) {
            if ($active == 0) {
                ?>
                <div class="item active">
                    <img src="<?php echo $row["url"]; ?>" alt="">
                    <div class="carousel-caption">
                    </div>
                </div>
            <?php } else { ?>
                <div class="item">
                    <img src="<?php echo $row["url"]; ?>" alt="">
                    <div class="carousel-caption">
                    </div>
                </div>
                <?php
            }
            $active += 1;
        }
        ?>

    </div>
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right"></span>
        <span class="sr-only">Next</span>
    </a>
</div>
