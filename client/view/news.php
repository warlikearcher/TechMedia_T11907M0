<?php
if (isset($_GET['view']) && $_GET['view'] == 'news') {
    if (isset($_GET['id']) && $_GET['id'] != NULL) {
        $idNews = $_GET['id'];
    } else {
        echo '<script>';
        echo "window.location.href = 'index.php';";
        echo '</script>';
    }
} else {
    echo '<script>';
    echo "window.location.href = 'index.php';";
    echo '</script>';
}

$sqlNew = "SELECT * FROM `tbarticles` WHERE id_articles ='$idNews';";
$sqlListNew = "SELECT * FROM `tbarticles`";
$queryNewID = mysqli_query($link, $sqlNew);
$queryNewList = mysqli_query($link, $sqlListNew);
$row = mysqli_fetch_row($queryNewID);
?>


<div class="container">
    <div class="row">
        <div class="col-md-8">
            <div class="title-news">
                <h1><?php echo $row[1]; ?></h1>
                <span><?php echo date('M j Y g:i A', strtotime($row[5])); ?></span>
            </div>
            <div class="content-news">
                <img src="<?php echo $row[2]; ?>" alt="#">
                <div class="ct-area">
                    <i><?php echo $row[3]; ?></i>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="list-news">
                    <?php while ($item = mysqli_fetch_array($queryNewList)) { ?>
                        <div class="item-list">
                                <a target="_self" href="index.php?view=news&id=<?php echo $item['id_articles'];?>" class="news-content">
                                    <figure>
                                        <figcaption>
                                            <h4><?php echo $item['title']; ?></h4>
                                            <time><?php echo date('M j Y g:i A', strtotime($item['date'])); ?></time>
                                            
                                        </figcaption>
                                    </figure>
                                </a>
                            </div>
                    <?php } ?>
            </div>
        </div>
    </div>
</div>