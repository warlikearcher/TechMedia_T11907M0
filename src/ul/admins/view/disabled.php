<?php
if (isset($_GET['id']) && $_GET['id'] != NULL) {
    $id = $_GET['id'];
    $sql = "select * from tbusers where IDUser = '$id'";
    $r = mysqli_query($link, $sql);
    $acc = mysqli_fetch_row($r);
    $name = $acc[4];
} else {
    header("location:../../index.php");
}

$res = mysqli_query($link, $sql);
?>
<div class="delete-body">
    <div class="delete-top-bar padding-0">
        <div class="banner-top top-content-delete shadow">
            <div class="card-body">
                <div class=" no-gutters align-content-center-delete">
                    <div class="card-font">
                        <h1>Bạn thật sự muốn vô hiệu hóa:</h1>
                        <h2><?php echo $name; ?></h2>
                    </div>
                </div>
            </div>
        </div>
        <div>
            <form action="./config/model/run_disabled.php">
                <input type="hidden" name="hidden_disabled_id" value="<?php echo $id; ?>" />
                <button class="btn btn-danger btnSubmit_delete">Vô hiệu hóa</button>
            </form>

        </div>


    </div>
</div>